@interface SUUIAssetViewElement
- (SUUIAssetViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5;
- (id)applyUpdatesWithElement:(id)a3;
@end

@implementation SUUIAssetViewElement

- (SUUIAssetViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5
{
  v8 = a3;
  v27.receiver = self;
  v27.super_class = SUUIAssetViewElement;
  v9 = [(SUUIViewElement *)&v27 initWithDOMElement:v8 parent:a4 elementFactory:a5];
  if (v9)
  {
    v10 = [v8 getAttribute:@"offset"];
    if ([v10 length])
    {
      [v10 doubleValue];
    }

    else
    {
      v11 = 0x7FF8000000000000;
    }

    *&v9->_initialPlaybackTime = v11;
    v12 = [v8 getAttribute:@"duration"];
    if ([v12 length])
    {
      [v12 doubleValue];
    }

    else
    {
      v13 = 0x7FF8000000000000;
    }

    *&v9->_playbackDuration = v13;
    v14 = [v8 getAttribute:@"data-content-id"];
    if ([v14 length])
    {
      v9->_itemIdentifier = [v14 longLongValue];
    }

    v15 = [v8 getAttribute:*MEMORY[0x277D1AF48]];
    if ([v15 length])
    {
      objc_storeStrong(&v9->_secureKeyDeliveryType, v15);
    }

    v16 = [v8 getAttribute:@"key-cert-url"];
    if ([v16 length])
    {
      v17 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v16];
      keyCertificateURL = v9->_keyCertificateURL;
      v9->_keyCertificateURL = v17;
    }

    v19 = [v8 getAttribute:@"key-server-url"];
    if ([v19 length])
    {
      v20 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v19];
      keyServerURL = v9->_keyServerURL;
      v9->_keyServerURL = v20;
    }

    v22 = [v8 getAttribute:@"is-itunes-stream"];
    v9->_ITunesStream = [v22 BOOLValue];
    v23 = [v8 getAttribute:@"src"];
    if ([v23 length])
    {
      v24 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v23];
      url = v9->_url;
      v9->_url = v24;
    }
  }

  return v9;
}

- (id)applyUpdatesWithElement:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = SUUIAssetViewElement;
  v5 = [(SUUIViewElement *)&v18 applyUpdatesWithElement:v4];
  v6 = v5;
  if (v4 != self || [v5 updateType])
  {
    [(SUUIAssetViewElement *)v4 initialPlaybackTime];
    self->_initialPlaybackTime = v7;
    self->_itemIdentifier = [(SUUIAssetViewElement *)v4 itemIdentifier];
    [(SUUIAssetViewElement *)v4 playbackDuration];
    self->_playbackDuration = v8;
    v9 = [(SUUIAssetViewElement *)v4 keyCertificateURL];
    keyCertificateURL = self->_keyCertificateURL;
    self->_keyCertificateURL = v9;

    v11 = [(SUUIAssetViewElement *)v4 keyServerURL];
    keyServerURL = self->_keyServerURL;
    self->_keyServerURL = v11;

    v13 = [(SUUIAssetViewElement *)v4 secureKeyDeliveryType];
    secureKeyDeliveryType = self->_secureKeyDeliveryType;
    self->_secureKeyDeliveryType = v13;

    self->_ITunesStream = [(SUUIAssetViewElement *)v4 isITunesStream];
    v15 = [(SUUIAssetViewElement *)v4 URL];
    url = self->_url;
    self->_url = v15;
  }

  return v6;
}

@end