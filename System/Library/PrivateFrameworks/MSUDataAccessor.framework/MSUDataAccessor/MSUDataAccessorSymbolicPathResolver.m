@interface MSUDataAccessorSymbolicPathResolver
+ (id)resolvedSymbol:(id)a3 error:(id *)a4;
+ (id)symbolicPathResolver;
- (MSUDataAccessorSymbolicPathResolver)init;
- (id)resolve:(id)a3 error:(id *)a4;
- (void)dealloc;
- (void)overrideSymbol:(id)a3 resolvedPath:(id)a4;
@end

@implementation MSUDataAccessorSymbolicPathResolver

- (void)dealloc
{
  overrides = self->_overrides;
  self->_overrides = 0;

  v4.receiver = self;
  v4.super_class = MSUDataAccessorSymbolicPathResolver;
  [(MSUDataAccessorSymbolicPathResolver *)&v4 dealloc];
}

+ (id)symbolicPathResolver
{
  v2 = objc_alloc_init(MSUDataAccessorSymbolicPathResolver);

  return v2;
}

+ (id)resolvedSymbol:(id)a3 error:(id *)a4
{
  v52[4] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (resolvedSymbol_error__onceToken != -1)
  {
    +[MSUDataAccessorSymbolicPathResolver resolvedSymbol:error:];
  }

  v7 = resolvedSymbol_error__symbolCache;
  objc_sync_enter(v7);
  v8 = [resolvedSymbol_error__symbolCache objectForKeyedSubscript:v6];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
    v11 = 0;
    goto LABEL_34;
  }

  if ([v6 isEqualToString:@"ecid"])
  {
    v49 = 0;
    v12 = [MSUDataAccessor ioreg:@"IODeviceTree:/chosen/manifest-properties" property:@"ECID" error:&v49];
    v11 = v49;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v12 length] == 8)
    {
      v13 = v12;
      v14 = [v12 bytes];
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%llX", *v14];
    }

    else
    {
      v17 = MGCopyAnswer();
      v18 = v17;
      if (v17)
      {
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%llX", objc_msgSend(v17, "longLongValue")];
      }

      else
      {
        v10 = 0;
      }
    }

LABEL_24:
    if (v10)
    {
      goto LABEL_25;
    }

    goto LABEL_29;
  }

  if ([v6 isEqualToString:@"boardid"])
  {
    v15 = MGCopyAnswer();
    v16 = v15;
    if (v15)
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if ([v6 isEqualToString:@"chipid"])
  {
    v15 = MGCopyAnswer();
    v16 = v15;
    if (v15)
    {
LABEL_16:
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%X", objc_msgSend(v15, "intValue")];
LABEL_18:

      goto LABEL_19;
    }

LABEL_17:
    v10 = 0;
    goto LABEL_18;
  }

  if ([v6 isEqualToString:@"hwmodel"])
  {
    v48 = 0;
    v10 = [MSUDataAccessor hardwareModelWithError:&v48];
    v19 = v48;
    goto LABEL_28;
  }

  if ([v6 isEqualToString:@"nsih"])
  {
    v24 = +[MSUDataAccessor sharedDataAccessor];
    v47 = 0;
    v10 = [v24 copyBootManifestHashWithError:&v47];
    v11 = v47;

    goto LABEL_24;
  }

  if ([v6 isEqualToString:@"volguuid"])
  {
    v46 = 0;
    v10 = [MSUDataAccessor bootUUIDWithError:&v46];
    v19 = v46;
LABEL_28:
    v11 = v19;
    if (v10)
    {
      goto LABEL_25;
    }

    goto LABEL_29;
  }

  if ([v6 isEqualToString:@"preboot"] & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"sourcepreboot"))
  {
    v11 = 0;
    v10 = @"/private/preboot";
    goto LABEL_25;
  }

  if ([v6 isEqualToString:@"iscpreboot"] & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"hardware"))
  {
LABEL_46:
    v11 = 0;
    if (a4)
    {
      goto LABEL_30;
    }

    goto LABEL_33;
  }

  if ([v6 isEqualToString:@"bootobjectspath"])
  {
    v45 = 0;
    v25 = [MSUDataAccessor ioreg:@"IODeviceTree:/chosen" property:@"boot-objects-path" error:&v45];
    v11 = v45;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = MEMORY[0x277CCACA8];
      v27 = v25;
      v28 = [v26 stringWithUTF8String:{objc_msgSend(v25, "bytes")}];
      v10 = [@"/" stringByAppendingPathComponent:v28];
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_24;
  }

  if (![v6 isEqualToString:@"cryptex1ticketpath"])
  {
    v34 = MSUDASharedLogger();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [(MSUDataAccessorSymbolicPathResolver *)v6 resolvedSymbol:v34 error:v35, v36, v37, v38, v39, v40];
    }

    goto LABEL_46;
  }

  v29 = +[MSUDataAccessor cryptex1TicketType];
  if (!v29)
  {
    goto LABEL_46;
  }

  v44 = [a1 resolvedSymbol:@"preboot" error:0];
  v30 = [a1 resolvedSymbol:@"hwmodel" error:0];
  v31 = [a1 resolvedSymbol:@"ecid" error:0];
  v32 = v31;
  if (v29 == 1 && v30 && v31)
  {
    v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"apticket.%@.%@.im4m", v30, v31];
