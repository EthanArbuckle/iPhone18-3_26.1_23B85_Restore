@interface _BlastDoorLPVideoProperties
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation _BlastDoorLPVideoProperties

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_BlastDoorLPVideoProperties allocWithZone:a3];
  if (v4)
  {
    [(_BlastDoorLPVideoProperties *)v4 setHasAudio:[(_BlastDoorLPVideoProperties *)self hasAudio]];
    v5 = [(_BlastDoorLPVideoProperties *)self accessibilityText];
    v6 = [v5 copy];
    [(_BlastDoorLPVideoProperties *)v4 setAccessibilityText:v6];

    v7 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _BlastDoorLPVideoProperties;
  v5 = [(_BlastDoorLPVideoProperties *)&v11 isEqual:v4];
  if (!v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
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