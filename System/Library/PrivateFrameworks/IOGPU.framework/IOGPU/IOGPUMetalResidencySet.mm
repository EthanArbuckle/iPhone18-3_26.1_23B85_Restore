@interface IOGPUMetalResidencySet
- (BOOL)_commitAddedAllocations:(const void *)a3 count:(unint64_t)a4 removedAllocations:(const void *)a5 count:(unint64_t)a6;
- (BOOL)_commitAddedHeaps:(const void *)a3 count:(unint64_t)a4 removedHeaps:(const void *)a5 count:(unint64_t)a6;
- (BOOL)_commitAddedResources:(const void *)a3 count:(unint64_t)a4 removedResources:(const void *)a5 count:(unint64_t)a6;
- (BOOL)containsAllocation:(id)a3;
- (IOGPUMetalResidencySet)initWithDevice:(id)a3 descriptor:(id)a4 args:(IOGPUNewResourceArgs *)a5 argsSize:(unint64_t)a6;
- (NSArray)allAllocations;
- (NSArray)allCommittedAllocations;
- (id).cxx_construct;
- (unint64_t)countForAllocation:(id)a3;
- (unint64_t)generationForAllocation:(id)a3;
- (void)addAllocation:(id)a3;
- (void)addAllocations:(const void *)a3 count:(unint64_t)a4;
- (void)commit;
- (void)dealloc;
- (void)endResidency;
- (void)removeAllAllocations;
- (void)removeAllocation:(id)a3;
- (void)removeAllocations:(const void *)a3 count:(unint64_t)a4;
- (void)requestResidency;
@end

@implementation IOGPUMetalResidencySet

- (id).cxx_construct
{
  *(self + 208) = 0;
  *(self + 104) = 0u;
  *(self + 120) = 0u;
  *(self + 136) = 0u;
  *(self + 148) = 0u;
  *(self + 22) = 0;
  *(self + 23) = 0;
  *(self + 21) = 0;
  return self;
}

- (void)dealloc
{
  groupRef = self->_groupRef;
  if (groupRef)
  {
    CFRelease(groupRef);
  }

  IOGPUGenerationalSet<objc_object *,IOGPUMTLIdKey,IOGPUMTLObjectHashAllocator>::releaseAllKeys(&self->_hashTable);

  v4.receiver = self;
  v4.super_class = IOGPUMetalResidencySet;
  [(_MTLObjectWithLabel *)&v4 dealloc];
}

- (void)commit
{
  v2 = MEMORY[0x1EEE9AC00](self, a2);
  v3 = v2;
  if (*__globalGPUCommPage)
  {
    v4 = *(v2 + 48);
    v5 = *(v2 + 172);
    IOGPUDeviceTraceEventStart();
  }

  v6 = (v3 + 104);
  v7 = *(v3 + 176);
  if (v7)
  {
    if (v7 > 0x100)
    {
      v8 = malloc_type_malloc(16 * v7, 0x80040B8603338uLL);
      v10 = *(v3 + 176);
      v37 = v8;
      v9 = &v8[8 * v7];
      if (!v10)
      {
        v11 = 0;
        v12 = 0;
LABEL_29:
        if (v11 | v12)
        {
          [v3 _commitAddedAllocations:? count:? removedAllocations:? count:?];
          for (; v11; --v11)
          {
          }
        }

        if (v37 != v36)
        {
          free(v37);
        }

        goto LABEL_34;
      }
    }

    else
    {
      v8 = v36;
      v37 = v36;
      v9 = &v36[v7];
    }

    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = *(v3 + 144);
    do
    {
      v16 = *(v15 + 8 * v14);
      if (v16)
      {
        v17 = 0;
        do
        {
          v18 = __clz(__rbit64(v16));
          v19 = 1 << v18;
          v20 = (v14 << 6) | v18;
          if (v20 <= *(v3 + 160))
          {
            v21 = *(*(v3 + 136) + 8 * v20);
            if (v21)
            {
              v22 = *(*(v3 + 136) + 8 * v20);
              do
              {
                v23 = __clz(__rbit64(v22));
                v24 = 1 << v23;
                v25 = ~(1 << v23);
                v26 = (v20 << 6) | v23;
                v27 = *v6;
                v28 = *(*v6 + 8 * v26);
                if ((v28 & 3) == 1)
                {
                  if (*(*(v3 + 112) + 8 * v26) <= *(v3 + 200))
                  {
                    v29 = v28 & 0xFFFFFFFFFFFFFFFCLL;
                    v30 = (0x9E3779B97F4A7C15 * (v28 & 0xFFFFFFFFFFFFFFFCLL)) >> -*(v3 + 168);
                    *(v27 + 8 * v26) = 0;
                    v9[v11] = v29;
                    *(v27 + 8 * v26) &= ~1uLL;
                    v31 = v26 - v30;
                    if (v31 < 0)
                    {
                      v31 += *(v3 + 152);
                    }

                    ++v11;
                    *&v21 &= v25;
                    v32 = *(v3 + 128);
                    *(*(v3 + 120) + 4 * v30) &= ~(1 << v31);
                    *(v32 + 8 * v20) &= v25;
                    --*(v3 + 172);
                  }
                }

                else if ((v28 & 3) == 2)
                {
                  *&v8[8 * v12++] = v28 & 0xFFFFFFFFFFFFFFFCLL;
                  *(v27 + 8 * v26) |= 1uLL;
                  *&v21 &= v25;
                }

                v22 &= ~v24;
              }

              while (v22);
              v33 = vcnt_s8(v21);
              v33.i16[0] = vaddlv_u8(v33);
              v13 += v33.i32[0];
              *(*(v3 + 136) + 8 * v20) = v21;
              if (v21)
              {
                v34 = v19;
              }

              else
              {
                v34 = 0;
              }

              v17 |= v34;
            }
          }

          v16 &= ~v19;
        }

        while (v16);
        v15 = *(v3 + 144);
        *(v15 + 8 * v14) = v17;
      }

      ++v14;
    }

    while (v14 <= *(v3 + 164));
    *(v3 + 176) = v13;
    goto LABEL_29;
  }

LABEL_34:
  if (*__globalGPUCommPage)
  {
    v35 = *(v3 + 48);
    [v3 allocatedSize];
    IOGPUDeviceTraceEventEnd();
  }
}

