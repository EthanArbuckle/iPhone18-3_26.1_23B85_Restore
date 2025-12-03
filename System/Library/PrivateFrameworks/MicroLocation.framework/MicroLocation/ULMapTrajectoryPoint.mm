@interface ULMapTrajectoryPoint
- (BOOL)isEqual:(id)equal;
- (ULMapTrajectoryPoint)initWithCoder:(id)coder;
- (ULMapTrajectoryPoint)initWithMapPoint:(id)point forwardAzimuth:(float)azimuth forwardElevation:(float)elevation backwardAzimuth:(float)backwardAzimuth backwardElevation:(float)backwardElevation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ULMapTrajectoryPoint

- (ULMapTrajectoryPoint)initWithMapPoint:(id)point forwardAzimuth:(float)azimuth forwardElevation:(float)elevation backwardAzimuth:(float)backwardAzimuth backwardElevation:(float)backwardElevation
{
  pointCopy = point;
  v20.receiver = self;
  v20.super_class = ULMapTrajectoryPoint;
  v13 = [(ULMapTrajectoryPoint *)&v20 init];
  v14 = v13;
  if (v13)
  {
    [(ULMapTrajectoryPoint *)v13 setMapPoint:pointCopy];
    *&v15 = azimuth;
    [(ULMapTrajectoryPoint *)v14 setForwardAzimuthDegrees:v15];
    *&v16 = elevation;
    [(ULMapTrajectoryPoint *)v14 setForwardElevationDegrees:v16];
    *&v17 = backwardAzimuth;
    [(ULMapTrajectoryPoint *)v14 setBackwardAzimuthDegrees:v17];
    *&v18 = backwardElevation;
    [(ULMapTrajectoryPoint *)v14 setBackwardElevationDegrees:v18];
  }

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  mapPoint = [(ULMapTrajectoryPoint *)self mapPoint];
  [(ULMapTrajectoryPoint *)self forwardAzimuthDegrees];
  v7 = v6;
  [(ULMapTrajectoryPoint *)self forwardElevationDegrees];
  v9 = v8;
  [(ULMapTrajectoryPoint *)self backwardAzimuthDegrees];
  v11 = v10;
  [(ULMapTrajectoryPoint *)self backwardElevationDegrees];
  LODWORD(v13) = v12;
  LODWORD(v14) = v7;
  LODWORD(v15) = v9;
  LODWORD(v16) = v11;
  v17 = [v4 initWithMapPoint:mapPoint forwardAzimuth:v14 forwardElevation:v15 backwardAzimuth:v16 backwardElevation:v13];

  return v17;
}

- (void)encodeWithCoder:(id)coder
{
  mapPoint = self->_mapPoint;
  coderCopy = coder;
  [coderCopy encodeObject:mapPoint forKey:@"mapPoint"];
  *&v6 = self->_forwardAzimuthDegrees;
  v7 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
  [coderCopy encodeObject:v7 forKey:@"forwardAzimuthDegrees"];

  *&v8 = self->_forwardElevationDegrees;
  v9 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
  [coderCopy encodeObject:v9 forKey:@"forwardElevationDegrees"];

  *&v10 = self->_backwardAzimuthDegrees;
  v11 = [MEMORY[0x277CCABB0] numberWithFloat:v10];
  [coderCopy encodeObject:v11 forKey:@"backwardAzimuthDegrees"];

  *&v12 = self->_backwardElevationDegrees;
  v13 = [MEMORY[0x277CCABB0] numberWithFloat:v12];
  [coderCopy encodeObject:v13 forKey:@"backwardElevationDegrees"];
}

- (ULMapTrajectoryPoint)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = ULMapTrajectoryPoint;
  v5 = [(ULMapTrajectoryPoint *)&v22 init];
  if (v5)
  {
    v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"mapPoint"];
    if (v6)
    {
      v7 = objc_opt_self();

      mapPoint = v5->_mapPoint;
      v5->_mapPoint = v7;

      v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"forwardAzimuthDegrees"];
      v6 = v9;
      if (v9)
      {
        [(ULMapTrajectoryPoint *)v9 floatValue];
        v11 = v10;

        v5->_forwardAzimuthDegrees = v11;
        v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"forwardElevationDegrees"];
        v6 = v12;
        if (v12)
        {
          [(ULMapTrajectoryPoint *)v12 floatValue];
          v14 = v13;

          v5->_forwardElevationDegrees = v14;
          v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"backwardAzimuthDegrees"];
          v6 = v15;
          if (v15)
          {
            [(ULMapTrajectoryPoint *)v15 floatValue];
            v17 = v16;

            v5->_backwardAzimuthDegrees = v17;
            v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"backwardElevationDegrees"];
            v6 = v18;
            if (v18)
            {
              [(ULMapTrajectoryPoint *)v18 floatValue];
              v20 = v19;

              v5->_backwardElevationDegrees = v20;
              v6 = v5;
            }
          }
        }
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: ", v5];

  mapPoint = [(ULMapTrajectoryPoint *)self mapPoint];
  [v6 appendFormat:@", mapPoint: %@", mapPoint];

  [(ULMapTrajectoryPoint *)self forwardAzimuthDegrees];
  [v6 appendFormat:@", forwardAzimuthDegrees: %f", v8];
  [(ULMapTrajectoryPoint *)self forwardElevationDegrees];
  [v6 appendFormat:@", forwardElevationDegrees: %f", v9];
  [(ULMapTrajectoryPoint *)self backwardAzimuthDegrees];
  [v6 appendFormat:@", backwardAzimuthDegrees: %f", v10];
  [(ULMapTrajectoryPoint *)self backwardElevationDegrees];
  [v6 appendFormat:@", backwardElevationDegrees: %f", v11];
  [v6 appendString:@">"];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    mapPoint = [(ULMapTrajectoryPoint *)self mapPoint];
    mapPoint2 = [v5 mapPoint];
    if ([mapPoint isEqual:mapPoint2])
    {
    }

    else
    {
      mapPoint3 = [(ULMapTrajectoryPoint *)self mapPoint];
      mapPoint4 = [v5 mapPoint];

      if (mapPoint3 != mapPoint4)
      {
        goto LABEL_9;
      }
    }

    [(ULMapTrajectoryPoint *)self forwardAzimuthDegrees];
    v12 = v11;
    [v5 forwardAzimuthDegrees];
    if (v12 == v13)
    {
      [(ULMapTrajectoryPoint *)self forwardElevationDegrees];
      v15 = v14;
      [v5 forwardElevationDegrees];
      if (v15 == v16)
      {
        [(ULMapTrajectoryPoint *)self backwardAzimuthDegrees];
        v18 = v17;
        [v5 backwardAzimuthDegrees];
        if (v18 == v19)
        {
          [(ULMapTrajectoryPoint *)self backwardElevationDegrees];
          v22 = v21;
          [v5 backwardElevationDegrees];
          v8 = v22 == v23;
          goto LABEL_10;
        }
      }
    }

LABEL_9:
    v8 = 0;
LABEL_10:

    goto LABEL_11;
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(ULMapPoint *)self->_mapPoint hash];
  v4 = veorq_s8(vcvtq_u64_f64(vcvtq_f64_f32(*&self->_forwardAzimuthDegrees)), vcvtq_u64_f64(vcvt_hight_f64_f32(*&self->_forwardAzimuthDegrees)));
  return *&veor_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL)) ^ v3;
}

@end