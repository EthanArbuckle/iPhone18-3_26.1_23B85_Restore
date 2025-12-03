@interface CHTimeWindowStrokeGroup
- (CHTimeWindowStrokeGroup)initWithStrokeIdentifiers:(id)identifiers firstStrokeIdentifier:(id)identifier lastStrokeIdentifier:(id)strokeIdentifier bounds:(CGRect)bounds startTimestamp:(double)timestamp endTimestamp:(double)endTimestamp;
- (id)groupByAddingStrokeIdentifiers:(id)identifiers removingStrokeIdentifiers:(id)strokeIdentifiers firstStrokeIdentifier:(id)identifier lastStrokeIdentifier:(id)strokeIdentifier bounds:(CGRect)bounds startTimestamp:(double)timestamp endTimestamp:(double)endTimestamp;
@end

@implementation CHTimeWindowStrokeGroup

- (CHTimeWindowStrokeGroup)initWithStrokeIdentifiers:(id)identifiers firstStrokeIdentifier:(id)identifier lastStrokeIdentifier:(id)strokeIdentifier bounds:(CGRect)bounds startTimestamp:(double)timestamp endTimestamp:(double)endTimestamp
{
  v11.receiver = self;
  v11.super_class = CHTimeWindowStrokeGroup;
  result = [(CHStrokeGroup *)&v11 initWithStrokeIdentifiers:identifiers firstStrokeIdentifier:identifier lastStrokeIdentifier:strokeIdentifier bounds:1 classification:@"timeWindowStrategy" groupingConfidence:bounds.origin.x strategyIdentifier:bounds.origin.y firstStrokeOrigin:bounds.size.width, bounds.size.height, 1.0, bounds.origin.x, bounds.origin.y];
  if (result)
  {
    result->_startTimestamp = timestamp;
    result->_endTimestamp = endTimestamp;
  }

  return result;
}

- (id)groupByAddingStrokeIdentifiers:(id)identifiers removingStrokeIdentifiers:(id)strokeIdentifiers firstStrokeIdentifier:(id)identifier lastStrokeIdentifier:(id)strokeIdentifier bounds:(CGRect)bounds startTimestamp:(double)timestamp endTimestamp:(double)endTimestamp
{
  v13.receiver = self;
  v13.super_class = CHTimeWindowStrokeGroup;
  v11 = [(CHStrokeGroup *)&v13 groupByAddingStrokeIdentifiers:identifiers removingStrokeIdentifiers:strokeIdentifiers firstStrokeIdentifier:identifier lastStrokeIdentifier:strokeIdentifier bounds:1 classification:bounds.origin.x groupingConfidence:bounds.origin.y firstStrokeOrigin:bounds.size.width, bounds.size.height, 1.0, bounds.origin.x, bounds.origin.y];
  v11[17] = timestamp;
  v11[18] = endTimestamp;

  return v11;
}

@end