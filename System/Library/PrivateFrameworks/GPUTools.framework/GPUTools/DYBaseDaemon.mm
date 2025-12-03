@interface DYBaseDaemon
- (DYBaseDaemon)init;
- (void)dealloc;
- (void)handleMessage:(id)message;
- (void)invalidate;
- (void)observeInferior;
- (void)run;
@end

@implementation DYBaseDaemon

- (DYBaseDaemon)init
{
  v4.receiver = self;
  v4.super_class = DYBaseDaemon;
  v2 = [(DYBaseDaemon *)&v4 init];
  if (v2)
  {
    v2->_isAppleInternal = os_variant_allows_internal_security_policies();
  }

  return v2;
}

- (void)observeInferior
{
  v3 = dispatch_source_create(MEMORY[0x277D85D20], self->_inferiorPid, 0x80000000uLL, MEMORY[0x277D85CD0]);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __31__DYBaseDaemon_observeInferior__block_invoke;
  v4[3] = &unk_279309D40;
  v4[4] = self;
  v4[5] = v3;
  dispatch_source_set_event_handler(v3, v4);
  dispatch_resume(v3);
  dispatch_retain(v3);
  self->_process_source = v3;
}

void __31__DYBaseDaemon_observeInferior__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 32) >= 1)
  {
    [*(v2 + 40) destroySharedMemoryTransport];
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v3 setObject:*(*(a1 + 32) + 48) forKeyedSubscript:@"GTErrorKeyProcessName"];
    [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithInt:", *(*(a1 + 32) + 32)), @"GTErrorKeyPID"}];
    [v3 setObject:objc_msgSend(MEMORY[0x277CBEAA8] forKeyedSubscript:{"now"), @"GTErrorKeyCrashDate"}];
    v4 = [MEMORY[0x277D0AFE0] messageWithKind:1282 attributes:v3];
    *(*(a1 + 32) + 32) = 0;
    [*(*(a1 + 32) + 40) send:v4 inReplyTo:0 error:0];
    v5 = dispatch_time(0, 10000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __31__DYBaseDaemon_observeInferior__block_invoke_2;
    block[3] = &unk_279309890;
    block[4] = *(a1 + 32);
    dispatch_after(v5, MEMORY[0x277D85CD0], block);
  }

  dispatch_source_cancel(*(a1 + 40));
  dispatch_release(*(a1 + 40));
  v6 = *(*(a1 + 32) + 16);
  if (v6)
  {
    dispatch_release(v6);
    *(*(a1 + 32) + 16) = 0;
  }
}

_BYTE *__31__DYBaseDaemon_observeInferior__block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[24] & 1) == 0)
  {
    return [result terminate:0];
  }

  return result;
}

- (void)run
{
  v3 = [(DYBaseSocketTransport *)self->_transport newSourceWithQueue:MEMORY[0x277D85CD0]];
  if (!v3)
  {
    v4 = *MEMORY[0x277D0B240];
    v5 = [objc_msgSend(-[DYBaseSocketTransport error](self->_transport "error")];
    DYLog();
    [(DYBaseDaemon *)self terminate:1, v5];
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __19__DYBaseDaemon_run__block_invoke;
  v8[3] = &unk_279309890;
  v8[4] = self;
  [v3 setCancellationHandler:v8];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __19__DYBaseDaemon_run__block_invoke_2;
  v7[3] = &unk_279309D68;
  v7[4] = self;
  [v3 setMessageHandler:v7];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __19__DYBaseDaemon_run__block_invoke_3;
  v6[3] = &unk_279309890;
  v6[4] = self;
  [v3 setRegistrationHandler:v6];
  [v3 resume];
  self->_source = v3;
}

_BYTE *__19__DYBaseDaemon_run__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 8) = 0;
  result = *(a1 + 32);
  if ((result[24] & 1) == 0)
  {

    return [result terminate:0];
  }

  return result;
}

void __19__DYBaseDaemon_run__block_invoke_2(uint64_t a1, id a2)
{
  v3 = a2;
  [*(a1 + 32) handleMessage:a2];
}

uint64_t __19__DYBaseDaemon_run__block_invoke_3(uint64_t a1)
{
  result = [objc_msgSend(*(*(a1 + 32) + 40) "connect")];
  if ((result & 1) == 0)
  {
    v3 = *MEMORY[0x277D0B240];
    DYLog();
    result = *(a1 + 32);
    if ((*(result + 24) & 1) == 0)
    {

      return [result terminate:1];
    }
  }

  return result;
}

