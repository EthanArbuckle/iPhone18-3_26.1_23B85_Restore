@interface FSFCurareInteractionAsProto
- (FSFCurareInteractionAsProto)initWithProto:(id)proto interactionId:(id)id dataVersion:(unsigned int)version;
- (FSFCurareInteractionAsProto)initWithProto:(id)proto interactionId:(id)id dataVersion:(unsigned int)version jsonStr:(id)str;
@end

@implementation FSFCurareInteractionAsProto

- (FSFCurareInteractionAsProto)initWithProto:(id)proto interactionId:(id)id dataVersion:(unsigned int)version
{
  protoCopy = proto;
  idCopy = id;
  if (+[FSFUtils isSupportedPlatform])
  {
    v15.receiver = self;
    v15.super_class = FSFCurareInteractionAsProto;
    v11 = [(FSFCurareInteractionAsProto *)&v15 init];
    v12 = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_interactionId, id);
      objc_storeStrong(&v12->_content, proto);
      v12->_dataVersion = version;
    }

    self = v12;
    selfCopy = self;
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"This method is not implemented for the current platform"];
    selfCopy = 0;
  }

  return selfCopy;
}

- (FSFCurareInteractionAsProto)initWithProto:(id)proto interactionId:(id)id dataVersion:(unsigned int)version jsonStr:(id)str
{
  protoCopy = proto;
  idCopy = id;
  strCopy = str;
  if (+[FSFUtils isSupportedPlatform])
  {
    v18.receiver = self;
    v18.super_class = FSFCurareInteractionAsProto;
    v14 = [(FSFCurareInteractionAsProto *)&v18 init];
    v15 = v14;
    if (v14)
    {
      objc_storeStrong(&v14->_interactionId, id);
      objc_storeStrong(&v15->_content, proto);
      v15->_dataVersion = version;
      objc_storeStrong(&v15->_jsonStr, str);
    }

    self = v15;
    selfCopy = self;
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"This method is not implemented for the current platform"];
    selfCopy = 0;
  }

  return selfCopy;
}

@end