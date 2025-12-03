@interface _MemoryEfficientTracepointBuffer
- (BOOL)findOversize:(id)oversize process:(unint64_t)process oversize_id:(unsigned int)oversize_id pidversion:(unsigned int)pidversion timestamp:(unint64_t)timestamp block:(id)block;
- (BOOL)iterateChunksAndFillEvent:(tp_element *)event block:(id)block;
- (tp_element)insertValuesIntoIndex:(int64_t)index coffset:(int64_t)coffset fileName:(id)name sortKey:(unint64_t)key type:(unsigned __int8)type;
- (unint64_t)addTSEntry:(os_timesync_time_entry_s *)entry;
- (unsigned)indexOfUUID:(unsigned __int8)d[16];
- (void)advanceCursorToTime:(unint64_t)time;
- (void)consolidate;
- (void)dealloc;
- (void)enumerateEventsFromTime:(unint64_t)time to:(unint64_t)to options:(unsigned int)options usingBlock:(id)block;
- (void)finishedInsertingTracepointsWithNextMajorTime:(unint64_t)time options:(unsigned int)options;
- (void)insertChunk:(tracev3_chunk_s *)chunk chunkOffset:(int64_t)offset chunkSetStartAddr:(void *)addr timestamp:(unint64_t)timestamp subchunk:(id)subchunk;
- (void)insertNonsparsePoint:(unint64_t)point uuid:(unsigned __int8)uuid[16] ttl:(unsigned __int8)ttl inMemory:(BOOL)memory;
- (void)insertOversizedChunk:(tracev3_chunk_s *)chunk chunkOffset:(int64_t)offset chunkSetStartAddr:(void *)addr subchunk:(id)subchunk chunkList:(id)list;
- (void)insertTimesyncPoints:(_os_timesync_db_s *)points forBoot:(unsigned __int8)boot[16] oldestContinuousTime:(unint64_t)time;
- (void)insertTracepoints:(tracev3_chunk_s *)tracepoints chunkOffset:(int64_t)offset chunkSetStartAddr:(void *)addr subchunk:(id)subchunk options:(unsigned int)options;
- (void)retireOversize:(unint64_t)oversize;
- (void)setupStoresForIndex:(id)index;
@end

@implementation _MemoryEfficientTracepointBuffer

- (BOOL)iterateChunksAndFillEvent:(tp_element *)event block:(id)block
{
  blockCopy = block;
  var0 = event->var0;
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x2020000000;
  v38[3] = 0;
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x2020000000;
  v37[3] = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v8 = BYTE2(event->var3);
  if (v8 == 1)
  {
    v19 = 0u;
    memset(v20, 0, sizeof(v20));
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
    LODWORD(v19) = 1;
    *(&v19 + 1) = *(&event->var2 + 2);
    *(v20 + 8) = vextq_s8(*(&event->var0 + 1), *(&event->var0 + 1), 8uLL);
    tsEntries = self->_tsEntries;
    LOWORD(v20[0]) = var0;
    v17 = &tsEntries[*(&event->var3 + 7)];
    v14 = [(NSMutableOrderedSet *)self->_uuids objectAtIndexedSubscript:*(&event->var3 + 3), v19, v20[0], *&v20[1], 0, 0, *&v17->var0, v17->var1, v17->var2, *&v17->var3, 0, 0];
    [v14 getUUIDBytes:&v20[1] + 8];
    v15 = blockCopy[2](blockCopy, &v19);
    goto LABEL_10;
  }

  if (v8 == 2)
  {
    v19 = 0u;
    memset(v20, 0, sizeof(v20));
    v21 = 0u;
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    LODWORD(v19) = 2;
    *(&v19 + 1) = *(&event->var2 + 2);
    *(v20 + 8) = vextq_s8(*(&event->var0 + 1), *(&event->var0 + 1), 8uLL);
    LOWORD(v20[0]) = var0;
    WORD4(v21) = *(&event->var3 + 5);
    v14 = [(NSMutableOrderedSet *)self->_uuids objectAtIndexedSubscript:*(&event->var3 + 3), v19, v20[0], *&v20[1], 0, 0, *(&v21 + 1), 0, 0, 0, 0, 0];
    [v14 getUUIDBytes:&v20[1] + 8];
    v15 = blockCopy[2](blockCopy, &v19);
LABEL_10:
    v9 = v15;

    *(v34 + 24) = v9;
    goto LABEL_11;
  }

  v9 = 0;
  if (v8 == 3)
  {
    v10 = objc_autoreleasePoolPush();
    storeArray = self->storeArray;
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:event->var0];
    v13 = [(NSMutableDictionary *)storeArray objectForKey:v12];

    if (v13)
    {
      *&v19 = 0;
      *(&v19 + 1) = &v19;
      v20[0] = 0x2020000000uLL;
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __68___MemoryEfficientTracepointBuffer_iterateChunksAndFillEvent_block___block_invoke;
      v25[3] = &unk_2787AF168;
      v27 = v37;
      v28 = v38;
      v25[4] = self;
      v32 = var0;
      v29 = &v19;
      v30 = &v33;
      eventCopy = event;
      v26 = blockCopy;
      [v13 enumerateChunksUsingBlock:v25];

      _Block_object_dispose(&v19, 8);
    }

    objc_autoreleasePoolPop(v10);
    if (v13)
    {
      v9 = *(v34 + 24);
    }

    else
    {
      v9 = 1;
    }
  }

