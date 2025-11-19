@interface IRBiomeParameters
- (Class)biomeEventClass;
- (IRBiomeParameters)initWithBiomeEventType:(int64_t)a3;
- (id)contextPublisher;
- (id)queryPublisherWithOptions:(id)a3;
- (void)biomeEventClass;
- (void)contextPublisher;
@end

@implementation IRBiomeParameters

- (IRBiomeParameters)initWithBiomeEventType:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = IRBiomeParameters;
  v4 = [(IRBiomeParameters *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(IRBiomeParameters *)v4 setEventType:a3];
  }

  return v5;
}

- (id)queryPublisherWithOptions:(id)a3
{
  v5 = a3;
  v6 = [(IRBiomeParameters *)self eventType];
  if (v6 <= 1)
  {
    if (v6 == 1)
    {
      v7 = BiomeLibrary();
      v8 = [v7 Device];
      v10 = [v8 Wireless];
      v11 = [v10 WiFi];
      v3 = [v11 publisherWithOptions:v5];

LABEL_9:
      goto LABEL_10;
    }

    if (!v6)
    {
      goto LABEL_16;
    }
  }

  else
  {
    switch(v6)
    {
      case 2:
        v7 = BiomeLibrary();
        v8 = [v7 Media];
        v9 = [v8 Route];
        goto LABEL_8;
      case 3:
        v7 = BiomeLibrary();
        v8 = [v7 Device];
        v9 = [v8 Metadata];
LABEL_8:
        v10 = v9;
        v3 = [v9 publisherWithOptions:v5];
        goto LABEL_9;
      case 4:
LABEL_16:
        [IRBiomeParameters queryPublisherWithOptions:?];
    }
  }

LABEL_10:

  return v3;
}

- (id)contextPublisher
{
  v4 = [(IRBiomeParameters *)self eventType];
  if (v4 <= 1)
  {
    if (v4 == 1)
    {
      v5 = BiomeLibrary();
      v6 = [v5 Device];
      v8 = [v6 Wireless];
      v9 = [v8 WiFi];
      v2 = [v9 DSLPublisher];

LABEL_9:
      goto LABEL_10;
    }

    if (!v4)
    {
      goto LABEL_16;
    }
  }

  else
  {
    switch(v4)
    {
      case 2:
        v5 = BiomeLibrary();
        v6 = [v5 Media];
        v7 = [v6 Route];
        goto LABEL_8;
      case 3:
        v5 = BiomeLibrary();
        v6 = [v5 Device];
        v7 = [v6 Metadata];
LABEL_8:
        v8 = v7;
        v2 = [v7 DSLPublisher];
        goto LABEL_9;
      case 4:
LABEL_16:
        [(IRBiomeParameters *)self contextPublisher];
    }
  }

LABEL_10:

  return v2;
}

- (Class)biomeEventClass
{
  v3 = [(IRBiomeParameters *)self eventType];
  if (v3 <= 1)
  {
    if (v3 == 1)
    {
      v5 = 0x277CF1138;
      goto LABEL_8;
    }

    if (!v3)
    {
LABEL_15:
      [(IRBiomeParameters *)self biomeEventClass];
    }
  }

  else
  {
    switch(v3)
    {
      case 2:
        v5 = 0x277CF1330;
        goto LABEL_8;
      case 3:
        v5 = 0x277CF10F8;
LABEL_8:
        v6 = *v5;
        v4 = objc_opt_class();
        break;
      case 4:
        goto LABEL_15;
    }
  }

  return v4;
}

- (void)queryPublisherWithOptions:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v3 = MEMORY[0x277D21308];
  v4 = dispatch_get_specific(*MEMORY[0x277D21308]);
  if (OUTLINED_FUNCTION_4())
  {
    v5 = *(a1 + 8);
    v6 = v1;
    v7 = IRBiomeEventTypeToString(v5);
    [v7 UTF8String];
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_25543D000, v8, v9, "%s[%@], [ErrorId - Biome query publisher unsupported] couldn't find a publisher for biome event type %s", v10, v11, v12, v13, v20);
  }

  dispatch_get_specific(*v3);
  objc_claimAutoreleasedReturnValue();
  if (OUTLINED_FUNCTION_1())
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3(&dword_25543D000, v14, v15, "%s[%@], %s:%d: assertion failure in %s", v16, v17, v18, v19, v20);
  }

  abort();
}

- (void)contextPublisher
{
  v3 = MEMORY[0x277D21308];
  v4 = dispatch_get_specific(*MEMORY[0x277D21308]);
  if (OUTLINED_FUNCTION_4())
  {
    v5 = *(a1 + 8);
    v6 = v1;
    v7 = IRBiomeEventTypeToString(v5);
    [v7 UTF8String];
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_25543D000, v8, v9, "%s[%@], [ErrorId - Biome context publisher unsupported] couldn't find a publisher for biome event type %s", v10, v11, v12, v13, v20);
  }

  dispatch_get_specific(*v3);
  objc_claimAutoreleasedReturnValue();
  if (OUTLINED_FUNCTION_1())
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3(&dword_25543D000, v14, v15, "%s[%@], %s:%d: assertion failure in %s", v16, v17, v18, v19, v20);
  }

  abort();
}

- (void)biomeEventClass
{
  v3 = MEMORY[0x277D21308];
  v4 = dispatch_get_specific(*MEMORY[0x277D21308]);
  if (OUTLINED_FUNCTION_4())
  {
    v5 = *(a1 + 8);
    v6 = v1;
    v7 = IRBiomeEventTypeToString(v5);
    [v7 UTF8String];
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_25543D000, v8, v9, "%s[%@], [ErrorId - Unsupported biome event class] couldn't find a Class for biome event type %s", v10, v11, v12, v13, v20);
  }

  dispatch_get_specific(*v3);
  objc_claimAutoreleasedReturnValue();
  if (OUTLINED_FUNCTION_1())
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3(&dword_25543D000, v14, v15, "%s[%@], %s:%d: assertion failure in %s", v16, v17, v18, v19, v20);
  }

  abort();
}

@end