@interface PBPresentation
+ (id)drawingGroupHolderWithDocumentContainerHolder:(id)a3;
+ (void)addHeadersFootersToDocumentContainer:(id)a3 instance:(int)a4;
+ (void)processLayoutTypesFromDocument:(id)a3 masterLayoutMap:(id)a4 state:(id)a5;
+ (void)readCommentAuthorsFrom:(id)a3 state:(id)a4;
+ (void)readDefaultTextListStyle:(id)a3 fromDocumentContainer:(id)a4 state:(id)a5;
+ (void)readFrom:(void *)a3 to:(id)a4 cancel:(id)a5 asThumbnail:(BOOL)a6 delegate:(id)a7;
+ (void)readMasterAndLayouts:(id)a3 masterLayoutMap:(id)a4 state:(id)a5;
+ (void)readNotes:(id)a3 masterLayoutMap:(id)a4 slideIdMap:(id)a5 state:(id)a6 delegate:(id)a7;
+ (void)readSlideListWithInstance:(int)a3 documentContainerHolder:(id)a4 state:(id)a5 block:(id)a6;
+ (void)readSlides:(id)a3 masterLayoutMap:(id)a4 slideIdMap:(id)a5 state:(id)a6 isThumbnail:(BOOL)a7 delegate:(id)a8;
+ (void)readTextStyleFromNotesMaster:(id)a3 toNotesMaster:(id)a4 slideMaster:(id)a5 state:(id)a6;
+ (void)readTextStylesFromSlideMaster:(id)a3 toSlideMaster:(id)a4 state:(id)a5;
+ (void)readThemeFromSlideMaster:(id)a3 document:(id)a4 theme:(id)a5 colorMap:(id)a6 state:(id)a7;
+ (void)readXmlLayoutsFromSlideMaster:(id)a3 document:(id)a4 masterInfo:(id)a5 state:(id)a6;
+ (void)scanSlideListForLayoutTypes:(id)a3 slideListHolder:(id)a4 masterLayoutMap:(id)a5;
+ (void)setDefaultTextStyleWithEnvironmentHolder:(id)a3 state:(id)a4;
+ (void)setFontEntites:(id)a3 environmentHolder:(id)a4;
@end

@implementation PBPresentation

+ (id)drawingGroupHolderWithDocumentContainerHolder:(id)a3
{
  v3 = [a3 firstChildOfType:1035];
  objc_opt_class();
  v4 = (objc_opt_isKindOfClass() & 1) != 0 && [v3 childCount] == 1;
  TCVerifyInputMeetsCondition(v4);
  v5 = [v3 childAt:0];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  TCVerifyInputMeetsCondition(isKindOfClass & 1);

  return v5;
}

+ (void)readFrom:(void *)a3 to:(id)a4 cancel:(id)a5 asThumbnail:(BOOL)a6 delegate:(id)a7
{
  v47 = a6;
  v50 = a4;
  v11 = a5;
  v49 = a7;
  v12 = [[PBPresentationReaderState alloc] initWithReader:a3 tgtPresentation:v50];
  [(PBPresentationReaderState *)v12 setCancelDelegate:v11];
  v13 = [[ESDRoot alloc] initWithPbState:v12];
  [(PBPresentationReaderState *)v12 setDocumentRoot:v13];
  v14 = [(ESDRoot *)v13 pbReferenceWithID:PptBinaryReader::getDocumentRef(a3)];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  TCVerifyInputMeetsCondition(isKindOfClass & 1);

  v16 = [v14 firstChildOfType:1010];
  objc_opt_class();
  v17 = objc_opt_isKindOfClass();
  TCVerifyInputMeetsCondition(v17 & 1);
  [a1 setFontEntites:v12 environmentHolder:v16];
  [a1 setDefaultTextStyleWithEnvironmentHolder:v16 state:v12];
  v18 = [v14 firstChildOfType:1001];
  Atom = ESDAtomAccess<PptDocumentAtom>::extractAtom(v18, 1);

  [PBHyperlink readHyperlinksWithPresentationState:v12];
  v48 = [v14 firstChildOfType:2000];
  objc_opt_class();
  v20 = objc_opt_isKindOfClass();
  TCVerifyInputMeetsCondition(v20 & 1);
  objc_opt_class();
  [PBProgTag readDocumentList:v48 state:v12];
  [v50 setSlideSize:{(Atom[12] / 8), (Atom[13] / 8)}];
  [v50 setNotesSize:{(Atom[14] / 8), (Atom[15] / 8)}];
  [v50 setIsCommentsVisible:*(Atom + 82) != 0];
  v21 = [v14 firstChildOfType:1025];
  v44 = v21;
  if (v21)
  {
    v22 = [v21 eshObject];
    if (v22)
    {
    }

    else
    {
      v23 = 0;
    }

    TCVerifyInputMeetsCondition(v23 != 0);
    [v50 setIsLooping:*(v23 + 101)];
    [v50 setIsKiosk:v23[24] == 32];
  }

  v46 = [a1 drawingGroupHolderWithDocumentContainerHolder:v14];
  v24 = [(PBPresentationReaderState *)v12 officeArtState];
  [OABDrawingGroup readBlipsFromDrawingGroup:v46 toDocument:v50 state:v24];

  v25 = [v16 firstChildOfType:4009];
  v26 = ESDAtomAccess<PptTextDefaultSpecialInfoAtom>::extractAtom(v25, 0);

  if (v26)
  {
    v27 = [v50 defaultTextStyle];
    v28 = [v27 defaultProperties];
    [PBCharacterProperties readCharacterProperties:v28 specialInfo:v26 + 48 state:v12];
  }

  v29 = [(PBPresentationReaderState *)v12 officeArtState];
  v45 = [v29 xmlDocumentState];
  v30 = [(PBPresentationReaderState *)v12 officeArtState];
  v31 = [v30 useXmlBlobs];

  if (v31)
  {
    v32 = [v14 firstChildOfType:1064];
    v33 = ESDAtomAccess<PptRoundTripCustomTableStylesAtom>::extractAtom(v32, 0);

    if (v33)
    {
      v34 = OCPNewZipPackageWithOcBinaryData(v33 + 1);
      v35 = v34;
      if (v34)
      {
        v43 = v11;
        v42 = [v34 partByRelationshipType:@"http://schemas.openxmlformats.org/officeDocument/2006/relationships/tableStyles"];
        v36 = [v45 tableStyleCache];
        v37 = [v45 officeArtState];
        [OAXTable cacheTableStylesInPart:v42 cache:v36 drawingState:v37];

        v11 = v43;
      }
    }
  }

  v38 = +[PBMasterLayoutMap masterLayoutMap];
  [a1 readMasterAndLayouts:v14 masterLayoutMap:v38 state:v12];
  v39 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [a1 readSlides:v14 masterLayoutMap:v38 slideIdMap:v39 state:v12 isThumbnail:v47 delegate:v49];
  if (!v47)
  {
    [a1 readNotes:v14 masterLayoutMap:v38 slideIdMap:v39 state:v12 delegate:v49];
  }

  v40 = [v50 summary];
  if (a3)
  {
    v41 = a3 + 8;
  }

  else
  {
    v41 = 0;
  }

  [OCBSummary readSummary:v40 reader:v41];

  if (v49 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v49 readerDidEndDocument:v50];
  }
}

+ (void)setFontEntites:(id)a3 environmentHolder:(id)a4
{
  v15 = a3;
  v5 = a4;
  v6 = [v5 firstChildOfType:2005];
  if (v6)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    TCVerifyInputMeetsCondition(isKindOfClass & 1);
    v8 = [v6 childCount];
    if (v8)
    {
      for (i = 0; i != v8; ++i)
      {
        v10 = [v6 childAt:i];
        v11 = [v10 eshObject];
        if ((*(*v11 + 16))(v11) == 4023)
        {
          v12 = [v10 eshObject];
          if (v12)
          {
          }

          else
          {
            v13 = 0;
          }

          v14 = [MEMORY[0x277CCACA8] stringWithCsString:v13 + 48];
          [v15 addFontEntity:v14 charSet:v13[73] type:v13[72] & 3 family:v13[72] & 0xF0];
        }
      }
    }
  }
}

