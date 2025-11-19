uint64_t apply_ml4_criteria(unsigned __int16 *a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v3 = *a1;
  if (v3 >= 0xC)
  {
    LOWORD(v3) = 12;
  }

  *a1 = v3;
  v4 = *a2;
  if (v4 <= 0x333)
  {
    LOWORD(v4) = 819;
  }

  *a2 = v4;
  v5 = *a3;
  if (v5 <= 0x821)
  {
    LOWORD(v5) = 2081;
  }

  *a3 = v5;
  if (*a2 >= (v5 - 1))
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = *a2;
  }

  *a2 = v6;
  return 0;
}

void cubicSplineInterp(double a1, float a2, double a3, double a4, float a5)
{
  v10 = *MEMORY[0x277D85DE8];
  if ((a5 - a2) == 0.0)
  {
    if (enableLogInstance)
    {
      if (logInstanceID)
      {
        v5 = logInstanceID;
      }

      else
      {
        v5 = prevLogInstanceID;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v8 = 134217984;
        v9 = WORD1(v5);
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx WARNING: cubicSplineInterp: delta == 0", &v8, 0xCu);
      }

      prevLogInstanceID = v5;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] WARNING: cubicSplineInterp: delta == 0", &v8, 2u);
    }

    v7 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v6 = *MEMORY[0x277D85DE8];
  }
}

void calcCubicSplineParam(uint64_t a1, float a2, float a3, float a4, float a5, float a6, float a7)
{
  v13 = *MEMORY[0x277D85DE8];
  v7 = a5 - a2;
  *a1 = a3;
  if (v7 == 0.0)
  {
    *(a1 + 8) = 0;
    *(a1 + 4) = 0;
    if (enableLogInstance)
    {
      if (logInstanceID)
      {
        v8 = logInstanceID;
      }

      else
      {
        v8 = prevLogInstanceID;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v11 = 134217984;
        v12 = WORD1(v8);
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx WARNING: calcCubicSplineParam: delta == 0", &v11, 0xCu);
      }

      prevLogInstanceID = v8;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] WARNING: calcCubicSplineParam: delta == 0", &v11, 2u);
    }
  }

  else
  {
    v9 = (((a3 - a6) + (a3 - a6)) + ((a4 + a7) * v7)) / (v7 * (v7 * v7));
    *(a1 + 12) = v9;
    *(a1 + 4) = a4;
    *(a1 + 8) = ((a7 - a4) + ((v7 * (v9 * -3.0)) * v7)) / (v7 + v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

float calcLineParam(float *a1, float *a2, float a3, float a4, float a5)
{
  *a1 = a5;
  result = a4 - (a3 * a5);
  *a2 = result;
  return result;
}

uint64_t DumpVDbl(FILE *a1, const char *a2, int a3, uint64_t a4)
{
  result = fprintf(a1, "\n%s\n", a2);
  if (a3 < 6)
  {
    if (a3 < 1)
    {
      return result;
    }
  }

  else
  {
    fwrite("idx\n", 4uLL, 1uLL, a1);
  }

  v8 = 0;
  do
  {
    if (a3 >= 6)
    {
      fprintf(a1, "%3d", v8);
    }

    if (v8 < a3)
    {
      v9 = 0;
      v10 = v8 + 1;
      v11 = a4 + 4 * v8;
      do
      {
        fprintf(a1, "\t%0.7lf", *(v11 + 4 * v9));
        ++v8;
        if (v9 > 3)
        {
          break;
        }

        ++v9;
      }

      while (v10++ < a3);
    }

    result = fputc(10, a1);
  }

  while (v8 < a3);
  return result;
}

size_t DumpVDblMatlab(FILE *a1, const char *a2, int a3, uint64_t a4)
{
  fprintf(a1, "\n%s = [...\n", a2);
  if (a3 >= 1)
  {
    LODWORD(v7) = 0;
    do
    {
      v8 = 0;
      v7 = v7;
      do
      {
        fprintf(a1, "%0.7lf, ", *(a4 + 4 * v7++));
        if (v8 > 3)
        {
          break;
        }

        ++v8;
      }

      while (v7 < a3);
      fwrite("...\n", 4uLL, 1uLL, a1);
    }

    while (v7 < a3);
  }

  return fwrite("];\n", 3uLL, 1uLL, a1);
}

uint64_t DumpM33Dbl(FILE *a1, const char *a2, float *a3)
{
  fprintf(a1, "\n%s\n", a2);
  fprintf(a1, "\t%4.7lf %4.7lf %4.7lf\n", *a3, a3[1], a3[2]);
  fprintf(a1, "\t%4.7lf %4.7lf %4.7lf\n", a3[3], a3[4], a3[5]);
  return fprintf(a1, "\t%4.7lf %4.7lf %4.7lf\n", a3[6], a3[7], a3[8]);
}

uint64_t DumpM33DblMatlab(FILE *a1, const char *a2, float *a3)
{
  fprintf(a1, "\n%s = [...\n", a2);
  fprintf(a1, "\t%4.7lf, %4.7lf, %4.7lf\n;...", *a3, a3[1], a3[2]);
  fprintf(a1, "\t%4.7lf, %4.7lf, %4.7lf\n;...", a3[3], a3[4], a3[5]);
  return fprintf(a1, "\t%4.7lf, %4.7lf, %4.7lf]\n;", a3[6], a3[7], a3[8]);
}

BOOL hasHdr10TonemapConfigChanged(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 20) != *(a1 + 32) || *(a2 + 28) != *(a1 + 40) || *(a2 + 24) != *(a1 + 36) || *(a2 + 32) != *(a1 + 44) || *(a2 + 36) != *(a1 + 48) || *(a2 + 44) != *(a1 + 56) || *(a2 + 48) != *(a1 + 60) || *(a2 + 52) != *(a1 + 64) || *(a2 + 60) != *(a1 + 72) || *(a2 + 64) != *(a1 + 76))
  {
    return 1;
  }

  if (*(a2 + 68) != *(a1 + 80))
  {
    return 1;
  }

  if (*(a2 + 76) != *(a1 + 88))
  {
    return 1;
  }

  if (*(a2 + 80) != *(a1 + 92))
  {
    return 1;
  }

  v5 = *(a2 + 84);
  if (v5 != *(a1 + 96))
  {
    return 1;
  }

  if (v5 > 1)
  {
    if (v5 == 2)
    {
      if (*(a2 + 88) != *(a1 + 100) || *(a2 + 92) != *(a1 + 104) || *(a2 + 96) != *(a1 + 108) || *(a2 + 100) != *(a1 + 112))
      {
        return 1;
      }
    }

    else if (v5 == 4 && memcmp((a1 + 100), (a2 + 88), 0x54uLL))
    {
      return 1;
    }
  }

  else if (v5)
  {
    if (v5 == 1)
    {
      v6 = *(a2 + 88);
      if (v6 != *(a1 + 100))
      {
        return 1;
      }

      if (*(a2 + 88))
      {
        v7 = 0;
        v8 = a2 + 92;
        v9 = a1 + 104;
        v10 = a2 + 116;
        v11 = a1 + 128;
        v12 = a2 + 164;
        v13 = a1 + 176;
        v14 = (a2 + 176);
        v15 = (a1 + 188);
        while (*(v8 + 4 * v7) == *(v9 + 4 * v7))
        {
          if (*(v10 + 4 * v7) != *(v11 + 4 * v7))
          {
            break;
          }

          v16 = *(v12 + 2 * v7);
          if (v16 != *(v13 + 2 * v7))
          {
            break;
          }

          if (*(v12 + 2 * v7))
          {
            v17 = v14;
            v18 = v15;
            while (*v17 == *v18)
            {
              ++v18;
              ++v17;
              if (!--v16)
              {
                goto LABEL_29;
              }
            }

            return 1;
          }

LABEL_29:
          ++v7;
          v15 += 14;
          v14 += 14;
          if (v7 == v6)
          {
            goto LABEL_47;
          }
        }

        return 1;
      }
    }
  }

  else
  {
    v19 = *(a2 + 88);
    if (v19 != *(a1 + 100))
    {
      return 1;
    }

    if (*(a2 + 88))
    {
      v20 = (a2 + 92);
      v21 = (a1 + 104);
      while (*v20 == *v21 && v20[6] == v21[6] && v20[12] == v21[12])
      {
        ++v20;
        ++v21;
        if (!--v19)
        {
          goto LABEL_47;
        }
      }

      return 1;
    }
  }

LABEL_47:
  v22 = *(a3 + 2);
  if (v22 != *(a1 + 1434))
  {
    return 1;
  }

  if (*(a3 + 2))
  {
    v23 = (a3 + 20);
    v24 = (a1 + 1468);
    while (*(v23 - 4) == *(v24 - 8) && *v23 == *(v24 - 4) && v23[4] == *v24)
    {
      ++v24;
      ++v23;
      if (!--v22)
      {
        goto LABEL_54;
      }
    }

    return 1;
  }

LABEL_54:
  if (*(a3 + 168) != *(a1 + 1600) || *(a3 + 168) && (*(a3 + 172) != *(a1 + 1604) || *(a3 + 176) != *(a1 + 1608) || *(a3 + 184) != *(a1 + 1616) || *(a3 + 180) != *(a1 + 1612) || *(a3 + 188) != *(a1 + 1620) || *(a3 + 192) != *(a1 + 1624) || *(a3 + 196) != *(a1 + 1628) || *(a3 + 200) != *(a1 + 1632) || *(a3 + 204) != *(a1 + 1636) || *(a3 + 208) != *(a1 + 1640) || *(a3 + 212) != *(a1 + 1644) || *(a3 + 216) != *(a1 + 1648) || *(a3 + 220) != *(a1 + 1652) || *(a3 + 224) != *(a1 + 1656) || *(a3 + 228) != *(a1 + 1660)))
  {
    return 1;
  }

  v25 = *(a4 + 2);
  if (v25 != *(a1 + 1666))
  {
    return 1;
  }

  if (*(a4 + 2))
  {
    v26 = (a1 + 1668);
    v27 = (a4 + 16);
    while (*(v27 - 3) == *v26 && *v27 == v26[3] && v27[3] == v26[6])
    {
      ++v26;
      ++v27;
      if (!--v25)
      {
        goto LABEL_78;
      }
    }

    return 1;
  }

LABEL_78:
  if (*(a4 + 40) != *(a1 + 1704))
  {
    return 1;
  }

  return *(a4 + 44) != *(a1 + 1708);
}

__n128 updateHdr10TonemapConfig(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  memcpy((a1 + 12), a2, 0x58CuLL);
  v8 = *(a3 + 16);
  v7 = *(a3 + 32);
  *(a1 + 1432) = *a3;
  *(a1 + 1448) = v8;
  *(a1 + 1464) = v7;
  v9 = *(a3 + 96);
  v11 = *(a3 + 48);
  v10 = *(a3 + 64);
  *(a1 + 1512) = *(a3 + 80);
  *(a1 + 1528) = v9;
  *(a1 + 1480) = v11;
  *(a1 + 1496) = v10;
  v12 = *(a3 + 160);
  v14 = *(a3 + 112);
  v13 = *(a3 + 128);
  *(a1 + 1576) = *(a3 + 144);
  *(a1 + 1592) = v12;
  *(a1 + 1544) = v14;
  *(a1 + 1560) = v13;
  v16 = *(a3 + 192);
  v15 = *(a3 + 208);
  v17 = *(a3 + 176);
  *(a1 + 1656) = *(a3 + 224);
  *(a1 + 1624) = v16;
  *(a1 + 1640) = v15;
  *(a1 + 1608) = v17;
  *(a1 + 1664) = *a4;
  v18 = *(a4 + 16);
  v19 = *(a4 + 32);
  v20 = *(a4 + 48);
  *(a1 + 1728) = *(a4 + 64);
  *(a1 + 1712) = v20;
  *(a1 + 1696) = v19;
  *(a1 + 1680) = v18;
  result = *(a4 + 80);
  v22 = *(a4 + 96);
  v23 = *(a4 + 112);
  *(a1 + 1792) = *(a4 + 128);
  *(a1 + 1776) = v23;
  *(a1 + 1760) = v22;
  *(a1 + 1744) = result;
  return result;
}

__n128 updateHlgTonemapConfig(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2[72];
  *(a1 + 8) = a2[53];
  v6 = a2[58];
  *a1 = v5;
  *(a1 + 4) = v6;
  result.n128_u32[0] = a2[71];
  *(a1 + 1844) = result.n128_u32[0];
  v8 = *(a3 + 1424);
  *(a1 + 1848) = v8;
  if (v8 == 1)
  {
    memcpy((a1 + 12), (a3 + 4), 0x58CuLL);
    v13 = *(a4 + 16);
    v12 = *(a4 + 32);
    *(a1 + 1432) = *a4;
    *(a1 + 1448) = v13;
    *(a1 + 1464) = v12;
    v14 = *(a4 + 96);
    v16 = *(a4 + 48);
    v15 = *(a4 + 64);
    *(a1 + 1512) = *(a4 + 80);
    *(a1 + 1528) = v14;
    *(a1 + 1480) = v16;
    *(a1 + 1496) = v15;
    v17 = *(a4 + 160);
    v19 = *(a4 + 112);
    v18 = *(a4 + 128);
    *(a1 + 1576) = *(a4 + 144);
    *(a1 + 1592) = v17;
    *(a1 + 1544) = v19;
    *(a1 + 1560) = v18;
    v21 = *(a4 + 192);
    v20 = *(a4 + 208);
    v22 = *(a4 + 176);
    *(a1 + 1656) = *(a4 + 224);
    *(a1 + 1624) = v21;
    *(a1 + 1640) = v20;
    *(a1 + 1608) = v22;
    *(a1 + 1664) = *a5;
    v23 = *(a5 + 16);
    v24 = *(a5 + 32);
    v25 = *(a5 + 48);
    *(a1 + 1728) = *(a5 + 64);
    *(a1 + 1712) = v25;
    *(a1 + 1696) = v24;
    *(a1 + 1680) = v23;
    result = *(a5 + 80);
    v26 = *(a5 + 96);
    v27 = *(a5 + 112);
    *(a1 + 1792) = *(a5 + 128);
    *(a1 + 1776) = v27;
    *(a1 + 1760) = v26;
    *(a1 + 1744) = result;
  }

  return result;
}

BOOL hasDoviTonemapConfigChanged(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  if (*(a2 + 480) != *(a1 + 1832) || *(a2 + 144) != *(a1 + 1844) || *(a2 + 148) != *(a1 + 1848) || *(a2 + 152) != *(a1 + 1852) || *(a2 + 156) != *(a1 + 1856) || *(a2 + 236) != *(a1 + 1860) || *(a2 + 240) != *(a1 + 1864) || *(a2 + 244) != *(a1 + 1868) || *(a2 + 248) != *(a1 + 1872) || *(a2 + 232) != *(a1 + 4) || *(a2 + 288) != *a1 || *(a2 + 212) != *(a1 + 8) || *(a2 + 252) != *(a1 + 1876) || (a4 & 1) == 0 && (*(a2 + 256) != *(a1 + 1880) || *(a2 + 260) != *(a1 + 1884) || *(a2 + 264) != *(a1 + 1888) || *(a2 + 268) != *(a1 + 1892) || *(a2 + 272) != *(a1 + 1896)))
  {
    return 1;
  }

  if (*(a3 + 192) != *(a1 + 1836))
  {
    return 1;
  }

  if (*a3 != *(a1 + 1840))
  {
    return 1;
  }

  v7 = *(a5 + 2);
  if (v7 != *(a1 + 1434))
  {
    return 1;
  }

  if (*(a5 + 2))
  {
    v8 = (a5 + 20);
    v9 = (a1 + 1468);
    while (*(v8 - 4) == *(v9 - 8) && *v8 == *(v9 - 4) && v8[4] == *v9)
    {
      ++v9;
      ++v8;
      if (!--v7)
      {
        goto LABEL_25;
      }
    }

    return 1;
  }

LABEL_25:
  v10 = *(a6 + 2);
  if (v10 != *(a1 + 1666))
  {
    return 1;
  }

  if (*(a6 + 2))
  {
    v11 = (a1 + 1668);
    v12 = (a6 + 16);
    while (*(v12 - 3) == *v11 && *v12 == v11[3] && v12[3] == v11[6])
    {
      ++v11;
      ++v12;
      if (!--v10)
      {
        goto LABEL_32;
      }
    }

    return 1;
  }

LABEL_32:
  if (*(a6 + 40) != *(a1 + 1704))
  {
    return 1;
  }

  return *(a6 + 44) != *(a1 + 1708);
}

__n128 updateDoViTonemapConfig(uint64_t a1, _DWORD *a2, uint64_t a3, char a4, __int128 *a5, uint64_t a6)
{
  *(a1 + 1832) = a2[120];
  v6 = a2[58];
  *a1 = a2[72];
  *(a1 + 4) = v6;
  *(a1 + 8) = a2[53];
  *(a1 + 1844) = a2[36];
  *(a1 + 1848) = a2[37];
  *(a1 + 1852) = a2[38];
  *(a1 + 1856) = a2[39];
  *(a1 + 1860) = a2[59];
  *(a1 + 1864) = a2[60];
  *(a1 + 1868) = a2[61];
  *(a1 + 1872) = a2[62];
  *(a1 + 1836) = *(a3 + 192);
  v7 = *a3;
  *(a1 + 1840) = v7;
  if ((a4 & 1) == 0)
  {
    *(a1 + 1880) = a2[64];
    *(a1 + 1884) = a2[65];
    *(a1 + 1888) = a2[66];
    *(a1 + 1892) = a2[67];
    *(a1 + 1896) = a2[68];
  }

  *(a1 + 1876) = a2[63];
  v8 = *a5;
  v9 = a5[2];
  *(a1 + 1448) = a5[1];
  *(a1 + 1464) = v9;
  *(a1 + 1432) = v8;
  v10 = a5[3];
  v11 = a5[4];
  v12 = a5[6];
  *(a1 + 1512) = a5[5];
  *(a1 + 1528) = v12;
  *(a1 + 1480) = v10;
  *(a1 + 1496) = v11;
  v13 = a5[7];
  v14 = a5[8];
  v15 = a5[10];
  *(a1 + 1576) = a5[9];
  *(a1 + 1592) = v15;
  *(a1 + 1544) = v13;
  *(a1 + 1560) = v14;
  v16 = a5[11];
  v17 = a5[12];
  v18 = a5[13];
  *(a1 + 1656) = *(a5 + 28);
  *(a1 + 1624) = v17;
  *(a1 + 1640) = v18;
  *(a1 + 1608) = v16;
  *(a1 + 1664) = *a6;
  v19 = *(a6 + 16);
  v20 = *(a6 + 32);
  v21 = *(a6 + 48);
  *(a1 + 1728) = *(a6 + 64);
  *(a1 + 1712) = v21;
  *(a1 + 1696) = v20;
  *(a1 + 1680) = v19;
  result = *(a6 + 80);
  v23 = *(a6 + 96);
  v24 = *(a6 + 112);
  *(a1 + 1792) = *(a6 + 128);
  *(a1 + 1776) = v24;
  *(a1 + 1760) = v23;
  *(a1 + 1744) = result;
  return result;
}

void setTextureDescriptorOptions(void *a1, uint64_t a2)
{
  v3 = a1;
  if (v3)
  {
    v4 = v3;
    [v3 setUsage:3];
    [v4 setStorageMode:0];
    [v4 setProtectionOptions:a2];
    v3 = v4;
    if (a2)
    {
      [v4 setStorageMode:2];
      v3 = v4;
    }
  }
}

uint64_t HDRProcessorGetTypeID()
{
  if (_MergedGlobals_2 != -1)
  {
    dispatch_once(&_MergedGlobals_2, &__block_literal_global);
  }

  return qword_280C71908;
}

uint64_t __HDRProcessorGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  qword_280C71908 = result;
  return result;
}

uint64_t HDRProcessorCreate(_DWORD *a1, CFErrorRef *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CBECE8];
  if (_MergedGlobals_2 != -1)
  {
    dispatch_once(&_MergedGlobals_2, &__block_literal_global);
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    a1[9] = 0;
    *(Instance + 16) = HDRProcessorImplCreate(a1, a2);
    if (enableLogInstance)
    {
      if (logInstanceID)
      {
        v6 = logInstanceID;
      }

      else
      {
        v6 = prevLogInstanceID;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v9 = 134218498;
        v10 = WORD1(v6);
        v11 = 2080;
        v12 = "HDRProcessorRef  _Nullable HDRProcessorCreate(HDRConfigurationParameters * _Nonnull, CFErrorRef * _Nonnull)";
        v13 = 2048;
        v14 = Instance;
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx  %s : newprocessor=%p\n", &v9, 0x20u);
      }

      prevLogInstanceID = v6;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "HDRProcessorRef  _Nullable HDRProcessorCreate(HDRConfigurationParameters * _Nonnull, CFErrorRef * _Nonnull)";
      v11 = 2048;
      v12 = Instance;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54]  %s : newprocessor=%p\n", &v9, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return Instance;
}

uint64_t HDRProcessFrame(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = -17006;
  if (a1 && a2 && a4 && a5)
  {
    if (a6)
    {
      [*(a1 + 16) processFrameWithLayer0:a2 layer1:a3 output:a4 metadata:? commandbuffer:? callback:?];
      return -17000;
    }
  }

  return result;
}

void __HDRProcessorHDRProcessorFinalize(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  HDRProcessorImplRelease(*(a1 + 16));
  *(a1 + 16) = 0;
  if (enableLogInstance)
  {
    if (logInstanceID)
    {
      v2 = logInstanceID;
    }

    else
    {
      v2 = prevLogInstanceID;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v4 = 134218498;
      v5 = WORD1(v2);
      v6 = 2080;
      v7 = "void __HDRProcessorHDRProcessorFinalize(CFTypeRef)";
      v8 = 2048;
      v9 = a1;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx    %s : processor=%p\n", &v4, 0x20u);
    }

    prevLogInstanceID = v2;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "void __HDRProcessorHDRProcessorFinalize(CFTypeRef)";
    v6 = 2048;
    v7 = a1;
    _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54]    %s : processor=%p\n", &v4, 0x16u);
  }

  v3 = *MEMORY[0x277D85DE8];
}

CFStringRef __HDRProcessorCopyDebugDesc(void *a1)
{
  v2 = CFGetAllocator(a1);
  v3 = CFGetAllocator(a1);
  return CFStringCreateWithFormat(v2, 0, @"<HDRProcessor %p [%p]>{obj = %p}", a1, v3, a1[2]);
}

const char *debugGetColorPrimaryString(int a1)
{
  v1 = "2020";
  v2 = "Unknown";
  if (a1 == 12)
  {
    v2 = "P3";
  }

  if (a1 != 9)
  {
    v1 = v2;
  }

  if (a1 == 1)
  {
    return "709";
  }

  else
  {
    return v1;
  }
}

const char *debugGetMatrixCoeffsString(int a1)
{
  if (a1 <= 11)
  {
    if (a1 == 1)
    {
      return "709";
    }

    if (a1 == 9)
    {
      return "2020";
    }
  }

  else
  {
    switch(a1)
    {
      case 248:
        return "IPT";
      case 14:
        return "ICtCp";
      case 12:
        return "P3";
    }
  }

  return "Unknown";
}

const char *debugGetTransferFunctionName(int a1)
{
  if (a1 > 15)
  {
    if (a1 != 16)
    {
      if (a1 == 18)
      {
        return "HLG";
      }

      return "Linear";
    }

    return "PQ";
  }

  else
  {
    if (a1 != 1)
    {
      if (a1 == 13)
      {
        return "sRGB";
      }

      return "Linear";
    }

    return "709";
  }
}

HDRProcessor *HDRProcessorImplCreate(_DWORD *a1, CFErrorRef *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [[HDRProcessor alloc] initWithConfig:a1];
  if (v4)
  {
    syslog(27, "HDR Processor : Processor Instance Created. (%dx%d) Target Nits = %d\n", *a1, a1[1], a1[3]);
    v5 = v4;
  }

  else
  {
    if (enableLogInstance)
    {
      if (logInstanceID)
      {
        v6 = logInstanceID;
      }

      else
      {
        v6 = prevLogInstanceID;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v10 = WORD1(v6);
        v11 = 2080;
        v12 = "void *HDRProcessorImplCreate(HDRConfigurationParameters *, CFErrorRef *)";
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx %s : Failed to create HDRProcessorImpl\n", buf, 0x16u);
      }

      prevLogInstanceID = v6;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v10 = "void *HDRProcessorImplCreate(HDRConfigurationParameters *, CFErrorRef *)";
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] %s : Failed to create HDRProcessorImpl\n", buf, 0xCu);
    }

    syslog(27, "HDR Processor : Failed to create Processor\n");
    *a2 = CFErrorCreate(*MEMORY[0x277CBECE8], @"HDRProcessor", -17005, 0);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

void HDRProcessorImplRelease(void *a1)
{

  syslog(27, "HDR Processor : Processor Instance Release\n");
}

float getFloatFromDictionayForKey(NSDictionary *a1, NSString *a2, float a3)
{
  v4 = [(NSDictionary *)a1 valueForKey:a2];
  v5 = v4;
  if (v4)
  {
    [v4 floatValue];
    if (v6 != 0.0)
    {
      a3 = v6;
    }
  }

  return a3;
}

uint64_t getIntFromDictionayForKey(NSDictionary *a1, NSString *a2, uint64_t a3)
{
  v4 = [(NSDictionary *)a1 valueForKey:a2];
  v5 = v4;
  if (v4)
  {
    a3 = [v4 intValue];
  }

  return a3;
}

uint64_t extractInputColorPrimaries(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 2);
  if (a2 == 2)
  {
    if (v3 != 9)
    {
      LOWORD(v4) = 9;
LABEL_4:
      *(a1 + 2) = v4;
    }
  }

  else
  {
    v5 = v3 > 0xC;
    v6 = (1 << v3) & 0x1202;
    if (v5 || v6 == 0)
    {
      *(a1 + 2) = 1;
      if (GetConfig())
      {
        Config = GetConfig();
        if (*(Config + 1963))
        {
          if ((Config[3924] & 0x80) != 0)
          {
            if (GetConfig())
            {
              v10 = GetConfig();
              v4 = *HDRConfig::GetConfigEntryValue(v10, 0x59u, 0);
            }

            else
            {
              LOWORD(v4) = 0;
            }

            goto LABEL_4;
          }
        }
      }
    }
  }

  return *(a1 + 2);
}

_DWORD *floatCopyWithCount(_DWORD *result, float *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v4 = *a2++;
      *result++ = v4;
      --v3;
    }

    while (v3);
  }

  return result;
}