LABEL_11:
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(v37, 8);
  _Block_object_dispose(v38, 8);

  return v9 & 1;
}

- (BOOL)findOversize:(id)oversize process:(unint64_t)process oversize_id:(unsigned int)oversize_id pidversion:(unsigned int)pidversion timestamp:(unint64_t)timestamp block:(id)block
{
  oversizeCopy = oversize;
  blockCopy = block;
  timestamp = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:oversize_id ^ process ^ pidversion ^ timestamp];
  v17 = [(NSMutableDictionary *)self->_oversizeTable objectForKey:timestamp];
  if (v17)
  {
    v34 = oversizeCopy;
    storeArray = self->storeArray;
    catalogCache = self->catalogCache;
    dataCache = self->dataCache;
    v37 = oversizeCopy;
    v21 = v17;
    v22 = storeArray;
    v36 = catalogCache;
    v23 = dataCache;
    v62 = 0;
    v63 = &v62;
    v64 = 0x2020000000;
    v65 = 0;
    v56 = 0;
    v57 = &v56;
    v58 = 0x3032000000;
    v59 = __Block_byref_object_copy__4372;
    v60 = __Block_byref_object_dispose__4373;
    v61 = 0;
    context = objc_autoreleasePoolPush();
    v55[0] = 0;
    v55[1] = v55;
    v55[2] = 0x2020000000;
    v55[3] = 0;
    v54[0] = 0;
    v54[1] = v54;
    v54[2] = 0x2020000000;
    v54[3] = 0;
    v53[0] = 0;
    v53[1] = v53;
    v53[2] = 0x2020000000;
    v53[3] = 0;
    v51[0] = 0;
    v51[1] = v51;
    v51[2] = 0x3032000000;
    v51[3] = __Block_byref_object_copy__4372;
    v51[4] = __Block_byref_object_dispose__4373;
    v52 = 0;
    fileIndex = [v21 fileIndex];
    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:fileIndex];
    v26 = [(NSMutableDictionary *)v22 objectForKey:v25];

    if (v26)
    {
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __findOversizeAndFill_block_invoke;
      v38[3] = &unk_2787AF190;
      v44 = v55;
      v39 = v21;
      v45 = v53;
      v50 = fileIndex;
      v40 = v36;
      v46 = v54;
      v47 = v51;
      v41 = v26;
      v42 = v37;
      v48 = &v62;
      v43 = v23;
      v49 = &v56;
      [v41 enumerateChunksUsingBlock:v38];
    }

    v27 = v23;

    _Block_object_dispose(v51, 8);
    _Block_object_dispose(v53, 8);
    _Block_object_dispose(v54, 8);
    _Block_object_dispose(v55, 8);
    objc_autoreleasePoolPop(context);
    v28 = v57[5];
    v29 = v28;
    v30 = *(v63 + 24);
    _Block_object_dispose(&v56, 8);

    _Block_object_dispose(&v62, 8);
    v31 = v28;
    if (v30 == 1)
    {
      oversizeCopy = v34;
      if (blockCopy[2](blockCopy, v31))
      {
        [(NSMutableDictionary *)self->_oversizeTable removeObjectForKey:timestamp];
        v32 = 1;
      }

      else
      {
        v32 = 0;
      }
    }

    else
    {
      v32 = 0;
      oversizeCopy = v34;
    }
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

