@interface CKMentionSuggestionAccessoryCell
- (CKMentionSuggestionAccessoryCell)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation CKMentionSuggestionAccessoryCell

- (CKMentionSuggestionAccessoryCell)initWithFrame:(CGRect)frame
{
  v13.receiver = self;
  v13.super_class = CKMentionSuggestionAccessoryCell;
  v3 = [(CKMentionSuggestionAccessoryCell *)&v13 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC730] effectWithStyle:8];
    v5 = objc_alloc(MEMORY[0x1E69DD298]);
    v6 = [MEMORY[0x1E69DD248] effectForBlurEffect:v4 style:7];
    v7 = [v5 initWithEffect:v6];

    contentView = [v7 contentView];
    v9 = +[CKUIBehavior sharedBehaviors];
    theme = [v9 theme];
    paddleSeparatorColor = [theme paddleSeparatorColor];
    [contentView setBackgroundColor:paddleSeparatorColor];

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

  separatorView = [(CKMentionSuggestionAccessoryCell *)self separatorView];
  [separatorView setFrame:{x, y, width, height}];
}

@end