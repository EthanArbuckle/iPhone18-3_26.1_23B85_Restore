@interface MXSessionSidekick
+ (int)updateIsPlaying:(id)a3;
+ (void)initialize;
- (MXSessionSidekick)initWithSession:(id)a3;
- (id)copyProperties:(id)a3 outPropertyErrors:(id *)a4;
- (id)getClientTypeAsString;
- (id)info;
- (int)copyPropertyForKey:(id)a3 valueOut:(id *)a4;
- (int)setClientType:(int)a3;
- (int)setIsPlaying:(BOOL)a3;
- (int)setOrderedProperties:(id)a3 usingErrorHandlingStrategy:(unsigned __int8)a4 outPropertiesErrors:(id *)a5;
- (int)setProperties:(id)a3 usingErrorHandlingStrategy:(unsigned __int8)a4 outPropertiesErrors:(id *)a5;
- (int)setPropertyForKey:(id)a3 value:(id)a4;
- (void)dealloc;
- (void)dumpInfo;
@end

@implementation MXSessionSidekick

+ (void)initialize
{
  if (objc_opt_self() == a1)
  {
    sOrderedMXSessionSidekickProperties = [objc_alloc(MEMORY[0x1E695DFB8]) initWithObjects:{@"ClientType", @"ClientName", @"AudioSessionID", @"ClientPID", @"AuditToken", @"IAmTheAssistant", @"AudioCategory", @"AudioMode", @"InterruptionFadeDuration", 0}];
  }
}

- (id)getClientTypeAsString
{
  v2 = self->mClientType - 1;
  if (v2 > 3)
  {
    return @"kMXSessionClientType_Invalid";
  }

  else
  {
    return off_1E7AED118[v2];
  }
}

- (int)setIsPlaying:(BOOL)a3
{
  if (self->mIsPlaying == a3)
  {
    return 0;
  }

  self->mIsPlaying = a3;
  return [MXSessionSidekick updateIsPlaying:self->mCoreSession];
}

- (int)setClientType:(int)a3
{
  v6 = *MEMORY[0x1E69E9840];
  self->mClientType = a3;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v4 = *MEMORY[0x1E69E9840];
  return 0;
}

