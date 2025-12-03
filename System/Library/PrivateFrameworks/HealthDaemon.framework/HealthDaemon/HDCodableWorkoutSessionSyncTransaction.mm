@interface HDCodableWorkoutSessionSyncTransaction
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HDCodableWorkoutSessionSyncTransaction

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableWorkoutSessionSyncTransaction;
  v4 = [(HDCodableWorkoutSessionSyncTransaction *)&v8 description];
  dictionaryRepresentation = [(HDCodableWorkoutSessionSyncTransaction *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  sessionUUID = self->_sessionUUID;
  if (sessionUUID)
  {
    [dictionary setObject:sessionUUID forKey:@"sessionUUID"];
  }

  configuration = self->_configuration;
  if (configuration)
  {
    dictionaryRepresentation = [(HDCodableWorkoutSessionConfiguration *)configuration dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"configuration"];
  }

  globalState = self->_globalState;
  if (globalState)
  {
    dictionaryRepresentation2 = [(HDCodableWorkoutSessionGlobalState *)globalState dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"globalState"];
  }

  arbitraryData = self->_arbitraryData;
  if (arbitraryData)
  {
    [v4 setObject:arbitraryData forKey:@"arbitraryData"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_sessionUUID)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_configuration)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_globalState)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_arbitraryData)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_sessionUUID)
  {
    [toCopy setSessionUUID:?];
    toCopy = v5;
  }

  if (self->_configuration)
  {
    [v5 setConfiguration:?];
    toCopy = v5;
  }

  if (self->_globalState)
  {
    [v5 setGlobalState:?];
    toCopy = v5;
  }

  if (self->_arbitraryData)
  {
    [v5 setArbitraryData:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_sessionUUID copyWithZone:zone];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(HDCodableWorkoutSessionConfiguration *)self->_configuration copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(HDCodableWorkoutSessionGlobalState *)self->_globalState copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(NSData *)self->_arbitraryData copyWithZone:zone];
  v13 = v5[1];
  v5[1] = v12;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((sessionUUID = self->_sessionUUID, !(sessionUUID | equalCopy[4])) || -[NSData isEqual:](sessionUUID, "isEqual:")) && ((configuration = self->_configuration, !(configuration | equalCopy[2])) || -[HDCodableWorkoutSessionConfiguration isEqual:](configuration, "isEqual:")) && ((globalState = self->_globalState, !(globalState | equalCopy[3])) || -[HDCodableWorkoutSessionGlobalState isEqual:](globalState, "isEqual:")))
  {
    arbitraryData = self->_arbitraryData;
    if (arbitraryData | equalCopy[1])
    {
      v9 = [(NSData *)arbitraryData isEqual:?];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_sessionUUID hash];
  v4 = [(HDCodableWorkoutSessionConfiguration *)self->_configuration hash]^ v3;
  v5 = [(HDCodableWorkoutSessionGlobalState *)self->_globalState hash];
  return v4 ^ v5 ^ [(NSData *)self->_arbitraryData hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[4])
  {
    [(HDCodableWorkoutSessionSyncTransaction *)self setSessionUUID:?];
  }

  configuration = self->_configuration;
  v5 = fromCopy[2];
  if (configuration)
  {
    if (v5)
    {
      [(HDCodableWorkoutSessionConfiguration *)configuration mergeFrom:?];
    }
  }

  else if (v5)
  {
    [(HDCodableWorkoutSessionSyncTransaction *)self setConfiguration:?];
  }

  globalState = self->_globalState;
  v7 = fromCopy[3];
  if (globalState)
  {
    if (v7)
    {
      [(HDCodableWorkoutSessionGlobalState *)globalState mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(HDCodableWorkoutSessionSyncTransaction *)self setGlobalState:?];
  }

  if (fromCopy[1])
  {
    [(HDCodableWorkoutSessionSyncTransaction *)self setArbitraryData:?];
  }
}

@end