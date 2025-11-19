int main(int argc, const char **argv, const char **envp)
{
  if (qword_100021B60 != -1)
  {
    dispatch_once(&qword_100021B60, &stru_10001CE30);
  }

  v3 = qword_100021B68;
  if (os_log_type_enabled(qword_100021B68, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "dtsecurity started.", v4, 2u);
  }

  xpc_main(sub_10000171C);
}

id sub_1000016D8()
{
  if (qword_100021B60 != -1)
  {
    sub_100012934();
  }

  v1 = qword_100021B68;

  return v1;
}

void sub_10000171C(void *a1)
{
  v1 = a1;
  if (qword_100021B60 != -1)
  {
    sub_100012934();
  }

  v2 = qword_100021B68;
  if (os_log_type_enabled(qword_100021B68, OS_LOG_TYPE_INFO))
  {
    v3 = v2;
    *buf = 67109376;
    pid = xpc_connection_get_pid(v1);
    v12 = 2048;
    v13 = v1;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Peer connected (%d : %p)", buf, 0x12u);
  }

  v4 = xpc_connection_copy_entitlement_value();
  v5 = v4;
  if (v4 && xpc_get_type(v4) == &_xpc_type_BOOL && xpc_BOOL_get_value(v5))
  {
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100001934;
    handler[3] = &unk_10001CE58;
    v6 = v1;
    v9 = v6;
    xpc_connection_set_event_handler(v6, handler);
    xpc_connection_activate(v6);
  }

  else
  {
    if (qword_100021B60 != -1)
    {
      sub_100012948();
    }

    v7 = qword_100021B68;
    if (os_log_type_enabled(qword_100021B68, OS_LOG_TYPE_ERROR))
    {
      sub_100012970(v7, v1);
    }

    xpc_connection_cancel(v1);
  }
}

void sub_1000018F0(id a1)
{
  qword_100021B68 = os_log_create("com.apple.dt.Instruments", "dtsecurity");

  _objc_release_x1();
}

void sub_100001934(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = &selRef_errorWithDomain_code_userInfo_;
  if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    v12 = *(a1 + 32);
    v13 = v3;
    reply = xpc_dictionary_create_reply(v13);
    string = xpc_dictionary_get_string(v13, "Message");
    if (!string)
    {
      if (qword_100021B60 != -1)
      {
        sub_100012934();
      }

      v33 = qword_100021B68;
      if (os_log_type_enabled(qword_100021B68, OS_LOG_TYPE_ERROR))
      {
        sub_100012BEC(v33);
      }

      goto LABEL_106;
    }

    v16 = string;
    if (qword_100021B60 != -1)
    {
      sub_100012934();
    }

    v17 = &selRef_errorWithDomain_code_userInfo_;
    v18 = qword_100021B68;
    if (os_log_type_enabled(qword_100021B68, OS_LOG_TYPE_INFO))
    {
      v19 = v18;
      *buf = 67109634;
      *&buf[4] = xpc_connection_get_pid(v12);
      *&buf[8] = 2048;
      *&buf[10] = v12;
      *&buf[18] = 2080;
      *&buf[20] = v16;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Event from peer (%d : %p): %s", buf, 0x1Cu);
    }

    if (strcmp(v16, "task_for_pid"))
    {
      if (!strcmp(v16, "debug_xpc_process") && xpc_message_has_privileges(v12))
      {
        v20 = [NSString stringWithUTF8String:xpc_dictionary_get_string(v13, "name")];
        v21 = objc_opt_class();
        v22 = xpc_dictionary_get_archived_object(v13, "archived_dictionary", v21);
        v23 = objc_opt_class();
        v24 = xpc_dictionary_get_archived_object(v13, "archived_array", v23);
        v25 = objc_opt_class();
        v26 = xpc_dictionary_get_archived_object(v13, "archived_options", v25);
        v27 = +[DTXPCServiceController sharedInstance];
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_100002C28;
        *&buf[24] = &unk_10001CE80;
        *&buf[32] = v12;
        [v27 registerClient:*&buf[32] forXPCService:v20 environment:v22 arguments:v24 options:v26 handler:buf];

        v17 = &selRef_errorWithDomain_code_userInfo_;
LABEL_21:
        v28 = 0;
LABEL_100:
        if (v4[364] != -1)
        {
          sub_100012948();
        }

        v72 = v17[365];
        if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
        {
          v73 = v72;
          pid = xpc_connection_get_pid(v12);
          name[0] = 67109632;
          name[1] = pid;
          v114 = 2048;
          v115 = v12;
          v116 = 1024;
          v117 = v28;
          _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_INFO, "Operation status (%d : %p): %d", name, 0x18u);
        }

        if (reply)
        {
          xpc_dictionary_set_int64(reply, "status", v28);
          xpc_connection_send_message(v12, reply);
        }

LABEL_106:

        goto LABEL_107;
      }

      if (!strcmp(v16, "process_watcher_connect") && xpc_message_has_privileges(v12))
      {
        v34 = xpc_dictionary_get_BOOL(v13, "track_expired");
        if (xpc_dictionary_get_BOOL(v13, "send_updates"))
        {
          *buf = _NSConcreteStackBlock;
          *&buf[8] = 3221225472;
          *&buf[16] = sub_100002D0C;
          *&buf[24] = &unk_10001CEA8;
          *&buf[32] = v12;
          v35 = objc_retainBlock(buf);
        }

        else
        {
          v35 = 0;
        }

        v28 = sub_100006218(v12, v34, v35);

        goto LABEL_100;
      }

      if (!strcmp(v16, "symbolicate_pid"))
      {
        int64 = xpc_dictionary_get_int64(v13, "pid");
        v45 = xpc_dictionary_get_BOOL(v13, "enable_dyld_notifications");
        v46 = sub_1000060F4(v12, int64, v45);
      }

      else
      {
        if (strcmp(v16, "deep_symbol_owner"))
        {
          if (!strcmp(v16, "process_watcher_copy_signatures"))
          {
            *buf = 0;
            name[0] = 0;
            v28 = sub_100006374(v12, buf, name);
            if (!v28)
            {
              xpc_dictionary_set_data(reply, "signatures_data", *buf, name[0]);
              if (*buf)
              {
                vm_deallocate(mach_task_self_, *buf, name[0]);
              }
            }

            goto LABEL_100;
          }

          if (!strcmp(v16, "vfs_trace_paths") && xpc_message_has_privileges(v12))
          {
            if (sysctlbyname("vfs.generic.trace_paths", 0, 0, 0, 0))
            {
LABEL_40:
              v36 = *__error();
              v28 = 5;
              goto LABEL_141;
            }

LABEL_140:
            v36 = 0;
            v28 = 0;
LABEL_141:
            if (reply)
            {
              xpc_dictionary_set_int64(reply, "errno_status", v36);
            }

            goto LABEL_100;
          }

          if (!strcmp(v16, "ktrace_bless") && xpc_message_has_privileges(v12))
          {
            if (xpc_dictionary_get_BOOL(v13, "bless"))
            {
              xpc_connection_get_pid(v12);
            }

            if (kperf_bless_set())
            {
              goto LABEL_40;
            }

            goto LABEL_140;
          }

          if (!strcmp(v16, "ktrace_machine_core_info") && xpc_message_has_privileges(v12))
          {
            if (!ktrace_machine_create_current())
            {
              v63 = 0;
              goto LABEL_187;
            }

            if ((ktrace_machine_cpu_type() & 0xFFFFFF) == 7)
            {
              v64 = ktrace_machine_physical_cpus();
              v65 = ktrace_machine_max_cpus();
              if (v65 <= v64)
              {
                v68 = objc_opt_new();
                v63 = 0;
                goto LABEL_183;
              }

              v66 = v65;
              v109 = reply;
              v67 = v65 / v64;
              v68 = objc_opt_new();
              if (v67 < 2)
              {
                v63 = 0;
                reply = v109;
                goto LABEL_183;
              }

              v69 = 0;
              do
              {
                v70 = [[DTCPUClusterInfo alloc] initWithClusterID:v69 / v67 flags:(v69 % v67 != 0) << 14];
                v71 = [NSNumber numberWithUnsignedInt:v69];
                [v68 setObject:v70 forKeyedSubscript:v71];

                v69 = (v69 + 1);
              }

              while (v69 != v66);
              v63 = [v68 copy];
              reply = v109;
              v4 = &selRef_errorWithDomain_code_userInfo_;
            }

            else
            {
              if (!&ktrace_machine_max_clusters)
              {
                v63 = 0;
LABEL_184:
                ktrace_machine_destroy();
                if (v63)
                {
                  v100 = [NSKeyedArchiver archivedDataWithRootObject:v63 requiringSecureCoding:1 error:0];
                  if (v100)
                  {
                    v101 = v100;
                    xpc_dictionary_set_data(reply, "ktrace_machine_cores_data", [v100 bytes], objc_msgSend(v100, "length"));

                    goto LABEL_69;
                  }
                }

LABEL_187:
                v28 = 46;
                goto LABEL_71;
              }

              v111 = reply;
              v68 = objc_opt_new();
              v88 = ktrace_machine_max_cpus();
              if (v88)
              {
                v89 = v88;
                v90 = 0;
                do
                {
                  name[0] = 0;
                  *buf = 0;
                  if (!ktrace_machine_cpu_cluster() && !ktrace_machine_cluster_flags())
                  {
                    v91 = [DTCPUClusterInfo alloc];
                    v92 = [(DTCPUClusterInfo *)v91 initWithClusterID:name[0] flags:buf[0] & 3];
                    if (v92)
                    {
                      v93 = v92;
                      [NSNumber numberWithUnsignedInt:v90];
                      v95 = v94 = v4;
                      [v68 setObject:v93 forKeyedSubscript:v95];

                      v4 = v94;
                    }
                  }

                  v90 = (v90 + 1);
                }

                while (v89 != v90);
              }

              v63 = [v68 copy];
              reply = v111;
            }

            v17 = &selRef_errorWithDomain_code_userInfo_;
LABEL_183:

            goto LABEL_184;
          }

          if (!strcmp(v16, "ktrace_file_message") && xpc_message_has_privileges(v12))
          {
            if (ktrace_file_create_memory())
            {
              if (ktrace_config_create_current())
              {
                if (ktrace_config_append() && (*buf = 0, *name = 0, !ktrace_file_get_memory()))
                {
                  xpc_dictionary_set_data(reply, "ktrace_config_data", *buf, *name);
                  v28 = 0;
                }

                else
                {
                  v28 = 5;
                }

                ktrace_config_destroy();
              }

              else
              {
                v28 = 5;
              }

              ktrace_file_close();
            }

            else
            {
              v28 = 5;
            }

            goto LABEL_100;
          }

          if (!strcmp(v16, "coreprofile_core_control") && xpc_message_has_privileges(v12))
          {
            v75 = xpc_dictionary_get_int64(v13, "coreCount");
            *buf = 0;
            data = xpc_dictionary_get_data(v13, "coreEnableArray", buf);
            v28 = coresSetEnabled(data, v75);
            goto LABEL_100;
          }

          if (!strcmp(v16, "stackshot") && xpc_message_has_privileges(v12))
          {
            if (stackshot_config_create())
            {
              if (stackshot_config_set_flags())
              {
                v77 = sub_1000016D8();
                if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
                {
                  sub_100012AE4();
                }

                v28 = 4;
                goto LABEL_193;
              }

              if (stackshot_capture_with_config())
              {
                v97 = sub_1000016D8();
                if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
                {
                  sub_100012B68();
                }
              }

              else
              {
                stackshot_buffer = stackshot_config_get_stackshot_buffer();
                stackshot_size = stackshot_config_get_stackshot_size();
                if (stackshot_buffer)
                {
                  xpc_dictionary_set_data(reply, "stackshot", stackshot_buffer, stackshot_size);
                  v28 = 0;
                  goto LABEL_193;
                }
              }

              v28 = 5;
LABEL_193:
              stackshot_config_dealloc();
              goto LABEL_100;
            }

LABEL_138:
            v28 = 8;
            goto LABEL_100;
          }

          if (strcmp(v16, "ktrace_start_file") || !xpc_message_has_privileges(v12))
          {
            if (!strcmp(v16, "ktrace_stop_file") && xpc_message_has_privileges(v12))
            {
              if (ktrace_current_session)
              {
                *buf = 0;
                v85 = [ktrace_current_session stopWithError:buf];
                v63 = *buf;
                if (dword_1000218E8 == -1)
                {
                  v28 = 0;
                }

                else if (kperf_bless_set())
                {
                  v28 = 5;
                }

                else
                {
                  v28 = 0;
                }

                if ((v85 & 1) == 0)
                {
                  if (v63)
                  {
                    v98 = [NSKeyedArchiver archivedDataWithRootObject:v63 requiringSecureCoding:1 error:0];
                    xpc_dictionary_set_data(reply, "ns_error", [v98 bytes], objc_msgSend(v98, "length"));
                  }

                  v28 = 5;
                }

                v99 = ktrace_current_session;
                ktrace_current_session = 0;

                dword_1000218E8 = -1;
                goto LABEL_71;
              }
            }

            else
            {
              if (!strcmp(v16, "processor_trace_version"))
              {
                v86 = +[DTProcessorTraceRecorder recordingVersionString];
                v87 = v86;
                if (v86)
                {
                  xpc_dictionary_set_string(reply, "processor_trace_version", [v86 UTF8String]);
                }

                goto LABEL_21;
              }

              if (!strcmp(v16, "processor_trace_va_buffer"))
              {
                xpc_dictionary_set_BOOL(reply, "processor_trace_va_buffer", +[DTProcessorTraceRecorder supportsVABufferForXNU]);
                goto LABEL_21;
              }
            }

            goto LABEL_138;
          }

          v78 = xpc_dictionary_dup_fd(v13, "ktrace_file_fd");
          *buf = 0;
          v79 = xpc_dictionary_get_data(v13, "ktrace_session_config", buf);
          name[0] = -1;
          if (v79)
          {
            v110 = v78;
            v80 = [NSData dataWithBytesNoCopy:v79 length:*buf freeWhenDone:0];
            v81 = [NSSet setWithObjects:objc_opt_class(), 0];
            v112 = 0;
            v82 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v81 fromData:v80 error:&v112];
            v83 = v112;

            v4 = &selRef_errorWithDomain_code_userInfo_;
            if (v83)
            {
              v84 = sub_1000016D8();
              if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
              {
                sub_100012A18(v83);
              }
            }

            v17 = &selRef_errorWithDomain_code_userInfo_;
            if (v82)
            {
              if (sub_100002E00(v82, v110, name))
              {
                v28 = 0;
LABEL_165:

                goto LABEL_100;
              }

              v28 = 5;
              if (name[0] == -1 || !reply)
              {
                goto LABEL_165;
              }

              xpc_dictionary_set_int64(reply, "errno_status", name[0]);
LABEL_164:
              v28 = 5;
              goto LABEL_165;
            }
          }

          else
          {
            v96 = sub_1000016D8();
            if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
            {
              sub_100012AA0(v96);
            }
          }

          xpc_dictionary_set_int64(reply, "errno_status", -1);
          v82 = 0;
          goto LABEL_164;
        }

        v61 = xpc_dictionary_get_int64(v13, "pid");
        uuid = xpc_dictionary_get_uuid(v13, "uuid");
        v46 = sub_100005FD4(v12, v61, uuid);
      }

      v63 = v46;
      if (!v46)
      {
        v28 = 8;
        goto LABEL_71;
      }

      xpc_dictionary_set_data(reply, "signatures_data", [v46 bytes], objc_msgSend(v46, "length"));
