unint64_t sstep(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, unint64_t a6)
{
  if (a2 != a3)
  {
    v6 = 1 << a2;
    do
    {
      v7 = (*(a1 + 8) + 8 * a2);
      v8 = *v7;
      switch(((*v7 & 0xF8000000uLL) - 0x8000000) >> 27)
      {
        case 1uLL:
          v12 = a5 == v8;
          goto LABEL_28;
        case 2uLL:
          v12 = (a5 & 0xFFFFFFFD) == 129;
          goto LABEL_28;
        case 3uLL:
          v12 = (a5 & 0xFFFFFFFE) == 130;
          goto LABEL_28;
        case 4uLL:
          if (a5 <= 127)
          {
            a6 |= 2 * (v6 & a4);
          }

          break;
        case 5uLL:
          if (a5 > 127)
          {
            break;
          }

          v10 = *(a1 + 24) + 32 * (*v7 & 0x7FFFFFF);
          if ((*(v10 + 8) & *(*v10 + a5)) == 0)
          {
            break;
          }

          v9 = v6 & a4;
LABEL_5:
          a6 |= 2 * v9;
          break;
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 0xBuLL:
        case 0xCuLL:
        case 0xDuLL:
        case 0x11uLL:
          v9 = a6 & v6;
          goto LABEL_5;
        case 9uLL:
          v13 = a6 | (2 * (a6 & v6));
          a6 = ((v13 & v6) >> v8) | v13;
          if (((v6 >> v8) & v13) == 0 && (a6 & (v6 >> v8)) != 0)
          {
            a2 += ~(*v7 & 0x7FFFFFF);
            v6 = 1 << a2;
          }

          break;
        case 0xAuLL:
        case 0xEuLL:
          a6 |= (((a6 | (2 * (a6 & v6))) & v6) << v8) | (2 * (a6 & v6));
          break;
        case 0xFuLL:
          if ((a6 & v6) == 0)
          {
            break;
          }

          v15 = v7[1];
          if ((v15 & 0xF8000000) == 0x90000000)
          {
            LOBYTE(v16) = 1;
          }

          else
          {
            v16 = 1;
            do
            {
              v16 += v15 & 0x7FFFFFF;
              v15 = v7[v16];
            }

            while ((v15 & 0xF8000000) != 0x90000000);
          }

          v11 = (a6 & v6) << v16;
          goto LABEL_36;
        case 0x10uLL:
          a6 |= 2 * (a6 & v6);
          if ((v7[*v7 & 0x7FFFFFF] & 0xF8000000) == 0x90000000)
          {
            break;
          }

          v11 = (a6 & v6) << v8;
LABEL_36:
          a6 |= v11;
          break;
        case 0x12uLL:
          v12 = a5 == 133;
          goto LABEL_28;
        case 0x13uLL:
          v12 = a5 == 134;
LABEL_28:
          if (v12)
          {
            a6 |= 2 * (v6 & a4);
          }

          break;
        default:
          break;
      }

      ++a2;
      v6 *= 2;
    }

    while (a2 != a3);
  }

  return a6;
}

char *sstep_back(uint64_t a1, char *a2, char *a3, uint64_t a4, uint64_t a5)
{
  result = a3 - 1;
  v7 = a5 - a4;
  if (a5 > a4)
  {
    v8 = (*(a1 + 8) + 8 * a4 + 8);
    for (i = ~a4; ; --i)
    {
      v10 = *(v8 - 2);
      if ((v10 & 0xF8000000) != 0x70000000)
      {
        break;
      }

      ++v8;
      if (!--v7)
      {
        return result;
      }
    }

    if ((v10 & 0xF8000000) == 0x10000000 && result != a2)
    {
      v12 = -i;
      v13 = v10;
      for (j = a3; ; --j)
      {
        if (v13 == *(j - 1))
        {
          if (v12 >= a5)
          {
            return result;
          }

          if ((*v8 & 0xF8000000) != 0x10000000 || j >= a3)
          {
            return j - 1;
          }

          if (*j == *v8)
          {
            return result;
          }
        }

        --result;
        v16 = j - 2;
        if (v16 == a2)
        {
          return a2;
        }
      }
    }
  }

  return result;
}

char *lslow(uint64_t *a1, char *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  if (a4 >= a5)
  {
LABEL_12:
    v12 = a1[10];
    __dst = a1[12];
    __s2 = a1[13];
    if (a2 == a1[4])
    {
      v13 = 128;
    }

    else
    {
      v13 = *(a2 - 1);
    }

    bzero(v12, *(*a1 + 48));
    *(v12 + v6) = 1;
    lstep(*a1, v6, a5, v12, 132, v12);
    v14 = 0;
    while (1)
    {
      if (a2 == a1[5])
      {
        v15 = 128;
      }

      else
      {
        v15 = *a2;
      }

      if (v13 == 128)
      {
        if ((a1[1] & 1) == 0)
        {
          v16 = *a1;
LABEL_25:
          v17 = *(v16 + 76);
          v18 = 129;
          v19 = 131;
          goto LABEL_27;
        }
      }

      else if (v13 == 10)
      {
        v16 = *a1;
        if ((*(*a1 + 40) & 8) != 0)
        {
          goto LABEL_25;
        }
      }

      v18 = 0;
      v17 = 0;
      v19 = 130;
LABEL_27:
      if (v15 == 128)
      {
        if ((a1[1] & 2) == 0)
        {
          v20 = *a1;
LABEL_33:
          v17 += *(v20 + 80);
          goto LABEL_35;
        }
      }

      else if (v15 == 10)
      {
        v20 = *a1;
        if ((*(*a1 + 40) & 8) != 0)
        {
          goto LABEL_33;
        }
      }

      v19 = v18;
LABEL_35:
      if (v17 >= 1)
      {
        v21 = v17 + 1;
        do
        {
          lstep(*a1, v6, a5, v12, v19, v12);
          --v21;
        }

        while (v21 > 1);
      }

      if (v19 == 129)
      {
        if (v15 == 128)
        {
          v19 = 129;
        }

        else
        {
LABEL_48:
          if (v15 > 0x7Fu)
          {
            v23 = __maskrune(v15, 0x500uLL);
          }

          else
          {
            v23 = *(MEMORY[0x277D85DE0] + 4 * v15 + 60) & 0x500;
          }

          if (v15 == 95 || v23 != 0)
          {
            v19 = 133;
          }
        }

        if (v13 == 128)
        {
          goto LABEL_63;
        }

        v22 = v13;
        goto LABEL_58;
      }

      if (v13 == 128)
      {
        goto LABEL_63;
      }

      v22 = v13;
      if (v13 > 0x7Fu)
      {
        if (__maskrune(v13, 0x500uLL))
        {
          goto LABEL_58;
        }
      }

      else if ((*(MEMORY[0x277D85DE0] + 4 * v13 + 60) & 0x500) != 0)
      {
        goto LABEL_58;
      }

      if (v13 != 95 && v15 != 128)
      {
        goto LABEL_48;
      }

LABEL_58:
      if (v22 > 0x7F)
      {
        if (__maskrune(v22, 0x500uLL))
        {
          goto LABEL_66;
        }
      }

      else if ((*(MEMORY[0x277D85DE0] + 4 * v22 + 60) & 0x500) != 0)
      {
        goto LABEL_66;
      }

      if (v13 != 95)
      {
LABEL_63:
        v25 = __s2;
        goto LABEL_64;
      }

LABEL_66:
      if (v19 == 130)
      {
        v19 = 134;
        v25 = __s2;
LABEL_68:
        lstep(*a1, v6, a5, v12, v19, v12);
        goto LABEL_69;
      }

      v25 = __s2;
      if (v15 != 128)
      {
        if (v15 > 0x7Fu)
        {
          if (__maskrune(v15, 0x500uLL))
          {
            goto LABEL_64;
          }
        }

        else if ((*(MEMORY[0x277D85DE0] + 4 * v15 + 60) & 0x500) != 0)
        {
          goto LABEL_64;
        }

        if (v15 != 95)
        {
          v19 = 134;
          goto LABEL_68;
        }
      }

LABEL_64:
      if ((v19 - 133) <= 1)
      {
        goto LABEL_68;
      }

LABEL_69:
      if (*(v12 + a5))
      {
        v14 = a2;
      }

      v26 = *(*a1 + 48);
      v27 = memcmp(v12, v25, v26);
      if (a2 == a3 || !v27)
      {
        return v14;
      }

      memmove(__dst, v12, v26);
      memmove(v12, v25, *(*a1 + 48));
      lstep(*a1, v6, a5, __dst, v15, v12);
      ++a2;
      v13 = v15;
    }
  }

  while (1)
  {
    v9 = *(*(*a1 + 8) + 8 * v6);
    v10 = v9 & 0xF8000000;
    if ((v9 & 0xF8000000) == 0x70000000 || v10 == 1744830464)
    {
      goto LABEL_10;
    }

    if (v10 != 0x10000000)
    {
      goto LABEL_12;
    }

    if (a2 == a3 || *a2 != v9)
    {
      return 0;
    }

    ++a2;
LABEL_10:
    if (a5 == ++v6)
    {
      v6 = a5;
      goto LABEL_12;
    }
  }
}

char *ldissect(uint64_t *a1, char *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a4 < a5)
  {
    v7 = a4;
    while (1)
    {
      v10 = v7;
      v11 = *(*a1 + 8);
      v12 = *(v11 + 8 * v7);
      v13 = v12 & 0xF8000000;
      if ((v12 & 0xF8000000) == 0x48000000 || v13 == 1476395008)
      {
        v15 = (v12 & 0x7FFFFFF) + v7;
      }

      else
      {
        v16 = v13 != 2013265920 || (v12 & 0xF8000000) == 2415919104;
        v15 = v7;
        if (!v16)
        {
          v17 = *(v11 + 8 * v7);
          v15 = v7;
          do
          {
            v15 += v17 & 0x7FFFFFF;
            v17 = *(v11 + 8 * v15);
          }

          while ((v17 & 0xF8000000) != 0x90000000);
        }
      }

      v7 = v15 + 1;
      v18 = ((v12 & 0xF8000000) - 0x8000000) >> 27;
      if (v18 > 9)
      {
        if (((v12 & 0xF8000000) - 0x8000000) >> 27 <= 0xC)
        {
          if (v18 == 10)
          {
            v34 = a1;
            v35 = v5;
            v36 = a3;
            while (1)
            {
              v22 = lslow(v34, v35, v36, v10, v15 + 1);
              if (lslow(a1, v22, a3, v15 + 1, a5) == a3)
              {
                break;
              }

              v36 = lstep_back(*a1, v5, v22, v15 + 1, a5);
              v34 = a1;
              v35 = v5;
            }

            if (!lslow(a1, v5, v22, v10 + 1, v15))
            {
              goto LABEL_55;
            }

            v33 = v10 + 1;
            v30 = a1;
            v31 = v5;
            v32 = v22;
            goto LABEL_43;
          }

          if (v18 == 12)
          {
            *(a1[2] + 16 * (v12 & 0x7FFFFFF)) = &v5[-a1[3]];
          }

          goto LABEL_40;
        }

        if (v18 == 13)
        {
          *(a1[2] + 16 * (v12 & 0x7FFFFFF) + 8) = &v5[-a1[3]];
LABEL_40:
          v22 = v5;
          goto LABEL_55;
        }

        v23 = a3;
        if (v18 == 14)
        {
          do
          {
            v22 = lslow(a1, v5, v23, v10, v15 + 1);
            v24 = lslow(a1, v22, a3, v15 + 1, a5);
            v23 = v22 - 1;
          }

          while (v24 != a3);
          v15 = v10 + (*(*(*a1 + 8) + 8 * v10) & 0x7FFFFFFLL) - 1;
          v25 = v10 + 1;
          while (lslow(a1, v5, v22, v25, v15) != v22)
          {
            v26 = *(*a1 + 8);
            v27 = *(v26 + 8 * (v15 + 1)) & 0x7FFFFFFLL;
            v28 = v27 + v15 + 1;
            v29 = v27 + v15;
            v25 = v15 + 2;
            if ((*(v26 + 8 * v28) & 0xF8000000) == 0x88000000)
            {
              v15 = v29;
            }

            else
            {
              v15 = v28;
            }
          }

          v30 = a1;
          v31 = v5;
          v32 = v22;
          v33 = v25;
LABEL_43:
          ldissect(v30, v31, v32, v33, v15);
          goto LABEL_55;
        }

        v22 = v5;
      }

      else
      {
        if (v18 - 4 >= 2 && v18 != 1)
        {
          if (v18 == 8)
          {
            v19 = a1;
            v20 = v5;
            v21 = a3;
            while (1)
            {
              v22 = lslow(v19, v20, v21, v10, v15 + 1);
              if (lslow(a1, v22, a3, v15 + 1, a5) == a3)
              {
                break;
              }

              v21 = lstep_back(*a1, v5, v22, v15 + 1, a5);
              v19 = a1;
              v20 = v5;
            }

            v37 = v5;
            do
            {
              v38 = v37;
              v37 = v5;
              v39 = lslow(a1, v5, v22, v10 + 1, v15);
              v5 = v39;
            }

            while (v39 && v39 != v37);
            if (v39)
            {
              v40 = v37;
            }

            else
            {
              v40 = v38;
            }

            if (v39)
            {
              v41 = v39;
            }

            else
            {
              v41 = v37;
            }

            ldissect(a1, v40, v41, v10 + 1, v15);
            goto LABEL_55;
          }

          goto LABEL_40;
        }

        v22 = v5 + 1;
      }

LABEL_55:
      v5 = v22;
      if (v7 >= a5)
      {
        return v22;
      }
    }
  }

  return a2;
}

uint64_t lbackref(uint64_t *a1, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a4 < a5)
  {
    v12 = a4;
LABEL_3:
    v14 = v12;
    do
    {
      v15 = *a1;
      v16 = *(*a1 + 8);
      v17 = *(v16 + 8 * v14);
      v18 = ((v17 & 0xF8000000) - 0x10000000) >> 27;
      if (v18 > 9)
      {
        if (((v17 & 0xF8000000) - 0x10000000) >> 27 <= 0xF)
        {
          if (v18 == 10)
          {
            goto LABEL_82;
          }

          if (v18 == 14)
          {
            ++v14;
            v32 = *(v16 + 8 * v14);
            do
            {
              v14 += v32 & 0x7FFFFFF;
              v32 = *(v16 + 8 * v14);
            }

            while ((v32 & 0xF8000000) != 0x90000000);
            goto LABEL_82;
          }
        }

        else
        {
          switch(v18)
          {
            case 0x10uLL:
              goto LABEL_82;
            case 0x11uLL:
              v35 = a1[4];
              if (a2 != v35 || (a1[1]) && (a2 >= a1[5] || *(a2 - 1) != 10 || (*(v15 + 40) & 8) == 0))
              {
                if (a2 <= v35)
                {
                  return 0;
                }

                v36 = *(a2 - 1);
                if (v36 < 0)
                {
                  v37 = __maskrune(*(a2 - 1), 0x500uLL);
                }

                else
                {
                  v37 = *(MEMORY[0x277D85DE0] + 4 * v36 + 60) & 0x500;
                }

                result = 0;
                if (v36 == 95 || v37)
                {
                  return result;
                }
              }

              if (a2 >= a1[5])
              {
                return 0;
              }

              v39 = *a2;
              if ((v39 & 0x8000000000000000) == 0)
              {
LABEL_73:
                v40 = *(MEMORY[0x277D85DE0] + 4 * v39 + 60) & 0x500;
LABEL_80:
                if (v39 != 95 && !v40)
                {
                  return 0;
                }

                goto LABEL_82;
              }

LABEL_79:
              v40 = __maskrune(v39, 0x500uLL);
              goto LABEL_80;
            case 0x12uLL:
              v21 = a1[5];
              if (a2 != v21 || (a1[1] & 2) != 0)
              {
                if (a2 >= v21)
                {
                  return 0;
                }

                v22 = *a2;
                if (v22 == 10)
                {
                  if ((*(v15 + 40) & 8) != 0)
                  {
                    goto LABEL_77;
                  }

LABEL_67:
                  v38 = *(MEMORY[0x277D85DE0] + 4 * v22 + 60) & 0x500;
                }

                else
                {
                  if ((v22 & 0x80) == 0)
                  {
                    goto LABEL_67;
                  }

                  v38 = __maskrune(*a2, 0x500uLL);
                }

                result = 0;
                if (v22 == 95 || v38)
                {
                  return result;
                }
              }

LABEL_77:
              if (a2 <= a1[4])
              {
                return 0;
              }

              v39 = *(a2 - 1);
              if ((v39 & 0x8000000000000000) == 0)
              {
                goto LABEL_73;
              }

              goto LABEL_79;
          }
        }
      }

      else if (((v17 & 0xF8000000) - 0x10000000) >> 27 <= 1)
      {
        if (!v18)
        {
          if (a2 == a3)
          {
            return 0;
          }

          v34 = *a2++;
          if (v34 != v17)
          {
            return 0;
          }

          goto LABEL_82;
        }

        if (v18 == 1)
        {
          if (a2 != a1[4] || (a1[1] & 1) != 0)
          {
            if (a2 >= a1[5])
            {
              return 0;
            }

            v23 = *(a2 - 1);
LABEL_50:
            if (v23 != 10 || (*(v15 + 40) & 8) == 0)
            {
              return 0;
            }
          }

LABEL_82:
          ++v14;
          continue;
        }
      }

      else
      {
        switch(v18)
        {
          case 2uLL:
            v33 = a1[5];
            if (a2 != v33 || (a1[1] & 2) != 0)
            {
              if (a2 >= v33)
              {
                return 0;
              }

              v23 = *a2;
              goto LABEL_50;
            }

            goto LABEL_82;
          case 3uLL:
            if (a2 == a3)
            {
              return 0;
            }

            ++a2;
            goto LABEL_82;
          case 4uLL:
            if (a2 == a3)
            {
              return 0;
            }

            v19 = *(v15 + 24) + 32 * (v17 & 0x7FFFFFF);
            v20 = *a2++;
            if ((*(v19 + 8) & *(*v19 + v20)) == 0)
            {
              return 0;
            }

            goto LABEL_82;
        }
      }

      v12 = v14 + 1;
      v24 = ((v17 & 0xF8000000) - 939524096) >> 27;
      if (v24 == 4)
      {
        result = lbackref(a1, a2, a3, v14 + 1, a5, a6, a7);
        if (result)
        {
          return result;
        }

        v14 = (v17 & 0x7FFFFFF) + v12;
      }

      else
      {
        if (((v17 & 0xF8000000) - 939524096) >> 27 > 5)
        {
          if (v24 == 6)
          {
            v48 = 16 * (v17 & 0x7FFFFFF);
            v49 = a1[2];
            v50 = *(v49 + v48);
            *(v49 + v48) = &a2[-a1[3]];
            result = lbackref(a1, a2, a3, v12, a5, a6, a7);
            if (!result)
            {
              *(a1[2] + 16 * (v17 & 0x7FFFFFF)) = v50;
            }
          }

          else if (v24 == 7)
          {
            v51 = a1[2] + 16 * (v17 & 0x7FFFFFF);
            v52 = *(v51 + 8);
            *(v51 + 8) = &a2[-a1[3]];
            result = lbackref(a1, a2, a3, v14 + 1, a5, a6, a7);
            if (!result)
            {
              *(a1[2] + 16 * (v17 & 0x7FFFFFF) + 8) = v52;
            }
          }

          else
          {
            result = 0;
            if (v24 == 8)
            {
              result = lbackref(a1, a2, a3, v14 + 1, a5, a6, a7);
              if (!result)
              {
                v42 = v14 + (v17 & 0x7FFFFFF) - 1;
                while (1)
                {
                  v43 = *(*a1 + 8);
                  if ((*(v43 + 8 * v42) & 0xF8000000) == 0x90000000)
                  {
                    break;
                  }

                  v44 = *(v43 + 8 * (v42 + 1)) & 0x7FFFFFFLL;
                  v45 = v44 + v42 + 1;
                  v46 = v44 + v42;
                  if ((*(v43 + 8 * v45) & 0xF8000000) == 0x88000000)
                  {
                    v47 = v46;
                  }

                  else
                  {
                    v47 = v45;
                  }

                  result = lbackref(a1, a2, a3, v42 + 2, a5, a6, a7);
                  v42 = v47;
                  if (result)
                  {
                    return result;
                  }
                }

                return 0;
              }
            }
          }

          return result;
        }

        if (v24)
        {
          if (v24 == 2)
          {
            ++a6;
            *(a1[7] + 8 * a6) = a2;
          }

          else
          {
            result = 0;
            if (v24 != 3)
            {
              return result;
            }

            v41 = a1[7];
            if (a2 != *(v41 + 8 * a6))
            {
              *(v41 + 8 * a6) = a2;
              result = lbackref(a1, a2, a3, v12 - (v17 & 0x7FFFFFF), a5, a6, a7);
              if (result)
              {
                return result;
              }
            }

            --a6;
          }

          if (v12 < a5)
          {
            goto LABEL_3;
          }

          break;
        }

        v26 = v17 & 0x7FFFFFF;
        v27 = (a1[2] + 16 * v26);
        v28 = v27[1];
        if (v28 == -1)
        {
          return 0;
        }

        v29 = *v27;
        v30 = v28 - v29;
        if (v28 == v29)
        {
          if (a7 > 100)
          {
            return 0;
          }

          a7 = (a7 + 1);
        }

        if (a2 > &a3[-v30] || memcmp(a2, (a1[3] + v29), v30))
        {
          return 0;
        }

        do
        {
          v31 = *(v16 + 8 * v14++);
        }

        while (v31 != (v26 | 0x40000000));
        a2 += v30;
      }
    }

    while (v14 < a5);
  }

  if (a2 == a3)
  {
    return a2;
  }

  else
  {
    return 0;
  }
}

uint64_t lstep(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v7 = (*(a1 + 8) + 8 * v6);
      v8 = *v7;
      switch(((*v7 & 0xF8000000uLL) - 0x8000000) >> 27)
      {
        case 1uLL:
          if (a5 == v8)
          {
            goto LABEL_31;
          }

          break;
        case 2uLL:
          if ((a5 & 0xFFFFFFFD) == 0x81)
          {
            goto LABEL_31;
          }

          break;
        case 3uLL:
          if ((a5 & 0xFFFFFFFE) == 0x82)
          {
            goto LABEL_31;
          }

          break;
        case 4uLL:
          if (a5 <= 127)
          {
            goto LABEL_31;
          }

          break;
        case 5uLL:
          if (a5 <= 127)
          {
            v12 = *(a1 + 24) + 32 * (*v7 & 0x7FFFFFF);
            if ((*(v12 + 8) & *(*v12 + a5)) != 0)
            {
              goto LABEL_31;
            }
          }

          break;
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 0xBuLL:
        case 0xCuLL:
        case 0xDuLL:
        case 0x11uLL:
          *(a6 + a2 + 1) |= *(a6 + a2);
          break;
        case 9uLL:
          v13 = *(a6 + a2);
          *(a6 + a2 + 1) |= v13;
          v14 = v8 & 0x7FFFFFF;
          v15 = *(a6 + a2 - v14);
          v16 = v15 | v13;
          *(a6 + a2 - v14) = v16;
          if (v15)
          {
            v17 = 1;
          }

          else
          {
            v17 = v16 == 0;
          }

          if (!v17)
          {
            v6 += ~v14;
            a2 = v6;
          }

          break;
        case 0xAuLL:
        case 0xEuLL:
          v9 = a6 + a2;
          v10 = *(a6 + a2);
          *(a6 + a2 + 1) |= v10;
          v11 = v8 & 0x7FFFFFF;
          goto LABEL_6;
        case 0xFuLL:
          if (*(a6 + a2))
          {
            v18 = v7[1];
            if ((v18 & 0xF8000000) == 0x90000000)
            {
              v19 = 1;
            }

            else
            {
              v19 = 1;
              do
              {
                v19 += v18 & 0x7FFFFFF;
                v18 = v7[v19];
              }

              while ((v18 & 0xF8000000) != 0x90000000);
            }

            *(a6 + a2 + v19) |= *(a6 + a2);
          }

          break;
        case 0x10uLL:
          v9 = a6 + a2;
          v10 = *(a6 + a2);
          *(a6 + a2 + 1) |= v10;
          v11 = v8 & 0x7FFFFFF;
          if ((*(*(a1 + 8) + 8 * v6 + 8 * v11) & 0xF8000000) != 0x90000000)
          {
LABEL_6:
            *(v9 + v11) |= v10;
          }

          break;
        case 0x12uLL:
          if (a5 != 133)
          {
            break;
          }

          goto LABEL_31;
        case 0x13uLL:
          if (a5 == 134)
          {
LABEL_31:
            *(a6 + 1 + a2) |= *(a4 + a2);
          }

          break;
        default:
          break;
      }

      ++v6;
      ++a2;
    }

    while (v6 != a3);
  }

  return a6;
}

char *lstep_back(uint64_t a1, char *a2, char *a3, uint64_t a4, uint64_t a5)
{
  result = a3 - 1;
  v7 = a5 - a4;
  if (a5 > a4)
  {
    v8 = (*(a1 + 8) + 8 * a4 + 8);
    for (i = ~a4; ; --i)
    {
      v10 = *(v8 - 2);
      if ((v10 & 0xF8000000) != 0x70000000)
      {
        break;
      }

      ++v8;
      if (!--v7)
      {
        return result;
      }
    }

    if ((v10 & 0xF8000000) == 0x10000000 && result != a2)
    {
      v12 = -i;
      v13 = v10;
      for (j = a3; ; --j)
      {
        if (v13 == *(j - 1))
        {
          if (v12 >= a5)
          {
            return result;
          }

          if ((*v8 & 0xF8000000) != 0x10000000 || j >= a3)
          {
            return j - 1;
          }

          if (*j == *v8)
          {
            return result;
          }
        }

        --result;
        v16 = j - 2;
        if (v16 == a2)
        {
          return a2;
        }
      }
    }
  }

  return result;
}

void llvm_regfree(uint64_t a1)
{
  if (*a1 == 62053)
  {
    v1 = *(a1 + 24);
    if (v1)
    {
      if (*v1 == 53829)
      {
        *a1 = 0;
        *v1 = 0;
        v2 = v1[1];
        if (v2)
        {
          free(v2);
        }

        v3 = v1[3];
        if (v3)
        {
          free(v3);
        }

        v4 = v1[4];
        if (v4)
        {
          free(v4);
        }

        v5 = v1[12];
        if (v5)
        {
          free(v5);
        }

        free(v1);
      }
    }
  }
}

