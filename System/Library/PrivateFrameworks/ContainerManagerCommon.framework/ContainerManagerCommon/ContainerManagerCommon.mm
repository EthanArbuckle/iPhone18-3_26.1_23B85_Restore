void ___containermanagerd_start_xpc_block_invoke_149(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(*(a1 + 64) + 8) + 40);
  v5 = *(a1 + 32);
  if (v4)
  {
    _containermanagerd_listener_handler_for_permanent_error(v5, v3, v4);
    _containermanagerd_self_destruct(*(a1 + 40));
  }

  else
  {
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v8 = v5;
    v9 = v6;
    v10 = v7;
    v11 = v3;
    if (MEMORY[0x1E12D4840]() == MEMORY[0x1E69E9E68])
    {
      xpc_connection_set_target_queue(v11, v8);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = ___containermanagerd_listener_handler_block_invoke;
      handler[3] = &unk_1E86AFBE0;
      v15 = v8;
      v16 = v9;
      v17 = v10;
      v12 = v11;
      v18 = v12;
      xpc_connection_set_event_handler(v12, handler);
      xpc_connection_resume(v12);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void ___containermanagerd_listener_handler_block_invoke(void *a1, void *a2)
{
  v86 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v6 = a1[7];
  v68 = v4;
  v67 = v5;
  v8 = v7;
  connection = v6;
  v69 = v3;
  if (_containermanagerd_connection_handler_onceToken != -1)
  {
    dispatch_once(&_containermanagerd_connection_handler_onceToken, &__block_literal_global_202);
  }

  v9 = MEMORY[0x1E12D4840](v69) == MEMORY[0x1E69E9E98];
  v10 = v69;
  if (!v9)
  {
    v11 = _containermanagerd_connection_handler_dispatcher;
    v12 = v69;
    v64 = v68;
    v65 = v67;
    v13 = v8;
    v63 = v11;
    reply = xpc_dictionary_create_reply(v12);
    v60 = v13;
    if (!reply)
    {
      v21 = container_log_handle_for_category();
      if (os_log_type_enabled(&v21->super, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1DF2C3000, &v21->super, OS_LOG_TYPE_ERROR, "Dictionary does not have reply context", buf, 2u);
      }

      goto LABEL_42;
    }

    uint64 = xpc_dictionary_get_uint64(v12, "Command");
    v56 = objc_autoreleasePoolPush();
    v73 = 0;
    v74 = &v73;
    v75 = 0x3032000000;
    v76 = __Block_byref_object_copy__9797;
    v77 = __Block_byref_object_dispose__9798;
    v78 = 0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __MCMProcessXPCEvent_block_invoke;
    block[3] = &unk_1E86B0E08;
    v15 = v13;
    v72 = v15;
    if (MCMProcessXPCEvent_onceToken != -1)
    {
      dispatch_once(&MCMProcessXPCEvent_onceToken, block);
    }

    v16 = container_log_handle_for_category();
    v61 = os_signpost_id_make_with_pointer(v16, v12);

    v17 = container_log_handle_for_category();
    v18 = v17;
    if (v61 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      *buf = 134349056;
      *&buf[4] = uint64;
      _os_signpost_emit_with_name_impl(&dword_1DF2C3000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v61, "XPCEventProcessing", " command=%{public, signpost.description:attribute}llu ", buf, 0xCu);
    }

    if (uint64 >= 0x35)
    {
      v19 = container_log_handle_for_category();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = uint64;
        _os_log_error_impl(&dword_1DF2C3000, v19, OS_LOG_TYPE_ERROR, "Invalid command index: %llu", buf, 0xCu);
      }

      v58 = [[MCMError alloc] initWithErrorType:49 category:3];
      v20 = 0;
      v59 = 0;
LABEL_30:
      v29 = 0;
      v57 = 0;
      v22 = 0;
LABEL_38:
      v43 = os_transaction_create();
      v44 = v74[5];
      v74[5] = v43;

      v45 = [MCMResultPromise alloc];
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __MCMProcessXPCEvent_block_invoke_10;
      v81 = &unk_1E86B0820;
      v84 = v61;
      v85 = uint64;
      v46 = v22;
      v82 = v46;
      v83 = &v73;
      v47 = [(MCMResultPromise *)v45 initWithCompletion:buf];

      v21 = [[MCMReply alloc] initWithXpcReply:reply slowWorkloop:v65 fastWorkloop:v64 resultPromise:v47];
      if (v20)
      {
        [v63 dispatchMessage:v12 context:v29 reply:v21];
      }

      else
      {
        v48 = [[MCMResultBase alloc] initWithError:v58];
        [(MCMResultPromise *)v47 completeWithResult:v48];
      }

      _Block_object_dispose(&v73, 8);
      objc_autoreleasePoolPop(v56);
      [(MCMReply *)v21 send];

LABEL_42:
      v10 = v69;
      if (!reply)
      {
        xpc_connection_cancel(connection);
        v10 = v69;
      }

      goto LABEL_44;
    }

    v59 = [[MCMClientMessageContext alloc] initForCurrentThreadContextWithXPCMessage:v12 userIdentityCache:v15];
    v70 = 0;
    v22 = [MCMProcessXPCEvent_clientFactory clientIdentityWithClientMessageContext:v59 xpcMessage:v12 error:&v70];
    v58 = v70;
    if (!v22)
    {
      v42 = container_log_handle_for_category();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v50 = [v59 pid];
        *buf = 67109378;
        *&buf[4] = v50;
        *&buf[8] = 2112;
        *&buf[10] = v58;
        _os_log_error_impl(&dword_1DF2C3000, v42, OS_LOG_TYPE_ERROR, "Error creating client identity for pid %d; error = %@", buf, 0x12u);
      }

      v20 = 0;
      goto LABEL_30;
    }

    v23 = [MCMContainerFactory alloc];
    v57 = [(MCMContainerFactory *)v23 initWithContainerCache:gContainerCache clientIdentity:v22 userIdentityCache:v15];
    current_persona = voucher_get_current_persona();
    v25 = [MCMCommandContext alloc];
    v26 = gContainerCache;
    v27 = MCMProcessXPCEvent_clientFactory;
    v28 = containermanager_copy_global_configuration();
    v29 = [(MCMCommandContext *)v25 initWithClientIdentity:v22 containerCache:v26 containerFactory:v57 userIdentityCache:v15 clientFactory:v27 kernelPersonaID:current_persona globalConfiguration:v28];

    v30 = containermanager_copy_global_configuration();
    LODWORD(v26) = [v30 dispositionForContainerClass:2] == 1;

    if (!v26)
    {
LABEL_37:
      v20 = 1;
      goto LABEL_38;
    }

    v29 = v29;
    v31 = [(MCMCommandContext *)v29 clientIdentity];
    v32 = [v31 codeSignInfo];
    if ([v31 cached] & 1) != 0 || (objc_msgSend(v32, "cached"))
    {
LABEL_36:

      goto LABEL_37;
    }

    context = objc_autoreleasePoolPush();
    v33 = gCodeSigningMapping;
    v34 = [v32 entitlements];
    v35 = [v32 identifier];
    v79 = 0;
    v55 = [v33 processCallerRegisteredEntitlements:v34 identifier:v35 error:&v79];
    v53 = v79;

    if (v55)
    {
      v36 = v55;
      if (![v55 count])
      {
LABEL_35:

        objc_autoreleasePoolPop(context);
        goto LABEL_36;
      }

      oslog = objc_alloc_init(MCMResultPromise);
      v37 = [v55 allObjects];
      v38 = [MCMCommandOperationDelete commandForOperationDeleteWithContainerIdentities:v37 removeAllCodeSignInfo:0 context:v29 resultPromise:oslog];

      [v38 execute];
      v39 = [(MCMResultPromise *)oslog result];
      v40 = [v39 error];

      v36 = v55;
      if (v40)
      {
        v41 = container_log_handle_for_category();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v40;
          _os_log_error_impl(&dword_1DF2C3000, v41, OS_LOG_TYPE_ERROR, "Failed to destroy container(s) when processing codesign entitlements; error = %@", buf, 0xCu);
        }

        v36 = v55;
      }
    }

    else
    {
      oslog = container_log_handle_for_category();
      if (os_log_type_enabled(&oslog->super, OS_LOG_TYPE_ERROR))
      {
        v51 = [v32 identifier];
        *buf = 138412546;
        *&buf[4] = v51;
        *&buf[12] = 2112;
        *&buf[14] = v53;
        _os_log_error_impl(&dword_1DF2C3000, &oslog->super, OS_LOG_TYPE_ERROR, "Error processing entitlements for %@ : %@", buf, 0x16u);
      }

      v36 = 0;
    }

    goto LABEL_35;
  }

LABEL_44:

  v49 = *MEMORY[0x1E69E9840];
}

id containermanager_copy_global_configuration()
{
  v0 = _gGlobalConfiguration;
  if (!_gGlobalConfiguration)
  {
    _os_crash();
    __break(1u);
  }

  v1 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return v0;
}

void __conmanupcall_block_invoke_26(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (a2 > 6)
  {
    if (a2 == 7)
    {
      v9 = container_log_handle_for_category();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v15 = 67109120;
        LODWORD(v16) = a4;
        v10 = "Mach channel disconnected, this is probably very bad; error = %d";
        goto LABEL_22;
      }
    }

    else
    {
      if (a2 != 8)
      {
LABEL_12:
        v11 = container_log_handle_for_category();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v15 = 134218240;
          v16 = a2;
          v17 = 1024;
          v18 = a4;
          _os_log_error_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_ERROR, "Unhandled message type; reason = %lu, error = %d", &v15, 0x12u);
        }

        goto LABEL_20;
      }

      v9 = container_log_handle_for_category();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v15 = 67109120;
        LODWORD(v16) = a4;
        v10 = "Mach channel canceled, this is probably very bad; error = %d";
LABEL_22:
        _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, v10, &v15, 8u);
      }
    }

    goto LABEL_20;
  }

  if (a2 != 1)
  {
    if (a2 == 2)
    {
      if ((dispatch_mach_mig_demux() & 1) == 0)
      {
        msg = dispatch_mach_msg_get_msg();
        v8 = container_log_handle_for_category();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
        {
          msgh_id = msg->msgh_id;
          v15 = 67109120;
          LODWORD(v16) = msgh_id;
          _os_log_fault_impl(&dword_1DF2C3000, v8, OS_LOG_TYPE_FAULT, "Got mach message we didn't understand; msgh_id = %d", &v15, 8u);
        }

        mach_msg_destroy(msg);
      }

      goto LABEL_20;
    }

    goto LABEL_12;
  }

  v12 = container_log_handle_for_category();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v15) = 0;
    _os_log_debug_impl(&dword_1DF2C3000, v12, OS_LOG_TYPE_DEBUG, "Mach channel connected", &v15, 2u);
  }

LABEL_20:
  v13 = *MEMORY[0x1E69E9840];
}

void _Xget_process_containers(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if ((*a1 & 0x80000000) == 0 || *(a1 + 24) != 1 || *(a1 + 4) != 56)
  {
    v4 = -304;
    goto LABEL_10;
  }

  if (*(a1 + 39) != 1 || *(a1 + 40) != *(a1 + 52))
  {
    v4 = -300;
    goto LABEL_10;
  }

  v12 = 0;
  if (*(a1 + 56) || *(a1 + 60) <= 0x1Fu)
  {
    v4 = -309;
LABEL_10:
    *(a2 + 32) = v4;
    goto LABEL_11;
  }

  *(a2 + 52) = 0;
  v6 = (a2 + 52);
  v7 = (a2 + 28);
  *(a2 + 36) = *(a2 + 36) | 0x1000100;
  v8 = *(a1 + 28);
  v9 = *(a1 + 40);
  v10 = *(a1 + 92);
  v13[0] = *(a1 + 76);
  v13[1] = v10;
  process_containers = server_get_process_containers(v8, v9, v7, v6, &v12, v13);
  mig_deallocate(*(a1 + 28), *(a1 + 40));
  *(a1 + 28) = 0;
  *(a1 + 40) = 0;
  if (!process_containers)
  {
    *(a2 + 36) = v12;
    *(a2 + 40) = *(a2 + 52);
    *(a2 + 44) = *MEMORY[0x1E69E99E0];
    *a2 |= 0x80000000;
    *(a2 + 4) = 56;
    *(a2 + 24) = 1;
    goto LABEL_12;
  }

  *(a2 + 32) = process_containers;
LABEL_11:
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
LABEL_12:
  v5 = *MEMORY[0x1E69E9840];
}

