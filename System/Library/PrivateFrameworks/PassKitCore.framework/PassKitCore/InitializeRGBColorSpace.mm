@interface InitializeRGBColorSpace
@end

@implementation InitializeRGBColorSpace

CGColorSpaceRef ___InitializeRGBColorSpace_block_invoke()
{
  _MergedGlobals_195 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  qword_1ED6D1808 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1B0]);
  qword_1ED6D1810 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F110]);
  result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F108]);
  qword_1ED6D1818 = result;
  return result;
}

@end