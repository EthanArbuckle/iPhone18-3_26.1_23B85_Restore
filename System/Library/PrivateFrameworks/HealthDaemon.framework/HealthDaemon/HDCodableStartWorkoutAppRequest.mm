@interface HDCodableStartWorkoutAppRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HDCodableStartWorkoutAppRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableStartWorkoutAppRequest;
  v4 = [(HDCodableStartWorkoutAppRequest *)&v8 description];
  dictionaryRepresentation = [(HDCodableStartWorkoutAppRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  requestIdentifier = self->_requestIdentifier;
  if (requestIdentifier)
  {
    [dictionary setObject:requestIdentifier forKey:@"requestIdentifier"];
  }

  applicationIdentifier = self->_applicationIdentifier;
  if (applicationIdentifier)
  {
    [v4 setObject:applicationIdentifier forKey:@"applicationIdentifier"];
  }

  workoutConfiguration = self->_workoutConfiguration;
  if (workoutConfiguration)
  {
    dictionaryRepresentation = [(HDCodableWorkoutConfiguration *)workoutConfiguration dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"workoutConfiguration"];
  }

  workoutPlanData = self->_workoutPlanData;
  if (workoutPlanData)
  {
    [v4 setObject:workoutPlanData forKey:@"workoutPlanData"];
  }

  mirroredStartData = self->_mirroredStartData;
  if (mirroredStartData)
  {
    [v4 setObject:mirroredStartData forKey:@"mirroredStartData"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_requestIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_applicationIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_workoutConfiguration)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_workoutPlanData)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_mirroredStartData)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_requestIdentifier)
  {
    [toCopy setRequestIdentifier:?];
    toCopy = v5;
  }

  if (self->_applicationIdentifier)
  {
    [v5 setApplicationIdentifier:?];
    toCopy = v5;
  }

  if (self->_workoutConfiguration)
  {
    [v5 setWorkoutConfiguration:?];
    toCopy = v5;
  }

  if (self->_workoutPlanData)
  {
    [v5 setWorkoutPlanData:?];
    toCopy = v5;
  }

  if (self->_mirroredStartData)
  {
    [v5 setMirroredStartData:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_requestIdentifier copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_applicationIdentifier copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(HDCodableWorkoutConfiguration *)self->_workoutConfiguration copyWithZone:zone];
  v11 = v5[4];
  v5[4] = v10;

  v12 = [(NSData *)self->_workoutPlanData copyWithZone:zone];
  v13 = v5[5];
  v5[5] = v12;

  v14 = [(NSData *)self->_mirroredStartData copyWithZone:zone];
  v15 = v5[2];
  v5[2] = v14;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((requestIdentifier = self->_requestIdentifier, !(requestIdentifier | equalCopy[3])) || -[NSString isEqual:](requestIdentifier, "isEqual:")) && ((applicationIdentifier = self->_applicationIdentifier, !(applicationIdentifier | equalCopy[1])) || -[NSString isEqual:](applicationIdentifier, "isEqual:")) && ((workoutConfiguration = self->_workoutConfiguration, !(workoutConfiguration | equalCopy[4])) || -[HDCodableWorkoutConfiguration isEqual:](workoutConfiguration, "isEqual:")) && ((workoutPlanData = self->_workoutPlanData, !(workoutPlanData | equalCopy[5])) || -[NSData isEqual:](workoutPlanData, "isEqual:")))
  {
    mirroredStartData = self->_mirroredStartData;
    if (mirroredStartData | equalCopy[2])
    {
      v10 = [(NSData *)mirroredStartData isEqual:?];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_requestIdentifier hash];
  v4 = [(NSString *)self->_applicationIdentifier hash]^ v3;
  v5 = [(HDCodableWorkoutConfiguration *)self->_workoutConfiguration hash];
  v6 = v4 ^ v5 ^ [(NSData *)self->_workoutPlanData hash];
  return v6 ^ [(NSData *)self->_mirroredStartData hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[3])
  {
    [(HDCodableStartWorkoutAppRequest *)self setRequestIdentifier:?];
  }

  if (fromCopy[1])
  {
    [(HDCodableStartWorkoutAppRequest *)self setApplicationIdentifier:?];
  }

  workoutConfiguration = self->_workoutConfiguration;
  v5 = fromCopy[4];
  if (workoutConfiguration)
  {
    if (v5)
    {
      [(HDCodableWorkoutConfiguration *)workoutConfiguration mergeFrom:?];
    }
  }

  else if (v5)
  {
    [(HDCodableStartWorkoutAppRequest *)self setWorkoutConfiguration:?];
  }

  if (fromCopy[5])
  {
    [(HDCodableStartWorkoutAppRequest *)self setWorkoutPlanData:?];
  }

  if (fromCopy[2])
  {
    [(HDCodableStartWorkoutAppRequest *)self setMirroredStartData:?];
  }
}

@end