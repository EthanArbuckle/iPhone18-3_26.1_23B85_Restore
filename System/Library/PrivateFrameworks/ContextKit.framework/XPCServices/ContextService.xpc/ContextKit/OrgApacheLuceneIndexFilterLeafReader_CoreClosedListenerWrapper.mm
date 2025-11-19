@interface OrgApacheLuceneIndexFilterLeafReader_CoreClosedListenerWrapper
- (BOOL)isEqual:(id)a3;
- (OrgApacheLuceneIndexFilterLeafReader_CoreClosedListenerWrapper)initWithOrgApacheLuceneIndexLeafReader_CoreClosedListener:(id)a3 withId:(id)a4 withId:(id)a5;
- (unint64_t)hash;
- (void)dealloc;
- (void)onCloseWithId:(id)a3;
@end

@implementation OrgApacheLuceneIndexFilterLeafReader_CoreClosedListenerWrapper

- (OrgApacheLuceneIndexFilterLeafReader_CoreClosedListenerWrapper)initWithOrgApacheLuceneIndexLeafReader_CoreClosedListener:(id)a3 withId:(id)a4 withId:(id)a5
{
  JreStrongAssign(&self->in_, a3);
  JreStrongAssign(&self->thisCoreKey_, a4);
  JreStrongAssign(&self->inCoreKey_, a5);
  return self;
}

- (void)onCloseWithId:(id)a3
{
  if (!self->in_)
  {
    JreThrowNullPointerException();
  }

  thisCoreKey = self->thisCoreKey_;
  in = self->in_;

  [(OrgApacheLuceneIndexLeafReader_CoreClosedListener *)in onCloseWithId:thisCoreKey];
}

- (BOOL)isEqual:(id)a3
{
  if (!a3)
  {
    goto LABEL_5;
  }

  v5 = [a3 getClass];
  if (qword_100554248 != -1)
  {
    sub_100098F94();
  }

  if (v5 == qword_100554240)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }

    in = self->in_;
    if (!in)
    {
      JreThrowNullPointerException();
    }

    v6 = [(OrgApacheLuceneIndexLeafReader_CoreClosedListener *)in isEqual:*(a3 + 1)];
    if (v6)
    {
      LOBYTE(v6) = self->thisCoreKey_ == *(a3 + 2);
    }
  }

  else
  {
LABEL_5:
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  v5 = [(OrgApacheLuceneIndexFilterLeafReader_CoreClosedListenerWrapper *)self getClass];
  v6 = *&self->in_;
  v3 = [IOSObjectArray arrayWithObjects:&v5 count:3 type:NSObject_class_()];
  return OrgLukhnosPortmobileUtilObjects_hash__WithNSObjectArray_(v3);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexFilterLeafReader_CoreClosedListenerWrapper;
  [(OrgApacheLuceneIndexFilterLeafReader_CoreClosedListenerWrapper *)&v3 dealloc];
}

@end