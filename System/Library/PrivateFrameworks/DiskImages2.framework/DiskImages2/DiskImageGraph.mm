@interface DiskImageGraph
+ (BOOL)copyDictNodesToFolder:(id)a3 dict:(id)a4 error:(id *)a5;
+ (BOOL)createNodesConnectivityWithNodesDict:(id)a3 error:(id *)a4;
+ (BOOL)failWithNoPstackError:(id *)a3;
+ (BOOL)loadPlistDictFromFileHandle:(id)a3 dict:(id *)a4 error:(id *)a5;
+ (BOOL)populateNodesDictsWithArray:(id)a3 workDir:(id)a4 nodesDict:(id)a5 error:(id *)a6;
+ (BOOL)saveToPlistWithDictionary:(id)a3 URL:(id)a4 error:(id *)a5;
+ (BOOL)validateWithDictionary:(id)a3 error:(id *)a4;
+ (id)createGraphDictWithNode:(id)a3;
+ (id)getFirstNonCacheAncestorWithNode:(id)a3 error:(id *)a4;
+ (id)getImageInfoDictWithURL:(id)a3 error:(id *)a4;
+ (id)getImageUUIDStrWithIdentityInfo:(id)a3 stackableUUIDFallback:(BOOL)a4 error:(id *)a5;
- (BOOL)appendCacheWithURL:(id)a3 tag:(id)a4 error:(id *)a5;
- (BOOL)appendOverlayWithURL:(id)a3 tag:(id)a4 error:(id *)a5;
- (BOOL)appendOverlayWithURL:(id)a3 tag:(id)a4 numBlocks:(unint64_t)a5 error:(id *)a6;
- (BOOL)checkStackValidityWithError:(id *)a3;
- (BOOL)savePstackWithURL:(id)a3 error:(id *)a4;
- (BOOL)setActiveNodeWithTag:(id)a3 error:(id *)a4;
- (BOOL)setActiveNodeWithUUID:(id)a3 error:(id *)a4;
- (BOOL)validateAppendedImageWithURL:(id)a3 parentNode:(id)a4 isCache:(BOOL)a5 error:(id *)a6;
- (DiskImageGraph)initWithBaseImageURL:(id)a3 newPstackURL:(id)a4 tag:(id)a5 error:(id *)a6;
- (DiskImageGraph)initWithBaseImageURL:(id)a3 tag:(id)a4 error:(id *)a5;
- (DiskImageGraph)initWithGraphDB:(id)a3 workDir:(id)a4 error:(id *)a5;
- (DiskImageGraph)initWithPluginName:(id)a3 pluginParams:(id)a4 tag:(id)a5 error:(id *)a6;
- (DiskImageGraph)initWithPstackURL:(id)a3 error:(id *)a4;
- (DiskImageGraphNode)rootNode;
- (NSMutableArray)imagesDictsArray;
- (id)cloneToURL:(id)a3 error:(id *)a4;
- (id)getImageWithTag:(id)a3 error:(id *)a4;
- (id)getImageWithUUID:(id)a3 error:(id *)a4;
- (void)setActiveNode:(id)a3;
@end

@implementation DiskImageGraph

+ (BOOL)loadPlistDictFromFileHandle:(id)a3 dict:(id *)a4 error:(id *)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = [a3 readDataUpToLength:0x100000 error:a5];
  if (v7)
  {
    v8 = [MEMORY[0x277CCAC58] propertyListWithData:v7 options:2 format:0 error:0];
    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [v8 objectForKeyedSubscript:@"PstackVersion"];

        if (v9)
        {
          v10 = v8;
          *a4 = v8;
          v11 = 1;
LABEL_15:

          goto LABEL_16;
        }

        v12 = *__error();
        if (DIForwardLogs())
        {
          v13 = getDIOSLog();
          os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
          *buf = 68157954;
          v21 = 57;
          v22 = 2080;
          v23 = "+[DiskImageGraph loadPlistDictFromFileHandle:dict:error:]";
          LODWORD(v19) = 18;
          v18 = buf;
          v14 = _os_log_send_and_compose_impl();

          if (v14)
          {
            fprintf(*MEMORY[0x277D85DF8], "%s\n", v14);
            free(v14);
          }
        }

        else
        {
          v15 = getDIOSLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68157954;
            v21 = 57;
            v22 = 2080;
            v23 = "+[DiskImageGraph loadPlistDictFromFileHandle:dict:error:]";
            _os_log_impl(&dword_248DE0000, v15, OS_LOG_TYPE_DEFAULT, "%.*s: A valid plist was given, but it has no pstack version key", buf, 0x12u);
          }
        }

        *__error() = v12;
      }
    }

    v11 = [DiskImageGraph failWithNoPstackError:a5, v18, v19];
    goto LABEL_15;
  }

  v11 = 0;
