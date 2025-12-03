@interface FSFBMStringData
- (FSFBMStringData)initWithContent:(id)content dataVersion:(unsigned int)version;
- (FSFBMStringData)initWithData:(id)data dataVersion:(unsigned int)version;
- (id)content;
@end

@implementation FSFBMStringData

- (FSFBMStringData)initWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  if (+[FSFUtils isSupportedPlatform])
  {
    v13.receiver = self;
    v13.super_class = FSFBMStringData;
    v7 = [(FSFBMStringData *)&v13 init];
    v8 = v7;
    if (v7)
    {
      v7->_dataVersion = version;
      v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:dataCopy encoding:4];
      content = v8->_content;
      v8->_content = v9;
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

- (FSFBMStringData)initWithContent:(id)content dataVersion:(unsigned int)version
{
  contentCopy = content;
  v11.receiver = self;
  v11.super_class = FSFBMStringData;
  v8 = [(FSFBMStringData *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_dataVersion = version;
    objc_storeStrong(&v8->_content, content);
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