@interface BSServiceConnection
+ (id)NSXPCConnectionWithEndpoint:(id)a3 clientContextBuilder:(id)a4 configurator:(id)a5;
+ (id)NSXPCConnectionWithEndpoint:(id)a3 configurator:(id)a4;
+ (id)_connectionWithEndpoint:(uint64_t)a3 muxer:(uint64_t)a4 clientContextBuilder:;
+ (id)connectionWithEndpoint:(id)a3;
+ (id)connectionWithEndpoint:(id)a3 clientContextBuilder:(id)a4;
+ (void)_currentConnection;
- (BSProcessHandle)remoteProcess;
- (BSServiceConnection)init;
- (NSCopying)userInfo;
- (NSString)description;
- (RBSTarget)remoteAssertionTarget;
- (id)_connection;
- (id)_extractNSXPCConnectionWithConfigurator:(uint64_t)a1 assertionProvider:(void *)a2;
- (id)_extractUnderlyingConnection;
- (id)_initWithConfiguration:(id *)a1;
- (id)createMessageWithCompletion:(id)a3;
- (id)extractNSXPCConnectionWithConfigurator:(id)a3;
- (id)extractNSXPCConnectionWithViewServiceConfigurator:(id)a3;
- (id)remoteTargetWithAssertionAttributes:(id)a3;
- (void)_config:(uint64_t)a1;
- (void)activate;
- (void)dealloc;
- (void)invalidate;
- (void)loggingProem;
@end

@implementation BSServiceConnection

+ (void)_currentConnection
{
  objc_opt_self();
  v0 = +[BSXPCServiceConnection currentContext];
  v1 = objc_opt_class();
  v2 = v0;
  if (v1)
  {
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [v4 object];

  v6 = objc_opt_class();
  v7 = v5;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v7;
    }

    else
    {
      v6 = 0;
    }
  }

  v8 = v6;

  return v6;
}

- (NSCopying)userInfo
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_userInfo;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)dealloc
{
  v23 = *MEMORY[0x1E69E9840];
  if (!self->_lock_noAssertInvalidatedOnDealloc && !self->_lock_invalidated)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalidation must occur before letting the connection dealloc for %@ : cnx=%@", self->_name, self->_connection];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = NSStringFromSelector(a2);
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      *buf = 138544642;
      v12 = v6;
      v13 = 2114;
      v14 = v8;
      v15 = 2048;
      v16 = self;
      v17 = 2114;
      v18 = @"BSServiceConnection.m";
      v19 = 1024;
      v20 = 261;
      v21 = 2114;
      v22 = v5;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v9 = v5;
    [v5 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A824958);
  }

  v10.receiver = self;
  v10.super_class = BSServiceConnection;
  [(BSServiceConnection *)&v10 dealloc];
  v3 = *MEMORY[0x1E69E9840];
}

void __31__BSServiceConnection_activate__block_invoke_259(void *a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v15 = +[BSServiceConnection _currentConnection];
  if (!v15)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = [(BSXPCServiceConnection *)a2 stateDump];
    v7 = +[BSXPCServiceConnection currentContext];
    v8 = a1[4];
    v9 = [MEMORY[0x1E696AF00] currentThread];
    v10 = [MEMORY[0x1E696AF00] currentThread];
    v11 = [v10 threadDictionary];
    v12 = [v5 stringWithFormat:@"%@: _currentConnection is nil in invalidation handler : context=%@ : name=%@ : t=%@ : tls=%@", v6, v7, v8, v9, v11];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[BSServiceConnection activate]_block_invoke"];
      *buf = 138544130;
      v17 = v13;
      v18 = 2114;
      v19 = @"BSServiceConnection.m";
      v20 = 1024;
      v21 = 492;
      v22 = 2114;
      v23 = v12;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    v14 = v12;
    [v12 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A824EBCLL);
  }

  os_unfair_lock_lock((a1[5] + 32));
  *(a1[5] + 56) = 1;
  os_unfair_lock_unlock((a1[5] + 32));
  (*(a1[6] + 16))();
  v4 = *MEMORY[0x1E69E9840];
}

- (void)activate
{
  v72 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  lock_config = self->_lock_config;
  if (!lock_config)
  {
    goto LABEL_44;
  }

  interface = lock_config->_interface;
  if (!interface)
  {
    if (lock_config->_target)
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"interface must be specified if you specified a target : service=%@", self->_service];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v23 = NSStringFromSelector(a2);
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        *buf = 138544642;
        v61 = v23;
        v62 = 2114;
        v63 = v25;
        v64 = 2048;
        v65 = self;
        v66 = 2114;
        v67 = @"BSServiceConnection.m";
        v68 = 1024;
        v69 = 373;
        v70 = 2114;
        v71 = v22;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v26 = v22;
      [v22 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A82526CLL);
    }

    if (!lock_config->_messageHandler)
    {
      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"some form of interface handler must be specified before activation : service=%@", self->_service];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v34 = NSStringFromSelector(a2);
        v35 = objc_opt_class();
        v36 = NSStringFromClass(v35);
        *buf = 138544642;
        v61 = v34;
        v62 = 2114;
        v63 = v36;
        v64 = 2048;
        v65 = self;
        v66 = 2114;
        v67 = @"BSServiceConnection.m";
        v68 = 1024;
        v69 = 398;
        v70 = 2114;
        v71 = v33;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v37 = v33;
      [v33 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A825478);
    }

    if (self->_requiresMessagingAfterHandshake)
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"raw message handlers aren't supported on this connection : service=%@", self->_service];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v18 = NSStringFromSelector(a2);
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        *buf = 138544642;
        v61 = v18;
        v62 = 2114;
        v63 = v20;
        v64 = 2048;
        v65 = self;
        v66 = 2114;
        v67 = @"BSServiceConnection.m";
        v68 = 1024;
        v69 = 399;
        v70 = 2114;
        v71 = v17;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v21 = v17;
      [v17 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A82516CLL);
    }

    goto LABEL_41;
  }

  v6 = [(BSServiceInterface *)interface identifier];
  if (v6 && ![(NSString *)self->_service isEqualToString:v6])
  {
    if ([(NSString *)self->_service isEqualToString:@"com.apple.BoardServices.invalid-service"])
    {
      connection = self->_connection;
      if (connection)
      {
        connection = connection->_context;
      }

      v8 = connection;
      v9 = objc_opt_class();
      if (v9 == objc_opt_class())
      {
        if (v8)
        {
          configured_connectionQueue = v8->_configured_connectionQueue;
        }

        else
        {
          configured_connectionQueue = 0;
        }

        v11 = configured_connectionQueue;
        v12 = [(BSXPCServiceConnectionEndpoint *)v11 isNullEndpoint];

        if (v12)
        {
          goto LABEL_12;
        }
      }

      else
      {
      }
    }

    service = self->_service;
    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"interface's identifier doesn't match our service : service=%@ interface=%@", service, self->_lock_config->_interface];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v29 = NSStringFromSelector(a2);
      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      *buf = 138544642;
      v61 = v29;
      v62 = 2114;
      v63 = v31;
      v64 = 2048;
      v65 = self;
      v66 = 2114;
      v67 = @"BSServiceConnection.m";
      v68 = 1024;
      v69 = 387;
      v70 = 2114;
      v71 = v28;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v32 = v28;
    [v28 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A825378);
  }

