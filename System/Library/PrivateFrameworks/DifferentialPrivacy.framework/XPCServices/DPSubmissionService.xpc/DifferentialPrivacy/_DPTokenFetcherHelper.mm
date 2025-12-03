@interface _DPTokenFetcherHelper
+ (id)filesInDirectory:(id)directory withPrefix:(id)prefix;
@end

@implementation _DPTokenFetcherHelper

+ (id)filesInDirectory:(id)directory withPrefix:(id)prefix
{
  directoryCopy = directory;
  prefixCopy = prefix;
  v7 = [&__NSArray0__struct mutableCopy];
  v8 = +[NSFileManager defaultManager];
  v9 = [v8 enumeratorAtPath:directoryCopy];
  nextObject = [v9 nextObject];
  if (nextObject)
  {
    v11 = nextObject;
    do
    {
      if (!prefixCopy || [v11 hasPrefix:prefixCopy])
      {
        v12 = [directoryCopy stringByAppendingPathComponent:v11];
        v16 = 0;
        if ([v8 fileExistsAtPath:v12 isDirectory:&v16])
        {
          if (v16 == 1)
          {
            [v9 skipDescendents];
          }

          else
          {
            v13 = [NSURL fileURLWithPath:v12];
            [v7 addObject:v13];
          }
        }
      }

      nextObject2 = [v9 nextObject];

      v11 = nextObject2;
    }

    while (nextObject2);
  }

  return v7;
}

@end