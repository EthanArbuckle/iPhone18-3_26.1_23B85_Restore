@interface CUFileServer
- (CUFileServer)init;
- (void)_activateWithCompletion:(id)a3;
- (void)_handleKeepAlive:(id)a3 responseHandler:(id)a4;
- (void)_handleQuery:(id)a3 responseHandler:(id)a4;
- (void)_handleQuery:(id)a3 session:(id)a4;
- (void)_handleRequestFiles:(id)a3 responseHandler:(id)a4;
- (void)_handleSessionStart:(id)a3 responseHandler:(id)a4;
- (void)_handleSessionStop:(id)a3 responseHandler:(id)a4;
- (void)_invalidate;
- (void)_invalidated;
- (void)_sessionInvalidate:(id)a3;
- (void)_sessionTimerFired;
- (void)_update;
- (void)activateWithCompletion:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)setLabel:(id)a3;
@end

@implementation CUFileServer

- (void)_handleRequestFiles:(id)a3 responseHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__2972;
  v34 = __Block_byref_object_dispose__2973;
  v35 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__CUFileServer__handleRequestFiles_responseHandler___block_invoke;
  aBlock[3] = &unk_1E73A3FA0;
  v29 = &v30;
  aBlock[4] = self;
  v8 = v7;
  v28 = v8;
  v9 = _Block_copy(aBlock);
  v15 = NSDictionaryGetNSNumber(v6, @"sid", 0);
  if (!v15)
  {
    v23 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960591, "No session ID", v10, v11, v12, v13, v14, v26);
    v21 = v31[5];
    v31[5] = v23;
    goto LABEL_8;
  }

  v21 = [(NSMutableDictionary *)self->_sessionMap objectForKeyedSubscript:v15];
  if (!v21)
  {
    v24 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960569, "Session not found: ID %@", v16, v17, v18, v19, v20, v15);
    v25 = v31[5];
    v31[5] = v24;

    v21 = 0;
    goto LABEL_8;
  }

  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(ucat, 0x1Eu))
      {
        goto LABEL_7;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[CUFileServer _handleRequestFiles:responseHandler:]", 0x1Eu, "RequestFiles: ID %@", v17, v18, v19, v20, v15);
  }

LABEL_7:
  [v21 setLastRequestTicks:mach_absolute_time()];
  (*(v8 + 2))(v8, MEMORY[0x1E695E0F8], 0, 0);
LABEL_8:

  v9[2](v9);
  _Block_object_dispose(&v30, 8);
}

uint64_t __52__CUFileServer__handleRequestFiles_responseHandler___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(*(*(result + 48) + 8) + 40);
  if (!v8)
  {
    return result;
  }

  v9 = result;
  v10 = *(*(result + 32) + 1088);
  if (*v10 <= 90)
  {
    if (*v10 == -1)
    {
      if (!_LogCategory_Initialize(v10, 0x5Au))
      {
        goto LABEL_7;
      }

      v10 = *(v9[4] + 1088);
      v8 = *(*(v9[6] + 8) + 40);
    }

    LogPrintF(v10, "[CUFileServer _handleRequestFiles:responseHandler:]_block_invoke", 0x5Au, "### Keep alive failed: %{error}", a5, a6, a7, a8, v8);
  }

LABEL_7:
  v11 = *(v9[5] + 16);

  return v11();
}

