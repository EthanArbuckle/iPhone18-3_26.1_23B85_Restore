@interface EBGraphic
+ (id)readGraphicWithDictionary:(id)dictionary state:(id)state;
+ (id)readMainChartWithState:(id)state;
+ (int)objectTypeForShape:(id)shape;
+ (void)readChart:(id)chart chartIndex:(signed __int16)index state:(id)state;
+ (void)readGraphicsInChart:(id)chart state:(id)state;
+ (void)readGraphicsWithState:(id)state;
+ (void)readImage:(id)image xlGraphicsInfo:(void *)info state:(id)state;
+ (void)readNotesWithDictionary:(id)dictionary state:(id)state;
+ (void)readOle:(id)ole xlGraphicsInfo:(void *)info state:(id)state;
@end

@implementation EBGraphic

+ (void)readGraphicsWithState:(id)state
{
  stateCopy = state;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  xlReader = [stateCopy xlReader];
  edSheet = [stateCopy edSheet];
  while (XlBinaryReader::hasMoreGraphics(xlReader))
  {
    v7 = [self readGraphicWithDictionary:v4 state:stateCopy];
    [edSheet addDrawable:v7];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [self readNotesWithDictionary:v4 state:stateCopy];
  }
}

+ (void)readGraphicsInChart:(id)chart state:(id)state
{
  chartCopy = chart;
  stateCopy = state;
  if (chartCopy && stateCopy)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    xlReader = [stateCopy xlReader];
    while (XlBinaryReader::hasMoreGraphics(xlReader))
    {
      v9 = [self readGraphicWithDictionary:v7 state:stateCopy];
      [chartCopy addChild:v9];
    }
  }
}

+ (id)readMainChartWithState:(id)state
{
  stateCopy = state;
  v5 = objc_alloc_init(CHDChart);
  v6 = objc_alloc_init(EDOfficeArtClient);
  [(EDOfficeArtClient *)v6 setBounds:0.0, 0.0, 200.0, 200.0];
  [(OADDrawable *)v5 setClientData:v6];
  [self readChart:v5 chartIndex:0xFFFFFFFFLL state:stateCopy];

  return v5;
}

+ (id)readGraphicWithDictionary:(id)dictionary state:(id)state
{
  dictionaryCopy = dictionary;
  stateCopy = state;
  xlReader = [stateCopy xlReader];
  XlGraphicsInfo::XlGraphicsInfo(v33);
  (*(*xlReader + 440))(xlReader, v33);
  readerState = [stateCopy readerState];
  v10 = [EBEscher readRootObjectWithType:3 state:readerState];

  if (!v10)
  {
    goto LABEL_7;
  }

  v11 = 0;
  if ((v34 - 11) >= 0xA && v34 != 7)
  {
    if (v34 == 48)
    {
      eshObject = [v10 eshObject];
      if ((*(*eshObject + 16))(eshObject) == 61445)
      {
        readerState2 = [stateCopy readerState];
        oaState = [readerState2 oaState];
        [OABDrawing applyRulesFromSolverContainer:v10 state:oaState];
        v11 = 0;
        goto LABEL_30;
      }

LABEL_7:
      v11 = 0;
      goto LABEL_8;
    }

    eshObject2 = [v10 eshObject];
    if ((*(*eshObject2 + 16))(eshObject2) == 61442)
    {
      readerState2 = [v10 shapeContainer];
      if ([readerState2 childCount] <= 1)
      {
        v11 = 0;
        goto LABEL_35;
      }

      v16 = [readerState2 childAt:1];

      v10 = v16;
    }

    if (v34 == 5)
    {
      [v10 setChart:1];
    }

    readerState3 = [stateCopy readerState];
    oaState2 = [readerState3 oaState];

    readerState2 = oaState2;
    v11 = [OABDrawable readDrawableFromObject:v10 state:oaState2];
    altId = [v11 altId];
    if (altId == -1)
    {
      eshObject3 = [v10 eshObject];
      if ((*(*eshObject3 + 16))(eshObject3) == 7)
      {
        if (EshShapeProperties::isHyperlinkSet(([v10 eshShape] + 424)))
        {
          drawableProperties = [v11 drawableProperties];
          v22 = objc_alloc_init(OADHyperlink);
          [drawableProperties setClickHyperlink:v22];
        }
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v11;
      [oaState2 pushGroup:v23];
      eshObject4 = [v10 eshObject];
      v25 = (*(*eshObject4 + 40))(eshObject4);
      v26 = v25 - 1;
      if (v25 != 1)
      {
        do
        {
          if (!XlBinaryReader::hasMoreGraphics(xlReader))
          {
            break;
          }

          v27 = [self readGraphicWithDictionary:dictionaryCopy state:stateCopy];
          if (v27)
          {
            [v23 addChild:v27];
          }

          --v26;
        }

        while (v26);
      }

      popGroup = [readerState2 popGroup];
    }

    if (altId != -1)
    {
LABEL_28:
      if (!v11)
      {
LABEL_35:

        goto LABEL_8;
      }

      oaState = [MEMORY[0x277CCABB0] numberWithInt:v35];
      [dictionaryCopy setObject:v11 forKey:oaState];
LABEL_30:

      goto LABEL_35;
    }

    if (v39 == 1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        [self readOle:v11 xlGraphicsInfo:v33 state:stateCopy];
        goto LABEL_28;
      }
    }

    if (v34 == 8)
    {
      if (v38 == 1)
      {
        objc_opt_class();
        [self readImage:v11 xlGraphicsInfo:v33 state:stateCopy];
        goto LABEL_28;
      }
    }

    else if (v34 == 5 && v37)
    {
      objc_opt_class();
      clientData = v11;
      [self readChart:clientData chartIndex:objc_msgSend(stateCopy state:{"nextChartIndex"), stateCopy}];
      goto LABEL_44;
    }

    if (v36 != 1)
    {
      goto LABEL_28;
    }

    clientData = [v11 clientData];
    resources = [stateCopy resources];
    v31 = [EBTextBox edTextBoxFromXlGraphicsInfo:v33 edResources:resources];

    [clientData setTextBox:v31];
LABEL_44:

    goto LABEL_28;
  }

LABEL_8:

  XlGraphicsInfo::~XlGraphicsInfo(v33);

  return v11;
}

