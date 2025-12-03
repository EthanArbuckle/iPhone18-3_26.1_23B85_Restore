@interface ML3AllCompoundPredicate
+ (id)predicateByFlatteningAllCompoundPredicate:(id)predicate;
+ (id)predicateByMergingContainmentPredicatesAllCompoundPredicate:(id)predicate;
@end

@implementation ML3AllCompoundPredicate

+ (id)predicateByMergingContainmentPredicatesAllCompoundPredicate:(id)predicate
{
  v99 = *MEMORY[0x277D85DE8];
  v3 = [ML3AllCompoundPredicate predicateByFlatteningAllCompoundPredicate:predicate];
  array = [MEMORY[0x277CBEB18] array];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  dictionary3 = [MEMORY[0x277CBEB38] dictionary];
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v69 = v3;
  predicates = [v3 predicates];
  v7 = [predicates countByEnumeratingWithState:&v93 objects:v98 count:16];
  v78 = array;
  if (!v7)
  {
    v76 = 0;
    goto LABEL_54;
  }

  v8 = v7;
  v76 = 0;
  v9 = *v94;
  v83 = predicates;
  v71 = dictionary;
  do
  {
    v10 = 0;
    do
    {
      if (*v94 != v9)
      {
        objc_enumerationMutation(predicates);
      }

      v11 = *(*(&v93 + 1) + 8 * v10);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        property = [v11 property];
        v13 = [property isEqualToString:@"media_type"];

        if (v13)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_42;
          }

          v14 = v11;
          comparison = [v14 comparison];
          value = [v14 value];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ((comparison - 3) < 4 || comparison == 1)
            {
              property2 = [v14 property];
              v18 = [dictionary2 objectForKeyedSubscript:property2];

              v81 = v18;
              if (v18)
              {
                unsignedLongLongValue = [v18 unsignedLongLongValue];
              }

              else
              {
                unsignedLongLongValue = 0x8000000000000000;
              }

              property3 = [v14 property];
              v20 = [dictionary3 objectForKeyedSubscript:property3];

              v21 = v20;
              if (v20)
              {
                unsignedLongLongValue2 = [v20 unsignedLongLongValue];
              }

              else
              {
                unsignedLongLongValue2 = 0x7FFFFFFFFFFFFFFFLL;
              }

              v23 = (v81 | v20) != 0;
              if ((comparison - 3) > 1)
              {
                array = v78;
                if ((comparison - 5) > 1)
                {
                  if (comparison != 1)
                  {
                    goto LABEL_40;
                  }

                  v79 = v21;
                  v70 = unsignedLongLongValue2;
                  unsignedLongLongValue3 = [value unsignedLongLongValue];
                  if (unsignedLongLongValue <= unsignedLongLongValue3)
                  {
                    v34 = unsignedLongLongValue3;
                  }

                  else
                  {
                    v34 = unsignedLongLongValue;
                  }

                  v35 = [MEMORY[0x277CCABB0] numberWithLongLong:v34];
                  [v14 property];
                  v36 = v74 = v23;
                  [dictionary2 setObject:v35 forKeyedSubscript:v36];

                  v23 = v74;
                  v31 = MEMORY[0x277CCABB0];
                  if (v70 >= unsignedLongLongValue3)
                  {
                    v32 = unsignedLongLongValue3;
                  }

                  else
                  {
                    v32 = v70;
                  }
                }

                else
                {
                  v79 = v21;
                  v29 = unsignedLongLongValue2;
                  v30 = [value unsignedLongLongValue] - (comparison == 5);
                  v31 = MEMORY[0x277CCABB0];
                  if (v29 >= v30)
                  {
                    v32 = v30;
                  }

                  else
                  {
                    v32 = v29;
                  }
                }

                v27 = [v31 numberWithLongLong:v32];
                property4 = [v14 property];
                [dictionary3 setObject:v27 forKeyedSubscript:property4];
                goto LABEL_39;
              }

              v79 = v21;
              unsignedLongLongValue4 = [value unsignedLongLongValue];
              if (comparison == 3)
              {
                v25 = unsignedLongLongValue4 + 1;
              }

              else
              {
                v25 = unsignedLongLongValue4;
              }

              if (unsignedLongLongValue <= v25)
              {
                v26 = v25;
              }

              else
              {
                v26 = unsignedLongLongValue;
              }

              v27 = [MEMORY[0x277CCABB0] numberWithLongLong:v26];
              property4 = [v14 property];
              [dictionary2 setObject:v27 forKeyedSubscript:property4];
              array = v78;
LABEL_39:

              [array addObject:v14];
              v21 = v79;
LABEL_40:
              v76 |= v23;

              dictionary = v71;
            }

            else
            {
              array = v78;
            }

            predicates = v83;
LABEL_42:
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_48;
            }

            v37 = v11;
            property5 = [v37 property];
            value = [dictionary objectForKeyedSubscript:property5];

            values = [v37 values];
            v40 = values;
            if (value)
            {
              [value intersectSet:values];
              v76 = 1;
            }

            else
            {
              v41 = [values mutableCopy];
              property6 = [v37 property];
              [dictionary setObject:v41 forKeyedSubscript:property6];

              array = v78;
              predicates = v83;
            }

            [array addObject:v37];
          }

          else
          {
            predicates = v83;
          }
        }
      }

