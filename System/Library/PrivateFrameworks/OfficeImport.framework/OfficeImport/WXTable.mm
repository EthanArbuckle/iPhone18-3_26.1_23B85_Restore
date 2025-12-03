@interface WXTable
+ (id)newTableGrid:(id)grid;
+ (void)readFrom:(_xmlNode *)from to:(id)to state:(id)state;
@end

@implementation WXTable

+ (void)readFrom:(_xmlNode *)from to:(id)to state:(id)state
{
  toCopy = to;
  stateCopy = state;
  wXMainNamespace = [stateCopy WXMainNamespace];
  v10 = OCXFindChild(from, wXMainNamespace, "tblPr");

  if (v10)
  {
    wXMainNamespace2 = [stateCopy WXMainNamespace];
    v12 = OCXFindChild(v10, wXMainNamespace2, "tblStyle");

    if (v12)
    {
      wXMainNamespace3 = [stateCopy WXMainNamespace];
      v14 = CXDefaultStringAttribute(v12, wXMainNamespace3, "val", 0);

      document = [toCopy document];
      styleSheet = [document styleSheet];

      v17 = [styleSheet styleWithId:v14];

      if (v17)
      {
        properties = [toCopy properties];
        [properties setBaseStyle:v17];
      }
    }

    properties2 = [toCopy properties];
    [WXTableProperties readFrom:v10 to:properties2 state:stateCopy];
  }

  wXMainNamespace4 = [stateCopy WXMainNamespace];
  OCXFindChild(from, wXMainNamespace4, "tblGrid");

  operator new();
}

+ (id)newTableGrid:(id)grid
{
  v30 = *MEMORY[0x277D85DE8];
  gridCopy = grid;
  v3 = [MEMORY[0x277CBEB58] set];
  for (i = 0; i < [gridCopy rowCount]; ++i)
  {
    v5 = [gridCopy rowAt:i];
    for (j = 0; j < [v5 cellCount]; ++j)
    {
      v7 = [v5 cellAt:j];
      properties = [v7 properties];
      position = [properties position];

      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:position];
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
    unsignedLongValue2 = 0;
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
        unsignedLongValue = [v18 unsignedLongValue];
        v20 = [MEMORY[0x277CCABB0] numberWithLong:unsignedLongValue - unsignedLongValue2];
        [v12 addObject:v20];
        unsignedLongValue2 = [v18 unsignedLongValue];
      }

      v14 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v14);
  }

  return v12;
}

@end