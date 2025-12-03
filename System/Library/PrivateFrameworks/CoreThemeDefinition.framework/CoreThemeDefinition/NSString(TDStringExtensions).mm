@interface NSString(TDStringExtensions)
- (uint64_t)td_stringByStandardizingPath;
@end

@implementation NSString(TDStringExtensions)

- (uint64_t)td_stringByStandardizingPath
{
  v44 = *MEMORY[0x277D85DE8];
  v41 = [self length];
  [objc_msgSend(self "stringByExpandingTildeInPath")];
  __CUITransmutePathSlashes(&v42, &v41);
  v2 = v41;
  if (v41 < 2)
  {
    v5 = 0;
  }

  else if (*(&v41 + v41 + 3) == 47)
  {
    while (v2 > 2)
    {
      v3 = v2 - 1;
      v4 = *(&v41 + v2-- + 2);
      if (v4 != 47)
      {
        goto LABEL_8;
      }
    }

    v5 = 0;
    v2 = 1;
  }

  else
  {
    v3 = v41;
LABEL_8:
    v5 = v42 == 92 && v43[0] == 92;
    v2 = v3;
  }

  HasDotDot = _pathHasDotDot(&v42, v2, v5);
  v7 = -2 * v2;
  do
  {
    v8 = v2;
    v9 = v7;
    if (v5)
    {
      if (v2 <= 4)
      {
        v41 = v2;
LABEL_28:
        v15 = 3;
        goto LABEL_32;
      }
    }

    else if (v2 < 3)
    {
      v41 = v2;
      if (v2 != 2)
      {
        goto LABEL_103;
      }

      goto LABEL_23;
    }

    v10 = &v43[v2 - 1];
    if (*(v10 - 2) != 47)
    {
      break;
    }

    v11 = *(v10 - 1);
    v7 = v9 + 4;
    v2 -= 2;
  }

  while (v11 == 46);
  v41 = v8;
  if (v5)
  {
    goto LABEL_28;
  }

LABEL_23:
  if (v43[0] == 47)
  {
    v12 = 0;
    while (v43[v12 - 1] == 46)
    {
      v13 = v12 + 2;
      v14 = v43[v12 + 2];
      v12 += 2;
      if (v14 != 47)
      {
        goto LABEL_30;
      }
    }

    v13 = v12;
    if (!v12)
    {
      goto LABEL_31;
    }

LABEL_30:
    v8 -= v13;
    v41 = v8;
    __memmove_chk();
  }

LABEL_31:
  v15 = 0;
LABEL_32:
  if (v8 >= 3 && v15 < v8 - 2)
  {
    do
    {
      v16 = &v43[v15 - 1];
      if (*v16 == 47 && v16[1] == 46 && v16[2] == 47)
      {
        memmove(v16 + 1, v16 + 3, 2 * (v8 - v15) - 6);
        v8 -= 2;
        --v15;
      }

      if (v8 < 3)
      {
        break;
      }

      ++v15;
    }

    while (v15 < v8 - 2);
    v41 = v8;
  }

  v17 = HasDotDot ^ 1;
  if (v8 < 3)
  {
    v17 = 1;
  }

  if ((v17 & 1) == 0)
  {
    v40 = &v41 + 6;
    v18 = v8;
    do
    {
      if (v5)
      {
        v19 = 3;
        if (v18 >= 4)
        {
          while (v43[v19 - 1] != 47)
          {
            if (v18 == ++v19)
            {
              v19 = v18;
              break;
            }
          }
        }

        if (v18 <= v19 + 1)
        {
          v20 = v19 + 1;
        }

        else
        {
          v20 = v18;
        }

        while (1)
        {
          v21 = v19 + 1;
          if (v19 + 1 >= v18)
          {
            break;
          }

          v22 = v43[v19++];
          if (v22 == 47)
          {
            goto LABEL_58;
          }
        }

        v21 = v20;
      }

      else
      {
        v21 = 0;
      }

LABEL_58:
      v23 = v18 - 2;
      v24 = v18 > 2;
      if (v18 < 3 || v21 >= v23)
      {
        v25 = v8;
        v26 = v18;
        v27 = v18;
      }

      else
      {
        v25 = v8;
        v26 = v18;
        v27 = v18;
        v28 = &v43[v21 - 1];
        do
        {
          if (v27 != 3 && v21 < v27 - 4 && *v28 == 47 && v28[1] == 46 && v28[2] == 46 && v28[3] == 47)
          {
            memmove(v28 + 1, v28 + 4, 2 * (v27 - v21) - 8);
            v25 -= 3;
            v26 = v25;
            v27 = v25;
            v29 = v21 - 1;
          }

          else
          {
            v29 = v21;
          }

          if (v27 >= 3 && v29 == v27 - 3)
          {
            v30 = &v43[v29 - 1];
            if (*v30 == 47 && v30[1] == 46 && v30[2] == 46)
            {
              v25 = v27 - 2;
              v26 = v27 - 2;
              v27 -= 2;
            }
          }

          v23 = v27 - 2;
          v24 = v27 > 2;
          if (v27 < 3)
          {
            break;
          }

          v31 = v29 + 1;
          if (v21 != v31)
          {
            break;
          }
        }

        while (v31 < v23);
      }

      if (v24 && v21 < v27)
      {
        do
        {
          v8 = v21 + 1;
          if (v21 + 1 >= v23)
          {
            break;
          }

          v32 = 0;
          v33 = 2 * (v27 - 5 - v21);
          v34 = &v43[v21 + 2];
          while (*(v34 - 2) != 47)
          {
            ++v32;
            v33 -= 2;
            ++v34;
            if (!(1 - v23 + v21 + v32))
            {
              goto LABEL_97;
            }
          }

          v35 = v21 + v32 + 1;
          if (v27 >= 4 && v35 < v27 - 4 && *(v34 - 1) == 46 && *v34 == 46 && v34[1] == 47)
          {
            v8 = v27 - v32 - 4;
            memmove(&v43[v21], v34 + 2, v33);
            v18 = v8;
            goto LABEL_98;
          }

          if (!(v21 + v32 + 4 - v27) && *(&v41 + v27 + 1) == 47 && *(&v41 + v27 + 2) == 46)
          {
            v18 = v21 + 1;
            if (v43[v27 - 2] == 46)
            {
              goto LABEL_98;
            }
          }

          v21 += v32 + 1;
        }

        while (v35 < v27);
      }

LABEL_97:
      v8 = v25;
      v18 = v26;
LABEL_98:
      ;
    }

    while (_pathHasDotDot(&v42, v18, v5) && v18 > 2);
    v41 = v8;
  }

LABEL_103:
  __CUITransmutePathSlashes(&v42, &v41);
  v36 = v41;
  if (v41 >= 2 && *(&v41 + v41 + 3) == 47)
  {
    do
    {
      if (v36 <= 2)
      {
        break;
      }

      v37 = *(&v41 + v36-- + 2);
    }

    while (v37 == 47);
  }

  result = [MEMORY[0x277CCACA8] stringWithCharacters:&v42 length:v40];
  v39 = *MEMORY[0x277D85DE8];
  return result;
}

@end