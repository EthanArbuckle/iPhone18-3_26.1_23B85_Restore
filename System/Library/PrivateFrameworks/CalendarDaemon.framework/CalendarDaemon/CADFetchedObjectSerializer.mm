@interface CADFetchedObjectSerializer
- (CADFetchedObjectSerializer)initWithConnection:(id)connection defaultPropertiesToLoad:(id)load relatedObjectPropertiesToLoad:(id)toLoad;
- (NSArray)fetchedObjectWrappers;
- (id)_fetchedObjectDictionaryForEntity:(void *)entity;
- (id)_properties:(id)_properties forEntityIfNotSeen:(void *)seen objectExists:(BOOL *)exists;
- (id)addEntity:(void *)entity;
@end

@implementation CADFetchedObjectSerializer

- (NSArray)fetchedObjectWrappers
{
  wrappers = [(CADFetchedObjectSerializer *)self wrappers];
  v3 = [wrappers copy];

  return v3;
}

- (CADFetchedObjectSerializer)initWithConnection:(id)connection defaultPropertiesToLoad:(id)load relatedObjectPropertiesToLoad:(id)toLoad
{
  connectionCopy = connection;
  loadCopy = load;
  toLoadCopy = toLoad;
  v23.receiver = self;
  v23.super_class = CADFetchedObjectSerializer;
  v12 = [(CADFetchedObjectSerializer *)&v23 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_connection, connection);
    v14 = [loadCopy copy];
    defaultPropertiesToLoad = v13->_defaultPropertiesToLoad;
    v13->_defaultPropertiesToLoad = v14;

    v16 = [toLoadCopy copy];
    relatedObjectPropertiesToLoad = v13->_relatedObjectPropertiesToLoad;
    v13->_relatedObjectPropertiesToLoad = v16;

    array = [MEMORY[0x277CBEB18] array];
    wrappers = v13->_wrappers;
    v13->_wrappers = array;

    v20 = [MEMORY[0x277CBEB58] set];
    seenObjectIDs = v13->_seenObjectIDs;
    v13->_seenObjectIDs = v20;
  }

  return v13;
}

