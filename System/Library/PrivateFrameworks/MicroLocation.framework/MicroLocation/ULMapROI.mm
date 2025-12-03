@interface ULMapROI
- (BOOL)isEqual:(id)equal;
- (ULMapROI)initWithCoder:(id)coder;
- (ULMapROI)initWithMapPoints:(id)points roomIndex:(id)index;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ULMapROI

- (ULMapROI)initWithMapPoints:(id)points roomIndex:(id)index
{
  pointsCopy = points;
  indexCopy = index;
  v11.receiver = self;
  v11.super_class = ULMapROI;
  v8 = [(ULMapROI *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(ULMapROI *)v8 setMapPoints:pointsCopy];
    [(ULMapROI *)v9 setRoomIndex:indexCopy];
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc(objc_opt_class());
  mapPoints = [(ULMapROI *)self mapPoints];
  v7 = [mapPoints copyWithZone:zone];
  roomIndex = [(ULMapROI *)self roomIndex];
  v9 = [roomIndex copyWithZone:zone];
  v10 = [v5 initWithMapPoints:v7 roomIndex:v9];

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  mapPoints = self->_mapPoints;
  coderCopy = coder;
  [coderCopy encodeObject:mapPoints forKey:@"mapPoints"];
  [coderCopy encodeObject:self->_roomIndex forKey:@"roomIndex"];
}

- (ULMapROI)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = ULMapROI;
  v5 = [(ULMapROI *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"mapPoints"];
    if (v6)
    {
      v7 = objc_opt_self();

      mapPoints = v5->_mapPoints;
      v5->_mapPoints = v7;

      v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"roomIndex"];
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

  mapPoints = [(ULMapROI *)self mapPoints];
  [v6 appendFormat:@", mapPoints: %@", mapPoints];

  roomIndex = [(ULMapROI *)self roomIndex];
  [v6 appendFormat:@", roomIndex: %@", roomIndex];

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
    mapPoints = [(ULMapROI *)self mapPoints];
    mapPoints2 = [v5 mapPoints];
    if ([mapPoints isEqual:mapPoints2])
    {
    }

    else
    {
      mapPoints3 = [(ULMapROI *)self mapPoints];
      mapPoints4 = [v5 mapPoints];

      if (mapPoints3 != mapPoints4)
      {
        v8 = 0;
LABEL_10:

        goto LABEL_11;
      }
    }

    roomIndex = [(ULMapROI *)self roomIndex];
    roomIndex2 = [v5 roomIndex];
    if ([roomIndex isEqual:roomIndex2])
    {

      v8 = 1;
    }

    else
    {
      roomIndex3 = [(ULMapROI *)self roomIndex];
      roomIndex4 = [v5 roomIndex];
      v8 = roomIndex3 == roomIndex4;
    }

    goto LABEL_10;
  }

  v8 = 0;
LABEL_11:

  return v8;
}

@end