@interface FSFNluUserParseFeature
- (FSFNluUserParseFeature)initWithContent:(id)a3 dataVersion:(unsigned int)a4;
- (FSFNluUserParseFeature)initWithContentJson:(id)a3 dataVersion:(unsigned int)a4;
- (FSFNluUserParseFeature)initWithData:(id)a3 dataVersion:(unsigned int)a4;
- (id)content;
- (id)json;
@end

@implementation FSFNluUserParseFeature

- (FSFNluUserParseFeature)initWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = FSFNluUserParseFeature;
  v7 = [(FSFNluUserParseFeature *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_dataVersion = a4;
    v9 = [objc_alloc(MEMORY[0x277D5DDE0]) initWithData:v6];
    content = v8->_content;
    v8->_content = v9;
  }

  return v8;
}

- (FSFNluUserParseFeature)initWithContent:(id)a3 dataVersion:(unsigned int)a4
{
  v7 = a3;
  if (+[FSFUtils isSupportedPlatform])
  {
    v12.receiver = self;
    v12.super_class = FSFNluUserParseFeature;
    v8 = [(FSFNluUserParseFeature *)&v12 init];
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

- (FSFNluUserParseFeature)initWithContentJson:(id)a3 dataVersion:(unsigned int)a4
{
  v6 = a3;
  if (+[FSFUtils isSupportedPlatform])
  {
    v15.receiver = self;
    v15.super_class = FSFNluUserParseFeature;
    v7 = [(FSFNluUserParseFeature *)&v15 init];
    v8 = v7;
    if (v7)
    {
      v7->_dataVersion = a4;
      v9 = objc_alloc(MEMORY[0x277D5DDE0]);
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
  v3 = [(SIRINLUEXTERNALUserParse *)self->_content dictionaryRepresentation];
  v4 = [v2 dataWithJSONObject:v3 options:3 error:0];

  return v4;
}

@end