- (void)_handleQuery:(id)a3 session:(id)a4
{
  v6 = a3;
  v83 = a4;
  v92 = 0;
  v93 = &v92;
  v94 = 0x3032000000;
  v95 = __Block_byref_object_copy__2972;
  v96 = __Block_byref_object_dispose__2973;
  v97 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __37__CUFileServer__handleQuery_session___block_invoke;
  aBlock[3] = &unk_1E73A32B8;
  v91 = &v92;
  aBlock[4] = self;
  v7 = v6;
  v90 = v7;
  v81 = _Block_copy(aBlock);
  v82 = v7;
  v8 = [v7 path];
  v80 = v8;
  if (v8)
  {
    v9 = [(NSURL *)self->_rootDirectoryURL URLByAppendingPathComponent:v8 isDirectory:0];
    *__error() = 0;
    v10 = realpath_DARWIN_EXTSN([v9 fileSystemRepresentation], v83 + 8);
    v16 = v10;
    if (!v10)
    {
      v53 = __error();
      v49 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960592, "realpath failed: %d", v54, v55, v56, v57, v58, *v53);
      goto LABEL_46;
    }

    v17 = self->_rootPath[0];
    if (self->_rootPath[0])
    {
      v18 = &self->_rootPath[1];
      v19 = v10;
      do
      {
        if (*v19 != v17)
        {
          v49 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960592, "Path outside root", v11, v12, v13, v14, v15, v78);
          goto LABEL_46;
        }

        ++v19;
        v20 = *v18++;
        v17 = v20;
      }

      while (v20);
    }

    v21 = [v83 dirStream];
    if (v21)
    {
      closedir(v21);
    }

    v22 = opendir(v16);
    if (!v22)
    {
      v59 = __error();
      v49 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960592, "opendir failed: %d", v60, v61, v62, v63, v64, *v59);
      goto LABEL_46;
    }

    [v83 setDirStream:v22];
  }

  v23 = [v83 dirStream];
  if (!v23)
  {
    v23 = opendir(self->_rootPath);
    if (!v23)
    {
      v71 = __error();
      v77 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960592, "opendir failed: %d", v72, v73, v74, v75, v76, *v71);
      v9 = v93[5];
      v93[5] = v77;
      goto LABEL_49;
    }

    [v83 setDirStream:v23];
    strlcpy(v83 + 8, self->_rootPath, 0x400uLL);
  }

  v9 = 0;
  v24 = 500;
  while (1)
  {
    *__error() = 0;
    v25 = readdir(v23);
    if (!v25)
    {
      break;
    }

    d_name = v25->d_name;
    if (v25->d_name[0] != 46 || v25->d_name[1] && (v25->d_name[1] != 46 || v25->d_name[2]))
    {
      v88 = 0;
      asprintf(&v88, "%s/%s", v83 + 8, v25->d_name);
      if (!v88)
      {
        v49 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960596, "entry path failed", v27, v28, v29, v30, v31, v79);
        goto LABEL_46;
      }

      memset(&v87, 0, sizeof(v87));
      if (lstat(v88, &v87))
      {
        if (!*__error())
        {
          free(v88);
          v32 = 4294960596;
LABEL_45:
          v49 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960596, "stat failed: %d", v33, v34, v35, v36, v37, v32);
          goto LABEL_46;
        }

        v32 = *__error();
        free(v88);
        if (v32)
        {
          goto LABEL_45;
        }
      }

      else
      {
        free(v88);
      }

      v38 = v87.st_mode & 0xF000;
      switch(v38)
      {
        case 40960:
          v39 = 3;
          goto LABEL_32;
        case 32768:
          v39 = 1;
          goto LABEL_32;
        case 16384:
          v39 = 2;
LABEL_32:
          v40 = objc_alloc_init(CUFileItem);
          v41 = [MEMORY[0x1E696AEC0] stringWithUTF8String:d_name];
          [(CUFileItem *)v40 setName:v41];

          [(CUFileItem *)v40 setType:v39];
          if ((v87.st_mode & 0xF000) == 0x8000)
          {
            [(CUFileItem *)v40 setSize:v87.st_size];
          }

          if (!v9)
          {
            v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          [v9 addObject:v40];

          break;
      }
    }

    if (!--v24)
    {
      v42 = 0;
      goto LABEL_41;
    }
  }

  if (!*__error())
  {
    v42 = 1;
LABEL_41:
    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 != -1)
      {
        goto LABEL_43;
      }

      if (_LogCategory_Initialize(self->_ucat, 0x1Eu))
      {
        ucat = self->_ucat;
LABEL_43:
        v44 = [v9 count];
        LogPrintF(ucat, "[CUFileServer _handleQuery:session:]", 0x1Eu, "Query response: %d item(s)", v45, v46, v47, v48, v44);
      }
    }

    v51 = objc_alloc_init(CUFileResponse);
    [(CUFileResponse *)v51 setFileItems:v9];
    [(CUFileResponse *)v51 setFlags:v42];
    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__CUFileServer__handleQuery_session___block_invoke_3;
    block[3] = &unk_1E73A49F0;
    v85 = v82;
    v86 = v51;
    dispatch_async(dispatchQueue, block);

    goto LABEL_49;
  }

  v65 = __error();
  v49 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960596, "readdir failed: %d", v66, v67, v68, v69, v70, *v65);
LABEL_46:
  v50 = v93[5];
  v93[5] = v49;

LABEL_49:
  v81[2](v81);

  _Block_object_dispose(&v92, 8);
}

void __37__CUFileServer__handleQuery_session___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(*(*(a1 + 48) + 8) + 40);
  if (v8)
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 1088);
    if (*v11 <= 90)
    {
      if (*v11 == -1)
      {
        v12 = _LogCategory_Initialize(v11, 0x5Au);
        v10 = *(a1 + 32);
        if (!v12)
        {
          goto LABEL_6;
        }

        v11 = *(v10 + 1088);
        v8 = *(*(*(a1 + 48) + 8) + 40);
      }

      LogPrintF(v11, "[CUFileServer _handleQuery:session:]_block_invoke", 0x5Au, "### Query failed: %{error}", a5, a6, a7, a8, v8);
      v10 = *(a1 + 32);
    }

