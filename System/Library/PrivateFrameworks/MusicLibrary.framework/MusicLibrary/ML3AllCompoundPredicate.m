@interface ML3AllCompoundPredicate
+ (id)predicateByFlatteningAllCompoundPredicate:(id)a3;
+ (id)predicateByMergingContainmentPredicatesAllCompoundPredicate:(id)a3;
@end

@implementation ML3AllCompoundPredicate

+ (id)predicateByMergingContainmentPredicatesAllCompoundPredicate:(id)a3
{
  v99 = *MEMORY[0x277D85DE8];
  v3 = [ML3AllCompoundPredicate predicateByFlatteningAllCompoundPredicate:a3];
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v75 = [MEMORY[0x277CBEB38] dictionary];
  v72 = [MEMORY[0x277CBEB38] dictionary];
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v69 = v3;
  v6 = [v3 predicates];
  v7 = [v6 countByEnumeratingWithState:&v93 objects:v98 count:16];
  v78 = v4;
  if (!v7)
  {
    v76 = 0;
    goto LABEL_54;
  }

  v8 = v7;
  v76 = 0;
  v9 = *v94;
  v83 = v6;
  v71 = v5;
  do
  {
    v10 = 0;
    do
    {
      if (*v94 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v93 + 1) + 8 * v10);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [v11 property];
        v13 = [v12 isEqualToString:@"media_type"];

        if (v13)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_42;
          }

          v14 = v11;
          v15 = [v14 comparison];
          v16 = [v14 value];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ((v15 - 3) < 4 || v15 == 1)
            {
              v17 = [v14 property];
              v18 = [v75 objectForKeyedSubscript:v17];

              v81 = v18;
              if (v18)
              {
                v73 = [v18 unsignedLongLongValue];
              }

              else
              {
                v73 = 0x8000000000000000;
              }

              v19 = [v14 property];
              v20 = [v72 objectForKeyedSubscript:v19];

              v21 = v20;
              if (v20)
              {
                v22 = [v20 unsignedLongLongValue];
              }

              else
              {
                v22 = 0x7FFFFFFFFFFFFFFFLL;
              }

              v23 = (v81 | v20) != 0;
              if ((v15 - 3) > 1)
              {
                v4 = v78;
                if ((v15 - 5) > 1)
                {
                  if (v15 != 1)
                  {
                    goto LABEL_40;
                  }

                  v79 = v21;
                  v70 = v22;
                  v33 = [v16 unsignedLongLongValue];
                  if (v73 <= v33)
                  {
                    v34 = v33;
                  }

                  else
                  {
                    v34 = v73;
                  }

                  v35 = [MEMORY[0x277CCABB0] numberWithLongLong:v34];
                  [v14 property];
                  v36 = v74 = v23;
                  [v75 setObject:v35 forKeyedSubscript:v36];

                  v23 = v74;
                  v31 = MEMORY[0x277CCABB0];
                  if (v70 >= v33)
                  {
                    v32 = v33;
                  }

                  else
                  {
                    v32 = v70;
                  }
                }

                else
                {
                  v79 = v21;
                  v29 = v22;
                  v30 = [v16 unsignedLongLongValue] - (v15 == 5);
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
                v28 = [v14 property];
                [v72 setObject:v27 forKeyedSubscript:v28];
                goto LABEL_39;
              }

              v79 = v21;
              v24 = [v16 unsignedLongLongValue];
              if (v15 == 3)
              {
                v25 = v24 + 1;
              }

              else
              {
                v25 = v24;
              }

              if (v73 <= v25)
              {
                v26 = v25;
              }

              else
              {
                v26 = v73;
              }

              v27 = [MEMORY[0x277CCABB0] numberWithLongLong:v26];
              v28 = [v14 property];
              [v75 setObject:v27 forKeyedSubscript:v28];
              v4 = v78;
LABEL_39:

              [v4 addObject:v14];
              v21 = v79;
LABEL_40:
              v76 |= v23;

              v5 = v71;
            }

            else
            {
              v4 = v78;
            }

            v6 = v83;
LABEL_42:
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_48;
            }

            v37 = v11;
            v38 = [v37 property];
            v16 = [v5 objectForKeyedSubscript:v38];

            v39 = [v37 values];
            v40 = v39;
            if (v16)
            {
              [v16 intersectSet:v39];
              v76 = 1;
            }

            else
            {
              v41 = [v39 mutableCopy];
              v42 = [v37 property];
              [v5 setObject:v41 forKeyedSubscript:v42];

              v4 = v78;
              v6 = v83;
            }

            [v4 addObject:v37];
          }

          else
          {
            v6 = v83;
          }
        }
      }

