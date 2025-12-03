@interface CKAbstractReviewTableViewCell
- (CKAbstractReviewTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (NSString)mainText;
- (NSString)subheadingText;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setMainText:(id)text;
- (void)setSize:(unint64_t)size;
- (void)setSubheadingText:(id)text;
@end

@implementation CKAbstractReviewTableViewCell

- (CKAbstractReviewTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v28.receiver = self;
  v28.super_class = CKAbstractReviewTableViewCell;
  v4 = [(CKAbstractReviewTableViewCell *)&v28 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E69DCC10]);
    v6 = *MEMORY[0x1E695F058];
    v7 = *(MEMORY[0x1E695F058] + 8);
    v8 = *(MEMORY[0x1E695F058] + 16);
    v9 = *(MEMORY[0x1E695F058] + 24);
    v10 = [v5 initWithFrame:{*MEMORY[0x1E695F058], v7, v8, v9}];
    nameLabel = v4->_nameLabel;
    v4->_nameLabel = v10;

    v12 = [MEMORY[0x1E69DB878] systemFontOfSize:17.0];
    [(UILabel *)v4->_nameLabel setFont:v12];

    [(UILabel *)v4->_nameLabel setNumberOfLines:1];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v4->_nameLabel setTextColor:labelColor];

    contentView = [(CKAbstractReviewTableViewCell *)v4 contentView];
    [contentView addSubview:v4->_nameLabel];

    v15 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v6, v7, v8, v9}];
    lastModifiedLabel = v4->_lastModifiedLabel;
    v4->_lastModifiedLabel = v15;

    v17 = [MEMORY[0x1E69DB878] systemFontOfSize:14.0];
    [(UILabel *)v4->_lastModifiedLabel setFont:v17];

    [(UILabel *)v4->_lastModifiedLabel setNumberOfLines:1];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v4->_lastModifiedLabel setTextColor:secondaryLabelColor];

    contentView2 = [(CKAbstractReviewTableViewCell *)v4 contentView];
    [contentView2 addSubview:v4->_lastModifiedLabel];

    v20 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v6, v7, v8, v9}];
    sizeLabel = v4->_sizeLabel;
    v4->_sizeLabel = v20;

    [(UILabel *)v4->_sizeLabel setTextAlignment:2];
    v22 = [MEMORY[0x1E69DB878] systemFontOfSize:17.0];
    [(UILabel *)v4->_sizeLabel setFont:v22];

    [(UILabel *)v4->_sizeLabel setNumberOfLines:1];
    secondaryLabelColor2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v4->_sizeLabel setTextColor:secondaryLabelColor2];

    contentView3 = [(CKAbstractReviewTableViewCell *)v4 contentView];
    [contentView3 addSubview:v4->_sizeLabel];

    contentView4 = [(CKAbstractReviewTableViewCell *)v4 contentView];
    leftHandSideView = [(CKAbstractReviewTableViewCell *)v4 leftHandSideView];
    [contentView4 addSubview:leftHandSideView];
  }

  return v4;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = CKAbstractReviewTableViewCell;
  [(CKAbstractReviewTableViewCell *)&v3 prepareForReuse];
  [(CKAbstractReviewTableViewCell *)self setModelObject:0];
  [(CKAbstractReviewTableViewCell *)self setSize:0];
}

- (void)setMainText:(id)text
{
  textCopy = text;
  nameLabel = [(CKAbstractReviewTableViewCell *)self nameLabel];
  [nameLabel setText:textCopy];
}

- (NSString)mainText
{
  nameLabel = [(CKAbstractReviewTableViewCell *)self nameLabel];
  text = [nameLabel text];

  return text;
}

- (void)setSubheadingText:(id)text
{
  textCopy = text;
  lastModifiedLabel = [(CKAbstractReviewTableViewCell *)self lastModifiedLabel];
  [lastModifiedLabel setText:textCopy];
}

- (NSString)subheadingText
{
  lastModifiedLabel = [(CKAbstractReviewTableViewCell *)self lastModifiedLabel];
  text = [lastModifiedLabel text];

  return text;
}

