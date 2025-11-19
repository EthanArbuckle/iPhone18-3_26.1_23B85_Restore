@interface DebugHierarchyRequestExecutionContext
+ (id)contextWithRequest:(id)a3;
- (BOOL)hasAlreadyFetchedDebugHierarchyObject:(id)a3;
- (DebugHierarchyRequestExecutionContext)initWithRequest:(id)a3;
- (id)globalRuntimeInfo;
- (id)recursiveDescription;
- (id)requestResponse;
- (id)runtimeTypeWithName:(id)a3;
- (void)_addDebugHierarchyObject:(id)a3 withDict:(id)a4 toTopLevelGroupWithID:(id)a5;
- (void)_addDebugHierarchyObjectDict:(id)a3 toGroupWithID:(id)a4 asDirectChild:(BOOL)a5 belowParent:(id)a6;
- (void)_collectRuntimeInformationForObjectType:(id)a3;
- (void)addDebugHierarchyObject:(id)a3 withVisibility:(int64_t)a4 fetchStatus:(int64_t)a5 toGroupWithID:(id)a6 asDirectChild:(BOOL)a7 belowParent:(id)a8;
- (void)addProperties:(id)a3 toObject:(id)a4;
- (void)logRequestErrorWithTitle:(id)a3 message:(id)a4 fromMethod:(const char *)a5;
@end

@implementation DebugHierarchyRequestExecutionContext

+ (id)contextWithRequest:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithRequest:v4];

  return v5;
}

- (DebugHierarchyRequestExecutionContext)initWithRequest:(id)a3
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = DebugHierarchyRequestExecutionContext;
  v6 = [(DebugHierarchyRequestExecutionContext *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_request, a3);
    v8 = +[NSMutableDictionary dictionary];
    topLevelGroups = v7->_topLevelGroups;
    v7->_topLevelGroups = v8;

    v10 = +[NSMutableDictionary dictionary];
    topLevelPropertyDescriptions = v7->_topLevelPropertyDescriptions;
    v7->_topLevelPropertyDescriptions = v10;

    v12 = +[NSMutableDictionary dictionary];
    identifierToObjectDescriptionMap = v7->_identifierToObjectDescriptionMap;
    v7->_identifierToObjectDescriptionMap = v12;

    v14 = objc_alloc_init(DebugHierarchyRuntimeInfo);
    contextRuntimeInfo = v7->_contextRuntimeInfo;
    v7->_contextRuntimeInfo = v14;

    v16 = +[NSMutableDictionary dictionary];
    metaData = v7->_metaData;
    v7->_metaData = v16;
  }

  return v7;
}

- (BOOL)hasAlreadyFetchedDebugHierarchyObject:(id)a3
{
  if (a3)
  {
    v4 = CFStringCreateWithFormat(0, 0, @"%p", a3);
  }

  else
  {
    v4 = 0;
  }

  v5 = [(DebugHierarchyRequestExecutionContext *)self identifierToObjectDescriptionMap];
  v6 = [v5 objectForKeyedSubscript:v4];
  v7 = v6 != 0;

  return v7;
}

- (void)addDebugHierarchyObject:(id)a3 withVisibility:(int64_t)a4 fetchStatus:(int64_t)a5 toGroupWithID:(id)a6 asDirectChild:(BOOL)a7 belowParent:(id)a8
{
  v14 = a3;
  v15 = a6;
  v16 = a8;
  if (v14)
  {
    v25 = a7;
    v17 = CFStringCreateWithFormat(0, 0, @"%p", v14);
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    [(DebugHierarchyRequestExecutionContext *)self _collectRuntimeInformationForObjectType:v14];
    v26[0] = @"objectID";
    v26[1] = @"className";
    v27[0] = v17;
    v27[1] = v19;
    v26[2] = @"fetchStatus";
    v20 = [NSNumber numberWithLong:a5];
    v27[2] = v20;
    v26[3] = @"visibility";
    v21 = [NSNumber numberWithLong:a4];
    v27[3] = v21;
    v22 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:4];

    v23 = [v22 mutableCopy];
    if (v16)
    {
      if (v25)
      {
        [(DebugHierarchyRequestExecutionContext *)self _addDebugHierarchyObjectDict:v23 toGroupWithID:v15 asDirectChild:1 belowParent:v16];
      }

      else
      {
        [(DebugHierarchyRequestExecutionContext *)self _addDebugHierarchyObject:v14 withDict:v23 toTopLevelGroupWithID:v15];
        [(DebugHierarchyRequestExecutionContext *)self addReferencedDebugHierarchyObject:v14 withVisibility:a4 toGroupWithID:v15 asDirectChild:0 belowParent:v16];
      }
    }

    else
    {
      [(DebugHierarchyRequestExecutionContext *)self _addDebugHierarchyObject:v14 withDict:v23 toTopLevelGroupWithID:v15];
    }

    v24 = [(DebugHierarchyRequestExecutionContext *)self identifierToObjectDescriptionMap];
    [v24 setObject:v23 forKeyedSubscript:v17];
  }

  else
  {
    v17 = [NSString stringWithFormat:@"DebugHierarchyObject must not be nil. Will be ignored."];
    [(DebugHierarchyRequestExecutionContext *)self logRequestErrorWithTitle:@"Unexpected nil object." message:v17 fromMethod:"[DebugHierarchyRequestExecutionContext addDebugHierarchyObject:withVisibility:fetchStatus:toGroupWithID:asDirectChild:belowParent:]"];
  }
}