+ (int)updateIsPlaying:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = [+[MXSessionManagerSidekick sharedInstance](MXSessionManagerSidekick copyMXSessionList:"copyMXSessionList:", a3];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        if ([v10 getIsPlaying])
        {
          v10[8];
          v7 = 1;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if ((v7 & 1) == [a3 isPlaying])
  {
    v13 = 0;
  }

  else
  {
    if (dword_1EB75DE40)
    {
      v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v13 = [a3 _setPropertyForKey:@"IsPlaying" value:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", v7 & 1, v17, v19)}];
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)info
{
  v3 = MEMORY[0x1E696AEC0];
  mID = self->mID;
  mCoreSessionID = self->mCoreSessionID;
  v6 = [-[MXSessionSidekick getCoreSession](self "getCoreSession")];
  v7 = @"NO";
  if (self->mIsPlaying)
  {
    v7 = @"YES";
  }

  return [v3 stringWithFormat:@"<MXSessionID: %llx, CoreSessionID = %lld, Name = %@, Playing = %@, clientType = %x", mID, mCoreSessionID, v6, v7, self->mClientType];
}

- (void)dumpInfo
{
  v4 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (MXSessionSidekick)initWithSession:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = MXSessionSidekick;
  v4 = [(MXSessionSidekick *)&v19 init];
  v5 = v4;
  if (v4)
  {
    if (a3)
    {
      v4->mIsPlaying = 0;
      v4->mClientType = 1;
      v6 = a3;
      v5->mCoreSession = v6;
      v7 = [(NSNumber *)[(MXCoreSessionBase *)v6 ID] unsignedLongLongValue];
      v5->mCoreSessionID = v7;
      v5->mID = [a3 mxSessionIDCounter] + 1000 * v7;
      [a3 setMxSessionIDCounter:{objc_msgSend(a3, "mxSessionIDCounter") + 1}];
      -[NSRecursiveLock lock]([+[MXSessionManagerSidekick sharedInstance](MXSessionManagerSidekick recursiveLock], "lock");
      v8 = [+[MXSessionManagerSidekick sharedInstance](MXSessionManagerSidekick coreSessionIDToMXSessionList];
      v9 = -[NSMapTable objectForKey:](v8, "objectForKey:", [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5->mCoreSessionID]);
      v10 = v9;
      if (!v9)
      {
        v10 = [objc_alloc(MEMORY[0x1E696AE08]) initWithOptions:5];
      }

      objc_initWeak(&location, v5);
      [v10 addPointer:objc_loadWeak(&location)];
      v11 = [+[MXSessionManagerSidekick sharedInstance](MXSessionManagerSidekick coreSessionIDToMXSessionList];
      -[NSMapTable setObject:forKey:](v11, "setObject:forKey:", v10, [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5->mCoreSessionID]);
      -[NSRecursiveLock unlock]([+[MXSessionManagerSidekick sharedInstance](MXSessionManagerSidekick recursiveLock], "unlock");
      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (!v9)
      {
      }

      v14 = objc_alloc(MEMORY[0x1E696AEC0]);
      mID = v5->mID;
      v5->mDescription = [v14 initWithFormat:@"<MXSessionID = %llx, CoreSessionID = %lld>", mID, v5->mCoreSessionID];
      objc_destroyWeak(&location);
    }

    else
    {
      LODWORD(location) = 0;
      v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();

      v5 = 0;
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)dealloc
{
  v3 = objc_autoreleasePoolPush();
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  -[NSRecursiveLock lock]([+[MXSessionManagerSidekick sharedInstance](MXSessionManagerSidekick recursiveLock], "lock");
  v4 = -[NSMapTable objectForKey:]([+[MXSessionManagerSidekick sharedInstance](MXSessionManagerSidekick coreSessionIDToMXSessionList], "objectForKey:", [(MXCoreSessionBase *)self->mCoreSession ID]);
  [v4 addPointer:0];
  [v4 compact];
  if ([v4 count])
  {
    *(v12 + 24) = 1;
  }

  else
  {
    v5 = [+[MXSessionManagerSidekick sharedInstance](MXSessionManagerSidekick coreSessionIDToMXSessionList];
    -[NSMapTable removeObjectForKey:](v5, "removeObjectForKey:", [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->mCoreSessionID]);
  }

  -[NSRecursiveLock unlock]([+[MXSessionManagerSidekick sharedInstance](MXSessionManagerSidekick recursiveLock], "unlock");
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3052000000;
  v10[3] = __Block_byref_object_copy__18;
  mCoreSession = self->mCoreSession;
  v10[4] = __Block_byref_object_dispose__18;
  v10[5] = mCoreSession;
  v7 = [+[MXSessionManagerSidekick sharedInstance](MXSessionManagerSidekick serialQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __28__MXSessionSidekick_dealloc__block_invoke;
  v9[3] = &unk_1E7AED0F8;
  v9[4] = &v11;
  v9[5] = v10;
  MXDispatchAsync("[MXSessionSidekick dealloc]", "MXSessionSidekick.m", 315, 0, 0, v7, v9);

  v8.receiver = self;
  v8.super_class = MXSessionSidekick;
  [(MXSessionSidekick *)&v8 dealloc];
  _Block_object_dispose(v10, 8);
  _Block_object_dispose(&v11, 8);
  objc_autoreleasePoolPop(v3);
}

void __28__MXSessionSidekick_dealloc__block_invoke(uint64_t a1)
{
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    [MXSessionSidekick updateIsPlaying:*(*(*(a1 + 40) + 8) + 40)];
  }

  v2 = *(*(*(a1 + 40) + 8) + 40);
}

- (int)setPropertyForKey:(id)a3 value:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  if ([a3 isEqualToString:@"IsPlaying"])
  {
    if (a4)
    {
      v7 = CFGetTypeID(a4);
      if (v7 == CFBooleanGetTypeID())
      {
        v8 = [(MXSessionSidekick *)self setIsPlaying:*MEMORY[0x1E695E4D0] == a4];
        goto LABEL_10;
      }
    }

    [MXSessionSidekick setPropertyForKey:v15 value:?];
LABEL_16:
    v10 = v15[0];
    if (!v15[0])
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if ([a3 isEqualToString:@"ClientType"])
  {
    v9 = CFGetTypeID(a4);
    if (v9 != CFNumberGetTypeID())
    {
      [MXSessionSidekick setPropertyForKey:v15 value:?];
      goto LABEL_16;
    }

    valuePtr = 1;
    CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
    if ((valuePtr - 5) <= 0xFFFFFFFB)
    {
      [MXSessionSidekick setPropertyForKey:v15 value:?];
      goto LABEL_16;
    }

    v8 = [(MXSessionSidekick *)self setClientType:?];
  }

  else
  {
    v8 = [(MXCoreSessionSidekick *)self->mCoreSession _setPropertyForKey:a3 value:a4];
  }

LABEL_10:
  v10 = v8;
  if (v8)
  {
LABEL_11:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_12:
  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

- (int)setProperties:(id)a3 usingErrorHandlingStrategy:(unsigned __int8)a4 outPropertiesErrors:(id *)a5
{
  v6 = a4;
  v64 = *MEMORY[0x1E69E9840];
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v39 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v36 = a5;
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
    v10 = sOrderedMXSessionSidekickProperties;
    v11 = [sOrderedMXSessionSidekickProperties countByEnumeratingWithState:&v48 objects:v62 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v49;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v49 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v48 + 1) + 8 * i);
          v16 = [a3 objectForKey:{v15, v34, v35}];
          if (v16)
          {
            v60 = v15;
            v61 = v16;
            [v8 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v61, &v60, 1)}];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v48 objects:v62 count:16];
      }

      while (v12);
    }

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v17 = [a3 countByEnumeratingWithState:&v44 objects:v59 count:{16, v34, v35}];
    if (v17)
    {
      v18 = v17;
      v19 = *v45;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v45 != v19)
          {
            objc_enumerationMutation(a3);
          }

          v21 = *(*(&v44 + 1) + 8 * j);
          if (([sOrderedMXSessionSidekickProperties containsObject:v21] & 1) == 0)
          {
            v57 = v21;
            v58 = [a3 objectForKey:v21];
            [v8 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v58, &v57, 1)}];
          }
        }

        v18 = [a3 countByEnumeratingWithState:&v44 objects:v59 count:16];
      }

      while (v18);
    }

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v22 = [v8 countByEnumeratingWithState:&v40 objects:v56 count:16];
    if (v22)
    {
      v23 = v22;
      v37 = 0;
      v24 = *v41;
      do
      {
        for (k = 0; k != v23; ++k)
        {
          if (*v41 != v24)
          {
            objc_enumerationMutation(v8);
          }

          v26 = *(*(&v40 + 1) + 8 * k);
          v27 = objc_autoreleasePoolPush();
          v28 = [objc_msgSend(v26 "allKeys")];
          v29 = [v26 objectForKey:v28];
          if (v29 == [MEMORY[0x1E695DFB0] null])
          {
            v30 = 0;
          }

          else
          {
            v30 = v29;
          }

          v31 = [(MXSessionSidekick *)self setPropertyForKey:v28 value:v30];
          v54 = v28;
          v55 = [MEMORY[0x1E696AD98] numberWithInt:v31];
          [v39 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v55, &v54, 1)}];
          if (v6 == 2)
          {
            if (v31)
            {
              v37 = FigSignalErrorAtGM();
            }
          }

          else if (v6 == 1 && v31)
          {
            [MXSessionSidekick setProperties:v27 usingErrorHandlingStrategy:v63 outPropertiesErrors:?];
            goto LABEL_44;
          }

          objc_autoreleasePoolPop(v27);
        }

        v23 = [v8 countByEnumeratingWithState:&v40 objects:v56 count:16];
      }

      while (v23);
    }

    else
    {
      v37 = 0;
    }
  }

  else
  {
    [MXSessionSidekick setProperties:v63 usingErrorHandlingStrategy:? outPropertiesErrors:?];
LABEL_44:
    v37 = v63[0];
  }

  if (v36)
  {
    *v36 = v39;
  }

  else
  {
  }

  v32 = *MEMORY[0x1E69E9840];
  return v37;
}

- (int)setOrderedProperties:(id)a3 usingErrorHandlingStrategy:(unsigned __int8)a4 outPropertiesErrors:(id *)a5
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

          v20 = [(MXSessionSidekick *)self setPropertyForKey:v17 value:v19, v23, v24];
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
            [MXSessionSidekick setOrderedProperties:v16 usingErrorHandlingStrategy:v37 outPropertiesErrors:?];
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
    [MXSessionSidekick setOrderedProperties:v37 usingErrorHandlingStrategy:? outPropertiesErrors:?];
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
        v13 = [(MXSessionSidekick *)self copyPropertyForKey:v11 valueOut:&v19];
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

- (int)copyPropertyForKey:(id)a3 valueOut:(id *)a4
{
  if (!a3)
  {
    return -15682;
  }

  if ([a3 isEqualToString:@"IsPlaying"])
  {
    v7 = [(MXSessionSidekick *)self getIsPlaying];
    v8 = MEMORY[0x1E695E4D0];
    if (!v7)
    {
      v8 = MEMORY[0x1E695E4C0];
    }

    v9 = *v8;
    *a4 = *v8;
    CFRetain(v9);
    return 0;
  }

  if ([a3 isEqualToString:@"MXSessionID"])
  {
    v17 = [(MXSessionSidekick *)self getID];
    v11 = *MEMORY[0x1E695E480];
    p_valuePtr = &v17;
    v13 = kCFNumberSInt64Type;
LABEL_11:
    v14 = CFNumberCreate(v11, v13, p_valuePtr);
    result = 0;
    *a4 = v14;
    return result;
  }

  if ([a3 isEqualToString:@"TestOnly_ClientType"])
  {
    valuePtr = [(MXSessionSidekick *)self getClientType];
    v11 = *MEMORY[0x1E695E480];
    p_valuePtr = &valuePtr;
    v13 = kCFNumberSInt32Type;
    goto LABEL_11;
  }

  mCoreSession = self->mCoreSession;

  return [(MXCoreSessionSidekick *)mCoreSession _copyPropertyForKey:a3 valueOut:a4];
}

- (uint64_t)setPropertyForKey:(_DWORD *)a1 value:.cold.1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)setPropertyForKey:(_DWORD *)a1 value:.cold.2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)setPropertyForKey:(_DWORD *)a1 value:.cold.3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)setProperties:(_DWORD *)a1 usingErrorHandlingStrategy:outPropertiesErrors:.cold.2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)setOrderedProperties:(_DWORD *)a1 usingErrorHandlingStrategy:outPropertiesErrors:.cold.2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

@end