+ (void)addHeadersFootersToDocumentContainer:(id)a3 instance:(int)a4
{
  v4 = a4;
  [a3 addPptContainerChildOfType:4057];
  v5 = [objc_claimAutoreleasedReturnValue() eshContainer];
  EshRecord::setInstance(v5, v4);
  operator new();
}

+ (void)setDefaultTextStyleWithEnvironmentHolder:(id)a3 state:(id)a4
{
  v14 = a3;
  v5 = a4;
  v6 = [v14 indexOfFirstChildOfType:4003 afterIndex:0];
  while (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [v14 childAt:v6];
    TCVerifyInputMeetsCondition(v7 != 0);
    v8 = [v7 eshObject];
    if (v8)
    {
      if (v9)
      {
        v10 = v9;
        Instance = EshRecord::getInstance(v9);
        TCVerifyInputMeetsCondition(Instance < 9);
        *[v5 docSourceMasterStyleInfoOfType:Instance] = v10;
        if (Instance == 4)
        {
          v12 = [v5 tgtPresentation];
          v13 = [v12 defaultTextStyle];
          [PBMasterStyle readMasterStyleAtom:v10 baseMasterStyleAtom:0 masterBulletStyleAtom:0 textListStyle:v13 state:v5];
        }
      }
    }

    v6 = [v14 indexOfFirstChildOfType:4003 afterIndex:v6];
  }
}

+ (void)readDefaultTextListStyle:(id)a3 fromDocumentContainer:(id)a4 state:(id)a5
{
  v27 = a3;
  v7 = a4;
  v8 = a5;
  v25 = v7;
  v26 = [v7 firstChildOfType:1010];
  v9 = [v26 firstChildOfType:4005];
  Atom = ESDAtomAccess<PptTextDefaultParagraphStyleAtom>::extractAtom(v9, 0);

  v11 = [v26 firstChildOfType:4004];
  v12 = ESDAtomAccess<PptTextDefaultCharacterStyleAtom>::extractAtom(v11, 0);

  v13 = [v26 firstChildOfType:4009];
  v14 = ESDAtomAccess<PptTextDefaultSpecialInfoAtom>::extractAtom(v13, 0);

  v23 = [v25 firstChildOfType:2000];
  v22 = [PBProgTag binaryTagDataWithName:L"___PPT9" inProgTagsParent:v23];
  v15 = [v22 firstChildOfType:4016];
  ESDAtomAccess<PptTextDefaultStyle9Atom>::extractAtom(v15, 0);

  v24 = [v27 defaultProperties];
  if (v14)
  {
    [PBCharacterProperties readCharacterProperties:v24 specialInfo:v14 + 48 state:v8];
  }

  v16 = [v26 childOfType:4003 instance:4];
  v17 = ESDAtomAccess<PptTextMasterStyleAtom>::extractAtom(v16, 1);

  v18 = v17[14] - v17[12];
  v19 = (v18 >> 3);
  if ((v18 >> 3))
  {
    v20 = 0;
    do
    {
      v21 = [v27 propertiesForListLevel:v20];
      if (v14)
      {
        [PBCharacterProperties readCharacterProperties:v21 specialInfo:v14 + 48 state:v8];
      }

      if (Atom)
      {
        operator new();
      }

      if (v12)
      {
        operator new();
      }

      ++v20;
    }

    while (v19 != v20);
  }
}

+ (void)readThemeFromSlideMaster:(id)a3 document:(id)a4 theme:(id)a5 colorMap:(id)a6 state:(id)a7
{
  v44 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [v44 firstChildOfType:1038];
  Atom = ESDAtomAccess<PptRoundTripThemeAtom>::extractAtom(v16, 0);

  v18 = [v15 officeArtState];
  v19 = [v18 useXmlBlobs];

  if (Atom)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (v20)
  {
    v21 = Atom[9];
    v22 = *(Atom + 16);
    v23 = [v15 officeArtState];
    v24 = [v23 xmlDrawingState];
    [OAXTheme readFromThemeData:v21 themeDataSize:v22 toTheme:v13 xmlDrawingState:v24];

    v25 = [v44 firstChildOfType:1039];
    v26 = ESDAtomAccess<PptRoundTripColorMappingAtom>::extractAtom(v25, 0);

    if (v26)
    {
      v27 = CXGetRootElement(*(v26 + 9), *(v26 + 16));
      if (v27)
      {
        [OAXColorMap readFromXmlNode:v27 toColorMap:v14];
        xmlFreeDoc(v27->doc);
      }
    }
  }

  else
  {
    v28 = [v13 baseStyles];
    v29 = [v28 colorScheme];
    [PBSlideBase readColorScheme:v44 colorScheme:v29 colorMap:v14 state:v15];

    v30 = [a1 drawingGroupHolderWithDocumentContainerHolder:v12];
    v31 = [v13 drawableDefaults];
    v32 = [v31 addShapeDefaults];

    v33 = [v13 drawableDefaults];
    v34 = [v33 addLineDefaults];

    v35 = [v13 drawableDefaults];
    v36 = [v35 addTextDefaults];

    v37 = [v15 officeArtState];
    [OABDrawingGroup readGraphicalDefaultsFromDrawingGroup:v30 toTheme:v13 state:v37];

    v38 = [v13 drawableDefaults];
    v39 = [v38 shapeDefaults];
    v40 = [v39 textListStyle];
    [a1 readDefaultTextListStyle:v40 fromDocumentContainer:v12 state:v15];

    v41 = [v13 drawableDefaults];
    v42 = [v41 textDefaults];
    v43 = [v42 textListStyle];
    [a1 readDefaultTextListStyle:v43 fromDocumentContainer:v12 state:v15];
  }
}

+ (void)readXmlLayoutsFromSlideMaster:(id)a3 document:(id)a4 masterInfo:(id)a5 state:(id)a6
{
  v26 = a3;
  v23 = a4;
  v25 = a5;
  v24 = a6;
  v9 = 0;
  while (1)
  {
    v9 = [v26 indexOfFirstChildOfType:1054 afterIndex:v9];
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    v10 = [v26 childAt:v9];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 eshObject];
      if (v12)
      {
        if (v13)
        {
          v14 = v13;
          v15 = OCPNewZipPackageWithOcBinaryData(v13 + 1);
          v16 = v15;
          if (v15)
          {
            v17 = [v15 partByRelationshipType:@"http://schemas.openxmlformats.org/officeDocument/2006/relationships/slideLayout"];
            if (v17)
            {
              v18 = [v25 slideMaster];
              v19 = [v18 addSlideLayout];

              Instance = EshRecord::getInstance(v14);
              v21 = [v24 officeArtState];
              v22 = [v21 xmlDocumentState];
              [PXSlideLayout readFromPackagePart:v17 toSlideLayout:v19 presentationState:v22];

              [v25 setSlideLayout:v19 forXmlLayoutId:Instance];
            }
          }
        }
      }
    }
  }
}

+ (void)readTextStylesFromSlideMaster:(id)a3 toSlideMaster:(id)a4 state:(id)a5
{
  v20 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v20 firstChildOfType:1059];
  Atom = ESDAtomAccess<PptRoundTripOfficeArtTextStylesAtom>::extractAtom(v9, 0);

  v11 = [v8 officeArtState];
  v12 = [v11 useXmlBlobs];

  if (Atom)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    v14 = OCPNewZipPackageWithOcBinaryData(Atom + 1);
    v15 = v14;
    if (v14)
    {
      v16 = [v14 partByRelationshipType:@"http://schemas.openxmlformats.org/officeDocument/2006/relationships/slideMaster"];
      v17 = OCXGetRootElement([v16 xmlDocument]);
      v18 = [v8 officeArtState];
      v19 = [v18 xmlDocumentState];
      [PXSlideMaster readTextStylesFromNode:v17 slideMaster:v7 state:v19];
    }
  }

  else
  {
    [PBSlideMaster setSlideMasterTextStyles:v7 state:v8];
  }
}

