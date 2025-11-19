uint64_t _scan_liberal_html_tag(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 > 0xE0)
  {
    if (v1 <= 0xEF)
    {
      v3 = a1 + 1;
      v4 = a1[1];
      if (v1 == 237)
      {
        v5 = 0;
        v6 = a1 + 1;
        if (v4 < -96)
        {
          goto LABEL_77;
        }
      }

      else
      {
        v5 = 0;
        v6 = a1 + 1;
        if (v4 < -64)
        {
          goto LABEL_77;
        }
      }

      return v5;
    }

    if (v1 == 240)
    {
      v5 = 0;
      v3 = a1 + 1;
      if (a1[1] - 144 >= 0x30)
      {
        return v5;
      }
    }

    else if (v1 >= 0xF4)
    {
      if (v1 != 244)
      {
        return 0;
      }

      v5 = 0;
      v3 = a1 + 1;
      if (a1[1] >= -112)
      {
        return v5;
      }
    }

    else
    {
      v5 = 0;
      v3 = a1 + 1;
      if (a1[1] >= -64)
      {
        return v5;
      }
    }

LABEL_75:
    v6 = v3;
    goto LABEL_76;
  }

  if (v1 <= 0xA)
  {
    if (*a1)
    {
      v2 = v1 == 10;
    }

    else
    {
      v2 = 1;
    }

    if (!v2)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if ((v1 & 0x80) != 0)
  {
    if (v1 >= 0xC2)
    {
      v3 = a1 + 1;
      v8 = a1[1];
      if (v1 == 224)
      {
        v5 = 0;
        v6 = a1 + 1;
        if ((v8 & 0xE0) == 0xA0)
        {
          goto LABEL_77;
        }
      }

      else
      {
        v5 = 0;
        v6 = a1 + 1;
        if (v8 < -64)
        {
          goto LABEL_38;
        }
      }

      return v5;
    }

    return 0;
  }

LABEL_13:
  v3 = a1 + 1;
  v7 = a1[1];
  if (v7 <= 0xA)
  {
    v5 = 0;
    if (a1[1])
    {
      v6 = a1 + 1;
      if (v7 != 10)
      {
        goto LABEL_39;
      }
    }

    return v5;
  }

  v5 = 0;
  if ((v7 & 0x80) == 0)
  {
    v6 = a1 + 1;
    goto LABEL_39;
  }

  v6 = a1 + 1;
  if (v7 - 194 >= 0x33)
  {
    return v5;
  }

  while (1)
  {
LABEL_39:
    if ((_scan_liberal_html_tag_yybm[v7] & 0x40) != 0)
    {
      goto LABEL_38;
    }

    if (v7 > 0xEC)
    {
      if (v7 <= 0xF0)
      {
        if (v7 == 237)
        {
          goto LABEL_65;
        }

        if (v7 != 240)
        {
          goto LABEL_76;
        }

        goto LABEL_52;
      }

      if (v7 < 0xF4)
      {
LABEL_55:
        v12 = *++v3;
        if (v12 >= -64)
        {
          break;
        }

        goto LABEL_76;
      }

      if (v7 != 244)
      {
        break;
      }

      goto LABEL_58;
    }

    if (v7 <= 0xC1)
    {
      if (v7 - 11 > 0x33)
      {
        break;
      }

      for (i = v3 + 1; ; ++i)
      {
        v3 = i;
        v7 = *i;
        if ((_scan_liberal_html_tag_yybm[*i] & 0x40) != 0)
        {
          v5 = 1;
          v6 = v3;
          goto LABEL_38;
        }

        if (v7 > 0xEC)
        {
          break;
        }

        if (v7 > 0xC1)
        {
          v5 = 1;
          v6 = v3;
          goto LABEL_68;
        }

        if (v7 - 11 >= 0x34)
        {
          return (v3 - a1);
        }
      }

      v5 = 1;
      if (v7 <= 0xF0)
      {
        if (v7 != 240)
        {
          if (v7 != 237)
          {
            goto LABEL_75;
          }

          v6 = v3;
LABEL_65:
          v14 = *++v3;
          if (v14 >= -96)
          {
            break;
          }

          goto LABEL_77;
        }

        v6 = v3;
LABEL_52:
        v11 = *++v3;
        if ((v11 - 144) >= 0x30)
        {
          break;
        }

        goto LABEL_76;
      }

      v6 = v3;
      if (v7 < 0xF4)
      {
        goto LABEL_55;
      }

      if (v7 != 244)
      {
        return (v3 - a1);
      }

LABEL_58:
      v13 = *++v3;
      if (v13 >= -112)
      {
        break;
      }

      goto LABEL_76;
    }

LABEL_68:
    if (v7 < 0xE0)
    {
      goto LABEL_77;
    }

    if (v7 == 224)
    {
      v15 = *++v3;
      if ((v15 & 0xE0) != 0xA0)
      {
        break;
      }

      goto LABEL_77;
    }

LABEL_76:
    v16 = *++v3;
    if (v16 >= -64)
    {
      break;
    }

LABEL_77:
    v17 = *++v3;
    if (v17 >= -64)
    {
      break;
    }

LABEL_38:
    v9 = *++v3;
    v7 = v9;
  }

  LODWORD(v3) = v6;
  if (!v5)
  {
    return v5;
  }

  return (v3 - a1);
}

uint64_t _scan_html_block_start(unsigned __int8 *a1)
{
  if (*a1 != 60)
  {
    return 0;
  }

  result = 0;
  v3 = a1 + 1;
  switch(a1[1])
  {
    case '/':
      result = 0;
      v3 = a1 + 2;
      switch(a1[2])
      {
        case 'A':
        case 'a':
          goto LABEL_3;
        case 'B':
        case 'b':
          goto LABEL_41;
        case 'C':
        case 'c':
          goto LABEL_80;
        case 'D':
        case 'd':
          goto LABEL_72;
        case 'F':
        case 'f':
          goto LABEL_58;
        case 'H':
        case 'h':
          goto LABEL_50;
        case 'I':
        case 'i':
          goto LABEL_45;
        case 'L':
        case 'l':
          goto LABEL_88;
        case 'M':
        case 'm':
          goto LABEL_84;
        case 'N':
        case 'n':
          goto LABEL_68;
        case 'O':
        case 'o':
          goto LABEL_54;
        case 'P':
        case 'p':
          v8 = a1 + 3;
          v9 = a1[3];
          if (v9 > 0x2F)
          {
            if (v9 <= 0x40)
            {
              goto LABEL_223;
            }

            if ((v9 & 0xFFFFFFDF) == 0x41)
            {
              v57 = 3;
              goto LABEL_228;
            }
          }

          else
          {
            if (v9 <= 0x1F)
            {
              v70 = v9 - 9;
              goto LABEL_277;
            }

            if (v9 == 32)
            {
              return 6;
            }

            if (v9 == 47)
            {
              goto LABEL_385;
            }
          }

          return 0;
        case 'S':
        case 's':
          v99 = a1[3];
          v7 = a1 + 3;
          if (v99 > 0x55)
          {
            v13 = v99 == 101;
            if (v99 <= 0x65)
            {
              goto LABEL_34;
            }

            if (v99 == 117)
            {
              goto LABEL_306;
            }
          }

          else
          {
            if (v99 == 69)
            {
              goto LABEL_210;
            }

            if (v99 == 85)
            {
              goto LABEL_306;
            }
          }

          break;
        case 'T':
        case 't':
          goto LABEL_62;
        case 'U':
        case 'u':
          goto LABEL_156;
        default:
          return result;
      }

      return 0;
    case '0':
    case '1':
    case '2':
    case '3':
    case '4':
    case '5':
    case '6':
    case '7':
    case '8':
    case '9':
    case ':':
    case ';':
    case '<':
    case '=':
    case '>':
    case '@':
    case 'E':
    case 'G':
    case 'J':
    case 'K':
    case 'Q':
    case 'R':
    case 'V':
    case 'W':
    case 'X':
    case 'Y':
    case 'Z':
    case '[':
    case '\\':
    case ']':
    case '^':
    case '_':
    case 'e':
    case 'g':
    case 'j':
    case 'k':
    case 'q':
    case 'r':
      return result;
    case '?':
      return 3;
    case 'A':
    case 'a':
LABEL_3:
      v4 = v3[1];
      if (v4 > 0x53)
      {
        if (v4 > 0x71)
        {
          if (v4 != 114)
          {
            if (v4 >= 0x74)
            {
              return 0;
            }

LABEL_301:
            if ((v3[2] & 0xDF) == 0x49)
            {
              v82 = v3[3];
              v16 = v3 + 3;
              if ((v82 & 0xFFFFFFDF) == 0x44)
              {
                goto LABEL_406;
              }
            }

            return 0;
          }

          goto LABEL_170;
        }

        v5 = v4 == 100;
      }

      else
      {
        v5 = v4 == 68;
        if (v4 > 0x44)
        {
          if (v4 < 0x52)
          {
            return 0;
          }

          if (v4 == 83)
          {
            goto LABEL_301;
          }

LABEL_170:
          if ((v3[2] & 0xDF) != 0x54 || (v3[3] & 0xDF) != 0x49)
          {
            return 0;
          }

          v50 = v3[4];
          v49 = v3 + 4;
          if ((v50 & 0xFFFFFFDF) == 0x43)
          {
            goto LABEL_286;
          }

          return 0;
        }
      }

      if (!v5 || (v3[2] & 0xDF) != 0x44 || (v3[3] & 0xDF) != 0x52)
      {
        return 0;
      }

      if ((v3[4] & 0xDF) == 0x45)
      {
        v12 = v3[5];
        v11 = v3 + 5;
        if ((v12 & 0xFFFFFFDF) == 0x53)
        {
          goto LABEL_248;
        }
      }

      return 0;
    case 'B':
    case 'b':
LABEL_41:
      v15 = v3 + 1;
      v14 = v3[1];
      if (v14 > 0x4F)
      {
        if (v14 <= 0x6B)
        {
          if (v14 != 97)
          {
            return 0;
          }

LABEL_119:
          if ((v3[2] & 0xDF) != 0x53 || (v3[3] & 0xDF) != 0x45)
          {
            return 0;
          }

          v38 = v3 + 4;
          v37 = v3[4];
          if (v37 <= 0x2F)
          {
            goto LABEL_201;
          }

          if (v37 > 0x45)
          {
            if ((v37 & 0xFFFFFFDF) == 0x46 && (v3[5] & 0xDF) == 0x4F)
            {
              v40 = v3[6];
              v39 = v3 + 6;
              if ((v40 & 0xFFFFFFDF) == 0x4E)
              {
                goto LABEL_281;
              }
            }

            return 0;
          }

          goto LABEL_395;
        }

        if (v14 != 108)
        {
          if (v14 == 111)
          {
            goto LABEL_290;
          }

          return 0;
        }
      }

      else
      {
        if (v14 <= 0x4B)
        {
          if (v14 != 65)
          {
            return 0;
          }

          goto LABEL_119;
        }

        if (v14 != 76)
        {
          if (v14 == 79)
          {
            goto LABEL_290;
          }

          return 0;
        }
      }

      if ((v3[2] & 0xDF) != 0x4F || (v3[3] & 0xDF) != 0x43)
      {
        return 0;
      }

      if ((v3[4] & 0xDF) == 0x4B && (v3[5] & 0xDF) == 0x51 && (v3[6] & 0xDF) == 0x55 && (v3[7] & 0xDF) == 0x4F)
      {
        v67 = v3[8];
        v16 = v3 + 8;
        if ((v67 & 0xFFFFFFDF) == 0x54)
        {
          goto LABEL_406;
        }
      }

      return 0;
    case 'C':
    case 'c':
LABEL_80:
      v7 = v3 + 1;
      v26 = v3[1];
      if (v26 <= 0x4F)
      {
        if (v26 <= 0x44)
        {
          if (v26 == 65)
          {
            goto LABEL_133;
          }

          return 0;
        }

        if (v26 != 69)
        {
          if (v26 != 79)
          {
            return 0;
          }

LABEL_192:
          if ((v3[2] & 0xDF) != 0x4C)
          {
            return 0;
          }

          v34 = v3 + 3;
          v33 = v3[3];
          if (v33 <= 0x2F)
          {
LABEL_275:
            if (v33 <= 0x1F)
            {
LABEL_276:
              v70 = v33 - 9;
LABEL_277:
              if (v70 < 5)
              {
                return 6;
              }

              return 0;
            }

            if (v33 == 32)
            {
              return 6;
            }

            v8 = v34;
LABEL_336:
            if (v33 != 47)
            {
              return 0;
            }

            goto LABEL_385;
          }

          if (v33 <= 0x46)
          {
            goto LABEL_386;
          }

          if ((v33 & 0xFFFFFFDF) != 0x47)
          {
            return 0;
          }

LABEL_348:
          if ((v3[4] & 0xDF) != 0x52)
          {
            return 0;
          }

          if ((v3[5] & 0xDF) != 0x4F)
          {
            return 0;
          }

          if ((v3[6] & 0xDF) != 0x55)
          {
            return 0;
          }

          v90 = v3[7];
          v41 = v3 + 7;
          if ((v90 & 0xFFFFFFDF) != 0x50)
          {
            return 0;
          }

          goto LABEL_157;
        }

        goto LABEL_264;
      }

      if (v26 > 0x64)
      {
        if (v26 != 101)
        {
          if (v26 != 111)
          {
            return 0;
          }

          goto LABEL_192;
        }

LABEL_264:
        v68 = (v3[2] & 0xDF) == 78;
        goto LABEL_339;
      }

      if (v26 != 97)
      {
        return 0;
      }

      goto LABEL_133;
    case 'D':
    case 'd':
LABEL_72:
      result = 0;
      v19 = v3 + 1;
      v24 = v3[1] - 68;
      if (v24 > 0x30)
      {
        return result;
      }

      if (((1 << v24) & 0x1010100010101) != 0)
      {
        goto LABEL_378;
      }

      if (((1 << v24) & 0x200000002) != 0)
      {
        if ((v3[2] & 0xDF) != 0x54 || (v3[3] & 0xDF) != 0x41)
        {
          return 0;
        }

        if ((v3[4] & 0xDF) != 0x49)
        {
          return 0;
        }

        v64 = v3[5];
        v11 = v3 + 5;
        if ((v64 & 0xFFFFFFDF) != 0x4C)
        {
          return 0;
        }

        goto LABEL_248;
      }

      if (((1 << v24) & 0x2000000020) == 0)
      {
        return result;
      }

      v19 = v3 + 2;
      v25 = v3[2];
      if (v25 > 0x56)
      {
        if (v25 > 0x71)
        {
          v29 = (v25 & 0xFFFFFFFB) == 114;
          goto LABEL_376;
        }

        if (v25 != 97)
        {
          return 0;
        }
      }

      else
      {
        if (v25 > 0x51)
        {
          v18 = v25 & 0x7B;
          goto LABEL_372;
        }

        if (v25 != 65)
        {
          return 0;
        }
      }

      if ((v3[3] & 0xDF) != 0x4C)
      {
        return 0;
      }

      if ((v3[4] & 0xDF) == 0x4F)
      {
        v84 = v3[5];
        v41 = v3 + 5;
        if ((v84 & 0xFFFFFFDF) == 0x47)
        {
          goto LABEL_157;
        }
      }

      return 0;
    case 'F':
    case 'f':
LABEL_58:
      v21 = v3[1];
      if (v21 > 0x52)
      {
        if (v21 <= 0x6E)
        {
          if (v21 != 105)
          {
            return 0;
          }

          goto LABEL_104;
        }

        if (v21 != 111)
        {
          if (v21 != 114)
          {
            return 0;
          }

          goto LABEL_163;
        }
      }

      else
      {
        if (v21 <= 0x4E)
        {
          if (v21 != 73)
          {
            return 0;
          }

LABEL_104:
          v32 = v3[2];
          if (v32 > 0x47)
          {
            if (v32 > 0x65)
            {
              if (v32 != 103)
              {
                return 0;
              }

              goto LABEL_358;
            }

            if (v32 != 101)
            {
              return 0;
            }
          }

          else if (v32 != 69)
          {
            if (v32 != 71)
            {
              return 0;
            }

LABEL_358:
            v92 = v3[3];
            if (v92 > 0x55)
            {
              if (v92 > 0x63)
              {
                if (v92 != 117)
                {
                  return 0;
                }

LABEL_405:
                v100 = v3[4];
                v16 = v3 + 4;
                if ((v100 & 0xFFFFFFDF) != 0x52)
                {
                  return 0;
                }

LABEL_406:
                v101 = v16[1];
                v41 = v16 + 1;
                if ((v101 & 0xFFFFFFDF) != 0x45)
                {
                  return 0;
                }

                goto LABEL_157;
              }

              if (v92 != 99)
              {
                return 0;
              }
            }

            else if (v92 != 67)
            {
              if (v92 != 85)
              {
                return 0;
              }

              goto LABEL_405;
            }

            v98 = v3[4];
            v97 = v3 + 4;
            if ((v98 & 0xFFFFFFDF) != 0x41)
            {
              return 0;
            }

            v7 = v97;
LABEL_133:
            if ((v7[1] & 0xDF) != 0x50)
            {
              return 0;
            }

            goto LABEL_211;
          }

          if ((v3[3] & 0xDF) != 0x4C)
          {
            return 0;
          }

          if ((v3[4] & 0xDF) != 0x44)
          {
            return 0;
          }

          v37 = v3[5];
LABEL_297:
          if ((v37 & 0xFFFFFFDF) == 0x53)
          {
            v81 = v3[6];
            v39 = v3 + 6;
            if ((v81 & 0xFFFFFFDF) == 0x45)
            {
              goto LABEL_281;
            }
          }

          return 0;
        }

        if (v21 != 79)
        {
          if (v21 != 82)
          {
            return 0;
          }

LABEL_163:
          if ((v3[2] & 0xDF) != 0x41 || (v3[3] & 0xDF) != 0x4D)
          {
            return 0;
          }

          if ((v3[4] & 0xDF) != 0x45)
          {
            return 0;
          }

          v38 = v3 + 5;
          v37 = v3[5];
          if (v37 <= 0x2F)
          {
LABEL_201:
            if (v37 > 0x1F)
            {
              if (v37 == 32)
              {
                return 6;
              }

              v8 = v38;
              if (v37 == 47)
              {
                goto LABEL_385;
              }
            }

            else if (v37 - 9 < 5)
            {
              return 6;
            }

            return 0;
          }

          if (v37 <= 0x52)
          {
            goto LABEL_395;
          }

          goto LABEL_297;
        }
      }

      v59 = v3 + 2;
      v66 = v3[2];
      if (v66 <= 0x52)
      {
        if (v66 != 79)
        {
          if (v66 == 82)
          {
            goto LABEL_375;
          }

          return 0;
        }

        goto LABEL_341;
      }

      v68 = v66 == 111;
      if (v66 <= 0x6F)
      {
LABEL_339:
        if (!v68)
        {
          return 0;
        }

LABEL_341:
        if ((v3[3] & 0xDF) != 0x54)
        {
          return 0;
        }

        v37 = v3[4];
        goto LABEL_343;
      }

      if (v66 != 114)
      {
        return 0;
      }

LABEL_375:
      v94 = v59[1];
      v19 = v59 + 1;
      v29 = (v94 & 0xFFFFFFDF) == 77;
      goto LABEL_376;
    case 'H':
    case 'h':
LABEL_50:
      v19 = v3 + 1;
      v18 = v3[1];
      if (v18 <= 0x53)
      {
        if (v18 <= 0x44)
        {
          if (v18 - 49 < 6)
          {
            goto LABEL_378;
          }

          return 0;
        }

        if (v18 != 69)
        {
LABEL_372:
          v29 = v18 == 82;
          goto LABEL_376;
        }

LABEL_148:
        if ((v3[2] & 0xDF) != 0x41 || (v3[3] & 0xDF) != 0x44)
        {
          return 0;
        }

        v38 = v3 + 4;
        v37 = v3[4];
        if (v37 <= 0x2F)
        {
          goto LABEL_201;
        }

        if (v37 > 0x44)
        {
LABEL_343:
          if ((v37 & 0xFFFFFFDF) == 0x45)
          {
            v89 = v3[5];
            v41 = v3 + 5;
            if ((v89 & 0xFFFFFFDF) == 0x52)
            {
              goto LABEL_157;
            }
          }

          return 0;
        }

        goto LABEL_395;
      }

      if (v18 > 0x71)
      {
        if (v18 == 114)
        {
          goto LABEL_378;
        }

        if (v18 != 116)
        {
          return 0;
        }
      }

      else if (v18 != 84)
      {
        if (v18 != 101)
        {
          return 0;
        }

        goto LABEL_148;
      }

      v47 = v3[2];
      v3 += 2;
      if ((v47 & 0xFFFFFFDF) != 0x4D)
      {
        return 0;
      }

LABEL_156:
      v48 = v3[1];
      v41 = v3 + 1;
      if ((v48 & 0xFFFFFFDF) != 0x4C)
      {
        return 0;
      }

      goto LABEL_157;
    case 'I':
    case 'i':
LABEL_45:
      if ((v3[1] & 0xDF) != 0x46 || (v3[2] & 0xDF) != 0x52)
      {
        return 0;
      }

      if ((v3[3] & 0xDF) != 0x41)
      {
        return 0;
      }

      v17 = v3[4];
      v16 = v3 + 4;
      if ((v17 & 0xFFFFFFDF) != 0x4D)
      {
        return 0;
      }

      goto LABEL_406;
    case 'L':
    case 'l':
LABEL_88:
      v28 = v3[1];
      if (v28 > 0x49)
      {
        if (v28 > 0x65)
        {
          if (v28 != 105)
          {
            return 0;
          }

          goto LABEL_205;
        }

        if (v28 != 101)
        {
          return 0;
        }

LABEL_141:
        if ((v3[2] & 0xDF) != 0x47)
        {
          return 0;
        }

        if ((v3[3] & 0xDF) != 0x45)
        {
          return 0;
        }

        v45 = v3[4];
        v35 = v3 + 4;
        if ((v45 & 0xFFFFFFDF) != 0x4E)
        {
          return 0;
        }

        goto LABEL_144;
      }

      if (v28 == 69)
      {
        goto LABEL_141;
      }

      if (v28 != 73)
      {
        return 0;
      }

LABEL_205:
      v52 = v3[2];
      v8 = v3 + 2;
      v33 = v52;
      if (v52 <= 0x2F)
      {
        if (v33 <= 0x1F)
        {
          goto LABEL_276;
        }

        if (v33 != 32)
        {
          goto LABEL_336;
        }

        return 6;
      }

      if (v33 <= 0x4D)
      {
        goto LABEL_386;
      }

      if ((v33 & 0xFFFFFFDF) != 0x4E)
      {
        return 0;
      }

LABEL_267:
      v69 = v8[1];
      v41 = v8 + 1;
      if ((v69 & 0xFFFFFFDF) == 0x4B)
      {
LABEL_157:
        v19 = v41;
LABEL_378:
        v96 = v19[1];
        v95 = v19 + 1;
        v33 = v96;
        if (v96 <= 0x20)
        {
          if (v33 >= 9 && (v33 < 0xE || v33 == 32))
          {
            return 6;
          }

          return 0;
        }

        if (v33 > 0x2F)
        {
          goto LABEL_386;
        }

        v8 = v95;
        if (v33 != 47)
        {
          return 0;
        }

LABEL_385:
        v33 = v8[1];
LABEL_386:
        if (v33 == 62)
        {
          return 6;
        }

        return 0;
      }

      return 0;
    case 'M':
    case 'm':
LABEL_84:
      v27 = v3[1];
      if (v27 > 0x45)
      {
        if (v27 > 0x61)
        {
          if (v27 != 101)
          {
            return 0;
          }

          goto LABEL_198;
        }

        if (v27 != 97)
        {
          return 0;
        }
      }

      else if (v27 != 65)
      {
        if (v27 != 69)
        {
          return 0;
        }

LABEL_198:
        if ((v3[2] & 0xDF) != 0x4E)
        {
          return 0;
        }

        if ((v3[3] & 0xDF) != 0x55)
        {
          return 0;
        }

        v38 = v3 + 4;
        v37 = v3[4];
        if (v37 <= 0x2F)
        {
          goto LABEL_201;
        }

        if (v37 > 0x48)
        {
          if ((v37 & 0xFFFFFFDF) == 0x49 && (v3[5] & 0xDF) == 0x54)
          {
            v103 = v3[6];
            v102 = v3 + 6;
            if ((v103 & 0xFFFFFFDF) == 0x45)
            {
              v59 = v102;
              goto LABEL_375;
            }
          }

          return 0;
        }

LABEL_395:
        if (v37 != 62)
        {
          return 0;
        }

        return 6;
      }

      v44 = v3[2];
      v43 = v3 + 2;
      if ((v44 & 0xFFFFFFDF) == 0x49)
      {
        goto LABEL_216;
      }

      return 0;
    case 'N':
    case 'n':
LABEL_68:
      v23 = v3[1];
      if (v23 > 0x4F)
      {
        if (v23 > 0x61)
        {
          if (v23 != 111)
          {
            return 0;
          }

LABEL_181:
          if ((v3[2] & 0xDF) != 0x46)
          {
            return 0;
          }

          if ((v3[3] & 0xDF) == 0x52 && (v3[4] & 0xDF) == 0x41 && (v3[5] & 0xDF) == 0x4D)
          {
            v51 = v3[6];
            v11 = v3 + 6;
            if ((v51 & 0xFFFFFFDF) == 0x45)
            {
LABEL_248:
              v65 = v11[1];
              v41 = v11 + 1;
              if ((v65 & 0xFFFFFFDF) == 0x53)
              {
                goto LABEL_157;
              }
            }
          }

          return 0;
        }

        if (v23 != 97)
        {
          return 0;
        }
      }

      else if (v23 != 65)
      {
        if (v23 != 79)
        {
          return 0;
        }

        goto LABEL_181;
      }

      v42 = v3[2];
      v41 = v3 + 2;
      if ((v42 & 0xFFFFFFDF) == 0x56)
      {
        goto LABEL_157;
      }

      return 0;
    case 'O':
    case 'o':
LABEL_54:
      v19 = v3 + 1;
      v20 = v3[1];
      if (v20 > 0x50)
      {
        v29 = v20 == 108;
        if (v20 <= 0x6C)
        {
          goto LABEL_376;
        }

        if (v20 != 112)
        {
          return 0;
        }
      }

      else
      {
        if (v20 == 76)
        {
          goto LABEL_378;
        }

        if (v20 != 80)
        {
          return 0;
        }
      }

      if ((v3[2] & 0xDF) != 0x54)
      {
        return 0;
      }

      v31 = v3 + 3;
      v30 = v3[3];
      if (v30 <= 0x49)
      {
        if (v30 != 71)
        {
          goto LABEL_213;
        }

        goto LABEL_348;
      }

      if (v30 <= 0x67)
      {
        if (v30 != 103)
        {
          return 0;
        }

        goto LABEL_348;
      }

      if (v30 == 105)
      {
        goto LABEL_214;
      }

      return 0;
    case 'P':
    case 'p':
      v8 = a1 + 2;
      v9 = a1[2];
      if (v9 > 0x3E)
      {
        if (v9 > 0x52)
        {
          if (v9 > 0x61)
          {
            if (v9 == 114)
            {
              goto LABEL_322;
            }

            return 0;
          }

          if (v9 != 97)
          {
            return 0;
          }
        }

        else if (v9 != 65)
        {
          if (v9 == 82)
          {
            goto LABEL_322;
          }

          return 0;
        }

        v57 = 2;
LABEL_228:
        v58 = &a1[v57];
        if ((a1[v57 + 1] & 0xDF) != 0x52)
        {
          return 0;
        }

        v60 = v58[2];
        v59 = v58 + 2;
        if ((v60 & 0xFFFFFFDF) == 0x41)
        {
          goto LABEL_375;
        }

        return 0;
      }

      if (v9 <= 0x20)
      {
        if (v9 < 9 || v9 >= 0xE && v9 != 32)
        {
          return 0;
        }

        return 6;
      }

      if (v9 == 47)
      {
        goto LABEL_385;
      }

LABEL_223:
      if (v9 == 62)
      {
        return 6;
      }

      return 0;
    case 'S':
    case 's':
      v7 = a1 + 2;
      v6 = a1[2];
      if (v6 > 0x55)
      {
        if (v6 <= 0x65)
        {
          if (v6 == 99)
          {
LABEL_239:
            if ((a1[3] & 0xDF) != 0x52)
            {
              return 0;
            }

            if ((a1[4] & 0xDF) != 0x49)
            {
              return 0;
            }

            if ((a1[5] & 0xDF) != 0x50)
            {
              return 0;
            }

            v62 = a1[6];
            v61 = a1 + 6;
            if ((v62 & 0xFFFFFFDF) != 0x54)
            {
              return 0;
            }

            v63 = v61;
            goto LABEL_323;
          }

          v13 = v6 == 101;
LABEL_34:
          if (!v13)
          {
            return 0;
          }

LABEL_210:
          if ((v7[1] & 0xDF) != 0x43)
          {
            return 0;
          }

LABEL_211:
          if ((v7[2] & 0xDF) != 0x54)
          {
            return 0;
          }

          v53 = v7[3];
          v31 = v7 + 3;
          v30 = v53 & 0xFFFFFFDF;
LABEL_213:
          if (v30 != 73)
          {
            return 0;
          }

LABEL_214:
          v55 = v31[1];
          v54 = v31 + 1;
          if ((v55 & 0xFFFFFFDF) == 0x4F)
          {
            v43 = v54;
LABEL_216:
            v56 = v43[1];
            v41 = v43 + 1;
            if ((v56 & 0xFFFFFFDF) == 0x4E)
            {
              goto LABEL_157;
            }
          }

          return 0;
        }

        if (v6 < 0x74)
        {
          return 0;
        }

        if (v6 != 116)
        {
          if (v6 >= 0x76)
          {
            return 0;
          }

LABEL_306:
          if ((v7[1] & 0xDF) != 0x4D)
          {
            return 0;
          }

          if ((v7[2] & 0xDF) != 0x4D)
          {
            return 0;
          }

          if ((v7[3] & 0xDF) != 0x41)
          {
            return 0;
          }

          v83 = v7[4];
          v78 = v7 + 4;
          if ((v83 & 0xFFFFFFDF) != 0x52)
          {
            return 0;
          }

          goto LABEL_291;
        }
      }

      else
      {
        if (v6 <= 0x44)
        {
          if (v6 != 67)
          {
            return 0;
          }

          goto LABEL_239;
        }

        if (v6 == 69)
        {
          goto LABEL_210;
        }

        if (v6 < 0x54)
        {
          return 0;
        }

        if (v6 == 85)
        {
          goto LABEL_306;
        }
      }

      if ((a1[3] & 0xDF) != 0x59)
      {
        return 0;
      }

      v86 = a1[4];
      v85 = a1 + 4;
      if ((v86 & 0xFFFFFFDF) != 0x4C)
      {
        return 0;
      }

      v8 = v85;
LABEL_322:
      v87 = v8[1];
      v63 = v8 + 1;
      if ((v87 & 0xFFFFFFDF) != 0x45)
      {
        return 0;
      }

LABEL_323:
      v88 = v63[1];
      if (v88 <= 0x1F)
      {
        return v88 - 9 < 5;
      }

      return v88 == 62 || v88 == 32;
    case 'T':
    case 't':
LABEL_62:
      result = 0;
      v19 = v3 + 1;
      v22 = v3[1];
      if (v22 > 0x60)
      {
        if (v3[1] > 0x65u)
        {
          if (v3[1] <= 0x68u)
          {
            if (v22 != 102)
            {
              if (v22 != 104)
              {
                return result;
              }

              goto LABEL_112;
            }

LABEL_279:
            if ((v3[2] & 0xDF) != 0x4F)
            {
              return 0;
            }

            v71 = v3[3];
            v39 = v3 + 3;
            if ((v71 & 0xFFFFFFDF) == 0x4F)
            {
LABEL_281:
              v72 = v39[1];
              v41 = v39 + 1;
              if ((v72 & 0xFFFFFFDF) == 0x54)
              {
                goto LABEL_157;
              }
            }

            return 0;
          }

          if (v22 != 105)
          {
            if (v22 != 114)
            {
              return result;
            }

LABEL_274:
            v34 = v3 + 2;
            v33 = v3[2];
            if (v33 <= 0x2F)
            {
              goto LABEL_275;
            }

            if (v33 <= 0x40)
            {
              goto LABEL_386;
            }

            if ((v33 & 0xFFFFFFDF) != 0x41)
            {
              return 0;
            }

            v91 = v3[3];
            v8 = v3 + 3;
            if ((v91 & 0xFFFFFFDF) != 0x43)
            {
              return 0;
            }

            goto LABEL_267;
          }

          goto LABEL_283;
        }

        if (v22 != 97)
        {
          if (v22 != 98)
          {
            if (v22 == 100)
            {
              goto LABEL_378;
            }

            return result;
          }

          goto LABEL_288;
        }
      }

      else
      {
        if (v3[1] > 0x45u)
        {
          if (v3[1] <= 0x48u)
          {
            if (v22 != 70)
            {
              if (v22 != 72)
              {
                return result;
              }

LABEL_112:
              v34 = v3 + 2;
              v33 = v3[2];
              if (v33 <= 0x2F)
              {
                goto LABEL_275;
              }

              if (v33 <= 0x44)
              {
                goto LABEL_386;
              }

              if ((v33 & 0xFFFFFFDF) != 0x45)
              {
                return 0;
              }

              v36 = v3[3];
              v35 = v3 + 3;
              if ((v36 & 0xFFFFFFDF) == 0x41)
              {
LABEL_144:
                v46 = v35[1];
                v41 = v35 + 1;
                if ((v46 & 0xFFFFFFDF) == 0x44)
                {
                  goto LABEL_157;
                }
              }

              return 0;
            }

            goto LABEL_279;
          }

          if (v22 != 73)
          {
            if (v22 != 82)
            {
              return result;
            }

            goto LABEL_274;
          }

LABEL_283:
          v73 = v3[2];
          v49 = v3 + 2;
          if ((v73 & 0xFFFFFFDF) != 0x54)
          {
            return 0;
          }

          goto LABEL_286;
        }

        if (v22 != 65)
        {
          if (v22 != 66)
          {
            if (v22 == 68)
            {
              goto LABEL_378;
            }

            return result;
          }

LABEL_288:
          v77 = v3[2];
          v76 = v3 + 2;
          if ((v77 & 0xFFFFFFDF) != 0x4F)
          {
            return 0;
          }

          v15 = v76;
LABEL_290:
          v79 = v15[1];
          v78 = v15 + 1;
          if ((v79 & 0xFFFFFFDF) != 0x44)
          {
            return 0;
          }

LABEL_291:
          v80 = v78[1];
          v19 = v78 + 1;
          v29 = (v80 & 0xFFFFFFDF) == 89;
LABEL_376:
          if (!v29)
          {
            return 0;
          }

          goto LABEL_378;
        }
      }

      v74 = v3[2];
      v49 = v3 + 2;
      if ((v74 & 0xFFFFFFDF) != 0x42)
      {
        return 0;
      }

LABEL_286:
      v75 = v49[1];
      v16 = v49 + 1;
      if ((v75 & 0xFFFFFFDF) == 0x4C)
      {
        goto LABEL_406;
      }

      return 0;
    case 'U':
    case 'u':
      goto LABEL_156;
    default:
      if (a1[1] != 33)
      {
        return result;
      }

      v10 = a1[2];
      if (v10 <= 0x40)
      {
        if (v10 != 45)
        {
          return 0;
        }

        return 2 * (a1[3] == 45);
      }

      if (v10 < 0x5B)
      {
        return 4;
      }

      if (v10 != 91 || (a1[3] & 0xDF) != 0x43 || (a1[4] & 0xDF) != 0x44)
      {
        return 0;
      }

      if ((a1[5] & 0xDF) == 0x41 && (a1[6] & 0xDF) == 0x54 && (a1[7] & 0xDF) == 0x41)
      {
        if (a1[8] == 91)
        {
          return 5;
        }

        else
        {
          return 0;
        }
      }

      return 0;
  }
}

