@interface FSModuleTask
+ (id)taskWithID:(id)d description:(id)description progress:(id)progress;
- (FSModuleTask)init;
- (FSModuleTask)initWithID:(id)d description:(id)description progress:(id)progress;
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

- (FSModuleTask)initWithID:(id)d description:(id)description progress:(id)progress
{
  dCopy = d;
  descriptionCopy = description;
  progressCopy = progress;
  v12 = [(FSModuleTask *)self init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_taskUUID, d);
    objc_storeStrong(&v13->_taskDescription, description);
    objc_storeStrong(&v13->_taskProgress, progress);
  }

  return v13;
}

+ (id)taskWithID:(id)d description:(id)description progress:(id)progress
{
  progressCopy = progress;
  descriptionCopy = description;
  dCopy = d;
  v11 = [[self alloc] initWithID:dCopy description:descriptionCopy progress:progressCopy];

  return v11;
}

@end