- (IOGPUMetalResidencySet)initWithDevice:(id)a3 descriptor:(id)a4 args:(IOGPUNewResourceArgs *)a5 argsSize:(unint64_t)a6
{
  v23.receiver = self;
  v23.super_class = IOGPUMetalResidencySet;
  v10 = [(_MTLObjectWithLabel *)&v23 init];
  if (v10)
  {
    v11 = a3;
    *(v10 + 9) = v11;
    *(v10 + 6) = IOGPUDeviceGetNextGlobalTraceID([v11 deviceRef]);
    [v10 setCurrentGeneration:1];
    [v10 setExpiredGeneration:1];
    *(v10 + 84) = [a4 evictsImmediately];
    v12 = [a4 initialCapacity];
    v13 = 128;
    if (v12)
    {
      v13 = v12;
    }

    v14 = 64;
    do
    {
      v15 = v14;
      v14 = (2 * v14);
    }

    while (v13 > v15);
    if (v15 > 0x40000)
    {
      goto LABEL_14;
    }

    a5->var0.var0 = 3;
    if (*(v10 + 84) == 1)
    {
      a5->var0.var10 = 0x400000;
    }

    a5->var0.var16.var1.var0 = v15;
    v16 = IOGPUResourceCreate([*(v10 + 9) deviceRef], a5, a6);
    *(v10 + 8) = v16;
    if (v16)
    {
      *(v10 + 10) = *(v16 + 48);
      *(v10 + 20) = 0;
      IOGPUGenerationalSet<objc_object *,IOGPUMTLIdKey,IOGPUMTLObjectHashAllocator>::init(v10 + 13, v15, 0x40000u);
      v17 = __globalGPUCommPage;
      if (*__globalGPUCommPage)
      {
        v18 = *(v10 + 6);
        [a4 initialCapacity];
        IOGPUDeviceTraceEvent();
        v17 = __globalGPUCommPage;
      }

      if (*v17)
      {
        v19 = [*(v10 + 9) deviceRef];
        v20 = *(v10 + 6);
        v21 = *(v10 + 7);
        [objc_msgSend(a4 "label")];
        *(v10 + 7) = IOGPUDeviceTraceObjectLabel(v19, 8, 0, v20, v21);
      }
    }

    else
    {
LABEL_14:

      return 0;
    }
  }

  return v10;
}

- (void)endResidency
{
  v4 = 2;
  IOGPUResourceSetPurgeable(self->_groupRef, 6uLL, &v4);
  if (*__globalGPUCommPage)
  {
    globalTraceObjectID = self->_globalTraceObjectID;
    IOGPUDeviceTraceEvent();
  }
}

- (void)requestResidency
{
  v4 = 4;
  IOGPUResourceSetPurgeable(self->_groupRef, 5uLL, &v4);
  if (*__globalGPUCommPage)
  {
    globalTraceObjectID = self->_globalTraceObjectID;
    IOGPUDeviceTraceEvent();
  }
}

