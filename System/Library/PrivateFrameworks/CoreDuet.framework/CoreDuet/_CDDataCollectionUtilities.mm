@interface _CDDataCollectionUtilities
+ (id)randomDataWithLength:(unint64_t)length;
@end

@implementation _CDDataCollectionUtilities

+ (id)randomDataWithLength:(unint64_t)length
{
  v4 = [MEMORY[0x1E695DF88] dataWithLength:?];
  if (SecRandomCopyBytes(*MEMORY[0x1E697B308], length, [v4 mutableBytes]))
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E695DEF0] dataWithData:v4];
  }

  return v5;
}

@end