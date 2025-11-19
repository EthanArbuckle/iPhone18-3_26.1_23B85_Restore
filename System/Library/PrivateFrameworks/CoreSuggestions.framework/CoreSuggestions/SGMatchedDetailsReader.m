@interface SGMatchedDetailsReader
- (BOOL)matchAtPhraseIndex:(int64_t)a3 columnIndex:(int64_t)a4;
- (SGMatchedDetailsReader)initWithMatchedDetails:(id)a3;
@end

@implementation SGMatchedDetailsReader

- (SGMatchedDetailsReader)initWithMatchedDetails:(id)a3
{
  v6 = a3;
  v16.receiver = self;
  v16.super_class = SGMatchedDetailsReader;
  v7 = [(SGMatchedDetailsReader *)&v16 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_matchDetails, a3);
    v8->_arrayCount = [v6 length] >> 2;
    v8->_phraseMatches = 0;
    v8->_phraseCount = 0;
    v8->_columnCount = 0;
    v9 = [v6 bytes];
    arrayCount = v8->_arrayCount;
    v11 = arrayCount - 2;
    if (arrayCount < 2)
    {
      columnCount = v8->_columnCount;
      v11 = v8->_arrayCount;
    }

    else
    {
      columnCount = v9[1];
      v8->_phraseCount = *v9;
      v8->_columnCount = columnCount;
      v8->_arrayCount = v11;
      v8->_phraseMatches = v9 + 2;
    }

    if (columnCount >= 32)
    {
      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      [v14 handleFailureInMethod:a2 object:v8 file:@"SGMatchedDetails.m" lineNumber:73 description:{@"The code currently assumes the column count will be <32. If you need more columns, adjust this class"}];

      v11 = v8->_arrayCount;
    }

    if (v11 != v8->_phraseCount)
    {
      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      [v15 handleFailureInMethod:a2 object:v8 file:@"SGMatchedDetails.m" lineNumber:74 description:{@"Invalid parameter not satisfying: %@", @"_arrayCount == _phraseCount"}];
    }
  }

  return v8;
}

- (BOOL)matchAtPhraseIndex:(int64_t)a3 columnIndex:(int64_t)a4
{
  if (self->_arrayCount <= a3 || self->_phraseCount <= a3 || self->_columnCount <= a4)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    return (self->_phraseMatches[a3] >> a4) & 1;
  }

  return v4;
}

@end