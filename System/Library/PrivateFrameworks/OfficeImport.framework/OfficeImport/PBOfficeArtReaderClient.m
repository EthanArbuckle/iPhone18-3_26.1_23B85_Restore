@interface PBOfficeArtReaderClient
+ (BOOL)readClientTextBoxFromShape:(id)a3 toGraphic:(id)a4 clientData:(id)a5 state:(id)a6;
+ (BOOL)readOleFromClientDataHolder:(id)a3 toGraphic:(id)a4 tgtClientData:(id)a5 state:(id)a6;
+ (BOOL)readPlaceholderInfo:(id)a3 clientData:(id)a4 toGraphic:(id)a5 presentationState:(id)a6;
+ (BOOL)readRecolorInfoFromClientDataHolder:(id)a3 toClientData:(id)a4 state:(id)a5;
+ (id)newBuildFromBuildType:(int)a3;
+ (id)newTargetFromDrawable:(id)a3 clientData:(id)a4 buildType:(int)a5;
+ (id)readClientTextBoxFromShape:(id)a3 toTextBody:(id)a4 state:(id)a5;
+ (id)readDrawableFromPackagePart:(id)a3 foundInObject:(id)a4 state:(id)a5;
+ (int)directionFromFlyDirection:(int)a3;
+ (int)presetIdFromFlyMethod:(int)a3 isEntrance:(BOOL)a4;
+ (void)addRecolorSpec:(const PptRecolorSpec *)a3 toDictionary:(id)a4 state:(id)a5;
+ (void)readClientAnchorFromContainer:(id)a3 toDrawable:(id)a4 state:(id)a5;
+ (void)readClientDataFromGroup:(id)a3 toGroup:(id)a4 state:(id)a5;
+ (void)readClientDataFromShape:(id)a3 toGraphic:(id)a4 state:(id)a5;
+ (void)readClientDataFromTableCell:(id)a3 toTableCell:(id)a4 state:(id)a5;
+ (void)readHyperlinkFromShapeContainerHolder:(id)a3 toDrawable:(id)a4 state:(id)a5;
@end

@implementation PBOfficeArtReaderClient

+ (id)readClientTextBoxFromShape:(id)a3 toTextBody:(id)a4 state:(id)a5
{
  v7 = a3;
  v8 = a4;
  v29 = a5;
  objc_opt_class();
  v9 = [v29 presentationState];
  objc_opt_class();
  v10 = v7;
  objc_opt_class();
  v11 = [v10 firstChildOfType:61457];
  if (v11)
  {
    [PBProgTag readClientData:v11 state:v9];
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
      v16 = [v9 currentSlideTextBlockRecordIndexRangeVector];
      if (v15 < ((v16[1] - *v16) >> 4))
      {
        v17 = (*v16 + 16 * v15);
        v18 = v17[1];
        if (v18)
        {
          v28 = v8;
          v19 = *v17;
          v20 = [(ESDObject *)[ESDContainer alloc] initWithType:61453];
          if (v20)
          {
            if (v19 < v18 + v19)
            {
              do
              {
                v21 = [v9 sourceSlideListHolder];
                v22 = [v21 childAt:v19];
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
              [PBTextBlock readClientTextBox:v20 textBody:v28 state:v9];
            }
          }

          v8 = v28;
        }
      }
    }

    else
    {
      v25 = [v12 firstChildOfType:3999];
      v26 = ESDAtomAccess<PptTextHeaderAtom>::extractAtom(v25, 0);

      if (v26)
      {
        [PBTextBlock readClientTextBox:v12 textBody:v8 state:v9];
      }
    }
  }

  return v12;
}

+ (BOOL)readClientTextBoxFromShape:(id)a3 toGraphic:(id)a4 clientData:(id)a5 state:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  objc_opt_class();
  v14 = [v13 presentationState];
  v15 = objc_opt_class();
  v16 = TSUDynamicCast(v15, v11);
  if (v16)
  {
    v31 = v12;
    v17 = objc_alloc_init(OADTextBody);
    v18 = [a1 readClientTextBoxFromShape:v10 toTextBody:v17 state:v13];
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
            v30 = [v14 tgtSlide];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              [v31 setInheritedTextStylePlaceholderType:v25];
            }
          }

          v27 = [PDPlaceholder isTextType:v25, v30];
          v28 = [v16 shapeProperties];
          [v28 setIsTextBox:v27];
        }
      }

      [v16 setTextBody:v17];
    }

    v12 = v31;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