- (void)addAllocations:(const void *)a3 count:(unint64_t)a4
{
  if (a4)
  {
    v4 = 0;
    p_hashTable = &self->_hashTable;
    do
    {
      v6 = a3[v4];
      v7 = 0x9E3779B97F4A7C15 * (v6 & 0xFFFFFFFFFFFFFFFCLL);
      v8 = v7 >> -LOBYTE(p_hashTable->m_hashShift);
      v9 = p_hashTable->m_hopInfo[v8];
      while (v9)
      {
        v10 = __clz(__rbit32(v9));
        v9 &= ~(1 << v10);
        v11 = (v10 + v8) & (p_hashTable->m_hashSize - 1);
        v12 = *(p_hashTable->m_keyTable + v11);
        if ((v12 ^ v6) <= 3)
        {
          *(p_hashTable->m_keyTable + v11) = v12 | 2;
          goto LABEL_34;
        }
      }

      v37 = 0;
      m_currentGeneration = p_hashTable->m_currentGeneration;
      v39 = p_hashTable->m_hashSize - 1;
      v40 = v7 >> -LOBYTE(p_hashTable->m_hashShift);
      m_usedInfo = p_hashTable->m_usedInfo;
      m_usedMask = p_hashTable->m_usedMask;
      v43 = m_usedInfo[v40 >> 6] | ~(-1 << v40);
      v44 = 64 - (v40 & 0x3F);
      v45 = v40 >> 6 << 6;
      v46 = (v40 >> 6) + 1;
      while (v43 == -1)
      {
        v37 += v44;
        v43 = m_usedInfo[v46 & m_usedMask];
        v45 += 64;
        ++v46;
        v44 = 64;
        if (v37 >= 0x80)
        {
          goto LABEL_30;
        }
      }

      v36 = __clz(__rbit64(~v43)) + v45;
      if ((v36 - v40) > 0x7F)
      {
LABEL_30:
        IOGPUGenerationalSet<objc_object *,IOGPUMTLIdKey,IOGPUMTLObjectHashAllocator>::rehash(p_hashTable, 0);
      }

      LODWORD(v13) = p_hashTable->m_usedMask;
      while ((v36 - v40) >= 0x20)
      {
        v14 = v36 - 31;
        if (v36 < 0x1F)
        {
          v22 = v36;
        }

        else
        {
          m_hopInfo = p_hashTable->m_hopInfo;
          v16 = -31;
          while (1)
          {
            v14 = v36 + v16;
            v17 = (v36 + v16) & v39;
            v18 = m_hopInfo[v17];
            v19 = __clz(__rbit32(v18));
            v20 = v36 + v16 + v19;
            if (v18 && v20 < v36)
            {
              break;
            }

            if (!__CFADD__(v36, ++v16))
            {
              goto LABEL_30;
            }
          }

          m_keyTable = p_hashTable->m_keyTable;
          m_generationTable = p_hashTable->m_generationTable;
          v25 = *(p_hashTable->m_keyTable + (v20 & v39));
          v26 = m_generationTable[v20 & v39];
          m_hopInfo[v17] = v18 & ~(1 << v19) | (1 << -v16);
          m_dirtyInfo = p_hashTable->m_dirtyInfo;
          v13 = p_hashTable->m_usedMask;
          v28 = v13 & (v20 >> 6);
          v29 = m_dirtyInfo[v28];
          v30 = 1 << (v14 + v19);
          if ((v29 & (1 << v20)) != 0)
          {
            m_dirtyInfo[v28] = v29 & ~v30;
            v31 = v13 & (v36 >> 6);
            m_dirtyInfo[v31] |= 1 << v36;
            v32 = 1 << v31;
            v33 = p_hashTable->m_dirtyHMask & (v31 >> 6);
            p_hashTable->m_dirtyInfoH[v33] |= v32;
          }

          m_usedInfo[m_usedMask & (v36 >> 6)] |= 1 << v36;
          v34 = v36 & v39;
          *(m_keyTable + v34) = v25;
          v22 = v20;
          m_generationTable[v34] = v26;
          *(m_keyTable + (v20 & v39)) = 2;
          m_usedInfo[m_usedMask & (v20 >> 6)] &= ~(1 << v20);
        }

        v35 = v14 == v36;
        v36 = v22;
        if (v35)
        {
          goto LABEL_30;
        }
      }

      v47 = v36 & v39;
      v48 = p_hashTable->m_generationTable;
      *(p_hashTable->m_keyTable + v47) = v6 | 2;
      v48[v47] = m_currentGeneration;
      if ((v6 & 1 | 2) == 2)
      {
        v49 = v13 & (v36 >> 6);
        m_dirtyInfoH = p_hashTable->m_dirtyInfoH;
        p_hashTable->m_dirtyInfo[v49] |= 1 << v36;
        v51 = 1 << v49;
        v52 = p_hashTable->m_dirtyHMask & (v49 >> 6);
        m_dirtyInfoH[v52] |= v51;
        ++p_hashTable->m_dirtyCount;
      }

      p_hashTable->m_hopInfo[v40] |= 1 << (v36 - v40);
      m_usedInfo[m_usedMask & (v36 >> 6)] |= 1 << v36;
      ++p_hashTable->m_count;
      v53 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
LABEL_34:
      if (*__globalGPUCommPage)
      {
        v54 = v6;
        if (*(v6 + *MEMORY[0x1E6974268]) == 2)
        {
          v54 = *(v6 + 56);
        }

        globalTraceObjectID = self->_globalTraceObjectID;
        v56 = *(v54 + 128);
        [v6 allocatedSize];
        IOGPUDeviceTraceEvent();
      }

      ++v4;
    }

    while (v4 != a4);
  }
}

