@interface ICAttachmentAudioModelCompositionInfo
- (ICAttachmentAudioModelCompositionInfo)initWithURL:(id)a3 asset:(id)a4;
@end

@implementation ICAttachmentAudioModelCompositionInfo

- (ICAttachmentAudioModelCompositionInfo)initWithURL:(id)a3 asset:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = ICAttachmentAudioModelCompositionInfo;
  v8 = [(ICAttachmentAudioModelCompositionInfo *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    url = v8->_url;
    v8->_url = v9;

    objc_storeStrong(&v8->_asset, a4);
  }

  return v8;
}

@end