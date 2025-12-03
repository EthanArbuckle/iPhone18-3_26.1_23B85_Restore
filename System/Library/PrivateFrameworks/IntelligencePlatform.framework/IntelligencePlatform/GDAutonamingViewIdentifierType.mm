@interface GDAutonamingViewIdentifierType
+ (id)phPerson;
- (GDAutonamingViewIdentifierType)initWithInner:(id)inner;
@end

@implementation GDAutonamingViewIdentifierType

- (GDAutonamingViewIdentifierType)initWithInner:(id)inner
{
  innerCopy = inner;
  v9.receiver = self;
  v9.super_class = GDAutonamingViewIdentifierType;
  v6 = [(GDAutonamingViewIdentifierType *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_inner, inner);
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