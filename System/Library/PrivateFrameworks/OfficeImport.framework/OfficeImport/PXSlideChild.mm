@interface PXSlideChild
+ (void)readFromPackagePart:(id)part toSlideChild:(id)child presentationState:(id)state;
@end

@implementation PXSlideChild

+ (void)readFromPackagePart:(id)part toSlideChild:(id)child presentationState:(id)state
{
  partCopy = part;
  childCopy = child;
  stateCopy = state;
  officeArtState = [stateCopy officeArtState];
  styleMatrix = [officeArtState styleMatrix];
  oCXThemeOverrideRelationshipType = [stateCopy OCXThemeOverrideRelationshipType];
  v12 = [partCopy firstPartWithRelationshipOfType:oCXThemeOverrideRelationshipType];

  if (v12)
  {
    themeOverrides = [childCopy themeOverrides];
    [OAXThemeOverrides readFromPackagePart:v12 toThemeOverrides:themeOverrides drawingState:officeArtState];
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

  v16 = OCXGetRootElement(xmlDocument);
  if (!v16)
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  [childCopy setShowMasterShapes:{CXDefaultBoolAttribute(v16, CXNoNamespace, "showMasterSp", 1)}];
  [childCopy setShowMasterPlaceholderAnimations:{CXDefaultBoolAttribute(v16, CXNoNamespace, "showMasterPhAnim", 1)}];
  pXPresentationMLNamespace = [stateCopy PXPresentationMLNamespace];
  v18 = OCXFindChild(v16, pXPresentationMLNamespace, "clrMapOvr");

  if (v18)
  {
    officeArtState2 = [stateCopy officeArtState];
    oAXMainNamespace = [officeArtState2 OAXMainNamespace];
    v21 = OCXFindChild(v18, oAXMainNamespace, "overrideClrMapping");

    if (v21)
    {
      v22 = objc_alloc_init(OADColorMap);
      [childCopy setColorMapOverride:v22];
      [OAXColorMap readFromXmlNode:v21 toColorMap:v22];
    }
  }

  [PXSlideBase readFromPackagePart:partCopy toSlideBase:childCopy presentationState:stateCopy];
  [officeArtState setStyleMatrix:styleMatrix];
}

@end