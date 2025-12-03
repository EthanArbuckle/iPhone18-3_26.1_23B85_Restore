@interface ULHomeSlamModelData
+ (id)emptyHomeSlamModelData;
- (BOOL)isEqual:(id)equal;
- (ULHomeSlamModelData)initWithCoder:(id)coder;
- (ULHomeSlamModelData)initWithMapROIs:(id)is trajectoryPoints:(id)points numInputSegments:(id)segments;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ULHomeSlamModelData

+ (id)emptyHomeSlamModelData
{
  v2 = [self alloc];
  array = [MEMORY[0x277CBEA60] array];
  array2 = [MEMORY[0x277CBEA60] array];
  v5 = [v2 initWithMapROIs:array trajectoryPoints:array2 numInputSegments:&unk_286A52858];

  return v5;
}

- (ULHomeSlamModelData)initWithMapROIs:(id)is trajectoryPoints:(id)points numInputSegments:(id)segments
{
  isCopy = is;
  pointsCopy = points;
  segmentsCopy = segments;
  v14.receiver = self;
  v14.super_class = ULHomeSlamModelData;
  v11 = [(ULHomeSlamModelData *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(ULHomeSlamModelData *)v11 setMapROIs:isCopy];
    [(ULHomeSlamModelData *)v12 setTrajectoryPoints:pointsCopy];
    [(ULHomeSlamModelData *)v12 setNumberOfInputSegments:segmentsCopy];
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  mapROIs = [(ULHomeSlamModelData *)self mapROIs];
  trajectoryPoints = [(ULHomeSlamModelData *)self trajectoryPoints];
  numberOfInputSegments = [(ULHomeSlamModelData *)self numberOfInputSegments];
  v8 = [v4 initWithMapROIs:mapROIs trajectoryPoints:trajectoryPoints numInputSegments:numberOfInputSegments];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  mapROIs = self->_mapROIs;
  coderCopy = coder;
  [coderCopy encodeObject:mapROIs forKey:@"mapROIs"];
  [coderCopy encodeObject:self->_trajectoryPoints forKey:@"trajectoryPoints"];
  [coderCopy encodeObject:self->_numberOfInputSegments forKey:@"numberOfInputSegments"];
}

- (ULHomeSlamModelData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = ULHomeSlamModelData;
  v5 = [(ULHomeSlamModelData *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"mapROIs"];
    if (v6)
    {
      v7 = objc_opt_self();

      mapROIs = v5->_mapROIs;
      v5->_mapROIs = v7;

      v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"trajectoryPoints"];
      if (v6)
      {
        v9 = objc_opt_self();

        trajectoryPoints = v5->_trajectoryPoints;
        v5->_trajectoryPoints = v9;

        v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"numberOfInputSegments"];
        v12 = objc_opt_self();

        numberOfInputSegments = v5->_numberOfInputSegments;
        v5->_numberOfInputSegments = v12;

        v6 = v5;
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

  mapROIs = [(ULHomeSlamModelData *)self mapROIs];
  [v6 appendFormat:@", mapROIs: %@", mapROIs];

  trajectoryPoints = [(ULHomeSlamModelData *)self trajectoryPoints];
  [v6 appendFormat:@", trajectoryPoints: %@", trajectoryPoints];

  numberOfInputSegments = [(ULHomeSlamModelData *)self numberOfInputSegments];
  [v6 appendFormat:@", numberOfInputSegments: %@", numberOfInputSegments];

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
    mapROIs = [(ULHomeSlamModelData *)self mapROIs];
    mapROIs2 = [v5 mapROIs];
    if ([mapROIs isEqual:mapROIs2])
    {
    }

    else
    {
      mapROIs3 = [(ULHomeSlamModelData *)self mapROIs];
      mapROIs4 = [v5 mapROIs];

      if (mapROIs3 != mapROIs4)
      {
        goto LABEL_9;
      }
    }

    trajectoryPoints = [(ULHomeSlamModelData *)self trajectoryPoints];
    trajectoryPoints2 = [v5 trajectoryPoints];
    if ([trajectoryPoints isEqual:trajectoryPoints2])
    {

      goto LABEL_10;
    }

    trajectoryPoints3 = [(ULHomeSlamModelData *)self trajectoryPoints];
    trajectoryPoints4 = [v5 trajectoryPoints];

    if (trajectoryPoints3 == trajectoryPoints4)
    {
LABEL_10:
      numberOfInputSegments = [(ULHomeSlamModelData *)self numberOfInputSegments];
      numberOfInputSegments2 = [v5 numberOfInputSegments];
      if ([numberOfInputSegments isEqual:numberOfInputSegments2])
      {

        v8 = 1;
      }

      else
      {
        numberOfInputSegments3 = [(ULHomeSlamModelData *)self numberOfInputSegments];
        numberOfInputSegments4 = [v5 numberOfInputSegments];
        v8 = numberOfInputSegments3 == numberOfInputSegments4;
      }

      goto LABEL_13;
    }

LABEL_9:
    v8 = 0;
LABEL_13:

    goto LABEL_14;
  }

  v8 = 0;
LABEL_14:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_mapROIs hash];
  v4 = [(NSArray *)self->_trajectoryPoints hash]^ v3;
  return v4 ^ [(NSNumber *)self->_numberOfInputSegments hash];
}

@end