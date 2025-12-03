@interface GDFactObjectRelationship
- (GDFactObjectRelationship)initWithSubentity:(id)subentity;
@end

@implementation GDFactObjectRelationship

- (GDFactObjectRelationship)initWithSubentity:(id)subentity
{
  subentityCopy = subentity;
  v9.receiver = self;
  v9.super_class = GDFactObjectRelationship;
  v6 = [(GDFactObjectRelationship *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_subentity, subentity);
  }

  return v7;
}

@end