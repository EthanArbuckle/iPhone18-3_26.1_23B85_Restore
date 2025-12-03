@interface FSFCurareInteractionAsDict
- (FSFCurareInteractionAsDict)initWithContent:(id)content interactionId:(id)id dataVersion:(unsigned int)version;
- (FSFCurareInteractionAsDict)initWithData:(id)data dataVersion:(unsigned int)version interactionId:(id)id;
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

- (FSFCurareInteractionAsDict)initWithContent:(id)content interactionId:(id)id dataVersion:(unsigned int)version
{
  contentCopy = content;
  idCopy = id;
  if (+[FSFUtils isSupportedPlatform])
  {
    v15.receiver = self;
    v15.super_class = FSFCurareInteractionAsDict;
    v11 = [(FSFCurareInteractionAsDict *)&v15 init];
    v12 = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_interactionId, id);
      objc_storeStrong(&v12->_content, content);
      v12->_dataVersion = version;
    }

    self = v12;
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
  serialize = [(FSFCurareInteractionAsDict *)self serialize];
  if (serialize)
  {
    v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:serialize encoding:4];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FSFCurareInteractionAsDict)initWithData:(id)data dataVersion:(unsigned int)version interactionId:(id)id
{
  dataCopy = data;
  idCopy = id;
  v17.receiver = self;
  v17.super_class = FSFCurareInteractionAsDict;
  v10 = [(FSFCurareInteractionAsDict *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_dataVersion = version;
    v16 = 0;
    v12 = [MEMORY[0x277CCAAA0] JSONObjectWithData:dataCopy options:0 error:&v16];
    v13 = v16;
    content = v11->_content;
    v11->_content = v12;

    if (v13)
    {
      NSLog(&cfstr_ErrorWhileCrea.isa, v13);
    }

    objc_storeStrong(&v11->_interactionId, id);
  }

  return v11;
}

@end