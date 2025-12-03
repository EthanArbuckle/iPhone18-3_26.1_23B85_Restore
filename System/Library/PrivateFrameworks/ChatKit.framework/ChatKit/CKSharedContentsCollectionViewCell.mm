@interface CKSharedContentsCollectionViewCell
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (CKSharedContentsCollectionViewCell)initWithFrame:(CGRect)frame;
- (CKSharedContentsCollectionViewCellDelegate)delegate;
- (void)copy:(id)copy;
- (void)delete:(id)delete;
- (void)handleTap:(id)tap;
- (void)layoutSubviews;
- (void)more:(id)more;
- (void)saveAttachment:(id)attachment;
- (void)setEditing:(BOOL)editing;
- (void)setSelected:(BOOL)selected;
- (void)setupTapGestureRecognizer;
- (void)toggleCheckmarkViewWithEnabled:(BOOL)enabled;
@end

@implementation CKSharedContentsCollectionViewCell

- (CKSharedContentsCollectionViewCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = CKSharedContentsCollectionViewCell;
  v3 = [(CKSharedAssetCollectionViewCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CKSharedContentsCollectionViewCell *)v3 setupTapGestureRecognizer];
  }

  return v4;
}

- (void)setupTapGestureRecognizer
{
  v4 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_handleTap_];
  [v4 setDelegate:self];
  contentView = [(CKSharedContentsCollectionViewCell *)self contentView];
  [contentView addGestureRecognizer:v4];

  [(CKSharedContentsCollectionViewCell *)self setTapGestureRecognizer:v4];
}

- (void)layoutSubviews
{
  v22.receiver = self;
  v22.super_class = CKSharedContentsCollectionViewCell;
  [(CKSharedAssetCollectionViewCell *)&v22 layoutSubviews];
  previewView = [(CKSharedAssetCollectionViewCell *)self previewView];
  [previewView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  checkmarkView = [(CKSharedContentsCollectionViewCell *)self checkmarkView];
  if (checkmarkView)
  {
    [checkmarkView setHighlighted:{-[CKSharedContentsCollectionViewCell isSelected](self, "isSelected")}];
    [checkmarkView bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v23.origin.x = v5;
    v23.origin.y = v7;
    v23.size.width = v9;
    v23.size.height = v11;
    Width = CGRectGetWidth(v23);
    v24.origin.x = v14;
    v24.origin.y = v16;
    v24.size.width = v18;
    v24.size.height = v20;
    [checkmarkView setFrame:{Width - CGRectGetWidth(v24), 0.0, v18, v20}];
  }
}

- (void)copy:(id)copy
{
  delegate = [(CKSharedContentsCollectionViewCell *)self delegate];
  [delegate performAction:a2 forSharedContentsCollectionViewCell:self];
}

- (void)delete:(id)delete
{
  delegate = [(CKSharedContentsCollectionViewCell *)self delegate];
  [delegate performAction:a2 forSharedContentsCollectionViewCell:self];
}

- (void)more:(id)more
{
  delegate = [(CKSharedContentsCollectionViewCell *)self delegate];
  [delegate performAction:a2 forSharedContentsCollectionViewCell:self];
}

- (void)saveAttachment:(id)attachment
{
  delegate = [(CKSharedContentsCollectionViewCell *)self delegate];
  [delegate performAction:a2 forSharedContentsCollectionViewCell:self];
}

- (void)handleTap:(id)tap
{
  delegate = [(CKSharedContentsCollectionViewCell *)self delegate];
  [delegate sharedContentsCollectionViewCellDidTap:self];
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v6.receiver = self;
  v6.super_class = CKSharedContentsCollectionViewCell;
  [(CKSharedContentsCollectionViewCell *)&v6 setSelected:?];
  checkmarkView = [(CKSharedContentsCollectionViewCell *)self checkmarkView];
  [checkmarkView setHighlighted:selectedCopy];
}

- (void)setEditing:(BOOL)editing
{
  if (self->_editing != editing)
  {
    self->_editing = editing;
    [(CKSharedContentsCollectionViewCell *)self toggleCheckmarkViewWithEnabled:?];

    [(CKSharedContentsCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)toggleCheckmarkViewWithEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v5 = [MEMORY[0x1E69DCAB8] ckImageNamed:@"BlueCheckUnselected"];
    v6 = [MEMORY[0x1E69DCAB8] ckImageNamed:@"BlueCheckSelected"];
    v9 = [v4 initWithImage:v5 highlightedImage:v6];

    contentView = [(CKSharedContentsCollectionViewCell *)self contentView];
    [contentView addSubview:v9];

    [(CKSharedContentsCollectionViewCell *)self setCheckmarkView:v9];
  }

  else
  {
    checkmarkView = [(CKSharedContentsCollectionViewCell *)self checkmarkView];
    [checkmarkView removeFromSuperview];

    [(CKSharedContentsCollectionViewCell *)self setCheckmarkView:0];
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  tapGestureRecognizer = [(CKSharedContentsCollectionViewCell *)self tapGestureRecognizer];

  if (tapGestureRecognizer == recognizerCopy)
  {
    return ![(CKSharedContentsCollectionViewCell *)self isEditing];
  }

  else
  {
    return 1;
  }
}

- (CKSharedContentsCollectionViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end