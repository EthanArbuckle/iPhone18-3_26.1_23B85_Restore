@interface ComAppleContextkitUtilObjcIterator
- (id)next;
- (void)dealloc;
@end

@implementation ComAppleContextkitUtilObjcIterator

- (id)next
{
  object = self->object_;
  if (!object)
  {
    v4 = new_JavaUtilNoSuchElementException_init();
    objc_exception_throw(v4);
  }

  JreStrongAssign(&self->object_, [self->nsEnumerator_ nextObject]);
  return object;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ComAppleContextkitUtilObjcIterator;
  [(ComAppleContextkitUtilObjcIterator *)&v3 dealloc];
}

@end