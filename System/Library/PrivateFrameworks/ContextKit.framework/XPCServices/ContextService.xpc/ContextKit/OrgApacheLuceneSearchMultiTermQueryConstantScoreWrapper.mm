@interface OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper
- (BOOL)isEqual:(id)a3;
- (OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper)initWithOrgApacheLuceneSearchMultiTermQuery:(id)a3;
- (id)createWeightWithOrgApacheLuceneSearchIndexSearcher:(id)a3 withBoolean:(BOOL)a4;
- (id)getField;
- (id)toStringWithNSString:(id)a3;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper

- (OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper)initWithOrgApacheLuceneSearchMultiTermQuery:(id)a3
{
  OrgApacheLuceneSearchQuery_init(self);
  JreStrongAssign((&self->super.boost_ + 1), a3);
  return self;
}

- (id)toStringWithNSString:(id)a3
{
  v4 = *(&self->super.boost_ + 1);
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  return [v4 toStringWithNSString:a3];
}

- (BOOL)isEqual:(id)a3
{
  v12.receiver = self;
  v12.super_class = OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper;
  v5 = [(OrgApacheLuceneSearchQuery *)&v12 isEqual:?];
  if (!v5)
  {
    return v5;
  }

  objc_opt_class();
  if (!a3)
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

  v5 = [v6 isEqual:*(a3 + 12)];
  if (v5)
  {
    [(OrgApacheLuceneSearchQuery *)self getBoost];
    v8 = v7;
    [a3 getBoost];
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

- (id)createWeightWithOrgApacheLuceneSearchIndexSearcher:(id)a3 withBoolean:(BOOL)a4
{
  v7 = [OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper__1 alloc];
  sub_100025F30(v7, self, a3, a4, self);

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper;
  [(OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper *)&v3 dealloc];
}

@end