@interface DTAssertionPidInfo
- (BOOL)hasNoMoreClients;
- (BOOL)removeClaimFromClient:(id)client;
- (id)initForPid:(int)pid withRemoveBlocks:(id)blocks onBehalfOfClient:(id)client;
- (void)removeAssertions;
@end

@implementation DTAssertionPidInfo

- (id)initForPid:(int)pid withRemoveBlocks:(id)blocks onBehalfOfClient:(id)client
{
  blocksCopy = blocks;
  clientCopy = client;
  v17.receiver = self;
  v17.super_class = DTAssertionPidInfo;
  v10 = [(DTAssertionPidInfo *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_pid = pid;
    v12 = [blocksCopy copy];
    blocks = v11->_blocks;
    v11->_blocks = v12;

    v14 = [NSMutableSet setWithObject:clientCopy];
    clientsWithClaim = v11->_clientsWithClaim;
    v11->_clientsWithClaim = v14;
  }

  return v11;
}

- (void)removeAssertions
{
  blocks = self->_blocks;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000C3D4;
  v3[3] = &unk_10001D6D8;
  v3[4] = self;
  [(NSArray *)blocks enumerateObjectsUsingBlock:v3];
}

- (BOOL)removeClaimFromClient:(id)client
{
  clientCopy = client;
  v5 = [(NSMutableSet *)self->_clientsWithClaim containsObject:clientCopy];
  if (v5)
  {
    [(NSMutableSet *)self->_clientsWithClaim removeObject:clientCopy];
  }

  return v5;
}

- (BOOL)hasNoMoreClients
{
  anyObject = [(NSMutableSet *)self->_clientsWithClaim anyObject];
  v3 = anyObject == 0;

  return v3;
}

@end