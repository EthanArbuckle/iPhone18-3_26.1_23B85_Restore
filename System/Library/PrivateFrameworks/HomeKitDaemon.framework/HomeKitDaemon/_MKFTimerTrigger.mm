@interface _MKFTimerTrigger
+ (NSPredicate)homeRelation;
+ (id)modelIDForParentRelationshipTo:(id)to;
- (MKFTimerTriggerDatabaseID)databaseID;
- (void)awakeFromFetch;
@end

@implementation _MKFTimerTrigger

- (MKFTimerTriggerDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFTimerTriggerDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

- (void)awakeFromFetch
{
  v13.receiver = self;
  v13.super_class = _MKFTimerTrigger;
  [(_MKFTimerTrigger *)&v13 awakeFromFetch];
  recurrenceDays = [(_MKFTimerTrigger *)self recurrenceDays];
  if (!recurrenceDays)
  {
    recurrences = [(_MKFTimerTrigger *)self recurrences];

    if (!recurrences)
    {
      goto LABEL_5;
    }

    v5 = MEMORY[0x277CCABB0];
    recurrenceDays = [(_MKFTimerTrigger *)self recurrences];
    decodeArrayOfDateComponents = [recurrenceDays decodeArrayOfDateComponents];
    v7 = [v5 numberWithUnsignedInteger:HMDaysOfTheWeekFromDateComponents()];
    [(_MKFTimerTrigger *)self setPrimitiveValue:v7 forKey:@"recurrenceDays"];
  }

LABEL_5:
  significantEventOffsetSeconds = [(_MKFTimerTrigger *)self significantEventOffsetSeconds];
  if (!significantEventOffsetSeconds)
  {
    significantEventOffset = [(_MKFTimerTrigger *)self significantEventOffset];

    if (!significantEventOffset)
    {
      return;
    }

    v10 = MEMORY[0x277CCABB0];
    significantEventOffsetSeconds = [(_MKFTimerTrigger *)self significantEventOffset];
    decodeDateComponents = [significantEventOffsetSeconds decodeDateComponents];
    v12 = [v10 numberWithInteger:{HMDTimeOffsetFromDateComponents(decodeDateComponents, 0)}];
    [(_MKFTimerTrigger *)self setPrimitiveValue:v12 forKey:@"significantEventOffsetSeconds"];
  }
}

+ (NSPredicate)homeRelation
{
  if (homeRelation__hmf_once_t0_132466 != -1)
  {
    dispatch_once(&homeRelation__hmf_once_t0_132466, &__block_literal_global_132467);
  }

  v3 = homeRelation__hmf_once_v1_132468;

  return v3;
}

+ (id)modelIDForParentRelationshipTo:(id)to
{
  toCopy = to;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

@end