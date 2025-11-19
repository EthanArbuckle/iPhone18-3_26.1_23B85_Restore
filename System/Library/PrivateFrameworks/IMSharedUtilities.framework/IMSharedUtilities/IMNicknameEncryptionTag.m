@interface IMNicknameEncryptionTag
+ (id)_tagWithDataRepresentation:(id)a3 length:(unint64_t)a4 error:(id *)a5;
+ (id)_tagWithStringRepresentation:(id)a3 length:(unint64_t)a4 error:(id *)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToTag:(id)a3 error:(id *)a4;
- (IMNicknameEncryptionTag)initWithDataRepresentation:(id)a3;
- (NSString)stringRepresentation;
- (id)description;
- (unint64_t)hash;
@end

@implementation IMNicknameEncryptionTag

+ (id)_tagWithDataRepresentation:(id)a3 length:(unint64_t)a4 error:(id *)a5
{
  v20[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  if ([v8 length] >= a4)
  {
    v17 = [v8 subdataWithRange:{0, a4}];

    v16 = [[a1 alloc] initWithDataRepresentation:v17];
  }

  else
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = [v8 length];

    v11 = [v9 stringWithFormat:@"Provided tag is too short {tagLength: %tu, expectedLength: %tu}", v10, a4];
    v12 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E696A278];
    v20[0] = v11;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v14 = [v12 errorWithDomain:@"IMNicknameEncryptionHelpersErrorDomain" code:-2001 userInfo:v13];

    if (a5)
    {
      v15 = v14;
      *a5 = v14;
    }

    v16 = 0;
  }

  return v16;
}

+ (id)_tagWithStringRepresentation:(id)a3 length:(unint64_t)a4 error:(id *)a5
{
  v8 = MEMORY[0x1E695DEF0];
  v9 = a3;
  v10 = [[v8 alloc] initWithBase64EncodedString:v9 options:0];

  v11 = [a1 _tagWithDataRepresentation:v10 length:a4 error:a5];

  return v11;
}

- (IMNicknameEncryptionTag)initWithDataRepresentation:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IMNicknameEncryptionTag;
  v6 = [(IMNicknameEncryptionTag *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataRepresentation, a3);
  }

  return v7;
}

- (NSString)stringRepresentation
{
  v2 = [(IMNicknameEncryptionTag *)self dataRepresentation];
  v3 = [v2 base64EncodedStringWithOptions:0];

  return v3;
}

- (BOOL)isEqualToTag:(id)a3 error:(id *)a4
{
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(IMNicknameEncryptionTag *)self dataRepresentation];
  v8 = [v7 bytes];
  v9 = [v6 dataRepresentation];

  v10 = [v9 bytes];
  v11 = [(IMNicknameEncryptionTag *)self dataRepresentation];
  v12 = timingsafe_bcmp(v8, v10, [v11 length]);

  if (a4 && v12)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Tags mismatch {className: %@}", objc_opt_class()];
    v14 = MEMORY[0x1E696ABC0];
    v17 = *MEMORY[0x1E696A278];
    v18[0] = v13;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    *a4 = [v14 errorWithDomain:@"IMNicknameEncryptionHelpersErrorDomain" code:-2001 userInfo:v15];
  }

  return v12 == 0;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(IMNicknameEncryptionTag *)self isEqualToTag:v4 error:0];

  return v5;
}

- (unint64_t)hash
{
  v3 = [objc_opt_class() hash];
  v4 = [(IMNicknameEncryptionTag *)self dataRepresentation];
  v5 = v3 ^ [v4 hash];

  return v5 ^ 0x11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(IMNicknameEncryptionTag *)self dataRepresentation];
  v6 = [v3 stringWithFormat:@"<%@: %p %@>", v4, self, v5];

  return v6;
}

@end