- (void)setSize:(unint64_t)size
{
  self->_size = size;
  if (size)
  {
    v5 = [MEMORY[0x1E696AAF0] stringFromByteCount:size countStyle:0];
  }

  else
  {
    v5 = 0;
  }

  sizeLabel = [(CKAbstractReviewTableViewCell *)self sizeLabel];
  [sizeLabel setText:v5];

  [(CKAbstractReviewTableViewCell *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v64.receiver = self;
  v64.super_class = CKAbstractReviewTableViewCell;
  [(CKAbstractReviewTableViewCell *)&v64 layoutSubviews];
  [objc_opt_class() leftHandSideViewSize];
  v4 = v3;
  v6 = v5;
  [objc_opt_class() requestedHeight];
  v8 = (v7 - v6) * 0.5;
  leftHandSideView = [(CKAbstractReviewTableViewCell *)self leftHandSideView];
  [leftHandSideView setFrame:{15.0, v8, v4, v6}];

  contentView = [(CKAbstractReviewTableViewCell *)self contentView];
  [contentView frame];
  v12 = (v11 + -15.0) * 0.5;
  contentView2 = [(CKAbstractReviewTableViewCell *)self contentView];
  [contentView2 frame];
  v15 = v14;

  sizeLabel = [(CKAbstractReviewTableViewCell *)self sizeLabel];
  [sizeLabel sizeThatFits:{v12, v15}];
  v18 = v17;
  v20 = v19;

  contentView3 = [(CKAbstractReviewTableViewCell *)self contentView];
  [contentView3 frame];
  v23 = v22 + -15.0 - v18;
  contentView4 = [(CKAbstractReviewTableViewCell *)self contentView];
  [contentView4 frame];
  v26 = (v25 - v20) * 0.5;
  sizeLabel2 = [(CKAbstractReviewTableViewCell *)self sizeLabel];
  [sizeLabel2 setFrame:{v23, v26, fmin(v18, v12), v20}];

  contentView5 = [(CKAbstractReviewTableViewCell *)self contentView];
  [contentView5 frame];
  v30 = v29;
  leftHandSideView2 = [(CKAbstractReviewTableViewCell *)self leftHandSideView];
  [leftHandSideView2 frame];
  v33 = v30 - v32 + -15.0 + -20.0 - v18 + -15.0;
  contentView6 = [(CKAbstractReviewTableViewCell *)self contentView];
  [contentView6 frame];
  v36 = v35 * 0.5;

  subheadingText = [(CKAbstractReviewTableViewCell *)self subheadingText];
  v38 = [subheadingText length];

  nameLabel = [(CKAbstractReviewTableViewCell *)self nameLabel];
  [nameLabel sizeThatFits:{v33, v36}];
  v41 = v40;
  v43 = v42;

  leftHandSideView3 = [(CKAbstractReviewTableViewCell *)self leftHandSideView];
  [leftHandSideView3 frame];
  v45 = CGRectGetMaxX(v65) + 10.0;
  contentView7 = [(CKAbstractReviewTableViewCell *)self contentView];
  [contentView7 frame];
  v48 = v47;
  v49 = fmin(v33, v41);
  nameLabel2 = [(CKAbstractReviewTableViewCell *)self nameLabel];
  v51 = nameLabel2;
  v52 = v48 * 0.5 - v43;
  if (!v38)
  {
    v52 = (v48 - v43) * 0.5;
  }

  [nameLabel2 setFrame:{v45, v52, v49, v43}];

  lastModifiedLabel = [(CKAbstractReviewTableViewCell *)self lastModifiedLabel];
  [lastModifiedLabel sizeThatFits:{v33, v36}];
  v55 = v54;
  v57 = v56;

  leftHandSideView4 = [(CKAbstractReviewTableViewCell *)self leftHandSideView];
  [leftHandSideView4 frame];
  v59 = CGRectGetMaxX(v66) + 10.0;
  contentView8 = [(CKAbstractReviewTableViewCell *)self contentView];
  [contentView8 frame];
  v62 = v61 * 0.5;
  lastModifiedLabel2 = [(CKAbstractReviewTableViewCell *)self lastModifiedLabel];
  [lastModifiedLabel2 setFrame:{v59, v62, fmin(v33, v55), v57}];
}

@end