LABEL_16:

  v16 = *MEMORY[0x277D85DE8];
  return v11;
}

+ (BOOL)failWithNoPstackError:(id *)a3
{
  v4 = [MEMORY[0x277CBEB38] dictionary];
  [v4 setObject:@"Not a pstack." forKeyedSubscript:@"DIErrorVerboseInfo"];
  v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.DiskImages2.ErrorDomain" code:167 userInfo:v4];
  LOBYTE(a3) = [DIError failWithInError:v5 outError:a3];

  return a3;
}

+ (id)createGraphDictWithNode:(id)a3
{
  v3 = a3;
  v4 = [v3 toDictionary];
  v5 = [v4 mutableCopy];
  [v3 setPstackDict:v5];

  v6 = MEMORY[0x277CBEB38];
  v7 = [v3 UUID];
  v8 = [v7 UUIDString];
  v9 = MEMORY[0x277CBEB18];
  v10 = [v3 pstackDict];

  v11 = [v9 arrayWithObject:v10];
  v12 = [v6 dictionaryWithObjectsAndKeys:{@"1.0", @"PstackVersion", v8, @"ActiveNode", v11, @"Images", 0}];

  return v12;
}

- (DiskImageGraph)initWithPluginName:(id)a3 pluginParams:(id)a4 tag:(id)a5 error:(id *)a6
{
  v38 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v33.receiver = self;
  v33.super_class = DiskImageGraph;
  v12 = [(DiskImageGraph *)&v33 init];
  if (!v12)
  {
    goto LABEL_4;
  }

  v13 = [MEMORY[0x277CCAD78] UUID];
  if (v13)
  {
    v14 = v13;
    LOBYTE(v32) = 0;
    v15 = [[PluginDiskImageGraphNode alloc] initWithPluginName:v9 pluginParams:v10 tag:v11 UUID:v13 parentNode:0 metadata:0 isCache:v32];
    activeNode = v12->_activeNode;
    v12->_activeNode = &v15->super;
    v17 = v15;

    v18 = [DiskImageGraph createGraphDictWithNode:v17];
    graphDB = v12->_graphDB;
    v12->_graphDB = v18;

    v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
    nodes = v12->_nodes;
    v12->_nodes = v20;

    v22 = [(DiskImageGraph *)v12 nodes];
    v23 = [(DiskImageGraphNode *)v17 UUID];
    v24 = [v23 UUIDString];
    [v22 setObject:v17 forKeyedSubscript:v24];

LABEL_4:
    v25 = v12;
    goto LABEL_12;
  }

  v26 = *__error();
  if (DIForwardLogs())
  {
    v27 = getDIOSLog();
    os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
    *buf = 68157954;
    v35 = 60;
    v36 = 2080;
    v37 = "[DiskImageGraph initWithPluginName:pluginParams:tag:error:]";
    v28 = _os_log_send_and_compose_impl();

    if (v28)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v28);
      free(v28);
    }
  }

  else
  {
    v29 = getDIOSLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 68157954;
      v35 = 60;
      v36 = 2080;
      v37 = "[DiskImageGraph initWithPluginName:pluginParams:tag:error:]";
      _os_log_impl(&dword_248DE0000, v29, OS_LOG_TYPE_ERROR, "%.*s: Failed to get UUID info of provided image.", buf, 0x12u);
    }
  }

  v25 = 0;
  *__error() = v26;
LABEL_12:

  v30 = *MEMORY[0x277D85DE8];
  return v25;
}

