@interface COStateUpdateRequest
+ (id)acceptableResponses;
- (COStateUpdateRequest)initWithCoder:(id)coder;
- (COStateUpdateRequest)initWithUpdates:(id)updates removals:(id)removals;
- (void)encodeWithCoder:(id)coder;
@end

@implementation COStateUpdateRequest

- (COStateUpdateRequest)initWithUpdates:(id)updates removals:(id)removals
{
  updatesCopy = updates;
  removalsCopy = removals;
  v12.receiver = self;
  v12.super_class = COStateUpdateRequest;
  v9 = [(COMeshCommand *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_updates, updates);
    objc_storeStrong(&v10->_removals, removals);
  }

  return v10;
}

- (COStateUpdateRequest)initWithCoder:(id)coder
{
  v69 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v64.receiver = self;
  v64.super_class = COStateUpdateRequest;
  v5 = [(COMeshCommand *)&v64 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = 0x277CBE000uLL;
    v7 = MEMORY[0x277CBEB98];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [v7 setWithObjects:{v8, v9, v10, v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"updates"];
    updates = v5->_updates;
    v5->_updates = v13;

    v15 = [coderCopy decodeObjectOfClasses:v12 forKey:@"removals"];
    removals = v5->_removals;
    v5->_removals = v15;

    if (v5->_updates)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_42;
      }

      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      allKeys = [(NSDictionary *)v5->_updates allKeys];
      v18 = [allKeys countByEnumeratingWithState:&v60 objects:v68 count:16];
      if (v18)
      {
        v19 = *v61;
        v46 = allKeys;
        v47 = v12;
        v41 = *v61;
LABEL_6:
        v20 = 0;
        v42 = v18;
        while (1)
        {
          if (*v61 != v19)
          {
            objc_enumerationMutation(allKeys);
          }

          v44 = v20;
          v21 = *(*(&v60 + 1) + 8 * v20);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            break;
          }

          v22 = [(NSDictionary *)v5->_updates objectForKeyedSubscript:v21];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
LABEL_44:

            break;
          }

          v58 = 0u;
          v59 = 0u;
          v56 = 0u;
          v57 = 0u;
          allKeys2 = [v22 allKeys];
          v24 = [allKeys2 countByEnumeratingWithState:&v56 objects:v67 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v57;
            while (2)
            {
              for (i = 0; i != v25; ++i)
              {
                if (*v57 != v26)
                {
                  objc_enumerationMutation(allKeys2);
                }

                v28 = *(*(&v56 + 1) + 8 * i);
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
LABEL_43:

                  allKeys = v46;
                  v12 = v47;
                  goto LABEL_44;
                }
              }

              v25 = [allKeys2 countByEnumeratingWithState:&v56 objects:v67 count:16];
              if (v25)
              {
                continue;
              }

              break;
            }
          }

          v20 = v44 + 1;
          allKeys = v46;
          v12 = v47;
          v6 = 0x277CBE000uLL;
          v19 = v41;
          if (v44 + 1 == v42)
          {
            v18 = [v46 countByEnumeratingWithState:&v60 objects:v68 count:16];
            if (v18)
            {
              goto LABEL_6;
            }

            goto LABEL_21;
          }
        }

LABEL_45:

        goto LABEL_46;
      }

LABEL_21:
    }

    if (!v5->_removals)
    {
LABEL_48:

      goto LABEL_49;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      allKeys = [(NSDictionary *)v5->_removals allKeys];
      v29 = [allKeys countByEnumeratingWithState:&v52 objects:v66 count:16];
      if (!v29)
      {
LABEL_47:

        goto LABEL_48;
      }

      v30 = *v53;
      v46 = allKeys;
      v47 = v12;
      v43 = *v53;
LABEL_26:
      v31 = 0;
      v45 = v29;
      while (1)
      {
        if (*v53 != v30)
        {
          objc_enumerationMutation(allKeys);
        }

        v32 = *(*(&v52 + 1) + 8 * v31);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_45;
        }

        v22 = [(NSDictionary *)v5->_removals objectForKeyedSubscript:v32];
        v33 = *(v6 + 2968);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_44;
        }

        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        allKeys2 = v22;
        v34 = [allKeys2 countByEnumeratingWithState:&v48 objects:v65 count:16];
        if (v34)
        {
          v35 = v34;
          v36 = *v49;
LABEL_33:
          v37 = 0;
          while (1)
          {
            if (*v49 != v36)
            {
              objc_enumerationMutation(allKeys2);
            }

            v38 = *(*(&v48 + 1) + 8 * v37);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_43;
            }

            if (v35 == ++v37)
            {
              v35 = [allKeys2 countByEnumeratingWithState:&v48 objects:v65 count:16];
              if (v35)
              {
                goto LABEL_33;
              }

              break;
            }
          }
        }

        ++v31;
        allKeys = v46;
        v12 = v47;
        v6 = 0x277CBE000;
        v30 = v43;
        if (v31 == v45)
        {
          v29 = [v46 countByEnumeratingWithState:&v52 objects:v66 count:16];
          if (v29)
          {
            goto LABEL_26;
          }

          goto LABEL_47;
        }
      }
    }

LABEL_42:
    allKeys = v5;
LABEL_46:
    v5 = 0;
    goto LABEL_47;
  }

LABEL_49:

  v39 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = COStateUpdateRequest;
  coderCopy = coder;
  [(COMeshCommand *)&v7 encodeWithCoder:coderCopy];
  v5 = [(COStateUpdateRequest *)self updates:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"updates"];

  removals = [(COStateUpdateRequest *)self removals];
  [coderCopy encodeObject:removals forKey:@"removals"];
}

+ (id)acceptableResponses
{
  v2 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];

  return v2;
}

@end