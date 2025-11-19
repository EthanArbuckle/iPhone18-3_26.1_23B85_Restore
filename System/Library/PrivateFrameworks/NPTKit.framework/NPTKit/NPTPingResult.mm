@interface NPTPingResult
- (NPTPingResult)init;
- (NPTPingResult)initWithCoder:(id)a3;
- (NPTPingResult)initWithPings:(id)a3 usingAddress:(id)a4;
- (NSDictionary)asDictionary;
- (double)calculateStandardDeviation;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
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

- (NPTPingResult)initWithPings:(id)a3 usingAddress:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = NPTPingResult;
  v8 = [(NPTPingResult *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(NPTPingResult *)v8 setPings:v6];
    [(NPTPingResult *)v9 setAddress:v7];
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
  v3 = [(NPTPingResult *)self pings];
  v4 = [v3 countByEnumeratingWithState:&v26 objects:v30 count:16];
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
          objc_enumerationMutation(v3);
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

      v5 = [v3 countByEnumeratingWithState:&v26 objects:v30 count:16];
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

  v20 = [(NPTPingResult *)self pings];
  v21 = [v20 count];

  if (v21 == v6)
  {
    [(NPTPingResult *)self setMeanLatency:0.0];
  }

  else
  {
    v22 = [(NPTPingResult *)self pings];
    -[NPTPingResult setMeanLatency:](self, "setMeanLatency:", v8 / ([v22 count] - v6));
  }

  v23 = [(NPTPingResult *)self pings];
  if ([v23 count])
  {
    v24 = [(NPTPingResult *)self pings];
    -[NPTPingResult setPercentLost:](self, "setPercentLost:", v6 / [v24 count] * 100.0);
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
  v3 = [(NPTPingResult *)self pings];
  v4 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(v3);
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

      v6 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
    v15 = v7;
  }

  else
  {
    v15 = 0;
    v9 = 0.0;
  }

  v16 = [(NPTPingResult *)self pings];
  v17 = [v16 count];

  if (v17 != v15)
  {
    v18 = [(NPTPingResult *)self pings];
    v5 = sqrt(v9 / ([v18 count] - v15));
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
  v5 = [(NPTPingResult *)self pings];
  v6 = [v5 countByEnumeratingWithState:&v33 objects:v37 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v33 + 1) + 8 * i) dictionary];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v7);
  }

  [v3 setValue:v4 forKey:@"pings"];
  v11 = [(NPTPingResult *)self address];
  [v3 setValue:v11 forKey:@"address"];

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

  v22 = [(NPTPingResult *)self error];

  if (v22)
  {
    v23 = [(NPTPingResult *)self error];
    v24 = [v23 localizedDescription];
    [v3 setValue:v24 forKey:@"error"];

    v25 = [(NPTPingResult *)self error];
    v26 = [v25 domain];
    [v3 setValue:v26 forKey:@"error_domain"];

    v27 = MEMORY[0x277CCABB0];
    v28 = [(NPTPingResult *)self error];
    v29 = [v27 numberWithInteger:{objc_msgSend(v28, "code")}];
    [v3 setValue:v29 forKey:@"error_code"];
  }

  v30 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v3];

  v31 = *MEMORY[0x277D85DE8];

  return v30;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(NPTPingResult *)self address];
  [v4 encodeObject:v5 forKey:@"address"];

  [(NPTPingResult *)self minLatency];
  [v4 encodeDouble:@"minLatency" forKey:?];
  [(NPTPingResult *)self maxLatency];
  [v4 encodeDouble:@"maxLatency" forKey:?];
  [(NPTPingResult *)self meanLatency];
  [v4 encodeDouble:@"meanLatency" forKey:?];
  [(NPTPingResult *)self standardDeviation];
  [v4 encodeDouble:@"standardDeviation" forKey:?];
  [(NPTPingResult *)self percentLost];
  [v4 encodeDouble:@"percentLost" forKey:?];
  v6 = [(NPTPingResult *)self pings];
  [v4 encodeObject:v6 forKey:@"pings"];

  v7 = [(NPTPingResult *)self error];
  [v4 encodeObject:v7 forKey:@"error"];
}

- (NPTPingResult)initWithCoder:(id)a3
{
  v12.receiver = self;
  v12.super_class = NPTPingResult;
  v3 = a3;
  v4 = [(NPTPingResult *)&v12 init];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"address"];
  [(NPTPingResult *)v4 setAddress:v5];

  [v3 decodeDoubleForKey:@"minLatency"];
  [(NPTPingResult *)v4 setMinLatency:?];
  [v3 decodeDoubleForKey:@"maxLatency"];
  [(NPTPingResult *)v4 setMaxLatency:?];
  [v3 decodeDoubleForKey:@"meanLatency"];
  [(NPTPingResult *)v4 setMeanLatency:?];
  [v3 decodeDoubleForKey:@"standardDeviation"];
  [(NPTPingResult *)v4 setStandardDeviation:?];
  [v3 decodeDoubleForKey:@"percentLost"];
  [(NPTPingResult *)v4 setPercentLost:?];
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0, v12.receiver, v12.super_class}];
  v9 = [v3 decodeObjectOfClasses:v8 forKey:@"pings"];
  [(NPTPingResult *)v4 setPings:v9];

  v10 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"error"];

  [(NPTPingResult *)v4 setError:v10];
  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[NPTPingResult allocWithZone:?]];
  v5 = [(NPTPingResult *)self address];
  [(NPTPingResult *)v4 setAddress:v5];

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
  v6 = [(NPTPingResult *)self pings];
  [(NPTPingResult *)v4 setPings:v6];

  v7 = [(NPTPingResult *)self error];
  [(NPTPingResult *)v4 setError:v7];

  return v4;
}

@end