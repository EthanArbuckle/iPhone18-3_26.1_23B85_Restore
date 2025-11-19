@interface IDSNWRemoteObject
- (IDSNWRemoteObject)initWithFramer:(id)a3;
- (IDSNWRemoteObject)initWithFramer:(id)a3 forIDSDestination:(id)a4;
- (void)messageIdentifier:(id)a3 alternateCallbackID:(id)a4 forAccount:(id)a5 updatedWithResponseCode:(int64_t)a6 error:(id)a7 lastCall:(BOOL)a8 context:(id)a9;
@end

@implementation IDSNWRemoteObject

- (IDSNWRemoteObject)initWithFramer:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IDSNWRemoteObject;
  v6 = [(IDSNWRemoteObject *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_framer, a3);
  }

  return v7;
}

- (IDSNWRemoteObject)initWithFramer:(id)a3 forIDSDestination:(id)a4
{
  v7 = a3;
  v8 = a4;
  NSLog(@"NW: creating new IDSNWRemoteObject for framer: %lu, forIDSDestination: %@", [v7 hash], v8);
  v12.receiver = self;
  v12.super_class = IDSNWRemoteObject;
  v9 = [(IDSNWRemoteObject *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_framer, a3);
    objc_storeStrong(&v10->_idsDestination, a4);
  }

  return v10;
}

- (void)messageIdentifier:(id)a3 alternateCallbackID:(id)a4 forAccount:(id)a5 updatedWithResponseCode:(int64_t)a6 error:(id)a7 lastCall:(BOOL)a8 context:(id)a9
{
  v9 = @"NO";
  if (a8)
  {
    v9 = @"YES";
  }

  NSLog(@"NW:sendMessage updatedWithResponseCode: %ld identifier: %@ alternateCallbackID: %@ error: %@ lastCall: %@", a2, a3, a4, a5, a6, a3, a4, a7, v9);
}

@end