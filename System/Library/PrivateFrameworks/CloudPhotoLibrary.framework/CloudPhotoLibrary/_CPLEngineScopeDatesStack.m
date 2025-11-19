@interface _CPLEngineScopeDatesStack
- (void)prependDate:(void *)a3 forKey:;
@end

@implementation _CPLEngineScopeDatesStack

- (void)prependDate:(void *)a3 forKey:
{
  v18 = a2;
  v6 = a3;
  if (a1 && v18)
  {
    if (*(a1 + 16))
    {
      v7 = _displayableKey(v6);
      [*(a1 + 16) timeIntervalSinceDate:v18];
      v9 = v8;
      if (v8 > 1.0)
      {
        objc_storeStrong((a1 + 16), a2);
        v10 = *(a1 + 32);
        v11 = objc_alloc(MEMORY[0x1E696AEC0]);
        v12 = [CPLDateFormatter stringForTimeInterval:v9];
        v13 = [v11 initWithFormat:@"%@ ... %@ ...", v7, v12];
        [v10 insertObject:v13 atIndex:0];

LABEL_9:
        goto LABEL_10;
      }

      if (v8 >= 0.0)
      {
        v17 = *(a1 + 32);
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ ...", v7];
        [v17 insertObject:v12 atIndex:0];
        goto LABEL_9;
      }
    }

    else
    {
      v14 = [MEMORY[0x1E695DF00] date];
      v15 = *(a1 + 8);
      *(a1 + 8) = v14;

      objc_storeStrong((a1 + 16), a2);
      objc_storeStrong((a1 + 24), a2);
      objc_storeStrong((a1 + 40), a3);
      v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:4];
      v7 = *(a1 + 32);
      *(a1 + 32) = v16;
    }

LABEL_10:
  }
}

@end