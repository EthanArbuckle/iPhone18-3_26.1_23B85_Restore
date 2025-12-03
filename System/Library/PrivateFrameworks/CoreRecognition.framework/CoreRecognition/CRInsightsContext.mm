@interface CRInsightsContext
- (CRCameraReader)cameraReader;
- (CRInsightsContext)init;
- (CRInsightsContext)initWithContext:(id)context;
- (id)description;
- (id)valueForKey:(id)key;
- (void)setValue:(id)value forKey:(id)key;
@end

@implementation CRInsightsContext

- (CRInsightsContext)init
{
  v5.receiver = self;
  v5.super_class = CRInsightsContext;
  v2 = [(CRInsightsContext *)&v5 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [(CRInsightsContext *)v2 setInfo:dictionary];
  }

  return v2;
}

- (CRInsightsContext)initWithContext:(id)context
{
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = CRInsightsContext;
  v5 = [(CRInsightsContext *)&v11 init];
  if (v5)
  {
    cameraReader = [contextCopy cameraReader];
    [(CRInsightsContext *)v5 setCameraReader:cameraReader];

    v7 = MEMORY[0x277CBEB38];
    info = [contextCopy info];
    v9 = [v7 dictionaryWithDictionary:info];
    [(CRInsightsContext *)v5 setInfo:v9];
  }

  return v5;
}

- (id)valueForKey:(id)key
{
  keyCopy = key;
  info = [(CRInsightsContext *)self info];
  v6 = [info objectForKey:keyCopy];

  return v6;
}

- (void)setValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  info = [(CRInsightsContext *)self info];
  v8 = info;
  if (valueCopy)
  {
    [info setObject:valueCopy forKey:keyCopy];
  }

  else
  {
    [info removeObjectForKey:keyCopy];
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  cameraReader = [(CRInsightsContext *)self cameraReader];
  info = [(CRInsightsContext *)self info];
  v6 = [info description];
  v7 = [v3 stringWithFormat:@"CRInsightsContext %p\r{\rCamera reader: %p\rKey-value pairs:\r%@\r}", self, cameraReader, v6];

  return v7;
}

- (CRCameraReader)cameraReader
{
  WeakRetained = objc_loadWeakRetained(&self->_cameraReader);

  return WeakRetained;
}

@end