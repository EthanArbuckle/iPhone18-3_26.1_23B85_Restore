@interface PBOfficeArtReaderClient
+ (BOOL)readClientTextBoxFromShape:(id)shape toGraphic:(id)graphic clientData:(id)data state:(id)state;
+ (BOOL)readOleFromClientDataHolder:(id)holder toGraphic:(id)graphic tgtClientData:(id)data state:(id)state;
+ (BOOL)readPlaceholderInfo:(id)info clientData:(id)data toGraphic:(id)graphic presentationState:(id)state;
+ (BOOL)readRecolorInfoFromClientDataHolder:(id)holder toClientData:(id)data state:(id)state;
+ (id)newBuildFromBuildType:(int)type;
+ (id)newTargetFromDrawable:(id)drawable clientData:(id)data buildType:(int)type;
+ (id)readClientTextBoxFromShape:(id)shape toTextBody:(id)body state:(id)state;
+ (id)readDrawableFromPackagePart:(id)part foundInObject:(id)object state:(id)state;
+ (int)directionFromFlyDirection:(int)direction;
+ (int)presetIdFromFlyMethod:(int)method isEntrance:(BOOL)entrance;
+ (void)addRecolorSpec:(const PptRecolorSpec *)spec toDictionary:(id)dictionary state:(id)state;
+ (void)readClientAnchorFromContainer:(id)container toDrawable:(id)drawable state:(id)state;
+ (void)readClientDataFromGroup:(id)group toGroup:(id)toGroup state:(id)state;
+ (void)readClientDataFromShape:(id)shape toGraphic:(id)graphic state:(id)state;
+ (void)readClientDataFromTableCell:(id)cell toTableCell:(id)tableCell state:(id)state;
+ (void)readHyperlinkFromShapeContainerHolder:(id)holder toDrawable:(id)drawable state:(id)state;
@end

@implementation PBOfficeArtReaderClient

+ (id)readClientTextBoxFromShape:(id)shape toTextBody:(id)body state:(id)state
{
  shapeCopy = shape;
  bodyCopy = body;
  stateCopy = state;
  objc_opt_class();
  presentationState = [stateCopy presentationState];
  objc_opt_class();
  v10 = shapeCopy;
  objc_opt_class();
  v11 = [v10 firstChildOfType:61457];
  if (v11)
  {
    [PBProgTag readClientData:v11 state:presentationState];
  }

  objc_opt_class();
  v12 = [v10 firstChildOfType:61453];
  if ([v12 childCount])
  {
    v13 = [v12 firstChildOfType:3998];
    Atom = ESDAtomAccess<PptOutlineTextRefAtom>::extractAtom(v13, 0);

    if (Atom)
    {
      v15 = Atom[12];
      currentSlideTextBlockRecordIndexRangeVector = [presentationState currentSlideTextBlockRecordIndexRangeVector];
      if (v15 < ((currentSlideTextBlockRecordIndexRangeVector[1] - *currentSlideTextBlockRecordIndexRangeVector) >> 4))
      {
        v17 = (*currentSlideTextBlockRecordIndexRangeVector + 16 * v15);
        v18 = v17[1];
        if (v18)
        {
          v28 = bodyCopy;
          v19 = *v17;
          v20 = [(ESDObject *)[ESDContainer alloc] initWithType:61453];
          if (v20)
          {
            if (v19 < v18 + v19)
            {
              do
              {
                sourceSlideListHolder = [presentationState sourceSlideListHolder];
                v22 = [sourceSlideListHolder childAt:v19];
                [(ESDContainer *)v20 addChild:v22];

                ++v19;
                --v18;
              }

              while (v18);
            }

            if ([(ESDContainer *)v20 childCount])
            {
              v23 = [(ESDContainer *)v20 firstChildOfType:3999];
            }

            v24 = [v12 firstChildOfType:4006];
            if (v24)
            {
              [(ESDContainer *)v20 addChild:v24];
            }

            if ([(ESDContainer *)v20 childCount])
            {
              [PBTextBlock readClientTextBox:v20 textBody:v28 state:presentationState];
            }
          }

          bodyCopy = v28;
        }
      }
    }

    else
    {
      v25 = [v12 firstChildOfType:3999];
      v26 = ESDAtomAccess<PptTextHeaderAtom>::extractAtom(v25, 0);

      if (v26)
      {
        [PBTextBlock readClientTextBox:v12 textBody:bodyCopy state:presentationState];
      }
    }
  }

  return v12;
}

