@interface FSFCurareEvaluationFeature
- (FSFCurareEvaluationFeature)initWithContent:(id)content dataVersion:(unsigned int)version;
- (FSFCurareEvaluationFeature)initWithContentJson:(id)json dataVersion:(unsigned int)version;
- (FSFCurareEvaluationFeature)initWithData:(id)data dataVersion:(unsigned int)version;
- (id)content;
@end

@implementation FSFCurareEvaluationFeature

- (FSFCurareEvaluationFeature)initWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  v12.receiver = self;
  v12.super_class = FSFCurareEvaluationFeature;
  v7 = [(FSFCurareEvaluationFeature *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_dataVersion = version;
    v9 = [MEMORY[0x277CCAAA0] JSONObjectWithData:dataCopy options:0 error:0];
    content = v8->_content;
    v8->_content = v9;
  }

  return v8;
}

- (FSFCurareEvaluationFeature)initWithContent:(id)content dataVersion:(unsigned int)version
{
  contentCopy = content;
  if (+[FSFUtils isSupportedPlatform])
  {
    v12.receiver = self;
    v12.super_class = FSFCurareEvaluationFeature;
    v8 = [(FSFCurareEvaluationFeature *)&v12 init];
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

- (FSFCurareEvaluationFeature)initWithContentJson:(id)json dataVersion:(unsigned int)version
{
  jsonCopy = json;
  if (+[FSFUtils isSupportedPlatform])
  {
    v15.receiver = self;
    v15.super_class = FSFCurareEvaluationFeature;
    v7 = [(FSFCurareEvaluationFeature *)&v15 init];
    v8 = v7;
    if (v7)
    {
      v7->_dataVersion = version;
      v9 = MEMORY[0x277CCAAA0];
      v10 = [jsonCopy dataUsingEncoding:4];
      v11 = [v9 JSONObjectWithData:v10 options:0 error:0];
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

@end