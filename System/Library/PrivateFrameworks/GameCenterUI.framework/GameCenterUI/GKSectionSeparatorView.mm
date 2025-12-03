@interface GKSectionSeparatorView
- (GKSectionSeparatorView)initWithFrame:(CGRect)frame;
@end

@implementation GKSectionSeparatorView

- (GKSectionSeparatorView)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = GKSectionSeparatorView;
  v3 = [(GKSectionSeparatorView *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(GKHairlineView);
    underlineView = v3->_underlineView;
    v3->_underlineView = &v4->super;

    [(UIView *)v3->_underlineView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(GKSectionSeparatorView *)v3 addSubview:v3->_underlineView];
    v6 = [MEMORY[0x277CCAAD0] constraintWithItem:v3->_underlineView attribute:4 relatedBy:0 toItem:v3 attribute:4 multiplier:1.0 constant:0.0];
    [(GKSectionSeparatorView *)v3 addConstraint:v6];

    v7 = MEMORY[0x277CCAAD0];
    v8 = _NSDictionaryOfVariableBindings(&cfstr_Underlineview.isa, v3->_underlineView, 0);
    v9 = [v7 constraintsWithVisualFormat:@"|-(15)-[_underlineView]|" options:0 metrics:0 views:v8];
    [(GKSectionSeparatorView *)v3 addConstraints:v9];
  }

  return v3;
}

@end