+ (BOOL)readClientTextBoxFromShape:(id)shape toGraphic:(id)graphic clientData:(id)data state:(id)state
{
  shapeCopy = shape;
  graphicCopy = graphic;
  dataCopy = data;
  stateCopy = state;
  objc_opt_class();
  presentationState = [stateCopy presentationState];
  v15 = objc_opt_class();
  v16 = TSUDynamicCast(v15, graphicCopy);
  if (v16)
  {
    v31 = dataCopy;
    v17 = objc_alloc_init(OADTextBody);
    v18 = [self readClientTextBoxFromShape:shapeCopy toTextBody:v17 state:stateCopy];
    v19 = v18;
    v20 = v18 != 0;
    if (v18)
    {
      v21 = [v18 firstChildOfType:3998];
      Atom = ESDAtomAccess<PptOutlineTextRefAtom>::extractAtom(v21, 0);

      if (!Atom)
      {
        v23 = [v19 firstChildOfType:3999];
        v24 = ESDAtomAccess<PptTextHeaderAtom>::extractAtom(v23, 0);

        if (v24)
        {
          v25 = [PBPlaceholder placeholderTypeFromTextType:v24[12]];
          if (v25 != -1 && ([v31 hasPlaceholder] & 1) == 0)
          {
            tgtSlide = [presentationState tgtSlide];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              [v31 setInheritedTextStylePlaceholderType:v25];
            }
          }

          v27 = [PDPlaceholder isTextType:v25, tgtSlide];
          shapeProperties = [v16 shapeProperties];
          [shapeProperties setIsTextBox:v27];
        }
      }

      [v16 setTextBody:v17];
    }

    dataCopy = v31;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

+ (void)readClientDataFromShape:(id)shape toGraphic:(id)graphic state:(id)state
{
  shapeCopy = shape;
  graphicCopy = graphic;
  stateCopy = state;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    presentationState = [stateCopy presentationState];
    v11 = shapeCopy;
    v12 = [v11 firstChildOfType:61457];
    v13 = objc_alloc_init(PDOfficeArtClient);
    [self readClientAnchorFromContainer:v11 toDrawable:graphicCopy state:stateCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [self readPlaceholderInfo:v11 clientData:v13 toGraphic:graphicCopy presentationState:presentationState];
    }

    else
    {
      v14 = 0;
    }

    v15 = [self readClientTextBoxFromShape:v11 toGraphic:graphicCopy clientData:v13 state:stateCopy];
    [self readHyperlinkFromShapeContainerHolder:v11 toDrawable:graphicCopy state:stateCopy];
    v16 = [self readRecolorInfoFromClientDataHolder:v11 toClientData:v13 state:stateCopy];
    if (v14 | v15 | v16 | [self readOleFromClientDataHolder:v11 toGraphic:graphicCopy tgtClientData:v13 state:presentationState])
    {
      [graphicCopy setClientData:v13];
    }
  }
}

+ (void)readClientDataFromGroup:(id)group toGroup:(id)toGroup state:(id)state
{
  toGroupCopy = toGroup;
  stateCopy = state;
  v9 = [group firstChildOfType:6];
  [self readClientAnchorFromContainer:v9 toDrawable:toGroupCopy state:stateCopy];
}