- (void)_addDebugHierarchyObject:(id)a3 withDict:(id)a4 toTopLevelGroupWithID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(DebugHierarchyRequestExecutionContext *)self topLevelGroups];
  v12 = [v11 objectForKeyedSubscript:v10];

  if (v12)
  {
    v13 = [v12 objectForKeyedSubscript:@"debugHierarchyObjects"];
    [v13 addObject:v9];
    v14 = objc_opt_class();
    v15 = v14;
    if (v14)
    {
      if (object_isClass(v14))
      {
        v15 = NSStringFromClass(v15);
      }

      else
      {
        v15 = 0;
      }
    }

    v18 = [(DebugHierarchyRequestExecutionContext *)self runtimeTypeWithName:v15];

    v19 = [v18 closestTypeVendingAChildGroupingID];
    v20 = [v19 childGroupingID];
    v21 = [v20 length];

    if (v21)
    {
      v22 = [v19 name];
      v23 = NSClassFromString(v22);

      v24 = [v19 childGroupingID];
      v58 = 0;
      v21 = [DebugHierarchyObjectProtocolHelper debugHierarchyObjectsInGroupWithID:v24 outOptions:&v58 vendingClass:v23 onObject:v8];
    }

    if ([v21 count])
    {
      v48 = v12;
      v49 = v8;
      v50 = v10;
      v57 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v21 count]);
      v56 = v21;
      if ([v21 count])
      {
        v25 = v21;
        v26 = 0;
        do
        {
          v27 = [v25 objectAtIndexedSubscript:v26];
          v28 = [NSNumber numberWithInt:v26];
          if (v27)
          {
            v29 = CFStringCreateWithFormat(0, 0, @"%p", v27);
          }

          else
          {
            v29 = 0;
          }

          [v57 setObject:v28 forKeyedSubscript:v29];

          ++v26;
          v25 = v21;
        }

        while ([v21 count] > v26);
      }

      v47 = v18;
      v54 = +[NSMutableIndexSet indexSet];
      if ([v13 count])
      {
        v30 = 0;
        v52 = v13;
        v53 = v9;
        v51 = v19;
        do
        {
          v31 = [v13 objectAtIndexedSubscript:v30];
          v32 = [v31 objectForKeyedSubscript:@"objectID"];
          v33 = [v57 objectForKeyedSubscript:v32];
          v34 = v33;
          if (v33)
          {
            v35 = [v33 unsignedIntegerValue];
            v36 = [v9 objectForKeyedSubscript:@"childGroup"];
            if (v36)
            {
              v37 = v36;
              v55 = v32;
              v38 = [v36 objectForKeyedSubscript:@"debugHierarchyObjects"];
              if ([v38 count])
              {
                v39 = 0;
                while (1)
                {
                  v40 = [v38 objectAtIndexedSubscript:v39];
                  v41 = [v40 objectForKeyedSubscript:@"objectID"];
                  v42 = [v57 objectForKeyedSubscript:v41];

                  v43 = [v42 unsignedIntegerValue];
                  if (v43 > v35)
                  {
                    break;
                  }

                  if ([v38 count] <= ++v39)
                  {
                    goto LABEL_24;
                  }
                }

                v45 = [v38 count];
                if (v39 >= v45)
                {
                  v46 = v45;
                }

                else
                {
                  v46 = v39;
                }

                [v38 insertObject:v31 atIndex:v46];
              }

              else
              {
LABEL_24:
                [v38 addObject:v31];
              }

              v13 = v52;
              v32 = v55;

              v9 = v53;
              v19 = v51;
            }

            else
            {
              v44 = [NSMutableArray arrayWithObject:v31];
              v37 = DBGGroupDict(v50, v44);

              [v9 setObject:v37 forKeyedSubscript:@"childGroup"];
            }

            [v54 addIndex:v30];
          }

          ++v30;
        }

        while ([v13 count] > v30);
      }

      [v13 removeObjectsAtIndexes:v54];

      v8 = v49;
      v10 = v50;
      v18 = v47;
      v12 = v48;
      v21 = v56;
    }
  }

  else
  {
    v13 = [NSMutableArray arrayWithObject:v9];
    v16 = DBGGroupDict(v10, v13);
    v12 = [v16 mutableCopy];

    v17 = [(DebugHierarchyRequestExecutionContext *)self topLevelGroups];
    [v17 setObject:v12 forKeyedSubscript:v10];
  }
}

