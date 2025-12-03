@interface CLSEvent
- (CLSEvent)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLSEvent

- (CLSEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = CLSEvent;
  v5 = [(CLSEvent *)&v27 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"location"];
    location = v5->_location;
    v5->_location = v8;

    v10 = MEMORY[0x277CBEB98];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v10 setWithObjects:{v11, v12, v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"attendees"];
    attendees = v5->_attendees;
    v5->_attendees = v15;

    v17 = MEMORY[0x277CBEB98];
    v18 = objc_opt_class();
    v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"performers"];
    performers = v5->_performers;
    v5->_performers = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
    endDate = v5->_endDate;
    v5->_endDate = v24;

    v5->_meetingRoom = [coderCopy decodeBoolForKey:@"meetingRoom"];
    v5->_organizedByMe = [coderCopy decodeBoolForKey:@"organizedByMe"];
    v5->_accepted = [coderCopy decodeBoolForKey:@"accepted"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  title = self->_title;
  coderCopy = coder;
  [coderCopy encodeObject:title forKey:@"title"];
  [coderCopy encodeObject:self->_location forKey:@"location"];
  [coderCopy encodeObject:self->_attendees forKey:@"attendees"];
  [coderCopy encodeObject:self->_performers forKey:@"performers"];
  [coderCopy encodeObject:self->_startDate forKey:@"startDate"];
  [coderCopy encodeObject:self->_endDate forKey:@"endDate"];
  [coderCopy encodeBool:self->_meetingRoom forKey:@"meetingRoom"];
  [coderCopy encodeBool:self->_organizedByMe forKey:@"organizedByMe"];
  [coderCopy encodeBool:self->_accepted forKey:@"accepted"];
}

- (id)description
{
  string = [MEMORY[0x277CCAB68] string];
  [string appendString:@"<CLSEvent>"];
  if (self->_title)
  {
    [string appendFormat:@" title:[%@]", self->_title];
  }

  if (self->_startDate)
  {
    [string appendFormat:@" dates:[%@", self->_startDate];
  }

  if (self->_endDate)
  {
    [string appendFormat:@"- %@]", self->_endDate];
  }

  if ([(NSArray *)self->_attendees count])
  {
    v4 = [(NSArray *)self->_attendees valueForKeyPath:@"name"];
    v5 = [v4 componentsJoinedByString:{@", "}];
    [string appendFormat:@"\n\t\tpeople:[%@]", v5];
  }

  if ([(NSArray *)self->_performers count])
  {
    v6 = [(NSArray *)self->_performers componentsJoinedByString:@", "];
    [string appendFormat:@"\n\t\tpeople:[%@]", v6];
  }

  if (self->_location)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      name = [(CLLocation *)self->_location name];
      [string appendFormat:@"\n\t\tlocation:[%@]", name];
    }

    else
    {
      [string appendFormat:@"\n\t\tlocation:[%@]", self->_location];
    }
  }

  return string;
}

@end