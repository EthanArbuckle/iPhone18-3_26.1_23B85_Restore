@interface ESContextualData
- (ESContextualData)initWithConfiguration:(id)configuration taskName:(id)name applicationName:(id)applicationName;
- (void)fetchNamedEntitiesWithTimeInterval:(double)interval;
@end

@implementation ESContextualData

- (void)fetchNamedEntitiesWithTimeInterval:(double)interval
{
  if (self->_contextualData)
  {
    if ([(NSString *)self->_applicationName length])
    {
      contextualData = self->_contextualData;
      applicationName = self->_applicationName;
      taskName = self->_taskName;
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10000B384;
      v17[3] = &unk_100054CE8;
      *&v17[5] = interval;
      v17[4] = self;
      [(_EARContextualData *)contextualData iterNamedEntitySourceWithApplication:applicationName task:taskName block:v17];
    }

    if (self->_contextualData)
    {
      if ([(NSString *)self->_applicationName length])
      {
        v8 = objc_alloc_init(_PSSuggester);
        v9 = self->_contextualData;
        v10 = self->_applicationName;
        v11 = self->_taskName;
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_10000B610;
        v13[3] = &unk_100054D38;
        intervalCopy = interval;
        v14 = v8;
        selfCopy = self;
        v12 = v8;
        [(_EARContextualData *)v9 iterRankedContactSourceWithApplication:v10 task:v11 block:v13];
      }
    }
  }
}

- (ESContextualData)initWithConfiguration:(id)configuration taskName:(id)name applicationName:(id)applicationName
{
  configurationCopy = configuration;
  nameCopy = name;
  applicationNameCopy = applicationName;
  v20.receiver = self;
  v20.super_class = ESContextualData;
  v11 = [(ESContextualData *)&v20 init];
  if (v11)
  {
    if (([nameCopy isEqualToString:@"Dictation"] & 1) == 0 && !objc_msgSend(nameCopy, "isEqualToString:", @"WebSearch") || !objc_msgSend(applicationNameCopy, "length") || (v12 = objc_msgSend([_EARContextualData alloc], "initWithConfiguration:", configurationCopy), contextualData = v11->_contextualData, v11->_contextualData = v12, contextualData, !v11->_contextualData))
    {
      v18 = 0;
      goto LABEL_9;
    }

    v14 = [applicationNameCopy copy];
    applicationName = v11->_applicationName;
    v11->_applicationName = v14;

    v16 = [nameCopy copy];
    taskName = v11->_taskName;
    v11->_taskName = v16;
  }

  v18 = v11;
LABEL_9:

  return v18;
}

@end