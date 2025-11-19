@interface PXSlideChild
+ (void)readFromPackagePart:(id)a3 toSlideChild:(id)a4 presentationState:(id)a5;
@end

@implementation PXSlideChild

+ (void)readFromPackagePart:(id)a3 toSlideChild:(id)a4 presentationState:(id)a5
{
  v23 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v8 officeArtState];
  v10 = [v9 styleMatrix];
  v11 = [v8 OCXThemeOverrideRelationshipType];
  v12 = [v23 firstPartWithRelationshipOfType:v11];

  if (v12)
  {
    v13 = [v7 themeOverrides];
    [OAXThemeOverrides readFromPackagePart:v12 toThemeOverrides:v13 drawingState:v9];
    v14 = [v13 styleMatrix];
    if (v14)
    {
      [v9 setStyleMatrix:v14];
    }
  }

  v15 = [v23 xmlDocument];
  if (!v15)
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  v16 = OCXGetRootElement(v15);
  if (!v16)
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  [v7 setShowMasterShapes:{CXDefaultBoolAttribute(v16, CXNoNamespace, "showMasterSp", 1)}];
  [v7 setShowMasterPlaceholderAnimations:{CXDefaultBoolAttribute(v16, CXNoNamespace, "showMasterPhAnim", 1)}];
  v17 = [v8 PXPresentationMLNamespace];
  v18 = OCXFindChild(v16, v17, "clrMapOvr");

  if (v18)
  {
    v19 = [v8 officeArtState];
    v20 = [v19 OAXMainNamespace];
    v21 = OCXFindChild(v18, v20, "overrideClrMapping");

    if (v21)
    {
      v22 = objc_alloc_init(OADColorMap);
      [v7 setColorMapOverride:v22];
      [OAXColorMap readFromXmlNode:v21 toColorMap:v22];
    }
  }

  [PXSlideBase readFromPackagePart:v23 toSlideBase:v7 presentationState:v8];
  [v9 setStyleMatrix:v10];
}

@end