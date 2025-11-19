@interface OITSUIntDictionary
- (OITSUIntDictionary)initWithCapacity:(unint64_t)a3;
@end

@implementation OITSUIntDictionary

- (OITSUIntDictionary)initWithCapacity:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = OITSUIntDictionary;
  v4 = [(OITSUNoCopyDictionary *)&v8 initWithCapacity:?];
  v5 = v4;
  if (v4)
  {
    mDictionary = v4->super.mDictionary;
    if (mDictionary)
    {
      CFRelease(mDictionary);
      v5->super.mDictionary = 0;
    }

    v5->super.mDictionary = CFDictionaryCreateMutable(0, a3, 0, 0);
  }

  return v5;
}

@end