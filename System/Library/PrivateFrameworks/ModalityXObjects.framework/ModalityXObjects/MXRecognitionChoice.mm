@interface MXRecognitionChoice
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)alternativeIndexAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation MXRecognitionChoice

- (void)dealloc
{
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = MXRecognitionChoice;
  [(MXRecognitionChoice *)&v3 dealloc];
}

- (int)alternativeIndexAtIndex:(unint64_t)index
{
  p_alternativeIndexs = &self->_alternativeIndexs;
  count = self->_alternativeIndexs.count;
  if (count <= index)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_alternativeIndexs->list[index];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MXRecognitionChoice;
  v4 = [(MXRecognitionChoice *)&v8 description];
  dictionaryRepresentation = [(MXRecognitionChoice *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = PBRepeatedInt32NSArray();
  [dictionary setObject:v4 forKey:@"alternative_index"];

  if (*&self->_has)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithInt:self->_confidence];
    [dictionary setObject:v5 forKey:@"confidence"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_alternativeIndexs.count)
  {
    v5 = 0;
    do
    {
      v6 = self->_alternativeIndexs.list[v5];
      PBDataWriterWriteInt32Field();
      toCopy = v8;
      ++v5;
    }

    while (v5 < self->_alternativeIndexs.count);
  }

  if (*&self->_has)
  {
    confidence = self->_confidence;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(MXRecognitionChoice *)self alternativeIndexsCount])
  {
    [toCopy clearAlternativeIndexs];
    alternativeIndexsCount = [(MXRecognitionChoice *)self alternativeIndexsCount];
    if (alternativeIndexsCount)
    {
      v5 = alternativeIndexsCount;
      for (i = 0; i != v5; ++i)
      {
        [toCopy addAlternativeIndex:{-[MXRecognitionChoice alternativeIndexAtIndex:](self, "alternativeIndexAtIndex:", i)}];
      }
    }
  }

  if (*&self->_has)
  {
    *(toCopy + 8) = self->_confidence;
    *(toCopy + 36) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  PBRepeatedInt32Copy();
  if (*&self->_has)
  {
    *(v4 + 32) = self->_confidence;
    *(v4 + 36) |= 1u;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()] || !PBRepeatedInt32IsEqual())
  {
    goto LABEL_7;
  }

  v5 = (*(equalCopy + 36) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) != 0 && self->_confidence == *(equalCopy + 8))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  alternativeIndexsCount = [fromCopy alternativeIndexsCount];
  if (alternativeIndexsCount)
  {
    v5 = alternativeIndexsCount;
    for (i = 0; i != v5; ++i)
    {
      -[MXRecognitionChoice addAlternativeIndex:](self, "addAlternativeIndex:", [fromCopy alternativeIndexAtIndex:i]);
    }
  }

  if (fromCopy[9])
  {
    self->_confidence = fromCopy[8];
    *&self->_has |= 1u;
  }
}

@end