LABEL_6:
    v13 = *(v10 + 1096);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__CUFileServer__handleQuery_session___block_invoke_2;
    block[3] = &unk_1E73A3290;
    v14 = *(a1 + 40);
    v15 = *(a1 + 48);
    v17 = v14;
    v18 = v15;
    dispatch_async(v13, block);
  }
}

void __37__CUFileServer__handleQuery_session___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) completionHandler];
  (*(v2 + 2))(v2, *(a1 + 40), 0);
}

void __37__CUFileServer__handleQuery_session___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) completionHandler];
  (*(v2 + 2))(v2, 0, *(*(*(a1 + 40) + 8) + 40));
}

- (void)_handleQuery:(id)a3 responseHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v67 = 0;
  v68 = &v67;
  v69 = 0x3032000000;
  v70 = __Block_byref_object_copy__2972;
  v71 = __Block_byref_object_dispose__2973;
  v72 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__CUFileServer__handleQuery_responseHandler___block_invoke;
  aBlock[3] = &unk_1E73A3FA0;
  v66 = &v67;
  aBlock[4] = self;
  v8 = v7;
  v65 = v8;
  v9 = _Block_copy(aBlock);
  v15 = NSDictionaryGetNSNumber(v6, @"sid", 0);
  if (!v15)
  {
    v52 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960591, "No session ID", v10, v11, v12, v13, v14, v55);
    v21 = v68[5];
    v68[5] = v52;
    goto LABEL_14;
  }

  v21 = [(NSMutableDictionary *)self->_sessionMap objectForKeyedSubscript:v15];
  if (!v21)
  {
    v53 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960569, "Session not found: ID %@", v16, v17, v18, v19, v20, v15);
    v28 = v68[5];
    v68[5] = v53;
    goto LABEL_13;
  }

  TypeID = CFDictionaryGetTypeID();
  v28 = CFDictionaryGetTypedValue(v6, @"fQry", TypeID, 0);
  if (v28)
  {
    v29 = [CUFileQuery alloc];
    v30 = v68;
    obj = v68[5];
    v31 = [(CUFileQuery *)v29 initWithDictionary:v28 error:&obj];
    objc_storeStrong(v30 + 5, obj);
    if (v31)
    {
      [v21 setLastRequestTicks:mach_absolute_time()];
      v61[0] = MEMORY[0x1E69E9820];
      v61[1] = 3221225472;
      v61[2] = __45__CUFileServer__handleQuery_responseHandler___block_invoke_2;
      v61[3] = &unk_1E73A3268;
      v62 = v8;
      [(CUFileQuery *)v31 setCompletionHandler:v61];
      ucat = self->_ucat;
      if (ucat->var0 <= 30)
      {
        if (ucat->var0 == -1)
        {
          if (!_LogCategory_Initialize(ucat, 0x1Eu))
          {
            goto LABEL_9;
          }

          ucat = self->_ucat;
        }

        LogPrintF(ucat, "[CUFileServer _handleQuery:responseHandler:]", 0x1Eu, "Query start: ID %@, %@", v32, v33, v34, v35, v15);
      }

LABEL_9:
      v57 = v28;
      v37 = v15;
      v38 = v8;
      v46 = self->_ioQueue;
      if (!v46)
      {
        v56 = v9;
        v47 = NSPrintF("%s-IO", v39, v40, v41, v42, v43, v44, v45, self->_ucat->var4);
        v48 = [v47 UTF8String];

        v49 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        v46 = dispatch_queue_create(v48, v49);

        objc_storeStrong(&self->_ioQueue, v46);
        v9 = v56;
      }

      ioQueue = self->_ioQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __45__CUFileServer__handleQuery_responseHandler___block_invoke_3;
      block[3] = &unk_1E73A37D8;
      block[4] = self;
      v51 = v31;
      v59 = v51;
      v60 = v21;
      dispatch_async(ioQueue, block);

      v8 = v38;
      v15 = v37;
      v28 = v57;
      goto LABEL_12;
    }

    v51 = 0;
  }

  else
  {
    v54 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960591, "No query", v23, v24, v25, v26, v27, v55);
    v51 = v68[5];
    v68[5] = v54;
  }

LABEL_12:

LABEL_13:
LABEL_14:

  v9[2](v9);
  _Block_object_dispose(&v67, 8);
}