- (void)removeAllocations:(const void *)a3 count:(unint64_t)a4
{
  if (a4)
  {
    v4 = a4;
    v5 = a3;
    v6 = 0;
    p_hashTable = &self->_hashTable;
    do
    {
      v8 = v5[v6];
      v9 = self->_hashTable.m_hashSize - 1;
      v10 = (0x9E3779B97F4A7C15 * (v8 & 0xFFFFFFFFFFFFFFFCLL)) >> -LOBYTE(self->_hashTable.m_hashShift);
      v11 = v10;
      v12 = self->_hashTable.m_hopInfo[v10];
      while (v12)
      {
        v13 = __clz(__rbit32(v12));
        v14 = 1 << v13;
        v12 &= ~(1 << v13);
        v15 = v13 + v10;
        v16 = v15 & v9;
        m_keyTable = p_hashTable->m_keyTable;
        v18 = *(p_hashTable->m_keyTable + (v15 & v9));
        if ((v18 ^ v8) <= 3)
        {
          *(m_keyTable + v16) = v18 & 0xFFFFFFFFFFFFFFFDLL;
          if (v18)
          {
            m_usedMask = self->_hashTable.m_usedMask;
            self->_hashTable.m_generationTable[self->_hashTable.m_hashMask & v15] = self->_hashTable.m_currentGeneration;
            v22 = m_usedMask & (v15 >> 6);
            m_dirtyInfoH = self->_hashTable.m_dirtyInfoH;
            self->_hashTable.m_dirtyInfo[v22] |= 1 << v15;
            v24 = 1 << v22;
            v25 = self->_hashTable.m_dirtyHMask & (v22 >> 6);
            m_dirtyInfoH[v25] |= v24;
            ++self->_hashTable.m_dirtyCount;
          }

          else
          {
            v19 = ~v14;

            *(m_keyTable + v16) = 0;
            m_usedInfo = self->_hashTable.m_usedInfo;
            self->_hashTable.m_hopInfo[v11] &= v19;
            v5 = a3;
            v4 = a4;
            m_usedInfo[self->_hashTable.m_usedMask & (v15 >> 6)] &= ~(1 << v15);
            --self->_hashTable.m_count;
          }

          break;
        }
      }

      if (*__globalGPUCommPage)
      {
        if (*(v8 + *MEMORY[0x1E6974268]) == 2)
        {
          v8 = *(v8 + 56);
        }

        globalTraceObjectID = self->_globalTraceObjectID;
        v27 = *(v8 + 128);
        IOGPUDeviceTraceEvent();
      }

      ++v6;
    }

    while (v6 != v4);
  }
}

