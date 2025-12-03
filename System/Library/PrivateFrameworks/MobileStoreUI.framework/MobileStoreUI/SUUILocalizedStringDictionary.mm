@interface SUUILocalizedStringDictionary
- (SUUILocalizedStringDictionary)initWithLocaleName:(id)name bundles:(id)bundles;
- (id)_stringTableForBundle:(id)bundle tableName:(id)name;
- (id)localizedStringForKey:(id)key inTable:(id)table;
@end

@implementation SUUILocalizedStringDictionary

- (SUUILocalizedStringDictionary)initWithLocaleName:(id)name bundles:(id)bundles
{
  nameCopy = name;
  bundlesCopy = bundles;
  v16.receiver = self;
  v16.super_class = SUUILocalizedStringDictionary;
  v8 = [(SUUILocalizedStringDictionary *)&v16 init];
  if (v8)
  {
    v9 = [bundlesCopy copy];
    bundles = v8->_bundles;
    v8->_bundles = v9;

    v11 = [nameCopy copy];
    localeName = v8->_localeName;
    v8->_localeName = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    stringTables = v8->_stringTables;
    v8->_stringTables = v13;
  }

  return v8;
}

- (id)localizedStringForKey:(id)key inTable:(id)table
{
  v35 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  tableCopy = table;
  if (tableCopy)
  {
    v8 = tableCopy;
  }

  else
  {
    v8 = @"Localizable";
  }

  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v9 = self->_bundles;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v30;
LABEL_6:
    v13 = 0;
    while (1)
    {
      if (*v30 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = [(SUUILocalizedStringDictionary *)self _stringTableForBundle:*(*(&v29 + 1) + 8 * v13) tableName:v8];
      v15 = [v14 localizedStringForKey:keyCopy];

      if (v15)
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
        if (v11)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = self->_bundles;
    v16 = [(NSArray *)v9 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v26;
LABEL_14:
      v19 = 0;
      while (1)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(v9);
        }

        v20 = [*(*(&v25 + 1) + 8 * v19) localizedStringForKey:keyCopy value:&stru_286AECDE0 table:{v8, v25}];
        v15 = v20;
        if (v20 && v20 != keyCopy)
        {
          break;
        }

        if (v17 == ++v19)
        {
          v17 = [(NSArray *)v9 countByEnumeratingWithState:&v25 objects:v33 count:16];
          if (v17)
          {
            goto LABEL_14;
          }

          goto LABEL_24;
        }
      }
    }

    else
    {
LABEL_24:
      v15 = 0;
    }
  }

  if (v15)
  {
    v22 = v15;
  }

  else
  {
    v22 = keyCopy;
  }

  v23 = v22;

  return v22;
}

- (id)_stringTableForBundle:(id)bundle tableName:(id)name
{
  v26 = *MEMORY[0x277D85DE8];
  bundleCopy = bundle;
  nameCopy = name;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  selfCopy = self;
  v8 = self->_stringTables;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v22 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v21 + 1) + 8 * v12);
      bundle = [v13 bundle];
      v15 = bundle;
      if (bundle == bundleCopy)
      {
        tableName = [v13 tableName];
        v17 = [tableName isEqualToString:nameCopy];

        if (v17)
        {
          v18 = v13;

          if (v18)
          {
            goto LABEL_14;
          }

          goto LABEL_13;
        }
      }

      else
      {
      }

      if (v10 == ++v12)
      {
        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

LABEL_13:
  v18 = [[SUUILocalizedStringTable alloc] initWithBundle:bundleCopy localeName:selfCopy->_localeName tableName:nameCopy];
  [(NSMutableArray *)selfCopy->_stringTables addObject:v18];
LABEL_14:

  return v18;
}

@end