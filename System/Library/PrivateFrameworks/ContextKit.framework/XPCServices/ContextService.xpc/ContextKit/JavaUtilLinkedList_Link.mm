@interface JavaUtilLinkedList_Link
- (JavaUtilLinkedList_Link)initWithId:(id)id withJavaUtilLinkedList_Link:(id)link withJavaUtilLinkedList_Link:(id)list_Link;
- (void)__javaClone;
- (void)dealloc;
@end

@implementation JavaUtilLinkedList_Link

- (JavaUtilLinkedList_Link)initWithId:(id)id withJavaUtilLinkedList_Link:(id)link withJavaUtilLinkedList_Link:(id)list_Link
{
  JreStrongAssign(&self->data_, id);
  objc_storeWeak(&self->previous_, link);
  JreStrongAssign(&self->next_, list_Link);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilLinkedList_Link;
  [(JavaUtilLinkedList_Link *)&v3 dealloc];
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = JavaUtilLinkedList_Link;
  [(JavaUtilLinkedList_Link *)&v3 __javaClone];
}

@end