LABEL_69:
      v28 = 0;
LABEL_71:

      goto LABEL_100;
    }

    v108 = reply;
    v37 = v12;
    v107 = v13;
    v38 = v13;
    v39 = xpc_dictionary_get_int64(v38, "pid");
    v40 = DVTIUUidForPid(v39);
    v41 = xpc_connection_get_pid(v37);
    v42 = DVTIUUidForPid(v41);
    if (v42)
    {
      v43 = xpc_message_has_privileges(v37);
    }

    else
    {
      v43 = 1;
    }

    name[0] = 0;
    v47 = task_for_pid(mach_task_self_, v39, name);
    if (v47)
    {
      v28 = v47;
      v4 = &selRef_errorWithDomain_code_userInfo_;
      v48 = v40;
      if (qword_100021B60 != -1)
      {
        sub_100012948();
      }

      v49 = qword_100021B68;
      if (os_log_type_enabled(qword_100021B68, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109632;
        *&buf[4] = v41;
        *&buf[8] = 1024;
        *&buf[10] = v42;
        *&buf[14] = 1024;
        *&buf[16] = v48;
        _os_log_error_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "Caller: {%u:%u} failed to get task_control_t for Target: %u", buf, 0x14u);
      }
    }

    else
    {
      v105 = v12;
      v104 = v40;
      v50 = v40 == v42;
      v51 = DVTIsProcessDebuggable(name[0]);
      v52 = DVTIsSimulatorProcess();
      v106 = (v50 | v43) & (v51 | v52);
      if (qword_100021B60 != -1)
      {
        sub_100012948();
      }

      v53 = qword_100021B68;
      if (os_log_type_enabled(qword_100021B68, OS_LOG_TYPE_INFO))
      {
        if (v51)
        {
          v54 = "debuggable";
        }

        else
        {
          v54 = "non-debuggable";
        }

        if (v52)
        {
          v55 = ", simulated";
        }

        else
        {
          v55 = "";
        }

        v56 = v53;
        v57 = xpc_message_has_privileges(v37);
        *buf = 67110914;
        v58 = "UserProcess";
        *&buf[4] = v41;
        *&buf[8] = 1024;
        *&buf[10] = v42;
        if (v57)
        {
          v58 = "AnyProcess";
        }

        *&buf[14] = 1024;
        v59 = "success";
        *&buf[16] = v39;
        if ((v106 & 1) == 0)
        {
          v59 = "fail";
        }

        *&buf[20] = 1024;
        *&buf[22] = v104;
        *&buf[26] = 2080;
        *&buf[28] = v54;
        *&buf[36] = 2080;
        *&buf[38] = v55;
        v119 = 2080;
        v120 = v58;
        v121 = 2080;
        v122 = v59;
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_INFO, "Caller: {%u:%u} requesting task_control_t for Target: {%u:%u} (%s%s) [Authorization: %s] - %s", buf, 0x42u);
      }

      v12 = v105;
      v4 = &selRef_errorWithDomain_code_userInfo_;
      if (v106)
      {
        v60 = name[0];

        reply = v108;
        xpc_dictionary_set_mach_send();
        mach_port_deallocate(mach_task_self_, v60);
        v28 = 0;
        v13 = v107;
LABEL_78:
        v17 = &selRef_errorWithDomain_code_userInfo_;
        goto LABEL_100;
      }

      mach_port_deallocate(mach_task_self_, name[0]);
      v28 = 8;
    }

    v13 = v107;
    reply = v108;

    goto LABEL_78;
  }

  if (v3 == &_xpc_error_connection_interrupted || v3 == &_xpc_error_connection_invalid)
  {
    if (qword_100021B60 != -1)
    {
      sub_100012934();
    }

    v6 = qword_100021B68;
    if (os_log_type_enabled(qword_100021B68, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v8 = v6;
      v9 = xpc_connection_get_pid(v7);
      v10 = *(a1 + 32);
      *buf = 67109376;
      *&buf[4] = v9;
      *&buf[8] = 2048;
      *&buf[10] = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Peer disconnected (%d : %p)", buf, 0x12u);
    }

    v11 = +[DTXPCServiceController sharedInstance];
    [v11 unregisterClient:*(a1 + 32) withIdentifier:0 parent:0];

    sub_100006494(*(a1 + 32));
  }

  else
  {
    if (qword_100021B60 != -1)
    {
      sub_100012934();
    }

    v29 = qword_100021B68;
    if (os_log_type_enabled(qword_100021B68, OS_LOG_TYPE_INFO))
    {
      v30 = *(a1 + 32);
      v12 = v29;
      v31 = xpc_connection_get_pid(v30);
      v32 = *(a1 + 32);
      *buf = 138412802;
      *&buf[4] = v3;
      *&buf[12] = 1024;
      *&buf[14] = v31;
      *&buf[18] = 2048;
      *&buf[20] = v32;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Unexpected event %@ (%d : %p)", buf, 0x1Cu);
LABEL_107:
    }
  }
}

void sub_100002C28(uint64_t a1, void *a2, int a3, int a4, int a5)
{
  v9 = a2;
  xdict = xpc_dictionary_create(0, 0, 0);
  v10 = [v9 UTF8String];

  xpc_dictionary_set_string(xdict, "name", v10);
  xpc_dictionary_set_int64(xdict, "pid", a3);
  xpc_dictionary_set_int64(xdict, "host_pid", a4);
  xpc_dictionary_set_fd(xdict, "outputfd", a5);
  xpc_connection_send_message(*(a1 + 32), xdict);
}

void sub_100002D0C(uint64_t a1, int a2, int a3, const __CFData *a4)
{
  v8 = xpc_dictionary_create(0, 0, 0);
  xdict = v8;
  if (a3 == 256)
  {
    v9 = "dyld_load";
  }

  else
  {
    v9 = "dyld_unload";
  }

  xpc_dictionary_set_string(v8, "Message", v9);
  xpc_dictionary_set_int64(xdict, "pid", a2);
  BytePtr = CFDataGetBytePtr(a4);
  Length = CFDataGetLength(a4);
  xpc_dictionary_set_data(xdict, "signatures_data", BytePtr, Length);
}

BOOL sub_100002E00(void *a1, uint64_t a2, int *a3)
{
  v5 = a1;
  v14 = -1;
  kperf_bless_get();
  getpid();
  if (kperf_bless_set())
  {
    v6 = 0;
    if (a3)
    {
      *a3 = *__error();
    }
  }

  else
  {
    v13 = 0;
    v7 = [[DTKTraceSessionCreator alloc] initWithFD:a2 configuration:v5 error:&v13];
    v8 = v13;
    v9 = v8;
    v6 = v7 != 0;
    if (v7)
    {
      v10 = [v5 useExisting];
      v11 = v14;
      if (v10)
      {
        kperf_bless_set();
      }

      else
      {
        objc_storeStrong(&ktrace_current_session, v7);
        dword_1000218E8 = v11;
      }
    }

    else if (a3)
    {
      *a3 = [v8 code];
    }
  }

  return v6;
}

void sub_100002F14(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t sub_1000030A0(uint64_t a1, uint64_t a2, dispatch_object_t object)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 24) = object;
  dispatch_retain(object);
  return a1;
}

void sub_100003104(uint64_t a1, int a2)
{
  v4 = sub_100005868();
  if (qword_100021B70 != -1)
  {
    sub_100012C70();
  }

  v5 = qword_100021B78;
  if (os_log_type_enabled(qword_100021B78, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 8);
    *buf = 67109376;
    v13 = v6;
    v14 = 1024;
    v15 = a2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Changing tracking state: %d->%d", buf, 0xEu);
  }

  v7 = *(a1 + 8);
  if (v7 != 1 || (a2 & 1) != 0)
  {
    if (a2 && (v7 & 1) == 0)
    {
      *buf = 0;
      *(a1 + 8) = a2;
      sub_1000058D8(v4, buf);
      if ((*buf - 1) > 0xFFFFFFFD)
      {
        *(a1 + 16) = 0;
        if (qword_100021B70 != -1)
        {
          sub_100012C84();
        }

        v9 = qword_100021B78;
        if (os_log_type_enabled(qword_100021B78, OS_LOG_TYPE_ERROR))
        {
          *v10 = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to connect to host port", v10, 2u);
        }

        *(a1 + 8) = 0;
      }

      else
      {
        mach_port_set_context(mach_task_self_, *buf, *a1);
        v8 = dispatch_source_create(&_dispatch_source_type_mach_recv, *buf, 0, *(a1 + 24));
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 0x40000000;
        handler[2] = sub_10000332C;
        handler[3] = &unk_10001CF48;
        handler[4] = v4;
        dispatch_source_set_event_handler(v8, handler);
        *(a1 + 16) = v8;
        dispatch_resume(v8);
      }
    }
  }

  else
  {
    *(a1 + 8) = a2;
    dispatch_source_cancel(*(a1 + 16));
    dispatch_release(*(a1 + 16));
    sub_100005B54(v4);
  }
}

void sub_100004048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100004074(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000408C(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = [[DVTProviderLogger alloc] initWithProviderName:v8];
  [*(a1 + 32) addObject:v10];
  v11 = *(a1 + 48);
  [v8 UTF8String];
  LODWORD(v11) = ktrace_session_provide();

  if (v11)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    if (qword_100021B88 != -1)
    {
      sub_100012D4C();
    }

    v12 = qword_100021B80;
    if (os_log_type_enabled(qword_100021B80, OS_LOG_TYPE_ERROR))
    {
      sub_100012D60(v8, v12);
    }

    *a4 = 1;
  }
}

void sub_100004698(id a1)
{
  qword_100021B80 = os_log_create("com.apple.dt.Instruments", "dtktracehelpers");

  _objc_release_x1();
}

uint64_t sub_1000046DC(uint64_t a1, id a2, int a3)
{
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 1065353216;
  *(a1 + 48) = a3;
  *(a1 + 56) = objc_retainBlock(a2);
  *a1 = CFDictionaryCreateMutable(0, 0, 0, &kCSTypeDictionaryValueCallBacks);
  return a1;
}

uint64_t sub_10000476C(uint64_t a1)
{
  CFRelease(*a1);

  sub_1000050D0(a1 + 8);
  return a1;
}

uint64_t *sub_1000047C4(uint64_t *result, int a2)
{
  v6 = a2;
  if (*(result + 12))
  {
    v2 = result;
    result = sub_10000511C(result + 1, &v6);
    if (!result)
    {
      CSSymbolicatorCreateWithPid();
      if (qword_100021B90 != -1)
      {
        sub_100012E80();
      }

      v3 = qword_100021B98;
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        CSSymbolicatorGetAOutSymbolOwner();
        Name = CSSymbolOwnerGetName();
        *buf = 136315394;
        *&buf[4] = Name;
        v8 = 1024;
        v9 = v6;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Created symbolicator for %s[%u]\n", buf, 0x12u);
      }

      Signature = CSSymbolicatorCreateSignature();
      if (Signature)
      {
        *buf = &v6;
        sub_1000051D0(v2 + 1, &v6)[3] = Signature;
      }

      return CSRelease();
    }
  }

  return result;
}

void sub_10000493C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Signature = CSSymbolOwnerCreateSignature();
  if (Signature)
  {
    v9 = Signature;
    v10 = *(a1 + 56);
    if (v10)
    {
      (*(v10 + 16))(v10, a4, a5, v9);
    }

    CFRelease(v9);
  }

  else
  {
    if (qword_100021B90 != -1)
    {
      sub_100012EA8();
    }

    v11 = qword_100021B98;
    if (os_log_type_enabled(qword_100021B98, OS_LOG_TYPE_ERROR))
    {
      v12[0] = 67109120;
      v12[1] = a4;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "failed to create signature for %d\n", v12, 8u);
    }
  }
}

uint64_t sub_100004A7C(CFDictionaryRef *a1, int a2, uint64_t a3)
{
  Value = CFDictionaryGetValue(*a1, a2);
  if (!a3)
  {
    return 0;
  }

  if (!Value)
  {
    return 0;
  }

  v6 = *Value;
  v5 = Value[1];
  CSSymbolicatorGetSymbolOwnerWithCFUUIDBytesAtTime();
  if (CSIsNull())
  {
    return 0;
  }

  return CSSymbolOwnerCreateSignature();
}

uint64_t sub_100004B00(CFDictionaryRef *a1, int a2, int a3)
{
  v6 = a2;
  v7 = CFDictionaryGetValue(*a1, a2);
  if (v7)
  {
    v8 = v7;
    if (qword_100021B90 != -1)
    {
      sub_100012EA8();
    }

    v9 = qword_100021B98;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = *v8;
      v11 = v8[1];
      CSSymbolicatorGetAOutSymbolOwner();
      *buf = 136315394;
      Name = CSSymbolOwnerGetName();
      v23 = 1024;
      LODWORD(v24) = a2;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Returning cached live symbolicator for %s[%u]", buf, 0x12u);
    }

    v12 = *v8;
    v13 = v8[1];
    return CSSymbolicatorCreateSignature();
  }

  else
  {
    if (getpid() == a2)
    {
      v15 = 0;
    }

    else
    {
      v15 = a3;
    }

    value[0] = CSSymbolicatorCreateWithPidFlagsAndNotification();
    value[1] = v16;
    Signature = CSSymbolicatorCreateSignature();
    if (qword_100021B90 != -1)
    {
      sub_100012E80();
    }

    v17 = qword_100021B98;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      if (v15)
      {
        v18 = "tracking ";
      }

      else
      {
        v18 = "";
      }

      CSSymbolicatorGetAOutSymbolOwner();
      *buf = 136315650;
      Name = v18;
      v23 = 2080;
      v24 = CSSymbolOwnerGetName();
      v25 = 1024;
      v26 = a2;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Created live %ssymbolicator for %s[%u]", buf, 0x1Cu);
    }

    CFDictionarySetValue(*a1, v6, value);
    CSRelease();
  }

  return Signature;
}

