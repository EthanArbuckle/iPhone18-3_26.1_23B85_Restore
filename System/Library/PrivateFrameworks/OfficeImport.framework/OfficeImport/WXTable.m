@interface WXTable
+ (id)newTableGrid:(id)a3;
+ (void)readFrom:(_xmlNode *)a3 to:(id)a4 state:(id)a5;
@end

@implementation WXTable

+ (void)readFrom:(_xmlNode *)a3 to:(id)a4 state:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [v8 WXMainNamespace];
  v10 = OCXFindChild(a3, v9, "tblPr");

  if (v10)
  {
    v11 = [v8 WXMainNamespace];
    v12 = OCXFindChild(v10, v11, "tblStyle");

    if (v12)
    {
      v13 = [v8 WXMainNamespace];
      v14 = CXDefaultStringAttribute(v12, v13, "val", 0);

      v15 = [v7 document];
      v16 = [v15 styleSheet];

      v17 = [v16 styleWithId:v14];

      if (v17)
      {
        v18 = [v7 properties];
        [v18 setBaseStyle:v17];
      }
    }

    v19 = [v7 properties];
    [WXTableProperties readFrom:v10 to:v19 state:v8];
  }

  v20 = [v8 WXMainNamespace];
  OCXFindChild(a3, v20, "tblGrid");

  operator new();
}

+ (id)newTableGrid:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v24 = a3;
  v3 = [MEMORY[0x277CBEB58] set];
  for (i = 0; i < [v24 rowCount]; ++i)
  {
    v5 = [v24 rowAt:i];
    for (j = 0; j < [v5 cellCount]; ++j)
    {
      v7 = [v5 cellAt:j];
      v8 = [v7 properties];
      v9 = [v8 position];

      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v9];
      [v3 addObject:v10];
    }
  }

  v22 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"self" ascending:1];
  v11 = [MEMORY[0x277CBEA60] arrayWithObject:?];
  v23 = [v3 sortedArrayUsingDescriptors:v11];

  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v13 = v23;
  v14 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v14)
  {
    v15 = 0;
    v16 = *v26;
    do
    {
      for (k = 0; k != v14; ++k)
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v25 + 1) + 8 * k);
        v19 = [v18 unsignedLongValue];
        v20 = [MEMORY[0x277CCABB0] numberWithLong:v19 - v15];
        [v12 addObject:v20];
        v15 = [v18 unsignedLongValue];
      }

      v14 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v14);
  }

  return v12;
}

@end