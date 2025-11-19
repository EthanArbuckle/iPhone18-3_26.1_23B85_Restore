@interface OCXState
- (OCXState)init;
- (id)OCXCommentAuthorsRelationshipType;
- (id)OCXCommentsRelationshipType;
- (id)OCXCustomXmlRelationshipType;
- (id)OCXDrawingRelationshipType;
- (id)OCXEndnotesRelationshipType;
- (id)OCXFontTableRelationshipType;
- (id)OCXFootnotesRelationshipType;
- (id)OCXNotesMasterRelationshipType;
- (id)OCXNotesSlideRelationshipType;
- (id)OCXNumberingRelationshipType;
- (id)OCXPackagePresPropsRelationshipType;
- (id)OCXPackageViewPropsRelationshipType;
- (id)OCXPivotTableRelationshipType;
- (id)OCXSettingsRelationshipType;
- (id)OCXSharedStringsRelationshipType;
- (id)OCXSlideLayoutRelationshipType;
- (id)OCXSlideMasterRelationshipType;
- (id)OCXSlideRelationshipType;
- (id)OCXStylesRelationshipType;
- (id)OCXTableRelationshipType;
- (id)OCXTableStylesRelationshipType;
- (id)OCXThemeOverrideRelationshipType;
- (id)OCXThemeRelationshipType;
- (void)setupNSForXMLFormat:(int)a3;
@end

@implementation OCXState

- (OCXState)init
{
  v5.receiver = self;
  v5.super_class = OCXState;
  v2 = [(OCXState *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(OCXState *)v2 setupNSForXMLFormat:0];
  }

  return v3;
}

- (void)setupNSForXMLFormat:(int)a3
{
  if (a3)
  {
    self->mXMLFormat = 1;
    v4 = [CXNamespace alloc];
    v5 = [[CXNamespace alloc] initWithUri:"http://schemas.openxmlformats.org/officeDocument/2006/relationships"];
    v6 = [(CXNamespace *)v4 initWithUri:"http://purl.oclc.org/ooxml/officeDocument/relationships" fallbackNamespace:v5];
    [(OCXState *)self setOCXRelationshipsNamespace:v6];
  }

  else
  {
    self->mXMLFormat = 0;
    v5 = [[CXNamespace alloc] initWithUri:"http://schemas.openxmlformats.org/officeDocument/2006/relationships"];
    [(OCXState *)self setOCXRelationshipsNamespace:v5];
  }

  v7 = OCXDrawingNamespace;

  [(OCXState *)self setOCXDrawingNamespace:v7];
}

- (id)OCXStylesRelationshipType
{
  if (self->mXMLFormat == 1)
  {
    v2 = &OCXStrictRelationshipStyles;
  }

  else
  {
    v2 = &OCXRelationshipStyles;
  }

  return *v2;
}

- (id)OCXSharedStringsRelationshipType
{
  if (self->mXMLFormat == 1)
  {
    v2 = &OCXStrictRelationshipSharedStrings;
  }

  else
  {
    v2 = &OCXRelationshipSharedStrings;
  }

  return *v2;
}

- (id)OCXDrawingRelationshipType
{
  if (self->mXMLFormat == 1)
  {
    v2 = &OCXStrictRelationshipDrawing;
  }

  else
  {
    v2 = &OCXRelationshipDrawing;
  }

  return *v2;
}

- (id)OCXEndnotesRelationshipType
{
  if (self->mXMLFormat == 1)
  {
    v2 = &OCXStrictRelationshipEndnotes;
  }

  else
  {
    v2 = &OCXRelationshipEndnotes;
  }

  return *v2;
}

- (id)OCXFontTableRelationshipType
{
  if (self->mXMLFormat == 1)
  {
    v2 = &OCXStrictRelationshipFontTable;
  }

  else
  {
    v2 = &OCXRelationshipFontTable;
  }

  return *v2;
}

- (id)OCXFootnotesRelationshipType
{
  if (self->mXMLFormat == 1)
  {
    v2 = &OCXStrictRelationshipFootnotes;
  }

  else
  {
    v2 = &OCXRelationshipFootnotes;
  }

  return *v2;
}

- (id)OCXCommentsRelationshipType
{
  if (self->mXMLFormat == 1)
  {
    v2 = &OCXStrictRelationshipComments;
  }

  else
  {
    v2 = &OCXRelationshipComments;
  }

  return *v2;
}