void sub_100004DA8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if ((a2 & 0xFFFFFFFE) == 0x100)
  {
    v6 = *(a1 + 32);
    v7 = a3[2];
    v8 = a3[3];
    if (qword_100021B90 != -1)
    {
      sub_100012EA8();
    }

    v9 = qword_100021B98;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = "unload";
      if (a2 == 256)
      {
        v10 = "load";
      }

      v18 = v10;
      v11 = *a3;
      v12 = a3[1];
      CSSymbolicatorGetAOutSymbolOwner();
      Name = CSSymbolOwnerGetName();
      v14 = *(a1 + 40);
      BaseAddress = CSSymbolOwnerGetBaseAddress();
      v16 = CSSymbolOwnerGetName();
      if (a2 == 256)
      {
        LoadTimestamp = CSSymbolOwnerGetLoadTimestamp();
      }

      else
      {
        LoadTimestamp = CSSymbolOwnerGetUnloadTimestamp();
      }

      *buf = 136316418;
      v20 = v18;
      v21 = 2080;
      v22 = Name;
      v23 = 1024;
      v24 = v14;
      v25 = 2048;
      v26 = BaseAddress;
      v27 = 2080;
      v28 = v16;
      v29 = 2048;
      v30 = LoadTimestamp;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Sending %s notification for %s[%u]: %#llx %s at time %llu", buf, 0x3Au);
    }

    sub_10000493C(v6, v7, v8, *(a1 + 40), a2);
  }
}

__CFArray *sub_100004F80(void *a1)
{
  if (qword_100021B90 != -1)
  {
    sub_100012EA8();
  }

  v2 = qword_100021B98;
  if (os_log_type_enabled(qword_100021B98, OS_LOG_TYPE_INFO))
  {
    v3 = a1[4];
    v7 = 134217984;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Returning %lu symbolicator signatures", &v7, 0xCu);
  }

  Mutable = CFArrayCreateMutable(0, a1[4], &kCFTypeArrayCallBacks);
  for (i = a1[3]; i; i = *i)
  {
    CFArrayAppendValue(Mutable, i[3]);
    CFRelease(i[3]);
  }

  sub_10000568C(a1 + 1);
  return Mutable;
}

void sub_10000508C(id a1)
{
  qword_100021B98 = os_log_create("com.apple.dt.dtsecurity.xpc", "ProcessTracking");

  _objc_release_x1();
}

uint64_t sub_1000050D0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t *sub_10000511C(void *a1, int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *sub_1000051D0(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_100005404()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void sub_100005438(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_100005528(a1, prime);
    }
  }
}

void sub_100005528(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_100005404();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void *sub_10000568C(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

uint64_t coresSetEnabled(uint64_t a1, unsigned int a2)
{
  result = 4;
  if (a1 && a2)
  {
    v5 = mach_host_self();
    host_info_outCnt = 12;
    v11 = 0u;
    v12 = 0u;
    *host_info_out = 0u;
    if (host_info(v5, 1, host_info_out, &host_info_outCnt))
    {
      return 5;
    }

    if (host_info_out[0] >= a2)
    {
      out_processor_list = 0;
      out_processor_listCnt = 0;
      if (host_processors(v5, &out_processor_list, &out_processor_listCnt))
      {
        return 5;
      }

      if (a2 >= 2)
      {
        v6 = 1;
        do
        {
          v7 = out_processor_list[v6];
          if (*(a1 + v6))
          {
            processor_start(v7);
          }

          else
          {
            processor_exit(v7);
          }

          ++v6;
        }

        while (a2 != v6);
      }

      return 0;
    }

    else
    {
      return 4;
    }
  }

  return result;
}

BOOL DTProcessShouldCaptureOutputWithOptions(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:@"CaptureOutput"];
  v3 = [v2 BOOLValue];

  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [v1 objectForKeyedSubscript:@"iODestinationKey"];
    v6 = [v5 intValue];

    v4 = v6 == 0;
  }

  return v4;
}

uint64_t sub_100005868()
{
  if (qword_100021BA0 != -1)
  {
    sub_100012EBC();
  }

  return qword_100021BA8;
}

void sub_1000058D8(mach_port_name_t *name, mach_port_name_t *a2)
{
  v4 = mach_task_self_;
  v6 = name + 41;
  v5 = name[41];
  if (v5 + 1 >= 2)
  {
    mach_port_mod_refs(mach_task_self_, v5, 1u, -1);
    *v6 = 0;
  }

  inserted = mach_port_allocate(v4, 1u, v6);
  if (inserted || (inserted = mach_port_insert_right(v4, *v6, *v6, 0x14u)) != 0 || (v8 = mach_host_self(), name[40] = 10, (inserted = host_swap_exception_ports(v8, 0x200u, name[41], -2147483644, 5, name, name + 40, name + 10, name + 20, name + 30)) != 0))
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = inserted;
  }

  if (qword_100021BB0 != -1)
  {
    sub_100012ED0();
  }

  v9 = qword_100021BB8;
  if (os_log_type_enabled(qword_100021BB8, OS_LOG_TYPE_INFO))
  {
    v10 = *v6;
    *buf = 67174657;
    v13 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Connected to host exception port, listening on %{private}#x", buf, 8u);
  }

  *a2 = *v6;
}

