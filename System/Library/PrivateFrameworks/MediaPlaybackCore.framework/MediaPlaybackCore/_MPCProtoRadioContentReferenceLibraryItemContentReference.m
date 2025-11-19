@interface _MPCProtoRadioContentReferenceLibraryItemContentReference
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation _MPCProtoRadioContentReferenceLibraryItemContentReference

- (unint64_t)hash
{
  v34 = [(NSString *)self->_albumArtistName hash];
  v33 = [(NSString *)self->_albumName hash];
  v32 = [(NSString *)self->_artistName hash];
  v31 = [(NSString *)self->_composerName hash];
  if ((*&self->_has & 0x40) != 0)
  {
    v30 = 2654435761 * self->_contentType;
  }

  else
  {
    v30 = 0;
  }

  v3 = [(NSString *)self->_copyrightText hash];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
    v7 = 0;
    if ((has & 0x80) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v8 = 0;
    if ((has & 4) != 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    v12 = 0;
    goto LABEL_14;
  }

  v7 = 2654435761 * self->_albumDiscCount;
  if ((has & 0x80) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v8 = 2654435761 * self->_discNumber;
  if ((has & 4) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  fileSize = self->_fileSize;
  if (fileSize < 0.0)
  {
    fileSize = -fileSize;
  }

  *v4.i64 = floor(fileSize + 0.5);
  v10 = (fileSize - *v4.i64) * 1.84467441e19;
  *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v11.f64[0] = NAN;
  v11.f64[1] = NAN;
  v12 = 2654435761u * *vbslq_s8(vnegq_f64(v11), v5, v4).i64;
  if (v10 >= 0.0)
  {
    if (v10 > 0.0)
    {
      v12 += v10;
    }
  }

  else
  {
    v12 -= fabs(v10);
  }

LABEL_14:
  v13 = [(NSString *)self->_genreName hash];
  v16 = self->_has;
  if ((v16 & 0x400) != 0)
  {
    v17 = 2654435761 * self->_isCompilation;
    if ((v16 & 2) != 0)
    {
      goto LABEL_16;
    }

LABEL_21:
    v21 = 0;
    goto LABEL_22;
  }

  v17 = 0;
  if ((v16 & 2) == 0)
  {
    goto LABEL_21;
  }

LABEL_16:
  duration = self->_duration;
  if (duration < 0.0)
  {
    duration = -duration;
  }

  *v14.i64 = floor(duration + 0.5);
  v19 = (duration - *v14.i64) * 1.84467441e19;
  *v15.i64 = *v14.i64 - trunc(*v14.i64 * 5.42101086e-20) * 1.84467441e19;
  v20.f64[0] = NAN;
  v20.f64[1] = NAN;
  v21 = 2654435761u * *vbslq_s8(vnegq_f64(v20), v15, v14).i64;
  if (v19 >= 0.0)
  {
    if (v19 > 0.0)
    {
      v21 += v19;
    }
  }

  else
  {
    v21 -= fabs(v19);
  }

LABEL_22:
  v22 = [(NSString *)self->_title hash];
  v23 = self->_has;
  if ((v23 & 8) != 0)
  {
    v24 = 2654435761 * self->_storeAdamID;
    if (v23)
    {
LABEL_24:
      v25 = 2654435761 * self->_cloudID;
      if ((v23 & 0x20) != 0)
      {
        goto LABEL_25;
      }

      goto LABEL_30;
    }
  }

  else
  {
    v24 = 0;
    if (v23)
    {
      goto LABEL_24;
    }
  }

  v25 = 0;
  if ((v23 & 0x20) != 0)
  {
LABEL_25:
    v26 = 2654435761 * self->_albumTrackCount;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_26;
    }

LABEL_31:
    v27 = 0;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_27;
    }

LABEL_32:
    v28 = 0;
    return v33 ^ v34 ^ v32 ^ v31 ^ v30 ^ v3 ^ v7 ^ v8 ^ v12 ^ v13 ^ v17 ^ v21 ^ v22 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28;
  }

LABEL_30:
  v26 = 0;
  if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_31;
  }

LABEL_26:
  v27 = 2654435761 * self->_trackNumber;
  if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_32;
  }

