@interface JavaUtilLoggingLogger
+ (id)getGlobal;
+ (void)initialize;
- (id)getHandlers;
- (void)__javaClone;
- (void)addHandlerWithJavaUtilLoggingHandler:(id)handler;
- (void)configWithNSString:(id)string;
- (void)dealloc;
- (void)enteringWithNSString:(id)string withNSString:(id)sString;
- (void)enteringWithNSString:(id)string withNSString:(id)sString withId:(id)id;
- (void)enteringWithNSString:(id)string withNSString:(id)sString withNSObjectArray:(id)array;
- (void)exitingWithNSString:(id)string withNSString:(id)sString;
- (void)exitingWithNSString:(id)string withNSString:(id)sString withId:(id)id;
- (void)fineWithNSString:(id)string;
- (void)finerWithNSString:(id)string;
- (void)finestWithNSString:(id)string;
- (void)infoWithNSString:(id)string;
- (void)logWithJavaUtilLoggingLevel:(id)level withNSString:(id)string;
- (void)logWithJavaUtilLoggingLevel:(id)level withNSString:(id)string withId:(id)id;
- (void)logWithJavaUtilLoggingLevel:(id)level withNSString:(id)string withJavaLangThrowable:(id)throwable;
- (void)logWithJavaUtilLoggingLevel:(id)level withNSString:(id)string withNSObjectArray:(id)array;
- (void)logWithJavaUtilLoggingLogRecord:(id)record;
- (void)logpWithJavaUtilLoggingLevel:(id)level withNSString:(id)string withNSString:(id)sString withNSString:(id)nSString;
- (void)logpWithJavaUtilLoggingLevel:(id)level withNSString:(id)string withNSString:(id)sString withNSString:(id)nSString withId:(id)id;
- (void)logpWithJavaUtilLoggingLevel:(id)level withNSString:(id)string withNSString:(id)sString withNSString:(id)nSString withJavaLangThrowable:(id)throwable;
- (void)logpWithJavaUtilLoggingLevel:(id)level withNSString:(id)string withNSString:(id)sString withNSString:(id)nSString withNSObjectArray:(id)array;
- (void)logrbWithJavaUtilLoggingLevel:(id)level withNSString:(id)string withNSString:(id)sString withNSString:(id)nSString withNSString:(id)withNSString;
- (void)logrbWithJavaUtilLoggingLevel:(id)level withNSString:(id)string withNSString:(id)sString withNSString:(id)nSString withNSString:(id)withNSString withId:(id)id;
- (void)logrbWithJavaUtilLoggingLevel:(id)level withNSString:(id)string withNSString:(id)sString withNSString:(id)nSString withNSString:(id)withNSString withJavaLangThrowable:(id)throwable;
- (void)logrbWithJavaUtilLoggingLevel:(id)level withNSString:(id)string withNSString:(id)sString withNSString:(id)nSString withNSString:(id)withNSString withNSObjectArray:(id)array;
- (void)removeHandlerWithJavaUtilLoggingHandler:(id)handler;
- (void)reset;
- (void)setFilterWithJavaUtilLoggingFilter:(id)filter;
- (void)setLevelWithJavaUtilLoggingLevel:(id)level;
- (void)setManagerWithJavaUtilLoggingLogManager:(id)manager;
- (void)setParentWithJavaUtilLoggingLogger:(id)logger;
- (void)setUseParentHandlersWithBoolean:(BOOL)boolean;
- (void)severeWithNSString:(id)string;
- (void)throwingWithNSString:(id)string withNSString:(id)sString withJavaLangThrowable:(id)throwable;
- (void)warningWithNSString:(id)string;
@end

@implementation JavaUtilLoggingLogger

