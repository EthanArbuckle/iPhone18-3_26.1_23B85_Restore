@interface PXNotesMaster
+ (id)readFromPackagePart:(id)part presentationState:(id)state;
@end

@implementation PXNotesMaster

+ (id)readFromPackagePart:(id)part presentationState:(id)state
{
  partCopy = part;
  stateCopy = state;
  v7 = objc_alloc_init(PDNotesMaster);
  xmlDocument = [(OCPPackagePart *)partCopy xmlDocument];
  if (!xmlDocument)
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  v9 = OCXGetRootElement(xmlDocument);
  v10 = v9;
  if (!v9 || !xmlStrEqual(v9->name, "notesMaster"))
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  officeArtState = [(OCXState *)stateCopy officeArtState];
  v12 = OCXFirstPartWithRelationshipOfTypeToPartWithFallback(partCopy, stateCopy, sel_OCXThemeRelationshipType);
  if (!v12)
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  theme = [(PDNotesMaster *)v7 theme];
  if (!theme)
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  [OAXTheme readFromPackagePart:v12 toTheme:theme state:officeArtState];
  pXPresentationMLNamespace = [(OCXState *)stateCopy PXPresentationMLNamespace];
  v15 = OCXFindChild(v10, pXPresentationMLNamespace, "clrMap");

  if (!v15)
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  colorMap = [(PDNotesMaster *)v7 colorMap];
  [OAXColorMap readFromXmlNode:v15 toColorMap:colorMap];

  pXPresentationMLNamespace2 = [(OCXState *)stateCopy PXPresentationMLNamespace];
  v18 = OCXFindChild(v10, pXPresentationMLNamespace2, "notesStyle");

  if (v18)
  {
    notesTextStyle = [(PDNotesMaster *)v7 notesTextStyle];
    [OAXTextListStyle readNode:v18 textListStyle:notesTextStyle state:officeArtState];
  }

  [PXSlideBase readFromPackagePart:partCopy toSlideBase:v7 presentationState:stateCopy];
  location = [(OCPPackagePart *)partCopy location];
  [(OCXState *)stateCopy setModelObject:v7 forLocation:location];

  return v7;
}

@end