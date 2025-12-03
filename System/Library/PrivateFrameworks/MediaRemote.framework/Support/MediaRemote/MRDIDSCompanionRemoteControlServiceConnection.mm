@interface MRDIDSCompanionRemoteControlServiceConnection
- (void)dealloc;
@end

@implementation MRDIDSCompanionRemoteControlServiceConnection

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  notificationToken = [(MRDIDSCompanionRemoteControlServiceConnection *)self notificationToken];
  [v3 removeObserver:notificationToken];

  v5.receiver = self;
  v5.super_class = MRDIDSCompanionRemoteControlServiceConnection;
  [(MRDIDSCompanionRemoteControlServiceConnection *)&v5 dealloc];
}

@end