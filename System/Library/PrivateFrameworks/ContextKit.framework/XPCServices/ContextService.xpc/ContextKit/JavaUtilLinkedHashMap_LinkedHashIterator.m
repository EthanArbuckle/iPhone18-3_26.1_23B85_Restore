@interface JavaUtilLinkedHashMap_LinkedHashIterator
- (void)__javaClone;
- (void)dealloc;
- (void)remove;
@end

@implementation JavaUtilLinkedHashMap_LinkedHashIterator

- (void)remove
{
  if (*(objc_loadWeak(&self->this$0_) + 11) != self->expectedModCount_)
  {
    v5 = new_JavaUtilConcurrentModificationException_init();
    goto LABEL_8;
  }

  p_lastReturned = &self->lastReturned_;
  if (!self->lastReturned_)
  {
    v5 = new_JavaLangIllegalStateException_init();
LABEL_8:
    objc_exception_throw(v5);
  }

  Weak = objc_loadWeak(&self->this$0_);
  if (!*p_lastReturned)
  {
    JreThrowNullPointerException();
  }

  [Weak removeWithId:(*p_lastReturned)->super.key_];
  JreStrongAssign(&self->lastReturned_, 0);
  self->expectedModCount_ = *(objc_loadWeak(&self->this$0_) + 11);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilLinkedHashMap_LinkedHashIterator;
  [(JavaUtilLinkedHashMap_LinkedHashIterator *)&v3 dealloc];
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = JavaUtilLinkedHashMap_LinkedHashIterator;
  [(JavaUtilLinkedHashMap_LinkedHashIterator *)&v3 __javaClone];
}

@end