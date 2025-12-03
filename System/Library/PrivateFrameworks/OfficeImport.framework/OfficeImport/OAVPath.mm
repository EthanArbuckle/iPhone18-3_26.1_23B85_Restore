@interface OAVPath
+ (EshComputedValue)noneParam;
+ (EshComputedValue)parseParam:(const char *)param first:(BOOL)first;
+ (int)parseCommand:(const char *)command;
+ (void)readPath:(id)path toGeometry:(id)geometry;
+ (void)writePath:(id)path toString:(id)string;
@end

@implementation OAVPath

+ (EshComputedValue)noneParam
{
  v3 = v2;
  if (+[OAVPath noneParam]::once != -1)
  {
    +[OAVPath noneParam];
  }

  *v3 = *+[OAVPath noneParam]::param;
  return self;
}

+ (int)parseCommand:(const char *)command
{
  v4 = **command;
  if ((v4 & 0x80000000) != 0)
  {
    if (!__maskrune(v4, 0x100uLL))
    {
      return -1;
    }
  }

  else if ((*(MEMORY[0x277D85DE0] + 4 * v4 + 60) & 0x100) == 0)
  {
    return -1;
  }

  v5 = (*command)++;
  result = 0;
  switch(*v5)
  {
    case 'A':
      *command = v5 + 2;
      v7 = *(v5 + 1);
      if (v7 > 81)
      {
        if (v7 == 82)
        {
          return 9;
        }

        else
        {
          if (v7 != 84)
          {
            return -1;
          }

          return 8;
        }
      }

      else if (v7 == 69)
      {
        return 6;
      }

      else
      {
        if (v7 != 76)
        {
          return -1;
        }

        return 7;
      }

    case 'C':
      return 1;
    case 'E':
      return 4;
    case 'H':
      *command = v5 + 2;
      v8 = *(v5 + 1);
      if ((v8 - 65) >= 9)
      {
        return -1;
      }

      return (v8 - 48);
    case 'L':
      return result;
    case 'M':
      return 2;
    case 'N':
      *command = v5 + 2;
      v13 = *(v5 + 1);
      if (v13 == 83)
      {
        v10 = 16;
      }

      else
      {
        v10 = -1;
      }

      v11 = v13 == 70;
      v12 = 15;
      goto LABEL_25;
    case 'Q':
      *command = v5 + 2;
      v14 = *(v5 + 1);
      switch(v14)
      {
        case 'B':
          result = 14;
          break;
        case 'X':
          result = 12;
          break;
        case 'Y':
          result = 13;
          break;
        default:
          return -1;
      }

      break;
    case 'R':
      return 29;
    case 'T':
      return 28;
    case 'V':
      return 30;
    case 'W':
      *command = v5 + 2;
      v9 = *(v5 + 1);
      if (v9 == 82)
      {
        v10 = 11;
      }

      else
      {
        v10 = -1;
      }

      v11 = v9 == 65;
      v12 = 10;
LABEL_25:
      if (v11)
      {
        return v12;
      }

      else
      {
        return v10;
      }

    case 'X':
      return 3;
    default:
      return -1;
  }

  return result;
}

+ (EshComputedValue)parseParam:(const char *)param first:(BOOL)first
{
  v7 = v4;
  v8 = *param;
  v9 = MEMORY[0x277D85DE0];
  if (first)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = *v8;
    v11 = (v10 & 0x80000000) != 0 ? __maskrune(v10, 0x4000uLL) : *(v9 + 4 * v10 + 60) & 0x4000;
    v8 = *param;
    if (!v11)
    {
      break;
    }

    *param = ++v8;
  }

  if (*v8 != 44)
  {
LABEL_9:
    v12 = 0;
  }

  else
  {
    *param = ++v8;
    v12 = 1;
  }

  while (1)
  {
    v13 = *v8;
    v14 = (v13 & 0x80000000) != 0 ? __maskrune(v13, 0x4000uLL) : *(v9 + 4 * v13 + 60) & 0x4000;
    v15 = *param;
    if (!v14)
    {
      break;
    }

    v8 = v15 + 1;
    *param = v8;
  }

  v16 = *v15;
  if (*&v16.var0 == 44)
  {
    goto LABEL_32;
  }

  if ((*&v16.var0 & 0x80000000) != 0)
  {
    v16 = __maskrune(*&v16.var0, 0x100uLL);
    if (*&v16.var0)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v16 = (*(v9 + 4 * *&v16.var0 + 60) & 0x100);
    if (*&v16.var0)
    {
      goto LABEL_31;
    }
  }

  v17 = *param;
  v18 = **param;
  if (!**param)
  {
LABEL_31:
    if (!v12)
    {
      goto LABEL_33;
    }

LABEL_32:
    *v7 = 0;
    *(v7 + 4) = 0;
    return v16;
  }

  if ((v18 & 0x80) == 0 && (*(v9 + 4 * v18 + 60) & 0x400) != 0 || v18 == 64 || v18 == 45)
  {
    if (v18 == 64)
    {
      *param = ++v17;
    }

    v16 = atol(v17);
    v19 = v17 + 1;
    do
    {
      *param = v19;
      v21 = *v19++;
      v20 = v21;
    }

    while ((v21 & 0x8000000000000000) == 0 && (*(v9 + 4 * v20 + 60) & 0x400) != 0);
    *v7 = v18 == 64;
    *(v7 + 4) = *&v16.var0;
    return v16;
  }