CFMutableDictionaryRef createPixelBufferPool(int a1, int a2, int a3)
{
  v19 = a2;
  v20 = a1;
  valuePtr = a3;
  poolOut = 0;
  v15 = 1024;
  v16 = 16;
  v3 = *MEMORY[0x277CBECE8];
  result = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (result)
  {
    v5 = result;
    v6 = CFNumberCreate(v3, kCFNumberIntType, &valuePtr);
    if (!v6)
    {
      goto LABEL_6;
    }

    v7 = v6;
    CFDictionarySetValue(v5, *MEMORY[0x277CC4E30], v6);
    CFRelease(v7);
    Mutable = CFDictionaryCreateMutable(v3, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v9 = CFNumberCreate(v3, kCFNumberIntType, &v15);
    CFDictionarySetValue(v5, *MEMORY[0x277CD2970], v9);
    CFRelease(v9);
    CFDictionaryAddValue(v5, *MEMORY[0x277CC4DE8], Mutable);
    CFRelease(Mutable);
    v10 = CFNumberCreate(v3, kCFNumberIntType, &v20);
    if (!v10)
    {
      goto LABEL_6;
    }

    v11 = v10;
    CFDictionarySetValue(v5, *MEMORY[0x277CC4EC8], v10);
    CFRelease(v11);
    v12 = CFNumberCreate(v3, kCFNumberIntType, &v19);
    if (v12)
    {
      v13 = v12;
      CFDictionarySetValue(v5, *MEMORY[0x277CC4DD8], v12);
      CFRelease(v13);
      v14 = CFNumberCreate(v3, kCFNumberIntType, &v16);
      CFDictionarySetValue(v5, *MEMORY[0x277CC4E38], v14);
      CFRelease(v14);
      CVPixelBufferPoolCreate(v3, 0, v5, &poolOut);
      CFRelease(v5);
      return poolOut;
    }

    else
    {
LABEL_6:
      CFRelease(v5);
      return 0;
    }
  }

  return result;
}

void EDRMetaData_RBSP::EDRMetaData_RBSP(EDRMetaData_RBSP *this)
{
  var133 = this->var133;
  this->var1 = 0;
  *&this->var2 = 0;
  this->var4 = 0;
  this->var6 = 0;
  this->var7 = 0;
  this->var5 = 0;
  *&this->var10 = 0;
  *(&this->var12 + 4) = 0;
  *(&this->var11 + 4) = 0;
  *(&this->var13 + 4) = 0xFFFFFFFF00000000;
  this->var0 = &unk_2862C9DF8;
  this->var18 = 0;
  *&this->var19 = 0;
  this->var15 = 0;
  this->var16 = 0;
  this->var17 = 0;
  *&this->var22 = 0;
  *&this->var24 = 0;
  this->var21 = 0;
  *&this->var31 = 0;
  *&this->var29 = 0;
  this->var33 = 0;
  *&this->var34 = 0x200000002;
  *&this->var52 = 0;
  *&this->var47 = 0u;
  *&this->var44 = 0u;
  *&this->var40 = 0u;
  *&this->var36 = 0u;
  this->var54 = -1;
  *&this->var57 = 0;
  *&this->var55 = 0;
  *this->var59 = xmmword_2508CE070;
  var132 = this->var132;
  *&this->var60[1] = 0x100000001;
  bzero(&this->var61, 0x63884uLL);
  var132[8] = 0;
  *var132 = xmmword_2508CE1F4;
  *(var132 + 1) = unk_2508CE204;
  *var133 = 0x201F9FA000000000;
  var133[2] = 538943392;
  this->var134[8] = 15705;
  *this->var134 = xmmword_2508CE218;
  *&this->var134[4] = unk_2508CE228;
  *(var133 + 3) = xmmword_2508CE080;
  *(var133 + 4) = xmmword_2508CE090;
  *(var133 + 10) = 0xE700000003ELL;
  var133[22] = 42;
  *&this->var156[4].var11[1] = 0u;
  *&this->var156[3].var12[4] = 0u;
  *&this->var156[4].var7 = 0u;
  *&this->var156[3].var0 = 0u;
  *&this->var156[3].var8 = 0u;
  *&this->var156[2].var1 = 0u;
  *&this->var156[2].var9 = 0u;
  *&this->var156[1].var2 = 0u;
  *&this->var156[1].var10 = 0u;
  *&this->var156[0].var3 = 0u;
  *this->var156[0].var11 = 0u;
  *&this->var153.var0 = 0u;
  *&this->var155.var0 = 0u;
  *&this->var151[6].var4 = 0u;
  *&this->var151[7].var4 = 0u;
  *&this->var151[4].var4 = 0u;
  *&this->var151[5].var4 = 0u;
  *&this->var151[2].var4 = 0u;
  *&this->var151[3].var4 = 0u;
  *&this->var151[0].var4 = 0u;
  *&this->var151[1].var4 = 0u;
  this->var162 = 0;
  *&this->var146 = 0u;
  *&this->var150.var0 = 0u;
  *&this->var160.var2[230] = 0u;
  *&this->var160.var2[246] = 0u;
  *&this->var160.var2[198] = 0u;
  *&this->var160.var2[214] = 0u;
  *&this->var160.var2[166] = 0u;
  *&this->var160.var2[182] = 0u;
  *&this->var160.var2[134] = 0u;
  *&this->var160.var2[150] = 0u;
  *&this->var160.var2[102] = 0u;
  *&this->var160.var2[118] = 0u;
  *&this->var160.var2[70] = 0u;
  *&this->var160.var2[86] = 0u;
  *&this->var160.var2[38] = 0u;
  *&this->var160.var2[54] = 0u;
  *&this->var160.var2[6] = 0u;
  *&this->var160.var2[22] = 0u;
  *&this->var158[3].var6 = 0u;
  *&this->var159.var0 = 0u;
  *&this->var158[2].var4 = 0u;
  *&this->var158[2].var12 = 0u;
  *&this->var158[1].var2 = 0u;
  *&this->var158[1].var10 = 0u;
  *&this->var158[0].var0 = 0u;
  *&this->var158[0].var8 = 0u;
  *&this->var157.var3 = 0u;
  this->var163[8] = 0;
  *this->var163 = xmmword_2508CE1F4;
  *&this->var163[4] = unk_2508CE204;
  *(var133 + 112) = 0x201F9FA000000000;
  var133[226] = 538943392;
  this->var165[8] = 15705;
  *this->var165 = xmmword_2508CE218;
  *&this->var165[4] = unk_2508CE228;
  memcpy(this->var166, &unk_2508CE23C, sizeof(this->var166));
  *&this->var167[2][16] = 0;
  *&this->var167[2][4] = xmmword_2508CE420;
  *&this->var167[2][8] = unk_2508CE430;
  *&this->var167[2][12] = xmmword_2508CE440;
  *&this->var167[1][6] = xmmword_2508CE3E0;
  *&this->var167[1][10] = unk_2508CE3F0;
  *&this->var167[1][14] = xmmword_2508CE400;
  *&this->var167[2][0] = unk_2508CE410;
  *&this->var167[0][8] = xmmword_2508CE3A0;
  *&this->var167[0][12] = unk_2508CE3B0;
  *&this->var167[0][16] = xmmword_2508CE3C0;
  *&this->var167[1][2] = unk_2508CE3D0;
  *&this->var167[0][0] = xmmword_2508CE380;
  *&this->var167[0][4] = unk_2508CE390;
  *&this->var168[0][0][1][7] = xmmword_2508CE498;
  *&this->var168[0][0][2][2] = unk_2508CE4A8;
  *&this->var168[0][0][2][5] = unk_2508CE4B4;
  *&this->var168[0][0][0][0] = xmmword_2508CE458;
  *&this->var168[0][0][0][4] = unk_2508CE468;
  *&this->var168[0][0][0][8] = xmmword_2508CE478;
  *&this->var168[0][0][1][3] = unk_2508CE488;
  *(var133 + 199) = 0x300000007;
  var133[400] = 3;
}

void HDR10PlusMetaData_RBSP::HDR10PlusMetaData_RBSP(HDR10PlusMetaData_RBSP *this)
{
  this->var1 = 0;
  *&this->var2 = 0;
  this->var4 = 0;
  this->var6 = 0;
  this->var7 = 0;
  this->var5 = 0;
  *&this->var10 = 0;
  *(&this->var12 + 4) = 0;
  *(&this->var11 + 4) = 0;
  *(&this->var13 + 4) = 0xFFFFFFFF00000000;
  this->var0 = &unk_2862C9EC0;
  *&this->var15 = 4;
  this->var17 = -75;
  *&this->var18 = 65596;
  *&this->var20 = 260;
  this->var22 = 1;
  this->var23 = 0;
  this->var24 = 0;
  *this->var25 = 0;
  *&this->var25[2] = 0;
  *&this->var27 = 9;
  *&this->var28[1] = 0;
  *this->var29 = 0u;
  *&this->var29[4] = 0u;
  *(&this->var29[7] + 1) = 0u;
  *(&this->var36[7] + 1) = 0;
  *this->var36 = 0;
  *&this->var36[4] = 0;
  *this->var38 = 0x5F5A4B32190A0501;
  this->var38[8] = 99;
}

int16x4_t deriveSrcRect(int16x4_t *a1, int16x4_t *a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, double a7, float a8, double a9, double a10, int32x4_t a11)
{
  *v11.f32 = vcvt_f32_s32(__PAIR64__(a6, a5));
  v11.i64[1] = v11.i64[0];
  a11.i64[0] = __PAIR64__(a4, a3);
  *(&a7 + 1) = a8;
  v12 = vcvtq_f32_s32(vsubq_s32(vmovl_s16(*a2), vzip1q_s32(a11, a11)));
  v13 = vmovn_s32(vcvtq_s32_f32(vaddq_f32(vdivq_f32(vuzp1q_s32(v12, vrev64q_s32(v12)), vdupq_lane_s64(*&a7, 0)), v11)));
  result = vuzp1_s16(v13, vrev32_s16(v13));
  *a1 = result;
  return result;
}

float createVerticesFromRect(float *a1, __int16 *a2, int a3, int a4, __int16 *a5, int a6, int a7)
{
  v7 = 2.0 / a3;
  v8 = 2.0 / a4;
  v9 = 1.0 / a6;
  v10 = 1.0 / a7;
  v11 = (*a2 * v7) + -1.0;
  v12 = (a2[2] * v8) + -1.0;
  v13 = *a5;
  *a1 = v11;
  a1[1] = v12;
  v14 = v9 * v13;
  v15 = v10 * a5[2];
  a1[2] = v14;
  a1[3] = v15;
  result = (a2[1] * v7) + -1.0;
  a1[4] = result;
  a1[5] = v12;
  v17 = v9 * a5[1];
  a1[6] = v17;
  a1[7] = v15;
  v18 = (a2[3] * v8) + -1.0;
  a1[8] = v11;
  a1[9] = v18;
  v19 = v10 * a5[3];
  a1[10] = v14;
  a1[11] = v19;
  a1[12] = result;
  a1[13] = v18;
  a1[14] = v17;
  a1[15] = v19;
  return result;
}

BOOL createHDRRect(_WORD *a1, int a2, int a3, int a4, int a5)
{
  v6 = a2 < a3 && a4 < a5;
  if (v6)
  {
    *a1 = a2;
    a1[1] = a3;
    a1[2] = a4;
    a1[3] = a5;
  }

  return v6;
}

uint64_t createHDRRectFromHDRRegion(_WORD *a1, int *a2)
{
  v2 = *a2;
  v3 = a2[1];
  *a1 = *a2;
  v4 = a2[3];
  a1[1] = a2[2] + v2;
  a1[2] = v3;
  a1[3] = v4 + v3;
  return 1;
}

__int16 *validHDRRect(__int16 *result)
{
  if (result)
  {
    return ((*result & 0x80000000) == 0 && (result[1] & 0x80000000) == 0 && (result[2] & 0x80000000) == 0 && (result[3] & 0x80000000) == 0 && *result < result[1] && result[2] < result[3]);
  }

  return result;
}

float getStaticToneCurves(float a1, float a2, float a3, float a4, float a5, float a6, float a7, float a8, float *a9, float *a10, float *a11, float *a12)
{
  v18 = a4;
  v19 = a3;
  v22 = sqrtf((a3 + a4) / (a1 + a2));
  if (v22 <= 1.0)
  {
    v23 = v22;
  }

  else
  {
    v23 = 1.0;
  }

  v24 = sqrtf(5.3923 / log2f(a8));
  v25 = (sqrtf(1.0 / v23) * v24) / 0.33333;
  *a9 = v25;
  v26 = ((((a5 - a1) + (a5 - a1)) / (a2 - a1)) * a5) * ((1.0 - v23) * v24);
  if ((a6 - v26) > v19)
  {
    v19 = a6 - v26;
  }

  if ((a7 - v26) < v18)
  {
    v18 = a7 - v26;
  }

  v27 = a5 - v26;
  if (v27 <= v18)
  {
    v28 = v27;
  }

  else
  {
    v28 = v18;
  }

  if (v27 >= v19)
  {
    v29 = v28;
  }

  else
  {
    v29 = v19;
  }

  v30 = powf(a6, v25);
  v31 = powf(a5, v25);
  v32 = powf(a7, v25);
  v33 = powf(v19, 3.0);
  v34 = powf(v29, 3.0);
  v35 = powf(v18, 3.0);
  v36 = (((v32 - v30) * (v31 * v34)) + ((v32 * v35) * (v30 - v31))) + ((v30 * v33) * (v31 - v32));
  *a10 = (((((v30 * v32) * (v35 - v33)) * v34) + (((v31 * v32) * (v34 - v35)) * v33)) + (((v30 * v31) * (v33 - v34)) * v35)) / v36;
  *a11 = (((-((v32 * v35) - (v30 * v33)) * v34) + (-((v31 * v34) - (v32 * v35)) * v33)) + (-((v30 * v33) - (v31 * v34)) * v35)) / v36;
  result = ((((v32 - v31) * v33) - ((v32 - v30) * v34)) + ((v31 - v30) * v35)) / v36;
  *a12 = result;
  return result;
}

float clampSDRMaxBrigtness(float result, float a2, float a3, unsigned __int8 a4)
{
  if (result > a2)
  {
    ++_MergedGlobals_4;
    result = a2;
  }

  if (((result == 0.0) & a4) != 0)
  {
    result = a2;
  }

  if (result <= 99)
  {
    ++qword_280C71958;
    return a3;
  }

  return result;
}

double *SortAscend(double *result, int32x2_t *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v4 = 0;
      v5 = *result;
      v6 = v3;
      v7 = result + 1;
      v8 = a2;
      do
      {
        if (v5 <= *v7)
        {
          v5 = *v7;
        }

        else
        {
          *(v7 - 1) = *v7;
          *v7 = v5;
          *v8 = vrev64_s32(*v8);
          v4 = 1;
        }

        v8 = (v8 + 4);
        ++v7;
        --v6;
      }

      while (v6);
      if (v3 < 2)
      {
        break;
      }

      --v3;
    }

    while (v4);
  }

  return result;
}

double *SortDescend(double *result, int32x2_t *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v4 = 0;
      v5 = *result;
      v6 = v3;
      v7 = result + 1;
      v8 = a2;
      do
      {
        if (v5 >= *v7)
        {
          v5 = *v7;
        }

        else
        {
          *(v7 - 1) = *v7;
          *v7 = v5;
          *v8 = vrev64_s32(*v8);
          v4 = 1;
        }

        v8 = (v8 + 4);
        ++v7;
        --v6;
      }

      while (v6);
      if (v3 < 2)
      {
        break;
      }

      --v3;
    }

    while (v4);
  }

  return result;
}

uint64_t GetPrimaries(unsigned int a1, _OWORD *a2)
{
  if (a1 > 0x12)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = (&V8PrimartTbl + 32 * a1);
  *a2 = *v3;
  a2[1] = v3[1];
  return 26;
}

char *GetPrimariesPtr(unsigned int a1)
{
  if (a1 <= 0x12)
  {
    return &V8PrimartTbl + 32 * a1;
  }

  else
  {
    return 0;
  }
}

void BuildDisplayIdxTbl()
{
  v0 = &DisplayTbl;
  v1 = 7;
  do
  {
    DisplayIdxTbl[*v0] = v0;
    v0 += 10;
    --v1;
  }

  while (v1);
}

uint64_t GetDisplay(unsigned int a1)
{
  if (a1 > 0x31)
  {
    return 0;
  }

  result = DisplayIdxTbl[a1];
  if (!result)
  {
    return 0;
  }

  return result;
}

