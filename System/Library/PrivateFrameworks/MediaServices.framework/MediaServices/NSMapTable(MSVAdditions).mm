@interface NSMapTable(MSVAdditions)
+ (id)msvIndexMapTableWithCapacity:()MSVAdditions;
@end

@implementation NSMapTable(MSVAdditions)

+ (id)msvIndexMapTableWithCapacity:()MSVAdditions
{
  v3 = [[self alloc] initWithKeyOptions:512 valueOptions:1282 capacity:a3];

  return v3;
}

@end