uint64_t __45__CUFileServer__handleQuery_responseHandler___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(*(*(result + 48) + 8) + 40);
  if (!v8)
  {
    return result;
  }

  v9 = result;
  v10 = *(*(result + 32) + 1088);
  if (*v10 <= 90)
  {
    if (*v10 == -1)
    {
      if (!_LogCategory_Initialize(v10, 0x5Au))
      {
        goto LABEL_7;
      }

      v10 = *(v9[4] + 1088);
      v8 = *(*(v9[6] + 8) + 40);
    }

    LogPrintF(v10, "[CUFileServer _handleQuery:responseHandler:]_block_invoke", 0x5Au, "### Query failed: %{error}", a5, a6, a7, a8, v8);
  }

LABEL_7:
  v11 = *(v9[5] + 16);

  return v11();
}

void __45__CUFileServer__handleQuery_responseHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v6 encodeWithDictionary:v5];
    (*(*(a1 + 32) + 16))();
  }
}

- (void)_handleKeepAlive:(id)a3 responseHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__2972;
  v39 = __Block_byref_object_dispose__2973;
  v40 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__CUFileServer__handleKeepAlive_responseHandler___block_invoke;
  aBlock[3] = &unk_1E73A3FA0;
  v34 = &v35;
  aBlock[4] = self;
  v8 = v7;
  v33 = v8;
  v9 = _Block_copy(aBlock);
  v15 = NSDictionaryGetNSNumber(v6, @"sid", 0);
  if (!v15)
  {
    v28 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960591, "No session ID", v10, v11, v12, v13, v14, v31);
    v21 = v36[5];
    v36[5] = v28;
    goto LABEL_8;
  }

  v21 = [(NSMutableDictionary *)self->_sessionMap objectForKeyedSubscript:v15];
  if (!v21)
  {
    v29 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960569, "Session not found: ID %@", v16, v17, v18, v19, v20, v15);
    v30 = v36[5];
    v36[5] = v29;

    v21 = 0;
    goto LABEL_8;
  }

  v22 = mach_absolute_time();
  UpTicksToSeconds(v22 - [v21 lastRequestTicks]);
  ucat = self->_ucat;
  if (ucat->var0 <= 20)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(ucat, 0x14u))
      {
        goto LABEL_7;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[CUFileServer _handleKeepAlive:responseHandler:]", 0x14u, "Keep alive: ID %@, %llu seconds", v23, v24, v25, v26, v15);
  }

LABEL_7:
  [v21 setLastRequestTicks:mach_absolute_time()];
  (*(v8 + 2))(v8, MEMORY[0x1E695E0F8], 0, 0);
LABEL_8:

  v9[2](v9);
  _Block_object_dispose(&v35, 8);
}

uint64_t __49__CUFileServer__handleKeepAlive_responseHandler___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(*(*(result + 48) + 8) + 40);
  if (!v8)
  {
    return result;
  }

  v9 = result;
  v10 = *(*(result + 32) + 1088);
  if (*v10 <= 90)
  {
    if (*v10 == -1)
    {
      if (!_LogCategory_Initialize(v10, 0x5Au))
      {
        goto LABEL_7;
      }

      v10 = *(v9[4] + 1088);
      v8 = *(*(v9[6] + 8) + 40);
    }

    LogPrintF(v10, "[CUFileServer _handleKeepAlive:responseHandler:]_block_invoke", 0x5Au, "### Keep alive failed: %{error}", a5, a6, a7, a8, v8);
  }

LABEL_7:
  v11 = *(v9[5] + 16);

  return v11();
}

- (void)_handleSessionStop:(id)a3 responseHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__2972;
  v34 = __Block_byref_object_dispose__2973;
  v35 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__CUFileServer__handleSessionStop_responseHandler___block_invoke;
  aBlock[3] = &unk_1E73A3FA0;
  v29 = &v30;
  aBlock[4] = self;
  v8 = v7;
  v28 = v8;
  v9 = _Block_copy(aBlock);
  v15 = NSDictionaryGetNSNumber(v6, @"sid", 0);
  if (!v15)
  {
    v23 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960591, "No session ID", v10, v11, v12, v13, v14, v26);
    v21 = v31[5];
    v31[5] = v23;
    goto LABEL_8;
  }

  v21 = [(NSMutableDictionary *)self->_sessionMap objectForKeyedSubscript:v15];
  if (!v21)
  {
    v24 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960569, "Session not found: ID %@", v16, v17, v18, v19, v20, v15);
    v25 = v31[5];
    v31[5] = v24;

    v21 = 0;
    goto LABEL_8;
  }

  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(ucat, 0x1Eu))
      {
        goto LABEL_7;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[CUFileServer _handleSessionStop:responseHandler:]", 0x1Eu, "Session stop: ID %@", v17, v18, v19, v20, v15);
  }

