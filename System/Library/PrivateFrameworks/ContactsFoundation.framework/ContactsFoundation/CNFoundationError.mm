@interface CNFoundationError
+ (BOOL)ifResultIsNo:(BOOL)a3 setOutputError:(id *)a4 withBlock:(id)a5;
+ (BOOL)isCertificateError:(id)a3;
+ (BOOL)isError:(id)a3 errorWithDomain:(id)a4 code:(int64_t)a5;
+ (BOOL)isFileNotFoundError:(id)a3;
+ (BOOL)isXPCServiceError:(id)a3;
+ (id)errorWithCode:(int64_t)a3 underlyingError:(id)a4;
+ (id)errorWithCode:(int64_t)a3 underlyingException:(id)a4;
+ (id)errorWithErrno;
+ (id)errorWithErrnoAndUserInfo:(id)a3;
+ (id)ifResultIsNil:(id)a3 setOutputError:(id *)a4 toError:(id)a5;
+ (id)ifResultIsNil:(id)a3 setOutputError:(id *)a4 withBlock:(id)a5;
@end

@implementation CNFoundationError

+ (BOOL)isFileNotFoundError:(id)a3
{
  v4 = a3;
  v5 = *MEMORY[0x1E696A250];
  if ([a1 isError:v4 errorWithDomain:*MEMORY[0x1E696A250] code:260] & 1) != 0 || (objc_msgSend(a1, "isError:errorWithDomain:code:", v4, v5, 4))
  {
    v6 = 1;
  }

  else
  {
    v6 = [a1 isError:v4 errorWithDomain:*MEMORY[0x1E696A798] code:2];
  }

  return v6;
}

+ (BOOL)isCertificateError:(id)a3
{
  v4 = a3;
  v5 = *MEMORY[0x1E696A978];
  if ([a1 isError:v4 errorWithDomain:*MEMORY[0x1E696A978] code:-1203] & 1) != 0 || (objc_msgSend(a1, "isError:errorWithDomain:code:", v4, v5, -1201) & 1) != 0 || (objc_msgSend(a1, "isError:errorWithDomain:code:", v4, v5, -1204))
  {
    v6 = 1;
  }

  else
  {
    v6 = [a1 isError:v4 errorWithDomain:v5 code:-1202];
  }

  return v6;
}

+ (BOOL)isXPCServiceError:(id)a3
{
  v3 = a3;
  if ([v3 code] >= 4096 && objc_msgSend(v3, "code") <= 4224)
  {
    v5 = [v3 domain];
    v4 = [v5 isEqualToString:*MEMORY[0x1E696A250]];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)isError:(id)a3 errorWithDomain:(id)a4 code:(int64_t)a5
{
  v7 = a3;
  v8 = a4;
  if ([v7 code] == a5)
  {
    v9 = [v7 domain];
    v10 = [v8 isEqualToString:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)errorWithErrno
{
  v3 = *__error();

  return [a1 errorWithErrno:v3 userInfo:0];
}

+ (id)errorWithErrnoAndUserInfo:(id)a3
{
  v4 = a3;
  v5 = [a1 errorWithErrno:*__error() userInfo:v4];

  return v5;
}

+ (id)errorWithCode:(int64_t)a3 underlyingError:(id)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = v5;
  if (v5)
  {
    v11 = *MEMORY[0x1E696AA08];
    v12[0] = v5;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  }

  else
  {
    v7 = 0;
  }

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CNContactsFoundationErrorDomain" code:a3 userInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)errorWithCode:(int64_t)a3 underlyingException:(id)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = v5;
  if (v5)
  {
    v11 = @"com.apple.contacts.underlying-exception";
    v12[0] = v5;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  }

  else
  {
    v7 = 0;
  }

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CNContactsFoundationErrorDomain" code:a3 userInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)ifResultIsNil:(id)a3 setOutputError:(id *)a4 toError:(id)a5
{
  v8 = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58__CNFoundationError_ifResultIsNil_setOutputError_toError___block_invoke;
  v12[3] = &unk_1E6ED8090;
  v13 = v8;
  v9 = v8;
  v10 = [a1 ifResultIsNil:a3 setOutputError:a4 withBlock:v12];

  return v10;
}

+ (id)ifResultIsNil:(id)a3 setOutputError:(id *)a4 withBlock:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = v8;
  if (v7)
  {
    v10 = v7;
  }

  else if (a4)
  {
    *a4 = (*(v8 + 2))(v8);
  }

  return v7;
}

+ (BOOL)ifResultIsNo:(BOOL)a3 setOutputError:(id *)a4 withBlock:(id)a5
{
  if (a4 && !a3)
  {
    *a4 = (*(a5 + 2))(a5, a2);
  }

  return a3;
}

@end