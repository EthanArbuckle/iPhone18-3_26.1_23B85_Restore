@interface OrgApacheLuceneIndexLeafReaderContext_WeakSingletonList
- (BOOL)containsWithId:(id)a3;
- (OrgApacheLuceneIndexLeafReaderContext_WeakSingletonList)initWithId:(id)a3;
- (id)getWithInt:(int)a3;
- (void)__javaClone;
@end

@implementation OrgApacheLuceneIndexLeafReaderContext_WeakSingletonList

- (OrgApacheLuceneIndexLeafReaderContext_WeakSingletonList)initWithId:(id)a3
{
  JavaUtilAbstractList_init(self, a2);
  objc_storeWeak(&self->element_, a3);
  return self;
}

- (BOOL)containsWithId:(id)a3
{
  if (!objc_loadWeak(&self->element_))
  {
    return a3 == 0;
  }

  Weak = objc_loadWeak(&self->element_);

  return [Weak isEqual:a3];
}

- (id)getWithInt:(int)a3
{
  if (a3)
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