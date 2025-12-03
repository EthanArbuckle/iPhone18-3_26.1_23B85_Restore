@interface NSObject
- (id)clone;
- (id)getClass;
- (void)notify;
- (void)notifyAll;
- (void)waitWithLong:(int64_t)long withInt:(int)int;
@end

@implementation NSObject

- (id)clone
{
  if (([NSCopying_class_() isInstance:self] & 1) == 0)
  {
    objc_exception_throw(objc_alloc_init(JavaLangCloneNotSupportedException));
  }

  Superclass = objc_opt_class();
  InstanceSize = class_getInstanceSize(Superclass);
  v5 = objc_opt_class();
  v6 = class_getInstanceSize(v5);
  v7 = [Superclass alloc];
  memcpy(&v7[v6], self + v6, InstanceSize - v6);
  for (; Superclass; Superclass = class_getSuperclass(Superclass))
  {
    if (Superclass == objc_opt_class())
    {
      break;
    }

    outCount = 0;
    v8 = class_copyIvarList(Superclass, &outCount);
    if (outCount)
    {
      for (i = 0; i < outCount; ++i)
      {
        v10 = v8[i];
        if (*ivar_getTypeEncoding(v10) == 64)
        {
          v11 = *&v7[ivar_getOffset(v10)];
        }
      }
    }

    free(v8);
  }

  [v7 __javaClone];
  return v7;
}

- (id)getClass
{
  v2 = objc_opt_class();

  return IOSClass_fromClass(v2);
}

- (void)notify
{
  v2 = j2objc_sync_notify(self);
  if (v2)
  {
    if (v2 == -1)
    {
      v3 = objc_alloc_init(JavaLangIllegalMonitorStateException);
    }

    else
    {
      v3 = [[JavaLangInternalError alloc] initWithNSString:[NSString stringWithFormat:@"system error %d", v2]];
    }

    objc_exception_throw(v3);
  }
}

- (void)notifyAll
{
  v2 = j2objc_sync_notifyAll(self);
  if (v2)
  {
    if (v2 == -1)
    {
      v3 = objc_alloc_init(JavaLangIllegalMonitorStateException);
    }

    else
    {
      v3 = [[JavaLangInternalError alloc] initWithNSString:[NSString stringWithFormat:@"system error %d", v2]];
    }

    objc_exception_throw(v3);
  }
}

- (void)waitWithLong:(int64_t)long withInt:(int)int
{
  if (int < 0)
  {
    objc_exception_throw(objc_alloc_init(JavaLangIllegalArgumentException));
  }

  if (int)
  {
    longCopy = long + 1;
  }

  else
  {
    longCopy = long;
  }

  sub_10026C668(self, longCopy);
}

@end