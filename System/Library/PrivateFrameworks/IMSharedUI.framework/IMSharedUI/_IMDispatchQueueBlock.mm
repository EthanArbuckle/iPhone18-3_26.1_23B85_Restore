@interface _IMDispatchQueueBlock
- (_IMDispatchQueueBlock)initWithBlock:(id)block key:(id)key priority:(int64_t)priority fifo:(unint64_t)fifo;
- (id)description;
- (int64_t)compare:(id)compare;
@end

@implementation _IMDispatchQueueBlock

- (id)description
{
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_msgSend_block(self, a2, v2);
  v8 = objc_msgSend_key(self, v6, v7);
  v11 = objc_msgSend_priority(self, v9, v10);
  v14 = objc_msgSend_fifo(self, v12, v13);
  v19.receiver = self;
  v19.super_class = _IMDispatchQueueBlock;
  v15 = [(_IMDispatchQueueBlock *)&v19 description];
  v17 = objc_msgSend_stringWithFormat_(v4, v16, @"[_IMDispatchQueueBlock block:%@ key:%@ priority:%ld fifo:%ld %@]", v5, v8, v11, v14, v15);

  return v17;
}

- (_IMDispatchQueueBlock)initWithBlock:(id)block key:(id)key priority:(int64_t)priority fifo:(unint64_t)fifo
{
  blockCopy = block;
  keyCopy = key;
  v19.receiver = self;
  v19.super_class = _IMDispatchQueueBlock;
  v12 = [(_IMDispatchQueueBlock *)&v19 init];
  v14 = v12;
  if (v12)
  {
    objc_msgSend_setBlock_(v12, v13, blockCopy);
    objc_msgSend_setKey_(v14, v15, keyCopy);
    objc_msgSend_setPriority_(v14, v16, priority);
    objc_msgSend_setFIFO_(v14, v17, fifo);
  }

  return v14;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  v7 = objc_msgSend_priority(self, v5, v6);
  v10 = objc_msgSend_priority(compareCopy, v8, v9);
  if (v7 <= v10)
  {
    if (v7 < v10)
    {
      v13 = 1;
    }

    else
    {
      v14 = objc_msgSend_fifo(self, v11, v12);
      v17 = objc_msgSend_fifo(compareCopy, v15, v16);
      if (v14 >= v17)
      {
        v18 = 0;
      }

      else
      {
        v18 = -1;
      }

      if (v14 > v17)
      {
        v13 = 1;
      }

      else
      {
        v13 = v18;
      }
    }
  }

  else
  {
    v13 = -1;
  }

  return v13;
}

@end