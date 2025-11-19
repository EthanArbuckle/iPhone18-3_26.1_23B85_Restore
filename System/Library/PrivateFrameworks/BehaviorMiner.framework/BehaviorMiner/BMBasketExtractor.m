@interface BMBasketExtractor
- (BMBasketExtractor)initWithSamplingInterval:(double)a3;
- (id)extractBasketsFromEvents:(id)a3 itemTypes:(id)a4;
- (id)extractDatedBasketsFromEvents:(id)a3 itemTypes:(id)a4;
- (id)slotForHourOfDay:(id)a3 slotDuration:(id)a4;
@end

@implementation BMBasketExtractor

- (BMBasketExtractor)initWithSamplingInterval:(double)a3
{
  if (a3 >= 0.0)
  {
    v7.receiver = self;
    v7.super_class = BMBasketExtractor;
    v5 = [(BMBasketExtractor *)&v7 init];
    if (v5)
    {
      v5->_samplingInterval = a3;
      v5->_shouldStop = 0;
    }

    self = v5;
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)slotForHourOfDay:(id)a3 slotDuration:(id)a4
{
  v5 = a4;
  v6 = [a3 integerValue];
  v7 = [v5 integerValue];

  v8 = MEMORY[0x277CCABB0];

  return [v8 numberWithUnsignedInteger:v6 / v7];
}

- (id)extractBasketsFromEvents:(id)a3 itemTypes:(id)a4
{
  v4 = [(BMBasketExtractor *)self extractDatedBasketsFromEvents:a3 itemTypes:a4];
  v5 = [v4 valueForKey:@"basket"];

  return v5;
}

- (id)extractDatedBasketsFromEvents:(id)a3 itemTypes:(id)a4
{
  v85[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (![v6 count])
  {
    v66 = MEMORY[0x277CBEBF8];
    goto LABEL_39;
  }

  v8 = [MEMORY[0x277CBEB18] array];
  v70 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:1];
  v85[0] = v70;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v85 count:1];
  v71 = v6;
  v10 = [v6 sortedArrayUsingDescriptors:v9];

  v11 = [v10 objectAtIndexedSubscript:0];
  v12 = [v11 startDate];

  v75 = self;
  v13 = self;
  v14 = v10;
  [(BMBasketExtractor *)v13 samplingInterval];
  v79 = [v12 dateByAddingTimeInterval:?];
  [MEMORY[0x277CBEA80] currentCalendar];
  v74 = v73 = v7;
  v15 = 0x277CBE000uLL;
  v72 = v8;
  v69 = v10;
  while (1)
  {
    v16 = [*(v15 + 2904) set];
    v17 = v12;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v18 = v14;
    v19 = [v18 countByEnumeratingWithState:&v80 objects:v84 count:16];
    if (v19)
    {
      break;
    }

    v78 = 0;
    v12 = v17;
LABEL_30:

    if ([v16 count])
    {
      v64 = BMTemporalItemsForDate(v17, v74, v7);
      if ([v64 count])
      {
        [v16 unionSet:v64];
      }

      v65 = [[BMDatedBasket alloc] initWithBasket:v16 Date:v17];
      [v8 addObject:v65];
    }

    v15 = 0x277CBE000;
    if (v78)
    {
      v66 = v8;
      v17 = v12;
      goto LABEL_37;
    }
  }

  v20 = v19;
  v78 = 0;
  v76 = v16;
  v77 = *v81;
  v21 = v75;
LABEL_5:
  v22 = 0;
  while (1)
  {
    if (*v81 != v77)
    {
      objc_enumerationMutation(v18);
    }

    v23 = *(*(&v80 + 1) + 8 * v22);
    if ([(BMBasketExtractor *)v21 shouldStop])
    {
      break;
    }

    v24 = [v23 startDate];
    [v24 timeIntervalSince1970];
    v26 = v25;
    [v17 timeIntervalSince1970];
    if (v26 >= v27)
    {
      v28 = [v23 startDate];
      [v28 timeIntervalSince1970];
      v30 = v29;
      [v79 timeIntervalSince1970];
      v32 = v31;

      v16 = v76;
      if (v30 < v32)
      {
        goto LABEL_22;
      }
    }

    else
    {
    }

    v33 = [v23 endDate];
    [v33 timeIntervalSince1970];
    v35 = v34;
    [v17 timeIntervalSince1970];
    if (v35 <= v36)
    {
      goto LABEL_15;
    }

    v37 = [v23 endDate];
    [v37 timeIntervalSince1970];
    v39 = v38;
    [v79 timeIntervalSince1970];
    if (v39 > v40)
    {

      v16 = v76;
LABEL_15:

      goto LABEL_16;
    }

    v55 = [v23 startDate];
    v56 = [v23 endDate];
    v57 = [v55 isEqualToDate:v56];

    v21 = v75;
    v16 = v76;
    if ((v57 & 1) == 0)
    {
LABEL_22:
      v58 = [v23 item];
      [v16 addObject:v58];

      goto LABEL_23;
    }

LABEL_16:
    v41 = [v23 startDate];
    [v41 timeIntervalSince1970];
    v43 = v42;
    [v17 timeIntervalSince1970];
    if (v43 <= v44)
    {
      v45 = [v23 endDate];
      [v45 timeIntervalSince1970];
      v47 = v46;
      [v79 timeIntervalSince1970];
      v49 = v48;

      if (v47 >= v49)
      {
        goto LABEL_22;
      }
    }

    else
    {
    }

    v50 = [v23 startDate];
    [v50 timeIntervalSince1970];
    v52 = v51;
    [v79 timeIntervalSince1970];
    v54 = v53;

    if (v52 >= v54)
    {
      v12 = [v23 startDate];

      [(BMBasketExtractor *)v21 samplingInterval];
      v63 = [v12 dateByAddingTimeInterval:?];

      v79 = v63;
LABEL_29:
      v8 = v72;
      v7 = v73;
      v14 = v69;
      goto LABEL_30;
    }

LABEL_23:
    v59 = [v18 objectAtIndexedSubscript:{objc_msgSend(v18, "count") - 1}];
    v60 = [v23 isEqual:v59];

    if (v60)
    {
      v61 = [v23 item];
      v62 = [v16 containsObject:v61];

      v78 |= v62;
    }

    if (v20 == ++v22)
    {
      v20 = [v18 countByEnumeratingWithState:&v80 objects:v84 count:16];
      if (v20)
      {
        goto LABEL_5;
      }

      v12 = v17;
      goto LABEL_29;
    }
  }

  v66 = MEMORY[0x277CBEBF8];
  v8 = v72;
  v7 = v73;
LABEL_37:

  v6 = v71;
LABEL_39:

  v67 = *MEMORY[0x277D85DE8];

  return v66;
}

@end