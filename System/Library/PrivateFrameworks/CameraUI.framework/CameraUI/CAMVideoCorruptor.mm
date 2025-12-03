@interface CAMVideoCorruptor
+ (BOOL)corruptVideoFileAtURLWhenEnabled:(id)enabled;
+ (int)_corruptMethodFytpForFile:(__sFILE *)file ofSize:(int64_t)size;
+ (int)_corruptMethodMdatForFile:(__sFILE *)file ofSize:(int64_t)size;
+ (int)_corruptMethodMoovForFile:(__sFILE *)file ofSize:(int64_t)size;
+ (int)_findBox:(unsigned int)box inFile:(__sFILE *)file ofSize:(int64_t)size boxSize:(int64_t *)boxSize;
+ (int)_getBoxInfoFromFile:(__sFILE *)file ofSize:(int64_t)size boxType:(unsigned int *)type boxSize:(int64_t *)boxSize;
@end

@implementation CAMVideoCorruptor

+ (BOOL)corruptVideoFileAtURLWhenEnabled:(id)enabled
{
  enabledCopy = enabled;
  if (corruptVideoFileAtURLWhenEnabled__onceToken != -1)
  {
    +[CAMVideoCorruptor corruptVideoFileAtURLWhenEnabled:];
  }

  if (corruptVideoFileAtURLWhenEnabled__enabled == 1 && (corruptVideoFileAtURLWhenEnabled__atRandom != 1 || (rand() & 1) != 0) && (v5 = fopen([enabledCopy fileSystemRepresentation], "r+b")) != 0)
  {
    v6 = v5;
    if (fseeko(v5, 0, 2) || (v7 = ftello(v6), v7 < 1) || (v8 = v7, fseeko(v6, 0, 0)))
    {
      v11 = 0;
    }

    else
    {
      v9 = corruptVideoFileAtURLWhenEnabled__corruptionMethod++;
      if (v9 % 3 == 2)
      {
        v10 = [self _corruptMethodMoovForFile:v6 ofSize:v8];
      }

      else if (v9 % 3 == 1)
      {
        v10 = [self _corruptMethodMdatForFile:v6 ofSize:v8];
      }

      else
      {
        v10 = [self _corruptMethodFytpForFile:v6 ofSize:v8];
      }

      v11 = v10 == 0;
    }

    fclose(v6);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

CFIndex __54__CAMVideoCorruptor_corruptVideoFileAtURLWhenEnabled___block_invoke()
{
  result = CFPreferencesGetAppIntegerValue(@"CAMVideoCorruptorMode", @"com.apple.camera", 0);
  if (result == 1)
  {
    corruptVideoFileAtURLWhenEnabled__enabled = 1;
    corruptVideoFileAtURLWhenEnabled__atRandom = 0;
  }

  else if (result == 2)
  {
    corruptVideoFileAtURLWhenEnabled__enabled = 1;
    corruptVideoFileAtURLWhenEnabled__atRandom = 1;
  }

  else
  {
    corruptVideoFileAtURLWhenEnabled__enabled = 0;
  }

  return result;
}

+ (int)_getBoxInfoFromFile:(__sFILE *)file ofSize:(int64_t)size boxType:(unsigned int *)type boxSize:(int64_t *)boxSize
{
  v10 = ftello(file);
  if (ftello(file) + 4 > size)
  {
    return -1;
  }

  __ptr = 0;
  if (fread(&__ptr, 4uLL, 1uLL, file) != 1)
  {
    return -1;
  }

  v11 = bswap32(__ptr);
  v15 = v11;
  if (!__ptr)
  {
    v11 = size - ftello(file) - 4;
    v15 = v11;
  }

  if (v11 > size - v10)
  {
    return -1;
  }

  if (ftello(file) + 4 > size)
  {
    return -1;
  }

  v14 = 0;
  if (fread(&v14, 4uLL, 1uLL, file) != 1)
  {
    return -1;
  }

  v12 = v14;
  if (v11 == 1)
  {
    if (ftello(file) + 8 > size || fread(&v15, 8uLL, 1uLL, file) != 1)
    {
      return -1;
    }

    v11 = bswap64(v15);
  }

  result = fseeko(file, v10, 0);
  if (result)
  {
    return -1;
  }

  *type = bswap32(v12);
  *boxSize = v11;
  return result;
}

+ (int)_findBox:(unsigned int)box inFile:(__sFILE *)file ofSize:(int64_t)size boxSize:(int64_t *)boxSize
{
  OUTLINED_FUNCTION_2_1();
  for (i = v12; ; i = file)
  {
    result = [selfCopy _getBoxInfoFromFile:i ofSize:size boxType:? boxSize:?];
    if (result)
    {
      break;
    }

    if (v16 == box)
    {
      result = 0;
      *boxSize = __offseta;
      return result;
    }

    if (fseeko(file, __offseta, 1))
    {
      return -1;
    }

    OUTLINED_FUNCTION_2_1();
    selfCopy = self;
  }

  return result;
}

+ (int)_corruptMethodFytpForFile:(__sFILE *)file ofSize:(int64_t)size
{
  OUTLINED_FUNCTION_1_5();
  *v17 = 1701147238;
  result = [v5 _findBox:1718909296 inFile:v4 ofSize:? boxSize:?];
  if (!result)
  {
    if (v18 < 16 || fseeko(v4, 4, 1) || OUTLINED_FUNCTION_0_7(0, v7, v8, v9, v10, v11, v12, v13, v16, v17[0]) != 1)
    {
      return -1;
    }

    v14 = v18;
    v18 -= 8;
    if (v14 >= 9)
    {
      while (1)
      {
        HIBYTE(v16) = 0;
        if (fwrite(&v16 + 3, 1uLL, 1uLL, v4) != 1)
        {
          break;
        }

        v15 = v18--;
        if (v15 < 2)
        {
          return 0;
        }
      }

      return -1;
    }

    return 0;
  }

  return result;
}

+ (int)_corruptMethodMdatForFile:(__sFILE *)file ofSize:(int64_t)size
{
  OUTLINED_FUNCTION_1_5();
  result = [v5 _findBox:1835295092 inFile:v4 ofSize:? boxSize:?];
  if (!result)
  {
    if (v17 < 16 || OUTLINED_FUNCTION_0_7(0, v7, v8, v9, v10, v11, v12, v13, v16, 0) != 1 || fseeko(v4, v17 - 4, 1))
    {
      return -1;
    }

    else
    {
      v14 = fileno(v4);
      v15 = ftello(v4);
      if (ftruncate(v14, v15))
      {
        return -1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

+ (int)_corruptMethodMoovForFile:(__sFILE *)file ofSize:(int64_t)size
{
  OUTLINED_FUNCTION_1_5();
  result = [v5 _findBox:1836019574 inFile:v4 ofSize:? boxSize:?];
  if (!result)
  {
    if (v15 < 16 || fseeko(v4, 4, 1))
    {
      return -1;
    }

    else if (OUTLINED_FUNCTION_0_7(0, v7, v8, v9, v10, v11, v12, v13, v14, 77) == 1)
    {
      return 0;
    }

    else
    {
      return -1;
    }
  }

  return result;
}

@end