- (void)retireOversize:(unint64_t)oversize
{
  v18 = *MEMORY[0x277D85DE8];
  if ([(NSMutableDictionary *)self->_oversizeTable count]>= 0x64)
  {
    [(NSMutableDictionary *)self->_oversizeTable keysSortedByValueUsingSelector:sel_compareTimestamp_];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v16 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          v11 = [(NSMutableDictionary *)self->_oversizeTable objectForKey:v10, v13];
          if ([v11 timestamp] >= oversize)
          {

            goto LABEL_12;
          }

          [(NSMutableDictionary *)self->_oversizeTable removeObjectForKey:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)enumerateEventsFromTime:(unint64_t)time to:(unint64_t)to options:(unsigned int)options usingBlock:(id)block
{
  optionsCopy = options;
  blockCopy = block;
  if ([(_BaseTracepointBuffer *)self canMutate])
  {
    qword_27DA52778 = "BUG IN LIBTRACE: oltb iteration while mutable";
    __break(1u);
  }

  else
  {
    cursor = [(_BaseTracepointBuffer *)self cursor];
    if (cursor < [(_BaseTracepointBuffer *)self count])
    {
      v11 = 51 * cursor;
      while (1)
      {
        v12 = self->_traceEvents + v11;
        v13 = *(v12 + 18);
        if (v13 == to)
        {
          goto LABEL_18;
        }

        if ((optionsCopy & 8) != 0)
        {
          if (v13 <= to)
          {
            goto LABEL_18;
          }
        }

        else if (v13 >= to)
        {
          goto LABEL_18;
        }

        [(_BaseTracepointBuffer *)self setCursor:[(_BaseTracepointBuffer *)self cursor]+ 1];
        v14 = *(v12 + 18);
        if (v14 == time)
        {
          break;
        }

        if ((optionsCopy & 8) != 0)
        {
          if (v14 <= time)
          {
            break;
          }
        }

        else if (v14 >= time)
        {
          break;
        }

LABEL_11:
        ++cursor;
        v11 += 51;
        if (cursor >= [(_BaseTracepointBuffer *)self count])
        {
          goto LABEL_18;
        }
      }

      v15 = objc_autoreleasePoolPush();
      v16 = [(_MemoryEfficientTracepointBuffer *)self iterateChunksAndFillEvent:v12 block:blockCopy];
      objc_autoreleasePoolPop(v15);
      if (!v16)
      {
        goto LABEL_18;
      }

      goto LABEL_11;
    }

LABEL_18:
  }
}

- (void)insertOversizedChunk:(tracev3_chunk_s *)chunk chunkOffset:(int64_t)offset chunkSetStartAddr:(void *)addr subchunk:(id)subchunk chunkList:(id)list
{
  subchunkCopy = subchunk;
  listCopy = list;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = subchunkCopy;
    v14 = chunk - addr;
    v15 = [[OversizeIndex alloc] init:chunk->var1.var3.var0 msgID:chunk->var1.var6.var5 pidV:chunk->var1.var3.var1 timestamp:chunk->var1.var0.var2];
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v15, "hash64")}];
    [v15 setTp_offset:v14];
    [v15 setChunk_offset:offset];
    [v15 setCatalog_offset:{objc_msgSend(v26, "catalog_offset")}];
    store = [v26 store];
    fileName = [store fileName];

    fileNames = [(_BaseTracepointBuffer *)self fileNames];
    v20 = fileNames;
    if (fileName)
    {
      store2 = [v26 store];
      fileName2 = [store2 fileName];
      [v20 addObject:fileName2];

      fileNames2 = [(_BaseTracepointBuffer *)self fileNames];
      store3 = [v26 store];
      fileName3 = [store3 fileName];
      LOWORD(store2) = [fileNames2 indexOfObject:fileName3];
    }

    else
    {
      [fileNames addObject:@"(null)"];

      fileNames2 = [(_BaseTracepointBuffer *)self fileNames];
      store2 = [fileNames2 indexOfObject:@"(null)"];
    }

    [v15 setFileIndex:store2];
    [(NSMutableDictionary *)self->_oversizeTable setObject:v15 forKey:v16];
  }

  else
  {
    qword_27DA52778 = "BUG IN LIBTRACE: BUG IN LOGGINGSUPPORT: Wrong type of CatalogSubchunk";
    __break(1u);
  }
}

