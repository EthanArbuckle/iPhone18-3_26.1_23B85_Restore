@interface NCSetFocusPointRequest
- (BOOL)isEqual:(id)a3;
- (float)pointAtIndex:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NCSetFocusPointRequest

- (void)dealloc
{
  PBRepeatedFloatClear();
  v3.receiver = self;
  v3.super_class = NCSetFocusPointRequest;
  [(NCSetFocusPointRequest *)&v3 dealloc];
}

- (float)pointAtIndex:(unint64_t)a3
{
  p_points = &self->_points;
  count = self->_points.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_points->list[a3];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = NCSetFocusPointRequest;
  v3 = [(NCSetFocusPointRequest *)&v7 description];
  v4 = [(NCSetFocusPointRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v2 = +[NSMutableDictionary dictionary];
  v3 = PBRepeatedFloatNSArray();
  [v2 setObject:v3 forKey:@"point"];

  return v2;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
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

- (void)copyTo:(id)a3
{
  v7 = a3;
  if ([(NCSetFocusPointRequest *)self pointsCount])
  {
    [v7 clearPoints];
    v4 = [(NCSetFocusPointRequest *)self pointsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        [(NCSetFocusPointRequest *)self pointAtIndex:i];
        [v7 addPoint:?];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  PBRepeatedFloatCopy();
  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
  if ([v3 isMemberOfClass:objc_opt_class()])
  {
    IsEqual = PBRepeatedFloatIsEqual();
  }

  else
  {
    IsEqual = 0;
  }

  return IsEqual;
}

- (void)mergeFrom:(id)a3
{
  v7 = a3;
  v4 = [v7 pointsCount];
  if (v4)
  {
    v5 = v4;
    for (i = 0; i != v5; ++i)
    {
      [v7 pointAtIndex:i];
      [(NCSetFocusPointRequest *)self addPoint:?];
    }
  }
}

@end