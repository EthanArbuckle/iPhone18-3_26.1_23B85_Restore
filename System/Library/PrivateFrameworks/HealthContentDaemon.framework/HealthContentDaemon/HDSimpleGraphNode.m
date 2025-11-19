@interface HDSimpleGraphNode
- (HDSimpleGraphNode)init;
- (id)description;
@end

@implementation HDSimpleGraphNode

- (HDSimpleGraphNode)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (id)description
{
  attributes = self->_attributes;
  if (attributes)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", -[NSArray count](attributes, "count")];
  }

  else
  {
    v4 = @"nil";
  }

  relationships = self->_relationships;
  if (relationships)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", -[NSArray count](relationships, "count")];
  }

  else
  {
    v6 = @"nil";
  }

  v7 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = HDSimpleGraphNode;
  v8 = [(HDSimpleGraphObject *)&v11 description];
  v9 = [v7 stringWithFormat:@"<%@ attributes:%@, relationships:%@>", v8, v4, v6];

  return v9;
}

@end