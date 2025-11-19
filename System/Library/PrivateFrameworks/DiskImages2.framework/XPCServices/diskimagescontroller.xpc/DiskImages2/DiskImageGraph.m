@interface DiskImageGraph
+ (BOOL)copyDictNodesToFolder:(id)a3 dict:(id)a4 error:(id *)a5;
+ (BOOL)createNodesConnectivityWithNodesDict:(id)a3 error:(id *)a4;
+ (BOOL)failWithNoPstackError:(id *)a3;
+ (BOOL)loadPlistDictFromFileHandle:(id)a3 dict:(id *)a4 error:(id *)a5;
+ (BOOL)populateNodesDictsWithArray:(id)a3 workDir:(id)a4 nodesDict:(id)a5 error:(id *)a6;
+ (BOOL)saveToPlistWithDictionary:(id)a3 URL:(id)a4 error:(id *)a5;
+ (BOOL)validateWithDictionary:(id)a3 error:(id *)a4;
+ (id)createGraphDictWithNode:(id)a3;
- (BOOL)checkStackValidityWithError:(id *)a3;
- (BOOL)savePstackWithURL:(id)a3 error:(id *)a4;
- (BOOL)setActiveNodeWithTag:(id)a3 error:(id *)a4;
- (BOOL)setActiveNodeWithUUID:(id)a3 error:(id *)a4;
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
  v7 = [a3 readDataUpToLength:0x100000 error:a5];
  if (v7)
  {
    v8 = [NSPropertyListSerialization propertyListWithData:v7 options:2 format:0 error:0];
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
        if (sub_1000E044C())
        {
          v13 = sub_1000E03D8();
          os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
          *buf = 68157954;
          v20 = 57;
          v21 = 2080;
          v22 = "+[DiskImageGraph loadPlistDictFromFileHandle:dict:error:]";
          LODWORD(v18) = 18;
          v17 = buf;
          v14 = _os_log_send_and_compose_impl();

          if (v14)
          {
            fprintf(__stderrp, "%s\n", v14);
            free(v14);
          }
        }

        else
        {
          v15 = sub_1000E03D8();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68157954;
            v20 = 57;
            v21 = 2080;
            v22 = "+[DiskImageGraph loadPlistDictFromFileHandle:dict:error:]";
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%.*s: A valid plist was given, but it has no pstack version key", buf, 0x12u);
          }
        }

        *__error() = v12;
      }
    }

    v11 = [DiskImageGraph failWithNoPstackError:a5, v17, v18];
    goto LABEL_15;
  }

  v11 = 0;
LABEL_16:

  return v11;
}

+ (BOOL)failWithNoPstackError:(id *)a3
{
  v4 = +[NSMutableDictionary dictionary];
  [v4 setObject:@"Not a pstack." forKeyedSubscript:@"DIErrorVerboseInfo"];
  v5 = [NSError errorWithDomain:@"com.apple.DiskImages2.ErrorDomain" code:167 userInfo:v4];
  LOBYTE(a3) = [DIError failWithInError:v5 outError:a3];

  return a3;
}

+ (id)createGraphDictWithNode:(id)a3
{
  v3 = a3;
  v4 = [v3 toDictionary];
  v5 = [v4 mutableCopy];
  [v3 setPstackDict:v5];

  v6 = [v3 UUID];
  v7 = [v6 UUIDString];
  v8 = [v3 pstackDict];

  v9 = [NSMutableArray arrayWithObject:v8];
  v10 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"1.0", @"PstackVersion", v7, @"ActiveNode", v9, @"Images", 0];

  return v10;
}

- (DiskImageGraph)initWithPluginName:(id)a3 pluginParams:(id)a4 tag:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v32.receiver = self;
  v32.super_class = DiskImageGraph;
  v12 = [(DiskImageGraph *)&v32 init];
  if (!v12)
  {
    goto LABEL_4;
  }

  v13 = +[NSUUID UUID];
  if (v13)
  {
    v14 = v13;
    LOBYTE(v31) = 0;
    v15 = [[PluginDiskImageGraphNode alloc] initWithPluginName:v9 pluginParams:v10 tag:v11 UUID:v13 parentNode:0 metadata:0 isCache:v31];
    activeNode = v12->_activeNode;
    v12->_activeNode = &v15->super;
    v17 = v15;

    v18 = [DiskImageGraph createGraphDictWithNode:v17];
    graphDB = v12->_graphDB;
    v12->_graphDB = v18;

    v20 = objc_alloc_init(NSMutableDictionary);
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
  if (sub_1000E044C())
  {
    v27 = sub_1000E03D8();
    os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
    *buf = 68157954;
    v34 = 60;
    v35 = 2080;
    v36 = "[DiskImageGraph initWithPluginName:pluginParams:tag:error:]";
    v28 = _os_log_send_and_compose_impl();

    if (v28)
    {
      fprintf(__stderrp, "%s\n", v28);
      free(v28);
    }
  }

  else
  {
    v29 = sub_1000E03D8();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 68157954;
      v34 = 60;
      v35 = 2080;
      v36 = "[DiskImageGraph initWithPluginName:pluginParams:tag:error:]";
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%.*s: Failed to get UUID info of provided image.", buf, 0x12u);
    }
  }

  v25 = 0;
  *__error() = v26;
LABEL_12:

  return v25;
}

