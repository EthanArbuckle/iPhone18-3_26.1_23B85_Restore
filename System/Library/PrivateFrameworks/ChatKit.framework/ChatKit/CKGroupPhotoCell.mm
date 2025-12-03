@interface CKGroupPhotoCell
- (CKGroupPhotoCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setGroupView:(id)view;
@end

@implementation CKGroupPhotoCell

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = CKGroupPhotoCell;
  [(CKDetailsCell *)&v15 layoutSubviews];
  topSeperator = [(CKDetailsCell *)self topSeperator];
  [topSeperator setHidden:1];

  bottomSeperator = [(CKDetailsCell *)self bottomSeperator];
  [bottomSeperator setHidden:1];

  contentView = [(CKGroupPhotoCell *)self contentView];
  [contentView bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  groupView = [(CKGroupPhotoCell *)self groupView];
  [groupView setFrame:{v7, v9, v11, v13}];
}

- (CKGroupPhotoCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v11.receiver = self;
  v11.super_class = CKGroupPhotoCell;
  v4 = [(CKDetailsCell *)&v11 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = +[CKUIBehavior sharedBehaviors];
    theme = [v5 theme];
    detailsGroupPhotoBackgroundColor = [theme detailsGroupPhotoBackgroundColor];
    [(CKGroupPhotoCell *)v4 setBackgroundColor:detailsGroupPhotoBackgroundColor];

    topSeperator = [(CKDetailsCell *)v4 topSeperator];
    [topSeperator setHidden:1];

    bottomSeperator = [(CKDetailsCell *)v4 bottomSeperator];
    [bottomSeperator setHidden:1];
  }

  return v4;
}

- (void)setGroupView:(id)view
{
  viewCopy = view;
  groupView = self->_groupView;
  if (groupView != viewCopy)
  {
    v8 = viewCopy;
    if (groupView)
    {
      [(UIView *)groupView removeFromSuperview];
    }

    objc_storeStrong(&self->_groupView, view);
    contentView = [(CKGroupPhotoCell *)self contentView];
    [contentView addSubview:self->_groupView];

    viewCopy = v8;
  }
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = CKGroupPhotoCell;
  [(CKDetailsCell *)&v4 prepareForReuse];
  [(UIView *)self->_groupView removeFromSuperview];
  groupView = self->_groupView;
  self->_groupView = 0;
}

@end