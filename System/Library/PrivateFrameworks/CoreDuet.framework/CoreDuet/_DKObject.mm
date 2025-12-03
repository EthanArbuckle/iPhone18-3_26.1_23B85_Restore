@interface _DKObject
+ (id)fetchObjectWithUUID:(id)d context:(id)context;
+ (id)fromPBCodable:(id)codable;
+ (id)objectFromManagedObject:(id)object readMetadata:(BOOL)metadata excludedMetadataKeys:(id)keys cache:(id)cache;
- (BOOL)copyBaseObjectInfoFromManagedObject:(id)object cache:(id)cache;
- (BOOL)copyToManagedObject:(id)object;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (_DKObject)init;
- (_DKObject)initWithCoder:(id)coder;
- (id)entityName;
- (id)stringValue;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _DKObject

- (_DKObject)init
{
  v3.receiver = self;
  v3.super_class = _DKObject;
  return [(_DKObject *)&v3 init];
}

+ (id)fromPBCodable:(id)codable
{
  codableCopy = codable;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = codableCopy;
    type = [(_DKPRValue *)v4 type];
    v5Type = [(_DKPRValueType *)type type];

    if (v5Type > 2)
    {
      v7 = 0;
    }

    else
    {
      v7 = [(__objc2_class *)*off_1E7368F80[v5Type] fromPBCodable:v4];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (_DKObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = _DKObject;
  v5 = [(_DKObject *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
    UUID = v5->_UUID;
    v5->_UUID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"source"];
    source = v5->_source;
    v5->_source = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
    creationDate = v5->_creationDate;
    v5->_creationDate = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localCreationDate"];
    localCreationDate = v5->_localCreationDate;
    v5->_localCreationDate = v12;

    v14 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  UUID = self->_UUID;
  coderCopy = coder;
  [coderCopy encodeObject:UUID forKey:@"UUID"];
  [coderCopy encodeObject:self->_source forKey:@"source"];
  [coderCopy encodeObject:self->_creationDate forKey:@"creationDate"];
  [coderCopy encodeObject:self->_localCreationDate forKey:@"localCreationDate"];
}

- (NSString)description
{
  if (self->_creationDate || self->_localCreationDate)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    uUIDString = [(NSUUID *)self->_UUID UUIDString];
    [v3 stringWithFormat:@"%@: { UUID=%@; source=%@; creationDate=%@, localCreationDate=%@ }", v5, uUIDString, self->_source, self->_creationDate, self->_localCreationDate];
  }

  else
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = objc_opt_class();
    v5 = NSStringFromClass(v10);
    uUIDString = [(NSUUID *)self->_UUID UUIDString];
    [v9 stringWithFormat:@"%@: { UUID=%@; source=%@; }", v5, uUIDString, self->_source, v11, v12];
  }
  v7 = ;

  return v7;
}

- (id)stringValue
{
  if ([(_DKObject *)self conformsToProtocol:&unk_1F05F7418])
  {
    primaryValue = [(_DKObject *)self primaryValue];
    v4 = [primaryValue description];
  }

  else
  {
    v4 = [(_DKObject *)self description];
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = equalCopy;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
        source = [(_DKObject *)self source];
        source2 = [(_DKObject *)v7 source];
        if (source != source2)
        {
          source3 = [(_DKObject *)self source];
          source4 = [(_DKObject *)v7 source];
          if (![source3 isEqual:source4])
          {
            v11 = 0;
LABEL_14:

LABEL_15:
            goto LABEL_16;
          }

          v17 = source3;
        }

        uUID = [(_DKObject *)self UUID];
        uUID2 = [(_DKObject *)v7 UUID];
        if (uUID == uUID2)
        {
          v11 = 1;
        }

        else
        {
          uUID3 = [(_DKObject *)self UUID];
          uUID4 = [(_DKObject *)v7 UUID];
          v11 = [uUID3 isEqual:uUID4];
        }

        source3 = v17;
        if (source == source2)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }
    }

    v11 = 0;
  }

LABEL_16:

  return v11;
}

- (id)entityName
{
  v2 = objc_opt_class();

  return [v2 entityName];
}