LABEL_12:
  if (self->_requiresMessagingAfterHandshake && [(BSServiceInterface *)self->_lock_config->_interface clientMessagingExpectation]!= 1)
  {
    v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"incompatible clientMessagingExpectation for this connection : interface=%@", self->_lock_config->_interface];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v39 = NSStringFromSelector(a2);
      v40 = objc_opt_class();
      v41 = NSStringFromClass(v40);
      *buf = 138544642;
      v61 = v39;
      v62 = 2114;
      v63 = v41;
      v64 = 2048;
      v65 = self;
      v66 = 2114;
      v67 = @"BSServiceConnection.m";
      v68 = 1024;
      v69 = 391;
      v70 = 2114;
      v71 = v38;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v42 = v38;
    [v38 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A82557CLL);
  }

  v13 = self->_connection;
  if (v13)
  {
    v14 = [(BSXPCServiceConnectionContext *)v13->_context isServer];
    v15 = self->_lock_config->_interface;
    if (v14)
    {
      v16 = [(BSServiceInterface *)v15 server];
      goto LABEL_38;
    }
  }

  else
  {
    v15 = self->_lock_config->_interface;
  }

  v16 = [(BSServiceInterface *)v15 client];
LABEL_38:
  v43 = v16;
  v44 = [v16 methods];
  v45 = [v44 count];

  if (v45)
  {
    v46 = self->_lock_config;
    if (!v46->_target)
    {
      v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@"target must be specified if the local interface is not empty : interface=%@", v46->_interface];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v50 = NSStringFromSelector(a2);
        v51 = objc_opt_class();
        v52 = NSStringFromClass(v51);
        *buf = 138544642;
        v61 = v50;
        v62 = 2114;
        v63 = v52;
        v64 = 2048;
        v65 = self;
        v66 = 2114;
        v67 = @"BSServiceConnection.m";
        v68 = 1024;
        v69 = 395;
        v70 = 2114;
        v71 = v58;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v58 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A825778);
    }
  }

  lock_config = self->_lock_config;
LABEL_41:
  if (!lock_config->_invalidationHandler && !lock_config->_errorHandler)
  {
    v53 = [MEMORY[0x1E696AEC0] stringWithFormat:@"you must configure an invalidation handler : service=%@", self->_service];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v54 = NSStringFromSelector(a2);
      v55 = objc_opt_class();
      v56 = NSStringFromClass(v55);
      *buf = 138544642;
      v61 = v54;
      v62 = 2114;
      v63 = v56;
      v64 = 2048;
      v65 = self;
      v66 = 2114;
      v67 = @"BSServiceConnection.m";
      v68 = 1024;
      v69 = 401;
      v70 = 2114;
      v71 = v53;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v57 = v53;
    [v53 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A825878);
  }

  v47 = self->_connection;
  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = __31__BSServiceConnection_activate__block_invoke;
  v59[3] = &unk_1E7520780;
  v59[4] = self;
  v59[5] = a2;
  [(BSXPCServiceConnection *)v47 configure:v59];
  v48 = self->_lock_config;
  self->_lock_config = 0;

LABEL_44:
  [(BSXPCServiceConnection *)self->_connection activateNowOrWhenReady:?];
  os_unfair_lock_unlock(&self->_lock);
  v49 = *MEMORY[0x1E69E9840];
}