- (void)insertTracepoints:(tracev3_chunk_s *)tracepoints chunkOffset:(int64_t)offset chunkSetStartAddr:(void *)addr subchunk:(id)subchunk options:(unsigned int)options
{
  optionsCopy = options;
  subchunkCopy = subchunk;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = subchunkCopy;
    catalog_offset = [v13 catalog_offset];
    oldestTime = [v13 oldestTime];
    endTime = [v13 endTime];
    var0 = tracepoints->var0.var0;
    if (tracepoints->var0.var0 > 24579)
    {
      switch(var0)
      {
        case 0x6004u:
          var2 = tracepoints->var0.var2;
          v19 = var2 >= 0x48;
          v20 = var2 - 72;
          if (!v19)
          {
            goto LABEL_68;
          }

          v21 = 0;
          var6 = tracepoints->var1.var0.var10.var2;
          break;
        case 0x600Cu:
          v27 = tracepoints->var0.var2;
          v19 = v27 >= 0x10;
          v20 = v27 - 16;
          if (!v19)
          {
            goto LABEL_68;
          }

          v21 = 0;
          var6 = &tracepoints->var1.var3.var3[1];
          break;
        case 0x6010u:
          v23 = tracepoints->var0.var2;
          v19 = v23 >= 0x10;
          v20 = v23 - 16;
          if (!v19)
          {
            goto LABEL_68;
          }

          v21 = 0;
          var6 = &tracepoints->var1.var10[16];
          break;
        default:
          goto LABEL_68;
      }
    }

    else
    {
      switch(var0)
      {
        case 0x6001u:
          v24 = tracepoints->var0.var2;
          v19 = v24 >= 0x10;
          v20 = v24 - 16;
          if (!v19)
          {
            goto LABEL_68;
          }

          var6 = &tracepoints->var1.var10[16];
          v21 = tracepoints->var1.var3.var3[0] != 0;
          break;
        case 0x6002u:
          v26 = tracepoints->var0.var2;
          v19 = v26 >= 0x20;
          v20 = v26 - 32;
          if (!v19)
          {
            goto LABEL_68;
          }

          v21 = 0;
          var6 = tracepoints->var1.var8.var6;
          break;
        case 0x6003u:
          v18 = tracepoints->var0.var2;
          v19 = v18 >= 0x30;
          v20 = v18 - 48;
          if (!v19)
          {
            goto LABEL_68;
          }

          v21 = 0;
          var6 = &tracepoints->var1.var9.var8[8];
          break;
        default:
          goto LABEL_68;
      }
    }

    if (v20 - 4097 < 0xFFFFFFFFFFFFF00FLL)
    {
      goto LABEL_28;
    }

    v42 = *var6;
    if (v20 >= v42)
    {
      v43 = *(var6 + 1);
      if (v43 <= 0xFFF)
      {
        if (v21)
        {
          offsetCopy3 = offset;
          v44 = v42 + (4096 - v43);
          v45 = &var6[v42];
          v46 = v20 > v44;
          if (v20 <= v44)
          {
            v29 = v45;
          }

          else
          {
            v29 = 0;
          }

          if (v46)
          {
            v30 = 0;
          }

          else
          {
            v30 = 4096 - v43;
          }

          goto LABEL_29;
        }

        if (v20 == 4096)
        {
          offsetCopy3 = offset;
          v29 = &var6[v43];
          v30 = 4096 - v43;
LABEL_29:
          v47[0] = MEMORY[0x277D85DD0];
          v47[1] = 3221225472;
          v48 = __101___MemoryEfficientTracepointBuffer_insertTracepoints_chunkOffset_chunkSetStartAddr_subchunk_options___block_invoke;
          v49 = &unk_2787AF120;
          v53 = var6;
          v54 = v29;
          v55 = v30;
          v56 = 0;
          v57 = oldestTime;
          v58 = endTime;
          tracepointsCopy = tracepoints;
          addrCopy = addr;
          tracepointsCopy2 = tracepoints;
          selfCopy = self;
          v61 = offsetCopy3;
          v62 = catalog_offset;
          v51 = v13;
          v31 = v47;
          v33 = var6 + 16;
          v32 = *var6;
          if (v32 > 0x1000)
          {
            v34 = (var6 + 16);
          }

          else
          {
            v34 = &var6[v32];
          }

          while (1)
          {
            while (1)
            {
              do
              {
                if ((v33 + 24) >= v34 || ((v35 = v33, v36 = *(v33 + 2), (v37 = HIWORD(v36)) != 0) ? (v38 = v37 <= (v34 - (v33 + 24))) : (v38 = 0), !v38))
                {

                  goto LABEL_68;
                }

                if ((v36 & 0x7000000000000) != 0)
                {
                  v39 = (HIWORD(v36) & 0xFFF8) + 32;
                }

                else
                {
                  v39 = v37 + 24;
                }

                v33 += v39;
              }

              while (!*v35);
              v40 = *v35;
              if (v40 > 5)
              {
                break;
              }

              switch(v40)
              {
                case 2u:
                  if ((optionsCopy & 0x80) == 0)
                  {
                    goto LABEL_63;
                  }

                  break;
                case 3u:
                  if ((optionsCopy & 0x100) == 0)
                  {
                    goto LABEL_63;
                  }

                  break;
                case 4u:
                  if ((optionsCopy & 0x200) == 0)
                  {
                    v41 = BYTE1(*v35);
                    if (v41 == 2)
                    {
                      if ((optionsCopy & 2) != 0)
                      {
                        goto LABEL_63;
                      }
                    }

                    else if (v41 != 1 || (optionsCopy & 4) != 0)
                    {
                      goto LABEL_63;
                    }
                  }

                  break;
                default:
                  goto LABEL_63;
              }
            }

            if (v40 == 6)
            {
              if ((optionsCopy & 0x20) != 0)
              {
                goto LABEL_63;
              }
            }

            else if (v40 == 7)
            {
              if ((optionsCopy & 0x40) != 0)
              {
                goto LABEL_63;
              }
            }

            else if (v40 != 8 || (optionsCopy & 0x800) != 0)
            {
LABEL_63:
              (v48)(v31);
            }
          }
        }
      }

LABEL_28:
      offsetCopy3 = offset;
      v29 = 0;
      v30 = 0;
      goto LABEL_29;
    }

LABEL_68:

    return;
  }

  qword_27DA52778 = "BUG IN LIBTRACE: BUG IN LOGGINGSUPPORT: Wrong type of CatalogSubchunk";
  __break(1u);
}

