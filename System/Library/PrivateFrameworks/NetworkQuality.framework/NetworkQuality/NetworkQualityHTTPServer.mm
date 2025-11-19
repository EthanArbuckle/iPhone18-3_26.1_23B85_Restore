@interface NetworkQualityHTTPServer
- (NetworkQualityHTTPServer)initWithConfiguration:(id)a3;
- (NetworkQualityHTTPServer)initWithLaunchd;
- (NetworkQualityHTTPServer)initWithPort:(unsigned int)a3 tlsEnabled:(BOOL)a4 httpVersion:(int)a5 bonjourEnabled:(BOOL)a6;
- (id)HTTP2ParametersForServer;
- (id)HTTP3ParametersForServer;
- (id)urlForType:(id)a3 withAddress:(id)a4 mirrorIP:(BOOL)a5;
- (id)urlFormatAddress:(id)a3;
- (void)receiveLoop:(id)a3;
- (void)setCommmonParameters:(id)a3;
- (void)start:(id)a3;
- (void)stop;
@end

@implementation NetworkQualityHTTPServer

- (NetworkQualityHTTPServer)initWithLaunchd
{
  result = [(NetworkQualityHTTPServer *)self initWithPort:0 tlsEnabled:1 httpVersion:4 bonjourEnabled:1];
  if (result)
  {
    result->launchdInvoked = 1;
  }

  return result;
}

- (NetworkQualityHTTPServer)initWithPort:(unsigned int)a3 tlsEnabled:(BOOL)a4 httpVersion:(int)a5 bonjourEnabled:(BOOL)a6
{
  v20.receiver = self;
  v20.super_class = NetworkQualityHTTPServer;
  v10 = [(NetworkQualityHTTPServer *)&v20 init];
  if (!v10)
  {
    goto LABEL_7;
  }

  v11 = +[NetworkQualityServerConfiguration defaultIdleTimeout];
  v10->port = a3;
  v10->idleTimeoutSeconds = v11;
  v10->hasStarted = 0;
  v10->tlsEnabled = a4;
  v10->bonjourEnabled = a6;
  v10->httpVersion = a5;
  v10->l4sEnabled = 0;
  v12 = dispatch_data_create("X", 1uLL, 0, 0);
  small_response_data = v10->small_response_data;
  v10->small_response_data = v12;

  v14 = malloc_type_malloc(0x100000uLL, 0xA6DFF529uLL);
  memset(v14, 88, 0x100000uLL);
  v15 = dispatch_data_create(v14, 0x100000uLL, 0, *MEMORY[0x277D85CB0]);
  large_response_data = v10->large_response_data;
  v10->large_response_data = v15;

  v19 = 0;
  if (!CreateSelfSignedIdentity(@"networkquality", &v10->sec_identity, &v19))
  {

LABEL_7:
    v17 = v10;
    goto LABEL_8;
  }

  netqual_log_init();
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
  {
    [NetworkQualityHTTPServer initWithPort:tlsEnabled:httpVersion:bonjourEnabled:];
  }

  v17 = 0;
LABEL_8:

  return v17;
}

- (NetworkQualityHTTPServer)initWithConfiguration:(id)a3
{
  v4 = a3;
  if ([v4 httpProtocol] == 1)
  {
    v5 = 5;
  }

  else
  {
    v5 = 4;
  }

  v6 = -[NetworkQualityHTTPServer initWithPort:tlsEnabled:httpVersion:bonjourEnabled:](self, "initWithPort:tlsEnabled:httpVersion:bonjourEnabled:", [v4 listenPort], objc_msgSend(v4, "tlsEnabled"), v5, objc_msgSend(v4, "bonjourEnabled"));
  if (v6)
  {
    v6->idleTimeoutSeconds = [v4 idleTimeoutSeconds];
    v6->mirrorIP = [v4 mirrorServerIP];
    v6->l4sEnabled = [v4 l4sEnabled];
    v7 = [v4 networkServiceType];
    if ((v7 - 2) > 9)
    {
      v8 = 0;
    }

    else
    {
      v8 = dword_25B97E950[v7 - 2];
    }

    v6->networkTrafficClass = v8;
  }

  return v6;
}

