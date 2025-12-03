@interface SUUIAssetViewElement
- (SUUIAssetViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (id)applyUpdatesWithElement:(id)element;
@end

@implementation SUUIAssetViewElement

- (SUUIAssetViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  v27.receiver = self;
  v27.super_class = SUUIAssetViewElement;
  v9 = [(SUUIViewElement *)&v27 initWithDOMElement:elementCopy parent:parent elementFactory:factory];
  if (v9)
  {
    v10 = [elementCopy getAttribute:@"offset"];
    if ([v10 length])
    {
      [v10 doubleValue];
    }

    else
    {
      v11 = 0x7FF8000000000000;
    }

    *&v9->_initialPlaybackTime = v11;
    v12 = [elementCopy getAttribute:@"duration"];
    if ([v12 length])
    {
      [v12 doubleValue];
    }

    else
    {
      v13 = 0x7FF8000000000000;
    }

    *&v9->_playbackDuration = v13;
    v14 = [elementCopy getAttribute:@"data-content-id"];
    if ([v14 length])
    {
      v9->_itemIdentifier = [v14 longLongValue];
    }

    v15 = [elementCopy getAttribute:*MEMORY[0x277D1AF48]];
    if ([v15 length])
    {
      objc_storeStrong(&v9->_secureKeyDeliveryType, v15);
    }

    v16 = [elementCopy getAttribute:@"key-cert-url"];
    if ([v16 length])
    {
      v17 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v16];
      keyCertificateURL = v9->_keyCertificateURL;
      v9->_keyCertificateURL = v17;
    }

    v19 = [elementCopy getAttribute:@"key-server-url"];
    if ([v19 length])
    {
      v20 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v19];
      keyServerURL = v9->_keyServerURL;
      v9->_keyServerURL = v20;
    }

    v22 = [elementCopy getAttribute:@"is-itunes-stream"];
    v9->_ITunesStream = [v22 BOOLValue];
    v23 = [elementCopy getAttribute:@"src"];
    if ([v23 length])
    {
      v24 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v23];
      url = v9->_url;
      v9->_url = v24;
    }
  }

  return v9;
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v18.receiver = self;
  v18.super_class = SUUIAssetViewElement;
  v5 = [(SUUIViewElement *)&v18 applyUpdatesWithElement:elementCopy];
  v6 = v5;
  if (elementCopy != self || [v5 updateType])
  {
    [(SUUIAssetViewElement *)elementCopy initialPlaybackTime];
    self->_initialPlaybackTime = v7;
    self->_itemIdentifier = [(SUUIAssetViewElement *)elementCopy itemIdentifier];
    [(SUUIAssetViewElement *)elementCopy playbackDuration];
    self->_playbackDuration = v8;
    keyCertificateURL = [(SUUIAssetViewElement *)elementCopy keyCertificateURL];
    keyCertificateURL = self->_keyCertificateURL;
    self->_keyCertificateURL = keyCertificateURL;

    keyServerURL = [(SUUIAssetViewElement *)elementCopy keyServerURL];
    keyServerURL = self->_keyServerURL;
    self->_keyServerURL = keyServerURL;

    secureKeyDeliveryType = [(SUUIAssetViewElement *)elementCopy secureKeyDeliveryType];
    secureKeyDeliveryType = self->_secureKeyDeliveryType;
    self->_secureKeyDeliveryType = secureKeyDeliveryType;

    self->_ITunesStream = [(SUUIAssetViewElement *)elementCopy isITunesStream];
    v15 = [(SUUIAssetViewElement *)elementCopy URL];
    url = self->_url;
    self->_url = v15;
  }

  return v6;
}

@end