- (DiskImageGraph)initWithBaseImageURL:(id)a3 tag:(id)a4 error:(id *)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v26.receiver = self;
  v26.super_class = DiskImageGraph;
  v10 = [(DiskImageGraph *)&v26 init];
  if (!v10)
  {
    goto LABEL_4;
  }

  v11 = [DiskImageGraph getImageUUIDWithURL:v8 allowMissingUUID:1 error:a5];
  if (v11)
  {
    v12 = v11;
    v13 = [[NativeDiskImageGraphNode alloc] initWithURL:v8 tag:v9 UUID:v11 parentNode:0 metadata:0 isCache:0];
    [(DiskImageGraph *)v10 setActiveNode:v13];
    v14 = [DiskImageGraph createGraphDictWithNode:v13];
    [(DiskImageGraph *)v10 setGraphDB:v14];

    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(DiskImageGraph *)v10 setNodes:v15];

    v16 = [(DiskImageGraph *)v10 nodes];
    v17 = [(DiskImageGraphNode *)v13 UUID];
    v18 = [v17 UUIDString];
    [v16 setObject:v13 forKeyedSubscript:v18];

LABEL_4:
    v19 = v10;
    goto LABEL_12;
  }

  v20 = *__error();
  if (DIForwardLogs())
  {
    v21 = getDIOSLog();
    os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    *buf = 68157954;
    v28 = 49;
    v29 = 2080;
    v30 = "[DiskImageGraph initWithBaseImageURL:tag:error:]";
    v22 = _os_log_send_and_compose_impl();

    if (v22)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v22);
      free(v22);
    }
  }

  else
  {
    v23 = getDIOSLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 68157954;
      v28 = 49;
      v29 = 2080;
      v30 = "[DiskImageGraph initWithBaseImageURL:tag:error:]";
      _os_log_impl(&dword_248DE0000, v23, OS_LOG_TYPE_ERROR, "%.*s: Failed to get UUID info of provided image.", buf, 0x12u);
    }
  }

  v19 = 0;
  *__error() = v20;
LABEL_12:

  v24 = *MEMORY[0x277D85DE8];
  return v19;
}

- (DiskImageGraph)initWithBaseImageURL:(id)a3 newPstackURL:(id)a4 tag:(id)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a3;
  if (v10)
  {
    v13 = [[SerializedDiskImageGraph alloc] initWithBaseImageURL:v12 pstackURL:v10 tag:v11 error:a6];
  }

  else
  {
    v14 = [(DiskImageGraph *)self initWithBaseImageURL:v12 tag:v11 error:a6];

    self = v14;
    v13 = self;
  }

  return &v13->super;
}

- (NSMutableArray)imagesDictsArray
{
  v2 = [(DiskImageGraph *)self graphDB];
  v3 = [v2 objectForKeyedSubscript:@"Images"];

  return v3;
}

+ (BOOL)validateWithDictionary:(id)a3 error:(id *)a4
{
  v5 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:a3];
  if ([v5 validateAndPopObjectForKey:@"PstackVersion" className:objc_opt_class() isOptional:0 error:a4] && objc_msgSend(v5, "validateAndPopObjectForKey:className:isOptional:error:", @"ActiveNode", objc_opt_class(), 0, a4) && objc_msgSend(v5, "validateAndPopObjectForKey:className:isOptional:error:", @"Images", objc_opt_class(), 0, a4))
  {
    if ([v5 count])
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Validation failed, input contains unexpected data."];
      v7 = [DIError failWithPOSIXCode:22 verboseInfo:v6 error:a4];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (DiskImageGraph)initWithGraphDB:(id)a3 workDir:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v24.receiver = self;
  v24.super_class = DiskImageGraph;
  v10 = [(DiskImageGraph *)&v24 init];
  if (v10)
  {
    if (![DiskImageGraph validateWithDictionary:v8 error:a5])
    {
      goto LABEL_9;
    }

    v11 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v8];
    graphDB = v10->_graphDB;
    v10->_graphDB = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    nodes = v10->_nodes;
    v10->_nodes = v13;

    v15 = [(NSMutableDictionary *)v10->_graphDB objectForKeyedSubscript:@"Images"];
    v16 = [DiskImageGraph populateNodesDictsWithArray:v15 workDir:v9 nodesDict:v10->_nodes error:a5];

    if (!v16)
    {
      goto LABEL_9;
    }

    v17 = [(DiskImageGraph *)v10 nodes];
    v18 = [(NSMutableDictionary *)v10->_graphDB objectForKeyedSubscript:@"ActiveNode"];
    v19 = [v17 objectForKey:v18];
    activeNode = v10->_activeNode;
    v10->_activeNode = v19;

    if (!v19)
    {
      v21 = [DIError nilWithPOSIXCode:22 description:@"Bad pstack format error:node with active UUID not found.", a5];
      goto LABEL_8;
    }

    if (![DiskImageGraph createNodesConnectivityWithNodesDict:v10->_nodes error:a5]|| ![(DiskImageGraph *)v10 checkStackValidityWithError:a5])
    {
LABEL_9:
      v22 = 0;
      goto LABEL_10;
    }
  }

  v21 = v10;
