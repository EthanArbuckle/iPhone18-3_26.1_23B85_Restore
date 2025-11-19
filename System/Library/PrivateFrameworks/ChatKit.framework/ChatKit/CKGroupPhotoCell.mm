@interface CKGroupPhotoCell
- (CKGroupPhotoCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setGroupView:(id)a3;
@end

@implementation CKGroupPhotoCell

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = CKGroupPhotoCell;
  [(CKDetailsCell *)&v15 layoutSubviews];
  v3 = [(CKDetailsCell *)self topSeperator];
  [v3 setHidden:1];

  v4 = [(CKDetailsCell *)self bottomSeperator];
  [v4 setHidden:1];

  v5 = [(CKGroupPhotoCell *)self contentView];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(CKGroupPhotoCell *)self groupView];
  [v14 setFrame:{v7, v9, v11, v13}];
}

- (CKGroupPhotoCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v11.receiver = self;
  v11.super_class = CKGroupPhotoCell;
  v4 = [(CKDetailsCell *)&v11 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = +[CKUIBehavior sharedBehaviors];
    v6 = [v5 theme];
    v7 = [v6 detailsGroupPhotoBackgroundColor];
    [(CKGroupPhotoCell *)v4 setBackgroundColor:v7];

    v8 = [(CKDetailsCell *)v4 topSeperator];
    [v8 setHidden:1];

    v9 = [(CKDetailsCell *)v4 bottomSeperator];
    [v9 setHidden:1];
  }

  return v4;
}

- (void)setGroupView:(id)a3
{
  v5 = a3;
  groupView = self->_groupView;
  if (groupView != v5)
  {
    v8 = v5;
    if (groupView)
    {
      [(UIView *)groupView removeFromSuperview];
    }

    objc_storeStrong(&self->_groupView, a3);
    v7 = [(CKGroupPhotoCell *)self contentView];
    [v7 addSubview:self->_groupView];

    v5 = v8;
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