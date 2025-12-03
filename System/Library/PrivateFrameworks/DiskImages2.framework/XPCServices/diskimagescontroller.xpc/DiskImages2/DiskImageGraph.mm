@interface DiskImageGraph
+ (BOOL)copyDictNodesToFolder:(id)folder dict:(id)dict error:(id *)error;
+ (BOOL)createNodesConnectivityWithNodesDict:(id)dict error:(id *)error;
+ (BOOL)failWithNoPstackError:(id *)error;
+ (BOOL)loadPlistDictFromFileHandle:(id)handle dict:(id *)dict error:(id *)error;
+ (BOOL)populateNodesDictsWithArray:(id)array workDir:(id)dir nodesDict:(id)dict error:(id *)error;
+ (BOOL)saveToPlistWithDictionary:(id)dictionary URL:(id)l error:(id *)error;
+ (BOOL)validateWithDictionary:(id)dictionary error:(id *)error;
+ (id)createGraphDictWithNode:(id)node;
- (BOOL)checkStackValidityWithError:(id *)error;
- (BOOL)savePstackWithURL:(id)l error:(id *)error;
- (BOOL)setActiveNodeWithTag:(id)tag error:(id *)error;
- (BOOL)setActiveNodeWithUUID:(id)d error:(id *)error;
- (DiskImageGraph)initWithBaseImageURL:(id)l newPstackURL:(id)rL tag:(id)tag error:(id *)error;
- (DiskImageGraph)initWithBaseImageURL:(id)l tag:(id)tag error:(id *)error;
- (DiskImageGraph)initWithGraphDB:(id)b workDir:(id)dir error:(id *)error;
- (DiskImageGraph)initWithPluginName:(id)name pluginParams:(id)params tag:(id)tag error:(id *)error;
- (DiskImageGraph)initWithPstackURL:(id)l error:(id *)error;
- (DiskImageGraphNode)rootNode;
- (NSMutableArray)imagesDictsArray;
- (id)cloneToURL:(id)l error:(id *)error;
- (id)getImageWithTag:(id)tag error:(id *)error;
- (id)getImageWithUUID:(id)d error:(id *)error;
- (void)setActiveNode:(id)node;
@end

@implementation DiskImageGraph

+ (BOOL)loadPlistDictFromFileHandle:(id)handle dict:(id *)dict error:(id *)error
{
  v7 = [handle readDataUpToLength:0x100000 error:error];
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
          *dict = v8;
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

    v11 = [DiskImageGraph failWithNoPstackError:error, v17, v18];
    goto LABEL_15;
  }

  v11 = 0;
LABEL_16:

  return v11;
}

+ (BOOL)failWithNoPstackError:(id *)error
{
  v4 = +[NSMutableDictionary dictionary];
  [v4 setObject:@"Not a pstack." forKeyedSubscript:@"DIErrorVerboseInfo"];
  v5 = [NSError errorWithDomain:@"com.apple.DiskImages2.ErrorDomain" code:167 userInfo:v4];
  LOBYTE(error) = [DIError failWithInError:v5 outError:error];

  return error;
}

+ (id)createGraphDictWithNode:(id)node
{
  nodeCopy = node;
  toDictionary = [nodeCopy toDictionary];
  v5 = [toDictionary mutableCopy];
  [nodeCopy setPstackDict:v5];

  uUID = [nodeCopy UUID];
  uUIDString = [uUID UUIDString];
  pstackDict = [nodeCopy pstackDict];

  v9 = [NSMutableArray arrayWithObject:pstackDict];
  v10 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"1.0", @"PstackVersion", uUIDString, @"ActiveNode", v9, @"Images", 0];

  return v10;
}