uint64_t _scan_html_block_start_7(_BYTE *a1)
{
  if (*a1 != 60)
  {
    return 0;
  }

  v1 = a1[1];
  if (v1 <= 0x40)
  {
    if (v1 != 47)
    {
      return 0;
    }

    v2 = a1[2];
    if (v2 < 0x41 || v2 >= 0x5B && v2 - 97 > 0x19)
    {
      return 0;
    }

    for (i = a1 + 3; ; ++i)
    {
      v4 = *i;
      if (v4 > 0x2F)
      {
        if (v4 > 0x40)
        {
          if (v4 >= 0x5B && v4 - 97 >= 0x1A)
          {
            return 0;
          }
        }

        else if (v4 > 0x39)
        {
          goto LABEL_178;
        }
      }

      else
      {
        if (v4 <= 0x1F)
        {
          if (v4 - 9 >= 5)
          {
            return 0;
          }

          do
          {
LABEL_169:
            while (1)
            {
              v47 = *++i;
              v4 = v47;
              if (v47 > 0x1F)
              {
                break;
              }

              if (v4 - 9 > 4)
              {
                return 0;
              }
            }
          }

          while (v4 == 32);
LABEL_178:
          if (v4 != 62)
          {
            return 0;
          }

LABEL_179:
          for (j = 1; ; j = 0)
          {
            v50 = i + 2;
            v51 = i;
            do
            {
              i = v50;
              v53 = *++v51;
              v52 = v53;
              ++v50;
            }

            while ((_scan_html_block_start_7_yybm[v53] & 4) != 0);
            if (v52 < 9)
            {
              break;
            }

            if (v52 > 0xA)
            {
              v56 = v52 == 11 || v52 > 0xD;
              if (v56 & j)
              {
                return 0;
              }

              return 7;
            }

            while (1)
            {
              v54 = *i;
              if ((_scan_html_block_start_7_yybm[*i] & 4) != 0)
              {
                break;
              }

              ++i;
              if ((v54 - 9) >= 2)
              {
                return 7;
              }
            }
          }

          if (j)
          {
            return 0;
          }

          return 7;
        }

        if (v4 != 45)
        {
          if (v4 != 32)
          {
            return 0;
          }

          goto LABEL_169;
        }
      }
    }
  }

  if (v1 >= 0x5B && v1 - 97 > 0x19)
  {
    return 0;
  }

  v8 = a1[2];
  i = a1 + 2;
  for (k = v8; (_scan_html_block_start_7_yybm[k] & 2) == 0; k = v9)
  {
    if (k > 0x3D)
    {
      if (k > 0x5A)
      {
        if (k - 97 >= 0x1A)
        {
          return 0;
        }
      }

      else
      {
        if (k == 62)
        {
          goto LABEL_179;
        }

        if (k < 0x41)
        {
          return 0;
        }
      }
    }

    else if (k > 0x2E)
    {
      if (k == 47)
      {
        goto LABEL_177;
      }

      if (k >= 0x3A)
      {
        return 0;
      }
    }

    else if (k != 45)
    {
      return 0;
    }

    v9 = *++i;
  }

  do
  {
LABEL_160:
    v46 = *++i;
    v13 = v46;
  }

  while ((_scan_html_block_start_7_yybm[v46] & 2) != 0);
  if (v13 <= 0x3E)
  {
    if (v13 > 0x39)
    {
      if (v13 != 58)
      {
        if (v13 != 62)
        {
          return 0;
        }

        goto LABEL_179;
      }

      goto LABEL_41;
    }

    v15 = v13 == 47;
    goto LABEL_175;
  }

  if (v13 <= 0x5E)
  {
    if (v13 - 65 >= 0x1A)
    {
      return 0;
    }

    goto LABEL_41;
  }

LABEL_65:
  v14 = 0;
  if (v13 == 96 || v13 >= 0x7B)
  {
    return v14;
  }

  while (1)
  {
    do
    {
LABEL_41:
      v10 = i;
      v12 = *++i;
      v11 = v12;
    }

    while ((_scan_html_block_start_7_yybm[v12] & 8) != 0);
    if (v11 > 0x2C)
    {
      break;
    }

    if (v11 > 0xD)
    {
      if (v11 != 32)
      {
        return 0;
      }
    }

    else if (v11 < 9)
    {
      return 0;
    }

    i = v10 + 2;
    while (1)
    {
      v13 = *i;
      if (v13 > 0x3C)
      {
        break;
      }

      if (v13 > 0x20)
      {
        v15 = v13 == 47;
        if (v13 > 0x2F)
        {
          v14 = 0;
          if (v13 != 58)
          {
            return v14;
          }

          goto LABEL_41;
        }

LABEL_175:
        if (!v15)
        {
          return 0;
        }

        goto LABEL_177;
      }

      if (v13 >= 9)
      {
        ++i;
        if (v13 < 0xE || v13 == 32)
        {
          continue;
        }
      }

      return 0;
    }

    if (v13 > 0x5A)
    {
      if (v13 <= 0x5F)
      {
        v14 = 0;
        if (v13 != 95)
        {
          return v14;
        }

        goto LABEL_41;
      }

      goto LABEL_65;
    }

    if (v13 == 61)
    {
      goto LABEL_70;
    }

    if (v13 < 0x3F)
    {
      goto LABEL_179;
    }

    v14 = 0;
    if (v13 < 0x41)
    {
      return v14;
    }
  }

  if (v11 <= 0x3C)
  {
    if (v11 >= 0x30)
    {
      return 0;
    }

    goto LABEL_177;
  }

  if (v11 != 61)
  {
    if (v11 >= 0x3F)
    {
      return 0;
    }

    goto LABEL_179;
  }

LABEL_70:
  ++i;
  while (1)
  {
    v16 = *i;
    if ((_scan_html_block_start_7_yybm[*i] & 0x20) != 0)
    {
      goto LABEL_137;
    }

    if (v16 > 0xE0)
    {
      v30 = i - 1;
      goto LABEL_142;
    }

    if (v16 > 0x22)
    {
      break;
    }

    if (!*i)
    {
      return 0;
    }

    ++i;
    if (v16 >= 0x21)
    {
      v17 = i - 1;
      while (1)
      {
        do
        {
          v18 = v17;
          v20 = *++v17;
          v19 = v20;
        }

        while ((_scan_html_block_start_7_yybm[v20] & 0x40) != 0);
        if (v19 > 0xEC)
        {
          break;
        }

        if (v19 <= 0xC1)
        {
          if (v19 - 1 >= 0x22)
          {
            return 0;
          }

LABEL_133:
          v42 = v18[2];
          i = v18 + 2;
          if ((_scan_html_block_start_7_yybm[v18[2]] & 2) == 0)
          {
            if (v42 != 47)
            {
              if (v42 != 62)
              {
                return 0;
              }

              goto LABEL_179;
            }

LABEL_177:
            v48 = *++i;
            v4 = v48;
            goto LABEL_178;
          }

          goto LABEL_160;
        }

        if (v19 >= 0xE0)
        {
          if (v19 != 224)
          {
            goto LABEL_95;
          }

          v22 = v18[2];
          v21 = v18 + 2;
          if ((v22 & 0xE0) != 0xA0)
          {
            return 0;
          }

LABEL_98:
          v17 = v21;
        }

LABEL_99:
        v14 = 0;
        v29 = *++v17;
        if (v29 >= -64)
        {
          return v14;
        }
      }

      if (v19 > 0xF0)
      {
        if (v19 >= 0xF4)
        {
          if (v19 != 244)
          {
            return 0;
          }

          v26 = v18[2];
          v23 = v18 + 2;
          if (v26 >= -112)
          {
            return 0;
          }
        }

        else
        {
          v25 = v18[2];
          v23 = v18 + 2;
          if (v25 >= -64)
          {
            return 0;
          }
        }

LABEL_94:
        v17 = v23;
LABEL_95:
        v27 = *++v17;
        if (v27 >= -64)
        {
          return 0;
        }

        goto LABEL_99;
      }

      if (v19 != 237)
      {
        if (v19 == 240)
        {
          v24 = v18[2];
          v23 = v18 + 2;
          if ((v24 - 144) >= 0x30)
          {
            return 0;
          }

          goto LABEL_94;
        }

        goto LABEL_95;
      }

      v28 = v18[2];
      v21 = v18 + 2;
      if (v28 >= -96)
      {
        return 0;
      }

      goto LABEL_98;
    }
  }

  if (v16 <= 0x27)
  {
    while (1)
    {
      do
      {
        v18 = i;
        v32 = *++i;
        v31 = v32;
      }

      while (_scan_html_block_start_7_yybm[v32] < 0);
      if (v31 > 0xEC)
      {
        if (v31 > 0xF0)
        {
          if (v31 >= 0xF4)
          {
            if (v31 != 244)
            {
              return 0;
            }

            v38 = v18[2];
            v35 = v18 + 2;
            if (v38 >= -112)
            {
              return 0;
            }
          }

          else
          {
            v37 = v18[2];
            v35 = v18 + 2;
            if (v37 >= -64)
            {
              return 0;
            }
          }

LABEL_120:
          i = v35;
LABEL_121:
          v39 = *++i;
          if (v39 >= -64)
          {
            return 0;
          }

          goto LABEL_125;
        }

        if (v31 != 237)
        {
          if (v31 == 240)
          {
            v36 = v18[2];
            v35 = v18 + 2;
            if ((v36 - 144) >= 0x30)
            {
              return 0;
            }

            goto LABEL_120;
          }

          goto LABEL_121;
        }

        v40 = v18[2];
        v33 = v18 + 2;
        if (v40 >= -96)
        {
          return 0;
        }
      }

      else
      {
        if (v31 <= 0xC1)
        {
          if (v31 - 1 >= 0x27)
          {
            return 0;
          }

          goto LABEL_133;
        }

        if (v31 < 0xE0)
        {
          goto LABEL_125;
        }

        if (v31 != 224)
        {
          goto LABEL_121;
        }

        v34 = v18[2];
        v33 = v18 + 2;
        if ((v34 & 0xE0) != 0xA0)
        {
          return 0;
        }
      }

      i = v33;
LABEL_125:
      v14 = 0;
      v41 = *++i;
      if (v41 >= -64)
      {
        return v14;
      }
    }
  }

  if (v16 < 0xC2)
  {
    return 0;
  }

  if (v16 != 224)
  {
    goto LABEL_136;
  }

  v30 = i - 1;
LABEL_135:
  i = v30 + 2;
  if ((v30[2] & 0xE0) != 0xA0)
  {
    return 0;
  }

  while (1)
  {
    while (1)
    {
LABEL_136:
      v43 = *++i;
      if (v43 > -65)
      {
        return 0;
      }

      do
      {
LABEL_137:
        v44 = *++i;
        v16 = v44;
      }

      while ((_scan_html_block_start_7_yybm[v44] & 0x20) != 0);
      v30 = i - 1;
      if (v16 <= 0xE0)
      {
        break;
      }

LABEL_142:
      if (v16 > 0xEF)
      {
        if (v16 == 240)
        {
          i = v30 + 2;
          if (v30[2] - 144 >= 0x30)
          {
            return 0;
          }
        }

        else if (v16 >= 0xF4)
        {
          if (v16 != 244)
          {
            return 0;
          }

          i = v30 + 2;
          if (v30[2] >= -112)
          {
            return 0;
          }
        }

        else
        {
          i = v30 + 2;
          if (v30[2] >= -64)
          {
            return 0;
          }
        }

LABEL_158:
        v45 = *++i;
        if (v45 >= -64)
        {
          return 0;
        }
      }

      else
      {
        if (v16 != 237)
        {
          goto LABEL_158;
        }

        i = v30 + 2;
        if (v30[2] >= -96)
        {
          return 0;
        }
      }
    }

    if (v16 <= 0x3D)
    {
      break;
    }

    if (v16 == 62)
    {
      goto LABEL_179;
    }

    if (v16 < 0xC2)
    {
      return 0;
    }

    if (v16 == 224)
    {
      goto LABEL_135;
    }
  }

  v14 = 0;
  if (v16 - 1 < 0x20)
  {
    goto LABEL_160;
  }

  return v14;
}

uint64_t _scan_html_block_end_1(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 > 0xDF)
  {
    if (v1 <= 0xEF)
    {
      v4 = a1 + 1;
      v5 = a1[1];
      if (v1 == 224)
      {
        v3 = 0;
        v6 = a1 + 1;
        if ((v5 & 0xE0) == 0xA0)
        {
          goto LABEL_62;
        }
      }

      else if (v1 == 237)
      {
        v3 = 0;
        v6 = a1 + 1;
        if (v5 < -96)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v3 = 0;
        v6 = a1 + 1;
        if (v5 < -64)
        {
          goto LABEL_62;
        }
      }

      return v3;
    }

    if (v1 == 240)
    {
      v3 = 0;
      v4 = a1 + 1;
      if (a1[1] - 144 >= 0x30)
      {
        return v3;
      }
    }

    else if (v1 >= 0xF4)
    {
      if (v1 != 244)
      {
        return 0;
      }

      v3 = 0;
      v4 = a1 + 1;
      if (a1[1] >= -112)
      {
        return v3;
      }
    }

    else
    {
      v3 = 0;
      v4 = a1 + 1;
      if (a1[1] >= -64)
      {
        return v3;
      }
    }

    v6 = v4;
    goto LABEL_61;
  }

  if (v1 <= 0x3B)
  {
    if (*a1)
    {
      v2 = v1 == 10;
    }

    else
    {
      v2 = 1;
    }

    if (!v2)
    {
      goto LABEL_23;
    }

    return 0;
  }

  if (v1 != 60)
  {
    if ((v1 & 0x80) == 0)
    {
LABEL_23:
      v7 = a1 + 1;
      v8 = a1[1];
      if (v8 <= 0xA)
      {
        goto LABEL_24;
      }

      v3 = 0;
      if ((v8 & 0x80) == 0)
      {
        v6 = a1 + 1;
        goto LABEL_45;
      }

      goto LABEL_35;
    }

    if (v1 > 0xC1)
    {
      v3 = 0;
      v4 = a1 + 1;
      if (a1[1] < -64)
      {
LABEL_42:
        v6 = v4;
        goto LABEL_44;
      }

      return v3;
    }

    return 0;
  }

  v7 = a1 + 1;
  v8 = a1[1];
  if (v8 <= 0x2E)
  {
LABEL_24:
    v3 = 0;
    if (v8)
    {
      v6 = v7;
      if (v8 != 10)
      {
        goto LABEL_45;
      }
    }

    return v3;
  }

  v3 = 0;
  if ((v8 & 0x80) != 0)
  {
LABEL_35:
    v6 = v7;
    if (v8 - 194 < 0x33)
    {
      goto LABEL_45;
    }

    return v3;
  }

  v6 = a1 + 1;
  v9 = a1;
  if (v8 == 47)
  {
    goto LABEL_82;
  }

LABEL_45:
  if ((_scan_html_block_end_1_yybm[v8] & 0x40) != 0)
  {
    v4 = v7;
    goto LABEL_44;
  }

  if (v8 > 0xEC)
  {
    v4 = v7;
    if (v8 > 0xF0)
    {
      v10 = v8 == 244;
      if (v8 >= 0xF4)
      {
        goto LABEL_98;
      }

      goto LABEL_67;
    }

LABEL_64:
    if (v8 != 237)
    {
      if (v8 != 240)
      {
        goto LABEL_61;
      }

      goto LABEL_89;
    }

    goto LABEL_78;
  }

  if (v8 > 0xC1)
  {
    v4 = v7;
    v11 = v8 == 224;
    if (v8 < 0xE0)
    {
      goto LABEL_62;
    }

    goto LABEL_55;
  }

  v4 = v7;
  if (v8 - 11 >= 0x32)
  {
    goto LABEL_58;
  }

  while (1)
  {
    while (1)
    {
      do
      {
        v17 = *++v4;
        v16 = v17;
      }

      while (_scan_html_block_end_1_yybm[v17] < 0);
      if (v16 > 0xDF)
      {
        if (v16 <= 0xEF)
        {
          if (v16 == 224)
          {
            goto LABEL_125;
          }

          if (v16 == 237)
          {
            goto LABEL_78;
          }

LABEL_61:
          v13 = *++v4;
          if (v13 >= -64)
          {
            goto LABEL_58;
          }

LABEL_62:
          v14 = *++v4;
          if (v14 >= -64)
          {
            goto LABEL_58;
          }

          goto LABEL_44;
        }

        if (v16 == 240)
        {
          goto LABEL_89;
        }

        v10 = v16 == 244;
        if (v16 >= 0xF4)
        {
LABEL_98:
          if (!v10)
          {
            goto LABEL_58;
          }

          goto LABEL_166;
        }

LABEL_67:
        v15 = *++v4;
        if (v15 >= -64)
        {
          goto LABEL_58;
        }

        goto LABEL_61;
      }

      if (v16 <= 0x2E)
      {
        if (v16 && v16 != 10)
        {
          goto LABEL_44;
        }

        goto LABEL_58;
      }

      v9 = v4 - 1;
      if (v16 != 47)
      {
        if ((v16 & 0x80) == 0)
        {
          goto LABEL_44;
        }

        if (v16 >= 0xC2)
        {
          goto LABEL_62;
        }

        goto LABEL_58;
      }

      v7 = v6;
LABEL_82:
      v4 = v9 + 2;
      v8 = v9[2];
      if (_scan_html_block_end_1_yybm[v9[2]] < 0)
      {
        goto LABEL_229;
      }

      if (v8 > 0x73)
      {
        goto LABEL_110;
      }

      if (v8 <= 0x50)
      {
        if (v8 <= 9)
        {
          goto LABEL_86;
        }

        if (v8 != 80)
        {
          goto LABEL_122;
        }

LABEL_118:
        v8 = v9[3];
        v4 = v9 + 3;
        if (_scan_html_block_end_1_yybm[v9[3]] < 0)
        {
          goto LABEL_229;
        }

        if (v8 > 0xC1)
        {
          goto LABEL_230;
        }

        if (v8 <= 0x51)
        {
          goto LABEL_121;
        }

        if (v8 > 0x71)
        {
          if (v8 != 114)
          {
            goto LABEL_112;
          }
        }

        else if (v8 != 82)
        {
          goto LABEL_161;
        }

LABEL_142:
        v22 = *++v4;
        v21 = v22;
        if (_scan_html_block_end_1_yybm[v22] < 0)
        {
          goto LABEL_229;
        }

        if (v21 > 0xC1)
        {
          if (v21 <= 0xED)
          {
            if (v21 >= 0xE0)
            {
              if (v21 == 224)
              {
LABEL_241:
                v6 = v7;
                goto LABEL_125;
              }

LABEL_157:
              v6 = v7;
              if (v21 != 237)
              {
                goto LABEL_61;
              }

              goto LABEL_78;
            }

LABEL_117:
            v6 = v7;
            goto LABEL_62;
          }

          v23 = v21 == 240;
          if (v21 > 0xF0)
          {
            goto LABEL_163;
          }

          goto LABEL_236;
        }

        if (v21 <= 0x44)
        {
          goto LABEL_145;
        }

        if (v21 > 0x64)
        {
          if (v21 != 101)
          {
            v6 = v7;
            if ((v21 & 0x80) == 0)
            {
              goto LABEL_44;
            }

            goto LABEL_58;
          }
        }

        else if (v21 != 69)
        {
          goto LABEL_161;
        }

        goto LABEL_169;
      }

      if (v8 > 0x6F)
      {
        if (v8 == 112)
        {
          goto LABEL_118;
        }

        if (v8 != 115)
        {
          goto LABEL_161;
        }
      }

      else if (v8 != 83)
      {
        goto LABEL_161;
      }

      v4 = v9 + 3;
      v8 = v9[3];
      if (_scan_html_block_end_1_yybm[v9[3]] < 0)
      {
        goto LABEL_229;
      }

      if (v8 > 0x74)
      {
LABEL_110:
        if (v8 <= 0xEC)
        {
          if (v8 <= 0xC1)
          {
LABEL_112:
            v6 = v7;
            if ((v8 & 0x80) == 0)
            {
              goto LABEL_44;
            }

            goto LABEL_58;
          }

          if (v8 >= 0xE0)
          {
            v6 = v7;
            if (v8 != 224)
            {
              goto LABEL_61;
            }

            goto LABEL_125;
          }

          goto LABEL_117;
        }

        if (v8 <= 0xF0)
        {
          v6 = v7;
          goto LABEL_64;
        }

LABEL_239:
        v24 = v8 == 244;
        if (v8 >= 0xF4)
        {
LABEL_164:
          v6 = v7;
          if (!v24)
          {
            goto LABEL_58;
          }

          goto LABEL_166;
        }

LABEL_240:
        v6 = v7;
        goto LABEL_67;
      }

      if (v8 <= 0x43)
      {
        if (v8 <= 9)
        {
LABEL_86:
          v6 = v7;
          if (v8)
          {
            goto LABEL_44;
          }

          goto LABEL_58;
        }

        if (v8 != 67)
        {
          goto LABEL_122;
        }

        goto LABEL_148;
      }

      if (v8 > 0x62)
      {
        break;
      }

      if (v8 != 84)
      {
        goto LABEL_161;
      }

LABEL_135:
      v4 = v9 + 4;
      v8 = v9[4];
      if ((_scan_html_block_end_1_yybm[v9[4]] & 0x80000000) == 0)
      {
        if (v8 > 0xC1)
        {
          goto LABEL_230;
        }

        if (v8 <= 0x58)
        {
          goto LABEL_121;
        }

        if (v8 > 0x78)
        {
          if (v8 != 121)
          {
            goto LABEL_112;
          }
        }

        else if (v8 != 89)
        {
          goto LABEL_161;
        }

        v8 = v9[5];
        v4 = v9 + 5;
        if ((_scan_html_block_end_1_yybm[v9[5]] & 0x80000000) == 0)
        {
          if (v8 > 0xC1)
          {
            goto LABEL_230;
          }

          if (v8 <= 0x4B)
          {
            goto LABEL_121;
          }

          if (v8 > 0x6B)
          {
            if (v8 != 108)
            {
              goto LABEL_112;
            }
          }

          else if (v8 != 76)
          {
            goto LABEL_161;
          }

          goto LABEL_142;
        }
      }

LABEL_229:
      v6 = v7;
    }

    if (v8 != 99)
    {
      if (v8 != 116)
      {
        goto LABEL_161;
      }

      goto LABEL_135;
    }

LABEL_148:
    v4 = v9 + 4;
    v8 = v9[4];
    if (_scan_html_block_end_1_yybm[v9[4]] < 0)
    {
      goto LABEL_229;
    }

    if (v8 > 0xC1)
    {
      goto LABEL_230;
    }

    if (v8 <= 0x51)
    {
      goto LABEL_121;
    }

    if (v8 > 0x71)
    {
      if (v8 != 114)
      {
        goto LABEL_112;
      }
    }

    else if (v8 != 82)
    {
      goto LABEL_161;
    }

    v4 = v9 + 5;
    v8 = v9[5];
    if (_scan_html_block_end_1_yybm[v9[5]] < 0)
    {
      goto LABEL_229;
    }

    if (v8 > 0xC1)
    {
      goto LABEL_230;
    }

    if (v8 <= 0x48)
    {
      goto LABEL_121;
    }

    if (v8 > 0x68)
    {
      if (v8 != 105)
      {
        goto LABEL_112;
      }
    }

    else if (v8 != 73)
    {
      goto LABEL_161;
    }

    v4 = v9 + 6;
    v8 = v9[6];
    if (_scan_html_block_end_1_yybm[v9[6]] < 0)
    {
      goto LABEL_229;
    }

    if (v8 > 0xC1)
    {
      goto LABEL_230;
    }

    if (v8 <= 0x4F)
    {
LABEL_121:
      if (!v8)
      {
        goto LABEL_178;
      }

LABEL_122:
      v6 = v7;
      if (v8 == 10)
      {
        goto LABEL_58;
      }

LABEL_44:
      v8 = v4[1];
      v7 = v4 + 1;
      goto LABEL_45;
    }

    if (v8 > 0x6F)
    {
      if (v8 != 112)
      {
        goto LABEL_112;
      }
    }

    else if (v8 != 80)
    {
      goto LABEL_161;
    }

    v8 = v9[7];
    v4 = v9 + 7;
    if (_scan_html_block_end_1_yybm[v9[7]] < 0)
    {
      goto LABEL_229;
    }

    if (v8 > 0xC1)
    {
LABEL_230:
      if (v8 <= 0xED)
      {
        if (v8 >= 0xE0)
        {
          if (v8 != 224)
          {
            v6 = v7;
            if (v8 != 237)
            {
              goto LABEL_61;
            }

            goto LABEL_78;
          }

          goto LABEL_241;
        }

        goto LABEL_117;
      }

      v23 = v8 == 240;
      if (v8 > 0xF0)
      {
        goto LABEL_239;
      }

LABEL_236:
      v6 = v7;
      if (!v23)
      {
        goto LABEL_61;
      }

      goto LABEL_89;
    }

    if (v8 <= 0x53)
    {
      goto LABEL_121;
    }

    if (v8 > 0x73)
    {
      if (v8 != 116)
      {
        goto LABEL_112;
      }
    }

    else if (v8 != 84)
    {
      goto LABEL_161;
    }

LABEL_169:
    v26 = v4;
    v27 = *++v4;
    v21 = v27;
    if (_scan_html_block_end_1_yybm[v27] < 0)
    {
      goto LABEL_229;
    }

    if (v21 > 0xDF)
    {
      if (v21 <= 0xEF)
      {
        if (v21 == 224)
        {
          goto LABEL_241;
        }

        goto LABEL_157;
      }

      if (v21 == 240)
      {
        v6 = v7;
LABEL_89:
        v19 = *++v4;
        if ((v19 - 144) >= 0x30)
        {
          goto LABEL_58;
        }

        goto LABEL_61;
      }

LABEL_163:
      v24 = v21 == 244;
      if (v21 >= 0xF4)
      {
        goto LABEL_164;
      }

      goto LABEL_240;
    }

    if (v21 <= 0x3D)
    {
LABEL_145:
      if (!v21)
      {
LABEL_178:
        LODWORD(v6) = v7;
        goto LABEL_58;
      }

      v6 = v7;
      if (v21 != 10)
      {
        goto LABEL_44;
      }

      goto LABEL_58;
    }

    if (v21 != 62)
    {
      if ((v21 & 0x80) == 0)
      {
LABEL_161:
        v6 = v7;
        goto LABEL_44;
      }

      v6 = v7;
      if (v21 >= 0xC2)
      {
        goto LABEL_62;
      }

      goto LABEL_58;
    }

    v30 = v26[2];
    v29 = v26 + 2;
    v28 = v30;
    v4 = v29;
    if ((_scan_html_block_end_1_yybm[v30] & 0x40) != 0)
    {
      v3 = 1;
      goto LABEL_42;
    }

    if (v28 > 0xEC)
    {
      v3 = 1;
      v6 = v29;
      if (v28 <= 0xF0)
      {
        if (v28 != 237)
        {
          if (v28 != 240)
          {
            goto LABEL_61;
          }

          goto LABEL_89;
        }

LABEL_78:
        v18 = *++v4;
        if (v18 >= -96)
        {
          goto LABEL_58;
        }

        goto LABEL_62;
      }

      if (v28 < 0xF4)
      {
        goto LABEL_67;
      }

      if (v28 != 244)
      {
        return (v4 - a1);
      }

LABEL_166:
      v25 = *++v4;
      if (v25 < -112)
      {
        goto LABEL_61;
      }

      goto LABEL_58;
    }

    if (v28 > 0xC1)
    {
      break;
    }

    v3 = 1;
    v6 = v29;
    if (v28 - 11 > 0x31)
    {
      return (v4 - a1);
    }
  }

  v3 = 1;
  v6 = v29;
  v11 = v28 == 224;
  if (v28 < 0xE0)
  {
    goto LABEL_62;
  }

LABEL_55:
  if (!v11)
  {
    goto LABEL_61;
  }

LABEL_125:
  v20 = *++v4;
  if ((v20 & 0xE0) == 0xA0)
  {
    goto LABEL_62;
  }

LABEL_58:
  LODWORD(v4) = v6;
  if (v3)
  {
    return (v4 - a1);
  }

  return v3;
}

uint64_t _scan_html_block_end_2(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 > 0xDF)
  {
    if (v1 <= 0xEF)
    {
      v4 = a1 + 1;
      v5 = a1[1];
      if (v1 == 224)
      {
        v3 = 0;
        v6 = a1 + 1;
        if ((v5 & 0xE0) == 0xA0)
        {
          goto LABEL_95;
        }
      }

      else if (v1 == 237)
      {
        v3 = 0;
        v6 = a1 + 1;
        if (v5 < -96)
        {
          goto LABEL_95;
        }
      }

      else
      {
        v3 = 0;
        v6 = a1 + 1;
        if (v5 < -64)
        {
          goto LABEL_95;
        }
      }

      return v3;
    }

    if (v1 == 240)
    {
      v3 = 0;
      v4 = a1 + 1;
      if (a1[1] - 144 >= 0x30)
      {
        return v3;
      }
    }

    else if (v1 >= 0xF4)
    {
      if (v1 != 244)
      {
        return 0;
      }

      v3 = 0;
      v4 = a1 + 1;
      if (a1[1] >= -112)
      {
        return v3;
      }
    }

    else
    {
      v3 = 0;
      v4 = a1 + 1;
      if (a1[1] >= -64)
      {
        return v3;
      }
    }

    v6 = v4;
    goto LABEL_94;
  }

  if (v1 <= 0x2C)
  {
    if (*a1)
    {
      v2 = v1 == 10;
    }

    else
    {
      v2 = 1;
    }

    if (!v2)
    {
      goto LABEL_21;
    }

    return 0;
  }

  if (v1 != 45)
  {
    if ((v1 & 0x80) == 0)
    {
LABEL_21:
      v4 = a1 + 1;
      v7 = a1[1];
      goto LABEL_22;
    }

    if (v1 > 0xC1)
    {
      v3 = 0;
      v4 = a1 + 1;
      if (a1[1] < -64)
      {
        v6 = a1 + 1;
        goto LABEL_43;
      }

      return v3;
    }

    return 0;
  }

  v4 = a1 + 1;
  v7 = a1[1];
  if (_scan_html_block_end_2_yybm[a1[1]] < 0)
  {
    v3 = 0;
    v6 = a1 + 1;
    goto LABEL_52;
  }

