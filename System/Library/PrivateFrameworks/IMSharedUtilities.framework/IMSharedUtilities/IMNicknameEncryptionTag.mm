@interface IMNicknameEncryptionTag
+ (id)_tagWithDataRepresentation:(id)representation length:(unint64_t)length error:(id *)error;
+ (id)_tagWithStringRepresentation:(id)representation length:(unint64_t)length error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToTag:(id)tag error:(id *)error;
- (IMNicknameEncryptionTag)initWithDataRepresentation:(id)representation;
- (NSString)stringRepresentation;
- (id)description;
- (unint64_t)hash;
@end

@implementation IMNicknameEncryptionTag

+ (id)_tagWithDataRepresentation:(id)representation length:(unint64_t)length error:(id *)error
{
  v20[1] = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  if ([representationCopy length] >= length)
  {
    v17 = [representationCopy subdataWithRange:{0, length}];

    v16 = [[self alloc] initWithDataRepresentation:v17];
  }

  else
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = [representationCopy length];

    v11 = [v9 stringWithFormat:@"Provided tag is too short {tagLength: %tu, expectedLength: %tu}", v10, length];
    v12 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E696A278];
    v20[0] = v11;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v14 = [v12 errorWithDomain:@"IMNicknameEncryptionHelpersErrorDomain" code:-2001 userInfo:v13];

    if (error)
    {
      v15 = v14;
      *error = v14;
    }

    v16 = 0;
  }

  return v16;
}

+ (id)_tagWithStringRepresentation:(id)representation length:(unint64_t)length error:(id *)error
{
  v8 = MEMORY[0x1E695DEF0];
  representationCopy = representation;
  v10 = [[v8 alloc] initWithBase64EncodedString:representationCopy options:0];

  v11 = [self _tagWithDataRepresentation:v10 length:length error:error];

  return v11;
}

- (IMNicknameEncryptionTag)initWithDataRepresentation:(id)representation
{
  representationCopy = representation;
  v9.receiver = self;
  v9.super_class = IMNicknameEncryptionTag;
  v6 = [(IMNicknameEncryptionTag *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataRepresentation, representation);
  }

  return v7;
}

- (NSString)stringRepresentation
{
  dataRepresentation = [(IMNicknameEncryptionTag *)self dataRepresentation];
  v3 = [dataRepresentation base64EncodedStringWithOptions:0];

  return v3;
}

- (BOOL)isEqualToTag:(id)tag error:(id *)error
{
  v18[1] = *MEMORY[0x1E69E9840];
  tagCopy = tag;
  dataRepresentation = [(IMNicknameEncryptionTag *)self dataRepresentation];
  bytes = [dataRepresentation bytes];
  dataRepresentation2 = [tagCopy dataRepresentation];

  bytes2 = [dataRepresentation2 bytes];
  dataRepresentation3 = [(IMNicknameEncryptionTag *)self dataRepresentation];
  v12 = timingsafe_bcmp(bytes, bytes2, [dataRepresentation3 length]);

  if (error && v12)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Tags mismatch {className: %@}", objc_opt_class()];
    v14 = MEMORY[0x1E696ABC0];
    v17 = *MEMORY[0x1E696A278];
    v18[0] = v13;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    *error = [v14 errorWithDomain:@"IMNicknameEncryptionHelpersErrorDomain" code:-2001 userInfo:v15];
  }

  return v12 == 0;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(IMNicknameEncryptionTag *)self isEqualToTag:equalCopy error:0];

  return v5;
}

- (unint64_t)hash
{
  v3 = [objc_opt_class() hash];
  dataRepresentation = [(IMNicknameEncryptionTag *)self dataRepresentation];
  v5 = v3 ^ [dataRepresentation hash];

  return v5 ^ 0x11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  dataRepresentation = [(IMNicknameEncryptionTag *)self dataRepresentation];
  v6 = [v3 stringWithFormat:@"<%@: %p %@>", v4, self, dataRepresentation];

  return v6;
}

@end