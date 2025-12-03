@interface MCPasscodeUtilities
+ (id)defaultPublicDictionaryForUMUserPasscodeType:(unint64_t)type;
+ (int)unlockScreenTypeForPasscode:(id)passcode outSimplePasscodeType:(int *)type;
+ (int)unlockScreenTypeForPasscodeContext:(id)context outSimplePasscodeType:(int *)type;
+ (int)unlockScreenTypeForUMUserPasscodeType:(unint64_t)type outSimplePasscodeType:(int *)passcodeType;
@end

@implementation MCPasscodeUtilities

+ (int)unlockScreenTypeForPasscode:(id)passcode outSimplePasscodeType:(int *)type
{
  v5 = [MCPasscodeManager characteristicsDictionaryFromPasscode:passcode];
  LODWORD(type) = [MCPasscodeManager unlockScreenTypeForPasscodeCharacteristics:v5 outSimplePasscodeType:type];

  return type;
}

+ (int)unlockScreenTypeForPasscodeContext:(id)context outSimplePasscodeType:(int *)type
{
  v5 = [MCPasscodeManager characteristicsDictionaryFromPasscodeContext:context];
  LODWORD(type) = [MCPasscodeManager unlockScreenTypeForPasscodeCharacteristics:v5 outSimplePasscodeType:type];

  return type;
}

+ (int)unlockScreenTypeForUMUserPasscodeType:(unint64_t)type outSimplePasscodeType:(int *)passcodeType
{
  if (type > 2)
  {
    result = 2;
    v4 = -1;
    if (!passcodeType)
    {
      return result;
    }

    goto LABEL_5;
  }

  v4 = dword_1A7A62178[type];
  result = dword_1A7A62184[type];
  if (passcodeType)
  {
LABEL_5:
    *passcodeType = v4;
  }

  return result;
}

+ (id)defaultPublicDictionaryForUMUserPasscodeType:(unint64_t)type
{
  v11[2] = *MEMORY[0x1E69E9840];
  v9 = 0;
  v3 = [self unlockScreenTypeForUMUserPasscodeType:type outSimplePasscodeType:&v9];
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