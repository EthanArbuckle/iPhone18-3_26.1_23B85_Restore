@interface _BaseTracepointBuffer
- (BOOL)bufferHasFreeSpace;
- (_BaseTracepointBuffer)init;
- (unint64_t)allocateRow;
- (void)advanceCursorToTime:(unint64_t)time;
- (void)beginInsertingTracepointsClippingFromTime:(unint64_t)time;
- (void)consolidate;
- (void)dealloc;
- (void)enumerateEventsFromTime:(unint64_t)time to:(unint64_t)to options:(unsigned int)options usingBlock:(id)block;
- (void)finishedInsertingTracepointsWithNextMajorTime:(unint64_t)time options:(unsigned int)options;
- (void)growBuffer:(unint64_t)buffer;
- (void)growBufferImmediatelyIfNeeded;
- (void)insertChunk:(tracev3_chunk_s *)chunk chunkOffset:(int64_t)offset chunkSetStartAddr:(void *)addr timestamp:(unint64_t)timestamp subchunk:(id)subchunk;
- (void)insertNonsparsePoint:(unint64_t)point uuid:(unsigned __int8)uuid[16] ttl:(unsigned __int8)ttl inMemory:(BOOL)memory;
- (void)insertOversizedChunk:(tracev3_chunk_s *)chunk chunkOffset:(int64_t)offset chunkSetStartAddr:(void *)addr subchunk:(id)subchunk chunkList:(id)list;
- (void)insertSimpleChunk:(tracev3_chunk_s *)chunk chunkOffset:(int64_t)offset chunkSetStartAddr:(void *)addr subchunk:(id)subchunk options:(unsigned int)options;
- (void)insertTimesyncPoints:(_os_timesync_db_s *)points forBoot:(unsigned __int8)boot[16] oldestContinuousTime:(unint64_t)time;
- (void)insertTracepoints:(tracev3_chunk_s *)tracepoints chunkOffset:(int64_t)offset chunkSetStartAddr:(void *)addr subchunk:(id)subchunk options:(unsigned int)options;
@end

@implementation _BaseTracepointBuffer

- (_BaseTracepointBuffer)init
{
  v7.receiver = self;
  v7.super_class = _BaseTracepointBuffer;
  v2 = [(_BaseTracepointBuffer *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_events = 0;
    v4 = objc_alloc_init(MEMORY[0x277CBEB40]);
    fileNames = v3->_fileNames;
    v3->_fileNames = v4;

    v3->_canMutate = 0;
    v3->_count = 0;
    v3->_size = 0;
    v3->_cursor = 0;
  }

  return v3;
}

- (unint64_t)allocateRow
{
  result = [(_BaseTracepointBuffer *)self canMutate];
  if (result)
  {
    [(_BaseTracepointBuffer *)self growBufferImmediatelyIfNeeded];
    cursor = self->_cursor;
    if (cursor)
    {
      result = cursor - 1;
      self->_cursor = cursor - 1;
      return result;
    }

    result = self->_count;
    if (result < self->_size)
    {
      self->_count = result + 1;
      return result;
    }
  }

  else
  {
    qword_27DA52778 = "BUG IN LIBTRACE: oltb manipulation while immutable";
    __break(1u);
  }

  qword_27DA52778 = "BUG IN LIBTRACE: _BaseTracepointBuffer table overflow";
  qword_27DA527A8 = result;
  __break(1u);
  return result;
}

- (void)growBufferImmediatelyIfNeeded
{
  if (![(_BaseTracepointBuffer *)self bufferHasFreeSpace])
  {
    size = self->_size;
    if (size)
    {
      v4 = size >> 1;
    }

    else
    {
      v4 = 1024;
    }

    [(_BaseTracepointBuffer *)self growBuffer:v4];
  }
}

- (BOOL)bufferHasFreeSpace
{
  result = [(_BaseTracepointBuffer *)self canMutate];
  if (result)
  {
    return self->_size - self->_count + self->_cursor != 0;
  }

  qword_27DA52778 = "BUG IN LIBTRACE: oltb manipulation while immutable";
  __break(1u);
  return result;
}

- (void)consolidate
{
  if ([(_BaseTracepointBuffer *)self canMutate])
  {
    for (i = self->_cursor; i; i = self->_cursor)
    {
      v4 = i - 1;
      events = self->_events;
      v6 = &events[v4];
      v7 = self->_count - 1;
      self->_cursor = v4;
      self->_count = v7;
      v8 = &events[v7];
      var3 = v8->var5.var0.var3;
      v10 = *&v8->var5.var2.var0[8];
      v11 = *(&v8->var5.var2 + 40);
      *(&v6->var5.var2 + 24) = *(&v8->var5.var2 + 24);
      *(&v6->var5.var2 + 40) = v11;
      *&v6->var5.var2.var0[8] = v10;
      v12 = *&v8->var0;
      v13 = *&v8->var4;
      *&v6->var2 = *&v8->var2;
      *&v6->var4 = v13;
      *&v6->var0 = v12;
      v6->var5.var0.var3 = var3;
    }
  }

  else
  {
    qword_27DA52778 = "BUG IN LIBTRACE: oltb manipulation while immutable";
    __break(1u);
  }
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
    cursor = self->_cursor;
    count = self->_count;
    if (cursor < count)
    {
      v12 = cursor;
      do
      {
        events = self->_events;
        var1 = events[v12].var1;
        if (var1 == to)
        {
          break;
        }

        if ((optionsCopy & 8) != 0)
        {
          if (var1 <= to)
          {
            break;
          }

          ++self->_cursor;
          if (var1 <= time)
          {
LABEL_11:
            if (!(blockCopy)[2](blockCopy, &events[v12]))
            {
              break;
            }

            count = self->_count;
          }
        }

        else
        {
          if (var1 >= to)
          {
            break;
          }

          ++self->_cursor;
          if (var1 >= time)
          {
            goto LABEL_11;
          }
        }

        ++cursor;
        ++v12;
      }

      while (cursor < count);
    }
  }
}