LABEL_27:
  v28 = 2654435761 * self->_year;
  return v33 ^ v34 ^ v32 ^ v31 ^ v30 ^ v3 ^ v7 ^ v8 ^ v12 ^ v13 ^ v17 ^ v21 ^ v22 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_77;
  }

  albumArtistName = self->_albumArtistName;
  if (albumArtistName | *(v4 + 5))
  {
    if (![(NSString *)albumArtistName isEqual:?])
    {
      goto LABEL_77;
    }
  }

  albumName = self->_albumName;
  if (albumName | *(v4 + 7))
  {
    if (![(NSString *)albumName isEqual:?])
    {
      goto LABEL_77;
    }
  }

  artistName = self->_artistName;
  if (artistName | *(v4 + 9))
  {
    if (![(NSString *)artistName isEqual:?])
    {
      goto LABEL_77;
    }
  }

  composerName = self->_composerName;
  if (composerName | *(v4 + 10))
  {
    if (![(NSString *)composerName isEqual:?])
    {
      goto LABEL_77;
    }
  }

  has = self->_has;
  v10 = *(v4 + 70);
  if ((has & 0x40) != 0)
  {
    if ((v10 & 0x40) == 0 || self->_contentType != *(v4 + 22))
    {
      goto LABEL_77;
    }
  }

  else if ((v10 & 0x40) != 0)
  {
    goto LABEL_77;
  }

  copyrightText = self->_copyrightText;
  if (copyrightText | *(v4 + 12))
  {
    if (![(NSString *)copyrightText isEqual:?])
    {
      goto LABEL_77;
    }

    has = self->_has;
    v10 = *(v4 + 70);
  }

  if ((has & 0x10) != 0)
  {
    if ((v10 & 0x10) == 0 || self->_albumDiscCount != *(v4 + 12))
    {
      goto LABEL_77;
    }
  }

  else if ((v10 & 0x10) != 0)
  {
    goto LABEL_77;
  }

  if ((has & 0x80) != 0)
  {
    if ((v10 & 0x80) == 0 || self->_discNumber != *(v4 + 26))
    {
      goto LABEL_77;
    }
  }

  else if ((v10 & 0x80) != 0)
  {
    goto LABEL_77;
  }

  if ((has & 4) != 0)
  {
    if ((v10 & 4) == 0 || self->_fileSize != *(v4 + 3))
    {
      goto LABEL_77;
    }
  }

  else if ((v10 & 4) != 0)
  {
    goto LABEL_77;
  }

  genreName = self->_genreName;
  if (genreName | *(v4 + 14))
  {
    if (![(NSString *)genreName isEqual:?])
    {
      goto LABEL_77;
    }

    has = self->_has;
    v10 = *(v4 + 70);
  }

  if ((has & 0x400) != 0)
  {
    if ((v10 & 0x400) == 0)
    {
      goto LABEL_77;
    }

    if (self->_isCompilation)
    {
      if ((*(v4 + 136) & 1) == 0)
      {
        goto LABEL_77;
      }
    }

    else if (*(v4 + 136))
    {
      goto LABEL_77;
    }
  }

  else if ((v10 & 0x400) != 0)
  {
    goto LABEL_77;
  }

  if ((has & 2) != 0)
  {
    if ((v10 & 2) == 0 || self->_duration != *(v4 + 2))
    {
      goto LABEL_77;
    }
  }

  else if ((v10 & 2) != 0)
  {
    goto LABEL_77;
  }

  title = self->_title;
  if (title | *(v4 + 15))
  {
    if ([(NSString *)title isEqual:?])
    {
      has = self->_has;
      v10 = *(v4 + 70);
      goto LABEL_50;
    }

LABEL_77:
    v14 = 0;
    goto LABEL_78;
  }

LABEL_50:
  if ((has & 8) != 0)
  {
    if ((v10 & 8) == 0 || self->_storeAdamID != *(v4 + 4))
    {
      goto LABEL_77;
    }
  }

  else if ((v10 & 8) != 0)
  {
    goto LABEL_77;
  }

  if (has)
  {
    if ((v10 & 1) == 0 || self->_cloudID != *(v4 + 1))
    {
      goto LABEL_77;
    }
  }

  else if (v10)
  {
    goto LABEL_77;
  }

  if ((has & 0x20) != 0)
  {
    if ((v10 & 0x20) == 0 || self->_albumTrackCount != *(v4 + 16))
    {
      goto LABEL_77;
    }
  }

  else if ((v10 & 0x20) != 0)
  {
    goto LABEL_77;
  }

  if ((has & 0x100) != 0)
  {
    if ((v10 & 0x100) == 0 || self->_trackNumber != *(v4 + 32))
    {
      goto LABEL_77;
    }
  }

  else if ((v10 & 0x100) != 0)
  {
    goto LABEL_77;
  }

  if ((has & 0x200) != 0)
  {
    if ((v10 & 0x200) == 0 || self->_year != *(v4 + 33))
    {
      goto LABEL_77;
    }

    v14 = 1;
  }

  else
  {
    v14 = (v10 & 0x200) == 0;
  }

