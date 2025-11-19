@interface MXSessionBase
- (MXSessionBase)init;
- (id)copyProperties:(id)a3 outPropertyErrors:(id *)a4;
- (id)copyPropertiesInternal:(id)a3 outPropertyErrors:(id *)a4;
- (int)copyPropertyForKey:(id)a3 valueOut:(id *)a4;
- (int)setOrderedPropertiesInternal:(id)a3 usingErrorHandlingStrategy:(unsigned __int8)a4 outPropertiesErrors:(id *)a5;
- (int)setPropertiesInternal:(id)a3 usingErrorHandlingStrategy:(unsigned __int8)a4 outPropertiesErrors:(id *)a5;
- (int)setPropertyForKey:(id)a3 value:(id)a4;
- (void)dealloc;
@end

@implementation MXSessionBase

- (MXSessionBase)init
{
  v4.receiver = self;
  v4.super_class = MXSessionBase;
  v2 = [(MXSessionBase *)&v4 init];
  if (v2)
  {
    v2->_ID = [objc_alloc(MEMORY[0x1E696AD98]) initWithLongLong:{+[MXSessionBase generateSessionID](MXSessionBase, "generateSessionID")}];
  }

  return v2;
}

- (void)dealloc
{
  self->_ID = 0;

  self->_parentCoreSession = 0;
  v3.receiver = self;
  v3.super_class = MXSessionBase;
  [(MXSessionBase *)&v3 dealloc];
}

- (int)setPropertyForKey:(id)a3 value:(id)a4
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if (([objc_opt_class() isNonSerializedSetProperty:a3] & 1) != 0 || objc_msgSend(objc_opt_class(), "isNonSerializedSetPropertyWhenSessionIsInactive:", a3) && !-[MXCoreSessionBase isActive](-[MXSessionBase parentCoreSession](self, "parentCoreSession"), "isActive"))
  {
    v7 = [(MXSessionBase *)self setPropertyForKeyInternal:a3 value:a4 fromPropertiesBatch:0];
    *(v12 + 6) = v7;
  }

  else
  {
    v8 = MXGetSerialQueue();
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __41__MXSessionBase_setPropertyForKey_value___block_invoke;
    v10[3] = &unk_1E7AE70A8;
    v10[4] = self;
    v10[5] = a3;
    v10[6] = a4;
    v10[7] = &v11;
    MXDispatchAsyncAndWait("[MXSessionBase setPropertyForKey:value:]", "MXSessionBase.m", 113, 0, 0, v8, v10);
    v7 = *(v12 + 6);
  }

  _Block_object_dispose(&v11, 8);
  return v7;
}

uint64_t __41__MXSessionBase_setPropertyForKey_value___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _setPropertyForKey:*(a1 + 40) value:*(a1 + 48)];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

- (int)copyPropertyForKey:(id)a3 valueOut:(id *)a4
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if ([objc_opt_class() isNonSerializedCopyProperty:a3])
  {
    v7 = [(MXSessionBase *)self copyPropertyForKeyInternal:a3 valueOut:a4];
    *(v12 + 6) = v7;
  }

  else
  {
    v8 = MXGetSerialQueue();
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __45__MXSessionBase_copyPropertyForKey_valueOut___block_invoke;
    v10[3] = &unk_1E7AE70D0;
    v10[4] = self;
    v10[5] = a3;
    v10[6] = &v11;
    v10[7] = a4;
    MXDispatchAsyncAndWait("[MXSessionBase copyPropertyForKey:valueOut:]", "MXSessionBase.m", 143, 0, 0, v8, v10);
    v7 = *(v12 + 6);
  }

  _Block_object_dispose(&v11, 8);
  return v7;
}

uint64_t __45__MXSessionBase_copyPropertyForKey_valueOut___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _copyPropertyForKey:*(a1 + 40) valueOut:*(a1 + 56)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

id __78__MXSessionBase_setProperties_usingErrorHandlingStrategy_outPropertiesErrors___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _setProperties:*(a1 + 40) usingErrorHandlingStrategy:*(a1 + 64) outPropertiesErrors:*(a1 + 56)];
  v3 = *(a1 + 56);
  *(*(*(a1 + 48) + 8) + 24) = result;
  if (v3)
  {
    v4 = *v3;

    return v4;
  }

  return result;
}

