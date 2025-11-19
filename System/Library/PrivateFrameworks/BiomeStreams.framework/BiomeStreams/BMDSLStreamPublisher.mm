@interface BMDSLStreamPublisher
+ (BOOL)isStreamInfoValidForIdentifier:(id)a3 basePath:(id)a4 streamType:(unint64_t)a5;
+ (unint64_t)streamTypeForDSLType:(unint64_t)a3;
- (BMDSLStreamPublisher)initWithBookmark:(id)a3 identifier:(id)a4 name:(id)a5 version:(unsigned int)a6 streamType:(unint64_t)a7 basePath:(id)a8 eventDataClass:(Class)a9 useCase:(id)a10;
- (BMDSLStreamPublisher)initWithCoder:(id)a3;
- (BMDSLStreamPublisher)initWithDictionary:(id)a3 error:(id *)a4;
- (BMDSLStreamPublisher)initWithPublisher:(id)a3 identifier:(id)a4 streamType:(unint64_t)a5;
- (id)bpsPublisher;
- (id)storeStream;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BMDSLStreamPublisher

- (id)bpsPublisher
{
  v3 = [BMDSLStreamPublisher streamTypeForDSLType:[(BMDSLStreamPublisher *)self streamType]];
  v4 = [MEMORY[0x1E698E898] currentProcessValidator];
  if ([v4 passthrough])
  {
    v5 = __biome_log_for_category();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(BMDSLStreamPublisher *)self bpsPublisher];
    }

LABEL_6:
    v8 = [(BMDSLStreamPublisher *)self storeStream];
    v9 = [(BMDSLStreamPublisher *)self backingEvents];

    if (v9)
    {
      v10 = [(BMDSLStreamPublisher *)self backingEvents];
      v11 = [v10 bpsPublisher];
    }

    else
    {
      v12 = [(BMDSLStreamPublisher *)self bookmarkingTime];

      if (!v12)
      {
        v11 = [v8 publisherFromStartTime:0.0];
        goto LABEL_11;
      }

      v10 = [(BMDSLStreamPublisher *)self bookmarkingTime];
      v13 = [(BMDSLStreamPublisher *)self bookmarkingTime];
      v11 = [v8 publisherWithStartTime:v10 endTime:v13 maxEvents:0 lastN:0 reversed:0];
    }

