@interface XRVMState
+ (id)stateFrom:(id)a3;
+ (void)initialize;
- (XRVMState)init;
- (XRVMState)initWithCoder:(id)a3;
- (id)_annotationForRegion:(id)a3;
- (id)description;
- (id)detailsForRegion:(id)a3;
- (id)regionForAddress:(unint64_t)a3;
- (id)regionsWithOptions:(int)a3;
- (void)_addRegion:(id)a3 annotation:(id)a4 new:(BOOL)a5;
- (void)_annotateRange:(_CSRange)a3 withPath:(id)a4 type:(id)a5;
- (void)_recalculateSizes;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)hydrateWithPreviousState:(id)a3;
- (void)setPageSize:(unint64_t)a3;
@end

@implementation XRVMState

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    MEMORY[0x2821F9670](a1, sel_setVersion_);
  }
}

- (XRVMState)init
{
  v6.receiver = self;
  v6.super_class = XRVMState;
  v2 = [(XRVMState *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    regions = v2->_regions;
    v2->_regions = v3;

    v2->_pageAnnotationsByRegion = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x277CBF150]);
    v2->_machAbsolute = mach_absolute_time();
  }

  return v2;
}

- (void)dealloc
{
  pageAnnotationsByRegion = self->_pageAnnotationsByRegion;
  if (pageAnnotationsByRegion)
  {
    CFRelease(pageAnnotationsByRegion);
  }

  v4.receiver = self;
  v4.super_class = XRVMState;
  [(XRVMState *)&v4 dealloc];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 allowsKeyedCoding])
  {
    [v4 encodeInteger:5 forKey:@"VMStateVersion"];
    [v4 encodeInt64:self->_machAbsolute forKey:@"VMStateMachAbsolute"];
    [v4 encodeInt64:self->_totalSize forKey:@"VMStateTotalSize"];
    [v4 encodeInt64:self->_sharedRegionStart forKey:@"VMStateSharedStart"];
    [v4 encodeInt64:self->_sharedRegionLength forKey:@"VMStateSharedLength"];
    [v4 encodeObject:self->_regions forKey:@"VMStateRegions"];
    Count = CFDictionaryGetCount(self->_pageAnnotationsByRegion);
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:Count];
    [v4 encodeObject:v6 forKey:@"VMStateAnnotationCount"];

    v7 = Count;
    v8 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
    v9 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
    CFDictionaryGetKeysAndValues(self->_pageAnnotationsByRegion, v8, v9);
    v10 = [MEMORY[0x277CBEB18] array];
    v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:Count];
    if (Count)
    {
      v12 = v9;
      v13 = v8;
      do
      {
        v15 = *v13++;
        v14 = v15;
        v16 = *v12++;
        v17 = v16;
        v18 = v14;
        [v10 addObject:v18];
        [v11 addObject:v17];

        --v7;
      }

      while (v7);
    }

    [v4 encodeObject:v10 forKey:@"VMStateAnnotationRegionsKeys"];
    [v4 encodeObject:v11 forKey:@"VMSTateAnnotations"];
    if (v8)
    {
      free(v8);
    }

    if (v9)
    {
      free(v9);
    }

    goto LABEL_18;
  }

  [v4 encodeValueOfObjCType:"Q" at:&self->_machAbsolute];
  [v4 encodeObject:self->_regions];
  [v4 encodeValueOfObjCType:"Q" at:&self->_totalSize];
  [v4 encodeValueOfObjCType:"Q" at:&self->_sharedRegionStart];
  [v4 encodeValueOfObjCType:"Q" at:&self->_sharedRegionLength];
  v22 = CFDictionaryGetCount(self->_pageAnnotationsByRegion);
  [v4 encodeValueOfObjCType:"I" at:&v22];
  v19 = malloc_type_malloc(8 * v22, 0x80040B8603338uLL);
  v20 = malloc_type_malloc(8 * v22, 0x80040B8603338uLL);
  CFDictionaryGetKeysAndValues(self->_pageAnnotationsByRegion, v19, v20);
  if (v22)
  {
    for (i = 0; i < v22; [v4 encodeObject:v20[i++]])
    {
      [v4 encodeObject:v19[i]];
    }
  }

  else if (!v19)
  {
    goto LABEL_16;
  }

  free(v19);
LABEL_16:
  if (v20)
  {
    free(v20);
  }

LABEL_18:
}

