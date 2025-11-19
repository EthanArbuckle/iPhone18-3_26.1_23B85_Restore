@interface CKMentionSuggestionAccessoryCell
- (CKMentionSuggestionAccessoryCell)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation CKMentionSuggestionAccessoryCell

- (CKMentionSuggestionAccessoryCell)initWithFrame:(CGRect)a3
{
  v13.receiver = self;
  v13.super_class = CKMentionSuggestionAccessoryCell;
  v3 = [(CKMentionSuggestionAccessoryCell *)&v13 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC730] effectWithStyle:8];
    v5 = objc_alloc(MEMORY[0x1E69DD298]);
    v6 = [MEMORY[0x1E69DD248] effectForBlurEffect:v4 style:7];
    v7 = [v5 initWithEffect:v6];

    v8 = [v7 contentView];
    v9 = +[CKUIBehavior sharedBehaviors];
    v10 = [v9 theme];
    v11 = [v10 paddleSeparatorColor];
    [v8 setBackgroundColor:v11];

    [(CKMentionSuggestionAccessoryCell *)v3 addSubview:v7];
    [(CKMentionSuggestionAccessoryCell *)v3 setSeparatorView:v7];
  }

  return v3;
}

- (void)layoutSubviews
{
  v19.receiver = self;
  v19.super_class = CKMentionSuggestionAccessoryCell;
  [(CKMentionSuggestionAccessoryCell *)&v19 layoutSubviews];
  [(CKMentionSuggestionAccessoryCell *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = +[CKUIBehavior sharedBehaviors];
  [v11 paddleDividerInset];
  v13 = v12;
  v20.origin.x = v4;
  v20.origin.y = v6;
  v20.size.width = v8;
  v20.size.height = v10;
  v21 = CGRectInset(v20, 0.0, v13);
  x = v21.origin.x;
  y = v21.origin.y;
  width = v21.size.width;
  height = v21.size.height;

  v18 = [(CKMentionSuggestionAccessoryCell *)self separatorView];
  [v18 setFrame:{x, y, width, height}];
}

@end