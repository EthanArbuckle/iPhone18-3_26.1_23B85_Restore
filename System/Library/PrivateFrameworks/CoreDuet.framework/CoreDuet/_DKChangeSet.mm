@interface _DKChangeSet
+ (id)_createFromData:(id)data deviceIdentifier:(id)identifier sequenceNumber:(unint64_t)number startDate:(id)date endDate:(id)endDate;
+ (id)dataFromCompressedChangeSet:(id)set;
+ (id)fromPBCodable:(id)codable;
- (NSString)description;
- (_DKChangeSet)initWithEventsToAdd:(id)add eventIDsToDelete:(id)delete deviceIdentifier:(id)identifier sequenceNumber:(unint64_t)number;
- (_DKChangeSet)initWithEventsToAdd:(id)add eventIDsToDelete:(id)delete deviceIdentifier:(id)identifier sequenceNumber:(unint64_t)number startDate:(id)date endDate:(id)endDate type:(id)type;
- (_DKChangeSet)initWithManagedObject:(id)object;
- (id)asData;
- (id)insertInManagedObjectContext:(id)context;
- (id)toPBCodable;
@end

@implementation _DKChangeSet

- (_DKChangeSet)initWithEventsToAdd:(id)add eventIDsToDelete:(id)delete deviceIdentifier:(id)identifier sequenceNumber:(unint64_t)number
{
  identifierCopy = identifier;
  deleteCopy = delete;
  addCopy = add;
  v13 = [deleteCopy count];
  v14 = @"deletion";
  if (!v13)
  {
    v14 = @"addition";
  }

  v15 = [(_DKChangeSet *)self initWithEventsToAdd:addCopy eventIDsToDelete:deleteCopy deviceIdentifier:identifierCopy sequenceNumber:number startDate:0 endDate:0 type:v14];

  return v15;
}

- (_DKChangeSet)initWithEventsToAdd:(id)add eventIDsToDelete:(id)delete deviceIdentifier:(id)identifier sequenceNumber:(unint64_t)number startDate:(id)date endDate:(id)endDate type:(id)type
{
  addCopy = add;
  deleteCopy = delete;
  identifierCopy = identifier;
  dateCopy = date;
  endDateCopy = endDate;
  typeCopy = type;
  v25.receiver = self;
  v25.super_class = _DKChangeSet;
  v18 = [(_DKChangeSet *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_eventsToAdd, add);
    objc_storeStrong(&v19->_eventIDsToDelete, delete);
    objc_storeStrong(&v19->_deviceIdentifier, identifier);
    v19->_sequenceNumber = number;
    objc_storeStrong(&v19->_startDate, date);
    objc_storeStrong(&v19->_endDate, endDate);
    objc_storeStrong(&v19->_type, type);
  }

  return v19;
}

+ (id)_createFromData:(id)data deviceIdentifier:(id)identifier sequenceNumber:(unint64_t)number startDate:(id)date endDate:(id)endDate
{
  endDateCopy = endDate;
  dateCopy = date;
  identifierCopy = identifier;
  dataCopy = data;
  v15 = [[_DKPRChangeSet alloc] initWithData:dataCopy];

  v16 = [_DKChangeSet fromPBCodable:v15];
  [v16 setDeviceIdentifier:identifierCopy];

  [v16 setSequenceNumber:number];
  [v16 setStartDate:dateCopy];

  [v16 setEndDate:endDateCopy];
  eventIDsToDelete = [v16 eventIDsToDelete];
  if ([eventIDsToDelete count])
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
  toPBCodable = [(_DKChangeSet *)self toPBCodable];
  data = [toPBCodable data];

  return data;
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
  eventsToAdd = [(_DKChangeSet *)self eventsToAdd];
  if ([eventsToAdd count])
  {
  }

  else
  {
    eventIDsToDelete = [(_DKChangeSet *)self eventIDsToDelete];
    v5 = [eventIDsToDelete count];

    if (!v5)
    {
      v8 = 0;
      goto LABEL_22;
    }
  }

  eventIDsToDelete2 = [(_DKChangeSet *)self eventIDsToDelete];
  v7 = [eventIDsToDelete2 count];

  v8 = objc_alloc_init(_DKPRChangeSet);
  v9 = MEMORY[0x1E695DF70];
  if (v7)
  {
    eventIDsToDelete3 = [(_DKChangeSet *)self eventIDsToDelete];
    v11 = [v9 arrayWithCapacity:{objc_msgSend(eventIDsToDelete3, "count")}];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    eventIDsToDelete4 = [(_DKChangeSet *)self eventIDsToDelete];
    v13 = [eventIDsToDelete4 countByEnumeratingWithState:&v27 objects:v35 count:16];
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
            objc_enumerationMutation(eventIDsToDelete4);
          }

          uUIDString = [*(*(&v27 + 1) + 8 * i) UUIDString];
          [v11 addObject:uUIDString];
        }

        v14 = [eventIDsToDelete4 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v14);
    }

    [(_DKPRChangeSet *)v8 setDeleteEventIDs:v11];
  }

  else
  {
    eventsToAdd2 = [(_DKChangeSet *)self eventsToAdd];
    v11 = [v9 arrayWithCapacity:{objc_msgSend(eventsToAdd2, "count")}];

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    eventsToAdd3 = [(_DKChangeSet *)self eventsToAdd];
    v20 = [eventsToAdd3 countByEnumeratingWithState:&v31 objects:v36 count:16];
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
            objc_enumerationMutation(eventsToAdd3);
          }

          toPBCodable = [*(*(&v31 + 1) + 8 * j) toPBCodable];
          [v11 addObject:toPBCodable];
        }

        v21 = [eventsToAdd3 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v21);
    }

    [(_DKPRChangeSet *)v8 setEvents:v11];
  }

