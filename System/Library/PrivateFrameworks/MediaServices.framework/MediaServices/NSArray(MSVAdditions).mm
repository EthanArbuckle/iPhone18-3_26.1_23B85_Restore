@interface NSArray(MSVAdditions)
- (id)msv_indexesOfObjectsEqualTo:()MSVAdditions;
- (id)msv_subarrayFromIndex:()MSVAdditions;
- (id)msv_subarrayToIndex:()MSVAdditions;
- (uint64_t)msv_firstIndexOfObjectEqualTo:()MSVAdditions;
- (uint64_t)msv_firstIndexOfObjectsPassingTest:()MSVAdditions;
- (uint64_t)msv_lastIndexOfObjectEqualTo:()MSVAdditions;
- (uint64_t)msv_lastIndexOfObjectsPassingTest:()MSVAdditions;
@end

@implementation NSArray(MSVAdditions)

- (id)msv_subarrayFromIndex:()MSVAdditions
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [self subarrayWithRange:{a3 + 1, objc_msgSend(self, "count") + ~a3}];
  }

  return selfCopy;
}

- (id)msv_subarrayToIndex:()MSVAdditions
{
  if ([self count] <= a3)
  {
    selfCopy = self;
  }

  else if ((a3 & 0x8000000000000000) != 0)
  {
    selfCopy = MEMORY[0x1E695E0F0];
  }

  else
  {
    selfCopy = [self subarrayWithRange:{0, a3}];
  }

  return selfCopy;
}

- (uint64_t)msv_lastIndexOfObjectEqualTo:()MSVAdditions
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__NSArray_MSVAdditions__msv_lastIndexOfObjectEqualTo___block_invoke;
  v8[3] = &unk_1E7981D80;
  v9 = v4;
  v5 = v4;
  v6 = [self msv_lastIndexOfObjectsPassingTest:v8];

  return v6;
}

- (uint64_t)msv_lastIndexOfObjectsPassingTest:()MSVAdditions
{
  v4 = a3;
  if ([self count])
  {
    v5 = [self count] - 1;
    do
    {
      if (v5 < 0)
      {
        break;
      }

      v9 = 0;
      v6 = [self objectAtIndexedSubscript:v5];
      v7 = v4[2](v4, v6, v5, &v9);

      if (v7)
      {
        goto LABEL_7;
      }

      --v5;
    }

    while ((v9 & 1) == 0);
  }

  v5 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_7:

  return v5;
}

- (uint64_t)msv_firstIndexOfObjectEqualTo:()MSVAdditions
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__NSArray_MSVAdditions__msv_firstIndexOfObjectEqualTo___block_invoke;
  v8[3] = &unk_1E7981D80;
  v9 = v4;
  v5 = v4;
  v6 = [self msv_firstIndexOfObjectsPassingTest:v8];

  return v6;
}

- (uint64_t)msv_firstIndexOfObjectsPassingTest:()MSVAdditions
{
  v4 = a3;
  if ([self count])
  {
    v5 = 0;
    while (1)
    {
      v9 = 0;
      v6 = [self objectAtIndexedSubscript:v5];
      v7 = v4[2](v4, v6, v5, &v9);

      if (v7)
      {
        break;
      }

      if ((v9 & 1) == 0 && ++v5 < [self count])
      {
        continue;
      }

      goto LABEL_6;
    }
  }

  else
  {
LABEL_6:
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

- (id)msv_indexesOfObjectsEqualTo:()MSVAdditions
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__NSArray_MSVAdditions__msv_indexesOfObjectsEqualTo___block_invoke;
  v8[3] = &unk_1E7981D80;
  v9 = v4;
  v5 = v4;
  v6 = [self indexesOfObjectsPassingTest:v8];

  return v6;
}

@end