@interface CKGroupUpdate
- (CKGroupUpdate)initWithType:(int64_t)a3 handleID:(id)a4;
- (id)description;
@end

@implementation CKGroupUpdate

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(CKGroupUpdate *)self groupUpdateType];
  v5 = [(CKGroupUpdate *)self handleID];
  v6 = [v3 stringWithFormat:@"[CKGroupUpdate type:%lu handleID:%@ ]", v4, v5];

  return v6;
}

- (CKGroupUpdate)initWithType:(int64_t)a3 handleID:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = CKGroupUpdate;
  v7 = [(CKGroupUpdate *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(CKGroupUpdate *)v7 setGroupUpdateType:a3];
    [(CKGroupUpdate *)v8 setHandleID:v6];
  }

  return v8;
}

@end