void sub_1C2B251D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *__p, uint64_t a55, int a56, __int16 a57, char a58, char a59, uint64_t a60, uint64_t a61, char a62, uint64_t a63)
{
  if (a59 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::~__hash_table(&a62);
  if (a72 < 0)
  {
    operator delete(a67);
  }

  std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::~__hash_table(v73 - 192);
  std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::~__hash_table(&a73);
  _Unwind_Resume(a1);
}

query_node *pommesQueryTree(query_node *a1, __CFString *a2, __CFAttributedString *a3, __CFDictionary *a4, uint64_t a5, void **a6, PRContext *a7)
{
  v7 = a7;
  v10 = a2;
  v136 = *MEMORY[0x1E69E9840];
  v11 = pommesCustomTrees(a1, a2, a3, a4, a7);
  v104 = v11;
  if (a5 && (*(v7 + 7) & 2) == 0)
  {
    v102 = v7;
    v12 = v10;
    v13 = 0;
    v14 = MEMORY[0x1E69E9820];
    do
    {
      v15 = *a6++;
      *__str = v14;
      *&__str[8] = 0x40000000;
      *&v108 = __db_query_tree_apply_block_block_invoke;
      *(&v108 + 1) = &unk_1E8198ED0;
      *&v109 = &__block_literal_global_21_15415;
      db_query_tree_apply_block_with_meta(v15, __str, &__block_literal_global_25_15416);
      v13 = makeAndNode(v13, v16);
      --a5;
    }

    while (a5);
    v11 = makeAndNode(v11, v13);
    v104 = v11;
    v10 = v12;
    v7 = v102;
  }

  if (!v11)
  {
    if (*MEMORY[0x1E69E9AC8] <= 0x4FuLL)
    {
      ++sTotal;
    }

    v17 = malloc_type_zone_calloc(queryZone, 1uLL, 0x50uLL, 0x5BAF1CEAuLL);
    if (!v17)
    {
      _log_fault_for_malloc_failure();
    }

    v104 = v17;
    v17->var6 = 16;
  }

  db_optimize_query_tree(&v104);
  v18 = v104;
  if (v104 && userDefaultExtendedDebuggingEnabled())
  {
    v19 = *(v7 + 7);
    v20 = "ranking";
    var1 = v7->var1;
    v121 = 0u;
    v122 = 0u;
    v119 = 0u;
    v120 = 0u;
    if ((v19 & 2) == 0)
    {
      v20 = "retrieval";
    }

    v22 = "asyoutype";
    v117 = 0uLL;
    v118 = 0uLL;
    if ((v19 & 4) != 0)
    {
      v22 = "committed";
    }

    v115 = 0uLL;
    v116 = 0uLL;
    v23 = (v19 & 0x800) == 0;
    v24 = "original";
    if (!v23)
    {
      v24 = "rewrite";
    }

    v114 = 0uLL;
    v112 = 0uLL;
    v113 = 0uLL;
    v110 = 0uLL;
    v111 = 0uLL;
    v108 = 0uLL;
    v109 = 0uLL;
    *__str = 0uLL;
    v25 = @"en";
    if (snprintf(__str, 0x100uLL, "%s/tree-%s-%s-%s-%s.json", "/tmp/debug_trees", v20, v22, v24, var1) >= 0x100)
    {
      v26 = [objc_msgSend(MEMORY[0x1E695DF58] "currentLocale")];
      if (v26)
      {
        v27 = v26;
      }

      else
      {
        v27 = @"en";
      }

      v28 = logHeader(v7, &v27->isa);
      v29 = *__error();
      v30 = _SILogForLogForCategory(19);
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      *buf = 138412290;
      *&buf[4] = v28;
      v31 = "%@ Error: Failed to construct file path (snprintf error or truncation).";
      v32 = buf;
      v33 = v30;
      v34 = 12;
      goto LABEL_26;
    }

    v35 = [objc_msgSend(MEMORY[0x1E695DF58] "currentLocale")];
    if (v35)
    {
      v25 = v35;
    }

    v36 = logHeader(v7, &v25->isa);
    if (v10)
    {
      v37 = [MEMORY[0x1E696AEC0] stringWithUTF8String:__str];
      if (!v37)
      {
        v77 = *__error();
        v80 = _SILogForLogForCategory(19);
        if (!os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_118;
        }

        *buf = 138412546;
        *&buf[4] = v36;
        *&buf[12] = 2080;
        *&buf[14] = __str;
        v79 = "%@ Error: Could not convert filename '%s' to NSString.";
        v81 = buf;
        goto LABEL_116;
      }

      v98 = v10;
      v99 = v36;
      v96 = v25;
      v97 = v37;
      v103 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
      v38 = [MEMORY[0x1E695DF70] array];
      [v38 addObject:{+[PRStackItem itemWithNode:visited:](PRStackItem, "itemWithNode:visited:", v18, 0)}];
      if ([v38 count])
      {
        while (1)
        {
          v39 = objc_autoreleasePoolPush();
          v40 = [v38 lastObject];
          v41 = [v40 node];
          v42 = [v40 visited];
          if (v41)
          {
            break;
          }

          [v38 removeLastObject];
LABEL_96:
          objc_autoreleasePoolPop(v39);
          if (![v38 count])
          {
            goto LABEL_97;
          }
        }

        v43 = v42;
        v44 = [MEMORY[0x1E696B098] valueWithPointer:v41];
        if (!v43)
        {
          [v40 setVisited:1];
          v49 = *(v41 + 8);
          if (v49)
          {
            [v38 addObject:{+[PRStackItem itemWithNode:visited:](PRStackItem, "itemWithNode:visited:", v49, 0)}];
          }

          if (*v41)
          {
            [v38 addObject:{+[PRStackItem itemWithNode:visited:](PRStackItem, "itemWithNode:visited:", *v41, 0)}];
          }

          goto LABEL_96;
        }

        v101 = v44;
        [v38 removeLastObject];
        v45 = [MEMORY[0x1E695DF90] dictionary];
        v46 = *(v41 + 48);
        v47 = v46 & 0xFFFFFFF7;
        if ((v46 & 0xFFFFFFF7) <= 3)
        {
          if (v47 == 1)
          {
            v48 = @"OR";
            if ((v46 & 8) == 0)
            {
              goto LABEL_56;
            }

            goto LABEL_55;
          }

          if (v47 != 2)
          {
LABEL_60:
            v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UNKNOWN(%u)", *(v41 + 48)];
            if ((*(v41 + 48) & 8) != 0)
            {
              goto LABEL_55;
            }

            goto LABEL_56;
          }

          v48 = @"AND";
          if ((v46 & 8) != 0)
          {
            goto LABEL_55;
          }
        }

        else
        {
          switch(v47)
          {
            case 4u:
              v48 = @"FACTOR";
              if ((v46 & 8) != 0)
              {
                goto LABEL_55;
              }

              break;
            case 0x10u:
              v48 = @"FALSE";
              if ((v46 & 8) != 0)
              {
                goto LABEL_55;
              }

              break;
            case 0x20u:
              v48 = @"TRUE";
              if ((v46 & 8) == 0)
              {
                break;
              }

LABEL_55:
              v48 = [(__CFString *)v48 stringByAppendingString:@" (NEGATED)"];
              break;
            default:
              goto LABEL_60;
          }
        }

LABEL_56:
        [v45 setObject:v48 forKeyedSubscript:@"type"];
        [v45 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", *(v41 + 52)), @"cost"}];
        [v45 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", *(v41 + 56)), @"flags"}];
        LODWORD(v50) = *(v41 + 72);
        [v45 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v50), @"bias"}];
        if (v47 == 4)
        {
          v51 = *(v41 + 16);
          if (v51)
          {
            v52 = [MEMORY[0x1E695DF90] dictionary];
            if (*v51)
            {
              v53 = [MEMORY[0x1E696AEC0] stringWithCString:*v51 encoding:4];
            }

            else
            {
              v53 = [MEMORY[0x1E695DFB0] null];
            }

            [v52 setObject:v53 forKeyedSubscript:@"field"];
            [v52 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", *(v51 + 24)), @"op"}];
            [v52 setObject:objc_msgSend(MEMORY[0x1E696AEC0] forKeyedSubscript:{"stringWithFormat:", @"0x%llx", *(v51 + 32)), @"flags"}];
            v54 = *(v51 + 72);
            if (v54)
            {
              v55 = [MEMORY[0x1E696AEC0] stringWithCString:v54 encoding:4];
              if (v55)
              {
                v56 = v55;
              }

              else
              {
                v56 = @"(encoding_error)";
              }
            }

            else
            {
              if (*(v51 + 24) == 11 && *(v51 + 40) >= 1 && *(v51 + 168))
              {
                v100 = [MEMORY[0x1E695DF70] arrayWithCapacity:?];
                v57 = *(v51 + 40);
                if (v57 >= 1)
                {
                  for (i = 0; i < v57; ++i)
                  {
                    v59 = *(*(v51 + 168) + 8 * i);
                    if (v59)
                    {
                      v60 = [MEMORY[0x1E696AEC0] stringWithCString:v59 encoding:4];
                      if (v60)
                      {
                        v61 = v60;
                      }

                      else
                      {
                        v61 = @"(encoding_error)";
                      }

                      [v100 addObject:v61];
                      v57 = *(v51 + 40);
                    }
                  }
                }

                v62 = [v100 componentsJoinedByString:@" - "];
              }

              else
              {
                v62 = [MEMORY[0x1E695DFB0] null];
              }

              v56 = v62;
            }

            [v52 setObject:v56 forKeyedSubscript:@"value"];
            [v52 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", *(v51 + 48)), @"cost"}];
            LODWORD(v63) = *(v51 + 52);
            [v52 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v63), @"weight"}];
            LODWORD(v64) = *(v51 + 56);
            [v52 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v64), @"falseWeight"}];
            v65 = *(v51 + 32);
            if ((v65 & 0x800000) != 0)
            {
              [v52 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedChar:", *(v51 + 28)), @"fuzzy_threshold"}];
              v65 = *(v51 + 32);
            }

            if ((v65 & 0x6000000) != 0)
            {
              [v52 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", *(v51 + 44)), @"arrayValue"}];
            }

            v66 = [v52 copy];
            [v45 setObject:v66 forKeyedSubscript:@"qp"];
          }
        }

        if (v45)
        {
          v67 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
          if (*v41)
          {
            v68 = [v103 objectForKey:{objc_msgSend(MEMORY[0x1E696B098], "valueWithPointer:")}];
            if (v68)
            {
              [v67 addObject:v68];
            }
          }

          if (*(v41 + 8))
          {
            v69 = [v103 objectForKey:{objc_msgSend(MEMORY[0x1E696B098], "valueWithPointer:")}];
            if (v69)
            {
              [v67 addObject:v69];
            }
          }

          if ([v67 count])
          {
            v70 = [v67 copy];
            [v45 setObject:v70 forKeyedSubscript:@"children"];
          }

          v71 = [v45 copy];
          [v103 setObject:v71 forKey:v101];
        }

        goto LABEL_96;
      }

LABEL_97:
      v72 = [v103 objectForKey:{objc_msgSend(MEMORY[0x1E696B098], "valueWithPointer:", v18)}];
      if (v72)
      {
        v73 = v72;
        ClientInfo = getClientInfo(0, v7, 0);
        v75 = v7->var1;
        v129[0] = @"user_query";
        v129[1] = @"query_tree";
        *buf = v98;
        *&buf[8] = v73;
        v129[2] = @"is_ranking";
        *&buf[16] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:(*(v7 + 7) >> 1) & 1];
        v129[3] = @"is_committed";
        v131 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:(*(v7 + 7) >> 2) & 1];
        v129[4] = @"is_rewrite";
        v132 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:(*(v7 + 7) >> 11) & 1];
        v129[5] = @"protection_class";
        if (v75)
        {
          v76 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v75];
        }

        else
        {
          v76 = [MEMORY[0x1E695DFB0] null];
        }

        v133 = v76;
        v134 = v96;
        v129[6] = @"language";
        v129[7] = @"client";
        v135 = [MEMORY[0x1E696AEC0] stringWithUTF8String:ClientInfo];
        v84 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:v129 count:8];
        v106 = 0;
        v85 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v84 options:1 error:&v106];
        if (v85)
        {
          v86 = v85;
          v87 = [v97 stringByDeletingLastPathComponent];
          v88 = [MEMORY[0x1E696AC08] defaultManager];
          if (([v88 fileExistsAtPath:v87] & 1) == 0)
          {
            v105 = 0;
            if (([v88 createDirectoryAtPath:v87 withIntermediateDirectories:1 attributes:0 error:&v105] & 1) == 0)
            {
              v29 = *__error();
              v94 = _SILogForLogForCategory(19);
              if (!os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_27;
              }

              v95 = [v105 localizedDescription];
              *v123 = 138412802;
              v124 = v99;
              v125 = 2112;
              v126 = v87;
              v127 = 2112;
              v128 = v95;
              v31 = "%@ Error: Error creating directory %@: %@";
              v32 = v123;
              v33 = v94;
              v34 = 32;
LABEL_26:
              _os_log_impl(&dword_1C278D000, v33, OS_LOG_TYPE_DEFAULT, v31, v32, v34);
LABEL_27:
              *__error() = v29;
              goto LABEL_119;
            }
          }

          if ([v86 writeToFile:v97 options:1 error:&v106])
          {
            goto LABEL_119;
          }

          v77 = *__error();
          v89 = _SILogForLogForCategory(19);
          if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
          {
            v90 = [v106 localizedDescription];
            *v123 = 138412802;
            v124 = v99;
            v125 = 2112;
            v126 = v97;
            v127 = 2112;
            v128 = v90;
            v79 = "%@ Error: Error writing JSON query to file %@: %@";
            v81 = v123;
            v82 = v89;
            v83 = 32;
            goto LABEL_117;
          }

LABEL_118:
          *__error() = v77;
          goto LABEL_119;
        }

        v77 = *__error();
        v80 = _SILogForLogForCategory(19);
        if (!os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_118;
        }

        v91 = [v106 localizedDescription];
        *v123 = 138412546;
        v124 = v99;
        v125 = 2112;
        v126 = v91;
        v79 = "%@ Error: Error serializing query to JSON: %@";
        v81 = v123;
LABEL_116:
        v82 = v80;
        v83 = 22;
        goto LABEL_117;
      }

      v77 = *__error();
      v78 = _SILogForLogForCategory(19);
      if (!os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_118;
      }

      *buf = 138412290;
      *&buf[4] = v99;
      v79 = "%@ Error: Failed to build JSON representation for the query tree.";
    }

    else
    {
      v77 = *__error();
      v78 = _SILogForLogForCategory(19);
      if (!os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_118;
      }

      *buf = 138412290;
      *&buf[4] = v36;
      v79 = "%@ Error: Invalid arguments provided to log_query_to_file.";
    }

    v81 = buf;
    v82 = v78;
    v83 = 12;
LABEL_117:
    _os_log_impl(&dword_1C278D000, v82, OS_LOG_TYPE_DEFAULT, v79, v81, v83);
    goto LABEL_118;
  }

LABEL_119:
  v92 = *MEMORY[0x1E69E9840];
  return v18;
}

BOOL __valid_fs(int a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a1 == -1)
  {
    v3 = *MEMORY[0x1E69E9840];

    return __valid_cwd();
  }

  else
  {
    bzero(&v5, 0x878uLL);
    if (fstatfs(a1, &v5))
    {
      usleep(0x32u);
      result = fstatfs(a1, &v5) == 0;
    }

    else
    {
      result = 1;
    }

    v4 = *MEMORY[0x1E69E9840];
  }

  return result;
}

BOOL __valid_cwd()
{
  v3 = *MEMORY[0x1E69E9840];
  bzero(&v2, 0x878uLL);
  if (statfs(".", &v2))
  {
    usleep(0x32u);
    result = statfs(".", &v2) == 0;
  }

  else
  {
    result = 1;
  }

  v1 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL __valid_fsp(_DWORD *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    bzero(&v9, 0x878uLL);
    v8 = 0;
    v2 = _fd_acquire_fd(a1, &v8);
    if (v2 == -1)
    {
      v4 = 0;
    }

    else
    {
      v3 = v2;
      if (fstatfs(v2, &v9))
      {
        usleep(0x32u);
        v4 = fstatfs(v3, &v9) == 0;
      }

      else
      {
        v4 = 1;
      }

      _fd_release_fd(a1, v3, 0, v8);
    }

    v7 = *MEMORY[0x1E69E9840];
    return v4;
  }

  else
  {
    v5 = *MEMORY[0x1E69E9840];

    return __valid_cwd();
  }
}

uint64_t __native_cwd()
{
  v4 = *MEMORY[0x1E69E9840];
  bzero(&v3, 0x878uLL);
  if (statfs(".", &v3) && (usleep(0x32u), statfs(".", &v3)))
  {
    result = 0;
  }

  else
  {
    if (*v3.f_fstypename ^ 0x73667061 | v3.f_fstypename[4])
    {
      v1 = *v3.f_fstypename == 7562856;
    }

    else
    {
      v1 = 1;
    }

    result = v1;
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __native_fsp(_DWORD *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    bzero(&v10, 0x878uLL);
    v9 = 0;
    v2 = _fd_acquire_fd(a1, &v9);
    if (v2 != -1)
    {
      v3 = v2;
      if (fstatfs(v2, &v10))
      {
        usleep(0x32u);
        v4 = fstatfs(v3, &v10);
        _fd_release_fd(a1, v3, 0, v9);
        if (v4)
        {
          goto LABEL_5;
        }
      }

      else
      {
        _fd_release_fd(a1, v3, 0, v9);
      }

      if (*v10.f_fstypename ^ 0x73667061 | v10.f_fstypename[4])
      {
        v7 = *v10.f_fstypename == 7562856;
      }

      else
      {
        v7 = 1;
      }

      result = v7;
      goto LABEL_16;
    }

LABEL_5:
    result = 0;
LABEL_16:
    v8 = *MEMORY[0x1E69E9840];
    return result;
  }

  v6 = *MEMORY[0x1E69E9840];

  return __native_cwd();
}

BOOL isFsType(int a1, const char *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  bzero(&v6, 0x878uLL);
  result = !fstatfs(a1, &v6) && !strcmp(v6.f_fstypename, a2);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t recodeVector(uint64_t a1, unsigned int a2, unsigned int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  _MDPlistBytesBeginDictionary();
  if (a2 <= 2)
  {
    _MDPlistBytesAddCString();
    _MDPlistBytesAddInteger();
  }

  if (a3 <= 2)
  {
    _MDPlistBytesAddCString();
    _MDPlistBytesAddInteger();
  }

  if (a4)
  {
    _MDPlistBytesAddCString();
    _MDPlistBytesAddInteger();
  }

  if (a5)
  {
    _MDPlistBytesAddCString();
    _MDPlistBytesAddInteger();
  }

  if (a6 && a7)
  {
    _MDPlistBytesAddCString();
    _MDPlistBytesAddData();
  }

  return _MDPlistBytesEndDictionary();
}

void CITokenizerDispose(void *a1)
{
  if (a1)
  {
    v2 = a1[1];
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = a1[2];
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = a1[8];
    if (v4)
    {
      free(v4);
    }

    v5 = a1[7];
    if (v5)
    {
      CFRelease(v5);
    }

    free(a1);
  }
}

BOOL CIStringTokenizerResolveTranscriptions(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v55 = *MEMORY[0x1E69E9840];
  v7 = strlen(v1);
  alloc = *MEMORY[0x1E695E480];
  v8 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v6, v7, 0x8000100u, 0, *MEMORY[0x1E695E498]);
  if (!v8)
  {
    v35 = 0;
    goto LABEL_56;
  }

  v9 = v8;
  v10 = CIRetainIndexingTokenizer(3u);
  if (!v10)
  {
    v35 = 0;
    goto LABEL_55;
  }

  v11 = v10;
  v38 = v3;
  bzero(v54, 0x1000uLL);
  bzero(&v53, 0x800uLL);
  bzero(v52, 0x800uLL);
  bzero(v51, 0x800uLL);
  v50 = 0;
  *v48 = 0u;
  *cf = 0u;
  memset(v47, 0, sizeof(v47));
  CITokenizerSetLocale(v11, 0, v5);
  CITokenizerStateInit(v47, v9, (*(v11 + 72) < 0x37uLL) & (0x40000000300030uLL >> *(v11 + 72)), 0);
  v39 = v9;
  if (cf[0])
  {
    v12 = cf[0];
  }

  else
  {
    v12 = v9;
  }

  CFStringGetLength(v12);
  v13 = *(v11 + 8);
  v14 = *(v11 + 24);
  v15 = *(v11 + 72);
  _NLStringTokenizerSetStringWithOptionsAndLanguageID();
  v16 = 0;
  v17 = 0;
  Mutable = 0;
  chars = 32;
  v45 = v48[0];
  v40 = v11;
  v41 = v48[0] - 2;
  do
  {
    v19 = *(v11 + 8);
    v20 = _NLStringTokenizerTokenizeWithTranscriptions();
    v42 = v20;
    if (v20 >= 1)
    {
      v21 = 0;
      v22 = v54;
      v43 = &v54[v20 - 1];
      v23 = v52;
      v24 = v20;
      while (1)
      {
        if (!*v23)
        {
          if (v24 != 1)
          {
            goto LABEL_26;
          }

          if (!v16)
          {
            goto LABEL_26;
          }

          v25 = v43[1] + *v43;
          v26 = v25 - v16;
          if (v25 == v16)
          {
            goto LABEL_26;
          }

          v27 = v45[v16];
          if (v27 > 0x7F)
          {
            if (!__maskrune(v27, 0x4000uLL))
            {
              goto LABEL_34;
            }
          }

          else if ((*(MEMORY[0x1E69E9830] + 4 * v27 + 60) & 0x4000) == 0)
          {
LABEL_34:
            CFStringAppendCharacters(Mutable, &chars, 1);
          }

          v30 = Mutable;
          v28 = &v45[v16];
          v29 = v26;
          goto LABEL_25;
        }

        if (**&v51[v21] >= 0x80u)
        {
          v17 = 1;
        }

        if (Mutable)
        {
          break;
        }

        Mutable = CFStringCreateMutable(alloc, 0);
        if (v21)
        {
          goto LABEL_22;
        }

LABEL_24:
        v16 = v22[1] + *v22;
        v28 = *&v51[v21];
        v29 = *v23;
        v30 = Mutable;
LABEL_25:
        CFStringAppendCharacters(v30, v28, v29);
LABEL_26:
        ++v23;
        v21 += 8;
        v22 += 2;
        if (!--v24)
        {
          goto LABEL_43;
        }
      }

      if (!v21)
      {
        goto LABEL_24;
      }

LABEL_22:
      if (*(v23 - 1))
      {
LABEL_23:
        CFStringAppendCharacters(Mutable, &chars, 1);
        goto LABEL_24;
      }

      v31 = *v22;
      v32 = *v22 - v16;
      if (v32 < 1)
      {
        goto LABEL_24;
      }

      if (v16)
      {
        v33 = v45[v16];
        if (v33 > 0x7F)
        {
          if (__maskrune(v33, 0x4000uLL))
          {
            goto LABEL_38;
          }
        }

        else if ((*(MEMORY[0x1E69E9830] + 4 * v33 + 60) & 0x4000) != 0)
        {
          goto LABEL_38;
        }

        CFStringAppendCharacters(Mutable, &chars, 1);
      }

LABEL_38:
      CFStringAppendCharacters(Mutable, &v45[v16], v32);
      v34 = *&v41[2 * v31];
      if (v34 > 0x7F)
      {
        if (__maskrune(v34, 0x4000uLL))
        {
          goto LABEL_24;
        }
      }

      else if ((*(MEMORY[0x1E69E9830] + 4 * v34 + 60) & 0x4000) != 0)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

LABEL_43:
    v11 = v40;
  }

  while (v42);
  if (v17)
  {
    CFStringNormalize(Mutable, kCFStringNormalizationFormD);
  }

  v9 = v39;
  if (Mutable)
  {
    v35 = CFStringGetCString(Mutable, v38, 4096, 0x8000100u) != 0;
    CFRelease(Mutable);
  }

  else
  {
    v35 = 0;
  }

  CIReleaseIndexingTokenizer(v40);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v48[1])
  {
    free(v48[1]);
  }

LABEL_55:
  CFRelease(v9);
LABEL_56:
  v36 = *MEMORY[0x1E69E9840];
  return v35;
}

uint64_t sentenceTokenizerMissingPunctuation(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a4[387];
    if (v4 == -1)
    {
      v5 = 0;
    }

    else
    {
      v5 = a4[388] + v4;
    }

    a4[387] = v5;
    a4[388] = a2;
    if ((a3 & 0x800) == 0)
    {
      v6 = a4[389];
      if (v6 <= 127)
      {
        *&a4[2 * v6] = *(a4 + 387);
        a4[a4[389]++ + 258] = a3;
      }
    }
  }

  return 0;
}

void CITokenizerGetTokensNew(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = v9;
  bzero(&cf, 0x1810uLL);
  CITokenizerSetLocale(v24, v21, 0);
  _CITokenizerGetTokens(v24, *(v24 + 8), v23, &cf, v19, v17, v15, v13, v11, 0, a9);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v26)
  {
    free(v26);
  }
}

uint64_t getPreTokenizerCallback(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  if (v3)
  {
    return v3(result, a2, *(a3 + 16));
  }

  return result;
}

void CITokenizerGatherSegments(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v97[512] = *MEMORY[0x1E69E9840];
  v5 = v4 - v2;
  if (v5 < 2)
  {
    goto LABEL_115;
  }

  v6 = v3;
  v7 = v2;
  v8 = v1;
  v9 = *v1;
  if ((v9 & 0x80000000) != 0)
  {
    v10 = v9 >> 4;
    v11 = utf8_byte_length(unsigned char)::utf8_len_table[v10];
    v12 = ~v10;
    v13 = utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v11] & v9;
    if ((v12 & 0xC) != 0)
    {
      v9 &= utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v11];
    }

    else
    {
      if (v11 <= 2)
      {
        v14 = 2;
      }

      else
      {
        v14 = v11;
      }

      v15 = v14 - 1;
      v16 = v1 + 1;
      do
      {
        v17 = *v16++;
        v9 = v17 & 0x3F | (v13 << 6);
        v13 = v9;
        --v15;
      }

      while (v15);
    }
  }

  if (v9 >= 0x7F)
  {
    if (v9 - 12352 > 0x5F)
    {
      goto LABEL_115;
    }

    v18 = "ja";
  }

  else
  {
    v18 = "zh-Hans";
  }

  if (!strcmp(v18, "zh-Hans"))
  {
    v29 = 2;
LABEL_35:
    if (v5 == 2)
    {
      goto LABEL_115;
    }

    v30 = v5;
    v31 = v8;
    do
    {
      v32 = *v31++;
      v33 = v32 - 97;
      if (v32 != 65 && v33 >= 0x1A)
      {
        goto LABEL_115;
      }

      --v30;
    }

    while (v30);
    goto LABEL_42;
  }

  if (!strcmp(v18, "zh-Hant") || !strcmp(v18, "zh-HK"))
  {
    v29 = 4;
    goto LABEL_35;
  }

  if (*v18 != 106 || v18[1] != 97 || v18[2])
  {
    goto LABEL_115;
  }

  v19 = 0;
  v20 = v8;
  while (v20 < &v8[v5])
  {
    v21 = *v20;
    v22 = *v20;
    if (v21 < 0)
    {
      v23 = v21 >> 4;
      v24 = utf8_byte_length(unsigned char)::utf8_len_table[v23];
      v21 = v22 & utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v24];
      if ((~v23 & 0xC) == 0)
      {
        if (v24 <= 2)
        {
          v25 = 2;
        }

        else
        {
          v25 = utf8_byte_length(unsigned char)::utf8_len_table[v23];
        }

        v26 = v25 - 1;
        v27 = (v20 + 1);
        do
        {
          v28 = *v27++;
          v21 = v28 & 0x3F | (v21 << 6);
          --v26;
        }

        while (v26);
      }
    }

    else
    {
      v23 = v22 >> 4;
    }

    v20 += utf8_byte_length_noerror(unsigned char)::utf8_len_table[v23];
    ++v19;
    if ((v21 - 12352) >= 0x60)
    {
      goto LABEL_115;
    }
  }

  if (v19 < 3)
  {
    goto LABEL_115;
  }

  v29 = 1;