void __31__BSServiceConnection_activate__block_invoke(uint64_t a1, void *a2)
{
  v129 = *MEMORY[0x1E69E9840];
  v4 = (a1 + 32);
  v5 = [MEMORY[0x1E698E7B8] referenceWithObject:*(a1 + 32)];
  [(BSXPCServiceConnectionEventHandler *)a2 setCalloutContext:v5];

  v6 = *v4;
  v7 = *(*v4 + 40);
  if (*(v7 + 48))
  {
    v116[0] = MEMORY[0x1E69E9820];
    v116[1] = 3221225472;
    v116[2] = __31__BSServiceConnection_activate__block_invoke_2;
    v116[3] = &unk_1E75206E0;
    v116[4] = v6;
    [(BSXPCServiceConnectionEventHandler *)a2 encodeInitiatingContext:v116];
    v6 = *(a1 + 32);
    v7 = *(v6 + 40);
  }

  v8 = *(v7 + 64);
  if (!v8)
  {
    v8 = *(v6 + 16);
  }

  if (a2)
  {
    v9 = [v8 copy];
    v10 = a2[18];
    a2[18] = v9;

    v7 = *(*(a1 + 32) + 40);
    v11 = *(v7 + 72);
    if (v11)
    {
      v12 = [v11 copy];
      v13 = a2[20];
      a2[20] = v12;

      v7 = *(*(a1 + 32) + 40);
    }
  }

  v14 = *(v7 + 80);
  if (v14)
  {
    [(BSXPCServiceConnectionEventHandler *)a2 setInterfaceTarget:v14];
    v7 = *(*(a1 + 32) + 40);
  }

  v15 = *(v7 + 112);
  v16 = *(a1 + 32);
  v17 = v16[5];
  v18 = v17[16];
  if (v15)
  {
    v19 = v15;
    if (v18)
    {
      v80 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot have a target queue set if specifying a queue : service=%@", v16[8]];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v81 = NSStringFromSelector(*(a1 + 40));
        v82 = *(a1 + 32);
        v83 = objc_opt_class();
        v84 = NSStringFromClass(v83);
        v85 = *(a1 + 32);
        *buf = 138544642;
        v118 = v81;
        v119 = 2114;
        v120 = v84;
        v121 = 2048;
        v122 = v85;
        v123 = 2114;
        v124 = @"BSServiceConnection.m";
        v125 = 1024;
        v126 = 424;
        v127 = 2114;
        v128 = v80;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v86 = v80;
      [v80 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A826340);
    }

    if (v17[17])
    {
      v87 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot have a queue of target queue set if specifying a queue : service=%@", v16[8]];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v88 = NSStringFromSelector(*(a1 + 40));
        v89 = *(a1 + 32);
        v90 = objc_opt_class();
        v91 = NSStringFromClass(v90);
        v92 = *(a1 + 32);
        *buf = 138544642;
        v118 = v88;
        v119 = 2114;
        v120 = v91;
        v121 = 2048;
        v122 = v92;
        v123 = 2114;
        v124 = @"BSServiceConnection.m";
        v125 = 1024;
        v126 = 425;
        v127 = 2114;
        v128 = v87;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v93 = v87;
      [v87 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A826444);
    }

    if (v17[15])
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot have a serviceQuality if specifying a queue : service=%@", v16[8]];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v21 = NSStringFromSelector(*(a1 + 40));
        v22 = *(a1 + 32);
        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        v25 = *(a1 + 32);
        *buf = 138544642;
        v118 = v21;
        v119 = 2114;
        v120 = v24;
        v121 = 2048;
        v122 = v25;
        v123 = 2114;
        v124 = @"BSServiceConnection.m";
        v125 = 1024;
        v126 = 426;
        v127 = 2114;
        v128 = v20;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v26 = v20;
      [v20 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A825C58);
    }
  }

  else
  {
    v27 = v17[15];
    if (v18)
    {
      if (v27)
      {
        v28 = [BSServiceDispatchQueue queueWithName:"queueWithName:serviceQuality:targetQueue:" serviceQuality:v16[2] targetQueue:?];
      }

      else
      {
        v30 = v17[17];
        if (v30)
        {
          v28 = v30;
        }

        else
        {
          v28 = [BSServiceDispatchQueue queueWithName:v16[2] targetQueue:v18];
        }
      }
    }

    else
    {
      v29 = v16[2];
      if (v27)
      {
        [BSServiceDispatchQueue queueWithName:v29 serviceQuality:?];
      }

      else
      {
        [BSServiceDispatchQueue queueWithName:v29];
      }
      v28 = ;
    }

    v19 = v28;
  }

  [(BSXPCServiceConnectionEventHandler *)a2 setQueue:v19];
  v31 = MEMORY[0x19A908200](*(*(*(a1 + 32) + 40) + 144));
  if (v31)
  {
    objc_initWeak(buf, *(a1 + 32));
    v113[0] = MEMORY[0x1E69E9820];
    v113[1] = 3221225472;
    v113[2] = __31__BSServiceConnection_activate__block_invoke_247;
    v113[3] = &unk_1E7520708;
    objc_copyWeak(&v115, buf);
    v32 = v31;
    v114 = v32;
    if (a2)
    {
      v33 = [v113 copy];
      v34 = a2[14];
      a2[14] = v33;

      v32 = v114;
    }

    objc_destroyWeak(&v115);
    objc_destroyWeak(buf);
  }

  v35 = *(a1 + 32);
  v36 = *(v35 + 40);
  v37 = *(v36 + 152);
  if (!v37)
  {
    if (!*(v36 + 160))
    {
      goto LABEL_40;
    }

    *(v35 + 57) = 1;
    if (!a2)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  if (a2)
  {
    v38 = [v37 copy];
    v39 = a2[9];
    a2[9] = v38;

    v35 = *(a1 + 32);
    if (!*(*(v35 + 40) + 160))
    {
      goto LABEL_40;
    }

    *(v35 + 57) = 1;
LABEL_38:
    v40 = [*(*(*(a1 + 32) + 40) + 160) copy];
    v41 = a2[10];
    a2[10] = v40;

LABEL_39:
    v35 = *(a1 + 32);
    goto LABEL_40;
  }

  if (*(v36 + 160))
  {
    *(v35 + 57) = 1;
    goto LABEL_39;
  }

LABEL_40:
  v42 = *(v35 + 16);
  v43 = *(a1 + 32);
  v44 = *(v43 + 8);
  if (v44 && (v45 = [*(v44 + 192) isServer], v43 = *(a1 + 32), (v45 & 1) != 0) || *(v43 + 57) == 1)
  {
    v46 = *(v43 + 40);
    if (v46[11])
    {
      v47 = MEMORY[0x19A908200]();
      v110[0] = MEMORY[0x1E69E9820];
      v110[1] = 3221225472;
      v110[2] = __31__BSServiceConnection_activate__block_invoke_2_249;
      v110[3] = &unk_1E7520758;
      v111 = v42;
      v112 = v47;
      v48 = v47;
      v49 = v48;
      if (a2)
      {
        v50 = [v110 copy];
        v51 = a2[11];
        a2[11] = v50;

        v49 = v112;
      }

      v46 = *(*(a1 + 32) + 40);
    }

    if (v46[12])
    {
      v52 = MEMORY[0x19A908200]();
      v107[0] = MEMORY[0x1E69E9820];
      v107[1] = 3221225472;
      v107[2] = __31__BSServiceConnection_activate__block_invoke_255;
      v107[3] = &unk_1E7520758;
      v108 = v42;
      v109 = v52;
      v53 = v52;
      v54 = v53;
      if (a2)
      {
        v55 = [v107 copy];
        v56 = a2[12];
        a2[12] = v55;

        v54 = v109;
      }

      v46 = *(*(a1 + 32) + 40);
    }

    v57 = MEMORY[0x19A908200](v46[13]);
    v58 = *(a1 + 32);
    v103[0] = MEMORY[0x1E69E9820];
    v103[1] = 3221225472;
    v103[2] = __31__BSServiceConnection_activate__block_invoke_259;
    v103[3] = &unk_1E7520730;
    v104 = v42;
    v105 = v58;
    v106 = v57;
    v59 = v57;
    v60 = v58;
    v61 = v59;
    if (a2)
    {
      v62 = [v103 copy];
      v63 = a2[13];
      a2[13] = v62;

      v61 = v106;
    }
  }

  else
  {
    v64 = *(v43 + 40);
    if (v64[11])
    {
      v65 = MEMORY[0x19A908200]();
      v100[0] = MEMORY[0x1E69E9820];
      v100[1] = 3221225472;
      v100[2] = __31__BSServiceConnection_activate__block_invoke_263;
      v100[3] = &unk_1E7520758;
      v102 = v65;
      v66 = v42;
      v101 = v66;
      v67 = v65;
      if (a2)
      {
        v68 = [v100 copy];
        v69 = a2[11];
        a2[11] = v68;

        v66 = v101;
      }

      v64 = *(*(a1 + 32) + 40);
    }

    if (v64[12])
    {
      v70 = MEMORY[0x19A908200]();
      v97[0] = MEMORY[0x1E69E9820];
      v97[1] = 3221225472;
      v97[2] = __31__BSServiceConnection_activate__block_invoke_264;
      v97[3] = &unk_1E7520758;
      v99 = v70;
      v71 = v42;
      v98 = v71;
      v72 = v70;
      if (a2)
      {
        v73 = [v97 copy];
        v74 = a2[12];
        a2[12] = v73;

        v71 = v98;
      }

      v64 = *(*(a1 + 32) + 40);
    }

    v75 = MEMORY[0x19A908200](v64[13]);
    v94[0] = MEMORY[0x1E69E9820];
    v94[1] = 3221225472;
    v94[2] = __31__BSServiceConnection_activate__block_invoke_265;
    v94[3] = &unk_1E7520758;
    v96 = v75;
    v76 = v42;
    v95 = v76;
    v59 = v75;
    if (a2)
    {
      v77 = [v94 copy];
      v78 = a2[13];
      a2[13] = v77;

      v76 = v95;
    }

    v60 = v96;
  }

  v79 = *MEMORY[0x1E69E9840];
}