_BYTE *MemCpyByte(_BYTE *result, char *a2, int a3)
{
  if (a3)
  {
    v3 = a3;
    do
    {
      v4 = *a2++;
      *result++ = v4;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t AssignM33I2I(uint64_t result, uint64_t a2)
{
  for (i = 0; i != 3; ++i)
  {
    for (j = 0; j != 6; j += 2)
    {
      *(a2 + j) = *(result + j);
    }

    a2 += 6;
    result += 6;
  }

  return result;
}

uint64_t GetXyz2LmsM33(uint64_t a1)
{
  for (i = 0; i != 36; ++i)
  {
    *(a1 + i) = m33Xyz2LmsFxp[i];
  }

  return 28;
}

uint64_t GetLms2IctcpDmM33(uint64_t a1)
{
  for (i = 0; i != 18; i += 6)
  {
    v2 = a1 + i;
    *v2 = *(&m33Lms2IctcpDmFxp + i);
    *(v2 + 4) = *(&m33Lms2IctcpDmFxp + i + 4);
  }

  return 12;
}

uint64_t GetCtM33(uint64_t result, _DWORD *a2, char a3)
{
  v3 = (1 << a3) - 2 * result;
  *a2 = v3;
  a2[1] = result;
  a2[2] = result;
  a2[3] = result;
  a2[4] = v3;
  a2[5] = result;
  a2[6] = result;
  a2[7] = result;
  a2[8] = v3;
  return result;
}

void Xyz2IctcpDm(void *a1, _DWORD *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = (107438129 * *a1 + 189943091 * v3 - 21691083 * v4) >> 28;
  v6 = (-60746434 * *a1 + 312812022 * v3 + 12267708 * v4) >> 28;
  v7 = (246484133 * v4) >> 28;
  v8 = 10485 * v7 + 241174 * v5 + 10485 * v6;
  v5 *= 10485;
  v9 = ((v5 + 10485 * v7 + 241174 * v6) >> 18) & ~((v5 + 10485 * v7 + 241174 * v6) >> 63);
  v10 = ((v5 + 241174 * v7 + 10485 * v6) >> 18) & ~((v5 + 241174 * v7 + 10485 * v6) >> 63);
  v11 = powf(vcvts_n_f32_u64((v8 >> 18) & ~(v8 >> 63), 0x12uLL) * 0.0001, 0.1593);
  v12 = vcvts_n_s32_f32(powf(((v11 * 18.852) + 0.83594) / ((v11 * 18.688) + 1.0), 78.844), 0x12uLL);
  v13 = powf(vcvts_n_f32_u64(v9, 0x12uLL) * 0.0001, 0.1593);
  LODWORD(v9) = vcvts_n_s32_f32(powf(((v13 * 18.852) + 0.83594) / ((v13 * 18.688) + 1.0), 78.844), 0x12uLL);
  v14 = powf(vcvts_n_f32_u64(v10, 0x12uLL) * 0.0001, 0.1593);
  v15 = vcvts_n_s32_f32(powf(((v14 * 18.852) + 0.83594) / ((v14 * 18.688) + 1.0), 78.844), 0x12uLL);
  *a2 = (v9 + v12) >> 1;
  a2[1] = (0xFFFFFFFE56ALL * v9 + 3305 * v12 + 3501 * v15) >> 12;
  a2[2] = (0xFFFFFFFBC12 * v9 + 17933 * v12 + 0xFFFFFFFFDE1 * v15) >> 12;
}

uint64_t sint_abs(uint64_t result)
{
  if (result == 0x80000000)
  {
    v1 = 0x7FFFFFFF;
  }

  else
  {
    v1 = -result;
  }

  if (result >= 0)
  {
    return result;
  }

  else
  {
    return v1;
  }
}

uint64_t Adjust64M33ScaleTo16M33Rounded(uint64_t a1, __int16 a2, uint64_t a3)
{
  v5 = a1;
  Int64M33Precision = FindInt64M33Precision(a1);
  v7 = Int64M33Precision - 15;
  if (Int64M33Precision <= 15)
  {
    for (i = 0; i != 3; ++i)
    {
      for (j = 0; j != 3; ++j)
      {
        v19 = *(v5 + 8 * j);
        if (v19 >= 0x7FFF)
        {
          v19 = 0x7FFFLL;
        }

        if (v19 <= -32768)
        {
          LOWORD(v19) = 0x8000;
        }

        *(a3 + 2 * j) = v19;
      }

      a3 += 6;
      v5 += 24;
    }
  }

  else
  {
    v8 = 0;
    v9 = (1 << v7) + 1;
    v10 = v9 >> 1;
    v11 = v9 >> 1;
    v12 = -v10;
    do
    {
      for (k = 0; k != 3; ++k)
      {
        v14 = *(v5 + 8 * k);
        if (v14 <= 0)
        {
          v15 = v12;
        }

        else
        {
          v15 = v11;
        }

        v16 = (v15 + v14) >> v7;
        if (v16 >= 0x7FFF)
        {
          v16 = 0x7FFFLL;
        }

        if (v16 <= -32768)
        {
          LOWORD(v16) = 0x8000;
        }

        *(a3 + 2 * k) = v16;
      }

      ++v8;
      a3 += 6;
      v5 += 24;
    }

    while (v8 != 3);
    a2 -= v7;
  }

  return a2;
}

uint64_t FindInt64M33Precision(uint64_t a1)
{
  v1 = 0;
  v2 = 0;
  do
  {
    for (i = 0; i != 24; i += 8)
    {
      v4 = *(a1 + i);
      if (v4 == 0x8000000000000000)
      {
        v5 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v5 = -v4;
      }

      if (v4 < 0)
      {
        v4 = v5;
      }

      if (v4 > v2)
      {
        v2 = v4;
      }
    }

    ++v1;
    a1 += 24;
  }

  while (v1 != 3);
  v6 = -1;
  do
  {
    ++v6;
  }

  while (v6 <= 0x3F && 1 << v6 < v2);
  return v6;
}

uint64_t APPLY_CT2RIGHT(uint64_t a1, __int16 a2, int a3, uint64_t a4)
{
  v4 = 0;
  v12 = *MEMORY[0x277D85DE8];
  v5 = (a1 + 6);
  do
  {
    *&v11[v4 + 72] = (*v5 + *(v5 - 3) + v5[3]) * a3;
    v4 += 8;
    ++v5;
  }

  while (v4 != 24);
  v6 = 0;
  v7 = v11;
  do
  {
    for (i = 0; i != 3; ++i)
    {
      *&v7[8 * i] = *&v11[8 * i + 72] + *(a1 + 2 * i) * (-3 * a3 + 0x8000);
    }

    ++v6;
    v7 += 24;
    a1 += 6;
  }

  while (v6 != 3);
  result = Adjust64M33ScaleTo16M33Rounded(v11, a2 + 15, a4);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t GetRgb2XyzM33ByPrims(uint64_t result, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _DWORD *a9)
{
  v9 = (a4 - a6) * (result - a5) - (a2 - a6) * (a3 - a5);
  if ((v9 & 0x3FFFFFFFC000000) == 0)
  {
    v11 = 0;
    v12 = 0;
    if (a8)
    {
      goto LABEL_3;
    }

LABEL_5:
    v15 = 0;
    v14 = 0;
    v16 = 0;
    goto LABEL_6;
  }

  v10 = (v9 >> 26);
  v11 = ((a4 - a6) * (a7 - a5) - (a3 - a5) * (a8 - a6)) / v10;
  v12 = ((result - a5) * (a8 - a6) - (a2 - a6) * (a7 - a5)) / v10;
  if (!a8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = v12 + v11;
  v14 = (v11 << 26) / a8;
  v15 = (v12 << 26) / a8;
  v16 = (0x10000000000000 - (v13 << 26)) / a8;
LABEL_6:
  *a9 = (v14 * result) >> 26;
  a9[1] = (v15 * a3) >> 26;
  a9[2] = (v16 * a5) >> 26;
  a9[3] = (v14 * a2) >> 26;
  a9[4] = (v15 * a4) >> 26;
  a9[5] = (v16 * a6) >> 26;
  a9[6] = (v14 * (0x4000000 - (result + a2))) >> 26;
  a9[7] = (v15 * (0x4000000 - (a3 + a4))) >> 26;
  a9[8] = (v16 * (0x4000000 - (a5 + a6))) >> 26;
  return result;
}

uint64_t GetRgb2LmsByPrimsM33Fxp(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  v31 = *MEMORY[0x277D85DE8];
  GetRgb2XyzM33ByPrims(a1, a2, a3, a4, a5, a6, a7, a8, v29);
  v10 = 0;
  v11 = v30;
  do
  {
    v12 = 0;
    v13 = &m33Xyz2LmsFxp[12 * v10];
    v14 = *v13;
    v15 = *(v13 + 1);
    v16 = *(v13 + 2);
    v17 = v11;
    do
    {
      *v17++ = (v29[v12] * v14 + v29[v12 + 3] * v15 + v29[v12 + 6] * v16) >> 23;
      ++v12;
    }

    while (v12 != 3);
    ++v10;
    v11 += 3;
  }

  while (v10 != 3);
  Int64M33Precision = FindInt64M33Precision(v30);
  v19 = 0;
  if (Int64M33Precision <= 15)
  {
    v24 = v30;
    do
    {
      for (i = 0; i != 3; ++i)
      {
        v26 = *&v24[8 * i];
        if (v26 >= 0x7FFF)
        {
          v26 = 0x7FFFLL;
        }

        if (v26 <= -32768)
        {
          LOWORD(v26) = 0x8000;
        }

        *(a9 + 2 * i) = v26;
      }

      ++v19;
      a9 += 6;
      v24 += 24;
    }

    while (v19 != 3);
    v23 = 31;
  }

  else
  {
    v20 = v30;
    do
    {
      for (j = 0; j != 3; ++j)
      {
        v22 = *&v20[8 * j] >> (Int64M33Precision - 15);
        if (v22 >= 0x7FFF)
        {
          v22 = 0x7FFFLL;
        }

        if (v22 <= -32768)
        {
          LOWORD(v22) = 0x8000;
        }

        *(a9 + 2 * j) = v22;
      }

      ++v19;
      a9 += 6;
      v20 += 24;
    }

    while (v19 != 3);
    v23 = 46 - Int64M33Precision;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v23;
}

uint64_t EDRMetaData_RBSP::setRBSP(EDRMetaData_RBSP *this, unsigned __int8 *a2, size_t size)
{
  v6 = malloc_type_malloc(size, 0x100004077774924uLL);
  this->var11 = v6;
  this->var12 = v6;
  this->var13 = &v6[size];

  return commonRBSP::setRBSP(this, a2, size);
}

void *EDRMetaData_RBSP::copy_dm_data(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + 292);
  v3 = a1 + 405504;
  *a2 = *(a1 + 268);
  *(a2 + 4) = *(a1 + 407988);
  *(a2 + 12) = *(a1 + 407996);
  v4 = (a1 + 408048);
  v5 = (a2 + 64);
  v6 = 9;
  do
  {
    *(v5 - 12) = *(v4 - 12);
    v7 = *v4++;
    *v5++ = v7;
    --v6;
  }

  while (v6);
  for (i = 0; i != 12; i += 4)
  {
    *(a2 + 52 + i) = *(a1 + 408036 + i);
  }

  *(a2 + 100) = *(a1 + 408084);
  *(a2 + 116) = *(a1 + 408100);
  *(a2 + 148) = *(a1 + 408132);
  *(a2 + 132) = *(a1 + 408116);
  *(a2 + 156) = *(a1 + 408144);
  v9 = *(a1 + 408152);
  v10 = *(a1 + 408168);
  v11 = *(a1 + 408184);
  *(a2 + 212) = *(a1 + 408200);
  *(a2 + 196) = v11;
  *(a2 + 180) = v10;
  *(a2 + 164) = v9;
  v12 = *(a1 + 408216);
  v13 = *(a1 + 408232);
  v14 = *(a1 + 408264);
  *(a2 + 260) = *(a1 + 408248);
  *(a2 + 276) = v14;
  *(a2 + 244) = v13;
  *(a2 + 228) = v12;
  *v2 = *(a1 + 408280);
  v15 = *(a1 + 408288);
  *(a2 + 304) = *(a1 + 408292);
  *(a2 + 300) = v15;
  v16 = *(a1 + 408294);
  *(a2 + 314) = *(a1 + 408302);
  *(a2 + 306) = v16;
  v17 = *(a1 + 408304);
  *(a2 + 324) = *(a1 + 408312);
  *(a2 + 316) = v17;
  v18 = *(a1 + 408410);
  v20 = *(a1 + 408362);
  v19 = *(a1 + 408378);
  *(a2 + 406) = *(a1 + 408394);
  *(a2 + 422) = v18;
  *(a2 + 374) = v20;
  *(a2 + 390) = v19;
  v22 = *(a1 + 408442);
  v21 = *(a1 + 408458);
  v23 = *(a1 + 408426);
  *(a2 + 480) = *(a1 + 408468);
  *(a2 + 454) = v22;
  *(a2 + 470) = v21;
  *(a2 + 438) = v23;
  v24 = *(a1 + 408314);
  v25 = *(a1 + 408346);
  *(a2 + 342) = *(a1 + 408330);
  *(a2 + 358) = v25;
  *(a2 + 326) = v24;
  v26 = *(a1 + 408484);
  *(a2 + 510) = *(a1 + 408498);
  *(a2 + 496) = v26;
  v27 = *(a1 + 408602);
  v29 = *(a1 + 408554);
  v28 = *(a1 + 408570);
  *(a2 + 598) = *(a1 + 408586);
  *(a2 + 614) = v27;
  *(a2 + 566) = v29;
  *(a2 + 582) = v28;
  v30 = *(a1 + 408506);
  v31 = *(a1 + 408538);
  *(a2 + 534) = *(a1 + 408522);
  *(a2 + 550) = v31;
  *(a2 + 518) = v30;
  LODWORD(v17) = *(a1 + 408618);
  *(a2 + 634) = *(a1 + 408622);
  *(a2 + 630) = v17;
  *(a2 + 896) = *(a1 + 408884);
  result = memcpy((a2 + 636), (a1 + 408624), 0x104uLL);
  v2[76] = *(v3 + 3384);
  return result;
}

char *EDRMetaData_RBSP::copy_rpu_data(uint64_t a1, char *a2)
{
  *a2 = *(a1 + 228);
  *(a2 + 12) = *(a1 + 184);
  *(a2 + 5) = *(a1 + 284);
  v179 = vadd_s32(*(a1 + 792), 0x100000001);
  *(a2 + 3) = v179;
  v4 = *(a1 + 252);
  *(a2 + 8) = *(a1 + 800);
  *(a2 + 9) = v4;
  *(a2 + 2) = *(a1 + 236) + 8;
  v5 = *(a1 + 212);
  *(a2 + 10) = *(a1 + 208);
  *(a2 + 11) = v5;
  *(a2 + 12) = *(a1 + 340) + 2;
  v6 = a2 + 48;
  v7 = a2 + 0x4000;
  *(a2 + 13) = *(a1 + 344) + 2;
  *(a2 + 14) = *(a1 + 348) + 2;
  v8 = *(a1 + 460);
  *(a2 + 76) = *(a1 + 476);
  *(a2 + 60) = v8;
  v9 = *(a1 + 492);
  v10 = *(a1 + 508);
  v11 = *(a1 + 524);
  *(a2 + 140) = *(a1 + 540);
  *(a2 + 124) = v11;
  *(a2 + 108) = v10;
  *(a2 + 92) = v9;
  v12 = *(a1 + 556);
  v13 = *(a1 + 572);
  v14 = *(a1 + 588);
  *(a2 + 204) = *(a1 + 604);
  *(a2 + 188) = v14;
  *(a2 + 172) = v13;
  *(a2 + 156) = v12;
  v15 = *(a1 + 620);
  v16 = *(a1 + 636);
  v17 = *(a1 + 652);
  *(a2 + 268) = *(a1 + 668);
  *(a2 + 252) = v17;
  *(a2 + 236) = v16;
  *(a2 + 220) = v15;
  v18 = *(a1 + 804);
  v19 = *(a1 + 820);
  *(a2 + 308) = *(a1 + 836);
  *(a2 + 292) = v19;
  *(a2 + 276) = v18;
  v20 = *(a1 + 852);
  v21 = *(a1 + 868);
  v22 = *(a1 + 884);
  *(a2 + 23) = *(a1 + 896);
  *(a2 + 340) = v21;
  *(a2 + 356) = v22;
  *(a2 + 324) = v20;
  v24 = *(a1 + 2056);
  v23 = *(a1 + 2072);
  v25 = *(a1 + 2040);
  v176 = a2 + 384;
  *(a2 + 476) = *(a1 + 2084);
  *(a2 + 28) = v24;
  *(a2 + 29) = v23;
  *(a2 + 27) = v25;
  v26 = *(a1 + 1992);
  v27 = *(a1 + 2024);
  *(a2 + 25) = *(a1 + 2008);
  *(a2 + 26) = v27;
  *(a2 + 24) = v26;
  v29 = *(a1 + 2164);
  v28 = *(a1 + 2180);
  v30 = *(a1 + 2148);
  *(a2 + 584) = *(a1 + 2192);
  *(a2 + 556) = v29;
  *(a2 + 572) = v28;
  *(a2 + 540) = v30;
  v31 = *(a1 + 2100);
  v32 = *(a1 + 2132);
  *(a2 + 508) = *(a1 + 2116);
  *(a2 + 524) = v32;
  *(a2 + 492) = v31;
  v33 = *(a1 + 2208);
  v34 = *(a1 + 2240);
  *(a2 + 616) = *(a1 + 2224);
  *(a2 + 632) = v34;
  *(a2 + 600) = v33;
  v35 = *(a1 + 2256);
  v36 = *(a1 + 2272);
  v37 = *(a1 + 2288);
  *(a2 + 692) = *(a1 + 2300);
  *(a2 + 664) = v36;
  *(a2 + 680) = v37;
  *(a2 + 648) = v35;
  v38 = *(a1 + 2316);
  v39 = *(a1 + 2348);
  *(a2 + 724) = *(a1 + 2332);
  *(a2 + 740) = v39;
  *(a2 + 708) = v38;
  v40 = *(a1 + 2364);
  v41 = *(a1 + 2380);
  v42 = *(a1 + 2396);
  *(a2 + 50) = *(a1 + 2408);
  *(a2 + 772) = v41;
  *(a2 + 788) = v42;
  *(a2 + 756) = v40;
  v184 = (a2 + 816);
  memcpy(a2 + 816, (a1 + 2424), 0x144uLL);
  memcpy(v6 + 1092, (a1 + 2748), 0x144uLL);
  v43 = *(a1 + 3072);
  v44 = *(a1 + 3088);
  *(v6 + 212) = *(a1 + 3104);
  *(v6 + 211) = v44;
  *(v6 + 210) = v43;
  v45 = *(a1 + 3120);
  v46 = *(a1 + 3136);
  v47 = *(a1 + 3152);
  *(v6 + 3452) = *(a1 + 3164);
  *(v6 + 215) = v47;
  *(v6 + 214) = v46;
  *(v6 + 213) = v45;
  v49 = *(a1 + 3244);
  v48 = *(a1 + 3260);
  v50 = *(a1 + 3228);
  *(v6 + 3560) = *(a1 + 3272);
  *(v6 + 3532) = v49;
  *(v6 + 3548) = v48;
  *(v6 + 3516) = v50;
  v51 = *(a1 + 3212);
  v52 = *(a1 + 3180);
  *(v6 + 3484) = *(a1 + 3196);
  *(v6 + 3500) = v51;
  *(v6 + 3468) = v52;
  v53 = *(a1 + 3320);
  v54 = *(a1 + 3288);
  *(v6 + 3592) = *(a1 + 3304);
  *(v6 + 3608) = v53;
  *(v6 + 3576) = v54;
  v56 = *(a1 + 3352);
  v55 = *(a1 + 3368);
  v57 = *(a1 + 3336);
  *(v6 + 3668) = *(a1 + 3380);
  *(v6 + 3640) = v56;
  *(v6 + 3656) = v55;
  *(v6 + 3624) = v57;
  memcpy(v6 + 3684, (a1 + 3396), 0xBD0uLL);
  memcpy(v6 + 6708, (a1 + 6420), 0xBD0uLL);
  memcpy(v6 + 18808, (a1 + 9444), 0x288uLL);
  memcpy(v6 + 19456, (a1 + 10092), 0x144uLL);
  memcpy(v6 + 21776, (a1 + 10740), 0x30000uLL);
  result = memcpy(v6 + 218384, (a1 + 207348), 0x30000uLL);
  v7[942] = *(a1 + 260);
  v7[943] = *(a1 + 708);
  v59 = (*(a1 + 712) + 2);
  v7[944] = v59;
  v60 = *(a1 + 784);
  v61 = *(a1 + 768);
  *(v6 + 20116) = *(a1 + 752);
  *(v6 + 20132) = v61;
  *(v6 + 5037) = v60;
  v63 = *(a1 + 406808);
  v62 = *(a1 + 406824);
  v64 = *(a1 + 406792);
  *(v6 + 20244) = *(a1 + 406836);
  *(v6 + 20216) = v63;
  *(v6 + 20232) = v62;
  *(v6 + 20200) = v64;
  v65 = *(a1 + 406744);
  v66 = *(a1 + 406776);
  *(v6 + 20168) = *(a1 + 406760);
  *(v6 + 20184) = v66;
  *(v6 + 20152) = v65;
  v68 = *(a1 + 406916);
  v67 = *(a1 + 406932);
  v69 = *(a1 + 406900);
  *(v6 + 1272) = *(a1 + 406944);
  *(v6 + 20324) = v68;
  *(v6 + 20340) = v67;
  *(v6 + 20308) = v69;
  v70 = *(a1 + 406852);
  v71 = *(a1 + 406884);
  *(v6 + 20276) = *(a1 + 406868);
  *(v6 + 20292) = v71;
  *(v6 + 20260) = v70;
  v72 = *(a1 + 407008);
  v73 = *(a1 + 407024);
  v74 = *(a1 + 407040);
  *(v6 + 20460) = *(a1 + 407052);
  *(v6 + 1278) = v74;
  *(v6 + 1277) = v73;
  *(v6 + 1276) = v72;
  v76 = *(a1 + 406960);
  v75 = *(a1 + 406976);
  *(v6 + 1275) = *(a1 + 406992);
  *(v6 + 1273) = v76;
  *(v6 + 1274) = v75;
  v77 = *(a1 + 407116);
  v78 = *(a1 + 407132);
  v79 = *(a1 + 407148);
  *(v6 + 20788) = *(a1 + 407160);
  *(v6 + 20760) = v78;
  *(v6 + 20776) = v79;
  *(v6 + 20744) = v77;
  v80 = *(a1 + 407068);
  v81 = *(a1 + 407100);
  *(v6 + 20712) = *(a1 + 407084);
  *(v6 + 20728) = v81;
  *(v6 + 20696) = v80;
  v82 = *(a1 + 407224);
  v83 = *(a1 + 407240);
  v84 = *(a1 + 407256);
  *(v6 + 1306) = *(a1 + 407268);
  *(v6 + 20868) = v83;
  *(v6 + 20884) = v84;
  *(v6 + 20852) = v82;
  v85 = *(a1 + 407176);
  v86 = *(a1 + 407208);
  *(v6 + 20820) = *(a1 + 407192);
  *(v6 + 20836) = v86;
  *(v6 + 20804) = v85;
  v87 = *(a1 + 407332);
  v88 = *(a1 + 407348);
  v89 = *(a1 + 407364);
  *(v6 + 21220) = *(a1 + 407376);
  *(v6 + 21192) = v88;
  *(v6 + 21208) = v89;
  *(v6 + 21176) = v87;
  v90 = *(a1 + 407284);
  v91 = *(a1 + 407316);
  *(v6 + 21144) = *(a1 + 407300);
  *(v6 + 21160) = v91;
  *(v6 + 21128) = v90;
  v92 = *(a1 + 407440);
  v93 = *(a1 + 407456);
  v94 = *(a1 + 407472);
  *(v6 + 1333) = *(a1 + 407484);
  *(v6 + 21300) = v93;
  *(v6 + 21316) = v94;
  *(v6 + 21284) = v92;
  v95 = *(a1 + 407392);
  v96 = *(a1 + 407424);
  *(v6 + 21252) = *(a1 + 407408);
  *(v6 + 21268) = v96;
  *(v6 + 21236) = v95;
  v97 = *(a1 + 407548);
  v98 = *(a1 + 407564);
  v99 = *(a1 + 407580);
  *(v6 + 21652) = *(a1 + 407592);
  *(v6 + 21624) = v98;
  *(v6 + 21640) = v99;
  *(v6 + 21608) = v97;
  v100 = *(a1 + 407500);
  v101 = *(a1 + 407532);
  *(v6 + 21576) = *(a1 + 407516);
  *(v6 + 21592) = v101;
  *(v6 + 21560) = v100;
  v102 = *(a1 + 407656);
  v103 = *(a1 + 407672);
  v104 = *(a1 + 407688);
  *(v6 + 1360) = *(a1 + 407700);
  *(v6 + 21732) = v103;
  *(v6 + 21748) = v104;
  *(v6 + 21716) = v102;
  v105 = *(a1 + 407608);
  v106 = *(a1 + 407640);
  *(v6 + 21684) = *(a1 + 407624);
  *(v6 + 21700) = v106;
  *(v6 + 21668) = v105;
  v107 = v179.u32[1];
  if (v179.i32[1])
  {
    v182 = 0;
    v108 = v179.u32[0];
    v109 = (1 << v5);
    v175 = a2;
    v178 = (a2 + 2760);
    v180 = (a2 + 1464);
    v177 = v107;
    do
    {
      if (v108)
      {
        result = 0;
        v110 = v184;
        v111 = v178;
        v112 = v180;
        do
        {
          v113 = 0;
          v114 = v110;
          v115 = v112;
          v116 = v111;
          do
          {
            v117 = *&v6[4 * v113];
            if (v117)
            {
              v118 = 0;
              v119 = v114;
              v120 = v115;
              v121 = v116;
              do
              {
                v122 = *&v176[108 * v182 + 108 * result + 36 * v113 + 4 * v118];
                if ((v122 + 1) > 1)
                {
                  v123 = (v122 + 1);
                }

                else
                {
                  v123 = 1;
                }

                v124 = v119;
                v125 = v120;
                v126 = v121;
                do
                {
                  v127 = *v124;
                  v128 = v124[81];
                  *v125++ = (v127 << v5) | v128;
                  *v126++ = (v128 / v109) + v127;
                  ++v124;
                  --v123;
                }

                while (v123);
                ++v118;
                v121 += 6;
                v120 += 6;
                v119 += 3;
              }

              while (v118 != v117);
            }

            ++v113;
            v116 += 54;
            v115 += 54;
            v114 += 27;
          }

          while (v113 != 3);
          ++result;
          v111 += 162;
          v112 += 162;
          v110 += 81;
        }

        while (result != v108);
      }

      v178 += 162;
      v180 += 162;
      ++v182;
      v184 += 81;
    }

    while (v182 != v177);
    v129 = 0;
    v130 = (a2 + 9784);
    v131 = (a2 + 15832);
    v132 = v6 + 3576;
    do
    {
      if (v108)
      {
        v133 = 0;
        v134 = v130;
        result = v132;
        v135 = v131;
        do
        {
          v136 = 0;
          v137 = v134;
          v138 = result;
          v139 = v135;
          do
          {
            v140 = *&v6[4 * v136];
            v141 = v137;
            v142 = v138;
            v143 = v139;
            if (v140)
            {
              do
              {
                v144 = *(v142 - 27) << v5;
                v145 = *v142++;
                v146 = v144 | v145;
                *v141 = v146;
                v141 += 28;
                *v143 = v146 / v109;
                v143 += 28;
                --v140;
              }

              while (v140);
            }

            ++v136;
            v139 += 252;
            v138 += 9;
            v137 += 252;
          }

          while (v136 != 3);
          ++v133;
          v135 += 756;
          result += 108;
          v134 += 756;
        }

        while (v133 != v108);
      }

      ++v129;
      v131 += 756;
      v132 += 108;
      v130 += 756;
    }

    while (v129 != v177);
    v183 = v175 + 9840;
    v185 = 0;
    v181 = v175;
    do
    {
      if (v108)
      {
        v147 = 0;
        v148 = v183;
        result = v181;
        do
        {
          v149 = 0;
          v150 = v148;
          v151 = result;
          do
          {
            v152 = *&v6[4 * v149];
            if (v152)
            {
              v153 = 0;
              v154 = v150;
              v155 = v151;
              do
              {
                v156 = *&v6[108 * v185 + 3360 + 108 * v147 + 36 * v149 + 4 * v153];
                if (v156)
                {
                  if ((v156 + 1) > 2)
                  {
                    v157 = (v156 + 1);
                  }

                  else
                  {
                    v157 = 2;
                  }

                  v158 = v154;
                  v159 = v155;
                  v160 = 1;
                  do
                  {
                    v161 = 0;
                    v162 = v159;
                    do
                    {
                      v163 = (*(v162 + 940) << v5) | *(v162 + 1696);
                      *&v158[v161] = v163;
                      v162[3965] = v163 / v109;
                      v161 += 8;
                      ++v162;
                    }

                    while (v161 != 56);
                    ++v160;
                    v159 += 7;
                    v158 += 56;
                  }

                  while (v160 != v157);
                }

                ++v153;
                v155 += 28;
                v154 += 224;
              }

              while (v153 != v152);
            }

            ++v149;
            v151 += 252;
            v150 += 2016;
          }

          while (v149 != 3);
          ++v147;
          result += 3024;
          v148 += 6048;
        }

        while (v147 != v108);
      }

      v181 += 3024;
      v183 += 6048;
      ++v185;
    }

    while (v185 != v177);
    v164 = 0;
    v165 = (v6 + 20260);
    v166 = v175 + 20528;
    do
    {
      if (v108)
      {
        v167 = 0;
        v168 = v165;
        v169 = v166;
        do
        {
          v170 = 0;
          v171 = v168;
          result = v169;
          do
          {
            v172 = v171;
            v173 = result;
            v174 = v59;
            if (v59)
            {
              do
              {
                v173[108] = (v172[217] << v5) | v172[244];
                v173[54] = (v172[109] << v5) | v172[136];
                *v173 = (*v172 << v5) | v172[27];
                v173 += 3;
                v172 += 3;
                --v174;
              }

              while (v174);
            }

            ++v170;
            result += 8;
            ++v171;
          }

          while (v170 != 3);
          ++v167;
          v169 += 216;
          v168 += 27;
        }

        while (v167 != v108);
      }

      ++v164;
      v166 += 216;
      v165 += 27;
    }

    while (v164 != v177);
  }

  return result;
}

uint64_t EDRMetaData_RBSP::parse_rpu_data(uint64_t a1, void *a2, uint64_t a3)
{
  v29 = *MEMORY[0x277D85DE8];
  bzero(a2, 0x65548uLL);
  *(a1 + 1328) = 0u;
  *(a1 + 1312) = 0u;
  *(a1 + 1296) = 0u;
  *(a1 + 1280) = 0u;
  *(a1 + 1264) = 0u;
  *(a1 + 1248) = 0u;
  *(a1 + 1232) = 0u;
  *(a1 + 1216) = 0u;
  *(a1 + 1200) = 0u;
  *(a1 + 1184) = 0u;
  *(a1 + 1168) = 0u;
  *(a1 + 1152) = 0u;
  *(a1 + 1136) = 0u;
  *(a1 + 1120) = 0u;
  *(a1 + 1104) = 0u;
  *(a1 + 1088) = 0u;
  *(a1 + 1072) = 0u;
  *(a1 + 1056) = 0u;
  *(a1 + 1040) = 0u;
  *(a1 + 1008) = 0u;
  *(a1 + 1024) = 0u;
  *(a1 + 976) = 0u;
  *(a1 + 992) = 0u;
  *(a1 + 944) = 0u;
  *(a1 + 960) = 0u;
  *(a1 + 912) = 0u;
  *(a1 + 928) = 0u;
  *(a1 + 1960) = 0u;
  *(a1 + 1976) = 0u;
  *(a1 + 1928) = 0u;
  *(a1 + 1944) = 0u;
  *(a1 + 1896) = 0u;
  *(a1 + 1912) = 0u;
  *(a1 + 1864) = 0u;
  *(a1 + 1880) = 0u;
  *(a1 + 1832) = 0u;
  *(a1 + 1848) = 0u;
  *(a1 + 1800) = 0u;
  *(a1 + 1816) = 0u;
  *(a1 + 1768) = 0u;
  *(a1 + 1784) = 0u;
  *(a1 + 1736) = 0u;
  *(a1 + 1752) = 0u;
  *(a1 + 1704) = 0u;
  *(a1 + 1720) = 0u;
  *(a1 + 1672) = 0u;
  *(a1 + 1688) = 0u;
  *(a1 + 1640) = 0u;
  *(a1 + 1656) = 0u;
  *(a1 + 1608) = 0u;
  *(a1 + 1624) = 0u;
  *(a1 + 1576) = 0u;
  *(a1 + 1592) = 0u;
  *(a1 + 1560) = 0u;
  *(a1 + 406512) = 0u;
  *(a1 + 406484) = 0u;
  *(a1 + 406500) = 0u;
  *(a1 + 406452) = 0u;
  *(a1 + 406468) = 0u;
  *(a1 + 406420) = 0u;
  *(a1 + 406436) = 0u;
  *(a1 + 406636) = 0u;
  *(a1 + 406652) = 0u;
  *(a1 + 406668) = 0u;
  *(a1 + 406684) = 0u;
  *(a1 + 406700) = 0u;
  *(a1 + 406716) = 0u;
  *(a1 + 406728) = 0u;
  *(a1 + 268) = 0;
  *(a1 + 403956) = 0u;
  *(a1 + 405016) = 0u;
  *(a1 + 405032) = 0u;
  v6 = EDRMetaData_RBSP::rpu_data_header(a1);
  if (v6)
  {
    goto LABEL_2;
  }

  if (*(a1 + 148))
  {
    goto LABEL_40;
  }

  v6 = EDRMetaData_RBSP::vdr_rpu_data_payload(a1);
  if (v6)
  {
LABEL_2:
    v7 = v6;
    goto LABEL_3;
  }

  if (*(a1 + 148))
  {
LABEL_40:
    if (!*(a1 + 96))
    {
      memcpy((a1 + 2424), (a1 + 408980), 0x144uLL);
      *(a1 + 340) = *(a1 + 409628);
      *(a1 + 348) = *(a1 + 409636);
      v13 = *(a1 + 409480);
      *(a1 + 620) = *(a1 + 409464);
      *(a1 + 636) = v13;
      *(a1 + 652) = *(a1 + 409496);
      *(a1 + 668) = *(a1 + 409512);
      v14 = *(a1 + 409416);
      *(a1 + 556) = *(a1 + 409400);
      *(a1 + 572) = v14;
      v15 = *(a1 + 409448);
      *(a1 + 588) = *(a1 + 409432);
      *(a1 + 604) = v15;
      v16 = *(a1 + 409352);
      *(a1 + 492) = *(a1 + 409336);
      *(a1 + 508) = v16;
      v17 = *(a1 + 409384);
      *(a1 + 524) = *(a1 + 409368);
      *(a1 + 540) = v17;
      v18 = *(a1 + 409320);
      *(a1 + 460) = *(a1 + 409304);
      *(a1 + 476) = v18;
      v19 = *(a1 + 409600);
      *(a1 + 2056) = *(a1 + 409584);
      *(a1 + 2072) = v19;
      *(a1 + 2084) = *(a1 + 409612);
      v20 = *(a1 + 409536);
      *(a1 + 1992) = *(a1 + 409520);
      *(a1 + 2008) = v20;
      v21 = *(a1 + 409568);
      *(a1 + 2024) = *(a1 + 409552);
      *(a1 + 2040) = v21;
    }
  }

  if (*(a1 + 256) == 1)
  {
    if (!*(a1 + 96))
    {
      if (enableLogInstance)
      {
        if (logInstanceID)
        {
          v22 = logInstanceID;
        }

        else
        {
          v22 = prevLogInstanceID;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v25 = 134218242;
          v26 = WORD1(v22);
          v27 = 2080;
          v28 = "parse_rpu_data";
          _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx %s: EDRMetaData_RBSP error reserved_zero_3bits=1, first frame, bail!\n", &v25, 0x16u);
        }

        prevLogInstanceID = v22;
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v25 = 136315138;
        v26 = "parse_rpu_data";
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] %s: EDRMetaData_RBSP error reserved_zero_3bits=1, first frame, bail!\n", &v25, 0xCu);
      }

      v7 = *(a1 + 88);
      goto LABEL_3;
    }

    goto LABEL_27;
  }

  EDRMetaData_RBSP::vdr_dm_set_default(a1);
  if (!*(a1 + 268) || (v23 = EDRMetaData_RBSP::vdr_dm_data_payload(a1), !v23))
  {
LABEL_27:
    EDRMetaData_RBSP::copy_rpu_data(a1, a2);
    if (a3)
    {
      EDRMetaData_RBSP::copy_dm_data(a1, a3);
    }

    v7 = 0;
    ++*(a1 + 96);
    goto LABEL_3;
  }

  v7 = v23;
  if (enableLogInstance)
  {
    if (logInstanceID)
    {
      v24 = logInstanceID;
    }

    else
    {
      v24 = prevLogInstanceID;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v25 = 134218242;
      v26 = WORD1(v24);
      v27 = 2080;
      v28 = "parse_rpu_data";
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx %s: EDRMetaData_RBSP error in vdr_dm_data_payload, bail!\n", &v25, 0x16u);
    }

    prevLogInstanceID = v24;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v25 = 136315138;
    v26 = "parse_rpu_data";
    _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] %s: EDRMetaData_RBSP error in vdr_dm_data_payload, bail!\n", &v25, 0xCu);
  }

LABEL_3:
  v10 = *(a1 + 64);
  v9 = (a1 + 64);
  v8 = v10;
  if (v10)
  {
    free(v8);
    *v9 = 0;
    v9[1] = 0;
    v9[2] = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t EDRMetaData_RBSP::rpu_data_header(EDRMetaData_RBSP *this)
{
  v91 = *MEMORY[0x277D85DE8];
  var1_high = HIBYTE(this->var1);
  commonRBSP::flush_bits(this, 8);
  if (var1_high != 25)
  {
    if (enableLogInstance)
    {
      if (logInstanceID)
      {
        v18 = logInstanceID;
      }

      else
      {
        v18 = prevLogInstanceID;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_33;
      }

      v83 = 134218498;
      v84 = WORD1(v18);
      v85 = 2080;
      *v86 = "rpu_data_header";
      *&v86[8] = 1024;
      *v87 = var1_high;
      v19 = MEMORY[0x277D86220];
      v20 = " [1.450.54] #%04llx %s: EDRMetaData_RBSP error nal_unit_type = %d, bail!\n";
      goto LABEL_31;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_95;
    }

    v83 = 136315394;
    v84 = "rpu_data_header";
    v85 = 1024;
    *v86 = var1_high;
    v22 = MEMORY[0x277D86220];
    v23 = " [1.450.54] %s: EDRMetaData_RBSP error nal_unit_type = %d, bail!\n";
    goto LABEL_93;
  }

  v3 = this->var1 >> 58;
  commonRBSP::flush_bits(this, 6);
  this->var22 = v3;
  if (v3 != 2)
  {
    if (enableLogInstance)
    {
      if (logInstanceID)
      {
        v18 = logInstanceID;
      }

      else
      {
        v18 = prevLogInstanceID;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_33;
      }

      v83 = 134218498;
      v84 = WORD1(v18);
      v85 = 2080;
      *v86 = "rpu_data_header";
      *&v86[8] = 1024;
      *v87 = v3;
      v19 = MEMORY[0x277D86220];
      v20 = " [1.450.54] #%04llx %s: EDRMetaData_RBSP error rpu_type = %d, bail!\n";
      goto LABEL_31;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_95;
    }

    v83 = 136315394;
    v84 = "rpu_data_header";
    v85 = 1024;
    *v86 = v3;
    v22 = MEMORY[0x277D86220];
    v23 = " [1.450.54] %s: EDRMetaData_RBSP error rpu_type = %d, bail!\n";
LABEL_93:
    v57 = 18;
    goto LABEL_94;
  }

  v4 = this->var1 >> 53;
  commonRBSP::flush_bits(this, 11);
  this->var25 = v4;
  this->var26 = v4 >> 8;
  this->var27 = v4 >> 4;
  this->var28 = v4 & 0xF;
  v5 = this->var1 >> 60;
  commonRBSP::flush_bits(this, 4);
  this->var29 = v5;
  v6 = this->var1 >> 60;
  commonRBSP::flush_bits(this, 4);
  this->var30 = v6;
  var1 = this->var1;
  commonRBSP::flush_bits(this, 1);
  this->var31 = var1 >> 63;
  if ((var1 & 0x8000000000000000) != 0)
  {
    if (this->var32 == 2 && !this->var33)
    {
      this->var36 = commonRBSP::ue_v(this);
    }

    v8 = this->var1 >> 63;
    commonRBSP::flush_bits(this, 1);
    this->var37 = v8;
    v9 = this->var1 >> 62;
    commonRBSP::flush_bits(this, 2);
    this->var38 = v9;
    if (!v9)
    {
      this->var39 = commonRBSP::ue_v(this);
      if (this->var37)
      {
        this->var40 = commonRBSP::ue_v(this);
      }
    }

    v10 = this->var1 >> 62;
    commonRBSP::flush_bits(this, 2);
    this->var41 = v10;
    v11 = this->var1 >> 63;
    commonRBSP::flush_bits(this, 1);
    this->var42 = v11;
    if ((this->var25 & 0x700) == 0)
    {
      v50 = commonRBSP::ue_v(this);
      if (v50 >= 6)
      {
        v51 = 6;
      }

      else
      {
        v51 = v50;
      }

      this->var43 = v51;
      this->var44 = commonRBSP::ue_v(this);
      this->var45 = commonRBSP::ue_v(this);
      v52 = this->var1;
      commonRBSP::flush_bits(this, 1);
      this->var46 = v52 >> 63;
      if ((v52 & 0x8000000000000000) != 0)
      {
        v53 = this->var1;
        commonRBSP::flush_bits(this, 1);
        this->var47 = v53 >> 63;
        if (!this->var38 && (v53 & 0x8000000000000000) != 0)
        {
          this->var48 = commonRBSP::ue_v(this);
        }
      }

      v54 = this->var1 >> 61;
      commonRBSP::flush_bits(this, 3);
      this->var50 = v54;
      v55 = this->var1 >> 63;
      commonRBSP::flush_bits(this, 1);
      this->var49 = v55;
      v56 = this->var1;
      commonRBSP::flush_bits(this, 1);
      this->var51 = v56 >> 63;
      if ((v56 & 0x8000000000000000) == 0 && !this->var38 && this->var37)
      {
        this->var52 = commonRBSP::ue_v(this);
      }
    }
  }

  v12 = this->var1 >> 63;
  commonRBSP::flush_bits(this, 1);
  this->var53 = v12;
  v13 = this->var1;
  commonRBSP::flush_bits(this, 1);
  this->var23 = v13 >> 63;
  v14 = commonRBSP::ue_v(this);
  v15 = v14;
  if ((v13 & 0x8000000000000000) != 0)
  {
    result = 0;
    this->var54 = v15;
  }

  else
  {
    this->var55 = v14;
    this->var56 = commonRBSP::ue_v(this);
    v16 = commonRBSP::ue_v(this);
    v17 = v16;
    this->var57 = v16;
    if (v16 >= 3)
    {
      if (enableLogInstance)
      {
        if (logInstanceID)
        {
          v18 = logInstanceID;
        }

        else
        {
          v18 = prevLogInstanceID;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_33;
        }

        v83 = 134218498;
        v84 = WORD1(v18);
        v85 = 2080;
        *v86 = "rpu_data_header";
        *&v86[8] = 1024;
        *v87 = v17;
        v19 = MEMORY[0x277D86220];
        v20 = " [1.450.54] #%04llx %s: ERROR: Out of bound! mapping_chroma_format_idc = %d, bail!\n";
LABEL_31:
        v21 = 28;
LABEL_32:
        _os_log_impl(&dword_250836000, v19, OS_LOG_TYPE_DEFAULT, v20, &v83, v21);
        goto LABEL_33;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_95;
      }

      v83 = 136315394;
      v84 = "rpu_data_header";
      v85 = 1024;
      *v86 = v17;
      v22 = MEMORY[0x277D86220];
      v23 = " [1.450.54] %s: ERROR: Out of bound! mapping_chroma_format_idc = %d, bail!\n";
      goto LABEL_93;
    }

    var33 = this->var33;
    if ((this->var25 & 0x700) == 0 && (v26 = v16 == var33, var33 = v16, !v26) || this->var32 != var33)
    {
      v27 = this->var1 >> 60;
      commonRBSP::flush_bits(this, 4);
      this->var58 = v27;
      if (v27 == 14)
      {
        var57 = this->var57;
        if (this->var34 != this->var59[var57])
        {
          v29 = this->var1 >> 62;
          commonRBSP::flush_bits(this, 2);
          this->var61 = v29;
          var57 = this->var57;
        }

        if (this->var35 != this->var60[var57])
        {
          v30 = this->var1 >> 62;
          commonRBSP::flush_bits(this, 2);
          this->var62 = v30;
        }

        LODWORD(v27) = this->var58;
      }

      if (v27 == 15 && !this->var33 && this->var32 == 2)
      {
        v31 = this->var1 >> 61;
        commonRBSP::flush_bits(this, 3);
        this->var63 = v31;
        v32 = this->var1 >> 61;
        commonRBSP::flush_bits(this, 3);
        this->var64 = v32;
        if (this->var36 != 1)
        {
          v33 = this->var1 >> 61;
          commonRBSP::flush_bits(this, 3);
          this->var65 = v33;
          v34 = this->var1 >> 61;
          commonRBSP::flush_bits(this, 3);
          this->var66 = v34;
        }
      }
    }

    v35 = 0;
    var67 = this->var67;
    v37 = this->var68;
    do
    {
      v38 = commonRBSP::ue_v(this);
      var67[v35] = v38;
      if (v35)
      {
        v39 = 3;
      }

      else
      {
        v39 = 7;
      }

      if (v38 > v39)
      {
        v47 = v38;
        if (!enableLogInstance)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_95;
          }

          var30 = this->var30;
          v83 = 136315906;
          v84 = "rpu_data_header";
          v85 = 1024;
          *v86 = var30;
          *&v86[4] = 1024;
          *&v86[6] = v35;
          *v87 = 1024;
          *&v87[2] = v47;
          v22 = MEMORY[0x277D86220];
          v23 = " [1.450.54] %s: ERROR: Out of bound! vdr_rpu_level = %d, num_pivots_minus2[%d] = %d, bail!\n";
          v57 = 30;
          goto LABEL_94;
        }

        if (logInstanceID)
        {
          v48 = logInstanceID;
        }

        else
        {
          v48 = prevLogInstanceID;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v49 = this->var30;
          v83 = 134219010;
          v84 = WORD1(v48);
          v85 = 2080;
          *v86 = "rpu_data_header";
          *&v86[8] = 1024;
          *v87 = v49;
          *&v87[4] = 1024;
          v88 = v35;
          v89 = 1024;
          v90 = v47;
          _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx %s: ERROR: Out of bound! vdr_rpu_level = %d, num_pivots_minus2[%d] = %d, bail!\n", &v83, 0x28u);
        }

        prevLogInstanceID = v48;
LABEL_95:
        result = this->var14;
        goto LABEL_96;
      }

      v40 = 0;
      do
      {
        var43 = this->var43;
        v42 = HIDWORD(this->var1) >> (24 - var43);
        commonRBSP::flush_bits(this, var43 + 8);
        (*v37)[v40++] = v42;
      }

      while (v40 < var67[v35] + 2);
      ++v35;
      ++v37;
    }

    while (v35 != 3);
    if ((this->var25 & 0x700) == 0 && this->var46)
    {
      v60 = this->var1 >> 61;
      commonRBSP::flush_bits(this, 3);
      this->var70 = v60;
      if (v60)
      {
        for (i = 680; i != 692; i += 4)
        {
          v62 = this->var1 >> 61;
          commonRBSP::flush_bits(this, 3);
          *(&this->var0 + i) = v62;
        }
      }

      v63 = this->var1 >> 61;
      commonRBSP::flush_bits(this, 3);
      this->var72 = v63;
      if (v63)
      {
        for (j = 696; j != 708; j += 4)
        {
          v65 = this->var1 >> 61;
          commonRBSP::flush_bits(this, 3);
          *(&this->var0 + j) = v65;
        }
      }
    }

    if ((this->var25 & 0x700) == 0 && !this->var51)
    {
      v69 = this->var1 >> 61;
      commonRBSP::flush_bits(this, 3);
      this->var74 = v69;
      if (this->var57 == 2)
      {
        v70 = commonRBSP::ue_v(this);
        this->var75 = v70;
        if (v70 > 7)
        {
          v71 = v70;
          if (!enableLogInstance)
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_95;
            }

            v82 = this->var30;
            v83 = 136315650;
            v84 = "rpu_data_header";
            v85 = 1024;
            *v86 = v82;
            *&v86[4] = 1024;
            *&v86[6] = v71;
            v22 = MEMORY[0x277D86220];
            v23 = " [1.450.54] %s: EDRMetaData_RBSP error vdr_rpu_level = %d, nlq_num_pivots_minus2 = %d, bail!\n";
            goto LABEL_131;
          }

          if (logInstanceID)
          {
            v18 = logInstanceID;
          }

          else
          {
            v18 = prevLogInstanceID;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v72 = this->var30;
            v83 = 134218754;
            v84 = WORD1(v18);
            v85 = 2080;
            *v86 = "rpu_data_header";
            *&v86[8] = 1024;
            *v87 = v72;
            *&v87[4] = 1024;
            v88 = v71;
            v19 = MEMORY[0x277D86220];
            v20 = " [1.450.54] #%04llx %s: EDRMetaData_RBSP error vdr_rpu_level = %d, nlq_num_pivots_minus2 = %d, bail!\n";
            goto LABEL_114;
          }

LABEL_33:
          prevLogInstanceID = v18;
          goto LABEL_95;
        }
      }

      else
      {
        this->var75 = 0;
      }

      v78 = 0;
      do
      {
        v79 = this->var43;
        v80 = HIDWORD(this->var1) >> (24 - v79);
        commonRBSP::flush_bits(this, v79 + 8);
        this->var76[v78++] = v80;
      }

      while (v78 < this->var75 + 2);
      if (this->var57 != this->var32)
      {
        v81 = this->var1 >> 61;
        commonRBSP::flush_bits(this, 3);
        this->var78 = v81;
      }
    }

    this->var79 = commonRBSP::ue_v(this);
    v43 = commonRBSP::ue_v(this);
    this->var80 = v43;
    var79 = this->var79;
    if (var79)
    {
      if (enableLogInstance)
      {
        if (logInstanceID)
        {
          v45 = logInstanceID;
        }

        else
        {
          v45 = prevLogInstanceID;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v46 = this->var30;
          v83 = 134218754;
          v84 = WORD1(v45);
          v85 = 2080;
          *v86 = "rpu_data_header";
          *&v86[8] = 1024;
          *v87 = v46;
          *&v87[4] = 1024;
          v88 = var79;
          _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx %s: EDRMetaData_RBSP error vdr_rpu_level = %d, num_x_partitions_minus1 = %d, bail!\n", &v83, 0x22u);
        }

        prevLogInstanceID = v45;
        goto LABEL_95;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_95;
      }

      v68 = this->var30;
      v83 = 136315650;
      v84 = "rpu_data_header";
      v85 = 1024;
      *v86 = v68;
      *&v86[4] = 1024;
      *&v86[6] = var79;
      v22 = MEMORY[0x277D86220];
      v23 = " [1.450.54] %s: EDRMetaData_RBSP error vdr_rpu_level = %d, num_x_partitions_minus1 = %d, bail!\n";
LABEL_131:
      v57 = 24;
LABEL_94:
      _os_log_impl(&dword_250836000, v22, OS_LOG_TYPE_DEFAULT, v23, &v83, v57);
      goto LABEL_95;
    }

    v66 = v43;
    if (v43)
    {
      if (!enableLogInstance)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_95;
        }

        v77 = this->var30;
        v83 = 136315650;
        v84 = "rpu_data_header";
        v85 = 1024;
        *v86 = v77;
        *&v86[4] = 1024;
        *&v86[6] = v66;
        v22 = MEMORY[0x277D86220];
        v23 = " [1.450.54] %s: EDRMetaData_RBSP error vdr_rpu_level = %d, num_y_partitions_minus1 = %d, bail!\n";
        goto LABEL_131;
      }

      if (logInstanceID)
      {
        v18 = logInstanceID;
      }

      else
      {
        v18 = prevLogInstanceID;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v67 = this->var30;
        v83 = 134218754;
        v84 = WORD1(v18);
        v85 = 2080;
        *v86 = "rpu_data_header";
        *&v86[8] = 1024;
        *v87 = v67;
        *&v87[4] = 1024;
        v88 = v66;
        v19 = MEMORY[0x277D86220];
        v20 = " [1.450.54] #%04llx %s: EDRMetaData_RBSP error vdr_rpu_level = %d, num_y_partitions_minus1 = %d, bail!\n";
LABEL_114:
        v21 = 34;
        goto LABEL_32;
      }

      goto LABEL_33;
    }

    EDRMetaData_RBSP::assign_pivot_values(this);
    v73 = this->var76[0];
    this->var77[0] = v73;
    var75 = this->var75;
    if (var75 > 0xFFFFFFFD)
    {
      result = 0;
    }

    else
    {
      v75 = var75 + 1;
      v76 = &this->var77[1];
      result = 0;
      do
      {
        v73 += *(v76 - 9);
        *v76++ = v73;
        --v75;
      }

      while (v75);
    }
  }

