@interface _CDQueryInteractionAdvisor
- (_CDQueryInteractionAdvisor)initWithStore:(id)a3;
- (id)adviseInteractionsForKeywordsInString:(id)a3 usingSettings:(id)a4;
@end

@implementation _CDQueryInteractionAdvisor

- (_CDQueryInteractionAdvisor)initWithStore:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _CDQueryInteractionAdvisor;
  v5 = [(_CDQueryInteractionAdvisor *)&v8 init];
  store = v5->_store;
  v5->_store = v4;

  return v5;
}

- (id)adviseInteractionsForKeywordsInString:(id)a3 usingSettings:(id)a4
{
  v138 = *MEMORY[0x1E69E9840];
  v75 = a3;
  v74 = a4;
  store = self->_store;
  v7 = [MEMORY[0x1E696AE18] predicateWithValue:1];
  v80 = [(_CDInteractionStore *)store countInteractionsUsingPredicate:v7 error:0];

  v73 = [v74 copy];
  v8 = MEMORY[0x1E695DFA8];
  v9 = [v74 constrainKeywords];
  v72 = [v8 setWithSet:v9];

  v10 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v11 = [v75 componentsSeparatedByCharactersInSet:v10];
  [v72 addObjectsFromArray:v11];

  [v73 setConstrainKeywords:v72];
  v71 = [v73 interactionPredicate];
  v12 = [(_CDInteractionStore *)self->_store queryInteractionsUsingPredicate:v71 sortDescriptors:0 limit:0 error:0];
  v13 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v86 = [v75 componentsSeparatedByCharactersInSet:v13];

  v84 = [MEMORY[0x1E695DFD8] setWithArray:v86];
  v87 = [v86 count];
  v125 = 0;
  v126 = &v125;
  v127 = 0x3032000000;
  v128 = __Block_byref_object_copy__7;
  v129 = __Block_byref_object_dispose__7;
  v130 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:100];
  v119 = 0;
  v120 = &v119;
  v121 = 0x3032000000;
  v122 = __Block_byref_object_copy__7;
  v123 = __Block_byref_object_dispose__7;
  v124 = [MEMORY[0x1E695DF70] arrayWithCapacity:100];
  v118[0] = MEMORY[0x1E69E9820];
  v118[1] = 3221225472;
  v118[2] = __82___CDQueryInteractionAdvisor_adviseInteractionsForKeywordsInString_usingSettings___block_invoke;
  v118[3] = &unk_1E7368320;
  v118[4] = &v125;
  v118[5] = &v119;
  v118[6] = v87;
  v14 = MEMORY[0x193B00C50](v118);
  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  v76 = v12;
  v81 = [v76 countByEnumeratingWithState:&v114 objects:v137 count:16];
  if (v81)
  {
    v82 = *v115;
    do
    {
      for (i = 0; i != v81; ++i)
      {
        if (*v115 != v82)
        {
          objc_enumerationMutation(v76);
        }

        v15 = *(*(&v114 + 1) + 8 * i);
        v110 = 0u;
        v111 = 0u;
        v112 = 0u;
        v113 = 0u;
        v16 = [v15 keywords];
        v17 = [v16 countByEnumeratingWithState:&v110 objects:v136 count:16];
        if (v17)
        {
          v88 = *v111;
          v85 = v16;
          do
          {
            v89 = v17;
            for (j = 0; j != v89; j = (j + 1))
            {
              if (*v111 != v88)
              {
                objc_enumerationMutation(v16);
              }

              v19 = *(*(&v110 + 1) + 8 * j);
              if ([v84 containsObject:v19])
              {
                v20 = [v15 sender];
                (v14)[2](v14, v20, v19);

                v108 = 0u;
                v109 = 0u;
                v106 = 0u;
                v107 = 0u;
                v21 = [v15 recipients];
                v22 = [v21 countByEnumeratingWithState:&v106 objects:v135 count:16];
                if (v22)
                {
                  v23 = *v107;
                  do
                  {
                    for (k = 0; k != v22; ++k)
                    {
                      if (*v107 != v23)
                      {
                        objc_enumerationMutation(v21);
                      }

                      v14[2](v14, *(*(&v106 + 1) + 8 * k), v19);
                    }

                    v22 = [v21 countByEnumeratingWithState:&v106 objects:v135 count:16];
                  }

                  while (v22);
                }

                v16 = v85;
              }
            }

            v17 = [v16 countByEnumeratingWithState:&v110 objects:v136 count:16];
          }

          while (v17);
        }
      }

      v81 = [v76 countByEnumeratingWithState:&v114 objects:v137 count:16];
    }

    while (v81);
  }

  v70 = &v68;
  MEMORY[0x1EEE9AC00]();
  v85 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  i = v25;
  bzero(v85, v25);
  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v26 = v126[5];
  v27 = [v26 countByEnumeratingWithState:&v102 objects:v134 count:16];
  if (v27)
  {
    v28 = *v103;
    do
    {
      for (m = 0; m != v27; ++m)
      {
        if (*v103 != v28)
        {
          objc_enumerationMutation(v26);
        }

        v30 = [v126[5] objectForKeyedSubscript:*(*(&v102 + 1) + 8 * m)];
        if (v87)
        {
          for (n = 0; n != v87; ++n)
          {
            v32 = [v86 objectAtIndexedSubscript:n];
            v33 = [v30 objectForKey:v32];

            if (v33)
            {
              *&v85[4 * n] = *&v85[4 * n] + 1.0;
            }
          }
        }
      }

      v27 = [v26 countByEnumeratingWithState:&v102 objects:v134 count:16];
    }

    while (v27);
  }

  if (v87)
  {
    v34 = v80;
    v35 = v87;
    v36 = v85;
    do
    {
      *v36 = logf(v34 / *v36);
      ++v36;
      --v35;
    }

    while (v35);
  }

  v69 = [v120[5] count];
  MEMORY[0x1EEE9AC00]();
  v77 = &v68 - v37;
  bzero(&v68 - v37, v38);
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v78 = v120[5];
  v80 = [v78 countByEnumeratingWithState:&v98 objects:v133 count:16];
  if (v80)
  {
    v81 = 0;
    v79 = *v99;
    do
    {
      v81 = v81;
      v82 = 0;
      v89 = &v77[i * v81];
      do
      {
        if (*v99 != v79)
        {
          objc_enumerationMutation(v78);
        }

        v39 = *(*(&v98 + 1) + 8 * v82);
        v94 = 0u;
        v95 = 0u;
        v96 = 0u;
        v97 = 0u;
        v88 = v86;
        v40 = [v88 countByEnumeratingWithState:&v94 objects:v132 count:16];
        if (v40)
        {
          LODWORD(v41) = 0;
          v42 = *v95;
          do
          {
            v43 = 0;
            v41 = v41;
            do
            {
              if (*v95 != v42)
              {
                objc_enumerationMutation(v88);
              }

              v44 = *(*(&v94 + 1) + 8 * v43);
              v45 = [v126[5] objectForKeyedSubscript:v39];
              v46 = [v45 objectForKeyedSubscript:v44];
              LODWORD(v44) = [v46 intValue];

              v89[v41++] = v44;
              ++v43;
            }

            while (v40 != v43);
            v40 = [v88 countByEnumeratingWithState:&v94 objects:v132 count:16];
          }

          while (v40);
        }

        v89 = (v89 + i);
        ++v81;
        ++v82;
      }

      while (v82 != v80);
      v80 = [v78 countByEnumeratingWithState:&v98 objects:v133 count:16];
    }

    while (v80);
  }

  v89 = [v76 firstObject];
  v82 = [MEMORY[0x1E695DF70] arrayWithCapacity:v69];
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v80 = v120[5];
  v47 = [v80 countByEnumeratingWithState:&v90 objects:v131 count:16];
  if (v47)
  {
    v48 = 0;
    v81 = *v91;
    do
    {
      v49 = 0;
      v50 = &v77[i * v48];
      v88 = v47;
      do
      {
        if (*v91 != v81)
        {
          objc_enumerationMutation(v80);
        }

        v51 = *(*(&v90 + 1) + 8 * v49);
        v52 = objc_alloc_init(_CDAdvisedInteraction);
        -[_CDAdvisedInteraction setMechanism:](v52, "setMechanism:", [v89 mechanism]);
        v53 = [v89 bundleId];
        [(_CDAdvisedInteraction *)v52 setBundleId:v53];

        v54 = [v89 account];
        [(_CDAdvisedInteraction *)v52 setAccount:v54];
        v55 = v87 == 0;

        v56 = 0.0;
        if (!v55)
        {
          v57 = v87;
          v58 = v50;
          v59 = v85;
          do
          {
            v60 = *v58++;
            v61 = v60;
            v62 = *v59++;
            v56 = v56 + (v61 * v62);
            --v57;
          }

          while (v57);
        }

        [(_CDAdvisedInteraction *)v52 setScore:v56];
        [(_CDAdvisedInteraction *)v52 setContact:v51];
        [v82 addObject:v52];

        ++v48;
        v49 = v49 + 1;
        v50 += i;
      }

      while (v49 != v88);
      v47 = [v80 countByEnumeratingWithState:&v90 objects:v131 count:16];
    }

    while (v47);
  }

  v63 = [v82 sortedArrayUsingComparator:&__block_literal_global_20];
  v64 = [v74 resultLimit];
  if (v64 < [v63 count])
  {
    v65 = [v63 subarrayWithRange:{0, objc_msgSend(v74, "resultLimit")}];

    v63 = v65;
  }

  _Block_object_dispose(&v119, 8);
  _Block_object_dispose(&v125, 8);

  v66 = *MEMORY[0x1E69E9840];

  return v63;
}

@end