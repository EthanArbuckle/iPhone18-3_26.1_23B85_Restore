@interface HDCodableWorkoutSessionConfiguration
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableWorkoutSessionConfiguration

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableWorkoutSessionConfiguration;
  v4 = [(HDCodableWorkoutSessionConfiguration *)&v8 description];
  v5 = [(HDCodableWorkoutSessionConfiguration *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  workoutConfiguration = self->_workoutConfiguration;
  if (workoutConfiguration)
  {
    v5 = [(HDCodableWorkoutConfiguration *)workoutConfiguration dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"workoutConfiguration"];
  }

  sourceBundleIdentifier = self->_sourceBundleIdentifier;
  if (sourceBundleIdentifier)
  {
    [v3 setObject:sourceBundleIdentifier forKey:@"sourceBundleIdentifier"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_workoutConfiguration)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_sourceBundleIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_workoutConfiguration)
  {
    [v4 setWorkoutConfiguration:?];
    v4 = v5;
  }

  if (self->_sourceBundleIdentifier)
  {
    [v5 setSourceBundleIdentifier:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(HDCodableWorkoutConfiguration *)self->_workoutConfiguration copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_sourceBundleIdentifier copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((workoutConfiguration = self->_workoutConfiguration, !(workoutConfiguration | v4[2])) || -[HDCodableWorkoutConfiguration isEqual:](workoutConfiguration, "isEqual:")))
  {
    sourceBundleIdentifier = self->_sourceBundleIdentifier;
    if (sourceBundleIdentifier | v4[1])
    {
      v7 = [(NSString *)sourceBundleIdentifier isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  workoutConfiguration = self->_workoutConfiguration;
  v6 = v4[2];
  v7 = v4;
  if (workoutConfiguration)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(HDCodableWorkoutConfiguration *)workoutConfiguration mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(HDCodableWorkoutSessionConfiguration *)self setWorkoutConfiguration:?];
  }

  v4 = v7;
LABEL_7:
  if (v4[1])
  {
    [(HDCodableWorkoutSessionConfiguration *)self setSourceBundleIdentifier:?];
  }

  MEMORY[0x2821F96F8]();
}

@end