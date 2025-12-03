@interface BMHomeKitClientBase
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMHomeKitClientBase)initWithDateInterval:(id)interval homeUniqueIdentifier:(id)identifier homeOccupancy:(int)occupancy source:(id)source clientName:(id)name eventCorrelationIdentifier:(id)correlationIdentifier;
- (BMHomeKitClientBase)initWithProto:(id)proto;
- (BMHomeKitClientBase)initWithProtoData:(id)data;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)encodeAsProto;
- (id)proto;
@end

@implementation BMHomeKitClientBase

- (BMHomeKitClientBase)initWithDateInterval:(id)interval homeUniqueIdentifier:(id)identifier homeOccupancy:(int)occupancy source:(id)source clientName:(id)name eventCorrelationIdentifier:(id)correlationIdentifier
{
  intervalCopy = interval;
  identifierCopy = identifier;
  sourceCopy = source;
  nameCopy = name;
  correlationIdentifierCopy = correlationIdentifier;
  v25.receiver = self;
  v25.super_class = BMHomeKitClientBase;
  v18 = [(BMHomeKitClientBase *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_dateInterval, interval);
    startDate = [intervalCopy startDate];
    v19->_absoluteTimestamp = MEMORY[0x1865F69C0]();

    [intervalCopy duration];
    v19->_duration = v21;
    objc_storeStrong(&v19->_homeUniqueIdentifier, identifier);
    v19->_homeOccupancy = occupancy;
    objc_storeStrong(&v19->_source, source);
    objc_storeStrong(&v19->_clientName, name);
    objc_storeStrong(&v19->_eventCorrelationIdentifier, correlationIdentifier);
  }

  return v19;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  homeUniqueIdentifier = self->_homeUniqueIdentifier;
  v5 = [MEMORY[0x1E696AD98] numberWithInt:self->_homeOccupancy];
  v6 = [v3 stringWithFormat:@"BMHomeKitClientBase homeUUID:%@, homeOccupancy:%@, source:%@, clientName:%@", homeUniqueIdentifier, v5, self->_source, self->_clientName];

  return v6;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  if (version)
  {
    v7 = __biome_log_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [BMHomeKitClientBase eventWithData:v7 dataVersion:?];
    }

    v8 = 0;
  }

  else
  {
    v8 = [[self alloc] initWithProtoData:dataCopy];
  }

  return v8;
}

- (id)encodeAsProto
{
  proto = [(BMHomeKitClientBase *)self proto];
  data = [proto data];

  return data;
}

- (BMHomeKitClientBase)initWithProto:(id)proto
{
  protoCopy = proto;
  if (!protoCopy)
  {
LABEL_7:
    selfCopy = 0;
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = __biome_log_for_category();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      [(BMHomeKitClientBase *)self initWithProto:v17];
    }

    goto LABEL_7;
  }

  v5 = MEMORY[0x1E696AB80];
  v6 = protoCopy;
  v7 = [v5 alloc];
  v8 = MEMORY[0x1E695DF00];
  [v6 absoluteTimestamp];
  v9 = [v8 dateWithTimeIntervalSinceReferenceDate:?];
  [v6 duration];
  v10 = [v7 initWithStartDate:v9 duration:?];

  homeUniqueIdentifier = [v6 homeUniqueIdentifier];
  homeOccupancy = [v6 homeOccupancy];
  source = [v6 source];
  clientName = [v6 clientName];
  eventCorrelationIdentifier = [v6 eventCorrelationIdentifier];

  self = [(BMHomeKitClientBase *)self initWithDateInterval:v10 homeUniqueIdentifier:homeUniqueIdentifier homeOccupancy:homeOccupancy source:source clientName:clientName eventCorrelationIdentifier:eventCorrelationIdentifier];
  selfCopy = self;
LABEL_8:

  return selfCopy;
}

