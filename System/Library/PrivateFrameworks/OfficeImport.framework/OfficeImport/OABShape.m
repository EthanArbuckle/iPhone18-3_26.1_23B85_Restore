@interface OABShape
+ (id)readShape:(id)a3 state:(id)a4;
+ (id)readShapeFromBinary:(id)a3 state:(id)a4;
+ (id)readShapeFromXml:(id)a3 state:(id)a4;
+ (void)readGraphicDefaults:(id)a3 to:(id)a4 state:(id)a5;
@end

@implementation OABShape

+ (id)readShapeFromBinary:(id)a3 state:(id)a4
{
  v5 = a3;
  v6 = a4;
  v33 = v5;
  v7 = [v5 eshShape];
  v8 = (*(*v7 + 160))(v7);
  v9 = [v5 eshShape];
  if ([v5 isChart])
  {
    v10 = 0;
    v11 = objc_alloc_init(CHDChart);
  }

  else
  {
    if ((EshShapeImageData::isBlipSet((v9 + 480)) & 1) == 0 && (EshShapeImageData::isBlipNameSet((v9 + 480)) & 1) == 0 && EshShapeProperties::getShapeType((v7 + 424)) != 75)
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
  isConnector = EshShape::isConnector(v7);
  v15 = off_2799C5720;
  if (!isConnector)
  {
    v15 = off_2799C5758;
  }

  v13 = objc_alloc_init(*v15);
  v12 = v13;
LABEL_13:
  if (EshShapeProperties::isMasterIdSet((v7 + 424)))
  {
    MasterId = EshShapeProperties::getMasterId((v7 + 424));
    v17 = [v6 drawableForShapeId:MasterId];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(OADGraphic *)v12 setMasterGraphic:v17];
    }

    v18 = [v6 contentObjectForId:MasterId];
    v19 = [v18 eshObject];
    if (v19 && (*(*v19 + 16))(v19) == 7)
    {
      v20 = [v18 eshShape];
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  [OABContent readFromContentObject:v33 toDrawable:v12 state:v6];
  v21 = [(OADGraphic *)v12 graphicProperties];
  v22 = [[OABShapeManager alloc] initWithShape:v7 masterShape:v20];
  v23 = [OABFill readFillFromFillPropertiesManager:v22 state:v6];
  [v21 setFill:v23];

  if ([(OABShapeManager *)v22 isTextPath])
  {
    [OABWordArt readFromShapeManager:v22 toShape:v13 state:v6];
  }

  else
  {
    if (v13)
    {
      [OABShapeGeometry readFromShape:v7 toShape:v13];
    }

    v24 = [OABStroke readStrokeFromShapeBaseManager:v22 state:v6];
    [v21 setStroke:v24];

    v25 = [OABShadow readShadowFromShapeBaseManager:v22 state:v6];
    [v21 setEffects:v25];

    if (v10)
    {
      [OABImage readfromShape:v33 toImage:v10 state:v6];
    }
  }

  if (EshContentProperties::isBehindTextSet(v8))
  {
    [v21 setIsBehindText:EshContentProperties::getBehindText(v8)];
  }

  if (EshShapeProperties::isAltSet((v7 + 424)))
  {
    v26 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCsString:EshShapeProperties::getAlt((v7 + 424))];
    [v21 setAltTitle:v26];
  }

  [(OADDrawable *)v12 setDrawableProperties:v21];
  [objc_msgSend(v6 "client")];
  if (v13 && ![(OABShapeManager *)v22 isTextPath])
  {
    v32 = v13;
    v27 = [(CHDChart *)v13 textBody];
    v28 = [v27 properties];
    v29 = [(OADGraphic *)v13 masterGraphic];
    [OABTextBodyProperties readTextBodyProperties:v28 textBox:v7 + 272 useDefaults:v29 == 0 state:v6];

    v13 = v32;
  }

  [(OADDrawable *)v12 setHidden:[(OABShapeManager *)v22 hidden]];
  v30 = v12;

  return v12;
}

+ (id)readShapeFromXml:(id)a3 state:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 eshShape];
  if ([objc_msgSend(v6 "client")] && EshContentProperties::isXmlEquivalentSet((v7 + 424)))
  {
    v8 = [OABDrawable readDrawableFromZipPackageData:EshContentProperties::getXmlEquivalent((v7 + 424)) foundInObject:v5 state:v6];
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

+ (id)readShape:(id)a3 state:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 readShapeFromXml:v6 state:v7];
  if (!v8)
  {
    goto LABEL_4;
  }

  v9 = objc_opt_class();
  v10 = TSUDynamicCast(v9, v8);
  if (v10)
  {

LABEL_4:
    v11 = [OABShape readShapeFromBinary:v6 state:v7];
    goto LABEL_6;
  }

  v11 = v8;
LABEL_6:
  v12 = v11;

  return v12;
}

+ (void)readGraphicDefaults:(id)a3 to:(id)a4 state:(id)a5
{
  v15 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v15 eshObject];
  if (v9)
  {
    if (v10)
    {
      v11 = [[OABShapeBaseManager alloc] initWithShapeBase:v10 shapeType:1 masterShape:0];
      v12 = [OABFill readFillFromFillPropertiesManager:v11 state:v8];
      [v7 setFill:v12];

      v13 = [OABStroke readStrokeFromShapeBaseManager:v11 state:v8];
      [v7 setStroke:v13];

      v14 = [OABShadow readShadowFromShapeBaseManager:v11 state:v8];
      [v7 setEffects:v14];
    }
  }
}

@end