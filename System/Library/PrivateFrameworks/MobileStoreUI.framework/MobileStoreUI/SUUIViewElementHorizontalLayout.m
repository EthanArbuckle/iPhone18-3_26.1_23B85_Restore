@interface SUUIViewElementHorizontalLayout
- (id)layoutViewElements:(id)a3 usingSizingBlock:(id)a4;
@end

@implementation SUUIViewElementHorizontalLayout

- (id)layoutViewElements:(id)a3 usingSizingBlock:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v23 = [MEMORY[0x277CBEB18] array];
  layoutWidth = self->_layoutWidth;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    v22 = v10;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        v16 = v7[2](v7, v15);
        if ([v15 elementType] == 127)
        {
          [v9 addObject:v15];
        }

        else if (v16 > 0.00000011920929)
        {
          if (v16 <= layoutWidth || (maximumLines = self->_maximumLines, maximumLines >= 1) && maximumLines >= [v23 count])
          {
            layoutWidth = layoutWidth - (v16 + self->_elementSpacing);
            [v9 addObject:{v15, v22}];
          }

          else if ([v9 count])
          {
            [v23 addObject:v9];
            v18 = objc_alloc_init(MEMORY[0x277CBEB18]);

            layoutWidth = self->_layoutWidth - v16 - self->_elementSpacing;
            [v18 addObject:v15];
            if (layoutWidth >= 0.00000011920929)
            {
              v9 = v18;
            }

            else
            {
              layoutWidth = self->_layoutWidth;
              [v23 addObject:v18];
              v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
            }

            v10 = v22;
          }

          else
          {
            [v9 addObject:v15];
            [v23 addObject:v9];
            v19 = objc_alloc_init(MEMORY[0x277CBEB18]);

            v9 = v19;
          }

          if (self->_maximumElementsPerLine >= 1 && [v9 count] == self->_maximumElementsPerLine)
          {
            layoutWidth = self->_layoutWidth;
            [v23 addObject:v9];
            v20 = objc_alloc_init(MEMORY[0x277CBEB18]);

            v9 = v20;
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v12);
  }

  if ([v9 count])
  {
    [v23 addObject:v9];
  }

  return v23;
}

@end