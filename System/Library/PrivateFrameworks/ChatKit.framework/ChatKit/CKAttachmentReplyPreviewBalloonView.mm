@interface CKAttachmentReplyPreviewBalloonView
- (CGSize)sizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets tailInsets:(UIEdgeInsets *)tailInsets;
- (CKAttachmentReplyPreviewBalloonView)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)balloonTypePillContentInsets;
- (id)attachmentTitleForMediaObject:(id)object;
- (id)description;
- (void)configureForComposition:(id)composition;
- (void)configureForMediaObject:(id)object previewWidth:(double)width orientation:(char)orientation;
- (void)configureForMessagePart:(id)part;
- (void)prepareForDisplay;
- (void)prepareForReuse;
- (void)setMediaObject:(id)object;
@end

@implementation CKAttachmentReplyPreviewBalloonView

- (void)configureForMediaObject:(id)object previewWidth:(double)width orientation:(char)orientation
{
  orientationCopy = orientation;
  v9.receiver = self;
  v9.super_class = CKAttachmentReplyPreviewBalloonView;
  objectCopy = object;
  [(CKBalloonView *)&v9 configureForMediaObject:objectCopy previewWidth:orientationCopy orientation:width];
  [(CKAttachmentReplyPreviewBalloonView *)self setMediaObject:objectCopy, v9.receiver, v9.super_class];
}

- (void)configureForComposition:(id)composition
{
  v8.receiver = self;
  v8.super_class = CKAttachmentReplyPreviewBalloonView;
  compositionCopy = composition;
  [(CKColoredBalloonView *)&v8 configureForComposition:compositionCopy];
  [(CKColoredBalloonView *)self setColor:8, v8.receiver, v8.super_class];
  mediaObjects = [compositionCopy mediaObjects];

  lastObject = [mediaObjects lastObject];
  v7 = +[CKUIBehavior sharedBehaviors];
  [v7 previewMaxWidth];
  [(CKAttachmentReplyPreviewBalloonView *)self configureForMediaObject:lastObject previewWidth:1 orientation:?];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  mediaObject = [(CKAttachmentReplyPreviewBalloonView *)self mediaObject];
  v8.receiver = self;
  v8.super_class = CKAttachmentReplyPreviewBalloonView;
  v5 = [(CKColoredBalloonView *)&v8 description];
  v6 = [v3 stringWithFormat:@"[CKAttachmentReplyPreviewBalloonView mediaObject:%@ %@]", mediaObject, v5];

  return v6;
}

- (CKAttachmentReplyPreviewBalloonView)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = CKAttachmentReplyPreviewBalloonView;
  v3 = [(CKColoredBalloonView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCC10]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v6 = +[CKUIBehavior sharedBehaviors];
    replyBalloonTextFont = [v6 replyBalloonTextFont];
    [v5 setFont:replyBalloonTextFont];

    [v5 setNumberOfLines:1];
    [v5 setLineBreakMode:4];
    [(CKAttachmentReplyPreviewBalloonView *)v3 setTitleLabel:v5];
    [(CKAttachmentReplyPreviewBalloonView *)v3 addSubview:v5];
    doubleTapGestureRecognizer = [(CKBalloonView *)v3 doubleTapGestureRecognizer];
    [doubleTapGestureRecognizer setEnabled:0];
  }

  return v3;
}

- (void)prepareForDisplay
{
  v6.receiver = self;
  v6.super_class = CKAttachmentReplyPreviewBalloonView;
  [(CKColoredBalloonView *)&v6 prepareForDisplay];
  titleLabel = [(CKAttachmentReplyPreviewBalloonView *)self titleLabel];
  mediaObject = [(CKAttachmentReplyPreviewBalloonView *)self mediaObject];
  v5 = [(CKAttachmentReplyPreviewBalloonView *)self attachmentTitleForMediaObject:mediaObject];
  [titleLabel setAttributedText:v5];

  [(CKAttachmentReplyPreviewBalloonView *)self bounds];
  [(CKAttachmentReplyPreviewBalloonView *)self alignmentRectForFrame:?];
  [titleLabel setFrame:?];
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
  titleLabel = [(CKAttachmentReplyPreviewBalloonView *)self titleLabel];
  [titleLabel setText:0];
}