- (DiskImageGraph)initWithPluginName:(id)name pluginParams:(id)params tag:(id)tag error:(id *)error
{
  nameCopy = name;
  paramsCopy = params;
  tagCopy = tag;
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
    v15 = [[PluginDiskImageGraphNode alloc] initWithPluginName:nameCopy pluginParams:paramsCopy tag:tagCopy UUID:v13 parentNode:0 metadata:0 isCache:v31];
    activeNode = v12->_activeNode;
    v12->_activeNode = &v15->super;
    v17 = v15;

    v18 = [DiskImageGraph createGraphDictWithNode:v17];
    graphDB = v12->_graphDB;
    v12->_graphDB = v18;

    v20 = objc_alloc_init(NSMutableDictionary);
    nodes = v12->_nodes;
    v12->_nodes = v20;

    nodes = [(DiskImageGraph *)v12 nodes];
    uUID = [(DiskImageGraphNode *)v17 UUID];
    uUIDString = [uUID UUIDString];
    [nodes setObject:v17 forKeyedSubscript:uUIDString];

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

- (DiskImageGraph)initWithBaseImageURL:(id)l tag:(id)tag error:(id *)error
{
  lCopy = l;
  tagCopy = tag;
  v25.receiver = self;
  v25.super_class = DiskImageGraph;
  v10 = [(DiskImageGraph *)&v25 init];
  if (!v10)
  {
    goto LABEL_4;
  }

  v11 = [DiskImageGraph getImageUUIDWithURL:lCopy allowMissingUUID:1 error:error];
  if (v11)
  {
    v12 = v11;
    v13 = [[NativeDiskImageGraphNode alloc] initWithURL:lCopy tag:tagCopy UUID:v11 parentNode:0 metadata:0 isCache:0];
    [(DiskImageGraph *)v10 setActiveNode:v13];
    v14 = [DiskImageGraph createGraphDictWithNode:v13];
    [(DiskImageGraph *)v10 setGraphDB:v14];

    v15 = objc_alloc_init(NSMutableDictionary);
    [(DiskImageGraph *)v10 setNodes:v15];

    nodes = [(DiskImageGraph *)v10 nodes];
    uUID = [(DiskImageGraphNode *)v13 UUID];
    uUIDString = [uUID UUIDString];
    [nodes setObject:v13 forKeyedSubscript:uUIDString];

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

- (DiskImageGraph)initWithBaseImageURL:(id)l newPstackURL:(id)rL tag:(id)tag error:(id *)error
{
  rLCopy = rL;
  tagCopy = tag;
  lCopy = l;
  if (rLCopy)
  {
    selfCopy = [[SerializedDiskImageGraph alloc] initWithBaseImageURL:lCopy pstackURL:rLCopy tag:tagCopy error:error];
  }

  else
  {
    v14 = [(DiskImageGraph *)self initWithBaseImageURL:lCopy tag:tagCopy error:error];

    self = v14;
    selfCopy = self;
  }

  return &selfCopy->super;
}

- (NSMutableArray)imagesDictsArray
{
  graphDB = [(DiskImageGraph *)self graphDB];
  v3 = [graphDB objectForKeyedSubscript:@"Images"];

  return v3;
}

+ (BOOL)validateWithDictionary:(id)dictionary error:(id *)error
{
  v5 = [NSMutableDictionary dictionaryWithDictionary:dictionary];
  if ([v5 validateAndPopObjectForKey:@"PstackVersion" className:objc_opt_class() isOptional:0 error:error] && objc_msgSend(v5, "validateAndPopObjectForKey:className:isOptional:error:", @"ActiveNode", objc_opt_class(), 0, error) && objc_msgSend(v5, "validateAndPopObjectForKey:className:isOptional:error:", @"Images", objc_opt_class(), 0, error))
  {
    if ([v5 count])
    {
      v6 = [NSString stringWithFormat:@"Validation failed, input contains unexpected data."];
      v7 = [DIError failWithPOSIXCode:22 verboseInfo:v6 error:error];
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

- (DiskImageGraph)initWithGraphDB:(id)b workDir:(id)dir error:(id *)error
{
  bCopy = b;
  dirCopy = dir;
  v24.receiver = self;
  v24.super_class = DiskImageGraph;
  v10 = [(DiskImageGraph *)&v24 init];
  if (v10)
  {
    if (![DiskImageGraph validateWithDictionary:bCopy error:error])
    {
      goto LABEL_9;
    }

    v11 = [NSMutableDictionary dictionaryWithDictionary:bCopy];
    graphDB = v10->_graphDB;
    v10->_graphDB = v11;

    v13 = objc_alloc_init(NSMutableDictionary);
    nodes = v10->_nodes;
    v10->_nodes = v13;

    v15 = [(NSMutableDictionary *)v10->_graphDB objectForKeyedSubscript:@"Images"];
    v16 = [DiskImageGraph populateNodesDictsWithArray:v15 workDir:dirCopy nodesDict:v10->_nodes error:error];

    if (!v16)
    {
      goto LABEL_9;
    }

    nodes = [(DiskImageGraph *)v10 nodes];
    v18 = [(NSMutableDictionary *)v10->_graphDB objectForKeyedSubscript:@"ActiveNode"];
    v19 = [nodes objectForKey:v18];
    activeNode = v10->_activeNode;
    v10->_activeNode = v19;

    if (!v19)
    {
      error = [DIError nilWithPOSIXCode:22 description:@"Bad pstack format error:node with active UUID not found.", error];
      goto LABEL_8;
    }

    if (![DiskImageGraph createNodesConnectivityWithNodesDict:v10->_nodes error:error]|| ![(DiskImageGraph *)v10 checkStackValidityWithError:error])
    {
LABEL_9:
      v22 = 0;
      goto LABEL_10;
    }
  }

  error = v10;
LABEL_8:
  v22 = error;
LABEL_10:

  return v22;
}

- (DiskImageGraph)initWithPstackURL:(id)l error:(id *)error
{
  lCopy = l;
  v7 = [[SerializedDiskImageGraph alloc] initWithPstackURL:lCopy error:error];

  return &v7->super;
}

+ (BOOL)copyDictNodesToFolder:(id)folder dict:(id)dict error:(id *)error
{
  folderCopy = folder;
  dictCopy = dict;
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
  v27 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [dictCopy count]);
  v9 = +[NSFileManager defaultManager];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10017C950;
  v17[3] = &unk_10022E690;
  v20 = &v28;
  v10 = folderCopy;
  v18 = v10;
  v11 = v9;
  v19 = v11;
  v21 = &v22;
  [dictCopy enumerateKeysAndObjectsUsingBlock:v17];
  if (v29[5])
  {
    v12 = v23[5];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10017CABC;
    v15[3] = &unk_10022E6B8;
    v16 = v11;
    [v12 enumerateObjectsUsingBlock:v15];
    v13 = [DIError failWithInError:v29[5] outError:error];
  }

  else
  {
    v13 = 1;
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  return v13;
}

- (id)cloneToURL:(id)l error:(id *)error
{
  lCopy = l;
  graphDB = [(DiskImageGraph *)self graphDB];
  v8 = [NSMutableDictionary dictionaryWithDictionary:graphDB];

  graphDB2 = [(DiskImageGraph *)self graphDB];
  v10 = [graphDB2 objectForKeyedSubscript:@"Images"];

  v11 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v10 count]);
  [v8 setObject:v11 forKeyedSubscript:@"Images"];
  if (([lCopy isFileURL] & 1) == 0)
  {
    v24 = @"Destination folder URL must be of 'file' scheme.";
    v25 = 22;
LABEL_15:
    v23 = [DIError nilWithPOSIXCode:v25 description:v24 error:error];
    goto LABEL_16;
  }

  if (![lCopy hasDirectoryPath] || (objc_msgSend(lCopy, "checkResourceIsReachableAndReturnError:", 0) & 1) == 0)
  {
    v24 = @"Destination folder URL must represent an existing folder.";
    v25 = 20;
    goto LABEL_15;
  }

  selfCopy = self;
  errorCopy = error;
  v30 = v8;
  v31 = lCopy;
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
        lastObject = [v19 lastObject];
        [v17 setObject:lastObject forKeyedSubscript:@"FilePath"];

        [v11 addObject:v17];
      }

      v13 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v13);
  }

  nodes = [(DiskImageGraph *)selfCopy nodes];
  lCopy = v31;
  v22 = [DiskImageGraph copyDictNodesToFolder:v31 dict:nodes error:errorCopy];

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

- (void)setActiveNode:(id)node
{
  objc_storeStrong(&self->_activeNode, node);
  nodeCopy = node;
  uUID = [nodeCopy UUID];
  uUIDString = [uUID UUIDString];
  [(NSMutableDictionary *)self->_graphDB setObject:uUIDString forKeyedSubscript:@"ActiveNode"];
}

+ (BOOL)populateNodesDictsWithArray:(id)array workDir:(id)dir nodesDict:(id)dict error:(id *)error
{
  arrayCopy = array;
  dirCopy = dir;
  dictCopy = dict;
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
  v12 = dirCopy;
  v18 = v12;
  v20 = &v21;
  v13 = dictCopy;
  v19 = v13;
  [arrayCopy enumerateObjectsUsingBlock:v17];
  v14 = v22[5];
  if (v14)
  {
    v15 = [DIError failWithInError:v14 outError:error];
  }

  else
  {
    v15 = 1;
  }

  _Block_object_dispose(&v21, 8);
  return v15;
}

+ (BOOL)createNodesConnectivityWithNodesDict:(id)dict error:(id *)error
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
  dictCopy = dict;
  v13 = dictCopy;
  v14 = &v15;
  [dictCopy enumerateKeysAndObjectsUsingBlock:&v9];
  v6 = v16[5];
  if (v6)
  {
    v7 = [DIError failWithInError:v6 outError:error, v9, v10, v11, v12];
  }

  else
  {
    v7 = 1;
  }

  _Block_object_dispose(&v15, 8);
  return v7;
}

- (BOOL)checkStackValidityWithError:(id *)error
{
  activeNode = [(DiskImageGraph *)self activeNode];
  v6 = -1;
  while (activeNode)
  {
    parent = [activeNode parent];

    nodes = [(DiskImageGraph *)self nodes];
    v9 = [nodes count];

    ++v6;
    activeNode = parent;
    if (v9 <= v6)
    {
      error = [DIError failWithPOSIXCode:22 verboseInfo:@"Invalid pstack error:Active stack contains a loop.", error];

      return error;
    }
  }

  return 1;
}

+ (BOOL)saveToPlistWithDictionary:(id)dictionary URL:(id)l error:(id *)error
{
  lCopy = l;
  v8 = [NSPropertyListSerialization dataWithPropertyList:dictionary format:100 options:0 error:error];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 writeToURL:lCopy options:1 error:error];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)setActiveNodeWithUUID:(id)d error:(id *)error
{
  dCopy = d;
  nodes = [(DiskImageGraph *)self nodes];
  uUIDString = [dCopy UUIDString];

  v9 = [nodes objectForKeyedSubscript:uUIDString];

  if (v9)
  {
    [(DiskImageGraph *)self setActiveNode:v9];
    v10 = 1;
  }

  else
  {
    v10 = [DIError failWithPOSIXCode:22 verboseInfo:@"Cannot find image with provided UUID." error:error];
  }

  return v10;
}

