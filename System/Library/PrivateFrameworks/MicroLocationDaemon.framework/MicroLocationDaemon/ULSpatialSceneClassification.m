@interface ULSpatialSceneClassification
+ (id)spatialSceneClassification;
- (id)_init;
- (id)spatialSceneClassificationFutureWithPhoto:(id)a3;
@end

@implementation ULSpatialSceneClassification

- (id)spatialSceneClassificationFutureWithPhoto:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D28870] promise];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __74__ULSpatialSceneClassification_spatialSceneClassificationFutureWithPhoto___block_invoke;
  v13 = &unk_2798D54D0;
  v6 = v4;
  v14 = v6;
  v7 = v5;
  v15 = v7;
  [(ULSpatialSceneClassification *)self runWithPhoto:v6 handler:&v10];
  v8 = [v7 future];

  return v8;
}

void __74__ULSpatialSceneClassification_spatialSceneClassificationFutureWithPhoto___block_invoke(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*(a1 + 32))
  {
    [*(a1 + 40) finishWithResult:v3];
  }

  else
  {
    v4 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277CCA450];
    v9[0] = @"spatialSceneClassificationFutureWithPhoto failed internally";
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    v6 = [v4 errorWithDomain:@"ULSpatialSceneClassification" code:-1 userInfo:v5];

    [*(a1 + 40) finishWithError:v6];
  }

  v7 = *MEMORY[0x277D85DE8];
}

+ (id)spatialSceneClassification
{
  v2 = [[ULSpatialSceneClassification alloc] _init];

  return v2;
}

- (id)_init
{
  v5.receiver = self;
  v5.super_class = ULSpatialSceneClassification;
  v2 = [(ULSpatialSceneClassification *)&v5 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.milod.ULSpatialSceneClassification", 0);
    [(ULSpatialSceneClassification *)v2 setQueue:v3];
  }

  return v2;
}

@end