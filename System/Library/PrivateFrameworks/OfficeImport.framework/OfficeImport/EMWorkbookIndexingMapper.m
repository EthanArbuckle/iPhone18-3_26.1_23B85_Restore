@interface EMWorkbookIndexingMapper
- (void)finishMappingWithState:(id)a3;
- (void)mapElement:(id)a3 atIndex:(unint64_t)a4 withState:(id)a5 isLastElement:(BOOL)a6;
@end

@implementation EMWorkbookIndexingMapper

- (void)finishMappingWithState:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = EMWorkbookIndexingMapper;
  [(CMIndexingMapper *)&v14 finishMappingWithState:v4];
  v5 = [(CMMapper *)self document];
  v6 = [v5 resources];
  v7 = [v6 strings];

  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  for (i = 0; i < [v7 count]; ++i)
  {
    v10 = [v7 objectAtIndex:i];
    v11 = [v10 string];
    [v8 addObject:v11];
  }

  v12 = [v4 textContent];
  v13 = [v8 componentsJoinedByString:@"\n"];
  [v12 appendString:v13];
}

- (void)mapElement:(id)a3 atIndex:(unint64_t)a4 withState:(id)a5 isLastElement:(BOOL)a6
{
  v14 = a3;
  v7 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v14;
    if (([v8 isHidden] & 1) == 0)
    {
      v9 = [v8 name];

      if (v9)
      {
        v10 = [v7 textContent];
        v11 = [v8 name];
        v12 = [v11 string];
        [v10 appendString:v12];

        v13 = [v7 textContent];
        [v13 appendString:@"\n"];
      }
    }
  }
}

@end