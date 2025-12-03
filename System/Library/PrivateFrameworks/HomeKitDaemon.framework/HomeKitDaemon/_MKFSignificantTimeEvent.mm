@interface _MKFSignificantTimeEvent
+ (id)modelIDForParentRelationshipTo:(id)to;
- (MKFHome)home;
- (MKFSignificantTimeEventDatabaseID)databaseID;
- (void)awakeFromFetch;
@end

@implementation _MKFSignificantTimeEvent

- (MKFHome)home
{
  trigger = [(_MKFSignificantTimeEvent *)self trigger];
  home = [trigger home];

  return home;
}

- (MKFSignificantTimeEventDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFSignificantTimeEventDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

- (void)awakeFromFetch
{
  v8.receiver = self;
  v8.super_class = _MKFSignificantTimeEvent;
  [(_MKFSignificantTimeEvent *)&v8 awakeFromFetch];
  offsetSeconds = [(_MKFSignificantTimeEvent *)self offsetSeconds];
  if (!offsetSeconds)
  {
    offset = [(_MKFSignificantTimeEvent *)self offset];

    if (!offset)
    {
      return;
    }

    v5 = MEMORY[0x277CCABB0];
    offsetSeconds = [(_MKFSignificantTimeEvent *)self offset];
    decodeDateComponents = [offsetSeconds decodeDateComponents];
    v7 = [v5 numberWithInteger:{HMDTimeOffsetFromDateComponents(decodeDateComponents, 0)}];
    [(_MKFSignificantTimeEvent *)self setPrimitiveValue:v7 forKey:@"offsetSeconds"];
  }
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