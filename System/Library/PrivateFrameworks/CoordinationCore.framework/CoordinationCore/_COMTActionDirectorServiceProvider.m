@interface _COMTActionDirectorServiceProvider
- (id)clusterRoleMonitorWithCluster:(id)a3;
- (id)messageChannelWithTopic:(id)a3 cluster:(id)a4;
@end

@implementation _COMTActionDirectorServiceProvider

- (id)clusterRoleMonitorWithCluster:(id)a3
{
  v3 = MEMORY[0x277CFD0A8];
  v4 = a3;
  v5 = [[v3 alloc] initWithCluster:v4];

  return v5;
}

- (id)messageChannelWithTopic:(id)a3 cluster:(id)a4
{
  v5 = MEMORY[0x277CFD0D0];
  v6 = a4;
  v7 = a3;
  v8 = [[v5 alloc] initWithTopic:v7 cluster:v6];

  return v8;
}

@end