@interface NTTodayResults
- (BOOL)isEqual:(id)a3;
- (NTTodayResults)init;
- (NTTodayResults)initWithCoder:(id)a3;
- (NTTodayResults)initWithSourceIdentifier:(id)a3 sections:(id)a4 promotionCriterion:(int)a5 expirationDate:(id)a6 headlineScale:(double)a7 assetsHoldToken:(id)a8 recordsHoldToken:(id)a9 banner:(id)a10 debugInspection:(id)a11;
- (id)description;
- (unint64_t)hash;
- (unint64_t)itemCount;
- (void)encodeWithCoder:(id)a3;
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

- (NTTodayResults)initWithSourceIdentifier:(id)a3 sections:(id)a4 promotionCriterion:(int)a5 expirationDate:(id)a6 headlineScale:(double)a7 assetsHoldToken:(id)a8 recordsHoldToken:(id)a9 banner:(id)a10 debugInspection:(id)a11
{
  v17 = a3;
  v18 = a4;
  v19 = a6;
  v20 = a8;
  v21 = a9;
  v36 = a10;
  v35 = a11;
  if (!v17 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTTodayResults initWithSourceIdentifier:sections:promotionCriterion:expirationDate:headlineScale:assetsHoldToken:recordsHoldToken:banner:debugInspection:];
    if (v18)
    {
      goto LABEL_6;
    }
  }

  else if (v18)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTTodayResults initWithSourceIdentifier:sections:promotionCriterion:expirationDate:headlineScale:assetsHoldToken:recordsHoldToken:banner:debugInspection:];
  }

LABEL_6:
  if (!v19 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTTodayResults initWithSourceIdentifier:sections:promotionCriterion:expirationDate:headlineScale:assetsHoldToken:recordsHoldToken:banner:debugInspection:];
  }

  v37.receiver = self;
  v37.super_class = NTTodayResults;
  v22 = [(NTTodayResults *)&v37 init];
  if (v22)
  {
    v23 = [v17 copy];
    v24 = a9;
    v25 = v21;
    v26 = v20;
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

    v20 = v26;
    v21 = v25;
    v29 = [v18 copy];
    sections = v22->_sections;
    v22->_sections = v29;

    v22->_promotionCriterion = a5;
    v31 = [v19 copy];
    expirationDate = v22->_expirationDate;
    v22->_expirationDate = v31;

    v22->_headlineScale = a7;
    objc_storeStrong(&v22->_assetsHoldToken, a8);
    objc_storeStrong(&v22->_recordsHoldToken, v24);
    objc_storeStrong(&v22->_banner, a10);
    objc_storeStrong(&v22->_debugInspection, a11);
  }

  return v22;
}

- (unint64_t)itemCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [(NTTodayResults *)self sections];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __27__NTTodayResults_itemCount__block_invoke;
  v5[3] = &unk_279982CD8;
  v5[4] = &v6;
  [v2 enumerateObjectsUsingBlock:v5];

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __27__NTTodayResults_itemCount__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 items];
  *(*(*(a1 + 32) + 8) + 24) += [v3 count];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = FCDynamicCast();

  if (v5)
  {
    v6 = [(NTTodayResults *)self sections];
    v7 = [v5 sections];
    if ([v6 isEqual:v7])
    {
      v8 = [(NTTodayResults *)self expirationDate];
      v9 = [v5 expirationDate];
      v10 = [v8 isEqual:v9];
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
  v3 = [(NTTodayResults *)self sections];
  v4 = [v3 hash];
  v5 = [(NTTodayResults *)self expirationDate];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = [MEMORY[0x277D30F48] descriptionWithObject:self];
  v4 = [(NTTodayResults *)self sections];
  [v3 addField:@"sections" object:v4];

  v5 = [v3 descriptionString];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [(NTTodayResults *)self sourceIdentifier];
  [v8 encodeObject:v4 forKey:@"si"];

  v5 = [(NTTodayResults *)self banner];
  [v8 encodeObject:v5 forKey:@"banner"];

  v6 = [(NTTodayResults *)self sections];
  [v8 encodeObject:v6 forKey:@"sections"];

  [v8 encodeInt32:-[NTTodayResults promotionCriterion](self forKey:{"promotionCriterion"), @"promotionCriterion"}];
  v7 = [(NTTodayResults *)self expirationDate];
  [v8 encodeObject:v7 forKey:@"expirationDate"];

  [(NTTodayResults *)self headlineScale];
  [v8 encodeDouble:@"headlineScale" forKey:?];
}

- (NTTodayResults)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"si"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"banner"];
  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v10 = [v4 decodeObjectOfClasses:v9 forKey:@"sections"];

  v11 = [v4 decodeInt32ForKey:@"promotionCriterion"];
  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
  [v4 decodeDoubleForKey:@"headlineScale"];
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