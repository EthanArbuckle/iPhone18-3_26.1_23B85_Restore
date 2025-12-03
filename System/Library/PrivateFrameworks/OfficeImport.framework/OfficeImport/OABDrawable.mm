@interface OABDrawable
+ (id)readDrawableFromObject:(id)object state:(id)state;
+ (id)readDrawableFromZipPackageData:(const CsData *)data foundInObject:(id)object state:(id)state;
+ (id)readDrawablesFromContainer:(id)container state:(id)state;
+ (void)setUpXmlDrawingState:(id)state withBinaryReaderState:(id)readerState targetDocument:(id)document colorMap:(id)map;
@end

@implementation OABDrawable

+ (id)readDrawableFromObject:(id)object state:(id)state
{
  objectCopy = object;
  stateCopy = state;
  eshObject = [objectCopy eshObject];
  v8 = (*(*eshObject + 16))(eshObject);
  if (v8 == 7)
  {
    v15 = [OABShape readShape:objectCopy state:stateCopy];
LABEL_13:
    v14 = v15;
    goto LABEL_14;
  }

  if (v8 != 61443)
  {
    v14 = 0;
    goto LABEL_14;
  }

  if (![objc_msgSend(stateCopy "client")])
  {
LABEL_12:
    v15 = [OABGroup readGroup:objectCopy state:stateCopy];
    goto LABEL_13;
  }

  v9 = objc_opt_class();
  v10 = TSUDynamicCast(v9, objectCopy);
  eshGroup = [v10 eshGroup];
  v12 = eshGroup;
  if (!eshGroup || !EshGroupProperties::isTablePropertiesSet((eshGroup + 288)))
  {

    goto LABEL_12;
  }

  v13 = *EshGroupProperties::getTableProperties((v12 + 288));

  if ((v13 & 1) == 0)
  {
    goto LABEL_12;
  }

  v14 = [OABTable readTable:objectCopy state:stateCopy];
  if (!v14)
  {
    goto LABEL_12;
  }

LABEL_14:

  return v14;
}

+ (id)readDrawablesFromContainer:(id)container state:(id)state
{
  containerCopy = container;
  stateCopy = state;
  array = [MEMORY[0x277CBEB18] array];
  childCount = [containerCopy childCount];
  if (childCount)
  {
    for (i = 0; i != childCount; ++i)
    {
      v11 = [containerCopy childAt:i];
      v12 = [self readDrawableFromObject:v11 state:stateCopy];

      if (v12)
      {
        [array addObject:v12];
      }
    }
  }

  return array;
}

+ (void)setUpXmlDrawingState:(id)state withBinaryReaderState:(id)readerState targetDocument:(id)document colorMap:(id)map
{
  stateCopy = state;
  readerStateCopy = readerState;
  documentCopy = document;
  mapCopy = map;
  theme = [documentCopy theme];
  baseStyles = [theme baseStyles];
  styleMatrix = [baseStyles styleMatrix];
  [stateCopy setStyleMatrix:styleMatrix];

  baseStyles2 = [theme baseStyles];
  colorScheme = [baseStyles2 colorScheme];
  [stateCopy setColorScheme:colorScheme];

  [stateCopy setColorMap:mapCopy];
  baseStyles3 = [theme baseStyles];
  fontScheme = [baseStyles3 fontScheme];
  [stateCopy setFontScheme:fontScheme];

  blips = [documentCopy blips];
  [stateCopy setTargetBlipCollection:blips];

  groupStackReference = [readerStateCopy groupStackReference];
  [stateCopy replaceGroupStack:groupStackReference];
}

+ (id)readDrawableFromZipPackageData:(const CsData *)data foundInObject:(id)object state:(id)state
{
  v29[5] = *MEMORY[0x277D85DE8];
  objectCopy = object;
  stateCopy = state;
  useXmlBlobs = [stateCopy useXmlBlobs];
  if (data)
  {
    v10 = useXmlBlobs;
  }

  else
  {
    v10 = 0;
  }

  if ((v10 & 1) != 0 && data->var1 && (OCPNewZipPackageWithCsData(data), (v11 = objc_claimAutoreleasedReturnValue()) != 0))
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
            v22 = [objc_msgSend(stateCopy "client")];
            v18 = v22;
            if (v22)
            {
              [v22 setAltId:{objc_msgSend(v22, "id")}];
              shapeID = [objectCopy shapeID];
              [v18 setId:shapeID];
              [stateCopy setDrawable:v18 forShapeId:shapeID];
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