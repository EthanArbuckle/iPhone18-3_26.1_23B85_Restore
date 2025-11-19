@interface _DKObject
+ (id)fetchObjectWithUUID:(id)a3 context:(id)a4;
+ (id)fromPBCodable:(id)a3;
+ (id)objectFromManagedObject:(id)a3 readMetadata:(BOOL)a4 excludedMetadataKeys:(id)a5 cache:(id)a6;
- (BOOL)copyBaseObjectInfoFromManagedObject:(id)a3 cache:(id)a4;
- (BOOL)copyToManagedObject:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (_DKObject)init;
- (_DKObject)initWithCoder:(id)a3;
- (id)entityName;
- (id)stringValue;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _DKObject

- (_DKObject)init
{
  v3.receiver = self;
  v3.super_class = _DKObject;
  return [(_DKObject *)&v3 init];
}

+ (id)fromPBCodable:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [(_DKPRValue *)v4 type];
    v6 = [(_DKPRValueType *)v5 type];

    if (v6 > 2)
    {
      v7 = 0;
    }

    else
    {
      v7 = [(__objc2_class *)*off_1E7368F80[v6] fromPBCodable:v4];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (_DKObject)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = _DKObject;
  v5 = [(_DKObject *)&v16 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
    UUID = v5->_UUID;
    v5->_UUID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"source"];
    source = v5->_source;
    v5->_source = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
    creationDate = v5->_creationDate;
    v5->_creationDate = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localCreationDate"];
    localCreationDate = v5->_localCreationDate;
    v5->_localCreationDate = v12;

    v14 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  UUID = self->_UUID;
  v5 = a3;
  [v5 encodeObject:UUID forKey:@"UUID"];
  [v5 encodeObject:self->_source forKey:@"source"];
  [v5 encodeObject:self->_creationDate forKey:@"creationDate"];
  [v5 encodeObject:self->_localCreationDate forKey:@"localCreationDate"];
}

- (NSString)description
{
  if (self->_creationDate || self->_localCreationDate)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [(NSUUID *)self->_UUID UUIDString];
    [v3 stringWithFormat:@"%@: { UUID=%@; source=%@; creationDate=%@, localCreationDate=%@ }", v5, v6, self->_source, self->_creationDate, self->_localCreationDate];
  }

  else
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = objc_opt_class();
    v5 = NSStringFromClass(v10);
    v6 = [(NSUUID *)self->_UUID UUIDString];
    [v9 stringWithFormat:@"%@: { UUID=%@; source=%@; }", v5, v6, self->_source, v11, v12];
  }
  v7 = ;

  return v7;
}

- (id)stringValue
{
  if ([(_DKObject *)self conformsToProtocol:&unk_1F05F7418])
  {
    v3 = [(_DKObject *)self primaryValue];
    v4 = [v3 description];
  }

  else
  {
    v4 = [(_DKObject *)self description];
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self == v5)
  {
    v11 = 1;
  }

  else
  {
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
        v8 = [(_DKObject *)self source];
        v9 = [(_DKObject *)v7 source];
        if (v8 != v9)
        {
          v10 = [(_DKObject *)self source];
          v3 = [(_DKObject *)v7 source];
          if (![v10 isEqual:v3])
          {
            v11 = 0;
LABEL_14:

LABEL_15:
            goto LABEL_16;
          }

          v17 = v10;
        }

        v12 = [(_DKObject *)self UUID];
        v13 = [(_DKObject *)v7 UUID];
        if (v12 == v13)
        {
          v11 = 1;
        }

        else
        {
          v14 = [(_DKObject *)self UUID];
          v15 = [(_DKObject *)v7 UUID];
          v11 = [v14 isEqual:v15];
        }

        v10 = v17;
        if (v8 == v9)
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

+ (id)fetchObjectWithUUID:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
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
  v7 = v6;
  v12 = v7;
  v8 = v5;
  v13 = v8;
  v14 = &v15;
  [v7 performWithOptions:4 andBlock:v11];
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

+ (id)objectFromManagedObject:(id)a3 readMetadata:(BOOL)a4 excludedMetadataKeys:(id)a5 cache:(id)a6
{
  v26 = a4;
  v33[4] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v27 = a5;
  v9 = a6;
  v33[0] = objc_opt_class();
  v33[1] = objc_opt_class();
  v33[2] = objc_opt_class();
  v33[3] = objc_opt_class();
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:4];
  v11 = v8;
  v12 = [v8 entity];
  v13 = [v12 name];

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
        v20 = [v19 entityName];
        v21 = [v13 isEqualToString:v20];

        if (v21)
        {
          v22 = [v19 objectFromManagedObject:v11 readMetadata:v26 excludedMetadataKeys:v27 cache:v9];
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

- (BOOL)copyToManagedObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_17;
  }

  v6 = v4;
  v7 = [(_DKObject *)self UUID];
  v8 = [v7 UUIDString];
  [v6 setUuid:v8];

  v9 = MEMORY[0x1E696AD98];
  v10 = [v6 uuid];
  v11 = [v9 numberWithUnsignedInteger:{objc_msgSend(v10, "hash")}];
  [v6 setUuidHash:v11];

  v12 = [MEMORY[0x1E695DF00] date];
  v13 = [(_DKObject *)self creationDate];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v12;
  }

  [v6 setCreationDate:v15];

  [v6 setLocalCreationDate:v12];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v6;
    v17 = [v16 streamName];
    if ([v17 isEqualToString:@"/device/isPluggedIn"])
    {
      v18 = [v16 creationDate];
      [v18 timeIntervalSinceReferenceDate];
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

      v17 = +[_CDLogging knowledgeChannel];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        [(_DKObject(MOConversion) *)v16 copyToManagedObject:v12, v17];
      }
    }

LABEL_13:
  }

  v23 = [(_DKObject *)self source];

  if (v23)
  {
    v24 = [(_DKObject *)self source];
    v25 = [v6 managedObjectContext];
    v26 = [_DKSourceMOConverter insertSource:v24 inManagedObjectContext:v25];
    [v6 setSource:v26];
  }

LABEL_17:
  return isKindOfClass & 1;
}

- (BOOL)copyBaseObjectInfoFromManagedObject:(id)a3 cache:(id)a4
{
  v5 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v7 = v5;
    v8 = objc_alloc(MEMORY[0x1E696AFB0]);
    v9 = [v7 uuid];
    v10 = [v8 initWithUUIDString:v9];
    [(_DKObject *)self setUUID:v10];

    v11 = [v7 source];

    if (v11)
    {
      v12 = [v7 source];
      v13 = [_DKSourceMOConverter sourceFromManagedObject:v12];
      [(_DKObject *)self setSource:v13];
    }

    v14 = [v7 creationDate];
    [(_DKObject *)self setCreationDate:v14];

    v15 = [v7 localCreationDate];
    [(_DKObject *)self setLocalCreationDate:v15];
  }

  return isKindOfClass & 1;
}

@end