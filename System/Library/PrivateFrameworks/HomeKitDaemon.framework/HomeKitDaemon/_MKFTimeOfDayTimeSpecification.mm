@interface _MKFTimeOfDayTimeSpecification
- (MKFTimeOfDayTimeSpecificationDatabaseID)databaseID;
@end

@implementation _MKFTimeOfDayTimeSpecification

- (MKFTimeOfDayTimeSpecificationDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFTimeOfDayTimeSpecificationDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

@end