+ (void)readTextStyleFromNotesMaster:(id)a3 toNotesMaster:(id)a4 slideMaster:(id)a5 state:(id)a6
{
  v33 = a3;
  v9 = a4;
  v32 = a5;
  v10 = a6;
  v11 = [v33 firstChildOfType:1063];
  Atom = ESDAtomAccess<PptRoundTripNotesMasterTextStylesAtom>::extractAtom(v11, 0);

  v13 = [v10 officeArtState];
  v14 = [v13 useXmlBlobs];

  if (Atom)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if ((v15 & 1) == 0)
  {
    v17 = [v10 masterStyles:v32];
    v28 = [MEMORY[0x277CCABB0] numberWithLong:2];
    v18 = [v17 objectForKey:v28];

    v29 = [v9 notesTextStyle];
    [v29 overrideWithTextStyle:v18];

    v30 = [v9 theme];
    v31 = [v30 baseStyles];
    v24 = [v31 fontScheme];

    v25 = [v24 minorFont];
    v26 = [v18 propertiesForListLevel:0];
    [PBSlideMaster setFont:v25 fromCharacterProperties:v26];
    goto LABEL_9;
  }

  v16 = OCPNewZipPackageWithOcBinaryData(Atom + 1);
  v17 = v16;
  if (!v16)
  {
    goto LABEL_11;
  }

  v18 = [v16 partByRelationshipType:@"http://schemas.openxmlformats.org/officeDocument/2006/relationships/slideMaster"];
  v19 = OCXGetRootElement([v18 xmlDocument]);
  v20 = [v10 officeArtState];
  v21 = [v20 xmlDocumentState];
  v22 = [v21 PXPresentationMLNamespace];
  v23 = OCXFindChild(v19, v22, "bodyStyle");

  if (v23)
  {
    v24 = [v9 notesTextStyle];
    v25 = [v10 officeArtState];
    v26 = [v25 xmlDocumentState];
    v27 = [v26 officeArtState];
    [OAXTextListStyle readNode:v23 textListStyle:v24 state:v27];

LABEL_9:
  }

LABEL_11:
}

+ (void)readSlideListWithInstance:(int)a3 documentContainerHolder:(id)a4 state:(id)a5 block:(id)a6
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v48 = a6;
  v50 = [v10 documentRoot];
  v11 = [v9 childOfType:4080 instance:v8];
  v12 = [v11 childCount];
  [v10 setSourceSlideListHolder:v11];
  v13 = [v10 currentSlideTextBlockRecordIndexRangeVector];
  v14 = 0;
  v49 = v12;
  do
  {
    if (v14 >= v12 || ([v10 isCancelled] & 1) != 0)
    {
      break;
    }

    v54 = 0;
    v15 = [v11 childAt:v14];
    Atom = ESDAtomAccess<PptSlidePersistAtom>::extractAtom(v15, 1);

    if (Atom)
    {
      v51 = Atom;
      v17 = Atom[13];
      v18 = *v13;
      v13[1] = *v13;
      v52 = v17;
      if (v17 >= 1)
      {
        v19 = 0;
        do
        {
          v20 = v13[2];
          if (v18 >= v20)
          {
            v22 = *v13;
            v23 = v18 - *v13;
            v24 = (v20 - *v13) >> 4;
            if (2 * v24 <= (v23 >> 4) + 1)
            {
              v25 = (v23 >> 4) + 1;
            }

            else
            {
              v25 = 2 * v24;
            }

            if (v24 >= 0x7FFFFFFF)
            {
              v26 = 0xFFFFFFFFLL;
            }

            else
            {
              v26 = v25;
            }

            if (v26)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<_NSRange>>(v13, v26);
            }

            v27 = (v23 & 0xFFFFFFFF0);
            v28 = &v27[-(v18 - *v13)];
            *v27 = xmmword_25D6FA740;
            v21 = (v27 + 16);
            if (v22 != v18)
            {
              v29 = v28;
              do
              {
                v30 = *v22++;
                *v29 = v30;
                v29 += 16;
              }

              while (v22 != v18);
              v22 = *v13;
            }

            *v13 = v28;
            v13[1] = v21;
            v13[2] = 0;
            if (v22)
            {
              operator delete(v22);
            }
          }

          else
          {
            *v18 = xmmword_25D6FA740;
            v21 = v18 + 1;
          }

          v13[1] = v21;
          ++v19;
          v18 = v21;
        }

        while (v19 != v52);
      }

      v31 = [v11 indexOfFirstChildOfType:1011 afterIndex:v14];
      if (v31 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v32 = v12;
      }

      else
      {
        v32 = v31;
      }

      v33 = v14 + 1;
      v53 = v32;
      if (v33 < v32)
      {
        do
        {
          v34 = [v11 indexOfFirstChildOfType:3999 afterIndex:v33];
          if (v34 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v35 = v53;
          }

          else
          {
            v35 = v34;
          }

          if (v35 >= v53)
          {
            v36 = v53;
          }

          else
          {
            v36 = v35;
          }

          if (v36 <= v33)
          {
            v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PBPresentation(Private) readSlideListWithInstance:documentContainerHolder:state:block:]"];
            v38 = v11;
            v39 = v10;
            v40 = v9;
            v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/PowerPoint/Binary/Mapper/PBPresentation.mm"];
            [OITSUAssertionHandler handleFailureInFunction:v37 file:v41 lineNumber:1697 isFatal:0 description:"If the text block start index was < the start index of the next slide, then the text block must have a positive length"];

            v9 = v40;
            v10 = v39;
            v11 = v38;
            +[OITSUAssertionHandler logBacktraceThrottled];
          }

          v42 = [v11 childAt:v33];
          v43 = ESDAtomAccess<PptTextHeaderAtom>::extractAtom(v42, 1);

          if (v43)
          {
            v44 = v52 > EshRecord::getInstance(v43);
          }

          else
          {
            v44 = 0;
          }

          TCVerifyInputMeetsCondition(v44);
          v45 = &(*v13)[EshRecord::getInstance(v43)];
          *v45 = v33;
          v45[1] = v36 - v33;
          v33 = v36;
        }

        while (v35 < v53);
      }

      v46 = [v50 pbReferenceWithID:v51[12]];
      if (v46)
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        TCVerifyInputMeetsCondition(isKindOfClass & 1);
        v48[2](v48, v46, v51, &v54);
      }

      v13[1] = *v13;

      v14 = v53;
      v12 = v49;
    }

    else
    {
      TCVerifyInputMeetsCondition(0);
    }
  }

  while ((v54 & 1) == 0);
}

+ (void)readMasterAndLayouts:(id)a3 masterLayoutMap:(id)a4 state:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 tgtPresentation];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __70__PBPresentation_Private__readMasterAndLayouts_masterLayoutMap_state___block_invoke;
  v19[3] = &unk_2799CDAB8;
  v12 = v11;
  v20 = v12;
  v13 = v10;
  v21 = v13;
  v14 = v9;
  v22 = v14;
  v24 = a1;
  v15 = v8;
  v23 = v15;
  [a1 readSlideListWithInstance:1 documentContainerHolder:v15 state:v13 block:v19];
  v16 = [v15 childOfType:4080 instance:0];
  if (v16)
  {
    v17 = [v13 documentRoot];
    [a1 scanSlideListForLayoutTypes:v17 slideListHolder:v16 masterLayoutMap:v14];
  }

  [a1 readCommentAuthorsFrom:v15 state:v13];
  v18 = [v13 documentRoot];
  [a1 processLayoutTypesFromDocument:v18 masterLayoutMap:v14 state:v13];
}

