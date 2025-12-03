@interface KGElementFilter
+ (id)any;
- (BOOL)isEqual:(id)equal;
- (BOOL)matchesElement:(id)element;
- (BOOL)matchesLabels:(id)labels;
- (BOOL)matchesProperties:(id)properties;
- (KGElementFilter)initWithRequiredLabels:(id)labels optionalLabels:(id)optionalLabels properties:(id)properties;
- (unint64_t)hash;
@end

@implementation KGElementFilter

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_requiredLabels hash]+ 2654435769;
  v4 = ([(NSArray *)self->_optionalLabels hash]+ (v3 << 6) + (v3 >> 2) + 2654435769u) ^ v3;
  return ([(NSDictionary *)self->_properties hash]+ (v4 << 6) + (v4 >> 2) + 2654435769u) ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else if ([(KGElementFilter *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    v6 = [(NSArray *)self->_requiredLabels isEqualToArray:v5->_requiredLabels]&& [(NSArray *)self->_optionalLabels isEqualToArray:v5->_optionalLabels]&& [(NSDictionary *)self->_properties isEqualToDictionary:v5->_properties];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)matchesProperties:(id)properties
{
  v57 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  if (![(NSDictionary *)self->_properties count])
  {
    v6 = 1;
    goto LABEL_68;
  }

  v5 = [(NSDictionary *)self->_properties count];
  if (v5 > [propertiesCopy count])
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
        v15 = [propertiesCopy objectForKeyedSubscript:v13];
        kgPropertyValue = [v15 kgPropertyValue];

        v17 = *(v10 + 2656);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v18 = [v14 containsObject:kgPropertyValue];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v20 = v14;
            value = [v20 value];
            comparator = [v20 comparator];
            if (comparator > 4)
            {
              if (comparator <= 6)
              {
                if (comparator == 5)
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    goto LABEL_64;
                  }

                  v36 = [kgPropertyValue compare:value];

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

                  v24 = [kgPropertyValue compare:value];

                  if (v24 == -1)
                  {
                    goto LABEL_65;
                  }
                }

                goto LABEL_59;
              }

              if (comparator == 7)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  goto LABEL_64;
                }

                v37 = [kgPropertyValue compare:value options:1];

                if (v37)
                {
                  goto LABEL_65;
                }

                goto LABEL_59;
              }

              if (comparator == 8)
              {
                v26 = *(v10 + 2656);
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  goto LABEL_64;
                }

                v43 = v20;
                v44 = v7;
                v27 = kgPropertyValue;
                v28 = value;
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

                      kgPropertyValue = obj;

                      value = v30;
                      v20 = v43;
                      v7 = v44;
                      goto LABEL_64;
                    }
                  }
                }

                v20 = v43;
                v7 = v44;
                value = v42;
              }
            }

            else
            {
              if (comparator > 2)
              {
                if (comparator == 3)
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    goto LABEL_64;
                  }

                  v35 = [kgPropertyValue compare:value];

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

                  v25 = [kgPropertyValue compare:value];

                  if (v25 == 1)
                  {
                    goto LABEL_65;
                  }
                }

                goto LABEL_59;
              }

              switch(comparator)
              {
                case 1:
                  v38 = [value isEqual:kgPropertyValue];

                  if ((v38 & 1) == 0)
                  {
                    goto LABEL_65;
                  }

                  goto LABEL_59;
                case 2:
                  v23 = [value isEqual:kgPropertyValue];

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

          v18 = [kgPropertyValue isEqual:v14];
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

- (BOOL)matchesLabels:(id)labels
{
  labelsCopy = labels;
  v5 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:labelsCopy];
  v11 = 0;
  if (!-[NSArray count](self->_requiredLabels, "count") || (v6 = -[NSArray count](self->_requiredLabels, "count"), v6 <= [labelsCopy count]) && (v7 = objc_msgSend(objc_alloc(MEMORY[0x277CBEB98]), "initWithArray:", self->_requiredLabels), v8 = objc_msgSend(v7, "isSubsetOfSet:", v5), v7, v8))
  {
    if (!-[NSArray count](self->_optionalLabels, "count") || (v9 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:self->_optionalLabels], v10 = objc_msgSend(v5, "intersectsSet:", v9), v9, v10))
    {
      v11 = 1;
    }
  }

  return v11;
}

- (BOOL)matchesElement:(id)element
{
  elementCopy = element;
  labels = [elementCopy labels];
  allObjects = [labels allObjects];
  v7 = [(KGElementFilter *)self matchesLabels:allObjects];

  if (v7)
  {
    properties = [elementCopy properties];
    v9 = [(KGElementFilter *)self matchesProperties:properties];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (KGElementFilter)initWithRequiredLabels:(id)labels optionalLabels:(id)optionalLabels properties:(id)properties
{
  labelsCopy = labels;
  optionalLabelsCopy = optionalLabels;
  propertiesCopy = properties;
  v15.receiver = self;
  v15.super_class = KGElementFilter;
  v12 = [(KGElementFilter *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_requiredLabels, labels);
    objc_storeStrong(&v13->_optionalLabels, optionalLabels);
    objc_storeStrong(&v13->_properties, properties);
  }

  return v13;
}

+ (id)any
{
  v2 = [self alloc];
  v3 = [v2 initWithRequiredLabels:MEMORY[0x277CBEBF8] optionalLabels:MEMORY[0x277CBEBF8] properties:MEMORY[0x277CBEC10]];

  return v3;
}

@end