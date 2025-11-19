@interface PXNotesSlide
+ (id)readFromPackagePart:(id)a3 presentationState:(id)a4;
@end

@implementation PXNotesSlide

+ (id)readFromPackagePart:(id)a3 presentationState:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(PDNotesSlide);
  v8 = [v6 OCXNotesMasterRelationshipType];
  v9 = [v5 relationshipsByType:v8];

  if ([v9 count] != 1)
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  v26 = [v9 objectAtIndex:0];
  v25 = [v26 targetLocation];
  v10 = [v6 modelObjectForLocation:v25];
  if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  [(PDNotesSlide *)v7 setNotesMaster:v10];
  v11 = [v6 officeArtState];
  v12 = [v11 styleMatrix];
  v13 = [v6 OCXThemeOverrideRelationshipType];
  v14 = [v5 firstPartWithRelationshipOfType:v13];

  if (v14)
  {
    v15 = [(PDSlideChild *)v7 themeOverrides];
    if (!v15)
    {
      [TCMessageException raise:TCInvalidFileFormatMessage];
    }

    [OAXThemeOverrides readFromPackagePart:v14 toThemeOverrides:v15 drawingState:v11];
    v16 = [v15 styleMatrix];
    if (v16)
    {
      [v11 setStyleMatrix:v16];
    }
  }

  v17 = [v5 xmlDocument];
  if (!v17)
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  v18 = OCXGetRootElement(v17);
  if (!v18)
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  v19 = [v6 PXPresentationMLNamespace];
  v20 = OCXFindChild(v18, v19, "clrMapOvr");

  if (!v20)
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  v21 = [v6 PXPresentationMLNamespace];
  v22 = OCXFindChild(v20, v21, "overrideClrMapping");

  if (v22)
  {
    v23 = objc_alloc_init(OADColorMap);
    [(PDSlideChild *)v7 setColorMapOverride:v23];
    [OAXColorMap readFromXmlNode:v22 toColorMap:v23];
  }

  [PXSlideBase readFromPackagePart:v5 toSlideBase:v7 presentationState:v6];
  [v11 setStyleMatrix:v12];

  return v7;
}

@end