uint64_t sub_100005B54(uint64_t result)
{
  v1 = *(result + 160);
  if (v1)
  {
    if (v1 >= 0xB)
    {
      sub_100012F0C();
    }

    v2 = result;
    v3 = mach_task_self_;
    v4 = mach_host_self();
    if (*(v2 + 160))
    {
      v5 = v4;
      v6 = 0;
      v7 = v2;
      do
      {
        if (host_set_exception_ports(v5, *v7, *(v7 + 40), *(v7 + 80), *(v7 + 120)))
        {
          if (qword_100021BB0 != -1)
          {
            sub_100012EE4();
          }

          v8 = qword_100021BB8;
          if (!os_log_type_enabled(qword_100021BB8, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_15;
          }

          v9 = *v7;
          *buf = 67109120;
          v16 = v9;
          v10 = v8;
          v11 = OS_LOG_TYPE_ERROR;
          v12 = "Failed to restore a host port exception handler: 0x%x";
          v13 = 8;
        }

        else
        {
          if (qword_100021BB0 != -1)
          {
            sub_100012EE4();
          }

          v14 = qword_100021BB8;
          if (!os_log_type_enabled(qword_100021BB8, OS_LOG_TYPE_INFO))
          {
            goto LABEL_15;
          }

          *buf = 0;
          v10 = v14;
          v11 = OS_LOG_TYPE_INFO;
          v12 = "Restored previous host exception port";
          v13 = 2;
        }

        _os_log_impl(&_mh_execute_header, v10, v11, v12, buf, v13);
LABEL_15:
        mach_port_deallocate(v3, *(v7 + 40));
        ++v6;
        v7 += 4;
      }

      while (v6 < *(v2 + 160));
    }

    *(v2 + 160) = 0;
    result = mach_port_mod_refs(v3, *(v2 + 164), 1u, -1);
    *(v2 + 164) = 0;
  }

  return result;
}

uint64_t sub_100005D18(mach_port_name_t a1, uint64_t a2, mach_port_name_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 + 8);
  if (qword_100021BB0 != -1)
  {
    sub_100012ED0();
  }

  v8 = qword_100021BB8;
  if (os_log_type_enabled(qword_100021BB8, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    *&buf[4] = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Observed process termination for pid: %u", buf, 8u);
  }

  *buf = 0;
  if (!mach_port_get_context(mach_task_self_, a1, buf))
  {
    (***buf)(*buf, v7);
  }

  if (qword_100021BB0 != -1)
  {
    sub_100012EE4();
  }

  v9 = qword_100021BB8;
  if (os_log_type_enabled(qword_100021BB8, OS_LOG_TYPE_INFO))
  {
    v11[0] = 67109120;
    v11[1] = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Handled process termination for pid: %u", v11, 8u);
  }

  mach_port_deallocate(mach_task_self_, a3);
  return 0;
}

void sub_100005EB4(uint64_t a1)
{
  v1 = mach_msg_server_once(mach_exc_server, 0x40000u, *(a1 + 164), 0);
  if (v1)
  {
    v2 = v1;
    if (qword_100021BB0 != -1)
    {
      sub_100012ED0();
    }

    v3 = qword_100021BB8;
    if (os_log_type_enabled(qword_100021BB8, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315394;
      v5 = mach_error_string(v2);
      v6 = 1024;
      v7 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failure processing exception: %s (%#x)", &v4, 0x12u);
    }
  }
}

uint64_t sub_100005FD4(uint64_t a1, int a2, uint64_t a3)
{
  if (qword_1000219B8 != -1)
  {
    sub_100012F38();
  }

  v6 = off_1000219B0;

  return sub_100006040(v6, a1, a2, a3);
}

uint64_t sub_100006040(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v4 = *(a1 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1000068B0;
  block[3] = &unk_10001D258;
  block[4] = &v9;
  block[5] = a1;
  v8 = a3;
  block[6] = a2;
  block[7] = a4;
  dispatch_sync(v4, block);
  v5 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v5;
}

uint64_t sub_1000060F4(uint64_t a1, int a2, char a3)
{
  if (qword_1000219B8 != -1)
  {
    sub_100012F38();
  }

  v6 = off_1000219B0;

  return sub_100006160(v6, a1, a2, a3);
}

uint64_t sub_100006160(uint64_t a1, uint64_t a2, int a3, char a4)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  v4 = *(a1 + 8);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_100006C0C;
  v7[3] = &unk_10001D2C0;
  v7[4] = &v10;
  v7[5] = a1;
  v7[6] = a2;
  v8 = a3;
  v9 = a4;
  dispatch_sync(v4, v7);
  v5 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v5;
}

uint64_t sub_100006218(uint64_t a1, char a2, uint64_t a3)
{
  if (qword_1000219B8 != -1)
  {
    sub_100012F38();
  }

  v6 = off_1000219B0;

  return sub_100006284(v6, a1, a2, a3);
}

uint64_t sub_100006284(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = *(a1 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1000075D0;
  block[3] = &unk_10001D380;
  block[4] = a1;
  block[5] = a2;
  dispatch_sync(v8, block);
  v9 = *(a1 + 8);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 0x40000000;
  v11[2] = sub_100006CE8;
  v11[3] = &unk_10001D2E8;
  v11[5] = a1;
  v11[6] = a2;
  v11[4] = a4;
  v12 = a3;
  dispatch_sync(v9, v11);
  return 0;
}

uint64_t sub_100006374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1000219B8 != -1)
  {
    sub_100012F38();
  }

  v6 = off_1000219B0;

  return sub_1000063E0(v6, a1, a2, a3);
}

uint64_t sub_1000063E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  v4 = *(a1 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1000072B8;
  block[3] = &unk_10001D360;
  block[4] = &v8;
  block[5] = a1;
  block[6] = a2;
  block[7] = a3;
  block[8] = a4;
  dispatch_sync(v4, block);
  v5 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v5;
}

void sub_100006494(uint64_t a1)
{
  if (qword_1000219B8 != -1)
  {
    sub_100012F38();
  }

  v2 = *(off_1000219B0 + 1);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = sub_1000075D0;
  v3[3] = &unk_10001D380;
  v3[4] = off_1000219B0;
  v3[5] = a1;
  dispatch_sync(v2, v3);
}

uint64_t sub_100006598(uint64_t a1)
{
  *a1 = off_10001D1F0;
  v2 = dispatch_queue_create("pid_tracking_service", 0);
  *(a1 + 24) = 0u;
  *(a1 + 8) = v2;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 1065353216;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  sub_1000030A0(a1 + 80, a1, v2);
  signal(15, 1);
  v3 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, *(a1 + 8));
  *(a1 + 16) = v3;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 0x40000000;
  handler[2] = sub_1000066D0;
  handler[3] = &unk_10001D208;
  handler[4] = a1;
  dispatch_source_set_event_handler(v3, handler);
  dispatch_resume(*(a1 + 16));
  return a1;
}

void sub_1000066AC(_Unwind_Exception *a1)
{
  sub_1000030D8(v1 + 80);
  sub_100006760(v2);
  _Unwind_Resume(a1);
}

void sub_1000066DC(uint64_t a1, int a2)
{
  dispatch_assert_queue_V2(*(a1 + 8));
  for (i = *(a1 + 40); i; i = *i)
  {
    sub_1000047C4(i[3], a2);
  }
}

void sub_100006728(uint64_t a1)
{
  sub_100006850(a1);

  operator delete();
}

uint64_t sub_100006760(uint64_t a1)
{
  sub_10000679C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_10000679C(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[4];
      if (v4)
      {
        sub_1000067E4(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_1000067E4(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t sub_100006850(uint64_t a1)
{
  *a1 = off_10001D1F0;
  dispatch_release(*(a1 + 8));
  dispatch_release(*(a1 + 16));
  sub_1000030D8(a1 + 80);
  sub_100006760(a1 + 24);
  return a1;
}

uint64_t sub_1000068B0(uint64_t a1)
{
  result = sub_1000068EC(*(a1 + 40), *(a1 + 48), *(a1 + 64), *(a1 + 56));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_1000068EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  dispatch_assert_queue_V2(*(a1 + 8));
  sub_100006988(a1, a2, &v10);
  if (v10)
  {
    v8 = sub_100004A7C(v10, a3, a4);
  }

  else
  {
    v8 = 0;
  }

  if (v11)
  {
    sub_1000067E4(v11);
  }

  return v8;
}

void sub_100006970(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1000067E4(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100006988(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v10 = a2;
  dispatch_assert_queue_V2(*(a1 + 8));
  v5 = sub_100006AF0((a1 + 24), &v10);
  if (v5)
  {
    v6 = v5;
    if (qword_100021BC0 != -1)
    {
      sub_100012F4C();
    }

    v7 = qword_100021BC8;
    if (os_log_type_enabled(qword_100021BC8, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v12 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Found client %p", buf, 0xCu);
    }

    v8 = v6[4];
    *a3 = v6[3];
    a3[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    if (qword_100021BC0 != -1)
    {
      sub_100012F4C();
    }

    v9 = qword_100021BC8;
    if (os_log_type_enabled(qword_100021BC8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v12 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to find client %p", buf, 0xCu);
    }

    *a3 = 0;
    a3[1] = 0;
  }
}

void *sub_100006AF0(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v10 == v5)
      {
        if (result[2] == *a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_100006C0C(uint64_t a1)
{
  result = sub_100006C4C(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 60));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_100006C4C(uint64_t a1, uint64_t a2, int a3, int a4)
{
  dispatch_assert_queue_V2(*(a1 + 8));
  sub_100006988(a1, a2, &v10);
  if (v10)
  {
    v8 = sub_100004B00(v10, a3, a4);
  }

  else
  {
    v8 = 0;
  }

  if (v11)
  {
    sub_1000067E4(v11);
  }

  return v8;
}

void sub_100006CD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1000067E4(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100006CE8(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (qword_100021BC0 != -1)
  {
    sub_100012F74();
  }

  v3 = qword_100021BC8;
  if (os_log_type_enabled(qword_100021BC8, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 48);
    buf = 134217984;
    *buf_4 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Added client %p", &buf, 0xCu);
  }

  sub_100006E78();
}

void *sub_100006EEC(void *a1, id *a2, unsigned __int8 *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10001D318;
  v4 = *a3;
  sub_100004768(a1 + 24, *a2);
  return a1;
}

void sub_100006F70(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10001D318;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_100006FD0(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_100007258(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[4];
    if (v3)
    {
      sub_1000067E4(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_1000072B8(uint64_t a1)
{
  result = sub_1000072F4(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_1000072F4(uint64_t a1, uint64_t a2, vm_address_t *a3, unsigned int *a4)
{
  dispatch_assert_queue_V2(*(a1 + 8));
  sub_100006988(a1, a2, &v23);
  if (!v23)
  {
    v12 = 5;
    goto LABEL_28;
  }

  dest_address = 0;
  error = 0;
  v8 = sub_100004F80(v23);
  v9 = CFPropertyListCreateData(0, v8, kCFPropertyListBinaryFormat_v1_0, 0, &error);
  v10 = v9;
  if (!v9 || !v8)
  {
    if (qword_100021BC0 != -1)
    {
      sub_100012F4C();
    }

    v16 = qword_100021BC8;
    if (os_log_type_enabled(qword_100021BC8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to create a plist to return to client", buf, 2u);
    }

    if (error)
    {
      CFShow(error);
      CFRelease(error);
    }

    v12 = 5;
    if (!v10)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  Length = CFDataGetLength(v9);
  v12 = vm_allocate(mach_task_self_, &dest_address, Length, 1);
  if (v12)
  {
    if (qword_100021BC0 != -1)
    {
      sub_100012F4C();
    }

    v13 = qword_100021BC8;
    if (!os_log_type_enabled(qword_100021BC8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    v14 = mach_error_string(v12);
    *buf = 136315138;
    v26 = v14;
    v15 = "Failed to allocate: %s";
  }

  else
  {
    v17 = mach_task_self_;
    BytePtr = CFDataGetBytePtr(v10);
    v12 = vm_copy(v17, BytePtr, Length, dest_address);
    if (!v12)
    {
      *a3 = dest_address;
      *a4 = Length;
      goto LABEL_25;
    }

    vm_deallocate(mach_task_self_, dest_address, Length);
    if (qword_100021BC0 != -1)
    {
      sub_100012F4C();
    }

    v13 = qword_100021BC8;
    if (!os_log_type_enabled(qword_100021BC8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    v19 = mach_error_string(v12);
    *buf = 136315138;
    v26 = v19;
    v15 = "Failed to copy: %s";
  }

  _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, v15, buf, 0xCu);
LABEL_25:
  CFRelease(v10);
LABEL_26:
  if (v8)
  {
    CFRelease(v8);
  }

LABEL_28:
  if (v24)
  {
    sub_1000067E4(v24);
  }

  return v12;
}

void sub_1000075A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_1000067E4(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000075D0(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = sub_100006AF0((v2 + 24), (a1 + 40));
  if (result)
  {
    v4 = result;
    if (qword_100021BC0 != -1)
    {
      sub_100012F74();
    }

    v5 = qword_100021BC8;
    if (os_log_type_enabled(qword_100021BC8, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 40);
      v8 = 134217984;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Removed client %p", &v8, 0xCu);
    }

    if (*(v4[3] + 48))
    {
      v7 = *(v2 + 72) - 1;
      *(v2 + 72) = v7;
      if (!v7)
      {
        sub_100003104(v2 + 80, 0);
      }
    }

    result = sub_1000076EC((v2 + 24), v4);
  }

  if (!*(v2 + 48))
  {
    *(v2 + 64) = 0;
  }

  return result;
}

uint64_t sub_1000076EC(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_100007738(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    sub_100007258(&v6, v3);
  }

  return v2;
}

void *sub_100007738@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

uint64_t DVTIUIsAppleInternalOSEnvironment()
{
  if (qword_100021BD8 != -1)
  {
    sub_100012F88();
  }

  return byte_100021BD0;
}

uint64_t DVTIUUidForPid(int a1)
{
  *v12 = 0xE00000001;
  v13 = 1;
  v14 = a1;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  memset(v5, 0, sizeof(v5));
  v4 = 648;
  v1 = sysctl(v12, 4u, v5, &v4, 0, 0);
  if (v4)
  {
    v2 = v1 == 0;
  }

  else
  {
    v2 = 0;
  }

  if (v2)
  {
    return DWORD1(v6);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_1000079B8(task_name_t a1)
{
  if (a1 - 1 > 0xFFFFFFFD)
  {
    return 0;
  }

  v13 = v1;
  v14 = v2;
  if (!csr_check())
  {
    return 3;
  }

  has_internal_content = os_variant_has_internal_content();
  v12 = 2048;
  *task_info_out = 0u;
  v11 = 0u;
  task_info_outCnt = 8;
  if (task_info(a1, 0xFu, task_info_out, &task_info_outCnt))
  {
    return 0;
  }

  x = 0;
  v6 = pid_for_task(a1, &x);
  result = 0;
  if (!v6)
  {
    buffer = 0;
    if (proc_pidinfo(x, 30, 0, &buffer, 4) != 4 || csops_audittoken())
    {
      return 0;
    }

    if ((v12 & 4) == 0)
    {
      if ((v12 & 0x800) != 0)
      {
        if (!has_internal_content)
        {
          return 0;
        }

        return geteuid() == 0;
      }

      else if (((v12 & 0x20000000) == 0) | has_internal_content & 1)
      {
        return 3;
      }

      else
      {
        return 2;
      }
    }

    return 3;
  }

  return result;
}

void sub_100007C14(id a1)
{
  qword_100021BE8 = objc_opt_new();

  _objc_release_x1();
}

id sub_100007DE4()
{
  v0 = +[NSUserDefaults standardUserDefaults];
  v1 = [v0 BOOLForKey:@"DTXPCServiceControllerLog"];

  return v1;
}

void sub_1000094D8(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x300], 8);
  _Block_object_dispose(&STACK[0x320], 8);
  _Block_object_dispose(&STACK[0x350], 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100009528(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100009540(uint64_t a1)
{
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000099A4;
  v29[3] = &unk_10001D3E8;
  v2 = *(a1 + 32);
  v30 = *(a1 + 40);
  v33 = *(a1 + 96);
  v3 = *(a1 + 48);
  v4 = *(a1 + 72);
  v31 = v3;
  v32 = v4;
  [v2 _matchRemove:v29];
  if ((*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
  {
    v5 = *(*(a1 + 32) + 8);
    v6 = [NSNumber numberWithInt:*(a1 + 96)];
    v7 = [v5 objectForKeyedSubscript:v6];

    if (!v7)
    {
      v7 = objc_opt_new();
      v8 = *(*(a1 + 32) + 8);
      v9 = [NSNumber numberWithInt:*(a1 + 96)];
      [v8 setObject:v7 forKeyedSubscript:v9];
    }

    if (*(a1 + 104) == 1)
    {
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
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
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      *__str = 0u;
      v37 = 0u;
      if ((*(a1 + 105) & 1) != 0 || *(a1 + 106) == 1)
      {
        if ((+[NSProcessInfo isAppleInternal]& 1) == 0)
        {
          v12 = *(a1 + 64);
          v13 = *(a1 + 40);
          v14 = *(a1 + 96);
          v34 = NSLocalizedDescriptionKey;
          v15 = [NSString stringWithFormat:@"Launching a Daemon or Agent is not supported on iOS devices."];
          v35 = v15;
          v16 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
          v17 = [NSError errorWithDomain:@"DTXPCServiceController" code:1 userInfo:v16];
          (*(v12 + 16))(v12, v13, 0, v14, 0xFFFFFFFFLL, v17);

LABEL_29:
          goto LABEL_30;
        }

        snprintf(__str, 0x200uLL, "system/%s", [*(a1 + 56) UTF8String]);
        v10 = *(*(a1 + 32) + 16);
        v11 = xpc_service_create_from_specifier();
      }

      else
      {
        v18 = *(a1 + 100);
        [*(a1 + 40) UTF8String];
        v19 = *(a1 + 96) & ~(*(a1 + 96) >> 31);
        v20 = *(*(a1 + 32) + 16);
        v11 = xpc_service_create();
      }

      v21 = *(*(a1 + 80) + 8);
      v22 = *(v21 + 40);
      *(v21 + 40) = v11;
    }

    v23 = sub_100007DE4();
    v24 = *(a1 + 104);
    if (!v23 || (*(a1 + 104) & 1) != 0)
    {
      if ((*(a1 + 104) & 1) == 0)
      {
LABEL_17:
        v25 = xpc_connection_create("com.apple.dt.instruments.dtsecurity.xpc", 0);
        v26 = 0;
LABEL_20:
        objc_storeStrong((*(*(a1 + 88) + 8) + 40), v25);
        if ((v26 & 1) == 0)
        {
        }

        if (*(*(*(a1 + 80) + 8) + 40) || *(*(*(a1 + 88) + 8) + 40))
        {
          v27 = objc_opt_new();
          [v27 setServiceIdentifier:*(a1 + 40)];
          [v27 setClient:*(a1 + 48)];
          v28 = *(*(*(a1 + 80) + 8) + 40);
          if (!v28)
          {
            v28 = *(*(*(a1 + 88) + 8) + 40);
          }

          [v27 setXpcObject:v28];
          if (*(a1 + 107) == 1)
          {
            [v27 setOneshotHandler:*(a1 + 64)];
          }

          [v7 addObject:v27];
        }

        goto LABEL_29;
      }
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        *__str = 136315138;
        *&__str[4] = "com.apple.dt.instruments.dtsecurity.xpc";
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "DTXPCServiceController: calling xpc_connection_create: serviceName=%s", __str, 0xCu);
      }

      if ((*(a1 + 104) & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v25 = 0;
    v26 = 1;
    goto LABEL_20;
  }

LABEL_30:
}

uint64_t sub_1000099A4(uint64_t a1, void *a2, int a3, void *a4)
{
  v7 = a4;
  if (!sub_100009A1C(*(a1 + 32), a2, *(a1 + 56), a3))
  {
    goto LABEL_4;
  }

  v8 = 1;
  if (*(a1 + 40) != v7)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
LABEL_4:
    v8 = 0;
  }

  return v8;
}

uint64_t sub_100009A1C(void *a1, void *a2, int a3, int a4)
{
  v7 = a1;
  v8 = a2;
  if ([v7 length] && objc_msgSend(v8, "length") && !objc_msgSend(v7, "isEqualToString:", v8))
  {
    v11 = 0;
  }

  else
  {
    if (a3)
    {
      v9 = a4 == 0;
    }

    else
    {
      v9 = 1;
    }

    v11 = v9 || a3 == a4;
  }

  return v11;
}

void sub_100009AA8(uint64_t a1)
{
  (*(*(a1 + 56) + 16))();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100009B60;
  v3[3] = &unk_10001D438;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 64);
  [v2 _matchRemove:v3];
}

uint64_t sub_100009B60(uint64_t a1, void *a2, int a3, uint64_t a4)
{
  if (*(a1 + 32) == a4)
  {
    return sub_100009A1C(*(a1 + 40), a2, *(a1 + 48), a3);
  }

  else
  {
    return 0;
  }
}

void sub_100009B8C(uint64_t a1, pid_t pid)
{
  if (proc_pidpath(pid, buffer, 0x400u) >= 1)
  {
    v4 = [NSString stringWithUTF8String:buffer];
    v5 = [v4 stringByDeletingLastPathComponent];
    v6 = [v5 stringByAppendingPathComponent:@"Info.plist"];

    v7 = [NSData dataWithContentsOfFile:v6, 0];
    if (v7)
    {
      v8 = [NSPropertyListSerialization propertyListWithData:v7 options:0 format:&v11 error:0];
    }

    else
    {
      v8 = 0;
    }

    if (*(a1 + 32) && ([v4 isEqualToString:?] & 1) != 0 || *(a1 + 40) && (objc_msgSend(v8, "objectForKeyedSubscript:", @"CFBundleIdentifier"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqual:", *(a1 + 40)), v9, v10))
    {
      kill(pid, 9);
    }
  }
}

void sub_100009D00(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 92) == 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "DTXPCServiceController: xpc attach handler entered", buf, 2u);
  }

  pid = xpc_service_instance_get_pid();
  if (*(a1 + 92) == 1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *v39 = pid;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "DTXPCServiceController: xpc attach handler, pid = %d", buf, 8u);
    }

    if ((*(a1 + 92) & 1) != 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      if (xpc_service_instance_is_configurable())
      {
        v5 = "";
      }

      else
      {
        v5 = "non-";
      }

      v6 = [*(a1 + 32) UTF8String];
      *buf = 136315650;
      *v39 = v5;
      *&v39[8] = 2080;
      *&v39[10] = v6;
      v40 = 1024;
      v41 = pid;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "invoked for %sconfigurable service: %s pid: %d\n", buf, 0x1Cu);
    }
  }

  if (pid)
  {
    v7 = [*(a1 + 40) mutableCopy];
    v8 = v7;
    if ((*(a1 + 93) & 1) == 0)
    {
      [v7 setObject:&__kCFBooleanTrue forKeyedSubscript:DTAssertionManagerOptions_DontRemoveMemoryLimitsKey];
    }

    [v8 removeObjectForKey:@"DisableMemoryLimits"];
    v9 = dispatch_source_create(&_dispatch_source_type_proc, pid, 0x80000000uLL, 0);
    if (v9)
    {
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_10000A374;
      handler[3] = &unk_10001D4B0;
      v35 = *(a1 + 92);
      v34 = pid;
      v32 = *(a1 + 48);
      v10 = v9;
      v33 = v10;
      dispatch_source_set_event_handler(v10, handler);
      dispatch_resume(v10);
    }

    else if (*(a1 + 92) == 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *v39 = pid;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "DTXPCServiceController: Failed to start observing process with pid %i", buf, 8u);
    }

    if (xpc_service_instance_is_configurable())
    {
      v11 = [*(a1 + 56) _configureInstance:v3 identifier:*(a1 + 32) servicePid:pid environment:*(a1 + 64) arguments:*(a1 + 72) options:*(a1 + 40)];
      if (*(a1 + 92) == 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        v12 = [*(a1 + 32) UTF8String];
        *buf = 67109378;
        *v39 = pid;
        *&v39[4] = 2080;
        *&v39[6] = v12;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Watching pid %d '%s' for exec", buf, 0x12u);
      }

      v13 = dispatch_source_create(&_dispatch_source_type_proc, pid, 0xA0000000uLL, *(*(a1 + 56) + 24));
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10000A460;
      v21[3] = &unk_10001D4D8;
      v14 = v13;
      v22 = v14;
      v30 = *(a1 + 92);
      v27 = pid;
      v23 = *(a1 + 32);
      v24 = *(a1 + 48);
      v25 = v8;
      v26 = *(a1 + 80);
      v28 = *(a1 + 88);
      v29 = v11;
      dispatch_source_set_event_handler(v14, v21);
      dispatch_activate(v14);
      if (*(a1 + 92) == 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Calling xpc_service_instance_run", buf, 2u);
      }

      xpc_service_instance_run();
    }

    else
    {
      if (*(a1 + 92) == 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "xpc_service_instance_is_configurable(): false, existing service", buf, 2u);
      }

      if (*(a1 + 94) == 1 && pid >= 1)
      {
        if (*(a1 + 92) == 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "killing service because we were instructed to kill existing services", buf, 2u);
        }

        kill(pid, 9);
      }

      else
      {
        v15 = *(a1 + 80);
        v16 = *(a1 + 32);
        v17 = *(a1 + 88);
        v36 = NSLocalizedDescriptionKey;
        v18 = [NSString stringWithFormat:@"attempted to attach to an existing process (pid=%d) for XPC service '%@' using DTXPCServiceController - should use generic attach instead", pid, v16];
        v37 = v18;
        v19 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
        v20 = [NSError errorWithDomain:@"DTXPCServiceController" code:2 userInfo:v19];
        (*(v15 + 16))(v15, v16, pid, v17, 0xFFFFFFFFLL, v20);
      }
    }
  }
}

void sub_10000A374(uint64_t a1)
{
  if (*(a1 + 52) == 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v2 = *(a1 + 48);
    v3 = *(a1 + 32);
    v5[0] = 67109378;
    v5[1] = v2;
    v6 = 2112;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "DTXPCServiceController: pid %d died, releasing claims on assertions taken on behalf of client %@", v5, 0x12u);
  }

  v4 = +[DTAssertionManager sharedInstance];
  [v4 removeAssertionsForPid:*(a1 + 48) onBehalfOfClient:*(a1 + 32)];

  dispatch_source_cancel(*(a1 + 40));
}

void sub_10000A460(uint64_t a1)
{
  v2 = *(a1 + 32);
  data = dispatch_source_get_data(v2);
  dispatch_source_cancel(v2);
  if ((data & 0x20000000) != 0)
  {
    if (*(a1 + 84) == 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v14 = *(a1 + 72);
      v15 = [*(a1 + 40) UTF8String];
      *buf = 67109378;
      v24 = v14;
      v25 = 2080;
      v26 = v15;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Service pid %d '%s' exec-ed", buf, 0x12u);
    }

    v16 = +[DTAssertionManager sharedInstance];
    [v16 takeAssertionsForPid:*(a1 + 72) onBehalfOfClient:*(a1 + 48) withOptions:*(a1 + 56)];

    v17 = *(a1 + 40);
    v18 = *(a1 + 72);
    v19 = *(a1 + 76);
    v20 = *(a1 + 80);
    (*(*(a1 + 64) + 16))();
  }

  else if (data < 0)
  {
    if (*(a1 + 84) == 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 72);
      v5 = [*(a1 + 40) UTF8String];
      *buf = 67109378;
      v24 = v4;
      v25 = 2080;
      v26 = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Service pid %d '%s'  exited before exec", buf, 0x12u);
    }

    v6 = *(a1 + 64);
    v7 = *(a1 + 40);
    v8 = *(a1 + 72);
    v9 = *(a1 + 76);
    v10 = *(a1 + 80);
    v11 = [NSString stringWithFormat:@"Service exited before exec %d '%@'. ", v8, v7, NSLocalizedDescriptionKey];
    v22 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v13 = [NSError errorWithDomain:@"DTXPCServiceController" code:2 userInfo:v12];
    (*(v6 + 16))(v6, v7, v8, v9, v10, v13);
  }
}

void sub_10000A6D8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 count];
  if (!a3 && v6)
  {
    if ([v5 count] >= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v7 = [*(a1 + 32) UTF8String];
      v8 = [v5 description];
      *buf = 136315394;
      v21 = v7;
      v22 = 2080;
      v23 = [v8 UTF8String];
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "warning: multiple plugins discovered for identifier '%s': { %s }\n", buf, 0x16u);
    }

    [v5 count];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          if (*(a1 + 40) == 1)
          {
            v14 = *(*(&v15 + 1) + 8 * i);
            if (([v14 userElection] & 1) == 0)
            {
              [v14 setUserElection:257];
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }
  }
}

void sub_10000A8A8(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 pkHandle];
  v4 = v3;
  v5 = *(a1 + 32);
  if (!v3 || v3 == v5)
  {
    [v6 setPkHandle:v5];
  }
}

void sub_10000ACB4(uint64_t a1, id a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = [a2 UTF8String];
  v9 = [v7 description];

  v10 = [v9 UTF8String];
  if (v8 && v10)
  {
    v11 = *(a1 + 32);

    xpc_dictionary_set_string(v11, v8, v10);
  }
}

void sub_10000AFDC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 96) == 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "DTXPCServiceController: daemon launch xpc attach handler entered", buf, 2u);
  }

  if (xpc_service_instance_is_configurable())
  {
    pid = xpc_service_instance_get_pid();
    if (*(a1 + 96) == 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      LODWORD(v27) = pid;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "DTXPCServiceController: daemon launch xpc attach handler, pid = %d", buf, 8u);
    }

    v5 = objc_opt_new();
    v6 = [*(a1 + 32) objectForKeyedSubscript:@"EnableMTE"];
    if (v6)
    {
      [v5 setObject:v6 forKeyedSubscript:@"EnableMTE"];
    }

    v7 = [*(a1 + 32) objectForKeyedSubscript:@"CPUType"];
    v24 = v7;
    if (v7)
    {
      [v7 intValue];
    }

    xpc_service_instance_set_binpref();
    v8 = [*(a1 + 32) objectForKeyedSubscript:@"CPUSubType"];
    v9 = v8;
    v25 = v6;
    if (v8)
    {
      v10 = [v8 intValue];
    }

    else
    {
      v10 = 0xFFFFFFFFLL;
    }

    xpc_service_instance_set_archpref_shim(v3, v10);
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v14 = *(a1 + 56);
    v13 = *(a1 + 64);
    v15 = v5;
    v16 = [v5 copy];
    v17 = [v11 _configureInstance:v3 identifier:v12 servicePid:pid environment:v14 arguments:v13 options:v16];

    if (*(a1 + 96) == 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      LODWORD(v27) = v17;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "DTXPCServiceController: daemon launch outputFD = %d", buf, 8u);
    }

    v18 = *(a1 + 48);
    (*(*(a1 + 88) + 16))();
    v19 = [*(a1 + 32) objectForKeyedSubscript:@"SkipSetPath"];
    if ([v19 BOOLValue])
    {
    }

    else
    {
      v20 = [*(a1 + 72) length];

      if (v20)
      {
        if (*(a1 + 96) == 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          v21 = *(a1 + 72);
          *buf = 138412290;
          v27 = v21;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "DTXPCServiceController: daemon launch instance path = %@", buf, 0xCu);
        }

        [*(a1 + 72) UTF8String];
        xpc_service_instance_set_path();
        v22 = v25;
        goto LABEL_28;
      }
    }

    v22 = v25;
    if (*(a1 + 96) == 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "DTXPCServiceController: daemon launch instance path unchanged", buf, 2u);
    }

LABEL_28:
    xpc_service_instance_run();
    v23 = *(a1 + 80);
    xpc_service_set_attach_handler();
  }
}

void sub_10000B4F4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000B5B8;
  v3[3] = &unk_10001D5C8;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = *(a1 + 64);
  v6 = *(a1 + 56);
  [v2 enumerateKeysAndObjectsUsingBlock:v3];
}

void sub_10000B5B8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        if (!*(a1 + 32) || ([*(*(&v16 + 1) + 8 * v10) client], v12 = objc_claimAutoreleasedReturnValue(), v13 = *(a1 + 32), v12, v12 == v13))
        {
          v14 = [v11 serviceIdentifier];
          v15 = sub_100009A1C(v14, *(a1 + 40), [v5 intValue], *(a1 + 56));

          if (v15)
          {
            (*(*(a1 + 48) + 16))();
          }
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }
}

void sub_10000B7D0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[NSMutableIndexSet indexSet];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000B8CC;
  v11[3] = &unk_10001D618;
  v8 = *(a1 + 32);
  v13 = v7;
  v14 = v8;
  v12 = v5;
  v9 = v7;
  v10 = v5;
  [v6 enumerateObjectsUsingBlock:v11];
  [v6 removeObjectsAtIndexes:v9];
}

void sub_10000B8CC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 48);
  v7 = [v5 serviceIdentifier];
  v8 = [*(a1 + 32) intValue];
  v9 = [v5 client];
  LODWORD(v6) = (*(v6 + 16))(v6, v7, v8, v9);

  if (v6)
  {
    [*(a1 + 40) addIndex:a3];
    v10 = [v5 pkHandle];
    if (v10)
    {
      v11 = +[PKHost defaultHost];
      [v11 cancelPlugInDiscovery:v10];
    }

    v12 = [v5 oneshotHandler];
    if (v12)
    {
      v16 = NSLocalizedDescriptionKey;
      v13 = [NSString stringWithFormat:@"XPC Service observer canceled or superceded."];
      v17 = v13;
      v14 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
      v15 = [NSError errorWithDomain:@"DTXPCServiceController" code:1 userInfo:v14];
      (v12)[2](v12, 0, 0, 0, 0xFFFFFFFFLL, v15);
    }
  }
}

void sub_10000BB70(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000BC18;
  v3[3] = &unk_10001D438;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  [v2 _matchRemove:v3];
}

uint64_t sub_10000BC18(uint64_t a1, void *a2, int a3, uint64_t a4)
{
  if (*(a1 + 32) == a4)
  {
    return sub_100009A1C(*(a1 + 40), a2, *(a1 + 48), a3);
  }

  else
  {
    return 0;
  }
}

id sub_10000BEC0()
{
  if (qword_100021BF8 != -1)
  {
    sub_100013038();
  }

  v1 = qword_100021BF0;

  return v1;
}

id sub_10000BF04(uint64_t a1)
{
  v2 = sub_10000BEC0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "releasing assertion for pid %d", v5, 8u);
  }

  return [*(a1 + 32) invalidate];
}

void sub_10000BFB4(id a1)
{
  qword_100021BF0 = os_log_create("com.apple.dt.Instruments", "RBSAssertion");

  _objc_release_x1();
}

void xpc_service_instance_set_archpref_shim(void *a1, uint64_t a2)
{
  v6 = a1;
  v3 = dlopen("/usr/lib/system/libxpc.dylib", 1);
  if (v3)
  {
    v4 = v3;
    v5 = dlsym(v3, "xpc_service_instance_set_archpref");
    if (v5)
    {
      v5(v6, a2);
    }

    dlclose(v4);
  }
}

void sub_10000C3D4(uint64_t a1, void *a2)
{
  v2 = a2;
  v2[2]();
}

void sub_10000C5EC(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100021C08;
  qword_100021C08 = v1;

  v3 = objc_opt_new();
  v4 = qword_100021C10;
  qword_100021C10 = v3;

  v5 = qword_100021C08;
  v6 = objc_opt_new();
  [v5 addObject:v6];

  [qword_100021C10 addObject:@"DisableWatchdogAssertion"];
  v7 = qword_100021C08;
  v8 = objc_opt_new();
  [v7 addObject:v8];

  v9 = qword_100021C10;
  v10 = DTAssertionManagerOptions_DontRemoveMemoryLimitsKey;

  [v9 addObject:v10];
}

void sub_10000C700(id a1)
{
  qword_100021C20 = objc_opt_new();

  _objc_release_x1();
}

void sub_10000C964(uint64_t a1)
{
  v2 = [NSNumber numberWithInt:*(a1 + 56)];
  v3 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:v2];
  v4 = v3;
  if (v3)
  {
    [v3 addClaimForClient:*(a1 + 40)];
  }

  else
  {
    v5 = objc_opt_new();
    v6 = *(*(a1 + 32) + 8);
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_10000CAC0;
    v15 = &unk_10001D740;
    v7 = *(a1 + 48);
    v8 = *(a1 + 32);
    v16 = v7;
    v17 = v8;
    v19 = *(a1 + 56);
    v18 = v5;
    v9 = v5;
    [v6 enumerateObjectsUsingBlock:&v12];
    v10 = [DTAssertionPidInfo alloc];
    v11 = [(DTAssertionPidInfo *)v10 initForPid:*(a1 + 56) withRemoveBlocks:v9 onBehalfOfClient:*(a1 + 40), v12, v13, v14, v15];
    [*(*(a1 + 32) + 32) setObject:v11 forKeyedSubscript:v2];
  }
}

void sub_10000CAC0(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  if (!v6)
  {
    goto LABEL_17;
  }

  v7 = *(*(a1 + 40) + 16);
  if (!v7)
  {
    goto LABEL_17;
  }

  v8 = v7;
  v9 = v6;
  if ([v8 count] <= a3)
  {
    goto LABEL_16;
  }

  v10 = [v8 objectAtIndexedSubscript:a3];
  v11 = [v9 objectForKey:v10];
  if (!v11)
  {
LABEL_15:

LABEL_16:
    goto LABEL_17;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [v11 BOOLValue];
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *v22 = 138412546;
      *&v22[4] = objc_opt_class();
      *&v22[12] = 2112;
      *&v22[14] = v11;
      v17 = *&v22[4];
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "DTAssertionManager: options dictionary specified item of class %@ (%@) as disable value, don't know how to interpret so leaving enabled", v22, 0x16u);
    }

    goto LABEL_15;
  }

  v12 = [v11 integerValue] != 0;
LABEL_9:

  if (v12)
  {
    v13 = +[NSUserDefaults standardUserDefaults];
    v14 = [v13 BOOLForKey:@"DTAssertionManagerLog"];

    if (v14 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v15 = *(a1 + 56);
      v16 = [*(*(a1 + 40) + 16) objectAtIndex:a3];
      *v22 = 67109378;
      *&v22[4] = v15;
      *&v22[8] = 2112;
      *&v22[10] = v16;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "DTAssertionManager: skipping taking of assertion for pid %d due to option %@ being set", v22, 0x12u);
    }

    goto LABEL_20;
  }

LABEL_17:
  v18 = [v5 assertionForPid:{*(a1 + 56), *v22, *&v22[16]}];
  v19 = v18;
  if (v18)
  {
    v20 = *(a1 + 48);
    v21 = objc_retainBlock(v18);
    [v20 addObject:v21];
  }

LABEL_20:
}

void sub_10000CE18(uint64_t a1)
{
  v4 = [NSNumber numberWithInt:*(a1 + 48)];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:?];
  v3 = v2;
  if (v2 && [v2 removeClaimFromClient:*(a1 + 40)] && objc_msgSend(v3, "hasNoMoreClients"))
  {
    [v3 removeAssertions];
    [*(*(a1 + 32) + 32) removeObjectForKey:v4];
  }
}

