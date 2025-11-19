@interface CAFilter
@end

@implementation CAFilter

void __60__CAFilter_CKFilterWithDictionary__ck_filterWithDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) setObject:v5 forKey:v6];
  }

  else
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __60__CAFilter_CKFilterWithDictionary__ck_filterWithDictionary___block_invoke_cold_1();
    }
  }
}

void __60__CAFilter_CKFilterWithDictionary__ck_filterWithDictionary___block_invoke_474(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = IMLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __60__CAFilter_CKFilterWithDictionary__ck_filterWithDictionary___block_invoke_474_cold_1();
    }

    goto LABEL_8;
  }

  if (![v8 containsObject:v7])
  {
    v10 = IMLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __60__CAFilter_CKFilterWithDictionary__ck_filterWithDictionary___block_invoke_474_cold_2();
    }

LABEL_8:

    goto LABEL_9;
  }

  [*(a1 + 32) setObject:v7 forKey:v9];
LABEL_9:
}

void __60__CAFilter_CKFilterWithDictionary__ck_filterWithDictionary___block_invoke_477(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v5;
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      while (2)
      {
        v13 = 0;
        do
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v16 + 1) + 8 * v13);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v15 = IMLogHandleForCategory();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412802;
              v21 = v6;
              v22 = 2112;
              v23 = v9;
              v24 = 2112;
              v25 = v14;
              _os_log_error_impl(&dword_19020E000, v15, OS_LOG_TYPE_ERROR, "Invalid number value in array. Key: %@, Value: %@, Problematic Number: %@", buf, 0x20u);
            }

            goto LABEL_16;
          }

          [v8 addObject:{v14, v16}];
          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v16 objects:v26 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    [*(a1 + 32) setObject:v9 forKey:v6];
LABEL_16:
  }

  else
  {
    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __60__CAFilter_CKFilterWithDictionary__ck_filterWithDictionary___block_invoke_477_cold_1();
    }
  }
}

void __60__CAFilter_CKFilterWithDictionary__ck_filterWithDictionary___block_invoke_478(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v4;
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __60__CAFilter_CKFilterWithDictionary__ck_filterWithDictionary___block_invoke_478_cold_2();
    }
  }

  else
  {
    v6 = IMLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __60__CAFilter_CKFilterWithDictionary__ck_filterWithDictionary___block_invoke_478_cold_1();
    }
  }
}

void __60__CAFilter_CKFilterWithDictionary__ck_filterWithDictionary___block_invoke_479(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v5;
    v8 = [v7 _numberForKey:@"x"];
    [v8 floatValue];
    v10 = v9;

    v11 = [v7 _numberForKey:@"y"];
    [v11 floatValue];
    v13 = v12;

    v14 = [v7 _numberForKey:@"width"];
    [v14 floatValue];
    v16 = v15;

    v17 = [v7 _numberForKey:@"height"];
    [v17 floatValue];
    v19 = v18;

    v20 = [MEMORY[0x1E696B098] valueWithCGRect:{v10, v13, v16, v19}];
    [*(a1 + 32) setObject:v20 forKey:v6];
  }

  else
  {
    v21 = IMLogHandleForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      __60__CAFilter_CKFilterWithDictionary__ck_filterWithDictionary___block_invoke_479_cold_1();
    }
  }
}

void __60__CAFilter_CKFilterWithDictionary__ck_filterWithDictionary___block_invoke_492(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = IMLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __60__CAFilter_CKFilterWithDictionary__ck_filterWithDictionary___block_invoke_492_cold_1();
  }
}

