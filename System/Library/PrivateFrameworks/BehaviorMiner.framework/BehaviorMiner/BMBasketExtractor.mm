@interface BMBasketExtractor
- (BMBasketExtractor)initWithSamplingInterval:(double)interval;
- (id)extractBasketsFromEvents:(id)events itemTypes:(id)types;
- (id)extractDatedBasketsFromEvents:(id)events itemTypes:(id)types;
- (id)slotForHourOfDay:(id)day slotDuration:(id)duration;
@end

@implementation BMBasketExtractor

- (BMBasketExtractor)initWithSamplingInterval:(double)interval
{
  if (interval >= 0.0)
  {
    v7.receiver = self;
    v7.super_class = BMBasketExtractor;
    v5 = [(BMBasketExtractor *)&v7 init];
    if (v5)
    {
      v5->_samplingInterval = interval;
      v5->_shouldStop = 0;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)slotForHourOfDay:(id)day slotDuration:(id)duration
{
  durationCopy = duration;
  integerValue = [day integerValue];
  integerValue2 = [durationCopy integerValue];

  v8 = MEMORY[0x277CCABB0];

  return [v8 numberWithUnsignedInteger:integerValue / integerValue2];
}

- (id)extractBasketsFromEvents:(id)events itemTypes:(id)types
{
  v4 = [(BMBasketExtractor *)self extractDatedBasketsFromEvents:events itemTypes:types];
  v5 = [v4 valueForKey:@"basket"];

  return v5;
}

- (id)extractDatedBasketsFromEvents:(id)events itemTypes:(id)types
{
  v85[1] = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  typesCopy = types;
  if (![eventsCopy count])
  {
    v66 = MEMORY[0x277CBEBF8];
    goto LABEL_39;
  }

  array = [MEMORY[0x277CBEB18] array];
  v70 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:1];
  v85[0] = v70;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v85 count:1];
  v71 = eventsCopy;
  v10 = [eventsCopy sortedArrayUsingDescriptors:v9];

  v11 = [v10 objectAtIndexedSubscript:0];
  startDate = [v11 startDate];

  selfCopy = self;
  selfCopy2 = self;
  v14 = v10;
  [(BMBasketExtractor *)selfCopy2 samplingInterval];
  v79 = [startDate dateByAddingTimeInterval:?];
  [MEMORY[0x277CBEA80] currentCalendar];
  v74 = v73 = typesCopy;
  v15 = 0x277CBE000uLL;
  v72 = array;
  v69 = v10;
  while (1)
  {
    v16 = [*(v15 + 2904) set];
    v17 = startDate;
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
    startDate = v17;
LABEL_30:

    if ([v16 count])
    {
      v64 = BMTemporalItemsForDate(v17, v74, typesCopy);
      if ([v64 count])
      {
        [v16 unionSet:v64];
      }

      v65 = [[BMDatedBasket alloc] initWithBasket:v16 Date:v17];
      [array addObject:v65];
    }

    v15 = 0x277CBE000;
    if (v78)
    {
      v66 = array;
      v17 = startDate;
      goto LABEL_37;
    }
  }

  v20 = v19;
  v78 = 0;
  v76 = v16;
  v77 = *v81;
  v21 = selfCopy;
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

    startDate2 = [v23 startDate];
    [startDate2 timeIntervalSince1970];
    v26 = v25;
    [v17 timeIntervalSince1970];
    if (v26 >= v27)
    {
      startDate3 = [v23 startDate];
      [startDate3 timeIntervalSince1970];
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

    endDate = [v23 endDate];
    [endDate timeIntervalSince1970];
    v35 = v34;
    [v17 timeIntervalSince1970];
    if (v35 <= v36)
    {
      goto LABEL_15;
    }

    endDate2 = [v23 endDate];
    [endDate2 timeIntervalSince1970];
    v39 = v38;
    [v79 timeIntervalSince1970];
    if (v39 > v40)
    {

      v16 = v76;
LABEL_15:

      goto LABEL_16;
    }

    startDate4 = [v23 startDate];
    endDate3 = [v23 endDate];
    v57 = [startDate4 isEqualToDate:endDate3];

    v21 = selfCopy;
    v16 = v76;
    if ((v57 & 1) == 0)
    {
LABEL_22:
      item = [v23 item];
      [v16 addObject:item];

      goto LABEL_23;
    }

LABEL_16:
    startDate5 = [v23 startDate];
    [startDate5 timeIntervalSince1970];
    v43 = v42;
    [v17 timeIntervalSince1970];
    if (v43 <= v44)
    {
      endDate4 = [v23 endDate];
      [endDate4 timeIntervalSince1970];
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

    startDate6 = [v23 startDate];
    [startDate6 timeIntervalSince1970];
    v52 = v51;
    [v79 timeIntervalSince1970];
    v54 = v53;

    if (v52 >= v54)
    {
      startDate = [v23 startDate];

      [(BMBasketExtractor *)v21 samplingInterval];
      v63 = [startDate dateByAddingTimeInterval:?];

      v79 = v63;
LABEL_29:
      array = v72;
      typesCopy = v73;
      v14 = v69;
      goto LABEL_30;
    }

LABEL_23:
    v59 = [v18 objectAtIndexedSubscript:{objc_msgSend(v18, "count") - 1}];
    v60 = [v23 isEqual:v59];

    if (v60)
    {
      item2 = [v23 item];
      v62 = [v16 containsObject:item2];

      v78 |= v62;
    }

    if (v20 == ++v22)
    {
      v20 = [v18 countByEnumeratingWithState:&v80 objects:v84 count:16];
      if (v20)
      {
        goto LABEL_5;
      }

      startDate = v17;
      goto LABEL_29;
    }
  }

  v66 = MEMORY[0x277CBEBF8];
  array = v72;
  typesCopy = v73;
LABEL_37:

  eventsCopy = v71;
LABEL_39:

  v67 = *MEMORY[0x277D85DE8];

  return v66;
}

@end