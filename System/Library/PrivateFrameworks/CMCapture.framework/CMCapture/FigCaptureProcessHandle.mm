@interface FigCaptureProcessHandle
+ (id)handleForAuditToken:(id *)token error:(id *)error;
+ (id)handleForPID:(int)d error:(id *)error;
+ (void)initialize;
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (FigCaptureProcessHandle)nonRootSourceProcessHandleForVisibilityEndowment;
- (NSString)bundleIdentifier;
- (NSString)extensionContainingAppBundleIdentifier;
- (NSString)extensionPointIdentifier;
- (id)_ancestorPathWithinEndowmentTree:(id)tree root:(id)root visitedLinks:(id)links;
- (id)_initWithAuditToken:(id *)token error:(id *)error;
- (id)_initWithPID:(int)d error:(id *)error;
- (id)_initWithRBSProcessHandle:(id)handle bundleRecord:(id)record;
- (id)debugDescription;
- (id)description;
- (id)rbsProcessMonitorForEndowmentNamespace:(id)namespace serviceClass:(unsigned int)class updateHandler:(id)handler;
- (int)_nonRootSourcePIDForVisibilityEndowmentWithTree:(id)tree;
- (void)dealloc;
@end

@implementation FigCaptureProcessHandle

- (NSString)extensionPointIdentifier
{
  bundle = [(RBSProcessHandle *)self->_rbsProcessHandle bundle];

  return [bundle extensionPointIdentifier];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureProcessHandle;
  [(FigCaptureProcessHandle *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

+ (id)handleForAuditToken:(id *)token error:(id *)error
{
  v6 = [self alloc];
  v7 = *&token->var0[4];
  v9[0] = *token->var0;
  v9[1] = v7;
  return [v6 _initWithAuditToken:v9 error:error];
}

- (id)_initWithAuditToken:(id *)token error:(id *)error
{
  v13 = 0;
  v7 = *&token->var0[4];
  v11 = *token->var0;
  v12 = v7;
  v8 = [MEMORY[0x1E69C75D0] handleForIdentifier:objc_msgSend(MEMORY[0x1E696AD98] error:{"numberWithInt:", FigCaptureGetPIDFromAuditToken(&v11)), &v13}];
  if (v8)
  {
    v9 = *&token->var0[4];
    v11 = *token->var0;
    v12 = v9;
    return -[FigCaptureProcessHandle _initWithRBSProcessHandle:bundleRecord:](self, "_initWithRBSProcessHandle:bundleRecord:", v8, [MEMORY[0x1E6963620] bundleRecordForAuditToken:&v11 error:0]);
  }

  else
  {
    [(FigCaptureProcessHandle *)&v13 _initWithAuditToken:error error:self];
    return 0;
  }
}

+ (id)handleForPID:(int)d error:(id *)error
{
  v4 = [[self alloc] _initWithPID:*&d error:error];

  return v4;
}

- (id)_initWithPID:(int)d error:(id *)error
{
  v11 = 0;
  v6 = [MEMORY[0x1E69C75D0] handleForIdentifier:objc_msgSend(MEMORY[0x1E696AD98] error:{"numberWithInt:", *&d), &v11}];
  if (v6)
  {
    v7 = v6;
    v8 = MEMORY[0x1E6963620];
    [v6 auditToken];
    return -[FigCaptureProcessHandle _initWithRBSProcessHandle:bundleRecord:](self, "_initWithRBSProcessHandle:bundleRecord:", v7, [v8 bundleRecordForAuditToken:v10 error:0]);
  }

  else
  {
    [(FigCaptureProcessHandle *)&v11 _initWithPID:error error:self];
    return 0;
  }
}

- (id)_initWithRBSProcessHandle:(id)handle bundleRecord:(id)record
{
  v8.receiver = self;
  v8.super_class = FigCaptureProcessHandle;
  v6 = [(FigCaptureProcessHandle *)&v8 init];
  if (v6)
  {
    v6->_rbsProcessHandle = handle;
    v6->_bundleRecord = record;
  }

  return v6;
}

- (id)debugDescription
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"pid: %d", -[FigCaptureProcessHandle pid](self, "pid")];
  bundleIdentifier = [(FigCaptureProcessHandle *)self bundleIdentifier];
  if (bundleIdentifier)
  {
    [v3 appendFormat:@", bundleID: %@", bundleIdentifier];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p %@>", NSStringFromClass(v4), self, -[FigCaptureProcessHandle debugDescription](self, "debugDescription")];
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  result = self->_rbsProcessHandle;
  if (result)
  {
    return [($115C4C562B26FF47E01F9F4EA65B5887 *)result auditToken];
  }

  *retstr->var0 = 0u;
  *&retstr->var0[4] = 0u;
  return result;
}

- (NSString)bundleIdentifier
{
  bundle = [(RBSProcessHandle *)self->_rbsProcessHandle bundle];

  return [bundle identifier];
}

- (id)rbsProcessMonitorForEndowmentNamespace:(id)namespace serviceClass:(unsigned int)class updateHandler:(id)handler
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __107__FigCaptureProcessHandle_RunningBoard__rbsProcessMonitorForEndowmentNamespace_serviceClass_updateHandler___block_invoke;
  v6[3] = &unk_1E799DB38;
  v6[4] = namespace;
  v6[5] = self;
  classCopy = class;
  v6[6] = handler;
  return [MEMORY[0x1E69C75F8] monitorWithConfiguration:v6];
}

uint64_t __107__FigCaptureProcessHandle_RunningBoard__rbsProcessMonitorForEndowmentNamespace_serviceClass_updateHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = [MEMORY[0x1E69C7630] descriptor];
  v7 = *(a1 + 32);
  [v4 setEndowmentNamespaces:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v7, 1)}];
  [v4 setValues:32];
  [a2 setStateDescriptor:v4];
  v6 = [MEMORY[0x1E69C7610] predicateMatchingIdentifier:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", objc_msgSend(*(a1 + 40), "pid"))}];
  [a2 setPredicates:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v6, 1)}];
  [a2 setServiceClass:*(a1 + 56)];
  return [a2 setUpdateHandler:*(a1 + 48)];
}

