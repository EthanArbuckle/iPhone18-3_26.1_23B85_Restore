@interface ENXPCServiceConnection
+ (id)connectionWithXPCConnection:(id)a3 serviceListener:(id)a4 dispatchQueue:(id)a5;
- (void)activate;
- (void)invalidate;
- (void)xpcConnectionEvent:(id)a3;
- (void)xpcConnectionRequest:(id)a3;
- (void)xpcFileSessionActivate:(id)a3 archive:(BOOL)a4;
- (void)xpcFileSessionInvalidate:(id)a3;
- (void)xpcFileSessionReadTEKBatch:(id)a3;
- (void)xpcSendMessage:(id)a3;
- (void)xpcSendReplyError:(id)a3 request:(id)a4;
@end

@implementation ENXPCServiceConnection

+ (id)connectionWithXPCConnection:(id)a3 serviceListener:(id)a4 dispatchQueue:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(ENXPCServiceConnection);
  dispatchQueue = v10->_dispatchQueue;
  v10->_dispatchQueue = v9;
  v12 = v9;

  serviceListener = v10->_serviceListener;
  v10->_serviceListener = v8;
  v14 = v8;

  v10->_pid = xpc_connection_get_pid(v7);
  xpcConnection = v10->_xpcConnection;
  v10->_xpcConnection = v7;

  return v10;
}

- (void)activate
{
  xpcConnection = self->_xpcConnection;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __34__ENXPCServiceConnection_activate__block_invoke;
  handler[3] = &unk_278FD10A8;
  handler[4] = self;
  xpc_connection_set_event_handler(xpcConnection, handler);
  xpc_connection_set_target_queue(self->_xpcConnection, self->_dispatchQueue);
  xpc_connection_activate(self->_xpcConnection);
}

- (void)invalidate
{
  [(ENFileSessionDaemon *)self->_fileSession invalidate];
  fileSession = self->_fileSession;
  self->_fileSession = 0;

  [(ENXPCServiceListener *)self->_serviceListener connectionInvalidated:self];
  xpcConnection = self->_xpcConnection;
  self->_xpcConnection = 0;
}

- (void)xpcConnectionEvent:(id)a3
{
  v6 = a3;
  if (MEMORY[0x24C214BB0]() == MEMORY[0x277D86468])
  {
    [(ENXPCServiceConnection *)self xpcConnectionRequest:v6];
    goto LABEL_12;
  }

  v4 = v6;
  if (v6 == MEMORY[0x277D863F8])
  {
    if (gLogCategory_ENXPCServiceConnection <= 20 && (gLogCategory_ENXPCServiceConnection != -1 || _LogCategory_Initialize()))
    {
      [ENXPCServiceConnection xpcConnectionEvent:?];
    }

    [(ENXPCServiceConnection *)self invalidate];
    goto LABEL_12;
  }

  if (gLogCategory__ENXPCServiceConnection <= 90)
  {
    if (gLogCategory__ENXPCServiceConnection != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
    {
      [ENXPCServiceConnection xpcConnectionEvent:];
LABEL_12:
      v4 = v6;
    }
  }
}

- (void)xpcConnectionRequest:(id)a3
{
  v11 = a3;
  int64 = xpc_dictionary_get_int64(v11, "smTyp");
  v5 = int64;
  if (int64 > 11)
  {
    if (int64 == 12)
    {
      [(ENXPCServiceConnection *)self xpcFileSessionInvalidate:v11];
      goto LABEL_16;
    }

    if (int64 == 13)
    {
      [(ENXPCServiceConnection *)self xpcFileSessionReadTEKBatch:v11];
      goto LABEL_16;
    }
  }

  else
  {
    if (int64 == 10)
    {
      v6 = self;
      v7 = v11;
      v8 = 1;
      goto LABEL_14;
    }

    if (int64 == 11)
    {
      v6 = self;
      v7 = v11;
      v8 = 0;
LABEL_14:
      [(ENXPCServiceConnection *)v6 xpcFileSessionActivate:v7 archive:v8];
      goto LABEL_16;
    }
  }

  if (gLogCategory__ENXPCServiceConnection <= 90 && (gLogCategory__ENXPCServiceConnection != -1 || _LogCategory_Initialize()))
  {
    [ENXPCServiceConnection xpcConnectionRequest:];
  }

  if (xpc_dictionary_expects_reply())
  {
    v10 = v5;
    v9 = ENErrorF();
    [(ENXPCServiceConnection *)self xpcSendReplyError:v9 request:v11, v10];
  }

LABEL_16:
}

- (void)xpcSendMessage:(id)a3
{
  message = a3;
  v4 = self->_xpcConnection;
  v5 = v4;
  if (v4)
  {
    xpc_connection_send_message(v4, message);
  }

  else
  {
    [ENXPCServiceConnection xpcSendMessage:];
  }
}

- (void)xpcSendReplyError:(id)a3 request:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = self->_xpcConnection;
  if (v7)
  {
    reply = xpc_dictionary_create_reply(v6);
    if (reply)
    {
      CUXPCEncodeNSError();
      xpc_connection_send_message(v7, reply);
    }

    else
    {
      [ENXPCServiceConnection xpcSendReplyError:request:];
    }
  }

  else
  {
    [ENXPCServiceConnection xpcSendReplyError:request:];
  }
}

