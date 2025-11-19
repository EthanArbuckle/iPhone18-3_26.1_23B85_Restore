@interface EBGraphic
+ (id)readGraphicWithDictionary:(id)a3 state:(id)a4;
+ (id)readMainChartWithState:(id)a3;
+ (int)objectTypeForShape:(id)a3;
+ (void)readChart:(id)a3 chartIndex:(signed __int16)a4 state:(id)a5;
+ (void)readGraphicsInChart:(id)a3 state:(id)a4;
+ (void)readGraphicsWithState:(id)a3;
+ (void)readImage:(id)a3 xlGraphicsInfo:(void *)a4 state:(id)a5;
+ (void)readNotesWithDictionary:(id)a3 state:(id)a4;
+ (void)readOle:(id)a3 xlGraphicsInfo:(void *)a4 state:(id)a5;
@end

@implementation EBGraphic

+ (void)readGraphicsWithState:(id)a3
{
  v8 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = [v8 xlReader];
  v6 = [v8 edSheet];
  while (XlBinaryReader::hasMoreGraphics(v5))
  {
    v7 = [a1 readGraphicWithDictionary:v4 state:v8];
    [v6 addDrawable:v7];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [a1 readNotesWithDictionary:v4 state:v8];
  }
}

+ (void)readGraphicsInChart:(id)a3 state:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (v10 && v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v8 = [v6 xlReader];
    while (XlBinaryReader::hasMoreGraphics(v8))
    {
      v9 = [a1 readGraphicWithDictionary:v7 state:v6];
      [v10 addChild:v9];
    }
  }
}

+ (id)readMainChartWithState:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(CHDChart);
  v6 = objc_alloc_init(EDOfficeArtClient);
  [(EDOfficeArtClient *)v6 setBounds:0.0, 0.0, 200.0, 200.0];
  [(OADDrawable *)v5 setClientData:v6];
  [a1 readChart:v5 chartIndex:0xFFFFFFFFLL state:v4];

  return v5;
}

+ (id)readGraphicWithDictionary:(id)a3 state:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 xlReader];
  XlGraphicsInfo::XlGraphicsInfo(v33);
  (*(*v8 + 440))(v8, v33);
  v9 = [v7 readerState];
  v10 = [EBEscher readRootObjectWithType:3 state:v9];

  if (!v10)
  {
    goto LABEL_7;
  }

  v11 = 0;
  if ((v34 - 11) >= 0xA && v34 != 7)
  {
    if (v34 == 48)
    {
      v12 = [v10 eshObject];
      if ((*(*v12 + 16))(v12) == 61445)
      {
        v32 = [v7 readerState];
        v13 = [v32 oaState];
        [OABDrawing applyRulesFromSolverContainer:v10 state:v13];
        v11 = 0;
        goto LABEL_30;
      }

LABEL_7:
      v11 = 0;
      goto LABEL_8;
    }

    v15 = [v10 eshObject];
    if ((*(*v15 + 16))(v15) == 61442)
    {
      v32 = [v10 shapeContainer];
      if ([v32 childCount] <= 1)
      {
        v11 = 0;
        goto LABEL_35;
      }

      v16 = [v32 childAt:1];

      v10 = v16;
    }

    if (v34 == 5)
    {
      [v10 setChart:1];
    }

    v17 = [v7 readerState];
    v18 = [v17 oaState];

    v32 = v18;
    v11 = [OABDrawable readDrawableFromObject:v10 state:v18];
    v19 = [v11 altId];
    if (v19 == -1)
    {
      v20 = [v10 eshObject];
      if ((*(*v20 + 16))(v20) == 7)
      {
        if (EshShapeProperties::isHyperlinkSet(([v10 eshShape] + 424)))
        {
          v21 = [v11 drawableProperties];
          v22 = objc_alloc_init(OADHyperlink);
          [v21 setClickHyperlink:v22];
        }
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v11;
      [v18 pushGroup:v23];
      v24 = [v10 eshObject];
      v25 = (*(*v24 + 40))(v24);
      v26 = v25 - 1;
      if (v25 != 1)
      {
        do
        {
          if (!XlBinaryReader::hasMoreGraphics(v8))
          {
            break;
          }

          v27 = [a1 readGraphicWithDictionary:v6 state:v7];
          if (v27)
          {
            [v23 addChild:v27];
          }

          --v26;
        }

        while (v26);
      }

      v28 = [v32 popGroup];
    }

    if (v19 != -1)
    {
LABEL_28:
      if (!v11)
      {
LABEL_35:

        goto LABEL_8;
      }

      v13 = [MEMORY[0x277CCABB0] numberWithInt:v35];
      [v6 setObject:v11 forKey:v13];
LABEL_30:

      goto LABEL_35;
    }

    if (v39 == 1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        [a1 readOle:v11 xlGraphicsInfo:v33 state:v7];
        goto LABEL_28;
      }
    }

    if (v34 == 8)
    {
      if (v38 == 1)
      {
        objc_opt_class();
        [a1 readImage:v11 xlGraphicsInfo:v33 state:v7];
        goto LABEL_28;
      }
    }

    else if (v34 == 5 && v37)
    {
      objc_opt_class();
      v29 = v11;
      [a1 readChart:v29 chartIndex:objc_msgSend(v7 state:{"nextChartIndex"), v7}];
      goto LABEL_44;
    }

    if (v36 != 1)
    {
      goto LABEL_28;
    }

    v29 = [v11 clientData];
    v30 = [v7 resources];
    v31 = [EBTextBox edTextBoxFromXlGraphicsInfo:v33 edResources:v30];

    [v29 setTextBox:v31];
LABEL_44:

    goto LABEL_28;
  }

