@interface EAPBoringSSLSession
- (BOOL)configureSecProtocol:(EAPBoringSSLSessionParameters_s *)a3;
- (BOOL)getSessionResumed;
- (BOOL)setClientIdentity:(__SecIdentity *)a3 certificates:(id)a4;
- (BOOL)setup:(EAPBoringSSLSessionParameters_s *)a3 clientContext:(void *)a4;
- (EAPBoringSSLSession)init;
- (id)copyPeerCertificateChain;
- (id)customProtocolDefinition;
- (id)getEAPKeyMaterial;
- (int)deliverInput;
- (int)handshake;
- (int)handshakeStatus;
- (int)state;
- (unsigned)getEAPMethodInUse;
- (unsigned)getNegotiatedTLSVersion;
- (void)dealloc;
- (void)readApplicationData;
- (void)setHandshakeStatus:(int)a3;
- (void)setSecProtocolMetadata;
- (void)setState:(int)a3;
- (void)start;
- (void)stop;
@end

@implementation EAPBoringSSLSession

- (EAPBoringSSLSession)init
{
  v9.receiver = self;
  v9.super_class = EAPBoringSSLSession;
  v2 = [(EAPBoringSSLSession *)&v9 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCA930]) initWithCondition:1];
    statusUpdateLock = v2->_statusUpdateLock;
    v2->_statusUpdateLock = v3;

    v5 = EAPLogGetLogHandle();
    v6 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v5, v6))
    {
      *v8 = 0;
      _os_log_impl(&dword_249EFB000, v5, v6, "EAPBoringSSLSession initialized", v8, 2u);
    }
  }

  return v2;
}

- (void)dealloc
{
  serverSecTrust = self->_serverSecTrust;
  if (serverSecTrust)
  {
    CFRelease(serverSecTrust);
  }

  v4 = EAPLogGetLogHandle();
  v5 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v4, v5))
  {
    *buf = 0;
    _os_log_impl(&dword_249EFB000, v4, v5, "EAPBoringSSLSession deallocated", buf, 2u);
  }

  v6.receiver = self;
  v6.super_class = EAPBoringSSLSession;
  [(EAPBoringSSLSession *)&v6 dealloc];
}

- (id)customProtocolDefinition
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__EAPBoringSSLSession_customProtocolDefinition__block_invoke;
  v4[3] = &unk_278FBDE48;
  objc_copyWeak(&v5, &location);
  definition = nw_framer_create_definition("EAPBoringSSLSessionInterceptor", 0, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return definition;
}

uint64_t __47__EAPBoringSSLSession_customProtocolDefinition__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = EAPLogGetLogHandle();
  v5 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v4, v5))
  {
    *buf = 0;
    _os_log_impl(&dword_249EFB000, v4, v5, "start handler for custom protocol called", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setCustomFramer:v3];
    v8 = nw_framer_copy_options(v3);
    [v7 setCustomProtocol:v8];

    nw_framer_set_input_handler(v3, &__block_literal_global);
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __47__EAPBoringSSLSession_customProtocolDefinition__block_invoke_2;
    v16 = &unk_278FBDE20;
    v17 = v3;
    v18 = v7;
    nw_framer_set_output_handler(v17, &v13);
    [v7 setState:{1, v13, v14, v15, v16}];
    v9 = EAPLogGetLogHandle();
    v10 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v9, v10))
    {
      *buf = 0;
      _os_log_impl(&dword_249EFB000, v9, v10, "custom protocol reported ready status", buf, 2u);
    }

    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  return v11;
}

