@interface EQKitAdjustableSpace
+ (__CTRunDelegate)newRunDelegateWithAscent:(double)ascent descent:(double)descent width:(double)width;
+ (void)appendSpaceToAttributedString:(id)string ascent:(double)ascent descent:(double)descent width:(double)width;
- (EQKitAdjustableSpace)initWithAscent:(double)ascent descent:(double)descent width:(double)width;
@end

@implementation EQKitAdjustableSpace

- (EQKitAdjustableSpace)initWithAscent:(double)ascent descent:(double)descent width:(double)width
{
  v9.receiver = self;
  v9.super_class = EQKitAdjustableSpace;
  result = [(EQKitAdjustableSpace *)&v9 init];
  if (result)
  {
    result->mAscent = ascent;
    result->mDescent = descent;
    result->mWidth = width;
  }

  return result;
}

+ (__CTRunDelegate)newRunDelegateWithAscent:(double)ascent descent:(double)descent width:(double)width
{
  v5 = [objc_alloc(objc_opt_class()) initWithAscent:ascent descent:descent width:width];

  return CTRunDelegateCreate(&kEQKitRunDelegateCallBacks, v5);
}

+ (void)appendSpaceToAttributedString:(id)string ascent:(double)ascent descent:(double)descent width:(double)width
{
  keys[2] = *MEMORY[0x277D85DE8];
  v7 = [self newRunDelegateWithAscent:ascent descent:descent width:width];
  v8 = *MEMORY[0x277CC49C8];
  keys[0] = *MEMORY[0x277CC4A00];
  keys[1] = v8;
  v9 = *MEMORY[0x277CBED28];
  values[0] = v7;
  values[1] = v9;
  v10 = CFDictionaryCreate(*MEMORY[0x277CBECE8], keys, values, 2, 0, MEMORY[0x277CBF150]);
  v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharacters:&kRunDelegateCharacter length:1];
  v12 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v11 attributes:v10];
  [string appendAttributedString:v12];
  CFRelease(v7);
  CFRelease(v10);
}

@end