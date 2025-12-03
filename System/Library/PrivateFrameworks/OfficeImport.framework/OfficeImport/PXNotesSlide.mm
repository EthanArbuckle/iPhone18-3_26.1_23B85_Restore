@interface PXNotesSlide
+ (id)readFromPackagePart:(id)part presentationState:(id)state;
@end

@implementation PXNotesSlide

+ (id)readFromPackagePart:(id)part presentationState:(id)state
{
  partCopy = part;
  stateCopy = state;
  v7 = objc_alloc_init(PDNotesSlide);
  oCXNotesMasterRelationshipType = [stateCopy OCXNotesMasterRelationshipType];
  v9 = [partCopy relationshipsByType:oCXNotesMasterRelationshipType];

  if ([v9 count] != 1)
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  v26 = [v9 objectAtIndex:0];
  targetLocation = [v26 targetLocation];
  v10 = [stateCopy modelObjectForLocation:targetLocation];
  if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  [(PDNotesSlide *)v7 setNotesMaster:v10];
  officeArtState = [stateCopy officeArtState];
  styleMatrix = [officeArtState styleMatrix];
  oCXThemeOverrideRelationshipType = [stateCopy OCXThemeOverrideRelationshipType];
  v14 = [partCopy firstPartWithRelationshipOfType:oCXThemeOverrideRelationshipType];

  if (v14)
  {
    themeOverrides = [(PDSlideChild *)v7 themeOverrides];
    if (!themeOverrides)
    {
      [TCMessageException raise:TCInvalidFileFormatMessage];
    }

    [OAXThemeOverrides readFromPackagePart:v14 toThemeOverrides:themeOverrides drawingState:officeArtState];
    styleMatrix2 = [themeOverrides styleMatrix];
    if (styleMatrix2)
    {
      [officeArtState setStyleMatrix:styleMatrix2];
    }
  }

  xmlDocument = [partCopy xmlDocument];
  if (!xmlDocument)
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  v18 = OCXGetRootElement(xmlDocument);
  if (!v18)
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  pXPresentationMLNamespace = [stateCopy PXPresentationMLNamespace];
  v20 = OCXFindChild(v18, pXPresentationMLNamespace, "clrMapOvr");

  if (!v20)
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  pXPresentationMLNamespace2 = [stateCopy PXPresentationMLNamespace];
  v22 = OCXFindChild(v20, pXPresentationMLNamespace2, "overrideClrMapping");

  if (v22)
  {
    v23 = objc_alloc_init(OADColorMap);
    [(PDSlideChild *)v7 setColorMapOverride:v23];
    [OAXColorMap readFromXmlNode:v22 toColorMap:v23];
  }

  [PXSlideBase readFromPackagePart:partCopy toSlideBase:v7 presentationState:stateCopy];
  [officeArtState setStyleMatrix:styleMatrix];

  return v7;
}

@end