@interface ULHomeSlamModelData
+ (id)emptyHomeSlamModelData;
- (BOOL)isEqual:(id)a3;
- (ULHomeSlamModelData)initWithCoder:(id)a3;
- (ULHomeSlamModelData)initWithMapROIs:(id)a3 trajectoryPoints:(id)a4 numInputSegments:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ULHomeSlamModelData

+ (id)emptyHomeSlamModelData
{
  v2 = [a1 alloc];
  v3 = [MEMORY[0x277CBEA60] array];
  v4 = [MEMORY[0x277CBEA60] array];
  v5 = [v2 initWithMapROIs:v3 trajectoryPoints:v4 numInputSegments:&unk_286A52858];

  return v5;
}

- (ULHomeSlamModelData)initWithMapROIs:(id)a3 trajectoryPoints:(id)a4 numInputSegments:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = ULHomeSlamModelData;
  v11 = [(ULHomeSlamModelData *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(ULHomeSlamModelData *)v11 setMapROIs:v8];
    [(ULHomeSlamModelData *)v12 setTrajectoryPoints:v9];
    [(ULHomeSlamModelData *)v12 setNumberOfInputSegments:v10];
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(ULHomeSlamModelData *)self mapROIs];
  v6 = [(ULHomeSlamModelData *)self trajectoryPoints];
  v7 = [(ULHomeSlamModelData *)self numberOfInputSegments];
  v8 = [v4 initWithMapROIs:v5 trajectoryPoints:v6 numInputSegments:v7];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  mapROIs = self->_mapROIs;
  v5 = a3;
  [v5 encodeObject:mapROIs forKey:@"mapROIs"];
  [v5 encodeObject:self->_trajectoryPoints forKey:@"trajectoryPoints"];
  [v5 encodeObject:self->_numberOfInputSegments forKey:@"numberOfInputSegments"];
}

- (ULHomeSlamModelData)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = ULHomeSlamModelData;
  v5 = [(ULHomeSlamModelData *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"mapROIs"];
    if (v6)
    {
      v7 = objc_opt_self();

      mapROIs = v5->_mapROIs;
      v5->_mapROIs = v7;

      v6 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"trajectoryPoints"];
      if (v6)
      {
        v9 = objc_opt_self();

        trajectoryPoints = v5->_trajectoryPoints;
        v5->_trajectoryPoints = v9;

        v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"numberOfInputSegments"];
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

  v7 = [(ULHomeSlamModelData *)self mapROIs];
  [v6 appendFormat:@", mapROIs: %@", v7];

  v8 = [(ULHomeSlamModelData *)self trajectoryPoints];
  [v6 appendFormat:@", trajectoryPoints: %@", v8];

  v9 = [(ULHomeSlamModelData *)self numberOfInputSegments];
  [v6 appendFormat:@", numberOfInputSegments: %@", v9];

  [v6 appendString:@">"];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(ULHomeSlamModelData *)self mapROIs];
    v7 = [v5 mapROIs];
    if ([v6 isEqual:v7])
    {
    }

    else
    {
      v9 = [(ULHomeSlamModelData *)self mapROIs];
      v10 = [v5 mapROIs];

      if (v9 != v10)
      {
        goto LABEL_9;
      }
    }

    v11 = [(ULHomeSlamModelData *)self trajectoryPoints];
    v12 = [v5 trajectoryPoints];
    if ([v11 isEqual:v12])
    {

      goto LABEL_10;
    }

    v13 = [(ULHomeSlamModelData *)self trajectoryPoints];
    v14 = [v5 trajectoryPoints];

    if (v13 == v14)
    {
LABEL_10:
      v15 = [(ULHomeSlamModelData *)self numberOfInputSegments];
      v16 = [v5 numberOfInputSegments];
      if ([v15 isEqual:v16])
      {

        v8 = 1;
      }

      else
      {
        v17 = [(ULHomeSlamModelData *)self numberOfInputSegments];
        v18 = [v5 numberOfInputSegments];
        v8 = v17 == v18;
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