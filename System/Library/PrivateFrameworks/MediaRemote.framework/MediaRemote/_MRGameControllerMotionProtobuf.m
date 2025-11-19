@interface _MRGameControllerMotionProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRGameControllerMotionProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRGameControllerMotionProtobuf;
  v4 = [(_MRGameControllerMotionProtobuf *)&v8 description];
  v5 = [(_MRGameControllerMotionProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  gravity = self->_gravity;
  if (gravity)
  {
    v5 = [(_MRGameControllerAccelerationProtobuf *)gravity dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"gravity"];
  }

  userAcceleration = self->_userAcceleration;
  if (userAcceleration)
  {
    v7 = [(_MRGameControllerAccelerationProtobuf *)userAcceleration dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"userAcceleration"];
  }

  attitude = self->_attitude;
  if (attitude)
  {
    v9 = [(_MRGameControllerAccelerationProtobuf *)attitude dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"attitude"];
  }

  rotation = self->_rotation;
  if (rotation)
  {
    v11 = [(_MRGameControllerAccelerationProtobuf *)rotation dictionaryRepresentation];
    [v3 setObject:v11 forKey:@"rotation"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_gravity)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_userAcceleration)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_attitude)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_rotation)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_gravity)
  {
    [v4 setGravity:?];
    v4 = v5;
  }

  if (self->_userAcceleration)
  {
    [v5 setUserAcceleration:?];
    v4 = v5;
  }

  if (self->_attitude)
  {
    [v5 setAttitude:?];
    v4 = v5;
  }

  if (self->_rotation)
  {
    [v5 setRotation:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(_MRGameControllerAccelerationProtobuf *)self->_gravity copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(_MRGameControllerAccelerationProtobuf *)self->_userAcceleration copyWithZone:a3];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(_MRGameControllerAccelerationProtobuf *)self->_attitude copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

  v12 = [(_MRGameControllerAccelerationProtobuf *)self->_rotation copyWithZone:a3];
  v13 = v5[3];
  v5[3] = v12;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((gravity = self->_gravity, !(gravity | v4[2])) || -[_MRGameControllerAccelerationProtobuf isEqual:](gravity, "isEqual:")) && ((userAcceleration = self->_userAcceleration, !(userAcceleration | v4[4])) || -[_MRGameControllerAccelerationProtobuf isEqual:](userAcceleration, "isEqual:")) && ((attitude = self->_attitude, !(attitude | v4[1])) || -[_MRGameControllerAccelerationProtobuf isEqual:](attitude, "isEqual:")))
  {
    rotation = self->_rotation;
    if (rotation | v4[3])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  gravity = self->_gravity;
  v13 = v4;
  v6 = v4[2];
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