LABEL_22:
  if (v7 > 0xA)
  {
    v3 = 0;
    if ((v7 & 0x80) == 0)
    {
      v6 = v4;
      goto LABEL_44;
    }

    v6 = v4;
    if (v7 - 194 >= 0x33)
    {
      return v3;
    }

    while (1)
    {
LABEL_44:
      if ((_scan_html_block_end_2_yybm[v7] & 0x40) != 0)
      {
        goto LABEL_43;
      }

      if (v7 > 0xEC)
      {
        break;
      }

      if (v7 <= 0xC1)
      {
        if (v7 - 11 >= 0x23)
        {
          goto LABEL_96;
        }

        while (1)
        {
          v9 = *++v4;
          v7 = v9;
          if ((_scan_html_block_end_2_yybm[v9] & 0x40) != 0)
          {
            goto LABEL_43;
          }

          if (v7 > 0xEC)
          {
            goto LABEL_59;
          }

          if (v7 > 0xC1)
          {
            break;
          }

          if (v7 - 11 > 0x22)
          {
            goto LABEL_96;
          }

LABEL_52:
          v10 = v4 + 1;
          do
          {
            v12 = *v10++;
            v11 = v12;
          }

          while (_scan_html_block_end_2_yybm[v12] < 0);
          v4 = v10 - 1;
          if (v11 > 0xDF)
          {
            if (v11 <= 0xEF)
            {
              if (v11 == 237)
              {
                goto LABEL_82;
              }

              if (v11 == 224)
              {
                goto LABEL_69;
              }

              goto LABEL_94;
            }

            if (v11 == 240)
            {
              goto LABEL_80;
            }

            v14 = v11 == 244;
            if (v11 >= 0xF4)
            {
              goto LABEL_91;
            }

            goto LABEL_89;
          }

          if (v11 <= 0x3D)
          {
            if (v11 && v11 != 10)
            {
              goto LABEL_43;
            }

            goto LABEL_96;
          }

          if (v11 != 62)
          {
            if ((v11 & 0x80) == 0)
            {
              goto LABEL_43;
            }

            if (v11 >= 0xC2)
            {
              goto LABEL_95;
            }

            goto LABEL_96;
          }

          v15 = *v10;
          if ((_scan_html_block_end_2_yybm[*v10] & 0x40) != 0)
          {
            v3 = 1;
            v4 = v10;
            v6 = v10;
            goto LABEL_43;
          }

          if (v15 > 0xEC)
          {
            v3 = 1;
            if (v15 <= 0xF0)
            {
              if (v15 == 240)
              {
                v4 = v10;
                v6 = v10;
                goto LABEL_80;
              }

              if (v15 == 237)
              {
                v6 = v10;
                goto LABEL_83;
              }

              v4 = v10;
              v6 = v10;
              goto LABEL_94;
            }

            v24 = v15 == 244;
            if (v15 < 0xF4)
            {
              v4 = v10;
              v6 = v10;
              goto LABEL_89;
            }

            v4 = v10;
            v6 = v10;
            if (v24)
            {
              goto LABEL_93;
            }

            return (v10 - a1);
          }

          if (v15 > 0xC1)
          {
            v3 = 1;
            v23 = v15 == 224;
            if (v15 < 0xE0)
            {
              v4 = v10;
              v6 = v10;
              goto LABEL_95;
            }

            v4 = v10;
            v6 = v10;
            if (v23)
            {
              goto LABEL_69;
            }

            goto LABEL_94;
          }

          v16 = v15 - 11;
          v3 = 1;
          v4 = v10;
          v6 = v10;
          if (v16 >= 0x23)
          {
            return (v10 - a1);
          }
        }
      }

      if (v7 >= 0xE0)
      {
        if (v7 == 224)
        {
LABEL_69:
          v13 = *++v4;
          if ((v13 & 0xE0) != 0xA0)
          {
            goto LABEL_96;
          }

          goto LABEL_95;
        }

        goto LABEL_94;
      }

LABEL_95:
      v21 = *++v4;
      if (v21 >= -64)
      {
        goto LABEL_96;
      }

LABEL_43:
      v8 = *++v4;
      v7 = v8;
    }

LABEL_59:
    if (v7 > 0xF0)
    {
      v14 = v7 == 244;
      if (v7 < 0xF4)
      {
LABEL_89:
        v18 = *++v4;
        if (v18 >= -64)
        {
          goto LABEL_96;
        }
      }

      else
      {
LABEL_91:
        if (!v14)
        {
          goto LABEL_96;
        }

LABEL_93:
        v19 = *++v4;
        if (v19 >= -112)
        {
LABEL_96:
          LODWORD(v10) = v6;
          if (v3)
          {
            return (v10 - a1);
          }

          return v3;
        }
      }
    }

    else
    {
      if (v7 == 237)
      {
LABEL_82:
        v10 = v4;
LABEL_83:
        v4 = v10 + 1;
        if (v10[1] >= -96)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      }

      if (v7 == 240)
      {
LABEL_80:
        v17 = *++v4;
        if ((v17 - 144) >= 0x30)
        {
          goto LABEL_96;
        }
      }
    }

LABEL_94:
    v20 = *++v4;
    if (v20 >= -64)
    {
      goto LABEL_96;
    }

    goto LABEL_95;
  }

  v3 = 0;
  if (v7)
  {
    v6 = v4;
    if (v7 != 10)
    {
      goto LABEL_44;
    }
  }

  return v3;
}

uint64_t _scan_html_block_end_3(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 > 0xDF)
  {
    if (v1 <= 0xEF)
    {
      v4 = a1 + 1;
      v5 = a1[1];
      if (v1 == 224)
      {
        v3 = 0;
        v6 = a1 + 1;
        if ((v5 & 0xE0) == 0xA0)
        {
          goto LABEL_96;
        }
      }

      else if (v1 == 237)
      {
        v3 = 0;
        v6 = a1 + 1;
        if (v5 < -96)
        {
          goto LABEL_96;
        }
      }

      else
      {
        v3 = 0;
        v6 = a1 + 1;
        if (v5 < -64)
        {
          goto LABEL_96;
        }
      }

      return v3;
    }

    if (v1 == 240)
    {
      v3 = 0;
      v4 = a1 + 1;
      if (a1[1] - 144 >= 0x30)
      {
        return v3;
      }
    }

    else if (v1 >= 0xF4)
    {
      if (v1 != 244)
      {
        return 0;
      }

      v3 = 0;
      v4 = a1 + 1;
      if (a1[1] >= -112)
      {
        return v3;
      }
    }

    else
    {
      v3 = 0;
      v4 = a1 + 1;
      if (a1[1] >= -64)
      {
        return v3;
      }
    }

    v6 = v4;
    goto LABEL_95;
  }

  if (v1 <= 0x3E)
  {
    if (*a1)
    {
      v2 = v1 == 10;
    }

    else
    {
      v2 = 1;
    }

    if (!v2)
    {
LABEL_23:
      v4 = a1 + 1;
      v7 = a1[1];
      if (v7 <= 0xA)
      {
        goto LABEL_24;
      }

      v3 = 0;
      if ((v7 & 0x80) == 0)
      {
LABEL_35:
        v6 = v4;
        goto LABEL_47;
      }

      goto LABEL_43;
    }

    return 0;
  }

  if (v1 != 63)
  {
    if ((v1 & 0x80) == 0)
    {
      goto LABEL_23;
    }

    if (v1 > 0xC1)
    {
      v3 = 0;
      v4 = a1 + 1;
      if (a1[1] < -64)
      {
LABEL_45:
        v6 = v4;
        goto LABEL_46;
      }

      return v3;
    }

    return 0;
  }

  v4 = a1 + 1;
  v7 = a1[1];
  if (v7 > 0x3D)
  {
    if ((v7 & 0x80) == 0)
    {
      v8 = a1;
      if (v7 == 62)
      {
        goto LABEL_65;
      }

      v3 = 0;
      goto LABEL_35;
    }

    v3 = 0;
LABEL_43:
    v6 = v4;
    if (v7 - 194 < 0x33)
    {
      goto LABEL_47;
    }

    return v3;
  }

LABEL_24:
  v3 = 0;
  if (!v7)
  {
    return v3;
  }

  v6 = v4;
  if (v7 == 10)
  {
    return v3;
  }

  while (1)
  {
LABEL_47:
    if ((_scan_html_block_end_3_yybm[v7] & 0x40) != 0)
    {
      goto LABEL_46;
    }

    if (v7 > 0xEC)
    {
      if (v7 > 0xF0)
      {
LABEL_72:
        if (v7 < 0xF4)
        {
LABEL_91:
          v16 = *++v4;
          if (v16 >= -64)
          {
            goto LABEL_97;
          }
        }

        else
        {
          if (v7 != 244)
          {
            goto LABEL_97;
          }

LABEL_94:
          v17 = *++v4;
          if (v17 >= -112)
          {
            goto LABEL_97;
          }
        }
      }

      else
      {
LABEL_76:
        if (v7 == 237)
        {
LABEL_80:
          v14 = *++v4;
          if (v14 >= -96)
          {
            goto LABEL_97;
          }

          goto LABEL_96;
        }

        if (v7 == 240)
        {
LABEL_78:
          v13 = *++v4;
          if ((v13 - 144) >= 0x30)
          {
            goto LABEL_97;
          }
        }
      }

      goto LABEL_95;
    }

    if (v7 <= 0xC1)
    {
      break;
    }

LABEL_86:
    if (v7 < 0xE0)
    {
      goto LABEL_96;
    }

    if (v7 == 224)
    {
LABEL_88:
      v15 = *++v4;
      if ((v15 & 0xE0) != 0xA0)
      {
        goto LABEL_97;
      }

      goto LABEL_96;
    }

LABEL_95:
    v18 = *++v4;
    if (v18 >= -64)
    {
      goto LABEL_97;
    }

LABEL_96:
    v19 = *++v4;
    if (v19 >= -64)
    {
      goto LABEL_97;
    }

LABEL_46:
    v9 = *++v4;
    v7 = v9;
  }

  if (v7 - 11 < 0x35)
  {
    while (1)
    {
      do
      {
        v10 = *++v4;
        v7 = v10;
      }

      while (_scan_html_block_end_3_yybm[v10] < 0);
      if (v7 > 0xDF)
      {
        if (v7 > 0xEF)
        {
          if (v7 == 240)
          {
            goto LABEL_78;
          }

          goto LABEL_72;
        }

        if (v7 == 224)
        {
          goto LABEL_88;
        }

        if (v7 == 237)
        {
          goto LABEL_80;
        }

        goto LABEL_95;
      }

      if (v7 <= 0x3D)
      {
        if (v7 && v7 != 10)
        {
          goto LABEL_46;
        }

        goto LABEL_97;
      }

      v8 = v4 - 1;
      if (v7 != 62)
      {
        break;
      }

LABEL_65:
      v12 = v8[2];
      v11 = v8 + 2;
      v7 = v12;
      v4 = v11;
      if ((_scan_html_block_end_3_yybm[v12] & 0x40) != 0)
      {
        v3 = 1;
        goto LABEL_45;
      }

      if (v7 > 0xEC)
      {
        v3 = 1;
        v6 = v11;
        if (v7 <= 0xF0)
        {
          goto LABEL_76;
        }

        if (v7 < 0xF4)
        {
          goto LABEL_91;
        }

        if (v7 != 244)
        {
          return (v4 - a1);
        }

        goto LABEL_94;
      }

      if (v7 > 0xC1)
      {
        v3 = 1;
        v6 = v11;
        goto LABEL_86;
      }

      v3 = 1;
      v6 = v11;
      if (v7 - 11 > 0x34)
      {
        return (v4 - a1);
      }
    }

    if ((v7 & 0x80) == 0)
    {
      goto LABEL_46;
    }

    if (v7 >= 0xC2)
    {
      goto LABEL_96;
    }
  }

LABEL_97:
  LODWORD(v4) = v6;
  if (v3)
  {
    return (v4 - a1);
  }

  return v3;
}

uint64_t _scan_html_block_end_4(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = a1;
  if ((_scan_html_block_end_4_yybm[*a1] & 0x40) != 0)
  {
    goto LABEL_42;
  }

  if (v1 > 0xE0)
  {
    if (v1 <= 0xEF)
    {
      v2 = a1 + 1;
      v4 = a1[1];
      if (v1 == 237)
      {
        v3 = 0;
        v5 = a1 + 1;
        if (v4 < -96)
        {
          goto LABEL_85;
        }
      }

      else
      {
        v3 = 0;
        v5 = a1 + 1;
        if (v4 < -64)
        {
          goto LABEL_85;
        }
      }

      return v3;
    }

    if (v1 == 240)
    {
      v3 = 0;
      v2 = a1 + 1;
      if (a1[1] - 144 < 0x30)
      {
        goto LABEL_83;
      }

      return v3;
    }

    if (v1 < 0xF4)
    {
      v3 = 0;
      v2 = a1 + 1;
      if (a1[1] < -64)
      {
        goto LABEL_83;
      }

      return v3;
    }

    if (v1 == 244)
    {
      v3 = 0;
      v2 = a1 + 1;
      if (a1[1] < -112)
      {
        goto LABEL_83;
      }

      return v3;
    }

    return 0;
  }

  if (v1 > 0xA)
  {
    if ((v1 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    if (v1 >= 0xC2)
    {
      v2 = a1 + 1;
      v7 = a1[1];
      if (v1 == 224)
      {
        v3 = 0;
        v5 = a1 + 1;
        if ((v7 & 0xE0) == 0xA0)
        {
          goto LABEL_85;
        }
      }

      else
      {
        v3 = 0;
        v5 = a1 + 1;
        if (v7 < -64)
        {
          goto LABEL_86;
        }
      }

      return v3;
    }

    return 0;
  }

  v3 = 0;
  if (!*a1 || v1 == 10)
  {
    return v3;
  }

LABEL_12:
  v2 = a1 + 1;
  v6 = a1[1];
  if (v6 > 0xA)
  {
    v3 = 0;
    if ((v6 & 0x80) == 0)
    {
      v5 = a1 + 1;
      goto LABEL_38;
    }

    v5 = a1 + 1;
    if (v6 - 194 >= 0x33)
    {
      return v3;
    }

    while (1)
    {
LABEL_38:
      if (_scan_html_block_end_4_yybm[v6] < 0)
      {
        goto LABEL_86;
      }

      if (v6 > 0xEC)
      {
        if (v6 > 0xF0)
        {
          if (v6 < 0xF4)
          {
LABEL_69:
            v13 = *++v2;
            if (v13 >= -64)
            {
              goto LABEL_87;
            }
          }

          else
          {
            if (v6 != 244)
            {
              goto LABEL_87;
            }

LABEL_77:
            v15 = *++v2;
            if (v15 >= -112)
            {
LABEL_87:
              LODWORD(v2) = v5;
              if (v3)
              {
                return (v2 - a1);
              }

              return v3;
            }
          }
        }

        else
        {
          if (v6 == 237)
          {
LABEL_57:
            v11 = *++v2;
            if (v11 >= -96)
            {
              goto LABEL_87;
            }

            goto LABEL_85;
          }

          if (v6 == 240)
          {
LABEL_80:
            v16 = *++v2;
            if ((v16 - 144) >= 0x30)
            {
              goto LABEL_87;
            }
          }
        }
      }

      else if (v6 > 0xC1)
      {
        if (v6 < 0xE0)
        {
          goto LABEL_85;
        }

        if (v6 == 224)
        {
LABEL_73:
          v14 = *++v2;
          if ((v14 & 0xE0) != 0xA0)
          {
            goto LABEL_87;
          }

          goto LABEL_85;
        }
      }

      else
      {
        if (v6 - 11 > 0x33)
        {
          goto LABEL_87;
        }

LABEL_42:
        v8 = v2 + 1;
        while (1)
        {
          v2 = v8;
          v9 = *v8;
          if (_scan_html_block_end_4_yybm[v9] < 0)
          {
            v3 = 1;
            v5 = v2;
            goto LABEL_86;
          }

          if (v9 > 0xEC)
          {
            break;
          }

          if (v9 > 0xC1)
          {
            v12 = v9 == 224;
            if (v9 < 0xE0)
            {
              v3 = 1;
              v5 = v2;
              goto LABEL_85;
            }

            v3 = 1;
            v5 = v2;
            if (v12)
            {
              goto LABEL_73;
            }

            goto LABEL_84;
          }

          v10 = v9 - 11;
          v8 = v2 + 1;
          if (v10 >= 0x34)
          {
            return (v2 - a1);
          }
        }

        if (v9 > 0xF0)
        {
          if (v9 < 0xF4)
          {
            v3 = 1;
            v5 = v2;
            goto LABEL_69;
          }

          if (v9 == 244)
          {
            v3 = 1;
            v5 = v2;
            goto LABEL_77;
          }

          return (v2 - a1);
        }

        if (v9 == 240)
        {
          v3 = 1;
          v5 = v2;
          goto LABEL_80;
        }

        if (v9 == 237)
        {
          v3 = 1;
          v5 = v2;
          goto LABEL_57;
        }

        v3 = 1;
LABEL_83:
        v5 = v2;
      }

LABEL_84:
      v17 = *++v2;
      if (v17 >= -64)
      {
        goto LABEL_87;
      }

LABEL_85:
      v18 = *++v2;
      if (v18 >= -64)
      {
        goto LABEL_87;
      }

LABEL_86:
      v19 = *++v2;
      v6 = v19;
    }
  }

  v3 = 0;
  if (a1[1])
  {
    v5 = a1 + 1;
    if (v6 != 10)
    {
      goto LABEL_38;
    }
  }

  return v3;
}

uint64_t _scan_html_block_end_5(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 > 0xDF)
  {
    if (v1 <= 0xEF)
    {
      v4 = a1 + 1;
      v5 = a1[1];
      if (v1 == 224)
      {
        v3 = 0;
        v6 = a1 + 1;
        if ((v5 & 0xE0) == 0xA0)
        {
          goto LABEL_95;
        }
      }

      else if (v1 == 237)
      {
        v3 = 0;
        v6 = a1 + 1;
        if (v5 < -96)
        {
          goto LABEL_95;
        }
      }

      else
      {
        v3 = 0;
        v6 = a1 + 1;
        if (v5 < -64)
        {
          goto LABEL_95;
        }
      }

      return v3;
    }

    if (v1 == 240)
    {
      v3 = 0;
      v4 = a1 + 1;
      if (a1[1] - 144 >= 0x30)
      {
        return v3;
      }
    }

    else if (v1 >= 0xF4)
    {
      if (v1 != 244)
      {
        return 0;
      }

      v3 = 0;
      v4 = a1 + 1;
      if (a1[1] >= -112)
      {
        return v3;
      }
    }

    else
    {
      v3 = 0;
      v4 = a1 + 1;
      if (a1[1] >= -64)
      {
        return v3;
      }
    }

    v6 = v4;
    goto LABEL_94;
  }

  if (v1 <= 0x5C)
  {
    if (*a1)
    {
      v2 = v1 == 10;
    }

    else
    {
      v2 = 1;
    }

    if (!v2)
    {
      goto LABEL_21;
    }

    return 0;
  }

  if (v1 != 93)
  {
    if ((v1 & 0x80) == 0)
    {
LABEL_21:
      v4 = a1 + 1;
      v7 = a1[1];
      goto LABEL_22;
    }

    if (v1 > 0xC1)
    {
      v3 = 0;
      v4 = a1 + 1;
      if (a1[1] < -64)
      {
        v6 = a1 + 1;
        goto LABEL_43;
      }

      return v3;
    }

    return 0;
  }

  v4 = a1 + 1;
  v7 = a1[1];
  if (_scan_html_block_end_5_yybm[a1[1]] < 0)
  {
    v3 = 0;
    v6 = a1 + 1;
    goto LABEL_52;
  }

LABEL_22:
  if (v7 > 0xA)
  {
    v3 = 0;
    if ((v7 & 0x80) == 0)
    {
      v6 = v4;
      goto LABEL_44;
    }

    v6 = v4;
    if (v7 - 194 >= 0x33)
    {
      return v3;
    }

    while (1)
    {
LABEL_44:
      if ((_scan_html_block_end_5_yybm[v7] & 0x40) != 0)
      {
        goto LABEL_43;
      }

      if (v7 > 0xEC)
      {
        break;
      }

      if (v7 <= 0xC1)
      {
        if (v7 - 11 >= 0x53)
        {
          goto LABEL_96;
        }

        while (1)
        {
          v9 = *++v4;
          v7 = v9;
          if ((_scan_html_block_end_5_yybm[v9] & 0x40) != 0)
          {
            goto LABEL_43;
          }

          if (v7 > 0xEC)
          {
            goto LABEL_59;
          }

          if (v7 > 0xC1)
          {
            break;
          }

          if (v7 - 11 > 0x52)
          {
            goto LABEL_96;
          }

LABEL_52:
          v10 = v4 + 1;
          do
          {
            v12 = *v10++;
            v11 = v12;
          }

          while (_scan_html_block_end_5_yybm[v12] < 0);
          v4 = v10 - 1;
          if (v11 > 0xDF)
          {
            if (v11 <= 0xEF)
            {
              if (v11 == 237)
              {
                goto LABEL_82;
              }

              if (v11 == 224)
              {
                goto LABEL_69;
              }

              goto LABEL_94;
            }

            if (v11 == 240)
            {
              goto LABEL_80;
            }

            v14 = v11 == 244;
            if (v11 >= 0xF4)
            {
              goto LABEL_91;
            }

            goto LABEL_89;
          }

          if (v11 <= 0x3D)
          {
            if (v11 && v11 != 10)
            {
              goto LABEL_43;
            }

            goto LABEL_96;
          }

          if (v11 != 62)
          {
            if ((v11 & 0x80) == 0)
            {
              goto LABEL_43;
            }

            if (v11 >= 0xC2)
            {
              goto LABEL_95;
            }

            goto LABEL_96;
          }

          v15 = *v10;
          if ((_scan_html_block_end_5_yybm[*v10] & 0x40) != 0)
          {
            v3 = 1;
            v4 = v10;
            v6 = v10;
            goto LABEL_43;
          }

          if (v15 > 0xEC)
          {
            v3 = 1;
            if (v15 <= 0xF0)
            {
              if (v15 == 240)
              {
                v4 = v10;
                v6 = v10;
                goto LABEL_80;
              }

              if (v15 == 237)
              {
                v6 = v10;
                goto LABEL_83;
              }

              v4 = v10;
              v6 = v10;
              goto LABEL_94;
            }

            v24 = v15 == 244;
            if (v15 < 0xF4)
            {
              v4 = v10;
              v6 = v10;
              goto LABEL_89;
            }

            v4 = v10;
            v6 = v10;
            if (v24)
            {
              goto LABEL_93;
            }

            return (v10 - a1);
          }

          if (v15 > 0xC1)
          {
            v3 = 1;
            v23 = v15 == 224;
            if (v15 < 0xE0)
            {
              v4 = v10;
              v6 = v10;
              goto LABEL_95;
            }

            v4 = v10;
            v6 = v10;
            if (v23)
            {
              goto LABEL_69;
            }

            goto LABEL_94;
          }

          v16 = v15 - 11;
          v3 = 1;
          v4 = v10;
          v6 = v10;
          if (v16 >= 0x53)
          {
            return (v10 - a1);
          }
        }
      }

      if (v7 >= 0xE0)
      {
        if (v7 == 224)
        {
LABEL_69:
          v13 = *++v4;
          if ((v13 & 0xE0) != 0xA0)
          {
            goto LABEL_96;
          }

          goto LABEL_95;
        }

        goto LABEL_94;
      }

LABEL_95:
      v21 = *++v4;
      if (v21 >= -64)
      {
        goto LABEL_96;
      }

LABEL_43:
      v8 = *++v4;
      v7 = v8;
    }

LABEL_59:
    if (v7 > 0xF0)
    {
      v14 = v7 == 244;
      if (v7 < 0xF4)
      {
LABEL_89:
        v18 = *++v4;
        if (v18 >= -64)
        {
          goto LABEL_96;
        }
      }

      else
      {
LABEL_91:
        if (!v14)
        {
          goto LABEL_96;
        }

LABEL_93:
        v19 = *++v4;
        if (v19 >= -112)
        {
LABEL_96:
          LODWORD(v10) = v6;
          if (v3)
          {
            return (v10 - a1);
          }

          return v3;
        }
      }
    }

    else
    {
      if (v7 == 237)
      {
LABEL_82:
        v10 = v4;
LABEL_83:
        v4 = v10 + 1;
        if (v10[1] >= -96)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      }

      if (v7 == 240)
      {
LABEL_80:
        v17 = *++v4;
        if ((v17 - 144) >= 0x30)
        {
          goto LABEL_96;
        }
      }
    }

LABEL_94:
    v20 = *++v4;
    if (v20 >= -64)
    {
      goto LABEL_96;
    }

    goto LABEL_95;
  }

  v3 = 0;
  if (v7)
  {
    v6 = v4;
    if (v7 != 10)
    {
      goto LABEL_44;
    }
  }

  return v3;
}

uint64_t _scan_link_title(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 <= 0x26)
  {
    if (v1 == 34)
    {
      v2 = a1 + 1;
      v3 = a1[1];
      if (a1[1])
      {
        if ((v3 & 0x80) == 0 || v3 - 194 <= 0x32)
        {
          v4 = 0;
          v5 = a1 + 1;
          while (1)
          {
            if ((_scan_link_title_yybm[v3] & 0x10) != 0)
            {
              goto LABEL_41;
            }

            if (v3 > 0xE0)
            {
              break;
            }

            if (v3 > 0x5C)
            {
LABEL_27:
              if (v3 < 0xC2)
              {
                goto LABEL_170;
              }

LABEL_28:
              if (v3 == 224)
              {
                v7 = *++v2;
                if ((v7 & 0xE0) != 0xA0)
                {
                  goto LABEL_170;
                }
              }

              goto LABEL_40;
            }

            if (!v3)
            {
              goto LABEL_170;
            }

LABEL_11:
            if (v3 < 0x23)
            {
              goto LABEL_172;
            }

            ++v2;
            while (1)
            {
              v3 = *v2;
              if ((_scan_link_title_yybm[*v2] & 0x10) != 0)
              {
                break;
              }

              if (v3 > 0xE0)
              {
                goto LABEL_23;
              }

              if (v3 > 0x5C)
              {
                goto LABEL_27;
              }

              if (!*v2)
              {
                goto LABEL_170;
              }

              ++v2;
              if (v3 < 0x23)
              {
                v3 = *v2;
                if ((_scan_link_title_yybm[*v2] & 0x10) != 0)
                {
                  v4 = 1;
                  v5 = v2;
                  break;
                }

                if (v3 > 0xE0)
                {
                  if (v3 <= 0xEF)
                  {
                    v4 = 1;
                    v5 = v2;
                    goto LABEL_24;
                  }

                  if (v3 == 240)
                  {
                    v4 = 1;
                    v5 = v2;
                    goto LABEL_32;
                  }

                  if (v3 < 0xF4)
                  {
                    v4 = 1;
                    v5 = v2;
                    goto LABEL_35;
                  }

                  if (v3 == 244)
                  {
                    v4 = 1;
                    v5 = v2;
                    goto LABEL_38;
                  }

                  goto LABEL_173;
                }

                if (v3 <= 0x5C)
                {
                  if (!*v2)
                  {
                    goto LABEL_173;
                  }

                  v4 = 1;
                  v5 = v2;
                  goto LABEL_11;
                }

                if (v3 < 0xC2)
                {
                  goto LABEL_173;
                }

                v4 = 1;
                v5 = v2;
                goto LABEL_28;
              }
            }

LABEL_41:
            v13 = *++v2;
            v3 = v13;
          }

LABEL_23:
          if (v3 > 0xEF)
          {
            if (v3 == 240)
            {
LABEL_32:
              v8 = *++v2;
              if ((v8 - 144) >= 0x30)
              {
                goto LABEL_170;
              }
            }

            else if (v3 >= 0xF4)
            {
              if (v3 != 244)
              {
                goto LABEL_170;
              }

LABEL_38:
              v10 = *++v2;
              if (v10 >= -112)
              {
                goto LABEL_170;
              }
            }

            else
            {
LABEL_35:
              v9 = *++v2;
              if (v9 >= -64)
              {
                goto LABEL_170;
              }
            }
          }

          else
          {
LABEL_24:
            if (v3 == 237)
            {
              v6 = *++v2;
              if (v6 >= -96)
              {
                goto LABEL_170;
              }

              goto LABEL_40;
            }
          }

          v11 = *++v2;
          if (v11 >= -64)
          {
            goto LABEL_170;
          }

LABEL_40:
          v12 = *++v2;
          if (v12 >= -64)
          {
            goto LABEL_170;
          }

          goto LABEL_41;
        }
      }
    }

    return 0;
  }

  if (v1 == 39)
  {
    v2 = a1 + 1;
    v14 = a1[1];
    if (!a1[1] || (v14 & 0x80) != 0 && v14 - 194 > 0x32)
    {
      return 0;
    }

    v4 = 0;
    v5 = a1 + 1;
    while (1)
    {
      if ((_scan_link_title_yybm[v14] & 0x40) != 0)
      {
        goto LABEL_92;
      }

      if (v14 > 0xE0)
      {
        break;
      }

      if (v14 > 0x5C)
      {
LABEL_78:
        if (v14 < 0xC2)
        {
          goto LABEL_170;
        }

LABEL_79:
        if (v14 == 224)
        {
          v16 = *++v2;
          if ((v16 & 0xE0) != 0xA0)
          {
            goto LABEL_170;
          }
        }

        goto LABEL_91;
      }

      if (!v14)
      {
        goto LABEL_170;
      }

LABEL_62:
      if (v14 < 0x28)
      {
        goto LABEL_172;
      }

      ++v2;
      while (1)
      {
        v14 = *v2;
        if ((_scan_link_title_yybm[*v2] & 0x40) != 0)
        {
          break;
        }

        if (v14 > 0xE0)
        {
          goto LABEL_74;
        }

        if (v14 > 0x5C)
        {
          goto LABEL_78;
        }

        if (!*v2)
        {
          goto LABEL_170;
        }

        ++v2;
        if (v14 < 0x28)
        {
          v14 = *v2;
          if ((_scan_link_title_yybm[*v2] & 0x40) != 0)
          {
            v4 = 2;
            v5 = v2;
            break;
          }

          if (v14 > 0xE0)
          {
            if (v14 <= 0xEF)
            {
              v4 = 2;
              v5 = v2;
              goto LABEL_75;
            }

            if (v14 == 240)
            {
              v4 = 2;
              v5 = v2;
              goto LABEL_83;
            }

            if (v14 < 0xF4)
            {
              v4 = 2;
              v5 = v2;
              goto LABEL_86;
            }

            if (v14 == 244)
            {
              v4 = 2;
              v5 = v2;
              goto LABEL_89;
            }

            goto LABEL_173;
          }

          if (v14 <= 0x5C)
          {
            if (!*v2)
            {
              goto LABEL_173;
            }

            v4 = 2;
            v5 = v2;
            goto LABEL_62;
          }

          if (v14 < 0xC2)
          {
            goto LABEL_173;
          }

          v4 = 2;
          v5 = v2;
          goto LABEL_79;
        }
      }

LABEL_92:
      v22 = *++v2;
      v14 = v22;
    }

LABEL_74:
    if (v14 > 0xEF)
    {
      if (v14 == 240)
      {
LABEL_83:
        v17 = *++v2;
        if ((v17 - 144) >= 0x30)
        {
          goto LABEL_170;
        }
      }

      else if (v14 >= 0xF4)
      {
        if (v14 != 244)
        {
          goto LABEL_170;
        }

LABEL_89:
        v19 = *++v2;
        if (v19 >= -112)
        {
          goto LABEL_170;
        }
      }

      else
      {
LABEL_86:
        v18 = *++v2;
        if (v18 >= -64)
        {
          goto LABEL_170;
        }
      }
    }

    else
    {
LABEL_75:
      if (v14 == 237)
      {
        v15 = *++v2;
        if (v15 >= -96)
        {
          goto LABEL_170;
        }

        goto LABEL_91;
      }
    }

    v20 = *++v2;
    if (v20 >= -64)
    {
      goto LABEL_170;
    }

LABEL_91:
    v21 = *++v2;
    if (v21 >= -64)
    {
      goto LABEL_170;
    }

    goto LABEL_92;
  }

  if (v1 >= 0x29)
  {
    return 0;
  }

  v2 = a1 + 1;
  v23 = a1[1];
  if (v23 > 0x28)
  {
    if ((v23 & 0x80) != 0 && v23 - 194 >= 0x33)
    {
      return 0;
    }
  }

  else
  {
    v4 = 0;
    if (!a1[1] || v23 == 40)
    {
      return v4;
    }
  }

  v4 = 0;
  v5 = a1 + 1;
LABEL_114:
  if (_scan_link_title_yybm[v23] < 0)
  {
    goto LABEL_156;
  }

  if (v23 > 0xE0)
  {
    if (v23 > 0xEF)
    {
LABEL_143:
      if (v23 == 240)
      {
LABEL_144:
        v27 = *++v2;
        if ((v27 - 144) >= 0x30)
        {
          goto LABEL_170;
        }
      }

      else if (v23 >= 0xF4)
      {
        if (v23 != 244)
        {
          goto LABEL_170;
        }

LABEL_153:
        v29 = *++v2;
        if (v29 >= -112)
        {
LABEL_170:
          if (v4)
          {
            return (v5 - a1);
          }

          return v4;
        }
      }

      else
      {
LABEL_147:
        v28 = *++v2;
        if (v28 >= -64)
        {
          goto LABEL_170;
        }
      }

LABEL_154:
      v30 = *++v2;
      if (v30 >= -64)
      {
        goto LABEL_170;
      }

      goto LABEL_155;
    }

LABEL_132:
    if (v23 != 237)
    {
      goto LABEL_154;
    }

LABEL_133:
    v25 = *++v2;
    if (v25 >= -96)
    {
      goto LABEL_170;
    }

    goto LABEL_155;
  }

  if (v23 > 0x5C)
  {
    if (v23 < 0xC2)
    {
      goto LABEL_170;
    }

LABEL_136:
    if (v23 == 224)
    {
LABEL_137:
      v26 = *++v2;
      if ((v26 & 0xE0) != 0xA0)
      {
        goto LABEL_170;
      }
    }

    goto LABEL_155;
  }

  if (v23 < 0x29)
  {
    goto LABEL_170;
  }

  if (v23 == 41)
  {
    goto LABEL_172;
  }

  while (2)
  {
    v2 += 2;
    while (1)
    {
      v23 = *(v2 - 1);
      if (v23 > 0xDF)
      {
        --v2;
        if (v23 > 0xEF)
        {
          goto LABEL_143;
        }

        if (v23 != 237)
        {
          if (v23 == 224)
          {
            goto LABEL_137;
          }

          goto LABEL_154;
        }

        goto LABEL_133;
      }

      if (v23 <= 0x5B)
      {
        break;
      }

      ++v2;
      if (v23 != 92)
      {
        v2 -= 2;
        if ((v23 & 0x80) == 0)
        {
          goto LABEL_156;
        }

        if (v23 < 0xC2)
        {
          goto LABEL_170;
        }

LABEL_155:
        v31 = *++v2;
        if (v31 >= -64)
        {
          goto LABEL_170;
        }

LABEL_156:
        v32 = *++v2;
        v23 = v32;
        goto LABEL_114;
      }
    }

    if (v23 != 41)
    {
      if (!*(v2 - 1))
      {
        goto LABEL_170;
      }

      --v2;
      goto LABEL_156;
    }

    v23 = *v2;
    if (_scan_link_title_yybm[*v2] < 0)
    {
      v4 = 3;
      v5 = v2;
      goto LABEL_156;
    }

    if (v23 > 0xE0)
    {
      if (v23 <= 0xEF)
      {
        v4 = 3;
        v5 = v2;
        goto LABEL_132;
      }

      if (v23 == 240)
      {
        v4 = 3;
        v5 = v2;
        goto LABEL_144;
      }

      if (v23 < 0xF4)
      {
        v4 = 3;
        v5 = v2;
        goto LABEL_147;
      }

      if (v23 == 244)
      {
        v4 = 3;
        v5 = v2;
        goto LABEL_153;
      }

      goto LABEL_173;
    }

    if (v23 > 0x5C)
    {
      if (v23 >= 0xC2)
      {
        v4 = 3;
        v5 = v2;
        goto LABEL_136;
      }

      goto LABEL_173;
    }

    if (v23 < 0x29)
    {
LABEL_173:
      v5 = v2;
      return (v5 - a1);
    }

    v4 = 3;
    v5 = v2;
    if (v23 != 41)
    {
      continue;
    }

    break;
  }

LABEL_172:
  v5 = v2 + 1;
  return (v5 - a1);
}

