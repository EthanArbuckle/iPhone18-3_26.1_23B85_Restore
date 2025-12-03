@interface NSError(MRAdditions)
- (_MRErrorProtobuf)mr_protobuf;
- (id)mr_errorByEnvelopingWithMRError:()MRAdditions;
- (id)mr_errorByEnvelopingWithMRError:()MRAdditions format:;
- (id)mr_initWithProtobuf:()MRAdditions;
- (id)recursiveUnderlyingError;
- (uint64_t)initWithMRError:()MRAdditions description:underlyingError:;
- (uint64_t)initWithMRError:()MRAdditions description:underlyingErrors:;
- (uint64_t)initWithMRError:()MRAdditions format:;
- (uint64_t)initWithMRError:()MRAdditions userInfo:;
- (uint64_t)mr_isMediaRemoteError;
@end

@implementation NSError(MRAdditions)

- (uint64_t)initWithMRError:()MRAdditions format:
{
  if (a4)
  {
    v11 = MEMORY[0x1E696AEC0];
    v12 = a4;
    v13 = [[v11 alloc] initWithFormat:v12 arguments:&a9];
  }

  else
  {
    v13 = 0;
  }

  v14 = [self initWithMRError:a3 description:v13];

  return v14;
}

- (uint64_t)initWithMRError:()MRAdditions description:underlyingErrors:
{
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v11 = v10;
  if (v8)
  {
    [v10 setObject:v8 forKeyedSubscript:*MEMORY[0x1E696A588]];
  }

  firstObject = [v9 firstObject];
  if ([v9 count] >= 2)
  {
    v13 = *MEMORY[0x1E696A750];
    v14 = v11;
    v15 = v9;
LABEL_7:
    [v14 setObject:v15 forKeyedSubscript:v13];
    goto LABEL_8;
  }

  if (firstObject)
  {
    v13 = *MEMORY[0x1E696AA08];
    v14 = v11;
    v15 = firstObject;
    goto LABEL_7;
  }

LABEL_8:
  v16 = [self initWithMRError:a3 userInfo:v11];

  return v16;
}

- (uint64_t)initWithMRError:()MRAdditions description:underlyingError:
{
  v15 = *MEMORY[0x1E69E9840];
  v8 = a4;
  if (a5)
  {
    v14 = a5;
    v9 = MEMORY[0x1E695DEC8];
    v10 = a5;
    a5 = [v9 arrayWithObjects:&v14 count:1];
  }

  v11 = [self initWithMRError:a3 description:v8 underlyingErrors:{a5, v14, v15}];

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (uint64_t)initWithMRError:()MRAdditions userInfo:
{
  if (a4)
  {
    v6 = [a4 mutableCopy];
  }

  else
  {
    v6 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
  }

  v7 = v6;
  v8 = MRMediaRemoteErrorCopyDescription(a3);
  [v7 setObject:v8 forKeyedSubscript:*MEMORY[0x1E696A578]];

  v9 = [self initWithDomain:@"kMRMediaRemoteFrameworkErrorDomain" code:a3 userInfo:v7];
  return v9;
}

- (id)mr_errorByEnvelopingWithMRError:()MRAdditions
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc(MEMORY[0x1E696ABC0]);
  v10 = *MEMORY[0x1E696AA08];
  v11[0] = self;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v5 initWithMRError:a3 userInfo:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)mr_errorByEnvelopingWithMRError:()MRAdditions format:
{
  v11 = a4;
  if (v11)
  {
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v11 arguments:&a9];
  }

  else
  {
    v12 = 0;
  }

  v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v13 setObject:self forKeyedSubscript:*MEMORY[0x1E696AA08]];
  if (v12)
  {
    [v13 setObject:v12 forKeyedSubscript:*MEMORY[0x1E696A578]];
  }

  v14 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:a3 userInfo:v13];

  return v14;
}