LABEL_7:
  [(NSMutableDictionary *)self->_sessionMap setObject:0 forKeyedSubscript:v15];
  [(CUFileServer *)self _sessionInvalidate:v21];
  [(CUFileServer *)self _update];
  (*(v8 + 2))(v8, MEMORY[0x1E695E0F8], 0, 0);
LABEL_8:

  v9[2](v9);
  _Block_object_dispose(&v30, 8);
}

uint64_t __51__CUFileServer__handleSessionStop_responseHandler___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(*(*(result + 48) + 8) + 40);
  if (!v8)
  {
    return result;
  }

  v9 = result;
  v10 = *(*(result + 32) + 1088);
  if (*v10 <= 90)
  {
    if (*v10 == -1)
    {
      if (!_LogCategory_Initialize(v10, 0x5Au))
      {
        goto LABEL_7;
      }

      v10 = *(v9[4] + 1088);
      v8 = *(*(v9[6] + 8) + 40);
    }

    LogPrintF(v10, "[CUFileServer _handleSessionStop:responseHandler:]_block_invoke", 0x5Au, "### Session stop failed: %{error}", a5, a6, a7, a8, v8);
  }

LABEL_7:
  v11 = *(v9[5] + 16);

  return v11();
}

- (void)_handleSessionStart:(id)a3 responseHandler:(id)a4
{
  v29[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(NSMutableDictionary *)self->_sessionMap count];
  if (v6 < 0x1E)
  {
    v16 = objc_alloc_init(CUFileServerSession);
    [(CUFileServerSession *)v16 setLastRequestTicks:mach_absolute_time()];
    v18 = self->_lastSessionID + 1;
    self->_lastSessionID = v18;
    [(CUFileServerSession *)v16 setSessionID:v18];
    if (!self->_sessionMap)
    {
      v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
      sessionMap = self->_sessionMap;
      self->_sessionMap = v19;
    }

    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v18];
    [(NSMutableDictionary *)self->_sessionMap setObject:v16 forKeyedSubscript:v21];
    ucat = self->_ucat;
    if (ucat->var0 > 30)
    {
      goto LABEL_13;
    }

    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(ucat, 0x1Eu))
      {
        goto LABEL_13;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[CUFileServer _handleSessionStart:responseHandler:]", 0x1Eu, "Session start: ID %llu", v22, v23, v24, v25, v18);
LABEL_13:
    [(CUFileServer *)self _update];
    v28 = @"sid";
    v29[0] = v21;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    (*(v5 + 2))(v5, v27, 0, 0);

    goto LABEL_14;
  }

  v16 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294896146, "Too many sessions: %d", v7, v8, v9, v10, v11, v6);
  v17 = self->_ucat;
  if (v17->var0 <= 90)
  {
    if (v17->var0 == -1)
    {
      if (!_LogCategory_Initialize(v17, 0x5Au))
      {
        goto LABEL_11;
      }

      v17 = self->_ucat;
    }

    LogPrintF(v17, "[CUFileServer _handleSessionStart:responseHandler:]", 0x5Au, "### Session start failed: %{error}", v12, v13, v14, v15, v16);
  }

LABEL_11:
  (*(v5 + 2))(v5, 0, 0, v16);
LABEL_14:
}

- (void)_update
{
  v3 = [(NSMutableDictionary *)self->_sessionMap count];
  sessionTimer = self->_sessionTimer;
  if (v3)
  {
    if (sessionTimer)
    {
      return;
    }

    v5 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
    v6 = self->_sessionTimer;
    self->_sessionTimer = v5;

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __23__CUFileServer__update__block_invoke;
    v20[3] = &unk_1E73A49F0;
    v20[4] = v5;
    v20[5] = self;
    dispatch_source_set_event_handler(v5, v20);
    v7 = dispatch_time(0, 15000000000);
    dispatch_source_set_timer(v5, v7, 0x37E11D600uLL, 0x3B9ACA00uLL);
    dispatch_activate(v5);
    ucat = self->_ucat;
    if (ucat->var0 > 30)
    {
      goto LABEL_13;
    }

    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(ucat, 0x1Eu))
      {
        goto LABEL_13;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[CUFileServer _update]", 0x1Eu, "Session timer started", v8, v9, v10, v11, v20[0]);
LABEL_13:

    return;
  }

  if (sessionTimer)
  {
    v13 = sessionTimer;
    dispatch_source_cancel(v13);
    v14 = self->_sessionTimer;
    self->_sessionTimer = 0;

    v19 = self->_ucat;
    if (v19->var0 <= 30)
    {
      if (v19->var0 == -1)
      {
        if (!_LogCategory_Initialize(v19, 0x1Eu))
        {
          return;
        }

        v19 = self->_ucat;
      }

      LogPrintF(v19, "[CUFileServer _update]", 0x1Eu, "Session timer stopped", v15, v16, v17, v18, v22);
    }
  }
}

