@interface NSDictionary(CDMJSONSerialization)
- (id)_cdm_JSONString;
@end

@implementation NSDictionary(CDMJSONSerialization)

- (id)_cdm_JSONString
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  if (DeepCopy)
  {
    DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x1E695E480], DeepCopy, 1uLL);
  }

  [DeepCopy _cdm_safeJSONTraverse];
  v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:DeepCopy options:0 error:0];
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v3 encoding:4];

  objc_autoreleasePoolPop(v2);
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

@end