- (void)setCommmonParameters:(id)a3
{
  parameters = a3;
  nw_parameters_set_data_mode();
  nw_parameters_set_server_mode();
  nw_parameters_set_reuse_local_address(parameters, 1);
  nw_parameters_set_receive_any_interface();
  if (self->networkTrafficClass)
  {
    nw_parameters_set_traffic_class();
  }
}

- (id)HTTP2ParametersForServer
{
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __52__NetworkQualityHTTPServer_HTTP2ParametersForServer__block_invoke;
  v13[3] = &unk_279969728;
  v13[4] = self;
  v3 = MEMORY[0x25F873620](v13, a2);
  v4 = MEMORY[0x25F873620](*MEMORY[0x277CD9238]);
  if (self->tlsEnabled)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __52__NetworkQualityHTTPServer_HTTP2ParametersForServer__block_invoke_2;
    v11[3] = &unk_279969750;
    v12 = v3;
    v5 = MEMORY[0x25F873620](v11);

    v4 = v5;
  }

  options = nw_http_messaging_create_options();
  idleTimeoutSeconds = self->idleTimeoutSeconds;
  nw_http2_set_idle_timeout();
  MEMORY[0x25F873400](options, self->l4sEnabled);
  secure_tcp = nw_parameters_create_secure_tcp(v4, *MEMORY[0x277CD9230]);
  [(NetworkQualityHTTPServer *)self setCommmonParameters:secure_tcp];
  v9 = nw_parameters_copy_default_protocol_stack(secure_tcp);
  nw_protocol_stack_prepend_application_protocol(v9, options);
  nw_parameters_set_prohibit_joining_protocols();
  nw_parameters_set_attach_protocol_listener();

  return secure_tcp;
}

void __52__NetworkQualityHTTPServer_HTTP2ParametersForServer__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 28) - 3;
  if (v3 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_279969888[v3];
  }

  options = a2;
  sec_protocol_options_add_tls_application_protocol(options, v4);
  sec_protocol_options_set_peer_authentication_required(options, 0);
  sec_protocol_options_set_local_identity(options, *(*(a1 + 32) + 64));
  sec_protocol_options_append_tls_ciphersuite_group(options, tls_ciphersuite_group_default);
}

void __52__NetworkQualityHTTPServer_HTTP2ParametersForServer__block_invoke_2(uint64_t a1, id a2)
{
  v3 = a2;
  (*(*(a1 + 32) + 16))();
}

- (id)HTTP3ParametersForServer
{
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __52__NetworkQualityHTTPServer_HTTP3ParametersForServer__block_invoke;
  v14[3] = &unk_279969728;
  v14[4] = self;
  v3 = MEMORY[0x25F873620](v14, a2);
  options = nw_http_messaging_create_options();
  idleTimeoutSeconds = self->idleTimeoutSeconds;
  nw_http3_set_idle_timeout();
  l4sEnabled = self->l4sEnabled;
  nw_quic_connection_set_enable_l4s();
  v7 = *MEMORY[0x277CD9230];
  v12 = MEMORY[0x277D85DD0];
  v13 = v3;
  v8 = v3;
  quic_stream = nw_parameters_create_quic_stream();
  [(NetworkQualityHTTPServer *)self setCommmonParameters:quic_stream, v12, 3221225472, __52__NetworkQualityHTTPServer_HTTP3ParametersForServer__block_invoke_2, &unk_279969750];
  v10 = nw_parameters_copy_default_protocol_stack(quic_stream);
  nw_protocol_stack_prepend_application_protocol(v10, options);
  nw_parameters_set_prohibit_joining_protocols();
  nw_parameters_set_attach_protocol_listener();

  return quic_stream;
}

void __52__NetworkQualityHTTPServer_HTTP3ParametersForServer__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 28) - 3;
  if (v3 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_279969888[v3];
  }

  options = a2;
  sec_protocol_options_add_tls_application_protocol(options, v4);
  sec_protocol_options_set_peer_authentication_required(options, 0);
  sec_protocol_options_set_local_identity(options, *(*(a1 + 32) + 64));
  sec_protocol_options_append_tls_ciphersuite_group(options, tls_ciphersuite_group_default);
}

