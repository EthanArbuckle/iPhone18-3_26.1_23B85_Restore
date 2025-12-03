@interface NSURL(MobileInstallationAdditions)
- (id)MI_URLByAppendingPathComponents:()MobileInstallationAdditions lastIsDirectory:;
- (id)MI_allAccessURLs;
@end

@implementation NSURL(MobileInstallationAdditions)

- (id)MI_URLByAppendingPathComponents:()MobileInstallationAdditions lastIsDirectory:
{
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = [v6 count];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    do
    {
      if (--v10)
      {
        v12 = 1;
      }

      else
      {
        v12 = a4;
      }

      v13 = [v6 objectAtIndexedSubscript:v11];
      v14 = [selfCopy URLByAppendingPathComponent:v13 isDirectory:v12];

      ++v11;
      selfCopy = v14;
    }

    while (v10);
  }

  else
  {
    v14 = selfCopy;
  }

  v15 = v14;

  objc_autoreleasePoolPop(v7);

  return v15;
}

- (id)MI_allAccessURLs
{
  v2 = objc_opt_new();
  pathComponents = [self pathComponents];
  v4 = [pathComponents mutableCopy];

  while ([v4 count])
  {
    v5 = [MEMORY[0x1E695DFF8] fileURLWithPathComponents:v4];
    [v2 addObject:v5];

    [v4 removeLastObject];
  }

  v6 = [v2 copy];

  return v6;
}

@end