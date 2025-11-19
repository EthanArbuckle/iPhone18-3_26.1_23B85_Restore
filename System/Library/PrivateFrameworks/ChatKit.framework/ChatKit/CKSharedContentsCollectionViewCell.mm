@interface CKSharedContentsCollectionViewCell
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (CKSharedContentsCollectionViewCell)initWithFrame:(CGRect)a3;
- (CKSharedContentsCollectionViewCellDelegate)delegate;
- (void)copy:(id)a3;
- (void)delete:(id)a3;
- (void)handleTap:(id)a3;
- (void)layoutSubviews;
- (void)more:(id)a3;
- (void)saveAttachment:(id)a3;
- (void)setEditing:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
- (void)setupTapGestureRecognizer;
- (void)toggleCheckmarkViewWithEnabled:(BOOL)a3;
@end

@implementation CKSharedContentsCollectionViewCell

- (CKSharedContentsCollectionViewCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = CKSharedContentsCollectionViewCell;
  v3 = [(CKSharedAssetCollectionViewCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v3 = [(CKSharedContentsCollectionViewCell *)self contentView];
  [v3 addGestureRecognizer:v4];

  [(CKSharedContentsCollectionViewCell *)self setTapGestureRecognizer:v4];
}

- (void)layoutSubviews
{
  v22.receiver = self;
  v22.super_class = CKSharedContentsCollectionViewCell;
  [(CKSharedAssetCollectionViewCell *)&v22 layoutSubviews];
  v3 = [(CKSharedAssetCollectionViewCell *)self previewView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(CKSharedContentsCollectionViewCell *)self checkmarkView];
  if (v12)
  {
    [v12 setHighlighted:{-[CKSharedContentsCollectionViewCell isSelected](self, "isSelected")}];
    [v12 bounds];
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
    [v12 setFrame:{Width - CGRectGetWidth(v24), 0.0, v18, v20}];
  }
}

- (void)copy:(id)a3
{
  v5 = [(CKSharedContentsCollectionViewCell *)self delegate];
  [v5 performAction:a2 forSharedContentsCollectionViewCell:self];
}

- (void)delete:(id)a3
{
  v5 = [(CKSharedContentsCollectionViewCell *)self delegate];
  [v5 performAction:a2 forSharedContentsCollectionViewCell:self];
}

- (void)more:(id)a3
{
  v5 = [(CKSharedContentsCollectionViewCell *)self delegate];
  [v5 performAction:a2 forSharedContentsCollectionViewCell:self];
}

- (void)saveAttachment:(id)a3
{
  v5 = [(CKSharedContentsCollectionViewCell *)self delegate];
  [v5 performAction:a2 forSharedContentsCollectionViewCell:self];
}

- (void)handleTap:(id)a3
{
  v4 = [(CKSharedContentsCollectionViewCell *)self delegate];
  [v4 sharedContentsCollectionViewCellDidTap:self];
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = CKSharedContentsCollectionViewCell;
  [(CKSharedContentsCollectionViewCell *)&v6 setSelected:?];
  v5 = [(CKSharedContentsCollectionViewCell *)self checkmarkView];
  [v5 setHighlighted:v3];
}

- (void)setEditing:(BOOL)a3
{
  if (self->_editing != a3)
  {
    self->_editing = a3;
    [(CKSharedContentsCollectionViewCell *)self toggleCheckmarkViewWithEnabled:?];

    [(CKSharedContentsCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)toggleCheckmarkViewWithEnabled:(BOOL)a3
{
  if (a3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v5 = [MEMORY[0x1E69DCAB8] ckImageNamed:@"BlueCheckUnselected"];
    v6 = [MEMORY[0x1E69DCAB8] ckImageNamed:@"BlueCheckSelected"];
    v9 = [v4 initWithImage:v5 highlightedImage:v6];

    v7 = [(CKSharedContentsCollectionViewCell *)self contentView];
    [v7 addSubview:v9];

    [(CKSharedContentsCollectionViewCell *)self setCheckmarkView:v9];
  }

  else
  {
    v8 = [(CKSharedContentsCollectionViewCell *)self checkmarkView];
    [v8 removeFromSuperview];

    [(CKSharedContentsCollectionViewCell *)self setCheckmarkView:0];
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v5 = a3;
  v6 = [(CKSharedContentsCollectionViewCell *)self tapGestureRecognizer];

  if (v6 == v5)
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