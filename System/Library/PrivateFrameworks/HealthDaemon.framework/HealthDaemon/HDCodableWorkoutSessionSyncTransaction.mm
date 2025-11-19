@interface HDCodableWorkoutSessionSyncTransaction
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableWorkoutSessionSyncTransaction

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableWorkoutSessionSyncTransaction;
  v4 = [(HDCodableWorkoutSessionSyncTransaction *)&v8 description];
  v5 = [(HDCodableWorkoutSessionSyncTransaction *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  sessionUUID = self->_sessionUUID;
  if (sessionUUID)
  {
    [v3 setObject:sessionUUID forKey:@"sessionUUID"];
  }

  configuration = self->_configuration;
  if (configuration)
  {
    v7 = [(HDCodableWorkoutSessionConfiguration *)configuration dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"configuration"];
  }

  globalState = self->_globalState;
  if (globalState)
  {
    v9 = [(HDCodableWorkoutSessionGlobalState *)globalState dictionaryRepresentation];
    [v4 setObject:v9 forKey:@"globalState"];
  }

  arbitraryData = self->_arbitraryData;
  if (arbitraryData)
  {
    [v4 setObject:arbitraryData forKey:@"arbitraryData"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_sessionUUID)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_configuration)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_globalState)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_arbitraryData)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_sessionUUID)
  {
    [v4 setSessionUUID:?];
    v4 = v5;
  }

  if (self->_configuration)
  {
    [v5 setConfiguration:?];
    v4 = v5;
  }

  if (self->_globalState)
  {
    [v5 setGlobalState:?];
    v4 = v5;
  }

  if (self->_arbitraryData)
  {
    [v5 setArbitraryData:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_sessionUUID copyWithZone:a3];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(HDCodableWorkoutSessionConfiguration *)self->_configuration copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(HDCodableWorkoutSessionGlobalState *)self->_globalState copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(NSData *)self->_arbitraryData copyWithZone:a3];
  v13 = v5[1];
  v5[1] = v12;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((sessionUUID = self->_sessionUUID, !(sessionUUID | v4[4])) || -[NSData isEqual:](sessionUUID, "isEqual:")) && ((configuration = self->_configuration, !(configuration | v4[2])) || -[HDCodableWorkoutSessionConfiguration isEqual:](configuration, "isEqual:")) && ((globalState = self->_globalState, !(globalState | v4[3])) || -[HDCodableWorkoutSessionGlobalState isEqual:](globalState, "isEqual:")))
  {
    arbitraryData = self->_arbitraryData;
    if (arbitraryData | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v8 = a3;
  if (v8[4])
  {
    [(HDCodableWorkoutSessionSyncTransaction *)self setSessionUUID:?];
  }

  configuration = self->_configuration;
  v5 = v8[2];
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
  v7 = v8[3];
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

  if (v8[1])
  {
    [(HDCodableWorkoutSessionSyncTransaction *)self setArbitraryData:?];
  }
}

@end