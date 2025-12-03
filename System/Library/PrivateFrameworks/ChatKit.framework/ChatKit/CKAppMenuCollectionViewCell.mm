@interface CKAppMenuCollectionViewCell
- (CKAppMenuCollectionViewCell)initWithFrame:(CGRect)frame;
- (CKAppMenuCollectionViewCellDelegate)delegate;
- (void)didHoverOverCell:(id)cell;
- (void)handleTap:(id)tap;
- (void)layoutSubviews;
- (void)setSelected:(BOOL)selected;
@end

@implementation CKAppMenuCollectionViewCell

- (CKAppMenuCollectionViewCell)initWithFrame:(CGRect)frame
{
  v31.receiver = self;
  v31.super_class = CKAppMenuCollectionViewCell;
  v3 = [(CKAppMenuCollectionViewCell *)&v31 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCC10]);
    v5 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 8);
    v7 = *(MEMORY[0x1E695F058] + 16);
    v8 = *(MEMORY[0x1E695F058] + 24);
    v9 = [v4 initWithFrame:{*MEMORY[0x1E695F058], v6, v7, v8}];
    [(CKAppMenuCollectionViewCell *)v3 setTitleLabel:v9];

    titleLabel = [(CKAppMenuCollectionViewCell *)v3 titleLabel];
    v11 = +[CKUIBehavior sharedBehaviors];
    appMenuTitleFont = [v11 appMenuTitleFont];
    [titleLabel setFont:appMenuTitleFont];

    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    titleLabel2 = [(CKAppMenuCollectionViewCell *)v3 titleLabel];
    [titleLabel2 setTextColor:secondaryLabelColor];

    contentView = [(CKAppMenuCollectionViewCell *)v3 contentView];
    titleLabel3 = [(CKAppMenuCollectionViewCell *)v3 titleLabel];
    [contentView addSubview:titleLabel3];

    v17 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v5, v6, v7, v8}];
    [(CKAppMenuCollectionViewCell *)v3 setImageView:v17];

    contentView2 = [(CKAppMenuCollectionViewCell *)v3 contentView];
    imageView = [(CKAppMenuCollectionViewCell *)v3 imageView];
    [contentView2 addSubview:imageView];

    v20 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v5, v6, v7, v8}];
    [(CKAppMenuCollectionViewCell *)v3 setSelectionView:v20];

    v21 = +[CKUIBehavior sharedBehaviors];
    theme = [v21 theme];
    appTintColor = [theme appTintColor];
    selectionView = [(CKAppMenuCollectionViewCell *)v3 selectionView];
    [selectionView setBackgroundColor:appTintColor];

    selectionView2 = [(CKAppMenuCollectionViewCell *)v3 selectionView];
    [selectionView2 setAlpha:0.0];

    contentView3 = [(CKAppMenuCollectionViewCell *)v3 contentView];
    selectionView3 = [(CKAppMenuCollectionViewCell *)v3 selectionView];
    [contentView3 insertSubview:selectionView3 atIndex:0];

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
  contentView = [(CKAppMenuCollectionViewCell *)self contentView];
  [contentView frame];
  v11 = CGRectGetMidY(v49) - v7 * 0.5;
  imageView = [(CKAppMenuCollectionViewCell *)self imageView];
  [imageView setFrame:{v9, v11, v5, v7}];

  titleLabel = [(CKAppMenuCollectionViewCell *)self titleLabel];
  [titleLabel intrinsicContentSize];
  v15 = v14;

  contentView2 = [(CKAppMenuCollectionViewCell *)self contentView];
  [contentView2 frame];
  v18 = v17;
  [(CKAppMenuCollectionViewCell *)self layoutMargins];
  v20 = v18 - v19;
  imageView2 = [(CKAppMenuCollectionViewCell *)self imageView];
  [imageView2 frame];
  v22 = v20 - CGRectGetMaxX(v50);
  [(CKAppMenuCollectionViewCell *)self layoutMargins];
  v24 = v22 - v23;

  if (v15 >= v24)
  {
    v15 = v24;
  }

  imageView3 = [(CKAppMenuCollectionViewCell *)self imageView];
  [imageView3 frame];
  MaxX = CGRectGetMaxX(v51);
  [(CKAppMenuCollectionViewCell *)self layoutMargins];
  v28 = MaxX + v27;
  contentView3 = [(CKAppMenuCollectionViewCell *)self contentView];
  [contentView3 frame];
  MidY = CGRectGetMidY(v52);
  titleLabel2 = [(CKAppMenuCollectionViewCell *)self titleLabel];
  [titleLabel2 intrinsicContentSize];
  v33 = MidY - v32 * 0.5;
  titleLabel3 = [(CKAppMenuCollectionViewCell *)self titleLabel];
  [titleLabel3 intrinsicContentSize];
  v36 = v35;
  titleLabel4 = [(CKAppMenuCollectionViewCell *)self titleLabel];
  [titleLabel4 setFrame:{v28, v33, v15, v36}];

  contentView4 = [(CKAppMenuCollectionViewCell *)self contentView];
  [contentView4 bounds];
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  selectionView = [(CKAppMenuCollectionViewCell *)self selectionView];
  [selectionView setFrame:{v40, v42, v44, v46}];
}

- (void)didHoverOverCell:(id)cell
{
  cellCopy = cell;
  delegate = [(CKAppMenuCollectionViewCell *)self delegate];
  state = [cellCopy state];

  [delegate appMenuCollectionViewCell:self didHoverWithState:state];
}

- (void)handleTap:(id)tap
{
  delegate = [(CKAppMenuCollectionViewCell *)self delegate];
  [delegate appMenuCollectionViewCellWasTapped:self];
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v8.receiver = self;
  v8.super_class = CKAppMenuCollectionViewCell;
  [(CKAppMenuCollectionViewCell *)&v8 setSelected:?];
  selectionView = [(CKAppMenuCollectionViewCell *)self selectionView];
  [selectionView setAlpha:selectedCopy];

  if (selectedCopy)
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] secondaryLabelColor];
  }
  v6 = ;
  titleLabel = [(CKAppMenuCollectionViewCell *)self titleLabel];
  [titleLabel setTextColor:v6];
}

- (CKAppMenuCollectionViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end