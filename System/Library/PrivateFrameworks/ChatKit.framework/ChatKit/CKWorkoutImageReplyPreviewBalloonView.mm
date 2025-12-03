@interface CKWorkoutImageReplyPreviewBalloonView
- (void)configureForMediaObject:(id)object previewWidth:(double)width orientation:(char)orientation hasInvisibleInkEffect:(BOOL)effect;
- (void)configureForMessagePart:(id)part;
- (void)prepareForDisplay;
- (void)prepareForReuse;
- (void)setMetadata:(id)metadata;
@end

@implementation CKWorkoutImageReplyPreviewBalloonView

- (void)configureForMediaObject:(id)object previewWidth:(double)width orientation:(char)orientation hasInvisibleInkEffect:(BOOL)effect
{
  orientationCopy = orientation;
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [objectCopy linkMetadataForWidth:orientationCopy orientation:width];
    [(CKWorkoutImageReplyPreviewBalloonView *)self setMetadata:v9];
  }
}

- (void)configureForMessagePart:(id)part
{
  partCopy = part;
  v9.receiver = self;
  v9.super_class = CKWorkoutImageReplyPreviewBalloonView;
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
  -[CKWorkoutImageReplyPreviewBalloonView configureForMediaObject:previewWidth:orientation:](self, "configureForMediaObject:previewWidth:orientation:", mediaObject, [partCopy balloonOrientation], v7);
}

- (void)setMetadata:(id)metadata
{
  metadataCopy = metadata;
  if (self->_metadata != metadataCopy)
  {
    v6 = metadataCopy;
    objc_storeStrong(&self->_metadata, metadata);
    [(CKBalloonView *)self setNeedsPrepareForDisplay];
    metadataCopy = v6;
  }
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = CKWorkoutImageReplyPreviewBalloonView;
  [(CKLinkReplyContextPreviewBalloonView *)&v4 prepareForReuse];
  metadata = self->_metadata;
  self->_metadata = 0;
}

- (void)prepareForDisplay
{
  linkView = [(CKLinkReplyContextPreviewBalloonView *)self linkView];

  if (linkView)
  {
    linkView2 = [(CKLinkReplyContextPreviewBalloonView *)self linkView];
    [linkView2 setMetadata:self->_metadata];
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x1E696ECC8]) initWithMetadata:self->_metadata];
    [(CKLinkReplyContextPreviewBalloonView *)self setLinkView:v5];

    linkView2 = [(CKLinkReplyContextPreviewBalloonView *)self linkView];
    [linkView2 _setPreferredSizeClass:6];
  }

  v6.receiver = self;
  v6.super_class = CKWorkoutImageReplyPreviewBalloonView;
  [(CKLinkReplyContextPreviewBalloonView *)&v6 prepareForDisplay];
}

@end