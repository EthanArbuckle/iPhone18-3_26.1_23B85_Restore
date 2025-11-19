@interface _BaseTracepointBuffer
- (BOOL)bufferHasFreeSpace;
- (_BaseTracepointBuffer)init;
- (unint64_t)allocateRow;
- (void)advanceCursorToTime:(unint64_t)a3;
- (void)beginInsertingTracepointsClippingFromTime:(unint64_t)a3;
- (void)consolidate;
- (void)dealloc;
- (void)enumerateEventsFromTime:(unint64_t)a3 to:(unint64_t)a4 options:(unsigned int)a5 usingBlock:(id)a6;
- (void)finishedInsertingTracepointsWithNextMajorTime:(unint64_t)a3 options:(unsigned int)a4;
- (void)growBuffer:(unint64_t)a3;
- (void)growBufferImmediatelyIfNeeded;
- (void)insertChunk:(tracev3_chunk_s *)a3 chunkOffset:(int64_t)a4 chunkSetStartAddr:(void *)a5 timestamp:(unint64_t)a6 subchunk:(id)a7;
- (void)insertNonsparsePoint:(unint64_t)a3 uuid:(unsigned __int8)a4[16] ttl:(unsigned __int8)a5 inMemory:(BOOL)a6;
- (void)insertOversizedChunk:(tracev3_chunk_s *)a3 chunkOffset:(int64_t)a4 chunkSetStartAddr:(void *)a5 subchunk:(id)a6 chunkList:(id)a7;
- (void)insertSimpleChunk:(tracev3_chunk_s *)a3 chunkOffset:(int64_t)a4 chunkSetStartAddr:(void *)a5 subchunk:(id)a6 options:(unsigned int)a7;
- (void)insertTimesyncPoints:(_os_timesync_db_s *)a3 forBoot:(unsigned __int8)a4[16] oldestContinuousTime:(unint64_t)a5;
- (void)insertTracepoints:(tracev3_chunk_s *)a3 chunkOffset:(int64_t)a4 chunkSetStartAddr:(void *)a5 subchunk:(id)a6 options:(unsigned int)a7;
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

