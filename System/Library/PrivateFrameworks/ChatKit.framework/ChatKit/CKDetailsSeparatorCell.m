@interface CKDetailsSeparatorCell
- (CKDetailsSeparatorCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation CKDetailsSeparatorCell

- (CKDetailsSeparatorCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v12.receiver = self;
  v12.super_class = CKDetailsSeparatorCell;
  v4 = [(CKDetailsCell *)&v12 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E69DD250]);
    v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    separatorView = v4->_separatorView;
    v4->_separatorView = v6;

    v8 = v4->_separatorView;
    v9 = [MEMORY[0x1E69DC888] separatorColor];
    [(UIView *)v8 setBackgroundColor:v9];

    [(CKDetailsSeparatorCell *)v4 addSubview:v4->_separatorView];
    [(CKDetailsSeparatorCell *)v4 setIndentSeparator:1];
    v10 = [MEMORY[0x1E69DC888] clearColor];
    [(CKDetailsSeparatorCell *)v4 setBackgroundColor:v10];
  }

  return v4;
}

- (void)layoutSubviews
{
  v19.receiver = self;
  v19.super_class = CKDetailsSeparatorCell;
  [(CKDetailsCell *)&v19 layoutSubviews];
  [(CKDetailsSeparatorCell *)self layoutMargins];
  v4 = v3;
  v6 = v5;
  v7 = +[CKUIBehavior sharedBehaviors];
  v8 = [v7 detailsSeperatorsFollowLayoutMargins];

  [(CKDetailsSeparatorCell *)self bounds];
  v10 = v9;
  v11 = +[CKUIBehavior sharedBehaviors];
  [v11 defaultSeparatorHeight];
  v13 = v12;

  LOBYTE(v11) = [(CKDetailsSeparatorCell *)self indentSeparator]| v8;
  [(CKDetailsSeparatorCell *)self leadingSpace];
  v15 = v14;
  v16 = 0.0;
  if (v11)
  {
    v16 = v6;
  }

  else
  {
    v4 = 0.0;
  }

  v17 = v10 - v4 - v16;
  v18 = [(CKDetailsSeparatorCell *)self separatorView];
  [v18 setFrame:{v4, v15, v17, v13}];
}

- (void)prepareForReuse
{
  v2.receiver = self;
  v2.super_class = CKDetailsSeparatorCell;
  [(CKDetailsCell *)&v2 prepareForReuse];
}

@end