- (id)getImageWithTag:(id)tag error:(id *)error
{
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = sub_10017C938;
  v16[4] = sub_10017C948;
  tagCopy = tag;
  v17 = tagCopy;
  nodes = [(DiskImageGraph *)self nodes];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10017D6A0;
  v15[3] = &unk_10022E730;
  v15[4] = v16;
  v8 = [nodes keysOfEntriesPassingTest:v15];

  if ([v8 count])
  {
    if ([v8 count] == 1)
    {
      nodes2 = [(DiskImageGraph *)self nodes];
      anyObject = [v8 anyObject];
      v11 = [nodes2 objectForKey:anyObject];

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

  v11 = [DIError nilWithPOSIXCode:v13 verboseInfo:v12 error:error];
LABEL_7:

  _Block_object_dispose(v16, 8);

  return v11;
}

- (id)getImageWithUUID:(id)d error:(id *)error
{
  dCopy = d;
  nodes = [(DiskImageGraph *)self nodes];
  uUIDString = [dCopy UUIDString];

  v9 = [nodes objectForKeyedSubscript:uUIDString];

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = [DIError nilWithPOSIXCode:2 verboseInfo:@"Cannot find image with provided uuid." error:error];
  }

  v11 = v10;

  return v11;
}

- (BOOL)setActiveNodeWithTag:(id)tag error:(id *)error
{
  v5 = [(DiskImageGraph *)self getImageWithTag:tag error:error];
  if (v5)
  {
    [(DiskImageGraph *)self setActiveNode:v5];
  }

  return v5 != 0;
}

- (BOOL)savePstackWithURL:(id)l error:(id *)error
{
  lCopy = l;
  graphDB = [(DiskImageGraph *)self graphDB];
  LOBYTE(error) = [DiskImageGraph saveToPlistWithDictionary:graphDB URL:lCopy error:error];

  return error;
}

- (DiskImageGraphNode)rootNode
{
  activeNode = [(DiskImageGraph *)self activeNode];
  parent = [activeNode parent];

  if (parent)
  {
    do
    {
      parent2 = [activeNode parent];

      v4Parent = [parent2 parent];

      activeNode = parent2;
    }

    while (v4Parent);
  }

  else
  {
    parent2 = activeNode;
  }

  return parent2;
}

@end