@interface EMWorkbookIndexingMapper
- (void)finishMappingWithState:(id)state;
- (void)mapElement:(id)element atIndex:(unint64_t)index withState:(id)state isLastElement:(BOOL)lastElement;
@end

@implementation EMWorkbookIndexingMapper

- (void)finishMappingWithState:(id)state
{
  stateCopy = state;
  v14.receiver = self;
  v14.super_class = EMWorkbookIndexingMapper;
  [(CMIndexingMapper *)&v14 finishMappingWithState:stateCopy];
  document = [(CMMapper *)self document];
  resources = [document resources];
  strings = [resources strings];

  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(strings, "count")}];
  for (i = 0; i < [strings count]; ++i)
  {
    v10 = [strings objectAtIndex:i];
    string = [v10 string];
    [v8 addObject:string];
  }

  textContent = [stateCopy textContent];
  v13 = [v8 componentsJoinedByString:@"\n"];
  [textContent appendString:v13];
}

- (void)mapElement:(id)element atIndex:(unint64_t)index withState:(id)state isLastElement:(BOOL)lastElement
{
  elementCopy = element;
  stateCopy = state;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = elementCopy;
    if (([v8 isHidden] & 1) == 0)
    {
      name = [v8 name];

      if (name)
      {
        textContent = [stateCopy textContent];
        name2 = [v8 name];
        string = [name2 string];
        [textContent appendString:string];

        textContent2 = [stateCopy textContent];
        [textContent2 appendString:@"\n"];
      }
    }
  }
}

@end