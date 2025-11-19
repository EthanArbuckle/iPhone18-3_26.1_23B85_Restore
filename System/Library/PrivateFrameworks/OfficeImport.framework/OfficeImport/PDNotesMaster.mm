@interface PDNotesMaster
- (PDNotesMaster)init;
- (id)colorScheme;
- (id)description;
- (id)drawingTheme;
- (id)fontScheme;
- (id)parentTextStyleForPlaceholderType:(int)a3 placeholderTypeIndex:(int)a4 defaultTextListStyle:(id)a5 overrideIndex:(BOOL)a6;
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
  v2 = [(PDNotesMaster *)self theme];
  v3 = [v2 baseStyles];
  v4 = [v3 colorScheme];

  return v4;
}

- (id)fontScheme
{
  v2 = [(PDNotesMaster *)self theme];
  v3 = [v2 baseStyles];
  v4 = [v3 fontScheme];

  return v4;
}

- (id)styleMatrix
{
  v2 = [(PDNotesMaster *)self theme];
  v3 = [v2 baseStyles];
  v4 = [v3 styleMatrix];

  return v4;
}

- (id)parentTextStyleForPlaceholderType:(int)a3 placeholderTypeIndex:(int)a4 defaultTextListStyle:(id)a5 overrideIndex:(BOOL)a6
{
  v8 = a5;
  v9 = v8;
  if (a3 == 1)
  {
    v9 = [(PDNotesMaster *)self notesTextStyle];
  }

  return v9;
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