@interface EQKitAdjustableSpace
+ (__CTRunDelegate)newRunDelegateWithAscent:(double)a3 descent:(double)a4 width:(double)a5;
+ (void)appendSpaceToAttributedString:(id)a3 ascent:(double)a4 descent:(double)a5 width:(double)a6;
- (EQKitAdjustableSpace)initWithAscent:(double)a3 descent:(double)a4 width:(double)a5;
@end

@implementation EQKitAdjustableSpace

- (EQKitAdjustableSpace)initWithAscent:(double)a3 descent:(double)a4 width:(double)a5
{
  v9.receiver = self;
  v9.super_class = EQKitAdjustableSpace;
  result = [(EQKitAdjustableSpace *)&v9 init];
  if (result)
  {
    result->mAscent = a3;
    result->mDescent = a4;
    result->mWidth = a5;
  }

  return result;
}

+ (__CTRunDelegate)newRunDelegateWithAscent:(double)a3 descent:(double)a4 width:(double)a5
{
  v5 = [objc_alloc(objc_opt_class()) initWithAscent:a3 descent:a4 width:a5];

  return CTRunDelegateCreate(&kEQKitRunDelegateCallBacks, v5);
}

+ (void)appendSpaceToAttributedString:(id)a3 ascent:(double)a4 descent:(double)a5 width:(double)a6
{
  keys[2] = *MEMORY[0x277D85DE8];
  v7 = [a1 newRunDelegateWithAscent:a4 descent:a5 width:a6];
  v8 = *MEMORY[0x277CC49C8];
  keys[0] = *MEMORY[0x277CC4A00];
  keys[1] = v8;
  v9 = *MEMORY[0x277CBED28];
  values[0] = v7;
  values[1] = v9;
  v10 = CFDictionaryCreate(*MEMORY[0x277CBECE8], keys, values, 2, 0, MEMORY[0x277CBF150]);
  v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharacters:&kRunDelegateCharacter length:1];
  v12 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v11 attributes:v10];
  [a3 appendAttributedString:v12];
  CFRelease(v7);
  CFRelease(v10);
}

@end