- (XRVMState)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self)
  {
    if ([v4 allowsKeyedCoding])
    {
      v6 = [v5 decodeIntegerForKey:@"VMStateVersion"];
    }

    else
    {
      v6 = [v5 versionForClassName:@"XRVMState"];
    }

    v7 = v6;
    self->_pageAnnotationsByRegion = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x277CBF150]);
    if (v7 > 4)
    {
      self->_machAbsolute = [v5 decodeInt64ForKey:@"VMStateMachAbsolute"];
      self->_totalSize = [v5 decodeInt64ForKey:@"VMStateTotalSize"];
      self->_sharedRegionStart = [v5 decodeInt64ForKey:@"VMStateSharedStart"];
      self->_sharedRegionLength = [v5 decodeInt64ForKey:@"VMStateSharedLength"];
      v10 = MEMORY[0x277CBEB98];
      v11 = objc_opt_class();
      v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
      v13 = [v5 decodeObjectOfClasses:v12 forKey:@"VMStateRegions"];
      v14 = [v13 mutableCopy];
      regions = self->_regions;
      self->_regions = v14;

      v16 = MEMORY[0x277CBEB98];
      v17 = objc_opt_class();
      v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
      v19 = [v5 decodeObjectOfClasses:v18 forKey:@"VMStateAnnotationRegionsKeys"];

      v20 = MEMORY[0x277CBEB98];
      v21 = objc_opt_class();
      v22 = [v20 setWithObjects:{v21, objc_opt_class(), 0}];
      v23 = [v5 decodeObjectOfClasses:v22 forKey:@"VMSTateAnnotations"];

      if ([v23 count])
      {
        v24 = 0;
        v25 = 1;
        do
        {
          pageAnnotationsByRegion = self->_pageAnnotationsByRegion;
          v27 = [v19 objectAtIndexedSubscript:v24];
          v28 = [v23 objectAtIndexedSubscript:v24];
          CFDictionarySetValue(pageAnnotationsByRegion, v27, v28);

          v24 = v25;
        }

        while ([v23 count] > v25++);
      }
    }

    else
    {
      v37 = 0;
      [v5 decodeValueOfObjCType:"Q" at:&v37 size:8];
      if (v7 > 1)
      {
        v8 = v37;
        v9 = 8;
        if (v7 == 2)
        {
          v9 = 16;
        }
      }

      else
      {
        v8 = (1000 * v37);
        v9 = 16;
      }

      *(&self->super.isa + v9) = v8;
      v30 = [v5 decodeObject];
      v31 = self->_regions;
      self->_regions = v30;

      if (v7 != 4)
      {
        v36 = 0;
        [v5 decodeValueOfObjCType:"I" at:&v36 size:4];
        [v5 decodeValueOfObjCType:"I" at:&v36 size:4];
        [v5 decodeValueOfObjCType:"I" at:&v36 size:4];
      }

      [v5 decodeValueOfObjCType:"Q" at:&self->_totalSize size:8];
      [v5 decodeValueOfObjCType:"Q" at:&self->_sharedRegionStart size:8];
      [v5 decodeValueOfObjCType:"Q" at:&self->_sharedRegionLength size:8];
      v36 = 0;
      [v5 decodeValueOfObjCType:"I" at:&v36 size:4];
      if (v36)
      {
        for (i = 0; i < v36; ++i)
        {
          v33 = [v5 decodeObject];
          v34 = [v5 decodeObject];
          CFDictionarySetValue(self->_pageAnnotationsByRegion, v33, v34);
        }
      }
    }

    [(XRVMState *)self _recalculateSizes];
  }

  return self;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = XRVMState;
  v4 = [(XRVMState *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@\nRegions: %@", v4, self->_regions];

  return v5;
}

+ (id)stateFrom:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(XRVMState);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(XRVMState *)v4 _addRegion:*(*(&v12 + 1) + 8 * i) annotation:0 new:1, v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)_recalculateSizes
{
  v17 = *MEMORY[0x277D85DE8];
  *&self->_residentSize = 0u;
  *&self->_dirtySize = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_regions;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v9 = [v8 path];
          v10 = [v9 isEqualToString:@"unused shared library"];

          if ((v10 & 1) == 0 && ([v8 isSubmapRegion] & 1) == 0 && (objc_msgSend(v8, "isNullRegion") & 1) == 0)
          {
            self->_totalSize += [v8 virtualSize];
            self->_residentSize += [v8 residentSize];
            self->_dirtySize += [v8 dirtySize];
            self->_swapSize += [v8 swappedSize];
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)detailsForRegion:(id)a3
{
  if (a3)
  {
    v4 = CFDictionaryGetValue(self->_pageAnnotationsByRegion, a3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setPageSize:(unint64_t)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_regions;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
        if ([v10 pageSize] == a3)
        {

          goto LABEL_11;
        }

        [v10 setPageSize:a3];
        v11 = [(XRVMState *)self _annotationForRegion:v10];
        [v11 setPageSize:a3];
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  [(XRVMState *)self _recalculateSizes];
LABEL_11:
  v12 = *MEMORY[0x277D85DE8];
}

- (void)hydrateWithPreviousState:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v16 = self;
    v6 = self->_regions;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        v10 = 0;
        do
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v17 + 1) + 8 * v10);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(NSMutableArray *)v5 addObject:v11];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v12 = [v4 regionForAddress:{objc_msgSend(v11, "unsignedLongLongValue")}];
              if (v12)
              {
                [(NSMutableArray *)v5 addObject:v12];
                v13 = [v4 _annotationForRegion:v12];
                if (v13)
                {
                  CFDictionarySetValue(v16->_pageAnnotationsByRegion, v12, v13);
                }
              }
            }
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }

    regions = v16->_regions;
    v16->_regions = v5;

    [(XRVMState *)v16 _recalculateSizes];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)regionForAddress:(unint64_t)a3
{
  v4 = [XRVMRegion regionIndexInArray:self->_regions forAddress:a3];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_regions objectAtIndex:v4];
  }

  return v5;
}

