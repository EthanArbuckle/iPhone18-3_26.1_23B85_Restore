@interface RTSourceEventKit
+ (id)sharingStatusToString:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (RTSourceEventKit)initWithCoder:(id)a3;
- (RTSourceEventKit)initWithEventIdentifier:(id)a3 startDate:(id)a4 endDate:(id)a5 title:(id)a6 location:(id)a7 allDay:(BOOL)a8 sharingStatus:(unint64_t)a9 tentative:(BOOL)a10 participationOptional:(BOOL)a11 suggestionInfo_opaqueKey:(id)a12 suggestionsSchemaOrg:(id)a13;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTSourceEventKit

+ (id)sharingStatusToString:(unint64_t)a3
{
  v3 = @"Not Shared";
  if (a3 == 1)
  {
    v3 = @"Shared From Me";
  }

  if (a3 == 2)
  {
    return @"Shared To Me";
  }

  else
  {
    return v3;
  }
}

- (RTSourceEventKit)initWithEventIdentifier:(id)a3 startDate:(id)a4 endDate:(id)a5 title:(id)a6 location:(id)a7 allDay:(BOOL)a8 sharingStatus:(unint64_t)a9 tentative:(BOOL)a10 participationOptional:(BOOL)a11 suggestionInfo_opaqueKey:(id)a12 suggestionsSchemaOrg:(id)a13
{
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v23 = a12;
  v24 = a13;
  v42.receiver = self;
  v42.super_class = RTSourceEventKit;
  v25 = [(RTSourceEventKit *)&v42 init];
  if (v25)
  {
    v26 = [v18 copy];
    eventIdentifier = v25->_eventIdentifier;
    v25->_eventIdentifier = v26;

    v28 = [v19 copy];
    startDate = v25->_startDate;
    v25->_startDate = v28;

    v30 = [v20 copy];
    endDate = v25->_endDate;
    v25->_endDate = v30;

    v32 = [v21 copy];
    title = v25->_title;
    v25->_title = v32;

    v34 = [v22 copy];
    location = v25->_location;
    v25->_location = v34;

    v25->_allDay = a8;
    v25->_sharingStatus = a9;
    v25->_tentative = a10;
    v25->_participationOptional = a11;
    v36 = [v23 copy];
    suggestionInfo_opaqueKey = v25->_suggestionInfo_opaqueKey;
    v25->_suggestionInfo_opaqueKey = v36;

    v38 = [v24 copy];
    suggestionsSchemaOrg = v25->_suggestionsSchemaOrg;
    v25->_suggestionsSchemaOrg = v38;
  }

  return v25;
}

- (RTSourceEventKit)initWithCoder:(id)a3
{
  v3 = a3;
  v21 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"eventIdentifier"];
  v20 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
  v19 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"location"];
  v18 = [v3 decodeBoolForKey:@"allDay"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"sharingStatus"];
  v7 = [v6 unsignedIntegerValue];

  v8 = [v3 decodeBoolForKey:@"tentative"];
  LOBYTE(v6) = [v3 decodeBoolForKey:@"participationOptional"];
  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"suggestionInfo_opaqueKey"];
  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v10 setWithObjects:{v11, v12, objc_opt_class(), 0}];
  v14 = [v3 decodeObjectOfClasses:v13 forKey:@"suggestionsSchemaOrg"];

  BYTE1(v17) = v6;
  LOBYTE(v17) = v8;
  v15 = [(RTSourceEventKit *)self initWithEventIdentifier:v21 startDate:v20 endDate:v19 title:v4 location:v5 allDay:v18 sharingStatus:v7 tentative:v17 participationOptional:v9 suggestionInfo_opaqueKey:v14 suggestionsSchemaOrg:?];

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = RTSourceEventKit;
  v4 = a3;
  [(RTSource *)&v6 encodeWithCoder:v4];
  [v4 encodeObject:self->_eventIdentifier forKey:{@"eventIdentifier", v6.receiver, v6.super_class}];
  [v4 encodeObject:self->_startDate forKey:@"startDate"];
  [v4 encodeObject:self->_endDate forKey:@"endDate"];
  [v4 encodeObject:self->_title forKey:@"title"];
  [v4 encodeObject:self->_location forKey:@"location"];
  [v4 encodeBool:self->_allDay forKey:@"allDay"];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_sharingStatus];
  [v4 encodeObject:v5 forKey:@"sharingStatus"];

  [v4 encodeBool:self->_tentative forKey:@"tentative"];
  [v4 encodeBool:self->_participationOptional forKey:@"participationOptional"];
  [v4 encodeObject:self->_suggestionInfo_opaqueKey forKey:@"suggestionInfo_opaqueKey"];
  [v4 encodeObject:self->_suggestionsSchemaOrg forKey:@"suggestionsSchemaOrg"];
}

- (id)description
{
  v17 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v16 = NSStringFromClass(v3);
  v15 = [(RTSourceEventKit *)self eventIdentifier];
  v14 = [(RTSourceEventKit *)self startDate];
  v4 = [(RTSourceEventKit *)self endDate];
  v5 = [(RTSourceEventKit *)self title];
  v6 = [(RTSourceEventKit *)self location];
  v7 = [objc_opt_class() sharingStatusToString:{-[RTSourceEventKit sharingStatus](self, "sharingStatus")}];
  v8 = [(RTSourceEventKit *)self suggestionsSchemaOrg];
  if (v8)
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

  v12 = [v17 stringWithFormat:@"%@, eventIdentifier, %@, startDate, %@, endDate, %@, title, %@, location %@, sharingStatus, %@, suggestionsSchemaOrg, %@, participationTentative, %@, participationOptional, %@", v16, v15, v14, v4, v5, v6, v7, v9, v10, v11];

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = RTSourceEventKit;
  if ([(RTSource *)&v12 isEqual:v5])
  {
    v6 = v5;
    v7 = [(RTSourceEventKit *)self eventIdentifier];
    if (v7 || ([v6 eventIdentifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = [(RTSourceEventKit *)self eventIdentifier];
      v9 = [v6 eventIdentifier];
      v10 = [v8 isEqualToString:v9];

      if (v7)
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
  v4 = [(RTSourceEventKit *)self eventIdentifier];
  v5 = [v4 hash];

  return v5 ^ v3;
}

@end