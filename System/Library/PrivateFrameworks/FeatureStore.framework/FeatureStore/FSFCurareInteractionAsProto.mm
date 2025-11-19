@interface FSFCurareInteractionAsProto
- (FSFCurareInteractionAsProto)initWithProto:(id)a3 interactionId:(id)a4 dataVersion:(unsigned int)a5;
- (FSFCurareInteractionAsProto)initWithProto:(id)a3 interactionId:(id)a4 dataVersion:(unsigned int)a5 jsonStr:(id)a6;
@end

@implementation FSFCurareInteractionAsProto

- (FSFCurareInteractionAsProto)initWithProto:(id)a3 interactionId:(id)a4 dataVersion:(unsigned int)a5
{
  v9 = a3;
  v10 = a4;
  if (+[FSFUtils isSupportedPlatform])
  {
    v15.receiver = self;
    v15.super_class = FSFCurareInteractionAsProto;
    v11 = [(FSFCurareInteractionAsProto *)&v15 init];
    v12 = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_interactionId, a4);
      objc_storeStrong(&v12->_content, a3);
      v12->_dataVersion = a5;
    }

    self = v12;
    v13 = self;
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"This method is not implemented for the current platform"];
    v13 = 0;
  }

  return v13;
}

- (FSFCurareInteractionAsProto)initWithProto:(id)a3 interactionId:(id)a4 dataVersion:(unsigned int)a5 jsonStr:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  if (+[FSFUtils isSupportedPlatform])
  {
    v18.receiver = self;
    v18.super_class = FSFCurareInteractionAsProto;
    v14 = [(FSFCurareInteractionAsProto *)&v18 init];
    v15 = v14;
    if (v14)
    {
      objc_storeStrong(&v14->_interactionId, a4);
      objc_storeStrong(&v15->_content, a3);
      v15->_dataVersion = a5;
      objc_storeStrong(&v15->_jsonStr, a6);
    }

    self = v15;
    v16 = self;
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"This method is not implemented for the current platform"];
    v16 = 0;
  }

  return v16;
}

@end