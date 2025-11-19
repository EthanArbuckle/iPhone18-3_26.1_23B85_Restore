@interface JavaLangThrowable
- (JavaLangThrowable)initWithJavaLangThrowable:(id)a3;
- (NSString)description;
- (id)fillInStackTrace;
- (id)filterStackTrace;
- (id)getSuppressed;
- (id)initCauseWithJavaLangThrowable:(id)a3;
- (void)addSuppressedWithJavaLangThrowable:(id)a3;
- (void)dealloc;
- (void)maybeFreeRawCallStack;
- (void)printStackTrace;
- (void)printStackTraceWithJavaIoPrintStream:(id)a3;
- (void)printStackTraceWithJavaIoPrintWriter:(id)a3;
- (void)setStackTraceWithJavaLangStackTraceElementArray:(id)a3;
@end

@implementation JavaLangThrowable

- (JavaLangThrowable)initWithJavaLangThrowable:(id)a3
{
  if (a3)
  {
    v5 = [a3 description];
  }

  else
  {
    v5 = 0;
  }

  JavaLangThrowable_initWithNSString_withJavaLangThrowable_withBoolean_withBoolean_(self, v5, a3, 1, 1);
  return self;
}

- (id)filterStackTrace
{
  v3 = &OBJC_IVAR___LibcoreUtilMutableInt_value_;
  if (self->rawCallStack)
  {
    objc_sync_enter(self);
    if (self->rawCallStack)
    {
      v4 = +[NSMutableArray array];
      if (self->rawFrameCount)
      {
        v5 = 0;
        do
        {
          v6 = [[JavaLangStackTraceElement alloc] initWithLong:self->rawCallStack[v5]];
          v7 = [(JavaLangStackTraceElement *)v6 getClassName];
          v8 = v7;
          if (v7 && ([v7 isEqualToString:@"NSInvocation"] & 1) == 0 && (!objc_msgSend(v8, "isEqualToString:", @"java.lang.Throwable") || (objc_msgSend(-[JavaLangStackTraceElement getMethodName](v6, "getMethodName"), "isEqualToString:", @"<init>") & 1) == 0))
          {
            [v4 addObject:v6];
          }

          ++v5;
        }

        while (v5 < self->rawFrameCount);
      }

      v9 = [v4 lastObject];
      if ([objc_msgSend(v9 "getClassName")] && objc_msgSend(objc_msgSend(v9, "getMethodName"), "isEqualToString:", @"invoke"))
      {
        [v4 removeLastObject];
      }

      v10 = [IOSObjectArray arrayWithNSArray:v4 type:JavaLangStackTraceElement_class_()];
      v3 = &OBJC_IVAR___LibcoreUtilMutableInt_value_;
      self->stackTrace = v10;
      free(self->rawCallStack);
      self->rawCallStack = 0;
    }

    objc_sync_exit(self);
  }

  return *(&self->super.super.isa + v3[430]);
}

- (id)fillInStackTrace
{
  objc_sync_enter(self);
  FillInStackTraceInternal(self);
  objc_sync_exit(self);
  return self;
}

- (id)initCauseWithJavaLangThrowable:(id)a3
{
  if (self->cause)
  {
    v5 = [JavaLangIllegalStateException alloc];
    v6 = @"Can't overwrite cause";
    goto LABEL_6;
  }

  if (a3 == self)
  {
    v5 = [JavaLangIllegalArgumentException alloc];
    v6 = @"Self-causation not permitted";
LABEL_6:
    v7 = [(JavaLangIllegalStateException *)v5 initWithNSString:v6];
    v8 = v7;
    objc_exception_throw(v7);
  }

  self->cause = a3;
  return self;
}

