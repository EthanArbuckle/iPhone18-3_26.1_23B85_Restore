@interface NSURL(IntentsFoundation)
- (uint64_t)if_isContainedByDirectoryAtURL:()IntentsFoundation;
@end

@implementation NSURL(IntentsFoundation)

- (uint64_t)if_isContainedByDirectoryAtURL:()IntentsFoundation
{
  if (!a3)
  {
    return 0;
  }

  v9 = 0;
  v4 = MEMORY[0x277CCAA00];
  v5 = a3;
  v6 = [v4 defaultManager];
  v7 = [v6 getRelationship:&v9 ofDirectoryAtURL:v5 toItemAtURL:a1 error:0];

  if (v9)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

@end