- (void)xpcFileSessionActivate:(id)a3 archive:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v66 = 0;
  v67 = &v66;
  v68 = 0x3032000000;
  v69 = __Block_byref_object_copy__0;
  v70 = __Block_byref_object_dispose__0;
  v71 = 0;
  v63[0] = MEMORY[0x277D85DD0];
  v63[1] = 3221225472;
  v63[2] = __57__ENXPCServiceConnection_xpcFileSessionActivate_archive___block_invoke;
  v63[3] = &unk_278FD10D0;
  v65 = &v66;
  v63[4] = self;
  v7 = v6;
  v64 = v7;
  v8 = MEMORY[0x24C214430](v63);
  p_fileSession = &self->_fileSession;
  v49 = v8;
  if (self->_fileSession)
  {
    v42 = ENErrorF();
    v43 = v67[5];
    v67[5] = v42;

    goto LABEL_38;
  }

  v59 = 0;
  v60 = &v59;
  v61 = 0x2020000000;
  v62 = xpc_dictionary_dup_fd(v7, "fd");
  if ((v60[3] & 0x80000000) != 0)
  {
    v44 = ENErrorF();
    v10 = v67[5];
    v67[5] = v44;
    goto LABEL_37;
  }

  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __57__ENXPCServiceConnection_xpcFileSessionActivate_archive___block_invoke_2;
  v58[3] = &unk_278FD10F8;
  v58[4] = &v59;
  v10 = MEMORY[0x24C214430](v58);
  v11 = v67 + 5;
  obj = v67[5];
  v57 = 0;
  v72 = 0;
  v48 = v10;
  v12 = CUXPCDecodeUInt64RangedEx();
  if (v12 == 6)
  {
    v13 = v72;
  }

  else
  {
    v13 = 0;
  }

  objc_storeStrong(v11, obj);
  if (v12 != 5)
  {
    v14 = v67 + 5;
    v55 = v67[5];
    v72 = 0;
    v15 = CUXPCDecodeUInt64RangedEx();
    v16 = v15 == 6 ? v72 : 0;
    objc_storeStrong(v14, v55);
    if (v15 != 5)
    {
      v17 = v67;
      v54 = v67[5];
      v18 = CUXPCDecodeNSData();
      objc_storeStrong(v17 + 5, v54);
      if (v18)
      {
        v47 = self;
        v19 = objc_alloc_init(ENFileSessionDaemon);
        [(ENFileSessionDaemon *)v19 setBatchSize:v13];
        [(ENFileSessionDaemon *)v19 setFlags:v16];
        v20 = *(v60 + 6);
        if (v4)
        {
          v21 = v67;
          v53 = v67[5];
          v22 = [(ENFileSessionDaemon *)v19 activateWithArchiveFD:v20 error:&v53];
          objc_storeStrong(v21 + 5, v53);
          if (!v22)
          {
            goto LABEL_35;
          }
        }

        else
        {
          v23 = v67;
          v52 = v67[5];
          v24 = [(ENFileSessionDaemon *)v19 activateWithFileFD:v20 signatureData:v57 error:&v52];
          objc_storeStrong(v23 + 5, v52);
          if (!v24)
          {
LABEL_35:

            v10 = v48;
            goto LABEL_36;
          }
        }

        v25 = [(ENFileSessionDaemon *)v19 file];
        v26 = [v25 metadata];
        v27 = v26;
        v28 = MEMORY[0x277CBEC08];
        if (v26)
        {
          v28 = v26;
        }

        v29 = v28;

        v30 = [(ENFileSessionDaemon *)v19 file];
        v31 = [v30 sha256Data];
        v32 = v31;
        if (v31)
        {
          v33 = v31;
        }

        else
        {
          v33 = [MEMORY[0x277CBEA98] data];
        }

        v34 = v33;

        v51 = 0;
        v35 = [(ENFileSessionDaemon *)v19 readSignaturesAndReturnError:&v51];
        v50 = v51;
        if (!v35 && gLogCategory__ENXPCServiceConnection <= 90 && (gLogCategory__ENXPCServiceConnection != -1 || _LogCategory_Initialize()))
        {
          CUPrintNSError();
          v46 = v45 = v34;
          LogPrintF_safe();
        }

        objc_storeStrong(p_fileSession, v19);
        *(v60 + 6) = -1;
        reply = xpc_dictionary_create_reply(v7);
        if (reply)
        {
          xpc_dictionary_set_cf_object();
          if (v34)
          {
            v37 = v34;
            v38 = v34;
            v39 = reply;
            v40 = [v38 bytes];
            v41 = [v38 length];
            if (!v40)
            {
              v40 = "";
            }

            xpc_dictionary_set_data(v39, "fileHash", v40, v41);
          }

          if (v35)
          {
            xpc_dictionary_set_value(reply, "sigA", v35);
          }

          [(ENXPCServiceConnection *)v47 xpcSendMessage:reply, v45, v46];
        }

        else if (gLogCategory__ENXPCServiceConnection <= 90 && (gLogCategory__ENXPCServiceConnection != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe();
        }

        goto LABEL_35;
      }
    }
  }

LABEL_36:

  v8 = v49;
  v10[2](v10);
LABEL_37:

  _Block_object_dispose(&v59, 8);
LABEL_38:
  v8[2](v8);

  _Block_object_dispose(&v66, 8);
}

