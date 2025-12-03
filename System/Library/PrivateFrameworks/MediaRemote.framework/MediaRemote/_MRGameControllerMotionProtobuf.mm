@interface _MRGameControllerMotionProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRGameControllerMotionProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRGameControllerMotionProtobuf;
  v4 = [(_MRGameControllerMotionProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRGameControllerMotionProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  gravity = self->_gravity;
  if (gravity)
  {
    dictionaryRepresentation = [(_MRGameControllerAccelerationProtobuf *)gravity dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"gravity"];
  }

  userAcceleration = self->_userAcceleration;
  if (userAcceleration)
  {
    dictionaryRepresentation2 = [(_MRGameControllerAccelerationProtobuf *)userAcceleration dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"userAcceleration"];
  }

  attitude = self->_attitude;
  if (attitude)
  {
    dictionaryRepresentation3 = [(_MRGameControllerAccelerationProtobuf *)attitude dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"attitude"];
  }

  rotation = self->_rotation;
  if (rotation)
  {
    dictionaryRepresentation4 = [(_MRGameControllerAccelerationProtobuf *)rotation dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation4 forKey:@"rotation"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_gravity)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_userAcceleration)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_attitude)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_rotation)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_gravity)
  {
    [toCopy setGravity:?];
    toCopy = v5;
  }

  if (self->_userAcceleration)
  {
    [v5 setUserAcceleration:?];
    toCopy = v5;
  }

  if (self->_attitude)
  {
    [v5 setAttitude:?];
    toCopy = v5;
  }

  if (self->_rotation)
  {
    [v5 setRotation:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(_MRGameControllerAccelerationProtobuf *)self->_gravity copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(_MRGameControllerAccelerationProtobuf *)self->_userAcceleration copyWithZone:zone];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(_MRGameControllerAccelerationProtobuf *)self->_attitude copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  v12 = [(_MRGameControllerAccelerationProtobuf *)self->_rotation copyWithZone:zone];
  v13 = v5[3];
  v5[3] = v12;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((gravity = self->_gravity, !(gravity | equalCopy[2])) || -[_MRGameControllerAccelerationProtobuf isEqual:](gravity, "isEqual:")) && ((userAcceleration = self->_userAcceleration, !(userAcceleration | equalCopy[4])) || -[_MRGameControllerAccelerationProtobuf isEqual:](userAcceleration, "isEqual:")) && ((attitude = self->_attitude, !(attitude | equalCopy[1])) || -[_MRGameControllerAccelerationProtobuf isEqual:](attitude, "isEqual:")))
  {
    rotation = self->_rotation;
    if (rotation | equalCopy[3])
    {
      v9 = [(_MRGameControllerAccelerationProtobuf *)rotation isEqual:?];
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
  v3 = [(_MRGameControllerAccelerationProtobuf *)self->_gravity hash];
  v4 = [(_MRGameControllerAccelerationProtobuf *)self->_userAcceleration hash]^ v3;
  v5 = [(_MRGameControllerAccelerationProtobuf *)self->_attitude hash];
  return v4 ^ v5 ^ [(_MRGameControllerAccelerationProtobuf *)self->_rotation hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  gravity = self->_gravity;
  v13 = fromCopy;
  v6 = fromCopy[2];
  if (gravity)
  {
    if (v6)
    {
      [(_MRGameControllerAccelerationProtobuf *)gravity mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(_MRGameControllerMotionProtobuf *)self setGravity:?];
  }

  userAcceleration = self->_userAcceleration;
  v8 = v13[4];
  if (userAcceleration)
  {
    if (v8)
    {
      [(_MRGameControllerAccelerationProtobuf *)userAcceleration mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(_MRGameControllerMotionProtobuf *)self setUserAcceleration:?];
  }

  attitude = self->_attitude;
  v10 = v13[1];
  if (attitude)
  {
    if (v10)
    {
      [(_MRGameControllerAccelerationProtobuf *)attitude mergeFrom:?];
    }
  }

  else if (v10)
  {
    [(_MRGameControllerMotionProtobuf *)self setAttitude:?];
  }

  rotation = self->_rotation;
  v12 = v13[3];
  if (rotation)
  {
    if (v12)
    {
      [(_MRGameControllerAccelerationProtobuf *)rotation mergeFrom:?];
    }
  }

  else if (v12)
  {
    [(_MRGameControllerMotionProtobuf *)self setRotation:?];
  }
}

@end