void __52__NetworkQualityHTTPServer_HTTP3ParametersForServer__block_invoke_2(uint64_t a1)
{
  v2 = nw_quic_connection_copy_sec_protocol_options();
  (*(*(a1 + 32) + 16))();
}

- (void)start:(id)a3
{
  v54[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = dispatch_queue_create("networkQuality", MEMORY[0x277D85CD8]);
  queue = self->queue;
  self->queue = v5;

  if (self->httpVersion == 5)
  {
    [(NetworkQualityHTTPServer *)self HTTP3ParametersForServer];
  }

  else
  {
    [(NetworkQualityHTTPServer *)self HTTP2ParametersForServer];
  }
  v7 = ;
  v8 = v7;
  if (self->launchdInvoked)
  {
    v9 = nw_listener_create_with_launchd_key();
  }

  else
  {
    if (self->port)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", self->port];
      v11 = nw_listener_create_with_port([v10 UTF8String], v8);
      listener = self->listener;
      self->listener = v11;

      goto LABEL_10;
    }

    v9 = nw_listener_create(v7);
  }

  v10 = self->listener;
  self->listener = v9;
LABEL_10:

  if (self->listener)
  {
    v13 = dispatch_group_create();
    if (self->bonjourEnabled)
    {
      bonjour_service = nw_advertise_descriptor_create_bonjour_service(0, "_nq._tcp", "local");
      nw_listener_set_advertise_descriptor(self->listener, bonjour_service);
      dispatch_group_enter(v13);
      v15 = self->listener;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __34__NetworkQualityHTTPServer_start___block_invoke;
      handler[3] = &unk_279969778;
      handler[4] = self;
      v44 = v13;
      nw_listener_set_advertised_endpoint_changed_handler(v15, handler);
    }

    v16 = self->listener;
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __34__NetworkQualityHTTPServer_start___block_invoke_20;
    v42[3] = &unk_2799697C8;
    v42[4] = self;
    nw_listener_set_new_connection_handler(v16, v42);
    dispatch_group_enter(v13);
    v17 = self->listener;
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __34__NetworkQualityHTTPServer_start___block_invoke_3;
    v40[3] = &unk_2799697A0;
    v18 = v13;
    v41 = v18;
    nw_listener_set_state_changed_handler(v17, v40);
    nw_listener_set_queue(self->listener, self->queue);
    nw_listener_start(self->listener);
    if (!self->launchdInvoked)
    {
      dispatch_group_wait(v18, 0xFFFFFFFFFFFFFFFFLL);
    }

    p_name = &self->name;
    name = self->name;
    self->name = @"localhost";

    netqual_log_init();
    v21 = os_log_netqual;
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_INFO))
    {
      v22 = self->name;
      bonjourEnabled = self->bonjourEnabled;
      *buf = 136315906;
      v46 = "[NetworkQualityHTTPServer start:]";
      v47 = 1024;
      v48 = 276;
      v49 = 2112;
      v50 = v22;
      v51 = 1024;
      v52 = bonjourEnabled;
      _os_log_impl(&dword_25B962000, v21, OS_LOG_TYPE_INFO, "%s:%u - Default servername=%@ bonjourEnabled=%d", buf, 0x22u);
    }

    if (self->bonjourEnabled)
    {
      v24 = SCDynamicStoreCopyLocalHostName(0);
      if (v24)
      {
        v25 = v24;
        v26 = [MEMORY[0x277CCACA8] stringWithString:v24];
        v27 = *p_name;
        *p_name = v26;

        CFRelease(v25);
        if (([*p_name hasSuffix:@".local"] & 1) == 0)
        {
          v28 = [*p_name stringByAppendingString:@".local"];
          v29 = *p_name;
          *p_name = v28;
        }

        netqual_log_init();
        v30 = os_log_netqual;
        if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_INFO))
        {
          v31 = *p_name;
          *buf = 136315650;
          v46 = "[NetworkQualityHTTPServer start:]";
          v47 = 1024;
          v48 = 287;
          v49 = 2112;
          v50 = v31;
          _os_log_impl(&dword_25B962000, v30, OS_LOG_TYPE_INFO, "%s:%u - New servername=%@", buf, 0x1Cu);
        }
      }

      else
      {
        netqual_log_init();
        if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
        {
          [NetworkQualityHTTPServer start:?];
        }
      }
    }

    port = nw_listener_get_port(self->listener);
    if (self->launchdInvoked)
    {
      v35 = 56666;
    }

    else
    {
      v35 = port;
    }

    self->port = v35;
    v36 = [(NetworkQualityHTTPServer *)self urlForType:@".well-known/nq" withAddress:self->name mirrorIP:0];
    netqual_log_init();
    v37 = os_log_netqual;
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v46 = "[NetworkQualityHTTPServer start:]";
      v47 = 1024;
      v48 = 300;
      v49 = 2112;
      v50 = v36;
      _os_log_impl(&dword_25B962000, v37, OS_LOG_TYPE_INFO, "%s:%u - Available for server @ %@", buf, 0x1Cu);
    }

    v38 = [(NetworkQualityHTTPServer *)self urlForType:@".well-known/nq" withAddress:self->name mirrorIP:0];
    v4[2](v4, v38, 0);
  }

  else
  {
    netqual_log_init();
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
    {
      [NetworkQualityHTTPServer start:];
    }

    v32 = MEMORY[0x277CCA9B8];
    v53 = *MEMORY[0x277CCA450];
    v54[0] = @"Could not create listener for server";
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:&v53 count:1];
    v33 = [v32 errorWithDomain:@"NetworkQualityErrorDomain" code:1007 userInfo:v18];
    (v4)[2](v4, 0, v33);
  }

  v39 = *MEMORY[0x277D85DE8];
}