LABEL_65:
    v41 = v33;
    v10 = 0;
    if (v44 && v33)
    {
      v42 = MEMORY[0x277CCACA8];
      v52[0] = v44;
      v52[1] = @"cryptex1";
      v52[2] = @"current";
      v52[3] = v33;
      v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:4];
      v10 = [v42 pathWithComponents:v43];
    }

    goto LABEL_69;
  }

  v41 = 0;
  if (v29 == 2)
  {
    v10 = 0;
    if (v30)
    {
      v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"apticket.%@.im4m", v30];
      goto LABEL_65;
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_69:

LABEL_19:
  v11 = 0;
  if (v10)
  {
LABEL_25:
    [resolvedSymbol_error__symbolCache setObject:v10 forKeyedSubscript:v6];
    goto LABEL_34;
  }

LABEL_29:
  if (a4)
  {
LABEL_30:
    v50[0] = *MEMORY[0x277CCA068];
    v50[1] = @"symbol";
    v51[0] = @"Path symbol resolution failure";
    v51[1] = v6;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:2];
    v21 = [v20 mutableCopy];

    if (v11)
    {
      [v21 setObject:v11 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
    }

    *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MSUDAError" code:6007 userInfo:v21];
  }

LABEL_33:
  v10 = 0;
LABEL_34:

  objc_sync_exit(v7);
  v22 = *MEMORY[0x277D85DE8];

  return v10;
}

void __60__MSUDataAccessorSymbolicPathResolver_resolvedSymbol_error___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v1 = resolvedSymbol_error__symbolCache;
  resolvedSymbol_error__symbolCache = v0;
}

- (MSUDataAccessorSymbolicPathResolver)init
{
  v6.receiver = self;
  v6.super_class = MSUDataAccessorSymbolicPathResolver;
  v2 = [(MSUDataAccessorSymbolicPathResolver *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    overrides = v2->_overrides;
    v2->_overrides = v3;
  }

  return v2;
}

- (void)overrideSymbol:(id)a3 resolvedPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self->_overrides;
  objc_sync_enter(v8);
  overrides = self->_overrides;
  if (v7)
  {
    [(NSMutableDictionary *)overrides setObject:v7 forKeyedSubscript:v6];
  }

  else
  {
    [(NSMutableDictionary *)overrides removeObjectForKey:v6];
  }

  objc_sync_exit(v8);
}

- (id)resolve:(id)a3 error:(id *)a4
{
  v69[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v63 = 0;
  v64[0] = &v63;
  v64[1] = 0x3032000000;
  v64[2] = __Block_byref_object_copy_;
  v64[3] = __Block_byref_object_dispose_;
  v65 = 0;
  v62 = 0;
  v7 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"(\\\\\\\\)|(\\\\\\[)|(\\\\\\])|(\\[\\w+\\])" options:0 error:&v62];
  v8 = v62;
  if (v8)
  {
    v9 = MSUDASharedLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(MSUDataAccessorSymbolicPathResolver *)v9 resolve:v10 error:v11, v12, v13, v14, v15, v16];
    }

    v17 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA7E8];
    v68[0] = *MEMORY[0x277CCA068];
    v68[1] = v18;
    v69[0] = @"bad regex";
    v69[1] = v8;
    v68[2] = @"regex";
    v69[2] = @"(\\\\\\\\)|(\\\\\\[)|(\\\\\\])|(\\[\\w+\\])";
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:v68 count:3];
    v20 = [v17 errorWithDomain:@"MSUDASymbolicPathResolverError" code:102 userInfo:v19];
    v21 = *(v64[0] + 40);
    *(v64[0] + 40) = v20;

    goto LABEL_5;
  }

  if (!v7)
  {
    v33 = MSUDASharedLogger();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      [(MSUDataAccessorSymbolicPathResolver *)v33 resolve:v34 error:v35, v36, v37, v38, v39, v40];
    }

    v41 = MEMORY[0x277CCA9B8];
    v66[0] = *MEMORY[0x277CCA068];
    v66[1] = @"regex";
    v67[0] = @"could not alloc/init regex";
    v67[1] = @"(\\\\\\\\)|(\\\\\\[)|(\\\\\\])|(\\[\\w+\\])";
    v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:v66 count:2];
    v43 = [v41 errorWithDomain:@"MSUDASymbolicPathResolverError" code:101 userInfo:v42];
    v44 = *(v64[0] + 40);
    *(v64[0] + 40) = v43;

