@interface MTTimeInBedSession
+ (id)timeInBedSessionWithStartDate:(id)date endDate:(id)endDate intervals:(id)intervals endReason:(unint64_t)reason metadata:(id)metadata;
- (MTTimeInBedSession)initWithCoder:(id)coder;
- (MTTimeInBedSession)initWithStartDate:(id)date endDate:(id)endDate intervals:(id)intervals endReason:(unint64_t)reason metadata:(id)metadata;
- (NSString)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MTTimeInBedSession

+ (id)timeInBedSessionWithStartDate:(id)date endDate:(id)endDate intervals:(id)intervals endReason:(unint64_t)reason metadata:(id)metadata
{
  metadataCopy = metadata;
  intervalsCopy = intervals;
  endDateCopy = endDate;
  dateCopy = date;
  v16 = [[self alloc] initWithStartDate:dateCopy endDate:endDateCopy intervals:intervalsCopy endReason:reason metadata:metadataCopy];

  return v16;
}

- (MTTimeInBedSession)initWithStartDate:(id)date endDate:(id)endDate intervals:(id)intervals endReason:(unint64_t)reason metadata:(id)metadata
{
  dateCopy = date;
  endDateCopy = endDate;
  intervalsCopy = intervals;
  metadataCopy = metadata;
  v20.receiver = self;
  v20.super_class = MTTimeInBedSession;
  v17 = [(MTTimeInBedSession *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_startDate, date);
    objc_storeStrong(&v18->_endDate, endDate);
    objc_storeStrong(&v18->_intervals, intervals);
    v18->_endReason = reason;
    objc_storeStrong(&v18->_metadata, metadata);
  }

  return v18;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  startDate = [(MTTimeInBedSession *)self startDate];
  [coderCopy encodeObject:startDate forKey:@"StartDate"];

  endDate = [(MTTimeInBedSession *)self endDate];
  [coderCopy encodeObject:endDate forKey:@"EndDate"];

  intervals = [(MTTimeInBedSession *)self intervals];
  [coderCopy encodeObject:intervals forKey:@"Intervals"];

  [coderCopy encodeInteger:-[MTTimeInBedSession endReason](self forKey:{"endReason"), @"EndReason"}];
  metadata = [(MTTimeInBedSession *)self metadata];
  [coderCopy encodeObject:metadata forKey:@"MetaData"];

  [coderCopy encodeBool:-[MTTimeInBedSession needsAdditionalProcessing](self forKey:{"needsAdditionalProcessing"), @"NeedsAdditionalProcessing"}];
}

- (MTTimeInBedSession)initWithCoder:(id)coder
{
  v24[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = MTTimeInBedSession;
  v5 = [(MTTimeInBedSession *)&v22 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"StartDate"];
    startDate = v5->_startDate;
    v5->_startDate = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EndDate"];
    endDate = v5->_endDate;
    v5->_endDate = v8;

    v10 = MEMORY[0x1E695DFD8];
    v24[0] = objc_opt_class();
    v24[1] = objc_opt_class();
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
    v12 = [v10 setWithArray:v11];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"Intervals"];
    intervals = v5->_intervals;
    v5->_intervals = v13;

    v5->_endReason = [coderCopy decodeIntegerForKey:@"EndReason"];
    v15 = MEMORY[0x1E695DFD8];
    v23[0] = objc_opt_class();
    v23[1] = objc_opt_class();
    v23[2] = objc_opt_class();
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:3];
    v17 = [v15 setWithArray:v16];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"MetaData"];
    metadata = v5->_metadata;
    v5->_metadata = v18;

    v5->_needsAdditionalProcessing = [coderCopy decodeBoolForKey:@"NeedsAdditionalProcessing"];
  }

  v20 = *MEMORY[0x1E69E9840];
  return v5;
}

- (NSString)description
{
  if (self->_needsAdditionalProcessing)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"needsAdditionalProcessing: %d", 1];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"intervals: %lu", -[NSArray count](self->_intervals, "count")];
  }
  v3 = ;
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  startDate = self->_startDate;
  endDate = self->_endDate;
  v8 = MTSleepSessionEndReasonDescription(self->_endReason);
  v9 = [v4 stringWithFormat:@"<%@ %p start: %@ end: %@ %@ reason: %@ metadata: %@>", v5, self, startDate, endDate, v3, v8, self->_metadata];

  return v9;
}

@end