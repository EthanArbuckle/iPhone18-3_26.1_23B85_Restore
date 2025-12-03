@interface NSFileManager
- (void)mf_enumerateAtPath:(id)path withBlock:(id)block;
@end

@implementation NSFileManager

- (void)mf_enumerateAtPath:(id)path withBlock:(id)block
{
  pathCopy = path;
  blockCopy = block;
  if (!blockCopy)
  {
    v15 = +[NSAssertionHandler currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"MFDiskCacheUtilities.m" lineNumber:64 description:{@"Invalid parameter not satisfying: %@", @"block"}];
  }

  v16 = 0;
  v9 = [(NSFileManager *)self enumeratorAtPath:pathCopy];
  v10 = 0;
  do
  {
    nextObject = [v9 nextObject];

    if (!nextObject)
    {
      break;
    }

    v12 = [pathCopy stringByAppendingPathComponent:nextObject];
    v13 = [(NSFileManager *)self attributesOfItemAtPath:v12 error:0];
    blockCopy[2](blockCopy, v12, v13, &v16);
    v14 = v16;

    v10 = nextObject;
  }

  while ((v14 & 1) == 0);
}

@end