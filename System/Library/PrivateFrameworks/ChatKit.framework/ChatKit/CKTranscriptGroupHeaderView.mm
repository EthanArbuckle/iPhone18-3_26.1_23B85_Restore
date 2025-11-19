@interface CKTranscriptGroupHeaderView
- (CKTranscriptGroupHeaderView)initWithFrame:(CGRect)a3 conversation:(id)a4;
- (void)dealloc;
- (void)layoutSubviews;
@end

@implementation CKTranscriptGroupHeaderView

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CKTranscriptGroupHeaderView;
  [(CKTranscriptGroupHeaderView *)&v4 dealloc];
}

- (CKTranscriptGroupHeaderView)initWithFrame:(CGRect)a3 conversation:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v29.receiver = self;
  v29.super_class = CKTranscriptGroupHeaderView;
  v10 = [(CKTranscriptGroupHeaderView *)&v29 initWithFrame:x, y, width, height];
  v11 = v10;
  if (v10)
  {
    [(CKTranscriptGroupHeaderView *)v10 setConversation:v9];
    [(CKTranscriptGroupHeaderView *)v11 setAutoresizingMask:2];
    [(CKTranscriptGroupHeaderView *)v11 setAutoresizesSubviews:0];
    v12 = objc_alloc(MEMORY[0x1E69DD370]);
    v13 = *MEMORY[0x1E695F058];
    v14 = *(MEMORY[0x1E695F058] + 8);
    v15 = *(MEMORY[0x1E695F058] + 16);
    v16 = *(MEMORY[0x1E695F058] + 24);
    v17 = [v12 initWithFrame:2010 privateStyle:{*MEMORY[0x1E695F058], v14, v15, v16}];
    [(CKTranscriptGroupHeaderView *)v11 setBackdropView:v17];
    [(CKTranscriptGroupHeaderView *)v11 addSubview:v17];
    v18 = [objc_alloc(MEMORY[0x1E6996428]) initWithFrame:{v13, v14, v15, v16}];
    [v18 setBackgroundColor:0];
    [v18 setAutoresizingMask:18];
    v19 = CKFrameworkBundle();
    v20 = [v19 localizedStringForKey:@"TO" value:&stru_1F04268F8 table:@"ChatKit"];
    [v18 setLabel:v20];

    v21 = [v18 addButton];
    [v21 setHidden:1];

    [v18 setSeparatorHidden:1];
    [v18 setEditable:0];
    [v18 setUserInteractionEnabled:0];
    v22 = [MEMORY[0x1E69DC888] systemGrayColor];
    [v18 setInactiveTextColor:v22];

    [(CKTranscriptGroupHeaderView *)v11 setTextView:v18];
    [(CKTranscriptGroupHeaderView *)v11 addSubview:v18];
    v23 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v13, v14, v15, v16}];
    v24 = +[CKUIBehavior sharedBehaviors];
    v25 = [v24 theme];
    v26 = [v25 entryFieldDividerColor];
    [v23 setBackgroundColor:v26];

    [(CKTranscriptGroupHeaderView *)v11 setSeparator:v23];
    [(CKTranscriptGroupHeaderView *)v11 addSubview:v23];
    v27 = [MEMORY[0x1E69DC738] buttonWithType:1];
    [v27 setBackgroundColor:0];
    [(CKTranscriptGroupHeaderView *)v11 setActionButton:v27];
    [(CKTranscriptGroupHeaderView *)v11 addSubview:v27];
  }

  return v11;
}

- (void)layoutSubviews
{
  v20.receiver = self;
  v20.super_class = CKTranscriptGroupHeaderView;
  [(CKTranscriptGroupHeaderView *)&v20 layoutSubviews];
  [(CKTranscriptGroupHeaderView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(CKTranscriptGroupHeaderView *)self backdropView];
  [v11 setFrame:{v4, v6, v8, v10}];

  v12 = [(CKTranscriptGroupHeaderView *)self textView];
  [v12 setFrame:{v4, v6, v8, v10}];

  v13 = [(CKTranscriptGroupHeaderView *)self actionButton];
  [v13 setFrame:{v4, v6, v8, v10}];

  v14 = +[CKUIBehavior sharedBehaviors];
  [v14 defaultSeparatorHeight];
  v16 = v15;

  [(CKTranscriptGroupHeaderView *)self bounds];
  v18 = v17;
  v19 = [(CKTranscriptGroupHeaderView *)self separator];
  [v19 setFrame:{v4, v18, v8, v16}];
}

@end