+ (void)readClientDataFromTableCell:(id)cell toTableCell:(id)tableCell state:(id)state
{
  cellCopy = cell;
  tableCellCopy = tableCell;
  stateCopy = state;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    presentationState = [stateCopy presentationState];
    v10 = [cellCopy firstChildOfType:61453];
    if (v10)
    {
      v11 = objc_alloc_init(OADTextBody);
      [PBTextBlock readClientTextBox:v10 textBody:v11 state:presentationState];
      [tableCellCopy setTextBody:v11];
    }
  }
}

+ (id)readDrawableFromPackagePart:(id)part foundInObject:(id)object state:(id)state
{
  partCopy = part;
  objectCopy = object;
  stateCopy = state;
  objc_opt_class();
  v9 = stateCopy;
  presentationState = [v9 presentationState];
  xmlDrawingState = [v9 xmlDrawingState];
  client = [xmlDrawingState client];
  presentationState2 = [client presentationState];

  v57 = presentationState2;
  tgtSlide = [presentationState tgtSlide];
  [xmlDrawingState setPackagePart:partCopy];
  styleMatrix = [tgtSlide styleMatrix];
  [xmlDrawingState setStyleMatrix:styleMatrix];

  colorScheme = [tgtSlide colorScheme];
  [xmlDrawingState setColorScheme:colorScheme];

  colorMap = [tgtSlide colorMap];
  [xmlDrawingState setColorMap:colorMap];

  fontScheme = [tgtSlide fontScheme];
  [xmlDrawingState setFontScheme:fontScheme];

  v18 = OCXGetRootElement([partCopy xmlDocument]);
  pXPresentationMLNamespace = [presentationState2 PXPresentationMLNamespace];
  contentType = [partCopy contentType];
  v20 = [contentType isEqualToString:@"application/vnd.ms-office.DrsConnector+xml"];

  if (v20)
  {
    v21 = off_2799C5768;
LABEL_11:
    v30 = [(__objc2_class *)*v21 readFromXmlNode:v18 inNamespace:pXPresentationMLNamespace drawingState:xmlDrawingState];
    goto LABEL_12;
  }

  contentType2 = [partCopy contentType];
  v23 = [contentType2 isEqualToString:@"application/vnd.ms-office.DrsE2oDoc+xml"];

  if (v23)
  {
    v21 = off_2799C5770;
    goto LABEL_11;
  }

  contentType3 = [partCopy contentType];
  v25 = [contentType3 isEqualToString:@"application/vnd.ms-office.DrsGroupShape+xml"];

  if (v25)
  {
    v21 = off_2799C5778;
    goto LABEL_11;
  }

  contentType4 = [partCopy contentType];
  v27 = [contentType4 isEqualToString:@"application/vnd.ms-office.DrsPicture+xml"];

  if (v27)
  {
    v21 = off_2799C5780;
    goto LABEL_11;
  }

  contentType5 = [partCopy contentType];
  v29 = [contentType5 isEqualToString:@"application/vnd.ms-office.DrsShape+xml"];

  if (v29)
  {
    v21 = off_2799C5788;
    goto LABEL_11;
  }

  v30 = 0;
LABEL_12:
  v31 = objc_opt_class();
  v32 = TSUDynamicCast(v31, v30);
  if (v32)
  {
    v33 = objc_opt_new();
    v34 = [self readClientTextBoxFromShape:objectCopy toTextBody:v33 state:v9];
    textBody = [v32 textBody];
    v36 = [textBody isSimilarToTextBody:v33];

    if ((v36 & 1) == 0)
    {
      eshShape = [objectCopy eshShape];
      if (eshShape)
      {
        properties = [v33 properties];
        [OABTextBodyProperties readTextBodyProperties:properties textBox:eshShape + 272 useDefaults:0 state:v9];
      }

      [v32 setTextBody:v33];
    }
  }

  v39 = objc_opt_class();
  v40 = TSUDynamicCast(v39, objectCopy);
  if (v40)
  {
    v41 = objc_opt_class();
    v42 = [v40 firstChildOfType:61457];
    v43 = TSUDynamicCast(v41, v42);

    if (v43)
    {
      v44 = [v43 firstChildOfType:1055];
      Atom = ESDAtomAccess<PptRoundTripShapeIdAtom>::extractAtom(v44, 0);

      useXmlBlobs = [v9 useXmlBlobs];
      v47 = Atom ? useXmlBlobs : 0;
      if (v47)
      {
        v48 = Atom[12];
        presentationState3 = [v9 presentationState];
        v49 = objc_opt_class();
        tgtSlide2 = [presentationState3 tgtSlide];
        v51 = TSUDynamicCast(v49, tgtSlide2);

        if (v51)
        {
          slideLayout = [v51 slideLayout];
          drawables = [slideLayout drawables];
          v61[0] = MEMORY[0x277D85DD0];
          v61[1] = 3221225472;
          v61[2] = __75__PBOfficeArtReaderClient_readDrawableFromPackagePart_foundInObject_state___block_invoke;
          v61[3] = &unk_2799CDA90;
          v62 = v30;
          v63 = v48;
          [drawables enumerateObjectsUsingBlock:v61];
        }
      }
    }
  }

  return v30;
}

