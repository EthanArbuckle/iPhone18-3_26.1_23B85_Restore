@interface PBSlide
+ (id)notesSlideFromSlideContainer:(id)a3 state:(id)a4;
+ (void)readFromSlideContainer:(id)a3 toSlide:(id)a4 state:(id)a5;
+ (void)readThemeOverridesFromSlideContainer:(id)a3 toSlideChild:(id)a4 doesFollowMasterScheme:(BOOL)a5 state:(id)a6;
@end

@implementation PBSlide

+ (void)readThemeOverridesFromSlideContainer:(id)a3 toSlideChild:(id)a4 doesFollowMasterScheme:(BOOL)a5 state:(id)a6
{
  v38 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [v11 officeArtState];
  v13 = [v12 xmlDocumentState];
  v14 = [v13 officeArtState];

  v15 = [v38 firstChildOfType:1038];
  Atom = ESDAtomAccess<PptRoundTripThemeAtom>::extractAtom(v15, 0);

  v17 = [v11 officeArtState];
  v18 = [v17 useXmlBlobs];

  if (Atom)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19)
  {
    v20 = OCPNewZipPackageWithOcBinaryData(Atom + 1);
    v21 = v20;
    if (v20)
    {
      v22 = [(OADColorScheme *)v20 mainDocumentPart];
      v23 = [v22 firstPartWithRelationshipOfType:@"http://schemas.openxmlformats.org/officeDocument/2006/relationships/themeOverride"];

      v24 = [v10 themeOverrides];
      [OAXThemeOverrides readFromPackagePart:v23 toThemeOverrides:v24 drawingState:v14];
    }

    v25 = [v10 themeOverrides];
    v26 = [v25 styleMatrix];

    if (v26)
    {
      [v14 setStyleMatrix:v26];
    }
  }

  else
  {
    if (a5)
    {
      goto LABEL_13;
    }

    v21 = objc_alloc_init(OADColorScheme);
    v27 = [v10 themeOverrides];
    [v27 setColorScheme:v21];

    v28 = objc_alloc_init(OADColorMap);
    [v10 setColorMapOverride:v28];
    [a1 readColorScheme:v38 colorScheme:v21 colorMap:v28 state:v11];
  }

LABEL_13:
  v29 = [v38 firstChildOfType:1039];
  v30 = ESDAtomAccess<PptRoundTripColorMappingAtom>::extractAtom(v29, 0);

  v31 = [v11 officeArtState];
  v32 = [v31 useXmlBlobs];

  if (v30)
  {
    v33 = v32;
  }

  else
  {
    v33 = 0;
  }

  if (v33)
  {
    v34 = CXGetRootElement(*(v30 + 9), *(v30 + 16));
    if (v34)
    {
      v35 = [v14 OAXMainNamespace];
      v36 = OCXFindChild(v34, v35, "overrideClrMapping");

      if (v36)
      {
        v37 = objc_alloc_init(OADColorMap);
        [v10 setColorMapOverride:v37];
        [OAXColorMap readFromXmlNode:v36 toColorMap:v37];
      }

      xmlFreeDoc(v34->doc);
    }
  }
}

+ (void)readFromSlideContainer:(id)a3 toSlide:(id)a4 state:(id)a5
{
  v19 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_autoreleasePoolPush();
  v11 = [v19 firstChildOfType:1007];
  v12 = [v11 eshObject];
  if (v12)
  {
  }

  else
  {
    v13 = 0;
  }

  [v8 setShowMasterShapes:v13[92]];
  v14 = [v9 officeArtState];
  v15 = [v14 xmlDocumentState];
  v16 = [v15 officeArtState];

  v17 = [v16 styleMatrix];
  [a1 readThemeOverridesFromSlideContainer:v19 toSlideChild:v8 doesFollowMasterScheme:v13[93] state:v9];
  [a1 readComments:v19 slide:v8 state:v9];
  [a1 readDrawingGroup:v19 slide:v8 state:v9];
  if ([v9 hasSlideNumberPlaceholder])
  {
    v18 = [v8 slideLayout];
    [PBSlideBase mapSlideNumberPlaceholder:v18 tgtSlideBase:v8 state:v9];
  }

  [v9 setHasSlideNumberPlaceholder:0];
  [v16 setStyleMatrix:v17];

  objc_autoreleasePoolPop(v10);
}

+ (id)notesSlideFromSlideContainer:(id)a3 state:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 tgtPresentation];
  v9 = [v8 notesMasterAtIndex:0];
  if (v9)
  {
    v10 = objc_alloc_init(PDNotesSlide);
    [(PDNotesSlide *)v10 setNotesMaster:v9];
    v11 = [v6 firstChildOfType:1009];
    Atom = ESDAtomAccess<PptNotesAtom>::extractAtom(v11, 1);

    [a1 readThemeOverridesFromSlideContainer:v6 toSlideChild:v10 doesFollowMasterScheme:Atom[53] state:v7];
    [PBSlideBase readDrawingGroup:v6 slide:v10 state:v7];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end