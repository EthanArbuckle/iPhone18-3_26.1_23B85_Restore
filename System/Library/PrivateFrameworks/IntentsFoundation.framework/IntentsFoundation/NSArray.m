@interface NSArray
@end

@implementation NSArray

void __98__NSArray_IntentsFoundation__if_enumerateAsynchronouslyInSequenceOnQueue_block_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) nextObject];
  v5 = *(a1 + 40);
  if (v4)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __98__NSArray_IntentsFoundation__if_enumerateAsynchronouslyInSequenceOnQueue_block_completionHandler___block_invoke_3;
    block[3] = &unk_2797E9A60;
    v6 = &v17 + 1;
    v7 = *(a1 + 56);
    v16 = v4;
    v8 = *(a1 + 72);
    v19 = a2;
    v20 = v8;
    v9 = *(a1 + 40);
    *&v10 = *(a1 + 48);
    *(&v10 + 1) = *(a1 + 64);
    *&v11 = v9;
    *(&v11 + 1) = v7;
    v17 = v11;
    v18 = v10;
    dispatch_async(v5, block);
  }

  else
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __98__NSArray_IntentsFoundation__if_enumerateAsynchronouslyInSequenceOnQueue_block_completionHandler___block_invoke_2;
    v21[3] = &unk_2797E99E8;
    v6 = v22;
    v12 = *(a1 + 48);
    v13 = *(a1 + 64);
    v14 = *(a1 + 72);
    v22[0] = v12;
    v22[1] = v13;
    v22[2] = a2;
    v22[3] = v14;
    dispatch_async(v5, v21);
  }
}

void __98__NSArray_IntentsFoundation__if_enumerateAsynchronouslyInSequenceOnQueue_block_completionHandler___block_invoke_2(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    (*(v2 + 16))(v2, a1[6], 0);
  }

  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  v5 = a1[7];

  free(v5);
}

void __98__NSArray_IntentsFoundation__if_enumerateAsynchronouslyInSequenceOnQueue_block_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __98__NSArray_IntentsFoundation__if_enumerateAsynchronouslyInSequenceOnQueue_block_completionHandler___block_invoke_4;
  v7[3] = &unk_2797E9A38;
  v3 = *(a1 + 72);
  v11 = *(a1 + 80);
  v4 = *(a1 + 48);
  v8 = *(a1 + 40);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v12 = *(a1 + 72);
  v9 = v5;
  v10 = v6;
  (*(v4 + 16))(v4, v2, v3, v7, *(a1 + 80));
}

void __98__NSArray_IntentsFoundation__if_enumerateAsynchronouslyInSequenceOnQueue_block_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 || **(a1 + 56) == 1)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __98__NSArray_IntentsFoundation__if_enumerateAsynchronouslyInSequenceOnQueue_block_completionHandler___block_invoke_5;
    block[3] = &unk_2797E9A10;
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 64);
    v13 = v5;
    v15 = v6;
    v7 = v3;
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    v12 = v7;
    v14 = v8;
    v16 = v9;
    dispatch_async(v4, block);
  }

  else
  {
    v10 = *(a1 + 64);
    (*(*(*(*(a1 + 48) + 8) + 40) + 16))();
  }
}

void __98__NSArray_IntentsFoundation__if_enumerateAsynchronouslyInSequenceOnQueue_block_completionHandler___block_invoke_5(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    (*(v2 + 16))(v2, a1[7] + 1, a1[4]);
  }

  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  v5 = a1[8];

  free(v5);
}

void __88__NSArray_IntentsFoundation__if_enumerateAsynchronouslyOnQueue_block_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    [*(a1 + 32) lock];
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    [*(a1 + 32) unlock];
  }

  dispatch_group_leave(*(a1 + 40));
  *(*(*(a1 + 56) + 8) + 24) = 1;
}

BOOL __64__NSArray_IntentsFoundation__if_firstObjectWithIntValue_forKey___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 valueForKeyPath:*(a1 + 32)];
  v4 = [v3 intValue] == *(a1 + 40);

  return v4;
}

BOOL __65__NSArray_IntentsFoundation__if_firstObjectWithBoolValue_forKey___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 valueForKeyPath:*(a1 + 32)];
  v4 = *(a1 + 40) == [v3 BOOLValue];

  return v4;
}

uint64_t __61__NSArray_IntentsFoundation__if_firstObjectWithValue_forKey___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 valueForKeyPath:*(a1 + 32)];
  v4 = [v3 isEqual:*(a1 + 40)];

  return v4;
}

BOOL __60__NSArray_IntentsFoundation__if_objectsWithIntValue_forKey___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 valueForKeyPath:*(a1 + 32)];
  v4 = [v3 intValue] == *(a1 + 40);

  return v4;
}

BOOL __61__NSArray_IntentsFoundation__if_objectsWithBoolValue_forKey___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 valueForKeyPath:*(a1 + 32)];
  v4 = *(a1 + 40) == [v3 BOOLValue];

  return v4;
}

uint64_t __57__NSArray_IntentsFoundation__if_objectsWithValue_forKey___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 valueForKeyPath:*(a1 + 32)];
  v4 = [v3 isEqual:*(a1 + 40)];

  return v4;
}

id __75__NSArray_IntentsFoundation__if_escapedComponentsJoinedByString_forLocale___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
      if ([v3 rangeOfString:*(a1 + 32)] == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_8;
      }

      v5 = [*(a1 + 40) quotationBeginDelimiter];
      v6 = [v5 stringByAppendingString:v3];

      v7 = [*(a1 + 40) quotationEndDelimiter];
      v4 = [v6 stringByAppendingString:v7];
    }

    else
    {
      v4 = 0;
      v7 = v3;
    }
  }

  else
  {
    v7 = 0;
    v4 = 0;
  }

LABEL_8:

  return v4;
}

id __49__NSArray_IntentsFoundation__if_mapConcurrently___block_invoke(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 16))();
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = [MEMORY[0x277CBEB68] null];
  }

  v4 = v3;

  return v4;
}

id __37__NSArray_IntentsFoundation__if_map___block_invoke(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 16))();
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = [MEMORY[0x277CBEB68] null];
  }

  v4 = v3;

  return v4;
}

@end