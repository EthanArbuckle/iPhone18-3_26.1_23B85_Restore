@interface IRBiomeParameters
- (Class)biomeEventClass;
- (IRBiomeParameters)initWithBiomeEventType:(int64_t)type;
- (id)contextPublisher;
- (id)queryPublisherWithOptions:(id)options;
- (void)biomeEventClass;
- (void)contextPublisher;
@end

@implementation IRBiomeParameters

- (IRBiomeParameters)initWithBiomeEventType:(int64_t)type
{
  v7.receiver = self;
  v7.super_class = IRBiomeParameters;
  v4 = [(IRBiomeParameters *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(IRBiomeParameters *)v4 setEventType:type];
  }

  return v5;
}

- (id)queryPublisherWithOptions:(id)options
{
  optionsCopy = options;
  eventType = [(IRBiomeParameters *)self eventType];
  if (eventType <= 1)
  {
    if (eventType == 1)
    {
      v7 = BiomeLibrary();
      device = [v7 Device];
      wireless = [device Wireless];
      wiFi = [wireless WiFi];
      v3 = [wiFi publisherWithOptions:optionsCopy];

LABEL_9:
      goto LABEL_10;
    }

    if (!eventType)
    {
      goto LABEL_16;
    }
  }

  else
  {
    switch(eventType)
    {
      case 2:
        v7 = BiomeLibrary();
        device = [v7 Media];
        route = [device Route];
        goto LABEL_8;
      case 3:
        v7 = BiomeLibrary();
        device = [v7 Device];
        route = [device Metadata];
LABEL_8:
        wireless = route;
        v3 = [route publisherWithOptions:optionsCopy];
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
  eventType = [(IRBiomeParameters *)self eventType];
  if (eventType <= 1)
  {
    if (eventType == 1)
    {
      v5 = BiomeLibrary();
      device = [v5 Device];
      wireless = [device Wireless];
      wiFi = [wireless WiFi];
      dSLPublisher = [wiFi DSLPublisher];

LABEL_9:
      goto LABEL_10;
    }

    if (!eventType)
    {
      goto LABEL_16;
    }
  }

  else
  {
    switch(eventType)
    {
      case 2:
        v5 = BiomeLibrary();
        device = [v5 Media];
        route = [device Route];
        goto LABEL_8;
      case 3:
        v5 = BiomeLibrary();
        device = [v5 Device];
        route = [device Metadata];
LABEL_8:
        wireless = route;
        dSLPublisher = [route DSLPublisher];
        goto LABEL_9;
      case 4:
LABEL_16:
        [(IRBiomeParameters *)self contextPublisher];
    }
  }

LABEL_10:

  return dSLPublisher;
}

- (Class)biomeEventClass
{
  eventType = [(IRBiomeParameters *)self eventType];
  if (eventType <= 1)
  {
    if (eventType == 1)
    {
      v5 = 0x277CF1138;
      goto LABEL_8;
    }

    if (!eventType)
    {
LABEL_15:
      [(IRBiomeParameters *)self biomeEventClass];
    }
  }

  else
  {
    switch(eventType)
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
    v5 = *(self + 8);
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
    v5 = *(self + 8);
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