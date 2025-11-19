@interface _DPTokenFetcherHelper
+ (id)filesInDirectory:(id)a3 withPrefix:(id)a4;
@end

@implementation _DPTokenFetcherHelper

+ (id)filesInDirectory:(id)a3 withPrefix:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [&__NSArray0__struct mutableCopy];
  v8 = +[NSFileManager defaultManager];
  v9 = [v8 enumeratorAtPath:v5];
  v10 = [v9 nextObject];
  if (v10)
  {
    v11 = v10;
    do
    {
      if (!v6 || [v11 hasPrefix:v6])
      {
        v12 = [v5 stringByAppendingPathComponent:v11];
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

      v14 = [v9 nextObject];

      v11 = v14;
    }

    while (v14);
  }

  return v7;
}

@end