- (void)enumerateEventsFromTime:(unint64_t)a3 to:(unint64_t)a4 options:(unsigned int)a5 usingBlock:(id)a6
{
  v6 = a5;
  v15 = a6;
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
        if (var1 == a4)
        {
          break;
        }

        if ((v6 & 8) != 0)
        {
          if (var1 <= a4)
          {
            break;
          }

          ++self->_cursor;
          if (var1 <= a3)
          {
LABEL_11:
            if (!(v15)[2](v15, &events[v12]))
            {
              break;
            }

            count = self->_count;
          }
        }

        else
        {
          if (var1 >= a4)
          {
            break;
          }

          ++self->_cursor;
          if (var1 >= a3)
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

- (void)finishedInsertingTracepointsWithNextMajorTime:(unint64_t)a3 options:(unsigned int)a4
{
  v4 = a4;
  [(_BaseTracepointBuffer *)self consolidate];
  cursor = self->_cursor;
  count = self->_count;
  if ((v4 & 8) != 0)
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
          if (v30 < a3)
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
          if (v32 >= a3)
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
          if (v11 > a3)
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
          if (v13 <= a3)
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

- (void)insertTracepoints:(tracev3_chunk_s *)a3 chunkOffset:(int64_t)a4 chunkSetStartAddr:(void *)a5 subchunk:(id)a6 options:(unsigned int)a7
{
  v7 = a7;
  v12 = a6;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    qword_27DA52778 = "BUG IN LIBTRACE: BUG IN LOGGINGSUPPORT: Wrong type of CatalogSubchunk";
    __break(1u);
    return;
  }

  v13 = v12;
  v43 = 0;
  v42 = 0u;
  v41 = 0u;
  v14 = [v13 catalog];
  if (!_OSLogEventUnpackChunk(a3, [v14 catalog], &v41))
  {
    goto LABEL_41;
  }

  v15 = [v13 oldestTime];
  v16 = [v13 endTime];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v30 = __90___BaseTracepointBuffer_insertTracepoints_chunkOffset_chunkSetStartAddr_subchunk_options___block_invoke;
  v31 = &unk_2787ADFA0;
  v34 = v41;
  v35 = v42;
  v36 = v43;
  v37 = v15;
  v32 = self;
  v38 = v16;
  v39 = a4;
  v40 = a5;
  v33 = v14;
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
          if ((v7 & 0x20) != 0)
          {
            goto LABEL_37;
          }
        }

        else if (v27 == 7)
        {
          if ((v7 & 0x40) != 0)
          {
            goto LABEL_37;
          }
        }

        else if (v27 != 8 || (v7 & 0x800) != 0)
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
            if ((v7 & 0x80) == 0)
            {
              goto LABEL_37;
            }

            break;
          case 3u:
            if ((v7 & 0x100) == 0)
            {
              goto LABEL_37;
            }

            break;
          case 4u:
            if ((v7 & 0x200) == 0)
            {
              v28 = BYTE1(*v22);
              if (v28 == 2)
              {
                if ((v7 & 2) != 0)
                {
                  goto LABEL_37;
                }
              }

              else if (v28 != 1 || (v7 & 4) != 0)
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

- (void)insertOversizedChunk:(tracev3_chunk_s *)a3 chunkOffset:(int64_t)a4 chunkSetStartAddr:(void *)a5 subchunk:(id)a6 chunkList:(id)a7
{
  v9 = a7;
  v10 = a6;
  v11 = [[_OSLogEnumeratorOversizeChunk alloc] initWithSubchunk:v10 chunk:a3];

  [v9 addObject:v11];
}

- (void)insertSimpleChunk:(tracev3_chunk_s *)a3 chunkOffset:(int64_t)a4 chunkSetStartAddr:(void *)a5 subchunk:(id)a6 options:(unsigned int)a7
{
  v7 = a7;
  v12 = a6;
  v13 = v12;
  if ((v7 & 0x200) == 0)
  {
    v14 = a3->var1.var3.var3[0];
    if (v14 == 2)
    {
      if ((v7 & 2) != 0)
      {
LABEL_5:
        v15 = v12;
        v12 = [(_BaseTracepointBuffer *)self insertChunk:a3 chunkOffset:a4 chunkSetStartAddr:a5 timestamp:a3->var1.var0.var2 subchunk:v12];
        v13 = v15;
      }
    }

    else if (v14 != 1 || (v7 & 4) != 0)
    {
      goto LABEL_5;
    }
  }

  MEMORY[0x2821F96F8](v12, v13);
}

- (void)insertChunk:(tracev3_chunk_s *)a3 chunkOffset:(int64_t)a4 chunkSetStartAddr:(void *)a5 timestamp:(unint64_t)a6 subchunk:(id)a7
{
  v12 = a7;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v33 = 0u;
    v34 = 0u;
    v35 = 0;
    v32 = v12;
    v13 = [v32 catalog];
    if (_OSLogEventUnpackChunk(a3, [v13 catalog], &v33))
    {
      v14 = [v32 oldestTime];
      v15 = [v32 endTime];
      if (v14 <= a6)
      {
        v16 = a6;
      }

      else
      {
        v16 = v14;
      }

      if (v16 >= v15)
      {
        v17 = v15;
      }

      else
      {
        v17 = v16;
      }

      v18 = a3 - a5;
      v19 = self;
      v20 = v13;
      v21 = &v19->_events[[(_BaseTracepointBuffer *)v19 allocateRow]];
      *v21 = 3;
      *(v21 + 8) = v17;
      *(v21 + 24) = a4;
      *(v21 + 32) = v18;
      *(v21 + 96) = 0;
      *(v21 + 48) = [v20 catalog];
      v22 = v34;
      *(v21 + 56) = v33;
      *(v21 + 72) = v22;
      *(v21 + 88) = v35;
      *(v21 + 40) = [v20 fileHeader];
      v23 = [v20 store];
      v24 = [v23 fileName];

      v25 = [(_BaseTracepointBuffer *)v19 fileNames];
      v26 = v25;
      if (v24)
      {
        v31 = [v20 store];
        v27 = [v31 fileName];
        [v26 addObject:v27];

        v28 = [(_BaseTracepointBuffer *)v19 fileNames];
        v29 = [v20 store];
        v30 = [v29 fileName];
        LOWORD(v31) = [v28 indexOfObject:v30];
      }

      else
      {
        [v25 addObject:@"(null)"];

        v28 = [(_BaseTracepointBuffer *)v19 fileNames];
        v31 = [v28 indexOfObject:@"(null)"];
      }

      *(v21 + 16) = v31;
    }
  }

  else
  {
    qword_27DA52778 = "BUG IN LIBTRACE: BUG IN LOGGINGSUPPORT: Wrong type of CatalogSubchunk";
    __break(1u);
  }
}

- (void)insertNonsparsePoint:(unint64_t)a3 uuid:(unsigned __int8)a4[16] ttl:(unsigned __int8)a5 inMemory:(BOOL)a6
{
  v11 = &self->_events[[(_BaseTracepointBuffer *)self allocateRow]];
  v11->var0 = 2;
  v11->var1 = a3;
  *&v11->var3 = vdupq_n_s64(0xDEADBEEFuLL);
  v11->var5.var2.var1 = a5;
  v11->var5.var2.var2 = a6;
  v12 = [(_BaseTracepointBuffer *)self fileNames];
  [v12 addObject:@"nonsparse"];

  v13 = [(_BaseTracepointBuffer *)self fileNames];
  v14 = [v13 indexOfObject:@"nonsparse"];

  v11->var2 = v14;
  *&v11->var5.var0.var0 = *a4;
}

- (void)insertTimesyncPoints:(_os_timesync_db_s *)a3 forBoot:(unsigned __int8)a4[16] oldestContinuousTime:(unint64_t)a5
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __75___BaseTracepointBuffer_insertTimesyncPoints_forBoot_oldestContinuousTime___block_invoke;
  v5[3] = &unk_2787AF0F8;
  v5[4] = self;
  v5[5] = a5;
  v5[6] = a3;
  v5[7] = a4;
  _timesync_enumerate_boot(a3, a4, v5);
}

- (void)beginInsertingTracepointsClippingFromTime:(unint64_t)a3
{
  [(_BaseTracepointBuffer *)self setCanMutate:1];

  [(_BaseTracepointBuffer *)self advanceCursorToTime:a3];
}

- (void)growBuffer:(unint64_t)a3
{
  [(_BaseTracepointBuffer *)self consolidate];
  v5 = self->_count + a3;
  events = self->_events;
  self->_events = _os_trace_realloc_typed();
  self->_size = v5;
}

- (void)advanceCursorToTime:(unint64_t)a3
{
  v5 = [(_BaseTracepointBuffer *)self cursor];
  if ([(_BaseTracepointBuffer *)self canMutate])
  {
    if (v5 < [(_BaseTracepointBuffer *)self count])
    {
      v6 = 104 * v5 + 8;
      v7 = v5;
      while (*(&self->_events->var0 + v6) < a3)
      {
        ++v7;
        v6 += 104;
        if (v7 >= [(_BaseTracepointBuffer *)self count])
        {
          goto LABEL_8;
        }
      }

      v5 = v7;
    }

LABEL_8:

    [(_BaseTracepointBuffer *)self setCursor:v5];
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