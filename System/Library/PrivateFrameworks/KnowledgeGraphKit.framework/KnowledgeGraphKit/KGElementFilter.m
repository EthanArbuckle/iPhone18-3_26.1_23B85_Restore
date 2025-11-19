@interface KGElementFilter
+ (id)any;
- (BOOL)isEqual:(id)a3;
- (BOOL)matchesElement:(id)a3;
- (BOOL)matchesLabels:(id)a3;
- (BOOL)matchesProperties:(id)a3;
- (KGElementFilter)initWithRequiredLabels:(id)a3 optionalLabels:(id)a4 properties:(id)a5;
- (unint64_t)hash;
@end

@implementation KGElementFilter

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_requiredLabels hash]+ 2654435769;
  v4 = ([(NSArray *)self->_optionalLabels hash]+ (v3 << 6) + (v3 >> 2) + 2654435769u) ^ v3;
  return ([(NSDictionary *)self->_properties hash]+ (v4 << 6) + (v4 >> 2) + 2654435769u) ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else if ([(KGElementFilter *)v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [(NSArray *)self->_requiredLabels isEqualToArray:v5->_requiredLabels]&& [(NSArray *)self->_optionalLabels isEqualToArray:v5->_optionalLabels]&& [(NSDictionary *)self->_properties isEqualToDictionary:v5->_properties];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)matchesProperties:(id)a3
{
  v57 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(NSDictionary *)self->_properties count])
  {
    v6 = 1;
    goto LABEL_68;
  }

  v5 = [(NSDictionary *)self->_properties count];
  if (v5 > [v4 count])
  {
    v6 = 0;
    goto LABEL_68;
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v7 = self->_properties;
  v8 = [(NSDictionary *)v7 countByEnumeratingWithState:&v51 objects:v56 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0x277CBE000uLL;
    v11 = *v52;
    do
    {
      v12 = 0;
      do
      {
        if (*v52 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v51 + 1) + 8 * v12);
        v14 = [(NSDictionary *)self->_properties objectForKeyedSubscript:v13, v42];
        v15 = [v4 objectForKeyedSubscript:v13];
        v16 = [v15 kgPropertyValue];

        v17 = *(v10 + 2656);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v18 = [v14 containsObject:v16];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v20 = v14;
            v21 = [v20 value];
            v22 = [v20 comparator];
            if (v22 > 4)
            {
              if (v22 <= 6)
              {
                if (v22 == 5)
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    goto LABEL_64;
                  }

                  v36 = [v16 compare:v21];

                  if (v36 != 1)
                  {
                    goto LABEL_65;
                  }
                }

                else
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    goto LABEL_64;
                  }

                  v24 = [v16 compare:v21];

                  if (v24 == -1)
                  {
                    goto LABEL_65;
                  }
                }

                goto LABEL_59;
              }

              if (v22 == 7)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  goto LABEL_64;
                }

                v37 = [v16 compare:v21 options:1];

                if (v37)
                {
                  goto LABEL_65;
                }

                goto LABEL_59;
              }

              if (v22 == 8)
              {
                v26 = *(v10 + 2656);
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  goto LABEL_64;
                }

                v43 = v20;
                v44 = v7;
                v27 = v16;
                v28 = v21;
                v29 = v27;
                v42 = v28;
                v30 = v28;
                v46 = 0u;
                v47 = 0u;
                v48 = 0u;
                v49 = 0u;
                obj = v29;
                v31 = [obj countByEnumeratingWithState:&v46 objects:v55 count:16];
                if (v31)
                {
                  v32 = v31;
                  v33 = *v47;
LABEL_38:
                  v34 = 0;
                  while (1)
                  {
                    if (*v47 != v33)
                    {
                      objc_enumerationMutation(obj);
                    }

                    if (![*(*(&v46 + 1) + 8 * v34) compare:v30 options:{1, v42}])
                    {
                      break;
                    }

                    if (v32 == ++v34)
                    {
                      v32 = [obj countByEnumeratingWithState:&v46 objects:v55 count:16];
                      if (v32)
                      {
                        goto LABEL_38;
                      }

                      v16 = obj;

                      v21 = v30;
                      v20 = v43;
                      v7 = v44;
                      goto LABEL_64;
                    }
                  }
                }

                v20 = v43;
                v7 = v44;
                v21 = v42;
              }
            }

            else
            {
              if (v22 > 2)
              {
                if (v22 == 3)
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    goto LABEL_64;
                  }

                  v35 = [v16 compare:v21];

                  if (v35 != -1)
                  {
                    goto LABEL_65;
                  }
                }

                else
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    goto LABEL_64;
                  }

                  v25 = [v16 compare:v21];

                  if (v25 == 1)
                  {
                    goto LABEL_65;
                  }
                }

                goto LABEL_59;
              }

              switch(v22)
              {
                case 1:
                  v38 = [v21 isEqual:v16];

                  if ((v38 & 1) == 0)
                  {
                    goto LABEL_65;
                  }

                  goto LABEL_59;
                case 2:
                  v23 = [v21 isEqual:v16];

                  if (v23)
                  {
                    goto LABEL_65;
                  }

                  goto LABEL_59;
                case 0:
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
                  {
                    *buf = 0;
                    _os_log_fault_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "KGBinaryPredicate is KGPredicateComparator_None", buf, 2u);
                  }

