@interface PDNotesSlide
- (PDNotesSlide)init;
- (id)description;
- (id)masterPlaceholderOfType:(int)type;
- (id)parentShapePropertiesForPlaceholderType:(int)type placeholderTypeIndex:(int)index overrideIndex:(BOOL)overrideIndex;
- (id)parentTextBodyPropertiesForPlaceholderType:(int)type placeholderTypeIndex:(int)index overrideIndex:(BOOL)overrideIndex;
- (id)parentTextStyleForPlaceholderType:(int)type placeholderTypeIndex:(int)index defaultTextListStyle:(id)style overrideIndex:(BOOL)overrideIndex;
- (void)doneWithContent;
@end

@implementation PDNotesSlide

- (PDNotesSlide)init
{
  v3.receiver = self;
  v3.super_class = PDNotesSlide;
  return [(PDSlideChild *)&v3 init];
}

- (id)masterPlaceholderOfType:(int)type
{
  v3 = *&type;
  notesMaster = [(PDNotesSlide *)self notesMaster];
  v5 = [notesMaster placeholderWithType:v3 placeholderTypeIndex:0 overrideIndex:1];

  return v5;
}

- (id)parentTextBodyPropertiesForPlaceholderType:(int)type placeholderTypeIndex:(int)index overrideIndex:(BOOL)overrideIndex
{
  overrideIndex = [(PDNotesSlide *)self masterPlaceholderOfType:*&type, *&index, overrideIndex];
  textBody = [overrideIndex textBody];
  properties = [textBody properties];

  return properties;
}

- (id)parentTextStyleForPlaceholderType:(int)type placeholderTypeIndex:(int)index defaultTextListStyle:(id)style overrideIndex:(BOOL)overrideIndex
{
  v6 = *&type;
  styleCopy = style;
  notesMaster = [(PDNotesSlide *)self notesMaster];
  v10 = notesMaster;
  if (v6 == 1)
  {
    notesTextStyle = [notesMaster notesTextStyle];
  }

  else
  {
    v12 = [(PDNotesSlide *)self masterPlaceholderOfType:v6];
    textBody = [v12 textBody];
    notesTextStyle = [textBody textListStyle];
  }

  if (notesTextStyle)
  {
    v14 = notesTextStyle;
  }

  else
  {
    v14 = styleCopy;
  }

  v15 = v14;

  return v14;
}

- (id)parentShapePropertiesForPlaceholderType:(int)type placeholderTypeIndex:(int)index overrideIndex:(BOOL)overrideIndex
{
  overrideIndex = [(PDNotesSlide *)self masterPlaceholderOfType:*&type, *&index, overrideIndex];
  shapeProperties = [overrideIndex shapeProperties];

  return shapeProperties;
}

- (void)doneWithContent
{
  mColorMapOverride = self->super.mColorMapOverride;
  self->super.mColorMapOverride = 0;

  v4.receiver = self;
  v4.super_class = PDNotesSlide;
  [(PDSlideChild *)&v4 doneWithContent];
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = PDNotesSlide;
  v2 = [(PDSlideChild *)&v4 description];

  return v2;
}

@end