void __70__PBPresentation_Private__readMasterAndLayouts_masterLayoutMap_state___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a3 + 48);
  v7 = *(a3 + 56);
  v37 = v5;
  v8 = [v5 eshObject];
  if ((*(*v8 + 16))(v8) == 1016)
  {
    v9 = [[PDSlideMaster alloc] initWithPresentation:*(a1 + 32)];
    [*(a1 + 32) addSlideMaster:v9];
    v10 = objc_alloc_init(PBMasterInfo);
    [(PBMasterInfo *)v10 setSlideMaster:v9];
    [(PBMasterInfo *)v10 setMainPbRef:v6];
    v11 = [*(a1 + 40) officeArtState];
    -[PBMasterInfo setUseXmlBlobs:](v10, "setUseXmlBlobs:", [v11 useXmlBlobs]);

    [*(a1 + 48) setMasterInfo:v10 forMasterId:v7];
    [*(a1 + 40) setCurrentSourceMasterStyleInfoVector:{-[PBMasterInfo sourceTextStyling](v10, "sourceTextStyling")}];
    v12 = 0;
    do
    {
      v13 = [*(a1 + 40) docSourceMasterStyleInfoOfType:v12];
      *[*(a1 + 40) currentSourceMasterStyleInfoOfType:v12] = *v13;
      v12 = (v12 + 1);
    }

    while (v12 != 9);
    [PBSlideMaster readSlideMasterTextStyles:v9 slideHolder:v37 state:*(a1 + 40)];
    v14 = *(a1 + 56);
    v15 = *(a1 + 64);
    v16 = [(PDSlideMaster *)v9 theme];
    v17 = [(PDSlideMaster *)v9 colorMap];
    [v15 readThemeFromSlideMaster:v37 document:v14 theme:v16 colorMap:v17 state:*(a1 + 40)];

    [*(a1 + 64) readTextStylesFromSlideMaster:v37 toSlideMaster:v9 state:*(a1 + 40)];
    [PBSlideMaster readMasterDrawables:v9 slideHolder:v37 state:*(a1 + 40)];
    [PBSlideMaster readSlideMasterName:v9 slideHolder:v37 state:*(a1 + 40)];
    v18 = [(PDSlideMaster *)v9 theme];
    [v18 validateTheme];

    [*(a1 + 40) setCurrentSourceMasterStyleInfoVector:0];
    if ([(PBMasterInfo *)v10 useXmlBlobs])
    {
      v19 = [v37 firstChildOfType:1052];
      Atom = ESDAtomAccess<PptRoundTripOriginalMainMasterIdAtom>::extractAtom(v19, 0);

      if (Atom)
      {
        [(PBMasterInfo *)v10 setXmlMainMasterId:Atom[12]];
      }

      v21 = [v37 firstChildOfType:1053];
      v22 = ESDAtomAccess<PptRoundTripCompositeMasterIdAtom>::extractAtom(v21, 0);

      if (v22)
      {
        [(PBMasterInfo *)v10 setXmlMainMasterId:v22[12]];
      }

      [*(a1 + 64) readXmlLayoutsFromSlideMaster:v37 document:*(a1 + 56) masterInfo:v10 state:*(a1 + 40)];
    }
  }

  else
  {
    v10 = [v37 firstChildOfType:1007];
    v23 = [(PBMasterInfo *)v10 eshObject];
    if (v23)
    {
    }

    else
    {
      v24 = 0;
    }

    TCVerifyInputMeetsCondition(v24 != 0);
    if (v24)
    {
      LODWORD(v25) = v24[21];
      v26 = [*(a1 + 48) masterInfoForMasterId:v25];
      if (!v26)
      {
        v27 = [*(a1 + 48) allMasterIds];
        v28 = [v27 sortedArrayUsingSelector:sel_compare_];
        v29 = [v28 firstObject];

        TCVerifyInputMeetsCondition(v29 != 0);
        v25 = [v29 intValue];
        v26 = [*(a1 + 48) masterInfoForMasterId:v25];
      }

      [v26 setTitlePbRef:v6];
      v9 = [v26 slideMaster];
      v30 = [(PDSlideMaster *)v9 addSlideLayout];
      [v30 setSlideLayoutType:1];
      [*(a1 + 40) setCurrentSourceMasterStyleInfoVector:{objc_msgSend(v26, "sourceTextStyling")}];
      v34 = __PAIR64__(v7, v25);
      v31 = objc_alloc_init(OADColorScheme);
      v32 = objc_alloc_init(OADColorMap);
      if ([PBSlideBase readColorScheme:v37 colorScheme:v31 colorMap:v32 state:*(a1 + 40)])
      {
        v33 = [v30 themeOverrides];
        [v33 setColorScheme:v31];

        [v30 setColorMapOverride:v32];
      }

      [PBSlideBase readDrawingGroup:v37 slide:v30 state:*(a1 + 40), v34];
      [*(a1 + 40) setCurrentSourceMasterStyleInfoVector:0];
      [v30 setShowMasterShapes:*(v24 + 92)];
      [*(a1 + 48) setMasterId:v35 forTitleId:v36];
    }

    else
    {
      v9 = 0;
    }
  }
}

+ (void)scanSlideListForLayoutTypes:(id)a3 slideListHolder:(id)a4 masterLayoutMap:(id)a5
{
  v17 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v7 childCount];
  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      v11 = [v7 childAt:i];
      v12 = [v11 eshObject];
      if ((*(*v12 + 16))(v12) == 1011 && (*(*v12 + 80))(v12))
        v13 = {;
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        TCVerifyInputMeetsCondition(isKindOfClass & 1);
        v15 = [v8 masterInfoForSlideHolder:v13];
        v16 = [v15 slideLayoutForSlideHolder:v13];
        if (!v16)
        {
          [v15 cacheTargetLayoutType:pdSlideLayoutTypeForPptSlideHolder(v13)];
        }
      }
    }
  }
}

+ (void)readCommentAuthorsFrom:(id)a3 state:(id)a4
{
  v21 = a3;
  v5 = a4;
  v20 = [v21 firstChildOfType:2000];
  v6 = [PBProgTag binaryTagDataWithName:L"___PPT10" inProgTagsParent:v20];
  for (i = 0; ; i = v8 + 1)
  {
    v8 = i;
    if ([v6 childCount] <= i)
    {
      break;
    }

    v9 = [v6 childAt:i];
    v10 = [v9 eshObject];
    if ((*(*v10 + 16))(v10) == 12004)
    {
      v11 = objc_alloc_init(PDCommentAuthor);
      v12 = [v5 tgtPresentation];
      -[PDCommentAuthor setId:](v11, "setId:", [v12 commentAuthorCount]);

      v13 = [v5 tgtPresentation];
      [v13 addCommentAuthor:v11];

      v14 = [v9 firstChildOfType:12005];
      v15 = [v14 eshObject];

      if (v15)
      {
        [(PDCommentAuthor *)v11 setColorIndex:*(v15 + 48)];
        [(PDCommentAuthor *)v11 setLastCommentIndex:(*(v15 + 52) - 1)];
      }

      v16 = [v9 firstChildOfType:4026];
      v17 = [v16 eshObject];
      if (v17)
      {
        if (v18)
        {
          v19 = [MEMORY[0x277CCACA8] stringWithCsString:v18 + 48];
          [(PDCommentAuthor *)v11 setName:v19];
        }
      }
    }
  }
}

