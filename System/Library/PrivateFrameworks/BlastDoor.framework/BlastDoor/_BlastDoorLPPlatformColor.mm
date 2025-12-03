@interface _BlastDoorLPPlatformColor
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation _BlastDoorLPPlatformColor

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_BlastDoorLPPlatformColor allocWithZone:zone];
  if (v4)
  {
    [(_BlastDoorLPPlatformColor *)self r];
    [(_BlastDoorLPPlatformColor *)v4 setR:?];
    [(_BlastDoorLPPlatformColor *)self g];
    [(_BlastDoorLPPlatformColor *)v4 setG:?];
    [(_BlastDoorLPPlatformColor *)self b];
    [(_BlastDoorLPPlatformColor *)v4 setB:?];
    [(_BlastDoorLPPlatformColor *)self a];
    [(_BlastDoorLPPlatformColor *)v4 setA:?];
    v5 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  v22 = *MEMORY[0x277D85DE8];
  equalCopy = equal;
  v21.receiver = self;
  v21.super_class = _BlastDoorLPPlatformColor;
  if ([(_BlastDoorLPPlatformColor *)&v21 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      [(_BlastDoorLPPlatformColor *)self r];
      v8 = v7;
      [v6 r];
      if (v8 != v9)
      {
        goto LABEL_8;
      }

      [(_BlastDoorLPPlatformColor *)self g];
      v11 = v10;
      [v6 g];
      if (v11 != v12)
      {
        goto LABEL_8;
      }

      [(_BlastDoorLPPlatformColor *)self b];
      v14 = v13;
      [v6 b];
      if (v14 == v15 && (-[_BlastDoorLPPlatformColor a](self, "a"), v17 = v16, [v6 a], v17 == v18))
      {
        v5 = 1;
      }

      else
      {
LABEL_8:
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return v5;
}

- (unint64_t)hash
{
  v3 = MEMORY[0x277CCABB0];
  [(_BlastDoorLPPlatformColor *)self r];
  v4 = [v3 numberWithDouble:?];
  v5 = [v4 hash];
  v6 = MEMORY[0x277CCABB0];
  [(_BlastDoorLPPlatformColor *)self g];
  v7 = [v6 numberWithDouble:?];
  v8 = [v7 hash] ^ v5;
  v9 = MEMORY[0x277CCABB0];
  [(_BlastDoorLPPlatformColor *)self b];
  v10 = [v9 numberWithDouble:?];
  v11 = [v10 hash];
  v12 = MEMORY[0x277CCABB0];
  [(_BlastDoorLPPlatformColor *)self a];
  v13 = [v12 numberWithDouble:?];
  v14 = v11 ^ [v13 hash];

  return v8 ^ v14;
}

@end