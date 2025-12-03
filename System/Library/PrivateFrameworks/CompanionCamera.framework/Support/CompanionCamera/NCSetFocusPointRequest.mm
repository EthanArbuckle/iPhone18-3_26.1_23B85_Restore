@interface NCSetFocusPointRequest
- (BOOL)isEqual:(id)equal;
- (float)pointAtIndex:(unint64_t)index;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NCSetFocusPointRequest

- (void)dealloc
{
  PBRepeatedFloatClear();
  v3.receiver = self;
  v3.super_class = NCSetFocusPointRequest;
  [(NCSetFocusPointRequest *)&v3 dealloc];
}

- (float)pointAtIndex:(unint64_t)index
{
  p_points = &self->_points;
  count = self->_points.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_points->list[index];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = NCSetFocusPointRequest;
  v3 = [(NCSetFocusPointRequest *)&v7 description];
  dictionaryRepresentation = [(NCSetFocusPointRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v2 = +[NSMutableDictionary dictionary];
  v3 = PBRepeatedFloatNSArray();
  [v2 setObject:v3 forKey:@"point"];

  return v2;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  p_points = &self->_points;
  if (p_points->count)
  {
    PBDataWriterPlaceMark();
    if (p_points->count)
    {
      v6 = 0;
      do
      {
        v7 = p_points->list[v6];
        PBDataWriterWriteFloatField();
        ++v6;
      }

      while (v6 < p_points->count);
    }

    PBDataWriterRecallMark();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(NCSetFocusPointRequest *)self pointsCount])
  {
    [toCopy clearPoints];
    pointsCount = [(NCSetFocusPointRequest *)self pointsCount];
    if (pointsCount)
    {
      v5 = pointsCount;
      for (i = 0; i != v5; ++i)
      {
        [(NCSetFocusPointRequest *)self pointAtIndex:i];
        [toCopy addPoint:?];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  PBRepeatedFloatCopy();
  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    IsEqual = PBRepeatedFloatIsEqual();
  }

  else
  {
    IsEqual = 0;
  }

  return IsEqual;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  pointsCount = [fromCopy pointsCount];
  if (pointsCount)
  {
    v5 = pointsCount;
    for (i = 0; i != v5; ++i)
    {
      [fromCopy pointAtIndex:i];
      [(NCSetFocusPointRequest *)self addPoint:?];
    }
  }
}

@end