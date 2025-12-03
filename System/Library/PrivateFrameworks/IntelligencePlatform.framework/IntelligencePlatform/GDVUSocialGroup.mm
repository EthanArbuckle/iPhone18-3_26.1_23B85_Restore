@interface GDVUSocialGroup
- (GDVUSocialGroup)initWithNumberOfMomentNodes:(id)nodes tags:(id)tags;
- (NSNumber)numberOfMomentNodes;
@end

@implementation GDVUSocialGroup

- (GDVUSocialGroup)initWithNumberOfMomentNodes:(id)nodes tags:(id)tags
{
  sub_1ABF21F04();
  sub_1ABF240D4();
  nodesCopy = nodes;
  return GDVUSocialGroup.init(numberOfMomentNodes:tags:)();
}

- (NSNumber)numberOfMomentNodes
{
  selfCopy = self;
  v3 = sub_1ABECE2BC();

  return v3;
}

@end