LABEL_33:

  return [self noneParam];
}

+ (void)readPath:(id)path toGeometry:(id)geometry
{
  pathCopy = path;
  geometryCopy = geometry;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v40 = 0;
  v41 = &unk_286EC4EE0;
  __p = 0;
  v39 = 0;
  v37 = &unk_286EC4D78;
  uppercaseString = [pathCopy uppercaseString];
  uTF8String = [uppercaseString UTF8String];

  v9 = 0;
  v36 = uTF8String;
  v10 = MEMORY[0x277D85DE0];
  while (1)
  {
    while (1)
    {
      v11 = *uTF8String;
      if (!((v11 & 0x80000000) != 0 ? __maskrune(v11, 0x4000uLL) : *(v10 + 4 * v11 + 60) & 0x4000))
      {
        break;
      }

      uTF8String = ++v36;
    }

    if (!*v36)
    {
      break;
    }

    v13 = [self parseCommand:&v36];
    v14 = v13;
    if (v13 == -1)
    {
      break;
    }

    v15 = EshPathCommand::paramsPerCommand(v13);
    v16 = 1;
    v17 = 1;
    while (1)
    {
      if (v15 >= 1)
      {
        LOWORD(v18) = 0;
        v19 = v17;
        do
        {
          [self parseParam:&v36 first:v19 & 1];
          v20 = v39;
          if (v39 >= v40)
          {
            v21 = std::vector<EshComputedValue,ChAllocator<EshComputedValue>>::__emplace_back_slow_path<EshComputedValue const&>(&__p, &v35);
          }

          else
          {
            *v39 = v35;
            v21 = (v20 + 1);
          }

          v17 = 0;
          v19 = 0;
          v39 = v21;
          v18 = (v18 + 1);
        }

        while (v18 < v15);
      }

      for (i = v36; ; i = ++v36)
      {
        v23 = *i;
        if (!((v23 & 0x80000000) != 0 ? __maskrune(v23, 0x4000uLL) : *(v10 + 4 * v23 + 60) & 0x4000))
        {
          break;
        }
      }

      v25 = *v36;
      if ((v25 & 0x80000000) != 0 ? __maskrune(v25, 0x100uLL) : *(v10 + 4 * v25 + 60) & 0x100)
      {
        break;
      }

      v27 = *v36;
      if (!*v36)
      {
        break;
      }

      v28 = (v27 & 0x80000000) != 0 ? __maskrune(v27, 0x4000uLL) : *(v10 + 4 * v27 + 60) & 0x4000;
      if (!v28 && v15 == 0)
      {
        v30 = *v36;
        v31 = (v30 & 0x80000000) != 0 ? __maskrune(v30, 0x100uLL) : *(v10 + 4 * v30 + 60) & 0x100;
        if (!v31 && *v36)
        {
          break;
        }
      }

      ++v16;
    }

    LOWORD(v35) = v16;
    HIDWORD(v35) = v14;
    v32 = v43;
    if (v43 >= v44)
    {
      v33 = std::vector<EshPathCommand,ChAllocator<EshPathCommand>>::__emplace_back_slow_path<EshPathCommand const&>(&v42, &v35);
    }

    else
    {
      *v43 = v35;
      v33 = (v32 + 1);
    }

    v43 = v33;
    v9 = 1;
    uTF8String = v36;
  }

  if (v9)
  {
    [OABShapeGeometry readFromPathCommands:&v41 pathParams:&v37 toGeometry:geometryCopy];
  }

  v37 = &unk_286EC4E08;
  if (__p)
  {
    v39 = __p;
    operator delete(__p);
  }

  v41 = &unk_286EC4F48;
  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }
}

