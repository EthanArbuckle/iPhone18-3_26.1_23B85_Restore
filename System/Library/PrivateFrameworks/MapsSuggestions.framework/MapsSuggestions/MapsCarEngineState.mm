@interface MapsCarEngineState
+ (id)engineStateCNG;
+ (id)engineStateDiesel;
+ (id)engineStateElectric;
+ (id)engineStateGasoline;
+ (void)prepareForUse;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToEngineState:(id)state;
- (MapsCarEngineState)init;
- (MapsCarEngineState)initWithEngineType:(int)type;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)updateWithVehicleInfo:(id)info;
@end

@implementation MapsCarEngineState

+ (id)engineStateGasoline
{
  v2 = [[MapsCarEngineState alloc] initWithEngineType:1];

  return v2;
}

+ (id)engineStateDiesel
{
  v2 = [[MapsCarEngineState alloc] initWithEngineType:2];

  return v2;
}

+ (id)engineStateElectric
{
  v2 = [[MapsCarEngineState alloc] initWithEngineType:4];

  return v2;
}

+ (id)engineStateCNG
{
  v2 = [[MapsCarEngineState alloc] initWithEngineType:8];

  return v2;
}

+ (void)prepareForUse
{
  if (qword_1000855D8 != -1)
  {
    sub_10004CDB0();
  }
}

- (MapsCarEngineState)init
{
  [objc_opt_class() prepareForUse];
  v4.receiver = self;
  v4.super_class = MapsCarEngineState;
  return [(MapsCarEngineState *)&v4 init];
}

- (MapsCarEngineState)initWithEngineType:(int)type
{
  result = [(MapsCarEngineState *)self init];
  if (result)
  {
    result->_engineType = type;
  }

  return result;
}

- (void)updateWithVehicleInfo:(id)info
{
  infoCopy = info;
  v4 = qword_1000855E0;
  v5 = [NSNumber numberWithUnsignedInt:[(MapsCarEngineState *)self engineType]];
  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = [infoCopy objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = qword_1000855E0;
    v9 = [NSNumber numberWithUnsignedInt:[(MapsCarEngineState *)self engineType]];
    v10 = [v8 objectForKeyedSubscript:v9];
    v11 = [infoCopy objectForKeyedSubscript:v10];
    [v11 doubleValue];
    v12 = [NSNumber numberWithDouble:?];
    [(MapsCarEngineState *)self setRange:v12];
  }

  v13 = qword_1000855E8;
  v14 = [NSNumber numberWithUnsignedInt:[(MapsCarEngineState *)self engineType]];
  v15 = [v13 objectForKeyedSubscript:v14];
  v16 = [infoCopy objectForKeyedSubscript:v15];

  if (v16)
  {
    v17 = qword_1000855E8;
    v18 = [NSNumber numberWithUnsignedInt:[(MapsCarEngineState *)self engineType]];
    v19 = [v17 objectForKeyedSubscript:v18];
    v20 = [infoCopy objectForKeyedSubscript:v19];
    -[MapsCarEngineState setLowRangeWarning:](self, "setLowRangeWarning:", [v20 BOOLValue]);
  }

  v21 = [NSNumber numberWithBool:0];
  v22 = +[NSUserDefaults standardUserDefaults];
  v23 = [v22 objectForKey:@"ExternalAccessoryForceLowRangeWarningForLowRange"];

  if (v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = v21;
  }

  v25 = v24;

  bOOLValue = [v25 BOOLValue];
  if (bOOLValue)
  {
    range = [(MapsCarEngineState *)self range];
    v31 = 0;
    if (range)
    {
      v28 = range;
      range2 = [(MapsCarEngineState *)self range];
      integerValue = [range2 integerValue];

      if (integerValue < 51)
      {
        v31 = 1;
      }
    }

    [(MapsCarEngineState *)self setLowRangeWarning:v31];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(MapsCarEngineState *)self isEqualToEngineState:equalCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqualToEngineState:(id)state
{
  stateCopy = state;
  v12 = 0;
  if (stateCopy)
  {
    engineType = [(MapsCarEngineState *)self engineType];
    if (engineType == [stateCopy engineType])
    {
      lowRangeWarning = [(MapsCarEngineState *)self lowRangeWarning];
      if (lowRangeWarning == [stateCopy lowRangeWarning])
      {
        range = [stateCopy range];
        if (range)
        {
          v8 = range;
          range2 = [(MapsCarEngineState *)self range];
          range3 = [stateCopy range];
          v11 = [range2 isEqualToNumber:range3];

          if (v11)
          {
            v12 = 1;
          }
        }
      }
    }
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[MapsCarEngineState alloc] initWithEngineType:[(MapsCarEngineState *)self engineType]];
  [(MapsCarEngineState *)v4 setLowRangeWarning:[(MapsCarEngineState *)self lowRangeWarning]];
  range = [(MapsCarEngineState *)self range];
  [(MapsCarEngineState *)v4 setRange:range];

  return v4;
}

- (id)description
{
  v12.receiver = self;
  v12.super_class = MapsCarEngineState;
  v3 = [(MapsCarEngineState *)&v12 description];
  engineType = [(MapsCarEngineState *)self engineType];
  v5 = sub_10002AA54(engineType & 1 | (((engineType >> 2) & 1) << 16) & 0xFEFFFEFF | (((engineType >> 3) & 1) << 24) | (((engineType >> 1) & 1) << 8));
  range = [(MapsCarEngineState *)self range];
  lowRangeWarning = [(MapsCarEngineState *)self lowRangeWarning];
  v8 = @"NO";
  if (lowRangeWarning)
  {
    v8 = @"YES";
  }

  v9 = [NSString stringWithFormat:@" %@ range=%@ warning=%@>", v5, range, v8];
  v10 = [v3 stringByReplacingOccurrencesOfString:@">" withString:v9];

  return v10;
}

@end