+ (void)processLayoutTypesFromDocument:(id)a3 masterLayoutMap:(id)a4 state:(id)a5
{
  v147 = a3;
  v149 = a4;
  v164 = a5;
  if ((+[PBPresentation(Private) processLayoutTypesFromDocument:masterLayoutMap:state:]::defaultBoundsInitialized & 1) == 0)
  {
    +[PBPresentation(Private) processLayoutTypesFromDocument:masterLayoutMap:state:]::defaultBoundsInitialized = 1;
    TCRectMakeWithSides();
    *+[PBPresentation(Private) processLayoutTypesFromDocument:masterLayoutMap:state:]::defaultPHBounds = v7;
    *&+[PBPresentation(Private) processLayoutTypesFromDocument:masterLayoutMap:state:]::defaultPHBounds[8] = v8;
    *&+[PBPresentation(Private) processLayoutTypesFromDocument:masterLayoutMap:state:]::defaultPHBounds[16] = v9;
    *&+[PBPresentation(Private) processLayoutTypesFromDocument:masterLayoutMap:state:]::defaultPHBounds[24] = v10;
    TCRectMakeWithSides();
    *ymmword_27FC69538 = v11;
    *&ymmword_27FC69538[8] = v12;
    *&ymmword_27FC69538[16] = v13;
    *&ymmword_27FC69538[24] = v14;
    TCRectMakeWithSides();
    *ymmword_27FC69558 = v15;
    *&ymmword_27FC69558[8] = v16;
    *&ymmword_27FC69558[16] = v17;
    *&ymmword_27FC69558[24] = v18;
    TCRectMakeWithSides();
    *ymmword_27FC69578 = v19;
    *&ymmword_27FC69578[8] = v20;
    *&ymmword_27FC69578[16] = v21;
    *&ymmword_27FC69578[24] = v22;
    TCRectMakeWithSides();
    *ymmword_27FC69598 = v23;
    *&ymmword_27FC69598[8] = v24;
    *&ymmword_27FC69598[16] = v25;
    *&ymmword_27FC69598[24] = v26;
    TCRectMakeWithSides();
    qword_27FC695D8 = v27;
    unk_27FC695E0 = v28;
    qword_27FC695E8 = v29;
    unk_27FC695F0 = v30;
    TCRectMakeWithSides();
    qword_27FC695F8 = v31;
    unk_27FC69600 = v32;
    qword_27FC69608 = v33;
    unk_27FC69610 = v34;
    TCRectMakeWithSides();
    qword_27FC69618 = v35;
    unk_27FC69620 = v36;
    qword_27FC69628 = v37;
    unk_27FC69630 = v38;
    TCRectMakeWithSides();
    qword_27FC69638 = v39;
    unk_27FC69640 = v40;
    qword_27FC69648 = v41;
    unk_27FC69650 = v42;
    TCRectMakeWithSides();
    qword_27FC69658 = v43;
    unk_27FC69660 = v44;
    qword_27FC69668 = v45;
    unk_27FC69670 = v46;
    TCRectMakeWithSides();
    qword_27FC69678 = v47;
    unk_27FC69680 = v48;
    qword_27FC69688 = v49;
    unk_27FC69690 = v50;
    TCRectMakeWithSides();
    *ymmword_27FC69698 = v51;
    *&ymmword_27FC69698[8] = v52;
    *&ymmword_27FC69698[16] = v53;
    *&ymmword_27FC69698[24] = v54;
    TCRectMakeWithSides();
    *ymmword_27FC696B8 = v55;
    *&ymmword_27FC696B8[8] = v56;
    *&ymmword_27FC696B8[16] = v57;
    *&ymmword_27FC696B8[24] = v58;
    *ymmword_27FC694B8 = CGRectUnion(*ymmword_27FC69538, *ymmword_27FC69558);
    *ymmword_27FC694D8 = CGRectUnion(*ymmword_27FC69578, *ymmword_27FC69598);
    *ymmword_27FC694F8 = CGRectUnion(*ymmword_27FC69538, *ymmword_27FC69578);
    *ymmword_27FC69518 = CGRectUnion(*ymmword_27FC69558, *ymmword_27FC69598);
    *ymmword_27FC69498 = CGRectUnion(*ymmword_27FC694F8, *ymmword_27FC69518);
    *ymmword_27FC695B8 = CGRectUnion(*+[PBPresentation(Private) processLayoutTypesFromDocument:masterLayoutMap:state:]::defaultPHBounds, *ymmword_27FC69498);
    *ymmword_27FC696D8 = CGRectUnion(*ymmword_27FC69698, *ymmword_27FC696B8);
  }

  v59 = MEMORY[0x277CBF348];
  v161 = *(MEMORY[0x277CBF348] + 8);
  v162 = *MEMORY[0x277CBF348];
  v187 = *&+[PBPresentation(Private) processLayoutTypesFromDocument:masterLayoutMap:state:]::defaultPHBounds[8];
  v188 = *+[PBPresentation(Private) processLayoutTypesFromDocument:masterLayoutMap:state:]::defaultPHBounds;
  v185 = *&+[PBPresentation(Private) processLayoutTypesFromDocument:masterLayoutMap:state:]::defaultPHBounds[24];
  v186 = *&+[PBPresentation(Private) processLayoutTypesFromDocument:masterLayoutMap:state:]::defaultPHBounds[16];
  v177 = *&ymmword_27FC69498[8];
  v178 = *ymmword_27FC69498;
  v175 = *&ymmword_27FC69498[24];
  v176 = *&ymmword_27FC69498[16];
  v206 = CGRectUnion(*+[PBPresentation(Private) processLayoutTypesFromDocument:masterLayoutMap:state:]::defaultPHBounds, *ymmword_27FC69498);
  y = v206.origin.y;
  x = v206.origin.x;
  height = v206.size.height;
  width = v206.size.width;
  v60 = [v164 tgtPresentation];
  [v60 slideSize];
  v62 = v61;
  v64 = v63;

  memset(&v202, 0, sizeof(v202));
  CGAffineTransformMakeScale(&v202, v62 / 5760.0, v64 / 4320.0);
  v159 = v59[1];
  v160 = *v59;
  v148 = [v149 allMasterIds];
  v65 = [v148 count];
  v66 = v65;
  if (v65)
  {
    v67 = 0;
    v183 = v64;
    v184 = v62;
    v154 = v65;
    do
    {
      v150 = v67;
      v68 = [v148 objectAtIndex:v147];
      v69 = [v68 intValue];

      v153 = [v149 masterInfoForMasterId:v69];
      v174 = [v153 slideMaster];
      v165 = [v164 masterStyles:v174];
      v205 = v202;
      v207.origin.y = v187;
      v207.origin.x = v188;
      v207.size.height = v185;
      v207.size.width = v186;
      v208 = CGRectApplyAffineTransform(v207, &v205);
      v191 = v208.origin.y;
      v192 = v208.origin.x;
      v189 = v208.size.height;
      v190 = v208.size.width;
      v70 = [v174 placeholderWithType:0 placeholderTypeIndex:0 overrideIndex:1];
      v152 = v70;
      if (v70)
      {
        v71 = [v70 drawableProperties];
        v72 = [v71 orientedBounds];
        [v72 bounds];
        v191 = v74;
        v192 = v73;
        v189 = v76;
        v190 = v75;
      }

      v205 = v202;
      v209.origin.y = v177;
      v209.origin.x = v178;
      v209.size.height = v175;
      v209.size.width = v176;
      v210 = CGRectApplyAffineTransform(v209, &v205);
      v181 = v210.origin.y;
      v182 = v210.origin.x;
      v179 = v210.size.height;
      v180 = v210.size.width;
      v77 = [v174 placeholderWithType:1 placeholderTypeIndex:0 overrideIndex:1];
      v151 = v77;
      if (v77)
      {
        v78 = [v77 drawableProperties];
        v79 = [v78 orientedBounds];
        [v79 bounds];
        v181 = v81;
        v182 = v80;
        v179 = v83;
        v180 = v82;
      }

      v211.origin.y = v191;
      v211.origin.x = v192;
      v211.size.height = v189;
      v211.size.width = v190;
      v223.origin.y = v181;
      v223.origin.x = v182;
      v223.size.height = v179;
      v223.size.width = v180;
      v212 = CGRectUnion(v211, v223);
      v172 = v212.origin.y;
      v173 = v212.origin.x;
      v170 = v212.size.height;
      v171 = v212.size.width;
      v84 = [v174 slideLayoutCount];
      if (v84)
      {
        for (i = 0; i != v84; ++i)
        {
          v86 = [v174 slideLayoutAtIndex:i];
          [PBSlideMaster flattenPlaceholderTextStylesIntoLayout:v86 layoutType:0 masterStyleMap:v165];
        }
      }

      v163 = [v153 allTargetLayoutTypes];
      v87 = [v163 count];
      v88 = v87;
      if (v87)
      {
        v89 = 0;
        v155 = v87;
        do
        {
          v90 = [v163 objectAtIndex:v89];
          v91 = [v90 intValue];

          v92 = [v174 slideLayoutOfType:v91];
          if (!v92)
          {
            v158 = [v174 addSlideLayout];
            [v158 setSlideLayoutType:v91];
            v93 = v91 - 1;
            v94 = 18;
            v95 = 13;
            v96 = 14;
            v97 = 15;
            v98 = 16;
            v99 = 17;
            v100 = 7;
            v101 = 1;
            v102 = &+[PBPresentation(Private) processLayoutTypesFromDocument:masterLayoutMap:state:]::titleBodyLayoutBoundsArray;
            v103 = &+[PBPresentation(Private) processLayoutTypesFromDocument:masterLayoutMap:state:]::title4BodiesLayoutBoundsArray;
            v104 = &+[PBPresentation(Private) processLayoutTypesFromDocument:masterLayoutMap:state:]::titleOnlyLayoutBoundsArray;
            v105 = &+[PBPresentation(Private) processLayoutTypesFromDocument:masterLayoutMap:state:]::emptyLayoutBoundsArray;
            v106 = &+[PBPresentation(Private) processLayoutTypesFromDocument:masterLayoutMap:state:]::titleBodyNextToBodyLayoutBoundsArray;
            v107 = &+[PBPresentation(Private) processLayoutTypesFromDocument:masterLayoutMap:state:]::titleBodyOverBodyLayoutBoundsArray;
            v108 = &+[PBPresentation(Private) processLayoutTypesFromDocument:masterLayoutMap:state:]::verticalTitleBodyLayoutBoundsArray;
            v109 = &+[PBPresentation(Private) processLayoutTypesFromDocument:masterLayoutMap:state:]::title2BodiesOverBodyLayoutBoundsArray;
            v110 = &+[PBPresentation(Private) processLayoutTypesFromDocument:masterLayoutMap:state:]::largeBodyLayoutBoundsArray;
            v111 = &+[PBPresentation(Private) processLayoutTypesFromDocument:masterLayoutMap:state:]::verticalTitleBodyOverBodyLayoutBoundsArray;
            switch(v91)
            {
              case 1:
              case 3:
                v101 = 0;
                v102 = &+[PBPresentation(Private) processLayoutTypesFromDocument:masterLayoutMap:state:]::centerTitleSubtitleLayoutBoundsArray;
                goto LABEL_17;
              case 2:
              case 10:
              case 12:
              case 16:
              case 18:
              case 31:
                goto LABEL_17;
              case 4:
              case 13:
              case 14:
              case 15:
              case 19:
              case 20:
              case 22:
              case 24:
              case 30:
              case 32:
              case 33:
                v101 = 8;
                v102 = &+[PBPresentation(Private) processLayoutTypesFromDocument:masterLayoutMap:state:]::titleBodyNextToBodyLayoutBoundsArray;
                goto LABEL_17;
              case 5:
LABEL_30:
                v112 = &pptPlaceholderTypeArrayForPDSlideLayoutType(PDSlideLayoutType)::pptPlaceholderTypeArray;
                goto LABEL_54;
              case 6:
LABEL_31:
                v103 = v104;
                v96 = v100;
                v112 = &pptPlaceholderTypeArrayForPDSlideLayoutType(PDSlideLayoutType)::pptPlaceholderTypeArray;
                goto LABEL_54;
              case 7:
LABEL_27:
                v103 = v105;
                v96 = v98;
                v112 = &pptPlaceholderTypeArrayForPDSlideLayoutType(PDSlideLayoutType)::pptPlaceholderTypeArray;
                goto LABEL_54;
              case 8:
LABEL_28:
                v103 = v106;
                v96 = v91;
LABEL_29:
                v112 = &_ZZL43pptPlaceholderTypeArrayForPDSlideLayoutType17PDSlideLayoutTypeE23pptPlaceholderTypeArray__26_;
                goto LABEL_54;
              case 9:
LABEL_24:
                v103 = v107;
                v96 = v91;
                v112 = &pptPlaceholderTypeArrayForPDSlideLayoutType(PDSlideLayoutType)::pptPlaceholderTypeArray;
                goto LABEL_54;
              case 11:
LABEL_32:
                v103 = v108;
                v96 = v99;
                v112 = &pptPlaceholderTypeArrayForPDSlideLayoutType(PDSlideLayoutType)::pptPlaceholderTypeArray;
                goto LABEL_54;
              case 17:
LABEL_33:
                v112 = &_ZZL43pptPlaceholderTypeArrayForPDSlideLayoutType17PDSlideLayoutTypeE23pptPlaceholderTypeArray__15_;
                goto LABEL_54;
              case 21:
LABEL_25:
                v103 = v109;
                v96 = v95;
LABEL_26:
                v112 = &_ZZL43pptPlaceholderTypeArrayForPDSlideLayoutType17PDSlideLayoutTypeE23pptPlaceholderTypeArray__21_;
                goto LABEL_54;
              case 23:
              case 34:
                v101 = 11;
                v102 = &+[PBPresentation(Private) processLayoutTypesFromDocument:masterLayoutMap:state:]::title2BodiesNextToBodyLayoutBoundsArray;
                goto LABEL_17;
              case 25:
              case 29:
                v101 = 10;
                v102 = &+[PBPresentation(Private) processLayoutTypesFromDocument:masterLayoutMap:state:]::titleBodyNextTo2BodiesLayoutBoundsArray;
                goto LABEL_17;
              case 26:
              case 28:
                v101 = 9;
                v102 = &+[PBPresentation(Private) processLayoutTypesFromDocument:masterLayoutMap:state:]::titleBodyOverBodyLayoutBoundsArray;
                goto LABEL_17;
              case 27:
LABEL_34:
                v103 = v110;
                v96 = v97;
                v112 = &_ZZL43pptPlaceholderTypeArrayForPDSlideLayoutType17PDSlideLayoutTypeE23pptPlaceholderTypeArray__25_;
                goto LABEL_54;
              case 35:
LABEL_23:
                v103 = v111;
                v96 = v94;
                v112 = &_ZZL43pptPlaceholderTypeArrayForPDSlideLayoutType17PDSlideLayoutTypeE23pptPlaceholderTypeArray__33_;
                goto LABEL_54;
              default:
                v113 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"PptSlideLayoutType pptSlideLayoutTypeForPDSlideLayoutType(PDSlideLayoutType)", &+[PBPresentation(Private) processLayoutTypesFromDocument:masterLayoutMap:state:]::titleBodyLayoutBoundsArray, &+[PBPresentation(Private) processLayoutTypesFromDocument:masterLayoutMap:state:]::titleBodyOverBodyLayoutBoundsArray, &+[PBPresentation(Private) processLayoutTypesFromDocument:masterLayoutMap:state:]::verticalTitleBodyLayoutBoundsArray, &+[PBPresentation(Private) processLayoutTypesFromDocument:masterLayoutMap:state:]::title2BodiesOverBodyLayoutBoundsArray, &+[PBPresentation(Private) processLayoutTypesFromDocument:masterLayoutMap:state:]::largeBodyLayoutBoundsArray}];
                v114 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/PowerPoint/Binary/Mapper/PBPresentation.mm"];
                [OITSUAssertionHandler handleFailureInFunction:v113 file:v114 lineNumber:545 isFatal:0 description:"Unknown slide layout type"];

                +[OITSUAssertionHandler logBacktraceThrottled];
                v101 = 1;
                v102 = &+[PBPresentation(Private) processLayoutTypesFromDocument:masterLayoutMap:state:]::titleBodyLayoutBoundsArray;
LABEL_17:
                v103 = v102;
                v96 = v101;
                v104 = v102;
                v100 = v101;
                v105 = v102;
                v98 = v101;
                v106 = v102;
                LODWORD(v91) = v101;
                v107 = v102;
                v108 = v102;
                v99 = v101;
                v109 = v102;
                v95 = v101;
                v110 = v102;
                v97 = v101;
                v111 = v102;
                v94 = v101;
                v112 = &pptPlaceholderTypeArrayForPDSlideLayoutType(PDSlideLayoutType)::pptPlaceholderTypeArray;
                switch(v93)
                {
                  case 0:
                    break;
                  case 1:
                    v112 = &pptPlaceholderTypeArrayForPDSlideLayoutType(PDSlideLayoutType)::pptPlaceholderTypeArray;
                    break;
                  case 2:
                  case 30:
                    v112 = &_ZZL43pptPlaceholderTypeArrayForPDSlideLayoutType17PDSlideLayoutTypeE23pptPlaceholderTypeArray__29_;
                    break;
                  case 3:
                    v112 = &pptPlaceholderTypeArrayForPDSlideLayoutType(PDSlideLayoutType)::pptPlaceholderTypeArray;
                    break;
                  case 4:
                    goto LABEL_30;
                  case 5:
                    goto LABEL_31;
                  case 6:
                    goto LABEL_27;
                  case 7:
                    goto LABEL_28;
                  case 8:
                    goto LABEL_24;
                  case 9:
                    v112 = &pptPlaceholderTypeArrayForPDSlideLayoutType(PDSlideLayoutType)::pptPlaceholderTypeArray;
                    break;
                  case 10:
                    goto LABEL_32;
                  case 11:
                    v112 = &_ZZL43pptPlaceholderTypeArrayForPDSlideLayoutType17PDSlideLayoutTypeE23pptPlaceholderTypeArray__10_;
                    break;
                  case 12:
                    v112 = &_ZZL43pptPlaceholderTypeArrayForPDSlideLayoutType17PDSlideLayoutTypeE23pptPlaceholderTypeArray__11_;
                    break;
                  case 13:
                    v112 = &_ZZL43pptPlaceholderTypeArrayForPDSlideLayoutType17PDSlideLayoutTypeE23pptPlaceholderTypeArray__12_;
                    break;
                  case 14:
                    v112 = &_ZZL43pptPlaceholderTypeArrayForPDSlideLayoutType17PDSlideLayoutTypeE23pptPlaceholderTypeArray__13_;
                    break;
                  case 15:
                    v112 = &_ZZL43pptPlaceholderTypeArrayForPDSlideLayoutType17PDSlideLayoutTypeE23pptPlaceholderTypeArray__14_;
                    break;
                  case 16:
                    goto LABEL_33;
                  case 17:
                    v112 = &_ZZL43pptPlaceholderTypeArrayForPDSlideLayoutType17PDSlideLayoutTypeE23pptPlaceholderTypeArray__16_;
                    break;
                  case 18:
                    v112 = &_ZZL43pptPlaceholderTypeArrayForPDSlideLayoutType17PDSlideLayoutTypeE23pptPlaceholderTypeArray__17_;
                    break;
                  case 19:
                    v112 = &_ZZL43pptPlaceholderTypeArrayForPDSlideLayoutType17PDSlideLayoutTypeE23pptPlaceholderTypeArray__18_;
                    break;
                  case 20:
                    goto LABEL_25;
                  case 21:
                  case 25:
                    v112 = &_ZZL43pptPlaceholderTypeArrayForPDSlideLayoutType17PDSlideLayoutTypeE23pptPlaceholderTypeArray__24_;
                    break;
                  case 22:
                    goto LABEL_26;
                  case 23:
                  case 27:
                    goto LABEL_29;
                  case 24:
                    v112 = &_ZZL43pptPlaceholderTypeArrayForPDSlideLayoutType17PDSlideLayoutTypeE23pptPlaceholderTypeArray__23_;
                    break;
                  case 26:
                    goto LABEL_34;
                  case 28:
                  case 33:
                    v112 = &_ZZL43pptPlaceholderTypeArrayForPDSlideLayoutType17PDSlideLayoutTypeE23pptPlaceholderTypeArray__32_;
                    break;
                  case 29:
                    v112 = &_ZZL43pptPlaceholderTypeArrayForPDSlideLayoutType17PDSlideLayoutTypeE23pptPlaceholderTypeArray__28_;
                    break;
                  case 31:
                    v112 = &_ZZL43pptPlaceholderTypeArrayForPDSlideLayoutType17PDSlideLayoutTypeE23pptPlaceholderTypeArray__30_;
                    break;
                  case 32:
                    v112 = &_ZZL43pptPlaceholderTypeArrayForPDSlideLayoutType17PDSlideLayoutTypeE23pptPlaceholderTypeArray__31_;
                    break;
                  case 34:
                    goto LABEL_23;
                  default:
                    v115 = [MEMORY[0x277CCACA8] stringWithUTF8String:"const PptPlaceholder *pptPlaceholderTypeArrayForPDSlideLayoutType(PDSlideLayoutType)"];
                    v116 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/PowerPoint/Binary/Mapper/PBPresentation.mm"];
                    [OITSUAssertionHandler handleFailureInFunction:v115 file:v116 lineNumber:484 isFatal:0 description:"Unexpected PD layout type"];

                    +[OITSUAssertionHandler logBacktraceThrottled];
                    v112 = 0;
                    break;
                }

LABEL_54:
                v193 = objc_alloc_init(MEMORY[0x277CBEB18]);
                v156 = v96;
                v157 = v89;
                v117 = *v112;
                v118 = *v103;
                if (v117)
                {
                  v119 = 0;
                  v120 = v103 + 1;
                  v121 = v112 + 1;
                  do
                  {
                    TCVerifyInputMeetsCondition(v118 != 0xFF);
                    v122 = objc_alloc_init(OADShape);
                    [v193 addObject:v122];
                    v123 = objc_alloc_init(OADPresetShapeGeometry);
                    [(OADShape *)v122 setGeometry:v123];
                    [(OADShapeGeometry *)v123 setIsEscher:1];
                    [(OADPresetShapeGeometry *)v123 setType:1];
                    v124 = objc_alloc_init(PDOfficeArtClient);
                    [(OADDrawable *)v122 setClientData:v124];
                    v125 = objc_alloc_init(PDPlaceholder);
                    [(PDOfficeArtClient *)v124 setPlaceholder:v125];
                    [(PDPlaceholder *)v125 setIndex:v119];
                    [(PDPlaceholder *)v125 setType:[PBPlaceholder readPlaceholderType:v117]];
                    if ((v118 - 2) >= 0x11u)
                    {
                      v126 = 0;
                    }

                    else
                    {
                      v126 = dword_25D70F7C8[(v118 - 2)];
                    }

                    [(PDPlaceholder *)v125 setSize:v126];
                    v127 = [PBPlaceholder readPlaceholderOrientation:v117];
                    [(PDPlaceholder *)v125 setOrientation:v127];
                    v128 = v185;
                    v129 = v186;
                    v130 = v187;
                    v131 = v188;
                    v199 = v190;
                    rect = v189;
                    v132 = v192;
                    v198 = v191;
                    if (v118)
                    {
                      v128 = v175;
                      v129 = v176;
                      v130 = v177;
                      v131 = v178;
                      v199 = v180;
                      rect = v179;
                      v132 = v182;
                      v198 = v181;
                      if (v118 >= 0xAu)
                      {
                        if (v118 - 16 < 4 || (v128 = 4320.0, v129 = 5760.0, v130 = v161, v131 = v162, v199 = v62, rect = v64, v132 = v160, v198 = v159, v118 == 10))
                        {
                          v128 = height;
                          v129 = width;
                          v130 = y;
                          v131 = x;
                          v199 = v171;
                          rect = v170;
                          v132 = v173;
                          v198 = v172;
                        }
                      }
                    }

                    v133 = &+[PBPresentation(Private) processLayoutTypesFromDocument:masterLayoutMap:state:]::defaultPHBounds[32 * v118];
                    v196 = v133[1];
                    v197 = *v133;
                    v194 = v133[3];
                    v195 = v133[2];
                    memset(&v201, 0, sizeof(v201));
                    v213.origin.x = v131;
                    v213.origin.y = v130;
                    v213.size.width = v129;
                    v213.size.height = v128;
                    MidX = CGRectGetMidX(v213);
                    v214.origin.x = v131;
                    v214.origin.y = v130;
                    v214.size.width = v129;
                    v214.size.height = v128;
                    MidY = CGRectGetMidY(v214);
                    CGAffineTransformMakeTranslation(&v201, -MidX, -MidY);
                    t1 = v201;
                    v215.origin.x = v132;
                    v215.origin.y = v198;
                    v215.size.width = v199;
                    v215.size.height = rect;
                    v136 = CGRectGetWidth(v215);
                    v216.origin.x = v131;
                    v216.origin.y = v130;
                    v216.size.width = v129;
                    v216.size.height = v128;
                    v137 = CGRectGetWidth(v216);
                    v217.origin.x = v132;
                    v217.origin.y = v198;
                    v217.size.width = v199;
                    v217.size.height = rect;
                    v138 = CGRectGetHeight(v217);
                    v218.origin.x = v131;
                    v218.origin.y = v130;
                    v218.size.width = v129;
                    v218.size.height = v128;
                    v139 = CGRectGetHeight(v218);
                    CGAffineTransformMakeScale(&t2, v136 / v137, v138 / v139);
                    CGAffineTransformConcat(&v205, &t1, &t2);
                    v201 = v205;
                    t1 = v205;
                    v219.origin.x = v132;
                    v219.origin.y = v198;
                    v219.size.width = v199;
                    v219.size.height = rect;
                    v140 = CGRectGetMidX(v219);
                    v220.origin.x = v132;
                    v220.origin.y = v198;
                    v220.size.width = v199;
                    v220.size.height = rect;
                    v141 = CGRectGetMidY(v220);
                    CGAffineTransformMakeTranslation(&t2, v140, v141);
                    CGAffineTransformConcat(&v205, &t1, &t2);
                    v201 = v205;
                    v221.origin.y = v196;
                    v221.origin.x = v197;
                    v221.size.height = v194;
                    v221.size.width = v195;
                    v222 = CGRectApplyAffineTransform(v221, &v205);
                    v142 = [[OADOrientedBounds alloc] initWithBounds:v222.origin.x, v222.origin.y, v222.size.width, v222.size.height];
                    v143 = [(OADDrawable *)v122 drawableProperties];
                    [v143 setOrientedBounds:v142];

                    v144 = objc_alloc_init(OADTextBody);
                    [(OADShape *)v122 setTextBody:v144];
                    v64 = v183;
                    v62 = v184;
                    if (v127 == 1)
                    {
                      v145 = [(OADTextBody *)v144 properties];
                      [v145 setFlowType:6];
                    }

                    v117 = v121[v119];
                    v118 = v120[v119++];
                  }

                  while (v117);
                }

                TCVerifyInputMeetsCondition(v118 == 255);
                [PBHeadersFooters readHeadersFootersToSlideLayout:v158 drawables:v193 state:v164];
                v66 = v154;
                v88 = v155;
                v89 = v157;
                [v158 setDrawables:v193];
                v146 = [v164 tgtPresentation];
                [v146 cacheGraphicStylesForSlideBase:v158];

                [PBSlideBase mapSlideNumberPlaceholder:v174 tgtSlideBase:v158 state:v164];
                [PBSlideMaster flattenPlaceholderTextStylesIntoLayout:v158 layoutType:v156 masterStyleMap:v165];

                v92 = v158;
                break;
            }
          }

          ++v89;
        }

        while (v89 != v88);
      }

      [v153 cacheSlideLayouts];

      v67 = v150 + 1;
    }

    while (v150 + 1 != v66);
  }
}