void __47__EAPBoringSSLSession_customProtocolDefinition__block_invoke_2(uint64_t a1, void *a2, void *a3, size_t a4, int a5)
{
  v39 = *MEMORY[0x277D85DE8];
  v21 = a2;
  v22 = a3;
  v9 = EAPLogGetLogHandle();
  v10 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = "false";
    if (a5)
    {
      v11 = "true";
    }

    *buf = 134218242;
    *&buf[4] = a4;
    *&buf[12] = 2080;
    *&buf[14] = v11;
    _os_log_impl(&dword_249EFB000, v9, v10, "output handler received message_length: [%zu], is_complete:[%s]", buf, 0x16u);
  }

  if (a4)
  {
    v12 = [*(a1 + 40) state];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v38 = 0;
    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v32 = -9803;
    while (*(*&buf[8] + 24) < a4)
    {
      parse[0] = MEMORY[0x277D85DD0];
      parse[1] = 3221225472;
      parse[2] = __47__EAPBoringSSLSession_customProtocolDefinition__block_invoke_7;
      parse[3] = &unk_278FBDDF8;
      v28 = v12 == 1;
      v26 = &v29;
      v23 = *(a1 + 32);
      v13 = v23.i64[0];
      v25 = vextq_s8(v23, v23, 8uLL);
      v27 = buf;
      nw_framer_parse_output(v13, a4, a4, 0, parse);

      if (v12 != 1)
      {
        goto LABEL_18;
      }
    }

    if (v12 == 1)
    {
      if (*(v30 + 6))
      {
        v14 = *(v30 + 6);
      }

      else
      {
        v14 = -9803;
      }

      *(v30 + 6) = v14;
      [*(a1 + 40) updateHandshakeStatus:?];
      v15 = EAPLogGetLogHandle();
      v16 = _SC_syslog_os_log_mapping();
      v17 = v15;
      if (os_log_type_enabled(v17, v16))
      {
        v18 = EAPSecurityErrorString(*(v30 + 6));
        v19 = *(v30 + 6);
        *v33 = 136315394;
        v34 = v18;
        v35 = 1024;
        v36 = v19;
        _os_log_impl(&dword_249EFB000, v17, v16, "[output_handler]: updated handshake status to [%s]:[%d]", v33, 0x12u);
      }
    }

LABEL_18:
    _Block_object_dispose(&v29, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    nw_framer_mark_failed_with_error(*(a1 + 32), 5);
  }

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t __47__EAPBoringSSLSession_customProtocolDefinition__block_invoke_7(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v14 = a3;
  if (*(a1 + 64))
  {
    result = 0;
    if (a2 && a3)
    {
      v7 = EAPLogGetLogHandle();
      v8 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v7, v8))
      {
        *buf = 134217984;
        v16 = a3;
        _os_log_impl(&dword_249EFB000, v7, v8, "writing %zu bytes to MemIO Write Buffer", buf, 0xCu);
      }

      *(*(*(a1 + 48) + 8) + 24) = ([*(a1 + 32) write])(objc_msgSend(*(a1 + 32), "memIO"), a2, &v14);
      v9 = *(*(*(a1 + 48) + 8) + 24);
      v10 = EAPLogGetLogHandle();
      if (v9)
      {
        v11 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v10, v11))
        {
          *buf = 0;
          _os_log_impl(&dword_249EFB000, v10, v11, "failed to write to MemIO write buffer, reporting EPROTO", buf, 2u);
        }

        nw_framer_mark_failed_with_error(*(a1 + 40), 100);
        result = 0;
      }

      else
      {
        v12 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v10, v12))
        {
          *buf = 134217984;
          v16 = v14;
          _os_log_impl(&dword_249EFB000, v10, v12, "completed writing %zu bytes to MemIO Buffer", buf, 0xCu);
        }

        result = v14;
        *(*(*(a1 + 56) + 8) + 24) += v14;
      }
    }
  }

  else
  {
    result = a3;
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)setClientIdentity:(__SecIdentity *)a3 certificates:(id)a4
{
  v6 = a4;
  v7 = [(EAPBoringSSLSession *)self tlsProtocol];
  v8 = v7;

  if (!v8)
  {
    v10 = EAPLogGetLogHandle();
    v11 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v10, v11))
    {
      v18 = 0;
      v12 = "nw_tls_copy_sec_protocol_options() returned nil";
      v13 = &v18;
LABEL_14:
      _os_log_impl(&dword_249EFB000, v10, v11, v12, v13, 2u);
    }

LABEL_15:

    v15 = 0;
    goto LABEL_16;
  }

  if (a3)
  {
    if (v6 && [(__CFArray *)v6 count])
    {
      v9 = sec_identity_create_with_certificates(a3, v6);
    }

    else
    {
      v9 = sec_identity_create(a3);
    }

    v14 = v9;
    if (v9)
    {
      sec_protocol_options_set_local_identity(v8, v9);

      goto LABEL_11;
    }

    v10 = EAPLogGetLogHandle();
    v11 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v10, v11))
    {
      v17 = 0;
      v12 = "sec_identity_create()/sec_identity_create_with_certificates() returned nil";
      v13 = &v17;
      goto LABEL_14;
    }

    goto LABEL_15;
  }

