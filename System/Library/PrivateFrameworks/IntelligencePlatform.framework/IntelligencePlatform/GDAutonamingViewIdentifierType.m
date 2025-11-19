@interface GDAutonamingViewIdentifierType
+ (id)phPerson;
- (GDAutonamingViewIdentifierType)initWithInner:(id)a3;
@end

@implementation GDAutonamingViewIdentifierType

- (GDAutonamingViewIdentifierType)initWithInner:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = GDAutonamingViewIdentifierType;
  v6 = [(GDAutonamingViewIdentifierType *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_inner, a3);
  }

  return v7;
}

+ (id)phPerson
{
  v2 = [GDAutonamingViewIdentifierType alloc];
  v3 = +[GDAutonamingViewIdentifierTypeInner phPerson];
  v4 = [(GDAutonamingViewIdentifierType *)v2 initWithInner:v3];

  return v4;
}

@end