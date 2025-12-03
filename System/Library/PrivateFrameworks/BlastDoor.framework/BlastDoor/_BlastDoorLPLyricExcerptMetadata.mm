@interface _BlastDoorLPLyricExcerptMetadata
- (BOOL)isEqual:(id)equal;
- (_BlastDoorLPLyricExcerptMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _BlastDoorLPLyricExcerptMetadata

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_BlastDoorLPLyricExcerptMetadata allocWithZone:zone];
  if (v4)
  {
    lyrics = [(_BlastDoorLPLyricExcerptMetadata *)self lyrics];
    [(_BlastDoorLPLyricExcerptMetadata *)v4 setLyrics:lyrics];

    language = [(_BlastDoorLPLyricExcerptMetadata *)self language];
    [(_BlastDoorLPLyricExcerptMetadata *)v4 setLanguage:language];

    startTime = [(_BlastDoorLPLyricExcerptMetadata *)self startTime];
    [(_BlastDoorLPLyricExcerptMetadata *)v4 setStartTime:startTime];

    endTime = [(_BlastDoorLPLyricExcerptMetadata *)self endTime];
    [(_BlastDoorLPLyricExcerptMetadata *)v4 setEndTime:endTime];

    v9 = v4;
  }

  return v4;
}

- (_BlastDoorLPLyricExcerptMetadata)initWithCoder:(id)coder
{
  v18 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = _BlastDoorLPLyricExcerptMetadata;
  v5 = [(_BlastDoorLPLyricExcerptMetadata *)&v17 init];
  if (v5)
  {
    v6 = decodeStringForKey(coderCopy, @"lyrics");
    lyrics = v5->_lyrics;
    v5->_lyrics = v6;

    v8 = decodeStringForKey(coderCopy, @"language");
    language = v5->_language;
    v5->_language = v8;

    v10 = decodeNumberForKey(coderCopy, @"startTime");
    startTime = v5->_startTime;
    v5->_startTime = v10;

    v12 = decodeNumberForKey(coderCopy, @"endTime");
    endTime = v5->_endTime;
    v5->_endTime = v12;

    v14 = v5;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  lyrics = self->_lyrics;
  coderCopy = coder;
  [coderCopy _bd_lp_encodeObjectIfNotNil:lyrics forKey:@"lyrics"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_language forKey:@"language"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_startTime forKey:@"startTime"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_endTime forKey:@"endTime"];
}

- (BOOL)isEqual:(id)equal
{
  v14 = *MEMORY[0x277D85DE8];
  equalCopy = equal;
  v13.receiver = self;
  v13.super_class = _BlastDoorLPLyricExcerptMetadata;
  if ([(_BlastDoorLPLyricExcerptMetadata *)&v13 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
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