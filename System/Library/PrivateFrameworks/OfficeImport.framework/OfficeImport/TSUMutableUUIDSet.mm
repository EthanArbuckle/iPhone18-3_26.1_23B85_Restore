@interface TSUMutableUUIDSet
- (void)addUuidsFromSet:(id)set;
- (void)removeUuidsFromSet:(id)set;
@end

@implementation TSUMutableUUIDSet

- (void)addUuidsFromSet:(id)set
{
  setCopy = set;
  v5 = setCopy;
  if (setCopy)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __37__TSUMutableUUIDSet_addUuidsFromSet___block_invoke;
    v6[3] = &unk_2799C6C90;
    v6[4] = self;
    [setCopy foreachUuid:v6];
  }
}

- (void)removeUuidsFromSet:(id)set
{
  setCopy = set;
  v5 = setCopy;
  if (setCopy)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __40__TSUMutableUUIDSet_removeUuidsFromSet___block_invoke;
    v6[3] = &unk_2799C6C90;
    v6[4] = self;
    [setCopy foreachUuid:v6];
  }
}

@end