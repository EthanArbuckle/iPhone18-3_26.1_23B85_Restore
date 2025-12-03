@interface CKGroupUpdate
- (CKGroupUpdate)initWithType:(int64_t)type handleID:(id)d;
- (id)description;
@end

@implementation CKGroupUpdate

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  groupUpdateType = [(CKGroupUpdate *)self groupUpdateType];
  handleID = [(CKGroupUpdate *)self handleID];
  v6 = [v3 stringWithFormat:@"[CKGroupUpdate type:%lu handleID:%@ ]", groupUpdateType, handleID];

  return v6;
}

- (CKGroupUpdate)initWithType:(int64_t)type handleID:(id)d
{
  dCopy = d;
  v10.receiver = self;
  v10.super_class = CKGroupUpdate;
  v7 = [(CKGroupUpdate *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(CKGroupUpdate *)v7 setGroupUpdateType:type];
    [(CKGroupUpdate *)v8 setHandleID:dCopy];
  }

  return v8;
}

@end