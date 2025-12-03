@interface DTXProxyRequestHandler
- (BOOL)matchesPublishedProtocolName:(id)name peerProtocolName:(id)protocolName;
- (DTXProxyRequestHandler)initWithPublishedProtocol:(id)protocol publishedProtocolName:(id)name peerProtocol:(id)peerProtocol peerProtocolName:(id)protocolName handlerBlock:(id)block;
- (NSString)channelIdentifier;
@end

@implementation DTXProxyRequestHandler

- (DTXProxyRequestHandler)initWithPublishedProtocol:(id)protocol publishedProtocolName:(id)name peerProtocol:(id)peerProtocol peerProtocolName:(id)protocolName handlerBlock:(id)block
{
  protocolCopy = protocol;
  nameCopy = name;
  peerProtocolCopy = peerProtocol;
  protocolNameCopy = protocolName;
  blockCopy = block;
  if (protocolCopy)
  {
    if (nameCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_247F59B84();
    if (nameCopy)
    {
      goto LABEL_3;
    }
  }

  sub_247F59BF8();
LABEL_3:
  if ((peerProtocolCopy == 0) == (protocolNameCopy == 0))
  {
    if (blockCopy)
    {
      goto LABEL_5;
    }
  }

  else
  {
    sub_247F59C6C();
    if (blockCopy)
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
    objc_storeStrong(&v18->_publishedProtocol, protocol);
    v22 = objc_msgSend_copy(nameCopy, v20, v21);
    publishedProtocolName = v19->_publishedProtocolName;
    v19->_publishedProtocolName = v22;

    objc_storeStrong(&v19->_peerProtocol, peerProtocol);
    v26 = objc_msgSend_copy(protocolNameCopy, v24, v25);
    peerProtocolName = v19->_peerProtocolName;
    v19->_peerProtocolName = v26;

    v30 = objc_msgSend_copy(blockCopy, v28, v29);
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

- (BOOL)matchesPublishedProtocolName:(id)name peerProtocolName:(id)protocolName
{
  protocolNameCopy = protocolName;
  nameCopy = name;
  v10 = objc_msgSend_publishedProtocolName(self, v8, v9);
  isEqualToString = objc_msgSend_isEqualToString_(v10, v11, nameCopy);

  if (isEqualToString)
  {
    v17 = objc_msgSend_peerProtocolName(self, v13, v14);
    if (protocolNameCopy | v17)
    {
      v19 = objc_msgSend_peerProtocolName(self, v15, v16);
      v18 = objc_msgSend_isEqualToString_(v19, v20, protocolNameCopy);
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