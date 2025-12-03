@interface BMDSLStreamPublisher
+ (BOOL)isStreamInfoValidForIdentifier:(id)identifier basePath:(id)path streamType:(unint64_t)type;
+ (unint64_t)streamTypeForDSLType:(unint64_t)type;
- (BMDSLStreamPublisher)initWithBookmark:(id)bookmark identifier:(id)identifier name:(id)name version:(unsigned int)version streamType:(unint64_t)type basePath:(id)path eventDataClass:(Class)class useCase:(id)self0;
- (BMDSLStreamPublisher)initWithCoder:(id)coder;
- (BMDSLStreamPublisher)initWithDictionary:(id)dictionary error:(id *)error;
- (BMDSLStreamPublisher)initWithPublisher:(id)publisher identifier:(id)identifier streamType:(unint64_t)type;
- (id)bpsPublisher;
- (id)storeStream;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BMDSLStreamPublisher

- (id)bpsPublisher
{
  v3 = [BMDSLStreamPublisher streamTypeForDSLType:[(BMDSLStreamPublisher *)self streamType]];
  currentProcessValidator = [MEMORY[0x1E698E898] currentProcessValidator];
  if ([currentProcessValidator passthrough])
  {
    v5 = __biome_log_for_category();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(BMDSLStreamPublisher *)self bpsPublisher];
    }

LABEL_6:
    storeStream = [(BMDSLStreamPublisher *)self storeStream];
    backingEvents = [(BMDSLStreamPublisher *)self backingEvents];

    if (backingEvents)
    {
      backingEvents2 = [(BMDSLStreamPublisher *)self backingEvents];
      bpsPublisher = [backingEvents2 bpsPublisher];
    }

    else
    {
      bookmarkingTime = [(BMDSLStreamPublisher *)self bookmarkingTime];

      if (!bookmarkingTime)
      {
        bpsPublisher = [storeStream publisherFromStartTime:0.0];
        goto LABEL_11;
      }

      backingEvents2 = [(BMDSLStreamPublisher *)self bookmarkingTime];
      bookmarkingTime2 = [(BMDSLStreamPublisher *)self bookmarkingTime];
      bpsPublisher = [storeStream publisherWithStartTime:backingEvents2 endTime:bookmarkingTime2 maxEvents:0 lastN:0 reversed:0];
    }

LABEL_11:
    v14 = BPSPipelineSupportsPullBasedPublishers();
    bookmark = [(BMDSLStreamPublisher *)self bookmark];
    if (v14)
    {
      [bpsPublisher applyBookmarkNode:bookmark];

      v16 = bpsPublisher;
    }

    else
    {
      v16 = [bpsPublisher withBookmark:bookmark];
    }

    goto LABEL_18;
  }

  currentProcessValidator2 = [MEMORY[0x1E698E898] currentProcessValidator];
  v7 = [currentProcessValidator2 isStreamTypeAllowed:v3];

  if (v7)
  {
    goto LABEL_6;
  }

  storeStream = __biome_log_for_category();
  if (os_log_type_enabled(storeStream, OS_LOG_TYPE_ERROR))
  {
    [(BMDSLStreamPublisher *)self bpsPublisher];
  }

  v16 = 0;
LABEL_18:

  return v16;
}

