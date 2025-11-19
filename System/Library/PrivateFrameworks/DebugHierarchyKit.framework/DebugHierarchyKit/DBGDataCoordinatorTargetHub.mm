@interface DBGDataCoordinatorTargetHub
- (id)_createNodeWithDict:(id)a3;
- (id)_decompressedDataForRequestResponseData:(id)a3;
- (id)compatibility_modernizedPropertyDescription:(id)a3 targetVersion:(float)a4;
- (void)_addNodeToMatchingRootLevelGroup:(id)a3;
- (void)_processFetchResults:(id)a3 forRequest:(id)a4;
- (void)_processRequestLogs:(id)a3 forRequest:(id)a4;
- (void)_updateComputedPropertiesOfNode:(id)a3;
- (void)_updateGroup:(id)a3 withDict:(id)a4;
- (void)_updateNode:(id)a3 withDict:(id)a4;
- (void)_updatePropertiesWithDicts:(id)a3 onNode:(id)a4;
- (void)_updateProperty:(id)a3 withDict:(id)a4;
- (void)_updateSnapshotWithResponse:(id)a3 forRequest:(id)a4;
- (void)_updateSubHierarchyOfProperty:(id)a3;
- (void)_updateSubpropertiesWithDicts:(id)a3 onProperty:(id)a4;
- (void)_writeRequestResponseToDiskIfNecessary:(id)a3 request:(id)a4 compressedSize:(unint64_t)a5;
- (void)didReceiveData:(id)a3 forRequest:(id)a4;
- (void)processDebugHierarchyObjectDict:(id)a3 inGroup:(id)a4 isDirectChildGroup:(BOOL)a5;
@end

@implementation DBGDataCoordinatorTargetHub

- (void)didReceiveData:(id)a3 forRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = DBGDataCoordinatorTargetHub;
  [(DBGDataCoordinator *)&v12 didReceiveData:v6 forRequest:v7];
  if (v6)
  {
    v8 = [(DBGDataCoordinatorTargetHub *)self _decompressedDataForRequestResponseData:v6];
    if (v8)
    {
      v11 = 0;
      v9 = [NSDictionary dictionaryWithJSONData:v8 error:&v11];
      v10 = v11;
      -[DBGDataCoordinatorTargetHub _writeRequestResponseToDiskIfNecessary:request:compressedSize:](self, "_writeRequestResponseToDiskIfNecessary:request:compressedSize:", v9, v7, [v6 length]);
      if (v10)
      {
LABEL_7:

        goto LABEL_8;
      }
    }

    else
    {
      v9 = 0;
    }

    [(DBGDataCoordinatorTargetHub *)self _processFetchResults:v9 forRequest:v7];
    v10 = 0;
    goto LABEL_7;
  }

LABEL_8:
}

- (id)_decompressedDataForRequestResponseData:(id)a3
{
  v4 = a3;
  v5 = [(DBGDataCoordinator *)self dataSourceConnection];
  [v5 debugHierarchyVersion];
  v7 = v6;

  if (v7 <= 2.1)
  {
    [v4 dbg_gzipInflateRaw];
  }

  else
  {
    [v4 dbg_gzipInflateIfCompressed];
  }
  v8 = ;

  return v8;
}

