@interface NTKUtilityCircularComplicationView
- (CGSize)sizeThatFits:(CGSize)fits;
- (NTKUtilityCircularComplicationView)initWithFrame:(CGRect)frame;
- (void)_updateEditingRotationAngle;
- (void)layoutSubviews;
- (void)setEditing:(BOOL)editing;
- (void)setEditingRotationAngle:(double)angle;
@end

@implementation NTKUtilityCircularComplicationView

- (NTKUtilityCircularComplicationView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = NTKUtilityCircularComplicationView;
  v3 = [(NTKUtilityComplicationView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(NTKContainerView);
    contentView = v3->_contentView;
    v3->_contentView = v4;

    [(NTKContainerView *)v3->_contentView setLayoutDelegate:v3];
    [(NTKContainerView *)v3->_contentView setUserInteractionEnabled:0];
    [(NTKUtilityCircularComplicationView *)v3 addSubview:v3->_contentView];
  }

  return v3;
}

- (void)layoutSubviews
{
  v36.receiver = self;
  v36.super_class = NTKUtilityCircularComplicationView;
  [(NTKUtilityComplicationView *)&v36 layoutSubviews];
  [(NTKUtilityCircularComplicationView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  device = [(NTKUtilityComplicationView *)self device];
  ___LayoutConstants_block_invoke_70(device, v34);
  v12 = -v35;
  device2 = [(NTKUtilityComplicationView *)self device];
  ___LayoutConstants_block_invoke_70(device2, v32);
  v37.origin.x = v4;
  v37.origin.y = v6;
  v37.size.width = v8;
  v37.size.height = v10;
  v38 = CGRectInset(v37, v12, -v33);
  x = v38.origin.x;
  y = v38.origin.y;
  width = v38.size.width;
  height = v38.size.height;

  highlightView = [(NTKUtilityComplicationView *)self highlightView];
  [highlightView setFrame:{x, y, width, height}];

  bounds = [(NTKUtilityCircularComplicationView *)self bounds];
  v21 = v20;
  contentView = self->_contentView;
  MEMORY[0x2318D8E70](bounds);
  [(NTKContainerView *)contentView setCenter:?];
  [(NTKContainerView *)self->_contentView bounds];
  v24 = v23;
  v26 = v25;
  [(NTKUtilityCircularComplicationView *)self sizeThatFits:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
  v28 = v27;
  [(NTKContainerView *)self->_contentView setBounds:v24, v26, v29, v27];
  v30 = self->_contentView;
  CGAffineTransformMakeScale(&v31, v21 / v28, v21 / v28);
  [(NTKContainerView *)v30 setTransform:&v31];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = [(NTKUtilityComplicationView *)self device:fits.width];
  ___LayoutConstants_block_invoke_70(v3, v7);
  v4 = v8;

  v5 = v4;
  v6 = v4;
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)setEditing:(BOOL)editing
{
  v4.receiver = self;
  v4.super_class = NTKUtilityCircularComplicationView;
  [(NTKUtilityComplicationView *)&v4 setEditing:editing];
  [(NTKUtilityCircularComplicationView *)self _updateEditingRotationAngle];
}

- (void)setEditingRotationAngle:(double)angle
{
  v4.receiver = self;
  v4.super_class = NTKUtilityCircularComplicationView;
  [(NTKUtilityComplicationView *)&v4 setEditingRotationAngle:angle];
  [(NTKUtilityCircularComplicationView *)self _updateEditingRotationAngle];
}

- (void)_updateEditingRotationAngle
{
  if ([(NTKUtilityComplicationView *)self editing])
  {
    [(NTKUtilityComplicationView *)self editingRotationAngle];
    CGAffineTransformMakeRotation(&v9, v3);
    v6 = *&v9.a;
    v7 = *&v9.c;
    v4 = *&v9.tx;
  }

  else
  {
    v5 = *(MEMORY[0x277CBF2C0] + 16);
    v6 = *MEMORY[0x277CBF2C0];
    v7 = v5;
    v4 = *(MEMORY[0x277CBF2C0] + 32);
  }

  v8 = v4;
  [(NTKUtilityCircularComplicationView *)self setTransform:&v6];
}

@end