uint64_t __57__ENXPCServiceConnection_xpcFileSessionActivate_archive___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (gLogCategory__ENXPCServiceConnection <= 90)
  {
    if (gLogCategory__ENXPCServiceConnection == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v4)
      {
        goto LABEL_7;
      }

      v8 = *(*(v2 + 8) + 40);
    }

    v9 = CUPrintNSError();
    LogPrintF_safe();

    v2 = a1[6];
  }

LABEL_7:
  v5 = *(*(v2 + 8) + 40);
  v6 = a1[4];
  v7 = a1[5];

  return [v6 xpcSendReplyError:v5 request:v7];
}

uint64_t __57__ENXPCServiceConnection_xpcFileSessionActivate_archive___block_invoke_2(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 24);
  if ((result & 0x80000000) == 0)
  {
    return close(result);
  }

  return result;
}

- (void)xpcFileSessionInvalidate:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__0;
  v19 = __Block_byref_object_dispose__0;
  v20 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __51__ENXPCServiceConnection_xpcFileSessionInvalidate___block_invoke;
  v12[3] = &unk_278FD10D0;
  v14 = &v15;
  v12[4] = self;
  v5 = v4;
  v13 = v5;
  v6 = MEMORY[0x24C214430](v12);
  v7 = self->_fileSession;
  v8 = v7;
  if (v7)
  {
    [(ENFileSessionDaemon *)v7 invalidate];
    fileSession = self->_fileSession;
    self->_fileSession = 0;

    reply = xpc_dictionary_create_reply(v5);
    if (reply)
    {
      [(ENXPCServiceConnection *)self xpcSendMessage:reply];
    }

    else if (gLogCategory__ENXPCServiceConnection <= 90 && (gLogCategory__ENXPCServiceConnection != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }
  }

  else
  {
    v11 = ENErrorF();
    reply = v16[5];
    v16[5] = v11;
  }

  v6[2](v6);
  _Block_object_dispose(&v15, 8);
}

