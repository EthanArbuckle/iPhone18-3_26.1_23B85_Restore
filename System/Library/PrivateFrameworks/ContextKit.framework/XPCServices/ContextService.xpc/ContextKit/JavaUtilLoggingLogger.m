@interface JavaUtilLoggingLogger
+ (id)getGlobal;
+ (void)initialize;
- (id)getHandlers;
- (void)__javaClone;
- (void)addHandlerWithJavaUtilLoggingHandler:(id)a3;
- (void)configWithNSString:(id)a3;
- (void)dealloc;
- (void)enteringWithNSString:(id)a3 withNSString:(id)a4;
- (void)enteringWithNSString:(id)a3 withNSString:(id)a4 withId:(id)a5;
- (void)enteringWithNSString:(id)a3 withNSString:(id)a4 withNSObjectArray:(id)a5;
- (void)exitingWithNSString:(id)a3 withNSString:(id)a4;
- (void)exitingWithNSString:(id)a3 withNSString:(id)a4 withId:(id)a5;
- (void)fineWithNSString:(id)a3;
- (void)finerWithNSString:(id)a3;
- (void)finestWithNSString:(id)a3;
- (void)infoWithNSString:(id)a3;
- (void)logWithJavaUtilLoggingLevel:(id)a3 withNSString:(id)a4;
- (void)logWithJavaUtilLoggingLevel:(id)a3 withNSString:(id)a4 withId:(id)a5;
- (void)logWithJavaUtilLoggingLevel:(id)a3 withNSString:(id)a4 withJavaLangThrowable:(id)a5;
- (void)logWithJavaUtilLoggingLevel:(id)a3 withNSString:(id)a4 withNSObjectArray:(id)a5;
- (void)logWithJavaUtilLoggingLogRecord:(id)a3;
- (void)logpWithJavaUtilLoggingLevel:(id)a3 withNSString:(id)a4 withNSString:(id)a5 withNSString:(id)a6;
- (void)logpWithJavaUtilLoggingLevel:(id)a3 withNSString:(id)a4 withNSString:(id)a5 withNSString:(id)a6 withId:(id)a7;
- (void)logpWithJavaUtilLoggingLevel:(id)a3 withNSString:(id)a4 withNSString:(id)a5 withNSString:(id)a6 withJavaLangThrowable:(id)a7;
- (void)logpWithJavaUtilLoggingLevel:(id)a3 withNSString:(id)a4 withNSString:(id)a5 withNSString:(id)a6 withNSObjectArray:(id)a7;
- (void)logrbWithJavaUtilLoggingLevel:(id)a3 withNSString:(id)a4 withNSString:(id)a5 withNSString:(id)a6 withNSString:(id)a7;
- (void)logrbWithJavaUtilLoggingLevel:(id)a3 withNSString:(id)a4 withNSString:(id)a5 withNSString:(id)a6 withNSString:(id)a7 withId:(id)a8;
- (void)logrbWithJavaUtilLoggingLevel:(id)a3 withNSString:(id)a4 withNSString:(id)a5 withNSString:(id)a6 withNSString:(id)a7 withJavaLangThrowable:(id)a8;
- (void)logrbWithJavaUtilLoggingLevel:(id)a3 withNSString:(id)a4 withNSString:(id)a5 withNSString:(id)a6 withNSString:(id)a7 withNSObjectArray:(id)a8;
- (void)removeHandlerWithJavaUtilLoggingHandler:(id)a3;
- (void)reset;
- (void)setFilterWithJavaUtilLoggingFilter:(id)a3;
- (void)setLevelWithJavaUtilLoggingLevel:(id)a3;
- (void)setManagerWithJavaUtilLoggingLogManager:(id)a3;
- (void)setParentWithJavaUtilLoggingLogger:(id)a3;
- (void)setUseParentHandlersWithBoolean:(BOOL)a3;
- (void)severeWithNSString:(id)a3;
- (void)throwingWithNSString:(id)a3 withNSString:(id)a4 withJavaLangThrowable:(id)a5;
- (void)warningWithNSString:(id)a3;
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

- (void)addHandlerWithJavaUtilLoggingHandler:(id)a3
{
  if (!a3)
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

  [(JavaUtilList *)handlers addWithId:a3];
}

