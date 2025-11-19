@interface MXRecognitionChoice
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)alternativeIndexAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation MXRecognitionChoice

- (void)dealloc
{
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = MXRecognitionChoice;
  [(MXRecognitionChoice *)&v3 dealloc];
}

- (int)alternativeIndexAtIndex:(unint64_t)a3
{
  p_alternativeIndexs = &self->_alternativeIndexs;
  count = self->_alternativeIndexs.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_alternativeIndexs->list[a3];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MXRecognitionChoice;
  v4 = [(MXRecognitionChoice *)&v8 description];
  v5 = [(MXRecognitionChoice *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = PBRepeatedInt32NSArray();
  [v3 setObject:v4 forKey:@"alternative_index"];

  if (*&self->_has)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithInt:self->_confidence];
    [v3 setObject:v5 forKey:@"confidence"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_alternativeIndexs.count)
  {
    v5 = 0;
    do
    {
      v6 = self->_alternativeIndexs.list[v5];
      PBDataWriterWriteInt32Field();
      v4 = v8;
      ++v5;
    }

    while (v5 < self->_alternativeIndexs.count);
  }

  if (*&self->_has)
  {
    confidence = self->_confidence;
    PBDataWriterWriteInt32Field();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v7 = a3;
  if ([(MXRecognitionChoice *)self alternativeIndexsCount])
  {
    [v7 clearAlternativeIndexs];
    v4 = [(MXRecognitionChoice *)self alternativeIndexsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        [v7 addAlternativeIndex:{-[MXRecognitionChoice alternativeIndexAtIndex:](self, "alternativeIndexAtIndex:", i)}];
      }
    }
  }

  if (*&self->_has)
  {
    *(v7 + 8) = self->_confidence;
    *(v7 + 36) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  PBRepeatedInt32Copy();
  if (*&self->_has)
  {
    *(v4 + 32) = self->_confidence;
    *(v4 + 36) |= 1u;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()] || !PBRepeatedInt32IsEqual())
  {
    goto LABEL_7;
  }

  v5 = (*(v4 + 36) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) != 0 && self->_confidence == *(v4 + 8))
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
  v3 = PBRepeatedInt32Hash();
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_confidence;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (void)mergeFrom:(id)a3
{
  v7 = a3;
  v4 = [v7 alternativeIndexsCount];
  if (v4)
  {
    v5 = v4;
    for (i = 0; i != v5; ++i)
    {
      -[MXRecognitionChoice addAlternativeIndex:](self, "addAlternativeIndex:", [v7 alternativeIndexAtIndex:i]);
    }
  }

  if (v7[9])
  {
    self->_confidence = v7[8];
    *&self->_has |= 1u;
  }
}

@end