uint64_t server_get_process_containers(void *a1, unsigned int a2, vm_offset_t *a3, mach_msg_type_number_t *a4, _DWORD *a5, _OWORD *a6)
{
  v111 = *MEMORY[0x1E69E9840];
  if (_os_feature_enabled_impl())
  {
    v12 = a6[1];
    *atoken.val = *a6;
    *&atoken.val[4] = v12;
    pidp = 0;
    audit_token_to_au32(&atoken, 0, 0, 0, 0, 0, &pidp, 0, 0);
    if (pidp)
    {
      v13 = 5;
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      v23 = sb_packbuff_new(0x1000uLL);
      if (v23)
      {
        v24 = v23;
        sb_packbuff_pack_uint32(v23, 0, 1);
        bytes = sb_packbuff_get_bytes(v24);
        size = sb_packbuff_get_size(v24);
        v13 = vm_read(*MEMORY[0x1E69E9A60], bytes, size, a3, a4);
        if (v13)
        {
          v27 = container_log_handle_for_category();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            atoken.val[0] = 134218496;
            *&atoken.val[1] = bytes;
            LOWORD(atoken.val[3]) = 2048;
            *(&atoken.val[3] + 2) = size;
            HIWORD(atoken.val[5]) = 1024;
            atoken.val[6] = v13;
            _os_log_error_impl(&dword_1DF2C3000, v27, OS_LOG_TYPE_ERROR, "vm_read(%p, %lu) fails: %d", &atoken, 0x1Cu);
          }

          *a5 = 0;
          *a4 = 0;
        }

        else
        {
          *a5 = 1;
          v57 = container_log_handle_for_category();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
          {
            v75 = *a4;
            atoken.val[0] = 134218496;
            *&atoken.val[1] = bytes;
            LOWORD(atoken.val[3]) = 2048;
            *(&atoken.val[3] + 2) = a3;
            HIWORD(atoken.val[5]) = 1024;
            atoken.val[6] = v75;
            _os_log_debug_impl(&dword_1DF2C3000, v57, OS_LOG_TYPE_DEBUG, "packbuff bytes: %p, reply bytes: %p, reply size: %u", &atoken, 0x1Cu);
          }
        }

        sb_packbuff_free(v24);
      }

      else
      {
        v13 = 9;
      }

      objc_autoreleasePoolPop(v22);
    }

    goto LABEL_130;
  }

  v14 = container_log_handle_for_category();
  v15 = os_signpost_id_make_with_pointer(v14, a1);

  v16 = container_log_handle_for_category();
  v17 = v16;
  v103 = v15 - 1;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    LOWORD(atoken.val[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_1DF2C3000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "KernelUpcall", "", &atoken, 2u);
  }

  v18 = container_log_handle_for_category();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    atoken.val[0] = 134217984;
    *&atoken.val[1] = v15;
    _os_log_debug_impl(&dword_1DF2C3000, v18, OS_LOG_TYPE_DEBUG, "<%llx> upcall start ~~~~~~~~~~~~~~~~", &atoken, 0xCu);
  }

  v19 = a6[1];
  *atoken.val = *a6;
  *&atoken.val[4] = v19;
  pidp = 0;
  audit_token_to_au32(&atoken, 0, 0, 0, 0, 0, &pidp, 0, 0);
  if (pidp)
  {
    v20 = 0;
    v13 = 5;
    v21 = v15 - 1;
    goto LABEL_126;
  }

  v100 = objc_autoreleasePoolPush();
  v28 = objc_opt_class();
  v105 = 0;
  v104 = 0;
  v29 = container_log_handle_for_category();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    atoken.val[0] = 67109376;
    atoken.val[1] = a2;
    LOWORD(atoken.val[2]) = 2048;
    *(&atoken.val[2] + 2) = a1;
    _os_log_debug_impl(&dword_1DF2C3000, v29, OS_LOG_TYPE_DEBUG, "request size: %u (%p)", &atoken, 0x12u);
  }

  v30 = sb_packbuff_init_with_buffer(a1, a2, 1, 0);
  v31 = container_log_handle_for_category();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    v67 = sb_packbuff_get_bytes(v30);
    atoken.val[0] = 134217984;
    *&atoken.val[1] = v67;
    _os_log_debug_impl(&dword_1DF2C3000, v31, OS_LOG_TYPE_DEBUG, "request packbuff byte address:%p", &atoken, 0xCu);
  }

  v101 = v15;
  if (!v30)
  {
    v73 = container_log_handle_for_category();
    if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      LOWORD(atoken.val[0]) = 0;
      _os_log_error_impl(&dword_1DF2C3000, v73, OS_LOG_TYPE_ERROR, "sb_packbuff_init() of request data fails", &atoken, 2u);
    }

    v38 = 0;
    v68 = 0;
    v35 = 0;
    v36 = 0;
    v20 = 0;
    v13 = 9;
    v69 = v100;
    v21 = v103;
    goto LABEL_123;
  }

  v95 = v28;
  v92 = a5;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v102 = 0;
  v35 = 0;
  v36 = 0;
  do
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          if (!sb_packbuff_get_item_value_type(v30, &v105))
          {
            sb_packbuff_free(v30);
            v54 = sb_packbuff_new(0x1000uLL);
            if (v54)
            {
              v55 = v54;
              v38 = [[v95 alloc] initWithCodeSignatureID:v36 containerID:v35 applicationID:v102 proc_user_id:v34 persona_id:v33 containerTypeFromSB:v32];
              v56 = [v38 processRequest];
              if (!v56)
              {
                v96 = v33;
                v20 = [v38 identifier];
                v58 = container_log_handle_for_category();
                if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
                {
                  v94 = [v38 replyStatus];
                  v99 = [v38 dataContainerURL];
                  v91 = [v99 path];
                  atoken.val[0] = 134218498;
                  *&atoken.val[1] = v101;
                  LOWORD(atoken.val[3]) = 1024;
                  *(&atoken.val[3] + 2) = v94;
                  HIWORD(atoken.val[4]) = 2112;
                  *&atoken.val[5] = v91;
                  _os_log_debug_impl(&dword_1DF2C3000, v58, OS_LOG_TYPE_DEBUG, "<%llx> upcall result %u; data container [%@]", &atoken, 0x1Cu);
                }

                v59 = objc_opt_new();
                v60 = v59;
                if (v102)
                {
                  [v59 appendFormat:@"appID[%@]", v102];
                }

                v98 = v60;
                if (v35)
                {
                  v61 = [v60 length];
                  v62 = @", ";
                  if (!v61)
                  {
                    v62 = &stru_1F5A5B2B8;
                  }

                  [v60 appendFormat:@"%@conID[%@]", v62, v35];
                }

                if (v36)
                {
                  v63 = [v60 length];
                  v64 = @", ";
                  if (!v63)
                  {
                    v64 = &stru_1F5A5B2B8;
                  }

                  [v60 appendFormat:@"%@codID[%@]", v64, v36];
                }

                v65 = container_log_handle_for_category();
                if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
                {
                  v90 = [v38 replyStatus];
                  v93 = [v38 dataContainerURL];
                  if (v93)
                  {
                    v89 = [v38 dataContainerURL];
                    v66 = [v89 path];
                  }

                  else
                  {
                    v66 = &stru_1F5A5B2B8;
                  }

                  atoken.val[0] = 67110402;
                  atoken.val[1] = v32;
                  LOWORD(atoken.val[2]) = 1024;
                  *(&atoken.val[2] + 2) = v34;
                  HIWORD(atoken.val[3]) = 1024;
                  atoken.val[4] = v96;
                  LOWORD(atoken.val[5]) = 2114;
                  *(&atoken.val[5] + 2) = v98;
                  HIWORD(atoken.val[7]) = 1024;
                  v108 = v90;
                  v109 = 2114;
                  v76 = v66;
                  v110 = v66;
                  _os_log_impl(&dword_1DF2C3000, v65, OS_LOG_TYPE_DEFAULT, "kernel_upcall {%u; %u.%u; %{public}@} -> {%u; [%{public}@]}", &atoken, 0x2Eu);
                  if (v93)
                  {
                  }
                }

                v77 = [v38 replyStatus];
                if (v77 == 1)
                {
                  v78 = [v38 dataContainerURL];

                  if (v78)
                  {
                    v79 = [v38 dataContainerURL];
                    v77 = __server_get_process_containers_block_invoke(v55, v79) == 0;
                  }

                  else
                  {
                    v77 = 1;
                  }
                }

                __server_get_process_containers_block_invoke_8(v55, v77);
                v80 = sb_packbuff_get_bytes(v55);
                v81 = sb_packbuff_get_size(v55);
                v13 = vm_read(*MEMORY[0x1E69E9A60], v80, v81, a3, a4);
                if (v13)
                {
                  v97 = v81;
                  v82 = container_log_handle_for_category();
                  v73 = v98;
                  if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
                  {
                    atoken.val[0] = 134218496;
                    *&atoken.val[1] = v80;
                    LOWORD(atoken.val[3]) = 2048;
                    *(&atoken.val[3] + 2) = v97;
                    HIWORD(atoken.val[5]) = 1024;
                    atoken.val[6] = v13;
                    _os_log_error_impl(&dword_1DF2C3000, v82, OS_LOG_TYPE_ERROR, "vm_read(%p, %lu) fails: %d", &atoken, 0x1Cu);
                  }

                  *v92 = 0;
                  *a4 = 0;
                }

                else
                {
                  *v92 = 1;
                  v83 = container_log_handle_for_category();
                  if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
                  {
                    v88 = *a4;
                    atoken.val[0] = 134218496;
                    *&atoken.val[1] = v80;
                    LOWORD(atoken.val[3]) = 2048;
                    *(&atoken.val[3] + 2) = a3;
                    HIWORD(atoken.val[5]) = 1024;
                    atoken.val[6] = v88;
                    _os_log_debug_impl(&dword_1DF2C3000, v83, OS_LOG_TYPE_DEBUG, "packbuff bytes: %p, reply bytes: %p, reply size: %u", &atoken, 0x1Cu);
                  }

                  v73 = v98;
                }

                sb_packbuff_free(v55);
                goto LABEL_122;
              }

              v13 = v56;
              v20 = 0;
            }

            else
            {
              v38 = 0;
              v20 = 0;
              v13 = 9;
            }

LABEL_96:
            v69 = v100;
            v68 = v102;
            v21 = v103;
            goto LABEL_124;
          }

          if (v105 <= 3u)
          {
            break;
          }

          if (v105 <= 5u)
          {
            if (v105 == 4)
            {
              v42 = v32;
              v43 = v34;
              v44 = v33;
              v45 = unpackToNSString(v30, "CM_KERN_REQUEST_APP_GROUP_ID");
              v46 = container_log_handle_for_category();
              if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
              {
                atoken.val[0] = 134218242;
                *&atoken.val[1] = v101;
                LOWORD(atoken.val[3]) = 2112;
                *(&atoken.val[3] + 2) = v45;
                v47 = v46;
                v48 = "<%llx> app group id: [%@]";
                goto LABEL_66;
              }

              goto LABEL_63;
            }

            if (v105 != 5)
            {
LABEL_97:
              v73 = container_log_handle_for_category();
              if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
              {
                atoken.val[0] = 67109120;
                atoken.val[1] = v105;
                _os_log_error_impl(&dword_1DF2C3000, v73, OS_LOG_TYPE_ERROR, "unexpected value: %u\n", &atoken, 8u);
              }

              v38 = 0;
              v20 = 0;
              v13 = 4;
              goto LABEL_122;
            }

            v32 = sb_packbuff_unpack_uint32(v30, &v104);
            v41 = container_log_handle_for_category();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
            {
              atoken.val[0] = 134218240;
              *&atoken.val[1] = v101;
              LOWORD(atoken.val[3]) = 1024;
              *(&atoken.val[3] + 2) = v32;
              _os_log_debug_impl(&dword_1DF2C3000, v41, OS_LOG_TYPE_DEBUG, "<%llx> container type: [%u]", &atoken, 0x12u);
            }

            if (v104)
            {
              v73 = container_log_handle_for_category();
              if (!os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_105;
              }

              atoken.val[0] = 67109120;
              atoken.val[1] = v104;
              v71 = "failed: to unpack uint32 for CM_KERN_REQUEST_CONTAINER_TYPE. error: %d\n";
LABEL_132:
              _os_log_error_impl(&dword_1DF2C3000, v73, OS_LOG_TYPE_ERROR, v71, &atoken, 8u);
              goto LABEL_105;
            }
          }

          else
          {
            switch(v105)
            {
              case 6u:
                v42 = v32;
                v43 = v34;
                v44 = v33;
                v45 = unpackToNSString(v30, "CM_KERN_REQUEST_CONTAINER_ID");
                v46 = container_log_handle_for_category();
                if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
                {
                  atoken.val[0] = 134218242;
                  *&atoken.val[1] = v101;
                  LOWORD(atoken.val[3]) = 2112;
                  *(&atoken.val[3] + 2) = v45;
                  v47 = v46;
                  v48 = "<%llx> system container id: [%@]";
                  goto LABEL_66;
                }

LABEL_63:

                v33 = v44;
                v34 = v43;
                v32 = v42;
                if (!v45)
                {
                  v20 = 0;
                  v13 = 5;
                  v69 = v100;
                  v68 = v102;
                  v21 = v103;
                  goto LABEL_125;
                }

                break;
              case 7u:
                v42 = v32;
                v43 = v34;
                v44 = v33;
                v45 = unpackToNSString(v30, "CM_KERN_REQUEST_SYSTEM_GROUP_CONTAINER_ID");
                v46 = container_log_handle_for_category();
                if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
                {
                  atoken.val[0] = 134218242;
                  *&atoken.val[1] = v101;
                  LOWORD(atoken.val[3]) = 2112;
                  *(&atoken.val[3] + 2) = v45;
                  v47 = v46;
                  v48 = "<%llx> system group id: [%@]";
LABEL_66:
                  _os_log_debug_impl(&dword_1DF2C3000, v47, OS_LOG_TYPE_DEBUG, v48, &atoken, 0x16u);
                  goto LABEL_63;
                }

                goto LABEL_63;
              case 8u:
                v33 = sb_packbuff_unpack_uint32(v30, &v104);
                v37 = container_log_handle_for_category();
                if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
                {
                  atoken.val[0] = 134218240;
                  *&atoken.val[1] = v101;
                  LOWORD(atoken.val[3]) = 1024;
                  *(&atoken.val[3] + 2) = v33;
                  _os_log_debug_impl(&dword_1DF2C3000, v37, OS_LOG_TYPE_DEBUG, "<%llx> persona id: [%u]", &atoken, 0x12u);
                }

                if (v104)
                {
                  v73 = container_log_handle_for_category();
                  if (!os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_105;
                  }

                  atoken.val[0] = 67109120;
                  atoken.val[1] = v104;
                  v71 = "failed: to unpack uint32 for CM_KERN_REQUEST_PERSONA_ID. error: %d\n";
                  goto LABEL_132;
                }

                break;
              default:
                goto LABEL_97;
            }
          }
        }

        if (v105 > 1u)
        {
          break;
        }

        if (v105)
        {
          v38 = unpackToNSString(v30, "CM_KERN_REQUEST_CONTAINER_ID");

          v39 = container_log_handle_for_category();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
          {
            atoken.val[0] = 134218242;
            *&atoken.val[1] = v101;
            LOWORD(atoken.val[3]) = 2112;
            *(&atoken.val[3] + 2) = v38;
            _os_log_debug_impl(&dword_1DF2C3000, v39, OS_LOG_TYPE_DEBUG, "<%llx> container id: [%@]", &atoken, 0x16u);
          }

          v35 = v38;
          if (!v38)
          {
            goto LABEL_95;
          }
        }

        else
        {
          v49 = v32;
          v50 = v34;
          v51 = v33;
          v38 = unpackToNSString(v30, "CM_KERN_REQUEST_CODE_SIGNATURE_ID");

          v52 = container_log_handle_for_category();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
          {
            atoken.val[0] = 134218242;
            *&atoken.val[1] = v101;
            LOWORD(atoken.val[3]) = 2112;
            *(&atoken.val[3] + 2) = v38;
            _os_log_debug_impl(&dword_1DF2C3000, v52, OS_LOG_TYPE_DEBUG, "<%llx> code signature: [%@]", &atoken, 0x16u);
          }

          v36 = v38;
          v33 = v51;
          v34 = v50;
          v32 = v49;
          if (!v38)
          {
LABEL_95:
            v20 = 0;
            v13 = 5;
            goto LABEL_96;
          }
        }
      }

      if (v105 != 2)
      {
        break;
      }

      v38 = unpackToNSString(v30, "CM_KERN_REQUEST_APPLICATION_ID");

      v53 = container_log_handle_for_category();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
      {
        atoken.val[0] = 134218242;
        *&atoken.val[1] = v101;
        LOWORD(atoken.val[3]) = 2112;
        *(&atoken.val[3] + 2) = v38;
        _os_log_debug_impl(&dword_1DF2C3000, v53, OS_LOG_TYPE_DEBUG, "<%llx> application id: [%@]", &atoken, 0x16u);
      }

      v102 = v38;
      if (!v38)
      {
        v68 = 0;
        v20 = 0;
        v13 = 5;
        v69 = v100;
        v21 = v103;
        goto LABEL_124;
      }
    }

    if (v105 != 3)
    {
      goto LABEL_97;
    }

    v34 = sb_packbuff_unpack_uint32(v30, &v104);
    v40 = container_log_handle_for_category();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      atoken.val[0] = 134218240;
      *&atoken.val[1] = v101;
      LOWORD(atoken.val[3]) = 1024;
      *(&atoken.val[3] + 2) = v34;
      _os_log_debug_impl(&dword_1DF2C3000, v40, OS_LOG_TYPE_DEBUG, "<%llx> uid: [%u]", &atoken, 0x12u);
    }
  }

  while (!v104);
  v73 = container_log_handle_for_category();
  if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
  {
    atoken.val[0] = 67109120;
    atoken.val[1] = v104;
    v71 = "failed: to unpack uint32 for CM_KERN_REQUEST_UID. error: %d\n";
    goto LABEL_132;
  }

LABEL_105:
  v38 = 0;
  v20 = 0;
  v13 = 5;
LABEL_122:
  v69 = v100;
  v68 = v102;
  v21 = v103;
LABEL_123:

LABEL_124:
LABEL_125:

  objc_autoreleasePoolPop(v69);
  v15 = v101;
LABEL_126:
  v84 = container_log_handle_for_category();
  v85 = v84;
  if (v21 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v84))
  {
    atoken.val[0] = 138477827;
    *&atoken.val[1] = v20;
    _os_signpost_emit_with_name_impl(&dword_1DF2C3000, v85, OS_SIGNPOST_INTERVAL_END, v15, "KernelUpcall", " identifier=%{private, signpost.description:attribute}@ ", &atoken, 0xCu);
  }

LABEL_130:
  v86 = *MEMORY[0x1E69E9840];
  return v13;
}

void *sb_packbuff_init_with_buffer(void *a1, uint64_t a2, int a3, int a4)
{
  result = malloc_type_calloc(1uLL, 0x38uLL, 0x1010040EDCA6020uLL);
  if (result)
  {
    *result = a4;
    result[1] = 0;
    result[2] = a2;
    v9 = a2;
    result[5] = a1;
    result[6] = a1;
    if (!a3)
    {
      *a1 = 0;
      a2 = result[2];
      v9 = 8;
    }

    result[3] = a2 - v9;
    result[4] = v9;
  }

  return result;
}

id unpackToNSString(void *a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v8 = 0;
  v3 = sb_packbuff_unpack_string(a1, &v9, &v8);
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v3];
  }

  else
  {
    v5 = container_log_handle_for_category();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = a2;
      v12 = 1024;
      v13 = v8;
      _os_log_error_impl(&dword_1DF2C3000, v5, OS_LOG_TYPE_ERROR, "failed: to unpack string for %s. error: %d\n", buf, 0x12u);
    }

    v4 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];

  return v4;
}

unsigned __int16 *sb_packbuff_unpack_string(void *a1, void *a2, int *a3)
{
  v9 = 0;
  v8 = 0;
  v5 = sb_packbuff_unpack_item(a1, 2, 0, &v8, &v9);
  if (!v5)
  {
    if (v9 && (v6 = (v9 - 1), !*(v8 + v6)))
    {
      v5 = 0;
      if (a2)
      {
        *a2 = v6;
      }
    }

    else
    {
      v5 = 22;
    }
  }

  if (a3)
  {
    *a3 = v5;
  }

  return v8;
}

uint64_t sb_packbuff_get_item_value_type(void *a1, _WORD *a2)
{
  v3 = a1[5];
  v2 = a1[6];
  if (v2 < v3 || (v2 + 4) > v3 + a1[4] || !*v2)
  {
    return 0;
  }

  *a2 = v2[1];
  return 1;
}

uint64_t sb_packbuff_unpack_item(void *a1, int a2, _DWORD *a3, unsigned __int16 **a4, _DWORD *a5)
{
  v5 = a1[5];
  v6 = a1[6];
  if (v6 < v5)
  {
    return 34;
  }

  v7 = (v6 + 8);
  if (v6 + 8 > v5 + a1[4])
  {
    return 34;
  }

  if (*v6 != a2)
  {
    return 22;
  }

  if ((a2 & 0xFFFE) != 2)
  {
    if (a3)
    {
      *a3 = *(v6 + 4);
      v11 = 8;
      goto LABEL_15;
    }

    return 22;
  }

  v8 = 22;
  if (!a4 || !a5)
  {
    return v8;
  }

  v10 = *(v6 + 4);
  LODWORD(v6) = 8 - (*(v6 + 4) & 7);
  *a4 = v7;
  *a5 = v10;
  if ((v10 & 7) != 0)
  {
    v6 = v6;
  }

  else
  {
    v6 = 0;
  }

  v11 = v10 + v6 + 8;
  v5 = a1[5];
  v6 = a1[6];
LABEL_15:
  v12 = (v6 + v11);
  if (v12 < v5 || v12 >= v5 + a1[2])
  {
    return 34;
  }

  if ((v11 & 7) != 0)
  {
    sb_packbuff_unpack_item_cold_1();
  }

  v8 = 0;
  a1[6] = v12;
  return v8;
}

uint64_t sb_packbuff_unpack_uint32(void *a1, int *a2)
{
  v2 = a1[5];
  v3 = a1[6];
  if (v3 < v2 || (v5 = v3 + 8, v3 + 8 > v2 + a1[4]))
  {
    result = 0;
LABEL_4:
    v7 = 34;
    goto LABEL_5;
  }

  if (*v3 == 1)
  {
    result = *(v3 + 4);
    if (v5 >= v2 + a1[2])
    {
      goto LABEL_4;
    }

    v7 = 0;
    a1[6] = v5;
  }

  else
  {
    result = 0;
    v7 = 22;
  }

LABEL_5:
  if (a2)
  {
    *a2 = v7;
  }

  return result;
}

void sb_packbuff_free(uint64_t *a1)
{
  if (a1)
  {
    if (*a1 == 2)
    {
      if (MEMORY[0x1E12D45E0](*MEMORY[0x1E69E9A60], a1[5], a1[2]) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        sb_packbuff_free_cold_1(a1 + 5, a1 + 2);
      }
    }

    else if (*a1 == 1)
    {
      free(a1[5]);
    }

    free(a1);
  }
}

void *sb_packbuff_new(unint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0x38uLL, 0x1010040EDCA6020uLL);
  v3 = v2;
  if (v2)
  {
    v4 = 256;
    if (a1 >= 8)
    {
      v4 = a1;
    }

    v2[1] = v4;
    *v2 = 1;
    if (sb_packbuff_realloc(v2, 0))
    {
      free(v3);
      return 0;
    }

    else
    {
      *(v3 + 3) -= 8;
      *(v3 + 4) = 8;
      **(v3 + 6) = 0;
    }
  }

  return v3;
}

uint64_t sb_packbuff_realloc(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 45;
  }

  if (*a1 != 1)
  {
    return 45;
  }

  v5 = 8 - (a2 & 7);
  v6 = (a2 & 7) == 0;
  v7 = *(a1 + 16) + v2;
  *(a1 + 16) = v7;
  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  v9 = v8 + a2;
  if (v9 > v7 - *(a1 + 32))
  {
    v7 += v9;
    *(a1 + 16) = v7;
  }

  v10 = reallocf(*(a1 + 40), v7);
  *(a1 + 40) = v10;
  if (!v10)
  {
    return 12;
  }

  v11 = v10;
  result = 0;
  v13 = *(a1 + 32);
  *(a1 + 24) = *(a1 + 16) - v13;
  if (v13)
  {
    v11 = v11 + v13 - 8;
  }

  *(a1 + 48) = v11;
  return result;
}

