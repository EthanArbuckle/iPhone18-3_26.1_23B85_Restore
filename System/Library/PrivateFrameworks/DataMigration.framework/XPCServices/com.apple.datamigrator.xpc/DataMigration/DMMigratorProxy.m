@interface DMMigratorProxy
- (DMMigratorProxy)initWithConnection:(id)a3;
- (void)handleMessage:(id)a3;
@end

@implementation DMMigratorProxy

- (DMMigratorProxy)initWithConnection:(id)a3
{
  v7.receiver = self;
  v7.super_class = DMMigratorProxy;
  v3 = [(DMMigratorProxy *)&v7 initWithConnection:a3];
  if (v3)
  {
    v4 = objc_alloc_init(DMMigrator);
    migrator = v3->_migrator;
    v3->_migrator = v4;
  }

  return v3;
}

- (void)handleMessage:(id)a3
{
  v4 = a3;
  int64 = xpc_dictionary_get_int64(v4, "msgID");
  v6 = OBJC_IVAR___DMXPCConnection__connection;
  pid = xpc_connection_get_pid(*&self->DMXPCConnection_opaque[OBJC_IVAR___DMXPCConnection__connection]);
  v8 = [NSNumber numberWithLongLong:int64];
  [NSNumber numberWithInt:pid];
  v91 = v89 = v8;
  v86 = v4;
  _DMLogFunc();

  v123 = 0;
  v124 = &v123;
  v125 = 0x3032000000;
  v126 = sub_10000A5A8;
  v127 = sub_10000A5B8;
  v128 = 0;
  v9 = dispatch_time(0, 10500000000);
  v116[0] = _NSConcreteStackBlock;
  v116[1] = 3221225472;
  v116[2] = sub_10000A5C0;
  v116[3] = &unk_1000249D0;
  v10 = v4;
  v122 = pid;
  v120 = int64;
  v121 = v9;
  v117 = v10;
  v118 = self;
  v119 = &v123;
  v11 = objc_retainBlock(v116);
  switch(int64)
  {
    case 0:
      v12 = xpc_dictionary_get_BOOL(v10, "checkNecessity");
      string = xpc_dictionary_get_string(v10, "lastRelevantPlugin");
      if (string)
      {
        v14 = [NSString stringWithUTF8String:string, v86, v89, v91];
      }

      else
      {
        v14 = 0;
      }

      v80 = xpc_dictionary_get_BOOL(v10, "testMigrationInfrastructureOnly");
      v90 = string;
      _DMLogFunc();
      v81 = os_transaction_create();
      v82 = v124[5];
      v124[5] = v81;

      migrator = self->_migrator;
      v84 = *&self->DMXPCConnection_opaque[v6];
      v112[0] = _NSConcreteStackBlock;
      v112[1] = 3221225472;
      v112[2] = sub_10000A8EC;
      v112[3] = &unk_1000249F8;
      v115 = pid;
      v113 = v10;
      v114 = self;
      [(DMMigrator *)migrator migrateCheckingNecessity:v12 lastRelevantPlugin:v14 testMigrationInfrastructureOnly:v80 connection:v84 migrationResultHandler:v112, v14, v90];
      v110[0] = 0;
      v110[1] = v110;
      v110[2] = 0x3032000000;
      v110[3] = sub_10000A5A8;
      v110[4] = sub_10000A5B8;
      v111 = os_transaction_create();
      v85 = dispatch_time(0, 3000000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000A9D0;
      block[3] = &unk_100024790;
      block[4] = v110;
      dispatch_after(v85, &_dispatch_main_q, block);
      (v11[2])(v11);
      _Block_object_dispose(v110, 8);

      v25 = v113;
      goto LABEL_40;
    case 1:
      v50 = os_transaction_create();
      v51 = v124[5];
      v124[5] = v50;

      v52 = [(DMMigrator *)self->_migrator orderedPluginIdentifiers:v86];
      v25 = xpc_array_create(0, 0);
      v107 = 0u;
      v108 = 0u;
      v105 = 0u;
      v106 = 0u;
      v14 = v52;
      v53 = [v14 countByEnumeratingWithState:&v105 objects:v131 count:16];
      if (v53)
      {
        v54 = *v106;
        do
        {
          for (i = 0; i != v53; i = i + 1)
          {
            if (*v106 != v54)
            {
              objc_enumerationMutation(v14);
            }

            xpc_array_set_string(v25, 0xFFFFFFFFFFFFFFFFLL, [*(*(&v105 + 1) + 8 * i) UTF8String]);
          }

          v53 = [v14 countByEnumeratingWithState:&v105 objects:v131 count:16];
        }

        while (v53);
      }

      reply = xpc_dictionary_create_reply(v10);
      xpc_dictionary_set_value(reply, "results", v25);
      v57 = xpc_dictionary_get_remote_connection(v10);
      xpc_connection_send_message(v57, reply);
      (v11[2])(v11);

      goto LABEL_40;
    case 2:
      v34 = xpc_dictionary_get_BOOL(v10, "invert");
      v35 = xpc_dictionary_get_BOOL(v10, "progress");
      v36 = os_transaction_create();
      v37 = v124[5];
      v124[5] = v36;

      [(DMMigrator *)self->_migrator testMigrationUIWithProgress:v35 forceInvert:v34 completion:v11, v86, v89, v91];
      break;
    case 3:
      v38 = xpc_dictionary_get_BOOL(v10, "visible");
      v39 = os_transaction_create();
      v40 = v124[5];
      v124[5] = v39;

      v41 = [NSNotificationCenter defaultCenter:v86];
      v42 = kDMMigratorChangeProgressWindowVisibilityNotification;
      v129 = kDMMigratorProgressWindowVisibility;
      v43 = [NSNumber numberWithBool:v38];
      v130 = v43;
      v44 = [NSDictionary dictionaryWithObjects:&v130 forKeys:&v129 count:1];
      [v41 postNotificationName:v42 object:0 userInfo:v44];

      v14 = xpc_dictionary_create_reply(v10);
      xpc_dictionary_set_BOOL(v14, "success", 1);
      xpc_connection_send_message(*&self->DMXPCConnection_opaque[v6], v14);
      v45 = [NSNumber numberWithLongLong:3];
      v95 = [NSNumber numberWithInt:pid];
      _DMLogFunc();

      (v11[2])(v11);
      goto LABEL_41;
    case 4:
      v21 = os_transaction_create();
      v22 = v124[5];
      v124[5] = v21;

      uint64 = xpc_dictionary_get_uint64(v10, "disposition");
      v24 = objc_alloc_init(DMContextManager);
      v14 = [v24 contextFromXPCDictionary:{v10, v86, v89, v91}];

      [(DMMigrator *)self->_migrator forceMigrationOnNextRebootWithUserDataDisposition:uint64 context:v14];
      v25 = xpc_dictionary_create_reply(v10);
      xpc_connection_send_message(*&self->DMXPCConnection_opaque[v6], v25);
      (v11[2])(v11);
      goto LABEL_40;
    case 5:
      v58 = os_transaction_create();
      v59 = v124[5];
      v124[5] = v58;

      v60 = [(DMMigrator *)self->_migrator isMigrationNeeded:pid, v86, v89, v91];
      v14 = xpc_dictionary_create_reply(v10);
      xpc_dictionary_set_BOOL(v14, "isMigrationNeeded", v60);
      xpc_connection_send_message(*&self->DMXPCConnection_opaque[v6], v14);
      v61 = [NSNumber numberWithLongLong:5];
      v62 = [NSNumber numberWithInt:pid];
      _DMLogFunc();

      (v11[2])(v11);
      goto LABEL_41;
    case 6:
      v68 = os_transaction_create();
      v69 = v124[5];
      v124[5] = v68;

      v70 = [(DMMigrator *)self->_migrator userDataDisposition:v86];
      v14 = xpc_dictionary_create_reply(v10);
      xpc_dictionary_set_uint64(v14, "disposition", v70);
      xpc_connection_send_message(*&self->DMXPCConnection_opaque[v6], v14);
      v71 = [NSNumber numberWithLongLong:6];
      v98 = [NSNumber numberWithInt:pid];
      _DMLogFunc();

      (v11[2])(v11);
      goto LABEL_41;
    case 7:
      v46 = os_transaction_create();
      v47 = v124[5];
      v124[5] = v46;

      v14 = [(DMMigrator *)self->_migrator previousBuildVersion:v86];
      v25 = xpc_dictionary_create_reply(v10);
      if (v14)
      {
        v48 = v14;
        xpc_dictionary_set_string(v25, "previousBuildVersion", [v14 UTF8String]);
      }

      xpc_connection_send_message(*&self->DMXPCConnection_opaque[v6], v25);
      v49 = [NSNumber numberWithLongLong:7];
      v96 = [NSNumber numberWithInt:pid];
      _DMLogFunc();

      (v11[2])(v11);
      goto LABEL_40;
    case 8:
      v77 = os_transaction_create();
      v78 = v124[5];
      v124[5] = v77;

      [(DMMigrator *)self->_migrator reportMigrationFailure:v86];
      v14 = xpc_dictionary_create_reply(v10);
      xpc_connection_send_message(*&self->DMXPCConnection_opaque[v6], v14);
      v79 = [NSNumber numberWithLongLong:8];
      v100 = [NSNumber numberWithInt:pid];
      _DMLogFunc();

      (v11[2])(v11);
      goto LABEL_41;
    case 9:
      v30 = os_transaction_create();
      v31 = v124[5];
      v124[5] = v30;

      v14 = [(DMMigrator *)self->_migrator migrationPhaseDescription:v86];
      v25 = xpc_dictionary_create_reply(v10);
      if (v14)
      {
        v32 = v14;
        xpc_dictionary_set_string(v25, "description", [v14 UTF8String]);
      }

      xpc_connection_send_message(*&self->DMXPCConnection_opaque[v6], v25);
      v33 = [NSNumber numberWithLongLong:9];
      v94 = [NSNumber numberWithInt:pid];
      _DMLogFunc();

      (v11[2])(v11);
      goto LABEL_40;
    case 10:
      v72 = os_transaction_create();
      v73 = v124[5];
      v124[5] = v72;

      v14 = [(DMMigrator *)self->_migrator migrationPluginResults:v86];
      v25 = xpc_dictionary_create_reply(v10);
      if (v14)
      {
        v103 = 0;
        v74 = [NSKeyedArchiver archivedDataWithRootObject:v14 requiringSecureCoding:1 error:&v103];
        v102 = v103;
        v88 = [v74 length];
        _DMLogFunc();
        if ([v74 length])
        {
          v75 = v74;
          xpc_dictionary_set_data(v25, "results", [v74 bytes], objc_msgSend(v74, "length"));
        }
      }

      xpc_connection_send_message(*&self->DMXPCConnection_opaque[v6], v25);
      v76 = [NSNumber numberWithLongLong:10];
      v99 = [NSNumber numberWithInt:pid];
      _DMLogFunc();

      (v11[2])(v11);
      goto LABEL_40;
    case 11:
      v17 = os_transaction_create();
      v18 = v124[5];
      v124[5] = v17;

      v19 = objc_alloc_init(DMMigrationDeferredExitManager);
      [v19 deferExitWithConnection:{self, v86, v89, v91}];

      v14 = xpc_dictionary_create_reply(v10);
      xpc_connection_send_message(*&self->DMXPCConnection_opaque[v6], v14);
      v20 = [NSNumber numberWithLongLong:11];
      v92 = [NSNumber numberWithInt:pid];
      _DMLogFunc();

      (v11[2])(v11);
      goto LABEL_41;
    case 12:
      v26 = os_transaction_create();
      v27 = v124[5];
      v124[5] = v26;

      v28 = objc_alloc_init(DMMigrationDeferredExitManager);
      [v28 cancelDeferredExitWithConnection:{self, v86, v89, v91}];

      v14 = xpc_dictionary_create_reply(v10);
      xpc_connection_send_message(*&self->DMXPCConnection_opaque[v6], v14);
      v29 = [NSNumber numberWithLongLong:12];
      v93 = [NSNumber numberWithInt:pid];
      _DMLogFunc();

      (v11[2])(v11);
      goto LABEL_41;
    case 13:
      v63 = os_transaction_create();
      v64 = v124[5];
      v124[5] = v63;

      v14 = [(DMMigrator *)self->_migrator userDataDispositionAuxiliaryData:v86];
      v25 = xpc_dictionary_create_reply(v10);
      if (v14)
      {
        v104 = 0;
        v65 = [NSKeyedArchiver archivedDataWithRootObject:v14 requiringSecureCoding:1 error:&v104];
        v101 = v104;
        v87 = [v65 length];
        _DMLogFunc();
        if ([v65 length])
        {
          v66 = v65;
          xpc_dictionary_set_data(v25, "dispositionAuxiliaryData", [v65 bytes], objc_msgSend(v65, "length"));
        }
      }

      xpc_connection_send_message(*&self->DMXPCConnection_opaque[v6], v25);
      v67 = [NSNumber numberWithLongLong:13];
      v97 = [NSNumber numberWithInt:pid];
      _DMLogFunc();

      (v11[2])(v11);
LABEL_40:

      goto LABEL_41;
    case 14:
      v15 = os_transaction_create();
      v16 = v124[5];
      v124[5] = v15;

      [(DMMigrator *)self->_migrator progressHostIsReady:v86];
      v14 = xpc_dictionary_create_reply(v10);
      xpc_connection_send_message(*&self->DMXPCConnection_opaque[v6], v14);
      (v11[2])(v11);
LABEL_41:

      break;
    default:
      _DMLogFunc();
      break;
  }

  _Block_object_dispose(&v123, 8);
}

@end