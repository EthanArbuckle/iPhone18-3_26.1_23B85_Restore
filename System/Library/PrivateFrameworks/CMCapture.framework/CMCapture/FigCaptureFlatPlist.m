@interface FigCaptureFlatPlist
+ (id)flatPlistWithContentsOfFile:(id)a3;
+ (id)flatPlistWithContentsOfURL:(id)a3;
- (id)initWithMutableData:(void *)a1;
- (void)dealloc;
- (void)objectAtOffset:(void *)result;
- (void)rootDictionary;
@end

@implementation FigCaptureFlatPlist

+ (id)flatPlistWithContentsOfFile:(id)a3
{
  v3 = [MEMORY[0x1E695DFF8] fileURLWithPath:a3];

  return [FigCaptureFlatPlist flatPlistWithContentsOfURL:v3];
}

+ (id)flatPlistWithContentsOfURL:(id)a3
{
  v3 = [objc_alloc(MEMORY[0x1E695DF88]) initWithContentsOfURL:a3];
  if ([v3 length] < 8)
  {
    return 0;
  }

  if (!strncmp([v3 bytes], "bplist00", 8uLL))
  {
    v6 = [[FigCaptureFlatPlist alloc] initWithMutableData:v3];
    v7 = [(FigCaptureFlatPlist *)v6 rootDictionary];

    return v7;
  }

  else
  {
    v5 = MEMORY[0x1E696AE40];

    return [v5 propertyListWithData:v3 options:0 format:0 error:0];
  }
}

- (id)initWithMutableData:(void *)a1
{
  v2 = 0;
  if (a1)
  {
    if (a2)
    {
      v6.receiver = a1;
      v6.super_class = FigCaptureFlatPlist;
      v2 = objc_msgSendSuper2(&v6, sel_self);
      if (v2)
      {
        v4 = a2;
        *(v2 + 1) = v4;
        if (!v4)
        {
          [FigCaptureFlatPlist initWithMutableData:];
        }

        FigCaptureBinaryPlistInitialize(v2 + 16, [v4 mutableBytes], objc_msgSend(*(v2 + 1), "length"));
      }
    }
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureFlatPlist;
  [(FigCaptureFlatPlist *)&v3 dealloc];
}

- (void)objectAtOffset:(void *)result
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  TypeForObjectAtOffset = FigCaptureBinaryPlistGetTypeForObjectAtOffset(result + 2, a2);
  if (TypeForObjectAtOffset <= 32)
  {
    if (TypeForObjectAtOffset <= 15)
    {
      if (TypeForObjectAtOffset)
      {
        if (TypeForObjectAtOffset == 8)
        {
          return MEMORY[0x1E695E110];
        }

        if (TypeForObjectAtOffset == 9)
        {
          return MEMORY[0x1E695E118];
        }

        goto LABEL_54;
      }

      v20 = MEMORY[0x1E695DFB0];

      return [v20 null];
    }

    else if ((TypeForObjectAtOffset - 16) >= 3)
    {
      if (TypeForObjectAtOffset != 19)
      {
        goto LABEL_54;
      }

      v16 = MEMORY[0x1E696AD98];
      IntForObjectAtOffset = FigCaptureBinaryPlistGetIntForObjectAtOffset(v3 + 2, a2);

      return [v16 numberWithLongLong:IntForObjectAtOffset];
    }

    else
    {
      v9 = MEMORY[0x1E696AD98];
      v10 = FigCaptureBinaryPlistGetIntForObjectAtOffset(v3 + 2, a2);

      return [v9 numberWithInt:v10];
    }
  }

  else if (TypeForObjectAtOffset <= 63)
  {
    if ((TypeForObjectAtOffset - 33) < 2)
    {
      v14 = MEMORY[0x1E696AD98];
      RealForObjectAtOffset = FigCaptureBinaryPlistGetRealForObjectAtOffset(v3 + 2, a2, v5);
      *&RealForObjectAtOffset = RealForObjectAtOffset;

      return [v14 numberWithFloat:RealForObjectAtOffset];
    }

    else if (TypeForObjectAtOffset == 35)
    {
      v18 = MEMORY[0x1E696AD98];
      v19 = FigCaptureBinaryPlistGetRealForObjectAtOffset(v3 + 2, a2, v5);

      return [v18 numberWithDouble:v19];
    }

    else
    {
      if (TypeForObjectAtOffset != 48)
      {
        goto LABEL_54;
      }

      v11 = MEMORY[0x1E695DF00];
      v12 = FigCaptureBinaryPlistGetRealForObjectAtOffset(v3 + 2, a2, v5);

      return [v11 dateWithTimeIntervalSince1970:v12];
    }
  }

  else
  {
    if (TypeForObjectAtOffset <= 159)
    {
      if (TypeForObjectAtOffset > 79)
      {
        if (TypeForObjectAtOffset == 80)
        {
          [(FigCaptureFlatPlist *)v3 + 2 objectAtOffset:a2, &v22];
        }

        else
        {
          if (TypeForObjectAtOffset != 96)
          {
            goto LABEL_54;
          }

          [(FigCaptureFlatPlist *)v3 + 2 objectAtOffset:a2, &v22];
        }

        return v22;
      }

      if (TypeForObjectAtOffset == 64)
      {
        DataAndCountForObjectAtOffset = FigCaptureBinaryPlistGetDataAndCountForObjectAtOffset(v3 + 2, a2);
        v8 = MEMORY[0x1E695DEF0];

        return [v8 dataWithBytes:DataAndCountForObjectAtOffset length:v6];
      }

LABEL_54:
      abort();
    }

    switch(TypeForObjectAtOffset)
    {
      case 160:
        v13 = FigCaptureFlatPlistArray;
        break;
      case 192:
        v13 = FigCaptureFlatPlistSet;
        break;
      case 208:
        v13 = FigCaptureFlatPlistDict;
        break;
      default:
        goto LABEL_54;
    }

    v21 = [[v13 alloc] initWithFlatPlist:v3 offset:a2];

    return v21;
  }
}

- (void)rootDictionary
{
  if (result)
  {
    v1 = result;
    OffsetForReference = FigCaptureBinaryPlistGetOffsetForReference((result + 2), 0);

    return [(FigCaptureFlatPlist *)v1 objectAtOffset:?];
  }

  return result;
}

- (id)objectAtOffset:(void *)a3 .cold.1(void *a1, uint64_t a2, void *a3)
{
  DataAndCountForObjectAtOffset = FigCaptureBinaryPlistGetDataAndCountForObjectAtOffset(a1, a2);
  result = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:DataAndCountForObjectAtOffset length:v5 encoding:4];
  *a3 = result;
  return result;
}

- (id)objectAtOffset:(void *)a3 .cold.2(void *a1, uint64_t a2, void *a3)
{
  DataAndCountForObjectAtOffset = FigCaptureBinaryPlistGetDataAndCountForObjectAtOffset(a1, a2);
  result = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:DataAndCountForObjectAtOffset length:v5 encoding:2415919360];
  *a3 = result;
  return result;
}

@end