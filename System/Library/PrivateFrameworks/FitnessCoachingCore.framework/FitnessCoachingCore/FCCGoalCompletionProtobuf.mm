@interface FCCGoalCompletionProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)completedGoalTypesAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation FCCGoalCompletionProtobuf

- (void)dealloc
{
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = FCCGoalCompletionProtobuf;
  [(FCCGoalCompletionProtobuf *)&v3 dealloc];
}

- (int)completedGoalTypesAtIndex:(unint64_t)index
{
  p_completedGoalTypes = &self->_completedGoalTypes;
  count = self->_completedGoalTypes.count;
  if (count <= index)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_completedGoalTypes->list[index];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = FCCGoalCompletionProtobuf;
  v4 = [(FCCGoalCompletionProtobuf *)&v8 description];
  dictionaryRepresentation = [(FCCGoalCompletionProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_activitySummaryIndex];
    [dictionary setObject:v4 forKey:@"activitySummaryIndex"];
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [dictionary setObject:identifier forKey:@"identifier"];
  }

  v6 = PBRepeatedInt32NSArray();
  [dictionary setObject:v6 forKey:@"completedGoalTypes"];

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v9 = toCopy;
  if (*&self->_has)
  {
    activitySummaryIndex = self->_activitySummaryIndex;
    PBDataWriterWriteInt64Field();
    toCopy = v9;
  }

  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  p_completedGoalTypes = &self->_completedGoalTypes;
  if (p_completedGoalTypes->count)
  {
    v7 = 0;
    do
    {
      v8 = p_completedGoalTypes->list[v7];
      PBDataWriterWriteInt32Field();
      toCopy = v9;
      ++v7;
    }

    while (v7 < p_completedGoalTypes->count);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[4] = self->_activitySummaryIndex;
    *(toCopy + 48) |= 1u;
  }

  v8 = toCopy;
  if (self->_identifier)
  {
    [toCopy setIdentifier:?];
  }

  if ([(FCCGoalCompletionProtobuf *)self completedGoalTypesCount])
  {
    [v8 clearCompletedGoalTypes];
    completedGoalTypesCount = [(FCCGoalCompletionProtobuf *)self completedGoalTypesCount];
    if (completedGoalTypesCount)
    {
      v6 = completedGoalTypesCount;
      for (i = 0; i != v6; ++i)
      {
        [v8 addCompletedGoalTypes:{-[FCCGoalCompletionProtobuf completedGoalTypesAtIndex:](self, "completedGoalTypesAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 32) = self->_activitySummaryIndex;
    *(v5 + 48) |= 1u;
  }

  v7 = [(NSString *)self->_identifier copyWithZone:zone];
  v8 = v6[5];
  v6[5] = v7;

  PBRepeatedInt32Copy();
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  v5 = *(equalCopy + 48);
  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_activitySummaryIndex != *(equalCopy + 4))
    {
      goto LABEL_10;
    }
  }

  else if (*(equalCopy + 48))
  {
LABEL_10:
    IsEqual = 0;
    goto LABEL_11;
  }

  identifier = self->_identifier;
  if (identifier | *(equalCopy + 5) && ![(NSString *)identifier isEqual:?])
  {
    goto LABEL_10;
  }

  IsEqual = PBRepeatedInt32IsEqual();
LABEL_11:

  return IsEqual;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_activitySummaryIndex;
  }

  else
  {
    v2 = 0;
  }

  v3 = [(NSString *)self->_identifier hash];
  return v3 ^ v2 ^ PBRepeatedInt32Hash();
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[6])
  {
    self->_activitySummaryIndex = fromCopy[4];
    *&self->_has |= 1u;
  }

  v8 = fromCopy;
  if (fromCopy[5])
  {
    [(FCCGoalCompletionProtobuf *)self setIdentifier:?];
    fromCopy = v8;
  }

  completedGoalTypesCount = [fromCopy completedGoalTypesCount];
  if (completedGoalTypesCount)
  {
    v6 = completedGoalTypesCount;
    for (i = 0; i != v6; ++i)
    {
      -[FCCGoalCompletionProtobuf addCompletedGoalTypes:](self, "addCompletedGoalTypes:", [v8 completedGoalTypesAtIndex:i]);
    }
  }
}

@end