- (id)addEntity:(void *)entity
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = CFGetTypeID(entity);
  TypeID = CalEventOccurrenceGetTypeID();
  if (v5 == TypeID)
  {
    v7 = 0;
LABEL_5:
    Event = CalEventOccurrenceGetEvent();
    CalEventOccurrenceGetDate();
    v10 = v9;
    LOBYTE(v26) = 0;
    defaultPropertiesToLoad = [(CADFetchedObjectSerializer *)self defaultPropertiesToLoad];
    v12 = [(CADFetchedObjectSerializer *)self _properties:defaultPropertiesToLoad forEntityIfNotSeen:Event objectExists:&v26];

    if (v26 == 1)
    {
      v13 = [[CADEventEntityWrapper alloc] initWithCalEntity:Event loadedValues:v12 occurrenceDate:v10];
    }

    else
    {
      v13 = 0;
    }

    if (v5 != TypeID)
    {
      CFRelease(v7);
    }

    if (!v13)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (CalEntityGetType() == 2)
  {
    v7 = CalEventOccurrenceCreateForInitialOccurrence();
    if (v7)
    {
      goto LABEL_5;
    }
  }

  LOBYTE(v26) = 0;
  defaultPropertiesToLoad2 = [(CADFetchedObjectSerializer *)self defaultPropertiesToLoad];
  v15 = [(CADFetchedObjectSerializer *)self _properties:defaultPropertiesToLoad2 forEntityIfNotSeen:entity objectExists:&v26];

  if (v26 == 1)
  {
    v13 = [[CADEntityWrapper alloc] initWithCalEntity:entity loadedValues:v15];
  }

  else
  {
    v13 = 0;
  }

  if (!v13)
  {
    goto LABEL_17;
  }

LABEL_16:
  if (CalEntityIsDeleted())
  {
LABEL_17:
    v16 = 0;
    goto LABEL_18;
  }

  objectID = [(CADEntityWrapper *)v13 objectID];
  entityType = [objectID entityType];

  if ((entityType + 1) <= 1)
  {
    v21 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
    {
      v22 = v21;
      objectID2 = [(CADEntityWrapper *)v13 objectID];
      entityID = [objectID2 entityID];
      LODWORD(v26) = 67109376;
      HIDWORD(v26) = entityID;
      v27 = 1024;
      v28 = entityType;
      _os_log_impl(&dword_22430B000, v22, OS_LOG_TYPE_ERROR, "Entity with rowID = %d has unexpected entity type = %d. Filtering out of search results.", &v26, 0xEu);
    }

    goto LABEL_17;
  }

  wrappers = [(CADFetchedObjectSerializer *)self wrappers];
  [wrappers addObject:v13];

  v16 = v13;
LABEL_18:

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)_properties:(id)_properties forEntityIfNotSeen:(void *)seen objectExists:(BOOL *)exists
{
  v64 = *MEMORY[0x277D85DE8];
  _propertiesCopy = _properties;
  v9 = _propertiesCopy;
  if (exists)
  {
    *exists = 1;
  }

  if (![_propertiesCopy count])
  {
    goto LABEL_9;
  }

  DatabaseForRecord = CalGetDatabaseForRecord();
  Type = CalEntityGetType();
  ID = CalEntityGetID();
  if (Type <= 0)
  {
    v17 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      *v60 = ID;
      *&v60[4] = 1024;
      *&v60[6] = Type;
      _os_log_impl(&dword_22430B000, v17, OS_LOG_TYPE_INFO, "Can't fetch properties for entity with rowID = %d and unexpected entity type = %d.", buf, 0xEu);
    }

LABEL_9:
    v16 = 0;
    goto LABEL_49;
  }

  v13 = [objc_alloc(MEMORY[0x277CF74C8]) initWithEntityType:Type entityID:ID databaseID:CalDatabaseGetAuxilliaryDatabaseID()];
  seenObjectIDs = [(CADFetchedObjectSerializer *)self seenObjectIDs];
  v15 = [seenObjectIDs containsObject:v13];

  if (v15)
  {
    v16 = 0;
  }

  else
  {
    seenObjectIDs2 = [(CADFetchedObjectSerializer *)self seenObjectIDs];
    v42 = v13;
    [seenObjectIDs2 addObject:v13];

    v19 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v9, "count")}];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v43 = v9;
    obj = v9;
    v49 = [obj countByEnumeratingWithState:&v55 objects:v63 count:16];
    if (v49)
    {
      v48 = *v56;
      seenCopy = seen;
      existsCopy = exists;
      v46 = v19;
      while (2)
      {
        for (i = 0; i != v49; ++i)
        {
          if (*v56 != v48)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v55 + 1) + 8 * i);
          cf = 0;
          v22 = CalEntityCopyProperty(self->_connection, seen, v21, &cf);
          if (v22)
          {
            v23 = v22;
            if (CalEntityIsDeleted())
            {
              if (exists)
              {
                *exists = 0;
              }

              v16 = 0;
              goto LABEL_47;
            }

            v24 = CADLogHandle;
            if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              *v60 = v21;
              *&v60[8] = 1024;
              v61 = v23;
              _os_log_impl(&dword_22430B000, v24, OS_LOG_TYPE_ERROR, "Unable to fetch property with name %{public}@, %d", buf, 0x12u);
            }

            null = [MEMORY[0x277CBEB68] null];
            [v19 addObject:null];
          }

          else
          {
            if (!cf)
            {
              goto LABEL_38;
            }

            v26 = CFGetTypeID(cf);
            if (v26 == CPRecordGetTypeID())
            {
              v27 = [(CADFetchedObjectSerializer *)self _fetchedObjectDictionaryForEntity:cf];
              CFRelease(cf);
              cf = v27;
            }

            else
            {
              v28 = CFGetTypeID(cf);
              if (v28 == CFSetGetTypeID())
              {
                v29 = objc_alloc(MEMORY[0x277CBEB18]);
                v30 = [v29 initWithCapacity:CFSetGetCount(cf)];
                v50 = 0u;
                v51 = 0u;
                v52 = 0u;
                v53 = 0u;
                v31 = cf;
                v32 = [v31 countByEnumeratingWithState:&v50 objects:v62 count:16];
                if (v32)
                {
                  v33 = v32;
                  v34 = *v51;
                  do
                  {
                    for (j = 0; j != v33; ++j)
                    {
                      if (*v51 != v34)
                      {
                        objc_enumerationMutation(v31);
                      }

                      v36 = CADCopyEntityInDatabase(DatabaseForRecord, *(*(&v50 + 1) + 8 * j));
                      if (v36)
                      {
                        v37 = v36;
                        v38 = [(CADFetchedObjectSerializer *)self _fetchedObjectDictionaryForEntity:v36];
                        CFRelease(v37);
                        if (v38)
                        {
                          [v30 addObject:v38];
                        }
                      }
                    }

                    v33 = [v31 countByEnumeratingWithState:&v50 objects:v62 count:16];
                  }

                  while (v33);
                }

                CFRelease(cf);
                cf = v30;
                seen = seenCopy;
                exists = existsCopy;
              }
            }

            v19 = v46;
            if (cf)
            {
              null2 = cf;
            }

            else
            {
LABEL_38:
              null2 = [MEMORY[0x277CBEB68] null];
            }

            null = null2;
            [v19 addObject:null2];
            if (cf)
            {
              CFRelease(cf);
            }
          }
        }

        v49 = [obj countByEnumeratingWithState:&v55 objects:v63 count:16];
        if (v49)
        {
          continue;
        }

        break;
      }
    }

    v16 = v19;
