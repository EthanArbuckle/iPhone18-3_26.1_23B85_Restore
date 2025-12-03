@interface MADMovieCurationResult
+ (id)resultWithSummaryEntries:(id)entries highlightEntries:(id)highlightEntries curationScoreEntries:(id)scoreEntries;
- (MADMovieCurationResult)initWithCoder:(id)coder;
- (MADMovieCurationResult)initWithSummaryEntries:(id)entries highlightEntries:(id)highlightEntries curationScoreEntries:(id)scoreEntries;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADMovieCurationResult

- (MADMovieCurationResult)initWithSummaryEntries:(id)entries highlightEntries:(id)highlightEntries curationScoreEntries:(id)scoreEntries
{
  entriesCopy = entries;
  highlightEntriesCopy = highlightEntries;
  scoreEntriesCopy = scoreEntries;
  v15.receiver = self;
  v15.super_class = MADMovieCurationResult;
  v12 = [(MADResult *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_summaryEntries, entries);
    objc_storeStrong(&v13->_highlightEntries, highlightEntries);
    objc_storeStrong(&v13->_curationScoreEntries, scoreEntries);
  }

  return v13;
}

+ (id)resultWithSummaryEntries:(id)entries highlightEntries:(id)highlightEntries curationScoreEntries:(id)scoreEntries
{
  entriesCopy = entries;
  highlightEntriesCopy = highlightEntries;
  scoreEntriesCopy = scoreEntries;
  v11 = [[self alloc] initWithSummaryEntries:entriesCopy highlightEntries:highlightEntriesCopy curationScoreEntries:scoreEntriesCopy];

  return v11;
}

- (MADMovieCurationResult)initWithCoder:(id)coder
{
  v17[4] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = MADMovieCurationResult;
  v5 = [(MADResult *)&v16 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v17[0] = objc_opt_class();
    v17[1] = objc_opt_class();
    v17[2] = objc_opt_class();
    v17[3] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:4];
    v8 = [v6 setWithArray:v7];

    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"CurationScoreEntries"];
    curationScoreEntries = v5->_curationScoreEntries;
    v5->_curationScoreEntries = v9;

    v11 = [coderCopy decodeObjectOfClasses:v8 forKey:@"HighlightEntries"];
    highlightEntries = v5->_highlightEntries;
    v5->_highlightEntries = v11;

    v13 = [coderCopy decodeObjectOfClasses:v8 forKey:@"SummaryEntries"];
    summaryEntries = v5->_summaryEntries;
    v5->_summaryEntries = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = MADMovieCurationResult;
  [(MADResult *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_curationScoreEntries forKey:@"CurationScoreEntries"];
  [coderCopy encodeObject:self->_highlightEntries forKey:@"HighlightEntries"];
  [coderCopy encodeObject:self->_summaryEntries forKey:@"SummaryEntries"];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  [string appendFormat:@"%@: %lu count, ", @"SummaryEntries", -[NSArray count](self->_summaryEntries, "count")];
  [string appendFormat:@"%@: %lu count, ", @"HighlightEntries", -[NSArray count](self->_highlightEntries, "count")];
  [string appendFormat:@"%@: %lu count>", @"CurationScoreEntries", -[NSArray count](self->_curationScoreEntries, "count")];

  return string;
}

@end