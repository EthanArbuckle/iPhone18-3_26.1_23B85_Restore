@interface _COMTActionDirectorServiceProvider
- (id)clusterRoleMonitorWithCluster:(id)cluster;
- (id)messageChannelWithTopic:(id)topic cluster:(id)cluster;
@end

@implementation _COMTActionDirectorServiceProvider

- (id)clusterRoleMonitorWithCluster:(id)cluster
{
  v3 = MEMORY[0x277CFD0A8];
  clusterCopy = cluster;
  v5 = [[v3 alloc] initWithCluster:clusterCopy];

  return v5;
}

- (id)messageChannelWithTopic:(id)topic cluster:(id)cluster
{
  v5 = MEMORY[0x277CFD0D0];
  clusterCopy = cluster;
  topicCopy = topic;
  v8 = [[v5 alloc] initWithTopic:topicCopy cluster:clusterCopy];

  return v8;
}

@end