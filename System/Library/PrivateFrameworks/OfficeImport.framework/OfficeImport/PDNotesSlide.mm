@interface PDNotesSlide
- (PDNotesSlide)init;
- (id)description;
- (id)masterPlaceholderOfType:(int)a3;
- (id)parentShapePropertiesForPlaceholderType:(int)a3 placeholderTypeIndex:(int)a4 overrideIndex:(BOOL)a5;
- (id)parentTextBodyPropertiesForPlaceholderType:(int)a3 placeholderTypeIndex:(int)a4 overrideIndex:(BOOL)a5;
- (id)parentTextStyleForPlaceholderType:(int)a3 placeholderTypeIndex:(int)a4 defaultTextListStyle:(id)a5 overrideIndex:(BOOL)a6;
- (void)doneWithContent;
@end

@implementation PDNotesSlide

- (PDNotesSlide)init
{
  v3.receiver = self;
  v3.super_class = PDNotesSlide;
  return [(PDSlideChild *)&v3 init];
}

- (id)masterPlaceholderOfType:(int)a3
{
  v3 = *&a3;
  v4 = [(PDNotesSlide *)self notesMaster];
  v5 = [v4 placeholderWithType:v3 placeholderTypeIndex:0 overrideIndex:1];

  return v5;
}

- (id)parentTextBodyPropertiesForPlaceholderType:(int)a3 placeholderTypeIndex:(int)a4 overrideIndex:(BOOL)a5
{
  v5 = [(PDNotesSlide *)self masterPlaceholderOfType:*&a3, *&a4, a5];
  v6 = [v5 textBody];
  v7 = [v6 properties];

  return v7;
}

- (id)parentTextStyleForPlaceholderType:(int)a3 placeholderTypeIndex:(int)a4 defaultTextListStyle:(id)a5 overrideIndex:(BOOL)a6
{
  v6 = *&a3;
  v8 = a5;
  v9 = [(PDNotesSlide *)self notesMaster];
  v10 = v9;
  if (v6 == 1)
  {
    v11 = [v9 notesTextStyle];
  }

  else
  {
    v12 = [(PDNotesSlide *)self masterPlaceholderOfType:v6];
    v13 = [v12 textBody];
    v11 = [v13 textListStyle];
  }

  if (v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = v8;
  }

  v15 = v14;

  return v14;
}

- (id)parentShapePropertiesForPlaceholderType:(int)a3 placeholderTypeIndex:(int)a4 overrideIndex:(BOOL)a5
{
  v5 = [(PDNotesSlide *)self masterPlaceholderOfType:*&a3, *&a4, a5];
  v6 = [v5 shapeProperties];

  return v6;
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