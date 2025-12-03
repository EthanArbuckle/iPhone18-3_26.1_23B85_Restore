@interface DAResolvedRecipient
- (id)description;
- (void)addCert:(id)cert forEmailAddress:(id)address;
@end

@implementation DAResolvedRecipient

- (id)description
{
  selfCopy = self;
  v40 = *MEMORY[0x277D85DE8];
  v3 = 0x277CCA000uLL;
  v4 = MEMORY[0x277CCAB68];
  v37.receiver = self;
  v37.super_class = DAResolvedRecipient;
  v5 = [(DAResolvedRecipient *)&v37 description];
  v6 = [v4 stringWithFormat:@"%@ status %ld", v5, -[DAResolvedRecipient status](selfCopy, "status")];

  mResolvedEmailToX509Certs = [(DAResolvedRecipient *)selfCopy mResolvedEmailToX509Certs];
  v8 = [mResolvedEmailToX509Certs count];

  if (v8)
  {
    v9 = [MEMORY[0x277CCAB68] stringWithFormat:@" email->certs status %ld ", -[DAResolvedRecipient certificatesStatus](selfCopy, "certificatesStatus")];
    [v6 appendString:v9];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = [(DAResolvedRecipient *)selfCopy mResolvedEmailToX509Certs];
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
          v12 = selfCopy;
          mResolvedEmailToX509Certs2 = [(DAResolvedRecipient *)selfCopy mResolvedEmailToX509Certs];
          v14 = [mResolvedEmailToX509Certs2 objectForKeyedSubscript:v11];

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

          selfCopy = v12;
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
    if ([(DAResolvedRecipient *)selfCopy certificatesStatus])
    {
      v19 = [MEMORY[0x277CCAB68] stringWithFormat:@"status %ld ", -[DAResolvedRecipient certificatesStatus](selfCopy, "certificatesStatus")];
      [v6 appendString:v19];
    }

    [v6 appendString:@"(null)"];
  }

  mergedFreeBusy = [(DAResolvedRecipient *)selfCopy mergedFreeBusy];

  if (mergedFreeBusy)
  {
    v21 = [*(v3 + 2920) stringWithFormat:@" email->availability status %ld ", -[DAResolvedRecipient availabilityStatus](selfCopy, "availabilityStatus")];
    [v6 appendString:v21];

    mergedFreeBusy2 = [(DAResolvedRecipient *)selfCopy mergedFreeBusy];
    [v6 appendString:mergedFreeBusy2];
  }

  else
  {
    [v6 appendString:@" email->availability "];
    if ([(DAResolvedRecipient *)selfCopy certificatesStatus])
    {
      v23 = [*(v3 + 2920) stringWithFormat:@"status %ld ", -[DAResolvedRecipient availabilityStatus](selfCopy, "availabilityStatus")];
      [v6 appendString:v23];
    }

    [v6 appendString:@"(null)"];
  }

  v24 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)addCert:(id)cert forEmailAddress:(id)address
{
  addressCopy = address;
  certCopy = cert;
  mResolvedEmailToX509Certs = [(DAResolvedRecipient *)self mResolvedEmailToX509Certs];

  if (!mResolvedEmailToX509Certs)
  {
    v8 = objc_opt_new();
    [(DAResolvedRecipient *)self setMResolvedEmailToX509Certs:v8];
  }

  mResolvedEmailToX509Certs2 = [(DAResolvedRecipient *)self mResolvedEmailToX509Certs];
  v10 = [mResolvedEmailToX509Certs2 objectForKeyedSubscript:addressCopy];

  if (!v10)
  {
    v11 = objc_opt_new();
    mResolvedEmailToX509Certs3 = [(DAResolvedRecipient *)self mResolvedEmailToX509Certs];
    [mResolvedEmailToX509Certs3 setObject:v11 forKeyedSubscript:addressCopy];
  }

  mResolvedEmailToX509Certs4 = [(DAResolvedRecipient *)self mResolvedEmailToX509Certs];
  v14 = [mResolvedEmailToX509Certs4 objectForKeyedSubscript:addressCopy];
  [v14 addObject:certCopy];
}

@end