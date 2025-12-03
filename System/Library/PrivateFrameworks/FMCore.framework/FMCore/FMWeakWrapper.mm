@interface FMWeakWrapper
- (BOOL)isEqual:(id)equal;
- (FMWeakWrapper)init;
- (FMWeakWrapper)initWithObject:(id)object;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)object;
@end

@implementation FMWeakWrapper

- (FMWeakWrapper)init
{
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Use initWithObject:"];

  return 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  object = [(FMWeakWrapper *)self object];
  v5 = [objc_alloc(objc_opt_class()) initWithObject:object];
  [v5 setObject:object];
  [v5 setObjectHash:{-[FMWeakWrapper objectHash](self, "objectHash")}];

  return v5;
}

- (FMWeakWrapper)initWithObject:(id)object
{
  objectCopy = object;
  v8.receiver = self;
  v8.super_class = FMWeakWrapper;
  v5 = [(FMWeakWrapper *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(FMWeakWrapper *)v5 setObject:objectCopy];
    -[FMWeakWrapper setObjectHash:](v6, "setObjectHash:", [objectCopy hash]);
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objectHash = [(FMWeakWrapper *)self objectHash];
  objectHash2 = [equalCopy objectHash];

  return objectHash == objectHash2;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  object = [(FMWeakWrapper *)self object];
  v6 = [v3 stringWithFormat:@"<%@ %p> [%p]", v4, self, object];

  return v6;
}

- (id)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

@end