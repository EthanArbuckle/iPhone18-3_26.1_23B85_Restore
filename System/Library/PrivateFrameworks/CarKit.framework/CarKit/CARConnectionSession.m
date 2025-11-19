@interface CARConnectionSession
- (CARConnectionSession)initWithCoder:(id)a3;
- (CARConnectionSession)initWithEvents:(id)a3 sessionIdentifier:(id)a4 vehicleInformation:(id)a5 maskedEvents:(unint64_t)a6;
- (id)allEventsOfTypes:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CARConnectionSession

- (CARConnectionSession)initWithEvents:(id)a3 sessionIdentifier:(id)a4 vehicleInformation:(id)a5 maskedEvents:(unint64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v19.receiver = self;
  v19.super_class = CARConnectionSession;
  v14 = [(CARConnectionSession *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_events, a3);
    objc_storeStrong(&v15->_sessionIdentifier, a4);
    objc_storeStrong(&v15->_vehicleInformation, a5);
    v16 = [v13 objectForKeyedSubscript:@"transportType"];
    transportType = v15->_transportType;
    v15->_transportType = v16;

    v15->_maskedEvents = a6;
  }

  return v15;
}

- (CARConnectionSession)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = CARConnectionSession;
  v5 = [(CARConnectionSession *)&v23 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"kCPSessionEventsKey"];
    events = v5->_events;
    v5->_events = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPSessionIdentifierKey"];
    sessionIdentifier = v5->_sessionIdentifier;
    v5->_sessionIdentifier = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPSessionTransportTypeKey"];
    transportType = v5->_transportType;
    v5->_transportType = v13;

    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = [v15 setWithObjects:{v16, v17, v18, objc_opt_class(), 0}];
    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"kCPSessionVehicleInformationKey"];
    vehicleInformation = v5->_vehicleInformation;
    v5->_vehicleInformation = v20;

    v5->_maskedEvents = [v4 decodeIntegerForKey:@"kCPMaskedEventsKey"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [(CARConnectionSession *)self events];
  [v8 encodeObject:v4 forKey:@"kCPSessionEventsKey"];

  v5 = [(CARConnectionSession *)self sessionIdentifier];
  [v8 encodeObject:v5 forKey:@"kCPSessionIdentifierKey"];

  v6 = [(CARConnectionSession *)self transportType];
  [v8 encodeObject:v6 forKey:@"kCPSessionTransportTypeKey"];

  v7 = [(CARConnectionSession *)self vehicleInformation];
  [v8 encodeObject:v7 forKey:@"kCPSessionVehicleInformationKey"];

  [v8 encodeInteger:-[CARConnectionSession maskedEvents](self forKey:{"maskedEvents"), @"kCPMaskedEventsKey"}];
}

- (id)allEventsOfTypes:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = [(CARConnectionSession *)self events];
  v7 = MEMORY[0x1E696AE18];

  v8 = [v7 predicateWithFormat:@"%@ CONTAINS eventType", v5];
  v9 = [v6 filteredArrayUsingPredicate:v8];
  v10 = [v4 setWithArray:v9];

  return v10;
}

@end