- (CGSize)sizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets tailInsets:(UIEdgeInsets *)tailInsets
{
  height = fits.height;
  width = fits.width;
  v30.receiver = self;
  v30.super_class = CKAttachmentReplyPreviewBalloonView;
  [(CKBalloonView *)&v30 sizeThatFits:insets textAlignmentInsets:tailInsets tailInsets:?];
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
  titleLabel = [(CKAttachmentReplyPreviewBalloonView *)self titleLabel];
  [titleLabel sizeThatFits:{v17, v20}];
  v23 = v22;
  v25 = v24;

  if (insets)
  {
    insets->top = v28;
    insets->left = v11;
    insets->bottom = v13;
    insets->right = v15;
  }

  v26 = fmax(v19 + v25, v29);
  v27 = fmin(v16 + v23, width);
  result.height = v26;
  result.width = v27;
  return result;
}

- (void)setMediaObject:(id)object
{
  objectCopy = object;
  if (self->_mediaObject != objectCopy)
  {
    v6 = objectCopy;
    objc_storeStrong(&self->_mediaObject, object);
    objectCopy = v6;
  }
}

- (id)attachmentTitleForMediaObject:(id)object
{
  v29 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  if (!objectCopy)
  {
    v15 = 0;
    goto LABEL_16;
  }

  v5 = +[CKUIBehavior sharedBehaviors];
  theme = [v5 theme];
  v7 = [theme balloonTextColorForColorType:{-[CKBalloonView color](self, "color")}];

  mediaType = [objectCopy mediaType];
  v9 = +[CKUIBehavior sharedBehaviors];
  v10 = v9;
  if (mediaType == 4)
  {
    replyPreviewContactIconName = [v9 replyPreviewContactIconName];

    v12 = [MEMORY[0x1E69DCAB8] systemImageNamed:replyPreviewContactIconName];
    v16 = [v12 imageWithTintColor:v7];
LABEL_8:
    v14 = v16;
    goto LABEL_9;
  }

  if (mediaType != 5)
  {
    replyPreviewContactIconName = [v9 replyPreviewDocumentIconName];

    v12 = [MEMORY[0x1E69DCAB8] systemImageNamed:replyPreviewContactIconName];
    v16 = [v12 imageWithTintColor:v7];
    goto LABEL_8;
  }

  replyPreviewContactIconName = [v9 replyPreviewLocationIconName];

  v12 = [MEMORY[0x1E69DCAB8] systemImageNamed:replyPreviewContactIconName];
  v13 = [MEMORY[0x1E69DC888] ckColorNamed:@"CKMapAnnotationMarkerColor"];
  v14 = [v12 imageWithTintColor:v13];

LABEL_9:
  v17 = [MEMORY[0x1E69DB7F0] textAttachmentWithImage:v14];
  v18 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v17];
  v15 = [v18 mutableCopy];

  title = [objectCopy title];

  if (title)
  {
    v20 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
    [v15 appendAttributedString:v20];

    v21 = objc_alloc(MEMORY[0x1E696AAB0]);
    title2 = [objectCopy title];
    v23 = [v21 initWithString:title2];
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

- (void)configureForMessagePart:(id)part
{
  partCopy = part;
  v9.receiver = self;
  v9.super_class = CKAttachmentReplyPreviewBalloonView;
  [(CKColoredBalloonView *)&v9 configureForMessagePart:partCopy];
  if (partCopy)
  {
    [partCopy balloonDescriptor];
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  [(CKColoredBalloonView *)self setBalloonDescriptor:v8];
  mediaObject = [partCopy mediaObject];
  v6 = +[CKUIBehavior sharedBehaviors];
  [v6 previewMaxWidth];
  -[CKAttachmentReplyPreviewBalloonView configureForMediaObject:previewWidth:orientation:](self, "configureForMediaObject:previewWidth:orientation:", mediaObject, [partCopy balloonOrientation], v7);
}

@end