LABEL_11:
  v15 = 1;
LABEL_16:

  return v15;
}

- (BOOL)configureSecProtocol:(EAPBoringSSLSessionParameters_s *)a3
{
  if (a3)
  {
    v5 = [(EAPBoringSSLSession *)self tlsProtocol];
    v6 = v5;

    if (v6)
    {
      sec_protocol_options_set_tls_early_data_enabled();
      sec_protocol_options_set_min_tls_protocol_version(v6, a3->var2);
      sec_protocol_options_set_max_tls_protocol_version(v6, a3->var3);
      v7 = 0;
      if ([(EAPBoringSSLSession *)self eapType]!= 13)
      {
LABEL_17:

        return v7;
      }

      sec_protocol_options_set_eap_method();
      var0 = a3->var0;
      if (!a3->var0)
      {
LABEL_16:
        objc_initWeak(buf, self);
        verify_block[0] = MEMORY[0x277D85DD0];
        verify_block[1] = 3221225472;
        verify_block[2] = __44__EAPBoringSSLSession_configureSecProtocol___block_invoke;
        verify_block[3] = &unk_278FBDE70;
        objc_copyWeak(&v18, buf);
        v15 = [(EAPBoringSSLSession *)self queue];
        sec_protocol_options_set_verify_block(v6, verify_block, v15);

        objc_destroyWeak(&v18);
        objc_destroyWeak(buf);
        v7 = 1;
        goto LABEL_17;
      }

      if (a3->var1 && (Count = CFArrayGetCount(a3->var1), var0 = a3->var0, Count >= 1))
      {
        v10 = sec_identity_create_with_certificates(var0, a3->var1);
      }

      else
      {
        v10 = sec_identity_create(var0);
      }

      v14 = v10;
      if (v10)
      {
        sec_protocol_options_set_local_identity(v6, v10);

        goto LABEL_16;
      }

      v11 = EAPLogGetLogHandle();
      v12 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v11, v12))
      {
        LOWORD(buf[0]) = 0;
        v13 = "sec_identity_create()/sec_identity_create_with_certificates() returned nil";
        goto LABEL_11;
      }
    }

    else
    {
      v11 = EAPLogGetLogHandle();
      LOBYTE(v12) = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v11, v12))
      {
        LOWORD(buf[0]) = 0;
        v13 = "nw_tls_copy_sec_protocol_options() returned nil";
LABEL_11:
        _os_log_impl(&dword_249EFB000, v11, v12, v13, buf, 2u);
      }
    }

    v7 = 0;
    goto LABEL_17;
  }

  return 0;
}

