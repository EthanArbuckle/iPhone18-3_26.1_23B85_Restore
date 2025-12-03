@interface NSEnumerator(MSVSequence)
+ (_MSVConcatArrayEnumerator)msv_concatArrays:()MSVSequence;
- (_MSVLazyFilterEnumerator)msv_lazyFilter:()MSVSequence;
- (double)msv_reduceIntoCGFloat:()MSVSequence by:;
- (double)msv_reduceIntoDouble:()MSVSequence by:;
- (float)msv_reduceIntoFloat:()MSVSequence by:;
- (id)msv_compactMap:()MSVSequence;
- (id)msv_filter:()MSVSequence;
- (id)msv_firstWhere:()MSVSequence;
- (id)msv_flatMap:()MSVSequence;
- (id)msv_map:()MSVSequence;
- (id)msv_reduceIntoObject:()MSVSequence by:;
- (uint64_t)msv_reduceIntoBool:()MSVSequence by:;
- (uint64_t)msv_reduceIntoInt32:()MSVSequence by:;
- (uint64_t)msv_reduceIntoInt64:()MSVSequence by:;
- (uint64_t)msv_reduceIntoInt:()MSVSequence by:;
- (uint64_t)msv_reduceIntoUInt32:()MSVSequence by:;
- (uint64_t)msv_reduceIntoUInt64:()MSVSequence by:;
- (uint64_t)msv_reduceIntoUInt:()MSVSequence by:;
@end

@implementation NSEnumerator(MSVSequence)

- (id)msv_reduceIntoObject:()MSVSequence by:
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  selfCopy = self;
  v10 = [selfCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
  v11 = v8;
  if (v10)
  {
    v12 = v10;
    v13 = *v19;
    v11 = v8;
    do
    {
      v14 = 0;
      v15 = v11;
      do
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(selfCopy);
        }

        v11 = v7[2](v7, v15, *(*(&v18 + 1) + 8 * v14));

        ++v14;
        v15 = v11;
      }

      while (v12 != v14);
      v12 = [selfCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  v16 = *MEMORY[0x1E69E9840];

  return v11;
}

- (uint64_t)msv_reduceIntoUInt64:()MSVSequence by:
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  selfCopy = self;
  v8 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(selfCopy);
        }

        a3 = v6[2](v6, a3, *(*(&v14 + 1) + 8 * v11++));
      }

      while (v9 != v11);
      v9 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x1E69E9840];
  return a3;
}

- (uint64_t)msv_reduceIntoUInt32:()MSVSequence by:
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  selfCopy = self;
  v8 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(selfCopy);
        }

        a3 = v6[2](v6, a3, *(*(&v14 + 1) + 8 * v11++));
      }

      while (v9 != v11);
      v9 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x1E69E9840];
  return a3;
}

- (uint64_t)msv_reduceIntoUInt:()MSVSequence by:
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  selfCopy = self;
  v8 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(selfCopy);
        }

        a3 = v6[2](v6, a3, *(*(&v14 + 1) + 8 * v11++));
      }

      while (v9 != v11);
      v9 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x1E69E9840];
  return a3;
}

- (uint64_t)msv_reduceIntoInt64:()MSVSequence by:
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  selfCopy = self;
  v8 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(selfCopy);
        }

        a3 = v6[2](v6, a3, *(*(&v14 + 1) + 8 * v11++));
      }

      while (v9 != v11);
      v9 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x1E69E9840];
  return a3;
}

- (uint64_t)msv_reduceIntoInt32:()MSVSequence by:
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  selfCopy = self;
  v8 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(selfCopy);
        }

        a3 = v6[2](v6, a3, *(*(&v14 + 1) + 8 * v11++));
      }

      while (v9 != v11);
      v9 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x1E69E9840];
  return a3;
}

- (uint64_t)msv_reduceIntoInt:()MSVSequence by:
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  selfCopy = self;
  v8 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(selfCopy);
        }

        a3 = v6[2](v6, a3, *(*(&v14 + 1) + 8 * v11++));
      }

      while (v9 != v11);
      v9 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x1E69E9840];
  return a3;
}

