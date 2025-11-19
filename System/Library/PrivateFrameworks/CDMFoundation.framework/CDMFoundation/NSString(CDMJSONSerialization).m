@interface NSString(CDMJSONSerialization)
- (id)_cdm_JSONDictionary;
@end

@implementation NSString(CDMJSONSerialization)

- (id)_cdm_JSONDictionary
{
  v1 = [a1 dataUsingEncoding:4];
  if (v1)
  {
    v2 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v1 options:0 error:0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end