LABEL_22:
  v25 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)fromPBCodable:(id)codable
{
  v40 = *MEMORY[0x1E69E9840];
  codableCopy = codable;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = 0;
    goto LABEL_25;
  }

  v4 = codableCopy;
  events = [(_DKPRChangeSet *)v4 events];
  if ([events count])
  {

LABEL_6:
    deleteEventIDs = [(_DKPRChangeSet *)v4 deleteEventIDs];
    v10 = [deleteEventIDs count];

    v11 = MEMORY[0x1E695DF70];
    if (v10)
    {
      array = [MEMORY[0x1E695DF70] array];
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      deleteEventIDs2 = [(_DKPRChangeSet *)v4 deleteEventIDs];
      v14 = [deleteEventIDs2 countByEnumeratingWithState:&v30 objects:v38 count:16];
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
              objc_enumerationMutation(deleteEventIDs2);
            }

            v18 = *(*(&v30 + 1) + 8 * i);
            v19 = objc_alloc(MEMORY[0x1E696AFB0]);
            v20 = [v19 initWithUUIDString:{v18, v30}];
            [array addObject:v20];
          }

          v15 = [deleteEventIDs2 countByEnumeratingWithState:&v30 objects:v38 count:16];
        }

        while (v15);
      }

      v6 = objc_opt_new();
      [v6 setEventIDsToDelete:array];
    }

    else
    {
      events2 = [(_DKPRChangeSet *)v4 events];
      array = [v11 arrayWithCapacity:{objc_msgSend(events2, "count")}];

      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      events3 = [(_DKPRChangeSet *)v4 events];
      v23 = [events3 countByEnumeratingWithState:&v34 objects:v39 count:16];
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
              objc_enumerationMutation(events3);
            }

            v27 = [_DKEvent fromPBCodable:*(*(&v34 + 1) + 8 * j)];
            [array addObject:v27];
          }

          v24 = [events3 countByEnumeratingWithState:&v34 objects:v39 count:16];
        }

        while (v24);
      }

      v6 = objc_opt_new();
      [v6 setEventsToAdd:array];
    }

    goto LABEL_24;
  }

  deleteEventIDs3 = [(_DKPRChangeSet *)v4 deleteEventIDs];
  v8 = [deleteEventIDs3 count];

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

- (_DKChangeSet)initWithManagedObject:(id)object
{
  objectCopy = object;
  v5 = objc_alloc(MEMORY[0x1E696AFB0]);
  deviceIdentifier = [objectCopy deviceIdentifier];
  v7 = [v5 initWithUUIDString:deviceIdentifier];

  version = [objectCopy version];
  v9 = [version isEqualToNumber:&unk_1F05EEE80];

  if ((v9 & 1) == 0)
  {
    version2 = [objectCopy version];
    v13 = [version2 isEqualToNumber:&unk_1F05EEE98];

    if (v13)
    {
      v14 = objc_opt_class();
      changeSet = [objectCopy changeSet];
      v11 = [v14 dataFromCompressedChangeSet:changeSet];

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
        [(_DKChangeSet(CoreData) *)objectCopy initWithManagedObject:v11];
      }
    }

    v21 = 0;
    goto LABEL_13;
  }

  changeSet2 = [objectCopy changeSet];
  if (changeSet2)
  {
    v11 = changeSet2;
LABEL_6:
    v16 = objc_opt_class();
    sequenceNumber = [objectCopy sequenceNumber];
    unsignedIntegerValue = [sequenceNumber unsignedIntegerValue];
    startDate = [objectCopy startDate];
    endDate = [objectCopy endDate];
    v21 = [v16 createFromData:v11 deviceIdentifier:v7 sequenceNumber:unsignedIntegerValue startDate:startDate endDate:endDate];

LABEL_13:
    goto LABEL_14;
  }

  v21 = 0;
