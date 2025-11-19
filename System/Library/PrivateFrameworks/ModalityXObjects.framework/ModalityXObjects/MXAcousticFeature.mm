@interface MXAcousticFeature
- (BOOL)isEqual:(id)a3;
- (float)acousticFeaturePerFrameAtIndex:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation MXAcousticFeature

- (void)dealloc
{
  PBRepeatedFloatClear();
  v3.receiver = self;
  v3.super_class = MXAcousticFeature;
  [(MXAcousticFeature *)&v3 dealloc];
}

- (float)acousticFeaturePerFrameAtIndex:(unint64_t)a3
{
  p_acousticFeaturePerFrames = &self->_acousticFeaturePerFrames;
  count = self->_acousticFeaturePerFrames.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_acousticFeaturePerFrames->list[a3];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MXAcousticFeature;
  v4 = [(MXAcousticFeature *)&v8 description];
  v5 = [(MXAcousticFeature *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = PBRepeatedFloatNSArray();
  [v3 setObject:v4 forKey:@"acoustic_feature_per_frame"];

  if (*&self->_has)
  {
    *&v5 = self->_frameDuration;
    v6 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
    [v3 setObject:v6 forKey:@"frame_duration"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_acousticFeaturePerFrames.count)
  {
    v5 = 0;
    do
    {
      v6 = self->_acousticFeaturePerFrames.list[v5];
      PBDataWriterWriteFloatField();
      v4 = v8;
      ++v5;
    }

    while (v5 < self->_acousticFeaturePerFrames.count);
  }

  if (*&self->_has)
  {
    frameDuration = self->_frameDuration;
    PBDataWriterWriteFloatField();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v7 = a3;
  if ([(MXAcousticFeature *)self acousticFeaturePerFramesCount])
  {
    [v7 clearAcousticFeaturePerFrames];
    v4 = [(MXAcousticFeature *)self acousticFeaturePerFramesCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        [(MXAcousticFeature *)self acousticFeaturePerFrameAtIndex:i];
        [v7 addAcousticFeaturePerFrame:?];
      }
    }
  }

  if (*&self->_has)
  {
    *(v7 + 8) = LODWORD(self->_frameDuration);
    *(v7 + 36) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  PBRepeatedFloatCopy();
  if (*&self->_has)
  {
    *(v4 + 32) = self->_frameDuration;
    *(v4 + 36) |= 1u;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()] || !PBRepeatedFloatIsEqual())
  {
    goto LABEL_7;
  }

  v5 = (*(v4 + 36) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) != 0 && self->_frameDuration == *(v4 + 8))
    {
      v5 = 1;
      goto LABEL_8;
    }

LABEL_7:
    v5 = 0;
  }

LABEL_8:

  return v5;
}

- (unint64_t)hash
{
  v3 = PBRepeatedFloatHash();
  if (*&self->_has)
  {
    frameDuration = self->_frameDuration;
    if (frameDuration < 0.0)
    {
      frameDuration = -frameDuration;
    }

    *v4.i32 = floorf(frameDuration + 0.5);
    v8 = (frameDuration - *v4.i32) * 1.8447e19;
    *v5.i32 = *v4.i32 - (truncf(*v4.i32 * 5.421e-20) * 1.8447e19);
    v9.i64[0] = 0x8000000080000000;
    v9.i64[1] = 0x8000000080000000;
    v6 = 2654435761u * *vbslq_s8(v9, v5, v4).i32;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v6 += v8;
      }
    }

    else
    {
      v6 -= fabsf(v8);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 ^ v3;
}

- (void)mergeFrom:(id)a3
{
  v7 = a3;
  v4 = [v7 acousticFeaturePerFramesCount];
  if (v4)
  {
    v5 = v4;
    for (i = 0; i != v5; ++i)
    {
      [v7 acousticFeaturePerFrameAtIndex:i];
      [(MXAcousticFeature *)self addAcousticFeaturePerFrame:?];
    }
  }

  if (v7[9])
  {
    self->_frameDuration = v7[8];
    *&self->_has |= 1u;
  }
}

@end