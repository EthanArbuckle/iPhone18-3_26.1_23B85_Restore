@interface _BlastDoorLPLyricExcerptMetadata
- (BOOL)isEqual:(id)a3;
- (_BlastDoorLPLyricExcerptMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _BlastDoorLPLyricExcerptMetadata

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_BlastDoorLPLyricExcerptMetadata allocWithZone:a3];
  if (v4)
  {
    v5 = [(_BlastDoorLPLyricExcerptMetadata *)self lyrics];
    [(_BlastDoorLPLyricExcerptMetadata *)v4 setLyrics:v5];

    v6 = [(_BlastDoorLPLyricExcerptMetadata *)self language];
    [(_BlastDoorLPLyricExcerptMetadata *)v4 setLanguage:v6];

    v7 = [(_BlastDoorLPLyricExcerptMetadata *)self startTime];
    [(_BlastDoorLPLyricExcerptMetadata *)v4 setStartTime:v7];

    v8 = [(_BlastDoorLPLyricExcerptMetadata *)self endTime];
    [(_BlastDoorLPLyricExcerptMetadata *)v4 setEndTime:v8];

    v9 = v4;
  }

  return v4;
}

- (_BlastDoorLPLyricExcerptMetadata)initWithCoder:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v17.receiver = self;
  v17.super_class = _BlastDoorLPLyricExcerptMetadata;
  v5 = [(_BlastDoorLPLyricExcerptMetadata *)&v17 init];
  if (v5)
  {
    v6 = decodeStringForKey(v4, @"lyrics");
    lyrics = v5->_lyrics;
    v5->_lyrics = v6;

    v8 = decodeStringForKey(v4, @"language");
    language = v5->_language;
    v5->_language = v8;

    v10 = decodeNumberForKey(v4, @"startTime");
    startTime = v5->_startTime;
    v5->_startTime = v10;

    v12 = decodeNumberForKey(v4, @"endTime");
    endTime = v5->_endTime;
    v5->_endTime = v12;

    v14 = v5;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  lyrics = self->_lyrics;
  v5 = a3;
  [v5 _bd_lp_encodeObjectIfNotNil:lyrics forKey:@"lyrics"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_language forKey:@"language"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_startTime forKey:@"startTime"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_endTime forKey:@"endTime"];
}

- (BOOL)isEqual:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _BlastDoorLPLyricExcerptMetadata;
  if ([(_BlastDoorLPLyricExcerptMetadata *)&v13 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
      v7 = v6[1];
      if (v7 | self->_lyrics && ![v7 isEqual:?] || (v8 = v6[2], v8 | self->_language) && !objc_msgSend(v8, "isEqual:") || (v9 = v6[3], v9 | self->_startTime) && !objc_msgSend(v9, "isEqual:"))
      {
        v5 = 0;
      }

      else
      {
        v10 = v6[4];
        if (v10 | self->_endTime)
        {
          v5 = [v10 isEqual:?];
        }

        else
        {
          v5 = 1;
        }
      }
    }

    else
    {
      v5 = 0;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

@end