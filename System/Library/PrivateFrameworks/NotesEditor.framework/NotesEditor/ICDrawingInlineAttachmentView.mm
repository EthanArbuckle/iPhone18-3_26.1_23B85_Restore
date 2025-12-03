@interface ICDrawingInlineAttachmentView
- (BOOL)cancelDidScrollIntoVisibleRange;
- (CGRect)boundsForDisplay;
- (id)accessibilityLabel;
- (id)icaxHintString;
- (void)dealloc;
- (void)didChangeSize;
- (void)didScrollIntoVisibleRange;
- (void)didScrollOutOfVisibleRange;
- (void)didTapAttachment:(id)attachment;
- (void)setAttachment:(id)attachment;
- (void)setAttachmentContentSize:(CGSize)size;
- (void)setFrame:(CGRect)frame;
- (void)sharedInit:(BOOL)init;
@end

@implementation ICDrawingInlineAttachmentView

- (id)icaxHintString
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"Double tap to edit sketch" value:&stru_282757698 table:0];

  return v3;
}

- (id)accessibilityLabel
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [mainBundle localizedStringForKey:@"sketch attachment" value:&stru_282757698 table:0];

  icaxAttachmentViewTypeDescription = [(ICAttachmentView *)self icaxAttachmentViewTypeDescription];
  v5 = __ICAccessibilityStringForVariables();

  return v5;
}

- (void)sharedInit:(BOOL)init
{
  v13.receiver = self;
  v13.super_class = ICDrawingInlineAttachmentView;
  [(ICAttachmentView *)&v13 sharedInit:init];
  v4 = [ICDrawingInlineView alloc];
  [(ICDrawingInlineAttachmentView *)self bounds];
  v9 = [(ICDrawingInlineView *)v4 initWithFrame:[(ICAttachmentView *)self forManualRendering] forManualRendering:v5, v6, v7, v8];
  [(ICDrawingInlineAttachmentView *)self setDrawingInlineView:v9];

  drawingInlineView = [(ICDrawingInlineAttachmentView *)self drawingInlineView];
  [drawingInlineView setEditable:1];

  clearColor = [MEMORY[0x277D75348] clearColor];
  [(ICDrawingInlineAttachmentView *)self setIc_backgroundColor:clearColor];

  drawingInlineView2 = [(ICDrawingInlineAttachmentView *)self drawingInlineView];
  [(ICDrawingInlineAttachmentView *)self addSubview:drawingInlineView2];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICDrawingInlineAttachmentView;
  [(ICAttachmentView *)&v4 dealloc];
}

- (CGRect)boundsForDisplay
{
  drawingInlineView = [(ICDrawingInlineAttachmentView *)self drawingInlineView];
  [drawingInlineView boundsForDisplay];
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

- (void)setAttachment:(id)attachment
{
  attachmentCopy = attachment;
  attachment = [(ICDrawingInlineAttachmentView *)self attachment];

  v6 = MEMORY[0x277D35BB8];
  v7 = MEMORY[0x277D35B80];
  if (attachment)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v9 = *v6;
    attachment2 = [(ICDrawingInlineAttachmentView *)self attachment];
    objectID = [attachment2 objectID];
    [defaultCenter removeObserver:self name:v9 object:objectID];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    v13 = *v7;
    attachment3 = [(ICDrawingInlineAttachmentView *)self attachment];
    objectID2 = [attachment3 objectID];
    [defaultCenter2 removeObserver:self name:v13 object:objectID2];
  }

  v28.receiver = self;
  v28.super_class = ICDrawingInlineAttachmentView;
  [(ICDrawingInlineAttachmentView *)&v28 setAttachment:attachmentCopy];
  attachment4 = [(ICDrawingInlineAttachmentView *)self attachment];
  drawingInlineView = [(ICDrawingInlineAttachmentView *)self drawingInlineView];
  [drawingInlineView setAttachment:attachment4];

  drawingInlineView2 = [(ICDrawingInlineAttachmentView *)self drawingInlineView];
  [drawingInlineView2 setThumbnailDisplay:0];

  attachment5 = [(ICDrawingInlineAttachmentView *)self attachment];

  if (attachment5)
  {
    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    v21 = *v6;
    attachment6 = [(ICDrawingInlineAttachmentView *)self attachment];
    objectID3 = [attachment6 objectID];
    [defaultCenter3 addObserver:self selector:sel_didChangeSize name:v21 object:objectID3];

    defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
    v25 = *v7;
    attachment7 = [(ICDrawingInlineAttachmentView *)self attachment];
    objectID4 = [attachment7 objectID];
    [defaultCenter4 addObserver:self selector:sel_didChangeSize name:v25 object:objectID4];
  }
}

