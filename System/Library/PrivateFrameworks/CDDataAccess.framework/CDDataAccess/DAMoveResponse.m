@interface DAMoveResponse
- (id)description;
@end

@implementation DAMoveResponse

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = DAMoveResponse;
  v4 = [(DAMoveResponse *)&v11 description];
  v5 = [(DAMoveResponse *)self status];
  v6 = [(DAMoveResponse *)self sourceID];
  v7 = [(DAMoveResponse *)self destID];
  v8 = [(DAMoveResponse *)self origRequest];
  v9 = [v3 stringWithFormat:@"%@ status %d, sourceID %@, destID %@, origRequest (%@)", v4, v5, v6, v7, v8];

  return v9;
}

@end