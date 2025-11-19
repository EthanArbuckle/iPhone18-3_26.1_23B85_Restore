@interface DTXProxyRequestHandler
- (BOOL)matchesPublishedProtocolName:(id)a3 peerProtocolName:(id)a4;
- (DTXProxyRequestHandler)initWithPublishedProtocol:(id)a3 publishedProtocolName:(id)a4 peerProtocol:(id)a5 peerProtocolName:(id)a6 handlerBlock:(id)a7;
- (NSString)channelIdentifier;
@end

@implementation DTXProxyRequestHandler

- (DTXProxyRequestHandler)initWithPublishedProtocol:(id)a3 publishedProtocolName:(id)a4 peerProtocol:(id)a5 peerProtocolName:(id)a6 handlerBlock:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (v13)
  {
    if (v14)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_247F59B84();
    if (v14)
    {
      goto LABEL_3;
    }
  }

  sub_247F59BF8();
LABEL_3:
  if ((v15 == 0) == (v16 == 0))
  {
    if (v17)
    {
      goto LABEL_5;
    }
  }

  else
  {
    sub_247F59C6C();
    if (v17)
    {
      goto LABEL_5;
    }
  }

  sub_247F59CE0();
LABEL_5:
  v33.receiver = self;
  v33.super_class = DTXProxyRequestHandler;
  v18 = [(DTXProxyRequestHandler *)&v33 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_publishedProtocol, a3);
    v22 = objc_msgSend_copy(v14, v20, v21);
    publishedProtocolName = v19->_publishedProtocolName;
    v19->_publishedProtocolName = v22;

    objc_storeStrong(&v19->_peerProtocol, a5);
    v26 = objc_msgSend_copy(v16, v24, v25);
    peerProtocolName = v19->_peerProtocolName;
    v19->_peerProtocolName = v26;

    v30 = objc_msgSend_copy(v17, v28, v29);
    handlerBlock = v19->_handlerBlock;
    v19->_handlerBlock = v30;
  }

  return v19;
}

- (NSString)channelIdentifier
{
  v4 = objc_msgSend_publishedProtocolName(self, a2, v2);
  v8 = objc_msgSend_peerProtocolName(self, v5, v6);
  v9 = @"*";
  if (v4)
  {
    v10 = v4;
  }

  else
  {
    v10 = @"*";
  }

  if (v8)
  {
    v9 = v8;
  }

  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v7, @"%@:%@:%@", @"dtxproxy", v10, v9);

  return v11;
}

- (BOOL)matchesPublishedProtocolName:(id)a3 peerProtocolName:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = objc_msgSend_publishedProtocolName(self, v8, v9);
  isEqualToString = objc_msgSend_isEqualToString_(v10, v11, v7);

  if (isEqualToString)
  {
    v17 = objc_msgSend_peerProtocolName(self, v13, v14);
    if (v6 | v17)
    {
      v19 = objc_msgSend_peerProtocolName(self, v15, v16);
      v18 = objc_msgSend_isEqualToString_(v19, v20, v6);
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

@end