+ (void)readClientDataFromShape:(id)a3 toGraphic:(id)a4 state:(id)a5
{
  v17 = a3;
  v8 = a4;
  v9 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v9 presentationState];
    v11 = v17;
    v12 = [v11 firstChildOfType:61457];
    v13 = objc_alloc_init(PDOfficeArtClient);
    [a1 readClientAnchorFromContainer:v11 toDrawable:v8 state:v9];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [a1 readPlaceholderInfo:v11 clientData:v13 toGraphic:v8 presentationState:v10];
    }

    else
    {
      v14 = 0;
    }

    v15 = [a1 readClientTextBoxFromShape:v11 toGraphic:v8 clientData:v13 state:v9];
    [a1 readHyperlinkFromShapeContainerHolder:v11 toDrawable:v8 state:v9];
    v16 = [a1 readRecolorInfoFromClientDataHolder:v11 toClientData:v13 state:v9];
    if (v14 | v15 | v16 | [a1 readOleFromClientDataHolder:v11 toGraphic:v8 tgtClientData:v13 state:v10])
    {
      [v8 setClientData:v13];
    }
  }
}

+ (void)readClientDataFromGroup:(id)a3 toGroup:(id)a4 state:(id)a5
{
  v10 = a4;
  v8 = a5;
  v9 = [a3 firstChildOfType:6];
  [a1 readClientAnchorFromContainer:v9 toDrawable:v10 state:v8];
}

+ (void)readClientDataFromTableCell:(id)a3 toTableCell:(id)a4 state:(id)a5
{
  v12 = a3;
  v7 = a4;
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 presentationState];
    v10 = [v12 firstChildOfType:61453];
    if (v10)
    {
      v11 = objc_alloc_init(OADTextBody);
      [PBTextBlock readClientTextBox:v10 textBody:v11 state:v9];
      [v7 setTextBody:v11];
    }
  }
}