+ (void)readSlides:(id)a3 masterLayoutMap:(id)a4 slideIdMap:(id)a5 state:(id)a6 isThumbnail:(BOOL)a7 delegate:(id)a8
{
  v13 = a3;
  v31 = a4;
  v14 = a6;
  v15 = a8;
  v30 = v14;
  v16 = [v14 tgtPresentation];
  if (v15)
  {
    if (objc_opt_respondsToSelector())
    {
      v17 = objc_opt_respondsToSelector();
      if (v17)
      {
        v18 = [v13 childOfType:4080 instance:0];
        v19 = v18;
        if (v18)
        {
          v20 = [v18 indexOfFirstChildOfType:1011 afterIndex:-1];
          v21 = a1;
          if (v20 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v22 = 0;
            do
            {
              v20 = [v19 indexOfFirstChildOfType:1011 afterIndex:v20];
              ++v22;
            }

            while (v20 != 0x7FFFFFFFFFFFFFFFLL);
            goto LABEL_16;
          }
        }

        else
        {
          v21 = a1;
        }

        v22 = 0;
LABEL_16:
        v23 = v16;
        [v15 readerDidStartDocument:v16 withElementCount:v22];
        v24 = v17 & 1;

        v25 = 1;
        goto LABEL_10;
      }
    }
  }

  v21 = a1;
  v23 = v16;
  v24 = 0;
  v25 = 0;
LABEL_10:
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__24;
  v49 = __Block_byref_object_dispose__24;
  v50 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __92__PBPresentation_Private__readSlides_masterLayoutMap_slideIdMap_state_isThumbnail_delegate___block_invoke;
  v32[3] = &unk_2799CDAE0;
  v26 = v30;
  v33 = v26;
  v27 = v31;
  v39 = a7;
  v40 = v24;
  v34 = v27;
  v37 = &v45;
  v28 = v15;
  v35 = v28;
  v38 = &v41;
  v29 = v23;
  v36 = v29;
  [v21 readSlideListWithInstance:0 documentContainerHolder:v13 state:v26 block:v32];
  if (v25 && v46[5])
  {
    ++v42[3];
    [v28 readerDidReadElement:? atIndex:? inDocument:? isLastElement:?];
  }

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v45, 8);
}