LABEL_42:
  v35 = *MEMORY[0x1E695E480];
  v36 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], v8, v5, 0x8000100u, 0);
  if (!v36)
  {
    goto LABEL_115;
  }

  v37 = v36;
  Length = CFStringGetLength(v36);
  pthread_mutex_lock(&gMecabraLock);
  v89 = v35;
  if (MecabraAnalysisForString_once != -1)
  {
    dispatch_once(&MecabraAnalysisForString_once, &__block_literal_global_8497);
  }

  if (MecabraAnalysisForString_valid != 1)
  {
    goto LABEL_114;
  }

  v38 = gMecabra;
  if (gMecabra && gMecabraType != v29)
  {
    weak_MecabraCancelAnalysis(gMecabra);
    weak_MecabraRelease(gMecabra);
    gMecabra = 0;
    gMecabraType = 0;
LABEL_50:
    if (((1 << v29) & 0x16) == 0)
    {
      goto LABEL_114;
    }

    v38 = weak_MecabraCreateWithOptions(v29, 0, 4);
    gMecabra = v38;
    gMecabraType = v29;
    if (!v38)
    {
      goto LABEL_114;
    }

    goto LABEL_52;
  }

  if (!gMecabra)
  {
    goto LABEL_50;
  }

LABEL_52:
  if (!weak_MecabraAnalyzeString(v38, v37, 0))
  {
    goto LABEL_114;
  }

  v39 = CIRetainIndexingTokenizer(3u);
  if (!v39)
  {
    goto LABEL_114;
  }

  v40 = v39;
  CITokenizerSetLocale(v39, 0, v18);
  v91 = v38;
  NextCandidate = weak_MecabraGetNextCandidate(v38);
  if (!NextCandidate)
  {
    goto LABEL_113;
  }

  v42 = NextCandidate;
  v88 = v40;
  v81 = v37;
  v82 = 0;
  v80 = v7;
  v43 = 1280;
  if (v7)
  {
    v43 = 1281;
  }

  v83 = v43;
  v84 = v8;
  v79[1] = v6 + 16;
  v44 = Length;
  v85 = v6;
  do
  {
    AnalysisString = weak_MecabraCandidateGetAnalysisString(v42);
    if (AnalysisString)
    {
      AnalysisString = CFStringGetLength(AnalysisString);
    }

    if (AnalysisString < v44)
    {
      goto LABEL_63;
    }

    bzero(v97, 0x1000uLL);
    bzero(&v96, 0x800uLL);
    bzero(v95, 0x800uLL);
    bzero(v94, 0x800uLL);
    Surface = weak_MecabraCandidateGetSurface(v42);
    if (!v6)
    {
      goto LABEL_63;
    }

    v47 = v88;
    v48 = *(v88 + 8);
    CFStringGetLength(Surface);
    v49 = *(v47 + 24);
    v50 = *(v47 + 72);
    _NLStringTokenizerSetStringWithOptionsAndLanguageID();
    v51 = *(v47 + 8);
    v52 = _NLStringTokenizerTokenizeWithTranscriptions();
    if (v52 < 2)
    {
LABEL_63:
      v53 = v91;
      goto LABEL_64;
    }

    v54 = v52;
    v55 = 0;
    v53 = v91;
    while (v95[v55])
    {
      if (v54 == ++v55)
      {
        goto LABEL_71;
      }
    }

    if (v55 != v54)
    {
      goto LABEL_64;
    }

LABEL_71:
    v87 = v79;
    MEMORY[0x1EEE9AC00](v91);
    v57 = (v79 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
    bzero(v57, v56);
    v58 = 0;
    v92 = v54 - 1;
    v93 = v54;
    v86 = v57;
    v59 = v84;
    do
    {
      if (v95[v58] < 1)
      {
        v72 = 1;
        v61 = v57;
      }

      else
      {
        v60 = 0;
        v61 = v57;
        while (1)
        {
          v62 = *v59;
          v63 = *v59;
          if (v62 < 0)
          {
            v64 = v62 >> 4;
            v65 = utf8_byte_length(unsigned char)::utf8_len_table[v64];
            v66 = v63 & utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v65];
            if ((~v64 & 0xC) != 0)
            {
              v62 = v63 & utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v65];
            }

            else
            {
              if (v65 <= 2)
              {
                v67 = 2;
              }

              else
              {
                v67 = utf8_byte_length(unsigned char)::utf8_len_table[v64];
              }

              v68 = v67 - 1;
              v69 = (v59 + 1);
              do
              {
                v70 = *v69++;
                v62 = v70 & 0x3F | (v66 << 6);
                v66 = v62;
                --v68;
              }

              while (v68);
            }
          }

          if (v62 != *(v94[v58] + 2 * v60))
          {
            break;
          }

          v71 = utf8_byte_length_noerror(unsigned char)::utf8_len_table[v63 >> 4];
          memcpy(v61, v59, v71);
          v61 += v71;
          v59 += v71;
          if (++v60 >= v95[v58])
          {
            v72 = 1;
            goto LABEL_93;
          }
        }

        if (v60)
        {
          v73 = v58 == v92;
        }

        else
        {
          v73 = 0;
        }

        v72 = v73;
LABEL_93:
        v54 = v93;
      }

      v95[v58++] = v61 - v57;
      if (v58 != v54)
      {
        *v61++ = 32;
      }

      v57 = v61;
    }

    while (((v58 < v54) & v72) != 0);
    *v61 = 0;
    if (v72)
    {
      v74 = CFStringCreateWithCString(v89, v86, 0x8000100u);
      v44 = Length;
      if (v74)
      {
        v75 = v74;
        Mutable = v82;
        if (!v82)
        {
          Mutable = CFSetCreateMutable(v89, 0, MEMORY[0x1E695E9F8]);
        }

        v77 = CFSetContainsValue(Mutable, v75);
        v82 = Mutable;
        if (!v77)
        {
          CFSetAddValue(Mutable, v75);
          CFRelease(v75);
          if (v80)
          {
            *v57 = 42;
          }

          v6 = v85;
          (*(v85 + 16))(v85, v86, v54, v95);
          goto LABEL_105;
        }

        CFRelease(v75);
      }

      v6 = v85;
    }

    else
    {
      v6 = v85;
      v44 = Length;
    }

LABEL_105:
    v53 = v91;
LABEL_64:
    v42 = weak_MecabraGetNextCandidate(v53);
  }

  while (v42);
  v37 = v81;
  v40 = v88;
  if (v82)
  {
    CFRelease(v82);
  }

LABEL_113:
  CIReleaseIndexingTokenizer(v40);
LABEL_114:
  pthread_mutex_unlock(&gMecabraLock);
  CFRelease(v37);
LABEL_115:
  v78 = *MEMORY[0x1E69E9840];
}

