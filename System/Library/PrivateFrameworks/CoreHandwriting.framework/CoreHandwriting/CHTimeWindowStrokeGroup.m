@interface CHTimeWindowStrokeGroup
- (CHTimeWindowStrokeGroup)initWithStrokeIdentifiers:(id)a3 firstStrokeIdentifier:(id)a4 lastStrokeIdentifier:(id)a5 bounds:(CGRect)a6 startTimestamp:(double)a7 endTimestamp:(double)a8;
- (id)groupByAddingStrokeIdentifiers:(id)a3 removingStrokeIdentifiers:(id)a4 firstStrokeIdentifier:(id)a5 lastStrokeIdentifier:(id)a6 bounds:(CGRect)a7 startTimestamp:(double)a8 endTimestamp:(double)a9;
@end

@implementation CHTimeWindowStrokeGroup

- (CHTimeWindowStrokeGroup)initWithStrokeIdentifiers:(id)a3 firstStrokeIdentifier:(id)a4 lastStrokeIdentifier:(id)a5 bounds:(CGRect)a6 startTimestamp:(double)a7 endTimestamp:(double)a8
{
  v11.receiver = self;
  v11.super_class = CHTimeWindowStrokeGroup;
  result = [(CHStrokeGroup *)&v11 initWithStrokeIdentifiers:a3 firstStrokeIdentifier:a4 lastStrokeIdentifier:a5 bounds:1 classification:@"timeWindowStrategy" groupingConfidence:a6.origin.x strategyIdentifier:a6.origin.y firstStrokeOrigin:a6.size.width, a6.size.height, 1.0, a6.origin.x, a6.origin.y];
  if (result)
  {
    result->_startTimestamp = a7;
    result->_endTimestamp = a8;
  }

  return result;
}

- (id)groupByAddingStrokeIdentifiers:(id)a3 removingStrokeIdentifiers:(id)a4 firstStrokeIdentifier:(id)a5 lastStrokeIdentifier:(id)a6 bounds:(CGRect)a7 startTimestamp:(double)a8 endTimestamp:(double)a9
{
  v13.receiver = self;
  v13.super_class = CHTimeWindowStrokeGroup;
  v11 = [(CHStrokeGroup *)&v13 groupByAddingStrokeIdentifiers:a3 removingStrokeIdentifiers:a4 firstStrokeIdentifier:a5 lastStrokeIdentifier:a6 bounds:1 classification:a7.origin.x groupingConfidence:a7.origin.y firstStrokeOrigin:a7.size.width, a7.size.height, 1.0, a7.origin.x, a7.origin.y];
  v11[17] = a8;
  v11[18] = a9;

  return v11;
}

@end