- (id)OCXPivotTableRelationshipType
{
  if (self->mXMLFormat == 1)
  {
    v2 = &OCXStrictRelationshipPivotTable;
  }

  else
  {
    v2 = &OCXRelationshipPivotTable;
  }

  return *v2;
}

- (id)OCXTableRelationshipType
{
  if (self->mXMLFormat == 1)
  {
    v2 = &OCXStrictRelationshipTable;
  }

  else
  {
    v2 = &OCXRelationshipTable;
  }

  return *v2;
}

- (id)OCXSlideMasterRelationshipType
{
  if (self->mXMLFormat == 1)
  {
    v2 = &OCXStrictRelationshipSlideMaster;
  }

  else
  {
    v2 = &OCXRelationshipSlideMaster;
  }

  return *v2;
}

- (id)OCXSlideLayoutRelationshipType
{
  if (self->mXMLFormat == 1)
  {
    v2 = &OCXStrictRelationshipSlideLayout;
  }

  else
  {
    v2 = &OCXRelationshipSlideLayout;
  }

  return *v2;
}

- (id)OCXSlideRelationshipType
{
  if (self->mXMLFormat == 1)
  {
    v2 = &OCXStrictRelationshipSlide;
  }

  else
  {
    v2 = &OCXRelationshipSlide;
  }

  return *v2;
}

- (id)OCXNotesSlideRelationshipType
{
  if (self->mXMLFormat == 1)
  {
    v2 = &OCXStrictRelationshipNotesSlide;
  }

  else
  {
    v2 = &OCXRelationshipNotesSlide;
  }

  return *v2;
}

- (id)OCXCommentAuthorsRelationshipType
{
  if (self->mXMLFormat == 1)
  {
    v2 = &OCXStrictRelationshipCommentAuthors;
  }

  else
  {
    v2 = &OCXRelationshipCommentAuthors;
  }

  return *v2;
}

- (id)OCXCustomXmlRelationshipType
{
  if (self->mXMLFormat == 1)
  {
    v2 = &OCXStrictRelationshipCustomXML;
  }

  else
  {
    v2 = &OCXRelationshipCustomXML;
  }

  return *v2;
}

- (id)OCXThemeRelationshipType
{
  if (self->mXMLFormat == 1)
  {
    v2 = &OCXStrictRelationshipTheme;
  }

  else
  {
    v2 = &OCXRelationshipTheme;
  }

  return *v2;
}

- (id)OCXThemeOverrideRelationshipType
{
  if (self->mXMLFormat == 1)
  {
    v2 = &OCXStrictRelationshipThemeOverride;
  }

  else
  {
    v2 = &OCXRelationshipThemeOverride;
  }

  return *v2;
}

- (id)OCXNotesMasterRelationshipType
{
  if (self->mXMLFormat == 1)
  {
    v2 = &OCXStrictRelationshipNotesMaster;
  }

  else
  {
    v2 = &OCXRelationshipNotesMaster;
  }

  return *v2;
}

- (id)OCXNumberingRelationshipType
{
  if (self->mXMLFormat == 1)
  {
    v2 = &OCXStrictRelationshipNumbering;
  }

  else
  {
    v2 = &OCXRelationshipNumbering;
  }

  return *v2;
}

- (id)OCXPackagePresPropsRelationshipType
{
  if (self->mXMLFormat == 1)
  {
    v2 = &OCXStrictRelationshipPackagePresProps;
  }

  else
  {
    v2 = &OCXRelationshipPackagePresProps;
  }

  return *v2;
}

- (id)OCXPackageViewPropsRelationshipType
{
  if (self->mXMLFormat == 1)
  {
    v2 = &OCXStrictRelationshipPackageViewProps;
  }

  else
  {
    v2 = &OCXRelationshipPackageViewProps;
  }

  return *v2;
}

- (id)OCXTableStylesRelationshipType
{
  if (self->mXMLFormat == 1)
  {
    v2 = &OCXStrictRelationshipTableStyles;
  }

  else
  {
    v2 = &OCXRelationshipTableStyles;
  }

  return *v2;
}

- (id)OCXSettingsRelationshipType
{
  if (self->mXMLFormat == 1)
  {
    v2 = &OCXStrictRelationshipSettings;
  }

  else
  {
    v2 = &OCXRelationshipSettings;
  }

  return *v2;
}

@end