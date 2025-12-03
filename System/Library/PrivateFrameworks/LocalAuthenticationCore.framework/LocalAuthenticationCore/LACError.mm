@interface LACError
+ (BOOL)error:(id)error hasCode:(int64_t)code subcode:(int64_t)subcode;
+ (id)_errorWithCode:(int64_t)code userInfo:(id)info;
+ (id)errorWithCode:(int64_t)code debugDescription:(id)description;
+ (id)errorWithCode:(int64_t)code localizedDescription:(id)description;
+ (id)errorWithCode:(int64_t)code localizedDescription:(id)description underlyingError:(id)error;
+ (id)errorWithCode:(int64_t)code subcode:(int64_t)subcode;
+ (id)errorWithCode:(int64_t)code subcode:(int64_t)subcode debugDescription:(id)description;
+ (id)errorWithCode:(int64_t)code subcode:(int64_t)subcode userInfo:(id)info;
+ (id)errorWithCode:(int64_t)code underlyingError:(id)error;
+ (id)errorWithCode:(int64_t)code underlyingError:(id)error debugDescription:(id)description;
+ (id)localizedStringForError:(int64_t)error;
+ (id)missingEntitlementError:(id)error;
@end

@implementation LACError

+ (id)missingEntitlementError:(id)error
{
  error = [MEMORY[0x1E696AEC0] stringWithFormat:@"Caller is missing the required '%@' entitlement.", error];
  v5 = [self errorWithCode:-1007 debugDescription:error];

  return v5;
}

+ (id)errorWithCode:(int64_t)code subcode:(int64_t)subcode
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11 = @"Subcode";
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:subcode];
  v12[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = [self _errorWithCode:code userInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)errorWithCode:(int64_t)code subcode:(int64_t)subcode debugDescription:(id)description
{
  v16[2] = *MEMORY[0x1E69E9840];
  v15[0] = @"Subcode";
  v8 = MEMORY[0x1E696AD98];
  descriptionCopy = description;
  v10 = [v8 numberWithInteger:subcode];
  v15[1] = *MEMORY[0x1E696A278];
  v16[0] = v10;
  v16[1] = descriptionCopy;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];

  v12 = [self _errorWithCode:code userInfo:v11];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)errorWithCode:(int64_t)code subcode:(int64_t)subcode userInfo:(id)info
{
  if (info)
  {
    infoCopy = info;
  }

  else
  {
    infoCopy = MEMORY[0x1E695E0F8];
  }

  v9 = [infoCopy mutableCopy];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:subcode];
  [v9 setObject:v10 forKeyedSubscript:@"Subcode"];

  v11 = [self _errorWithCode:code userInfo:v9];

  return v11;
}

