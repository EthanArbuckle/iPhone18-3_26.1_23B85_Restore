@interface PMPresentationIndexingMapper
- (void)_indexDrawable:(id)drawable intoString:(id)string;
- (void)_indexSlide:(id)slide intoString:(id)string;
- (void)_indexTable:(id)table intoString:(id)string;
- (void)_indexTextBody:(id)body intoString:(id)string;
- (void)mapElement:(id)element atIndex:(unint64_t)index withState:(id)state isLastElement:(BOOL)lastElement;
- (void)mapWithState:(id)state;
@end

@implementation PMPresentationIndexingMapper

- (void)mapWithState:(id)state
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PMPresentationIndexingMapper.mm" lineNumber:23 description:@"PowerPoint should go through the startMapping family of API instead"];
}

- (void)_indexTextBody:(id)body intoString:(id)string
{
  stringCopy = string;
  plainText = [body plainText];
  if ([plainText length])
  {
    [stringCopy appendString:plainText];
    [stringCopy appendString:@"\n"];
  }
}

- (void)_indexTable:(id)table intoString:(id)string
{
  tableCopy = table;
  stringCopy = string;
  for (i = 0; [tableCopy rowCount] > i; ++i)
  {
    v8 = [tableCopy rowAtIndex:i];
    for (j = 0; [v8 cellCount] > j; ++j)
    {
      v10 = [v8 cellAtIndex:j];
      textBody = [v10 textBody];
      [(PMPresentationIndexingMapper *)self _indexTextBody:textBody intoString:stringCopy];
    }
  }
}

- (void)_indexDrawable:(id)drawable intoString:(id)string
{
  drawableCopy = drawable;
  stringCopy = string;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    for (i = 0; [drawableCopy childCount] > i; ++i)
    {
      v8 = [drawableCopy childAtIndex:i];
      [(PMPresentationIndexingMapper *)self _indexDrawable:v8 intoString:stringCopy];
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      textBody = [drawableCopy textBody];
      [(PMPresentationIndexingMapper *)self _indexTextBody:textBody intoString:stringCopy];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(PMPresentationIndexingMapper *)self _indexTable:drawableCopy intoString:stringCopy];
      }
    }
  }
}

- (void)_indexSlide:(id)slide intoString:(id)string
{
  v16 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  [slide drawables];
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

        [(PMPresentationIndexingMapper *)self _indexDrawable:*(*(&v11 + 1) + 8 * v10++) intoString:stringCopy, v11];
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)mapElement:(id)element atIndex:(unint64_t)index withState:(id)state isLastElement:(BOOL)lastElement
{
  elementCopy = element;
  stateCopy = state;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = elementCopy;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ([v9 isHidden] & 1) == 0)
    {
      string = [MEMORY[0x277CCAB68] string];
      [(PMPresentationIndexingMapper *)self _indexSlide:v9 intoString:string];
      textContent = [stateCopy textContent];
      [textContent appendString:string];
    }
  }
}

@end