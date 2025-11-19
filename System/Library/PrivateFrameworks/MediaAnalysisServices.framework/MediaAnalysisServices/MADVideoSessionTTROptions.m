@interface MADVideoSessionTTROptions
- (MADVideoSessionTTROptions)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADVideoSessionTTROptions

- (MADVideoSessionTTROptions)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MADVideoSessionTTROptions;
  v5 = [(MADVideoSessionTTROptions *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"StreamID"];
    streamID = v5->_streamID;
    v5->_streamID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"StartDate"];
    startDate = v5->_startDate;
    v5->_startDate = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EventDate"];
    eventDate = v5->_eventDate;
    v5->_eventDate = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_streamID forKey:@"StreamID"];
  [v4 encodeObject:self->_startDate forKey:@"StartDate"];
  [v4 encodeObject:self->_eventDate forKey:@"EventDate"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  [v3 appendFormat:@"streamID: %@", self->_streamID];
  v6 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v6 setDateFormat:@"yyyy-MM-dd_HH:mm:ss"];
  v7 = [v6 stringFromDate:self->_startDate];
  [v3 appendFormat:@"startDate: %@", v7];

  v8 = [v6 stringFromDate:self->_eventDate];
  [v3 appendFormat:@"eventDate: %@>", v8];

  return v3;
}

@end