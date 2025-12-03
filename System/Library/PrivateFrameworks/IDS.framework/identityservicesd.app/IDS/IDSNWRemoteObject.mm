@interface IDSNWRemoteObject
- (IDSNWRemoteObject)initWithFramer:(id)framer;
- (IDSNWRemoteObject)initWithFramer:(id)framer forIDSDestination:(id)destination;
- (void)messageIdentifier:(id)identifier alternateCallbackID:(id)d forAccount:(id)account updatedWithResponseCode:(int64_t)code error:(id)error lastCall:(BOOL)call context:(id)context;
@end

@implementation IDSNWRemoteObject

- (IDSNWRemoteObject)initWithFramer:(id)framer
{
  framerCopy = framer;
  v9.receiver = self;
  v9.super_class = IDSNWRemoteObject;
  v6 = [(IDSNWRemoteObject *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_framer, framer);
  }

  return v7;
}

- (IDSNWRemoteObject)initWithFramer:(id)framer forIDSDestination:(id)destination
{
  framerCopy = framer;
  destinationCopy = destination;
  NSLog(@"NW: creating new IDSNWRemoteObject for framer: %lu, forIDSDestination: %@", [framerCopy hash], destinationCopy);
  v12.receiver = self;
  v12.super_class = IDSNWRemoteObject;
  v9 = [(IDSNWRemoteObject *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_framer, framer);
    objc_storeStrong(&v10->_idsDestination, destination);
  }

  return v10;
}

- (void)messageIdentifier:(id)identifier alternateCallbackID:(id)d forAccount:(id)account updatedWithResponseCode:(int64_t)code error:(id)error lastCall:(BOOL)call context:(id)context
{
  v9 = @"NO";
  if (call)
  {
    v9 = @"YES";
  }

  NSLog(@"NW:sendMessage updatedWithResponseCode: %ld identifier: %@ alternateCallbackID: %@ error: %@ lastCall: %@", a2, identifier, d, account, code, identifier, d, error, v9);
}

@end