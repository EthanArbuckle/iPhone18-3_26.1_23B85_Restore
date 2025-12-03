@interface CAFASCTreeNode
+ (id)nodeType:(unsigned __int8)type withName:(id)name;
+ (id)nodeType:(unsigned __int8)type withType:(id)withType;
- (id)_childNodeMatchingType:(id)type;
- (id)description;
- (id)treeLogLinesIndent:(unint64_t)indent;
@end

@implementation CAFASCTreeNode

+ (id)nodeType:(unsigned __int8)type withType:(id)withType
{
  typeCopy = type;
  withTypeCopy = withType;
  v6 = objc_opt_new();
  [v6 setType:withTypeCopy];
  if (typeCopy == 2)
  {
    v8 = +[CAFCharacteristicTypes characteristicNameByType];
    v9 = [v8 objectForKeyedSubscript:withTypeCopy];
    if (!v9)
    {
      v13 = +[CAFControlTypes controlNameByType];
      v14 = [v13 objectForKeyedSubscript:withTypeCopy];
      [v6 setName:v14];

      goto LABEL_9;
    }
  }

  else
  {
    if (typeCopy == 1)
    {
      v7 = +[CAFServiceTypes serviceNameByType];
    }

    else
    {
      if (typeCopy)
      {
        goto LABEL_10;
      }

      v7 = +[CAFAccessoryTypes accessoryNameByType];
    }

    v8 = v7;
    v9 = [v7 objectForKeyedSubscript:withTypeCopy];
  }

  [v6 setName:v9];
LABEL_9:

LABEL_10:
  name = [v6 name];
  if (name)
  {
  }

  else if ([withTypeCopy isEqualToString:@"*"])
  {
    [v6 setName:withTypeCopy];
  }

  name2 = [v6 name];

  if (name2)
  {
    name2 = v6;
  }

  return name2;
}

+ (id)nodeType:(unsigned __int8)type withName:(id)name
{
  typeCopy = type;
  nameCopy = name;
  v6 = objc_opt_new();
  [v6 setName:nameCopy];
  if (typeCopy == 2)
  {
    v8 = +[CAFCharacteristicTypes characteristicTypeByName];
    v9 = [v8 objectForKeyedSubscript:nameCopy];
    if (!v9)
    {
      v12 = +[CAFControlTypes controlTypeByName];
      v13 = [v12 objectForKeyedSubscript:nameCopy];
      [v6 setType:v13];

      goto LABEL_9;
    }
  }

  else
  {
    if (typeCopy == 1)
    {
      v7 = +[CAFServiceTypes serviceTypeByName];
    }

    else
    {
      if (typeCopy)
      {
        goto LABEL_10;
      }

      v7 = +[CAFAccessoryTypes accessoryTypeByName];
    }

    v8 = v7;
    v9 = [v7 objectForKeyedSubscript:nameCopy];
  }

  [v6 setType:v9];
LABEL_9:

LABEL_10:
  type = [v6 type];

  if (type)
  {
    type = v6;
  }

  return type;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  name = [(CAFASCTreeNode *)self name];
  type = [(CAFASCTreeNode *)self type];
  children = [(CAFASCTreeNode *)self children];
  v8 = [v3 stringWithFormat:@"<%@: %p name=%@ type=%@> %@", v4, self, name, type, children];

  return v8;
}

- (id)treeLogLinesIndent:(unint64_t)indent
{
  v27[1] = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  if (indent)
  {
    indentCopy = indent;
    do
    {
      [v5 appendString:@"\t"];
      --indentCopy;
    }

    while (indentCopy);
  }

  v7 = MEMORY[0x277CCACA8];
  name = [(CAFASCTreeNode *)self name];
  type = [(CAFASCTreeNode *)self type];
  v10 = [v7 stringWithFormat:@"%@ %@ %@", v5, name, type];
  v27[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
  v12 = [v11 mutableCopy];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  children = [(CAFASCTreeNode *)self children];
  allValues = [children allValues];

  v15 = [allValues countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(allValues);
        }

        v19 = [*(*(&v22 + 1) + 8 * i) treeLogLinesIndent:indent + 1];
        [v12 addObjectsFromArray:v19];
      }

      v16 = [allValues countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v16);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)_childNodeMatchingType:(id)type
{
  typeCopy = type;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__3;
  v24 = __Block_byref_object_dispose__3;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__3;
  v18 = __Block_byref_object_dispose__3;
  v19 = 0;
  children = self->_children;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __41__CAFASCTreeNode__childNodeMatchingType___block_invoke;
  v10[3] = &unk_27890F420;
  v6 = typeCopy;
  v11 = v6;
  v12 = &v14;
  v13 = &v20;
  [(NSDictionary *)children enumerateKeysAndObjectsUsingBlock:v10];
  v7 = v15[5];
  if (!v7)
  {
    v7 = v21[5];
  }

  v8 = v7;

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  return v8;
}

void __41__CAFASCTreeNode__childNodeMatchingType___block_invoke(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  v7 = a3;
  if ([v8 isEqualToString:a1[4]])
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a3);
    *a4 = 1;
  }

  if ([v8 isEqualToString:@"*"])
  {
    objc_storeStrong((*(a1[6] + 8) + 40), a3);
  }
}

@end