void *__23__CUFileServer__update__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *(a1 + 40);
  if (v2 == result[135])
  {
    return [result _sessionTimerFired];
  }

  return result;
}

- (void)_sessionTimerFired
{
  v28 = *MEMORY[0x1E69E9840];
  ucat = self->_ucat;
  if (ucat->var0 > 20)
  {
    goto LABEL_5;
  }

  if (ucat->var0 == -1)
  {
    if (!_LogCategory_Initialize(ucat, 0x14u))
    {
      goto LABEL_5;
    }

    ucat = self->_ucat;
  }

  LogPrintF(ucat, "[CUFileServer _sessionTimerFired]", 0x14u, "Session timer fired", v2, v3, v4, v5, v22);
LABEL_5:
  v8 = mach_absolute_time();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = [(NSMutableDictionary *)self->_sessionMap allKeys];
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v10)
  {
    goto LABEL_20;
  }

  v11 = v10;
  v12 = *v24;
  do
  {
    v13 = 0;
    do
    {
      if (*v24 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v23 + 1) + 8 * v13);
      v15 = [(NSMutableDictionary *)self->_sessionMap objectForKeyedSubscript:v14];
      if (UpTicksToSeconds(v8 - [v15 lastRequestTicks]) >= 0x1E)
      {
        v20 = self->_ucat;
        if (v20->var0 <= 30)
        {
          if (v20->var0 != -1)
          {
            goto LABEL_13;
          }

          if (_LogCategory_Initialize(v20, 0x1Eu))
          {
            v20 = self->_ucat;
LABEL_13:
            LogPrintF(v20, "[CUFileServer _sessionTimerFired]", 0x1Eu, "Session stale: ID %@, %llu seconds", v16, v17, v18, v19, v14);
          }
        }

        [(NSMutableDictionary *)self->_sessionMap setObject:0 forKeyedSubscript:v14];
        [(CUFileServer *)self _sessionInvalidate:v15];
      }

      ++v13;
    }

    while (v11 != v13);
    v21 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    v11 = v21;
  }

  while (v21);
LABEL_20:
}

- (void)_sessionInvalidate:(id)a3
{
  v4 = a3;
  v3 = [v4 dirStream];
  if (v3)
  {
    closedir(v3);
    [v4 setDirStream:0];
  }
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateCalled || self->_invalidateDone || self->_clinkClient)
  {
    return;
  }

  v11 = _Block_copy(self->_invalidationHandler);
  invalidationHandler = self->_invalidationHandler;
  self->_invalidationHandler = 0;

  v8 = v11;
  if (v11)
  {
    v11[2](v11);
    v8 = v11;
  }

  self->_invalidateDone = 1;
  ucat = self->_ucat;
  if (*ucat <= 30)
  {
    if (*ucat == -1)
    {
      ucat = _LogCategory_Initialize(ucat, 0x1Eu);
      v8 = v11;
      if (!ucat)
      {
        goto LABEL_11;
      }

      ucat = self->_ucat;
    }

    ucat = LogPrintF(ucat, "[CUFileServer _invalidated]", 0x1Eu, "Invalidated", v4, v5, v6, v7, v10);
    v8 = v11;
  }

LABEL_11:

  MEMORY[0x1EEE66BB8](ucat, v8);
}

- (void)_invalidate
{
  if (self->_invalidateCalled)
  {
    return;
  }

  self->_invalidateCalled = 1;
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(ucat, 0x1Eu))
      {
        goto LABEL_6;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[CUFileServer _invalidate]", 0x1Eu, "Invalidate", v2, v3, v4, v5, v13);
  }

