@interface _BlastDoorLPVideoProperties
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation _BlastDoorLPVideoProperties

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_BlastDoorLPVideoProperties allocWithZone:zone];
  if (v4)
  {
    [(_BlastDoorLPVideoProperties *)v4 setHasAudio:[(_BlastDoorLPVideoProperties *)self hasAudio]];
    accessibilityText = [(_BlastDoorLPVideoProperties *)self accessibilityText];
    v6 = [accessibilityText copy];
    [(_BlastDoorLPVideoProperties *)v4 setAccessibilityText:v6];

    v7 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  v12 = *MEMORY[0x277D85DE8];
  equalCopy = equal;
  v11.receiver = self;
  v11.super_class = _BlastDoorLPVideoProperties;
  v5 = [(_BlastDoorLPVideoProperties *)&v11 isEqual:equalCopy];
  if (!v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      v7 = v6;
      if (*(v6 + 8) == self->_hasAudio)
      {
        v8 = v6[2];
        if (v8 | self->_accessibilityText)
        {
          [v8 isEqual:?];
        }
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v5;
}

@end