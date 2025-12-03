@interface _DKEventCKConverter
- (_DKEventCKConverter)initWithZoneID:(id)d;
- (id)eventDataFromRecord:(uint64_t)record;
- (id)eventIDsFromRecordIDsAndTypes:(id)types;
- (id)eventsFromRecords:(id)records;
- (id)recordFromEventData:(void *)data event:;
- (id)recordIDsFromEventIDs:(id)ds;
- (id)recordsFromEvents:(id)events;
@end

@implementation _DKEventCKConverter

- (_DKEventCKConverter)initWithZoneID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = _DKEventCKConverter;
  v6 = [(_DKEventCKConverter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_zoneID, d);
  }

  return v7;
}

- (id)eventsFromRecords:(id)records
{
  v54 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  v5 = [recordsCopy count];
  v42 = [MEMORY[0x1E695DF70] arrayWithCapacity:v5];
  context = objc_autoreleasePoolPush();
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v6 = recordsCopy;
  v7 = [v6 countByEnumeratingWithState:&v43 objects:v53 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v44;
    v40 = *v44;
    selfCopy = self;
    do
    {
      v10 = 0;
      do
      {
        if (*v44 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v43 + 1) + 8 * v10);
        v12 = objc_autoreleasePoolPush();
        v13 = [(_DKEventCKConverter *)self eventDataFromRecord:v11];
        v14 = v13;
        if (v13)
        {
          if ([(_DKEventData *)v13 version]== 2)
          {
            v15 = v6;
            startDate = [(_DKSyncWindow *)v14 startDate];
            urgency = [(_DKSyncType *)v14 urgency];
            if (urgency)
            {
              v18 = startDate == 0;
            }

            else
            {
              v18 = 1;
            }

            if (v18 || ![(_DKPREvent *)startDate length])
            {
              v27 = +[_CDLogging syncChannel];
              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                v30 = [objc_opt_class() description];
                v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:urgency];
                v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_DKPREvent length](startDate, "length")}];
                *buf = 138543874;
                v48 = v30;
                v49 = 2112;
                v50 = v31;
                v51 = 2112;
                v52 = v32;
                _os_log_error_impl(&dword_191750000, v27, OS_LOG_TYPE_ERROR, "%{public}@: Dropping event, unexpected uncompressed length of %@ or compressedData length of %@", buf, 0x20u);
              }
            }

            else
            {
              v19 = malloc_type_malloc(urgency + 32, 0xC6726C6CuLL);
              v20 = compression_decode_buffer(v19, urgency + 32, [(_DKPREvent *)startDate bytes], [(_DKPREvent *)startDate length], 0, COMPRESSION_LZFSE);
              if (v20 == urgency)
              {
                v21 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v19 length:urgency freeWhenDone:1];
                v6 = v15;
                if (v21)
                {
                  v22 = v21;
                  v23 = [[_DKPREvent alloc] initWithData:v21];
                  v24 = [_DKEvent fromPBCodable:v23];
                }

                else
                {
                  v24 = 0;
                }

LABEL_21:
                v9 = v40;
                self = selfCopy;
LABEL_22:

                if (v24)
                {
                  [v42 addObject:v24];
                }

                goto LABEL_25;
              }

              v28 = v20;
              v29 = +[_CDLogging syncChannel];
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                v38 = [objc_opt_class() description];
                v33 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v28];
                v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:urgency];
                *buf = 138543874;
                v48 = v38;
                v49 = 2112;
                v50 = v33;
                v51 = 2112;
                v52 = v34;
                _os_log_error_impl(&dword_191750000, v29, OS_LOG_TYPE_ERROR, "%{public}@: Dropping event, uncompressed size %@ does not match uncompressed length %@", buf, 0x20u);
              }

              free(v19);
            }

            v24 = 0;
            v6 = v15;
            goto LABEL_21;
          }

          v25 = [_DKPREvent alloc];
          startDate2 = [(_DKSyncWindow *)v14 startDate];
          startDate = [(_DKPREvent *)v25 initWithData:startDate2];

          v24 = [_DKEvent fromPBCodable:startDate];
          goto LABEL_22;
        }

LABEL_25:

        objc_autoreleasePoolPop(v12);
        ++v10;
      }

      while (v8 != v10);
      v35 = [v6 countByEnumeratingWithState:&v43 objects:v53 count:16];
      v8 = v35;
    }

    while (v35);
  }

  objc_autoreleasePoolPop(context);
  v36 = *MEMORY[0x1E69E9840];

  return v42;
}