uint64_t _scan_spacechars(unsigned __int8 *a1)
{
  if ((_scan_spacechars_yybm[*a1] & 0x80000000) == 0)
  {
    return 0;
  }

  result = 0;
  v3 = a1 + 1;
  do
  {
    v4 = _scan_spacechars_yybm[v3[result++]];
  }

  while (v4 < 0);
  return result;
}

uint64_t _scan_atx_heading_start(_BYTE *a1)
{
  if (*a1 != 35)
  {
    return 0;
  }

  v1 = a1 + 1;
  v2 = a1[1];
  if (_scan_atx_heading_start_yybm[a1[1]] < 0)
  {
    goto LABEL_29;
  }

  if (v2 <= 0xC)
  {
    goto LABEL_4;
  }

  if (v2 != 13)
  {
    if (v2 != 35)
    {
      return 0;
    }

    v1 = a1 + 2;
    v2 = a1[2];
    if (_scan_atx_heading_start_yybm[a1[2]] < 0)
    {
      goto LABEL_29;
    }

    if (v2 <= 0xC)
    {
      goto LABEL_4;
    }

    if (v2 == 13)
    {
      goto LABEL_31;
    }

    if (v2 != 35)
    {
      return 0;
    }

    v1 = a1 + 3;
    v2 = a1[3];
    if (_scan_atx_heading_start_yybm[a1[3]] < 0)
    {
      goto LABEL_29;
    }

    if (v2 <= 0xC)
    {
      goto LABEL_4;
    }

    if (v2 == 13)
    {
      goto LABEL_31;
    }

    if (v2 != 35)
    {
      return 0;
    }

    v1 = a1 + 4;
    v2 = a1[4];
    if (_scan_atx_heading_start_yybm[a1[4]] < 0)
    {
      goto LABEL_29;
    }

    if (v2 <= 0xC)
    {
      goto LABEL_4;
    }

    if (v2 == 13)
    {
      goto LABEL_31;
    }

    if (v2 != 35)
    {
      return 0;
    }

    v1 = a1 + 5;
    v2 = a1[5];
    if (_scan_atx_heading_start_yybm[a1[5]] < 0)
    {
      goto LABEL_29;
    }

    if (v2 <= 0xC)
    {
LABEL_4:
      if (v2 - 9 < 2)
      {
        goto LABEL_31;
      }

      return 0;
    }

    if (v2 != 13)
    {
      if (v2 != 35)
      {
        return 0;
      }

      v1 = a1 + 6;
      v3 = a1[6];
      if ((_scan_atx_heading_start_yybm[a1[6]] & 0x80000000) == 0)
      {
        if (v3 >= 9 && (v3 < 0xB || v3 == 13))
        {
          goto LABEL_31;
        }

        return 0;
      }

      do
      {
LABEL_29:
        v5 = *++v1;
      }

      while (_scan_atx_heading_start_yybm[v5] < 0);
      return (v1 - a1);
    }
  }

LABEL_31:
  LODWORD(v1) = v1 + 1;
  return (v1 - a1);
}

uint64_t _scan_setext_heading_line(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 == 61)
  {
    v7 = a1[1];
    v5 = a1 + 1;
    v6 = v7;
    if ((_scan_setext_heading_line_yybm[v7] & 0x80000000) == 0)
    {
      if (v6 <= 0xC)
      {
        if (v6 - 9 < 2)
        {
          goto LABEL_44;
        }

        return 0;
      }

      if (v6 != 13 && v6 != 32)
      {
        return 0;
      }

      while (1)
      {
LABEL_44:
        if (v6 > 0xC)
        {
          if (v6 != 32)
          {
            return v6 == 13;
          }
        }

        else
        {
          if (v6 < 9)
          {
            return 0;
          }

          if (v6 != 9)
          {
            return v6 <= 0xA;
          }
        }

LABEL_43:
        v14 = *++v5;
        v6 = v14;
      }
    }

    do
    {
      v9 = *++v5;
      v8 = v9;
    }

    while (_scan_setext_heading_line_yybm[v9] < 0);
    if (v8 > 0xC)
    {
      if (v8 != 13)
      {
        if (v8 == 32)
        {
          goto LABEL_43;
        }

        return 0;
      }
    }

    else
    {
      if (v8 < 9)
      {
        return 0;
      }

      if (v8 == 9)
      {
        goto LABEL_43;
      }

      if (v8 >= 0xB)
      {
        return 0;
      }
    }

    return 1;
  }

  else
  {
    if (v1 != 45)
    {
      return 0;
    }

    i = a1 + 1;
    v3 = a1[1];
    v4 = _scan_setext_heading_line_yybm[a1[1]];
    if ((v4 & 0x40) != 0)
    {
      for (i = a1 + 2; ; ++i)
      {
        v10 = *i;
        if ((_scan_setext_heading_line_yybm[*i] & 0x20) != 0)
        {
          goto LABEL_34;
        }

        if (v10 <= 0xC)
        {
          break;
        }

        if (v10 != 45)
        {
          if (v10 == 13)
          {
            return 2;
          }

          return 0;
        }
      }

      if (v10 - 9 < 2)
      {
        return 2;
      }

      return 0;
    }

    if (v3 > 0xC)
    {
      if (v3 != 13 && v3 != 32)
      {
        return 0;
      }
    }

    else if (v3 - 9 >= 2)
    {
      return 0;
    }

    while ((v4 & 0x20) != 0)
    {
LABEL_34:
      v11 = *++i;
      v3 = v11;
      v4 = _scan_setext_heading_line_yybm[v11];
    }

    if (v3 >= 9 && (v3 >= 0xB ? (v12 = v3 == 13) : (v12 = 1), v12))
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t _scan_open_code_fence(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 != 126)
  {
    if (v1 == 96 && a1[1] == 96 && (_scan_open_code_fence_yybm[a1[2]] & 0x10) != 0)
    {
      v2 = a1 + 1;
      LODWORD(v3) = 2;
      do
      {
        v4 = v3;
        v5 = v2[2];
        ++v2;
        v3 = (v3 + 1);
      }

      while ((_scan_open_code_fence_yybm[v5] & 0x10) != 0);
      v6 = v2 + 1;
      if (v5 > 0xDF)
      {
        if (v5 > 0xEF)
        {
          if (v5 != 240)
          {
            goto LABEL_53;
          }

          goto LABEL_51;
        }

        if (v5 != 224)
        {
          if (v5 == 237)
          {
            goto LABEL_62;
          }

          goto LABEL_59;
        }

        goto LABEL_46;
      }

      if (v5 <= 0xC)
      {
        result = v5;
        if (v5)
        {
          result = v3;
          if (v5 != 10)
          {
            goto LABEL_41;
          }
        }

        return result;
      }

      result = v3;
      if (v5 == 13)
      {
        return result;
      }

      if ((v5 & 0x80) != 0)
      {
        if (v5 >= 0xC2)
        {
          goto LABEL_60;
        }

        return 0;
      }

      do
      {
        do
        {
LABEL_41:
          v11 = *++v6;
          LODWORD(v5) = v11;
        }

        while ((_scan_open_code_fence_yybm[v11] & 0x40) != 0);
        v2 = v6 - 1;
        if (v5 > 0xEC)
        {
          if (v5 > 0xF0)
          {
LABEL_53:
            if (v5 >= 0xF4)
            {
              if (v5 != 244)
              {
                return 0;
              }

              v13 = v2[2];
              v12 = v2 + 2;
              if (v13 >= -112)
              {
                return 0;
              }

              v6 = v12;
            }

            else
            {
              v6 = v2 + 2;
              if (v2[2] >= -64)
              {
                return 0;
              }
            }

            goto LABEL_59;
          }

          if (v5 != 237)
          {
            if (v5 == 240)
            {
LABEL_51:
              v6 = v2 + 2;
              if (v2[2] - 144 >= 0x30)
              {
                return 0;
              }
            }

LABEL_59:
            v14 = *++v6;
            if (v14 >= -64)
            {
              return 0;
            }

            goto LABEL_60;
          }

LABEL_62:
          v6 = v2 + 2;
          if (v2[2] >= -96)
          {
            return 0;
          }
        }

        else
        {
          if (v5 <= 0xC1)
          {
            goto LABEL_64;
          }

          if (v5 >= 0xE0)
          {
            if (v5 != 224)
            {
              goto LABEL_59;
            }

LABEL_46:
            v6 = v2 + 2;
            if ((v2[2] & 0xE0) != 0xA0)
            {
              return 0;
            }
          }
        }

LABEL_60:
        v15 = *++v6;
      }

      while (v15 < -64);
    }

    return 0;
  }

  if (a1[1] != 126 || (_scan_open_code_fence_yybm[a1[2]] & 0x20) == 0)
  {
    return 0;
  }

  v8 = a1 + 1;
  LODWORD(v9) = 2;
  do
  {
    v4 = v9;
    v5 = v8[2];
    ++v8;
    v9 = (v9 + 1);
  }

  while ((_scan_open_code_fence_yybm[v5] & 0x20) != 0);
  v10 = v8 + 1;
  if (v5 > 0xDF)
  {
    if (v5 > 0xEF)
    {
      if (v5 != 240)
      {
        goto LABEL_79;
      }

      goto LABEL_77;
    }

    if (v5 != 224)
    {
      if (v5 == 237)
      {
        goto LABEL_89;
      }

      goto LABEL_85;
    }

    goto LABEL_72;
  }

  if (v5 > 0xC)
  {
    result = v9;
    if (v5 == 13)
    {
      return result;
    }

    if ((v5 & 0x80) != 0)
    {
      if (v5 >= 0xC2)
      {
        goto LABEL_86;
      }

      return 0;
    }

    while (1)
    {
      do
      {
LABEL_67:
        v16 = *++v10;
        LODWORD(v5) = v16;
      }

      while (_scan_open_code_fence_yybm[v16] < 0);
      v8 = v10 - 1;
      if (v5 > 0xEC)
      {
        if (v5 > 0xF0)
        {
LABEL_79:
          if (v5 >= 0xF4)
          {
            if (v5 != 244)
            {
              return 0;
            }

            v18 = v8[2];
            v17 = v8 + 2;
            if (v18 >= -112)
            {
              return 0;
            }

            v10 = v17;
          }

          else
          {
            v10 = v8 + 2;
            if (v8[2] >= -64)
            {
              return 0;
            }
          }

          goto LABEL_85;
        }

        if (v5 != 237)
        {
          if (v5 == 240)
          {
LABEL_77:
            v10 = v8 + 2;
            if (v8[2] - 144 >= 0x30)
            {
              return 0;
            }
          }

LABEL_85:
          v19 = *++v10;
          if (v19 >= -64)
          {
            return 0;
          }

          goto LABEL_86;
        }

LABEL_89:
        v10 = v8 + 2;
        if (v8[2] >= -96)
        {
          return 0;
        }
      }

      else
      {
        if (v5 <= 0xC1)
        {
LABEL_64:
          if ((v5 - 14) >= 0xFFFFFFF3)
          {
            return (v4 + 1);
          }

          else
          {
            return 0;
          }
        }

        if (v5 >= 0xE0)
        {
          if (v5 != 224)
          {
            goto LABEL_85;
          }

LABEL_72:
          v10 = v8 + 2;
          if ((v8[2] & 0xE0) != 0xA0)
          {
            return 0;
          }
        }
      }

LABEL_86:
      v20 = *++v10;
      if (v20 >= -64)
      {
        return 0;
      }
    }
  }

  result = v5;
  if (v5)
  {
    result = v9;
    if (v5 != 10)
    {
      goto LABEL_67;
    }
  }

  return result;
}

unint64_t _scan_close_code_fence(unint64_t result)
{
  v1 = *result;
  if (v1 == 126)
  {
    if (*(result + 1) != 126 || (_scan_close_code_fence_yybm[*(result + 2)] & 0x40) == 0)
    {
      return 0;
    }

    v5 = (result + 3);
    LODWORD(result) = 2;
    do
    {
      v7 = *v5++;
      v6 = v7;
      result = (result + 1);
    }

    while ((_scan_close_code_fence_yybm[v7] & 0x40) != 0);
    if (v6 > 0xC)
    {
      if (v6 == 13)
      {
        return result;
      }

      if (v6 != 32)
      {
        return 0;
      }

      do
      {
LABEL_31:
        while (1)
        {
          v11 = *v5++;
          v10 = v11;
          if (v11 <= 0xC)
          {
            break;
          }

          if (v10 != 32)
          {
            if (v10 != 13)
            {
              return 0;
            }

            return result;
          }
        }

        if (v10 < 9)
        {
          return 0;
        }
      }

      while (v10 == 9);
      if (v10 > 0xA)
      {
        return 0;
      }
    }

    else
    {
      if (v6 < 9)
      {
        return 0;
      }

      if (v6 == 9)
      {
        goto LABEL_31;
      }

      if (v6 >= 0xB)
      {
        return 0;
      }
    }
  }

  else
  {
    if (v1 != 96 || *(result + 1) != 96 || (_scan_close_code_fence_yybm[*(result + 2)] & 0x20) == 0)
    {
      return 0;
    }

    v2 = (result + 3);
    LODWORD(result) = 2;
    do
    {
      v4 = *v2++;
      v3 = v4;
      result = (result + 1);
    }

    while ((_scan_close_code_fence_yybm[v4] & 0x20) != 0);
    if (v3 > 0xC)
    {
      if (v3 == 13)
      {
        return result;
      }

      if (v3 != 32)
      {
        return 0;
      }
    }

    else
    {
      if (v3 < 9)
      {
        return 0;
      }

      if (v3 != 9)
      {
        if (v3 < 0xB)
        {
          return result;
        }

        return 0;
      }
    }

    do
    {
      v9 = *v2++;
      v8 = v9;
    }

    while (_scan_close_code_fence_yybm[v9] < 0);
    if (v8 < 9 || v8 >= 0xB && v8 != 13)
    {
      return 0;
    }
  }

  return result;
}

uint64_t _scan_dangerous_url(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 <= 0x56)
  {
    if (v1 <= 0x46)
    {
      if (v1 != 68)
      {
        if (v1 != 70)
        {
          return 0;
        }

LABEL_9:
        if ((a1[1] & 0xDF) != 0x49)
        {
          return 0;
        }

        if ((a1[2] & 0xDF) != 0x4C)
        {
          return 0;
        }

        v2 = a1 + 3;
        if ((a1[3] & 0xDF) != 0x45)
        {
          return 0;
        }

LABEL_12:
        if (v2[1] == 58)
        {
          v3 = v2 + 2;
          return (v3 - a1);
        }

        return 0;
      }

      goto LABEL_23;
    }

    if (v1 != 74)
    {
      if (v1 != 86)
      {
        return 0;
      }

LABEL_39:
      if ((a1[1] & 0xDF) != 0x42)
      {
        return 0;
      }

      v4 = 1;
      goto LABEL_41;
    }

    goto LABEL_19;
  }

  if (v1 > 0x66)
  {
    if (v1 > 0x6A)
    {
      if (v1 != 118)
      {
        return 0;
      }

      goto LABEL_39;
    }

    if (v1 != 106)
    {
      return 0;
    }

LABEL_19:
    if ((a1[1] & 0xDF) != 0x41 || (a1[2] & 0xDF) != 0x56 || (a1[3] & 0xDF) != 0x41)
    {
      return 0;
    }

    v4 = 3;
LABEL_41:
    v6 = &a1[v4];
    if ((v6[1] & 0xDF) != 0x53)
    {
      return 0;
    }

    if ((v6[2] & 0xDF) != 0x43)
    {
      return 0;
    }

    if ((v6[3] & 0xDF) != 0x52)
    {
      return 0;
    }

    if ((v6[4] & 0xDF) != 0x49)
    {
      return 0;
    }

    if ((v6[5] & 0xDF) != 0x50)
    {
      return 0;
    }

    v7 = v6[6];
    v2 = v6 + 6;
    if ((v7 & 0xFFFFFFDF) != 0x54)
    {
      return 0;
    }

    goto LABEL_12;
  }

  if (v1 != 100)
  {
    if (v1 != 102)
    {
      return 0;
    }

    goto LABEL_9;
  }

LABEL_23:
  if ((a1[1] & 0xDF) != 0x41 || (a1[2] & 0xDF) != 0x54 || (a1[3] & 0xDF) != 0x41 || a1[4] != 58)
  {
    return 0;
  }

  v3 = a1 + 5;
  if ((a1[5] & 0xDF) != 0x49 || (a1[6] & 0xDF) != 0x4D || (a1[7] & 0xDF) != 0x41 || (a1[8] & 0xDF) != 0x47 || (a1[9] & 0xDF) != 0x45 || a1[10] != 47)
  {
    return (v3 - a1);
  }

  v5 = a1[11];
  if (v5 > 0x57)
  {
    if (v5 <= 0x6A)
    {
      if (v5 != 103)
      {
        if (v5 != 106)
        {
          return (v3 - a1);
        }

        goto LABEL_51;
      }

      goto LABEL_63;
    }

    if (v5 > 0x70)
    {
      if (v5 != 119)
      {
        return (v3 - a1);
      }

      goto LABEL_67;
    }

    if (v5 != 112)
    {
      return (v3 - a1);
    }

LABEL_59:
    if ((a1[12] & 0xDF) != 0x4E)
    {
      return (v3 - a1);
    }

    v9 = 12;
    goto LABEL_61;
  }

  if (v5 > 0x4A)
  {
    if (v5 != 80)
    {
      if (v5 != 87)
      {
        return (v3 - a1);
      }

LABEL_67:
      if ((a1[12] & 0xDF) == 0x45 && (a1[13] & 0xDF) == 0x42 && (a1[14] & 0xDF) == 0x50)
      {
        return 0;
      }

      return (v3 - a1);
    }

    goto LABEL_59;
  }

  if (v5 != 71)
  {
    if (v5 != 74)
    {
      return (v3 - a1);
    }

LABEL_51:
    if ((a1[12] & 0xDF) != 0x50 || (a1[13] & 0xDF) != 0x45)
    {
      return (v3 - a1);
    }

    v9 = 13;
LABEL_61:
    if ((a1[v9 + 1] & 0xDF) != 0x47)
    {
      return (v3 - a1);
    }

    return 0;
  }

LABEL_63:
  if ((a1[12] & 0xDF) == 0x49 && (a1[13] & 0xDF) == 0x46)
  {
    return 0;
  }

  return (v3 - a1);
}

unint64_t _scan_footnote_definition(unint64_t result)
{
  if (*result != 91)
  {
    return 0;
  }

  if (*(result + 1) != 94)
  {
    return 0;
  }

  v1 = (result + 2);
  v2 = *(result + 2);
  if (v2 == 93)
  {
    return 0;
  }

  while (1)
  {
    if ((_scan_footnote_definition_yybm[v2] & 0x40) != 0)
    {
      goto LABEL_24;
    }

    if (v2 > 0xEC)
    {
      if (v2 > 0xF0)
      {
        if (v2 >= 0xF4)
        {
          if (v2 != 244)
          {
            return 0;
          }

          v6 = *++v1;
          if (v6 >= -112)
          {
            return 0;
          }
        }

        else
        {
          v5 = *++v1;
          if (v5 >= -64)
          {
            return 0;
          }
        }
      }

      else
      {
        if (v2 == 237)
        {
          v10 = *++v1;
          if (v10 >= -96)
          {
            return 0;
          }

          goto LABEL_23;
        }

        if (v2 == 240)
        {
          v4 = *++v1;
          if ((v4 - 144) >= 0x30)
          {
            return 0;
          }
        }
      }

      goto LABEL_22;
    }

    if (v2 <= 0xC1)
    {
      break;
    }

    if (v2 < 0xE0)
    {
      goto LABEL_23;
    }

    if (v2 == 224)
    {
      v3 = *++v1;
      if ((v3 & 0xE0) != 0xA0)
      {
        return 0;
      }

      goto LABEL_23;
    }

LABEL_22:
    v7 = *++v1;
    if (v7 >= -64)
    {
      return 0;
    }

LABEL_23:
    v8 = *++v1;
    if (v8 >= -64)
    {
      return 0;
    }

LABEL_24:
    v9 = *++v1;
    v2 = v9;
  }

  if (v2 - 33 >= 0x3D || v1[1] != 58)
  {
    return 0;
  }

  LODWORD(result) = v1 - result + 1;
  v11 = v1 + 2;
  do
  {
    v12 = *v11++;
    result = (result + 1);
  }

  while (_scan_footnote_definition_yybm[v12] < 0);
  return result;
}

_DWORD *S_outc(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (!a3)
  {
    goto LABEL_20;
  }

  if (a4 > 8211)
  {
    if (a4 <= 8216)
    {
      if (a4 == 8212)
      {
        v4 = "\\[em]";
        return cmark_render_ascii(a1, v4);
      }

      if (a4 == 8216)
      {
        v4 = "\\[oq]";
        return cmark_render_ascii(a1, v4);
      }
    }

    else
    {
      switch(a4)
      {
        case 8217:
          v4 = "\\[cq]";
          return cmark_render_ascii(a1, v4);
        case 8220:
          v4 = "\\[lq]";
          return cmark_render_ascii(a1, v4);
        case 8221:
          v4 = "\\[rq]";
          return cmark_render_ascii(a1, v4);
      }
    }

    goto LABEL_20;
  }

  if (a4 <= 45)
  {
    if (a4 == 39)
    {
      if (*(a1 + 40) == 1)
      {
        v4 = "\\&'";
        return cmark_render_ascii(a1, v4);
      }

      v6 = 39;
      return cmark_render_code_point(a1, v6);
    }

    if (a4 == 45)
    {
      v4 = "\\-";
      return cmark_render_ascii(a1, v4);
    }

LABEL_20:
    v6 = a4;
    return cmark_render_code_point(a1, v6);
  }

  if (a4 != 46)
  {
    if (a4 == 92)
    {
      v4 = "\\e";
      return cmark_render_ascii(a1, v4);
    }

    if (a4 == 8211)
    {
      v4 = "\\[en]";
      return cmark_render_ascii(a1, v4);
    }

    goto LABEL_20;
  }

  if (*(a1 + 40) == 1)
  {
    v4 = "\\&.";
    return cmark_render_ascii(a1, v4);
  }

  v6 = 46;
  return cmark_render_code_point(a1, v6);
}

uint64_t S_render_node(uint64_t a1, uint64_t a2, int a3, char a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 28);
  v8 = v7 > 0 && (a4 & 0x10) == 0;
  v9 = *(a2 + 104);
  if (v9)
  {
    v10 = *(v9 + 128);
    if (v10)
    {
      goto LABEL_62;
    }
  }

  v11 = *(a2 + 100);
  if (v11 > 0xC000)
  {
    if (*(a2 + 100) > 0xC005u)
    {
      if (*(a2 + 100) <= 0xC008u)
      {
        if (v11 == 49158)
        {
          v22 = *(a1 + 72);
          if (a3 == 2)
          {
            v23 = cmark_node_get_on_enter(a2);
          }

          else
          {
            v23 = cmark_node_get_on_exit(a2);
          }

          v22(a1, a2, v23, 0, 0);
          return 1;
        }

        v10 = *(a1 + 72);
LABEL_62:
        v10();
        return 1;
      }

      if (v11 == 49161)
      {
        if (a3 == 2)
        {
          return 1;
        }

        (*(a1 + 72))(a1, a2, " (", 0, 0);
        v26 = *(a1 + 72);
        url = cmark_node_get_url(a2);
        v26(a1, a2, url, v8, 3);
        v10 = *(a1 + 72);
        goto LABEL_62;
      }

      if (v11 == 49162)
      {
        v10 = *(a1 + 72);
        goto LABEL_62;
      }

      v15 = 49163;
LABEL_34:
      if (v11 == v15)
      {
        return 1;
      }

LABEL_76:
      S_render_node_cold_1();
    }

    if (*(a2 + 100) <= 0xC002u)
    {
      if (v11 == 49153)
      {
        v18 = *(a1 + 72);
        literal = cmark_node_get_literal(a2);
        v18(a1, a2, literal, v8, 1);
        return 1;
      }

      if (v11 != 49154)
      {
        goto LABEL_76;
      }

      if ((a4 & 4) == 0)
      {
        if (!(v7 | a4 & 0x10))
        {
          goto LABEL_74;
        }

        v10 = *(a1 + 72);
        goto LABEL_62;
      }
    }

    else if (v11 != 49155)
    {
      if (v11 == 49156)
      {
        (*(a1 + 72))(a1, a2, "\\f[C]", 0, 0);
        v20 = *(a1 + 72);
        v21 = cmark_node_get_literal(a2);
        v20(a1, a2, v21, v8, 1);
        v10 = *(a1 + 72);
        goto LABEL_62;
      }

      v15 = 49157;
      goto LABEL_34;
    }

    (*(a1 + 72))(a1, a2, ".PD 0\n.P\n.PD", 0, 0);
    goto LABEL_74;
  }

  if (*(a2 + 100) <= 0x8005u)
  {
    if (*(a2 + 100) <= 0x8002u)
    {
      if (v11 == 32769)
      {
        return 1;
      }

      if (v11 != 32770)
      {
        goto LABEL_76;
      }

      (*(a1 + 56))(a1);
      v16 = *(a1 + 72);
      if (a3 == 2)
      {
        v17 = ".RS";
      }

      else
      {
        v17 = ".RE";
      }
    }

    else
    {
      if (v11 == 32771)
      {
        return 1;
      }

      if (v11 != 32772)
      {
        (*(a1 + 56))(a1);
        (*(a1 + 72))(a1, a2, ".IP\n.nf\n\\f[C]\n", 0, 0);
        v13 = *(a1 + 72);
        v14 = cmark_node_get_literal(a2);
        v13(a1, a2, v14, 0, 1);
        (*(a1 + 56))(a1);
        (*(a1 + 72))(a1, a2, "\\f[]\n.fi", 0, 0);
        goto LABEL_74;
      }

      (*(a1 + 56))(a1);
      if (a3 != 2)
      {
        return 1;
      }

      (*(a1 + 72))(a1, a2, ".IP ", 0, 0);
      if (cmark_node_get_list_type(*(a2 + 40)) == 1)
      {
        (*(a1 + 72))(a1, a2, "\\[bu] 2", 0, 0);
        goto LABEL_74;
      }

      v30 = cmark_node_get_list_start(*(a2 + 40)) - 1;
      v31 = a2;
      do
      {
        v31 = *(v31 + 32);
        ++v30;
      }

      while (v31);
      snprintf(__str, 0x14uLL, "%d. 4", v30);
      v16 = *(a1 + 72);
      v17 = __str;
    }

    v16(a1, a2, v17, 0, 0);
    goto LABEL_74;
  }

  if (*(a2 + 100) > 0x8008u)
  {
    if (v11 == 32777)
    {
      (*(a1 + 56))(a1);
      if (a3 == 2)
      {
        v24 = *(a1 + 72);
        if (cmark_node_get_heading_level(a2) == 1)
        {
          v25 = ".SH";
        }

        else
        {
          v25 = ".SS";
        }

        v24(a1, a2, v25, 0, 0);
        goto LABEL_74;
      }

      return 1;
    }

    if (v11 == 32778)
    {
      (*(a1 + 56))(a1);
      (*(a1 + 72))(a1, a2, ".PP\n  *  *  *  *  *", 0, 0);
      goto LABEL_74;
    }

    v15 = 32779;
    goto LABEL_34;
  }

  if (v11 != 32774)
  {
    if (v11 == 32775)
    {
      (*(a1 + 56))(a1);
      v28 = *(a1 + 72);
      if (a3 == 2)
      {
        v29 = cmark_node_get_on_enter(a2);
      }

      else
      {
        v29 = cmark_node_get_on_exit(a2);
      }

      v28(a1, a2, v29, 0, 0);
      goto LABEL_74;
    }

    if (a3 != 2)
    {
LABEL_74:
      (*(a1 + 56))(a1);
      return 1;
    }

    v12 = *(a2 + 40);
    if (!v12 || *(v12 + 100) != 32772 || *(a2 + 32))
    {
      (*(a1 + 56))(a1);
      (*(a1 + 72))(a1, a2, ".PP", 0, 0);
      goto LABEL_74;
    }
  }

  return 1;
}

