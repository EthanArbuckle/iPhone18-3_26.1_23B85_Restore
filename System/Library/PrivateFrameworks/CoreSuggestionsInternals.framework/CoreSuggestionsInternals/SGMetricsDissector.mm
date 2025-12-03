@interface SGMetricsDissector
- (BOOL)_shouldSampleMessage;
- (SGMetricsDissector)initWithEntityStore:(id)store;
- (void)dissectMailMessage:(id)message entity:(id)entity context:(id)context;
- (void)dissectTextMessage:(id)message entity:(id)entity context:(id)context;
@end

@implementation SGMetricsDissector

- (void)dissectTextMessage:(id)message entity:(id)entity context:(id)context
{
  v37 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  entityCopy = entity;
  contextCopy = context;
  selfCopy = self;
  if ([(SGMetricsDissector *)self _shouldSampleMessage])
  {
    sender = [messageCopy sender];
    handles = [sender handles];
    if (![handles count])
    {

LABEL_16:
      goto LABEL_17;
    }

    recipients = [messageCopy recipients];

    if (recipients)
    {
      duplicateKey = [entityCopy duplicateKey];
      sender = [duplicateKey bundleId];

      if (sender)
      {
        isSent = [messageCopy isSent];
        v16 = objc_autoreleasePoolPush();
        v17 = v16;
        if (isSent)
        {
          context = v16;
          v30 = contextCopy;
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          recipients2 = [messageCopy recipients];
          v19 = [recipients2 countByEnumeratingWithState:&v32 objects:v36 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v33;
            do
            {
              for (i = 0; i != v20; ++i)
              {
                if (*v33 != v21)
                {
                  objc_enumerationMutation(recipients2);
                }

                handles2 = [*(*(&v32 + 1) + 8 * i) handles];
                v24 = [handles2 objectAtIndexedSubscript:0];
                [SGMetricsHelper recordConversationTurnWithDetail:v24 received:0 throughApp:sender withStore:selfCopy->_store];
              }

              v20 = [recipients2 countByEnumeratingWithState:&v32 objects:v36 count:16];
            }

            while (v20);
          }

          objc_autoreleasePoolPop(context);
          contextCopy = v30;
        }

        else
        {
          sender2 = [messageCopy sender];
          handles3 = [sender2 handles];
          v27 = [handles3 objectAtIndexedSubscript:0];
          [SGMetricsHelper recordConversationTurnWithDetail:v27 received:1 throughApp:sender withStore:selfCopy->_store];

          objc_autoreleasePoolPop(v17);
        }
      }

      goto LABEL_16;
    }
  }

LABEL_17:

  v28 = *MEMORY[0x277D85DE8];
}

- (void)dissectMailMessage:(id)message entity:(id)entity context:(id)context
{
  v35 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  entityCopy = entity;
  contextCopy = context;
  selfCopy = self;
  if ([(SGMetricsDissector *)self _shouldSampleMessage])
  {
    from = [messageCopy from];
    if (from)
    {
      v13 = from;
      v14 = [messageCopy to];

      if (v14)
      {
        duplicateKey = [entityCopy duplicateKey];
        bundleId = [duplicateKey bundleId];

        if (bundleId)
        {
          if ([messageCopy isSent])
          {
            v28 = contextCopy;
            v32 = 0u;
            v33 = 0u;
            v30 = 0u;
            v31 = 0u;
            obj = [messageCopy to];
            v17 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
            if (v17)
            {
              v18 = v17;
              v19 = *v31;
              do
              {
                for (i = 0; i != v18; ++i)
                {
                  if (*v31 != v19)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v21 = *(*(&v30 + 1) + 8 * i);
                  v22 = objc_autoreleasePoolPush();
                  emailAddress = [v21 emailAddress];
                  [SGMetricsHelper recordConversationTurnWithDetail:emailAddress received:0 throughApp:bundleId withStore:selfCopy->_store];

                  objc_autoreleasePoolPop(v22);
                }

                v18 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
              }

              while (v18);
            }

            contextCopy = v28;
          }

          else
          {
            v24 = objc_autoreleasePoolPush();
            from2 = [messageCopy from];
            emailAddress2 = [from2 emailAddress];
            [SGMetricsHelper recordConversationTurnWithDetail:emailAddress2 received:1 throughApp:bundleId withStore:selfCopy->_store];

            objc_autoreleasePoolPop(v24);
          }
        }
      }
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldSampleMessage
{
  v2 = objc_autoreleasePoolPush();
  v3 = vcvts_n_f32_u32(arc4random_uniform(0xFFFFFFFF), 0x20uLL) <= 0.00001;
  objc_autoreleasePoolPop(v2);
  return v3;
}

- (SGMetricsDissector)initWithEntityStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = SGMetricsDissector;
  v6 = [(SGMetricsDissector *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, store);
  }

  return v7;
}

@end