void __60__CAFilter_CKFilterWithDictionary__ck_filterWithDictionary___block_invoke_495(uint64_t a1, void *a2, void *a3)
{
  v116 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v5;
    if ([v7 count]== 4)
    {
      v112 = 0u;
      v113 = 0u;
      v110 = 0u;
      v111 = 0u;
      v8 = v7;
      v9 = [v8 countByEnumeratingWithState:&v110 objects:v115 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v111;
        v103 = v6;
        v104 = v7;
        v99 = *v111;
        v101 = a1;
        while (2)
        {
          v12 = 0;
          do
          {
            if (*v111 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v110 + 1) + 8 * v12);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v14 = IMLogHandleForCategory();
              v6 = v103;
              if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
              {
                __60__CAFilter_CKFilterWithDictionary__ck_filterWithDictionary___block_invoke_495_cold_3();
              }

              goto LABEL_28;
            }

            v14 = v13;
            if ([v14 count]!= 5)
            {
              v88 = IMLogHandleForCategory();
              v6 = v103;
              if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
              {
                __60__CAFilter_CKFilterWithDictionary__ck_filterWithDictionary___block_invoke_495_cold_4();
              }

              goto LABEL_28;
            }

            v108 = 0u;
            v109 = 0u;
            v106 = 0u;
            v107 = 0u;
            v14 = v14;
            v15 = [v14 countByEnumeratingWithState:&v106 objects:v114 count:16];
            if (v15)
            {
              v16 = v15;
              v17 = *v107;
              while (2)
              {
                for (i = 0; i != v16; ++i)
                {
                  if (*v107 != v17)
                  {
                    objc_enumerationMutation(v14);
                  }

                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    v87 = IMLogHandleForCategory();
                    v6 = v103;
                    if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
                    {
                      __60__CAFilter_CKFilterWithDictionary__ck_filterWithDictionary___block_invoke_495_cold_5();
                    }

                    v7 = v104;
                    goto LABEL_28;
                  }
                }

                v16 = [v14 countByEnumeratingWithState:&v106 objects:v114 count:16];
                if (v16)
                {
                  continue;
                }

                break;
              }
            }

            ++v12;
            a1 = v101;
            v7 = v104;
            v11 = v99;
          }

          while (v12 != v10);
          v10 = [v8 countByEnumeratingWithState:&v110 objects:v115 count:16];
          v6 = v103;
          if (v10)
          {
            continue;
          }

          break;
        }
      }

      v14 = v8;
      v19 = [v14 objectAtIndexedSubscript:0];
      v20 = [v19 objectAtIndexedSubscript:0];
      [v20 floatValue];
      v102 = v21;

      v22 = [v14 objectAtIndexedSubscript:0];
      v23 = [v22 objectAtIndexedSubscript:1];
      [v23 floatValue];
      v100 = v24;

      v25 = [v14 objectAtIndexedSubscript:0];
      v26 = [v25 objectAtIndexedSubscript:2];
      [v26 floatValue];
      v98 = v27;

      v28 = [v14 objectAtIndexedSubscript:0];
      v29 = [v28 objectAtIndexedSubscript:3];
      [v29 floatValue];
      v97 = v30;

      v31 = [v14 objectAtIndexedSubscript:0];
      v32 = [v31 objectAtIndexedSubscript:4];
      [v32 floatValue];
      v96 = v33;

      v34 = [v14 objectAtIndexedSubscript:1];
      v35 = [v34 objectAtIndexedSubscript:0];
      [v35 floatValue];
      v95 = v36;

      v37 = [v14 objectAtIndexedSubscript:1];
      v38 = [v37 objectAtIndexedSubscript:1];
      [v38 floatValue];
      v94 = v39;

      v40 = [v14 objectAtIndexedSubscript:1];
      v41 = [v40 objectAtIndexedSubscript:2];
      [v41 floatValue];
      v93 = v42;

      v43 = [v14 objectAtIndexedSubscript:1];
      v44 = [v43 objectAtIndexedSubscript:3];
      [v44 floatValue];
      v92 = v45;

      v46 = [v14 objectAtIndexedSubscript:1];
      v47 = [v46 objectAtIndexedSubscript:4];
      [v47 floatValue];
      v91 = v48;

      v49 = [v14 objectAtIndexedSubscript:2];
      v50 = [v49 objectAtIndexedSubscript:0];
      [v50 floatValue];
      v90 = v51;

      v52 = [v14 objectAtIndexedSubscript:2];
      v53 = [v52 objectAtIndexedSubscript:1];
      [v53 floatValue];
      v89 = v54;

      v55 = [v14 objectAtIndexedSubscript:2];
      v56 = [v55 objectAtIndexedSubscript:2];
      [v56 floatValue];
      v58 = v57;

      v59 = [v14 objectAtIndexedSubscript:2];
      v60 = [v59 objectAtIndexedSubscript:3];
      [v60 floatValue];
      v62 = v61;

      v63 = [v14 objectAtIndexedSubscript:2];
      v64 = [v63 objectAtIndexedSubscript:4];
      [v64 floatValue];
      v66 = v65;

      v67 = [v14 objectAtIndexedSubscript:3];
      v68 = [v67 objectAtIndexedSubscript:0];
      [v68 floatValue];
      v70 = v69;

      v71 = [v14 objectAtIndexedSubscript:3];
      v72 = [v71 objectAtIndexedSubscript:1];
      [v72 floatValue];
      v74 = v73;

      v75 = [v14 objectAtIndexedSubscript:3];
      v76 = [v75 objectAtIndexedSubscript:2];
      [v76 floatValue];
      v78 = v77;

      v79 = [v14 objectAtIndexedSubscript:3];
      v80 = [v79 objectAtIndexedSubscript:3];
      [v80 floatValue];
      v82 = v81;

      v83 = [v14 objectAtIndexedSubscript:3];
      v84 = [v83 objectAtIndexedSubscript:4];
      [v84 floatValue];
      v86 = v85;

      v105[0] = v102;
      v105[1] = v100;
      v105[2] = v98;
      v105[3] = v97;
      v105[4] = v96;
      v105[5] = v95;
      v105[6] = v94;
      v105[7] = v93;
      v105[8] = v92;
      v105[9] = v91;
      v105[10] = v90;
      v105[11] = v89;
      v105[12] = v58;
      v105[13] = v62;
      v105[14] = v66;
      v105[15] = v70;
      v105[16] = v74;
      v105[17] = v78;
      v105[18] = v82;
      v105[19] = v86;
      v8 = [MEMORY[0x1E696B098] valueWithCAColorMatrix:v105];
      [*(a1 + 32) setObject:v8 forKey:v6];
