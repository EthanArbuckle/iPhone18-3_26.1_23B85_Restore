@interface MUPunchoutCollectionViewCell
+ (id)reuseIdentifier;
- (MUPunchoutCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)_setupContentView;
@end

@implementation MUPunchoutCollectionViewCell

- (void)_setupContentView
{
  v3 = [MUPunchoutView alloc];
  v4 = [(MUPunchoutView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  punchoutView = self->_punchoutView;
  self->_punchoutView = v4;

  [(MUPunchoutView *)self->_punchoutView setClipsToBounds:1];
  v6 = [(MUPunchoutCollectionViewCell *)self contentView];
  [v6 addSubview:self->_punchoutView];

  v7 = [(MUPunchoutCollectionViewCell *)self contentView];
  [v7 _mapsui_setCardCorner];

  v8 = [MUEdgeLayout alloc];
  v9 = self->_punchoutView;
  v11 = [(MUPunchoutCollectionViewCell *)self contentView];
  v10 = [(MUEdgeLayout *)v8 initWithItem:v9 container:v11];
  [(MUConstraintLayout *)v10 activate];
}

- (MUPunchoutCollectionViewCell)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = MUPunchoutCollectionViewCell;
  v3 = [(MUPunchoutCollectionViewCell *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    [(MUPunchoutCollectionViewCell *)v3 setAccessibilityIdentifier:v5];

    [(MUPunchoutCollectionViewCell *)v3 _setupContentView];
    [(UIView *)v3 _mapsui_setCardCorner];
  }

  return v3;
}

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end