- (id)storeStream
{
  v3 = objc_opt_class();
  identifier = [(BMDSLStreamPublisher *)self identifier];
  basePath = [(BMDSLStreamPublisher *)self basePath];
  LODWORD(v3) = [v3 isStreamInfoValidForIdentifier:identifier basePath:basePath streamType:{-[BMDSLStreamPublisher streamType](self, "streamType")}];

  if (v3)
  {
    if ([(BMDSLStreamPublisher *)self streamType]== 2)
    {
      identifier2 = [(BMDSLStreamPublisher *)self identifier];
      v7 = [identifier2 componentsSeparatedByString:@":"];
      firstObject = [v7 firstObject];

      v9 = BiomeLibraryAndInternalLibraryNode();
      v10 = [v9 streamWithIdentifier:firstObject error:0];

      if (v10)
      {
        identifier3 = [(BMDSLStreamPublisher *)self identifier];
        v12 = [identifier3 hasSuffix:@":subscriptions"];

        if (v12)
        {
          v13 = __biome_log_for_category();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1848EE000, v13, OS_LOG_TYPE_DEFAULT, "Returning subscriptionStoreStreamForUseCase", buf, 2u);
          }

          if (self->_useCase)
          {
            useCase = self->_useCase;
          }

          else
          {
            useCase = *MEMORY[0x1E698E928];
          }

          v15 = [v10 subscriptionStoreStreamForUseCase:useCase];
        }

        else
        {
          identifier4 = [(BMDSLStreamPublisher *)self identifier];
          v30 = [identifier4 hasSuffix:@":tombstones"];

          if (v30)
          {
            v31 = __biome_log_for_category();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              *v48 = 0;
              _os_log_impl(&dword_1848EE000, v31, OS_LOG_TYPE_DEFAULT, "Returning tombstoneStoreStreamForUseCase", v48, 2u);
            }

            if (self->_useCase)
            {
              v32 = self->_useCase;
            }

            else
            {
              v32 = *MEMORY[0x1E698E928];
            }

            v15 = [v10 tombstoneStoreStreamForUseCase:v32];
          }

          else
          {
            configuration = [v10 configuration];
            v34 = [objc_msgSend(configuration "eventClass")];

            if ((v34 & 1) == 0)
            {
              v37 = MEMORY[0x1E698EA10];
              identifier5 = [(BMDSLStreamPublisher *)self identifier];
              v39 = [v37 legacyClassNameForLibraryStream:identifier5];

              if (v39 && (v40 = NSClassFromString(v39)) != 0)
              {
                eventClass = v40;
              }

              else
              {
                configuration2 = [v10 configuration];
                eventClass = [configuration2 eventClass];

                if (!eventClass)
                {
                  v43 = __biome_log_for_category();
                  if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
                  {
                    [(BMDSLStreamPublisher *)self storeStream];
                  }

                  eventClass = 0;
                }
              }

              v44 = [BMStoreStream alloc];
              identifier6 = [(BMDSLStreamPublisher *)self identifier];
              configuration3 = [v10 configuration];
              storeConfig = [configuration3 storeConfig];
              v20 = [(BMStoreStream *)v44 initWithRestrictedStreamIdentifier:identifier6 storeConfig:storeConfig eventDataClass:eventClass];

              goto LABEL_34;
            }

            if (self->_useCase)
            {
              v35 = self->_useCase;
            }

            else
            {
              v35 = *MEMORY[0x1E698E928];
            }

            v15 = [v10 _storeStreamForUseCase:v35];
          }
        }

        v20 = v15;
LABEL_34:

        goto LABEL_35;
      }
    }

    streamType = [(BMDSLStreamPublisher *)self streamType];
    switch(streamType)
    {
      case 3uLL:
        v24 = MEMORY[0x1E698F130];
        basePath2 = [(BMDSLStreamPublisher *)self basePath];
        firstObject = [v24 newPrivateStreamDefaultConfigurationWithStoreBasePath:basePath2];

        v26 = [BMStoreStream alloc];
        identifier7 = [(BMDSLStreamPublisher *)self identifier];
        v20 = [(BMStoreStream *)v26 initWithPrivateStreamIdentifier:identifier7 storeConfig:firstObject eventDataClass:[(BMDSLStreamPublisher *)self eventDataClass]];

LABEL_35:
        goto LABEL_40;
      case 2uLL:
        v21 = [BMStoreStream alloc];
        identifier8 = [(BMDSLStreamPublisher *)self identifier];
        v23 = [MEMORY[0x1E698F130] newRestrictedStreamDefaultConfigurationWithProtectionClass:3];
        v20 = [(BMStoreStream *)v21 initWithRestrictedStreamIdentifier:identifier8 storeConfig:v23 eventDataClass:[(BMDSLStreamPublisher *)self eventDataClass]];

        goto LABEL_40;
      case 1uLL:
        v17 = MEMORY[0x1E698E9E0];
        identifier9 = [(BMDSLStreamPublisher *)self identifier];
        v19 = [v17 streamForStreamIdentifier:identifier9];

        if (v19)
        {
          v20 = [[BMStoreStream alloc] initWithPublicStream:v19];
          goto LABEL_40;
        }

        v28 = __biome_log_for_category();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
        {
          [(BMDSLStreamPublisher *)self storeStream];
        }

        break;
      default:
        v28 = __biome_log_for_category();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
        {
          [(BMDSLStreamPublisher *)self storeStream];
        }

        break;
    }
  }

  v20 = 0;
LABEL_40:

  return v20;
}

