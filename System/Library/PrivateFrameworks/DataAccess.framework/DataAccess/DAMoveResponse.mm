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
  status = [(DAMoveResponse *)self status];
  sourceID = [(DAMoveResponse *)self sourceID];
  destID = [(DAMoveResponse *)self destID];
  origRequest = [(DAMoveResponse *)self origRequest];
  v9 = [v3 stringWithFormat:@"%@ status %d, sourceID %@, destID %@, origRequest (%@)", v4, status, sourceID, destID, origRequest];

  return v9;
}

@end