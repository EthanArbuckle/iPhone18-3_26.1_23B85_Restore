@interface GKMultiplayerParticipant
+ (id)stringFromGKMultiplayerParticipantStatus:(int64_t)status;
- (BOOL)isEqual:(id)equal;
- (BOOL)isSharePlayInvitee;
- (GKMultiplayerParticipant)init;
- (NSString)statusName;
- (id)copyWithZone:(_NSZone *)zone;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      type = self->_type;
      if (type == [(GKMultiplayerParticipant *)v5 type]&& (status = self->_status, status == [(GKMultiplayerParticipant *)v5 status]))
      {
        player = self->_player;
        player = [(GKMultiplayerParticipant *)v5 player];
        v10 = [(GKPlayer *)player isEqual:player];
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

- (id)copyWithZone:(_NSZone *)zone
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
  status = [(GKMultiplayerParticipant *)self status];

  return [GKMultiplayerParticipant stringFromGKMultiplayerParticipantStatus:status];
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
      statusName = [(GKMultiplayerParticipant *)self statusName];
      v7 = [v4 stringWithFormat:@" player = %@, status = %@", player, statusName];

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

+ (id)stringFromGKMultiplayerParticipantStatus:(int64_t)status
{
  if (status > 0x15)
  {
    return @"Unknown";
  }

  else
  {
    return off_27966AA10[status];
  }
}

- (BOOL)isSharePlayInvitee
{
  player = [(GKMultiplayerParticipant *)self player];
  tuParticipant = [player tuParticipant];
  v4 = tuParticipant != 0;

  return v4;
}

@end