- (void)addAllocation:(id)a3
{
  p_hashTable = &self->_hashTable;
  v6 = a3 | 2;
  v7 = (a3 & 0xFFFFFFFFFFFFFFFCLL);
  v8 = 0x9E3779B97F4A7C15 * (a3 & 0xFFFFFFFFFFFFFFFCLL);
  v9 = v8 >> -LOBYTE(self->_hashTable.m_hashShift);
  v10 = self->_hashTable.m_hopInfo[v9];
  while (v10)
  {
    v11 = __clz(__rbit32(v10));
    v10 &= ~(1 << v11);
    v12 = (v11 + v9) & (self->_hashTable.m_hashSize - 1);
    v13 = *(p_hashTable->m_keyTable + v12);
    if ((v13 ^ a3) <= 3)
    {
      *(p_hashTable->m_keyTable + v12) = v13 | 2;
      goto LABEL_32;
    }
  }

  v14 = 0;
  m_currentGeneration = self->_hashTable.m_currentGeneration;
  v16 = self->_hashTable.m_hashSize - 1;
  v17 = v8 >> -LOBYTE(self->_hashTable.m_hashShift);
  m_usedInfo = self->_hashTable.m_usedInfo;
  m_usedMask = self->_hashTable.m_usedMask;
  v20 = m_usedInfo[v17 >> 6] | ~(-1 << v17);
  v21 = 64 - (v17 & 0x3F);
  v22 = v17 >> 6 << 6;
  v23 = (v17 >> 6) + 1;
  while (v20 == -1)
  {
    v14 += v21;
    v20 = m_usedInfo[v23 & m_usedMask];
    v22 += 64;
    ++v23;
    v21 = 64;
    if (v14 >= 0x80)
    {
      goto LABEL_10;
    }
  }

  v24 = __clz(__rbit64(~v20)) + v22;
  if ((v24 - v17) > 0x7F)
  {
LABEL_10:
    IOGPUGenerationalSet<objc_object *,IOGPUMTLIdKey,IOGPUMTLObjectHashAllocator>::rehash(p_hashTable, 0);
  }

  LODWORD(v25) = self->_hashTable.m_usedMask;
  while ((v24 - v17) >= 0x20)
  {
    v26 = v24 - 31;
    if (v24 < 0x1F)
    {
      v34 = v24;
    }

    else
    {
      m_hopInfo = p_hashTable->m_hopInfo;
      v28 = -31;
      while (1)
      {
        v26 = v24 + v28;
        v29 = (v24 + v28) & v16;
        v30 = m_hopInfo[v29];
        v31 = __clz(__rbit32(v30));
        v32 = v24 + v28 + v31;
        if (v30 && v32 < v24)
        {
          break;
        }

        if (!__CFADD__(v24, ++v28))
        {
          goto LABEL_10;
        }
      }

      m_keyTable = p_hashTable->m_keyTable;
      m_generationTable = p_hashTable->m_generationTable;
      v37 = *(p_hashTable->m_keyTable + (v32 & v16));
      v38 = m_generationTable[v32 & v16];
      m_hopInfo[v29] = v30 & ~(1 << v31) | (1 << -v28);
      m_dirtyInfo = p_hashTable->m_dirtyInfo;
      v25 = p_hashTable->m_usedMask;
      v40 = v25 & (v32 >> 6);
      v41 = m_dirtyInfo[v40];
      v42 = 1 << (v26 + v31);
      if ((v41 & (1 << v32)) != 0)
      {
        m_dirtyInfo[v40] = v41 & ~v42;
        v43 = v25 & (v24 >> 6);
        m_dirtyInfo[v43] |= 1 << v24;
        v44 = 1 << v43;
        v45 = p_hashTable->m_dirtyHMask & (v43 >> 6);
        p_hashTable->m_dirtyInfoH[v45] |= v44;
      }

      m_usedInfo[m_usedMask & (v24 >> 6)] |= 1 << v24;
      v46 = v24 & v16;
      *(m_keyTable + v46) = v37;
      v34 = v32;
      m_generationTable[v46] = v38;
      *(m_keyTable + (v32 & v16)) = 2;
      m_usedInfo[m_usedMask & (v32 >> 6)] &= ~(1 << v32);
    }

    v47 = v26 == v24;
    v24 = v34;
    if (v47)
    {
      goto LABEL_10;
    }
  }

  v48 = v24 & v16;
  v49 = p_hashTable->m_generationTable;
  *(p_hashTable->m_keyTable + v48) = v6;
  v49[v48] = m_currentGeneration;
  if ((v6 & 3) == 2)
  {
    v50 = v25 & (v24 >> 6);
    m_dirtyInfoH = p_hashTable->m_dirtyInfoH;
    p_hashTable->m_dirtyInfo[v50] |= 1 << v24;
    v52 = 1 << v50;
    v53 = p_hashTable->m_dirtyHMask & (v50 >> 6);
    m_dirtyInfoH[v53] |= v52;
    ++p_hashTable->m_dirtyCount;
  }

  p_hashTable->m_hopInfo[v17] |= 1 << (v24 - v17);
  m_usedInfo[m_usedMask & (v24 >> 6)] |= 1 << v24;
  ++p_hashTable->m_count;
  v54 = v7;
LABEL_32:
  if (*__globalGPUCommPage)
  {
    globalTraceObjectID = self->_globalTraceObjectID;
    v56 = a3;
    if (*(a3 + *MEMORY[0x1E6974268]) == 2)
    {
      v56 = *(a3 + 7);
    }

    v57 = v56[16];
    [a3 allocatedSize];

    IOGPUDeviceTraceEvent();
  }
}

