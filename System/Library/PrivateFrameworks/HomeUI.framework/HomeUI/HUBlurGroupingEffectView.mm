@interface HUBlurGroupingEffectView
- (HUBlurGroupingEffectView)initWithCoder:(id)coder;
- (HUBlurGroupingEffectView)initWithFrame:(CGRect)frame;
- (void)backgroundEffectAddCaptureDependent:(id)dependent forBackgroundEffectIdentifier:(id)identifier;
- (void)backgroundEffectRemoveCaptureDependent:(id)dependent forBackgroundEffectIdentifier:(id)identifier;
- (void)layoutSubviews;
@end

@implementation HUBlurGroupingEffectView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_20CF313DC();
}

- (void)backgroundEffectAddCaptureDependent:(id)dependent forBackgroundEffectIdentifier:(id)identifier
{
  dependentCopy = dependent;
  identifierCopy = identifier;
  selfCopy = self;
  sub_20CF31598(dependentCopy, identifierCopy);
}

- (void)backgroundEffectRemoveCaptureDependent:(id)dependent forBackgroundEffectIdentifier:(id)identifier
{
  dependentCopy = dependent;
  identifierCopy = identifier;
  selfCopy = self;
  sub_20CF31E64(dependentCopy);
}

- (HUBlurGroupingEffectView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR___HUBlurGroupingEffectView_visualEffectViews) = MEMORY[0x277D84F98];
  v8.receiver = self;
  v8.super_class = type metadata accessor for BlurGroupingEffectView();
  return [(HUBlurGroupingEffectView *)&v8 initWithFrame:x, y, width, height];
}

- (HUBlurGroupingEffectView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR___HUBlurGroupingEffectView_visualEffectViews) = MEMORY[0x277D84F98];
  v7.receiver = self;
  v7.super_class = type metadata accessor for BlurGroupingEffectView();
  coderCopy = coder;
  v5 = [(HUBlurGroupingEffectView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end