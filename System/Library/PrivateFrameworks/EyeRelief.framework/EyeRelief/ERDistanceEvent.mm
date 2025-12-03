@interface ERDistanceEvent
- (ERDistanceEvent)initWithDistance:(float)distance distanceCategory:(int64_t)category andAttention:(BOOL)attention;
- (id)description;
@end

@implementation ERDistanceEvent

- (ERDistanceEvent)initWithDistance:(float)distance distanceCategory:(int64_t)category andAttention:(BOOL)attention
{
  v9.receiver = self;
  v9.super_class = ERDistanceEvent;
  result = [(ERDistanceEvent *)&v9 init];
  if (result)
  {
    result->_distance = distance;
    result->_distanceCategory = category;
    result->_didDetectAttention = attention;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  [(ERDistanceEvent *)self distance];
  v5 = v4;
  distanceCategory = [(ERDistanceEvent *)self distanceCategory];
  didDetectAttention = [(ERDistanceEvent *)self didDetectAttention];
  v8 = "no";
  if (didDetectAttention)
  {
    v8 = "yes";
  }

  return [v3 stringWithFormat:@"Distance: %f, Distance Category: %li, didDetectAttention: %s", *&v5, distanceCategory, v8];
}

@end