uint64_t llvm::xxh3_64bits(unsigned __int8 *a1, unint64_t a2, const unsigned __int8 *a3)
{
  if (a2 > 0x10)
  {
    if (a2 <= 0x80)
    {
      v4 = ((((*(a1 + 1) ^ 0x1CAD21F72C81017CuLL) * (*a1 ^ 0xBE4BA423396CFEB8)) >> 64) ^ ((*(a1 + 1) ^ 0x1CAD21F72C81017CLL) * (*a1 ^ 0xBE4BA423396CFEB8))) - 0x61C8864E7A143579 * a2;
      v5 = &a1[a2];
      v6 = (((*&a1[a2 - 8] ^ 0x1F67B3B7A4A44072uLL) * (*&a1[a2 - 16] ^ 0xDB979083E96DD4DELL)) >> 64) ^ ((*&a1[a2 - 8] ^ 0x1F67B3B7A4A44072) * (*&a1[a2 - 16] ^ 0xDB979083E96DD4DELL));
      if (a2 >= 0x21)
      {
        v4 += (((*(a1 + 3) ^ 0x2172FFCC7DD05A82uLL) * (*(a1 + 2) ^ 0x78E5C0CC4EE679CBuLL)) >> 64) ^ ((*(a1 + 3) ^ 0x2172FFCC7DD05A82) * (*(a1 + 2) ^ 0x78E5C0CC4EE679CBLL));
        v6 += (((*(v5 - 3) ^ 0x4C263A81E69035E0uLL) * (*(v5 - 4) ^ 0x8E2443F7744608B8)) >> 64) ^ ((*(v5 - 3) ^ 0x4C263A81E69035E0) * (*(v5 - 4) ^ 0x8E2443F7744608B8));
        if (a2 >= 0x41)
        {
          v4 += (((*(a1 + 5) ^ 0xA32E531B8B65D088) * (*(a1 + 4) ^ 0xCB00C391BB52283CLL)) >> 64) ^ ((*(a1 + 5) ^ 0xA32E531B8B65D088) * (*(a1 + 4) ^ 0xCB00C391BB52283CLL));
          v6 += (((*(v5 - 5) ^ 0xD8ACDEA946EF1938) * (*(v5 - 6) ^ 0x4EF90DA297486471uLL)) >> 64) ^ ((*(v5 - 5) ^ 0xD8ACDEA946EF1938) * (*(v5 - 6) ^ 0x4EF90DA297486471));
          if (a2 >= 0x61)
          {
            v4 += (((*(a1 + 7) ^ 0x1D4F0BC7C7BBDCF9uLL) * (*(a1 + 6) ^ 0x3F349CE33F76FAA8uLL)) >> 64) ^ ((*(a1 + 7) ^ 0x1D4F0BC7C7BBDCF9) * (*(a1 + 6) ^ 0x3F349CE33F76FAA8));
            v6 += (((*(v5 - 7) ^ 0x647378D9C97E9FC8uLL) * (*(v5 - 8) ^ 0x3159B4CD4BE0518AuLL)) >> 64) ^ ((*(v5 - 7) ^ 0x647378D9C97E9FC8) * (*(v5 - 8) ^ 0x3159B4CD4BE0518ALL));
          }
        }
      }

      v3 = v6 + v4;
      goto LABEL_10;
    }

    if (a2 > 0xF0)
    {
      return XXH3_hashLong_64b(a1, a2, a3);
    }

    else
    {
      return XXH3_len_129to240_64b(a1, a2, a3);
    }
  }

  else
  {
    if (a2 >= 9)
    {
      v3 = bswap64(*a1 ^ 0x6782737BEA4239B9) + a2 + (*&a1[a2 - 8] ^ 0xAF56BC3B0996523ALL) + ((((*&a1[a2 - 8] ^ 0xAF56BC3B0996523ALL) * (*a1 ^ 0x6782737BEA4239B9uLL)) >> 64) ^ ((*&a1[a2 - 8] ^ 0xAF56BC3B0996523ALL) * (*a1 ^ 0x6782737BEA4239B9)));
LABEL_10:
      v7 = v3 ^ (v3 >> 37);
      v8 = 0x67919E3779F9;
      return (v7 * (v8 & 0xFFFFFFFFFFFFLL | 0x1656000000000000)) ^ ((v7 * (v8 & 0xFFFFFFFFFFFFLL | 0x1656000000000000)) >> 32);
    }

    if (a2 < 4)
    {
      if (a2)
      {
        v12 = 0xC2B2AE3D27D4EB4FLL * (((*a1 << 16) | (a2 << 8) | (a1[a2 >> 1] << 24) | a1[a2 - 1]) ^ 0x87275A9B);
        v7 = v12 ^ (v12 >> 29);
        v8 = 0x67B19E3779F9;
        return (v7 * (v8 & 0xFFFFFFFFFFFFLL | 0x1656000000000000)) ^ ((v7 * (v8 & 0xFFFFFFFFFFFFLL | 0x1656000000000000)) >> 32);
      }

      return 0x2D06800538D394C2;
    }

    else
    {
      v10 = (*&a1[a2 - 4] | (*a1 << 32)) ^ 0xC73AB174C5ECD5A2;
      v11 = 0x9FB21C651E98DF25 * (__ROR8__(v10, 40) ^ __ROR8__(v10, 15) ^ v10);
      return (0x9FB21C651E98DF25 * ((a2 + (v11 >> 35)) ^ v11)) ^ ((0x9FB21C651E98DF25 * ((a2 + (v11 >> 35)) ^ v11)) >> 28);
    }
  }
}

unint64_t XXH3_len_129to240_64b(const unsigned __int8 *a1, unint64_t a2, const unsigned __int8 *a3)
{
  v3 = 0x9E3779B185EBCA87 * a2;
  v4 = &kSecret;
  v5 = 8;
  v6 = a1;
  do
  {
    v7 = *v4++;
    v8 = v7;
    v9 = *v6;
    v6 += 16;
    v10 = veorq_s8(v9, v8);
    v3 += ((v10.u64[1] * v10.u64[0]) >> 64) ^ (v10.i64[1] * v10.i64[0]);
    --v5;
  }

  while (v5);
  v11 = (0x165667919E3779F9 * (v3 ^ (v3 >> 37))) ^ ((0x165667919E3779F9 * (v3 ^ (v3 >> 37))) >> 32);
  if (a2 >= 0x90)
  {
    v12 = a2 >> 4;
    if ((a2 >> 4) <= 9)
    {
      v12 = 9;
    }

    else
    {
      v12 = v12;
    }

    v13 = v12 - 8;
    v14 = a1 + 128;
    v15 = &unk_25D09F170;
    do
    {
      v16 = *v14;
      v14 += 16;
      v17 = veorq_s8(v16, *(v15 - 125));
      v11 += ((v17.u64[1] * v17.u64[0]) >> 64) ^ (v17.i64[1] * v17.i64[0]);
      v15 += 16;
      --v13;
    }

    while (v13);
  }

  v18 = (((*&a1[a2 - 8] ^ 0xEBD33483ACC5EA64) * (*&a1[a2 - 16] ^ 0x7378D9C97E9FC831uLL)) >> 64) ^ ((*&a1[a2 - 8] ^ 0xEBD33483ACC5EA64) * (*&a1[a2 - 16] ^ 0x7378D9C97E9FC831));
  v19 = 0x165667919E3779F9 * ((v11 + v18) ^ ((v11 + v18) >> 37));
  return v19 ^ HIDWORD(v19);
}

unint64_t XXH3_hashLong_64b(const unsigned __int8 *a1, uint64_t a2, const unsigned __int8 *a3)
{
  v80 = *MEMORY[0x277D85DE8];
  v3 = a2 - 1;
  v76 = xmmword_25D09F1B0;
  v77 = unk_25D09F1C0;
  v78 = xmmword_25D09F1D0;
  v79 = unk_25D09F1E0;
  if ((a2 - 1) >= 0x400)
  {
    v8 = 0;
    v9 = a1 + 32;
    v10 = vdup_n_s32(0x9E3779B1);
    do
    {
      v12 = v76;
      v11 = v77;
      v13 = &xmmword_25D09F110;
      v14 = v9;
      v15 = 16;
      v17 = v78;
      v16 = v79;
      do
      {
        v18 = v14[-2];
        v19 = v14[-1];
        v20 = vextq_s8(v18, v18, 8uLL);
        v21 = vextq_s8(v19, v19, 8uLL);
        v22 = veorq_s8(v13[-2], v18);
        v23 = veorq_s8(v13[-1], v19);
        v24 = vuzp1q_s32(v22, v23);
        v25 = vuzp2q_s32(v22, v23);
        v12 = vmlal_u32(vaddq_s64(v20, v12), *v24.i8, *v25.i8);
        v11 = vmlal_high_u32(vaddq_s64(v21, v11), v24, v25);
        v26 = *v14;
        v27 = v14[1];
        v14 += 4;
        v28 = vextq_s8(v26, v26, 8uLL);
        v29 = vextq_s8(v27, v27, 8uLL);
        v30 = veorq_s8(*v13, v26);
        v31 = veorq_s8(v13[1], v27);
        v32 = vuzp1q_s32(v30, v31);
        v33 = vuzp2q_s32(v30, v31);
        v17 = vmlal_u32(vaddq_s64(v28, v17), *v32.i8, *v33.i8);
        v16 = vmlal_high_u32(vaddq_s64(v29, v16), v32, v33);
        v13 = (v13 + 8);
        --v15;
      }

      while (v15);
      v34 = 0;
      v76 = v12;
      v77 = v11;
      v78 = v17;
      v79 = v16;
      do
      {
        v35 = veorq_s8(veorq_s8(vshrq_n_u64(*(&v76 + v34 * 16), 0x2FuLL), kSecret[v34 + 8]), *(&v76 + v34 * 16));
        *(&v76 + v34 * 16) = vmlal_u32(vmulq_s32(v35, xmmword_25D0A0720), vmovn_s64(v35), v10);
        ++v34;
      }

      while (v34 != 4);
      ++v8;
      v9 += 1024;
    }

    while (v8 != v3 >> 10);
    v4 = v76;
    v5 = v77;
    v6 = v78;
    v7 = v79;
  }

  else
  {
    v4 = xmmword_25D0A06E0;
    v5 = xmmword_25D0A06F0;
    v6 = xmmword_25D0A0700;
    v7 = xmmword_25D0A0710;
  }

  v36 = (v3 >> 6) & 0xF;
  if (v36)
  {
    v37 = &a1[(v3 & 0xFFFFFFFFFFFFFC00) + 32];
    v38 = &xmmword_25D09F110;
    do
    {
      v39 = *(v37 - 2);
      v40 = *(v37 - 1);
      v41 = vextq_s8(v39, v39, 8uLL);
      v42 = vextq_s8(v40, v40, 8uLL);
      v43 = veorq_s8(v38[-2], v39);
      v44 = veorq_s8(v38[-1], v40);
      v45 = vuzp1q_s32(v43, v44);
      v46 = vuzp2q_s32(v43, v44);
      v4 = vmlal_u32(vaddq_s64(v41, v4), *v45.i8, *v46.i8);
      v5 = vmlal_high_u32(vaddq_s64(v42, v5), v45, v46);
      v47 = *v37;
      v48 = *(v37 + 1);
      v37 += 64;
      v49 = vextq_s8(v47, v47, 8uLL);
      v50 = vextq_s8(v48, v48, 8uLL);
      v51 = veorq_s8(*v38, v47);
      v52 = veorq_s8(v38[1], v48);
      v53 = vuzp1q_s32(v51, v52);
      v54 = vuzp2q_s32(v51, v52);
      v6 = vmlal_u32(vaddq_s64(v49, v6), *v53.i8, *v54.i8);
      v7 = vmlal_high_u32(vaddq_s64(v50, v7), v53, v54);
      v38 = (v38 + 8);
      --v36;
    }

    while (v36);
  }

  v55 = 0;
  v56 = *&a1[a2 - 64];
  v57 = *&a1[a2 - 48];
  v58 = vextq_s8(v56, v56, 8uLL);
  v59 = veorq_s8(v56, xmmword_25D0A0730);
  v60 = vextq_s8(v57, v57, 8uLL);
  v61 = veorq_s8(v57, xmmword_25D0A0740);
  v62 = vuzp1q_s32(v59, v61);
  v63 = vuzp2q_s32(v59, v61);
  v76 = vmlal_u32(vaddq_s64(v58, v4), *v62.i8, *v63.i8);
  v77 = vmlal_high_u32(vaddq_s64(v60, v5), v62, v63);
  v64 = *&a1[a2 - 32];
  v65 = *&a1[a2 - 16];
  v66 = vextq_s8(v64, v64, 8uLL);
  v67 = vextq_s8(v65, v65, 8uLL);
  v68 = veorq_s8(v64, xmmword_25D0A0750);
  v69 = veorq_s8(v65, xmmword_25D0A0760);
  v70 = vuzp1q_s32(v68, v69);
  v71 = vuzp2q_s32(v68, v69);
  v78 = vmlal_u32(vaddq_s64(v66, v6), *v70.i8, *v71.i8);
  v79 = vmlal_high_u32(vaddq_s64(v67, v7), v70, v71);
  v72 = 0x9E3779B185EBCA87 * a2;
  do
  {
    v73 = veorq_s8(*(&kSecret[v55] + 11), *(&v76 + v55 * 16));
    v72 += ((v73.u64[1] * v73.u64[0]) >> 64) ^ (v73.i64[1] * v73.i64[0]);
    ++v55;
  }

  while (v55 != 4);
  v74 = *MEMORY[0x277D85DE8];
  return (0x165667919E3779F9 * (v72 ^ (v72 >> 37))) ^ ((0x165667919E3779F9 * (v72 ^ (v72 >> 37))) >> 32);
}

uint64_t llvm::sys::StrError@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v5 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (this)
  {
    __strerrbuf[0] = 0;
    strerror_r(this, __strerrbuf, 0x7CFuLL);
    this = MEMORY[0x25F890B20](a2, __strerrbuf);
  }

  v3 = *MEMORY[0x277D85DE8];
  return this;
}

uint64_t llvm::sys::Memory::allocateMappedMemory@<X0>(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result = std::system_category();
  v11 = result;
  while (1)
  {
    *a4 = 0;
    *(a4 + 8) = v11;
    if (!a1)
    {
      break;
    }

    v12 = a2;
    PosixProtectionFlags = getPosixProtectionFlags(a3);
    if (a2)
    {
      v14 = a2[1] + *a2;
    }

    else
    {
      v14 = 0;
    }

    {
      v22 = PosixProtectionFlags;
      PosixProtectionFlags = v22;
      if (v19)
      {
        llvm::sys::Memory::allocateMappedMemory(unsigned long,llvm::sys::MemoryBlock const*,unsigned int,std::error_code &)::PageSize = llvm::sys::Process::getPageSizeEstimate(v19);
        PosixProtectionFlags = v22;
      }
    }

    v15 = a1 - 1 + llvm::sys::Memory::allocateMappedMemory(unsigned long,llvm::sys::MemoryBlock const*,unsigned int,std::error_code &)::PageSize;
    if (v14 % llvm::sys::Memory::allocateMappedMemory(unsigned long,llvm::sys::MemoryBlock const*,unsigned int,std::error_code &)::PageSize)
    {
      v16 = llvm::sys::Memory::allocateMappedMemory(unsigned long,llvm::sys::MemoryBlock const*,unsigned int,std::error_code &)::PageSize + v14 - v14 % llvm::sys::Memory::allocateMappedMemory(unsigned long,llvm::sys::MemoryBlock const*,unsigned int,std::error_code &)::PageSize;
    }

    else
    {
      v16 = v14;
    }

    if (v14)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = v15 / llvm::sys::Memory::allocateMappedMemory(unsigned long,llvm::sys::MemoryBlock const*,unsigned int,std::error_code &)::PageSize;
    result = mmap(v17, v15 / llvm::sys::Memory::allocateMappedMemory(unsigned long,llvm::sys::MemoryBlock const*,unsigned int,std::error_code &)::PageSize * llvm::sys::Memory::allocateMappedMemory(unsigned long,llvm::sys::MemoryBlock const*,unsigned int,std::error_code &)::PageSize, PosixProtectionFlags, 4098, -1, 0);
    if (result != -1)
    {
      *&v23 = result;
      *(&v23 + 1) = llvm::sys::Memory::allocateMappedMemory(unsigned long,llvm::sys::MemoryBlock const*,unsigned int,std::error_code &)::PageSize * v18;
      LODWORD(v24) = a3;
      if ((a3 & 0x4000000) == 0 || (result = llvm::sys::Memory::protectMappedMemory(&v23, a3), *a4 = result, *(a4 + 8) = v20, v11 == v20) && !result)
      {
        *a5 = v23;
        *(a5 + 16) = v24;
        return result;
      }

      break;
    }

    a2 = 0;
    if (!v12)
    {
      v21 = *__error();
      result = std::generic_category();
      *a4 = v21;
      *(a4 + 8) = result;
      break;
    }
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  return result;
}

uint64_t llvm::sys::Memory::protectMappedMemory(uint64_t a1, int a2)
{
  {
    if (v14)
    {
      llvm::sys::Memory::protectMappedMemory(llvm::sys::MemoryBlock const&,unsigned int)::PageSize = 63 - __clz(llvm::sys::Process::getPageSizeEstimate(v14));
    }
  }

  v4 = *a1;
  if (!*a1)
  {
    goto LABEL_17;
  }

  v5 = *(a1 + 8);
  if (!v5)
  {
    goto LABEL_17;
  }

  if (a2)
  {
    PosixProtectionFlags = getPosixProtectionFlags(a2);
    v7 = PosixProtectionFlags;
    v8 = -(1 << llvm::sys::Memory::protectMappedMemory(llvm::sys::MemoryBlock const&,unsigned int)::PageSize);
    v9 = ((v4 + (-1 << llvm::sys::Memory::protectMappedMemory(llvm::sys::MemoryBlock const&,unsigned int)::PageSize) + (1 << llvm::sys::Memory::protectMappedMemory(llvm::sys::MemoryBlock const&,unsigned int)::PageSize)) & v8);
    v10 = (v4 + v5 + (1 << llvm::sys::Memory::protectMappedMemory(llvm::sys::MemoryBlock const&,unsigned int)::PageSize) - 1) & v8;
    if ((a2 & 0x4000000) != 0)
    {
      v11 = v10 - v9;
      if (PosixProtectionFlags)
      {
        if (!mprotect(v9, v10 - v9, PosixProtectionFlags))
        {
          sys_icache_invalidate(*a1, *(a1 + 8));
LABEL_17:
          std::system_category();
          return 0;
        }

        goto LABEL_14;
      }

      if (mprotect(v9, v10 - v9, PosixProtectionFlags | 1))
      {
LABEL_14:
        v12 = *__error();
        goto LABEL_15;
      }

      sys_icache_invalidate(*a1, *(a1 + 8));
    }

    else
    {
      v11 = v10 - v9;
    }

    if (!mprotect(v9, v11, v7))
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  v12 = 22;
LABEL_15:
  std::generic_category();
  return v12;
}

uint64_t llvm::sys::Memory::releaseMappedMemory(uint64_t a1)
{
  v2 = *a1;
  if (v2 && (v3 = *(a1 + 8)) != 0)
  {
    if (munmap(v2, v3))
    {
      v4 = *__error();
      std::generic_category();
    }

    else
    {
      std::system_category();
      v4 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
    }
  }

  else
  {
    std::system_category();
    return 0;
  }

  return v4;
}

unint64_t llvm::sys::path::begin@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = result;
  *a4 = result;
  *(a4 + 8) = a2;
  v20[0] = result;
  v20[1] = a2;
  if (!a2)
  {
    v8 = 0;
    goto LABEL_50;
  }

  if (a3 >= 2)
  {
    result = *result;
    if (a2 == 1)
    {
      goto LABEL_32;
    }

    if ((result & 0x80) != 0)
    {
      result = __maskrune(result, 0x100uLL);
      if (!result)
      {
        goto LABEL_11;
      }
    }

    else
    {
      result = *(MEMORY[0x277D85DE0] + 4 * result + 60) & 0x100;
      if (!result)
      {
        goto LABEL_11;
      }
    }

    if (v5[1] == 58)
    {
      v8 = 2;
      goto LABEL_50;
    }
  }

LABEL_11:
  result = *v5;
  if (a2 >= 3)
  {
    v9 = a3 > 1 && result == 92;
    v10 = v9;
    v11 = result != 47 && !v10;
    if (!v11 && result == v5[1])
    {
      v12 = v5[2];
      v13 = a3 > 1 && v12 == 92;
      v14 = v13;
      if (v12 != 47 && !v14)
      {
        v15 = 2;
LABEL_41:
        if (a3 <= 1)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (a3 <= 1)
        {
          v19 = "/";
        }

        else
        {
          v19 = "\\/";
        }

        result = llvm::StringRef::find_first_of(v20, v19, v18, v15);
        if (a2 >= result)
        {
          v8 = result;
        }

        else
        {
          v8 = a2;
        }

        goto LABEL_50;
      }
    }
  }

LABEL_32:
  v17 = a3 > 1 && result == 92;
  v8 = 1;
  if (result != 47 && !v17)
  {
    v15 = 0;
    goto LABEL_41;
  }

LABEL_50:
  *(a4 + 16) = v5;
  *(a4 + 24) = v8;
  *(a4 + 32) = 0;
  *(a4 + 40) = a3;
  return result;
}

uint64_t *llvm::sys::path::const_iterator::operator++(uint64_t *a1)
{
  v2 = a1[3];
  v3 = a1[4] + v2;
  a1[4] = v3;
  v4 = a1[1];
  if (v3 == v4)
  {
    a1[2] = 0;
    a1[3] = 0;
    return a1;
  }

  if (v2 <= 2)
  {
    v12 = 0;
    v7 = *(a1 + 10);
  }

  else
  {
    v5 = a1[2];
    v6 = *v5;
    v7 = *(a1 + 10);
    if ((v6 == 47 || (v6 == 92 ? (v8 = v7 >= 2) : (v8 = 0), v8)) && v5[1] == v6)
    {
      v9 = v5[2];
      v11 = v7 < 2 || v9 != 92;
      v12 = v9 != 47 && v11;
    }

    else
    {
      v12 = 0;
    }
  }

  v13 = *a1;
  v14 = *(*a1 + v3);
  if (v14 != 47 && (v7 < 2 || v14 != 92))
  {
    goto LABEL_47;
  }

  if (!v12 && (!v2 || v7 <= 1 || *(a1[2] + v2 - 1) != 58))
  {
    while (1)
    {
      v18 = *(v13 + v3);
      v19 = v7 > 1 && v18 == 92;
      v20 = v19;
      if (v18 != 47 && !v20)
      {
        break;
      }

      a1[4] = ++v3;
      if (v4 == v3)
      {
        if (v2 != 1 || (v3 = v4, *a1[2] != 47))
        {
          a1[4] = v4 - 1;
          v16 = ".";
          v17 = 1;
          goto LABEL_30;
        }

        break;
      }
    }

LABEL_47:
    if (v7 <= 1)
    {
      v22 = 1;
    }

    else
    {
      v22 = 2;
    }

    if (v7 <= 1)
    {
      v23 = "/";
    }

    else
    {
      v23 = "\\/";
    }

    first_of = llvm::StringRef::find_first_of(a1, v23, v22, v3);
    if (v4 >= v3)
    {
      v25 = v3;
    }

    else
    {
      v25 = v4;
    }

    if (v25 <= first_of)
    {
      v26 = first_of;
    }

    else
    {
      v26 = v3;
    }

    if (v26 >= v4)
    {
      v26 = v4;
    }

    a1[2] = v13 + v25;
    a1[3] = v26 - v25;
    return a1;
  }

  if (v4 >= v3)
  {
    v15 = v3;
  }

  else
  {
    v15 = a1[1];
  }

  v16 = (v13 + v15);
  v17 = v4 > v3;
LABEL_30:
  a1[2] = v16;
  a1[3] = v17;
  return a1;
}

uint64_t anonymous namespace::root_dir_start(unsigned __int8 *a1, unint64_t a2, unsigned int a3)
{
  v18[0] = a1;
  v18[1] = a2;
  if (a3 >= 2)
  {
    if (a2 < 3)
    {
      goto LABEL_33;
    }

    if (a1[1] == 58)
    {
      v3 = a1[2];
      v4 = 2;
      if (v3 == 47 || v3 == 92)
      {
        return v4;
      }
    }
  }

  if (a2 >= 4)
  {
    v5 = *a1;
    v7 = a3 > 1 && v5 == 92;
    v8 = v5 != 47 && !v7;
    if (!v8 && v5 == a1[1])
    {
      v9 = a1[2];
      v10 = a3 > 1 && v9 == 92;
      v11 = v10;
      if (v9 != 47 && !v11)
      {
        v12 = a3 > 1;
        if (a3 <= 1)
        {
          v13 = 1;
        }

        else
        {
          v13 = 2;
        }

        if (v12)
        {
          v14 = "\\/";
        }

        else
        {
          v14 = "/";
        }

        return llvm::StringRef::find_first_of(v18, v14, v13, 2uLL);
      }
    }

    goto LABEL_35;
  }

LABEL_33:
  if (!a2)
  {
    return -1;
  }

  v5 = *a1;
LABEL_35:
  v4 = 0;
  v16 = a3 > 1 && v5 == 92;
  if (v5 != 47 && !v16)
  {
    return -1;
  }

  return v4;
}

unint64_t anonymous namespace::filename_pos(unsigned __int8 *a1, unint64_t a2, unsigned int a3)
{
  v17[0] = a1;
  v17[1] = a2;
  if (a2)
  {
    v6 = a2 - 1;
    v7 = a1[a2 - 1];
    if (v7 == 47 || a3 >= 2 && v7 == 92)
    {
      return v6;
    }
  }

  else
  {
    v6 = -1;
  }

  if (a3 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (a3 <= 1)
  {
    v9 = "/";
  }

  else
  {
    v9 = "\\/";
  }

  last_of = llvm::StringRef::find_last_of(v17, v9, v8, v6);
  if (a3 >= 2 && last_of == -1)
  {
    if (a2 >= a2 - 1)
    {
      v11 = a2 - 1;
    }

    else
    {
      v11 = a2;
    }

    while (v11)
    {
      last_of = v11 - 1;
      v12 = a1[--v11];
      if (v12 == 58)
      {
        goto LABEL_20;
      }
    }

    return 0;
  }

LABEL_20:
  if (last_of == -1)
  {
    return 0;
  }

  if (last_of != 1)
  {
    return last_of + 1;
  }

  v6 = 0;
  v13 = *a1;
  v14 = a3 > 1 && v13 == 92;
  v15 = v14;
  if (v13 != 47 && !v15)
  {
    return last_of + 1;
  }

  return v6;
}

unsigned __int8 *llvm::sys::path::root_name(unint64_t a1, unint64_t a2, unsigned int a3)
{
  llvm::sys::path::begin(a1, a2, a3, &v12);
  if (v12 == a1 && v15 == a2)
  {
    return 0;
  }

  if (v14 < 3)
  {
    v8 = 0;
  }

  else
  {
    v7 = *v13;
    if (v7 == 47 || (v8 = 0, a3 >= 2) && v7 == 92)
    {
      v8 = v13[1] == v7;
    }
  }

  if (a3 >= 2 && v14)
  {
    v10 = v13;
    v11 = v13[v14 - 1] == 58;
  }

  else
  {
    v11 = 0;
    v10 = v13;
  }

  if (v8 || v11)
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

uint64_t llvm::sys::path::root_directory(unint64_t a1, unint64_t a2, unsigned int a3)
{
  llvm::sys::path::begin(a1, a2, a3, &v21);
  v18 = v21;
  v19 = v22;
  v20 = v23;
  if (v21 == a1 && v23 == a2)
  {
    return 0;
  }

  if (*(&v22 + 1) < 3uLL)
  {
    v8 = 0;
  }

  else
  {
    v7 = *v22;
    if (v7 == 47 || (v8 = 0, a3 >= 2) && v7 == 92)
    {
      v8 = *(v22 + 1) == v7;
    }
  }

  v9 = 0;
  if (a3 >= 2 && *(&v22 + 1))
  {
    v9 = *(v22 + *(&v22 + 1) - 1) == 58;
  }

  if (!v8 && !v9 || (llvm::sys::path::const_iterator::operator++(&v18), v18 == a1) && v20 == a2 || ((result = v19, v11 = *v19, a3 > 1) ? (v12 = v11 == 92) : (v12 = 0), !v12 ? (v13 = 0) : (v13 = 1), v11 != 47 ? (v14 = v13 == 0) : (v14 = 0), v14))
  {
    if (!v8)
    {
      v15 = *v22;
      if (a3 > 1 && v15 == 92 || v15 == 47)
      {
        return v22;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  return result;
}

void llvm::sys::path::append(void *a1, const llvm::Twine *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v54[4] = *MEMORY[0x277D85DE8];
  v52 = v54;
  v53 = xmmword_25D0A05C0;
  v49 = v51;
  v50 = xmmword_25D0A05C0;
  v46 = v48;
  v47 = xmmword_25D0A05C0;
  v43 = v45;
  v44 = xmmword_25D0A05C0;
  v40 = v42;
  v41 = 0x400000000;
  if (*(a3 + 32) >= 2u)
  {
    v11 = llvm::Twine::toStringRef(a3, &v52);
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v40, v11, v12);
  }

  if (*(a4 + 32) >= 2u)
  {
    v13 = llvm::Twine::toStringRef(a4, &v49);
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v40, v13, v14);
  }

  if (*(a5 + 32) >= 2u)
  {
    v15 = llvm::Twine::toStringRef(a5, &v46);
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v40, v15, v16);
  }

  if (*(a6 + 32) >= 2u)
  {
    v17 = llvm::Twine::toStringRef(a6, &v43);
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v40, v17, v18);
  }

  v19 = v40;
  if (v41)
  {
    if (a2 <= 1)
    {
      v20 = 1;
    }

    else
    {
      v20 = 2;
    }

    if (a2 <= 1)
    {
      v21 = "/";
    }

    else
    {
      v21 = "\\/";
    }

    if (a2 == 3)
    {
      v22 = 92;
    }

    else
    {
      v22 = 47;
    }

    v23 = 16 * v41;
    do
    {
      v24 = a1[1];
      if (!v24 || ((v25 = *(*a1 + v24 - 1), a2 > 1) ? (v26 = v25 == 92) : (v26 = 0), !v26 ? (v27 = 0) : (v27 = 1), v25 != 47 ? (v28 = v27 == 0) : (v28 = 0), v28))
      {
        v35 = v19[1];
        if (!v35 || (v36 = **v19, v36 != 47) && (a2 < 2 || v36 != 92))
        {
          if (v24)
          {
            v39 = 261;
            v38[0] = *v19;
            v38[1] = v35;
            if (!llvm::sys::path::has_root_name(v38, a2))
            {
              llvm::SmallVectorTemplateBase<char,true>::push_back(a1, v22);
            }
          }
        }

        v33 = *v19;
        v34 = &v19[1][*v19];
      }

      else
      {
        first_not_of = llvm::StringRef::find_first_not_of(v19, v21, v20, 0);
        v31 = *v19;
        v30 = v19[1];
        if (v30 >= first_not_of)
        {
          v32 = first_not_of;
        }

        else
        {
          v32 = v19[1];
        }

        v33 = &v32[v31];
        v34 = &v30[v31];
      }

      llvm::SmallVectorImpl<char>::append<char const*,void>(a1, v33, v34);
      v19 += 2;
      v23 -= 16;
    }

    while (v23);
    v19 = v40;
  }

  if (v19 != v42)
  {
    free(v19);
  }

  if (v43 != v45)
  {
    free(v43);
  }

  if (v46 != v48)
  {
    free(v46);
  }

  if (v49 != v51)
  {
    free(v49);
  }

  if (v52 != v54)
  {
    free(v52);
  }

  v37 = *MEMORY[0x277D85DE8];
}

BOOL llvm::sys::path::has_root_name(llvm::sys::path *this, const llvm::Twine *a2)
{
  v2 = a2;
  v11[16] = *MEMORY[0x277D85DE8];
  v9 = v11;
  v10 = xmmword_25D0A05A0;
  v3 = llvm::Twine::toStringRef(this, &v9);
  llvm::sys::path::root_name(v3, v4, v2);
  v6 = v5;
  if (v9 != v11)
  {
    free(v9);
  }

  result = v6 != 0;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t anonymous namespace::parent_path_end(unsigned __int8 *a1, unint64_t a2, unsigned int a3)
{
  v7 = v6;
  if (a2)
  {
    v8 = a1[v6];
    v10 = a3 > 1 && v8 == 92;
    v11 = v8 == 47 || v10;
  }

  else
  {
    v11 = 0;
  }

  {
    if (i != -1 && v7 <= i)
    {
      break;
    }

    v13 = a1[v7 - 1];
    v14 = a3 > 1 && v13 == 92;
    v15 = v14;
    if (v13 != 47 && !v15)
    {
      break;
    }
  }

  if (v7 == i)
  {
    v17 = v11;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    return v7;
  }

  else
  {
    return i + 1;
  }
}

void llvm::SmallVectorImpl<char>::swap(void *a1, void *a2)
{
  if (a1 != a2)
  {
    v4 = *a1;
    if (*a1 == a1 + 3 || *a2 == a2 + 3)
    {
      v8 = a2[1];
      if (a1[2] < v8)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(a1, a1 + 3, v8, 1);
      }

      v9 = a1[1];
      if (a2[2] < v9)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v9, 1);
        v9 = a1[1];
      }

      v10 = a2[1];
      if (v9 >= v10)
      {
        v11 = a2[1];
      }

      else
      {
        v11 = v9;
      }

      if (v11)
      {
        for (i = 0; i != v11; ++i)
        {
          v13 = *a2;
          v14 = *(*a1 + i);
          *(*a1 + i) = *(*a2 + i);
          *(v13 + i) = v14;
        }

        v9 = a1[1];
        v10 = a2[1];
      }

      v15 = v9 - v10;
      if (v9 <= v10)
      {
        v17 = v10 - v9;
        if (v10 > v9)
        {
          v18 = v10 - v11;
          if (v18)
          {
            memcpy((*a1 + v9), (*a2 + v11), v18);
            v9 = a1[1];
          }

          a1[1] = v17 + v9;
          a2[1] = v11;
        }
      }

      else
      {
        v16 = v9 - v11;
        if (v16)
        {
          memcpy((*a2 + v10), (*a1 + v11), v16);
          v10 = a2[1];
        }

        a2[1] = v15 + v10;
        a1[1] = v11;
      }
    }

    else
    {
      v5 = a1[1];
      v6 = a2[1];
      *a1 = *a2;
      a1[1] = v6;
      *a2 = v4;
      a2[1] = v5;
      v7 = a1[2];
      a1[2] = a2[2];
      a2[2] = v7;
    }
  }
}

