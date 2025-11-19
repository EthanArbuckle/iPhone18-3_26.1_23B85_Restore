@interface GDMockInteractionStore
- (GDMockInteractionStore)initWithInteractions:(id)a3;
- (id)queryInteractionsUsingPredicate:(id)a3 sortDescriptors:(id)a4 limit:(unint64_t)a5 offset:(unint64_t)a6 error:(id *)a7;
@end

@implementation GDMockInteractionStore

- (id)queryInteractionsUsingPredicate:(id)a3 sortDescriptors:(id)a4 limit:(unint64_t)a5 offset:(unint64_t)a6 error:(id *)a7
{
  v13 = objc_msgSend_count(self->_interactions, a2, a3, a4, a5, a6, a7);
  v14 = MEMORY[0x1E695E0F0];
  if (a5 && v13 - 1 >= a6)
  {
    v15 = objc_msgSend_count(self->_interactions, v10, v11, v12);
    if (v15 - a6 >= a5)
    {
      objc_msgSend_subarrayWithRange_(self->_interactions, v16, a6, a5);
    }

    else
    {
      objc_msgSend_subarrayWithRange_(self->_interactions, v16, a6, v15 - a6);
    }
    v14 = ;
  }

  return v14;
}

- (GDMockInteractionStore)initWithInteractions:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = GDMockInteractionStore;
  v8 = [(GDMockInteractionStore *)&v12 init];
  if (v8)
  {
    v9 = objc_msgSend_copy(v4, v5, v6, v7);
    interactions = v8->_interactions;
    v8->_interactions = v9;
  }

  return v8;
}

@end