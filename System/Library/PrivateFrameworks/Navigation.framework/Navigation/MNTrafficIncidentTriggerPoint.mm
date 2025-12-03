@interface MNTrafficIncidentTriggerPoint
- (BOOL)shouldActivateForLocation:(id)location;
- (MNTrafficIncidentTriggerPoint)initWithCoder:(id)coder;
- (MNTrafficIncidentTriggerPoint)initWithReferenceCoordinate:(id)coordinate allowsShifting:(BOOL)shifting;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)setReferenceCoordinate:(id)coordinate;
@end

@implementation MNTrafficIncidentTriggerPoint

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBytes:&self->_referenceCoordinate length:8 forKey:@"_referenceCoordinate"];
  [coderCopy encodeBool:self->_allowsShifting forKey:@"_allowsShifting"];
}

- (MNTrafficIncidentTriggerPoint)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = MNTrafficIncidentTriggerPoint;
  v5 = [(MNTrafficIncidentTriggerPoint *)&v11 init];
  if (v5)
  {
    v10 = 0;
    v6 = [coderCopy decodeBytesForKey:@"_referenceCoordinate" returnedLength:&v10];
    if (v10 && v6)
    {
      if (v10 >= 8)
      {
        v7 = 8;
      }

      else
      {
        v7 = v10;
      }

      memcpy(&v5->_referenceCoordinate, v6, v7);
    }

    v5->_allowsShifting = [coderCopy decodeBoolForKey:@"_allowsShifting"];
    v8 = v5;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  referenceCoordinate = self->_referenceCoordinate;
  v5 = GEOPolylineCoordinateAsShortString();
  v6 = v5;
  if (self->_allowsShifting)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = [v3 stringWithFormat:@"coordinate: [%@] | allowsShifting: %@", v5, v7];

  return v8;
}

- (BOOL)shouldActivateForLocation:(id)location
{
  routeMatch = [location routeMatch];
  [routeMatch routeCoordinate];

  [(MNTrafficIncidentTriggerPoint *)self referenceCoordinate];

  return GEOPolylineCoordinateIsABeforeOrEqualToB();
}

- (void)setReferenceCoordinate:(id)coordinate
{
  v18 = *MEMORY[0x1E69E9840];
  if (self->_allowsShifting)
  {
    goto LABEL_2;
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Attemped to change referenceCoordinate of MNTrafficIncidentTriggerPoint when shifting is now allowed. Ignoring change."];
  v7 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = 136316162;
    v9 = "[MNTrafficIncidentTriggerPoint setReferenceCoordinate:]";
    v10 = 2080;
    v11 = "/Library/Caches/com.apple.xbs/Sources/Navigation/TrafficETA/MNTrafficIncidentTriggerPoint.m";
    v12 = 1024;
    v13 = 34;
    v14 = 2080;
    v15 = "_allowsShifting";
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", &v8, 0x30u);
  }

  if (self->_allowsShifting)
  {
LABEL_2:
    self->_referenceCoordinate = coordinate;
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (MNTrafficIncidentTriggerPoint)initWithReferenceCoordinate:(id)coordinate allowsShifting:(BOOL)shifting
{
  v10.receiver = self;
  v10.super_class = MNTrafficIncidentTriggerPoint;
  v6 = [(MNTrafficIncidentTriggerPoint *)&v10 init];
  v7 = v6;
  if (v6)
  {
    *(v6 + 12) = coordinate;
    v6[8] = shifting;
    v8 = v6;
  }

  return v7;
}

@end