LABEL_96:
  v58 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t EDRMetaData_RBSP::vdr_rpu_data_payload(EDRMetaData_RBSP *this)
{
  v2 = 0;
  while (2)
  {
    v3 = 0;
    do
    {
      if (EDRMetaData_RBSP::rpu_data_mapping(this, v2, v3))
      {
        return this->var14;
      }

      var25 = this->var25;
      var33 = this->var33;
      if ((var25 & 0x700) == 0 && this->var57 != var33 || this->var32 != var33)
      {
        EDRMetaData_RBSP::rpu_data_chroma_resampling(this, v2, v3);
        var25 = this->var25;
      }

      if ((var25 & 0x700) == 0 && this->var47)
      {
        EDRMetaData_RBSP::rpu_data_spatial_resampling(this, v2, v3);
        var25 = this->var25;
      }

      if ((var25 & 0x700) == 0 && !this->var51)
      {
        if (EDRMetaData_RBSP::rpu_data_nlq(this, v2, v3))
        {
          return this->var14;
        }

        if (this->var57 != this->var32)
        {
          EDRMetaData_RBSP::rpu_data_el_chroma_resampling(this, v2, v3);
        }
      }

      ++v3;
    }

    while (v3 <= this->var79);
    if (++v2 <= this->var80)
    {
      continue;
    }

    break;
  }

  return 0;
}

EDRMetaData_RBSP *EDRMetaData_RBSP::vdr_dm_set_default(EDRMetaData_RBSP *this)
{
  v1 = 0;
  v2 = *&this->var163[4];
  *this->var132 = *this->var163;
  *&this->var132[4] = v2;
  this->var132[8] = this->var163[8];
  *this->var133 = *this->var164;
  this->var133[2] = this->var164[2];
  v3 = *&this->var165[4];
  *this->var134 = *this->var165;
  *&this->var134[4] = v3;
  this->var134[8] = this->var165[8];
  *&this->var129 = 0;
  this->var131 = 0;
  *&this->var135 = xmmword_2508CE080;
  *&this->var139 = xmmword_2508CE090;
  *&this->var143 = xmmword_2508CEBA0;
  this->var150.var0 = 0;
  do
  {
    this->var151[v1++].var0 = 0;
  }

  while (v1 != 8);
  this->var152.var0 = 0;
  this->var153.var0 = 0;
  this->var154.var0 = 0;
  var156 = this->var156;
  v5 = 5;
  *&v6 = 0x800080008000800;
  *(&v6 + 1) = 0x800080008000800;
  this->var155.var0 = 0;
  do
  {
    *&var156->var0 = 0;
    var156->var2 = 0;
    *&var156->var3 = v6;
    *var156->var11 = 0x8080808080808080;
    *&var156->var12[2] = -2139062144;
    ++var156;
    --v5;
  }

  while (v5);
  this->var157.var0 = 0;
  this->var158[0].var0 = 0;
  this->var158[1].var0 = 0;
  this->var158[2].var0 = 0;
  this->var158[3].var0 = 0;
  this->var159.var0 = 0;
  this->var160.var0 = 0;
  this->var161.var0 = 0;
  this->var162.var0 = 0;
  return this;
}

uint64_t EDRMetaData_RBSP::vdr_dm_data_payload(EDRMetaData_RBSP *this)
{
  v66 = *MEMORY[0x277D85DE8];
  v2 = &this->var113[0][1][2][6];
  this->var129 = commonRBSP::ue_v(this);
  v2[622] = commonRBSP::ue_v(this);
  v3 = 0;
  v2[623] = commonRBSP::ue_v(this);
  do
  {
    var1_high = SHIWORD(this->var1);
    commonRBSP::flush_bits(this, 16);
    this->var132[v3++] = var1_high;
  }

  while (v3 != 9);
  for (i = 0; i != 3; ++i)
  {
    v6 = HIDWORD(this->var1);
    commonRBSP::flush_bits(this, 32);
    this->var133[i] = v6;
  }

  for (j = 0; j != 9; ++j)
  {
    v8 = SHIWORD(this->var1);
    commonRBSP::flush_bits(this, 16);
    this->var134[j] = v8;
  }

  v9 = HIWORD(this->var1);
  commonRBSP::flush_bits(this, 16);
  v2[645] = v9;
  v10 = HIWORD(this->var1);
  commonRBSP::flush_bits(this, 16);
  v2[646] = v10;
  v11 = HIWORD(this->var1);
  commonRBSP::flush_bits(this, 16);
  v2[647] = v11;
  v12 = HIDWORD(this->var1);
  commonRBSP::flush_bits(this, 32);
  v2[648] = v12;
  v13 = this->var1 >> 59;
  commonRBSP::flush_bits(this, 5);
  v2[649] = v13;
  if ((v13 - 17) < 0xFFFFFFF7)
  {
    if (enableLogInstance)
    {
      if (logInstanceID)
      {
        v14 = logInstanceID;
      }

      else
      {
        v14 = prevLogInstanceID;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }

      *buf = 134218498;
      v60 = WORD1(v14);
      v61 = 2080;
      *v62 = "vdr_dm_data_payload";
      *&v62[8] = 1024;
      v63 = v13;
      v15 = MEMORY[0x277D86220];
      v16 = " [1.450.54] #%04llx %s: EDRMetaData_RBSP error signal_bit_depth = %d, bail!\n";
LABEL_21:
      _os_log_impl(&dword_250836000, v15, OS_LOG_TYPE_DEFAULT, v16, buf, 0x1Cu);
LABEL_22:
      prevLogInstanceID = v14;
      goto LABEL_38;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_38;
    }

    *buf = 136315394;
    v60 = "vdr_dm_data_payload";
    v61 = 1024;
    *v62 = v13;
    v33 = MEMORY[0x277D86220];
    v34 = " [1.450.54] %s: EDRMetaData_RBSP error signal_bit_depth = %d, bail!\n";
LABEL_36:
    v35 = 18;
    goto LABEL_37;
  }

  v17 = this->var1 >> 62;
  commonRBSP::flush_bits(this, 2);
  v2[650] = v17;
  v18 = this->var1 >> 62;
  commonRBSP::flush_bits(this, 2);
  v2[651] = v18;
  v19 = this->var1 >> 62;
  commonRBSP::flush_bits(this, 2);
  v2[652] = v19;
  v20 = this->var1 >> 52;
  commonRBSP::flush_bits(this, 12);
  v2[653] = v20;
  v21 = this->var1 >> 52;
  commonRBSP::flush_bits(this, 12);
  v2[654] = v21;
  v22 = this->var1 >> 54;
  commonRBSP::flush_bits(this, 10);
  v2[655] = v22;
  v23 = commonRBSP::ue_v(this);
  v24 = v23;
  v2[656] = v23;
  if (v23 >= 0xFF)
  {
    if (enableLogInstance)
    {
      if (logInstanceID)
      {
        v14 = logInstanceID;
      }

      else
      {
        v14 = prevLogInstanceID;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }

      *buf = 134218498;
      v60 = WORD1(v14);
      v61 = 2080;
      *v62 = "vdr_dm_data_payload";
      *&v62[8] = 1024;
      v63 = v24;
      v15 = MEMORY[0x277D86220];
      v16 = " [1.450.54] #%04llx %s: EDRMetaData_RBSP error num_ext_blocks = %d > 254, bail!\n";
      goto LABEL_21;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_38;
    }

    *buf = 136315394;
    v60 = "vdr_dm_data_payload";
    v61 = 1024;
    *v62 = v24;
    v33 = MEMORY[0x277D86220];
    v34 = " [1.450.54] %s: EDRMetaData_RBSP error num_ext_blocks = %d > 254, bail!\n";
    goto LABEL_36;
  }

  v58 = 0;
  *(v2 + 657) = 0;
  v2[659] = 0;
  if (v23)
  {
    commonRBSP::flush_bits(this, this->var2 & 7);
    if (v2[656])
    {
      v26 = 0;
      while (EDRMetaData_RBSP::ext_content_adaptive_metadata(this, v25, 0, &v58))
      {
        if (++v26 >= v2[656])
        {
          goto LABEL_28;
        }
      }

      if (enableLogInstance)
      {
        if (logInstanceID)
        {
          v50 = logInstanceID;
        }

        else
        {
          v50 = prevLogInstanceID;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_67;
        }

        *buf = 134218242;
        v60 = WORD1(v50);
        v61 = 2080;
        *v62 = "vdr_dm_data_payload";
        v51 = MEMORY[0x277D86220];
        v52 = " [1.450.54] #%04llx %s: EDRMetaData_RBSP error in ext_content_adaptive_metadata, EXT_BLOCK_PAYLOAD, bail!\n";
        goto LABEL_66;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_73;
      }

      *buf = 136315138;
      v60 = "vdr_dm_data_payload";
      v53 = MEMORY[0x277D86220];
      v54 = " [1.450.54] %s: EDRMetaData_RBSP error in ext_content_adaptive_metadata, EXT_BLOCK_PAYLOAD, bail!\n";
      goto LABEL_72;
    }
  }

LABEL_28:
  this->var16 = this->var1;
  var2 = this->var2;
  this->var17 = var2;
  this->var18 = this->var5;
  this->var19 = this->var9;
  this->var20 = this->var8;
  this->var21 = this->var12;
  commonRBSP::flush_bits(this, var2 & 7);
  var11 = this->var11;
  v29 = (this->var12 - var11 + this->var2 / -8 - 5);
  if ((this->var12 - var11 + this->var2 / -8) == 5)
  {
    v31 = -1;
  }

  else
  {
    v30 = (var11 + 1);
    v31 = -1;
    do
    {
      v32 = *v30++;
      v31 = crc32_lut[v32 ^ HIBYTE(v31)] ^ (v31 << 8);
      --v29;
    }

    while (v29);
  }

  v38 = HIDWORD(this->var1);
  commonRBSP::flush_bits(this, 32);
  this->var24 = v38;
  if (v31 == v38)
  {
    goto LABEL_73;
  }

  this->var1 = this->var16;
  var17 = this->var17;
  this->var2 = var17;
  var18 = this->var18;
  this->var5 = var18;
  this->var9 = this->var19;
  this->var8 = this->var20;
  this->var12 = this->var21;
  v41 = LODWORD(this->var6) - var18;
  v43 = var17 + 7;
  v42 = var17 < -7;
  v44 = var17 + 14;
  if (!v42)
  {
    v44 = v43;
  }

  if (v41 + (v44 >> 3) < 6)
  {
    v47 = v2[656];
    if (v47 < 0x100)
    {
      goto LABEL_73;
    }

    v46 = 0;
LABEL_53:
    if (enableLogInstance)
    {
      if (logInstanceID)
      {
        v49 = logInstanceID;
      }

      else
      {
        v49 = prevLogInstanceID;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218754;
        v60 = WORD1(v49);
        v61 = 2080;
        *v62 = "vdr_dm_data_payload";
        *&v62[8] = 1024;
        v63 = v46;
        v64 = 1024;
        v65 = v47;
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx %s: EDRMetaData_RBSP error num_blocks_payload2[%d] + num_ext_blocks[%d] > 255, bail!\n", buf, 0x22u);
      }

      prevLogInstanceID = v49;
      goto LABEL_38;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
LABEL_38:
      result = this->var14;
      goto LABEL_39;
    }

    *buf = 136315650;
    v60 = "vdr_dm_data_payload";
    v61 = 1024;
    *v62 = v46;
    *&v62[4] = 1024;
    *&v62[6] = v47;
    v33 = MEMORY[0x277D86220];
    v34 = " [1.450.54] %s: EDRMetaData_RBSP error num_blocks_payload2[%d] + num_ext_blocks[%d] > 255, bail!\n";
    v35 = 24;
LABEL_37:
    _os_log_impl(&dword_250836000, v33, OS_LOG_TYPE_DEFAULT, v34, buf, v35);
    goto LABEL_38;
  }

  v45 = commonRBSP::ue_v(this);
  v46 = v45;
  v47 = v2[656];
  if (v47 + v45 > 0xFF)
  {
    goto LABEL_53;
  }

  if (v45)
  {
    commonRBSP::flush_bits(this, this->var2 & 7);
    while (EDRMetaData_RBSP::ext_content_adaptive_metadata(this, v48, 1, &v58))
    {
      if (!--v46)
      {
        goto LABEL_73;
      }
    }

    if (enableLogInstance)
    {
      if (logInstanceID)
      {
        v50 = logInstanceID;
      }

      else
      {
        v50 = prevLogInstanceID;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_67;
      }

      *buf = 134218242;
      v60 = WORD1(v50);
      v61 = 2080;
      *v62 = "vdr_dm_data_payload";
      v51 = MEMORY[0x277D86220];
      v52 = " [1.450.54] #%04llx %s: EDRMetaData_RBSP error in ext_content_adaptive_metadata, EXT_BLOCK_PAYLOAD2, bail!\n";
LABEL_66:
      _os_log_impl(&dword_250836000, v51, OS_LOG_TYPE_DEFAULT, v52, buf, 0x16u);
LABEL_67:
      prevLogInstanceID = v50;
      goto LABEL_73;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_73;
    }

    *buf = 136315138;
    v60 = "vdr_dm_data_payload";
    v53 = MEMORY[0x277D86220];
    v54 = " [1.450.54] %s: EDRMetaData_RBSP error in ext_content_adaptive_metadata, EXT_BLOCK_PAYLOAD2, bail!\n";
LABEL_72:
    _os_log_impl(&dword_250836000, v53, OS_LOG_TYPE_DEFAULT, v54, buf, 0xCu);
  }

LABEL_73:
  v55 = v2[654];
  if (!v55)
  {
    v55 = 3696;
    v2[654] = 3696;
  }

  v56 = v2[653];
  if (!v56)
  {
    v56 = 62;
    v2[653] = 62;
  }

  v57 = v58;
  if (!*(v2 + 1320))
  {
    *(v2 + 1320) = 1;
    *(v2 + 1321) = v56;
    *(v2 + 1322) = v55;
    *(v2 + 1323) = (v56 + v55) >> 1;
    ++v57;
  }

  result = 0;
  v2[656] = v57;
LABEL_39:
  v37 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t set_dm_data_for_hdr10(uint64_t result)
{
  v1 = 0;
  *(result + 16) = xmmword_2508CEBB0;
  *(result + 32) = xmmword_2508CEBC0;
  *(result + 48) = 0;
  *(result + 64) = xmmword_2508CEBD0;
  *(result + 80) = xmmword_2508CEBE0;
  *(result + 96) = 0xFFFF00007CB3;
  *(result + 116) = 12;
  *(result + 132) = 0xC070000003ELL;
  *(result + 144) = 0;
  *(result + 156) = 0;
  do
  {
    *(result + 164 + v1) = 0;
    v1 += 16;
  }

  while (v1 != 128);
  *(result + 292) = 0;
  *(result + 300) = 0;
  *(result + 306) = 0;
  *(result + 316) = 0;
  *(result + 326) = 0;
  *(result + 360) = 0;
  *(result + 394) = 0;
  *(result + 428) = 0;
  *(result + 462) = 0;
  *(result + 496) = 0;
  *(result + 518) = 0;
  *(result + 546) = 0;
  *(result + 574) = 0;
  *(result + 602) = 0;
  *(result + 630) = 0;
  *(result + 636) = 0;
  *(result + 896) = 0;
  *(result + 900) = 0;
  *(result + 148) = 0;
  *(result + 152) = 0;
  return result;
}

double EDRMetaData_RBSP::set_rpu_data_forHDRx(EDRMetaData_RBSP *a1, char *a2, uint64_t a3, int a4)
{
  bzero(a2, 0x65548uLL);
  EDRMetaData_RBSP::vdr_dm_set_default(a1);
  *a2 = 2;
  *(a2 + 3) = xmmword_2508CEBF0;
  *(a2 + 16) = 1023;
  *&result = 0x3FF00000000;
  *(a2 + 132) = 0x3FF00000000;
  *(a2 + 204) = 0x3FF00000000;
  if (a3)
  {
    bzero(a3, 0x394uLL);
    EDRMetaData_RBSP::copy_dm_data(a1, a3);
    if (a4 == 5)
    {
      set_dm_data_for_hdr10(a3);
      *(a3 + 120) = 0;
      *&result = 0xC060000003ELL;
      *(a3 + 132) = 0xC060000003ELL;
      *(a3 + 144) = 1;
      *(a3 + 156) = -131071;
      *(a3 + 160) = -2;
    }

    else if (a4 == 10 || a4 == 8)
    {
      *(a3 + 120) = 0;
      *(a3 + 144) = 1;
      *&result = 0xE700000003ELL;
      *(a3 + 132) = 0xE700000003ELL;
      *(a3 + 156) = -65535;
      *(a3 + 160) = -1;
      *a2 = 0;
    }
  }

  return result;
}

EDRMetaData_RBSP *EDRMetaData_RBSP::assign_pivot_values(EDRMetaData_RBSP *this)
{
  v1 = 0;
  var68 = this->var68;
  var69 = this->var69;
  var67 = this->var67;
  v5 = &this->var69[0][1];
  v6 = &this->var68[0][1];
  do
  {
    v7 = var68[v1][0];
    var69[v1][0] = v7;
    if (var67[v1] <= 0xFFFFFFFD)
    {
      v8 = 0;
      do
      {
        v7 += v6[v8];
        v5[v8] = v7;
        this = (var67[v1] + 2);
        v9 = v8 + 2;
        ++v8;
      }

      while (v9 < this);
    }

    ++v1;
    v5 += 18;
    v6 += 9;
  }

  while (v1 != 3);
  return this;
}

EDRMetaData_RBSP *EDRMetaData_RBSP::assign_nlq_pivot_values(EDRMetaData_RBSP *this)
{
  v1 = this->var76[0];
  this->var77[0] = v1;
  var75 = this->var75;
  if (var75 <= 0xFFFFFFFD)
  {
    v3 = var75 + 1;
    v4 = &this->var77[1];
    do
    {
      v1 += *(v4 - 9);
      *v4++ = v1;
      --v3;
    }

    while (v3);
  }

  return this;
}

uint64_t EDRMetaData_RBSP::rpu_data_mapping(EDRMetaData_RBSP *this, unsigned int a2, unsigned int a3)
{
  v3 = this;
  v4 = 0;
  v93 = *MEMORY[0x277D85DE8];
  v80 = a2 + a2 * this->var79 + a3;
  var67 = this->var67;
  v5 = a2;
  var83 = this->var83;
  var82 = this->var82;
  var84 = this->var84;
  var85 = this->var85;
  var86 = this->var86;
  var98 = this->var98;
  var99 = this->var99;
  var94 = this->var94;
  var93 = this->var93;
  var96 = this->var96;
  var95 = this->var95;
  var97 = this->var97;
  v67 = this->var88;
  var87 = this->var87;
  var90 = this->var90;
  var89 = this->var89;
  var92 = this->var92;
  var91 = this->var91;
  var100 = this->var100;
  var69 = this->var69;
  var101 = this->var101;
  v7 = this->var101[a2][a3];
  while (1)
  {
    v77 = v7;
    if (var67[v4] != -1)
    {
      break;
    }

LABEL_29:
    ++v4;
    v7 = v77 + 1;
    if (v4 == 3)
    {
      result = 0;
      goto LABEL_41;
    }
  }

  v8 = 0;
  v76 = v4;
  while (1)
  {
    v9 = commonRBSP::ue_v(v3);
    v10 = v9;
    var82[v5][a3][v4][v8] = v9;
    if (v9 >= 4)
    {
      break;
    }

    v86 = v9;
    v11 = var83[a3][v9][v5][v4];
    if (*(v11 + 4 * v8))
    {
      v12 = v5;
      v13 = v3;
      var1 = v3->var1;
      v15 = v13;
      commonRBSP::flush_bits(v13, 1);
      v16 = v12;
      v17 = &var84[v12][a3][v4][v8];
      *v17 = var1 >> 63;
      if ((var1 & 0x8000000000000000) != 0)
      {
        v3 = v15;
        v5 = v16;
        v18 = v86;
        if (*(v11 + 4 * v8) < 2u)
        {
          goto LABEL_16;
        }

        v22 = commonRBSP::ue_v(v3);
        var85[v5][a3][v4][v8] = v22;
        v21 = v80 + ~v22;
LABEL_14:
        var86[v18][v4][v8] = v21;
        goto LABEL_15;
      }

      v3 = v15;
      v5 = v16;
    }

    else
    {
      v17 = &var84[v5][a3][v4][v8];
      *v17 = 0;
    }

    v18 = v86;
    result = EDRMetaData_RBSP::rpu_data_mapping_param(v3, a2, a3, v4, v8);
    if (result)
    {
      goto LABEL_41;
    }

    v20 = *(v11 + 4 * v8);
    *(v11 + 4 * v8) = v20 + 1;
    v21 = v80;
    if (!v20)
    {
      goto LABEL_14;
    }

LABEL_15:
    if (*v17)
    {
LABEL_16:
      v23 = var86[v18][v4][v8];
      v24 = v3->var79 + 1;
      v25 = v23 / v24;
      v26 = v23 % v24;
      if (v10 == 2)
      {
        v46 = var98[v5][a3][v76][v8];
        v47 = var98[v25][v26][v76][v8];
        v48 = *v47;
        *(v46 + 16) = *(v47 + 16);
        *v46 = v48;
        v49 = var99[v25][v26][v76][v8];
        v50 = *v49;
        v51 = var99[v5][a3][v76][v8];
        *(v51 + 16) = *(v49 + 16);
        *v51 = v50;
      }

      else if (v10 == 1)
      {
        var93[v5][a3][v4][v8] = var93[v25][v26][v4][v8];
        var94[v5][a3][v4][v8] = var94[v25][v26][v4][v8];
        var95[v5][a3][v4][v8] = var95[v25][v26][v4][v8];
        v31 = 1008 * v4 + 112 * v8;
        v32 = (var96[a3][v5][0][0][0] + v31);
        v33 = (var96[v26][v25][0][0][0] + v31);
        v34 = *v33;
        v35 = v33[2];
        v32[1] = v33[1];
        v32[2] = v35;
        *v32 = v34;
        v36 = v33[3];
        v37 = v33[4];
        v38 = v33[6];
        v32[5] = v33[5];
        v32[6] = v38;
        v32[3] = v36;
        v32[4] = v37;
        v39 = (var97[a3][v5][0][0][0] + v31);
        v40 = (var97[v26][v25] + v31);
        v41 = v40[6];
        v43 = v40[3];
        v42 = v40[4];
        v39[5] = v40[5];
        v39[6] = v41;
        v39[3] = v43;
        v39[4] = v42;
        v44 = *v40;
        v45 = v40[2];
        v39[1] = v40[1];
        v39[2] = v45;
        *v39 = v44;
      }

      else if (v10)
      {
        v52 = &var69[v4][v8];
        v53 = *v52;
        v56 = v52[1];
        v54 = v52 + 1;
        for (i = v56; v53 < i; i = *v54)
        {
          (*v77)[v53] = var101[v25][v26][v4][v53];
          ++v53;
        }

        if (v8 == var67[v4] && !v3->var38)
        {
          var100[v5][a3][v4][i] = 0;
          i = *v54;
        }

        var101[v5][a3][v4][i] = var101[v25][v26][v4][i];
      }

      else
      {
        var87[v5][a3][v4][v8] = var87[v25][v26][v4][v8];
        v67[v5][a3][v4][v8] = v67[v25][v26][v4][v8];
        var89[v5][a3][v4][v8] = var89[v25][v26][v4][v8];
        var90[v5][a3][v4][v8] = var90[v25][v26][v4][v8];
        v27 = var91[v25][v26][v4][v8];
        v28 = var91[v5][a3][v4][v8];
        *v28 = *v27;
        *(v28 + 8) = *(v27 + 8);
        v29 = var92[v25][v26][v4][v8];
        v30 = var92[v5][a3][v4][v8];
        *v30 = *v29;
        *(v30 + 8) = *(v29 + 8);
      }
    }

    if (++v8 >= (var67[v4] + 1))
    {
      goto LABEL_29;
    }
  }

  if (enableLogInstance)
  {
    if (logInstanceID)
    {
      v57 = logInstanceID;
    }

    else
    {
      v57 = prevLogInstanceID;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v88 = WORD1(v57);
      v89 = 2080;
      v90 = "rpu_data_mapping";
      v91 = 1024;
      v92 = v10;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx %s: EDRMetaData_RBSP error map_idc = %d, bail!\n", buf, 0x1Cu);
    }

    prevLogInstanceID = v57;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v88 = "rpu_data_mapping";
    v89 = 1024;
    LODWORD(v90) = v10;
    _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] %s: EDRMetaData_RBSP error map_idc = %d, bail!\n", buf, 0x12u);
  }

  result = v3->var14;
LABEL_41:
  v58 = *MEMORY[0x277D85DE8];
  return result;
}

void EDRMetaData_RBSP::rpu_data_chroma_resampling(EDRMetaData_RBSP *this, unsigned int a2, unsigned int a3)
{
  v6 = 0;
  var59 = this->var59;
  var60 = this->var60;
  v9 = 1;
  do
  {
    v10 = v9;
    var58 = this->var58;
    if (var58 == 14)
    {
      var57 = this->var57;
      if (this->var34 != var59[var57])
      {
        EDRMetaData_RBSP::rpu_data_chroma_resampling_filter_1D_exp(this, a2, a3, v6, 1u);
        var57 = this->var57;
      }

      if (this->var35 != var60[var57])
      {
        EDRMetaData_RBSP::rpu_data_chroma_resampling_filter_1D_exp(this, a2, a3, v6, 0);
      }
    }

    else if (var58 == 15 && !this->var33 && this->var32 == 2)
    {
      EDRMetaData_RBSP::rpu_data_chroma_resampling_filter_2D_exp(this, a2, a3, v6);
    }

    v9 = 0;
    v6 = 1;
  }

  while ((v10 & 1) != 0);
}