- (void)setManagerWithJavaUtilLoggingLogManager:(id)a3
{
  if (!a3)
  {
    goto LABEL_25;
  }

  p_name = &self->name_;
  v11 = atomic_load(&self->name_);
  v12 = [a3 getPropertyWithNSString:{JreStrcat("$$", a2, a3, v3, v4, v5, v6, v7, v11)}];
  if (v12)
  {
    [a3 setLevelRecursivelyWithJavaUtilLoggingLogger:self withJavaUtilLoggingLevel:JavaUtilLoggingLevel_parseWithNSString_(v12)];
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

  v23 = [a3 getPropertyWithNSString:v21];
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

          v37 = [a3 getPropertyWithNSString:{JreStrcat("$$", v30, v31, v32, v33, v34, v35, v36, v27)}];
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

- (void)removeHandlerWithJavaUtilLoggingHandler:(id)a3
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

  if (!a3)
  {
    return;
  }

  handlers = self->handlers_;
  if (!handlers)
  {
LABEL_10:
    JreThrowNullPointerException();
  }

  [(JavaUtilList *)handlers removeWithId:a3];
}

- (void)setFilterWithJavaUtilLoggingFilter:(id)a3
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

  JreStrongAssign(&self->filter_, a3);
}

- (void)setLevelWithJavaUtilLoggingLevel:(id)a3
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

  [v6 setLevelRecursivelyWithJavaUtilLoggingLogger:self withJavaUtilLoggingLevel:a3];
}

- (void)setUseParentHandlersWithBoolean:(BOOL)a3
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

  self->notifyParentHandlers_ = a3;
}

- (void)setParentWithJavaUtilLoggingLogger:(id)a3
{
  if (!a3)
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

  [v6 setParentWithJavaUtilLoggingLogger:self withJavaUtilLoggingLogger:a3];
}

- (void)enteringWithNSString:(id)a3 withNSString:(id)a4
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
    [(JavaUtilLoggingLogRecord *)v7 setSourceClassNameWithNSString:a3];
    [(JavaUtilLoggingLogRecord *)v7 setSourceMethodNameWithNSString:a4];
    sub_1002316B4(self, v7);

    [(JavaUtilLoggingLogger *)self logWithJavaUtilLoggingLogRecord:v7];
  }
}

- (void)enteringWithNSString:(id)a3 withNSString:(id)a4 withId:(id)a5
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
    [(JavaUtilLoggingLogRecord *)v9 setSourceClassNameWithNSString:a3];
    [(JavaUtilLoggingLogRecord *)v9 setSourceMethodNameWithNSString:a4];
    v12 = a5;
    v11 = [IOSObjectArray arrayWithObjects:&v12 count:1 type:NSObject_class_()];
    [(JavaUtilLoggingLogRecord *)v9 setParametersWithNSObjectArray:v11, v12];
    sub_1002316B4(self, v9);
    [(JavaUtilLoggingLogger *)self logWithJavaUtilLoggingLogRecord:v9];
  }
}

- (void)enteringWithNSString:(id)a3 withNSString:(id)a4 withNSObjectArray:(id)a5
{
  if ((atomic_load_explicit(JavaUtilLoggingLevel__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10019B6E8();
  }

  if (sub_100231628(self, JavaUtilLoggingLevel_FINER_))
  {
    if (a5)
    {
      v9 = new_JavaLangStringBuilder_initWithNSString_(@"ENTRY");
      if (*(a5 + 2) >= 1)
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

        while (v10 < *(a5 + 2));
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
    [(JavaUtilLoggingLogRecord *)v14 setSourceClassNameWithNSString:a3];
    [(JavaUtilLoggingLogRecord *)v14 setSourceMethodNameWithNSString:a4];
    [(JavaUtilLoggingLogRecord *)v14 setParametersWithNSObjectArray:a5];
    sub_1002316B4(self, v14);

    [(JavaUtilLoggingLogger *)self logWithJavaUtilLoggingLogRecord:v14];
  }
}

- (void)exitingWithNSString:(id)a3 withNSString:(id)a4
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
    [(JavaUtilLoggingLogRecord *)v7 setSourceClassNameWithNSString:a3];
    [(JavaUtilLoggingLogRecord *)v7 setSourceMethodNameWithNSString:a4];
    sub_1002316B4(self, v7);

    [(JavaUtilLoggingLogger *)self logWithJavaUtilLoggingLogRecord:v7];
  }
}

- (void)exitingWithNSString:(id)a3 withNSString:(id)a4 withId:(id)a5
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
    [(JavaUtilLoggingLogRecord *)v9 setSourceClassNameWithNSString:a3];
    [(JavaUtilLoggingLogRecord *)v9 setSourceMethodNameWithNSString:a4];
    v12 = a5;
    v11 = [IOSObjectArray arrayWithObjects:&v12 count:1 type:NSObject_class_()];
    [(JavaUtilLoggingLogRecord *)v9 setParametersWithNSObjectArray:v11, v12];
    sub_1002316B4(self, v9);
    [(JavaUtilLoggingLogger *)self logWithJavaUtilLoggingLogRecord:v9];
  }
}

