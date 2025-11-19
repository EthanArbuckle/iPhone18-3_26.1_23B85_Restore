@interface VCPProtoLine
+ (id)lineFromPoint:(CGPoint)a3 toPoint:(CGPoint)a4;
- (BOOL)isEqual:(id)a3;
- (CGPoint)endPointValue;
- (CGPoint)startPointValue;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation VCPProtoLine

+ (id)lineFromPoint:(CGPoint)a3 toPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = a3.y;
  v7 = a3.x;
  v8 = objc_alloc_init(VCPProtoLine);
  v9 = [VCPProtoPoint pointWithPoint:v7, v6];
  [(VCPProtoLine *)v8 setStart:v9];

  v10 = [VCPProtoPoint pointWithPoint:x, y];
  [(VCPProtoLine *)v8 setEnd:v10];

  return v8;
}

- (CGPoint)startPointValue
{
  v2 = [(VCPProtoLine *)self start];
  [v2 pointValue];
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
  v5 = [(VCPProtoLine *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  start = self->_start;
  if (start)
  {
    v5 = [(VCPProtoPoint *)start dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"start"];
  }

  end = self->_end;
  if (end)
  {
    v7 = [(VCPProtoPoint *)end dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"end"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v3 = a3;
  PBDataWriterWriteSubmessage();
  PBDataWriterWriteSubmessage();
}

- (void)copyTo:(id)a3
{
  start = self->_start;
  v5 = a3;
  [v5 setStart:start];
  [v5 setEnd:self->_end];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(VCPProtoPoint *)self->_start copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(VCPProtoPoint *)self->_end copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((start = self->_start, !(start | v4[2])) || -[VCPProtoPoint isEqual:](start, "isEqual:")))
  {
    end = self->_end;
    if (end | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  start = self->_start;
  v6 = v4[2];
  v9 = v4;
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

  v4 = v9;
LABEL_7:
  end = self->_end;
  v8 = v4[1];
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

  v4 = v9;
LABEL_13:
}

@end