- (void)finishedInsertingTracepointsWithNextMajorTime:(unint64_t)time options:(unsigned int)options
{
  optionsCopy = options;
  [(_BaseTracepointBuffer *)self consolidate];
  cursor = self->_cursor;
  count = self->_count;
  if ((optionsCopy & 8) != 0)
  {
    v9 = 0xFFFFFFFF00000001;
    while (1)
    {
      if (cursor < count)
      {
        p_var1 = &self->_events[cursor].var1;
        while (1)
        {
          v30 = *p_var1;
          p_var1 += 13;
          if (v30 < time)
          {
            break;
          }

          if (count == ++cursor)
          {
            cursor = count;
            break;
          }
        }
      }

      if (count > cursor)
      {
        v31 = &self->_events[count - 1].var1;
        while (1)
        {
          v32 = *v31;
          v31 -= 13;
          if (v32 >= time)
          {
            break;
          }

          if (--count <= cursor)
          {
            count = cursor;
            break;
          }
        }
      }

      if (cursor == count)
      {
        break;
      }

      events = self->_events;
      v34 = &events[cursor];
      v35 = *(&v34->var5.var2 + 40);
      v55 = *(&v34->var5.var2 + 24);
      v56 = v35;
      var3 = v34->var5.var0.var3;
      v36 = *&v34->var2;
      v51 = *&v34->var0;
      v52 = v36;
      v37 = *&v34->var5.var2.var0[8];
      v53 = *&v34->var4;
      v54 = v37;
      v38 = &events[--count];
      v40 = *&v38->var2;
      v39 = *&v38->var4;
      *&v34->var0 = *&v38->var0;
      *&v34->var2 = v40;
      *&v34->var4 = v39;
      v42 = *(&v38->var5.var2 + 24);
      v41 = *(&v38->var5.var2 + 40);
      v43 = *&v38->var5.var2.var0[8];
      v34->var5.var0.var3 = v38->var5.var0.var3;
      *(&v34->var5.var2 + 24) = v42;
      *(&v34->var5.var2 + 40) = v41;
      *&v34->var5.var2.var0[8] = v43;
      v44 = &self->_events[count];
      v45 = v52;
      *&v44->var0 = v51;
      *&v44->var2 = v45;
      v44->var5.var0.var3 = var3;
      v46 = v56;
      *(&v44->var5.var2 + 24) = v55;
      *(&v44->var5.var2 + 40) = v46;
      v47 = v54;
      *&v44->var4 = v53;
      *&v44->var5.var2.var0[8] = v47;
      ++cursor;
    }
  }

  else
  {
    v9 = 0x1FFFFFFFFLL;
    while (1)
    {
      if (cursor < count)
      {
        v10 = &self->_events[cursor].var1;
        while (1)
        {
          v11 = *v10;
          v10 += 13;
          if (v11 > time)
          {
            break;
          }

          if (count == ++cursor)
          {
            cursor = count;
            break;
          }
        }
      }

      if (count > cursor)
      {
        v12 = &self->_events[count - 1].var1;
        while (1)
        {
          v13 = *v12;
          v12 -= 13;
          if (v13 <= time)
          {
            break;
          }

          if (--count <= cursor)
          {
            count = cursor;
            break;
          }
        }
      }

      if (cursor == count)
      {
        break;
      }

      v14 = self->_events;
      v15 = &v14[cursor];
      v16 = *(&v15->var5.var2 + 40);
      v55 = *(&v15->var5.var2 + 24);
      v56 = v16;
      var3 = v15->var5.var0.var3;
      v17 = *&v15->var2;
      v51 = *&v15->var0;
      v52 = v17;
      v18 = *&v15->var5.var2.var0[8];
      v53 = *&v15->var4;
      v54 = v18;
      v19 = &v14[--count];
      v21 = *&v19->var2;
      v20 = *&v19->var4;
      *&v15->var0 = *&v19->var0;
      *&v15->var2 = v21;
      *&v15->var4 = v20;
      v23 = *(&v19->var5.var2 + 24);
      v22 = *(&v19->var5.var2 + 40);
      v24 = *&v19->var5.var2.var0[8];
      v15->var5.var0.var3 = v19->var5.var0.var3;
      *(&v15->var5.var2 + 24) = v23;
      *(&v15->var5.var2 + 40) = v22;
      *&v15->var5.var2.var0[8] = v24;
      v25 = &self->_events[count];
      v26 = v52;
      *&v25->var0 = v51;
      *&v25->var2 = v26;
      v25->var5.var0.var3 = var3;
      v27 = v56;
      *(&v25->var5.var2 + 24) = v55;
      *(&v25->var5.var2 + 40) = v27;
      v28 = v54;
      *&v25->var4 = v53;
      *&v25->var5.var2.var0[8] = v28;
      ++cursor;
    }
  }

  v48 = self->_cursor;
  v49 = &self->_events[v48];
  __compar[0] = MEMORY[0x277D85DD0];
  __compar[1] = 3221225472;
  __compar[2] = __79___BaseTracepointBuffer_finishedInsertingTracepointsWithNextMajorTime_options___block_invoke;
  __compar[3] = &__block_descriptor_40_e15_i24__0r_v8r_v16l;
  __compar[4] = v9;
  mergesort_b(v49, cursor - v48, 0x68uLL, __compar);
  [(_BaseTracepointBuffer *)self setCanMutate:0];
}

