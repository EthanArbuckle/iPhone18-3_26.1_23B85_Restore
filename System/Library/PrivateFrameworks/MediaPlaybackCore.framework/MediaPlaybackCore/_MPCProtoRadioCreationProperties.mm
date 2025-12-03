@interface _MPCProtoRadioCreationProperties
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _MPCProtoRadioCreationProperties

- (unint64_t)hash
{
  v3 = [(NSString *)self->_radioStationID hash];
  v4 = [(NSString *)self->_radioStationURLString hash]^ v3;
  v5 = [(_MPCProtoRadioContentReference *)self->_seedContentReference hash];
  v6 = v4 ^ v5 ^ [(_MPCProtoRadioContentReference *)self->_nowPlayingContentReference hash];
  v7 = [(_MPCProtoDelegateInfo *)self->_accountInfo hash];
  v8 = v7 ^ [(NSString *)self->_playActivityFeatureName hash];
  return v6 ^ v8 ^ [(NSString *)self->_playActivityQueueGroupingID hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((radioStationID = self->_radioStationID, !(radioStationID | equalCopy[5])) || -[NSString isEqual:](radioStationID, "isEqual:")) && ((radioStationURLString = self->_radioStationURLString, !(radioStationURLString | equalCopy[6])) || -[NSString isEqual:](radioStationURLString, "isEqual:")) && ((seedContentReference = self->_seedContentReference, !(seedContentReference | equalCopy[7])) || -[_MPCProtoRadioContentReference isEqual:](seedContentReference, "isEqual:")) && ((nowPlayingContentReference = self->_nowPlayingContentReference, !(nowPlayingContentReference | equalCopy[2])) || -[_MPCProtoRadioContentReference isEqual:](nowPlayingContentReference, "isEqual:")) && ((accountInfo = self->_accountInfo, !(accountInfo | equalCopy[1])) || -[_MPCProtoDelegateInfo isEqual:](accountInfo, "isEqual:")) && ((playActivityFeatureName = self->_playActivityFeatureName, !(playActivityFeatureName | equalCopy[3])) || -[NSString isEqual:](playActivityFeatureName, "isEqual:")))
  {
    playActivityQueueGroupingID = self->_playActivityQueueGroupingID;
    if (playActivityQueueGroupingID | equalCopy[4])
    {
      v12 = [(NSString *)playActivityQueueGroupingID isEqual:?];
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_radioStationID copyWithZone:zone];
  v7 = v5[5];
  v5[5] = v6;

  v8 = [(NSString *)self->_radioStationURLString copyWithZone:zone];
  v9 = v5[6];
  v5[6] = v8;

  v10 = [(_MPCProtoRadioContentReference *)self->_seedContentReference copyWithZone:zone];
  v11 = v5[7];
  v5[7] = v10;

  v12 = [(_MPCProtoRadioContentReference *)self->_nowPlayingContentReference copyWithZone:zone];
  v13 = v5[2];
  v5[2] = v12;

  v14 = [(_MPCProtoDelegateInfo *)self->_accountInfo copyWithZone:zone];
  v15 = v5[1];
  v5[1] = v14;

  v16 = [(NSString *)self->_playActivityFeatureName copyWithZone:zone];
  v17 = v5[3];
  v5[3] = v16;

  v18 = [(NSString *)self->_playActivityQueueGroupingID copyWithZone:zone];
  v19 = v5[4];
  v5[4] = v18;

  return v5;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_radioStationID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_radioStationURLString)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_seedContentReference)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_nowPlayingContentReference)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_accountInfo)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_playActivityFeatureName)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_playActivityQueueGroupingID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (BOOL)readFrom:(id)from
{
  position = [from position];
  if (position < [from length])
  {
    do
    {
      if ([from hasError])
      {
        return [from hasError] ^ 1;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        LOBYTE(v21) = 0;
        v9 = [from position] + 1;
        if (v9 >= [from position] && (v10 = objc_msgSend(from, "position") + 1, v10 <= objc_msgSend(from, "length")))
        {
          data = [from data];
          [data getBytes:&v21 range:{objc_msgSend(from, "position"), 1}];

          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
        }

        v8 |= (v21 & 0x7F) << v6;
        if ((v21 & 0x80) == 0)
        {
          break;
        }

        v6 += 7;
        if (v7++ >= 9)
        {
          v13 = 0;
          goto LABEL_15;
        }
      }

      v13 = [from hasError] ? 0 : v8;
LABEL_15:
      if (([from hasError] & 1) != 0 || (v13 & 7) == 4)
      {
        return [from hasError] ^ 1;
      }

      v14 = v13 >> 3;
      if ((v13 >> 3) <= 3)
      {
        switch(v14)
        {
          case 1:
            v17 = PBReaderReadString();
            v18 = 40;
            goto LABEL_40;
          case 2:
            v17 = PBReaderReadString();
            v18 = 48;
LABEL_40:
            v15 = *(&self->super.super.isa + v18);
            *(&self->super.super.isa + v18) = v17;
LABEL_41:

            goto LABEL_42;
          case 3:
            v15 = objc_alloc_init(_MPCProtoRadioContentReference);
            v16 = 56;
            goto LABEL_35;
        }
      }

      else if (v14 > 5)
      {
        if (v14 == 6)
        {
          v17 = PBReaderReadString();
          v18 = 24;
          goto LABEL_40;
        }

        if (v14 == 7)
        {
          v17 = PBReaderReadString();
          v18 = 32;
          goto LABEL_40;
        }
      }

      else
      {
        if (v14 == 4)
        {
          v15 = objc_alloc_init(_MPCProtoRadioContentReference);
          v16 = 16;
LABEL_35:
          objc_storeStrong((&self->super.super.isa + v16), v15);
          v21 = 0;
          v22 = 0;
          if (!PBReaderPlaceMark() || !_MPCProtoRadioContentReferenceReadFrom(&v15->super.super.isa, from))
          {
LABEL_44:

            return 0;
          }

LABEL_37:
          PBReaderRecallMark();
          goto LABEL_41;
        }

        if (v14 == 5)
        {
          v15 = objc_alloc_init(_MPCProtoDelegateInfo);
          objc_storeStrong(&self->_accountInfo, v15);
          v21 = 0;
          v22 = 0;
          if (!PBReaderPlaceMark() || !_MPCProtoDelegateInfoReadFrom(v15, from))
          {
            goto LABEL_44;
          }

          goto LABEL_37;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_42:
      position2 = [from position];
    }

    while (position2 < [from length]);
  }

  return [from hasError] ^ 1;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  radioStationID = self->_radioStationID;
  if (radioStationID)
  {
    [dictionary setObject:radioStationID forKey:@"radioStationID"];
  }

  radioStationURLString = self->_radioStationURLString;
  if (radioStationURLString)
  {
    [v4 setObject:radioStationURLString forKey:@"radioStationURLString"];
  }

  seedContentReference = self->_seedContentReference;
  if (seedContentReference)
  {
    dictionaryRepresentation = [(_MPCProtoRadioContentReference *)seedContentReference dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"seedContentReference"];
  }

  nowPlayingContentReference = self->_nowPlayingContentReference;
  if (nowPlayingContentReference)
  {
    dictionaryRepresentation2 = [(_MPCProtoRadioContentReference *)nowPlayingContentReference dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"nowPlayingContentReference"];
  }

  accountInfo = self->_accountInfo;
  if (accountInfo)
  {
    dictionaryRepresentation3 = [(_MPCProtoDelegateInfo *)accountInfo dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation3 forKey:@"accountInfo"];
  }

  playActivityFeatureName = self->_playActivityFeatureName;
  if (playActivityFeatureName)
  {
    [v4 setObject:playActivityFeatureName forKey:@"playActivityFeatureName"];
  }

  playActivityQueueGroupingID = self->_playActivityQueueGroupingID;
  if (playActivityQueueGroupingID)
  {
    [v4 setObject:playActivityQueueGroupingID forKey:@"playActivityQueueGroupingID"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MPCProtoRadioCreationProperties;
  v4 = [(_MPCProtoRadioCreationProperties *)&v8 description];
  dictionaryRepresentation = [(_MPCProtoRadioCreationProperties *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end