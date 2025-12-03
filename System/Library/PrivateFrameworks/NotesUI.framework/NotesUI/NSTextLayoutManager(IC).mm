@interface NSTextLayoutManager(IC)
- (double)ic_rectForRange:()IC;
- (id)ic_textRangeForRange:()IC;
- (uint64_t)ic_rangeForTextRange:()IC;
@end

@implementation NSTextLayoutManager(IC)

- (uint64_t)ic_rangeForTextRange:()IC
{
  v4 = a3;
  documentRange = [self documentRange];
  location = [documentRange location];
  if (!location)
  {
    v12 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_6;
  }

  v7 = location;
  location2 = [v4 location];

  if (!location2)
  {
    v12 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_8;
  }

  documentRange2 = [self documentRange];
  location3 = [documentRange2 location];
  location4 = [v4 location];
  v12 = [self offsetFromLocation:location3 toLocation:location4];

  endLocation = [v4 endLocation];

  if (endLocation)
  {
    documentRange = [v4 location];
    endLocation2 = [v4 endLocation];
    [self offsetFromLocation:documentRange toLocation:endLocation2];

LABEL_6:
  }

LABEL_8:

  return v12;
}

- (id)ic_textRangeForRange:()IC
{
  documentRange = [self documentRange];
  location = [documentRange location];

  if (location)
  {
    documentRange2 = [self documentRange];
    location2 = [documentRange2 location];
    v11 = [self locationFromLocation:location2 withOffset:a3];

    if (v11)
    {
      v12 = [self locationFromLocation:v11 withOffset:a4];
      if (v12)
      {
        v13 = [objc_alloc(MEMORY[0x1E69DB848]) initWithLocation:v11 endLocation:v12];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (double)ic_rectForRange:()IC
{
  v2 = [self ic_textRangeForRange:?];
  if (v2)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x4010000000;
    v11 = &unk_1D449C2A9;
    v3 = *(MEMORY[0x1E695F050] + 16);
    v12 = *MEMORY[0x1E695F050];
    v13 = v3;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __43__NSTextLayoutManager_IC__ic_rectForRange___block_invoke;
    v7[3] = &unk_1E846C878;
    v7[4] = &v8;
    [self enumerateTextSegmentsInRange:v2 type:0 options:0 usingBlock:v7];
    if (CGRectIsNull(v9[1]))
    {
      p_x = MEMORY[0x1E695F058];
    }

    else
    {
      p_x = &v9[1].origin.x;
    }

    v5 = *p_x;
    _Block_object_dispose(&v8, 8);
  }

  else
  {
    v5 = *MEMORY[0x1E695F058];
  }

  return v5;
}

@end