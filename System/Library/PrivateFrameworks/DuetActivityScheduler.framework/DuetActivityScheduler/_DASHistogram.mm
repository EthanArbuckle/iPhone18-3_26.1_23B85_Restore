@interface _DASHistogram
- (NSDictionary)countsDictionary;
- (_DASHistogram)initWithEvents:(id)events;
@end

@implementation _DASHistogram

- (NSDictionary)countsDictionary
{
  v22 = *MEMORY[0x1E69E9840];
  countsDictionary = self->_countsDictionary;
  if (countsDictionary)
  {
    v4 = [(NSDictionary *)countsDictionary copy];
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = self->_counts;
    v7 = [(NSCountedSet *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSCountedSet countForObject:](self->_counts, "countForObject:", v11, v17)}];
          [dictionary setObject:v12 forKeyedSubscript:v11];
        }

        v8 = [(NSCountedSet *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }

    v13 = [dictionary copy];
    v14 = self->_countsDictionary;
    self->_countsDictionary = v13;

    v4 = [(NSDictionary *)self->_countsDictionary copy];
  }

  v15 = *MEMORY[0x1E69E9840];

  return v4;
}

- (_DASHistogram)initWithEvents:(id)events
{
  v21 = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  v19.receiver = self;
  v19.super_class = _DASHistogram;
  v5 = [(_DASHistogram *)&v19 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AB50] set];
    counts = v5->_counts;
    v5->_counts = v6;

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = eventsCopy;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        v12 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [(NSCountedSet *)v5->_counts addObject:*(*(&v15 + 1) + 8 * v12++), v15];
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v10);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v5;
}

@end