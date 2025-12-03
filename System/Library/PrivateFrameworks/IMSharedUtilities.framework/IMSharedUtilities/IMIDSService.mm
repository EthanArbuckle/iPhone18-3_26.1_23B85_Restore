@interface IMIDSService
+ (BOOL)service:(id)service sendMessage:(id)message fromAccount:(id)account toDestinations:(id)destinations priority:(int64_t)priority options:(id)options identifier:(id *)identifier error:(id *)self0;
+ (BOOL)service:(id)service sendMessage:(id)message toDestinations:(id)destinations priority:(int64_t)priority options:(id)options identifier:(id *)identifier error:(id *)error;
@end

@implementation IMIDSService

+ (BOOL)service:(id)service sendMessage:(id)message toDestinations:(id)destinations priority:(int64_t)priority options:(id)options identifier:(id *)identifier error:(id *)error
{
  optionsCopy = options;
  destinationsCopy = destinations;
  messageCopy = message;
  serviceCopy = service;
  v18 = +[IMIDSServiceController sharedInstance];
  serviceIdentifier = [serviceCopy serviceIdentifier];
  [v18 logIfDebuggingService:serviceIdentifier method:"+[IMIDSService service:sendMessage:toDestinations:priority:options:identifier:error:]"];

  LOBYTE(identifier) = [serviceCopy sendMessage:messageCopy toDestinations:destinationsCopy priority:priority options:optionsCopy identifier:identifier error:error];
  return identifier;
}

+ (BOOL)service:(id)service sendMessage:(id)message fromAccount:(id)account toDestinations:(id)destinations priority:(int64_t)priority options:(id)options identifier:(id *)identifier error:(id *)self0
{
  optionsCopy = options;
  destinationsCopy = destinations;
  accountCopy = account;
  messageCopy = message;
  serviceCopy = service;
  v20 = +[IMIDSServiceController sharedInstance];
  serviceIdentifier = [serviceCopy serviceIdentifier];
  [v20 logIfDebuggingService:serviceIdentifier method:"+[IMIDSService service:sendMessage:fromAccount:toDestinations:priority:options:identifier:error:]"];

  LOBYTE(priority) = [serviceCopy sendMessage:messageCopy fromAccount:accountCopy toDestinations:destinationsCopy priority:priority options:optionsCopy identifier:identifier error:error];
  return priority;
}

@end