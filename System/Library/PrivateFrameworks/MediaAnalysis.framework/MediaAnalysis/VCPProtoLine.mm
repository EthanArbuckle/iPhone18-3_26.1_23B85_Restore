@interface VCPProtoLine
+ (id)lineFromPoint:(CGPoint)point toPoint:(CGPoint)toPoint;
- (BOOL)isEqual:(id)equal;
- (CGPoint)endPointValue;
- (CGPoint)startPointValue;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation VCPProtoLine

+ (id)lineFromPoint:(CGPoint)point toPoint:(CGPoint)toPoint
{
  y = toPoint.y;
  x = toPoint.x;
  v6 = point.y;
  v7 = point.x;
  v8 = objc_alloc_init(VCPProtoLine);
  v9 = [VCPProtoPoint pointWithPoint:v7, v6];
  [(VCPProtoLine *)v8 setStart:v9];

  v10 = [VCPProtoPoint pointWithPoint:x, y];
  [(VCPProtoLine *)v8 setEnd:v10];

  return v8;
}

- (CGPoint)startPointValue
{
  start = [(VCPProtoLine *)self start];
  [start pointValue];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (CGPoint)endPointValue
{
  v2 = [(VCPProtoLine *)self end];
  [v2 pointValue];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoLine;
  v4 = [(VCPProtoLine *)&v8 description];
  dictionaryRepresentation = [(VCPProtoLine *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  start = self->_start;
  if (start)
  {
    dictionaryRepresentation = [(VCPProtoPoint *)start dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"start"];
  }

  end = self->_end;
  if (end)
  {
    dictionaryRepresentation2 = [(VCPProtoPoint *)end dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"end"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  PBDataWriterWriteSubmessage();
  PBDataWriterWriteSubmessage();
}

- (void)copyTo:(id)to
{
  start = self->_start;
  toCopy = to;
  [toCopy setStart:start];
  [toCopy setEnd:self->_end];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(VCPProtoPoint *)self->_start copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(VCPProtoPoint *)self->_end copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((start = self->_start, !(start | equalCopy[2])) || -[VCPProtoPoint isEqual:](start, "isEqual:")))
  {
    end = self->_end;
    if (end | equalCopy[1])
    {
      v7 = [(VCPProtoPoint *)end isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  start = self->_start;
  v6 = fromCopy[2];
  v9 = fromCopy;
  if (start)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(VCPProtoPoint *)start mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(VCPProtoLine *)self setStart:?];
  }

  fromCopy = v9;
LABEL_7:
  end = self->_end;
  v8 = fromCopy[1];
  if (end)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(VCPProtoPoint *)end mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(VCPProtoLine *)self setEnd:?];
  }

  fromCopy = v9;
LABEL_13:
}

@end