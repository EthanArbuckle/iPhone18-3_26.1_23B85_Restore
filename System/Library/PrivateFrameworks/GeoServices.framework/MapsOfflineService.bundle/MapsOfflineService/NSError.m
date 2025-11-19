@interface NSError
+ (id)MOSErrorWithCode:(int)a3 userInfo:(id)a4;
@end

@implementation NSError

+ (id)MOSErrorWithCode:(int)a3 userInfo:(id)a4
{
  v4 = *&a3;
  v5 = a4;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 mutableCopy];

    v8 = sub_21DA41C(v4);
    [v7 setObject:v8 forKey:@"ErrorString"];

    v9 = v7;
  }

  else
  {
    v13 = @"ErrorString";
    v10 = sub_21DA41C(v4);
    v14 = v10;
    v9 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  }

  v11 = [NSError errorWithDomain:@"MapsOfflineService" code:v4 userInfo:v9];

  return v11;
}

@end