- (FigCaptureProcessHandle)nonRootSourceProcessHandleForVisibilityEndowment
{
  v3 = -[FigCaptureProcessHandle _nonRootSourcePIDForVisibilityEndowmentWithTree:](self, "_nonRootSourcePIDForVisibilityEndowmentWithTree:", [MEMORY[0x1E69C7580] endowmentTreeForNamespace:*MEMORY[0x1E699F9D0]]);
  if (v3 == [(FigCaptureProcessHandle *)self pid])
  {
    selfCopy = self;

    return selfCopy;
  }

  else if (v3 == -1)
  {
    return 0;
  }

  else
  {

    return [FigCaptureProcessHandle handleForPID:v3 error:0];
  }
}

- (int)_nonRootSourcePIDForVisibilityEndowmentWithTree:(id)tree
{
  treeCopy = tree;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = [tree rootLinks];
  v5 = [obj countByEnumeratingWithState:&v33 objects:v32 count:16];
  if (!v5)
  {
    return -1;
  }

  v6 = v5;
  v7 = *v34;
  targetPid = -1;
  v8 = 0x1E695D000uLL;
  selfCopy = self;
  v24 = treeCopy;
  v22 = *v34;
  do
  {
    v9 = 0;
    v25 = v6;
    do
    {
      if (*v34 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v33 + 1) + 8 * v9);
      v11 = -[FigCaptureProcessHandle _ancestorPathWithinEndowmentTree:root:visitedLinks:](self, "_ancestorPathWithinEndowmentTree:root:visitedLinks:", treeCopy, v10, [*(v8 + 4056) set]);
      if (v11)
      {
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        reverseObjectEnumerator = [v11 reverseObjectEnumerator];
        v13 = [reverseObjectEnumerator countByEnumeratingWithState:&v28 objects:v27 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v29;
          while (2)
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v29 != v15)
              {
                objc_enumerationMutation(reverseObjectEnumerator);
              }

              v17 = *(*(&v28 + 1) + 8 * i);
              [v17 sourcePid];
              v18 = BSBundleIDForPID();
              sourcePid = [v17 sourcePid];
              if (sourcePid == [v10 sourcePid] || objc_msgSend(v18, "isEqualToString:", 0x1F21855F0))
              {
                targetPid = [v17 targetPid];
                goto LABEL_18;
              }
            }

            v14 = [reverseObjectEnumerator countByEnumeratingWithState:&v28 objects:v27 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }

LABEL_18:
          self = selfCopy;
          treeCopy = v24;
          v7 = v22;
          v6 = v25;
          v8 = 0x1E695D000;
        }
      }

      ++v9;
    }

    while (v9 != v6);
    v6 = [obj countByEnumeratingWithState:&v33 objects:v32 count:16];
  }

  while (v6);
  return targetPid;
}

- (id)_ancestorPathWithinEndowmentTree:(id)tree root:(id)root visitedLinks:(id)links
{
  targetPid = [root targetPid];
  if (targetPid == [(FigCaptureProcessHandle *)self pid])
  {
    rootCopy = root;
    return [MEMORY[0x1E695DEC8] arrayWithObjects:&rootCopy count:1];
  }

  else
  {
    v11 = [links setByAddingObject:root];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = [tree childrenLinks:root];
    result = [v12 countByEnumeratingWithState:&v20 objects:v19 count:16];
    if (result)
    {
      v13 = result;
      v14 = *v21;
      while (2)
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v20 + 1) + 8 * i);
          if (([v11 containsObject:v16] & 1) == 0)
          {
            v17 = [(FigCaptureProcessHandle *)self _ancestorPathWithinEndowmentTree:tree root:v16 visitedLinks:v11];
            if (v17)
            {
              rootCopy2 = root;
              return [objc_msgSend(MEMORY[0x1E695DEC8] arrayWithObjects:&rootCopy2 count:{1), "arrayByAddingObjectsFromArray:", v17}];
            }
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v20 objects:v19 count:16];
        result = 0;
        if (v13)
        {
          continue;
        }

        break;
      }
    }
  }

  return result;
}

- (NSString)extensionContainingAppBundleIdentifier
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  containingBundleRecord = [(LSBundleRecord *)self->_bundleRecord containingBundleRecord];

  return [containingBundleRecord bundleIdentifier];
}

- (void)_initWithAuditToken:(void *)a3 error:.cold.1(void *a1, void *a2, void *a3)
{
  FigDebugAssert3();
  if (a2 && *a1)
  {
    *a2 = *a1;
  }
}

- (void)_initWithPID:(void *)a3 error:.cold.1(void *a1, void *a2, void *a3)
{
  FigDebugAssert3();
  if (a2 && *a1)
  {
    *a2 = *a1;
  }
}

@end