uint64_t __31__BSServiceConnection_activate__block_invoke_2(uint64_t a1, void *a2)
{
  [a2 encodeObject:*(*(a1 + 32) + 64) forKey:@"s"];
  [a2 encodeObject:*(*(a1 + 32) + 72) forKey:@"i"];
  v4 = [(BSXPCServiceConnection *)*(*(a1 + 32) + 8) loggingProem];
  [a2 encodeObject:v4 forKey:@"lp"];

  v5 = *(*(*(a1 + 32) + 40) + 48);

  return [a2 encodeXPCObject:v5 forKey:@"clientContext"];
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  lock_config = self->_lock_config;
  self->_lock_config = 0;

  self->_lock_invalidated = 1;
  os_unfair_lock_unlock(&self->_lock);
  connection = self->_connection;

  [(BSXPCServiceConnection *)connection invalidate];
}

- (id)_connection
{
  if (a1)
  {
    a1 = a1[1];
    v1 = vars8;
  }

  return a1;
}

- (BSProcessHandle)remoteProcess
{
  v2 = [(BSXPCServiceConnection *)self->_connection peer];
  v3 = v2;
  if (v2)
  {
    v4 = *(v2 + 32);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

void __31__BSServiceConnection_activate__block_invoke_263(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = +[BSServiceConnection _currentConnection];
  if (v4)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5 = BSServiceXPCErrorsLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = [(BSXPCServiceConnection *)a2 stateDump];
      v8 = +[BSXPCServiceConnection currentContext];
      v9 = *(a1 + 32);
      v10 = 138412802;
      v11 = v7;
      v12 = 2112;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      _os_log_error_impl(&dword_19A821000, v5, OS_LOG_TYPE_ERROR, "%@: dropping activation handler because _currentConnection is unexpectedly nil (client bug) : context=%@ : name=%@", &v10, 0x20u);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __31__BSServiceConnection_activate__block_invoke_247(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (NSString)description
{
  v3 = [(BSXPCServiceConnection *)self->_connection name];
  if ([(NSString *)self->_name isEqualToString:v3])
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p>", self->_name, self];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p name=%@>", self->_name, self, v3];
  }
  v4 = ;

  return v4;
}

- (id)_extractUnderlyingConnection
{
  v35 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    os_unfair_lock_lock((a1 + 32));
    if (!*(a1 + 40))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot extract connection after activation"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v11 = NSStringFromSelector(sel__extractUnderlyingConnection);
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        *buf = 138544642;
        v24 = v11;
        v25 = 2114;
        v26 = v13;
        v27 = 2048;
        v28 = a1;
        v29 = 2114;
        v30 = @"BSServiceConnection.m";
        v31 = 1024;
        v32 = 601;
        v33 = 2114;
        v34 = v10;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v14 = v10;
      [v10 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A82CF00);
    }

    v2 = *(a1 + 8);
    if (!v2)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot extract connection twice"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v16 = NSStringFromSelector(sel__extractUnderlyingConnection);
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        *buf = 138544642;
        v24 = v16;
        v25 = 2114;
        v26 = v18;
        v27 = 2048;
        v28 = a1;
        v29 = 2114;
        v30 = @"BSServiceConnection.m";
        v31 = 1024;
        v32 = 602;
        v33 = 2114;
        v34 = v15;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v19 = v15;
      [v15 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A82CFF8);
    }

    v3 = v2;
    v4 = *(*(a1 + 40) + 48);
    v5 = *(a1 + 8);
    *(a1 + 8) = 0;

    os_unfair_lock_unlock((a1 + 32));
    [a1 invalidate];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __51__BSServiceConnection__extractUnderlyingConnection__block_invoke;
    v20[3] = &unk_1E7520500;
    v6 = v4;
    v21 = v6;
    v22 = a1;
    [(BSXPCServiceConnection *)v3 configure:v20];
    v7 = v3;
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

void __51__BSServiceConnection__extractUnderlyingConnection__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __51__BSServiceConnection__extractUnderlyingConnection__block_invoke_2;
    v7[3] = &unk_1E75207A8;
    v7[4] = *(a1 + 40);
    v8 = v4;
    [(BSXPCServiceConnectionEventHandler *)a2 encodeInitiatingContext:v7];
  }

  if (a2)
  {
    v5 = [*(*(a1 + 40) + 16) copy];
    v6 = *(a2 + 144);
    *(a2 + 144) = v5;
  }
}

