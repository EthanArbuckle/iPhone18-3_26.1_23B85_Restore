@interface EARLMTGlobalNNLM
@end

@implementation EARLMTGlobalNNLM

uint64_t __44___EARLMTGlobalNNLM_attachmentURL_withName___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 lastPathComponent];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void __31___EARLMTGlobalNNLM_loadWeight__block_invoke(uint64_t a1, void *a2)
{
  v16 = a2;
  if (([v16 isEqualToString:&stru_1F2D44B60] & 1) == 0)
  {
    v3 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v4 = [v16 componentsSeparatedByCharactersInSet:v3];

    v5 = [v4 objectAtIndex:0];
    v6 = [v4 objectAtIndex:1];
    v7 = [v4 objectAtIndex:2];
    v8 = [*(*(*(a1 + 32) + 8) + 40) objectForKey:v5];

    if (!v8)
    {
      v9 = *(*(*(a1 + 32) + 8) + 40);
      v10 = objc_opt_new();
      [v9 setValue:v10 forKey:v5];
    }

    v11 = [*(*(*(a1 + 32) + 8) + 40) objectForKey:v5];
    [v11 setValue:v7 forKey:v6];

    if ([v4 count] >= 4)
    {
      v12 = [v4 objectAtIndex:3];
      v13 = [v4 objectAtIndex:4];
      v14 = [*(*(*(a1 + 32) + 8) + 40) objectForKey:v5];
      [v14 setValue:v12 forKey:@"nB"];

      v15 = [*(*(*(a1 + 32) + 8) + 40) objectForKey:v5];
      [v15 setValue:v13 forKey:@"nC"];
    }
  }
}

void __32___EARLMTGlobalNNLM_saveWeight___block_invoke(uint64_t a1, void *a2)
{
  v16 = a2;
  if (([v16 isEqualToString:&stru_1F2D44B60] & 1) == 0)
  {
    v3 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v4 = [v16 componentsSeparatedByCharactersInSet:v3];

    v5 = [v4 objectAtIndex:0];
    v6 = [v4 objectAtIndex:1];
    v7 = [v4 objectAtIndex:2];
    v8 = [*(*(*(a1 + 32) + 8) + 40) objectForKey:v5];

    if (!v8)
    {
      v9 = *(*(*(a1 + 32) + 8) + 40);
      v10 = objc_opt_new();
      [v9 setValue:v10 forKey:v5];
    }

    v11 = [*(*(*(a1 + 32) + 8) + 40) objectForKey:v5];
    [v11 setValue:v7 forKey:v6];

    if ([v4 count] >= 4)
    {
      v12 = [v4 objectAtIndex:3];
      v13 = [v4 objectAtIndex:4];
      v14 = [*(*(*(a1 + 32) + 8) + 40) objectForKey:v5];
      [v14 setValue:v12 forKey:@"nB"];

      v15 = [*(*(*(a1 + 32) + 8) + 40) objectForKey:v5];
      [v15 setValue:v13 forKey:@"nC"];
    }
  }
}

void __60___EARLMTGlobalNNLM_findTensorsIndicesByKeyWord_tensorInfo___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a3;
  if ([a2 containsString:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *a4 = 1;
  }
}