LABEL_6:
  [(RPCompanionLinkClient *)self->_clinkClient invalidate];
  sessionTimer = self->_sessionTimer;
  if (sessionTimer)
  {
    v9 = sessionTimer;
    dispatch_source_cancel(v9);
    v10 = self->_sessionTimer;
    self->_sessionTimer = 0;
  }

  sessionMap = self->_sessionMap;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __27__CUFileServer__invalidate__block_invoke;
  v14[3] = &unk_1E73A3240;
  v14[4] = self;
  [(NSMutableDictionary *)sessionMap enumerateKeysAndObjectsUsingBlock:v14];
  [(NSMutableDictionary *)self->_sessionMap removeAllObjects];
  v12 = self->_sessionMap;
  self->_sessionMap = 0;

  [(CUFileServer *)self _invalidated];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__CUFileServer_invalidate__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activateWithCompletion:(id)a3
{
  v4 = a3;
  v78 = 0;
  v79 = &v78;
  v80 = 0x3032000000;
  v81 = __Block_byref_object_copy__2972;
  v82 = __Block_byref_object_dispose__2973;
  v83 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __40__CUFileServer__activateWithCompletion___block_invoke;
  aBlock[3] = &unk_1E73A3FA0;
  v77 = &v78;
  aBlock[4] = self;
  v5 = v4;
  v76 = v5;
  v10 = _Block_copy(aBlock);
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 != -1)
    {
LABEL_3:
      LogPrintF(ucat, "[CUFileServer _activateWithCompletion:]", 0x1Eu, "Activate", v6, v7, v8, v9, v66);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize(ucat, 0x1Eu))
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  v17 = self->_rootDirectoryURL;
  if (!v17)
  {
    v59 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960591, "No root directory URL", v12, v13, v14, v15, v16, v66);
LABEL_11:
    v18 = v79[5];
    v79[5] = v59;
    goto LABEL_8;
  }

  *__error() = 0;
  if (!realpath_DARWIN_EXTSN([(NSURL *)v17 fileSystemRepresentation], self->_rootPath))
  {
    v60 = __error();
    v59 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960592, "Bad root directory: error %d", v61, v62, v63, v64, v65, *v60);
    goto LABEL_11;
  }

  [(RPCompanionLinkClient *)self->_clinkClient invalidate];
  v18 = objc_alloc_init(getRPCompanionLinkClientClass[0]());
  objc_storeStrong(&self->_clinkClient, v18);
  [v18 setDispatchQueue:self->_dispatchQueue];
  v74[0] = MEMORY[0x1E69E9820];
  v74[1] = 3221225472;
  v74[2] = __40__CUFileServer__activateWithCompletion___block_invoke_2;
  v74[3] = &unk_1E73A49F0;
  v74[4] = v18;
  v74[5] = self;
  [v18 setInvalidationHandler:v74];
  v26 = NSPrintF("FSSr:%@", v19, v20, v21, v22, v23, v24, v25, self->_serviceType);
  v73[0] = MEMORY[0x1E69E9820];
  v73[1] = 3221225472;
  v73[2] = __40__CUFileServer__activateWithCompletion___block_invoke_3;
  v73[3] = &unk_1E73A31F0;
  v73[4] = self;
  [v18 registerRequestID:v26 options:0 handler:v73];

  v34 = NSPrintF("FSSp:%@", v27, v28, v29, v30, v31, v32, v33, self->_serviceType);
  v72[0] = MEMORY[0x1E69E9820];
  v72[1] = 3221225472;
  v72[2] = __40__CUFileServer__activateWithCompletion___block_invoke_4;
  v72[3] = &unk_1E73A31F0;
  v72[4] = self;
  [v18 registerRequestID:v34 options:0 handler:v72];

  v42 = NSPrintF("FSQy:%@", v35, v36, v37, v38, v39, v40, v41, self->_serviceType);
  v71[0] = MEMORY[0x1E69E9820];
  v71[1] = 3221225472;
  v71[2] = __40__CUFileServer__activateWithCompletion___block_invoke_5;
  v71[3] = &unk_1E73A31F0;
  v71[4] = self;
  [v18 registerRequestID:v42 options:0 handler:v71];

  v50 = NSPrintF("FSRF:%@", v43, v44, v45, v46, v47, v48, v49, self->_serviceType);
  v70[0] = MEMORY[0x1E69E9820];
  v70[1] = 3221225472;
  v70[2] = __40__CUFileServer__activateWithCompletion___block_invoke_6;
  v70[3] = &unk_1E73A31F0;
  v70[4] = self;
  [v18 registerRequestID:v50 options:0 handler:v70];

  v58 = NSPrintF("FSKA:%@", v51, v52, v53, v54, v55, v56, v57, self->_serviceType);
  v69[0] = MEMORY[0x1E69E9820];
  v69[1] = 3221225472;
  v69[2] = __40__CUFileServer__activateWithCompletion___block_invoke_7;
  v69[3] = &unk_1E73A31F0;
  v69[4] = self;
  [v18 registerRequestID:v58 options:0 handler:v69];

  v67[0] = MEMORY[0x1E69E9820];
  v67[1] = 3221225472;
  v67[2] = __40__CUFileServer__activateWithCompletion___block_invoke_8;
  v67[3] = &unk_1E73A3218;
  v67[4] = self;
  v68 = v5;
  [v18 activateWithCompletion:v67];