+ (id)readDrawableFromPackagePart:(id)a3 foundInObject:(id)a4 state:(id)a5
{
  v8 = a3;
  v60 = a4;
  v56 = a5;
  objc_opt_class();
  v9 = v56;
  v58 = [v9 presentationState];
  v10 = [v9 xmlDrawingState];
  v11 = [v10 client];
  v12 = [v11 presentationState];

  v57 = v12;
  v13 = [v58 tgtSlide];
  [v10 setPackagePart:v8];
  v14 = [v13 styleMatrix];
  [v10 setStyleMatrix:v14];

  v15 = [v13 colorScheme];
  [v10 setColorScheme:v15];

  v16 = [v13 colorMap];
  [v10 setColorMap:v16];

  v17 = [v13 fontScheme];
  [v10 setFontScheme:v17];

  v18 = OCXGetRootElement([v8 xmlDocument]);
  v59 = [v12 PXPresentationMLNamespace];
  v19 = [v8 contentType];
  v20 = [v19 isEqualToString:@"application/vnd.ms-office.DrsConnector+xml"];

  if (v20)
  {
    v21 = off_2799C5768;
LABEL_11:
    v30 = [(__objc2_class *)*v21 readFromXmlNode:v18 inNamespace:v59 drawingState:v10];
    goto LABEL_12;
  }

  v22 = [v8 contentType];
  v23 = [v22 isEqualToString:@"application/vnd.ms-office.DrsE2oDoc+xml"];

  if (v23)
  {
    v21 = off_2799C5770;
    goto LABEL_11;
  }

  v24 = [v8 contentType];
  v25 = [v24 isEqualToString:@"application/vnd.ms-office.DrsGroupShape+xml"];

  if (v25)
  {
    v21 = off_2799C5778;
    goto LABEL_11;
  }

  v26 = [v8 contentType];
  v27 = [v26 isEqualToString:@"application/vnd.ms-office.DrsPicture+xml"];

  if (v27)
  {
    v21 = off_2799C5780;
    goto LABEL_11;
  }

  v28 = [v8 contentType];
  v29 = [v28 isEqualToString:@"application/vnd.ms-office.DrsShape+xml"];

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
    v34 = [a1 readClientTextBoxFromShape:v60 toTextBody:v33 state:v9];
    v35 = [v32 textBody];
    v36 = [v35 isSimilarToTextBody:v33];

    if ((v36 & 1) == 0)
    {
      v37 = [v60 eshShape];
      if (v37)
      {
        v38 = [v33 properties];
        [OABTextBodyProperties readTextBodyProperties:v38 textBox:v37 + 272 useDefaults:0 state:v9];
      }

      [v32 setTextBody:v33];
    }
  }

  v39 = objc_opt_class();
  v40 = TSUDynamicCast(v39, v60);
  if (v40)
  {
    v41 = objc_opt_class();
    v42 = [v40 firstChildOfType:61457];
    v43 = TSUDynamicCast(v41, v42);

    if (v43)
    {
      v44 = [v43 firstChildOfType:1055];
      Atom = ESDAtomAccess<PptRoundTripShapeIdAtom>::extractAtom(v44, 0);

      v46 = [v9 useXmlBlobs];
      v47 = Atom ? v46 : 0;
      if (v47)
      {
        v48 = Atom[12];
        v55 = [v9 presentationState];
        v49 = objc_opt_class();
        v50 = [v55 tgtSlide];
        v51 = TSUDynamicCast(v49, v50);

        if (v51)
        {
          v54 = [v51 slideLayout];
          v52 = [v54 drawables];
          v61[0] = MEMORY[0x277D85DD0];
          v61[1] = 3221225472;
          v61[2] = __75__PBOfficeArtReaderClient_readDrawableFromPackagePart_foundInObject_state___block_invoke;
          v61[3] = &unk_2799CDA90;
          v62 = v30;
          v63 = v48;
          [v52 enumerateObjectsUsingBlock:v61];
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

+ (void)readClientAnchorFromContainer:(id)a3 toDrawable:(id)a4 state:(id)a5
{
  v31 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v31 firstChildOfType:61456];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 eshObject];
    if (v11)
    {
    }

    else
    {
      v12 = 0;
    }

    if ([v8 groupDepth] <= 0)
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
    v18 = [v7 drawableProperties];
    v19 = [v18 hasOrientedBounds];
    v20 = (v13 * v15);
    v21 = (v13 * v14);
    v22 = (v13 * (v17 - v15));
    v23 = (v13 * (v16 - v14));

    if (v19)
    {
      v24 = [v7 drawableProperties];
      v25 = [v24 orientedBounds];

      [v25 rotation];
      if ([OADOrientedBounds directionCloserToVerticalThanToHorizontal:?])
      {
        v20 = NSTransposedRectWithSameCenter(v20, v21, v22, v23);
        v21 = v26;
        v22 = v27;
        v23 = v28;
      }

      [v25 setBounds:{v20, v21, v22, v23}];
    }

    else
    {
      v29 = [[OADOrientedBounds alloc] initWithBounds:v20, v21, v22, v23];
      v30 = [v7 drawableProperties];
      [v30 setOrientedBounds:v29];

      v25 = v29;
    }
  }
}

+ (void)readHyperlinkFromShapeContainerHolder:(id)a3 toDrawable:(id)a4 state:(id)a5
{
  v16 = a4;
  v7 = a5;
  v8 = [a3 firstChildOfType:61457];
  if (v8)
  {
    v9 = [v7 presentationState];
    v10 = [v8 childOfType:4082 instance:0];
    if (v10)
    {
      v11 = [PBHyperlink readAnimationInfoContainerHolder:v10 presentationState:v9];
      v12 = [v16 drawableProperties];
      [v12 setClickHyperlink:v11];
    }

    v13 = [v8 childOfType:4082 instance:1];
    if (v13)
    {
      v14 = [PBHyperlink readAnimationInfoContainerHolder:v13 presentationState:v9];
      v15 = [v16 drawableProperties];
      [v15 setHoverHyperlink:v14];
    }
  }
}

+ (BOOL)readRecolorInfoFromClientDataHolder:(id)a3 toClientData:(id)a4 state:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 firstChildOfType:61457];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 firstChildOfType:4071];
    v14 = v13;
    if (v13 && (v15 = [v13 eshObject]) != 0)
    {
      v29 = v9;
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
            [a1 addRecolorSpec:XlChartDataSeries::getCachedCustomFormat(v17 toDictionary:v20) state:{v18, v10}];
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
            [a1 addRecolorSpec:XlChartDataSeries::getCachedCustomLabel(v17 toDictionary:v24) state:{v22, v10}];
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

      v9 = v29;
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

+ (void)addRecolorSpec:(const PptRecolorSpec *)a3 toDictionary:(id)a4 state:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (a3->var3)
  {
    EshColor::EshColor(&v14, &a3->var2);
    Red = EshColor::getRed(&v14);
    Green = EshColor::getGreen(&v14);
    v11 = [OITSUColor colorWithCalibratedRed:Red / 255.0 green:Green / 255.0 blue:EshColor::getBlue(&v14) / 255.0 alpha:1.0];
    EshColor::EshColor(&v13, &a3->var1);
    v12 = [OABColor readColor:&v13 colorPropertiesManager:0 state:v8];
    [v7 setObject:v12 forKey:v11];
  }
}

