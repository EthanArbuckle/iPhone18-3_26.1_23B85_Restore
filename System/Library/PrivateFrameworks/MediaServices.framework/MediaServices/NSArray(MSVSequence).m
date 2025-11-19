@interface NSArray(MSVSequence)
- (double)msv_reduceIntoCGFloat:()MSVSequence by:;
- (double)msv_reduceIntoCGFloat:()MSVSequence enumeratedBy:;
- (double)msv_reduceIntoDouble:()MSVSequence by:;
- (double)msv_reduceIntoDouble:()MSVSequence enumeratedBy:;
- (float)msv_reduceIntoFloat:()MSVSequence by:;
- (float)msv_reduceIntoFloat:()MSVSequence enumeratedBy:;
- (id)msv_compactMap:()MSVSequence;
- (id)msv_enumeratedCompactMap:()MSVSequence;
- (id)msv_enumeratedMap:()MSVSequence;
- (id)msv_filter:()MSVSequence;
- (id)msv_firstWhere:()MSVSequence;
- (id)msv_flatMap:()MSVSequence;
- (id)msv_map:()MSVSequence;
- (id)msv_prefixUpToIndex:()MSVSequence;
- (id)msv_reduceIntoObject:()MSVSequence by:;
- (id)msv_reduceIntoObject:()MSVSequence enumeratedBy:;
- (id)msv_suffixFromIndex:()MSVSequence;
- (uint64_t)msv_reduceIntoBool:()MSVSequence by:;
- (uint64_t)msv_reduceIntoBool:()MSVSequence enumeratedBy:;
- (uint64_t)msv_reduceIntoInt32:()MSVSequence by:;
- (uint64_t)msv_reduceIntoInt32:()MSVSequence enumeratedBy:;
- (uint64_t)msv_reduceIntoInt64:()MSVSequence by:;
- (uint64_t)msv_reduceIntoInt64:()MSVSequence enumeratedBy:;
- (uint64_t)msv_reduceIntoInt:()MSVSequence by:;
- (uint64_t)msv_reduceIntoInt:()MSVSequence enumeratedBy:;
- (uint64_t)msv_reduceIntoUInt32:()MSVSequence by:;
- (uint64_t)msv_reduceIntoUInt32:()MSVSequence enumeratedBy:;
- (uint64_t)msv_reduceIntoUInt64:()MSVSequence by:;
- (uint64_t)msv_reduceIntoUInt64:()MSVSequence enumeratedBy:;
- (uint64_t)msv_reduceIntoUInt:()MSVSequence by:;
- (uint64_t)msv_reduceIntoUInt:()MSVSequence enumeratedBy:;
@end

@implementation NSArray(MSVSequence)

- (id)msv_reduceIntoObject:()MSVSequence enumeratedBy:
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = v8;
  if ([a1 count])
  {
    v10 = 0;
    v11 = v8;
    do
    {
      v12 = [a1 objectAtIndexedSubscript:v10];
      v9 = v7[2](v7, v11, v12, v10);

      ++v10;
      v11 = v9;
    }

    while (v10 < [a1 count]);
  }

  return v9;
}

- (uint64_t)msv_reduceIntoUInt64:()MSVSequence enumeratedBy:
{
  v6 = a4;
  if ([a1 count])
  {
    v7 = 0;
    do
    {
      v8 = [a1 objectAtIndexedSubscript:v7];
      a3 = v6[2](v6, a3, v8, v7);

      ++v7;
    }

    while (v7 < [a1 count]);
  }

  return a3;
}

- (uint64_t)msv_reduceIntoUInt32:()MSVSequence enumeratedBy:
{
  v6 = a4;
  if ([a1 count])
  {
    v7 = 0;
    do
    {
      v8 = [a1 objectAtIndexedSubscript:v7];
      a3 = v6[2](v6, a3, v8, v7);

      ++v7;
    }

    while (v7 < [a1 count]);
  }

  return a3;
}

