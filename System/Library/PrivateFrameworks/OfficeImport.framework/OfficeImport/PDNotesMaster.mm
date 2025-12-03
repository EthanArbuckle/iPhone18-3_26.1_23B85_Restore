@interface PDNotesMaster
- (PDNotesMaster)init;
- (id)colorScheme;
- (id)description;
- (id)drawingTheme;
- (id)fontScheme;
- (id)parentTextStyleForPlaceholderType:(int)type placeholderTypeIndex:(int)index defaultTextListStyle:(id)style overrideIndex:(BOOL)overrideIndex;
- (id)styleMatrix;
- (void)doneWithContent;
- (void)removeUnnecessaryOverrides;
- (void)setUpPropertyHierarchyPreservingEffectiveValues;
@end

@implementation PDNotesMaster

- (PDNotesMaster)init
{
  v10.receiver = self;
  v10.super_class = PDNotesMaster;
  v2 = [(PDSlideBase *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(OADTheme);
    mTheme = v2->mTheme;
    v2->mTheme = v3;

    v5 = objc_alloc_init(OADColorMap);
    mColorMap = v2->mColorMap;
    v2->mColorMap = v5;

    v7 = objc_alloc_init(OADTextListStyle);
    mNotesTextStyle = v2->mNotesTextStyle;
    v2->mNotesTextStyle = v7;

    [(OADColorMap *)v2->mColorMap addDefaultMappings:1];
  }

  return v2;
}

- (id)colorScheme
{
  theme = [(PDNotesMaster *)self theme];
  baseStyles = [theme baseStyles];
  colorScheme = [baseStyles colorScheme];

  return colorScheme;
}

- (id)fontScheme
{
  theme = [(PDNotesMaster *)self theme];
  baseStyles = [theme baseStyles];
  fontScheme = [baseStyles fontScheme];

  return fontScheme;
}

- (id)styleMatrix
{
  theme = [(PDNotesMaster *)self theme];
  baseStyles = [theme baseStyles];
  styleMatrix = [baseStyles styleMatrix];

  return styleMatrix;
}

- (id)parentTextStyleForPlaceholderType:(int)type placeholderTypeIndex:(int)index defaultTextListStyle:(id)style overrideIndex:(BOOL)overrideIndex
{
  styleCopy = style;
  notesTextStyle = styleCopy;
  if (type == 1)
  {
    notesTextStyle = [(PDNotesMaster *)self notesTextStyle];
  }

  return notesTextStyle;
}

- (void)doneWithContent
{
  mTheme = self->mTheme;
  self->mTheme = 0;

  mColorMap = self->mColorMap;
  self->mColorMap = 0;

  mNotesTextStyle = self->mNotesTextStyle;
  self->mNotesTextStyle = 0;

  v6.receiver = self;
  v6.super_class = PDNotesMaster;
  [(PDSlideBase *)&v6 doneWithContent];
}

- (id)drawingTheme
{
  v2 = [[OADDrawingTheme alloc] initWithTheme:self->mTheme colorMap:self->mColorMap colorPalette:0];

  return v2;
}

- (void)setUpPropertyHierarchyPreservingEffectiveValues
{
  mNotesTextStyle = self->mNotesTextStyle;
  v4 = +[OADTextListStyle defaultObject];
  [(OADTextListStyle *)mNotesTextStyle changeParentTextListStylePreservingEffectiveValues:v4];

  v5.receiver = self;
  v5.super_class = PDNotesMaster;
  [(PDSlideBase *)&v5 setUpPropertyHierarchyPreservingEffectiveValues];
}

- (void)removeUnnecessaryOverrides
{
  v3.receiver = self;
  v3.super_class = PDNotesMaster;
  [(PDSlideBase *)&v3 removeUnnecessaryOverrides];
  [(OADTextListStyle *)self->mNotesTextStyle removeUnnecessaryOverrides];
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = PDNotesMaster;
  v2 = [(PDSlideBase *)&v4 description];

  return v2;
}

@end