LABEL_11:
    v14 = BPSPipelineSupportsPullBasedPublishers();
    v15 = [(BMDSLStreamPublisher *)self bookmark];
    if (v14)
    {
      [v11 applyBookmarkNode:v15];

      v16 = v11;
    }

    else
    {
      v16 = [v11 withBookmark:v15];
    }

    goto LABEL_18;
  }

  v6 = [MEMORY[0x1E698E898] currentProcessValidator];
  v7 = [v6 isStreamTypeAllowed:v3];

  if (v7)
  {
    goto LABEL_6;
  }

  v8 = __biome_log_for_category();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
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
  v4 = [(BMDSLStreamPublisher *)self identifier];
  v5 = [(BMDSLStreamPublisher *)self basePath];
  LODWORD(v3) = [v3 isStreamInfoValidForIdentifier:v4 basePath:v5 streamType:{-[BMDSLStreamPublisher streamType](self, "streamType")}];

  if (v3)
  {
    if ([(BMDSLStreamPublisher *)self streamType]== 2)
    {
      v6 = [(BMDSLStreamPublisher *)self identifier];
      v7 = [v6 componentsSeparatedByString:@":"];
      v8 = [v7 firstObject];

      v9 = BiomeLibraryAndInternalLibraryNode();
      v10 = [v9 streamWithIdentifier:v8 error:0];

      if (v10)
      {
        v11 = [(BMDSLStreamPublisher *)self identifier];
        v12 = [v11 hasSuffix:@":subscriptions"];

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
          v29 = [(BMDSLStreamPublisher *)self identifier];
          v30 = [v29 hasSuffix:@":tombstones"];

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
            v33 = [v10 configuration];
            v34 = [objc_msgSend(v33 "eventClass")];

            if ((v34 & 1) == 0)
            {
              v37 = MEMORY[0x1E698EA10];
              v38 = [(BMDSLStreamPublisher *)self identifier];
              v39 = [v37 legacyClassNameForLibraryStream:v38];

              if (v39 && (v40 = NSClassFromString(v39)) != 0)
              {
                v41 = v40;
              }

              else
              {
                v42 = [v10 configuration];
                v41 = [v42 eventClass];

                if (!v41)
                {
                  v43 = __biome_log_for_category();
                  if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
                  {
                    [(BMDSLStreamPublisher *)self storeStream];
                  }

                  v41 = 0;
                }
              }

              v44 = [BMStoreStream alloc];
              v45 = [(BMDSLStreamPublisher *)self identifier];
              v46 = [v10 configuration];
              v47 = [v46 storeConfig];
              v20 = [(BMStoreStream *)v44 initWithRestrictedStreamIdentifier:v45 storeConfig:v47 eventDataClass:v41];

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

    v16 = [(BMDSLStreamPublisher *)self streamType];
    switch(v16)
    {
      case 3uLL:
        v24 = MEMORY[0x1E698F130];
        v25 = [(BMDSLStreamPublisher *)self basePath];
        v8 = [v24 newPrivateStreamDefaultConfigurationWithStoreBasePath:v25];

        v26 = [BMStoreStream alloc];
        v27 = [(BMDSLStreamPublisher *)self identifier];
        v20 = [(BMStoreStream *)v26 initWithPrivateStreamIdentifier:v27 storeConfig:v8 eventDataClass:[(BMDSLStreamPublisher *)self eventDataClass]];

LABEL_35:
        goto LABEL_40;
      case 2uLL:
        v21 = [BMStoreStream alloc];
        v22 = [(BMDSLStreamPublisher *)self identifier];
        v23 = [MEMORY[0x1E698F130] newRestrictedStreamDefaultConfigurationWithProtectionClass:3];
        v20 = [(BMStoreStream *)v21 initWithRestrictedStreamIdentifier:v22 storeConfig:v23 eventDataClass:[(BMDSLStreamPublisher *)self eventDataClass]];

        goto LABEL_40;
      case 1uLL:
        v17 = MEMORY[0x1E698E9E0];
        v18 = [(BMDSLStreamPublisher *)self identifier];
        v19 = [v17 streamForStreamIdentifier:v18];

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

- (BMDSLStreamPublisher)initWithBookmark:(id)a3 identifier:(id)a4 name:(id)a5 version:(unsigned int)a6 streamType:(unint64_t)a7 basePath:(id)a8 eventDataClass:(Class)a9 useCase:(id)a10
{
  v25 = a3;
  v17 = a4;
  v18 = a8;
  v24 = a10;
  if (a6 != 1)
  {
    v22 = __biome_log_for_category();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [BMDSLStreamPublisher initWithBookmark:a6 identifier:v22 name:? version:? streamType:? basePath:? eventDataClass:? useCase:?];
    }

    goto LABEL_10;
  }

  v26.receiver = self;
  v26.super_class = BMDSLStreamPublisher;
  v19 = [(BMDSLBaseCodable *)&v26 initWithName:a5 version:1, v24, v25];
  self = v19;
  if (v19)
  {
    v20 = a9;
    objc_storeStrong(&v19->_bookmark, a3);
    objc_storeStrong(&self->_identifier, a4);
    self->_streamType = a7;
    objc_storeStrong(&self->_basePath, a8);
    if (!a9)
    {
      v20 = BMEventClassForStreamIdentifier(v17);
    }

    objc_storeStrong(&self->_eventDataClass, v20);
    objc_storeStrong(&self->_useCase, a10);
    if (![objc_opt_class() isStreamInfoValidForIdentifier:v17 basePath:v18 streamType:a7])
    {
LABEL_10:
      v21 = 0;
      goto LABEL_11;
    }
  }

  self = self;
  v21 = self;
LABEL_11:

  return v21;
}

- (BMDSLStreamPublisher)initWithPublisher:(id)a3 identifier:(id)a4 streamType:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
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
  v10 = [v8 sinkWithBookmark:0 completion:v13 receiveInput:&__block_literal_global_36];
  v11 = [(BMDSLStreamPublisher *)self initWithBookmark:v15[5] identifier:v9 streamType:a5];
  _Block_object_dispose(&v14, 8);

  return v11;
}

- (BMDSLStreamPublisher)initWithDictionary:(id)a3 error:(id *)a4
{
  v27[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v26 = @"streamIdentifier";
  v27[0] = objc_opt_class();
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
  v8 = BMDSLValidateDictionary();

  if (!v8)
  {
    v11 = [v6 objectForKeyedSubscript:@"streamIdentifier"];
    v12 = [MEMORY[0x1E698E9E0] libraryPublicStreamMigrationPaths];
    v13 = [v12 objectForKeyedSubscript:v11];

    v14 = [v6 objectForKeyedSubscript:@"streamType"];
    if (v14 && (v15 = v14, [v6 objectForKeyedSubscript:@"streamType"], v16 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v16, v15, (isKindOfClass & 1) != 0))
    {
      v18 = [v6 objectForKeyedSubscript:@"streamType"];
      v19 = [v18 unsignedIntegerValue];
    }

    else
    {
      if (v13)
      {
        v20 = [MEMORY[0x1E698EA10] legacyClassNameForLibraryStream:v13];
        v18 = v20;
        if (v20)
        {
          v21 = NSClassFromString(v20);
        }

        else
        {
          v21 = 0;
        }

        v19 = 1;
        goto LABEL_17;
      }

      v22 = BiomeLibraryAndInternalLibraryNode();
      v18 = [v22 streamWithIdentifier:v11 error:0];

      if (v18)
      {
        v23 = [v18 configuration];
        v21 = [v23 eventClass];

        v19 = 2;
LABEL_17:

        self = [(BMDSLStreamPublisher *)self initWithIdentifier:v11 streamType:v19 eventDataClass:v21];
        v10 = self;
        goto LABEL_18;
      }

      v19 = 0;
    }

    v21 = 0;
    goto LABEL_17;
  }

  if (a4)
  {
    v9 = v8;
    v10 = 0;
    *a4 = v8;
  }

  else
  {
    v10 = 0;
  }

LABEL_18:

  v24 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = BMDSLStreamPublisher;
  [(BMDSLBaseCodable *)&v14 encodeWithCoder:v4];
  v5 = [(BMDSLStreamPublisher *)self bookmark];

  if (v5)
  {
    v6 = [(BMDSLStreamPublisher *)self bookmark];
    [v4 encodeObject:v6 forKey:@"bookmark"];
  }

  v7 = [(BMDSLStreamPublisher *)self identifier];
  [v4 encodeObject:v7 forKey:@"streamIdentifier"];

  v8 = [(BMDSLStreamPublisher *)self basePath];

  if (v8)
  {
    v9 = [(BMDSLStreamPublisher *)self basePath];
    [v4 encodeObject:v9 forKey:@"basePath"];
  }

  if ([(BMDSLStreamPublisher *)self eventDataClass])
  {
    v10 = NSStringFromClass([(BMDSLStreamPublisher *)self eventDataClass]);
    [v4 encodeObject:v10 forKey:@"eventDataClass"];
  }

  v11 = [(BMDSLStreamPublisher *)self useCase];

  if (v11)
  {
    v12 = [(BMDSLStreamPublisher *)self useCase];
    [v4 encodeObject:v12 forKey:@"useCase"];
  }

  v13 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:{-[BMDSLStreamPublisher streamType](self, "streamType")}];
  [v4 encodeObject:v13 forKey:@"streamType"];
}

- (BMDSLStreamPublisher)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = BMDSLStreamPublisher;
  v5 = [(BMDSLBaseCodable *)&v19 initWithCoder:v4];
  if (!v5)
  {
    v13 = 0;
    goto LABEL_11;
  }

  v6 = v5;
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bookmark"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"streamIdentifier"];
  v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"streamType"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"basePath"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"eventDataClass"];
  if (v10)
  {
    v11 = [MEMORY[0x1E698E898] currentProcessValidator];
    v12 = [v11 eventClassForString:v10];
  }

  else
  {
    v12 = BMEventClassForStreamIdentifier(v8);
    if (v12)
    {
      goto LABEL_7;
    }

    v11 = __biome_log_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [BMDSLStreamPublisher initWithCoder:];
    }

    v12 = 0;
  }

LABEL_7:
  v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"useCase"];
  v15 = [v18 integerValue];
  if ([objc_opt_class() isStreamInfoValidForIdentifier:v8 basePath:v9 streamType:v15])
  {
    v16 = [(BMDSLBaseCodable *)v6 name];
    v6 = [(BMDSLStreamPublisher *)v6 initWithBookmark:v7 identifier:v8 name:v16 version:[(BMDSLBaseCodable *)v6 version] streamType:v15 basePath:v9 eventDataClass:v12 useCase:v14];

    v13 = v6;
  }

  else
  {
    v13 = 0;
  }

LABEL_11:
  return v13;
}

+ (unint64_t)streamTypeForDSLType:(unint64_t)a3
{
  if (a3 >= 4)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

+ (BOOL)isStreamInfoValidForIdentifier:(id)a3 basePath:(id)a4 streamType:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  if ([objc_opt_class() isStreamTypeInValidRange:a5])
  {
    if ([objc_opt_class() isStreamIdentifierValid:v7])
    {
      if (!v8 || a5 == 3)
      {
        if (!v8 || (v12 = [MEMORY[0x1E698F130] streamTypeFromStorePath:v8], v12 == objc_msgSend(objc_opt_class(), "streamTypeForDSLType:", a5)))
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