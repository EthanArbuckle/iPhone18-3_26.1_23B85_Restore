@interface MTTimeInBedSession
+ (id)timeInBedSessionWithStartDate:(id)a3 endDate:(id)a4 intervals:(id)a5 endReason:(unint64_t)a6 metadata:(id)a7;
- (MTTimeInBedSession)initWithCoder:(id)a3;
- (MTTimeInBedSession)initWithStartDate:(id)a3 endDate:(id)a4 intervals:(id)a5 endReason:(unint64_t)a6 metadata:(id)a7;
- (NSString)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MTTimeInBedSession

+ (id)timeInBedSessionWithStartDate:(id)a3 endDate:(id)a4 intervals:(id)a5 endReason:(unint64_t)a6 metadata:(id)a7
{
  v12 = a7;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [[a1 alloc] initWithStartDate:v15 endDate:v14 intervals:v13 endReason:a6 metadata:v12];

  return v16;
}

- (MTTimeInBedSession)initWithStartDate:(id)a3 endDate:(id)a4 intervals:(id)a5 endReason:(unint64_t)a6 metadata:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = MTTimeInBedSession;
  v17 = [(MTTimeInBedSession *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_startDate, a3);
    objc_storeStrong(&v18->_endDate, a4);
    objc_storeStrong(&v18->_intervals, a5);
    v18->_endReason = a6;
    objc_storeStrong(&v18->_metadata, a7);
  }

  return v18;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [(MTTimeInBedSession *)self startDate];
  [v8 encodeObject:v4 forKey:@"StartDate"];

  v5 = [(MTTimeInBedSession *)self endDate];
  [v8 encodeObject:v5 forKey:@"EndDate"];

  v6 = [(MTTimeInBedSession *)self intervals];
  [v8 encodeObject:v6 forKey:@"Intervals"];

  [v8 encodeInteger:-[MTTimeInBedSession endReason](self forKey:{"endReason"), @"EndReason"}];
  v7 = [(MTTimeInBedSession *)self metadata];
  [v8 encodeObject:v7 forKey:@"MetaData"];

  [v8 encodeBool:-[MTTimeInBedSession needsAdditionalProcessing](self forKey:{"needsAdditionalProcessing"), @"NeedsAdditionalProcessing"}];
}

- (MTTimeInBedSession)initWithCoder:(id)a3
{
  v24[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v22.receiver = self;
  v22.super_class = MTTimeInBedSession;
  v5 = [(MTTimeInBedSession *)&v22 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"StartDate"];
    startDate = v5->_startDate;
    v5->_startDate = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EndDate"];
    endDate = v5->_endDate;
    v5->_endDate = v8;

    v10 = MEMORY[0x1E695DFD8];
    v24[0] = objc_opt_class();
    v24[1] = objc_opt_class();
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
    v12 = [v10 setWithArray:v11];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"Intervals"];
    intervals = v5->_intervals;
    v5->_intervals = v13;

    v5->_endReason = [v4 decodeIntegerForKey:@"EndReason"];
    v15 = MEMORY[0x1E695DFD8];
    v23[0] = objc_opt_class();
    v23[1] = objc_opt_class();
    v23[2] = objc_opt_class();
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:3];
    v17 = [v15 setWithArray:v16];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"MetaData"];
    metadata = v5->_metadata;
    v5->_metadata = v18;

    v5->_needsAdditionalProcessing = [v4 decodeBoolForKey:@"NeedsAdditionalProcessing"];
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