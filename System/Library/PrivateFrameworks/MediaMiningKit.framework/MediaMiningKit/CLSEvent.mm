@interface CLSEvent
- (CLSEvent)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLSEvent

- (CLSEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = CLSEvent;
  v5 = [(CLSEvent *)&v27 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"location"];
    location = v5->_location;
    v5->_location = v8;

    v10 = MEMORY[0x277CBEB98];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v10 setWithObjects:{v11, v12, v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"attendees"];
    attendees = v5->_attendees;
    v5->_attendees = v15;

    v17 = MEMORY[0x277CBEB98];
    v18 = objc_opt_class();
    v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"performers"];
    performers = v5->_performers;
    v5->_performers = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
    endDate = v5->_endDate;
    v5->_endDate = v24;

    v5->_meetingRoom = [v4 decodeBoolForKey:@"meetingRoom"];
    v5->_organizedByMe = [v4 decodeBoolForKey:@"organizedByMe"];
    v5->_accepted = [v4 decodeBoolForKey:@"accepted"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  title = self->_title;
  v5 = a3;
  [v5 encodeObject:title forKey:@"title"];
  [v5 encodeObject:self->_location forKey:@"location"];
  [v5 encodeObject:self->_attendees forKey:@"attendees"];
  [v5 encodeObject:self->_performers forKey:@"performers"];
  [v5 encodeObject:self->_startDate forKey:@"startDate"];
  [v5 encodeObject:self->_endDate forKey:@"endDate"];
  [v5 encodeBool:self->_meetingRoom forKey:@"meetingRoom"];
  [v5 encodeBool:self->_organizedByMe forKey:@"organizedByMe"];
  [v5 encodeBool:self->_accepted forKey:@"accepted"];
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] string];
  [v3 appendString:@"<CLSEvent>"];
  if (self->_title)
  {
    [v3 appendFormat:@" title:[%@]", self->_title];
  }

  if (self->_startDate)
  {
    [v3 appendFormat:@" dates:[%@", self->_startDate];
  }

  if (self->_endDate)
  {
    [v3 appendFormat:@"- %@]", self->_endDate];
  }

  if ([(NSArray *)self->_attendees count])
  {
    v4 = [(NSArray *)self->_attendees valueForKeyPath:@"name"];
    v5 = [v4 componentsJoinedByString:{@", "}];
    [v3 appendFormat:@"\n\t\tpeople:[%@]", v5];
  }

  if ([(NSArray *)self->_performers count])
  {
    v6 = [(NSArray *)self->_performers componentsJoinedByString:@", "];
    [v3 appendFormat:@"\n\t\tpeople:[%@]", v6];
  }

  if (self->_location)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(CLLocation *)self->_location name];
      [v3 appendFormat:@"\n\t\tlocation:[%@]", v7];
    }

    else
    {
      [v3 appendFormat:@"\n\t\tlocation:[%@]", self->_location];
    }
  }

  return v3;
}

@end