void __44__EAPBoringSSLSession_configureSecProtocol___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = EAPLogGetLogHandle();
  v9 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v8, v9))
  {
    LOWORD(v16) = 0;
    _os_log_impl(&dword_249EFB000, v8, v9, "verify_block called", &v16, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained setServerSecTrust:sec_trust_copy_ref(v6)];
    [WeakRetained setSecTrustCompletionHandler:v7];
    [WeakRetained updateHandshakeStatus:4294957455];
    v11 = EAPLogGetLogHandle();
    v12 = _SC_syslog_os_log_mapping();
    v13 = v11;
    if (os_log_type_enabled(v13, v12))
    {
      v14 = EAPSecurityErrorString(-9841);
      v16 = 136315394;
      v17 = v14;
      v18 = 1024;
      v19 = -9841;
      _os_log_impl(&dword_249EFB000, v13, v12, "[verify_block]: updated handshake status to [%s]:[%d]", &v16, 0x12u);
    }
  }

  else
  {
    v7[2](v7, 0);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)setup:(EAPBoringSSLSessionParameters_s *)a3 clientContext:(void *)a4
{
  if (a3)
  {
    v7 = MEMORY[0x24C207790](self, a2);
    v8 = v7;
    if (!v7)
    {
      v9 = EAPLogGetLogHandle();
      v21 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v9, v21))
      {
        *buf = 0;
        _os_log_impl(&dword_249EFB000, v9, v21, "nw_parameters_create() returned nil", buf, 2u);
      }

      v20 = 0;
      goto LABEL_23;
    }

    v9 = nw_parameters_copy_default_protocol_stack(v7);
    if (v9)
    {
      nw_parameters_set_custom_protocols_only();
      options = nw_tls_create_options();
      [(EAPBoringSSLSession *)self setTlsProtocol:options];

      v11 = [(EAPBoringSSLSession *)self tlsProtocol];

      if (v11)
      {
        [(EAPBoringSSLSession *)self setEapType:a3->var6];
        [(EAPBoringSSLSession *)self setRead:a3->var4];
        [(EAPBoringSSLSession *)self setWrite:a3->var5];
        v12 = dispatch_queue_create("EAPBoringSSLSession", 0);
        [(EAPBoringSSLSession *)self setQueue:v12];

        [(EAPBoringSSLSession *)self setClientContext:a4];
        [(EAPBoringSSLSession *)self setMemIO:a3->var7];
        if ([(EAPBoringSSLSession *)self configureSecProtocol:a3])
        {
          v13 = [(EAPBoringSSLSession *)self customProtocolDefinition];
          v14 = nw_framer_create_options(v13);

          if (!v14)
          {
            v17 = EAPLogGetLogHandle();
            v26 = _SC_syslog_os_log_mapping();
            if (os_log_type_enabled(v17, v26))
            {
              *v33 = 0;
              _os_log_impl(&dword_249EFB000, v17, v26, "nw_framer_create_options() returned nil", v33, 2u);
            }

            goto LABEL_33;
          }

          v15 = [(EAPBoringSSLSession *)self tlsProtocol];
          nw_protocol_stack_append_application_protocol();

          nw_protocol_stack_append_application_protocol();
          host = nw_endpoint_create_host("0.0.0.0", "0");
          v17 = host;
          if (host)
          {
            v18 = nw_connection_create(host, v8);
            [(EAPBoringSSLSession *)self setConnection:v18];

            v19 = [(EAPBoringSSLSession *)self connection];

            if (v19)
            {
              v20 = 1;
LABEL_34:

              goto LABEL_22;
            }

            v27 = EAPLogGetLogHandle();
            v28 = _SC_syslog_os_log_mapping();
            if (!os_log_type_enabled(v27, v28))
            {
              goto LABEL_32;
            }

            v31 = 0;
            v29 = "nw_connection_create() returned nil";
            v30 = &v31;
          }

          else
          {
            v27 = EAPLogGetLogHandle();
            v28 = _SC_syslog_os_log_mapping();
            if (!os_log_type_enabled(v27, v28))
            {
LABEL_32:

LABEL_33:
              v20 = 0;
              goto LABEL_34;
            }

            v32 = 0;
            v29 = "nw_endpoint_create_host() returned nil";
            v30 = &v32;
          }

          _os_log_impl(&dword_249EFB000, v27, v28, v29, v30, 2u);
          goto LABEL_32;
        }

        v14 = EAPLogGetLogHandle();
        v22 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v14, v22))
        {
          *v34 = 0;
          v23 = "failed to set the security protocol options";
          v24 = v34;
          goto LABEL_20;
        }

LABEL_21:
        v20 = 0;
LABEL_22:

LABEL_23:
        return v20;
      }

      v14 = EAPLogGetLogHandle();
      v22 = _SC_syslog_os_log_mapping();
      if (!os_log_type_enabled(v14, v22))
      {
        goto LABEL_21;
      }

      v35 = 0;
      v23 = "nw_tls_create_options() returned nil";
      v24 = &v35;
    }

    else
    {
      v14 = EAPLogGetLogHandle();
      v22 = _SC_syslog_os_log_mapping();
      if (!os_log_type_enabled(v14, v22))
      {
        goto LABEL_21;
      }

      v36 = 0;
      v23 = "nw_parameters_copy_default_protocol_stack() returned nil";
      v24 = &v36;
    }

LABEL_20:
    _os_log_impl(&dword_249EFB000, v14, v22, v23, v24, 2u);
    goto LABEL_21;
  }

  return 0;
}