LABEL_8:
  v22 = v21;
LABEL_10:

  return v22;
}

- (DiskImageGraph)initWithPstackURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [[SerializedDiskImageGraph alloc] initWithPstackURL:v6 error:a4];

  return &v7->super;
}

+ (BOOL)copyDictNodesToFolder:(id)a3 dict:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy_;
  v32 = __Block_byref_object_dispose_;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count")}];
  v9 = [MEMORY[0x277CCAA00] defaultManager];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __51__DiskImageGraph_copyDictNodesToFolder_dict_error___block_invoke;
  v17[3] = &unk_278F80930;
  v20 = &v28;
  v10 = v7;
  v18 = v10;
  v11 = v9;
  v19 = v11;
  v21 = &v22;
  [v8 enumerateKeysAndObjectsUsingBlock:v17];
  if (v29[5])
  {
    v12 = v23[5];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __51__DiskImageGraph_copyDictNodesToFolder_dict_error___block_invoke_2;
    v15[3] = &unk_278F80958;
    v16 = v11;
    [v12 enumerateObjectsUsingBlock:v15];
    v13 = [DIError failWithInError:v29[5] outError:a5];
  }

  else
  {
    v13 = 1;
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  return v13;
}

void __51__DiskImageGraph_copyDictNodesToFolder_dict_error___block_invoke(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    v8 = a1[4];
    v9 = [v7 filePath];
    v10 = [v9 lastPathComponent];
    v11 = [v8 URLByAppendingPathComponent:v10];

    v12 = a1[5];
    v13 = [v7 filePath];
    v14 = *(a1[6] + 8);
    obj = *(v14 + 40);
    LOBYTE(v12) = [v12 copyItemAtURL:v13 toURL:v11 error:&obj];
    objc_storeStrong((v14 + 40), obj);

    if (v12)
    {
      [*(*(a1[7] + 8) + 40) addObject:v11];
    }

    else
    {
      *a4 = 1;
    }
  }

  else
  {
    *a4 = 1;
    v15 = *(a1[6] + 8);
    v18 = *(v15 + 40);
    [DIError failWithPOSIXCode:45 verboseInfo:@"Clone of plugin nodes is not supported." error:&v18];
    v16 = v18;
    v7 = *(v15 + 40);
    *(v15 + 40) = v16;
  }
}

- (id)cloneToURL:(id)a3 error:(id *)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = MEMORY[0x277CBEB38];
  v8 = [(DiskImageGraph *)self graphDB];
  v9 = [v7 dictionaryWithDictionary:v8];

  v10 = [(DiskImageGraph *)self graphDB];
  v11 = [v10 objectForKeyedSubscript:@"Images"];

  v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v11, "count")}];
  [v9 setObject:v12 forKeyedSubscript:@"Images"];
  if (([v6 isFileURL] & 1) == 0)
  {
    v25 = @"Destination folder URL must be of 'file' scheme.";
    v26 = 22;
LABEL_15:
    v24 = [DIError nilWithPOSIXCode:v26 description:v25 error:a4];
    goto LABEL_16;
  }

  if (![v6 hasDirectoryPath] || (objc_msgSend(v6, "checkResourceIsReachableAndReturnError:", 0) & 1) == 0)
  {
    v25 = @"Destination folder URL must represent an existing folder.";
    v26 = 20;
    goto LABEL_15;
  }

  v29 = self;
  v30 = a4;
  v32 = v9;
  v33 = v6;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v31 = v11;
  obj = v11;
  v13 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v36;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v36 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v35 + 1) + 8 * i);
        v18 = [v17 mutableCopy];
        v19 = [v17 objectForKeyedSubscript:@"FilePath"];
        v20 = [v19 componentsSeparatedByString:@"/"];
        v21 = [v20 lastObject];
        [v18 setObject:v21 forKeyedSubscript:@"FilePath"];

        [v12 addObject:v18];
      }

      v14 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v14);
  }

  v22 = [(DiskImageGraph *)v29 nodes];
  v6 = v33;
  v23 = [DiskImageGraph copyDictNodesToFolder:v33 dict:v22 error:v30];

  if (v23)
  {
    v9 = v32;
    v24 = v32;
  }

  else
  {
    v24 = 0;
    v9 = v32;
  }

  v11 = v31;