- (void)insertTracepoints:(tracev3_chunk_s *)tracepoints chunkOffset:(int64_t)offset chunkSetStartAddr:(void *)addr subchunk:(id)subchunk options:(unsigned int)options
{
  optionsCopy = options;
  subchunkCopy = subchunk;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    qword_27DA52778 = "BUG IN LIBTRACE: BUG IN LOGGINGSUPPORT: Wrong type of CatalogSubchunk";
    __break(1u);
    return;
  }

  v13 = subchunkCopy;
  v43 = 0;
  v42 = 0u;
  v41 = 0u;
  catalog = [v13 catalog];
  if (!_OSLogEventUnpackChunk(tracepoints, [catalog catalog], &v41))
  {
    goto LABEL_41;
  }

  oldestTime = [v13 oldestTime];
  endTime = [v13 endTime];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v30 = __90___BaseTracepointBuffer_insertTracepoints_chunkOffset_chunkSetStartAddr_subchunk_options___block_invoke;
  v31 = &unk_2787ADFA0;
  v34 = v41;
  v35 = v42;
  v36 = v43;
  v37 = oldestTime;
  selfCopy = self;
  v38 = endTime;
  offsetCopy = offset;
  addrCopy = addr;
  v33 = catalog;
  v17 = *(&v41 + 1);
  v18 = v29;
  v20 = v17 + 8;
  v19 = *v17;
  if (v19 > 0x1000)
  {
    v21 = (v17 + 8);
  }

  else
  {
    v21 = v17 + v19;
  }

  while ((v20 + 12) < v21)
  {
    v22 = v20;
    v23 = *(v20 + 2);
    v24 = HIWORD(v23);
    if (!HIWORD(v23) || v24 > (v21 - (v20 + 12)))
    {
      break;
    }

    if ((v23 & 0x7000000000000) != 0)
    {
      v26 = (HIWORD(v23) & 0xFFF8) + 32;
    }

    else
    {
      v26 = v24 + 24;
    }

    v20 = (v20 + v26);
    if (*v22)
    {
      v27 = *v22;
      if (v27 > 5)
      {
        if (v27 == 6)
        {
          if ((optionsCopy & 0x20) != 0)
          {
            goto LABEL_37;
          }
        }

        else if (v27 == 7)
        {
          if ((optionsCopy & 0x40) != 0)
          {
            goto LABEL_37;
          }
        }

        else if (v27 != 8 || (optionsCopy & 0x800) != 0)
        {
LABEL_37:
          (v30)(v18);
        }
      }

      else
      {
        switch(v27)
        {
          case 2u:
            if ((optionsCopy & 0x80) == 0)
            {
              goto LABEL_37;
            }

            break;
          case 3u:
            if ((optionsCopy & 0x100) == 0)
            {
              goto LABEL_37;
            }

            break;
          case 4u:
            if ((optionsCopy & 0x200) == 0)
            {
              v28 = BYTE1(*v22);
              if (v28 == 2)
              {
                if ((optionsCopy & 2) != 0)
                {
                  goto LABEL_37;
                }
              }

              else if (v28 != 1 || (optionsCopy & 4) != 0)
              {
                goto LABEL_37;
              }
            }

            break;
          default:
            goto LABEL_37;
        }
      }
    }
  }