- (id)recordsFromEvents:(id)events
{
  v48 = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  v4 = [eventsCopy count];
  v33 = [MEMORY[0x1E695DF70] arrayWithCapacity:v4];
  context = objc_autoreleasePoolPush();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v5 = eventsCopy;
  v6 = [v5 countByEnumeratingWithState:&v37 objects:v47 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v38;
    do
    {
      v9 = 0;
      do
      {
        if (*v38 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v37 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        toPBCodable = [v10 toPBCodable];
        data = [toPBCodable data];
        if (data)
        {
          v14 = [_CDSizeMetricFamily sizeMetricFamilyWithName:?];
          v35 = [(_CDSizeMetricFamily *)v14 sizeMetricWithName:0 string:1024 scale:?];
          CDSizeMetricAddSize(v35, [data length]);
          v36 = v14;
          if ([data length] >= 0x401 && !(objc_msgSend(data, "length") >> 13))
          {
            v15 = [data length];
            v30 = malloc_type_malloc(v15, 0x2E3396AuLL);
            v16 = compression_encode_buffer(v30, v15, [data bytes], objc_msgSend(data, "length"), 0, COMPRESSION_LZFSE);
            if (v16 && (v17 = v16, [data length] * 0.75 > v16))
            {
              v18 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v30 length:v17 freeWhenDone:1];
              v14 = v36;
              if (v18)
              {
                v19 = v18;
                v31 = +[_CDLogging syncChannel];
                if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
                {
                  src_buffer = [objc_opt_class() description];
                  v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v19, "length")}];
                  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(data, "length")}];
                  *buf = 138543874;
                  v42 = src_buffer;
                  v43 = 2112;
                  v44 = v27;
                  v45 = 2112;
                  v46 = v20;
                  v21 = v20;
                  _os_log_debug_impl(&dword_191750000, v31, OS_LOG_TYPE_DEBUG, "%{public}@: Event compressed to %@ (from %@)", buf, 0x20u);

                  v14 = v36;
                }

                v32 = [(_CDSizeMetricFamily *)v14 sizeMetricWithName:0 string:1024 scale:?];
                CDSizeMetricAddSize(v32, [v19 length]);
                v22 = -[_DKEventData initWithCompressedData:uncompressedLength:version:]([_DKEventData alloc], v19, [data length], 2);

                goto LABEL_19;
              }
            }

            else
            {
              free(v30);
              v14 = v36;
            }
          }

          v19 = [(_CDSizeMetricFamily *)v14 sizeMetricWithName:0 string:1024 scale:?];
          CDSizeMetricAddSize(v19, [data length]);
          v22 = [[_DKEventData alloc] initWithData:data version:1];
LABEL_19:

          v23 = [(_DKEventCKConverter *)self recordFromEventData:v22 event:v10];
          if (v23)
          {
            [v33 addObject:v23];
          }
        }

        objc_autoreleasePoolPop(v11);
        ++v9;
      }

      while (v7 != v9);
      v24 = [v5 countByEnumeratingWithState:&v37 objects:v47 count:16];
      v7 = v24;
    }

    while (v24);
  }

  objc_autoreleasePoolPop(context);
  v25 = *MEMORY[0x1E69E9840];

  return v33;
}

- (id)recordIDsFromEventIDs:(id)ds
{
  v23 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v5 = [dsCopy count];
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:v5];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = dsCopy;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = objc_alloc(MEMORY[0x1E695BA70]);
        uUIDString = [v12 UUIDString];
        v15 = [v13 initWithRecordName:uUIDString zoneID:self->_zoneID];

        if (v15)
        {
          [v6 addObject:v15];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v16 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)eventIDsFromRecordIDsAndTypes:(id)types
{
  v42 = *MEMORY[0x1E69E9840];
  typesCopy = types;
  v4 = [typesCopy count];
  v26 = [MEMORY[0x1E695DF70] arrayWithCapacity:v4];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = typesCopy;
  v6 = [v5 countByEnumeratingWithState:&v27 objects:v41 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v28;
    v10 = 0x1E696A000uLL;
    *&v7 = 138544386;
    v20 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v27 + 1) + 8 * i);
        v13 = [v5 objectForKeyedSubscript:{v12, v20}];
        if ([v13 isEqualToString:@"DKEvent"])
        {
          recordName = [v12 recordName];
          v15 = [objc_alloc(*(v10 + 4016)) initWithUUIDString:recordName];
          if (v15)
          {
            [v26 addObject:v15];
          }

          else
          {
            v16 = +[_CDLogging syncChannel];
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              v25 = [objc_opt_class() description];
              recordName2 = [v12 recordName];
              zoneID = [v12 zoneID];
              zoneName = [zoneID zoneName];
              zoneID2 = [v12 zoneID];
              ownerName = [zoneID2 ownerName];
              *buf = v20;
              v32 = v25;
              v33 = 2114;
              v34 = @"DKEvent";
              v35 = 2114;
              v36 = recordName2;
              v37 = 2114;
              v38 = zoneName;
              v39 = 2114;
              v40 = ownerName;
              _os_log_error_impl(&dword_191750000, v16, OS_LOG_TYPE_ERROR, "%{public}@: CKRecordID of type %{public}@ has an invalid UUIDString recordName:%{public}@ (zoneName:%{public}@ ownerName:%{public}@)", buf, 0x34u);
            }

            v10 = 0x1E696A000;
          }
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v27 objects:v41 count:16];
    }

    while (v8);
  }

  v18 = *MEMORY[0x1E69E9840];

  return v26;
}