- (id)recursiveUnderlyingError
{
  userInfo = [self userInfo];
  v3 = *MEMORY[0x1E696AA08];
  v4 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696AA08]];
  v5 = v4;
  if (v4)
  {
    msv_underlyingError = v4;
  }

  else
  {
    msv_underlyingError = [self msv_underlyingError];
  }

  for (i = msv_underlyingError; ; i = v13)
  {

    userInfo2 = [i userInfo];
    v9 = [userInfo2 objectForKeyedSubscript:v3];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      goto LABEL_8;
    }

    msv_underlyingError2 = [i msv_underlyingError];

    if (!msv_underlyingError2)
    {
      break;
    }

LABEL_8:
    userInfo = [i userInfo];
    v11 = [userInfo objectForKeyedSubscript:v3];
    v5 = v11;
    if (v11)
    {
      msv_underlyingError3 = v11;
    }

    else
    {
      msv_underlyingError3 = [i msv_underlyingError];
    }

    v13 = msv_underlyingError3;
  }

  return i;
}

- (uint64_t)mr_isMediaRemoteError
{
  domain = [self domain];
  v2 = [domain isEqualToString:@"kMRMediaRemoteFrameworkErrorDomain"];

  return v2;
}

- (id)mr_initWithProtobuf:()MRAdditions
{
  if (a3)
  {
    v4 = a3;
    userInfo = [v4 userInfo];
    v6 = _MRProtoUtilsNSDictionaryFromProtoDictionary(userInfo);

    if (v6)
    {
      v7 = [v6 mutableCopy];
    }

    else
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v9 = v7;
    localizedDescription = [v4 localizedDescription];
    [v9 setObject:localizedDescription forKeyedSubscript:*MEMORY[0x1E696A578]];

    localizedFailureReason = [v4 localizedFailureReason];
    [v9 setObject:localizedFailureReason forKeyedSubscript:*MEMORY[0x1E696A588]];

    debugMessage = [v4 debugMessage];
    [v9 setObject:debugMessage forKeyedSubscript:*MEMORY[0x1E696A278]];

    underlyingErrors = [v4 underlyingErrors];
    v14 = [underlyingErrors msv_map:&__block_literal_global_68];
    [v9 setObject:v14 forKeyedSubscript:*MEMORY[0x1E696A750]];

    selfCopy = self;
    domain = [v4 domain];
    LODWORD(v14) = [v4 code];

    v8 = [selfCopy initWithDomain:domain code:v14 userInfo:v9];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (_MRErrorProtobuf)mr_protobuf
{
  v2 = objc_alloc_init(_MRErrorProtobuf);
  domain = [self domain];
  [(_MRErrorProtobuf *)v2 setDomain:domain];

  -[_MRErrorProtobuf setCode:](v2, "setCode:", [self code]);
  userInfo = [self userInfo];
  v5 = [userInfo mutableCopy];

  v6 = *MEMORY[0x1E696A578];
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x1E696A578]];
  [(_MRErrorProtobuf *)v2 setLocalizedDescription:v7];

  [v5 setObject:0 forKeyedSubscript:v6];
  v8 = *MEMORY[0x1E696A588];
  v9 = [v5 objectForKeyedSubscript:*MEMORY[0x1E696A588]];
  [(_MRErrorProtobuf *)v2 setLocalizedFailureReason:v9];

  [v5 setObject:0 forKeyedSubscript:v8];
  v10 = *MEMORY[0x1E696A278];
  v11 = [v5 objectForKeyedSubscript:*MEMORY[0x1E696A278]];
  [(_MRErrorProtobuf *)v2 setDebugMessage:v11];

  [v5 setObject:0 forKeyedSubscript:v10];
  underlyingErrors = [self underlyingErrors];
  v13 = [underlyingErrors msv_map:&__block_literal_global_8_2];
  v14 = [v13 mutableCopy];
  [(_MRErrorProtobuf *)v2 setUnderlyingErrors:v14];

  [v5 setObject:0 forKeyedSubscript:*MEMORY[0x1E696AA08]];
  [v5 setObject:0 forKeyedSubscript:*MEMORY[0x1E696A750]];
  v15 = _MRProtoUtilsProtoDictionaryFromNSDictionary(v5);
  [(_MRErrorProtobuf *)v2 setUserInfo:v15];

  return v2;
}

@end