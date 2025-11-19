@interface DOCGoToNoResultsView
- (_TtC26DocumentManagerExecutablesP33_FE402B1CD7048B20557F1F41FB0A2CFF20DOCGoToNoResultsView)initWithCoder:(id)a3;
- (_TtC26DocumentManagerExecutablesP33_FE402B1CD7048B20557F1F41FB0A2CFF20DOCGoToNoResultsView)initWithFrame:(CGRect)a3;
- (_TtC26DocumentManagerExecutablesP33_FE402B1CD7048B20557F1F41FB0A2CFF20DOCGoToNoResultsView)initWithFrame:(CGRect)a3 title:(id)a4 style:(unint64_t)a5;
- (_TtC26DocumentManagerExecutablesP33_FE402B1CD7048B20557F1F41FB0A2CFF20DOCGoToNoResultsView)initWithFrame:(CGRect)a3 title:(id)a4 style:(unint64_t)a5 includeBackdrop:(BOOL)a6;
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

- (_TtC26DocumentManagerExecutablesP33_FE402B1CD7048B20557F1F41FB0A2CFF20DOCGoToNoResultsView)initWithFrame:(CGRect)a3 title:(id)a4 style:(unint64_t)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (a4)
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
  v13 = [(_UIContentUnavailableView *)&v15 initWithFrame:v12 title:a5 style:x, y, width, height];

  if (v13)
  {
  }

  return v13;
}

- (_TtC26DocumentManagerExecutablesP33_FE402B1CD7048B20557F1F41FB0A2CFF20DOCGoToNoResultsView)initWithFrame:(CGRect)a3 title:(id)a4 style:(unint64_t)a5 includeBackdrop:(BOOL)a6
{
  v6 = a6;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (a4)
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
  v15 = [(_UIContentUnavailableView *)&v17 initWithFrame:v14 title:a5 style:v6 includeBackdrop:x, y, width, height];

  if (v15)
  {
  }

  return v15;
}

- (_TtC26DocumentManagerExecutablesP33_FE402B1CD7048B20557F1F41FB0A2CFF20DOCGoToNoResultsView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for DOCGoToNoResultsView();
  return [(_UIContentUnavailableView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC26DocumentManagerExecutablesP33_FE402B1CD7048B20557F1F41FB0A2CFF20DOCGoToNoResultsView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for DOCGoToNoResultsView();
  v4 = a3;
  v5 = [(DOCGoToNoResultsView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end