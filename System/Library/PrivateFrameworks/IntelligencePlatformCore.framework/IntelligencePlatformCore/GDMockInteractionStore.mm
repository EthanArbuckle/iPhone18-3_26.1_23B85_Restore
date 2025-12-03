@interface GDMockInteractionStore
- (GDMockInteractionStore)initWithInteractions:(id)interactions;
- (id)queryInteractionsUsingPredicate:(id)predicate sortDescriptors:(id)descriptors limit:(unint64_t)limit offset:(unint64_t)offset error:(id *)error;
@end

@implementation GDMockInteractionStore

- (id)queryInteractionsUsingPredicate:(id)predicate sortDescriptors:(id)descriptors limit:(unint64_t)limit offset:(unint64_t)offset error:(id *)error
{
  v13 = objc_msgSend_count(self->_interactions, a2, predicate, descriptors, limit, offset, error);
  v14 = MEMORY[0x1E695E0F0];
  if (limit && v13 - 1 >= offset)
  {
    v15 = objc_msgSend_count(self->_interactions, v10, v11, v12);
    if (v15 - offset >= limit)
    {
      objc_msgSend_subarrayWithRange_(self->_interactions, v16, offset, limit);
    }

    else
    {
      objc_msgSend_subarrayWithRange_(self->_interactions, v16, offset, v15 - offset);
    }
    v14 = ;
  }

  return v14;
}

- (GDMockInteractionStore)initWithInteractions:(id)interactions
{
  interactionsCopy = interactions;
  v12.receiver = self;
  v12.super_class = GDMockInteractionStore;
  v8 = [(GDMockInteractionStore *)&v12 init];
  if (v8)
  {
    v9 = objc_msgSend_copy(interactionsCopy, v5, v6, v7);
    interactions = v8->_interactions;
    v8->_interactions = v9;
  }

  return v8;
}

@end