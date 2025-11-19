@interface HKHealthRecordsDaemonProxyProvider
- (HKHealthRecordsDaemonProxyProvider)initWithConnection:(id)a3 serviceIdentifier:(id)a4 exportedObject:(id)a5;
@end

@implementation HKHealthRecordsDaemonProxyProvider

- (HKHealthRecordsDaemonProxyProvider)initWithConnection:(id)a3 serviceIdentifier:(id)a4 exportedObject:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v8 exportedInterface];
  v12 = [v8 remoteInterface];
  v15.receiver = self;
  v15.super_class = HKHealthRecordsDaemonProxyProvider;
  v13 = [(HKProxyProvider *)&v15 initWithSource:v10 serviceIdentifier:v9 exportedObject:v8 exportedInterface:v11 remoteInterface:v12];

  return v13;
}

@end