- (int)handshake
{
  if ([(EAPBoringSSLSession *)self handshakeStatus]== -9841 && ([(EAPBoringSSLSession *)self secTrustCompletionHandler], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = [(EAPBoringSSLSession *)self secTrustCompletionHandler];
    v4[2](v4, 1);

    v5 = EAPLogGetLogHandle();
    v6 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v5, v6))
    {
      *v10 = 0;
      _os_log_impl(&dword_249EFB000, v5, v6, "delivered trust evaluation result=success to TLS protocol", v10, 2u);
    }
  }

  else
  {
    [(EAPBoringSSLSession *)self deliverInput];
  }

  v7 = [(EAPBoringSSLSession *)self statusUpdateLock];
  [v7 lockWhenCondition:0];

  LODWORD(v7) = [(EAPBoringSSLSession *)self handshakeStatus];
  v8 = [(EAPBoringSSLSession *)self statusUpdateLock];
  [v8 unlockWithCondition:1];

  return v7;
}

- (int)deliverInput
{
  location[3] = *MEMORY[0x277D85DE8];
  if ([(EAPBoringSSLSession *)self state]== 1)
  {
    v3 = [(EAPBoringSSLSession *)self customProtocol];
    v4 = nw_protocol_options_copy_definition(v3);

    v27 = v4;
    if (v4 && (v5 = MEMORY[0x24C2077B0](v4)) != 0)
    {
      v6 = v5;
      v7 = malloc_type_calloc(1uLL, 0x4800uLL, 0xD647059uLL);
      if (v7)
      {
        v8 = v7;
        v9 = 0;
        v35 = 18432;
        v28 = v30;
        while (1)
        {
          v10 = ([(EAPBoringSSLSession *)self read:v27])([(EAPBoringSSLSession *)self memIO], v8, &v35);
          if (v10)
          {
            break;
          }

          v11 = v35;
          if (!(v35 | v9))
          {
            v10 = 0;
            goto LABEL_26;
          }

          v12 = v35 == 0;
          if (v35)
          {
            v13 = [MEMORY[0x277CBEA90] dataWithBytes:v8 length:v35];
          }

          else
          {
            v13 = 0;
          }

          objc_initWeak(location, self);
          v14 = [(EAPBoringSSLSession *)self customFramer];
          async_block[0] = MEMORY[0x277D85DD0];
          async_block[1] = 3221225472;
          v30[0] = __35__EAPBoringSSLSession_deliverInput__block_invoke;
          v30[1] = &unk_278FBDE98;
          objc_copyWeak(v33, location);
          v34 = v12;
          v31 = v6;
          v15 = v13;
          v32 = v15;
          v33[1] = v35;
          nw_framer_async(v14, async_block);
          v16 = v11 == 0;

          v17 = v35;
          v35 = 18432;

          objc_destroyWeak(v33);
          objc_destroyWeak(location);

          v9 += v17;
          if (v16)
          {
            goto LABEL_21;
          }
        }

        v20 = EAPLogGetLogHandle();
        v21 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v20, v21))
        {
          LOWORD(location[0]) = 0;
          _os_log_impl(&dword_249EFB000, v20, v21, "failed to read from the MemIO read buffer", location, 2u);
        }

        v22 = [(EAPBoringSSLSession *)self customFramer];
        nw_framer_mark_failed_with_error(v22, 100);

LABEL_21:
        if (v9)
        {
          v23 = EAPLogGetLogHandle();
          v24 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(v23, v24))
          {
            LODWORD(location[0]) = 134217984;
            *(location + 4) = v9;
            _os_log_impl(&dword_249EFB000, v23, v24, "delivered total %zu bytes to TLS protocol", location, 0xCu);
          }
        }

LABEL_26:
        free(v8);
      }

      else
      {
        v10 = -108;
      }
    }

    else
    {
      v18 = EAPLogGetLogHandle();
      v19 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v18, v19))
      {
        LOWORD(location[0]) = 0;
        _os_log_impl(&dword_249EFB000, v18, v19, "nw_protocol_metadata_create_singleton() returned nil metadata", location, 2u);
      }

      v6 = 0;
      v10 = -50;
    }
  }

  else
  {
    v10 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v10;
}

