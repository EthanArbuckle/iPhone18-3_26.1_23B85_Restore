@interface COStateReadResponse
- (COStateReadResponse)initWithCoder:(id)a3;
- (COStateReadResponse)initWithState:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation COStateReadResponse

- (COStateReadResponse)initWithState:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = COStateReadResponse;
  v6 = [(COMeshCommand *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_state, a3);
  }

  return v7;
}

- (COStateReadResponse)initWithCoder:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v43.receiver = self;
  v43.super_class = COStateReadResponse;
  v5 = [(COMeshResponse *)&v43 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = 0x277CBE000uLL;
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v6 setWithObjects:{v8, v9, v10, objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"state"];
    state = v5->_state;
    v5->_state = v12;

    if (v5->_state)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v14 = [(NSDictionary *)v5->_state allKeys];
        v15 = [v14 countByEnumeratingWithState:&v39 objects:v45 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v40;
          v33 = v14;
          v34 = v11;
          v30 = *v40;
          while (2)
          {
            v18 = 0;
            v31 = v16;
            do
            {
              if (*v40 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v32 = v18;
              v19 = *(*(&v39 + 1) + 8 * v18);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_25;
              }

              v20 = [(NSDictionary *)v5->_state objectForKeyedSubscript:v19];
              v21 = *(v7 + 2752);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
LABEL_24:

LABEL_25:
                goto LABEL_26;
              }

              v37 = 0u;
              v38 = 0u;
              v35 = 0u;
              v36 = 0u;
              v22 = v20;
              v23 = [v22 countByEnumeratingWithState:&v35 objects:v44 count:16];
              if (v23)
              {
                v24 = v23;
                v25 = *v36;
                while (2)
                {
                  for (i = 0; i != v24; ++i)
                  {
                    if (*v36 != v25)
                    {
                      objc_enumerationMutation(v22);
                    }

                    v27 = *(*(&v35 + 1) + 8 * i);
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {

                      v14 = v33;
                      v11 = v34;
                      goto LABEL_24;
                    }
                  }

                  v24 = [v22 countByEnumeratingWithState:&v35 objects:v44 count:16];
                  if (v24)
                  {
                    continue;
                  }

                  break;
                }
              }

              v18 = v32 + 1;
              v14 = v33;
              v11 = v34;
              v7 = 0x277CBE000;
              v17 = v30;
            }

            while (v32 + 1 != v31);
            v16 = [v33 countByEnumeratingWithState:&v39 objects:v45 count:16];
            if (v16)
            {
              continue;
            }

            break;
          }
        }
      }

      else
      {
        v14 = v5;
LABEL_26:
        v5 = 0;
      }
    }
  }

  v28 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = COStateReadResponse;
  v4 = a3;
  [(COMeshResponse *)&v6 encodeWithCoder:v4];
  v5 = [(COStateReadResponse *)self state:v6.receiver];
  [v4 encodeObject:v5 forKey:@"state"];
}

@end