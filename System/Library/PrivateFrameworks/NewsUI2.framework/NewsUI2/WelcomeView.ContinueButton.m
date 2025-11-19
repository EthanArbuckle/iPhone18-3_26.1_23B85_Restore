@interface WelcomeView.ContinueButton
- (BOOL)isHighlighted;
- (_TtCC7NewsUI211WelcomeView14ContinueButton)initWithCoder:(id)a3;
- (_TtCC7NewsUI211WelcomeView14ContinueButton)initWithFrame:(CGRect)a3;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation WelcomeView.ContinueButton

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for WelcomeView.ContinueButton();
  return [(WelcomeView.ContinueButton *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for WelcomeView.ContinueButton();
  v4 = v5.receiver;
  [(WelcomeView.ContinueButton *)&v5 setHighlighted:v3];
  sub_218A5064C();
}

- (_TtCC7NewsUI211WelcomeView14ContinueButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13.receiver = self;
  v13.super_class = type metadata accessor for WelcomeView.ContinueButton();
  v7 = [(WelcomeView.ContinueButton *)&v13 initWithFrame:x, y, width, height];
  v8 = qword_280E8DA88;
  v9 = v7;
  if (v8 != -1)
  {
    v12 = v9;
    swift_once();
    v9 = v12;
  }

  v10 = v9;
  [(WelcomeView.ContinueButton *)v9 setBackgroundColor:qword_280F617F8];

  return v10;
}

- (_TtCC7NewsUI211WelcomeView14ContinueButton)initWithCoder:(id)a3
{
  result = sub_219BF7514();
  __break(1u);
  return result;
}

@end