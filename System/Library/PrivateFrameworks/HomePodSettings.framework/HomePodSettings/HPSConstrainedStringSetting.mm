@interface HPSConstrainedStringSetting
- (HPSConstrainedStringSetting)initWithCoder:(id)a3;
- (HPSConstrainedStringSetting)initWithKeyPath:(id)a3 stringValue:(id)a4 items:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HPSConstrainedStringSetting

- (HPSConstrainedStringSetting)initWithKeyPath:(id)a3 stringValue:(id)a4 items:(id)a5
{
  v8 = a5;
  v9 = [(HPSStringSetting *)self initWithKeyPath:a3 stringValue:a4];
  if (v9)
  {
    v10 = [v8 copy];
    items = v9->_items;
    v9->_items = v10;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = HPSConstrainedStringSetting;
  [(HPSSetting *)&v6 encodeWithCoder:v4];
  v5 = [(HPSConstrainedStringSetting *)self items];
  if (v5)
  {
    [v4 encodeObject:v5 forKey:@"setting.items"];
  }
}

- (HPSConstrainedStringSetting)initWithCoder:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v24.receiver = self;
  v24.super_class = HPSConstrainedStringSetting;
  v5 = [(HPSSetting *)&v24 initWithCoder:v4];
  if (!v5 || ![v4 containsValueForKey:@"setting.items"])
  {
LABEL_13:
    v11 = v5;
    goto LABEL_14;
  }

  v6 = objc_opt_class();
  v7 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), v6, 0}];
  v8 = [v4 decodeObjectOfClasses:v7 forKey:@"setting.items"];
  items = v5->_items;
  v5->_items = v8;

  v10 = v5->_items;
  objc_opt_class();
  v11 = 0;
  if (objc_opt_isKindOfClass())
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v12 = v5->_items;
    v13 = [(NSArray *)v12 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v21;
      while (2)
      {
        v16 = 0;
        do
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v20 + 1) + 8 * v16);
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            v11 = 0;
            goto LABEL_14;
          }

          ++v16;
        }

        while (v14 != v16);
        v14 = [(NSArray *)v12 countByEnumeratingWithState:&v20 objects:v25 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_13;
  }

LABEL_14:

  v18 = *MEMORY[0x277D85DE8];
  return v11;
}

@end