@interface EDSectionQueryItemHelper
+ (EDSectionQueryItemHelper)sectionQueryItemHelperWithQuery:(id)a3;
+ (unint64_t)_sectionIndexForItem:(id)a3 sectionPredicates:(id)a4 sectionIdentifier:(id *)a5;
- (BOOL)shouldSectionItemsRemainInSection;
- (BOOL)updateSectionForItem:(id)a3;
- (EDSectionQueryItemHelper)initWithQuery:(id)a3 sectionPredicates:(id)a4;
- (id)_createSectionComparator;
- (id)_idForItem:(id)a3;
- (id)comparatorForItemComparator:(id)a3;
- (id)idForItem:(id)a3;
- (id)sectionIdentifierForID:(id)a3;
- (id)sectionIdentifierForItem:(id)a3;
- (id)sectionNumberForID:(id)a3;
- (id)sectionNumbersForIDs:(id)a3;
- (unint64_t)_sectionIndexForItem:(id)a3 sectionIdentifier:(id *)a4;
- (void)removeIDs:(id)a3;
@end

@implementation EDSectionQueryItemHelper

- (EDSectionQueryItemHelper)initWithQuery:(id)a3 sectionPredicates:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 targetClass];
  if (v9 != objc_opt_class())
  {
    v10 = [v7 targetClass];
    if (v10 != objc_opt_class())
    {
      v24 = [MEMORY[0x1E696AAA8] currentHandler];
      [v24 handleFailureInMethod:a2 object:self file:@"EDSectionQueryItemHelper.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"query.targetClass == [EMThread class] || query.targetClass == [EMMessage class]"}];
    }
  }

  v25.receiver = self;
  v25.super_class = EDSectionQueryItemHelper;
  v11 = [(EDSectionQueryItemHelper *)&v25 init];
  if (v11)
  {
    v12 = [v7 copy];
    query = v11->_query;
    v11->_query = v12;

    v14 = [v8 copy];
    sectionPredicates = v11->_sectionPredicates;
    v11->_sectionPredicates = v14;

    if (!v11->_sectionPredicates)
    {
      v22 = 0;
      goto LABEL_9;
    }

    v16 = objc_alloc(MEMORY[0x1E699B7F0]);
    v17 = [MEMORY[0x1E695DF90] dictionary];
    v18 = [v16 initWithObject:v17];
    sectionIndexesByID = v11->_sectionIndexesByID;
    v11->_sectionIndexesByID = v18;

    [(EFOrderedDictionary *)v11->_sectionPredicates enumerateKeysAndObjectsUsingBlock:&__block_literal_global_84];
    v20 = [(EDSectionQueryItemHelper *)v11 _createSectionComparator];
    sectionComparator = v11->_sectionComparator;
    v11->_sectionComparator = v20;
  }

  v22 = v11;
LABEL_9:

  return v22;
}

+ (EDSectionQueryItemHelper)sectionQueryItemHelperWithQuery:(id)a3
{
  v3 = a3;
  v4 = [v3 targetClassOptions];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E699A9F0]];

  if (v5)
  {
    v6 = [objc_alloc(objc_opt_class()) initWithQuery:v3 sectionPredicates:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)shouldSectionItemsRemainInSection
{
  v2 = [(EDSectionQueryItemHelper *)self query];
  v3 = [v2 targetClassOptions];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E699A9F8]];

  if (v4)
  {
    v5 = [v4 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)sectionNumberForID:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v6 = [(EDSectionQueryItemHelper *)self sectionNumbersForIDs:v5];
  v7 = [v6 firstObject];

  if ((*(*MEMORY[0x1E699B748] + 16))())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

- (id)sectionNumbersForIDs:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__40;
  v16 = __Block_byref_object_dispose__40;
  v17 = 0;
  sectionIndexesByID = self->_sectionIndexesByID;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__EDSectionQueryItemHelper_sectionNumbersForIDs___block_invoke;
  v9[3] = &unk_1E8251838;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  [(EFLocked *)sectionIndexesByID performWhileLocked:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __49__EDSectionQueryItemHelper_sectionNumbersForIDs___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__EDSectionQueryItemHelper_sectionNumbersForIDs___block_invoke_2;
  v9[3] = &unk_1E82574F8;
  v10 = v3;
  v5 = v3;
  v6 = [v4 ef_map:v9];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

id __49__EDSectionQueryItemHelper_sectionNumbersForIDs___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:a2];

  return v2;
}

- (void)removeIDs:(id)a3
{
  v4 = a3;
  sectionIndexesByID = self->_sectionIndexesByID;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__EDSectionQueryItemHelper_removeIDs___block_invoke;
  v7[3] = &unk_1E8250D20;
  v8 = v4;
  v6 = v4;
  [(EFLocked *)sectionIndexesByID performWhileLocked:v7];
}

- (id)idForItem:(id)a3
{
  v3 = [(EDSectionQueryItemHelper *)self _idForItem:a3];

  return v3;
}

