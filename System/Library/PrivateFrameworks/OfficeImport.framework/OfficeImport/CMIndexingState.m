@interface CMIndexingState
- (CMIndexingState)init;
- (CSSearchableItemAttributeSet)searchableAttributes;
@end

@implementation CMIndexingState

- (CMIndexingState)init
{
  v10.receiver = self;
  v10.super_class = CMIndexingState;
  v2 = [(CMState *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    metadata = v2->_metadata;
    v2->_metadata = v3;

    v5 = objc_alloc_init(MEMORY[0x277CC34B8]);
    searchableAttributes = v2->_searchableAttributes;
    v2->_searchableAttributes = v5;

    v7 = objc_alloc_init(MEMORY[0x277CCAB68]);
    textContent = v2->_textContent;
    v2->_textContent = v7;
  }

  return v2;
}

- (CSSearchableItemAttributeSet)searchableAttributes
{
  [(CSSearchableItemAttributeSet *)self->_searchableAttributes setTextContent:self->_textContent];
  searchableAttributes = self->_searchableAttributes;

  return searchableAttributes;
}

@end