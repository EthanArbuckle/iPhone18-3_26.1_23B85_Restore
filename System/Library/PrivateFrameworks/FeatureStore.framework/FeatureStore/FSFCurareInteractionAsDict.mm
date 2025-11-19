@interface FSFCurareInteractionAsDict
- (FSFCurareInteractionAsDict)initWithContent:(id)a3 interactionId:(id)a4 dataVersion:(unsigned int)a5;
- (FSFCurareInteractionAsDict)initWithData:(id)a3 dataVersion:(unsigned int)a4 interactionId:(id)a5;
- (id)json;
- (id)serialize;
@end

@implementation FSFCurareInteractionAsDict

- (id)serialize
{
  content = self->_content;
  v7 = 0;
  v3 = [MEMORY[0x277CCAAA0] dataWithJSONObject:content options:2 error:&v7];
  v4 = v7;
  v5 = v4;
  if (v4)
  {
    NSLog(&cfstr_ErrorWhileSeri.isa, v4);
  }

  return v3;
}

- (FSFCurareInteractionAsDict)initWithContent:(id)a3 interactionId:(id)a4 dataVersion:(unsigned int)a5
{
  v9 = a3;
  v10 = a4;
  if (+[FSFUtils isSupportedPlatform])
  {
    v15.receiver = self;
    v15.super_class = FSFCurareInteractionAsDict;
    v11 = [(FSFCurareInteractionAsDict *)&v15 init];
    v12 = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_interactionId, a4);
      objc_storeStrong(&v12->_content, a3);
      v12->_dataVersion = a5;
    }

    self = v12;
    v13 = self;
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"This method is not implemented for the current platform"];
    v13 = 0;
  }

  return v13;
}

- (id)json
{
  v2 = [(FSFCurareInteractionAsDict *)self serialize];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v2 encoding:4];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FSFCurareInteractionAsDict)initWithData:(id)a3 dataVersion:(unsigned int)a4 interactionId:(id)a5
{
  v8 = a3;
  v9 = a5;
  v17.receiver = self;
  v17.super_class = FSFCurareInteractionAsDict;
  v10 = [(FSFCurareInteractionAsDict *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_dataVersion = a4;
    v16 = 0;
    v12 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v8 options:0 error:&v16];
    v13 = v16;
    content = v11->_content;
    v11->_content = v12;

    if (v13)
    {
      NSLog(&cfstr_ErrorWhileCrea.isa, v13);
    }

    objc_storeStrong(&v11->_interactionId, a5);
  }

  return v11;
}

@end