- (void)handleMessage:(id)message
{
  if ([message kind] == 4353)
  {
    transport = self->_transport;

    [(DYBaseSocketTransport *)transport relayMessageOverSecondarySharedMemoryTransport:message error:0];
    return;
  }

  kind = [message kind];
  if (kind <= 1282)
  {
    if (kind == 264)
    {
      self->_capturingInferior = 1;
      goto LABEL_29;
    }

    if (kind != 1280)
    {
      if (kind == 1281)
      {
        inferiorPid = self->_inferiorPid;
        if (inferiorPid >= 1)
        {
          if (self->_ownsInferior)
          {
            v9 = self->_transport;

            [(DYBaseSocketTransport *)v9 sendNewMessage:1282 error:0];
          }

          else
          {

            kill(inferiorPid, 9);
          }
        }

        return;
      }

LABEL_29:
      v18 = self->_transport;

      [(DYBaseSocketTransport *)v18 relayMessageOverSharedMemoryTransport:message error:0];
      return;
    }

    plistPayload = [message plistPayload];
    if (!plistPayload)
    {
      [(DYBaseDaemon *)self terminate:1];
    }

    v19 = objc_opt_new();
    *target_task = 0;
    if (self->_inferiorPid)
    {
      v25 = [MEMORY[0x277D0AFC0] errorWithDomain:*MEMORY[0x277D0AFB8] code:516 userInfo:0];
      v26 = 0;
      *target_task = v25;
      if (!v25)
      {
LABEL_45:
        -[DYBaseSocketTransport send:inReplyTo:error:](self->_transport, "send:inReplyTo:error:", [MEMORY[0x277D0AFE0] messageWithKind:1280 attributes:v19 objectPayload:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", v26)}], message, 0);
LABEL_50:

        return;
      }
    }

    else
    {
      v36 = 0;
      v26 = [(DYBaseDaemon *)self launchInferior:plistPayload finalEnvironment:&v36 error:target_task];
      if (v36)
      {
        [v19 setObject:v36 forKey:@"final environment"];
      }

      v25 = *target_task;
      if (!*target_task)
      {
        goto LABEL_45;
      }
    }

    [v19 setObject:objc_msgSend(v25 forKey:{"domain"), @"error domain"}];
    [v19 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInteger:", objc_msgSend(*target_task, "code")), @"error code"}];
    [v19 setObject:objc_msgSend(*target_task forKey:{"localizedDescription"), @"error description"}];
    goto LABEL_45;
  }

  if (kind > 1285)
  {
    if (kind != 1286)
    {
      if (kind == 1293)
      {
        v10 = self->_inferiorPid;
        if (v10)
        {
          self->_capturingInferior = 0;
          target_task[0] = 0;
          v11 = task_for_pid(*MEMORY[0x277D85F48], v10, target_task);
          v12 = MEMORY[0x277D0B240];
          if (v11)
          {
            v13 = *MEMORY[0x277D0B240];
            v14 = self->_inferiorPid;
            v34 = mach_error_string(v11);
            DYLog();
            [(DYBaseDaemon *)self terminate:1, v14, v34];
          }

          v15 = task_resume(target_task[0]);
          if (v15)
          {
            v16 = *v12;
            v17 = self->_inferiorPid;
            v35 = mach_error_string(v15);
            DYLog();
            [(DYBaseDaemon *)self terminate:1, v17, v35];
          }
        }

        return;
      }

      goto LABEL_29;
    }

    v19 = objc_opt_new();
    *target_task = 0;
    if (self->_inferiorPid)
    {
      v20 = [MEMORY[0x277D0AFC0] errorWithDomain:*MEMORY[0x277D0AFB8] code:516 userInfo:0];
      v21 = 0;
      *target_task = v20;
      if (!v20)
      {
LABEL_38:
        v22 = objc_alloc(MEMORY[0x277D0AFE0]);
        if (v21)
        {
          v23 = [v22 initWithKind:1286 attributes:v19 plistPayload:v21];
        }

        else
        {
          v23 = [v22 initWithKind:1286 attributes:v19 payload:0];
        }

        [(DYBaseSocketTransport *)self->_transport send:v23 inReplyTo:message error:0];

        goto LABEL_50;
      }
    }

    else
    {
      plistPayload2 = [message plistPayload];
      if ([plistPayload2 objectForKey:*MEMORY[0x277D0B208]])
      {
        v28 = [objc_msgSend(plistPayload2 objectForKeyedSubscript:{*MEMORY[0x277D0B1E0]), "BOOLValue"}];
      }

      else
      {
        v28 = 1;
      }

      self->_shouldLoadCapture = v28;
      self->_shouldLoadDiagnostics = [objc_msgSend(plistPayload2 objectForKeyedSubscript:{*MEMORY[0x277D0B1F0]), "BOOLValue"}];
      v21 = [objc_msgSend(plistPayload2 objectForKey:{*MEMORY[0x277D0B1F8]), "mutableCopy"}];
      v32 = [v21 objectForKey:@"GPUTOOLS_LOAD_GTMTLCAPTURE"];
      v33 = [plistPayload2 objectForKey:*MEMORY[0x277D0B218]];
      [v32 intValue];
      DYSetGTMTLCaptureMode();
      [(DYBaseDaemon *)self createInferiorTransportAndSetEnvironment:v21 uniqueIdentifier:v33 error:target_task];
      DYModifyEnvironmentForDualCaptureSupport();
      v20 = *target_task;
      if (!*target_task)
      {
        goto LABEL_38;
      }
    }

    [v19 setObject:objc_msgSend(v20 forKey:{"domain"), @"error domain"}];
    [v19 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInteger:", objc_msgSend(*target_task, "code")), @"error code"}];
    [v19 setObject:objc_msgSend(*target_task forKey:{"localizedDescription"), @"error description"}];
    goto LABEL_38;
  }

  if (kind != 1283)
  {
    if (kind == 1284)
    {
      plistPayload3 = [message plistPayload];
      if (plistPayload3)
      {

        [(DYBaseDaemon *)self setApplications:plistPayload3];
      }

      else
      {
        getApplications = [(DYBaseDaemon *)self getApplications];
        v30 = [MEMORY[0x277D0AFE0] messageWithKind:1284 plistPayload:getApplications];
        v31 = self->_transport;

        [(DYBaseSocketTransport *)v31 send:v30 inReplyTo:message error:0];
      }

      return;
    }

    goto LABEL_29;
  }

  [(DYBaseDaemon *)self terminate:0];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = DYBaseDaemon;
  [(DYBaseDaemon *)&v3 dealloc];
}

- (void)invalidate
{
  [(DYTransportSource *)self->_source cancel];

  self->_source = 0;
  process_source = self->_process_source;
  if (process_source)
  {
    dispatch_source_cancel(process_source);
    dispatch_release(self->_process_source);
    self->_process_source = 0;
  }

  self->_invalidated = 1;
}

@end