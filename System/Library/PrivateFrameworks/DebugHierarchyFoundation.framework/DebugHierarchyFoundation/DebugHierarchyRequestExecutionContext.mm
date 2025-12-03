@interface DebugHierarchyRequestExecutionContext
+ (id)contextWithRequest:(id)request;
- (BOOL)hasAlreadyFetchedDebugHierarchyObject:(id)object;
- (DebugHierarchyRequestExecutionContext)initWithRequest:(id)request;
- (id)globalRuntimeInfo;
- (id)recursiveDescription;
- (id)requestResponse;
- (id)runtimeTypeWithName:(id)name;
- (void)_addDebugHierarchyObject:(id)object withDict:(id)dict toTopLevelGroupWithID:(id)d;
- (void)_addDebugHierarchyObjectDict:(id)dict toGroupWithID:(id)d asDirectChild:(BOOL)child belowParent:(id)parent;
- (void)_collectRuntimeInformationForObjectType:(id)type;
- (void)addDebugHierarchyObject:(id)object withVisibility:(int64_t)visibility fetchStatus:(int64_t)status toGroupWithID:(id)d asDirectChild:(BOOL)child belowParent:(id)parent;
- (void)addProperties:(id)properties toObject:(id)object;
- (void)logRequestErrorWithTitle:(id)title message:(id)message fromMethod:(const char *)method;
@end

@implementation DebugHierarchyRequestExecutionContext

+ (id)contextWithRequest:(id)request
{
  requestCopy = request;
  v5 = [[self alloc] initWithRequest:requestCopy];

  return v5;
}

