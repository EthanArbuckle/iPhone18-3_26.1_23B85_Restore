@interface _SYObjectCompatibilityWrapper
- (_SYObjectCompatibilityWrapper)initWithSYObject:(id)a3 changeType:(int64_t)a4;
- (id)methodSignatureForSelector:(SEL)a3;
@end

@implementation _SYObjectCompatibilityWrapper

- (_SYObjectCompatibilityWrapper)initWithSYObject:(id)a3 changeType:(int64_t)a4
{
  v7 = a3;
  if (v7)
  {
    objc_storeStrong(&self->_syObject, a3);
    self->_type = a4;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v5 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v5, a3);
  if (InstanceMethod || (syObject = self->_syObject, v8 = objc_opt_class(), (InstanceMethod = class_getInstanceMethod(v8, a3)) != 0))
  {
    InstanceMethod = [MEMORY[0x1E695DF68] signatureWithObjCTypes:method_getTypeEncoding(InstanceMethod)];
  }

  return InstanceMethod;
}

@end