void __75__PBOfficeArtReaderClient_readDrawableFromPackagePart_foundInObject_state___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v14 = a2;
  if ([*(a1 + 32) id] == *(a1 + 40))
  {
    v6 = objc_opt_class();
    v7 = [v14 clientData];
    v8 = TSUDynamicCast(v6, v7);

    v9 = [v8 placeholder];
    if (v9)
    {
      v10 = objc_opt_class();
      v11 = [*(a1 + 32) clientData];
      v12 = TSUDynamicCast(v10, v11);

      v13 = [v12 placeholder];
      [v13 setIndex:{objc_msgSend(v9, "index")}];
    }

    *a4 = 1;
  }
}

+ (void)readClientAnchorFromContainer:(id)container toDrawable:(id)drawable state:(id)state
{
  containerCopy = container;
  drawableCopy = drawable;
  stateCopy = state;
  v9 = [containerCopy firstChildOfType:61456];
  v10 = v9;
  if (v9)
  {
    eshObject = [v9 eshObject];
    if (eshObject)
    {
    }

    else
    {
      v12 = 0;
    }

    if ([stateCopy groupDepth] <= 0)
    {
      v13 = 0.125;
    }

    else
    {
      v13 = 1.0;
    }

    v15 = v12[7];
    v14 = v12[8];
    v17 = v12[9];
    v16 = v12[10];
    drawableProperties = [drawableCopy drawableProperties];
    hasOrientedBounds = [drawableProperties hasOrientedBounds];
    v20 = (v13 * v15);
    v21 = (v13 * v14);
    v22 = (v13 * (v17 - v15));
    v23 = (v13 * (v16 - v14));

    if (hasOrientedBounds)
    {
      drawableProperties2 = [drawableCopy drawableProperties];
      orientedBounds = [drawableProperties2 orientedBounds];

      [orientedBounds rotation];
      if ([OADOrientedBounds directionCloserToVerticalThanToHorizontal:?])
      {
        v20 = NSTransposedRectWithSameCenter(v20, v21, v22, v23);
        v21 = v26;
        v22 = v27;
        v23 = v28;
      }

      [orientedBounds setBounds:{v20, v21, v22, v23}];
    }

    else
    {
      v29 = [[OADOrientedBounds alloc] initWithBounds:v20, v21, v22, v23];
      drawableProperties3 = [drawableCopy drawableProperties];
      [drawableProperties3 setOrientedBounds:v29];

      orientedBounds = v29;
    }
  }
}

