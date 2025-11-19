@interface _DKChangeSet
+ (id)_createFromData:(id)a3 deviceIdentifier:(id)a4 sequenceNumber:(unint64_t)a5 startDate:(id)a6 endDate:(id)a7;
+ (id)dataFromCompressedChangeSet:(id)a3;
+ (id)fromPBCodable:(id)a3;
- (NSString)description;
- (_DKChangeSet)initWithEventsToAdd:(id)a3 eventIDsToDelete:(id)a4 deviceIdentifier:(id)a5 sequenceNumber:(unint64_t)a6;
- (_DKChangeSet)initWithEventsToAdd:(id)a3 eventIDsToDelete:(id)a4 deviceIdentifier:(id)a5 sequenceNumber:(unint64_t)a6 startDate:(id)a7 endDate:(id)a8 type:(id)a9;
- (_DKChangeSet)initWithManagedObject:(id)a3;
- (id)asData;
- (id)insertInManagedObjectContext:(id)a3;
- (id)toPBCodable;
@end

@implementation _DKChangeSet

- (_DKChangeSet)initWithEventsToAdd:(id)a3 eventIDsToDelete:(id)a4 deviceIdentifier:(id)a5 sequenceNumber:(unint64_t)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [v11 count];
  v14 = @"deletion";
  if (!v13)
  {
    v14 = @"addition";
  }

  v15 = [(_DKChangeSet *)self initWithEventsToAdd:v12 eventIDsToDelete:v11 deviceIdentifier:v10 sequenceNumber:a6 startDate:0 endDate:0 type:v14];

  return v15;
}

- (_DKChangeSet)initWithEventsToAdd:(id)a3 eventIDsToDelete:(id)a4 deviceIdentifier:(id)a5 sequenceNumber:(unint64_t)a6 startDate:(id)a7 endDate:(id)a8 type:(id)a9
{
  v24 = a3;
  v23 = a4;
  v22 = a5;
  v15 = a7;
  v16 = a8;
  v17 = a9;
  v25.receiver = self;
  v25.super_class = _DKChangeSet;
  v18 = [(_DKChangeSet *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_eventsToAdd, a3);
    objc_storeStrong(&v19->_eventIDsToDelete, a4);
    objc_storeStrong(&v19->_deviceIdentifier, a5);
    v19->_sequenceNumber = a6;
    objc_storeStrong(&v19->_startDate, a7);
    objc_storeStrong(&v19->_endDate, a8);
    objc_storeStrong(&v19->_type, a9);
  }

  return v19;
}

+ (id)_createFromData:(id)a3 deviceIdentifier:(id)a4 sequenceNumber:(unint64_t)a5 startDate:(id)a6 endDate:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a4;
  v14 = a3;
  v15 = [[_DKPRChangeSet alloc] initWithData:v14];

  v16 = [_DKChangeSet fromPBCodable:v15];
  [v16 setDeviceIdentifier:v13];

  [v16 setSequenceNumber:a5];
  [v16 setStartDate:v12];

  [v16 setEndDate:v11];
  v17 = [v16 eventIDsToDelete];
  if ([v17 count])
  {
    v18 = @"deletion";
  }

  else
  {
    v18 = @"addition";
  }

  [v16 setType:v18];

  return v16;
}

- (id)asData
{
  v2 = [(_DKChangeSet *)self toPBCodable];
  v3 = [v2 data];

  return v3;
}

- (NSString)description
{
  if ([(NSString *)self->_type isEqualToString:@"addition"])
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_sequenceNumber];
    deviceIdentifier = self->_deviceIdentifier;
    startDate = self->_startDate;
    endDate = self->_endDate;
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSArray count](self->_eventsToAdd, "count")}];
    [v3 stringWithFormat:@"%@:{ sequenceNumber=%@; deviceIdentifier=%@; startDate=%@; endDate=%@; eventsToAdd.count=%@; eventsToAdd=%@; }", v5, v6, deviceIdentifier, startDate, endDate, v10, self->_eventsToAdd];
    v18 = LABEL_5:;

    goto LABEL_7;
  }

  v11 = [(NSString *)self->_type isEqualToString:@"deletion"];
  v12 = MEMORY[0x1E696AEC0];
  v13 = objc_opt_class();
  v5 = NSStringFromClass(v13);
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_sequenceNumber];
  v6 = v14;
  v15 = self->_deviceIdentifier;
  v16 = self->_startDate;
  v17 = self->_endDate;
  if (v11)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSArray count](self->_eventIDsToDelete, "count")}];
    [v12 stringWithFormat:@"%@:{ sequenceNumber=%@; deviceIdentifier=%@; startDate=%@; endDate=%@; eventIDsToDelete.count=%@; eventIDsToDelete=%@; }", v5, v6, v15, v16, v17, v10, self->_eventIDsToDelete];
    goto LABEL_5;
  }

  v18 = [v12 stringWithFormat:@"%@:{ sequenceNumber=%@ deviceIdentifier=%@; startDate=%@; endDate=%@; type=%@; }", v5, v14, v15, v16, self->_endDate, self->_type];;
LABEL_7:

  return v18;
}