+ (BOOL)readOleFromClientDataHolder:(id)a3 toGraphic:(id)a4 tgtClientData:(id)a5 state:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v69 = a6;
  v12 = objc_opt_class();
  v13 = TSUDynamicCast(v12, v10);
  if (!v13)
  {
    v25 = 0;
    goto LABEL_66;
  }

  v14 = [v9 firstChildOfType:61457];
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

  v66 = v10;
  v67 = v11;
  v68 = v13;
  v64 = v16;
  v65 = v15;
  v18 = [v16 eshObject];
  {
    [TCMessageException raise:TCUnknownProblemMessage];
    v19 = 0;
  }

  v70 = v19[12];
  DocumentRef = PptBinaryReader::getDocumentRef([v69 reader]);
  v21 = [v69 documentRoot];
  v22 = [v21 pbReferenceWithID:DocumentRef];

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
    v29 = [v28 eshObject];
    v30 = (*(*v29 + 16))(v29);
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
        v33 = [v32 eshObject];
        {
          [TCMessageException raise:TCUnknownProblemMessage];
          v34 = 0;
        }

        if (v34[12] != v70)
        {
          goto LABEL_57;
        }

        v35 = [PBMedia readLinkedMovieFromMovieHolder:v28 toImage:v68 state:v69];
        goto LABEL_29;
      }

      if (v31 == 37)
      {
        v32 = [v28 firstChildOfType:4100];
        v40 = [v32 eshObject];
        {
          [TCMessageException raise:TCUnknownProblemMessage];
          v41 = 0;
        }

        if (v41[12] != v70)
        {
          goto LABEL_57;
        }

        v35 = [PBMedia readEmbeddedSoundFromClientDataHolder:v28 toImage:v68 state:v69];
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

      v42 = [v32 eshObject];
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

        v45 = [v44 eshObject];
        if (v45)
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

        v62 = v9;
        v48 = v43[16];
        v49 = [v69 documentRoot];
        v50 = [v49 pbReferenceWithID:v48];

        v61 = v50;
        v51 = [v50 eshObject];
        {
          v53 = v52;
          v54 = v52[12];
          (*(*v54 + 16))(v54, *(v52 + 16), 0);
          v60 = *(v53 + 18);
          v59 = *(v53 + 12);
          v55 = [v69 cancelDelegate];
          if (v59)
          {
            [OABOle readCompressedFromStream:v54 compressedSize:v60 uncompressedSize:v59 cancel:v55];
          }

          else
          {
            [OABOle readFromStream:v54 size:v60 cancel:v55];
          }
          v57 = ;

          if (v57)
          {
            v9 = v62;
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

        v9 = v62;
        goto LABEL_54;
      }

      goto LABEL_57;
    }

    v36 = [v28 firstContainerChildOfType:4101 mustExist:0];
    v32 = v36;
    if (v36)
    {
      v37 = [v36 firstChildOfType:4100];
      v38 = [v37 eshObject];
      {
        [TCMessageException raise:TCUnknownProblemMessage];
        v39 = 0;
      }

      if (v39[12] == v70)
      {
        v25 = [PBMedia readLinkedMovieFromMovieHolder:v32 toImage:v68 state:v69];
      }

      goto LABEL_56;
    }

LABEL_57:

LABEL_58:
    v24 = v27 + 1;
  }

  v10 = v66;
  v11 = v67;
  v13 = v68;
  v17 = v64;
  v15 = v65;
LABEL_64:

LABEL_65:
LABEL_66:

  return v25;
}

