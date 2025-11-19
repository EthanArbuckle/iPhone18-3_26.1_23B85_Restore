@interface FSModuleTask
+ (id)taskWithID:(id)a3 description:(id)a4 progress:(id)a5;
- (FSModuleTask)init;
- (FSModuleTask)initWithID:(id)a3 description:(id)a4 progress:(id)a5;
@end

@implementation FSModuleTask

- (FSModuleTask)init
{
  v3.receiver = self;
  v3.super_class = FSModuleTask;
  result = [(FSModuleTask *)&v3 init];
  if (result)
  {
    result->_wasCanceled = 0;
  }

  return result;
}

- (FSModuleTask)initWithID:(id)a3 description:(id)a4 progress:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(FSModuleTask *)self init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_taskUUID, a3);
    objc_storeStrong(&v13->_taskDescription, a4);
    objc_storeStrong(&v13->_taskProgress, a5);
  }

  return v13;
}

+ (id)taskWithID:(id)a3 description:(id)a4 progress:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithID:v10 description:v9 progress:v8];

  return v11;
}

@end