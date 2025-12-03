@interface PBSlide
+ (id)notesSlideFromSlideContainer:(id)container state:(id)state;
+ (void)readFromSlideContainer:(id)container toSlide:(id)slide state:(id)state;
+ (void)readThemeOverridesFromSlideContainer:(id)container toSlideChild:(id)child doesFollowMasterScheme:(BOOL)scheme state:(id)state;
@end

@implementation PBSlide

+ (void)readThemeOverridesFromSlideContainer:(id)container toSlideChild:(id)child doesFollowMasterScheme:(BOOL)scheme state:(id)state
{
  containerCopy = container;
  childCopy = child;
  stateCopy = state;
  officeArtState = [stateCopy officeArtState];
  xmlDocumentState = [officeArtState xmlDocumentState];
  officeArtState2 = [xmlDocumentState officeArtState];

  v15 = [containerCopy firstChildOfType:1038];
  Atom = ESDAtomAccess<PptRoundTripThemeAtom>::extractAtom(v15, 0);

  officeArtState3 = [stateCopy officeArtState];
  useXmlBlobs = [officeArtState3 useXmlBlobs];

  if (Atom)
  {
    v19 = useXmlBlobs;
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
      mainDocumentPart = [(OADColorScheme *)v20 mainDocumentPart];
      v23 = [mainDocumentPart firstPartWithRelationshipOfType:@"http://schemas.openxmlformats.org/officeDocument/2006/relationships/themeOverride"];

      themeOverrides = [childCopy themeOverrides];
      [OAXThemeOverrides readFromPackagePart:v23 toThemeOverrides:themeOverrides drawingState:officeArtState2];
    }

    themeOverrides2 = [childCopy themeOverrides];
    styleMatrix = [themeOverrides2 styleMatrix];

    if (styleMatrix)
    {
      [officeArtState2 setStyleMatrix:styleMatrix];
    }
  }

  else
  {
    if (scheme)
    {
      goto LABEL_13;
    }

    v21 = objc_alloc_init(OADColorScheme);
    themeOverrides3 = [childCopy themeOverrides];
    [themeOverrides3 setColorScheme:v21];

    v28 = objc_alloc_init(OADColorMap);
    [childCopy setColorMapOverride:v28];
    [self readColorScheme:containerCopy colorScheme:v21 colorMap:v28 state:stateCopy];
  }

LABEL_13:
  v29 = [containerCopy firstChildOfType:1039];
  v30 = ESDAtomAccess<PptRoundTripColorMappingAtom>::extractAtom(v29, 0);

  officeArtState4 = [stateCopy officeArtState];
  useXmlBlobs2 = [officeArtState4 useXmlBlobs];

  if (v30)
  {
    v33 = useXmlBlobs2;
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
      oAXMainNamespace = [officeArtState2 OAXMainNamespace];
      v36 = OCXFindChild(v34, oAXMainNamespace, "overrideClrMapping");

      if (v36)
      {
        v37 = objc_alloc_init(OADColorMap);
        [childCopy setColorMapOverride:v37];
        [OAXColorMap readFromXmlNode:v36 toColorMap:v37];
      }

      xmlFreeDoc(v34->doc);
    }
  }
}

+ (void)readFromSlideContainer:(id)container toSlide:(id)slide state:(id)state
{
  containerCopy = container;
  slideCopy = slide;
  stateCopy = state;
  v10 = objc_autoreleasePoolPush();
  v11 = [containerCopy firstChildOfType:1007];
  eshObject = [v11 eshObject];
  if (eshObject)
  {
  }

  else
  {
    v13 = 0;
  }

  [slideCopy setShowMasterShapes:v13[92]];
  officeArtState = [stateCopy officeArtState];
  xmlDocumentState = [officeArtState xmlDocumentState];
  officeArtState2 = [xmlDocumentState officeArtState];

  styleMatrix = [officeArtState2 styleMatrix];
  [self readThemeOverridesFromSlideContainer:containerCopy toSlideChild:slideCopy doesFollowMasterScheme:v13[93] state:stateCopy];
  [self readComments:containerCopy slide:slideCopy state:stateCopy];
  [self readDrawingGroup:containerCopy slide:slideCopy state:stateCopy];
  if ([stateCopy hasSlideNumberPlaceholder])
  {
    slideLayout = [slideCopy slideLayout];
    [PBSlideBase mapSlideNumberPlaceholder:slideLayout tgtSlideBase:slideCopy state:stateCopy];
  }

  [stateCopy setHasSlideNumberPlaceholder:0];
  [officeArtState2 setStyleMatrix:styleMatrix];

  objc_autoreleasePoolPop(v10);
}

+ (id)notesSlideFromSlideContainer:(id)container state:(id)state
{
  containerCopy = container;
  stateCopy = state;
  tgtPresentation = [stateCopy tgtPresentation];
  v9 = [tgtPresentation notesMasterAtIndex:0];
  if (v9)
  {
    v10 = objc_alloc_init(PDNotesSlide);
    [(PDNotesSlide *)v10 setNotesMaster:v9];
    v11 = [containerCopy firstChildOfType:1009];
    Atom = ESDAtomAccess<PptNotesAtom>::extractAtom(v11, 1);

    [self readThemeOverridesFromSlideContainer:containerCopy toSlideChild:v10 doesFollowMasterScheme:Atom[53] state:stateCopy];
    [PBSlideBase readDrawingGroup:containerCopy slide:v10 state:stateCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end