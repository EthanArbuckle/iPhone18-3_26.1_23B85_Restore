@interface PMPresentationIndexingMapper
- (void)_indexDrawable:(id)a3 intoString:(id)a4;
- (void)_indexSlide:(id)a3 intoString:(id)a4;
- (void)_indexTable:(id)a3 intoString:(id)a4;
- (void)_indexTextBody:(id)a3 intoString:(id)a4;
- (void)mapElement:(id)a3 atIndex:(unint64_t)a4 withState:(id)a5 isLastElement:(BOOL)a6;
- (void)mapWithState:(id)a3;
@end

@implementation PMPresentationIndexingMapper

- (void)mapWithState:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"PMPresentationIndexingMapper.mm" lineNumber:23 description:@"PowerPoint should go through the startMapping family of API instead"];
}

- (void)_indexTextBody:(id)a3 intoString:(id)a4
{
  v6 = a4;
  v5 = [a3 plainText];
  if ([v5 length])
  {
    [v6 appendString:v5];
    [v6 appendString:@"\n"];
  }
}

- (void)_indexTable:(id)a3 intoString:(id)a4
{
  v12 = a3;
  v6 = a4;
  for (i = 0; [v12 rowCount] > i; ++i)
  {
    v8 = [v12 rowAtIndex:i];
    for (j = 0; [v8 cellCount] > j; ++j)
    {
      v10 = [v8 cellAtIndex:j];
      v11 = [v10 textBody];
      [(PMPresentationIndexingMapper *)self _indexTextBody:v11 intoString:v6];
    }
  }
}

- (void)_indexDrawable:(id)a3 intoString:(id)a4
{
  v10 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    for (i = 0; [v10 childCount] > i; ++i)
    {
      v8 = [v10 childAtIndex:i];
      [(PMPresentationIndexingMapper *)self _indexDrawable:v8 intoString:v6];
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v10 textBody];
      [(PMPresentationIndexingMapper *)self _indexTextBody:v9 intoString:v6];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(PMPresentationIndexingMapper *)self _indexTable:v10 intoString:v6];
      }
    }
  }
}

- (void)_indexSlide:(id)a3 intoString:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a4;
  [a3 drawables];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v7 = v12 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v8)
  {
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [(PMPresentationIndexingMapper *)self _indexDrawable:*(*(&v11 + 1) + 8 * v10++) intoString:v6, v11];
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)mapElement:(id)a3 atIndex:(unint64_t)a4 withState:(id)a5 isLastElement:(BOOL)a6
{
  v12 = a3;
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v12;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ([v9 isHidden] & 1) == 0)
    {
      v10 = [MEMORY[0x277CCAB68] string];
      [(PMPresentationIndexingMapper *)self _indexSlide:v9 intoString:v10];
      v11 = [v8 textContent];
      [v11 appendString:v10];
    }
  }
}

@end