EDRMetaData_RBSP *EDRMetaData_RBSP::rpu_data_spatial_resampling(EDRMetaData_RBSP *this, int a2, int a3)
{
  if (!(a3 | a2))
  {
    v3 = this;
    if (this->var71[0] == 7 || this->var73[0] == 7)
    {
      v4 = 0;
      v5 = 1;
      do
      {
        v6 = v4;
        if (v3->var38)
        {
          v7 = 32;
        }

        else
        {
          v7 = v3->var45 + 8;
        }

        v8 = HIDWORD(v3->var1) >> -v7;
        this = commonRBSP::flush_bits(v3, v7);
        v3->var112[v5] = v8;
        v4 = 1;
        v5 = 2;
      }

      while ((v6 & 1) == 0);
      if (v3->var71[0] == 7)
      {
        for (i = 0; i != 3; ++i)
        {
          this = EDRMetaData_RBSP::rpu_data_spatial_resampling_filter_exp(v3, i, 0, 1u);
        }
      }

      if (v3->var73[0] == 7)
      {
        for (j = 0; j != 3; ++j)
        {
          if (v3->var72 == 1)
          {
            v11 = 2;
          }

          else
          {
            v11 = 1;
          }

          this = EDRMetaData_RBSP::rpu_data_spatial_resampling_filter_exp(v3, j, 1u, v11);
        }
      }
    }
  }

  return this;
}

uint64_t EDRMetaData_RBSP::rpu_data_nlq(EDRMetaData_RBSP *this, unsigned int a2, unsigned int a3)
{
  v49 = *MEMORY[0x277D85DE8];
  if (this->var75 != -1)
  {
    v6 = 0;
    var115 = this->var115;
    v40 = a2 + a2 * this->var79 + a3;
    var120 = this->var120;
    var119 = this->var119;
    var122 = this->var122;
    var121 = this->var121;
    var124 = this->var124;
    var123 = this->var123;
    var126 = this->var126;
    var125 = this->var125;
    var127 = this->var127;
    v7 = 108 * a2 + 108 * a3 + 406312;
    v8 = 406636;
LABEL_3:
    v9 = 0;
    v25 = v8;
    v26 = v7;
    *v30 = v6;
    while (1)
    {
      v10 = (this + v7);
      if (!*(&this->var16 + v7 + 4))
      {
        break;
      }

      var1 = this->var1;
      commonRBSP::flush_bits(this, 1);
      *v10 = var1 >> 63;
      if ((var1 & 0x8000000000000000) == 0)
      {
        v12 = (this + v7);
        v6 = *v30;
        goto LABEL_8;
      }

      v6 = *v30;
      if (v10[27] < 2u)
      {
        goto LABEL_18;
      }

      v15 = commonRBSP::ue_v(this);
      if (!v40)
      {
        if (enableLogInstance)
        {
          if (logInstanceID)
          {
            v23 = logInstanceID;
          }

          else
          {
            v23 = prevLogInstanceID;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134219010;
            v42 = WORD1(v23);
            v43 = 2080;
            *v44 = "rpu_data_nlq";
            *&v44[8] = 1024;
            *v45 = 0;
            *&v45[4] = 1024;
            v46 = a2;
            v47 = 1024;
            v48 = a3;
            _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx %s: ERROR: Out of bound! curr_part_idx = %d, y = %d, x = %d, bail!\n", buf, 0x28u);
          }

          prevLogInstanceID = v23;
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v42 = "rpu_data_nlq";
          v43 = 1024;
          *v44 = 0;
          *&v44[4] = 1024;
          *&v44[6] = a2;
          *v45 = 1024;
          *&v45[2] = a3;
          _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] %s: ERROR: Out of bound! curr_part_idx = %d, y = %d, x = %d, bail!\n", buf, 0x1Eu);
        }

        result = this->var14;
        goto LABEL_32;
      }

      if (v15 >= v40 - 1)
      {
        v16 = v40 - 1;
      }

      else
      {
        v16 = v15;
      }

      *(&this->var40 + v7) = v16;
      v14 = v40 + ~v16;
      v12 = (this + v7);
LABEL_16:
      *(&this->var0 + v8) = v14;
LABEL_17:
      if (*v12)
      {
LABEL_18:
        v17 = *(&this->var0 + v8);
        v18 = this->var79 + 1;
        v19 = v17 / v18;
        v20 = v17 % v18;
        v21 = (this + v7);
        v21[108] = var119[v19][v20][v6][v9];
        v21[135] = var120[v19][v20][v6][v9];
        v21[162] = var121[v19][v20][v6][v9];
        v21[189] = var122[v19][v20][v6][v9];
        v21[216] = var123[v19][v20][v6][v9];
        v21[243] = var124[v19][v20][v6][v9];
        v21[270] = var125[v19][v20][v6][v9];
        v21[297] = var126[v19][v20][v6][v9];
        v21[324] = var127[v19][v20][v6][v9];
      }

      ++v9;
      v7 += 4;
      v8 += 4;
      if (v9 == 3)
      {
        ++v6;
        v7 = v26 + 12;
        v8 = v25 + 12;
        if (v6 < this->var75 + 1)
        {
          goto LABEL_3;
        }

        goto LABEL_21;
      }
    }

    v12 = &var115[a2][a3][v6][v9];
    *(&this->var0 + v7) = 0;
LABEL_8:
    EDRMetaData_RBSP::rpu_data_nlq_param(this, a2, a3, v6, v9);
    v13 = v10[27];
    v10[27] = v13 + 1;
    v14 = v40;
    if (v13)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_21:
  result = 0;
LABEL_32:
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

EDRMetaData_RBSP *EDRMetaData_RBSP::rpu_data_el_chroma_resampling(EDRMetaData_RBSP *this, int a2, int a3)
{
  if (!(a3 | a2))
  {
    v3 = this;
    if (this->var78 == 7)
    {
      v4 = 0;
      var128 = this->var128;
      v5 = 1;
      do
      {
        v6 = 0;
        v17 = v5;
        v7 = var128[v4];
        v8 = 1;
        do
        {
          v9 = 0;
          v10 = v8;
          v11 = v7[v6];
          do
          {
            if (v3->var38)
            {
              var1_high = HIDWORD(v3->var1);
              this = commonRBSP::flush_bits(v3, 32);
            }

            else
            {
              var52 = v3->var52;
              v14 = HIDWORD(v3->var1);
              v15 = 20 - var52;
              this = commonRBSP::flush_bits(v3, var52 + 12);
              var1_high = ((-1 << v15) & v14) >> v15;
            }

            v11[v9++] = var1_high;
          }

          while (v9 != 17);
          v8 = 0;
          v6 = 1;
        }

        while ((v10 & 1) != 0);
        v5 = 0;
        v4 = 1;
      }

      while ((v17 & 1) != 0);
    }
  }

  return this;
}

uint64_t EDRMetaData_RBSP::rpu_data_mapping_param(EDRMetaData_RBSP *this, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v65 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = this->var82[a2][a3][a4][a5];
  if (!v11)
  {
    v19 = commonRBSP::ue_v(this);
    v20 = v19;
    if (v19 >= 2)
    {
      if (enableLogInstance)
      {
        if (logInstanceID)
        {
          v21 = logInstanceID;
        }

        else
        {
          v21 = prevLogInstanceID;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218498;
          v60 = WORD1(v21);
          v61 = 2080;
          v62 = "rpu_data_mapping_param";
          v63 = 1024;
          v64 = v20;
          _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx %s: ERROR: Out of bound! poly_order_minus1 = %d, bail!\n", buf, 0x1Cu);
        }

        prevLogInstanceID = v21;
        goto LABEL_70;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v60 = "rpu_data_mapping_param";
        v61 = 1024;
        LODWORD(v62) = v20;
        v51 = MEMORY[0x277D86220];
        v52 = " [1.450.54] %s: ERROR: Out of bound! poly_order_minus1 = %d, bail!\n";
        goto LABEL_69;
      }

LABEL_70:
      result = this->var14;
      goto LABEL_71;
    }

    this->var87[a2][v8][v9][v10] = v19 + 1;
    if (v19 || (var1 = this->var1, commonRBSP::flush_bits(this, 1), this->var88[a2][v8][v9][v10] = var1 >> 63, (var1 & 0x8000000000000000) == 0))
    {
      v43 = v20 + 2;
      v44 = this->var91[v8][a2][v9][v10];
      do
      {
        if (this->var38 || (v45 = commonRBSP::ue_v(this), *v44 = (-((v45 & 1) == 0) ^ ((v45 + 1) >> 1)) + ((v45 & 1) == 0), this->var38))
        {
          var39 = 32;
        }

        else
        {
          var39 = this->var39;
        }

        v47 = HIDWORD(this->var1) >> -var39;
        commonRBSP::flush_bits(this, var39);
        v44[81] = v47;
        ++v44;
        --v43;
      }

      while (v43);
      goto LABEL_48;
    }

    if (this->var38 || (this->var89[a2][v8][v9][v10] = commonRBSP::ue_v(this), this->var38))
    {
      v54 = 32;
    }

    else
    {
      v54 = this->var39;
    }

    v55 = HIDWORD(this->var1) >> -v54;
    commonRBSP::flush_bits(this, v54);
    this->var90[a2][v8][v9][v10] = v55;
    if (this->var67[v9] == a5)
    {
      if (this->var38)
      {
        goto LABEL_80;
      }

      this->var89[a2][v8][v9][a5 + 1] = commonRBSP::ue_v(this);
    }

    if (!this->var38)
    {
      v56 = this->var39;
      goto LABEL_82;
    }

LABEL_80:
    v56 = 32;
LABEL_82:
    v57 = HIDWORD(this->var1) >> -v56;
    commonRBSP::flush_bits(this, v56);
    result = 0;
    this->var90[a2][v8][v9][a5 + 1] = v57;
    goto LABEL_71;
  }

  if (v11 == 1)
  {
    v17 = this->var1 >> 62;
    commonRBSP::flush_bits(this, 2);
    if (v17 != 3)
    {
      this->var93[a2][v8][v9][v10] = v17 + 1;
      if (this->var38 || (v29 = commonRBSP::ue_v(this), this->var94[a2][v8][v9][v10] = (-((v29 & 1) == 0) ^ ((v29 + 1) >> 1)) + ((v29 & 1) == 0), this->var38))
      {
        v30 = 32;
      }

      else
      {
        v30 = this->var39;
      }

      v31 = HIDWORD(this->var1) >> -v30;
      commonRBSP::flush_bits(this, v30);
      this->var95[a2][v8][v9][v10] = v31;
      v32 = v17 + 1;
      v33 = 3024 * a2 + 3024 * v8 + 1008 * v9 + 112 * v10 + 3424;
      v34 = 1;
      do
      {
        v35 = v33;
        v36 = 7;
        do
        {
          if (this->var38 || (v37 = commonRBSP::ue_v(this), *(&this->var0 + v35) = (-((v37 & 1) == 0) ^ ((v37 + 1) >> 1)) + ((v37 & 1) == 0), this->var38))
          {
            v38 = 32;
          }

          else
          {
            v38 = this->var39;
          }

          v39 = HIDWORD(this->var1) >> -v38;
          commonRBSP::flush_bits(this, v38);
          *(this->var92[0][0][2][5] + v35) = v39;
          v35 += 4;
          --v36;
        }

        while (v36);
        v33 += 28;
      }

      while (v34++ != v32);
      goto LABEL_48;
    }

    if (enableLogInstance)
    {
      if (logInstanceID)
      {
        v18 = logInstanceID;
      }

      else
      {
        v18 = prevLogInstanceID;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218498;
        v60 = WORD1(v18);
        v61 = 2080;
        v62 = "rpu_data_mapping_param";
        v63 = 1024;
        v64 = 3;
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx %s: ERROR: Out of bound! mmr_order_minus1 = %d, bail!\n", buf, 0x1Cu);
      }

      prevLogInstanceID = v18;
      goto LABEL_70;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v60 = "rpu_data_mapping_param";
      v61 = 1024;
      LODWORD(v62) = 3;
      v51 = MEMORY[0x277D86220];
      v52 = " [1.450.54] %s: ERROR: Out of bound! mmr_order_minus1 = %d, bail!\n";
LABEL_69:
      _os_log_impl(&dword_250836000, v51, OS_LOG_TYPE_DEFAULT, v52, buf, 0x12u);
      goto LABEL_70;
    }

    goto LABEL_70;
  }

  if (v11 != 2)
  {
    v22 = this->var69[a4];
    v23 = v22[a5];
    v24 = a5 + 1;
    LODWORD(v25) = v22[a5 + 1];
    if (v23 < v25)
    {
      v26 = &this->var101[a3][a2][a4][v23];
      do
      {
        if (this->var38 || (*(v26 - 49152) = commonRBSP::ue_v(this), this->var38))
        {
          v27 = 32;
        }

        else
        {
          v27 = this->var39;
        }

        v28 = HIDWORD(this->var1) >> -v27;
        commonRBSP::flush_bits(this, v27);
        *v26++ = v28;
        ++v23;
        v25 = v22[v24];
      }

      while (v23 < v25);
      v8 = a3;
    }

    var38 = this->var38;
    if (this->var67[v9] == a5)
    {
      if (!var38)
      {
        this->var100[a2][v8][v9][v25] = 0;
LABEL_63:
        v49 = this->var39;
        goto LABEL_64;
      }
    }

    else if (!var38)
    {
      goto LABEL_63;
    }

    v49 = 32;
LABEL_64:
    v50 = HIDWORD(this->var1) >> -v49;
    commonRBSP::flush_bits(this, v49);
    result = 0;
    this->var101[a2][v8][v9][v22[v24]] = v50;
    goto LABEL_71;
  }

  v12 = 648 * a2 + 648 * a3 + 216 * a4 + 24 * a5 + 9444;
  v13 = 5;
  do
  {
    if (this->var38 || (v14 = commonRBSP::ue_v(this), *(&this->var0 + v12) = (-((v14 & 1) == 0) ^ ((v14 + 1) >> 1)) + ((v14 & 1) == 0), this->var38))
    {
      v15 = 32;
    }

    else
    {
      v15 = this->var39;
    }

    v16 = HIDWORD(this->var1) >> -v15;
    commonRBSP::flush_bits(this, v15);
    *(&this->var69[2][11] + v12) = v16;
    v12 += 4;
    --v13;
  }

  while (v13);
LABEL_48:
  result = 0;
LABEL_71:
  v53 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 EDRMetaData_RBSP::rpu_data_chroma_resampling_filter_2D_exp(EDRMetaData_RBSP *this, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v45 = a2 + a2 * this->var79 + a3;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = &this->var0 + 8 * a2 + 8 * a3 + 4 * a4;
  v12 = this + 4 * a4;
  v46 = a2;
  if (!*(v11 + 100989))
  {
    v14 = &this->var104[a2][a3][a4];
    *v14 = 0;
    goto LABEL_5;
  }

  v44 = this + 4 * a4;
  var1 = this->var1;
  commonRBSP::flush_bits(this, 1);
  v14 = &this->var104[v8][v9][v10];
  *v14 = var1 >> 63;
  if ((var1 & 0x8000000000000000) == 0)
  {
    v12 = v44;
LABEL_5:
    EDRMetaData_RBSP::rpu_data_chroma_resampling_filter_2D_exp_coef(this, a2, a3, a4, 0);
    if (this->var36 != 1)
    {
      EDRMetaData_RBSP::rpu_data_chroma_resampling_filter_2D_exp_coef(this, a2, a3, a4, 1u);
    }

    v16 = *(v11 + 100989);
    *(v11 + 100989) = v16 + 1;
    if (v16)
    {
LABEL_12:
      if (!*v14)
      {
        return result;
      }

      goto LABEL_13;
    }

    v17 = v45;
LABEL_11:
    *(v12 + 100991) = v17;
    goto LABEL_12;
  }

  v12 = v44;
  if (*(v11 + 100989) >= 2u)
  {
    v18 = commonRBSP::ue_v(this);
    this->var105[v46][v9][v10] = v18;
    v17 = v45 + ~v18;
    goto LABEL_11;
  }

LABEL_13:
  v19 = this->var106[(*(v12 + 100991) % (this->var79 + 1))][(*(v12 + 100991) / (this->var79 + 1))][v10];
  v20 = *&(*v19)[1][4];
  v22 = *v19;
  v21 = *&(*v19)[0][4];
  v23 = this->var106[v9][v46][v10];
  *&(*v23)[1][0] = *&(*v19)[1][0];
  *&(*v23)[1][4] = v20;
  *v23 = v22;
  *&(*v23)[0][4] = v21;
  v24 = *&(*v19)[3][4];
  v26 = *&(*v19)[2][0];
  v25 = *&(*v19)[2][4];
  *&(*v23)[3][0] = *&(*v19)[3][0];
  *&(*v23)[3][4] = v24;
  *&(*v23)[2][0] = v26;
  *&(*v23)[2][4] = v25;
  v27 = *&(*v19)[5][4];
  v29 = *&(*v19)[4][0];
  v28 = *&(*v19)[4][4];
  *&(*v23)[5][0] = *&(*v19)[5][0];
  *&(*v23)[5][4] = v27;
  *&(*v23)[4][0] = v29;
  *&(*v23)[4][4] = v28;
  v30 = *&(*v19)[7][4];
  v32 = *&(*v19)[6][0];
  v31 = *&(*v19)[6][4];
  *&(*v23)[7][0] = *&(*v19)[7][0];
  *&(*v23)[7][4] = v30;
  *&(*v23)[6][0] = v32;
  *&(*v23)[6][4] = v31;
  v33 = *&(*v19)[8][0];
  v34 = *&(*v19)[8][4];
  v35 = *&(*v19)[9][4];
  *&(*v23)[9][0] = *&(*v19)[9][0];
  *&(*v23)[9][4] = v35;
  *&(*v23)[8][0] = v33;
  *&(*v23)[8][4] = v34;
  v36 = *&(*v19)[10][0];
  v37 = *&(*v19)[10][4];
  v38 = *&(*v19)[11][4];
  *&(*v23)[11][0] = *&(*v19)[11][0];
  *&(*v23)[11][4] = v38;
  *&(*v23)[10][0] = v36;
  *&(*v23)[10][4] = v37;
  v39 = *&(*v19)[12][0];
  v40 = *&(*v19)[12][4];
  v41 = *&(*v19)[13][4];
  *&(*v23)[13][0] = *&(*v19)[13][0];
  *&(*v23)[13][4] = v41;
  *&(*v23)[12][0] = v39;
  *&(*v23)[12][4] = v40;
  result = *&(*v19)[14][0];
  v42 = *&(*v19)[14][4];
  v43 = *&(*v19)[15][4];
  *&(*v23)[15][0] = *&(*v19)[15][0];
  *&(*v23)[15][4] = v43;
  *&(*v23)[14][0] = result;
  *&(*v23)[14][4] = v42;
  return result;
}

__n128 EDRMetaData_RBSP::rpu_data_chroma_resampling_filter_1D_exp(EDRMetaData_RBSP *this, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v9 = a2 + a2 * this->var79 + a3;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = this + 16 * a2 + 16 * a3 + 8 * a4 + 4 * a5;
  v30 = &this->var0 + a4;
  if (!*(v14 + 101254))
  {
    v17 = &this->var109[a2][a3][a4][a5];
    *v17 = 0;
    goto LABEL_5;
  }

  v26 = a5;
  v27 = a2 + a2 * this->var79 + a3;
  var1 = this->var1;
  commonRBSP::flush_bits(this, 1);
  v16 = this + 16 * v10 + 16 * v11 + 8 * v12 + 4 * v13;
  v17 = (v16 + 405048);
  *(v16 + 101262) = var1 >> 63;
  if ((var1 & 0x8000000000000000) == 0)
  {
    a5 = v26;
    v9 = v27;
LABEL_5:
    EDRMetaData_RBSP::rpu_data_chroma_resampling_filter_1D_exp_coef(this, a2, a3, a4, a5);
    v19 = *(v14 + 101254);
    *(v14 + 101254) = v19 + 1;
    if (v19)
    {
      v20 = v30;
      goto LABEL_11;
    }

    v20 = v30;
LABEL_10:
    *(v20 + v13 + 101258) = v9;
LABEL_11:
    if (!*v17)
    {
      return result;
    }

    goto LABEL_12;
  }

  v20 = v30;
  if (*(v14 + 101254) >= 2u)
  {
    v21 = commonRBSP::ue_v(this);
    *(v16 + 101266) = v21;
    v9 = v27 + ~v21;
    goto LABEL_10;
  }

LABEL_12:
  v22 = this->var111[*(v20 + v13 + 101258) / (this->var79 + 1)][*(v20 + v13 + 101258) % (this->var79 + 1)][v12][v13];
  v23 = *(v22 + 1);
  result = *(v22 + 2);
  v24 = *v22;
  v25 = this->var111[a2][a3][v12][v13];
  *v25 = v24;
  *(v25 + 1) = v23;
  *(v25 + 2) = result;
  return result;
}

EDRMetaData_RBSP *EDRMetaData_RBSP::rpu_data_chroma_resampling_filter_2D_exp_coef(EDRMetaData_RBSP *this, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v5 = 324;
  if (a5 == 1)
  {
    v5 = 332;
  }

  v6 = *(&this->var0 + v5);
  v17 = (v6 + 1);
  if (v6 != -1)
  {
    v7 = this;
    v8 = 0;
    v9 = 328;
    if (a5 == 1)
    {
      v9 = 336;
    }

    v10 = (*(&this->var0 + v9) + 1);
    v11 = (a3 << 10) + (a2 << 10) + (a4 << 9) + (a5 << 8) + 403992;
    do
    {
      v12 = v11;
      v13 = v10;
      if (v10)
      {
        do
        {
          var40 = v7->var40;
          var1_high = HIDWORD(v7->var1);
          v16 = 24 - var40;
          this = commonRBSP::flush_bits(v7, var40 + 8);
          *(&v7->var0 + v12) = ((-1 << v16) & var1_high) >> v16;
          v12 += 4;
          --v13;
        }

        while (v13);
      }

      ++v8;
      v11 += 32;
    }

    while (v8 != v17);
  }

  return this;
}

EDRMetaData_RBSP *EDRMetaData_RBSP::rpu_data_chroma_resampling_filter_1D_exp_coef(EDRMetaData_RBSP *this, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v5 = 316;
  if (!a5)
  {
    v5 = 320;
  }

  v6 = 2 * *(&this->var0 + v5);
  v7 = (v6 + 4);
  if (v6 != -4)
  {
    v8 = this;
    v9 = 192 * a2 + 192 * a3 + 96 * a4 + 48 * a5 + 405080;
    do
    {
      if (v8->var38)
      {
        var1_high = HIDWORD(v8->var1);
        this = commonRBSP::flush_bits(v8, 32);
      }

      else
      {
        var40 = v8->var40;
        v12 = HIDWORD(v8->var1);
        v13 = 25 - var40;
        this = commonRBSP::flush_bits(v8, var40 + 7);
        var1_high = ((-1 << v13) & v12) >> v13;
      }

      *(&v8->var0 + v9) = var1_high;
      v9 += 4;
      --v7;
    }

    while (v7);
  }

  return this;
}

EDRMetaData_RBSP *EDRMetaData_RBSP::rpu_data_spatial_resampling_filter_exp(EDRMetaData_RBSP *this, unsigned int a2, unsigned int a3, unsigned int a4)
{
  if (a3)
  {
    v4 = 6;
  }

  else
  {
    v4 = 8;
  }

  if (a4)
  {
    v5 = this;
    v6 = 0;
    v7 = a4;
    v8 = this->var113[a3] + 32 * a2;
    do
    {
      v9 = v8;
      v10 = v4;
      do
      {
        if (!v5->var38)
        {
          v11 = commonRBSP::ue_v(v5);
          *v9 = (-((v11 & 1) == 0) ^ ((v11 + 1) >> 1)) + ((v11 & 1) == 0);
        }

        var48 = v5->var48;
        v13 = HIDWORD(v5->var1) >> (26 - var48);
        this = commonRBSP::flush_bits(v5, var48 + 6);
        v9[128] = v13;
        ++v9;
        --v10;
      }

      while (v10);
      ++v6;
      v8 += 128;
    }

    while (v6 != v7);
  }

  return this;
}

uint64_t *EDRMetaData_RBSP::rpu_data_nlq_param(EDRMetaData_RBSP *this, unsigned int a2, int a3, unsigned int a4, unsigned int a5)
{
  var44 = this->var44;
  v11 = HIDWORD(this->var1) >> (24 - var44);
  commonRBSP::flush_bits(this, var44 + 8);
  v12 = this + 108 * a2;
  v13 = a2;
  v14 = a4;
  v15 = a5;
  *&v12[108 * a3 + 406744 + 12 * a4 + 4 * a5] = v11;
  if (this->var38 || (this->var120[v13][a3][a4][a5] = commonRBSP::ue_v(this), this->var38))
  {
    var39 = 32;
  }

  else
  {
    var39 = this->var39;
  }

  v17 = HIDWORD(this->var1) >> -var39;
  result = commonRBSP::flush_bits(this, var39);
  this->var121[v13][a3][a4][v15] = v17;
  var74 = this->var74;
  if (var74 == 1)
  {
    v25 = this->var44;
    v26 = HIDWORD(this->var1) >> (24 - v25);
    commonRBSP::flush_bits(this, v25 + 8);
    this->var126[v13][a3][a4][v15] = v26;
    result = commonRBSP::ue_v(this);
    v24 = result;
    v23 = 407608;
  }

  else
  {
    if (var74)
    {
      return result;
    }

    if (this->var38 || (this->var122[v13][a3][a4][v15] = commonRBSP::ue_v(this), this->var38))
    {
      v20 = 32;
    }

    else
    {
      v20 = this->var39;
    }

    v21 = HIDWORD(this->var1) >> -v20;
    commonRBSP::flush_bits(this, v20);
    this->var123[v13][a3][a4][v15] = v21;
    if (this->var38 || (this->var124[v13][a3][a4][v15] = commonRBSP::ue_v(this), this->var38))
    {
      v22 = 32;
    }

    else
    {
      v22 = this->var39;
    }

    v23 = 407392;
    v24 = HIDWORD(this->var1) >> -v22;
    result = commonRBSP::flush_bits(this, v22);
  }

  *(&this->var0 + 108 * v13 + 108 * a3 + 12 * v14 + 4 * v15 + v23) = v24;
  return result;
}

uint64_t EDRMetaData_RBSP::ext_content_adaptive_metadata(EDRMetaData_RBSP *this, unsigned int a2, int a3, int *a4)
{
  v107 = *MEMORY[0x277D85DE8];
  v7 = commonRBSP::ue_v(this);
  if (v7 < 0x101)
  {
    var1_high = HIBYTE(this->var1);
    commonRBSP::flush_bits(this, 8);
    if (!EDRMetaData_RBSP::is_valid_ext_block(this, v7, var1_high, a3))
    {
LABEL_21:
      v9 = 0;
      goto LABEL_76;
    }

    v11 = 0;
    if (var1_high <= 7)
    {
      if (var1_high > 3)
      {
        switch(var1_high)
        {
          case 4:
            this->var153.var0 = 1;
            v74 = this->var1 >> 52;
            commonRBSP::flush_bits(this, 12);
            this->var153.var1 = v74;
            v75 = this->var1 >> 52;
            commonRBSP::flush_bits(this, 12);
            this->var153.var2 = v75;
            ++*a4;
            v11 = 24;
            break;
          case 5:
            this->var154.var0 = 1;
            v84 = this->var1 >> 51;
            commonRBSP::flush_bits(this, 13);
            this->var154.var1 = v84;
            v85 = this->var1 >> 51;
            commonRBSP::flush_bits(this, 13);
            this->var154.var2 = v85;
            v86 = this->var1 >> 51;
            commonRBSP::flush_bits(this, 13);
            this->var154.var3 = v86;
            v87 = this->var1 >> 51;
            commonRBSP::flush_bits(this, 13);
            this->var154.var4 = v87;
            ++*a4;
            v11 = 52;
            break;
          case 6:
            this->var155.var0 = 1;
            v32 = HIWORD(this->var1);
            commonRBSP::flush_bits(this, 16);
            this->var155.var1 = v32;
            v33 = HIWORD(this->var1);
            commonRBSP::flush_bits(this, 16);
            this->var155.var2 = v33;
            v34 = HIWORD(this->var1);
            commonRBSP::flush_bits(this, 16);
            this->var155.var3 = v34;
            v35 = HIWORD(this->var1);
            commonRBSP::flush_bits(this, 16);
            this->var155.var4 = v35;
            ++*a4;
            v11 = 64;
            break;
        }

        goto LABEL_71;
      }

      switch(var1_high)
      {
        case 1:
          this->var150.var0 = 1;
          v71 = this->var1 >> 52;
          commonRBSP::flush_bits(this, 12);
          this->var150.var1 = v71;
          v72 = this->var1 >> 52;
          commonRBSP::flush_bits(this, 12);
          this->var150.var2 = v72;
          v73 = this->var1 >> 52;
          commonRBSP::flush_bits(this, 12);
          this->var150.var3 = v73;
          break;
        case 2:
          var1 = this->var1;
          commonRBSP::flush_bits(this, 12);
          v76 = this->var1;
          commonRBSP::flush_bits(this, 12);
          v77 = this->var1;
          commonRBSP::flush_bits(this, 12);
          v78 = this->var1;
          commonRBSP::flush_bits(this, 12);
          v79 = this->var1;
          commonRBSP::flush_bits(this, 12);
          v80 = this->var1;
          commonRBSP::flush_bits(this, 12);
          v81 = this->var1;
          commonRBSP::flush_bits(this, 13);
          var147 = this->var147;
          this->var147 = var147 + 1;
          if (var147 <= 7)
          {
            v83 = &this->var151[var147];
            v83->var0 = 1;
            v83->var1 = var1 >> 52;
            v83->var2 = v76 >> 52;
            v83->var3 = v77 >> 52;
            v83->var4 = v78 >> 52;
            v83->var5 = v79 >> 52;
            v83->var6 = v80 >> 52;
            v83->var7 = v81 >> 51;
          }

          ++*a4;
          v11 = 85;
          goto LABEL_71;
        case 3:
          this->var152.var0 = 1;
          v15 = this->var1 >> 52;
          commonRBSP::flush_bits(this, 12);
          this->var152.var1 = v15;
          v16 = this->var1 >> 52;
          commonRBSP::flush_bits(this, 12);
          this->var152.var2 = v16;
          v17 = this->var1 >> 52;
          commonRBSP::flush_bits(this, 12);
          this->var152.var3 = v17;
          break;
        default:
LABEL_71:
          v89 = v11 - 8 * v7;
          if (v11 >= 8 * v7)
          {
            v9 = 1;
          }

          else
          {
            do
            {
              v9 = 1;
              commonRBSP::flush_bits(this, 1);
            }

            while (!__CFADD__(v89++, 1));
          }

          goto LABEL_76;
      }

      ++*a4;
      v11 = 36;
      goto LABEL_71;
    }

    if (var1_high > 10)
    {
      if (var1_high > 253)
      {
        if (var1_high == 254)
        {
          this->var161.var0 = 1;
          v46 = HIBYTE(this->var1);
          commonRBSP::flush_bits(this, 8);
          this->var161.var1 = v46;
          v47 = HIBYTE(this->var1);
          commonRBSP::flush_bits(this, 8);
          this->var161.var2 = v47;
          ++*a4;
          v11 = 16;
        }

        else if (var1_high == 255)
        {
          this->var162.var0 = 1;
          v36 = HIBYTE(this->var1);
          commonRBSP::flush_bits(this, 8);
          this->var162.var1 = v36;
          v37 = HIBYTE(this->var1);
          commonRBSP::flush_bits(this, 8);
          this->var162.var2 = v37;
          v38 = HIBYTE(this->var1);
          commonRBSP::flush_bits(this, 8);
          this->var162.var3 = v38;
          v39 = HIBYTE(this->var1);
          commonRBSP::flush_bits(this, 8);
          this->var162.var4 = v39;
          v40 = HIBYTE(this->var1);
          commonRBSP::flush_bits(this, 8);
          this->var162.var5 = v40;
          v41 = HIBYTE(this->var1);
          commonRBSP::flush_bits(this, 8);
          this->var162.var6 = v41;
          ++*a4;
          v11 = 48;
        }
      }

      else if (var1_high == 11)
      {
        this->var159.var0 = 1;
        v42 = HIBYTE(this->var1);
        commonRBSP::flush_bits(this, 8);
        this->var159.var1 = v42;
        v43 = HIBYTE(this->var1);
        commonRBSP::flush_bits(this, 8);
        this->var159.var2 = v43;
        v44 = HIBYTE(this->var1);
        commonRBSP::flush_bits(this, 8);
        this->var159.var3 = v44;
        v45 = HIBYTE(this->var1);
        commonRBSP::flush_bits(this, 8);
        this->var159.var4 = v45;
        ++*a4;
        v11 = 32;
      }

      else if (var1_high == 253)
      {
        if (v7)
        {
          this->var160.var0 = 1;
          this->var160.var1 = v7;
          v12 = v7;
          v13 = 408628;
          do
          {
            v14 = HIBYTE(this->var1);
            commonRBSP::flush_bits(this, 8);
            *(&this->var0 + v13++) = v14;
            v9 = 1;
            --v12;
          }

          while (v12);
          goto LABEL_76;
        }

        v11 = 0;
      }

      goto LABEL_71;
    }

    if (var1_high == 8)
    {
      var148 = this->var148;
      this->var148 = var148 + 1;
      if (var148 >= 5)
      {
        v49 = buf;
      }

      else
      {
        v49 = &this->var156[var148];
      }

      *v49 = 1;
      *(v49 + 1) = v7;
      v50 = HIBYTE(this->var1);
      commonRBSP::flush_bits(this, 8);
      v49[4] = v50;
      v51 = this->var1 >> 52;
      commonRBSP::flush_bits(this, 12);
      *(v49 + 3) = v51;
      v52 = this->var1 >> 52;
      commonRBSP::flush_bits(this, 12);
      *(v49 + 4) = v52;
      v53 = this->var1 >> 52;
      commonRBSP::flush_bits(this, 12);
      *(v49 + 5) = v53;
      v54 = this->var1 >> 52;
      commonRBSP::flush_bits(this, 12);
      *(v49 + 6) = v54;
      v55 = this->var1 >> 52;
      commonRBSP::flush_bits(this, 12);
      *(v49 + 7) = v55;
      v56 = this->var1 >> 52;
      commonRBSP::flush_bits(this, 12);
      *(v49 + 8) = v56;
      if (v7 < 0xB)
      {
        v11 = 80;
      }

      else
      {
        v57 = this->var1 >> 52;
        commonRBSP::flush_bits(this, 12);
        if (var148 >= 5)
        {
          v58 = buf;
        }

        else
        {
          v58 = &this->var156[var148];
        }

        *(v58 + 9) = v57;
        if (v7 < 0xD)
        {
          v11 = 92;
        }

        else
        {
          v59 = this->var1 >> 52;
          commonRBSP::flush_bits(this, 12);
          v60 = buf;
          if (var148 >= 5)
          {
            v61 = buf;
          }

          else
          {
            v61 = &this->var156[var148];
          }

          *(v61 + 10) = v59;
          if (v7 == 13)
          {
            v11 = 104;
          }

          else
          {
            v93 = 0;
            if (var148 < 5)
            {
              v60 = &this->var156[var148];
            }

            v94 = v60 + 22;
            do
            {
              v95 = HIBYTE(this->var1);
              commonRBSP::flush_bits(this, 8);
              v94[v93++] = v95;
            }

            while (v93 != 6);
            if (v7 < 0x14)
            {
              v11 = 152;
            }

            else
            {
              v96 = 0;
              v97 = buf;
              if (var148 < 5)
              {
                v97 = &this->var156[var148];
              }

              v98 = v97 + 28;
              do
              {
                v99 = HIBYTE(this->var1);
                commonRBSP::flush_bits(this, 8);
                v98[v96++] = v99;
              }

              while (v96 != 6);
              v11 = 200;
            }
          }
        }
      }

      goto LABEL_70;
    }

    if (var1_high == 9)
    {
      this->var157.var0 = 1;
      this->var157.var1 = v7;
      v62 = HIBYTE(this->var1);
      v11 = 8;
      commonRBSP::flush_bits(this, 8);
      this->var157.var2 = v62;
      if (v62 >= 0x13)
      {
        v63 = HIWORD(this->var1);
        commonRBSP::flush_bits(this, 16);
        this->var157.var3 = v63;
        v64 = HIWORD(this->var1);
        commonRBSP::flush_bits(this, 16);
        this->var157.var4 = v64;
        v65 = HIWORD(this->var1);
        commonRBSP::flush_bits(this, 16);
        this->var157.var5 = v65;
        v66 = HIWORD(this->var1);
        commonRBSP::flush_bits(this, 16);
        this->var157.var6 = v66;
        v67 = HIWORD(this->var1);
        commonRBSP::flush_bits(this, 16);
        this->var157.var7 = v67;
        v68 = HIWORD(this->var1);
        commonRBSP::flush_bits(this, 16);
        this->var157.var8 = v68;
        v69 = HIWORD(this->var1);
        commonRBSP::flush_bits(this, 16);
        this->var157.var9 = v69;
        v70 = HIWORD(this->var1);
        commonRBSP::flush_bits(this, 16);
        this->var157.var10 = v70;
        v11 = 136;
      }

      goto LABEL_70;
    }

    var149 = this->var149;
    this->var149 = var149 + 1;
    if (var149 > 3)
    {
      commonRBSP::flush_bits(this, 8);
      commonRBSP::flush_bits(this, 12);
      commonRBSP::flush_bits(this, 12);
      v88 = HIBYTE(this->var1);
      commonRBSP::flush_bits(this, 8);
      if (v88 > 0x12)
      {
        commonRBSP::flush_bits(this, 16);
        commonRBSP::flush_bits(this, 16);
        commonRBSP::flush_bits(this, 16);
        commonRBSP::flush_bits(this, 16);
        commonRBSP::flush_bits(this, 16);
        commonRBSP::flush_bits(this, 16);
        commonRBSP::flush_bits(this, 16);
        commonRBSP::flush_bits(this, 16);
        goto LABEL_66;
      }
    }

    else
    {
      v19 = &this->var158[var149];
      v19->var0 = 1;
      v19->var1 = v7;
      v20 = HIBYTE(this->var1);
      commonRBSP::flush_bits(this, 8);
      v19->var2 = v20;
      v21 = this->var1 >> 52;
      commonRBSP::flush_bits(this, 12);
      v19->var3 = v21;
      v22 = this->var1 >> 52;
      commonRBSP::flush_bits(this, 12);
      v19->var4 = v22;
      v23 = HIBYTE(this->var1);
      commonRBSP::flush_bits(this, 8);
      v19->var5 = v23;
      if (v23 > 0x12)
      {
        v24 = HIWORD(this->var1);
        commonRBSP::flush_bits(this, 16);
        v19->var6 = v24;
        v25 = HIWORD(this->var1);
        commonRBSP::flush_bits(this, 16);
        v19->var7 = v25;
        v26 = HIWORD(this->var1);
        commonRBSP::flush_bits(this, 16);
        v19->var8 = v26;
        v27 = HIWORD(this->var1);
        commonRBSP::flush_bits(this, 16);
        v19->var9 = v27;
        v28 = HIWORD(this->var1);
        commonRBSP::flush_bits(this, 16);
        v19->var10 = v28;
        v29 = HIWORD(this->var1);
        commonRBSP::flush_bits(this, 16);
        v19->var11 = v29;
        v30 = HIWORD(this->var1);
        commonRBSP::flush_bits(this, 16);
        v19->var12 = v30;
        v31 = HIWORD(this->var1);
        commonRBSP::flush_bits(this, 16);
        v19->var13 = v31;
LABEL_66:
        v11 = 168;
LABEL_70:
        ++*a4;
        goto LABEL_71;
      }
    }

    v11 = 40;
    goto LABEL_70;
  }

  if (!enableLogInstance)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v102 = "ext_content_adaptive_metadata";
      v103 = 1024;
      LODWORD(v104) = v7;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] %s: EDRMetaData_RBSP error ext_block_len[%u] > 256, bail!\n", buf, 0x12u);
    }

    goto LABEL_21;
  }

  if (logInstanceID)
  {
    v8 = logInstanceID;
  }

  else
  {
    v8 = prevLogInstanceID;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v102 = WORD1(v8);
    v103 = 2080;
    v104 = "ext_content_adaptive_metadata";
    v105 = 1024;
    v106 = v7;
    _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx %s: EDRMetaData_RBSP error ext_block_len[%u] > 256, bail!\n", buf, 0x1Cu);
  }

  v9 = 0;
  prevLogInstanceID = v8;