void sub_10000CF68(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = *(*(a1 + 32) + 32);
  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = sub_10000D038;
  v8 = &unk_10001D790;
  v9 = *(a1 + 40);
  v10 = v2;
  v4 = v2;
  [v3 enumerateKeysAndObjectsUsingBlock:&v5];
  [*(*(a1 + 32) + 32) removeObjectsForKeys:{v4, v5, v6, v7, v8}];
}

void sub_10000D038(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([v5 removeClaimFromClient:*(a1 + 32)] && objc_msgSend(v5, "hasNoMoreClients"))
  {
    [v5 removeAssertions];
    [*(a1 + 40) addObject:v6];
  }
}

_xpc_connection_s *xpc_message_has_privileges(_xpc_connection_s *result)
{
  if (result)
  {
    return (xpc_connection_get_euid(result) == 0);
  }

  return result;
}

id xpc_dictionary_get_archived_object(void *a1, const char *a2, uint64_t a3)
{
  v5 = a1;
  if (xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    v7 = xpc_dictionary_get_value(v5, a2);
    bytes_ptr = xpc_data_get_bytes_ptr(v7);
    v9 = [NSData dataWithBytesNoCopy:bytes_ptr length:xpc_data_get_length(v7) freeWhenDone:0];
    v10 = [NSSet setWithObjects:a3, objc_opt_class(), 0];
    v6 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v10 fromData:v9 error:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t mach_exc_server_routine(uint64_t a1)
{
  v1 = *(a1 + 20);
  if ((v1 - 2411) >= 0xFFFFFFFA)
  {
    return *(&catch_mach_exc_subsystem + 5 * (v1 - 2405) + 5);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000D2A4(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0)
  {
    v2 = *(a1 + 4);
    if (*(a1 + 24) == 2 && (v2 - 85) >= 0xFFFFFFEF)
    {
      if (*(a1 + 38) << 16 != 1114112 || *(a1 + 50) << 16 != 1114112)
      {
        result = 4294966996;
        goto LABEL_7;
      }

      v5 = *(a1 + 64);
      if (v5 <= 2 && v5 <= (v2 - 68) >> 3 && v2 == ((8 * v5) | 0x44))
      {
        v6 = *(a1 + 12);
        v7 = *(a1 + 28);
        v8 = *(a1 + 40);
        v9 = *(a1 + 60);
        sub_100005EA4();
      }
    }
  }

  result = 4294966992;
LABEL_7:
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  return result;
}

_DWORD *sub_10000D36C(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0)
  {
    v2 = result[1];
    if (v2 - 5249 >= 0xFFFFEBAF)
    {
      v3 = result[9];
      if (v3 <= 2)
      {
        v4 = 2 * v3;
        if (v3 <= (v2 - 48) >> 3 && v2 >= 8 * v3 + 48)
        {
          v6 = result[v4 + 11];
          if (v6 <= 0x510)
          {
            v7 = v2 - v4 * 4;
            if (v6 <= (v7 - 48) >> 2 && v7 == 4 * v6 + 48)
            {
              *(a2 + 40) = 1296;
              v9 = result[3];
              v10 = result[8];
              sub_100005EA4();
            }
          }
        }
      }
    }
  }

  *(a2 + 32) = -304;
  *(a2 + 24) = NDR_record;
  return result;
}

void sub_10000D458(int a1)
{
  *(v3 - 8) = a1;
  *(v3 - 16) = NDR_record;
  if (!a1)
  {
    v1[9] = *(v2 + 56);
    v1[1] = 4 * v1[10] + 44;
  }

  JUMPOUT(0x10000D410);
}

uint64_t sub_10000D48C(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  v2 = *(result + 4);
  if (*(result + 24) != 2 || v2 - 5277 < 0xFFFFEBAF)
  {
    goto LABEL_6;
  }

  if (*(result + 38) << 16 != 1114112 || *(result + 50) << 16 != 1114112)
  {
    v4 = -300;
    goto LABEL_7;
  }

  v5 = *(result + 64);
  if (v5 > 2)
  {
    goto LABEL_6;
  }

  v4 = -304;
  if (v5 <= (v2 - 76) >> 3)
  {
    v6 = 8 * v5;
    if (v2 >= 8 * v5 + 76)
    {
      v7 = *(result + v6 + 72);
      if (v7 <= 0x510)
      {
        v8 = v2 - v6;
        if (v7 <= (v8 - 76) >> 2 && v8 == 4 * v7 + 76)
        {
          *(a2 + 40) = 1296;
          v9 = *(result + 12);
          v10 = *(result + 28);
          v11 = *(result + 40);
          v12 = *(result + 60);
          sub_100005EA4();
        }
      }

LABEL_6:
      v4 = -304;
    }
  }

LABEL_7:
  *(a2 + 32) = v4;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_10000D5F4(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  v3 = *(a1 + 4);
  if (*(a1 + 24) != 1 || (v3 - 81) < 0xFFFFFFEF)
  {
    goto LABEL_6;
  }

  if (*(a1 + 38) << 16 != 1114112)
  {
    result = 4294966996;
    goto LABEL_7;
  }

  v6 = *(a1 + 60);
  if (v6 <= 2 && v6 <= (v3 - 64) >> 3 && v3 == ((8 * v6) | 0x40))
  {
    result = sub_100005D18(*(a1 + 12), *(a1 + 48), *(a1 + 28), *(a1 + 56), a1 + 64);
  }

  else
  {
LABEL_6:
    result = 4294966992;
  }

LABEL_7:
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t mach_exc_server(_DWORD *a1, uint64_t a2)
{
  v2 = a1[2];
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v3 = a1[5] + 100;
  *(a2 + 8) = v2;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = v3;
  v4 = a1[5];
  if ((v4 - 2411) >= 0xFFFFFFFA && (v5 = *(&catch_mach_exc_subsystem + 5 * (v4 - 2405) + 5)) != 0)
  {
    v5(a1, a2);
    return 1;
  }

  else
  {
    result = 0;
    *(a2 + 24) = NDR_record;
    *(a2 + 32) = -303;
  }

  return result;
}

Swift::Int sub_10000D794()
{
  v1 = *v0;
  sub_1000133CC();
  sub_1000133DC(v1);
  return sub_1000133EC();
}

Swift::Int sub_10000D7DC()
{
  v1 = *v0;
  sub_1000133CC();
  sub_1000133DC(v1);
  return sub_1000133EC();
}

uint64_t variable initialization expression of ProcessorTraceRecorder.logger@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000219D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10001324C();
  v3 = sub_1000105D4(v2, qword_100022030);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t variable initialization expression of ProcessorTraceRecorder.signposter()
{
  v0 = sub_10001324C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000219D0 != -1)
  {
    swift_once();
  }

  v5 = sub_1000105D4(v0, qword_100022030);
  (*(v1 + 16))(v4, v5, v0);
  return sub_1000131AC();
}

uint64_t static ProcessorTraceRecorder.recordingVersionString.getter()
{
  if (!hwtrace_version_info())
  {
    return 0;
  }

  v0 = sub_10001328C();

  return v0;
}

id ProcessorTraceRecorder.__allocating_init(configuration:)(uint64_t a1)
{
  v3 = sub_10001324C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(v1);
  *&v8[OBJC_IVAR___DTProcessorTraceRecorder_currentLiveRecording] = 0;
  v8[OBJC_IVAR___DTProcessorTraceRecorder_state] = 0;
  v9 = OBJC_IVAR___DTProcessorTraceRecorder_logger;
  if (qword_1000219D0 != -1)
  {
    swift_once();
  }

  v10 = sub_1000105D4(v3, qword_100022030);
  v11 = *(v4 + 16);
  v11(&v8[v9], v10, v3);
  v11(v7, v10, v3);
  sub_1000131AC();
  *&v8[OBJC_IVAR___DTProcessorTraceRecorder_configuration] = a1;
  v13.receiver = v8;
  v13.super_class = v1;
  return objc_msgSendSuper2(&v13, "init");
}

id ProcessorTraceRecorder.init(configuration:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_10001324C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR___DTProcessorTraceRecorder_currentLiveRecording] = 0;
  v1[OBJC_IVAR___DTProcessorTraceRecorder_state] = 0;
  v9 = OBJC_IVAR___DTProcessorTraceRecorder_logger;
  if (qword_1000219D0 != -1)
  {
    swift_once();
  }

  v10 = sub_1000105D4(v4, qword_100022030);
  v11 = *(v5 + 16);
  v11(&v1[v9], v10, v4);
  v11(v8, v10, v4);
  sub_1000131AC();
  *&v1[OBJC_IVAR___DTProcessorTraceRecorder_configuration] = a1;
  v13.receiver = v1;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, "init");
}

id ProcessorTraceRecorder.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  if (*&v0[OBJC_IVAR___DTProcessorTraceRecorder_currentLiveRecording])
  {
    hwtrace_live_recording_deinit();
  }

  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

NSObject *sub_10000E138()
{
  if (hwtrace_live_topology())
  {
    v11 = v0;
    hwtrace_live_recording_options_init();
    v13 = 0;
    hwtrace_live_topology_systems();
    hwtrace_live_recording_options_set_session_policy();
    v12 = 0;
    v1 = hwtrace_live_recording_init_with_options();
    v2 = v12;
    if (v12)
    {
      *(v11 + OBJC_IVAR___DTProcessorTraceRecorder_state) = 1;
      hwtrace_live_recording_options_deinit();
    }

    else
    {
      v6 = v1;
      v2 = sub_10001322C();
      v7 = sub_1000132DC();
      if (os_log_type_enabled(v2, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 67109120;
        *(v8 + 4) = v6;
        _os_log_impl(&_mh_execute_header, v2, v7, "Failed to initialize recording: %d", v8, 8u);
      }

      sub_100010CCC();
      swift_allocError();
      *v9 = 0;
      swift_willThrow();
      hwtrace_live_recording_options_deinit();
    }
  }

  else
  {
    v3 = sub_10001322C();
    v2 = sub_1000132DC();
    if (os_log_type_enabled(v3, v2))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, v2, "Failed to initialize hwtrace_live_topology.", v4, 2u);
    }

    sub_100010CCC();
    swift_allocError();
    *v5 = 0;
    swift_willThrow();
  }

  return v2;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ProcessorTraceRecorder.startRecording()()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_10001319C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = (__chkstk_darwin)();
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v32 - v10;
  sub_10001318C();
  v12 = sub_1000131BC();
  v13 = sub_1000132FC();
  if (sub_10001331C())
  {
    v14 = swift_slowAlloc();
    v33 = v1;
    v15 = v14;
    *v14 = 0;
    v16 = sub_10001317C();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, v13, v16, "start", "", v15, 2u);
    v3 = v0;
    v2 = v33;
  }

  (*(v5 + 16))(v9, v11, v4);
  v17 = sub_10001320C();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = sub_1000131FC();
  (*(v5 + 8))(v11, v4);
  v21 = OBJC_IVAR___DTProcessorTraceRecorder_state;
  if (*(v3 + OBJC_IVAR___DTProcessorTraceRecorder_state))
  {
    if (*(v3 + OBJC_IVAR___DTProcessorTraceRecorder_state) != 1)
    {
      goto LABEL_11;
    }

    goto LABEL_5;
  }

  v27 = *(v3 + OBJC_IVAR___DTProcessorTraceRecorder_configuration);
  v28 = sub_10000E138();
  if (!v2)
  {
    *(v3 + OBJC_IVAR___DTProcessorTraceRecorder_currentLiveRecording) = v28;
    if (*(v3 + v21) != 1)
    {
      goto LABEL_11;
    }

LABEL_5:
    if (*(v3 + OBJC_IVAR___DTProcessorTraceRecorder_currentLiveRecording))
    {
      v22 = hwtrace_live_recording_start();
      if (!v22)
      {
        *(v3 + v21) = 2;
        goto LABEL_15;
      }

      v23 = v22;
      v24 = sub_10001322C();
      v25 = sub_1000132DC();
      if (!os_log_type_enabled(v24, v25))
      {
        goto LABEL_14;
      }

      v26 = swift_slowAlloc();
      *v26 = 67109120;
      *(v26 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v24, v25, "Failed to start recording: %d", v26, 8u);
      goto LABEL_13;
    }

LABEL_11:
    v24 = sub_10001322C();
    v29 = sub_1000132DC();
    if (!os_log_type_enabled(v24, v29))
    {
LABEL_14:

      sub_100010CCC();
      swift_allocError();
      *v31 = 1;
      swift_willThrow();
      goto LABEL_15;
    }

    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v24, v29, "Recording is not in configured state or is not initialized.", v30, 2u);