LABEL_47:
    v9 = v43;

    v13 = v42;
  }

LABEL_49:
  v40 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)_fetchedObjectDictionaryForEntity:(void *)entity
{
  v25 = *MEMORY[0x277D85DE8];
  Type = CalEntityGetType();
  ID = CalEntityGetID();
  if (Type <= 0)
  {
    v13 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      v22 = ID;
      v23 = 1024;
      v24 = Type;
      _os_log_impl(&dword_22430B000, v13, OS_LOG_TYPE_INFO, "Can't fetch object dictionary for related entity with rowID = %d and unexpected entity type = %d.", buf, 0xEu);
    }

    v14 = 0;
  }

  else
  {
    relatedObjectPropertiesToLoad = [(CADFetchedObjectSerializer *)self relatedObjectPropertiesToLoad];
    v8 = [MEMORY[0x277CCABB0] numberWithInt:Type];
    v9 = [relatedObjectPropertiesToLoad objectForKeyedSubscript:v8];

    v20 = 0;
    v10 = [(CADFetchedObjectSerializer *)self _properties:v9 forEntityIfNotSeen:entity objectExists:&v20];
    v11 = v10;
    if (v20)
    {
      if (v10)
      {
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9];
      }

      else
      {
        v12 = 0;
      }

      v16 = CADEntityCopyObjectID();
      if ([v16 isVirtual])
      {
        AuxilliaryDatabaseID = 0;
      }

      else
      {
        CalGetDatabaseForRecord();
        AuxilliaryDatabaseID = CalDatabaseGetAuxilliaryDatabaseID();
      }

      v14 = CalFetchedObjectDictionary(Type, ID, AuxilliaryDatabaseID, v12);
    }

    else
    {
      v15 = CADLogHandle;
      if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        v22 = ID;
        _os_log_impl(&dword_22430B000, v15, OS_LOG_TYPE_INFO, "Can't fetch object dictionary for related entity with rowID = %d because it appears to be deleted", buf, 8u);
      }

      v14 = 0;
    }
  }

  v18 = *MEMORY[0x277D85DE8];

  return v14;
}

@end