LABEL_76:
  v91 = *MEMORY[0x277D85DE8];
  return v9;
}

EDRMetaData_RBSP *EDRMetaData_RBSP::save_state(EDRMetaData_RBSP *this)
{
  this->var16 = this->var1;
  this->var17 = this->var2;
  this->var18 = this->var5;
  this->var19 = this->var9;
  this->var20 = this->var8;
  this->var21 = this->var12;
  return this;
}

uint64_t EDRMetaData_RBSP::cal_rpu_crc32(EDRMetaData_RBSP *this)
{
  var11 = this->var11;
  v2 = (this->var12 - var11 + this->var2 / -8 - 5);
  if ((this->var12 - var11 + this->var2 / -8) == 5)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = (var11 + 1);
  LODWORD(result) = -1;
  do
  {
    v5 = *v3++;
    result = (crc32_lut[v5 ^ BYTE3(result)] ^ (result << 8));
    --v2;
  }

  while (v2);
  return result;
}

EDRMetaData_RBSP *EDRMetaData_RBSP::restore_state(EDRMetaData_RBSP *this)
{
  this->var1 = this->var16;
  this->var2 = this->var17;
  this->var5 = this->var18;
  this->var9 = this->var19;
  this->var8 = this->var20;
  this->var12 = this->var21;
  return this;
}

uint64_t EDRMetaData_RBSP::ext_blocks_vdr_dm_data_payload2(EDRMetaData_RBSP *this)
{
  var2 = this->var2;
  v3 = __OFADD__(var2, 7);
  v4 = var2 + 7;
  v2 = var2 + 7 < 0;
  v5 = var2 + 14;
  if (v2 == v3)
  {
    v5 = v4;
  }

  if (LODWORD(this->var6) - LODWORD(this->var5) + (v5 >> 3) < 6)
  {
    return 0;
  }

  else
  {
    return commonRBSP::ue_v(this);
  }
}

BOOL EDRMetaData_RBSP::is_valid_ext_block(EDRMetaData_RBSP *this, unsigned int a2, int a3, int a4)
{
  v21 = *MEMORY[0x277D85DE8];
  if (!a4)
  {
    result = 1;
    goto LABEL_11;
  }

  v5 = this->var2 + 8 * (this->var6 - this->var5) + 32;
  v6 = 8 * a2;
  if (v5 < v6)
  {
    if (enableLogInstance)
    {
      if (logInstanceID)
      {
        v7 = logInstanceID;
      }

      else
      {
        v7 = prevLogInstanceID;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v15 = 134218754;
        v16 = WORD1(v7);
        v17 = 2080;
        *v18 = "is_valid_ext_block";
        *&v18[8] = 2048;
        *v19 = v5;
        *&v19[8] = 1024;
        v20 = v6;
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx %s: EDRMetaData_RBSP error remaining_bits[%lu] < length[%u], bail!\n", &v15, 0x26u);
      }

      result = 0;
      prevLogInstanceID = v7;
      goto LABEL_11;
    }

    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      goto LABEL_11;
    }

    v15 = 136315650;
    v16 = "is_valid_ext_block";
    v17 = 2048;
    *v18 = v5;
    *&v18[8] = 1024;
    *v19 = v6;
    v11 = MEMORY[0x277D86220];
    v12 = " [1.450.54] %s: EDRMetaData_RBSP error remaining_bits[%lu] < length[%u], bail!\n";
    v13 = 28;
LABEL_59:
    _os_log_impl(&dword_250836000, v11, OS_LOG_TYPE_DEFAULT, v12, &v15, v13);
    result = 0;
    goto LABEL_11;
  }

  result = 1;
  if (a3 > 7)
  {
    if (a3 > 10)
    {
      if (a3 == 11)
      {
        if (a2 == 4)
        {
          goto LABEL_11;
        }
      }

      else if (a3 == 254)
      {
        if (a2 == 2)
        {
          goto LABEL_11;
        }
      }

      else if (a3 != 255 || a2 == 6)
      {
        goto LABEL_11;
      }
    }

    else if (a3 == 8)
    {
      if (a2 <= 0x19 && ((1 << a2) & 0x2083400) != 0)
      {
        goto LABEL_11;
      }
    }

    else if (a3 == 9)
    {
      if ((a2 & 0xFFFFFFEF) == 1)
      {
        goto LABEL_11;
      }
    }

    else if ((a2 & 0xFFFFFFEF) == 5)
    {
      goto LABEL_11;
    }
  }

  else if (a3 > 3)
  {
    if (a3 == 4)
    {
      if (a2 == 3)
      {
        goto LABEL_11;
      }
    }

    else if (a3 == 5)
    {
      if (a2 == 7)
      {
        goto LABEL_11;
      }
    }

    else if (a3 != 6 || a2 == 8)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (a3 != 1)
    {
      if (a3 == 2)
      {
        if (a2 == 11)
        {
          goto LABEL_11;
        }

        goto LABEL_50;
      }

      if (a3 != 3)
      {
        goto LABEL_11;
      }
    }

    if (a2 == 5)
    {
      goto LABEL_11;
    }
  }

LABEL_50:
  if (!enableLogInstance)
  {
    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      goto LABEL_11;
    }

    v15 = 136315650;
    v16 = "is_valid_ext_block";
    v17 = 1024;
    *v18 = a3;
    *&v18[4] = 1024;
    *&v18[6] = a2;
    v11 = MEMORY[0x277D86220];
    v12 = " [1.450.54] %s: EDRMetaData_RBSP error level=%d, length=%d: invalid!";
    v13 = 24;
    goto LABEL_59;
  }

  if (logInstanceID)
  {
    v14 = logInstanceID;
  }

  else
  {
    v14 = prevLogInstanceID;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v15 = 134218754;
    v16 = WORD1(v14);
    v17 = 2080;
    *v18 = "is_valid_ext_block";
    *&v18[8] = 1024;
    *v19 = a3;
    *&v19[4] = 1024;
    *&v19[6] = a2;
    _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx %s: EDRMetaData_RBSP error level=%d, length=%d: invalid!", &v15, 0x22u);
  }

  result = 0;
  prevLogInstanceID = v14;
LABEL_11:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t EDRMetaData_RBSP::get_remaining_bytes(EDRMetaData_RBSP *this)
{
  var2 = this->var2;
  v3 = var2 + 7;
  v2 = var2 < -7;
  v4 = var2 + 14;
  if (!v2)
  {
    v4 = v3;
  }

  return (LODWORD(this->var6) - LODWORD(this->var5) + (v4 >> 3));
}

uint64_t getFactorial(signed int a1)
{
  if (a1 < 2)
  {
    return 1;
  }

  v1 = vaddq_s32(vdupq_n_s32(a1), xmmword_2508CEC20);
  v2 = vdupq_n_s32(a1 - 2);
  v3.i64[0] = 0x100000001;
  v3.i64[1] = 0x100000001;
  v4 = 4;
  v5.i64[0] = 0x300000003;
  v5.i64[1] = 0x300000003;
  do
  {
    v6 = v3;
    v3 = vmulq_s32(v1, v3);
    v1 = vaddq_s32(v1, v5);
    v4 -= 4;
  }

  while (((a1 + 2) & 0xFFFFFFFC) + v4 != 4);
  v7 = vbslq_s8(vcgtq_u32(vorrq_s8(vdupq_n_s32(-v4), xmmword_2508CD8F0), v2), v6, v3);
  *v7.i8 = vmul_s32(*v7.i8, *&vextq_s8(v7, v7, 8uLL));
  return (v7.i32[0] * v7.i32[1]);
}

uint64_t getBernsteinCoeff(signed int a1, signed int a2)
{
  if (a1 < 2)
  {
    v9 = 1;
  }

  else
  {
    v2 = vaddq_s32(vdupq_n_s32(a1), xmmword_2508CEC20);
    v3 = vdupq_n_s32(a1 - 2);
    v4.i64[0] = 0x100000001;
    v4.i64[1] = 0x100000001;
    v5 = 4;
    v6.i64[0] = 0x300000003;
    v6.i64[1] = 0x300000003;
    do
    {
      v7 = v4;
      v4 = vmulq_s32(v2, v4);
      v2 = vaddq_s32(v2, v6);
      v5 -= 4;
    }

    while (((a1 + 2) & 0xFFFFFFFC) + v5 != 4);
    v8 = vbslq_s8(vcgtq_u32(vorrq_s8(vdupq_n_s32(-v5), xmmword_2508CD8F0), v3), v7, v4);
    *v8.i8 = vmul_s32(*v8.i8, *&vextq_s8(v8, v8, 8uLL));
    v9 = v8.i32[0] * v8.i32[1];
  }

  if (a2 < 2)
  {
    v17 = 1;
  }

  else
  {
    v10 = vaddq_s32(vdupq_n_s32(a2), xmmword_2508CEC20);
    v11 = vdupq_n_s32(a2 - 2);
    v12.i64[0] = 0x100000001;
    v12.i64[1] = 0x100000001;
    v13 = 4;
    v14.i64[0] = 0x300000003;
    v14.i64[1] = 0x300000003;
    do
    {
      v15 = v12;
      v12 = vmulq_s32(v10, v12);
      v10 = vaddq_s32(v10, v14);
      v13 -= 4;
    }

    while (((a2 + 2) & 0xFFFFFFFC) + v13 != 4);
    v16 = vbslq_s8(vcgtq_u32(vorrq_s8(vdupq_n_s32(-v13), xmmword_2508CD8F0), v11), v15, v12);
    *v16.i8 = vmul_s32(*v16.i8, *&vextq_s8(v16, v16, 8uLL));
    v17 = v16.i32[0] * v16.i32[1];
  }

  if (a1 - a2 < 2)
  {
    v26 = 1;
  }

  else
  {
    v18 = ~a2 + a1;
    v19 = vaddq_s32(vdupq_n_s32(a1 - a2), xmmword_2508CEC20);
    v20 = vdupq_n_s32(v18 - 1);
    v21.i64[0] = 0x100000001;
    v21.i64[1] = 0x100000001;
    v22 = 4;
    v23.i64[0] = 0x300000003;
    v23.i64[1] = 0x300000003;
    do
    {
      v24 = v21;
      v21 = vmulq_s32(v19, v21);
      v19 = vaddq_s32(v19, v23);
      v22 -= 4;
    }

    while (((v18 + 3) & 0xFFFFFFFC) + v22 != 4);
    v25 = vbslq_s8(vcgtq_u32(vorrq_s8(vdupq_n_s32(-v22), xmmword_2508CD8F0), v20), v24, v21);
    *v25.i8 = vmul_s32(*v25.i8, *&vextq_s8(v25, v25, 8uLL));
    v26 = v25.i32[0] * v25.i32[1];
  }

  return v9 / (v26 * v17);
}

float BezierCurvePolyCoeff(float *a1, float *a2, unsigned int a3, signed int a4, float *a5, float *a6)
{
  *a1 = 0.0;
  *a2 = 0.0;
  if ((a3 & 0x80000000) == 0)
  {
    v9 = 0;
    v10 = a3 + 1;
    v11 = a3 + 4;
    v12.i64[0] = 0x300000003;
    v12.i64[1] = 0x300000003;
    v13 = a3;
    v14 = 2;
    do
    {
      if (v13 >= 2)
      {
        v15 = 2;
      }

      else
      {
        v15 = v13;
      }

      if (a3 - v9 >= 2)
      {
        v16 = 2;
      }

      else
      {
        v16 = a3 - v9;
      }

      if (v9 < 2)
      {
        v23 = 1;
      }

      else
      {
        v17 = vaddq_s32(vdupq_n_s32(v9), xmmword_2508CEC20);
        v18 = vdupq_n_s32(v9 - 2);
        v19.i64[0] = 0x100000001;
        v19.i64[1] = 0x100000001;
        v20 = 4;
        do
        {
          v21 = v19;
          v19 = vmulq_s32(v17, v19);
          v17 = vaddq_s32(v17, v12);
          v20 -= 4;
        }

        while ((v14 & 0xFFFFFFFC) + v20 != 4);
        v22 = vbslq_s8(vcgtq_u32(vorrq_s8(vdupq_n_s32(-v20), xmmword_2508CD8F0), v18), v21, v19);
        *v22.i8 = vmul_s32(*v22.i8, *&vextq_s8(v22, v22, 8uLL));
        v23 = v22.i32[0] * v22.i32[1];
      }

      if ((a3 - v9) < 2)
      {
        v31 = 1;
      }

      else
      {
        v24 = (v11 - v15) & 0xFFFFFFFC;
        v25 = vaddq_s32(vdupq_n_s32(a3 - v9), xmmword_2508CEC20);
        v26 = vdupq_n_s32(v10 - v9 - v16 - 1);
        v27.i64[0] = 0x100000001;
        v27.i64[1] = 0x100000001;
        v28 = 4;
        do
        {
          v29 = v27;
          v27 = vmulq_s32(v25, v27);
          v25 = vaddq_s32(v25, v12);
          v28 -= 4;
        }

        while (v24 + v28 != 4);
        v30 = vbslq_s8(vcgtq_u32(vorrq_s8(vdupq_n_s32(-v28), xmmword_2508CD8F0), v26), v29, v27);
        *v30.i8 = vmul_s32(*v30.i8, *&vextq_s8(v30, v30, 8uLL));
        v31 = v30.i32[0] * v30.i32[1];
      }

      v32 = (v31 * v23);
      v33 = powf(-1.0, (v9 + a3));
      *a1 = *a1 + ((v33 * a5[v9]) / v32);
      v34 = (v33 * a6[v9++]) / v32;
      *a2 = *a2 + v34;
      ++v14;
      --v11;
      --v13;
      v12.i64[0] = 0x300000003;
      v12.i64[1] = 0x300000003;
    }

    while (v9 != v10);
  }

  if (a4 < 2)
  {
    v42 = 1;
  }

  else
  {
    v35 = vaddq_s32(vdupq_n_s32(a4), xmmword_2508CEC20);
    v36 = vdupq_n_s32(a4 - 2);
    v37.i64[0] = 0x100000001;
    v37.i64[1] = 0x100000001;
    v38 = 4;
    v39.i64[0] = 0x300000003;
    v39.i64[1] = 0x300000003;
    do
    {
      v40 = v37;
      v37 = vmulq_s32(v35, v37);
      v35 = vaddq_s32(v35, v39);
      v38 -= 4;
    }

    while (((a4 + 2) & 0xFFFFFFFC) + v38 != 4);
    v41 = vbslq_s8(vcgtq_u32(vorrq_s8(vdupq_n_s32(-v38), xmmword_2508CD8F0), v36), v40, v37);
    *v41.i8 = vmul_s32(*v41.i8, *&vextq_s8(v41, v41, 8uLL));
    v42 = v41.i32[0] * v41.i32[1];
  }

  if ((a4 - a3) < 2)
  {
    v51 = 1;
  }

  else
  {
    v43 = ~a3 + a4;
    v44 = vaddq_s32(vdupq_n_s32(a4 - a3), xmmword_2508CEC20);
    v45 = vdupq_n_s32(v43 - 1);
    v46.i64[0] = 0x100000001;
    v46.i64[1] = 0x100000001;
    v47 = 4;
    v48.i64[0] = 0x300000003;
    v48.i64[1] = 0x300000003;
    do
    {
      v49 = v46;
      v46 = vmulq_s32(v44, v46);
      v44 = vaddq_s32(v44, v48);
      v47 -= 4;
    }

    while (((v43 + 3) & 0xFFFFFFFC) + v47 != 4);
    v50 = vbslq_s8(vcgtq_u32(vorrq_s8(vdupq_n_s32(-v47), xmmword_2508CD8F0), v45), v49, v46);
    *v50.i8 = vmul_s32(*v50.i8, *&vextq_s8(v50, v50, 8uLL));
    v51 = v50.i32[0] * v50.i32[1];
  }

  v52 = v42 / v51;
  *a1 = *a1 * v52;
  result = *a2 * v52;
  *a2 = result;
  return result;
}

float BezierCurvePolyCoeff(float *a1, unsigned int a2, signed int a3, float *a4)
{
  *a1 = 0.0;
  if ((a2 & 0x80000000) != 0)
  {
    v10 = 0.0;
  }

  else
  {
    v7 = 0;
    v8 = a2 + 1;
    v9 = a2 + 4;
    v10 = 0.0;
    v11.i64[0] = 0x300000003;
    v11.i64[1] = 0x300000003;
    v12 = a2;
    v13 = 2;
    do
    {
      if (v12 >= 2)
      {
        v14 = 2;
      }

      else
      {
        v14 = v12;
      }

      if (a2 - v7 >= 2)
      {
        v15 = 2;
      }

      else
      {
        v15 = a2 - v7;
      }

      if (v7 < 2)
      {
        v22 = 1;
      }

      else
      {
        v16 = vaddq_s32(vdupq_n_s32(v7), xmmword_2508CEC20);
        v17 = vdupq_n_s32(v7 - 2);
        v18.i64[0] = 0x100000001;
        v18.i64[1] = 0x100000001;
        v19 = 4;
        do
        {
          v20 = v18;
          v18 = vmulq_s32(v16, v18);
          v16 = vaddq_s32(v16, v11);
          v19 -= 4;
        }

        while ((v13 & 0xFFFFFFFC) + v19 != 4);
        v21 = vbslq_s8(vcgtq_u32(vorrq_s8(vdupq_n_s32(-v19), xmmword_2508CD8F0), v17), v20, v18);
        *v21.i8 = vmul_s32(*v21.i8, *&vextq_s8(v21, v21, 8uLL));
        v22 = v21.i32[0] * v21.i32[1];
      }

      if ((a2 - v7) < 2)
      {
        v30 = 1;
      }

      else
      {
        v23 = (v9 - v14) & 0xFFFFFFFC;
        v24 = vaddq_s32(vdupq_n_s32(a2 - v7), xmmword_2508CEC20);
        v25 = vdupq_n_s32(v8 - v7 - v15 - 1);
        v26.i64[0] = 0x100000001;
        v26.i64[1] = 0x100000001;
        v27 = 4;
        do
        {
          v28 = v26;
          v26 = vmulq_s32(v24, v26);
          v24 = vaddq_s32(v24, v11);
          v27 -= 4;
        }

        while (v23 + v27 != 4);
        v29 = vbslq_s8(vcgtq_u32(vorrq_s8(vdupq_n_s32(-v27), xmmword_2508CD8F0), v25), v28, v26);
        *v29.i8 = vmul_s32(*v29.i8, *&vextq_s8(v29, v29, 8uLL));
        v30 = v29.i32[0] * v29.i32[1];
      }

      v31 = (powf(-1.0, (v7 + a2)) * a4[v7]) / (v30 * v22);
      ++v7;
      v10 = v10 + v31;
      *a1 = v10;
      ++v13;
      --v9;
      --v12;
      v11.i64[0] = 0x300000003;
      v11.i64[1] = 0x300000003;
    }

    while (v7 != v8);
  }

  if (a3 < 2)
  {
    v39 = 1;
  }

  else
  {
    v32 = vaddq_s32(vdupq_n_s32(a3), xmmword_2508CEC20);
    v33 = vdupq_n_s32(a3 - 2);
    v34.i64[0] = 0x100000001;
    v34.i64[1] = 0x100000001;
    v35 = 4;
    v36.i64[0] = 0x300000003;
    v36.i64[1] = 0x300000003;
    do
    {
      v37 = v34;
      v34 = vmulq_s32(v32, v34);
      v32 = vaddq_s32(v32, v36);
      v35 -= 4;
    }

    while (((a3 + 2) & 0xFFFFFFFC) + v35 != 4);
    v38 = vbslq_s8(vcgtq_u32(vorrq_s8(vdupq_n_s32(-v35), xmmword_2508CD8F0), v33), v37, v34);
    *v38.i8 = vmul_s32(*v38.i8, *&vextq_s8(v38, v38, 8uLL));
    v39 = v38.i32[0] * v38.i32[1];
  }

  if ((a3 - a2) < 2)
  {
    v48 = 1;
  }

  else
  {
    v40 = ~a2 + a3;
    v41 = vaddq_s32(vdupq_n_s32(a3 - a2), xmmword_2508CEC20);
    v42 = vdupq_n_s32(v40 - 1);
    v43.i64[0] = 0x100000001;
    v43.i64[1] = 0x100000001;
    v44 = 4;
    v45.i64[0] = 0x300000003;
    v45.i64[1] = 0x300000003;
    do
    {
      v46 = v43;
      v43 = vmulq_s32(v41, v43);
      v41 = vaddq_s32(v41, v45);
      v44 -= 4;
    }

    while (((v40 + 3) & 0xFFFFFFFC) + v44 != 4);
    v47 = vbslq_s8(vcgtq_u32(vorrq_s8(vdupq_n_s32(-v44), xmmword_2508CD8F0), v42), v46, v43);
    *v47.i8 = vmul_s32(*v47.i8, *&vextq_s8(v47, v47, 8uLL));
    v48 = v47.i32[0] * v47.i32[1];
  }

  result = v10 * (v39 / v48);
  *a1 = result;
  return result;
}

