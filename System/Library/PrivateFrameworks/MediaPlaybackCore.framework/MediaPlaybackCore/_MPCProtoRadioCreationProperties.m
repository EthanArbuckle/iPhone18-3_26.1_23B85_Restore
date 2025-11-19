@interface _MPCProtoRadioCreationProperties
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((radioStationID = self->_radioStationID, !(radioStationID | v4[5])) || -[NSString isEqual:](radioStationID, "isEqual:")) && ((radioStationURLString = self->_radioStationURLString, !(radioStationURLString | v4[6])) || -[NSString isEqual:](radioStationURLString, "isEqual:")) && ((seedContentReference = self->_seedContentReference, !(seedContentReference | v4[7])) || -[_MPCProtoRadioContentReference isEqual:](seedContentReference, "isEqual:")) && ((nowPlayingContentReference = self->_nowPlayingContentReference, !(nowPlayingContentReference | v4[2])) || -[_MPCProtoRadioContentReference isEqual:](nowPlayingContentReference, "isEqual:")) && ((accountInfo = self->_accountInfo, !(accountInfo | v4[1])) || -[_MPCProtoDelegateInfo isEqual:](accountInfo, "isEqual:")) && ((playActivityFeatureName = self->_playActivityFeatureName, !(playActivityFeatureName | v4[3])) || -[NSString isEqual:](playActivityFeatureName, "isEqual:")))
  {
    playActivityQueueGroupingID = self->_playActivityQueueGroupingID;
    if (playActivityQueueGroupingID | v4[4])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_radioStationID copyWithZone:a3];
  v7 = v5[5];
  v5[5] = v6;

  v8 = [(NSString *)self->_radioStationURLString copyWithZone:a3];
  v9 = v5[6];
  v5[6] = v8;

  v10 = [(_MPCProtoRadioContentReference *)self->_seedContentReference copyWithZone:a3];
  v11 = v5[7];
  v5[7] = v10;

  v12 = [(_MPCProtoRadioContentReference *)self->_nowPlayingContentReference copyWithZone:a3];
  v13 = v5[2];
  v5[2] = v12;

  v14 = [(_MPCProtoDelegateInfo *)self->_accountInfo copyWithZone:a3];
  v15 = v5[1];
  v5[1] = v14;

  v16 = [(NSString *)self->_playActivityFeatureName copyWithZone:a3];
  v17 = v5[3];
  v5[3] = v16;

  v18 = [(NSString *)self->_playActivityQueueGroupingID copyWithZone:a3];
  v19 = v5[4];
  v5[4] = v18;

  return v5;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_radioStationID)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_radioStationURLString)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_seedContentReference)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_nowPlayingContentReference)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_accountInfo)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_playActivityFeatureName)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_playActivityQueueGroupingID)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (BOOL)readFrom:(id)a3
{
  v5 = [a3 position];
  if (v5 < [a3 length])
  {
    do
    {
      if ([a3 hasError])
      {
        return [a3 hasError] ^ 1;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        LOBYTE(v21) = 0;
        v9 = [a3 position] + 1;
        if (v9 >= [a3 position] && (v10 = objc_msgSend(a3, "position") + 1, v10 <= objc_msgSend(a3, "length")))
        {
          v11 = [a3 data];
          [v11 getBytes:&v21 range:{objc_msgSend(a3, "position"), 1}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
        }

        else
        {
          [a3 _setError];
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

      v13 = [a3 hasError] ? 0 : v8;
LABEL_15:
      if (([a3 hasError] & 1) != 0 || (v13 & 7) == 4)
      {
        return [a3 hasError] ^ 1;
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
          if (!PBReaderPlaceMark() || !_MPCProtoRadioContentReferenceReadFrom(&v15->super.super.isa, a3))
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
          if (!PBReaderPlaceMark() || !_MPCProtoDelegateInfoReadFrom(v15, a3))
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
      v19 = [a3 position];
    }

    while (v19 < [a3 length]);
  }

  return [a3 hasError] ^ 1;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  radioStationID = self->_radioStationID;
  if (radioStationID)
  {
    [v3 setObject:radioStationID forKey:@"radioStationID"];
  }

  radioStationURLString = self->_radioStationURLString;
  if (radioStationURLString)
  {
    [v4 setObject:radioStationURLString forKey:@"radioStationURLString"];
  }

  seedContentReference = self->_seedContentReference;
  if (seedContentReference)
  {
    v8 = [(_MPCProtoRadioContentReference *)seedContentReference dictionaryRepresentation];
    [v4 setObject:v8 forKey:@"seedContentReference"];
  }

  nowPlayingContentReference = self->_nowPlayingContentReference;
  if (nowPlayingContentReference)
  {
    v10 = [(_MPCProtoRadioContentReference *)nowPlayingContentReference dictionaryRepresentation];
    [v4 setObject:v10 forKey:@"nowPlayingContentReference"];
  }

  accountInfo = self->_accountInfo;
  if (accountInfo)
  {
    v12 = [(_MPCProtoDelegateInfo *)accountInfo dictionaryRepresentation];
    [v4 setObject:v12 forKey:@"accountInfo"];
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
  v5 = [(_MPCProtoRadioCreationProperties *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end