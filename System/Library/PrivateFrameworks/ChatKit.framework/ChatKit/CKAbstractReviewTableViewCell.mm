@interface CKAbstractReviewTableViewCell
- (CKAbstractReviewTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (NSString)mainText;
- (NSString)subheadingText;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setMainText:(id)a3;
- (void)setSize:(unint64_t)a3;
- (void)setSubheadingText:(id)a3;
@end

@implementation CKAbstractReviewTableViewCell

- (CKAbstractReviewTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v28.receiver = self;
  v28.super_class = CKAbstractReviewTableViewCell;
  v4 = [(CKAbstractReviewTableViewCell *)&v28 initWithStyle:a3 reuseIdentifier:a4];
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
    v13 = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v4->_nameLabel setTextColor:v13];

    v14 = [(CKAbstractReviewTableViewCell *)v4 contentView];
    [v14 addSubview:v4->_nameLabel];

    v15 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v6, v7, v8, v9}];
    lastModifiedLabel = v4->_lastModifiedLabel;
    v4->_lastModifiedLabel = v15;

    v17 = [MEMORY[0x1E69DB878] systemFontOfSize:14.0];
    [(UILabel *)v4->_lastModifiedLabel setFont:v17];

    [(UILabel *)v4->_lastModifiedLabel setNumberOfLines:1];
    v18 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v4->_lastModifiedLabel setTextColor:v18];

    v19 = [(CKAbstractReviewTableViewCell *)v4 contentView];
    [v19 addSubview:v4->_lastModifiedLabel];

    v20 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v6, v7, v8, v9}];
    sizeLabel = v4->_sizeLabel;
    v4->_sizeLabel = v20;

    [(UILabel *)v4->_sizeLabel setTextAlignment:2];
    v22 = [MEMORY[0x1E69DB878] systemFontOfSize:17.0];
    [(UILabel *)v4->_sizeLabel setFont:v22];

    [(UILabel *)v4->_sizeLabel setNumberOfLines:1];
    v23 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v4->_sizeLabel setTextColor:v23];

    v24 = [(CKAbstractReviewTableViewCell *)v4 contentView];
    [v24 addSubview:v4->_sizeLabel];

    v25 = [(CKAbstractReviewTableViewCell *)v4 contentView];
    v26 = [(CKAbstractReviewTableViewCell *)v4 leftHandSideView];
    [v25 addSubview:v26];
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

- (void)setMainText:(id)a3
{
  v4 = a3;
  v5 = [(CKAbstractReviewTableViewCell *)self nameLabel];
  [v5 setText:v4];
}

- (NSString)mainText
{
  v2 = [(CKAbstractReviewTableViewCell *)self nameLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setSubheadingText:(id)a3
{
  v4 = a3;
  v5 = [(CKAbstractReviewTableViewCell *)self lastModifiedLabel];
  [v5 setText:v4];
}

- (NSString)subheadingText
{
  v2 = [(CKAbstractReviewTableViewCell *)self lastModifiedLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setSize:(unint64_t)a3
{
  self->_size = a3;
  if (a3)
  {
    v5 = [MEMORY[0x1E696AAF0] stringFromByteCount:a3 countStyle:0];
  }

  else
  {
    v5 = 0;
  }

  v4 = [(CKAbstractReviewTableViewCell *)self sizeLabel];
  [v4 setText:v5];

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
  v9 = [(CKAbstractReviewTableViewCell *)self leftHandSideView];
  [v9 setFrame:{15.0, v8, v4, v6}];

  v10 = [(CKAbstractReviewTableViewCell *)self contentView];
  [v10 frame];
  v12 = (v11 + -15.0) * 0.5;
  v13 = [(CKAbstractReviewTableViewCell *)self contentView];
  [v13 frame];
  v15 = v14;

  v16 = [(CKAbstractReviewTableViewCell *)self sizeLabel];
  [v16 sizeThatFits:{v12, v15}];
  v18 = v17;
  v20 = v19;

  v21 = [(CKAbstractReviewTableViewCell *)self contentView];
  [v21 frame];
  v23 = v22 + -15.0 - v18;
  v24 = [(CKAbstractReviewTableViewCell *)self contentView];
  [v24 frame];
  v26 = (v25 - v20) * 0.5;
  v27 = [(CKAbstractReviewTableViewCell *)self sizeLabel];
  [v27 setFrame:{v23, v26, fmin(v18, v12), v20}];

  v28 = [(CKAbstractReviewTableViewCell *)self contentView];
  [v28 frame];
  v30 = v29;
  v31 = [(CKAbstractReviewTableViewCell *)self leftHandSideView];
  [v31 frame];
  v33 = v30 - v32 + -15.0 + -20.0 - v18 + -15.0;
  v34 = [(CKAbstractReviewTableViewCell *)self contentView];
  [v34 frame];
  v36 = v35 * 0.5;

  v37 = [(CKAbstractReviewTableViewCell *)self subheadingText];
  v38 = [v37 length];

  v39 = [(CKAbstractReviewTableViewCell *)self nameLabel];
  [v39 sizeThatFits:{v33, v36}];
  v41 = v40;
  v43 = v42;

  v44 = [(CKAbstractReviewTableViewCell *)self leftHandSideView];
  [v44 frame];
  v45 = CGRectGetMaxX(v65) + 10.0;
  v46 = [(CKAbstractReviewTableViewCell *)self contentView];
  [v46 frame];
  v48 = v47;
  v49 = fmin(v33, v41);
  v50 = [(CKAbstractReviewTableViewCell *)self nameLabel];
  v51 = v50;
  v52 = v48 * 0.5 - v43;
  if (!v38)
  {
    v52 = (v48 - v43) * 0.5;
  }

  [v50 setFrame:{v45, v52, v49, v43}];

  v53 = [(CKAbstractReviewTableViewCell *)self lastModifiedLabel];
  [v53 sizeThatFits:{v33, v36}];
  v55 = v54;
  v57 = v56;

  v58 = [(CKAbstractReviewTableViewCell *)self leftHandSideView];
  [v58 frame];
  v59 = CGRectGetMaxX(v66) + 10.0;
  v60 = [(CKAbstractReviewTableViewCell *)self contentView];
  [v60 frame];
  v62 = v61 * 0.5;
  v63 = [(CKAbstractReviewTableViewCell *)self lastModifiedLabel];
  [v63 setFrame:{v59, v62, fmin(v33, v55), v57}];
}

@end