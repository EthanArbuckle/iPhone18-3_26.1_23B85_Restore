@interface HDCodableWorkoutSessionConfiguration
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HDCodableWorkoutSessionConfiguration

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableWorkoutSessionConfiguration;
  v4 = [(HDCodableWorkoutSessionConfiguration *)&v8 description];
  dictionaryRepresentation = [(HDCodableWorkoutSessionConfiguration *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  workoutConfiguration = self->_workoutConfiguration;
  if (workoutConfiguration)
  {
    dictionaryRepresentation = [(HDCodableWorkoutConfiguration *)workoutConfiguration dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"workoutConfiguration"];
  }

  sourceBundleIdentifier = self->_sourceBundleIdentifier;
  if (sourceBundleIdentifier)
  {
    [dictionary setObject:sourceBundleIdentifier forKey:@"sourceBundleIdentifier"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_workoutConfiguration)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_sourceBundleIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_workoutConfiguration)
  {
    [toCopy setWorkoutConfiguration:?];
    toCopy = v5;
  }

  if (self->_sourceBundleIdentifier)
  {
    [v5 setSourceBundleIdentifier:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(HDCodableWorkoutConfiguration *)self->_workoutConfiguration copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_sourceBundleIdentifier copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((workoutConfiguration = self->_workoutConfiguration, !(workoutConfiguration | equalCopy[2])) || -[HDCodableWorkoutConfiguration isEqual:](workoutConfiguration, "isEqual:")))
  {
    sourceBundleIdentifier = self->_sourceBundleIdentifier;
    if (sourceBundleIdentifier | equalCopy[1])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  workoutConfiguration = self->_workoutConfiguration;
  v6 = fromCopy[2];
  v7 = fromCopy;
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

  fromCopy = v7;
LABEL_7:
  if (fromCopy[1])
  {
    [(HDCodableWorkoutSessionConfiguration *)self setSourceBundleIdentifier:?];
  }

  MEMORY[0x2821F96F8]();
}

@end