LABEL_13:

    goto LABEL_14;
  }

LABEL_15:
  sub_100010228(v3, v20, "start");
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ProcessorTraceRecorder.pauseRecording()()
{
  v2 = v0;
  v3 = sub_10001319C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v33 - v9;
  sub_10001318C();
  v11 = sub_1000131BC();
  v12 = sub_1000132FC();
  if (sub_10001331C())
  {
    v13 = swift_slowAlloc();
    v33[1] = v1;
    v14 = v13;
    *v13 = 0;
    v15 = sub_10001317C();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, v12, v15, "pause", "", v14, 2u);
    v2 = v0;
  }

  (*(v4 + 16))(v8, v10, v3);
  v16 = sub_10001320C();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = sub_1000131FC();
  (*(v4 + 8))(v10, v3);
  if (*(v2 + OBJC_IVAR___DTProcessorTraceRecorder_currentLiveRecording))
  {
    v20 = hwtrace_live_recording_pause();
    if (!v20)
    {
      *(v2 + OBJC_IVAR___DTProcessorTraceRecorder_state) = 3;
      goto LABEL_12;
    }

    v21 = v20;
    v22 = sub_10001322C();
    v23 = sub_1000132DC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 67109120;
      *(v24 + 1) = v21;
      v25 = "Failed to pause recording: %d";
      v26 = v23;
      v27 = v22;
      v28 = v24;
      v29 = 8;
LABEL_9:
      _os_log_impl(&_mh_execute_header, v27, v26, v25, v28, v29);
    }
  }

  else
  {
    v22 = sub_10001322C();
    v30 = sub_1000132DC();
    if (os_log_type_enabled(v22, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      v25 = "Failed to pause recording. currentLiveRecording is nil.";
      v26 = v30;
      v27 = v22;
      v28 = v31;
      v29 = 2;
      goto LABEL_9;
    }
  }

  sub_100010CCC();
  swift_allocError();
  *v32 = 2;
  swift_willThrow();
LABEL_12:
  sub_100010228(v2, v19, "pause");
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ProcessorTraceRecorder.unpauseRecording()()
{
  v2 = v0;
  v3 = sub_10001319C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v25 - v9;
  sub_10001318C();
  v11 = sub_1000131BC();
  v12 = sub_1000132FC();
  if (sub_10001331C())
  {
    v13 = swift_slowAlloc();
    v25[1] = v1;
    v14 = v13;
    *v13 = 0;
    v15 = sub_10001317C();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, v12, v15, "unpause", "", v14, 2u);
  }

  (*(v4 + 16))(v8, v10, v3);
  v16 = sub_10001320C();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = sub_1000131FC();
  (*(v4 + 8))(v10, v3);
  v20 = OBJC_IVAR___DTProcessorTraceRecorder_state;
  if (*(v2 + OBJC_IVAR___DTProcessorTraceRecorder_state) == 3 && *(v2 + OBJC_IVAR___DTProcessorTraceRecorder_currentLiveRecording))
  {
    hwtrace_live_recording_resume();
    *(v2 + v20) = 2;
  }

  else
  {
    v21 = sub_10001322C();
    v22 = sub_1000132DC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Failed to unpause recording", v23, 2u);
    }

    sub_100010CCC();
    swift_allocError();
    *v24 = 3;
    swift_willThrow();
  }

  sub_100010228(v2, v19, "unpause");
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ProcessorTraceRecorder.stopRecording()()
{
  v2 = v0;
  v3 = sub_10001319C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v31 - v9;
  sub_10001318C();
  v11 = sub_1000131BC();
  v12 = sub_1000132FC();
  if (sub_10001331C())
  {
    v13 = swift_slowAlloc();
    v31[1] = v1;
    v14 = v13;
    *v13 = 0;
    v15 = sub_10001317C();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, v12, v15, "stop", "", v14, 2u);
    v2 = v0;
  }

  (*(v4 + 16))(v8, v10, v3);
  v16 = sub_10001320C();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = sub_1000131FC();
  (*(v4 + 8))(v10, v3);
  v20 = OBJC_IVAR___DTProcessorTraceRecorder_state;
  v21 = *(v2 + OBJC_IVAR___DTProcessorTraceRecorder_state);
  if (v21 != 2)
  {
LABEL_6:
    if (v21 == 3 && *(v2 + OBJC_IVAR___DTProcessorTraceRecorder_currentLiveRecording))
    {
      v23 = hwtrace_live_recording_stop();
      if (!v23)
      {
        *(v2 + v20) = 4;
        goto LABEL_15;
      }

      v24 = v23;
      v25 = sub_10001322C();
      v26 = sub_1000132DC();
      if (!os_log_type_enabled(v25, v26))
      {
        goto LABEL_14;
      }

      v27 = swift_slowAlloc();
      *v27 = 67109120;
      *(v27 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v25, v26, "Failed to stop recording: %d", v27, 8u);
    }

    else
    {
      v25 = sub_10001322C();
      v28 = sub_1000132DC();
      if (!os_log_type_enabled(v25, v28))
      {
LABEL_14:

        sub_100010CCC();
        swift_allocError();
        *v30 = 4;
        swift_willThrow();
        goto LABEL_15;
      }

      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v25, v28, "Failed to stop recording", v29, 2u);
    }

    goto LABEL_14;
  }

  ProcessorTraceRecorder.pauseRecording()();
  if (!v22)
  {
    v21 = *(v2 + v20);
    goto LABEL_6;
  }

