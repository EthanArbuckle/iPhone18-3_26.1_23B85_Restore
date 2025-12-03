@interface MSPTransitStorageIncidentEntity
- (BOOL)isEqual:(id)equal;
- (MSPTransitStorageIncidentEntity)initWithIncidentEntity:(id)entity;
- (NSSet)nextStopIDs;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unint64_t)nextStopsMuidsAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation MSPTransitStorageIncidentEntity

- (MSPTransitStorageIncidentEntity)initWithIncidentEntity:(id)entity
{
  v19 = *MEMORY[0x277D85DE8];
  entityCopy = entity;
  v17.receiver = self;
  v17.super_class = MSPTransitStorageIncidentEntity;
  v5 = [(MSPTransitStorageIncidentEntity *)&v17 init];
  if (v5)
  {
    -[MSPTransitStorageIncidentEntity setMuid:](v5, "setMuid:", [entityCopy muid]);
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    nextStopIDs = [entityCopy nextStopIDs];
    v7 = [nextStopIDs countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(nextStopIDs);
          }

          -[MSPTransitStorageIncidentEntity addNextStopsMuids:](v5, "addNextStopsMuids:", [*(*(&v13 + 1) + 8 * v10++) unsignedLongLongValue]);
        }

        while (v8 != v10);
        v8 = [nextStopIDs countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v8);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

- (NSSet)nextStopIDs
{
  v3 = [MEMORY[0x277CBEB58] setWithCapacity:{-[MSPTransitStorageIncidentEntity nextStopsMuidsCount](self, "nextStopsMuidsCount")}];
  if ([(MSPTransitStorageIncidentEntity *)self nextStopsMuidsCount])
  {
    v4 = 0;
    do
    {
      v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[MSPTransitStorageIncidentEntity nextStopsMuidsAtIndex:](self, "nextStopsMuidsAtIndex:", v4)}];
      [v3 addObject:v5];

      ++v4;
    }

    while (v4 < [(MSPTransitStorageIncidentEntity *)self nextStopsMuidsCount]);
  }

  return v3;
}

- (void)dealloc
{
  PBRepeatedUInt64Clear();
  v3.receiver = self;
  v3.super_class = MSPTransitStorageIncidentEntity;
  [(MSPTransitStorageIncidentEntity *)&v3 dealloc];
}

- (unint64_t)nextStopsMuidsAtIndex:(unint64_t)index
{
  p_nextStopsMuids = &self->_nextStopsMuids;
  count = self->_nextStopsMuids.count;
  if (count <= index)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_nextStopsMuids->list[index];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MSPTransitStorageIncidentEntity;
  v4 = [(MSPTransitStorageIncidentEntity *)&v8 description];
  dictionaryRepresentation = [(MSPTransitStorageIncidentEntity *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_muid];
    [dictionary setObject:v4 forKey:@"muid"];
  }

  v5 = PBRepeatedUInt64NSArray();
  [dictionary setObject:v5 forKey:@"next_stops_muids"];

  unknownFields = self->_unknownFields;
  if (unknownFields)
  {
    dictionaryRepresentation = [(PBUnknownFields *)unknownFields dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"Unknown Fields"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (*&self->_has)
  {
    muid = self->_muid;
    PBDataWriterWriteUint64Field();
    toCopy = v8;
  }

  if (self->_nextStopsMuids.count)
  {
    v6 = 0;
    do
    {
      v7 = self->_nextStopsMuids.list[v6];
      PBDataWriterWriteUint64Field();
      toCopy = v8;
      ++v6;
    }

    while (v6 < self->_nextStopsMuids.count);
  }

  [(PBUnknownFields *)self->_unknownFields writeTo:toCopy];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[5] = self->_muid;
    *(toCopy + 48) |= 1u;
  }

  v8 = toCopy;
  if ([(MSPTransitStorageIncidentEntity *)self nextStopsMuidsCount])
  {
    [v8 clearNextStopsMuids];
    nextStopsMuidsCount = [(MSPTransitStorageIncidentEntity *)self nextStopsMuidsCount];
    if (nextStopsMuidsCount)
    {
      v6 = nextStopsMuidsCount;
      for (i = 0; i != v6; ++i)
      {
        [v8 addNextStopsMuids:{-[MSPTransitStorageIncidentEntity nextStopsMuidsAtIndex:](self, "nextStopsMuidsAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  if (*&self->_has)
  {
    *(v4 + 40) = self->_muid;
    *(v4 + 48) |= 1u;
  }

  PBRepeatedUInt64Copy();
  objc_storeStrong(v5 + 1, self->_unknownFields);
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  v5 = *(equalCopy + 48);
  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_muid != *(equalCopy + 5))
    {
      goto LABEL_8;
    }
  }

  else if (*(equalCopy + 48))
  {
LABEL_8:
    IsEqual = 0;
    goto LABEL_9;
  }

  IsEqual = PBRepeatedUInt64IsEqual();
LABEL_9:

  return IsEqual;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761u * self->_muid;
  }

  else
  {
    v2 = 0;
  }

  return PBRepeatedUInt64Hash() ^ v2;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[6])
  {
    self->_muid = fromCopy[5];
    *&self->_has |= 1u;
  }

  v8 = fromCopy;
  nextStopsMuidsCount = [fromCopy nextStopsMuidsCount];
  if (nextStopsMuidsCount)
  {
    v6 = nextStopsMuidsCount;
    for (i = 0; i != v6; ++i)
    {
      -[MSPTransitStorageIncidentEntity addNextStopsMuids:](self, "addNextStopsMuids:", [v8 nextStopsMuidsAtIndex:i]);
    }
  }
}

@end