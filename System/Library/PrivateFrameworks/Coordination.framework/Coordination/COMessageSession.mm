@interface COMessageSession
- (BOOL)isEqual:(id)a3;
- (COMessageSession)initWithMember:(id)a3;
- (NSString)subTopic;
- (id)messageChannel;
- (unint64_t)hash;
- (void)stopWithNotice:(id)a3;
@end

@implementation COMessageSession

- (COMessageSession)initWithMember:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = COMessageSession;
  v6 = [(COMessageSession *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_member, a3);
    v7->_startTime = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  }

  return v7;
}

- (void)stopWithNotice:(id)a3
{
  v6 = a3;
  v4 = [(COMessageSession *)self messageChannel];
  v5 = v4;
  if (v4)
  {
    [v4 stopMessageSession:self withNotice:v6];
  }
}

- (id)messageChannel
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(COMessageSession *)self producer];
  }

  else
  {
    [(COMessageSession *)self consumer];
  }
  v3 = ;
  v4 = [v3 messageChannel];

  return v4;
}

- (NSString)subTopic
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(COMessageSession *)self producer];
  }

  else
  {
    [(COMessageSession *)self consumer];
  }
  v3 = ;
  v4 = [v3 subTopic];

  return v4;
}

- (unint64_t)hash
{
  v3 = [(COMessageSession *)self subTopic];
  v4 = [v3 hash];
  v5 = [(COMessageSession *)self member];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    v5 = [(COMessageSession *)self subTopic];
    v6 = [(COMessageSession *)v4 subTopic];
    v7 = [v5 isEqualToString:v6];

    if (v7)
    {
      v8 = [(COMessageSession *)self member];
      v9 = [(COMessageSession *)v4 member];
      v10 = [v8 isEqualToMember:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

@end