- (id)toPBCodable
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = [(_DKChangeSet *)self eventsToAdd];
  if ([v3 count])
  {
  }

  else
  {
    v4 = [(_DKChangeSet *)self eventIDsToDelete];
    v5 = [v4 count];

    if (!v5)
    {
      v8 = 0;
      goto LABEL_22;
    }
  }

  v6 = [(_DKChangeSet *)self eventIDsToDelete];
  v7 = [v6 count];

  v8 = objc_alloc_init(_DKPRChangeSet);
  v9 = MEMORY[0x1E695DF70];
  if (v7)
  {
    v10 = [(_DKChangeSet *)self eventIDsToDelete];
    v11 = [v9 arrayWithCapacity:{objc_msgSend(v10, "count")}];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v12 = [(_DKChangeSet *)self eventIDsToDelete];
    v13 = [v12 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v28;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v28 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v27 + 1) + 8 * i) UUIDString];
          [v11 addObject:v17];
        }

        v14 = [v12 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v14);
    }

    [(_DKPRChangeSet *)v8 setDeleteEventIDs:v11];
  }

  else
  {
    v18 = [(_DKChangeSet *)self eventsToAdd];
    v11 = [v9 arrayWithCapacity:{objc_msgSend(v18, "count")}];

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v19 = [(_DKChangeSet *)self eventsToAdd];
    v20 = [v19 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v32;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v32 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = [*(*(&v31 + 1) + 8 * j) toPBCodable];
          [v11 addObject:v24];
        }

        v21 = [v19 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v21);
    }

    [(_DKPRChangeSet *)v8 setEvents:v11];
  }

LABEL_22:
  v25 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)fromPBCodable:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = 0;
    goto LABEL_25;
  }

  v4 = v3;
  v5 = [(_DKPRChangeSet *)v4 events];
  if ([v5 count])
  {

LABEL_6:
    v9 = [(_DKPRChangeSet *)v4 deleteEventIDs];
    v10 = [v9 count];

    v11 = MEMORY[0x1E695DF70];
    if (v10)
    {
      v12 = [MEMORY[0x1E695DF70] array];
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v13 = [(_DKPRChangeSet *)v4 deleteEventIDs];
      v14 = [v13 countByEnumeratingWithState:&v30 objects:v38 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v31;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v31 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v30 + 1) + 8 * i);
            v19 = objc_alloc(MEMORY[0x1E696AFB0]);
            v20 = [v19 initWithUUIDString:{v18, v30}];
            [v12 addObject:v20];
          }

          v15 = [v13 countByEnumeratingWithState:&v30 objects:v38 count:16];
        }

        while (v15);
      }

      v6 = objc_opt_new();
      [v6 setEventIDsToDelete:v12];
    }

    else
    {
      v21 = [(_DKPRChangeSet *)v4 events];
      v12 = [v11 arrayWithCapacity:{objc_msgSend(v21, "count")}];

      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v22 = [(_DKPRChangeSet *)v4 events];
      v23 = [v22 countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v35;
        do
        {
          for (j = 0; j != v24; ++j)
          {
            if (*v35 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = [_DKEvent fromPBCodable:*(*(&v34 + 1) + 8 * j)];
            [v12 addObject:v27];
          }

          v24 = [v22 countByEnumeratingWithState:&v34 objects:v39 count:16];
        }

        while (v24);
      }

      v6 = objc_opt_new();
      [v6 setEventsToAdd:v12];
    }

    goto LABEL_24;
  }

  v7 = [(_DKPRChangeSet *)v4 deleteEventIDs];
  v8 = [v7 count];

  if (v8)
  {
    goto LABEL_6;
  }

  v6 = 0;
LABEL_24:

LABEL_25:
  v28 = *MEMORY[0x1E69E9840];

  return v6;
}

- (_DKChangeSet)initWithManagedObject:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x1E696AFB0]);
  v6 = [v4 deviceIdentifier];
  v7 = [v5 initWithUUIDString:v6];

  v8 = [v4 version];
  v9 = [v8 isEqualToNumber:&unk_1F05EEE80];

  if ((v9 & 1) == 0)
  {
    v12 = [v4 version];
    v13 = [v12 isEqualToNumber:&unk_1F05EEE98];

    if (v13)
    {
      v14 = objc_opt_class();
      v15 = [v4 changeSet];
      v11 = [v14 dataFromCompressedChangeSet:v15];

      if (v11)
      {
        goto LABEL_6;
      }

      v11 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [_DKChangeSet(CoreData) initWithManagedObject:v11];
      }
    }

    else
    {
      v11 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(_DKChangeSet(CoreData) *)v4 initWithManagedObject:v11];
      }
    }

    v21 = 0;
    goto LABEL_13;
  }

  v10 = [v4 changeSet];
  if (v10)
  {
    v11 = v10;
LABEL_6:
    v16 = objc_opt_class();
    v17 = [v4 sequenceNumber];
    v18 = [v17 unsignedIntegerValue];
    v19 = [v4 startDate];
    v20 = [v4 endDate];
    v21 = [v16 createFromData:v11 deviceIdentifier:v7 sequenceNumber:v18 startDate:v19 endDate:v20];

LABEL_13:
    goto LABEL_14;
  }

  v21 = 0;
