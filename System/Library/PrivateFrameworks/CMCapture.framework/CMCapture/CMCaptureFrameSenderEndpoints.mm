@interface CMCaptureFrameSenderEndpoints
- (BOOL)_pruneStalePIDsFromDictionary;
- (BOOL)addEndpoint:(id)endpoint endpointUniqueID:(id)d endpointType:(id)type endpointPID:(int)iD endpointProxyPID:(int)pID endpointAuditToken:(id)token endpointProxyAuditToken:(id)auditToken endpointCameraUniqueID:(id)self0;
- (BOOL)removeAllEndpointsWithPID:(int)d pruneStalePIDs:(BOOL)ds;
- (BOOL)removeEndpointWithUniqueID:(id)d;
- (CMCaptureFrameSenderEndpoints)init;
- (CMCaptureFrameSenderEndpoints)initWithXPCArrayOfFrameSenderEndpoints:(id)endpoints;
- (NSDictionary)endpointsByPID;
- (id)createXPCArrayOfFrameSenderEndpoints;
- (void)dealloc;
@end

@implementation CMCaptureFrameSenderEndpoints

- (BOOL)_pruneStalePIDsFromDictionary
{
  allKeys = [(NSMutableDictionary *)self->_frameSenderEndpoints allKeys];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v3 = [allKeys countByEnumeratingWithState:&v24 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v25;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(allKeys);
        }

        intValue = [*(*(&v24 + 1) + 8 * i) intValue];
        v20[0] = 0;
        [MEMORY[0x1E69C75D0] handleForIdentifier:objc_msgSend(MEMORY[0x1E69C75E0] error:{"identifierWithPid:", intValue), v20}];
        if (v20[0] && [v20[0] code] == 3)
        {
          if (dword_1ED8441D0)
          {
            v22 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v10 = v22;
            if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
            {
              v11 = v10;
            }

            else
            {
              v11 = v10 & 0xFFFFFFFE;
            }

            if (v11)
            {
              v16 = 136315395;
              v17 = "[CMCaptureFrameSenderEndpoints _pruneStalePIDsFromDictionary]";
              v18 = 1025;
              v19 = intValue;
              LODWORD(v14) = 18;
              v13 = &v16;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v5 |= [(CMCaptureFrameSenderEndpoints *)self removeAllEndpointsWithPID:intValue pruneStalePIDs:0, v13, v14];
        }
      }

      v4 = [allKeys countByEnumeratingWithState:&v24 objects:v23 count:16];
    }

    while (v4);
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5 & 1;
}

