@interface CKImageBalloonPluginDatasource
- (CGSize)sizeThatFits:(CGSize)a3;
- (CKImageBalloonPluginDatasource)initWithPluginPayload:(id)a3;
- (id)imageBalloon;
- (void)previewDidChange:(id)a3;
@end

@implementation CKImageBalloonPluginDatasource

- (CKImageBalloonPluginDatasource)initWithPluginPayload:(id)a3
{
  v9.receiver = self;
  v9.super_class = CKImageBalloonPluginDatasource;
  v3 = [(CKImageBalloonPluginDatasource *)&v9 initWithPluginPayload:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(CKImageBalloonPluginDatasource *)v3 pluginPayload];
    v6 = [v5 mediaObjectFromPayload];
    mediaObject = v4->_mediaObject;
    v4->_mediaObject = v6;
  }

  return v4;
}

- (id)imageBalloon
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel_previewDidChange_ name:@"CKPreviewDidChangeNotification" object:0];

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
    v11 = [(CKImageBalloonPluginDatasource *)self mediaObject];
    v12 = [v11 transfer];
    v13 = [v12 attributionInfo];
    v14 = [v13 objectForKey:*MEMORY[0x1E69A6F98]];

    if ([v14 length])
    {
      [v6 setStickerAccessibilityDescription:v14];
    }
  }

  [(CKImageBalloonPluginDatasource *)self setBalloonView:v6];

  return v6;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(CKImageBalloonPluginDatasource *)self mediaObject];
  v7 = [v6 transfer];
  v8 = [v7 isSticker];

  if (v8)
  {
    v9 = [(CKImageBalloonPluginDatasource *)self mediaObject];
    v10 = +[CKUIBehavior sharedBehaviors];
    [v10 previewMaxWidth];
    v11 = [v9 previewForWidth:0 orientation:?];

    objc_opt_class();
    LOBYTE(v10) = objc_opt_isKindOfClass();
    v12 = v11;
    v13 = v12;
    if (v10)
    {
      v14 = [v12 image];
      [v14 size];
      v16 = v15;
      v18 = v17;

      v19 = [v13 image];
    }

    else
    {
      [v12 size];
      v16 = v23;
      v18 = v24;
      v19 = v13;
    }

    [v19 scale];
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

- (void)previewDidChange:(id)a3
{
  v14 = a3;
  v4 = [v14 object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v6 = v14;
  if (isKindOfClass)
  {
    v7 = [v14 object];
    v8 = [(CKMediaObject *)self->_mediaObject transferGUID];
    v9 = [v7 transferGUID];
    v10 = [v8 isEqualToString:v9];

    if (v10)
    {
      balloonView = self->_balloonView;
      mediaObject = self->_mediaObject;
      v13 = +[CKUIBehavior sharedBehaviors];
      [v13 previewMaxWidth];
      [(CKBalloonView *)balloonView configureForMediaObject:mediaObject previewWidth:1 orientation:?];
    }

    v6 = v14;
  }
}

@end