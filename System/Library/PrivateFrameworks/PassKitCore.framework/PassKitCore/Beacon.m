@interface Beacon
+ (id)_propertySettersForBeacon;
@end

@implementation Beacon

+ (id)_propertySettersForBeacon
{
  v4[0] = @"proximity_uuid";
  v4[1] = @"major";
  v5[0] = &stru_10085D208;
  v5[1] = &stru_10085D228;
  v4[2] = @"minor";
  v4[3] = @"name";
  v5[2] = &stru_10085D248;
  v5[3] = &stru_10085D268;
  v4[4] = @"relevant_text";
  v5[4] = &stru_10085D288;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:5];

  return v2;
}

@end