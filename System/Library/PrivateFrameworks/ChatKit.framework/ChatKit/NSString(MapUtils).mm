@interface NSString(MapUtils)
+ (id)__ck_appleMapsURLStringForCoordinate:()MapUtils coordinateName:;
@end

@implementation NSString(MapUtils)

+ (id)__ck_appleMapsURLStringForCoordinate:()MapUtils coordinateName:
{
  if (a5)
  {
    v7 = MEMORY[0x1E696AB08];
    v8 = a5;
    uRLPathAllowedCharacterSet = [v7 URLPathAllowedCharacterSet];
    v10 = [v8 stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet];
  }

  else
  {
    v10 = *MEMORY[0x1E69A6888];
  }

  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"http://%@/?%@=%f, %f", *MEMORY[0x1E69A70B0], v10, *&self, *&a2];

  return v11;
}

@end