@interface ENQueryFilter
- (BOOL)shouldIgnoreRPI:(const void *)a3;
- (ENQueryFilter)initWithBufferSize:(unint64_t)a3 hashCount:(unint64_t)a4;
- (void)addPossibleRPI:(const void *)a3;
- (void)dealloc;
@end

@implementation ENQueryFilter

- (ENQueryFilter)initWithBufferSize:(unint64_t)a3 hashCount:(unint64_t)a4
{
  v7 = +[ENLoggingPrefs sharedENLoggingPrefs];
  v8 = [v7 isSensitiveLoggingAllowed];

  if (v8 && gLogCategory_ENQueryFilter <= 50 && (gLogCategory_ENQueryFilter != -1 || _LogCategory_Initialize()))
  {
    [ENQueryFilter initWithBufferSize:hashCount:];
  }

  v16.receiver = self;
  v16.super_class = ENQueryFilter;
  v9 = [(ENQueryFilter *)&v16 init];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_11;
  }

  v9->_bufferSize = a3;
  v11 = malloc_type_calloc(a3, 1uLL, 0x100004077774924uLL);
  v10->_filterBuffer = v11;
  if (!v11)
  {
    if (gLogCategory__ENQueryFilter <= 90 && (gLogCategory__ENQueryFilter != -1 || _LogCategory_Initialize()))
    {
      [ENQueryFilter initWithBufferSize:hashCount:];
    }

    goto LABEL_19;
  }

  v10->_hashCount = a4;
  v12 = malloc_type_malloc(8 * a4, 0x100004000313F17uLL);
  v10->_hashSalts = v12;
  if (!v12)
  {
    if (gLogCategory__ENQueryFilter <= 90 && (gLogCategory__ENQueryFilter != -1 || _LogCategory_Initialize()))
    {
      [ENQueryFilter initWithBufferSize:hashCount:];
    }

LABEL_19:
    v14 = 0;
    goto LABEL_20;
  }

  if (v10->_hashCount)
  {
    v13 = 0;
    do
    {
      v10->_hashSalts[v13++] = arc4random();
    }

    while (v13 < v10->_hashCount);
  }

LABEL_11:
  v14 = v10;
LABEL_20:

  return v14;
}

- (void)dealloc
{
  free(self->_filterBuffer);
  free(self->_hashSalts);
  v3.receiver = self;
  v3.super_class = ENQueryFilter;
  [(ENQueryFilter *)&v3 dealloc];
}

- (void)addPossibleRPI:(const void *)a3
{
  if (self->_hashCount)
  {
    v3 = 0;
    do
    {
      v4 = (*a3 ^ *(a3 + 1) ^ self->_hashSalts[v3]) % (8 * self->_bufferSize);
      self->_filterBuffer[v4 >> 3] |= 1 << (v4 & 7);
      ++v3;
    }

    while (v3 < self->_hashCount);
  }
}

- (BOOL)shouldIgnoreRPI:(const void *)a3
{
  hashCount = self->_hashCount;
  if (!hashCount)
  {
    return 0;
  }

  hashSalts = self->_hashSalts;
  v5 = 8 * self->_bufferSize;
  filterBuffer = self->_filterBuffer;
  v7 = *a3 ^ *(a3 + 1);
  if (((filterBuffer[((v7 ^ *hashSalts) % v5) >> 3] >> (((v7 ^ *hashSalts) % v5) & 7)) & 1) == 0)
  {
    return 1;
  }

  v8 = 1;
  do
  {
    v9 = v8;
    if (hashCount == v8)
    {
      break;
    }

    v10 = ((v7 ^ hashSalts[v8++]) % v5) & 7;
  }

  while (((filterBuffer[((v7 ^ hashSalts[v9]) % v5) >> 3] >> v10) & 1) != 0);
  return v9 < hashCount;
}

- (void)initWithBufferSize:hashCount:.cold.1()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  LogPrintF_safe();
}

@end