- (int)setPropertiesInternal:(id)a3 usingErrorHandlingStrategy:(unsigned __int8)a4 outPropertiesErrors:(id *)a5
{
  v6 = a4;
  v64 = *MEMORY[0x1E69E9840];
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v39 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v37 = a5;
  if (a3)
  {
    if (dword_1EB75DE40)
    {
      v53 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CMSMDebugUtility_PrintDictionary(a3);
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v11 = [objc_opt_class() getSetPropertiesOrder];
    v12 = [v11 countByEnumeratingWithState:&v48 objects:v62 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v49;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v49 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v48 + 1) + 8 * i);
          v17 = [a3 objectForKey:{v16, v35, v36}];
          if (v17)
          {
            v60 = v16;
            v61 = v17;
            [v9 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v61, &v60, 1)}];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v48 objects:v62 count:16];
      }

      while (v13);
    }

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v18 = [a3 countByEnumeratingWithState:&v44 objects:v59 count:{16, v35, v36}];
    if (v18)
    {
      v19 = v18;
      v20 = *v45;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v45 != v20)
          {
            objc_enumerationMutation(a3);
          }

          v22 = *(*(&v44 + 1) + 8 * j);
          if (([objc_msgSend(objc_opt_class() "getSetPropertiesOrder")] & 1) == 0)
          {
            v57 = v22;
            v58 = [a3 objectForKey:v22];
            [v9 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v58, &v57, 1)}];
          }
        }

        v19 = [a3 countByEnumeratingWithState:&v44 objects:v59 count:16];
      }

      while (v19);
    }

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v23 = [v9 countByEnumeratingWithState:&v40 objects:v56 count:16];
    if (v23)
    {
      v24 = v23;
      v38 = 0;
      v25 = *v41;
      do
      {
        for (k = 0; k != v24; ++k)
        {
          if (*v41 != v25)
          {
            objc_enumerationMutation(v9);
          }

          v27 = *(*(&v40 + 1) + 8 * k);
          v28 = objc_autoreleasePoolPush();
          v29 = [objc_msgSend(v27 "allKeys")];
          v30 = [v27 objectForKey:v29];
          if (v30 == [MEMORY[0x1E695DFB0] null])
          {
            v31 = 0;
          }

          else
          {
            v31 = v30;
          }

          v32 = [(MXSessionBase *)self setPropertyForKeyInternal:v29 value:v31 fromPropertiesBatch:a3];
          v54 = v29;
          v55 = [MEMORY[0x1E696AD98] numberWithInt:v32];
          [v39 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v55, &v54, 1)}];
          if (v6 == 2)
          {
            if (v32)
            {
              v38 = FigSignalErrorAtGM();
            }
          }

          else if (v6 == 1 && v32)
          {
            [MXSessionBase setPropertiesInternal:v28 usingErrorHandlingStrategy:v63 outPropertiesErrors:?];
            goto LABEL_44;
          }

          objc_autoreleasePoolPop(v28);
        }

        v24 = [v9 countByEnumeratingWithState:&v40 objects:v56 count:16];
      }

      while (v24);
    }

    else
    {
      v38 = 0;
    }
  }

  else
  {
    [MXSessionBase setPropertiesInternal:v63 usingErrorHandlingStrategy:? outPropertiesErrors:?];
LABEL_44:
    v38 = v63[0];
  }

  if (v37)
  {
    *v37 = v39;
  }

  else
  {
  }

  v33 = *MEMORY[0x1E69E9840];
  return v38;
}

id __85__MXSessionBase_setOrderedProperties_usingErrorHandlingStrategy_outPropertiesErrors___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _setOrderedProperties:*(a1 + 40) usingErrorHandlingStrategy:*(a1 + 64) outPropertiesErrors:*(a1 + 56)];
  v3 = *(a1 + 56);
  *(*(*(a1 + 48) + 8) + 24) = result;
  if (v3)
  {
    v4 = *v3;

    return v4;
  }

  return result;
}

