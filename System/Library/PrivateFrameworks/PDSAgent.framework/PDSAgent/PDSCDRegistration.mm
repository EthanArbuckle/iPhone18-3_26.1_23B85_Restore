@interface PDSCDRegistration
+ (id)insertIntoManagedObjectContext:(id)context;
+ (id)registrationFromEntry:(id)entry insertIntoManagedObjectContext:(id)context;
+ (id)uniquenessPredicateForEntry:(id)entry;
- (id)entryWithUserCache:(id)cache;
@end

@implementation PDSCDRegistration

+ (id)insertIntoManagedObjectContext:(id)context
{
  v4 = MEMORY[0x277CBE408];
  contextCopy = context;
  v6 = [v4 entityForName:@"PDSCDRegistration" inManagedObjectContext:contextCopy];
  v7 = [[self alloc] initWithEntity:v6 insertIntoManagedObjectContext:contextCopy];

  return v7;
}

+ (id)registrationFromEntry:(id)entry insertIntoManagedObjectContext:(id)context
{
  entryCopy = entry;
  v6 = [PDSCDRegistration insertIntoManagedObjectContext:context];
  [v6 setEntryState:{objc_msgSend(entryCopy, "state")}];
  registration = [entryCopy registration];
  [v6 setEnvironment:{objc_msgSend(registration, "pushEnvironment")}];

  registration2 = [entryCopy registration];
  topicString = [registration2 topicString];
  [v6 setTopic:topicString];

  registration3 = [entryCopy registration];
  qualifierString = [registration3 qualifierString];
  [v6 setQualifier:qualifierString];

  clientID = [entryCopy clientID];

  [v6 setClientID:clientID];

  return v6;
}

+ (id)uniquenessPredicateForEntry:(id)entry
{
  v3 = MEMORY[0x277CCAC30];
  entryCopy = entry;
  registration = [entryCopy registration];
  qualifierString = [registration qualifierString];
  registration2 = [entryCopy registration];
  topicString = [registration2 topicString];
  registration3 = [entryCopy registration];

  v10 = [v3 predicateWithFormat:@"qualifier == %@ && topic == %@ && environment == %d", qualifierString, topicString, objc_msgSend(registration3, "pushEnvironment")];

  return v10;
}

- (id)entryWithUserCache:(id)cache
{
  cacheCopy = cache;
  user = [(PDSCDRegistration *)self user];
  userID = [user userID];
  v8User = [cacheCopy objectForKeyedSubscript:userID];

  if (!v8User)
  {
    user2 = [(PDSCDRegistration *)self user];
    v8User = [user2 user];

    if (!v8User)
    {
LABEL_8:
      v10 = 0;
      goto LABEL_9;
    }

    userID2 = [v8User userID];
    [cacheCopy setObject:v8User forKeyedSubscript:userID2];
  }

  if ([(PDSCDRegistration *)self environment]!= 1 && [(PDSCDRegistration *)self environment]|| ([(PDSCDRegistration *)self entryState]& 0x80000000) != 0 || [(PDSCDRegistration *)self entryState]> 3)
  {
    goto LABEL_8;
  }

  v12 = objc_alloc(MEMORY[0x277D37AC0]);
  topic = [(PDSCDRegistration *)self topic];
  qualifier = [(PDSCDRegistration *)self qualifier];
  v15 = [v12 initWithTopic:topic qualifier:qualifier pushEnvironment:{-[PDSCDRegistration environment](self, "environment")}];

  v16 = objc_alloc(MEMORY[0x277D37AB0]);
  clientID = [(PDSCDRegistration *)self clientID];
  v10 = [v16 initWithUser:v8User registration:v15 clientID:clientID];

  LODWORD(clientID) = [v10 state];
  if (clientID != [(PDSCDRegistration *)self entryState])
  {
    v18 = [v10 entryWithUpdatedState:{-[PDSCDRegistration entryState](self, "entryState")}];

    v10 = v18;
  }

LABEL_9:

  return v10;
}

@end