id MCMContainerSchemaDefinitionForClass(unint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (MCMContainerSchemaDefinitionForClass_onceToken != -1)
  {
    dispatch_once(&MCMContainerSchemaDefinitionForClass_onceToken, &__block_literal_global_8360);
  }

  if (a1 <= 0xD)
  {
    if (((1 << a1) & 0xE54) != 0)
    {
      v2 = MCMContainerSchemaDefinitionForClass_userDataSchemaDefinition;
LABEL_10:
      v3 = v2;
      goto LABEL_11;
    }

    if (((1 << a1) & 0x2080) != 0)
    {
      v2 = MCMContainerSchemaDefinitionForClass_groupSchemaDefinition;
      goto LABEL_10;
    }

    if (a1 == 12)
    {
      v2 = MCMContainerSchemaDefinitionForClass_systemSchemaDefinition;
      goto LABEL_10;
    }
  }

  v3 = MEMORY[0x1E695E0F0];
  v6 = MEMORY[0x1E695E0F0];
LABEL_11:
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

void __server_get_process_containers_block_invoke_8(void *a1, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = sb_packbuff_pack_uint32(a1, 0, a2);
  if (v3)
  {
    v4 = v3;
    v5 = container_log_handle_for_category();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7[0] = 67109632;
      v7[1] = v4;
      v8 = 1024;
      v9 = 0;
      v10 = 1024;
      v11 = a2;
      _os_log_error_impl(&dword_1DF2C3000, v5, OS_LOG_TYPE_ERROR, "sb_packbuff_pack_uint32() fails: %d; type: %u, value: %u\n", v7, 0x14u);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t sb_packbuff_pack_item(void *a1, unsigned int a2, __int16 a3, int a4, void *__src, size_t __n)
{
  v6 = __n;
  v12 = 8;
  if (__n)
  {
    if ((__n & 7) != 0)
    {
      v13 = 8 - (__n & 7);
    }

    else
    {
      v13 = 0;
    }

    result = 34;
    v15 = __n + v13;
    if (__CFADD__(__n, v13) || v15 > 0xFFFFFFF7)
    {
      return result;
    }

    v12 = v15 + 8;
  }

  else
  {
    v15 = 0;
    v13 = 0;
  }

  if (a1[3] >= v12 || (result = sb_packbuff_realloc(a1, v12), !result))
  {
    v16 = a1[6];
    *v16 = a2;
    *(v16 + 2) = a3;
    if (a2 > 1)
    {
      if (!__src)
      {
        sb_packbuff_pack_item_cold_1();
      }

      *(v16 + 4) = v6;
      v17 = (a1[6] + 8);
      memcpy(v17, __src, v6);
      if (v13)
      {
        bzero(&v17[v6], v13);
      }
    }

    else
    {
      if (v15)
      {
        sb_packbuff_pack_item_cold_2();
      }

      *(v16 + 4) = a4;
    }

    result = 0;
    v18 = a1[4] + v12;
    a1[3] -= v12;
    a1[4] = v18;
    v19 = (a1[6] + v12);
    a1[6] = v19;
    *v19 = 0;
  }

  return result;
}

uint64_t sub_1DF2CC93C(uint64_t a1, uint64_t a2, void *a3)
{
  v89 = *MEMORY[0x1E69E9840];
  v6 = sub_1DF3B0D0C();
  v7 = *(v6 - 8);
  v79 = v6;
  v80 = v7;
  v8 = *(v7 + 64);
  (MEMORY[0x1EEE9AC00])();
  v81 = &v71[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1DF3B0CEC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = (MEMORY[0x1EEE9AC00])();
  v15 = &v71[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v82 = &v71[-v16];
  v17 = [v3 containerPath];
  if (a3)
  {
    a3 = sub_1DF3B0DBC();
  }

  *&v87[0] = 0;
  v18 = [v17 urlForPart:a1 partDomain:a3 error:v87];
  swift_unknownObjectRelease();

  v19 = *&v87[0];
  if (!v18)
  {
    goto LABEL_9;
  }

  v20 = v82;
  sub_1DF3B0CCC();
  v21 = v19;

  v22 = [v3 type];
  if (v22 > 2)
  {
    if (v22 == 3)
    {
      v78 = v21;
      if (!*MEMORY[0x1E69E9BB0])
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

LABEL_13:
      v26 = v11;
      v75 = sub_1DF3B0E2C();
      v28 = v27;
LABEL_16:

      v31 = [v3 useProxiedClientForTarget];
      v32 = [v3 clientIdentity];
      if ((v31 & 1) == 0)
      {
        v33 = [v32 proximateClient];
        swift_unknownObjectRelease();
        v32 = v33;
      }

      v34 = v79;
      [v32 auditToken];
      swift_unknownObjectRelease();
      v87[0] = v85;
      v87[1] = v86;
      v88[0] = v85;
      v88[1] = v86;
      pid = container_audit_token_get_pid();
      v36 = sub_1DF2D25C4();
      (*(v80 + 16))(v81, v36, v34);
      (*(v26 + 16))(v15, v20, v10);
      v37 = v3;

      v38 = sub_1DF3B0CFC();
      v39 = sub_1DF3B0EBC();

      v40 = os_log_type_enabled(v38, v39);
      v77 = v26;
      v76 = v10;
      if (v40)
      {
        v41 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        *&v88[0] = v74;
        *v41 = 136316162;
        LODWORD(v84) = pid;
        v73 = v38;
        v42 = sub_1DF3B0FFC();
        v44 = sub_1DF2D1250(v42, v43, v88);

        *(v41 + 4) = v44;
        *(v41 + 12) = 2080;
        v45 = [v37 identifier];
        v46 = sub_1DF3B0DCC();
        v72 = v39;
        v47 = v10;
        v49 = v48;

        v50 = sub_1DF2D1250(v46, v49, v88);

        *(v41 + 14) = v50;
        *(v41 + 22) = 2080;
        v84 = [v37 containerClass];
        type metadata accessor for container_class_t(0);
        v51 = sub_1DF3B0DDC();
        v53 = sub_1DF2D1250(v51, v52, v88);

        *(v41 + 24) = v53;
        *(v41 + 32) = 2080;
        v54 = sub_1DF3B0CDC();
        v56 = v55;
        v57 = *(v26 + 8);
        v57(v15, v47);
        v58 = sub_1DF2D1250(v54, v56, v88);

        *(v41 + 34) = v58;
        *(v41 + 42) = 2080;
        v59 = sub_1DF2D1250(v75, v28, v88);

        *(v41 + 44) = v59;
        v60 = v73;
        _os_log_impl(&dword_1DF2C3000, v73, v72, "Issuing token to pid %s for identifier = [%s](%s, path = [%s] (extension class: %s", v41, 0x34u);
        v61 = v74;
        swift_arrayDestroy();
        MEMORY[0x1E12D4520](v61, -1, -1);
        MEMORY[0x1E12D4520](v41, -1, -1);

        (*(v80 + 8))(v81, v79);
      }

      else
      {

        v57 = *(v26 + 8);
        v57(v15, v10);
        (*(v80 + 8))(v81, v34);
      }

      v62 = v82;
      sub_1DF3B0CDC();
      sub_1DF3B0DFC();

      sub_1DF3B0DFC();

      v63 = container_sandbox_issue_custom_extension();

      if (v63)
      {
        v18 = sub_1DF3B0E2C();
        MEMORY[0x1E12D4520](v63, -1, -1);
      }

      else
      {
        v18 = [objc_allocWithZone(MCMError) initWithErrorType:90 category:1];
        sub_1DF2D75B0();
        v64 = swift_allocError();
        *v65 = v18;
        v83 = v64;
        swift_willThrow();
      }

      v57(v62, v76);

      goto LABEL_29;
    }

    goto LABEL_26;
  }

  if (v22 == 1)
  {
    v29 = [objc_msgSend(v3 containerConfig)];
    swift_unknownObjectRelease();
    if (v29)
    {
      v78 = v21;
      v26 = v11;
      v75 = sub_1DF3B0DCC();
      v28 = v30;

      goto LABEL_16;
    }

    v66 = [objc_allocWithZone(MCMError) initWithErrorType:72 category:3];
LABEL_28:
    v18 = v66;
    sub_1DF2D75B0();
    v67 = swift_allocError();
    *v68 = v18;
    v83 = v67;
    swift_willThrow();
    (*(v11 + 8))(v20, v10);

    goto LABEL_29;
  }

  if (v22 == 2)
  {
    v78 = v21;
    if (!*MEMORY[0x1E69E9BA8])
    {
      __break(1u);
LABEL_9:
      if (v19)
      {
        sub_1DF2D75B0();
        v23 = swift_allocError();
        *v24 = v19;
        v83 = v23;
        swift_willThrow();
        v25 = v19;
LABEL_29:
        v69 = *MEMORY[0x1E69E9840];
        return v18;
      }

      __break(1u);
      goto LABEL_31;
    }

    goto LABEL_13;
  }

  if (v22)
  {
LABEL_26:
    v66 = [objc_allocWithZone(MCMError) initWithErrorType:38 category:3];
    goto LABEL_28;
  }

LABEL_32:
  result = sub_1DF3B0FBC();
  __break(1u);
  return result;
}

uint64_t __server_get_process_containers_block_invoke(void *a1, id a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = [a2 fileSystemRepresentation];
  v6 = strlen(v5);
  v7 = sb_packbuff_pack_string(a1, 1, v5, v6);
  if (v7)
  {
    v8 = container_log_handle_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11[0] = 67109634;
      v11[1] = v7;
      v12 = 1024;
      v13 = 1;
      v14 = 2080;
      v15 = v5;
      _os_log_error_impl(&dword_1DF2C3000, v8, OS_LOG_TYPE_ERROR, "sb_packbuff_pack_string() fails: %d; type: %u, path: %s\n", v11, 0x18u);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t sb_packbuff_pack_string(void *a1, __int16 a2, void *__src, unint64_t a4)
{
  if (a4 > 0xFFFFFFFE || *(__src + a4))
  {
    return 22;
  }

  else
  {
    return sb_packbuff_pack_item(a1, 2u, a2, 0, __src, (a4 + 1));
  }
}

uint64_t MCMArrayContainsOnlyClass(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v12;
    while (2)
    {
      v5 = 0;
      do
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v11 + 1) + 8 * v5);
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v7 = 0;
          goto LABEL_11;
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v11 objects:v10 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

id sub_1DF2CDEF0(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_1DF3B0CEC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4[OBJC_IVAR___MCMSandboxExtension_useLegacyExtensionPolicy] = 0;
  v4[OBJC_IVAR___MCMSandboxExtension_useProxiedClientForTarget] = 0;
  *&v4[OBJC_IVAR___MCMSandboxExtension_type] = 1;
  *&v4[OBJC_IVAR___MCMSandboxExtension_reason] = 0;
  *&v4[OBJC_IVAR___MCMSandboxExtension_clientIdentity] = a1;
  *&v4[OBJC_IVAR___MCMSandboxExtension_containerPath] = a2;
  *&v4[OBJC_IVAR___MCMSandboxExtension_containerIdentity] = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v13 = [a2 containerRootURL];
  sub_1DF3B0CCC();

  sub_1DF3B0CDC();
  (*(v9 + 8))(v12, v8);
  v14 = objc_allocWithZone(MCMFileHandle);
  v15 = sub_1DF3B0DBC();

  LOBYTE(v48) = 0;
  v16 = [v14 initWithPath:v15 relativeToFileHandle:0 direction:10 symlinks:1 createMode:0 createDPClass:0 openLazily:v48];

  *&v4[OBJC_IVAR___MCMSandboxExtension_fhSandbox] = v16;
  v17 = [a1 codeSignInfo];
  v18 = [a3 containerConfig];
  *&v4[OBJC_IVAR___MCMSandboxExtension_containerConfig] = v18;
  v19 = [v18 containerClass];
  *&v4[OBJC_IVAR___MCMSandboxExtension_containerClass] = v19;
  v20 = [a3 identifier];
  v21 = sub_1DF3B0DCC();
  v23 = v22;

  v24 = &v4[OBJC_IVAR___MCMSandboxExtension_identifier];
  *v24 = v21;
  v24[1] = v23;
  v25 = [v17 identifier];
  v26 = sub_1DF3B0DCC();
  v28 = v27;

  v29 = &v4[OBJC_IVAR___MCMSandboxExtension_clientIdentifier];
  *v29 = v26;
  v29[1] = v28;
  v30 = [v17 teamIdentifier];
  if (v30)
  {
    v31 = v30;
    v32 = sub_1DF3B0DCC();
    v34 = v33;
  }

  else
  {
    v32 = 0;
    v34 = 0;
  }

  v35 = &v4[OBJC_IVAR___MCMSandboxExtension_clientTeamIdentifier];
  *v35 = v32;
  v35[1] = v34;
  [a1 auditToken];
  v49 = v53;
  v50 = v52;
  v36 = objc_allocWithZone(MCMAMFI);
  v52 = v50;
  v53 = v49;
  v37 = [v36 initWithAuditToken_];
  *&v4[OBJC_IVAR___MCMSandboxExtension_amfi] = v37;
  v38 = [v17 entitlements];
  *&v4[OBJC_IVAR___MCMSandboxExtension_entitlements] = v38;
  v39 = [objc_msgSend(a1 proximateClient)];
  swift_unknownObjectRelease();
  v40 = [v39 identifier];
  swift_unknownObjectRelease();
  v41 = sub_1DF3B0DCC();
  v43 = v42;

  v44 = &v4[OBJC_IVAR___MCMSandboxExtension_proximateClientIdentifier];
  *v44 = v41;
  v44[1] = v43;
  if (*v29 == v41 && v29[1] == v43)
  {
    swift_unknownObjectRelease();
    v45 = 0;
  }

  else
  {
    v46 = sub_1DF3B100C();
    swift_unknownObjectRelease();
    v45 = v46 ^ 1;
  }

  v4[OBJC_IVAR___MCMSandboxExtension_isProxiedClient] = v45 & 1;
  v51.receiver = v4;
  v51.super_class = MCMSandboxExtension;
  return objc_msgSendSuper2(&v51, sel_init);
}

uint64_t sub_1DF2CE5BC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = sub_1DF3B0D0C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  if (![v4 type])
  {
    if (!a4)
    {
      return 0;
    }

LABEL_8:
    v16 = 0;
    result = 0;
    *a4 = 0;
    return result;
  }

  v11 = [v4 entitlements];
  if (!v11)
  {
    v18 = [objc_allocWithZone(MCMError) initWithErrorType_];
    if (a4)
    {
      v19 = v18;
      v20 = v18;
      result = 0;
      *a4 = v19;
      return result;
    }

    return 0;
  }

  v12 = v11;
  if ([v4 useLegacyExtensionPolicy])
  {
    v13 = [v4 containerClass];
    v14 = [v4 identifier];
    LOBYTE(v13) = [v12 isOwnerOfContainerWithClass:v13 identifier:v14];

    if ((v13 & 1) == 0)
    {
      v15 = [objc_msgSend(v4 containerIdentity)];
      swift_unknownObjectRelease();
      if ((v15 & 1) == 0)
      {
        [v4 setReason_];
        swift_unknownObjectRelease();
        if (!a4)
        {
          return 0;
        }

        goto LABEL_8;
      }
    }
  }

  sub_1DF2CEECC(v12, a1, a2, a3);
  v22 = sub_1DF2CC93C(a1, a2, a3);
  swift_unknownObjectRelease();
  if (a4)
  {
    v21 = 0;
    *a4 = 0;
  }

  else
  {
  }

  return v22;
}

id sub_1DF2CEE3C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v4 = *v3;
  v5 = v3[1];

  v6 = sub_1DF3B0DBC();

  return v6;
}

void sub_1DF2CEECC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v50 = a1;
  v51 = a3;
  v9 = sub_1DF3B0D0C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v4 type] != 1 && a2 == 0)
  {
    v48 = v5;
    v49 = v10;
    v15 = [v4 proximateClientIdentifier];
    v16 = sub_1DF3B0DCC();
    v18 = v17;

    v19 = [objc_msgSend(v4 containerConfig)];
    swift_unknownObjectRelease();
    v20 = sub_1DF3B0E6C();

    v47 = v16;
    LOBYTE(v19) = sub_1DF2D5850(v16, v18, v20);

    if ((v19 & 1) == 0)
    {
      v27 = sub_1DF2D25C4();
      v28 = v49;
      (*(v49 + 16))(v13, v27, v9);
      v29 = v4;

      v30 = sub_1DF3B0CFC();
      v31 = sub_1DF3B0EAC();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v53 = v51;
        *v32 = 136315394;
        v52 = [v29 type];
        type metadata accessor for MCMSandboxExtensionType(0);
        sub_1DF2D7558();
        v33 = v31;
        v34 = sub_1DF3B0FFC();
        v36 = sub_1DF2D1250(v34, v35, &v53);

        *(v32 + 4) = v36;
        *(v32 + 12) = 2080;
        v37 = sub_1DF2D1250(v47, v18, &v53);

        *(v32 + 14) = v37;
        _os_log_impl(&dword_1DF2C3000, v30, v33, "Refusing to issue requested sandbox extension type %s to [%s]", v32, 0x16u);
        v38 = v51;
        swift_arrayDestroy();
        MEMORY[0x1E12D4520](v38, -1, -1);
        MEMORY[0x1E12D4520](v32, -1, -1);
      }

      else
      {
      }

      (*(v28 + 8))(v13, v9);
      goto LABEL_30;
    }

    v6 = v48;
  }

  v21 = [v4 type];
  if ((v21 - 1) > 2)
  {
    v26 = 1;
    goto LABEL_12;
  }

  v22 = qword_1DF3BD5F8[(v21 - 1)];
  v23 = [objc_msgSend(v4 clientIdentity)];
  swift_unknownObjectRelease();
  v24 = [v4 containerIdentity];
  if (a4)
  {
    v25 = sub_1DF3B0DBC();
  }

  else
  {
    v25 = 0;
  }

  v39 = [v23 isAllowedToPerformOperationType:0 containerIdentity:v24 part:a2 partDomain:v25 access:v22];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  if (v39 > 2)
  {
    switch(v39)
    {
      case 3:
        v26 = 5;
        break;
      case 4:
        v26 = 12;
        break;
      case 5:
        v26 = 9;
        break;
      default:
        goto LABEL_30;
    }

    goto LABEL_12;
  }

  if (!v39)
  {
    [v4 setReason_];
    goto LABEL_30;
  }

  if (v39 == 1)
  {
    v43 = [objc_msgSend(v4 containerPath)];
    swift_unknownObjectRelease();
    if (v43)
    {
      v44 = [objc_allocWithZone(MCMError) initWithErrorType_];
      sub_1DF2D6D5C();
      swift_allocError();
      *v45 = v44;
      goto LABEL_31;
    }

    v46 = [objc_msgSend(v4 containerConfig)];
    swift_unknownObjectRelease();
    if ((v46 & 1) == 0 || ([v4 isProxiedClient] & 1) == 0 && (a2 || objc_msgSend(v4, sel_type) != 1))
    {
LABEL_30:
      sub_1DF2D6D5C();
      swift_allocError();
      *v42 = 0;
LABEL_31:
      swift_willThrow();
      return;
    }

    v26 = 2;
LABEL_12:
    [v4 setReason_];
    return;
  }

  if (v39 != 2)
  {
    goto LABEL_30;
  }

  [v4 setReason_];
  v40 = [objc_msgSend(v4 containerConfig)];
  swift_unknownObjectRelease();
  if (!v40 || (sub_1DF2D5948(v50), !v6))
  {
    v41 = [objc_msgSend(v4 containerConfig)];
    swift_unknownObjectRelease();
    if (v41)
    {
      sub_1DF2D6DB0();
    }
  }
}

uint64_t sub_1DF2CF904(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ([v4 isSupported_] && (v8 = objc_msgSend(a1, sel_normalizedContainerClass), v9 = *&v4[OBJC_IVAR___MCMEntitlementLookup_classes], *(v9 + 16)) && (v10 = sub_1DF2CFAD0(v8), (v11 & 1) != 0))
  {
    v12 = *(v9 + 56) + 16 * v10;
    if (*(v12 + 8))
    {
      v13 = 1;
    }

    else
    {
      v15 = *v12;
      if (sub_1DF3B0DCC() == a2 && v16 == a3 || (v17 = sub_1DF3B100C(), , v18 = , (v17 & 1) != 0))
      {

        v13 = 0;
      }

      else
      {
        v20[0] = a2;
        v20[1] = a3;
        MEMORY[0x1EEE9AC00](v18);
        v19[2] = v20;
        v13 = sub_1DF2CFBA8(sub_1DF2CFC70, v19, v15);
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

unint64_t sub_1DF2CFAD0(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1DF3B109C();
  MEMORY[0x1E12D2A50](a1);
  v4 = sub_1DF3B10BC();

  return sub_1DF2CFB3C(a1, v4);
}

unint64_t sub_1DF2CFB3C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_1DF2CFBA8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1DF2CFC8C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DF3B100C() & 1;
  }
}

uint64_t sub_1DF2D11C4(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_1DF3B0D0C();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1DF2D1250(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1DF2D14C0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1DF2D2724(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

uint64_t sub_1DF2D131C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1DF2D144C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1DF3B0FAC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1DF3B0E3C();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1DF2D144C(v10, 0);
        result = sub_1DF3B0F7C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void *sub_1DF2D144C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE30B60, &qword_1DF3BE0F0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_1DF2D14C0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1DF2D25E8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1DF3B0FAC();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

id __MCMProcessXPCEvent_block_invoke_10(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = container_log_handle_for_category();
  v5 = v4;
  v6 = *(a1 + 48);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = *(a1 + 56);
    v8 = [*(a1 + 32) codeSignInfo];
    v9 = [v8 identifier];
    v10 = v9;
    v11 = @"<unknown>";
    if (v9)
    {
      v11 = v9;
    }

    v27 = 134349315;
    *v28 = v7;
    *&v28[8] = 2113;
    *&v28[10] = v11;
    _os_signpost_emit_with_name_impl(&dword_1DF2C3000, v5, OS_SIGNPOST_INTERVAL_END, v6, "XPCEventProcessing", " command=%{public, signpost.description:attribute}llu  clientIdentifier=%{private, signpost.description:attribute}@ ", &v27, 0x16u);
  }

  v12 = [v3 error];

  v13 = container_log_handle_for_category();
  v14 = v13;
  if (v12)
  {
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v15 = containermanager_copy_global_configuration();
    v16 = [v15 currentUser];
    v17 = [v16 UID];
    v18 = *(a1 + 56);
    v19 = [*(a1 + 32) shortDescription];
    v20 = [v3 error];
    v27 = 67109890;
    *v28 = v17;
    *&v28[4] = 2048;
    *&v28[6] = v18;
    *&v28[14] = 2112;
    *&v28[16] = v19;
    v29 = 2112;
    v30 = v20;
    _os_log_error_impl(&dword_1DF2C3000, v14, OS_LOG_TYPE_ERROR, "[%u] command=%llu, client=%@, error=%@", &v27, 0x26u);
  }

  else
  {
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_10;
    }

    v15 = containermanager_copy_global_configuration();
    v16 = [v15 currentUser];
    v25 = [v16 UID];
    v26 = *(a1 + 56);
    v19 = [*(a1 + 32) shortDescription];
    v27 = 67109634;
    *v28 = v25;
    *&v28[4] = 2048;
    *&v28[6] = v26;
    *&v28[14] = 2112;
    *&v28[16] = v19;
    _os_log_debug_impl(&dword_1DF2C3000, v14, OS_LOG_TYPE_DEBUG, "[%u] command=%llu, client=%@, error=(null)", &v27, 0x1Cu);
  }

LABEL_10:
  v21 = *(*(a1 + 40) + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = 0;

  v23 = *MEMORY[0x1E69E9840];

  return v3;
}

uint64_t sub_1DF2D25E8(uint64_t a1, unint64_t a2)
{
  v4 = sub_1DF2D131C(a1, a2);
  sub_1DF2D2638(&unk_1F5A59CF0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1DF2D2638(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1DF2D6AF0(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1DF2D2724(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void sub_1DF2D27CC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void ___containermanagerd_perform_launch_tasks_block_invoke()
{
  v1 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];

  _containermanagerd_keybagd_notification_callback();
}

void _containermanagerd_keybagd_notification_callback()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MKBGetDeviceLockState();
  v1 = MCMLockStateQueue();
  v2 = container_log_handle_for_category();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v4[0] = 67109120;
    v4[1] = v0;
    _os_log_debug_impl(&dword_1DF2C3000, v2, OS_LOG_TYPE_DEBUG, "LockState=%d", v4, 8u);
  }

  if (v0 == 1)
  {
    if (_containermanagerd_keybagd_notification_callback_previousState != 1)
    {
      dispatch_suspend(v1);
    }

    goto LABEL_9;
  }

  if (!v0)
  {
    if (_containermanagerd_keybagd_notification_callback_previousState == 1)
    {
      dispatch_resume(v1);
    }

LABEL_9:
    _containermanagerd_keybagd_notification_callback_previousState = v0;
  }

  v3 = *MEMORY[0x1E69E9840];
}

id MCMLockStateQueue()
{
  v3 = *MEMORY[0x1E69E9840];
  if (MCMLockStateQueue_onceToken != -1)
  {
    dispatch_once(&MCMLockStateQueue_onceToken, &__block_literal_global_15);
  }

  v0 = MCMLockStateQueue_lockStateQueue;
  v1 = *MEMORY[0x1E69E9840];

  return v0;
}

uint64_t sub_1DF2D54D4()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);
  v5 = *(v0 + v4);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_1DF2D5568()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1DF2D55E8()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[11];

  v5 = v0[14];

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

void *sub_1DF2D5640@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

id sub_1DF2D5778(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  swift_beginAccess();
  v5 = *(a1 + v4);
  v6 = swift_unknownObjectRetain();

  return v6;
}

uint64_t sub_1DF2D57DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  v7 = *(a1 + v6);
  *(a1 + v6) = a3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_1DF2D5850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_1DF3B109C();
  sub_1DF3B0E0C();
  v7 = sub_1DF3B10BC();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1DF3B100C() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

void sub_1DF2D5948(void *a1)
{
  v125 = a1;
  v135[1] = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE30A70, &qword_1DF3BD408);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v126 = &v123 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v127 = &v123 - v6;
  v7 = sub_1DF3B0CEC();
  v128 = *(v7 - 8);
  v129 = v7;
  v8 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v123 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DF3B0D0C();
  v130 = *(v11 - 8);
  v131 = v11;
  v12 = *(v130 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v123 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v123 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v123 - v19;
  v132 = 0;
  v21 = [v1 fhSandbox];
  v134[0] = 0;
  v22 = [v21 openWithError_];
  swift_unknownObjectRelease();
  if (!v22)
  {
    v48 = v134[0];
    v49 = sub_1DF3B0C9C();

    swift_willThrow();
    v134[0] = v49;
    v50 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE30A50, &qword_1DF3BD400);
    sub_1DF2D7818(0, &qword_1ECE30A78, 0x1E696ABC0);
    if (swift_dynamicCast())
    {

      v51 = v133;
      v52 = sub_1DF2D25C4();
      v54 = v130;
      v53 = v131;
      (*(v130 + 16))(v18, v52, v131);
      v55 = v1;
      v56 = v51;
      v57 = sub_1DF3B0CFC();
      v58 = sub_1DF3B0EAC();

      LODWORD(v126) = v58;
      v59 = os_log_type_enabled(v57, v58);
      v60 = &selRef__consolidateSystemDaemonMigrationStatusWithLibraryURL_;
      v61 = &selRef__consolidateSystemDaemonMigrationStatusWithLibraryURL_;
      if (v59)
      {
        v62 = swift_slowAlloc();
        v124 = swift_slowAlloc();
        v125 = swift_slowAlloc();
        v135[0] = v125;
        *v62 = 136315906;
        v63 = [v55 clientIdentifier];
        v64 = sub_1DF3B0DCC();
        v123 = v57;
        v65 = v64;
        v67 = v66;

        v68 = sub_1DF2D1250(v65, v67, v135);

        *(v62 + 4) = v68;
        *(v62 + 12) = 2080;
        v69 = [v55 identifier];
        v70 = sub_1DF3B0DCC();
        v72 = v71;

        v73 = sub_1DF2D1250(v70, v72, v135);

        *(v62 + 14) = v73;
        *(v62 + 22) = 2080;
        v74 = [objc_msgSend(v55 containerPath)];
        swift_unknownObjectRelease();
        sub_1DF3B0CCC();

        v75 = sub_1DF3B0CDC();
        v77 = v76;
        v79 = v128;
        v78 = v129;
        (*(v128 + 8))(v10, v129);
        v80 = sub_1DF2D1250(v75, v77, v135);

        *(v62 + 24) = v80;
        v61 = &selRef__consolidateSystemDaemonMigrationStatusWithLibraryURL_;
        *(v62 + 32) = 2112;
        *(v62 + 34) = v56;
        v81 = v124;
        *v124 = v56;
        v82 = v56;
        v83 = v123;
        _os_log_impl(&dword_1DF2C3000, v123, v126, "[%s] requesting [%s]: Failed to open [%s] during app group non-TCC policy protection check: %@", v62, 0x2Au);
        sub_1DF2D7604(v81);
        MEMORY[0x1E12D4520](v81, -1, -1);
        v84 = v125;
        swift_arrayDestroy();
        MEMORY[0x1E12D4520](v84, -1, -1);
        v85 = v62;
        v60 = &selRef__consolidateSystemDaemonMigrationStatusWithLibraryURL_;
        MEMORY[0x1E12D4520](v85, -1, -1);

        (*(v130 + 8))(v18, v131);
      }

      else
      {

        (*(v54 + 8))(v18, v53);
        v79 = v128;
        v78 = v129;
      }

      [v55 setReason_];
      v114 = v56;
      v115 = [objc_msgSend(v55 v60[410])];
      swift_unknownObjectRelease();
      v116 = v127;
      goto LABEL_25;
    }

LABEL_28:

    goto LABEL_29;
  }

  v23 = v134[0];
  v24 = [v1 fhSandbox];
  v134[0] = 0;
  v25 = [v24 checkAppContainerProtection:&v132 error:v134];
  swift_unknownObjectRelease();
  if (!v25)
  {
    v86 = v134[0];
    v87 = sub_1DF3B0C9C();

    swift_willThrow();
    v134[0] = v87;
    v88 = v87;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE30A50, &qword_1DF3BD400);
    sub_1DF2D7818(0, &qword_1ECE30A78, 0x1E696ABC0);
    if (swift_dynamicCast())
    {

      v89 = v133;
      v90 = sub_1DF2D25C4();
      v92 = v130;
      v91 = v131;
      (*(v130 + 16))(v15, v90, v131);
      v93 = v1;
      v94 = v89;
      v95 = sub_1DF3B0CFC();
      v96 = sub_1DF3B0EAC();

      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        v125 = swift_slowAlloc();
        v127 = swift_slowAlloc();
        v135[0] = v127;
        *v97 = 136315650;
        v98 = [v93 clientIdentifier];
        LODWORD(v124) = v96;
        v99 = v98;
        v100 = sub_1DF3B0DCC();
        v102 = v101;

        v103 = sub_1DF2D1250(v100, v102, v135);

        *(v97 + 4) = v103;
        *(v97 + 12) = 2080;
        v104 = [v93 identifier];
        v105 = sub_1DF3B0DCC();
        v107 = v106;

        v108 = sub_1DF2D1250(v105, v107, v135);

        *(v97 + 14) = v108;
        *(v97 + 22) = 2112;
        *(v97 + 24) = v94;
        v109 = v125;
        *v125 = v94;
        v110 = v94;
        _os_log_impl(&dword_1DF2C3000, v95, v124, "[%s] requesting [%s]: Failed to check app group container non-TCC policy protection; error = %@", v97, 0x20u);
        sub_1DF2D7604(v109);
        MEMORY[0x1E12D4520](v109, -1, -1);
        v111 = v127;
        swift_arrayDestroy();
        MEMORY[0x1E12D4520](v111, -1, -1);
        MEMORY[0x1E12D4520](v97, -1, -1);

        (*(v92 + 8))(v15, v131);
      }

      else
      {

        (*(v92 + 8))(v15, v91);
      }

      v79 = v128;
      v78 = v129;
      [v93 setReason_];
      v114 = v94;
      v115 = [objc_msgSend(v93 containerPath)];
      swift_unknownObjectRelease();
      v116 = v126;
LABEL_25:
      sub_1DF3B0CCC();

      (*(v79 + 56))(v116, 0, 1, v78);
      v117 = sub_1DF3B0C8C();

      v118 = 0;
      if ((*(v79 + 48))(v116, 1, v78) != 1)
      {
        v118 = sub_1DF3B0CAC();
        (*(v79 + 8))(v116, v78);
      }

      v119 = [objc_allocWithZone(MCMError) initWithNSError:v117 url:v118 defaultErrorType:144];

      sub_1DF2D6D5C();
      swift_allocError();
      *v120 = v119;
      swift_willThrow();

      goto LABEL_28;
    }

    goto LABEL_28;
  }

  v26 = v134[0];
  v27 = sub_1DF2D25C4();
  v29 = v130;
  v28 = v131;
  (*(v130 + 16))(v20, v27, v131);
  v30 = v1;
  v31 = sub_1DF3B0CFC();
  v32 = sub_1DF3B0EBC();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v129 = swift_slowAlloc();
    v134[0] = v129;
    *v33 = 136315650;
    v34 = [v30 clientIdentifier];
    v35 = sub_1DF3B0DCC();
    v37 = v36;

    v38 = sub_1DF2D1250(v35, v37, v134);

    *(v33 + 4) = v38;
    *(v33 + 12) = 2080;
    v39 = [v30 identifier];
    v40 = sub_1DF3B0DCC();
    v42 = v41;

    v43 = sub_1DF2D1250(v40, v42, v134);

    *(v33 + 14) = v43;
    *(v33 + 22) = 2080;
    swift_beginAccess();
    if (v132)
    {
      v44 = 0;
    }

    else
    {
      v44 = 544501614;
    }

    if (v132)
    {
      v45 = 0xE000000000000000;
    }

    else
    {
      v45 = 0xE400000000000000;
    }

    v46 = sub_1DF2D1250(v44, v45, v134);

    *(v33 + 24) = v46;
    _os_log_impl(&dword_1DF2C3000, v31, v32, "[%s] requesting [%s]: App group container is %sprotected with a non-TCC policy", v33, 0x20u);
    v47 = v129;
    swift_arrayDestroy();
    MEMORY[0x1E12D4520](v47, -1, -1);
    MEMORY[0x1E12D4520](v33, -1, -1);

    (*(v130 + 8))(v20, v131);
  }

  else
  {

    (*(v29 + 8))(v20, v28);
  }

  swift_beginAccess();
  if (v132 == 1)
  {
    v112 = [v30 identifier];
    v113 = [v125 isOwnerOfProtectedAppGroupContainerWithIdentifier_];

    if (v113)
    {
      [v30 setReason_];
    }

    else
    {
      [v30 setReason_];
      sub_1DF2D6D5C();
      swift_allocError();
      *v122 = 0;
      swift_willThrow();
    }
  }

LABEL_29:
  v121 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1DF2D6660()
{
  v1 = v0;
  v2 = sub_1DF3B0D0C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v0 clientTeamIdentifier];
  if (!result)
  {
    return result;
  }

  v8 = result;
  v9 = sub_1DF3B0DCC();
  v11 = v10;

  v12 = [objc_msgSend(v1 containerConfig)];
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE30A88, &qword_1DF3BD418);
  v13 = sub_1DF3B0DAC();

  if (!*(v13 + 16))
  {

    goto LABEL_8;
  }

  v14 = sub_1DF2D6BE4(v9, v11);
  v16 = v15;

  if ((v16 & 1) == 0)
  {
LABEL_8:

    return 0;
  }

  v17 = *(*(v13 + 56) + 8 * v14);

  v18 = [v1 identifier];
  sub_1DF3B0DCC();

  v19 = sub_1DF3B0DEC();
  v21 = v20;

  LOBYTE(v19) = sub_1DF2D5850(v19, v21, v17);

  if ((v19 & 1) == 0)
  {
    return 0;
  }

  v22 = sub_1DF2D25C4();
  (*(v3 + 16))(v6, v22, v2);
  v23 = v1;
  v24 = sub_1DF3B0CFC();
  v25 = sub_1DF3B0EBC();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v40 = v27;
    *v26 = 136446466;
    v28 = [v23 clientIdentifier];
    v39 = v3;
    v29 = v28;
    v30 = sub_1DF3B0DCC();
    v32 = v31;

    v33 = sub_1DF2D1250(v30, v32, &v40);

    *(v26 + 4) = v33;
    *(v26 + 12) = 2082;
    v34 = [v23 identifier];
    v35 = sub_1DF3B0DCC();
    v37 = v36;

    v38 = sub_1DF2D1250(v35, v37, &v40);

    *(v26 + 14) = v38;
    _os_log_impl(&dword_1DF2C3000, v24, v25, "[%{public}s] requesting [%{public}s]: DEVELOPER ACTION REQUIRED. Requestor's signature is given temporary compatibility affordance to access a TCC-protected group container. Group containers identifiers should be authorized by a provisioning profile.", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D4520](v27, -1, -1);
    MEMORY[0x1E12D4520](v26, -1, -1);

    (*(v39 + 8))(v6, v2);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  return 1;
}

id MCMSandboxExtension.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

char *sub_1DF2D6AF0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE30B60, &qword_1DF3BE0F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_1DF2D6BE4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1DF3B109C();
  sub_1DF3B0E0C();
  v6 = sub_1DF3B10BC();

  return sub_1DF2D6C5C(a1, a2, v6);
}

