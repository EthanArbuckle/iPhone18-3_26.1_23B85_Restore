@interface MTMetricsKitTemplate
+ (id)kitWithTopic:(id)topic amsBag:(id)bag;
+ (id)kitWithTopic:(id)topic bagProfile:(id)profile profileVersion:(id)version;
- (MTConfig)config;
- (MTMetricsKitTemplate)initWithTopic:(id)topic;
- (MTMetricsKitTemplate)initWithTopic:(id)topic bagProfile:(id)profile profileVersion:(id)version;
- (MTMetricsKitTemplate)initWithTopic:(id)topic delegatePackage:(id)package;
- (MTSystem)system;
- (MTUtils)utils;
- (id)metricsDataWithEventHandlerName:(id)name fields:(id)fields;
- (id)metricsDataWithEventHandlerName:(id)name pageData:(id)data eventData:(id)eventData;
- (id)metricsDataWithEventHandlerName:(id)name pageData:(id)data fields:(id)fields;
- (id)metricsDataWithEventHandlerName:(id)name pageId:(id)id pageType:(id)type pageContext:(id)context eventData:(id)data;
- (id)metricsDataWithEventHandlerName:(id)name pageId:(id)id pageType:(id)type pageContext:(id)context fields:(id)fields;
@end

@implementation MTMetricsKitTemplate

- (id)metricsDataWithEventHandlerName:(id)name pageId:(id)id pageType:(id)type pageContext:(id)context eventData:(id)data
{
  idCopy = id;
  typeCopy = type;
  contextCopy = context;
  dataCopy = data;
  nameCopy = name;
  eventHandlers = [(MTMetricsKitTemplate *)self eventHandlers];
  v18 = [eventHandlers objectForKeyedSubscript:nameCopy];

  if (v18)
  {
    v19 = [[MTCallerSuppliedFields alloc] initWithPageId:idCopy pageType:typeCopy pageContext:contextCopy eventData:dataCopy];
    v20 = [v18 metricsDataWithCallerSuppliedFields:v19];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)metricsDataWithEventHandlerName:(id)name pageId:(id)id pageType:(id)type pageContext:(id)context fields:(id)fields
{
  nameCopy = name;
  idCopy = id;
  typeCopy = type;
  contextCopy = context;
  fieldsCopy = fields;
  array = [MEMORY[0x277CBEB18] array];
  v25 = &v27;
  v18 = fieldsCopy;
  v19 = v18;
  if (v18)
  {
    v20 = v18;
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [array addObjectsFromArray:v20];
      }

      else
      {
        [array addObject:v20];
      }

      v21 = v25++;
      v22 = *v21;

      v20 = v22;
    }

    while (v22);
  }

  v23 = [(MTMetricsKitTemplate *)self metricsDataWithEventHandlerName:nameCopy pageId:idCopy pageType:typeCopy pageContext:contextCopy eventData:array];

  return v23;
}

- (id)metricsDataWithEventHandlerName:(id)name pageData:(id)data eventData:(id)eventData
{
  nameCopy = name;
  dataCopy = data;
  eventDataCopy = eventData;
  if (objc_opt_respondsToSelector())
  {
    pageId = [dataCopy pageId];
  }

  else
  {
    pageId = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    pageType = [dataCopy pageType];
  }

  else
  {
    pageType = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    pageContext = [dataCopy pageContext];
  }

  else
  {
    pageContext = 0;
  }

  v14 = [(MTMetricsKitTemplate *)self metricsDataWithEventHandlerName:nameCopy pageId:pageId pageType:pageType pageContext:pageContext eventData:eventDataCopy];

  return v14;
}

- (id)metricsDataWithEventHandlerName:(id)name pageData:(id)data fields:(id)fields
{
  nameCopy = name;
  dataCopy = data;
  fieldsCopy = fields;
  array = [MEMORY[0x277CBEB18] array];
  v19 = &v21;
  v12 = fieldsCopy;
  v13 = v12;
  if (v12)
  {
    v14 = v12;
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [array addObjectsFromArray:v14];
      }

      else
      {
        [array addObject:v14];
      }

      v15 = v19++;
      v16 = *v15;

      v14 = v16;
    }

    while (v16);
  }

  v17 = [(MTMetricsKitTemplate *)self metricsDataWithEventHandlerName:nameCopy pageData:dataCopy eventData:array];

  return v17;
}