_DWORD *cmark_utf8proc_check(_DWORD *result, uint64_t a2, int a3)
{
  if (a3 < 1)
  {
    return result;
  }

  v5 = result;
  v6 = 0;
  do
  {
    v7 = 0;
    v8 = v6;
    while (1)
    {
      v9 = (a2 + v8);
      v10 = *v9;
      if (v10 < 1)
      {
        break;
      }

      ++v8;
LABEL_12:
      if (v8 >= a3)
      {
        v15 = 0;
        goto LABEL_43;
      }
    }

    v11 = *v9;
    if ((v10 & 0x80) == 0)
    {
      v15 = 1;
      v7 = 1;
      goto LABEL_43;
    }

    v12 = *v9;
    v7 = utf8proc_utf8class[v12];
    if (!utf8proc_utf8class[v12])
    {
LABEL_38:
      v7 = -1;
      goto LABEL_42;
    }

    if (a3 - v8 < v7)
    {
      v7 = v8 - a3;
      goto LABEL_10;
    }

    if (v7 == 4)
    {
      v14 = v9[1];
      if ((v14 & 0xC0) != 0x80)
      {
        goto LABEL_38;
      }

      if ((v9[2] & 0xC0) != 0x80)
      {
LABEL_40:
        v7 = -2;
        goto LABEL_42;
      }

      if ((v9[3] & 0xC0) != 0x80)
      {
        goto LABEL_41;
      }

      if (v11 == 240)
      {
        if (v14 < 0x90)
        {
          v7 = -4;
          goto LABEL_42;
        }
      }

      else if (v11 >= 0xF4)
      {
        v7 = -4;
        if (v11 != 244 || v14 > 0x8F)
        {
          goto LABEL_42;
        }
      }

      v7 = 4;
      goto LABEL_11;
    }

    if (utf8proc_utf8class[v12] != 3)
    {
      if (utf8proc_utf8class[v12] == 2)
      {
        if ((v9[1] & 0xC0) != 0x80)
        {
          goto LABEL_38;
        }

        if (v11 < 0xC2)
        {
          goto LABEL_40;
        }

        v7 = 2;
        goto LABEL_11;
      }

LABEL_10:
      if (v7 < 0)
      {
        goto LABEL_42;
      }

LABEL_11:
      v8 += v7;
      goto LABEL_12;
    }

    v13 = v9[1];
    if ((v13 & 0xC0) != 0x80)
    {
      goto LABEL_38;
    }

    if ((v9[2] & 0xC0) != 0x80)
    {
      goto LABEL_40;
    }

    if (v11 == 237)
    {
      if (v13 > 0x9F)
      {
        goto LABEL_41;
      }

LABEL_37:
      v7 = 3;
      goto LABEL_11;
    }

    if (v11 != 224 || v13 >= 0xA0)
    {
      goto LABEL_37;
    }

LABEL_41:
    v7 = -3;
LABEL_42:
    v7 = -v7;
    v15 = 1;
LABEL_43:
    if (v8 > v6)
    {
      result = cmark_strbuf_put(v5, (a2 + v6), v8 - v6);
    }

    if (!v15)
    {
      break;
    }

    result = cmark_strbuf_put(v5, &encode_unknown_repl, 3);
    v6 = v7 + v8;
  }

  while (v7 + v8 < a3);
  return result;
}

