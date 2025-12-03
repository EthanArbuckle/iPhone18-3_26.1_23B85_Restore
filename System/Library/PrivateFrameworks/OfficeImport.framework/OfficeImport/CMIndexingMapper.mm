@interface CMIndexingMapper
- (void)mapSummaryWithState:(id)state;
@end

@implementation CMIndexingMapper

- (void)mapSummaryWithState:(id)state
{
  v35[1] = *MEMORY[0x277D85DE8];
  stateCopy = state;
  document = [(CMMapper *)self document];
  summary = [document summary];

  title = [summary title];
  v8 = [title length];

  if (v8)
  {
    searchableAttributes = [stateCopy searchableAttributes];
    title2 = [summary title];
    [searchableAttributes setTitle:title2];
  }

  author = [summary author];
  v12 = [author length];

  if (v12)
  {
    searchableAttributes2 = [stateCopy searchableAttributes];
    author2 = [summary author];
    v35[0] = author2;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
    [searchableAttributes2 setAuthorNames:v15];
  }

  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  keywords = [summary keywords];
  v18 = [keywords length] == 0;

  if (!v18)
  {
    keywords2 = [summary keywords];
    [v16 addObject:keywords2];
  }

  if ([v16 count])
  {
    searchableAttributes3 = [stateCopy searchableAttributes];
    [searchableAttributes3 setKeywords:v16];
  }

  subject = [summary subject];
  v22 = [subject length] == 0;

  if (!v22)
  {
    searchableAttributes4 = [stateCopy searchableAttributes];
    subject2 = [summary subject];
    [searchableAttributes4 setSubject:subject2];
  }

  company = [summary company];
  v26 = [company length] == 0;

  if (!v26)
  {
    searchableAttributes5 = [stateCopy searchableAttributes];
    company2 = [summary company];
    v34 = company2;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
    [searchableAttributes5 setOrganizations:v29];
  }

  comments = [summary comments];
  v31 = [comments length] == 0;

  if (!v31)
  {
    searchableAttributes6 = [stateCopy searchableAttributes];
    comments2 = [summary comments];
    [searchableAttributes6 setComment:comments2];
  }
}

@end