- (void)_processFetchResults:(id)a3 forRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = DebugHierarchySnapshotModelOSLog();
  v9 = os_signpost_id_make_with_pointer(v8, v7);
  v10 = v8;
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v12 = [v7 name];
    v53 = 136446466;
    v54 = "All";
    v55 = 2114;
    v56 = v12;
    _os_signpost_emit_with_name_impl(&dword_0, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "Process Fetch Results", "Process: %{public}s (%{public}@)", &v53, 0x16u);
  }

  v13 = [v6 objectForKeyedSubscript:DebugHierarchyRequestKey];
  if (v13)
  {
    v14 = [DebugHierarchyRequest requestWithDictionary:v13];
    if ([v6 count] == &dword_0 + 1)
    {
      [v7 setStatus:-2];
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = DebugHierarchySnapshotModelOSLog();
  v16 = [v14 logs];
  v17 = os_signpost_id_make_with_pointer(v15, v16);

  v18 = v15;
  v19 = v18;
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    v20 = [v7 name];
    v53 = 136446466;
    v54 = "Logs";
    v55 = 2114;
    v56 = v20;
    _os_signpost_emit_with_name_impl(&dword_0, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "Process Fetch Results", "Process: %{public}s (%{public}@)", &v53, 0x16u);
  }

  v21 = [v14 logs];
  [(DBGDataCoordinatorTargetHub *)self _processRequestLogs:v21 forRequest:v7];

  v22 = DebugHierarchySnapshotModelOSLog();
  v23 = [v14 logs];
  v24 = os_signpost_id_make_with_pointer(v22, v23);

  v25 = v22;
  v26 = v25;
  if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
  {
    LOWORD(v53) = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v26, OS_SIGNPOST_INTERVAL_END, v24, "Process Fetch Results", "Completed", &v53, 2u);
  }

  v27 = [v6 objectForKeyedSubscript:DebugHierarchyRequestRuntimeInformationKey];
  v28 = DebugHierarchySnapshotModelOSLog();
  v29 = os_signpost_id_make_with_pointer(v28, v27);
  v30 = v28;
  v31 = v30;
  if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
  {
    v32 = [v7 name];
    v53 = 136446466;
    v54 = "Runtime Info";
    v55 = 2114;
    v56 = v32;
    _os_signpost_emit_with_name_impl(&dword_0, v31, OS_SIGNPOST_INTERVAL_BEGIN, v29, "Process Fetch Results", "Process: %{public}s (%{public}@)", &v53, 0x16u);
  }

  if ([v27 count])
  {
    v33 = [DebugHierarchyRuntimeInfo runtimeInfoWithSerializedRepresentation:v27];
    v34 = [(DBGDataCoordinator *)self snapshotManager];
    v35 = [v34 runtimeInfo];
    [v35 mergeWith:v33];
  }

  v36 = DebugHierarchySnapshotModelOSLog();
  v37 = os_signpost_id_make_with_pointer(v36, v27);
  v38 = v36;
  v39 = v38;
  if (v37 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
  {
    LOWORD(v53) = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v39, OS_SIGNPOST_INTERVAL_END, v37, "Process Fetch Results", "Completed", &v53, 2u);
  }

  v40 = DebugHierarchySnapshotModelOSLog();
  v41 = os_signpost_id_make_with_pointer(v40, v6);
  v42 = v40;
  v43 = v42;
  if (v41 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v42))
  {
    v44 = [v7 name];
    v53 = 136446466;
    v54 = "Snapshot Model";
    v55 = 2114;
    v56 = v44;
    _os_signpost_emit_with_name_impl(&dword_0, v43, OS_SIGNPOST_INTERVAL_BEGIN, v41, "Process Fetch Results", "Process: %{public}s (%{public}@)", &v53, 0x16u);
  }

  [(DBGDataCoordinatorTargetHub *)self _updateSnapshotWithResponse:v6 forRequest:v7];
  v45 = DebugHierarchySnapshotModelOSLog();
  v46 = os_signpost_id_make_with_pointer(v45, v6);
  v47 = v45;
  v48 = v47;
  if (v46 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v47))
  {
    LOWORD(v53) = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v48, OS_SIGNPOST_INTERVAL_END, v46, "Process Fetch Results", "Completed", &v53, 2u);
  }

  v49 = DebugHierarchySnapshotModelOSLog();
  v50 = os_signpost_id_make_with_pointer(v49, v7);
  v51 = v49;
  v52 = v51;
  if (v50 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v51))
  {
    LOWORD(v53) = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v52, OS_SIGNPOST_INTERVAL_END, v50, "Process Fetch Results", "Completed", &v53, 2u);
  }
}

- (void)_processRequestLogs:(id)a3 forRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [v7 logs];
    v9 = [v8 count];

    if (v9)
    {
      v10 = [v7 logs];
      v11 = [v10 arrayByAddingObjectsFromArray:v6];
      [v7 setLogs:v11];
    }

    else
    {
      [v7 setLogs:v6];
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = v6;
    v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v19 + 1) + 8 * i);
          v18 = [(DBGDataCoordinator *)self snapshotManager];
          [v18 logMessage:v17];
        }

        v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v14);
    }
  }
}

