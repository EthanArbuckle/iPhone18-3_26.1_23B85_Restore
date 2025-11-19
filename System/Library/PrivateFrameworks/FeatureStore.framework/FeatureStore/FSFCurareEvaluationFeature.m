@interface FSFCurareEvaluationFeature
- (FSFCurareEvaluationFeature)initWithContent:(id)a3 dataVersion:(unsigned int)a4;
- (FSFCurareEvaluationFeature)initWithContentJson:(id)a3 dataVersion:(unsigned int)a4;
- (FSFCurareEvaluationFeature)initWithData:(id)a3 dataVersion:(unsigned int)a4;
- (id)content;
@end

@implementation FSFCurareEvaluationFeature

- (FSFCurareEvaluationFeature)initWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = FSFCurareEvaluationFeature;
  v7 = [(FSFCurareEvaluationFeature *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_dataVersion = a4;
    v9 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v6 options:0 error:0];
    content = v8->_content;
    v8->_content = v9;
  }

  return v8;
}

- (FSFCurareEvaluationFeature)initWithContent:(id)a3 dataVersion:(unsigned int)a4
{
  v7 = a3;
  if (+[FSFUtils isSupportedPlatform])
  {
    v12.receiver = self;
    v12.super_class = FSFCurareEvaluationFeature;
    v8 = [(FSFCurareEvaluationFeature *)&v12 init];
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

- (FSFCurareEvaluationFeature)initWithContentJson:(id)a3 dataVersion:(unsigned int)a4
{
  v6 = a3;
  if (+[FSFUtils isSupportedPlatform])
  {
    v15.receiver = self;
    v15.super_class = FSFCurareEvaluationFeature;
    v7 = [(FSFCurareEvaluationFeature *)&v15 init];
    v8 = v7;
    if (v7)
    {
      v7->_dataVersion = a4;
      v9 = MEMORY[0x277CCAAA0];
      v10 = [v6 dataUsingEncoding:4];
      v11 = [v9 JSONObjectWithData:v10 options:0 error:0];
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

@end