- (void)removeAllocation:(id)a3
{
  v3 = a3;
  p_hashTable = &self->_hashTable;
  v6 = self->_hashTable.m_hashSize - 1;
  v7 = (0x9E3779B97F4A7C15 * (a3 & 0xFFFFFFFFFFFFFFFCLL)) >> -LOBYTE(self->_hashTable.m_hashShift);
  v8 = v7;
  v9 = self->_hashTable.m_hopInfo[v7];
  while (v9)
  {
    v10 = __clz(__rbit32(v9));
    v11 = 1 << v10;
    v9 &= ~(1 << v10);
    v12 = v10 + v7;
    v13 = v12 & v6;
    m_keyTable = p_hashTable->m_keyTable;
    v15 = *(p_hashTable->m_keyTable + (v12 & v6));
    if ((v15 ^ a3) <= 3)
    {
      *(m_keyTable + v13) = v15 & 0xFFFFFFFFFFFFFFFDLL;
      if (v15)
      {
        m_usedMask = self->_hashTable.m_usedMask;
        self->_hashTable.m_generationTable[self->_hashTable.m_hashMask & v12] = self->_hashTable.m_currentGeneration;
        v19 = m_usedMask & (v12 >> 6);
        m_dirtyInfoH = self->_hashTable.m_dirtyInfoH;
        self->_hashTable.m_dirtyInfo[v19] |= 1 << v12;
        v21 = 1 << v19;
        v22 = self->_hashTable.m_dirtyHMask & (v19 >> 6);
        m_dirtyInfoH[v22] |= v21;
        ++self->_hashTable.m_dirtyCount;
      }

      else
      {
        v16 = ~v11;

        *(m_keyTable + v13) = 0;
        m_usedInfo = p_hashTable->m_usedInfo;
        p_hashTable->m_hopInfo[v8] &= v16;
        m_usedInfo[p_hashTable->m_usedMask & (v12 >> 6)] &= ~(1 << v12);
        --p_hashTable->m_count;
      }

      break;
    }
  }

  if (*__globalGPUCommPage)
  {
    globalTraceObjectID = self->_globalTraceObjectID;
    if (*(v3 + *MEMORY[0x1E6974268]) == 2)
    {
      v3 = v3[7];
    }

    v24 = v3[16];

    IOGPUDeviceTraceEvent();
  }
}

- (NSArray)allAllocations
{
  p_hashTable = &self->_hashTable;
  m_count = self->_hashTable.m_count;
  if (m_count)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:m_count];
    if (p_hashTable->m_init)
    {
      v5 = 0;
      do
      {
        for (i = p_hashTable->m_usedInfo[v5]; i; i &= ~(1 << v7))
        {
          v7 = __clz(__rbit64(i));
          v8 = *(p_hashTable->m_keyTable + (v7 | (v5 << 6)));
          if ((v8 & 2) != 0)
          {
            [v4 addObject:v8 & 0xFFFFFFFFFFFFFFFCLL];
          }
        }

        ++v5;
      }

      while (v5 <= p_hashTable->m_usedMask);
    }
  }

  else
  {
    v4 = objc_opt_new();
  }

  return v4;
}

- (NSArray)allCommittedAllocations
{
  p_hashTable = &self->_hashTable;
  m_count = self->_hashTable.m_count;
  if (m_count)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:m_count];
    if (p_hashTable->m_init)
    {
      v5 = 0;
      do
      {
        for (i = p_hashTable->m_usedInfo[v5]; i; i &= ~(1 << v7))
        {
          v7 = __clz(__rbit64(i));
          v8 = *(p_hashTable->m_keyTable + (v7 | (v5 << 6)));
          if (v8)
          {
            [v4 addObject:v8 & 0xFFFFFFFFFFFFFFFCLL];
          }
        }

        ++v5;
      }

      while (v5 <= p_hashTable->m_usedMask);
    }
  }

  else
  {
    v4 = objc_opt_new();
  }

  return v4;
}

- (void)removeAllAllocations
{
  p_hashTable = &self->_hashTable;
  if (self->_hashTable.m_init)
  {
    v3 = 0;
    m_usedInfo = self->_hashTable.m_usedInfo;
    do
    {
      v5 = m_usedInfo[v3];
      for (i = v3; v5; v5 &= ~v14)
      {
        v7 = __clz(__rbit64(v5));
        v8 = (i << 6) | v7;
        m_keyTable = p_hashTable->m_keyTable;
        v10 = *(p_hashTable->m_keyTable + v8);
        v11 = -p_hashTable->m_hashShift;
        v12 = (0x9E3779B97F4A7C15 * (v10 & 0xFFFFFFFFFFFFFFFCLL)) >> -LOBYTE(p_hashTable->m_hashShift);
        v13 = v8 - v12;
        if (v8 - v12 < 0)
        {
          v13 += p_hashTable->m_hashSize;
        }

        v14 = 1 << v7;
        *(m_keyTable + v8) = v10 & 0xFFFFFFFFFFFFFFFDLL;
        if (v10)
        {
          m_usedMask = p_hashTable->m_usedMask;
          p_hashTable->m_generationTable[p_hashTable->m_hashMask & v8] = p_hashTable->m_currentGeneration;
          v16 = m_usedMask & (v8 >> 6);
          m_dirtyInfoH = p_hashTable->m_dirtyInfoH;
          p_hashTable->m_dirtyInfo[v16] |= 1 << ((i << 6) | v7);
          v18 = 1 << v16;
          v19 = p_hashTable->m_dirtyHMask & (v16 >> 6);
          m_dirtyInfoH[v19] |= v18;
          ++p_hashTable->m_dirtyCount;
        }

        else
        {

          *(m_keyTable + v8) = 0;
          m_usedInfo = p_hashTable->m_usedInfo;
          p_hashTable->m_hopInfo[v12] &= ~(1 << v13);
          m_usedInfo[i] &= ~v14;
          --p_hashTable->m_count;
        }
      }

      v3 = i + 1;
    }

    while ((i + 1) <= p_hashTable->m_usedMask);
  }

  if (*__globalGPUCommPage)
  {
    globalTraceObjectID = self->_globalTraceObjectID;

    IOGPUDeviceTraceEvent();
  }
}

