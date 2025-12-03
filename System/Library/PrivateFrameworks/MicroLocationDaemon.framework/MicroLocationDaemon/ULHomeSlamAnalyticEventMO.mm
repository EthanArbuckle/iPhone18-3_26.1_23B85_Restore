@interface ULHomeSlamAnalyticEventMO
+ (id)createFromDO:(const void *)o inManagedObjectContext:(id)context;
- (optional<ULHomeSlamAnalyticEventDO>)convertToDO;
@end

@implementation ULHomeSlamAnalyticEventMO

+ (id)createFromDO:(const void *)o inManagedObjectContext:(id)context
{
  contextCopy = context;
  v6 = [[ULHomeSlamAnalyticEventMO alloc] initWithContext:contextCopy];
  [(ULHomeSlamAnalyticEventMO *)v6 setEvent:*(o + 4)];
  [(ULHomeSlamAnalyticEventMO *)v6 setTimestamp:*o];

  return v6;
}

- (optional<ULHomeSlamAnalyticEventDO>)convertToDO
{
  v3 = v1;
  event = [(ULHomeSlamAnalyticEventMO *)self event];
  [(ULHomeSlamAnalyticEventMO *)self timestamp];
  v6 = ULHomeSlamAnalyticEventDO::ULHomeSlamAnalyticEventDO(v3, event, v5);
  *(v3 + 16) = 1;
  return v6;
}

@end