- (id)eventDataFromRecord:(uint64_t)record
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (record)
  {
    recordType = [v3 recordType];
    v6 = [recordType isEqualToString:@"DKEvent"];

    if (v6)
    {
      encryptedValuesByKey = [v4 encryptedValuesByKey];
      v8 = [encryptedValuesByKey objectForKey:@"encryptedEvent"];

      if (v8)
      {
        v9 = [[_DKPREventData alloc] initWithData:v8];
        v10 = [_DKEventData fromPBCodable:v9];
        v11 = v10;
        if (v10)
        {
          v12 = v10;
        }

        else
        {
          v13 = +[_CDLogging syncChannel];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v19 = [objc_opt_class() description];
            v20 = 138543362;
            v21 = v19;
            _os_log_error_impl(&dword_191750000, v13, OS_LOG_TYPE_ERROR, "%{public}@: Dropping event record: Unable to decode event", &v20, 0xCu);
          }
        }
      }

      else
      {
        v9 = +[_CDLogging syncChannel];
        if (os_log_type_enabled(&v9->super.super, OS_LOG_TYPE_ERROR))
        {
          v18 = [objc_opt_class() description];
          v20 = 138543618;
          v21 = v18;
          v22 = 2112;
          v23 = @"encryptedEvent";
          _os_log_error_impl(&dword_191750000, &v9->super.super, OS_LOG_TYPE_ERROR, "%{public}@: Dropping event record: Missing value '%@'", &v20, 0x16u);
        }

        v11 = 0;
      }
    }

    else
    {
      v8 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v16 = [objc_opt_class() description];
        recordType2 = [v4 recordType];
        v20 = 138543618;
        v21 = v16;
        v22 = 2114;
        v23 = recordType2;
        _os_log_error_impl(&dword_191750000, v8, OS_LOG_TYPE_ERROR, "%{public}@: Dropping event record: Unexpected record type: %{public}@", &v20, 0x16u);
      }

      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)recordFromEventData:(void *)data event:
{
  v33 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (self)
  {
    asData = [(_DKEventData *)a2 asData];
    if (asData)
    {
      v7 = objc_alloc(MEMORY[0x1E695BA70]);
      uUID = [dataCopy UUID];
      uUIDString = [uUID UUIDString];
      v10 = [v7 initWithRecordName:uUIDString zoneID:*(self + 8)];

      v11 = [objc_alloc(MEMORY[0x1E695BA60]) initWithRecordType:@"DKEvent" recordID:v10];
      encryptedValuesByKey = [v11 encryptedValuesByKey];
      [encryptedValuesByKey setObject:asData forKey:@"encryptedEvent"];

      creationDate = [dataCopy creationDate];

      if (creationDate)
      {
        creationDate2 = [dataCopy creationDate];
        [v11 setObject:creationDate2 forKey:@"eventCreationDate"];
      }

      else
      {
        date = [MEMORY[0x1E695DF00] date];
        [v11 setObject:date forKey:@"eventCreationDate"];

        v16 = +[_CDLogging syncChannel];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v22 = [objc_opt_class() description];
          uUID2 = [dataCopy UUID];
          uUIDString2 = [uUID2 UUIDString];
          creationDate3 = [dataCopy creationDate];
          dk_localtimeString = [(NSDate *)creationDate3 dk_localtimeString];
          v27 = 138543874;
          v28 = v22;
          v29 = 2114;
          v30 = uUIDString2;
          v31 = 2114;
          v32 = dk_localtimeString;
          _os_log_error_impl(&dword_191750000, v16, OS_LOG_TYPE_ERROR, "%{public}@: Faking creation date on event %{public}@ (created %{public}@)", &v27, 0x20u);
        }
      }

      stream = [dataCopy stream];
      name = [stream name];
      [v11 setObject:name forKey:@"streamName"];
    }

    else
    {
      v10 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v21 = [objc_opt_class() description];
        v27 = 138543362;
        v28 = v21;
        _os_log_error_impl(&dword_191750000, v10, OS_LOG_TYPE_ERROR, "%{public}@: Dropping event: Unable to encode event", &v27, 0xCu);
      }

      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v11;
}

@end