- (DebugHierarchyRequestExecutionContext)initWithRequest:(id)request
{
  requestCopy = request;
  v19.receiver = self;
  v19.super_class = DebugHierarchyRequestExecutionContext;
  v6 = [(DebugHierarchyRequestExecutionContext *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_request, request);
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

- (BOOL)hasAlreadyFetchedDebugHierarchyObject:(id)object
{
  if (object)
  {
    v4 = CFStringCreateWithFormat(0, 0, @"%p", object);
  }

  else
  {
    v4 = 0;
  }

  identifierToObjectDescriptionMap = [(DebugHierarchyRequestExecutionContext *)self identifierToObjectDescriptionMap];
  v6 = [identifierToObjectDescriptionMap objectForKeyedSubscript:v4];
  v7 = v6 != 0;

  return v7;
}

- (void)addDebugHierarchyObject:(id)object withVisibility:(int64_t)visibility fetchStatus:(int64_t)status toGroupWithID:(id)d asDirectChild:(BOOL)child belowParent:(id)parent
{
  objectCopy = object;
  dCopy = d;
  parentCopy = parent;
  if (objectCopy)
  {
    childCopy = child;
    v17 = CFStringCreateWithFormat(0, 0, @"%p", objectCopy);
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    [(DebugHierarchyRequestExecutionContext *)self _collectRuntimeInformationForObjectType:objectCopy];
    v26[0] = @"objectID";
    v26[1] = @"className";
    v27[0] = v17;
    v27[1] = v19;
    v26[2] = @"fetchStatus";
    v20 = [NSNumber numberWithLong:status];
    v27[2] = v20;
    v26[3] = @"visibility";
    v21 = [NSNumber numberWithLong:visibility];
    v27[3] = v21;
    v22 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:4];

    v23 = [v22 mutableCopy];
    if (parentCopy)
    {
      if (childCopy)
      {
        [(DebugHierarchyRequestExecutionContext *)self _addDebugHierarchyObjectDict:v23 toGroupWithID:dCopy asDirectChild:1 belowParent:parentCopy];
      }

      else
      {
        [(DebugHierarchyRequestExecutionContext *)self _addDebugHierarchyObject:objectCopy withDict:v23 toTopLevelGroupWithID:dCopy];
        [(DebugHierarchyRequestExecutionContext *)self addReferencedDebugHierarchyObject:objectCopy withVisibility:visibility toGroupWithID:dCopy asDirectChild:0 belowParent:parentCopy];
      }
    }

    else
    {
      [(DebugHierarchyRequestExecutionContext *)self _addDebugHierarchyObject:objectCopy withDict:v23 toTopLevelGroupWithID:dCopy];
    }

    identifierToObjectDescriptionMap = [(DebugHierarchyRequestExecutionContext *)self identifierToObjectDescriptionMap];
    [identifierToObjectDescriptionMap setObject:v23 forKeyedSubscript:v17];
  }

  else
  {
    v17 = [NSString stringWithFormat:@"DebugHierarchyObject must not be nil. Will be ignored."];
    [(DebugHierarchyRequestExecutionContext *)self logRequestErrorWithTitle:@"Unexpected nil object." message:v17 fromMethod:"[DebugHierarchyRequestExecutionContext addDebugHierarchyObject:withVisibility:fetchStatus:toGroupWithID:asDirectChild:belowParent:]"];
  }
}

- (void)_addDebugHierarchyObject:(id)object withDict:(id)dict toTopLevelGroupWithID:(id)d
{
  objectCopy = object;
  dictCopy = dict;
  dCopy = d;
  topLevelGroups = [(DebugHierarchyRequestExecutionContext *)self topLevelGroups];
  v12 = [topLevelGroups objectForKeyedSubscript:dCopy];

  if (v12)
  {
    v13 = [v12 objectForKeyedSubscript:@"debugHierarchyObjects"];
    [v13 addObject:dictCopy];
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

    closestTypeVendingAChildGroupingID = [v18 closestTypeVendingAChildGroupingID];
    childGroupingID = [closestTypeVendingAChildGroupingID childGroupingID];
    v21 = [childGroupingID length];

    if (v21)
    {
      name = [closestTypeVendingAChildGroupingID name];
      v23 = NSClassFromString(name);

      childGroupingID2 = [closestTypeVendingAChildGroupingID childGroupingID];
      v58 = 0;
      v21 = [DebugHierarchyObjectProtocolHelper debugHierarchyObjectsInGroupWithID:childGroupingID2 outOptions:&v58 vendingClass:v23 onObject:objectCopy];
    }

    if ([v21 count])
    {
      v48 = v12;
      v49 = objectCopy;
      v50 = dCopy;
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
        v53 = dictCopy;
        v51 = closestTypeVendingAChildGroupingID;
        do
        {
          v31 = [v13 objectAtIndexedSubscript:v30];
          v32 = [v31 objectForKeyedSubscript:@"objectID"];
          v33 = [v57 objectForKeyedSubscript:v32];
          v34 = v33;
          if (v33)
          {
            unsignedIntegerValue = [v33 unsignedIntegerValue];
            v36 = [dictCopy objectForKeyedSubscript:@"childGroup"];
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

                  unsignedIntegerValue2 = [v42 unsignedIntegerValue];
                  if (unsignedIntegerValue2 > unsignedIntegerValue)
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

              dictCopy = v53;
              closestTypeVendingAChildGroupingID = v51;
            }

            else
            {
              v44 = [NSMutableArray arrayWithObject:v31];
              v37 = DBGGroupDict(v50, v44);

              [dictCopy setObject:v37 forKeyedSubscript:@"childGroup"];
            }

            [v54 addIndex:v30];
          }

          ++v30;
        }

        while ([v13 count] > v30);
      }

      [v13 removeObjectsAtIndexes:v54];

      objectCopy = v49;
      dCopy = v50;
      v18 = v47;
      v12 = v48;
      v21 = v56;
    }
  }

  else
  {
    v13 = [NSMutableArray arrayWithObject:dictCopy];
    v16 = DBGGroupDict(dCopy, v13);
    v12 = [v16 mutableCopy];

    topLevelGroups2 = [(DebugHierarchyRequestExecutionContext *)self topLevelGroups];
    [topLevelGroups2 setObject:v12 forKeyedSubscript:dCopy];
  }
}

