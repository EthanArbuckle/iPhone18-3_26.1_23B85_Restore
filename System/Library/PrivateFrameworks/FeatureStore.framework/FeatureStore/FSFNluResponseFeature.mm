@interface FSFNluResponseFeature
- (FSFNluResponseFeature)initWithContent:(id)content dataVersion:(unsigned int)version;
- (FSFNluResponseFeature)initWithContentJson:(id)json dataVersion:(unsigned int)version;
- (FSFNluResponseFeature)initWithData:(id)data dataVersion:(unsigned int)version;
- (id)content;
- (id)interactionId;
- (id)json;
@end

@implementation FSFNluResponseFeature

- (FSFNluResponseFeature)initWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  v12.receiver = self;
  v12.super_class = FSFNluResponseFeature;
  v7 = [(FSFNluResponseFeature *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_dataVersion = version;
    v9 = [objc_alloc(MEMORY[0x277D5DDB0]) initWithData:dataCopy];
    content = v8->_content;
    v8->_content = v9;
  }

  return v8;
}

- (FSFNluResponseFeature)initWithContent:(id)content dataVersion:(unsigned int)version
{
  contentCopy = content;
  if (+[FSFUtils isSupportedPlatform])
  {
    v12.receiver = self;
    v12.super_class = FSFNluResponseFeature;
    v8 = [(FSFNluResponseFeature *)&v12 init];
    v9 = v8;
    if (v8)
    {
      v8->_dataVersion = version;
      objc_storeStrong(&v8->_content, content);
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"This method is not implemented for the current platform"];
    selfCopy = 0;
  }

  return selfCopy;
}

- (FSFNluResponseFeature)initWithContentJson:(id)json dataVersion:(unsigned int)version
{
  jsonCopy = json;
  if (+[FSFUtils isSupportedPlatform])
  {
    v15.receiver = self;
    v15.super_class = FSFNluResponseFeature;
    v7 = [(FSFNluResponseFeature *)&v15 init];
    v8 = v7;
    if (v7)
    {
      v7->_dataVersion = version;
      v9 = objc_alloc(MEMORY[0x277D5DDB0]);
      v10 = [jsonCopy dataUsingEncoding:4];
      v11 = [v9 initWithData:v10];
      content = v8->_content;
      v8->_content = v11;
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"This method is not implemented for the current platform"];
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)content
{
  if (+[FSFUtils isSupportedPlatform])
  {
    v3 = self->_content;
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"This method is not implemented for the current platform"];
    v3 = 0;
  }

  return v3;
}

- (id)json
{
  v2 = MEMORY[0x277CCAAA0];
  dictionaryRepresentation = [(SIRINLUEXTERNALCDMNluResponse *)self->_content dictionaryRepresentation];
  v4 = [v2 dataWithJSONObject:dictionaryRepresentation options:3 error:0];

  return v4;
}

- (id)interactionId
{
  requestId = [(SIRINLUEXTERNALCDMNluResponse *)self->_content requestId];
  v3 = [requestId idA];

  return v3;
}

@end