LABEL_41:
}

- (void)insertOversizedChunk:(tracev3_chunk_s *)chunk chunkOffset:(int64_t)offset chunkSetStartAddr:(void *)addr subchunk:(id)subchunk chunkList:(id)list
{
  listCopy = list;
  subchunkCopy = subchunk;
  v11 = [[_OSLogEnumeratorOversizeChunk alloc] initWithSubchunk:subchunkCopy chunk:chunk];

  [listCopy addObject:v11];
}

- (void)insertSimpleChunk:(tracev3_chunk_s *)chunk chunkOffset:(int64_t)offset chunkSetStartAddr:(void *)addr subchunk:(id)subchunk options:(unsigned int)options
{
  optionsCopy = options;
  subchunkCopy = subchunk;
  v13 = subchunkCopy;
  if ((optionsCopy & 0x200) == 0)
  {
    v14 = chunk->var1.var3.var3[0];
    if (v14 == 2)
    {
      if ((optionsCopy & 2) != 0)
      {
LABEL_5:
        v15 = subchunkCopy;
        subchunkCopy = [(_BaseTracepointBuffer *)self insertChunk:chunk chunkOffset:offset chunkSetStartAddr:addr timestamp:chunk->var1.var0.var2 subchunk:subchunkCopy];
        v13 = v15;
      }
    }

    else if (v14 != 1 || (optionsCopy & 4) != 0)
    {
      goto LABEL_5;
    }
  }

  MEMORY[0x2821F96F8](subchunkCopy, v13);
}

