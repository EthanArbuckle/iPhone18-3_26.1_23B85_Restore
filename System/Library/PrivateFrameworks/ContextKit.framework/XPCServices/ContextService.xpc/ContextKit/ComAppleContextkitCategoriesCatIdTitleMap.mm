@interface ComAppleContextkitCategoriesCatIdTitleMap
- (ComAppleContextkitCategoriesCatIdTitleMap)initWithOrgApacheLuceneStoreIndexInput:(id)input withInt:(int)int;
- (id)categoryIdToTitleWithInt:(int)int;
- (id)clone;
- (id)copyWithZone:(_NSZone *)zone;
- (void)close;
- (void)dealloc;
@end

@implementation ComAppleContextkitCategoriesCatIdTitleMap

- (ComAppleContextkitCategoriesCatIdTitleMap)initWithOrgApacheLuceneStoreIndexInput:(id)input withInt:(int)int
{
  JreStrongAssign(&self->titleIn_, input);
  self->maxTitleIdExcl_ = int;
  return self;
}

- (id)clone
{
  titleIn = self->titleIn_;
  if (!titleIn)
  {
    JreThrowNullPointerException();
  }

  clone = [(OrgApacheLuceneStoreIndexInput *)titleIn clone];
  maxTitleIdExcl = self->maxTitleIdExcl_;
  v6 = [ComAppleContextkitCategoriesCatIdTitleMap alloc];
  JreStrongAssign(&v6->titleIn_, clone);
  v6->maxTitleIdExcl_ = maxTitleIdExcl;

  return v6;
}

- (id)categoryIdToTitleWithInt:(int)int
{
  if (int < 1 || self->maxTitleIdExcl_ <= int)
  {
    return 0;
  }

  titleIn = self->titleIn_;
  if (!titleIn)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneStoreIndexInput *)titleIn seekWithLong:4 * int + 4];
  readInt = [(OrgApacheLuceneStoreDataInput *)self->titleIn_ readInt];
  if (readInt <= 0)
  {
    v8 = new_JavaLangIllegalStateException_init();
    objc_exception_throw(v8);
  }

  [(OrgApacheLuceneStoreIndexInput *)self->titleIn_ seekWithLong:readInt];
  v6 = self->titleIn_;

  return [(OrgApacheLuceneStoreDataInput *)v6 readString];
}

- (void)close
{
  titleIn = self->titleIn_;
  if (!titleIn)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneStoreIndexInput *)titleIn close];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ComAppleContextkitCategoriesCatIdTitleMap;
  [(ComAppleContextkitCategoriesCatIdTitleMap *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  clone = [(ComAppleContextkitCategoriesCatIdTitleMap *)self clone];

  return clone;
}

@end