- (void)throwingWithNSString:(id)a3 withNSString:(id)a4 withJavaLangThrowable:(id)a5
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
    [(JavaUtilLoggingLogRecord *)v9 setSourceClassNameWithNSString:a3];
    [(JavaUtilLoggingLogRecord *)v9 setSourceMethodNameWithNSString:a4];
    [(JavaUtilLoggingLogRecord *)v9 setThrownWithJavaLangThrowable:a5];
    sub_1002316B4(self, v9);

    [(JavaUtilLoggingLogger *)self logWithJavaUtilLoggingLogRecord:v9];
  }
}

- (void)severeWithNSString:(id)a3
{
  if ((atomic_load_explicit(JavaUtilLoggingLevel__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10019B6E8();
  }

  v5 = JavaUtilLoggingLevel_SEVERE_;

  [(JavaUtilLoggingLogger *)self logWithJavaUtilLoggingLevel:v5 withNSString:a3];
}

- (void)warningWithNSString:(id)a3
{
  if ((atomic_load_explicit(JavaUtilLoggingLevel__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10019B6E8();
  }

  v5 = JavaUtilLoggingLevel_WARNING_;

  [(JavaUtilLoggingLogger *)self logWithJavaUtilLoggingLevel:v5 withNSString:a3];
}

- (void)infoWithNSString:(id)a3
{
  if ((atomic_load_explicit(JavaUtilLoggingLevel__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10019B6E8();
  }

  v5 = JavaUtilLoggingLevel_INFO_;

  [(JavaUtilLoggingLogger *)self logWithJavaUtilLoggingLevel:v5 withNSString:a3];
}

- (void)configWithNSString:(id)a3
{
  if ((atomic_load_explicit(JavaUtilLoggingLevel__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10019B6E8();
  }

  v5 = JavaUtilLoggingLevel_CONFIG_;

  [(JavaUtilLoggingLogger *)self logWithJavaUtilLoggingLevel:v5 withNSString:a3];
}

- (void)fineWithNSString:(id)a3
{
  if ((atomic_load_explicit(JavaUtilLoggingLevel__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10019B6E8();
  }

  v5 = JavaUtilLoggingLevel_FINE_;

  [(JavaUtilLoggingLogger *)self logWithJavaUtilLoggingLevel:v5 withNSString:a3];
}

- (void)finerWithNSString:(id)a3
{
  if ((atomic_load_explicit(JavaUtilLoggingLevel__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10019B6E8();
  }

  v5 = JavaUtilLoggingLevel_FINER_;

  [(JavaUtilLoggingLogger *)self logWithJavaUtilLoggingLevel:v5 withNSString:a3];
}

- (void)finestWithNSString:(id)a3
{
  if ((atomic_load_explicit(JavaUtilLoggingLevel__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10019B6E8();
  }

  v5 = JavaUtilLoggingLevel_FINEST_;

  [(JavaUtilLoggingLogger *)self logWithJavaUtilLoggingLevel:v5 withNSString:a3];
}

- (void)logWithJavaUtilLoggingLevel:(id)a3 withNSString:(id)a4
{
  if (sub_100231628(self, a3))
  {
    v7 = new_JavaUtilLoggingLogRecord_initWithJavaUtilLoggingLevel_withNSString_(a3, a4);
    v8 = atomic_load(&self->name_);
    [(JavaUtilLoggingLogRecord *)v7 setLoggerNameWithNSString:v8];
    sub_1002316B4(self, v7);

    [(JavaUtilLoggingLogger *)self logWithJavaUtilLoggingLogRecord:v7];
  }
}

- (void)logWithJavaUtilLoggingLevel:(id)a3 withNSString:(id)a4 withId:(id)a5
{
  if (sub_100231628(self, a3))
  {
    v9 = new_JavaUtilLoggingLogRecord_initWithJavaUtilLoggingLevel_withNSString_(a3, a4);
    v10 = atomic_load(&self->name_);
    [(JavaUtilLoggingLogRecord *)v9 setLoggerNameWithNSString:v10];
    v12 = a5;
    v11 = [IOSObjectArray arrayWithObjects:&v12 count:1 type:NSObject_class_()];
    [(JavaUtilLoggingLogRecord *)v9 setParametersWithNSObjectArray:v11, v12];
    sub_1002316B4(self, v9);
    [(JavaUtilLoggingLogger *)self logWithJavaUtilLoggingLogRecord:v9];
  }
}

- (void)logWithJavaUtilLoggingLevel:(id)a3 withNSString:(id)a4 withNSObjectArray:(id)a5
{
  if (sub_100231628(self, a3))
  {
    v9 = new_JavaUtilLoggingLogRecord_initWithJavaUtilLoggingLevel_withNSString_(a3, a4);
    v10 = atomic_load(&self->name_);
    [(JavaUtilLoggingLogRecord *)v9 setLoggerNameWithNSString:v10];
    [(JavaUtilLoggingLogRecord *)v9 setParametersWithNSObjectArray:a5];
    sub_1002316B4(self, v9);

    [(JavaUtilLoggingLogger *)self logWithJavaUtilLoggingLogRecord:v9];
  }
}

- (void)logWithJavaUtilLoggingLevel:(id)a3 withNSString:(id)a4 withJavaLangThrowable:(id)a5
{
  if (sub_100231628(self, a3))
  {
    v9 = new_JavaUtilLoggingLogRecord_initWithJavaUtilLoggingLevel_withNSString_(a3, a4);
    v10 = atomic_load(&self->name_);
    [(JavaUtilLoggingLogRecord *)v9 setLoggerNameWithNSString:v10];
    [(JavaUtilLoggingLogRecord *)v9 setThrownWithJavaLangThrowable:a5];
    sub_1002316B4(self, v9);

    [(JavaUtilLoggingLogger *)self logWithJavaUtilLoggingLogRecord:v9];
  }
}

- (void)logWithJavaUtilLoggingLogRecord:(id)a3
{
  if (!a3)
  {
    goto LABEL_20;
  }

  v4 = self;
  if (!sub_100231628(self, [a3 getLevel]))
  {
    return;
  }

  filter = v4->filter_;
  if (filter)
  {
    if (![(JavaUtilLoggingFilter *)filter isLoggableWithJavaUtilLoggingLogRecord:a3])
    {
      return;
    }
  }

  v6 = [(JavaUtilLoggingLogger *)v4 getHandlers];
  if (!v6)
  {
LABEL_20:
    JreThrowNullPointerException();
  }

  v7 = v6 + 3;
  v8 = &v6[*(v6 + 2) + 3];
  while (v7 < v8)
  {
    v9 = *v7;
    if (!*v7)
    {
      goto LABEL_20;
    }

    ++v7;
    [v9 publishWithJavaUtilLoggingLogRecord:a3];
  }

  Weak = objc_loadWeak(&v4->parent_);
  if (Weak)
  {
    v11 = Weak;
    do
    {
      if (![(JavaUtilLoggingLogger *)v4 getUseParentHandlers])
      {
        break;
      }

      v12 = [v11 getHandlers];
      if (!v12)
      {
        goto LABEL_20;
      }

      v13 = (v12 + 24);
      v14 = &v12[8 * *(v12 + 2) + 24];
      while (v13 < v14)
      {
        v15 = *v13;
        if (!*v13)
        {
          goto LABEL_20;
        }

        ++v13;
        [v15 publishWithJavaUtilLoggingLogRecord:a3];
      }

      v4 = v11;
      v11 = objc_loadWeak(v11 + 1);
    }

    while (v11);
  }
}

- (void)logpWithJavaUtilLoggingLevel:(id)a3 withNSString:(id)a4 withNSString:(id)a5 withNSString:(id)a6
{
  if (sub_100231628(self, a3))
  {
    v11 = new_JavaUtilLoggingLogRecord_initWithJavaUtilLoggingLevel_withNSString_(a3, a6);
    v12 = atomic_load(&self->name_);
    [(JavaUtilLoggingLogRecord *)v11 setLoggerNameWithNSString:v12];
    [(JavaUtilLoggingLogRecord *)v11 setSourceClassNameWithNSString:a4];
    [(JavaUtilLoggingLogRecord *)v11 setSourceMethodNameWithNSString:a5];
    sub_1002316B4(self, v11);

    [(JavaUtilLoggingLogger *)self logWithJavaUtilLoggingLogRecord:v11];
  }
}

- (void)logpWithJavaUtilLoggingLevel:(id)a3 withNSString:(id)a4 withNSString:(id)a5 withNSString:(id)a6 withId:(id)a7
{
  if (sub_100231628(self, a3))
  {
    v13 = new_JavaUtilLoggingLogRecord_initWithJavaUtilLoggingLevel_withNSString_(a3, a6);
    v14 = atomic_load(&self->name_);
    [(JavaUtilLoggingLogRecord *)v13 setLoggerNameWithNSString:v14];
    [(JavaUtilLoggingLogRecord *)v13 setSourceClassNameWithNSString:a4];
    [(JavaUtilLoggingLogRecord *)v13 setSourceMethodNameWithNSString:a5];
    v16 = a7;
    v15 = [IOSObjectArray arrayWithObjects:&v16 count:1 type:NSObject_class_()];
    [(JavaUtilLoggingLogRecord *)v13 setParametersWithNSObjectArray:v15, v16];
    sub_1002316B4(self, v13);
    [(JavaUtilLoggingLogger *)self logWithJavaUtilLoggingLogRecord:v13];
  }
}

- (void)logpWithJavaUtilLoggingLevel:(id)a3 withNSString:(id)a4 withNSString:(id)a5 withNSString:(id)a6 withNSObjectArray:(id)a7
{
  if (sub_100231628(self, a3))
  {
    v13 = new_JavaUtilLoggingLogRecord_initWithJavaUtilLoggingLevel_withNSString_(a3, a6);
    v14 = atomic_load(&self->name_);
    [(JavaUtilLoggingLogRecord *)v13 setLoggerNameWithNSString:v14];
    [(JavaUtilLoggingLogRecord *)v13 setSourceClassNameWithNSString:a4];
    [(JavaUtilLoggingLogRecord *)v13 setSourceMethodNameWithNSString:a5];
    [(JavaUtilLoggingLogRecord *)v13 setParametersWithNSObjectArray:a7];
    sub_1002316B4(self, v13);

    [(JavaUtilLoggingLogger *)self logWithJavaUtilLoggingLogRecord:v13];
  }
}

- (void)logpWithJavaUtilLoggingLevel:(id)a3 withNSString:(id)a4 withNSString:(id)a5 withNSString:(id)a6 withJavaLangThrowable:(id)a7
{
  if (sub_100231628(self, a3))
  {
    v13 = new_JavaUtilLoggingLogRecord_initWithJavaUtilLoggingLevel_withNSString_(a3, a6);
    v14 = atomic_load(&self->name_);
    [(JavaUtilLoggingLogRecord *)v13 setLoggerNameWithNSString:v14];
    [(JavaUtilLoggingLogRecord *)v13 setSourceClassNameWithNSString:a4];
    [(JavaUtilLoggingLogRecord *)v13 setSourceMethodNameWithNSString:a5];
    [(JavaUtilLoggingLogRecord *)v13 setThrownWithJavaLangThrowable:a7];
    sub_1002316B4(self, v13);

    [(JavaUtilLoggingLogger *)self logWithJavaUtilLoggingLogRecord:v13];
  }
}

- (void)logrbWithJavaUtilLoggingLevel:(id)a3 withNSString:(id)a4 withNSString:(id)a5 withNSString:(id)a6 withNSString:(id)a7
{
  if (sub_100231628(self, a3))
  {
    v13 = new_JavaUtilLoggingLogRecord_initWithJavaUtilLoggingLevel_withNSString_(a3, a7);
    if (a6)
    {
      [(JavaUtilLoggingLogRecord *)v13 setResourceBundleWithJavaUtilResourceBundle:JavaUtilLoggingLogger_loadResourceBundleWithNSString_(a6)];
      [(JavaUtilLoggingLogRecord *)v13 setResourceBundleNameWithNSString:a6];
    }

    v14 = atomic_load(&self->name_);
    [(JavaUtilLoggingLogRecord *)v13 setLoggerNameWithNSString:v14];
    [(JavaUtilLoggingLogRecord *)v13 setSourceClassNameWithNSString:a4];
    [(JavaUtilLoggingLogRecord *)v13 setSourceMethodNameWithNSString:a5];

    [(JavaUtilLoggingLogger *)self logWithJavaUtilLoggingLogRecord:v13];
  }
}

- (void)logrbWithJavaUtilLoggingLevel:(id)a3 withNSString:(id)a4 withNSString:(id)a5 withNSString:(id)a6 withNSString:(id)a7 withId:(id)a8
{
  if (sub_100231628(self, a3))
  {
    v15 = new_JavaUtilLoggingLogRecord_initWithJavaUtilLoggingLevel_withNSString_(a3, a7);
    if (a6)
    {
      [(JavaUtilLoggingLogRecord *)v15 setResourceBundleWithJavaUtilResourceBundle:JavaUtilLoggingLogger_loadResourceBundleWithNSString_(a6)];
      [(JavaUtilLoggingLogRecord *)v15 setResourceBundleNameWithNSString:a6];
    }

    v16 = atomic_load(&self->name_);
    [(JavaUtilLoggingLogRecord *)v15 setLoggerNameWithNSString:v16];
    [(JavaUtilLoggingLogRecord *)v15 setSourceClassNameWithNSString:a4];
    [(JavaUtilLoggingLogRecord *)v15 setSourceMethodNameWithNSString:a5];
    v18 = a8;
    v17 = [IOSObjectArray arrayWithObjects:&v18 count:1 type:NSObject_class_()];
    [(JavaUtilLoggingLogRecord *)v15 setParametersWithNSObjectArray:v17, v18];
    [(JavaUtilLoggingLogger *)self logWithJavaUtilLoggingLogRecord:v15];
  }
}

- (void)logrbWithJavaUtilLoggingLevel:(id)a3 withNSString:(id)a4 withNSString:(id)a5 withNSString:(id)a6 withNSString:(id)a7 withNSObjectArray:(id)a8
{
  if (sub_100231628(self, a3))
  {
    v15 = new_JavaUtilLoggingLogRecord_initWithJavaUtilLoggingLevel_withNSString_(a3, a7);
    if (a6)
    {
      [(JavaUtilLoggingLogRecord *)v15 setResourceBundleWithJavaUtilResourceBundle:JavaUtilLoggingLogger_loadResourceBundleWithNSString_(a6)];
      [(JavaUtilLoggingLogRecord *)v15 setResourceBundleNameWithNSString:a6];
    }

    v16 = atomic_load(&self->name_);
    [(JavaUtilLoggingLogRecord *)v15 setLoggerNameWithNSString:v16];
    [(JavaUtilLoggingLogRecord *)v15 setSourceClassNameWithNSString:a4];
    [(JavaUtilLoggingLogRecord *)v15 setSourceMethodNameWithNSString:a5];
    [(JavaUtilLoggingLogRecord *)v15 setParametersWithNSObjectArray:a8];

    [(JavaUtilLoggingLogger *)self logWithJavaUtilLoggingLogRecord:v15];
  }
}

- (void)logrbWithJavaUtilLoggingLevel:(id)a3 withNSString:(id)a4 withNSString:(id)a5 withNSString:(id)a6 withNSString:(id)a7 withJavaLangThrowable:(id)a8
{
  if (sub_100231628(self, a3))
  {
    v15 = new_JavaUtilLoggingLogRecord_initWithJavaUtilLoggingLevel_withNSString_(a3, a7);
    if (a6)
    {
      [(JavaUtilLoggingLogRecord *)v15 setResourceBundleWithJavaUtilResourceBundle:JavaUtilLoggingLogger_loadResourceBundleWithNSString_(a6)];
      [(JavaUtilLoggingLogRecord *)v15 setResourceBundleNameWithNSString:a6];
    }

    v16 = atomic_load(&self->name_);
    [(JavaUtilLoggingLogRecord *)v15 setLoggerNameWithNSString:v16];
    [(JavaUtilLoggingLogRecord *)v15 setSourceClassNameWithNSString:a4];
    [(JavaUtilLoggingLogRecord *)v15 setSourceMethodNameWithNSString:a5];
    [(JavaUtilLoggingLogRecord *)v15 setThrownWithJavaLangThrowable:a8];

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
  if (objc_opt_class() == a1)
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