@interface CRPreflightUtils
+ (BOOL)_hasSameKey:(id)key this:(id)this other:(id)other;
+ (id)_mergeActivationLocks:(id)locks;
+ (id)activationResults:(id)results;
+ (id)parseChallengeObject:(id)object withHandler:(id)handler;
+ (id)spcResults:(id)results;
@end

@implementation CRPreflightUtils

+ (id)spcResults:(id)results
{
  v160 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  if (resultsCopy)
  {
    v4 = +[CRFDRDeviceController sharedSingleton];
    getHandlerForDevice = [v4 getHandlerForDevice];

    if (getHandlerForDevice)
    {
      v6 = MEMORY[0x1E695DFA8];
      [resultsCopy objectForKeyedSubscript:@"passComponents"];
      v8 = v7 = resultsCopy;
      v9 = [v6 setWithArray:v8];

      v10 = MEMORY[0x1E695DFA8];
      v11 = [v7 objectForKeyedSubscript:@"failComponents"];
      v12 = [v10 setWithArray:v11];

      v13 = MEMORY[0x1E695DFA8];
      v14 = [v7 objectForKeyedSubscript:@"lockComponents"];
      v15 = [v13 setWithArray:v14];

      v16 = MEMORY[0x1E695DFA8];
      v17 = [v7 objectForKeyedSubscript:@"unauthComponents"];
      v18 = [v16 setWithArray:v17];

      v19 = MEMORY[0x1E695DFA8];
      v20 = [v7 objectForKeyedSubscript:@"lostComponents"];
      v116 = [v19 setWithArray:v20];

      v21 = MEMORY[0x1E695DFA8];
      v22 = [v7 objectForKeyedSubscript:@"deniedComponents"];
      v114 = [v21 setWithArray:v22];

      v23 = MEMORY[0x1E695DFA8];
      v109 = v7;
      v24 = [v7 objectForKeyedSubscript:@"sealedComponents"];
      v112 = [v23 setWithArray:v24];

      [v12 minusSet:v9];
      v123 = objc_opt_new();
      v149 = 0u;
      v150 = 0u;
      v151 = 0u;
      v152 = 0u;
      obj = v9;
      v25 = [obj countByEnumeratingWithState:&v149 objects:v159 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v150;
        do
        {
          for (i = 0; i != v26; ++i)
          {
            if (*v150 != v27)
            {
              objc_enumerationMutation(obj);
            }

            v29 = *(*(&v149 + 1) + 8 * i);
            dataKey = [v29 dataKey];
            dataIdentifier = [v29 dataIdentifier];
            v32 = [getHandlerForDevice spcWithComponent:dataKey withIdentifier:dataIdentifier];

            if (v32)
            {
              [v123 addObject:v32];
            }
          }

          v26 = [obj countByEnumeratingWithState:&v149 objects:v159 count:16];
        }

        while (v26);
      }

      v124 = objc_opt_new();
      v145 = 0u;
      v146 = 0u;
      v147 = 0u;
      v148 = 0u;
      v33 = v12;
      v34 = [v33 countByEnumeratingWithState:&v145 objects:v158 count:16];
      if (v34)
      {
        v35 = v34;
        v36 = *v146;
        do
        {
          for (j = 0; j != v35; ++j)
          {
            if (*v146 != v36)
            {
              objc_enumerationMutation(v33);
            }

            v38 = *(*(&v145 + 1) + 8 * j);
            dataKey2 = [v38 dataKey];
            dataIdentifier2 = [v38 dataIdentifier];
            v41 = [getHandlerForDevice spcWithComponent:dataKey2 withIdentifier:dataIdentifier2];

            if (v41)
            {
              [v124 addObject:v41];
            }
          }

          v35 = [v33 countByEnumeratingWithState:&v145 objects:v158 count:16];
        }

        while (v35);
      }

      v122 = objc_opt_new();
      v141 = 0u;
      v142 = 0u;
      v143 = 0u;
      v144 = 0u;
      v119 = v15;
      v42 = [v119 countByEnumeratingWithState:&v141 objects:v157 count:16];
      if (v42)
      {
        v43 = v42;
        v44 = *v142;
        do
        {
          for (k = 0; k != v43; ++k)
          {
            if (*v142 != v44)
            {
              objc_enumerationMutation(v119);
            }

            v46 = *(*(&v141 + 1) + 8 * k);
            dataKey3 = [v46 dataKey];
            dataIdentifier3 = [v46 dataIdentifier];
            v49 = [getHandlerForDevice spcWithComponent:dataKey3 withIdentifier:dataIdentifier3];

            if (v49)
            {
              [v122 addObject:v49];
            }
          }

          v43 = [v119 countByEnumeratingWithState:&v141 objects:v157 count:16];
        }

        while (v43);
      }

      v50 = objc_opt_new();
      v137 = 0u;
      v138 = 0u;
      v139 = 0u;
      v140 = 0u;
      v118 = v18;
      v51 = [v118 countByEnumeratingWithState:&v137 objects:v156 count:16];
      if (v51)
      {
        v52 = v51;
        v53 = *v138;
        do
        {
          for (m = 0; m != v52; ++m)
          {
            if (*v138 != v53)
            {
              objc_enumerationMutation(v118);
            }

            v55 = *(*(&v137 + 1) + 8 * m);
            dataKey4 = [v55 dataKey];
            dataIdentifier4 = [v55 dataIdentifier];
            v58 = [getHandlerForDevice spcWithComponent:dataKey4 withIdentifier:dataIdentifier4];

            if (v58)
            {
              [v50 addObject:v58];
            }
          }

          v52 = [v118 countByEnumeratingWithState:&v137 objects:v156 count:16];
        }

        while (v52);
      }

      v121 = objc_opt_new();
      v133 = 0u;
      v134 = 0u;
      v135 = 0u;
      v136 = 0u;
      v117 = v116;
      v59 = [v117 countByEnumeratingWithState:&v133 objects:v155 count:16];
      if (v59)
      {
        v60 = v59;
        v61 = *v134;
        do
        {
          for (n = 0; n != v60; ++n)
          {
            if (*v134 != v61)
            {
              objc_enumerationMutation(v117);
            }

            v63 = *(*(&v133 + 1) + 8 * n);
            dataKey5 = [v63 dataKey];
            dataIdentifier5 = [v63 dataIdentifier];
            v66 = [getHandlerForDevice spcWithComponent:dataKey5 withIdentifier:dataIdentifier5];

            if (v66)
            {
              [v121 addObject:v66];
            }
          }

          v60 = [v117 countByEnumeratingWithState:&v133 objects:v155 count:16];
        }

        while (v60);
      }

      v107 = v50;

      v67 = objc_opt_new();
      v129 = 0u;
      v130 = 0u;
      v131 = 0u;
      v132 = 0u;
      v115 = v114;
      v68 = [v115 countByEnumeratingWithState:&v129 objects:v154 count:16];
      if (v68)
      {
        v69 = v68;
        v70 = *v130;
        do
        {
          for (ii = 0; ii != v69; ++ii)
          {
            if (*v130 != v70)
            {
              objc_enumerationMutation(v115);
            }

            v72 = *(*(&v129 + 1) + 8 * ii);
            dataKey6 = [v72 dataKey];
            dataIdentifier6 = [v72 dataIdentifier];
            v75 = [getHandlerForDevice spcWithComponent:dataKey6 withIdentifier:dataIdentifier6];

            if (v75)
            {
              [v67 addObject:v75];
            }
          }

          v69 = [v115 countByEnumeratingWithState:&v129 objects:v154 count:16];
        }

        while (v69);
      }

      v110 = v67;
      v108 = v33;

      v111 = objc_opt_new();
      v125 = 0u;
      v126 = 0u;
      v127 = 0u;
      v128 = 0u;
      v113 = v112;
      v76 = [v113 countByEnumeratingWithState:&v125 objects:v153 count:16];
      if (v76)
      {
        v77 = v76;
        v78 = *v126;
        do
        {
          for (jj = 0; jj != v77; ++jj)
          {
            if (*v126 != v78)
            {
              objc_enumerationMutation(v113);
            }

            v80 = *(*(&v125 + 1) + 8 * jj);
            dataKey7 = [v80 dataKey];
            v82 = [dataKey7 isEqual:@"MSRk"];

            if (!v82)
            {
              goto LABEL_66;
            }

            dataKey8 = [v80 dataKey];
            v84 = [CRFDRUtils findUnsealedDataWithKey:dataKey8 error:0];

            if (v84 && [v84 count])
            {

LABEL_66:
              dataKey9 = [v80 dataKey];
              dataIdentifier7 = [v80 dataIdentifier];
              v84 = [getHandlerForDevice spcWithComponent:dataKey9 withIdentifier:dataIdentifier7];

              if (v84)
              {
                [v111 addObject:v84];
              }

              goto LABEL_71;
            }

            dataKey10 = [v80 dataKey];
            dataIdentifier8 = [v80 dataIdentifier];
            v89 = [getHandlerForDevice spcWithComponent:dataKey10 withIdentifier:dataIdentifier8];

            if (v89)
            {
              [v124 addObject:v89];
            }

LABEL_71:
          }

          v77 = [v113 countByEnumeratingWithState:&v125 objects:v153 count:16];
        }

        while (v77);
      }

      [v111 minusSet:v123];
      [v111 minusSet:v122];
      [v111 minusSet:v107];
      [v111 minusSet:v124];
      [v111 minusSet:v121];
      [v111 minusSet:v110];
      [v123 minusSet:v122];
      [v123 minusSet:v107];
      [v123 minusSet:v124];
      [v123 minusSet:v121];
      [v123 minusSet:v110];
      [v122 minusSet:v107];
      [v122 minusSet:v124];
      [v122 minusSet:v121];
      [v122 minusSet:v110];
      [v107 minusSet:v124];
      [v107 minusSet:v121];
      [v107 minusSet:v110];
      [v124 minusSet:v121];
      [v124 minusSet:v110];
      [v121 minusSet:v110];
      v90 = handleForCategory(0);
      if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
      {
        +[CRPreflightUtils spcResults:];
      }

      v91 = handleForCategory(0);
      resultsCopy = v109;
      if (os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
      {
        +[CRPreflightUtils spcResults:];
      }

      v92 = handleForCategory(0);
      if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
      {
        +[CRPreflightUtils spcResults:];
      }

      v93 = handleForCategory(0);
      if (os_log_type_enabled(v93, OS_LOG_TYPE_DEBUG))
      {
        +[CRPreflightUtils spcResults:];
      }

      v94 = handleForCategory(0);
      if (os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG))
      {
        +[CRPreflightUtils spcResults:];
      }

      v95 = handleForCategory(0);
      if (os_log_type_enabled(v95, OS_LOG_TYPE_DEBUG))
      {
        +[CRPreflightUtils spcResults:];
      }

      v96 = handleForCategory(0);
      if (os_log_type_enabled(v96, OS_LOG_TYPE_DEBUG))
      {
        +[CRPreflightUtils spcResults:];
      }

      v97 = objc_opt_new();
      allObjects = [v111 allObjects];
      [v97 setObject:allObjects forKeyedSubscript:@"sealed"];

      allObjects2 = [v123 allObjects];
      [v97 setObject:allObjects2 forKeyedSubscript:@"pass"];

      allObjects3 = [v122 allObjects];
      [v97 setObject:allObjects3 forKeyedSubscript:@"lock"];

      allObjects4 = [v107 allObjects];
      [v97 setObject:allObjects4 forKeyedSubscript:@"unauth"];

      allObjects5 = [v124 allObjects];
      [v97 setObject:allObjects5 forKeyedSubscript:@"fail"];

      allObjects6 = [v121 allObjects];
      [v97 setObject:allObjects6 forKeyedSubscript:@"lost"];

      allObjects7 = [v110 allObjects];
      [v97 setObject:allObjects7 forKeyedSubscript:@"denied"];
    }

    else
    {
      v97 = 0;
    }
  }

  else
  {
    v97 = 0;
  }

  v105 = *MEMORY[0x1E69E9840];

  return v97;
}

