@interface JavaUtilLinkedList_Link
- (JavaUtilLinkedList_Link)initWithId:(id)a3 withJavaUtilLinkedList_Link:(id)a4 withJavaUtilLinkedList_Link:(id)a5;
- (void)__javaClone;
- (void)dealloc;
@end

@implementation JavaUtilLinkedList_Link

- (JavaUtilLinkedList_Link)initWithId:(id)a3 withJavaUtilLinkedList_Link:(id)a4 withJavaUtilLinkedList_Link:(id)a5
{
  JreStrongAssign(&self->data_, a3);
  objc_storeWeak(&self->previous_, a4);
  JreStrongAssign(&self->next_, a5);
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