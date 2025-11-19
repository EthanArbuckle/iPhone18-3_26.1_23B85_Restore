@interface IDSNWPathUtils
+ (id)sharedInstance;
- (BOOL)filterVirtualInterfaces:(char *)a3;
- (BOOL)isSlicedCellularInterface:(id)a3 forSession:(id)a4;
- (BOOL)isVoWiFiInterface:(char *)a3;
- (IDSNWPathUtils)init;
- (id)_updateSlicedInterfaceName:(id)a3;
- (id)getDefaultPath;
- (void)bringUpSlicedInterface:(id)a3 forServiceIdentifier:(id)a4 forSession:(id)a5;
- (void)dealloc;
- (void)setSliceInterfaceBitMask:(unint64_t)a3 forSession:(id)a4;
- (void)takeDownSlicedInterfaceForSession:(id)a3;
@end

@implementation IDSNWPathUtils

+ (id)sharedInstance
{
  if (qword_1ED5DF7F8 != -1)
  {
    sub_1A7E1A3FC();
  }

  v3 = qword_1EB2B85A0;

  return v3;
}

- (IDSNWPathUtils)init
{
  v3.receiver = self;
  v3.super_class = IDSNWPathUtils;
  return [(IDSNWPathUtils *)&v3 init];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = IDSNWPathUtils;
  [(IDSNWPathUtils *)&v2 dealloc];
}

- (id)getDefaultPath
{
  v2 = objc_alloc_init(MEMORY[0x1E6977E40]);
  [v2 prohibitInterfaceSubtype:5001];
  v3 = [objc_alloc(MEMORY[0x1E6977E50]) initWithEndpoint:0 parameters:v2];
  v4 = [v3 path];

  return v4;
}

- (BOOL)filterVirtualInterfaces:(char *)a3
{
  v3 = MEMORY[0x1AC564230](self, a2);
  v4 = nw_interface_create_with_name();
  nw_parameters_require_interface(v3, v4);

  evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
  v6 = nw_path_evaluator_copy_path();
  if (MEMORY[0x1AC564460](v6, 1) & 1) != 0 || (MEMORY[0x1AC564460](v6, 2))
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v7 = MEMORY[0x1AC564460](v6, 3) ^ 1;
  }

  return v7;
}

- (BOOL)isVoWiFiInterface:(char *)a3
{
  v3 = MEMORY[0x1AC564230](self, a2);
  v4 = nw_interface_create_with_name();
  nw_parameters_require_interface(v3, v4);

  v5 = xpc_array_create(0, 0);
  v6 = xpc_array_create(0, 0);
  xpc_array_set_string(v5, 0xFFFFFFFFFFFFFFFFLL, "TelephonyIPSec");
  xpc_array_set_string(v6, 0xFFFFFFFFFFFFFFFFLL, "TelephonyIPSec");
  nw_parameters_set_prohibited_netagent_classes();
  evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
  v8 = nw_path_evaluator_copy_path();
  v9 = nw_path_get_status(v8) == nw_path_status_unsatisfied && nw_path_get_reason() == 10;

  return v9;
}

- (void)bringUpSlicedInterface:(id)a3 forServiceIdentifier:(id)a4 forSession:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if ([a4 isEqualToString:@"com.apple.private.alloy.facetime.multi"])
  {
    v10 = MEMORY[0x1AC564230]();
    nw_parameters_set_account_id();
    [@"com.apple.facetime" UTF8String];
    nw_parameters_set_source_application_by_bundle_id();
    nw_parameters_set_service_class(v10, nw_service_class_interactive_voice);
    nw_parameters_set_required_interface_type(v10, nw_interface_type_cellular);
    evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
    if (evaluator_for_endpoint)
    {
      v12 = +[IDSFoundationLog NWPathUtils];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v21 = v9;
        v22 = 2048;
        v23 = evaluator_for_endpoint;
        _os_log_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_DEFAULT, "Bringing Up Sliced Cellular Interface for Session: %@ with evaluator: %p!", buf, 0x16u);
      }

      v13 = v9;
      v14 = v8;
      nw_path_evaluator_set_update_handler();
      nw_path_evaluator_start();
      if (!self->_sessionIDToSlicingPathEvaluator)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        sessionIDToSlicingPathEvaluator = self->_sessionIDToSlicingPathEvaluator;
        self->_sessionIDToSlicingPathEvaluator = Mutable;
      }

      CFDictionarySetValue(self->_sessionIDToSlicingPathEvaluator, v13, evaluator_for_endpoint);
      v17 = nw_path_evaluator_copy_path();
      v18 = [(IDSNWPathUtils *)self _updateSlicedInterfaceName:v17];
      v19 = [(IDSNWPathUtils *)self isSlicedCellularInterface:v18 forSession:v13];
      if (v14 && v19)
      {
        v14[2](v14, v18);
      }
    }
  }
}