- (void)insertChunk:(tracev3_chunk_s *)chunk chunkOffset:(int64_t)offset chunkSetStartAddr:(void *)addr timestamp:(unint64_t)timestamp subchunk:(id)subchunk
{
  subchunkCopy = subchunk;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v33 = 0u;
    v34 = 0u;
    v35 = 0;
    v32 = subchunkCopy;
    catalog = [v32 catalog];
    if (_OSLogEventUnpackChunk(chunk, [catalog catalog], &v33))
    {
      oldestTime = [v32 oldestTime];
      endTime = [v32 endTime];
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
        v17 = endTime;
      }

      else
      {
        v17 = timestampCopy;
      }

      v18 = chunk - addr;
      selfCopy = self;
      v20 = catalog;
      v21 = &selfCopy->_events[[(_BaseTracepointBuffer *)selfCopy allocateRow]];
      *v21 = 3;
      *(v21 + 8) = v17;
      *(v21 + 24) = offset;
      *(v21 + 32) = v18;
      *(v21 + 96) = 0;
      *(v21 + 48) = [v20 catalog];
      v22 = v34;
      *(v21 + 56) = v33;
      *(v21 + 72) = v22;
      *(v21 + 88) = v35;
      *(v21 + 40) = [v20 fileHeader];
      store = [v20 store];
      fileName = [store fileName];

      fileNames = [(_BaseTracepointBuffer *)selfCopy fileNames];
      v26 = fileNames;
      if (fileName)
      {
        store2 = [v20 store];
        fileName2 = [store2 fileName];
        [v26 addObject:fileName2];

        fileNames2 = [(_BaseTracepointBuffer *)selfCopy fileNames];
        store3 = [v20 store];
        fileName3 = [store3 fileName];
        LOWORD(store2) = [fileNames2 indexOfObject:fileName3];
      }

      else
      {
        [fileNames addObject:@"(null)"];

        fileNames2 = [(_BaseTracepointBuffer *)selfCopy fileNames];
        store2 = [fileNames2 indexOfObject:@"(null)"];
      }

      *(v21 + 16) = store2;
    }
  }

  else
  {
    qword_27DA52778 = "BUG IN LIBTRACE: BUG IN LOGGINGSUPPORT: Wrong type of CatalogSubchunk";
    __break(1u);
  }
}

- (void)insertNonsparsePoint:(unint64_t)point uuid:(unsigned __int8)uuid[16] ttl:(unsigned __int8)ttl inMemory:(BOOL)memory
{
  v11 = &self->_events[[(_BaseTracepointBuffer *)self allocateRow]];
  v11->var0 = 2;
  v11->var1 = point;
  *&v11->var3 = vdupq_n_s64(0xDEADBEEFuLL);
  v11->var5.var2.var1 = ttl;
  v11->var5.var2.var2 = memory;
  fileNames = [(_BaseTracepointBuffer *)self fileNames];
  [fileNames addObject:@"nonsparse"];

  fileNames2 = [(_BaseTracepointBuffer *)self fileNames];
  v14 = [fileNames2 indexOfObject:@"nonsparse"];

  v11->var2 = v14;
  *&v11->var5.var0.var0 = *uuid;
}

- (void)insertTimesyncPoints:(_os_timesync_db_s *)points forBoot:(unsigned __int8)boot[16] oldestContinuousTime:(unint64_t)time
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __75___BaseTracepointBuffer_insertTimesyncPoints_forBoot_oldestContinuousTime___block_invoke;
  v5[3] = &unk_2787AF0F8;
  v5[4] = self;
  v5[5] = time;
  v5[6] = points;
  v5[7] = boot;
  _timesync_enumerate_boot(points, boot, v5);
}

- (void)beginInsertingTracepointsClippingFromTime:(unint64_t)time
{
  [(_BaseTracepointBuffer *)self setCanMutate:1];

  [(_BaseTracepointBuffer *)self advanceCursorToTime:time];
}

- (void)growBuffer:(unint64_t)buffer
{
  [(_BaseTracepointBuffer *)self consolidate];
  v5 = self->_count + buffer;
  events = self->_events;
  self->_events = _os_trace_realloc_typed();
  self->_size = v5;
}

- (void)advanceCursorToTime:(unint64_t)time
{
  cursor = [(_BaseTracepointBuffer *)self cursor];
  if ([(_BaseTracepointBuffer *)self canMutate])
  {
    if (cursor < [(_BaseTracepointBuffer *)self count])
    {
      v6 = 104 * cursor + 8;
      v7 = cursor;
      while (*(&self->_events->var0 + v6) < time)
      {
        ++v7;
        v6 += 104;
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

- (void)dealloc
{
  free(self->_events);
  v3.receiver = self;
  v3.super_class = _BaseTracepointBuffer;
  [(_BaseTracepointBuffer *)&v3 dealloc];
}

@end