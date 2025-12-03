@interface CRKHeaderTable
- (CRKHeaderTable)initWithHeaders:(id)headers keyPaths:(id)paths objects:(id)objects;
- (CRKTable)table;
- (id)crk_JSONRepresentationWithPrettyPrinting:(BOOL)printing sortKeys:(BOOL)keys;
- (id)tableString;
@end

@implementation CRKHeaderTable

- (CRKHeaderTable)initWithHeaders:(id)headers keyPaths:(id)paths objects:(id)objects
{
  headersCopy = headers;
  pathsCopy = paths;
  objectsCopy = objects;
  v19.receiver = self;
  v19.super_class = CRKHeaderTable;
  v11 = [(CRKHeaderTable *)&v19 init];
  if (v11)
  {
    v12 = [headersCopy copy];
    headers = v11->_headers;
    v11->_headers = v12;

    v14 = [pathsCopy copy];
    keyPaths = v11->_keyPaths;
    v11->_keyPaths = v14;

    v16 = [objectsCopy copy];
    objects = v11->_objects;
    v11->_objects = v16;
  }

  return v11;
}

- (id)crk_JSONRepresentationWithPrettyPrinting:(BOOL)printing sortKeys:(BOOL)keys
{
  printingCopy = printing;
  keysCopy = keys;
  v28 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [(CRKHeaderTable *)self objects];
  v6 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        v11 = objc_opt_new();
        keyPaths = [(CRKHeaderTable *)self keyPaths];
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __68__CRKHeaderTable_crk_JSONRepresentationWithPrettyPrinting_sortKeys___block_invoke;
        v19[3] = &unk_278DC1930;
        v20 = v11;
        selfCopy = self;
        v22 = v10;
        v13 = v11;
        [keyPaths enumerateObjectsUsingBlock:v19];

        [v5 addObject:v13];
      }

      v7 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v7);
  }

  v14 = [v5 crk_JSONRepresentationWithPrettyPrinting:printingCopy sortKeys:keysCopy];

  return v14;
}

void __68__CRKHeaderTable_crk_JSONRepresentationWithPrettyPrinting_sortKeys___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = [*(a1 + 48) objectForKeyedSubscript:a2];
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) headers];
  v7 = [v6 objectAtIndexedSubscript:a3];
  [v5 setObject:v8 forKeyedSubscript:v7];
}

- (CRKTable)table
{
  table = self->_table;
  if (!table)
  {
    headers = [(CRKHeaderTable *)self headers];
    keyPaths = [(CRKHeaderTable *)self keyPaths];
    objects = [(CRKHeaderTable *)self objects];
    v7 = [CRKTable tableWithHeaders:headers keyPaths:keyPaths objects:objects];
    v8 = self->_table;
    self->_table = v7;

    table = self->_table;
  }

  return table;
}

- (id)tableString
{
  table = [(CRKHeaderTable *)self table];
  stringValue = [table stringValue];

  return stringValue;
}

@end