- (void)_updateSnapshotWithResponse:(id)a3 forRequest:(id)a4
{
  v5 = a3;
  v6 = +[NSMutableDictionary dictionary];
  [(DBGDataCoordinatorTargetHub *)self setPendingChildNodes:v6];

  v38 = [v5 objectForKeyedSubscript:DebugHierarchyRequestTopLevelGroupsKey];
  v7 = [v38 allValues];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v51 objects:v57 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v52;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v52 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(DBGDataCoordinatorTargetHub *)self processGroupDict:*(*(&v51 + 1) + 8 * i) isDirectChildGroup:1 parentNode:0];
      }

      v9 = [v7 countByEnumeratingWithState:&v51 objects:v57 count:16];
    }

    while (v9);
  }

  [(DBGDataCoordinatorTargetHub *)self setPendingChildNodes:0, v7];
  v39 = v5;
  [v5 objectForKeyedSubscript:DebugHierarchyRequestTopLevelPropertyDescriptionsKey];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v40 = v50 = 0u;
  obj = [v40 keyEnumerator];
  v12 = [obj countByEnumeratingWithState:&v47 objects:v56 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v48;
    do
    {
      v15 = 0;
      v41 = v13;
      do
      {
        if (*v48 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v47 + 1) + 8 * v15);
        v17 = [v16 rangeOfString:@"."];
        if (v17 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v18 = [v16 substringToIndex:v17];
          v19 = self;
          v20 = [(DBGDataCoordinator *)self snapshotManager];
          v21 = [v20 snapshot];
          v22 = [v21 identifierToNodeMap];
          v23 = [v22 objectForKey:v18];

          if (v23)
          {
            v24 = [v40 objectForKeyedSubscript:v16];
            v25 = [v24 objectForKeyedSubscript:@"fetchStatus"];
            v26 = v25;
            if (!v25 || ([v25 unsignedIntegerValue] & 0xFFFFFFFFFFFFFFF7) != 0)
            {
              v27 = [v24 objectForKeyedSubscript:@"propertyName"];
              v28 = [v23 propertyWithName:v27];
              [(DBGDataCoordinatorTargetHub *)v19 _updateProperty:v28 withDict:v24];
            }
          }

          v13 = v41;
          self = v19;
        }

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [obj countByEnumeratingWithState:&v47 objects:v56 count:16];
    }

    while (v13);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v29 = [(DBGDataCoordinator *)self snapshotTransformers];
  v30 = [v29 countByEnumeratingWithState:&v43 objects:v55 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v44;
    do
    {
      for (j = 0; j != v31; j = j + 1)
      {
        if (*v44 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v43 + 1) + 8 * j);
        v35 = [(DBGDataCoordinator *)self snapshotManager];
        v36 = [v35 snapshot];
        [v34 snapshotDidUpdate:v36];
      }

      v31 = [v29 countByEnumeratingWithState:&v43 objects:v55 count:16];
    }

    while (v31);
  }
}

- (void)processDebugHierarchyObjectDict:(id)a3 inGroup:(id)a4 isDirectChildGroup:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [(DBGDataCoordinator *)self snapshotManager];
  v11 = [v10 snapshot];

  v12 = [v8 objectForKeyedSubscript:@"objectID"];
  v13 = [(DBGDataCoordinatorTargetHub *)self pendingChildNodes];
  v14 = [v13 objectForKeyedSubscript:v12];

  v15 = v14;
  v25 = v11;
  if (v14 || ([v11 identifierToNodeMap], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "objectForKey:", v12), v15 = objc_claimAutoreleasedReturnValue(), v16, v15))
  {
    [(DBGDataCoordinatorTargetHub *)self _updateNode:v15 withDict:v8];
    [v9 addObject:v15];
    if (v14 && v5)
    {
      v17 = [(DBGDataCoordinatorTargetHub *)self pendingChildNodes];
      [v17 removeObjectForKey:v12];
    }
  }

  else
  {
    v15 = [(DBGDataCoordinatorTargetHub *)self _createNodeWithDict:v8];
    if (v9)
    {
      if (!v5)
      {
        v24 = [(DBGDataCoordinatorTargetHub *)self pendingChildNodes];
        [v24 setObject:v15 forKeyedSubscript:v12];
      }

      [v9 addObject:v15];
    }

    else
    {
      [(DBGDataCoordinatorTargetHub *)self _addNodeToMatchingRootLevelGroup:v15];
    }
  }

  v18 = [v8 objectForKeyedSubscript:@"childGroup"];
  if (v18)
  {
    [(DBGDataCoordinatorTargetHub *)self processGroupDict:v18 isDirectChildGroup:1 parentNode:v15];
  }

  v19 = [v8 objectForKeyedSubscript:@"additionalGroups"];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v20 = [v19 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v27;
    do
    {
      v23 = 0;
      do
      {
        if (*v27 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [(DBGDataCoordinatorTargetHub *)self processGroupDict:*(*(&v26 + 1) + 8 * v23) isDirectChildGroup:0 parentNode:v15];
        v23 = v23 + 1;
      }

      while (v21 != v23);
      v21 = [v19 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v21);
  }
}

- (void)_addNodeToMatchingRootLevelGroup:(id)a3
{
  v4 = [a3 childGroup];
  v8 = [v4 groupingIdentifier];

  v5 = [(DBGDataCoordinator *)self snapshotManager];
  v6 = [v5 snapshot];
  v7 = [v6 rootLevelSnapshotGroupWithIdentifier:v8];

  if (!v7)
  {
    v7 = [DBGSnapshotGroup strongObjectsGroupWithIdentifier:v8];
  }
}

- (id)_createNodeWithDict:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"objectID"];
  v6 = [DBGSnapshotNode nodeWithIdentifier:v5];
  v7 = [(DBGDataCoordinator *)self snapshotManager];
  v8 = [v7 snapshot];
  [v6 setSnapshot:v8];

  [(DBGDataCoordinatorTargetHub *)self _updateNode:v6 withDict:v4];

  return v6;
}

