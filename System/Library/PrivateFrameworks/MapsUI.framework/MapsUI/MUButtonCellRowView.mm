@interface MUButtonCellRowView
- (MUButtonCellRowView)initWithFrame:(CGRect)frame;
- (void)_setupAccessibilityIdentifier;
- (void)_setupSubviews;
- (void)layoutSubviews;
- (void)setViewModel:(id)model;
@end

@implementation MUButtonCellRowView

- (void)_setupAccessibilityIdentifier
{
  viewModel = self->_viewModel;
  v4 = objc_opt_respondsToSelector();
  contentView = self->_contentView;
  if (v4)
  {
    accessibilityIdentifierForAction = [(MUDynamicButtonCellModel *)self->_viewModel accessibilityIdentifierForAction];
    v6 = [@"ButtonCellType" stringByAppendingString:accessibilityIdentifierForAction];
    [(MUGridButtonCell *)contentView setAccessibilityIdentifier:v6];
  }

  else
  {
    v7 = self->_contentView;

    [(MUGridButtonCell *)v7 setAccessibilityIdentifier:@"ButtonCellTypeUnknown"];
  }
}

- (void)setViewModel:(id)model
{
  modelCopy = model;
  if (self->_viewModel != modelCopy)
  {
    v6 = modelCopy;
    objc_storeStrong(&self->_viewModel, model);
    [(MUButtonCellRowView *)self _setupAccessibilityIdentifier];
    [(MUGridButtonCell *)self->_contentView setViewModel:v6];
    modelCopy = v6;
  }
}

- (void)_setupSubviews
{
  v3 = [MUGridButtonCell alloc];
  v4 = [(MUGridButtonCell *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  contentView = self->_contentView;
  self->_contentView = v4;

  [(MUButtonCellRowView *)self addSubview:self->_contentView];
  v6 = [[MUEdgeLayout alloc] initWithItem:self->_contentView container:self];
  [(MUConstraintLayout *)v6 activate];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = MUButtonCellRowView;
  [(MKViewWithHairline *)&v3 layoutSubviews];
  [(MUButtonCellRowView *)self bounds];
  [(MUButtonCellRowView *)self _setContinuousCornerRadius:CGRectGetHeight(v4) * 0.5];
}

- (MUButtonCellRowView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MUButtonCellRowView;
  v3 = [(MUPlaceSectionRowView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 _mapsui_resetLayoutMargins];
    [(MUButtonCellRowView *)v4 _setupSubviews];
  }

  return v4;
}

@end