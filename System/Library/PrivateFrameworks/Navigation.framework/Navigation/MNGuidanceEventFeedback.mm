@interface MNGuidanceEventFeedback
- (MNGuidanceEventFeedback)initWithCoder:(id)coder;
- (MNGuidanceEventFeedback)initWithEvent:(id)event;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MNGuidanceEventFeedback

- (void)encodeWithCoder:(id)coder
{
  uniqueID = self->_uniqueID;
  coderCopy = coder;
  [coderCopy encodeObject:uniqueID forKey:@"_uniqueID"];
  [coderCopy encodeObject:self->_routeID forKey:@"_routeID"];
  [coderCopy encodeInteger:self->_stepID forKey:@"_stepID"];
  [coderCopy encodeInteger:self->_enrouteNoticeIndex forKey:@"_enrouteNoticeIndex"];
  [coderCopy encodeInteger:self->_eventIndex forKey:@"_eventIndex"];
  [coderCopy encodeInteger:self->_type forKey:@"_type"];
  [coderCopy encodeDouble:@"_startTime" forKey:self->_startTime];
  [coderCopy encodeDouble:@"_endTime" forKey:self->_endTime];
  [coderCopy encodeDouble:@"_maneuverTime" forKey:self->_maneuverTime];
  [coderCopy encodeDouble:@"_startDistance" forKey:self->_startDistance];
  [coderCopy encodeDouble:@"_endDistance" forKey:self->_endDistance];
  [coderCopy encodeDouble:@"_vehicleSpeed" forKey:self->_vehicleSpeed];
  [coderCopy encodeInteger:self->_trafficColor forKey:@"_trafficColor"];
  [coderCopy encodeInteger:self->_selectedPrimaryStringIndex forKey:@"_selectedPrimaryStringIndex"];
  [coderCopy encodeInteger:self->_selectedSecondaryStringIndex forKey:@"_selectedSecondaryStringIndex"];
  [coderCopy encodeObject:self->_junctionViewImageIDs forKey:@"_junctionViewImageIDs"];
  [coderCopy encodeObject:self->_enrouteNoticeIdentifier forKey:@"_enrouteNoticeIdentifier"];
  [coderCopy encodeInteger:self->_trafficCameraType forKey:@"_trafficCameraType"];
  [coderCopy encodeObject:self->_eventDescription forKey:@"_eventDescription"];
}