void __34__NetworkQualityHTTPServer_start___block_invoke(uint64_t a1, nw_endpoint_t endpoint, int a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:nw_endpoint_get_bonjour_service_name(endpoint)];
  netqual_log_init();
  v6 = os_log_netqual;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_INFO))
  {
    v11 = "[NetworkQualityHTTPServer start:]_block_invoke";
    v7 = "removed";
    v12 = 1024;
    v13 = 237;
    v10 = 136316674;
    v14 = 2080;
    if (a3)
    {
      v7 = "added";
    }

    v15 = v7;
    v16 = 2112;
    v17 = v5;
    v18 = 2112;
    v19 = v5;
    v20 = 2080;
    v21 = "_nq._tcp";
    v22 = 2080;
    v23 = "local";
    _os_log_impl(&dword_25B962000, v6, OS_LOG_TYPE_INFO, "%s:%u - Listener %s on %@ (%@.%s.%s)\n", &v10, 0x44u);
  }

  v8 = *(a1 + 32);
  if ((*(v8 + 20) & 1) == 0)
  {
    *(v8 + 20) = 1;
    dispatch_group_leave(*(a1 + 40));
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __34__NetworkQualityHTTPServer_start___block_invoke_20(uint64_t a1, void *a2)
{
  v3 = a2;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __34__NetworkQualityHTTPServer_start___block_invoke_2;
  handler[3] = &unk_2799697A0;
  v6 = v3;
  v4 = v3;
  nw_connection_set_state_changed_handler(v4, handler);
  nw_connection_set_queue(v4, *(*(a1 + 32) + 80));
  [*(a1 + 32) receiveLoop:v4];
  nw_connection_start(v4);
}

void __34__NetworkQualityHTTPServer_start___block_invoke_2(uint64_t a1, int a2)
{
  if (a2 == 4)
  {
    nw_connection_cancel(*(a1 + 32));
  }
}

void __34__NetworkQualityHTTPServer_start___block_invoke_3(uint64_t a1, int a2)
{
  if (a2 == 2)
  {
    dispatch_group_leave(*(a1 + 32));
  }
}

- (void)stop
{
  nw_listener_cancel(self->listener);
  listener = self->listener;
  self->listener = 0;
}

- (void)receiveLoop:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__NetworkQualityHTTPServer_receiveLoop___block_invoke;
  v6[3] = &unk_279969868;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  nw_connection_receive(v5, 0, 0xFFFFFFFF, v6);
}