void *__MecabraAnalysisForString_block_invoke()
{
  result = dlopen("/usr/lib/libmecabra.dylib", 1);
  MecabraAnalysisForString_mecabra_handle = result;
  if (result)
  {
    result = dlsym(result, "MecabraCreateWithOptions");
    weak_MecabraCreateWithOptions = result;
    if (result)
    {
      result = dlsym(MecabraAnalysisForString_mecabra_handle, "MecabraAnalyzeString");
      weak_MecabraAnalyzeString = result;
      if (result)
      {
        result = dlsym(MecabraAnalysisForString_mecabra_handle, "MecabraCancelAnalysis");
        weak_MecabraCancelAnalysis = result;
        if (result)
        {
          result = dlsym(MecabraAnalysisForString_mecabra_handle, "MecabraCancelAnalysis");
          weak_MecabraRelease = result;
          if (result)
          {
            result = dlsym(MecabraAnalysisForString_mecabra_handle, "MecabraGetNextCandidate");
            weak_MecabraGetNextCandidate = result;
            if (result)
            {
              result = dlsym(MecabraAnalysisForString_mecabra_handle, "MecabraCandidateGetAnalysisString");
              weak_MecabraCandidateGetAnalysisString = result;
              if (result)
              {
                result = dlsym(MecabraAnalysisForString_mecabra_handle, "MecabraCandidateGetSurface");
                weak_MecabraCandidateGetSurface = result;
                if (result)
                {
                  MecabraAnalysisForString_valid = 1;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

CFComparisonResult ___safe_open_at_block_invoke(uint64_t a1, const __CFString **a2, const __CFString **a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = MEMORY[0x1C691E5E0](*(a1 + 32), *a2);
  v7 = MEMORY[0x1C691E5E0](*(a1 + 32), v5);
  if (v6 < v7)
  {
    return 0xFFFFFFFFLL;
  }

  if (v6 <= v7)
  {
    return CFStringCompare(v4, v5, 0);
  }

  return 1;
}

int *__fd_create_protected_block_invoke()
{
  v11 = *MEMORY[0x1E69E9840];
  v8.rlim_cur = 0;
  v8.rlim_max = 0;
  if (getrlimit(8, &v8))
  {
    rlim_cur = 1024;
  }

  else
  {
    rlim_cur = v8.rlim_cur;
  }

  gOpenLimit = rlim_cur;
  v1 = malloc_type_calloc(1uLL, 0x18uLL, 0x10200406E52F545uLL);
  g_fd_list = v1;
  v2 = rlim_cur / 4;
  if (rlim_cur >= 512)
  {
    v2 = 128;
  }

  v1[2] = v2;
  v3 = *__error();
  v4 = _SILogForLogForCategory(0);
  v5 = 2 * (gSILogLevels[0] < 4);
  if (os_log_type_enabled(v4, v5))
  {
    *buf = 67109120;
    v10 = gOpenLimit;
    _os_log_impl(&dword_1C278D000, v4, v5, "fd limit %d", buf, 8u);
  }

  result = __error();
  *result = v3;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void *fd_create_sibling_with_prefix_protected(uint64_t a1, const char *a2, unsigned __int8 a3)
{
  if (!a1)
  {
    return 0;
  }

  v7 = 0;
  asprintf(&v7, "%s%s", a2, *(a1 + 72));
  sibling_protected = fd_create_sibling_protected(a1, v7, 1538, a3);
  free(v7);
  return sibling_protected;
}

uint64_t fd_truncate(uint64_t a1, off_t a2)
{
  v11 = 0;
  v4 = _fd_acquire_fd(a1, &v11);
  if (v4 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = v4;
  v6 = _fd_ftruncate_guarded(v4, &v11, a2);
  v7 = *__error();
  if (v6 == -1 || a2 == 0)
  {
    v9 = 0;
  }

  else
  {
    v9 = 2;
  }

  *(a1 + 56) = *(a1 + 56) & 0xFFFD | v9;
  _fd_release_fd(a1, v5, 0, v11);
  if (v6 == -1)
  {
    *__error() = v7;
  }

  return v6;
}

uint64_t fd_truncate_and_make_readonly(uint64_t a1, off_t a2)
{
  result = fd_truncate(a1, a2);
  if (!result)
  {
    result = fd_make_readonly(a1);
    if (a1)
    {
      do
      {
        result = fchmodat(*(a1 + 44), *(a1 + 72), 0x100u, 2048);
        v4 = g_prot_error_callback;
        if (result != -1 || g_prot_error_callback == 0)
        {
          break;
        }

        v6 = *(a1 + 40);
        v7 = __error();
        result = (*(v4 + 16))(v4, v6, *v7, 19);
      }

      while ((result & 1) != 0);
    }
  }

  return result;
}

uint64_t fd_make_readonly(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v7 = 0;
    if (*result != -50529037)
    {
      v3 = __si_assert_copy_extra_661(-1);
      v4 = v3;
      v5 = "";
      if (v3)
      {
        v5 = v3;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "fd_obj.c", 1277, "obj->_magic==(0xFCFCFCF3)", v5);
      free(v4);
      if (__valid_fs(-1))
      {
        v6 = 2989;
      }

      else
      {
        v6 = 3072;
      }

      *v6 = -559038737;
      abort();
    }

    *(result + 48) = 0;
    pthread_mutex_lock(&g_fd_lock);
    if (*(v1 + 36) || *(v1 + 40) == -1)
    {
      return pthread_mutex_unlock(&g_fd_lock);
    }

    else
    {
      v2 = _fd_remove_locked(v1, &v7);
      result = pthread_mutex_unlock(&g_fd_lock);
      if (v2 != -1)
      {
        return guarded_close_np();
      }
    }
  }

  return result;
}

uint64_t fd_zero_truncate(uint64_t a1)
{
  v7 = 0;
  v2 = _fd_acquire_fd(a1, &v7);
  if (v2 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = v2;
  if ((*(a1 + 48) & 3) == 0)
  {
    _fd_release_fd(a1, v2, 0, v7);
    v5 = 1;
LABEL_6:
    *__error() = v5;
    return 0xFFFFFFFFLL;
  }

  v4 = _fd_ftruncate_guarded(v2, &v7, 0);
  v5 = *__error();
  *(a1 + 56) &= ~2u;
  _fd_release_fd(a1, v3, 0, v7);
  if (v4 == -1)
  {
    goto LABEL_6;
  }

  return v4;
}

BOOL fd_validfs(_DWORD *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v2 = _fd_acquire_fd(a1, &v7);
  if (v2 == -1)
  {
    result = 0;
  }

  else
  {
    v3 = v2;
    bzero(&v8, 0x878uLL);
    v4 = fstatfs(v3, &v8);
    _fd_release_fd(a1, v3, 0, v7);
    result = v4 == 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _fd_unlink_with_origin(uint64_t a1, int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a1 || (v15 = 0, !fd_setDir(*(a1 + 44), &v15)))
  {
    v9 = 0xFFFFFFFFLL;
    goto LABEL_16;
  }

  bzero(v17, 0x400uLL);
  v4 = fd_name(a1, v17, 0x400uLL);
  if (v4)
  {
    v5 = v4;
    v6 = *__error();
    v7 = _SILogForLogForCategory(6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = v5;
      _os_log_impl(&dword_1C278D000, v7, OS_LOG_TYPE_DEFAULT, "Unlink %s", buf, 0xCu);
    }

    *__error() = v6;
    os_unfair_lock_lock(&map_guard_lock);
    v8 = *(a1 + 60);
    if (!v8)
    {
      *(a1 + 60) = v8 & 0xFC00 | 0x200;
      *(a1 + 64) = a2;
      os_unfair_lock_unlock(&map_guard_lock);
      if ((*(a1 + 48) & 3) != 0)
      {
        *buf = 0;
        v10 = _fd_acquire_fd(a1, buf);
        if (v10 != -1)
        {
          v11 = v10;
          _fd_ftruncate_guarded(v10, buf, 0);
          _fd_release_fd(a1, v11, 0, *buf);
        }
      }

      v9 = unlink(v5);
      goto LABEL_14;
    }

    *(a1 + 60) = v8 | 0x100;
    *(a1 + 64) = a2;
    os_unfair_lock_unlock(&map_guard_lock);
  }

  v9 = 0xFFFFFFFFLL;
LABEL_14:
  v12 = v15;
  MEMORY[0x1C6921200](v15);
  if ((v12 & 0x80000000) == 0)
  {
    close(v12);
  }

LABEL_16:
  v13 = *MEMORY[0x1E69E9840];
  return v9;
}

void fd_guarded_munmap(uint64_t a1, void *a2, size_t a3)
{
  os_unfair_lock_lock(&map_guard_lock);
  v6 = *(a1 + 60);
  if (v6)
  {
    *(a1 + 60) = v6 & 0xFF00 | (v6 - 1);
    if (v6 == 1)
    {
      *(a1 + 60) = v6 & 0xFF00;
      v7 = (v6 & 0x100) == 0;
    }

    else
    {
      v7 = 1;
    }

    os_unfair_lock_unlock(&map_guard_lock);
    v16 = 0;
    do
    {
      if (a2 != -1)
      {
        v16 = munmap(a2, a3);
      }

      if (v16 != -1)
      {
        break;
      }

      v17 = g_prot_error_callback;
      if (!g_prot_error_callback)
      {
        break;
      }

      v18 = *(a1 + 40);
      v19 = __error();
      v20 = (*(v17 + 16))(v17, v18, *v19, 11);
      v16 = -1;
    }

    while ((v20 & 1) != 0);
    if (!v7)
    {

      _fd_unlink_with_origin(a1, 890);
    }
  }

  else
  {
    os_unfair_lock_unlock(&map_guard_lock);
    si_analytics_log_8636(v8, v9, v10, v11, v12, v13, v14, v15, a1);
  }
}

void si_analytics_log_8636(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v15 = *MEMORY[0x1E69E9840];
  string[0] = 0;
  string[1] = &a9;
  vasprintf(string, "Overrelease of fd_obj %p", &a9);
  SISetCrashCStr(string[0]);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *keys = 136315138;
    *&keys[4] = string[0];
    _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "%s", keys, 0xCu);
  }

  *keys = "crash_string";
  v9 = xpc_string_create(string[0]);
  values = v9;
  v10 = xpc_dictionary_create(keys, &values, 1uLL);
  analytics_send_event();
  xpc_release(v10);
  xpc_release(v9);
  free(string[0]);
  v11 = *MEMORY[0x1E69E9840];
}

_DWORD *fd_read_advise(_DWORD *a1, uint64_t a2)
{
  v12 = 0;
  v4 = _fd_acquire_fd(a1, &v12);
  do
  {
    v5 = fcntl(v4, 44, a2);
    v6 = g_prot_error_callback;
    if (v5 != -1 || g_prot_error_callback == 0)
    {
      break;
    }

    v8 = a1[10];
    v9 = __error();
  }

  while (((*(v6 + 16))(v6, v8, *v9, 12) & 1) != 0);
  v10 = v12;

  return _fd_release_fd(a1, v4, 0, v10);
}

uint64_t fd_hold_assertion(uint64_t a1, uint64_t a2, double a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v23 = 0;
  v6 = _fd_acquire_fd(a1, &v23);
  v22[0] = 0;
  v22[1] = (a3 * 1000000000.0);
  v7 = fcntl(v6, 108, v22);
  bzero(v42, 0x400uLL);
  fd_name(a1, v42, 0x400uLL);
  if ((v7 & 0x80000000) != 0)
  {
    v12 = *__error();
    v13 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16 = *__error();
      v17 = __error();
      v18 = strerror(*v17);
      *__s = 136316162;
      v33 = "fd_hold_assertion";
      v34 = 1024;
      v35 = 922;
      v36 = 2080;
      v37 = v42;
      v38 = 1024;
      v39 = v16;
      v40 = 2080;
      v41 = v18;
      _os_log_error_impl(&dword_1C278D000, v13, OS_LOG_TYPE_ERROR, "%s:%d: Unable to take assertion on %s: %d(%s)", __s, 0x2Cu);
    }

    *__error() = v12;
  }

  else if (a2)
  {
    bzero(__s, 0x402uLL);
    __sprintf_chk(__s, 0, 0x402uLL, "%s$", v42);
    v8 = strlen(__s);
    v9 = fd_write(a2, __s, v8);
    if (v9 != strlen(__s))
    {
      v10 = *__error();
      v11 = _SILogForLogForCategory(10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v19 = __error();
        v20 = strerror(*v19);
        v21 = *__error();
        *buf = 136315906;
        v25 = "fd_hold_assertion";
        v26 = 1024;
        v27 = 927;
        v28 = 2080;
        v29 = v20;
        v30 = 1024;
        v31 = v21;
        _os_log_error_impl(&dword_1C278D000, v11, OS_LOG_TYPE_ERROR, "%s:%d: bg assertion touch file write error: %s(%d)", buf, 0x22u);
      }

      *__error() = v10;
      v7 = 0xFFFFFFFFLL;
    }
  }

  if (a1)
  {
    *(a1 + 88) = CFAbsoluteTimeGetCurrent() + a3;
    _fd_release_fd(a1, v6, 0, v23);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v7;
}

void fd_update_assertion(uint64_t a1, int a2)
{
  v4 = *(a1 + 88);
  v5 = v4 - CFAbsoluteTimeGetCurrent();
  if (v5 > 0.0)
  {
    v6[0] = 0;
    v6[1] = (v5 * 1000000000.0);
    if (fcntl(a2, 108, v6))
    {
      *(a1 + 88) = 0;
    }
  }
}

uint64_t fd_no_cache(uint64_t a1)
{
  v5 = 0;
  result = _fd_acquire_fd(a1, &v5);
  if (result != -1)
  {
    v3 = result;
    *(a1 + 56) |= 1u;
    v4 = fcntl(result, 48, 1);
    fcntl(v3, 76, *(a1 + 56) & 1);
    _fd_release_fd(a1, v3, 0, v5);
    return v4;
  }

  return result;
}

void fd_reparent(uint64_t a1, int a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*(a1 + 44) != a2)
  {
    *v14 = 0;
    v4 = _fd_acquire_fd(a1, v14);
    if (v4 != -1)
    {
      v5 = v4;
      bzero(v21, 0x400uLL);
      v6 = fd_name(a1, v21, 0x400uLL);
      if (v6 && renameat(*(a1 + 44), v6, a2, v6) != -1)
      {
        *(a1 + 44) = a2;
        _fd_release_fd(a1, v5, 0, *v14);
        pthread_mutex_lock(&g_fd_lock);
        v7 = *(a1 + 80);
        if (v7)
        {
          *(a1 + 80) = 0;
          pthread_mutex_unlock(&g_fd_lock);
          fd_release(v7);
        }

        else
        {
          pthread_mutex_unlock(&g_fd_lock);
        }

        goto LABEL_10;
      }

      _fd_release_fd(a1, v5, 0, *v14);
    }

    bzero(v21, 0x400uLL);
    v8 = *__error();
    v9 = *__error();
    v10 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = fd_realpath(a1, v21);
      *v14 = 136315906;
      *&v14[4] = "fd_reparent";
      v13 = "";
      v15 = 1024;
      if (v12)
      {
        v13 = v12;
      }

      v16 = 1148;
      v17 = 2080;
      v18 = v13;
      v19 = 1024;
      v20 = v8;
      _os_log_error_impl(&dword_1C278D000, v10, OS_LOG_TYPE_ERROR, "%s:%d: reparent(%s) err:%d", v14, 0x22u);
    }

    *__error() = v9;
    *__error() = v8;
  }

LABEL_10:
  v11 = *MEMORY[0x1E69E9840];
}

void fd_rename_over_and_release(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v4 = _fd_acquire_fd(a2, &v16);
  if (v4 != -1)
  {
    v5 = v4;
    bzero(v25, 0x400uLL);
    v6 = fd_name(a1, v25, 0x400uLL);
    bzero(buf, 0x400uLL);
    v7 = fd_name(a2, buf, 0x400uLL);
    if (renameat(*(a2 + 44), v7, *(a1 + 44), v6) != -1)
    {
      os_unfair_lock_lock(&g_name_lock);
      v8 = *(a1 + 72);
      *(a1 + 72) = *(a2 + 72);
      *(a2 + 72) = v8;
      os_unfair_lock_unlock(&g_name_lock);
      _fd_release_fd(a2, v5, 0, v16);
      fd_release(a1);
      pthread_mutex_lock(&g_fd_lock);
      v9 = *(a2 + 80);
      if (v9)
      {
        *(a2 + 80) = 0;
        pthread_mutex_unlock(&g_fd_lock);
        fd_release(v9);
      }

      else
      {
        pthread_mutex_unlock(&g_fd_lock);
      }

      goto LABEL_8;
    }

    _fd_release_fd(a2, v5, 0, v16);
    fd_release(a1);
  }

  bzero(v25, 0x400uLL);
  v10 = *__error();
  v11 = *__error();
  v12 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v14 = fd_realpath(a2, v25);
    *buf = 136315906;
    v18 = "fd_rename_over_and_release";
    v15 = "";
    v19 = 1024;
    if (v14)
    {
      v15 = v14;
    }

    v20 = 1204;
    v21 = 2080;
    v22 = v15;
    v23 = 1024;
    v24 = v10;
    _os_log_error_impl(&dword_1C278D000, v12, OS_LOG_TYPE_ERROR, "%s:%d: rename_over(%s) err:%d", buf, 0x22u);
  }

  *__error() = v11;
  *__error() = v10;
LABEL_8:
  v13 = *MEMORY[0x1E69E9840];
}

_DWORD *fd_mark_purgable(_DWORD *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = 67589;
  result = _fd_acquire_fd(a1, &v12);
  if (result != -1)
  {
    v3 = result;
    if (ffsctl(result, 0xC0084A44uLL, &v13, 0) == -1)
    {
      v4 = *__error();
      bzero(v24, 0x400uLL);
      v5 = fcntl(a1[11], 50, v24);
      v6 = v24[0];
      v7 = *__error();
      v8 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        if (v6)
        {
          v10 = v5 < 0;
        }

        else
        {
          v10 = 1;
        }

        if (v10)
        {
          v11 = 0;
        }

        else
        {
          v11 = v24;
        }

        *buf = 136316162;
        v15 = "fd_mark_purgable";
        v16 = 1024;
        v17 = 1763;
        v18 = 2080;
        v19 = v11;
        v20 = 2048;
        v21 = v13;
        v22 = 1024;
        v23 = v4;
        _os_log_error_impl(&dword_1C278D000, v8, OS_LOG_TYPE_ERROR, "%s:%d: mark purgable failed, path:%s flags:0x%ld errno:%d", buf, 0x2Cu);
      }

      *__error() = v7;
      _fd_release_fd(a1, v3, 0, v12);
      result = __error();
      *result = v4;
    }

    else
    {
      result = _fd_release_fd(a1, v3, 0, v12);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

_DWORD *fd_invalidate(_DWORD *result)
{
  if (result)
  {
    v1 = result;
    v6 = 0;
    if (*result != -50529037)
    {
      v2 = __si_assert_copy_extra_661(-1);
      v3 = v2;
      v4 = "";
      if (v2)
      {
        v4 = v2;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "fd_obj.c", 1780, "obj->_magic==(0xFCFCFCF3)", v4);
      free(v3);
      if (__valid_fs(-1))
      {
        v5 = 2989;
      }

      else
      {
        v5 = 3072;
      }

      *v5 = -559038737;
      abort();
    }

    pthread_mutex_lock(&g_fd_lock);
    *(v1 + 52) = 1;
    if (!*(v1 + 36) || _fd_remove_locked(v1, &v6) == -1)
    {

      return pthread_mutex_unlock(&g_fd_lock);
    }

    else
    {
      *(v1 + 56) &= ~8u;
      pthread_mutex_unlock(&g_fd_lock);
      return guarded_close_np();
    }
  }

  return result;
}

_DWORD *fd_warmup(_DWORD *a1)
{
  v4 = 0;
  result = _fd_acquire_fd(a1, &v4);
  if (result != -1)
  {
    a1[17] = 1;
    v3 = v4;

    return _fd_release_fd(a1, result, 0, v3);
  }

  return result;
}

uint64_t fd_copyfile(uint64_t a1, uint64_t a2, int a3)
{
  v27 = 0;
  if (!a1)
  {
    v12 = __error();
    v13 = 2;
LABEL_8:
    *v12 = v13;
    return 0xFFFFFFFFLL;
  }

  if (!a2)
  {
    v12 = __error();
    v13 = 22;
    goto LABEL_8;
  }

  v6 = *(a1 + 44);
  v7 = *(a1 + 72);
  v8 = *(a2 + 44);
  v9 = *(a2 + 72);
  if (a3)
  {
    v10 = copyFileFallback(v6, v7, v8, v9, &v27, 1, 1);
    v11 = v10 ^ 1u;
    if ((v10 & 1) == 0)
    {
      return v11;
    }
  }

  else
  {
    v11 = copyFileFallback(v6, v7, v8, v9, &v27, 0, 0) ^ 1;
    if (v11)
    {
      return v11;
    }
  }

  if (*(a2 + 40) != -1)
  {
    __buf = 0;
    pthread_mutex_lock(&g_fd_lock);
    v15 = _fd_remove_locked(a2, &__buf);
    pthread_mutex_unlock(&g_fd_lock);
    if (v15 != -1)
    {
      guarded_close_np();
      v20 = _fd_open(*(a2 + 44), *(a2 + 72), *(a2 + 48), *(a2 + 56) & 1, (*(a2 + 56) >> 4), v16, v17, v18, v19);
      arc4random_buf(&__buf, 8uLL);
      v25 = *(a2 + 48);
      v21 = change_fdguard_np();
      __error();
      if (v21 && gSILogLevels[0] >= 5)
      {
        v22 = *__error();
        v23 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *v24 = 0;
          _os_log_impl(&dword_1C278D000, v23, OS_LOG_TYPE_DEFAULT, "copy file failed to change fdguard", v24, 2u);
        }

        *__error() = v22;
      }

      if (v20 != -1)
      {
        pthread_mutex_lock(&g_fd_lock);
        if (*(a2 + 40) == -1)
        {
          *(a2 + 40) = v20;
          *(a2 + 8) = __buf;
          fd_update_assertion(a2, v20);
          _fd_update_locked(a2, 1, &__buf);
        }

        pthread_mutex_unlock(&g_fd_lock);
        guarded_close_np();
      }
    }
  }

  return v11;
}

uint64_t RLEOIDArrayCloseOid_locked(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 384))
  {
    return 0;
  }

  v4 = *(a1 + 224);
  if (v4)
  {
    result = SIValueSet<unsigned long long>::_SIValueSetInnerClose(a1 + 256, *(a1 + 216) | a2 & ~(-1 << (60 - 4 * v4)), v4);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = SIValueSet<unsigned long long>::_SIValueSetInnerClose(a1 + 256, a2, 0);
    if (!result)
    {
      return result;
    }
  }

  return *(a1 + 216) | result;
}

uint64_t SIValueSet<unsigned long long>::_SIValueSetInnerClose(uint64_t a1, unint64_t a2, int a3)
{
  v5 = (a3 + 1);
  v6 = 64 - 4 * (a3 + 1);
  v7 = a2 >> v6;
  v8 = (a2 >> v6) & 0xF;
  v9 = *(a1 + 8 * v8);
  if (v9)
  {
    result = SIValueSet<unsigned long long>::_SIValueSetInnerClose(v9 & 0xFFFFFFFFFFFFFFFELL, a2, (a3 + 1));
    if (result)
    {
      return result;
    }
  }

  else if (v9)
  {
    v10 = (*(*v9 + 24))(v9, a2, ~(-1 << v6));
    if (v10)
    {
      v11 = (-1 << v6) & a2;
      return v10 | v11;
    }
  }

  v13 = v7 & 0xF;
  v14 = 1 << v6;
  v15 = (1 << v6) - 1;
  if (v13 != 15)
  {
    v16 = 8 * v8;
    v17 = v14 + a2;
    do
    {
      v18 = *(a1 + 8 + v16);
      if (v18)
      {
        result = SIValueSet<unsigned long long>::_SIValueSetInnerClose(v18 & 0xFFFFFFFFFFFFFFFELL, v17, v5);
        if (result)
        {
          return result;
        }
      }

      else if (v18)
      {
        v10 = (*(*v18 + 24))(v18, v17, v15);
        if (v10)
        {
          v11 = v17 & -v14;
          return v10 | v11;
        }
      }

      v16 += 8;
      v17 += v14;
    }

    while (v16 != 120);
    if (v13 <= 1)
    {
      return 0;
    }
  }

  v19 = a1 - 8;
  v20 = a2 - v14;
  while (1)
  {
    v21 = *(v19 + 8 * v8);
    if (v21)
    {
      result = SIValueSet<unsigned long long>::_SIValueSetInnerClose(v21 & 0xFFFFFFFFFFFFFFFELL, v20, v5);
      if (result)
      {
        return result;
      }

      goto LABEL_17;
    }

    if (v21)
    {
      v10 = (*(*v21 + 24))(v21, v20, v15);
      if (v10)
      {
        break;
      }
    }

LABEL_17:
    --v8;
    v20 -= v14;
    if (v8 <= 1)
    {
      return 0;
    }
  }

  v11 = v20 & -v14;
  return v10 | v11;
}

uint64_t RLEOIDArrayAddOid(uint64_t a1, unint64_t a2)
{
  pthread_rwlock_wrlock((a1 + 16));
  SIValueSet<unsigned long long>::SIValueSetInsert((a1 + 216), a2);

  return pthread_rwlock_unlock((a1 + 16));
}

uint64_t RLEOIDArrayCreate(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!__kRLEOIDArrayTypeID)
  {
    __kRLEOIDArrayTypeID = _CFRuntimeRegisterClass();
  }

  Instance = _CFRuntimeCreateInstance();
  *(Instance + 216) = 0;
  *(Instance + 224) = 0;
  *(Instance + 240) = 0;
  *(Instance + 248) = a1;
  v7 = MEMORY[0x1C691E420](a1, 8072, 0xA00408091C53FLL, 0);
  bzero(v7, 0x1F88uLL);
  *(Instance + 232) = v7;
  *(Instance + 256) = 0u;
  *(Instance + 272) = 0u;
  *(Instance + 288) = 0u;
  *(Instance + 304) = 0u;
  *(Instance + 320) = 0u;
  *(Instance + 336) = 0u;
  *(Instance + 352) = 0u;
  *(Instance + 368) = 0u;
  for (*(Instance + 384) = 1; a3; --a3)
  {
    v8 = *a2++;
    SIValueSet<unsigned long long>::SIValueSetInsert((Instance + 216), v8);
  }

  return Instance;
}

uint64_t RLEOIDArrayCreateMutableCopy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!__kRLEOIDArrayTypeID)
  {
    __kRLEOIDArrayTypeID = _CFRuntimeRegisterClass();
  }

  Instance = _CFRuntimeCreateInstance();
  pthread_rwlock_rdlock((a3 + 16));
  *(Instance + 216) = *(a3 + 216);
  *(Instance + 224) = *(a3 + 224);
  *(Instance + 240) = 0;
  *(Instance + 248) = a1;
  v6 = MEMORY[0x1C691E420](a1, 8072, 0xA00408091C53FLL, 0);
  bzero(v6, 0x1F88uLL);
  *(Instance + 232) = v6;
  SIValueSet<unsigned long long>::CombLevel_s::CombLevel_s(Instance + 256, a3 + 256, *(Instance + 224), (Instance + 232));
  *(Instance + 384) = *(a3 + 384);
  pthread_rwlock_unlock((a3 + 16));
  return Instance;
}

uint64_t SIValueSet<unsigned long long>::CombLevel_s::CombLevel_s(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v8 = 60 - 4 * a3;
  if (v8 <= 12)
  {
    for (i = 0; i != 128; i += 8)
    {
      v17 = *(a2 + i);
      if (v17)
      {
        if (v17)
        {
          v18 = a4[1];
          if (v18 == 63 || (v19 = *a4) == 0)
          {
            v19 = MEMORY[0x1C691E420](a4[2], 8072, 0xA00408091C53FLL, 0);
            *v19 = *a4;
            bzero(v19 + 1, 0x1F80uLL);
            v18 = 0;
            *a4 = v19;
          }

          a4[1] = v18 + 1;
          v16 = (SIValueSet<unsigned long long>::CombLevel_s::CombLevel_s(&v19[16 * v18 + 1], v17 & 0xFFFFFFFFFFFFFFFELL, (a3 + 1), a4) | 1);
        }

        else
        {
          v16 = MEMORY[0x1C691E420](a4[2], 520, 0x1081040CC9A75ECLL, 0);
          *v16 = &unk_1F42811C8;
          memcpy(v16 + 1, (v17 + 8), 0x200uLL);
        }
      }

      else
      {
        v16 = 0;
      }

      *(a1 + i) = v16;
    }
  }

  else if (v8 < 0x20)
  {
    if (v8 <= 0xF)
    {
      for (j = 0; j != 128; j += 8)
      {
        v39 = *(a2 + j);
        if (v39)
        {
          if (v39)
          {
            v46 = a4[1];
            if (v46 == 63 || (v47 = *a4) == 0)
            {
              v47 = MEMORY[0x1C691E420](a4[2], 8072, 0xA00408091C53FLL, 0);
              *v47 = *a4;
              bzero(v47 + 1, 0x1F80uLL);
              v46 = 0;
              *a4 = v47;
            }

            a4[1] = v46 + 1;
            v38 = SIValueSet<unsigned long long>::CombLevel_s::CombLevel_s(&v47[16 * v46 + 1], v39 & 0xFFFFFFFFFFFFFFFELL, (a3 + 1), a4) | 1;
          }

          else
          {
            v38 = MEMORY[0x1C691E420](a4[2], 136, 0x1081040C0A9C235, 0);
            *v38 = &unk_1F4281128;
            *(v38 + 8) = *(v39 + 8);
            v40 = *(v39 + 26);
            v41 = *(v39 + 42);
            v42 = *(v39 + 58);
            *(v38 + 10) = *(v39 + 10);
            *(v38 + 58) = v42;
            *(v38 + 42) = v41;
            *(v38 + 26) = v40;
            v43 = *(v39 + 90);
            v44 = *(v39 + 106);
            v45 = *(v39 + 120);
            *(v38 + 74) = *(v39 + 74);
            *(v38 + 120) = v45;
            *(v38 + 106) = v44;
            *(v38 + 90) = v43;
          }
        }

        else
        {
          v38 = 0;
        }

        *(a1 + j) = v38;
      }
    }

    else
    {
      for (k = 0; k != 128; k += 8)
      {
        v22 = *(a2 + k);
        if (v22)
        {
          if (v22)
          {
            v35 = a4[1];
            if (v35 == 63 || (v36 = *a4) == 0)
            {
              v36 = MEMORY[0x1C691E420](a4[2], 8072, 0xA00408091C53FLL, 0);
              *v36 = *a4;
              bzero(v36 + 1, 0x1F80uLL);
              v35 = 0;
              *a4 = v36;
            }

            a4[1] = v35 + 1;
            v21 = SIValueSet<unsigned long long>::CombLevel_s::CombLevel_s(&v36[16 * v35 + 1], v22 & 0xFFFFFFFFFFFFFFFELL, (a3 + 1), a4) | 1;
          }

          else
          {
            v21 = MEMORY[0x1C691E420](a4[2], 264, 0x10810409D866994, 0);
            *v21 = &unk_1F4281088;
            *(v21 + 8) = *(v22 + 8);
            v23 = *(v22 + 28);
            v24 = *(v22 + 44);
            v25 = *(v22 + 60);
            *(v21 + 12) = *(v22 + 12);
            *(v21 + 60) = v25;
            *(v21 + 44) = v24;
            *(v21 + 28) = v23;
            v26 = *(v22 + 92);
            v27 = *(v22 + 108);
            v28 = *(v22 + 124);
            *(v21 + 76) = *(v22 + 76);
            *(v21 + 124) = v28;
            *(v21 + 108) = v27;
            *(v21 + 92) = v26;
            v29 = *(v22 + 156);
            v30 = *(v22 + 172);
            v31 = *(v22 + 188);
            *(v21 + 140) = *(v22 + 140);
            *(v21 + 188) = v31;
            *(v21 + 172) = v30;
            *(v21 + 156) = v29;
            v32 = *(v22 + 220);
            v33 = *(v22 + 236);
            v34 = *(v22 + 248);
            *(v21 + 204) = *(v22 + 204);
            *(v21 + 248) = v34;
            *(v21 + 236) = v33;
            *(v21 + 220) = v32;
          }
        }

        else
        {
          v21 = 0;
        }

        *(a1 + k) = v21;
      }
    }
  }

  else
  {
    for (m = 0; m != 128; m += 8)
    {
      v11 = *(a2 + m);
      if (v11)
      {
        if (v11)
        {
          v13 = a4[1];
          if (v13 == 63 || (v14 = *a4) == 0)
          {
            v14 = MEMORY[0x1C691E420](a4[2], 8072, 0xA00408091C53FLL, 0);
            *v14 = *a4;
            bzero(v14 + 1, 0x1F80uLL);
            v13 = 0;
            *a4 = v14;
          }

          a4[1] = v13 + 1;
          v10 = (SIValueSet<unsigned long long>::CombLevel_s::CombLevel_s(&v14[16 * v13 + 1], v11 & 0xFFFFFFFFFFFFFFFELL, (a3 + 1), a4) | 1);
        }

        else
        {
          v10 = MEMORY[0x1C691E420](a4[2], 520, 0x1081040CC9A75ECLL, 0);
          v12 = *(v11 + 8);
          *v10 = &unk_1F4280FE8;
          v10[1] = v12;
          memcpy(v10 + 2, (v11 + 16), 0x1F8uLL);
        }
      }

      else
      {
        v10 = 0;
      }

      *(a1 + m) = v10;
    }
  }

  return a1;
}

uint64_t RLEOIDArraySerialize(uint64_t a1, uint64_t a2, uint64_t *a3, off_t *a4)
{
  pthread_rwlock_rdlock((a1 + 16));
  if (a4)
  {
    v8 = *a4;
  }

  else
  {
    v8 = 0;
  }

  v14 = 0u;
  *v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  if (a3)
  {
    v9 = *a3;
  }

  else
  {
    v9 = 0;
  }

  if (store_stream_init_fd(&v12, a2, v9, v8, 1))
  {
    v16[0] = &unk_1F4281268;
    v16[1] = &v12;
    SIValueSet<unsigned long long>::StoreStreamCtx::write_vint32(v16, *(a1 + 384));
    (*(v16[0] + 8))(v16, *(a1 + 224));
    if (*(a1 + 224))
    {
      (*v16[0])(v16, *(a1 + 216));
      v10 = *(a1 + 224);
    }

    else
    {
      v10 = 0;
    }

    SIValueSet<unsigned long long>::_SIValueSetInnerSerialize(a1 + 256, *(a1 + 216), v10, v16);
    (*v16[0])(v16, 0);
    store_stream_flush(&v12, 0);
    if (a4)
    {
      *a4 = *(&v13 + 1);
    }

    if (v15[0])
    {
      free(v15[0]);
      v15[0] = 0;
      *&v14 = 0;
      if (v12 != -1 && v15[1])
      {
        _fd_release_fd(v15[1], v12, 0, *(&v12 + 1));
        LODWORD(v12) = -1;
      }

      v15[1] = 0;
    }
  }

  return pthread_rwlock_unlock((a1 + 16));
}

void *SIValueSet<unsigned long long>::StoreStreamCtx::write_vint32(uint64_t a1, unsigned int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  result = *(a1 + 8);
  v3 = result[5];
  if ((result[4] - v3) < 6)
  {
    memset(v11, 0, sizeof(v11));
    if (a2 > 0x7F)
    {
      if (a2 >> 14)
      {
        if (a2 >> 21)
        {
          if (a2 >> 28)
          {
            LOBYTE(v11[0]) = -16;
            *(v11 + 1) = a2;
            v10 = 5;
          }

          else
          {
            LOBYTE(v11[0]) = HIBYTE(a2) | 0xE0;
            BYTE1(v11[0]) = BYTE2(a2);
            BYTE2(v11[0]) = BYTE1(a2);
            BYTE3(v11[0]) = a2;
            v10 = 4;
          }
        }

        else
        {
          LOBYTE(v11[0]) = BYTE2(a2) | 0xC0;
          BYTE1(v11[0]) = BYTE1(a2);
          BYTE2(v11[0]) = a2;
          v10 = 3;
        }
      }

      else
      {
        LOBYTE(v11[0]) = BYTE1(a2) | 0x80;
        BYTE1(v11[0]) = a2;
        v10 = 2;
      }
    }

    else
    {
      LOBYTE(v11[0]) = a2;
      v10 = 1;
    }

    result = store_stream_write_bytes_3266(result, v11, v10);
  }

  else
  {
    v4 = result[6];
    if (a2 > 0x7F)
    {
      if (a2 >> 14)
      {
        if (a2 >> 21)
        {
          v8 = v4 + v3;
          if (a2 >> 28)
          {
            *v8 = -16;
            *(v8 + 1) = a2;
            v6 = v3 + 5;
          }

          else
          {
            *v8 = HIBYTE(a2) | 0xE0;
            *(v8 + 1) = BYTE2(a2);
            *(v8 + 2) = BYTE1(a2);
            v6 = v3 + 4;
            *(v8 + 3) = a2;
          }
        }

        else
        {
          v7 = (v4 + v3);
          *v7 = BYTE2(a2) | 0xC0;
          v7[1] = BYTE1(a2);
          v6 = v3 + 3;
          v7[2] = a2;
        }
      }

      else
      {
        v5 = (v4 + v3);
        *v5 = BYTE1(a2) | 0x80;
        v6 = v3 + 2;
        v5[1] = a2;
      }

      result[5] = v6;
    }

    else
    {
      *(v4 + v3) = a2;
      result[5] = v3 + 1;
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SIValueSet<unsigned long long>::_SIValueSetInnerSerialize(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v7 = 0;
  v8 = (a3 + 1);
  v9 = 64 - 4 * (a3 + 1);
  do
  {
    v10 = *(a1 + 8 * v7);
    if (v10)
    {
      v11 = v7 << v9;
      if (v10)
      {
        SIValueSet<unsigned long long>::_SIValueSetInnerSerialize(v10 & 0xFFFFFFFFFFFFFFFELL, v11 | a2, v8, a4);
      }

      else
      {
        (*(*a4 + 8))(a4, v8);
        (**a4)(a4, v11 | a2);
        (*(*v10 + 64))(v10, a4);
      }
    }

    ++v7;
  }

  while (v7 != 16);
  v12 = *(*a4 + 8);

  return v12(a4, 0);
}

uint64_t SIValueSet<unsigned long long>::StoreStreamCtx::write_bytes(uint64_t a1, char *a2, size_t __n)
{
  v3 = __n;
  v4 = *(a1 + 8);
  v6 = *(v4 + 32);
  v5 = *(v4 + 40);
  if (v5 + __n >= v6)
  {
    while (1)
    {
      v8 = v6 - v5;
      v9 = a2;
      memcpy((*(v4 + 48) + v5), a2, v6 - v5);
      *(v4 + 40) += v8;
      result = store_stream_flush(v4, 0);
      if (result)
      {
        break;
      }

      a2 = &v9[v8];
      v3 -= v8;
      v6 = *(v4 + 32);
      v5 = *(v4 + 40);
      if (v5 + v3 < v6)
      {
        goto LABEL_2;
      }
    }
  }

  else
  {
LABEL_2:
    result = memcpy((*(v4 + 48) + v5), a2, v3);
    *(v4 + 40) += v3;
  }

  return result;
}

uint64_t SIValueSet<unsigned long long>::StoreStreamCtx::write_vint(uint64_t a1, unint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  v4 = v3[5];
  if ((v3[4] - v4) < 0xA)
  {
    memset(v8, 0, sizeof(v8));
    v7 = ldb_writeSmallVInt64(v8, 0, a2);
    result = store_stream_write_bytes_3266(v3, v8, v7);
  }

  else
  {
    result = ldb_writeSmallVInt64(v3[6], v4, a2);
    v3[5] = result;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

const void *RLEOIDArrayDeserialize(uint64_t a1, uint64_t a2, off_t *a3)
{
  v4 = a2;
  if (a3)
  {
    v6 = *a3;
  }

  else
  {
    v6 = 0;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  Instance = 0;
  if (store_stream_init_fd(&v11, a2, 0, v6, 0))
  {
    if (!__kRLEOIDArrayTypeID)
    {
      __kRLEOIDArrayTypeID = _CFRuntimeRegisterClass();
    }

    Instance = _CFRuntimeCreateInstance();
    *&v10.st_dev = &unk_1F42812A0;
    v10.st_ino = &v11;
    v15 = 0;
    SIValueSet<unsigned long long>::SIValueSet(Instance + 216, &v10, a1, &v15);
    if (v15)
    {
      CFRelease(Instance);
      memset(&v10, 0, sizeof(v10));
      v8 = fstat(v4, &v10);
      if (a3 && !v8)
      {
        *a3 = v10.st_size;
      }

      Instance = 0;
    }

    else if (a3)
    {
      *a3 = *(&v12 + 1) - v13 + *(&v13 + 1);
    }

    if (v14)
    {
      free(v14);
      *&v14 = 0;
      *&v13 = 0;
      if (v11 != -1)
      {
        if (*(&v14 + 1))
        {
          _fd_release_fd(*(&v14 + 1), v11, 0, *(&v11 + 1));
        }
      }
    }
  }

  return Instance;
}

uint64_t SIValueSet<unsigned long long>::SIValueSet(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v34 = *MEMORY[0x1E69E9840];
  *(a1 + 24) = 0;
  *(a1 + 32) = a3;
  v7 = MEMORY[0x1C691E420](a3, 8072, 0xA00408091C53FLL, 0);
  bzero(v7, 0x1F88uLL);
  *(a1 + 16) = v7;
  v8 = (a1 + 16);
  *(a1 + 40) = 0u;
  v9 = a1 + 40;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = (**a2)(a2) != 0;
  v10 = (**a2)(a2);
  *(a1 + 8) = v10;
  if (v10)
  {
    v11 = (*(*a2 + 8))(a2);
    v12 = *(a1 + 8);
    *a1 = v11;
    if ((4 * v12 - 61) < 0xFFFFFFBF)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      *buf = 67109120;
      v31 = v12;
      v13 = MEMORY[0x1E69E9C10];
      v14 = "Read depth %d in serialized value set";
      goto LABEL_22;
    }
  }

  else
  {
    *a1 = 0;
  }

  v15 = (**a2)(a2);
  if (v15)
  {
    while (1)
    {
      *(a1 + 168) = 0;
      v17 = (v15 - 1);
      if (v15 >= 16)
      {
        break;
      }

      v18 = (*(*a2 + 8))(a2);
      v19 = *(a1 + 8);
      v20 = v18 >> (60 - 4 * v19);
      v21 = v20 & 0xF;
      if (*(v9 + 8 * v21))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 67109376;
          v31 = v17;
          v32 = 1024;
          v33 = v20 & 0xF;
          _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Read duplicate child entry at %d(%d) in serialized value set", buf, 0xEu);
        }

        v26 = 12;
        goto LABEL_25;
      }

      if (v17 <= v19)
      {
        v16 = SIValueSet<unsigned long long>::HolderFromStream(a2, a3, a4);
      }

      else
      {
        v22 = v18;
        v23 = *(a1 + 24);
        if (v23 == 63 || (v24 = *v8) == 0)
        {
          v24 = MEMORY[0x1C691E420](*(a1 + 32), 8072, 0xA00408091C53FLL, 0);
          *v24 = *(a1 + 16);
          bzero(v24 + 1, 0x1F80uLL);
          v23 = 0;
          *(a1 + 16) = v24;
          v19 = *(a1 + 8);
        }

        *(a1 + 24) = v23 + 1;
        v16 = SIValueSet<unsigned long long>::CombLevel_s::CombLevel_s(&v24[16 * v23 + 1], a2, (v19 + 1), v22, v17, (a1 + 16), a4) | 1;
      }

      *(v9 + 8 * v21) = v16;
      v15 = (**a2)(a2);
      if (!v15)
      {
        goto LABEL_17;
      }
    }

    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 67109120;
    v31 = v17;
    v13 = MEMORY[0x1E69E9C10];
    v14 = "Read depth %d in serialized value set";
LABEL_22:
    v25 = 8;
    goto LABEL_23;
  }

LABEL_17:
  if (!(*(*a2 + 8))(a2))
  {
    goto LABEL_26;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v13 = MEMORY[0x1E69E9C10];
    v14 = "missing end marker";
    v25 = 2;
LABEL_23:
    _os_log_error_impl(&dword_1C278D000, v13, OS_LOG_TYPE_ERROR, v14, buf, v25);
  }

LABEL_24:
  v26 = 13;
LABEL_25:
  *a4 = v26;
LABEL_26:
  v27 = *MEMORY[0x1E69E9840];
  return a1;
}

_OWORD *SIValueSet<unsigned long long>::CombLevel_s::CombLevel_s(_OWORD *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6, int *a7)
{
  v10 = a3;
  v37 = *MEMORY[0x1E69E9840];
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  v13 = (a3 + 1);
  if (a5 <= a3)
  {
    if (a5 != a3)
    {
LABEL_22:
      v31 = 13;
LABEL_23:
      *a7 = v31;
      goto LABEL_24;
    }

    v17 = SIValueSet<unsigned long long>::HolderFromStream(a2, a6[2], a7);
  }

  else
  {
    v14 = a6[1];
    if (v14 == 63 || (v15 = *a6) == 0)
    {
      v16 = a5;
      v15 = MEMORY[0x1C691E420](a6[2], 8072, 0xA00408091C53FLL, 0);
      *v15 = *a6;
      bzero(v15 + 1, 0x1F80uLL);
      a5 = v16;
      v14 = 0;
      *a6 = v15;
    }

    a6[1] = v14 + 1;
    v17 = SIValueSet<unsigned long long>::CombLevel_s::CombLevel_s(&v15[16 * v14 + 1], a2, v13, a4, a5, a6, a7) | 1;
  }

  v18 = 64 - 4 * v13;
  *(a1 + ((a4 >> v18) & 0xF)) = v17;
  if (!*a7)
  {
    v34 = 64 - 4 * v13;
    do
    {
      v20 = (**a2)(a2);
      if (!v20)
      {
        break;
      }

      v21 = v20;
      if (v20 >= 16)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v36 = v10;
          _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Read depth %d in serialized value set", buf, 8u);
        }

        goto LABEL_22;
      }

      v22 = (*(*a2 + 8))(a2);
      v23 = (v22 >> v18) & 0xF;
      if (*(a1 + v23))
      {
        v31 = 12;
        goto LABEL_23;
      }

      v24 = (v21 - 1);
      if (v24 <= v10)
      {
        v19 = SIValueSet<unsigned long long>::HolderFromStream(a2, a6[2], a7);
      }

      else
      {
        v25 = v22;
        v26 = v10;
        v27 = v13;
        v28 = a6[1];
        if (v28 == 63 || (v29 = *a6) == 0)
        {
          v29 = MEMORY[0x1C691E420](a6[2], 8072, 0xA00408091C53FLL, 0);
          *v29 = *a6;
          bzero(v29 + 1, 0x1F80uLL);
          v28 = 0;
          *a6 = v29;
        }

        a6[1] = v28 + 1;
        v30 = &v29[16 * v28 + 1];
        v13 = v27;
        v19 = SIValueSet<unsigned long long>::CombLevel_s::CombLevel_s(v30, a2, v27, v25, v24, a6, a7) | 1;
        v10 = v26;
        v18 = v34;
      }

      *(a1 + v23) = v19;
    }

    while (!*a7);
  }

LABEL_24:
  v32 = *MEMORY[0x1E69E9840];
  return a1;
}

void *SIValueSet<unsigned long long>::HolderFromStream(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v6 = (**a1)(a1);
  if (v6 > 3)
  {
    if (v6 == 4)
    {
      v13 = MEMORY[0x1C691E420](a2, 264, 0x10810409D866994, 0);
      *v13 = &unk_1F4281088;
      v14 = (**a1)(a1);
      result = v13;
      *(v13 + 8) = v14;
      if (v14 >= 0x40)
      {
        *a3 = 1;
        *(v13 + 8) = 0;
        goto LABEL_21;
      }

      v16 = (*(*a1 + 16))(a1, v13 + 12, 4 * v14);
      result = v13;
      if (v16 != 4 * *(v13 + 8))
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v6 != 8)
      {
        goto LABEL_10;
      }

      v10 = MEMORY[0x1C691E420](a2, 520, 0x1081040CC9A75ECLL, 0);
      *v10 = &unk_1F4280FE8;
      v11 = (**a1)(a1);
      result = v10;
      v10[1] = v11;
      if (v11 >= 0x40)
      {
        *a3 = 1;
        v10[1] = 0;
        goto LABEL_24;
      }

      v15 = (*(*a1 + 16))(a1, v10 + 2, 8 * v11);
      result = v10;
      if (v15 != 8 * v10[1])
      {
        goto LABEL_23;
      }
    }

LABEL_21:
    if (!*a3)
    {
      return result;
    }

    goto LABEL_24;
  }

  if (!v6)
  {
    v12 = MEMORY[0x1C691E420](a2, 520, 0x1081040CC9A75ECLL, 0);
    *v12 = &unk_1F42811C8;
    if ((*(*a1 + 16))(a1, v12 + 1, 512) == 512)
    {
      result = v12;
      goto LABEL_21;
    }

    result = v12;
    goto LABEL_23;
  }

  if (v6 != 2)
  {
LABEL_10:
    result = 0;
    *a3 = 14;
    return result;
  }

  v7 = MEMORY[0x1C691E420](a2, 136, 0x1081040C0A9C235, 0);
  *v7 = &unk_1F4281128;
  v8 = (**a1)(a1);
  result = v7;
  *(v7 + 8) = v8;
  if ((v8 & 0xFFC0) == 0)
  {
    v17 = (*(*a1 + 16))(a1, v7 + 10, 2 * (v8 & 0x3Fu));
    result = v7;
    if (v17 == 2 * *(v7 + 8))
    {
      goto LABEL_21;
    }

LABEL_23:
    *a3 = 1;
    goto LABEL_24;
  }

  *a3 = 1;
  *(v7 + 8) = 0;
LABEL_24:
  (*(*result + 80))(result);
  return 0;
}

size_t SIValueSet<unsigned long long>::ReadStreamCtx::read_bytes(uint64_t a1, char *__dst, size_t __n)
{
  v4 = __dst;
  v5 = *(a1 + 8);
  v6 = *(v5 + 4);
  v7 = *(v5 + 5);
  if (v7 + __n > v6)
  {
    v8 = v6 - v7;
    if (v6 != v7)
    {
      memcpy(__dst, (*(v5 + 6) + v7), v6 - v7);
      v6 = *(v5 + 4);
      *(v5 + 5) += v8;
    }

    v11 = prot_pread(*v5, *(v5 + 6), v6, *(v5 + 3));
    if (v11 == -1)
    {
      v8 = 0;
    }

    else
    {
      *(v5 + 4) = v11;
      *(v5 + 5) = 0;
      *(v5 + 3) += v11;
      if (!v11)
      {
        v9 = 0;
        return v8 + v9;
      }

      v4 += v8;
      __n -= v8;
      if (__n <= v11)
      {
        v7 = 0;
        goto LABEL_3;
      }

      __na = v11;
      while (1)
      {
        memcpy(v4, *(v5 + 6), __na);
        v12 = *(v5 + 6);
        *(v5 + 5) += __na;
        v13 = prot_pread(*v5, v12, *(v5 + 4), *(v5 + 3));
        if (v13 == -1)
        {
          break;
        }

        *(v5 + 4) = v13;
        *(v5 + 5) = 0;
        *(v5 + 3) += v13;
        if (!v13)
        {
          v9 = v8;
          v8 = __na;
          return v8 + v9;
        }

        v7 = 0;
        v4 += __na;
        __n -= __na;
        v8 += __na;
        __na = v13;
        if (__n <= v13)
        {
          goto LABEL_3;
        }
      }
    }

    v5[4] = *__error();
    v9 = v8;
    v8 = 0;
    return v8 + v9;
  }

  v8 = 0;
LABEL_3:
  memcpy(v4, (*(v5 + 6) + v7), __n);
  *(v5 + 5) += __n;
  v9 = v8;
  v8 = __n;
  return v8 + v9;
}

unint64_t SIValueSet<unsigned long long>::ReadStreamCtx::read_vint(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (*(v1 + 32) - *(v1 + 40) < 0xAuLL)
  {
    v10 = 0;
    __dst = 0;
    if (store_stream_read_bytes_3410(v1, &__dst, 1uLL) == 1 && ((v5 = v2_vInt64DataSize(__dst), v5 == 1) || store_stream_read_bytes_3410(v1, &__dst + 1, (v5 - 1)) == v6))
    {
      v8 = 0;
      result = v2_readVInt64_2873(&__dst, &v8);
    }

    else
    {
      result = 0;
    }

    v7 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v2 = *(v1 + 48);
    v3 = *MEMORY[0x1E69E9840];

    return v2_readVInt64_2873(v2, (v1 + 40));
  }

  return result;
}

uint64_t SIValueSet<unsigned long long>::ReadStreamCtx::read_vint32(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  v2 = *(v1 + 40);
  if ((*(v1 + 32) - v2) < 6)
  {
    v14 = 0;
    __dst = 0;
    if (store_stream_read_bytes_3410(v1, &__dst, 1uLL) != 1)
    {
      goto LABEL_23;
    }

    if ((__dst & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    v9 = 2;
    v10 = 3;
    if (__dst >= 0xF0u)
    {
      v10 = 4;
    }

    if (__dst >= 0xE0u)
    {
      v9 = v10;
    }

    v11 = __dst >= 0xC0u ? v9 : 1;
    if (store_stream_read_bytes_3410(v1, &__dst + 1, v11) == v11)
    {
LABEL_22:
      v12 = 0;
      result = v2_readVInt32(&__dst, &v12);
    }

    else
    {
LABEL_23:
      result = 0;
    }
  }

  else
  {
    v3 = *(v1 + 48);
    v4 = v2 + 1;
    v5 = v3 + v2;
    result = *(v3 + v2);
    if (*(v3 + v2) < 0)
    {
      if (result > 0xBF)
      {
        if (result > 0xDF)
        {
          if (result > 0xEF)
          {
            result = *(v3 + v4);
            v4 = v2 + 5;
          }

          else
          {
            result = ((result & 0xF) << 24) | (*(v3 + v4) << 16) | (*(v5 + 2) << 8) | *(v5 + 3);
            v4 = v2 + 4;
          }
        }

        else
        {
          result = ((result & 0x1F) << 16) | (*(v3 + v4) << 8) | *(v5 + 2);
          v4 = v2 + 3;
        }
      }

      else
      {
        v7 = *(v3 + v4) | ((result & 0x3F) << 8);
        v4 = v2 + 2;
        result = v7;
      }
    }

    *(v1 + 40) = v4;
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t v2_readVInt32(const unsigned __int8 *a1, unint64_t *a2)
{
  v3 = *a2;
  v4 = *a2 + 1;
  v5 = &a1[*a2];
  result = *v5;
  if (*v5 < 0)
  {
    if (result > 0xBF)
    {
      if (result > 0xDF)
      {
        if (result > 0xEF)
        {
          result = *&a1[v4];
          *a2 = v3 + 5;
        }

        else
        {
          result = ((result & 0xF) << 24) | (a1[v4] << 16) | (v5[2] << 8) | v5[3];
          *a2 = v3 + 4;
        }
      }

      else
      {
        result = ((result & 0x1F) << 16) | (a1[v4] << 8) | v5[2];
        *a2 = v3 + 3;
      }
    }

    else
    {
      result = a1[v4] | ((result & 0x3F) << 8);
      *a2 = v3 + 2;
    }
  }

  else
  {
    *a2 = v4;
  }

  return result;
}

uint64_t RLEOIDArrayAddSortedOids(uint64_t a1, void *a2, uint64_t a3)
{
  pthread_rwlock_wrlock((a1 + 16));
  SIValueSet<unsigned long long>::_SIValueSetAddSortedValues((a1 + 216), a2, a3, 0);

  return pthread_rwlock_unlock((a1 + 16));
}

void RLEOIDArrayAddOids(uint64_t a1, const void *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = 8 * a3;
    v7 = malloc_type_malloc(8 * a3, 0x100004000313F17uLL);
    memcpy(v7, a2, v5);
    qsort_oids(v7, a3);
    pthread_rwlock_wrlock((a1 + 16));
    SIValueSet<unsigned long long>::_SIValueSetAddSortedValues((a1 + 216), v7, a3, 0);
    pthread_rwlock_unlock((a1 + 16));

    free(v7);
  }
}

uint64_t RLEOIDArrayRemoveOid(uint64_t a1, unint64_t a2)
{
  pthread_rwlock_wrlock((a1 + 16));
  if ((*(a1 + 384) & 1) == 0)
  {
    v4 = *(a1 + 224);
    if (!v4 || *(a1 + 216) == ((-1 << (-4 * v4)) & a2))
    {
      SIValueSet<unsigned long long>::_SIValueSetInnerRemove(a1 + 256, a2, v4, a1 + 232);
    }
  }

  return pthread_rwlock_unlock((a1 + 16));
}

uint64_t RLEOIDArrayRemoveOids(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  pthread_rwlock_wrlock((a1 + 16));
  if ((*(a1 + 384) & 1) == 0)
  {
    v6 = *(a1 + 224);
    for (i = v6 ? -1 << (-4 * v6) : 0; a3; --a3)
    {
      v10 = *a2++;
      v9 = v10;
      if (((*(a1 + 216) ^ v10) & i) == 0)
      {
        SIValueSet<unsigned long long>::_SIValueSetInnerRemove(a1 + 256, v9, *(a1 + 224), a1 + 232);
      }
    }
  }

  return pthread_rwlock_unlock((a1 + 16));
}

uint64_t RLEOIDArrayRemoveOidsWithExistence(uint64_t a1, unint64_t *a2, uint64_t a3, _BYTE *a4)
{
  pthread_rwlock_wrlock((a1 + 16));
  if (a3 >= 1 && (*(a1 + 384) & 1) == 0)
  {
    v8 = 0;
    while (1)
    {
      v11 = *a2++;
      v10 = v11;
      if ((*(a1 + 384) & 1) == 0)
      {
        v12 = *(a1 + 224);
        if (v12)
        {
          if (*(a1 + 216) != ((-1 << (-4 * v12)) & v10) || !SIValueSet<unsigned long long>::_SIValueSetInnerRemove(a1 + 256, v10, v12, a1 + 232))
          {
            goto LABEL_7;
          }
        }

        else if ((SIValueSet<unsigned long long>::_SIValueSetInnerRemove(a1 + 256, v10, 0, a1 + 232) & 1) == 0)
        {
          goto LABEL_7;
        }

        *a4 = 1;
        ++v8;
      }

LABEL_7:
      ++a4;
      if (!--a3)
      {
        goto LABEL_4;
      }
    }
  }

  v8 = 0;
LABEL_4:
  pthread_rwlock_unlock((a1 + 16));
  return v8;
}

uint64_t RLEOIDArrayRemoveSortedOids(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  pthread_rwlock_wrlock((a1 + 16));
  if (a3 >= 1)
  {
    if (a4)
    {
      do
      {
        v9 = *a2++;
        v8 = v9;
        if ((*(a1 + 384) & 1) == 0)
        {
          v10 = *(a1 + 224);
          if (!v10 || *(a1 + 216) == ((-1 << (-4 * v10)) & v8))
          {
            SIValueSet<unsigned long long>::_SIValueSetInnerRemove(a1 + 256, v8, v10, a1 + 232);
          }
        }

        (*(a4 + 16))(a4);
        --a3;
      }

      while (a3);
    }

    else if ((*(a1 + 384) & 1) == 0)
    {
      do
      {
        v13 = *a2++;
        v12 = v13;
        if ((*(a1 + 384) & 1) == 0)
        {
          v14 = *(a1 + 224);
          if (!v14 || *(a1 + 216) == ((-1 << (-4 * v14)) & v12))
          {
            SIValueSet<unsigned long long>::_SIValueSetInnerRemove(a1 + 256, v12, v14, a1 + 232);
          }
        }

        --a3;
      }

      while (a3);
    }
  }

  return pthread_rwlock_unlock((a1 + 16));
}

uint64_t RLEOIDArrayGetOidCount(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v5 = 0;
  pthread_rwlock_rdlock((a1 + 16));
  SIValueSet<unsigned long long>::_SIValueSetInnerIterate(a1 + 256, *(a1 + 216), *(a1 + 224), countOids, &v4, 1024);
  pthread_rwlock_unlock((a1 + 16));
  return v5;
}

BOOL countOids(unint64_t *a1, uint64_t a2, unint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1] + a2;
  a3[1] = v4;
  return v4 >= v3;
}

uint64_t RLEOIDArrayGetAllOids(uint64_t a1, void *a2, void *a3)
{
  *a3 = 0;
  pthread_rwlock_rdlock((a1 + 16));
  v10 = xmmword_1C2BFA360;
  SIValueSet<unsigned long long>::_SIValueSetInnerIterate(a1 + 256, *(a1 + 216), *(a1 + 224), countOids, &v10, 1024);
  v6 = *(&v10 + 1);
  *a3 = *(&v10 + 1);
  if (a2)
  {
    v7 = malloc_type_malloc(8 * v6, 0x100004000313F17uLL);
    *a2 = v7;
    v9[0] = v7;
    v9[1] = 0;
    SIValueSet<unsigned long long>::_SIValueSetInnerIterate(a1 + 256, *(a1 + 216), *(a1 + 224), addOids, v9, 1024);
  }

  return pthread_rwlock_unlock((a1 + 16));
}

uint64_t addOids(unint64_t *a1, unint64_t a2, uint64_t *a3)
{
  if (a2)
  {
    v3 = *a3;
    v4 = a3[1];
    if (a2 > 5 && (v5 = 8 * v4 + v3, (v5 - a1) >= 0x20))
    {
      v6 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v12 = (v5 + 16);
      v13 = a1 + 2;
      v14 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v15 = *v13;
        *(v12 - 1) = *(v13 - 1);
        *v12 = v15;
        v12 += 2;
        v13 += 4;
        v14 -= 4;
      }

      while (v14);
      v4 += v6;
      v10 = v4;
      if (v6 == a2)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = a2 - v6;
    v8 = &a1[v6];
    do
    {
      v9 = *v8++;
      v10 = v4 + 1;
      *(v3 + 8 * v4++) = v9;
      --v7;
    }

    while (v7);
LABEL_7:
    a3[1] = v10;
  }

  return 0;
}

uint64_t RLEOIDArrayIsEmpty(uint64_t a1)
{
  pthread_rwlock_rdlock((a1 + 16));
  if (*(a1 + 384))
  {
    v2 = 1;
  }

  else
  {
    v2 = SIValueSet<unsigned long long>::_SIValueSetInnerEmpty(a1 + 256, *(a1 + 224));
  }

  pthread_rwlock_unlock((a1 + 16));
  return v2;
}

uint64_t SIValueSet<unsigned long long>::_SIValueSetInnerEmpty(uint64_t a1, int a2)
{
  v4 = 0;
  do
  {
    v5 = *(a1 + 8 * v4);
    if (v5)
    {
      if (v5)
      {
        result = SIValueSet<unsigned long long>::_SIValueSetInnerEmpty(v5 & 0xFFFFFFFFFFFFFFFELL, (a2 + 1));
        if (v4 > 0xE)
        {
          return result;
        }
      }

      else
      {
        result = (*(*v5 + 48))(v5);
        if (v4 > 0xE)
        {
          return result;
        }
      }
    }

    else
    {
      result = 1;
      if (v4 > 0xE)
      {
        return result;
      }
    }

    ++v4;
  }

  while ((result & 1) != 0);
  return result;
}

uint64_t RLEOIDArrayClear(uint64_t a1)
{
  pthread_rwlock_wrlock((a1 + 16));
  v2 = 0;
  *(a1 + 384) = 1;
  *(a1 + 224) = 0;
  *(a1 + 216) = 0;
  v3 = a1 + 256;
  v4 = *(a1 + 248);
  do
  {
    v5 = *(v3 + v2);
    if (v5)
    {
      if ((v5 & 1) == 0)
      {
        (*(*v5 + 72))(*(v3 + v2));
        CFAllocatorDeallocate(v4, v5);
      }

      *(v3 + v2) = 0;
    }

    v2 += 8;
  }

  while (v2 != 128);
  v6 = *(a1 + 232);
  if (v6)
  {
    SIValueSet<unsigned long long>::CombLevel_s::malloc_chain_s::chain_s::clear(v6, *(a1 + 248), *(a1 + 240));
    bzero(*(a1 + 232), 0x1F88uLL);
  }

  *(a1 + 240) = 0;

  return pthread_rwlock_unlock((a1 + 16));
}

void *RLEOIDArrayFlatten(uint64_t a1, int64_t *a2)
{
  v13 = &unk_1F42812D8;
  v15 = 0;
  v16 = 4096;
  v14 = mmap(0, 0x1000uLL, 3, 4098, -268435456, 0);
  unk_1F42812E0(&v13, *(a1 + 384));
  v13[1](&v13, *(a1 + 224));
  if (*(a1 + 224))
  {
    (*v13)(&v13, *(a1 + 216));
    v4 = *(a1 + 224);
  }

  else
  {
    v4 = 0;
  }

  SIValueSet<unsigned long long>::_SIValueSetInnerSerialize(a1 + 256, *(a1 + 216), v4, &v13);
  (*v13)(&v13, 0);
  v5 = v15;
  v6 = v15 + 7;
  v7 = (v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v7 - v15;
  if (v7 != v15)
  {
    v9 = v16;
    if (v16 >= v7)
    {
      v11 = v14;
    }

    else
    {
      v10 = v16;
      do
      {
        v10 *= 2;
      }

      while (v10 < v7);
      v16 = v10;
      v11 = mmap(0, v10, 3, 4098, -268435456, 0);
      memcpy(v11, v14, v15);
      munmap(v14, v9);
      v14 = v11;
      v5 = v15;
    }

    bzero(&v11[v5], v8);
    v6 = v15 + v8 + 7;
  }

  result = v14;
  *a2 = v6 / 8;
  return result;
}

void SIValueSet<unsigned long long>::MemoryStream::~MemoryStream(uint64_t a1)
{
  *a1 = &unk_1F42812D8;
  if (*(a1 + 8))
  {
    munmap(*(a1 + 8), *(a1 + 24));
    v1 = vars8;
  }

  JUMPOUT(0x1C691FEF0);
}

uint64_t SIValueSet<unsigned long long>::MemoryStream::~MemoryStream(uint64_t result)
{
  *result = &unk_1F42812D8;
  if (*(result + 8))
  {
    v1 = result;
    munmap(*(result + 8), *(result + 24));
    return v1;
  }

  return result;
}

void *SIValueSet<unsigned long long>::MemoryStream::write_bytes(uint64_t a1, const void *a2, size_t a3)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  if (v6 >= v5 + a3)
  {
    v9 = *(a1 + 8);
  }

  else
  {
    v7 = a2;
    v8 = *(a1 + 24);
    do
    {
      v8 *= 2;
    }

    while (v8 < v5 + a3);
    *(a1 + 24) = v8;
    v9 = mmap(0, v8, 3, 4098, -268435456, 0);
    memcpy(v9, *(a1 + 8), *(a1 + 16));
    munmap(*(a1 + 8), v6);
    *(a1 + 8) = v9;
    v5 = *(a1 + 16);
    a2 = v7;
  }

  result = memcpy(&v9[v5], a2, a3);
  *(a1 + 16) += a3;
  return result;
}

void *SIValueSet<unsigned long long>::MemoryStream::write_vint32(void *result, unsigned int a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[3];
  if (v5 < v4 + 5)
  {
    v6 = result[3];
    do
    {
      v6 *= 2;
    }

    while (v6 < v4 + 5);
    result[3] = v6;
    v7 = mmap(0, v6, 3, 4098, -268435456, 0);
    memcpy(v7, v3[1], v3[2]);
    result = munmap(v3[1], v5);
    v3[1] = v7;
    v4 = v3[2];
    if (a2 > 0x7F)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = v4 + 1;
    v7[v4] = a2;
    goto LABEL_9;
  }

  v7 = result[1];
  if (a2 <= 0x7F)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (a2 >> 14)
  {
    if (a2 >> 21)
    {
      if (a2 >> 28)
      {
        v12 = &v7[v4];
        *v12 = -16;
        *(v12 + 1) = a2;
        v9 = v4 + 5;
      }

      else
      {
        v11 = &v7[v4];
        *v11 = HIBYTE(a2) | 0xE0;
        v11[1] = BYTE2(a2);
        v11[2] = BYTE1(a2);
        v9 = v4 + 4;
        v11[3] = a2;
      }
    }

    else
    {
      v10 = &v7[v4];
      *v10 = BYTE2(a2) | 0xC0;
      v10[1] = BYTE1(a2);
      v9 = v4 + 3;
      v10[2] = a2;
    }
  }

  else
  {
    v8 = &v7[v4];
    *v8 = BYTE1(a2) | 0x80;
    v9 = v4 + 2;
    v8[1] = a2;
  }

LABEL_9:
  v3[2] = v9;
  return result;
}

uint64_t SIValueSet<unsigned long long>::MemoryStream::write_vint(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = v4 + 9;
  if (v5 >= v4 + 9)
  {
    v9 = *(a1 + 8);
  }

  else
  {
    v7 = *(a1 + 24);
    do
    {
      v7 *= 2;
    }

    while (v7 < v6);
    *(a1 + 24) = v7;
    v8 = mmap(0, v7, 3, 4098, -268435456, 0);
    memcpy(v8, *(a1 + 8), *(a1 + 16));
    munmap(*(a1 + 8), v5);
    v9 = v8;
    *(a1 + 8) = v8;
    v4 = *(a1 + 16);
  }

  result = ldb_writeSmallVInt64(v9, v4, a2);
  *(a1 + 16) = result;
  return result;
}

const void *RLEOIDArrayUnflatten(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!__kRLEOIDArrayTypeID)
  {
    __kRLEOIDArrayTypeID = _CFRuntimeRegisterClass();
  }

  Instance = _CFRuntimeCreateInstance();
  v9[0] = &unk_1F4281310;
  v9[1] = a2;
  v9[2] = 8 * a3;
  v9[3] = 0;
  v8 = 0;
  SIValueSet<unsigned long long>::SIValueSet(Instance + 216, v9, a1, &v8);
  if (v8)
  {
    CFRelease(Instance);
    return 0;
  }

  return Instance;
}

size_t SIValueSet<unsigned long long>::ReadMemoryStream::read_bytes(void *a1, void *__dst, size_t a3)
{
  v4 = a1[2];
  v3 = a1[3];
  if (v3 + a3 <= v4)
  {
    v5 = a3;
    memcpy(__dst, (a1[1] + v3), a3);
    a1[3] += v5;
  }

  else
  {
    v5 = v4 - v3;
    a1[3] = v4;
    memcpy(__dst, (a1[1] + v4), v4 - v3);
  }

  return v5;
}

unint64_t SIValueSet<unsigned long long>::ReadMemoryStream::read_vint(void *a1)
{
  if (a1[3] >= a1[2])
  {
    return 0;
  }

  else
  {
    return v2_readVInt64_2873(a1[1], a1 + 3);
  }
}

uint64_t SIValueSet<unsigned long long>::ReadMemoryStream::read_vint32(void *a1)
{
  v1 = a1[3];
  if (v1 >= a1[2])
  {
    return 0;
  }

  v2 = a1[1];
  v3 = v1 + 1;
  v4 = v2 + v1;
  v5 = *(v2 + v1);
  if (*(v2 + v1) < 0)
  {
    if (v5 > 0xBF)
    {
      if (v5 > 0xDF)
      {
        if (v5 > 0xEF)
        {
          v5 = *(v2 + v3);
          v3 = v1 + 5;
        }

        else
        {
          v5 = ((v5 & 0xF) << 24) | (*(v2 + v3) << 16) | (*(v4 + 2) << 8) | *(v4 + 3);
          v3 = v1 + 4;
        }
      }

      else
      {
        v5 = ((v5 & 0x1F) << 16) | (*(v2 + v3) << 8) | *(v4 + 2);
        v3 = v1 + 3;
      }
    }

    else
    {
      v6 = *(v2 + v3) | ((v5 & 0x3F) << 8);
      v3 = v1 + 2;
      v5 = v6;
    }
  }

  a1[3] = v3;
  return v5;
}

void RLEOIDIteratorCreate(uint64_t a1)
{
  malloc_type_calloc(1uLL, 0x10uLL, 0x60040FAFB2B2FuLL);
  pthread_rwlock_rdlock((a1 + 16));
  operator new();
}

void RLEOIDIteratorDestroy(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    free(*(v2 + 168));
    MEMORY[0x1C691FEF0](v2, 0x1030C40B1D16A70);
  }

  v3 = a1[1];
  if (v3)
  {
    pthread_rwlock_unlock((v3 + 16));
    CFRelease(a1[1]);
  }

  free(a1);
}

uint64_t RLEOIDIteratorNext(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  if ((**a1 & 1) == 0)
  {
    v51 = a1;
    v5 = 0;
    v6 = *(v3 + 2);
    v7 = *(v3 + 6);
    v8 = v3 + 32;
    v9 = *(v3 + 20);
    while (1)
    {
      while (1)
      {
LABEL_4:
        if (v9)
        {
          v10 = 0;
          while (1)
          {
            v11 = !(*(*v9 + 8))(v9) || v10 >= a3 - v5;
            if (v11)
            {
              break;
            }

            v12 = (***(v3 + 20))(*(v3 + 20));
            v13 = v10 + 1;
            *(a2 + 8 * v5 + 8 * v10) = v12;
            v9 = *(v3 + 20);
            ++v10;
            if (!v9)
            {
              goto LABEL_14;
            }
          }

          v13 = v10;
        }

        else
        {
          v13 = 0;
        }

LABEL_14:
        v5 += v13;
        if (v5 == a3)
        {
          v5 = a3;
LABEL_82:
          a1 = v51;
          if (v5)
          {
            return v5;
          }

          goto LABEL_83;
        }

        if (*(v3 + 20))
        {
          *(v3 + 20) = 0;
          v14 = 60 - 4 * v7;
          if ((~(v6 >> v14) & 0xF) != 0)
          {
            v16 = (1 << v14) + v6;
            *(v3 + 2) = v16;
          }

          else
          {
            v15 = *(*(v3 + 1) + 8);
            if (v7 == v15)
            {
              *v3 = 1;
              a1 = v51;
              if (v5)
              {
                return v5;
              }

              goto LABEL_83;
            }

            v16 = (1 << v14) + v6;
            *(v3 + 2) = v16;
            v7 = *(v3 + 6);
            while (v15 + 1 != v7)
            {
              v17 = 64 - 4 * v7--;
              if (((v16 >> v17) & 0xF) != 0)
              {
                goto LABEL_25;
              }
            }

            v7 = v15;
LABEL_25:
            *(v3 + 6) = v7;
          }
        }

        else
        {
          v16 = v6;
        }

        v18 = 60 - 4 * v7;
        v19 = *(v3 + 1);
        v20 = *(v19 + 8);
        if (v7 == v20)
        {
          break;
        }

        v9 = 0;
        v7 = *(v3 + 6);
        v6 = *(v3 + 2);
        if (v7 > v20)
        {
          v28 = (v16 >> (v18 & 0xFC)) & 0xF;
LABEL_34:
          v29 = v7 - 1;
          v30 = v7;
          while (2)
          {
            v7 = v29 + 1;
            v31 = *&v8[8 * v29];
            v32 = v28 - 16;
            while (1)
            {
              v33 = *(v31 + 8 * ((v6 >> (60 - 4 * v30)) & 0xF));
              if (v33)
              {
                break;
              }

              v6 += 1 << (60 - 4 * v30);
              *(v3 + 2) = v6;
              v11 = __CFADD__(v32++, 1);
              if (v11)
              {
                while (1)
                {
                  v34 = 64 - 4 * v7--;
                  v28 = (v6 >> v34) & 0xF;
                  if (((v6 >> v34) & 0xF) != 0)
                  {
                    break;
                  }

                  if (v7 <= v20)
                  {
                    v9 = 0;
                    if (v20 >= v29)
                    {
                      v7 = v29;
                    }

                    else
                    {
                      v7 = v20;
                    }

                    *(v3 + 6) = v7;
                    if (v20 <= v29)
                    {
                      v9 = 0;
                      *v3 = 1;
                      v7 = v20;
                    }

                    goto LABEL_4;
                  }
                }

                *(v3 + 6) = v7;
                if (v7 > v20)
                {
                  goto LABEL_34;
                }

                v9 = 0;
                goto LABEL_4;
              }
            }

            if (v33)
            {
              LODWORD(v28) = 0;
              *&v8[8 * v30++] = v33 & 0xFFFFFFFFFFFFFFFELL;
              *(v3 + 6) = v30;
              ++v29;
              continue;
            }

            break;
          }

          v9 = (*(*v33 + 88))(v33, v6, *(v3 + 21));
          *(v3 + 20) = v9;
          v7 = *(v3 + 6);
          v6 = *(v3 + 2);
        }
      }

      if (*v3)
      {
        goto LABEL_82;
      }

      v21 = (v16 >> (v18 & 0xFC)) & 0xF;
      v22 = *(v3 + 6);
      v23 = *(v3 + 2);
      v24 = v19 + 8 * v21;
      v25 = 1;
      v26 = *(v24 + 40);
      if (!v26)
      {
        break;
      }

      if (v26)
      {
LABEL_56:
        v41 = v22 + 1;
        *(v3 + 6) = v22 + 1;
        *&v8[8 * v22] = v26 & 0xFFFFFFFFFFFFFFFELL;
        if (v22 < v7)
        {
LABEL_76:
          v9 = 0;
          v27 = 0;
          v6 = v16;
          if (v25)
          {
            goto LABEL_3;
          }
        }

        else
        {
          v42 = 0;
LABEL_58:
          v43 = v41 - 1;
          v44 = v41;
LABEL_59:
          v41 = v43 + 1;
          v45 = *&v8[8 * v43];
          v46 = v42 - 16;
          do
          {
            v26 = *(v45 + 8 * ((v23 >> (60 - 4 * v44)) & 0xF));
            if (v26)
            {
              if ((v26 & 1) == 0)
              {
                goto LABEL_30;
              }

              v42 = 0;
              *&v8[8 * v44++] = v26 & 0xFFFFFFFFFFFFFFFELL;
              *(v3 + 6) = v44;
              ++v43;
              goto LABEL_59;
            }

            v23 += 1 << (60 - 4 * v44);
            *(v3 + 2) = v23;
            v11 = __CFADD__(v46++, 1);
          }

          while (!v11);
          do
          {
            v47 = 64 - 4 * v41--;
            v42 = (v23 >> v47) & 0xF;
            if (v42)
            {
              *(v3 + 6) = v41;
              if (v41 > v7)
              {
                goto LABEL_58;
              }

              goto LABEL_76;
            }
          }

          while (v41 > v7);
          if (v7 >= v43)
          {
            v48 = v43;
          }

          else
          {
            v48 = v7;
          }

          *(v3 + 6) = v48;
          if (v7 > v43)
          {
            goto LABEL_76;
          }

          v9 = 0;
          v27 = 0;
          *v3 = 1;
          v6 = v16;
          if (!v25)
          {
            goto LABEL_4;
          }

LABEL_3:
          v7 = *(v3 + 6);
          v6 = *(v3 + 2);
          v9 = v27;
        }
      }

      else
      {
LABEL_30:
        v9 = (*(*v26 + 88))(v26, v23, *(v3 + 21));
        *(v3 + 20) = v9;
        v6 = v16;
        v27 = v9;
        if (v25)
        {
          goto LABEL_3;
        }
      }
    }

    v35 = 60 - 4 * v22;
    v36 = 1 << v35;
    v37 = v23 + ((16 - v21) << v35);
    v38 = v21 - 1;
    v39 = (v24 + 48);
    do
    {
      if (v38 == 14)
      {
        v9 = 0;
        *(v3 + 2) = v37;
        *v3 = 1;
        v6 = v16;
        goto LABEL_4;
      }

      v23 += v36;
      v40 = *v39++;
      v26 = v40;
      ++v38;
    }

    while (!v40);
    v25 = v38 < 0xF;
    *(v3 + 2) = v23;
    if ((v26 & 1) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_56;
  }

LABEL_83:
  v49 = a1;
  pthread_rwlock_unlock((*(a1 + 8) + 16));
  CFRelease(*(v49 + 8));
  v5 = 0;
  *(v49 + 8) = 0;
  return v5;
}

uint64_t data_map_init_with_ctx(uint64_t a1)
{
  while (1)
  {
    if (*(a1 + 16) >= 5u)
    {
      v5 = __si_assert_copy_extra_332();
      v6 = v5;
      v7 = "";
      if (v5)
      {
        v7 = v5;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "data_map.c", 166, "ctx->extra_size <= sizeof(uint32_t)", v7);
      free(v6);
      if (__valid_fs(-1))
      {
        v8 = 2989;
      }

      else
      {
        v8 = 3072;
      }

      *v8 = -559038737;
      abort();
    }

    v2 = *(a1 + 20);
    if ((v2 & 0x200) == 0)
    {
      break;
    }

    *(a1 + 20) = v2 & 0xFFFFFDFF;
    if (_os_feature_enabled_impl())
    {
      v3 = malloc_type_calloc(1uLL, 0x1C8uLL, 0x1020040641FBFE5uLL);
      v3[54] = -572662307;
      *(v3 + 55) = data_map_init_with_ctx(a1);
      v9 = 0;
      asprintf(&v9, "%s_new", *(a1 + 8));
      *(a1 + 8) = v9;
      data_map_new_init_with_ctx(a1);
    }
  }

  if ((v2 & 0x20) != 0)
  {

    return data_map64_init_with_ctx(a1);
  }

  else if ((v2 & 0x40) != 0)
  {

    return data_map_ext_init_with_ctx(a1);
  }

  else
  {

    return data_map32_init_with_ctx(a1);
  }
}

uint64_t data_map_validate(uint64_t a1, uint64_t a2)
{
  v171 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_47;
  }

  v4 = 0;
  v5 = *(a1 + 216);
  if (v5 <= 842150449)
  {
    if (v5 == -572662307)
    {
      if (*(a1 + 432))
      {
        pthread_rwlock_wrlock((a1 + 224));
      }

      else
      {
        pthread_rwlock_rdlock((a1 + 224));
      }

      v4 = data_map_validate(*(a1 + 440), a2);
      v29 = (*(**(a1 + 448) + 24))(*(a1 + 448), a2);
      if (v4 != v29)
      {
        v129 = v29;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *v158 = 136315906;
          *&v158[4] = "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/generic/data_map_double.m";
          *&v158[12] = 1024;
          *&v158[14] = 254;
          *&v158[18] = 2080;
          *&v158[20] = "data_map_double_validate";
          *&v158[28] = 2080;
          *&v158[30] = "output == output_new";
          _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[ASSERT FAIL] %s:%d:%s(): '%s' failed.\n", v158, 0x26u);
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *v158 = 134218240;
          *&v158[4] = v4;
          *&v158[12] = 2048;
          *&v158[14] = v129;
          _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "  Values: %llu != %llu\n", v158, 0x16u);
        }

        v130 = __si_assert_copy_extra_332();
        v131 = v130;
        v132 = "";
        if (v130)
        {
          v132 = v130;
        }

        __message_assert(v130, "data_map_double.m", 254, "output == output_new", v132);
        free(v131);
        if (__valid_fs(-1))
        {
          v133 = 2989;
        }

        else
        {
          v133 = 3072;
        }

        *v133 = -559038737;
        abort();
      }

      pthread_rwlock_unlock((a1 + 224));
      goto LABEL_48;
    }

    if (v5 != -270471200)
    {
      goto LABEL_48;
    }

    if (!_data_map_ext_rdlock(a1))
    {
      _data_map_ext_unlock(a1);
      v4 = 1;
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  if (v5 == 1684300900)
  {
    if (!_data_map64_rdlock(a1))
    {
      v30 = *(a1 + 296);
      v4 = 1;
      if (!v30)
      {
        goto LABEL_190;
      }

      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = *(a1 + 220);
      while (1)
      {
        *v137 = 0;
        *&v137[8] = 0;
        LOBYTE(v134) = 0;
        data_entry_restore_64(a1 + 280, v33, v30, v137, &v134);
        if (v134 == 1)
        {
          v169 = 0u;
          v170 = 0u;
          v167 = 0u;
          v168 = 0u;
          v165 = 0u;
          v166 = 0u;
          v163 = 0u;
          v164 = 0u;
          v161 = 0u;
          v162 = 0u;
          v159 = 0u;
          v160 = 0u;
          memset(v158, 0, sizeof(v158));
          v54 = *__error();
          v55 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            v121 = fd_name(*(a1 + 248), v158, 0x100uLL);
            v122 = *(a1 + 296);
            *buf = 136316418;
            *&buf[4] = "_data_map64_get_data_entry";
            *&buf[12] = 1024;
            *&buf[14] = 372;
            *&buf[18] = 2080;
            *&buf[20] = v121;
            *&buf[28] = 2048;
            *&buf[30] = v33;
            *&buf[38] = 2048;
            *&buf[40] = v122;
            *&buf[48] = 2048;
            *&buf[50] = *v137;
            _os_log_error_impl(&dword_1C278D000, v55, OS_LOG_TYPE_ERROR, "%s:%d: data_entry_restore_64 failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx", buf, 0x3Au);
          }

          *__error() = v54;
          if ((a2 & 0x80000000) != 0)
          {
            v102 = *__error();
            v103 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
            {
              *v158 = 136315394;
              *&v158[4] = "_data_map64_validate";
              *&v158[12] = 1024;
              *&v158[14] = 659;
              _os_log_error_impl(&dword_1C278D000, v103, OS_LOG_TYPE_ERROR, "%s:%d: entry exceeds storage", v158, 0x12u);
            }

            *__error() = v102;
          }

          else
          {
            dprintf(a2, "entry exceeds storage\n");
          }

          goto LABEL_189;
        }

        if (*(a1 + 224) <= v32)
        {
          break;
        }

        v35 = *(a1 + 4456);
        v36 = (v35 + v31);
        if (!v35)
        {
          if ((a2 & 0x80000000) == 0)
          {
LABEL_103:
            dprintf(a2, "Error mismatch offset ids\n");
            dprintf(a2, "offset not found for %lld offset 0x%llx %s\n");
            goto LABEL_189;
          }

          goto LABEL_116;
        }

        if (*v36 == 1)
        {
          if (*v137 < 0x80u)
          {
            v37 = 1;
          }

          else
          {
            v37 = 2;
          }

          if (*v137 >> 14)
          {
            v38 = 3;
          }

          else
          {
            v38 = v37;
          }

          if (*v137 >> 21)
          {
            v39 = 4;
          }

          else
          {
            v39 = v38;
          }

          if (*v137 >> 28)
          {
            v40 = 5;
          }

          else
          {
            v40 = v39;
          }

          v41 = v40 + *v137;
        }

        else
        {
          if (*v36 != v33)
          {
            if ((a2 & 0x80000000) == 0)
            {
              dprintf(a2, "Error mismatch offset ids\n");
              v86 = *v36;
              dprintf(a2, "sid: %lld so: %lld oo:%lld %s\n");
              goto LABEL_189;
            }

            v72 = 0;
            goto LABEL_117;
          }

          if (v32)
          {
            v43 = *v137;
            v42 = *&v137[8];
            v44 = commonHash(*v137 - v34, (*&v137[8] + v34));
            bucket_entry = _data_map64_get_bucket_entry(a1, v44, v32, 0, 0);
            v46 = bucket_entry;
            if (!bucket_entry)
            {
              if ((a2 & 0x80000000) == 0)
              {
                dprintf(a2, "Error mismatch hash ids\n");
                dprintf(a2, "hash entry not found for %lld offset 0x%llx %s\n");
LABEL_165:
                v4 = 0;
                goto LABEL_190;
              }

              v104 = 0;
LABEL_172:
              v108 = *__error();
              v109 = _SILogForLogForCategory(0);
              if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
              {
                *v158 = 136315394;
                *&v158[4] = "_data_map64_validate";
                *&v158[12] = 1024;
                *&v158[14] = 703;
                _os_log_error_impl(&dword_1C278D000, v109, OS_LOG_TYPE_ERROR, "%s:%d: Error mismatch hash ids ", v158, 0x12u);
              }

              *__error() = v108;
              v110 = *__error();
              v111 = _SILogForLogForCategory(0);
              v112 = os_log_type_enabled(v111, OS_LOG_TYPE_ERROR);
              if (v46)
              {
                if (v112)
                {
                  v113 = *v104;
                  *v158 = 136316418;
                  *&v158[4] = "_data_map64_validate";
                  *&v158[12] = 1024;
                  *&v158[14] = 708;
                  *&v158[18] = 2048;
                  *&v158[20] = v32;
                  *&v158[28] = 2048;
                  *&v158[30] = v113;
                  *&v158[38] = 2048;
                  *&v158[40] = v33;
                  *&v158[48] = 2080;
                  *&v158[50] = v42;
                  v114 = "%s:%d: sid: %llu hid: %lld offset: %lld %s";
                  v115 = v111;
                  v116 = 58;
                  goto LABEL_194;
                }
              }

              else if (v112)
              {
                *v158 = 136316162;
                *&v158[4] = "_data_map64_validate";
                *&v158[12] = 1024;
                *&v158[14] = 713;
                *&v158[18] = 2048;
                *&v158[20] = v32;
                *&v158[28] = 2048;
                *&v158[30] = v33;
                *&v158[38] = 2080;
                *&v158[40] = v42;
                v114 = "%s:%d: hash entry not found for %lld offset 0x%llx %s";
                v115 = v111;
                v116 = 48;
LABEL_194:
                _os_log_error_impl(&dword_1C278D000, v115, OS_LOG_TYPE_ERROR, v114, v158, v116);
              }

              v4 = 0;
              *__error() = v110;
              goto LABEL_190;
            }

            if (v32 != *bucket_entry)
            {
              v104 = bucket_entry;
              if ((a2 & 0x80000000) == 0)
              {
                dprintf(a2, "Error mismatch hash ids\n");
                v105 = *v46;
                dprintf(a2, "sid: %llu hid: %lld offset: %lld %s\n");
                goto LABEL_165;
              }

              goto LABEL_172;
            }

            v47 = commonHash(v43 - *(a1 + 220), &v42[*(a1 + 220)]);
            v48 = _data_map64_get_bucket_entry(a1, v47, 0, v42, v43);
            v49 = v48;
            if (!v48)
            {
              if ((a2 & 0x80000000) == 0)
              {
                dprintf(a2, "Error mismatch hash\n");
                dprintf(a2, "hash entry not found for %lld offset 0x%llx %s\n");
                goto LABEL_189;
              }

              v106 = 0;
              goto LABEL_178;
            }

            if (v32 != *v48)
            {
              v106 = v48;
              if ((a2 & 0x80000000) == 0)
              {
                dprintf(a2, "Error mismatch hash\n");
                v107 = *v49;
                dprintf(a2, "sid: %llu hid: %llu offset: %llu ** %s **\n");
                goto LABEL_189;
              }

LABEL_178:
              v117 = *__error();
              v118 = _SILogForLogForCategory(0);
              if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
              {
                *v158 = 136315394;
                *&v158[4] = "_data_map64_validate";
                *&v158[12] = 1024;
                *&v158[14] = 725;
                _os_log_error_impl(&dword_1C278D000, v118, OS_LOG_TYPE_ERROR, "%s:%d: Error mismatch hash ", v158, 0x12u);
              }

              *__error() = v117;
              v75 = *__error();
              v76 = _SILogForLogForCategory(0);
              v119 = os_log_type_enabled(v76, OS_LOG_TYPE_ERROR);
              if (v49)
              {
                if (v119)
                {
                  v120 = *v106;
                  *v158 = 136316418;
                  *&v158[4] = "_data_map64_validate";
                  *&v158[12] = 1024;
                  *&v158[14] = 730;
                  *&v158[18] = 2048;
                  *&v158[20] = v32;
                  *&v158[28] = 2048;
                  *&v158[30] = v120;
                  *&v158[38] = 2048;
                  *&v158[40] = v33;
                  *&v158[48] = 2080;
                  *&v158[50] = v42;
                  v78 = "%s:%d: sid: %llu hid: %llu offset: %llu %s";
LABEL_183:
                  v79 = v76;
                  v80 = 58;
LABEL_184:
                  _os_log_error_impl(&dword_1C278D000, v79, OS_LOG_TYPE_ERROR, v78, v158, v80);
                }

LABEL_188:
                *__error() = v75;
LABEL_189:
                v4 = 1;
LABEL_190:
                _data_map64_unlock(a1);
                goto LABEL_48;
              }

              if (!v119)
              {
                goto LABEL_188;
              }

              *v158 = 136316162;
              *&v158[4] = "_data_map64_validate";
              *&v158[12] = 1024;
              *&v158[14] = 735;
              *&v158[18] = 2048;
              *&v158[20] = v32;
              *&v158[28] = 2048;
              *&v158[30] = v33;
              *&v158[38] = 2080;
              *&v158[40] = v42;
              v78 = "%s:%d: hash entry not found for %lld offset 0x%llx %s";
LABEL_122:
              v79 = v76;
              v80 = 48;
              goto LABEL_184;
            }
          }

          else
          {
            v43 = *v137;
          }

          if (v43 < 0x80)
          {
            v50 = 1;
          }

          else
          {
            v50 = 2;
          }

          if (v43 >> 14)
          {
            v51 = 3;
          }

          else
          {
            v51 = v50;
          }

          if (v43 >> 21)
          {
            v52 = 4;
          }

          else
          {
            v52 = v51;
          }

          if (v43 >> 28)
          {
            v53 = 5;
          }

          else
          {
            v53 = v52;
          }

          v41 = v53 + v43;
        }

        v33 += v41;
        ++v32;
        v30 = *(a1 + 296);
        v31 += 16;
        if (v33 >= v30)
        {
          goto LABEL_189;
        }
      }

      v169 = 0u;
      v170 = 0u;
      v167 = 0u;
      v168 = 0u;
      v165 = 0u;
      v166 = 0u;
      v163 = 0u;
      v164 = 0u;
      v161 = 0u;
      v162 = 0u;
      v159 = 0u;
      v160 = 0u;
      memset(v158, 0, sizeof(v158));
      v56 = *__error();
      v57 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        v123 = *(a1 + 224);
        v124 = fd_name(*(a1 + 248), v158, 0x100uLL);
        *buf = 136316418;
        *&buf[4] = "_data_map64_get_offset_entry";
        *&buf[12] = 1024;
        *&buf[14] = 359;
        *&buf[18] = 2048;
        *&buf[20] = v32;
        *&buf[28] = 2048;
        *&buf[30] = v123;
        *&buf[38] = 2048;
        *&buf[40] = a1;
        *&buf[48] = 2080;
        *&buf[50] = v124;
        _os_log_error_impl(&dword_1C278D000, v57, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %lld max %lld %p %s", buf, 0x3Au);
      }

      *__error() = v56;
      if ((a2 & 0x80000000) == 0)
      {
        goto LABEL_103;
      }

      v36 = 0;
LABEL_116:
      v72 = 1;
LABEL_117:
      v73 = *__error();
      v74 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
      {
        *v158 = 136315394;
        *&v158[4] = "_data_map64_validate";
        *&v158[12] = 1024;
        *&v158[14] = 673;
        _os_log_error_impl(&dword_1C278D000, v74, OS_LOG_TYPE_ERROR, "%s:%d: Error mismatch offset ids ", v158, 0x12u);
      }

      *__error() = v73;
      v75 = *__error();
      v76 = _SILogForLogForCategory(0);
      v77 = os_log_type_enabled(v76, OS_LOG_TYPE_ERROR);
      if ((v72 & 1) == 0)
      {
        if (v77)
        {
          v87 = *v36;
          *v158 = 136316418;
          *&v158[4] = "_data_map64_validate";
          *&v158[12] = 1024;
          *&v158[14] = 678;
          *&v158[18] = 2048;
          *&v158[20] = v32;
          *&v158[28] = 2048;
          *&v158[30] = v33;
          *&v158[38] = 2048;
          *&v158[40] = v87;
          *&v158[48] = 2080;
          *&v158[50] = *&v137[8];
          v78 = "%s:%d: sid: %lld so: %lld oo:%lld %s";
          goto LABEL_183;
        }

        goto LABEL_188;
      }

      if (!v77)
      {
        goto LABEL_188;
      }

      *v158 = 136316162;
      *&v158[4] = "_data_map64_validate";
      *&v158[12] = 1024;
      *&v158[14] = 683;
      *&v158[18] = 2048;
      *&v158[20] = v32;
      *&v158[28] = 2048;
      *&v158[30] = v33;
      *&v158[38] = 2080;
      *&v158[40] = *&v137[8];
      v78 = "%s:%d: offset not found for %lld offset 0x%llx %s";
      goto LABEL_122;
    }

LABEL_47:
    v4 = 0;
    goto LABEL_48;
  }

  if (v5 != 842150450)
  {
    goto LABEL_48;
  }

  if (_data_map32_rdlock(a1))
  {
    goto LABEL_47;
  }

  v6 = *(a1 + 1328);
  v4 = 1;
  if (!v6)
  {
    goto LABEL_160;
  }

  v7 = 0;
  v8 = 0;
  v9 = *(a1 + 224);
  while (1)
  {
    v134 = 0;
    v135 = 0;
    if (*(a1 + 220) <= v7)
    {
      v169 = 0u;
      v170 = 0u;
      v167 = 0u;
      v168 = 0u;
      v165 = 0u;
      v166 = 0u;
      v163 = 0u;
      v164 = 0u;
      v161 = 0u;
      v162 = 0u;
      v159 = 0u;
      v160 = 0u;
      memset(v158, 0, sizeof(v158));
      v11 = *__error();
      v12 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v25 = *(a1 + 220);
        v26 = fd_name(*(a1 + 1272), v158, 0x100uLL);
        *buf = 136316418;
        *&buf[4] = "_data_map32_get_offset_entry";
        *&buf[12] = 1024;
        *&buf[14] = 422;
        *&buf[18] = 1024;
        *&buf[20] = v7;
        *&buf[24] = 1024;
        *&buf[26] = v25;
        *&buf[30] = 2048;
        *&buf[32] = a1;
        *&buf[40] = 2080;
        *&buf[42] = v26;
        _os_log_error_impl(&dword_1C278D000, v12, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %d max %u %p %s", buf, 0x32u);
      }

      v10 = 0;
      *__error() = v11;
      v6 = *(a1 + 1328);
    }

    else
    {
      v10 = (*(a1 + 1352) + 4 * v7);
    }

    v136 = 0;
    if (v6 <= v8)
    {
      v169 = 0u;
      v170 = 0u;
      v167 = 0u;
      v168 = 0u;
      v165 = 0u;
      v166 = 0u;
      v163 = 0u;
      v164 = 0u;
      v161 = 0u;
      v162 = 0u;
      v159 = 0u;
      v160 = 0u;
      memset(v158, 0, sizeof(v158));
      v58 = *__error();
      v59 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        v125 = *(a1 + 1328);
        v126 = fd_name(*(a1 + 1272), v158, 0x100uLL);
        *buf = 136316418;
        *&buf[4] = "_data_map32_get_data_entry";
        *&buf[12] = 1024;
        *&buf[14] = 446;
        *&buf[18] = 2048;
        *&buf[20] = v8;
        *&buf[28] = 2048;
        *&buf[30] = v125;
        *&buf[38] = 2048;
        *&buf[40] = a1;
        *&buf[48] = 2080;
        *&buf[50] = v126;
        _os_log_error_impl(&dword_1C278D000, v59, OS_LOG_TYPE_ERROR, "%s:%d: invalid data offset 0x%lx 0x%lx %p %s", buf, 0x3Au);
      }

      *__error() = v58;
LABEL_113:
      v66 = *__error();
      v67 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        *v158 = 136315394;
        *&v158[4] = "_data_map32_validate";
        *&v158[12] = 1024;
        *&v158[14] = 760;
        v68 = "%s:%d: entry exceeds storage";
        v69 = v67;
        v70 = 18;
        goto LABEL_157;
      }

      goto LABEL_158;
    }

    data_entry_restore_32(*(a1 + 1320), v8, v6, &v134, &v136);
    if (v136 == 1)
    {
      v157 = 0;
      v60 = v8;
      v155 = 0u;
      v156 = 0u;
      v153 = 0u;
      v154 = 0u;
      v151 = 0u;
      v152 = 0u;
      v149 = 0u;
      v150 = 0u;
      v61 = 5;
      v62 = v60;
      memset(buf, 0, sizeof(buf));
      do
      {
        if (v62 >= *(a1 + 1328))
        {
          break;
        }

        v63 = strlen(buf);
        sprintf(&buf[v63], "%d ", *(*(a1 + 1320) + v62++));
        --v61;
      }

      while (v61);
      v169 = 0u;
      v170 = 0u;
      v167 = 0u;
      v168 = 0u;
      v165 = 0u;
      v166 = 0u;
      v163 = 0u;
      v164 = 0u;
      v161 = 0u;
      v162 = 0u;
      v159 = 0u;
      v160 = 0u;
      memset(v158, 0, sizeof(v158));
      v64 = *__error();
      v65 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        v127 = fd_name(*(a1 + 1272), v158, 0x100uLL);
        v128 = *(a1 + 1328);
        *v137 = 136316674;
        *&v137[4] = "_data_map32_get_data_entry";
        *&v137[12] = 1024;
        *&v137[14] = 442;
        v138 = 2080;
        v139 = v127;
        v140 = 2048;
        v141 = v60;
        v142 = 2048;
        v143 = v128;
        v144 = 2048;
        v145 = v134;
        v146 = 2080;
        v147 = buf;
        _os_log_error_impl(&dword_1C278D000, v65, OS_LOG_TYPE_ERROR, "%s:%d: data_entry_restore_32 failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx sz bytes: %s", v137, 0x44u);
      }

      *__error() = v64;
      goto LABEL_113;
    }

    if (!v10)
    {
      v71 = 0;
LABEL_124:
      v81 = *__error();
      v82 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
      {
        *v158 = 136315394;
        *&v158[4] = "_data_map32_validate";
        *&v158[12] = 1024;
        *&v158[14] = 773;
        _os_log_error_impl(&dword_1C278D000, v82, OS_LOG_TYPE_ERROR, "%s:%d: Error mismatch offset ids ", v158, 0x12u);
      }

      *__error() = v81;
      v66 = *__error();
      v83 = _SILogForLogForCategory(0);
      v84 = os_log_type_enabled(v83, OS_LOG_TYPE_ERROR);
      if (v10)
      {
        if (v84)
        {
          v85 = *v71;
          *v158 = 136316418;
          *&v158[4] = "_data_map32_validate";
          *&v158[12] = 1024;
          *&v158[14] = 775;
          *&v158[18] = 1024;
          *&v158[20] = v7;
          *&v158[24] = 2048;
          *&v158[26] = v8;
          *&v158[34] = 2048;
          *&v158[36] = v85;
          *&v158[44] = 2080;
          *&v158[46] = v135;
          v68 = "%s:%d: sid: %d so: %ld oo:%ld %s";
          v69 = v83;
          v70 = 54;
          goto LABEL_157;
        }

        goto LABEL_158;
      }

      if (!v84)
      {
        goto LABEL_158;
      }

      *v158 = 136316162;
      *&v158[4] = "_data_map32_validate";
      *&v158[12] = 1024;
      *&v158[14] = 777;
      *&v158[18] = 1024;
      *&v158[20] = v7;
      *&v158[24] = 2048;
      *&v158[26] = v8;
      *&v158[34] = 2080;
      *&v158[36] = v135;
      v68 = "%s:%d: offset not found for %d offset 0x%lx %s";
      goto LABEL_156;
    }

    if (*v10 != v8)
    {
      v71 = v10;
      goto LABEL_124;
    }

    if (!v7)
    {
      v14 = v134;
      goto LABEL_30;
    }

    v14 = v134;
    v13 = v135;
    v15 = data_entry_hash<unsigned int,false,false,true>(v134, v135, v9, *(a1 + 1460));
    v16 = _data_map32_get_bucket_entry(a1, v15, v7, 0, 0);
    v17 = v16;
    if (!v16)
    {
      v88 = 0;
      goto LABEL_137;
    }

    if (v7 != *v16)
    {
      v88 = v16;
LABEL_137:
      v89 = *__error();
      v90 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
      {
        *v158 = 136315394;
        *&v158[4] = "_data_map32_validate";
        *&v158[12] = 1024;
        *&v158[14] = 787;
        _os_log_error_impl(&dword_1C278D000, v90, OS_LOG_TYPE_ERROR, "%s:%d: Error mismatch hash ids ", v158, 0x12u);
      }

      *__error() = v89;
      v66 = *__error();
      v91 = _SILogForLogForCategory(0);
      v92 = os_log_type_enabled(v91, OS_LOG_TYPE_ERROR);
      if (v17)
      {
        if (v92)
        {
          v93 = *v88;
          *v158 = 136316418;
          *&v158[4] = "_data_map32_validate";
          *&v158[12] = 1024;
          *&v158[14] = 789;
          *&v158[18] = 1024;
          *&v158[20] = v7;
          *&v158[24] = 1024;
          *&v158[26] = v93;
          *&v158[30] = 2048;
          *&v158[32] = v8;
          *&v158[40] = 2080;
          *&v158[42] = v13;
          v94 = "%s:%d: sid: %d hid: %d offset: %ld %s";
          v95 = v91;
          v96 = 50;
          goto LABEL_192;
        }
      }

      else if (v92)
      {
        *v158 = 136316162;
        *&v158[4] = "_data_map32_validate";
        *&v158[12] = 1024;
        *&v158[14] = 791;
        *&v158[18] = 1024;
        *&v158[20] = v7;
        *&v158[24] = 2048;
        *&v158[26] = v8;
        *&v158[34] = 2080;
        *&v158[36] = v13;
        v94 = "%s:%d: hash entry not found for %d offset 0x%lx %s";
        v95 = v91;
        v96 = 44;
LABEL_192:
        _os_log_error_impl(&dword_1C278D000, v95, OS_LOG_TYPE_ERROR, v94, v158, v96);
      }

      v4 = 0;
      goto LABEL_159;
    }

    if (*(a1 + 1460) == 1)
    {
      v18 = LegacyHash(v13, v14);
    }

    else
    {
      v18 = commonHash(v14, v13);
    }

    v19 = _data_map32_get_bucket_entry(a1, v18, 0, v13, v14);
    v20 = v19;
    if (!v19)
    {
      v97 = 0;
      goto LABEL_144;
    }

    if (v7 != *v19)
    {
      break;
    }

LABEL_30:
    if (v14 < 0x80)
    {
      v21 = 1;
    }

    else
    {
      v21 = 2;
    }

    if (v14 >> 14)
    {
      v22 = 3;
    }

    else
    {
      v22 = v21;
    }

    if (v14 >> 21)
    {
      v23 = 4;
    }

    else
    {
      v23 = v22;
    }

    if (v14 >> 28)
    {
      v24 = 5;
    }

    else
    {
      v24 = v23;
    }

    v8 += v14 + v24;
    ++v7;
    v6 = *(a1 + 1328);
    if (v8 >= v6)
    {
      v4 = 1;
      goto LABEL_160;
    }
  }

  v97 = v19;
