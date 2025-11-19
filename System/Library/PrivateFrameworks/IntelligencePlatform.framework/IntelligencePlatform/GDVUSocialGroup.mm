@interface GDVUSocialGroup
- (GDVUSocialGroup)initWithNumberOfMomentNodes:(id)a3 tags:(id)a4;
- (NSNumber)numberOfMomentNodes;
@end

@implementation GDVUSocialGroup

- (GDVUSocialGroup)initWithNumberOfMomentNodes:(id)a3 tags:(id)a4
{
  sub_1ABF21F04();
  sub_1ABF240D4();
  v5 = a3;
  return GDVUSocialGroup.init(numberOfMomentNodes:tags:)();
}

- (NSNumber)numberOfMomentNodes
{
  v2 = self;
  v3 = sub_1ABECE2BC();

  return v3;
}

@end