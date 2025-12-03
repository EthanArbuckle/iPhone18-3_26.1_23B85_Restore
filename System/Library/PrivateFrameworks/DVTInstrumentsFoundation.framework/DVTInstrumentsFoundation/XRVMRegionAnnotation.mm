@interface XRVMRegionAnnotation
- (XRVMRegionAnnotation)initWithCoder:(id)coder;
- (id)initSamplingRegion:(id)region inTask:(unsigned int)task;
- (int)dispositionForPage:(unint64_t)page;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation XRVMRegionAnnotation

- (id)initSamplingRegion:(id)region inTask:(unsigned int)task
{
  regionCopy = region;
  v39.receiver = self;
  v39.super_class = XRVMRegionAnnotation;
  v7 = [(XRVMRegionAnnotation *)&v39 init];
  if (v7)
  {
    v8 = MEMORY[0x277D85F80];
    v9 = *MEMORY[0x277D85F80];
    v10 = MEMORY[0x277D85FA0];
    if (*MEMORY[0x277D85F80] >= *MEMORY[0x277D85FA0])
    {
      v9 = *MEMORY[0x277D85FA0];
    }

    if (v9 != 4096 && v9 != 0x4000)
    {
      sub_24802E664();
    }

    LODWORD(dispositions_count) = v9;
    if (sysctlbyname("vm.self_region_page_size", 0, 0, &dispositions_count, 4uLL) && *__error() != 2)
    {
      v11 = *MEMORY[0x277D85DF8];
      v12 = *__error();
      v13 = __error();
      v14 = strerror(*v13);
      fprintf(v11, "Error setting sysctl %s: (%d) %s\n", "vm.self_region_page_size", v12, v14);
    }

    location = [regionCopy location];
    v16 = MEMORY[0x277D85F70];
    v17 = MEMORY[0x277D85F88];
    v18 = *MEMORY[0x277D85F70];
    if (*MEMORY[0x277D85F70] >= *MEMORY[0x277D85F88])
    {
      v18 = *MEMORY[0x277D85F88];
    }

    v19 = location & ~v18;
    v7->_baseAddress = v19;
    virtualSize = [regionCopy virtualSize];
    v21 = *v16;
    if (*v16 >= *v17)
    {
      v21 = *v17;
    }

    v22 = (v19 + virtualSize + v21) & ~v21;
    v23 = v22 - v7->_baseAddress;
    v24 = *v8;
    if (*v8 >= *v10)
    {
      v24 = *v10;
    }

    v25 = v23 / v24;
    dispositions_count = v23 / v24;
    v7->_vpages = [regionCopy virtualPages];
    v7->_pageMap = malloc_type_calloc(v25, 4uLL, 0x100004052888210uLL);
    v7->_pageSize = [regionCopy pageSize];
    if (!mach_vm_page_range_query(task, v7->_baseAddress, v22 - v7->_baseAddress, v7->_pageMap, &dispositions_count))
    {
      v26 = dispositions_count;
      if (dispositions_count)
      {
        LODWORD(v27) = 0;
        LODWORD(v28) = 0;
        LODWORD(v29) = 0;
        LODWORD(v30) = 0;
        pageMap = v7->_pageMap;
        do
        {
          v32 = *pageMap++;
          v33 = ((v32 >> 4) & 1) + v28;
          v34 = ((v32 >> 3) & 1) + v29;
          v35 = ((v32 >> 6) & 1) + v27;
          v36 = (v32 & 1) == 0;
          if (v32)
          {
            v30 = (v30 + 1);
          }

          else
          {
            v30 = v30;
          }

          if (v36)
          {
            v29 = v29;
          }

          else
          {
            v29 = v34;
          }

          if (v36)
          {
            v28 = v33;
          }

          else
          {
            v28 = v28;
          }

          if (v36)
          {
            v27 = v27;
          }

          else
          {
            v27 = v35;
          }

          --v26;
        }

        while (v26);
      }

      else
      {
        v30 = 0;
        v29 = 0;
        v28 = 0;
        v27 = 0;
      }

      [regionCopy _setResident:v30 dirty:v29 swapped:v28 speculative:v27];
    }
  }

  return v7;
}

- (int)dispositionForPage:(unint64_t)page
{
  v3 = *MEMORY[0x277D85F70];
  if (*MEMORY[0x277D85F70] >= *MEMORY[0x277D85F88])
  {
    v3 = *MEMORY[0x277D85F88];
  }

  v4 = page & ~v3;
  baseAddress = self->_baseAddress;
  v6 = v4 >= baseAddress;
  v7 = v4 - baseAddress;
  if (v6 && (v8 = v7 / self->_pageSize, v8 < self->_vpages))
  {
    return self->_pageMap[v8];
  }

  else
  {
    return 0;
  }
}

