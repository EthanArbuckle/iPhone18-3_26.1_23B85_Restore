@interface IKDOMElement
- (_NSRange)domib_visibleIndexRange;
- (id)ik_templateElementCSSSelectorList;
- (id)ik_templateName;
- (void)domib_setVisibleIndexRange:(_NSRange)range;
@end

@implementation IKDOMElement

- (void)domib_setVisibleIndexRange:(_NSRange)range
{
  rangeCopy = range;
  v4 = [MEMORY[0x277CCAE60] value:&rangeCopy withObjCType:"{_NSRange=QQ}"];
  objc_setAssociatedObject(self, "domib_visibleIndexRange", v4, 0x301);
}

- (_NSRange)domib_visibleIndexRange
{
  v5 = 0;
  v6 = 0;
  v2 = objc_getAssociatedObject(self, "domib_visibleIndexRange");
  [v2 getValue:&v5];

  v3 = v5;
  v4 = v6;
  result.length = v4;
  result.location = v3;
  return result;
}

- (id)ik_templateName
{
  v31 = *MEMORY[0x277D85DE8];
  tagName = [(IKDOMElement *)self tagName];
  if (![tagName isEqualToString:@"document"])
  {
    tagName2 = 0;
    goto LABEL_24;
  }

  v24 = tagName;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [(IKDOMElement *)self childElements];
  v4 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (!v4)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    goto LABEL_23;
  }

  v5 = v4;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = *v27;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v27 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v26 + 1) + 8 * i);
      if (v6 || ([*(*(&v26 + 1) + 8 * i) tagName], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEqualToString:", @"head"), v13, (v14 & 1) == 0))
      {
        if (v8 || ([v12 tagName], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isEqualToString:", @"navigationBar"), v16, (v17 & 1) == 0))
        {
          if (v9 || ([v12 tagName], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "isEqualToString:", @"toolbar"), v18, (v19 & 1) == 0))
          {
            v15 = v12;
            if (v7)
            {
              continue;
            }
          }

          else
          {
            v15 = v7;
            v9 = v12;
          }
        }

        else
        {
          v15 = v7;
          v8 = v12;
        }
      }

      else
      {
        v6 = v12;
        v15 = v7;
      }

      v20 = v12;
      v7 = v15;
    }

    v5 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  }

  while (v5);
LABEL_23:

  tagName2 = [v7 tagName];

  tagName = v24;
LABEL_24:

  v22 = *MEMORY[0x277D85DE8];

  return tagName2;
}

- (id)ik_templateElementCSSSelectorList
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D7B6C0];
  elementName = [(IKDOMElement *)self elementName];
  v5 = [v3 safe_initWithText:elementName];

  v6 = MEMORY[0x277D7B6C8];
  v12[0] = v5;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  elementName2 = [(IKDOMElement *)self elementName];
  v9 = [v6 safe_initWithSelectors:v7 text:elementName2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end