- (void)_addDebugHierarchyObjectDict:(id)a3 toGroupWithID:(id)a4 asDirectChild:(BOOL)a5 belowParent:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = v12;
  if (v12)
  {
    v14 = CFStringCreateWithFormat(0, 0, @"%p", v12);
  }

  else
  {
    v14 = 0;
  }

  v15 = [(DebugHierarchyRequestExecutionContext *)self identifierToObjectDescriptionMap];
  v16 = [v15 objectForKeyedSubscript:v14];

  if (v16)
  {
    if (v7)
    {
      v17 = [v16 objectForKeyedSubscript:@"childGroup"];
      v18 = [v17 objectForKeyedSubscript:@"debugHierarchyObjects"];
      if (!v17)
      {
        v32 = [NSMutableArray arrayWithObject:v10];

        v17 = DBGGroupDict(v11, v32);
        [v16 setObject:v17 forKeyedSubscript:@"childGroup"];
        v18 = v32;
LABEL_48:

        goto LABEL_49;
      }

      v19 = objc_opt_class();
      v20 = v19;
      if (v19)
      {
        if (object_isClass(v19))
        {
          v20 = NSStringFromClass(v20);
        }

        else
        {
          v20 = 0;
        }
      }

      v31 = [(DebugHierarchyRequestExecutionContext *)self runtimeTypeWithName:v20];

      v33 = [v31 closestTypeVendingAChildGroupingID];
      v34 = [v33 childGroupingID];
      v52 = v34;
      if ([v34 length])
      {
        v49 = v33;
        v50 = v31;
        v54 = v16;
        v56 = v14;
        v35 = [v33 name];
        v36 = NSClassFromString(v35);

        v61 = 0;
        v37 = [DebugHierarchyObjectProtocolHelper debugHierarchyObjectsInGroupWithID:v34 outOptions:&v61 vendingClass:v36 onObject:v13];
        v38 = v61;
        v39 = [v10 objectForKeyedSubscript:@"objectID"];
        if ([v37 count])
        {
          v47 = v38;
          v48 = v17;
          v40 = 0;
          while (1)
          {
            v41 = [v37 objectAtIndexedSubscript:v40];
            v42 = v41;
            v43 = v41 ? CFStringCreateWithFormat(0, 0, @"%p", v41) : 0;
            v44 = [(__CFString *)v43 isEqualToString:v39];

            if (v44)
            {
              break;
            }

            if ([v37 count] <= ++v40)
            {
              v40 = 0;
              break;
            }
          }

          v17 = v48;
          v38 = v47;
        }

        else
        {
          v40 = 0;
        }

        v16 = v54;
        v14 = v56;
        v33 = v49;
        v31 = v50;
      }

      else
      {
        v40 = 0;
      }

      v45 = [v18 count];
      if (v40 >= v45)
      {
        v46 = v45;
      }

      else
      {
        v46 = v40;
      }

      [v18 insertObject:v10 atIndex:v46];

LABEL_47:
      goto LABEL_48;
    }

    v22 = [v16 objectForKeyedSubscript:@"additionalGroups"];
    v23 = OBJC_CLASS___DebugHierarchyCrawler_ptr;
    if (v22)
    {
      v53 = v16;
      v55 = v14;
      v51 = v10;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v17 = v22;
      v24 = [v17 countByEnumeratingWithState:&v57 objects:v62 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v58;
LABEL_14:
        v27 = 0;
        while (1)
        {
          if (*v58 != v26)
          {
            objc_enumerationMutation(v17);
          }

          v28 = *(*(&v57 + 1) + 8 * v27);
          v29 = [v28 objectForKeyedSubscript:@"groupingID"];
          v30 = [v29 isEqualToString:v11];

          if (v30)
          {
            break;
          }

          if (v25 == ++v27)
          {
            v25 = [v17 countByEnumeratingWithState:&v57 objects:v62 count:16];
            if (v25)
            {
              goto LABEL_14;
            }

            goto LABEL_20;
          }
        }

        v18 = v28;

        if (!v18)
        {
          goto LABEL_23;
        }

        v31 = [v18 objectForKeyedSubscript:@"debugHierarchyObjects"];
        v10 = v51;
        [v31 addObject:v51];
        v16 = v53;
        v14 = v55;
        goto LABEL_27;
      }

LABEL_20:

LABEL_23:
      v10 = v51;
      v16 = v53;
      v14 = v55;
      v23 = OBJC_CLASS___DebugHierarchyCrawler_ptr;
    }

    else
    {
      v17 = +[NSMutableArray array];
      [v16 setObject:v17 forKeyedSubscript:@"additionalGroups"];
    }

    v31 = [(__objc2_class *)v23[45] arrayWithObject:v10];
    v18 = DBGGroupDict(v11, v31);
LABEL_27:
    if (([v17 containsObject:v18] & 1) == 0)
    {
      [v17 addObject:v18];
    }

    goto LABEL_47;
  }

  v21 = [NSString stringWithFormat:@"Unable to find parent object in identifierToObjectDescriptionMap. DebugHierarchyObject dictionary will be ignored: %@ | Parent Object: %@", v10, v13];
  [(DebugHierarchyRequestExecutionContext *)self logRequestErrorWithTitle:@"Unable to find DebugHierarchyObject." message:v21 fromMethod:"[DebugHierarchyRequestExecutionContext _addDebugHierarchyObjectDict:toGroupWithID:asDirectChild:belowParent:]"];