BOOL llvm::sys::path::has_root_directory(llvm::sys::path *this, const llvm::Twine *a2)
{
  v2 = a2;
  v11[16] = *MEMORY[0x277D85DE8];
  v9 = v11;
  v10 = xmmword_25D0A05A0;
  v3 = llvm::Twine::toStringRef(this, &v9);
  llvm::sys::path::root_directory(v3, v4, v2);
  v6 = v5;
  if (v9 != v11)
  {
    free(v9);
  }

  result = v6 != 0;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::sys::path::is_absolute(llvm::sys::path *this, const llvm::Twine *a2)
{
  v15[16] = *MEMORY[0x277D85DE8];
  v13 = v15;
  v14 = xmmword_25D0A05A0;
  v3 = llvm::Twine::toStringRef(this, &v13);
  v5 = v4;
  v12 = 261;
  v10 = v3;
  v11 = v4;
  has_root_directory = llvm::sys::path::has_root_directory(&v10, a2);
  if (a2 >= 2)
  {
    v12 = 261;
    v10 = v3;
    v11 = v5;
    has_root_name = llvm::sys::path::has_root_name(&v10, a2);
  }

  else
  {
    has_root_name = 1;
  }

  if (v13 != v15)
  {
    free(v13);
  }

  v8 = *MEMORY[0x277D85DE8];
  return has_root_directory & has_root_name;
}

uint64_t llvm::sys::fs::status(uint64_t a1, uint64_t a2, int a3)
{
  v13[16] = *MEMORY[0x277D85DE8];
  v11 = v13;
  v12 = xmmword_25D0A05A0;
  v5 = llvm::Twine::toNullTerminatedStringRef(a1, &v11);
  if (a3)
  {
    v6 = MEMORY[0x277D85F68](v5, v10);
  }

  else
  {
    v6 = MEMORY[0x277D85F38](v5, v10);
  }

  v7 = llvm::sys::fs::fillStatus(v6, v10, a2);
  if (v11 != v13)
  {
    free(v11);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

unint64_t createUniqueEntity(llvm::Twine *a1, int *a2, uint64_t **a3, int a4, int a5, int a6, unsigned int a7)
{
  v61 = *MEMORY[0x277D85DE8];
  std::system_category();
  v10 = 128;
  while (1)
  {
    v56 = &v58;
    v57 = xmmword_25D0A05A0;
    llvm::Twine::toVector(a1, &v56);
    if (a4)
    {
      v55[4] = 261;
      v53 = v56;
      *&v54 = v57;
      if ((llvm::sys::path::is_absolute(&v53, 0) & 1) == 0)
      {
        v11 = 0;
        v53 = v55;
        v54 = xmmword_25D0A05A0;
        do
        {
          v12 = getenv((&off_2799BD9D0)[v11]);
          if (v12)
          {
            v13 = 1;
          }

          else
          {
            v13 = v11 == 3;
          }

          ++v11;
        }

        while (!v13);
        v14 = v12;
        if (v12)
        {
          v15 = &v12[strlen(v12)];
          v16 = v14;
        }

        else
        {
          v17 = confstr(65537, 0, 0);
          if (v17)
          {
            v18 = v17;
            while (1)
            {
              llvm::SmallVectorImpl<char>::resizeImpl<false>(&v53, v18);
              v19 = confstr(65537, v53, v54);
              if (!v19)
              {
                break;
              }

              v18 = v19;
              if (v19 == v54)
              {
                *&v54 = v19 - 1;
                goto LABEL_20;
              }
            }

            *&v54 = 0;
          }

          v16 = "/var/tmp/";
          v15 = "";
        }

        llvm::SmallVectorImpl<char>::append<char const*,void>(&v53, v16, v15);
LABEL_20:
        v52 = 261;
        v51[0] = v56;
        v51[1] = v57;
        v50 = 257;
        v48 = 257;
        v46 = 257;
        llvm::sys::path::append(&v53, 0, v51, v49, v47, v45);
        llvm::SmallVectorImpl<char>::swap(&v56, &v53);
        if (v53 != v55)
        {
          free(v53);
        }
      }
    }

    llvm::SmallVectorImpl<char>::operator=(a3, &v56);
    llvm::SmallVectorTemplateBase<char,true>::push_back(a3, 0);
    a3[1] = (a3[1] - 1);
    v20 = v57;
    if (v57)
    {
      v21 = 0;
      do
      {
        if (*(v56 + v21) == 37)
        {
          *(*a3 + v21) = a0123456789abcd_0[arc4random() & 0xF];
        }

        ++v21;
      }

      while (v20 != v21);
    }

    if (v56 != &v58)
    {
      free(v56);
    }

    if (!a5)
    {
      v27 = *a3;
      v28 = 1;
      v60 = 1;
      if (*v27)
      {
        v56 = v27;
        v28 = 3;
      }

      v59 = v28;
      directory = llvm::sys::fs::create_directory(&v56, 0, 0x1F8u);
      if (!directory)
      {
LABEL_54:
        LODWORD(directory) = 0;
        v38 = 0;
        goto LABEL_56;
      }

      v30 = v29;
      v31 = std::generic_category();
      if (directory != 17 || v31 != v30)
      {
LABEL_55:
        v38 = directory & 0xFFFFFFFF00000000;
        goto LABEL_56;
      }

      goto LABEL_48;
    }

    if (a5 != 2)
    {
      break;
    }

    v22 = *a3;
    v23 = 1;
    v60 = 1;
    if (*v22)
    {
      v56 = v22;
      v23 = 3;
    }

    v59 = v23;
    directory = llvm::sys::fs::access(&v56, 0);
    if (std::generic_category() == v25 && directory == 2)
    {
      goto LABEL_54;
    }

    if (directory)
    {
      goto LABEL_55;
    }

    v26 = 0;
LABEL_52:
    v37 = v10-- != 0;
    if (v10 == 0 || !v37)
    {
      v38 = directory & 0xFFFFFFFF00000000;
      LODWORD(directory) = v26;
      goto LABEL_56;
    }
  }

  v32 = *a3;
  v33 = 1;
  v60 = 1;
  if (*v32)
  {
    v56 = v32;
    v33 = 3;
  }

  v59 = v33;
  directory = llvm::sys::fs::openFile(&v56, a2, 1, 3, a6, a7);
  if (!directory)
  {
    goto LABEL_54;
  }

  v35 = v34;
  v36 = std::generic_category();
  if (directory == 17 && v36 == v35)
  {
LABEL_48:
    v26 = 17;
    goto LABEL_52;
  }

  if (directory == 13 && v36 == v35)
  {
    v26 = 13;
    goto LABEL_52;
  }

  v38 = directory & 0xFFFFFFFF00000000;
LABEL_56:
  v39 = *MEMORY[0x277D85DE8];
  return v38 | directory;
}

unint64_t llvm::sys::fs::createTemporaryFile(uint64_t *a1, __int128 *a2, uint64_t a3, int *a4, uint64_t **a5, int a6, int a7)
{
  v11 = "-%%%%%%.";
  v39[16] = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v11 = "-%%%%%%";
  }

  v12 = *v11;
  v13 = *(a1 + 32);
  if (v13 == 1)
  {
    if (*v11)
    {
      v13 = 3;
    }

    else
    {
      v13 = 1;
    }

    *&v25 = v11;
    LOBYTE(v27) = v13;
    v14 = 1;
    goto LABEL_15;
  }

  if (!*(a1 + 32))
  {
    LOWORD(v27) = 256;
LABEL_24:
    v17 = 1;
    goto LABEL_25;
  }

  if (*v11)
  {
    v15 = a1[1];
    if (*(a1 + 33) == 1)
    {
      v16 = *a1;
    }

    else
    {
      v13 = 2;
      v16 = a1;
    }

    *&v25 = v16;
    *(&v25 + 1) = v15;
    *&v26 = v11;
    LOBYTE(v27) = v13;
    v14 = 3;
LABEL_15:
    BYTE1(v27) = v14;
    goto LABEL_16;
  }

  v19 = *(a1 + 1);
  v25 = *a1;
  v26 = v19;
  v27 = a1[4];
  v13 = v27;
  if (!v27)
  {
    goto LABEL_24;
  }

LABEL_16:
  if (v13 == 1)
  {
    v28 = a2;
    v29 = a3;
    v17 = 1;
    LOBYTE(v13) = 5;
  }

  else
  {
    if (BYTE1(v27) != 1)
    {
      LOBYTE(v13) = 2;
    }

    v18 = &v25;
    if (BYTE1(v27) == 1)
    {
      v18 = v25;
    }

    v28 = v18;
    v29 = *(&v25 + 1);
    v30 = a2;
    v31 = a3;
    v17 = 5;
  }

LABEL_25:
  v32 = v13;
  v33 = v17;
  v37 = v39;
  v38 = xmmword_25D0A05A0;
  v20 = llvm::Twine::toNullTerminatedStringRef(&v28, &v37);
  v21 = 1;
  v36 = 1;
  if (*v20)
  {
    v34 = v20;
    v21 = 3;
  }

  v35 = v21;
  UniqueEntity = createUniqueEntity(&v34, a4, a5, 1, a6, a7, 0x1B6u);
  if (v37 != v39)
  {
    free(v37);
  }

  v23 = *MEMORY[0x277D85DE8];
  return UniqueEntity;
}

unint64_t llvm::sys::fs::createTemporaryFile(uint64_t *a1, __int128 *a2, uint64_t a3, uint64_t **a4, int a5)
{
  v7 = 0;
  v5 = llvm::sys::fs::createTemporaryFile(a1, a2, a3, &v7, a4, 1, a5);
  if (!v5)
  {
    close(v7);
  }

  return v5;
}

uint64_t llvm::sys::fs::create_directory(uint64_t a1, char a2, mode_t a3)
{
  v11[16] = *MEMORY[0x277D85DE8];
  v9 = v11;
  v10 = xmmword_25D0A05A0;
  v5 = llvm::Twine::toNullTerminatedStringRef(a1, &v9);
  if (mkdir(v5, a3) != -1 || *__error() == 17 && (a2 & 1) != 0)
  {
    std::system_category();
    v6 = 0;
  }

  else
  {
    v6 = *__error();
    std::generic_category();
  }

  if (v9 != v11)
  {
    free(v9);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

unint64_t llvm::sys::fs::openFileForRead(uint64_t a1, int *a2, int a3, void *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = llvm::sys::fs::openFile(a1, a2, 2, 1, a3, 438);
  v7 = v6;
  if (v6)
  {
    v8 = v6 & 0xFFFFFFFF00000000;
  }

  else
  {
    if (a4)
    {
      a4[1] = 0;
      if (fcntl(*a2, 50, __s) != -1)
      {
        v9 = strlen(__s);
        llvm::SmallVectorImpl<char>::append<char *,void>(a4, __s, &__s[v9]);
      }
    }

    std::system_category();
    v8 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8 | v7;
}

ssize_t llvm::sys::fs::readNativeFileToEOF@<X0>(int a1@<W0>, void *a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  v8 = a2[1];
  for (i = v8 + a3; ; i = v8 + a3)
  {
    llvm::SmallVectorImpl<char>::resizeImpl<true>(a2, i);
    result = llvm::sys::fs::readNativeFile(a1, (*a2 + v8), a3, &v13);
    if (v14)
    {
      break;
    }

    v11 = v13;
    if (!v13)
    {
      goto LABEL_6;
    }

    v8 += v13;
  }

  v11 = v13;
LABEL_6:
  *a4 = v11;
  a2[1] = v8;
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

ssize_t llvm::sys::fs::readNativeFile@<X0>(int a1@<W0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a3 >= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFFLL;
  }

  else
  {
    v7 = a3;
  }

  while (1)
  {
    *__error() = 0;
    result = read(a1, a2, v7);
    if (result != -1)
    {
      break;
    }

    if (*__error() != 4)
    {
      v9 = *__error();
      *&v10.__val_ = std::generic_category();
      result = llvm::errorCodeToError(v9, v10, a4);
      *(a4 + 8) |= 1u;
      return result;
    }
  }

  *(a4 + 8) &= ~1u;
  *a4 = result;
  return result;
}

_BYTE *llvm::sys::fs::getMainExecutable@<X0>(_BYTE *a1@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  bufsize = 1024;
  if (_NSGetExecutablePath(buf, &bufsize) || !realpath_DARWIN_EXTSN(buf, __s))
  {
    v5 = "";
  }

  else
  {
    v5 = __s;
  }

  result = std::string::basic_string[abi:nn200100]<0>(a1, v5);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::sys::fs::remove(llvm::sys::fs *this, const llvm::Twine *a2)
{
  v2 = a2;
  v12[16] = *MEMORY[0x277D85DE8];
  v10 = v12;
  v11 = xmmword_25D0A05A0;
  v3 = llvm::Twine::toNullTerminatedStringRef(this, &v10);
  if (lstat(v3, &v9))
  {
    if (*__error() != 2 || (v2 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_11:
    std::system_category();
    v5 = 0;
    goto LABEL_14;
  }

  v6 = v9.st_mode & 0xF000;
  if (v6 != 0x4000 && v6 != 0x8000 && v6 != 40960)
  {
    v5 = 1;
    goto LABEL_13;
  }

  if (remove(v3, v4) != -1 || *__error() == 2 && (v2 & 1) != 0)
  {
    goto LABEL_11;
  }

LABEL_4:
  v5 = *__error();
LABEL_13:
  std::generic_category();
LABEL_14:
  if (v10 != v12)
  {
    free(v10);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t llvm::sys::fs::rename(llvm::sys::fs *this, const llvm::Twine *a2, const llvm::Twine *a3)
{
  v16[16] = *MEMORY[0x277D85DE8];
  v14 = v16;
  v15 = xmmword_25D0A05A0;
  v11 = v13;
  v12 = xmmword_25D0A05A0;
  v4 = llvm::Twine::toNullTerminatedStringRef(this, &v14);
  v5 = llvm::Twine::toNullTerminatedStringRef(a2, &v11);
  rename(v4, v5, v6);
  if (v7 == -1)
  {
    v8 = *__error();
    std::generic_category();
  }

  else
  {
    std::system_category();
    v8 = 0;
  }

  if (v11 != v13)
  {
    free(v11);
  }

  if (v14 != v16)
  {
    free(v14);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t llvm::sys::fs::resize_file(llvm::sys::fs *this, off_t a2)
{
  if (ftruncate(this, a2) == -1)
  {
    v2 = *__error();
    std::generic_category();
  }

  else
  {
    std::system_category();
    return 0;
  }

  return v2;
}

uint64_t llvm::sys::fs::access(uint64_t a1, int a2)
{
  v11[16] = *MEMORY[0x277D85DE8];
  v9 = v11;
  v10 = xmmword_25D0A05A0;
  v3 = llvm::Twine::toNullTerminatedStringRef(a1, &v9);
  v4 = v3;
  if (a2)
  {
    if (a2 == 2)
    {
      if (access(v3, 5) != -1)
      {
        if (stat(v4, &v8) || (v8.st_mode & 0xF000) != 0x8000)
        {
          std::generic_category();
          v5 = 13;
          goto LABEL_11;
        }

        goto LABEL_9;
      }

      goto LABEL_10;
    }

    a2 = 2;
  }

  if (access(v3, a2) != -1)
  {
LABEL_9:
    std::system_category();
    v5 = 0;
    goto LABEL_11;
  }

LABEL_10:
  v5 = *__error();
  std::generic_category();
LABEL_11:
  if (v9 != v11)
  {
    free(v9);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t llvm::sys::fs::fillStatus(int a1, int *a2, uint64_t a3)
{
  if (a1)
  {
    v4 = *__error();
    std::generic_category();
    if (v4 == 2)
    {
      *(a3 + 32) = 0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 40) = 0xFFFF00000001;
      *(a3 + 48) = 0;
      *(a3 + 52) = 0;
      *(a3 + 56) = 0;
      return 2;
    }

    else
    {
      *(a3 + 28) = 0u;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 44) = 0xFFFFLL;
      *(a3 + 52) = 0;
      *(a3 + 56) = 0;
    }
  }

  else
  {
    v6 = *(a2 + 5);
    v7 = *(a2 + 7);
    v8 = *(a2 + 2);
    v9 = v8 & 0xFFF;
    v10 = llvm::sys::fs::typeForMode(v8);
    v11 = *a2;
    v12 = *(a2 + 3);
    v13 = *(a2 + 1);
    v14 = *(a2 + 6);
    v15 = *(a2 + 12);
    v16 = *(a2 + 2);
    *a3 = *(a2 + 4);
    *(a3 + 8) = v14;
    *(a3 + 16) = v6;
    *(a3 + 20) = v7;
    *(a3 + 24) = v16;
    *(a3 + 32) = v15;
    *(a3 + 40) = v10;
    *(a3 + 44) = v9;
    *(a3 + 48) = v11;
    *(a3 + 52) = v12;
    *(a3 + 56) = v13;
    std::system_category();
    return 0;
  }

  return v4;
}

uint64_t llvm::sys::fs::mapped_file_region::init(size_t *a1, int a2, off_t a3, int a4)
{
  if (a4 == 1)
  {
    v6 = 65;
  }

  else
  {
    v6 = 66;
  }

  if (a4)
  {
    v7 = 3;
  }

  else
  {
    v7 = 1;
  }

  if (a4)
  {
    v8 = v6;
  }

  else
  {
    v8 = 24642;
  }

  v9 = mmap(0, *a1, v7, v8, a2, a3);
  a1[1] = v9;
  if (v9 == -1)
  {
    v10 = *__error();
    std::generic_category();
  }

  else
  {
    std::system_category();
    return 0;
  }

  return v10;
}

uint64_t llvm::sys::fs::openFile(uint64_t a1, int *a2, int a3, int a4, int a5, uint64_t a6)
{
  v21[16] = *MEMORY[0x277D85DE8];
  v8 = 2 * (a4 == 3);
  if (a4 == 2)
  {
    v8 = 1;
  }

  if (a4 == 1)
  {
    v8 = 0;
  }

  if ((a5 & 4) != 0)
  {
    a3 = 3;
  }

  v10 = v8 | 0x600;
  v11 = v8 | 0x200;
  if (a3 == 1)
  {
    v8 |= 0xA00u;
  }

  if (a3 == 3)
  {
    v8 = v11;
  }

  if (a3)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  v13 = ((a5 << 20) & 0x1000000 | (2 * (a5 & 4))) ^ 0x1000000;
  v19 = v21;
  v20 = xmmword_25D0A05A0;
  v14 = llvm::Twine::toNullTerminatedStringRef(a1, &v19);
  while (1)
  {
    *__error() = 0;
    v15 = open(v14, v12 | v13, a6);
    if (v15 != -1)
    {
      break;
    }

    if (*__error() != 4)
    {
      *a2 = -1;
      goto LABEL_21;
    }
  }

  *a2 = v15;
  if ((v15 & 0x80000000) == 0)
  {
    std::system_category();
    v16 = 0;
    goto LABEL_22;
  }

LABEL_21:
  v16 = *__error();
  std::generic_category();
LABEL_22:
  if (v19 != v21)
  {
    free(v19);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

llvm *llvm::sys::fs::openNativeFileForRead@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = 0;
  result = llvm::sys::fs::openFileForRead(a1, &v7, a2, a3);
  if (result)
  {
    result = llvm::errorCodeToError(result, v6, a4);
    *(a4 + 8) |= 1u;
  }

  else
  {
    *(a4 + 8) &= ~1u;
    *a4 = v7;
  }

  return result;
}

ssize_t llvm::sys::fs::readNativeFileSlice@<X0>(int a1@<W0>, void *a2@<X1>, unint64_t a3@<X2>, off_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a3 >= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFFLL;
  }

  else
  {
    v9 = a3;
  }

  while (1)
  {
    *__error() = 0;
    result = pread(a1, a2, v9, a4);
    if (result != -1)
    {
      break;
    }

    if (*__error() != 4)
    {
      v11 = *__error();
      *&v12.__val_ = std::generic_category();
      result = llvm::errorCodeToError(v11, v12, a5);
      *(a5 + 8) |= 1u;
      return result;
    }
  }

  *(a5 + 8) &= ~1u;
  *a5 = result;
  return result;
}

uint64_t llvm::sys::fs::copy_file(llvm::formatv_object_base **this, llvm::formatv_object_base **a2, const llvm::Twine *a3)
{
  llvm::Twine::str(this, v13);
  llvm::Twine::str(a2, __p);
  if (v14 >= 0)
  {
    v4 = v13;
  }

  else
  {
    v4 = v13[0];
  }

  if (v12 >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if (clonefile(v4, v5, 0))
  {
    v6 = *__error();
    if (v6 > 0x2D || ((1 << v6) & 0x200000060000) == 0)
    {
      goto LABEL_20;
    }

    if (v14 >= 0)
    {
      v8 = v13;
    }

    else
    {
      v8 = v13[0];
    }

    if (v12 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    if (copyfile(v8, v9, 0, 8u))
    {
      v6 = *__error();
LABEL_20:
      std::generic_category();
      goto LABEL_22;
    }
  }

  std::system_category();
  v6 = 0;
LABEL_22:
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  return v6;
}

uint64_t llvm::sys::fs::TempFile::discard@<X0>(llvm::sys::fs::TempFile *this@<X0>, void *a2@<X8>)
{
  *this = 1;
  v4 = *(this + 8);
  if (v4 != -1 && close(v4) == -1)
  {
    v6 = *__error();
    v5 = std::generic_category();
    goto LABEL_16;
  }

  *(this + 8) = -1;
  v5 = std::system_category();
  if ((*(this + 31) & 0x8000000000000000) == 0)
  {
    if (*(this + 31))
    {
      goto LABEL_5;
    }

LABEL_14:
    MEMORY[0x25F890B20](this + 8, "");
    v6 = 0;
    goto LABEL_16;
  }

  if (!*(this + 2))
  {
    goto LABEL_14;
  }

LABEL_5:
  v14 = 260;
  v13 = this + 8;
  v6 = llvm::sys::fs::remove(&v13, 1);
  v5 = v7;
  v8 = *(this + 31);
  if (v8 >= 0)
  {
    v9 = this + 8;
  }

  else
  {
    v9 = *(this + 1);
  }

  if (v8 >= 0)
  {
    v10 = *(this + 31);
  }

  else
  {
    v10 = *(this + 2);
  }

  llvm::sys::DontRemoveFileOnSignal(v9, v10);
  if (!v6)
  {
    MEMORY[0x25F890B20](this + 8, "");
  }

LABEL_16:
  *&v11.__val_ = v5;

  return llvm::errorCodeToError(v6, v11, a2);
}

uint64_t llvm::sys::fs::TempFile::keep@<X0>(llvm::sys::fs::TempFile *this@<X0>, const llvm::Twine *a2@<X1>, const llvm::Twine *a3@<X2>, void *a4@<X8>)
{
  *this = 1;
  v7 = (this + 8);
  v19 = 260;
  v18[0] = (this + 8);
  v10 = llvm::sys::fs::rename(v18, a2, a3);
  if (v10)
  {
    v19 = 260;
    v18[0] = v7;
    v10 = llvm::sys::fs::copy_file(v18, a2, v9);
    v12 = v11;
    if (v10)
    {
      v19 = 260;
      v18[0] = v7;
      llvm::sys::fs::remove(v18, 1);
    }
  }

  else
  {
    v12 = v8;
  }

  v13 = *(this + 31);
  if (v13 >= 0)
  {
    v14 = v7;
  }

  else
  {
    v14 = *(this + 1);
  }

  if (v13 >= 0)
  {
    v15 = *(this + 31);
  }

  else
  {
    v15 = *(this + 2);
  }

  llvm::sys::DontRemoveFileOnSignal(v14, v15);
  if (!v10)
  {
    MEMORY[0x25F890B20](v7, "");
  }

  if (close(*(this + 8)) == -1)
  {
    v10 = *__error();
    v12 = std::generic_category();
  }

  else
  {
    *(this + 8) = -1;
  }

  *&v16.__val_ = v12;
  return llvm::errorCodeToError(v10, v16, a4);
}

void llvm::sys::fs::TempFile::create(llvm::Twine *a1@<X0>, unsigned int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v16[16] = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14 = v16;
  v15 = xmmword_25D0A05A0;
  v5 = createUniqueEntity(a1, &v13, &v14, 0, 1, a3 | 8u, a2);
  if (!v5)
  {
    v7 = v15;
    v8 = v13;
    if (v15 < 0x7FFFFFFFFFFFFFF8)
    {
      if (v15 < 0x17)
      {
        v11 = v15;
        if (v15)
        {
          memmove(&__p, v14, v15);
        }

        *(&__p + v7) = 0;
        v12 = v8;
        llvm::sys::RemoveFileOnSignal(v14, v15);
      }

      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  llvm::errorCodeToError(v5, v6, a4);
  *(a4 + 40) |= 1u;
  if (v14 != v16)
  {
    free(v14);
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t llvm::sys::fs::typeForMode(llvm::sys::fs *this)
{
  if (this >> 12 == 7)
  {
    return 9;
  }

  else
  {
    return dword_25D09F210[(this >> 12) ^ 8];
  }
}

void llvm::sys::Process::getPageSize(uint64_t a1@<X8>)
{
  {
    llvm::sys::Process::getPageSize(void)::page_size = getpagesize();
  }

  v3 = llvm::sys::Process::getPageSize(void)::page_size;
  if (llvm::sys::Process::getPageSize(void)::page_size == -1)
  {
    v4 = *__error();
    *&v5.__val_ = std::generic_category();
    llvm::errorCodeToError(v4, v5, a1);
    *(a1 + 8) |= 1u;
  }

  else
  {
    *(a1 + 8) &= ~1u;
    *a1 = v3;
  }
}

uint64_t llvm::sys::Process::SafelyCloseFileDescriptor(llvm::sys::Process *this)
{
  v1 = this;
  v5 = -1;
  v6 = -1;
  v2 = pthread_sigmask(3, &v6, &v5);
  if (!v2)
  {
    if (close(v1) < 0)
    {
      v2 = *__error();
      v3 = pthread_sigmask(3, &v5, 0);
      if (v2)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v3 = pthread_sigmask(3, &v5, 0);
    }

    v2 = v3;
  }

LABEL_6:
  std::generic_category();
  return v2;
}

uint64_t llvm::sys::Process::FileDescriptorHasColors(llvm::sys::Process *this)
{
  result = isatty(this);
  if (result)
  {
    v2 = getenv("TERM");
    v4 = v2;
    if (!v2)
    {
      return (v4 != 0) & v3;
    }

    v5 = strlen(v2);
    switch(v5)
    {
      case 6uLL:
        if (*v4 == 2003269987 && *(v4 + 2) == 28265)
        {
          goto LABEL_37;
        }

        break;
      case 5uLL:
        v6 = v4[4];
        v7 = *v4 == 1970170220;
        v8 = 120;
        goto LABEL_19;
      case 4uLL:
        if (*v4 == 1769172577 || *v4 == 1953921138)
        {
LABEL_37:
          v3 = 1;
          return (v4 != 0) & v3;
        }

LABEL_36:
        v3 = 0;
        return (v4 != 0) & v3;
      default:
        if (v5 < 6)
        {
          goto LABEL_36;
        }

        break;
    }

    v6 = *(v4 + 2);
    v7 = *v4 == 1701995379;
    v8 = 28261;
LABEL_19:
    if (v7 && v6 == v8)
    {
      goto LABEL_37;
    }

    if (*v4 == 1919251576 && v4[4] == 109)
    {
      goto LABEL_37;
    }

    v12 = *v4 == 808547446 && v4[4] == 48;
    if (v12 || *v4 == 1953921138)
    {
      goto LABEL_37;
    }

    if (*&v4[v5 - 5] == 1869377379 && v4[v5 - 1] == 114)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  return result;
}

void llvm::sys::findProgramByName(void *__s@<X0>, size_t __n@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v36[32] = *MEMORY[0x277D85DE8];
  if (__n)
  {
    v10 = memchr(__s, 47, __n);
    if (v10)
    {
      if (v10 - __s != -1)
      {
        if (__n >= 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        if (__n >= 0x17)
        {
          operator new();
        }

        HIBYTE(v36[0]) = __n;
        memmove(__dst, __s, __n);
        *(__dst + __n) = 0;
        *(a5 + 24) &= ~1u;
        *a5 = *__dst;
        *(a5 + 16) = v36[0];
        goto LABEL_30;
      }
    }
  }

  __dst[0] = v36;
  __dst[1] = 0x1000000000;
  if (a4)
  {
    v11 = &a3[16 * a4];
  }

  else
  {
    v19 = getenv("PATH");
    if (!v19 || (v20 = v19, v21 = strlen(v19), llvm::SplitString(v20, v21, __dst, ":", 1), !LODWORD(__dst[1])))
    {
      v12 = *(a5 + 24);
LABEL_26:
      *(a5 + 24) = v12 | 1;
      v22 = std::generic_category();
      *a5 = 2;
      *(a5 + 8) = v22;
      goto LABEL_27;
    }

    a3 = __dst[0];
    v11 = __dst[0] + 16 * LODWORD(__dst[1]);
  }

  v12 = *(a5 + 24);
  while (1)
  {
    v13 = *(a3 + 1);
    if (v13)
    {
      v14 = *a3;
      __src = v34;
      __len = xmmword_25D0A05A0;
      llvm::SmallVectorImpl<char>::append<char const*,void>(&__src, v14, &v14[v13]);
      v31 = 261;
      v30[0] = __s;
      v30[1] = __n;
      v29 = 257;
      v27 = 257;
      v25 = 257;
      llvm::sys::path::append(&__src, 0, v30, v28, v26, v24);
      llvm::SmallVectorTemplateBase<char,true>::push_back(&__src, 0);
      *&__len = __len - 1;
      v31 = 257;
      if (*__src)
      {
        v30[0] = __src;
        v15 = 3;
      }

      else
      {
        v15 = 1;
      }

      LOBYTE(v31) = v15;
      v16 = llvm::sys::fs::access(v30, 2);
      v17 = __src;
      v18 = v16;
      if (!v16)
      {
        std::string::basic_string[abi:nn200100](a5, __src, __len);
        v12 &= ~1u;
        v17 = __src;
      }

      if (v17 != v34)
      {
        free(v17);
      }

      if (!v18)
      {
        break;
      }
    }

    a3 += 16;
    if (a3 == v11)
    {
      goto LABEL_26;
    }
  }

  *(a5 + 24) = v12;
LABEL_27:
  if (__dst[0] != v36)
  {
    free(__dst[0]);
  }

LABEL_30:
  v23 = *MEMORY[0x277D85DE8];
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<char const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

llvm::sys::RWMutexImpl *llvm::sys::RWMutexImpl::RWMutexImpl(llvm::sys::RWMutexImpl *this)
{
  *this = 0;
  v2 = malloc_type_malloc(0xC8uLL, 0x3C0F72FBuLL);
  if (!v2)
  {
    llvm::report_bad_alloc_error("Allocation failed", 1);
  }

  v3 = v2;
  bzero(v2, 0xC8uLL);
  pthread_rwlock_init(v3, 0);
  *this = v3;
  return this;
}

uint64_t printSymbolizedStackTrace(void *a1, size_t a2, uint64_t a3, unsigned int a4)
{
  v36 = *MEMORY[0x277D85DE8];
  __src = a1;
  __len = a2;
  if ((DisableSymbolicationFlag & 1) != 0 || getenv("LLVM_DISABLE_SYMBOLIZATION") || llvm::StringRef::find(&__src, "llvm-symbolizer", 0xFuLL, 0) != -1)
  {
    goto LABEL_4;
  }

  v7 = std::system_category();
  v35 |= 1u;
  v33[0] = 0;
  v33[1] = v7;
  v8 = getenv("LLVM_SYMBOLIZER_PATH");
  if (v8)
  {
    v9 = v8;
    v10 = strlen(v8);
    v11 = v9;
    v12 = 0;
    v13 = 0;
LABEL_7:
    llvm::sys::findProgramByName(v11, v10, v12, v13, &__p);
    llvm::ErrorOr<std::string>::moveAssign<std::string>(v33, &__p);
    if ((v28 & 1) == 0 && SHIBYTE(v27) < 0)
    {
      operator delete(__p);
    }

    goto LABEL_19;
  }

  v14 = __len;
  if (__len)
  {
    v15 = __src;
    v17 = (v14 >= v16 ? v16 : v14);
    if (v16 == -1)
    {
      v17 = 0;
      v18 = 0;
    }

    else
    {
      v18 = v15;
    }

    __dst[0] = v18;
    __dst[1] = v17;
    if (v17)
    {
      v11 = "llvm-symbolizer";
      v12 = __dst;
      v10 = 15;
      v13 = 1;
      goto LABEL_7;
    }
  }

LABEL_19:
  if ((v35 & 1) == 0)
  {
    goto LABEL_24;
  }

  llvm::sys::findProgramByName("llvm-symbolizer", 0xFuLL, 0, 0, &__p);
  llvm::ErrorOr<std::string>::moveAssign<std::string>(v33, &__p);
  if ((v28 & 1) == 0 && SHIBYTE(v27) < 0)
  {
    operator delete(__p);
  }

  if ((v35 & 1) == 0)
  {
LABEL_24:
    v29 = 261;
    __p = __src;
    v26 = __len;
    if (llvm::sys::fs::access(&__p, 0))
    {
      llvm::sys::fs::getMainExecutable(__dst);
    }

    else
    {
      v19 = __len;
      if (__len >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      if (__len >= 0x17)
      {
        operator new();
      }

      v22 = __len;
      if (__len)
      {
        memmove(__dst, __src, __len);
      }

      *(__dst + v19) = 0;
    }

    __p = 0;
    v26 = 0;
    v27 = &v29;
    v28 = 0x400000000;
    v30 = v32;
    v31 = 0;
    v32[0] = 0;
    v32[1] = 1;
    memset(v20, 0, sizeof(v20));
    if (a4)
    {
      if ((a4 & 0x80000000) == 0)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<char const*>>(v20, a4);
      }

      std::vector<char const*>::__throw_length_error[abi:nn200100]();
    }

    llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(&__p);
    if (v22 < 0)
    {
      operator delete(__dst[0]);
    }

    if ((v35 & 1) == 0 && v34 < 0)
    {
      operator delete(v33[0]);
    }
  }

LABEL_4:
  v5 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t printMarkupStackTrace(const void *a1, size_t a2)
{
  v4 = getenv("LLVM_ENABLE_SYMBOLIZER_MARKUP");
  if (v4 && *v4)
  {
    v7 = 261;
    v6[0] = a1;
    v6[1] = a2;
    if (llvm::sys::fs::access(v6, 0))
    {
      llvm::sys::fs::getMainExecutable(&__dst);
    }

    else
    {
      if (a2 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      if (a2 >= 0x17)
      {
        operator new();
      }

      v9 = a2;
      if (a2)
      {
        memmove(&__dst, a1, a2);
      }

      *(&__dst + a2) = 0;
    }

    if (v9 < 0)
    {
      operator delete(__dst);
    }
  }

  return 0;
}

uint64_t llvm::sys::unregisterHandlers(llvm::sys *this)
{
  v1 = atomic_load(_MergedGlobals_16);
  if (v1)
  {
    v2 = &unk_27FC1DCC0;
    do
    {
      result = sigaction(v2[1].__sigaction_u.__sa_handler, v2, 0);
      atomic_fetch_add(_MergedGlobals_16, 0xFFFFFFFF);
      v2 = (v2 + 24);
      --v1;
    }

    while (v1);
  }

  return result;
}

void llvm::sys::CleanupOnSignal(llvm::sys *this)
{
  v1 = this;
  if ((this - 29) > 1)
  {
    RemoveFilesToRemove();
    for (i = 0; i != 4; ++i)
    {
      if (IntSigs[i] == v1)
      {
        break;
      }
    }

    if (v1 != 13 && i == 4)
    {
      v3 = &unk_27FC1BDB0;
      v4 = 192;
      do
      {
        v5 = 2;
        atomic_compare_exchange_strong(v3, &v5, 3u);
        if (v5 == 2)
        {
          (*(v3 - 2))(*(v3 - 1));
          *(v3 - 2) = 0;
          *(v3 - 1) = 0;
          atomic_store(0, v3);
        }

        v3 += 6;
        v4 -= 24;
      }

      while (v4);
    }
  }

  else
  {

    __error();
  }
}

void RemoveFilesToRemove(void)
{
  if (v0)
  {
    v1 = v0;
    do
    {
      v2 = atomic_exchange(v1, 0);
      if (v2)
      {
        if (!stat(v2, &v3) && (v3.st_mode & 0xF000) == 0x8000)
        {
          unlink(v2);
        }

        atomic_exchange(v1, v2);
      }

      v1 = atomic_load((v1 + 8));
    }

    while (v1);
  }
}

void RegisterHandlers(void)
{
  if (!atomic_load_explicit(&qword_27FC1DCA8, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(&qword_27FC1DCA8, llvm::object_creator<llvm::sys::SmartMutex<true>>::call, llvm::object_deleter<llvm::sys::SmartMutex<true>>::call);
  }

  v0 = qword_27FC1DCA8;
  std::recursive_mutex::lock(qword_27FC1DCA8);
  if (!atomic_load(_MergedGlobals_16))
  {
    for (i = 0; i != 4; ++i)
    {
      v3 = IntSigs[i];
      v4 = atomic_load(_MergedGlobals_16);
      v17.__sigaction_u.__sa_handler = SignalHandler;
      *&v17.sa_mask = 0x5500000000;
      v5 = &_MergedGlobals_16[6 * v4];
      sigaction(v3, &v17, v5 + 6);
      v5[28] = v3;
      atomic_fetch_add(_MergedGlobals_16, 1u);
    }

    for (j = 0; j != 11; ++j)
    {
      v7 = KillSigs[j];
      v8 = atomic_load(_MergedGlobals_16);
      v17.__sigaction_u.__sa_handler = SignalHandler;
      *&v17.sa_mask = 0x5500000000;
      v9 = &_MergedGlobals_16[6 * v8];
      sigaction(v7, &v17, v9 + 6);
      v9[28] = v7;
      atomic_fetch_add(_MergedGlobals_16, 1u);
    }

    if (atomic_load(qword_27FC1DC70))
    {
      v11 = atomic_load(_MergedGlobals_16);
      v17.__sigaction_u.__sa_handler = SignalHandler;
      *&v17.sa_mask = 0x5500000000;
      v12 = &_MergedGlobals_16[6 * v11];
      sigaction(13, &v17, v12 + 6);
      v12[28] = 13;
      atomic_fetch_add(_MergedGlobals_16, 1u);
    }

    for (k = 0; k != 2; ++k)
    {
      v14 = InfoSigs[k];
      v15 = atomic_load(_MergedGlobals_16);
      v17.__sigaction_u.__sa_handler = InfoSignalHandler;
      *&v17.sa_mask = 0x100000000;
      v16 = &_MergedGlobals_16[6 * v15];
      sigaction(v14, &v17, v16 + 6);
      v16[28] = v14;
      atomic_fetch_add(_MergedGlobals_16, 1u);
    }
  }

  std::recursive_mutex::unlock(v0);
}

void llvm::sys::RemoveFileOnSignal(const void *a1, const void *a2)
{
  v3[0] = a1;
  v3[1] = a2;
  if (!atomic_load_explicit(&llvm::sys::RemoveFileOnSignal(llvm::StringRef,std::string *)::FilesToRemoveCleanup, memory_order_acquire))
  {
  }

  llvm::StringRef::str(v3, &__p);
  operator new();
}

void llvm::sys::DontRemoveFileOnSignal(const void *a1, const void *a2)
{
  v12[0] = a1;
  v12[1] = a2;
  llvm::StringRef::str(v12, __s1);
  {
  }

  {
    v4 = atomic_load(i);
    if (!v4)
    {
      break;
    }

    v5 = atomic_load(v4);
    if (!v5)
    {
      continue;
    }

    v6 = strlen(v5);
    v7 = v6;
    if ((v11 & 0x8000000000000000) != 0)
    {
      if (v6 != __s1[1])
      {
        continue;
      }

      if (v6 == -1)
      {
        std::string::__throw_out_of_range[abi:nn200100]();
      }

      v8 = __s1[0];
    }

    else
    {
      if (v6 != v11)
      {
        continue;
      }

      v8 = __s1;
    }

    if (!memcmp(v8, v5, v7))
    {
      v9 = atomic_exchange(v4, 0);
      if (v9)
      {
        free(v9);
      }
    }
  }

  std::recursive_mutex::unlock(v2);
  if (v11 < 0)
  {
    operator delete(__s1[0]);
  }
}

void llvm::sys::AddSignalHandler(llvm::sys *this, void (*a2)(void *), void *a3)
{
  v3 = 192;
  for (i = &unk_27FC1BDB0; ; i += 6)
  {
    v5 = 0;
    atomic_compare_exchange_strong(i, &v5, 1u);
    if (!v5)
    {
      break;
    }

    v3 -= 24;
    if (!v3)
    {
      llvm::report_fatal_error("too many signal callbacks already registered", 1);
    }
  }

  *(i - 2) = this;
  *(i - 1) = a2;
  atomic_store(2u, i);

  RegisterHandlers();
}

uint64_t SignalHandler(llvm::sys *a1, __siginfo *a2, void *a3)
{
  v4 = a1;
  llvm::sys::unregisterHandlers(a1);
  v12 = -1;
  sigprocmask(2, &v12, 0);
  RemoveFilesToRemove();
  if (v4 == 13)
  {
    v5 = atomic_exchange(qword_27FC1DC70, 0);
    if (v5)
    {
      return v5();
    }
  }

  for (i = 0; i != 4; ++i)
  {
    if (IntSigs[i] == v4)
    {
      v5 = atomic_exchange(&unk_27FC1DC68, 0);
      if (v5)
      {
        return v5();
      }

      return raise(v4);
    }
  }

  if (v4 == 13)
  {
    return raise(v4);
  }

  v7 = &unk_27FC1BDB0;
  v8 = 192;
  do
  {
    v9 = 2;
    atomic_compare_exchange_strong(v7, &v9, 3u);
    if (v9 == 2)
    {
      (*(v7 - 2))(*(v7 - 1));
      *(v7 - 2) = 0;
      *(v7 - 1) = 0;
      atomic_store(0, v7);
    }

    v7 += 6;
    v8 -= 24;
  }

  while (v8);
  si_pid = a2->si_pid;
  result = getpid();
  if (si_pid != result)
  {
    return raise(v4);
  }

  return result;
}

void llvm::ErrorOr<std::string>::moveAssign<std::string>(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 24);
    if ((v4 & 1) == 0 && *(a1 + 23) < 0)
    {
      operator delete(*a1);
      v4 = *(a1 + 24);
    }

    if (a2[3])
    {
      *(a1 + 24) = v4 | 1;
      if (a2[3])
      {
        v6 = *a2;
        v5 = a2[1];
      }

      else
      {
        v5 = std::system_category();
        v6 = 0;
      }

      *a1 = v6;
      *(a1 + 8) = v5;
    }

    else
    {
      *(a1 + 24) = v4 & 0xFE;
      v7 = *a2;
      *(a1 + 16) = a2[2];
      *a1 = v7;
      a2[1] = 0;
      a2[2] = 0;
      *a2 = 0;
    }
  }
}

uint64_t llvm::object_deleter<anonymous namespace::FilesToRemoveCleanup>::call(uint64_t result)
{
  if (result)
  {
    if (v1)
    {
      MEMORY[0x25F891040]();
    }

    JUMPOUT(0x25F891040);
  }

  return result;
}

void anonymous namespace::FileToRemoveList::~FileToRemoveList(atomic_ullong *this)
{
  v2 = atomic_exchange(this + 1, 0);
  if (v2)
  {
    MEMORY[0x25F891040]();
  }

  v3 = atomic_exchange(this, 0);
  if (v3)
  {
    free(v3);
  }
}

uint64_t llvm::ThreadPoolStrategy::compute_thread_count(llvm::ThreadPoolStrategy *this)
{
  if (*(this + 4) == 1)
  {
    LODWORD(result) = std::thread::hardware_concurrency();
    if (result <= 1)
    {
      LODWORD(result) = 1;
    }
  }

  else
  {
    LODWORD(result) = llvm::get_physical_cores(this);
  }

  if (result <= 1)
  {
    result = 1;
  }

  else
  {
    result = result;
  }

  v3 = *this;
  if (*this)
  {
    if (v3 >= result)
    {
      v4 = result;
    }

    else
    {
      v4 = *this;
    }

    if (*(this + 5))
    {
      return v4;
    }

    else
    {
      return v3;
    }
  }

  return result;
}

uint64_t llvm::get_physical_cores(llvm *this)
{
  v1 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
  {
    v1 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
    if (v3)
    {
      llvm::get_physical_cores(void)::NumCores = computeHostNumPhysicalCores();
      v1 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
    }
  }

  return *(v1 + 922);
}

pthread_t llvm::llvm_execute_on_thread_impl(void *(__cdecl *a1)(void *), void *a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = pthread_attr_init(&v14);
  if (v6)
  {
    ReportErrnumFatal("pthread_attr_init failed", v6);
  }

  if ((a3 & 0x100000000) != 0)
  {
    v7 = pthread_attr_setstacksize(&v14, a3);
    if (v7)
    {
      ReportErrnumFatal("pthread_attr_setstacksize failed", v7);
    }
  }

  v13 = 0;
  v8 = pthread_create(&v13, &v14, a1, a2);
  if (v8)
  {
    ReportErrnumFatal("pthread_create failed", v8);
  }

  v9 = v13;
  v10 = pthread_attr_destroy(&v14);
  if (v10)
  {
    ReportErrnumFatal("pthread_attr_destroy failed", v10);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

void ReportErrnumFatal(char *__s, uint64_t a2)
{
  memset(v5, 0, sizeof(v5));
  std::string::basic_string[abi:nn200100]<0>(&v3, __s);
  MakeErrMsg(v5, &v3.__r_.__value_.__l.__data_, a2);
  std::string::~string(&v3);
  v4 = 260;
  v3.__r_.__value_.__r.__words[0] = v5;
  llvm::report_fatal_error(&v3, 1);
}

uint64_t llvm::llvm_thread_join_impl(_opaque_pthread_t *this, _opaque_pthread_t *a2)
{
  result = pthread_join(this, 0);
  if (result)
  {
    ReportErrnumFatal("pthread_join failed", result);
  }

  return result;
}

uint64_t llvm::get_threadid(void)::$_0::operator()()
{
  v0 = MEMORY[0x25F891460]();
  v1 = *MEMORY[0x277D85F48];
  v2 = llvm::get_threadid(void)::Self();
  mach_port_deallocate(v3, *v2);
  return v0;
}

void llvm::set_thread_name(llvm *this, const llvm::Twine *a2)
{
  v8[8] = *MEMORY[0x277D85DE8];
  v6 = v8;
  v7 = xmmword_25D0A05D0;
  v2 = llvm::Twine::toNullTerminatedStringRef(this, &v6);
  v4 = v3 - 63;
  if (v3 < v3 - 63)
  {
    v4 = v3;
  }

  if (v3 <= 0x3F)
  {
    v4 = 0;
  }

  pthread_setname_np(&v2[v4]);
  if (v6 != v8)
  {
    free(v6);
  }

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t computeHostNumPhysicalCores(void)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 0;
  v2 = 4;
  sysctlbyname("hw.physicalcpu", &v3, &v2, 0, 0);
  result = v3;
  if (!v3)
  {
    *v4 = 0x1900000006;
    sysctl(v4, 2u, &v3, &v2, 0, 0);
    result = v3;
    if (!v3)
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

void MakeErrMsg(uint64_t a1, const void **a2, uint64_t a3)
{
  v19[2] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3 = a3;
    if (a3 == -1)
    {
      v3 = *__error();
    }

    if (*(a2 + 23) >= 0)
    {
      v6 = *(a2 + 23);
    }

    else
    {
      v6 = a2[1];
    }

    v7 = &v18;
    std::string::basic_string[abi:nn200100](&v18, v6 + 2);
    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v7 = v18.__r_.__value_.__r.__words[0];
    }

    if (v6)
    {
      if (*(a2 + 23) >= 0)
      {
        v8 = a2;
      }

      else
      {
        v8 = *a2;
      }

      memmove(v7, v8, v6);
    }

    strcpy(v7 + v6, ": ");
    llvm::sys::StrError(v3, __p);
    if ((v17 & 0x80u) == 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    if ((v17 & 0x80u) == 0)
    {
      v10 = v17;
    }

    else
    {
      v10 = __p[1];
    }

    v11 = std::string::append(&v18, v9, v10);
    v12 = v11->__r_.__value_.__r.__words[0];
    v19[0] = v11->__r_.__value_.__l.__size_;
    *(v19 + 7) = *(&v11->__r_.__value_.__r.__words[1] + 7);
    v13 = HIBYTE(v11->__r_.__value_.__r.__words[2]);
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v14 = v19[0];
    *a1 = v12;
    *(a1 + 8) = v14;
    *(a1 + 15) = *(v19 + 7);
    *(a1 + 23) = v13;
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void mlir::openOutputFile(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v2.__val_ = 0;
  v2.__cat_ = std::system_category();
  operator new();
}

void mlir::detail::InterfaceMap::insert(uint64_t a1, unint64_t a2, void *a3)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = *a1;
    v5 = *(a1 + 8);
    do
    {
      v6 = v5 >> 1;
      v7 = &v4[2 * (v5 >> 1)];
      v9 = *v7;
      v8 = v7 + 2;
      v5 += ~(v5 >> 1);
      if (v9 < a2)
      {
        v4 = v8;
      }

      else
      {
        v5 = v6;
      }
    }

    while (v5);
  }

  else
  {
    v3 = 0;
    v4 = *a1;
  }

  if (v4 != (*a1 + 16 * v3) && *v4 == a2)
  {

    free(a3);
  }

  else
  {
    v10[0] = a2;
    v10[1] = a3;
    llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::insert_one_impl<std::pair<mlir::TypeID,void *>>(a1, v4, v10);
  }
}

uint64_t *llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::insert_one_impl<std::pair<mlir::TypeID,void *>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  if (*a1 + 16 * v6 == a2)
  {
    llvm::SmallVectorTemplateBase<std::pair<mlir::TypeID,void *>,true>::push_back(a1, *a3, a3[1]);
    return (*a1 + 16 * *(a1 + 8) - 16);
  }

  else
  {
    v7 = a2 - v5;
    if (v6 >= *(a1 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6 + 1, 16);
      v5 = *a1;
      v6 = *(a1 + 8);
    }

    result = (v5 + v7);
    *(v5 + 16 * v6) = *(v5 + 16 * v6 - 16);
    v9 = *(a1 + 8);
    v10 = (*a1 + 16 * v9 - 16);
    if (v10 != result)
    {
      v11 = *a1 + 16 * v9 - 16;
      do
      {
        v12 = *(v11 - 16);
        v11 -= 16;
        v13 = *(v10 - 1);
        *v10 = v12;
        v10[1] = v13;
        v10 = v11;
      }

      while (v11 != result);
    }

    *(a1 + 8) = v9 + 1;
    *result = *a3;
    result[1] = a3[1];
  }

  return result;
}

void llvm::SmallVectorTemplateBase<std::pair<mlir::TypeID,void *>,true>::push_back(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  if (v6 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6 + 1, 16);
    LODWORD(v6) = *(a1 + 8);
  }

  v7 = (*a1 + 16 * v6);
  *v7 = a2;
  v7[1] = a3;
  ++*(a1 + 8);
}

void mlir::StorageUniquer::~StorageUniquer(mlir::StorageUniquer *this)
{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    MEMORY[0x25F891030](*(v1 + 232), 8);
    v2 = *(v1 + 224);
    v3 = *(v1 + 208);
    if (v2)
    {
      v4 = (v3 + 8);
      v5 = 16 * v2;
      do
      {
        if ((*(v4 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
        }

        v4 += 2;
        v5 -= 16;
      }

      while (v5);
      v3 = *(v1 + 208);
    }

    MEMORY[0x25F891030](v3, 8);
    llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(v1 + 112);
    std::recursive_mutex::~recursive_mutex((v1 + 40));
    v7 = (v1 + 16);
    std::vector<std::unique_ptr<mlir::StorageUniquer::StorageAllocator>>::__destroy_vector::operator()[abi:nn200100](&v7);
    v6 = *(v1 + 8);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }

    MEMORY[0x25F891040](v1, 0x10B0C40BFF4B8D3);
  }
}

uint64_t mlir::detail::StorageUniquerImpl::getOrCreate(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v48[1] = a7;
  v49 = a2;
  v48[0] = a6;
  v12 = *(a1 + 256);
  v47[0] = v48;
  v47[1] = a1;
  v14 = Shard;
  v52 = a3;
  v53 = a4;
  v54 = a5;
  if ((v12 & 1) == 0)
  {
  }

  {
    do
    {
      *(v43 + v44) = v45;
    }

    while (v44 != 128);
  }

  v17 = *v11;
  *&v50 = 0;
  v19 = v50;
  if (!v18)
  {
    v51[0] = v50;
    v22 = *v16;
    v23 = *v16 >> 1;
    v24 = *v16 & 1;
    if (v24)
    {
      v25 = 4;
    }

    else
    {
      v25 = v16[4];
    }

    if (4 * v23 + 4 >= 3 * v25)
    {
      v25 *= 2;
    }

    else if (v25 + ~v23 - v16[1] > v25 >> 3)
    {
      goto LABEL_11;
    }

    v22 = *v16;
    v19 = v51[0];
    v24 = *v16 & 1;
LABEL_11:
    *v16 = (v22 & 0xFFFFFFFE) + v24 + 2;
    if (*v19 != -4096)
    {
      --v16[1];
    }

    *v19 = v17;
    *(v19 + 8) = 0u;
    *(v19 + 24) = 0u;
    operator new();
  }

  v20 = *(v50 + 8);
  v26 = *v20;
  if (!*v20)
  {
    std::recursive_mutex::lock((*v11 + 40));
    if (*(*v11 + 8) < *(*v11 + 12))
    {
      v27 = **v11;
    }
  }

  LODWORD(v50) = a3;
  *(&v50 + 1) = 0;
  v28 = v51[0];
  v21 = *(v51[0] + 8);
  if (!v21)
  {
    pthread_rwlock_rdlock(*(v14 + 24));
    v29 = *v14;
    v30 = *(v14 + 16);
    if (v30)
    {
      v31 = v52;
      v32 = v30 - 1;
      v33 = 1;
      v35 = v53;
      v34 = v54;
      while (1)
      {
        v36 = v31 & v32;
        v37 = v29 + 16 * (v31 & v32);
        v38 = *(v37 + 8);
        if ((v38 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          if (v35(v34))
          {
            v29 = *v14;
            v39 = *(v14 + 16);
            goto LABEL_29;
          }

          v38 = *(v37 + 8);
        }

        if (v38 == -4096)
        {
          v29 = *v14;
          v39 = *(v14 + 16);
          v40 = v39;
          goto LABEL_27;
        }

        v31 = v36 + v33++;
      }
    }

    v39 = 0;
    v40 = 0;
LABEL_27:
    v37 = v29 + 16 * v40;
LABEL_29:
    if (v37 == v29 + 16 * v39)
    {
      pthread_rwlock_unlock(*(v14 + 24));
      pthread_rwlock_wrlock(*(v14 + 24));
    }

    else
    {
      v21 = *(v37 + 8);
    }

    *(v28 + 8) = v21;
    pthread_rwlock_unlock(*(v14 + 24));
  }

  return v21;
}

void mlir::StorageUniquer::registerParametricStorageTypeImpl(uint64_t *a1, uint64_t a2)
{
  v3 = a2;
  v2 = *a1;
  operator new();
}

uint64_t *std::unique_ptr<anonymous namespace::ParametricStorageUniquer>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(v2 + 24))
    {
      v3 = 0;
      do
      {
        v4 = atomic_load((*(v2 + 16) + 8 * v3));
        if (v4)
        {
          if (*(v2 + 32) && *(v4 + 8))
          {
            v5 = *(v4 + 16);
            if (v5)
            {
              v6 = 16 * v5;
              v7 = *v4;
              while ((*(v7 + 8) | 0x1000) == 0xFFFFFFFFFFFFF000)
              {
                v7 += 16;
                v6 -= 16;
                if (!v6)
                {
                  goto LABEL_19;
                }
              }
            }

            else
            {
              v7 = *v4;
            }

            v8 = *v4 + 16 * v5;
            if (v7 != v8)
            {
              v9 = *(v7 + 8);
LABEL_15:
              (*(v2 + 32))(*(v2 + 40), v9);
              while (1)
              {
                v7 += 16;
                if (v7 == v8)
                {
                  break;
                }

                v9 = *(v7 + 8);
                if ((v9 | 0x1000) != 0xFFFFFFFFFFFFF000)
                {
                  if (v7 != v8)
                  {
                    goto LABEL_15;
                  }

                  break;
                }
              }
            }
          }

LABEL_19:
          v10 = *(v4 + 24);
          pthread_rwlock_destroy(v10);
          free(v10);
          MEMORY[0x25F891030](*v4, 8);
          MEMORY[0x25F891040](v4, 0x10A0C40C89594A7);
        }

        ++v3;
      }

      while (v3 != *(v2 + 24));
    }

    v11 = *(v2 + 16);
    *(v2 + 16) = 0;
    if (v11)
    {
      MEMORY[0x25F891010](v11, 0x20C8093837F09);
    }

    v12 = *(v2 + 8);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v12);
    }

    MEMORY[0x25F891040](v2, 0x10A0C40E20AF11ELL);
  }

  return a1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::try_emplace<mlir::StorageUniquer::BaseStorage *>@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v12 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::LookupBucketFor<mlir::TypeID>(a1, a2, &v12);
  v9 = v12;
  if (result)
  {
    v10 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::InsertIntoBucketImpl<mlir::TypeID>(a1, a2, v12);
    v9 = result;
    *result = *a2;
    *(result + 8) = *a3;
    v10 = 1;
  }

  v11 = *a1 + 16 * *(a1 + 16);
  *a4 = v9;
  *(a4 + 8) = v11;
  *(a4 + 16) = v10;
  return result;
}

uint64_t mlir::detail::StorageUniquerImpl::mutate(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(uint64_t, uint64_t **), uint64_t a5)
{
  v17 = a2;
  if (*(a1 + 256))
  {
    v9 = 0x9DDFEA08EB382D69 * ((8 * a3 - 0xAE502812AA7333) ^ HIDWORD(a3));
    v10 = 0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v9 >> 47) ^ v9);
    pthread_rwlock_wrlock(*(Shard + 24));
    ThreadSafeAllocator = mlir::detail::StorageUniquerImpl::getThreadSafeAllocator(a1);
    v13 = a4(a5, ThreadSafeAllocator);
    pthread_rwlock_unlock(*(Shard + 24));
    return v13;
  }

  else
  {
    v15 = mlir::detail::StorageUniquerImpl::getThreadSafeAllocator(a1);

    return a4(a5, v15);
  }
}

void std::__shared_ptr_emplace<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState,std::allocator<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286E79EA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F891040);
}

void std::__shared_ptr_emplace<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState,std::allocator<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState>>::__on_zero_shared(uint64_t a1)
{
  std::recursive_mutex::~recursive_mutex((a1 + 64));
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = -24 * v3;
    v5 = &v2[24 * v3 - 24];
    do
    {
      v5 = mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Owner::~Owner(v5) - 3;
      v4 += 24;
    }

    while (v4);
    v2 = *(a1 + 24);
  }

  if (v2 != (a1 + 40))
  {

    free(v2);
  }
}

uint64_t *mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Owner::~Owner(uint64_t *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = a1[1];
      if (v4)
      {
        *v4 = 0;
        atomic_store(0, (v4 + 8));
      }

      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    v5 = a1[2];
    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  v6 = *a1;
  *a1 = 0;
  if (v6)
  {
    MEMORY[0x25F891040](v6, 0x20C4093837F09);
  }

  return a1;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,std::unique_ptr<anonymous namespace::ParametricStorageUniquer>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<anonymous namespace::ParametricStorageUniquer>>>,mlir::TypeID,std::unique_ptr<anonymous namespace::ParametricStorageUniquer>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<anonymous namespace::ParametricStorageUniquer>>>::operator[](uint64_t *a1, void *a2)
{
  v7 = 0;
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    *v5 = *a2;
    v5[1] = 0;
  }

  return v5 + 1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,std::unique_ptr<anonymous namespace::ParametricStorageUniquer>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<anonymous namespace::ParametricStorageUniquer>>>,mlir::TypeID,std::unique_ptr<anonymous namespace::ParametricStorageUniquer>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<anonymous namespace::ParametricStorageUniquer>>>::LookupBucketFor<mlir::TypeID>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 16 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -8192;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 16 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }
    }
  }

  else
  {
    v7 = 0;
    result = 0;
  }

LABEL_5:
  *a3 = v7;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,std::unique_ptr<anonymous namespace::ParametricStorageUniquer>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<anonymous namespace::ParametricStorageUniquer>>>,mlir::TypeID,std::unique_ptr<anonymous namespace::ParametricStorageUniquer>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<anonymous namespace::ParametricStorageUniquer>>>::InsertIntoBucketImpl<mlir::TypeID>(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - *(a1 + 12) > v6 >> 3)
  {
    goto LABEL_3;
  }

  v5 = *(a1 + 8);
  a3 = v8;
LABEL_3:
  *(a1 + 8) = v5 + 1;
  if (*a3 != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

char *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,std::unique_ptr<anonymous namespace::ParametricStorageUniquer>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<anonymous namespace::ParametricStorageUniquer>>>,mlir::TypeID,std::unique_ptr<anonymous namespace::ParametricStorageUniquer>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<anonymous namespace::ParametricStorageUniquer>>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = llvm::allocate_buffer((16 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0xFFFFFFFFFFFFFFFLL;
      v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
      v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = result + 16;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v17.i8[0])
        {
          *(v16 - 2) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 4;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v18 = 16 * v3;
      v19 = (v4 + 8);
      do
      {
        v20 = *(v19 - 1);
        if ((v20 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v31 = 0;
          v21 = v31;
          *v31 = v20;
          v22 = *v19;
          *v19 = 0;
          v21[1] = v22;
          ++*(a1 + 8);
        }

        v19 += 2;
        v18 -= 16;
      }

      while (v18);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v23 = *(a1 + 16);
  if (v23)
  {
    v24 = 0;
    v25 = v23 + 0xFFFFFFFFFFFFFFFLL;
    v26 = v25 & 0xFFFFFFFFFFFFFFFLL;
    v27 = (v25 & 0xFFFFFFFFFFFFFFFLL) - (v25 & 1) + 2;
    v28 = vdupq_n_s64(v26);
    v29 = result + 16;
    do
    {
      v30 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(vdupq_n_s64(v24), xmmword_25D0A0500)));
      if (v30.i8[0])
      {
        *(v29 - 2) = -4096;
      }

      if (v30.i8[4])
      {
        *v29 = -4096;
      }

      v24 += 2;
      v29 += 4;
    }

    while (v27 != v24);
  }

  return result;
}

unint64_t anonymous namespace::ParametricStorageUniquer::getShard(_anonymous_namespace_::ParametricStorageUniquer *this, unsigned int a2)
{
  explicit = atomic_load_explicit((*(this + 2) + 8 * ((*(this + 6) - 1) & a2)), memory_order_acquire);
  if (!explicit)
  {
    operator new();
  }

  return explicit;
}

uint64_t anonymous namespace::ParametricStorageUniquer::getOrCreateUnsafe(uint64_t a1, _DWORD *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  LODWORD(v8) = *a2;
  *(&v8 + 1) = 0;
  v6 = v9;
  if ((v10 & 1) == 0)
  {
    return *(v9 + 8);
  }

  result = a3(a4);
  *(v6 + 8) = result;
  return result;
}

uint64_t llvm::detail::DenseSetImpl<anonymous namespace::ParametricStorageUniquer::HashedStorage,llvm::DenseMap<anonymous namespace::ParametricStorageUniquer::HashedStorage,llvm::detail::DenseSetEmpty,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo,llvm::detail::DenseSetPair<anonymous namespace::ParametricStorageUniquer::HashedStorage>>,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>::insert_as<anonymous namespace::ParametricStorageUniquer::LookupKey>(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v16 = *a3;
  v14 = 0;
  v8 = v14;
  if (result)
  {
    v9 = 0;
    goto LABEL_8;
  }

  v15 = v14;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  if (4 * v10 + 4 >= 3 * v11)
  {
    v11 *= 2;
    goto LABEL_10;
  }

  if (v11 + ~v10 - *(a2 + 12) <= v11 >> 3)
  {
LABEL_10:
    v10 = *(a2 + 8);
    v8 = v15;
  }

  *(a2 + 8) = v10 + 1;
  if (*(v8 + 8) != -4096)
  {
    --*(a2 + 12);
  }

  *v8 = v16;
  v9 = 1;
LABEL_8:
  v12 = *a2 + 16 * *(a2 + 16);
  *a1 = v8;
  *(a1 + 8) = v12;
  *(a1 + 16) = v9;
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::CacheType::~CacheType(uint64_t a1)
{
  v2 = *a1;
  if (*a1 > 1u)
  {
    v6 = (a1 + 8);
    if (v2)
    {
      v9 = (a1 + 168);
    }

    else
    {
      v7 = *(a1 + 8);
      v8 = *(a1 + 16);
      v9 = (v7 + 40 * v8);
      if (!v8)
      {
        v12 = 0;
        v4 = *(a1 + 8);
        goto LABEL_18;
      }

      v6 = *(a1 + 8);
    }

    v10 = *a1 & 1;
    v4 = v6;
    while ((*v4 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      v4 += 5;
      if (v4 == v9)
      {
        v4 = v9;
        break;
      }
    }
  }

  else
  {
    if (v2)
    {
      v3 = a1 + 8;
      v4 = (a1 + 168);
      v5 = 4;
    }

    else
    {
      v3 = *(a1 + 8);
      v5 = *(a1 + 16);
      v4 = (v3 + 40 * v5);
    }

    v9 = (v3 + 40 * v5);
    v10 = *a1;
  }

  v6 = (a1 + 8);
  if (v10)
  {
    v11 = (a1 + 168);
    goto LABEL_19;
  }

  v7 = *(a1 + 8);
  v12 = *(a1 + 16);
LABEL_18:
  v11 = (v7 + 40 * v12);
LABEL_19:
  if (v4 != v11)
  {
    v34 = v6;
    do
    {
      v13 = v4[4];
      if (v13)
      {
        v14 = std::__shared_weak_count::lock(v13);
        if (v14)
        {
          v15 = v14;
          v16 = v4[3];
          if (v16)
          {
            v17 = *v4[1];
            std::recursive_mutex::lock((v16 + 40));
            v18 = *v16;
            v19 = *(v16 + 8);
            v20 = *v16 + 24 * v19;
            v21 = *v16;
            if (v19)
            {
              v22 = 24 * v19;
              v21 = *v16;
              while (*v21 != v17)
              {
                v21 += 24;
                v22 -= 24;
                if (!v22)
                {
                  v21 = *v16 + 24 * v19;
                  break;
                }
              }
            }

            if (v21 + 24 != v20)
            {
              do
              {
                v23 = *(v21 + 24);
                *(v21 + 24) = 0;
                v24 = *(v21 + 32);
                *(v21 + 32) = 0;
                *(v21 + 40) = 0;
                v25 = *(v21 + 16);
                *(v21 + 8) = v24;
                if (v25)
                {
                  std::__shared_weak_count::__release_weak(v25);
                }

                v26 = v21 + 48;
                v21 += 24;
              }

              while (v26 != v20);
              LODWORD(v19) = *(v16 + 8);
              v18 = *v16;
            }

            v27 = v19 - 1;
            *(v16 + 8) = v27;
            std::recursive_mutex::unlock((v16 + 40));
          }

          std::__shared_weak_count::__release_shared[abi:nn200100](v15);
        }
      }

      do
      {
        v4 += 5;
      }

      while (v4 != v9 && (*v4 | 0x1000) == 0xFFFFFFFFFFFFF000);
    }

    while (v4 != v11);
    v2 = *a1;
    v6 = v34;
  }

  if (v2)
  {
    v28 = 4;
    v29 = v6;
  }

  else
  {
    v28 = *(a1 + 16);
    if (!v28)
    {
      goto LABEL_52;
    }

    v29 = *v6;
  }

  v30 = 40 * v28;
  v31 = (v29 + 2);
  do
  {
    if ((*(v31 - 2) | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v32 = v31[2];
      if (v32)
      {
        std::__shared_weak_count::__release_weak(v32);
      }

      if (*v31)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*v31);
      }
    }

    v31 += 5;
    v30 -= 40;
  }

  while (v30);
  v2 = *a1;
LABEL_52:
  if ((v2 & 1) == 0)
  {
    MEMORY[0x25F891030](*v6, 8);
  }

  return a1;
}

void *std::unique_ptr<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::reset[abi:nn200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    MEMORY[0x25F891030](*v2, 8);

    JUMPOUT(0x25F891040);
  }

  return result;
}

void *mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::Owner::~Owner(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = a1[1];
      if (v4)
      {
        *v4 = 0;
        atomic_store(0, (v4 + 8));
      }

      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    v5 = a1[2];
    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  return a1;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::Observer>>,mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::Observer,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::Observer>>::LookupBucketFor<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *>(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + 8;
  if (*a1)
  {
    v4 = 4;
  }

  else
  {
    v4 = *(a1 + 16);
    if (!v4)
    {
      v7 = 0;
      result = 0;
      goto LABEL_7;
    }

    v3 = *(a1 + 8);
  }

  v5 = v4 - 1;
  v6 = (v4 - 1) & ((a2 >> 4) ^ (a2 >> 9));
  v7 = (v3 + 40 * v6);
  v8 = *v7;
  if (*v7 == a2)
  {
    result = 1;
  }

  else
  {
    v10 = 0;
    v11 = 1;
    result = 1;
    while (v8 != -4096)
    {
      if (v10)
      {
        v12 = 0;
      }

      else
      {
        v12 = v8 == -8192;
      }

      if (v12)
      {
        v10 = v7;
      }

      v13 = v6 + v11++;
      v6 = v13 & v5;
      v7 = (v3 + 40 * (v13 & v5));
      v8 = *v7;
      if (*v7 == a2)
      {
        goto LABEL_7;
      }
    }

    result = 0;
    if (v10)
    {
      v7 = v10;
    }
  }

LABEL_7:
  *a3 = v7;
  return result;
}

void llvm::DenseMapBase<llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::Observer>>,mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::Observer,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::Observer>>::grow(uint64_t a1, unsigned int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a2 >= 5)
  {
    v3 = (a2 - 1) | ((a2 - 1) >> 1);
    v4 = v3 | (v3 >> 2) | ((v3 | (v3 >> 2)) >> 4);
    v5 = ((v4 | (v4 >> 8)) >> 16) | v4 | (v4 >> 8);
    if ((v5 + 1) > 0x40)
    {
      a2 = v5 + 1;
    }

    else
    {
      a2 = 64;
    }
  }

  if ((*a1 & 1) == 0)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (a2 > 4)
    {
      v14 = a2;
      *(a1 + 8) = llvm::allocate_buffer((40 * a2), 8uLL);
      *(a1 + 16) = v14;
    }

    else
    {
      *a1 |= 1u;
    }

    v15 = *MEMORY[0x277D85DE8];

    JUMPOUT(0x25F891030);
  }

  v8 = 0;
  v9 = v16;
  do
  {
    v10 = a1 + v8;
    v11 = *(a1 + v8 + 8);
    if ((v11 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      *v9 = v11;
      *(v9 + 8) = *(v10 + 16);
      *(v10 + 16) = 0;
      *(v10 + 24) = 0;
      *(v9 + 24) = *(v10 + 32);
      *(v10 + 32) = 0;
      *(v10 + 40) = 0;
      v9 += 40;
    }

    v8 += 40;
  }

  while (v8 != 160);
  if (a2 > 4)
  {
    *a1 &= ~1u;
    v12 = a2;
    *(a1 + 8) = llvm::allocate_buffer((40 * a2), 8uLL);
    *(a1 + 16) = v12;
  }

  v13 = *MEMORY[0x277D85DE8];
}

void llvm::DenseMapBase<llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::Observer>>,mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::Observer,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::Observer>>::moveFromOldBuckets(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a1 & 1;
  if (v6)
  {
    v8 = (a1 + 8);
    v9 = (a1 + 168);
  }

  else
  {
    v7 = *(a1 + 16);
    if (!v7)
    {
      goto LABEL_18;
    }

    v8 = *(a1 + 8);
    v9 = &v8[40 * v7];
  }

  v10 = 0;
  v11 = v9 - v8 - 40;
  v12 = vdupq_n_s64(v11 / 0x28);
  do
  {
    v13 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(vdupq_n_s64(v10), xmmword_25D0A0500)));
    if (v13.i8[0])
    {
      *v8 = -4096;
    }

    if (v13.i8[4])
    {
      *(v8 + 5) = -4096;
    }

    v10 += 2;
    v8 += 80;
  }

  while (((v11 / 0x28 + 2) & 0xFFFFFFFFFFFFFFELL) != v10);
LABEL_18:
  while (a2 != a3)
  {
    v14 = *a2;
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v18 = 0;
      v15 = v18;
      *v18 = *a2;
      *(v15 + 1) = *(a2 + 8);
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(v15 + 3) = *(a2 + 24);
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *a1 += 2;
      v16 = *(a2 + 32);
      if (v16)
      {
        std::__shared_weak_count::__release_weak(v16);
      }

      v17 = *(a2 + 16);
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v17);
      }
    }

    a2 += 40;
  }
}

void std::__shared_ptr_emplace<std::pair<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo> *,std::atomic<BOOL>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286E79ED8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F891040);
}

void llvm::SmallVectorTemplateBase<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::Owner,false>::growAndEmplaceBack<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::Observer &>(uint64_t a1)
{
  v3 = 0;
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 24, &v3);
  v2 = *(a1 + 8);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<anonymous namespace::ParametricStorageUniquer::HashedStorage,llvm::detail::DenseSetEmpty,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo,llvm::detail::DenseSetPair<anonymous namespace::ParametricStorageUniquer::HashedStorage>>,anonymous namespace::ParametricStorageUniquer::HashedStorage,llvm::detail::DenseSetEmpty,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo,llvm::detail::DenseSetPair<anonymous namespace::ParametricStorageUniquer::HashedStorage>>::LookupBucketFor<anonymous namespace::ParametricStorageUniquer::LookupKey>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v7 = 0;
    v8 = *a3;
    v9 = a2 - 1;
    for (i = 1; ; ++i)
    {
      v11 = v8 & v9;
      v12 = a1 + 16 * (v8 & v9);
      v13 = *(v12 + 8);
      if ((v13 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        if ((*(a3 + 8))(*(a3 + 16)))
        {
          result = 1;
          goto LABEL_18;
        }

        v13 = *(v12 + 8);
      }

      if (v13 == -4096)
      {
        break;
      }

      if (v7)
      {
        v14 = 0;
      }

      else
      {
        v14 = v13 == -8192;
      }

      if (v14)
      {
        v7 = a1 + 16 * v11;
      }

      v8 = v11 + i;
    }

    result = 0;
    if (v7)
    {
      v12 = v7;
    }
  }

  else
  {
    v12 = 0;
    result = 0;
  }

LABEL_18:
  *a4 = v12;
  return result;
}

_OWORD *llvm::DenseMapBase<llvm::DenseMap<anonymous namespace::ParametricStorageUniquer::HashedStorage,llvm::detail::DenseSetEmpty,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo,llvm::detail::DenseSetPair<anonymous namespace::ParametricStorageUniquer::HashedStorage>>,anonymous namespace::ParametricStorageUniquer::HashedStorage,llvm::detail::DenseSetEmpty,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo,llvm::detail::DenseSetPair<anonymous namespace::ParametricStorageUniquer::HashedStorage>>::grow(uint64_t *a1, int a2)
{
  v3 = *(a1 + 4);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 4) = v8;
  result = llvm::allocate_buffer((16 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    a1[1] = 0;
    v10 = *(a1 + 4);
    if (v10)
    {
      v11 = 16 * v10;
      do
      {
        *result++ = xmmword_25D0A0770;
        v11 -= 16;
      }

      while (v11);
    }

    if (v3)
    {
      v12 = v4;
      do
      {
        v13 = *(v12 + 8);
        if ((v13 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v14 = *(a1 + 4) - 1;
          v15 = *v12 & v14;
          v16 = *a1 + 16 * v15;
          v17 = *(v16 + 8);
          if (v13 != v17)
          {
            v18 = 0;
            v19 = 1;
            while (v17 != -4096)
            {
              if (v18)
              {
                v20 = 0;
              }

              else
              {
                v20 = v17 == -8192;
              }

              if (v20)
              {
                v18 = v16;
              }

              v21 = v15 + v19++;
              v15 = v21 & v14;
              v16 = *a1 + 16 * (v21 & v14);
              v17 = *(v16 + 8);
              if (v13 == v17)
              {
                goto LABEL_12;
              }
            }

            if (v18)
            {
              v16 = v18;
            }
          }

LABEL_12:
          *v16 = *v12;
          ++*(a1 + 2);
        }

        v12 += 16;
      }

      while (v12 != v4 + 16 * v3);
    }

    JUMPOUT(0x25F891030);
  }

  a1[1] = 0;
  v22 = *(a1 + 4);
  if (v22)
  {
    v23 = 16 * v22;
    do
    {
      *result++ = xmmword_25D0A0770;
      v23 -= 16;
    }

    while (v23);
  }

  return result;
}

uint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(void)>::callback_fn<mlir::detail::StorageUniquerImpl::getOrCreate(mlir::TypeID,unsigned int,llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>,llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>)::{lambda(void)#1}>(uint64_t *a1)
{
  v1 = *a1;
  ThreadSafeAllocator = mlir::detail::StorageUniquerImpl::getThreadSafeAllocator(a1[1]);
  v4 = *v1;
  v3 = *(v1 + 8);

  return v4(v3, ThreadSafeAllocator);
}

uint64_t **mlir::detail::StorageUniquerImpl::getThreadSafeAllocator(uint64_t **this)
{
  if ((this[32] & 1) == 0)
  {
    return this + 14;
  }

  {
    v15 = mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::getStaticCache(void)::cache(&mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::getStaticCache(void)::cache);
    *v15 = 1;
    v15[1] = -4096;
    v15[6] = -4096;
    v15[11] = -4096;
    v15[16] = -4096;
    _tlv_atexit(mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::CacheType::~CacheType, v15);
  }

  v3 = mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::getStaticCache(void)::cache(&mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::getStaticCache(void)::cache);
  v4 = *this;
  v16 = 0;
  v5 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Observer>>,mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Observer,llvm::DenseMapInfo<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Observer>>::LookupBucketFor<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *>(v3, v4, &v16);
  v6 = v16;
  if (!v5)
  {
    v17 = v16;
    v9 = *v3;
    v10 = *v3 >> 1;
    v11 = *v3 & 1;
    if (v11)
    {
      v12 = 4;
    }

    else
    {
      v12 = v3[4];
    }

    if (4 * v10 + 4 >= 3 * v12)
    {
      v12 *= 2;
    }

    else if (v12 + ~v10 - v3[1] > v12 >> 3)
    {
      goto LABEL_12;
    }

    llvm::SmallDenseMap<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Observer>>::grow(v3, v12);
    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Observer>>,mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Observer,llvm::DenseMapInfo<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Observer>>::LookupBucketFor<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *>(v3, v4, &v17);
    v9 = *v3;
    v6 = v17;
    v11 = *v3 & 1;
LABEL_12:
    *v3 = (v9 & 0xFFFFFFFE) + v11 + 2;
    if (*v6 != -4096)
    {
      --v3[1];
    }

    *v6 = v4;
    *(v6 + 8) = 0u;
    *(v6 + 24) = 0u;
    operator new();
  }

  v7 = *(v16 + 8);
  v13 = *v7;
  if (!*v7)
  {
    std::recursive_mutex::lock((*this + 5));
    if (*(*this + 2) < *(*this + 3))
    {
      v14 = **this;
      mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Owner::Owner();
    }

    llvm::SmallVectorTemplateBase<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Owner,false>::growAndEmplaceBack<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Observer &>(*this);
  }

  result = *v13;
  if (!*v13)
  {
    operator new();
  }

  return result;
}

uint64_t *std::unique_ptr<mlir::StorageUniquer::StorageAllocator>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(v2);
    MEMORY[0x25F891040](v3, 0x1090C40A49D047FLL);
  }

  return a1;
}

uint64_t mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::CacheType::~CacheType(uint64_t a1)
{
  v2 = *a1;
  if (*a1 > 1u)
  {
    v6 = (a1 + 8);
    if (v2)
    {
      v9 = (a1 + 168);
    }

    else
    {
      v7 = *(a1 + 8);
      v8 = *(a1 + 16);
      v9 = (v7 + 40 * v8);
      if (!v8)
      {
        v12 = 0;
        v4 = *(a1 + 8);
        goto LABEL_18;
      }

      v6 = *(a1 + 8);
    }

    v10 = *a1 & 1;
    v4 = v6;
    while ((*v4 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      v4 += 5;
      if (v4 == v9)
      {
        v4 = v9;
        break;
      }
    }
  }

  else
  {
    if (v2)
    {
      v3 = a1 + 8;
      v4 = (a1 + 168);
      v5 = 4;
    }

    else
    {
      v3 = *(a1 + 8);
      v5 = *(a1 + 16);
      v4 = (v3 + 40 * v5);
    }

    v9 = (v3 + 40 * v5);
    v10 = *a1;
  }

  v6 = (a1 + 8);
  if (v10)
  {
    v11 = (a1 + 168);
    goto LABEL_19;
  }

  v7 = *(a1 + 8);
  v12 = *(a1 + 16);
LABEL_18:
  v11 = (v7 + 40 * v12);
LABEL_19:
  if (v4 != v11)
  {
    v36 = v6;
    do
    {
      v13 = v4[4];
      if (v13)
      {
        v14 = std::__shared_weak_count::lock(v13);
        if (v14)
        {
          v15 = v14;
          v16 = v4[3];
          if (v16)
          {
            v17 = *v4[1];
            std::recursive_mutex::lock((v16 + 40));
            v18 = *v16;
            v19 = *(v16 + 8);
            v20 = *v16 + 24 * v19;
            v21 = *v16;
            if (v19)
            {
              v22 = 24 * v19;
              v21 = *v16;
              while (*v21 != v17)
              {
                v21 += 3;
                v22 -= 24;
                if (!v22)
                {
                  v21 = (*v16 + 24 * v19);
                  break;
                }
              }
            }

            if (v21 + 3 != v20)
            {
              v23 = v21 + 4;
              do
              {
                v24 = *(v23 - 1);
                *(v23 - 1) = 0;
                v25 = *(v23 - 4);
                *(v23 - 4) = v24;
                if (v25)
                {
                  MEMORY[0x25F891040](v25, 0x20C4093837F09);
                }

                v26 = *v23;
                *v23 = 0;
                v23[1] = 0;
                v27 = *(v23 - 2);
                *(v23 - 3) = v26;
                if (v27)
                {
                  std::__shared_weak_count::__release_weak(v27);
                }

                v28 = v23 + 2;
                v23 += 3;
              }

              while (v28 != v20);
              LODWORD(v19) = *(v16 + 8);
              v18 = *v16;
            }

            v29 = v19 - 1;
            *(v16 + 8) = v29;
            mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Owner::~Owner(&v18[3 * v29]);
            std::recursive_mutex::unlock((v16 + 40));
          }

          std::__shared_weak_count::__release_shared[abi:nn200100](v15);
        }
      }

      do
      {
        v4 += 5;
      }

      while (v4 != v9 && (*v4 | 0x1000) == 0xFFFFFFFFFFFFF000);
    }

    while (v4 != v11);
    v2 = *a1;
    v6 = v36;
  }

  if (v2)
  {
    v31 = a1 + 8;
    v30 = 4;
  }

  else
  {
    v30 = *(a1 + 16);
    if (!v30)
    {
      goto LABEL_55;
    }

    v31 = *(a1 + 8);
  }

  v32 = (v31 + 16);
  v33 = 40 * v30;
  do
  {
    if ((*(v32 - 2) | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v34 = v32[2];
      if (v34)
      {
        std::__shared_weak_count::__release_weak(v34);
      }

      if (*v32)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*v32);
      }
    }

    v32 += 5;
    v33 -= 40;
  }

  while (v33);
  v2 = *a1;
LABEL_55:
  if ((v2 & 1) == 0)
  {
    MEMORY[0x25F891030](*v6, 8);
  }

  return a1;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Observer>>,mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Observer,llvm::DenseMapInfo<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Observer>>::LookupBucketFor<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *>(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + 8;
  if (*a1)
  {
    v4 = 4;
  }

  else
  {
    v4 = *(a1 + 16);
    if (!v4)
    {
      v7 = 0;
      result = 0;
      goto LABEL_7;
    }

    v3 = *(a1 + 8);
  }

  v5 = v4 - 1;
  v6 = (v4 - 1) & ((a2 >> 4) ^ (a2 >> 9));
  v7 = (v3 + 40 * v6);
  v8 = *v7;
  if (*v7 == a2)
  {
    result = 1;
  }

  else
  {
    v10 = 0;
    v11 = 1;
    result = 1;
    while (v8 != -4096)
    {
      if (v10)
      {
        v12 = 0;
      }

      else
      {
        v12 = v8 == -8192;
      }

      if (v12)
      {
        v10 = v7;
      }

      v13 = v6 + v11++;
      v6 = v13 & v5;
      v7 = (v3 + 40 * (v13 & v5));
      v8 = *v7;
      if (*v7 == a2)
      {
        goto LABEL_7;
      }
    }

    result = 0;
    if (v10)
    {
      v7 = v10;
    }
  }

LABEL_7:
  *a3 = v7;
  return result;
}

void llvm::SmallDenseMap<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Observer>>::grow(uint64_t a1, unsigned int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a2 >= 5)
  {
    v3 = (a2 - 1) | ((a2 - 1) >> 1);
    v4 = v3 | (v3 >> 2) | ((v3 | (v3 >> 2)) >> 4);
    v5 = ((v4 | (v4 >> 8)) >> 16) | v4 | (v4 >> 8);
    if ((v5 + 1) > 0x40)
    {
      a2 = v5 + 1;
    }

    else
    {
      a2 = 64;
    }
  }

  if ((*a1 & 1) == 0)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (a2 > 4)
    {
      v14 = a2;
      *(a1 + 8) = llvm::allocate_buffer((40 * a2), 8uLL);
      *(a1 + 16) = v14;
    }

    else
    {
      *a1 |= 1u;
    }

    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Observer>>,mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Observer,llvm::DenseMapInfo<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Observer>>::moveFromOldBuckets(a1, v6, v6 + 40 * v7);
    v15 = *MEMORY[0x277D85DE8];

    JUMPOUT(0x25F891030);
  }

  v8 = 0;
  v9 = v16;
  do
  {
    v10 = a1 + v8;
    v11 = *(a1 + v8 + 8);
    if ((v11 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      *v9 = v11;
      *(v9 + 8) = *(v10 + 16);
      *(v10 + 16) = 0;
      *(v10 + 24) = 0;
      *(v9 + 24) = *(v10 + 32);
      *(v10 + 32) = 0;
      *(v10 + 40) = 0;
      v9 += 40;
    }

    v8 += 40;
  }

  while (v8 != 160);
  if (a2 > 4)
  {
    *a1 &= ~1u;
    v12 = a2;
    *(a1 + 8) = llvm::allocate_buffer((40 * a2), 8uLL);
    *(a1 + 16) = v12;
  }

  llvm::DenseMapBase<llvm::SmallDenseMap<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Observer>>,mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Observer,llvm::DenseMapInfo<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Observer>>::moveFromOldBuckets(a1, v16, v9);
  v13 = *MEMORY[0x277D85DE8];
}

void llvm::DenseMapBase<llvm::SmallDenseMap<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Observer>>,mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Observer,llvm::DenseMapInfo<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Observer>>::moveFromOldBuckets(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a1 & 1;
  if (v6)
  {
    v8 = (a1 + 8);
    v9 = (a1 + 168);
  }

  else
  {
    v7 = *(a1 + 16);
    if (!v7)
    {
      goto LABEL_18;
    }

    v8 = *(a1 + 8);
    v9 = &v8[40 * v7];
  }

  v10 = 0;
  v11 = v9 - v8 - 40;
  v12 = vdupq_n_s64(v11 / 0x28);
  do
  {
    v13 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(vdupq_n_s64(v10), xmmword_25D0A0500)));
    if (v13.i8[0])
    {
      *v8 = -4096;
    }

    if (v13.i8[4])
    {
      *(v8 + 5) = -4096;
    }

    v10 += 2;
    v8 += 80;
  }

  while (((v11 / 0x28 + 2) & 0xFFFFFFFFFFFFFFELL) != v10);
LABEL_18:
  while (a2 != a3)
  {
    v14 = *a2;
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v18 = 0;
      llvm::DenseMapBase<llvm::SmallDenseMap<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Observer>>,mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Observer,llvm::DenseMapInfo<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Observer>>::LookupBucketFor<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *>(a1, v14, &v18);
      v15 = v18;
      *v18 = *a2;
      *(v15 + 1) = *(a2 + 8);
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(v15 + 3) = *(a2 + 24);
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *a1 += 2;
      v16 = *(a2 + 32);
      if (v16)
      {
        std::__shared_weak_count::__release_weak(v16);
      }

      v17 = *(a2 + 16);
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v17);
      }
    }

    a2 += 40;
  }
}