+ (void)readHyperlinkFromShapeContainerHolder:(id)holder toDrawable:(id)drawable state:(id)state
{
  drawableCopy = drawable;
  stateCopy = state;
  v8 = [holder firstChildOfType:61457];
  if (v8)
  {
    presentationState = [stateCopy presentationState];
    v10 = [v8 childOfType:4082 instance:0];
    if (v10)
    {
      v11 = [PBHyperlink readAnimationInfoContainerHolder:v10 presentationState:presentationState];
      drawableProperties = [drawableCopy drawableProperties];
      [drawableProperties setClickHyperlink:v11];
    }

    v13 = [v8 childOfType:4082 instance:1];
    if (v13)
    {
      v14 = [PBHyperlink readAnimationInfoContainerHolder:v13 presentationState:presentationState];
      drawableProperties2 = [drawableCopy drawableProperties];
      [drawableProperties2 setHoverHyperlink:v14];
    }
  }
}

+ (BOOL)readRecolorInfoFromClientDataHolder:(id)holder toClientData:(id)data state:(id)state
{
  holderCopy = holder;
  dataCopy = data;
  stateCopy = state;
  v11 = [holderCopy firstChildOfType:61457];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 firstChildOfType:4071];
    v14 = v13;
    if (v13 && (v15 = [v13 eshObject]) != 0)
    {
      v29 = dataCopy;
      if (v16)
      {
        v17 = v16;
        v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v19 = *(v17 + 7) - *(v17 + 6);
        if ((v19 >> 3) >= 1)
        {
          LOWORD(v20) = 0;
          v21 = v19 >> 3;
          do
          {
            [self addRecolorSpec:XlChartDataSeries::getCachedCustomFormat(v17 toDictionary:v20) state:{v18, stateCopy}];
            v20 = (v20 + 1);
          }

          while (v20 < v21);
        }

        v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v23 = *(v17 + 10) - *(v17 + 9);
        if ((v23 >> 3) >= 1)
        {
          LOWORD(v24) = 0;
          v25 = v23 >> 3;
          do
          {
            [self addRecolorSpec:XlChartDataSeries::getCachedCustomLabel(v17 toDictionary:v24) state:{v22, stateCopy}];
            v24 = (v24 + 1);
          }

          while (v24 < v25);
        }

        v26 = [[OADImageRecolorInfo alloc] initWithColors:v18 fills:v22];
        [v29 setImageRecolorInfo:v26];

        v27 = 1;
      }

      else
      {
        v27 = 0;
      }

      dataCopy = v29;
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

+ (void)addRecolorSpec:(const PptRecolorSpec *)spec toDictionary:(id)dictionary state:(id)state
{
  dictionaryCopy = dictionary;
  stateCopy = state;
  if (spec->var3)
  {
    EshColor::EshColor(&v14, &spec->var2);
    Red = EshColor::getRed(&v14);
    Green = EshColor::getGreen(&v14);
    v11 = [OITSUColor colorWithCalibratedRed:Red / 255.0 green:Green / 255.0 blue:EshColor::getBlue(&v14) / 255.0 alpha:1.0];
    EshColor::EshColor(&v13, &spec->var1);
    v12 = [OABColor readColor:&v13 colorPropertiesManager:0 state:stateCopy];
    [dictionaryCopy setObject:v12 forKey:v11];
  }
}

+ (BOOL)readOleFromClientDataHolder:(id)holder toGraphic:(id)graphic tgtClientData:(id)data state:(id)state
{
  holderCopy = holder;
  graphicCopy = graphic;
  dataCopy = data;
  stateCopy = state;
  v12 = objc_opt_class();
  v13 = TSUDynamicCast(v12, graphicCopy);
  if (!v13)
  {
    v25 = 0;
    goto LABEL_66;
  }

  v14 = [holderCopy firstChildOfType:61457];
  v15 = v14;
  if (!v14)
  {
    v25 = 0;
    goto LABEL_65;
  }

  v16 = [v14 firstChildOfType:3009];
  v17 = v16;
  if (!v16)
  {
    v25 = 0;
    goto LABEL_64;
  }

  v66 = graphicCopy;
  v67 = dataCopy;
  v68 = v13;
  v64 = v16;
  v65 = v15;
  eshObject = [v16 eshObject];
  {
    [TCMessageException raise:TCUnknownProblemMessage];
    v19 = 0;
  }

  v70 = v19[12];
  DocumentRef = PptBinaryReader::getDocumentRef([stateCopy reader]);
  documentRoot = [stateCopy documentRoot];
  v22 = [documentRoot pbReferenceWithID:DocumentRef];

  v63 = v22;
  v23 = [v22 firstChildOfType:1033];
  v24 = 0;
  v25 = 0;
  p_cache = &OBJC_METACLASS___OADBackgroundFill.cache;
  while (1)
  {
    v27 = v24;
    if ([v23 childCount] <= v24)
    {
      break;
    }

    v28 = [v23 childAt:v24];
    eshObject2 = [v28 eshObject];
    v30 = (*(*eshObject2 + 16))(eshObject2);
    v31 = (v30 - 4074);
    if (v31 > 0x26)
    {
      goto LABEL_30;
    }

    if (((1 << (v30 + 22)) & 0x30000001) == 0)
    {
      if (((1 << (v30 + 22)) & 0x4800000000) != 0)
      {
        v32 = [v28 firstChildOfType:4100];
        eshObject3 = [v32 eshObject];
        {
          [TCMessageException raise:TCUnknownProblemMessage];
          v34 = 0;
        }

        if (v34[12] != v70)
        {
          goto LABEL_57;
        }

        v35 = [PBMedia readLinkedMovieFromMovieHolder:v28 toImage:v68 state:stateCopy];
        goto LABEL_29;
      }

      if (v31 == 37)
      {
        v32 = [v28 firstChildOfType:4100];
        eshObject4 = [v32 eshObject];
        {
          [TCMessageException raise:TCUnknownProblemMessage];
          v41 = 0;
        }

        if (v41[12] != v70)
        {
          goto LABEL_57;
        }

        v35 = [PBMedia readEmbeddedSoundFromClientDataHolder:v28 toImage:v68 state:stateCopy];
LABEL_29:
        v25 = v35;
        goto LABEL_57;
      }

LABEL_30:
      if (v30 != 4044)
      {
        goto LABEL_58;
      }

      v32 = [v28 firstChildOfType:4035];
      if (!v32)
      {
        [TCMessageException raise:TCUnknownProblemMessage];
      }

      eshObject5 = [v32 eshObject];
      {
        [TCMessageException raise:TCUnknownProblemMessage];
        v43 = 0;
      }

      if (v43[14] == v70)
      {
        v44 = [v28 childOfType:4026 instance:2];
        v37 = v44;
        if (!v44)
        {

          break;
        }

        eshObject6 = [v44 eshObject];
        if (eshObject6)
        {
        }

        else
        {
          v46 = 0;
        }

        v47 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCsString:v46 + 48];
        if (![p_cache + 463 isProgIDChart:v47])
        {
          v56 = objc_alloc_init((p_cache + 463));
          v57 = v56;
          if (v47)
          {
            [v56 setAnsiProgID:v47];
          }

          goto LABEL_55;
        }

        v62 = holderCopy;
        v48 = v43[16];
        documentRoot2 = [stateCopy documentRoot];
        v50 = [documentRoot2 pbReferenceWithID:v48];

        v61 = v50;
        eshObject7 = [v50 eshObject];
        {
          v53 = v52;
          v54 = v52[12];
          (*(*v54 + 16))(v54, *(v52 + 16), 0);
          v60 = *(v53 + 18);
          v59 = *(v53 + 12);
          cancelDelegate = [stateCopy cancelDelegate];
          if (v59)
          {
            [OABOle readCompressedFromStream:v54 compressedSize:v60 uncompressedSize:v59 cancel:cancelDelegate];
          }

          else
          {
            [OABOle readFromStream:v54 size:v60 cancel:cancelDelegate];
          }
          v57 = ;

          if (v57)
          {
            holderCopy = v62;
            [v57 setIconic:v43[12] == 4];
            v25 = 1;
            [v67 setHasOleChart:1];
LABEL_54:

LABEL_55:
            [v68 setOle:v57];

            p_cache = (&OBJC_METACLASS___OADBackgroundFill + 16);
LABEL_56:

            goto LABEL_57;
          }
        }

        else
        {
          v57 = 0;
        }

        holderCopy = v62;
        goto LABEL_54;
      }

      goto LABEL_57;
    }

    v36 = [v28 firstContainerChildOfType:4101 mustExist:0];
    v32 = v36;
    if (v36)
    {
      v37 = [v36 firstChildOfType:4100];
      eshObject8 = [v37 eshObject];
      {
        [TCMessageException raise:TCUnknownProblemMessage];
        v39 = 0;
      }

      if (v39[12] == v70)
      {
        v25 = [PBMedia readLinkedMovieFromMovieHolder:v32 toImage:v68 state:stateCopy];
      }

      goto LABEL_56;
    }

LABEL_57:

LABEL_58:
    v24 = v27 + 1;
  }

  graphicCopy = v66;
  dataCopy = v67;
  v13 = v68;
  v17 = v64;
  v15 = v65;
LABEL_64:

LABEL_65:
LABEL_66:

  return v25;
}

