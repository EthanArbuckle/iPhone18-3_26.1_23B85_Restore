@interface SUUIPlayableAsset
- (SUUIPlayableAsset)init;
- (SUUIPlayableAsset)initWithContentURL:(id)l;
- (SUUIPlayableAsset)initWithVideo:(id)video;
- (SUUIPlayableAsset)initWithVideoViewElement:(id)element assetViewElement:(id)viewElement;
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

- (SUUIPlayableAsset)initWithContentURL:(id)l
{
  lCopy = l;
  v6 = [(SUUIPlayableAsset *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentURL, l);
  }

  return v7;
}

- (SUUIPlayableAsset)initWithVideoViewElement:(id)element assetViewElement:(id)viewElement
{
  elementCopy = element;
  viewElementCopy = viewElement;
  v8 = [(SUUIPlayableAsset *)self init];
  v9 = v8;
  if (viewElementCopy && v8)
  {
    v10 = [viewElementCopy URL];
    contentURL = v9->_contentURL;
    v9->_contentURL = v10;

    [viewElementCopy initialPlaybackTime];
    v9->_initialPlaybackTime = v12;
    itemIdentifier = [viewElementCopy itemIdentifier];
    v9->_storeItemIdentifier = itemIdentifier;
    if (!itemIdentifier)
    {
      v9->_storeItemIdentifier = [elementCopy itemIdentifier];
    }

    secureKeyDeliveryType = [viewElementCopy secureKeyDeliveryType];
    v9->_shouldUseITunesStoreSecureKeyDelivery = [secureKeyDeliveryType isEqualToString:0x286AECC40];

    v9->_ITunesStream = [viewElementCopy isITunesStream];
    keyCertificateURL = [viewElementCopy keyCertificateURL];
    keyCertificateURL = v9->_keyCertificateURL;
    v9->_keyCertificateURL = keyCertificateURL;

    keyServerURL = [viewElementCopy keyServerURL];
    keyServerURL = v9->_keyServerURL;
    v9->_keyServerURL = keyServerURL;

    [viewElementCopy playbackDuration];
    v9->_playbackDuration = v19;
  }

  return v9;
}

- (SUUIPlayableAsset)initWithVideo:(id)video
{
  videoCopy = video;
  v5 = [(SUUIPlayableAsset *)self init];
  v6 = v5;
  if (videoCopy && v5)
  {
    v7 = [videoCopy URL];
    contentURL = v6->_contentURL;
    v6->_contentURL = v7;
  }

  return v6;
}

@end