- (uint64_t)msv_reduceIntoUInt:()MSVSequence enumeratedBy:
{
  v6 = a4;
  if ([a1 count])
  {
    v7 = 0;
    do
    {
      v8 = [a1 objectAtIndexedSubscript:v7];
      a3 = v6[2](v6, a3, v8, v7);

      ++v7;
    }

    while (v7 < [a1 count]);
  }

  return a3;
}

- (uint64_t)msv_reduceIntoInt64:()MSVSequence enumeratedBy:
{
  v6 = a4;
  if ([a1 count])
  {
    v7 = 0;
    do
    {
      v8 = [a1 objectAtIndexedSubscript:v7];
      a3 = v6[2](v6, a3, v8, v7);

      ++v7;
    }

    while (v7 < [a1 count]);
  }

  return a3;
}

- (uint64_t)msv_reduceIntoInt32:()MSVSequence enumeratedBy:
{
  v6 = a4;
  if ([a1 count])
  {
    v7 = 0;
    do
    {
      v8 = [a1 objectAtIndexedSubscript:v7];
      a3 = v6[2](v6, a3, v8, v7);

      ++v7;
    }

    while (v7 < [a1 count]);
  }

  return a3;
}

- (uint64_t)msv_reduceIntoInt:()MSVSequence enumeratedBy:
{
  v6 = a4;
  if ([a1 count])
  {
    v7 = 0;
    do
    {
      v8 = [a1 objectAtIndexedSubscript:v7];
      a3 = v6[2](v6, a3, v8, v7);

      ++v7;
    }

    while (v7 < [a1 count]);
  }

  return a3;
}

- (double)msv_reduceIntoDouble:()MSVSequence enumeratedBy:
{
  v6 = a4;
  if ([a1 count])
  {
    v7 = 0;
    do
    {
      v8 = [a1 objectAtIndexedSubscript:v7];
      a2 = v6[2](v6, v8, v7, a2);

      ++v7;
    }

    while (v7 < [a1 count]);
  }

  return a2;
}

- (double)msv_reduceIntoCGFloat:()MSVSequence enumeratedBy:
{
  v6 = a4;
  if ([a1 count])
  {
    v7 = 0;
    do
    {
      v8 = [a1 objectAtIndexedSubscript:v7];
      a2 = v6[2](v6, v8, v7, a2);

      ++v7;
    }

    while (v7 < [a1 count]);
  }

  return a2;
}

- (float)msv_reduceIntoFloat:()MSVSequence enumeratedBy:
{
  v6 = a4;
  if ([a1 count])
  {
    v7 = 0;
    do
    {
      v8 = [a1 objectAtIndexedSubscript:v7];
      a2 = v6[2](v6, v8, v7, a2);

      ++v7;
    }

    while (v7 < [a1 count]);
  }

  return a2;
}

- (uint64_t)msv_reduceIntoBool:()MSVSequence enumeratedBy:
{
  v6 = a4;
  if ([a1 count])
  {
    v7 = 0;
    do
    {
      v8 = [a1 objectAtIndexedSubscript:v7];
      a3 = v6[2](v6, a3 & 1, v8, v7);

      ++v7;
    }

    while (v7 < [a1 count]);
  }

  return a3;
}

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
  v9 = a1;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v9);
        }

        v11 = v7[2](v7, v15, *(*(&v18 + 1) + 8 * v14));

        ++v14;
        v15 = v11;
      }

      while (v12 != v14);
      v12 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
  v7 = a1;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v7);
        }

        a3 = v6[2](v6, a3, *(*(&v14 + 1) + 8 * v11++));
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  v7 = a1;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v7);
        }

        a3 = v6[2](v6, a3, *(*(&v14 + 1) + 8 * v11++));
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  v7 = a1;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v7);
        }

        a3 = v6[2](v6, a3, *(*(&v14 + 1) + 8 * v11++));
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  v7 = a1;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v7);
        }

        a3 = v6[2](v6, a3, *(*(&v14 + 1) + 8 * v11++));
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  v7 = a1;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v7);
        }

        a3 = v6[2](v6, a3, *(*(&v14 + 1) + 8 * v11++));
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  v7 = a1;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v7);
        }

        a3 = v6[2](v6, a3, *(*(&v14 + 1) + 8 * v11++));
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  v7 = a1;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v7);
        }

        a2 = v6[2](v6, *(*(&v14 + 1) + 8 * v11++), a2);
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  v7 = a1;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v7);
        }

        a2 = v6[2](v6, *(*(&v14 + 1) + 8 * v11++), a2);
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  v7 = a1;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v7);
        }

        a2 = v6[2](v6, *(*(&v14 + 1) + 8 * v11++), a2);
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  v7 = a1;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v7);
        }

        a3 = v6[2](v6, a3 & 1, *(*(&v14 + 1) + 8 * v11++));
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x1E69E9840];
  return a3;
}