LABEL_144:
  v98 = *__error();
  v99 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
  {
    *v158 = 136315394;
    *&v158[4] = "_data_map32_validate";
    *&v158[12] = 1024;
    *&v158[14] = 801;
    _os_log_error_impl(&dword_1C278D000, v99, OS_LOG_TYPE_ERROR, "%s:%d: Error mismatch hash ", v158, 0x12u);
  }

  *__error() = v98;
  v66 = *__error();
  v83 = _SILogForLogForCategory(0);
  v100 = os_log_type_enabled(v83, OS_LOG_TYPE_ERROR);
  if (v20)
  {
    if (v100)
    {
      v101 = *v97;
      *v158 = 136316418;
      *&v158[4] = "_data_map32_validate";
      *&v158[12] = 1024;
      *&v158[14] = 803;
      *&v158[18] = 1024;
      *&v158[20] = v7;
      *&v158[24] = 1024;
      *&v158[26] = v101;
      *&v158[30] = 2048;
      *&v158[32] = v8;
      *&v158[40] = 2080;
      *&v158[42] = v13;
      v68 = "%s:%d: sid: %d hid: %d offset: %ld %s";
      v69 = v83;
      v70 = 50;
      goto LABEL_157;
    }

    goto LABEL_158;
  }

  if (!v100)
  {
    goto LABEL_158;
  }

  *v158 = 136316162;
  *&v158[4] = "_data_map32_validate";
  *&v158[12] = 1024;
  *&v158[14] = 805;
  *&v158[18] = 1024;
  *&v158[20] = v7;
  *&v158[24] = 2048;
  *&v158[26] = v8;
  *&v158[34] = 2080;
  *&v158[36] = v13;
  v68 = "%s:%d: hash entry not found for %d offset 0x%lx %s";
