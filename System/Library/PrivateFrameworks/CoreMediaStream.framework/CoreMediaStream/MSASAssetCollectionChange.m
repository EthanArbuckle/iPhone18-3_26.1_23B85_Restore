@interface MSASAssetCollectionChange
- (id)description;
@end

@implementation MSASAssetCollectionChange

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = MSASAssetCollectionChange;
  v4 = [(MSASAssetCollectionChange *)&v10 description];
  GUID = self->_GUID;
  ctag = self->_ctag;
  v7 = [MEMORY[0x277CCACA8] MSStringWithBool:self->_wasDeleted];
  v8 = [v3 stringWithFormat:@"%@: GUID : %@, ctag: %@, was deleted: %@", v4, GUID, ctag, v7];

  return v8;
}

@end