LABEL_64:

LABEL_65:
LABEL_66:
                  v6 = 0;
                  goto LABEL_67;
              }
            }

LABEL_59:
            v10 = 0x277CBE000;
            goto LABEL_14;
          }

          v18 = [v16 isEqual:v14];
        }

        v19 = v18;

        if ((v19 & 1) == 0)
        {
          goto LABEL_66;
        }

LABEL_14:
        ++v12;
      }

      while (v12 != v9);
      v39 = [(NSDictionary *)v7 countByEnumeratingWithState:&v51 objects:v56 count:16];
      v9 = v39;
    }

    while (v39);
  }

  v6 = 1;
LABEL_67:

LABEL_68:
  v40 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)matchesLabels:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v4];
  v11 = 0;
  if (!-[NSArray count](self->_requiredLabels, "count") || (v6 = -[NSArray count](self->_requiredLabels, "count"), v6 <= [v4 count]) && (v7 = objc_msgSend(objc_alloc(MEMORY[0x277CBEB98]), "initWithArray:", self->_requiredLabels), v8 = objc_msgSend(v7, "isSubsetOfSet:", v5), v7, v8))
  {
    if (!-[NSArray count](self->_optionalLabels, "count") || (v9 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:self->_optionalLabels], v10 = objc_msgSend(v5, "intersectsSet:", v9), v9, v10))
    {
      v11 = 1;
    }
  }

  return v11;
}

- (BOOL)matchesElement:(id)a3
{
  v4 = a3;
  v5 = [v4 labels];
  v6 = [v5 allObjects];
  v7 = [(KGElementFilter *)self matchesLabels:v6];

  if (v7)
  {
    v8 = [v4 properties];
    v9 = [(KGElementFilter *)self matchesProperties:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (KGElementFilter)initWithRequiredLabels:(id)a3 optionalLabels:(id)a4 properties:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = KGElementFilter;
  v12 = [(KGElementFilter *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_requiredLabels, a3);
    objc_storeStrong(&v13->_optionalLabels, a4);
    objc_storeStrong(&v13->_properties, a5);
  }

  return v13;
}

+ (id)any
{
  v2 = [a1 alloc];
  v3 = [v2 initWithRequiredLabels:MEMORY[0x277CBEBF8] optionalLabels:MEMORY[0x277CBEBF8] properties:MEMORY[0x277CBEC10]];

  return v3;
}

@end