- (BMHomeKitClientBase)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBHomeKitClientBase alloc] initWithData:dataCopy];

    self = [(BMHomeKitClientBase *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)proto
{
  v3 = objc_opt_new();
  [v3 setAbsoluteTimestamp:self->_absoluteTimestamp];
  [v3 setDuration:self->_duration];
  [v3 setHomeUniqueIdentifier:self->_homeUniqueIdentifier];
  [v3 setHomeOccupancy:self->_homeOccupancy];
  [v3 setSource:self->_source];
  [v3 setClientName:self->_clientName];
  [v3 setEventCorrelationIdentifier:self->_eventCorrelationIdentifier];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = 0;
    goto LABEL_36;
  }

  v9 = equalCopy;
  dateInterval = [(BMHomeKitClientBase *)self dateInterval];
  if (!dateInterval)
  {
    dateInterval2 = [v9 dateInterval];
    if (!dateInterval2)
    {
      v30 = 1;
LABEL_8:

      goto LABEL_9;
    }
  }

  dateInterval3 = [(BMHomeKitClientBase *)self dateInterval];
  dateInterval4 = [v9 dateInterval];
  v30 = [dateInterval3 isEqual:dateInterval4];

  if (!dateInterval)
  {
    goto LABEL_8;
  }

LABEL_9:

  homeUniqueIdentifier = [(BMHomeKitClientBase *)self homeUniqueIdentifier];
  if (!homeUniqueIdentifier)
  {
    dateInterval4 = [v9 homeUniqueIdentifier];
    if (!dateInterval4)
    {
      v29 = 1;
LABEL_14:

      goto LABEL_15;
    }
  }

  dateInterval3 = [(BMHomeKitClientBase *)self homeUniqueIdentifier];
  homeUniqueIdentifier2 = [v9 homeUniqueIdentifier];
  v29 = [dateInterval3 isEqual:homeUniqueIdentifier2];

  if (!homeUniqueIdentifier)
  {
    goto LABEL_14;
  }

LABEL_15:

  homeOccupancy = [(BMHomeKitClientBase *)self homeOccupancy];
  homeOccupancy2 = [v9 homeOccupancy];
  source = [(BMHomeKitClientBase *)self source];
  if (!source)
  {
    source2 = [v9 source];
    if (!source2)
    {
      v17 = 1;
LABEL_20:

      goto LABEL_21;
    }
  }

  dateInterval3 = [(BMHomeKitClientBase *)self source];
  source3 = [v9 source];
  v17 = [dateInterval3 isEqual:source3];

  if (!source)
  {
    goto LABEL_20;
  }

LABEL_21:

  clientName = [(BMHomeKitClientBase *)self clientName];
  if (!clientName)
  {
    dateInterval3 = [v9 clientName];
    if (!dateInterval3)
    {
      v21 = 1;
LABEL_26:

      goto LABEL_27;
    }
  }

  clientName2 = [(BMHomeKitClientBase *)self clientName];
  clientName3 = [v9 clientName];
  v21 = [clientName2 isEqual:clientName3];

  if (!clientName)
  {
    goto LABEL_26;
  }

LABEL_27:

  eventCorrelationIdentifier = [(BMHomeKitClientBase *)self eventCorrelationIdentifier];
  if (!eventCorrelationIdentifier)
  {
    dateInterval3 = [v9 eventCorrelationIdentifier];
    if (!dateInterval3)
    {
      v25 = 1;
LABEL_32:

      goto LABEL_33;
    }
  }

  eventCorrelationIdentifier2 = [(BMHomeKitClientBase *)self eventCorrelationIdentifier];
  eventCorrelationIdentifier3 = [v9 eventCorrelationIdentifier];
  v25 = [eventCorrelationIdentifier2 isEqual:eventCorrelationIdentifier3];

  if (!eventCorrelationIdentifier)
  {
    goto LABEL_32;
  }

LABEL_33:

  v26 = v30 & v29;
  if (homeOccupancy != homeOccupancy2)
  {
    v26 = 0;
  }

  v11 = v26 & v17 & v21 & v25;

LABEL_36:
  return v11;
}

@end