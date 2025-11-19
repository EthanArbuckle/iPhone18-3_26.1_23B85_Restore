@interface DAResolvedRecipient
- (id)description;
- (void)addCert:(id)a3 forEmailAddress:(id)a4;
@end

@implementation DAResolvedRecipient

- (id)description
{
  v2 = self;
  v40 = *MEMORY[0x277D85DE8];
  v3 = 0x277CCA000uLL;
  v4 = MEMORY[0x277CCAB68];
  v37.receiver = self;
  v37.super_class = DAResolvedRecipient;
  v5 = [(DAResolvedRecipient *)&v37 description];
  v6 = [v4 stringWithFormat:@"%@ status %ld", v5, -[DAResolvedRecipient status](v2, "status")];

  v7 = [(DAResolvedRecipient *)v2 mResolvedEmailToX509Certs];
  v8 = [v7 count];

  if (v8)
  {
    v9 = [MEMORY[0x277CCAB68] stringWithFormat:@" email->certs status %ld ", -[DAResolvedRecipient certificatesStatus](v2, "certificatesStatus")];
    [v6 appendString:v9];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = [(DAResolvedRecipient *)v2 mResolvedEmailToX509Certs];
    v28 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
    if (v28)
    {
      v27 = *v34;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v34 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v33 + 1) + 8 * i);
          [v6 appendFormat:@"%@: ", v11];
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          v12 = v2;
          v13 = [(DAResolvedRecipient *)v2 mResolvedEmailToX509Certs];
          v14 = [v13 objectForKeyedSubscript:v11];

          v15 = [v14 countByEnumeratingWithState:&v29 objects:v38 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v30;
            do
            {
              for (j = 0; j != v16; ++j)
              {
                if (*v30 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                [v6 appendFormat:@"<cert data length %ld hash %ld> ", objc_msgSend(*(*(&v29 + 1) + 8 * j), "length"), objc_msgSend(*(*(&v29 + 1) + 8 * j), "hash")];
              }

              v16 = [v14 countByEnumeratingWithState:&v29 objects:v38 count:16];
            }

            while (v16);
          }

          v2 = v12;
        }

        v28 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
      }

      while (v28);
    }

    v3 = 0x277CCA000;
  }

  else
  {
    [v6 appendString:@" email->certs "];
    if ([(DAResolvedRecipient *)v2 certificatesStatus])
    {
      v19 = [MEMORY[0x277CCAB68] stringWithFormat:@"status %ld ", -[DAResolvedRecipient certificatesStatus](v2, "certificatesStatus")];
      [v6 appendString:v19];
    }

    [v6 appendString:@"(null)"];
  }

  v20 = [(DAResolvedRecipient *)v2 mergedFreeBusy];

  if (v20)
  {
    v21 = [*(v3 + 2920) stringWithFormat:@" email->availability status %ld ", -[DAResolvedRecipient availabilityStatus](v2, "availabilityStatus")];
    [v6 appendString:v21];

    v22 = [(DAResolvedRecipient *)v2 mergedFreeBusy];
    [v6 appendString:v22];
  }

  else
  {
    [v6 appendString:@" email->availability "];
    if ([(DAResolvedRecipient *)v2 certificatesStatus])
    {
      v23 = [*(v3 + 2920) stringWithFormat:@"status %ld ", -[DAResolvedRecipient availabilityStatus](v2, "availabilityStatus")];
      [v6 appendString:v23];
    }

    [v6 appendString:@"(null)"];
  }

  v24 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)addCert:(id)a3 forEmailAddress:(id)a4
{
  v15 = a4;
  v6 = a3;
  v7 = [(DAResolvedRecipient *)self mResolvedEmailToX509Certs];

  if (!v7)
  {
    v8 = objc_opt_new();
    [(DAResolvedRecipient *)self setMResolvedEmailToX509Certs:v8];
  }

  v9 = [(DAResolvedRecipient *)self mResolvedEmailToX509Certs];
  v10 = [v9 objectForKeyedSubscript:v15];

  if (!v10)
  {
    v11 = objc_opt_new();
    v12 = [(DAResolvedRecipient *)self mResolvedEmailToX509Certs];
    [v12 setObject:v11 forKeyedSubscript:v15];
  }

  v13 = [(DAResolvedRecipient *)self mResolvedEmailToX509Certs];
  v14 = [v13 objectForKeyedSubscript:v15];
  [v14 addObject:v6];
}

@end