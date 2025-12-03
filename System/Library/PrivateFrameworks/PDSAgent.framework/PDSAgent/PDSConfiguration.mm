@interface PDSConfiguration
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation PDSConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  queue = [(PDSConfiguration *)self queue];
  [v4 setQueue:queue];

  workloop = [(PDSConfiguration *)self workloop];
  [v4 setWorkloop:workloop];

  daemonRootDirectory = [(PDSConfiguration *)self daemonRootDirectory];
  v8 = [daemonRootDirectory copy];
  [v4 setDaemonRootDirectory:v8];

  pushHandlerPort = [(PDSConfiguration *)self pushHandlerPort];
  v10 = [pushHandlerPort copy];
  [v4 setPushHandlerPort:v10];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  queue = [(PDSConfiguration *)self queue];
  workloop = [(PDSConfiguration *)self workloop];
  daemonRootDirectory = [(PDSConfiguration *)self daemonRootDirectory];
  pushHandlerPort = [(PDSConfiguration *)self pushHandlerPort];
  v9 = [v3 stringWithFormat:@"<%@: %p queue = %p; workloop = %p; daemonRootDirectory = %@; pushHandlerPort = %@>", v4, self, queue, workloop, daemonRootDirectory, pushHandlerPort];;

  return v9;
}

@end