@interface CARConnectionSession
- (CARConnectionSession)initWithCoder:(id)coder;
- (CARConnectionSession)initWithEvents:(id)events sessionIdentifier:(id)identifier vehicleInformation:(id)information maskedEvents:(unint64_t)maskedEvents;
- (id)allEventsOfTypes:(id)types;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CARConnectionSession

- (CARConnectionSession)initWithEvents:(id)events sessionIdentifier:(id)identifier vehicleInformation:(id)information maskedEvents:(unint64_t)maskedEvents
{
  eventsCopy = events;
  identifierCopy = identifier;
  informationCopy = information;
  v19.receiver = self;
  v19.super_class = CARConnectionSession;
  v14 = [(CARConnectionSession *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_events, events);
    objc_storeStrong(&v15->_sessionIdentifier, identifier);
    objc_storeStrong(&v15->_vehicleInformation, information);
    v16 = [informationCopy objectForKeyedSubscript:@"transportType"];
    transportType = v15->_transportType;
    v15->_transportType = v16;

    v15->_maskedEvents = maskedEvents;
  }

  return v15;
}

- (CARConnectionSession)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = CARConnectionSession;
  v5 = [(CARConnectionSession *)&v23 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"kCPSessionEventsKey"];
    events = v5->_events;
    v5->_events = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPSessionIdentifierKey"];
    sessionIdentifier = v5->_sessionIdentifier;
    v5->_sessionIdentifier = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPSessionTransportTypeKey"];
    transportType = v5->_transportType;
    v5->_transportType = v13;

    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = [v15 setWithObjects:{v16, v17, v18, objc_opt_class(), 0}];
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"kCPSessionVehicleInformationKey"];
    vehicleInformation = v5->_vehicleInformation;
    v5->_vehicleInformation = v20;

    v5->_maskedEvents = [coderCopy decodeIntegerForKey:@"kCPMaskedEventsKey"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  events = [(CARConnectionSession *)self events];
  [coderCopy encodeObject:events forKey:@"kCPSessionEventsKey"];

  sessionIdentifier = [(CARConnectionSession *)self sessionIdentifier];
  [coderCopy encodeObject:sessionIdentifier forKey:@"kCPSessionIdentifierKey"];

  transportType = [(CARConnectionSession *)self transportType];
  [coderCopy encodeObject:transportType forKey:@"kCPSessionTransportTypeKey"];

  vehicleInformation = [(CARConnectionSession *)self vehicleInformation];
  [coderCopy encodeObject:vehicleInformation forKey:@"kCPSessionVehicleInformationKey"];

  [coderCopy encodeInteger:-[CARConnectionSession maskedEvents](self forKey:{"maskedEvents"), @"kCPMaskedEventsKey"}];
}

- (id)allEventsOfTypes:(id)types
{
  v4 = MEMORY[0x1E695DFD8];
  typesCopy = types;
  events = [(CARConnectionSession *)self events];
  v7 = MEMORY[0x1E696AE18];

  typesCopy = [v7 predicateWithFormat:@"%@ CONTAINS eventType", typesCopy];
  v9 = [events filteredArrayUsingPredicate:typesCopy];
  v10 = [v4 setWithArray:v9];

  return v10;
}

@end