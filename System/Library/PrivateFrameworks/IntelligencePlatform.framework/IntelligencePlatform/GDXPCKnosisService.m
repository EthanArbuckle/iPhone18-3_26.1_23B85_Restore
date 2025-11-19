@interface GDXPCKnosisService
- (BOOL)iteratingExecuteKGQ:(id)a3 error:(id *)a4 block:(id)a5;
- (GDXPCKnosisService)init;
- (id)executeIntent:(id)a3 error:(id *)a4;
- (id)executeKGQ:(id)a3 error:(id *)a4;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)a3;
- (void)dealloc;
- (void)locked_establishConnection;
@end

@implementation GDXPCKnosisService

- (id)executeIntent:(id)a3 error:(id *)a4
{
  v6 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_1ABF1B8A8;
  v24 = sub_1ABF1B8B8;
  v25 = 0;
  v7 = GDXPCLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1ABA78000, v7, OS_LOG_TYPE_DEFAULT, "GDXPCKnosisService: executeIntent called.", buf, 2u);
  }

  *buf = 0;
  v15 = buf;
  v16 = 0x3032000000;
  v17 = sub_1ABF1B8A8;
  v18 = sub_1ABF1B8B8;
  v19 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1ABF1B8C0;
  v13[3] = &unk_1E79628C8;
  v13[4] = buf;
  v8 = [(GDXPCKnosisService *)self synchronousRemoteObjectProxyWithErrorHandler:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1ABF1B98C;
  v12[3] = &unk_1E7962768;
  v12[4] = &v20;
  v12[5] = buf;
  [v8 executeIntent:v6 withCompletion:v12];

  v9 = v21[5];
  if (a4 && !v9)
  {
    *a4 = *(v15 + 5);
    v9 = v21[5];
  }

  v10 = v9;
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(&v20, 8);

  return v10;
}

- (BOOL)iteratingExecuteKGQ:(id)a3 error:(id *)a4 block:(id)a5
{
  v60 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v18 = a5;
  v8 = GDXPCLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1ABA78000, v8, OS_LOG_TYPE_DEFAULT, "GDXPCKnosisService: iteratingExecuteKGQ called.", buf, 2u);
  }

  *buf = 0;
  v53 = buf;
  v54 = 0x3032000000;
  v55 = sub_1ABF1B8A8;
  v56 = sub_1ABF1B8B8;
  v57 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 1;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = sub_1ABF1B8A8;
  v46 = sub_1ABF1B8B8;
  v47 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_1ABF1B8A8;
  v40 = sub_1ABF1B8B8;
  v41 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = sub_1ABF1BE8C;
  v27[3] = &unk_1E7962718;
  v27[4] = buf;
  v27[5] = &v32;
  v27[6] = &v28;
  v9 = [(GDXPCKnosisService *)self synchronousRemoteObjectProxyWithErrorHandler:v27];
  if (*(v49 + 24) == 1)
  {
    do
    {
      if (v33[3])
      {
        break;
      }

      if (*(v53 + 5))
      {
        break;
      }

      v10 = MEMORY[0x1E696AD98];
      v11 = [v43[5] longValue];
      v12 = [v10 numberWithLong:{objc_msgSend(v37[5], "longValue") + v11}];
      [v7 setOffset:v12];

      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = sub_1ABF1BF80;
      v19[3] = &unk_1E7962740;
      v21 = buf;
      v22 = &v32;
      v23 = &v28;
      v24 = &v48;
      v25 = &v42;
      v26 = &v36;
      v20 = v18;
      [v9 executeKGQ:v7 withCompletion:v19];
    }

    while ((v49[3] & 1) != 0);
  }

  v13 = *(v29 + 24);
  if (v13 == 1)
  {
    if (a4)
    {
      *a4 = *(v53 + 5);
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v16 = *(v53 + 5);
      *v58 = 138412290;
      v59 = v16;
      _os_log_error_impl(&dword_1ABA78000, v8, OS_LOG_TYPE_ERROR, "GDXPCKnosisService: error during iteratingExecuteKGQ call: %@", v58, 0xCu);
    }
  }

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);

  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(buf, 8);

  v14 = *MEMORY[0x1E69E9840];
  return v13 ^ 1;
}

