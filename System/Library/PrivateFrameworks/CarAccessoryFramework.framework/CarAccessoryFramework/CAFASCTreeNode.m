@interface CAFASCTreeNode
+ (id)nodeType:(unsigned __int8)a3 withName:(id)a4;
+ (id)nodeType:(unsigned __int8)a3 withType:(id)a4;
- (id)_childNodeMatchingType:(id)a3;
- (id)description;
- (id)treeLogLinesIndent:(unint64_t)a3;
@end

@implementation CAFASCTreeNode

+ (id)nodeType:(unsigned __int8)a3 withType:(id)a4
{
  v4 = a3;
  v5 = a4;
  v6 = objc_opt_new();
  [v6 setType:v5];
  if (v4 == 2)
  {
    v8 = +[CAFCharacteristicTypes characteristicNameByType];
    v9 = [v8 objectForKeyedSubscript:v5];
    if (!v9)
    {
      v13 = +[CAFControlTypes controlNameByType];
      v14 = [v13 objectForKeyedSubscript:v5];
      [v6 setName:v14];

      goto LABEL_9;
    }
  }

  else
  {
    if (v4 == 1)
    {
      v7 = +[CAFServiceTypes serviceNameByType];
    }

    else
    {
      if (v4)
      {
        goto LABEL_10;
      }

      v7 = +[CAFAccessoryTypes accessoryNameByType];
    }

    v8 = v7;
    v9 = [v7 objectForKeyedSubscript:v5];
  }

  [v6 setName:v9];
LABEL_9:

LABEL_10:
  v10 = [v6 name];
  if (v10)
  {
  }

  else if ([v5 isEqualToString:@"*"])
  {
    [v6 setName:v5];
  }

  v11 = [v6 name];

  if (v11)
  {
    v11 = v6;
  }

  return v11;
}

+ (id)nodeType:(unsigned __int8)a3 withName:(id)a4
{
  v4 = a3;
  v5 = a4;
  v6 = objc_opt_new();
  [v6 setName:v5];
  if (v4 == 2)
  {
    v8 = +[CAFCharacteristicTypes characteristicTypeByName];
    v9 = [v8 objectForKeyedSubscript:v5];
    if (!v9)
    {
      v12 = +[CAFControlTypes controlTypeByName];
      v13 = [v12 objectForKeyedSubscript:v5];
      [v6 setType:v13];

      goto LABEL_9;
    }
  }

  else
  {
    if (v4 == 1)
    {
      v7 = +[CAFServiceTypes serviceTypeByName];
    }

    else
    {
      if (v4)
      {
        goto LABEL_10;
      }

      v7 = +[CAFAccessoryTypes accessoryTypeByName];
    }

    v8 = v7;
    v9 = [v7 objectForKeyedSubscript:v5];
  }

  [v6 setType:v9];
LABEL_9:

LABEL_10:
  v10 = [v6 type];

  if (v10)
  {
    v10 = v6;
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(CAFASCTreeNode *)self name];
  v6 = [(CAFASCTreeNode *)self type];
  v7 = [(CAFASCTreeNode *)self children];
  v8 = [v3 stringWithFormat:@"<%@: %p name=%@ type=%@> %@", v4, self, v5, v6, v7];

  return v8;
}

- (id)treeLogLinesIndent:(unint64_t)a3
{
  v27[1] = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  if (a3)
  {
    v6 = a3;
    do
    {
      [v5 appendString:@"\t"];
      --v6;
    }

    while (v6);
  }

  v7 = MEMORY[0x277CCACA8];
  v8 = [(CAFASCTreeNode *)self name];
  v9 = [(CAFASCTreeNode *)self type];
  v10 = [v7 stringWithFormat:@"%@ %@ %@", v5, v8, v9];
  v27[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
  v12 = [v11 mutableCopy];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = [(CAFASCTreeNode *)self children];
  v14 = [v13 allValues];

  v15 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v22 + 1) + 8 * i) treeLogLinesIndent:a3 + 1];
        [v12 addObjectsFromArray:v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v16);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)_childNodeMatchingType:(id)a3
{
  v4 = a3;
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
  v6 = v4;
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