LABEL_16:

  v27 = *MEMORY[0x277D85DE8];

  return v24;
}

- (void)setActiveNode:(id)a3
{
  objc_storeStrong(&self->_activeNode, a3);
  v5 = a3;
  v7 = [v5 UUID];
  v6 = [v7 UUIDString];
  [(NSMutableDictionary *)self->_graphDB setObject:v6 forKeyedSubscript:@"ActiveNode"];
}

+ (BOOL)populateNodesDictsWithArray:(id)a3 workDir:(id)a4 nodesDict:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy_;
  v25 = __Block_byref_object_dispose_;
  v26 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __70__DiskImageGraph_populateNodesDictsWithArray_workDir_nodesDict_error___block_invoke;
  v17[3] = &unk_278F80980;
  v12 = v10;
  v18 = v12;
  v20 = &v21;
  v13 = v11;
  v19 = v13;
  [v9 enumerateObjectsUsingBlock:v17];
  v14 = v22[5];
  if (v14)
  {
    v15 = [DIError failWithInError:v14 outError:a6];
  }

  else
  {
    v15 = 1;
  }

  _Block_object_dispose(&v21, 8);
  return v15;
}

void __70__DiskImageGraph_populateNodesDictsWithArray_workDir_nodesDict_error___block_invoke(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = a1[4];
  v7 = *(a1[6] + 8);
  obj = *(v7 + 40);
  v8 = [DiskImageGraphNode GraphNodeWithDictionary:a2 workDir:v6 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  if (v8)
  {
    v9 = a1[5];
    v10 = [v8 UUID];
    v11 = [v10 UUIDString];
    [v9 setObject:v8 forKey:v11];
  }

  else
  {
    *a4 = 1;
  }
}

+ (BOOL)createNodesConnectivityWithNodesDict:(id)a3 error:(id *)a4
{
  v5 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __61__DiskImageGraph_createNodesConnectivityWithNodesDict_error___block_invoke;
  v13 = &unk_278F809A8;
  v6 = v5;
  v14 = v6;
  v15 = &v16;
  [v6 enumerateKeysAndObjectsUsingBlock:&v10];
  v7 = v17[5];
  if (v7)
  {
    v8 = [DIError failWithInError:v7 outError:a4, v10, v11, v12, v13];
  }

  else
  {
    v8 = 1;
  }

  _Block_object_dispose(&v16, 8);
  return v8;
}

void __61__DiskImageGraph_createNodesConnectivityWithNodesDict_error___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v15 = a3;
  v6 = [v15 parentUUID];

  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = [v15 parentUUID];
    v9 = [v8 UUIDString];
    v10 = [v7 objectForKey:v9];

    if (v10)
    {
      [v15 setParent:v10];
      v11 = [v15 parent];
      v12 = [v11 mutableChildren];
      [v12 addObject:v15];
    }

    else
    {
      *a4 = 1;
      v13 = [DIError errorWithPOSIXCode:22 verboseInfo:@"Missing parent node in graph."];
      v14 = *(*(a1 + 40) + 8);
      v11 = *(v14 + 40);
      *(v14 + 40) = v13;
    }
  }
}

- (BOOL)checkStackValidityWithError:(id *)a3
{
  v5 = [(DiskImageGraph *)self activeNode];
  v6 = -1;
  while (v5)
  {
    v7 = [v5 parent];

    v8 = [(DiskImageGraph *)self nodes];
    v9 = [v8 count];

    ++v6;
    v5 = v7;
    if (v9 <= v6)
    {
      v10 = [DIError failWithPOSIXCode:22 verboseInfo:@"Invalid pstack error:Active stack contains a loop.", a3];

      return v10;
    }
  }

  return 1;
}