unint64_t sub_1DF2D6C5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1DF3B100C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1DF2D6D5C()
{
  result = qword_1ECE30A58;
  if (!qword_1ECE30A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE30A58);
  }

  return result;
}

id sub_1DF2D6DB0()
{
  v2 = sub_1DF3B0D0C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v76[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v76[-v9];
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v76[-v11];
  if (sub_1DF2D6660())
  {
    return [v0 setReason_];
  }

  v79 = v1;
  v80 = v2;
  v14 = [v0 identifier];
  v15 = [v14 stringByExtractingTeamIDPrefix];

  if (v15 || (v16 = [objc_msgSend(v0 containerConfig)], swift_unknownObjectRelease(), v16))
  {
    v17 = [objc_msgSend(v0 amfi)];
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    [v0 setReason_];
    v18 = [v0 reason];
    v19 = sub_1DF2D25C4();
    v20 = v3;
    v21 = *(v3 + 16);
    if (v18 <= 1)
    {
      v39 = v80;
      v21(v12, v19, v80);
      v40 = v0;
      v41 = sub_1DF3B0CFC();
      v42 = sub_1DF3B0EBC();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v81 = v79;
        *v43 = 136446466;
        v44 = [v40 clientIdentifier];
        v45 = sub_1DF3B0DCC();
        v47 = v46;

        v48 = sub_1DF2D1250(v45, v47, &v81);

        *(v43 + 4) = v48;
        *(v43 + 12) = 2082;
        v49 = [v40 identifier];
        v50 = sub_1DF3B0DCC();
        v52 = v51;

        v53 = sub_1DF2D1250(v50, v52, &v81);

        *(v43 + 14) = v53;
        _os_log_impl(&dword_1DF2C3000, v41, v42, "[%{public}s] requesting [%{public}s]: REJECTED. Requestor's signature does not allow it to access a TCC-protected group container. Group containers identifiers should be prefixed by requestor's team ID to allow access on this platform.", v43, 0x16u);
        v54 = v79;
        swift_arrayDestroy();
        MEMORY[0x1E12D4520](v54, -1, -1);
        MEMORY[0x1E12D4520](v43, -1, -1);

        (*(v3 + 8))(v12, v80);
      }

      else
      {

        (*(v3 + 8))(v12, v39);
      }

      sub_1DF2D6D5C();
      swift_allocError();
      *v55 = 0;
      return swift_willThrow();
    }

    else
    {
      v22 = v80;
      v21(v10, v19, v80);
      v23 = v0;
      v24 = sub_1DF3B0CFC();
      v25 = sub_1DF3B0EBC();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v77 = v25;
        v27 = v26;
        v78 = swift_slowAlloc();
        v81 = v78;
        *v27 = 136446466;
        v28 = [v23 clientIdentifier];
        v29 = sub_1DF3B0DCC();
        v31 = v30;

        v32 = sub_1DF2D1250(v29, v31, &v81);

        *(v27 + 4) = v32;
        *(v27 + 12) = 2082;
        v33 = [v23 identifier];
        v34 = sub_1DF3B0DCC();
        v36 = v35;

        v37 = sub_1DF2D1250(v34, v36, &v81);

        *(v27 + 14) = v37;
        _os_log_impl(&dword_1DF2C3000, v24, v77, "[%{public}s] requesting [%{public}s]: APPROVED. Requestor's signature allows it to access a TCC-protected group container", v27, 0x16u);
        v38 = v78;
        swift_arrayDestroy();
        MEMORY[0x1E12D4520](v38, -1, -1);
        MEMORY[0x1E12D4520](v27, -1, -1);
      }

      return (*(v20 + 8))(v10, v22);
    }
  }

  else
  {
    v56 = sub_1DF2D25C4();
    v57 = v3;
    v58 = *(v3 + 16);
    v59 = v80;
    v58(v7, v56, v80);
    v60 = v0;
    v61 = sub_1DF3B0CFC();
    v62 = sub_1DF3B0EBC();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v77 = v62;
      v64 = v63;
      v78 = swift_slowAlloc();
      v81 = v78;
      *v64 = 136446466;
      v65 = [v60 clientIdentifier];
      v66 = sub_1DF3B0DCC();
      v68 = v67;

      v69 = sub_1DF2D1250(v66, v68, &v81);

      *(v64 + 4) = v69;
      *(v64 + 12) = 2082;
      v70 = [v60 identifier];
      v71 = sub_1DF3B0DCC();
      v73 = v72;

      v74 = sub_1DF2D1250(v71, v73, &v81);

      *(v64 + 14) = v74;
      _os_log_impl(&dword_1DF2C3000, v61, v77, "[%{public}s] requesting [%{public}s]: The container IS NOT PROTECTED since it isn't prefixed by team ID. Group containers identifiers must be prefixed by requestor's team ID on this platform for container security to be enforced.", v64, 0x16u);
      v75 = v78;
      swift_arrayDestroy();
      MEMORY[0x1E12D4520](v75, -1, -1);
      MEMORY[0x1E12D4520](v64, -1, -1);
    }

    (*(v57 + 8))(v7, v59);
    return [v60 setReason_];
  }
}

unint64_t sub_1DF2D7558()
{
  result = qword_1ECE30A60;
  if (!qword_1ECE30A60)
  {
    type metadata accessor for MCMSandboxExtensionType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE30A60);
  }

  return result;
}

unint64_t sub_1DF2D75B0()
{
  result = qword_1EE172D28;
  if (!qword_1EE172D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE172D28);
  }

  return result;
}