+ (id)errorWithCode:(int64_t)code debugDescription:(id)description
{
  v13[1] = *MEMORY[0x1E69E9840];
  v12 = *MEMORY[0x1E696A278];
  v13[0] = description;
  v6 = MEMORY[0x1E695DF20];
  descriptionCopy = description;
  v8 = [v6 dictionaryWithObjects:v13 forKeys:&v12 count:1];

  v9 = [self _errorWithCode:code userInfo:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)errorWithCode:(int64_t)code localizedDescription:(id)description
{
  v13[1] = *MEMORY[0x1E69E9840];
  v12 = *MEMORY[0x1E696A578];
  v13[0] = description;
  v6 = MEMORY[0x1E695DF20];
  descriptionCopy = description;
  v8 = [v6 dictionaryWithObjects:v13 forKeys:&v12 count:1];

  v9 = [self _errorWithCode:code userInfo:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)errorWithCode:(int64_t)code localizedDescription:(id)description underlyingError:(id)error
{
  v19[2] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v9 = errorCopy;
  if (errorCopy)
  {
    v10 = *MEMORY[0x1E696AA08];
    v18[0] = *MEMORY[0x1E696A578];
    v18[1] = v10;
    v19[0] = description;
    v19[1] = errorCopy;
    v11 = MEMORY[0x1E695DF20];
    descriptionCopy = description;
    v13 = [v11 dictionaryWithObjects:v19 forKeys:v18 count:2];

    v14 = [self _errorWithCode:code userInfo:v13];
  }

  else
  {
    descriptionCopy2 = description;
    v14 = [self errorWithCode:code localizedDescription:descriptionCopy2];
  }

  v16 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)errorWithCode:(int64_t)code underlyingError:(id)error
{
  v13[1] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v7 = errorCopy;
  if (errorCopy)
  {
    v12 = *MEMORY[0x1E696AA08];
    v13[0] = errorCopy;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v9 = [self _errorWithCode:code userInfo:v8];
  }

  else
  {
    v9 = [self errorWithCode:code];
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)errorWithCode:(int64_t)code underlyingError:(id)error debugDescription:(id)description
{
  v19[2] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v9 = errorCopy;
  if (errorCopy)
  {
    v10 = *MEMORY[0x1E696AA08];
    v18[0] = *MEMORY[0x1E696A278];
    v18[1] = v10;
    v19[0] = description;
    v19[1] = errorCopy;
    v11 = MEMORY[0x1E695DF20];
    descriptionCopy = description;
    v13 = [v11 dictionaryWithObjects:v19 forKeys:v18 count:2];

    v14 = [self _errorWithCode:code userInfo:v13];
  }

  else
  {
    descriptionCopy2 = description;
    v14 = [self errorWithCode:code debugDescription:descriptionCopy2];
  }

  v16 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (BOOL)error:(id)error hasCode:(int64_t)code subcode:(int64_t)subcode
{
  errorCopy = error;
  domain = [errorCopy domain];
  v9 = [domain isEqualToString:@"com.apple.LocalAuthentication"];

  if (v9 && [errorCopy code] == code)
  {
    userInfo = [errorCopy userInfo];
    v11 = [userInfo objectForKeyedSubscript:@"Subcode"];

    if (v11)
    {
      integerValue = [v11 integerValue];
    }

    else
    {
      integerValue = 0;
    }

    v13 = integerValue == subcode;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)_errorWithCode:(int64_t)code userInfo:(id)info
{
  v6 = [info mutableCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v9 = v8;

  v10 = *MEMORY[0x1E696A578];
  v11 = [v9 objectForKeyedSubscript:*MEMORY[0x1E696A578]];

  if (!v11)
  {
    v12 = [self localizedStringForError:code];
    if (v12)
    {
      [v9 setObject:v12 forKey:v10];
    }
  }

  v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.LocalAuthentication" code:code userInfo:v9];

  return v13;
}

+ (id)localizedStringForError:(int64_t)error
{
  v3 = 0;
  if (error > -12)
  {
    if (error <= -7)
    {
      if (error > -10)
      {
        if (error != -9)
        {
          if (error == -8)
          {
LABEL_18:
            v3 = +[LACLocalization errorBiometryLockedOut];
          }

          else
          {
LABEL_12:
            v3 = +[LACLocalization errorBiometryNotEnrolled];
          }

          goto LABEL_31;
        }

LABEL_19:
        v3 = +[LACLocalization errorAuthenticationCanceled];
        goto LABEL_31;
      }

      if (error == -11)
      {
        v3 = +[LACLocalization errorCompanionNotAvailable];
        goto LABEL_31;
      }
    }

    else
    {
      if (error <= -4)
      {
        if (error == -6)
        {
LABEL_17:
          v3 = +[LACLocalization errorBiometryNotAvailable];
          goto LABEL_31;
        }

        if (error == -5)
        {
          v3 = +[LACLocalization errorPasscodeNotSet];
          goto LABEL_31;
        }

        goto LABEL_19;
      }

      if (error != -1)
      {
        if (error == -2)
        {
          goto LABEL_19;
        }

        if (error != -3)
        {
          goto LABEL_31;
        }
      }
    }

LABEL_3:
    v3 = +[LACLocalization errorAuthenticationFailure];
    goto LABEL_31;
  }

  switch(error)
  {
    case -1023:
    case -1022:
    case -1020:
    case -1008:
    case -1001:
    case -1000:
      goto LABEL_3;
    case -1019:
      v3 = +[LACLocalization errorNotFound];
      break;
    case -1018:
      v3 = +[LACLocalization errorBiometryDeniedForApp];
      break;
    case -1017:
    case -1014:
      goto LABEL_18;
    case -1016:
    case -1013:
      goto LABEL_12;
    case -1015:
    case -1012:
      goto LABEL_17;
    case -1011:
      v3 = +[LACLocalization errorNoAuthenticationRequired];
      break;
    case -1009:
      v3 = +[LACLocalization errorOperationNotAllowed];
      break;
    case -1007:
      v3 = +[LACLocalization errorDenied];
      break;
    case -1004:
      v3 = +[LACLocalization errorNotInteractive];
      break;
    case -1003:
      v3 = +[LACLocalization errorTimeout];
      break;
    default:
      break;
  }

LABEL_31:

  return v3;
}

@end