- (MNGuidanceEventFeedback)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(MNGuidanceEventFeedback *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_uniqueID"];
    uniqueID = v5->_uniqueID;
    v5->_uniqueID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_routeID"];
    routeID = v5->_routeID;
    v5->_routeID = v8;

    v5->_stepID = [coderCopy decodeIntegerForKey:@"_stepID"];
    v5->_enrouteNoticeIndex = [coderCopy decodeIntegerForKey:@"_enrouteNoticeIndex"];
    v5->_eventIndex = [coderCopy decodeIntegerForKey:@"_eventIndex"];
    v5->_type = [coderCopy decodeIntegerForKey:@"_type"];
    [coderCopy decodeDoubleForKey:@"_startTime"];
    v5->_startTime = v10;
    [coderCopy decodeDoubleForKey:@"_endTime"];
    v5->_endTime = v11;
    [coderCopy decodeDoubleForKey:@"_maneuverTime"];
    v5->_maneuverTime = v12;
    [coderCopy decodeDoubleForKey:@"_startDistance"];
    v5->_startDistance = v13;
    [coderCopy decodeDoubleForKey:@"_endDistance"];
    v5->_endDistance = v14;
    [coderCopy decodeDoubleForKey:@"_vehicleSpeed"];
    v5->_vehicleSpeed = v15;
    v5->_trafficColor = [coderCopy decodeIntegerForKey:@"_trafficColor"];
    v5->_selectedPrimaryStringIndex = [coderCopy decodeIntegerForKey:@"_selectedPrimaryStringIndex"];
    v5->_selectedSecondaryStringIndex = [coderCopy decodeIntegerForKey:@"_selectedSecondaryStringIndex"];
    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"_junctionViewImageIDs"];
    junctionViewImageIDs = v5->_junctionViewImageIDs;
    v5->_junctionViewImageIDs = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_enrouteNoticeIdentifier"];
    enrouteNoticeIdentifier = v5->_enrouteNoticeIdentifier;
    v5->_enrouteNoticeIdentifier = v21;

    v5->_trafficCameraType = [coderCopy decodeIntegerForKey:@"_trafficCameraType"];
    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_eventDescription"];
    eventDescription = v5->_eventDescription;
    v5->_eventDescription = v23;

    v25 = v5;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[MNGuidanceEventFeedback allocWithZone:?]];
  v5 = [(NSUUID *)self->_uniqueID copy];
  uniqueID = v4->_uniqueID;
  v4->_uniqueID = v5;

  v7 = [(NSData *)self->_routeID copy];
  routeID = v4->_routeID;
  v4->_routeID = v7;

  v4->_stepID = self->_stepID;
  v4->_enrouteNoticeIndex = self->_enrouteNoticeIndex;
  v4->_eventIndex = self->_eventIndex;
  v4->_type = self->_type;
  v4->_startTime = self->_startTime;
  v4->_endTime = self->_endTime;
  v4->_maneuverTime = self->_maneuverTime;
  v4->_startDistance = self->_startDistance;
  v4->_endDistance = self->_endDistance;
  v4->_vehicleSpeed = self->_vehicleSpeed;
  v4->_trafficColor = self->_trafficColor;
  v4->_selectedPrimaryStringIndex = self->_selectedPrimaryStringIndex;
  v4->_selectedSecondaryStringIndex = self->_selectedSecondaryStringIndex;
  v9 = [(NSArray *)self->_junctionViewImageIDs copy];
  junctionViewImageIDs = v4->_junctionViewImageIDs;
  v4->_junctionViewImageIDs = v9;

  v11 = [(NSString *)self->_enrouteNoticeIdentifier copy];
  enrouteNoticeIdentifier = v4->_enrouteNoticeIdentifier;
  v4->_enrouteNoticeIdentifier = v11;

  v4->_trafficCameraType = self->_trafficCameraType;
  v13 = [(NSString *)self->_eventDescription copy];
  eventDescription = v4->_eventDescription;
  v4->_eventDescription = v13;

  return v4;
}

- (MNGuidanceEventFeedback)initWithEvent:(id)event
{
  eventCopy = event;
  v18.receiver = self;
  v18.super_class = MNGuidanceEventFeedback;
  v5 = [(MNGuidanceEventFeedback *)&v18 init];
  if (!v5)
  {
    goto LABEL_16;
  }

  uniqueID = [eventCopy uniqueID];
  v7 = *(v5 + 2);
  *(v5 + 2) = uniqueID;

  serverRouteID = [eventCopy serverRouteID];
  v9 = *(v5 + 3);
  *(v5 + 3) = serverRouteID;

  *(v5 + 6) = 0x7FFFFFFFFFFFFFFFLL;
  v10.f64[0] = NAN;
  v10.f64[1] = NAN;
  v11 = vnegq_f64(v10);
  *(v5 + 2) = v11;
  *(v5 + 120) = v11;
  source = [eventCopy source];
  switch(source)
  {
    case 3:
      *(v5 + 5) = [eventCopy enrouteNoticeIndex];
      goto LABEL_7;
    case 2:
LABEL_7:
      *(v5 + 6) = [eventCopy sourceIndex];
      break;
    case 1:
      *(v5 + 4) = [eventCopy stepID];
      goto LABEL_7;
  }

  if ([eventCopy hasSpokenGuidance])
  {
    v13 = 2;
  }

  else if ([eventCopy hasSignGuidance])
  {
    v13 = 1;
  }

  else if ([eventCopy hasJunctionView])
  {
    v13 = 4;
  }

  else
  {
    v13 = 3;
  }

  *(v5 + 7) = v13;
  v14 = [eventCopy description];
  v15 = *(v5 + 19);
  *(v5 + 19) = v14;

  v16 = v5;
LABEL_16:

  return v5;
}

@end