+ (void)writePath:(id)path toString:(id)string
{
  pathCopy = path;
  stringCopy = string;
  elementCount = [pathCopy elementCount];
  v7 = elementCount;
  if (elementCount)
  {
    v8 = 0;
    v57 = elementCount;
    v58 = stringCopy;
    while (1)
    {
      v9 = [pathCopy elementAtIndex:v8];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      [stringCopy appendString:@"X"];
LABEL_57:
      [stringCopy appendString:@" "];

      if (v7 == ++v8)
      {
        goto LABEL_71;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      toPoint = [v9 toPoint];
      v12 = v11;
      relative = [v9 relative];
      v14 = @"M";
      if (relative)
      {
        v14 = @"T";
      }

      v15 = v14;
      if (toPoint)
      {
        v16 = @"@";
      }

      else
      {
        v16 = &stru_286EE1130;
      }

      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%d", v16, HIDWORD(toPoint)];
      v18 = MEMORY[0x277CCACA8];
      if (v12)
      {
        v19 = @"@";
      }

      else
      {
        v19 = &stru_286EE1130;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        toPoint2 = [v9 toPoint];
        v12 = v21;
        relative2 = [v9 relative];
        v23 = @"L";
        if (relative2)
        {
          v23 = @"R";
        }

        v15 = v23;
        if (toPoint2)
        {
          v24 = @"@";
        }

        else
        {
          v24 = &stru_286EE1130;
        }

        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%d", v24, HIDWORD(toPoint2)];
        v18 = MEMORY[0x277CCACA8];
        if (v12)
        {
          v19 = @"@";
        }

        else
        {
          v19 = &stru_286EE1130;
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          controlPoint1 = [v9 controlPoint1];
          v27 = v26;
          controlPoint2 = [v9 controlPoint2];
          v30 = v29;
          toPoint3 = [v9 toPoint];
          v56 = v32;
          relative3 = [v9 relative];
          v34 = @"C";
          if (relative3)
          {
            v34 = @"V";
          }

          v15 = v34;
          if (controlPoint1)
          {
            v35 = @"@";
          }

          else
          {
            v35 = &stru_286EE1130;
          }

          v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%d", v35, HIDWORD(controlPoint1)];
          if (v27)
          {
            v36 = @"@";
          }

          else
          {
            v36 = &stru_286EE1130;
          }

          v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%d", v36, HIDWORD(v27)];
          if (controlPoint2)
          {
            v38 = @"@";
          }

          else
          {
            v38 = &stru_286EE1130;
          }

          v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%d", v38, HIDWORD(controlPoint2)];
          if (v30)
          {
            v40 = @"@";
          }

          else
          {
            v40 = &stru_286EE1130;
          }

          v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%d", v40, HIDWORD(v30)];
          if (toPoint3)
          {
            v42 = @"@";
          }

          else
          {
            v42 = &stru_286EE1130;
          }

          v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%d", v42, HIDWORD(toPoint3)];
          if (v56)
          {
            v44 = @"@";
          }

          else
          {
            v44 = &stru_286EE1130;
          }

          v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%d", v44, HIDWORD(v56)];
          [v58 appendFormat:@"%@ %@, %@ %@, %@ %@, %@", v15, v17, v37, v39, v41, v43, v45];

          goto LABEL_55;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            goto LABEL_57;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                objc_opt_class();
                objc_opt_isKindOfClass();
              }
            }

            goto LABEL_57;
          }

          controlPoint = [v9 controlPoint];
          v53 = v52;
          if (controlPoint)
          {
            v54 = @"@";
          }

          else
          {
            v54 = &stru_286EE1130;
          }

          v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%d", v54, HIDWORD(controlPoint)];
          if (v53)
          {
            v55 = @"@";
          }

          else
          {
            v55 = &stru_286EE1130;
          }

          v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%d", v55, HIDWORD(v53)];
          [v58 appendFormat:@"QB %@, %@", v15, v17];
          goto LABEL_56;
        }

        toPoint4 = [v9 toPoint];
        v12 = v47;
        startsVertical = [v9 startsVertical];
        v49 = @"QX";
        if (startsVertical)
        {
          v49 = @"QY";
        }

        v15 = v49;
        if (toPoint4)
        {
          v50 = @"@";
        }

        else
        {
          v50 = &stru_286EE1130;
        }

        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%d", v50, HIDWORD(toPoint4)];
        v18 = MEMORY[0x277CCACA8];
        if (v12)
        {
          v19 = @"@";
        }

        else
        {
          v19 = &stru_286EE1130;
        }
      }
    }

    v37 = [v18 stringWithFormat:@"%@%d", v19, HIDWORD(v12)];
    [v58 appendFormat:@"%@ %@, %@", v15, v17, v37];
LABEL_55:

LABEL_56:
    v7 = v57;
    stringCopy = v58;
    goto LABEL_57;
  }

LABEL_71:
  if (([pathCopy stroked] & 1) == 0)
  {
    [stringCopy appendString:@"NS "];
  }

  if (![pathCopy fillMode])
  {
    [stringCopy appendString:@"NF "];
  }

  [stringCopy appendString:@"E"];
}

@end