- (DiskImageGraph)initWithBaseImageURL:(id)a3 tag:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v25.receiver = self;
  v25.super_class = DiskImageGraph;
  v10 = [(DiskImageGraph *)&v25 init];
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

    v15 = objc_alloc_init(NSMutableDictionary);
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
  if (sub_1000E044C())
  {
    v21 = sub_1000E03D8();
    os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    *buf = 68157954;
    v27 = 49;
    v28 = 2080;
    v29 = "[DiskImageGraph initWithBaseImageURL:tag:error:]";
    v22 = _os_log_send_and_compose_impl();

    if (v22)
    {
      fprintf(__stderrp, "%s\n", v22);
      free(v22);
    }
  }

  else
  {
    v23 = sub_1000E03D8();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 68157954;
      v27 = 49;
      v28 = 2080;
      v29 = "[DiskImageGraph initWithBaseImageURL:tag:error:]";
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%.*s: Failed to get UUID info of provided image.", buf, 0x12u);
    }
  }

  v19 = 0;
  *__error() = v20;
LABEL_12:

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
  v5 = [NSMutableDictionary dictionaryWithDictionary:a3];
  if ([v5 validateAndPopObjectForKey:@"PstackVersion" className:objc_opt_class() isOptional:0 error:a4] && objc_msgSend(v5, "validateAndPopObjectForKey:className:isOptional:error:", @"ActiveNode", objc_opt_class(), 0, a4) && objc_msgSend(v5, "validateAndPopObjectForKey:className:isOptional:error:", @"Images", objc_opt_class(), 0, a4))
  {
    if ([v5 count])
    {
      v6 = [NSString stringWithFormat:@"Validation failed, input contains unexpected data."];
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

    v11 = [NSMutableDictionary dictionaryWithDictionary:v8];
    graphDB = v10->_graphDB;
    v10->_graphDB = v11;

    v13 = objc_alloc_init(NSMutableDictionary);
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
  v31 = sub_10017C938;
  v32 = sub_10017C948;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_10017C938;
  v26 = sub_10017C948;
  v27 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v8 count]);
  v9 = +[NSFileManager defaultManager];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10017C950;
  v17[3] = &unk_10022E690;
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
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10017CABC;
    v15[3] = &unk_10022E6B8;
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

- (id)cloneToURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(DiskImageGraph *)self graphDB];
  v8 = [NSMutableDictionary dictionaryWithDictionary:v7];

  v9 = [(DiskImageGraph *)self graphDB];
  v10 = [v9 objectForKeyedSubscript:@"Images"];

  v11 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v10 count]);
  [v8 setObject:v11 forKeyedSubscript:@"Images"];
  if (([v6 isFileURL] & 1) == 0)
  {
    v24 = @"Destination folder URL must be of 'file' scheme.";
    v25 = 22;
LABEL_15:
    v23 = [DIError nilWithPOSIXCode:v25 description:v24 error:a4];
    goto LABEL_16;
  }

  if (![v6 hasDirectoryPath] || (objc_msgSend(v6, "checkResourceIsReachableAndReturnError:", 0) & 1) == 0)
  {
    v24 = @"Destination folder URL must represent an existing folder.";
    v25 = 20;
    goto LABEL_15;
  }

  v27 = self;
  v28 = a4;
  v30 = v8;
  v31 = v6;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v29 = v10;
  obj = v10;
  v12 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v34;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v34 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v33 + 1) + 8 * i);
        v17 = [v16 mutableCopy];
        v18 = [v16 objectForKeyedSubscript:@"FilePath"];
        v19 = [v18 componentsSeparatedByString:@"/"];
        v20 = [v19 lastObject];
        [v17 setObject:v20 forKeyedSubscript:@"FilePath"];

        [v11 addObject:v17];
      }

      v13 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v13);
  }

  v21 = [(DiskImageGraph *)v27 nodes];
  v6 = v31;
  v22 = [DiskImageGraph copyDictNodesToFolder:v31 dict:v21 error:v28];

  if (v22)
  {
    v8 = v30;
    v23 = v30;
  }

  else
  {
    v23 = 0;
    v8 = v30;
  }

  v10 = v29;
LABEL_16:

  return v23;
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
  v24 = sub_10017C938;
  v25 = sub_10017C948;
  v26 = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10017CFD0;
  v17[3] = &unk_10022E6E0;
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

+ (BOOL)createNodesConnectivityWithNodesDict:(id)a3 error:(id *)a4
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_10017C938;
  v19 = sub_10017C948;
  v20 = 0;
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_10017D1B8;
  v12 = &unk_10022E708;
  v5 = a3;
  v13 = v5;
  v14 = &v15;
  [v5 enumerateKeysAndObjectsUsingBlock:&v9];
  v6 = v16[5];
  if (v6)
  {
    v7 = [DIError failWithInError:v6 outError:a4, v9, v10, v11, v12];
  }

  else
  {
    v7 = 1;
  }

  _Block_object_dispose(&v15, 8);
  return v7;
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
  v8 = [NSPropertyListSerialization dataWithPropertyList:a3 format:100 options:0 error:a5];
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
  v16[3] = sub_10017C938;
  v16[4] = sub_10017C948;
  v6 = a3;
  v17 = v6;
  v7 = [(DiskImageGraph *)self nodes];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10017D6A0;
  v15[3] = &unk_10022E730;
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

@end