LABEL_48:
      ++v10;
    }

    while (v8 != v10);
    v43 = [v6 countByEnumeratingWithState:&v93 objects:v98 count:16];
    v8 = v43;
  }

  while (v43);
LABEL_54:

  v89[0] = MEMORY[0x277D85DD0];
  v89[1] = 3221225472;
  v89[2] = __87__ML3AllCompoundPredicate_predicateByMergingContainmentPredicatesAllCompoundPredicate___block_invoke;
  v89[3] = &unk_2787621E0;
  v84 = v75;
  v90 = v84;
  v80 = v72;
  v91 = v80;
  v92 = v5;
  v82 = v92;
  [v92 enumerateKeysAndObjectsUsingBlock:v89];
  if (v76)
  {
    v44 = [MEMORY[0x277CBEB18] array];
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v45 = [v69 predicates];
    v46 = [v45 countByEnumeratingWithState:&v85 objects:v97 count:16];
    if (!v46)
    {
      goto LABEL_84;
    }

    v47 = v46;
    v48 = *v86;
    v77 = v45;
    while (1)
    {
      for (i = 0; i != v47; ++i)
      {
        if (*v86 != v48)
        {
          objc_enumerationMutation(v45);
        }

        v50 = *(*(&v85 + 1) + 8 * i);
        if (![v4 containsObject:v50] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          [v44 addObject:v50];
          continue;
        }

        v51 = [v50 property];
        v52 = [v84 objectForKeyedSubscript:v51];
        v53 = v52;
        if (v52)
        {
          v54 = [v52 unsignedLongLongValue];
        }

        else
        {
          v54 = 0x8000000000000000;
        }

        v55 = [v80 objectForKeyedSubscript:v51];
        v56 = v55;
        if (v55)
        {
          v57 = [v55 unsignedLongLongValue];
        }

        else
        {
          v57 = 0x7FFFFFFFFFFFFFFFLL;
        }

        if (v54 <= v57)
        {
          if (v57 == v54)
          {
            v59 = v51;
            v60 = v56;
            v61 = 1;
          }

          else
          {
            if (v54 != 0x8000000000000000)
            {
              v62 = [ML3ComparisonPredicate predicateWithProperty:v51 value:v53 comparison:4];
              [v44 addObject:v62];
            }

            if (v57 == 0x7FFFFFFFFFFFFFFFLL)
            {
              goto LABEL_79;
            }

            v59 = v51;
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
        [v44 addObject:v58];

LABEL_79:
        v64 = [v82 objectForKeyedSubscript:v51];
        if ([v64 count])
        {
          v65 = [ML3ContainmentPredicate predicateWithProperty:v51 values:v64];
          [v44 addObject:v65];
        }

        [v84 removeObjectForKey:v51];
        [v80 removeObjectForKey:v51];
        [v82 removeObjectForKey:v51];

        v45 = v77;
        v4 = v78;
      }

      v47 = [v45 countByEnumeratingWithState:&v85 objects:v97 count:16];
      if (!v47)
      {
LABEL_84:

        v66 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v44];

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

+ (id)predicateByFlatteningAllCompoundPredicate:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [v4 predicates];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [a1 predicateByFlatteningAllCompoundPredicate:v11];
          v13 = [v12 predicates];
          [v5 addObjectsFromArray:v13];
        }

        else
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v5];

  return v14;
}

@end