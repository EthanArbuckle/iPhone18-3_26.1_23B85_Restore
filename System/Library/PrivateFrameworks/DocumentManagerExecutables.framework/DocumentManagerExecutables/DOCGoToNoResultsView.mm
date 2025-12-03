@interface DOCGoToNoResultsView
- (_TtC26DocumentManagerExecutablesP33_FE402B1CD7048B20557F1F41FB0A2CFF20DOCGoToNoResultsView)initWithCoder:(id)coder;
- (_TtC26DocumentManagerExecutablesP33_FE402B1CD7048B20557F1F41FB0A2CFF20DOCGoToNoResultsView)initWithFrame:(CGRect)frame;
- (_TtC26DocumentManagerExecutablesP33_FE402B1CD7048B20557F1F41FB0A2CFF20DOCGoToNoResultsView)initWithFrame:(CGRect)frame title:(id)title style:(unint64_t)style;
- (_TtC26DocumentManagerExecutablesP33_FE402B1CD7048B20557F1F41FB0A2CFF20DOCGoToNoResultsView)initWithFrame:(CGRect)frame title:(id)title style:(unint64_t)style includeBackdrop:(BOOL)backdrop;
- (double)_labelAlpha;
@end

@implementation DOCGoToNoResultsView

- (double)_labelAlpha
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for DOCGoToNoResultsView();
  [(_UIContentUnavailableView *)&v4 _labelAlpha];
  return v2 * 0.5;
}

- (_TtC26DocumentManagerExecutablesP33_FE402B1CD7048B20557F1F41FB0A2CFF20DOCGoToNoResultsView)initWithFrame:(CGRect)frame title:(id)title style:(unint64_t)style
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (title)
  {
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = MEMORY[0x24C1FAD20](v11);
  }

  else
  {
    v12 = 0;
  }

  v15.receiver = self;
  v15.super_class = type metadata accessor for DOCGoToNoResultsView();
  height = [(_UIContentUnavailableView *)&v15 initWithFrame:v12 title:style style:x, y, width, height];

  if (height)
  {
  }

  return height;
}

- (_TtC26DocumentManagerExecutablesP33_FE402B1CD7048B20557F1F41FB0A2CFF20DOCGoToNoResultsView)initWithFrame:(CGRect)frame title:(id)title style:(unint64_t)style includeBackdrop:(BOOL)backdrop
{
  backdropCopy = backdrop;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (title)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = MEMORY[0x24C1FAD20](v13);
  }

  else
  {
    v14 = 0;
  }

  v17.receiver = self;
  v17.super_class = type metadata accessor for DOCGoToNoResultsView();
  height = [(_UIContentUnavailableView *)&v17 initWithFrame:v14 title:style style:backdropCopy includeBackdrop:x, y, width, height];

  if (height)
  {
  }

  return height;
}

- (_TtC26DocumentManagerExecutablesP33_FE402B1CD7048B20557F1F41FB0A2CFF20DOCGoToNoResultsView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for DOCGoToNoResultsView();
  return [(_UIContentUnavailableView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC26DocumentManagerExecutablesP33_FE402B1CD7048B20557F1F41FB0A2CFF20DOCGoToNoResultsView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for DOCGoToNoResultsView();
  coderCopy = coder;
  v5 = [(DOCGoToNoResultsView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end