LABEL_14:

  return v21;
}

+ (id)dataFromCompressedChangeSet:(id)set
{
  setCopy = set;
  v4 = [[_DKPRCompressedChangeSet alloc] initWithData:setCopy];

  if (![(_DKPRCompressedChangeSet *)v4 uncompressedLength])
  {
    goto LABEL_6;
  }

  compressedData = [(_DKPRCompressedChangeSet *)v4 compressedData];
  if (!compressedData)
  {
    goto LABEL_6;
  }

  v6 = compressedData;
  compressedData2 = [(_DKPRCompressedChangeSet *)v4 compressedData];
  v8 = [compressedData2 length];

  if (v8)
  {
    uncompressedLength = [(_DKPRCompressedChangeSet *)v4 uncompressedLength];
    v10 = malloc_type_malloc(uncompressedLength + 32, 0xE2DBC20EuLL);
    compressedData3 = [(_DKPRCompressedChangeSet *)v4 compressedData];
    bytes = [compressedData3 bytes];
    compressedData4 = [(_DKPRCompressedChangeSet *)v4 compressedData];
    v14 = compression_decode_buffer(v10, uncompressedLength + 32, bytes, [compressedData4 length], 0, COMPRESSION_LZFSE);

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

- (id)insertInManagedObjectContext:(id)context
{
  v40 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  asData = [(_DKChangeSet *)self asData];
  if (!asData)
  {
    goto LABEL_14;
  }

  eventsToAdd = [(_DKChangeSet *)self eventsToAdd];
  if ([eventsToAdd count] && objc_msgSend(asData, "length") >= 0x401)
  {
  }

  else
  {
    eventIDsToDelete = [(_DKChangeSet *)self eventIDsToDelete];
    if (![eventIDsToDelete count])
    {

      goto LABEL_14;
    }

    v8 = [asData length];

    if (v8 < 0x801)
    {
LABEL_14:
      data = 0;
      goto LABEL_15;
    }
  }

  v9 = [asData length];
  v10 = malloc_type_malloc(v9, 0xC1F1255CuLL);
  v11 = compression_encode_buffer(v10, v9, [asData bytes], objc_msgSend(asData, "length"), 0, COMPRESSION_LZFSE);
  if (!v11 || (v12 = v11, v11 >= [asData length]))
  {
    free(v10);
    goto LABEL_14;
  }

  v13 = objc_alloc_init(_DKPRCompressedChangeSet);
  -[_DKPRCompressedChangeSet setUncompressedLength:](v13, [asData length]);
  v14 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v10 length:v12 freeWhenDone:1];
  [(_DKPRCompressedChangeSet *)v13 setCompressedData:v14];

  data = [(_DKPRCompressedChangeSet *)v13 data];

  if (data)
  {
    v16 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      eventIDsToDelete2 = [(_DKChangeSet *)self eventIDsToDelete];
      if ([eventIDsToDelete2 count])
      {
        v31 = @"Deletion";
      }

      else
      {
        v31 = @"Addition";
      }

      v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(data, "length")}];
      v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(asData, "length")}];
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
  eventIDsToDelete3 = [(_DKChangeSet *)self eventIDsToDelete];
  if ([eventIDsToDelete3 count])
  {
    +[_DKChangeSet deletionChangeSetEntityName];
  }

  else
  {
    +[_DKChangeSet additionChangeSetEntityName];
  }
  v18 = ;

  v19 = [MEMORY[0x1E695D5B8] insertNewObjectForEntityForName:v18 inManagedObjectContext:contextCopy];
  v20 = v19;
  if (data)
  {
    v21 = data;
  }

  else
  {
    v21 = asData;
  }

  if (data)
  {
    v22 = &unk_1F05EEE98;
  }

  else
  {
    v22 = &unk_1F05EEE80;
  }

  [v19 setChangeSet:v21];
  deviceIdentifier = [(_DKChangeSet *)self deviceIdentifier];
  uUIDString = [deviceIdentifier UUIDString];
  [v20 setDeviceIdentifier:uUIDString];

  v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_DKChangeSet sequenceNumber](self, "sequenceNumber")}];
  [v20 setSequenceNumber:v25];

  startDate = [(_DKChangeSet *)self startDate];
  [v20 setStartDate:startDate];

  endDate = [(_DKChangeSet *)self endDate];
  [v20 setEndDate:endDate];

  [v20 setVersion:v22];
  [contextCopy insertObject:v20];

  v28 = *MEMORY[0x1E69E9840];

  return v20;
}

@end