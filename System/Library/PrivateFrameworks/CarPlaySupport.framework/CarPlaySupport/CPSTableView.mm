@interface CPSTableView
- (UIView)contentView;
@end

@implementation CPSTableView

- (UIView)contentView
{
  v17 = *MEMORY[0x277D85DE8];
  v14 = self;
  v13 = a2;
  memset(__b, 0, sizeof(__b));
  obj = [(CPSTableView *)v14 subviews];
  v9 = [obj countByEnumeratingWithState:__b objects:v16 count:16];
  if (v9)
  {
    v5 = *__b[2];
    v6 = 0;
    v7 = v9;
    while (1)
    {
      v4 = v6;
      if (*__b[2] != v5)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(__b[1] + 8 * v6);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      ++v6;
      if (v4 + 1 >= v7)
      {
        v6 = 0;
        v7 = [obj countByEnumeratingWithState:__b objects:v16 count:16];
        if (!v7)
        {
          goto LABEL_9;
        }
      }
    }

    v15 = MEMORY[0x277D82BE0](v12);
    v10 = 1;
  }

  else
  {
LABEL_9:
    v10 = 0;
  }

  MEMORY[0x277D82BD8](obj);
  if (!v10)
  {
    v15 = MEMORY[0x277D82BE0](v14);
  }

  v2 = v15;

  return v2;
}

@end