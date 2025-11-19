@interface CHSAppIntentsXPCListenerEndpointProvider
- (CHSAppIntentsXPCListenerEndpointProvider)initWithBundleIdentifier:(id)a3;
@end

@implementation CHSAppIntentsXPCListenerEndpointProvider

- (CHSAppIntentsXPCListenerEndpointProvider)initWithBundleIdentifier:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CHSAppIntentsXPCListenerEndpointProvider;
  v5 = [(CHSAppIntentsXPCListenerEndpointProvider *)&v11 init];
  if (v5)
  {
    v6 = +[CHSChronoServicesConnection sharedInstance];
    connection = v5->_connection;
    v5->_connection = v6;

    v8 = [v4 copy];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v8;
  }

  return v5;
}

@end