- (void)insertChunk:(tracev3_chunk_s *)chunk chunkOffset:(int64_t)offset chunkSetStartAddr:(void *)addr timestamp:(unint64_t)timestamp subchunk:(id)subchunk
{
  subchunkCopy = subchunk;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = subchunkCopy;
    oldestTime = [v24 oldestTime];
    endTime = [v24 endTime];
    if (oldestTime <= timestamp)
    {
      timestampCopy = timestamp;
    }

    else
    {
      timestampCopy = oldestTime;
    }

    if (timestampCopy >= endTime)
    {
      v16 = endTime;
    }

    else
    {
      v16 = timestampCopy;
    }

    v17 = chunk - addr;
    var0 = chunk->var1.var3.var0;
    catalog_offset = [v24 catalog_offset];
    selfCopy = self;
    store = [v24 store];
    fileName = [store fileName];
    v23 = [(_MemoryEfficientTracepointBuffer *)selfCopy insertValuesIntoIndex:v17 coffset:offset fileName:fileName sortKey:v16 type:3];

    *(v23 + 35) = 0;
    *(v23 + 43) = var0;
    *(v23 + 27) = catalog_offset;
  }

  else
  {
    qword_27DA52778 = "BUG IN LIBTRACE: BUG IN LOGGINGSUPPORT: Wrong type of CatalogSubchunk";
    __break(1u);
  }
}