+ (id)activationResults:(id)results
{
  v26 = *MEMORY[0x1E69E9840];
  if (results)
  {
    v4 = [results objectForKeyedSubscript:@"Challenges"];
    if (v4)
    {
      v5 = +[CRFDRDeviceController sharedSingleton];
      getHandlerForDevice = [v5 getHandlerForDevice];

      if (getHandlerForDevice)
      {
        array = [MEMORY[0x1E695DF70] array];
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v18 = v4;
        v8 = v4;
        v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v22;
          do
          {
            v12 = 0;
            do
            {
              if (*v22 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = [self parseChallengeObject:*(*(&v21 + 1) + 8 * v12) withHandler:getHandlerForDevice];
              if (v13)
              {
                [array addObject:v13];
              }

              else
              {
                v14 = handleForCategory(0);
                if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
                {
                  [(CRPreflightUtils *)&buf activationResults:v20, v14];
                }
              }

              ++v12;
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
          }

          while (v10);
        }

        v15 = [self _mergeActivationLocks:array];
        v4 = v18;
      }

      else
      {
        array = handleForCategory(0);
        if (os_log_type_enabled(array, OS_LOG_TYPE_ERROR))
        {
          +[CRPreflightUtils activationResults:];
        }

        v15 = 0;
      }
    }

    else
    {
      getHandlerForDevice = handleForCategory(0);
      if (os_log_type_enabled(getHandlerForDevice, OS_LOG_TYPE_ERROR))
      {
        +[CRPreflightUtils activationResults:];
      }

      v15 = 0;
    }
  }

  else
  {
    v4 = handleForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      +[CRPreflightUtils activationResults:];
    }

    v15 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (id)parseChallengeObject:(id)object withHandler:(id)handler
{
  objectCopy = object;
  handlerCopy = handler;
  v7 = [objectCopy objectForKeyedSubscript:@"Type"];

  if (!v7)
  {
    v8 = handleForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[CRPreflightUtils parseChallengeObject:withHandler:];
    }

    goto LABEL_17;
  }

  v8 = [objectCopy objectForKeyedSubscript:@"Properties"];
  if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
LABEL_17:
    v18 = 0;
    goto LABEL_18;
  }

  v9 = [v8 objectForKeyedSubscript:@"activation"];
  if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    goto LABEL_17;
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v11 = [objectCopy objectForKeyedSubscript:@"Type"];
  v12 = [v9 objectForKeyedSubscript:@"status"];
  v13 = [v9 objectForKeyedSubscript:@"fmipUrl"];
  v14 = [v9 objectForKeyedSubscript:@"activationToken"];
  v21 = v14;
  if (v12)
  {
    v15 = v14;
    [dictionary setObject:v12 forKey:@"status"];
    if (v11)
    {
      [dictionary setObject:v11 forKey:@"type"];
      v16 = [handlerCopy spcWithComponent:v11 withIdentifier:0];
      if (v16)
      {
        [dictionary setObject:v16 forKey:@"spc"];
        if (v15)
        {
          [dictionary setObject:v15 forKey:@"token"];
        }

        if (v13)
        {
          [dictionary setObject:v13 forKey:@"endpoint"];
        }

        v17 = v13;
        v18 = dictionary;
        goto LABEL_29;
      }

      v17 = v13;
      v20 = handleForCategory(0);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        +[CRPreflightUtils parseChallengeObject:withHandler:];
      }
    }

    else
    {
      v17 = v13;
      v16 = handleForCategory(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        +[CRPreflightUtils parseChallengeObject:withHandler:];
      }
    }
  }

  else
  {
    v17 = v13;
    v16 = handleForCategory(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      +[CRPreflightUtils parseChallengeObject:withHandler:];
    }
  }

  v18 = 0;
