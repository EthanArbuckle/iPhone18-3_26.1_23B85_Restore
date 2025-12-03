@interface NPTPingResult
- (NPTPingResult)init;
- (NPTPingResult)initWithCoder:(id)coder;
- (NPTPingResult)initWithPings:(id)pings usingAddress:(id)address;
- (NSDictionary)asDictionary;
- (double)calculateStandardDeviation;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)populateFields;
@end

@implementation NPTPingResult

- (NPTPingResult)init
{
  v5.receiver = self;
  v5.super_class = NPTPingResult;
  v2 = [(NPTPingResult *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEA60]);
    [(NPTPingResult *)v2 setPings:v3];

    [(NPTPingResult *)v2 setAddress:&stru_2848BD380];
  }

  return v2;
}

- (NPTPingResult)initWithPings:(id)pings usingAddress:(id)address
{
  pingsCopy = pings;
  addressCopy = address;
  v11.receiver = self;
  v11.super_class = NPTPingResult;
  v8 = [(NPTPingResult *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(NPTPingResult *)v8 setPings:pingsCopy];
    [(NPTPingResult *)v9 setAddress:addressCopy];
    [(NPTPingResult *)v9 populateFields];
  }

  return v9;
}

- (void)populateFields
{
  v31 = *MEMORY[0x277D85DE8];
  [(NPTPingResult *)self setMinLatency:INFINITY];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  pings = [(NPTPingResult *)self pings];
  v4 = [pings countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v27;
    v8 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(pings);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        [v10 latency];
        v12 = v11;
        [(NPTPingResult *)self minLatency];
        if (v12 < v13)
        {
          [v10 latency];
          if (v14 > 0.0)
          {
            [v10 latency];
            [(NPTPingResult *)self setMinLatency:?];
          }
        }

        [v10 latency];
        v16 = v15;
        [(NPTPingResult *)self maxLatency];
        if (v16 > v17)
        {
          [v10 latency];
          [(NPTPingResult *)self setMaxLatency:?];
        }

        if ([v10 wasSuccessful])
        {
          [v10 latency];
          v8 = v8 + v18;
        }

        else
        {
          ++v6;
        }
      }

      v5 = [pings countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
    v8 = 0.0;
  }

  [(NPTPingResult *)self minLatency];
  if (v19 == INFINITY)
  {
    [(NPTPingResult *)self setMinLatency:0.0];
  }

  pings2 = [(NPTPingResult *)self pings];
  v21 = [pings2 count];

  if (v21 == v6)
  {
    [(NPTPingResult *)self setMeanLatency:0.0];
  }

  else
  {
    pings3 = [(NPTPingResult *)self pings];
    -[NPTPingResult setMeanLatency:](self, "setMeanLatency:", v8 / ([pings3 count] - v6));
  }

  pings4 = [(NPTPingResult *)self pings];
  if ([pings4 count])
  {
    pings5 = [(NPTPingResult *)self pings];
    -[NPTPingResult setPercentLost:](self, "setPercentLost:", v6 / [pings5 count] * 100.0);
  }

  else
  {
    [(NPTPingResult *)self setPercentLost:0.0];
  }

  [(NPTPingResult *)self calculateStandardDeviation];
  [(NPTPingResult *)self setStandardDeviation:?];
  v25 = *MEMORY[0x277D85DE8];
}

- (double)calculateStandardDeviation
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  pings = [(NPTPingResult *)self pings];
  v4 = [pings countByEnumeratingWithState:&v21 objects:v25 count:16];
  v5 = 0.0;
  if (v4)
  {
    v6 = v4;
    v7 = 0;
    v8 = *v22;
    v9 = 0.0;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(pings);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        if ([v11 wasSuccessful])
        {
          [v11 latency];
          v13 = v12;
          [(NPTPingResult *)self meanLatency];
          v9 = v9 + (v13 - v14) * (v13 - v14);
        }

        else
        {
          ++v7;
        }
      }

      v6 = [pings countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
    v15 = v7;
  }

  else
  {
    v15 = 0;
    v9 = 0.0;
  }

  pings2 = [(NPTPingResult *)self pings];
  v17 = [pings2 count];

  if (v17 != v15)
  {
    pings3 = [(NPTPingResult *)self pings];
    v5 = sqrt(v9 / ([pings3 count] - v15));
  }

  v19 = *MEMORY[0x277D85DE8];
  return v5;
}