- (void)insertNonsparsePoint:(unint64_t)point uuid:(unsigned __int8)uuid[16] ttl:(unsigned __int8)ttl inMemory:(BOOL)memory
{
  v10 = [(_MemoryEfficientTracepointBuffer *)self insertValuesIntoIndex:3735928559 coffset:3735928559 fileName:@"nonsparse" sortKey:point type:2];
  BYTE5(v10->var3) = ttl;
  BYTE6(v10->var3) = memory;
  *(&v10->var3 + 3) = [(_MemoryEfficientTracepointBuffer *)self indexOfUUID:uuid];
}

- (void)insertTimesyncPoints:(_os_timesync_db_s *)points forBoot:(unsigned __int8)boot[16] oldestContinuousTime:(unint64_t)time
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __86___MemoryEfficientTracepointBuffer_insertTimesyncPoints_forBoot_oldestContinuousTime___block_invoke;
  v5[3] = &unk_2787AF0F8;
  v5[4] = self;
  v5[5] = time;
  v5[6] = points;
  v5[7] = boot;
  _timesync_enumerate_boot(points, boot, v5);
}

- (tp_element)insertValuesIntoIndex:(int64_t)index coffset:(int64_t)coffset fileName:(id)name sortKey:(unint64_t)key type:(unsigned __int8)type
{
  nameCopy = name;
  fileNames = [(_BaseTracepointBuffer *)self fileNames];
  v14 = fileNames;
  if (nameCopy)
  {
    v15 = nameCopy;
  }

  else
  {
    v15 = @"(null)";
  }

  [fileNames addObject:v15];

  fileNames2 = [(_BaseTracepointBuffer *)self fileNames];
  v17 = [fileNames2 indexOfObject:v15];

  result = [(_BaseTracepointBuffer *)self canMutate];
  if ((result & 1) == 0)
  {
    qword_27DA52778 = "BUG IN LIBTRACE: oltb manipulation while immutable";
    __break(1u);
LABEL_17:
    qword_27DA52778 = "BUG IN LIBTRACE: oltb table overflow";
    qword_27DA527A8 = v15;
    __break(1u);
    return result;
  }

  v15 = [(_BaseTracepointBuffer *)self count];
  result = [(_BaseTracepointBuffer *)self size];
  v19 = result;
  if (result == v15)
  {
    v20 = v15 >> 1;
    if (!v15)
    {
      v20 = 1024;
    }

    if ((51 * v20) > 0x100000)
    {
      v20 = 20560;
    }

    v19 = (v20 + v15);
    traceEvents = self->_traceEvents;
    result = _os_trace_realloc_typed();
    self->_traceEvents = result;
  }

  if (v19 <= v15)
  {
    goto LABEL_17;
  }

  [(_BaseTracepointBuffer *)self setSize:v19];
  if ([(_BaseTracepointBuffer *)self cursor])
  {
    v22 = [(_BaseTracepointBuffer *)self cursor]- 1;
    [(_BaseTracepointBuffer *)self setCursor:v22];
  }

  else
  {
    v22 = [(_BaseTracepointBuffer *)self count];
    [(_BaseTracepointBuffer *)self setCount:v22 + 1];
  }

  v23 = self->_traceEvents + 51 * v22;
  *(v23 + 2) = index;
  *(v23 + 10) = coffset;
  *v23 = v17;
  *(v23 + 18) = key;
  v23[26] = type;

  return v23;
}

- (unsigned)indexOfUUID:(unsigned __int8)d[16]
{
  v4 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:d];
  [(NSMutableOrderedSet *)self->_uuids addObject:v4];
  v5 = [(NSMutableOrderedSet *)self->_uuids indexOfObject:v4];
  v6 = v5;
  if (v5 >= 0x10000)
  {
    qword_27DA52778 = "BUG IN LIBTRACE: OVERFLOW OF UUID INDEXES";
    qword_27DA527A8 = v5;
    __break(1u);
  }

  else
  {

    LOWORD(v5) = v6;
  }

  return v5;
}