void std::__shared_ptr_emplace<std::pair<mlir::StorageUniquer::StorageAllocator **,std::atomic<BOOL>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286E79F10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F891040);
}

void llvm::SmallVectorTemplateBase<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Owner,false>::growAndEmplaceBack<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Observer &>(uint64_t a1)
{
  v3 = 0;
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 24, &v3);
  v2 = *(a1 + 8);
  mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Owner::Owner();
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[](uint64_t *a1, void *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::LookupBucketFor<mlir::TypeID>(a1, a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v5 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::InsertIntoBucketImpl<mlir::TypeID>(a1, a2, v7);
    *v5 = *a2;
    v5[1] = 0;
  }

  return v5 + 1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::LookupBucketFor<mlir::TypeID>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 16 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -8192;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 16 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }
    }
  }

  else
  {
    v7 = 0;
    result = 0;
  }

LABEL_5:
  *a3 = v7;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::InsertIntoBucketImpl<mlir::TypeID>(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - *(a1 + 12) > v6 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::LookupBucketFor<mlir::TypeID>(a1, a2, &v8);
  v5 = *(a1 + 8);
  a3 = v8;
LABEL_3:
  *(a1 + 8) = v5 + 1;
  if (*a3 != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

char *llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = llvm::allocate_buffer((16 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0xFFFFFFFFFFFFFFFLL;
      v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
      v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = result + 16;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v17.i8[0])
        {
          *(v16 - 2) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 4;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v18 = 16 * v3;
      v19 = v4;
      do
      {
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v28 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::LookupBucketFor<mlir::TypeID>(a1, v19, &v28);
          *v28 = *v19;
          v28[1] = v19[1];
          ++*(a1 + 8);
        }

        v19 += 2;
        v18 -= 16;
      }

      while (v18);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = 0;
    v22 = v20 + 0xFFFFFFFFFFFFFFFLL;
    v23 = v22 & 0xFFFFFFFFFFFFFFFLL;
    v24 = (v22 & 0xFFFFFFFFFFFFFFFLL) - (v22 & 1) + 2;
    v25 = vdupq_n_s64(v23);
    v26 = result + 16;
    do
    {
      v27 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(vdupq_n_s64(v21), xmmword_25D0A0500)));
      if (v27.i8[0])
      {
        *(v26 - 2) = -4096;
      }

      if (v27.i8[4])
      {
        *v26 = -4096;
      }

      v21 += 2;
      v26 += 4;
    }

    while (v24 != v21);
  }

  return result;
}

