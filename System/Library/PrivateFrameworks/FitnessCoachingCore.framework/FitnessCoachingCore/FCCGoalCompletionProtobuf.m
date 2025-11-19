@interface FCCGoalCompletionProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)completedGoalTypesAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation FCCGoalCompletionProtobuf

- (void)dealloc
{
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = FCCGoalCompletionProtobuf;
  [(FCCGoalCompletionProtobuf *)&v3 dealloc];
}

- (int)completedGoalTypesAtIndex:(unint64_t)a3
{
  p_completedGoalTypes = &self->_completedGoalTypes;
  count = self->_completedGoalTypes.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_completedGoalTypes->list[a3];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = FCCGoalCompletionProtobuf;
  v4 = [(FCCGoalCompletionProtobuf *)&v8 description];
  v5 = [(FCCGoalCompletionProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_activitySummaryIndex];
    [v3 setObject:v4 forKey:@"activitySummaryIndex"];
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKey:@"identifier"];
  }

  v6 = PBRepeatedInt32NSArray();
  [v3 setObject:v6 forKey:@"completedGoalTypes"];

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (*&self->_has)
  {
    activitySummaryIndex = self->_activitySummaryIndex;
    PBDataWriterWriteInt64Field();
    v4 = v9;
  }

  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  p_completedGoalTypes = &self->_completedGoalTypes;
  if (p_completedGoalTypes->count)
  {
    v7 = 0;
    do
    {
      v8 = p_completedGoalTypes->list[v7];
      PBDataWriterWriteInt32Field();
      v4 = v9;
      ++v7;
    }

    while (v7 < p_completedGoalTypes->count);
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[4] = self->_activitySummaryIndex;
    *(v4 + 48) |= 1u;
  }

  v8 = v4;
  if (self->_identifier)
  {
    [v4 setIdentifier:?];
  }

  if ([(FCCGoalCompletionProtobuf *)self completedGoalTypesCount])
  {
    [v8 clearCompletedGoalTypes];
    v5 = [(FCCGoalCompletionProtobuf *)self completedGoalTypesCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        [v8 addCompletedGoalTypes:{-[FCCGoalCompletionProtobuf completedGoalTypesAtIndex:](self, "completedGoalTypesAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 32) = self->_activitySummaryIndex;
    *(v5 + 48) |= 1u;
  }

  v7 = [(NSString *)self->_identifier copyWithZone:a3];
  v8 = v6[5];
  v6[5] = v7;

  PBRepeatedInt32Copy();
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  v5 = *(v4 + 48);
  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_activitySummaryIndex != *(v4 + 4))
    {
      goto LABEL_10;
    }
  }

  else if (*(v4 + 48))
  {
LABEL_10:
    IsEqual = 0;
    goto LABEL_11;
  }

  identifier = self->_identifier;
  if (identifier | *(v4 + 5) && ![(NSString *)identifier isEqual:?])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[6])
  {
    self->_activitySummaryIndex = v4[4];
    *&self->_has |= 1u;
  }

  v8 = v4;
  if (v4[5])
  {
    [(FCCGoalCompletionProtobuf *)self setIdentifier:?];
    v4 = v8;
  }

  v5 = [v4 completedGoalTypesCount];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      -[FCCGoalCompletionProtobuf addCompletedGoalTypes:](self, "addCompletedGoalTypes:", [v8 completedGoalTypesAtIndex:i]);
    }
  }
}

@end