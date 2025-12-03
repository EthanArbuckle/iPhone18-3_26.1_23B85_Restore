@interface _BMLibraryAndInternalLibraryNode
+ (id)sublibraries;
+ (id)validKeyPaths;
@end

@implementation _BMLibraryAndInternalLibraryNode

+ (id)sublibraries
{
  v2 = objc_opt_new();
  v3 = BiomeLibraryNodeBridge();
  v4 = v3;
  if (v3)
  {
    sublibraries = [v3 sublibraries];
    [v2 addObjectsFromArray:sublibraries];
  }

  v6 = BiomeLibraryInternalNodeBridge();
  v7 = v6;
  if (v6)
  {
    sublibraries2 = [v6 sublibraries];
    [v2 addObjectsFromArray:sublibraries2];
  }

  return v2;
}

+ (id)validKeyPaths
{
  v2 = objc_opt_new();

  return v2;
}

@end