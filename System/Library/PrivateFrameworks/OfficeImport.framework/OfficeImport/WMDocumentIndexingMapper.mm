@interface WMDocumentIndexingMapper
- (void)_indexBlock:(id)block intoString:(id)string;
- (void)_indexTable:(id)table intoString:(id)string;
- (void)_indexText:(id)text intoString:(id)string;
- (void)mapWithState:(id)state;
@end

@implementation WMDocumentIndexingMapper

- (void)_indexBlock:(id)block intoString:(id)string
{
  v30 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  runs = [block runs];
  array = [MEMORY[0x277CBEB18] array];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = runs;
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v6)
  {
    v7 = 0;
    v8 = *v26;
    do
    {
      v9 = 0;
      do
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v25 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          string = v10;
          fieldMarkerType = [string fieldMarkerType];
          if ((fieldMarkerType - 20) < 2)
          {

            goto LABEL_14;
          }

          if (fieldMarkerType == 19)
          {
            v7 = 1;
            goto LABEL_26;
          }
        }

        if (v7)
        {
          v7 = 1;
          goto LABEL_27;
        }

LABEL_14:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          string = [v10 string];
          if (string)
          {
            [array addObject:string];
          }

          goto LABEL_25;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          string = [v10 drawable];
          clientData = [string clientData];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            clientData2 = [string clientData];
            textBox = [clientData2 textBox];
            v17 = textBox;
            if (textBox)
            {
              text = [textBox text];
              [(WMDocumentIndexingMapper *)self _indexText:text intoString:stringCopy];
            }

LABEL_24:
          }

LABEL_25:
          v7 = 0;
LABEL_26:

          goto LABEL_27;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          string = v10;
          clientData2 = [string text];
          [(WMDocumentIndexingMapper *)self _indexText:clientData2 intoString:stringCopy];
          goto LABEL_24;
        }

        v7 = 0;
LABEL_27:
        ++v9;
      }

      while (v6 != v9);
      v19 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
      v6 = v19;
    }

    while (v19);
  }

  if ([array count])
  {
    v20 = [array componentsJoinedByString:&stru_286EE1130];
    [stringCopy appendString:v20];

    [stringCopy appendString:@"\n"];
  }
}

- (void)_indexTable:(id)table intoString:(id)string
{
  tableCopy = table;
  stringCopy = string;
  for (i = 0; [tableCopy rowCount] > i; ++i)
  {
    v8 = [tableCopy rowAt:i];
    for (j = 0; [v8 cellCount] > j; ++j)
    {
      v10 = [v8 cellAt:j];
      text = [v10 text];
      [(WMDocumentIndexingMapper *)self _indexText:text intoString:stringCopy];
    }
  }
}

- (void)_indexText:(id)text intoString:(id)string
{
  textCopy = text;
  stringCopy = string;
  for (i = 0; [textCopy blockCount] > i; ++i)
  {
    v8 = [textCopy blockAt:i];
    if ([v8 blockType])
    {
      if ([v8 blockType] == 1)
      {
        [(WMDocumentIndexingMapper *)self _indexTable:v8 intoString:stringCopy];
      }
    }

    else
    {
      [(WMDocumentIndexingMapper *)self _indexBlock:v8 intoString:stringCopy];
    }
  }
}

- (void)mapWithState:(id)state
{
  stateCopy = state;
  string = [MEMORY[0x277CCAB68] string];
  document = [(CMMapper *)self document];
  for (i = 0; [document sectionCount] > i; ++i)
  {
    v8 = [document sectionAt:i];
    firstPageHeader = [v8 firstPageHeader];
    [(WMDocumentIndexingMapper *)self _indexText:firstPageHeader intoString:string];

    oddPageHeader = [v8 oddPageHeader];
    [(WMDocumentIndexingMapper *)self _indexText:oddPageHeader intoString:string];

    evenPageHeader = [v8 evenPageHeader];
    [(WMDocumentIndexingMapper *)self _indexText:evenPageHeader intoString:string];

    text = [v8 text];
    [(WMDocumentIndexingMapper *)self _indexText:text intoString:string];

    firstPageFooter = [v8 firstPageFooter];
    [(WMDocumentIndexingMapper *)self _indexText:firstPageFooter intoString:string];

    oddPageFooter = [v8 oddPageFooter];
    [(WMDocumentIndexingMapper *)self _indexText:oddPageFooter intoString:string];

    evenPageFooter = [v8 evenPageFooter];
    [(WMDocumentIndexingMapper *)self _indexText:evenPageFooter intoString:string];
  }

  textContent = [stateCopy textContent];
  [textContent appendString:string];

  v17.receiver = self;
  v17.super_class = WMDocumentIndexingMapper;
  [(CMIndexingMapper *)&v17 mapWithState:stateCopy];
}

@end