LABEL_78:

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_albumArtistName copyWithZone:a3];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  v8 = [(NSString *)self->_albumName copyWithZone:a3];
  v9 = *(v5 + 56);
  *(v5 + 56) = v8;

  v10 = [(NSString *)self->_artistName copyWithZone:a3];
  v11 = *(v5 + 72);
  *(v5 + 72) = v10;

  v12 = [(NSString *)self->_composerName copyWithZone:a3];
  v13 = *(v5 + 80);
  *(v5 + 80) = v12;

  if ((*&self->_has & 0x40) != 0)
  {
    *(v5 + 88) = self->_contentType;
    *(v5 + 140) |= 0x40u;
  }

  v14 = [(NSString *)self->_copyrightText copyWithZone:a3];
  v15 = *(v5 + 96);
  *(v5 + 96) = v14;

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(v5 + 48) = self->_albumDiscCount;
    *(v5 + 140) |= 0x10u;
    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_5;
  }

  *(v5 + 104) = self->_discNumber;
  *(v5 + 140) |= 0x80u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_6:
    *(v5 + 24) = self->_fileSize;
    *(v5 + 140) |= 4u;
  }

LABEL_7:
  v17 = [(NSString *)self->_genreName copyWithZone:a3];
  v18 = *(v5 + 112);
  *(v5 + 112) = v17;

  v19 = self->_has;
  if ((v19 & 0x400) != 0)
  {
    *(v5 + 136) = self->_isCompilation;
    *(v5 + 140) |= 0x400u;
    v19 = self->_has;
  }

  if ((v19 & 2) != 0)
  {
    *(v5 + 16) = self->_duration;
    *(v5 + 140) |= 2u;
  }

  v20 = [(NSString *)self->_title copyWithZone:a3];
  v21 = *(v5 + 120);
  *(v5 + 120) = v20;

  v22 = self->_has;
  if ((v22 & 8) != 0)
  {
    *(v5 + 32) = self->_storeAdamID;
    *(v5 + 140) |= 8u;
    v22 = self->_has;
    if ((v22 & 1) == 0)
    {
LABEL_13:
      if ((v22 & 0x20) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_23;
    }
  }

  else if ((v22 & 1) == 0)
  {
    goto LABEL_13;
  }

  *(v5 + 8) = self->_cloudID;
  *(v5 + 140) |= 1u;
  v22 = self->_has;
  if ((v22 & 0x20) == 0)
  {
LABEL_14:
    if ((v22 & 0x100) == 0)
    {
      goto LABEL_15;
    }

LABEL_24:
    *(v5 + 128) = self->_trackNumber;
    *(v5 + 140) |= 0x100u;
    if ((*&self->_has & 0x200) == 0)
    {
      return v5;
    }

    goto LABEL_16;
  }

LABEL_23:
  *(v5 + 64) = self->_albumTrackCount;
  *(v5 + 140) |= 0x20u;
  v22 = self->_has;
  if ((v22 & 0x100) != 0)
  {
    goto LABEL_24;
  }

LABEL_15:
  if ((v22 & 0x200) != 0)
  {
LABEL_16:
    *(v5 + 132) = self->_year;
    *(v5 + 140) |= 0x200u;
  }

  return v5;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_albumArtistName)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_albumName)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_artistName)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_composerName)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    PBDataWriterWriteInt32Field();
    v4 = v8;
  }

  if (self->_copyrightText)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    PBDataWriterWriteInt32Field();
    v4 = v8;
    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_15:
      if ((has & 4) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_15;
  }

  PBDataWriterWriteInt32Field();
  v4 = v8;
  if ((*&self->_has & 4) != 0)
  {
LABEL_16:
    PBDataWriterWriteDoubleField();
    v4 = v8;
  }

