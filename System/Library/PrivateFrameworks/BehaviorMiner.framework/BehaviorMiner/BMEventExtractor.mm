@interface BMEventExtractor
- (BMEventExtractor)initWithBMMiningTaskConfig:(id)a3;
- (id)extractEventsFilteredByTypes:(id)a3 taskSpecificEventProviders:(id)a4 error:(id *)a5;
@end

@implementation BMEventExtractor

- (BMEventExtractor)initWithBMMiningTaskConfig:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BMEventExtractor;
  v6 = [(BMEventExtractor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_shouldStop = 0;
    objc_storeStrong(&v6->_bmMiningTaskConfig, a3);
  }

  return v7;
}

- (id)extractEventsFilteredByTypes:(id)a3 taskSpecificEventProviders:(id)a4 error:(id *)a5
{
  v168 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v116 = a4;
  v123 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v124 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v152 = 0u;
  v153 = 0u;
  v154 = 0u;
  v155 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v152 objects:v167 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v153;
    do
    {
      v12 = v8;
      for (i = 0; i != v10; ++i)
      {
        if (*v153 != v11)
        {
          objc_enumerationMutation(v12);
        }

        v14 = *(*(&v152 + 1) + 8 * i);
        if ([(BMEventExtractor *)self shouldStop])
        {
          v8 = v12;
          v22 = v12;
          v64 = MEMORY[0x277CBEBF8];
          goto LABEL_106;
        }

        v15 = [v14 eventStream];

        if (v15)
        {
          v16 = [v14 eventStream];
          v17 = [v16 name];
          v18 = [v124 objectForKey:v17];

          if (!v18)
          {
            v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v19 = [v14 eventStream];
            v20 = [v19 name];
            [v124 setObject:v18 forKey:v20];
          }

          [v18 addObject:v14];
          v21 = [v14 eventStream];
          [v123 addObject:v21];
        }
      }

      v8 = v12;
      v10 = [v12 countByEnumeratingWithState:&v152 objects:v167 count:16];
    }

    while (v10);
  }

  v22 = [MEMORY[0x277CBEB18] array];
  if ([v123 count])
  {
    v23 = objc_autoreleasePoolPush();
    v24 = [MEMORY[0x277CFE208] knowledgeStoreWithDirectReadOnlyAccess];
    v25 = MEMORY[0x277CFE1E0];
    v26 = [v123 allObjects];
    v27 = [MEMORY[0x277CFE260] startDateSortDescriptorAscending:0];
    v166 = v27;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v166 count:1];
    v29 = [v25 eventQueryWithPredicate:0 eventStreams:v26 offset:0 limit:50000 sortDescriptors:v28];

    v151 = 0;
    v107 = v29;
    v30 = [v24 executeQuery:v29 error:&v151];
    v31 = v151;
    v32 = v31;
    if (v30)
    {
      v103 = v24;
      v105 = v23;
      v111 = v31;
      v149 = 0u;
      v150 = 0u;
      v147 = 0u;
      v148 = 0u;
      v101 = v30;
      obj = v30;
      v120 = [obj countByEnumeratingWithState:&v147 objects:v165 count:16];
      if (v120)
      {
        context = *v148;
        v102 = v8;
        do
        {
          for (j = 0; j != v120; j = j + 1)
          {
            if (*v148 != context)
            {
              objc_enumerationMutation(obj);
            }

            v34 = *(*(&v147 + 1) + 8 * j);
            if ([(BMEventExtractor *)self shouldStop])
            {

              objc_autoreleasePoolPop(v105);
              v64 = MEMORY[0x277CBEBF8];
              v8 = v102;
              goto LABEL_104;
            }

            v145 = 0u;
            v146 = 0u;
            v143 = 0u;
            v144 = 0u;
            v35 = [v34 stream];
            v36 = [v35 name];
            v37 = [v124 objectForKey:v36];

            v38 = [v37 countByEnumeratingWithState:&v143 objects:v164 count:16];
            if (v38)
            {
              v39 = v38;
              v40 = *v144;
              do
              {
                for (k = 0; k != v39; ++k)
                {
                  if (*v144 != v40)
                  {
                    objc_enumerationMutation(v37);
                  }

                  v42 = *(*(&v143 + 1) + 8 * k);
                  v43 = objc_autoreleasePoolPush();
                  v44 = [v42 extractEventFromDKEvent:v34];
                  if (v44)
                  {
                    [v22 addObject:v44];
                  }

                  objc_autoreleasePoolPop(v43);
                }

                v39 = [v37 countByEnumeratingWithState:&v143 objects:v164 count:16];
              }

              while (v39);
            }
          }

          v8 = v102;
          v120 = [obj countByEnumeratingWithState:&v147 objects:v165 count:16];
        }

        while (v120);
      }

      v32 = v111;
      v24 = v103;
      v23 = v105;
      v30 = v101;
    }

    objc_autoreleasePoolPop(v23);
    if (v32)
    {
      goto LABEL_97;
    }
  }

  v45 = 0x278D06000uLL;
  v46 = +[BMItemType interactionRecipients];
  v47 = [v8 containsObject:v46];

  if (v47)
  {
    v48 = objc_autoreleasePoolPush();
    v49 = BMLog();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
    {
      [BMEventExtractor extractEventsFilteredByTypes:? taskSpecificEventProviders:? error:?];
    }

    v50 = [(BMEventExtractor *)self bmMiningTaskConfig];

    if (v50)
    {
      v51 = BMLog();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
      {
        [BMEventExtractor extractEventsFilteredByTypes:? taskSpecificEventProviders:? error:?];
      }
    }

    v52 = [BMInteractionProvider alloc];
    v53 = [(BMEventExtractor *)self bmMiningTaskConfig];
    v54 = [(BMInteractionProvider *)v52 initWithBMMiningTaskConfig:v53];

    v142 = 0;
    v55 = [(BMInteractionProvider *)v54 interactionEventsForTypes:v8 error:&v142];
    v32 = v142;
    if (v55)
    {
      obja = v54;
      contexta = v48;
      v140 = 0u;
      v141 = 0u;
      v138 = 0u;
      v139 = 0u;
      v108 = v55;
      v121 = v55;
      v56 = [v121 countByEnumeratingWithState:&v138 objects:v163 count:16];
      if (!v56)
      {
        goto LABEL_52;
      }

      v57 = v56;
      v58 = *v139;
      v111 = v32;
      while (1)
      {
        for (m = 0; m != v57; ++m)
        {
          if (*v139 != v58)
          {
            objc_enumerationMutation(v121);
          }

          v60 = *(*(&v138 + 1) + 8 * m);
          if ([(BMEventExtractor *)self shouldStop])
          {
LABEL_101:

            objc_autoreleasePoolPop(contexta);
            v64 = MEMORY[0x277CBEBF8];
LABEL_104:
            v32 = v111;
            goto LABEL_105;
          }

          v61 = [v60 item];
          v62 = [v61 type];
          v63 = [v8 containsObject:v62];

          if (v63)
          {
            [v22 addObject:v60];
          }
        }

        v57 = [v121 countByEnumeratingWithState:&v138 objects:v163 count:16];
        v32 = v111;
        if (!v57)
        {
LABEL_52:

          v45 = 0x278D06000;
          v48 = contexta;
          v54 = obja;
          v55 = v108;
          break;
        }
      }
    }

    objc_autoreleasePoolPop(v48);
  }

  else
  {
    v32 = 0;
  }

  v65 = [*(v45 + 840) locationIdentifier];
  v111 = v32;
  if ([v8 containsObject:v65])
  {
    goto LABEL_59;
  }

  v66 = [*(v45 + 840) enterLocation];
  if ([v8 containsObject:v66])
  {

LABEL_59:
LABEL_60:
    v67 = objc_autoreleasePoolPush();
    v68 = objc_alloc_init(BMCoreRoutineProvider);
    v69 = [(BMCoreRoutineProvider *)v68 locationEvents];
    if (v69)
    {
      obja = v68;
      contexta = v67;
      v136 = 0u;
      v137 = 0u;
      v134 = 0u;
      v135 = 0u;
      v109 = v69;
      v121 = v69;
      v70 = [v121 countByEnumeratingWithState:&v134 objects:v162 count:16];
      if (v70)
      {
        v71 = v70;
        v72 = *v135;
        do
        {
          for (n = 0; n != v71; ++n)
          {
            if (*v135 != v72)
            {
              objc_enumerationMutation(v121);
            }

            v74 = *(*(&v134 + 1) + 8 * n);
            if ([(BMEventExtractor *)self shouldStop])
            {
              goto LABEL_101;
            }

            v75 = [v74 item];
            v76 = [v75 type];
            v77 = [v8 containsObject:v76];

            if (v77)
            {
              [v22 addObject:v74];
            }
          }

          v71 = [v121 countByEnumeratingWithState:&v134 objects:v162 count:16];
        }

        while (v71);
      }

      v69 = v109;
      v32 = v111;
      v67 = contexta;
      v68 = obja;
    }

    objc_autoreleasePoolPop(v67);
    goto LABEL_73;
  }

  v98 = [*(v45 + 840) exitLocation];
  v99 = [v8 containsObject:v98];

  if (v99)
  {
    goto LABEL_60;
  }

