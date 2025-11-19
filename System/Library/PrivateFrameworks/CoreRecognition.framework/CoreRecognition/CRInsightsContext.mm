@interface CRInsightsContext
- (CRCameraReader)cameraReader;
- (CRInsightsContext)init;
- (CRInsightsContext)initWithContext:(id)a3;
- (id)description;
- (id)valueForKey:(id)a3;
- (void)setValue:(id)a3 forKey:(id)a4;
@end

@implementation CRInsightsContext

- (CRInsightsContext)init
{
  v5.receiver = self;
  v5.super_class = CRInsightsContext;
  v2 = [(CRInsightsContext *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    [(CRInsightsContext *)v2 setInfo:v3];
  }

  return v2;
}

- (CRInsightsContext)initWithContext:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CRInsightsContext;
  v5 = [(CRInsightsContext *)&v11 init];
  if (v5)
  {
    v6 = [v4 cameraReader];
    [(CRInsightsContext *)v5 setCameraReader:v6];

    v7 = MEMORY[0x277CBEB38];
    v8 = [v4 info];
    v9 = [v7 dictionaryWithDictionary:v8];
    [(CRInsightsContext *)v5 setInfo:v9];
  }

  return v5;
}

- (id)valueForKey:(id)a3
{
  v4 = a3;
  v5 = [(CRInsightsContext *)self info];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (void)setValue:(id)a3 forKey:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(CRInsightsContext *)self info];
  v8 = v7;
  if (v9)
  {
    [v7 setObject:v9 forKey:v6];
  }

  else
  {
    [v7 removeObjectForKey:v6];
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(CRInsightsContext *)self cameraReader];
  v5 = [(CRInsightsContext *)self info];
  v6 = [v5 description];
  v7 = [v3 stringWithFormat:@"CRInsightsContext %p\r{\rCamera reader: %p\rKey-value pairs:\r%@\r}", self, v4, v6];

  return v7;
}

- (CRCameraReader)cameraReader
{
  WeakRetained = objc_loadWeakRetained(&self->_cameraReader);

  return WeakRetained;
}

@end