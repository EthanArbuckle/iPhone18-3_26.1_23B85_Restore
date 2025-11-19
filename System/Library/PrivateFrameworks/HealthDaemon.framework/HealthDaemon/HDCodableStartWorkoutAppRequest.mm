@interface HDCodableStartWorkoutAppRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableStartWorkoutAppRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableStartWorkoutAppRequest;
  v4 = [(HDCodableStartWorkoutAppRequest *)&v8 description];
  v5 = [(HDCodableStartWorkoutAppRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  requestIdentifier = self->_requestIdentifier;
  if (requestIdentifier)
  {
    [v3 setObject:requestIdentifier forKey:@"requestIdentifier"];
  }

  applicationIdentifier = self->_applicationIdentifier;
  if (applicationIdentifier)
  {
    [v4 setObject:applicationIdentifier forKey:@"applicationIdentifier"];
  }

  workoutConfiguration = self->_workoutConfiguration;
  if (workoutConfiguration)
  {
    v8 = [(HDCodableWorkoutConfiguration *)workoutConfiguration dictionaryRepresentation];
    [v4 setObject:v8 forKey:@"workoutConfiguration"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_requestIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_applicationIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_workoutConfiguration)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_workoutPlanData)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_mirroredStartData)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_requestIdentifier)
  {
    [v4 setRequestIdentifier:?];
    v4 = v5;
  }

  if (self->_applicationIdentifier)
  {
    [v5 setApplicationIdentifier:?];
    v4 = v5;
  }

  if (self->_workoutConfiguration)
  {
    [v5 setWorkoutConfiguration:?];
    v4 = v5;
  }

  if (self->_workoutPlanData)
  {
    [v5 setWorkoutPlanData:?];
    v4 = v5;
  }

  if (self->_mirroredStartData)
  {
    [v5 setMirroredStartData:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_requestIdentifier copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_applicationIdentifier copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(HDCodableWorkoutConfiguration *)self->_workoutConfiguration copyWithZone:a3];
  v11 = v5[4];
  v5[4] = v10;

  v12 = [(NSData *)self->_workoutPlanData copyWithZone:a3];
  v13 = v5[5];
  v5[5] = v12;

  v14 = [(NSData *)self->_mirroredStartData copyWithZone:a3];
  v15 = v5[2];
  v5[2] = v14;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((requestIdentifier = self->_requestIdentifier, !(requestIdentifier | v4[3])) || -[NSString isEqual:](requestIdentifier, "isEqual:")) && ((applicationIdentifier = self->_applicationIdentifier, !(applicationIdentifier | v4[1])) || -[NSString isEqual:](applicationIdentifier, "isEqual:")) && ((workoutConfiguration = self->_workoutConfiguration, !(workoutConfiguration | v4[4])) || -[HDCodableWorkoutConfiguration isEqual:](workoutConfiguration, "isEqual:")) && ((workoutPlanData = self->_workoutPlanData, !(workoutPlanData | v4[5])) || -[NSData isEqual:](workoutPlanData, "isEqual:")))
  {
    mirroredStartData = self->_mirroredStartData;
    if (mirroredStartData | v4[2])
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

- (void)mergeFrom:(id)a3
{
  v6 = a3;
  if (v6[3])
  {
    [(HDCodableStartWorkoutAppRequest *)self setRequestIdentifier:?];
  }

  if (v6[1])
  {
    [(HDCodableStartWorkoutAppRequest *)self setApplicationIdentifier:?];
  }

  workoutConfiguration = self->_workoutConfiguration;
  v5 = v6[4];
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

  if (v6[5])
  {
    [(HDCodableStartWorkoutAppRequest *)self setWorkoutPlanData:?];
  }

  if (v6[2])
  {
    [(HDCodableStartWorkoutAppRequest *)self setMirroredStartData:?];
  }
}

@end