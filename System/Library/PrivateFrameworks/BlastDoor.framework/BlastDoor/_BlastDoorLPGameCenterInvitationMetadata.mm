@interface _BlastDoorLPGameCenterInvitationMetadata
- (BOOL)isEqual:(id)equal;
- (_BlastDoorLPGameCenterInvitationMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_enumerateAsynchronousFields:(id)fields;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _BlastDoorLPGameCenterInvitationMetadata

- (_BlastDoorLPGameCenterInvitationMetadata)initWithCoder:(id)coder
{
  v16 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = _BlastDoorLPGameCenterInvitationMetadata;
  v5 = [(_BlastDoorLPGameCenterInvitationMetadata *)&v15 init];
  if (v5)
  {
    v6 = decodeStringForKey(coderCopy, @"game");
    v7 = *&v5->_maximumNumberOfPlayers;
    *&v5->_maximumNumberOfPlayers = v6;

    *(&v5->super.__dummyPropertyForObservation + 1) = [coderCopy decodeInt32ForKey:@"numberOfPlayers"];
    v5->_numberOfPlayers = [coderCopy decodeInt32ForKey:@"minimumNumberOfPlayers"];
    v5->_minimumNumberOfPlayers = [coderCopy decodeInt32ForKey:@"maximumNumberOfPlayers"];
    v8 = [coderCopy _bd_lp_strictlyDecodeLPImageForKey:@"image"];
    game = v5->_game;
    v5->_game = v8;

    v10 = [coderCopy _bd_lp_strictlyDecodeLPImageForKey:@"icon"];
    image = v5->_image;
    v5->_image = v10;

    v12 = v5;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = *&self->_maximumNumberOfPlayers;
  coderCopy = coder;
  [coderCopy _bd_lp_encodeObjectIfNotNil:v4 forKey:@"game"];
  [coderCopy encodeInt32:*(&self->super.__dummyPropertyForObservation + 1) forKey:@"numberOfPlayers"];
  [coderCopy encodeInt32:self->_numberOfPlayers forKey:@"minimumNumberOfPlayers"];
  [coderCopy encodeInt32:self->_minimumNumberOfPlayers forKey:@"maximumNumberOfPlayers"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_game forKey:@"image"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_image forKey:@"icon"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_BlastDoorLPGameCenterInvitationMetadata allocWithZone:zone];
  if (v4)
  {
    game = [(_BlastDoorLPGameCenterInvitationMetadata *)self game];
    [(_BlastDoorLPGameCenterInvitationMetadata *)v4 setGame:game];

    [(_BlastDoorLPGameCenterInvitationMetadata *)v4 setNumberOfPlayers:[(_BlastDoorLPGameCenterInvitationMetadata *)self numberOfPlayers]];
    [(_BlastDoorLPGameCenterInvitationMetadata *)v4 setMinimumNumberOfPlayers:[(_BlastDoorLPGameCenterInvitationMetadata *)self minimumNumberOfPlayers]];
    [(_BlastDoorLPGameCenterInvitationMetadata *)v4 setMaximumNumberOfPlayers:[(_BlastDoorLPGameCenterInvitationMetadata *)self maximumNumberOfPlayers]];
    image = [(_BlastDoorLPGameCenterInvitationMetadata *)self image];
    [(_BlastDoorLPGameCenterInvitationMetadata *)v4 setImage:image];

    icon = [(_BlastDoorLPGameCenterInvitationMetadata *)self icon];
    [(_BlastDoorLPGameCenterInvitationMetadata *)v4 setIcon:icon];

    v8 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  v13 = *MEMORY[0x277D85DE8];
  equalCopy = equal;
  v12.receiver = self;
  v12.super_class = _BlastDoorLPGameCenterInvitationMetadata;
  if ([(_BlastDoorLPGameCenterInvitationMetadata *)&v12 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
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

- (void)_enumerateAsynchronousFields:(id)fields
{
  v3 = (fields + 16);
  v4 = *(fields + 2);
  fieldsCopy = fields;
  v4();
  (*v3)(fieldsCopy, @"icon");
}

@end