LABEL_156:
  v69 = v83;
  v70 = 44;
LABEL_157:
  _os_log_error_impl(&dword_1C278D000, v69, OS_LOG_TYPE_ERROR, v68, v158, v70);
LABEL_158:
  v4 = 1;
LABEL_159:
  *__error() = v66;
LABEL_160:
  _data_map32_unlock(a1);
LABEL_48:
  v27 = *MEMORY[0x1E69E9840];
  return v4;
}

void data_map_destroy(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  v2 = *(a1 + 216);
  if (v2 > 842150449)
  {
    if (v2 == 1684300900)
    {

      data_map64_destroy(a1);
    }

    else
    {
      if (v2 != 842150450)
      {
        goto LABEL_20;
      }

      data_map32_destroy(a1);
    }
  }

  else
  {
    if (v2 != -572662307)
    {
      if (v2 == -270471200)
      {

        data_map_ext_destroy(a1);
        return;
      }

LABEL_20:
      v4 = __si_assert_copy_extra_332();
      v5 = v4;
      if (v4)
      {
        v6 = v4;
      }

      else
      {
        v6 = "";
      }

      __message_assert("%s:%u: Unexpected code path %s ", "data_map.c", 194, v6);
      free(v5);
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    pthread_rwlock_destroy((a1 + 224));
    data_map_destroy(*(a1 + 440));
    v3 = *(a1 + 448);
    (*(*v3 + 16))(v3);
    (*(*v3 + 488))(v3);

    free(a1);
  }
}

uint64_t data_map_flush(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v2 = 0;
    goto LABEL_22;
  }

  v2 = 0;
  v3 = *(a1 + 216);
  if (v3 <= 842150449)
  {
    if (v3 == -572662307)
    {
      if (*(a1 + 432))
      {
        pthread_rwlock_wrlock((a1 + 224));
      }

      else
      {
        pthread_rwlock_rdlock((a1 + 224));
      }

      v2 = data_map_flush(*(a1 + 440));
      v8 = (*(**(a1 + 448) + 40))(*(a1 + 448));
      if (v2 != v8)
      {
        v10 = v8;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v16 = "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/generic/data_map_double.m";
          v17 = 1024;
          *v18 = 266;
          *&v18[4] = 2080;
          *&v18[6] = "data_map_double_flush";
          v19 = 2080;
          v20 = "output == output_new";
          _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[ASSERT FAIL] %s:%d:%s(): '%s' failed.\n", buf, 0x26u);
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          v16 = v2;
          v17 = 2048;
          *v18 = v10;
          _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "  Values: %llu != %llu\n", buf, 0x16u);
        }

        v11 = __si_assert_copy_extra_332();
        v12 = v11;
        v13 = "";
        if (v11)
        {
          v13 = v11;
        }

        __message_assert(v11, "data_map_double.m", 266, "output == output_new", v13);
        free(v12);
        if (__valid_fs(-1))
        {
          v14 = 2989;
        }

        else
        {
          v14 = 3072;
        }

        *v14 = -559038737;
        abort();
      }

      pthread_rwlock_unlock((a1 + 224));
    }

    else if (v3 == -270471200)
    {
      v4 = *MEMORY[0x1E69E9840];

      return data_map_ext_flush(a1);
    }