- (void)_addDebugHierarchyObjectDict:(id)dict toGroupWithID:(id)d asDirectChild:(BOOL)child belowParent:(id)parent
{
  childCopy = child;
  dictCopy = dict;
  dCopy = d;
  parentCopy = parent;
  v13 = parentCopy;
  if (parentCopy)
  {
    v14 = CFStringCreateWithFormat(0, 0, @"%p", parentCopy);
  }

  else
  {
    v14 = 0;
  }

  identifierToObjectDescriptionMap = [(DebugHierarchyRequestExecutionContext *)self identifierToObjectDescriptionMap];
  v16 = [identifierToObjectDescriptionMap objectForKeyedSubscript:v14];

  if (v16)
  {
    if (childCopy)
    {
      v17 = [v16 objectForKeyedSubscript:@"childGroup"];
      v18 = [v17 objectForKeyedSubscript:@"debugHierarchyObjects"];
      if (!v17)
      {
        v32 = [NSMutableArray arrayWithObject:dictCopy];

        v17 = DBGGroupDict(dCopy, v32);
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

      closestTypeVendingAChildGroupingID = [v31 closestTypeVendingAChildGroupingID];
      childGroupingID = [closestTypeVendingAChildGroupingID childGroupingID];
      v52 = childGroupingID;
      if ([childGroupingID length])
      {
        v49 = closestTypeVendingAChildGroupingID;
        v50 = v31;
        v54 = v16;
        v56 = v14;
        name = [closestTypeVendingAChildGroupingID name];
        v36 = NSClassFromString(name);

        v61 = 0;
        v37 = [DebugHierarchyObjectProtocolHelper debugHierarchyObjectsInGroupWithID:childGroupingID outOptions:&v61 vendingClass:v36 onObject:v13];
        v38 = v61;
        v39 = [dictCopy objectForKeyedSubscript:@"objectID"];
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
        closestTypeVendingAChildGroupingID = v49;
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

      [v18 insertObject:dictCopy atIndex:v46];

LABEL_47:
      goto LABEL_48;
    }

    v22 = [v16 objectForKeyedSubscript:@"additionalGroups"];
    v23 = OBJC_CLASS___DebugHierarchyCrawler_ptr;
    if (v22)
    {
      v53 = v16;
      v55 = v14;
      v51 = dictCopy;
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
          v30 = [v29 isEqualToString:dCopy];

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
        dictCopy = v51;
        [v31 addObject:v51];
        v16 = v53;
        v14 = v55;
        goto LABEL_27;
      }

LABEL_20:

LABEL_23:
      dictCopy = v51;
      v16 = v53;
      v14 = v55;
      v23 = OBJC_CLASS___DebugHierarchyCrawler_ptr;
    }

    else
    {
      v17 = +[NSMutableArray array];
      [v16 setObject:v17 forKeyedSubscript:@"additionalGroups"];
    }

    v31 = [(__objc2_class *)v23[45] arrayWithObject:dictCopy];
    v18 = DBGGroupDict(dCopy, v31);
LABEL_27:
    if (([v17 containsObject:v18] & 1) == 0)
    {
      [v17 addObject:v18];
    }

    goto LABEL_47;
  }

  v21 = [NSString stringWithFormat:@"Unable to find parent object in identifierToObjectDescriptionMap. DebugHierarchyObject dictionary will be ignored: %@ | Parent Object: %@", dictCopy, v13];
  [(DebugHierarchyRequestExecutionContext *)self logRequestErrorWithTitle:@"Unable to find DebugHierarchyObject." message:v21 fromMethod:"[DebugHierarchyRequestExecutionContext _addDebugHierarchyObjectDict:toGroupWithID:asDirectChild:belowParent:]"];

LABEL_49:
}

- (void)addProperties:(id)properties toObject:(id)object
{
  propertiesCopy = properties;
  objectCopy = object;
  if ([propertiesCopy count])
  {
    if (objectCopy)
    {
      v8 = CFStringCreateWithFormat(0, 0, @"%p", objectCopy);
    }

    else
    {
      v8 = 0;
    }

    identifierToObjectDescriptionMap = [(DebugHierarchyRequestExecutionContext *)self identifierToObjectDescriptionMap];
    v10 = [identifierToObjectDescriptionMap objectForKeyedSubscript:v8];

    if (v10)
    {
      v11 = [v10 objectForKeyedSubscript:@"properties"];
      if ([v11 count])
      {
        v12 = [v11 arrayByAddingObjectsFromArray:propertiesCopy];
      }

      else
      {
        v12 = propertiesCopy;
      }

      v22 = v12;

      [v10 setObject:v22 forKeyedSubscript:@"properties"];
    }

    else
    {
      v23 = objectCopy;
      v13 = v8;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = propertiesCopy;
      obj = propertiesCopy;
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

            topLevelPropertyDescriptions = [(DebugHierarchyRequestExecutionContext *)self topLevelPropertyDescriptions];
            [topLevelPropertyDescriptions setObject:v18 forKeyedSubscript:v20];
          }

          v15 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v15);
      }

      objectCopy = v23;
      propertiesCopy = v24;
      v8 = v13;
      v10 = 0;
    }
  }
}

- (void)logRequestErrorWithTitle:(id)title message:(id)message fromMethod:(const char *)method
{
  messageCopy = message;
  titleCopy = title;
  v10 = [NSString stringWithCString:method encoding:4];
  v12 = [DebugHierarchyLogEntry errorLogEntryWithTitle:titleCopy message:messageCopy methodSignature:v10];

  request = [(DebugHierarchyRequestExecutionContext *)self request];
  [request addLogEntry:v12];
}