- (int)setOrderedPropertiesInternal:(id)a3 usingErrorHandlingStrategy:(unsigned __int8)a4 outPropertiesErrors:(id *)a5
{
  v6 = a4;
  v38 = *MEMORY[0x1E69E9840];
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  obj = a3;
  v25 = a5;
  if (a3)
  {
    if (dword_1EB75DE40)
    {
      v33 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CMSMDebugUtility_PrintCollection(a3);
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v11 = [a3 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v11)
    {
      v12 = v11;
      v26 = 0;
      v13 = *v29;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v29 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v28 + 1) + 8 * i);
          v16 = objc_autoreleasePoolPush();
          v17 = [objc_msgSend(v15 "allKeys")];
          v18 = [v15 objectForKey:v17];
          if (v18 == [MEMORY[0x1E695DFB0] null])
          {
            v19 = 0;
          }

          else
          {
            v19 = v18;
          }

          v20 = [(MXSessionBase *)self setPropertyForKeyInternal:v17 value:v19 fromPropertiesBatch:0, v23, v24];
          v34 = v17;
          v35 = [MEMORY[0x1E696AD98] numberWithInt:v20];
          [v9 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v35, &v34, 1)}];
          if (v6 == 2)
          {
            if (v20)
            {
              v26 = FigSignalErrorAtGM();
            }
          }

          else if (v6 == 1 && v20)
          {
            [MXSessionBase setOrderedPropertiesInternal:v16 usingErrorHandlingStrategy:v37 outPropertiesErrors:?];
            goto LABEL_26;
          }

          objc_autoreleasePoolPop(v16);
        }

        v12 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v12);
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    [MXSessionBase setOrderedPropertiesInternal:v37 usingErrorHandlingStrategy:? outPropertiesErrors:?];
LABEL_26:
    v26 = v37[0];
  }

  if (v25)
  {
    *v25 = v9;
  }

  else
  {
  }

  v21 = *MEMORY[0x1E69E9840];
  return v26;
}

- (id)copyProperties:(id)a3 outPropertyErrors:(id *)a4
{
  v28 = *MEMORY[0x1E69E9840];
  +[MXInitialization waitUntilMXIsFullyInitialized];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3052000000;
  v24 = __Block_byref_object_copy_;
  v25 = __Block_byref_object_dispose_;
  v26 = 0;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [a3 countByEnumeratingWithState:&v17 objects:v27 count:16];
  if (v7)
  {
    v8 = *v18;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(a3);
        }

        if (([objc_opt_class() isNonSerializedCopyProperty:*(*(&v17 + 1) + 8 * v9)] & 1) == 0)
        {
          v11 = MXGetSerialQueue();
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 3221225472;
          v16[2] = __50__MXSessionBase_copyProperties_outPropertyErrors___block_invoke;
          v16[3] = &unk_1E7AE70D0;
          v16[4] = self;
          v16[5] = a3;
          v16[6] = &v21;
          v16[7] = a4;
          MXDispatchAsyncAndWait("[MXSessionBase copyProperties:outPropertyErrors:]", "MXSessionBase.m", 401, 0, 0, v11, v16);
          if (a4)
          {
            v12 = *a4;
          }

          goto LABEL_12;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [a3 countByEnumeratingWithState:&v17 objects:v27 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = [(MXSessionBase *)self copyPropertiesInternal:a3 outPropertyErrors:a4];
  v22[5] = v10;
LABEL_12:
  v13 = v22[5];
  _Block_object_dispose(&v21, 8);
  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

id __50__MXSessionBase_copyProperties_outPropertyErrors___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _copyProperties:*(a1 + 40) outPropertyErrors:*(a1 + 56)];
  *(*(*(a1 + 48) + 8) + 40) = result;
  v3 = *(a1 + 56);
  if (v3)
  {
    v4 = *v3;

    return v4;
  }

  return result;
}

- (id)copyPropertiesInternal:(id)a3 outPropertyErrors:(id *)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [a3 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(a3);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        v19 = 0;
        v13 = [(MXSessionBase *)self copyPropertyForKeyInternal:v11 valueOut:&v19];
        if (v13)
        {
          v14 = 1;
        }

        else
        {
          v14 = v19 == 0;
        }

        if (!v14)
        {
          [v18 setObject:? forKey:?];
        }

        [v6 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", v13), v11}];

        objc_autoreleasePoolPop(v12);
      }

      v8 = [a3 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  if (a4)
  {
    *a4 = v6;
  }

  else
  {
  }

  v15 = *MEMORY[0x1E69E9840];
  return v18;
}

- (uint64_t)setPropertiesInternal:(_DWORD *)a1 usingErrorHandlingStrategy:outPropertiesErrors:.cold.2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)setOrderedPropertiesInternal:(_DWORD *)a1 usingErrorHandlingStrategy:outPropertiesErrors:.cold.2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

@end