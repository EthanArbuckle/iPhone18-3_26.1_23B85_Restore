@interface PCCRequest
- (PCCRequest)initWithMessage:(id)message options:(id)options;
@end

@implementation PCCRequest

- (PCCRequest)initWithMessage:(id)message options:(id)options
{
  messageCopy = message;
  optionsCopy = options;
  v21.receiver = self;
  v21.super_class = PCCRequest;
  v8 = [(PCCRequest *)&v21 init];
  if (v8)
  {
    v9 = [messageCopy objectForKeyedSubscript:@"jobId"];
    jid = v8->_jid;
    v8->_jid = v9;

    v11 = [messageCopy objectForKeyedSubscript:@"messageType"];
    type = v8->_type;
    v8->_type = v11;

    if ([(NSString *)v8->_type isEqualToString:@"initiateLogTransfer"])
    {
      v13 = [messageCopy objectForKeyedSubscript:@"logFile"];

      if (v13)
      {
        v14 = @"xfer-file";
      }

      else
      {
        v15 = [messageCopy objectForKeyedSubscript:@"allFiles"];
        bOOLValue = [v15 BOOLValue];

        v14 = @"xfer-group";
        if (bOOLValue)
        {
          v14 = @"xfer-all";
        }
      }

      v17 = v8->_type;
      v8->_type = &v14->isa;

      v18 = [messageCopy objectForKeyedSubscript:@"jobEvent"];
      event = v8->_event;
      v8->_event = v18;
    }

    objc_storeStrong(&v8->_options, options);
  }

  return v8;
}

@end