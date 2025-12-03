@interface CKImageBalloonPluginDatasource
- (CGSize)sizeThatFits:(CGSize)fits;
- (CKImageBalloonPluginDatasource)initWithPluginPayload:(id)payload;
- (id)imageBalloon;
- (void)previewDidChange:(id)change;
@end

@implementation CKImageBalloonPluginDatasource

- (CKImageBalloonPluginDatasource)initWithPluginPayload:(id)payload
{
  v9.receiver = self;
  v9.super_class = CKImageBalloonPluginDatasource;
  v3 = [(CKImageBalloonPluginDatasource *)&v9 initWithPluginPayload:payload];
  v4 = v3;
  if (v3)
  {
    pluginPayload = [(CKImageBalloonPluginDatasource *)v3 pluginPayload];
    mediaObjectFromPayload = [pluginPayload mediaObjectFromPayload];
    mediaObject = v4->_mediaObject;
    v4->_mediaObject = mediaObjectFromPayload;
  }

  return v4;
}

- (id)imageBalloon
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_previewDidChange_ name:@"CKPreviewDidChangeNotification" object:0];

  mediaObject = self->_mediaObject;
  v5 = +[CKUIBehavior sharedBehaviors];
  [v5 previewMaxWidth];
  v6 = CKBalloonViewForClass([(CKMediaObject *)mediaObject balloonViewClassForWidth:1 orientation:?]);

  v7 = self->_mediaObject;
  v8 = +[CKUIBehavior sharedBehaviors];
  [v8 previewMaxWidth];
  [v6 configureForMediaObject:v7 previewWidth:1 orientation:?];

  [v6 setOrientation:1];
  [v6 setCanUseOpaqueMask:0];
  [v6 setHasTail:0];
  v9 = +[CKUIBehavior sharedBehaviors];
  [v9 balloonCornerRadius];
  [v6 setCornerRadius:?];

  [v6 setBalloonShape:0];
  [v6 prepareForDisplay];
  v10 = objc_opt_class();
  if ([v10 __ck_isKindOfClass:objc_opt_class()])
  {
    mediaObject = [(CKImageBalloonPluginDatasource *)self mediaObject];
    transfer = [mediaObject transfer];
    attributionInfo = [transfer attributionInfo];
    v14 = [attributionInfo objectForKey:*MEMORY[0x1E69A6F98]];

    if ([v14 length])
    {
      [v6 setStickerAccessibilityDescription:v14];
    }
  }

  [(CKImageBalloonPluginDatasource *)self setBalloonView:v6];

  return v6;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  mediaObject = [(CKImageBalloonPluginDatasource *)self mediaObject];
  transfer = [mediaObject transfer];
  isSticker = [transfer isSticker];

  if (isSticker)
  {
    mediaObject2 = [(CKImageBalloonPluginDatasource *)self mediaObject];
    v10 = +[CKUIBehavior sharedBehaviors];
    [v10 previewMaxWidth];
    v11 = [mediaObject2 previewForWidth:0 orientation:?];

    objc_opt_class();
    LOBYTE(v10) = objc_opt_isKindOfClass();
    v12 = v11;
    v13 = v12;
    if (v10)
    {
      image = [v12 image];
      [image size];
      v16 = v15;
      v18 = v17;

      image2 = [v13 image];
    }

    else
    {
      [v12 size];
      v16 = v23;
      v18 = v24;
      image2 = v13;
    }

    [image2 scale];
    v26 = v25;

    v27 = +[CKUIBehavior sharedBehaviors];
    [v27 stickerScreenScale];
    [v27 stickerSizeScaledWithInitialSize:v16 imageScale:v18 userScale:v26 rectifiedScreenScale:1.0 maxWidth:{v28, width}];
    v30 = v29;
    v32 = v31;

    v21 = v30;
    v22 = v32;
  }

  else
  {
    balloonView = self->_balloonView;

    [(CKBalloonView *)balloonView sizeThatFits:width, height];
  }

  result.height = v22;
  result.width = v21;
  return result;
}

- (void)previewDidChange:(id)change
{
  changeCopy = change;
  object = [changeCopy object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v6 = changeCopy;
  if (isKindOfClass)
  {
    object2 = [changeCopy object];
    transferGUID = [(CKMediaObject *)self->_mediaObject transferGUID];
    transferGUID2 = [object2 transferGUID];
    v10 = [transferGUID isEqualToString:transferGUID2];

    if (v10)
    {
      balloonView = self->_balloonView;
      mediaObject = self->_mediaObject;
      v13 = +[CKUIBehavior sharedBehaviors];
      [v13 previewMaxWidth];
      [(CKBalloonView *)balloonView configureForMediaObject:mediaObject previewWidth:1 orientation:?];
    }

    v6 = changeCopy;
  }
}

@end