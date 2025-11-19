@interface _BlastDoorLPGameCenterInvitationMetadata
- (BOOL)isEqual:(id)a3;
- (_BlastDoorLPGameCenterInvitationMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_enumerateAsynchronousFields:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _BlastDoorLPGameCenterInvitationMetadata

- (_BlastDoorLPGameCenterInvitationMetadata)initWithCoder:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15.receiver = self;
  v15.super_class = _BlastDoorLPGameCenterInvitationMetadata;
  v5 = [(_BlastDoorLPGameCenterInvitationMetadata *)&v15 init];
  if (v5)
  {
    v6 = decodeStringForKey(v4, @"game");
    v7 = *&v5->_maximumNumberOfPlayers;
    *&v5->_maximumNumberOfPlayers = v6;

    *(&v5->super.__dummyPropertyForObservation + 1) = [v4 decodeInt32ForKey:@"numberOfPlayers"];
    v5->_numberOfPlayers = [v4 decodeInt32ForKey:@"minimumNumberOfPlayers"];
    v5->_minimumNumberOfPlayers = [v4 decodeInt32ForKey:@"maximumNumberOfPlayers"];
    v8 = [v4 _bd_lp_strictlyDecodeLPImageForKey:@"image"];
    game = v5->_game;
    v5->_game = v8;

    v10 = [v4 _bd_lp_strictlyDecodeLPImageForKey:@"icon"];
    image = v5->_image;
    v5->_image = v10;

    v12 = v5;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = *&self->_maximumNumberOfPlayers;
  v5 = a3;
  [v5 _bd_lp_encodeObjectIfNotNil:v4 forKey:@"game"];
  [v5 encodeInt32:*(&self->super.__dummyPropertyForObservation + 1) forKey:@"numberOfPlayers"];
  [v5 encodeInt32:self->_numberOfPlayers forKey:@"minimumNumberOfPlayers"];
  [v5 encodeInt32:self->_minimumNumberOfPlayers forKey:@"maximumNumberOfPlayers"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_game forKey:@"image"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_image forKey:@"icon"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_BlastDoorLPGameCenterInvitationMetadata allocWithZone:a3];
  if (v4)
  {
    v5 = [(_BlastDoorLPGameCenterInvitationMetadata *)self game];
    [(_BlastDoorLPGameCenterInvitationMetadata *)v4 setGame:v5];

    [(_BlastDoorLPGameCenterInvitationMetadata *)v4 setNumberOfPlayers:[(_BlastDoorLPGameCenterInvitationMetadata *)self numberOfPlayers]];
    [(_BlastDoorLPGameCenterInvitationMetadata *)v4 setMinimumNumberOfPlayers:[(_BlastDoorLPGameCenterInvitationMetadata *)self minimumNumberOfPlayers]];
    [(_BlastDoorLPGameCenterInvitationMetadata *)v4 setMaximumNumberOfPlayers:[(_BlastDoorLPGameCenterInvitationMetadata *)self maximumNumberOfPlayers]];
    v6 = [(_BlastDoorLPGameCenterInvitationMetadata *)self image];
    [(_BlastDoorLPGameCenterInvitationMetadata *)v4 setImage:v6];

    v7 = [(_BlastDoorLPGameCenterInvitationMetadata *)self icon];
    [(_BlastDoorLPGameCenterInvitationMetadata *)v4 setIcon:v7];

    v8 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _BlastDoorLPGameCenterInvitationMetadata;
  if ([(_BlastDoorLPGameCenterInvitationMetadata *)&v12 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
      v7 = v6[3];
      if ((!(v7 | *&self->_maximumNumberOfPlayers) || [v7 isEqual:?]) && *(v6 + 3) == *(&self->super.__dummyPropertyForObservation + 1) && *(v6 + 4) == self->_numberOfPlayers && *(v6 + 5) == self->_minimumNumberOfPlayers && ((v8 = v6[4], !(v8 | self->_game)) || objc_msgSend(v8, "isEqual:")))
      {
        v9 = v6[5];
        if (v9 | self->_image)
        {
          v5 = [v9 isEqual:?];
        }

        else
        {
          v5 = 1;
        }
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)_enumerateAsynchronousFields:(id)a3
{
  v3 = (a3 + 16);
  v4 = *(a3 + 2);
  v5 = a3;
  v4();
  (*v3)(v5, @"icon");
}

@end