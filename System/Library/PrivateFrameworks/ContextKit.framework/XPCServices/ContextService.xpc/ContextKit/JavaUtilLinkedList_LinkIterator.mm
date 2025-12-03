@interface JavaUtilLinkedList_LinkIterator
- (BOOL)hasNext;
- (BOOL)hasPrevious;
- (id)next;
- (id)previous;
- (void)__javaClone;
- (void)addWithId:(id)id;
- (void)dealloc;
- (void)remove;
- (void)setWithId:(id)id;
@end

@implementation JavaUtilLinkedList_LinkIterator

- (void)addWithId:(id)id
{
  list = self->list_;
  if (!list)
  {
    goto LABEL_6;
  }

  if (self->expectedModCount_ != list->super.super.modCount_)
  {
    v11 = new_JavaUtilConcurrentModificationException_init();
    objc_exception_throw(v11);
  }

  Weak = objc_loadWeak(&self->link_);
  if (!Weak || (v7 = *(Weak + 3), v8 = objc_loadWeak(&self->link_), v9 = new_JavaUtilLinkedList_Link_initWithId_withJavaUtilLinkedList_Link_withJavaUtilLinkedList_Link_(id, v8, v7), v10 = objc_loadWeak(&self->link_), JreStrongAssign(v10 + 3, v9), !v7))
  {
LABEL_6:
    JreThrowNullPointerException();
  }

  objc_storeWeak(v7 + 2, v9);
  objc_storeWeak(&self->link_, v9);
  self->lastLink_ = 0;
  *&self->pos_ = vadd_s32(*&self->pos_, 0x100000001);
  ++*(&self->list_->super.super.modCount_ + 1);
  ++self->list_->super.super.modCount_;
}

- (BOOL)hasNext
{
  Weak = objc_loadWeak(&self->link_);
  if (!Weak || (list = self->list_) == 0)
  {
    JreThrowNullPointerException();
  }

  return Weak[3] != *&list->size_;
}

- (BOOL)hasPrevious
{
  Weak = objc_loadWeak(&self->link_);
  list = self->list_;
  if (!list)
  {
    JreThrowNullPointerException();
  }

  return Weak != *&list->size_;
}

- (id)next
{
  list = self->list_;
  if (!list)
  {
LABEL_7:
    JreThrowNullPointerException();
  }

  if (self->expectedModCount_ != list->super.super.modCount_)
  {
    v8 = new_JavaUtilConcurrentModificationException_init();
    goto LABEL_10;
  }

  Weak = objc_loadWeak(&self->link_);
  if (!Weak)
  {
    goto LABEL_7;
  }

  v5 = Weak[3];
  if (v5 == *&self->list_->size_)
  {
    v8 = new_JavaUtilNoSuchElementException_init();
LABEL_10:
    objc_exception_throw(v8);
  }

  self->lastLink_ = objc_storeWeak(&self->link_, v5);
  ++self->pos_;
  v6 = objc_loadWeak(&self->link_);
  if (!v6)
  {
    goto LABEL_7;
  }

  return *(v6 + 1);
}

- (id)previous
{
  list = self->list_;
  if (!list)
  {
LABEL_7:
    JreThrowNullPointerException();
  }

  if (self->expectedModCount_ != list->super.super.modCount_)
  {
    v8 = new_JavaUtilConcurrentModificationException_init();
    goto LABEL_10;
  }

  if (objc_loadWeak(&self->link_) == *&self->list_->size_)
  {
    v8 = new_JavaUtilNoSuchElementException_init();
LABEL_10:
    objc_exception_throw(v8);
  }

  self->lastLink_ = objc_loadWeak(&self->link_);
  Weak = objc_loadWeak(&self->link_);
  if (!Weak)
  {
    goto LABEL_7;
  }

  v5 = objc_loadWeak(Weak + 2);
  objc_storeWeak(&self->link_, v5);
  --self->pos_;
  lastLink = self->lastLink_;
  if (!lastLink)
  {
    goto LABEL_7;
  }

  return lastLink->data_;
}

- (void)remove
{
  list = self->list_;
  if (!list)
  {
LABEL_9:
    JreThrowNullPointerException();
  }

  if (self->expectedModCount_ != list->super.super.modCount_)
  {
    v9 = new_JavaUtilConcurrentModificationException_init();
    goto LABEL_12;
  }

  lastLink = self->lastLink_;
  if (!lastLink)
  {
    v9 = new_JavaLangIllegalStateException_init();
LABEL_12:
    objc_exception_throw(v9);
  }

  p_isa = &lastLink->next_->super.isa;
  Weak = objc_loadWeak(&lastLink->previous_);
  if (!p_isa)
  {
    goto LABEL_9;
  }

  v7 = Weak;
  objc_storeWeak(p_isa + 2, Weak);
  if (!v7)
  {
    goto LABEL_9;
  }

  JreStrongAssign(v7 + 3, p_isa);
  v8 = self->lastLink_;
  if (v8 == objc_loadWeak(&self->link_))
  {
    --self->pos_;
  }

  objc_storeWeak(&self->link_, v7);
  self->lastLink_ = 0;
  ++self->expectedModCount_;
  --*(&self->list_->super.super.modCount_ + 1);
  ++self->list_->super.super.modCount_;
}

- (void)setWithId:(id)id
{
  list = self->list_;
  if (!list)
  {
    JreThrowNullPointerException();
  }

  if (self->expectedModCount_ != list->super.super.modCount_)
  {
    v5 = new_JavaUtilConcurrentModificationException_init();
    goto LABEL_10;
  }

  lastLink = self->lastLink_;
  if (!lastLink)
  {
    v5 = new_JavaLangIllegalStateException_init();
LABEL_10:
    objc_exception_throw(v5);
  }

  JreStrongAssign(&lastLink->data_, id);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilLinkedList_LinkIterator;
  [(JavaUtilLinkedList_LinkIterator *)&v3 dealloc];
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = JavaUtilLinkedList_LinkIterator;
  [(JavaUtilLinkedList_LinkIterator *)&v3 __javaClone];
}

@end