LABEL_29:

LABEL_18:

  return v18;
}

+ (BOOL)_hasSameKey:(id)key this:(id)this other:(id)other
{
  keyCopy = key;
  thisCopy = this;
  otherCopy = other;
  v10 = [thisCopy objectForKeyedSubscript:keyCopy];
  if (v10)
  {
  }

  else
  {
    v11 = [otherCopy objectForKeyedSubscript:keyCopy];

    if (!v11)
    {
      LOBYTE(v12) = 1;
      goto LABEL_9;
    }
  }

  v12 = [thisCopy objectForKeyedSubscript:keyCopy];
  if (v12)
  {
    v13 = [otherCopy objectForKeyedSubscript:keyCopy];

    if (v13)
    {
      v14 = [thisCopy objectForKeyedSubscript:keyCopy];
      v15 = [otherCopy objectForKeyedSubscript:keyCopy];
      LOBYTE(v12) = [v14 isEqualToString:v15];
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

LABEL_9:

  return v12;
}

+ (id)_mergeActivationLocks:(id)locks
{
  v45 = *MEMORY[0x1E69E9840];
  locksCopy = locks;
  v30 = objc_opt_new();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = locksCopy;
  v31 = [obj countByEnumeratingWithState:&v37 objects:v44 count:16];
  if (v31)
  {
    v29 = *v38;
    do
    {
      v5 = 0;
      do
      {
        if (*v38 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v32 = v5;
        v6 = *(*(&v37 + 1) + 8 * v5);
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v7 = v30;
        v8 = [v7 countByEnumeratingWithState:&v33 objects:v43 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v34;
          while (2)
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v34 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v33 + 1) + 8 * i);
              if ([self _hasSameKey:@"token" this:v12 other:v6] && objc_msgSend(self, "_hasSameKey:this:other:", @"status", v12, v6) && objc_msgSend(self, "_hasSameKey:this:other:", @"endpoint", v12, v6))
              {
                v20 = [v12 objectForKeyedSubscript:@"spc"];
                v21 = [v6 objectForKeyedSubscript:@"spc"];
                [v20 addObject:v21];

                v22 = [v12 objectForKeyedSubscript:@"type"];
                v23 = [v6 objectForKeyedSubscript:@"type"];
                [v22 addObject:v23];

                goto LABEL_18;
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v33 objects:v43 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }
        }

        v13 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v6];
        v14 = MEMORY[0x1E695DF70];
        v15 = [v6 objectForKeyedSubscript:@"spc"];
        v16 = [v14 arrayWithObject:v15];
        [v13 setObject:v16 forKeyedSubscript:@"spc"];

        v17 = MEMORY[0x1E695DF70];
        v18 = [v6 objectForKeyedSubscript:@"type"];
        v19 = [v17 arrayWithObject:v18];
        [v13 setObject:v19 forKeyedSubscript:@"type"];

        [v7 addObject:v13];
        v7 = v13;
LABEL_18:

        v5 = v32 + 1;
      }

      while (v32 + 1 != v31);
      v31 = [obj countByEnumeratingWithState:&v37 objects:v44 count:16];
    }

    while (v31);
  }

  v24 = handleForCategory(0);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v42 = obj;
    _os_log_impl(&dword_1CEDC5000, v24, OS_LOG_TYPE_DEFAULT, "activation locks: %@", buf, 0xCu);
  }

  v25 = handleForCategory(0);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v42 = v30;
    _os_log_impl(&dword_1CEDC5000, v25, OS_LOG_TYPE_DEFAULT, "merged activation locks: %@", buf, 0xCu);
  }

  v26 = *MEMORY[0x1E69E9840];

  return v30;
}

@end