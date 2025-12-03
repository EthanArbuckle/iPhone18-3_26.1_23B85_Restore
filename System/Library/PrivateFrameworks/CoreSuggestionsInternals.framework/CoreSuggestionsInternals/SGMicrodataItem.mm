@interface SGMicrodataItem
- (SGMicrodataItem)initWithItemType:(id)type itemRef:(id)ref;
- (void)resolveItemRefsWithDocument:(id)document;
@end

@implementation SGMicrodataItem

- (SGMicrodataItem)initWithItemType:(id)type itemRef:(id)ref
{
  typeCopy = type;
  refCopy = ref;
  v14.receiver = self;
  v14.super_class = SGMicrodataItem;
  v9 = [(SGMicrodataItemScope *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_itemType, type);
    v11 = [refCopy mutableCopy];
    itemRef = v10->_itemRef;
    v10->_itemRef = v11;
  }

  return v10;
}

- (void)resolveItemRefsWithDocument:(id)document
{
  v27 = *MEMORY[0x277D85DE8];
  documentCopy = document;
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
          htmlIds = [documentCopy htmlIds];
          v12 = [htmlIds objectForKeyedSubscript:v10];

          if (v12)
          {
            if (![(SGMicrodataItemScope *)self isReferencedBy:v12])
            {
              itemProps = self->super._itemProps;
              itemProps = [v12 itemProps];
              [(NSMutableArray *)itemProps addObjectsFromArray:itemProps];

              itemProps2 = [(SGMicrodataItemScope *)self itemProps];
              v16 = [itemProps2 count];

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

    itemProps3 = [(SGMicrodataItemScope *)self itemProps];
    v18 = [itemProps3 count];

    if (v18 >= 0x3E9)
    {
      itemProps4 = [(SGMicrodataItemScope *)self itemProps];
      v20 = [itemProps4 count] - 1000;

      [(NSMutableArray *)self->super._itemProps removeObjectsInRange:1000, v20];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

@end