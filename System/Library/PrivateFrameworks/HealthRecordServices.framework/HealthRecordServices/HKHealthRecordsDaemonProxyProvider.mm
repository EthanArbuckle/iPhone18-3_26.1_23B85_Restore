@interface HKHealthRecordsDaemonProxyProvider
- (HKHealthRecordsDaemonProxyProvider)initWithConnection:(id)connection serviceIdentifier:(id)identifier exportedObject:(id)object;
@end

@implementation HKHealthRecordsDaemonProxyProvider

- (HKHealthRecordsDaemonProxyProvider)initWithConnection:(id)connection serviceIdentifier:(id)identifier exportedObject:(id)object
{
  objectCopy = object;
  identifierCopy = identifier;
  connectionCopy = connection;
  exportedInterface = [objectCopy exportedInterface];
  remoteInterface = [objectCopy remoteInterface];
  v15.receiver = self;
  v15.super_class = HKHealthRecordsDaemonProxyProvider;
  v13 = [(HKProxyProvider *)&v15 initWithSource:connectionCopy serviceIdentifier:identifierCopy exportedObject:objectCopy exportedInterface:exportedInterface remoteInterface:remoteInterface];

  return v13;
}

@end