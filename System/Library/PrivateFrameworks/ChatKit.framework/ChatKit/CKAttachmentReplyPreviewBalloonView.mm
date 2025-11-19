@interface CKAttachmentReplyPreviewBalloonView
- (CGSize)sizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4 tailInsets:(UIEdgeInsets *)a5;
- (CKAttachmentReplyPreviewBalloonView)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)balloonTypePillContentInsets;
- (id)attachmentTitleForMediaObject:(id)a3;
- (id)description;
- (void)configureForComposition:(id)a3;
- (void)configureForMediaObject:(id)a3 previewWidth:(double)a4 orientation:(char)a5;
- (void)configureForMessagePart:(id)a3;
- (void)prepareForDisplay;
- (void)prepareForReuse;
- (void)setMediaObject:(id)a3;
@end

@implementation CKAttachmentReplyPreviewBalloonView

- (void)configureForMediaObject:(id)a3 previewWidth:(double)a4 orientation:(char)a5
{
  v5 = a5;
  v9.receiver = self;
  v9.super_class = CKAttachmentReplyPreviewBalloonView;
  v8 = a3;
  [(CKBalloonView *)&v9 configureForMediaObject:v8 previewWidth:v5 orientation:a4];
  [(CKAttachmentReplyPreviewBalloonView *)self setMediaObject:v8, v9.receiver, v9.super_class];
}

- (void)configureForComposition:(id)a3
{
  v8.receiver = self;
  v8.super_class = CKAttachmentReplyPreviewBalloonView;
  v4 = a3;
  [(CKColoredBalloonView *)&v8 configureForComposition:v4];
  [(CKColoredBalloonView *)self setColor:8, v8.receiver, v8.super_class];
  v5 = [v4 mediaObjects];

  v6 = [v5 lastObject];
  v7 = +[CKUIBehavior sharedBehaviors];
  [v7 previewMaxWidth];
  [(CKAttachmentReplyPreviewBalloonView *)self configureForMediaObject:v6 previewWidth:1 orientation:?];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(CKAttachmentReplyPreviewBalloonView *)self mediaObject];
  v8.receiver = self;
  v8.super_class = CKAttachmentReplyPreviewBalloonView;
  v5 = [(CKColoredBalloonView *)&v8 description];
  v6 = [v3 stringWithFormat:@"[CKAttachmentReplyPreviewBalloonView mediaObject:%@ %@]", v4, v5];

  return v6;
}

- (CKAttachmentReplyPreviewBalloonView)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = CKAttachmentReplyPreviewBalloonView;
  v3 = [(CKColoredBalloonView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCC10]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v6 = +[CKUIBehavior sharedBehaviors];
    v7 = [v6 replyBalloonTextFont];
    [v5 setFont:v7];

    [v5 setNumberOfLines:1];
    [v5 setLineBreakMode:4];
    [(CKAttachmentReplyPreviewBalloonView *)v3 setTitleLabel:v5];
    [(CKAttachmentReplyPreviewBalloonView *)v3 addSubview:v5];
    v8 = [(CKBalloonView *)v3 doubleTapGestureRecognizer];
    [v8 setEnabled:0];
  }

  return v3;
}

- (void)prepareForDisplay
{
  v6.receiver = self;
  v6.super_class = CKAttachmentReplyPreviewBalloonView;
  [(CKColoredBalloonView *)&v6 prepareForDisplay];
  v3 = [(CKAttachmentReplyPreviewBalloonView *)self titleLabel];
  v4 = [(CKAttachmentReplyPreviewBalloonView *)self mediaObject];
  v5 = [(CKAttachmentReplyPreviewBalloonView *)self attachmentTitleForMediaObject:v4];
  [v3 setAttributedText:v5];

  [(CKAttachmentReplyPreviewBalloonView *)self bounds];
  [(CKAttachmentReplyPreviewBalloonView *)self alignmentRectForFrame:?];
  [v3 setFrame:?];
}

