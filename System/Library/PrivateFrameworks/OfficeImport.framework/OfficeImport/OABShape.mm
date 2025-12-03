@interface OABShape
+ (id)readShape:(id)shape state:(id)state;
+ (id)readShapeFromBinary:(id)binary state:(id)state;
+ (id)readShapeFromXml:(id)xml state:(id)state;
+ (void)readGraphicDefaults:(id)defaults to:(id)to state:(id)state;
@end

@implementation OABShape

+ (id)readShapeFromBinary:(id)binary state:(id)state
{
  binaryCopy = binary;
  stateCopy = state;
  v33 = binaryCopy;
  eshShape = [binaryCopy eshShape];
  v8 = (*(*eshShape + 160))(eshShape);
  eshShape2 = [binaryCopy eshShape];
  if ([binaryCopy isChart])
  {
    v10 = 0;
    v11 = objc_alloc_init(CHDChart);
  }

  else
  {
    if ((EshShapeImageData::isBlipSet((eshShape2 + 480)) & 1) == 0 && (EshShapeImageData::isBlipNameSet((eshShape2 + 480)) & 1) == 0 && EshShapeProperties::getShapeType((eshShape + 424)) != 75)
    {
      v10 = 0;
      goto LABEL_10;
    }

    v11 = objc_alloc_init(OADImage);
    v10 = v11;
  }

  v12 = v11;
  if (v11)
  {
    v13 = 0;
    goto LABEL_13;
  }

LABEL_10:
  isConnector = EshShape::isConnector(eshShape);
  v15 = off_2799C5720;
  if (!isConnector)
  {
    v15 = off_2799C5758;
  }

  v13 = objc_alloc_init(*v15);
  v12 = v13;
LABEL_13:
  if (EshShapeProperties::isMasterIdSet((eshShape + 424)))
  {
    MasterId = EshShapeProperties::getMasterId((eshShape + 424));
    v17 = [stateCopy drawableForShapeId:MasterId];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(OADGraphic *)v12 setMasterGraphic:v17];
    }

    v18 = [stateCopy contentObjectForId:MasterId];
    eshObject = [v18 eshObject];
    if (eshObject && (*(*eshObject + 16))(eshObject) == 7)
    {
      eshShape3 = [v18 eshShape];
    }

    else
    {
      eshShape3 = 0;
    }
  }

  else
  {
    eshShape3 = 0;
  }

  [OABContent readFromContentObject:v33 toDrawable:v12 state:stateCopy];
  graphicProperties = [(OADGraphic *)v12 graphicProperties];
  v22 = [[OABShapeManager alloc] initWithShape:eshShape masterShape:eshShape3];
  v23 = [OABFill readFillFromFillPropertiesManager:v22 state:stateCopy];
  [graphicProperties setFill:v23];

  if ([(OABShapeManager *)v22 isTextPath])
  {
    [OABWordArt readFromShapeManager:v22 toShape:v13 state:stateCopy];
  }

  else
  {
    if (v13)
    {
      [OABShapeGeometry readFromShape:eshShape toShape:v13];
    }

    v24 = [OABStroke readStrokeFromShapeBaseManager:v22 state:stateCopy];
    [graphicProperties setStroke:v24];

    v25 = [OABShadow readShadowFromShapeBaseManager:v22 state:stateCopy];
    [graphicProperties setEffects:v25];

    if (v10)
    {
      [OABImage readfromShape:v33 toImage:v10 state:stateCopy];
    }
  }

  if (EshContentProperties::isBehindTextSet(v8))
  {
    [graphicProperties setIsBehindText:EshContentProperties::getBehindText(v8)];
  }

  if (EshShapeProperties::isAltSet((eshShape + 424)))
  {
    v26 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCsString:EshShapeProperties::getAlt((eshShape + 424))];
    [graphicProperties setAltTitle:v26];
  }

  [(OADDrawable *)v12 setDrawableProperties:graphicProperties];
  [objc_msgSend(stateCopy "client")];
  if (v13 && ![(OABShapeManager *)v22 isTextPath])
  {
    v32 = v13;
    textBody = [(CHDChart *)v13 textBody];
    properties = [textBody properties];
    masterGraphic = [(OADGraphic *)v13 masterGraphic];
    [OABTextBodyProperties readTextBodyProperties:properties textBox:eshShape + 272 useDefaults:masterGraphic == 0 state:stateCopy];

    v13 = v32;
  }

  [(OADDrawable *)v12 setHidden:[(OABShapeManager *)v22 hidden]];
  v30 = v12;

  return v12;
}

+ (id)readShapeFromXml:(id)xml state:(id)state
{
  xmlCopy = xml;
  stateCopy = state;
  eshShape = [xmlCopy eshShape];
  if ([objc_msgSend(stateCopy "client")] && EshContentProperties::isXmlEquivalentSet((eshShape + 424)))
  {
    v8 = [OABDrawable readDrawableFromZipPackageData:EshContentProperties::getXmlEquivalent((eshShape + 424)) foundInObject:xmlCopy state:stateCopy];
    if (v8)
    {
      objc_opt_class();
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)readShape:(id)shape state:(id)state
{
  shapeCopy = shape;
  stateCopy = state;
  v8 = [self readShapeFromXml:shapeCopy state:stateCopy];
  if (!v8)
  {
    goto LABEL_4;
  }

  v9 = objc_opt_class();
  v10 = TSUDynamicCast(v9, v8);
  if (v10)
  {

LABEL_4:
    v11 = [OABShape readShapeFromBinary:shapeCopy state:stateCopy];
    goto LABEL_6;
  }

  v11 = v8;
LABEL_6:
  v12 = v11;

  return v12;
}

+ (void)readGraphicDefaults:(id)defaults to:(id)to state:(id)state
{
  defaultsCopy = defaults;
  toCopy = to;
  stateCopy = state;
  eshObject = [defaultsCopy eshObject];
  if (eshObject)
  {
    if (v10)
    {
      v11 = [[OABShapeBaseManager alloc] initWithShapeBase:v10 shapeType:1 masterShape:0];
      v12 = [OABFill readFillFromFillPropertiesManager:v11 state:stateCopy];
      [toCopy setFill:v12];

      v13 = [OABStroke readStrokeFromShapeBaseManager:v11 state:stateCopy];
      [toCopy setStroke:v13];

      v14 = [OABShadow readShadowFromShapeBaseManager:v11 state:stateCopy];
      [toCopy setEffects:v14];
    }
  }
}

@end