LABEL_73:
  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  v78 = v116;
  v79 = [v78 countByEnumeratingWithState:&v130 objects:v161 count:16];
  if (!v79)
  {
    goto LABEL_96;
  }

  v80 = v79;
  v81 = *v131;
  v106 = v78;
  v100 = *v131;
  do
  {
    v82 = 0;
    do
    {
      if (*v131 != v81)
      {
        objc_enumerationMutation(v78);
      }

      objb = v82;
      v83 = *(*(&v130 + 1) + 8 * v82);
      v129 = 0;
      v84 = [v83 eventsForTypes:v8 error:&v129];
      v85 = v129;
      contextb = v85;
      if (v84)
      {
        v127 = 0u;
        v128 = 0u;
        v125 = 0u;
        v126 = 0u;
        v110 = v84;
        v122 = v84;
        v86 = [v122 countByEnumeratingWithState:&v125 objects:v160 count:16];
        if (v86)
        {
          v87 = v86;
          v104 = v80;
          v88 = v8;
          v89 = *v126;
          while (2)
          {
            for (ii = 0; ii != v87; ++ii)
            {
              if (*v126 != v89)
              {
                objc_enumerationMutation(v122);
              }

              v91 = *(*(&v125 + 1) + 8 * ii);
              if ([(BMEventExtractor *)self shouldStop])
              {

                v64 = MEMORY[0x277CBEBF8];
                v8 = v88;
                goto LABEL_104;
              }

              v92 = [v91 item];
              v93 = [v92 type];
              v94 = [v88 containsObject:v93];

              if (v94)
              {
                [v22 addObject:v91];
              }
            }

            v87 = [v122 countByEnumeratingWithState:&v125 objects:v160 count:16];
            if (v87)
            {
              continue;
            }

            break;
          }

          v8 = v88;
          v32 = v111;
          v80 = v104;
          v78 = v106;
          v81 = v100;
        }
      }

      else
      {
        if (!v85)
        {
          goto LABEL_94;
        }

        v110 = 0;
        v122 = BMLog();
        if (os_log_type_enabled(v122, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412546;
          v157 = contextb;
          v158 = 2112;
          v159 = v83;
          _os_log_fault_impl(&dword_241ACA000, v122, OS_LOG_TYPE_FAULT, "Unexpected error in taskSpecificEventProvider {error: %@, provider: %@}", buf, 0x16u);
        }
      }

      v84 = v110;
LABEL_94:

      v82 = objb + 1;
    }

    while (objb + 1 != v80);
    v80 = [v78 countByEnumeratingWithState:&v130 objects:v161 count:16];
  }

  while (v80);
LABEL_96:

  if (v32)
  {
LABEL_97:

    v22 = 0;
  }

  if (a5)
  {
    v95 = v32;
    *a5 = v32;
  }

  v22 = v22;
  v64 = v22;
LABEL_105:

LABEL_106:
  v96 = *MEMORY[0x277D85DE8];

  return v64;
}

- (void)extractEventsFilteredByTypes:(void *)a1 taskSpecificEventProviders:error:.cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 bmMiningTaskConfig];
  OUTLINED_FUNCTION_0_0(&dword_241ACA000, v2, v3, "Passing bmMiningTaskConfig to BMInteractionProvider %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)extractEventsFilteredByTypes:(void *)a1 taskSpecificEventProviders:error:.cold.2(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CCABB0];
  v2 = [a1 bmMiningTaskConfig];
  v3 = [v1 numberWithBool:{objc_msgSend(v2, "interactionExtractedTopicFromAttachmentFactorInUse")}];
  OUTLINED_FUNCTION_0_0(&dword_241ACA000, v4, v5, "Passing bmMiningTaskConfig to BMInteractionProvider with interactionExtractedTopicFromAttachmentFactorInUse as %@", v6, v7, v8, v9, 2u);

  v10 = *MEMORY[0x277D85DE8];
}

@end