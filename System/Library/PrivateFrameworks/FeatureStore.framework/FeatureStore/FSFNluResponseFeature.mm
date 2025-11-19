@interface FSFNluResponseFeature
- (FSFNluResponseFeature)initWithContent:(id)a3 dataVersion:(unsigned int)a4;
- (FSFNluResponseFeature)initWithContentJson:(id)a3 dataVersion:(unsigned int)a4;
- (FSFNluResponseFeature)initWithData:(id)a3 dataVersion:(unsigned int)a4;
- (id)content;
- (id)interactionId;
- (id)json;
@end

@implementation FSFNluResponseFeature

- (FSFNluResponseFeature)initWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = FSFNluResponseFeature;
  v7 = [(FSFNluResponseFeature *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_dataVersion = a4;
    v9 = [objc_alloc(MEMORY[0x277D5DDB0]) initWithData:v6];
    content = v8->_content;
    v8->_content = v9;
  }

  return v8;
}

- (FSFNluResponseFeature)initWithContent:(id)a3 dataVersion:(unsigned int)a4
{
  v7 = a3;
  if (+[FSFUtils isSupportedPlatform])
  {
    v12.receiver = self;
    v12.super_class = FSFNluResponseFeature;
    v8 = [(FSFNluResponseFeature *)&v12 init];
    v9 = v8;
    if (v8)
    {
      v8->_dataVersion = a4;
      objc_storeStrong(&v8->_content, a3);
    }

    self = v9;
    v10 = self;
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"This method is not implemented for the current platform"];
    v10 = 0;
  }

  return v10;
}

- (FSFNluResponseFeature)initWithContentJson:(id)a3 dataVersion:(unsigned int)a4
{
  v6 = a3;
  if (+[FSFUtils isSupportedPlatform])
  {
    v15.receiver = self;
    v15.super_class = FSFNluResponseFeature;
    v7 = [(FSFNluResponseFeature *)&v15 init];
    v8 = v7;
    if (v7)
    {
      v7->_dataVersion = a4;
      v9 = objc_alloc(MEMORY[0x277D5DDB0]);
      v10 = [v6 dataUsingEncoding:4];
      v11 = [v9 initWithData:v10];
      content = v8->_content;
      v8->_content = v11;
    }

    self = v8;
    v13 = self;
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"This method is not implemented for the current platform"];
    v13 = 0;
  }

  return v13;
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
  v3 = [(SIRINLUEXTERNALCDMNluResponse *)self->_content dictionaryRepresentation];
  v4 = [v2 dataWithJSONObject:v3 options:3 error:0];

  return v4;
}

- (id)interactionId
{
  v2 = [(SIRINLUEXTERNALCDMNluResponse *)self->_content requestId];
  v3 = [v2 idA];

  return v3;
}

@end