@interface PDSCDRegistration
+ (id)insertIntoManagedObjectContext:(id)a3;
+ (id)registrationFromEntry:(id)a3 insertIntoManagedObjectContext:(id)a4;
+ (id)uniquenessPredicateForEntry:(id)a3;
- (id)entryWithUserCache:(id)a3;
@end

@implementation PDSCDRegistration

+ (id)insertIntoManagedObjectContext:(id)a3
{
  v4 = MEMORY[0x277CBE408];
  v5 = a3;
  v6 = [v4 entityForName:@"PDSCDRegistration" inManagedObjectContext:v5];
  v7 = [[a1 alloc] initWithEntity:v6 insertIntoManagedObjectContext:v5];

  return v7;
}

+ (id)registrationFromEntry:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v5 = a3;
  v6 = [PDSCDRegistration insertIntoManagedObjectContext:a4];
  [v6 setEntryState:{objc_msgSend(v5, "state")}];
  v7 = [v5 registration];
  [v6 setEnvironment:{objc_msgSend(v7, "pushEnvironment")}];

  v8 = [v5 registration];
  v9 = [v8 topicString];
  [v6 setTopic:v9];

  v10 = [v5 registration];
  v11 = [v10 qualifierString];
  [v6 setQualifier:v11];

  v12 = [v5 clientID];

  [v6 setClientID:v12];

  return v6;
}

+ (id)uniquenessPredicateForEntry:(id)a3
{
  v3 = MEMORY[0x277CCAC30];
  v4 = a3;
  v5 = [v4 registration];
  v6 = [v5 qualifierString];
  v7 = [v4 registration];
  v8 = [v7 topicString];
  v9 = [v4 registration];

  v10 = [v3 predicateWithFormat:@"qualifier == %@ && topic == %@ && environment == %d", v6, v8, objc_msgSend(v9, "pushEnvironment")];

  return v10;
}

- (id)entryWithUserCache:(id)a3
{
  v4 = a3;
  v5 = [(PDSCDRegistration *)self user];
  v6 = [v5 userID];
  v7 = [v4 objectForKeyedSubscript:v6];

  if (!v7)
  {
    v8 = [(PDSCDRegistration *)self user];
    v7 = [v8 user];

    if (!v7)
    {
LABEL_8:
      v10 = 0;
      goto LABEL_9;
    }

    v9 = [v7 userID];
    [v4 setObject:v7 forKeyedSubscript:v9];
  }

  if ([(PDSCDRegistration *)self environment]!= 1 && [(PDSCDRegistration *)self environment]|| ([(PDSCDRegistration *)self entryState]& 0x80000000) != 0 || [(PDSCDRegistration *)self entryState]> 3)
  {
    goto LABEL_8;
  }

  v12 = objc_alloc(MEMORY[0x277D37AC0]);
  v13 = [(PDSCDRegistration *)self topic];
  v14 = [(PDSCDRegistration *)self qualifier];
  v15 = [v12 initWithTopic:v13 qualifier:v14 pushEnvironment:{-[PDSCDRegistration environment](self, "environment")}];

  v16 = objc_alloc(MEMORY[0x277D37AB0]);
  v17 = [(PDSCDRegistration *)self clientID];
  v10 = [v16 initWithUser:v7 registration:v15 clientID:v17];

  LODWORD(v17) = [v10 state];
  if (v17 != [(PDSCDRegistration *)self entryState])
  {
    v18 = [v10 entryWithUpdatedState:{-[PDSCDRegistration entryState](self, "entryState")}];

    v10 = v18;
  }

LABEL_9:

  return v10;
}

@end