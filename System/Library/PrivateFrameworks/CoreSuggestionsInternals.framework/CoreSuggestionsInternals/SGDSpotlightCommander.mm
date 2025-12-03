@interface SGDSpotlightCommander
- (id)queryForPersonHandle:(id)handle startDate:(id)date endDate:(id)endDate contentTypes:(id)types;
@end

@implementation SGDSpotlightCommander

- (id)queryForPersonHandle:(id)handle startDate:(id)date endDate:(id)endDate contentTypes:(id)types
{
  v61 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  dateCopy = date;
  endDateCopy = endDate;
  typesCopy = types;
  v49 = typesCopy;
  v50 = endDateCopy;
  if ([handleCopy length])
  {
    v13 = objc_opt_new();
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v14 = [&unk_28474A408 countByEnumeratingWithState:&v55 objects:v60 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v56;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v56 != v16)
          {
            objc_enumerationMutation(&unk_28474A408);
          }

          v18 = *(*(&v55 + 1) + 8 * i);
          v19 = objc_autoreleasePoolPush();
          handleCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@" (%@ == *%@*cwdt) ", v18, handleCopy];
          [v13 addObject:handleCopy];

          objc_autoreleasePoolPop(v19);
        }

        v15 = [&unk_28474A408 countByEnumeratingWithState:&v55 objects:v60 count:16];
      }

      while (v15);
    }

    v21 = objc_alloc(MEMORY[0x277CCACA8]);
    v22 = [v13 _pas_componentsJoinedByString:@" || "];
    v23 = [v21 initWithFormat:@"(%@) ", v22];

    typesCopy = v49;
    endDateCopy = v50;
  }

  else
  {
    v23 = &stru_284703F00;
  }

  v24 = objc_opt_new();
  if (dateCopy)
  {
    v25 = objc_alloc(MEMORY[0x277CCACA8]);
    v26 = [v24 stringFromDate:dateCopy];
    v47 = [v25 initWithFormat:@"$time.iso(%@)", v26];

    if (endDateCopy)
    {
LABEL_13:
      v27 = objc_alloc(MEMORY[0x277CCACA8]);
      v28 = [v24 stringFromDate:endDateCopy];
      v29 = [v27 initWithFormat:@"$time.iso(%@)", v28];

      goto LABEL_16;
    }
  }

  else
  {
    v47 = @"$time.this_year(-1)";
    if (endDateCopy)
    {
      goto LABEL_13;
    }
  }

  v29 = @"$time.today(1)";
LABEL_16:
  v48 = v24;
  if (typesCopy)
  {
    if ([typesCopy count])
    {
      v46 = dateCopy;
      v30 = objc_opt_new();
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v31 = typesCopy;
      v32 = [v31 countByEnumeratingWithState:&v51 objects:v59 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v52;
        do
        {
          for (j = 0; j != v33; ++j)
          {
            if (*v52 != v34)
            {
              objc_enumerationMutation(v31);
            }

            v36 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@" (kMDItemContentType == '%@') ", *(*(&v51 + 1) + 8 * j)];
            [v30 addObject:v36];
          }

          v33 = [v31 countByEnumeratingWithState:&v51 objects:v59 count:16];
        }

        while (v33);
      }

      v37 = objc_alloc(MEMORY[0x277CCACA8]);
      v38 = [v30 _pas_componentsJoinedByString:@" || "];
      v39 = [v37 initWithFormat:@"(%@) ", v38];

      dateCopy = v46;
      typesCopy = v49;
      endDateCopy = v50;
    }

    else
    {
      v39 = &stru_284703F00;
    }
  }

  else
  {
    v39 = &stru_284703F00;
  }

  v40 = objc_alloc(MEMORY[0x277CCACA8]);
  if ([(__CFString *)v23 length])
  {
    v41 = @"&&";
  }

  else
  {
    v41 = &stru_284703F00;
  }

  if ([(__CFString *)v39 length])
  {
    v42 = @"&&";
  }

  else
  {
    v42 = &stru_284703F00;
  }

  v43 = [v40 initWithFormat:@"%@ %@ InRange(kMDItemContentCreationDate, %@, %@) %@ %@", v23, v41, v47, v29, v42, v39];

  v44 = *MEMORY[0x277D85DE8];

  return v43;
}

@end