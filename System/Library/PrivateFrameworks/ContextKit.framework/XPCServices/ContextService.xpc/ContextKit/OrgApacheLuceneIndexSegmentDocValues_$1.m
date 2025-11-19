@interface OrgApacheLuceneIndexSegmentDocValues_$1
- (void)dealloc;
- (void)release__;
@end

@implementation OrgApacheLuceneIndexSegmentDocValues_$1

- (void)release__
{
  object = self->super.object_;
  if (!object)
  {
    JreThrowNullPointerException();
  }

  [object close];
  v4 = self->this$0_;
  objc_sync_enter(v4);
  genDVProducers = self->this$0_->genDVProducers_;
  if (!genDVProducers)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilMap *)genDVProducers removeWithId:self->val$gen_];

  objc_sync_exit(v4);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexSegmentDocValues__1;
  [(OrgApacheLuceneUtilRefCount *)&v3 dealloc];
}

@end