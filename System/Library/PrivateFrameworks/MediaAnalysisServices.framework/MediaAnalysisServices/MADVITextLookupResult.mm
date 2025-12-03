@interface MADVITextLookupResult
- (MADVITextLookupResult)initWithCoder:(id)coder;
- (MADVITextLookupResult)initWithSearchSections:(id)sections;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADVITextLookupResult

- (MADVITextLookupResult)initWithSearchSections:(id)sections
{
  sectionsCopy = sections;
  v9.receiver = self;
  v9.super_class = MADVITextLookupResult;
  v6 = [(MADResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_searchSections, sections);
  }

  return v7;
}

- (MADVITextLookupResult)initWithCoder:(id)coder
{
  v20[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = MADVITextLookupResult;
  v5 = [(MADResult *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v20[0] = objc_opt_class();
    v16 = 0;
    v17 = &v16;
    v18 = 0x2050000000;
    v7 = getSFResultSectionClass_softClass;
    v19 = getSFResultSectionClass_softClass;
    if (!getSFResultSectionClass_softClass)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __getSFResultSectionClass_block_invoke;
      v15[3] = &unk_1E8342DE0;
      v15[4] = &v16;
      __getSFResultSectionClass_block_invoke(v15);
      v7 = v17[3];
    }

    v8 = v7;
    _Block_object_dispose(&v16, 8);
    v20[1] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
    v10 = [v6 setWithArray:v9];

    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"SearchSections"];
    searchSections = v5->_searchSections;
    v5->_searchSections = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MADVITextLookupResult;
  coderCopy = coder;
  [(MADResult *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_searchSections forKey:{@"SearchSections", v5.receiver, v5.super_class}];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  [string appendFormat:@"searchSections:\n"];
  if ([(NSArray *)self->_searchSections count])
  {
    v6 = 0;
    selfCopy = self;
    do
    {
      context = objc_autoreleasePoolPush();
      v35 = v6;
      v7 = [(NSArray *)self->_searchSections objectAtIndexedSubscript:v6];
      [string appendFormat:@"<results:["];
      results = [v7 results];
      v9 = [results count];

      if (v9)
      {
        v10 = 0;
        do
        {
          v11 = objc_autoreleasePoolPush();
          results2 = [v7 results];
          v13 = [results2 objectAtIndexedSubscript:v10];
          v14 = [v13 description];
          [string appendFormat:@"%@ ", v14];

          results3 = [v7 results];
          v16 = [results3 objectAtIndexedSubscript:v10];
          title = [v16 title];
          text = [title text];
          [string appendFormat:@"(title: %@)", text];

          results4 = [v7 results];
          v20 = [results4 count] - 1;

          if (v10 < v20)
          {
            [string appendFormat:@", "];
          }

          objc_autoreleasePoolPop(v11);
          ++v10;
          results5 = [v7 results];
          v22 = [results5 count];
        }

        while (v10 < v22);
      }

      [string appendFormat:@"] "];
      [string appendFormat:@"maxInitiallyVisibleResults:%lu ", objc_msgSend(v7, "maxInitiallyVisibleResults")];
      isInitiallyHidden = [v7 isInitiallyHidden];
      v24 = @"NO";
      if (isInitiallyHidden)
      {
        v24 = @"YES";
      }

      [string appendFormat:@"isInitiallyHidden:%@ ", v24];
      identifier = [v7 identifier];
      [string appendFormat:@"identifier:%@ ", identifier];

      bundleIdentifier = [v7 bundleIdentifier];
      [string appendFormat:@"bundleIdentifier:%@ ", bundleIdentifier];

      title2 = [v7 title];
      [string appendFormat:@"title:%@ ", title2];

      moreText = [v7 moreText];
      [string appendFormat:@"moreText:%@ ", moreText];

      button = [v7 button];
      v30 = [button description];
      [string appendFormat:@"button:%@ ", v30];

      [v7 rankingScore];
      [string appendFormat:@"rankingScore:%lf>", v31];
      self = selfCopy;
      if (v35 < [(NSArray *)selfCopy->_searchSections count]- 1)
      {
        [string appendFormat:@", \n"];
      }

      objc_autoreleasePoolPop(context);
      v6 = v35 + 1;
    }

    while (v35 + 1 < [(NSArray *)selfCopy->_searchSections count]);
  }

  [string appendFormat:@">"];

  return string;
}

@end