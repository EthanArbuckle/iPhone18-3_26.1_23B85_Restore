@interface OrgApacheLuceneIndexLeafReaderContext_WeakSingletonList
- (BOOL)containsWithId:(id)id;
- (OrgApacheLuceneIndexLeafReaderContext_WeakSingletonList)initWithId:(id)id;
- (id)getWithInt:(int)int;
- (void)__javaClone;
@end

@implementation OrgApacheLuceneIndexLeafReaderContext_WeakSingletonList

- (OrgApacheLuceneIndexLeafReaderContext_WeakSingletonList)initWithId:(id)id
{
  JavaUtilAbstractList_init(self, a2);
  objc_storeWeak(&self->element_, id);
  return self;
}

- (BOOL)containsWithId:(id)id
{
  if (!objc_loadWeak(&self->element_))
  {
    return id == 0;
  }

  Weak = objc_loadWeak(&self->element_);

  return [Weak isEqual:id];
}

- (id)getWithInt:(int)int
{
  if (int)
  {
    v6 = new_JavaLangIndexOutOfBoundsException_init();
    objc_exception_throw(v6);
  }

  p_element = &self->element_;

  return objc_loadWeak(p_element);
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexLeafReaderContext_WeakSingletonList;
  [(OrgApacheLuceneIndexLeafReaderContext_WeakSingletonList *)&v3 __javaClone];
}

@end