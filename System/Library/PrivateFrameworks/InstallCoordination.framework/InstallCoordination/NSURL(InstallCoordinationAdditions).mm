@interface NSURL(InstallCoordinationAdditions)
- (id)urlByAppendingPathComponents:()InstallCoordinationAdditions lastIsDirectory:;
@end

@implementation NSURL(InstallCoordinationAdditions)

- (id)urlByAppendingPathComponents:()InstallCoordinationAdditions lastIsDirectory:
{
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = [v6 count];
  if (v9)
  {
    v10 = v9 - 1;
    if (v9 == 1)
    {
      v13 = selfCopy;
    }

    else
    {
      v11 = 0;
      do
      {
        v12 = [v6 objectAtIndexedSubscript:v11];
        v13 = [selfCopy URLByAppendingPathComponent:v12 isDirectory:1];

        ++v11;
        selfCopy = v13;
      }

      while (v10 != v11);
    }

    v14 = [v6 objectAtIndexedSubscript:v10];
    selfCopy = [v13 URLByAppendingPathComponent:v14 isDirectory:a4];
  }

  v15 = selfCopy;

  objc_autoreleasePoolPop(v7);

  return v15;
}

@end