- (BOOL)containsAllocation:(id)a3
{
  v3 = (0x9E3779B97F4A7C15 * (a3 & 0xFFFFFFFFFFFFFFFCLL)) >> -LOBYTE(self->_hashTable.m_hashShift);
  v4 = self->_hashTable.m_hopInfo[v3];
  while (v4)
  {
    v5 = __clz(__rbit32(v4));
    v4 &= ~(1 << v5);
    v6 = *(self->_hashTable.m_keyTable + ((v5 + v3) & (self->_hashTable.m_hashSize - 1)));
    if ((v6 ^ a3) <= 3)
    {
      return (v6 >> 1) & 1;
    }
  }

  LOBYTE(v7) = 0;
  return v7;
}

- (unint64_t)countForAllocation:(id)a3
{
  v3 = (0x9E3779B97F4A7C15 * (a3 & 0xFFFFFFFFFFFFFFFCLL)) >> -LOBYTE(self->_hashTable.m_hashShift);
  v4 = self->_hashTable.m_hopInfo[v3];
  while (v4)
  {
    v5 = __clz(__rbit32(v4));
    v4 &= ~(1 << v5);
    v6 = *(self->_hashTable.m_keyTable + ((v5 + v3) & (self->_hashTable.m_hashSize - 1)));
    if ((v6 ^ a3) <= 3)
    {
      return (v6 >> 1) & 1;
    }
  }

  return 0;
}

- (unint64_t)generationForAllocation:(id)a3
{
  v3 = (0x9E3779B97F4A7C15 * (a3 & 0xFFFFFFFFFFFFFFFCLL)) >> -LOBYTE(self->_hashTable.m_hashShift);
  v4 = self->_hashTable.m_hopInfo[v3];
  while (v4)
  {
    v5 = __clz(__rbit32(v4));
    v4 &= ~(1 << v5);
    v6 = (v5 + v3) & (self->_hashTable.m_hashSize - 1);
    if ((*(self->_hashTable.m_keyTable + v6) ^ a3) <= 3)
    {
      if ((*(self->_hashTable.m_keyTable + v6) & 3) == 1)
      {
        return self->_hashTable.m_generationTable[v6];
      }

      return 0;
    }
  }

  return 0;
}

- (BOOL)_commitAddedAllocations:(const void *)a3 count:(unint64_t)a4 removedAllocations:(const void *)a5 count:(unint64_t)a6
{
  v6 = MEMORY[0x1EEE9AC00](self, a2);
  v9 = v8;
  v11 = v10;
  v12 = v7;
  v14 = v13;
  v15 = v6;
  if (v7 > 0x100)
  {
    v43 = malloc_type_malloc(8 * v7, 0x80040B8603338uLL);
    v16 = malloc_type_malloc(8 * v12, 0x80040B8603338uLL);
  }

  else
  {
    v43 = v42;
    v16 = v40;
  }

  v41 = v16;
  if (v9 > 0x100)
  {
    v39 = malloc_type_malloc(8 * v9, 0x80040B8603338uLL);
    v18 = malloc_type_malloc(8 * v9, 0x80040B8603338uLL);
    v16 = v41;
    v17 = v39;
  }

  else
  {
    v17 = v38;
    v39 = v38;
    v18 = &v36;
  }

  v37 = v18;
  v19 = v43;
  v20 = MEMORY[0x1E6974268];
  if (v12)
  {
    v21 = 0;
    v22 = 0;
    do
    {
      v24 = *v14++;
      v23 = v24;
      v25 = *(v24 + *v20);
      v26 = v25 == 1;
      if (v25 == 1)
      {
        v27 = &v19[8 * v21];
      }

      else
      {
        v27 = &v16[8 * v22];
      }

      if (v26)
      {
        ++v21;
      }

      else
      {
        ++v22;
      }

      *v27 = v23;
      --v12;
    }

    while (v12);
    if (v9)
    {
      goto LABEL_17;
    }

LABEL_27:
    v29 = 0;
    v28 = 0;
    goto LABEL_28;
  }

  v22 = 0;
  v21 = 0;
  if (!v9)
  {
    goto LABEL_27;
  }

LABEL_17:
  v28 = 0;
  v29 = 0;
  do
  {
    v31 = *v11++;
    v30 = v31;
    v32 = *(v31 + *v20);
    v33 = v32 == 1;
    if (v32 == 1)
    {
      v34 = &v17[8 * v28];
    }

    else
    {
      v34 = &v18[8 * v29];
    }

    if (v33)
    {
      ++v28;
    }

    else
    {
      ++v29;
    }

    *v34 = v30;
    --v9;
  }

  while (v9);
LABEL_28:
  if (v21 | v28)
  {
    [v15 _commitAddedResources:v19 count:? removedResources:? count:?];
  }

  if (v22 | v29)
  {
    [v15 _commitAddedHeaps:v16 count:v22 removedHeaps:v18 count:v29];
  }

  if (v37 != &v36)
  {
    free(v37);
  }

  if (v39 != v38)
  {
    free(v39);
  }

  if (v41 != v40)
  {
    free(v41);
  }

  if (v43 != v42)
  {
    free(v43);
  }

  return 1;
}

