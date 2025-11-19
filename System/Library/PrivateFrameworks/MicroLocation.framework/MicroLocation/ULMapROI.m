@interface ULMapROI
- (BOOL)isEqual:(id)a3;
- (ULMapROI)initWithCoder:(id)a3;
- (ULMapROI)initWithMapPoints:(id)a3 roomIndex:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ULMapROI

- (ULMapROI)initWithMapPoints:(id)a3 roomIndex:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = ULMapROI;
  v8 = [(ULMapROI *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(ULMapROI *)v8 setMapPoints:v6];
    [(ULMapROI *)v9 setRoomIndex:v7];
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc(objc_opt_class());
  v6 = [(ULMapROI *)self mapPoints];
  v7 = [v6 copyWithZone:a3];
  v8 = [(ULMapROI *)self roomIndex];
  v9 = [v8 copyWithZone:a3];
  v10 = [v5 initWithMapPoints:v7 roomIndex:v9];

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  mapPoints = self->_mapPoints;
  v5 = a3;
  [v5 encodeObject:mapPoints forKey:@"mapPoints"];
  [v5 encodeObject:self->_roomIndex forKey:@"roomIndex"];
}

- (ULMapROI)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ULMapROI;
  v5 = [(ULMapROI *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"mapPoints"];
    if (v6)
    {
      v7 = objc_opt_self();

      mapPoints = v5->_mapPoints;
      v5->_mapPoints = v7;

      v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"roomIndex"];
      v10 = objc_opt_self();

      roomIndex = v5->_roomIndex;
      v5->_roomIndex = v10;

      v6 = v5;
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

  v7 = [(ULMapROI *)self mapPoints];
  [v6 appendFormat:@", mapPoints: %@", v7];

  v8 = [(ULMapROI *)self roomIndex];
  [v6 appendFormat:@", roomIndex: %@", v8];

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
    v6 = [(ULMapROI *)self mapPoints];
    v7 = [v5 mapPoints];
    if ([v6 isEqual:v7])
    {
    }

    else
    {
      v9 = [(ULMapROI *)self mapPoints];
      v10 = [v5 mapPoints];

      if (v9 != v10)
      {
        v8 = 0;
LABEL_10:

        goto LABEL_11;
      }
    }

    v11 = [(ULMapROI *)self roomIndex];
    v12 = [v5 roomIndex];
    if ([v11 isEqual:v12])
    {

      v8 = 1;
    }

    else
    {
      v13 = [(ULMapROI *)self roomIndex];
      v14 = [v5 roomIndex];
      v8 = v13 == v14;
    }

    goto LABEL_10;
  }

  v8 = 0;
LABEL_11:

  return v8;
}

@end