void getBezierCurvePolyCoeff(float *a1, float *a2, signed int a3, float *a4, float *a5)
{
  if ((a3 & 0x80000000) == 0)
  {
    v10 = 0;
    v11 = (a3 + 1);
    do
    {
      BezierCurvePolyCoeff(a1++, a2++, v10++, a3, a4, a5);
    }

    while (v11 != v10);
  }
}

void getBezierCurvePolyCoeff(float *a1, signed int a2, float *a3)
{
  if ((a2 & 0x80000000) == 0)
  {
    v6 = 0;
    v7 = (a2 + 1);
    do
    {
      BezierCurvePolyCoeff(a1++, v6++, a2, a3);
    }

    while (v7 != v6);
  }
}

uint64_t convertTonemapCurveS_C_Bezier_abs(uint64_t result, float a2)
{
  v2 = 6;
  do
  {
    v3 = *(result + 4);
    result += 4;
    *(result + 364) = v3 * a2;
    --v2;
  }

  while (v2);
  return result;
}

float *getBezierAnchors(float *result)
{
  v1 = *result;
  if (v1 >= 2)
  {
    v2 = 0;
    v3 = (v1 - 1);
    v4 = result + 7;
    v5 = result + 98;
    v6 = result + 19;
    v7 = result + 22;
    v8 = result + 99;
    do
    {
      v9 = v2;
      result = &v5[15 * v2];
      *result = *&v4[v2++];
      v10 = *(v6 + v9);
      result[v10] = *&v4[v2];
      if (v10 >= 2)
      {
        v11 = (v10 - 1);
        result = v7;
        v12 = v8;
        do
        {
          v13 = *result++;
          *v12++ = *&v4[v9] + (v13 * (*&v4[v2] - *&v4[v9]));
          --v11;
        }

        while (v11);
      }

      v8 += 15;
      v7 += 14;
    }

    while (v2 != v3);
  }

  return result;
}