- (void)_updateGroup:(id)a3 withDict:(id)a4
{
  v6 = a3;
  v5 = [a4 objectForKeyedSubscript:@"defaultDisplayName"];
  if (v5)
  {
    [v6 setDefaultDisplayName:v5];
  }
}

- (void)_updateNode:(id)a3 withDict:(id)a4
{
  v14 = a3;
  v6 = a4;
  if ((_DBGDictionaryDescribesDebugHierarchyObjectReference(v6) & 1) == 0)
  {
    v7 = [v6 objectForKeyedSubscript:@"visibility"];
    v8 = [v7 integerValue];

    [v14 setVisibility:v8];
    v9 = [v6 objectForKeyedSubscript:@"className"];
    if (v9)
    {
      v10 = [(DBGDataCoordinator *)self snapshotManager];
      v11 = [v10 runtimeInfo];
      v12 = [v11 typeWithName:v9];
      [v14 setRuntimeType:v12];
    }

    v13 = [v6 objectForKeyedSubscript:@"properties"];
    if ([v13 count])
    {
      [(DBGDataCoordinatorTargetHub *)self _updatePropertiesWithDicts:v13 onNode:v14];
    }
  }
}

- (void)_updatePropertiesWithDicts:(id)a3 onNode:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        if ([v12 count])
        {
          v13 = [v12 objectForKeyedSubscript:@"propertyName"];
          if (v13)
          {
            v14 = [v7 propertyWithName:v13];
            if (!v14)
            {
              v14 = [DBGSnapshotProperty propertyWithName:v13];
              [v7 addProperty:v14];
            }

            [(DBGDataCoordinatorTargetHub *)self _updateProperty:v14 withDict:v12];
          }
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  [(DBGDataCoordinatorTargetHub *)self _updateComputedPropertiesOfNode:v7];
}

- (void)_updateProperty:(id)a3 withDict:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(DBGDataCoordinator *)self dataSourceConnection];
  [v7 debugHierarchyVersion];
  v8 = [(DBGDataCoordinatorTargetHub *)self compatibility_modernizedPropertyDescription:v6 targetVersion:?];

  [v12 updateWithJSONPropertyDescription:v8];
  v9 = [v8 objectForKeyedSubscript:@"subproperties"];
  [(DBGDataCoordinatorTargetHub *)self _updateSubpropertiesWithDicts:v9 onProperty:v12];
  v10 = [v12 name];
  v11 = [v10 isEqualToString:@"dbgSubviewHierarchy"];

  if (v11)
  {
    [(DBGDataCoordinatorTargetHub *)self _updateSubHierarchyOfProperty:v12];
  }
}

- (void)_updateSubpropertiesWithDicts:(id)a3 onProperty:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = [v12 objectForKeyedSubscript:@"propertyName"];
        v14 = [v7 subpropertyWithName:v13];
        if (!v14)
        {
          v14 = [DBGSnapshotProperty propertyWithName:v13];
          [v7 addSubproperty:v14];
        }

        [(DBGDataCoordinatorTargetHub *)self _updateProperty:v14 withDict:v12];
      }

      v9 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

- (void)_updateSubHierarchyOfProperty:(id)a3
{
  v4 = a3;
  v5 = [v4 dataValue];
  if ([v5 length])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [(DBGDataCoordinator *)self snapshotTransformers];
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * v10);
          v12 = [(DBGDataCoordinator *)self snapshotManager];
          v13 = [v12 snapshot];
          [v11 updateSnapshot:v13 withSubHierarchyProperty:v4];

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }
}

