@interface _EARPerformanceMarkers
- (BOOL)isEqual:(id)equal;
- (_EARPerformanceMarkers)initWithCoder:(id)coder;
- (_EARPerformanceMarkers)initWithCorrectPartialResultIndexList:(id)list correctAlignedPartialResultIndexList:(id)indexList tokenDelayInMilliseconds:(id)milliseconds;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _EARPerformanceMarkers

- (_EARPerformanceMarkers)initWithCorrectPartialResultIndexList:(id)list correctAlignedPartialResultIndexList:(id)indexList tokenDelayInMilliseconds:(id)milliseconds
{
  listCopy = list;
  indexListCopy = indexList;
  millisecondsCopy = milliseconds;
  v15.receiver = self;
  v15.super_class = _EARPerformanceMarkers;
  v12 = [(_EARPerformanceMarkers *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_correctPartialResultIndexList, list);
    objc_storeStrong(&v13->_correctAlignedPartialResultIndexList, indexList);
    objc_storeStrong(&v13->_tokenDelayInMilliSeconds, milliseconds);
  }

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_correctPartialResultIndexList forKey:@"correctPartialResultIndexList"];
  [coderCopy encodeObject:self->_correctAlignedPartialResultIndexList forKey:@"correctAlignedPartialResultIndexList"];
  [coderCopy encodeObject:self->_tokenDelayInMilliSeconds forKey:@"tokenDelayInMilliSeconds"];
}

- (_EARPerformanceMarkers)initWithCoder:(id)coder
{
  v25[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = _EARPerformanceMarkers;
  v5 = [(_EARPerformanceMarkers *)&v22 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v25[0] = objc_opt_class();
    v25[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"correctPartialResultIndexList"];
    correctPartialResultIndexList = v5->_correctPartialResultIndexList;
    v5->_correctPartialResultIndexList = v9;

    v11 = MEMORY[0x1E695DFD8];
    v24[0] = objc_opt_class();
    v24[1] = objc_opt_class();
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
    v13 = [v11 setWithArray:v12];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"correctAlignedPartialResultIndexList"];
    correctAlignedPartialResultIndexList = v5->_correctAlignedPartialResultIndexList;
    v5->_correctAlignedPartialResultIndexList = v14;

    v16 = MEMORY[0x1E695DFD8];
    v23[0] = objc_opt_class();
    v23[1] = objc_opt_class();
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
    v18 = [v16 setWithArray:v17];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"tokenDelayInMilliSeconds"];
    tokenDelayInMilliSeconds = v5->_tokenDelayInMilliSeconds;
    v5->_tokenDelayInMilliSeconds = v19;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = equalCopy;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
        correctPartialResultIndexList = self->_correctPartialResultIndexList;
        correctPartialResultIndexList = [(_EARPerformanceMarkers *)v7 correctPartialResultIndexList];
        if (correctPartialResultIndexList != correctPartialResultIndexList)
        {
          v10 = self->_correctPartialResultIndexList;
          correctPartialResultIndexList2 = [(_EARPerformanceMarkers *)v7 correctPartialResultIndexList];
          if (![(NSArray *)v10 isEqualToArray:correctPartialResultIndexList2])
          {
            v12 = 0;
            goto LABEL_19;
          }

          v22 = correctPartialResultIndexList2;
        }

        correctAlignedPartialResultIndexList = self->_correctAlignedPartialResultIndexList;
        correctAlignedPartialResultIndexList = [(_EARPerformanceMarkers *)v7 correctAlignedPartialResultIndexList];
        if (correctAlignedPartialResultIndexList == correctAlignedPartialResultIndexList || (v15 = self->_correctAlignedPartialResultIndexList, [(_EARPerformanceMarkers *)v7 correctAlignedPartialResultIndexList], v3 = objc_claimAutoreleasedReturnValue(), [(NSArray *)v15 isEqualToArray:v3]))
        {
          tokenDelayInMilliSeconds = self->_tokenDelayInMilliSeconds;
          tokenDelayInMilliSeconds = [(_EARPerformanceMarkers *)v7 tokenDelayInMilliSeconds];
          v18 = tokenDelayInMilliSeconds;
          if (tokenDelayInMilliSeconds == tokenDelayInMilliSeconds)
          {

            v12 = 1;
          }

          else
          {
            v19 = self->_tokenDelayInMilliSeconds;
            tokenDelayInMilliSeconds2 = [(_EARPerformanceMarkers *)v7 tokenDelayInMilliSeconds];
            v12 = [(NSArray *)v19 isEqualToArray:tokenDelayInMilliSeconds2];
          }

          if (correctAlignedPartialResultIndexList == correctAlignedPartialResultIndexList)
          {
LABEL_18:

            correctPartialResultIndexList2 = v22;
            if (correctPartialResultIndexList == correctPartialResultIndexList)
            {
LABEL_20:

              goto LABEL_21;
            }

LABEL_19:

            goto LABEL_20;
          }
        }

        else
        {
          v12 = 0;
        }

        goto LABEL_18;
      }
    }

    v12 = 0;
  }

LABEL_21:

  return v12;
}

@end