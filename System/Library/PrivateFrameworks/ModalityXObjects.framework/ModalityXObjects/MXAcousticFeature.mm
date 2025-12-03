@interface MXAcousticFeature
- (BOOL)isEqual:(id)equal;
- (float)acousticFeaturePerFrameAtIndex:(unint64_t)index;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation MXAcousticFeature

- (void)dealloc
{
  PBRepeatedFloatClear();
  v3.receiver = self;
  v3.super_class = MXAcousticFeature;
  [(MXAcousticFeature *)&v3 dealloc];
}

- (float)acousticFeaturePerFrameAtIndex:(unint64_t)index
{
  p_acousticFeaturePerFrames = &self->_acousticFeaturePerFrames;
  count = self->_acousticFeaturePerFrames.count;
  if (count <= index)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_acousticFeaturePerFrames->list[index];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MXAcousticFeature;
  v4 = [(MXAcousticFeature *)&v8 description];
  dictionaryRepresentation = [(MXAcousticFeature *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = PBRepeatedFloatNSArray();
  [dictionary setObject:v4 forKey:@"acoustic_feature_per_frame"];

  if (*&self->_has)
  {
    *&v5 = self->_frameDuration;
    v6 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
    [dictionary setObject:v6 forKey:@"frame_duration"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_acousticFeaturePerFrames.count)
  {
    v5 = 0;
    do
    {
      v6 = self->_acousticFeaturePerFrames.list[v5];
      PBDataWriterWriteFloatField();
      toCopy = v8;
      ++v5;
    }

    while (v5 < self->_acousticFeaturePerFrames.count);
  }

  if (*&self->_has)
  {
    frameDuration = self->_frameDuration;
    PBDataWriterWriteFloatField();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(MXAcousticFeature *)self acousticFeaturePerFramesCount])
  {
    [toCopy clearAcousticFeaturePerFrames];
    acousticFeaturePerFramesCount = [(MXAcousticFeature *)self acousticFeaturePerFramesCount];
    if (acousticFeaturePerFramesCount)
    {
      v5 = acousticFeaturePerFramesCount;
      for (i = 0; i != v5; ++i)
      {
        [(MXAcousticFeature *)self acousticFeaturePerFrameAtIndex:i];
        [toCopy addAcousticFeaturePerFrame:?];
      }
    }
  }

  if (*&self->_has)
  {
    *(toCopy + 8) = LODWORD(self->_frameDuration);
    *(toCopy + 36) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  PBRepeatedFloatCopy();
  if (*&self->_has)
  {
    *(v4 + 32) = self->_frameDuration;
    *(v4 + 36) |= 1u;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()] || !PBRepeatedFloatIsEqual())
  {
    goto LABEL_7;
  }

  v5 = (*(equalCopy + 36) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) != 0 && self->_frameDuration == *(equalCopy + 8))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  acousticFeaturePerFramesCount = [fromCopy acousticFeaturePerFramesCount];
  if (acousticFeaturePerFramesCount)
  {
    v5 = acousticFeaturePerFramesCount;
    for (i = 0; i != v5; ++i)
    {
      [fromCopy acousticFeaturePerFrameAtIndex:i];
      [(MXAcousticFeature *)self addAcousticFeaturePerFrame:?];
    }
  }

  if (fromCopy[9])
  {
    self->_frameDuration = fromCopy[8];
    *&self->_has |= 1u;
  }
}

@end