- (UIEdgeInsets)balloonTypePillContentInsets
{
  v2 = +[CKUIBehavior sharedBehaviors];
  [v2 attachmentReplyPreviewBalloonAlignmentRectInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [v2 textAlignmentRectInsetsScaleFactor];
  v12 = v4 * v11;
  v13 = v6 * v11;
  v14 = v8 * v11;
  v15 = v10 * v11;

  v16 = v12;
  v17 = v13;
  v18 = v14;
  v19 = v15;
  result.right = v19;
  result.bottom = v18;
  result.left = v17;
  result.top = v16;
  return result;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = CKAttachmentReplyPreviewBalloonView;
  [(CKColoredBalloonView *)&v4 prepareForReuse];
  [(CKAttachmentReplyPreviewBalloonView *)self setMediaObject:0];
  v3 = [(CKAttachmentReplyPreviewBalloonView *)self titleLabel];
  [v3 setText:0];
}

- (CGSize)sizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4 tailInsets:(UIEdgeInsets *)a5
{
  height = a3.height;
  width = a3.width;
  v30.receiver = self;
  v30.super_class = CKAttachmentReplyPreviewBalloonView;
  [(CKBalloonView *)&v30 sizeThatFits:a4 textAlignmentInsets:a5 tailInsets:?];
  v29 = v9;
  [(CKColoredBalloonView *)self alignmentRectInsetsForBoundsSize:width, height];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = v10 + v14;
  v17 = width - (v10 + v14);
  v28 = v18;
  v19 = v18 + v12;
  v20 = height - (v18 + v12);
  v21 = [(CKAttachmentReplyPreviewBalloonView *)self titleLabel];
  [v21 sizeThatFits:{v17, v20}];
  v23 = v22;
  v25 = v24;

  if (a4)
  {
    a4->top = v28;
    a4->left = v11;
    a4->bottom = v13;
    a4->right = v15;
  }

  v26 = fmax(v19 + v25, v29);
  v27 = fmin(v16 + v23, width);
  result.height = v26;
  result.width = v27;
  return result;
}

- (void)setMediaObject:(id)a3
{
  v5 = a3;
  if (self->_mediaObject != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_mediaObject, a3);
    v5 = v6;
  }
}

- (id)attachmentTitleForMediaObject:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v15 = 0;
    goto LABEL_16;
  }

  v5 = +[CKUIBehavior sharedBehaviors];
  v6 = [v5 theme];
  v7 = [v6 balloonTextColorForColorType:{-[CKBalloonView color](self, "color")}];

  v8 = [v4 mediaType];
  v9 = +[CKUIBehavior sharedBehaviors];
  v10 = v9;
  if (v8 == 4)
  {
    v11 = [v9 replyPreviewContactIconName];

    v12 = [MEMORY[0x1E69DCAB8] systemImageNamed:v11];
    v16 = [v12 imageWithTintColor:v7];
LABEL_8:
    v14 = v16;
    goto LABEL_9;
  }

  if (v8 != 5)
  {
    v11 = [v9 replyPreviewDocumentIconName];

    v12 = [MEMORY[0x1E69DCAB8] systemImageNamed:v11];
    v16 = [v12 imageWithTintColor:v7];
    goto LABEL_8;
  }

  v11 = [v9 replyPreviewLocationIconName];

  v12 = [MEMORY[0x1E69DCAB8] systemImageNamed:v11];
  v13 = [MEMORY[0x1E69DC888] ckColorNamed:@"CKMapAnnotationMarkerColor"];
  v14 = [v12 imageWithTintColor:v13];

LABEL_9:
  v17 = [MEMORY[0x1E69DB7F0] textAttachmentWithImage:v14];
  v18 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v17];
  v15 = [v18 mutableCopy];

  v19 = [v4 title];

  if (v19)
  {
    v20 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
    [v15 appendAttributedString:v20];

    v21 = objc_alloc(MEMORY[0x1E696AAB0]);
    v22 = [v4 title];
    v23 = [v21 initWithString:v22];
    [v15 appendAttributedString:v23];
  }

  else if (IMOSLoggingEnabled())
  {
    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v27 = 136315138;
      v28 = "[CKAttachmentReplyPreviewBalloonView attachmentTitleForMediaObject:]";
      _os_log_impl(&dword_19020E000, v24, OS_LOG_TYPE_INFO, "CKAttachmentReplyPreviewBalloonView %s Media object missing title!", &v27, 0xCu);
    }
  }

  v25 = [v15 length];
  [v15 addAttribute:*MEMORY[0x1E69DB650] value:v7 range:{0, v25}];

LABEL_16:

  return v15;
}

- (void)configureForMessagePart:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CKAttachmentReplyPreviewBalloonView;
  [(CKColoredBalloonView *)&v9 configureForMessagePart:v4];
  if (v4)
  {
    [v4 balloonDescriptor];
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  [(CKColoredBalloonView *)self setBalloonDescriptor:v8];
  v5 = [v4 mediaObject];
  v6 = +[CKUIBehavior sharedBehaviors];
  [v6 previewMaxWidth];
  -[CKAttachmentReplyPreviewBalloonView configureForMediaObject:previewWidth:orientation:](self, "configureForMediaObject:previewWidth:orientation:", v5, [v4 balloonOrientation], v7);
}

@end