void __35__EAPBoringSSLSession_deliverInput__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 64);
    v5 = [WeakRetained customFramer];
    v6 = v5;
    if (v4 == 1)
    {
      nw_framer_deliver_input_no_copy(v5, 0, *(a1 + 32), 1);

      v7 = EAPLogGetLogHandle();
      v8 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v7, v8))
      {
        LOWORD(v16) = 0;
        v9 = "nw_framer_deliver_input_no_copy() delivered EOD";
        v10 = v7;
        v11 = v8;
        v12 = 2;
LABEL_7:
        _os_log_impl(&dword_249EFB000, v10, v11, v9, &v16, v12);
      }
    }

    else
    {
      nw_framer_deliver_input(v5, [*(a1 + 40) bytes], objc_msgSend(*(a1 + 40), "length"), *(a1 + 32), 0);

      v7 = EAPLogGetLogHandle();
      v13 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v7, v13))
      {
        v14 = *(a1 + 56);
        v16 = 134217984;
        v17 = v14;
        v9 = "nw_framer_deliver_input() delivered %zu bytes";
        v10 = v7;
        v11 = v13;
        v12 = 12;
        goto LABEL_7;
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (unsigned)getEAPMethodInUse
{
  v2 = [(EAPBoringSSLSession *)self tlsProtocol];
  v3 = v2;

  if (v3)
  {
    eap_method = sec_protocol_options_get_eap_method();
  }

  else
  {
    v5 = EAPLogGetLogHandle();
    v6 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v5, v6))
    {
      *v8 = 0;
      _os_log_impl(&dword_249EFB000, v5, v6, "nw_tls_copy_sec_protocol_options() returned nil", v8, 2u);
    }

    eap_method = 0;
  }

  return eap_method;
}

- (void)setSecProtocolMetadata
{
  v3 = [(EAPBoringSSLSession *)self secProtocolMetadata];

  if (!v3)
  {
    v4 = [(EAPBoringSSLSession *)self tlsProtocol];
    definition = nw_protocol_options_copy_definition(v4);

    if (definition)
    {
      v5 = [(EAPBoringSSLSession *)self connection];
      v6 = nw_connection_copy_protocol_metadata(v5, definition);
      [(EAPBoringSSLSession *)self setSecProtocolMetadata:v6];
    }
  }
}

