@interface ESContextualData
- (ESContextualData)initWithConfiguration:(id)a3 taskName:(id)a4 applicationName:(id)a5;
- (void)fetchNamedEntitiesWithTimeInterval:(double)a3;
@end

@implementation ESContextualData

- (void)fetchNamedEntitiesWithTimeInterval:(double)a3
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
      *&v17[5] = a3;
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
        v16 = a3;
        v14 = v8;
        v15 = self;
        v12 = v8;
        [(_EARContextualData *)v9 iterRankedContactSourceWithApplication:v10 task:v11 block:v13];
      }
    }
  }
}

- (ESContextualData)initWithConfiguration:(id)a3 taskName:(id)a4 applicationName:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = ESContextualData;
  v11 = [(ESContextualData *)&v20 init];
  if (v11)
  {
    if (([v9 isEqualToString:@"Dictation"] & 1) == 0 && !objc_msgSend(v9, "isEqualToString:", @"WebSearch") || !objc_msgSend(v10, "length") || (v12 = objc_msgSend([_EARContextualData alloc], "initWithConfiguration:", v8), contextualData = v11->_contextualData, v11->_contextualData = v12, contextualData, !v11->_contextualData))
    {
      v18 = 0;
      goto LABEL_9;
    }

    v14 = [v10 copy];
    applicationName = v11->_applicationName;
    v11->_applicationName = v14;

    v16 = [v9 copy];
    taskName = v11->_taskName;
    v11->_taskName = v16;
  }

  v18 = v11;
LABEL_9:

  return v18;
}

@end