LABEL_22:
    v9 = *MEMORY[0x1E69E9840];
    return v2;
  }

  if (v3 == 1684300900)
  {
    v7 = *MEMORY[0x1E69E9840];

    return data_map64_flush(a1);
  }

  else
  {
    if (v3 != 842150450)
    {
      goto LABEL_22;
    }

    v6 = *MEMORY[0x1E69E9840];

    return data_map32_flush(a1);
  }
}

uint64_t data_map_valid(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 216);
    v3 = 1;
    if (v2 > 842150449)
    {
      if (v2 == 1684300900)
      {
        v4 = *(a1 + 4576);
        goto LABEL_13;
      }

      if (v2 == 842150450)
      {
        v4 = *(a1 + 1464);
        goto LABEL_13;
      }
    }

    else if (v2 == -572662307)
    {
      if (*(a1 + 432))
      {
        pthread_rwlock_wrlock((a1 + 224));
      }

      else
      {
        pthread_rwlock_rdlock((a1 + 224));
      }

      v3 = data_map_valid(*(a1 + 440));
      v5 = (*(**(a1 + 448) + 88))(*(a1 + 448));
      if (v3 != v5)
      {
        v8 = v5;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v14 = "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/generic/data_map_double.m";
          v15 = 1024;
          *v16 = 273;
          *&v16[4] = 2080;
          *&v16[6] = "data_map_double_valid";
          v17 = 2080;
          v18 = "output == output_new";
          _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[ASSERT FAIL] %s:%d:%s(): '%s' failed.\n", buf, 0x26u);
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          v14 = v3;
          v15 = 2048;
          *v16 = v8;
          _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "  Values: %llu != %llu\n", buf, 0x16u);
        }

        v9 = __si_assert_copy_extra_332();
        v10 = v9;
        v11 = "";
        if (v9)
        {
          v11 = v9;
        }

        __message_assert(v9, "data_map_double.m", 273, "output == output_new", v11);
        free(v10);
        if (__valid_fs(-1))
        {
          v12 = 2989;
        }

        else
        {
          v12 = 3072;
        }

        *v12 = -559038737;
        abort();
      }

      pthread_rwlock_unlock((a1 + 224));
    }

    else if (v2 == -270471200)
    {
      v4 = *(a1 + 480);
LABEL_13:
      v3 = v4 == 0;
    }
  }

  else
  {
    v3 = 1;
  }

  v6 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t data_map_commit(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v2 = 0;
    goto LABEL_22;
  }

  v2 = 0;
  v3 = *(a1 + 216);
  if (v3 <= 842150449)
  {
    if (v3 == -572662307)
    {
      if (*(a1 + 432))
      {
        pthread_rwlock_wrlock((a1 + 224));
      }

      else
      {
        pthread_rwlock_rdlock((a1 + 224));
      }

      v2 = data_map_commit(*(a1 + 440));
      v8 = (*(**(a1 + 448) + 32))(*(a1 + 448));
      pthread_rwlock_unlock((a1 + 224));
      if (v2 != v8)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v15 = "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/generic/data_map_double.m";
          v16 = 1024;
          *v17 = 261;
          *&v17[4] = 2080;
          *&v17[6] = "data_map_double_commit";
          v18 = 2080;
          v19 = "output == output_new";
          _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[ASSERT FAIL] %s:%d:%s(): '%s' failed.\n", buf, 0x26u);
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          v15 = v2;
          v16 = 2048;
          *v17 = v8;
          _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "  Values: %llu != %llu\n", buf, 0x16u);
        }

        v10 = __si_assert_copy_extra_332();
        v11 = v10;
        v12 = "";
        if (v10)
        {
          v12 = v10;
        }

        __message_assert(v10, "data_map_double.m", 261, "output == output_new", v12);
        free(v11);
        if (__valid_fs(-1))
        {
          v13 = 2989;
        }

        else
        {
          v13 = 3072;
        }

        *v13 = -559038737;
        abort();
      }

      compareDMs(a1);
    }

    else if (v3 == -270471200)
    {
      v4 = *MEMORY[0x1E69E9840];

      return _data_map_ext_commit(a1);
    }

LABEL_22:
    v9 = *MEMORY[0x1E69E9840];
    return v2;
  }

  if (v3 == 1684300900)
  {
    v7 = *MEMORY[0x1E69E9840];

    return _data_map64_commit(a1);
  }

  else
  {
    if (v3 != 842150450)
    {
      goto LABEL_22;
    }

    v6 = *MEMORY[0x1E69E9840];

    return _data_map32_commit(a1, 1);
  }
}

uint64_t data_map_shadow(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v2 = 0;
    goto LABEL_22;
  }

  v2 = 0;
  v3 = *(a1 + 216);
  if (v3 <= 842150449)
  {
    if (v3 == -572662307)
    {
      if (*(a1 + 432))
      {
        pthread_rwlock_wrlock((a1 + 224));
      }

      else
      {
        pthread_rwlock_rdlock((a1 + 224));
      }

      v2 = data_map_shadow(*(a1 + 440));
      v8 = (*(**(a1 + 448) + 56))(*(a1 + 448));
      if (v2 != v8)
      {
        v10 = v8;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v16 = "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/generic/data_map_double.m";
          v17 = 1024;
          *v18 = 268;
          *&v18[4] = 2080;
          *&v18[6] = "data_map_double_shadow";
          v19 = 2080;
          v20 = "output == output_new";
          _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[ASSERT FAIL] %s:%d:%s(): '%s' failed.\n", buf, 0x26u);
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          v16 = v2;
          v17 = 2048;
          *v18 = v10;
          _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "  Values: %llu != %llu\n", buf, 0x16u);
        }

        v11 = __si_assert_copy_extra_332();
        v12 = v11;
        v13 = "";
        if (v11)
        {
          v13 = v11;
        }

        __message_assert(v11, "data_map_double.m", 268, "output == output_new", v13);
        free(v12);
        if (__valid_fs(-1))
        {
          v14 = 2989;
        }

        else
        {
          v14 = 3072;
        }

        *v14 = -559038737;
        abort();
      }

      pthread_rwlock_unlock((a1 + 224));
    }

    else if (v3 == -270471200)
    {
      v4 = *MEMORY[0x1E69E9840];

      return data_map_ext_shadow(a1);
    }

LABEL_22:
    v9 = *MEMORY[0x1E69E9840];
    return v2;
  }

  if (v3 == 1684300900)
  {
    v7 = *MEMORY[0x1E69E9840];

    return data_map64_shadow(a1);
  }

  else
  {
    if (v3 != 842150450)
    {
      goto LABEL_22;
    }

    v6 = *MEMORY[0x1E69E9840];

    return data_map32_shadow(a1);
  }
}

uint64_t data_map_commit_shadow(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v2 = 0;
    goto LABEL_22;
  }

  v2 = 0;
  v3 = *(a1 + 216);
  if (v3 <= 842150449)
  {
    if (v3 == -572662307)
    {
      if (*(a1 + 432))
      {
        pthread_rwlock_wrlock((a1 + 224));
      }

      else
      {
        pthread_rwlock_rdlock((a1 + 224));
      }

      v2 = data_map_commit_shadow(*(a1 + 440));
      v8 = (*(**(a1 + 448) + 64))(*(a1 + 448));
      if (v2 != v8)
      {
        v10 = v8;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v16 = "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/generic/data_map_double.m";
          v17 = 1024;
          *v18 = 269;
          *&v18[4] = 2080;
          *&v18[6] = "data_map_double_commit_shadow";
          v19 = 2080;
          v20 = "output == output_new";
          _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[ASSERT FAIL] %s:%d:%s(): '%s' failed.\n", buf, 0x26u);
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          v16 = v2;
          v17 = 2048;
          *v18 = v10;
          _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "  Values: %llu != %llu\n", buf, 0x16u);
        }

        v11 = __si_assert_copy_extra_332();
        v12 = v11;
        v13 = "";
        if (v11)
        {
          v13 = v11;
        }

        __message_assert(v11, "data_map_double.m", 269, "output == output_new", v13);
        free(v12);
        if (__valid_fs(-1))
        {
          v14 = 2989;
        }

        else
        {
          v14 = 3072;
        }

        *v14 = -559038737;
        abort();
      }

      pthread_rwlock_unlock((a1 + 224));
    }

    else if (v3 == -270471200)
    {
      v4 = *MEMORY[0x1E69E9840];

      return data_map_ext_commit_shadow(a1);
    }

LABEL_22:
    v9 = *MEMORY[0x1E69E9840];
    return v2;
  }

  if (v3 == 1684300900)
  {
    v7 = *MEMORY[0x1E69E9840];

    return data_map64_commit_shadow(a1);
  }

  else
  {
    if (v3 != 842150450)
    {
      goto LABEL_22;
    }

    v6 = *MEMORY[0x1E69E9840];

    return data_map32_commit_shadow(a1);
  }
}

uint64_t data_map_commit_shadow_complete(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v2 = 0;
    goto LABEL_22;
  }

  v2 = 0;
  v3 = *(a1 + 216);
  if (v3 <= 842150449)
  {
    if (v3 == -572662307)
    {
      if (*(a1 + 432))
      {
        pthread_rwlock_wrlock((a1 + 224));
      }

      else
      {
        pthread_rwlock_rdlock((a1 + 224));
      }

      v2 = data_map_commit_shadow_complete(*(a1 + 440));
      v8 = (*(**(a1 + 448) + 72))(*(a1 + 448));
      if (v2 != v8)
      {
        v10 = v8;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v16 = "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/generic/data_map_double.m";
          v17 = 1024;
          *v18 = 270;
          *&v18[4] = 2080;
          *&v18[6] = "data_map_double_commit_shadow_complete";
          v19 = 2080;
          v20 = "output == output_new";
          _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[ASSERT FAIL] %s:%d:%s(): '%s' failed.\n", buf, 0x26u);
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          v16 = v2;
          v17 = 2048;
          *v18 = v10;
          _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "  Values: %llu != %llu\n", buf, 0x16u);
        }

        v11 = __si_assert_copy_extra_332();
        v12 = v11;
        v13 = "";
        if (v11)
        {
          v13 = v11;
        }

        __message_assert(v11, "data_map_double.m", 270, "output == output_new", v13);
        free(v12);
        if (__valid_fs(-1))
        {
          v14 = 2989;
        }

        else
        {
          v14 = 3072;
        }

        *v14 = -559038737;
        abort();
      }

      pthread_rwlock_unlock((a1 + 224));
    }

    else if (v3 == -270471200)
    {
      v4 = *MEMORY[0x1E69E9840];

      return data_map_ext_commit_shadow_complete(a1);
    }

LABEL_22:
    v9 = *MEMORY[0x1E69E9840];
    return v2;
  }

  if (v3 == 1684300900)
  {
    v7 = *MEMORY[0x1E69E9840];

    return data_map64_commit_shadow_complete(a1);
  }

  else
  {
    if (v3 != 842150450)
    {
      goto LABEL_22;
    }

    v6 = *MEMORY[0x1E69E9840];

    return data_map32_commit_shadow_complete(a1);
  }
}

unint64_t data_map_count(unint64_t result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  result = 0;
  v2 = *(v1 + 216);
  if (v2 > 842150449)
  {
    if (v2 != 1684300900)
    {
      if (v2 == 842150450)
      {
        return (*(v1 + 220) - 1);
      }

      return result;
    }

    return *(v1 + 224) - 1;
  }

  if (v2 == -572662307)
  {
    return data_map_double_count(v1);
  }

  if (v2 == -270471200)
  {
    return *(v1 + 224) - 1;
  }

  return result;
}

uint64_t _data_map_rdlock(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v2 = 0;
    goto LABEL_15;
  }

  v2 = 0;
  v3 = *(a1 + 216);
  if (v3 <= 842150449)
  {
    if (v3 == -572662307)
    {
      v2 = _data_map_rdlock(*(a1 + 440));
      v7 = (*(**(a1 + 448) + 104))(*(a1 + 448));
      if (v2 != v7)
      {
        v10 = v7;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v16 = "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/generic/data_map_double.m";
          v17 = 1024;
          *v18 = 301;
          *&v18[4] = 2080;
          *&v18[6] = "_data_map_double_rdlock";
          v19 = 2080;
          v20 = "output == output_new";
          _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[ASSERT FAIL] %s:%d:%s(): '%s' failed.\n", buf, 0x26u);
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          v16 = v2;
          v17 = 2048;
          *v18 = v10;
          _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "  Values: %llu != %llu\n", buf, 0x16u);
        }

        v11 = __si_assert_copy_extra_332();
        v12 = v11;
        v13 = "";
        if (v11)
        {
          v13 = v11;
        }

        __message_assert(v11, "data_map_double.m", 301, "output == output_new", v13);
        free(v12);
        if (__valid_fs(-1))
        {
          v14 = 2989;
        }

        else
        {
          v14 = 3072;
        }

        *v14 = -559038737;
        abort();
      }
    }

    else if (v3 == -270471200)
    {
      v4 = *MEMORY[0x1E69E9840];

      return _data_map_ext_rdlock(a1);
    }

LABEL_15:
    v8 = *MEMORY[0x1E69E9840];
    return v2;
  }

  if (v3 == 1684300900)
  {
    v9 = *MEMORY[0x1E69E9840];

    return _data_map64_rdlock(a1);
  }

  else
  {
    if (v3 != 842150450)
    {
      goto LABEL_15;
    }

    v6 = *MEMORY[0x1E69E9840];

    return _data_map32_rdlock(a1);
  }
}

uint64_t _data_map_unlock(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v2 = 0;
    goto LABEL_15;
  }

  v2 = 0;
  v3 = *(a1 + 216);
  if (v3 <= 842150449)
  {
    if (v3 == -572662307)
    {
      v2 = _data_map_unlock(*(a1 + 440));
      v7 = (*(**(a1 + 448) + 112))(*(a1 + 448));
      if (v2 != v7)
      {
        v10 = v7;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v16 = "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/generic/data_map_double.m";
          v17 = 1024;
          *v18 = 308;
          *&v18[4] = 2080;
          *&v18[6] = "_data_map_double_unlock";
          v19 = 2080;
          v20 = "output == output_new";
          _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[ASSERT FAIL] %s:%d:%s(): '%s' failed.\n", buf, 0x26u);
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          v16 = v2;
          v17 = 2048;
          *v18 = v10;
          _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "  Values: %llu != %llu\n", buf, 0x16u);
        }

        v11 = __si_assert_copy_extra_332();
        v12 = v11;
        v13 = "";
        if (v11)
        {
          v13 = v11;
        }

        __message_assert(v11, "data_map_double.m", 308, "output == output_new", v13);
        free(v12);
        if (__valid_fs(-1))
        {
          v14 = 2989;
        }

        else
        {
          v14 = 3072;
        }

        *v14 = -559038737;
        abort();
      }
    }

    else if (v3 == -270471200)
    {
      v4 = *MEMORY[0x1E69E9840];

      return _data_map_ext_unlock(a1);
    }

LABEL_15:
    v8 = *MEMORY[0x1E69E9840];
    return v2;
  }

  if (v3 == 1684300900)
  {
    v9 = *MEMORY[0x1E69E9840];

    return _data_map64_unlock(a1);
  }

  else
  {
    if (v3 != 842150450)
    {
      goto LABEL_15;
    }

    v6 = *MEMORY[0x1E69E9840];

    return _data_map32_unlock(a1);
  }
}

uint64_t data_map_set_host(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    v4 = *(result + 216);
    if (v4 == -572662307)
    {
      if (*(result + 432))
      {
        pthread_rwlock_wrlock((result + 224));
      }

      else
      {
        pthread_rwlock_rdlock((result + 224));
      }

      data_map_set_host(*(v3 + 440), a2);
      (*(**(v3 + 448) + 400))(*(v3 + 448), a2);

      return pthread_rwlock_unlock((v3 + 224));
    }

    else if (v4 == -270471200)
    {
      *(result + 488) = a2;
    }
  }

  return result;
}

uint64_t data_map_set_offset_for_id(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v62 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    goto LABEL_24;
  }

  v9 = result;
  v10 = *(result + 216);
  if (v10 == -270471200)
  {
    if ((*(result + 477) & 1) == 0 && (v11 = _db_write_lock(result)) != 0)
    {
      v32 = v11;
      v30 = *__error();
      v31 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        if (v32 == -1)
        {
          v32 = *__error();
        }

        *v47 = 136315650;
        *&v47[4] = "_data_map_ext_wrlock";
        *&v47[12] = 1024;
        *&v47[14] = 288;
        *&v47[18] = 1024;
        *&v47[20] = v32;
        _os_log_error_impl(&dword_1C278D000, v31, OS_LOG_TYPE_ERROR, "%s:%d: _data_map_ext_wrlock error %d", v47, 0x18u);
      }

      *__error() = v30;
      if (a5)
      {
        goto LABEL_17;
      }
    }

    else if (a5)
    {
LABEL_17:
      if (*(v9 + 304))
      {
        if (*(v9 + 224) <= a2 || (v17 = *(v9 + 320), (v17 + 1) < 2) || a2 >= *(v9 + 328) / 0x18uLL || a2 >= *(v9 + 312) / 0x18uLL)
        {
          v60 = 0u;
          v61 = 0u;
          v58 = 0u;
          v59 = 0u;
          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          memset(v47, 0, sizeof(v47));
          v18 = *__error();
          v19 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v25 = *(v9 + 224);
            v26 = fd_name(*(v9 + 248), v47, 0x100uLL);
            *buf = 136316418;
            v34 = "_data_map_ext_get_clone_offset_entry";
            v35 = 1024;
            v36 = 432;
            v37 = 2048;
            v38 = a2;
            v39 = 2048;
            v40 = v25;
            v41 = 2048;
            v42 = v9;
            v43 = 2080;
            v44 = v26;
            _os_log_error_impl(&dword_1C278D000, v19, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %lld max %lld %p %s", buf, 0x3Au);
          }

          *__error() = v18;
        }

        else if (v17)
        {
          v22 = (v17 + 24 * a2);
          *v22 = a3;
          v22[1] = a4;
        }
      }

      result = _data_map_ext_unlock(v9);
      goto LABEL_24;
    }

    if (*(v9 + 224) > a2 && (v12 = *(v9 + 296), (v12 + 1) > 1))
    {
      v23 = (v12 + 24 * a2);
      v24 = *v23;
      *v23 = a3;
      v23[1] = a4;
      v15 = v24 == -1;
    }

    else
    {
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      memset(v47, 0, sizeof(v47));
      v13 = *__error();
      v14 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v27 = *(v9 + 224);
        v28 = *(v9 + 296);
        v29 = fd_name(*(v9 + 248), v47, 0x100uLL);
        *buf = 136316674;
        v34 = "_data_map_ext_get_offset_entry";
        v35 = 1024;
        v36 = 417;
        v37 = 2048;
        v38 = a2;
        v39 = 2048;
        v40 = v27;
        v41 = 2048;
        v42 = v9;
        v43 = 2048;
        v44 = v28;
        v45 = 2080;
        v46 = v29;
        _os_log_error_impl(&dword_1C278D000, v14, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %lld max %lld %p map: %p %s", buf, 0x44u);
      }

      *__error() = v13;
      v15 = 1;
    }

    v16 = *(v9 + 496);
    if (v16 && v15)
    {
      CFDictionaryRemoveValue(v16, a2);
    }

    goto LABEL_17;
  }

  if (v10 != -572662307)
  {
LABEL_24:
    v20 = *MEMORY[0x1E69E9840];
    return result;
  }

  if (*(result + 432))
  {
    pthread_rwlock_wrlock((result + 224));
  }

  else
  {
    pthread_rwlock_rdlock((result + 224));
  }

  data_map_set_offset_for_id(*(v9 + 440), a2, a3, a4, a5);
  (*(**(v9 + 448) + 408))();
  v21 = *MEMORY[0x1E69E9840];

  return pthread_rwlock_unlock((v9 + 224));
}

