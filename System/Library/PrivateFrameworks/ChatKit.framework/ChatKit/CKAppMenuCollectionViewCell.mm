@interface CKAppMenuCollectionViewCell
- (CKAppMenuCollectionViewCell)initWithFrame:(CGRect)a3;
- (CKAppMenuCollectionViewCellDelegate)delegate;
- (void)didHoverOverCell:(id)a3;
- (void)handleTap:(id)a3;
- (void)layoutSubviews;
- (void)setSelected:(BOOL)a3;
@end

@implementation CKAppMenuCollectionViewCell

- (CKAppMenuCollectionViewCell)initWithFrame:(CGRect)a3
{
  v31.receiver = self;
  v31.super_class = CKAppMenuCollectionViewCell;
  v3 = [(CKAppMenuCollectionViewCell *)&v31 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCC10]);
    v5 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 8);
    v7 = *(MEMORY[0x1E695F058] + 16);
    v8 = *(MEMORY[0x1E695F058] + 24);
    v9 = [v4 initWithFrame:{*MEMORY[0x1E695F058], v6, v7, v8}];
    [(CKAppMenuCollectionViewCell *)v3 setTitleLabel:v9];

    v10 = [(CKAppMenuCollectionViewCell *)v3 titleLabel];
    v11 = +[CKUIBehavior sharedBehaviors];
    v12 = [v11 appMenuTitleFont];
    [v10 setFont:v12];

    v13 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v14 = [(CKAppMenuCollectionViewCell *)v3 titleLabel];
    [v14 setTextColor:v13];

    v15 = [(CKAppMenuCollectionViewCell *)v3 contentView];
    v16 = [(CKAppMenuCollectionViewCell *)v3 titleLabel];
    [v15 addSubview:v16];

    v17 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v5, v6, v7, v8}];
    [(CKAppMenuCollectionViewCell *)v3 setImageView:v17];

    v18 = [(CKAppMenuCollectionViewCell *)v3 contentView];
    v19 = [(CKAppMenuCollectionViewCell *)v3 imageView];
    [v18 addSubview:v19];

    v20 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v5, v6, v7, v8}];
    [(CKAppMenuCollectionViewCell *)v3 setSelectionView:v20];

    v21 = +[CKUIBehavior sharedBehaviors];
    v22 = [v21 theme];
    v23 = [v22 appTintColor];
    v24 = [(CKAppMenuCollectionViewCell *)v3 selectionView];
    [v24 setBackgroundColor:v23];

    v25 = [(CKAppMenuCollectionViewCell *)v3 selectionView];
    [v25 setAlpha:0.0];

    v26 = [(CKAppMenuCollectionViewCell *)v3 contentView];
    v27 = [(CKAppMenuCollectionViewCell *)v3 selectionView];
    [v26 insertSubview:v27 atIndex:0];

    v28 = [objc_alloc(MEMORY[0x1E69DCAA0]) initWithTarget:v3 action:sel_didHoverOverCell_];
    [(CKAppMenuCollectionViewCell *)v3 addGestureRecognizer:v28];
    v29 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v3 action:sel_handleTap_];
    [(CKAppMenuCollectionViewCell *)v3 addGestureRecognizer:v29];
  }

  return v3;
}

- (void)layoutSubviews
{
  v48.receiver = self;
  v48.super_class = CKAppMenuCollectionViewCell;
  [(CKAppMenuCollectionViewCell *)&v48 layoutSubviews];
  v3 = +[CKUIBehavior sharedBehaviors];
  [v3 iMessageAppIconSize];
  v5 = v4;
  v7 = v6;

  [(CKAppMenuCollectionViewCell *)self layoutMargins];
  v9 = v8;
  v10 = [(CKAppMenuCollectionViewCell *)self contentView];
  [v10 frame];
  v11 = CGRectGetMidY(v49) - v7 * 0.5;
  v12 = [(CKAppMenuCollectionViewCell *)self imageView];
  [v12 setFrame:{v9, v11, v5, v7}];

  v13 = [(CKAppMenuCollectionViewCell *)self titleLabel];
  [v13 intrinsicContentSize];
  v15 = v14;

  v16 = [(CKAppMenuCollectionViewCell *)self contentView];
  [v16 frame];
  v18 = v17;
  [(CKAppMenuCollectionViewCell *)self layoutMargins];
  v20 = v18 - v19;
  v21 = [(CKAppMenuCollectionViewCell *)self imageView];
  [v21 frame];
  v22 = v20 - CGRectGetMaxX(v50);
  [(CKAppMenuCollectionViewCell *)self layoutMargins];
  v24 = v22 - v23;

  if (v15 >= v24)
  {
    v15 = v24;
  }

  v25 = [(CKAppMenuCollectionViewCell *)self imageView];
  [v25 frame];
  MaxX = CGRectGetMaxX(v51);
  [(CKAppMenuCollectionViewCell *)self layoutMargins];
  v28 = MaxX + v27;
  v29 = [(CKAppMenuCollectionViewCell *)self contentView];
  [v29 frame];
  MidY = CGRectGetMidY(v52);
  v31 = [(CKAppMenuCollectionViewCell *)self titleLabel];
  [v31 intrinsicContentSize];
  v33 = MidY - v32 * 0.5;
  v34 = [(CKAppMenuCollectionViewCell *)self titleLabel];
  [v34 intrinsicContentSize];
  v36 = v35;
  v37 = [(CKAppMenuCollectionViewCell *)self titleLabel];
  [v37 setFrame:{v28, v33, v15, v36}];

  v38 = [(CKAppMenuCollectionViewCell *)self contentView];
  [v38 bounds];
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = [(CKAppMenuCollectionViewCell *)self selectionView];
  [v47 setFrame:{v40, v42, v44, v46}];
}

- (void)didHoverOverCell:(id)a3
{
  v4 = a3;
  v6 = [(CKAppMenuCollectionViewCell *)self delegate];
  v5 = [v4 state];

  [v6 appMenuCollectionViewCell:self didHoverWithState:v5];
}

- (void)handleTap:(id)a3
{
  v4 = [(CKAppMenuCollectionViewCell *)self delegate];
  [v4 appMenuCollectionViewCellWasTapped:self];
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = CKAppMenuCollectionViewCell;
  [(CKAppMenuCollectionViewCell *)&v8 setSelected:?];
  v5 = [(CKAppMenuCollectionViewCell *)self selectionView];
  [v5 setAlpha:v3];

  if (v3)
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] secondaryLabelColor];
  }
  v6 = ;
  v7 = [(CKAppMenuCollectionViewCell *)self titleLabel];
  [v7 setTextColor:v6];
}

- (CKAppMenuCollectionViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end