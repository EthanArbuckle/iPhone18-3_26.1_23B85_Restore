@interface FSFBMStringData
- (FSFBMStringData)initWithContent:(id)a3 dataVersion:(unsigned int)a4;
- (FSFBMStringData)initWithData:(id)a3 dataVersion:(unsigned int)a4;
- (id)content;
@end

@implementation FSFBMStringData

- (FSFBMStringData)initWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v6 = a3;
  if (+[FSFUtils isSupportedPlatform])
  {
    v13.receiver = self;
    v13.super_class = FSFBMStringData;
    v7 = [(FSFBMStringData *)&v13 init];
    v8 = v7;
    if (v7)
    {
      v7->_dataVersion = a4;
      v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v6 encoding:4];
      content = v8->_content;
      v8->_content = v9;
    }

    self = v8;
    v11 = self;
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"This method is not implemented for the current platform"];
    v11 = 0;
  }

  return v11;
}

- (FSFBMStringData)initWithContent:(id)a3 dataVersion:(unsigned int)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = FSFBMStringData;
  v8 = [(FSFBMStringData *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_dataVersion = a4;
    objc_storeStrong(&v8->_content, a3);
  }

  return v9;
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

@end