void std::vector<std::unique_ptr<mlir::StorageUniquer::StorageAllocator>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = std::unique_ptr<mlir::StorageUniquer::StorageAllocator>::~unique_ptr[abi:nn200100](v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__shared_ptr_emplace<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState,std::allocator<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286E79F48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F891040);
}

void std::__shared_ptr_emplace<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState,std::allocator<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState>>::__on_zero_shared(uint64_t a1)
{
  std::recursive_mutex::~recursive_mutex((a1 + 64));
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = -24 * v3;
    v5 = &v2[24 * v3 - 24];
    do
    {
      v4 += 24;
    }

    while (v4);
    v2 = *(a1 + 24);
  }

  if (v2 != (a1 + 40))
  {

    free(v2);
  }
}

unint64_t mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(llvm::hashing::detail::hash_state *a1, size_t a2)
{
  if ((atomic_load_explicit(&_MergedGlobals_17, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_17))
  {
    llvm::sys::RWMutexImpl::RWMutexImpl(&qword_27FC1DE80);
    xmmword_27FC1DE88 = 0u;
    qword_27FC1DE98 = 0;
    unk_27FC1DEA0 = &unk_27FC1DEB0;
    qword_27FC1DEA8 = 0x400000000;
    qword_27FC1DED0 = &xmmword_27FC1DED8 + 8;
    xmmword_27FC1DED8 = 0u;
    unk_27FC1DEE8 = 0u;
    *(&qword_27FC1DEF0 + 4) = 0u;
    __cxa_guard_release(&_MergedGlobals_17);
  }

  *&v24 = a1;
  *(&v24 + 1) = a2;
  pthread_rwlock_rdlock(qword_27FC1DE80);
  v6 = dword_27FC1DF00;
  if (dword_27FC1DF00)
  {
    v7 = qword_27FC1DEF0;
    v8 = dword_27FC1DF00 - 1;
    v9 = (v6 - 1) & llvm::hashing::detail::hash_combine_range_impl<char const>(a1, a1 + a2, v4, v5);
    v10 = v7 + 24 * v9;
    if (llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(a1, a2, *v10, *(v10 + 8)))
    {
LABEL_4:
      if (v10 != qword_27FC1DEF0 + 24 * dword_27FC1DF00)
      {
        v11 = *(v10 + 16);
        goto LABEL_17;
      }
    }

    else
    {
      v12 = 1;
      while (*v10 != -1)
      {
        v13 = v12 + 1;
        v9 = (v9 + v12) & v8;
        v10 = v7 + 24 * v9;
        isEqual = llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(a1, a2, *v10, *(v10 + 8));
        v12 = v13;
        if (isEqual)
        {
          goto LABEL_4;
        }
      }
    }
  }

  pthread_rwlock_unlock(qword_27FC1DE80);
  pthread_rwlock_wrlock(qword_27FC1DE80);
  v25 = 0;
  v17 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,mlir::TypeID,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::TypeID>>,llvm::StringRef,mlir::TypeID,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::TypeID>>::LookupBucketFor<llvm::StringRef>(&v24, &v25, v15, v16);
  v18 = v25;
  if (v17)
  {
    v11 = v25[2];
    goto LABEL_17;
  }

  v26 = v25;
  v19 = qword_27FC1DEF8;
  v20 = dword_27FC1DF00;
  if (4 * qword_27FC1DEF8 + 4 >= (3 * dword_27FC1DF00))
  {
    v20 = 2 * dword_27FC1DF00;
    goto LABEL_19;
  }

  if (dword_27FC1DF00 + ~qword_27FC1DEF8 - HIDWORD(qword_27FC1DEF8) <= dword_27FC1DF00 >> 3)
  {
LABEL_19:
    llvm::DenseMap<llvm::StringRef,mlir::TypeID,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::TypeID>>::grow(v20);
    llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,mlir::TypeID,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::TypeID>>,llvm::StringRef,mlir::TypeID,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::TypeID>>::LookupBucketFor<llvm::StringRef>(&v24, &v26, v22, v23);
    v19 = qword_27FC1DEF8;
    v18 = v26;
  }

  LODWORD(qword_27FC1DEF8) = v19 + 1;
  if (*v18 != -1)
  {
    --HIDWORD(qword_27FC1DEF8);
  }

  *v18 = v24;
  v18[2] = &mlir::detail::TypeIDResolver<void,void>::id;
  v11 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(&xmmword_27FC1DE88 + 1, 8, 3);
  v18[2] = v11;
LABEL_17:
  pthread_rwlock_unlock(qword_27FC1DE80);
  return v11;
}

void anonymous namespace::ImplicitTypeIDRegistry::~ImplicitTypeIDRegistry(_anonymous_namespace_::ImplicitTypeIDRegistry *this)
{
  MEMORY[0x25F891030](*(this + 14), 8);
  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Reset(this + 16);
  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(this + 16);
  v2 = *this;
  pthread_rwlock_destroy(*this);
  free(v2);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,mlir::TypeID,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::TypeID>>,llvm::StringRef,mlir::TypeID,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::TypeID>>::LookupBucketFor<llvm::StringRef>(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  v5 = dword_27FC1DF00;
  if (dword_27FC1DF00)
  {
    v7 = qword_27FC1DEF0;
    v8 = dword_27FC1DF00 - 1;
    v9 = (v5 - 1) & llvm::hashing::detail::hash_combine_range_impl<char const>(*a1, *a1 + *(a1 + 8), a3, a4);
    v10 = v7 + 24 * v9;
    if (llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*a1, *(a1 + 8), *v10, *(v10 + 8)))
    {
      result = 1;
    }

    else
    {
      v12 = 0;
      v13 = 1;
      while (*v10 != -1)
      {
        if (v12)
        {
          v14 = 0;
        }

        else
        {
          v14 = *v10 == -2;
        }

        if (v14)
        {
          v12 = v10;
        }

        v18 = v12;
        v15 = v13 + 1;
        v9 = (v9 + v13) & v8;
        v10 = v7 + 24 * v9;
        isEqual = llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*a1, *(a1 + 8), *v10, *(v10 + 8));
        v12 = v18;
        v17 = isEqual;
        result = 1;
        v13 = v15;
        if (v17)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v12)
      {
        v10 = v12;
      }
    }
  }

  else
  {
    v10 = 0;
    result = 0;
  }

LABEL_5:
  *a2 = v10;
  return result;
}