LABEL_17:
  if (self->_genreName)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  v6 = self->_has;
  if ((v6 & 0x400) != 0)
  {
    PBDataWriterWriteBOOLField();
    v4 = v8;
    v6 = self->_has;
  }

  if ((v6 & 2) != 0)
  {
    PBDataWriterWriteDoubleField();
    v4 = v8;
  }

  if (self->_title)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  v7 = self->_has;
  if ((v7 & 8) != 0)
  {
    PBDataWriterWriteInt64Field();
    v4 = v8;
    v7 = self->_has;
    if ((v7 & 1) == 0)
    {
LABEL_27:
      if ((v7 & 0x20) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_39;
    }
  }

  else if ((v7 & 1) == 0)
  {
    goto LABEL_27;
  }

  PBDataWriterWriteInt64Field();
  v4 = v8;
  v7 = self->_has;
  if ((v7 & 0x20) == 0)
  {
LABEL_28:
    if ((v7 & 0x100) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_40;
  }

LABEL_39:
  PBDataWriterWriteInt32Field();
  v4 = v8;
  v7 = self->_has;
  if ((v7 & 0x100) == 0)
  {
LABEL_29:
    if ((v7 & 0x200) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_40:
  PBDataWriterWriteInt32Field();
  v4 = v8;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_30:
    PBDataWriterWriteInt32Field();
    v4 = v8;
  }

LABEL_31:
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  albumArtistName = self->_albumArtistName;
  if (albumArtistName)
  {
    [v3 setObject:albumArtistName forKey:@"albumArtistName"];
  }

  albumName = self->_albumName;
  if (albumName)
  {
    [v4 setObject:albumName forKey:@"albumName"];
  }

  artistName = self->_artistName;
  if (artistName)
  {
    [v4 setObject:artistName forKey:@"artistName"];
  }

  composerName = self->_composerName;
  if (composerName)
  {
    [v4 setObject:composerName forKey:@"composerName"];
  }

  if ((*&self->_has & 0x40) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInt:self->_contentType];
    [v4 setObject:v9 forKey:@"contentType"];
  }

  copyrightText = self->_copyrightText;
  if (copyrightText)
  {
    [v4 setObject:copyrightText forKey:@"copyrightText"];
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithInt:self->_albumDiscCount];
    [v4 setObject:v21 forKey:@"albumDiscCount"];

    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_15:
      if ((has & 4) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_15;
  }

  v22 = [MEMORY[0x1E696AD98] numberWithInt:self->_discNumber];
  [v4 setObject:v22 forKey:@"discNumber"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_16:
    v12 = [MEMORY[0x1E696AD98] numberWithDouble:self->_fileSize];
    [v4 setObject:v12 forKey:@"fileSize"];
  }

LABEL_17:
  genreName = self->_genreName;
  if (genreName)
  {
    [v4 setObject:genreName forKey:@"genreName"];
  }

  v14 = self->_has;
  if ((v14 & 0x400) != 0)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithBool:self->_isCompilation];
    [v4 setObject:v15 forKey:@"isCompilation"];

    v14 = self->_has;
  }

  if ((v14 & 2) != 0)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithDouble:self->_duration];
    [v4 setObject:v16 forKey:@"duration"];
  }

  title = self->_title;
  if (title)
  {
    [v4 setObject:title forKey:@"title"];
  }

  v18 = self->_has;
  if ((v18 & 8) != 0)
  {
    v23 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_storeAdamID];
    [v4 setObject:v23 forKey:@"storeAdamID"];

    v18 = self->_has;
    if ((v18 & 1) == 0)
    {
LABEL_27:
      if ((v18 & 0x20) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_39;
    }
  }

  else if ((v18 & 1) == 0)
  {
    goto LABEL_27;
  }

  v24 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_cloudID];
  [v4 setObject:v24 forKey:@"cloudID"];

  v18 = self->_has;
  if ((v18 & 0x20) == 0)
  {
LABEL_28:
    if ((v18 & 0x100) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_40;
  }

LABEL_39:
  v25 = [MEMORY[0x1E696AD98] numberWithInt:self->_albumTrackCount];
  [v4 setObject:v25 forKey:@"albumTrackCount"];

  v18 = self->_has;
  if ((v18 & 0x100) == 0)
  {
LABEL_29:
    if ((v18 & 0x200) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_40:
  v26 = [MEMORY[0x1E696AD98] numberWithInt:self->_trackNumber];
  [v4 setObject:v26 forKey:@"trackNumber"];

  if ((*&self->_has & 0x200) != 0)
  {
LABEL_30:
    v19 = [MEMORY[0x1E696AD98] numberWithInt:self->_year];
    [v4 setObject:v19 forKey:@"year"];
  }

LABEL_31:

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MPCProtoRadioContentReferenceLibraryItemContentReference;
  v4 = [(_MPCProtoRadioContentReferenceLibraryItemContentReference *)&v8 description];
  v5 = [(_MPCProtoRadioContentReferenceLibraryItemContentReference *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end