- (BMDSLStreamPublisher)initWithBookmark:(id)bookmark identifier:(id)identifier name:(id)name version:(unsigned int)version streamType:(unint64_t)type basePath:(id)path eventDataClass:(Class)class useCase:(id)self0
{
  bookmarkCopy = bookmark;
  identifierCopy = identifier;
  pathCopy = path;
  caseCopy = case;
  if (version != 1)
  {
    v22 = __biome_log_for_category();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [BMDSLStreamPublisher initWithBookmark:version identifier:v22 name:? version:? streamType:? basePath:? eventDataClass:? useCase:?];
    }

    goto LABEL_10;
  }

  v26.receiver = self;
  v26.super_class = BMDSLStreamPublisher;
  bookmarkCopy = [(BMDSLBaseCodable *)&v26 initWithName:name version:1, caseCopy, bookmarkCopy];
  self = bookmarkCopy;
  if (bookmarkCopy)
  {
    classCopy = class;
    objc_storeStrong(&bookmarkCopy->_bookmark, bookmark);
    objc_storeStrong(&self->_identifier, identifier);
    self->_streamType = type;
    objc_storeStrong(&self->_basePath, path);
    if (!class)
    {
      classCopy = BMEventClassForStreamIdentifier(identifierCopy);
    }

    objc_storeStrong(&self->_eventDataClass, classCopy);
    objc_storeStrong(&self->_useCase, case);
    if (![objc_opt_class() isStreamInfoValidForIdentifier:identifierCopy basePath:pathCopy streamType:type])
    {
LABEL_10:
      selfCopy = 0;
      goto LABEL_11;
    }
  }

  self = self;
  selfCopy = self;
LABEL_11:

  return selfCopy;
}

- (BMDSLStreamPublisher)initWithPublisher:(id)publisher identifier:(id)identifier streamType:(unint64_t)type
{
  publisherCopy = publisher;
  identifierCopy = identifier;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__3;
  v18 = __Block_byref_object_dispose__3;
  v19 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__BMDSLStreamPublisher_initWithPublisher_identifier_streamType___block_invoke;
  v13[3] = &unk_1E6E53108;
  v13[4] = &v14;
  v10 = [publisherCopy sinkWithBookmark:0 completion:v13 receiveInput:&__block_literal_global_36];
  v11 = [(BMDSLStreamPublisher *)self initWithBookmark:v15[5] identifier:identifierCopy streamType:type];
  _Block_object_dispose(&v14, 8);

  return v11;
}