- (NSDictionary)asDictionary
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  pings = [(NPTPingResult *)self pings];
  v6 = [pings countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v34;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v34 != v8)
        {
          objc_enumerationMutation(pings);
        }

        dictionary = [*(*(&v33 + 1) + 8 * i) dictionary];
        [v4 addObject:dictionary];
      }

      v7 = [pings countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v7);
  }

  [v3 setValue:v4 forKey:@"pings"];
  address = [(NPTPingResult *)self address];
  [v3 setValue:address forKey:@"address"];

  v12 = MEMORY[0x277CCABB0];
  [(NPTPingResult *)self minLatency];
  v13 = [v12 numberWithDouble:?];
  [v3 setValue:v13 forKey:@"min_latency"];

  v14 = MEMORY[0x277CCABB0];
  [(NPTPingResult *)self maxLatency];
  v15 = [v14 numberWithDouble:?];
  [v3 setValue:v15 forKey:@"max_latency"];

  v16 = MEMORY[0x277CCABB0];
  [(NPTPingResult *)self meanLatency];
  v17 = [v16 numberWithDouble:?];
  [v3 setValue:v17 forKey:@"mean_latency"];

  v18 = MEMORY[0x277CCABB0];
  [(NPTPingResult *)self standardDeviation];
  v19 = [v18 numberWithDouble:?];
  [v3 setValue:v19 forKey:@"standard_deviation"];

  v20 = MEMORY[0x277CCABB0];
  [(NPTPingResult *)self percentLost];
  v21 = [v20 numberWithDouble:?];
  [v3 setValue:v21 forKey:@"loss_percent"];

  error = [(NPTPingResult *)self error];

  if (error)
  {
    error2 = [(NPTPingResult *)self error];
    localizedDescription = [error2 localizedDescription];
    [v3 setValue:localizedDescription forKey:@"error"];

    error3 = [(NPTPingResult *)self error];
    domain = [error3 domain];
    [v3 setValue:domain forKey:@"error_domain"];

    v27 = MEMORY[0x277CCABB0];
    error4 = [(NPTPingResult *)self error];
    v29 = [v27 numberWithInteger:{objc_msgSend(error4, "code")}];
    [v3 setValue:v29 forKey:@"error_code"];
  }

  v30 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v3];

  v31 = *MEMORY[0x277D85DE8];

  return v30;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  address = [(NPTPingResult *)self address];
  [coderCopy encodeObject:address forKey:@"address"];

  [(NPTPingResult *)self minLatency];
  [coderCopy encodeDouble:@"minLatency" forKey:?];
  [(NPTPingResult *)self maxLatency];
  [coderCopy encodeDouble:@"maxLatency" forKey:?];
  [(NPTPingResult *)self meanLatency];
  [coderCopy encodeDouble:@"meanLatency" forKey:?];
  [(NPTPingResult *)self standardDeviation];
  [coderCopy encodeDouble:@"standardDeviation" forKey:?];
  [(NPTPingResult *)self percentLost];
  [coderCopy encodeDouble:@"percentLost" forKey:?];
  pings = [(NPTPingResult *)self pings];
  [coderCopy encodeObject:pings forKey:@"pings"];

  error = [(NPTPingResult *)self error];
  [coderCopy encodeObject:error forKey:@"error"];
}

- (NPTPingResult)initWithCoder:(id)coder
{
  v12.receiver = self;
  v12.super_class = NPTPingResult;
  coderCopy = coder;
  v4 = [(NPTPingResult *)&v12 init];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"address"];
  [(NPTPingResult *)v4 setAddress:v5];

  [coderCopy decodeDoubleForKey:@"minLatency"];
  [(NPTPingResult *)v4 setMinLatency:?];
  [coderCopy decodeDoubleForKey:@"maxLatency"];
  [(NPTPingResult *)v4 setMaxLatency:?];
  [coderCopy decodeDoubleForKey:@"meanLatency"];
  [(NPTPingResult *)v4 setMeanLatency:?];
  [coderCopy decodeDoubleForKey:@"standardDeviation"];
  [(NPTPingResult *)v4 setStandardDeviation:?];
  [coderCopy decodeDoubleForKey:@"percentLost"];
  [(NPTPingResult *)v4 setPercentLost:?];
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0, v12.receiver, v12.super_class}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"pings"];
  [(NPTPingResult *)v4 setPings:v9];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"error"];

  [(NPTPingResult *)v4 setError:v10];
  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[NPTPingResult allocWithZone:?]];
  address = [(NPTPingResult *)self address];
  [(NPTPingResult *)v4 setAddress:address];

  [(NPTPingResult *)self minLatency];
  [(NPTPingResult *)v4 setMinLatency:?];
  [(NPTPingResult *)self maxLatency];
  [(NPTPingResult *)v4 setMaxLatency:?];
  [(NPTPingResult *)self meanLatency];
  [(NPTPingResult *)v4 setMeanLatency:?];
  [(NPTPingResult *)self standardDeviation];
  [(NPTPingResult *)v4 setStandardDeviation:?];
  [(NPTPingResult *)self percentLost];
  [(NPTPingResult *)v4 setPercentLost:?];
  pings = [(NPTPingResult *)self pings];
  [(NPTPingResult *)v4 setPings:pings];

  error = [(NPTPingResult *)self error];
  [(NPTPingResult *)v4 setError:error];

  return v4;
}

@end