LABEL_8:

  XlGraphicsInfo::~XlGraphicsInfo(v33);

  return v11;
}

+ (void)readOle:(id)a3 xlGraphicsInfo:(void *)a4 state:(id)a5
{
  v16 = a3;
  v7 = a5;
  v8 = *(a4 + 16);
  v9 = [v7 xlReader];
  v10 = (*(*v9 + 88))(v9);
  if (v8)
  {
    v11 = v10;
    if (v10)
    {
      v12 = [v7 readerState];
      v13 = [v12 cancelDelegate];

      v14 = [MEMORY[0x277CCACA8] stringWithOcText:v8 + 8];
      v15 = [OABOle readFromParentStorage:v11 storageName:v14 cancel:v13];

      [v16 setOle:v15];
    }
  }
}

+ (void)readChart:(id)a3 chartIndex:(signed __int16)a4 state:(id)a5
{
  v6 = a4;
  v9 = a3;
  v7 = a5;
  v8 = [v7 xlReader];
  if (XlChartBinaryReader::getChartCount(v8) > v6)
  {
    XlChartBinaryReader::setChart(v8, v6);
  }
}

+ (void)readImage:(id)a3 xlGraphicsInfo:(void *)a4 state:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  XlBinaryData::XlBinaryData(&v22);
  v9 = *(a4 + 28);
  v10 = [MEMORY[0x277CBEB28] dataWithCapacity:v9];
  v11 = *(a4 + 29);
  if (v11 == 2)
  {
    if (*(a4 + 30) == 1)
    {
      v12 = 4;
    }

    else
    {
      v12 = 6;
    }
  }

  else
  {
    v12 = v11 == 9;
  }

  OcBinaryData::setMinimumCapacity(&v23, 0x1000u);
  v13 = 0;
  v24 = *(a4 + 27);
  v25 = v9;
  v26 = 127;
  while (1)
  {
    v23.var1 = v13;
    if (v13 >= v9)
    {
      break;
    }

    v14 = [v8 xlReader];
    (*(*v14 + 144))(v14, &v22);
    var3 = v23.var3;
    if (!v23.var3)
    {
      break;
    }

    v13 += v23.var3;
    v16 = v9 - v13;
    if (v9 < v13)
    {
      var3 = v16 + v23.var3;
      OcBinaryData::setMinimumCapacity(&v23, v16 + v23.var3);
      v23.var3 = var3;
    }

    [v10 appendBytes:v23.var5 length:var3];
  }

  v17 = [v7 imageProperties];
  v18 = [v17 imageFill];
  v19 = [v18 blipRef];
  v20 = [[OADSubBlip alloc] initWithData:v10 type:v12];
  v21 = objc_alloc_init(OADBlip);
  [(OADBlip *)v21 setMainSubBlip:v20];
  [v19 setBlip:v21];

  OcBinaryData::~OcBinaryData(&v23);
}

+ (void)readNotesWithDictionary:(id)a3 state:(id)a4
{
  v5 = a3;
  v6 = a4;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v7 = [v6 xlReader];
  (*(*v7 + 400))(v7, &v18);
  v8 = v19;
  if (((v20 - v19) & 0x7FFFFFFF8) != 0)
  {
    v9 = 0;
    do
    {
      v10 = v8[v9];
      v11 = objc_alloc_init(EDComment);
      [(EDComment *)v11 setRowIndex:*(v10 + 32)];
      [(EDComment *)v11 setColumnIndex:*(v10 + 34)];
      v12 = *(v10 + 16);
      v13 = [v6 resources];
      v14 = [EBString edStringFromXlString:v12 edResources:v13];
      [(EDComment *)v11 setAuthor:v14];

      [(EDComment *)v11 setVisible:*(v10 + 38)];
      v15 = [MEMORY[0x277CCABB0] numberWithInt:*(v10 + 36)];
      v16 = [v5 objectForKey:v15];

      if (v16)
      {
        objc_opt_class();
        v17 = [v16 clientData];
        [v17 setComment:v11];
      }

      ++v9;
      v8 = v19;
    }

    while (v9 < ((v20 - v19) >> 3));
  }

  v18 = &unk_286EC9BE0;
  CsSimpleHeapVector<XlRecord>::~CsSimpleHeapVector(&v19);
}

+ (int)objectTypeForShape:(id)a3
{
  result = EshShapeProperties::getShapeType(([a3 eshShape] + 424));
  if (result > 19)
  {
    if (result > 200)
    {
      if (result == 201)
      {
        return 5;
      }

      if (result == 202)
      {
        return 6;
      }
    }

    else
    {
      if (result == 20)
      {
        return 1;
      }

      if (result == 75)
      {
        return 8;
      }
    }
  }

  else if (result > 2)
  {
    if (result == 3)
    {
      return result;
    }

    if (result == 19)
    {
      return 4;
    }
  }

  else
  {
    if ((result - 1) < 2)
    {
      return 2;
    }

    if (!result)
    {
      return 9;
    }
  }

  return 30;
}

@end