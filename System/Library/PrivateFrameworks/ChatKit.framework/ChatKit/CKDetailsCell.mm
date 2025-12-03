@interface CKDetailsCell
- (CKDetailsCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (UIView)bottomSeperator;
- (UIView)topSeperator;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation CKDetailsCell

- (CKDetailsCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v16.receiver = self;
  v16.super_class = CKDetailsCell;
  v4 = [(CKDetailsCell *)&v16 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = +[CKUIBehavior sharedBehaviors];
    theme = [v5 theme];
    detailsSelectedCellColor = [theme detailsSelectedCellColor];

    if (detailsSelectedCellColor)
    {
      v8 = objc_alloc_init(MEMORY[0x1E69DD250]);
      v9 = +[CKUIBehavior sharedBehaviors];
      theme2 = [v9 theme];
      detailsSelectedCellColor2 = [theme2 detailsSelectedCellColor];
      [v8 setBackgroundColor:detailsSelectedCellColor2];

      [(CKDetailsCell *)v4 setSelectedBackgroundView:v8];
      v12 = +[CKUIBehavior sharedBehaviors];
      theme3 = [v12 theme];
      iosMacDetailsCellColor = [theme3 iosMacDetailsCellColor];
      [(CKDetailsCell *)v4 setBackgroundColor:iosMacDetailsCellColor];
    }
  }

  return v4;
}

- (void)layoutSubviews
{
  v39.receiver = self;
  v39.super_class = CKDetailsCell;
  [(CKDetailsCell *)&v39 layoutSubviews];
  [(CKDetailsCell *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(CKDetailsCell *)self layoutMargins];
  v37 = v12;
  v38 = v11;
  v13 = +[CKUIBehavior sharedBehaviors];
  detailsSeperatorsFollowLayoutMargins = [v13 detailsSeperatorsFollowLayoutMargins];

  v15 = *(MEMORY[0x1E695F058] + 8);
  if (CKPixelWidth_once_1 != -1)
  {
    [CKDetailsCell layoutSubviews];
  }

  v16 = *&CKPixelWidth_sPixel_1;
  v34 = CKPixelWidth_sPixel_1;
  v40.origin.x = v4;
  v40.origin.y = v6;
  v40.size.width = v8;
  v40.size.height = v10;
  v36 = v10;
  Width = CGRectGetWidth(v40);
  indentTopSeperator = [(CKDetailsCell *)self indentTopSeperator];
  v19 = 0.0;
  v20 = v8;
  if ((indentTopSeperator | detailsSeperatorsFollowLayoutMargins))
  {
    v21 = v38;
  }

  else
  {
    v21 = 0.0;
  }

  if (detailsSeperatorsFollowLayoutMargins)
  {
    v19 = v37;
  }

  v22 = Width - v21 - v19;
  topSeperator = [(CKDetailsCell *)self topSeperator];
  [topSeperator setFrame:{v21, v15, v22, v16}];

  v41.origin.x = v4;
  v41.origin.y = v6;
  v41.size.width = v20;
  v41.size.height = v36;
  Height = CGRectGetHeight(v41);
  v42.origin.x = v21;
  v42.origin.y = v15;
  v42.size.width = v22;
  v42.size.height = v35;
  v25 = Height - CGRectGetHeight(v42);
  v43.origin.x = v4;
  v43.origin.y = v6;
  v43.size.width = v20;
  v43.size.height = v36;
  v26 = CGRectGetWidth(v43);
  v27 = [(CKDetailsCell *)self indentBottomSeperator]| detailsSeperatorsFollowLayoutMargins;
  v28 = 0.0;
  if (v27)
  {
    v29 = v38;
  }

  else
  {
    v29 = 0.0;
  }

  if (v27)
  {
    v28 = v37;
  }

  v30 = v26 - v29 - v28;
  bottomSeperator = [(CKDetailsCell *)self bottomSeperator];
  [bottomSeperator setFrame:{v29, v25, v30, v35}];

  topSeperator2 = [(CKDetailsCell *)self topSeperator];
  [(CKDetailsCell *)self bringSubviewToFront:topSeperator2];

  bottomSeperator2 = [(CKDetailsCell *)self bottomSeperator];
  [(CKDetailsCell *)self bringSubviewToFront:bottomSeperator2];
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = CKDetailsCell;
  [(CKDetailsCell *)&v5 prepareForReuse];
  topSeperator = [(CKDetailsCell *)self topSeperator];
  [topSeperator setHidden:0];

  bottomSeperator = [(CKDetailsCell *)self bottomSeperator];
  [bottomSeperator setHidden:0];

  [(CKDetailsCell *)self setIndentTopSeperator:0];
  [(CKDetailsCell *)self setIndentBottomSeperator:0];
}

- (UIView)topSeperator
{
  topSeperator = self->_topSeperator;
  if (!topSeperator)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD250]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    separatorColor = [MEMORY[0x1E69DC888] separatorColor];
    [(UIView *)v5 setBackgroundColor:separatorColor];

    [(CKDetailsCell *)self addSubview:v5];
    v7 = self->_topSeperator;
    self->_topSeperator = v5;

    topSeperator = self->_topSeperator;
  }

  return topSeperator;
}

- (UIView)bottomSeperator
{
  bottomSeperator = self->_bottomSeperator;
  if (!bottomSeperator)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD250]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    separatorColor = [MEMORY[0x1E69DC888] separatorColor];
    [(UIView *)v5 setBackgroundColor:separatorColor];

    [(CKDetailsCell *)self addSubview:v5];
    v7 = self->_bottomSeperator;
    self->_bottomSeperator = v5;

    bottomSeperator = self->_bottomSeperator;
  }

  return bottomSeperator;
}

@end