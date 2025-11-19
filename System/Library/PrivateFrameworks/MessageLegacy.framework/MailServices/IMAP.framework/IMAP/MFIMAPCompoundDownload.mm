@interface MFIMAPCompoundDownload
- (BOOL)isComplete;
- (id)subdownloads;
- (unint64_t)bytesFetched;
- (unint64_t)expectedLength;
- (unint64_t)lengthOfDataBeforeLineConversion;
- (void)addCommandsToPipeline:(id)a3 withCache:(id)a4;
- (void)addSubdownload:(id)a3;
- (void)dealloc;
- (void)processResults;
- (void)removeSubdownload:(id)a3;
@end

@implementation MFIMAPCompoundDownload

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFIMAPCompoundDownload;
  [(MFIMAPDownload *)&v3 dealloc];
}

- (id)subdownloads
{
  [(MFIMAPCompoundDownload *)self mf_lock];
  if (self->_subdownloads)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:self->_subdownloads];
  }

  else
  {
    v3 = 0;
  }

  [(MFIMAPCompoundDownload *)self mf_unlock];

  return v3;
}

- (void)addSubdownload:(id)a3
{
  v6 = a3;
  [(MFIMAPCompoundDownload *)self mf_lock];
  subdownloads = self->_subdownloads;
  if (subdownloads)
  {
    if ([(NSMutableArray *)subdownloads indexOfObjectIdenticalTo:a3]== 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableArray *)self->_subdownloads addObject:a3];
    }
  }

  else
  {
    self->_subdownloads = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:&v6 count:1];
  }

  [(MFIMAPCompoundDownload *)self mf_unlock];
}

- (void)removeSubdownload:(id)a3
{
  [(MFIMAPCompoundDownload *)self mf_lock];
  [(NSMutableArray *)self->_subdownloads removeObjectIdenticalTo:a3];

  [(MFIMAPCompoundDownload *)self mf_unlock];
}

- (void)addCommandsToPipeline:(id)a3 withCache:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  if (self->_subdownloads && ([a3 isFull] & 1) == 0)
  {
    [(MFIMAPCompoundDownload *)self mf_lock];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    subdownloads = self->_subdownloads;
    v8 = [(NSMutableArray *)subdownloads countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
LABEL_5:
      v11 = 0;
      while (1)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(subdownloads);
        }

        [*(*(&v13 + 1) + 8 * v11) addCommandsToPipeline:a3 withCache:a4];
        if ([a3 isFull])
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [(NSMutableArray *)subdownloads countByEnumeratingWithState:&v13 objects:v17 count:16];
          if (v9)
          {
            goto LABEL_5;
          }

          break;
        }
      }
    }

    [(MFIMAPCompoundDownload *)self mf_unlock];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)processResults
{
  [(MFIMAPCompoundDownload *)self mf_lock];
  [(NSMutableArray *)self->_subdownloads makeObjectsPerformSelector:a2];

  [(MFIMAPCompoundDownload *)self mf_unlock];
}

- (BOOL)isComplete
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_subdownloads)
  {
    [(MFIMAPCompoundDownload *)self mf_lock];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    subdownloads = self->_subdownloads;
    v4 = [(NSMutableArray *)subdownloads countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(subdownloads);
          }

          if (![*(*(&v11 + 1) + 8 * i) isComplete])
          {
            v8 = 0;
            goto LABEL_12;
          }
        }

        v5 = [(NSMutableArray *)subdownloads countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    v8 = 1;
LABEL_12:
    [(MFIMAPCompoundDownload *)self mf_unlock];
  }

  else
  {
    v8 = 1;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (unint64_t)expectedLength
{
  v18 = *MEMORY[0x277D85DE8];
  if (self->_subdownloads)
  {
    [(MFIMAPCompoundDownload *)self mf_lock];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    subdownloads = self->_subdownloads;
    v4 = [(NSMutableArray *)subdownloads countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = *v14;
LABEL_4:
      v8 = 0;
      while (1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(subdownloads);
        }

        v9 = [*(*(&v13 + 1) + 8 * v8) expectedLength];
        v10 = 0xFFFFFFFFLL;
        if (v9 == 0xFFFFFFFFLL)
        {
          break;
        }

        v6 += v9;
        if (v5 == ++v8)
        {
          v5 = [(NSMutableArray *)subdownloads countByEnumeratingWithState:&v13 objects:v17 count:16];
          v10 = v6;
          if (v5)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    else
    {
      v10 = 0;
    }

    [(MFIMAPCompoundDownload *)self mf_unlock];
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (unint64_t)bytesFetched
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_subdownloads)
  {
    [(MFIMAPCompoundDownload *)self mf_lock];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    subdownloads = self->_subdownloads;
    v4 = [(NSMutableArray *)subdownloads countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = *v12;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(subdownloads);
          }

          v6 += [*(*(&v11 + 1) + 8 * i) bytesFetched];
        }

        v5 = [(NSMutableArray *)subdownloads countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }

    else
    {
      v6 = 0;
    }

    [(MFIMAPCompoundDownload *)self mf_unlock];
  }

  else
  {
    v6 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (unint64_t)lengthOfDataBeforeLineConversion
{
  v15 = *MEMORY[0x277D85DE8];
  subdownloads = self->_subdownloads;
  if (subdownloads && (v12 = 0u, v13 = 0u, v10 = 0u, v11 = 0u, (v3 = [(NSMutableArray *)subdownloads countByEnumeratingWithState:&v10 objects:v14 count:16]) != 0))
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(subdownloads);
        }

        v5 += [*(*(&v10 + 1) + 8 * i) lengthOfDataBeforeLineConversion];
      }

      v4 = [(NSMutableArray *)subdownloads countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

@end