void __92__PBPresentation_Private__readSlides_masterLayoutMap_slideIdMap_state_isThumbnail_delegate___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v13 = a2;
  [*(a1 + 32) setSourceSlideId:*(a3 + 56)];
  v7 = objc_alloc_init(PDSlide);
  v8 = [*(a1 + 40) slideLayoutForSlideHolder:v13];
  [(PDSlide *)v7 setSlideLayout:v8];

  v9 = *(a1 + 32);
  v10 = [*(a1 + 40) masterInfoForSlideHolder:v13];
  [v9 setCurrentSourceMasterStyleInfoVector:{objc_msgSend(v10, "sourceTextStyling")}];

  [PBSlide readFromSlideContainer:v13 toSlide:v7 state:*(a1 + 32)];
  [*(a1 + 32) setCurrentSourceMasterStyleInfoVector:0];
  if (![(PDSlideBase *)v7 isHidden])
  {
    *a4 = *(a1 + 80);
    if (*(a1 + 81) == 1)
    {
      v11 = *(*(a1 + 64) + 8);
      if (*(v11 + 40))
      {
        v12 = *(a1 + 48);
        ++*(*(*(a1 + 72) + 8) + 24);
        [v12 readerDidReadElement:? atIndex:? inDocument:? isLastElement:?];
        v11 = *(*(a1 + 64) + 8);
      }

      objc_storeStrong((v11 + 40), v7);
    }

    else
    {
      [*(a1 + 56) addSlide:v7];
    }
  }

  [*(a1 + 32) setSourceSlideId:0xFFFFFFFFLL];
}

