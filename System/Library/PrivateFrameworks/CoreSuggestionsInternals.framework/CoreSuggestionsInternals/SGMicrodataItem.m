@interface SGMicrodataItem
- (SGMicrodataItem)initWithItemType:(id)a3 itemRef:(id)a4;
- (void)resolveItemRefsWithDocument:(id)a3;
@end

@implementation SGMicrodataItem

- (SGMicrodataItem)initWithItemType:(id)a3 itemRef:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = SGMicrodataItem;
  v9 = [(SGMicrodataItemScope *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_itemType, a3);
    v11 = [v8 mutableCopy];
    itemRef = v10->_itemRef;
    v10->_itemRef = v11;
  }

  return v10;
}

- (void)resolveItemRefsWithDocument:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(NSMutableArray *)self->_itemRef count])
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v5 = self->_itemRef;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v23;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v23 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v22 + 1) + 8 * i);
          v11 = [v4 htmlIds];
          v12 = [v11 objectForKeyedSubscript:v10];

          if (v12)
          {
            if (![(SGMicrodataItemScope *)self isReferencedBy:v12])
            {
              itemProps = self->super._itemProps;
              v14 = [v12 itemProps];
              [(NSMutableArray *)itemProps addObjectsFromArray:v14];

              v15 = [(SGMicrodataItemScope *)self itemProps];
              v16 = [v15 count];

              if (v16 >= 0x3E8)
              {

                goto LABEL_14;
              }
            }
          }
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:

    v17 = [(SGMicrodataItemScope *)self itemProps];
    v18 = [v17 count];

    if (v18 >= 0x3E9)
    {
      v19 = [(SGMicrodataItemScope *)self itemProps];
      v20 = [v19 count] - 1000;

      [(NSMutableArray *)self->super._itemProps removeObjectsInRange:1000, v20];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

@end