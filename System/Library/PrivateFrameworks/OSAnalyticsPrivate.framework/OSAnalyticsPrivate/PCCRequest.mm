@interface PCCRequest
- (PCCRequest)initWithMessage:(id)a3 options:(id)a4;
@end

@implementation PCCRequest

- (PCCRequest)initWithMessage:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21.receiver = self;
  v21.super_class = PCCRequest;
  v8 = [(PCCRequest *)&v21 init];
  if (v8)
  {
    v9 = [v6 objectForKeyedSubscript:@"jobId"];
    jid = v8->_jid;
    v8->_jid = v9;

    v11 = [v6 objectForKeyedSubscript:@"messageType"];
    type = v8->_type;
    v8->_type = v11;

    if ([(NSString *)v8->_type isEqualToString:@"initiateLogTransfer"])
    {
      v13 = [v6 objectForKeyedSubscript:@"logFile"];

      if (v13)
      {
        v14 = @"xfer-file";
      }

      else
      {
        v15 = [v6 objectForKeyedSubscript:@"allFiles"];
        v16 = [v15 BOOLValue];

        v14 = @"xfer-group";
        if (v16)
        {
          v14 = @"xfer-all";
        }
      }

      v17 = v8->_type;
      v8->_type = &v14->isa;

      v18 = [v6 objectForKeyedSubscript:@"jobEvent"];
      event = v8->_event;
      v8->_event = v18;
    }

    objc_storeStrong(&v8->_options, a4);
  }

  return v8;
}

@end