LABEL_8:
  v10[2](v10);

  _Block_object_dispose(&v78, 8);
}

uint64_t __40__CUFileServer__activateWithCompletion___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(*(*(result + 48) + 8) + 40);
  if (!v8)
  {
    return result;
  }

  v9 = result;
  v10 = *(*(result + 32) + 1088);
  if (*v10 <= 90)
  {
    if (*v10 == -1)
    {
      if (!_LogCategory_Initialize(v10, 0x5Au))
      {
        goto LABEL_7;
      }

      v10 = *(v9[4] + 1088);
      v8 = *(*(v9[6] + 8) + 40);
    }

    LogPrintF(v10, "[CUFileServer _activateWithCompletion:]_block_invoke", 0x5Au, "### Activate failed: %{error}", a5, a6, a7, a8, v8);
  }

LABEL_7:
  v11 = *(v9[5] + 16);

  return v11();
}

uint64_t __40__CUFileServer__activateWithCompletion___block_invoke_2(uint64_t result)
{
  v2 = *(result + 40);
  v3 = *(v2 + 16);
  if (*(result + 32) == v3)
  {
    v4 = result;
    *(v2 + 16) = 0;

    v5 = *(v4 + 40);

    return [v5 _invalidated];
  }

  return result;
}

void __40__CUFileServer__activateWithCompletion___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = *(*(a1 + 32) + 1088);
  v9 = *v8;
  v12 = v3;
  if (!v3)
  {
    if (v9 > 30)
    {
      goto LABEL_11;
    }

    if (v9 == -1)
    {
      if (!_LogCategory_Initialize(v8, 0x1Eu))
      {
        goto LABEL_11;
      }

      v8 = *(*(a1 + 32) + 1088);
    }

    LogPrintF(v8, "[CUFileServer _activateWithCompletion:]_block_invoke_8", 0x1Eu, "CLink activated", v4, v5, v6, v7, v11);
    goto LABEL_11;
  }

  if (v9 > 90)
  {
    goto LABEL_11;
  }

  if (v9 != -1)
  {
    goto LABEL_4;
  }

  v10 = _LogCategory_Initialize(v8, 0x5Au);
  v3 = v12;
  if (v10)
  {
    v8 = *(*(a1 + 32) + 1088);
LABEL_4:
    LogPrintF(v8, "[CUFileServer _activateWithCompletion:]_block_invoke_8", 0x5Au, "### CLink activate failed: %{error}", v4, v5, v6, v7, v3);
  }

LABEL_11:
  (*(*(a1 + 40) + 16))();
}

- (void)activateWithCompletion:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__CUFileServer_activateWithCompletion___block_invoke;
  v7[3] = &unk_1E73A49A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __39__CUFileServer_activateWithCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  if (*(v9 + 8) == 1)
  {
    v10 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960575, "Activate already called", a4, a5, a6, a7, a8, v19);
    v15 = *(*(a1 + 32) + 1088);
    v20 = v10;
    if (*v15 <= 90)
    {
      if (*v15 == -1)
      {
        v18 = _LogCategory_Initialize(v15, 0x5Au);
        v10 = v20;
        if (!v18)
        {
          goto LABEL_9;
        }

        v15 = *(*(a1 + 32) + 1088);
      }

      LogPrintF(v15, "[CUFileServer activateWithCompletion:]_block_invoke", 0x5Au, "### Activate failed: %{error}", v11, v12, v13, v14, v10);
    }

LABEL_9:
    (*(*(a1 + 40) + 16))();

    return;
  }

  *(v9 + 8) = 1;
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);

  [v16 _activateWithCompletion:v17];
}

- (void)setLabel:(id)a3
{
  objc_storeStrong(&self->_label, a3);
  v13 = a3;
  v5 = qword_1EADE9728;
  v6 = v13;
  [v13 UTF8String];
  LogCategoryReplaceF(&self->_ucat, "%s-%s", v7, v8, v9, v10, v11, v12, v5);
}

- (void)dealloc
{
  ucat = self->_ucat;
  if (ucat && (ucat->var3 & 0x40000) != 0)
  {
    LogCategory_Remove(ucat);
    self->_ucat = 0;
  }

  v4.receiver = self;
  v4.super_class = CUFileServer;
  [(CUFileServer *)&v4 dealloc];
}

- (CUFileServer)init
{
  v6.receiver = self;
  v6.super_class = CUFileServer;
  v2 = [(CUFileServer *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v3->_ucat = &gLogCategory_CUFileServer;
    v4 = v3;
  }

  return v3;
}

@end