_OWORD *llvm::DenseMap<llvm::StringRef,mlir::TypeID,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::TypeID>>::grow(int a1)
{
  v1 = dword_27FC1DF00;
  v2 = qword_27FC1DEF0;
  v3 = (a1 - 1) | ((a1 - 1) >> 1);
  v4 = v3 | (v3 >> 2) | ((v3 | (v3 >> 2)) >> 4);
  v5 = ((v4 | (v4 >> 8)) >> 16) | v4 | (v4 >> 8);
  if ((v5 + 1) > 0x40)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = 64;
  }

  dword_27FC1DF00 = v6;
  result = llvm::allocate_buffer((24 * v6), 8uLL);
  qword_27FC1DEF0 = result;
  if (v2)
  {
    qword_27FC1DEF8 = 0;
    if (dword_27FC1DF00)
    {
      v10 = 24 * dword_27FC1DF00;
      do
      {
        *result = xmmword_25D0A05E0;
        result = (result + 24);
        v10 -= 24;
      }

      while (v10);
    }

    if (v1)
    {
      v11 = 24 * v1;
      v12 = v2;
      do
      {
        if (*v12 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v15 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,mlir::TypeID,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::TypeID>>,llvm::StringRef,mlir::TypeID,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::TypeID>>::LookupBucketFor<llvm::StringRef>(v12, &v15, v8, v9);
          v13 = v15;
          *v15 = *v12;
          *(v13 + 2) = *(v12 + 16);
          LODWORD(qword_27FC1DEF8) = qword_27FC1DEF8 + 1;
        }

        v12 += 24;
        v11 -= 24;
      }

      while (v11);
    }

    JUMPOUT(0x25F891030);
  }

  qword_27FC1DEF8 = 0;
  if (dword_27FC1DF00)
  {
    v14 = 24 * dword_27FC1DF00;
    do
    {
      *result = xmmword_25D0A05E0;
      result = (result + 24);
      v14 -= 24;
    }

    while (v14);
  }

  return result;
}

void mlir::ODIE::Compiler::CoreML::CoreMLDialect::~CoreMLDialect(mlir::ODIE::Compiler::CoreML::CoreMLDialect *this)
{
  *this = &unk_286E79F80;
  std::__function::__value_func<BOOL ()(mlir::Operation *)>::~__value_func[abi:nn200100](this + 96);

  mlir::Dialect::~Dialect(this);
}