- (id)requestResponse
{
  v13[0] = @"version";
  v3 = [NSNumber numberWithDouble:2.0];
  v14[0] = v3;
  v13[1] = @"request";
  request = [(DebugHierarchyRequestExecutionContext *)self request];
  dictionaryRepresentation = [request dictionaryRepresentation];
  v14[1] = dictionaryRepresentation;
  v13[2] = @"metaData";
  metaData = [(DebugHierarchyRequestExecutionContext *)self metaData];
  v14[2] = metaData;
  v13[3] = @"classInformation";
  contextRuntimeInfo = [(DebugHierarchyRequestExecutionContext *)self contextRuntimeInfo];
  serializedRepresentation = [contextRuntimeInfo serializedRepresentation];
  v14[3] = serializedRepresentation;
  v13[4] = @"topLevelGroups";
  topLevelGroups = [(DebugHierarchyRequestExecutionContext *)self topLevelGroups];
  v14[4] = topLevelGroups;
  v13[5] = @"topLevelPropertyDescriptions";
  topLevelPropertyDescriptions = [(DebugHierarchyRequestExecutionContext *)self topLevelPropertyDescriptions];
  v14[5] = topLevelPropertyDescriptions;
  v11 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:6];

  return v11;
}

- (id)recursiveDescription
{
  v6 = @"topLevelGroups";
  topLevelGroups = [(DebugHierarchyRequestExecutionContext *)self topLevelGroups];
  v7 = topLevelGroups;
  v3 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  v4 = [v3 generateJSONStringWithError:0];

  return v4;
}

- (id)globalRuntimeInfo
{
  v2 = +[DebugHierarchyTargetHub sharedHub];
  runtimeInfo = [v2 runtimeInfo];

  return runtimeInfo;
}

- (id)runtimeTypeWithName:(id)name
{
  nameCopy = name;
  contextRuntimeInfo = [(DebugHierarchyRequestExecutionContext *)self contextRuntimeInfo];
  v6 = [contextRuntimeInfo typeWithName:nameCopy];

  if (!v6)
  {
    globalRuntimeInfo = [(DebugHierarchyRequestExecutionContext *)self globalRuntimeInfo];
    v6 = [globalRuntimeInfo typeWithName:nameCopy];
  }

  return v6;
}

- (void)_collectRuntimeInformationForObjectType:(id)type
{
  typeCopy = type;
  v5 = objc_opt_class();
  if (v5 && (v6 = v5, object_isClass(v5)))
  {
    v7 = NSStringFromClass(v6);
  }

  else
  {
    v7 = 0;
  }

  globalRuntimeInfo = [(DebugHierarchyRequestExecutionContext *)self globalRuntimeInfo];
  v9 = [globalRuntimeInfo typeWithName:v7];
  if (v9)
  {
  }

  else
  {
    contextRuntimeInfo = [(DebugHierarchyRequestExecutionContext *)self contextRuntimeInfo];
    v11 = [contextRuntimeInfo typeWithName:v7];

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
      reverseObjectEnumerator = [v12 reverseObjectEnumerator];
      v19 = [reverseObjectEnumerator countByEnumeratingWithState:&v51 objects:v56 count:16];
      if (v19)
      {
        v20 = v19;
        v38 = v12;
        v39 = v7;
        v40 = typeCopy;
        v41 = reverseObjectEnumerator;
        v21 = 0;
        v46 = *v52;
        selfCopy = self;
        do
        {
          v22 = 0;
          v43 = v20;
          do
          {
            if (*v52 != v46)
            {
              objc_enumerationMutation(reverseObjectEnumerator);
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

            contextRuntimeInfo2 = [(DebugHierarchyRequestExecutionContext *)self contextRuntimeInfo];
            v26 = [contextRuntimeInfo2 typeWithName:v24];

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

                reverseObjectEnumerator = v41;
                self = selfCopy;
                v21 = v44;
              }

              contextRuntimeInfo3 = [(DebugHierarchyRequestExecutionContext *)self contextRuntimeInfo];
              [contextRuntimeInfo3 addType:v28 toParentType:v21];

              v21 = v28;
              v20 = v43;
              v24 = v45;
            }

            v22 = v22 + 1;
          }

          while (v22 != v20);
          v20 = [reverseObjectEnumerator countByEnumeratingWithState:&v51 objects:v56 count:16];
        }

        while (v20);

        v7 = v39;
        typeCopy = v40;
        v12 = v38;
      }
    }
  }
}

@end