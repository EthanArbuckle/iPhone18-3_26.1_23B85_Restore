@interface COClusterRoleMonitorClientInterfaceMediator
- (COClusterRoleMonitor)monitor;
- (COClusterRoleMonitorClientInterfaceMediator)initWithClusterRoleMonitor:(id)a3;
- (void)membersWithRole:(id)a3 inCluster:(id)a4 didChangeTo:(id)a5;
- (void)roleOfMember:(id)a3 inCluster:(id)a4 didChangeTo:(id)a5;
- (void)snapshotOfCluster:(id)a3 didChangeTo:(id)a4;
@end

@implementation COClusterRoleMonitorClientInterfaceMediator

- (COClusterRoleMonitorClientInterfaceMediator)initWithClusterRoleMonitor:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = COClusterRoleMonitorClientInterfaceMediator;
  v5 = [(COClusterRoleMonitorClientInterfaceMediator *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_monitor, v4);
  }

  return v6;
}

- (void)roleOfMember:(id)a3 inCluster:(id)a4 didChangeTo:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_monitor);
  v11 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained roleOfMember:v12 inCluster:v8 didChangeTo:v9];
  }
}

- (void)membersWithRole:(id)a3 inCluster:(id)a4 didChangeTo:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_monitor);
  v11 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained membersWithRole:v12 inCluster:v8 didChangeTo:v9];
  }
}

- (void)snapshotOfCluster:(id)a3 didChangeTo:(id)a4
{
  v9 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_monitor);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained snapshotOfCluster:v9 didChangeTo:v6];
  }
}

- (COClusterRoleMonitor)monitor
{
  WeakRetained = objc_loadWeakRetained(&self->_monitor);

  return WeakRetained;
}

@end