- (void)printStackTrace
{
  if ((atomic_load_explicit(JavaLangSystem__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014019C();
  }

  v3 = JavaLangSystem_err_;

  [(JavaLangThrowable *)self printStackTraceWithJavaIoPrintStream:v3];
}

- (void)printStackTraceWithJavaIoPrintWriter:(id)a3
{
  [a3 printlnWithNSString:{-[JavaLangThrowable description](self, "description")}];
  v5 = [(JavaLangThrowable *)self filterStackTrace];
  if (v5[2] >= 1)
  {
    v6 = v5;
    v7 = 0;
    v8 = v5;
    do
    {
      [a3 printWithNSString:@"\tat "];
      [a3 printlnWithId:*(v8 + 3)];
      ++v7;
      v8 += 2;
    }

    while (v7 < v6[2]);
  }

  if (self->cause)
  {
    [a3 printWithNSString:@"Caused by: "];
    cause = self->cause;

    [(JavaLangThrowable *)cause printStackTraceWithJavaIoPrintWriter:a3];
  }
}

- (void)printStackTraceWithJavaIoPrintStream:(id)a3
{
  [a3 printlnWithNSString:{-[JavaLangThrowable description](self, "description")}];
  v5 = [(JavaLangThrowable *)self filterStackTrace];
  if (v5[2] >= 1)
  {
    v6 = v5;
    v7 = 0;
    v8 = v5;
    do
    {
      [a3 printWithNSString:@"\tat "];
      [a3 printlnWithId:*(v8 + 3)];
      ++v7;
      v8 += 2;
    }

    while (v7 < v6[2]);
  }

  if (self->cause)
  {
    [a3 printWithNSString:@"Caused by: "];
    cause = self->cause;

    [(JavaLangThrowable *)cause printStackTraceWithJavaIoPrintStream:a3];
  }
}

- (void)setStackTraceWithJavaLangStackTraceElementArray:(id)a3
{
  if (!a3)
  {
    goto LABEL_12;
  }

  v5 = *(a3 + 2);
  if (v5 >= 1)
  {
    v6 = a3 + 24;
    while (*v6)
    {
      ++v6;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }

LABEL_12:
    JreThrowNullPointerException();
  }

LABEL_6:
  objc_sync_enter(self);
  if (self->stackTrace || self->rawCallStack)
  {
    [(JavaLangThrowable *)self maybeFreeRawCallStack];
    v7 = self->stackTrace;
  }

  self->stackTrace = a3;

  objc_sync_exit(self);
}

- (void)addSuppressedWithJavaLangThrowable:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  if (a3 == self)
  {
    objc_exception_throw(objc_alloc_init(JavaLangIllegalArgumentException));
  }

  if (self->suppressedExceptions)
  {
    objc_sync_enter(self);
    suppressedExceptions = self->suppressedExceptions;
    if (suppressedExceptions)
    {
      size = suppressedExceptions->super.size_;
    }

    else
    {
      size = 0;
    }

    if (qword_100554F70 != -1)
    {
      sub_1001F1690();
    }

    v7 = [IOSObjectArray newArrayWithLength:size + 1 type:qword_100554F68];
    if (size >= 1)
    {
      for (i = 0; i != size; ++i)
      {
        [(IOSObjectArray *)v7 replaceObjectAtIndex:i withObject:(&self->suppressedExceptions->elementType_)[i]];
      }
    }

    [(IOSObjectArray *)v7 replaceObjectAtIndex:size withObject:a3];

    self->suppressedExceptions = v7;

    objc_sync_exit(self);
  }
}

- (id)getSuppressed
{
  if (self->suppressedExceptions)
  {

    return [IOSObjectArray arrayWithArray:?];
  }

  else
  {
    if (qword_100554F70 != -1)
    {
      sub_1001F1690();
    }

    v3 = qword_100554F68;

    return [IOSObjectArray arrayWithLength:0 type:v3];
  }
}

- (NSString)description
{
  v3 = [-[JavaLangThrowable getClass](self "getClass")];
  v4 = [(JavaLangThrowable *)self getMessage];
  if (v4)
  {
    return [NSString stringWithFormat:@"%@: %@", v3, v4];
  }

  else
  {
    return v3;
  }
}

- (void)maybeFreeRawCallStack
{
  rawCallStack = self->rawCallStack;
  if (rawCallStack)
  {
    free(rawCallStack);
    self->rawCallStack = 0;
  }
}

- (void)dealloc
{
  [(JavaLangThrowable *)self maybeFreeRawCallStack];

  v3.receiver = self;
  v3.super_class = JavaLangThrowable;
  [(JavaLangThrowable *)&v3 dealloc];
}

@end