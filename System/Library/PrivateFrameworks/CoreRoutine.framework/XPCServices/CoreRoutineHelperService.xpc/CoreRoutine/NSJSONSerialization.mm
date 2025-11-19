@interface NSJSONSerialization
+ (id)JSONStringFromNSDictionary:(id)a3 error:(id *)a4;
@end

@implementation NSJSONSerialization

+ (id)JSONStringFromNSDictionary:(id)a3 error:(id *)a4
{
  v5 = a3;
  if ([NSJSONSerialization isValidJSONObject:v5])
  {
    v17 = 0;
    v6 = [NSJSONSerialization dataWithJSONObject:v5 options:8 error:&v17];
    v7 = v17;
    if (v7)
    {
      v18[0] = NSLocalizedDescriptionKey;
      v8 = +[NSBundle mainBundle];
      v9 = [v8 localizedStringForKey:@"NSJSONSerialization failed" value:&stru_1000A9F10 table:0];
      v18[1] = NSUnderlyingErrorKey;
      v19[0] = v9;
      v19[1] = v7;
      v10 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];

      if (a4)
      {
        *a4 = [NSError errorWithDomain:@"com.apple.routined.NSJSONSerializationRTExtensions" code:0 userInfo:v10];
      }

      v11 = +[NSString string];
    }

    else
    {
      v11 = [[NSString alloc] initWithData:v6 encoding:4];
    }
  }

  else
  {
    v20[0] = NSLocalizedDescriptionKey;
    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"Invalid dictionary for JSON serialization" value:&stru_1000A9F10 table:0];
    v21[0] = v13;
    v20[1] = NSLocalizedRecoverySuggestionErrorKey;
    v14 = +[NSBundle mainBundle];
    v15 = [v14 localizedStringForKey:@"Refer to NSJSONSerialization spec for valid dictionaries" value:&stru_1000A9F10 table:0];
    v21[1] = v15;
    v7 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];

    if (a4)
    {
      *a4 = [NSError errorWithDomain:@"com.apple.routined.NSJSONSerializationRTExtensions" code:0 userInfo:v7];
    }

    v11 = +[NSString string];
  }

  return v11;
}

@end