- (id)getEAPKeyMaterial
{
  v10 = *MEMORY[0x277D85DE8];
  if ([(EAPBoringSSLSession *)self getEAPMethodInUse]!= 1)
  {
    goto LABEL_5;
  }

  [(EAPBoringSSLSession *)self setSecProtocolMetadata];
  v3 = [(EAPBoringSSLSession *)self secProtocolMetadata];

  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = [(EAPBoringSSLSession *)self secProtocolMetadata];
  eap_key_material = sec_protocol_metadata_get_eap_key_material();

  if (eap_key_material)
  {
    v6 = [MEMORY[0x277CBEA90] dataWithBytes:v9 length:128];
  }

  else
  {
LABEL_5:
    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (unsigned)getNegotiatedTLSVersion
{
  [(EAPBoringSSLSession *)self setSecProtocolMetadata];
  v3 = [(EAPBoringSSLSession *)self secProtocolMetadata];

  if (!v3)
  {
    return 0;
  }

  v4 = [(EAPBoringSSLSession *)self secProtocolMetadata];
  negotiated_tls_protocol_version = sec_protocol_metadata_get_negotiated_tls_protocol_version(v4);

  return negotiated_tls_protocol_version;
}

- (BOOL)getSessionResumed
{
  [(EAPBoringSSLSession *)self setSecProtocolMetadata];
  v3 = [(EAPBoringSSLSession *)self secProtocolMetadata];

  if (!v3)
  {
    return 0;
  }

  v4 = [(EAPBoringSSLSession *)self secProtocolMetadata];
  session_resumed = sec_protocol_metadata_get_session_resumed();

  return session_resumed;
}

- (id)copyPeerCertificateChain
{
  [(EAPBoringSSLSession *)self setSecProtocolMetadata];
  v3 = [(EAPBoringSSLSession *)self secProtocolMetadata];

  if (!v3)
  {
    return 0;
  }

  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy_;
  v13 = __Block_byref_object_dispose_;
  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [(EAPBoringSSLSession *)self secProtocolMetadata];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __47__EAPBoringSSLSession_copyPeerCertificateChain__block_invoke;
  handler[3] = &unk_278FBDEC0;
  handler[4] = &v9;
  v5 = sec_protocol_metadata_access_peer_certificate_chain(v4, handler);

  if (v5 && [v10[5] count])
  {
    v6 = v10[5];
  }

  else
  {
    v6 = 0;
  }

  _Block_object_dispose(&v9, 8);

  return v6;
}

void __47__EAPBoringSSLSession_copyPeerCertificateChain__block_invoke(uint64_t a1, sec_certificate_t certificate)
{
  v3 = sec_certificate_copy_ref(certificate);
  [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
}

- (int)state
{
  v2 = self;
  objc_sync_enter(v2);
  state = v2->_state;
  objc_sync_exit(v2);

  return state;
}

- (void)setState:(int)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_state = a3;
  objc_sync_exit(obj);
}

- (int)handshakeStatus
{
  v2 = self;
  objc_sync_enter(v2);
  handshakeStatus = v2->_handshakeStatus;
  objc_sync_exit(v2);

  return handshakeStatus;
}

- (void)setHandshakeStatus:(int)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_handshakeStatus = a3;
  objc_sync_exit(obj);
}

- (void)readApplicationData
{
  objc_initWeak(&location, self);
  v3 = [(EAPBoringSSLSession *)self connection];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__EAPBoringSSLSession_readApplicationData__block_invoke;
  v4[3] = &unk_278FBDEE8;
  objc_copyWeak(&v5, &location);
  nw_connection_receive(v3, 0, 1u, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __42__EAPBoringSSLSession_readApplicationData__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v8)
  {
    v10 = nw_error_copy_cf_error(v8);
    v11 = EAPLogGetLogHandle();
    v12 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v11, v12))
    {
      v22 = 138412290;
      v23 = v10;
      _os_log_impl(&dword_249EFB000, v11, v12, "application data receive completion handler gor error : %@", &v22, 0xCu);
    }

    v13 = 4294899625;
LABEL_9:

    goto LABEL_10;
  }

  if (v7)
  {
    v10 = v7;
    v14 = [(__CFError *)v10 bytes];
    if ([(__CFError *)v10 length]== 1 && !*v14)
    {
      v20 = EAPLogGetLogHandle();
      v21 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v20, v21))
      {
        LOWORD(v22) = 0;
        _os_log_impl(&dword_249EFB000, v20, v21, "Received expected application data from the EAP-TLS 1.3 server", &v22, 2u);
      }

      [WeakRetained setState:2];
      v13 = 0;
    }

    else
    {
      v13 = 4294957496;
    }

    goto LABEL_9;
  }

  v13 = 0;
LABEL_10:
  [WeakRetained updateHandshakeStatus:v13];
  v15 = EAPLogGetLogHandle();
  v16 = _SC_syslog_os_log_mapping();
  v17 = v15;
  if (os_log_type_enabled(v17, v16))
  {
    v18 = EAPSecurityErrorString(v13);
    v22 = 136315394;
    v23 = v18;
    v24 = 1024;
    v25 = v13;
    _os_log_impl(&dword_249EFB000, v17, v16, "[Application Data Reader]: updated handshake status to [%s]:[%d]", &v22, 0x12u);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)start
{
  objc_initWeak(&location, self);
  v3 = [(EAPBoringSSLSession *)self connection];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __28__EAPBoringSSLSession_start__block_invoke;
  v10 = &unk_278FBDF10;
  objc_copyWeak(&v11, &location);
  nw_connection_set_state_changed_handler(v3, &v7);

  v4 = [(EAPBoringSSLSession *)self connection:v7];
  v5 = [(EAPBoringSSLSession *)self queue];
  nw_connection_set_queue(v4, v5);

  [(EAPBoringSSLSession *)self setState:0];
  v6 = [(EAPBoringSSLSession *)self connection];
  nw_connection_start(v6);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __28__EAPBoringSSLSession_start__block_invoke(uint64_t a1, int a2)
{
  v21 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = EAPLogGetLogHandle();
  v5 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v4, v5))
  {
    if (a2 > 5)
    {
      v6 = "unknown";
    }

    else
    {
      v6 = off_278FBDF30[a2];
    }

    v17 = 136315138;
    v18 = v6;
    _os_log_impl(&dword_249EFB000, v4, v5, "connection state changed to %s", &v17, 0xCu);
  }

  if (a2 <= 3)
  {
    if (a2 == 1)
    {
      if ([WeakRetained state] != 1)
      {
        goto LABEL_23;
      }

      v10 = 4294899625;
      goto LABEL_20;
    }

    if (a2 != 3)
    {
      goto LABEL_23;
    }

    v7 = [WeakRetained getEAPMethodInUse];
    v8 = [WeakRetained getNegotiatedTLSVersion];
    v9 = [WeakRetained getSessionResumed];
    v10 = 0;
    v11 = 2;
    if (v7 == 1 && v8 == 772 && (v9 & 1) == 0)
    {
      [WeakRetained readApplicationData];
      goto LABEL_23;
    }

LABEL_19:
    [WeakRetained setState:v11];
LABEL_20:
    [WeakRetained updateHandshakeStatus:v10];
    v12 = EAPLogGetLogHandle();
    v13 = _SC_syslog_os_log_mapping();
    v14 = v12;
    if (os_log_type_enabled(v14, v13))
    {
      v15 = EAPSecurityErrorString(v10);
      v17 = 136315394;
      v18 = v15;
      v19 = 1024;
      v20 = v10;
      _os_log_impl(&dword_249EFB000, v14, v13, "[State Change Handler]: updated handshake status to [%s]:[%d]", &v17, 0x12u);
    }

    goto LABEL_23;
  }

  if (a2 == 4)
  {
    v10 = 4294957490;
    v11 = 3;
    goto LABEL_19;
  }

  if (a2 == 5)
  {
    [WeakRetained setState:3];
  }

