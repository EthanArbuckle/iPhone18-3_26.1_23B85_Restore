@interface NSDate(MFDateUtils)
+ (uint64_t)mf_copyDateInCommonFormatsWithString:()MFDateUtils;
@end

@implementation NSDate(MFDateUtils)

+ (uint64_t)mf_copyDateInCommonFormatsWithString:()MFDateUtils
{
  v80 = *MEMORY[0x1E69E9840];
  v3 = a3;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v79[14] = v4;
  v79[15] = v4;
  v79[12] = v4;
  v79[13] = v4;
  v79[10] = v4;
  v79[11] = v4;
  v79[8] = v4;
  v79[9] = v4;
  v79[6] = v4;
  v79[7] = v4;
  v79[4] = v4;
  v79[5] = v4;
  v79[2] = v4;
  v79[3] = v4;
  v79[0] = v4;
  v79[1] = v4;
  v81.length = [(__CFString *)v3 length];
  length = v81.length;
  v81.location = 0;
  MFStringGetBytes(v3, v81, 0x600u, 0, 0, v79, 256, &length);
  v5 = length;
  if (!length)
  {
    goto LABEL_173;
  }

  v6 = 0;
  if (length == 256)
  {
    v5 = 255;
  }

  *(v79 + v5) = 0;
  v7 = MEMORY[0x1E69E9830];
  while (1)
  {
    v8 = *(v79 + v6);
    if (*(v79 + v6) < 0)
    {
      break;
    }

    if ((*(v7 + 4 * *(v79 + v6) + 60) & 0x4000) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    ++v6;
  }

  if (__maskrune(*(v79 + v6), 0x4000uLL))
  {
    goto LABEL_9;
  }

LABEL_10:
  v9 = v8 - 48;
  if ((v8 - 48) < 0xA)
  {
    v10 = -1;
    goto LABEL_29;
  }

  v11 = 0;
  v12 = kDayStrs;
  while (1)
  {
    v13 = strlen(*v12);
    if (!memcmp(*v12, v79 + v6, v13))
    {
      break;
    }

    --v11;
    ++v12;
    if (v11 == -14)
    {
      goto LABEL_173;
    }
  }

  v14 = v6 + v13;
  v15 = v6 + v13 - 1;
  do
  {
    v6 = v14;
    v16 = v15;
    v17 = *(v79 + v14);
    v18 = *(v79 + v14);
    if (v17 < 0)
    {
      v19 = __maskrune(*(v79 + v14), 0x4000uLL);
    }

    else
    {
      v19 = *(v7 + 4 * v17 + 60) & 0x4000;
    }

    ++v14;
    v15 = v16 + 1;
  }

  while (v18 == 44 || v19 != 0);
  if (-v11 >= 7)
  {
    v10 = -7 - v11;
  }

  else
  {
    v10 = -v11;
  }

  v9 = v17 - 48;
  if (v9 < 0xA)
  {
LABEL_29:
    LODWORD(v21) = -1;
    goto LABEL_30;
  }

  v21 = 0;
  while (1)
  {
    v29 = strlen(kMonthStrs[v21]);
    if (!memcmp(kMonthStrs[v21], v79 + v6, v29))
    {
      break;
    }

    if (++v21 == 12)
    {
      goto LABEL_173;
    }
  }

  v6 = v16 + v29;
  v37 = v79 + v29 - 1;
  do
  {
    v38 = v37[v14];
    if (v38 < 0)
    {
      v39 = __maskrune(v37[v14], 0x4000uLL);
    }

    else
    {
      v39 = *(v7 + 4 * v38 + 60) & 0x4000;
    }

    ++v37;
    ++v6;
  }

  while (v39);
  v9 = v38 - 48;
  if (v9 > 9)
  {
    goto LABEL_173;
  }

LABEL_30:
  LODWORD(v22) = 0;
  v23 = 1;
  do
  {
    v22 = v9 + 10 * v22;
    v24 = *(v79 + ++v6);
    if ((v23 & 1) == 0)
    {
      break;
    }

    v23 = 0;
    v9 = v24 - 48;
  }

  while ((v24 - 48) < 0xA);
  if ((v24 & 0x80) == 0)
  {
    goto LABEL_37;
  }

LABEL_36:
  for (i = __maskrune(v24, 0x4000uLL); v24 == 45 || i; i = *(v7 + 4 * v24 + 60) & 0x4000)
  {
    v25 = v79 + v6++;
    v24 = v25[1];
    if ((v24 & 0x80) != 0)
    {
      goto LABEL_36;
    }

LABEL_37:
    ;
  }

  if (v21 == -1)
  {
    v21 = 0;
    while (1)
    {
      v28 = strlen(kMonthStrs[v21]);
      if (!memcmp(kMonthStrs[v21], v79 + v6, v28))
      {
        break;
      }

      if (++v21 == 12)
      {
        goto LABEL_173;
      }
    }

    v30 = v79 + v6 + v28;
    v6 = v6 + v28 - 1;
    do
    {
      v24 = *v30;
      if (*v30 < 0)
      {
        v31 = __maskrune(*v30, 0x4000uLL);
      }

      else
      {
        v31 = *(v7 + 4 * v24 + 60) & 0x4000;
      }

      ++v30;
      ++v6;
    }

    while (v24 == 45 || v31 != 0);
    v33 = v24 - 48;
    if ((v24 - 48) > 9)
    {
      LODWORD(v27) = 0;
    }

    else
    {
      LODWORD(v27) = 0;
      v34 = 0;
      do
      {
        LODWORD(v27) = v33 + 10 * v27;
        v35 = *v30++;
        v24 = v35;
        ++v6;
        v33 = v35 - 48;
      }

      while (v35 - 48 <= 9 && v34++ < 3);
    }

    if ((v24 & 0x80) == 0)
    {
      goto LABEL_80;
    }

    while (__maskrune(v24, 0x4000uLL))
    {
      while (1)
      {
        v24 = *(v79 + ++v6);
        if ((v24 & 0x80) != 0)
        {
          break;
        }

LABEL_80:
        if ((*(v7 + 4 * v24 + 60) & 0x4000) == 0)
        {
          goto LABEL_81;
        }
      }
    }
  }

  else
  {
    LODWORD(v27) = -1;
  }

LABEL_81:
  v40 = v24 - 48;
  if (v40 > 9)
  {
    v41 = 0;
  }

  else
  {
    v41 = 0;
    v42 = 1;
    do
    {
      v41 = v40 + 10 * v41;
      v24 = *(v79 + ++v6);
      if ((v42 & 1) == 0)
      {
        break;
      }

      v42 = 0;
      v40 = v24 - 48;
    }

    while ((v24 - 48) < 0xA);
  }

  if (v24 != 58)
  {
    goto LABEL_173;
  }

  v77 = v10;
  v43 = *(v79 + v6 + 1);
  v44 = v43 - 48;
  if ((v43 - 48) > 9)
  {
    v45 = 0;
  }

  else
  {
    v45 = 0;
    v46 = 1;
    do
    {
      v45 = v44 + 10 * v45;
      v43 = *(v79 + v6++ + 2);
      if ((v46 & 1) == 0)
      {
        break;
      }

      v46 = 0;
      v44 = v43 - 48;
    }

    while ((v43 - 48) < 0xA);
  }

  if (v43 != 58)
  {
    goto LABEL_173;
  }

  v47 = v6 + 2;
  v48 = *(v79 + v6 + 2) - 48;
  if (v48 > 9)
  {
    v76 = 0;
  }

  else
  {
    v47 = v6 + 3;
    v49 = *(v79 + v6 + 3) - 48;
    if (v49 < 0xA)
    {
      v48 = v49 + 10 * v48;
    }

    v76 = v48;
    if (v49 < 0xA)
    {
      v47 = v6 + 4;
    }
  }

  v50 = v47 + 1;
  v51 = *(v79 + v47 + 1);
  if (v27 == -1)
  {
    v52 = v79 + v47 + 2;
    if ((v51 & 0x80) == 0)
    {
      goto LABEL_108;
    }

    while (__maskrune(v51, 0x4000uLL))
    {
      while (1)
      {
        ++v50;
        v53 = *v52++;
        v51 = v53;
        if ((v53 & 0x80) != 0)
        {
          break;
        }

LABEL_108:
        if ((*(v7 + 4 * v51 + 60) & 0x4000) == 0)
        {
          goto LABEL_109;
        }
      }
    }

LABEL_109:
    v54 = v51 - 48;
    if (v54 > 9)
    {
      LODWORD(v27) = 0;
    }

    else
    {
      v55 = 0;
      LODWORD(v27) = 0;
      do
      {
        v56 = *v52++;
        v51 = v56;
        LODWORD(v27) = v54 + 10 * v27;
        v54 = v56 - 48;
        v57 = v55 + 1;
      }

      while (v56 - 48 <= 9 && v55++ < 3);
      v50 += v57;
    }
  }

  if ((v51 & 0x80) == 0)
  {
    goto LABEL_123;
  }

  while (__maskrune(v51, 0x4000uLL))
  {
    while (1)
    {
      ++v50;
      v51 = *(v79 + v50);
      if ((v51 & 0x80) != 0)
      {
        break;
      }

LABEL_123:
      if ((*(v7 + 4 * v51 + 60) & 0x4000) == 0)
      {
        goto LABEL_124;
      }
    }
  }

LABEL_124:
  if (v51)
  {
    if (v51 == 45 || v51 == 43)
    {
      v59 = *(v79 + v50 + 1) - 48;
      if (v59 > 9)
      {
        v60 = 0;
      }

      else
      {
        v60 = 0;
        v61 = 0;
        v62 = v79 + 2;
        do
        {
          v60 = v59 + 10 * v60;
          v59 = v62[v50] - 48;
          v63 = v59 > 9 || v61++ >= 3;
          ++v62;
        }

        while (!v63);
      }

      v64 = 60 * (v60 % 100) + 3600 * (v60 / 100);
      if (v51 == 45)
      {
        v64 = -v64;
      }

      v65 = v64;
      goto LABEL_145;
    }

    if (*(v79 + v50) != 19783 || *(v79 + v50 + 2) != 84)
    {
      goto LABEL_173;
    }
  }

  v65 = 0;
LABEL_145:
  if (v27 >= 100)
  {
    v27 = v27;
  }

  else
  {
    v27 = (v27 + 1900);
  }

  if ((v22 - 32) < 0xFFFFFFE1)
  {
    goto LABEL_173;
  }

  if (v21 == 1)
  {
    if (v22 == 29)
    {
      if ((v27 & 3) != 0)
      {
        goto LABEL_173;
      }

      HIDWORD(v67) = -1030792151 * v27 + 85899344;
      LODWORD(v67) = HIDWORD(v67);
      if ((v67 >> 2) <= 0x28F5C28)
      {
        if (v27 % 400)
        {
          goto LABEL_173;
        }
      }
    }

    else if (v22 > 0x1C)
    {
      goto LABEL_173;
    }
  }

  else if (v22 == 31 && (v21 - 3) < 8 && ((0xA5u >> (v21 - 3)) & 1) != 0)
  {
    goto LABEL_173;
  }

  if ((v27 - 2100) >= 0xFFFFFF39 && ((v27 & 3) == 0 ? (v68 = v21 < 2) : (v68 = 0), v68 ? (v69 = -2) : (v69 = -1), v77 == (v27 - 1900 + v22 + ((v27 - 1900) >> 2) + v69 + monthStarts[v21]) % 7))
  {
    date = 0;
    if (v41 <= 23 && v45 <= 59 && v76 <= 59)
    {
      if (v51)
      {
        [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:v65];
      }

      else
      {
        [MEMORY[0x1E695DFE8] systemTimeZone];
      }
      v73 = ;
      v74 = objc_alloc_init(MEMORY[0x1E695DF10]);
      v75 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
      [v74 setCalendar:v75];

      [v74 setYear:v27];
      [v74 setMonth:v21 + 1];
      [v74 setDay:v22];
      [v74 setHour:v41];
      [v74 setMinute:v45];
      [v74 setSecond:v76];
      [v74 setTimeZone:v73];
      date = [v74 date];
    }
  }

  else
  {
LABEL_173:
    date = 0;
  }

  if (!date)
  {
    date = [MEMORY[0x1E695DF00] mf_copyLenientDateInCommonFormatsWithString:v3];
  }

  v71 = *MEMORY[0x1E69E9840];
  return date;
}

@end