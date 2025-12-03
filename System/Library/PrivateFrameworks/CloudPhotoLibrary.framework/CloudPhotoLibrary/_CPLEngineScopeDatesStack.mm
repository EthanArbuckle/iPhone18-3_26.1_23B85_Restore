@interface _CPLEngineScopeDatesStack
- (void)prependDate:(void *)date forKey:;
@end

@implementation _CPLEngineScopeDatesStack

- (void)prependDate:(void *)date forKey:
{
  v18 = a2;
  dateCopy = date;
  if (self && v18)
  {
    if (*(self + 16))
    {
      v7 = _displayableKey(dateCopy);
      [*(self + 16) timeIntervalSinceDate:v18];
      v9 = v8;
      if (v8 > 1.0)
      {
        objc_storeStrong((self + 16), a2);
        v10 = *(self + 32);
        v11 = objc_alloc(MEMORY[0x1E696AEC0]);
        v12 = [CPLDateFormatter stringForTimeInterval:v9];
        v13 = [v11 initWithFormat:@"%@ ... %@ ...", v7, v12];
        [v10 insertObject:v13 atIndex:0];

LABEL_9:
        goto LABEL_10;
      }

      if (v8 >= 0.0)
      {
        v17 = *(self + 32);
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ ...", v7];
        [v17 insertObject:v12 atIndex:0];
        goto LABEL_9;
      }
    }

    else
    {
      date = [MEMORY[0x1E695DF00] date];
      v15 = *(self + 8);
      *(self + 8) = date;

      objc_storeStrong((self + 16), a2);
      objc_storeStrong((self + 24), a2);
      objc_storeStrong((self + 40), date);
      v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:4];
      v7 = *(self + 32);
      *(self + 32) = v16;
    }

LABEL_10:
  }
}

@end