- (CMCaptureFrameSenderEndpoints)init
{
  v4.receiver = self;
  v4.super_class = CMCaptureFrameSenderEndpoints;
  v2 = [(CMCaptureFrameSenderEndpoints *)&v4 init];
  if (v2)
  {
    v2->_frameSenderEndpoints = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v2;
}

- (CMCaptureFrameSenderEndpoints)initWithXPCArrayOfFrameSenderEndpoints:(id)endpoints
{
  v7.receiver = self;
  v7.super_class = CMCaptureFrameSenderEndpoints;
  v4 = [(CMCaptureFrameSenderEndpoints *)&v7 init];
  if (v4)
  {
    v4->_frameSenderEndpoints = objc_alloc_init(MEMORY[0x1E695DF90]);
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = __72__CMCaptureFrameSenderEndpoints_initWithXPCArrayOfFrameSenderEndpoints___block_invoke;
    applier[3] = &unk_1E798FA38;
    applier[4] = v4;
    xpc_array_apply(endpoints, applier);
  }

  return v4;
}

uint64_t __72__CMCaptureFrameSenderEndpoints_initWithXPCArrayOfFrameSenderEndpoints___block_invoke(int a1, int a2, xpc_object_t xdict)
{
  xpc_dictionary_get_value(xdict, "endpoint");
  FigXPCMessageCopyCFString();
  FigXPCMessageCopyCFString();
  [MEMORY[0x1E696AD98] numberWithInt:{xpc_dictionary_get_int64(xdict, "endpoint-pid")}];
  [MEMORY[0x1E696AD98] numberWithInt:{xpc_dictionary_get_int64(xdict, "endpoint-proxy-pid")}];
  FigXPCMessageCopyCFData();
  FigXPCMessageCopyCFData();
  FigXPCMessageCopyCFString();

  return 1;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMCaptureFrameSenderEndpoints;
  [(CMCaptureFrameSenderEndpoints *)&v3 dealloc];
}

- (NSDictionary)endpointsByPID
{
  [(CMCaptureFrameSenderEndpoints *)self _pruneStalePIDsFromDictionary];
  v3 = [(NSMutableDictionary *)self->_frameSenderEndpoints copy];

  return v3;
}

- (BOOL)addEndpoint:(id)endpoint endpointUniqueID:(id)d endpointType:(id)type endpointPID:(int)iD endpointProxyPID:(int)pID endpointAuditToken:(id)token endpointProxyAuditToken:(id)auditToken endpointCameraUniqueID:(id)self0
{
  v10 = *&iD;
  _pruneStalePIDsFromDictionary = [(CMCaptureFrameSenderEndpoints *)self _pruneStalePIDsFromDictionary];
  v15 = [MEMORY[0x1E696AD98] numberWithInt:v10];
  array = [(NSMutableDictionary *)self->_frameSenderEndpoints objectForKeyedSubscript:v15];
  if (!array)
  {
    array = [MEMORY[0x1E695DF70] array];
    [(NSMutableDictionary *)self->_frameSenderEndpoints setObject:array forKeyedSubscript:v15];
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v17 = [array countByEnumeratingWithState:&v27 objects:v26 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v28;
LABEL_5:
    v20 = 0;
    while (1)
    {
      if (*v28 != v19)
      {
        objc_enumerationMutation(array);
      }

      if ([objc_msgSend(*(*(&v27 + 1) + 8 * v20) objectForKeyedSubscript:{@"endpoint-uid", "isEqualToString:", d}])
      {
        break;
      }

      if (v18 == ++v20)
      {
        v18 = [array countByEnumeratingWithState:&v27 objects:v26 count:16];
        if (v18)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    cfse_addEndpointInfo(v15, [MEMORY[0x1E696AD98] numberWithInt:pID], endpoint, d, type, token, auditToken, uniqueID, array);
    if (dword_1ED8441D0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      _pruneStalePIDsFromDictionary = 1;
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    else
    {
      return 1;
    }
  }

  return _pruneStalePIDsFromDictionary;
}

- (BOOL)removeAllEndpointsWithPID:(int)d pruneStalePIDs:(BOOL)ds
{
  HIDWORD(v18) = ds;
  v4 = *&d;
  selfCopy = self;
  v6 = -[NSMutableDictionary objectForKeyedSubscript:](self->_frameSenderEndpoints, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithInt:?]);
  v7 = v6 != 0;
  if (v6)
  {
    -[NSMutableDictionary setObject:forKeyedSubscript:](selfCopy->_frameSenderEndpoints, "setObject:forKeyedSubscript:", 0, [MEMORY[0x1E696AD98] numberWithInt:v4]);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = [(NSMutableDictionary *)selfCopy->_frameSenderEndpoints allKeys];
  v22 = [obj countByEnumeratingWithState:&v34 objects:v33 count:16];
  if (v22)
  {
    v20 = *v35;
    v21 = selfCopy;
    do
    {
      v8 = 0;
      do
      {
        if (*v35 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v34 + 1) + 8 * v8);
        v24 = v8;
        v9 = [(NSMutableDictionary *)selfCopy->_frameSenderEndpoints objectForKeyedSubscript:?];
        if ([v9 count])
        {
          v10 = 0;
          do
          {
            v11 = [v9 objectAtIndexedSubscript:v10];
            if ([objc_msgSend(v11 objectForKeyedSubscript:{@"endpoint-proxy-pid", "intValue"}] == v4)
            {
              if (dword_1ED8441D0)
              {
                v32 = 0;
                type = OS_LOG_TYPE_DEFAULT;
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v13 = v32;
                if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
                {
                  v14 = v13;
                }

                else
                {
                  v14 = v13 & 0xFFFFFFFE;
                }

                if (v14)
                {
                  v15 = [v11 objectForKeyedSubscript:@"endpoint-uid"];
                  v25 = 136315651;
                  v26 = "[CMCaptureFrameSenderEndpoints removeAllEndpointsWithPID:pruneStalePIDs:]";
                  v27 = 1025;
                  v28 = v4;
                  v29 = 2112;
                  v30 = v15;
                  LODWORD(v18) = 28;
                  v17 = &v25;
                  _os_log_send_and_compose_impl();
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              [v9 removeObjectAtIndex:{v10, v17, v18}];
              v7 = 1;
            }

            else
            {
              ++v10;
            }
          }

          while (v10 < [v9 count]);
        }

        selfCopy = v21;
        if (![v9 count])
        {
          [(NSMutableDictionary *)v21->_frameSenderEndpoints setObject:0 forKeyedSubscript:v23];
        }

        v8 = v24 + 1;
      }

      while (v24 + 1 != v22);
      v22 = [obj countByEnumeratingWithState:&v34 objects:v33 count:16];
    }

    while (v22);
  }

  if (HIDWORD(v18))
  {
    v7 |= [(CMCaptureFrameSenderEndpoints *)selfCopy _pruneStalePIDsFromDictionary];
  }

  return v7 & 1;
}

- (BOOL)removeEndpointWithUniqueID:(id)d
{
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  allKeys = [(NSMutableDictionary *)self->_frameSenderEndpoints allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v21 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_frameSenderEndpoints objectForKeyedSubscript:v10];
        if ([v11 count])
        {
          v12 = 0;
          while (![objc_msgSend(objc_msgSend(v11 objectAtIndexedSubscript:{v12), "objectForKeyedSubscript:", @"endpoint-uid", "isEqualToString:", d}])
          {
            if (++v12 >= [v11 count])
            {
              goto LABEL_10;
            }
          }

          [v11 removeObjectAtIndex:v12];
          if (dword_1ED8441D0)
          {
            v19 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          if (![v11 count])
          {
            [(NSMutableDictionary *)self->_frameSenderEndpoints setObject:0 forKeyedSubscript:v10];
          }

          v13 = 1;
          return v13 | [(CMCaptureFrameSenderEndpoints *)self _pruneStalePIDsFromDictionary];
        }

LABEL_10:
        ;
      }

      v7 = [allKeys countByEnumeratingWithState:&v21 objects:v20 count:16];
      v13 = 0;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13 | [(CMCaptureFrameSenderEndpoints *)self _pruneStalePIDsFromDictionary];
}

- (id)createXPCArrayOfFrameSenderEndpoints
{
  v3 = xpc_array_create(0, 0);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [(NSMutableDictionary *)self->_frameSenderEndpoints allValues];
  v18 = [obj countByEnumeratingWithState:&v26 objects:v25 count:16];
  if (v18)
  {
    v17 = *v27;
    do
    {
      v4 = 0;
      do
      {
        if (*v27 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = v4;
        v5 = *(*(&v26 + 1) + 8 * v4);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v6 = [v5 countByEnumeratingWithState:&v21 objects:v20 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v22;
          do
          {
            v9 = 0;
            do
            {
              if (*v22 != v8)
              {
                objc_enumerationMutation(v5);
              }

              v10 = *(*(&v21 + 1) + 8 * v9);
              v11 = xpc_dictionary_create(0, 0, 0);
              v12 = [v10 objectForKeyedSubscript:@"endpoint"];
              if (v10)
              {
                xpc_dictionary_set_value(v11, "endpoint", v12);
              }

              if ([v10 objectForKeyedSubscript:@"endpoint-uid"])
              {
                FigXPCMessageSetCFString();
              }

              if ([v10 objectForKeyedSubscript:@"endpoint-type"])
              {
                FigXPCMessageSetCFString();
              }

              v13 = [v10 objectForKeyedSubscript:@"endpoint-pid"];
              if (v13)
              {
                xpc_dictionary_set_int64(v11, "endpoint-pid", [v13 intValue]);
              }

              v14 = [v10 objectForKeyedSubscript:@"endpoint-proxy-pid"];
              if (v14)
              {
                xpc_dictionary_set_int64(v11, "endpoint-proxy-pid", [v14 intValue]);
              }

              if ([v10 objectForKeyedSubscript:@"endpoint-audit-token"])
              {
                FigXPCMessageSetCFData();
              }

              if ([v10 objectForKeyedSubscript:@"endpoint-proxy-audit-token"])
              {
                FigXPCMessageSetCFData();
              }

              if ([v10 objectForKeyedSubscript:@"endpoint-camera-uid"])
              {
                FigXPCMessageSetCFString();
              }

              xpc_array_append_value(v3, v11);
              xpc_release(v11);
              ++v9;
            }

            while (v7 != v9);
            v7 = [v5 countByEnumeratingWithState:&v21 objects:v20 count:16];
          }

          while (v7);
        }

        v4 = v19 + 1;
      }

      while (v19 + 1 != v18);
      v18 = [obj countByEnumeratingWithState:&v26 objects:v25 count:16];
    }

    while (v18);
  }

  return v3;
}

@end