void __31__BSServiceConnection_activate__block_invoke_265(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = +[BSServiceConnection _currentConnection];
  v5 = v4;
  if (v4)
  {
    os_unfair_lock_lock(v4 + 8);
    LOBYTE(v5[14]._os_unfair_lock_opaque) = 1;
    os_unfair_lock_unlock(v5 + 8);
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = BSServiceXPCErrorsLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = [(BSXPCServiceConnection *)a2 stateDump];
      v9 = +[BSXPCServiceConnection currentContext];
      v10 = *(a1 + 32);
      v11 = 138412802;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      _os_log_error_impl(&dword_19A821000, v6, OS_LOG_TYPE_ERROR, "%@: dropping invalidation handler because _currentConnection is unexpectedly nil (client bug) : context=%@ name=%@", &v11, 0x20u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __51__BSServiceConnection__extractUnderlyingConnection__block_invoke_2(uint64_t a1, void *a2)
{
  [a2 encodeObject:*(*(a1 + 32) + 64) forKey:@"s"];
  [a2 encodeObject:*(*(a1 + 32) + 72) forKey:@"i"];
  v4 = *(a1 + 40);

  return [a2 encodeXPCObject:v4 forKey:@"clientContext"];
}

void __31__BSServiceConnection_activate__block_invoke_2_249(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v15 = +[BSServiceConnection _currentConnection];
  if (!v15)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = [(BSXPCServiceConnection *)a2 stateDump];
    v7 = +[BSXPCServiceConnection currentContext];
    v8 = *(a1 + 32);
    v9 = [MEMORY[0x1E696AF00] currentThread];
    v10 = [MEMORY[0x1E696AF00] currentThread];
    v11 = [v10 threadDictionary];
    v12 = [v5 stringWithFormat:@"%@: _currentConnection is nil in activation handler : context=%@ : name=%@ : t=%@ : tls=%@", v6, v7, v8, v9, v11];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[BSServiceConnection activate]_block_invoke_2"];
      *buf = 138544130;
      v17 = v13;
      v18 = 2114;
      v19 = @"BSServiceConnection.m";
      v20 = 1024;
      v21 = 473;
      v22 = 2114;
      v23 = v12;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    v14 = v12;
    [v12 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A82DAC8);
  }

  (*(*(a1 + 40) + 16))();
  v4 = *MEMORY[0x1E69E9840];
}

+ (id)NSXPCConnectionWithEndpoint:(id)a3 configurator:(id)a4
{
  v49 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = v7;
  if (!v9)
  {
    v14 = MEMORY[0x1E696AEC0];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = [v14 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"endpoint", v16];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v18 = NSStringFromSelector(a2);
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      *buf = 138544642;
      v38 = v18;
      v39 = 2114;
      v40 = v20;
      v41 = 2048;
      v42 = a1;
      v43 = 2114;
      v44 = @"BSNSXPCTransport.m";
      v45 = 1024;
      v46 = 781;
      v47 = 2114;
      v48 = v17;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v21 = v17;
    [v17 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83D074);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v22 = MEMORY[0x1E696AEC0];
    v23 = [v9 classForCoder];
    if (!v23)
    {
      v23 = objc_opt_class();
    }

    v24 = NSStringFromClass(v23);
    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    v27 = [v22 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"endpoint", v24, v26];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v28 = NSStringFromSelector(a2);
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      *buf = 138544642;
      v38 = v28;
      v39 = 2114;
      v40 = v30;
      v41 = 2048;
      v42 = a1;
      v43 = 2114;
      v44 = @"BSNSXPCTransport.m";
      v45 = 1024;
      v46 = 781;
      v47 = 2114;
      v48 = v27;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v31 = v27;
    [v27 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83D1BCLL);
  }

  if (!v8)
  {
    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"configurator"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v33 = NSStringFromSelector(a2);
      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      *buf = 138544642;
      v38 = v33;
      v39 = 2114;
      v40 = v35;
      v41 = 2048;
      v42 = a1;
      v43 = 2114;
      v44 = @"BSNSXPCTransport.m";
      v45 = 1024;
      v46 = 782;
      v47 = 2114;
      v48 = v32;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v36 = v32;
    [v32 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83D2C0);
  }

  v10 = [[BSServiceInitiatingConnection alloc] initWithEndpoint:v9 options:&__block_literal_global_321];
  v11 = [BSServiceConnection _extractNSXPCConnectionWithConfigurator:v10 assertionProvider:v8];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

void __81__BSServiceConnection_NSXPCConnection__NSXPCConnectionWithEndpoint_configurator___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = +[BSServiceInitiatingConnectionMultiplexer userInteractiveMultiplexer];
  [v3 setMultiplexer:v2];
}

- (id)_extractNSXPCConnectionWithConfigurator:(uint64_t)a1 assertionProvider:(void *)a2
{
  v86 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (!v3)
    {
      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"configurator"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v34 = NSStringFromSelector(sel__extractNSXPCConnectionWithConfigurator_assertionProvider_);
        v35 = objc_opt_class();
        v36 = NSStringFromClass(v35);
        *buf = 138544642;
        v75 = v34;
        v76 = 2114;
        v77 = v36;
        v78 = 2048;
        v79 = a1;
        v80 = 2114;
        v81 = @"BSNSXPCTransport.m";
        v82 = 1024;
        v83 = 820;
        v84 = 2114;
        v85 = v33;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v37 = v33;
      [v33 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A83D864);
    }

    v5 = [(BSServiceConnection *)a1 _extractUnderlyingConnection];
    if (!v5)
    {
      v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to extract BSXPCServiceConnection from %@", a1];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v39 = NSStringFromSelector(sel__extractNSXPCConnectionWithConfigurator_assertionProvider_);
        v40 = objc_opt_class();
        v41 = NSStringFromClass(v40);
        *buf = 138544642;
        v75 = v39;
        v76 = 2114;
        v77 = v41;
        v78 = 2048;
        v79 = a1;
        v80 = 2114;
        v81 = @"BSNSXPCTransport.m";
        v82 = 1024;
        v83 = 823;
        v84 = 2114;
        v85 = v38;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v42 = v38;
      [v38 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A83D960);
    }

    v68 = v4;
    v6 = [BSNSXPCTransport alloc];
    v7 = v5;
    v8 = v68;
    if (v6)
    {
      v73.receiver = v6;
      v73.super_class = BSNSXPCTransport;
      v9 = objc_msgSendSuper2(&v73, sel_init);
      v10 = v9;
      if (v9)
      {
        objc_storeStrong(v9 + 1, v5);
        v11 = objc_opt_new();
        v12 = v10[9];
        v10[9] = v11;

        v13 = MEMORY[0x1E696AEC0];
        v14 = [(BSXPCServiceConnection *)v10[1] loggingProem];
        v15 = [v13 stringWithFormat:@"BSNSXPCTransport%@", v14];
        v16 = v10[2];
        v10[2] = v15;

        v17 = [0 copy];
        v18 = v10[6];
        v10[6] = v17;

        *(v10 + 20) = 0;
        os_unfair_lock_lock(v10 + 20);
        (v8)[2](v8, v10);
        os_unfair_lock_unlock(v10 + 20);
        *(v10 + 84) = 0;
        v19 = v10[1];
        if (v19 && [v19[24] isNonLaunching] && (v10[3] || v10[4]))
        {
          *(v10 + 84) = 1;
        }

        v20 = v10[9];
        v21 = v10[1];
        v69[0] = MEMORY[0x1E69E9820];
        v69[1] = 3221225472;
        v69[2] = __92__BSNSXPCTransport__initWithConnection_configurator_assertionProvider_outWrappedConnection___block_invoke;
        v69[3] = &unk_1E75203A0;
        v72 = sel__initWithConnection_configurator_assertionProvider_outWrappedConnection_;
        v6 = v10;
        v70 = v6;
        v22 = v20;
        v71 = v22;
        [(BSXPCServiceConnection *)v21 configure:v69];
        v23 = [objc_alloc(MEMORY[0x1E696B0B8]) _initWithCustomTransport:v6];
        v24 = v10[9];
        v25 = v23;
        v10 = v25;
        if (v24)
        {
          if (!v25)
          {
            v62 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"connection"];
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v65 = NSStringFromSelector(sel_setConnection_);
              v53 = objc_opt_class();
              v54 = NSStringFromClass(v53);
              *buf = 138544642;
              v75 = v65;
              v76 = 2114;
              v77 = v54;
              v78 = 2048;
              v79 = v24;
              v80 = 2114;
              v81 = @"BSNSXPCTransport.m";
              v82 = 1024;
              v83 = 169;
              v84 = 2114;
              v85 = v62;
              _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
            }

            v55 = v62;
            [v62 UTF8String];
            _bs_set_crash_log_message();
            __break(0);
            JUMPOUT(0x19A83DC64);
          }

          os_unfair_lock_lock(v24 + 10);
          if (LOBYTE(v24[11]._os_unfair_lock_opaque) == 1)
          {
            v63 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"!_lock_invalidated"];
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v66 = NSStringFromSelector(sel_setConnection_);
              v56 = objc_opt_class();
              v57 = NSStringFromClass(v56);
              *buf = 138544642;
              v75 = v66;
              v76 = 2114;
              v77 = v57;
              v78 = 2048;
              v79 = v24;
              v80 = 2114;
              v81 = @"BSNSXPCTransport.m";
              v82 = 1024;
              v83 = 171;
              v84 = 2114;
              v85 = v63;
              _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
            }

            v58 = v63;
            [v63 UTF8String];
            _bs_set_crash_log_message();
            __break(0);
            JUMPOUT(0x19A83DD70);
          }

          if (*&v24[2]._os_unfair_lock_opaque)
          {
            v64 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_lock_connectionReference == nil"];
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v67 = NSStringFromSelector(sel_setConnection_);
              v59 = objc_opt_class();
              v60 = NSStringFromClass(v59);
              *buf = 138544642;
              v75 = v67;
              v76 = 2114;
              v77 = v60;
              v78 = 2048;
              v79 = v24;
              v80 = 2114;
              v81 = @"BSNSXPCTransport.m";
              v82 = 1024;
              v83 = 172;
              v84 = 2114;
              v85 = v64;
              _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
            }

            v61 = v64;
            [v64 UTF8String];
            _bs_set_crash_log_message();
            __break(0);
            JUMPOUT(0x19A83DE7CLL);
          }

          v26 = [MEMORY[0x1E698E7B8] referenceWithObject:v10];
          v27 = *&v24[2]._os_unfair_lock_opaque;
          *&v24[2]._os_unfair_lock_opaque = v26;

          os_unfair_lock_unlock(v24 + 10);
        }

        v28 = v10;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    v29 = v10;
    v30 = v29;
    if (!v6)
    {
      v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to create BSNSXPCTransport for %@", v7];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v44 = NSStringFromSelector(sel__wrapWithNSXPCConnectionUsingAssertionProvider_configurator_);
        v45 = objc_opt_class();
        v46 = NSStringFromClass(v45);
        *buf = 138544642;
        v75 = v44;
        v76 = 2114;
        v77 = v46;
        v78 = 2048;
        v79 = v7;
        v80 = 2114;
        v81 = @"BSNSXPCTransport.m";
        v82 = 1024;
        v83 = 841;
        v84 = 2114;
        v85 = v43;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v47 = v43;
      [v43 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A83DA5CLL);
    }

    if (!v29)
    {
      v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to create NSXPCConnection with %@", v6];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v49 = NSStringFromSelector(sel__wrapWithNSXPCConnectionUsingAssertionProvider_configurator_);
        v50 = objc_opt_class();
        v51 = NSStringFromClass(v50);
        *buf = 138544642;
        v75 = v49;
        v76 = 2114;
        v77 = v51;
        v78 = 2048;
        v79 = v7;
        v80 = 2114;
        v81 = @"BSNSXPCTransport.m";
        v82 = 1024;
        v83 = 842;
        v84 = 2114;
        v85 = v48;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v52 = v48;
      [v48 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A83DB58);
    }

    objc_setAssociatedObject(v29, "BSNSXPCTransport", v6, 1);
  }

  else
  {
    v30 = 0;
  }

  v31 = *MEMORY[0x1E69E9840];

  return v30;
}

