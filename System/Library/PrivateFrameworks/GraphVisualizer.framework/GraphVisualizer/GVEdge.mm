@interface GVEdge
- (GVEdge)initWithFromNode:(id)node to:(id)to reversed:(BOOL)reversed;
- (id)description;
- (void)reverse;
- (void)unreverse;
@end

@implementation GVEdge

- (GVEdge)initWithFromNode:(id)node to:(id)to reversed:(BOOL)reversed
{
  v9.receiver = self;
  v9.super_class = GVEdge;
  result = [(GVEdge *)&v9 init];
  if (result)
  {
    result->from = node;
    result->to = to;
    result->reversed = reversed;
  }

  return result;
}

- (void)reverse
{
  v3 = self->from;
  v4 = self->to;
  self->from = v4;
  self->to = v3;
  self->reversed ^= 1u;
}

- (void)unreverse
{
  if (self->reversed)
  {
    [(GVEdge *)self reverse];
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = GVEdge;
  v4 = [(GVEdge *)&v7 description];
  if (self->reversed)
  {
    v5 = "<-";
  }

  else
  {
    v5 = "->";
  }

  return [v3 stringWithFormat:@"%@ [%p %s %p]", v4, self->from, v5, self->to];
}

@end