@interface JavaUtilLoggingLogManager
+ (id)checkConfiguration;
+ (id)getLogManager;
+ (void)initialize;
- (BOOL)addLoggerWithJavaUtilLoggingLogger:(id)a3;
- (id)getLoggerNames;
- (id)getLoggerWithNSString:(id)a3;
- (id)getOrCreateWithNSString:(id)a3 withNSString:(id)a4;
- (id)getPropertyWithNSString:(id)a3;
- (void)addPropertyChangeListenerWithJavaBeansPropertyChangeListener:(id)a3;
- (void)dealloc;
- (void)readConfiguration;
- (void)readConfigurationWithJavaIoInputStream:(id)a3;
- (void)removePropertyChangeListenerWithJavaBeansPropertyChangeListener:(id)a3;
- (void)reset;
- (void)setLevelRecursivelyWithJavaUtilLoggingLogger:(id)a3 withJavaUtilLoggingLevel:(id)a4;
- (void)setParentWithJavaUtilLoggingLogger:(id)a3 withJavaUtilLoggingLogger:(id)a4;
@end

@implementation JavaUtilLoggingLogManager

- (BOOL)addLoggerWithJavaUtilLoggingLogger:(id)a3
{
  objc_sync_enter(self);
  if (!a3 || (v5 = [a3 getName], (loggers = self->loggers_) == 0))
  {
    JreThrowNullPointerException();
  }

  v7 = [(JavaUtilHashtable *)loggers getWithId:v5];
  if (!v7)
  {
    sub_1001A34F0(self, a3, v5);
    [(JavaUtilHashtable *)self->loggers_ putWithId:v5 withId:a3];
    [a3 setManagerWithJavaUtilLoggingLogManager:self];
  }

  objc_sync_exit(self);
  return v7 == 0;
}

- (id)getLoggerWithNSString:(id)a3
{
  objc_sync_enter(self);
  loggers = self->loggers_;
  if (!loggers)
  {
    JreThrowNullPointerException();
  }

  v6 = [(JavaUtilHashtable *)loggers getWithId:a3];
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

  v4 = [(JavaUtilHashtable *)loggers keys];
  objc_sync_exit(self);
  return v4;
}

+ (id)getLogManager
{
  if ((atomic_load_explicit(JavaUtilLoggingLogManager__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001A47CC();
  }

  return JavaUtilLoggingLogManager_manager_;
}

- (id)getPropertyWithNSString:(id)a3
{
  props = self->props_;
  if (!props)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilProperties *)props getPropertyWithNSString:a3];
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

- (void)readConfigurationWithJavaIoInputStream:(id)a3
{
  [(JavaUtilLoggingLogManager *)self checkAccess];

  sub_1001A3BF0(self, a3);
}

- (void)reset
{
  objc_sync_enter(self);
  [(JavaUtilLoggingLogManager *)self checkAccess];
  v3 = new_JavaUtilProperties_init();
  JreStrongAssignAndConsume(&self->props_, v3);
  v4 = [(JavaUtilLoggingLogManager *)self getLoggerNames];
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  while ([v4 hasMoreElements])
  {
    v5 = -[JavaUtilLoggingLogManager getLoggerWithNSString:](self, "getLoggerWithNSString:", [v4 nextElement]);
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

- (void)addPropertyChangeListenerWithJavaBeansPropertyChangeListener:(id)a3
{
  if (!a3)
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

  [(JavaBeansPropertyChangeSupport *)listeners addPropertyChangeListenerWithJavaBeansPropertyChangeListener:a3];
}

- (void)removePropertyChangeListenerWithJavaBeansPropertyChangeListener:(id)a3
{
  [(JavaUtilLoggingLogManager *)self checkAccess];
  listeners = self->listeners_;
  if (!listeners)
  {
    JreThrowNullPointerException();
  }

  [(JavaBeansPropertyChangeSupport *)listeners removePropertyChangeListenerWithJavaBeansPropertyChangeListener:a3];
}

- (id)getOrCreateWithNSString:(id)a3 withNSString:(id)a4
{
  objc_sync_enter(self);
  v7 = [(JavaUtilLoggingLogManager *)self getLoggerWithNSString:a3];
  if (!v7)
  {
    v7 = new_JavaUtilLoggingLogger_initWithNSString_withNSString_(a3, a4);
    [(JavaUtilLoggingLogManager *)self addLoggerWithJavaUtilLoggingLogger:v7];
  }

  objc_sync_exit(self);
  return v7;
}

- (void)setParentWithJavaUtilLoggingLogger:(id)a3 withJavaUtilLoggingLogger:(id)a4
{
  objc_sync_enter(self);
  if (!a3)
  {
    goto LABEL_9;
  }

  objc_storeWeak(a3 + 1, a4);
  if (!atomic_load(a3 + 2))
  {
    [(JavaUtilLoggingLogManager *)self setLevelRecursivelyWithJavaUtilLoggingLogger:a3 withJavaUtilLoggingLevel:0];
  }

  if (!a4 || (v8 = *(a4 + 4)) == 0)
  {
LABEL_9:
    JreThrowNullPointerException();
  }

  [v8 addWithId:a3];

  objc_sync_exit(self);
}

- (void)setLevelRecursivelyWithJavaUtilLoggingLogger:(id)a3 withJavaUtilLoggingLevel:(id)a4
{
  objc_sync_enter(self);
  if (!a3)
  {
    goto LABEL_24;
  }

  v7 = atomic_load(a3 + 6);
  JreVolatileStrongAssign(a3 + 2, a4);
  if (a4)
  {
    v8 = [a4 intValue];
    goto LABEL_10;
  }

  if (objc_loadWeak(a3 + 1))
  {
    v8 = atomic_load(objc_loadWeak(a3 + 1) + 6);
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

  v8 = [JavaUtilLoggingLevel_INFO_ intValue];
LABEL_10:
  atomic_store(v8, a3 + 6);
  v9 = atomic_load(a3 + 6);
  if (v7 != v9)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v10 = *(a3 + 4);
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
  if (objc_opt_class() == a1)
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