float *convertBezierToPoly(float *result)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*result >= 2u)
  {
    v1 = result;
    v2 = result + 98;
    v3 = result + 92;
    v10 = result + 248;
    v11 = result + 173;
    v4 = 0;
    v5 = *result;
    v6 = *result + 1;
    v7 = result + 173;
    do
    {
      BezierCurvePolyCoeff(v7++, v4++, v5, v2);
    }

    while (v6 != v4);
    v8 = *v3;
    v12[0] = -*v3;
    v12[1] = 1.0;
    PolyGeneric2PolyStd(v12, 2, v3[1] - v8, *v1, v11, v10);
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25086B444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

_DWORD *setupPolynomialTables(int *a1, uint64_t a2)
{
  v4 = 0;
  v5 = *a1 + 8;
  do
  {
    result = createPolynomialTableForComponent(a1, v4, a2 + 2 * (v4 << v5));
    ++v4;
  }

  while (v4 != 3);
  return result;
}

uint64_t setupDequantizeTables(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = *(a1 + 4) + 8;
  do
  {
    result = createNlqTableForComponent(a1, v4, (a2 + 4 * (v4 << v5)));
    ++v4;
  }

  while (v4 != 3);
  return result;
}

uint64_t createMMRCoefficients(uint64_t result, uint64_t a2)
{
  *(a2 + 40) = 0u;
  v2 = a2 + 40;
  v3 = (v2 + 88);
  *(v2 + 144) = 0u;
  *(v2 + 160) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *v2 = *(result + 11800);
  v4 = *(result + 3444);
  if (v4)
  {
    if ((v4 + 1) > 2)
    {
      v5 = (v4 + 1);
    }

    else
    {
      v5 = 2;
    }

    v6 = result + 11856;
    v7 = 1;
    LODWORD(v8) = 1;
    do
    {
      v9 = 0;
      v8 = v8;
      do
      {
        *(v2 + 4 * v8++) = *(v6 + v9);
        v9 += 8;
      }

      while (v9 != 56);
      ++v7;
      v6 += 56;
    }

    while (v7 != v5);
  }

  *v3 = *(result + 13816);
  v10 = *(result + 3480);
  if (v10)
  {
    if ((v10 + 1) > 2)
    {
      v11 = (v10 + 1);
    }

    else
    {
      v11 = 2;
    }

    v12 = result + 13872;
    v13 = 1;
    LODWORD(v14) = 1;
    do
    {
      v15 = 0;
      v14 = v14;
      do
      {
        v3[v14++] = *(v12 + v15);
        v15 += 8;
      }

      while (v15 != 56);
      ++v13;
      v12 += 56;
    }

    while (v13 != v11);
  }

  return result;
}

float setupNlqParameters(_DWORD *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = a1[11];
  *(a2 + 216) = 1.0 / (1 << (v3 - v2 - 13));
  v4 = 3;
  v5 = 3 - v2;
  v6 = a1 + 5050;
  v7 = (a2 + 232);
  do
  {
    v8 = (v6[244] << v3) | v6[271];
    v9 = (v6[136] << v3) | v6[163];
    v10 = ((v6[27] << v3) | v6[54]) << v5;
    v11 = *v6++;
    *(v7 - 1) = v9;
    *v7 = v10;
    result = v11;
    *(v7 - 3) = v11;
    *(v7 - 2) = v8;
    v7 += 4;
    --v4;
  }

  while (v4);
  return result;
}

_DWORD *createPolynomialTableForComponent(int *a1, int a2, uint64_t a3)
{
  v3 = 0;
  v4 = *a1;
  v5 = *a1 + 8;
  v7 = &a1[18 * a2];
  v10 = v7[15];
  v8 = v7 + 15;
  v9 = v10;
  v11 = a1[2];
  v12 = 16 - v11;
  v13 = ~(-1 << v11);
  v14 = (a1[a2 + 12] - 1);
  v15 = a1 + 366;
  v16 = a1[5038];
  v17 = a1[11] + 4;
  result = v8 + 1;
  v19 = &v15[108 * a2];
  do
  {
    LODWORD(v20) = v9;
    if (v3 >= v9)
    {
      LODWORD(v20) = v8[v14];
      if (v3 < v20)
      {
        LODWORD(v20) = v3;
      }
    }

    v21 = v8 + 1;
    v22 = 1;
    while (v14 + v22 != 1)
    {
      v23 = *v21++;
      --v22;
      if (v23 > v20)
      {
        v24 = -v22;
        v25 = v24;
        goto LABEL_10;
      }
    }

    v24 = v14;
    v25 = v14;
LABEL_10:
    v26 = v25 - (v24 >= v14);
    if (v4)
    {
      v20 = v20;
    }

    else
    {
      v20 = (4 * v20);
    }

    v27 = ((*&v19[12 * v26 + 4] * v20 + (*&v19[12 * v26 + 2] << 10)) * v20 + (*&v19[12 * v26] << 20)) >> v17;
    if (v27 >= 0xFFFF)
    {
      v27 = 0xFFFFLL;
    }

    v28 = v27 & ~(v27 >> 63);
    v29 = v28 >> v12;
    if (v28 >> v12 >= v13)
    {
      LOWORD(v29) = v13;
    }

    if (v16 == 1)
    {
      LOWORD(v28) = v29;
    }

    *(a3 + 2 * v3++) = v28;
  }

  while (!(v3 >> v5));
  return result;
}

uint64_t createMmrTableForComponent(uint64_t result, unsigned int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = (result + 1008 * a2 + 15832);
  *a5 = *v5;
  v6 = 1;
  v7 = 7;
  v8 = 0x700000000;
  do
  {
    a5[v6] = *(&v5[7 * ((((v6 + 6 - ((37 * (v6 + 6)) >> 8)) >> 1) + ((37 * (v6 + 6)) >> 8)) >> 2)] + ((v8 - 0x700000000 * (v7 / 7)) >> 30));
    ++v6;
    v8 += 0x100000000;
    ++v7;
  }

  while (v6 != 22);
  v9 = 0;
  v10 = (result + 60);
  v11 = (result + 48);
  do
  {
    *(a3 + v9) = *v10;
    v12 = *v11++;
    *(a4 + v9) = v10[v12 - 1];
    v9 += 2;
    v10 += 18;
  }

  while (v9 != 6);
  return result;
}

uint64_t createNlqTableForComponent(uint64_t result, unsigned int a2, _DWORD *a3)
{
  v3 = *(result + 4);
  v4 = v3 + 8;
  v5 = *(result + 44);
  v6 = (result + 4 * a2);
  v7 = v6[5050];
  v8 = (v6[5294] << v5) | v6[5321];
  v9 = (v6[5186] << v5) | v6[5213];
  v10 = (v6[5077] << v5) | v6[5104];
  v11 = 2 - v3;
  v12 = v10 << (3 - v3);
  v13 = v8 << (3 - v3);
  v14 = v5 - v3 - 13;
  v15 = v7;
  v16 = -2 * v7;
  v17 = -v7;
  LODWORD(result) = 1;
  do
  {
    if (v15)
    {
      v18 = v16 - 1;
      if (v17 < 0)
      {
        v18 = v16 + 1;
      }

      v19 = v13 * ((v17 >> 63) | 1) + v9 * (v18 << v11);
      if (v19 <= -v12)
      {
        v20 = -v12;
      }

      else
      {
        v20 = v19;
      }

      if (v19 <= v12)
      {
        v21 = v20;
      }

      else
      {
        v21 = v12;
      }

      v22 = v21 >> v14;
    }

    else
    {
      LODWORD(v22) = 0;
    }

    *a3++ = v22;
    v23 = result >> v4;
    v16 += 2;
    ++v17;
    result = (result + 1);
    --v15;
  }

  while (!v23);
  return result;
}

void sub_2508702F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = AdaptiveTM;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

int *FindChromaDist(int *result, unsigned int a2, int a3)
{
  v15[3] = *MEMORY[0x277D85DE8];
  if (result)
  {
    GetRgb2XyzM33ByV8Prims(result, v11);
    v15[0] = (v11[0] * a2) >> 26;
    v15[1] = (v11[3] * a2) >> 26;
    v15[2] = (v11[6] * a2) >> 26;
    Xyz2IctcpDm(v15, &v12);
    v5 = v13;
    v6 = a3 - v12;
    if (a3 - v12 == 0x80000000)
    {
      v7 = 0x7FFFFFFF;
    }

    else
    {
      v7 = v12 - a3;
    }

    if (v6 < 0)
    {
      v6 = v7;
    }

    if (v13 == 0x80000000)
    {
      v8 = 0x7FFFFFFF;
    }

    else
    {
      v8 = -v13;
    }

    if (v13 < 0)
    {
      v5 = v8;
    }

    if (v14 == 0x80000000)
    {
      v9 = 0x7FFFFFFF;
    }

    else
    {
      v9 = -v14;
    }

    if (v14 >= 0)
    {
      v9 = v14;
    }

    result = (v5 + v9 + v6);
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

float *ClampL8(float *result)
{
  v1 = 0.0;
  v2 = 2.0;
  v3 = result[1];
  if (*result <= 2.0)
  {
    v4 = *result;
  }

  else
  {
    v4 = 2.0;
  }

  if (*result >= 0.0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  v6 = 1.0;
  if (v3 <= 1.0)
  {
    v6 = result[1];
  }

  if (v3 >= -1.0)
  {
    v7 = v6;
  }

  else
  {
    v7 = -1.0;
  }

  *result = v5;
  result[1] = v7;
  v8 = result[2];
  if (v8 <= 2.0)
  {
    v2 = result[2];
  }

  if (v8 >= 0.0)
  {
    v1 = v2;
  }

  result[2] = v1;
  v9 = result[4];
  v10 = 1.5;
  if (v9 <= 1.5)
  {
    v10 = result[4];
  }

  if (v9 >= 0.5)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0.5;
  }

  result[4] = v11;
  v12 = result[6];
  v13 = -0.5;
  if (v12 >= -0.5)
  {
    v13 = 0.5;
    if (v12 <= 0.5)
    {
      v13 = result[6];
    }
  }

  result[6] = v13;
  return result;
}

uint64_t InterpChromaTrim8(uint64_t result, uint64_t a2, double a3, double a4, double a5, double a6, uint64_t a7, _DWORD *a8)
{
  LOWORD(a4) = *(result + 12);
  v8 = *&a4;
  LOWORD(a5) = *(a2 + 12);
  *&v9 = *&a5 - v8;
  v10 = v8 + *&v9 * a3;
  LOWORD(v9) = *(result + 14);
  LOWORD(a6) = *(a2 + 14);
  v11 = v9 + (*&a6 - v9) * a3;
  *&v10 = v10;
  *&v11 = v11;
  a8[3] = LODWORD(v10);
  a8[4] = LODWORD(v11);
  v12 = a8 + 8;
  v13 = (result + 28);
  v14 = (a2 + 28);
  v15 = 6;
  do
  {
    LOBYTE(v10) = *(v13 - 6);
    v16 = *&v10;
    LOBYTE(v11) = *(v14 - 6);
    *&v17 = *&v11 - v16;
    v18 = v16 + *&v17 * a3;
    *&v18 = v18;
    *v12 = LODWORD(v18);
    LOBYTE(v18) = *v13;
    v19 = *&v18;
    LOBYTE(v17) = *v14;
    v11 = v17 - v19;
    v10 = v19 + v11 * a3;
    *&v10 = v10;
    v12[6] = LODWORD(v10);
    ++v12;
    ++v14;
    ++v13;
    --v15;
  }

  while (v15);
  return result;
}

float InterpLumaTrim8(_WORD *a1, _WORD *a2, double a3, double a4, double a5, double a6, uint64_t a7, uint64_t a8)
{
  LOWORD(a4) = a1[3];
  v8 = *&a4;
  LOWORD(a5) = a2[3];
  *&v9 = *&a5 - v8;
  v10 = v8 + *&v9 * a3;
  *&v10 = v10;
  LOWORD(v9) = a1[4];
  v11 = v9;
  LOWORD(a6) = a2[4];
  *&v12 = *&a6 - v11;
  v13 = v11 + *&v12 * a3;
  *&v13 = v13;
  *a8 = LODWORD(v10);
  *(a8 + 4) = LODWORD(v13);
  LOWORD(v10) = a1[5];
  v14 = *&v10;
  LOWORD(v13) = a2[5];
  *&v15 = *&v13 - v14;
  v16 = v14 + *&v15 * a3;
  *&v16 = v16;
  *(a8 + 8) = LODWORD(v16);
  LOWORD(v16) = a1[8];
  v17 = *&v16;
  LOWORD(v15) = a2[8];
  *&v18 = v15 - v17;
  v19 = v17 + *&v18 * a3;
  LOWORD(v18) = a1[9];
  LOWORD(v12) = a2[9];
  v20 = v18 + (v12 - v18) * a3;
  *&v19 = v19;
  *&v20 = v20;
  *(a8 + 20) = LODWORD(v19);
  *(a8 + 24) = LODWORD(v20);
  LOWORD(v19) = a1[10];
  LOWORD(v20) = a2[10];
  result = *&v19 + (*&v20 - *&v19) * a3;
  *(a8 + 28) = result;
  return result;
}

float InterpChromaTrim2(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, uint64_t a7, uint64_t a8)
{
  LOWORD(a4) = *(a1 + 10);
  v8 = *&a4;
  LOWORD(a5) = *(a2 + 10);
  *&v9 = *&a5 - v8;
  v10 = v8 + *&v9 * a3;
  LOWORD(v9) = *(a1 + 12);
  LOWORD(a6) = *(a2 + 12);
  *&v10 = v10;
  result = v9 + (*&a6 - v9) * a3;
  *(a8 + 12) = LODWORD(v10);
  *(a8 + 16) = result;
  return result;
}

float InterpLumaTrim2(_WORD *a1, _WORD *a2, _WORD *a3, uint64_t a4, double a5)
{
  v6 = a5;
  v19 = 0.0;
  v20 = 0.0;
  v17 = 0.0;
  if (a1 == a3)
  {
    LOWORD(a5) = a3[2];
    v11 = *&a5 / 1096.0 + 0.5;
    v10 = vcvtd_n_f64_u32(a3[3], 0xCuLL) + -0.5;
    v19 = v10;
    v20 = v11;
  }

  else
  {
    v10 = SlopeOffsetL2ToL8(a1, &v20, &v19);
  }

  if (a2 == a1)
  {
    v13 = v19;
    v12 = v20;
  }

  else if (a2 == a3)
  {
    LOWORD(v10) = a3[2];
    v12 = *&v10 / 1096.0 + 0.5;
    v13 = vcvtd_n_f64_u32(a3[3], 0xCuLL) + -0.5;
  }

  else
  {
    v18 = 0.0;
    SlopeOffsetL2ToL8(a2, &v18, &v17);
    v13 = v17;
    v12 = v18;
  }

  v14 = v20 + (v12 - v20) * v6;
  *&v14 = v14;
  v15 = v19 + (v13 - v19) * v6;
  *&v15 = v15;
  *a4 = LODWORD(v14);
  *(a4 + 4) = LODWORD(v15);
  LOWORD(v14) = a1[4];
  LOWORD(v15) = a2[4];
  *&v14 = *&v14 + (*&v15 - *&v14) * v6;
  *(a4 + 8) = LODWORD(v14);
  result = a1[7] + (a2[7] - a1[7]) * v6;
  *(a4 + 20) = result;
  return result;
}

void RgbLinear2Itp(float a1, float a2, float a3, const float (*a4)[3], const float (*a5)[3], float *a6)
{
  v29 = *MEMORY[0x277D85DE8];
  if (!a4)
  {
    goto LABEL_6;
  }

  v8 = 0;
  v9 = &(*a4)[2];
  do
  {
    v10 = (*(v9 - 1) * a2) + (*(v9 - 2) * a1);
    v11 = *v9;
    v9 += 3;
    *(&v26 + v8) = v10 + (v11 * a3);
    v8 += 4;
  }

  while (v8 != 12);
  a1 = v26;
  if (v26 >= 0.0)
  {
    v12 = powf(v26 * 0.0001, 0.1593);
    v13 = powf(((v12 * 18.852) + 0.83594) / ((v12 * 18.688) + 1.0), 78.844);
  }

  else
  {
LABEL_6:
    v14 = powf(a1 * -0.0001, 0.1593);
    v13 = 0.0000014619 - powf(((v14 * 18.852) + 0.83594) / ((v14 * 18.688) + 1.0), 78.844);
  }

  if (v27 >= 0.0)
  {
    v17 = powf(v27 * 0.0001, 0.1593);
    v16 = powf(((v17 * 18.852) + 0.83594) / ((v17 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v15 = powf(v27 * -0.0001, 0.1593);
    v16 = 0.0000014619 - powf(((v15 * 18.852) + 0.83594) / ((v15 * 18.688) + 1.0), 78.844);
  }

  if (v28 >= 0.0)
  {
    v20 = powf(v28 * 0.0001, 0.1593);
    v19 = powf(((v20 * 18.852) + 0.83594) / ((v20 * 18.688) + 1.0), 78.844);
    if (!a5)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v18 = powf(v28 * -0.0001, 0.1593);
    v19 = 0.0000014619 - powf(((v18 * 18.852) + 0.83594) / ((v18 * 18.688) + 1.0), 78.844);
    if (!a5)
    {
      goto LABEL_17;
    }
  }

  if (a6)
  {
    v21 = 0;
    v22 = &(*a5)[2];
    do
    {
      v23 = (v16 * *(v22 - 1)) + (*(v22 - 2) * v13);
      v24 = *v22;
      v22 += 3;
      a6[v21++] = v23 + (v24 * v19);
    }

    while (v21 != 3);
  }

LABEL_17:
  v25 = *MEMORY[0x277D85DE8];
}

float deriveTmidPq(double a1, float a2, double a3, double a4, float a5)
{
  v6 = *&a4;
  v7 = *&a3;
  v9 = *&a1;
  mapMid(a1, a2, a3, a4, a5);
  if ((a5 - v10) <= (v7 - v9))
  {
    v11 = v10;
  }

  else
  {
    v11 = a5 - (v7 - v9);
  }

  if ((v10 - v6) > (v9 - a2))
  {
    v10 = (v9 - a2) + v6;
  }

  if (v11 >= v9)
  {
    v11 = v9;
  }

  if (v10 <= v9)
  {
    v10 = v9;
  }

  return (v11 + v10) - v9;
}

double SlopeOffsetL2ToL8(_WORD *a1, double *a2, double *a3)
{
  v5 = 0.5;
  v6 = vcvtd_n_f64_u32(a1[2], 0xCuLL) + 0.5;
  v7 = vcvtd_n_f64_u32(a1[3], 0xCuLL) + -0.5;
  LOWORD(v5) = a1[1];
  v8 = v5 / 4095.0 + -61.0;
  v9 = 1.0 / pow(v8, 1.0 / (vcvtd_n_f64_u32(a1[4], 0xCuLL) + 0.5));
  v10 = v8 * (v6 * v9);
  *a2 = v10;
  result = v10 * 61.0 / v8 + v7 * v9;
  *a3 = result;
  return result;
}

void mapMid(double a1, float a2, double a3, double a4, float a5)
{
  v5 = a5;
  v6 = *&a4 + 0.1;
  v7 = (a5 - *&a4) + (a5 - *&a4);
  if (a2 > *&a4)
  {
    a2 = *&a4;
  }

  if (*&a3 >= a5)
  {
    a5 = *&a3;
  }

  *&a3 = *&a4 + 0.02;
  if ((*&a4 + 0.02) > v6)
  {
    *&a3 = *&a4 + 0.1;
  }

  if ((v5 + -0.1) < v6)
  {
    v8 = *&a4 + 0.1;
  }

  else
  {
    v8 = v5 + -0.1;
  }

  v9 = (v6 - *&a3) / (v6 - a2);
  v10 = fminf(v9 * 3.0, 1.0);
  v11 = fminf(((v8 - v6) / (a5 - v6)) * 3.0, 1.0);
  if (v7 > v10)
  {
    v7 = v10;
  }

  if (v7 > v11)
  {
    v7 = v11;
  }

  if (v6 >= *&a1)
  {
    *&a4 = v9 * v9;
    if (*&a4 > v10)
    {
      *&a4 = v10;
    }

    a5 = v6;
  }

  else
  {
    a2 = v6;
    *&a3 = v6;
    *&a4 = v7;
  }

  cubicSplineInterp(a1, a2, a3, a4, a5);
}

uint64_t commonRBSP::setRBSP(commonRBSP *this, unsigned __int8 *a2, uint64_t a3)
{
  *(this + 5) = &a2[a3];
  *(this + 6) = a2;
  *(this + 15) = 0;
  *(this + 5) = a3;
  *(this + 6) = 0;
  v7 = 0;
  *(this + 1) = (*(*this + 8))(this) << 32;
  v5 = &a2[HIDWORD(v7)];
  result = (*(*this + 8))(this, v5, &v7 + 4, &v7);
  *(this + 1) |= result;
  *(this + 4) = &v5[HIDWORD(v7)];
  *(this + 4) = 8 * v7;
  return result;
}

void commonRBSP::freeRBSP(commonRBSP *this)
{
  v2 = (this + 64);
  v1 = *(this + 8);
  if (v1)
  {
    free(v1);
    *v2 = 0;
    v2[1] = 0;
    v2[2] = 0;
  }
}

uint64_t commonRBSP::get_next_uint32(commonRBSP *this, unsigned __int8 *a2, unsigned int *a3, unsigned int *a4)
{
  v4 = *(this + 5) - a2;
  if (v4 <= 0)
  {
    *a4 = 0;
    *a3 = 0;
    *(this + 28) = -1;
    return 0xFFFFFFFFLL;
  }

  if (v4 == 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = 255;
    v8 = 255;
    v9 = 255;
LABEL_9:
    v11 = 255;
LABEL_10:
    v12 = 255;
    goto LABEL_11;
  }

  v9 = a2[1];
  if (v4 < 3)
  {
    v5 = 0;
    v6 = 0;
    v7 = 255;
    v8 = 255;
    goto LABEL_9;
  }

  v8 = a2[2];
  if (v4 == 3)
  {
    v5 = 0;
    v6 = 0;
    v7 = 255;
    goto LABEL_9;
  }

  v11 = a2[3];
  if (v4 < 5)
  {
    v5 = 0;
    v6 = 0;
    v7 = 255;
    goto LABEL_10;
  }

  v7 = a2[4];
  if (v4 == 5)
  {
    v5 = 0;
    v12 = 255;
  }

  else
  {
    v12 = a2[5];
    v5 = 1;
  }

  v6 = 1;
LABEL_11:
  v13 = *a2;
  if (!*(this + 28) && v13 == 3 && !v8 && !v11 && v7 == 3)
  {
    v11 = 0;
    goto LABEL_78;
  }

  if (*(this + 57) | v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v9 == 3;
  }

  v15 = v14;
  if (v15 != 1 || v8 != 0 || v11 != 0 || v7 != 3)
  {
    if (*(this + 56))
    {
      if (v15)
      {
        v13 = 0;
LABEL_69:
        v25 = v4 - 1;
        if (v6)
        {
          v25 = 4;
        }

        *a4 = v25;
        *a3 = v25 + 1;
        if (v4 > 2)
        {
          if (v4 == 3)
          {
            *(this + 56) = a2[1];
            v26 = a2[2];
          }

          else if (v4 == 4)
          {
            *(this + 56) = a2[2];
            v26 = a2[3];
          }

          else
          {
            *(this + 56) = a2[3];
            v26 = a2[4];
          }
        }

        else if (v4 == 1)
        {
          v26 = -1;
          *(this + 56) = -1;
        }

        else
        {
          *(this + 56) = *a2;
          v26 = a2[1];
        }

        goto LABEL_88;
      }
    }

    else
    {
      if (*(this + 57))
      {
        v19 = 0;
      }

      else
      {
        v19 = *a2 == 3;
      }

      v20 = v19;
      if (v20 == 1 && v9 == 0 && v8 == 0 && v11 == 3)
      {
        v9 = 0;
        v11 = v7;
        goto LABEL_78;
      }

      if (v20)
      {
        v24 = v9;
      }

      else
      {
        v24 = 0;
      }

      if ((v20 | v15))
      {
        v13 = v24;
        goto LABEL_69;
      }
    }

    if (*a2 || v9 || v8 != 3)
    {
      if (v9 || v8 || v11 != 3)
      {
        v31 = 4;
        if (v4 < 4)
        {
          v31 = *(this + 10) - a2;
        }

        *a4 = v31;
        *a3 = v31;
        switch(v4)
        {
          case 3:
            *(this + 56) = a2[1];
            v26 = a2[2];
            break;
          case 2:
            *(this + 56) = *a2;
            v26 = a2[1];
            break;
          case 1:
            *(this + 56) = -1;
            v26 = *a2;
            break;
          default:
            *(this + 56) = a2[2];
            v26 = a2[3];
            break;
        }

        v7 = v11;
        v11 = v8;
        v8 = v9;
        goto LABEL_88;
      }

      v8 = 0;
      v11 = 0;
    }

    else
    {
      v13 = 0;
      v8 = 0;
    }

    goto LABEL_69;
  }

  v11 = 0;
  v9 = 0;
LABEL_78:
  v27 = v4 - 2;
  if (v5)
  {
    v27 = 4;
  }

  *a4 = v27;
  *a3 = v27 + 2;
  if ((v4 - 1) >= 3)
  {
    if (v4 == 4)
    {
      v8 = 0;
      *(this + 56) = a2[2];
      v26 = a2[3];
    }

    else
    {
      v8 = 0;
      if (v4 == 5)
      {
        *(this + 56) = a2[3];
        v26 = a2[4];
      }

      else
      {
        *(this + 56) = a2[4];
        v26 = a2[5];
      }
    }
  }

  else
  {
    v8 = 0;
    v26 = -1;
    *(this + 56) = -1;
  }

  v7 = v12;
  v13 = v9;
LABEL_88:
  *(this + 57) = v26;
  v10 = v7 | (((v8 << 8) | (v13 << 16) | v11) << 8);
  if (*(this + 8))
  {
    v28 = *(this + 9);
    v29 = *(this + 10);
    if (v28 < v29 && *a4)
    {
      *(this + 9) = v28 + 1;
      *v28 = v13;
      v28 = *(this + 9);
      v29 = *(this + 10);
    }

    if (v28 < v29 && *a4 >= 2)
    {
      *(this + 9) = v28 + 1;
      *v28 = v8;
      v28 = *(this + 9);
      v29 = *(this + 10);
    }

    if (v28 < v29 && *a4 >= 3)
    {
      *(this + 9) = v28 + 1;
      *v28 = v11;
      v28 = *(this + 9);
      v29 = *(this + 10);
    }

    if (v28 < v29 && *a4 >= 4)
    {
      *(this + 9) = v28 + 1;
      *v28 = v7;
    }
  }

  return v10;
}

uint64_t *commonRBSP::flush_bits(uint64_t *this, int a2)
{
  v2 = this;
  *(this + 6) += a2;
  v3 = *(this + 4);
  v4 = a2 - v3;
  if (a2 <= v3)
  {
    this[1] <<= a2;
  }

  else
  {
    v6 = *this;
    v5 = this[1];
    v7 = v5 >> -v3;
    v8 = v5 << v3;
    if (v3 >= 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = v7;
    }

    v10 = 0;
    this = (*(v6 + 8))(this, this[4], &v10 + 4, &v10);
    *(v2 + 32) += HIDWORD(v10);
    v3 = 8 * v10;
    *(v2 + 8) = (v9 | this) << v4;
    a2 = v4;
  }

  *(v2 + 16) = v3 - a2;
  return this;
}

uint64_t commonRBSP::u_v(commonRBSP *this, int a2)
{
  v2 = (*(this + 3) >> -a2);
  commonRBSP::flush_bits(this, a2);
  return v2;
}

uint64_t commonRBSP::ue_v(commonRBSP *this)
{
  v2 = *(this + 1);
  if ((v2 & 0x8000000000000000) != 0)
  {
    commonRBSP::flush_bits(this, 1);
    return 0;
  }

  else
  {
    v3 = HIDWORD(v2);
    v4 = -32;
    do
    {
      LODWORD(v3) = 2 * v3;
      v5 = v4 + 1;
      if ((v3 & 0x80000000) != 0)
      {
        break;
      }

      v6 = v4 + 32;
      ++v4;
    }

    while (v6 < 0x1E);
    commonRBSP::flush_bits(this, v5 + 33);
    v7 = *(this + 3) >> -v5;
    commonRBSP::flush_bits(this, v5 + 32);
    return (v7 + ~(-2 << (v5 + 31)));
  }
}

uint64_t commonRBSP::i_v(commonRBSP *this, int a2)
{
  v2 = a2;
  v3 = *(this + 3);
  commonRBSP::flush_bits(this, a2);
  return (((-1 << -v2) & v3) >> -v2);
}

uint64_t *commonRBSP::byte_alignment(commonRBSP *this)
{
  commonRBSP::flush_bits(this, 1);
  v2 = *(this + 4) & 7;

  return commonRBSP::flush_bits(this, v2);
}

uint64_t *commonRBSP::rbsp_trailing_bits(commonRBSP *this)
{
  commonRBSP::flush_bits(this, 1);
  v2 = *(this + 4) & 7;

  return commonRBSP::flush_bits(this, v2);
}

uint64_t getFourCCforType(uint64_t a1)
{
  if (getFourCCforType_onceToken != -1)
  {
    dispatch_once(&getFourCCforType_onceToken, &__block_literal_global_1);
  }

  if (a1 > 645428783)
  {
    if (a1 > 1530426929)
    {
      if (a1 <= 1534617139)
      {
        if (a1 > 1534359087)
        {
          if (a1 > 1534359091)
          {
            if (a1 != 1534359092)
            {
              if (a1 == 1534617136)
              {
                return 2019963440;
              }

              if (a1 == 1534617138)
              {
                v3 = 2019963440;
                return v3 | 2u;
              }

              return a1;
            }

            v14 = 1953903154;
            return (v14 + 514);
          }

          if (a1 != 1534359088)
          {
            if (a1 == 1534359090)
            {
              return 1953903154;
            }

            return a1;
          }

          v11 = 1952854576;
          return v11 | 0x100000u;
        }

        if (a1 > 1534354991)
        {
          if (a1 == 1534354992)
          {
            return 1952854576;
          }

          if (a1 == 1534354994)
          {
            v3 = 1952854576;
            return v3 | 2u;
          }

          if (a1 != 1534354996)
          {
            return a1;
          }

          v2 = 1952854576;
          return (v2 + 516);
        }

        if (a1 != 1530426930)
        {
          v10 = 1530426932;
          goto LABEL_127;
        }

        return 875704950;
      }

      if (a1 <= 2088265265)
      {
        if (a1 <= 1534621233)
        {
          if (a1 != 1534617140)
          {
            if (a1 != 1534621232)
            {
              return a1;
            }

            v13 = 12848;
            return v13 | 0x78340000u;
          }

          v2 = 2019963440;
          return (v2 + 516);
        }

        if (a1 == 1534621234)
        {
          v3 = 2016686640;
          return v3 | 2u;
        }

        if (a1 == 1534621236)
        {
          v2 = 2016686640;
          return (v2 + 516);
        }

        v5 = 2088265264;
LABEL_101:
        if (a1 != v5)
        {
          return a1;
        }

        return 1885745712;
      }

      if (a1 > 2088269359)
      {
        if (a1 != 2088269360)
        {
          if (a1 != 2088269362)
          {
            v6 = 2088269364;
LABEL_82:
            if (a1 != v6)
            {
              return a1;
            }

            goto LABEL_120;
          }

          goto LABEL_92;
        }

        return 1882468912;
      }

      if (a1 == 2088265266)
      {
        return 1885745714;
      }

      v8 = 2088265268;
      goto LABEL_147;
    }

    if (a1 <= 796419631)
    {
      if (a1 > 762865201)
      {
        if (a1 > 762869295)
        {
          if (a1 != 762869296)
          {
            if (a1 != 762869298)
            {
              v6 = 762869300;
              goto LABEL_82;
            }

LABEL_92:
            v3 = 1882468912;
            return v3 | 2u;
          }

          return 1882468912;
        }

        if (a1 == 762865202)
        {
          return 1885745714;
        }

        v8 = 762865204;
LABEL_147:
        if (a1 != v8)
        {
          return a1;
        }

        goto LABEL_148;
      }

      if (a1 <= 645428787)
      {
        if (a1 == 645428784)
        {
          return 1882468912;
        }

        v4 = 645428786;
        goto LABEL_91;
      }

      if (a1 != 645428788)
      {
        v5 = 762865200;
        goto LABEL_101;
      }
    }

    else
    {
      if (a1 <= 796423731)
      {
        if (a1 <= 796419635)
        {
          if (a1 != 796419632)
          {
            if (a1 != 796419634)
            {
              return a1;
            }

            return 1885745714;
          }

          return 1885745712;
        }

        if (a1 == 796419636)
        {
LABEL_148:
          v14 = 1885745714;
          return (v14 + 514);
        }

        if (a1 == 796423728)
        {
          return 1882468912;
        }

        v4 = 796423730;
LABEL_91:
        if (a1 != v4)
        {
          return a1;
        }

        goto LABEL_92;
      }

      if (a1 > 1530422833)
      {
        if (a1 == 1530422834)
        {
          return 875704934;
        }

        if (a1 != 1530422836)
        {
          v7 = 1530426928;
LABEL_97:
          if (a1 != v7)
          {
            return a1;
          }

          v9 = 875704422;
          return v9 | 0x10u;
        }

        return 875836518;
      }

      if (a1 != 796423732)
      {
        if (a1 != 1530422832)
        {
          return a1;
        }

        return 875704422;
      }
    }

LABEL_120:
    v2 = 1882468912;
    return (v2 + 516);
  }

  if (a1 <= 645149810)
  {
    if (a1 > 644624753)
    {
      if (a1 <= 645097011)
      {
        if (a1 <= 645084274)
        {
          if (a1 == 644624754)
          {
            return 1815162994;
          }

          else if (a1 == 645083763)
          {
            return 1932681587;
          }
        }

        else
        {
          switch(a1)
          {
            case 0x26733473:
              v15 = 1932681587;
              return (v15 + 0x20000);
            case 0x26736630:
              return 1936077360;
            case 0x26736632:
              v3 = 1936077360;
              return v3 | 2u;
          }
        }

        return a1;
      }

      if (a1 > 645101105)
      {
        if (a1 == 645101106)
        {
          return 1937125938;
        }

        if (a1 != 645101108)
        {
          if (a1 == 645149299)
          {
            return 1949458803;
          }

          return a1;
        }

        v14 = 1937125938;
        return (v14 + 514);
      }

      if (a1 != 645097012)
      {
        if (a1 != 645101104)
        {
          return a1;
        }

        v11 = 1936077360;
        return v11 | 0x100000u;
      }

      v2 = 1936077360;
      return (v2 + 516);
    }

    if (a1 > 641234481)
    {
      if (a1 > 641877824)
      {
        switch(a1)
        {
          case 0x26424741:
            return 1111970369;
          case 0x26526841:
            return 1380411457;
          case 0x26623338:
            return 1647534392;
        }

        return a1;
      }

      if (a1 != 641234482)
      {
        v10 = 641234484;
LABEL_127:
        if (a1 != v10)
        {
          return a1;
        }

        v9 = 875836518;
        return v9 | 0x10u;
      }

      return 875704950;
    }

    if (a1 <= 641230387)
    {
      if (a1 != 641230384)
      {
        if (a1 != 641230386)
        {
          return a1;
        }

        return 875704934;
      }

      return 875704422;
    }

    if (a1 != 641230388)
    {
      v7 = 641234480;
      goto LABEL_97;
    }

    return 875836518;
  }

  if (a1 <= 645346161)
  {
    if (a1 <= 645166641)
    {
      if (a1 > 645162545)
      {
        if (a1 != 645162546)
        {
          if (a1 == 645162548)
          {
            return 1886676532;
          }

          if (a1 == 645166640)
          {
            return 1886680624;
          }

          return a1;
        }

        v3 = 1886676528;
        return v3 | 2u;
      }

      if (a1 != 645149811)
      {
        if (a1 != 645162544)
        {
          return a1;
        }

        v12 = 26160;
        return v12 | 0x70740000u;
      }

      v15 = 1949458803;
      return (v15 + 0x20000);
    }

    if (a1 > 645279799)
    {
      if (a1 == 645279800)
      {
        return 1982882104;
      }

      if (a1 != 645280312)
      {
        if (a1 == 645280824)
        {
          return 1983144248;
        }

        return a1;
      }

      v16 = 1982882104;
      return v16 | 0x20000u;
    }

    if (a1 == 645166642)
    {
      v12 = 30258;
      return v12 | 0x70740000u;
    }

    if (a1 == 645166644)
    {
      return 1886680628;
    }

    return a1;
  }

  if (a1 > 645411895)
  {
    if (a1 > 645424687)
    {
      if (a1 != 645424688)
      {
        if (a1 != 645424690)
        {
          v8 = 645424692;
          goto LABEL_147;
        }

        return 1885745714;
      }

      return 1885745712;
    }

    if (a1 != 645411896)
    {
      if (a1 == 645411955)
      {
        return 2016698739;
      }

      return a1;
    }

    v13 = 24888;
    return v13 | 0x78340000u;
  }

  if (a1 <= 645410871)
  {
    if (a1 == 645346162)
    {
      return 1999843442;
    }

    else if (a1 == 645346401)
    {
      return 1999908961;
    }
  }

  else
  {
    switch(a1)
    {
      case 0x26783038:
        return 2016436536;
      case 0x26783238:
        v16 = 2016436536;
        return v16 | 0x20000u;
      case 0x26783273:
        return 2016567667;
    }
  }

  return a1;
}

uint64_t isFormatYUV(int a1)
{
  result = 0;
  if (a1 > 1815162993)
  {
    if (a1 > 1999843441)
    {
      if (a1 == 1999843442)
      {
        return result;
      }

      v3 = 1999908961;
    }

    else
    {
      if (a1 == 1815162994)
      {
        return result;
      }

      v3 = 1919365992;
    }
  }

  else if (a1 > 1380411456)
  {
    if (a1 == 1380411457)
    {
      return result;
    }

    v3 = 1647534392;
  }

  else
  {
    if (a1 == 1111970369)
    {
      return result;
    }

    v3 = 1378955371;
  }

  if (a1 != v3)
  {
    return 1;
  }

  return result;
}

uint64_t isSupportedMSRColorConversion(int a1, int a2)
{
  if (a1 > 1937125935)
  {
    if (a1 <= 1999908960)
    {
      if (a1 <= 1953903151)
      {
        if (a1 > 1949327730)
        {
          if (a1 == 1949327731 || a1 == 1949458803)
          {
            goto LABEL_77;
          }

          v3 = 1949589875;
        }

        else
        {
          if (a1 == 1937125936 || a1 == 1937125938)
          {
            goto LABEL_77;
          }

          v3 = 1937126452;
        }
      }

      else if (a1 <= 1982882103)
      {
        if (a1 == 1953903152 || a1 == 1953903154)
        {
          goto LABEL_77;
        }

        v3 = 1953903668;
      }

      else if (a1 > 1983144247)
      {
        if (a1 == 1983144248)
        {
          goto LABEL_77;
        }

        v3 = 1999843442;
      }

      else
      {
        if (a1 == 1982882104)
        {
          goto LABEL_77;
        }

        v3 = 1983013176;
      }

      goto LABEL_76;
    }

    if (a1 <= 2016686641)
    {
      if (a1 <= 2016567607)
      {
        if (a1 == 1999908961 || a1 == 2016436536)
        {
          goto LABEL_77;
        }

        v3 = 2016436595;
        goto LABEL_76;
      }

      if (a1 == 2016567608 || a1 == 2016567667)
      {
        goto LABEL_77;
      }

      v6 = 12848;
    }

    else
    {
      if (a1 > 2016698738)
      {
        if (a1 > 2019963441)
        {
          if (a1 == 2019963956)
          {
            goto LABEL_77;
          }

          v5 = 12850;
        }

        else
        {
          if (a1 == 2016698739)
          {
            goto LABEL_77;
          }

          v5 = 12848;
        }

        v3 = v5 | 0x78660000;
        goto LABEL_76;
      }

      if (a1 == 2016686642 || a1 == 2016687156)
      {
        goto LABEL_77;
      }

      v6 = 24888;
    }

    v3 = v6 | 0x78340000;
  }

  else if (a1 > 1885745711)
  {
    if (a1 <= 1919365991)
    {
      if (a1 > 1886680623)
      {
        if ((a1 - 1886680624) > 4 || ((1 << (a1 - 48)) & 0x15) == 0)
        {
          return 0;
        }

        goto LABEL_77;
      }

      if (a1 == 1885745712 || a1 == 1885745714)
      {
        goto LABEL_77;
      }

      v3 = 1885746228;
    }

    else if (a1 <= 1932812658)
    {
      if (a1 == 1919365992 || a1 == 1932550515)
      {
        goto LABEL_77;
      }

      v3 = 1932681587;
    }

    else
    {
      if (a1 > 1936077361)
      {
        if (a1 == 1936077362)
        {
          goto LABEL_77;
        }

        v4 = 13364;
      }

      else
      {
        if (a1 == 1932812659)
        {
          goto LABEL_77;
        }

        v4 = 12848;
      }

      v3 = v4 | 0x73660000;
    }
  }

  else if (a1 <= 1378955370)
  {
    if (a1 > 875704949)
    {
      if (a1 == 875704950 || a1 == 875836518)
      {
        goto LABEL_77;
      }

      v3 = 875836534;
    }

    else
    {
      if (a1 == 875704422 || a1 == 875704438)
      {
        goto LABEL_77;
      }

      v3 = 875704934;
    }
  }

  else if (a1 <= 1815162993)
  {
    if (a1 == 1378955371 || a1 == 1380411457)
    {
      goto LABEL_77;
    }

    v3 = 1647534392;
  }

  else
  {
    if (a1 > 1882468913)
    {
      if (a1 == 1882468914)
      {
        goto LABEL_77;
      }

      v2 = 13364;
    }

    else
    {
      if (a1 == 1815162994)
      {
        goto LABEL_77;
      }

      v2 = 12848;
    }

    v3 = v2 | 0x70340000;
  }

LABEL_76:
  if (a1 != v3)
  {
    return 0;
  }

LABEL_77:
  result = 1;
  if (a2 > 1949458802)
  {
    if (a2 <= 2016436594)
    {
      if (a2 <= 1982882103)
      {
        if (a2 <= 1953903151)
        {
          if (a2 == 1949458803)
          {
            return result;
          }

          v8 = 1949589875;
        }

        else
        {
          if (a2 == 1953903152 || a2 == 1953903154)
          {
            return result;
          }

          v8 = 1953903668;
        }
      }

      else if (a2 > 1999843441)
      {
        if (a2 == 1999843442 || a2 == 1999908961)
        {
          return result;
        }

        v8 = 2016436536;
      }

      else
      {
        if (a2 == 1982882104 || a2 == 1983013176)
        {
          return result;
        }

        v8 = 1983144248;
      }

      goto LABEL_137;
    }

    if (a2 <= 2016687155)
    {
      if (a2 <= 2016567666)
      {
        if (a2 == 2016436595)
        {
          return result;
        }

        v8 = 2016567608;
        goto LABEL_137;
      }

      if (a2 == 2016567667 || a2 == 2016686640)
      {
        return result;
      }

      v9 = 12850;
    }

    else
    {
      if (a2 > 2019963439)
      {
        if (a2 == 2019963440 || a2 == 2019963442)
        {
          return result;
        }

        v8 = 2019963956;
LABEL_137:
        if (a2 == v8)
        {
          return result;
        }

        return 0;
      }

      if (a2 == 2016687156 || a2 == 2016698680)
      {
        return result;
      }

      v9 = 24947;
    }

    v8 = v9 | 0x78340000;
    goto LABEL_137;
  }

  if (a2 > 1919365991)
  {
    if (a2 <= 1936077361)
    {
      if (a2 <= 1932681586)
      {
        if (a2 == 1919365992)
        {
          return result;
        }

        v8 = 1932550515;
      }

      else
      {
        if (a2 == 1932681587 || a2 == 1932812659)
        {
          return result;
        }

        v8 = 1936077360;
      }
    }

    else if (a2 > 1937125937)
    {
      if (a2 == 1937125938 || a2 == 1937126452)
      {
        return result;
      }

      v8 = 1949327731;
    }

    else
    {
      if (a2 == 1936077362 || a2 == 1936077876)
      {
        return result;
      }

      v8 = 1937125936;
    }

    goto LABEL_137;
  }

  if (a2 <= 1815162993)
  {
    if (a2 <= 1378955370)
    {
      if (a2 == 875704422)
      {
        return result;
      }

      v8 = 875704438;
    }

    else
    {
      if (a2 == 1378955371 || a2 == 1380411457)
      {
        return result;
      }

      v8 = 1647534392;
    }

    goto LABEL_137;
  }

  if (a2 > 1886680623)
  {
    if ((a2 - 1886680624) > 4 || ((1 << (a2 - 48)) & 0x15) == 0)
    {
      return 0;
    }
  }

  else if (a2 != 1815162994 && a2 != 1882468912)
  {
    v8 = 1885745712;
    goto LABEL_137;
  }

  return result;
}

uint64_t isSupportedMSRInputFormat(unsigned int a1, int8x16_t a2)
{
  *a2.i8 = vdup_n_s32(a1);
  v2 = vand_s8(*a2.i8, 0xFFFFFFEFF7FFFFFFLL);
  *a2.i8 = vand_s8(*a2.i8, 0xFFFDFFFFFFFFFFFDLL);
  v3.i64[0] = v2.u32[0];
  v3.i64[1] = v2.u32[1];
  v4 = v3;
  v4.i32[3] = a1;
  v5 = vdupq_laneq_s32(v4, 3);
  v6 = vextq_s8(v4, v5, 8uLL);
  v4.i32[1] = v2.i32[0];
  v7 = vextq_s8(v5, a2, 4uLL);
  v8 = vzip1q_s32(v5, a2);
  v9 = vceqq_s32(v5, xmmword_2508CF420);
  v10 = vceqq_s32(v5, xmmword_2508CF430);
  v11 = vceqq_s32(v5, xmmword_2508CF450);
  v5.i32[3] = v2.i32[1];
  a2.i32[0] = a1;
  v12 = vdupq_lane_s64(a2.i64[0], 0);
  v13 = vorrq_s8(vuzp1q_s8(vuzp1q_s16(vceqq_s32(v4, xmmword_2508CF440), v11), vuzp1q_s16(v10, v9)), vuzp1q_s8(vuzp1q_s16(vceqq_s32(v6, xmmword_2508CF410), vceqq_s32(v5, xmmword_2508CF400)), vuzp1q_s16(vceqq_s32(v7, xmmword_2508CF3F0), vceqq_s32(v8, xmmword_2508CF3E0))));
  v13.i8[0] = vmaxvq_u8(v13);
  *v12.i8 = vmovn_s16(vuzp1q_s16(vceqq_s32(v12, xmmword_2508CF460), vceqq_s32(v12, xmmword_2508CF470)));
  v12.i8[0] = vmaxv_u8(*v12.i8);
  return (v13.i32[0] | v12.i32[0]) & 1 | (a1 == 1932812659) | (a1 == 1886680628);
}

uint64_t isSupportedMSROutputFormat(unsigned int a1)
{
  v1 = vdupq_n_s32(a1);
  v2 = vand_s8(*v1.i8, 0xFFFDFFFFFFFFFDEFLL);
  *v3.i8 = vdup_n_s32(a1 & 0xFFFFFFFD);
  v4.i32[0] = a1 & 0xFFFFFFFD;
  v4.i32[1] = a1;
  v4.i64[1] = __PAIR64__(a1, a1 & 0xFFFFFFFD);
  v5.i32[0] = a1 & 0xFFFFFFFD;
  v5.i32[1] = a1;
  v5.u64[1] = v2;
  v6 = vextq_s8(v5, vuzp2q_s32(v5, v5), 0xCuLL);
  v3.i64[1] = v1.i64[0];
  v5.i32[0] = a1;
  v5.i32[3] = a1;
  v7 = vuzp1q_s16(vceqq_s32(v4, xmmword_2508CF490), vceqq_s32(v6, xmmword_2508CF480));
  v8 = vuzp1q_s16(vceqq_s32(v1, xmmword_2508CF4B0), vceqq_s32(v5, xmmword_2508CF4A0));
  v9 = vuzp1q_s16(vceqq_s32(v1, xmmword_2508CE640), vceqq_s32(v1, xmmword_2508CF4C0));
  v10 = vuzp1q_s16(vceqq_s32(v3, xmmword_2508CF4D0), vceqq_s32(v4, xmmword_2508CF4E0));
  v11 = v2.i32[1] == 2016436595;
  v13 = a1 == 2016698739 || v2.i32[1] == 1949327731;
  v15 = a1 == 1949589875 || v2.i32[1] == 1932550515;
  v16 = vorrq_s8(vuzp1q_s8(v10, v9), vuzp1q_s8(v8, v7));
  v16.i8[0] = vmaxvq_u8(v16);
  v17 = v16.i32[0] | v11;
  if (a1 == 1932812659 || a1 == 875836518)
  {
    v15 = 1;
  }

  return (v17 | (v13 || v15)) & 1;
}

uint64_t isSupportedGPUInputFormat(int a1, char a2)
{
  result = 1;
  if (a1 <= 1952854577)
  {
    if (a1 > 1936077359)
    {
      if (a1 <= 1937125935)
      {
        if (a1 == 1936077360 || a1 == 1936077362)
        {
LABEL_35:
          if (a2)
          {
            return result;
          }

          return 0;
        }

        v4 = 1936077876;
      }

      else if (a1 > 1937126451)
      {
        if (a1 == 1937126452)
        {
          goto LABEL_35;
        }

        v4 = 1952854576;
      }

      else
      {
        if (a1 == 1937125936)
        {
          goto LABEL_35;
        }

        v4 = 1937125938;
      }

      goto LABEL_34;
    }

    if (a1 <= 1380411456)
    {
      if (a1 == 846624121 || a1 == 875704422)
      {
        return result;
      }

      v5 = 875704438;
      goto LABEL_39;
    }

    if (a1 == 1380411457 || a1 == 1815162994)
    {
      return result;
    }

    v4 = 1882468912;
LABEL_34:
    if (a1 == v4)
    {
      goto LABEL_35;
    }

    return 0;
  }

  if (a1 > 2016686639)
  {
    if (a1 <= 2019963439)
    {
      if (a1 == 2016686640 || a1 == 2016686642)
      {
        return result;
      }

      v5 = 2016687156;
    }

    else if (a1 > 2019963955)
    {
      if (a1 == 2019963956)
      {
        return result;
      }

      v5 = 2033463606;
    }

    else
    {
      if (a1 == 2019963440)
      {
        return result;
      }

      v5 = 2019963442;
    }

    goto LABEL_39;
  }

  if (a1 <= 1953903153)
  {
    if (a1 == 1952854578 || a1 == 1952855092)
    {
      return result;
    }

    v4 = 1953903152;
    goto LABEL_34;
  }

  if (a1 == 1953903154 || a1 == 1953903668)
  {
    return result;
  }

  v5 = 1983000886;
LABEL_39:
  if (a1 != v5)
  {
    return 0;
  }

  return result;
}

uint64_t isSupportedGPUOutputFormat(int a1, char a2)
{
  result = 1;
  if (a1 != 1380411457 && a1 != 1815162994 && (a1 != 1919365992 || (a2 & 1) == 0))
  {
    return 0;
  }

  return result;
}

uint64_t getBitDepthFromSurfaceFormat(int a1)
{
  v1 = 8;
  if (a1 > 1936077875)
  {
    if (a1 > 2016436594)
    {
      if (a1 <= 2016698679)
      {
        if (a1 > 2016686639)
        {
          if (a1 == 2016686640 || a1 == 2016686642)
          {
            return 10;
          }

          v2 = 2016687156;
        }

        else
        {
          if (a1 == 2016436595 || a1 == 2016567608)
          {
            return 10;
          }

          v2 = 2016567667;
        }

LABEL_66:
        if (a1 == v2)
        {
          return 10;
        }

        return 12;
      }

      if (a1 <= 2019963441)
      {
        if (a1 == 2016698680 || a1 == 2016698739)
        {
          return 10;
        }

        v5 = 12848;
        goto LABEL_46;
      }

      if (a1 != 2019963442)
      {
        if (a1 != 2033463606)
        {
          v5 = 13364;
LABEL_46:
          v2 = v5 | 0x78660000;
          goto LABEL_66;
        }

        return 16;
      }

      return 10;
    }

    if (a1 > 1983000885)
    {
      if (a1 > 1999843441)
      {
        if (a1 == 1999843442 || a1 == 1999908961)
        {
          return 10;
        }

        v2 = 2016436536;
        goto LABEL_66;
      }

      if (a1 != 1983000886)
      {
        if (a1 == 1983013176)
        {
          return v1;
        }

        v3 = 1983144248;
        goto LABEL_62;
      }

      return 16;
    }

    if (a1 > 1937125937)
    {
      if (a1 != 1937125938 && a1 != 1937126452)
      {
        v3 = 1982882104;
LABEL_62:
        if (a1 != v3)
        {
          return 12;
        }

        return v1;
      }

      return 16;
    }

    if (a1 == 1936077876)
    {
      return 16;
    }

    v4 = 1937125936;
LABEL_58:
    if (a1 != v4)
    {
      return 12;
    }

    return 16;
  }

  if (a1 > 1882468911)
  {
    if (a1 <= 1885746227)
    {
      if (a1 > 1882469427)
      {
        if (a1 == 1882469428 || a1 == 1885745712)
        {
          return 10;
        }

        v2 = 1885745714;
        goto LABEL_66;
      }

      if (a1 != 1882468912)
      {
        v2 = 1882468914;
        goto LABEL_66;
      }

      return 10;
    }

    if (a1 > 1932812658)
    {
      if (a1 == 1932812659 || a1 == 1936077360)
      {
        return 16;
      }

      v4 = 1936077362;
    }

    else
    {
      if (a1 == 1885746228)
      {
        return 10;
      }

      if (a1 == 1932550515)
      {
        return 16;
      }

      v4 = 1932681587;
    }

    goto LABEL_58;
  }

  if (a1 <= 875836533)
  {
    if (a1 <= 875704933)
    {
      if (a1 == 875704422)
      {
        return v1;
      }

      v3 = 875704438;
    }

    else
    {
      if (a1 == 875704934 || a1 == 875704950)
      {
        return v1;
      }

      v3 = 875836518;
    }

    goto LABEL_62;
  }

  if (a1 > 1380411456)
  {
    if (a1 != 1380411457)
    {
      if (a1 != 1647534392)
      {
        v2 = 1815162994;
        goto LABEL_66;
      }

      return 10;
    }

    return 16;
  }

  if (a1 != 875836534 && a1 != 1111970369)
  {
    v2 = 1378955371;
    goto LABEL_66;
  }

  return v1;
}

uint64_t getChromaFormatFromSurfaceFormat(int a1)
{
  result = 0;
  if (a1 <= 1937126451)
  {
    if (a1 > 1882469427)
    {
      if (a1 <= 1919365991)
      {
        if (a1 <= 1885746227)
        {
          if (a1 == 1882469428)
          {
            return 2;
          }

          v3 = 1885745714;
          goto LABEL_61;
        }

        if (a1 == 1885746228)
        {
          return 2;
        }

        if (a1 == 1886680626)
        {
          return 1;
        }

        v4 = 1886680628;
      }

      else
      {
        if (a1 > 1936077361)
        {
          if (a1 == 1936077362)
          {
            return 1;
          }

          if (a1 == 1936077876)
          {
            return 2;
          }

          v3 = 1937125938;
          goto LABEL_61;
        }

        if (a1 == 1919365992)
        {
          return 2;
        }

        if (a1 == 1932681587)
        {
          return 1;
        }

        v4 = 1932812659;
      }

LABEL_53:
      if (a1 != v4)
      {
        return result;
      }

      return 2;
    }

    if (a1 > 1378955370)
    {
      if (a1 <= 1647534391)
      {
        if (a1 == 1378955371)
        {
          return 2;
        }

        v4 = 1380411457;
        goto LABEL_53;
      }

      if (a1 == 1647534392 || a1 == 1815162994)
      {
        return 2;
      }

      v3 = 1882468914;
    }

    else
    {
      if (a1 > 875836517)
      {
        if (a1 == 875836518 || a1 == 875836534)
        {
          return 2;
        }

        v4 = 1111970369;
        goto LABEL_53;
      }

      if (a1 == 875704934)
      {
        return 1;
      }

      v3 = 875704950;
    }

LABEL_61:
    if (a1 != v3)
    {
      return result;
    }

    return 1;
  }

  if (a1 > 1999908960)
  {
    if (a1 <= 2016698679)
    {
      if (a1 > 2016567666)
      {
        if (a1 == 2016567667 || a1 == 2016686642)
        {
          return 1;
        }

        v4 = 2016687156;
        goto LABEL_53;
      }

      if (a1 == 1999908961)
      {
        return 2;
      }

      v3 = 2016567608;
    }

    else
    {
      if (a1 > 2019963955)
      {
        if (a1 == 2019963956 || a1 == 2021078128)
        {
          return 2;
        }

        v4 = 2033463606;
        goto LABEL_53;
      }

      if (a1 == 2016698680 || a1 == 2016698739)
      {
        return 2;
      }

      v3 = 2019963442;
    }

    goto LABEL_61;
  }

  if (a1 <= 1953969203)
  {
    if (a1 > 1949589874)
    {
      if (a1 == 1949589875)
      {
        return 2;
      }

      if (a1 == 1953903154)
      {
        return 1;
      }

      v4 = 1953903668;
      goto LABEL_53;
    }

    if (a1 == 1937126452)
    {
      return 2;
    }

    v3 = 1949458803;
    goto LABEL_61;
  }

  if (a1 > 1983013175)
  {
    if (a1 == 1983013176)
    {
      return 1;
    }

    if (a1 != 1983144248)
    {
      v4 = 1999843442;
      goto LABEL_53;
    }

    return 2;
  }

  if (a1 == 1953969204)
  {
    return 2;
  }

  if (a1 != 1983000880)
  {
    v3 = 1983000886;
    goto LABEL_61;
  }

  return 1;
}