@interface OABDrawable
+ (id)readDrawableFromObject:(id)a3 state:(id)a4;
+ (id)readDrawableFromZipPackageData:(const CsData *)a3 foundInObject:(id)a4 state:(id)a5;
+ (id)readDrawablesFromContainer:(id)a3 state:(id)a4;
+ (void)setUpXmlDrawingState:(id)a3 withBinaryReaderState:(id)a4 targetDocument:(id)a5 colorMap:(id)a6;
@end

@implementation OABDrawable

+ (id)readDrawableFromObject:(id)a3 state:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 eshObject];
  v8 = (*(*v7 + 16))(v7);
  if (v8 == 7)
  {
    v15 = [OABShape readShape:v5 state:v6];
LABEL_13:
    v14 = v15;
    goto LABEL_14;
  }

  if (v8 != 61443)
  {
    v14 = 0;
    goto LABEL_14;
  }

  if (![objc_msgSend(v6 "client")])
  {
LABEL_12:
    v15 = [OABGroup readGroup:v5 state:v6];
    goto LABEL_13;
  }

  v9 = objc_opt_class();
  v10 = TSUDynamicCast(v9, v5);
  v11 = [v10 eshGroup];
  v12 = v11;
  if (!v11 || !EshGroupProperties::isTablePropertiesSet((v11 + 288)))
  {

    goto LABEL_12;
  }

  v13 = *EshGroupProperties::getTableProperties((v12 + 288));

  if ((v13 & 1) == 0)
  {
    goto LABEL_12;
  }

  v14 = [OABTable readTable:v5 state:v6];
  if (!v14)
  {
    goto LABEL_12;
  }

LABEL_14:

  return v14;
}

+ (id)readDrawablesFromContainer:(id)a3 state:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB18] array];
  v9 = [v6 childCount];
  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      v11 = [v6 childAt:i];
      v12 = [a1 readDrawableFromObject:v11 state:v7];

      if (v12)
      {
        [v8 addObject:v12];
      }
    }
  }

  return v8;
}

+ (void)setUpXmlDrawingState:(id)a3 withBinaryReaderState:(id)a4 targetDocument:(id)a5 colorMap:(id)a6
{
  v21 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [v10 theme];
  v13 = [v12 baseStyles];
  v14 = [v13 styleMatrix];
  [v21 setStyleMatrix:v14];

  v15 = [v12 baseStyles];
  v16 = [v15 colorScheme];
  [v21 setColorScheme:v16];

  [v21 setColorMap:v11];
  v17 = [v12 baseStyles];
  v18 = [v17 fontScheme];
  [v21 setFontScheme:v18];

  v19 = [v10 blips];
  [v21 setTargetBlipCollection:v19];

  v20 = [v9 groupStackReference];
  [v21 replaceGroupStack:v20];
}

+ (id)readDrawableFromZipPackageData:(const CsData *)a3 foundInObject:(id)a4 state:(id)a5
{
  v29[5] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = [v8 useXmlBlobs];
  if (a3)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if ((v10 & 1) != 0 && a3->var1 && (OCPNewZipPackageWithCsData(a3), (v11 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v29[0] = @"http://schemas.microsoft.com/office/2006/relationships/shapeXml";
    v29[1] = @"http://schemas.microsoft.com/office/2006/relationships/connectorXml";
    v29[2] = @"http://schemas.microsoft.com/office/2006/relationships/pictureXml";
    v29[3] = @"http://schemas.microsoft.com/office/2006/relationships/graphicFrameDoc";
    v29[4] = @"http://schemas.microsoft.com/office/2006/relationships/groupShapeXml";
    [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:5];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v12 = v25 = 0u;
    v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v13)
    {
      v14 = *v25;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v25 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v24 + 1) + 8 * i);
          v17 = [v11 relationshipsByType:{v16, v24}];
          if ([v17 count])
          {
            objc_opt_class();
            v21 = [v11 partByRelationshipType:v16];
            v22 = [objc_msgSend(v8 "client")];
            v18 = v22;
            if (v22)
            {
              [v22 setAltId:{objc_msgSend(v22, "id")}];
              v23 = [v7 shapeID];
              [v18 setId:v23];
              [v8 setDrawable:v18 forShapeId:v23];
            }

            goto LABEL_23;
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v18 = 0;
LABEL_23:

    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

@end