- (id)metricsDataWithEventHandlerName:(id)name fields:(id)fields
{
  nameCopy = name;
  fieldsCopy = fields;
  array = [MEMORY[0x277CBEB18] array];
  v16 = &v18;
  v9 = fieldsCopy;
  v10 = v9;
  if (v9)
  {
    v11 = v9;
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [array addObjectsFromArray:v11];
      }

      else
      {
        [array addObject:v11];
      }

      v12 = v16++;
      v13 = *v12;

      v11 = v13;
    }

    while (v13);
  }

  v14 = [(MTMetricsKitTemplate *)self metricsDataWithEventHandlerName:nameCopy eventData:array];

  return v14;
}

- (MTMetricsKitTemplate)initWithTopic:(id)topic
{
  topicCopy = topic;
  v9.receiver = self;
  v9.super_class = MTMetricsKitTemplate;
  v6 = [(MTMetricsKitTemplate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_topic, topic);
  }

  return v7;
}

- (MTMetricsKitTemplate)initWithTopic:(id)topic delegatePackage:(id)package
{
  packageCopy = package;
  v8 = [(MTMetricsKitTemplate *)self initWithTopic:topic];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_delegatePackage, package);
  }

  return v9;
}

- (MTConfig)config
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_config)
  {
    v3 = objc_opt_new();
    config = selfCopy->_config;
    selfCopy->_config = v3;

    [(MTObject *)selfCopy->_config setMetricsKit:selfCopy];
    delegatePackage = [(MTMetricsKitTemplate *)selfCopy delegatePackage];
    configDelegate = [delegatePackage configDelegate];
    [(MTConfig *)selfCopy->_config setDelegate:configDelegate];
  }

  objc_sync_exit(selfCopy);

  v7 = selfCopy->_config;

  return v7;
}

- (MTSystem)system
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_system)
  {
    v3 = [[MTSystem alloc] initWithMetricsKit:selfCopy];
    system = selfCopy->_system;
    selfCopy->_system = v3;

    delegatePackage = [(MTMetricsKitTemplate *)selfCopy delegatePackage];
    environmentDelegate = [delegatePackage environmentDelegate];
    environment = [(MTSystem *)selfCopy->_system environment];
    [environment setDelegate:environmentDelegate];

    delegatePackage2 = [(MTMetricsKitTemplate *)selfCopy delegatePackage];
    eventRecorderDelegate = [delegatePackage2 eventRecorderDelegate];
    eventRecorder = [(MTSystem *)selfCopy->_system eventRecorder];
    [eventRecorder setDelegate:eventRecorderDelegate];
  }

  objc_sync_exit(selfCopy);

  v11 = selfCopy->_system;

  return v11;
}

- (MTUtils)utils
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_utils)
  {
    v3 = [(MTObject *)[MTUtils alloc] initWithMetricsKit:selfCopy];
    utils = selfCopy->_utils;
    selfCopy->_utils = v3;
  }

  objc_sync_exit(selfCopy);

  v5 = selfCopy->_utils;

  return v5;
}

- (MTMetricsKitTemplate)initWithTopic:(id)topic bagProfile:(id)profile profileVersion:(id)version
{
  v8 = MEMORY[0x277CEE3F0];
  topicCopy = topic;
  v10 = [v8 bagForProfile:profile profileVersion:version];
  v11 = [[MTStoreAMSBagDelegatePackage alloc] initWithAMSBag:v10];
  v12 = [(MTMetricsKitTemplate *)self initWithTopic:topicCopy delegatePackage:v11];

  return v12;
}

+ (id)kitWithTopic:(id)topic bagProfile:(id)profile profileVersion:(id)version
{
  versionCopy = version;
  profileCopy = profile;
  topicCopy = topic;
  v11 = [[self alloc] initWithTopic:topicCopy bagProfile:profileCopy profileVersion:versionCopy];

  return v11;
}

+ (id)kitWithTopic:(id)topic amsBag:(id)bag
{
  bagCopy = bag;
  topicCopy = topic;
  v8 = [[MTStoreAMSBagDelegatePackage alloc] initWithAMSBag:bagCopy];

  v9 = [[self alloc] initWithTopic:topicCopy delegatePackage:v8];

  return v9;
}

@end