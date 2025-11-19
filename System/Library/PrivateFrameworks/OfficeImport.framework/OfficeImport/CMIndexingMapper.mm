@interface CMIndexingMapper
- (void)mapSummaryWithState:(id)a3;
@end

@implementation CMIndexingMapper

- (void)mapSummaryWithState:(id)a3
{
  v35[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CMMapper *)self document];
  v6 = [v5 summary];

  v7 = [v6 title];
  v8 = [v7 length];

  if (v8)
  {
    v9 = [v4 searchableAttributes];
    v10 = [v6 title];
    [v9 setTitle:v10];
  }

  v11 = [v6 author];
  v12 = [v11 length];

  if (v12)
  {
    v13 = [v4 searchableAttributes];
    v14 = [v6 author];
    v35[0] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
    [v13 setAuthorNames:v15];
  }

  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = [v6 keywords];
  v18 = [v17 length] == 0;

  if (!v18)
  {
    v19 = [v6 keywords];
    [v16 addObject:v19];
  }

  if ([v16 count])
  {
    v20 = [v4 searchableAttributes];
    [v20 setKeywords:v16];
  }

  v21 = [v6 subject];
  v22 = [v21 length] == 0;

  if (!v22)
  {
    v23 = [v4 searchableAttributes];
    v24 = [v6 subject];
    [v23 setSubject:v24];
  }

  v25 = [v6 company];
  v26 = [v25 length] == 0;

  if (!v26)
  {
    v27 = [v4 searchableAttributes];
    v28 = [v6 company];
    v34 = v28;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
    [v27 setOrganizations:v29];
  }

  v30 = [v6 comments];
  v31 = [v30 length] == 0;

  if (!v31)
  {
    v32 = [v4 searchableAttributes];
    v33 = [v6 comments];
    [v32 setComment:v33];
  }
}

@end