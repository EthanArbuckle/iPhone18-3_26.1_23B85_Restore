@interface PDSCDUser
+ (id)insertIntoManagedObjectContext:(id)a3;
+ (id)userFromUser:(id)a3 insertIntoManagedObjectContext:(id)a4;
- (id)user;
@end

@implementation PDSCDUser

- (id)user
{
  if ([(PDSCDUser *)self userType]== 1)
  {
    v3 = objc_alloc(MEMORY[0x277D37AD0]);
    v4 = [(PDSCDUser *)self userID];
    v5 = [v3 initWithUserID:v4 userType:{-[PDSCDUser userType](self, "userType")}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)insertIntoManagedObjectContext:(id)a3
{
  v4 = MEMORY[0x277CBE408];
  v5 = a3;
  v6 = [v4 entityForName:@"PDSCDUser" inManagedObjectContext:v5];
  v7 = [[a1 alloc] initWithEntity:v6 insertIntoManagedObjectContext:v5];

  return v7;
}

+ (id)userFromUser:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v6 = a3;
  v7 = [a1 insertIntoManagedObjectContext:a4];
  v8 = [v6 userID];
  [v7 setUserID:v8];

  v9 = [v6 userType];
  [v7 setUserType:v9];

  return v7;
}

@end