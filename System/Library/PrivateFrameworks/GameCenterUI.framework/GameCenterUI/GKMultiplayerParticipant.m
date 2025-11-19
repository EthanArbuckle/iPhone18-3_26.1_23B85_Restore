@interface GKMultiplayerParticipant
+ (id)stringFromGKMultiplayerParticipantStatus:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isSharePlayInvitee;
- (GKMultiplayerParticipant)init;
- (NSString)statusName;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation GKMultiplayerParticipant

- (GKMultiplayerParticipant)init
{
  v3.receiver = self;
  v3.super_class = GKMultiplayerParticipant;
  result = [(GKMultiplayerParticipant *)&v3 init];
  if (result)
  {
    result->_status = 7;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      type = self->_type;
      if (type == [(GKMultiplayerParticipant *)v5 type]&& (status = self->_status, status == [(GKMultiplayerParticipant *)v5 status]))
      {
        player = self->_player;
        v9 = [(GKMultiplayerParticipant *)v5 player];
        v10 = [(GKPlayer *)player isEqual:v9];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(GKMultiplayerParticipant);
  [(GKMultiplayerParticipant *)v4 setType:self->_type];
  [(GKMultiplayerParticipant *)v4 setPlayer:self->_player];
  [(GKMultiplayerParticipant *)v4 setStatus:self->_status];
  [(GKMultiplayerParticipant *)v4 setNumber:self->_number];
  return v4;
}

- (NSString)statusName
{
  v2 = [(GKMultiplayerParticipant *)self status];

  return [GKMultiplayerParticipant stringFromGKMultiplayerParticipantStatus:v2];
}

- (id)description
{
  type = self->_type;
  switch(type)
  {
    case 2:
      goto LABEL_4;
    case 1:
      v7 = @"Automatch";
      break;
    case 0:
LABEL_4:
      v4 = MEMORY[0x277CCACA8];
      player = self->_player;
      v6 = [(GKMultiplayerParticipant *)self statusName];
      v7 = [v4 stringWithFormat:@" player = %@, status = %@", player, v6];

      break;
    default:
      v7 = @"Add";
      break;
  }

  v11.receiver = self;
  v11.super_class = GKMultiplayerParticipant;
  v8 = [(GKMultiplayerParticipant *)&v11 description];
  v9 = [v8 stringByAppendingString:v7];

  return v9;
}

+ (id)stringFromGKMultiplayerParticipantStatus:(int64_t)a3
{
  if (a3 > 0x15)
  {
    return @"Unknown";
  }

  else
  {
    return off_27966AA10[a3];
  }
}

- (BOOL)isSharePlayInvitee
{
  v2 = [(GKMultiplayerParticipant *)self player];
  v3 = [v2 tuParticipant];
  v4 = v3 != 0;

  return v4;
}

@end