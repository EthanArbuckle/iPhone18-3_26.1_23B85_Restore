@interface XRNetworkingServiceObservationTuple
- (XRNetworkingServiceObservationTuple)initWithKind:(int)kind count:(unsigned __int8)count;
- (XRNetworkingServiceObservationTuple)initWithKind:(int)kind count:(unsigned __int8)count source:(__CFDictionary *)source indexToKeyMap:(const __CFString *)map;
- (void)dealloc;
@end

@implementation XRNetworkingServiceObservationTuple

- (XRNetworkingServiceObservationTuple)initWithKind:(int)kind count:(unsigned __int8)count
{
  countCopy = count;
  v13.receiver = self;
  v13.super_class = XRNetworkingServiceObservationTuple;
  v6 = [(XRNetworkingServiceObservationTuple *)&v13 init];
  if (!v6)
  {
    return v6;
  }

  if (countCopy >= 0x32)
  {
    sub_24802BEB8();
  }

  else
  {
    if (countCopy)
    {
      goto LABEL_4;
    }

    sub_24802BE34();
  }

  v12 = v14;

LABEL_4:
  v6->_kind = kind;
  v6->_count = countCopy;
  v7 = countCopy;
  v6->data = malloc_type_calloc(8uLL, countCopy, 0x80040B8603338uLL);
  if (countCopy)
  {
    v8 = 0;
    v9 = *MEMORY[0x277CBEEE8];
    v10 = 8 * v7;
    do
    {
      objc_storeStrong(&v6->data[v8 / 8], v9);
      v8 += 8;
    }

    while (v10 != v8);
  }

  return v6;
}

- (XRNetworkingServiceObservationTuple)initWithKind:(int)kind count:(unsigned __int8)count source:(__CFDictionary *)source indexToKeyMap:(const __CFString *)map
{
  countCopy = count;
  v22.receiver = self;
  v22.super_class = XRNetworkingServiceObservationTuple;
  v10 = [(XRNetworkingServiceObservationTuple *)&v22 init];
  if (!v10)
  {
    return v10;
  }

  if (countCopy >= 0x32)
  {
    sub_24802BFC0();
  }

  else
  {
    if (countCopy)
    {
      goto LABEL_4;
    }

    sub_24802BF3C();
  }

  v21 = v23;

LABEL_4:
  v10->_kind = kind;
  v10->_count = countCopy;
  v11 = countCopy;
  v10->data = malloc_type_calloc(8uLL, countCopy, 0x80040B8603338uLL);
  if (countCopy)
  {
    v12 = 0;
    v13 = *MEMORY[0x277CBEEE8];
    do
    {
      v14 = map[v12];
      if (v14)
      {
        v15 = CFDictionaryGetValue(source, *v14);
        v16 = [v15 copy];
        data = v10->data;
        v18 = data[v12];
        data[v12] = v16;
      }

      v19 = v10->data;
      if (!v19[v12])
      {
        objc_storeStrong(&v19[v12], v13);
      }

      ++v12;
    }

    while (v11 != v12);
  }

  return v10;
}

- (void)dealloc
{
  if (self->_count)
  {
    v3 = 0;
    do
    {
      data = self->data;
      v5 = data[v3];
      data[v3] = 0;

      ++v3;
    }

    while (v3 < self->_count);
  }

  free(self->data);
  v6.receiver = self;
  v6.super_class = XRNetworkingServiceObservationTuple;
  [(XRNetworkingServiceObservationTuple *)&v6 dealloc];
}

@end