@interface ULHomeSlamAnalyticEventMO
+ (id)createFromDO:(const void *)a3 inManagedObjectContext:(id)a4;
- (optional<ULHomeSlamAnalyticEventDO>)convertToDO;
@end

@implementation ULHomeSlamAnalyticEventMO

+ (id)createFromDO:(const void *)a3 inManagedObjectContext:(id)a4
{
  v5 = a4;
  v6 = [[ULHomeSlamAnalyticEventMO alloc] initWithContext:v5];
  [(ULHomeSlamAnalyticEventMO *)v6 setEvent:*(a3 + 4)];
  [(ULHomeSlamAnalyticEventMO *)v6 setTimestamp:*a3];

  return v6;
}

- (optional<ULHomeSlamAnalyticEventDO>)convertToDO
{
  v3 = v1;
  v4 = [(ULHomeSlamAnalyticEventMO *)self event];
  [(ULHomeSlamAnalyticEventMO *)self timestamp];
  v6 = ULHomeSlamAnalyticEventDO::ULHomeSlamAnalyticEventDO(v3, v4, v5);
  *(v3 + 16) = 1;
  return v6;
}

@end