- (BMDSLStreamPublisher)initWithDictionary:(id)dictionary error:(id *)error
{
  v27[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v26 = @"streamIdentifier";
  v27[0] = objc_opt_class();
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
  v8 = BMDSLValidateDictionary();

  if (!v8)
  {
    v11 = [dictionaryCopy objectForKeyedSubscript:@"streamIdentifier"];
    libraryPublicStreamMigrationPaths = [MEMORY[0x1E698E9E0] libraryPublicStreamMigrationPaths];
    v13 = [libraryPublicStreamMigrationPaths objectForKeyedSubscript:v11];

    v14 = [dictionaryCopy objectForKeyedSubscript:@"streamType"];
    if (v14 && (v15 = v14, [dictionaryCopy objectForKeyedSubscript:@"streamType"], v16 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v16, v15, (isKindOfClass & 1) != 0))
    {
      v18 = [dictionaryCopy objectForKeyedSubscript:@"streamType"];
      unsignedIntegerValue = [v18 unsignedIntegerValue];
    }

    else
    {
      if (v13)
      {
        v20 = [MEMORY[0x1E698EA10] legacyClassNameForLibraryStream:v13];
        v18 = v20;
        if (v20)
        {
          eventClass = NSClassFromString(v20);
        }

        else
        {
          eventClass = 0;
        }

        unsignedIntegerValue = 1;
        goto LABEL_17;
      }

      v22 = BiomeLibraryAndInternalLibraryNode();
      v18 = [v22 streamWithIdentifier:v11 error:0];

      if (v18)
      {
        configuration = [v18 configuration];
        eventClass = [configuration eventClass];

        unsignedIntegerValue = 2;
LABEL_17:

        self = [(BMDSLStreamPublisher *)self initWithIdentifier:v11 streamType:unsignedIntegerValue eventDataClass:eventClass];
        selfCopy = self;
        goto LABEL_18;
      }

      unsignedIntegerValue = 0;
    }

    eventClass = 0;
    goto LABEL_17;
  }

  if (error)
  {
    v9 = v8;
    selfCopy = 0;
    *error = v8;
  }

  else
  {
    selfCopy = 0;
  }

LABEL_18:

  v24 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = BMDSLStreamPublisher;
  [(BMDSLBaseCodable *)&v14 encodeWithCoder:coderCopy];
  bookmark = [(BMDSLStreamPublisher *)self bookmark];

  if (bookmark)
  {
    bookmark2 = [(BMDSLStreamPublisher *)self bookmark];
    [coderCopy encodeObject:bookmark2 forKey:@"bookmark"];
  }

  identifier = [(BMDSLStreamPublisher *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"streamIdentifier"];

  basePath = [(BMDSLStreamPublisher *)self basePath];

  if (basePath)
  {
    basePath2 = [(BMDSLStreamPublisher *)self basePath];
    [coderCopy encodeObject:basePath2 forKey:@"basePath"];
  }

  if ([(BMDSLStreamPublisher *)self eventDataClass])
  {
    v10 = NSStringFromClass([(BMDSLStreamPublisher *)self eventDataClass]);
    [coderCopy encodeObject:v10 forKey:@"eventDataClass"];
  }

  useCase = [(BMDSLStreamPublisher *)self useCase];

  if (useCase)
  {
    useCase2 = [(BMDSLStreamPublisher *)self useCase];
    [coderCopy encodeObject:useCase2 forKey:@"useCase"];
  }

  v13 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:{-[BMDSLStreamPublisher streamType](self, "streamType")}];
  [coderCopy encodeObject:v13 forKey:@"streamType"];
}

- (BMDSLStreamPublisher)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = BMDSLStreamPublisher;
  v5 = [(BMDSLBaseCodable *)&v19 initWithCoder:coderCopy];
  if (!v5)
  {
    v13 = 0;
    goto LABEL_11;
  }

  v6 = v5;
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bookmark"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"streamIdentifier"];
  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"streamType"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"basePath"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"eventDataClass"];
  if (v10)
  {
    currentProcessValidator = [MEMORY[0x1E698E898] currentProcessValidator];
    v12 = [currentProcessValidator eventClassForString:v10];
  }

  else
  {
    v12 = BMEventClassForStreamIdentifier(v8);
    if (v12)
    {
      goto LABEL_7;
    }

    currentProcessValidator = __biome_log_for_category();
    if (os_log_type_enabled(currentProcessValidator, OS_LOG_TYPE_ERROR))
    {
      [BMDSLStreamPublisher initWithCoder:];
    }

    v12 = 0;
  }

LABEL_7:
  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"useCase"];
  integerValue = [v18 integerValue];
  if ([objc_opt_class() isStreamInfoValidForIdentifier:v8 basePath:v9 streamType:integerValue])
  {
    name = [(BMDSLBaseCodable *)v6 name];
    v6 = [(BMDSLStreamPublisher *)v6 initWithBookmark:v7 identifier:v8 name:name version:[(BMDSLBaseCodable *)v6 version] streamType:integerValue basePath:v9 eventDataClass:v12 useCase:v14];

    v13 = v6;
  }

  else
  {
    v13 = 0;
  }

LABEL_11:
  return v13;
}

+ (unint64_t)streamTypeForDSLType:(unint64_t)type
{
  if (type >= 4)
  {
    return 0;
  }

  else
  {
    return type;
  }
}

+ (BOOL)isStreamInfoValidForIdentifier:(id)identifier basePath:(id)path streamType:(unint64_t)type
{
  identifierCopy = identifier;
  pathCopy = path;
  if ([objc_opt_class() isStreamTypeInValidRange:type])
  {
    if ([objc_opt_class() isStreamIdentifierValid:identifierCopy])
    {
      if (!pathCopy || type == 3)
      {
        if (!pathCopy || (v12 = [MEMORY[0x1E698F130] streamTypeFromStorePath:pathCopy], v12 == objc_msgSend(objc_opt_class(), "streamTypeForDSLType:", type)))
        {
          v10 = 1;
          goto LABEL_12;
        }

        v9 = __biome_log_for_category();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          +[BMDSLStreamPublisher isStreamInfoValidForIdentifier:basePath:streamType:];
        }
      }

      else
      {
        v9 = __biome_log_for_category();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          +[BMDSLStreamPublisher isStreamInfoValidForIdentifier:basePath:streamType:];
        }
      }
    }

    else
    {
      v9 = __biome_log_for_category();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        +[BMDSLStreamPublisher isStreamInfoValidForIdentifier:basePath:streamType:];
      }
    }
  }

  else
  {
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      +[BMDSLStreamPublisher isStreamInfoValidForIdentifier:basePath:streamType:];
    }
  }

  v10 = 0;
LABEL_12:

  return v10;
}

@end