@interface ProcessPhoto
@end

@implementation ProcessPhoto

void __captureDeferredPhotoProcessor_ProcessPhoto_block_invoke(uint64_t a1)
{
  v1 = a1;
  v91 = 0;
  v92 = &v91;
  v93 = 0x2020000000;
  v94 = 0x7FFFFFFFFFFFFFFFLL;
  v2 = *(*(a1 + 48) + 48);
  v64 = v1;
  if (v2 && (v3 = [v2 qosClass], v3 < qos_class_self()))
  {
    if (dword_1ED843F90)
    {
      v90 = 0;
      v89 = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    *(*(*(v1 + 40) + 8) + 24) = -16823;
    v55 = *(v1 + 56);
    v74[0] = MEMORY[0x1E69E9820];
    v74[1] = 3221225472;
    v74[2] = __captureDeferredPhotoProcessor_ProcessPhoto_block_invoke_187;
    v74[3] = &unk_1E798FC10;
    v74[4] = *(v1 + 40);
    v74[5] = v55;
    captureDeferredPhotoProcessor_performBlockOnWorkerQueueAsync(v55, v74);
  }

  else
  {
    v5 = &kFigCaptureFlatDictionaryAppleMakerNote_ModuleAndCalibrationValidationStatuses_opaque;
    if (dword_1ED843F90)
    {
      v90 = 0;
      v89 = OS_LOG_TYPE_DEFAULT;
      v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [+[BWDeferredTransactionBroker openTransaction:v61], "openTransaction:pid:", 2, *(*(v1 + 48) + 32)];
    v7 = *(v1 + 48);
    v8 = *(v7 + 64);
    if (v8)
    {
      if (dword_1ED843F90)
      {
        v90 = 0;
        v89 = OS_LOG_TYPE_DEFAULT;
        v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v10 = v90;
        if (os_log_type_enabled(v9, v89))
        {
          v11 = v10;
        }

        else
        {
          v11 = v10 & 0xFFFFFFFE;
        }

        if (v11)
        {
          v13 = *(v1 + 48);
          v12 = *(v1 + 56);
          v14 = *(v13 + 32);
          v15 = *(v13 + 24);
          v75 = 136316163;
          v76 = "captureDeferredPhotoProcessor_ProcessPhoto_block_invoke";
          v77 = 2048;
          v78 = v12;
          v79 = 1024;
          v80 = v14;
          v81 = 2113;
          *v82 = v15;
          *&v82[8] = 1024;
          *&v82[10] = v14;
          LODWORD(v62) = 44;
          v61 = &v75;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v8 = *(*(v1 + 48) + 64);
      }

      dispatch_source_cancel(v8);

      *(*(v1 + 48) + 64) = 0;
      if (dword_1ED843F90)
      {
        v90 = 0;
        v89 = OS_LOG_TYPE_DEFAULT;
        v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v17 = v90;
        if (os_log_type_enabled(v16, v89))
        {
          v18 = v17;
        }

        else
        {
          v18 = v17 & 0xFFFFFFFE;
        }

        if (v18)
        {
          v19 = *(v1 + 56);
          v20 = *(*(v1 + 48) + 32);
          v75 = 136315650;
          v76 = "captureDeferredPhotoProcessor_ProcessPhoto_block_invoke";
          v77 = 2048;
          v78 = v19;
          v79 = 1024;
          v80 = v20;
          LODWORD(v62) = 28;
          v61 = &v75;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      [+[BWDeferredTransactionBroker closeTransaction:v61], "closeTransaction:", 1];
      v7 = *(v1 + 48);
    }

    if ([*(v7 + 48) isEqual:*(v1 + 32)])
    {
      *(*(*(v1 + 40) + 8) + 24) = -16829;
    }

    else
    {
      v21 = *(*(v1 + 48) + 40);
      v72[0] = MEMORY[0x1E69E9820];
      v72[1] = 3221225472;
      v72[2] = __captureDeferredPhotoProcessor_ProcessPhoto_block_invoke_189;
      v72[3] = &unk_1E799BBB0;
      v73 = *(v1 + 64);
      v72[4] = &v91;
      [v21 enumerateObjectsUsingBlock:v72];
      if (v92[3] != 0x7FFFFFFFFFFFFFFFLL)
      {
        [*(*(v1 + 48) + 40) removeObjectAtIndex:?];
        if (dword_1ED843F90)
        {
          v90 = 0;
          v89 = OS_LOG_TYPE_DEFAULT;
          v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v23 = v90;
          if (os_log_type_enabled(v22, v89))
          {
            v24 = v23;
          }

          else
          {
            v24 = v23 & 0xFFFFFFFE;
          }

          if (v24)
          {
            v25 = *(v1 + 56);
            v26 = *(*(v1 + 48) + 32);
            v75 = 136315906;
            v76 = "captureDeferredPhotoProcessor_ProcessPhoto_block_invoke_2";
            v77 = 2048;
            v78 = v25;
            v79 = 1024;
            v80 = v26;
            v81 = 1024;
            *v82 = v26;
            LODWORD(v62) = 34;
            v61 = &v75;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        [+[BWDeferredTransactionBroker closeTransaction:v61], "closeTransaction:", 2];
      }

      if (FigCFEqual())
      {
        for (i = 0; i < [*(*(v1 + 48) + 40) count]; ++i)
        {
          v28 = [*(v1 + 32) qosClass];
          if (v28 >= [objc_msgSend(*(*(v1 + 48) + 40) objectAtIndexedSubscript:{i), "qosClass"}])
          {
            break;
          }
        }
      }

      else
      {
        v29 = [*(*(v1 + 48) + 40) count] + 1;
        do
        {
          i = v29 - 1;
          if (v29 == 1)
          {
            break;
          }

          v30 = [*(v1 + 32) qosClass];
          v31 = [objc_msgSend(*(*(v1 + 48) + 40) objectAtIndexedSubscript:{v29 - 2), "qosClass"}];
          --v29;
        }

        while (v30 > v31);
      }

      [*(*(v1 + 48) + 40) insertObject:*(v1 + 32) atIndex:i];
      v63 = i;
      if (dword_1ED843F90)
      {
        v90 = 0;
        v89 = OS_LOG_TYPE_DEFAULT;
        v32 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v33 = v90;
        if (os_log_type_enabled(v32, v89))
        {
          v34 = v33;
        }

        else
        {
          v34 = v33 & 0xFFFFFFFE;
        }

        if (v34)
        {
          v35 = *(v1 + 48);
          v36 = *(v1 + 56);
          v37 = *(v35 + 32);
          v38 = *(v35 + 24);
          v39 = [*(v35 + 40) count];
          if (v92[3] == 0x7FFFFFFFFFFFFFFFLL)
          {
            v40 = &stru_1F216A3D0;
          }

          else
          {
            v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"removed from position: %lu and re-", v92[3]];
          }

          v75 = 136316931;
          v76 = "captureDeferredPhotoProcessor_ProcessPhoto_block_invoke";
          v77 = 2048;
          v78 = v36;
          v79 = 1024;
          v80 = v37;
          v81 = 2113;
          *v82 = v38;
          *&v82[8] = 1024;
          *&v82[10] = v37;
          v83 = 2048;
          v84 = v39;
          v85 = 2114;
          v86 = v40;
          v87 = 2048;
          v88 = i;
          LODWORD(v62) = 74;
          v61 = &v75;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v5 = &kFigCaptureFlatDictionaryAppleMakerNote_ModuleAndCalibrationValidationStatuses_opaque;
      }

      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      obj = *(*(v1 + 48) + 40);
      v41 = [obj countByEnumeratingWithState:&v68 objects:v67 count:{16, v61, v62}];
      if (v41)
      {
        LODWORD(v42) = 0;
        v43 = *v69;
        do
        {
          v44 = 0;
          v42 = v42;
          v65 = v41;
          do
          {
            if (*v69 != v43)
            {
              objc_enumerationMutation(obj);
            }

            if (v5[996])
            {
              v45 = *(*(&v68 + 1) + 8 * v44);
              v90 = 0;
              v89 = OS_LOG_TYPE_DEFAULT;
              v46 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v47 = v90;
              if (os_log_type_enabled(v46, v89))
              {
                v48 = v47;
              }

              else
              {
                v48 = v47 & 0xFFFFFFFE;
              }

              if (v48)
              {
                v49 = v43;
                v50 = *(v64 + 56);
                v51 = *(*(v64 + 48) + 32);
                v52 = [v45 captureRequestIdentifier];
                v53 = [v45 photoIdentifier];
                v75 = 136316674;
                v54 = &stru_1F216A3D0;
                if (v63 == v42)
                {
                  v54 = @" <-- Just inserted";
                }

                v76 = "captureDeferredPhotoProcessor_ProcessPhoto_block_invoke";
                v77 = 2048;
                v78 = v50;
                v79 = 1024;
                v80 = v51;
                v81 = 1024;
                *v82 = v42;
                *&v82[4] = 2114;
                *&v82[6] = v52;
                v83 = 2114;
                v84 = v53;
                v85 = 2112;
                v86 = v54;
                LODWORD(v62) = 64;
                v61 = &v75;
                _os_log_send_and_compose_impl();
                v5 = &kFigCaptureFlatDictionaryAppleMakerNote_ModuleAndCalibrationValidationStatuses_opaque;
                v43 = v49;
                v41 = v65;
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            ++v42;
            ++v44;
          }

          while (v41 != v44);
          v41 = [obj countByEnumeratingWithState:&v68 objects:v67 count:16];
        }

        while (v41);
      }

      v1 = v64;
      captureDeferredPhotoProcessor_workloop(*(v64 + 56));
    }
  }

  if (*(*(*(v1 + 40) + 8) + 24) == -16829)
  {
    if (dword_1ED843F90)
    {
      v90 = 0;
      v89 = OS_LOG_TYPE_DEFAULT;
      v56 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v57 = v90;
      if (os_log_type_enabled(v56, v89))
      {
        v58 = v57;
      }

      else
      {
        v58 = v57 & 0xFFFFFFFE;
      }

      if (v58)
      {
        v59 = *(v64 + 56);
        v60 = *(*(v64 + 48) + 32);
        v75 = 136315906;
        v76 = "captureDeferredPhotoProcessor_ProcessPhoto_block_invoke";
        v77 = 2048;
        v78 = v59;
        v79 = 1024;
        v80 = v60;
        v81 = 1024;
        *v82 = v60;
        LODWORD(v62) = 34;
        v61 = &v75;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [+[BWDeferredTransactionBroker closeTransaction:v61], "closeTransaction:", 2];
  }

  _Block_object_dispose(&v91, 8);
}

uint64_t __captureDeferredPhotoProcessor_ProcessPhoto_block_invoke_189(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [objc_msgSend(a2 "captureRequestIdentifier")];
  if (result)
  {
    result = [objc_msgSend(a2 "photoIdentifier")];
    if (result)
    {
      *(*(a1[4] + 8) + 24) = a3;
      *a4 = 1;
    }
  }

  return result;
}

@end