@interface FSFCurareInteractionAsJsonStr
- (FSFCurareInteractionAsJsonStr)initWithJsonStr:(id)str interactionId:(id)id dataVersion:(unsigned int)version;
- (id)json;
@end

@implementation FSFCurareInteractionAsJsonStr

- (FSFCurareInteractionAsJsonStr)initWithJsonStr:(id)str interactionId:(id)id dataVersion:(unsigned int)version
{
  strCopy = str;
  idCopy = id;
  if (+[FSFUtils isSupportedPlatform])
  {
    v16.receiver = self;
    v16.super_class = FSFCurareInteractionAsJsonStr;
    v10 = [(FSFCurareInteractionAsJsonStr *)&v16 init];
    v11 = v10;
    if (v10)
    {
      objc_storeStrong(&v10->_interactionId, id);
      v12 = [strCopy dataUsingEncoding:4];
      content = v11->_content;
      v11->_content = v12;

      v11->_dataVersion = version;
    }

    self = v11;
    selfCopy = self;
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"This method is not implemented for the current platform"];
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)json
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:self->_content encoding:4];

  return v2;
}

@end