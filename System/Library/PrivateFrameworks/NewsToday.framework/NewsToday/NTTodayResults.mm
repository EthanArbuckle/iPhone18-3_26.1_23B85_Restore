@interface NTTodayResults
- (BOOL)isEqual:(id)equal;
- (NTTodayResults)init;
- (NTTodayResults)initWithCoder:(id)coder;
- (NTTodayResults)initWithSourceIdentifier:(id)identifier sections:(id)sections promotionCriterion:(int)criterion expirationDate:(id)date headlineScale:(double)scale assetsHoldToken:(id)token recordsHoldToken:(id)holdToken banner:(id)self0 debugInspection:(id)self1;
- (id)description;
- (unint64_t)hash;
- (unint64_t)itemCount;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NTTodayResults

- (NTTodayResults)init
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[NTTodayResults init]";
    v10 = 2080;
    v11 = "NTTodayResults.m";
    v12 = 1024;
    v13 = 455;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[NTTodayResults init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (NTTodayResults)initWithSourceIdentifier:(id)identifier sections:(id)sections promotionCriterion:(int)criterion expirationDate:(id)date headlineScale:(double)scale assetsHoldToken:(id)token recordsHoldToken:(id)holdToken banner:(id)self0 debugInspection:(id)self1
{
  identifierCopy = identifier;
  sectionsCopy = sections;
  dateCopy = date;
  tokenCopy = token;
  holdTokenCopy = holdToken;
  bannerCopy = banner;
  inspectionCopy = inspection;
  if (!identifierCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTTodayResults initWithSourceIdentifier:sections:promotionCriterion:expirationDate:headlineScale:assetsHoldToken:recordsHoldToken:banner:debugInspection:];
    if (sectionsCopy)
    {
      goto LABEL_6;
    }
  }

  else if (sectionsCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTTodayResults initWithSourceIdentifier:sections:promotionCriterion:expirationDate:headlineScale:assetsHoldToken:recordsHoldToken:banner:debugInspection:];
  }

LABEL_6:
  if (!dateCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTTodayResults initWithSourceIdentifier:sections:promotionCriterion:expirationDate:headlineScale:assetsHoldToken:recordsHoldToken:banner:debugInspection:];
  }

  v37.receiver = self;
  v37.super_class = NTTodayResults;
  v22 = [(NTTodayResults *)&v37 init];
  if (v22)
  {
    v23 = [identifierCopy copy];
    holdTokenCopy2 = holdToken;
    v25 = holdTokenCopy;
    v26 = tokenCopy;
    v27 = v23;
    if (v23)
    {
      v28 = v23;
    }

    else
    {
      v28 = @"unknown";
    }

    objc_storeStrong(&v22->_sourceIdentifier, v28);

    tokenCopy = v26;
    holdTokenCopy = v25;
    v29 = [sectionsCopy copy];
    sections = v22->_sections;
    v22->_sections = v29;

    v22->_promotionCriterion = criterion;
    v31 = [dateCopy copy];
    expirationDate = v22->_expirationDate;
    v22->_expirationDate = v31;

    v22->_headlineScale = scale;
    objc_storeStrong(&v22->_assetsHoldToken, token);
    objc_storeStrong(&v22->_recordsHoldToken, holdTokenCopy2);
    objc_storeStrong(&v22->_banner, banner);
    objc_storeStrong(&v22->_debugInspection, inspection);
  }

  return v22;
}

- (unint64_t)itemCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  sections = [(NTTodayResults *)self sections];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __27__NTTodayResults_itemCount__block_invoke;
  v5[3] = &unk_279982CD8;
  v5[4] = &v6;
  [sections enumerateObjectsUsingBlock:v5];

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __27__NTTodayResults_itemCount__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 items];
  *(*(*(a1 + 32) + 8) + 24) += [v3 count];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = FCDynamicCast();

  if (v5)
  {
    sections = [(NTTodayResults *)self sections];
    sections2 = [v5 sections];
    if ([sections isEqual:sections2])
    {
      expirationDate = [(NTTodayResults *)self expirationDate];
      expirationDate2 = [v5 expirationDate];
      v10 = [expirationDate isEqual:expirationDate2];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  sections = [(NTTodayResults *)self sections];
  v4 = [sections hash];
  expirationDate = [(NTTodayResults *)self expirationDate];
  v6 = [expirationDate hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = [MEMORY[0x277D30F48] descriptionWithObject:self];
  sections = [(NTTodayResults *)self sections];
  [v3 addField:@"sections" object:sections];

  descriptionString = [v3 descriptionString];

  return descriptionString;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  sourceIdentifier = [(NTTodayResults *)self sourceIdentifier];
  [coderCopy encodeObject:sourceIdentifier forKey:@"si"];

  banner = [(NTTodayResults *)self banner];
  [coderCopy encodeObject:banner forKey:@"banner"];

  sections = [(NTTodayResults *)self sections];
  [coderCopy encodeObject:sections forKey:@"sections"];

  [coderCopy encodeInt32:-[NTTodayResults promotionCriterion](self forKey:{"promotionCriterion"), @"promotionCriterion"}];
  expirationDate = [(NTTodayResults *)self expirationDate];
  [coderCopy encodeObject:expirationDate forKey:@"expirationDate"];

  [(NTTodayResults *)self headlineScale];
  [coderCopy encodeDouble:@"headlineScale" forKey:?];
}

- (NTTodayResults)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"si"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"banner"];
  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"sections"];

  v11 = [coderCopy decodeInt32ForKey:@"promotionCriterion"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
  [coderCopy decodeDoubleForKey:@"headlineScale"];
  v14 = v13;

  v15 = [(NTTodayResults *)self initWithSourceIdentifier:v5 sections:v10 promotionCriterion:v11 expirationDate:v12 headlineScale:0 assetsHoldToken:0 recordsHoldToken:v14 banner:v6 debugInspection:0];
  return v15;
}

- (void)initWithSourceIdentifier:sections:promotionCriterion:expirationDate:headlineScale:assetsHoldToken:recordsHoldToken:banner:debugInspection:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "sourceIdentifier", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithSourceIdentifier:sections:promotionCriterion:expirationDate:headlineScale:assetsHoldToken:recordsHoldToken:banner:debugInspection:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "sections", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithSourceIdentifier:sections:promotionCriterion:expirationDate:headlineScale:assetsHoldToken:recordsHoldToken:banner:debugInspection:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "expirationDate", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

@end