+ (BOOL)readPlaceholderInfo:(id)info clientData:(id)data toGraphic:(id)graphic presentationState:(id)state
{
  infoCopy = info;
  dataCopy = data;
  graphicCopy = graphic;
  stateCopy = state;
  v13 = [infoCopy firstChildOfType:61457];
  v14 = [v13 firstChildOfType:3011];
  v15 = v14;
  if (v14)
  {
    eshObject = [v14 eshObject];
    if (eshObject)
    {
      if (v17)
      {
        v18 = v17;
        v19 = objc_alloc_init(PDPlaceholder);
        [dataCopy setPlaceholder:v19];
        [(PDPlaceholder *)v19 setIndex:v18[12]];
        v20 = [PBPlaceholder readPlaceholderType:*(v18 + 52)];
        [(PDPlaceholder *)v19 setType:v20];
        [(PDPlaceholder *)v19 setSize:[PBPlaceholder readPlaceholderSize:*(v18 + 53)]];
        [(PDPlaceholder *)v19 setOrientation:[PBPlaceholder readPlaceholderOrientation:*(v18 + 52)]];
        v21 = objc_opt_class();
        v22 = TSUDynamicCast(v21, graphicCopy);
        v39 = v22;
        if (v20 != 5)
        {
          if ((v20 & 0xFFFFFFFD) != 4 || !v22)
          {
            goto LABEL_22;
          }

          slideMaster = [infoCopy firstChildOfType:61453];
          if (slideMaster)
          {
            [stateCopy setSourceTextBoxContainerHolder:slideMaster forTargetShape:v39];
          }

          goto LABEL_21;
        }

        tgtSlide = [stateCopy tgtSlide];
        objc_opt_class();
        v24 = objc_opt_isKindOfClass() | (v22 == 0);

        if (v24)
        {
LABEL_22:
          v34 = [PDPlaceholder isTextType:v20];
          shapeProperties = [v39 shapeProperties];
          [shapeProperties setIsTextBox:v34];

          v29 = 1;
          goto LABEL_23;
        }

        tgtSlide2 = [stateCopy tgtSlide];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          tgtSlide3 = [stateCopy tgtSlide];
          slideMaster = [tgtSlide3 slideMaster];
        }

        else
        {
          tgtSlide4 = [stateCopy tgtSlide];
          objc_opt_class();
          v31 = objc_opt_isKindOfClass();

          if ((v31 & 1) == 0)
          {
            textBody = 0;
            slideMaster = 0;
LABEL_20:

LABEL_21:
            goto LABEL_22;
          }

          tgtSlide5 = [stateCopy tgtSlide];
          slideLayout = [tgtSlide5 slideLayout];
          slideMaster = [slideLayout slideMaster];

          tgtSlide3 = tgtSlide5;
        }

        if (slideMaster)
        {
          v38 = [slideMaster placeholderWithType:5 placeholderTypeIndex:0 overrideIndex:1];
          textBody = [v38 textBody];

          if (textBody)
          {
            [v39 setTextBody:textBody];
          }
        }

        else
        {
          textBody = 0;
        }

        goto LABEL_20;
      }
    }
  }

  v29 = 0;
