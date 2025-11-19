@interface OrgApacheLuceneUtilBitSet_$1
- (OrgApacheLuceneUtilBitSet_$1)initWithOrgApacheLuceneUtilBitSet:(id)a3;
- (void)dealloc;
- (void)finish;
@end

@implementation OrgApacheLuceneUtilBitSet_$1

- (void)finish
{
  v3 = self->previous_ + 1;
  if (v3 < [(OrgApacheLuceneUtilBitSet *)self->this$0_ length])
  {
    v4 = self->this$0_;
    previous = self->previous_;
    v6 = [(OrgApacheLuceneUtilBitSet *)v4 length];

    [(OrgApacheLuceneUtilBitSet *)v4 clearWithInt:(previous + 1) withInt:v6];
  }
}

- (OrgApacheLuceneUtilBitSet_$1)initWithOrgApacheLuceneUtilBitSet:(id)a3
{
  JreStrongAssign(&self->this$0_, a3);
  self->previous_ = -1;
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilBitSet__1;
  [(OrgApacheLuceneUtilBitSet_$1 *)&v3 dealloc];
}

@end