@interface NTKSiderealSector
- (NTKSiderealSector)initWithCoder:(id)a3;
- (NTKSiderealSector)initWithStartingEvent:(id)a3 endingEvent:(id)a4;
- (id)description;
- (id)localizedName;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NTKSiderealSector

- (NTKSiderealSector)initWithStartingEvent:(id)a3 endingEvent:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = NTKSiderealSector;
  v9 = [(NTKSiderealSector *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_startingEvent, a3);
    objc_storeStrong(&v10->_endingEvent, a4);
    v11 = [v7 type];
    if (v11 <= 9)
    {
      v10->_type = qword_22DCE99B8[v11];
    }
  }

  return v10;
}

- (NTKSiderealSector)initWithCoder:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = NTKSiderealSector;
  v5 = [(NTKSiderealSector *)&v24 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v5->_type = [v6 unsignedIntegerValue];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startingEvent"];
    startingEvent = v5->_startingEvent;
    v5->_startingEvent = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endingEvent"];
    endingEvent = v5->_endingEvent;
    v5->_endingEvent = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"gradientStartPoint.x"];
    [v11 floatValue];
    v23 = v12;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"gradientStartPoint.y"];
    [v13 floatValue];
    v22 = v14;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"gradientEndPoint.x"];
    [v15 floatValue];
    v21 = v16;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"gradientEndPoint.y"];
    [v17 floatValue];
    v20 = v18;

    *v5->_gradientStartPoint = __PAIR64__(v22, v23);
    *v5->_gradientEndPoint = __PAIR64__(v20, v21);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  type = self->_type;
  v6 = a3;
  v7 = [v4 numberWithUnsignedInteger:type];
  [v6 encodeObject:v7 forKey:@"type"];

  [v6 encodeObject:self->_startingEvent forKey:@"startingEvent"];
  [v6 encodeObject:self->_endingEvent forKey:@"endingEvent"];
  v8 = [MEMORY[0x277CCABB0] numberWithFloat:*self->_gradientStartPoint];
  [v6 encodeObject:v8 forKey:@"gradientStartPoint.x"];

  LODWORD(v9) = *&self->_gradientStartPoint[4];
  v10 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
  [v6 encodeObject:v10 forKey:@"gradientStartPoint.y"];

  v11 = [MEMORY[0x277CCABB0] numberWithFloat:*self->_gradientEndPoint];
  [v6 encodeObject:v11 forKey:@"gradientEndPoint.x"];

  LODWORD(v12) = *&self->_gradientEndPoint[4];
  v13 = [MEMORY[0x277CCABB0] numberWithFloat:v12];
  [v6 encodeObject:v13 forKey:@"gradientEndPoint.y"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(NTKSiderealSector *)self localizedName];
  [(NTKSiderealSolarEvent *)self->_startingEvent angle];
  v6 = v5;
  [(NTKSiderealSolarEvent *)self->_endingEvent angle];
  v8 = [v3 stringWithFormat:@"SiderealSector: %@ %f %f", v4, v6, v7];

  return v8;
}

- (id)localizedName
{
  p_localizedName = &self->_localizedName;
  localizedName = self->_localizedName;
  if (localizedName)
  {
    v4 = localizedName;
  }

  else
  {
    type = self->_type;
    if (type > 7)
    {
      v4 = &stru_284110E98;
    }

    else
    {
      v6 = off_2787873A0[type];
      v7 = NTKBundle();
      v4 = [v7 localizedStringForKey:v6 value:&stru_284110E98 table:@"Sidereal"];
    }

    objc_storeStrong(p_localizedName, v4);
  }

  return v4;
}

@end