LABEL_28:
    }

    else
    {
      v8 = IMLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __60__CAFilter_CKFilterWithDictionary__ck_filterWithDictionary___block_invoke_495_cold_2();
      }
    }
  }

  else
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __60__CAFilter_CKFilterWithDictionary__ck_filterWithDictionary___block_invoke_495_cold_1();
    }
  }
}

void __60__CAFilter_CKFilterWithDictionary__ck_filterWithDictionary___block_invoke_496(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (([v5 isEqualToString:@"type"] & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @"name") & 1) == 0)
  {
    if ([v5 isEqualToString:*MEMORY[0x1E6979978]])
    {
LABEL_4:
      v7 = a1[4];
LABEL_7:
      (*(v7 + 16))(v7, v6, v5);
      goto LABEL_8;
    }

    if ([v5 isEqualToString:*MEMORY[0x1E6979988]])
    {
LABEL_6:
      v7 = a1[5];
      goto LABEL_7;
    }

    if ([v5 isEqualToString:*MEMORY[0x1E6979990]] || objc_msgSend(v5, "isEqualToString:", *MEMORY[0x1E6979998]) || objc_msgSend(v5, "isEqualToString:", *MEMORY[0x1E69799A0]))
    {
      goto LABEL_4;
    }

    if ([v5 isEqualToString:*MEMORY[0x1E69799A8]] || objc_msgSend(v5, "isEqualToString:", *MEMORY[0x1E69799B0]))
    {
      goto LABEL_14;
    }

    if ([v5 isEqualToString:*MEMORY[0x1E69799B8]] || objc_msgSend(v5, "isEqualToString:", *MEMORY[0x1E69799C8]))
    {
      goto LABEL_4;
    }

    if ([v5 isEqualToString:*MEMORY[0x1E6979A28]])
    {
      goto LABEL_6;
    }

    if ([v5 isEqualToString:*MEMORY[0x1E6979A88]])
    {
      v7 = a1[7];
      goto LABEL_7;
    }

    if ([v5 isEqualToString:*MEMORY[0x1E6979AA0]] || objc_msgSend(v5, "isEqualToString:", *MEMORY[0x1E6979AA8]) || objc_msgSend(v5, "isEqualToString:", *MEMORY[0x1E6979AB0]))
    {
      goto LABEL_14;
    }

    if ([v5 isEqualToString:*MEMORY[0x1E6979AB8]])
    {
      v7 = a1[8];
      goto LABEL_7;
    }

    if ([v5 isEqualToString:*MEMORY[0x1E6979AC0]])
    {
      v7 = a1[9];
      goto LABEL_7;
    }

    if ([v5 isEqualToString:*MEMORY[0x1E6979AC8]] || objc_msgSend(v5, "isEqualToString:", *MEMORY[0x1E6979AF0]))
    {
      goto LABEL_4;
    }

    if ([v5 isEqualToString:*MEMORY[0x1E6979B28]])
    {
      goto LABEL_14;
    }

    if ([v5 isEqualToString:*MEMORY[0x1E6979B30]])
    {
      goto LABEL_4;
    }

    if ([v5 isEqualToString:*MEMORY[0x1E6979B38]])
    {
      goto LABEL_6;
    }

    if ([v5 isEqualToString:*MEMORY[0x1E6979B40]] || objc_msgSend(v5, "isEqualToString:", *MEMORY[0x1E6979B48]))
    {
      goto LABEL_4;
    }

    if ([v5 isEqualToString:*MEMORY[0x1E6979B60]])
    {
      v8 = *(a1[10] + 16);
LABEL_36:
      v8();
      goto LABEL_8;
    }

    if ([v5 isEqualToString:*MEMORY[0x1E6979B68]] || objc_msgSend(v5, "isEqualToString:", *MEMORY[0x1E6979B78]) || objc_msgSend(v5, "isEqualToString:", *MEMORY[0x1E6979B90]))
    {
      goto LABEL_4;
    }

    if ([v5 isEqualToString:*MEMORY[0x1E6979BA0]])
    {
      v8 = *(a1[10] + 16);
      goto LABEL_36;
    }

    if ([v5 isEqualToString:*MEMORY[0x1E6979BA8]])
    {
      goto LABEL_4;
    }

    if ([v5 isEqualToString:*MEMORY[0x1E6979BB0]])
    {
      goto LABEL_6;
    }

    if ([v5 isEqualToString:*MEMORY[0x1E6979BE8]] || objc_msgSend(v5, "isEqualToString:", *MEMORY[0x1E6979BF0]))
    {
      goto LABEL_4;
    }

    if ([v5 isEqualToString:*MEMORY[0x1E6979BF8]] || objc_msgSend(v5, "isEqualToString:", *MEMORY[0x1E6979C00]))
    {
LABEL_14:
      v7 = a1[6];
      goto LABEL_7;
    }

    if ([v5 isEqualToString:*MEMORY[0x1E6979C18]] || objc_msgSend(v5, "isEqualToString:", *MEMORY[0x1E6979C20]))
    {
      goto LABEL_4;
    }

    if ([v5 isEqualToString:*MEMORY[0x1E6979C28]])
    {
      goto LABEL_6;
    }

    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __60__CAFilter_CKFilterWithDictionary__ck_filterWithDictionary___block_invoke_496_cold_1();
    }
  }

LABEL_8:
}

@end