- (id)executeKGQ:(id)a3 error:(id *)a4
{
  v64 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = GDXPCLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1ABA78000, v7, OS_LOG_TYPE_DEFAULT, "GDXPCKnosisService: executeKgqQuery called.", buf, 2u);
  }

  if (a4)
  {
    *a4 = 0;
  }

  *buf = 0;
  v57 = buf;
  v58 = 0x3032000000;
  v59 = sub_1ABF1B8A8;
  v60 = sub_1ABF1B8B8;
  v61 = &stru_1F20A2CD8;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = sub_1ABF1B8A8;
  v54 = sub_1ABF1B8B8;
  v55 = &stru_1F20A2CD8;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = sub_1ABF1B8A8;
  v48 = sub_1ABF1B8B8;
  v49 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2020000000;
  v8 = [v6 limit];
  v9 = [v8 integerValue];

  v39[3] = v9;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_1ABF1B8A8;
  v37 = sub_1ABF1B8B8;
  v38 = 0;
  v10 = [MEMORY[0x1E695DF70] array];
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = sub_1ABF1C4F4;
  v25 = &unk_1E79626F0;
  v27 = &v50;
  v28 = buf;
  v29 = &v40;
  v30 = &v33;
  v31 = &v44;
  v11 = v10;
  v26 = v11;
  v32 = v39;
  if ([(GDXPCKnosisService *)self iteratingExecuteKGQ:v6 error:a4 block:&v22])
  {
    v12 = [GDKnosisResult alloc];
    v13 = *(v57 + 5);
    v14 = v51[5];
    v15 = v41[3];
    v16 = v45[5];
    v7 = [v6 limit];
    LOBYTE(v21) = 0;
    v17 = [(GDKnosisResult *)v12 initWithQuery:v13 kgq:v14 status:v15 answers:v11 errorMessage:v16 limit:v7 offset:&unk_1F20CF3B0 hasMoreAnswers:v21 debug:v34[5], v22, v23, v24, v25];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      if (a4)
      {
        v20 = *a4;
      }

      else
      {
        v20 = 0;
      }

      *v62 = 138412290;
      v63 = v20;
      _os_log_error_impl(&dword_1ABA78000, v7, OS_LOG_TYPE_ERROR, "GDXPCKnosisService: error during ExecuteKGQ call: %@", v62, 0xCu);
    }

    v17 = 0;
  }

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(v39, 8);
  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v44, 8);

  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(buf, 8);

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  [(GDXPCKnosisService *)v5 locked_establishConnection];
  v6 = [(NSXPCConnection *)v5->_connection synchronousRemoteObjectProxyWithErrorHandler:v4];
  objc_sync_exit(v5);

  return v6;
}

- (void)locked_establishConnection
{
  if (!self->_connection)
  {
    v3 = GDXPCLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1ABA78000, v3, OS_LOG_TYPE_DEFAULT, "GDXPCKnosisService: establishing connection.", buf, 2u);
    }

    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.intelligenceplatform.Knosis" options:0];
    connection = self->_connection;
    self->_connection = v4;

    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:self->_serverInterface];
    [(NSXPCConnection *)self->_connection setInterruptionHandler:&unk_1F20A1CF8];
    objc_initWeak(buf, self);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1ABF1C8F0;
    v6[3] = &unk_1E7962850;
    objc_copyWeak(&v7, buf);
    [(NSXPCConnection *)self->_connection setInvalidationHandler:v6];
    [(NSXPCConnection *)self->_connection resume];
    objc_destroyWeak(&v7);
    objc_destroyWeak(buf);
  }
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = GDXPCKnosisService;
  [(GDXPCKnosisService *)&v3 dealloc];
}

- (GDXPCKnosisService)init
{
  v6.receiver = self;
  v6.super_class = GDXPCKnosisService;
  v2 = [(GDXPCKnosisService *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F20E6510];
    serverInterface = v2->_serverInterface;
    v2->_serverInterface = v3;
  }

  return v2;
}

@end