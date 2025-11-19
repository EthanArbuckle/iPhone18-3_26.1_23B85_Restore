@interface MapsCarEngineState
+ (id)engineStateCNG;
+ (id)engineStateDiesel;
+ (id)engineStateElectric;
+ (id)engineStateGasoline;
+ (void)prepareForUse;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToEngineState:(id)a3;
- (MapsCarEngineState)init;
- (MapsCarEngineState)initWithEngineType:(int)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)updateWithVehicleInfo:(id)a3;
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
  if (qword_100075860 != -1)
  {
    sub_10003D8D8();
  }
}

- (MapsCarEngineState)init
{
  [objc_opt_class() prepareForUse];
  v4.receiver = self;
  v4.super_class = MapsCarEngineState;
  return [(MapsCarEngineState *)&v4 init];
}

- (MapsCarEngineState)initWithEngineType:(int)a3
{
  result = [(MapsCarEngineState *)self init];
  if (result)
  {
    result->_engineType = a3;
  }

  return result;
}

- (void)updateWithVehicleInfo:(id)a3
{
  v32 = a3;
  v4 = qword_100075868;
  v5 = [NSNumber numberWithUnsignedInt:[(MapsCarEngineState *)self engineType]];
  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = [v32 objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = qword_100075868;
    v9 = [NSNumber numberWithUnsignedInt:[(MapsCarEngineState *)self engineType]];
    v10 = [v8 objectForKeyedSubscript:v9];
    v11 = [v32 objectForKeyedSubscript:v10];
    [v11 doubleValue];
    v12 = [NSNumber numberWithDouble:?];
    [(MapsCarEngineState *)self setRange:v12];
  }

  v13 = qword_100075870;
  v14 = [NSNumber numberWithUnsignedInt:[(MapsCarEngineState *)self engineType]];
  v15 = [v13 objectForKeyedSubscript:v14];
  v16 = [v32 objectForKeyedSubscript:v15];

  if (v16)
  {
    v17 = qword_100075870;
    v18 = [NSNumber numberWithUnsignedInt:[(MapsCarEngineState *)self engineType]];
    v19 = [v17 objectForKeyedSubscript:v18];
    v20 = [v32 objectForKeyedSubscript:v19];
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

  v26 = [v25 BOOLValue];
  if (v26)
  {
    v27 = [(MapsCarEngineState *)self range];
    v31 = 0;
    if (v27)
    {
      v28 = v27;
      v29 = [(MapsCarEngineState *)self range];
      v30 = [v29 integerValue];

      if (v30 < 51)
      {
        v31 = 1;
      }
    }

    [(MapsCarEngineState *)self setLowRangeWarning:v31];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(MapsCarEngineState *)self isEqualToEngineState:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqualToEngineState:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = [(MapsCarEngineState *)self engineType];
  if (v5 != [v4 engineType])
  {
    goto LABEL_7;
  }

  v6 = [(MapsCarEngineState *)self lowRangeWarning];
  if (v6 != [v4 lowRangeWarning])
  {
    goto LABEL_7;
  }

  v7 = [v4 range];
  if (!v7)
  {
    goto LABEL_7;
  }

  v8 = v7;
  v9 = [(MapsCarEngineState *)self range];
  v10 = [v4 range];
  v11 = [v9 isEqualToNumber:v10];

  if (v11)
  {
    v12 = 1;
  }

  else
  {
LABEL_7:
    v12 = 0;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[MapsCarEngineState alloc] initWithEngineType:[(MapsCarEngineState *)self engineType]];
  [(MapsCarEngineState *)v4 setLowRangeWarning:[(MapsCarEngineState *)self lowRangeWarning]];
  v5 = [(MapsCarEngineState *)self range];
  [(MapsCarEngineState *)v4 setRange:v5];

  return v4;
}

- (id)description
{
  v12.receiver = self;
  v12.super_class = MapsCarEngineState;
  v3 = [(MapsCarEngineState *)&v12 description];
  v4 = [(MapsCarEngineState *)self engineType];
  v5 = sub_100002230(v4 & 1 | (((v4 >> 2) & 1) << 16) & 0xFEFFFEFF | (((v4 >> 3) & 1) << 24) | (((v4 >> 1) & 1) << 8));
  v6 = [(MapsCarEngineState *)self range];
  v7 = [(MapsCarEngineState *)self lowRangeWarning];
  v8 = @"NO";
  if (v7)
  {
    v8 = @"YES";
  }

  v9 = [NSString stringWithFormat:@" %@ range=%@ warning=%@>", v5, v6, v8];
  v10 = [v3 stringByReplacingOccurrencesOfString:@">" withString:v9];

  return v10;
}

@end