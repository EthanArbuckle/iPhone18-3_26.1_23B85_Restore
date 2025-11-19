@interface _EARPerformanceMarkers
- (BOOL)isEqual:(id)a3;
- (_EARPerformanceMarkers)initWithCoder:(id)a3;
- (_EARPerformanceMarkers)initWithCorrectPartialResultIndexList:(id)a3 correctAlignedPartialResultIndexList:(id)a4 tokenDelayInMilliseconds:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _EARPerformanceMarkers

- (_EARPerformanceMarkers)initWithCorrectPartialResultIndexList:(id)a3 correctAlignedPartialResultIndexList:(id)a4 tokenDelayInMilliseconds:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = _EARPerformanceMarkers;
  v12 = [(_EARPerformanceMarkers *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_correctPartialResultIndexList, a3);
    objc_storeStrong(&v13->_correctAlignedPartialResultIndexList, a4);
    objc_storeStrong(&v13->_tokenDelayInMilliSeconds, a5);
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_correctPartialResultIndexList forKey:@"correctPartialResultIndexList"];
  [v4 encodeObject:self->_correctAlignedPartialResultIndexList forKey:@"correctAlignedPartialResultIndexList"];
  [v4 encodeObject:self->_tokenDelayInMilliSeconds forKey:@"tokenDelayInMilliSeconds"];
}

- (_EARPerformanceMarkers)initWithCoder:(id)a3
{
  v25[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
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
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"correctPartialResultIndexList"];
    correctPartialResultIndexList = v5->_correctPartialResultIndexList;
    v5->_correctPartialResultIndexList = v9;

    v11 = MEMORY[0x1E695DFD8];
    v24[0] = objc_opt_class();
    v24[1] = objc_opt_class();
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
    v13 = [v11 setWithArray:v12];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"correctAlignedPartialResultIndexList"];
    correctAlignedPartialResultIndexList = v5->_correctAlignedPartialResultIndexList;
    v5->_correctAlignedPartialResultIndexList = v14;

    v16 = MEMORY[0x1E695DFD8];
    v23[0] = objc_opt_class();
    v23[1] = objc_opt_class();
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
    v18 = [v16 setWithArray:v17];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"tokenDelayInMilliSeconds"];
    tokenDelayInMilliSeconds = v5->_tokenDelayInMilliSeconds;
    v5->_tokenDelayInMilliSeconds = v19;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5 == self)
  {
    v12 = 1;
  }

  else
  {
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
        correctPartialResultIndexList = self->_correctPartialResultIndexList;
        v9 = [(_EARPerformanceMarkers *)v7 correctPartialResultIndexList];
        if (correctPartialResultIndexList != v9)
        {
          v10 = self->_correctPartialResultIndexList;
          v11 = [(_EARPerformanceMarkers *)v7 correctPartialResultIndexList];
          if (![(NSArray *)v10 isEqualToArray:v11])
          {
            v12 = 0;
            goto LABEL_19;
          }

          v22 = v11;
        }

        correctAlignedPartialResultIndexList = self->_correctAlignedPartialResultIndexList;
        v14 = [(_EARPerformanceMarkers *)v7 correctAlignedPartialResultIndexList];
        if (correctAlignedPartialResultIndexList == v14 || (v15 = self->_correctAlignedPartialResultIndexList, [(_EARPerformanceMarkers *)v7 correctAlignedPartialResultIndexList], v3 = objc_claimAutoreleasedReturnValue(), [(NSArray *)v15 isEqualToArray:v3]))
        {
          tokenDelayInMilliSeconds = self->_tokenDelayInMilliSeconds;
          v17 = [(_EARPerformanceMarkers *)v7 tokenDelayInMilliSeconds];
          v18 = v17;
          if (tokenDelayInMilliSeconds == v17)
          {

            v12 = 1;
          }

          else
          {
            v19 = self->_tokenDelayInMilliSeconds;
            v20 = [(_EARPerformanceMarkers *)v7 tokenDelayInMilliSeconds];
            v12 = [(NSArray *)v19 isEqualToArray:v20];
          }

          if (correctAlignedPartialResultIndexList == v14)
          {
LABEL_18:

            v11 = v22;
            if (correctPartialResultIndexList == v9)
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