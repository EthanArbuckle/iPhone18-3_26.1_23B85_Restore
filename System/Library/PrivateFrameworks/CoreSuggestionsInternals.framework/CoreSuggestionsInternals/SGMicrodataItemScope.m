@interface SGMicrodataItemScope
- (BOOL)isReferencedBy:(id)a3;
- (SGMicrodataItemScope)init;
@end

@implementation SGMicrodataItemScope

- (BOOL)isReferencedBy:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [(SGMicrodataItemScope *)v4 itemProps];
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v15 + 1) + 8 * i) itemValue];
          if (v11 && [(SGMicrodataItemScope *)self isReferencedBy:v11])
          {

            v12 = 1;
            goto LABEL_14;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v12 = 0;
LABEL_14:
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (SGMicrodataItemScope)init
{
  v6.receiver = self;
  v6.super_class = SGMicrodataItemScope;
  v2 = [(SGMicrodataItemScope *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    itemProps = v2->_itemProps;
    v2->_itemProps = v3;
  }

  return v2;
}

@end