@interface _BlastDoorLPImageProperties
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation _BlastDoorLPImageProperties

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_BlastDoorLPImageProperties allocWithZone:a3];
  if (v4)
  {
    v5 = [(_BlastDoorLPImageProperties *)self accessibilityText];
    v6 = [v5 copy];
    [(_BlastDoorLPImageProperties *)v4 setAccessibilityText:v6];

    [(_BlastDoorLPImageProperties *)v4 setType:[(_BlastDoorLPImageProperties *)self type]];
    v7 = [(_BlastDoorLPImageProperties *)self overlaidTextColor];
    [(_BlastDoorLPImageProperties *)v4 setOverlaidTextColor:v7];

    v8 = [(_BlastDoorLPImageProperties *)self dominantColor];
    [(_BlastDoorLPImageProperties *)v4 setDominantColor:v8];

    v9 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _BlastDoorLPImageProperties;
  if ([(_BlastDoorLPImageProperties *)&v12 isEqual:v4])
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
      if ((!(v7 | self->_accessibilityText) || [v7 isEqual:?]) && v6[2] == self->_type && ((v8 = v6[3], !(v8 | self->_overlaidTextColor)) || objc_msgSend(v8, "isEqual:")))
      {
        v9 = v6[4];
        if (v9 | self->_dominantColor)
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

- (unint64_t)hash
{
  v3 = [(NSString *)self->_accessibilityText hash];
  v4 = [(_BlastDoorLPPlatformColor *)self->_overlaidTextColor hash]^ v3;
  return v4 ^ [(_BlastDoorLPPlatformColor *)self->_dominantColor hash];
}

@end