+ (BOOL)saveToPlistWithDictionary:(id)a3 URL:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = [MEMORY[0x277CCAC58] dataWithPropertyList:a3 format:100 options:0 error:a5];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 writeToURL:v7 options:1 error:a5];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)setActiveNodeWithUUID:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(DiskImageGraph *)self nodes];
  v8 = [v6 UUIDString];

  v9 = [v7 objectForKeyedSubscript:v8];

  if (v9)
  {
    [(DiskImageGraph *)self setActiveNode:v9];
    v10 = 1;
  }

  else
  {
    v10 = [DIError failWithPOSIXCode:22 verboseInfo:@"Cannot find image with provided UUID." error:a4];
  }

  return v10;
}

- (id)getImageWithTag:(id)a3 error:(id *)a4
{
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = __Block_byref_object_copy_;
  v16[4] = __Block_byref_object_dispose_;
  v6 = a3;
  v17 = v6;
  v7 = [(DiskImageGraph *)self nodes];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __40__DiskImageGraph_getImageWithTag_error___block_invoke;
  v15[3] = &unk_278F809D0;
  v15[4] = v16;
  v8 = [v7 keysOfEntriesPassingTest:v15];

  if ([v8 count])
  {
    if ([v8 count] == 1)
    {
      v9 = [(DiskImageGraph *)self nodes];
      v10 = [v8 anyObject];
      v11 = [v9 objectForKey:v10];

      goto LABEL_7;
    }

    v12 = @"More than one image in the stack has the provided tag, please specify UUID instead.";
    v13 = 22;
  }

  else
  {
    v12 = @"Cannot find image with provided tag.";
    v13 = 2;
  }

  v11 = [DIError nilWithPOSIXCode:v13 verboseInfo:v12 error:a4];
LABEL_7:

  _Block_object_dispose(v16, 8);

  return v11;
}

uint64_t __40__DiskImageGraph_getImageWithTag_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 tag];
  v5 = [v4 isEqualToString:*(*(*(a1 + 32) + 8) + 40)];

  return v5;
}

- (id)getImageWithUUID:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(DiskImageGraph *)self nodes];
  v8 = [v6 UUIDString];

  v9 = [v7 objectForKeyedSubscript:v8];

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = [DIError nilWithPOSIXCode:2 verboseInfo:@"Cannot find image with provided uuid." error:a4];
  }

  v11 = v10;

  return v11;
}

- (BOOL)setActiveNodeWithTag:(id)a3 error:(id *)a4
{
  v5 = [(DiskImageGraph *)self getImageWithTag:a3 error:a4];
  if (v5)
  {
    [(DiskImageGraph *)self setActiveNode:v5];
  }

  return v5 != 0;
}

- (BOOL)savePstackWithURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(DiskImageGraph *)self graphDB];
  LOBYTE(a4) = [DiskImageGraph saveToPlistWithDictionary:v7 URL:v6 error:a4];

  return a4;
}

- (DiskImageGraphNode)rootNode
{
  v2 = [(DiskImageGraph *)self activeNode];
  v3 = [v2 parent];

  if (v3)
  {
    do
    {
      v4 = [v2 parent];

      v5 = [v4 parent];

      v2 = v4;
    }

    while (v5);
  }

  else
  {
    v4 = v2;
  }

  return v4;
}