- (id)_idForItem:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [v3 objectID];
    v6 = [v4 numberWithLongLong:{objc_msgSend(v5, "globalMessageID")}];
  }

  else if (objc_opt_respondsToSelector())
  {
    v6 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v3, "conversationID")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_createSectionComparator
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__EDSectionQueryItemHelper__createSectionComparator__block_invoke;
  v4[3] = &unk_1E8257520;
  objc_copyWeak(&v5, &location);
  v2 = _Block_copy(v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

uint64_t __52__EDSectionQueryItemHelper__createSectionComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained _idForItem:v5];
    v24[0] = v9;
    v10 = [v8 _idForItem:v6];
    v24[1] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
    v12 = [v8 sectionNumbersForIDs:v11];

    v13 = [v12 objectAtIndexedSubscript:0];
    v14 = [v12 objectAtIndexedSubscript:1];
    v15 = *MEMORY[0x1E699B748];
    if ((*(*MEMORY[0x1E699B748] + 16))(*MEMORY[0x1E699B748], v13))
    {
      v16 = [v13 unsignedIntegerValue];
    }

    else
    {
      v16 = *MEMORY[0x1E699A7F8];
    }

    if ((*(v15 + 16))(v15, v14))
    {
      v18 = [v14 unsignedIntegerValue];
    }

    else
    {
      v18 = *MEMORY[0x1E699A7F8];
    }

    if (v16 == v18)
    {
      v17 = 0;
    }

    else
    {
      v19 = *MEMORY[0x1E699A7F8];
      v20 = -1;
      if (v16 < v18)
      {
        v21 = -1;
      }

      else
      {
        v21 = 1;
      }

      if (v18 != v19)
      {
        v20 = v21;
      }

      if (v16 == v19)
      {
        v17 = 1;
      }

      else
      {
        v17 = v20;
      }
    }
  }

  else
  {
    v17 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v17;
}

- (BOOL)updateSectionForItem:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(EDSectionQueryItemHelper *)self idForItem:v4];
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__40;
    v28 = __Block_byref_object_dispose__40;
    v29 = 0;
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = [(EDSectionQueryItemHelper *)self _sectionIndexForItem:v4 sectionIdentifier:0];
    sectionIndexesByID = self->_sectionIndexesByID;
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __49__EDSectionQueryItemHelper_updateSectionForItem___block_invoke;
    v15 = &unk_1E8257548;
    v18 = &v24;
    v7 = v5;
    v16 = v7;
    v17 = self;
    v19 = &v20;
    [(EFLocked *)sectionIndexesByID performWhileLocked:&v12];
    v8 = v25[5];
    if (v8)
    {
      v9 = [v8 unsignedIntegerValue];
    }

    else
    {
      v9 = *MEMORY[0x1E699A7F8];
    }

    v10 = v21[3] != v9;

    _Block_object_dispose(&v20, 8);
    _Block_object_dispose(&v24, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __49__EDSectionQueryItemHelper_updateSectionForItem___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [v11 objectForKeyedSubscript:*(a1 + 32)];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(a1 + 40) shouldSectionItemsRemainInSection];
  v7 = *MEMORY[0x1E699A7F8];
  if (v6)
  {
    if (*(*(*(a1 + 56) + 8) + 24) == v7)
    {
      v8 = *(*(*(a1 + 48) + 8) + 40);
      if (v8)
      {
        *(*(*(a1 + 56) + 8) + 24) = [v8 unsignedIntegerValue];
      }
    }
  }

  v9 = *(*(*(a1 + 56) + 8) + 24);
  if (v9 == v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v9];
  }

  [v11 setObject:v10 forKeyedSubscript:*(a1 + 32)];
  if (v9 != v7)
  {
  }
}

- (unint64_t)_sectionIndexForItem:(id)a3 sectionIdentifier:(id *)a4
{
  v6 = a3;
  v7 = [(EDSectionQueryItemHelper *)self sectionPredicates];
  v8 = [EDSectionQueryItemHelper _sectionIndexForItem:v6 sectionPredicates:v7 sectionIdentifier:a4];

  return v8;
}

+ (unint64_t)_sectionIndexForItem:(id)a3 sectionPredicates:(id)a4 sectionIdentifier:(id *)a5
{
  v7 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__40;
  v23 = __Block_byref_object_dispose__40;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = *MEMORY[0x1E699A7F8];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __85__EDSectionQueryItemHelper__sectionIndexForItem_sectionPredicates_sectionIdentifier___block_invoke;
  v11[3] = &unk_1E82523A0;
  v8 = v7;
  v12 = v8;
  v13 = &v15;
  v14 = &v19;
  [a4 enumerateKeysAndObjectsUsingBlock:v11];
  if (a5)
  {
    *a5 = v20[5];
  }

  v9 = v16[3];

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);

  return v9;
}

void __85__EDSectionQueryItemHelper__sectionIndexForItem_sectionPredicates_sectionIdentifier___block_invoke(void *a1, uint64_t a2, void *a3, void *a4, _BYTE *a5)
{
  v10 = a3;
  if ([a4 evaluateWithObject:a1[4]])
  {
    *(*(a1[5] + 8) + 24) = a2;
    objc_storeStrong((*(a1[6] + 8) + 40), a3);
    *a5 = 1;
  }
}

- (id)sectionIdentifierForItem:(id)a3
{
  v4 = [(EDSectionQueryItemHelper *)self idForItem:a3];
  v5 = [(EDSectionQueryItemHelper *)self sectionIdentifierForID:v4];

  return v5;
}

- (id)sectionIdentifierForID:(id)a3
{
  v4 = [(EDSectionQueryItemHelper *)self sectionNumberForID:a3];
  if (v4)
  {
    v5 = [(EDSectionQueryItemHelper *)self sectionPredicates];
    v6 = [v5 keyAtIndex:{objc_msgSend(v4, "unsignedIntegerValue")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)comparatorForItemComparator:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__EDSectionQueryItemHelper_comparatorForItemComparator___block_invoke;
  v8[3] = &unk_1E8257570;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
  v6 = _Block_copy(v8);

  return v6;
}

uint64_t __56__EDSectionQueryItemHelper_comparatorForItemComparator___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) sectionComparator];
  v8 = (v7)[2](v7, v5, v6);

  if (!v8)
  {
    v8 = (*(*(a1 + 40) + 16))();
  }

  return v8;
}

@end