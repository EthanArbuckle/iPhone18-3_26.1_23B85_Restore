@interface SGMatchedDetailsReader
- (BOOL)matchAtPhraseIndex:(int64_t)index columnIndex:(int64_t)columnIndex;
- (SGMatchedDetailsReader)initWithMatchedDetails:(id)details;
@end

@implementation SGMatchedDetailsReader

- (SGMatchedDetailsReader)initWithMatchedDetails:(id)details
{
  detailsCopy = details;
  v16.receiver = self;
  v16.super_class = SGMatchedDetailsReader;
  v7 = [(SGMatchedDetailsReader *)&v16 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_matchDetails, details);
    v8->_arrayCount = [detailsCopy length] >> 2;
    v8->_phraseMatches = 0;
    v8->_phraseCount = 0;
    v8->_columnCount = 0;
    bytes = [detailsCopy bytes];
    arrayCount = v8->_arrayCount;
    v11 = arrayCount - 2;
    if (arrayCount < 2)
    {
      columnCount = v8->_columnCount;
      v11 = v8->_arrayCount;
    }

    else
    {
      columnCount = bytes[1];
      v8->_phraseCount = *bytes;
      v8->_columnCount = columnCount;
      v8->_arrayCount = v11;
      v8->_phraseMatches = bytes + 2;
    }

    if (columnCount >= 32)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v8 file:@"SGMatchedDetails.m" lineNumber:73 description:{@"The code currently assumes the column count will be <32. If you need more columns, adjust this class"}];

      v11 = v8->_arrayCount;
    }

    if (v11 != v8->_phraseCount)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:v8 file:@"SGMatchedDetails.m" lineNumber:74 description:{@"Invalid parameter not satisfying: %@", @"_arrayCount == _phraseCount"}];
    }
  }

  return v8;
}

- (BOOL)matchAtPhraseIndex:(int64_t)index columnIndex:(int64_t)columnIndex
{
  if (self->_arrayCount <= index || self->_phraseCount <= index || self->_columnCount <= columnIndex)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    return (self->_phraseMatches[index] >> columnIndex) & 1;
  }

  return v4;
}

@end