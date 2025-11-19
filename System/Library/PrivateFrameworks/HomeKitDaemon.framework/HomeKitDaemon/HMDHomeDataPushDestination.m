@interface HMDHomeDataPushDestination
- (HMDHomeDataPushDestination)initWithUser:(id)a3 destination:(id)a4;
- (NSString)pushDestination;
- (id)description;
@end

@implementation HMDHomeDataPushDestination

- (NSString)pushDestination
{
  v3 = [(HMDHomeDataPushDestination *)self destination];

  if (v3)
  {
    v4 = [(HMDHomeDataPushDestination *)self destination];
  }

  else
  {
    v5 = [(HMDHomeDataPushDestination *)self user];
    v4 = [v5 userID];
  }

  return v4;
}

- (id)description
{
  if (shouldLogPrivateInformation())
  {
    v3 = [(HMDHomeDataPushDestination *)self destination];
  }

  else
  {
    v3 = @"...";
    v4 = @"...";
  }

  v5 = MEMORY[0x277CCACA8];
  v6 = [(HMDHomeDataPushDestination *)self user];
  [(HMDHomeDataPushDestination *)self ignoreConfigCompare];
  v7 = HMFBooleanToString();
  v8 = [v5 stringWithFormat:@"[Push-Destination: User: %@, Dest: %@, Ignore-config: %@]", v6, v3, v7];

  return v8;
}

- (HMDHomeDataPushDestination)initWithUser:(id)a3 destination:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = HMDHomeDataPushDestination;
  v9 = [(HMDHomeDataPushDestination *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_user, a3);
    v11 = [v7 userID];
    username = v10->_username;
    v10->_username = v11;

    objc_storeStrong(&v10->_destination, a4);
  }

  return v10;
}

@end