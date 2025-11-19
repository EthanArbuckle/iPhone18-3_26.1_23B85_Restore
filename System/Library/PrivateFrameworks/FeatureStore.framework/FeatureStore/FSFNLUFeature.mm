@interface FSFNLUFeature
- (FSFNLUFeature)initWithContent:(id)a3 dataVersion:(unsigned int)a4;
- (FSFNLUFeature)initWithData:(id)a3 dataVersion:(unsigned int)a4;
- (id)content;
- (id)interactionId;
@end

@implementation FSFNLUFeature

- (FSFNLUFeature)initWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = FSFNLUFeature;
  v7 = [(FSFNLUFeature *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_dataVersion = a4;
    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v6 encoding:4];
    content = v8->_content;
    v8->_content = v9;
  }

  return v8;
}

- (FSFNLUFeature)initWithContent:(id)a3 dataVersion:(unsigned int)a4
{
  v7 = a3;
  if (+[FSFUtils isSupportedPlatform])
  {
    v12.receiver = self;
    v12.super_class = FSFNLUFeature;
    v8 = [(FSFNLUFeature *)&v12 init];
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

- (id)interactionId
{
  v2 = [(NSString *)self->_content dataUsingEncoding:4];
  v3 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v2 options:0 error:0];
  v4 = [v3 objectForKey:@"interactionId"];

  return v4;
}

@end