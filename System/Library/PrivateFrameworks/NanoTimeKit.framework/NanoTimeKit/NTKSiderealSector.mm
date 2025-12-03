@interface NTKSiderealSector
- (NTKSiderealSector)initWithCoder:(id)coder;
- (NTKSiderealSector)initWithStartingEvent:(id)event endingEvent:(id)endingEvent;
- (id)description;
- (id)localizedName;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NTKSiderealSector

- (NTKSiderealSector)initWithStartingEvent:(id)event endingEvent:(id)endingEvent
{
  eventCopy = event;
  endingEventCopy = endingEvent;
  v13.receiver = self;
  v13.super_class = NTKSiderealSector;
  v9 = [(NTKSiderealSector *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_startingEvent, event);
    objc_storeStrong(&v10->_endingEvent, endingEvent);
    type = [eventCopy type];
    if (type <= 9)
    {
      v10->_type = qword_22DCE99B8[type];
    }
  }

  return v10;
}

- (NTKSiderealSector)initWithCoder:(id)coder
{
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = NTKSiderealSector;
  v5 = [(NTKSiderealSector *)&v24 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v5->_type = [v6 unsignedIntegerValue];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startingEvent"];
    startingEvent = v5->_startingEvent;
    v5->_startingEvent = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endingEvent"];
    endingEvent = v5->_endingEvent;
    v5->_endingEvent = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"gradientStartPoint.x"];
    [v11 floatValue];
    v23 = v12;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"gradientStartPoint.y"];
    [v13 floatValue];
    v22 = v14;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"gradientEndPoint.x"];
    [v15 floatValue];
    v21 = v16;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"gradientEndPoint.y"];
    [v17 floatValue];
    v20 = v18;

    *v5->_gradientStartPoint = __PAIR64__(v22, v23);
    *v5->_gradientEndPoint = __PAIR64__(v20, v21);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  type = self->_type;
  coderCopy = coder;
  v7 = [v4 numberWithUnsignedInteger:type];
  [coderCopy encodeObject:v7 forKey:@"type"];

  [coderCopy encodeObject:self->_startingEvent forKey:@"startingEvent"];
  [coderCopy encodeObject:self->_endingEvent forKey:@"endingEvent"];
  v8 = [MEMORY[0x277CCABB0] numberWithFloat:*self->_gradientStartPoint];
  [coderCopy encodeObject:v8 forKey:@"gradientStartPoint.x"];

  LODWORD(v9) = *&self->_gradientStartPoint[4];
  v10 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
  [coderCopy encodeObject:v10 forKey:@"gradientStartPoint.y"];

  v11 = [MEMORY[0x277CCABB0] numberWithFloat:*self->_gradientEndPoint];
  [coderCopy encodeObject:v11 forKey:@"gradientEndPoint.x"];

  LODWORD(v12) = *&self->_gradientEndPoint[4];
  v13 = [MEMORY[0x277CCABB0] numberWithFloat:v12];
  [coderCopy encodeObject:v13 forKey:@"gradientEndPoint.y"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  localizedName = [(NTKSiderealSector *)self localizedName];
  [(NTKSiderealSolarEvent *)self->_startingEvent angle];
  v6 = v5;
  [(NTKSiderealSolarEvent *)self->_endingEvent angle];
  v8 = [v3 stringWithFormat:@"SiderealSector: %@ %f %f", localizedName, v6, v7];

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