LABEL_5:
    v22 = 0;
    if (!a4)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

  v58 = 0;
  v59 = &v58;
  v60 = 0x2020000000;
  v61 = 0;
  v23 = [MEMORY[0x277CCAB68] string];
  v24 = v59[3];
  v25 = [v6 length];
  v49 = MEMORY[0x277D85DD0];
  v50 = 3254779904;
  v51 = __53__MSUDataAccessorSymbolicPathResolver_resolve_error___block_invoke;
  v52 = &__block_descriptor_72_e8_32s40s48s56r64r_e37_v32__0__NSTextCheckingResult_8Q16_B24l;
  v56 = &v58;
  v26 = v6;
  v53 = v26;
  v27 = v23;
  v54 = v27;
  v55 = self;
  v57 = &v63;
  [v7 enumerateMatchesInString:v26 options:0 range:v24 usingBlock:{v25, &v49}];
  v28 = [v26 length];
  v29 = v59[3];
  if (v28 != v29)
  {
    v30 = [v26 length];
    v31 = [v26 substringWithRange:{v29, v30 - v59[3]}];
    [v27 appendString:v31];
  }

  if (*(v64[0] + 40))
  {
    v32 = MSUDASharedLogger();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [(MSUDataAccessorSymbolicPathResolver *)v64 resolve:v27 error:v32];
    }

    v22 = 0;
  }

  else
  {
    v22 = v27;
  }

  _Block_object_dispose(&v58, 8);
  if (!a4)
  {
LABEL_6:
    if (!v22)
    {
      goto LABEL_24;
    }

    goto LABEL_21;
  }

LABEL_20:
  *a4 = *(v64[0] + 40);
  if (!v22)
  {
    goto LABEL_24;
  }

LABEL_21:
  v45 = MSUDASharedLogger();
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
  {
    [(MSUDataAccessorSymbolicPathResolver *)v6 resolve:v22 error:v45];
  }

LABEL_24:
  v46 = v22;

  _Block_object_dispose(&v63, 8);
  v47 = *MEMORY[0x277D85DE8];

  return v46;
}

void __53__MSUDataAccessorSymbolicPathResolver_resolve_error___block_invoke(uint64_t a1, id a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 range];
    v9 = *(*(*(a1 + 56) + 8) + 24);
    if (v8 != v9)
    {
      v10 = [*(a1 + 32) substringWithRange:{v9, objc_msgSend(v7, "range") - *(*(*(a1 + 56) + 8) + 24)}];
      [*(a1 + 40) appendString:v10];
    }

    v11 = *(a1 + 32);
    v12 = [v7 range];
    v14 = [v11 substringWithRange:{v12, v13}];
    if ([v7 rangeAtIndex:1] == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([v7 rangeAtIndex:2] == 0x7FFFFFFFFFFFFFFFLL)
      {
        if ([v7 rangeAtIndex:3] == 0x7FFFFFFFFFFFFFFFLL)
        {
          if ([v7 rangeAtIndex:4] != 0x7FFFFFFFFFFFFFFFLL)
          {
            v15 = [v14 substringWithRange:{1, objc_msgSend(v14, "length") - 2}];
            v16 = [*(*(a1 + 48) + 8) objectForKeyedSubscript:v15];
            if (!v16)
            {
              v17 = *(*(a1 + 64) + 8);
              obj = *(v17 + 40);
              v16 = [MSUDataAccessorSymbolicPathResolver resolvedSymbol:v15 error:&obj];
              objc_storeStrong((v17 + 40), obj);
              if (*(*(*(a1 + 64) + 8) + 40))
              {
                *a4 = 1;
              }

              else if (v16)
              {
                [*(a1 + 40) appendString:v16];
              }
            }
          }

          goto LABEL_15;
        }

        v18 = *(a1 + 40);
        v19 = @"]";
      }

      else
      {
        v18 = *(a1 + 40);
        v19 = @"[";
      }
    }

    else
    {
      v18 = *(a1 + 40);
      v19 = @"\\"";
    }

    [v18 appendString:v19];
LABEL_15:
    v20 = [v7 range];
    [v7 range];
    *(*(*(a1 + 56) + 8) + 24) = v21 + v20;
  }
}

+ (void)resolvedSymbol:(uint64_t)a3 error:(uint64_t)a4 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_22E73A000, a2, a3, "Unknown symbol:%@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)resolve:(uint64_t)a3 error:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_22E73A000, a1, a3, "bad regex:%@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)resolve:(os_log_t)log error:.cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(*a1 + 40);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_22E73A000, log, OS_LOG_TYPE_ERROR, "error %@ ; discarding incomplete unresolved path: %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)resolve:(uint64_t)a3 error:(uint64_t)a4 .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_22E73A000, a1, a3, "could not alloc/init regex:%@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)resolve:(os_log_t)log error:.cold.4(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_22E73A000, log, OS_LOG_TYPE_DEBUG, "returning resolved path for symbolic path %@: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end