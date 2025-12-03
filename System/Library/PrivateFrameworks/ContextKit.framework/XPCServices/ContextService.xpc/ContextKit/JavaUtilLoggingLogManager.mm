@interface JavaUtilLoggingLogManager
+ (id)checkConfiguration;
+ (id)getLogManager;
+ (void)initialize;
- (BOOL)addLoggerWithJavaUtilLoggingLogger:(id)logger;
- (id)getLoggerNames;
- (id)getLoggerWithNSString:(id)string;
- (id)getOrCreateWithNSString:(id)string withNSString:(id)sString;
- (id)getPropertyWithNSString:(id)string;
- (void)addPropertyChangeListenerWithJavaBeansPropertyChangeListener:(id)listener;
- (void)dealloc;
- (void)readConfiguration;
- (void)readConfigurationWithJavaIoInputStream:(id)stream;
- (void)removePropertyChangeListenerWithJavaBeansPropertyChangeListener:(id)listener;
- (void)reset;
- (void)setLevelRecursivelyWithJavaUtilLoggingLogger:(id)logger withJavaUtilLoggingLevel:(id)level;
- (void)setParentWithJavaUtilLoggingLogger:(id)logger withJavaUtilLoggingLogger:(id)loggingLogger;
@end

@implementation JavaUtilLoggingLogManager

- (BOOL)addLoggerWithJavaUtilLoggingLogger:(id)logger
{
  objc_sync_enter(self);
  if (!logger || (v5 = [logger getName], (loggers = self->loggers_) == 0))
  {
    JreThrowNullPointerException();
  }

  v7 = [(JavaUtilHashtable *)loggers getWithId:v5];
  if (!v7)
  {
    sub_1001A34F0(self, logger, v5);
    [(JavaUtilHashtable *)self->loggers_ putWithId:v5 withId:logger];
    [logger setManagerWithJavaUtilLoggingLogManager:self];
  }

  objc_sync_exit(self);
  return v7 == 0;
}

- (id)getLoggerWithNSString:(id)string
{
  objc_sync_enter(self);
  loggers = self->loggers_;
  if (!loggers)
  {
    JreThrowNullPointerException();
  }

  v6 = [(JavaUtilHashtable *)loggers getWithId:string];
  objc_sync_exit(self);
  return v6;
}

- (id)getLoggerNames
{
  objc_sync_enter(self);
  loggers = self->loggers_;
  if (!loggers)
  {
    JreThrowNullPointerException();
  }

  keys = [(JavaUtilHashtable *)loggers keys];
  objc_sync_exit(self);
  return keys;
}

+ (id)getLogManager
{
  if ((atomic_load_explicit(JavaUtilLoggingLogManager__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001A47CC();
  }

  return JavaUtilLoggingLogManager_manager_;
}

- (id)getPropertyWithNSString:(id)string
{
  props = self->props_;
  if (!props)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilProperties *)props getPropertyWithNSString:string];
}