+ (id)getGlobal
{
  if ((atomic_load_explicit(JavaUtilLoggingLogger__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001A47D8();
  }

  return JavaUtilLoggingLogger_global_;
}

- (void)addHandlerWithJavaUtilLoggingHandler:(id)handler
{
  if (!handler)
  {
    v7 = new_JavaLangNullPointerException_initWithNSString_(@"handler == null");
    objc_exception_throw(v7);
  }

  if (self->isNamed_)
  {
    LogManager = JavaUtilLoggingLogManager_getLogManager();
    if (!LogManager)
    {
      goto LABEL_9;
    }

    [LogManager checkAccess];
  }

  handlers = self->handlers_;
  if (!handlers)
  {
LABEL_9:
    JreThrowNullPointerException();
  }

  [(JavaUtilList *)handlers addWithId:handler];
}

- (void)setManagerWithJavaUtilLoggingLogManager:(id)manager
{
  if (!manager)
  {
    goto LABEL_25;
  }

  p_name = &self->name_;
  v11 = atomic_load(&self->name_);
  v12 = [manager getPropertyWithNSString:{JreStrcat("$$", a2, manager, v3, v4, v5, v6, v7, v11)}];
  if (v12)
  {
    [manager setLevelRecursivelyWithJavaUtilLoggingLogger:self withJavaUtilLoggingLevel:JavaUtilLoggingLevel_parseWithNSString_(v12)];
  }

  v13 = atomic_load(p_name);
  if (!v13)
  {
    goto LABEL_25;
  }

  if ([v13 isEmpty])
  {
    v21 = @"handlers";
  }

  else
  {
    v22 = atomic_load(&self->name_);
    v21 = JreStrcat("$$", v14, v15, v16, v17, v18, v19, v20, v22);
  }

  v23 = [manager getPropertyWithNSString:v21];
  if (v23)
  {
    v24 = [v23 split:{@", |\\s"}];
    if (!v24)
    {
      goto LABEL_25;
    }

    v25 = (v24 + 24);
    v26 = &v24[8 * *(v24 + 2) + 24];
    if ((v24 + 24) < v26)
    {
      while (1)
      {
        v28 = *v25++;
        v27 = v28;
        if (!v28)
        {
          break;
        }

        if (([v27 isEmpty] & 1) == 0)
        {
          InstanceByClassWithNSString = JavaUtilLoggingLogManager_getInstanceByClassWithNSString_(v27);
          v30 = objc_opt_class();
          if (InstanceByClassWithNSString && (objc_opt_isKindOfClass() & 1) == 0)
          {
            JreThrowClassCastException();
          }

          v37 = [manager getPropertyWithNSString:{JreStrcat("$$", v30, v31, v32, v33, v34, v35, v36, v27)}];
          if (v37)
          {
            if (!InstanceByClassWithNSString)
            {
              JreThrowNullPointerException();
            }

            [InstanceByClassWithNSString setLevelWithJavaUtilLoggingLevel:JavaUtilLoggingLevel_parseWithNSString_(v37)];
          }

          handlers = self->handlers_;
          if (!handlers)
          {
            break;
          }

          [(JavaUtilList *)handlers addWithId:InstanceByClassWithNSString];
        }

        if (v25 >= v26)
        {
          return;
        }
      }

LABEL_25:
      JreThrowNullPointerException();
    }
  }
}

- (id)getHandlers
{
  handlers = self->handlers_;
  if (!handlers)
  {
    JreThrowNullPointerException();
  }

  v4 = qword_1005552C0;

  return [(JavaUtilList *)handlers toArrayWithNSObjectArray:v4];
}

- (void)removeHandlerWithJavaUtilLoggingHandler:(id)handler
{
  if (self->isNamed_)
  {
    LogManager = JavaUtilLoggingLogManager_getLogManager();
    if (!LogManager)
    {
      goto LABEL_10;
    }

    [LogManager checkAccess];
  }

  if (!handler)
  {
    return;
  }

  handlers = self->handlers_;
  if (!handlers)
  {
LABEL_10:
    JreThrowNullPointerException();
  }

  [(JavaUtilList *)handlers removeWithId:handler];
}

- (void)setFilterWithJavaUtilLoggingFilter:(id)filter
{
  if (self->isNamed_)
  {
    LogManager = JavaUtilLoggingLogManager_getLogManager();
    if (!LogManager)
    {
      JreThrowNullPointerException();
    }

    [LogManager checkAccess];
  }

  JreStrongAssign(&self->filter_, filter);
}

- (void)setLevelWithJavaUtilLoggingLevel:(id)level
{
  LogManager = JavaUtilLoggingLogManager_getLogManager();
  v6 = LogManager;
  if (self->isNamed_)
  {
    if (LogManager)
    {
      [LogManager checkAccess];
      goto LABEL_5;
    }

LABEL_8:
    JreThrowNullPointerException();
  }

  if (!LogManager)
  {
    goto LABEL_8;
  }

LABEL_5:

  [v6 setLevelRecursivelyWithJavaUtilLoggingLogger:self withJavaUtilLoggingLevel:level];
}

- (void)setUseParentHandlersWithBoolean:(BOOL)boolean
{
  if (self->isNamed_)
  {
    LogManager = JavaUtilLoggingLogManager_getLogManager();
    if (!LogManager)
    {
      JreThrowNullPointerException();
    }

    [LogManager checkAccess];
  }

  self->notifyParentHandlers_ = boolean;
}

- (void)setParentWithJavaUtilLoggingLogger:(id)logger
{
  if (!logger)
  {
    v7 = new_JavaLangNullPointerException_initWithNSString_(@"parent == null");
    objc_exception_throw(v7);
  }

  LogManager = JavaUtilLoggingLogManager_getLogManager();
  if (!LogManager)
  {
    JreThrowNullPointerException();
  }

  v6 = LogManager;
  [LogManager checkAccess];

  [v6 setParentWithJavaUtilLoggingLogger:self withJavaUtilLoggingLogger:logger];
}

- (void)enteringWithNSString:(id)string withNSString:(id)sString
{
  if ((atomic_load_explicit(JavaUtilLoggingLevel__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10019B6E8();
  }

  if (sub_100231628(self, JavaUtilLoggingLevel_FINER_))
  {
    if ((atomic_load_explicit(JavaUtilLoggingLevel__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_10019B6E8();
    }

    v7 = new_JavaUtilLoggingLogRecord_initWithJavaUtilLoggingLevel_withNSString_(JavaUtilLoggingLevel_FINER_, @"ENTRY");
    v8 = atomic_load(&self->name_);
    [(JavaUtilLoggingLogRecord *)v7 setLoggerNameWithNSString:v8];
    [(JavaUtilLoggingLogRecord *)v7 setSourceClassNameWithNSString:string];
    [(JavaUtilLoggingLogRecord *)v7 setSourceMethodNameWithNSString:sString];
    sub_1002316B4(self, v7);

    [(JavaUtilLoggingLogger *)self logWithJavaUtilLoggingLogRecord:v7];
  }
}

- (void)enteringWithNSString:(id)string withNSString:(id)sString withId:(id)id
{
  if ((atomic_load_explicit(JavaUtilLoggingLevel__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10019B6E8();
  }

  if (sub_100231628(self, JavaUtilLoggingLevel_FINER_))
  {
    if ((atomic_load_explicit(JavaUtilLoggingLevel__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_10019B6E8();
    }

    v9 = new_JavaUtilLoggingLogRecord_initWithJavaUtilLoggingLevel_withNSString_(JavaUtilLoggingLevel_FINER_, @"ENTRY {0}");
    v10 = atomic_load(&self->name_);
    [(JavaUtilLoggingLogRecord *)v9 setLoggerNameWithNSString:v10];
    [(JavaUtilLoggingLogRecord *)v9 setSourceClassNameWithNSString:string];
    [(JavaUtilLoggingLogRecord *)v9 setSourceMethodNameWithNSString:sString];
    idCopy = id;
    v11 = [IOSObjectArray arrayWithObjects:&idCopy count:1 type:NSObject_class_()];
    [(JavaUtilLoggingLogRecord *)v9 setParametersWithNSObjectArray:v11, idCopy];
    sub_1002316B4(self, v9);
    [(JavaUtilLoggingLogger *)self logWithJavaUtilLoggingLogRecord:v9];
  }
}

- (void)enteringWithNSString:(id)string withNSString:(id)sString withNSObjectArray:(id)array
{
  if ((atomic_load_explicit(JavaUtilLoggingLevel__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10019B6E8();
  }

  if (sub_100231628(self, JavaUtilLoggingLevel_FINER_))
  {
    if (array)
    {
      v9 = new_JavaLangStringBuilder_initWithNSString_(@"ENTRY");
      if (*(array + 2) >= 1)
      {
        v10 = 0;
        do
        {
          v11 = [(JavaLangStringBuilder *)v9 appendWithNSString:@" {"];
          if (!v11 || (v12 = [v11 appendWithInt:v10]) == 0)
          {
            JreThrowNullPointerException();
          }

          [v12 appendWithNSString:@"}"];
          v10 = (v10 + 1);
        }

        while (v10 < *(array + 2));
      }

      v13 = [(JavaLangStringBuilder *)v9 description];
    }

    else
    {
      v13 = @"ENTRY";
    }

    if ((atomic_load_explicit(JavaUtilLoggingLevel__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_10019B6E8();
    }

    v14 = new_JavaUtilLoggingLogRecord_initWithJavaUtilLoggingLevel_withNSString_(JavaUtilLoggingLevel_FINER_, v13);
    v15 = atomic_load(&self->name_);
    [(JavaUtilLoggingLogRecord *)v14 setLoggerNameWithNSString:v15];
    [(JavaUtilLoggingLogRecord *)v14 setSourceClassNameWithNSString:string];
    [(JavaUtilLoggingLogRecord *)v14 setSourceMethodNameWithNSString:sString];
    [(JavaUtilLoggingLogRecord *)v14 setParametersWithNSObjectArray:array];
    sub_1002316B4(self, v14);

    [(JavaUtilLoggingLogger *)self logWithJavaUtilLoggingLogRecord:v14];
  }
}

- (void)exitingWithNSString:(id)string withNSString:(id)sString
{
  if ((atomic_load_explicit(JavaUtilLoggingLevel__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10019B6E8();
  }

  if (sub_100231628(self, JavaUtilLoggingLevel_FINER_))
  {
    if ((atomic_load_explicit(JavaUtilLoggingLevel__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_10019B6E8();
    }

    v7 = new_JavaUtilLoggingLogRecord_initWithJavaUtilLoggingLevel_withNSString_(JavaUtilLoggingLevel_FINER_, @"RETURN");
    v8 = atomic_load(&self->name_);
    [(JavaUtilLoggingLogRecord *)v7 setLoggerNameWithNSString:v8];
    [(JavaUtilLoggingLogRecord *)v7 setSourceClassNameWithNSString:string];
    [(JavaUtilLoggingLogRecord *)v7 setSourceMethodNameWithNSString:sString];
    sub_1002316B4(self, v7);

    [(JavaUtilLoggingLogger *)self logWithJavaUtilLoggingLogRecord:v7];
  }
}

- (void)exitingWithNSString:(id)string withNSString:(id)sString withId:(id)id
{
  if ((atomic_load_explicit(JavaUtilLoggingLevel__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10019B6E8();
  }

  if (sub_100231628(self, JavaUtilLoggingLevel_FINER_))
  {
    if ((atomic_load_explicit(JavaUtilLoggingLevel__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_10019B6E8();
    }

    v9 = new_JavaUtilLoggingLogRecord_initWithJavaUtilLoggingLevel_withNSString_(JavaUtilLoggingLevel_FINER_, @"RETURN {0}");
    v10 = atomic_load(&self->name_);
    [(JavaUtilLoggingLogRecord *)v9 setLoggerNameWithNSString:v10];
    [(JavaUtilLoggingLogRecord *)v9 setSourceClassNameWithNSString:string];
    [(JavaUtilLoggingLogRecord *)v9 setSourceMethodNameWithNSString:sString];
    idCopy = id;
    v11 = [IOSObjectArray arrayWithObjects:&idCopy count:1 type:NSObject_class_()];
    [(JavaUtilLoggingLogRecord *)v9 setParametersWithNSObjectArray:v11, idCopy];
    sub_1002316B4(self, v9);
    [(JavaUtilLoggingLogger *)self logWithJavaUtilLoggingLogRecord:v9];
  }
}

- (void)throwingWithNSString:(id)string withNSString:(id)sString withJavaLangThrowable:(id)throwable
{
  if ((atomic_load_explicit(JavaUtilLoggingLevel__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10019B6E8();
  }

  if (sub_100231628(self, JavaUtilLoggingLevel_FINER_))
  {
    if ((atomic_load_explicit(JavaUtilLoggingLevel__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_10019B6E8();
    }

    v9 = new_JavaUtilLoggingLogRecord_initWithJavaUtilLoggingLevel_withNSString_(JavaUtilLoggingLevel_FINER_, @"THROW");
    v10 = atomic_load(&self->name_);
    [(JavaUtilLoggingLogRecord *)v9 setLoggerNameWithNSString:v10];
    [(JavaUtilLoggingLogRecord *)v9 setSourceClassNameWithNSString:string];
    [(JavaUtilLoggingLogRecord *)v9 setSourceMethodNameWithNSString:sString];
    [(JavaUtilLoggingLogRecord *)v9 setThrownWithJavaLangThrowable:throwable];
    sub_1002316B4(self, v9);

    [(JavaUtilLoggingLogger *)self logWithJavaUtilLoggingLogRecord:v9];
  }
}

- (void)severeWithNSString:(id)string
{
  if ((atomic_load_explicit(JavaUtilLoggingLevel__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10019B6E8();
  }

  v5 = JavaUtilLoggingLevel_SEVERE_;

  [(JavaUtilLoggingLogger *)self logWithJavaUtilLoggingLevel:v5 withNSString:string];
}

- (void)warningWithNSString:(id)string
{
  if ((atomic_load_explicit(JavaUtilLoggingLevel__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10019B6E8();
  }

  v5 = JavaUtilLoggingLevel_WARNING_;

  [(JavaUtilLoggingLogger *)self logWithJavaUtilLoggingLevel:v5 withNSString:string];
}

- (void)infoWithNSString:(id)string
{
  if ((atomic_load_explicit(JavaUtilLoggingLevel__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10019B6E8();
  }

  v5 = JavaUtilLoggingLevel_INFO_;

  [(JavaUtilLoggingLogger *)self logWithJavaUtilLoggingLevel:v5 withNSString:string];
}

- (void)configWithNSString:(id)string
{
  if ((atomic_load_explicit(JavaUtilLoggingLevel__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10019B6E8();
  }

  v5 = JavaUtilLoggingLevel_CONFIG_;

  [(JavaUtilLoggingLogger *)self logWithJavaUtilLoggingLevel:v5 withNSString:string];
}

- (void)fineWithNSString:(id)string
{
  if ((atomic_load_explicit(JavaUtilLoggingLevel__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10019B6E8();
  }

  v5 = JavaUtilLoggingLevel_FINE_;

  [(JavaUtilLoggingLogger *)self logWithJavaUtilLoggingLevel:v5 withNSString:string];
}

- (void)finerWithNSString:(id)string
{
  if ((atomic_load_explicit(JavaUtilLoggingLevel__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10019B6E8();
  }

  v5 = JavaUtilLoggingLevel_FINER_;

  [(JavaUtilLoggingLogger *)self logWithJavaUtilLoggingLevel:v5 withNSString:string];
}

- (void)finestWithNSString:(id)string
{
  if ((atomic_load_explicit(JavaUtilLoggingLevel__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10019B6E8();
  }

  v5 = JavaUtilLoggingLevel_FINEST_;

  [(JavaUtilLoggingLogger *)self logWithJavaUtilLoggingLevel:v5 withNSString:string];
}

- (void)logWithJavaUtilLoggingLevel:(id)level withNSString:(id)string
{
  if (sub_100231628(self, level))
  {
    v7 = new_JavaUtilLoggingLogRecord_initWithJavaUtilLoggingLevel_withNSString_(level, string);
    v8 = atomic_load(&self->name_);
    [(JavaUtilLoggingLogRecord *)v7 setLoggerNameWithNSString:v8];
    sub_1002316B4(self, v7);

    [(JavaUtilLoggingLogger *)self logWithJavaUtilLoggingLogRecord:v7];
  }
}

- (void)logWithJavaUtilLoggingLevel:(id)level withNSString:(id)string withId:(id)id
{
  if (sub_100231628(self, level))
  {
    v9 = new_JavaUtilLoggingLogRecord_initWithJavaUtilLoggingLevel_withNSString_(level, string);
    v10 = atomic_load(&self->name_);
    [(JavaUtilLoggingLogRecord *)v9 setLoggerNameWithNSString:v10];
    idCopy = id;
    v11 = [IOSObjectArray arrayWithObjects:&idCopy count:1 type:NSObject_class_()];
    [(JavaUtilLoggingLogRecord *)v9 setParametersWithNSObjectArray:v11, idCopy];
    sub_1002316B4(self, v9);
    [(JavaUtilLoggingLogger *)self logWithJavaUtilLoggingLogRecord:v9];
  }
}

- (void)logWithJavaUtilLoggingLevel:(id)level withNSString:(id)string withNSObjectArray:(id)array
{
  if (sub_100231628(self, level))
  {
    v9 = new_JavaUtilLoggingLogRecord_initWithJavaUtilLoggingLevel_withNSString_(level, string);
    v10 = atomic_load(&self->name_);
    [(JavaUtilLoggingLogRecord *)v9 setLoggerNameWithNSString:v10];
    [(JavaUtilLoggingLogRecord *)v9 setParametersWithNSObjectArray:array];
    sub_1002316B4(self, v9);

    [(JavaUtilLoggingLogger *)self logWithJavaUtilLoggingLogRecord:v9];
  }
}

- (void)logWithJavaUtilLoggingLevel:(id)level withNSString:(id)string withJavaLangThrowable:(id)throwable
{
  if (sub_100231628(self, level))
  {
    v9 = new_JavaUtilLoggingLogRecord_initWithJavaUtilLoggingLevel_withNSString_(level, string);
    v10 = atomic_load(&self->name_);
    [(JavaUtilLoggingLogRecord *)v9 setLoggerNameWithNSString:v10];
    [(JavaUtilLoggingLogRecord *)v9 setThrownWithJavaLangThrowable:throwable];
    sub_1002316B4(self, v9);

    [(JavaUtilLoggingLogger *)self logWithJavaUtilLoggingLogRecord:v9];
  }
}

- (void)logWithJavaUtilLoggingLogRecord:(id)record
{
  if (!record)
  {
    goto LABEL_20;
  }

  selfCopy = self;
  if (!sub_100231628(self, [record getLevel]))
  {
    return;
  }

  filter = selfCopy->filter_;
  if (filter)
  {
    if (![(JavaUtilLoggingFilter *)filter isLoggableWithJavaUtilLoggingLogRecord:record])
    {
      return;
    }
  }

  getHandlers = [(JavaUtilLoggingLogger *)selfCopy getHandlers];
  if (!getHandlers)
  {
LABEL_20:
    JreThrowNullPointerException();
  }

  v7 = getHandlers + 3;
  v8 = &getHandlers[*(getHandlers + 2) + 3];
  while (v7 < v8)
  {
    v9 = *v7;
    if (!*v7)
    {
      goto LABEL_20;
    }

    ++v7;
    [v9 publishWithJavaUtilLoggingLogRecord:record];
  }

  Weak = objc_loadWeak(&selfCopy->parent_);
  if (Weak)
  {
    v11 = Weak;
    do
    {
      if (![(JavaUtilLoggingLogger *)selfCopy getUseParentHandlers])
      {
        break;
      }

      getHandlers2 = [v11 getHandlers];
      if (!getHandlers2)
      {
        goto LABEL_20;
      }

      v13 = (getHandlers2 + 24);
      v14 = &getHandlers2[8 * *(getHandlers2 + 2) + 24];
      while (v13 < v14)
      {
        v15 = *v13;
        if (!*v13)
        {
          goto LABEL_20;
        }

        ++v13;
        [v15 publishWithJavaUtilLoggingLogRecord:record];
      }

      selfCopy = v11;
      v11 = objc_loadWeak(v11 + 1);
    }

    while (v11);
  }
}

- (void)logpWithJavaUtilLoggingLevel:(id)level withNSString:(id)string withNSString:(id)sString withNSString:(id)nSString
{
  if (sub_100231628(self, level))
  {
    v11 = new_JavaUtilLoggingLogRecord_initWithJavaUtilLoggingLevel_withNSString_(level, nSString);
    v12 = atomic_load(&self->name_);
    [(JavaUtilLoggingLogRecord *)v11 setLoggerNameWithNSString:v12];
    [(JavaUtilLoggingLogRecord *)v11 setSourceClassNameWithNSString:string];
    [(JavaUtilLoggingLogRecord *)v11 setSourceMethodNameWithNSString:sString];
    sub_1002316B4(self, v11);

    [(JavaUtilLoggingLogger *)self logWithJavaUtilLoggingLogRecord:v11];
  }
}

- (void)logpWithJavaUtilLoggingLevel:(id)level withNSString:(id)string withNSString:(id)sString withNSString:(id)nSString withId:(id)id
{
  if (sub_100231628(self, level))
  {
    v13 = new_JavaUtilLoggingLogRecord_initWithJavaUtilLoggingLevel_withNSString_(level, nSString);
    v14 = atomic_load(&self->name_);
    [(JavaUtilLoggingLogRecord *)v13 setLoggerNameWithNSString:v14];
    [(JavaUtilLoggingLogRecord *)v13 setSourceClassNameWithNSString:string];
    [(JavaUtilLoggingLogRecord *)v13 setSourceMethodNameWithNSString:sString];
    idCopy = id;
    v15 = [IOSObjectArray arrayWithObjects:&idCopy count:1 type:NSObject_class_()];
    [(JavaUtilLoggingLogRecord *)v13 setParametersWithNSObjectArray:v15, idCopy];
    sub_1002316B4(self, v13);
    [(JavaUtilLoggingLogger *)self logWithJavaUtilLoggingLogRecord:v13];
  }
}

- (void)logpWithJavaUtilLoggingLevel:(id)level withNSString:(id)string withNSString:(id)sString withNSString:(id)nSString withNSObjectArray:(id)array
{
  if (sub_100231628(self, level))
  {
    v13 = new_JavaUtilLoggingLogRecord_initWithJavaUtilLoggingLevel_withNSString_(level, nSString);
    v14 = atomic_load(&self->name_);
    [(JavaUtilLoggingLogRecord *)v13 setLoggerNameWithNSString:v14];
    [(JavaUtilLoggingLogRecord *)v13 setSourceClassNameWithNSString:string];
    [(JavaUtilLoggingLogRecord *)v13 setSourceMethodNameWithNSString:sString];
    [(JavaUtilLoggingLogRecord *)v13 setParametersWithNSObjectArray:array];
    sub_1002316B4(self, v13);

    [(JavaUtilLoggingLogger *)self logWithJavaUtilLoggingLogRecord:v13];
  }
}

- (void)logpWithJavaUtilLoggingLevel:(id)level withNSString:(id)string withNSString:(id)sString withNSString:(id)nSString withJavaLangThrowable:(id)throwable
{
  if (sub_100231628(self, level))
  {
    v13 = new_JavaUtilLoggingLogRecord_initWithJavaUtilLoggingLevel_withNSString_(level, nSString);
    v14 = atomic_load(&self->name_);
    [(JavaUtilLoggingLogRecord *)v13 setLoggerNameWithNSString:v14];
    [(JavaUtilLoggingLogRecord *)v13 setSourceClassNameWithNSString:string];
    [(JavaUtilLoggingLogRecord *)v13 setSourceMethodNameWithNSString:sString];
    [(JavaUtilLoggingLogRecord *)v13 setThrownWithJavaLangThrowable:throwable];
    sub_1002316B4(self, v13);

    [(JavaUtilLoggingLogger *)self logWithJavaUtilLoggingLogRecord:v13];
  }
}

- (void)logrbWithJavaUtilLoggingLevel:(id)level withNSString:(id)string withNSString:(id)sString withNSString:(id)nSString withNSString:(id)withNSString
{
  if (sub_100231628(self, level))
  {
    v13 = new_JavaUtilLoggingLogRecord_initWithJavaUtilLoggingLevel_withNSString_(level, withNSString);
    if (nSString)
    {
      [(JavaUtilLoggingLogRecord *)v13 setResourceBundleWithJavaUtilResourceBundle:JavaUtilLoggingLogger_loadResourceBundleWithNSString_(nSString)];
      [(JavaUtilLoggingLogRecord *)v13 setResourceBundleNameWithNSString:nSString];
    }

    v14 = atomic_load(&self->name_);
    [(JavaUtilLoggingLogRecord *)v13 setLoggerNameWithNSString:v14];
    [(JavaUtilLoggingLogRecord *)v13 setSourceClassNameWithNSString:string];
    [(JavaUtilLoggingLogRecord *)v13 setSourceMethodNameWithNSString:sString];

    [(JavaUtilLoggingLogger *)self logWithJavaUtilLoggingLogRecord:v13];
  }
}

- (void)logrbWithJavaUtilLoggingLevel:(id)level withNSString:(id)string withNSString:(id)sString withNSString:(id)nSString withNSString:(id)withNSString withId:(id)id
{
  if (sub_100231628(self, level))
  {
    v15 = new_JavaUtilLoggingLogRecord_initWithJavaUtilLoggingLevel_withNSString_(level, withNSString);
    if (nSString)
    {
      [(JavaUtilLoggingLogRecord *)v15 setResourceBundleWithJavaUtilResourceBundle:JavaUtilLoggingLogger_loadResourceBundleWithNSString_(nSString)];
      [(JavaUtilLoggingLogRecord *)v15 setResourceBundleNameWithNSString:nSString];
    }

    v16 = atomic_load(&self->name_);
    [(JavaUtilLoggingLogRecord *)v15 setLoggerNameWithNSString:v16];
    [(JavaUtilLoggingLogRecord *)v15 setSourceClassNameWithNSString:string];
    [(JavaUtilLoggingLogRecord *)v15 setSourceMethodNameWithNSString:sString];
    idCopy = id;
    v17 = [IOSObjectArray arrayWithObjects:&idCopy count:1 type:NSObject_class_()];
    [(JavaUtilLoggingLogRecord *)v15 setParametersWithNSObjectArray:v17, idCopy];
    [(JavaUtilLoggingLogger *)self logWithJavaUtilLoggingLogRecord:v15];
  }
}

- (void)logrbWithJavaUtilLoggingLevel:(id)level withNSString:(id)string withNSString:(id)sString withNSString:(id)nSString withNSString:(id)withNSString withNSObjectArray:(id)array
{
  if (sub_100231628(self, level))
  {
    v15 = new_JavaUtilLoggingLogRecord_initWithJavaUtilLoggingLevel_withNSString_(level, withNSString);
    if (nSString)
    {
      [(JavaUtilLoggingLogRecord *)v15 setResourceBundleWithJavaUtilResourceBundle:JavaUtilLoggingLogger_loadResourceBundleWithNSString_(nSString)];
      [(JavaUtilLoggingLogRecord *)v15 setResourceBundleNameWithNSString:nSString];
    }

    v16 = atomic_load(&self->name_);
    [(JavaUtilLoggingLogRecord *)v15 setLoggerNameWithNSString:v16];
    [(JavaUtilLoggingLogRecord *)v15 setSourceClassNameWithNSString:string];
    [(JavaUtilLoggingLogRecord *)v15 setSourceMethodNameWithNSString:sString];
    [(JavaUtilLoggingLogRecord *)v15 setParametersWithNSObjectArray:array];

    [(JavaUtilLoggingLogger *)self logWithJavaUtilLoggingLogRecord:v15];
  }
}

- (void)logrbWithJavaUtilLoggingLevel:(id)level withNSString:(id)string withNSString:(id)sString withNSString:(id)nSString withNSString:(id)withNSString withJavaLangThrowable:(id)throwable
{
  if (sub_100231628(self, level))
  {
    v15 = new_JavaUtilLoggingLogRecord_initWithJavaUtilLoggingLevel_withNSString_(level, withNSString);
    if (nSString)
    {
      [(JavaUtilLoggingLogRecord *)v15 setResourceBundleWithJavaUtilResourceBundle:JavaUtilLoggingLogger_loadResourceBundleWithNSString_(nSString)];
      [(JavaUtilLoggingLogRecord *)v15 setResourceBundleNameWithNSString:nSString];
    }

    v16 = atomic_load(&self->name_);
    [(JavaUtilLoggingLogRecord *)v15 setLoggerNameWithNSString:v16];
    [(JavaUtilLoggingLogRecord *)v15 setSourceClassNameWithNSString:string];
    [(JavaUtilLoggingLogRecord *)v15 setSourceMethodNameWithNSString:sString];
    [(JavaUtilLoggingLogRecord *)v15 setThrownWithJavaLangThrowable:throwable];

    [(JavaUtilLoggingLogger *)self logWithJavaUtilLoggingLogRecord:v15];
  }
}

- (void)reset
{
  JreVolatileStrongAssign(&self->levelObjVal_, 0);
  if ((atomic_load_explicit(JavaUtilLoggingLevel__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10019B6E8();
  }

  if (!JavaUtilLoggingLevel_INFO_ || (atomic_store([JavaUtilLoggingLevel_INFO_ intValue], &self->levelIntVal_), v11 = 0u, v12 = 0u, v9 = 0u, v10 = 0u, (handlers = self->handlers_) == 0))
  {
    JreThrowNullPointerException();
  }

  v4 = [(JavaUtilList *)self->handlers_ countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(handlers);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if ([(JavaUtilList *)self->handlers_ removeWithId:v7, v9])
        {
          if (!v7)
          {
            JreThrowNullPointerException();
          }

          [v7 close];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v8 = [(JavaUtilList *)handlers countByEnumeratingWithState:&v9 objects:v13 count:16];
      v4 = v8;
    }

    while (v8);
  }
}

- (void)dealloc
{
  JreReleaseVolatile(&self->name_);
  JreReleaseVolatile(&self->levelObjVal_);

  JreReleaseVolatile(&self->resourceBundleName_);
  JreReleaseVolatile(&self->resourceBundle_);

  v3.receiver = self;
  v3.super_class = JavaUtilLoggingLogger;
  [(JavaUtilLoggingLogger *)&v3 dealloc];
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = JavaUtilLoggingLogger;
  [(JavaUtilLoggingLogger *)&v3 __javaClone];
  JreRetainVolatile(&self->name_);

  JreRetainVolatile(&self->levelObjVal_);
  JreRetainVolatile(&self->resourceBundleName_);
  JreRetainVolatile(&self->resourceBundle_);
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = JavaUtilLoggingLogger_GLOBAL_LOGGER_NAME_;
    v3 = [JavaUtilLoggingLogger alloc];
    JavaUtilLoggingLogger_initWithNSString_withNSString_(v3, v2, 0);
    JreStrongAssignAndConsume(&JavaUtilLoggingLogger_global_, v3);
    v4 = [IOSObjectArray newArrayWithLength:0 type:JavaUtilLoggingHandler_class_()];
    JreStrongAssignAndConsume(&qword_1005552C0, v4);
    atomic_store(1u, JavaUtilLoggingLogger__initialized);
  }
}

@end