+ (id)NSXPCConnectionWithEndpoint:(id)a3 clientContextBuilder:(id)a4 configurator:(id)a5
{
  v61 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v9;
  if (!v12)
  {
    v19 = MEMORY[0x1E696AEC0];
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    v22 = [v19 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"endpoint", v21];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v23 = NSStringFromSelector(a2);
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      *buf = 138544642;
      v50 = v23;
      v51 = 2114;
      v52 = v25;
      v53 = 2048;
      v54 = a1;
      v55 = 2114;
      v56 = @"BSNSXPCTransport.m";
      v57 = 1024;
      v58 = 792;
      v59 = 2114;
      v60 = v22;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v26 = v22;
    [v22 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83E2D4);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v27 = MEMORY[0x1E696AEC0];
    v28 = [v12 classForCoder];
    if (!v28)
    {
      v28 = objc_opt_class();
    }

    v29 = NSStringFromClass(v28);
    v30 = objc_opt_class();
    v31 = NSStringFromClass(v30);
    v32 = [v27 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"endpoint", v29, v31];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v33 = NSStringFromSelector(a2);
      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      *buf = 138544642;
      v50 = v33;
      v51 = 2114;
      v52 = v35;
      v53 = 2048;
      v54 = a1;
      v55 = 2114;
      v56 = @"BSNSXPCTransport.m";
      v57 = 1024;
      v58 = 792;
      v59 = 2114;
      v60 = v32;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v36 = v32;
    [v32 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83E41CLL);
  }

  if (!v10)
  {
    v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"contextBuilder"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v38 = NSStringFromSelector(a2);
      v39 = objc_opt_class();
      v40 = NSStringFromClass(v39);
      *buf = 138544642;
      v50 = v38;
      v51 = 2114;
      v52 = v40;
      v53 = 2048;
      v54 = a1;
      v55 = 2114;
      v56 = @"BSNSXPCTransport.m";
      v57 = 1024;
      v58 = 793;
      v59 = 2114;
      v60 = v37;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v41 = v37;
    [v37 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83E520);
  }

  if (!v11)
  {
    v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"configurator"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v43 = NSStringFromSelector(a2);
      v44 = objc_opt_class();
      v45 = NSStringFromClass(v44);
      *buf = 138544642;
      v50 = v43;
      v51 = 2114;
      v52 = v45;
      v53 = 2048;
      v54 = a1;
      v55 = 2114;
      v56 = @"BSNSXPCTransport.m";
      v57 = 1024;
      v58 = 794;
      v59 = 2114;
      v60 = v42;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v46 = v42;
    [v42 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83E624);
  }

  v13 = [BSServiceInitiatingConnection alloc];
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __102__BSServiceConnection_NSXPCConnection__NSXPCConnectionWithEndpoint_clientContextBuilder_configurator___block_invoke;
  v47[3] = &unk_1E7520548;
  v14 = v10;
  v48 = v14;
  v15 = [(BSServiceInitiatingConnection *)v13 initWithEndpoint:v12 options:v47];
  v16 = [BSServiceConnection _extractNSXPCConnectionWithConfigurator:v15 assertionProvider:v11];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

void __102__BSServiceConnection_NSXPCConnection__NSXPCConnectionWithEndpoint_clientContextBuilder_configurator___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 encodeContext:*(a1 + 32)];
  v3 = +[BSServiceInitiatingConnectionMultiplexer userInteractiveMultiplexer];
  [v4 setMultiplexer:v3];
}

- (id)extractNSXPCConnectionWithConfigurator:(id)a3
{
  v3 = [BSServiceConnection _extractNSXPCConnectionWithConfigurator:a3 assertionProvider:?];

  return v3;
}

- (id)extractNSXPCConnectionWithViewServiceConfigurator:(id)a3
{
  v3 = [BSServiceConnection _extractNSXPCConnectionWithConfigurator:a3 assertionProvider:?];

  return v3;
}

