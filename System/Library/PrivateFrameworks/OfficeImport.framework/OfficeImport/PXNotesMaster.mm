@interface PXNotesMaster
+ (id)readFromPackagePart:(id)a3 presentationState:(id)a4;
@end

@implementation PXNotesMaster

+ (id)readFromPackagePart:(id)a3 presentationState:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(PDNotesMaster);
  v8 = [(OCPPackagePart *)v5 xmlDocument];
  if (!v8)
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  v9 = OCXGetRootElement(v8);
  v10 = v9;
  if (!v9 || !xmlStrEqual(v9->name, "notesMaster"))
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  v11 = [(OCXState *)v6 officeArtState];
  v12 = OCXFirstPartWithRelationshipOfTypeToPartWithFallback(v5, v6, sel_OCXThemeRelationshipType);
  if (!v12)
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  v13 = [(PDNotesMaster *)v7 theme];
  if (!v13)
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  [OAXTheme readFromPackagePart:v12 toTheme:v13 state:v11];
  v14 = [(OCXState *)v6 PXPresentationMLNamespace];
  v15 = OCXFindChild(v10, v14, "clrMap");

  if (!v15)
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  v16 = [(PDNotesMaster *)v7 colorMap];
  [OAXColorMap readFromXmlNode:v15 toColorMap:v16];

  v17 = [(OCXState *)v6 PXPresentationMLNamespace];
  v18 = OCXFindChild(v10, v17, "notesStyle");

  if (v18)
  {
    v19 = [(PDNotesMaster *)v7 notesTextStyle];
    [OAXTextListStyle readNode:v18 textListStyle:v19 state:v11];
  }

  [PXSlideBase readFromPackagePart:v5 toSlideBase:v7 presentationState:v6];
  v20 = [(OCPPackagePart *)v5 location];
  [(OCXState *)v6 setModelObject:v7 forLocation:v20];

  return v7;
}

@end