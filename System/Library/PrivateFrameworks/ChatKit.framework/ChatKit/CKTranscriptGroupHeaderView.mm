@interface CKTranscriptGroupHeaderView
- (CKTranscriptGroupHeaderView)initWithFrame:(CGRect)frame conversation:(id)conversation;
- (void)dealloc;
- (void)layoutSubviews;
@end

@implementation CKTranscriptGroupHeaderView

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = CKTranscriptGroupHeaderView;
  [(CKTranscriptGroupHeaderView *)&v4 dealloc];
}

- (CKTranscriptGroupHeaderView)initWithFrame:(CGRect)frame conversation:(id)conversation
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  conversationCopy = conversation;
  v29.receiver = self;
  v29.super_class = CKTranscriptGroupHeaderView;
  height = [(CKTranscriptGroupHeaderView *)&v29 initWithFrame:x, y, width, height];
  v11 = height;
  if (height)
  {
    [(CKTranscriptGroupHeaderView *)height setConversation:conversationCopy];
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

    addButton = [v18 addButton];
    [addButton setHidden:1];

    [v18 setSeparatorHidden:1];
    [v18 setEditable:0];
    [v18 setUserInteractionEnabled:0];
    systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
    [v18 setInactiveTextColor:systemGrayColor];

    [(CKTranscriptGroupHeaderView *)v11 setTextView:v18];
    [(CKTranscriptGroupHeaderView *)v11 addSubview:v18];
    v23 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v13, v14, v15, v16}];
    v24 = +[CKUIBehavior sharedBehaviors];
    theme = [v24 theme];
    entryFieldDividerColor = [theme entryFieldDividerColor];
    [v23 setBackgroundColor:entryFieldDividerColor];

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
  backdropView = [(CKTranscriptGroupHeaderView *)self backdropView];
  [backdropView setFrame:{v4, v6, v8, v10}];

  textView = [(CKTranscriptGroupHeaderView *)self textView];
  [textView setFrame:{v4, v6, v8, v10}];

  actionButton = [(CKTranscriptGroupHeaderView *)self actionButton];
  [actionButton setFrame:{v4, v6, v8, v10}];

  v14 = +[CKUIBehavior sharedBehaviors];
  [v14 defaultSeparatorHeight];
  v16 = v15;

  [(CKTranscriptGroupHeaderView *)self bounds];
  v18 = v17;
  separator = [(CKTranscriptGroupHeaderView *)self separator];
  [separator setFrame:{v4, v18, v8, v16}];
}

@end