- (BSServiceConnection)init
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-init is not allowed on BSServiceConnection"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v10 = 138544642;
    v11 = v5;
    v12 = 2114;
    v13 = v7;
    v14 = 2048;
    v15 = self;
    v16 = 2114;
    v17 = @"BSServiceConnection.m";
    v18 = 1024;
    v19 = 238;
    v20 = 2114;
    v21 = v4;
    _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v10, 0x3Au);
  }

  v8 = v4;
  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (id)_initWithConfiguration:(id *)a1
{
  v2 = a1;
  v101 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = a2;
    if (!v4)
    {
      v25 = MEMORY[0x1E696AEC0];
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      v28 = [v25 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"config", v27];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v29 = NSStringFromSelector(sel__initWithConfiguration_);
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        *buf = 138544642;
        v90 = v29;
        v91 = 2114;
        v92 = v31;
        v93 = 2048;
        v94 = v2;
        v95 = 2114;
        v96 = @"BSServiceConnection.m";
        v97 = 1024;
        v98 = 243;
        v99 = 2114;
        v100 = v28;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v32 = v28;
      [v28 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A8427B8);
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v33 = MEMORY[0x1E696AEC0];
      v34 = [v4 classForCoder];
      if (!v34)
      {
        v34 = objc_opt_class();
      }

      v35 = NSStringFromClass(v34);
      v36 = objc_opt_class();
      v37 = NSStringFromClass(v36);
      v38 = [v33 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"config", v35, v37];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v39 = NSStringFromSelector(sel__initWithConfiguration_);
        v40 = objc_opt_class();
        v41 = NSStringFromClass(v40);
        *buf = 138544642;
        v90 = v39;
        v91 = 2114;
        v92 = v41;
        v93 = 2048;
        v94 = v2;
        v95 = 2114;
        v96 = @"BSServiceConnection.m";
        v97 = 1024;
        v98 = 243;
        v99 = 2114;
        v100 = v38;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v42 = v38;
      [v38 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A842900);
    }

    v5 = v4[2];
    if (!v5)
    {
      v43 = MEMORY[0x1E696AEC0];
      v44 = objc_opt_class();
      v45 = NSStringFromClass(v44);
      v46 = [v43 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"config->_connection", v45];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v47 = NSStringFromSelector(sel__initWithConfiguration_);
        v48 = objc_opt_class();
        v49 = NSStringFromClass(v48);
        *buf = 138544642;
        v90 = v47;
        v91 = 2114;
        v92 = v49;
        v93 = 2048;
        v94 = v2;
        v95 = 2114;
        v96 = @"BSServiceConnection.m";
        v97 = 1024;
        v98 = 244;
        v99 = 2114;
        v100 = v46;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v50 = v46;
      [v46 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A842A20);
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v51 = MEMORY[0x1E696AEC0];
      v52 = [v5 classForCoder];
      if (!v52)
      {
        v52 = objc_opt_class();
      }

      v53 = NSStringFromClass(v52);
      v54 = objc_opt_class();
      v55 = NSStringFromClass(v54);
      v56 = [v51 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"config->_connection", v53, v55];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v57 = NSStringFromSelector(sel__initWithConfiguration_);
        v58 = objc_opt_class();
        v59 = NSStringFromClass(v58);
        *buf = 138544642;
        v90 = v57;
        v91 = 2114;
        v92 = v59;
        v93 = 2048;
        v94 = v2;
        v95 = 2114;
        v96 = @"BSServiceConnection.m";
        v97 = 1024;
        v98 = 244;
        v99 = 2114;
        v100 = v56;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v60 = v56;
      [v56 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A842B68);
    }

    v6 = v4[3];
    v7 = MEMORY[0x1E696AEC0];
    if (!v6)
    {
      v61 = objc_opt_class();
      v62 = NSStringFromClass(v61);
      v63 = [v7 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"config->_service", v62];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v64 = NSStringFromSelector(sel__initWithConfiguration_);
        v65 = objc_opt_class();
        v66 = NSStringFromClass(v65);
        *buf = 138544642;
        v90 = v64;
        v91 = 2114;
        v92 = v66;
        v93 = 2048;
        v94 = v2;
        v95 = 2114;
        v96 = @"BSServiceConnection.m";
        v97 = 1024;
        v98 = 245;
        v99 = 2114;
        v100 = v63;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v67 = v63;
      [v63 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A842C80);
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v68 = MEMORY[0x1E696AEC0];
      v69 = [v6 classForCoder];
      if (!v69)
      {
        v69 = objc_opt_class();
      }

      v70 = NSStringFromClass(v69);
      v71 = objc_opt_class();
      v72 = NSStringFromClass(v71);
      v73 = [v68 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"config->_service", v70, v72];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v74 = NSStringFromSelector(sel__initWithConfiguration_);
        v75 = objc_opt_class();
        v76 = NSStringFromClass(v75);
        *buf = 138544642;
        v90 = v74;
        v91 = 2114;
        v92 = v76;
        v93 = 2048;
        v94 = v2;
        v95 = 2114;
        v96 = @"BSServiceConnection.m";
        v97 = 1024;
        v98 = 245;
        v99 = 2114;
        v100 = v73;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v77 = v73;
      [v73 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A842DC4);
    }

    v8 = v4[4];
    if (v8)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v78 = MEMORY[0x1E696AEC0];
        v79 = [v8 classForCoder];
        if (!v79)
        {
          v79 = objc_opt_class();
        }

        v80 = NSStringFromClass(v79);
        v81 = objc_opt_class();
        v82 = NSStringFromClass(v81);
        v83 = [v78 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"config->_instance", v80, v82];

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v84 = NSStringFromSelector(sel__initWithConfiguration_);
          v85 = objc_opt_class();
          v86 = NSStringFromClass(v85);
          *buf = 138544642;
          v90 = v84;
          v91 = 2114;
          v92 = v86;
          v93 = 2048;
          v94 = v2;
          v95 = 2114;
          v96 = @"BSServiceConnection.m";
          v97 = 1024;
          v98 = 246;
          v99 = 2114;
          v100 = v83;
          _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        v87 = v83;
        [v83 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x19A842F08);
      }
    }

    v88.receiver = v2;
    v88.super_class = BSServiceConnection;
    v9 = objc_msgSendSuper2(&v88, sel_init);
    v2 = v9;
    if (v9)
    {
      objc_storeStrong(v9 + 1, v4[2]);
      v10 = [v4[3] copy];
      v11 = v2[8];
      v2[8] = v10;

      v12 = [v4[4] copy];
      v13 = v2[9];
      v2[9] = v12;

      v14 = v2[1];
      v15 = v2[8];
      v16 = v2[9];
      objc_opt_self();
      if (v16)
      {
        v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", v15, v16];
      }

      else
      {
        v17 = v15;
      }

      v18 = v17;
      if (v14 && [v14[24] isServer])
      {
        v19 = [(BSXPCServiceConnection *)v14 initiatingContext];
        v20 = [v19 decodeStringForKey:@"lp"];

        v21 = [(BSXPCServiceConnection *)v14 defaultNameWithClientLoggingProem:v20 as:v18];
      }

      else
      {
        v21 = [(BSXPCServiceConnection *)v14 defaultNameWithClientLoggingProem:v18 as:?];
      }

      v22 = v2[2];
      v2[2] = v21;

      *(v2 + 58) = *(v4 + 169);
      *(v2 + 8) = 0;
      objc_storeStrong(v2 + 5, a2);
    }
  }

  v23 = *MEMORY[0x1E69E9840];
  return v2;
}