- (void)dealloc
{
  pageMap = self->_pageMap;
  if (pageMap)
  {
    free(pageMap);
  }

  v4.receiver = self;
  v4.super_class = XRVMRegionAnnotation;
  [(XRVMRegionAnnotation *)&v4 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy allowsKeyedCoding])
  {
    vpages = self->_vpages;
    baseAddress = self->_baseAddress;
    v20 = DTXPrimitiveArrayCreateWithTypesAndValues();
    pageMap = self->_pageMap;
    v6 = *pageMap;
    v7 = self->_vpages;
    if (v7 < 2)
    {
      v9 = 1;
    }

    else
    {
      v8 = 1;
      LODWORD(v9) = 1;
      do
      {
        if (v6 == pageMap[v8])
        {
          v9 = (v9 + 1);
        }

        else
        {
          DTXPrimitiveArrayAppendValues();
          pageMap = self->_pageMap;
          v6 = pageMap[v8];
          v7 = self->_vpages;
          v9 = 1;
        }

        ++v8;
      }

      while (v8 < v7);
    }

    v18 = v6;
    v16 = v9;
    DTXPrimitiveArrayAppendValues();
    v19 = 0;
    [coderCopy encodeBytes:DTXPrimitiveArrayGetSerialized() length:0 forKey:{@"dataList", v16, 3, v18, 3, 0, 0}];
    DTXPrimitiveArrayDestroy();
  }

  else
  {
    [coderCopy encodeValueOfObjCType:"Q" at:&self->_baseAddress];
    [coderCopy encodeValueOfObjCType:"I" at:&self->_vpages];
    LODWORD(v20) = 1;
    v10 = self->_pageMap;
    v11 = *v10;
    v19 = *v10;
    v12 = self->_vpages;
    if (v12 >= 2)
    {
      v13 = 1;
      for (i = 1; i < v12; ++i)
      {
        if (v11 == v10[i])
        {
          ++v13;
        }

        else
        {
          [coderCopy encodeValueOfObjCType:"I" at:&v20];
          [coderCopy encodeValueOfObjCType:"I" at:&v19];
          v10 = self->_pageMap;
          v11 = v10[i];
          v19 = v11;
          v12 = self->_vpages;
          v13 = 1;
        }

        LODWORD(v20) = v13;
      }
    }

    [coderCopy encodeValueOfObjCType:"I" at:&v20];
    [coderCopy encodeValueOfObjCType:"I" at:&v19];
    v19 = 0;
    [coderCopy encodeValueOfObjCType:"I" at:&v19];
  }
}

- (XRVMRegionAnnotation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = coderCopy;
  if (self)
  {
    if ([coderCopy allowsKeyedCoding])
    {
      v23 = 0;
      [v5 decodeBytesForKey:@"dataList" returnedLength:&v23];
      DTXPrimitiveArrayReferencingSerialized();
      v6 = CFArrayCreateWithDTXPrimitiveArray();
      self->_baseAddress = [CFArrayGetValueAtIndex(v6 0)];
      v7 = [CFArrayGetValueAtIndex(v6 1)];
      self->_vpages = v7;
      self->_pageMap = malloc_type_calloc(v7, 4uLL, 0x100004052888210uLL);
      Count = CFArrayGetCount(v6);
      if (Count >= 3)
      {
        v9 = 0;
        for (i = 2; i < Count; i += 2)
        {
          v11 = [CFArrayGetValueAtIndex(v6 i)];
          if (v11)
          {
            v12 = v11;
            v13 = [CFArrayGetValueAtIndex(v6 i | 1)];
            pageMap = self->_pageMap;
            v15 = v12 + v9;
            do
            {
              pageMap[v9++] = v13;
              --v12;
            }

            while (v12);
            v9 = v15;
          }
        }
      }

      CFRelease(v6);
    }

    else
    {
      [v5 decodeValueOfObjCType:"Q" at:&self->_baseAddress size:8];
      [v5 decodeValueOfObjCType:"I" at:&self->_vpages size:4];
      self->_pageMap = malloc_type_calloc(self->_vpages, 4uLL, 0x100004052888210uLL);
      v22 = 0;
      LODWORD(v23) = 0;
      [v5 decodeValueOfObjCType:"I" at:&v23 size:4];
      if (v23)
      {
        v16 = 0;
        do
        {
          [v5 decodeValueOfObjCType:"I" at:&v22 size:4];
          if (v23)
          {
            v17 = 0;
            v18 = self->_pageMap;
            v19 = v22;
            do
            {
              v20 = (v16 + 1);
              v18[v16] = v19;
              ++v17;
              LODWORD(v16) = v16 + 1;
            }

            while (v17 < v23);
          }

          else
          {
            v20 = v16;
          }

          [v5 decodeValueOfObjCType:"I" at:&v23 size:4];
          v16 = v20;
        }

        while (v23);
      }
    }
  }

  return self;
}

@end