+ (BOOL)readPlaceholderInfo:(id)a3 clientData:(id)a4 toGraphic:(id)a5 presentationState:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v9 firstChildOfType:61457];
  v14 = [v13 firstChildOfType:3011];
  v15 = v14;
  if (v14)
  {
    v16 = [v14 eshObject];
    if (v16)
    {
      if (v17)
      {
        v18 = v17;
        v19 = objc_alloc_init(PDPlaceholder);
        [v10 setPlaceholder:v19];
        [(PDPlaceholder *)v19 setIndex:v18[12]];
        v20 = [PBPlaceholder readPlaceholderType:*(v18 + 52)];
        [(PDPlaceholder *)v19 setType:v20];
        [(PDPlaceholder *)v19 setSize:[PBPlaceholder readPlaceholderSize:*(v18 + 53)]];
        [(PDPlaceholder *)v19 setOrientation:[PBPlaceholder readPlaceholderOrientation:*(v18 + 52)]];
        v21 = objc_opt_class();
        v22 = TSUDynamicCast(v21, v11);
        v39 = v22;
        if (v20 != 5)
        {
          if ((v20 & 0xFFFFFFFD) != 4 || !v22)
          {
            goto LABEL_22;
          }

          v28 = [v9 firstChildOfType:61453];
          if (v28)
          {
            [v12 setSourceTextBoxContainerHolder:v28 forTargetShape:v39];
          }

          goto LABEL_21;
        }

        v23 = [v12 tgtSlide];
        objc_opt_class();
        v24 = objc_opt_isKindOfClass() | (v22 == 0);

        if (v24)
        {
LABEL_22:
          v34 = [PDPlaceholder isTextType:v20];
          v35 = [v39 shapeProperties];
          [v35 setIsTextBox:v34];

          v29 = 1;
          goto LABEL_23;
        }

        v25 = [v12 tgtSlide];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v27 = [v12 tgtSlide];
          v28 = [v27 slideMaster];
        }

        else
        {
          v30 = [v12 tgtSlide];
          objc_opt_class();
          v31 = objc_opt_isKindOfClass();

          if ((v31 & 1) == 0)
          {
            v33 = 0;
            v28 = 0;
LABEL_20:

LABEL_21:
            goto LABEL_22;
          }

          v37 = [v12 tgtSlide];
          v32 = [v37 slideLayout];
          v28 = [v32 slideMaster];

          v27 = v37;
        }

        if (v28)
        {
          v38 = [v28 placeholderWithType:5 placeholderTypeIndex:0 overrideIndex:1];
          v33 = [v38 textBody];

          if (v33)
          {
            [v39 setTextBody:v33];
          }
        }

        else
        {
          v33 = 0;
        }

        goto LABEL_20;
      }
    }
  }

  v29 = 0;
LABEL_23:

  return v29;
}

+ (id)newTargetFromDrawable:(id)a3 clientData:(id)a4 buildType:(int)a5
{
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([v7 shapeProperties], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isTextBox"), v9, (v10))
    {
      v11 = off_2799C5810;
    }

    else
    {
      v11 = off_2799C5800;
    }

    v12 = objc_alloc_init(*v11);
    [(PDAnimationShapeTarget *)v12 setDrawable:v7];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v7;
      if ([v8 hasOleChart])
      {
        v12 = objc_alloc_init(PDAnimationOleChartTarget);
        [(PDAnimationShapeTarget *)v12 setDrawable:v14];
        if ((a5 - 7) >= 4)
        {
          v15 = 0;
        }

        else
        {
          v15 = (a5 - 6);
        }

        [(PDAnimationOleChartTarget *)v12 setChartSubElementType:v15];
      }

      else
      {
        v16 = [v14 ole];
        v17 = [v16 object];
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

+ (int)presetIdFromFlyMethod:(int)a3 isEntrance:(BOOL)a4
{
  if (a3 > 51)
  {
    if (a3 <= 71)
    {
      if (a3 == 52)
      {
        return 15;
      }

      if (a3 == 62)
      {
        v5 = !a4;
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
      if (a3 == 72)
      {
        return 23;
      }

      if (a3 == 82)
      {
        return 19;
      }
    }

    return 1;
  }

  result = 24;
  switch(a3)
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
      v5 = !a4;
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

+ (int)directionFromFlyDirection:(int)a3
{
  if (a3 > 0x47)
  {
    return 1;
  }

  else
  {
    return *&asc_25D70F2E0[4 * a3];
  }
}

+ (id)newBuildFromBuildType:(int)a3
{
  if ((a3 - 2) <= 4)
  {
    v4 = objc_alloc_init(PDParagraphBuild);
    [(PDParagraphBuild *)v4 setBuildLevel:(a3 - 1)];
    [(PDParagraphBuild *)v4 setType:2];
    goto LABEL_5;
  }

  if ((a3 - 7) <= 3)
  {
    v4 = [[PDChartBuild alloc] initWithBuildType:(a3 - 6)];
LABEL_5:
    if (!a3)
    {
      return v4;
    }

    goto LABEL_8;
  }

  v4 = 0;
  if (!a3)
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