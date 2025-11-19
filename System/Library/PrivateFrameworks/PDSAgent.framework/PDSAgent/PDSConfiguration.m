@interface PDSConfiguration
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation PDSConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(PDSConfiguration *)self queue];
  [v4 setQueue:v5];

  v6 = [(PDSConfiguration *)self workloop];
  [v4 setWorkloop:v6];

  v7 = [(PDSConfiguration *)self daemonRootDirectory];
  v8 = [v7 copy];
  [v4 setDaemonRootDirectory:v8];

  v9 = [(PDSConfiguration *)self pushHandlerPort];
  v10 = [v9 copy];
  [v4 setPushHandlerPort:v10];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(PDSConfiguration *)self queue];
  v6 = [(PDSConfiguration *)self workloop];
  v7 = [(PDSConfiguration *)self daemonRootDirectory];
  v8 = [(PDSConfiguration *)self pushHandlerPort];
  v9 = [v3 stringWithFormat:@"<%@: %p queue = %p; workloop = %p; daemonRootDirectory = %@; pushHandlerPort = %@>", v4, self, v5, v6, v7, v8];;

  return v9;
}

@end