+ (void)readNotes:(id)a3 masterLayoutMap:(id)a4 slideIdMap:(id)a5 state:(id)a6 delegate:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v32 = a7;
  v33 = [v13 documentRoot];
  v14 = [v13 tgtPresentation];
  v15 = objc_alloc_init(PDNotesMaster);
  [v14 addNotesMaster:v15];
  v16 = [v11 firstChildOfType:1001];
  Atom = ESDAtomAccess<PptDocumentAtom>::extractAtom(v16, 1);

  if (Atom[16])
  {
    v18 = [v33 pbReferenceWithID:?];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    TCVerifyInputMeetsCondition(isKindOfClass & 1);
    v20 = [v18 firstChildOfType:1009];
    v21 = ESDAtomAccess<PptNotesAtom>::extractAtom(v20, 1);

    v22 = [v12 masterInfoForMasterId:v21[12]];
    if (!v22)
    {
      v23 = [v12 allMasterIds];
      v24 = [v23 sortedArrayUsingSelector:sel_compare_];
      v25 = [v24 firstObject];

      TCVerifyInputMeetsCondition(v25 != 0);
      v22 = [v12 masterInfoForMasterId:{objc_msgSend(v25, "intValue")}];
    }

    TCVerifyInputMeetsCondition(v22 != 0);
    [v13 setCurrentSourceMasterStyleInfoVector:{objc_msgSend(v22, "sourceTextStyling")}];
    v26 = [(PDNotesMaster *)v15 theme];
    v27 = [(PDNotesMaster *)v15 colorMap];
    [a1 readThemeFromSlideMaster:v18 document:v11 theme:v26 colorMap:v27 state:v13];

    v28 = [v22 slideMaster];
    [a1 readTextStyleFromNotesMaster:v18 toNotesMaster:v15 slideMaster:v28 state:v13];
  }

  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __79__PBPresentation_Private__readNotes_masterLayoutMap_slideIdMap_state_delegate___block_invoke;
  v34[3] = &unk_2799CDB08;
  v29 = v13;
  v35 = v29;
  v30 = v32;
  v36 = v30;
  v31 = v14;
  v37 = v31;
  [a1 readSlideListWithInstance:2 documentContainerHolder:v11 state:v29 block:v34];
  [v29 setCurrentSourceMasterStyleInfoVector:0];
}

void __79__PBPresentation_Private__readNotes_masterLayoutMap_slideIdMap_state_delegate___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 eshObject];
  if ((*(*v3 + 16))(v3) == 1008)
  {
    v4 = [PBSlide notesSlideFromSlideContainer:v5 state:*(a1 + 32)];
    [*(a1 + 40) readerDidReadElement:v4 atIndex:0x7FFFFFFFFFFFFFFFLL inDocument:*(a1 + 48) isLastElement:0];
  }
}

@end