- (void)_config:(uint64_t)a1
{
  v29 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (!a2)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"configurator"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v7 = NSStringFromSelector(sel__config_);
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        *buf = 138544642;
        v18 = v7;
        v19 = 2114;
        v20 = v9;
        v21 = 2048;
        v22 = a1;
        v23 = 2114;
        v24 = @"BSServiceConnection.m";
        v25 = 1024;
        v26 = 291;
        v27 = 2114;
        v28 = v6;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v10 = v6;
      [v6 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A8432CCLL);
    }

    os_unfair_lock_lock((a1 + 32));
    v4 = *(a1 + 40);
    if (!v4)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"configure called after activation or invalidation"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v12 = NSStringFromSelector(sel__config_);
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        *buf = 138544642;
        v18 = v12;
        v19 = 2114;
        v20 = v14;
        v21 = 2048;
        v22 = a1;
        v23 = 2114;
        v24 = @"BSServiceConnection.m";
        v25 = 1024;
        v26 = 293;
        v27 = 2114;
        v28 = v11;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v15 = v11;
      [v11 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A8433C4);
    }

    os_unfair_lock_lock(v4 + 2);
    *(*(a1 + 40) + 168) = 2;
    (*(a2 + 16))(a2, *(a1 + 40));
    *(*(a1 + 40) + 168) = 0;
    objc_storeStrong((a1 + 24), *(*(a1 + 40) + 56));
    os_unfair_lock_unlock((*(a1 + 40) + 8));
    v5 = *MEMORY[0x1E69E9840];

    os_unfair_lock_unlock((a1 + 32));
  }

  else
  {
    v16 = *MEMORY[0x1E69E9840];
  }
}

+ (id)connectionWithEndpoint:(id)a3
{
  v4 = +[BSServiceInitiatingConnectionMultiplexer userInteractiveMultiplexer];
  v5 = [BSServiceConnection _connectionWithEndpoint:a3 muxer:v4 clientContextBuilder:0];

  return v5;
}

+ (id)_connectionWithEndpoint:(uint64_t)a3 muxer:(uint64_t)a4 clientContextBuilder:
{
  objc_opt_self();
  v7 = [a2 service];

  if (v7)
  {
    v8 = [BSServiceInitiatingConnection alloc];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __74__BSServiceConnection__connectionWithEndpoint_muxer_clientContextBuilder___block_invoke;
    v11[3] = &unk_1E75206B8;
    v11[4] = a3;
    v11[5] = a4;
    v9 = [(BSServiceInitiatingConnection *)&v8->super.super.isa _initWithEndpoint:a2 options:v11];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)connectionWithEndpoint:(id)a3 clientContextBuilder:(id)a4
{
  v6 = +[BSServiceInitiatingConnectionMultiplexer userInteractiveMultiplexer];
  v7 = [BSServiceConnection _connectionWithEndpoint:a3 muxer:v6 clientContextBuilder:a4];

  return v7;
}

uint64_t __74__BSServiceConnection__connectionWithEndpoint_muxer_clientContextBuilder___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 setMultiplexer:*(a1 + 32)];
  if (*(a1 + 40))
  {

    return [a2 encodeContext:?];
  }

  return result;
}

void __31__BSServiceConnection_activate__block_invoke_255(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v15 = +[BSServiceConnection _currentConnection];
  if (!v15)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = [(BSXPCServiceConnection *)a2 stateDump];
    v7 = +[BSXPCServiceConnection currentContext];
    v8 = *(a1 + 32);
    v9 = [MEMORY[0x1E696AF00] currentThread];
    v10 = [MEMORY[0x1E696AF00] currentThread];
    v11 = [v10 threadDictionary];
    v12 = [v5 stringWithFormat:@"%@: _currentConnection is nil in interrupt handler : context=%@ : name=%@ : t=%@ : tls=%@", v6, v7, v8, v9, v11];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[BSServiceConnection activate]_block_invoke"];
      *buf = 138544130;
      v17 = v13;
      v18 = 2114;
      v19 = @"BSServiceConnection.m";
      v20 = 1024;
      v21 = 483;
      v22 = 2114;
      v23 = v12;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    v14 = v12;
    [v12 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A843A6CLL);
  }

  (*(*(a1 + 40) + 16))();
  v4 = *MEMORY[0x1E69E9840];
}

void __31__BSServiceConnection_activate__block_invoke_264(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = +[BSServiceConnection _currentConnection];
  if (v4)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5 = BSServiceXPCErrorsLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = [(BSXPCServiceConnection *)a2 stateDump];
      v8 = +[BSXPCServiceConnection currentContext];
      v9 = *(a1 + 32);
      v10 = 138412802;
      v11 = v7;
      v12 = 2112;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      _os_log_error_impl(&dword_19A821000, v5, OS_LOG_TYPE_ERROR, "%@: dropping interrupt handler because _currentConnection is unexpectedly nil (client bug) : context=%@ : name=%@", &v10, 0x20u);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (id)remoteTargetWithAssertionAttributes:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"attributes"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(a2);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138544642;
      v14 = v9;
      v15 = 2114;
      v16 = v11;
      v17 = 2048;
      v18 = self;
      v19 = 2114;
      v20 = @"BSServiceConnection.m";
      v21 = 1024;
      v22 = 551;
      v23 = 2114;
      v24 = v8;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v12 = v8;
    [v8 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A843DBCLL);
  }

  connection = self->_connection;
  v5 = *MEMORY[0x1E69E9840];

  return [(BSXPCServiceConnection *)connection remoteTargetWithAssertionAttributes:a3 enforcingLaunchConstraints:0];
}

- (RBSTarget)remoteAssertionTarget
{
  connection = self->_connection;
  if (connection)
  {
    return connection->_remoteAssertionTarget;
  }

  else
  {
    return 0;
  }
}

- (id)createMessageWithCompletion:(id)a3
{
  v4 = [(BSXPCServiceConnection *)self->_connection createMessageWithOptions:?];
  v6 = v4;
  if (v4)
  {
    objc_setProperty_nonatomic_copy(v4, v5, a3, 80);
  }

  return v6;
}

- (void)loggingProem
{
  if (a1)
  {
    a1 = [(BSXPCServiceConnection *)a1[1] loggingProem];
    v1 = vars8;
  }

  return a1;
}

@end