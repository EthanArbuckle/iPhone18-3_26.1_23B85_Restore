@interface SUUIPlayableAsset
- (SUUIPlayableAsset)init;
- (SUUIPlayableAsset)initWithContentURL:(id)a3;
- (SUUIPlayableAsset)initWithVideo:(id)a3;
- (SUUIPlayableAsset)initWithVideoViewElement:(id)a3 assetViewElement:(id)a4;
@end

@implementation SUUIPlayableAsset

- (SUUIPlayableAsset)init
{
  v3.receiver = self;
  v3.super_class = SUUIPlayableAsset;
  result = [(SUUIPlayableAsset *)&v3 init];
  if (result)
  {
    result->_initialPlaybackTime = NAN;
    result->_playbackDuration = NAN;
  }

  return result;
}

- (SUUIPlayableAsset)initWithContentURL:(id)a3
{
  v5 = a3;
  v6 = [(SUUIPlayableAsset *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentURL, a3);
  }

  return v7;
}

- (SUUIPlayableAsset)initWithVideoViewElement:(id)a3 assetViewElement:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SUUIPlayableAsset *)self init];
  v9 = v8;
  if (v7 && v8)
  {
    v10 = [v7 URL];
    contentURL = v9->_contentURL;
    v9->_contentURL = v10;

    [v7 initialPlaybackTime];
    v9->_initialPlaybackTime = v12;
    v13 = [v7 itemIdentifier];
    v9->_storeItemIdentifier = v13;
    if (!v13)
    {
      v9->_storeItemIdentifier = [v6 itemIdentifier];
    }

    v14 = [v7 secureKeyDeliveryType];
    v9->_shouldUseITunesStoreSecureKeyDelivery = [v14 isEqualToString:0x286AECC40];

    v9->_ITunesStream = [v7 isITunesStream];
    v15 = [v7 keyCertificateURL];
    keyCertificateURL = v9->_keyCertificateURL;
    v9->_keyCertificateURL = v15;

    v17 = [v7 keyServerURL];
    keyServerURL = v9->_keyServerURL;
    v9->_keyServerURL = v17;

    [v7 playbackDuration];
    v9->_playbackDuration = v19;
  }

  return v9;
}

- (SUUIPlayableAsset)initWithVideo:(id)a3
{
  v4 = a3;
  v5 = [(SUUIPlayableAsset *)self init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [v4 URL];
    contentURL = v6->_contentURL;
    v6->_contentURL = v7;
  }

  return v6;
}

@end