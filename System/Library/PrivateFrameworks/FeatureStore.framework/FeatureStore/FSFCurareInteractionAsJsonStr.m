@interface FSFCurareInteractionAsJsonStr
- (FSFCurareInteractionAsJsonStr)initWithJsonStr:(id)a3 interactionId:(id)a4 dataVersion:(unsigned int)a5;
- (id)json;
@end

@implementation FSFCurareInteractionAsJsonStr

- (FSFCurareInteractionAsJsonStr)initWithJsonStr:(id)a3 interactionId:(id)a4 dataVersion:(unsigned int)a5
{
  v8 = a3;
  v9 = a4;
  if (+[FSFUtils isSupportedPlatform])
  {
    v16.receiver = self;
    v16.super_class = FSFCurareInteractionAsJsonStr;
    v10 = [(FSFCurareInteractionAsJsonStr *)&v16 init];
    v11 = v10;
    if (v10)
    {
      objc_storeStrong(&v10->_interactionId, a4);
      v12 = [v8 dataUsingEncoding:4];
      content = v11->_content;
      v11->_content = v12;

      v11->_dataVersion = a5;
    }

    self = v11;
    v14 = self;
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"This method is not implemented for the current platform"];
    v14 = 0;
  }

  return v14;
}

- (id)json
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:self->_content encoding:4];

  return v2;
}

@end