uint64_t data_map_drop_vectors(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v59 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_22;
  }

  v6 = *(a1 + 216);
  if (v6 != -572662307)
  {
    if (v6 == -270471200)
    {
      if ((*(a1 + 477) & 1) == 0)
      {
        v7 = _db_write_lock(a1);
        if (v7)
        {
          v22 = v7;
          v23 = *__error();
          v24 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            if (v22 == -1)
            {
              v22 = *__error();
            }

            *v45 = 136315650;
            *&v45[4] = "_data_map_ext_wrlock";
            *&v45[12] = 1024;
            *&v45[14] = 288;
            *&v45[18] = 1024;
            *&v45[20] = v22;
            _os_log_error_impl(&dword_1C278D000, v24, OS_LOG_TYPE_ERROR, "%s:%d: _data_map_ext_wrlock error %d", v45, 0x18u);
          }

          *__error() = v23;
        }
      }

      if (*(a1 + 224) < 2uLL)
      {
        v8 = 0;
      }

      else
      {
        v8 = 0;
        v9 = 1;
        v10 = 24;
        do
        {
          v11 = *(a1 + 296);
          if ((v11 + 1) >= 2)
          {
            v15 = v11 + v10;
          }

          else
          {
            v57 = 0u;
            v58 = 0u;
            v55 = 0u;
            v56 = 0u;
            v53 = 0u;
            v54 = 0u;
            v51 = 0u;
            v52 = 0u;
            v49 = 0u;
            v50 = 0u;
            v47 = 0u;
            v48 = 0u;
            v46 = 0u;
            memset(v45, 0, sizeof(v45));
            v12 = *__error();
            v13 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              v17 = *(a1 + 224);
              v30 = *(a1 + 296);
              v18 = fd_name(*(a1 + 248), v45, 0x100uLL);
              *buf = 136316674;
              v32 = "_data_map_ext_get_offset_entry";
              v33 = 1024;
              v34 = 417;
              v35 = 2048;
              v36 = v9;
              v37 = 2048;
              v38 = v17;
              v39 = 2048;
              v40 = a1;
              v41 = 2048;
              v42 = v30;
              v43 = 2080;
              v44 = v18;
              _os_log_error_impl(&dword_1C278D000, v13, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %lld max %lld %p map: %p %s", buf, 0x44u);
            }

            v14 = __error();
            v15 = 0;
            *v14 = v12;
          }

          if (*(v15 + 8) == a3 && *v15 != -1 && (*v15 & 0xFLL) == a2)
          {
            *(v15 + 8) = 0;
            v8 = (v8 + 1);
          }

          ++v9;
          v10 += 24;
        }

        while (v9 < *(a1 + 224));
      }

      _data_map_ext_unlock(a1);
      goto LABEL_30;
    }

LABEL_22:
    v8 = 0;
    goto LABEL_30;
  }

  if (*(a1 + 432))
  {
    pthread_rwlock_wrlock((a1 + 224));
  }

  else
  {
    pthread_rwlock_rdlock((a1 + 224));
  }

  v8 = data_map_drop_vectors(*(a1 + 440), a2, a3);
  v19 = (*(**(a1 + 448) + 448))();
  if (v8 != v19)
  {
    v25 = v19;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v45 = 136315906;
      *&v45[4] = "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/generic/data_map_double.m";
      *&v45[12] = 1024;
      *&v45[14] = 505;
      *&v45[18] = 2080;
      *&v45[20] = "data_map_double_drop_vectors";
      *&v45[28] = 2080;
      *&v45[30] = "output == output_new";
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[ASSERT FAIL] %s:%d:%s(): '%s' failed.\n", v45, 0x26u);
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v45 = 134218240;
      *&v45[4] = v8;
      *&v45[12] = 2048;
      *&v45[14] = v25;
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "  Values: %llu != %llu\n", v45, 0x16u);
    }

    v26 = __si_assert_copy_extra_332();
    v27 = v26;
    v28 = "";
    if (v26)
    {
      v28 = v26;
    }

    __message_assert(v26, "data_map_double.m", 505, "output == output_new", v28);
    free(v27);
    if (__valid_fs(-1))
    {
      v29 = 2989;
    }

    else
    {
      v29 = 3072;
    }

    *v29 = -559038737;
    abort();
  }

  pthread_rwlock_unlock((a1 + 224));
LABEL_30:
  v20 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t data_map_start_offset_rewrite(uint64_t a1, uint64_t a2)
{
  v55 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_22;
  }

  v4 = *(a1 + 216);
  if (v4 != -572662307)
  {
    if (v4 == -270471200)
    {
      if (*(a1 + 304))
      {
        v20 = __si_assert_copy_extra_332();
        v21 = v20;
        v22 = "";
        if (v20)
        {
          v22 = v20;
        }

        __message_assert(v20, "data_map_ext_storage.c", 2439, "data_map->offsets_clone.offsets_fd == 0", v22);
        free(v21);
        if (__valid_fs(-1))
        {
          v23 = 2989;
        }

        else
        {
          v23 = 3072;
        }

        *v23 = -559038737;
        abort();
      }

      _data_map_ext_rdlock(a1);
      if (*(a1 + 224) < 2uLL)
      {
        started = *(a1 + 504);
      }

      else
      {
        v5 = *(a1 + 280);
        *(a1 + 312) = *(a1 + 288);
        if (*(a1 + 476))
        {
          v6 = 3;
        }

        else
        {
          v6 = 0;
        }

        sibling_with_prefix_protected = fd_create_sibling_with_prefix_protected(v5, "tmp.clone.", v6);
        *(a1 + 304) = sibling_with_prefix_protected;
        fd_copyfile(*(a1 + 280), sibling_with_prefix_protected, 1);
        v8 = *(a1 + 312);
        *(a1 + 320) = fd_mmap(*(a1 + 304));
        started = (*(a1 + 504) + 1);
        *(a1 + 504) = started;
        if (a2 && *(a1 + 224) >= 2uLL)
        {
          v10 = 1;
          v11 = 32;
          do
          {
            v12 = *(a1 + 320);
            if ((v12 + 1) < 2 || v10 >= *(a1 + 328) / 0x18uLL || v10 >= *(a1 + 312) / 0x18uLL)
            {
              v53 = 0u;
              v54 = 0u;
              v51 = 0u;
              v52 = 0u;
              v49 = 0u;
              v50 = 0u;
              v47 = 0u;
              v48 = 0u;
              v45 = 0u;
              v46 = 0u;
              v43 = 0u;
              v44 = 0u;
              v42 = 0u;
              memset(v41, 0, sizeof(v41));
              v13 = *__error();
              v14 = _SILogForLogForCategory(0);
              if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
              {
                v15 = *(a1 + 224);
                v16 = fd_name(*(a1 + 248), v41, 0x100uLL);
                *buf = 136316418;
                v30 = "_data_map_ext_get_clone_offset_entry";
                v31 = 1024;
                v32 = 432;
                v33 = 2048;
                v34 = v10;
                v35 = 2048;
                v36 = v15;
                v37 = 2048;
                v38 = a1;
                v39 = 2080;
                v40 = v16;
                _os_log_error_impl(&dword_1C278D000, v14, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %lld max %lld %p %s", buf, 0x3Au);
              }

              *__error() = v13;
            }

            else if (SIUINT32SetContainsValue(a2, *(v12 + v11)))
            {
              *(v12 + v11) = 0;
            }

            ++v10;
            v11 += 24;
          }

          while (v10 < *(a1 + 224));
        }
      }

      _data_map_ext_unlock(a1);
      goto LABEL_30;
    }

LABEL_22:
    started = 0;
    goto LABEL_30;
  }

  if (*(a1 + 432))
  {
    pthread_rwlock_wrlock((a1 + 224));
  }

  else
  {
    pthread_rwlock_rdlock((a1 + 224));
  }

  started = data_map_start_offset_rewrite(*(a1 + 440), a2);
  v17 = (*(**(a1 + 448) + 416))(*(a1 + 448), a2);
  if (started != v17)
  {
    v24 = v17;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v41 = 136315906;
      *&v41[4] = "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/generic/data_map_double.m";
      *&v41[12] = 1024;
      *&v41[14] = 506;
      *&v41[18] = 2080;
      *&v41[20] = "data_map_double_start_offset_rewrite";
      *&v41[28] = 2080;
      *&v41[30] = "output == output_new";
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[ASSERT FAIL] %s:%d:%s(): '%s' failed.\n", v41, 0x26u);
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v41 = 134218240;
      *&v41[4] = started;
      *&v41[12] = 2048;
      *&v41[14] = v24;
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "  Values: %llu != %llu\n", v41, 0x16u);
    }

    v25 = __si_assert_copy_extra_332();
    v26 = v25;
    v27 = "";
    if (v25)
    {
      v27 = v25;
    }

    __message_assert(v25, "data_map_double.m", 506, "output == output_new", v27);
    free(v26);
    if (__valid_fs(-1))
    {
      v28 = 2989;
    }

    else
    {
      v28 = 3072;
    }

    *v28 = -559038737;
    abort();
  }

  pthread_rwlock_unlock((a1 + 224));
LABEL_30:
  v18 = *MEMORY[0x1E69E9840];
  return started;
}

uint64_t data_map_end_offset_rewrite(uint64_t result)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    goto LABEL_11;
  }

  v1 = result;
  v2 = *(result + 216);
  if (v2 != -572662307)
  {
    if (v2 == -270471200)
    {
      if ((*(result + 477) & 1) == 0)
      {
        v3 = _db_write_lock(result);
        if (v3)
        {
          v10 = v3;
          v8 = *__error();
          v9 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            if (v10 == -1)
            {
              v10 = *__error();
            }

            *buf = 136315650;
            v12 = "_data_map_ext_wrlock";
            v13 = 1024;
            v14 = 288;
            v15 = 1024;
            v16 = v10;
            _os_log_error_impl(&dword_1C278D000, v9, OS_LOG_TYPE_ERROR, "%s:%d: _data_map_ext_wrlock error %d", buf, 0x18u);
          }

          *__error() = v8;
        }
      }

      v4 = *(v1 + 304);
      if (v4)
      {
        fd_rename_over_and_release(*(v1 + 280), v4);
        munmap(*(v1 + 296), *(v1 + 288));
        *(v1 + 280) = *(v1 + 304);
        *(v1 + 296) = *(v1 + 320);
        *(v1 + 304) = 0;
        *(v1 + 312) = 0;
        *(v1 + 320) = -1;
      }

      v5 = *MEMORY[0x1E69E9840];

      return _data_map_ext_unlock(v1);
    }

LABEL_11:
    v6 = *MEMORY[0x1E69E9840];
    return result;
  }

  if (*(result + 432))
  {
    pthread_rwlock_wrlock((result + 224));
  }

  else
  {
    pthread_rwlock_rdlock((result + 224));
  }

  data_map_end_offset_rewrite(*(v1 + 440));
  (*(**(v1 + 448) + 424))(*(v1 + 448));
  v7 = *MEMORY[0x1E69E9840];

  return pthread_rwlock_unlock((v1 + 224));
}

uint64_t data_map_cancel_offset_rewrite(uint64_t result)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    goto LABEL_11;
  }

  v1 = result;
  v2 = *(result + 216);
  if (v2 != -572662307)
  {
    if (v2 == -270471200)
    {
      if ((*(result + 477) & 1) == 0)
      {
        v3 = _db_write_lock(result);
        if (v3)
        {
          v9 = v3;
          v7 = *__error();
          v8 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            if (v9 == -1)
            {
              v9 = *__error();
            }

            *buf = 136315650;
            v11 = "_data_map_ext_wrlock";
            v12 = 1024;
            v13 = 288;
            v14 = 1024;
            v15 = v9;
            _os_log_error_impl(&dword_1C278D000, v8, OS_LOG_TYPE_ERROR, "%s:%d: _data_map_ext_wrlock error %d", buf, 0x18u);
          }

          *__error() = v7;
        }
      }

      if (*(v1 + 304))
      {
        munmap(*(v1 + 320), *(v1 + 312));
        _fd_unlink_with_origin(*(v1 + 304), 0);
        fd_release(*(v1 + 304));
        *(v1 + 304) = 0;
        *(v1 + 312) = 0;
        *(v1 + 320) = -1;
      }

      v4 = *MEMORY[0x1E69E9840];

      return _data_map_ext_unlock(v1);
    }

LABEL_11:
    v5 = *MEMORY[0x1E69E9840];
    return result;
  }

  if (*(result + 432))
  {
    pthread_rwlock_wrlock((result + 224));
  }

  else
  {
    pthread_rwlock_rdlock((result + 224));
  }

  data_map_cancel_offset_rewrite(*(v1 + 440));
  (*(**(v1 + 448) + 432))(*(v1 + 448));
  v6 = *MEMORY[0x1E69E9840];

  return pthread_rwlock_unlock((v1 + 224));
}

uint64_t data_map_restore_data(uint64_t result, unint64_t a2, void *a3, size_t a4, const void *a5)
{
  if (result)
  {
    v5 = result;
    v6 = *(result + 216);
    if (v6 == -572662307)
    {
      data_map_restore_data(*(result + 440), a2, a3, a4, a5);
      v7 = *(**(v5 + 448) + 440);

      return v7();
    }

    else if (v6 == -270471200)
    {

      return data_map_ext_restore_data(result, a2, a3, a4, a5);
    }
  }

  return result;
}

uint64_t data_map_defer_block(uint64_t result, void *a2)
{
  v2 = result;
  if (!result)
  {
    return result;
  }

  while (1)
  {
    v3 = *(v2 + 216);
    if (v3 != -572662307)
    {
      break;
    }

    result = data_map_defer_block(*(v2 + 440));
    v2 = *(v2 + 448);
    a2 = &__block_literal_global_3856;
    if (!v2)
    {
      return result;
    }
  }

  switch(v3)
  {
    case -270471200:
      v4 = *(v2 + 424);
      if (v4)
      {
        v5 = *(v2 + 448);
        goto LABEL_15;
      }

      break;
    case 1684300900:
      v4 = *(v2 + 4536);
      if (v4)
      {
        v5 = *(v2 + 4544);
        goto LABEL_15;
      }

      break;
    case 842150450:
      v4 = *(v2 + 1416);
      if (v4)
      {
        v5 = *(v2 + 1424);
LABEL_15:

        return v4(v5);
      }

      break;
    default:
      return result;
  }

  v6 = a2[2];

  return v6(a2);
}

int *data_map_scan_lost_ids(uint64_t a1, int a2)
{
  v3 = a1;
  v87 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v4 = *(v3 + 216);
    if (v4 != -572662307)
    {
      break;
    }

    v3 = *(v3 + 440);
    if (!v3)
    {
      goto LABEL_29;
    }
  }

  if (v4 != -270471200)
  {
LABEL_29:
    v26 = 0;
LABEL_64:
    v47 = *MEMORY[0x1E69E9840];
    return v26;
  }

  v57 = 0;
  memset(v56, 0, sizeof(v56));
  v5 = si_copy_all_index_ids(*(v3 + 488));
  _data_map_ext_rdlock(v3);
  if (!v5)
  {
    _data_map_ext_unlock(v3);
    goto LABEL_54;
  }

  if (*(v3 + 224) >= 2uLL)
  {
    v6 = 0;
    v55 = 0;
    v53 = *MEMORY[0x1E695E480];
    v7 = 1;
    v8 = 24;
    v54 = a2;
    while (1)
    {
      v9 = *(v3 + 296);
      if ((v9 + 1) >= 2)
      {
        v12 = v9 + v8;
        if (!a2)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
        memset(buf, 0, sizeof(buf));
        v10 = *__error();
        v11 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v23 = *(v3 + 224);
          v24 = *(v3 + 296);
          v25 = fd_name(*(v3 + 248), buf, 0x100uLL);
          *v58 = 136316674;
          v59 = "_data_map_ext_get_offset_entry";
          v60 = 1024;
          v61 = 417;
          v62 = 2048;
          v63 = v7;
          v64 = 2048;
          v65 = v23;
          v66 = 2048;
          v67 = v3;
          v68 = 2048;
          v69 = v24;
          v70 = 2080;
          v71 = v25;
          _os_log_error_impl(&dword_1C278D000, v11, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %lld max %lld %p map: %p %s", v58, 0x44u);
        }

        v12 = 0;
        *__error() = v10;
        if (!a2)
        {
          goto LABEL_16;
        }
      }

      if ((*(v12 + 12) & 0x80000000) != 0)
      {
        ++v55;
        v13 = (v12 + 8);
        if (*(v12 + 8))
        {
          goto LABEL_22;
        }

        goto LABEL_23;
      }

LABEL_16:
      v13 = (v12 + 8);
      if ((SIUINT32SetContainsValue(v5, *(v12 + 8)) & 1) == 0)
      {
        if (*v13)
        {
          v14 = v5;
          v15 = v6;
          v16 = *__error();
          v17 = _SILogForLogForCategory(16);
          v18 = dword_1EBF46B0C < 3;
          if (os_log_type_enabled(v17, (dword_1EBF46B0C < 3)))
          {
            v19 = *v13;
            *buf = 67109376;
            *&buf[4] = v19;
            *&buf[8] = 2048;
            *&buf[10] = v7;
            _os_log_impl(&dword_1C278D000, v17, v18, "*warn* Invalid indexId %u for vid: %llu", buf, 0x12u);
          }

          *__error() = v16;
          v6 = v15;
          v5 = v14;
          a2 = v54;
LABEL_22:
          *v13 = 0;
        }

LABEL_23:
        if (*v12 != -1)
        {
          v20 = (*v12 >> 2) & 3;
          v21 = v56 + 24 * (*v12 & 3);
          v22 = *&v21[8 * v20];
          if (!v22)
          {
            v22 = SIUINT64SetCreate();
            *&v21[8 * v20] = v22;
          }

          v6 = (v6 + 1);
          SIValueSet<unsigned long long>::SIValueSetInsert((v22 + 16), v7);
        }
      }

      ++v7;
      v8 += 24;
      if (v7 >= *(v3 + 224))
      {
        goto LABEL_32;
      }
    }
  }

  v55 = 0;
  LODWORD(v6) = 0;
LABEL_32:
  CFRelease(v5);
  _data_map_ext_unlock(v3);
  if (!v6)
  {
    goto LABEL_54;
  }

  v27 = *__error();
  v28 = _SILogForLogForCategory(16);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = v6 - v55;
    *&buf[8] = 1024;
    *&buf[10] = v55;
    _os_log_impl(&dword_1C278D000, v28, OS_LOG_TYPE_DEFAULT, "recoverIds for %u lost vectors %u purged vectors", buf, 0xEu);
  }

  *__error() = v27;
  if (!si_recover_vector_ids(*(v3 + 488), v56))
  {
    v41 = *__error();
    v42 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "data_map_ext_scan_lost_ids";
      *&buf[12] = 1024;
      *&buf[14] = 2584;
      _os_log_error_impl(&dword_1C278D000, v42, OS_LOG_TYPE_ERROR, "%s:%d: recoverIds failed", buf, 0x12u);
    }

    v26 = 0;
    *__error() = v41;
    goto LABEL_58;
  }

  v29 = *MEMORY[0x1E695E480];
  v26 = SIUINT64SetCreate();
  v30 = 0;
  v31 = v56;
  do
  {
    for (i = 0; i != 24; i += 8)
    {
      v33 = *(v31 + i);
      if (v33)
      {
        SIValueSet<unsigned long long>::_SIValueSetInnerIterate(v33 + 56, *(v33 + 16), *(v33 + 24), unionUINT64Set, v26, 512);
      }
    }

    ++v30;
    v31 = (v31 + 24);
  }

  while (v30 != 3);
  _data_map_ext_rdlock(v3);
  if (*(v3 + 224) < 2uLL)
  {
LABEL_50:
    _data_map_ext_unlock(v3);
    v39 = *__error();
    v40 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v6;
      _os_log_impl(&dword_1C278D000, v40, OS_LOG_TYPE_DEFAULT, "recoverIds completed %u vectorIds no data", buf, 8u);
    }

    *__error() = v39;
    if (v6)
    {
      goto LABEL_58;
    }

    CFRelease(v26);
LABEL_54:
    v26 = 0;
LABEL_58:
    v43 = 0;
    v44 = v56;
    do
    {
      for (j = 0; j != 24; j += 8)
      {
        v46 = *(v44 + j);
        if (v46)
        {
          CFRelease(v46);
        }
      }

      ++v43;
      v44 = (v44 + 24);
    }

    while (v43 != 3);
    goto LABEL_64;
  }

  v34 = 1;
  v35 = 32;
  while (1)
  {
    v36 = SIUINT64SetContainsValue(v26, v34);
    v37 = *(v3 + 224);
    if (v36)
    {
      break;
    }

LABEL_49:
    ++v34;
    v35 += 24;
    if (v34 >= v37)
    {
      goto LABEL_50;
    }
  }

  if (v37 > v34)
  {
    v38 = *(v3 + 296);
    if ((v38 + 1) >= 2)
    {
      if (*(v38 + v35))
      {
        LODWORD(v6) = v6 - 1;
        SIUINT64SetRemoveValue(v26, v34);
        v37 = *(v3 + 224);
      }

      goto LABEL_49;
    }
  }

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  memset(buf, 0, sizeof(buf));
  __error();
  v49 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
  {
    v50 = *(v3 + 224);
    v51 = *(v3 + 296);
    v52 = fd_name(*(v3 + 248), buf, 0x100uLL);
    *v58 = 136316674;
    v59 = "_data_map_ext_get_offset_entry";
    v60 = 1024;
    v61 = 417;
    v62 = 2048;
    v63 = v34;
    v64 = 2048;
    v65 = v50;
    v66 = 2048;
    v67 = v3;
    v68 = 2048;
    v69 = v51;
    v70 = 2080;
    v71 = v52;
    _os_log_error_impl(&dword_1C278D000, v49, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %lld max %lld %p map: %p %s", v58, 0x44u);
  }

  result = __error();
  __break(1u);
  return result;
}

unint64_t data_map_id_get(uint64_t a1, char *a2, unint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    data_id = 0;
    goto LABEL_20;
  }

  data_id = 0;
  v7 = *(a1 + 216);
  if (v7 <= 842150449)
  {
    if (v7 == -572662307)
    {
      if (*(a1 + 432))
      {
        pthread_rwlock_wrlock((a1 + 224));
      }

      else
      {
        pthread_rwlock_rdlock((a1 + 224));
      }

      data_id = data_map_id_get(*(a1 + 440), a2, a3);
      v13 = (*(**(a1 + 448) + 128))(*(a1 + 448), a2, a3);
      pthread_rwlock_unlock((a1 + 224));
      if (data_id != v13)
      {
        v14 = (*(**(a1 + 448) + 128))(*(a1 + 448), a2, a3);
        if (data_id != v14)
        {
          v16 = v14;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            v22 = "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/generic/data_map_double.m";
            v23 = 1024;
            *v24 = 320;
            *&v24[4] = 2080;
            *&v24[6] = "data_map_double_id_get";
            v25 = 2080;
            v26 = "output == output_new";
            _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[ASSERT FAIL] %s:%d:%s(): '%s' failed.\n", buf, 0x26u);
          }

          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218240;
            v22 = data_id;
            v23 = 2048;
            *v24 = v16;
            _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "  Values: %llu != %llu\n", buf, 0x16u);
          }

          v17 = __si_assert_copy_extra_332();
          v18 = v17;
          v19 = "";
          if (v17)
          {
            v19 = v17;
          }

          __message_assert(v17, "data_map_double.m", 320, "output == output_new", v19);
          free(v18);
          if (__valid_fs(-1))
          {
            v20 = 2989;
          }

          else
          {
            v20 = 3072;
          }

          *v20 = -559038737;
          abort();
        }
      }
    }

    else if (v7 == -270471200)
    {
      v8 = *(a1 + 220);
      v9 = *MEMORY[0x1E69E9840];

      return _data_map_ext_get_data_id(a1, v8, a2, a3, 0);
    }

LABEL_20:
    v15 = *MEMORY[0x1E69E9840];
    return data_id;
  }

  if (v7 != 1684300900)
  {
    if (v7 == 842150450)
    {
      data_id = _data_map32_get_data_id(a1, *(a1 + 224), a2, a3, 0);
    }

    goto LABEL_20;
  }

  v11 = *(a1 + 220);
  v12 = *MEMORY[0x1E69E9840];

  return _data_map64_get_data_id(a1, v11, a2, a3, 0);
}

CFIndex data_map_id_get_with_key(uint64_t a1, unsigned __int8 *a2, size_t a3, void *a4)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v8 = 0;
    goto LABEL_38;
  }

  v8 = 0;
  v9 = *(a1 + 216);
  if (v9 <= 842150449)
  {
    if (v9 != -572662307)
    {
      if (v9 == -270471200)
      {
        v10 = *MEMORY[0x1E69E9840];

        return data_map_ext_id_get_with_key(a1, a2, a3, a4);
      }

      goto LABEL_38;
    }

    if (*(a1 + 432))
    {
      pthread_rwlock_wrlock((a1 + 224));
    }

    else
    {
      pthread_rwlock_rdlock((a1 + 224));
    }

    v8 = data_map_id_get_with_key(*(a1 + 440), a2, a3, a4);
    v13 = (*(**(a1 + 448) + 144))(*(a1 + 448), a2, a3, a4);
    pthread_rwlock_unlock((a1 + 224));
    if (*(a1 + 432) == 1)
    {
      if (v8 != v13)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v24 = "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/generic/data_map_double.m";
          v25 = 1024;
          *v26 = 330;
          *&v26[4] = 2080;
          *&v26[6] = "data_map_double_id_get_with_key";
          v27 = 2080;
          v28 = "output == output_new";
          _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[ASSERT FAIL] %s:%d:%s(): '%s' failed.\n", buf, 0x26u);
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          v24 = v8;
          v25 = 2048;
          *v26 = v13;
          _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "  Values: %llu != %llu\n", buf, 0x16u);
        }

        v14 = __si_assert_copy_extra_332();
        v15 = v14;
        v16 = "";
        if (v14)
        {
          v16 = v14;
        }

        __message_assert(v14, "data_map_double.m", 330, "output == output_new", v16);
        free(v15);
        if (__valid_fs(-1))
        {
          v17 = 2989;
        }

        else
        {
          v17 = 3072;
        }

        *v17 = -559038737;
        abort();
      }

      goto LABEL_38;
    }

    if (v8 == v13)
    {
LABEL_38:
      v18 = *MEMORY[0x1E69E9840];
      return v8;
    }

    if (!v8 || v13)
    {
      if (v8 || !v13)
      {
        goto LABEL_36;
      }

      pthread_rwlock_rdlock((a1 + 224));
      v8 = data_map_id_get_with_key(*(a1 + 440), a2, a3, a4);
    }

    else
    {
      pthread_rwlock_wrlock((a1 + 224));
      v13 = (*(**(a1 + 448) + 144))(*(a1 + 448), a2, a3, a4);
    }

    pthread_rwlock_unlock((a1 + 224));
LABEL_36:
    if (v8 != v13)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v24 = "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/generic/data_map_double.m";
        v25 = 1024;
        *v26 = 341;
        *&v26[4] = 2080;
        *&v26[6] = "data_map_double_id_get_with_key";
        v27 = 2080;
        v28 = "output == output_new";
        _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[ASSERT FAIL] %s:%d:%s(): '%s' failed.\n", buf, 0x26u);
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v24 = v8;
        v25 = 2048;
        *v26 = v13;
        _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "  Values: %llu != %llu\n", buf, 0x16u);
      }

      v19 = __si_assert_copy_extra_332();
      v20 = v19;
      v21 = "";
      if (v19)
      {
        v21 = v19;
      }

      __message_assert(v19, "data_map_double.m", 341, "output == output_new", v21);
      free(v20);
      if (__valid_fs(-1))
      {
        v22 = 2989;
      }

      else
      {
        v22 = 3072;
      }

      *v22 = -559038737;
      abort();
    }

    v8 = v13;
    goto LABEL_38;
  }

  if (v9 != 1684300900)
  {
    if (v9 == 842150450)
    {
      v8 = data_map32_id_get_with_key(a1, a2, a3, a4);
    }

    goto LABEL_38;
  }

  v12 = *MEMORY[0x1E69E9840];

  return data_map64_id_get_with_key(a1, a2, a3, a4);
}

