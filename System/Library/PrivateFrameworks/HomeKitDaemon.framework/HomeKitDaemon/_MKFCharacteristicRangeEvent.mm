@interface _MKFCharacteristicRangeEvent
+ (id)modelIDForParentRelationshipTo:(id)to;
- (BOOL)validateForInsertOrUpdate:(id *)update;
- (MKFCharacteristicRangeEventDatabaseID)databaseID;
- (MKFHome)home;
@end

@implementation _MKFCharacteristicRangeEvent

- (MKFHome)home
{
  trigger = [(_MKFCharacteristicRangeEvent *)self trigger];
  home = [trigger home];

  return home;
}

- (MKFCharacteristicRangeEventDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFCharacteristicRangeEventDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

- (BOOL)validateForInsertOrUpdate:(id *)update
{
  v10.receiver = self;
  v10.super_class = _MKFCharacteristicRangeEvent;
  LODWORD(v5) = [(_MKFCharacteristicEvent *)&v10 validateForInsertOrUpdate:?];
  if (v5)
  {
    v6 = [(_MKFCharacteristicRangeEvent *)self max];
    if (v6)
    {

LABEL_5:
      LOBYTE(v5) = 1;
      return v5;
    }

    v7 = [(_MKFCharacteristicRangeEvent *)self min];

    if (v7)
    {
      goto LABEL_5;
    }

    if (update)
    {
      v8 = [MEMORY[0x277CCA9B8] hmd_validationErrorWithDescription:@"Must have at least one of min or max"];
      v5 = v8;
      LOBYTE(v5) = 0;
      *update = v8;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
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