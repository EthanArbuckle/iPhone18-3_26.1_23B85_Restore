@interface OITSURetainedPointerKeyDictionary
- (OITSURetainedPointerKeyDictionary)initWithCapacity:(unint64_t)capacity;
@end

@implementation OITSURetainedPointerKeyDictionary

- (OITSURetainedPointerKeyDictionary)initWithCapacity:(unint64_t)capacity
{
  v4 = *MEMORY[0x277CBF138];
  *&keyCallBacks.retain = *(MEMORY[0x277CBF138] + 8);
  v5 = *(MEMORY[0x277CBF138] + 24);
  keyCallBacks.equal = 0;
  keyCallBacks.hash = 0;
  keyCallBacks.copyDescription = v5;
  v10.receiver = self;
  v10.super_class = OITSURetainedPointerKeyDictionary;
  keyCallBacks.version = v4;
  v6 = [(OITSUNoCopyDictionary *)&v10 initWithCapacity:?];
  v7 = v6;
  if (v6)
  {
    mDictionary = v6->super.mDictionary;
    if (mDictionary)
    {
      CFRelease(mDictionary);
    }

    v7->super.mDictionary = CFDictionaryCreateMutable(0, capacity, &keyCallBacks, MEMORY[0x277CBF150]);
  }

  return v7;
}

@end