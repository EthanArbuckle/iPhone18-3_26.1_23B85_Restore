@interface DTActivityTraceTapMessageHandler
- (id)messageReceived:(id)a3;
@end

@implementation DTActivityTraceTapMessageHandler

- (id)messageReceived:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = DTActivityTraceTapMessageHandler;
  v5 = [(DTTapMessageHandler *)&v14 messageReceived:v4];
  v6 = v5;
  if (v4 && !v5)
  {
    if ([v4 getBufferWithReturnedLength:0])
    {
      v6 = [[DTActivityTraceTapMemo alloc] initWithMessage:v4];
    }

    else
    {
      v7 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
      v8 = [v4 objectWithAllowedClasses:v7];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ((v9 = [v8 kind], v9 == 8) || v9 == 5))
      {
        v10 = [DTActivityTraceTapMemo alloc];
        v11 = objc_opt_new();
        v12 = [(DTActivityTraceTapMemo *)v10 initWithData:v11];

        [(DTTapDataMemo *)v12 setFinalMemo:1];
      }

      else
      {
        v12 = 0;
      }

      v6 = v12;
    }
  }

  return v6;
}

@end