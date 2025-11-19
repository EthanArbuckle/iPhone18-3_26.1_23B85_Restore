@interface DTAssertionPidInfo
- (BOOL)hasNoMoreClients;
- (BOOL)removeClaimFromClient:(id)a3;
- (id)initForPid:(int)a3 withRemoveBlocks:(id)a4 onBehalfOfClient:(id)a5;
- (void)removeAssertions;
@end

@implementation DTAssertionPidInfo

- (id)initForPid:(int)a3 withRemoveBlocks:(id)a4 onBehalfOfClient:(id)a5
{
  v8 = a4;
  v9 = a5;
  v17.receiver = self;
  v17.super_class = DTAssertionPidInfo;
  v10 = [(DTAssertionPidInfo *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_pid = a3;
    v12 = [v8 copy];
    blocks = v11->_blocks;
    v11->_blocks = v12;

    v14 = [MEMORY[0x277CBEB58] setWithObject:v9];
    clientsWithClaim = v11->_clientsWithClaim;
    v11->_clientsWithClaim = v14;
  }

  return v11;
}

- (void)removeAssertions
{
  blocks = self->_blocks;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_247FD693C;
  v3[3] = &unk_278EF3790;
  v3[4] = self;
  [(NSArray *)blocks enumerateObjectsUsingBlock:v3];
}

- (BOOL)removeClaimFromClient:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableSet *)self->_clientsWithClaim containsObject:v4];
  if (v5)
  {
    [(NSMutableSet *)self->_clientsWithClaim removeObject:v4];
  }

  return v5;
}

- (BOOL)hasNoMoreClients
{
  v2 = [(NSMutableSet *)self->_clientsWithClaim anyObject];
  v3 = v2 == 0;

  return v3;
}

@end