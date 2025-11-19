@interface GKLoadSystemImageResourceOperation
- (GKLoadSystemImageResourceOperation)initWithSystemImageName:(id)a3;
- (void)main;
@end

@implementation GKLoadSystemImageResourceOperation

- (GKLoadSystemImageResourceOperation)initWithSystemImageName:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = GKLoadSystemImageResourceOperation;
  v5 = [(GKLoadSystemImageResourceOperation *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    systemImageName = v5->_systemImageName;
    v5->_systemImageName = v6;
  }

  return v5;
}

- (void)main
{
  v13[1] = *MEMORY[0x277D85DE8];
  if (([(GKLoadSystemImageResourceOperation *)self isCancelled]& 1) == 0)
  {
    v3 = MEMORY[0x277D755B8];
    v4 = [(GKLoadSystemImageResourceOperation *)self systemImageName];
    v5 = [v3 _systemImageNamed:v4];

    if (v5)
    {
      [(GKLoadResourceOperation *)self didCompleteWithResource:v5 error:0];
    }

    else if (([(GKLoadSystemImageResourceOperation *)self isCancelled]& 1) == 0)
    {
      v6 = MEMORY[0x277CCACA8];
      v7 = [(GKLoadSystemImageResourceOperation *)self systemImageName];
      v8 = [v6 stringWithFormat:@"No system image found for %@", v7];

      v9 = MEMORY[0x277CCA9B8];
      v12 = *MEMORY[0x277CCA450];
      v13[0] = v8;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
      v11 = [v9 errorWithDomain:@"GKLoadSystemImageResourceOperation" code:560557415 userInfo:v10];

      [(GKLoadResourceOperation *)self didCompleteWithResource:0 error:v11];
    }
  }
}

@end