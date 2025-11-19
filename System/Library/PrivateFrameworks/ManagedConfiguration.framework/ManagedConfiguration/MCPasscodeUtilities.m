@interface MCPasscodeUtilities
+ (id)defaultPublicDictionaryForUMUserPasscodeType:(unint64_t)a3;
+ (int)unlockScreenTypeForPasscode:(id)a3 outSimplePasscodeType:(int *)a4;
+ (int)unlockScreenTypeForPasscodeContext:(id)a3 outSimplePasscodeType:(int *)a4;
+ (int)unlockScreenTypeForUMUserPasscodeType:(unint64_t)a3 outSimplePasscodeType:(int *)a4;
@end

@implementation MCPasscodeUtilities

+ (int)unlockScreenTypeForPasscode:(id)a3 outSimplePasscodeType:(int *)a4
{
  v5 = [MCPasscodeManager characteristicsDictionaryFromPasscode:a3];
  LODWORD(a4) = [MCPasscodeManager unlockScreenTypeForPasscodeCharacteristics:v5 outSimplePasscodeType:a4];

  return a4;
}

+ (int)unlockScreenTypeForPasscodeContext:(id)a3 outSimplePasscodeType:(int *)a4
{
  v5 = [MCPasscodeManager characteristicsDictionaryFromPasscodeContext:a3];
  LODWORD(a4) = [MCPasscodeManager unlockScreenTypeForPasscodeCharacteristics:v5 outSimplePasscodeType:a4];

  return a4;
}

+ (int)unlockScreenTypeForUMUserPasscodeType:(unint64_t)a3 outSimplePasscodeType:(int *)a4
{
  if (a3 > 2)
  {
    result = 2;
    v4 = -1;
    if (!a4)
    {
      return result;
    }

    goto LABEL_5;
  }

  v4 = dword_1A7A62178[a3];
  result = dword_1A7A62184[a3];
  if (a4)
  {
LABEL_5:
    *a4 = v4;
  }

  return result;
}

+ (id)defaultPublicDictionaryForUMUserPasscodeType:(unint64_t)a3
{
  v11[2] = *MEMORY[0x1E69E9840];
  v9 = 0;
  v3 = [a1 unlockScreenTypeForUMUserPasscodeType:a3 outSimplePasscodeType:&v9];
  v10[0] = @"simpleType";
  v4 = [MEMORY[0x1E696AD98] numberWithInt:v9];
  v11[0] = v4;
  v10[1] = @"keyboardType";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
  v11[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

@end