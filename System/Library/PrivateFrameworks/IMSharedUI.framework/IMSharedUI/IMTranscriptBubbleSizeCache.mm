@interface IMTranscriptBubbleSizeCache
- (CGSize)sizeForMaximumWidth:(double)a3;
- (IMTranscriptBubbleSizeCache)init;
- (id)_cacheEntryForMaximumWidth:(double)a3 getEffectiveIndex:(unint64_t *)a4;
- (void)_insertCacheEntry:(id)a3;
- (void)setSize:(CGSize)a3 forMaximumWidth:(double)a4;
@end

@implementation IMTranscriptBubbleSizeCache

- (IMTranscriptBubbleSizeCache)init
{
  v8.receiver = self;
  v8.super_class = IMTranscriptBubbleSizeCache;
  v4 = [(IMTranscriptBubbleSizeCache *)&v8 init];
  if (v4)
  {
    v5 = objc_msgSend_array(MEMORY[0x277CBEB18], v2, v3);
    sizeCache = v4->_sizeCache;
    v4->_sizeCache = v5;
  }

  return v4;
}

- (CGSize)sizeForMaximumWidth:(double)a3
{
  v13 = 0;
  v3 = objc_msgSend__cacheEntryForMaximumWidth_getEffectiveIndex_(self, a2, &v13, a3);
  v6 = v3;
  if (v3)
  {
    objc_msgSend_size(v3, v4, v5);
    v8 = v7;
    v10 = v9;
  }

  else
  {
    v8 = *MEMORY[0x277CBF3A8];
    v10 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)setSize:(CGSize)a3 forMaximumWidth:(double)a4
{
  height = a3.height;
  width = a3.width;
  v8 = [_IMTranscriptBubbleSizeCacheEntry alloc];
  v12 = objc_msgSend_initWithSize_maximumWidth_(v8, v9, v10, width, height, a4);
  objc_msgSend__insertCacheEntry_(self, v11, v12);
}

- (void)_insertCacheEntry:(id)a3
{
  v4 = a3;
  if (objc_msgSend_count(self->_sizeCache, v5, v6))
  {
    v13 = 0;
    objc_msgSend_minimumWidth(v4, v7, v8);
    v11 = objc_msgSend__cacheEntryForMaximumWidth_getEffectiveIndex_(self, v9, &v13);
    sizeCache = self->_sizeCache;
    if (v11)
    {
      objc_msgSend_replaceObjectAtIndex_withObject_(sizeCache, v10, v13, v4);
    }

    else
    {
      objc_msgSend_insertObject_atIndex_(sizeCache, v10, v4, v13);
    }
  }

  else
  {
    objc_msgSend_addObject_(self->_sizeCache, v7, v4);
  }
}

- (id)_cacheEntryForMaximumWidth:(double)a3 getEffectiveIndex:(unint64_t *)a4
{
  v7 = objc_msgSend_count(self->_sizeCache, a2, a4);
  if (v7)
  {
    v9 = v7;
    v10 = 0;
    while (1)
    {
      v11 = objc_msgSend_objectAtIndex_(self->_sizeCache, v8, (v9 + v10) >> 1);
      objc_msgSend_minimumWidth(v11, v12, v13);
      if (v16 <= a3)
      {
        objc_msgSend_maximumWidth(v11, v14, v15);
        if (v17 >= a3)
        {
          v10 = (v9 + v10) >> 1;
          goto LABEL_12;
        }

        v10 = ((v9 + v10) >> 1) + 1;
      }

      else
      {
        v9 = (v9 + v10) >> 1;
      }

      if (v10 >= v9)
      {
        goto LABEL_10;
      }
    }
  }

  v10 = 0;
LABEL_10:
  v11 = 0;
LABEL_12:
  *a4 = v10;

  return v11;
}

@end