LABEL_23:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)stop
{
  v29 = *MEMORY[0x277D85DE8];
  if ([(EAPBoringSSLSession *)self handshakeStatus]== -9841 && ([(EAPBoringSSLSession *)self secTrustCompletionHandler], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = [(EAPBoringSSLSession *)self secTrustCompletionHandler];
    v4[2](v4, 0);

    v5 = EAPLogGetLogHandle();
    v6 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v5, v6))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&dword_249EFB000, v5, v6, "delivered trust evaluation result=failure to TLS protocol", &v25, 2u);
    }

    v7 = [(EAPBoringSSLSession *)self connection];
    nw_connection_set_state_changed_handler(v7, 0);

    v8 = EAPLogGetLogHandle();
    v9 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v8, v9))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&dword_249EFB000, v8, v9, "removed network connection state change handler", &v25, 2u);
    }

    v10 = [(EAPBoringSSLSession *)self statusUpdateLock];
    [v10 lockWhenCondition:0];

    v11 = [(EAPBoringSSLSession *)self handshakeStatus];
    v12 = [(EAPBoringSSLSession *)self statusUpdateLock];
    [v12 unlockWithCondition:1];

    v13 = EAPLogGetLogHandle();
    v14 = _SC_syslog_os_log_mapping();
    v15 = v13;
    if (os_log_type_enabled(v15, v14))
    {
      v16 = EAPSecurityErrorString(v11);
      v25 = 136315394;
      v26 = v16;
      v27 = 1024;
      v28 = v11;
      _os_log_impl(&dword_249EFB000, v15, v14, "[session stopper]: handshake status updated to [%s]:[%d]", &v25, 0x12u);
    }
  }

  else
  {
    v17 = [(EAPBoringSSLSession *)self connection];

    if (v17)
    {
      [(EAPBoringSSLSession *)self setState:3];
      v18 = [(EAPBoringSSLSession *)self connection];
      nw_connection_set_state_changed_handler(v18, 0);

      v19 = EAPLogGetLogHandle();
      v20 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v19, v20))
      {
        LOWORD(v25) = 0;
        _os_log_impl(&dword_249EFB000, v19, v20, "removed network connection state change handler", &v25, 2u);
      }

      v21 = [(EAPBoringSSLSession *)self connection];
      nw_connection_cancel(v21);

      v22 = EAPLogGetLogHandle();
      v23 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v22, v23))
      {
        LOWORD(v25) = 0;
        _os_log_impl(&dword_249EFB000, v22, v23, "cancelled network connection", &v25, 2u);
      }

      [(EAPBoringSSLSession *)self setConnection:0];
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

@end