void __40__NetworkQualityHTTPServer_receiveLoop___block_invoke(uint64_t a1, void *a2, void *a3, int a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __40__NetworkQualityHTTPServer_receiveLoop___block_invoke_2;
  v43[3] = &unk_2799697F0;
  v47 = a4;
  v12 = v11;
  v14 = (a1 + 40);
  v13 = *(a1 + 40);
  v15 = *(a1 + 32);
  v44 = v12;
  v45 = v15;
  v46 = v13;
  v16 = MEMORY[0x25F873620](v43);
  if (!v12)
  {
    v17 = nw_protocol_copy_http_definition();
    v18 = nw_content_context_copy_protocol_metadata(v10, v17);

    if (!v18)
    {
      netqual_log_init();
      if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
      {
        __40__NetworkQualityHTTPServer_receiveLoop___block_invoke_cold_4((a1 + 40));
      }

      nw_connection_cancel(*v14);
      goto LABEL_41;
    }

    v19 = nw_http_metadata_copy_request();
    v40 = 0;
    v41[0] = &v40;
    v41[1] = 0x3032000000;
    v41[2] = __Block_byref_object_copy__1;
    v41[3] = __Block_byref_object_dispose__1;
    v42 = 0;
    v35 = MEMORY[0x277D85DD0];
    v36 = 3221225472;
    v37 = __40__NetworkQualityHTTPServer_receiveLoop___block_invoke_33;
    v38 = &unk_279969818;
    v39 = &v40;
    v30 = v19;
    nw_http_request_access_path();
    if (!*(v41[0] + 40))
    {
      netqual_log_init();
      if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
      {
        __40__NetworkQualityHTTPServer_receiveLoop___block_invoke_cold_3();
      }

      goto LABEL_40;
    }

    well_known = nw_http_response_create_well_known();
    v20 = *(v41[0] + 40);
    if (!v20)
    {
      if (!v9)
      {
        goto LABEL_34;
      }

      goto LABEL_24;
    }

    if ([v20 isEqualToString:@"/small"])
    {
      nw_http_fields_append();
      v21 = *(*(a1 + 32) + 40);
    }

    else
    {
      if ([*(v41[0] + 40) isEqualToString:@"/large"])
      {
        nw_http_fields_append();
        v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%zu", 0x300000000, v30];
        [v22 UTF8String];
        nw_http_fields_append();
        v23 = 1;
        goto LABEL_26;
      }

      if (([*(v41[0] + 40) isEqualToString:@"/"] & 1) == 0 && (objc_msgSend(*(v41[0] + 40), "isEqualToString:", @"/config") & 1) == 0 && !objc_msgSend(*(v41[0] + 40), "isEqualToString:", @"/.well-known/nq"))
      {
        if (![*(v41[0] + 40) isEqualToString:@"/slurp"])
        {
          netqual_log_init();
          if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
          {
            __40__NetworkQualityHTTPServer_receiveLoop___block_invoke_cold_2(v41);
          }

          if (!v9)
          {
            goto LABEL_34;
          }

          goto LABEL_24;
        }

        if (v9)
        {
          dispatch_data_get_size(v9);
        }

        v24 = *(*(a1 + 32) + 40);

        nw_http_fields_append();
        goto LABEL_23;
      }

      nw_http_fields_append();
      v21 = [*(a1 + 32) configForConnection:*(a1 + 40) mirrorIP:*(*(a1 + 32) + 24)];
    }

    v24 = v21;

LABEL_23:
    v9 = v24;
    if (!v24)
    {
      goto LABEL_34;
    }

LABEL_24:
    size = dispatch_data_get_size(v9);
    if (size)
    {
      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%zu", size, v30];
      [v22 UTF8String];
      nw_http_fields_append();
      v23 = 0;
LABEL_26:

      if (!a4)
      {
LABEL_27:
        v16[2](v16);
LABEL_39:

LABEL_40:
        _Block_object_dispose(&v40, 8);

LABEL_41:
        goto LABEL_42;
      }

LABEL_35:
      nw_http_response_set_status_code();
      v26 = nw_content_context_create("response");
      metadata_for_response = nw_http_create_metadata_for_response();
      nw_content_context_set_metadata_for_protocol(v26, metadata_for_response);

      if (v23)
      {
        v28 = objc_alloc_init(BodyWriter);
        [(BodyWriter *)v28 setConnection:*v14];
        [(BodyWriter *)v28 setPostData:*(*(a1 + 32) + 48)];
        [(BodyWriter *)v28 setBytesLeftToPost:0x300000000];
        [(BodyWriter *)v28 sendBodyDataWithContext:v26];
      }

      else
      {
        v29 = *v14;
        completion[0] = MEMORY[0x277D85DD0];
        completion[1] = 3221225472;
        completion[2] = __40__NetworkQualityHTTPServer_receiveLoop___block_invoke_62;
        completion[3] = &unk_279969840;
        v33 = well_known;
        v34 = *v14;
        nw_connection_send(v29, v9, v26, 1, completion);

        v28 = v33;
      }

      goto LABEL_39;
    }

LABEL_34:
    v23 = 0;
    if (!a4)
    {
      goto LABEL_27;
    }

    goto LABEL_35;
  }

  netqual_log_init();
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
  {
    __40__NetworkQualityHTTPServer_receiveLoop___block_invoke_cold_1();
  }

LABEL_42:
}

