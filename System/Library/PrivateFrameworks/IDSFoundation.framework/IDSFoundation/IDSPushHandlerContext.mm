@interface IDSPushHandlerContext
- (IDSPushHandlerContext)initWithQueue:(id)a3 wakingTopics:(id)a4 opportunisticTopics:(id)a5 nonWakingTopics:(id)a6 commands:(id)a7;
@end

@implementation IDSPushHandlerContext

- (IDSPushHandlerContext)initWithQueue:(id)a3 wakingTopics:(id)a4 opportunisticTopics:(id)a5 nonWakingTopics:(id)a6 commands:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v29.receiver = self;
  v29.super_class = IDSPushHandlerContext;
  v18 = [(IDSPushHandlerContext *)&v29 init];
  v19 = v18;
  if (v18)
  {
    if (v13)
    {
      objc_storeStrong(&v18->_queue, a3);
    }

    v20 = [v14 copy];
    wakingTopics = v19->_wakingTopics;
    v19->_wakingTopics = v20;

    v22 = [v15 copy];
    opportunisticTopics = v19->_opportunisticTopics;
    v19->_opportunisticTopics = v22;

    v24 = [v16 copy];
    nonWakingTopics = v19->_nonWakingTopics;
    v19->_nonWakingTopics = v24;

    v26 = [v17 copy];
    commands = v19->_commands;
    v19->_commands = v26;
  }

  return v19;
}

@end