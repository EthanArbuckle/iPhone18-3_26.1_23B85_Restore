@interface CNFoundationError
+ (BOOL)ifResultIsNo:(BOOL)no setOutputError:(id *)error withBlock:(id)block;
+ (BOOL)isCertificateError:(id)error;
+ (BOOL)isError:(id)error errorWithDomain:(id)domain code:(int64_t)code;
+ (BOOL)isFileNotFoundError:(id)error;
+ (BOOL)isXPCServiceError:(id)error;
+ (id)errorWithCode:(int64_t)code underlyingError:(id)error;
+ (id)errorWithCode:(int64_t)code underlyingException:(id)exception;
+ (id)errorWithErrno;
+ (id)errorWithErrnoAndUserInfo:(id)info;
+ (id)ifResultIsNil:(id)nil setOutputError:(id *)error toError:(id)toError;
+ (id)ifResultIsNil:(id)nil setOutputError:(id *)error withBlock:(id)block;
@end

@implementation CNFoundationError

+ (BOOL)isFileNotFoundError:(id)error
{
  errorCopy = error;
  v5 = *MEMORY[0x1E696A250];
  if ([self isError:errorCopy errorWithDomain:*MEMORY[0x1E696A250] code:260] & 1) != 0 || (objc_msgSend(self, "isError:errorWithDomain:code:", errorCopy, v5, 4))
  {
    v6 = 1;
  }

  else
  {
    v6 = [self isError:errorCopy errorWithDomain:*MEMORY[0x1E696A798] code:2];
  }

  return v6;
}

+ (BOOL)isCertificateError:(id)error
{
  errorCopy = error;
  v5 = *MEMORY[0x1E696A978];
  if ([self isError:errorCopy errorWithDomain:*MEMORY[0x1E696A978] code:-1203] & 1) != 0 || (objc_msgSend(self, "isError:errorWithDomain:code:", errorCopy, v5, -1201) & 1) != 0 || (objc_msgSend(self, "isError:errorWithDomain:code:", errorCopy, v5, -1204))
  {
    v6 = 1;
  }

  else
  {
    v6 = [self isError:errorCopy errorWithDomain:v5 code:-1202];
  }

  return v6;
}

+ (BOOL)isXPCServiceError:(id)error
{
  errorCopy = error;
  if ([errorCopy code] >= 4096 && objc_msgSend(errorCopy, "code") <= 4224)
  {
    domain = [errorCopy domain];
    v4 = [domain isEqualToString:*MEMORY[0x1E696A250]];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)isError:(id)error errorWithDomain:(id)domain code:(int64_t)code
{
  errorCopy = error;
  domainCopy = domain;
  if ([errorCopy code] == code)
  {
    domain = [errorCopy domain];
    v10 = [domainCopy isEqualToString:domain];
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

  return [self errorWithErrno:v3 userInfo:0];
}

+ (id)errorWithErrnoAndUserInfo:(id)info
{
  infoCopy = info;
  v5 = [self errorWithErrno:*__error() userInfo:infoCopy];

  return v5;
}

+ (id)errorWithCode:(int64_t)code underlyingError:(id)error
{
  v12[1] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v6 = errorCopy;
  if (errorCopy)
  {
    v11 = *MEMORY[0x1E696AA08];
    v12[0] = errorCopy;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  }

  else
  {
    v7 = 0;
  }

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CNContactsFoundationErrorDomain" code:code userInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)errorWithCode:(int64_t)code underlyingException:(id)exception
{
  v12[1] = *MEMORY[0x1E69E9840];
  exceptionCopy = exception;
  v6 = exceptionCopy;
  if (exceptionCopy)
  {
    v11 = @"com.apple.contacts.underlying-exception";
    v12[0] = exceptionCopy;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  }

  else
  {
    v7 = 0;
  }

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CNContactsFoundationErrorDomain" code:code userInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)ifResultIsNil:(id)nil setOutputError:(id *)error toError:(id)toError
{
  toErrorCopy = toError;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58__CNFoundationError_ifResultIsNil_setOutputError_toError___block_invoke;
  v12[3] = &unk_1E6ED8090;
  v13 = toErrorCopy;
  v9 = toErrorCopy;
  v10 = [self ifResultIsNil:nil setOutputError:error withBlock:v12];

  return v10;
}

+ (id)ifResultIsNil:(id)nil setOutputError:(id *)error withBlock:(id)block
{
  nilCopy = nil;
  blockCopy = block;
  v9 = blockCopy;
  if (nilCopy)
  {
    v10 = nilCopy;
  }

  else if (error)
  {
    *error = (*(blockCopy + 2))(blockCopy);
  }

  return nilCopy;
}

+ (BOOL)ifResultIsNo:(BOOL)no setOutputError:(id *)error withBlock:(id)block
{
  if (error && !no)
  {
    *error = (*(block + 2))(block, a2);
  }

  return no;
}

@end