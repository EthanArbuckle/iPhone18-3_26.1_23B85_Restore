@interface ICAttachmentAudioModelCompositionInfo
- (ICAttachmentAudioModelCompositionInfo)initWithURL:(id)l asset:(id)asset;
@end

@implementation ICAttachmentAudioModelCompositionInfo

- (ICAttachmentAudioModelCompositionInfo)initWithURL:(id)l asset:(id)asset
{
  lCopy = l;
  assetCopy = asset;
  v12.receiver = self;
  v12.super_class = ICAttachmentAudioModelCompositionInfo;
  v8 = [(ICAttachmentAudioModelCompositionInfo *)&v12 init];
  if (v8)
  {
    v9 = [lCopy copy];
    url = v8->_url;
    v8->_url = v9;

    objc_storeStrong(&v8->_asset, asset);
  }

  return v8;
}

@end