LABEL_48:
      ++v10;
    }

    while (v8 != v10);
    v43 = [predicates countByEnumeratingWithState:&v93 objects:v98 count:16];
    v8 = v43;
  }

  while (v43);
LABEL_54:

  v89[0] = MEMORY[0x277D85DD0];
  v89[1] = 3221225472;
  v89[2] = __87__ML3AllCompoundPredicate_predicateByMergingContainmentPredicatesAllCompoundPredicate___block_invoke;
  v89[3] = &unk_2787621E0;
  v84 = dictionary2;
  v90 = v84;
  v80 = dictionary3;
  v91 = v80;
  v92 = dictionary;
  v82 = v92;
  [v92 enumerateKeysAndObjectsUsingBlock:v89];
  if (v76)
  {
    array2 = [MEMORY[0x277CBEB18] array];
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    predicates2 = [v69 predicates];
    v46 = [predicates2 countByEnumeratingWithState:&v85 objects:v97 count:16];
    if (!v46)
    {
      goto LABEL_84;
    }

    v47 = v46;
    v48 = *v86;
    v77 = predicates2;
    while (1)
    {
      for (i = 0; i != v47; ++i)
      {
        if (*v86 != v48)
        {
          objc_enumerationMutation(predicates2);
        }

        v50 = *(*(&v85 + 1) + 8 * i);
        if (![array containsObject:v50] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          [array2 addObject:v50];
          continue;
        }

        property7 = [v50 property];
        v52 = [v84 objectForKeyedSubscript:property7];
        v53 = v52;
        if (v52)
        {
          unsignedLongLongValue5 = [v52 unsignedLongLongValue];
        }

        else
        {
          unsignedLongLongValue5 = 0x8000000000000000;
        }

        v55 = [v80 objectForKeyedSubscript:property7];
        v56 = v55;
        if (v55)
        {
          unsignedLongLongValue6 = [v55 unsignedLongLongValue];
        }

        else
        {
          unsignedLongLongValue6 = 0x7FFFFFFFFFFFFFFFLL;
        }

        if (unsignedLongLongValue5 <= unsignedLongLongValue6)
        {
          if (unsignedLongLongValue6 == unsignedLongLongValue5)
          {
            v59 = property7;
            v60 = v56;
            v61 = 1;
          }

          else
          {
            if (unsignedLongLongValue5 != 0x8000000000000000)
            {
              v62 = [ML3ComparisonPredicate predicateWithProperty:property7 value:v53 comparison:4];
              [array2 addObject:v62];
            }

            if (unsignedLongLongValue6 == 0x7FFFFFFFFFFFFFFFLL)
            {
              goto LABEL_79;
            }

            v59 = property7;
            v60 = v56;
            v61 = 6;
          }

          v58 = [ML3ComparisonPredicate predicateWithProperty:v59 value:v60 comparison:v61];
        }

        else
        {
          v58 = +[ML3TruthPredicate falsePredicate];
        }

        v63 = v58;
        [array2 addObject:v58];

LABEL_79:
        v64 = [v82 objectForKeyedSubscript:property7];
        if ([v64 count])
        {
          v65 = [ML3ContainmentPredicate predicateWithProperty:property7 values:v64];
          [array2 addObject:v65];
        }

        [v84 removeObjectForKey:property7];
        [v80 removeObjectForKey:property7];
        [v82 removeObjectForKey:property7];

        predicates2 = v77;
        array = v78;
      }

      v47 = [predicates2 countByEnumeratingWithState:&v85 objects:v97 count:16];
      if (!v47)
      {
LABEL_84:

        v66 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:array2];

        v67 = v69;
        goto LABEL_86;
      }
    }
  }

  v67 = v69;
  v66 = v69;
LABEL_86:

  return v66;
}

void __87__ML3AllCompoundPredicate_predicateByMergingContainmentPredicatesAllCompoundPredicate___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] objectForKeyedSubscript:v3];
  v5 = [a1[5] objectForKeyedSubscript:v3];
  v6 = v5;
  if (v4 | v5)
  {
    if (v4)
    {
      v7 = [v4 unsignedLongLongValue];
      if (v6)
      {
LABEL_4:
        v8 = [v6 unsignedLongLongValue];
LABEL_7:
        v9 = [a1[6] objectForKeyedSubscript:v3];
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __87__ML3AllCompoundPredicate_predicateByMergingContainmentPredicatesAllCompoundPredicate___block_invoke_2;
        v11[3] = &__block_descriptor_48_e22_B24__0__NSNumber_8_B16l;
        v11[4] = v7;
        v11[5] = v8;
        v10 = [v9 objectsPassingTest:v11];
        [a1[6] setObject:v10 forKeyedSubscript:v3];

        goto LABEL_8;
      }
    }

    else
    {
      v7 = 0x8000000000000000;
      if (v5)
      {
        goto LABEL_4;
      }
    }

    v8 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_7;
  }

LABEL_8:
}

+ (id)predicateByFlatteningAllCompoundPredicate:(id)predicate
{
  v21 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  array = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  predicates = [predicateCopy predicates];
  v7 = [predicates countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(predicates);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [self predicateByFlatteningAllCompoundPredicate:v11];
          predicates2 = [v12 predicates];
          [array addObjectsFromArray:predicates2];
        }

        else
        {
          [array addObject:v11];
        }
      }

      v8 = [predicates countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:array];

  return v14;
}

@end