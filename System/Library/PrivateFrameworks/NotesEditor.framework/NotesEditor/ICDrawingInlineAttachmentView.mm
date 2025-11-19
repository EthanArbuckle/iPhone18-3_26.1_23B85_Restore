@interface ICDrawingInlineAttachmentView
- (BOOL)cancelDidScrollIntoVisibleRange;
- (CGRect)boundsForDisplay;
- (id)accessibilityLabel;
- (id)icaxHintString;
- (void)dealloc;
- (void)didChangeSize;
- (void)didScrollIntoVisibleRange;
- (void)didScrollOutOfVisibleRange;
- (void)didTapAttachment:(id)a3;
- (void)setAttachment:(id)a3;
- (void)setAttachmentContentSize:(CGSize)a3;
- (void)setFrame:(CGRect)a3;
- (void)sharedInit:(BOOL)a3;
@end

@implementation ICDrawingInlineAttachmentView

- (id)icaxHintString
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 localizedStringForKey:@"Double tap to edit sketch" value:&stru_282757698 table:0];

  return v3;
}

- (id)accessibilityLabel
{
  v3 = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [v3 localizedStringForKey:@"sketch attachment" value:&stru_282757698 table:0];

  v7 = [(ICAttachmentView *)self icaxAttachmentViewTypeDescription];
  v5 = __ICAccessibilityStringForVariables();

  return v5;
}

- (void)sharedInit:(BOOL)a3
{
  v13.receiver = self;
  v13.super_class = ICDrawingInlineAttachmentView;
  [(ICAttachmentView *)&v13 sharedInit:a3];
  v4 = [ICDrawingInlineView alloc];
  [(ICDrawingInlineAttachmentView *)self bounds];
  v9 = [(ICDrawingInlineView *)v4 initWithFrame:[(ICAttachmentView *)self forManualRendering] forManualRendering:v5, v6, v7, v8];
  [(ICDrawingInlineAttachmentView *)self setDrawingInlineView:v9];

  v10 = [(ICDrawingInlineAttachmentView *)self drawingInlineView];
  [v10 setEditable:1];

  v11 = [MEMORY[0x277D75348] clearColor];
  [(ICDrawingInlineAttachmentView *)self setIc_backgroundColor:v11];

  v12 = [(ICDrawingInlineAttachmentView *)self drawingInlineView];
  [(ICDrawingInlineAttachmentView *)self addSubview:v12];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICDrawingInlineAttachmentView;
  [(ICAttachmentView *)&v4 dealloc];
}

- (CGRect)boundsForDisplay
{
  v2 = [(ICDrawingInlineAttachmentView *)self drawingInlineView];
  [v2 boundsForDisplay];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)setAttachment:(id)a3
{
  v4 = a3;
  v5 = [(ICDrawingInlineAttachmentView *)self attachment];

  v6 = MEMORY[0x277D35BB8];
  v7 = MEMORY[0x277D35B80];
  if (v5)
  {
    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    v9 = *v6;
    v10 = [(ICDrawingInlineAttachmentView *)self attachment];
    v11 = [v10 objectID];
    [v8 removeObserver:self name:v9 object:v11];

    v12 = [MEMORY[0x277CCAB98] defaultCenter];
    v13 = *v7;
    v14 = [(ICDrawingInlineAttachmentView *)self attachment];
    v15 = [v14 objectID];
    [v12 removeObserver:self name:v13 object:v15];
  }

  v28.receiver = self;
  v28.super_class = ICDrawingInlineAttachmentView;
  [(ICDrawingInlineAttachmentView *)&v28 setAttachment:v4];
  v16 = [(ICDrawingInlineAttachmentView *)self attachment];
  v17 = [(ICDrawingInlineAttachmentView *)self drawingInlineView];
  [v17 setAttachment:v16];

  v18 = [(ICDrawingInlineAttachmentView *)self drawingInlineView];
  [v18 setThumbnailDisplay:0];

  v19 = [(ICDrawingInlineAttachmentView *)self attachment];

  if (v19)
  {
    v20 = [MEMORY[0x277CCAB98] defaultCenter];
    v21 = *v6;
    v22 = [(ICDrawingInlineAttachmentView *)self attachment];
    v23 = [v22 objectID];
    [v20 addObserver:self selector:sel_didChangeSize name:v21 object:v23];

    v24 = [MEMORY[0x277CCAB98] defaultCenter];
    v25 = *v7;
    v26 = [(ICDrawingInlineAttachmentView *)self attachment];
    v27 = [v26 objectID];
    [v24 addObserver:self selector:sel_didChangeSize name:v25 object:v27];
  }
}

- (void)setFrame:(CGRect)a3
{
  v13.receiver = self;
  v13.super_class = ICDrawingInlineAttachmentView;
  [(ICDrawingInlineAttachmentView *)&v13 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(ICDrawingInlineAttachmentView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(ICDrawingInlineAttachmentView *)self drawingInlineView];
  [v12 setFrame:{v5, v7, v9, v11}];
}

- (void)setAttachmentContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v7.receiver = self;
  v7.super_class = ICDrawingInlineAttachmentView;
  [(ICDrawingInlineAttachmentView *)&v7 setAttachmentContentSize:?];
  v6 = [(ICDrawingInlineAttachmentView *)self drawingInlineView];
  [v6 setAttachmentContentSize:{width, height}];
}

- (void)didTapAttachment:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ICDrawingInlineAttachmentView *)self attachment];
  v6 = [v5 attachmentModel];
  if ([v6 isReadyToPresent])
  {
    v7 = [(ICDrawingInlineAttachmentView *)self drawingInlineView];
    v8 = [v7 isReadyToPresent];

    if (v8)
    {
      v12.receiver = self;
      v12.super_class = ICDrawingInlineAttachmentView;
      [(ICAttachmentView *)&v12 didTapAttachment:v4];
      goto LABEL_8;
    }
  }

  else
  {
  }

  v9 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [(ICDrawingInlineAttachmentView *)self attachment];
    v11 = [v10 shortLoggingDescription];
    *buf = 138412290;
    v14 = v11;
    _os_log_impl(&dword_2151A1000, v9, OS_LOG_TYPE_INFO, "Not presenting drawing %@ because it's not ready yet", buf, 0xCu);
  }

LABEL_8:
}

- (void)didScrollIntoVisibleRange
{
  v2 = [(ICDrawingInlineAttachmentView *)self drawingInlineView];
  [v2 didScrollIntoVisibleRange];
}

- (void)didScrollOutOfVisibleRange
{
  v2 = [(ICDrawingInlineAttachmentView *)self drawingInlineView];
  [v2 didScrollOutOfVisibleRange];
}

- (BOOL)cancelDidScrollIntoVisibleRange
{
  v2 = [(ICDrawingInlineAttachmentView *)self drawingInlineView];
  v3 = [v2 cancelDidScrollIntoVisibleRange];

  return v3;
}

- (void)didChangeSize
{
  v3 = [(ICDrawingInlineAttachmentView *)self attachment];
  v4 = [v3 managedObjectContext];
  v5 = [(ICDrawingInlineAttachmentView *)self attachment];
  [v4 ic_refreshObject:v5 mergeChanges:1];

  v6.receiver = self;
  v6.super_class = ICDrawingInlineAttachmentView;
  [(ICDrawingInlineAttachmentView *)&v6 didChangeSize];
}

@end