@interface PDSCDUser
+ (id)insertIntoManagedObjectContext:(id)context;
+ (id)userFromUser:(id)user insertIntoManagedObjectContext:(id)context;
- (id)user;
@end

@implementation PDSCDUser

- (id)user
{
  if ([(PDSCDUser *)self userType]== 1)
  {
    v3 = objc_alloc(MEMORY[0x277D37AD0]);
    userID = [(PDSCDUser *)self userID];
    v5 = [v3 initWithUserID:userID userType:{-[PDSCDUser userType](self, "userType")}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)insertIntoManagedObjectContext:(id)context
{
  v4 = MEMORY[0x277CBE408];
  contextCopy = context;
  v6 = [v4 entityForName:@"PDSCDUser" inManagedObjectContext:contextCopy];
  v7 = [[self alloc] initWithEntity:v6 insertIntoManagedObjectContext:contextCopy];

  return v7;
}

+ (id)userFromUser:(id)user insertIntoManagedObjectContext:(id)context
{
  userCopy = user;
  v7 = [self insertIntoManagedObjectContext:context];
  userID = [userCopy userID];
  [v7 setUserID:userID];

  userType = [userCopy userType];
  [v7 setUserType:userType];

  return v7;
}

@end