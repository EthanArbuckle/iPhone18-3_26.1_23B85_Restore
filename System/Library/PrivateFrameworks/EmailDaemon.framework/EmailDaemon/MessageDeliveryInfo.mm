@interface MessageDeliveryInfo
- (MessageDeliveryInfo)init;
- (MessageDeliveryInfo)initWithJSON:(id)n;
- (id)description;
- (id)encodedAsJSON;
@end

@implementation MessageDeliveryInfo

- (MessageDeliveryInfo)init
{
  v6.receiver = self;
  v6.super_class = MessageDeliveryInfo;
  v2 = [(MessageDeliveryInfo *)&v6 init];
  if (v2)
  {
    v3 = +[NSDate now];
    created = v2->_created;
    v2->_created = v3;
  }

  return v2;
}

- (id)encodedAsJSON
{
  v17[0] = @"created";
  created = [(MessageDeliveryInfo *)self created];
  [created timeIntervalSinceReferenceDate];
  v4 = [NSNumber numberWithDouble:?];
  v18[0] = v4;
  v17[1] = @"numberOfFailures";
  v5 = [NSNumber numberWithInteger:[(MessageDeliveryInfo *)self numberOfFailures]];
  v18[1] = v5;
  v17[2] = @"failedCellularAttempts";
  v6 = [NSNumber numberWithInteger:[(MessageDeliveryInfo *)self failedCellularAttempts]];
  v18[2] = v6;
  v17[3] = @"lastStatus";
  v7 = [NSNumber numberWithInteger:[(MessageDeliveryInfo *)self lastStatus]];
  v18[3] = v7;
  v17[4] = @"messageSize";
  v8 = [NSNumber numberWithUnsignedInteger:[(MessageDeliveryInfo *)self messageSize]];
  v18[4] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:5];
  v10 = [v9 mutableCopy];

  lastAttempt = [(MessageDeliveryInfo *)self lastAttempt];

  if (lastAttempt)
  {
    lastAttempt2 = [(MessageDeliveryInfo *)self lastAttempt];
    [lastAttempt2 timeIntervalSinceReferenceDate];
    v13 = [NSNumber numberWithDouble:?];
    [v10 setObject:v13 forKeyedSubscript:@"lastAttempt"];
  }

  v14 = [NSJSONSerialization dataWithJSONObject:v10 options:0 error:0];
  if (v14)
  {
    v15 = [[NSString alloc] initWithData:v14 encoding:4];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (MessageDeliveryInfo)initWithJSON:(id)n
{
  nCopy = n;
  v5 = nCopy;
  if (nCopy)
  {
    v6 = [nCopy dataUsingEncoding:4];
    v7 = [NSJSONSerialization JSONObjectWithData:v6 options:0 error:0];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21.receiver = self;
      v21.super_class = MessageDeliveryInfo;
      v8 = [(MessageDeliveryInfo *)&v21 init];
      if (v8)
      {
        v9 = [v7 objectForKeyedSubscript:@"created"];
        [v9 doubleValue];
        v10 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
        created = v8->_created;
        v8->_created = v10;

        v12 = [v7 objectForKeyedSubscript:@"numberOfFailures"];
        -[MessageDeliveryInfo setNumberOfFailures:](v8, "setNumberOfFailures:", [v12 integerValue]);

        v13 = [v7 objectForKeyedSubscript:@"failedCellularAttempts"];
        -[MessageDeliveryInfo setFailedCellularAttempts:](v8, "setFailedCellularAttempts:", [v13 integerValue]);

        v14 = [v7 objectForKeyedSubscript:@"lastStatus"];
        -[MessageDeliveryInfo setLastStatus:](v8, "setLastStatus:", [v14 intValue]);

        v15 = [v7 objectForKeyedSubscript:@"lastAttempt"];

        if (v15)
        {
          v16 = [v7 objectForKeyedSubscript:@"lastAttempt"];
          [v16 doubleValue];
          v17 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
          [(MessageDeliveryInfo *)v8 setLastAttempt:v17];
        }

        v18 = [v7 objectForKeyedSubscript:@"messageSize"];
        -[MessageDeliveryInfo setMessageSize:](v8, "setMessageSize:", [v18 unsignedIntegerValue]);
      }

      self = v8;
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)description
{
  numberOfFailures = [(MessageDeliveryInfo *)self numberOfFailures];
  failedCellularAttempts = [(MessageDeliveryInfo *)self failedCellularAttempts];
  [(MessageDeliveryInfo *)self lastStatus];
  v5 = MFMessageDeliveryStatusString();
  lastAttempt = [(MessageDeliveryInfo *)self lastAttempt];
  v7 = [NSString stringWithFormat:@"numberOfFailures: %d, failedCellularAttempts: %d, lastStatus: %@, lastAttempt: %@, message size: %d bytes", numberOfFailures, failedCellularAttempts, v5, lastAttempt, [(MessageDeliveryInfo *)self messageSize]];

  return v7;
}

@end