uint64_t data_map_ids_get(uint64_t a1, unsigned __int8 *a2, size_t a3, void *a4, uint64_t a5)
{
  v45 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 216);
  if (v10 == 1684300900)
  {
    v14 = commonHash(a3, a2);
    if (!_data_map64_rdlock(a1))
    {
      locked_with_hash = data_map64_ids_get_locked_with_hash(a4, a1, v14, a5, a2, a3);
      _data_map64_unlock(a1);
      goto LABEL_49;
    }

LABEL_14:
    locked_with_hash = 0;
    goto LABEL_49;
  }

  if (v10 == 842150450)
  {
    if (*(a1 + 1460) == 1)
    {
      v13 = LegacyHash(a2, a3);
    }

    else
    {
      v13 = commonHash(a3, a2);
    }

    v15 = v13;
    if (!_data_map32_rdlock(a1))
    {
      locked_with_hash = data_map32_ids_get_locked_with_hash(a4, a1, v15, a5, a2, a3);
      _data_map32_unlock(a1);
      goto LABEL_49;
    }

    goto LABEL_14;
  }

  if (v10 != -270471200)
  {
    if (*(a1 + 432))
    {
      pthread_rwlock_wrlock((a1 + 224));
    }

    else
    {
      pthread_rwlock_rdlock((a1 + 224));
    }

    locked_with_hash = data_map_ids_get(*(a1 + 440), a2, a3, a4, a5);
    v16 = malloc_type_malloc(4 * a5, 0x100004052888210uLL);
    v17 = (*(**(a1 + 448) + 160))(*(a1 + 448), a2, a3, v16, a5);
    pthread_rwlock_unlock((a1 + 224));
    if (*(a1 + 432) == 1)
    {
      if (locked_with_hash == v17)
      {
        if (locked_with_hash >= a5)
        {
          v18 = a5;
        }

        else
        {
          v18 = locked_with_hash;
        }

        v19 = 4 * v18;
        if (memcmp(a4, v16, v19) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "assertion failed", buf, 2u);
        }

        if (memcmp(a4, v16, v19))
        {
          v20 = __si_assert_copy_extra_332();
          v21 = v20;
          v22 = "";
          if (v20)
          {
            v22 = v20;
          }

          __message_assert(v20, "data_map_double.m", 374, "memcmp(data_ids, data_ids_new, size*sizeof(uint32_t)) == 0", v22);
          free(v21);
          if (__valid_fs(-1))
          {
            v23 = 2989;
          }

          else
          {
            v23 = 3072;
          }

          *v23 = -559038737;
          abort();
        }

        goto LABEL_48;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v40 = "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/generic/data_map_double.m";
        v41 = 1024;
        *v42 = 372;
        *&v42[4] = 2080;
        *&v42[6] = "data_map_double_ids_get";
        v43 = 2080;
        v44 = "output == output_new";
        _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[ASSERT FAIL] %s:%d:%s(): '%s' failed.\n", buf, 0x26u);
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v40 = locked_with_hash;
        v41 = 2048;
        *v42 = v17;
        _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "  Values: %llu != %llu\n", buf, 0x16u);
      }

      v31 = __si_assert_copy_extra_332();
      v32 = v31;
      v33 = "";
      if (v31)
      {
        v33 = v31;
      }

      __message_assert(v31, "data_map_double.m", 372, "output == output_new", v33);
LABEL_73:
      free(v32);
      if (__valid_fs(-1))
      {
        v38 = 2989;
      }

      else
      {
        v38 = 3072;
      }

      *v38 = -559038737;
      abort();
    }

    if (locked_with_hash)
    {
      if (v17 >= locked_with_hash)
      {
        if (v17 >= a5)
        {
          v27 = a5;
        }

        else
        {
          v27 = v17;
        }

        if (locked_with_hash >= a5)
        {
          v28 = a5;
        }

        else
        {
          v28 = locked_with_hash;
        }

        validate_ids(v16, v27, a4, v28);
        if (locked_with_hash < v17)
        {
          locked_with_hash = data_map_ids_get(*(a1 + 440), a2, a3, a4, a5);
          if (locked_with_hash < v17)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315906;
              v40 = "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/generic/data_map_double.m";
              v41 = 1024;
              *v42 = 386;
              *&v42[4] = 2080;
              *&v42[6] = "data_map_double_ids_get";
              v43 = 2080;
              v44 = "output >= output_new";
              _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[ASSERT FAIL] %s:%d:%s(): '%s' failed.\n", buf, 0x26u);
            }

            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218240;
              v40 = locked_with_hash;
              v41 = 2048;
              *v42 = v17;
              _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "  Values: %llu < %llu\n", buf, 0x16u);
            }

            v36 = __si_assert_copy_extra_332();
            v32 = v36;
            v37 = "";
            if (v36)
            {
              v37 = v36;
            }

            __message_assert(v36, "data_map_double.m", 386, "output >= output_new", v37);
            goto LABEL_73;
          }
        }
      }

      else
      {
        pthread_rwlock_wrlock((a1 + 224));
        v24 = (*(**(a1 + 448) + 160))(*(a1 + 448), a2, a3, v16, a5);
        pthread_rwlock_unlock((a1 + 224));
        if (locked_with_hash > v24)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            v40 = "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/generic/data_map_double.m";
            v41 = 1024;
            *v42 = 380;
            *&v42[4] = 2080;
            *&v42[6] = "data_map_double_ids_get";
            v43 = 2080;
            v44 = "output <= output_new";
            _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[ASSERT FAIL] %s:%d:%s(): '%s' failed.\n", buf, 0x26u);
          }

          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218240;
            v40 = locked_with_hash;
            v41 = 2048;
            *v42 = v24;
            _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "  Values: %llu != %llu\n", buf, 0x16u);
          }

          v34 = __si_assert_copy_extra_332();
          v32 = v34;
          v35 = "";
          if (v34)
          {
            v35 = v34;
          }

          __message_assert(v34, "data_map_double.m", 380, "output <= output_new", v35);
          goto LABEL_73;
        }

        if (v24 >= a5)
        {
          v25 = a5;
        }

        else
        {
          v25 = v24;
        }

        if (locked_with_hash >= a5)
        {
          v26 = a5;
        }

        else
        {
          v26 = locked_with_hash;
        }

        validate_ids(v16, v25, a4, v26);
      }
    }

LABEL_48:
    free(v16);
    goto LABEL_49;
  }

  v11 = dm_hash(a2, a3);
  if (_data_map_ext_rdlock(a1))
  {
    goto LABEL_14;
  }

  locked_with_hash = data_map_ext_ids_get_locked_with_hash(a4, a1, v11, a5, a2, a3);
  _data_map_ext_unlock(a1);
LABEL_49:
  v29 = *MEMORY[0x1E69E9840];
  return locked_with_hash;
}

uint64_t data_map_ids_get_locked(uint64_t a1, unsigned __int8 *a2, size_t a3, const void *a4, uint64_t a5)
{
  v36 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 216);
  switch(v10)
  {
    case 1684300900:
      v15 = commonHash(a3, a2);
      v16 = *MEMORY[0x1E69E9840];

      return data_map64_ids_get_locked_with_hash(a4, a1, v15, a5, a2, a3);
    case 842150450:
      if (*(a1 + 1460) == 1)
      {
        v14 = LegacyHash(a2, a3);
      }

      else
      {
        v14 = commonHash(a3, a2);
      }

      v17 = *MEMORY[0x1E69E9840];

      return data_map32_ids_get_locked_with_hash(a4, a1, v14, a5, a2, a3);
    case -270471200:
      v11 = dm_hash(a2, a3);
      v12 = *MEMORY[0x1E69E9840];

      return data_map_ext_ids_get_locked_with_hash(a4, a1, v11, a5, a2, a3);
    default:
      if (*(a1 + 432))
      {
        pthread_rwlock_wrlock((a1 + 224));
      }

      else
      {
        pthread_rwlock_rdlock((a1 + 224));
      }

      locked = data_map_ids_get_locked(*(a1 + 440), a2, a3, a4, a5);
      v19 = malloc_type_malloc(4 * a5, 0x100004052888210uLL);
      v20 = (*(**(a1 + 448) + 168))(*(a1 + 448), a2, a3, v19, a5);
      pthread_rwlock_unlock((a1 + 224));
      if (locked == v20)
      {
        if (locked >= a5)
        {
          v21 = a5;
        }

        else
        {
          v21 = locked;
        }

        v22 = 4 * v21;
        if (memcmp(a4, v19, v22) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "assertion failed", buf, 2u);
        }

        if (!memcmp(a4, v19, v22))
        {
          free(v19);
          v23 = *MEMORY[0x1E69E9840];
          return locked;
        }

        v24 = __si_assert_copy_extra_332();
        v25 = v24;
        v26 = "";
        if (v24)
        {
          v26 = v24;
        }

        __message_assert(v24, "data_map_double.m", 403, "memcmp(data_ids, data_ids_new, size*sizeof(uint32_t)) == 0", v26);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v31 = "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/generic/data_map_double.m";
          v32 = 1024;
          *v33 = 401;
          *&v33[4] = 2080;
          *&v33[6] = "data_map_double_ids_get_locked";
          v34 = 2080;
          v35 = "output == output_new";
          _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[ASSERT FAIL] %s:%d:%s(): '%s' failed.\n", buf, 0x26u);
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          v31 = locked;
          v32 = 2048;
          *v33 = v20;
          _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "  Values: %llu != %llu\n", buf, 0x16u);
        }

        v28 = __si_assert_copy_extra_332();
        v25 = v28;
        v29 = "";
        if (v28)
        {
          v29 = v28;
        }

        __message_assert(v28, "data_map_double.m", 401, "output == output_new", v29);
      }

      free(v25);
      if (__valid_fs(-1))
      {
        v27 = 2989;
      }

      else
      {
        v27 = 3072;
      }

      *v27 = -559038737;
      abort();
  }
}

uint64_t data_map_get_extra_with_key(uint64_t a1, unsigned __int8 *a2, size_t a3, _BYTE *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 216);
  switch(v8)
  {
    case 1684300900:
      v12 = *MEMORY[0x1E69E9840];

      return data_map64_get_extra_with_key(a1, a2, a3, a4);
    case 842150450:
      v11 = *MEMORY[0x1E69E9840];

      return data_map32_get_extra_with_key(a1, a2, a3, a4);
    case -270471200:
      v9 = *MEMORY[0x1E69E9840];

      return data_map_ext_get_extra_with_key(a1, a2, a3, a4);
    default:
      if (*(a1 + 432))
      {
        pthread_rwlock_wrlock((a1 + 224));
      }

      else
      {
        pthread_rwlock_rdlock((a1 + 224));
      }

      extra_with_key = data_map_get_extra_with_key(*(a1 + 440), a2, a3, a4);
      __s1 = extra_with_key;
      v14 = (*(**(a1 + 448) + 176))(*(a1 + 448), a2, a3, a4);
      __s2 = v14;
      pthread_rwlock_unlock((a1 + 224));
      if (HIDWORD(extra_with_key) == HIDWORD(v14))
      {
        if (!HIDWORD(extra_with_key) || !memcmp(&__s1, &__s2, HIDWORD(extra_with_key)))
        {
          v15 = *MEMORY[0x1E69E9840];
          return extra_with_key;
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "assertion failed", buf, 2u);
        }

        v19 = __si_assert_copy_extra_332();
        v17 = v19;
        v20 = "";
        if (v19)
        {
          v20 = v19;
        }

        __message_assert(v19, "data_map_double.m", 428, "memcmp(output.extras, output_new.extras, output.len) == 0", v20, __s2);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v25 = "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/generic/data_map_double.m";
          v26 = 1024;
          *v27 = 426;
          *&v27[4] = 2080;
          *&v27[6] = "data_map_double_get_extra_with_key";
          v28 = 2080;
          v29 = "output.len == output_new.len";
          _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[ASSERT FAIL] %s:%d:%s(): '%s' failed.\n", buf, 0x26u);
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          v25 = HIDWORD(extra_with_key);
          v26 = 2048;
          *v27 = HIDWORD(v14);
          _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "  Values: %llu != %llu\n", buf, 0x16u);
        }

        v16 = __si_assert_copy_extra_332();
        v17 = v16;
        v18 = "";
        if (v16)
        {
          v18 = v16;
        }

        __message_assert(v16, "data_map_double.m", 426, "output.len == output_new.len", v18, __s2);
      }

      free(v17);
      if (__valid_fs(-1))
      {
        v21 = 2989;
      }

      else
      {
        v21 = 3072;
      }

      *v21 = -559038737;
      abort();
  }
}

void data_map_get_data_entry(uint64_t a1, uint64_t a2, unint64_t a3, unsigned __int8 *a4, uint64_t a5)
{
  v108 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    goto LABEL_72;
  }

  v10 = *(a2 + 216);
  if (v10 > 842150449)
  {
    if (v10 != 842150450)
    {
      if (v10 == 1684300900)
      {
        *(a1 + 16) = 0;
        *a4 = 0;
        *a1 = 0;
        *(a1 + 8) = 0;
        *(a1 + 20) = *(a2 + 220);
        *buf = 0;
        data = data_map64_get_data(a2, a3, buf);
        if (!data)
        {
          goto LABEL_72;
        }

        *a4 = 1;
        v12 = *(a2 + 220);
        *(a1 + 20) = v12;
        v13 = *buf;
        *a1 = data;
        *(a1 + 8) = v13;
        if (!v12)
        {
          goto LABEL_72;
        }

        goto LABEL_31;
      }

      goto LABEL_75;
    }

    *(a1 + 16) = 0;
    *a4 = 0;
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 20) = *(a2 + 224);
    v66 = 0;
    if (!a5)
    {
      v24 = data_map32_get_data(a2, a3, &v66);
      goto LABEL_29;
    }

    if (*(a2 + 220) <= a3)
    {
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v85 = 0u;
      memset(buf, 0, sizeof(buf));
      v29 = *__error();
      v30 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v43 = *(a2 + 220);
        v44 = fd_name(*(a2 + 1272), buf, 0x100uLL);
        *__s = 136316418;
        *&__s[4] = "_data_map32_get_offset_entry";
        *&__s[12] = 1024;
        *&__s[14] = 422;
        *&__s[18] = 1024;
        *&__s[20] = a3;
        *&__s[24] = 1024;
        *&__s[26] = v43;
        *&__s[30] = 2048;
        *&__s[32] = a2;
        *&__s[40] = 2080;
        *&__s[42] = v44;
        _os_log_error_impl(&dword_1C278D000, v30, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %d max %u %p %s", __s, 0x32u);
      }

      *__error() = v29;
      goto LABEL_72;
    }

    v15 = *(a2 + 1352);
    if (v15)
    {
      v16 = *(v15 + 4 * a3);
      if (v16 != 1)
      {
        v67 = 0;
        v68 = 0;
        v69 = 0;
        v17 = *(a2 + 1328);
        if (v17 <= v16)
        {
          v96 = 0u;
          v97 = 0u;
          v94 = 0u;
          v95 = 0u;
          v92 = 0u;
          v93 = 0u;
          v90 = 0u;
          v91 = 0u;
          v88 = 0u;
          v89 = 0u;
          v86 = 0u;
          v87 = 0u;
          v85 = 0u;
          memset(buf, 0, sizeof(buf));
          v31 = *__error();
          v32 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            v45 = *(a2 + 1328);
            v46 = fd_name(*(a2 + 1272), buf, 0x100uLL);
            *__s = 136316418;
            *&__s[4] = "_data_map32_get_data_entry";
            *&__s[12] = 1024;
            *&__s[14] = 446;
            *&__s[18] = 2048;
            *&__s[20] = v16;
            *&__s[28] = 2048;
            *&__s[30] = v45;
            *&__s[38] = 2048;
            *&__s[40] = a2;
            *&__s[48] = 2080;
            *&__s[50] = v46;
            _os_log_error_impl(&dword_1C278D000, v32, OS_LOG_TYPE_ERROR, "%s:%d: invalid data offset 0x%lx 0x%lx %p %s", __s, 0x3Au);
          }

          v33 = __error();
          v24 = 0;
          *v33 = v31;
        }

        else
        {
          data_entry_restore_32(*(a2 + 1320), v16, v17, &v67, &v69);
          if (v69 == 1)
          {
            v107 = 0;
            v105 = 0u;
            v106 = 0u;
            v103 = 0u;
            v104 = 0u;
            v101 = 0u;
            v102 = 0u;
            v99 = 0u;
            v100 = 0u;
            v18 = 5;
            v19 = v16;
            memset(__s, 0, sizeof(__s));
            do
            {
              if (v19 >= *(a2 + 1328))
              {
                break;
              }

              v20 = strlen(__s);
              sprintf(&__s[v20], "%d ", *(*(a2 + 1320) + v19++));
              --v18;
            }

            while (v18);
            v96 = 0u;
            v97 = 0u;
            v94 = 0u;
            v95 = 0u;
            v92 = 0u;
            v93 = 0u;
            v90 = 0u;
            v91 = 0u;
            v88 = 0u;
            v89 = 0u;
            v86 = 0u;
            v87 = 0u;
            v85 = 0u;
            memset(buf, 0, sizeof(buf));
            v21 = *__error();
            v22 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              v47 = fd_name(*(a2 + 1272), buf, 0x100uLL);
              v48 = *(a2 + 1328);
              *v70 = 136316674;
              v71 = "_data_map32_get_data_entry";
              v72 = 1024;
              v73 = 442;
              v74 = 2080;
              v75 = v47;
              v76 = 2048;
              v77 = v16;
              v78 = 2048;
              v79 = v48;
              v80 = 2048;
              v81 = v67;
              v82 = 2080;
              v83 = __s;
              _os_log_error_impl(&dword_1C278D000, v22, OS_LOG_TYPE_ERROR, "%s:%d: data_entry_restore_32 failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx sz bytes: %s", v70, 0x44u);
            }

            v23 = __error();
            v24 = 0;
            *v23 = v21;
          }

          else
          {
            v42 = *(a2 + 224);
            v66 = v67 - v42;
            if (*(a2 + 1448))
            {
              os_unfair_lock_lock((a2 + 1444));
              v65 = *(a2 + 1448);
              if (v65)
              {
                bit_vector_set_13535(v65, a3);
              }

              os_unfair_lock_unlock((a2 + 1444));
              v42 = *(a2 + 224);
            }

            v24 = v68 + v42;
          }
        }

LABEL_29:
        if (!v24)
        {
          goto LABEL_72;
        }

        *a4 = 1;
        v25 = *(a2 + 224);
        v26 = v66 - v25;
        *a1 = v24;
        *(a1 + 8) = v26;
        *(a1 + 20) = v25;
        if (!v25)
        {
          goto LABEL_72;
        }

LABEL_31:
        __memcpy_chk();
      }
    }

LABEL_72:
    v41 = *MEMORY[0x1E69E9840];
    return;
  }

  if (v10 != -270471200)
  {
    if (v10 != -572662307)
    {
LABEL_75:
      v49 = __si_assert_copy_extra_332();
      v50 = v49;
      v51 = "";
      if (v49)
      {
        v51 = v49;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "data_map.c", 417, "data_map_is_double(data_map)", v51);
      goto LABEL_97;
    }

    if (*(a2 + 432))
    {
      pthread_rwlock_wrlock((a2 + 224));
    }

    else
    {
      pthread_rwlock_rdlock((a2 + 224));
    }

    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    data_map_get_data_entry(a1, *(a2 + 440), a3, a4, a5);
    v70[0] = 0;
    memset(__s, 0, 24);
    (*(**(a2 + 448) + 184))(__s);
    pthread_rwlock_unlock((a2 + 224));
    v27 = *a4;
    v28 = 0;
    if (v27 == 1)
    {
      pthread_rwlock_wrlock((a2 + 224));
      (*(**(a2 + 448) + 184))(buf);
      *__s = *buf;
      *&__s[16] = *&buf[16];
      pthread_rwlock_unlock((a2 + 224));
      v27 = *a4;
      v28 = v70[0];
    }

    if (v27 == v28)
    {
      goto LABEL_48;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/generic/data_map_double.m";
      *&buf[12] = 1024;
      *&buf[14] = 474;
      *&buf[18] = 2080;
      *&buf[20] = "data_map_double_get_data_entry";
      *&buf[28] = 2080;
      *&buf[30] = "*exists == exists_new";
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[ASSERT FAIL] %s:%d:%s(): '%s' failed.\n", buf, 0x26u);
      v27 = *a4;
      v28 = v70[0];
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      *&buf[4] = v27;
      *&buf[12] = 2048;
      *&buf[14] = v28;
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "  Values: %llu != %llu\n", buf, 0x16u);
      v27 = *a4;
      v28 = v70[0];
    }

    if (v27 == v28)
    {
LABEL_48:
      v34 = *(a1 + 8);
      v35 = *&__s[8];
      if (v34 != *&__s[8])
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/generic/data_map_double.m";
          *&buf[12] = 1024;
          *&buf[14] = 475;
          *&buf[18] = 2080;
          *&buf[20] = "data_map_double_get_data_entry";
          *&buf[28] = 2080;
          *&buf[30] = "output.data_len == output_new.data_len";
          _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[ASSERT FAIL] %s:%d:%s(): '%s' failed.\n", buf, 0x26u);
          v34 = *(a1 + 8);
          v35 = *&__s[8];
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          *&buf[4] = v34;
          *&buf[12] = 2048;
          *&buf[14] = v35;
          _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "  Values: %llu != %llu\n", buf, 0x16u);
          v34 = *(a1 + 8);
          v35 = *&__s[8];
        }

        v36 = v34 == v35;
        v34 = v35;
        if (!v36)
        {
          v60 = __si_assert_copy_extra_332();
          v50 = v60;
          v61 = "";
          if (v60)
          {
            v61 = v60;
          }

          __message_assert(v60, "data_map_double.m", 475, "output.data_len == output_new.data_len", v61);
          goto LABEL_97;
        }
      }

      if (!v34)
      {
        goto LABEL_60;
      }

      v37 = *a1;
      v38 = *__s;
      if (memcmp(*a1, *__s, v34) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "assertion failed", buf, 2u);
        v38 = *__s;
        v37 = *a1;
        v34 = *(a1 + 8);
      }

      if (!memcmp(v37, v38, v34))
      {
LABEL_60:
        LODWORD(v39) = *(a1 + 20);
        v40 = *&__s[20];
        if (v39 == *&__s[20])
        {
          goto LABEL_106;
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/generic/data_map_double.m";
          *&buf[12] = 1024;
          *&buf[14] = 479;
          *&buf[18] = 2080;
          *&buf[20] = "data_map_double_get_data_entry";
          *&buf[28] = 2080;
          *&buf[30] = "output.extras.len == output_new.extras.len";
          _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[ASSERT FAIL] %s:%d:%s(): '%s' failed.\n", buf, 0x26u);
          LODWORD(v39) = *(a1 + 20);
          v40 = *&__s[20];
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          *&buf[4] = v39;
          *&buf[12] = 2048;
          *&buf[14] = v40;
          _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "  Values: %llu != %llu\n", buf, 0x16u);
          LODWORD(v39) = *(a1 + 20);
          v40 = *&__s[20];
        }

        v36 = v39 == v40;
        LODWORD(v39) = v40;
        if (v36)
        {
LABEL_106:
          if (!v39)
          {
            goto LABEL_72;
          }

          v39 = v39;
          if (memcmp((a1 + 16), &__s[16], v39) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "assertion failed", buf, 2u);
            v39 = *(a1 + 20);
          }

          if (!memcmp((a1 + 16), &__s[16], v39))
          {
            goto LABEL_72;
          }

          v55 = __si_assert_copy_extra_332();
          v50 = v55;
          v56 = "";
          if (v55)
          {
            v56 = v55;
          }

          __message_assert(v55, "data_map_double.m", 482, "memcmp(output.extras.extras, output_new.extras.extras, output.extras.len) == 0", v56);
        }

        else
        {
          v62 = __si_assert_copy_extra_332();
          v50 = v62;
          v63 = "";
          if (v62)
          {
            v63 = v62;
          }

          __message_assert(v62, "data_map_double.m", 479, "output.extras.len == output_new.extras.len", v63);
        }

LABEL_97:
        free(v50);
        if (__valid_fs(-1))
        {
          v64 = 2989;
        }

        else
        {
          v64 = 3072;
        }

        *v64 = -559038737;
        abort();
      }

      v52 = __si_assert_copy_extra_332();
      v53 = v52;
      v54 = "";
      if (v52)
      {
        v54 = v52;
      }

      __message_assert(v52, "data_map_double.m", 477, "memcmp(output.data, output_new.data, output.data_len) == 0", v54);
    }

    else
    {
      v57 = __si_assert_copy_extra_332();
      v53 = v57;
      v58 = "";
      if (v57)
      {
        v58 = v57;
      }

      __message_assert(v57, "data_map_double.m", 474, "*exists == exists_new", v58);
    }

    free(v53);
    if (__valid_fs(-1))
    {
      v59 = 2989;
    }

    else
    {
      v59 = 3072;
    }

    *v59 = -559038737;
    abort();
  }

  v14 = *MEMORY[0x1E69E9840];

  data_map_ext_get_data_entry(a1, a2, a3, a4, a5);
}

uint64_t _data_map_sync_data(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v2 = 0;
    goto LABEL_22;
  }

  v2 = 0;
  v3 = *(a1 + 216);
  if (v3 <= 842150449)
  {
    if (v3 == -572662307)
    {
      if (*(a1 + 432))
      {
        pthread_rwlock_wrlock((a1 + 224));
      }

      else
      {
        pthread_rwlock_rdlock((a1 + 224));
      }

      v2 = _data_map_sync_data(*(a1 + 440));
      v8 = (*(**(a1 + 448) + 224))(*(a1 + 448), 1);
      if (v2 != v8)
      {
        v10 = v8;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v16 = "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/generic/data_map_double.m";
          v17 = 1024;
          *v18 = 487;
          *&v18[4] = 2080;
          *&v18[6] = "_data_map_double_sync_data";
          v19 = 2080;
          v20 = "output == output_new";
          _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[ASSERT FAIL] %s:%d:%s(): '%s' failed.\n", buf, 0x26u);
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          v16 = v2;
          v17 = 2048;
          *v18 = v10;
          _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "  Values: %llu != %llu\n", buf, 0x16u);
        }

        v11 = __si_assert_copy_extra_332();
        v12 = v11;
        v13 = "";
        if (v11)
        {
          v13 = v11;
        }

        __message_assert(v11, "data_map_double.m", 487, "output == output_new", v13);
        free(v12);
        if (__valid_fs(-1))
        {
          v14 = 2989;
        }

        else
        {
          v14 = 3072;
        }

        *v14 = -559038737;
        abort();
      }

      pthread_rwlock_unlock((a1 + 224));
    }

    else if (v3 == -270471200)
    {
      v4 = *MEMORY[0x1E69E9840];

      return _data_map_ext_sync_data(a1);
    }

LABEL_22:
    v9 = *MEMORY[0x1E69E9840];
    return v2;
  }

  if (v3 == 1684300900)
  {
    v7 = *MEMORY[0x1E69E9840];

    return _data_map64_sync_data(a1);
  }

  else
  {
    if (v3 != 842150450)
    {
      goto LABEL_22;
    }

    v6 = *MEMORY[0x1E69E9840];

    return _data_map32_sync_data(a1, 1);
  }
}