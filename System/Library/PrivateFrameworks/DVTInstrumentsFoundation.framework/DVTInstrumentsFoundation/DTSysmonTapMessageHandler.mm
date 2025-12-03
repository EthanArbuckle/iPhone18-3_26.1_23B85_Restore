@interface DTSysmonTapMessageHandler
- (id)messageReceived:(id)received;
@end

@implementation DTSysmonTapMessageHandler

- (id)messageReceived:(id)received
{
  receivedCopy = received;
  v28.receiver = self;
  v28.super_class = DTSysmonTapMessageHandler;
  v5 = [(DTTapMessageHandler *)&v28 messageReceived:receivedCopy];
  if (!receivedCopy || v5)
  {
    v11 = v5;
    goto LABEL_19;
  }

  config = [(DTTapMessageHandler *)self config];
  v27 = 0;
  v7 = [receivedCopy getBufferWithReturnedLength:&v27];
  if (!v7)
  {
    v13 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
    v12 = [receivedCopy objectWithAllowedClasses:v13];

    if (v12)
    {
      kind = [v12 kind];
      v15 = 0;
      if (kind <= 6)
      {
        if (kind)
        {
          if (kind == 5)
          {
            v15 = objc_opt_new();
            [v15 setTapVersion:self->_tapVersion];
            [v15 setFinalMemo:1];
          }
        }

        else
        {
          v15 = 0;
          self->_tapVersion = [v12 tapVersion];
        }

        goto LABEL_17;
      }

      if (kind != 7)
      {
        if (kind == 1024)
        {
          v15 = objc_opt_new();
          [v15 setTapVersion:self->_tapVersion];
          v26 = MEMORY[0x277CCAAC8];
          v16 = MEMORY[0x277CBEB98];
          v17 = objc_opt_class();
          v18 = objc_opt_class();
          v19 = objc_opt_class();
          v20 = objc_opt_class();
          v21 = [v16 setWithObjects:{v17, v18, v19, v20, objc_opt_class(), 0}];
          v22 = [v26 unarchivedObjectOfClasses:v21 fromData:self->_nextSampleData error:0];
          [v15 setSamples:v22];

          [v15 setSupportsPeek:1];
          nextSampleData = self->_nextSampleData;
          self->_nextSampleData = 0;
        }

        goto LABEL_17;
      }

      runningMetadata = [v12 runningMetadata];
      [config _runningMetadataChanged:runningMetadata];
    }

    v15 = 0;
LABEL_17:
    v11 = v15;
    goto LABEL_18;
  }

  v8 = v7;
  v9 = objc_alloc(MEMORY[0x277CBEA90]);
  v10 = [v9 initWithBytes:v8 length:v27];
  v11 = 0;
  v12 = self->_nextSampleData;
  self->_nextSampleData = v10;
LABEL_18:

LABEL_19:

  return v11;
}

@end