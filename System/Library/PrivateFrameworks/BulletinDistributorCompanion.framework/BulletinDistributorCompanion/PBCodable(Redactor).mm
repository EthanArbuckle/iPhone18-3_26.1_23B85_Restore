@interface PBCodable(Redactor)
- (id)_redact:()Redactor;
- (uint64_t)_isRedactable:()Redactor;
@end

@implementation PBCodable(Redactor)

- (id)_redact:()Redactor
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([self _isRedactable:v4])
  {
    v32 = v4;
    if (objc_opt_respondsToSelector())
    {
      dictionaryRepresentation = [v4 dictionaryRepresentation];
      v6 = [dictionaryRepresentation mutableCopy];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [v4 mutableCopy];
      }

      else
      {
        v6 = 0;
      }
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v7 = [&unk_28544B400 countByEnumeratingWithState:&v45 objects:v51 count:{16, v32}];
    if (v7)
    {
      v8 = v7;
      v9 = *v46;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v46 != v9)
          {
            objc_enumerationMutation(&unk_28544B400);
          }

          v11 = *(*(&v45 + 1) + 8 * i);
          v12 = [v6 objectForKeyedSubscript:v11];

          if (v12)
          {
            [v6 setObject:@"<<redacted>>" forKeyedSubscript:v11];
          }
        }

        v8 = [&unk_28544B400 countByEnumeratingWithState:&v45 objects:v51 count:16];
      }

      while (v8);
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v13 = [&unk_28544B418 countByEnumeratingWithState:&v41 objects:v50 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v42;
      v16 = 0x277CBE000uLL;
      v34 = *v42;
      v35 = v6;
      do
      {
        v17 = 0;
        v36 = v14;
        do
        {
          if (*v42 != v15)
          {
            objc_enumerationMutation(&unk_28544B418);
          }

          v18 = *(*(&v41 + 1) + 8 * v17);
          v19 = [v6 objectForKeyedSubscript:v18];
          if (v19)
          {
            if ([self _isRedactable:v19])
            {
              v20 = [self _redact:v19];
              [v6 setObject:v20 forKeyedSubscript:v18];
            }

            else
            {
              v21 = *(v16 + 2656);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_38;
              }

              v22 = v19;
              v23 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v22, "count")}];
              v37 = 0u;
              v38 = 0u;
              v39 = 0u;
              v40 = 0u;
              v20 = v22;
              v24 = [v20 countByEnumeratingWithState:&v37 objects:v49 count:16];
              if (v24)
              {
                v25 = v24;
                v26 = *v38;
                do
                {
                  for (j = 0; j != v25; ++j)
                  {
                    if (*v38 != v26)
                    {
                      objc_enumerationMutation(v20);
                    }

                    v28 = *(*(&v37 + 1) + 8 * j);
                    if ([self _isRedactable:v28])
                    {
                      v29 = [self _redact:v28];
                      [v23 addObject:v29];
                    }

                    else
                    {
                      [v23 addObject:v28];
                    }
                  }

                  v25 = [v20 countByEnumeratingWithState:&v37 objects:v49 count:16];
                }

                while (v25);
              }

              v6 = v35;
              [v35 setObject:v23 forKeyedSubscript:v18];

              v15 = v34;
              v14 = v36;
              v16 = 0x277CBE000;
            }
          }

LABEL_38:

          ++v17;
        }

        while (v17 != v14);
        v14 = [&unk_28544B418 countByEnumeratingWithState:&v41 objects:v50 count:16];
      }

      while (v14);
    }

    v4 = v33;
  }

  else
  {
    v6 = v4;
  }

  v30 = *MEMORY[0x277D85DE8];

  return v6;
}

- (uint64_t)_isRedactable:()Redactor
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = 1;
  }

  else
  {
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

@end