LABEL_49:
}

- (void)addProperties:(id)a3 toObject:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    if (v7)
    {
      v8 = CFStringCreateWithFormat(0, 0, @"%p", v7);
    }

    else
    {
      v8 = 0;
    }

    v9 = [(DebugHierarchyRequestExecutionContext *)self identifierToObjectDescriptionMap];
    v10 = [v9 objectForKeyedSubscript:v8];

    if (v10)
    {
      v11 = [v10 objectForKeyedSubscript:@"properties"];
      if ([v11 count])
      {
        v12 = [v11 arrayByAddingObjectsFromArray:v6];
      }

      else
      {
        v12 = v6;
      }

      v22 = v12;

      [v10 setObject:v22 forKeyedSubscript:@"properties"];
    }

    else
    {
      v23 = v7;
      v13 = v8;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = v6;
      obj = v6;
      v14 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v27;
        do
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v27 != v16)
            {
              objc_enumerationMutation(obj);
            }

            v18 = *(*(&v26 + 1) + 8 * i);
            v19 = [v18 objectForKeyedSubscript:@"propertyName"];
            v20 = [NSString stringWithFormat:@"%@.%@", v13, v19];

            v21 = [(DebugHierarchyRequestExecutionContext *)self topLevelPropertyDescriptions];
            [v21 setObject:v18 forKeyedSubscript:v20];
          }

          v15 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v15);
      }

      v7 = v23;
      v6 = v24;
      v8 = v13;
      v10 = 0;
    }
  }
}

- (void)logRequestErrorWithTitle:(id)a3 message:(id)a4 fromMethod:(const char *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [NSString stringWithCString:a5 encoding:4];
  v12 = [DebugHierarchyLogEntry errorLogEntryWithTitle:v9 message:v8 methodSignature:v10];

  v11 = [(DebugHierarchyRequestExecutionContext *)self request];
  [v11 addLogEntry:v12];
}

- (id)requestResponse
{
  v13[0] = @"version";
  v3 = [NSNumber numberWithDouble:2.0];
  v14[0] = v3;
  v13[1] = @"request";
  v4 = [(DebugHierarchyRequestExecutionContext *)self request];
  v5 = [v4 dictionaryRepresentation];
  v14[1] = v5;
  v13[2] = @"metaData";
  v6 = [(DebugHierarchyRequestExecutionContext *)self metaData];
  v14[2] = v6;
  v13[3] = @"classInformation";
  v7 = [(DebugHierarchyRequestExecutionContext *)self contextRuntimeInfo];
  v8 = [v7 serializedRepresentation];
  v14[3] = v8;
  v13[4] = @"topLevelGroups";
  v9 = [(DebugHierarchyRequestExecutionContext *)self topLevelGroups];
  v14[4] = v9;
  v13[5] = @"topLevelPropertyDescriptions";
  v10 = [(DebugHierarchyRequestExecutionContext *)self topLevelPropertyDescriptions];
  v14[5] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:6];

  return v11;
}

