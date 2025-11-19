@interface CADEventOccurrenceSet
- ($44047BC61FEF0381D9BD0B01E075E58F)infoForDB:(int)a3;
- (void)clear;
- (void)dealloc;
- (void)enumerateDatabases:(id)a3;
- (void)enumerateOccurrenceRowIDsInDatabase:(int)a3 block:(id)a4;
@end

@implementation CADEventOccurrenceSet

- (void)dealloc
{
  [(CADEventOccurrenceSet *)self clear];
  v3.receiver = self;
  v3.super_class = CADEventOccurrenceSet;
  [(CADEventOccurrenceSet *)&v3 dealloc];
}

- (void)clear
{
  if (self->_dbCount >= 1)
  {
    v3 = 0;
    do
    {
      Count = CFDictionaryGetCount(self->_dbs[v3].var1);
      v5 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
      CFDictionaryGetKeysAndValues(self->_dbs[v3].var1, 0, v5);
      CFRelease(self->_dbs[v3].var1);
      for (i = v5; Count; --Count)
      {
        CADPackedArrayFree(i++);
      }

      free(v5);
      ++v3;
    }

    while (v3 < self->_dbCount);
  }

  *&self->_dbCount = 0;
  free(self->_dbs);
  self->_dbs = 0;
  self->_hasInvalidDates = 0;
}

- ($44047BC61FEF0381D9BD0B01E075E58F)infoForDB:(int)a3
{
  dbCount = self->_dbCount;
  if (dbCount < 1)
  {
LABEL_5:
    dbCapacity = self->_dbCapacity;
    if (dbCount >= dbCapacity)
    {
      if (dbCapacity)
      {
        v10 = 2 * dbCapacity;
      }

      else
      {
        v10 = 2;
      }

      self->_dbCapacity = v10;
      dbs = malloc_type_realloc(self->_dbs, 16 * v10, 0x1020040D5A9D86FuLL);
      if (!dbs)
      {
        [(CADEventOccurrenceSet *)self clear];
        return 0;
      }

      self->_dbs = dbs;
    }

    else
    {
      dbs = self->_dbs;
    }

    dbs[dbCount].var0 = a3;
    self->_dbs[dbCount].var1 = CFDictionaryCreateMutable(0, 0, 0, 0);
    ++self->_dbCount;
    return &self->_dbs[dbCount];
  }

  else
  {
    result = self->_dbs;
    v7 = dbCount;
    while (result->var0 != a3)
    {
      ++result;
      if (!--v7)
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

- (void)enumerateDatabases:(id)a3
{
  v10 = a3;
  Mutable = CFArrayCreateMutable(0, self->_dbCount, 0);
  if (self->_dbCount >= 1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      CFArrayAppendValue(Mutable, self->_dbs[v5].var0);
      ++v6;
      dbCount = self->_dbCount;
      ++v5;
    }

    while (v6 < dbCount);
    if (dbCount >= 1)
    {
      for (i = 0; i != dbCount; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Mutable, i);
        v10[2](v10, ValueAtIndex);
      }
    }
  }

  CFRelease(Mutable);
}

- (void)enumerateOccurrenceRowIDsInDatabase:(int)a3 block:(id)a4
{
  v6 = a4;
  dbCount = self->_dbCount;
  if (dbCount >= 1)
  {
    p_var1 = &self->_dbs->var1;
    while (*(p_var1 - 2) != a3)
    {
      p_var1 += 2;
      if (!--dbCount)
      {
        goto LABEL_11;
      }
    }

    v9 = *p_var1;
    if (*p_var1)
    {
      v14 = v6;
      Count = CFDictionaryGetCount(v9);
      v11 = malloc_type_malloc(8 * Count, 0x100004000313F17uLL);
      CFDictionaryGetKeysAndValues(v9, v11, 0);
      if (Count >= 1)
      {
        v12 = v11;
        do
        {
          v13 = *v12++;
          v14[2](v14, v13);
          --Count;
        }

        while (Count);
      }

      free(v11);
      v6 = v14;
    }
  }

LABEL_11:
}

@end