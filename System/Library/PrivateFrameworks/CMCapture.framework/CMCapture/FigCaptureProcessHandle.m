@interface FigCaptureProcessHandle
+ (id)handleForAuditToken:(id *)a3 error:(id *)a4;
+ (id)handleForPID:(int)a3 error:(id *)a4;
+ (void)initialize;
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (FigCaptureProcessHandle)nonRootSourceProcessHandleForVisibilityEndowment;
- (NSString)bundleIdentifier;
- (NSString)extensionContainingAppBundleIdentifier;
- (NSString)extensionPointIdentifier;
- (id)_ancestorPathWithinEndowmentTree:(id)a3 root:(id)a4 visitedLinks:(id)a5;
- (id)_initWithAuditToken:(id *)a3 error:(id *)a4;
- (id)_initWithPID:(int)a3 error:(id *)a4;
- (id)_initWithRBSProcessHandle:(id)a3 bundleRecord:(id)a4;
- (id)debugDescription;
- (id)description;
- (id)rbsProcessMonitorForEndowmentNamespace:(id)a3 serviceClass:(unsigned int)a4 updateHandler:(id)a5;
- (int)_nonRootSourcePIDForVisibilityEndowmentWithTree:(id)a3;
- (void)dealloc;
@end

@implementation FigCaptureProcessHandle

- (NSString)extensionPointIdentifier
{
  v2 = [(RBSProcessHandle *)self->_rbsProcessHandle bundle];

  return [v2 extensionPointIdentifier];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureProcessHandle;
  [(FigCaptureProcessHandle *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

+ (id)handleForAuditToken:(id *)a3 error:(id *)a4
{
  v6 = [a1 alloc];
  v7 = *&a3->var0[4];
  v9[0] = *a3->var0;
  v9[1] = v7;
  return [v6 _initWithAuditToken:v9 error:a4];
}

- (id)_initWithAuditToken:(id *)a3 error:(id *)a4
{
  v13 = 0;
  v7 = *&a3->var0[4];
  v11 = *a3->var0;
  v12 = v7;
  v8 = [MEMORY[0x1E69C75D0] handleForIdentifier:objc_msgSend(MEMORY[0x1E696AD98] error:{"numberWithInt:", FigCaptureGetPIDFromAuditToken(&v11)), &v13}];
  if (v8)
  {
    v9 = *&a3->var0[4];
    v11 = *a3->var0;
    v12 = v9;
    return -[FigCaptureProcessHandle _initWithRBSProcessHandle:bundleRecord:](self, "_initWithRBSProcessHandle:bundleRecord:", v8, [MEMORY[0x1E6963620] bundleRecordForAuditToken:&v11 error:0]);
  }

  else
  {
    [(FigCaptureProcessHandle *)&v13 _initWithAuditToken:a4 error:self];
    return 0;
  }
}

+ (id)handleForPID:(int)a3 error:(id *)a4
{
  v4 = [[a1 alloc] _initWithPID:*&a3 error:a4];

  return v4;
}

- (id)_initWithPID:(int)a3 error:(id *)a4
{
  v11 = 0;
  v6 = [MEMORY[0x1E69C75D0] handleForIdentifier:objc_msgSend(MEMORY[0x1E696AD98] error:{"numberWithInt:", *&a3), &v11}];
  if (v6)
  {
    v7 = v6;
    v8 = MEMORY[0x1E6963620];
    [v6 auditToken];
    return -[FigCaptureProcessHandle _initWithRBSProcessHandle:bundleRecord:](self, "_initWithRBSProcessHandle:bundleRecord:", v7, [v8 bundleRecordForAuditToken:v10 error:0]);
  }

  else
  {
    [(FigCaptureProcessHandle *)&v11 _initWithPID:a4 error:self];
    return 0;
  }
}

- (id)_initWithRBSProcessHandle:(id)a3 bundleRecord:(id)a4
{
  v8.receiver = self;
  v8.super_class = FigCaptureProcessHandle;
  v6 = [(FigCaptureProcessHandle *)&v8 init];
  if (v6)
  {
    v6->_rbsProcessHandle = a3;
    v6->_bundleRecord = a4;
  }

  return v6;
}

- (id)debugDescription
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"pid: %d", -[FigCaptureProcessHandle pid](self, "pid")];
  v4 = [(FigCaptureProcessHandle *)self bundleIdentifier];
  if (v4)
  {
    [v3 appendFormat:@", bundleID: %@", v4];
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
  v2 = [(RBSProcessHandle *)self->_rbsProcessHandle bundle];

  return [v2 identifier];
}

- (id)rbsProcessMonitorForEndowmentNamespace:(id)a3 serviceClass:(unsigned int)a4 updateHandler:(id)a5
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __107__FigCaptureProcessHandle_RunningBoard__rbsProcessMonitorForEndowmentNamespace_serviceClass_updateHandler___block_invoke;
  v6[3] = &unk_1E799DB38;
  v6[4] = a3;
  v6[5] = self;
  v7 = a4;
  v6[6] = a5;
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
    v4 = self;

    return v4;
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

- (int)_nonRootSourcePIDForVisibilityEndowmentWithTree:(id)a3
{
  v3 = a3;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = [a3 rootLinks];
  v5 = [obj countByEnumeratingWithState:&v33 objects:v32 count:16];
  if (!v5)
  {
    return -1;
  }

  v6 = v5;
  v7 = *v34;
  v21 = -1;
  v8 = 0x1E695D000uLL;
  v23 = self;
  v24 = v3;
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
      v11 = -[FigCaptureProcessHandle _ancestorPathWithinEndowmentTree:root:visitedLinks:](self, "_ancestorPathWithinEndowmentTree:root:visitedLinks:", v3, v10, [*(v8 + 4056) set]);
      if (v11)
      {
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v12 = [v11 reverseObjectEnumerator];
        v13 = [v12 countByEnumeratingWithState:&v28 objects:v27 count:16];
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
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v28 + 1) + 8 * i);
              [v17 sourcePid];
              v18 = BSBundleIDForPID();
              v19 = [v17 sourcePid];
              if (v19 == [v10 sourcePid] || objc_msgSend(v18, "isEqualToString:", 0x1F21855F0))
              {
                v21 = [v17 targetPid];
                goto LABEL_18;
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v28 objects:v27 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }

LABEL_18:
          self = v23;
          v3 = v24;
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
  return v21;
}

- (id)_ancestorPathWithinEndowmentTree:(id)a3 root:(id)a4 visitedLinks:(id)a5
{
  v9 = [a4 targetPid];
  if (v9 == [(FigCaptureProcessHandle *)self pid])
  {
    v24 = a4;
    return [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
  }

  else
  {
    v11 = [a5 setByAddingObject:a4];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = [a3 childrenLinks:a4];
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
            v17 = [(FigCaptureProcessHandle *)self _ancestorPathWithinEndowmentTree:a3 root:v16 visitedLinks:v11];
            if (v17)
            {
              v18 = a4;
              return [objc_msgSend(MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:{1), "arrayByAddingObjectsFromArray:", v17}];
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

  v3 = [(LSBundleRecord *)self->_bundleRecord containingBundleRecord];

  return [v3 bundleIdentifier];
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