- (void)setupStoresForIndex:(id)index
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __56___MemoryEfficientTracepointBuffer_setupStoresForIndex___block_invoke;
  v3[3] = &unk_2787AF0D0;
  v3[4] = self;
  [index _foreachIndexFile:v3];
}

- (void)finishedInsertingTracepointsWithNextMajorTime:(unint64_t)time options:(unsigned int)options
{
  optionsCopy = options;
  [(_MemoryEfficientTracepointBuffer *)self consolidate];
  cursor = [(_BaseTracepointBuffer *)self cursor];
  v8 = [(_BaseTracepointBuffer *)self count];
  if ((optionsCopy & 8) != 0)
  {
    v9 = 0xFFFFFFFF00000001;
    while (1)
    {
      if (cursor < v8)
      {
        v23 = (&self->_traceEvents->var2 + 51 * cursor + 2);
        while (1)
        {
          v24 = *v23;
          v23 = (v23 + 51);
          if (v24 < time)
          {
            break;
          }

          if (v8 == ++cursor)
          {
            cursor = v8;
            break;
          }
        }
      }

      if (v8 > cursor)
      {
        v25 = (self->_traceEvents + 51 * v8 - 33);
        while (1)
        {
          v26 = *v25;
          v25 = (v25 - 51);
          if (v26 >= time)
          {
            break;
          }

          if (--v8 <= cursor)
          {
            v8 = cursor;
            break;
          }
        }
      }

      if (cursor == v8)
      {
        break;
      }

      traceEvents = self->_traceEvents;
      v28 = traceEvents + 51 * cursor;
      v29 = *(v28 + 1);
      v40 = *v28;
      v41 = v29;
      v42[0] = *(v28 + 2);
      *(v42 + 15) = *(v28 + 47);
      --v8;
      v30 = traceEvents + 51 * v8;
      v32 = *(v30 + 1);
      v31 = *(v30 + 2);
      v33 = *(v30 + 47);
      *v28 = *v30;
      *(v28 + 1) = v32;
      *(v28 + 47) = v33;
      *(v28 + 2) = v31;
      v34 = self->_traceEvents + 51 * v8;
      *(v34 + 47) = *(v42 + 15);
      v35 = v42[0];
      *(v34 + 1) = v41;
      *(v34 + 2) = v35;
      *v34 = v40;
      ++cursor;
    }
  }

  else
  {
    v9 = 0x1FFFFFFFFLL;
    while (1)
    {
      if (cursor < v8)
      {
        v10 = (&self->_traceEvents->var2 + 51 * cursor + 2);
        while (1)
        {
          v11 = *v10;
          v10 = (v10 + 51);
          if (v11 > time)
          {
            break;
          }

          if (v8 == ++cursor)
          {
            cursor = v8;
            break;
          }
        }
      }

      if (v8 > cursor)
      {
        v12 = (self->_traceEvents + 51 * v8 - 33);
        while (1)
        {
          v13 = *v12;
          v12 = (v12 - 51);
          if (v13 <= time)
          {
            break;
          }

          if (--v8 <= cursor)
          {
            v8 = cursor;
            break;
          }
        }
      }

      if (cursor == v8)
      {
        break;
      }

      v14 = self->_traceEvents;
      v15 = v14 + 51 * cursor;
      v16 = *(v15 + 1);
      v40 = *v15;
      v41 = v16;
      v42[0] = *(v15 + 2);
      *(v42 + 15) = *(v15 + 47);
      --v8;
      v17 = v14 + 51 * v8;
      v19 = *(v17 + 1);
      v18 = *(v17 + 2);
      v20 = *(v17 + 47);
      *v15 = *v17;
      *(v15 + 1) = v19;
      *(v15 + 47) = v20;
      *(v15 + 2) = v18;
      v21 = self->_traceEvents + 51 * v8;
      *(v21 + 47) = *(v42 + 15);
      v22 = v42[0];
      *(v21 + 1) = v41;
      *(v21 + 2) = v22;
      *v21 = v40;
      ++cursor;
    }
  }

  v36 = self->_traceEvents;
  v37 = v36 + 51 * [(_BaseTracepointBuffer *)self cursor];
  cursor2 = [(_BaseTracepointBuffer *)self cursor];
  __compar[0] = MEMORY[0x277D85DD0];
  __compar[1] = 3221225472;
  __compar[2] = __90___MemoryEfficientTracepointBuffer_finishedInsertingTracepointsWithNextMajorTime_options___block_invoke;
  __compar[3] = &__block_descriptor_40_e15_i24__0r_v8r_v16l;
  __compar[4] = v9;
  mergesort_b(v37, cursor - cursor2, 0x33uLL, __compar);
  [(_BaseTracepointBuffer *)self setCanMutate:0];
}