{
  *this = &unk_286E79F80;
  std::__function::__value_func<BOOL ()(mlir::Operation *)>::~__value_func[abi:nn200100](this + 96);
  mlir::Dialect::~Dialect(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::CoreML::flattenSymbolRef(void *a1)
{
  if (!a1)
  {
    llvm::report_fatal_error("must have a valid SymbolRefAttr to flatten", 1);
  }

  v21[0] = 0;
  v21[1] = 0;
  v22 = 0;
  v14 = 0;
  v18 = 0;
  v19 = 1;
  v16 = 0;
  v17 = 0;
  v15 = 0;
  v13 = &unk_286E79D28;
  v20 = v21;
  llvm::raw_ostream::SetUnbuffered(&v13);
  llvm::raw_ostream::operator<<(&v13, *(a1[1] + 16), *(a1[1] + 24));
  if (a1[3])
  {
    if (v16 == v17)
    {
      llvm::raw_ostream::write(&v13, "_", 1uLL);
    }

    else
    {
      *v17++ = 95;
    }

    v3 = a1[3];
    if (v3)
    {
      v4 = a1[2];
      llvm::raw_ostream::operator<<(&v13, *(*(*v4 + 8) + 16), *(*(*v4 + 8) + 24));
      if (v3 != 1)
      {
        v5 = v4 + 1;
        v6 = 8 * v3 - 8;
        do
        {
          if (v16 == v17)
          {
            llvm::raw_ostream::write(&v13, "_", 1uLL);
          }

          else
          {
            *v17++ = 95;
          }

          v7 = *v5++;
          llvm::raw_ostream::operator<<(&v13, *(*(v7 + 8) + 16), *(*(v7 + 8) + 24));
          v6 -= 8;
        }

        while (v6);
      }
    }
  }

  v8 = *(**a1 + 32);
  v12 = 260;
  v11 = v21;
  v9 = mlir::StringAttr::get(v8, &v11, v2);
  llvm::raw_ostream::~raw_ostream(&v13);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(v21[0]);
  }

  return v9;
}

void mlir::Dialect::addTypes<mlir::ODIE::Compiler::CoreML::OpaqueType,mlir::ODIE::Compiler::CoreML::TypeType,mlir::ODIE::Compiler::CoreML::SymbolType,mlir::ODIE::Compiler::CoreML::ArrayType,mlir::ODIE::Compiler::CoreML::ParamRefType,mlir::ODIE::Compiler::CoreML::SymbolRefType,mlir::ODIE::Compiler::CoreML::HandleType,mlir::ODIE::Compiler::CoreML::TokenType,mlir::ODIE::Compiler::CoreML::AsyncValueType,mlir::ODIE::Compiler::CoreML::TypedPointerType>(uint64_t a1)
{
  mlir::Dialect::addType<mlir::ODIE::Compiler::CoreML::OpaqueType>(a1);
  mlir::Dialect::addType<mlir::ODIE::Compiler::CoreML::TypeType>(a1);
  mlir::Dialect::addType<mlir::ODIE::Compiler::CoreML::SymbolType>(a1);
  mlir::Dialect::addType<mlir::ODIE::Compiler::CoreML::ArrayType>(a1);
}

uint64_t *mlir::ODIE::Compiler::CoreML::CoreMLDialect::materializeConstant(uint64_t a1, mlir::OpBuilder *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v15 = a4;
  result = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(a3);
  if (result)
  {
    if ((*v10)(v10, result) == a4)
    {
      if (a3)
      {
        v11 = *a3;
        v12 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
        v13 = mlir::detail::InterfaceMap::lookup(v11 + 8, v12);
      }

      else
      {
        v13 = 0;
      }

      v14[0] = a3;
      v14[1] = v13;
      return mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::Type &,mlir::TypedAttr>(a2, a5, &v15, v14);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::Type &,mlir::TypedAttr>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v24[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ConstantOp>(a1, *(**a2 + 32));
  v18[0] = a2;
  v18[1] = v8;
  v18[2] = &v19;
  v18[3] = 0x400000000;
  v20[0] = v21;
  v20[1] = 0x400000000;
  v21[4] = v22;
  v21[5] = 0x400000000;
  v22[8] = 4;
  v22[9] = v23;
  v22[10] = 0x100000000;
  v23[1] = v24;
  v23[2] = 0x100000000;
  v24[1] = 0;
  v24[2] = 0;
  v24[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v24[4] = 0;
  v24[6] = 0;
  v9 = *a3;
  v11 = *a4;
  v10 = a4[1];
  v17 = v9;
  v12 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::Properties>(v18);
  *v12 = v11;
  v12[1] = v10;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v20, &v17, v18);
  v13 = mlir::Operation::create(v18);
  mlir::OpBuilder::insert(a1, v13);
  if (*(*(v13 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

BOOL mlir::ODIE::Compiler::CoreML::isSubByteElementType(uint64_t a1, uint64_t a2)
{
  v6 = (*(a2 + 8))(a2, a1);
  if (mlir::Type::getIntOrFloatBitWidth(&v6) > 7)
  {
    return 0;
  }

  v4 = (*(a2 + 8))(a2, a1);
  return *(*v4 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v4[2] != 1;
}

uint64_t *mlir::ODIE::Compiler::CoreML::createElementsAttr(void (*a1)(__int128 *__return_ptr, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, llvm::hashing::detail::hash_state *a5, size_t a6)
{
  v49 = *MEMORY[0x277D85DE8];
  v12 = (*(a4 + 24))(a4, a3);
  if (v13)
  {
    v14 = 8 * v13;
    v15 = 1;
    do
    {
      v16 = *v12++;
      v15 *= v16;
      v14 -= 8;
    }

    while (v14);
    if (v15 > 255)
    {
      goto LABEL_6;
    }
  }

  if (mlir::ODIE::Compiler::CoreML::isSubByteElementType(a3, a4))
  {
LABEL_6:
    v32 = 0;
    mlir::ODIE::Compiler::CoreML::getBlobNameAndLookupExisting(a5, a6, a3, a4, &v32, __p);
    v17 = v32;
    if (v32)
    {
      v18 = *v32;
      v19 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
      mlir::detail::InterfaceMap::lookup(v18 + 8, v19);
LABEL_44:
      if (v31 < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_46;
    }

    v36.__val_ = 0;
    v36.__cat_ = std::system_category();
    llvm::sys::Memory::allocateMappedMemory(a6, 0, 50331648, &v36, __dst);
    if (v36.__val_)
    {
      a1(&v45, a2);
      if (v45)
      {
        mlir::Diagnostic::operator<<<35ul>(&v45 + 8, "could not allocate mapped memory: ");
      }
    }

    else
    {
      if (a6)
      {
        memmove(__dst[0], a5, a6);
      }

      v45 = *__dst;
      v46 = v35;
      *&v36.__val_ = llvm::sys::Memory::protectMappedMemory(&v45, 0x1000000);
      v36.__cat_ = v22;
      if (!v36.__val_)
      {
        mlir::ODIE::Compiler::CoreML::wrapMemoryBlock(__dst, a6, &v45);
        v40 = v45;
        v41 = v46;
        llvm::detail::UniqueFunctionBase<void,void *,unsigned long,unsigned long>::UniqueFunctionBase(v42, &v47);
        v43 = v48;
        v44 = 1;
        mlir::AsmResourceBlob::~AsmResourceBlob(&v45);
LABEL_30:
        if (__dst[0])
        {
          llvm::sys::Memory::releaseMappedMemory(__dst);
        }

        if (v44 == 1)
        {
          if (v31 >= 0)
          {
            v23 = __p;
          }

          else
          {
            v23 = __p[0];
          }

          if (v31 >= 0)
          {
            v24 = v31;
          }

          else
          {
            v24 = __p[1];
          }

          v37 = v40;
          v38 = v41;
          llvm::detail::UniqueFunctionBase<void,void *,unsigned long,unsigned long>::UniqueFunctionBase(v39, v42);
          v39[32] = v43;
          v25 = mlir::DenseResourceElementsAttr::get(a3, a4, v23, v24, &v37);
          v17 = v25;
          if (v25)
          {
            v26 = *v25;
            v27 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
            mlir::detail::InterfaceMap::lookup(v26 + 8, v27);
          }

          mlir::AsmResourceBlob::~AsmResourceBlob(&v37);
          if (v44)
          {
            mlir::AsmResourceBlob::~AsmResourceBlob(&v40);
          }
        }

        else
        {
          v17 = 0;
        }

        goto LABEL_44;
      }

      a1(&v45, a2);
      if (v45)
      {
        mlir::Diagnostic::operator<<<48ul>(&v45 + 8, "failed to mark the mapped region as read-only: ");
      }
    }

    std::error_code::message(&v33, &v36);
    if (v45)
    {
      WORD4(v42[0]) = 260;
      *&v40 = &v33;
      mlir::Diagnostic::operator<<(&v45 + 8, &v40);
    }

    LOBYTE(v40) = 0;
    v44 = 0;
    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v45);
    goto LABEL_30;
  }

  v20 = (*(a4 + 8))(a4, a3);
  if (*(*v20 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && (v20[2] & 0x3FFFFFFF) == 1)
  {
    Raw = mlir::DenseElementsAttr::get(a3, a4, a5, a6);
  }

  else if (mlir::DenseElementsAttr::isValidRawBuffer(a3, a4, a5, a6, &v40))
  {
    Raw = mlir::DenseIntOrFPElementsAttr::getRaw(a3, a4, a5, a6);
  }

  else
  {
    a1(&v45, a2);
    if (v45)
    {
      mlir::Diagnostic::operator<<<19ul>(&v45 + 8, "invalid raw buffer");
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v45);
    Raw = 0;
  }

  *&v45 = Raw;
  v17 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v45);
LABEL_46:
  v28 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t mlir::ODIE::Compiler::CoreML::getBlobNameAndLookupExisting@<X0>(llvm::hashing::detail::hash_state *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *(mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>::getManagerInterface(*(**a3 + 32)) + 24);
  v15 = llvm::hashing::detail::hash_combine_range_impl<unsigned char const>(a1, a1 + a2, v13, v14);
  std::to_string(&v26, v15);
  v16 = std::string::insert(&v26, 0, "resource_");
  v17 = v16->__r_.__value_.__r.__words[2];
  *a6 = *&v16->__r_.__value_.__l.__data_;
  *(a6 + 16) = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  v18 = *(a6 + 23);
  if (v18 >= 0)
  {
    v19 = a6;
  }

  else
  {
    v19 = *a6;
  }

  if (v18 >= 0)
  {
    v20 = *(a6 + 23);
  }

  else
  {
    v20 = *(a6 + 8);
  }

  result = mlir::DialectResourceBlobManager::lookup(v12, v19, v20);
  if (result)
  {
    v23 = result;
    LoadedDialect = mlir::MLIRContext::getLoadedDialect(*(**a3 + 32), "builtin", 7, v22);
    v25 = mlir::detail::TypeIDResolver<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>,void>::resolveTypeID();
    v26.__r_.__value_.__r.__words[0] = v23;
    v26.__r_.__value_.__l.__size_ = v25;
    v26.__r_.__value_.__r.__words[2] = LoadedDialect;
    result = mlir::DenseResourceElementsAttr::get(a3, a4, &v26);
    *a5 = result;
  }

  return result;
}

void *mlir::ODIE::Compiler::CoreML::createElementsAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, llvm::sys::Process *a5, uint64_t a6)
{
  v25 = *MEMORY[0x277D85DE8];
  v10 = *a5;
  v23 = 0;
  mlir::ODIE::Compiler::CoreML::getBlobNameAndLookupExisting(v10, a6, a3, a4, &v23, __p);
  v11 = v23;
  if (v23)
  {
    v12 = *v23;
    v13 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v12 + 8, v13);
  }

  else
  {
    if (v22 >= 0)
    {
      v14 = __p;
    }

    else
    {
      v14 = __p[0];
    }

    if (v22 >= 0)
    {
      v15 = v22;
    }

    else
    {
      v15 = __p[1];
    }

    mlir::ODIE::Compiler::CoreML::wrapMemoryBlock(a5, a6, v24);
    v16 = mlir::DenseResourceElementsAttr::get(a3, a4, v14, v15, v24);
    v11 = v16;
    if (v16)
    {
      v17 = *v16;
      v18 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
      mlir::detail::InterfaceMap::lookup(v17 + 8, v18);
    }

    mlir::AsmResourceBlob::~AsmResourceBlob(v24);
  }

  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v11;
}

void *mlir::ODIE::Compiler::CoreML::wrapMemoryBlock@<X0>(llvm::sys::Process *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  PageSizeEstimate = llvm::sys::Process::getPageSizeEstimate(a1);
  v10 = *a1;
  v11 = *(a1 + 4);
  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 4) = 0;
  v12 = llvm::detail::UniqueFunctionBase<void,void *,unsigned long,unsigned long>::CallbacksHolder<mlir::ODIE::Compiler::CoreML::wrapMemoryBlock(llvm::sys::OwningMemoryBlock &&,unsigned long)::$_0,llvm::sys::OwningMemoryBlock &&,void>::Callbacks + 6;
  *a3 = v6;
  *(a3 + 8) = a2;
  *(a3 + 16) = PageSizeEstimate;
  llvm::detail::UniqueFunctionBase<void,void *,unsigned long,unsigned long>::UniqueFunctionBase(a3 + 24, &v10);
  *(a3 + 56) = 0;
  result = llvm::detail::UniqueFunctionBase<void,void *,unsigned long,unsigned long>::~UniqueFunctionBase(&v10);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::raw_ostream *mlir::ODIE::Compiler::CoreML::ParamDeclAttr::print(mlir::ODIE::Compiler::CoreML::ParamDeclAttr *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++*(v4 + 4);
  }

  (*(*a2 + 72))(a2, *(*(*this + 8) + 16), *(*(*this + 8) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (*(v6 + 3) - v7 > 1uLL)
  {
    *v7 = 8250;
    *(v6 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v6, ": ", 2uLL);
  }

  (*(*a2 + 32))(a2, *(*this + 16));
  v8 = *(*this + 24);
  if (v8)
  {
    v9 = (*(*a2 + 16))(a2);
    v10 = *(v9 + 4);
    if ((*(v9 + 3) - v10) > 2)
    {
      *(v10 + 2) = 32;
      *v10 = 15648;
      *(v9 + 4) += 3;
    }

    else
    {
      llvm::raw_ostream::write(v9, " = ", 3uLL);
    }

    (*(*a2 + 48))(a2, v8);
  }

  result = (*(*a2 + 16))(a2);
  v12 = *(result + 4);
  if (*(result + 3) == v12)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v12 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ParamDeclAttr::parse(uint64_t a1)
{
  v14[0] = 0;
  v14[1] = 0;
  v15 = 0;
  v13 = 0;
  if ((*(*a1 + 152))(a1) & 1) != 0 && mlir::AsmParser::parseKeywordOrString(a1) && ((*(*a1 + 576))(a1, &v13) & 1) != 0 && ((v11 = 0, v12 = 0, ((*(*a1 + 144))(a1) & 1) == 0) || mlir::AsmParser::parseAttribute<mlir::TypedAttr>(a1, &v11, v13)) && ((*(*a1 + 168))(a1))
  {
    v2 = v11;
    v3 = (*(*a1 + 32))(a1);
    v10 = 260;
    v9 = v14;
    v5 = mlir::StringAttr::get(*v3, &v9, v4);
    if (v2)
    {
      v6 = mlir::ODIE::Compiler::CoreML::ParamDeclAttr::get(v5, v11, v12);
    }

    else
    {
      v6 = mlir::ODIE::Compiler::CoreML::ParamDeclAttr::get(v5, v13);
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[0]);
  }

  return v7;
}

BOOL mlir::AsmParser::parseKeywordOrString(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + 432))(a1))
  {
    v2 = 1;
  }

  else
  {
    v3 = (*(*a1 + 40))(a1);
    v6[16] = 257;
    (*(*a1 + 24))(&v7, a1, v3, v6);
    if (v7)
    {
      mlir::Diagnostic::operator<<<33ul>(v8, "expected valid keyword or string");
    }

    v2 = (v8[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v2;
}

BOOL mlir::AsmParser::parseAttribute<mlir::TypedAttr>(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = (*(*a1 + 40))(a1);
  v14 = 0;
  if ((*(*a1 + 440))(a1, &v14, a3))
  {
    v7 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v14);
    *a2 = v7;
    a2[1] = v8;
    v9 = 1;
    if (!v7)
    {
      v12 = "invalid kind of attribute specified";
      v13 = 259;
      (*(*a1 + 24))(v15, a1, v6, &v12);
      v9 = (v16 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v15);
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t mlir::ODIE::Compiler::CoreML::ParamDeclAttr::get(uint64_t a1, uint64_t a2, uint64_t (**a3)(void))
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = *(**a2 + 32);
  v6 = (*a3)(a3);
  v7 = *v5;
  v11[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,void>::id;
  v11[1] = v5;
  v16[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail20ParamDeclAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_13ParamDeclAttrEJRNS1_10StringAttrENS1_4TypeERNS1_9TypedAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESM_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSO_E_EEvlS7_;
  v16[1] = v11;
  v13 = a1;
  v14 = v6;
  v15 = a2;
  memset(v18, 0, sizeof(v18));
  memset(__dst, 0, sizeof(__dst));
  v19 = 0;
  v20 = 0xFF51AFD7ED558CCDLL;
  v8 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::StringAttr,mlir::Type,mlir::Attribute>(__dst, __dst, v18, a1, &v14, &v15);
  v12 = &v13;
  *&__dst[0] = &v13;
  *(&__dst[0] + 1) = v16;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v7 + 560), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,void>::id, v8, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage,mlir::StringAttr &,mlir::Type,mlir::TypedAttr &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,mlir::Type,mlir::TypedAttr &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v12, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage,mlir::StringAttr &,mlir::Type,mlir::TypedAttr &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,mlir::Type,mlir::TypedAttr &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ParamDeclAttr::get(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(**a2 + 32);
  v3 = *v2;
  v7[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,void>::id;
  v7[1] = v2;
  v12[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail20ParamDeclAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_13ParamDeclAttrEJRNS1_10StringAttrERNS1_4TypeENS1_9AttributeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESM_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSO_E_EEvlS7_;
  v12[1] = v7;
  v9 = a1;
  v10 = a2;
  v11 = 0;
  memset(v14, 0, sizeof(v14));
  memset(__dst, 0, sizeof(__dst));
  v15 = 0;
  v16 = 0xFF51AFD7ED558CCDLL;
  v4 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::StringAttr,mlir::Type,mlir::Attribute>(__dst, __dst, v14, a1, &v10, &v11);
  v8 = &v9;
  *&__dst[0] = &v9;
  *(&__dst[0] + 1) = v12;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v3 + 560), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,void>::id, v4, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage,mlir::StringAttr &,mlir::Type &,mlir::Attribute>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,mlir::Type &,mlir::Attribute &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v8, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage,mlir::StringAttr &,mlir::Type &,mlir::Attribute>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,mlir::Type &,mlir::Attribute &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ParamRefAttr::parse(uint64_t a1, uint64_t a2)
{
  v15 = a2;
  __p[0] = 0;
  __p[1] = 0;
  v14 = 0;
  if ((*(*a1 + 152))(a1) & 1) != 0 && mlir::AsmParser::parseKeywordOrString(a1) && ((*(*a1 + 168))(a1) & 1) != 0 && (a2 || ((*(*a1 + 576))(a1, &v15)))
  {
    v4 = *(*(*a1 + 32))(a1);
    v5 = (*(*a1 + 32))(a1);
    v12 = 260;
    v11 = __p;
    v7 = mlir::StringAttr::get(*v5, &v11, v6);
    v8 = *v4;
    v16[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefAttr,void>::id;
    v16[1] = v4;
    v9 = mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage,mlir::StringAttr,mlir::Type>((v8 + 560), _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail19ParamRefAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_12ParamRefAttrEJNS1_10StringAttrENS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS7_, v16, v7, v15);
  }

  else
  {
    v9 = 0;
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }

  return v9;
}

llvm::raw_ostream *mlir::ODIE::Compiler::CoreML::prettyPrintBindAttr(uint64_t a1, uint64_t a2)
{
  if (*(**(a2 + 8) + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    (*(*a1 + 40))(a1);
    v6 = (*(*a1 + 16))(a1);
    v7 = *(v6 + 4);
    if (*(v6 + 3) == v7)
    {
      llvm::raw_ostream::write(v6, "<", 1uLL);
    }

    else
    {
      *v7 = 60;
      ++*(v6 + 4);
    }

    v10 = *(a2 + 32);
    if (v10)
    {
      v11 = *(a2 + 24);
      mlir::ODIE::Compiler::CoreML::printSingleBinding(a1, *v11, v11[1]);
      if (v10 != 1)
      {
        v12 = &v11[2 * v10];
        v13 = v11 + 2;
        do
        {
          v14 = (*(*a1 + 16))(a1);
          v15 = *(v14 + 4);
          if (*(v14 + 3) - v15 > 1uLL)
          {
            *v15 = 8236;
            *(v14 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v14, ", ", 2uLL);
          }

          v16 = *v13;
          v17 = v13[1];
          v13 += 2;
          mlir::ODIE::Compiler::CoreML::printSingleBinding(a1, v16, v17);
        }

        while (v13 != v12);
      }
    }
  }

  else
  {
    v4 = (*(*a1 + 16))(a1);
    v5 = *(v4 + 4);
    if (*(v4 + 3) == v5)
    {
      llvm::raw_ostream::write(v4, "<", 1uLL);
    }

    else
    {
      *v5 = 60;
      ++*(v4 + 4);
    }

    (*(*a1 + 40))(a1, a2);
  }

  result = (*(*a1 + 16))(a1);
  v9 = *(result + 4);
  if (*(result + 3) == v9)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v9 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::parsePrettyBindAttr(uint64_t a1, uint64_t *a2)
{
  v16[6] = *MEMORY[0x277D85DE8];
  v12 = 0;
  if ((*(*a1 + 440))(a1, &v12))
  {
    if (*(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
    {
      v4 = v12;
    }

    else
    {
      v4 = 0;
    }

    if (v4)
    {
      v14 = v16;
      v15 = 0x300000000;
      v11[0] = a1;
      v11[1] = &v14;
      if ((*(*a1 + 392))(a1, 7, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::parsePrettyBindAttr(mlir::AsmParser &,mlir::Attribute &,mlir::Type)::$_0>, v11, 0, 0))
      {
        if (v15)
        {
          v5 = *(**(*(*a1 + 32))(a1) + 384);
          v13 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolType,void>::id;
          v6 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v5 + 232), &v13);
          v7 = mlir::ODIE::Compiler::CoreML::ParamBindAttr::get(*(**v4 + 32), v4, *v6, v14, v15);
        }

        else
        {
          v7 = mlir::ODIE::Compiler::CoreML::ParamConstantAttr::get(v4);
        }

        *a2 = v7;
        v8 = 1;
      }

      else
      {
        v8 = 0;
      }

      if (v14 != v16)
      {
        free(v14);
      }
    }

    else
    {
      *a2 = v12;
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t mlir::ODIE::Compiler::CoreML::ParamConstantAttr::get(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(**a1 + 32);
  v3 = *(*v2 + 384);
  *&__dst[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolType,void>::id;
  v4 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v3 + 232), __dst);
  v5 = *v2;
  v9[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
  v9[1] = v2;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail24ParamConstantAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_17ParamConstantAttrEJRNS1_13SymbolRefAttrENS4_10SymbolTypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS7_;
  v13[1] = v9;
  v11 = a1;
  v12 = v4;
  memset(v15, 0, sizeof(v15));
  memset(__dst, 0, sizeof(__dst));
  v16 = 0;
  v17 = 0xFF51AFD7ED558CCDLL;
  v6 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Attribute,mlir::Type>(__dst, __dst, v15, a1, &v12);
  v10 = &v11;
  *&__dst[0] = &v11;
  *(&__dst[0] + 1) = v13;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v5 + 560), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id, v6, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::SymbolRefAttr &,mlir::ODIE::Compiler::CoreML::SymbolType>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::SymbolRefAttr &,mlir::ODIE::Compiler::CoreML::SymbolType &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::SymbolRefAttr &,mlir::ODIE::Compiler::CoreML::SymbolType>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::SymbolRefAttr &,mlir::ODIE::Compiler::CoreML::SymbolType &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(**a1 + 32);
  v3 = mlir::TypeAttr::get(a1);
  v4 = *(**(**a1 + 32) + 384);
  *&__dst[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TypeType,void>::id;
  v5 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v4 + 232), __dst);
  v6 = *v2;
  v10[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
  v10[1] = v2;
  v14[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail24ParamConstantAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_17ParamConstantAttrEJNS1_8TypeAttrENS4_8TypeTypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS7_;
  v14[1] = v10;
  v12 = v3;
  v13 = v5;
  memset(v16, 0, sizeof(v16));
  memset(__dst, 0, sizeof(__dst));
  v17 = 0;
  v18 = 0xFF51AFD7ED558CCDLL;
  v7 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Attribute,mlir::Type>(__dst, __dst, v16, v3, &v13);
  v11 = &v12;
  *&__dst[0] = &v12;
  *(&__dst[0] + 1) = v14;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v6 + 560), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id, v7, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::TypeAttr,mlir::ODIE::Compiler::CoreML::TypeType>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::TypeAttr,mlir::ODIE::Compiler::CoreML::TypeType &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::TypeAttr,mlir::ODIE::Compiler::CoreML::TypeType>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::TypeAttr,mlir::ODIE::Compiler::CoreML::TypeType &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::raw_ostream *mlir::ODIE::Compiler::CoreML::ParamBindAttr::print(mlir::ODIE::Compiler::CoreML::ParamBindAttr *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++*(v4 + 4);
  }

  (*(*a2 + 48))(a2, *(*this + 8));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if ((*(v6 + 3) - v7) > 2)
  {
    *(v7 + 2) = 91;
    *v7 = 8236;
    *(v6 + 4) += 3;
  }

  else
  {
    llvm::raw_ostream::write(v6, ", [", 3uLL);
  }

  v8 = *this;
  v9 = *(*this + 32);
  if (v9)
  {
    v10 = *(v8 + 24);
    v11 = v10[1];
    mlir::ODIE::Compiler::CoreML::printSingleBinding(a2, *v10);
    if (v9 != 1)
    {
      v12 = &v10[2 * v9];
      v13 = v10 + 2;
      do
      {
        v14 = (*(*a2 + 16))(a2);
        v15 = *(v14 + 4);
        if (*(v14 + 3) - v15 > 1uLL)
        {
          *v15 = 8236;
          *(v14 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v14, ", ", 2uLL);
        }

        v16 = *v13;
        v17 = v13[1];
        v13 += 2;
        mlir::ODIE::Compiler::CoreML::printSingleBinding(a2, v16);
      }

      while (v13 != v12);
    }
  }

  result = (*(*a2 + 16))(a2);
  v19 = *(result + 4);
  if (*(result + 3) - v19 > 1uLL)
  {
    *v19 = 15965;
    *(result + 4) += 2;
  }

  else
  {

    return llvm::raw_ostream::write(result, "]>", 2uLL);
  }

  return result;
}

uint64_t *mlir::ODIE::Compiler::CoreML::ParamBindAttr::parse(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v12[6] = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = v12;
  v11 = 0x300000000;
  v8[0] = a1;
  v8[1] = &v10;
  v7 = 0;
  if ((*(*a1 + 152))(a1) & 1) != 0 && ((*(*a1 + 440))(a1, &v7, 0) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 392))(a1, 2, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::ParamBindAttr::parse(mlir::AsmParser &,mlir::Type)::$_0>, v8, 0, 0) & 1) != 0 && ((*(*a1 + 168))(a1))
  {
    if (v2)
    {
LABEL_9:
      v4 = mlir::ODIE::Compiler::CoreML::ParamBindAttr::get(*(**v7 + 32), v7, v2, v10, v11);
      goto LABEL_11;
    }

    if ((*(*a1 + 576))(a1, &v9))
    {
      v2 = v9;
      goto LABEL_9;
    }
  }

  v4 = 0;
LABEL_11:
  if (v10 != v12)
  {
    free(v10);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t *mlir::ODIE::Compiler::CoreML::ParamBindAttr::get(void *a1, uint64_t *a2, uint64_t a3, unsigned int *a4, uint64_t a5)
{
  v39 = *MEMORY[0x277D85DE8];
  if (a5)
  {
    if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id || a2 == 0)
    {
      v8 = *a1;
      v22 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id;
      v23 = a1;
      v28 = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail20ParamBindAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_13ParamBindAttrEJRNS1_9AttributeERNS1_4TypeERNS_8ArrayRefINS1_9TypedAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESP_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSR_E_EEvlS7_;
      v29 = &v22;
      *&v25 = a2;
      *(&v25 + 1) = a3;
      v26 = a4;
      v27 = a5;
      v35 = 0u;
      v36 = 0u;
      v34 = 0u;
      v32 = 0u;
      v33 = 0u;
      __dst = 0u;
      v31 = 0u;
      v37 = 0;
      v38 = 0xFF51AFD7ED558CCDLL;
      v13 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Attribute,mlir::Type,llvm::ArrayRef<mlir::TypedAttr>>(&__dst, &__dst, &v34, a2, &v25 + 2, &v26);
      v24 = &v25;
      *&__dst = &v25;
      *(&__dst + 1) = &v28;
      v14 = llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage,mlir::Attribute &,mlir::Type &,llvm::ArrayRef<mlir::TypedAttr> &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage *)>,mlir::TypeID,mlir::Attribute &,mlir::Type &,llvm::ArrayRef<mlir::TypedAttr> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>;
      v15 = llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage,mlir::Attribute &,mlir::Type &,llvm::ArrayRef<mlir::TypedAttr> &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage *)>,mlir::TypeID,mlir::Attribute &,mlir::Type &,llvm::ArrayRef<mlir::TypedAttr> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>;
      v16 = *(v8 + 560);
    }

    else
    {
      v11 = *a1;
      v12 = *(a2 + 1);
      v22 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id;
      v23 = a1;
      v28 = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail20ParamBindAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_13ParamBindAttrEJNS1_9AttributeENS1_4TypeERNS_8ArrayRefINS1_9TypedAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESN_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSP_E_EEvlS7_;
      v29 = &v22;
      v25 = v12;
      v26 = a4;
      v27 = a5;
      v35 = 0u;
      v36 = 0u;
      v34 = 0u;
      v32 = 0u;
      v33 = 0u;
      __dst = 0u;
      v31 = 0u;
      v37 = 0;
      v38 = 0xFF51AFD7ED558CCDLL;
      v13 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Attribute,mlir::Type,llvm::ArrayRef<mlir::TypedAttr>>(&__dst, &__dst, &v34, v12, &v25 + 2, &v26);
      v24 = &v25;
      *&__dst = &v25;
      *(&__dst + 1) = &v28;
      v14 = llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage,mlir::Attribute,mlir::Type,llvm::ArrayRef<mlir::TypedAttr> &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage *)>,mlir::TypeID,mlir::Attribute,mlir::Type,llvm::ArrayRef<mlir::TypedAttr> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>;
      v15 = llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage,mlir::Attribute,mlir::Type,llvm::ArrayRef<mlir::TypedAttr> &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage *)>,mlir::TypeID,mlir::Attribute,mlir::Type,llvm::ArrayRef<mlir::TypedAttr> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>;
      v16 = *(v11 + 560);
    }

    v17 = mlir::detail::StorageUniquerImpl::getOrCreate(v16, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id, v13, v14, &v24, v15, &__dst);
  }

  else
  {
    v9 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(a2);
    if (v9)
    {
      v10 = v9;
      goto LABEL_13;
    }

    v17 = mlir::ODIE::Compiler::CoreML::ParamConstantAttr::get(a2, a3);
  }

  v10 = v17;
  if (v17)
  {
    v18 = *v17;
    v19 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v18 + 8, v19);
  }

LABEL_13:
  v20 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t mlir::ODIE::Compiler::CoreML::ParamConstantAttr::get(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(**a1 + 32);
  v3 = *v2;
  v7[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
  v7[1] = v2;
  v11[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail24ParamConstantAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_17ParamConstantAttrEJRNS1_9AttributeERNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESL_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSN_E_EEvlS7_;
  v11[1] = v7;
  v9 = a1;
  v10 = a2;
  memset(v13, 0, sizeof(v13));
  memset(__dst, 0, sizeof(__dst));
  v14 = 0;
  v15 = 0xFF51AFD7ED558CCDLL;
  v4 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Attribute,mlir::Type>(__dst, __dst, v13, a1, &v10);
  v8 = &v9;
  *&__dst[0] = &v9;
  *(&__dst[0] + 1) = v11;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v3 + 560), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id, v4, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::Attribute &,mlir::Type &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::Attribute &,mlir::Type &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v8, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::Attribute &,mlir::Type &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::Attribute &,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::raw_ostream *mlir::ODIE::Compiler::CoreML::ParamConstantAttr::print(mlir::ODIE::Compiler::CoreML::ParamConstantAttr *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++*(v4 + 4);
  }

  (*(*a2 + 48))(a2, *(*this + 8));
  result = (*(*a2 + 16))(a2);
  v7 = *(result + 4);
  if (*(result + 3) == v7)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v7 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ParamConstantAttr::parse(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v25 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v15 = a2;
  if (((*(*a1 + 152))(a1) & 1) == 0 || ((*(*a1 + 440))(a1, &v14, 0) & 1) == 0 || ((*(*a1 + 168))(a1) & 1) == 0)
  {
    goto LABEL_14;
  }

  v4 = *(*v14 + 136);
  if (v4 == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
  {
    result = mlir::ODIE::Compiler::CoreML::ParamConstantAttr::get(v14[1]);
    goto LABEL_15;
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    result = mlir::ODIE::Compiler::CoreML::ParamConstantAttr::get(v14);
    goto LABEL_15;
  }

  v5 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v14);
  if (!v5)
  {
    if (v2)
    {
LABEL_13:
      result = mlir::ODIE::Compiler::CoreML::ParamConstantAttr::get(v14, v2);
      goto LABEL_15;
    }

    if ((*(*a1 + 576))(a1, &v15))
    {
      v2 = v15;
      goto LABEL_13;
    }

LABEL_14:
    result = 0;
    goto LABEL_15;
  }

  v7 = v5;
  v8 = *(**v5 + 32);
  v9 = (*v6)(v6, v5);
  v10 = *v8;
  v16[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
  v16[1] = v8;
  v20[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail24ParamConstantAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_17ParamConstantAttrEJRNS1_9TypedAttrENS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS7_;
  v20[1] = v16;
  v18 = v7;
  v19 = v9;
  memset(v22, 0, sizeof(v22));
  memset(__dst, 0, sizeof(__dst));
  v23 = 0;
  v24 = 0xFF51AFD7ED558CCDLL;
  v11 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Attribute,mlir::Type>(__dst, __dst, v22, v7, &v19);
  v17 = &v18;
  *&__dst[0] = &v18;
  *(&__dst[0] + 1) = v20;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v10 + 560), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id, v11, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::TypedAttr &,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::TypedAttr &,mlir::Type &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v17, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::TypedAttr &,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::TypedAttr &,mlir::Type &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
LABEL_15:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ParamRefType::get(void *a1, void *a2, uint64_t a3)
{
  *&v5 = a2;
  *(&v5 + 1) = a3;
  if (a2 && *(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id && (v3 = a2[1], *(*v3 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id))
  {
    return v3[1];
  }

  else
  {
    return mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::CoreML::ParamRefType,mlir::TypedAttr &>(a1, &v5);
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::SymbolRefType::parse(mlir::ODIE::Compiler::CoreML::SymbolRefType *this, mlir::AsmParser *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v3 = (*(*this + 40))(this, a2);
  if (((*(*this + 152))(this) & 1) == 0 || !mlir::ODIE::Compiler::CoreML::parsePrettyBindAttr(this, &v13) || ((*(*this + 168))(this) & 1) == 0)
  {
LABEL_9:
    result = 0;
    goto LABEL_10;
  }

  result = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v13);
  if (result)
  {
    v6 = result;
    v7 = v5;
    v8 = *(*(*this + 32))(this);
    if (*(*(*v7)(v7, v6) + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolType,void>::id)
    {
      goto LABEL_11;
    }

    v19 = 257;
    (*(*this + 24))(v20, this, v3, v18);
    if (*&v20[0])
    {
    }

    v9 = v24;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v20);
    if ((v9 & 1) == 0)
    {
LABEL_11:
      v15 = v8;
      v11 = *v8;
      v14[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolRefType,void>::id;
      v14[1] = &v15;
      v18[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail20SymbolRefTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_13SymbolRefTypeEJRNS1_9TypedAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS7_;
      v18[1] = v14;
      v17[0] = v6;
      v17[1] = v7;
      memset(v21, 0, sizeof(v21));
      memset(v20, 0, sizeof(v20));
      v22 = 0;
      v23 = 0xFF51AFD7ED558CCDLL;
      v12 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::TypedAttr>(v20, 0, v20, v21, v6);
      v16 = v17;
      *&v20[0] = v17;
      *(&v20[0] + 1) = v18;
      result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v11 + 384), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolRefType,void>::id, v12, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::SymbolRefTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::SymbolRefTypeStorage,mlir::TypedAttr &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::SymbolRefTypeStorage *)>,mlir::TypeID,mlir::TypedAttr &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v16, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::SymbolRefTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::SymbolRefTypeStorage,mlir::TypedAttr &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::SymbolRefTypeStorage *)>,mlir::TypeID,mlir::TypedAttr &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v20);
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_10:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void *mlir::ODIE::Compiler::CoreML::SymbolRefType::getSymbol(mlir::ODIE::Compiler::CoreML::SymbolRefType *this)
{
  v1 = *(*this + 8);
  v2 = *(*v1 + 136);
  if (v1)
  {
    v3 = v2 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v1 = v1[1];
    v2 = *(*v1 + 136);
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
  {
    v1 = v1[1];
    v2 = *(*v1 + 136);
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

llvm::raw_ostream *mlir::ODIE::Compiler::CoreML::TypedPointerType::print(mlir::ODIE::Compiler::CoreML::TypedPointerType *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++*(v4 + 4);
  }

  v6 = *(*this + 8);
  if (v6)
  {
    v7 = (*v6)[17] == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
  }

  else
  {
    v7 = 0;
  }

  if (!v7 || *(*v6[1] + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
  {
    (*(*a2 + 40))(a2);
  }

  result = (*(*a2 + 16))(a2);
  v9 = *(result + 4);
  if (*(result + 3) == v9)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v9 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::TypedPointerType::parse(mlir::ODIE::Compiler::CoreML::TypedPointerType *this, mlir::AsmParser *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v3 = (*(*this + 40))(this, a2);
  if (((*(*this + 152))(this) & 1) == 0 || ((*(*this + 440))(this, &v14, 0) & 1) == 0 || ((*(*this + 168))(this) & 1) == 0)
  {
LABEL_11:
    result = 0;
    goto LABEL_12;
  }

  v4 = v14;
  if (*(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
  {
    v4 = mlir::ODIE::Compiler::CoreML::ParamConstantAttr::get(v14[1]);
    v14 = v4;
  }

  result = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v4);
  if (result)
  {
    v7 = result;
    v8 = v6;
    v9 = *(*(*this + 32))(this);
    if (*(*(*v8)(v8, v7) + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TypeType,void>::id)
    {
      goto LABEL_13;
    }

    v20 = 257;
    (*(*this + 24))(v21, this, v3, v19);
    if (*&v21[0])
    {
    }

    v10 = v25;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v21);
    if ((v10 & 1) == 0)
    {
LABEL_13:
      v16 = v9;
      v12 = *v9;
      v15[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TypedPointerType,void>::id;
      v15[1] = &v16;
      v19[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail23TypedPointerTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_16TypedPointerTypeEJRNS1_9TypedAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS7_;
      v19[1] = v15;
      v18[0] = v7;
      v18[1] = v8;
      memset(v22, 0, sizeof(v22));
      memset(v21, 0, sizeof(v21));
      v23 = 0;
      v24 = 0xFF51AFD7ED558CCDLL;
      v13 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::TypedAttr>(v21, 0, v21, v22, v7);
      v17 = v18;
      *&v21[0] = v18;
      *(&v21[0] + 1) = v19;
      result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v12 + 384), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TypedPointerType,void>::id, v13, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TypedPointerTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TypedPointerTypeStorage,mlir::TypedAttr &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TypedPointerTypeStorage *)>,mlir::TypeID,mlir::TypedAttr &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v17, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TypedPointerTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TypedPointerTypeStorage,mlir::TypedAttr &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TypedPointerTypeStorage *)>,mlir::TypeID,mlir::TypedAttr &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v21);
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_12:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr,mlir::Attribute,mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage,mlir::detail::AttributeUniquer,mlir::ODIE::Compiler::KeywordPrintableAttr::Trait>::getChecked<llvm::ArrayRef<mlir::StringAttr>>(void (*a1)(_OWORD *__return_ptr, uint64_t), uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v22 = *MEMORY[0x277D85DE8];
  if (a5)
  {
    goto LABEL_6;
  }

  a1(v17, a2);
  if (*&v17[0])
  {
    mlir::Diagnostic::operator<<<30ul>(v17 + 8, "stack trace must not be empty");
  }

  v8 = v21;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v17);
  if ((v8 & 1) == 0)
  {
LABEL_6:
    v10 = *a3;
    v13[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr,void>::id;
    v13[1] = a3;
    v16[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail30TorchLocationExtrasAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_23TorchLocationExtrasAttrEJRNS_8ArrayRefINS1_10StringAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESL_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSN_E_EEvlS7_;
    v16[1] = v13;
    v15[0] = a4;
    v15[1] = a5;
    memset(v18, 0, sizeof(v18));
    memset(v17, 0, sizeof(v17));
    v19 = 0;
    v20 = 0xFF51AFD7ED558CCDLL;
    v11 = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::ArrayRef<mlir::StringAttr>>(v17, 0, v17, v18, v15);
    v14 = v15;
    *&v17[0] = v15;
    *(&v17[0] + 1) = v16;
    result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v10 + 560), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr,void>::id, v11, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage,llvm::ArrayRef<mlir::StringAttr> &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::StringAttr> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v14, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage,llvm::ArrayRef<mlir::StringAttr> &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::StringAttr> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v17);
  }

  else
  {
    result = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr::parse(uint64_t *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  v2 = (*(*a1 + 40))(a1);
  LOBYTE(v14) = 0;
  v17 = 0;
  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    goto LABEL_9;
  }

  mlir::FieldParser<llvm::SmallVector<mlir::StringAttr,6u>,llvm::SmallVector<mlir::StringAttr,6u>>::parse(a1, v11);
  std::__optional_storage_base<llvm::SmallVector<mlir::StringAttr,6u>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<llvm::SmallVector<mlir::StringAttr,6u>,false>>(&v14, v11);
  if (v13 == 1 && v11[0] != v12)
  {
    free(v11[0]);
  }

  v3 = *a1;
  if ((v17 & 1) == 0)
  {
    v6 = (*(v3 + 40))(a1);
    v12[8] = 259;
    (*(*a1 + 24))(v10, a1, v6, v11);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v10);
    goto LABEL_9;
  }

  if (((*(v3 + 296))(a1) & 1) == 0)
  {
LABEL_9:
    v5 = 0;
    goto LABEL_10;
  }

  v4 = *(*(*a1 + 32))(a1);
  v9 = v2;
  v11[0] = a1;
  v11[1] = &v9;
  v5 = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr,mlir::Attribute,mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage,mlir::detail::AttributeUniquer,mlir::ODIE::Compiler::KeywordPrintableAttr::Trait>::getChecked<llvm::ArrayRef<mlir::StringAttr>>(_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZNS1_9AsmParser10getCheckedINS1_4ODIE8Compiler6CoreML23TorchLocationExtrasAttrEJPNS1_11MLIRContextENS_8ArrayRefINS1_10StringAttrEEEEEEDaNS_5SMLocEDpOT0_EUlvE_EES2_l, v11, v4, v14, v15);
LABEL_10:
  if (v17 == 1 && v14 != &v16)
  {
    free(v14);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

void mlir::FieldParser<llvm::SmallVector<mlir::StringAttr,6u>,llvm::SmallVector<mlir::StringAttr,6u>>::parse(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7[6] = *MEMORY[0x277D85DE8];
  v5 = v7;
  v6 = 0x600000000;
  if ((*(*a1 + 392))())
  {
    *a2 = a2 + 16;
    *(a2 + 8) = 0x600000000;
    if (v6)
    {
      llvm::SmallVectorImpl<mlir::StringAttr>::operator=(a2, &v5);
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
    *a2 = 0;
  }

  *(a2 + 64) = v3;
  if (v5 != v7)
  {
    free(v5);
  }

  v4 = *MEMORY[0x277D85DE8];
}

llvm::raw_ostream *mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr::print(mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "(", 1uLL);
  }

  else
  {
    *v5 = 40;
    ++*(v4 + 4);
  }

  v6 = *this;
  v7 = *(*this + 16);
  if (v7)
  {
    v8 = *(v6 + 8);
    (*(*a2 + 40))(a2, *v8);
    if (v7 != 1)
    {
      v9 = v8 + 1;
      v10 = 8 * v7 - 8;
      do
      {
        v11 = (*(*a2 + 16))(a2);
        v12 = *(v11 + 4);
        if (*(v11 + 3) - v12 > 1uLL)
        {
          *v12 = 8236;
          *(v11 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v11, ", ", 2uLL);
        }

        v13 = *v9++;
        (*(*a2 + 40))(a2, v13);
        v10 -= 8;
      }

      while (v10);
    }
  }

  result = (*(*a2 + 16))(a2);
  v15 = *(result + 4);
  if (*(result + 3) == v15)
  {

    return llvm::raw_ostream::write(result, ")", 1uLL);
  }

  else
  {
    *v15 = 41;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr::get(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v11[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr,void>::id;
  v11[1] = a1;
  v14[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail28ODIELocationFrameAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_21ODIELocationFrameAttrEJNS1_10StringAttrESF_NSt3__18optionalINS1_9AttributeEEEEEENSG_9enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESL_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSN_E_EEvlS7_;
  v14[1] = v11;
  v12[0] = a2;
  v12[1] = a3;
  v13[0] = a4;
  v13[1] = a5;
  memset(v18, 0, sizeof(v18));
  memset(v17, 0, sizeof(v17));
  v19 = 0;
  v20 = 0xFF51AFD7ED558CCDLL;
  v16[0] = (a2 >> 4) ^ (a2 >> 9);
  v16[1] = (a3 >> 4) ^ (a3 >> 9);
  v15 = 0;
  if (a5)
  {
    memset(v22, 0, sizeof(v22));
    memset(v21, 0, sizeof(v21));
    v23 = 0;
    v24 = 0xFF51AFD7ED558CCDLL;
    LOBYTE(v21[0]) = 1;
    v6 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Attribute>(v21, 0, (v21 + 1), v22, v13);
  }

  else
  {
    v6 = 0xB2B24F688DC4164DLL;
  }

  v7 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v16, &v15, v17, v18, v6);
  v8 = llvm::hashing::detail::hash_combine_recursive_helper::combine(v16, v15, v7, v18);
  v16[0] = v12;
  v21[0] = v12;
  v21[1] = v14;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v5 + 560), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr,void>::id, v8, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ODIELocationFrameAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ODIELocationFrameAttrStorage,mlir::StringAttr,mlir::StringAttr,std::optional<mlir::Attribute>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ODIELocationFrameAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::StringAttr,std::optional<mlir::Attribute> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, v16, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ODIELocationFrameAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ODIELocationFrameAttrStorage,mlir::StringAttr,mlir::StringAttr,std::optional<mlir::Attribute>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ODIELocationFrameAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::StringAttr,std::optional<mlir::Attribute> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v21);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr::parse(uint64_t a1)
{
  v25[26] = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    goto LABEL_19;
  }

  v22 = 257;
  if (((*(*a1 + 400))(a1, "method", 6, v21) & 1) == 0 || ((*(*a1 + 136))(a1) & 1) == 0)
  {
    goto LABEL_19;
  }

  v2 = mlir::FieldParser<mlir::StringAttr,mlir::StringAttr>::parse(a1);
  v3 = *a1;
  if ((v4 & 1) == 0)
  {
    v16 = (*(v3 + 40))(a1);
    v22 = 259;
    (*(*a1 + 24))(v25, a1, v16, v21);
    v17 = v25;
    goto LABEL_18;
  }

  v5 = v2;
  if (((*(v3 + 120))(a1) & 1) == 0)
  {
    goto LABEL_19;
  }

  v22 = 257;
  if (((*(*a1 + 400))(a1, "codeSnippet", 11, v21) & 1) == 0 || ((*(*a1 + 136))(a1) & 1) == 0)
  {
    goto LABEL_19;
  }

  v6 = mlir::FieldParser<mlir::StringAttr,mlir::StringAttr>::parse(a1);
  v7 = *a1;
  if ((v8 & 1) == 0)
  {
    v19 = (*(v7 + 40))(a1);
    v22 = 259;
    (*(*a1 + 24))(v24, a1, v19, v21);
    v17 = v24;
    goto LABEL_18;
  }

  v9 = v6;
  if (((*(v7 + 120))(a1) & 1) == 0)
  {
    goto LABEL_19;
  }

  v22 = 257;
  if (((*(*a1 + 400))(a1, "frontendAttribute", 17, v21) & 1) == 0 || ((*(*a1 + 136))(a1) & 1) == 0)
  {
    goto LABEL_19;
  }

  *v21 = 0;
  v10 = (*(*a1 + 456))(a1, v21, 0);
  v11 = 0;
  v12 = 0;
  v13 = 0;
  if ((v10 & 0x100) != 0)
  {
    if (v10)
    {
      v11 = *v21 & 0xFFFFFFFFFFFFFF00;
      v12 = v21[0];
      v13 = 1;
      goto LABEL_15;
    }

    v20 = (*(*a1 + 40))(a1);
    v22 = 259;
    (*(*a1 + 24))(v23, a1, v20, v21);
    v17 = v23;
LABEL_18:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v17);
    goto LABEL_19;
  }

LABEL_15:
  if (((*(*a1 + 296))(a1) & 1) == 0)
  {
LABEL_19:
    result = 0;
    goto LABEL_20;
  }

  v14 = (*(*a1 + 32))(a1);
  result = mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr::get(*v14, v5, v9, v12 | v11, v13);
LABEL_20:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::FieldParser<mlir::StringAttr,mlir::StringAttr>::parse(uint64_t a1)
{
  v2 = (*(*a1 + 32))(a1);
  mlir::MLIRContext::getOrLoadDialect(*v2, "builtin", 7uLL, v3);
  v7 = 0;
  v4 = mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, &v7, 0);
  v5 = v7;
  if (!v4)
  {
    return 0;
  }

  return v5;
}

llvm::raw_ostream *mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr::print(mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "(", 1uLL);
  }

  else
  {
    *v5 = 40;
    ++*(v4 + 4);
  }

  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if ((*(v6 + 3) - v7) > 5)
  {
    *(v7 + 4) = 25711;
    *v7 = 1752458605;
    *(v6 + 4) += 6;
  }

  else
  {
    llvm::raw_ostream::write(v6, "method", 6uLL);
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (v9 >= *(v8 + 3))
  {
    llvm::raw_ostream::write(v8, 32);
  }

  else
  {
    *(v8 + 4) = v9 + 1;
    *v9 = 32;
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (*(v10 + 3) == v11)
  {
    llvm::raw_ostream::write(v10, "=", 1uLL);
  }

  else
  {
    *v11 = 61;
    ++*(v10 + 4);
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (v13 >= *(v12 + 3))
  {
    llvm::raw_ostream::write(v12, 32);
  }

  else
  {
    *(v12 + 4) = v13 + 1;
    *v13 = 32;
  }

  (*(*a2 + 40))(a2, *(*this + 8));
  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (*(v14 + 3) == v15)
  {
    llvm::raw_ostream::write(v14, ",", 1uLL);
  }

  else
  {
    *v15 = 44;
    ++*(v14 + 4);
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if (v17 >= *(v16 + 3))
  {
    llvm::raw_ostream::write(v16, 32);
  }

  else
  {
    *(v16 + 4) = v17 + 1;
    *v17 = 32;
  }

  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if ((*(v18 + 3) - v19) > 0xA)
  {
    *(v19 + 7) = 1952804976;
    *v19 = *"codeSnippet";
    *(v18 + 4) += 11;
  }

  else
  {
    llvm::raw_ostream::write(v18, "codeSnippet", 0xBuLL);
  }

  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (v21 >= *(v20 + 3))
  {
    llvm::raw_ostream::write(v20, 32);
  }

  else
  {
    *(v20 + 4) = v21 + 1;
    *v21 = 32;
  }

  v22 = (*(*a2 + 16))(a2);
  v23 = *(v22 + 4);
  if (*(v22 + 3) == v23)
  {
    llvm::raw_ostream::write(v22, "=", 1uLL);
  }

  else
  {
    *v23 = 61;
    ++*(v22 + 4);
  }

  v24 = (*(*a2 + 16))(a2);
  v25 = *(v24 + 4);
  if (v25 >= *(v24 + 3))
  {
    llvm::raw_ostream::write(v24, 32);
  }

  else
  {
    *(v24 + 4) = v25 + 1;
    *v25 = 32;
  }

  (*(*a2 + 40))(a2, *(*this + 16));
  v26 = (*(*a2 + 16))(a2);
  v27 = *(v26 + 4);
  if (*(v26 + 3) == v27)
  {
    llvm::raw_ostream::write(v26, ",", 1uLL);
  }

  else
  {
    *v27 = 44;
    ++*(v26 + 4);
  }

  v28 = (*(*a2 + 16))(a2);
  v29 = *(v28 + 4);
  if (v29 >= *(v28 + 3))
  {
    llvm::raw_ostream::write(v28, 32);
  }

  else
  {
    *(v28 + 4) = v29 + 1;
    *v29 = 32;
  }

  v30 = (*(*a2 + 16))(a2);
  v31 = *(v30 + 4);
  if ((*(v30 + 3) - v31) > 0x10)
  {
    *(v31 + 16) = 101;
    *v31 = *"frontendAttribute";
    *(v30 + 4) += 17;
  }

  else
  {
    llvm::raw_ostream::write(v30, "frontendAttribute", 0x11uLL);
  }

  v32 = (*(*a2 + 16))(a2);
  v33 = *(v32 + 4);
  if (v33 >= *(v32 + 3))
  {
    llvm::raw_ostream::write(v32, 32);
  }

  else
  {
    *(v32 + 4) = v33 + 1;
    *v33 = 32;
  }

  v34 = (*(*a2 + 16))(a2);
  v35 = *(v34 + 4);
  if (*(v34 + 3) == v35)
  {
    llvm::raw_ostream::write(v34, "=", 1uLL);
  }

  else
  {
    *v35 = 61;
    ++*(v34 + 4);
  }

  if (*(*this + 32))
  {
    v36 = (*(*a2 + 16))(a2);
    v37 = *(v36 + 4);
    if (v37 >= *(v36 + 3))
    {
      llvm::raw_ostream::write(v36, 32);
    }

    else
    {
      *(v36 + 4) = v37 + 1;
      *v37 = 32;
    }

    v38 = *this;
    v39 = *(*this + 24);
    v40 = *(v38 + 32);
    v41 = (*(*a2 + 16))(a2);
    if (v40)
    {
      v44 = v39;
      mlir::Attribute::print(&v44, v41);
    }

    else
    {
      llvm::operator<<(v41);
    }
  }

  result = (*(*a2 + 16))(a2);
  v43 = *(result + 4);
  if (*(result + 3) == v43)
  {
    return llvm::raw_ostream::write(result, ")", 1uLL);
  }

  *v43 = 41;
  ++*(result + 4);
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ExternAttr::get(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v7[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ExternAttr,void>::id;
  v7[1] = a1;
  v10[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail17ExternAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_10ExternAttrEJNS_9StringRefEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_;
  v10[1] = v7;
  v9[0] = a2;
  v9[1] = a3;
  memset(v12, 0, sizeof(v12));
  memset(v11, 0, sizeof(v11));
  v13 = 0;
  v14 = 0xFF51AFD7ED558CCDLL;
  v4 = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::StringRef>(v11, 0, v11, v12, v9);
  v8 = v9;
  *&v11[0] = v9;
  *(&v11[0] + 1) = v10;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v3 + 560), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ExternAttr,void>::id, v4, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ExternAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ExternAttrStorage,llvm::StringRef>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ExternAttrStorage *)>,mlir::TypeID,llvm::StringRef &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v8, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ExternAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ExternAttrStorage,llvm::StringRef>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ExternAttrStorage *)>,mlir::TypeID,llvm::StringRef &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v11);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ExternAttr::parse(uint64_t a1)
{
  v18[26] = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  LOBYTE(v15[0]) = 0;
  v17 = 0;
  if ((*(*a1 + 280))(a1))
  {
    mlir::FieldParser<std::string,std::string>::parse(a1, &__p);
    v2 = std::__optional_storage_base<std::string,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<std::string,false>>(v15, &__p);
    if (v13 == 1 && v12 < 0)
    {
      operator delete(__p.n128_u64[0]);
    }

    v3 = *a1;
    if (v17)
    {
      if ((*(v3 + 296))(a1, v2))
      {
        v4 = *(*(*a1 + 32))(a1);
        if (v16 >= 0)
        {
          v5 = v15;
        }

        else
        {
          v5 = v15[0];
        }

        if (v16 >= 0)
        {
          v6 = v16;
        }

        else
        {
          v6 = v15[1];
        }

        v7 = mlir::ODIE::Compiler::CoreML::ExternAttr::get(v4, v5, v6);
        goto LABEL_16;
      }
    }

    else
    {
      v8 = (*(v3 + 40))(a1, v2);
      v14 = 259;
      (*(*a1 + 24))(v18, a1, v8, &__p);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v18);
    }
  }

  v7 = 0;
LABEL_16:
  if (v17 == 1 && v16 < 0)
  {
    operator delete(v15[0]);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}