+ (id)fetchObjectWithUUID:(id)d context:(id)context
{
  dCopy = d;
  contextCopy = context;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__20;
  v19 = __Block_byref_object_dispose__20;
  v20 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55___DKObject_MOConversion__fetchObjectWithUUID_context___block_invoke;
  v11[3] = &unk_1E7368808;
  v7 = contextCopy;
  v12 = v7;
  v8 = dCopy;
  v13 = v8;
  v14 = &v15;
  [v7 performWithOptions:4 andBlock:v11];
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

+ (id)objectFromManagedObject:(id)object readMetadata:(BOOL)metadata excludedMetadataKeys:(id)keys cache:(id)cache
{
  metadataCopy = metadata;
  v33[4] = *MEMORY[0x1E69E9840];
  objectCopy = object;
  keysCopy = keys;
  cacheCopy = cache;
  v33[0] = objc_opt_class();
  v33[1] = objc_opt_class();
  v33[2] = objc_opt_class();
  v33[3] = objc_opt_class();
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:4];
  v11 = objectCopy;
  entity = [objectCopy entity];
  name = [entity name];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = v10;
  v15 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v29;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v29 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v28 + 1) + 8 * i);
        entityName = [v19 entityName];
        v21 = [name isEqualToString:entityName];

        if (v21)
        {
          v22 = [v19 objectFromManagedObject:v11 readMetadata:metadataCopy excludedMetadataKeys:keysCopy cache:cacheCopy];
          if (v22)
          {
            v23 = v22;
            goto LABEL_12;
          }
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v23 = 0;
LABEL_12:

  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

- (BOOL)copyToManagedObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_17;
  }

  v6 = objectCopy;
  uUID = [(_DKObject *)self UUID];
  uUIDString = [uUID UUIDString];
  [v6 setUuid:uUIDString];

  v9 = MEMORY[0x1E696AD98];
  uuid = [v6 uuid];
  v11 = [v9 numberWithUnsignedInteger:{objc_msgSend(uuid, "hash")}];
  [v6 setUuidHash:v11];

  date = [MEMORY[0x1E695DF00] date];
  creationDate = [(_DKObject *)self creationDate];
  v14 = creationDate;
  if (creationDate)
  {
    v15 = creationDate;
  }

  else
  {
    v15 = date;
  }

  [v6 setCreationDate:v15];

  [v6 setLocalCreationDate:date];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v6;
    streamName = [v16 streamName];
    if ([streamName isEqualToString:@"/device/isPluggedIn"])
    {
      creationDate2 = [v16 creationDate];
      [creationDate2 timeIntervalSinceReferenceDate];
      v20 = v19;
      [v16 endDate];
      v22 = v20 - v21;

      if (v22 < 0.0)
      {
        v22 = -v22;
      }

      if (v22 <= 3600.0)
      {
        goto LABEL_13;
      }

      streamName = +[_CDLogging knowledgeChannel];
      if (os_log_type_enabled(streamName, OS_LOG_TYPE_FAULT))
      {
        [(_DKObject(MOConversion) *)v16 copyToManagedObject:date, streamName];
      }
    }

LABEL_13:
  }

  source = [(_DKObject *)self source];

  if (source)
  {
    source2 = [(_DKObject *)self source];
    managedObjectContext = [v6 managedObjectContext];
    v26 = [_DKSourceMOConverter insertSource:source2 inManagedObjectContext:managedObjectContext];
    [v6 setSource:v26];
  }

LABEL_17:
  return isKindOfClass & 1;
}

- (BOOL)copyBaseObjectInfoFromManagedObject:(id)object cache:(id)cache
{
  objectCopy = object;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v7 = objectCopy;
    v8 = objc_alloc(MEMORY[0x1E696AFB0]);
    uuid = [v7 uuid];
    v10 = [v8 initWithUUIDString:uuid];
    [(_DKObject *)self setUUID:v10];

    source = [v7 source];

    if (source)
    {
      source2 = [v7 source];
      v13 = [_DKSourceMOConverter sourceFromManagedObject:source2];
      [(_DKObject *)self setSource:v13];
    }

    creationDate = [v7 creationDate];
    [(_DKObject *)self setCreationDate:creationDate];

    localCreationDate = [v7 localCreationDate];
    [(_DKObject *)self setLocalCreationDate:localCreationDate];
  }

  return isKindOfClass & 1;
}

@end