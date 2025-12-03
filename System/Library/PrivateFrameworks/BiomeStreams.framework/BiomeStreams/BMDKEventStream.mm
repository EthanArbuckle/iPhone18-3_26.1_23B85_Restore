@interface BMDKEventStream
+ (id)dkStreamName:(id)name;
+ (id)eventStreamPropertiesForBiomeStreamName:(id)name;
+ (id)streamNameFromDKStreamName:(id)name;
- (BMDKEventStream)init;
- (BMDKEventStream)initWithDKStreamIdentifier:(id)identifier;
- (BMDKEventStream)initWithStreamIdentifier:(id)identifier contentProtection:(unint64_t)protection pruningPolicy:(id)policy domain:(unint64_t)domain;
- (id)publisher;
@end

@implementation BMDKEventStream

+ (id)streamNameFromDKStreamName:(id)name
{
  v23 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v4 = [nameCopy componentsSeparatedByString:@"/"];
  v5 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:{objc_msgSend(nameCopy, "length")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        if ([v11 length])
        {
          v12 = [v5 length];
          v13 = upperCaseInitialCharacter(v11);
          v14 = v13;
          if (v12)
          {
            [v5 appendFormat:@".%@", v13];
          }

          else
          {
            [v5 appendString:v13];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v15 = [@"_DKEvent." stringByAppendingString:v5];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (id)dkStreamName:(id)name
{
  v14 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  if ([nameCopy hasPrefix:@"_DKEvent."])
  {
    v4 = [nameCopy substringFromIndex:{objc_msgSend(@"_DKEvent", "length")}];

    bzero(v13, 0x400uLL);
    if ([v4 getCString:v13 maxLength:1024 encoding:4])
    {
      if ([v4 length])
      {
        v5 = 0;
        v6 = 0;
        do
        {
          v7 = v13[v5];
          v8 = v7 | 0x20;
          if ((v6 & ((v7 - 65) < 0x1A)) == 0)
          {
            v8 = v13[v5];
          }

          if (v7 == 46)
          {
            v6 = 1;
          }

          else
          {
            v6 ^= v6 & ((v7 - 65) < 0x1A);
          }

          if (v7 == 46)
          {
            v9 = 47;
          }

          else
          {
            v9 = v8;
          }

          v13[v5++] = v9;
        }

        while (v5 < [v4 length]);
      }

      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v13];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
    v4 = nameCopy;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)eventStreamPropertiesForBiomeStreamName:(id)name
{
  v3 = [self dkStreamName:name];
  v4 = [get_CDEventStreamsClass() eventStreamPropertiesForKBName:v3];

  return v4;
}

- (BMDKEventStream)init
{
  result = [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Must use designated initializer for BMDKEventStream"];
  __break(1u);
  return result;
}

- (BMDKEventStream)initWithDKStreamIdentifier:(id)identifier
{
  v19 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = [get_CDEventStreamsClass() eventStreamPropertiesForKBName:identifierCopy];
  v6 = objc_alloc(MEMORY[0x1E698F120]);
  [v5 timeToLive];
  v7 = [v6 initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:?];
  v8 = [BMDKEventStream streamNameFromDKStreamName:identifierCopy];

  v9 = BMServiceDomainForStream();
  v10 = __biome_log_for_category();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = BMStringForServiceDomain();
    v15 = 138543618;
    v16 = v8;
    v17 = 2114;
    v18 = v11;
    _os_log_impl(&dword_1848EE000, v10, OS_LOG_TYPE_INFO, "Initializing BMDKEventStream %{public}@ with domain %{public}@", &v15, 0x16u);
  }

  v12 = [(BMDKEventStream *)self initWithStreamIdentifier:v8 contentProtection:3 pruningPolicy:v7 domain:v9];
  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (BMDKEventStream)initWithStreamIdentifier:(id)identifier contentProtection:(unint64_t)protection pruningPolicy:(id)policy domain:(unint64_t)domain
{
  identifierCopy = identifier;
  policyCopy = policy;
  if (!identifierCopy)
  {
    [BMDKEventStream initWithStreamIdentifier:a2 contentProtection:self pruningPolicy:? domain:?];
  }

  v21.receiver = self;
  v21.super_class = BMDKEventStream;
  v14 = [(BMDKEventStream *)&v21 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_identifier, identifier);
    v16 = [MEMORY[0x1E698F130] newRestrictedStreamWithSegmentSize:0x100000 protectionClass:protection domain:domain];
    [v16 setPruningPolicy:policyCopy];
    v17 = [BMStoreStream alloc];
    v18 = [(BMStoreStream *)v17 initWithStreamIdentifier:identifierCopy storeConfig:v16 streamType:2 eventDataClass:objc_opt_class() useCase:*MEMORY[0x1E698E918]];
    storeStream = v15->_storeStream;
    v15->_storeStream = v18;
  }

  return v15;
}

- (id)publisher
{
  v3 = [BMDSLStreamPublisher alloc];
  identifier = [(BMDKEventStream *)self identifier];
  v5 = [(BMDSLStreamPublisher *)v3 initWithIdentifier:identifier streamType:2];

  return v5;
}

@end