- (void)takeDownSlicedInterfaceForSession:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  sessionIDToSlicingPathEvaluator = self->_sessionIDToSlicingPathEvaluator;
  if (!sessionIDToSlicingPathEvaluator)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v7 = self->_sessionIDToSlicingPathEvaluator;
    self->_sessionIDToSlicingPathEvaluator = Mutable;

    sessionIDToSlicingPathEvaluator = self->_sessionIDToSlicingPathEvaluator;
  }

  v8 = [(NSMutableDictionary *)sessionIDToSlicingPathEvaluator objectForKeyedSubscript:v4];
  if (v8)
  {
    v9 = +[IDSFoundationLog NWPathUtils];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412546;
      v14 = v4;
      v15 = 2048;
      v16 = v8;
      _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_DEFAULT, "Taking Down Sliced Cellular Interface for Session: %@ with evaluator: %p!", &v13, 0x16u);
    }

    nw_path_evaluator_cancel();
    [(NSMutableDictionary *)self->_sessionIDToSlicingPathEvaluator setObject:0 forKeyedSubscript:v4];
  }

  sessionIDToSlicingBitMask = self->_sessionIDToSlicingBitMask;
  if (!sessionIDToSlicingBitMask)
  {
    v11 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v12 = self->_sessionIDToSlicingBitMask;
    self->_sessionIDToSlicingBitMask = v11;

    sessionIDToSlicingBitMask = self->_sessionIDToSlicingBitMask;
  }

  [(NSMutableDictionary *)sessionIDToSlicingBitMask setObject:0 forKeyedSubscript:v4];
}

- (id)_updateSlicedInterfaceName:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1A7BE91F8;
  v17 = sub_1A7BE9208;
  v18 = 0;
  if (nw_path_get_status(v3) == nw_path_status_satisfied)
  {
    v4 = +[IDSFoundationLog NWPathUtils];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "Sliced Cellular Interface Path Satisfied!", buf, 2u);
    }

    enumerate_block[0] = MEMORY[0x1E69E9820];
    enumerate_block[1] = 3221225472;
    enumerate_block[2] = sub_1A7BE9210;
    enumerate_block[3] = &unk_1E77E16A8;
    enumerate_block[4] = &v13;
    nw_path_enumerate_interfaces(v3, enumerate_block);
  }

  else if (nw_path_get_status(v3) == nw_path_status_satisfiable)
  {
    v5 = nw_path_copy_inactive_agent_uuids();
    count = xpc_array_get_count(v5);
    if (count)
    {
      for (i = 0; i != count; ++i)
      {
        v8 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:{xpc_array_get_uuid(v5, i)}];
        v9 = +[IDSFoundationLog NWPathUtils];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v20 = v8;
          _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_DEFAULT, "Asserting Net Agent :%@ for Sliced Cellular Interface!", buf, 0xCu);
        }

        nw_path_assert_agent();
      }
    }
  }

  v10 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v10;
}

- (void)setSliceInterfaceBitMask:(unint64_t)a3 forSession:(id)a4
{
  v6 = a4;
  if (!self->_sessionIDToSlicingBitMask)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    sessionIDToSlicingBitMask = self->_sessionIDToSlicingBitMask;
    self->_sessionIDToSlicingBitMask = Mutable;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
  if (v9)
  {
    CFDictionarySetValue(self->_sessionIDToSlicingBitMask, v6, v9);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_1A7E1A410(v6);
  }
}

- (BOOL)isSlicedCellularInterface:(id)a3 forSession:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v20 = v7;
    v9 = [(NSMutableDictionary *)self->_sessionIDToSlicingBitMask objectForKeyedSubscript:v7];
    v10 = [v9 unsignedLongLongValue];

    for (i = 0; i != 64; ++i)
    {
      if ((v10 >> i))
      {
        v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%llu", @"pdp_ip", i];
        v13 = v12;
        if (v8 && v12)
        {
          CFArrayAppendValue(v8, v12);
        }

        v14 = +[IDSFoundationLog NWPathUtils];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v27 = v13;
          _os_log_impl(&dword_1A7AD9000, v14, OS_LOG_TYPE_DEFAULT, "Sliced Cellular Interface - active slice interface name: %@", buf, 0xCu);
        }
      }
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v15 = v8;
    v16 = [(__CFArray *)v15 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v16)
    {
      v17 = *v22;
      while (2)
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(v15);
          }

          if ([v6 isEqualToString:*(*(&v21 + 1) + 8 * j)])
          {
            LOBYTE(v16) = 1;
            goto LABEL_21;
          }
        }

        v16 = [(__CFArray *)v15 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

LABEL_21:

    v7 = v20;
  }

  else
  {
    LOBYTE(v16) = 0;
  }

  return v16;
}

@end