uint64_t cmark_utf8proc_iterate(unsigned __int8 *a1, int a2, int *a3)
{
  v3 = 0xFFFFFFFFLL;
  *a3 = -1;
  if (a2)
  {
    v4 = *a1;
    v5 = utf8proc_utf8class[*a1];
    if (!utf8proc_utf8class[*a1] || (a2 & 0x80000000) == 0 && v5 > a2)
    {
      return 0xFFFFFFFFLL;
    }

    if (v5 < 2)
    {
LABEL_9:
      if ((v5 & 0x80000000) != 0)
      {
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      v6 = 1;
      while ((a1[v6] & 0xC0) == 0x80)
      {
        if (v5 == ++v6)
        {
          goto LABEL_9;
        }
      }

      v5 = -v6;
      if ((v5 & 0x80000000) != 0)
      {
        return 0xFFFFFFFFLL;
      }
    }

    v3 = 0xFFFFFFFFLL;
    if (v5 > 2)
    {
      if (v5 == 3)
      {
        v8 = v4 & 0xF;
        v9 = (v8 << 12) | ((a1[1] & 0x3F) << 6);
        if (v9 >= 0x800)
        {
          v4 = v9 | a1[2] & 0x3F;
          if (v8 > 0xD || v9 >> 11 <= 0x1A)
          {
            goto LABEL_21;
          }
        }

        return 0xFFFFFFFFLL;
      }

      if (v5 == 4)
      {
        v7 = ((v4 & 7) << 18) | ((a1[1] & 0x3F) << 12);
        if ((v7 - 1114112) >= 0xFFF00000)
        {
          v4 = a1[3] & 0x3F | ((a1[2] & 0x3F) << 6) | v7;
          goto LABEL_21;
        }

        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      if (v5 == 1)
      {
LABEL_21:
        *a3 = v4;
        return v5;
      }

      if (v5 == 2)
      {
        if ((v4 & 0x1Fu) >= 2)
        {
          v4 = a1[1] & 0x3F | ((v4 & 0x1F) << 6);
          goto LABEL_21;
        }

        return 0xFFFFFFFFLL;
      }
    }
  }

  return v3;
}

_DWORD *cmark_utf8proc_encode_char(unsigned int a1, _DWORD *a2)
{
  if ((a1 & 0x80000000) != 0)
  {
    cmark_utf8proc_encode_char_cold_1();
  }

  if (a1 <= 0x7F)
  {
    v5 = a1;
LABEL_11:
    v2 = 1;
    return cmark_strbuf_put(a2, &v5, v2);
  }

  if (a1 <= 0x7FF)
  {
    v5 = (a1 >> 6) | 0xC0;
    v6 = a1 & 0x3F | 0x80;
    v2 = 2;
    return cmark_strbuf_put(a2, &v5, v2);
  }

  if (a1 == 65534)
  {
    v3 = -2;
    goto LABEL_10;
  }

  if (a1 == 0xFFFF)
  {
    v3 = -1;
LABEL_10:
    v5 = v3;
    goto LABEL_11;
  }

  if (!HIWORD(a1))
  {
    v5 = (a1 >> 12) | 0xE0;
    v6 = (a1 >> 6) & 0x3F | 0x80;
    v7 = a1 & 0x3F | 0x80;
    v2 = 3;
    return cmark_strbuf_put(a2, &v5, v2);
  }

  if (HIWORD(a1) <= 0x10u)
  {
    v5 = (a1 >> 18) | 0xF0;
    v6 = (a1 >> 12) & 0x3F | 0x80;
    v7 = (a1 >> 6) & 0x3F | 0x80;
    v8 = a1 & 0x3F | 0x80;
    v2 = 4;
    return cmark_strbuf_put(a2, &v5, v2);
  }

  return cmark_strbuf_put(a2, &encode_unknown_repl, 3);
}

_DWORD *cmark_utf8proc_case_fold(_DWORD *result, unsigned __int8 *a2, int a3)
{
  if (a3 >= 1)
  {
    v119 = v3;
    v120 = v4;
    v5 = a3;
    v7 = result;
    v117 = 0;
    do
    {
      v8 = cmark_utf8proc_iterate(a2, v5, &v117);
      if ((v8 & 0x80000000) != 0)
      {
        result = cmark_strbuf_put(v7, &encode_unknown_repl, 3);
        v9 = 1;
      }

      else
      {
        v9 = v8;
        if (v117 > 8485)
        {
          if (v117 <= 43887)
          {
            if (v117 > 11263)
            {
              switch(v117)
              {
                case 11264:
                  v16 = -20254;
                  goto LABEL_1050;
                case 11265:
                  v56 = -20254;
                  goto LABEL_1322;
                case 11266:
                  v21 = -20254;
                  goto LABEL_1320;
                case 11267:
                  v58 = -20254;
                  goto LABEL_1413;
                case 11268:
                  v59 = -20254;
                  goto LABEL_1308;
                case 11269:
                  v57 = -20254;
                  goto LABEL_1447;
                case 11270:
                  v50 = -20254;
                  goto LABEL_1298;
                case 11271:
                  v54 = -20254;
                  goto LABEL_1457;
                case 11272:
                  v51 = -20254;
LABEL_1312:
                  LOWORD(v118) = v51;
                  v49 = -72;
                  goto LABEL_1521;
                case 11273:
                  v52 = -20254;
                  goto LABEL_1409;
                case 11274:
                  v53 = -20254;
LABEL_1415:
                  LOWORD(v118) = v53;
                  v49 = -70;
                  goto LABEL_1521;
                case 11275:
                  v55 = -20254;
                  goto LABEL_1419;
                case 11276:
                  v46 = -20254;
LABEL_1389:
                  LOWORD(v118) = v46;
                  v49 = -68;
                  goto LABEL_1521;
                case 11277:
                  v60 = -20254;
                  goto LABEL_1431;
                case 11278:
                  v48 = -20254;
LABEL_103:
                  LOWORD(v118) = v48;
                  v49 = -66;
                  goto LABEL_1521;
                case 11279:
                  v61 = -20254;
                  goto LABEL_1421;
                case 11280:
                  v17 = -19998;
LABEL_1285:
                  LOWORD(v118) = v17;
                  v49 = 0x80;
                  goto LABEL_1521;
                case 11281:
                  v20 = -19998;
                  goto LABEL_1501;
                case 11282:
                  v78 = -19998;
LABEL_1288:
                  LOWORD(v118) = v78;
                  v49 = -126;
                  goto LABEL_1521;
                case 11283:
                  v84 = -19998;
                  goto LABEL_1492;
                case 11284:
                  v47 = -19998;
LABEL_1291:
                  LOWORD(v118) = v47;
                  v49 = -124;
                  goto LABEL_1521;
                case 11285:
                  v82 = -19998;
                  goto LABEL_1496;
                case 11286:
                  v81 = -19998;
LABEL_1275:
                  LOWORD(v118) = v81;
                  v49 = -122;
                  goto LABEL_1521;
                case 11287:
                  v83 = -19998;
                  goto LABEL_1494;
                case 11288:
                  v80 = -19998;
LABEL_1273:
                  LOWORD(v118) = v80;
                  v49 = -120;
                  goto LABEL_1521;
                case 11289:
                  v86 = -19998;
                  goto LABEL_1478;
                case 11290:
                  v87 = -19998;
LABEL_1318:
                  LOWORD(v118) = v87;
                  v49 = -118;
                  goto LABEL_1521;
                case 11291:
                  v62 = -19998;
                  goto LABEL_1476;
                case 11292:
                  v85 = -19998;
LABEL_1453:
                  LOWORD(v118) = v85;
                  v49 = -116;
                  goto LABEL_1521;
                case 11293:
                  v79 = -19998;
                  goto LABEL_1518;
                case 11294:
                  v45 = -19998;
                  goto LABEL_1346;
                case 11295:
                  v88 = -19998;
                  goto LABEL_1508;
                case 11296:
                  v13 = -19998;
LABEL_1339:
                  LOWORD(v118) = v13;
                  v49 = -112;
                  goto LABEL_1521;
                case 11297:
                  v34 = -19998;
                  goto LABEL_1485;
                case 11298:
                  v30 = -19998;
LABEL_1269:
                  LOWORD(v118) = v30;
                  v49 = -110;
                  goto LABEL_1521;
                case 11299:
                  v32 = -19998;
                  goto LABEL_1510;
                case 11300:
                  v25 = -19998;
LABEL_1293:
                  LOWORD(v118) = v25;
                  v49 = -108;
                  goto LABEL_1521;
                case 11301:
                  v36 = -19998;
                  goto LABEL_1490;
                case 11302:
                  v39 = -19998;
LABEL_1332:
                  LOWORD(v118) = v39;
                  v49 = -106;
                  goto LABEL_1521;
                case 11303:
                  v33 = -19998;
                  goto LABEL_1512;
                case 11304:
                  v42 = -19998;
LABEL_1263:
                  LOWORD(v118) = v42;
                  v49 = -104;
                  goto LABEL_1521;
                case 11305:
                  v27 = -19998;
                  goto LABEL_1487;
                case 11306:
                  v41 = -19998;
LABEL_1296:
                  LOWORD(v118) = v41;
                  v49 = -102;
                  goto LABEL_1521;
                case 11307:
                  v24 = -19998;
                  goto LABEL_1520;
                case 11308:
                  v26 = -19998;
LABEL_1257:
                  LOWORD(v118) = v26;
                  v49 = -100;
                  goto LABEL_1521;
                case 11309:
                  v38 = -19998;
                  goto LABEL_1503;
                case 11310:
                  v23 = -19998;
LABEL_1282:
                  LOWORD(v118) = v23;
                  v49 = -98;
                  goto LABEL_1521;
                case 11311:
                case 11312:
                case 11313:
                case 11314:
                case 11315:
                case 11316:
                case 11317:
                case 11318:
                case 11319:
                case 11320:
                case 11321:
                case 11322:
                case 11323:
                case 11324:
                case 11325:
                case 11326:
                case 11327:
                case 11328:
                case 11329:
                case 11330:
                case 11331:
                case 11332:
                case 11333:
                case 11334:
                case 11335:
                case 11336:
                case 11337:
                case 11338:
                case 11339:
                case 11340:
                case 11341:
                case 11342:
                case 11343:
                case 11344:
                case 11345:
                case 11346:
                case 11347:
                case 11348:
                case 11349:
                case 11350:
                case 11351:
                case 11352:
                case 11353:
                case 11354:
                case 11355:
                case 11356:
                case 11357:
                case 11358:
                case 11359:
                case 11361:
                case 11365:
                case 11366:
                case 11368:
                case 11370:
                case 11372:
                case 11377:
                case 11379:
                case 11380:
                case 11382:
                case 11383:
                case 11384:
                case 11385:
                case 11386:
                case 11387:
                case 11388:
                case 11389:
                case 11393:
                case 11395:
                case 11397:
                case 11399:
                case 11401:
                case 11403:
                case 11405:
                case 11407:
                case 11409:
                case 11411:
                case 11413:
                case 11415:
                case 11417:
                case 11419:
                case 11421:
                case 11423:
                case 11425:
                case 11427:
                case 11429:
                case 11431:
                case 11433:
                case 11435:
                case 11437:
                case 11439:
                case 11441:
                case 11443:
                case 11445:
                case 11447:
                case 11449:
                case 11451:
                case 11453:
                case 11455:
                case 11457:
                case 11459:
                case 11461:
                case 11463:
                case 11465:
                case 11467:
                case 11469:
                case 11471:
                case 11473:
                case 11475:
                case 11477:
                case 11479:
                case 11481:
                case 11483:
                case 11485:
                case 11487:
                case 11489:
                case 11491:
                case 11492:
                case 11493:
                case 11494:
                case 11495:
                case 11496:
                case 11497:
                case 11498:
                case 11500:
                case 11502:
                case 11503:
                case 11504:
                case 11505:
                  goto LABEL_199;
                case 11360:
                  v12 = -19998;
                  goto LABEL_1498;
                case 11362:
                  v10 = -21559;
                  goto LABEL_988;
                case 11363:
                  v60 = -18975;
                  goto LABEL_1431;
                case 11364:
                  v10 = -16951;
                  goto LABEL_988;
                case 11367:
                  v29 = -19998;
LABEL_1305:
                  LOWORD(v118) = v29;
                  v49 = -88;
                  goto LABEL_1521;
                case 11369:
                  v113 = -19998;
LABEL_1362:
                  LOWORD(v118) = v113;
                  v49 = -86;
                  goto LABEL_1521;
                case 11371:
                  v111 = -19998;
                  goto LABEL_1381;
                case 11373:
                  v10 = -28215;
                  goto LABEL_988;
                case 11374:
                  v10 = -20023;
                  goto LABEL_988;
                case 11375:
                  v10 = -28471;
                  goto LABEL_988;
                case 11376:
                  v10 = -27959;
                  goto LABEL_988;
                case 11378:
                  v58 = -19998;
                  goto LABEL_1413;
                case 11381:
                  v50 = -19998;
LABEL_1298:
                  LOWORD(v118) = v50;
                  v49 = -74;
                  goto LABEL_1521;
                case 11390:
                  v10 = -16440;
                  goto LABEL_988;
                case 11391:
                  v10 = -32567;
                  goto LABEL_988;
                case 11392:
                  v20 = -19742;
                  goto LABEL_1501;
                case 11394:
                  v84 = -19742;
                  goto LABEL_1492;
                case 11396:
                  v82 = -19742;
                  goto LABEL_1496;
                case 11398:
                  v83 = -19742;
                  goto LABEL_1494;
                case 11400:
                  v86 = -19742;
                  goto LABEL_1478;
                case 11402:
                  v62 = -19742;
                  goto LABEL_1476;
                case 11404:
                  v79 = -19742;
                  goto LABEL_1518;
                case 11406:
                  v88 = -19742;
                  goto LABEL_1508;
                case 11408:
                  v34 = -19742;
                  goto LABEL_1485;
                case 11410:
                  v32 = -19742;
                  goto LABEL_1510;
                case 11412:
                  v36 = -19742;
                  goto LABEL_1490;
                case 11414:
                  v33 = -19742;
                  goto LABEL_1512;
                case 11416:
                  v27 = -19742;
                  goto LABEL_1487;
                case 11418:
                  v24 = -19742;
                  goto LABEL_1520;
                case 11420:
                  v38 = -19742;
                  goto LABEL_1503;
                case 11422:
                  v31 = -19742;
                  goto LABEL_1505;
                case 11424:
                  v12 = -19742;
                  goto LABEL_1498;
                case 11426:
                  v18 = -19742;
                  goto LABEL_1514;
                case 11428:
                  v37 = -19742;
LABEL_1483:
                  LOWORD(v118) = v37;
                  v49 = -91;
                  goto LABEL_1521;
                case 11430:
                  v44 = -19742;
LABEL_1468:
                  LOWORD(v118) = v44;
                  v49 = -89;
                  goto LABEL_1521;
                case 11432:
                  v28 = -19742;
LABEL_1472:
                  LOWORD(v118) = v28;
                  v49 = -87;
                  goto LABEL_1521;
                case 11434:
                  v92 = -19742;
LABEL_1516:
                  LOWORD(v118) = v92;
                  v49 = -85;
                  goto LABEL_1521;
                case 11436:
                  v77 = -19742;
LABEL_1481:
                  LOWORD(v118) = v77;
                  v49 = -83;
                  goto LABEL_1521;
                case 11438:
                  v91 = -19742;
LABEL_1424:
                  LOWORD(v118) = v91;
                  v49 = -81;
                  goto LABEL_1521;
                case 11440:
                  v56 = -19742;
                  goto LABEL_1322;
                case 11442:
                  v58 = -19742;
                  goto LABEL_1413;
                case 11444:
                  v57 = -19742;
                  goto LABEL_1447;
                case 11446:
                  v54 = -19742;
LABEL_1457:
                  LOWORD(v118) = v54;
                  v49 = -73;
                  goto LABEL_1521;
                case 11448:
                  v52 = -19742;
LABEL_1409:
                  LOWORD(v118) = v52;
                  v49 = -71;
                  goto LABEL_1521;
                case 11450:
                  v55 = -19742;
LABEL_1419:
                  LOWORD(v118) = v55;
                  v49 = -69;
                  goto LABEL_1521;
                case 11452:
                  v60 = -19742;
LABEL_1431:
                  LOWORD(v118) = v60;
                  v49 = -67;
                  goto LABEL_1521;
                case 11454:
                  v61 = -19742;
LABEL_1421:
                  LOWORD(v118) = v61;
                  v49 = -65;
                  goto LABEL_1521;
                case 11456:
                  v20 = -19486;
LABEL_1501:
                  LOWORD(v118) = v20;
                  v49 = -127;
                  goto LABEL_1521;
                case 11458:
                  v84 = -19486;
LABEL_1492:
                  LOWORD(v118) = v84;
                  v49 = -125;
                  goto LABEL_1521;
                case 11460:
                  v82 = -19486;
LABEL_1496:
                  LOWORD(v118) = v82;
                  v49 = -123;
                  goto LABEL_1521;
                case 11462:
                  v83 = -19486;
LABEL_1494:
                  LOWORD(v118) = v83;
                  v49 = -121;
                  goto LABEL_1521;
                case 11464:
                  v86 = -19486;
LABEL_1478:
                  LOWORD(v118) = v86;
                  v49 = -119;
                  goto LABEL_1521;
                case 11466:
                  v62 = -19486;
                  goto LABEL_1476;
                case 11468:
                  v79 = -19486;
LABEL_1518:
                  LOWORD(v118) = v79;
                  v49 = -115;
                  goto LABEL_1521;
                case 11470:
                  v88 = -19486;
LABEL_1508:
                  LOWORD(v118) = v88;
                  v49 = -113;
                  goto LABEL_1521;
                case 11472:
                  v34 = -19486;
LABEL_1485:
                  LOWORD(v118) = v34;
                  v49 = -111;
                  goto LABEL_1521;
                case 11474:
                  v32 = -19486;
LABEL_1510:
                  LOWORD(v118) = v32;
                  v49 = -109;
                  goto LABEL_1521;
                case 11476:
                  v36 = -19486;
LABEL_1490:
                  LOWORD(v118) = v36;
                  v49 = -107;
                  goto LABEL_1521;
                case 11478:
                  v33 = -19486;
LABEL_1512:
                  LOWORD(v118) = v33;
                  v49 = -105;
                  goto LABEL_1521;
                case 11480:
                  v27 = -19486;
LABEL_1487:
                  LOWORD(v118) = v27;
                  v49 = -103;
                  goto LABEL_1521;
                case 11482:
                  v24 = -19486;
LABEL_1520:
                  LOWORD(v118) = v24;
                  v49 = -101;
                  goto LABEL_1521;
                case 11484:
                  v38 = -19486;
LABEL_1503:
                  LOWORD(v118) = v38;
                  v49 = -99;
                  goto LABEL_1521;
                case 11486:
                  v31 = -19486;
LABEL_1505:
                  LOWORD(v118) = v31;
                  v49 = -97;
                  goto LABEL_1521;
                case 11488:
                  v12 = -19486;
LABEL_1498:
                  LOWORD(v118) = v12;
                  v49 = -95;
                  goto LABEL_1521;
                case 11490:
                  v18 = -19486;
LABEL_1514:
                  LOWORD(v118) = v18;
                  v49 = -93;
                  goto LABEL_1521;
                case 11499:
                  v111 = -19486;
LABEL_1381:
                  LOWORD(v118) = v111;
                  v49 = -84;
                  goto LABEL_1521;
                case 11501:
                  LOWORD(v118) = -19486;
                  v49 = -82;
                  goto LABEL_1521;
                case 11506:
                  v58 = -19486;
                  goto LABEL_1413;
                default:
                  switch(v117)
                  {
                    case 42786:
                      v18 = -25366;
                      goto LABEL_1514;
                    case 42787:
                    case 42789:
                    case 42791:
                    case 42793:
                    case 42795:
                    case 42797:
                    case 42799:
                    case 42800:
                    case 42801:
                    case 42803:
                    case 42805:
                    case 42807:
                    case 42809:
                    case 42811:
                    case 42813:
                    case 42815:
                    case 42817:
                    case 42819:
                    case 42821:
                    case 42823:
                    case 42825:
                    case 42827:
                    case 42829:
                    case 42831:
                    case 42833:
                    case 42835:
                    case 42837:
                    case 42839:
                    case 42841:
                    case 42843:
                    case 42845:
                    case 42847:
                    case 42849:
                    case 42851:
                    case 42853:
                    case 42855:
                    case 42857:
                    case 42859:
                    case 42861:
                    case 42863:
                    case 42864:
                    case 42865:
                    case 42866:
                    case 42867:
                    case 42868:
                    case 42869:
                    case 42870:
                    case 42871:
                    case 42872:
                    case 42874:
                    case 42876:
                    case 42879:
                    case 42881:
                    case 42883:
                    case 42885:
                    case 42887:
                    case 42888:
                    case 42889:
                    case 42890:
                    case 42892:
                    case 42894:
                    case 42895:
                    case 42897:
                    case 42899:
                    case 42900:
                    case 42901:
                    case 42903:
                    case 42905:
                    case 42907:
                    case 42909:
                    case 42911:
                    case 42913:
                    case 42915:
                    case 42917:
                    case 42919:
                    case 42921:
                    case 42927:
                    case 42933:
                      goto LABEL_199;
                    case 42788:
                      v37 = -25366;
                      goto LABEL_1483;
                    case 42790:
                      v44 = -25366;
                      goto LABEL_1468;
                    case 42792:
                      v28 = -25366;
                      goto LABEL_1472;
                    case 42794:
                      v92 = -25366;
                      goto LABEL_1516;
                    case 42796:
                      v77 = -25366;
                      goto LABEL_1481;
                    case 42798:
                      v91 = -25366;
                      goto LABEL_1424;
                    case 42802:
                      v58 = -25366;
                      goto LABEL_1413;
                    case 42804:
                      v57 = -25366;
                      goto LABEL_1447;
                    case 42806:
                      v54 = -25366;
                      goto LABEL_1457;
                    case 42808:
                      v52 = -25366;
                      goto LABEL_1409;
                    case 42810:
                      v55 = -25366;
                      goto LABEL_1419;
                    case 42812:
                      v60 = -25366;
                      goto LABEL_1431;
                    case 42814:
                      v61 = -25366;
                      goto LABEL_1421;
                    case 42816:
                      v20 = -25110;
                      goto LABEL_1501;
                    case 42818:
                      v84 = -25110;
                      goto LABEL_1492;
                    case 42820:
                      v82 = -25110;
                      goto LABEL_1496;
                    case 42822:
                      v83 = -25110;
                      goto LABEL_1494;
                    case 42824:
                      v86 = -25110;
                      goto LABEL_1478;
                    case 42826:
                      v62 = -25110;
                      goto LABEL_1476;
                    case 42828:
                      v79 = -25110;
                      goto LABEL_1518;
                    case 42830:
                      v88 = -25110;
                      goto LABEL_1508;
                    case 42832:
                      v34 = -25110;
                      goto LABEL_1485;
                    case 42834:
                      v32 = -25110;
                      goto LABEL_1510;
                    case 42836:
                      v36 = -25110;
                      goto LABEL_1490;
                    case 42838:
                      v33 = -25110;
                      goto LABEL_1512;
                    case 42840:
                      v27 = -25110;
                      goto LABEL_1487;
                    case 42842:
                      v24 = -25110;
                      goto LABEL_1520;
                    case 42844:
                      v38 = -25110;
                      goto LABEL_1503;
                    case 42846:
                      v31 = -25110;
                      goto LABEL_1505;
                    case 42848:
                      v12 = -25110;
                      goto LABEL_1498;
                    case 42850:
                      v18 = -25110;
                      goto LABEL_1514;
                    case 42852:
                      v37 = -25110;
                      goto LABEL_1483;
                    case 42854:
                      v44 = -25110;
                      goto LABEL_1468;
                    case 42856:
                      v28 = -25110;
                      goto LABEL_1472;
                    case 42858:
                      v92 = -25110;
                      goto LABEL_1516;
                    case 42860:
                      v77 = -25110;
                      goto LABEL_1481;
                    case 42862:
                      v91 = -25110;
                      goto LABEL_1424;
                    case 42873:
                      v53 = -25110;
                      goto LABEL_1415;
                    case 42875:
                      v46 = -25110;
                      goto LABEL_1389;
                    case 42877:
                      v52 = -18975;
                      goto LABEL_1409;
                    case 42878:
                      v61 = -25110;
                      goto LABEL_1421;
                    case 42880:
                      v20 = -24854;
                      goto LABEL_1501;
                    case 42882:
                      v84 = -24854;
                      goto LABEL_1492;
                    case 42884:
                      v82 = -24854;
                      goto LABEL_1496;
                    case 42886:
                      v83 = -24854;
                      goto LABEL_1494;
                    case 42891:
                      v85 = -24854;
                      goto LABEL_1453;
                    case 42893:
                      v10 = -23095;
                      goto LABEL_988;
                    case 42896:
                      v34 = -24854;
                      goto LABEL_1485;
                    case 42898:
                      v32 = -24854;
                      goto LABEL_1510;
                    case 42902:
                      v33 = -24854;
                      goto LABEL_1512;
                    case 42904:
                      v27 = -24854;
                      goto LABEL_1487;
                    case 42906:
                      v24 = -24854;
                      goto LABEL_1520;
                    case 42908:
                      v38 = -24854;
                      goto LABEL_1503;
                    case 42910:
                      v31 = -24854;
                      goto LABEL_1505;
                    case 42912:
                      v12 = -24854;
                      goto LABEL_1498;
                    case 42914:
                      v18 = -24854;
                      goto LABEL_1514;
                    case 42916:
                      v37 = -24854;
                      goto LABEL_1483;
                    case 42918:
                      v44 = -24854;
                      goto LABEL_1468;
                    case 42920:
                      v28 = -24854;
                      goto LABEL_1472;
                    case 42922:
                      v10 = -22839;
                      goto LABEL_988;
                    case 42923:
                      v10 = -25399;
                      goto LABEL_988;
                    case 42924:
                      v10 = -24119;
                      goto LABEL_988;
                    case 42925:
                      v10 = -21303;
                      goto LABEL_988;
                    case 42926:
                      v10 = -21815;
                      goto LABEL_988;
                    case 42928:
                      v10 = -24886;
                      goto LABEL_988;
                    case 42929:
                      v10 = -30774;
                      goto LABEL_988;
                    case 42930:
                      v10 = -25142;
                      goto LABEL_988;
                    case 42931:
                      v32 = -21014;
                      goto LABEL_1510;
                    case 42932:
                      v57 = -24854;
                      goto LABEL_1447;
                    case 42934:
                      v54 = -24854;
                      goto LABEL_1457;
                    default:
                      switch(v117)
                      {
                        case 42560:
                          v20 = -26134;
                          goto LABEL_1501;
                        case 42562:
                          v84 = -26134;
                          goto LABEL_1492;
                        case 42564:
                          v82 = -26134;
                          goto LABEL_1496;
                        case 42566:
                          v83 = -26134;
                          goto LABEL_1494;
                        case 42568:
                          v86 = -26134;
                          goto LABEL_1478;
                        case 42570:
                          goto LABEL_134;
                        case 42572:
                          v79 = -26134;
                          goto LABEL_1518;
                        case 42574:
                          v88 = -26134;
                          goto LABEL_1508;
                        case 42576:
                          v34 = -26134;
                          goto LABEL_1485;
                        case 42578:
                          v32 = -26134;
                          goto LABEL_1510;
                        case 42580:
                          v36 = -26134;
                          goto LABEL_1490;
                        case 42582:
                          v33 = -26134;
                          goto LABEL_1512;
                        case 42584:
                          v27 = -26134;
                          goto LABEL_1487;
                        case 42586:
                          v24 = -26134;
                          goto LABEL_1520;
                        case 42588:
                          v38 = -26134;
                          goto LABEL_1503;
                        case 42590:
                          v31 = -26134;
                          goto LABEL_1505;
                        case 42592:
                          v12 = -26134;
                          goto LABEL_1498;
                        case 42594:
                          v18 = -26134;
                          goto LABEL_1514;
                        case 42596:
                          v37 = -26134;
                          goto LABEL_1483;
                        case 42598:
                          v44 = -26134;
                          goto LABEL_1468;
                        case 42600:
                          v28 = -26134;
                          goto LABEL_1472;
                        case 42602:
                          v92 = -26134;
                          goto LABEL_1516;
                        case 42604:
                          v77 = -26134;
                          goto LABEL_1481;
                        case 42624:
                          v20 = -25878;
                          goto LABEL_1501;
                        case 42626:
                          v84 = -25878;
                          goto LABEL_1492;
                        case 42628:
                          v82 = -25878;
                          goto LABEL_1496;
                        case 42630:
                          v83 = -25878;
                          goto LABEL_1494;
                        case 42632:
                          v86 = -25878;
                          goto LABEL_1478;
                        case 42634:
                          v62 = -25878;
                          goto LABEL_1476;
                        case 42636:
                          v79 = -25878;
                          goto LABEL_1518;
                        case 42638:
                          v88 = -25878;
                          goto LABEL_1508;
                        case 42640:
                          v34 = -25878;
                          goto LABEL_1485;
                        case 42642:
                          v32 = -25878;
                          goto LABEL_1510;
                        case 42644:
                          v36 = -25878;
                          goto LABEL_1490;
                        case 42646:
                          v33 = -25878;
                          goto LABEL_1512;
                        case 42648:
                          v27 = -25878;
                          goto LABEL_1487;
                        case 42650:
                          v24 = -25878;
                          goto LABEL_1520;
                        default:
                          goto LABEL_199;
                      }
                  }
              }
            }

            if (v117 > 9397)
            {
              switch(v117)
              {
                case 9398:
                  v13 = -27678;
                  goto LABEL_1339;
                case 9399:
                  v34 = -27678;
                  goto LABEL_1485;
                case 9400:
                  v30 = -27678;
                  goto LABEL_1269;
                case 9401:
                  v32 = -27678;
                  goto LABEL_1510;
                case 9402:
                  v25 = -27678;
                  goto LABEL_1293;
                case 9403:
                  v36 = -27678;
                  goto LABEL_1490;
                case 9404:
                  v39 = -27678;
                  goto LABEL_1332;
                case 9405:
                  v33 = -27678;
                  goto LABEL_1512;
                case 9406:
                  v42 = -27678;
                  goto LABEL_1263;
                case 9407:
                  v27 = -27678;
                  goto LABEL_1487;
                case 9408:
                  v41 = -27678;
                  goto LABEL_1296;
                case 9409:
                  v24 = -27678;
                  goto LABEL_1520;
                case 9410:
                  v26 = -27678;
                  goto LABEL_1257;
                case 9411:
                  v38 = -27678;
                  goto LABEL_1503;
                case 9412:
                  v23 = -27678;
                  goto LABEL_1282;
                case 9413:
                  v31 = -27678;
                  goto LABEL_1505;
                case 9414:
                  v11 = -27678;
LABEL_1151:
                  LOWORD(v118) = v11;
                  v49 = -96;
                  goto LABEL_1521;
                case 9415:
                  v12 = -27678;
                  goto LABEL_1498;
                case 9416:
                  v40 = -27678;
LABEL_1157:
                  LOWORD(v118) = v40;
                  v49 = -94;
                  goto LABEL_1521;
                case 9417:
                  v18 = -27678;
                  goto LABEL_1514;
                case 9418:
                  v35 = -27678;
LABEL_1208:
                  LOWORD(v118) = v35;
                  v49 = -92;
                  goto LABEL_1521;
                case 9419:
                  v37 = -27678;
                  goto LABEL_1483;
                case 9420:
                  v43 = -27678;
LABEL_1177:
                  LOWORD(v118) = v43;
                  v49 = -90;
                  goto LABEL_1521;
                case 9421:
                  v44 = -27678;
                  goto LABEL_1468;
                case 9422:
                  v29 = -27678;
                  goto LABEL_1305;
                case 9423:
                  v28 = -27678;
                  goto LABEL_1472;
                default:
                  goto LABEL_199;
              }
            }

            if (v117 > 8497)
            {
              switch(v117)
              {
                case 8544:
                  v16 = -31262;
                  goto LABEL_1050;
                case 8545:
                  v56 = -31262;
                  goto LABEL_1322;
                case 8546:
                  v21 = -31262;
                  goto LABEL_1320;
                case 8547:
                  v58 = -31262;
                  goto LABEL_1413;
                case 8548:
                  v59 = -31262;
                  goto LABEL_1308;
                case 8549:
                  v57 = -31262;
                  goto LABEL_1447;
                case 8550:
                  v50 = -31262;
                  goto LABEL_1298;
                case 8551:
                  v54 = -31262;
                  goto LABEL_1457;
                case 8552:
                  v51 = -31262;
                  goto LABEL_1312;
                case 8553:
                  v52 = -31262;
                  goto LABEL_1409;
                case 8554:
                  v53 = -31262;
                  goto LABEL_1415;
                case 8555:
                  v55 = -31262;
                  goto LABEL_1419;
                case 8556:
                  v46 = -31262;
                  goto LABEL_1389;
                case 8557:
                  v60 = -31262;
                  goto LABEL_1431;
                case 8558:
                  v48 = -31262;
                  goto LABEL_103;
                case 8559:
                  v61 = -31262;
                  goto LABEL_1421;
                case 8560:
                case 8561:
                case 8562:
                case 8563:
                case 8564:
                case 8565:
                case 8566:
                case 8567:
                case 8568:
                case 8569:
                case 8570:
                case 8571:
                case 8572:
                case 8573:
                case 8574:
                case 8575:
                case 8576:
                case 8577:
                case 8578:
                  goto LABEL_199;
                case 8579:
                  v47 = -31006;
                  goto LABEL_1291;
                default:
                  if (v117 != 8498)
                  {
                    goto LABEL_199;
                  }

                  v45 = -31262;
                  break;
              }

LABEL_1346:
              LOWORD(v118) = v45;
              v49 = -114;
              goto LABEL_1521;
            }

            switch(v117)
            {
              case 8486:
                v10 = -30257;
                goto LABEL_988;
              case 8490:
LABEL_67:
                v14 = 107;
                goto LABEL_885;
              case 8491:
LABEL_53:
                v10 = -23101;
                goto LABEL_988;
            }
          }

          else
          {
            if (v117 > 66735)
            {
              if (v117 > 71839)
              {
                switch(v117)
                {
                  case 125184:
                    v15 = -1566269712;
                    break;
                  case 125185:
                    v15 = -1549492496;
                    break;
                  case 125186:
                    v15 = -1532715280;
                    break;
                  case 125187:
                    v15 = -1515938064;
                    break;
                  case 125188:
                    v15 = -1499160848;
                    break;
                  case 125189:
                    v15 = -1482383632;
                    break;
                  case 125190:
                    v15 = -1465606416;
                    break;
                  case 125191:
                    v15 = -1448829200;
                    break;
                  case 125192:
                    v15 = -1432051984;
                    break;
                  case 125193:
                    v15 = -1415274768;
                    break;
                  case 125194:
                    v15 = -1398497552;
                    break;
                  case 125195:
                    v15 = -1381720336;
                    break;
                  case 125196:
                    v15 = -1364943120;
                    break;
                  case 125197:
                    v15 = -1348165904;
                    break;
                  case 125198:
                    v15 = -1331388688;
                    break;
                  case 125199:
                    v15 = -1314611472;
                    break;
                  case 125200:
                    v15 = -1297834256;
                    break;
                  case 125201:
                    v15 = -1281057040;
                    break;
                  case 125202:
                    v15 = -1264279824;
                    break;
                  case 125203:
                    v15 = -1247502608;
                    break;
                  case 125204:
                    v15 = -1230725392;
                    break;
                  case 125205:
                    v15 = -1213948176;
                    break;
                  case 125206:
                    v15 = -1197170960;
                    break;
                  case 125207:
                    v15 = -1180393744;
                    break;
                  case 125208:
                    v15 = -1163616528;
                    break;
                  case 125209:
                    v15 = -1146839312;
                    break;
                  case 125210:
                    v15 = -1130062096;
                    break;
                  case 125211:
                    v15 = -1113284880;
                    break;
                  case 125212:
                    v15 = -1096507664;
                    break;
                  case 125213:
                    v15 = -1079730448;
                    break;
                  case 125214:
                    v15 = -2136629520;
                    break;
                  case 125215:
                    v15 = -2119852304;
                    break;
                  case 125216:
                    v15 = -2103075088;
                    break;
                  case 125217:
                    v15 = -2086297872;
                    break;
                  default:
                    switch(v117)
                    {
                      case 71840:
                        v15 = -2136763920;
                        goto LABEL_668;
                      case 71841:
                        v15 = -2119986704;
                        goto LABEL_668;
                      case 71842:
                        v15 = -2103209488;
                        goto LABEL_668;
                      case 71843:
                        v15 = -2086432272;
                        goto LABEL_668;
                      case 71844:
                        v15 = -2069655056;
                        goto LABEL_668;
                      case 71845:
                        v15 = -2052877840;
                        goto LABEL_668;
                      case 71846:
                        v15 = -2036100624;
                        goto LABEL_668;
                      case 71847:
                        v15 = -2019323408;
                        goto LABEL_668;
                      case 71848:
                        v15 = -2002546192;
                        goto LABEL_668;
                      case 71849:
                        v15 = -1985768976;
                        goto LABEL_668;
                      case 71850:
                        v15 = -1968991760;
                        goto LABEL_668;
                      case 71851:
                        v15 = -1952214544;
                        goto LABEL_668;
                      case 71852:
                        v15 = -1935437328;
                        goto LABEL_668;
                      case 71853:
                        v15 = -1918660112;
                        goto LABEL_668;
                      case 71854:
                        v15 = -1901882896;
                        goto LABEL_668;
                      case 71855:
                        v15 = -1885105680;
                        goto LABEL_668;
                      case 71856:
                        v15 = -1868328464;
                        goto LABEL_668;
                      case 71857:
                        v15 = -1851551248;
                        goto LABEL_668;
                      case 71858:
                        v15 = -1834774032;
                        goto LABEL_668;
                      case 71859:
                        v15 = -1817996816;
                        goto LABEL_668;
                      case 71860:
                        v15 = -1801219600;
                        goto LABEL_668;
                      case 71861:
                        v15 = -1784442384;
                        goto LABEL_668;
                      case 71862:
                        v15 = -1767665168;
                        goto LABEL_668;
                      case 71863:
                        v15 = -1750887952;
                        goto LABEL_668;
                      case 71864:
                        v15 = -1734110736;
                        goto LABEL_668;
                      case 71865:
                        v15 = -1717333520;
                        goto LABEL_668;
                      case 71866:
                        v15 = -1700556304;
                        goto LABEL_668;
                      case 71867:
                        v15 = -1683779088;
                        goto LABEL_668;
                      case 71868:
                        v15 = -1667001872;
                        goto LABEL_668;
                      case 71869:
                        v15 = -1650224656;
                        goto LABEL_668;
                      case 71870:
                        v15 = -1633447440;
                        goto LABEL_668;
                      case 71871:
                        v15 = -1616670224;
                        goto LABEL_668;
                      default:
                        goto LABEL_199;
                    }
                }
              }

              else
              {
                switch(v117)
                {
                  case 68736:
                    v15 = -2135715600;
                    break;
                  case 68737:
                    v15 = -2118938384;
                    break;
                  case 68738:
                    v15 = -2102161168;
                    break;
                  case 68739:
                    v15 = -2085383952;
                    break;
                  case 68740:
                    v15 = -2068606736;
                    break;
                  case 68741:
                    v15 = -2051829520;
                    break;
                  case 68742:
                    v15 = -2035052304;
                    break;
                  case 68743:
                    v15 = -2018275088;
                    break;
                  case 68744:
                    v15 = -2001497872;
                    break;
                  case 68745:
                    v15 = -1984720656;
                    break;
                  case 68746:
                    v15 = -1967943440;
                    break;
                  case 68747:
                    v15 = -1951166224;
                    break;
                  case 68748:
                    v15 = -1934389008;
                    break;
                  case 68749:
                    v15 = -1917611792;
                    break;
                  case 68750:
                    v15 = -1900834576;
                    break;
                  case 68751:
                    v15 = -1884057360;
                    break;
                  case 68752:
                    v15 = -1867280144;
                    break;
                  case 68753:
                    v15 = -1850502928;
                    break;
                  case 68754:
                    v15 = -1833725712;
                    break;
                  case 68755:
                    v15 = -1816948496;
                    break;
                  case 68756:
                    v15 = -1800171280;
                    break;
                  case 68757:
                    v15 = -1783394064;
                    break;
                  case 68758:
                    v15 = -1766616848;
                    break;
                  case 68759:
                    v15 = -1749839632;
                    break;
                  case 68760:
                    v15 = -1733062416;
                    break;
                  case 68761:
                    v15 = -1716285200;
                    break;
                  case 68762:
                    v15 = -1699507984;
                    break;
                  case 68763:
                    v15 = -1682730768;
                    break;
                  case 68764:
                    v15 = -1665953552;
                    break;
                  case 68765:
                    v15 = -1649176336;
                    break;
                  case 68766:
                    v15 = -1632399120;
                    break;
                  case 68767:
                    v15 = -1615621904;
                    break;
                  case 68768:
                    v15 = -1598844688;
                    break;
                  case 68769:
                    v15 = -1582067472;
                    break;
                  case 68770:
                    v15 = -1565290256;
                    break;
                  case 68771:
                    v15 = -1548513040;
                    break;
                  case 68772:
                    v15 = -1531735824;
                    break;
                  case 68773:
                    v15 = -1514958608;
                    break;
                  case 68774:
                    v15 = -1498181392;
                    break;
                  case 68775:
                    v15 = -1481404176;
                    break;
                  case 68776:
                    v15 = -1464626960;
                    break;
                  case 68777:
                    v15 = -1447849744;
                    break;
                  case 68778:
                    v15 = -1431072528;
                    break;
                  case 68779:
                    v15 = -1414295312;
                    break;
                  case 68780:
                    v15 = -1397518096;
                    break;
                  case 68781:
                    v15 = -1380740880;
                    break;
                  case 68782:
                    v15 = -1363963664;
                    break;
                  case 68783:
                    v15 = -1347186448;
                    break;
                  case 68784:
                    v15 = -1330409232;
                    break;
                  case 68785:
                    v15 = -1313632016;
                    break;
                  case 68786:
                    v15 = -1296854800;
                    break;
                  default:
                    switch(v117)
                    {
                      case 66736:
                        v15 = -1735159568;
                        goto LABEL_668;
                      case 66737:
                        v15 = -1718382352;
                        goto LABEL_668;
                      case 66738:
                        v15 = -1701605136;
                        goto LABEL_668;
                      case 66739:
                        v15 = -1684827920;
                        goto LABEL_668;
                      case 66740:
                        v15 = -1668050704;
                        goto LABEL_668;
                      case 66741:
                        v15 = -1651273488;
                        goto LABEL_668;
                      case 66742:
                        v15 = -1634496272;
                        goto LABEL_668;
                      case 66743:
                        v15 = -1617719056;
                        goto LABEL_668;
                      case 66744:
                        v15 = -1600941840;
                        goto LABEL_668;
                      case 66745:
                        v15 = -1584164624;
                        goto LABEL_668;
                      case 66746:
                        v15 = -1567387408;
                        goto LABEL_668;
                      case 66747:
                        v15 = -1550610192;
                        goto LABEL_668;
                      case 66748:
                        v15 = -1533832976;
                        goto LABEL_668;
                      case 66749:
                        v15 = -1517055760;
                        goto LABEL_668;
                      case 66750:
                        v15 = -1500278544;
                        goto LABEL_668;
                      case 66751:
                        v15 = -1483501328;
                        goto LABEL_668;
                      case 66752:
                        v15 = -1466724112;
                        goto LABEL_668;
                      case 66753:
                        v15 = -1449946896;
                        goto LABEL_668;
                      case 66754:
                        v15 = -1433169680;
                        goto LABEL_668;
                      case 66755:
                        v15 = -1416392464;
                        goto LABEL_668;
                      case 66756:
                        v15 = -1399615248;
                        goto LABEL_668;
                      case 66757:
                        v15 = -1382838032;
                        goto LABEL_668;
                      case 66758:
                        v15 = -1366060816;
                        goto LABEL_668;
                      case 66759:
                        v15 = -1349283600;
                        goto LABEL_668;
                      case 66760:
                        v15 = -1332506384;
                        goto LABEL_668;
                      case 66761:
                        v15 = -1315729168;
                        goto LABEL_668;
                      case 66762:
                        v15 = -1298951952;
                        goto LABEL_668;
                      case 66763:
                        v15 = -1282174736;
                        goto LABEL_668;
                      case 66764:
                        v15 = -1265397520;
                        goto LABEL_668;
                      case 66765:
                        v15 = -1248620304;
                        goto LABEL_668;
                      case 66766:
                        v15 = -1231843088;
                        goto LABEL_668;
                      case 66767:
                        v15 = -1215065872;
                        goto LABEL_668;
                      case 66768:
                        v15 = -1198288656;
                        goto LABEL_668;
                      case 66769:
                        v15 = -1181511440;
                        goto LABEL_668;
                      case 66770:
                        v15 = -1164734224;
                        goto LABEL_668;
                      case 66771:
                        v15 = -1147957008;
                        goto LABEL_668;
                      default:
                        goto LABEL_199;
                    }
                }
              }

LABEL_668:
              v118 = v15;
              v89 = v7;
              v90 = 4;
              goto LABEL_1522;
            }

            if (v117 <= 64257)
            {
              switch(v117)
              {
                case 43888:
                  v11 = -28959;
                  goto LABEL_1151;
                case 43889:
                  v12 = -28959;
                  goto LABEL_1498;
                case 43890:
                  v40 = -28959;
                  goto LABEL_1157;
                case 43891:
                  v18 = -28959;
                  goto LABEL_1514;
                case 43892:
                  v35 = -28959;
                  goto LABEL_1208;
                case 43893:
                  v37 = -28959;
                  goto LABEL_1483;
                case 43894:
                  v43 = -28959;
                  goto LABEL_1177;
                case 43895:
                  v44 = -28959;
                  goto LABEL_1468;
                case 43896:
                  v29 = -28959;
                  goto LABEL_1305;
                case 43897:
                  v28 = -28959;
                  goto LABEL_1472;
                case 43898:
                  v113 = -28959;
                  goto LABEL_1362;
                case 43899:
                  v92 = -28959;
                  goto LABEL_1516;
                case 43900:
                  v111 = -28959;
                  goto LABEL_1381;
                case 43901:
                  v104 = -28959;
                  goto LABEL_1175;
                case 43902:
                  v110 = -28959;
                  goto LABEL_1206;
                case 43903:
                  v103 = -28959;
                  goto LABEL_1159;
                case 43904:
                  LOWORD(v118) = -28959;
                  v49 = -80;
                  goto LABEL_1521;
                case 43905:
                  LOWORD(v118) = -28959;
                  v49 = -79;
                  goto LABEL_1521;
                case 43906:
                  LOWORD(v118) = -28959;
                  v49 = -78;
                  goto LABEL_1521;
                case 43907:
                  LOWORD(v118) = -28959;
                  v49 = -77;
                  goto LABEL_1521;
                case 43908:
                  LOWORD(v118) = -28959;
                  v49 = -76;
                  goto LABEL_1521;
                case 43909:
                  LOWORD(v118) = -28959;
                  v49 = -75;
                  goto LABEL_1521;
                case 43910:
                  LOWORD(v118) = -28959;
                  v49 = -74;
                  goto LABEL_1521;
                case 43911:
                  LOWORD(v118) = -28959;
                  v49 = -73;
                  goto LABEL_1521;
                case 43912:
                  LOWORD(v118) = -28959;
                  v49 = -72;
                  goto LABEL_1521;
                case 43913:
                  LOWORD(v118) = -28959;
                  v49 = -71;
                  goto LABEL_1521;
                case 43914:
                  LOWORD(v118) = -28959;
                  v49 = -70;
                  goto LABEL_1521;
                case 43915:
                  LOWORD(v118) = -28959;
                  v49 = -69;
                  goto LABEL_1521;
                case 43916:
                  LOWORD(v118) = -28959;
                  v49 = -68;
                  goto LABEL_1521;
                case 43917:
                  LOWORD(v118) = -28959;
                  v49 = -67;
                  goto LABEL_1521;
                case 43918:
                  LOWORD(v118) = -28959;
                  v49 = -66;
                  goto LABEL_1521;
                case 43919:
                  LOWORD(v118) = -28959;
                  v49 = -65;
                  goto LABEL_1521;
                case 43920:
                  LOWORD(v118) = -28703;
                  v49 = 0x80;
                  goto LABEL_1521;
                case 43921:
                  v19 = -28703;
                  goto LABEL_1142;
                case 43922:
                  v109 = -28703;
                  goto LABEL_1229;
                case 43923:
                  v107 = -28703;
                  goto LABEL_1223;
                case 43924:
                  v108 = -28703;
                  goto LABEL_1226;
                case 43925:
                  v106 = -28703;
                  goto LABEL_1216;
                case 43926:
                  v81 = -28703;
                  goto LABEL_1275;
                case 43927:
                  v115 = -28703;
                  goto LABEL_1236;
                case 43928:
                  v80 = -28703;
                  goto LABEL_1273;
                case 43929:
                  v112 = -28703;
                  goto LABEL_1241;
                case 43930:
                  v87 = -28703;
                  goto LABEL_1318;
                case 43931:
                  v105 = -28703;
                  goto LABEL_1239;
                case 43932:
                  v85 = -28703;
                  goto LABEL_1453;
                case 43933:
                  v114 = -28703;
                  goto LABEL_1218;
                case 43934:
                  v45 = -28703;
                  goto LABEL_1346;
                case 43935:
                  v88 = -28703;
                  goto LABEL_1508;
                case 43936:
                  v13 = -28703;
                  goto LABEL_1339;
                case 43937:
                  v34 = -28703;
                  goto LABEL_1485;
                case 43938:
                  v30 = -28703;
                  goto LABEL_1269;
                case 43939:
                  v32 = -28703;
                  goto LABEL_1510;
                case 43940:
                  v25 = -28703;
                  goto LABEL_1293;
                case 43941:
                  v36 = -28703;
                  goto LABEL_1490;
                case 43942:
                  v39 = -28703;
                  goto LABEL_1332;
                case 43943:
                  v33 = -28703;
                  goto LABEL_1512;
                case 43944:
                  v42 = -28703;
                  goto LABEL_1263;
                case 43945:
                  v27 = -28703;
                  goto LABEL_1487;
                case 43946:
                  v41 = -28703;
                  goto LABEL_1296;
                case 43947:
                  v24 = -28703;
                  goto LABEL_1520;
                case 43948:
                  v26 = -28703;
                  goto LABEL_1257;
                case 43949:
                  v38 = -28703;
                  goto LABEL_1503;
                case 43950:
                  v23 = -28703;
                  goto LABEL_1282;
                case 43951:
                  v31 = -28703;
                  goto LABEL_1505;
                case 43952:
                  v11 = -28703;
                  goto LABEL_1151;
                case 43953:
                  v12 = -28703;
                  goto LABEL_1498;
                case 43954:
                  v40 = -28703;
                  goto LABEL_1157;
                case 43955:
                  v18 = -28703;
                  goto LABEL_1514;
                case 43956:
                  v35 = -28703;
                  goto LABEL_1208;
                case 43957:
                  v37 = -28703;
                  goto LABEL_1483;
                case 43958:
                  v43 = -28703;
                  goto LABEL_1177;
                case 43959:
                  v44 = -28703;
                  goto LABEL_1468;
                case 43960:
                  v29 = -28703;
                  goto LABEL_1305;
                case 43961:
                  v28 = -28703;
                  goto LABEL_1472;
                case 43962:
                  v113 = -28703;
                  goto LABEL_1362;
                case 43963:
                  v92 = -28703;
                  goto LABEL_1516;
                case 43964:
                  v111 = -28703;
                  goto LABEL_1381;
                case 43965:
                  v104 = -28703;
LABEL_1175:
                  LOWORD(v118) = v104;
                  v49 = -83;
                  goto LABEL_1521;
                case 43966:
                  v110 = -28703;
LABEL_1206:
                  LOWORD(v118) = v110;
                  v49 = -82;
                  goto LABEL_1521;
                case 43967:
                  v103 = -28703;
LABEL_1159:
                  LOWORD(v118) = v103;
                  v49 = -81;
                  goto LABEL_1521;
                default:
                  if (v117 == 64256)
                  {
                    v65 = 102;
LABEL_1194:
                    LOBYTE(v118) = v65;
                    cmark_strbuf_put(v7, &v118, 1);
                    LOBYTE(v118) = v65;
                    goto LABEL_886;
                  }

                  if (v117 != 64257)
                  {
                    goto LABEL_199;
                  }

                  LOBYTE(v118) = 102;
                  break;
              }

LABEL_138:
              cmark_strbuf_put(v7, &v118, 1);
              LOBYTE(v118) = 105;
              goto LABEL_886;
            }

            if (v117 > 66559)
            {
              switch(v117)
              {
                case 66560:
                  v15 = -1466920720;
                  goto LABEL_668;
                case 66561:
                  v15 = -1450143504;
                  goto LABEL_668;
                case 66562:
                  v15 = -1433366288;
                  goto LABEL_668;
                case 66563:
                  v15 = -1416589072;
                  goto LABEL_668;
                case 66564:
                  v15 = -1399811856;
                  goto LABEL_668;
                case 66565:
                  v15 = -1383034640;
                  goto LABEL_668;
                case 66566:
                  v15 = -1366257424;
                  goto LABEL_668;
                case 66567:
                  v15 = -1349480208;
                  goto LABEL_668;
                case 66568:
                  v15 = -1332702992;
                  goto LABEL_668;
                case 66569:
                  v15 = -1315925776;
                  goto LABEL_668;
                case 66570:
                  v15 = -1299148560;
                  goto LABEL_668;
                case 66571:
                  v15 = -1282371344;
                  goto LABEL_668;
                case 66572:
                  v15 = -1265594128;
                  goto LABEL_668;
                case 66573:
                  v15 = -1248816912;
                  goto LABEL_668;
                case 66574:
                  v15 = -1232039696;
                  goto LABEL_668;
                case 66575:
                  v15 = -1215262480;
                  goto LABEL_668;
                case 66576:
                  v15 = -1198485264;
                  goto LABEL_668;
                case 66577:
                  v15 = -1181708048;
                  goto LABEL_668;
                case 66578:
                  v15 = -1164930832;
                  goto LABEL_668;
                case 66579:
                  v15 = -1148153616;
                  goto LABEL_668;
                case 66580:
                  v15 = -1131376400;
                  goto LABEL_668;
                case 66581:
                  v15 = -1114599184;
                  goto LABEL_668;
                case 66582:
                  v15 = -1097821968;
                  goto LABEL_668;
                case 66583:
                  v15 = -1081044752;
                  goto LABEL_668;
                case 66584:
                  v15 = -2137943824;
                  goto LABEL_668;
                case 66585:
                  v15 = -2121166608;
                  goto LABEL_668;
                case 66586:
                  v15 = -2104389392;
                  goto LABEL_668;
                case 66587:
                  v15 = -2087612176;
                  goto LABEL_668;
                case 66588:
                  v15 = -2070834960;
                  goto LABEL_668;
                case 66589:
                  v15 = -2054057744;
                  goto LABEL_668;
                case 66590:
                  v15 = -2037280528;
                  goto LABEL_668;
                case 66591:
                  v15 = -2020503312;
                  goto LABEL_668;
                case 66592:
                  v15 = -2003726096;
                  goto LABEL_668;
                case 66593:
                  v15 = -1986948880;
                  goto LABEL_668;
                case 66594:
                  v15 = -1970171664;
                  goto LABEL_668;
                case 66595:
                  v15 = -1953394448;
                  goto LABEL_668;
                case 66596:
                  v15 = -1936617232;
                  goto LABEL_668;
                case 66597:
                  v15 = -1919840016;
                  goto LABEL_668;
                case 66598:
                  v15 = -1903062800;
                  goto LABEL_668;
                case 66599:
                  v15 = -1886285584;
                  goto LABEL_668;
                default:
                  goto LABEL_199;
              }
            }

            if (v117 > 64277)
            {
              switch(v117)
              {
                case 65313:
                  v19 = -16913;
LABEL_1142:
                  LOWORD(v118) = v19;
                  v49 = -127;
                  goto LABEL_1521;
                case 65314:
                  v109 = -16913;
LABEL_1229:
                  LOWORD(v118) = v109;
                  v49 = -126;
                  goto LABEL_1521;
                case 65315:
                  v107 = -16913;
LABEL_1223:
                  LOWORD(v118) = v107;
                  v49 = -125;
                  goto LABEL_1521;
                case 65316:
                  v108 = -16913;
LABEL_1226:
                  LOWORD(v118) = v108;
                  v49 = -124;
                  goto LABEL_1521;
                case 65317:
                  v106 = -16913;
LABEL_1216:
                  LOWORD(v118) = v106;
                  v49 = -123;
                  goto LABEL_1521;
                case 65318:
                  v81 = -16913;
                  goto LABEL_1275;
                case 65319:
                  v115 = -16913;
LABEL_1236:
                  LOWORD(v118) = v115;
                  v49 = -121;
                  goto LABEL_1521;
                case 65320:
                  v80 = -16913;
                  goto LABEL_1273;
                case 65321:
                  v112 = -16913;
LABEL_1241:
                  LOWORD(v118) = v112;
                  v49 = -119;
                  goto LABEL_1521;
                case 65322:
                  v87 = -16913;
                  goto LABEL_1318;
                case 65323:
                  v105 = -16913;
LABEL_1239:
                  LOWORD(v118) = v105;
                  v49 = -117;
                  goto LABEL_1521;
                case 65324:
                  v85 = -16913;
                  goto LABEL_1453;
                case 65325:
                  v114 = -16913;
LABEL_1218:
                  LOWORD(v118) = v114;
                  v49 = -115;
                  goto LABEL_1521;
                case 65326:
                  v45 = -16913;
                  goto LABEL_1346;
                case 65327:
                  v88 = -16913;
                  goto LABEL_1508;
                case 65328:
                  v13 = -16913;
                  goto LABEL_1339;
                case 65329:
                  v34 = -16913;
                  goto LABEL_1485;
                case 65330:
                  v30 = -16913;
                  goto LABEL_1269;
                case 65331:
                  v32 = -16913;
                  goto LABEL_1510;
                case 65332:
                  v25 = -16913;
                  goto LABEL_1293;
                case 65333:
                  v36 = -16913;
                  goto LABEL_1490;
                case 65334:
                  v39 = -16913;
                  goto LABEL_1332;
                case 65335:
                  v33 = -16913;
                  goto LABEL_1512;
                case 65336:
                  v42 = -16913;
                  goto LABEL_1263;
                case 65337:
                  v27 = -16913;
                  goto LABEL_1487;
                case 65338:
                  v41 = -16913;
                  goto LABEL_1296;
                default:
                  if (v117 == 64278)
                  {
                    v22 = -16683;
                    goto LABEL_1213;
                  }

                  if (v117 != 64279)
                  {
                    goto LABEL_199;
                  }

                  LOWORD(v118) = -19243;
                  cmark_strbuf_put(v7, &v118, 2);
                  v10 = -21035;
                  break;
              }

              goto LABEL_988;
            }

            if (v117 <= 64261)
            {
              if (v117 > 64259)
              {
                if (v117 == 64260)
                {
                  LOBYTE(v118) = 102;
                  cmark_strbuf_put(v7, &v118, 1);
                  LOBYTE(v118) = 102;
                  goto LABEL_196;
                }

LABEL_125:
                LOBYTE(v118) = 115;
                cmark_strbuf_put(v7, &v118, 1);
LABEL_126:
                v14 = 116;
              }

              else
              {
                if (v117 != 64258)
                {
                  LOBYTE(v118) = 102;
                  cmark_strbuf_put(v7, &v118, 1);
                  LOBYTE(v118) = 102;
                  goto LABEL_138;
                }

                LOBYTE(v118) = 102;
LABEL_196:
                cmark_strbuf_put(v7, &v118, 1);
LABEL_197:
                v14 = 108;
              }

LABEL_885:
              LOBYTE(v118) = v14;
LABEL_886:
              v89 = v7;
              v90 = 1;
LABEL_1522:
              result = cmark_strbuf_put(v89, &v118, v90);
              goto LABEL_1523;
            }

            if (v117 > 64275)
            {
              LOWORD(v118) = -19243;
              if (v117 == 64276)
              {
                cmark_strbuf_put(v7, &v118, 2);
                v10 = -23083;
              }

              else
              {
                cmark_strbuf_put(v7, &v118, 2);
                v10 = -21547;
              }

              goto LABEL_988;
            }

            if (v117 == 64262)
            {
              goto LABEL_125;
            }

            if (v117 == 64275)
            {
              v22 = -19243;
LABEL_1213:
              LOWORD(v118) = v22;
              cmark_strbuf_put(v7, &v118, 2);
              v10 = -18731;
              goto LABEL_988;
            }
          }
        }

        else
        {
          if (v117 <= 4255)
          {
            switch(v117)
            {
              case 837:
              case 921:
                v10 = -17970;
                goto LABEL_988;
              case 838:
              case 839:
              case 840:
              case 841:
              case 842:
              case 843:
              case 844:
              case 845:
              case 846:
              case 847:
              case 848:
              case 849:
              case 850:
              case 851:
              case 852:
              case 853:
              case 854:
              case 855:
              case 856:
              case 857:
              case 858:
              case 859:
              case 860:
              case 861:
              case 862:
              case 863:
              case 864:
              case 865:
              case 866:
              case 867:
              case 868:
              case 869:
              case 870:
              case 871:
              case 872:
              case 873:
              case 874:
              case 875:
              case 876:
              case 877:
              case 878:
              case 879:
              case 881:
              case 883:
              case 884:
              case 885:
              case 887:
              case 888:
              case 889:
              case 890:
              case 891:
              case 892:
              case 893:
              case 894:
              case 896:
              case 897:
              case 898:
              case 899:
              case 900:
              case 901:
              case 903:
              case 907:
              case 909:
              case 930:
              case 940:
              case 941:
              case 942:
              case 943:
              case 945:
              case 946:
              case 947:
              case 948:
              case 949:
              case 950:
              case 951:
              case 952:
              case 953:
              case 954:
              case 955:
              case 956:
              case 957:
              case 958:
              case 959:
              case 960:
              case 961:
              case 963:
              case 964:
              case 965:
              case 966:
              case 967:
              case 968:
              case 969:
              case 970:
              case 971:
              case 972:
              case 973:
              case 974:
              case 978:
              case 979:
              case 980:
              case 983:
              case 985:
              case 987:
              case 989:
              case 991:
              case 993:
              case 995:
              case 997:
              case 999:
              case 1001:
              case 1003:
              case 1005:
              case 1007:
              case 1010:
              case 1011:
              case 1014:
              case 1016:
              case 1019:
              case 1020:
              case 1072:
              case 1073:
              case 1074:
              case 1075:
              case 1076:
              case 1077:
              case 1078:
              case 1079:
              case 1080:
              case 1081:
              case 1082:
              case 1083:
              case 1084:
              case 1085:
              case 1086:
              case 1087:
              case 1088:
              case 1089:
              case 1090:
              case 1091:
              case 1092:
              case 1093:
              case 1094:
              case 1095:
              case 1096:
              case 1097:
              case 1098:
              case 1099:
              case 1100:
              case 1101:
              case 1102:
              case 1103:
              case 1104:
              case 1105:
              case 1106:
              case 1107:
              case 1108:
              case 1109:
              case 1110:
              case 1111:
              case 1112:
              case 1113:
              case 1114:
              case 1115:
              case 1116:
              case 1117:
              case 1118:
              case 1119:
              case 1121:
              case 1123:
              case 1125:
              case 1127:
              case 1129:
              case 1131:
              case 1133:
              case 1135:
              case 1137:
              case 1139:
              case 1141:
              case 1143:
              case 1145:
              case 1147:
              case 1149:
              case 1151:
              case 1153:
              case 1154:
              case 1155:
              case 1156:
              case 1157:
              case 1158:
              case 1159:
              case 1160:
              case 1161:
              case 1163:
              case 1165:
              case 1167:
              case 1169:
              case 1171:
              case 1173:
              case 1175:
              case 1177:
              case 1179:
              case 1181:
              case 1183:
              case 1185:
              case 1187:
              case 1189:
              case 1191:
              case 1193:
              case 1195:
              case 1197:
              case 1199:
              case 1201:
              case 1203:
              case 1205:
              case 1207:
              case 1209:
              case 1211:
              case 1213:
              case 1215:
              case 1218:
              case 1220:
              case 1222:
              case 1224:
              case 1226:
              case 1228:
              case 1230:
              case 1231:
              case 1233:
              case 1235:
              case 1237:
              case 1239:
              case 1241:
              case 1243:
              case 1245:
              case 1247:
              case 1249:
              case 1251:
              case 1253:
              case 1255:
              case 1257:
              case 1259:
              case 1261:
              case 1263:
              case 1265:
              case 1267:
              case 1269:
              case 1271:
              case 1273:
              case 1275:
              case 1277:
              case 1279:
              case 1281:
              case 1283:
              case 1285:
              case 1287:
              case 1289:
              case 1291:
              case 1293:
              case 1295:
              case 1297:
              case 1299:
              case 1301:
              case 1303:
              case 1305:
              case 1307:
              case 1309:
              case 1311:
              case 1313:
              case 1315:
              case 1317:
              case 1319:
              case 1321:
              case 1323:
              case 1325:
              case 1327:
              case 1328:
              case 1367:
              case 1368:
              case 1369:
              case 1370:
              case 1371:
              case 1372:
              case 1373:
              case 1374:
              case 1375:
              case 1376:
              case 1377:
              case 1378:
              case 1379:
              case 1380:
              case 1381:
              case 1382:
              case 1383:
              case 1384:
              case 1385:
              case 1386:
              case 1387:
              case 1388:
              case 1389:
              case 1390:
              case 1391:
              case 1392:
              case 1393:
              case 1394:
              case 1395:
              case 1396:
              case 1397:
              case 1398:
              case 1399:
              case 1400:
              case 1401:
              case 1402:
              case 1403:
              case 1404:
              case 1405:
              case 1406:
              case 1407:
              case 1408:
              case 1409:
              case 1410:
              case 1411:
              case 1412:
              case 1413:
              case 1414:
                goto LABEL_199;
              case 880:
                v10 = -20019;
                goto LABEL_988;
              case 882:
                v10 = -19507;
                goto LABEL_988;
              case 886:
                v10 = -18483;
                goto LABEL_988;
              case 895:
                v10 = -19505;
                goto LABEL_988;
              case 902:
                v10 = -21298;
                goto LABEL_988;
              case 904:
                v10 = -21042;
                goto LABEL_988;
              case 905:
                v10 = -20786;
                goto LABEL_988;
              case 906:
                v10 = -20530;
                goto LABEL_988;
              case 908:
                v10 = -29489;
                goto LABEL_988;
              case 910:
                v10 = -29233;
                goto LABEL_988;
              case 911:
                v10 = -28977;
                goto LABEL_988;
              case 912:
                goto LABEL_152;
              case 913:
                v10 = -20018;
                goto LABEL_988;
              case 914:
              case 976:
                v10 = -19762;
                goto LABEL_988;
              case 915:
                v10 = -19506;
                goto LABEL_988;
              case 916:
                v10 = -19250;
                goto LABEL_988;
              case 917:
              case 1013:
                v10 = -18994;
                goto LABEL_988;
              case 918:
                v10 = -18738;
                goto LABEL_988;
              case 919:
                v10 = -18482;
                goto LABEL_988;
              case 920:
              case 977:
              case 1012:
                v10 = -18226;
                goto LABEL_988;
              case 922:
              case 1008:
                v10 = -17714;
                goto LABEL_988;
              case 923:
                v10 = -17458;
                goto LABEL_988;
              case 924:
                v10 = -17202;
                goto LABEL_988;
              case 925:
                v10 = -16946;
                goto LABEL_988;
              case 926:
                v10 = -16690;
                goto LABEL_988;
              case 927:
                v10 = -16434;
                goto LABEL_988;
              case 928:
              case 982:
                v10 = -32561;
                goto LABEL_988;
              case 929:
              case 1009:
                v10 = -32305;
                goto LABEL_988;
              case 931:
              case 962:
                v10 = -31793;
                goto LABEL_988;
              case 932:
                v10 = -31537;
                goto LABEL_988;
              case 933:
                v10 = -31281;
                goto LABEL_988;
              case 934:
              case 981:
                v10 = -31025;
                goto LABEL_988;
              case 935:
                v10 = -30769;
                goto LABEL_988;
              case 936:
                v10 = -30513;
                goto LABEL_988;
              case 937:
                v10 = -30257;
                goto LABEL_988;
              case 938:
                v10 = -30001;
                goto LABEL_988;
              case 939:
                v10 = -29745;
                goto LABEL_988;
              case 944:
                goto LABEL_151;
              case 975:
                v10 = -26673;
                goto LABEL_988;
              case 984:
                v10 = -26161;
                goto LABEL_988;
              case 986:
                v10 = -25649;
                goto LABEL_988;
              case 988:
                v10 = -25137;
                goto LABEL_988;
              case 990:
                v10 = -24625;
                goto LABEL_988;
              case 992:
                v10 = -24113;
                goto LABEL_988;
              case 994:
                v10 = -23601;
                goto LABEL_988;
              case 996:
                v10 = -23089;
                goto LABEL_988;
              case 998:
                v10 = -22577;
                goto LABEL_988;
              case 1000:
                v10 = -22065;
                goto LABEL_988;
              case 1002:
                v10 = -21553;
                goto LABEL_988;
              case 1004:
                v10 = -21041;
                goto LABEL_988;
              case 1006:
                v10 = -20529;
                goto LABEL_988;
              case 1015:
                v10 = -18225;
                goto LABEL_988;
              case 1017:
                v10 = -19761;
                goto LABEL_988;
              case 1018:
                v10 = -17457;
                goto LABEL_988;
              case 1021:
                v10 = -17459;
                goto LABEL_988;
              case 1022:
                v10 = -17203;
                goto LABEL_988;
              case 1023:
                v10 = -16947;
                goto LABEL_988;
              case 1024:
                v10 = -28463;
                goto LABEL_988;
              case 1025:
                v10 = -28207;
                goto LABEL_988;
              case 1026:
                v10 = -27951;
                goto LABEL_988;
              case 1027:
                v10 = -27695;
                goto LABEL_988;
              case 1028:
                v10 = -27439;
                goto LABEL_988;
              case 1029:
                v10 = -27183;
                goto LABEL_988;
              case 1030:
                v10 = -26927;
                goto LABEL_988;
              case 1031:
                v10 = -26671;
                goto LABEL_988;
              case 1032:
                v10 = -26415;
                goto LABEL_988;
              case 1033:
                v10 = -26159;
                goto LABEL_988;
              case 1034:
                v10 = -25903;
                goto LABEL_988;
              case 1035:
                v10 = -25647;
                goto LABEL_988;
              case 1036:
                v10 = -25391;
                goto LABEL_988;
              case 1037:
                v10 = -25135;
                goto LABEL_988;
              case 1038:
                v10 = -24879;
                goto LABEL_988;
              case 1039:
                v10 = -24623;
                goto LABEL_988;
              case 1040:
                v10 = -20272;
                goto LABEL_988;
              case 1041:
                v10 = -20016;
                goto LABEL_988;
              case 1042:
                v10 = -19760;
                goto LABEL_988;
              case 1043:
                v10 = -19504;
                goto LABEL_988;
              case 1044:
                v10 = -19248;
                goto LABEL_988;
              case 1045:
                v10 = -18992;
                goto LABEL_988;
              case 1046:
                v10 = -18736;
                goto LABEL_988;
              case 1047:
                v10 = -18480;
                goto LABEL_988;
              case 1048:
                v10 = -18224;
                goto LABEL_988;
              case 1049:
                v10 = -17968;
                goto LABEL_988;
              case 1050:
                v10 = -17712;
                goto LABEL_988;
              case 1051:
                v10 = -17456;
                goto LABEL_988;
              case 1052:
                v10 = -17200;
                goto LABEL_988;
              case 1053:
                v10 = -16944;
                goto LABEL_988;
              case 1054:
                v10 = -16688;
                goto LABEL_988;
              case 1055:
                v10 = -16432;
                goto LABEL_988;
              case 1056:
                v10 = -32559;
                goto LABEL_988;
              case 1057:
                v10 = -32303;
                goto LABEL_988;
              case 1058:
                v10 = -32047;
                goto LABEL_988;
              case 1059:
                v10 = -31791;
                goto LABEL_988;
              case 1060:
                v10 = -31535;
                goto LABEL_988;
              case 1061:
                v10 = -31279;
                goto LABEL_988;
              case 1062:
                v10 = -31023;
                goto LABEL_988;
              case 1063:
                v10 = -30767;
                goto LABEL_988;
              case 1064:
                v10 = -30511;
                goto LABEL_988;
              case 1065:
                v10 = -30255;
                goto LABEL_988;
              case 1066:
                v10 = -29999;
                goto LABEL_988;
              case 1067:
                v10 = -29743;
                goto LABEL_988;
              case 1068:
                v10 = -29487;
                goto LABEL_988;
              case 1069:
                v10 = -29231;
                goto LABEL_988;
              case 1070:
                v10 = -28975;
                goto LABEL_988;
              case 1071:
                v10 = -28719;
                goto LABEL_988;
              case 1120:
                v10 = -24111;
                goto LABEL_988;
              case 1122:
                v10 = -23599;
                goto LABEL_988;
              case 1124:
                v10 = -23087;
                goto LABEL_988;
              case 1126:
                v10 = -22575;
                goto LABEL_988;
              case 1128:
                v10 = -22063;
                goto LABEL_988;
              case 1130:
                v10 = -21551;
                goto LABEL_988;
              case 1132:
                v10 = -21039;
                goto LABEL_988;
              case 1134:
                v10 = -20527;
                goto LABEL_988;
              case 1136:
                v10 = -20015;
                goto LABEL_988;
              case 1138:
                v10 = -19503;
                goto LABEL_988;
              case 1140:
                v10 = -18991;
                goto LABEL_988;
              case 1142:
                v10 = -18479;
                goto LABEL_988;
              case 1144:
                v10 = -17967;
                goto LABEL_988;
              case 1146:
                v10 = -17455;
                goto LABEL_988;
              case 1148:
                v10 = -16943;
                goto LABEL_988;
              case 1150:
                v10 = -16431;
                goto LABEL_988;
              case 1152:
                v10 = -32302;
                goto LABEL_988;
              case 1162:
                v10 = -29742;
                goto LABEL_988;
              case 1164:
                v10 = -29230;
                goto LABEL_988;
              case 1166:
                v10 = -28718;
                goto LABEL_988;
              case 1168:
                v10 = -28206;
                goto LABEL_988;
              case 1170:
                v10 = -27694;
                goto LABEL_988;
              case 1172:
                v10 = -27182;
                goto LABEL_988;
              case 1174:
                v10 = -26670;
                goto LABEL_988;
              case 1176:
                v10 = -26158;
                goto LABEL_988;
              case 1178:
                v10 = -25646;
                goto LABEL_988;
              case 1180:
                v10 = -25134;
                goto LABEL_988;
              case 1182:
                v10 = -24622;
                goto LABEL_988;
              case 1184:
                v10 = -24110;
                goto LABEL_988;
              case 1186:
                v10 = -23598;
                goto LABEL_988;
              case 1188:
                v10 = -23086;
                goto LABEL_988;
              case 1190:
                v10 = -22574;
                goto LABEL_988;
              case 1192:
                v10 = -22062;
                goto LABEL_988;
              case 1194:
                v10 = -21550;
                goto LABEL_988;
              case 1196:
                v10 = -21038;
                goto LABEL_988;
              case 1198:
                v10 = -20526;
                goto LABEL_988;
              case 1200:
                v10 = -20014;
                goto LABEL_988;
              case 1202:
                v10 = -19502;
                goto LABEL_988;
              case 1204:
                v10 = -18990;
                goto LABEL_988;
              case 1206:
                v10 = -18478;
                goto LABEL_988;
              case 1208:
                v10 = -17966;
                goto LABEL_988;
              case 1210:
                v10 = -17454;
                goto LABEL_988;
              case 1212:
                v10 = -16942;
                goto LABEL_988;
              case 1214:
                v10 = -16430;
                goto LABEL_988;
              case 1216:
                v10 = -28717;
                goto LABEL_988;
              case 1217:
                v10 = -32045;
                goto LABEL_988;
              case 1219:
                v10 = -31533;
                goto LABEL_988;
              case 1221:
                v10 = -31021;
                goto LABEL_988;
              case 1223:
                v10 = -30509;
                goto LABEL_988;
              case 1225:
                v10 = -29997;
                goto LABEL_988;
              case 1227:
                v10 = -29485;
                goto LABEL_988;
              case 1229:
                v10 = -28973;
                goto LABEL_988;
              case 1232:
                v10 = -28205;
                goto LABEL_988;
              case 1234:
                v10 = -27693;
                goto LABEL_988;
              case 1236:
                v10 = -27181;
                goto LABEL_988;
              case 1238:
                v10 = -26669;
                goto LABEL_988;
              case 1240:
                v10 = -26157;
                goto LABEL_988;
              case 1242:
                v10 = -25645;
                goto LABEL_988;
              case 1244:
                v10 = -25133;
                goto LABEL_988;
              case 1246:
                v10 = -24621;
                goto LABEL_988;
              case 1248:
                v10 = -24109;
                goto LABEL_988;
              case 1250:
                v10 = -23597;
                goto LABEL_988;
              case 1252:
                v10 = -23085;
                goto LABEL_988;
              case 1254:
                v10 = -22573;
                goto LABEL_988;
              case 1256:
                v10 = -22061;
                goto LABEL_988;
              case 1258:
                v10 = -21549;
                goto LABEL_988;
              case 1260:
                v10 = -21037;
                goto LABEL_988;
              case 1262:
                v10 = -20525;
                goto LABEL_988;
              case 1264:
                v10 = -20013;
                goto LABEL_988;
              case 1266:
                v10 = -19501;
                goto LABEL_988;
              case 1268:
                v10 = -18989;
                goto LABEL_988;
              case 1270:
                v10 = -18477;
                goto LABEL_988;
              case 1272:
                v10 = -17965;
                goto LABEL_988;
              case 1274:
                v10 = -17453;
                goto LABEL_988;
              case 1276:
                v10 = -16941;
                goto LABEL_988;
              case 1278:
                v10 = -16429;
                goto LABEL_988;
              case 1280:
                v10 = -32300;
                goto LABEL_988;
              case 1282:
                v10 = -31788;
                goto LABEL_988;
              case 1284:
                v10 = -31276;
                goto LABEL_988;
              case 1286:
                v10 = -30764;
                goto LABEL_988;
              case 1288:
                v10 = -30252;
                goto LABEL_988;
              case 1290:
                v10 = -29740;
                goto LABEL_988;
              case 1292:
                v10 = -29228;
                goto LABEL_988;
              case 1294:
                v10 = -28716;
                goto LABEL_988;
              case 1296:
                v10 = -28204;
                goto LABEL_988;
              case 1298:
                v10 = -27692;
                goto LABEL_988;
              case 1300:
                v10 = -27180;
                goto LABEL_988;
              case 1302:
                v10 = -26668;
                goto LABEL_988;
              case 1304:
                v10 = -26156;
                goto LABEL_988;
              case 1306:
                v10 = -25644;
                goto LABEL_988;
              case 1308:
                v10 = -25132;
                goto LABEL_988;
              case 1310:
                v10 = -24620;
                goto LABEL_988;
              case 1312:
                v10 = -24108;
                goto LABEL_988;
              case 1314:
                v10 = -23596;
                goto LABEL_988;
              case 1316:
                v10 = -23084;
                goto LABEL_988;
              case 1318:
                v10 = -22572;
                goto LABEL_988;
              case 1320:
                v10 = -22060;
                goto LABEL_988;
              case 1322:
                v10 = -21548;
                goto LABEL_988;
              case 1324:
                v10 = -21036;
                goto LABEL_988;
              case 1326:
                v10 = -20524;
                goto LABEL_988;
              case 1329:
                v10 = -24107;
                goto LABEL_988;
              case 1330:
                v10 = -23851;
                goto LABEL_988;
              case 1331:
                v10 = -23595;
                goto LABEL_988;
              case 1332:
                v10 = -23339;
                goto LABEL_988;
              case 1333:
                v10 = -23083;
                goto LABEL_988;
              case 1334:
                v10 = -22827;
                goto LABEL_988;
              case 1335:
                v10 = -22571;
                goto LABEL_988;
              case 1336:
                v10 = -22315;
                goto LABEL_988;
              case 1337:
                v10 = -22059;
                goto LABEL_988;
              case 1338:
                v10 = -21803;
                goto LABEL_988;
              case 1339:
                v10 = -21547;
                goto LABEL_988;
              case 1340:
                v10 = -21291;
                goto LABEL_988;
              case 1341:
                v10 = -21035;
                goto LABEL_988;
              case 1342:
                v10 = -20779;
                goto LABEL_988;
              case 1343:
                v10 = -20523;
                goto LABEL_988;
              case 1344:
                v10 = -20267;
                goto LABEL_988;
              case 1345:
                v10 = -20011;
                goto LABEL_988;
              case 1346:
                v10 = -19755;
                goto LABEL_988;
              case 1347:
                v10 = -19499;
                goto LABEL_988;
              case 1348:
                v10 = -19243;
                goto LABEL_988;
              case 1349:
                v10 = -18987;
                goto LABEL_988;
              case 1350:
                v10 = -18731;
                goto LABEL_988;
              case 1351:
                v10 = -18475;
                goto LABEL_988;
              case 1352:
                v10 = -18219;
                goto LABEL_988;
              case 1353:
                v10 = -17963;
                goto LABEL_988;
              case 1354:
                v10 = -17707;
                goto LABEL_988;
              case 1355:
                v10 = -17451;
                goto LABEL_988;
              case 1356:
                v10 = -17195;
                goto LABEL_988;
              case 1357:
                v10 = -16939;
                goto LABEL_988;
              case 1358:
                v10 = -16683;
                goto LABEL_988;
              case 1359:
                v10 = -16427;
                goto LABEL_988;
              case 1360:
                v10 = -32554;
                goto LABEL_988;
              case 1361:
                v10 = -32298;
                goto LABEL_988;
              case 1362:
                break;
              case 1363:
                v10 = -31786;
                goto LABEL_988;
              case 1364:
                v10 = -31530;
                goto LABEL_988;
              case 1365:
                v10 = -31274;
                goto LABEL_988;
              case 1366:
                v10 = -31018;
                goto LABEL_988;
              case 1415:
                LOWORD(v118) = -23083;
                cmark_strbuf_put(v7, &v118, 2);
                break;
              default:
                switch(v117)
                {
                  case 65:
                    v14 = 97;
                    goto LABEL_885;
                  case 66:
                    v14 = 98;
                    goto LABEL_885;
                  case 67:
                    v14 = 99;
                    goto LABEL_885;
                  case 68:
                    v14 = 100;
                    goto LABEL_885;
                  case 69:
                    v14 = 101;
                    goto LABEL_885;
                  case 70:
                    v14 = 102;
                    goto LABEL_885;
                  case 71:
                    v14 = 103;
                    goto LABEL_885;
                  case 72:
                    v14 = 104;
                    goto LABEL_885;
                  case 73:
                    v14 = 105;
                    goto LABEL_885;
                  case 74:
                    v14 = 106;
                    goto LABEL_885;
                  case 75:
                    goto LABEL_67;
                  case 76:
                    goto LABEL_197;
                  case 77:
                    v14 = 109;
                    goto LABEL_885;
                  case 78:
                    break;
                  case 79:
                    v14 = 111;
                    goto LABEL_885;
                  case 80:
                    v14 = 112;
                    goto LABEL_885;
                  case 81:
                    v14 = 113;
                    goto LABEL_885;
                  case 82:
                    v14 = 114;
                    goto LABEL_885;
                  case 83:
                  case 383:
                    v14 = 115;
                    goto LABEL_885;
                  case 84:
                    goto LABEL_126;
                  case 85:
                    v14 = 117;
                    goto LABEL_885;
                  case 86:
                    v14 = 118;
                    goto LABEL_885;
                  case 87:
                    v14 = 119;
                    goto LABEL_885;
                  case 88:
                    v14 = 120;
                    goto LABEL_885;
                  case 89:
                    v14 = 121;
                    goto LABEL_885;
                  case 90:
                    v14 = 122;
                    goto LABEL_885;
                  case 181:
                    v10 = -17202;
                    goto LABEL_988;
                  case 192:
                    v10 = -24381;
                    goto LABEL_988;
                  case 193:
                    v10 = -24125;
                    goto LABEL_988;
                  case 194:
                    v10 = -23869;
                    goto LABEL_988;
                  case 195:
                    v10 = -23613;
                    goto LABEL_988;
                  case 196:
                    v10 = -23357;
                    goto LABEL_988;
                  case 197:
                    goto LABEL_53;
                  case 198:
                    v10 = -22845;
                    goto LABEL_988;
                  case 199:
                    v10 = -22589;
                    goto LABEL_988;
                  case 200:
                    v10 = -22333;
                    goto LABEL_988;
                  case 201:
                    v10 = -22077;
                    goto LABEL_988;
                  case 202:
                    v10 = -21821;
                    goto LABEL_988;
                  case 203:
                    v10 = -21565;
                    goto LABEL_988;
                  case 204:
                    v10 = -21309;
                    goto LABEL_988;
                  case 205:
                    v10 = -21053;
                    goto LABEL_988;
                  case 206:
                    v10 = -20797;
                    goto LABEL_988;
                  case 207:
                    v10 = -20541;
                    goto LABEL_988;
                  case 208:
                    v10 = -20285;
                    goto LABEL_988;
                  case 209:
                    v10 = -20029;
                    goto LABEL_988;
                  case 210:
                    v10 = -19773;
                    goto LABEL_988;
                  case 211:
                    v10 = -19517;
                    goto LABEL_988;
                  case 212:
                    v10 = -19261;
                    goto LABEL_988;
                  case 213:
                    v10 = -19005;
                    goto LABEL_988;
                  case 214:
                    v10 = -18749;
                    goto LABEL_988;
                  case 216:
                    v10 = -18237;
                    goto LABEL_988;
                  case 217:
                    v10 = -17981;
                    goto LABEL_988;
                  case 218:
                    v10 = -17725;
                    goto LABEL_988;
                  case 219:
                    v10 = -17469;
                    goto LABEL_988;
                  case 220:
                    v10 = -17213;
                    goto LABEL_988;
                  case 221:
                    v10 = -16957;
                    goto LABEL_988;
                  case 222:
                    v10 = -16701;
                    goto LABEL_988;
                  case 223:
                    goto LABEL_155;
                  case 256:
                    v10 = -32316;
                    goto LABEL_988;
                  case 258:
                    v10 = -31804;
                    goto LABEL_988;
                  case 260:
                    v10 = -31292;
                    goto LABEL_988;
                  case 262:
                    v10 = -30780;
                    goto LABEL_988;
                  case 264:
                    v10 = -30268;
                    goto LABEL_988;
                  case 266:
                    v10 = -29756;
                    goto LABEL_988;
                  case 268:
                    v10 = -29244;
                    goto LABEL_988;
                  case 270:
                    v10 = -28732;
                    goto LABEL_988;
                  case 272:
                    v10 = -28220;
                    goto LABEL_988;
                  case 274:
                    v10 = -27708;
                    goto LABEL_988;
                  case 276:
                    v10 = -27196;
                    goto LABEL_988;
                  case 278:
                    v10 = -26684;
                    goto LABEL_988;
                  case 280:
                    v10 = -26172;
                    goto LABEL_988;
                  case 282:
                    v10 = -25660;
                    goto LABEL_988;
                  case 284:
                    v10 = -25148;
                    goto LABEL_988;
                  case 286:
                    v10 = -24636;
                    goto LABEL_988;
                  case 288:
                    v10 = -24124;
                    goto LABEL_988;
                  case 290:
                    v10 = -23612;
                    goto LABEL_988;
                  case 292:
                    v10 = -23100;
                    goto LABEL_988;
                  case 294:
                    v10 = -22588;
                    goto LABEL_988;
                  case 296:
                    v10 = -22076;
                    goto LABEL_988;
                  case 298:
                    v10 = -21564;
                    goto LABEL_988;
                  case 300:
                    v10 = -21052;
                    goto LABEL_988;
                  case 302:
                    v10 = -20540;
                    goto LABEL_988;
                  case 304:
                    LOBYTE(v118) = 105;
                    cmark_strbuf_put(v7, &v118, 1);
                    v10 = -30772;
                    goto LABEL_988;
                  case 306:
                    v10 = -19516;
                    goto LABEL_988;
                  case 308:
                    v10 = -19004;
                    goto LABEL_988;
                  case 310:
                    v10 = -18492;
                    goto LABEL_988;
                  case 313:
                    v10 = -17724;
                    goto LABEL_988;
                  case 315:
                    v10 = -17212;
                    goto LABEL_988;
                  case 317:
                    v10 = -16700;
                    goto LABEL_988;
                  case 319:
                    v10 = -32571;
                    goto LABEL_988;
                  case 321:
                    v10 = -32059;
                    goto LABEL_988;
                  case 323:
                    v10 = -31547;
                    goto LABEL_988;
                  case 325:
                    v10 = -31035;
                    goto LABEL_988;
                  case 327:
                    v10 = -30523;
                    goto LABEL_988;
                  case 329:
                    LOWORD(v118) = -17206;
                    cmark_strbuf_put(v7, &v118, 2);
                    break;
                  case 330:
                    v10 = -29755;
                    goto LABEL_988;
                  case 332:
                    v10 = -29243;
                    goto LABEL_988;
                  case 334:
                    v10 = -28731;
                    goto LABEL_988;
                  case 336:
                    v10 = -28219;
                    goto LABEL_988;
                  case 338:
                    v10 = -27707;
                    goto LABEL_988;
                  case 340:
                    v10 = -27195;
                    goto LABEL_988;
                  case 342:
                    v10 = -26683;
                    goto LABEL_988;
                  case 344:
                    v10 = -26171;
                    goto LABEL_988;
                  case 346:
                    v10 = -25659;
                    goto LABEL_988;
                  case 348:
                    v10 = -25147;
                    goto LABEL_988;
                  case 350:
                    v10 = -24635;
                    goto LABEL_988;
                  case 352:
                    v10 = -24123;
                    goto LABEL_988;
                  case 354:
                    v10 = -23611;
                    goto LABEL_988;
                  case 356:
                    v10 = -23099;
                    goto LABEL_988;
                  case 358:
                    v10 = -22587;
                    goto LABEL_988;
                  case 360:
                    v10 = -22075;
                    goto LABEL_988;
                  case 362:
                    v10 = -21563;
                    goto LABEL_988;
                  case 364:
                    v10 = -21051;
                    goto LABEL_988;
                  case 366:
                    v10 = -20539;
                    goto LABEL_988;
                  case 368:
                    v10 = -20027;
                    goto LABEL_988;
                  case 370:
                    v10 = -19515;
                    goto LABEL_988;
                  case 372:
                    v10 = -19003;
                    goto LABEL_988;
                  case 374:
                    v10 = -18491;
                    goto LABEL_988;
                  case 376:
                    v10 = -16445;
                    goto LABEL_988;
                  case 377:
                    v10 = -17723;
                    goto LABEL_988;
                  case 379:
                    v10 = -17211;
                    goto LABEL_988;
                  case 381:
                    v10 = -16699;
                    goto LABEL_988;
                  case 385:
                    v10 = -27703;
                    goto LABEL_988;
                  case 386:
                    v10 = -31802;
                    goto LABEL_988;
                  case 388:
                    v10 = -31290;
                    goto LABEL_988;
                  case 390:
                    v10 = -27447;
                    goto LABEL_988;
                  case 391:
                    v10 = -30522;
                    goto LABEL_988;
                  case 393:
                    v10 = -26935;
                    goto LABEL_988;
                  case 394:
                    v10 = -26679;
                    goto LABEL_988;
                  case 395:
                    v10 = -29498;
                    goto LABEL_988;
                  case 398:
                    v10 = -25145;
                    goto LABEL_988;
                  case 399:
                    v10 = -26167;
                    goto LABEL_988;
                  case 400:
                    v10 = -25655;
                    goto LABEL_988;
                  case 401:
                    v10 = -27962;
                    goto LABEL_988;
                  case 403:
                    v10 = -24375;
                    goto LABEL_988;
                  case 404:
                    v10 = -23607;
                    goto LABEL_988;
                  case 406:
                    v10 = -22071;
                    goto LABEL_988;
                  case 407:
                    v10 = -22327;
                    goto LABEL_988;
                  case 408:
                    v10 = -26170;
                    goto LABEL_988;
                  case 412:
                    v10 = -20535;
                    goto LABEL_988;
                  case 413:
                    v10 = -19767;
                    goto LABEL_988;
                  case 415:
                    v10 = -18999;
                    goto LABEL_988;
                  case 416:
                    v10 = -24122;
                    goto LABEL_988;
                  case 418:
                    v10 = -23610;
                    goto LABEL_988;
                  case 420:
                    v10 = -23098;
                    goto LABEL_988;
                  case 422:
                    v10 = -32566;
                    goto LABEL_988;
                  case 423:
                    v10 = -22330;
                    goto LABEL_988;
                  case 425:
                    v10 = -31798;
                    goto LABEL_988;
                  case 428:
                    v10 = -21050;
                    goto LABEL_988;
                  case 430:
                    v10 = -30518;
                    goto LABEL_988;
                  case 431:
                    v10 = -20282;
                    goto LABEL_988;
                  case 433:
                    v10 = -30006;
                    goto LABEL_988;
                  case 434:
                    v10 = -29750;
                    goto LABEL_988;
                  case 435:
                    v10 = -19258;
                    goto LABEL_988;
                  case 437:
                    v10 = -18746;
                    goto LABEL_988;
                  case 439:
                    v10 = -27958;
                    goto LABEL_988;
                  case 440:
                    v10 = -17978;
                    goto LABEL_988;
                  case 444:
                    v10 = -16954;
                    goto LABEL_988;
                  case 452:
                  case 453:
                    v10 = -31033;
                    goto LABEL_988;
                  case 455:
                  case 456:
                    v10 = -30265;
                    goto LABEL_988;
                  case 458:
                  case 459:
                    v10 = -29497;
                    goto LABEL_988;
                  case 461:
                    v10 = -28985;
                    goto LABEL_988;
                  case 463:
                    v10 = -28473;
                    goto LABEL_988;
                  case 465:
                    v10 = -27961;
                    goto LABEL_988;
                  case 467:
                    v10 = -27449;
                    goto LABEL_988;
                  case 469:
                    v10 = -26937;
                    goto LABEL_988;
                  case 471:
                    v10 = -26425;
                    goto LABEL_988;
                  case 473:
                    v10 = -25913;
                    goto LABEL_988;
                  case 475:
                    v10 = -25401;
                    goto LABEL_988;
                  case 478:
                    v10 = -24633;
                    goto LABEL_988;
                  case 480:
                    v10 = -24121;
                    goto LABEL_988;
                  case 482:
                    v10 = -23609;
                    goto LABEL_988;
                  case 484:
                    v10 = -23097;
                    goto LABEL_988;
                  case 486:
                    v10 = -22585;
                    goto LABEL_988;
                  case 488:
                    v10 = -22073;
                    goto LABEL_988;
                  case 490:
                    v10 = -21561;
                    goto LABEL_988;
                  case 492:
                    v10 = -21049;
                    goto LABEL_988;
                  case 494:
                    v10 = -20537;
                    goto LABEL_988;
                  case 496:
                    LOBYTE(v118) = 106;
                    cmark_strbuf_put(v7, &v118, 1);
                    v10 = -29492;
                    goto LABEL_988;
                  case 497:
                  case 498:
                    v10 = -19513;
                    goto LABEL_988;
                  case 500:
                    v10 = -19001;
                    goto LABEL_988;
                  case 502:
                    v10 = -27194;
                    goto LABEL_988;
                  case 503:
                    v10 = -16442;
                    goto LABEL_988;
                  case 504:
                    v10 = -17977;
                    goto LABEL_988;
                  case 506:
                    v10 = -17465;
                    goto LABEL_988;
                  case 508:
                    v10 = -16953;
                    goto LABEL_988;
                  case 510:
                    v10 = -16441;
                    goto LABEL_988;
                  case 512:
                    v10 = -32312;
                    goto LABEL_988;
                  case 514:
                    v10 = -31800;
                    goto LABEL_988;
                  case 516:
                    v10 = -31288;
                    goto LABEL_988;
                  case 518:
                    v10 = -30776;
                    goto LABEL_988;
                  case 520:
                    v10 = -30264;
                    goto LABEL_988;
                  case 522:
                    v10 = -29752;
                    goto LABEL_988;
                  case 524:
                    v10 = -29240;
                    goto LABEL_988;
                  case 526:
                    v10 = -28728;
                    goto LABEL_988;
                  case 528:
                    v10 = -28216;
                    goto LABEL_988;
                  case 530:
                    v10 = -27704;
                    goto LABEL_988;
                  case 532:
                    v10 = -27192;
                    goto LABEL_988;
                  case 534:
                    v10 = -26680;
                    goto LABEL_988;
                  case 536:
                    v10 = -26168;
                    goto LABEL_988;
                  case 538:
                    v10 = -25656;
                    goto LABEL_988;
                  case 540:
                    v10 = -25144;
                    goto LABEL_988;
                  case 542:
                    v10 = -24632;
                    goto LABEL_988;
                  case 544:
                    v10 = -24890;
                    goto LABEL_988;
                  case 546:
                    v10 = -23608;
                    goto LABEL_988;
                  case 548:
                    v10 = -23096;
                    goto LABEL_988;
                  case 550:
                    v10 = -22584;
                    goto LABEL_988;
                  case 552:
                    v10 = -22072;
                    goto LABEL_988;
                  case 554:
                    v10 = -21560;
                    goto LABEL_988;
                  case 556:
                    v10 = -21048;
                    goto LABEL_988;
                  case 558:
                    v10 = -20536;
                    goto LABEL_988;
                  case 560:
                    v10 = -20024;
                    goto LABEL_988;
                  case 562:
                    v10 = -19512;
                    goto LABEL_988;
                  case 570:
                    v37 = -19998;
                    goto LABEL_1483;
                  case 571:
                    v10 = -17208;
                    goto LABEL_988;
                  case 573:
                    v10 = -25914;
                    goto LABEL_988;
                  case 574:
                    v43 = -19998;
                    goto LABEL_1177;
                  case 577:
                    v10 = -32055;
                    goto LABEL_988;
                  case 579:
                    v10 = -32570;
                    goto LABEL_988;
                  case 580:
                    v10 = -30262;
                    goto LABEL_988;
                  case 581:
                    v10 = -29494;
                    goto LABEL_988;
                  case 582:
                    v10 = -30775;
                    goto LABEL_988;
                  case 584:
                    v10 = -30263;
                    goto LABEL_988;
                  case 586:
                    v10 = -29751;
                    goto LABEL_988;
                  case 588:
                    v10 = -29239;
                    goto LABEL_988;
                  case 590:
                    v10 = -28727;
                    goto LABEL_988;
                  default:
                    goto LABEL_199;
                }

                v14 = 110;
                goto LABEL_885;
            }

            v10 = -32042;
            goto LABEL_988;
          }

          if (v117 > 7302)
          {
            switch(v117)
            {
              case 7680:
                v20 = -18207;
                goto LABEL_1501;
              case 7681:
              case 7683:
              case 7685:
              case 7687:
              case 7689:
              case 7691:
              case 7693:
              case 7695:
              case 7697:
              case 7699:
              case 7701:
              case 7703:
              case 7705:
              case 7707:
              case 7709:
              case 7711:
              case 7713:
              case 7715:
              case 7717:
              case 7719:
              case 7721:
              case 7723:
              case 7725:
              case 7727:
              case 7729:
              case 7731:
              case 7733:
              case 7735:
              case 7737:
              case 7739:
              case 7741:
              case 7743:
              case 7745:
              case 7747:
              case 7749:
              case 7751:
              case 7753:
              case 7755:
              case 7757:
              case 7759:
              case 7761:
              case 7763:
              case 7765:
              case 7767:
              case 7769:
              case 7771:
              case 7773:
              case 7775:
              case 7777:
              case 7779:
              case 7781:
              case 7783:
              case 7785:
              case 7787:
              case 7789:
              case 7791:
              case 7793:
              case 7795:
              case 7797:
              case 7799:
              case 7801:
              case 7803:
              case 7805:
              case 7807:
              case 7809:
              case 7811:
              case 7813:
              case 7815:
              case 7817:
              case 7819:
              case 7821:
              case 7823:
              case 7825:
              case 7827:
              case 7829:
              case 7836:
              case 7837:
              case 7839:
              case 7841:
              case 7843:
              case 7845:
              case 7847:
              case 7849:
              case 7851:
              case 7853:
              case 7855:
              case 7857:
              case 7859:
              case 7861:
              case 7863:
              case 7865:
              case 7867:
              case 7869:
              case 7871:
              case 7873:
              case 7875:
              case 7877:
              case 7879:
              case 7881:
              case 7883:
              case 7885:
              case 7887:
              case 7889:
              case 7891:
              case 7893:
              case 7895:
              case 7897:
              case 7899:
              case 7901:
              case 7903:
              case 7905:
              case 7907:
              case 7909:
              case 7911:
              case 7913:
              case 7915:
              case 7917:
              case 7919:
              case 7921:
              case 7923:
              case 7925:
              case 7927:
              case 7929:
              case 7931:
              case 7933:
              case 7935:
              case 7936:
              case 7937:
              case 7938:
              case 7939:
              case 7940:
              case 7941:
              case 7942:
              case 7943:
              case 7952:
              case 7953:
              case 7954:
              case 7955:
              case 7956:
              case 7957:
              case 7958:
              case 7959:
              case 7966:
              case 7967:
              case 7968:
              case 7969:
              case 7970:
              case 7971:
              case 7972:
              case 7973:
              case 7974:
              case 7975:
              case 7984:
              case 7985:
              case 7986:
              case 7987:
              case 7988:
              case 7989:
              case 7990:
              case 7991:
              case 8000:
              case 8001:
              case 8002:
              case 8003:
              case 8004:
              case 8005:
              case 8006:
              case 8007:
              case 8014:
              case 8015:
              case 8017:
              case 8019:
              case 8021:
              case 8023:
              case 8024:
              case 8026:
              case 8028:
              case 8030:
              case 8032:
              case 8033:
              case 8034:
              case 8035:
              case 8036:
              case 8037:
              case 8038:
              case 8039:
              case 8048:
              case 8049:
              case 8050:
              case 8051:
              case 8052:
              case 8053:
              case 8054:
              case 8055:
              case 8056:
              case 8057:
              case 8058:
              case 8059:
              case 8060:
              case 8061:
              case 8062:
              case 8063:
              case 8112:
              case 8113:
              case 8117:
              case 8125:
              case 8127:
              case 8128:
              case 8129:
              case 8133:
              case 8141:
              case 8142:
              case 8143:
              case 8144:
              case 8145:
              case 8148:
              case 8149:
              case 8156:
              case 8157:
              case 8158:
              case 8159:
              case 8160:
              case 8161:
              case 8165:
              case 8173:
              case 8174:
              case 8175:
              case 8176:
              case 8177:
              case 8181:
                goto LABEL_199;
              case 7682:
                v84 = -18207;
                goto LABEL_1492;
              case 7684:
                v82 = -18207;
                goto LABEL_1496;
              case 7686:
                v83 = -18207;
                goto LABEL_1494;
              case 7688:
                v86 = -18207;
                goto LABEL_1478;
              case 7690:
                v62 = -18207;
                goto LABEL_1476;
              case 7692:
                v79 = -18207;
                goto LABEL_1518;
              case 7694:
                v88 = -18207;
                goto LABEL_1508;
              case 7696:
                v34 = -18207;
                goto LABEL_1485;
              case 7698:
                v32 = -18207;
                goto LABEL_1510;
              case 7700:
                v36 = -18207;
                goto LABEL_1490;
              case 7702:
                v33 = -18207;
                goto LABEL_1512;
              case 7704:
                v27 = -18207;
                goto LABEL_1487;
              case 7706:
                v24 = -18207;
                goto LABEL_1520;
              case 7708:
                v38 = -18207;
                goto LABEL_1503;
              case 7710:
                v31 = -18207;
                goto LABEL_1505;
              case 7712:
                v12 = -18207;
                goto LABEL_1498;
              case 7714:
                v18 = -18207;
                goto LABEL_1514;
              case 7716:
                v37 = -18207;
                goto LABEL_1483;
              case 7718:
                v44 = -18207;
                goto LABEL_1468;
              case 7720:
                v28 = -18207;
                goto LABEL_1472;
              case 7722:
                v92 = -18207;
                goto LABEL_1516;
              case 7724:
                v77 = -18207;
                goto LABEL_1481;
              case 7726:
                v91 = -18207;
                goto LABEL_1424;
              case 7728:
                v56 = -18207;
                goto LABEL_1322;
              case 7730:
                v58 = -18207;
                goto LABEL_1413;
              case 7732:
                v57 = -18207;
                goto LABEL_1447;
              case 7734:
                v54 = -18207;
                goto LABEL_1457;
              case 7736:
                v52 = -18207;
                goto LABEL_1409;
              case 7738:
                v55 = -18207;
                goto LABEL_1419;
              case 7740:
                v60 = -18207;
                goto LABEL_1431;
              case 7742:
                v61 = -18207;
                goto LABEL_1421;
              case 7744:
                v20 = -17951;
                goto LABEL_1501;
              case 7746:
                v84 = -17951;
                goto LABEL_1492;
              case 7748:
                v82 = -17951;
                goto LABEL_1496;
              case 7750:
                v83 = -17951;
                goto LABEL_1494;
              case 7752:
                v86 = -17951;
                goto LABEL_1478;
              case 7754:
                v62 = -17951;
                goto LABEL_1476;
              case 7756:
                v79 = -17951;
                goto LABEL_1518;
              case 7758:
                v88 = -17951;
                goto LABEL_1508;
              case 7760:
                v34 = -17951;
                goto LABEL_1485;
              case 7762:
                v32 = -17951;
                goto LABEL_1510;
              case 7764:
                v36 = -17951;
                goto LABEL_1490;
              case 7766:
                v33 = -17951;
                goto LABEL_1512;
              case 7768:
                v27 = -17951;
                goto LABEL_1487;
              case 7770:
                v24 = -17951;
                goto LABEL_1520;
              case 7772:
                v38 = -17951;
                goto LABEL_1503;
              case 7774:
                v31 = -17951;
                goto LABEL_1505;
              case 7776:
              case 7835:
                v12 = -17951;
                goto LABEL_1498;
              case 7778:
                v18 = -17951;
                goto LABEL_1514;
              case 7780:
                v37 = -17951;
                goto LABEL_1483;
              case 7782:
                v44 = -17951;
                goto LABEL_1468;
              case 7784:
                v28 = -17951;
                goto LABEL_1472;
              case 7786:
                v92 = -17951;
                goto LABEL_1516;
              case 7788:
                v77 = -17951;
                goto LABEL_1481;
              case 7790:
                v91 = -17951;
                goto LABEL_1424;
              case 7792:
                v56 = -17951;
                goto LABEL_1322;
              case 7794:
                v58 = -17951;
                goto LABEL_1413;
              case 7796:
                v57 = -17951;
                goto LABEL_1447;
              case 7798:
                v54 = -17951;
                goto LABEL_1457;
              case 7800:
                v52 = -17951;
                goto LABEL_1409;
              case 7802:
                v55 = -17951;
                goto LABEL_1419;
              case 7804:
                v60 = -17951;
                goto LABEL_1431;
              case 7806:
                v61 = -17951;
                goto LABEL_1421;
              case 7808:
                v20 = -17695;
                goto LABEL_1501;
              case 7810:
                v84 = -17695;
                goto LABEL_1492;
              case 7812:
                v82 = -17695;
                goto LABEL_1496;
              case 7814:
                v83 = -17695;
                goto LABEL_1494;
              case 7816:
                v86 = -17695;
                goto LABEL_1478;
              case 7818:
                v62 = -17695;
                goto LABEL_1476;
              case 7820:
                v79 = -17695;
                goto LABEL_1518;
              case 7822:
                v88 = -17695;
                goto LABEL_1508;
              case 7824:
                v34 = -17695;
                goto LABEL_1485;
              case 7826:
                v32 = -17695;
                goto LABEL_1510;
              case 7828:
                v36 = -17695;
                goto LABEL_1490;
              case 7830:
                LOBYTE(v118) = 104;
                cmark_strbuf_put(v7, &v118, 1);
                v10 = -20020;
                goto LABEL_988;
              case 7831:
                LOBYTE(v118) = 116;
                cmark_strbuf_put(v7, &v118, 1);
                v10 = -30516;
                goto LABEL_988;
              case 7832:
                v102 = 119;
                goto LABEL_1084;
              case 7833:
                v102 = 121;
LABEL_1084:
                LOBYTE(v118) = v102;
                cmark_strbuf_put(v7, &v118, 1);
                v10 = -30004;
                goto LABEL_988;
              case 7834:
                LOBYTE(v118) = 97;
                cmark_strbuf_put(v7, &v118, 1);
                v10 = -16694;
                goto LABEL_988;
              case 7838:
LABEL_155:
                v65 = 115;
                goto LABEL_1194;
              case 7840:
                v12 = -17695;
                goto LABEL_1498;
              case 7842:
                v18 = -17695;
                goto LABEL_1514;
              case 7844:
                v37 = -17695;
                goto LABEL_1483;
              case 7846:
                v44 = -17695;
                goto LABEL_1468;
              case 7848:
                v28 = -17695;
                goto LABEL_1472;
              case 7850:
                v92 = -17695;
                goto LABEL_1516;
              case 7852:
                v77 = -17695;
                goto LABEL_1481;
              case 7854:
                v91 = -17695;
                goto LABEL_1424;
              case 7856:
                v56 = -17695;
                goto LABEL_1322;
              case 7858:
                v58 = -17695;
                goto LABEL_1413;
              case 7860:
                v57 = -17695;
                goto LABEL_1447;
              case 7862:
                v54 = -17695;
                goto LABEL_1457;
              case 7864:
                v52 = -17695;
                goto LABEL_1409;
              case 7866:
                v55 = -17695;
                goto LABEL_1419;
              case 7868:
                v60 = -17695;
                goto LABEL_1431;
              case 7870:
                v61 = -17695;
                goto LABEL_1421;
              case 7872:
                v20 = -17439;
                goto LABEL_1501;
              case 7874:
                v84 = -17439;
                goto LABEL_1492;
              case 7876:
                v82 = -17439;
                goto LABEL_1496;
              case 7878:
                v83 = -17439;
                goto LABEL_1494;
              case 7880:
                v86 = -17439;
                goto LABEL_1478;
              case 7882:
                v62 = -17439;
                goto LABEL_1476;
              case 7884:
                v79 = -17439;
                goto LABEL_1518;
              case 7886:
                v88 = -17439;
                goto LABEL_1508;
              case 7888:
                v34 = -17439;
                goto LABEL_1485;
              case 7890:
                v32 = -17439;
                goto LABEL_1510;
              case 7892:
                v36 = -17439;
                goto LABEL_1490;
              case 7894:
                v33 = -17439;
                goto LABEL_1512;
              case 7896:
                v27 = -17439;
                goto LABEL_1487;
              case 7898:
                v24 = -17439;
                goto LABEL_1520;
              case 7900:
                v38 = -17439;
                goto LABEL_1503;
              case 7902:
                v31 = -17439;
                goto LABEL_1505;
              case 7904:
                v12 = -17439;
                goto LABEL_1498;
              case 7906:
                v18 = -17439;
                goto LABEL_1514;
              case 7908:
                v37 = -17439;
                goto LABEL_1483;
              case 7910:
                v44 = -17439;
                goto LABEL_1468;
              case 7912:
                v28 = -17439;
                goto LABEL_1472;
              case 7914:
                v92 = -17439;
                goto LABEL_1516;
              case 7916:
                v77 = -17439;
                goto LABEL_1481;
              case 7918:
                v91 = -17439;
                goto LABEL_1424;
              case 7920:
                v56 = -17439;
                goto LABEL_1322;
              case 7922:
                v58 = -17439;
                goto LABEL_1413;
              case 7924:
                v57 = -17439;
                goto LABEL_1447;
              case 7926:
                v54 = -17439;
                goto LABEL_1457;
              case 7928:
                v52 = -17439;
                goto LABEL_1409;
              case 7930:
                v55 = -17439;
                goto LABEL_1419;
              case 7932:
                v60 = -17439;
                goto LABEL_1431;
              case 7934:
                v61 = -17439;
                goto LABEL_1421;
              case 7944:
                v17 = -17183;
                goto LABEL_1285;
              case 7945:
                v20 = -17183;
                goto LABEL_1501;
              case 7946:
                v78 = -17183;
                goto LABEL_1288;
              case 7947:
                v84 = -17183;
                goto LABEL_1492;
              case 7948:
                v47 = -17183;
                goto LABEL_1291;
              case 7949:
                v82 = -17183;
                goto LABEL_1496;
              case 7950:
                v81 = -17183;
                goto LABEL_1275;
              case 7951:
                v83 = -17183;
                goto LABEL_1494;
              case 7960:
                v13 = -17183;
                goto LABEL_1339;
              case 7961:
                v34 = -17183;
                goto LABEL_1485;
              case 7962:
                v30 = -17183;
                goto LABEL_1269;
              case 7963:
                v32 = -17183;
                goto LABEL_1510;
              case 7964:
                v25 = -17183;
                goto LABEL_1293;
              case 7965:
                v36 = -17183;
                goto LABEL_1490;
              case 7976:
                v11 = -17183;
                goto LABEL_1151;
              case 7977:
                v12 = -17183;
                goto LABEL_1498;
              case 7978:
                v40 = -17183;
                goto LABEL_1157;
              case 7979:
                v18 = -17183;
                goto LABEL_1514;
              case 7980:
                v35 = -17183;
                goto LABEL_1208;
              case 7981:
                v37 = -17183;
                goto LABEL_1483;
              case 7982:
                v43 = -17183;
                goto LABEL_1177;
              case 7983:
                v44 = -17183;
                goto LABEL_1468;
              case 7992:
                v16 = -17183;
                goto LABEL_1050;
              case 7993:
                v56 = -17183;
                goto LABEL_1322;
              case 7994:
                v21 = -17183;
                goto LABEL_1320;
              case 7995:
                v58 = -17183;
                goto LABEL_1413;
              case 7996:
                v59 = -17183;
                goto LABEL_1308;
              case 7997:
                v57 = -17183;
                goto LABEL_1447;
              case 7998:
                v50 = -17183;
                goto LABEL_1298;
              case 7999:
                v54 = -17183;
                goto LABEL_1457;
              case 8008:
                v17 = -16927;
                goto LABEL_1285;
              case 8009:
                v20 = -16927;
                goto LABEL_1501;
              case 8010:
                v78 = -16927;
                goto LABEL_1288;
              case 8011:
                v84 = -16927;
                goto LABEL_1492;
              case 8012:
                v47 = -16927;
                goto LABEL_1291;
              case 8013:
                v82 = -16927;
                goto LABEL_1496;
              case 8016:
                LOWORD(v118) = -31281;
                cmark_strbuf_put(v7, &v118, 2);
                v10 = -27700;
                goto LABEL_988;
              case 8018:
                LOWORD(v118) = -31281;
                cmark_strbuf_put(v7, &v118, 2);
                v101 = -27700;
                goto LABEL_1059;
              case 8020:
                LOWORD(v118) = -31281;
                cmark_strbuf_put(v7, &v118, 2);
                v64 = -27700;
                goto LABEL_154;
              case 8022:
                LOWORD(v118) = -31281;
                cmark_strbuf_put(v7, &v118, 2);
                v93 = -27700;
                goto LABEL_1013;
              case 8025:
                v34 = -16927;
                goto LABEL_1485;
              case 8027:
                v32 = -16927;
                goto LABEL_1510;
              case 8029:
                v36 = -16927;
                goto LABEL_1490;
              case 8031:
                v33 = -16927;
                goto LABEL_1512;
              case 8040:
                v11 = -16927;
                goto LABEL_1151;
              case 8041:
                v12 = -16927;
                goto LABEL_1498;
              case 8042:
                v40 = -16927;
                goto LABEL_1157;
              case 8043:
                v18 = -16927;
                goto LABEL_1514;
              case 8044:
                v35 = -16927;
                goto LABEL_1208;
              case 8045:
                v37 = -16927;
                goto LABEL_1483;
              case 8046:
                v43 = -16927;
                goto LABEL_1177;
              case 8047:
                v44 = -16927;
                goto LABEL_1468;
              case 8064:
              case 8072:
                LOWORD(v118) = -17183;
                v66 = 0x80;
                goto LABEL_985;
              case 8065:
              case 8073:
                LOWORD(v118) = -17183;
                v66 = -127;
                goto LABEL_985;
              case 8066:
              case 8074:
                LOWORD(v118) = -17183;
                v66 = -126;
                goto LABEL_985;
              case 8067:
              case 8075:
                LOWORD(v118) = -17183;
                v66 = -125;
                goto LABEL_985;
              case 8068:
              case 8076:
                LOWORD(v118) = -17183;
                v66 = -124;
                goto LABEL_985;
              case 8069:
              case 8077:
                LOWORD(v118) = -17183;
                v66 = -123;
                goto LABEL_985;
              case 8070:
              case 8078:
                LOWORD(v118) = -17183;
                v66 = -122;
                goto LABEL_985;
              case 8071:
              case 8079:
                LOWORD(v118) = -17183;
                v66 = -121;
                goto LABEL_985;
              case 8080:
              case 8088:
                v67 = -17183;
                goto LABEL_169;
              case 8081:
              case 8089:
                v68 = -17183;
                goto LABEL_175;
              case 8082:
              case 8090:
                v71 = -17183;
                goto LABEL_178;
              case 8083:
              case 8091:
                v69 = -17183;
                goto LABEL_165;
              case 8084:
              case 8092:
                v76 = -17183;
                goto LABEL_187;
              case 8085:
              case 8093:
                v75 = -17183;
                goto LABEL_185;
              case 8086:
              case 8094:
                v70 = -17183;
                goto LABEL_163;
              case 8087:
              case 8095:
                v72 = -17183;
                goto LABEL_189;
              case 8096:
              case 8104:
                v67 = -16927;
LABEL_169:
                LOWORD(v118) = v67;
                v66 = -96;
                goto LABEL_985;
              case 8097:
              case 8105:
                v68 = -16927;
LABEL_175:
                LOWORD(v118) = v68;
                v66 = -95;
                goto LABEL_985;
              case 8098:
              case 8106:
                v71 = -16927;
LABEL_178:
                LOWORD(v118) = v71;
                v66 = -94;
                goto LABEL_985;
              case 8099:
              case 8107:
                v69 = -16927;
LABEL_165:
                LOWORD(v118) = v69;
                v66 = -93;
                goto LABEL_985;
              case 8100:
              case 8108:
                v76 = -16927;
LABEL_187:
                LOWORD(v118) = v76;
                v66 = -92;
                goto LABEL_985;
              case 8101:
              case 8109:
                v75 = -16927;
LABEL_185:
                LOWORD(v118) = v75;
                v66 = -91;
                goto LABEL_985;
              case 8102:
              case 8110:
                v70 = -16927;
LABEL_163:
                LOWORD(v118) = v70;
                v66 = -90;
                goto LABEL_985;
              case 8103:
              case 8111:
                v72 = -16927;
LABEL_189:
                LOWORD(v118) = v72;
                v66 = -89;
                goto LABEL_985;
              case 8114:
                LOWORD(v118) = -16927;
                v66 = -80;
                goto LABEL_985;
              case 8115:
              case 8124:
                v74 = -20018;
                goto LABEL_1036;
              case 8116:
                v74 = -21298;
                goto LABEL_1036;
              case 8118:
                v93 = -20018;
                goto LABEL_1013;
              case 8119:
                v94 = -20018;
                goto LABEL_1028;
              case 8120:
                v16 = -16671;
                goto LABEL_1050;
              case 8121:
                v56 = -16671;
                goto LABEL_1322;
              case 8122:
                v16 = -16927;
                goto LABEL_1050;
              case 8123:
                v56 = -16927;
                goto LABEL_1322;
              case 8126:
                goto LABEL_987;
              case 8130:
                LOWORD(v118) = -16927;
                v66 = -76;
LABEL_985:
                BYTE2(v118) = v66;
                v96 = v7;
                v97 = 3;
                goto LABEL_986;
              case 8131:
              case 8140:
                v74 = -18482;
                goto LABEL_1036;
              case 8132:
                v74 = -20786;
                goto LABEL_1036;
              case 8134:
                v93 = -18482;
                goto LABEL_1013;
              case 8135:
                v94 = -18482;
LABEL_1028:
                LOWORD(v118) = v94;
                cmark_strbuf_put(v7, &v118, 2);
                v74 = -32051;
LABEL_1036:
                LOWORD(v118) = v74;
                v96 = v7;
                v97 = 2;
LABEL_986:
                cmark_strbuf_put(v96, &v118, v97);
LABEL_987:
                v10 = -17970;
                goto LABEL_988;
              case 8136:
                v21 = -16927;
                goto LABEL_1320;
              case 8137:
                v58 = -16927;
                goto LABEL_1413;
              case 8138:
                v59 = -16927;
                goto LABEL_1308;
              case 8139:
                v57 = -16927;
                goto LABEL_1447;
              case 8146:
                v95 = -17970;
                goto LABEL_1040;
              case 8147:
LABEL_152:
                v63 = -17970;
                goto LABEL_153;
              case 8150:
                v93 = -17970;
                goto LABEL_1013;
              case 8151:
                v100 = -17970;
                goto LABEL_1003;
              case 8152:
                v13 = -16415;
                goto LABEL_1339;
              case 8153:
                v34 = -16415;
                goto LABEL_1485;
              case 8154:
                v50 = -16927;
                goto LABEL_1298;
              case 8155:
                v54 = -16927;
                goto LABEL_1457;
              case 8162:
                v95 = -31281;
LABEL_1040:
                LOWORD(v118) = v95;
                cmark_strbuf_put(v7, &v118, 2);
                v101 = -30516;
LABEL_1059:
                LOWORD(v118) = v101;
                cmark_strbuf_put(v7, &v118, 2);
                v10 = -32564;
                goto LABEL_988;
              case 8163:
LABEL_151:
                v63 = -31281;
LABEL_153:
                LOWORD(v118) = v63;
                cmark_strbuf_put(v7, &v118, 2);
                v64 = -30516;
LABEL_154:
                LOWORD(v118) = v64;
                cmark_strbuf_put(v7, &v118, 2);
                v10 = -32308;
                goto LABEL_988;
              case 8164:
                LOWORD(v118) = -32305;
                cmark_strbuf_put(v7, &v118, 2);
                v10 = -27700;
                goto LABEL_988;
              case 8166:
                v93 = -31281;
                goto LABEL_1013;
              case 8167:
                v100 = -31281;
LABEL_1003:
                LOWORD(v118) = v100;
                cmark_strbuf_put(v7, &v118, 2);
                v93 = -30516;
                goto LABEL_1013;
              case 8168:
                v11 = -16415;
                goto LABEL_1151;
              case 8169:
                v12 = -16415;
                goto LABEL_1498;
              case 8170:
                v53 = -16927;
                goto LABEL_1415;
              case 8171:
                v55 = -16927;
                goto LABEL_1419;
              case 8172:
                v37 = -16415;
                goto LABEL_1483;
              case 8178:
                LOWORD(v118) = -16927;
                BYTE2(v118) = -68;
                v98 = v7;
                v99 = 3;
                goto LABEL_1018;
              case 8179:
              case 8188:
                v73 = -30257;
                goto LABEL_1017;
              case 8180:
                v73 = -28977;
                goto LABEL_1017;
              case 8182:
                v93 = -30257;
LABEL_1013:
                LOWORD(v118) = v93;
                cmark_strbuf_put(v7, &v118, 2);
                v10 = -32051;
                goto LABEL_988;
              case 8183:
                LOWORD(v118) = -30257;
                cmark_strbuf_put(v7, &v118, 2);
                v73 = -32051;
LABEL_1017:
                LOWORD(v118) = v73;
                v98 = v7;
                v99 = 2;
LABEL_1018:
                cmark_strbuf_put(v98, &v118, v99);
                v10 = -17970;
                goto LABEL_988;
              case 8184:
                v51 = -16927;
                goto LABEL_1312;
              case 8185:
                v52 = -16927;
                goto LABEL_1409;
              case 8186:
                v46 = -16927;
                goto LABEL_1389;
              case 8187:
                v60 = -16927;
                goto LABEL_1431;
              default:
                if (v117 == 7303)
                {
                  v10 = -23599;
                  goto LABEL_988;
                }

                if (v117 != 7304)
                {
                  goto LABEL_199;
                }

                break;
            }

LABEL_134:
            v62 = -26134;
LABEL_1476:
            LOWORD(v118) = v62;
            v49 = -117;
            goto LABEL_1521;
          }

          if (v117 <= 5111)
          {
            switch(v117)
            {
              case 4256:
                v17 = -19230;
                goto LABEL_1285;
              case 4257:
                v20 = -19230;
                goto LABEL_1501;
              case 4258:
                v78 = -19230;
                goto LABEL_1288;
              case 4259:
                v84 = -19230;
                goto LABEL_1492;
              case 4260:
                v47 = -19230;
                goto LABEL_1291;
              case 4261:
                v82 = -19230;
                goto LABEL_1496;
              case 4262:
                v81 = -19230;
                goto LABEL_1275;
              case 4263:
                v83 = -19230;
                goto LABEL_1494;
              case 4264:
                v80 = -19230;
                goto LABEL_1273;
              case 4265:
                v86 = -19230;
                goto LABEL_1478;
              case 4266:
                v87 = -19230;
                goto LABEL_1318;
              case 4267:
                v62 = -19230;
                goto LABEL_1476;
              case 4268:
                v85 = -19230;
                goto LABEL_1453;
              case 4269:
                v79 = -19230;
                goto LABEL_1518;
              case 4270:
                v45 = -19230;
                goto LABEL_1346;
              case 4271:
                v88 = -19230;
                goto LABEL_1508;
              case 4272:
                v13 = -19230;
                goto LABEL_1339;
              case 4273:
                v34 = -19230;
                goto LABEL_1485;
              case 4274:
                v30 = -19230;
                goto LABEL_1269;
              case 4275:
                v32 = -19230;
                goto LABEL_1510;
              case 4276:
                v25 = -19230;
                goto LABEL_1293;
              case 4277:
                v36 = -19230;
                goto LABEL_1490;
              case 4278:
                v39 = -19230;
                goto LABEL_1332;
              case 4279:
                v33 = -19230;
                goto LABEL_1512;
              case 4280:
                v42 = -19230;
                goto LABEL_1263;
              case 4281:
                v27 = -19230;
                goto LABEL_1487;
              case 4282:
                v41 = -19230;
                goto LABEL_1296;
              case 4283:
                v24 = -19230;
                goto LABEL_1520;
              case 4284:
                v26 = -19230;
                goto LABEL_1257;
              case 4285:
                v38 = -19230;
                goto LABEL_1503;
              case 4286:
                v23 = -19230;
                goto LABEL_1282;
              case 4287:
                v31 = -19230;
                goto LABEL_1505;
              case 4288:
                v11 = -19230;
                goto LABEL_1151;
              case 4289:
                v12 = -19230;
                goto LABEL_1498;
              case 4290:
                v40 = -19230;
                goto LABEL_1157;
              case 4291:
                v18 = -19230;
                goto LABEL_1514;
              case 4292:
                v35 = -19230;
                goto LABEL_1208;
              case 4293:
                v37 = -19230;
                goto LABEL_1483;
              case 4295:
                v44 = -19230;
                goto LABEL_1468;
              case 4301:
                v77 = -19230;
                goto LABEL_1481;
              default:
                goto LABEL_199;
            }
          }

          if (v117 > 7295)
          {
            if (v117 > 7298)
            {
              if (v117 > 7300)
              {
                if (v117 != 7301)
                {
                  v10 = -29999;
                  goto LABEL_988;
                }
              }

              else if (v117 == 7299)
              {
                v10 = -32303;
                goto LABEL_988;
              }

              v10 = -32047;
              goto LABEL_988;
            }

            if (v117 == 7296)
            {
              v10 = -19760;
            }

            else if (v117 == 7297)
            {
              v10 = -19248;
            }

            else
            {
              v10 = -16688;
            }

LABEL_988:
            LOWORD(v118) = v10;
            v89 = v7;
            v90 = 2;
            goto LABEL_1522;
          }

          if (v117 <= 5114)
          {
            if (v117 == 5112)
            {
              v16 = -28703;
LABEL_1050:
              LOWORD(v118) = v16;
              v49 = -80;
            }

            else if (v117 == 5113)
            {
              v56 = -28703;
LABEL_1322:
              LOWORD(v118) = v56;
              v49 = -79;
            }

            else
            {
              v21 = -28703;
LABEL_1320:
              LOWORD(v118) = v21;
              v49 = -78;
            }

            goto LABEL_1521;
          }

          switch(v117)
          {
            case 5115:
              v58 = -28703;
LABEL_1413:
              LOWORD(v118) = v58;
              v49 = -77;
LABEL_1521:
              BYTE2(v118) = v49;
              v89 = v7;
              v90 = 3;
              goto LABEL_1522;
            case 5116:
              v59 = -28703;
LABEL_1308:
              LOWORD(v118) = v59;
              v49 = -76;
              goto LABEL_1521;
            case 5117:
              v57 = -28703;
LABEL_1447:
              LOWORD(v118) = v57;
              v49 = -75;
              goto LABEL_1521;
          }
        }

LABEL_199:
        result = cmark_utf8proc_encode_char(v117, v7);
      }

LABEL_1523:
      a2 += v9;
      v116 = __OFSUB__(v5, v9);
      v5 -= v9;
    }

    while (!((v5 < 0) ^ v116 | (v5 == 0)));
  }

  return result;
}