- (void)_updateComputedPropertiesOfNode:(id)a3
{
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(DBGDataCoordinator *)self snapshotTransformers];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) updateComputedPropertiesOfNode:v4];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_writeRequestResponseToDiskIfNecessary:(id)a3 request:(id)a4 compressedSize:(unint64_t)a5
{
  v34 = a3;
  v7 = a4;
  v8 = +[NSUserDefaults standardUserDefaults];
  v9 = [v8 valueForKey:@"DBGViewDebuggerWriteFetchedHierarchyToFile"];

  if ([v9 length])
  {
    v10 = [v9 stringByExpandingTildeInPath];

    v11 = DebugHierarchyRequestMetaDataKey;
    v12 = [v34 objectForKeyedSubscript:DebugHierarchyRequestMetaDataKey];
    v13 = [v12 mutableCopy];

    if (v13)
    {
      v14 = DebugHierarchyRequestMetaDataRequestPerformanceKey;
      v15 = [v13 objectForKeyedSubscript:DebugHierarchyRequestMetaDataRequestPerformanceKey];
      v16 = [v15 mutableCopy];

      if (v16)
      {
        v17 = [v7 executionEndDate];
        v18 = [v7 executionStartDate];
        [v17 timeIntervalSinceDate:v18];
        v19 = [NSNumber numberWithDouble:?];
        [v16 setObject:v19 forKeyedSubscript:@"totalRequestExecutionDuration"];

        v20 = objc_alloc_init(NSByteCountFormatter);
        v21 = [v20 stringFromByteCount:a5];
        [v16 setObject:v21 forKeyedSubscript:@"compressedSize"];

        [v13 setObject:v16 forKeyedSubscript:v14];
        v22 = [v34 mutableCopy];
        [v22 setObject:v13 forKeyedSubscript:v11];
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      v22 = 0;
    }

    v23 = v34;
    if (v22)
    {
      v23 = v22;
    }

    v24 = [v23 generateJSONDataWithError:0];
    v25 = [v10 pathExtension];
    v26 = [v25 length];

    if (!v26)
    {
      v27 = _writeRequestResponseToDiskIfNecessary_request_compressedSize__dateFormatter;
      if (!_writeRequestResponseToDiskIfNecessary_request_compressedSize__dateFormatter)
      {
        v28 = objc_alloc_init(NSDateFormatter);
        v29 = _writeRequestResponseToDiskIfNecessary_request_compressedSize__dateFormatter;
        _writeRequestResponseToDiskIfNecessary_request_compressedSize__dateFormatter = v28;

        [_writeRequestResponseToDiskIfNecessary_request_compressedSize__dateFormatter setDateFormat:@"HH-mm-ss.SSSS"];
        v30 = +[NSTimeZone localTimeZone];
        [_writeRequestResponseToDiskIfNecessary_request_compressedSize__dateFormatter setTimeZone:v30];

        v27 = _writeRequestResponseToDiskIfNecessary_request_compressedSize__dateFormatter;
      }

      v31 = +[NSDate date];
      v32 = [v27 stringFromDate:v31];
      v33 = [NSString stringWithFormat:@"%@-%@.json", v10, v32];

      v10 = v33;
    }

    [v24 writeToFile:v10 atomically:1];

    v9 = v10;
  }
}

- (id)compatibility_modernizedPropertyDescription:(id)a3 targetVersion:(float)a4
{
  v5 = a3;
  v6 = v5;
  v7 = a4 < 2.0 && a4 == 1.0;
  v8 = v5;
  if (!v7)
  {
    goto LABEL_20;
  }

  v9 = [v5 mutableCopy];
  v10 = [v9 objectForKeyedSubscript:@"propertyValueStatus"];
  v11 = v10;
  if (!v10)
  {
    v14 = [v6 objectForKeyedSubscript:@"propertyValue"];

    if (v14)
    {
      v13 = 4;
    }

    else
    {
      v13 = 1;
    }

    goto LABEL_17;
  }

  v12 = [v10 unsignedIntegerValue];
  if (v12)
  {
    if (v12 == &dword_0 + 3)
    {
      v13 = 8;
      goto LABEL_17;
    }

    if (v12 != &dword_0 + 1)
    {
      v13 = 0;
      goto LABEL_17;
    }

    [v9 removeObjectForKey:@"propertyValue"];
  }

  v13 = 4;
LABEL_17:
  v15 = [NSNumber numberWithLong:v13];
  [v9 setObject:v15 forKeyedSubscript:@"fetchStatus"];

  v16 = [v6 objectForKeyedSubscript:@"propertyVisibility"];
  v17 = v16;
  if (v16)
  {
    [v16 integerValue];
  }

  v8 = [v9 copy];

LABEL_20:

  return v8;
}

@end