- (BOOL)_commitAddedResources:(const void *)a3 count:(unint64_t)a4 removedResources:(const void *)a5 count:(unint64_t)a6
{
  v8 = a4;
  if (a4 >= 0x101)
  {
    v11 = malloc_type_malloc(4 * a4, 0x100004052888210uLL);
    v20 = v11;
  }

  else
  {
    v11 = v19;
    v20 = v19;
    if (!a4)
    {
      v12 = 0;
      goto LABEL_9;
    }
  }

  v12 = 0;
  do
  {
    if (*(*a3 + 22) != 3)
    {
      *&v11[4 * v12++] = *(*a3 + 20);
    }

    ++a3;
    --v8;
  }

  while (v8);
LABEL_9:
  if (a6 >= 0x101)
  {
    v13 = malloc_type_malloc(8 * a6, 0x100004000313F17uLL);
    v18 = v13;
  }

  else
  {
    v13 = v17;
    v18 = v17;
    if (!a6)
    {
      v14 = 0;
      goto LABEL_17;
    }
  }

  v14 = 0;
  do
  {
    if (*(*a5 + 22) != 3)
    {
      *&v13[8 * v14++] = *(*a5 + 16);
    }

    ++a5;
    --a6;
  }

  while (a6);
LABEL_17:
  updated = IOGPUResourceGroupUpdateResources(self->_groupRef, v12, v11, v14, v13);
  if (v18 != v17)
  {
    free(v18);
  }

  if (v20 != v19)
  {
    free(v20);
  }

  return updated == 0;
}

- (BOOL)_commitAddedHeaps:(const void *)a3 count:(unint64_t)a4 removedHeaps:(const void *)a5 count:(unint64_t)a6
{
  if (a4 >= 0x101)
  {
    v11 = malloc_type_malloc(4 * a4, 0x100004052888210uLL);
    v20 = v11;
  }

  else
  {
    v11 = v19;
    v20 = v19;
    if (!a4)
    {
      goto LABEL_9;
    }
  }

  v12 = 0;
  do
  {
    if (*(*(a3[v12] + 7) + 176) != 3)
    {
      *&v11[4 * v12] = *(*(a3[v12] + 7) + 80);
    }

    ++v12;
  }

  while (a4 != v12);
LABEL_9:
  if (a6 >= 0x101)
  {
    v13 = malloc_type_malloc(8 * a6, 0x100004000313F17uLL);
    v18 = v13;
  }

  else
  {
    v13 = v17;
    v18 = v17;
    if (!a6)
    {
      goto LABEL_17;
    }
  }

  v14 = 0;
  do
  {
    if (*(*(a5[v14] + 7) + 176) != 3)
    {
      *&v13[8 * v14] = *(*(a5[v14] + 7) + 128);
    }

    ++v14;
  }

  while (a6 != v14);
LABEL_17:
  updated = IOGPUResourceGroupUpdateResources(self->_groupRef, a4, v11, a6, v13);
  if (v18 != v17)
  {
    free(v18);
  }

  if (v20 != v19)
  {
    free(v20);
  }

  return updated == 0;
}

- (void)addAllocations:(int *)a1 count:.cold.1(int *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  v3[0] = 67109120;
  v3[1] = v1;
  _os_log_fault_impl(&dword_1CA097000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Unable to add allocation to set, current allocation count: %u", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)addAllocation:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 68);
  v3[0] = 67109120;
  v3[1] = v1;
  _os_log_fault_impl(&dword_1CA097000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Unable to add allocation to set, current resource count: %u", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

@end