- (id)msv_firstWhere:()MSVSequence
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = a1;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (v4[2](v4, v9))
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (id)msv_filter:()MSVSequence
{
  v4 = a3;
  v5 = [a1 mutableCopy];
  if ([a1 count])
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = [a1 objectAtIndexedSubscript:v7];
      if ((v4[2](v4, v8) & 1) == 0)
      {
        [v5 removeObjectAtIndex:v7 - v6++];
      }

      ++v7;
    }

    while (v7 < [a1 count]);
  }

  v9 = [v5 copy];

  return v9;
}

- (id)msv_flatMap:()MSVSequence
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 count];
  v6 = a1;
  v7 = v4;
  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:v5];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = v7[2](v7, *(*(&v18 + 1) + 8 * i));
        [v8 addObjectsFromArray:{v14, v18}];
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v15 = [v8 copy];
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)msv_enumeratedCompactMap:()MSVSequence
{
  v4 = a3;
  v5 = [a1 mutableCopy];
  if ([a1 count])
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = [a1 objectAtIndexedSubscript:v7];
      v9 = v4[2](v4, v8, v7);
      v10 = v9;
      if (v9)
      {
        if (v9 != v8)
        {
          [v5 setObject:v9 atIndexedSubscript:v7 - v6];
        }
      }

      else
      {
        [v5 removeObjectAtIndex:v7 - v6++];
      }

      ++v7;
    }

    while (v7 < [a1 count]);
  }

  v11 = [v5 copy];

  return v11;
}

- (id)msv_compactMap:()MSVSequence
{
  v4 = MEMORY[0x1B26EC6C0](a3);
  v5 = [a1 msv_enumeratedCompactMap:v4];

  return v5;
}

- (id)msv_enumeratedMap:()MSVSequence
{
  v4 = a3;
  v5 = [a1 mutableCopy];
  if ([a1 count])
  {
    v6 = 0;
    do
    {
      v7 = [a1 objectAtIndexedSubscript:v6];
      v8 = v4[2](v4, v7, v6);
      if (v8 != v7)
      {
        [v5 setObject:v8 atIndexedSubscript:v6];
      }

      ++v6;
    }

    while (v6 < [a1 count]);
  }

  v9 = [v5 copy];

  return v9;
}

- (id)msv_map:()MSVSequence
{
  v4 = MEMORY[0x1B26EC6C0](a3);
  v5 = [a1 msv_enumeratedMap:v4];

  return v5;
}

- (id)msv_suffixFromIndex:()MSVSequence
{
  if (a3)
  {
    if ([a1 count] <= a3)
    {
      v5 = MEMORY[0x1E695E0F0];
    }

    else
    {
      v5 = [a1 subarrayWithRange:{a3, objc_msgSend(a1, "count") - a3}];
    }
  }

  else
  {
    v5 = a1;
  }

  return v5;
}

- (id)msv_prefixUpToIndex:()MSVSequence
{
  if ([a1 count] == a3)
  {
    v5 = a1;
  }

  else
  {
    v5 = [a1 subarrayWithRange:{0, a3}];
  }

  return v5;
}

@end