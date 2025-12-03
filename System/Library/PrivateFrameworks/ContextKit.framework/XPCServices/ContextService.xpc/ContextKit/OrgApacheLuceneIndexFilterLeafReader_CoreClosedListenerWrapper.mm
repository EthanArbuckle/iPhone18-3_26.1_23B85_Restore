@interface OrgApacheLuceneIndexFilterLeafReader_CoreClosedListenerWrapper
- (BOOL)isEqual:(id)equal;
- (OrgApacheLuceneIndexFilterLeafReader_CoreClosedListenerWrapper)initWithOrgApacheLuceneIndexLeafReader_CoreClosedListener:(id)listener withId:(id)id withId:(id)withId;
- (unint64_t)hash;
- (void)dealloc;
- (void)onCloseWithId:(id)id;
@end

@implementation OrgApacheLuceneIndexFilterLeafReader_CoreClosedListenerWrapper

- (OrgApacheLuceneIndexFilterLeafReader_CoreClosedListenerWrapper)initWithOrgApacheLuceneIndexLeafReader_CoreClosedListener:(id)listener withId:(id)id withId:(id)withId
{
  JreStrongAssign(&self->in_, listener);
  JreStrongAssign(&self->thisCoreKey_, id);
  JreStrongAssign(&self->inCoreKey_, withId);
  return self;
}

- (void)onCloseWithId:(id)id
{
  if (!self->in_)
  {
    JreThrowNullPointerException();
  }

  thisCoreKey = self->thisCoreKey_;
  in = self->in_;

  [(OrgApacheLuceneIndexLeafReader_CoreClosedListener *)in onCloseWithId:thisCoreKey];
}

- (BOOL)isEqual:(id)equal
{
  if (!equal)
  {
    goto LABEL_5;
  }

  getClass = [equal getClass];
  if (qword_100554248 != -1)
  {
    sub_100098F94();
  }

  if (getClass == qword_100554240)
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

    v6 = [(OrgApacheLuceneIndexLeafReader_CoreClosedListener *)in isEqual:*(equal + 1)];
    if (v6)
    {
      LOBYTE(v6) = self->thisCoreKey_ == *(equal + 2);
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
  getClass = [(OrgApacheLuceneIndexFilterLeafReader_CoreClosedListenerWrapper *)self getClass];
  v6 = *&self->in_;
  v3 = [IOSObjectArray arrayWithObjects:&getClass count:3 type:NSObject_class_()];
  return OrgLukhnosPortmobileUtilObjects_hash__WithNSObjectArray_(v3);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexFilterLeafReader_CoreClosedListenerWrapper;
  [(OrgApacheLuceneIndexFilterLeafReader_CoreClosedListenerWrapper *)&v3 dealloc];
}

@end