- (void)_addRegion:(id)a3 annotation:(id)a4 new:(BOOL)a5
{
  v5 = a5;
  key = a3;
  v8 = a4;
  if (key)
  {
    if (v5)
    {
      v9 = key;
      if (v8)
      {
        CFDictionarySetValue(self->_pageAnnotationsByRegion, key, v8);
        v9 = key;
      }

      [(NSMutableArray *)self->_regions addObject:v9];
    }

    else
    {
      regions = self->_regions;
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(key, "location")}];
      [(NSMutableArray *)regions addObject:v11];
    }
  }
}

- (id)_annotationForRegion:(id)a3
{
  if (a3)
  {
    v4 = CFDictionaryGetValue(self->_pageAnnotationsByRegion, a3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_annotateRange:(_CSRange)a3 withPath:(id)a4 type:(id)a5
{
  var1 = a3.var1;
  var0 = a3.var0;
  v25 = a4;
  v9 = a5;
  v10 = [XRVMRegion regionIndexInArray:self->_regions forAddress:var0];
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = v10;
    v12 = [(NSMutableArray *)self->_regions objectAtIndex:v10];
    v13 = [v12 location];
    v14 = var0 - v13;
    if (var0 > v13)
    {
      v15 = v13;
      v16 = [v12 copy];
      [v16 setAddress:v15 size:v14];
      [(NSMutableArray *)self->_regions insertObject:v16 atIndex:v11++];
    }

    v17 = var0 + var1;
    v18 = [XRVMRegion regionIndexInArray:self->_regions forAddress:var0 + var1];
    if (v18 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v19 = v18;
      v20 = [(NSMutableArray *)self->_regions objectAtIndex:v18];
      v21 = [v20 location];
      v22 = [v20 virtualSize];
      if (v22 + v21 > v17)
      {
        v24 = v22 + v21 - v17;
        if (v20 == v12)
        {
          v23 = [v20 copy];
          [(NSMutableArray *)self->_regions insertObject:v23 atIndex:v11 + 1];
        }

        else
        {
          v23 = v20;
          --v19;
        }

        [v23 setAddress:var0 + var1 size:{v24, v24}];
      }

      if (v19 > v11)
      {
        [(NSMutableArray *)self->_regions removeObjectsInRange:v11 + 1, v19 - v11];
      }
    }

    [v12 setAddress:var0 size:var1];
    [v12 setPath:v25 type:v9];
  }
}

- (id)regionsWithOptions:(int)a3
{
  v20 = a3;
  v27 = *MEMORY[0x277D85DE8];
  v21 = [MEMORY[0x277CBEB18] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = self->_regions;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v5)
  {
    v8 = 0;
LABEL_32:

    goto LABEL_33;
  }

  v6 = v5;
  v7 = 0;
  v8 = 0;
  v9 = *v23;
  do
  {
    v10 = 0;
    do
    {
      v11 = v7;
      if (*v23 != v9)
      {
        objc_enumerationMutation(v4);
      }

      v12 = *(*(&v22 + 1) + 8 * v10);
      v13 = [v12 path];
      v14 = [v13 isEqualToString:@"unused shared library"];

      if (v14)
      {
        if (v11)
        {
          [v21 addObject:v11];
        }

        v7 = 0;
      }

      else if ((v20 & 1) != 0 && v11 && [v12 typeMatches:v11] && objc_msgSend(v12, "isAdjacentTo:", v11))
      {
        if (v8)
        {
          [v8 addObject:v12];
        }

        else
        {
          v8 = [MEMORY[0x277CBEB18] arrayWithObjects:{v11, v12, 0}];
        }

        v7 = v12;
      }

      else
      {
        if (v8)
        {
          v15 = [[XRVMCoalescedRegion alloc] initWithRegions:v8 groupName:0];
          [v21 addObject:v15];
        }

        else if (v11)
        {
          [v21 addObject:v11];
        }

        v7 = v12;
        v8 = 0;
      }

      ++v10;
    }

    while (v6 != v10);
    v16 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
    v6 = v16;
  }

  while (v16);

  if (v8)
  {
    v17 = [[XRVMCoalescedRegion alloc] initWithRegions:v8 groupName:0];
    [v21 addObject:v17];

LABEL_31:
    v4 = v7;
    goto LABEL_32;
  }

  if (v7)
  {
    [v21 addObject:v7];
    v8 = 0;
    goto LABEL_31;
  }

  v8 = 0;
LABEL_33:

  v18 = *MEMORY[0x277D85DE8];

  return v21;
}

@end