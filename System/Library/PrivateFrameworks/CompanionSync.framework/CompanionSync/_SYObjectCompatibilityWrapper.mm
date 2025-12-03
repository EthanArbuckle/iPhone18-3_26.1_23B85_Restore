@interface _SYObjectCompatibilityWrapper
- (_SYObjectCompatibilityWrapper)initWithSYObject:(id)object changeType:(int64_t)type;
- (id)methodSignatureForSelector:(SEL)selector;
@end

@implementation _SYObjectCompatibilityWrapper

- (_SYObjectCompatibilityWrapper)initWithSYObject:(id)object changeType:(int64_t)type
{
  objectCopy = object;
  if (objectCopy)
  {
    objc_storeStrong(&self->_syObject, object);
    self->_type = type;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v5 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v5, selector);
  if (InstanceMethod || (syObject = self->_syObject, v8 = objc_opt_class(), (InstanceMethod = class_getInstanceMethod(v8, selector)) != 0))
  {
    InstanceMethod = [MEMORY[0x1E695DF68] signatureWithObjCTypes:method_getTypeEncoding(InstanceMethod)];
  }

  return InstanceMethod;
}

@end