uint64_t sub_1DF2D7604(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE30A80, &qword_1DF3BD410);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DF2D7678(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DF2D76C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1DF2D771C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1DF2D7738(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_1DF2D7768(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DF2D77B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DF2D7818(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_1DF2D7870()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE30BD0, &qword_1DF3BD620);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DF3BD610;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x80000001DF3BECB0;
  v2 = *v0;
  *(inited + 48) = sub_1DF3B0F0C();
  *(inited + 56) = 0xD000000000000010;
  *(inited + 64) = 0x80000001DF3BE890;
  v3 = v0[1];
  v4 = v0[2];
  *(inited + 72) = sub_1DF3B0DBC();
  *(inited + 80) = 0x65644970756F7267;
  *(inited + 88) = 0xEF7265696669746ELL;
  v5 = v0[3];
  v6 = v0[4];
  *(inited + 96) = sub_1DF3B0DBC();
  strcpy((inited + 104), "teamIdentifier");
  *(inited + 119) = -18;
  if (v0[6])
  {
    v7 = v0[5];
    v8 = v0[6];
  }

  v9 = sub_1DF3B0DBC();

  *(inited + 120) = v9;
  *(inited + 128) = 0x6C7469746E457369;
  *(inited + 136) = 0xEA00000000006465;
  v10 = *(v0 + 56);
  *(inited + 144) = sub_1DF3B0E4C();
  v11 = sub_1DF2D7B58(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE30BD8, qword_1DF3BD628);
  swift_arrayDestroy();
  return v11;
}

uint64_t sub_1DF2D7A20()
{
  sub_1DF3B0F9C();

  MEMORY[0x1E12D27C0](v0[1], v0[2]);
  MEMORY[0x1E12D27C0](58, 0xE100000000000000);
  if (v0[6])
  {
    v1 = v0[5];
    v2 = v0[6];
  }

  else
  {
    v2 = 0xE600000000000000;
    v1 = 0x3E656E6F6E3CLL;
  }

  MEMORY[0x1E12D27C0](v1, v2);

  MEMORY[0x1E12D27C0](0x5B203E3D205DLL, 0xE600000000000000);
  MEMORY[0x1E12D27C0](v0[3], v0[4]);
  MEMORY[0x1E12D27C0](2112093, 0xE300000000000000);
  v3 = *v0;
  v4 = sub_1DF2E23A0();
  MEMORY[0x1E12D27C0](v4);

  return 91;
}

unint64_t sub_1DF2D7B58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE30BF0, "Ȫ");
    v3 = sub_1DF3B0FEC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1DF2D6BE4(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DF2D7C5C(uint64_t a1)
{
  result = sub_1DF2D7C84();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DF2D7C84()
{
  result = qword_1ECE30BE0;
  if (!qword_1ECE30BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE30BE0);
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1DF2D7CF4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DF2D7D3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata accessor for MCMAnalyticsAppGroupAuthResult()
{
  if (!qword_1ECE30BE8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1ECE30BE8);
    }
  }
}

uint64_t _s8SettingsVwet(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 8))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t _s8SettingsVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

id sub_1DF2D7EC4(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC22ContainerManagerCommon18MCMResultAuthorize_authResult] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_1DF2D7F38(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithError_];

  return v3;
}

id sub_1DF2D8094()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MCMResultAuthorize();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void type metadata accessor for container_authorize_result_t()
{
  if (!qword_1ECE30C00)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1ECE30C00);
    }
  }
}

uint64_t sub_1DF2D8118(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6E6F2D68746170 && a2 == 0xE900000000000079;
  if (v4 || (sub_1DF3B100C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6E6F2D64616572 && a2 == 0xE900000000000079 || (sub_1DF3B100C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6972772D64616572 && a2 == 0xEA00000000006574)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DF3B100C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }
}

void type metadata accessor for MCMAccessType()
{
  if (!qword_1ECE30FA0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1ECE30FA0);
    }
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MCMAccessType()
{
  v1 = *v0;
  if (*v0)
  {
    if (v1 == 2)
    {
      return 0x6972772D64616572;
    }

    if (v1 != 1)
    {
      v4 = *v0;
      result = sub_1DF3B101C();
      __break(1u);
      return result;
    }

    v3 = 1684104562;
  }

  else
  {
    v3 = 1752457584;
  }

  return v3 | 0x6C6E6F2D00000000;
}

uint64_t sub_1DF2D834C(unint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    return 1;
  }

  if (a2 == 2)
  {
    return a1 < 2;
  }

  return a2 == 1 && !a1;
}

unint64_t sub_1DF2D8388()
{
  result = qword_1ECE30C08;
  if (!qword_1ECE30C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE30C10, &qword_1DF3BD7B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE30C08);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

id sub_1DF2D866C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  swift_beginAccess();
  if (*(a1 + v4))
  {

    v5 = sub_1DF3B0E5C();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_1DF2D8704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3)
  {
    v6 = sub_1DF3B0E6C();
  }

  else
  {
    v6 = 0;
  }

  v7 = *a4;
  swift_beginAccess();
  v8 = *(a1 + v7);
  *(a1 + v7) = v6;
}

