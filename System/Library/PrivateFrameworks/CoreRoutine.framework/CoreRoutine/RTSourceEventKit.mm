@interface RTSourceEventKit
+ (id)sharingStatusToString:(unint64_t)string;
- (BOOL)isEqual:(id)equal;
- (RTSourceEventKit)initWithCoder:(id)coder;
- (RTSourceEventKit)initWithEventIdentifier:(id)identifier startDate:(id)date endDate:(id)endDate title:(id)title location:(id)location allDay:(BOOL)day sharingStatus:(unint64_t)status tentative:(BOOL)self0 participationOptional:(BOOL)self1 suggestionInfo_opaqueKey:(id)self2 suggestionsSchemaOrg:(id)self3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTSourceEventKit

+ (id)sharingStatusToString:(unint64_t)string
{
  v3 = @"Not Shared";
  if (string == 1)
  {
    v3 = @"Shared From Me";
  }

  if (string == 2)
  {
    return @"Shared To Me";
  }

  else
  {
    return v3;
  }
}

- (RTSourceEventKit)initWithEventIdentifier:(id)identifier startDate:(id)date endDate:(id)endDate title:(id)title location:(id)location allDay:(BOOL)day sharingStatus:(unint64_t)status tentative:(BOOL)self0 participationOptional:(BOOL)self1 suggestionInfo_opaqueKey:(id)self2 suggestionsSchemaOrg:(id)self3
{
  identifierCopy = identifier;
  dateCopy = date;
  endDateCopy = endDate;
  titleCopy = title;
  locationCopy = location;
  keyCopy = key;
  orgCopy = org;
  v42.receiver = self;
  v42.super_class = RTSourceEventKit;
  v25 = [(RTSourceEventKit *)&v42 init];
  if (v25)
  {
    v26 = [identifierCopy copy];
    eventIdentifier = v25->_eventIdentifier;
    v25->_eventIdentifier = v26;

    v28 = [dateCopy copy];
    startDate = v25->_startDate;
    v25->_startDate = v28;

    v30 = [endDateCopy copy];
    endDate = v25->_endDate;
    v25->_endDate = v30;

    v32 = [titleCopy copy];
    title = v25->_title;
    v25->_title = v32;

    v34 = [locationCopy copy];
    location = v25->_location;
    v25->_location = v34;

    v25->_allDay = day;
    v25->_sharingStatus = status;
    v25->_tentative = tentative;
    v25->_participationOptional = optional;
    v36 = [keyCopy copy];
    suggestionInfo_opaqueKey = v25->_suggestionInfo_opaqueKey;
    v25->_suggestionInfo_opaqueKey = v36;

    v38 = [orgCopy copy];
    suggestionsSchemaOrg = v25->_suggestionsSchemaOrg;
    v25->_suggestionsSchemaOrg = v38;
  }

  return v25;
}

- (RTSourceEventKit)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"eventIdentifier"];
  v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"location"];
  v18 = [coderCopy decodeBoolForKey:@"allDay"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sharingStatus"];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  v8 = [coderCopy decodeBoolForKey:@"tentative"];
  LOBYTE(v6) = [coderCopy decodeBoolForKey:@"participationOptional"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"suggestionInfo_opaqueKey"];
  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v10 setWithObjects:{v11, v12, objc_opt_class(), 0}];
  v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"suggestionsSchemaOrg"];

  BYTE1(v17) = v6;
  LOBYTE(v17) = v8;
  v15 = [(RTSourceEventKit *)self initWithEventIdentifier:v21 startDate:v20 endDate:v19 title:v4 location:v5 allDay:v18 sharingStatus:unsignedIntegerValue tentative:v17 participationOptional:v9 suggestionInfo_opaqueKey:v14 suggestionsSchemaOrg:?];

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = RTSourceEventKit;
  coderCopy = coder;
  [(RTSource *)&v6 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_eventIdentifier forKey:{@"eventIdentifier", v6.receiver, v6.super_class}];
  [coderCopy encodeObject:self->_startDate forKey:@"startDate"];
  [coderCopy encodeObject:self->_endDate forKey:@"endDate"];
  [coderCopy encodeObject:self->_title forKey:@"title"];
  [coderCopy encodeObject:self->_location forKey:@"location"];
  [coderCopy encodeBool:self->_allDay forKey:@"allDay"];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_sharingStatus];
  [coderCopy encodeObject:v5 forKey:@"sharingStatus"];

  [coderCopy encodeBool:self->_tentative forKey:@"tentative"];
  [coderCopy encodeBool:self->_participationOptional forKey:@"participationOptional"];
  [coderCopy encodeObject:self->_suggestionInfo_opaqueKey forKey:@"suggestionInfo_opaqueKey"];
  [coderCopy encodeObject:self->_suggestionsSchemaOrg forKey:@"suggestionsSchemaOrg"];
}

- (id)description
{
  v17 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v16 = NSStringFromClass(v3);
  eventIdentifier = [(RTSourceEventKit *)self eventIdentifier];
  startDate = [(RTSourceEventKit *)self startDate];
  endDate = [(RTSourceEventKit *)self endDate];
  title = [(RTSourceEventKit *)self title];
  location = [(RTSourceEventKit *)self location];
  v7 = [objc_opt_class() sharingStatusToString:{-[RTSourceEventKit sharingStatus](self, "sharingStatus")}];
  suggestionsSchemaOrg = [(RTSourceEventKit *)self suggestionsSchemaOrg];
  if (suggestionsSchemaOrg)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  if ([(RTSourceEventKit *)self tentative])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  if ([(RTSourceEventKit *)self participationOptional])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  v12 = [v17 stringWithFormat:@"%@, eventIdentifier, %@, startDate, %@, endDate, %@, title, %@, location %@, sharingStatus, %@, suggestionsSchemaOrg, %@, participationTentative, %@, participationOptional, %@", v16, eventIdentifier, startDate, endDate, title, location, v7, v9, v10, v11];

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v12.receiver = self;
  v12.super_class = RTSourceEventKit;
  if ([(RTSource *)&v12 isEqual:equalCopy])
  {
    v6 = equalCopy;
    eventIdentifier = [(RTSourceEventKit *)self eventIdentifier];
    if (eventIdentifier || ([v6 eventIdentifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      eventIdentifier2 = [(RTSourceEventKit *)self eventIdentifier];
      eventIdentifier3 = [v6 eventIdentifier];
      v10 = [eventIdentifier2 isEqualToString:eventIdentifier3];

      if (eventIdentifier)
      {
LABEL_9:

        goto LABEL_10;
      }
    }

    else
    {
      v10 = 1;
    }

    goto LABEL_9;
  }

  v10 = 0;
LABEL_10:

  return v10;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = RTSourceEventKit;
  v3 = [(RTSource *)&v7 hash];
  eventIdentifier = [(RTSourceEventKit *)self eventIdentifier];
  v5 = [eventIdentifier hash];

  return v5 ^ v3;
}

@end