- (double)msv_reduceIntoDouble:()MSVSequence by:
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  selfCopy = self;
  v8 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(selfCopy);
        }

        a2 = v6[2](v6, *(*(&v14 + 1) + 8 * v11++), a2);
      }

      while (v9 != v11);
      v9 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x1E69E9840];
  return a2;
}

- (double)msv_reduceIntoCGFloat:()MSVSequence by:
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  selfCopy = self;
  v8 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(selfCopy);
        }

        a2 = v6[2](v6, *(*(&v14 + 1) + 8 * v11++), a2);
      }

      while (v9 != v11);
      v9 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x1E69E9840];
  return a2;
}

- (float)msv_reduceIntoFloat:()MSVSequence by:
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  selfCopy = self;
  v8 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(selfCopy);
        }

        a2 = v6[2](v6, *(*(&v14 + 1) + 8 * v11++), a2);
      }

      while (v9 != v11);
      v9 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x1E69E9840];
  return a2;
}

- (uint64_t)msv_reduceIntoBool:()MSVSequence by:
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  selfCopy = self;
  v8 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(selfCopy);
        }

        a3 = v6[2](v6, a3 & 1, *(*(&v14 + 1) + 8 * v11++));
      }

      while (v9 != v11);
      v9 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x1E69E9840];
  return a3;
}

- (id)msv_flatMap:()MSVSequence
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  selfCopy = self;
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = selfCopy;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = v4[2](v4, *(*(&v16 + 1) + 8 * i));
        [v6 addObjectsFromArray:{v12, v16}];
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v13 = [v6 copy];
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)msv_firstWhere:()MSVSequence
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  selfCopy = self;
  v6 = [selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(selfCopy);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (v4[2](v4, v9))
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x1E69E9840];

  return v6;
}

- (_MSVLazyFilterEnumerator)msv_lazyFilter:()MSVSequence
{
  v4 = a3;
  v5 = [_MSVLazyFilterEnumerator alloc];
  selfCopy = self;
  v7 = v4;
  if (v5)
  {
    v12.receiver = v5;
    v12.super_class = _MSVLazyFilterEnumerator;
    v8 = objc_msgSendSuper2(&v12, sel_init);
    v5 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_enumerator, self);
      v9 = MEMORY[0x1B26EC6C0](v7);
      block = v5->_block;
      v5->_block = v9;
    }
  }

  return v5;
}

- (id)msv_filter:()MSVSequence
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  array = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  selfCopy = self;
  v7 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(selfCopy);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if (v4[2](v4, v11))
        {
          [array addObject:{v11, v15}];
        }
      }

      v8 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [array copy];
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)msv_compactMap:()MSVSequence
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  array = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  selfCopy = self;
  v7 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(selfCopy);
        }

        v11 = v4[2](v4, *(*(&v15 + 1) + 8 * i));
        if (v11)
        {
          [array addObject:{v11, v15}];
        }
      }

      v8 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [array copy];
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)msv_map:()MSVSequence
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  array = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  selfCopy = self;
  v7 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(selfCopy);
        }

        v11 = v4[2](v4, *(*(&v15 + 1) + 8 * i));
        [array addObject:{v11, v15}];
      }

      v8 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [array copy];
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (_MSVConcatArrayEnumerator)msv_concatArrays:()MSVSequence
{
  v3 = a3;
  v4 = [_MSVConcatArrayEnumerator alloc];
  v5 = v3;
  v6 = v5;
  if (v4)
  {
    if (!v5)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_initWithArrays_ object:v4 file:@"Foundation+Sequence.m" lineNumber:296 description:{@"Invalid parameter not satisfying: %@", @"arrays"}];
    }

    v11.receiver = v4;
    v11.super_class = _MSVConcatArrayEnumerator;
    v4 = objc_msgSendSuper2(&v11, sel_init);
    if (v4)
    {
      v7 = [v6 copy];
      arrays = v4->_arrays;
      v4->_arrays = v7;

      v4->_index = 0;
      v4->_innerIndex = 0;
    }
  }

  return v4;
}

@end