@interface OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper
- (BOOL)isEqual:(id)equal;
- (OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper)initWithOrgApacheLuceneSearchMultiTermQuery:(id)query;
- (id)createWeightWithOrgApacheLuceneSearchIndexSearcher:(id)searcher withBoolean:(BOOL)boolean;
- (id)getField;
- (id)toStringWithNSString:(id)string;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper

- (OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper)initWithOrgApacheLuceneSearchMultiTermQuery:(id)query
{
  OrgApacheLuceneSearchQuery_init(self);
  JreStrongAssign((&self->super.boost_ + 1), query);
  return self;
}

- (id)toStringWithNSString:(id)string
{
  v4 = *(&self->super.boost_ + 1);
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  return [v4 toStringWithNSString:string];
}

- (BOOL)isEqual:(id)equal
{
  v12.receiver = self;
  v12.super_class = OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper;
  v5 = [(OrgApacheLuceneSearchQuery *)&v12 isEqual:?];
  if (!v5)
  {
    return v5;
  }

  objc_opt_class();
  if (!equal)
  {
    v10 = *(&self->super.boost_ + 1);
    goto LABEL_10;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v6 = *(&self->super.boost_ + 1);
  if (!v6)
  {
LABEL_10:
    JreThrowNullPointerException();
  }

  v5 = [v6 isEqual:*(equal + 12)];
  if (v5)
  {
    [(OrgApacheLuceneSearchQuery *)self getBoost];
    v8 = v7;
    [equal getBoost];
    LOBYTE(v5) = v8 == v9;
  }

  return v5;
}

- (unint64_t)hash
{
  v6.receiver = self;
  v6.super_class = OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper;
  v3 = [(OrgApacheLuceneSearchQuery *)&v6 hash];
  v4 = *(&self->super.boost_ + 1);
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  return ([v4 hash] - v3 + 32 * v3);
}

- (id)getField
{
  v3 = *(&self->super.boost_ + 1);
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  return [v3 getField];
}

- (id)createWeightWithOrgApacheLuceneSearchIndexSearcher:(id)searcher withBoolean:(BOOL)boolean
{
  v7 = [OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper__1 alloc];
  sub_100025F30(v7, self, searcher, boolean, self);

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper;
  [(OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper *)&v3 dealloc];
}

@end