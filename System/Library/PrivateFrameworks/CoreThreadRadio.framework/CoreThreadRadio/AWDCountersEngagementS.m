@interface AWDCountersEngagementS
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasRouterNodesCount:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDCountersEngagementS

- (void)setHasRouterNodesCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = AWDCountersEngagementS;
  v3 = [(AWDCountersEngagementS *)&v7 description];
  v4 = [(AWDCountersEngagementS *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [NSNumber numberWithUnsignedInt:self->_routerNodesCount];
    [v3 setObject:v5 forKey:@"router_nodes_count"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [NSNumber numberWithUnsignedInt:self->_childNodesCount];
    [v3 setObject:v6 forKey:@"child_nodes_count"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if ((*&self->_has & 2) != 0)
  {
    routerNodesCount = self->_routerNodesCount;
    PBDataWriterWriteUint32Field();
    v4 = v7;
    if ((*&self->_has & 1) == 0)
    {
LABEL_3:

      goto LABEL_5;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  childNodesCount = self->_childNodesCount;
  PBDataWriterWriteUint32Field();
  v4 = v7;

LABEL_5:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 2) != 0)
  {
    v4[3] = self->_routerNodesCount;
    *(v4 + 16) |= 2u;
    if ((*&self->_has & 1) == 0)
    {
LABEL_3:

      goto LABEL_5;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  v4[2] = self->_childNodesCount;
  *(v4 + 16) |= 1u;

LABEL_5:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if ((*&self->_has & 2) == 0)
  {
    if ((*&self->_has & 1) == 0)
    {
      return result;
    }

LABEL_5:
    *(result + 2) = self->_childNodesCount;
    *(result + 16) |= 1u;
    return result;
  }

  *(result + 3) = self->_routerNodesCount;
  *(result + 16) |= 2u;
  if (*&self->_has)
  {
    goto LABEL_5;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 16) & 2) == 0 || self->_routerNodesCount != *(v4 + 3))
    {
      goto LABEL_11;
    }
  }

  else if ((*(v4 + 16) & 2) != 0)
  {
LABEL_11:
    v5 = 0;
    goto LABEL_12;
  }

  v5 = (*(v4 + 16) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 16) & 1) == 0 || self->_childNodesCount != *(v4 + 2))
    {
      goto LABEL_11;
    }

    v5 = 1;
  }

LABEL_12:

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v2 = 2654435761 * self->_routerNodesCount;
    if (*&self->_has)
    {
      return (2654435761 * self->_childNodesCount) ^ v2;
    }
  }

  else
  {
    v2 = 0;
    if (*&self->_has)
    {
      return (2654435761 * self->_childNodesCount) ^ v2;
    }
  }

  return v2;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if ((v4[4] & 2) != 0)
  {
    self->_routerNodesCount = v4[3];
    *&self->_has |= 2u;
    if ((v4[4] & 1) == 0)
    {
LABEL_3:

      goto LABEL_5;
    }
  }

  else if ((v4[4] & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_childNodesCount = v4[2];
  *&self->_has |= 1u;

LABEL_5:
}

@end