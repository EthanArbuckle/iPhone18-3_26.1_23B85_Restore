@interface HKCorrelation(WDExtensions)
- (void)deleteObjectWithHealthStore:()WDExtensions options:completion:;
@end

@implementation HKCorrelation(WDExtensions)

- (void)deleteObjectWithHealthStore:()WDExtensions options:completion:
{
  v8 = a5;
  v9 = a3;
  objects = [self objects];
  allObjects = [objects allObjects];
  v12 = [allObjects arrayByAddingObject:self];

  [v9 _deleteObjects:v12 options:a4 completion:v8];
}

@end