- (void)readConfiguration
{
  PropertyWithNSString = JavaLangSystem_getPropertyWithNSString_(@"java.util.logging.config.class");
  if (!PropertyWithNSString || !JavaUtilLoggingLogManager_getInstanceByClassWithNSString_(PropertyWithNSString))
  {
    v4 = JavaLangSystem_getPropertyWithNSString_(@"java.util.logging.config.file");
    if (!v4)
    {
      v12 = JavaLangSystem_getPropertyWithNSString_(@"java.home");
      if ((atomic_load_explicit(JavaIoFile__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_10018A8E4();
      }

      if ((atomic_load_explicit(JavaIoFile__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_10018A8E4();
      }

      v4 = JreStrcat("$$$$$", v5, v6, v7, v8, v9, v10, v11, v12);
    }

    if ([new_JavaIoFile_initWithNSString_(v4) exists])
    {
      v13 = new_JavaIoFileInputStream_initWithNSString_(v4);
    }

    else
    {
      v14 = [JavaUtilLoggingLogManager_class_() getResourceAsStream:@"logging.properties"];
      if (v14)
      {
LABEL_15:
        [(JavaUtilLoggingLogManager *)self readConfigurationWithJavaIoInputStream:new_JavaIoBufferedInputStream_initWithJavaIoInputStream_(v14)];
        LibcoreIoIoUtils_closeQuietlyWithJavaLangAutoCloseable_(v14);
        return;
      }

      if (!JavaUtilLoggingIOSLogHandler_IOS_LOG_MANAGER_DEFAULTS_)
      {
        JreThrowNullPointerException();
      }

      v13 = new_JavaIoByteArrayInputStream_initWithByteArray_([JavaUtilLoggingIOSLogHandler_IOS_LOG_MANAGER_DEFAULTS_ getBytes]);
    }

    v14 = v13;
    goto LABEL_15;
  }
}

- (void)readConfigurationWithJavaIoInputStream:(id)stream
{
  [(JavaUtilLoggingLogManager *)self checkAccess];

  sub_1001A3BF0(self, stream);
}

- (void)reset
{
  objc_sync_enter(self);
  [(JavaUtilLoggingLogManager *)self checkAccess];
  v3 = new_JavaUtilProperties_init();
  JreStrongAssignAndConsume(&self->props_, v3);
  getLoggerNames = [(JavaUtilLoggingLogManager *)self getLoggerNames];
  if (!getLoggerNames)
  {
    JreThrowNullPointerException();
  }

  while ([getLoggerNames hasMoreElements])
  {
    v5 = -[JavaUtilLoggingLogManager getLoggerWithNSString:](self, "getLoggerWithNSString:", [getLoggerNames nextElement]);
    if (v5)
    {
      [v5 reset];
    }
  }

  loggers = self->loggers_;
  if (!loggers)
  {
    JreThrowNullPointerException();
  }

  v7 = [(JavaUtilHashtable *)loggers getWithId:&stru_100484358];
  if (v7)
  {
    if ((atomic_load_explicit(JavaUtilLoggingLevel__initialized, memory_order_acquire) & 1) == 0)
    {
      objc_opt_class();
    }

    [v7 setLevelWithJavaUtilLoggingLevel:JavaUtilLoggingLevel_INFO_];
  }

  objc_sync_exit(self);
}

- (void)addPropertyChangeListenerWithJavaBeansPropertyChangeListener:(id)listener
{
  if (!listener)
  {
    v6 = new_JavaLangNullPointerException_initWithNSString_(@"l == null");
    objc_exception_throw(v6);
  }

  [(JavaUtilLoggingLogManager *)self checkAccess];
  listeners = self->listeners_;
  if (!listeners)
  {
    JreThrowNullPointerException();
  }

  [(JavaBeansPropertyChangeSupport *)listeners addPropertyChangeListenerWithJavaBeansPropertyChangeListener:listener];
}

- (void)removePropertyChangeListenerWithJavaBeansPropertyChangeListener:(id)listener
{
  [(JavaUtilLoggingLogManager *)self checkAccess];
  listeners = self->listeners_;
  if (!listeners)
  {
    JreThrowNullPointerException();
  }

  [(JavaBeansPropertyChangeSupport *)listeners removePropertyChangeListenerWithJavaBeansPropertyChangeListener:listener];
}

- (id)getOrCreateWithNSString:(id)string withNSString:(id)sString
{
  objc_sync_enter(self);
  v7 = [(JavaUtilLoggingLogManager *)self getLoggerWithNSString:string];
  if (!v7)
  {
    v7 = new_JavaUtilLoggingLogger_initWithNSString_withNSString_(string, sString);
    [(JavaUtilLoggingLogManager *)self addLoggerWithJavaUtilLoggingLogger:v7];
  }

  objc_sync_exit(self);
  return v7;
}

- (void)setParentWithJavaUtilLoggingLogger:(id)logger withJavaUtilLoggingLogger:(id)loggingLogger
{
  objc_sync_enter(self);
  if (!logger)
  {
    goto LABEL_9;
  }

  objc_storeWeak(logger + 1, loggingLogger);
  if (!atomic_load(logger + 2))
  {
    [(JavaUtilLoggingLogManager *)self setLevelRecursivelyWithJavaUtilLoggingLogger:logger withJavaUtilLoggingLevel:0];
  }

  if (!loggingLogger || (v8 = *(loggingLogger + 4)) == 0)
  {
LABEL_9:
    JreThrowNullPointerException();
  }

  [v8 addWithId:logger];

  objc_sync_exit(self);
}

- (void)setLevelRecursivelyWithJavaUtilLoggingLogger:(id)logger withJavaUtilLoggingLevel:(id)level
{
  objc_sync_enter(self);
  if (!logger)
  {
    goto LABEL_24;
  }

  v7 = atomic_load(logger + 6);
  JreVolatileStrongAssign(logger + 2, level);
  if (level)
  {
    intValue = [level intValue];
    goto LABEL_10;
  }

  if (objc_loadWeak(logger + 1))
  {
    intValue = atomic_load(objc_loadWeak(logger + 1) + 6);
    goto LABEL_10;
  }

  if ((atomic_load_explicit(JavaUtilLoggingLevel__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  if (!JavaUtilLoggingLevel_INFO_)
  {
LABEL_24:
    JreThrowNullPointerException();
  }

  intValue = [JavaUtilLoggingLevel_INFO_ intValue];
LABEL_10:
  atomic_store(intValue, logger + 6);
  v9 = atomic_load(logger + 6);
  if (v7 != v9)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v10 = *(logger + 4);
    if (!v10)
    {
LABEL_23:
      JreThrowNullPointerException();
    }

    v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v11)
    {
      v12 = *v17;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v16 + 1) + 8 * i);
          if (!v14)
          {
            goto LABEL_23;
          }

          if (!atomic_load((v14 + 16)))
          {
            [(JavaUtilLoggingLogManager *)self setLevelRecursivelyWithJavaUtilLoggingLogger:v16 withJavaUtilLoggingLevel:?];
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }
  }

  objc_sync_exit(self);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilLoggingLogManager;
  [(JavaUtilLoggingLogManager *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = new_JavaUtilLoggingLoggingPermission_initWithNSString_withNSString_();
    JreStrongAssignAndConsume(&qword_100554C28, v2);
    PropertyWithNSString = JavaLangSystem_getPropertyWithNSString_(@"java.util.logging.manager");
    if (PropertyWithNSString)
    {
      InstanceByClassWithNSString = JavaUtilLoggingLogManager_getInstanceByClassWithNSString_(PropertyWithNSString);
      objc_opt_class();
      if (InstanceByClassWithNSString && (objc_opt_isKindOfClass() & 1) == 0)
      {
        JreThrowClassCastException();
      }

      JreStrongAssign(&JavaUtilLoggingLogManager_manager_, InstanceByClassWithNSString);
    }

    if (!JavaUtilLoggingLogManager_manager_)
    {
      v5 = [JavaUtilLoggingLogManager alloc];
      JavaUtilLoggingLogManager_init(&v5->super.isa);
      JreStrongAssignAndConsume(&JavaUtilLoggingLogManager_manager_, v5);
    }

    +[JavaUtilLoggingLogManager checkConfiguration]_0();
    v6 = new_JavaUtilLoggingLogger_initWithNSString_withNSString_(&stru_100484358, 0);
    if ((atomic_load_explicit(JavaUtilLoggingLevel__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_10019B6E8();
    }

    [(JavaUtilLoggingLogger *)v6 setLevelWithJavaUtilLoggingLevel:JavaUtilLoggingLevel_INFO_];
    if ((atomic_load_explicit(JavaUtilLoggingLogger__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1001A47D8();
    }

    if (!JavaUtilLoggingLogger_global_ || ([JavaUtilLoggingLogger_global_ setParentWithJavaUtilLoggingLogger:v6], !JavaUtilLoggingLogManager_manager_))
    {
      JreThrowNullPointerException();
    }

    [JavaUtilLoggingLogManager_manager_ addLoggerWithJavaUtilLoggingLogger:v6];
    v7 = JavaUtilLoggingLogManager_manager_;
    if ((atomic_load_explicit(JavaUtilLoggingLogger__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1001A47D8();
    }

    [v7 addLoggerWithJavaUtilLoggingLogger:JavaUtilLoggingLogger_global_];
    atomic_store(1u, JavaUtilLoggingLogManager__initialized);
  }
}

+ (id)checkConfiguration
{
  if ((atomic_load_explicit(JavaUtilLoggingLogManager__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001A47CC();
  }

  return [JavaUtilLoggingLogManager_manager_ readConfiguration];
}

@end