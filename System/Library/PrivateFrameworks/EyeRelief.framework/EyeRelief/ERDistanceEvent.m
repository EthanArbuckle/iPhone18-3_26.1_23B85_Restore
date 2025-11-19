@interface ERDistanceEvent
- (ERDistanceEvent)initWithDistance:(float)a3 distanceCategory:(int64_t)a4 andAttention:(BOOL)a5;
- (id)description;
@end

@implementation ERDistanceEvent

- (ERDistanceEvent)initWithDistance:(float)a3 distanceCategory:(int64_t)a4 andAttention:(BOOL)a5
{
  v9.receiver = self;
  v9.super_class = ERDistanceEvent;
  result = [(ERDistanceEvent *)&v9 init];
  if (result)
  {
    result->_distance = a3;
    result->_distanceCategory = a4;
    result->_didDetectAttention = a5;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  [(ERDistanceEvent *)self distance];
  v5 = v4;
  v6 = [(ERDistanceEvent *)self distanceCategory];
  v7 = [(ERDistanceEvent *)self didDetectAttention];
  v8 = "no";
  if (v7)
  {
    v8 = "yes";
  }

  return [v3 stringWithFormat:@"Distance: %f, Distance Category: %li, didDetectAttention: %s", *&v5, v6, v8];
}

@end