+ (id)getImageInfoDictWithURL:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [[DIImageInfoParams alloc] initWithURL:v5 error:a4];

  if (v6 && [(DIImageInfoParams *)v6 retrieveWithError:a4])
  {
    v7 = [(DIImageInfoParams *)v6 imageInfo];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)getImageUUIDStrWithIdentityInfo:(id)a3 stackableUUIDFallback:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v20 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [v7 objectForKey:@"Stable UUID"];
  if (!v8)
  {
    if (v6 && ([v7 objectForKey:@"UUID"], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = v9;
      v10 = *__error();
      if (DIForwardLogs())
      {
        v11 = getDIOSLog();
        os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
        *buf = 68157954;
        v17 = 91;
        v18 = 2080;
        v19 = "+[DiskImageGraph(InfoPrivate) getImageUUIDStrWithIdentityInfo:stackableUUIDFallback:error:]";
        v12 = _os_log_send_and_compose_impl();

        if (v12)
        {
          fprintf(*MEMORY[0x277D85DF8], "%s\n", v12);
          free(v12);
        }
      }

      else
      {
        v13 = getDIOSLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68157954;
          v17 = 91;
          v18 = 2080;
          v19 = "+[DiskImageGraph(InfoPrivate) getImageUUIDStrWithIdentityInfo:stackableUUIDFallback:error:]";
          _os_log_impl(&dword_248DE0000, v13, OS_LOG_TYPE_DEFAULT, "%.*s: Stable UUID not found in provided image, Falling back to using Stackable UUID.", buf, 0x12u);
        }
      }

      *__error() = v10;
    }

    else
    {
      v8 = [DIError nilWithPOSIXCode:22 verboseInfo:@"Provided image has no UUID info." error:a5];
    }
  }

  v14 = *MEMORY[0x277D85DE8];

  return v8;
}

- (BOOL)appendOverlayWithURL:(id)a3 tag:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(DiskImageGraph *)self activeNode];
  LOBYTE(a5) = [(DiskImageGraph *)self appendWithURL:v9 isCache:0 tag:v8 numBlocks:0 toNode:v10 setNewActive:0 error:a5];

  return a5;
}

- (BOOL)appendCacheWithURL:(id)a3 tag:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(DiskImageGraph *)self activeNode];
  LOBYTE(a5) = [(DiskImageGraph *)self appendWithURL:v9 isCache:1 tag:v8 numBlocks:0 toNode:v10 setNewActive:0 error:a5];

  return a5;
}

- (BOOL)appendOverlayWithURL:(id)a3 tag:(id)a4 numBlocks:(unint64_t)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a3;
  v12 = [(DiskImageGraph *)self activeNode];
  LOBYTE(a6) = [(DiskImageGraph *)self appendWithURL:v11 isCache:0 tag:v10 numBlocks:a5 toNode:v12 setNewActive:0 error:a6];

  return a6;
}

+ (id)getFirstNonCacheAncestorWithNode:(id)a3 error:(id *)a4
{
  v5 = a3;
  if ([v5 isCache])
  {
    do
    {
      v6 = [v5 parent];

      v5 = v6;
    }

    while (([v6 isCache] & 1) != 0);
    if (v6)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v6 = v5;
    if (v5)
    {
LABEL_4:
      v7 = v6;
      goto LABEL_7;
    }
  }

  v7 = [DIError nilWithPOSIXCode:22 verboseInfo:@"Pstack corrupted error:found a cache node without a non-cache ancestor.", a4];
LABEL_7:
  v8 = v7;

  return v8;
}

- (BOOL)validateAppendedImageWithURL:(id)a3 parentNode:(id)a4 isCache:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v10 = a4;
  v11 = [DiskImageGraph getImageInfoDictWithURL:a3 error:a6];
  if (v11 && [v10 validateAppendedImageWithInfo:v11 error:a6])
  {
    v12 = [v11 objectForKeyedSubscript:@"Image Format"];
    v13 = [v12 isEqualToString:@"ASIF"];

    if (v13)
    {
      v14 = [v11 objectForKeyedSubscript:@"ASIF Info"];
      v15 = [v14 objectForKeyedSubscript:@"Is Cache"];
      v16 = [v15 BOOLValue];

      if (v16 == v7)
      {
        v19 = [(DiskImageGraph *)self nodes];
        v20 = [v11 objectForKeyedSubscript:@"Identity Info"];
        v21 = [v20 objectForKeyedSubscript:@"Stable UUID"];
        v22 = [v19 objectForKeyedSubscript:v21];

        if (!v22)
        {
          v18 = 1;
          goto LABEL_11;
        }

        v17 = @"Stack already contains an image with the same stable UUID.";
      }

      else
      {
        v17 = @"Image cache flag does not match the requested operation.";
      }
    }

    else
    {
      v17 = @"Can only append ASIF formatted images to pstack.";
    }

    v18 = [DIError failWithPOSIXCode:22 verboseInfo:v17 error:a6];
  }

  else
  {
    v18 = 0;
  }

LABEL_11:

  return v18;
}

@end