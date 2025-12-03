@interface FCCGoalProgressContentProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)goalTypesToDisplayAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasGoalTypeToHighlight:(BOOL)highlight;
- (void)writeTo:(id)to;
@end

@implementation FCCGoalProgressContentProtobuf

- (void)dealloc
{
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = FCCGoalProgressContentProtobuf;
  [(FCCGoalProgressContentProtobuf *)&v3 dealloc];
}

- (int)goalTypesToDisplayAtIndex:(unint64_t)index
{
  p_goalTypesToDisplays = &self->_goalTypesToDisplays;
  count = self->_goalTypesToDisplays.count;
  if (count <= index)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_goalTypesToDisplays->list[index];
}

- (void)setHasGoalTypeToHighlight:(BOOL)highlight
{
  if (highlight)
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
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = FCCGoalProgressContentProtobuf;
  v4 = [(FCCGoalProgressContentProtobuf *)&v8 description];
  dictionaryRepresentation = [(FCCGoalProgressContentProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  eventIdentifier = self->_eventIdentifier;
  if (eventIdentifier)
  {
    [dictionary setObject:eventIdentifier forKey:@"eventIdentifier"];
  }

  v6 = PBRepeatedInt32NSArray();
  [v4 setObject:v6 forKey:@"goalTypesToDisplay"];

  has = self->_has;
  if ((has & 2) != 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInt:self->_goalTypeToHighlight];
    [v4 setObject:v8 forKey:@"goalTypeToHighlight"];

    has = self->_has;
  }

  if (has)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_expectedGoalValue];
    [v4 setObject:v9 forKey:@"expectedGoalValue"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v10 = toCopy;
  if (self->_eventIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v10;
  }

  if (self->_goalTypesToDisplays.count)
  {
    v5 = 0;
    do
    {
      v6 = self->_goalTypesToDisplays.list[v5];
      PBDataWriterWriteInt32Field();
      toCopy = v10;
      ++v5;
    }

    while (v5 < self->_goalTypesToDisplays.count);
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    goalTypeToHighlight = self->_goalTypeToHighlight;
    PBDataWriterWriteInt32Field();
    toCopy = v10;
    has = self->_has;
  }

  if (has)
  {
    expectedGoalValue = self->_expectedGoalValue;
    PBDataWriterWriteDoubleField();
    toCopy = v10;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_eventIdentifier)
  {
    [toCopy setEventIdentifier:?];
  }

  if ([(FCCGoalProgressContentProtobuf *)self goalTypesToDisplaysCount])
  {
    [toCopy clearGoalTypesToDisplays];
    goalTypesToDisplaysCount = [(FCCGoalProgressContentProtobuf *)self goalTypesToDisplaysCount];
    if (goalTypesToDisplaysCount)
    {
      v5 = goalTypesToDisplaysCount;
      for (i = 0; i != v5; ++i)
      {
        [toCopy addGoalTypesToDisplay:{-[FCCGoalProgressContentProtobuf goalTypesToDisplayAtIndex:](self, "goalTypesToDisplayAtIndex:", i)}];
      }
    }
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 12) = self->_goalTypeToHighlight;
    *(toCopy + 52) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 4) = *&self->_expectedGoalValue;
    *(toCopy + 52) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_eventIdentifier copyWithZone:zone];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  PBRepeatedInt32Copy();
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 48) = self->_goalTypeToHighlight;
    *(v5 + 52) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 32) = self->_expectedGoalValue;
    *(v5 + 52) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  eventIdentifier = self->_eventIdentifier;
  if (eventIdentifier | *(equalCopy + 5))
  {
    if (![(NSString *)eventIdentifier isEqual:?])
    {
      goto LABEL_14;
    }
  }

  if (!PBRepeatedInt32IsEqual())
  {
    goto LABEL_14;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 52) & 2) == 0 || self->_goalTypeToHighlight != *(equalCopy + 12))
    {
      goto LABEL_14;
    }
  }

  else if ((*(equalCopy + 52) & 2) != 0)
  {
LABEL_14:
    v6 = 0;
    goto LABEL_15;
  }

  v6 = (*(equalCopy + 52) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 52) & 1) == 0 || self->_expectedGoalValue != *(equalCopy + 4))
    {
      goto LABEL_14;
    }

    v6 = 1;
  }

LABEL_15:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_eventIdentifier hash];
  v4 = PBRepeatedInt32Hash();
  if ((*&self->_has & 2) != 0)
  {
    v7 = 2654435761 * self->_goalTypeToHighlight;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_8:
    v11 = 0;
    return v4 ^ v3 ^ v7 ^ v11;
  }

  v7 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  expectedGoalValue = self->_expectedGoalValue;
  if (expectedGoalValue < 0.0)
  {
    expectedGoalValue = -expectedGoalValue;
  }

  *v5.i64 = floor(expectedGoalValue + 0.5);
  v9 = (expectedGoalValue - *v5.i64) * 1.84467441e19;
  *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
  v10.f64[0] = NAN;
  v10.f64[1] = NAN;
  v11 = 2654435761u * *vbslq_s8(vnegq_f64(v10), v6, v5).i64;
  if (v9 >= 0.0)
  {
    if (v9 > 0.0)
    {
      v11 += v9;
    }
  }

  else
  {
    v11 -= fabs(v9);
  }

  return v4 ^ v3 ^ v7 ^ v11;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v9 = fromCopy;
  if (fromCopy[5])
  {
    [(FCCGoalProgressContentProtobuf *)self setEventIdentifier:?];
    fromCopy = v9;
  }

  goalTypesToDisplaysCount = [fromCopy goalTypesToDisplaysCount];
  if (goalTypesToDisplaysCount)
  {
    v6 = goalTypesToDisplaysCount;
    for (i = 0; i != v6; ++i)
    {
      -[FCCGoalProgressContentProtobuf addGoalTypesToDisplay:](self, "addGoalTypesToDisplay:", [v9 goalTypesToDisplayAtIndex:i]);
    }
  }

  v8 = *(v9 + 52);
  if ((v8 & 2) != 0)
  {
    self->_goalTypeToHighlight = *(v9 + 12);
    *&self->_has |= 2u;
    v8 = *(v9 + 52);
  }

  if (v8)
  {
    self->_expectedGoalValue = *(v9 + 4);
    *&self->_has |= 1u;
  }
}

@end