uint64_t __51__ENXPCServiceConnection_xpcFileSessionInvalidate___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (gLogCategory__ENXPCServiceConnection <= 90)
  {
    if (gLogCategory__ENXPCServiceConnection == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v4)
      {
        goto LABEL_7;
      }

      v8 = *(*(v2 + 8) + 40);
    }

    v9 = CUPrintNSError();
    LogPrintF_safe();

    v2 = a1[6];
  }

LABEL_7:
  v5 = *(*(v2 + 8) + 40);
  v6 = a1[4];
  v7 = a1[5];

  return [v6 xpcSendReplyError:v5 request:v7];
}

- (void)xpcFileSessionReadTEKBatch:(id)a3
{
  v4 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__0;
  v28 = __Block_byref_object_dispose__0;
  v29 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __53__ENXPCServiceConnection_xpcFileSessionReadTEKBatch___block_invoke;
  v21[3] = &unk_278FD10D0;
  v23 = &v24;
  v21[4] = self;
  v5 = v4;
  v22 = v5;
  v6 = MEMORY[0x24C214430](v21);
  v7 = self->_fileSession;
  v8 = v7;
  if (v7)
  {
    v9 = (v25 + 5);
    obj = v25[5];
    v10 = [(ENFileSessionDaemon *)v7 readTEKBatchAndReturnError:&obj];
    objc_storeStrong(v9, obj);
    if (v10)
    {
      reply = xpc_dictionary_create_reply(v5);
      v12 = reply;
      if (reply)
      {
        xpc_dictionary_set_value(reply, "tekA", v10);
        xpc_dictionary_set_uint64(v12, "invKC", [(ENFileSessionDaemon *)v8 invalidKeyCount]);
        [(ENXPCServiceConnection *)self xpcSendMessage:v12];
        dispatchQueue = self->_dispatchQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __53__ENXPCServiceConnection_xpcFileSessionReadTEKBatch___block_invoke_2;
        block[3] = &unk_278FD0F90;
        block[4] = v8;
        dispatch_async(dispatchQueue, block);
      }

      else if (gLogCategory__ENXPCServiceConnection <= 90 && (gLogCategory__ENXPCServiceConnection != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe();
      }
    }

    else
    {
      v15 = v25;
      v16 = v25[5];
      if (v16)
      {
        v17 = v16;
        v12 = v15[5];
        v15[5] = v17;
      }

      else
      {
        v18 = ENErrorF();
        v12 = v25[5];
        v25[5] = v18;
      }
    }
  }

  else
  {
    v14 = ENErrorF();
    v10 = v25[5];
    v25[5] = v14;
  }

  v6[2](v6);
  _Block_object_dispose(&v24, 8);
}

uint64_t __53__ENXPCServiceConnection_xpcFileSessionReadTEKBatch___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (gLogCategory__ENXPCServiceConnection <= 90)
  {
    if (gLogCategory__ENXPCServiceConnection == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v4)
      {
        goto LABEL_7;
      }

      v8 = *(*(v2 + 8) + 40);
    }

    v9 = CUPrintNSError();
    LogPrintF_safe();

    v2 = a1[6];
  }

LABEL_7:
  v5 = *(*(v2 + 8) + 40);
  v6 = a1[4];
  v7 = a1[5];

  return [v6 xpcSendReplyError:v5 request:v7];
}

- (void)xpcConnectionEvent:.cold.1()
{
  v0 = CUPrintXPC();
  LogPrintF_safe();
}

- (void)xpcConnectionEvent:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = CUPrintPID();
  LogPrintF_safe();
}

- (void)xpcSendMessage:.cold.1()
{
  if (gLogCategory__ENXPCServiceConnection <= 90 && (gLogCategory__ENXPCServiceConnection != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_0_2();
  }
}

- (uint64_t)xpcSendReplyError:request:.cold.1()
{
  if (gLogCategory__ENXPCServiceConnection <= 90)
  {
    if (gLogCategory__ENXPCServiceConnection != -1)
    {
      return LogPrintF_safe();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF_safe();
    }
  }

  return result;
}

- (void)xpcSendReplyError:request:.cold.2()
{
  if (gLogCategory__ENXPCServiceConnection <= 90 && (gLogCategory__ENXPCServiceConnection != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_0_2();
  }
}

@end