@interface MADVideoSessionTTROptions
- (MADVideoSessionTTROptions)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADVideoSessionTTROptions

- (MADVideoSessionTTROptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = MADVideoSessionTTROptions;
  v5 = [(MADVideoSessionTTROptions *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"StreamID"];
    streamID = v5->_streamID;
    v5->_streamID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"StartDate"];
    startDate = v5->_startDate;
    v5->_startDate = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EventDate"];
    eventDate = v5->_eventDate;
    v5->_eventDate = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_streamID forKey:@"StreamID"];
  [coderCopy encodeObject:self->_startDate forKey:@"StartDate"];
  [coderCopy encodeObject:self->_eventDate forKey:@"EventDate"];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  [string appendFormat:@"streamID: %@", self->_streamID];
  v6 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v6 setDateFormat:@"yyyy-MM-dd_HH:mm:ss"];
  v7 = [v6 stringFromDate:self->_startDate];
  [string appendFormat:@"startDate: %@", v7];

  v8 = [v6 stringFromDate:self->_eventDate];
  [string appendFormat:@"eventDate: %@>", v8];

  return string;
}

@end