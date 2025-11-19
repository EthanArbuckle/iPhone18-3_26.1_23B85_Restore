@interface DSNSURLBatchEnumerator
- (DSNSURLBatchEnumerator)initWithURLs:(id)a3 targets:(id)a4 batchSize:(unint64_t)a5;
- (id)nextBatch;
@end

@implementation DSNSURLBatchEnumerator

- (DSNSURLBatchEnumerator)initWithURLs:(id)a3 targets:(id)a4 batchSize:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = DSNSURLBatchEnumerator;
  v11 = [(DSNSURLBatchEnumerator *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_index = 0;
    v11->_batchSize = a5;
    objc_storeStrong(&v11->_urls, a3);
    objc_storeStrong(&v12->_targetNames, a4);
  }

  return v12;
}

- (id)nextBatch
{
  v17[2] = *MEMORY[0x1E69E9840];
  index = self->_index;
  if (index >= [(NSArray *)self->_urls count])
  {
    v13 = 0;
  }

  else
  {
    v4 = [(NSArray *)self->_urls count];
    v5 = self->_index;
    if (v4 - v5 >= self->_batchSize)
    {
      batchSize = self->_batchSize;
    }

    else
    {
      batchSize = v4 - v5;
    }

    urls = self->_urls;
    v8 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:?];
    v9 = [(NSArray *)urls objectsAtIndexes:v8];

    targetNames = self->_targetNames;
    v11 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{self->_index, batchSize}];
    v12 = [(NSArray *)targetNames objectsAtIndexes:v11];

    self->_index += batchSize;
    v16[0] = @"SourceURLs";
    v16[1] = @"TargetNames";
    v17[0] = v9;
    v17[1] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

@end