uint64_t __26___EARLMTGlobalNNLM_train__block_invoke(uint64_t a1, unint64_t a2, void *a3, void *a4)
{
  v37 = a2;
  v51 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v38 = a4;
  for (i = 0; i < [v6 numberOfDataPoints]; ++i)
  {
    v45 = 0;
    v8 = [v6 dataPointAtIndex:i error:&v45];
    v9 = v45;
    if (v9)
    {
      v31 = v9;
      if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
      {
        __26___EARLMTGlobalNNLM_train__block_invoke_cold_3();
      }

LABEL_39:

      v35 = 0;
      goto LABEL_40;
    }

    v10 = [*(a1 + 32) objectAtIndexedSubscript:0];
    v11 = [v8 objectForKeyedSubscript:v10];
    v12 = [v11 dataPointer];

    v13 = sLog;
    if (os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
    {
      v15 = *v12;
      *buf = 134218240;
      v48 = i;
      v49 = 2048;
      v50 = v15;
      _os_log_impl(&dword_1B501D000, v13, OS_LOG_TYPE_INFO, "Cost for batch %lu = %f", buf, 0x16u);
    }

    v16 = *(a1 + 40);
    *&v14 = *v12;
    v17 = [MEMORY[0x1E696AD98] numberWithFloat:v14];
    [v16 addObject:v17];
  }

  v18 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
  {
    *buf = 134218242;
    v48 = v37;
    v49 = 2112;
    v50 = *&v6;
    _os_log_impl(&dword_1B501D000, v18, OS_LOG_TYPE_INFO, "Espresso training iteration=%lu result=%@", buf, 0x16u);
  }

  [*(*(a1 + 48) + 96) shuffleSamples];
  [*(*(a1 + 48) + 104) setVectorsWithProcessor:*(*(a1 + 48) + 96)];
  v19 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v48 = v37;
    _os_log_impl(&dword_1B501D000, v19, OS_LOG_TYPE_INFO, "Finish running train epoch number %lu", buf, 0xCu);
  }

  v20 = *(*(*(a1 + 64) + 8) + 24);
  if (v20 > 0.0)
  {
    multiply(*(*(*(a1 + 72) + 8) + 40), 1.0 / v20);
    if (*(*(*(a1 + 80) + 8) + 24) == 1)
    {
      v21 = l2norm(*(*(*(a1 + 72) + 8) + 40));
      v22 = *(*(*(a1 + 88) + 8) + 24);
      if (v21 > v22)
      {
        multiply(*(*(*(a1 + 72) + 8) + 40), v22 / v21);
      }
    }
  }

  if (*(*(*(a1 + 96) + 8) + 24) != 1)
  {
    goto LABEL_31;
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v8 = *(*(a1 + 48) + 152);
  v23 = [v8 countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (!v23)
  {
    goto LABEL_30;
  }

  v39 = *v42;
  while (2)
  {
    for (j = 0; j != v23; ++j)
    {
      if (*v42 != v39)
      {
        objc_enumerationMutation(v8);
      }

      v25 = *(*(&v41 + 1) + 8 * j);
      v26 = [*(*(*(a1 + 72) + 8) + 40) objectForKey:v25];
      v27 = v26;
      if (v20 > 0.0 && v26 != 0)
      {
        v29 = [*(*(a1 + 48) + 152) objectForKeyedSubscript:v25];
        v40 = 0;
        LODWORD(v30) = 1.0;
        [v27 applyToTensor:v29 scale:&v40 error:v30];
        v31 = v40;

        if (v31)
        {
          if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
          {
            __26___EARLMTGlobalNNLM_train__block_invoke_cold_1();
          }
        }

        else
        {
          v32 = [v38 getTensorNamed:v25 directBind:1];
          v33 = [*(*(a1 + 48) + 152) objectForKeyedSubscript:v25];
          v31 = _copy(v32, v33);

          if (!v31)
          {
            [v27 reset];
            goto LABEL_28;
          }

          if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
          {
            __26___EARLMTGlobalNNLM_train__block_invoke_cold_2();
          }
        }

        goto LABEL_39;
      }

LABEL_28:
    }

    v23 = [v8 countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v23)
    {
      continue;
    }

    break;
  }

LABEL_30:

  *(*(*(a1 + 64) + 8) + 24) = 0;
LABEL_31:
  v34 = _fetchTensors(*(*(a1 + 48) + 168), *(a1 + 56), *(*(a1 + 48) + 128));
  v35 = 1;
LABEL_40:

  return v35;
}

uint64_t __26___EARLMTGlobalNNLM_train__block_invoke_307(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v75 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v55 = a4;
  v68 = 0;
  v49 = a2;
  v50 = v7;
  v51 = [v7 dataPointAtIndex:a2 error:&v68];
  v8 = v68;
  if (v8)
  {
    v9 = v8;
    if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
    {
      __26___EARLMTGlobalNNLM_train__block_invoke_307_cold_1();
    }

    goto LABEL_51;
  }

  v10 = [*(a1 + 32) objectAtIndexedSubscript:1];
  v56 = a1;
  v11 = [v51 objectForKeyedSubscript:v10];

  v12 = *[v11 dataPointer];
  v13 = a1;
  *(*(*(a1 + 48) + 8) + 24) = v12 + *(*(*(a1 + 48) + 8) + 24);
  v14 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_DEBUG))
  {
    __26___EARLMTGlobalNNLM_train__block_invoke_307_cold_2(v14, v12);
    v13 = a1;
  }

  v67 = 0u;
  v65 = 0u;
  v66 = 0u;
  v64 = 0u;
  obj = *(*(v13 + 40) + 152);
  v15 = [obj countByEnumeratingWithState:&v64 objects:v74 count:16];
  if (v15)
  {
    v53 = *v65;
    *&v16 = 138412546;
    v48 = v16;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v65 != v53)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v64 + 1) + 8 * i);
        v19 = [*(*(*(v56 + 56) + 8) + 40) objectForKey:{v18, v48}];
        v20 = objc_autoreleasePoolPush();
        v21 = [v55 getTensorNamed:v18 directBind:1];
        v22 = [*(*(*(v56 + 64) + 8) + 40) containsObject:v18];
        if (v19)
        {
          v23 = [*(*(v56 + 40) + 152) objectForKeyedSubscript:v18];
          v62 = 0;
          *&v24 = v12;
          [(GradientBuffer *)v19 accumulateDifferenceBetweenTensorBefore:v23 andTensorAfter:v21 withScale:&v62 error:v24];
          v9 = v62;
        }

        else
        {
          v25 = [GradientBuffer alloc];
          v26 = [*(*(v56 + 40) + 152) objectForKeyedSubscript:v18];
          v63 = 0;
          *&v27 = v12;
          v19 = [(GradientBuffer *)v25 initWithTensorBefore:v26 tensorAfter:v21 withScale:v22 shouldSparsify:&v63 error:v27];
          v9 = v63;

          [*(*(*(v56 + 56) + 8) + 40) setObject:v19 forKeyedSubscript:v18];
        }

        if (v9)
        {
          v28 = sLog;
          if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218242;
            v71 = v49;
            v72 = 2112;
            v73 = v18;
            _os_log_error_impl(&dword_1B501D000, v28, OS_LOG_TYPE_ERROR, "Unable to accumulate gradient of batch %lu for %@", buf, 0x16u);
          }
        }

        else if (v22)
        {
          v29 = sLog;
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            v30 = [(GradientBuffer *)v19 description];
            *buf = v48;
            v71 = v18;
            v72 = 2112;
            v73 = v30;
            _os_log_debug_impl(&dword_1B501D000, v29, OS_LOG_TYPE_DEBUG, "%@: %@", buf, 0x16u);
          }
        }

        objc_autoreleasePoolPop(v20);
        if (v9)
        {

LABEL_51:
          v46 = 0;
          goto LABEL_52;
        }
      }

      v15 = [obj countByEnumeratingWithState:&v64 objects:v74 count:16];
    }

    while (v15);
  }

  v31 = v56;
  v32 = (v49 + 1) % *(v56 + 96);
  if (!v32)
  {
    multiply(*(*(*(v56 + 56) + 8) + 40), 1.0 / *(*(*(v56 + 48) + 8) + 24));
    if (*(*(*(v56 + 72) + 8) + 24) == 1)
    {
      v33 = l2norm(*(*(*(v56 + 56) + 8) + 40));
      v34 = *(*(*(v56 + 80) + 8) + 24);
      if (v33 > v34)
      {
        multiply(*(*(*(v56 + 56) + 8) + 40), v34 / v33);
      }
    }
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v54 = *(*(v56 + 40) + 152);
  v35 = [v54 countByEnumeratingWithState:&v58 objects:v69 count:16];
  if (!v35)
  {
    goto LABEL_42;
  }

  v36 = *v59;
  while (2)
  {
    for (j = 0; j != v35; ++j)
    {
      if (*v59 != v36)
      {
        objc_enumerationMutation(v54);
      }

      v38 = *(*(&v58 + 1) + 8 * j);
      v39 = [*(*(v31[7] + 8) + 40) objectForKeyedSubscript:v38];
      v40 = v39;
      if (*(*(v31[11] + 8) + 24) == 1)
      {
        if (!v32 && v39)
        {
          v41 = [*(v31[5] + 152) objectForKeyedSubscript:v38];
          v57 = 0;
          LODWORD(v42) = 1.0;
          [v40 applyToTensor:v41 scale:&v57 error:v42];
          v9 = v57;

          if (v9)
          {
            if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
            {
              __26___EARLMTGlobalNNLM_train__block_invoke_307_cold_3();
            }

            goto LABEL_50;
          }

          [v40 reset];
          v31 = v56;
          v43 = sLog;
          if (os_log_type_enabled(sLog, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v71 = v38;
            _os_log_debug_impl(&dword_1B501D000, v43, OS_LOG_TYPE_DEBUG, "Applied gradient on %@", buf, 0xCu);
          }
        }

        v44 = [v55 getTensorNamed:v38 directBind:1];
        v45 = [*(v31[5] + 152) objectForKeyedSubscript:v38];
        v9 = _copy(v44, v45);

        if (!v9)
        {
          goto LABEL_40;
        }

        if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
        {
          __26___EARLMTGlobalNNLM_train__block_invoke_307_cold_4();
        }

LABEL_50:

        goto LABEL_51;
      }

LABEL_40:

      v31 = v56;
    }

    v35 = [v54 countByEnumeratingWithState:&v58 objects:v69 count:16];
    if (v35)
    {
      continue;
    }

    break;
  }

LABEL_42:

  v9 = 0;
  if (!v32)
  {
    *(*(*(v56 + 48) + 8) + 24) = 0;
  }

  v46 = 1;
LABEL_52:

  return v46;
}

void __26___EARLMTGlobalNNLM_train__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_15();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __26___EARLMTGlobalNNLM_train__block_invoke_cold_3()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __26___EARLMTGlobalNNLM_train__block_invoke_307_cold_1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __26___EARLMTGlobalNNLM_train__block_invoke_307_cold_2(os_log_t log, float a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a2;
  _os_log_debug_impl(&dword_1B501D000, log, OS_LOG_TYPE_DEBUG, "batchSize == %d", v2, 8u);
}

void __26___EARLMTGlobalNNLM_train__block_invoke_307_cold_3()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __26___EARLMTGlobalNNLM_train__block_invoke_307_cold_4()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_15();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end