- (id)recursiveDescription
{
  v6 = @"topLevelGroups";
  v2 = [(DebugHierarchyRequestExecutionContext *)self topLevelGroups];
  v7 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  v4 = [v3 generateJSONStringWithError:0];

  return v4;
}

- (id)globalRuntimeInfo
{
  v2 = +[DebugHierarchyTargetHub sharedHub];
  v3 = [v2 runtimeInfo];

  return v3;
}

- (id)runtimeTypeWithName:(id)a3
{
  v4 = a3;
  v5 = [(DebugHierarchyRequestExecutionContext *)self contextRuntimeInfo];
  v6 = [v5 typeWithName:v4];

  if (!v6)
  {
    v7 = [(DebugHierarchyRequestExecutionContext *)self globalRuntimeInfo];
    v6 = [v7 typeWithName:v4];
  }

  return v6;
}

- (void)_collectRuntimeInformationForObjectType:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 && (v6 = v5, object_isClass(v5)))
  {
    v7 = NSStringFromClass(v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = [(DebugHierarchyRequestExecutionContext *)self globalRuntimeInfo];
  v9 = [v8 typeWithName:v7];
  if (v9)
  {
  }

  else
  {
    v10 = [(DebugHierarchyRequestExecutionContext *)self contextRuntimeInfo];
    v11 = [v10 typeWithName:v7];

    if (!v11)
    {
      v12 = +[NSMutableArray array];
      v13 = objc_opt_class();
      if (v13)
      {
        v14 = v13;
        v15 = 0;
        do
        {
          [v12 addObject:v14];
          v16 = [v14 superclass];
          if (!v16)
          {
            break;
          }

          v14 = v16;
        }

        while (v15++ < 0x3E7);
      }

      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v18 = [v12 reverseObjectEnumerator];
      v19 = [v18 countByEnumeratingWithState:&v51 objects:v56 count:16];
      if (v19)
      {
        v20 = v19;
        v38 = v12;
        v39 = v7;
        v40 = v4;
        v41 = v18;
        v21 = 0;
        v46 = *v52;
        v42 = self;
        do
        {
          v22 = 0;
          v43 = v20;
          do
          {
            if (*v52 != v46)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v51 + 1) + 8 * v22);
            if (v23 && object_isClass(*(*(&v51 + 1) + 8 * v22)))
            {
              v24 = NSStringFromClass(v23);
            }

            else
            {
              v24 = 0;
            }

            v25 = [(DebugHierarchyRequestExecutionContext *)self contextRuntimeInfo];
            v26 = [v25 typeWithName:v24];

            if (v26)
            {
              v27 = v21;
              v21 = v26;
            }

            else
            {
              v45 = v24;
              v28 = [DebugHierarchyRuntimeType typeWithName:v24];
              v29 = [DebugHierarchyObjectProtocolHelper debugHierarchyChildGroupingIDOfClass:v23];
              [v28 setChildGroupingID:v29];

              v30 = [DebugHierarchyObjectProtocolHelper debugHierarchyAdditionalGroupingIDsOfClass:v23];
              [v28 setAdditionalGroupingIDs:v30];

              v27 = [DebugHierarchyObjectInterface propertyDescriptionsForClass:v23 inContext:self];
              if ([v27 count])
              {
                v44 = v21;
                v49 = 0u;
                v50 = 0u;
                v47 = 0u;
                v48 = 0u;
                v31 = v27;
                v32 = [v31 countByEnumeratingWithState:&v47 objects:v55 count:16];
                if (v32)
                {
                  v33 = v32;
                  v34 = *v48;
                  do
                  {
                    for (i = 0; i != v33; i = i + 1)
                    {
                      if (*v48 != v34)
                      {
                        objc_enumerationMutation(v31);
                      }

                      v36 = [[DebugHierarchyProperty alloc] initWithPropertyDescription:*(*(&v47 + 1) + 8 * i)];
                      [v28 addInstanceProperty:v36];
                    }

                    v33 = [v31 countByEnumeratingWithState:&v47 objects:v55 count:16];
                  }

                  while (v33);
                }

                v18 = v41;
                self = v42;
                v21 = v44;
              }

              v37 = [(DebugHierarchyRequestExecutionContext *)self contextRuntimeInfo];
              [v37 addType:v28 toParentType:v21];

              v21 = v28;
              v20 = v43;
              v24 = v45;
            }

            v22 = v22 + 1;
          }

          while (v22 != v20);
          v20 = [v18 countByEnumeratingWithState:&v51 objects:v56 count:16];
        }

        while (v20);

        v7 = v39;
        v4 = v40;
        v12 = v38;
      }
    }
  }
}

@end