LABEL_15:
  sub_100010228(v2, v19, "stop");
}

uint64_t sub_10000F6CC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v5 = a1;
  a4();

  return 1;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ProcessorTraceRecorder.saveRecording(fd:)(Swift::Int32 fd)
{
  v3 = sub_10001319C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v81 - v9;
  sub_10001318C();
  v89 = v1;
  v11 = sub_1000131BC();
  v12 = sub_1000132FC();
  if (sub_10001331C())
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_10001317C();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, v12, v14, "save", "", v13, 2u);
  }

  (*(v4 + 16))(v8, v10, v3);
  v15 = sub_10001320C();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = sub_1000131FC();
  (*(v4 + 8))(v10, v3);
  if (fd < 0)
  {
    v20 = v89;
    v30 = sub_10001322C();
    v31 = sub_1000132DC();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 67109120;
      *(v32 + 1) = fd;
      v33 = "Invalid file descriptor %d";
      v34 = v31;
      v35 = v30;
      v36 = v32;
      v37 = 8;
LABEL_15:
      _os_log_impl(&_mh_execute_header, v35, v34, v33, v36, v37);
    }

LABEL_16:

    sub_100010CCC();
    swift_allocError();
    *v40 = 6;
    swift_willThrow();
LABEL_23:
    sub_100010228(v20, v18, "save");

    return;
  }

  v19 = ktrace_file_create_fd();
  v20 = v89;
  if (!v19)
  {
    v30 = sub_10001322C();
    v38 = sub_1000132DC();
    if (os_log_type_enabled(v30, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      v33 = "Can't create ktrace file";
      v34 = v38;
      v35 = v30;
      v36 = v39;
      v37 = 2;
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v21 = OBJC_IVAR___DTProcessorTraceRecorder_state;
  if (*(v89 + OBJC_IVAR___DTProcessorTraceRecorder_state) != 4)
  {
    ProcessorTraceRecorder.stopRecording()();
    if (v41)
    {
      goto LABEL_22;
    }

    v88 = 0;
    if (*(v20 + v21) != 4)
    {
      goto LABEL_19;
    }
  }

  v22 = OBJC_IVAR___DTProcessorTraceRecorder_currentLiveRecording;
  if (!*(v20 + OBJC_IVAR___DTProcessorTraceRecorder_currentLiveRecording))
  {
LABEL_19:
    v42 = sub_10001322C();
    v43 = sub_1000132DC();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "Failed to save the recording", v44, 2u);
    }

    sub_100010CCC();
    swift_allocError();
    *v45 = 6;
    swift_willThrow();
    goto LABEL_22;
  }

  v23 = hwtrace_live_recording_postprocess_options_init();
  hwtrace_live_recording_postprocess_options_set_ktrace_session();
  v24 = hwtrace_live_recording_postprocess();
  if (v24)
  {
    v25 = v24;
    v26 = sub_10001322C();
    v27 = sub_1000132DC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 67109120;
      *(v28 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v26, v27, "Failed to postprocess recording: %d", v28, 8u);
    }

    sub_100010CCC();
    swift_allocError();
    *v29 = 5;
    swift_willThrow();
    hwtrace_live_recording_postprocess_options_deinit();
    goto LABEL_22;
  }

  v87 = v23;
  hwtrace_live_recording_finalize_postprocessing();
  v98 = 0;
  v46 = hwtrace_recording_init_from_live_recording();
  if (v46 || (v51 = v98) == 0)
  {
    v47 = sub_10001322C();
    v48 = sub_1000132DC();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 67109120;
      *(v49 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v47, v48, "Failed to init recording from live recording: %d", v49, 8u);
    }

    sub_100010CCC();
    swift_allocError();
    *v50 = 6;
    swift_willThrow();
    goto LABEL_28;
  }

  v20 = v89;
  v52 = *(*(v89 + OBJC_IVAR___DTProcessorTraceRecorder_configuration) + OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_copyImagesOnSave);
  v83 = *(v89 + OBJC_IVAR___DTProcessorTraceRecorder_configuration);
  if (v52 > 1)
  {
    options_init = hwtrace_load_options_init();
    if (options_init)
    {
      v61 = options_init;
      v97 = 0;
      if (!hwtrace_trace_init_from_recording())
      {
        v81[0] = v61;
        v81[1] = v51;
        hwtrace_trace_topology();
        v92 = 0;
        v96 = 0;
        hwtrace_topology_systems();
        v68 = v96;
        if (v96 && v92)
        {
          v82 = &v96[v92];
          do
          {
            v84 = v68;
            v69 = *v68;
            v91 = 0;
            v95 = 0;
            hwtrace_system_tasks();
            v70 = v95;
            if (v95 && v91)
            {
              v85 = 0;
              v71 = &v95[v91];
              v86 = v71;
              do
              {
                v72 = *v70;
                v90 = 0;
                v94 = 0;
                hwtrace_task_threads();
                v73 = v94;
                if (v94)
                {
                  if (v90)
                  {
                    v74 = &v94[v90];
                    while (2)
                    {
                      while (1)
                      {
                        v75 = *v73++;
                        v93 = 0;
                        v76 = hwtrace_cursor_init_from_thread();
                        if (v93 && v76 == 0)
                        {
                          break;
                        }

                        if (v73 == v74)
                        {
                          v79 = 0;
                          goto LABEL_63;
                        }
                      }

                      do
                      {
                        hwtrace_cursor_range();
                        v78 = hwtrace_range_terminator();
                        v79 = v78 == 1;
                        if (v78 == 1)
                        {
                          v85 = 1;
                          goto LABEL_63;
                        }
                      }

                      while (!hwtrace_cursor_next_range());
                      if (v73 != v74)
                      {
                        continue;
                      }

                      break;
                    }

LABEL_63:
                    v71 = v86;
                  }

                  else
                  {
                    v79 = 0;
                  }
                }

                else
                {
                  v79 = 0;
                }

                ++v70;
              }

              while (v70 != v71 && !v79);
              v80 = v85;
            }

            else
            {
              v80 = 0;
            }

            v68 = v84 + 1;
          }

          while (v84 + 1 != v82 && (v80 & 1) == 0);
        }

        hwtrace_trace_deinit();
        hwtrace_load_options_deinit();
        goto LABEL_31;
      }

      sub_100010CCC();
      swift_allocError();
      *v62 = 7;
      swift_willThrow();
      hwtrace_load_options_deinit();
      hwtrace_recording_deinit();
      hwtrace_live_recording_postprocess_options_deinit();
    }

    else
    {
      sub_100010CCC();
      swift_allocError();
      *v67 = 7;
      swift_willThrow();
      hwtrace_recording_deinit();
      hwtrace_live_recording_postprocess_options_deinit();
    }

LABEL_22:
    ktrace_file_close();
    goto LABEL_23;
  }

LABEL_31:
  hwtrace_recording_save_options_init();
  hwtrace_recording_save_options_set_ktrace_file();
  hwtrace_recording_save_options_set_port_mode();
  v53 = *(v83 + OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_decodeOnSave);
  hwtrace_recording_save_options_set_decode_trace();
  hwtrace_recording_save_options_set_decode_compression();
  v54 = hwtrace_recording_save();
  if (v54)
  {
    v55 = v54;
    v56 = sub_10001322C();
    v57 = sub_1000132DC();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 67109120;
      *(v58 + 4) = v55;
      _os_log_impl(&_mh_execute_header, v56, v57, "Failed to save recording: %d", v58, 8u);
    }

    sub_100010CCC();
    swift_allocError();
    *v59 = 6;
    swift_willThrow();
    hwtrace_recording_save_options_deinit();
LABEL_28:
    hwtrace_recording_deinit();
    hwtrace_live_recording_postprocess_options_deinit();
    ktrace_file_close();
    v20 = v89;
    goto LABEL_23;
  }

  hwtrace_live_recording_deinit();
  v63 = v89;
  *(v89 + v22) = 0;
  *(v63 + v21) = 0;
  v64 = sub_10001322C();
  v65 = sub_1000132CC();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 0;
    _os_log_impl(&_mh_execute_header, v64, v65, "Successfully saved recording to tracev3 file.", v66, 2u);
  }

  hwtrace_recording_save_options_deinit();
  hwtrace_recording_deinit();
  hwtrace_live_recording_postprocess_options_deinit();
  ktrace_file_close();
  sub_100010228(v89, v18, "save");
}

uint64_t sub_100010228(uint64_t a1, uint64_t a2, const char *a3)
{
  v20 = a3;
  v3 = sub_1000131DC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001319C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000131BC();
  sub_1000131EC();
  v14 = sub_1000132EC();
  if (sub_10001331C())
  {

    sub_10001321C();

    if ((*(v4 + 88))(v7, v3) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v15 = "[Error] Interval already ended";
    }

    else
    {
      (*(v4 + 8))(v7, v3);
      v15 = "";
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = sub_10001317C();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, v14, v17, v20, v15, v16, 2u);
  }

  return (*(v9 + 8))(v12, v8);
}

id ProcessorTraceRecorderConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1000105D4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10001060C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000106D8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
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
    sub_100011228(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000111DC(v11);
  return v7;
}

unint64_t sub_1000106D8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000107E4(a5, a6);
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
    result = sub_10001334C();
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

