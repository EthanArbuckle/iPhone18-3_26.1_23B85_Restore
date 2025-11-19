@interface DTServiceHubDaemonProxyUpdateDelegate
- (void)refreshContentsForDataType:(unsigned int)a3 userInfo:(id)a4;
@end

@implementation DTServiceHubDaemonProxyUpdateDelegate

- (void)refreshContentsForDataType:(unsigned int)a3 userInfo:(id)a4
{
  v19[3] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = v6;
  if (self->_channel)
  {
    if (a3 == 8)
    {
      v8 = @"Achievements";
    }

    else
    {
      if (a3 != 9)
      {
        goto LABEL_11;
      }

      v8 = @"Leaderboards";
    }

    v9 = [v6 objectForKeyedSubscript:@"ids"];

    if (v9)
    {
      v18[0] = @"messageType";
      v18[1] = @"type";
      v19[0] = @"refreshContents";
      v19[1] = v8;
      v18[2] = @"ids";
      v10 = [v7 objectForKeyedSubscript:@"ids"];
      v19[2] = v10;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];

      v17 = 0;
      v12 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v11 options:1 error:&v17];
      v13 = v17;
      v14 = v13;
      if (v13)
      {
        NSLog(&cfstr_Error_0.isa, v13);
      }

      else
      {
        v15 = [MEMORY[0x277D03668] messageWithData:v12];
        [(DTXChannel *)self->_channel sendMessage:v15 replyHandler:0];
      }
    }
  }

LABEL_11:

  v16 = *MEMORY[0x277D85DE8];
}

@end