- (void)setFrame:(CGRect)frame
{
  v13.receiver = self;
  v13.super_class = ICDrawingInlineAttachmentView;
  [(ICDrawingInlineAttachmentView *)&v13 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(ICDrawingInlineAttachmentView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  drawingInlineView = [(ICDrawingInlineAttachmentView *)self drawingInlineView];
  [drawingInlineView setFrame:{v5, v7, v9, v11}];
}

- (void)setAttachmentContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v7.receiver = self;
  v7.super_class = ICDrawingInlineAttachmentView;
  [(ICDrawingInlineAttachmentView *)&v7 setAttachmentContentSize:?];
  drawingInlineView = [(ICDrawingInlineAttachmentView *)self drawingInlineView];
  [drawingInlineView setAttachmentContentSize:{width, height}];
}

- (void)didTapAttachment:(id)attachment
{
  v15 = *MEMORY[0x277D85DE8];
  attachmentCopy = attachment;
  attachment = [(ICDrawingInlineAttachmentView *)self attachment];
  attachmentModel = [attachment attachmentModel];
  if ([attachmentModel isReadyToPresent])
  {
    drawingInlineView = [(ICDrawingInlineAttachmentView *)self drawingInlineView];
    isReadyToPresent = [drawingInlineView isReadyToPresent];

    if (isReadyToPresent)
    {
      v12.receiver = self;
      v12.super_class = ICDrawingInlineAttachmentView;
      [(ICAttachmentView *)&v12 didTapAttachment:attachmentCopy];
      goto LABEL_8;
    }
  }

  else
  {
  }

  v9 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    attachment2 = [(ICDrawingInlineAttachmentView *)self attachment];
    shortLoggingDescription = [attachment2 shortLoggingDescription];
    *buf = 138412290;
    v14 = shortLoggingDescription;
    _os_log_impl(&dword_2151A1000, v9, OS_LOG_TYPE_INFO, "Not presenting drawing %@ because it's not ready yet", buf, 0xCu);
  }

LABEL_8:
}

- (void)didScrollIntoVisibleRange
{
  drawingInlineView = [(ICDrawingInlineAttachmentView *)self drawingInlineView];
  [drawingInlineView didScrollIntoVisibleRange];
}

- (void)didScrollOutOfVisibleRange
{
  drawingInlineView = [(ICDrawingInlineAttachmentView *)self drawingInlineView];
  [drawingInlineView didScrollOutOfVisibleRange];
}

- (BOOL)cancelDidScrollIntoVisibleRange
{
  drawingInlineView = [(ICDrawingInlineAttachmentView *)self drawingInlineView];
  cancelDidScrollIntoVisibleRange = [drawingInlineView cancelDidScrollIntoVisibleRange];

  return cancelDidScrollIntoVisibleRange;
}

- (void)didChangeSize
{
  attachment = [(ICDrawingInlineAttachmentView *)self attachment];
  managedObjectContext = [attachment managedObjectContext];
  attachment2 = [(ICDrawingInlineAttachmentView *)self attachment];
  [managedObjectContext ic_refreshObject:attachment2 mergeChanges:1];

  v6.receiver = self;
  v6.super_class = ICDrawingInlineAttachmentView;
  [(ICDrawingInlineAttachmentView *)&v6 didChangeSize];
}

@end