@interface COClusterRoleMonitorClientInterfaceMediator
- (COClusterRoleMonitor)monitor;
- (COClusterRoleMonitorClientInterfaceMediator)initWithClusterRoleMonitor:(id)monitor;
- (void)membersWithRole:(id)role inCluster:(id)cluster didChangeTo:(id)to;
- (void)roleOfMember:(id)member inCluster:(id)cluster didChangeTo:(id)to;
- (void)snapshotOfCluster:(id)cluster didChangeTo:(id)to;
@end

@implementation COClusterRoleMonitorClientInterfaceMediator

- (COClusterRoleMonitorClientInterfaceMediator)initWithClusterRoleMonitor:(id)monitor
{
  monitorCopy = monitor;
  v8.receiver = self;
  v8.super_class = COClusterRoleMonitorClientInterfaceMediator;
  v5 = [(COClusterRoleMonitorClientInterfaceMediator *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_monitor, monitorCopy);
  }

  return v6;
}

- (void)roleOfMember:(id)member inCluster:(id)cluster didChangeTo:(id)to
{
  memberCopy = member;
  clusterCopy = cluster;
  toCopy = to;
  WeakRetained = objc_loadWeakRetained(&self->_monitor);
  v11 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained roleOfMember:memberCopy inCluster:clusterCopy didChangeTo:toCopy];
  }
}

- (void)membersWithRole:(id)role inCluster:(id)cluster didChangeTo:(id)to
{
  roleCopy = role;
  clusterCopy = cluster;
  toCopy = to;
  WeakRetained = objc_loadWeakRetained(&self->_monitor);
  v11 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained membersWithRole:roleCopy inCluster:clusterCopy didChangeTo:toCopy];
  }
}

- (void)snapshotOfCluster:(id)cluster didChangeTo:(id)to
{
  clusterCopy = cluster;
  toCopy = to;
  WeakRetained = objc_loadWeakRetained(&self->_monitor);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained snapshotOfCluster:clusterCopy didChangeTo:toCopy];
  }
}

- (COClusterRoleMonitor)monitor
{
  WeakRetained = objc_loadWeakRetained(&self->_monitor);

  return WeakRetained;
}

@end