id sub_1DF2D883C()
{
  v1 = OBJC_IVAR___MCMCommandAuthorize____lazy_storage___amfi;
  if (*&v0[OBJC_IVAR___MCMCommandAuthorize____lazy_storage___amfi])
  {
    v2 = *&v0[OBJC_IVAR___MCMCommandAuthorize____lazy_storage___amfi];
  }

  else
  {
    [v0 auditToken];
    v7 = v10;
    v8 = v9;
    v3 = objc_allocWithZone(MCMAMFI);
    v9 = v8;
    v10 = v7;
    v4 = [v3 initWithAuditToken_];
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v2 = v4;
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v2;
}

_BYTE *sub_1DF2D8910(uint64_t a1, id a2, uint64_t a3)
{
  v6 = OBJC_IVAR___MCMCommandAuthorize_identifiers;
  *&v3[OBJC_IVAR___MCMCommandAuthorize_identifiers] = 0;
  v7 = OBJC_IVAR___MCMCommandAuthorize_groupIdentifiers;
  *&v3[OBJC_IVAR___MCMCommandAuthorize_groupIdentifiers] = 0;
  v8 = OBJC_IVAR___MCMCommandAuthorize_userIdentity;
  *&v3[OBJC_IVAR___MCMCommandAuthorize_userIdentity] = 0;
  *&v3[OBJC_IVAR___MCMCommandAuthorize____lazy_storage___amfi] = 0;
  v9 = OBJC_IVAR___MCMCommandAuthorize_targetClientEntitlements;
  *&v3[OBJC_IVAR___MCMCommandAuthorize_targetClientEntitlements] = 0;
  v10 = &v3[OBJC_IVAR___MCMCommandAuthorize_targetPlatform];
  *v10 = 0;
  v10[4] = 1;
  v11 = [objc_msgSend(a2 globalConfiguration)];
  swift_unknownObjectRelease();
  result = [v11 configForContainerClass_];
  if (result)
  {
    v13 = result;
    swift_unknownObjectRelease();
    *&v3[OBJC_IVAR___MCMCommandAuthorize_containerConfig] = v13;
    v14 = &v3[OBJC_IVAR___MCMCommandAuthorize_auditToken];
    *v14 = 0u;
    v14[1] = 0u;
    v3[OBJC_IVAR___MCMCommandAuthorize_onBehalfOfSelf] = 1;
    swift_beginAccess();
    v15 = *&v3[v6];
    *&v3[v6] = 0;

    swift_beginAccess();
    v16 = *&v3[v7];
    *&v3[v7] = 0;

    swift_beginAccess();
    v17 = *&v3[v8];
    *&v3[v8] = 0;

    v18 = &v3[OBJC_IVAR___MCMCommandAuthorize_targetClientIdentifier];
    *v18 = 0x3E656E6F6E3CLL;
    v18[1] = 0xE600000000000000;
    v19 = *&v3[v9];
    *&v3[v9] = 0;
    swift_unknownObjectRelease();
    v20 = [objc_allocWithZone(MCMClientCodeSignInfo) init];
    *&v3[OBJC_IVAR___MCMCommandAuthorize_targetClientCodeSignInfo] = v20;
    v78.receiver = v3;
    v78.super_class = MCMCommandAuthorize;
    v21 = objc_msgSendSuper2(&v78, sel_initWithMessage_context_reply_, a1, a2, a3);
    type metadata accessor for MCMXPCMessageAuthorize();
    v22 = swift_dynamicCastClass();
    if (v22)
    {
      v23 = v22;
      swift_unknownObjectRetain();
      v24 = [v23 containerConfig];
      v25 = OBJC_IVAR___MCMCommandAuthorize_containerConfig;
      swift_beginAccess();
      v26 = *&v21[v25];
      *&v21[v25] = v24;
      swift_unknownObjectRelease();
      swift_unknownObjectRetain();
      v27 = [v23 identifiers];
      if (v27)
      {
        v28 = v27;
        v29 = sub_1DF3B0E6C();
      }

      else
      {
        v29 = 0;
      }

      v30 = OBJC_IVAR___MCMCommandAuthorize_identifiers;
      swift_beginAccess();
      v31 = *&v21[v30];
      *&v21[v30] = v29;

      v32 = [v23 groupIdentifiers];
      if (v32)
      {
        v33 = v32;
        v34 = sub_1DF3B0E6C();
      }

      else
      {
        v34 = 0;
      }

      v35 = OBJC_IVAR___MCMCommandAuthorize_groupIdentifiers;
      swift_beginAccess();
      v36 = *&v21[v35];
      *&v21[v35] = v34;

      v38 = MEMORY[0x1E69E7D40];
      v39 = (*((*MEMORY[0x1E69E7D40] & *v23) + 0x68))(v37);
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v46 = &v21[OBJC_IVAR___MCMCommandAuthorize_auditToken];
      swift_beginAccess();
      *v46 = v39;
      v46[1] = v41;
      v46[2] = v43;
      v46[3] = v45;
      v47 = [v23 userIdentity];
      swift_unknownObjectRelease();
      v48 = OBJC_IVAR___MCMCommandAuthorize_userIdentity;
      swift_beginAccess();
      v49 = *&v21[v48];
      *&v21[v48] = v47;

      v50 = (*((*v38 & *v23) + 0x98))();
      v51 = OBJC_IVAR___MCMCommandAuthorize_onBehalfOfSelf;
      swift_beginAccess();
      v21[v51] = v50 & 1;
      if (v50)
      {
        v52 = [v21 context];
        v53 = [v52 clientIdentity];

        v54 = [v53 codeSignInfo];
        v55 = *&v21[OBJC_IVAR___MCMCommandAuthorize_targetClientCodeSignInfo];
        *&v21[OBJC_IVAR___MCMCommandAuthorize_targetClientCodeSignInfo] = v54;
        swift_unknownObjectRelease();
        LODWORD(v52) = [v53 platform];

        v56 = &v21[OBJC_IVAR___MCMCommandAuthorize_targetPlatform];
        *v56 = v52;
        v56[4] = 0;
      }

      else
      {
        v76 = *v46;
        v77 = *(v46 + 1);
        v57 = container_client_create_from_audit_token();
        v58 = [a2 clientFactory];
        if (v58)
        {
          if (v57 && (v59 = [v58 clientIdentityWithClient:v57 proximateClient:0 error:0]) != 0)
          {
            v60 = v59;
            v61 = [v59 codeSignInfo];
            v62 = *&v21[OBJC_IVAR___MCMCommandAuthorize_targetClientCodeSignInfo];
            *&v21[OBJC_IVAR___MCMCommandAuthorize_targetClientCodeSignInfo] = v61;
            swift_unknownObjectRelease();
            v63 = [v60 platform];
            swift_unknownObjectRelease();

            v64 = &v21[OBJC_IVAR___MCMCommandAuthorize_targetPlatform];
            *v64 = v63;
            v64[4] = 0;
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }

        container_free_client();
      }

      v65 = OBJC_IVAR___MCMCommandAuthorize_targetClientCodeSignInfo;
      v66 = [*&v21[OBJC_IVAR___MCMCommandAuthorize_targetClientCodeSignInfo] identifier];
      v67 = sub_1DF3B0DCC();
      v69 = v68;

      v70 = &v21[OBJC_IVAR___MCMCommandAuthorize_targetClientIdentifier];
      v71 = *&v21[OBJC_IVAR___MCMCommandAuthorize_targetClientIdentifier + 8];
      *v70 = v67;
      v70[1] = v69;

      v72 = *&v21[v65];
      v73 = [swift_unknownObjectRetain() entitlements];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease_n();
      v74 = *&v21[OBJC_IVAR___MCMCommandAuthorize_targetClientEntitlements];
      *&v21[OBJC_IVAR___MCMCommandAuthorize_targetClientEntitlements] = v73;
    }

    else
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    return v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1DF2D915C()
{
  v1 = v0;
  if (*&v0[OBJC_IVAR___MCMCommandAuthorize_targetClientEntitlements])
  {
    sub_1DF2D9328();
    if (v2)
    {
      v3 = v2;
      type metadata accessor for MCMResultAuthorize();
      v4 = sub_1DF2D7EC4(v3);
    }

    else
    {
      v9 = [objc_allocWithZone(MCMError) initWithErrorType:40 category:3];
      v10 = [objc_allocWithZone(MCMResultBase) initWithError_];

      if (!v10)
      {
        return;
      }

      v4 = v10;
    }

    v6 = v4;
    v11 = [v1 resultPromise];
    if (!v11)
    {
      v13 = v6;
      goto LABEL_12;
    }

    v12 = v11;
    v6 = v6;
    [v12 completeWithResult_];
    v13 = v6;
    goto LABEL_10;
  }

  v5 = [objc_allocWithZone(MCMError) initWithErrorType:80 category:3];
  type metadata accessor for MCMResultAuthorize();
  v13 = v5;
  v6 = sub_1DF2D7F38(v13);
  v7 = [v1 resultPromise];
  if (v7)
  {
    v8 = v7;
    v6 = v6;
    [v8 completeWithResult_];
LABEL_10:
    swift_unknownObjectRelease();
  }

LABEL_12:
}

void sub_1DF2D9328()
{
  v1 = [objc_msgSend(v0 containerConfig)];
  swift_unknownObjectRelease();
  if (v1)
  {
    v2 = sub_1DF2D9A4C();
  }

  else
  {
    v2 = sub_1DF2D9C88();
  }

  if (v2 != 300)
  {
    sub_1DF2D97F8();
    sub_1DF2D9404();
  }
}

void sub_1DF2D9404()
{
  v1 = v0;
  v2 = [v0 containerConfig];
  v3 = *&v0[OBJC_IVAR___MCMCommandAuthorize_targetClientEntitlements];
  if (v3)
  {
    if ([swift_unknownObjectRetain() isAllowedToPerformOperationType:0 forAllContainersOfContainerConfig:v2 part:0 partDomain:0 access:2])
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
      v4 = [v1 groupIdentifiers];
      if (v4)
      {
        v5 = v4;
        v6 = sub_1DF3B0E6C();
      }

      else
      {
        v6 = 0;
      }

      if ([v2 singleOwner])
      {

        v7 = [v1 identifiers];
        if (v7)
        {
          v8 = v7;
          v6 = sub_1DF3B0E6C();
        }

        else
        {
          v6 = 0;
        }
      }

      v33 = [v1 userIdentity];
      if (v33)
      {
        if (v6)
        {
          v31 = v2;
          v9 = 0;
          v10 = v6 + 56;
          v11 = 1;
          v12 = 1 << *(v6 + 32);
          v13 = -1;
          if (v12 < 64)
          {
            v13 = ~(-1 << v12);
          }

          v14 = v13 & *(v6 + 56);
          v15 = &v1[OBJC_IVAR___MCMCommandAuthorize_targetPlatform];
          v16 = (v12 + 63) >> 6;
          v29 = v1;
          v30 = v6;
          v28 = &v1[OBJC_IVAR___MCMCommandAuthorize_targetPlatform];
          if (v14)
          {
            while (1)
            {
              v32 = v11;
              v17 = v9;
LABEL_22:
              v18 = (*(v6 + 48) + ((v17 << 10) | (16 * __clz(__rbit64(v14)))));
              v20 = *v18;
              v19 = v18[1];
              if (v15[4])
              {

                active_platform = dyld_get_active_platform();
              }

              else
              {
                active_platform = *v15;
              }

              v22 = [v1 context];
              v23 = [v22 userIdentityCache];

              swift_unknownObjectRetain();
              v24 = v33;
              v25 = sub_1DF3B0DBC();

              v26 = [objc_opt_self() containerIdentityWithUserIdentity:v24 identifier:v25 containerConfig:v31 platform:active_platform transient:0 userIdentityCache:v23 error:0];

              swift_unknownObjectRelease();
              if (!v26)
              {
                break;
              }

              v14 &= v14 - 1;
              v27 = [v3 isAllowedToPerformOperationType:0 containerIdentity:v26 part:0 partDomain:0 access:2];

              v11 = v32 & (v27 != 0);
              v9 = v17;
              v1 = v29;
              v6 = v30;
              v15 = v28;
              if (!v14)
              {
                goto LABEL_18;
              }
            }

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
          }

          else
          {
LABEL_18:
            while (1)
            {
              v17 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                break;
              }

              if (v17 >= v16)
              {

                swift_unknownObjectRelease();

                swift_unknownObjectRelease();
                return;
              }

              v14 = *(v10 + 8 * v17);
              ++v9;
              if (v14)
              {
                v32 = v11;
                goto LABEL_22;
              }
            }

            __break(1u);
          }
        }

        else
        {
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }
      }

      else
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

void sub_1DF2D97F8()
{
  v1 = v0;
  v2 = [objc_msgSend(v0 containerConfig)];
  swift_unknownObjectRelease();
  if (v2 != 13)
  {
    return;
  }

  v3 = [objc_opt_self() sharedBypassList];
  v4 = [v1 groupIdentifiers];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1DF3B0E6C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_msgSend(v1 containerConfig)];
  swift_unknownObjectRelease();
  if (!v7)
  {
    if (v6)
    {
      goto LABEL_9;
    }

LABEL_20:

    return;
  }

  v8 = [v1 identifiers];
  if (!v8)
  {
    goto LABEL_20;
  }

  v9 = v8;
  v6 = sub_1DF3B0E6C();

LABEL_9:
  v10 = 0;
  v11 = 1;
  v12 = 1 << *(v6 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v6 + 56);
  for (i = (v12 + 63) >> 6; v14; v11 &= v20)
  {
    v16 = v10;
LABEL_17:
    v17 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v18 = (*(v6 + 48) + ((v16 << 10) | (16 * v17)));
    v19 = *v18;
    v20 = v18[1];

    v21 = sub_1DF3B0DBC();

    LOBYTE(v20) = [v3 systemGroupContainerIdIsWellknown_];
  }

  while (1)
  {
    v16 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v16 >= i)
    {

      return;
    }

    v14 = *(v6 + 56 + 8 * v16);
    ++v10;
    if (v14)
    {
      v10 = v16;
      goto LABEL_17;
    }
  }

  __break(1u);
}

uint64_t sub_1DF2D9A4C()
{
  v1 = [v0 identifiers];
  if (!v1)
  {
    return 100;
  }

  v2 = v1;
  v3 = sub_1DF3B0E6C();

  if (*(v3 + 16) != 1)
  {

    return 100;
  }

  v4 = sub_1DF2D9C0C(v3);
  v6 = v5;

  if (!v6)
  {
    return 100;
  }

  if (v4 == *&v0[OBJC_IVAR___MCMCommandAuthorize_targetClientIdentifier] && v6 == *&v0[OBJC_IVAR___MCMCommandAuthorize_targetClientIdentifier + 8])
  {

    goto LABEL_13;
  }

  v8 = sub_1DF3B100C();

  if ((v8 & 1) == 0)
  {
    return 100;
  }

LABEL_13:
  v10 = [v0 containerConfig];
  v11 = *&v0[OBJC_IVAR___MCMCommandAuthorize_targetClientEntitlements];
  if (v11)
  {
    v12 = *&v0[OBJC_IVAR___MCMCommandAuthorize_targetClientEntitlements];
    swift_unknownObjectRetain();
    v13 = [v10 requiredEntitlement];
    if (v13)
    {
      v14 = v13;
      v15 = [v11 isEntitledWithBoolEntitlement_];

      swift_unknownObjectRelease();
      if ((v15 & 1) == 0)
      {
        swift_unknownObjectRelease();
        return 100;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v16 = [objc_msgSend(v0 containerConfig)];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v16)
  {
    return 300;
  }

  else
  {
    return 200;
  }
}

uint64_t sub_1DF2D9C0C(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_1DF3B0F3C();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v5 = sub_1DF2DAB58(v3, *(a1 + 36), 0, a1);

  return v5;
}

uint64_t sub_1DF2D9C88()
{
  v1 = [v0 identifiers];
  if (!v1)
  {
    goto LABEL_14;
  }

  v2 = v1;
  v3 = sub_1DF3B0E6C();

  v4 = *&v0[OBJC_IVAR___MCMCommandAuthorize_targetClientEntitlements];
  if (!v4)
  {

    goto LABEL_14;
  }

  v5 = *&v0[OBJC_IVAR___MCMCommandAuthorize_targetClientEntitlements];
  swift_unknownObjectRetain();
  v6 = [v4 isAllowedToPerformOperationType:0 forAllContainersOfContainerConfig:objc_msgSend(v0 part:sel_containerConfig) partDomain:0 access:{0, 2}];
  swift_unknownObjectRelease();
  if (*(v3 + 16) != 1)
  {

LABEL_10:
    swift_unknownObjectRelease();
    if (v6)
    {
      return 300;
    }

LABEL_14:
    v12 = [v0 groupIdentifiers];
    if (v12)
    {
      v13 = v12;
      v14 = sub_1DF3B0E6C();

      if (*&v0[OBJC_IVAR___MCMCommandAuthorize_targetClientEntitlements])
      {
        v15 = v14 + 56;
        v16 = 1;
        v17 = 1 << *(v14 + 32);
        v18 = -1;
        if (v17 < 64)
        {
          v18 = ~(-1 << v17);
        }

        v19 = v18 & *(v14 + 56);
        v20 = (v17 + 63) >> 6;
        v31 = *&v0[OBJC_IVAR___MCMCommandAuthorize_targetClientEntitlements];
        result = swift_unknownObjectRetain();
        v21 = 0;
        while (v19)
        {
          v32 = v16;
          v22 = v21;
LABEL_27:
          v23 = __clz(__rbit64(v19));
          v19 &= v19 - 1;
          v24 = v14;
          v25 = (*(v14 + 48) + ((v22 << 10) | (16 * v23)));
          v27 = *v25;
          v26 = v25[1];

          v28 = [objc_msgSend(v0 containerConfig)];
          swift_unknownObjectRelease();
          v29 = sub_1DF3B0DBC();
          LODWORD(v28) = [v31 isOwnerOfContainerWithClass:v28 identifier:v29];

          if (v28)
          {
            v30 = sub_1DF2D9FE4(v27, v26);

            v16 = v32 & v30;
          }

          else
          {

            v16 = 0;
          }

          v21 = v22;
          v14 = v24;
        }

        while (1)
        {
          v22 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            __break(1u);
            return result;
          }

          if (v22 >= v20)
          {
            break;
          }

          v19 = *(v15 + 8 * v22);
          ++v21;
          if (v19)
          {
            v32 = v16;
            goto LABEL_27;
          }
        }

        swift_unknownObjectRelease();
        if (v16)
        {
          return 300;
        }

        else
        {
          return 100;
        }
      }
    }

    return 100;
  }

  v7 = sub_1DF2D9C0C(v3);
  v9 = v8;

  if (!v9)
  {
    goto LABEL_10;
  }

  if (v7 == *&v0[OBJC_IVAR___MCMCommandAuthorize_targetClientIdentifier] && v9 == *&v0[OBJC_IVAR___MCMCommandAuthorize_targetClientIdentifier + 8])
  {

    swift_unknownObjectRelease();
    return 300;
  }

  v11 = sub_1DF3B100C();

  swift_unknownObjectRelease();
  result = 300;
  if (!v6 && (v11 & 1) == 0)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_1DF2D9FE4(uint64_t a1, unint64_t a2)
{
  v5 = sub_1DF3B0D0C();
  v60 = *(v5 - 8);
  v6 = *(v60 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v58 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v58 - v13;
  v15 = [objc_msgSend(v2 containerConfig)];
  swift_unknownObjectRelease();
  if (!v15)
  {
    return 1;
  }

  v16 = a1;
  if (sub_1DF2DA648())
  {
    v17 = sub_1DF2D25C4();
    v18 = v60;
    v19 = v5;
    (*(v60 + 16))(v14, v17, v5);
    v20 = v2;

    v21 = sub_1DF3B0CFC();
    v22 = sub_1DF3B0EBC();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = v18;
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v59 = v19;
      v26 = v16;
      v27 = v25;
      v61 = v25;
      *v24 = 136315394;
      v28 = &v20[OBJC_IVAR___MCMCommandAuthorize_targetClientIdentifier];
      v29 = *&v20[OBJC_IVAR___MCMCommandAuthorize_targetClientIdentifier];
      v30 = *(v28 + 1);

      v31 = sub_1DF2D1250(v29, v30, &v61);

      *(v24 + 4) = v31;
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_1DF2D1250(v26, a2, &v61);
      _os_log_impl(&dword_1DF2C3000, v21, v22, "[%s] requesting [%s]: DEVELOPER ACTION REQUIRED. Requestor's signature is given temporary compatibility affordance to access a TCC-protected group container. Group containers identifiers should be prefixed by requestor's team ID on this platform.", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12D4520](v27, -1, -1);
      MEMORY[0x1E12D4520](v24, -1, -1);

      (*(v23 + 8))(v14, v59);
    }

    else
    {

      (*(v18 + 8))(v14, v5);
    }

    return 1;
  }

  v32 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
  v59 = a1;
  v33 = sub_1DF3B0DBC();
  v34 = [v32 initWithString_];

  v35 = [v34 stringByExtractingTeamIDPrefix];
  v36 = [sub_1DF2D883C() signaturePassesStrictScrutinyForAppGroupEntitlementWithContainerConfig:objc_msgSend(v2 teamID:{sel_containerConfig), v35}];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v37 = sub_1DF2D25C4();
  v38 = *(v60 + 16);
  if (v36 >= 2)
  {
    v38(v12, v37, v5);
    v39 = v2;

    v40 = sub_1DF3B0CFC();
    v41 = sub_1DF3B0EBC();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v61 = v43;
      *v42 = 136315394;
      v44 = &v39[OBJC_IVAR___MCMCommandAuthorize_targetClientIdentifier];
      v45 = *&v39[OBJC_IVAR___MCMCommandAuthorize_targetClientIdentifier];
      v46 = *(v44 + 1);

      v47 = sub_1DF2D1250(v45, v46, &v61);

      *(v42 + 4) = v47;
      *(v42 + 12) = 2080;
      *(v42 + 14) = sub_1DF2D1250(v59, a2, &v61);
      _os_log_impl(&dword_1DF2C3000, v40, v41, "[%s] requesting [%s]: APPROVED. Requestor's signature allows it to access a TCC-protected group container", v42, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12D4520](v43, -1, -1);
      MEMORY[0x1E12D4520](v42, -1, -1);
    }

    (*(v60 + 8))(v12, v5);
    return 1;
  }

  v38(v9, v37, v5);
  v49 = v2;

  v50 = sub_1DF3B0CFC();
  v51 = sub_1DF3B0EAC();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v61 = v53;
    *v52 = 136315394;
    v54 = &v49[OBJC_IVAR___MCMCommandAuthorize_targetClientIdentifier];
    v55 = *&v49[OBJC_IVAR___MCMCommandAuthorize_targetClientIdentifier];
    v56 = *(v54 + 1);

    v57 = sub_1DF2D1250(v55, v56, &v61);

    *(v52 + 4) = v57;
    *(v52 + 12) = 2080;
    *(v52 + 14) = sub_1DF2D1250(v59, a2, &v61);
    _os_log_impl(&dword_1DF2C3000, v50, v51, "[%s] requesting [%s]: REJECTED. Requestor's signature does not allow it to access a TCC-protected group container. Group containers identifiers should be prefixed by requestor's team ID to allow access on this platform.", v52, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D4520](v53, -1, -1);
    MEMORY[0x1E12D4520](v52, -1, -1);
  }

  (*(v60 + 8))(v9, v5);
  return 0;
}

uint64_t sub_1DF2DA648()
{
  v1 = [*&v0[OBJC_IVAR___MCMCommandAuthorize_targetClientCodeSignInfo] teamIdentifier];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1DF3B0DCC();
    v5 = v4;

    v6 = [objc_msgSend(v0 containerConfig)];
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE30A88, &qword_1DF3BD418);
    v7 = sub_1DF3B0DAC();

    if (*(v7 + 16))
    {
      v8 = sub_1DF2D6BE4(v3, v5);
      v10 = v9;

      if (v10)
      {
        v11 = *(*(v7 + 56) + 8 * v8);

        v12 = sub_1DF3B0DEC();
        v14 = sub_1DF2D5850(v12, v13, v11);

        return v14 & 1;
      }
    }

    else
    {
    }
  }

  return 0;
}

id MCMCommandAuthorize.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id sub_1DF2DA904(void *a1, uint64_t a2)
{
  v5 = OBJC_IVAR___MCMCommandAuthorize_identifiers;
  *&v2[OBJC_IVAR___MCMCommandAuthorize_identifiers] = 0;
  v6 = OBJC_IVAR___MCMCommandAuthorize_groupIdentifiers;
  *&v2[OBJC_IVAR___MCMCommandAuthorize_groupIdentifiers] = 0;
  v7 = OBJC_IVAR___MCMCommandAuthorize_userIdentity;
  *&v2[OBJC_IVAR___MCMCommandAuthorize_userIdentity] = 0;
  *&v2[OBJC_IVAR___MCMCommandAuthorize____lazy_storage___amfi] = 0;
  v8 = OBJC_IVAR___MCMCommandAuthorize_targetClientEntitlements;
  *&v2[OBJC_IVAR___MCMCommandAuthorize_targetClientEntitlements] = 0;
  v9 = &v2[OBJC_IVAR___MCMCommandAuthorize_targetPlatform];
  *v9 = 0;
  v9[4] = 1;
  v10 = [objc_msgSend(a1 globalConfiguration)];
  swift_unknownObjectRelease();
  result = [v10 configForContainerClass_];
  if (result)
  {
    v12 = result;
    swift_unknownObjectRelease();
    *&v2[OBJC_IVAR___MCMCommandAuthorize_containerConfig] = v12;
    v13 = &v2[OBJC_IVAR___MCMCommandAuthorize_auditToken];
    *v13 = 0u;
    v13[1] = 0u;
    v2[OBJC_IVAR___MCMCommandAuthorize_onBehalfOfSelf] = 1;
    swift_beginAccess();
    v14 = *&v2[v5];
    *&v2[v5] = 0;

    swift_beginAccess();
    v15 = *&v2[v6];
    *&v2[v6] = 0;

    swift_beginAccess();
    v16 = *&v2[v7];
    *&v2[v7] = 0;

    v17 = &v2[OBJC_IVAR___MCMCommandAuthorize_targetClientIdentifier];
    *v17 = 0x3E656E6F6E3CLL;
    v17[1] = 0xE600000000000000;
    v18 = *&v2[v8];
    *&v2[v8] = 0;
    swift_unknownObjectRelease();
    v19 = [objc_allocWithZone(MCMClientCodeSignInfo) init];
    *&v2[OBJC_IVAR___MCMCommandAuthorize_targetClientCodeSignInfo] = v19;
    v20.receiver = v2;
    v20.super_class = MCMCommandAuthorize;
    return objc_msgSendSuper2(&v20, sel_initWithContext_resultPromise_, a1, a2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t type metadata accessor for MCMCommandAuthorize()
{
  result = qword_1ECE348B0;
  if (!qword_1ECE348B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECE348B0);
  }

  return result;
}

uint64_t sub_1DF2DAB58(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = (*(a4 + 48) + 16 * result);
    result = *v4;
    v5 = v4[1];
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1DF2DABF0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1DF3B0D0C();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  v4 = container_log_handle_for_category();
  return sub_1DF3B0D1C();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_1DF2DACBC(char *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_1DF2DAD0C(a1);
  return v5;
}

uint64_t sub_1DF2DAD0C(char *a1)
{
  v2 = v1;
  v61[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1DF3B0D3C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DF3B0D0C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (v1 + OBJC_IVAR____TtC22ContainerManagerCommon20MCMAnalyticsDatabase_settings);
  *v14 = 0xD00000000000004FLL;
  v14[1] = 0x80000001DF3BED00;
  v58 = v5;
  v15 = *(v5 + 16);
  v53 = OBJC_IVAR____TtC22ContainerManagerCommon20MCMAnalyticsDatabase_dbPath;
  v54 = v14;
  v15(v1 + OBJC_IVAR____TtC22ContainerManagerCommon20MCMAnalyticsDatabase_dbPath, a1, v4);
  v61[0] = 0;
  v59 = 1;
  v16 = sub_1DF2DABBC();
  v55 = v10;
  v56 = v9;
  (*(v10 + 16))(v13, v16, v9);
  v15(v8, a1, v4);
  v17 = sub_1DF3B0CFC();
  v18 = sub_1DF3B0E8C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v52 = v1;
    v20 = v19;
    v21 = swift_slowAlloc();
    v60 = v21;
    *v20 = 136315138;
    sub_1DF2DB79C();
    v22 = sub_1DF3B0FFC();
    v51 = a1;
    v23 = v4;
    v25 = v24;
    v26 = v8;
    v27 = *(v58 + 8);
    v27(v26, v23);
    v28 = sub_1DF2D1250(v22, v25, &v60);
    v4 = v23;
    a1 = v51;

    *(v20 + 4) = v28;
    _os_log_impl(&dword_1DF2C3000, v17, v18, "Opening Analytics db at [%s]", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x1E12D4520](v21, -1, -1);
    v29 = v20;
    v2 = v52;
    MEMORY[0x1E12D4520](v29, -1, -1);
  }

  else
  {

    v31 = v8;
    v27 = *(v58 + 8);
    v27(v31, v4);
  }

  v30 = (*(v55 + 8))(v13, v56);
  MEMORY[0x1EEE9AC00](v30);
  *(&v51 - 2) = &v59;
  *(&v51 - 1) = v61;
  v32 = v57;
  sub_1DF3B0D2C();
  if (!v32)
  {
    v33 = v61[0];
    if (v61[0])
    {
      if (!v59)
      {
        *(v2 + OBJC_IVAR____TtC22ContainerManagerCommon20MCMAnalyticsDatabase_db) = v61[0];
        sub_1DF2E510C(v33);
        v44 = v43;
        v46 = v45;
        v27(a1, v4);
        v47 = (v2 + OBJC_IVAR____TtC22ContainerManagerCommon20MCMAnalyticsDatabase_statements);
        *v47 = v44;
        v47[1] = v46;
LABEL_11:
        v41 = *MEMORY[0x1E69E9840];
        return v2;
      }

      v34 = v4;
      v35 = sqlite3_extended_errcode(v61[0]);
      sub_1DF2DB360();
      swift_allocError();
      *v36 = v35;
      v4 = v34;
      *(v36 + 4) = 0;
      swift_willThrow();
      sqlite3_close(v33);
    }

    else
    {
      sub_1DF2DB360();
      swift_allocError();
      *v37 = 1;
      *(v37 + 4) = 0;
      swift_willThrow();
    }

    v27(a1, v4);
    v27((v2 + v53), v4);
    v38 = v54[1];

    type metadata accessor for MCMAnalyticsDatabase();
    v39 = *(*v2 + 48);
    v40 = *(*v2 + 52);
    swift_deallocPartialClassInstance();
    goto LABEL_11;
  }

  v27((v2 + v53), v4);
  v48 = v54[1];

  type metadata accessor for MCMAnalyticsDatabase();
  v49 = *(*v2 + 48);
  v50 = *(*v2 + 52);
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t sub_1DF2DB2D8(const char *a1)
{
  v2 = *(v1 + 16);
  result = sqlite3_open_v2(a1, *(v1 + 24), 4194310, 0);
  *v2 = result;
  return result;
}

uint64_t type metadata accessor for MCMAnalyticsDatabase()
{
  result = qword_1ECE34960;
  if (!qword_1ECE34960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1DF2DB360()
{
  result = qword_1ECE30C70;
  if (!qword_1ECE30C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE30C70);
  }

  return result;
}

uint64_t sub_1DF2DB3B4()
{
  v1 = v0;
  v2 = sub_1DF3B0D0C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - v6;
  v8 = *(v0 + OBJC_IVAR____TtC22ContainerManagerCommon20MCMAnalyticsDatabase_statements);
  v9 = *(v0 + OBJC_IVAR____TtC22ContainerManagerCommon20MCMAnalyticsDatabase_statements + 8);
  sub_1DF2E5FD8();
  v10 = OBJC_IVAR____TtC22ContainerManagerCommon20MCMAnalyticsDatabase_db;
  if (sqlite3_close_v2(*(v0 + OBJC_IVAR____TtC22ContainerManagerCommon20MCMAnalyticsDatabase_db)))
  {
    v11 = sub_1DF2DABBC();
    (*(v3 + 16))(v7, v11, v2);

    v12 = sub_1DF3B0CFC();
    v13 = sub_1DF3B0EAC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 67109120;
      *(v14 + 4) = sqlite3_extended_errcode(*(v1 + v10));

      _os_log_impl(&dword_1DF2C3000, v12, v13, "Failed to close database: %d", v14, 8u);
      MEMORY[0x1E12D4520](v14, -1, -1);
    }

    else
    {
    }

    (*(v3 + 8))(v7, v2);
  }

  v15 = OBJC_IVAR____TtC22ContainerManagerCommon20MCMAnalyticsDatabase_dbPath;
  v16 = sub_1DF3B0D3C();
  (*(*(v16 - 8) + 8))(v1 + v15, v16);
  v17 = *(v1 + OBJC_IVAR____TtC22ContainerManagerCommon20MCMAnalyticsDatabase_settings + 8);

  return v1;
}

uint64_t sub_1DF2DB718()
{
  sub_1DF2DB3B4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1DF2DB770(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC22ContainerManagerCommon20MCMAnalyticsDatabase_statements);
  v3 = *(v1 + OBJC_IVAR____TtC22ContainerManagerCommon20MCMAnalyticsDatabase_statements + 8);
  return sub_1DF2E1F08(a1) & 1;
}

unint64_t sub_1DF2DB79C()
{
  result = qword_1ECE30C78;
  if (!qword_1ECE30C78)
  {
    sub_1DF3B0D3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE30C78);
  }

  return result;
}

uint64_t sub_1DF2DB7FC()
{
  result = sub_1DF3B0D3C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MCMAnalyticsDatabase.DatabaseError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 5))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for MCMAnalyticsDatabase.DatabaseError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

id sub_1DF2DB9E0(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  *(v2 + OBJC_IVAR___MCMEntitlementLookup_rawData) = a1;
  v76 = sub_1DF2DD204(MEMORY[0x1E69E7CC0]);
  v5 = v4 + 64;
  v6 = 1 << *(v4 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v4 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  while (v8)
  {
    v11 = v10;
LABEL_16:
    v14 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v15 = v14 | (v11 << 6);
    v16 = (*(v4 + 48) + 16 * v15);
    v18 = *v16;
    v17 = v16[1];
    sub_1DF2D2724(*(v4 + 56) + 32 * v15, v84);
    *&v85 = v18;
    *(&v85 + 1) = v17;
    sub_1DF2DD320(v84, &v86);

LABEL_17:
    v88 = v85;
    v89[0] = v86;
    v89[1] = v87;
    v19 = *(&v85 + 1);
    if (!*(&v85 + 1))
    {

      *&v75[OBJC_IVAR___MCMEntitlementLookup_classes] = v76;
      v83.receiver = v75;
      v83.super_class = MCMEntitlementLookup;
      return objc_msgSendSuper2(&v83, sel_init);
    }

    v20 = v88;
    sub_1DF2DD320(v89, &v85);
    if (!*(a2 + 16))
    {

      goto LABEL_5;
    }

    v21 = sub_1DF2D6BE4(v20, v19);
    v23 = v22;

    if (v23)
    {
      v24 = v4;
      v25 = *(*(a2 + 56) + 8 * v21);
      sub_1DF2D2724(&v85, v84);
      sub_1DF2D2724(v84, v82);
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        v71 = v81;
        __swift_destroy_boxed_opaque_existential_0(v84);
        v27 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(v84);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE30CF8, &qword_1DF3BD910);
        if (!swift_dynamicCast())
        {
          __swift_destroy_boxed_opaque_existential_0(&v85);
          swift_unknownObjectRelease();
          v26 = v82;
          goto LABEL_23;
        }

        v71 = 0;
        v27 = v81;
      }

      __swift_destroy_boxed_opaque_existential_0(v82);
      v28 = [v25 normalizedContainerClass];
      v72 = v27;
      v74 = v28;
      if (v76[2])
      {
        v29 = v76;
        v67 = sub_1DF2CFAD0(v28);
        v31 = v30;

        if ((v31 & 1) == 0)
        {
          goto LABEL_34;
        }

        v32 = v76[7] + 16 * v67;
        v33 = *v32;
        v68 = *(v32 + 8);
        *&v84[0] = v72;

        sub_1DF2DC740(v34);
        v73 = *&v84[0];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v84[0] = v76;
        v35 = sub_1DF2CFAD0(v74);
        v37 = v76[2];
        v38 = (v36 & 1) == 0;
        v39 = __OFADD__(v37, v38);
        v40 = v37 + v38;
        if (v39)
        {
          goto LABEL_56;
        }

        if (v76[3] >= v40)
        {
          v41 = v74;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v80 = v35;
            v64 = v36;
            sub_1DF2DC5D0();
            v36 = v64;
            v35 = v80;
            v41 = v74;
          }
        }

        else
        {
          v77 = v36;
          sub_1DF2DC32C(v40, isUniquelyReferenced_nonNull_native);
          v41 = v74;
          v35 = sub_1DF2CFAD0(v74);
          v43 = v42 & 1;
          v36 = v77;
          if ((v77 & 1) != v43)
          {
            goto LABEL_58;
          }
        }

        v59 = v68 | v71;
        v76 = *&v84[0];
        if (v36)
        {
          v60 = *(*&v84[0] + 56) + 16 * v35;
          v61 = *v60;
          *v60 = v73;
          *(v60 + 8) = v59 & 1;
          goto LABEL_49;
        }

        *(*&v84[0] + 8 * (v35 >> 6) + 64) |= 1 << v35;
        *(v76[6] + 8 * v35) = v41;
        v62 = v76[7] + 16 * v35;
        *v62 = v73;
        *(v62 + 8) = v59 & 1;
        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_0(&v85);
        v56 = v76;
        v63 = v76[2];
        v39 = __OFADD__(v63, 1);
        v58 = v63 + 1;
        if (v39)
        {
          goto LABEL_57;
        }

LABEL_51:
        v56[2] = v58;
        v4 = v24;
      }

      else
      {
        v29 = v76;

LABEL_34:
        v78 = swift_isUniquelyReferenced_nonNull_native();
        *&v84[0] = v29;
        v45 = sub_1DF2CFAD0(v74);
        v46 = v29[2];
        v47 = (v44 & 1) == 0;
        v48 = v46 + v47;
        if (__OFADD__(v46, v47))
        {
          goto LABEL_54;
        }

        if (v29[3] >= v48)
        {
          v49 = v74;
          if ((v78 & 1) == 0)
          {
            v79 = v45;
            v70 = v44;
            sub_1DF2DC5D0();
            v44 = v70;
            v45 = v79;
          }
        }

        else
        {
          v69 = v44;
          sub_1DF2DC32C(v48, v78);
          v49 = v74;
          v50 = sub_1DF2CFAD0(v74);
          v52 = v51 & 1;
          v44 = v69;
          if ((v69 & 1) != v52)
          {
            goto LABEL_58;
          }

          v45 = v50;
        }

        v76 = *&v84[0];
        if ((v44 & 1) == 0)
        {
          *(*&v84[0] + 8 * (v45 >> 6) + 64) |= 1 << v45;
          *(v76[6] + 8 * v45) = v49;
          v55 = v76[7] + 16 * v45;
          *v55 = v72;
          *(v55 + 8) = v71;
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_0(&v85);
          v56 = v76;
          v57 = v76[2];
          v39 = __OFADD__(v57, 1);
          v58 = v57 + 1;
          if (v39)
          {
            goto LABEL_55;
          }

          goto LABEL_51;
        }

        v53 = *(*&v84[0] + 56) + 16 * v45;
        v54 = *v53;
        *v53 = v72;
        *(v53 + 8) = v71;
LABEL_49:
        swift_unknownObjectRelease();

        v26 = &v85;
LABEL_23:
        __swift_destroy_boxed_opaque_existential_0(v26);
        v4 = v24;
      }
    }

    else
    {
LABEL_5:
      __swift_destroy_boxed_opaque_existential_0(&v85);
    }
  }

  if (v9 <= v10 + 1)
  {
    v12 = v10 + 1;
  }

  else
  {
    v12 = v9;
  }

  v13 = v12 - 1;
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {
      v8 = 0;
      v86 = 0u;
      v87 = 0u;
      v10 = v13;
      v85 = 0u;
      goto LABEL_17;
    }

    v8 = *(v5 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  type metadata accessor for container_class_t(0);
  result = sub_1DF3B103C();
  __break(1u);
  return result;
}

uint64_t sub_1DF2DC104(void *a1)
{
  v2 = [a1 normalizedContainerClass];
  v3 = *(v1 + OBJC_IVAR___MCMEntitlementLookup_classes);
  if (!*(v3 + 16))
  {
    return MEMORY[0x1E69E7CD0];
  }

  v4 = sub_1DF2CFAD0(v2);
  if ((v5 & 1) == 0)
  {
    return MEMORY[0x1E69E7CD0];
  }

  v6 = *(*(v3 + 56) + 16 * v4);

  v8 = sub_1DF2DD4D0(v7);

  return v8;
}

id MCMEntitlementLookup.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_1DF2DC2A0()
{
  v1 = *v0;
  sub_1DF3B109C();
  MEMORY[0x1E12D2A50](v1);
  return sub_1DF3B10BC();
}

uint64_t sub_1DF2DC2E8()
{
  v1 = *v0;
  sub_1DF3B109C();
  MEMORY[0x1E12D2A50](v1);
  return sub_1DF3B10BC();
}

uint64_t sub_1DF2DC32C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE30DE0, &qword_1DF3BDA08);
  v37 = a2;
  result = sub_1DF3B0FDC();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = *(v5 + 56) + 16 * v21;
      v24 = *v23;
      v25 = *(v23 + 8);
      if ((v37 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      sub_1DF3B109C();
      MEMORY[0x1E12D2A50](v22);
      result = sub_1DF3B10BC();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = *(v8 + 56) + 16 * v16;
      *v17 = v24;
      *(v17 + 8) = v25;
      ++*(v8 + 16);
      v5 = v36;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void *sub_1DF2DC5D0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE30DE0, &qword_1DF3BDA08);
  v2 = *v0;
  v3 = sub_1DF3B0FCC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 56) + 16 * v17;
        v19 = *v18;
        LOBYTE(v18) = *(v18 + 8);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v20 = *(v4 + 56) + 16 * v17;
        *v20 = v19;
        *(v20 + 8) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1DF2DC740(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1DF2DC834(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1DF2DC834(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE30DD8, &qword_1DF3BDA00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1DF2DC940(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1DF3B109C();
  sub_1DF3B0E0C();
  v9 = sub_1DF3B10BC();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1DF3B100C() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_1DF2DCCF0(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1DF2DCA90(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE30DD0, &qword_1DF3BD9F8);
  result = sub_1DF3B0F6C();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_1DF3B109C();
      sub_1DF3B0E0C();
      result = sub_1DF3B10BC();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1DF2DCCF0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1DF2DCA90(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1DF2DCE70();
      goto LABEL_16;
    }

    sub_1DF2DCFCC(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1DF3B109C();
  sub_1DF3B0E0C();
  result = sub_1DF3B10BC();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1DF3B100C();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1DF3B102C();
  __break(1u);
  return result;
}

void *sub_1DF2DCE70()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE30DD0, &qword_1DF3BD9F8);
  v2 = *v0;
  v3 = sub_1DF3B0F5C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1DF2DCFCC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE30DD0, &qword_1DF3BD9F8);
  result = sub_1DF3B0F6C();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_1DF3B109C();

      sub_1DF3B0E0C();
      result = sub_1DF3B10BC();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

void *sub_1DF2DD204(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE30DE0, &qword_1DF3BDA08);
  v3 = sub_1DF3B0FEC();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = sub_1DF2CFAD0(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = v3[7] + 16 * v9;
    *v12 = result;
    *(v12 + 8) = v6 & 1;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 24;
    v4 = *(v11 - 2);
    v17 = *(v11 - 1);
    v6 = *v11;

    v9 = sub_1DF2CFAD0(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

_OWORD *sub_1DF2DD320(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1DF2DD330(void *a1, uint64_t a2)
{
  if ([v2 isSupported_] && (v4 = objc_msgSend(a1, sel_normalizedContainerClass), v5 = *&v2[OBJC_IVAR___MCMEntitlementLookup_classes], *(v5 + 16)) && (v6 = sub_1DF2CFAD0(v4), (v7 & 1) != 0))
  {
    v8 = *(v5 + 56) + 16 * v6;
    v9 = *v8;
    v10 = *(v8 + 8);
    v11 = sub_1DF3B0DCC();
    v13 = v12;
    if (v10 == 1)
    {

      v14 = 1;
    }

    else
    {
      v16 = v11;
      if (sub_1DF3B0DCC() == v11 && v17 == v13 || (v18 = sub_1DF3B100C(), , v19 = , (v18 & 1) != 0))
      {

        v14 = 0;
      }

      else
      {
        v21[0] = v16;
        v21[1] = v13;
        MEMORY[0x1EEE9AC00](v19);
        v20[2] = v21;
        v14 = sub_1DF2CFBA8(sub_1DF2CFC70, v20, v9);
      }
    }
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_1DF2DD4D0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E12D2820](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1DF2DC940(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t type metadata accessor for MCMEntitlementLookup()
{
  result = qword_1ECE34970[0];
  if (!qword_1ECE34970[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1ECE34970);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1DF2DD5C8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DF2DD610(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DF2DD664()
{
  result = qword_1EE172D40;
  if (!qword_1EE172D40)
  {
    type metadata accessor for container_class_t(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE172D40);
  }

  return result;
}

unint64_t sub_1DF2DD6D0()
{
  result = qword_1ECE30EB0;
  if (!qword_1ECE30EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE30EB8, qword_1DF3BDA10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE30EB0);
  }

  return result;
}

void type metadata accessor for container_part_t()
{
  if (!qword_1ECE30FB0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1ECE30FB0);
    }
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MCMSandboxExtensionType()
{
  v1 = *v0;
  if (*v0 <= 1)
  {
    if (!v1)
    {
      return 1701736302;
    }

    if (v1 == 1)
    {
      return 0x656E6961746E6F63;
    }

    goto LABEL_11;
  }

  if (v1 == 2)
  {
    return 0x6C6E6F2D64616572;
  }

  if (v1 != 3)
  {
LABEL_11:
    v3 = *v0;
    result = sub_1DF3B101C();
    __break(1u);
    return result;
  }

  return 0x6972772D64616572;
}

unint64_t sub_1DF2DD85C()
{
  result = qword_1ECE30EC0;
  if (!qword_1ECE30EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE30EC8, &qword_1DF3BDAB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE30EC0);
  }

  return result;
}

unint64_t sub_1DF2DD8C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE30BD0, &qword_1DF3BD620);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DF3BDB00;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  if (v0[1])
  {
    v2 = *v0;
    v3 = v0[1];
  }

  v4 = sub_1DF3B0DBC();

  *(inited + 48) = v4;
  *(inited + 56) = 0xD000000000000011;
  *(inited + 64) = 0x80000001DF3BF1B0;
  v5 = v0[2];
  v6 = v0[3];
  *(inited + 72) = sub_1DF3B0DBC();
  *(inited + 80) = 0xD000000000000013;
  *(inited + 88) = 0x80000001DF3BF1D0;
  v7 = v0[4];
  v8 = v0[5];
  *(inited + 96) = sub_1DF3B0DBC();
  *(inited + 104) = 0xD00000000000001ALL;
  *(inited + 112) = 0x80000001DF3BF1F0;
  v9 = *(v0 + 12);
  *(inited + 120) = sub_1DF3B108C();
  *(inited + 128) = 0xD000000000000015;
  *(inited + 136) = 0x80000001DF3BF210;
  v10 = *(v0 + 13);
  *(inited + 144) = sub_1DF3B108C();
  *(inited + 152) = 0xD000000000000013;
  *(inited + 160) = 0x80000001DF3BF250;
  v11 = *(v0 + 60);
  *(inited + 168) = sub_1DF3B0E4C();
  *(inited + 176) = 0xD000000000000013;
  *(inited + 184) = 0x80000001DF3BF230;
  v12 = *(v0 + 14);
  *(inited + 192) = sub_1DF3B108C();
  *(inited + 200) = 0xD000000000000011;
  *(inited + 208) = 0x80000001DF3BF270;
  v13 = *(v0 + 61);
  *(inited + 216) = sub_1DF3B0E4C();
  *(inited + 224) = 0xD000000000000011;
  *(inited + 232) = 0x80000001DF3BF290;
  v14 = v0[8];
  v15 = v0[9];
  *(inited + 240) = sub_1DF3B0DBC();
  *(inited + 248) = 0xD00000000000001BLL;
  *(inited + 256) = 0x80000001DF3BF2B0;
  v16 = *(v0 + 20);
  *(inited + 264) = sub_1DF3B108C();
  strcpy((inited + 272), "containerClass");
  *(inited + 287) = -18;
  v17 = v0[11];
  *(inited + 288) = sub_1DF3B10CC();
  v18 = sub_1DF2D7B58(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE30BD8, qword_1DF3BD628);
  swift_arrayDestroy();
  return v18;
}

uint64_t sub_1DF2DDB30()
{
  sub_1DF3B0F9C();

  MEMORY[0x1E12D27C0](*(v0 + 32), *(v0 + 40));
  MEMORY[0x1E12D27C0](58, 0xE100000000000000);
  v13 = *(v0 + 88);
  v1 = sub_1DF3B0FFC();
  MEMORY[0x1E12D27C0](v1);

  MEMORY[0x1E12D27C0](58, 0xE100000000000000);
  LODWORD(v13) = *(v0 + 48);
  v2 = sub_1DF3B0FFC();
  MEMORY[0x1E12D27C0](v2);

  MEMORY[0x1E12D27C0](58, 0xE100000000000000);
  LODWORD(v13) = *(v0 + 52);
  v3 = sub_1DF3B0FFC();
  MEMORY[0x1E12D27C0](v3);

  MEMORY[0x1E12D27C0](58, 0xE100000000000000);
  LODWORD(v13) = *(v0 + 56);
  v4 = sub_1DF3B0FFC();
  MEMORY[0x1E12D27C0](v4);

  MEMORY[0x1E12D27C0](58, 0xE100000000000000);
  if (*(v0 + 60))
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (*(v0 + 60))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x1E12D27C0](v5, v6);

  MEMORY[0x1E12D27C0](58, 0xE100000000000000);
  if (*(v0 + 61))
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (*(v0 + 61))
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x1E12D27C0](v7, v8);

  MEMORY[0x1E12D27C0](58, 0xE100000000000000);
  MEMORY[0x1E12D27C0](*(v0 + 64), *(v0 + 72));
  MEMORY[0x1E12D27C0](58, 0xE100000000000000);
  v14 = *(v0 + 80);
  v9 = sub_1DF3B0FFC();
  MEMORY[0x1E12D27C0](v9);

  MEMORY[0x1E12D27C0](58, 0xE100000000000000);
  if (*(v0 + 8))
  {
    v10 = *v0;
    v11 = *(v0 + 8);
  }

  else
  {
    v11 = 0xE500000000000000;
    v10 = 0x3E6C6C613CLL;
  }

  MEMORY[0x1E12D27C0](v10, v11);

  MEMORY[0x1E12D27C0](93, 0xE100000000000000);
  return 91;
}

uint64_t sub_1DF2DDDF4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, int a10, char a11, char a12, uint64_t a13, uint64_t a14, int a15, uint64_t a16)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 52) = a8;
  *(a9 + 56) = a10;
  *(a9 + 60) = a11;
  *(a9 + 61) = a12;
  *(a9 + 64) = a13;
  *(a9 + 72) = a14;
  *(a9 + 80) = a15;
  *(a9 + 88) = a16;
  return result;
}

void sub_1DF2DDE58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v2 = *v1;
  v3 = v1[1];
  sub_1DF2DDE9C(a1);
}

void sub_1DF2DDE9C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1DF3B0D0C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  if (a1)
  {
    v6 = *(*a1 + 120);

    LOBYTE(v6) = v6(v2);

    if (v6)
    {
      v10 = v2[2];
      v11 = v2[3];
      v12 = v2[4];
      v13 = v2[5];
      v8 = *v2;
      v9 = v2[1];
      v7 = sub_1DF2DE100();
      sub_1DF2E4154(&_s21AmbiguousPersonaEventVN, v7);
    }
  }
}

unint64_t sub_1DF2DE100()
{
  result = qword_1ECE310C0;
  if (!qword_1ECE310C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE310C0);
  }

  return result;
}

unint64_t sub_1DF2DE154(uint64_t a1)
{
  result = sub_1DF2DE17C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DF2DE17C()
{
  result = qword_1ECE30ED0;
  if (!qword_1ECE30ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE30ED0);
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1DF2DE1EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DF2DE234(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DF2DE29C()
{
  v1 = (v0 + OBJC_IVAR____TtC22ContainerManagerCommon22MCMXPCMessageAuthorize_auditToken);
  swift_beginAccess();
  result = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  return result;
}

uint64_t sub_1DF2DE2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = (v4 + OBJC_IVAR____TtC22ContainerManagerCommon22MCMXPCMessageAuthorize_auditToken);
  result = swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  return result;
}

uint64_t sub_1DF2DE3B8()
{
  v1 = OBJC_IVAR____TtC22ContainerManagerCommon22MCMXPCMessageAuthorize_flags;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1DF2DE3FC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22ContainerManagerCommon22MCMXPCMessageAuthorize_flags;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1DF2DE4AC()
{
  v1 = OBJC_IVAR____TtC22ContainerManagerCommon22MCMXPCMessageAuthorize_onBehalfOfSelf;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1DF2DE4F0(char a1)
{
  v3 = OBJC_IVAR____TtC22ContainerManagerCommon22MCMXPCMessageAuthorize_onBehalfOfSelf;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_1DF2DE5A0(void *a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = &v3[OBJC_IVAR____TtC22ContainerManagerCommon22MCMXPCMessageAuthorize_auditToken];
  *v7 = 0u;
  v7[1] = 0u;
  *&v3[OBJC_IVAR____TtC22ContainerManagerCommon22MCMXPCMessageAuthorize_flags] = 0;
  v3[OBJC_IVAR____TtC22ContainerManagerCommon22MCMXPCMessageAuthorize_onBehalfOfSelf] = 0;
  v21.receiver = v3;
  v21.super_class = type metadata accessor for MCMXPCMessageAuthorize();
  v8 = objc_msgSendSuper2(&v21, sel_initWithXPCObject_context_error_, a1, a2, a3);
  if (v8)
  {
    v9 = v8;
    v10 = v8;
    uint64 = xpc_dictionary_get_uint64(a1, "Flags");
    v12 = OBJC_IVAR____TtC22ContainerManagerCommon22MCMXPCMessageAuthorize_flags;
    swift_beginAccess();
    *&v10[v12] = uint64;
    LODWORD(uint64) = xpc_dictionary_get_BOOL(a1, "OnBehalfOfSelf");
    v13 = OBJC_IVAR____TtC22ContainerManagerCommon22MCMXPCMessageAuthorize_onBehalfOfSelf;
    swift_beginAccess();
    v10[v13] = uint64;
    if (uint64)
    {
      v14 = [a2 clientIdentity];
      [v14 auditToken];
    }

    else
    {
      v20 = 32;
      data = xpc_dictionary_get_data(a1, "AuditToken", &v20);
      if (!data)
      {
        *a3 = 38;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v19 = &v10[OBJC_IVAR____TtC22ContainerManagerCommon22MCMXPCMessageAuthorize_auditToken];
        swift_beginAccess();
        *v19 = 0u;
        v19[1] = 0u;
        goto LABEL_8;
      }

      v22 = *data;
      v23 = data[1];
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v17 = &v10[OBJC_IVAR____TtC22ContainerManagerCommon22MCMXPCMessageAuthorize_auditToken];
    swift_beginAccess();
    *v17 = v22;
    v17[1] = v23;
LABEL_8:

    result = v9;
    goto LABEL_9;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  result = 0;
LABEL_9:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

id sub_1DF2DE908()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MCMXPCMessageAuthorize();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL sub_1DF2DE980(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1DF2DE9B0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1DF2DE9DC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1DF2DEAB4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1DF2DECB8(a1);

  *a2 = v3;
  return result;
}

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DF2DEB44(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DF2DEB64(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t sub_1DF2DEC0C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for container_authorize_flags_t(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DF2DECB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

id sub_1DF2DED68(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR___MCMEntitlementAccess_rawData) = a1;
  v45 = sub_1DF2E0FAC(MEMORY[0x1E69E7CC0]);
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (v7)
  {
    v10 = v9;
LABEL_16:
    v13 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v14 = v13 | (v10 << 6);
    v15 = (*(a1 + 48) + 16 * v14);
    v17 = *v15;
    v16 = v15[1];
    sub_1DF2D2724(*(a1 + 56) + 32 * v14, v48);
    *&v49 = v17;
    *(&v49 + 1) = v16;
    sub_1DF2DD320(v48, &v50);

LABEL_17:
    v52 = v49;
    v53[0] = v50;
    v53[1] = v51;
    v18 = *(&v49 + 1);
    if (!*(&v49 + 1))
    {

      *&v44[OBJC_IVAR___MCMEntitlementAccess_classes] = v45;
      v47.receiver = v44;
      v47.super_class = MCMEntitlementAccess;
      return objc_msgSendSuper2(&v47, sel_init);
    }

    v19 = v52;
    sub_1DF2DD320(v53, &v49);
    if (!*(a2 + 16))
    {
      goto LABEL_4;
    }

    v20 = sub_1DF2D6BE4(v19, v18);
    v22 = v21;

    if (v22)
    {
      v23 = *(*(a2 + 56) + 8 * v20);
      sub_1DF2D2724(&v49, v48);
      swift_unknownObjectRetain();
      v24 = sub_1DF2E19F8(v48);
      if (v24)
      {
        v43 = v24;
        v25 = [v23 containerClass];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v48[0] = v45;
        v42 = v25;
        v26 = sub_1DF2DFEF4(v25, sub_1DF2CFB3C);
        v28 = v45[2];
        v29 = (v27 & 1) == 0;
        v30 = __OFADD__(v28, v29);
        v31 = v28 + v29;
        if (v30)
        {
          goto LABEL_35;
        }

        v32 = v27;
        if (v45[3] < v31)
        {
          sub_1DF2E04D0(v31, isUniquelyReferenced_nonNull_native);
          v26 = sub_1DF2DFEF4(v42, sub_1DF2CFB3C);
          if ((v32 & 1) != (v33 & 1))
          {
            goto LABEL_37;
          }

          goto LABEL_26;
        }

        v34 = v43;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v46 = v27;
          v39 = v26;
          sub_1DF2E0A4C();
          v26 = v39;
          v32 = v46;
LABEL_26:
          v34 = v43;
        }

        v45 = *&v48[0];
        if (v32)
        {
          v35 = *(*&v48[0] + 56);
          v36 = *(v35 + 8 * v26);
          *(v35 + 8 * v26) = v34;
          swift_unknownObjectRelease();
LABEL_4:

          goto LABEL_5;
        }

        *(*&v48[0] + 8 * (v26 >> 6) + 64) |= 1 << v26;
        *(v45[6] + 8 * v26) = v42;
        *(v45[7] + 8 * v26) = v34;
        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_0(&v49);
        v37 = v45[2];
        v30 = __OFADD__(v37, 1);
        v38 = v37 + 1;
        if (v30)
        {
          goto LABEL_36;
        }

        v45[2] = v38;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(&v49);
        swift_unknownObjectRelease();
      }
    }

    else
    {
LABEL_5:
      __swift_destroy_boxed_opaque_existential_0(&v49);
    }
  }

  if (v8 <= v9 + 1)
  {
    v11 = v9 + 1;
  }

  else
  {
    v11 = v8;
  }

  v12 = v11 - 1;
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {
      v7 = 0;
      v50 = 0u;
      v51 = 0u;
      v9 = v12;
      v49 = 0u;
      goto LABEL_17;
    }

    v7 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  type metadata accessor for container_class_t(0);
  result = sub_1DF3B103C();
  __break(1u);
  return result;
}

uint64_t sub_1DF2DF1B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v16 = *(v8 + OBJC_IVAR___MCMEntitlementAccess_classes);
  v17 = [a1 containerClass];
  if (!*(v16 + 16))
  {
    goto LABEL_37;
  }

  v18 = sub_1DF2DFEF4(v17, sub_1DF2CFB3C);
  if ((v19 & 1) == 0)
  {
    goto LABEL_37;
  }

  v63 = a5;
  v20 = *(*(v16 + 56) + 8 * v18);
  if (sub_1DF3B0DCC() == a2 && v21 == a3)
  {

    goto LABEL_23;
  }

  v62 = a6;
  v23 = sub_1DF3B100C();

  if (v23)
  {
    goto LABEL_19;
  }

  v24 = sub_1DF3B0DCC();
  if (!*(v20 + 16))
  {
    a6 = v62;
    goto LABEL_23;
  }

  v26 = sub_1DF2D6BE4(v24, v25);
  v28 = v27;

  if ((v28 & 1) == 0 || (v29 = *(*(v20 + 56) + 8 * v26), !*(v29 + 16)))
  {
LABEL_19:
    a6 = v62;
LABEL_20:
    if (!*(v20 + 16))
    {
      goto LABEL_36;
    }

    goto LABEL_24;
  }

  v30 = *(*(v20 + 56) + 8 * v26);
  v31 = sub_1DF2DFEF4(a4, sub_1DF2CFB3C);
  a6 = v62;
  if ((v32 & 1) == 0)
  {
    goto LABEL_20;
  }

  v33 = (*(v29 + 56) + 24 * v31);
  v35 = *v33;
  v34 = v33[1];
  v36 = v33[2];
  v37 = *(*v33 + 16);
  v38 = 32;
  do
  {
    if (!v37)
    {
      goto LABEL_20;
    }

    v39 = *(v35 + v38);
    v38 += 8;
    --v37;
  }

  while (v39 != a7);
  v60 = v34;
  v61 = v36;

  v40 = sub_1DF2D834C(a8, v60);
  if (v40)
  {
    if (!v61)
    {

LABEL_42:

      goto LABEL_43;
    }

    if (v62)
    {
      v60 = &v59;
      v64 = v63;
      v65 = v62;
      MEMORY[0x1EEE9AC00](v40);
      v58 = &v64;
      HIDWORD(v59) = sub_1DF2CFBA8(sub_1DF2CFC70, v57, v41);

      if ((v59 & 0x100000000) != 0)
      {
LABEL_43:

        v55 = 1;
        return v55 & 1;
      }

      goto LABEL_19;
    }
  }

LABEL_23:

  if (*(v20 + 16))
  {
LABEL_24:
    v42 = sub_1DF2D6BE4(a2, a3);
    if ((v43 & 1) == 0)
    {
      goto LABEL_36;
    }

    v44 = *(*(v20 + 56) + 8 * v42);
    if (!*(v44 + 16))
    {
      goto LABEL_36;
    }

    v45 = sub_1DF2DFEF4(a4, sub_1DF2CFB3C);
    if ((v46 & 1) == 0)
    {
      goto LABEL_36;
    }

    v47 = (*(v44 + 56) + 24 * v45);
    v48 = *v47;
    v49 = v47[1];
    v50 = v47[2];
    v51 = *(*v47 + 16);
    v52 = 32;
    do
    {
      if (!v51)
      {
        goto LABEL_36;
      }

      v53 = *(v48 + v52);
      v52 += 8;
      --v51;
    }

    while (v53 != a7);

    v54 = sub_1DF2D834C(a8, v49);
    if ((v54 & 1) == 0)
    {
LABEL_35:

      goto LABEL_36;
    }

    if (v50)
    {
      if (a6)
      {
        v64 = v63;
        v65 = a6;
        MEMORY[0x1EEE9AC00](v54);
        v58 = &v64;
        v55 = sub_1DF2CFBA8(sub_1DF2CFC54, v57, v50);

        return v55 & 1;
      }

      goto LABEL_35;
    }

    goto LABEL_42;
  }

LABEL_36:

LABEL_37:
  v55 = 0;
  return v55 & 1;
}

uint64_t sub_1DF2DF6AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v12 = *(v6 + OBJC_IVAR___MCMEntitlementAccess_classes);
  v13 = [a1 containerClass];
  if (!*(v12 + 16))
  {
    goto LABEL_36;
  }

  v14 = sub_1DF2DFEF4(v13, sub_1DF2CFB3C);
  if ((v15 & 1) == 0)
  {
    goto LABEL_36;
  }

  v60 = a3;
  v61 = a4;
  v16 = *(*(v12 + 56) + 8 * v14);
  v17 = sub_1DF3B0DCC();
  v19 = v18;
  if (sub_1DF3B0DCC() == v17 && v20 == v19)
  {

LABEL_21:

    goto LABEL_22;
  }

  v22 = sub_1DF3B100C();

  if ((v22 & 1) == 0)
  {
    v23 = sub_1DF3B0DCC();
    if (*(v16 + 16))
    {
      v25 = sub_1DF2D6BE4(v23, v24);
      v27 = v26;

      if ((v27 & 1) == 0)
      {
        goto LABEL_22;
      }

      v28 = *(*(v16 + 56) + 8 * v25);
      if (!*(v28 + 16))
      {
        goto LABEL_22;
      }

      v29 = *(*(v16 + 56) + 8 * v25);
      v30 = sub_1DF2DFEF4(a2, sub_1DF2CFB3C);
      if ((v31 & 1) == 0)
      {
        goto LABEL_22;
      }

      v32 = (*(v28 + 56) + 24 * v30);
      v33 = *v32;
      v34 = v32[1];
      v59 = v32[2];
      v35 = *(v33 + 16);
      v36 = 32;
      do
      {
        if (!v35)
        {
          goto LABEL_22;
        }

        v37 = *(v33 + v36);
        v36 += 8;
        --v35;
      }

      while (v37 != a5);

      v38 = sub_1DF2D834C(a6, v34);
      if (v38)
      {
        if (!v59)
        {

LABEL_41:

          goto LABEL_42;
        }

        if (v61)
        {
          v58[1] = v58;
          v62 = v60;
          v63 = v61;
          MEMORY[0x1EEE9AC00](v38);
          v57 = &v62;
          v39 = sub_1DF2CFBA8(sub_1DF2CFC70, v56, v59);

          if (v39)
          {
            goto LABEL_41;
          }

          goto LABEL_22;
        }
      }
    }

    goto LABEL_21;
  }

LABEL_22:
  if (*(v16 + 16))
  {
    v40 = sub_1DF2D6BE4(v17, v19);
    v42 = v41;

    if (v42)
    {
      v43 = *(*(v16 + 56) + 8 * v40);
      if (*(v43 + 16))
      {
        v44 = sub_1DF2DFEF4(a2, sub_1DF2CFB3C);
        if (v45)
        {
          v46 = (*(v43 + 56) + 24 * v44);
          v47 = *v46;
          v48 = v46[1];
          v49 = v46[2];
          v50 = *(*v46 + 16);
          v51 = 32;
          do
          {
            if (!v50)
            {
              goto LABEL_35;
            }

            v52 = *(v47 + v51);
            v51 += 8;
            --v50;
          }

          while (v52 != a5);

          v53 = sub_1DF2D834C(a6, v48);
          if (v53)
          {
            if (!v49)
            {

LABEL_42:

              v54 = 1;
              return v54 & 1;
            }

            if (v61)
            {
              v62 = v60;
              v63 = v61;
              MEMORY[0x1EEE9AC00](v53);
              v57 = &v62;
              v54 = sub_1DF2CFBA8(sub_1DF2CFC70, v56, v49);

              return v54 & 1;
            }
          }
        }
      }
    }
  }

  else
  {
  }

LABEL_35:

LABEL_36:
  v54 = 0;
  return v54 & 1;
}

uint64_t sub_1DF2DFB9C(void *a1)
{
  v2 = *(v1 + OBJC_IVAR___MCMEntitlementAccess_classes);
  v3 = [a1 containerClass];
  if (!*(v2 + 16))
  {
    return MEMORY[0x1E69E7CD0];
  }

  v4 = sub_1DF2DFEF4(v3, sub_1DF2CFB3C);
  if ((v5 & 1) == 0)
  {
    return MEMORY[0x1E69E7CD0];
  }

  v6 = *(*(v2 + 56) + 8 * v4);
  swift_bridgeObjectRetain_n();
  v10 = sub_1DF2DFC68(v6);
  v7 = sub_1DF3B0DCC();
  sub_1DF2E0BA8(v7, v8);

  return v10;
}

uint64_t sub_1DF2DFC68(uint64_t a1)
{
  result = MEMORY[0x1E12D2820](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_1DF2DC940(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

id MCMEntitlementAccess.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_1DF2DFEF4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(v2 + 40);
  sub_1DF3B109C();
  MEMORY[0x1E12D2A50](a1);
  v5 = sub_1DF3B10BC();

  return a2(a1, v5);
}

uint64_t sub_1DF2DFF6C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE30FD8, &unk_1DF3BDFB0);
  v37 = a2;
  result = sub_1DF3B0FDC();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = (*(v5 + 56) + 24 * v21);
      v24 = *v23;
      v38 = v23[1];
      v25 = v23[2];
      if ((v37 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      sub_1DF3B109C();
      MEMORY[0x1E12D2A50](v22);
      result = sub_1DF3B10BC();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = (*(v8 + 56) + 24 * v16);
      *v17 = v24;
      v17[1] = v38;
      v17[2] = v25;
      ++*(v8 + 16);
      v5 = v36;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1DF2E0228(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE30FF0, qword_1DF3BDFC8);
  v38 = a2;
  result = sub_1DF3B0FDC();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_1DF3B109C();
      sub_1DF3B0E0C();
      result = sub_1DF3B10BC();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1DF2E04D0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE30FE8, &qword_1DF3BDFC0);
  v33 = a2;
  result = sub_1DF3B0FDC();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      sub_1DF3B109C();
      MEMORY[0x1E12D2A50](v21);
      result = sub_1DF3B10BC();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void *sub_1DF2E0760()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE30FD8, &unk_1DF3BDFB0);
  v2 = *v0;
  v3 = sub_1DF3B0FCC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 56) + 24 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = v18[2];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v22 = (*(v4 + 56) + 24 * v17);
        *v22 = v20;
        v22[1] = v19;
        v22[2] = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1DF2E08DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE30FF0, qword_1DF3BDFC8);
  v2 = *v0;
  v3 = sub_1DF3B0FCC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1DF2E0A4C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE30FE8, &qword_1DF3BDFC0);
  v2 = *v0;
  v3 = sub_1DF3B0FCC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1DF2E0BA8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1DF3B109C();
  sub_1DF3B0E0C();
  v7 = sub_1DF3B10BC();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1DF3B100C() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1DF2DCE70();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_1DF2E0CE4(v9);
  *v2 = v20;
  return v13;
}

unint64_t sub_1DF2E0CE4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1DF3B0F4C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_1DF3B109C();

        sub_1DF3B0E0C();
        v15 = sub_1DF3B10BC();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

char *sub_1DF2E0EA8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE30FD0, &qword_1DF3BDFA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_1DF2E0FAC(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE30FE8, &qword_1DF3BDFC0);
  v3 = sub_1DF3B0FEC();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_1DF2DFEF4(v4, sub_1DF2CFB3C);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_1DF2DFEF4(v4, sub_1DF2CFB3C);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1DF2E10DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE30FF0, qword_1DF3BDFC8);
    v3 = sub_1DF3B0FEC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1DF2D6BE4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_1DF2E11E0(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE30FD8, &unk_1DF3BDFB0);
  v3 = sub_1DF3B0FEC();
  v4 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v6 = a1[7];
  v8 = sub_1DF2DFEF4(v4, sub_1DF2CFB3C);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v10 = v8;
  result = v5;
  v12 = a1 + 11;
  while (1)
  {
    *(v3 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    *(v3[6] + 8 * v10) = v4;
    v13 = (v3[7] + 24 * v10);
    *v13 = result;
    v13[1] = v7;
    v13[2] = v6;
    v14 = v3[2];
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      break;
    }

    v3[2] = v16;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v17 = v12 + 4;
    v4 = *(v12 - 3);
    v18 = *(v12 - 2);
    v7 = *(v12 - 1);
    v19 = *v12;

    v10 = sub_1DF2DFEF4(v4, sub_1DF2CFB3C);
    v12 = v17;
    v6 = v19;
    result = v18;
    if (v20)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

char *sub_1DF2E1348(uint64_t *a1)
{
  sub_1DF2D2724(a1, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE30FC0, &unk_1DF3BDF98);
  if (!swift_dynamicCast())
  {
    goto LABEL_9;
  }

  v2 = v25;
  if (!*(v25 + 16) || (v3 = sub_1DF2D6BE4(0x737365636361, 0xE600000000000000), (v4 & 1) == 0))
  {

LABEL_9:
    __swift_destroy_boxed_opaque_existential_0(a1);
    goto LABEL_10;
  }

  sub_1DF2D2724(*(v25 + 56) + 32 * v3, v24);
  if (swift_dynamicCast() & 1) == 0 || (sub_1DF2D8118(v22, v23), (v5))
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
LABEL_7:

LABEL_10:
    v6 = 0;
    goto LABEL_11;
  }

  if (*(v2 + 16) && (v8 = sub_1DF2D6BE4(0x6F6974617265706FLL, 0xEA0000000000736ELL), (v9 & 1) != 0) && (sub_1DF2D2724(*(v2 + 56) + 32 * v8, v24), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE30CF8, &qword_1DF3BD910), swift_dynamicCast()))
  {
    v10 = v22;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = (v10 + 40);
    v6 = MEMORY[0x1E69E7CC0];
    do
    {
      v13 = *(v12 - 1);
      v14 = *v12;

      v15 = sub_1DF2E4CA0(v13, v14);
      if ((v16 & 1) == 0)
      {
        v17 = v15;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1DF2E0EA8(0, *(v6 + 2) + 1, 1, v6);
        }

        v19 = *(v6 + 2);
        v18 = *(v6 + 3);
        if (v19 >= v18 >> 1)
        {
          v6 = sub_1DF2E0EA8((v18 > 1), v19 + 1, 1, v6);
        }

        *(v6 + 2) = v19 + 1;
        *&v6[8 * v19 + 32] = v17;
      }

      v12 += 2;
      --v11;
    }

    while (v11);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  if (!*(v6 + 2))
  {
    __swift_destroy_boxed_opaque_existential_0(a1);

    goto LABEL_7;
  }

  if (*(v2 + 16) && (v20 = sub_1DF2D6BE4(0x736E69616D6F64, 0xE700000000000000), (v21 & 1) != 0))
  {
    sub_1DF2D2724(*(v2 + 56) + 32 * v20, v24);
    __swift_destroy_boxed_opaque_existential_0(a1);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE30CF8, &qword_1DF3BD910);
    swift_dynamicCast();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(a1);
  }

LABEL_11:
  __swift_destroy_boxed_opaque_existential_0(v26);
  return v6;
}