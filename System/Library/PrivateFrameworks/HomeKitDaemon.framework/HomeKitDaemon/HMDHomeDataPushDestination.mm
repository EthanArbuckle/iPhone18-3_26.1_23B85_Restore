@interface HMDHomeDataPushDestination
- (HMDHomeDataPushDestination)initWithUser:(id)user destination:(id)destination;
- (NSString)pushDestination;
- (id)description;
@end

@implementation HMDHomeDataPushDestination

- (NSString)pushDestination
{
  destination = [(HMDHomeDataPushDestination *)self destination];

  if (destination)
  {
    destination2 = [(HMDHomeDataPushDestination *)self destination];
  }

  else
  {
    user = [(HMDHomeDataPushDestination *)self user];
    destination2 = [user userID];
  }

  return destination2;
}

- (id)description
{
  if (shouldLogPrivateInformation())
  {
    destination = [(HMDHomeDataPushDestination *)self destination];
  }

  else
  {
    destination = @"...";
    v4 = @"...";
  }

  v5 = MEMORY[0x277CCACA8];
  user = [(HMDHomeDataPushDestination *)self user];
  [(HMDHomeDataPushDestination *)self ignoreConfigCompare];
  v7 = HMFBooleanToString();
  v8 = [v5 stringWithFormat:@"[Push-Destination: User: %@, Dest: %@, Ignore-config: %@]", user, destination, v7];

  return v8;
}

- (HMDHomeDataPushDestination)initWithUser:(id)user destination:(id)destination
{
  userCopy = user;
  destinationCopy = destination;
  v14.receiver = self;
  v14.super_class = HMDHomeDataPushDestination;
  v9 = [(HMDHomeDataPushDestination *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_user, user);
    userID = [userCopy userID];
    username = v10->_username;
    v10->_username = userID;

    objc_storeStrong(&v10->_destination, destination);
  }

  return v10;
}

@end