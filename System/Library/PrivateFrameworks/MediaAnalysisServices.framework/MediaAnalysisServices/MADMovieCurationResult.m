@interface MADMovieCurationResult
+ (id)resultWithSummaryEntries:(id)a3 highlightEntries:(id)a4 curationScoreEntries:(id)a5;
- (MADMovieCurationResult)initWithCoder:(id)a3;
- (MADMovieCurationResult)initWithSummaryEntries:(id)a3 highlightEntries:(id)a4 curationScoreEntries:(id)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADMovieCurationResult

- (MADMovieCurationResult)initWithSummaryEntries:(id)a3 highlightEntries:(id)a4 curationScoreEntries:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = MADMovieCurationResult;
  v12 = [(MADResult *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_summaryEntries, a3);
    objc_storeStrong(&v13->_highlightEntries, a4);
    objc_storeStrong(&v13->_curationScoreEntries, a5);
  }

  return v13;
}

+ (id)resultWithSummaryEntries:(id)a3 highlightEntries:(id)a4 curationScoreEntries:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [[a1 alloc] initWithSummaryEntries:v8 highlightEntries:v9 curationScoreEntries:v10];

  return v11;
}

- (MADMovieCurationResult)initWithCoder:(id)a3
{
  v17[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v16.receiver = self;
  v16.super_class = MADMovieCurationResult;
  v5 = [(MADResult *)&v16 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v17[0] = objc_opt_class();
    v17[1] = objc_opt_class();
    v17[2] = objc_opt_class();
    v17[3] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:4];
    v8 = [v6 setWithArray:v7];

    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"CurationScoreEntries"];
    curationScoreEntries = v5->_curationScoreEntries;
    v5->_curationScoreEntries = v9;

    v11 = [v4 decodeObjectOfClasses:v8 forKey:@"HighlightEntries"];
    highlightEntries = v5->_highlightEntries;
    v5->_highlightEntries = v11;

    v13 = [v4 decodeObjectOfClasses:v8 forKey:@"SummaryEntries"];
    summaryEntries = v5->_summaryEntries;
    v5->_summaryEntries = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = MADMovieCurationResult;
  [(MADResult *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_curationScoreEntries forKey:@"CurationScoreEntries"];
  [v4 encodeObject:self->_highlightEntries forKey:@"HighlightEntries"];
  [v4 encodeObject:self->_summaryEntries forKey:@"SummaryEntries"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  [v3 appendFormat:@"%@: %lu count, ", @"SummaryEntries", -[NSArray count](self->_summaryEntries, "count")];
  [v3 appendFormat:@"%@: %lu count, ", @"HighlightEntries", -[NSArray count](self->_highlightEntries, "count")];
  [v3 appendFormat:@"%@: %lu count>", @"CurationScoreEntries", -[NSArray count](self->_curationScoreEntries, "count")];

  return v3;
}

@end