LABEL_14:

  return v21;
}

+ (id)dataFromCompressedChangeSet:(id)a3
{
  v3 = a3;
  v4 = [[_DKPRCompressedChangeSet alloc] initWithData:v3];

  if (![(_DKPRCompressedChangeSet *)v4 uncompressedLength])
  {
    goto LABEL_6;
  }

  v5 = [(_DKPRCompressedChangeSet *)v4 compressedData];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = v5;
  v7 = [(_DKPRCompressedChangeSet *)v4 compressedData];
  v8 = [v7 length];

  if (v8)
  {
    v9 = [(_DKPRCompressedChangeSet *)v4 uncompressedLength];
    v10 = malloc_type_malloc(v9 + 32, 0xE2DBC20EuLL);
    v11 = [(_DKPRCompressedChangeSet *)v4 compressedData];
    v12 = [v11 bytes];
    v13 = [(_DKPRCompressedChangeSet *)v4 compressedData];
    v14 = compression_decode_buffer(v10, v9 + 32, v12, [v13 length], 0, COMPRESSION_LZFSE);

    if (v14 == [(_DKPRCompressedChangeSet *)v4 uncompressedLength])
    {
      v15 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v10 length:v14 freeWhenDone:1];
      goto LABEL_10;
    }

    v18 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [(_DKChangeSet(CoreData) *)v14 dataFromCompressedChangeSet:v4, v18];
    }

    free(v10);
  }

  else
  {
LABEL_6:
    v16 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [_DKChangeSet(CoreData) dataFromCompressedChangeSet:v16];
    }
  }

  v15 = 0;
LABEL_10:

  return v15;
}

- (id)insertInManagedObjectContext:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_DKChangeSet *)self asData];
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = [(_DKChangeSet *)self eventsToAdd];
  if ([v6 count] && objc_msgSend(v5, "length") >= 0x401)
  {
  }

  else
  {
    v7 = [(_DKChangeSet *)self eventIDsToDelete];
    if (![v7 count])
    {

      goto LABEL_14;
    }

    v8 = [v5 length];

    if (v8 < 0x801)
    {
LABEL_14:
      v15 = 0;
      goto LABEL_15;
    }
  }

  v9 = [v5 length];
  v10 = malloc_type_malloc(v9, 0xC1F1255CuLL);
  v11 = compression_encode_buffer(v10, v9, [v5 bytes], objc_msgSend(v5, "length"), 0, COMPRESSION_LZFSE);
  if (!v11 || (v12 = v11, v11 >= [v5 length]))
  {
    free(v10);
    goto LABEL_14;
  }

  v13 = objc_alloc_init(_DKPRCompressedChangeSet);
  -[_DKPRCompressedChangeSet setUncompressedLength:](v13, [v5 length]);
  v14 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v10 length:v12 freeWhenDone:1];
  [(_DKPRCompressedChangeSet *)v13 setCompressedData:v14];

  v15 = [(_DKPRCompressedChangeSet *)v13 data];

  if (v15)
  {
    v16 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v30 = [(_DKChangeSet *)self eventIDsToDelete];
      if ([v30 count])
      {
        v31 = @"Deletion";
      }

      else
      {
        v31 = @"Addition";
      }

      v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v15, "length")}];
      v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v5, "length")}];
      v34 = 138412802;
      v35 = v31;
      v36 = 2112;
      v37 = v32;
      v38 = 2112;
      v39 = v33;
      _os_log_debug_impl(&dword_191750000, v16, OS_LOG_TYPE_DEBUG, "%@ change set compressed to %@ (from %@)", &v34, 0x20u);
    }
  }

LABEL_15:
  v17 = [(_DKChangeSet *)self eventIDsToDelete];
  if ([v17 count])
  {
    +[_DKChangeSet deletionChangeSetEntityName];
  }

  else
  {
    +[_DKChangeSet additionChangeSetEntityName];
  }
  v18 = ;

  v19 = [MEMORY[0x1E695D5B8] insertNewObjectForEntityForName:v18 inManagedObjectContext:v4];
  v20 = v19;
  if (v15)
  {
    v21 = v15;
  }

  else
  {
    v21 = v5;
  }

  if (v15)
  {
    v22 = &unk_1F05EEE98;
  }

  else
  {
    v22 = &unk_1F05EEE80;
  }

  [v19 setChangeSet:v21];
  v23 = [(_DKChangeSet *)self deviceIdentifier];
  v24 = [v23 UUIDString];
  [v20 setDeviceIdentifier:v24];

  v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_DKChangeSet sequenceNumber](self, "sequenceNumber")}];
  [v20 setSequenceNumber:v25];

  v26 = [(_DKChangeSet *)self startDate];
  [v20 setStartDate:v26];

  v27 = [(_DKChangeSet *)self endDate];
  [v20 setEndDate:v27];

  [v20 setVersion:v22];
  [v4 insertObject:v20];

  v28 = *MEMORY[0x1E69E9840];

  return v20;
}

@end