- (void)consolidate
{
  if ([(_BaseTracepointBuffer *)self canMutate])
  {
    for (; [(_BaseTracepointBuffer *)self cursor]; *v7 = v8)
    {
      v3 = [(_BaseTracepointBuffer *)self cursor]- 1;
      [(_BaseTracepointBuffer *)self setCursor:v3];
      traceEvents = self->_traceEvents;
      v5 = [(_BaseTracepointBuffer *)self count]- 1;
      [(_BaseTracepointBuffer *)self setCount:v5];
      v6 = traceEvents + 51 * v5;
      v7 = self->_traceEvents + 51 * v3;
      v8 = *v6;
      v9 = *(v6 + 1);
      v10 = *(v6 + 2);
      *(v7 + 47) = *(v6 + 47);
      *(v7 + 1) = v9;
      *(v7 + 2) = v10;
    }
  }

  else
  {
    qword_27DA52778 = "BUG IN LIBTRACE: oltb manipulation while immutable";
    __break(1u);
  }
}

- (void)advanceCursorToTime:(unint64_t)time
{
  cursor = [(_BaseTracepointBuffer *)self cursor];
  if ([(_BaseTracepointBuffer *)self canMutate])
  {
    if (cursor < [(_BaseTracepointBuffer *)self count])
    {
      v6 = 51 * cursor + 18;
      v7 = cursor;
      while (*(&self->_traceEvents->var0 + v6) < time)
      {
        ++v7;
        v6 += 51;
        if (v7 >= [(_BaseTracepointBuffer *)self count])
        {
          goto LABEL_8;
        }
      }

      cursor = v7;
    }

LABEL_8:

    [(_BaseTracepointBuffer *)self setCursor:cursor];
  }

  else
  {
    qword_27DA52778 = "BUG IN LIBTRACE: oltb manipulation while immutable";
    __break(1u);
  }
}

- (unint64_t)addTSEntry:(os_timesync_time_entry_s *)entry
{
  selfCopy = self;
  v5 = *(self + 128);
  v6 = *(self + 136);
  if (v6 == v5)
  {
    v7 = v5 >> 1;
    if (!v5)
    {
      v7 = 10;
    }

    if ((32 * v7) > 0x100000)
    {
      v7 = 0x8000;
    }

    v6 = v7 + v5;
    v8 = *(self + 120);
    self = _os_trace_realloc_typed();
    selfCopy[15] = self;
  }

  if (v6 <= v5)
  {
    qword_27DA52778 = "BUG IN LIBTRACE: oltb table overflow";
    qword_27DA527A8 = v5;
    __break(1u);
  }

  else
  {
    selfCopy[17] = v6;
    v9 = (selfCopy[15] + 32 * selfCopy[16]);
    v10 = *&entry->var2;
    *v9 = *&entry->var0.var0;
    v9[1] = v10;
    self = selfCopy[16];
    selfCopy[16] = self + 1;
  }

  return self;
}

- (void)dealloc
{
  dataCache = self->dataCache;
  self->dataCache = 0;

  catalogCache = self->catalogCache;
  self->catalogCache = 0;

  free(self->_traceEvents);
  free(self->_tsEntries);
  oversizeTable = self->_oversizeTable;
  self->_oversizeTable = 0;

  v6.receiver = self;
  v6.super_class = _MemoryEfficientTracepointBuffer;
  [(_BaseTracepointBuffer *)&v6 dealloc];
}

@end