+ (void)readOle:(id)ole xlGraphicsInfo:(void *)info state:(id)state
{
  oleCopy = ole;
  stateCopy = state;
  v8 = *(info + 16);
  xlReader = [stateCopy xlReader];
  v10 = (*(*xlReader + 88))(xlReader);
  if (v8)
  {
    v11 = v10;
    if (v10)
    {
      readerState = [stateCopy readerState];
      cancelDelegate = [readerState cancelDelegate];

      v14 = [MEMORY[0x277CCACA8] stringWithOcText:v8 + 8];
      v15 = [OABOle readFromParentStorage:v11 storageName:v14 cancel:cancelDelegate];

      [oleCopy setOle:v15];
    }
  }
}

+ (void)readChart:(id)chart chartIndex:(signed __int16)index state:(id)state
{
  indexCopy = index;
  chartCopy = chart;
  stateCopy = state;
  xlReader = [stateCopy xlReader];
  if (XlChartBinaryReader::getChartCount(xlReader) > indexCopy)
  {
    XlChartBinaryReader::setChart(xlReader, indexCopy);
  }
}

+ (void)readImage:(id)image xlGraphicsInfo:(void *)info state:(id)state
{
  v27 = *MEMORY[0x277D85DE8];
  imageCopy = image;
  stateCopy = state;
  XlBinaryData::XlBinaryData(&v22);
  v9 = *(info + 28);
  v10 = [MEMORY[0x277CBEB28] dataWithCapacity:v9];
  v11 = *(info + 29);
  if (v11 == 2)
  {
    if (*(info + 30) == 1)
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
  v24 = *(info + 27);
  v25 = v9;
  v26 = 127;
  while (1)
  {
    v23.var1 = v13;
    if (v13 >= v9)
    {
      break;
    }

    xlReader = [stateCopy xlReader];
    (*(*xlReader + 144))(xlReader, &v22);
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

  imageProperties = [imageCopy imageProperties];
  imageFill = [imageProperties imageFill];
  blipRef = [imageFill blipRef];
  v20 = [[OADSubBlip alloc] initWithData:v10 type:v12];
  v21 = objc_alloc_init(OADBlip);
  [(OADBlip *)v21 setMainSubBlip:v20];
  [blipRef setBlip:v21];

  OcBinaryData::~OcBinaryData(&v23);
}

+ (void)readNotesWithDictionary:(id)dictionary state:(id)state
{
  dictionaryCopy = dictionary;
  stateCopy = state;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  xlReader = [stateCopy xlReader];
  (*(*xlReader + 400))(xlReader, &v18);
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
      resources = [stateCopy resources];
      v14 = [EBString edStringFromXlString:v12 edResources:resources];
      [(EDComment *)v11 setAuthor:v14];

      [(EDComment *)v11 setVisible:*(v10 + 38)];
      v15 = [MEMORY[0x277CCABB0] numberWithInt:*(v10 + 36)];
      v16 = [dictionaryCopy objectForKey:v15];

      if (v16)
      {
        objc_opt_class();
        clientData = [v16 clientData];
        [clientData setComment:v11];
      }

      ++v9;
      v8 = v19;
    }

    while (v9 < ((v20 - v19) >> 3));
  }

  v18 = &unk_286EC9BE0;
  CsSimpleHeapVector<XlRecord>::~CsSimpleHeapVector(&v19);
}

+ (int)objectTypeForShape:(id)shape
{
  result = EshShapeProperties::getShapeType(([shape eshShape] + 424));
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