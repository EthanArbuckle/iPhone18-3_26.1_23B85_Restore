@interface _UIDocumentPickerManagementViewControllerCell
- (BOOL)showNewlyAdded;
- (_UIDocumentPickerManagementViewControllerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)_dotImage;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setShowNewlyAdded:(BOOL)added;
@end

@implementation _UIDocumentPickerManagementViewControllerCell

- (_UIDocumentPickerManagementViewControllerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v12.receiver = self;
  v12.super_class = _UIDocumentPickerManagementViewControllerCell;
  v4 = [(_UIDocumentPickerManagementViewControllerCell *)&v12 initWithStyle:3 reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277D755E8]);
    [(_UIDocumentPickerManagementViewControllerCell *)v4 setNewlyAddedView:v5];

    newlyAddedView = [(_UIDocumentPickerManagementViewControllerCell *)v4 newlyAddedView];
    [newlyAddedView setContentMode:4];

    newlyAddedView2 = [(_UIDocumentPickerManagementViewControllerCell *)v4 newlyAddedView];
    [newlyAddedView2 setClipsToBounds:1];

    contentView = [(_UIDocumentPickerManagementViewControllerCell *)v4 contentView];
    [contentView addSubview:v4->_newlyAddedView];

    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    contentView2 = [(_UIDocumentPickerManagementViewControllerCell *)v4 contentView];
    [contentView2 setBackgroundColor:systemBackgroundColor];
  }

  return v4;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = _UIDocumentPickerManagementViewControllerCell;
  [(_UIDocumentPickerManagementViewControllerCell *)&v4 prepareForReuse];
  newlyAddedView = [(_UIDocumentPickerManagementViewControllerCell *)self newlyAddedView];
  [newlyAddedView setImage:0];
}

- (id)_dotImage
{
  v3 = MEMORY[0x277D755B8];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  traitCollection = [(_UIDocumentPickerManagementViewControllerCell *)self traitCollection];
  v6 = [v3 imageNamed:@"UIImageNameIndicatorDot" inBundle:v4 compatibleWithTraitCollection:traitCollection];
  v7 = [v6 imageWithRenderingMode:2];

  return v7;
}

- (void)setShowNewlyAdded:(BOOL)added
{
  if (added)
  {
    _dotImage = [(_UIDocumentPickerManagementViewControllerCell *)self _dotImage];
    newlyAddedView = [(_UIDocumentPickerManagementViewControllerCell *)self newlyAddedView];
    [newlyAddedView setImage:_dotImage];
  }

  else
  {
    _dotImage = [(_UIDocumentPickerManagementViewControllerCell *)self newlyAddedView];
    [_dotImage setImage:0];
  }
}

- (BOOL)showNewlyAdded
{
  newlyAddedView = [(_UIDocumentPickerManagementViewControllerCell *)self newlyAddedView];
  image = [newlyAddedView image];
  v4 = image != 0;

  return v4;
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = _UIDocumentPickerManagementViewControllerCell;
  [(_UIDocumentPickerManagementViewControllerCell *)&v18 layoutSubviews];
  _dotImage = [(_UIDocumentPickerManagementViewControllerCell *)self _dotImage];
  imageView = [(_UIDocumentPickerManagementViewControllerCell *)self imageView];
  [imageView frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v19.origin.x = v6;
  v19.origin.y = v8;
  v19.size.width = v10;
  v19.size.height = v12;
  CGRectGetMaxX(v19);
  UIRoundToViewScale();
  v14 = v13;
  [_dotImage size];
  v16 = v15;
  newlyAddedView = [(_UIDocumentPickerManagementViewControllerCell *)self newlyAddedView];
  [newlyAddedView setFrame:{v14, v8, v16, v12}];
}

@end