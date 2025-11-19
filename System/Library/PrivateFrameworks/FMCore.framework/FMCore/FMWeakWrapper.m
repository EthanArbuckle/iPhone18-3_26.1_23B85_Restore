@interface FMWeakWrapper
- (BOOL)isEqual:(id)a3;
- (FMWeakWrapper)init;
- (FMWeakWrapper)initWithObject:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)object;
@end

@implementation FMWeakWrapper

- (FMWeakWrapper)init
{
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Use initWithObject:"];

  return 0;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(FMWeakWrapper *)self object];
  v5 = [objc_alloc(objc_opt_class()) initWithObject:v4];
  [v5 setObject:v4];
  [v5 setObjectHash:{-[FMWeakWrapper objectHash](self, "objectHash")}];

  return v5;
}

- (FMWeakWrapper)initWithObject:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = FMWeakWrapper;
  v5 = [(FMWeakWrapper *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(FMWeakWrapper *)v5 setObject:v4];
    -[FMWeakWrapper setObjectHash:](v6, "setObjectHash:", [v4 hash]);
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [(FMWeakWrapper *)self objectHash];
  v6 = [v4 objectHash];

  return v5 == v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(FMWeakWrapper *)self object];
  v6 = [v3 stringWithFormat:@"<%@ %p> [%p]", v4, self, v5];

  return v6;
}

- (id)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

@end