uint64_t __40__NetworkQualityHTTPServer_receiveLoop___block_invoke_2(uint64_t result)
{
  if ((*(result + 56) & 1) == 0 && !*(result + 32))
  {
    return [*(result + 40) receiveLoop:*(result + 48)];
  }

  return result;
}

uint64_t __40__NetworkQualityHTTPServer_receiveLoop___block_invoke_33(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

void __40__NetworkQualityHTTPServer_receiveLoop___block_invoke_62(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (nw_http_response_get_status_code() >= 0x190)
  {
    v3 = *(a1 + 40);

    nw_connection_cancel(v3);
  }
}

- (id)urlFormatAddress:(id)a3
{
  v3 = a3;
  address = nw_endpoint_get_address(v3);
  v5 = nw_endpoint_copy_address_string(v3);
  port = nw_endpoint_get_port(v3);

  sa_family = address->sa_family;
  if (sa_family == 30)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", v5];
    if (([v9 isEqualToString:@"::1"] & 1) == 0)
    {
      v10 = objc_alloc_init(MEMORY[0x277CCAB50]);
      [v10 addCharactersInString:@"abcdefghijklmnopqrstuvwxyz0123456789:"];
      v11 = [v9 stringByAddingPercentEncodingWithAllowedCharacters:v10];

      v9 = v11;
    }

    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]:%d", v9, port];
  }

  else if (sa_family == 2)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", v5, port];
  }

  else
  {
    v8 = 0;
  }

  free(v5);

  return v8;
}

- (id)urlForType:(id)a3 withAddress:(id)a4 mirrorIP:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v5)
  {
    v11 = v9;
    if (self->tlsEnabled)
    {
      v12 = @"https";
    }

    else
    {
      v12 = @"http";
    }

    v13 = v12;
    if ([v8 isEqualToString:@"config"])
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%@://%@", v13, v11, v17, v18];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%@://%@/%@", v13, v11, v8, v18];
    }
  }

  else
  {
    v11 = self->name;
    if (self->tlsEnabled)
    {
      v14 = @"https";
    }

    else
    {
      v14 = @"http";
    }

    v13 = v14;
    if ([v8 isEqualToString:@"config"])
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%@://%@:%d", v13, v11, self->port, v18];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%@://%@:%d/%@", v13, v11, self->port, v8];
    }
  }
  v15 = ;

  return v15;
}

- (void)initWithPort:tlsEnabled:httpVersion:bonjourEnabled:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)start:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)start:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void __40__NetworkQualityHTTPServer_receiveLoop___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __40__NetworkQualityHTTPServer_receiveLoop___block_invoke_cold_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(*a1 + 40);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
  v7 = *MEMORY[0x277D85DE8];
}

void __40__NetworkQualityHTTPServer_receiveLoop___block_invoke_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void __40__NetworkQualityHTTPServer_receiveLoop___block_invoke_cold_4(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)configForConnection:mirrorIP:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 136315906;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  v5 = v0;
  v6 = v1;
  _os_log_error_impl(&dword_25B962000, v2, OS_LOG_TYPE_ERROR, "%s:%u - Error serializing data (%@): %@", v4, 0x26u);
  v3 = *MEMORY[0x277D85DE8];
}

@end