LABEL_23:

  return v29;
}

+ (id)newTargetFromDrawable:(id)drawable clientData:(id)data buildType:(int)type
{
  drawableCopy = drawable;
  dataCopy = data;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([drawableCopy shapeProperties], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isTextBox"), v9, (v10))
    {
      v11 = off_2799C5810;
    }

    else
    {
      v11 = off_2799C5800;
    }

    v12 = objc_alloc_init(*v11);
    [(PDAnimationShapeTarget *)v12 setDrawable:drawableCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = drawableCopy;
      if ([dataCopy hasOleChart])
      {
        v12 = objc_alloc_init(PDAnimationOleChartTarget);
        [(PDAnimationShapeTarget *)v12 setDrawable:v14];
        if ((type - 7) >= 4)
        {
          v15 = 0;
        }

        else
        {
          v15 = (type - 6);
        }

        [(PDAnimationOleChartTarget *)v12 setChartSubElementType:v15];
      }

      else
      {
        v16 = [v14 ole];
        object = [v16 object];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v12 = objc_alloc_init(PDAnimationSoundTarget);
        }

        else
        {
          v12 = objc_alloc_init(PDAnimationShapeTarget);
        }

        [(PDAnimationShapeTarget *)v12 setDrawable:v14];
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

+ (int)presetIdFromFlyMethod:(int)method isEntrance:(BOOL)entrance
{
  if (method > 51)
  {
    if (method <= 71)
    {
      if (method == 52)
      {
        return 15;
      }

      if (method == 62)
      {
        v5 = !entrance;
        v6 = 50;
        v7 = 17;
LABEL_24:
        if (v5)
        {
          return v6;
        }

        else
        {
          return v7;
        }
      }
    }

    else
    {
      if (method == 72)
      {
        return 23;
      }

      if (method == 82)
      {
        return 19;
      }
    }

    return 1;
  }

  result = 24;
  switch(method)
  {
    case 1:
      return result;
    case 2:
      result = 3;
      break;
    case 3:
      result = 5;
      break;
    case 5:
      result = 9;
      break;
    case 6:
      result = 10;
      break;
    case 8:
      result = 14;
      break;
    case 9:
      result = 18;
      break;
    case 10:
      result = 22;
      break;
    case 11:
      result = 4;
      break;
    case 12:
      result = 2;
      break;
    case 13:
      result = 16;
      break;
    case 14:
      result = 11;
      break;
    case 17:
      v5 = !entrance;
      v6 = 10;
      v7 = 160;
      goto LABEL_24;
    case 19:
      result = 20;
      break;
    case 26:
      result = 21;
      break;
    case 32:
      result = 7;
      break;
    case 42:
      result = 12;
      break;
    default:
      return 1;
  }

  return result;
}

+ (int)directionFromFlyDirection:(int)direction
{
  if (direction > 0x47)
  {
    return 1;
  }

  else
  {
    return *&asc_25D70F2E0[4 * direction];
  }
}

+ (id)newBuildFromBuildType:(int)type
{
  if ((type - 2) <= 4)
  {
    v4 = objc_alloc_init(PDParagraphBuild);
    [(PDParagraphBuild *)v4 setBuildLevel:(type - 1)];
    [(PDParagraphBuild *)v4 setType:2];
    goto LABEL_5;
  }

  if ((type - 7) <= 3)
  {
    v4 = [[PDChartBuild alloc] initWithBuildType:(type - 6)];
LABEL_5:
    if (!type)
    {
      return v4;
    }

    goto LABEL_8;
  }

  v4 = 0;
  if (!type)
  {
    return v4;
  }

LABEL_8:
  if (v4)
  {
    return v4;
  }

  return objc_alloc_init(PDBuild);
}

@end