char *sub_1000107E4(uint64_t a1, unint64_t a2)
{
  v4 = sub_100010830(a1, a2);
  sub_100010960(&off_10001D928);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100010830(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100010A4C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_10001334C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_10001329C();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100010A4C(v10, 0);
        result = sub_10001333C();
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

uint64_t sub_100010960(uint64_t result)
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

  result = sub_100010AC0(result, v12, 1, v3);
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

void *sub_100010A4C(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100011284(&unk_100021A50, &unk_100016210);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100010AC0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100011284(&unk_100021A50, &unk_100016210);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t _s35com_apple_dt_instruments_dtsecurity22ProcessorTraceRecorderC22supportsVABufferForXNUSbvgZ_0()
{
  result = hwtrace_live_topology();
  if (result)
  {
    hwtrace_live_topology_systems();
    return 0;
  }

  return result;
}

unint64_t sub_100010CCC()
{
  result = qword_100021A00;
  if (!qword_100021A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021A00);
  }

  return result;
}

uint64_t type metadata accessor for ProcessorTraceRecorder()
{
  result = qword_100021A30;
  if (!qword_100021A30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100010D74()
{
  result = sub_10001324C();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1000131CC();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProcessorTraceRecorder.RecordingState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ProcessorTraceRecorder.RecordingState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProcessorTraceRecorder.ProcessorTraceRecorderError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ProcessorTraceRecorder.ProcessorTraceRecorderError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100011130()
{
  result = qword_100021A40;
  if (!qword_100021A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021A40);
  }

  return result;
}

unint64_t sub_100011188()
{
  result = qword_100021A48;
  if (!qword_100021A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021A48);
  }

  return result;
}

uint64_t sub_1000111DC(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100011228(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100011284(uint64_t *a1, uint64_t *a2)
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

Swift::Void __swiftcall ProcessorTraceRecorderConfiguration.encode(with:)(NSCoder with)
{
  v2 = v1;
  if (*(v1 + OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_target + 4))
  {
    if (!*(v1 + OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_target))
    {
      goto LABEL_6;
    }

    sub_100011678();
    v4.super.super.isa = sub_10001330C(0).super.super.isa;
  }

  else
  {
    v4.super.super.isa = sub_1000133BC().super.super.isa;
  }

  isa = v4.super.super.isa;
  v6 = sub_10001325C();
  [(objc_class *)with.super.isa encodeObject:isa forKey:v6];

LABEL_6:
  if (*(v2 + OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_isProductionModeEnabled) == 1)
  {
    sub_100011678();
    v7 = sub_10001330C(1).super.super.isa;
    v8 = sub_10001325C();
    [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];
  }

  if (*(v2 + OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_isThrottlingEnabled) == 1)
  {
    sub_100011678();
    v9 = sub_10001330C(1).super.super.isa;
    v10 = sub_10001325C();
    [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];
  }

  v11 = *(v2 + OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_copyImagesOnSave);
  v12 = sub_1000132BC().super.super.isa;
  v13 = sub_10001325C();
  [(objc_class *)with.super.isa encodeObject:v12 forKey:v13];

  if (*(v2 + OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_decodeOnSave) == 1)
  {
    sub_100011678();
    v14 = sub_10001330C(1).super.super.isa;
    v15 = sub_10001325C();
    [(objc_class *)with.super.isa encodeObject:v14 forKey:v15];
  }

  if (*(v2 + OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_recordingMode + 8) > 1u)
  {
    sub_100011678();
    v17.super.super.isa = sub_10001330C(1).super.super.isa;
  }

  else
  {
    v16 = *(v2 + OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_recordingMode);
    v17.super.super.isa = sub_1000133FC().super.super.isa;
  }

  v18 = sub_10001325C();
  [(objc_class *)with.super.isa encodeObject:v17.super.super.isa forKey:v18];

  v19 = *(v2 + OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_systems);
  v20 = sub_1000132AC().super.isa;
  v21 = sub_10001325C();
  [(objc_class *)with.super.isa encodeObject:v20 forKey:v21];
}

unint64_t sub_100011678()
{
  result = qword_100021A98;
  if (!qword_100021A98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100021A98);
  }

  return result;
}

id ProcessorTraceRecorderConfiguration.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_isDriverEnabled] = 1;
  v4 = sub_10001325C();
  v5 = [a1 decodeObjectForKey:v4];

  if (v5)
  {
    sub_10001332C();
    swift_unknownObjectRelease();
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
  }

  v40 = v38;
  v41 = v39;
  if (!*(&v39 + 1))
  {
    sub_100012000(&v40);
    goto LABEL_9;
  }

  sub_100011678();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v7 = &v1[OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_target];
    *&v1[OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_target] = 0;
    goto LABEL_10;
  }

  v6 = sub_1000133AC();

  v7 = &v1[OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_target];
  if (v6)
  {
    *v7 = v6;
    v7[4] = 0;
    goto LABEL_11;
  }

  *v7 = 1;
LABEL_10:
  v7[4] = 1;
LABEL_11:
  v8 = sub_10001325C();
  v9 = [a1 decodeObjectForKey:v8];

  if (v9)
  {
    sub_10001332C();
    swift_unknownObjectRelease();
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
  }

  v40 = v38;
  v41 = v39;
  if (*(&v39 + 1))
  {
    sub_100011678();
    if (swift_dynamicCast())
    {
      v10 = [v37 BOOLValue];

      goto LABEL_19;
    }
  }

  else
  {
    sub_100012000(&v40);
  }

  v10 = 0;
LABEL_19:
  v1[OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_isProductionModeEnabled] = v10;
  v11 = sub_10001325C();
  v12 = [a1 decodeObjectForKey:v11];

  if (v12)
  {
    sub_10001332C();
    swift_unknownObjectRelease();
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
  }

  v40 = v38;
  v41 = v39;
  if (*(&v39 + 1))
  {
    sub_100011678();
    if (swift_dynamicCast())
    {
      v13 = [v37 BOOLValue];

      goto LABEL_27;
    }
  }

  else
  {
    sub_100012000(&v40);
  }

  v13 = 0;
LABEL_27:
  v1[OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_isThrottlingEnabled] = v13;
  v14 = sub_10001325C();
  v15 = [a1 decodeObjectForKey:v14];

  if (v15)
  {
    sub_10001332C();
    swift_unknownObjectRelease();
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
  }

  v40 = v38;
  v41 = v39;
  if (*(&v39 + 1))
  {
    sub_100011678();
    if (swift_dynamicCast())
    {
      v16 = [v37 integerValue];

      if (v16 >= 3)
      {
        v17 = 1;
      }

      else
      {
        v17 = v16;
      }

      goto LABEL_37;
    }
  }

  else
  {
    sub_100012000(&v40);
  }

  v17 = 1;
LABEL_37:
  v1[OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_copyImagesOnSave] = v17;
  v18 = sub_10001325C();
  v19 = [a1 decodeObjectForKey:v18];

  if (v19)
  {
    sub_10001332C();
    swift_unknownObjectRelease();
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
  }

  v40 = v38;
  v41 = v39;
  if (*(&v39 + 1))
  {
    sub_100011678();
    if (swift_dynamicCast())
    {
      v20 = [v37 BOOLValue];

      goto LABEL_45;
    }
  }

  else
  {
    sub_100012000(&v40);
  }

  v20 = 0;
LABEL_45:
  v1[OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_decodeOnSave] = v20;
  v21 = sub_10001325C();
  v22 = [a1 decodeObjectForKey:v21];

  if (v22)
  {
    sub_10001332C();
    swift_unknownObjectRelease();
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
  }

  v40 = v38;
  v41 = v39;
  if (*(&v39 + 1))
  {
    sub_100011678();
    if (swift_dynamicCast())
    {

      v23 = 0;
      v24 = -1;
      goto LABEL_72;
    }
  }

  else
  {
    sub_100012000(&v40);
  }

  v25 = sub_10001325C();
  v26 = [a1 decodeObjectForKey:v25];

  if (v26)
  {
    sub_10001332C();
    swift_unknownObjectRelease();
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
  }

  v40 = v38;
  v41 = v39;
  if (*(&v39 + 1))
  {
    sub_100011678();
    if (swift_dynamicCast())
    {

      v23 = 0;
      v24 = 2;
      goto LABEL_72;
    }
  }

  else
  {
    sub_100012000(&v40);
  }

  v27 = sub_10001325C();
  v28 = [a1 decodeObjectForKey:v27];

  if (v28)
  {
    sub_10001332C();
    swift_unknownObjectRelease();
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
  }

  v40 = v38;
  v41 = v39;
  if (*(&v39 + 1))
  {
    sub_100011678();
    if (swift_dynamicCast())
    {
      v23 = [v37 unsignedLongLongValue];

      v24 = 0;
      goto LABEL_72;
    }
  }

  else
  {
    sub_100012000(&v40);
  }

  v29 = sub_10001325C();
  v30 = [a1 decodeObjectForKey:v29];

  if (v30)
  {
    sub_10001332C();
    swift_unknownObjectRelease();
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
  }

  v40 = v38;
  v41 = v39;
  if (!*(&v39 + 1))
  {
    goto LABEL_78;
  }

  sub_100011678();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_79:

    goto LABEL_80;
  }

  v23 = [v37 unsignedLongLongValue];

  v24 = 1;
LABEL_72:
  v31 = &v1[OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_recordingMode];
  *v31 = v23;
  v31[8] = v24;
  v32 = sub_10001325C();
  v33 = [a1 decodeObjectForKey:v32];

  if (v33)
  {
    sub_10001332C();
    swift_unknownObjectRelease();
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
  }

  v40 = v38;
  v41 = v39;
  if (*(&v39 + 1))
  {
    sub_100011284(&qword_100021AB0, &qword_100016228);
    if (swift_dynamicCast())
    {
      *&v1[OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_systems] = v37;
      v36.receiver = v1;
      v36.super_class = ObjectType;
      v34 = objc_msgSendSuper2(&v36, "init");

      return v34;
    }

    goto LABEL_79;
  }

LABEL_78:

  sub_100012000(&v40);
LABEL_80:
  swift_deallocPartialClassInstance();
  return 0;
}

com_apple_dt_instruments_dtsecurity::ProcessorTraceRecorderConfiguration::CopyImagesMode_optional __swiftcall ProcessorTraceRecorderConfiguration.CopyImagesMode.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 3)
  {
    LOBYTE(rawValue) = 3;
  }

  return rawValue;
}

uint64_t sub_100012000(uint64_t a1)
{
  v2 = sub_100011284(&qword_100021AA8, &qword_100016220);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id ProcessorTraceRecorderConfiguration.__allocating_init(target:isProductionModeEnabled:isThrottlingEnabled:recordingMode:systems:copyImagesOnSave:decodeOnSave:)(uint64_t a1, char a2, char a3, uint64_t a4, char a5, uint64_t a6, char a7, char a8)
{
  v17 = objc_allocWithZone(v8);
  v17[OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_isDriverEnabled] = 1;
  v18 = &v17[OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_target];
  *v18 = a1;
  v18[4] = BYTE4(a1) & 1;
  v17[OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_isProductionModeEnabled] = a2;
  v17[OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_isThrottlingEnabled] = a3;
  v19 = &v17[OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_recordingMode];
  *v19 = a4;
  v19[8] = a5;
  *&v17[OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_systems] = a6;
  v17[OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_copyImagesOnSave] = a7;
  v17[OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_decodeOnSave] = a8;
  v21.receiver = v17;
  v21.super_class = v8;
  return objc_msgSendSuper2(&v21, "init");
}

id ProcessorTraceRecorderConfiguration.init(target:isProductionModeEnabled:isThrottlingEnabled:recordingMode:systems:copyImagesOnSave:decodeOnSave:)(uint64_t a1, char a2, char a3, uint64_t a4, char a5, uint64_t a6, char a7, char a8)
{
  ObjectType = swift_getObjectType();
  v8[OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_isDriverEnabled] = 1;
  v18 = &v8[OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_target];
  *v18 = a1;
  v18[4] = BYTE4(a1) & 1;
  v8[OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_isProductionModeEnabled] = a2;
  v8[OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_isThrottlingEnabled] = a3;
  v19 = &v8[OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_recordingMode];
  *v19 = a4;
  v19[8] = a5;
  *&v8[OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_systems] = a6;
  v8[OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_copyImagesOnSave] = a7;
  v8[OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_decodeOnSave] = a8;
  v21.receiver = v8;
  v21.super_class = ObjectType;
  return objc_msgSendSuper2(&v21, "init");
}

uint64_t *sub_100012280@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

id ProcessorTraceRecorderConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100012348()
{
  result = qword_100021AB8;
  if (!qword_100021AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021AB8);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ProcessorTraceRecorderConfiguration.RingBufferMode(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ProcessorTraceRecorderConfiguration.RecordingMode(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  if (v4 + 1 >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ProcessorTraceRecorderConfiguration.RecordingMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = ~a2;
    }
  }

  return result;
}

uint64_t sub_100012474(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100012488(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
  }

  else if (a2)
  {
    *(result + 8) = -a2;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProcessorTraceRecorderConfiguration.RingBufferMode(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ProcessorTraceRecorderConfiguration.RingBufferMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_10001254C(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_100012564(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ProcessorTraceRecorderConfiguration.RecordingTarget(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ProcessorTraceRecorderConfiguration.RecordingTarget(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ProcessorTraceRecorderConfiguration.RecordingTarget(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_1000125EC(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100012608(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProcessorTraceRecorderConfiguration.CopyImagesMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ProcessorTraceRecorderConfiguration.CopyImagesMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_100012788()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = sub_10001326C();
    v4 = v3;

    qword_100021B50 = v2;
    *algn_100021B58 = v4;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100012814()
{
  v0 = sub_10001324C();
  sub_1000128D0(v0, qword_100022030);
  sub_1000105D4(v0, qword_100022030);
  if (qword_1000219C8 != -1)
  {
    swift_once();
  }

  return sub_10001323C();
}

uint64_t *sub_1000128D0(uint64_t a1, uint64_t *a2)
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

void sub_100012970(void *a1, _xpc_connection_s *a2)
{
  v3 = a1;
  v4[0] = 67109376;
  v4[1] = xpc_connection_get_pid(a2);
  v5 = 2048;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Denying connection from process (%d : %p) because it is missing an entitlement.", v4, 0x12u);
}

void sub_100012A18(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_100002F14(&_mh_execute_header, v2, v3, "Failed to unarchive config data: %@", v4, v5, v6, v7, 2u);
}

void sub_100012AE4()
{
  v0 = __error();
  strerror(*v0);
  sub_100002F14(&_mh_execute_header, v1, v2, "failed to set flags on stackshot config (%s)", v3, v4, v5, v6, 2u);
}

void sub_100012B68()
{
  v0 = __error();
  strerror(*v0);
  sub_100002F14(&_mh_execute_header, v1, v2, "stackshot failed (%s)", v3, v4, v5, v6, 2u);
}

void sub_100012BEC(os_log_t log)
{
  v1 = 136315138;
  v2 = "Message";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "xpc caller did not provide a value for the required %s key", &v1, 0xCu);
}

void sub_100012CD4(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Provider failed: %{public}@", &v2, 0xCu);
}

void sub_100012D60(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to append provider '%{public}@', to a session", &v2, 0xCu);
}

void sub_100012E04(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DTKTraceHelpers.m" lineNumber:272 description:{@"Invalid parameter not satisfying: %@", @"outFD != nil"}];
}

void sub_100012FB0(uint64_t a1, int a2, os_log_t log)
{
  v3[0] = 67109378;
  v3[1] = a2;
  v4 = 2114;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "failed to acquire assertion for pid %d: %{public}@", v3, 0x12u);
}

void sub_10001304C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DTCPUClusterInfo.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"coder.allowsKeyedCoding"}];
}

void sub_1000130C8(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DTCPUClusterInfo.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"coder.allowsKeyedCoding"}];
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}