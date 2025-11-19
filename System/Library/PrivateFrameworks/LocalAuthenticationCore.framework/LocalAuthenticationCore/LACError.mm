@interface LACError
+ (BOOL)error:(id)a3 hasCode:(int64_t)a4 subcode:(int64_t)a5;
+ (id)_errorWithCode:(int64_t)a3 userInfo:(id)a4;
+ (id)errorWithCode:(int64_t)a3 debugDescription:(id)a4;
+ (id)errorWithCode:(int64_t)a3 localizedDescription:(id)a4;
+ (id)errorWithCode:(int64_t)a3 localizedDescription:(id)a4 underlyingError:(id)a5;
+ (id)errorWithCode:(int64_t)a3 subcode:(int64_t)a4;
+ (id)errorWithCode:(int64_t)a3 subcode:(int64_t)a4 debugDescription:(id)a5;
+ (id)errorWithCode:(int64_t)a3 subcode:(int64_t)a4 userInfo:(id)a5;
+ (id)errorWithCode:(int64_t)a3 underlyingError:(id)a4;
+ (id)errorWithCode:(int64_t)a3 underlyingError:(id)a4 debugDescription:(id)a5;
+ (id)localizedStringForError:(int64_t)a3;
+ (id)missingEntitlementError:(id)a3;
@end

@implementation LACError

+ (id)missingEntitlementError:(id)a3
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Caller is missing the required '%@' entitlement.", a3];
  v5 = [a1 errorWithCode:-1007 debugDescription:v4];

  return v5;
}

+ (id)errorWithCode:(int64_t)a3 subcode:(int64_t)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11 = @"Subcode";
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v12[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = [a1 _errorWithCode:a3 userInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)errorWithCode:(int64_t)a3 subcode:(int64_t)a4 debugDescription:(id)a5
{
  v16[2] = *MEMORY[0x1E69E9840];
  v15[0] = @"Subcode";
  v8 = MEMORY[0x1E696AD98];
  v9 = a5;
  v10 = [v8 numberWithInteger:a4];
  v15[1] = *MEMORY[0x1E696A278];
  v16[0] = v10;
  v16[1] = v9;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];

  v12 = [a1 _errorWithCode:a3 userInfo:v11];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)errorWithCode:(int64_t)a3 subcode:(int64_t)a4 userInfo:(id)a5
{
  if (a5)
  {
    v8 = a5;
  }

  else
  {
    v8 = MEMORY[0x1E695E0F8];
  }

  v9 = [v8 mutableCopy];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [v9 setObject:v10 forKeyedSubscript:@"Subcode"];

  v11 = [a1 _errorWithCode:a3 userInfo:v9];

  return v11;
}

+ (id)errorWithCode:(int64_t)a3 debugDescription:(id)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v12 = *MEMORY[0x1E696A278];
  v13[0] = a4;
  v6 = MEMORY[0x1E695DF20];
  v7 = a4;
  v8 = [v6 dictionaryWithObjects:v13 forKeys:&v12 count:1];

  v9 = [a1 _errorWithCode:a3 userInfo:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)errorWithCode:(int64_t)a3 localizedDescription:(id)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v12 = *MEMORY[0x1E696A578];
  v13[0] = a4;
  v6 = MEMORY[0x1E695DF20];
  v7 = a4;
  v8 = [v6 dictionaryWithObjects:v13 forKeys:&v12 count:1];

  v9 = [a1 _errorWithCode:a3 userInfo:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)errorWithCode:(int64_t)a3 localizedDescription:(id)a4 underlyingError:(id)a5
{
  v19[2] = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = v8;
  if (v8)
  {
    v10 = *MEMORY[0x1E696AA08];
    v18[0] = *MEMORY[0x1E696A578];
    v18[1] = v10;
    v19[0] = a4;
    v19[1] = v8;
    v11 = MEMORY[0x1E695DF20];
    v12 = a4;
    v13 = [v11 dictionaryWithObjects:v19 forKeys:v18 count:2];

    v14 = [a1 _errorWithCode:a3 userInfo:v13];
  }

  else
  {
    v15 = a4;
    v14 = [a1 errorWithCode:a3 localizedDescription:v15];
  }

  v16 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)errorWithCode:(int64_t)a3 underlyingError:(id)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v12 = *MEMORY[0x1E696AA08];
    v13[0] = v6;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v9 = [a1 _errorWithCode:a3 userInfo:v8];
  }

  else
  {
    v9 = [a1 errorWithCode:a3];
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)errorWithCode:(int64_t)a3 underlyingError:(id)a4 debugDescription:(id)a5
{
  v19[2] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = v8;
  if (v8)
  {
    v10 = *MEMORY[0x1E696AA08];
    v18[0] = *MEMORY[0x1E696A278];
    v18[1] = v10;
    v19[0] = a5;
    v19[1] = v8;
    v11 = MEMORY[0x1E695DF20];
    v12 = a5;
    v13 = [v11 dictionaryWithObjects:v19 forKeys:v18 count:2];

    v14 = [a1 _errorWithCode:a3 userInfo:v13];
  }

  else
  {
    v15 = a5;
    v14 = [a1 errorWithCode:a3 debugDescription:v15];
  }

  v16 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (BOOL)error:(id)a3 hasCode:(int64_t)a4 subcode:(int64_t)a5
{
  v7 = a3;
  v8 = [v7 domain];
  v9 = [v8 isEqualToString:@"com.apple.LocalAuthentication"];

  if (v9 && [v7 code] == a4)
  {
    v10 = [v7 userInfo];
    v11 = [v10 objectForKeyedSubscript:@"Subcode"];

    if (v11)
    {
      v12 = [v11 integerValue];
    }

    else
    {
      v12 = 0;
    }

    v13 = v12 == a5;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)_errorWithCode:(int64_t)a3 userInfo:(id)a4
{
  v6 = [a4 mutableCopy];
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
    v12 = [a1 localizedStringForError:a3];
    if (v12)
    {
      [v9 setObject:v12 forKey:v10];
    }
  }

  v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.LocalAuthentication" code:a3 userInfo:v9];

  return v13;
}

+ (id)localizedStringForError:(int64_t)a3
{
  v3 = 0;
  if (a3 > -12)
  {
    if (a3 <= -7)
    {
      if (a3 > -10)
      {
        if (a3 != -9)
        {
          if (a3 == -8)
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

      if (a3 == -11)
      {
        v3 = +[LACLocalization errorCompanionNotAvailable];
        goto LABEL_31;
      }
    }

    else
    {
      if (a3 <= -4)
      {
        if (a3 == -6)
        {
LABEL_17:
          v3 = +[LACLocalization errorBiometryNotAvailable];
          goto LABEL_31;
        }

        if (a3 == -5)
        {
          v3 = +[LACLocalization errorPasscodeNotSet];
          goto LABEL_31;
        }

        goto LABEL_19;
      }

      if (a3 != -1)
      {
        if (a3 == -2)
        {
          goto LABEL_19;
        }

        if (a3 != -3)
        {
          goto LABEL_31;
        }
      }
    }

LABEL_3:
    v3 = +[LACLocalization errorAuthenticationFailure];
    goto LABEL_31;
  }

  switch(a3)
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