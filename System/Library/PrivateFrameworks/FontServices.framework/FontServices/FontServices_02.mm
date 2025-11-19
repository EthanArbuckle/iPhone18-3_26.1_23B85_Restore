unint64_t sub_24BBE94A4(unint64_t result, uint64_t a2)
{
  do
  {
    v3 = result;
    v4 = *result & 0xFEF0;
    v5 = sub_24BBF0A14(result);
    v6 = *(v3 + 20);
    v7 = *(v5 + 20);
    if (v6 <= v7)
    {
      if (v6 >= v7)
      {
        v8 = *(v3 + 16);
        v9 = *(v5 + 16);
        if (v8 < v9 || v3 < v5 && v8 == v9)
        {
          v4 |= 8u;
        }
      }

      else
      {
        v4 |= 0x100u;
      }
    }

    else
    {
      v4 |= 2u;
    }

    result = sub_24BBF0978(v3);
    v10 = *(v3 + 20);
    v11 = *(result + 20);
    if (v10 <= v11)
    {
      if (v10 >= v11)
      {
        v12 = *(v3 + 16);
        v13 = *(result + 16);
        if (v12 < v13 || v3 < result && v12 == v13)
        {
          v4 |= 4u;
        }
      }

      else
      {
        v4 |= 0x100u;
      }
    }

    else
    {
      v4 |= 1u;
    }

    *v3 = v4;
  }

  while (v3 != a2);
  return result;
}

uint64_t sub_24BBE9584(uint64_t a1, uint64_t a2, uint64_t a3, int a4, _BOOL4 a5)
{
  v7 = *(a1 + 2);
  v8 = *(a2 + 2);
  if (v7 >= v8)
  {
    v14 = *(a2 + 8);
    if (!v14)
    {
      sub_24BBEDB70(-1, 0);
    }

    v10 = *(v14 + 2);
    v11 = v7 - 1;
    a5 = !a5;
    v12 = a3;
    v13 = a4;
  }

  else
  {
    v9 = *(a1 + 8);
    if (!v9)
    {
      sub_24BBEDB70(-1, 0);
    }

    v10 = *(v9 + 2);
    v11 = v8 - 1;
    v12 = a3;
    v13 = a4;
  }

  return sub_24BBE99F8(v12, v13, v10, v11, a5);
}

_WORD *sub_24BBE9654(_WORD *result, uint64_t a2)
{
  v3 = result;
  v4 = result;
  if ((*result & 0x400) == 0)
  {
    result = sub_24BBF1758(result);
    v4 = result;
  }

  if ((*a2 & 0x400) == 0)
  {
    result = sub_24BBF1758(a2);
    a2 = result;
  }

  if (!*(a2 + 8))
  {
    sub_24BBEDB70(-1, 0);
  }

  if (!*(v4 + 8))
  {
    sub_24BBEDB70(-1, 0);
  }

  if (*(v4 + 2) > *(*(a2 + 8) + 2) || *(*(v4 + 8) + 2) < *(a2 + 2))
  {
    v5 = *v3 & 3;

    return sub_24BBE9584(v4, a2, v3, v5, v4 == v3);
  }

  return result;
}

_WORD *sub_24BBE9738(uint64_t a1, int a2)
{
  while (a2 == 3)
  {
    sub_24BBE9738(a1, 1);
    a2 = 2;
    if ((*a1 & 0x1000) != 0)
    {
      do
      {
        a1 += *(a1 + 16);
      }

      while ((*a1 & 0x1000) != 0);
      a2 = 2;
    }
  }

  if (a2 == 1)
  {
    result = sub_24BBF0978(a1);
  }

  else
  {
    result = sub_24BBF0A14(a1);
  }

  v5 = result;
  if ((*a1 & 0x400) != 0)
  {
    v7 = *result;
    v6 = a1;
    if ((*result & 0x400) == 0)
    {
      return result;
    }
  }

  else
  {
    result = sub_24BBF1758(a1);
    v6 = result;
    v7 = *v5;
  }

  if ((v7 & 0x400) == 0)
  {
    result = sub_24BBF1758(v5);
    v5 = result;
  }

  v8 = *(v6 + 8);
  if (!v8)
  {
    sub_24BBEDB70(-1, 0);
  }

  if (*(v8 + 2) < v5[1])
  {
    v9 = *(sub_24BBF0AB4(a1, a2) + 20);
    v10 = *(a1 + 20);
    v11 = *(v8 + 2);
    v12 = v5[1];
    v13 = sub_24BBEA980(v6, v9 < v10);
    result = sub_24BBEA980(*(v5 + 1), v9 < v10);
    if (result)
    {
      if (!v13)
      {
        v13 = result;
        goto LABEL_38;
      }

      v14 = result[1];
      v15 = *(v13 + 2);
      if (v14 >= v15)
      {
        v16 = result;
      }

      else
      {
        v16 = v13;
      }

      if (v14 < v15)
      {
        v13 = result;
      }

      v17 = *(v13 + 2);
      if (v17 > v11)
      {
        if (v17 >= v12)
        {
          v18 = v12 - 1;
        }

        else
        {
          v18 = v17 - 1;
        }

        result = sub_24BBE99F8(a1, a2, v11, v18, v9 >= v10);
        while ((*a1 & 0x1000) != 0)
        {
          a1 += *(a1 + 16);
        }

        while ((*v13 & 0x1000) != 0)
        {
          v13 += *(v13 + 16);
        }
      }

      v19 = *(v13 + 8);
      if (!v19)
      {
        sub_24BBEDB70(-1, 0);
      }

      v20 = *(v19 + 2);
      if (v20 > v11)
      {
        v11 = v20;
      }

      v13 = v16;
    }

    if (!v13)
    {
LABEL_54:
      if (v11 < v12)
      {

        return sub_24BBE99F8(a1, a2, v11, v12 - 1, v9 >= v10);
      }

      return result;
    }

LABEL_38:
    if (v11 < v12)
    {
      while ((*v13 & 0x1000) != 0)
      {
        v13 += *(v13 + 16);
      }

      v21 = *(v13 + 2);
      if (v11 < v21)
      {
        if (v21 >= v12)
        {
          v22 = v12 - 1;
        }

        else
        {
          v22 = v21 - 1;
        }

        result = sub_24BBE99F8(a1, a2, v11, v22, v9 >= v10);
        while ((*a1 & 0x1000) != 0)
        {
          a1 += *(a1 + 16);
        }

        while ((*v13 & 0x1000) != 0)
        {
          v13 += *(v13 + 16);
        }
      }

      v23 = *(v13 + 8);
      if (!v23)
      {
        sub_24BBEDB70(-1, 0);
      }

      v24 = *(v23 + 2);
      if (v11 <= v24)
      {
        v11 = v24;
      }
    }

    goto LABEL_54;
  }

  return result;
}

uint64_t sub_24BBE99F8(uint64_t a1, int a2, int a3, int a4, int a5)
{
  v6 = a4;
  v7 = a3;
  if (a2 == 3 || !a2)
  {
    sub_24BBEDB70(-1, 0);
  }

  if (a3 > a4)
  {
    sub_24BBEDB70(-1, 0);
  }

  if (a4 <= a3)
  {
    v10 = a3;
  }

  else
  {
    v10 = a4;
  }

  while (1)
  {
    result = sub_24BBE9AF4(a1, a2, v7, a5, 0);
    if (!result)
    {
      break;
    }

    while ((*a1 & 0x1000) != 0)
    {
      a1 += *(a1 + 16);
    }

    if (v7++ == v10)
    {
      return result;
    }
  }

  if (v7 <= v6)
  {
    do
    {
      while ((*a1 & 0x1000) != 0)
      {
        a1 += *(a1 + 16);
      }

      result = sub_24BBE9AF4(a1, a2, v6, a5, 1);
    }

    while (v7 < v6--);
  }

  return result;
}

uint64_t sub_24BBE9AF4(uint64_t a1, int a2, int a3, int a4, int a5)
{
  v6 = a1;
  v76 = 0;
  v73 = 0uLL;
  v74 = 0;
  v71 = 0uLL;
  v75 = 0x80000000uLL;
  if (a4)
  {
    v7 = 0x80000000;
  }

  else
  {
    v7 = 0x7FFFFFFFLL;
  }

  LODWORD(v73) = 0x7FFFFFFF;
  v72 = 0;
  v8 = (a3 << 16) | 0x8000;
  LODWORD(v71) = v7;
  do
  {
    v9 = v6;
    v10 = sub_24BBF0BCC(v6, a2);
    v6 = v10;
    v11 = *(v9 + 16);
    if (v11 < v8 || (v12 = *(v10 + 4), v12 > v8))
    {
      if (v11 > v8)
      {
        continue;
      }

      v12 = *(v10 + 4);
      if (v12 < v8)
      {
        continue;
      }
    }

    if (v11 != v12)
    {
      v13 = sub_24BBF1804(v9, v10, v8);
      if (a4)
      {
        if (v13 > v7)
        {
          v75 = v71;
          v76 = v72;
LABEL_15:
          LODWORD(v71) = v13;
          v14 = &v71 + 8;
          v15 = &v72;
LABEL_21:
          *v14 = v9;
          *v15 = a2;
          v7 = v13;
          continue;
        }

        if (v13 <= v75)
        {
          continue;
        }

        LODWORD(v75) = v13;
        v14 = &v75 + 8;
        v15 = &v76;
      }

      else
      {
        if (v13 < v7)
        {
          v73 = v71;
          v74 = v72;
          goto LABEL_15;
        }

        if (v13 >= v73)
        {
          continue;
        }

        LODWORD(v73) = v13;
        v14 = &v73 + 8;
        v15 = &v74;
      }

      v13 = v7;
      goto LABEL_21;
    }
  }

  while ((*v6 & 0x2000) != 0);
  result = 1;
  if (v7 >> 16 == -32768 || v7 >> 16 == 0x7FFF)
  {
    return result;
  }

  v17 = *(a1 + 22);
  if (*(sub_24BBF0AB4(a1, a2) + 20) <= *(a1 + 20))
  {
    v18 = v17;
  }

  else
  {
    v18 = v17 + 1;
  }

  v19 = qword_28151C008;
  v20 = v73;
  v21 = v75;
  v64 = v18;
  v22 = *(qword_28151C008 + 8 * v18);
  if (v22)
  {
    v68 = *(&v73 + 1);
    v23 = v74;
    v24 = *(&v75 + 1);
    v25 = v76;
    while (1)
    {
      if (v22 != a1)
      {
        v26 = *v22;
        v27 = v26 & 3;
        if ((v26 & 3) == 0)
        {
          v27 = (v26 >> 2) & 3;
          if (!v27)
          {
            goto LABEL_76;
          }

          if (v27 == 3)
          {
            if (*(sub_24BBF0BCC(v22, 1) + 5) < *(v22 + 5))
            {
              v27 = 1;
            }

            else
            {
              v27 = 2;
            }
          }

          else if (*(sub_24BBF0BCC(v22, (v26 >> 2) & 3) + 5) > *(v22 + 5))
          {
            goto LABEL_76;
          }
        }

        if ((*v22 & 0x800) == 0)
        {
          v28 = v22;
          do
          {
LABEL_44:
            v30 = v28;
            v31 = sub_24BBF0BCC(v28, v27);
            v28 = v31;
            v32 = *(v30 + 16);
            if (v32 < v8 || (v33 = *(v31 + 4), v33 > v8))
            {
              if (v32 > v8)
              {
                continue;
              }

              v33 = *(v31 + 4);
              if (v33 < v8)
              {
                continue;
              }
            }

            if (v32 != v33)
            {
              v34 = sub_24BBF1804(v30, v31, v8);
              if (v34 > v21)
              {
                v35 = v27;
              }

              else
              {
                v35 = v25;
              }

              if (v34 > v21)
              {
                v36 = v30;
              }

              else
              {
                v36 = v24;
              }

              if (v34 > v21)
              {
                v37 = v34;
              }

              else
              {
                v37 = v21;
              }

              if (v34 < v20)
              {
                v38 = v27;
              }

              else
              {
                v38 = v23;
              }

              v39 = v68;
              if (v34 < v20)
              {
                v40 = v30;
              }

              else
              {
                v40 = v68;
              }

              if (v34 < v20)
              {
                v41 = v34;
              }

              else
              {
                v41 = v20;
              }

              if (a4)
              {
                v23 = v38;
              }

              else
              {
                v25 = v35;
                v24 = v36;
              }

              if (a4)
              {
                v39 = v40;
              }

              v68 = v39;
              if (a4)
              {
                v20 = v41;
              }

              else
              {
                v21 = v37;
              }
            }
          }

          while ((*v28 & 0x2000) != 0);
          goto LABEL_76;
        }

        if (v27 == 1)
        {
          v29 = sub_24BBF0978(v22);
        }

        else
        {
          v29 = sub_24BBF0A14(v22);
        }

        v28 = v29;
        if ((*v29 & 0x800) == 0)
        {
          v27 ^= 3u;
          goto LABEL_44;
        }
      }

LABEL_76:
      v22 = *(v22 + 1);
      if (!v22)
      {
        *(&v73 + 1) = v68;
        LODWORD(v74) = v23;
        *(&v75 + 1) = v24;
        LODWORD(v76) = v25;
        v19 = qword_28151C008;
        break;
      }
    }
  }

  v42 = *(v19 + 8 * (v64 - 1));
  if (!v42)
  {
    goto LABEL_130;
  }

  v69 = *(&v73 + 1);
  v43 = v74;
  v44 = *(&v75 + 1);
  v45 = v76;
  while (2)
  {
    if (v42 != a1)
    {
      v46 = *v42;
      v47 = (v46 >> 2) & 3;
      if (v47)
      {
        if (v47 == 3)
        {
          if (*(sub_24BBF0BCC(v42, 1) + 5) > *(v42 + 5))
          {
            v47 = 1;
          }

          else
          {
            v47 = 2;
          }

LABEL_89:
          if ((*v42 & 0x800) == 0)
          {
            v48 = v42;
            goto LABEL_96;
          }

          if (v47 == 1)
          {
            v49 = sub_24BBF0978(v42);
          }

          else
          {
            v49 = sub_24BBF0A14(v42);
          }

          v48 = v49;
          if ((*v49 & 0x800) == 0)
          {
            v47 ^= 3u;
            do
            {
LABEL_96:
              v50 = v48;
              v51 = sub_24BBF0BCC(v48, v47);
              v48 = v51;
              v52 = *(v50 + 16);
              if (v52 < v8 || (v53 = *(v51 + 4), v53 > v8))
              {
                if (v52 > v8)
                {
                  continue;
                }

                v53 = *(v51 + 4);
                if (v53 < v8)
                {
                  continue;
                }
              }

              if (v52 != v53)
              {
                v54 = sub_24BBF1804(v50, v51, v8);
                if (v54 > v21)
                {
                  v55 = v47;
                }

                else
                {
                  v55 = v45;
                }

                if (v54 > v21)
                {
                  v56 = v50;
                }

                else
                {
                  v56 = v44;
                }

                if (v54 > v21)
                {
                  v57 = v54;
                }

                else
                {
                  v57 = v21;
                }

                if (v54 < v20)
                {
                  v58 = v47;
                }

                else
                {
                  v58 = v43;
                }

                v59 = v69;
                if (v54 < v20)
                {
                  v60 = v50;
                }

                else
                {
                  v60 = v69;
                }

                if (v54 < v20)
                {
                  v61 = v54;
                }

                else
                {
                  v61 = v20;
                }

                if (a4)
                {
                  v43 = v58;
                }

                else
                {
                  v45 = v55;
                  v44 = v56;
                }

                if (a4)
                {
                  v59 = v60;
                }

                v69 = v59;
                if (a4)
                {
                  v20 = v61;
                }

                else
                {
                  v21 = v57;
                }
              }
            }

            while ((*v48 & 0x2000) != 0);
          }
        }

        else if (*(sub_24BBF0BCC(v42, (v46 >> 2) & 3) + 5) >= *(v42 + 5))
        {
          goto LABEL_89;
        }
      }
    }

    v42 = *(v42 + 1);
    if (v42)
    {
      continue;
    }

    break;
  }

  *(&v73 + 1) = v69;
  LODWORD(v74) = v43;
  *(&v75 + 1) = v44;
  LODWORD(v76) = v45;
LABEL_130:
  LODWORD(v73) = v20;
  LODWORD(v75) = v21;
  if (a4)
  {
    if (v20 == 0x7FFFFFFF)
    {
      if (v21 == 0x80000000)
      {
        v62 = a3;
        goto LABEL_136;
      }

LABEL_140:
      v63 = &v75;
    }

    else
    {
      v63 = &v73;
    }

    v62 = a3;
    return sub_24BBEA114(v62, &v71, v63, a5);
  }

  else
  {
    if (v21 != 0x80000000)
    {
      goto LABEL_140;
    }

    v62 = a3;
    if (v20 != 0x7FFFFFFF)
    {
      v63 = &v73;
      return sub_24BBEA114(v62, &v71, v63, a5);
    }

LABEL_136:
    if (!sub_24BBEA0B0(v62, v64) && !sub_24BBEA0B0(v62, v64 - 1))
    {
      sub_24BBEDB70(-1, 0);
    }

    return 1;
  }
}

uint64_t sub_24BBEA0B0(int a1, int a2)
{
  if (dword_28151C0AC <= a2 && dword_28151C0B4 >= a2)
  {
    for (i = *(qword_28151C008 + 8 * a2); i; i = *(v4 + 8))
    {
      if (*(i + 2) > a1)
      {
        break;
      }

      v4 = *(i + 8);
      if (!v4)
      {
        break;
      }

      if (*(v4 + 2) > a1)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_24BBEA114(int a1, int *a2, int *a3, int a4)
{
  v8 = (*a3 + *a2) >> 17;
  if (sub_24BBEA75C(a1, v8, a2))
  {
    return 1;
  }

  if (a4)
  {
    if (sub_24BBEA75C(a1, v8, a3))
    {
      return 1;
    }

    v10 = (v8 << 16) | 0x8000;
    if (v10 <= *a2)
    {
      v11 = *a3 < *a2;
    }

    else
    {
      v11 = *a3 > *a2;
    }

    if (v11)
    {
      v12 = a3;
    }

    else
    {
      v12 = a2;
    }

    v13 = *(v12 + 1);
    v14 = v12[4];
    v15 = sub_24BBF0AB4(v13, v14);
    v16 = v14 == 1;
    if (v14 == 1)
    {
      v17 = v13;
    }

    else
    {
      v17 = v15;
    }

    if (v16)
    {
      v13 = v15;
    }

    if (*(v17 + 16) == *(v13 + 16))
    {
      return 1;
    }

    v18 = v17;
    if ((*v17 & 0x2000) != 0)
    {
      v18 = sub_24BBF0A14(v17);
    }

    if (v18[11] == v8)
    {
      v19 = sub_24BBF1758(v18);
      if (v19[1] <= a1)
      {
        v20 = *(v19 + 1);
        if (v20)
        {
          if (*(v20 + 2) > a1)
          {
            return 1;
          }
        }
      }
    }

    v21 = v13;
    if ((*v13 & 0x2000) != 0)
    {
      v21 = sub_24BBF0978(v13);
    }

    if (v21[11] == v8)
    {
      v22 = sub_24BBF1758(v21);
      if (v22[1] <= a1)
      {
        v23 = *(v22 + 1);
        if (v23)
        {
          if (*(v23 + 2) > a1)
          {
            return 1;
          }
        }
      }
    }

    if (dword_27F07844C > v8)
    {
      sub_24BBEDB70(-1, 0);
    }

    if (dword_27F078450 < v8)
    {
      sub_24BBEDB70(-1, 0);
    }

    if (dword_28151C0B0 > a1)
    {
      dword_28151C0B0 = a1;
    }

    if (dword_28151C0B8 < a1)
    {
      dword_28151C0B8 = a1;
    }

    if (dword_28151C0AC > v8)
    {
      dword_28151C0AC = v8;
    }

    if (dword_28151C0B4 < v8)
    {
      dword_28151C0B4 = v8;
    }

    v24 = qword_28151BFF8;
    if (qword_28151BFF8 < qword_28151C010)
    {
      sub_24BBEDB70(258, 0);
    }

    qword_28151BFF8 += 24;
    if (v24 >= qword_28151C000)
    {
      if (v24 == qword_28151C000)
      {
        v25 = 260;
      }

      else
      {
        v25 = -1;
      }

      sub_24BBEDB70(v25, 0);
    }

    *(v24 + 8) = 0;
    *(v24 + 16) = 0;
    *v24 = 14336;
    qword_27F078458 = v24;
    qword_27F078460 = v17;
    if ((*(v17 + 25) & 0x10) == 0)
    {
      v26 = qword_28151BFF8;
      if (qword_28151BFF8 < qword_28151C010)
      {
        sub_24BBEDB70(258, 0);
      }

      qword_28151BFF8 += 24;
      if (v26 >= qword_28151C000)
      {
        if (v26 == qword_28151C000)
        {
          v27 = 260;
        }

        else
        {
          v27 = -1;
        }

        sub_24BBEDB70(v27, 0);
      }

      v28 = *v17;
      *(v26 + 16) = *(v17 + 16);
      *v26 = v28;
      if ((*(v17 + 1) & 0x20) == 0)
      {
        v29 = (qword_28151C008 + 8 * *(v17 + 22));
        v30 = *v29;
        if (*v29 != v17)
        {
          do
          {
            v31 = v30;
            v30 = *(v30 + 8);
            if (v30)
            {
              v32 = v30 == v17;
            }

            else
            {
              v32 = 1;
            }
          }

          while (!v32);
          v29 = (v31 + 8);
        }

        *v29 = v26;
      }
    }

    v33 = (a1 << 16) | 0x8000;
    v34 = *(qword_28151C008 + 8 * v8);
    if (v34)
    {
      v35 = v33 | 1;
      v36 = v33 - 1;
      while (1)
      {
        if (v35 < *(v34 + 16))
        {
LABEL_72:
          v39 = 1;
          goto LABEL_83;
        }

        v37 = *(v34 + 8);
        if (!v37)
        {
          sub_24BBEDB70(-1, 0);
        }

        LODWORD(v38) = *(v37 + 16);
        if (v36 <= v38)
        {
          break;
        }

        v34 = *(v37 + 8);
        if (!v34)
        {
          goto LABEL_72;
        }
      }

      if (v35 < v38 && v36 > *(v34 + 16))
      {
        v39 = 0;
LABEL_83:
        if (*(v17 + 16) > v33)
        {
          v42 = 1;
        }

        else
        {
          v42 = -1;
        }

        v43 = -1;
        if (*(v17 + 20) <= v10)
        {
          if (*(v13 + 20) > v10)
          {
            v43 = -1;
          }

          else
          {
            v43 = 1;
          }
        }

        if ((*v17 & 0x2000) == 0)
        {
          sub_24BBE7E30(v42 + v33, v10 - v43);
        }

        v44 = sub_24BBE7DA4(v42 + v33, v10);
        sub_24BBEA8AC(v44);
        sub_24BBE7E30(v33, v43 + v10);
        v45 = v33 - v42;
        v46 = sub_24BBE7DA4(v45, v10);
        sub_24BBEA8AC(v46);
        if ((*v13 & 0x2000) == 0)
        {
          sub_24BBE7E30(v45, v10 - v43);
        }

        v47 = *(v44 + 16);
        v48 = *(v46 + 16);
        if (v47 <= v48)
        {
          v49 = v44;
        }

        else
        {
          v49 = v46;
        }

        if (v47 <= v48)
        {
          v50 = v46;
        }

        else
        {
          v50 = v44;
        }

        *(v49 + 2) = a1;
        sub_24BBEA910(v49);
        *(v50 + 2) = v39 + a1;
        sub_24BBEA910(v50);
        v51 = qword_28151BFF8;
        if (qword_28151BFF8 < qword_28151C010)
        {
          sub_24BBEDB70(258, 0);
        }

        qword_28151BFF8 += 24;
        if (v51 >= qword_28151C000)
        {
          if (v51 == qword_28151C000)
          {
            v52 = 260;
          }

          else
          {
            v52 = -1;
          }

          sub_24BBEDB70(v52, 0);
        }

        *v51 = 12288;
        *(v51 + 8) = 0;
        *(v51 + 16) = 0;
        v53 = qword_27F078460;
        v54 = qword_27F078458;
        if ((*(qword_27F078460 + 25) & 0x10) != 0)
        {
          v56 = qword_27F078458 + 24;
          *(v51 + 16) = qword_27F078460 + 24 + *(qword_27F078460 + 40) - v51;
          v53[10] = v54 - v53;
          v57 = *(v51 + 16);
          if ((*(v51 + v57 - 24) & 0x1000) == 0)
          {
            sub_24BBEDB70(-1, 0);
          }

          *(v51 + v57 - 4) = -v57;
          *(v54 + 20) = v53 - v54;
        }

        else
        {
          *qword_27F078460 |= 0x3000u;
          v53[4] = v54 - v53 + 24;
          v55 = v53 - 6;
          if ((*(v53 - 23) & 0x10) != 0)
          {
            v55 = (v55 + *(v53 - 1));
          }

          v56 = v54 + 48;
          if ((v55[6] & 0x1000) == 0)
          {
            sub_24BBEDB70(-1, 0);
          }

          v55[10] = v54 - v55;
          *(v54 + 20) = v55 - v54;
          v53[5] = v51 - v53 - 24;
          *(v51 + 16) = v53 - v51 + 24;
        }

        v58 = (v56 - 24);
        do
        {
          v59 = v58[12];
          v58 += 12;
          *v58 = v59 | 0x800;
        }

        while (v58 != v51);
        while ((*v17 & 0x1000) != 0)
        {
          v17 += *(v17 + 16);
        }

        while (1)
        {
          v60 = *v13;
          if ((*v13 & 0x1000) == 0)
          {
            break;
          }

          v13 += *(v13 + 16);
        }

        if ((*v17 & 0x2000) != 0)
        {
          v17 = sub_24BBF0A14(v17);
          v60 = *v13;
        }

        if ((v60 & 0x2000) != 0)
        {
          v13 = sub_24BBF0978(v13);
        }

        sub_24BBE94A4(v17, v13);
        return 1;
      }

      while (1)
      {
        v40 = *(v37 + 8);
        if (!v40)
        {
          break;
        }

        v41 = *(v40 + 16);
        if (v38 + 4 < v41)
        {
          break;
        }

        v37 = *(v40 + 8);
        v38 = *(v37 + 16);
        if (v41 + 4 < v38)
        {
          v39 = 0;
          v33 = v41 + 2;
          goto LABEL_83;
        }
      }

      v33 = v38 + 2;
    }

    v39 = 1;
    goto LABEL_83;
  }

  return 0;
}

uint64_t sub_24BBEA75C(int a1, int a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  if (*(a3 + 16) == 1)
  {
    v7 = sub_24BBF0978(v6);
  }

  else
  {
    v7 = sub_24BBF0A14(v6);
  }

  if (v7[11] != a2 || (result = sub_24BBF1758(v7)) == 0)
  {
LABEL_9:
    v10 = *(a3 + 8);
    if ((*v10 & 0x2000) != 0)
    {
      if ((*(a3 + 16) & 3) == 2)
      {
        v10 = sub_24BBF0978(v10);
      }

      else
      {
        v10 = sub_24BBF0A14(v10);
      }
    }

    if (v10[11] != a2)
    {
      return 0;
    }

    result = sub_24BBF1758(v10);
    if (!result)
    {
      return result;
    }

    if (*(result + 2) - 1 == a1)
    {
      goto LABEL_16;
    }

    v9 = *(result + 8);
    if (!v9 || *(v9 + 2) != a1)
    {
      return 0;
    }

LABEL_19:
    *(v9 + 2) = a1 + 1;
    goto LABEL_20;
  }

  if (*(result + 2) - 1 != a1)
  {
    v9 = *(result + 8);
    if (v9 && *(v9 + 2) == a1)
    {
      goto LABEL_19;
    }

    goto LABEL_9;
  }

LABEL_16:
  *(result + 2) = a1;
LABEL_20:
  if (dword_28151C0B0 > a1)
  {
    dword_28151C0B0 = a1;
  }

  if (dword_28151C0B8 < a1)
  {
    dword_28151C0B8 = a1;
  }

  if (dword_28151C0AC > a2)
  {
    dword_28151C0AC = a2;
  }

  if (dword_28151C0B4 < a2)
  {
    dword_28151C0B4 = a2;
  }

  return 1;
}

uint64_t sub_24BBEA8AC(uint64_t result)
{
  if ((*result & 0x2000) == 0)
  {
    v1 = (qword_28151C008 + 8 * *(result + 22));
    v2 = *v1;
    if (*v1)
    {
      v3 = *(result + 16);
      if (*(v2 + 16) <= v3)
      {
        while (1)
        {
          v4 = v2;
          v2 = *(v2 + 8);
          if (!v2)
          {
            break;
          }

          if (*(v2 + 16) > v3)
          {
            goto LABEL_7;
          }
        }
      }

      else
      {
        v4 = 0;
LABEL_7:
        if (!v4)
        {
          goto LABEL_9;
        }
      }

      v1 = (v4 + 8);
    }

LABEL_9:
    *v1 = result;
    *(result + 8) = v2;
  }

  return result;
}

uint64_t sub_24BBEA910(uint64_t result)
{
  v1 = (qword_28151C008 + 8 * *(result + 22));
  while (1)
  {
    v2 = *v1;
    if (!*v1)
    {
      sub_24BBEDB70(-1, 0);
    }

    if (v2 == result)
    {
      break;
    }

    v3 = *(v2 + 8);
    v1 = (v3 + 8);
    if (v3 == result || v3 == 0)
    {
      return result;
    }
  }

  *v2 |= 0x400u;
  return result;
}

uint64_t sub_24BBEA980(uint64_t result, int a2)
{
  if (!result)
  {
    return result;
  }

  if (!a2)
  {
    if ((*result & 0x100) != 0)
    {
      result = sub_24BBF0B64(result);
      if (!result)
      {
        return result;
      }

      goto LABEL_11;
    }

    return 0;
  }

  v2 = *result & 3;
  if (!v2)
  {
    return 0;
  }

  if (v2 == 1)
  {
    result = sub_24BBF0978(result);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = sub_24BBF0A14(result);
    if (!result)
    {
      return result;
    }
  }

LABEL_11:
  result = sub_24BBF1758(result);
  if (!result)
  {
    return 0;
  }

  v3 = *(result + 8);
  if (!v3 || *(result + 2) >= *(v3 + 2))
  {
    return 0;
  }

  return result;
}

uint64_t sub_24BBEA9F8(_WORD *a1, int a2)
{
  v3 = a1;
  if ((*a1 & 0x2000) != 0)
  {
    sub_24BBEDB70(-1, 0);
  }

  memset(v12, 0, sizeof(v12));
  v4 = (a2 << 16) | 0x8000;
  v5 = v12;
  memset(v11, 0, sizeof(v11));
  while (1)
  {
    do
    {
      while (1)
      {
        v6 = v3;
        v7 = sub_24BBF0BCC(v3, 1);
        v3 = v7;
        v8 = *(v6 + 16);
        if (v8 >= v4)
        {
          v9 = *(v7 + 4);
          if (v9 <= v4)
          {
            break;
          }
        }

        if (v8 <= v4)
        {
          v9 = *(v7 + 4);
          if (v9 >= v4)
          {
            break;
          }
        }
      }
    }

    while (v8 == v9);
    *v5 = sub_24BBF1804(v6, v7, (a2 << 16) | 0x8000u);
    v5[1] = v6;
    *(v5 + 4) = 1;
    if (v5 == v11)
    {
      break;
    }

    if ((*v3 & 0x2000) != 0)
    {
      v5 = v11;
    }
  }

  return sub_24BBEA114(a2, v12, v11, 1);
}

unint64_t sub_24BBEAB04(uint64_t a1, int a2)
{
  while (a2 == 3)
  {
    sub_24BBEAB04(a1, 1);
    a2 = 2;
  }

  if (a2 == 1)
  {
    result = sub_24BBF0978(a1);
  }

  else
  {
    result = sub_24BBF0A14(a1);
  }

  if ((*result & 0x400) == 0)
  {
    v5 = *(a1 + 2);
    v6 = *(a1 + 8);
    if (!v6)
    {
      sub_24BBEDB70(-1, 0);
    }

    v7 = *(v6 + 2);
    result = sub_24BBF0AB4(a1, a2);
    v8 = *(a1 + 20);
    if (*(result + 20) > v8)
    {
      v9 = (v8 >> 16) + 1;
    }

    else
    {
      v9 = (v8 >> 16) - 1;
    }

    for (i = *(qword_28151C008 + 8 * v9); i; i = *(v11 + 8))
    {
      if (v7 < *(i + 2))
      {
        break;
      }

      v11 = *(i + 8);
      if (!v11)
      {
        sub_24BBEDB70(-1, 0);
      }

      if (v5 <= *(v11 + 2))
      {
        result = sub_24BBEACBC(a1, i);
        v5 = *(a1 + 2);
        v7 = *(*(a1 + 8) + 2);
      }
    }
  }

  return result;
}

uint64_t sub_24BBEAC14(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2)
  {
    v3 = *(result + 2);
    if (v3 < *(v2 + 2))
    {
      v4 = *(a2 + 8);
      if (v4)
      {
        v5 = *(a2 + 2);
        if (v5 < *(v4 + 2))
        {
          if (v3 <= v5)
          {
            v6 = result;
          }

          else
          {
            v6 = a2;
          }

          if (v3 <= v5)
          {
            v7 = a2;
          }

          else
          {
            v7 = result;
          }

          v8 = *(v6 + 8);
          if (!v8)
          {
            sub_24BBEDB70(-1, 0);
          }

          if (*(v8 + 2) == v7[1])
          {
            v9 = sub_24BBF1758(v7);
            v10 = *(v6 + 8);

            return sub_24BBEACBC(v9, v10);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_24BBEACBC(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (!*(result + 8))
  {
    sub_24BBEDB70(-1, 0);
  }

  if (!*(a2 + 8))
  {
    sub_24BBEDB70(-1, 0);
  }

  v3 = *(result + 2);
  if (v3 < *(*(result + 8) + 2))
  {
    v4 = *(a2 + 2);
    if (v4 < *(*(a2 + 8) + 2))
    {
      if (v3 <= v4)
      {
        v5 = a2;
      }

      else
      {
        result = a2;
        v5 = v2;
      }

      v6 = *(*(result + 8) + 2);
      v7 = *(v5 + 2);
      v8 = v7;
      if (v6 == v7)
      {
        v9 = v6 - 1;
      }

      else
      {
        if (*(result + 20) == *(v5 + 20))
        {
          return result;
        }

        v9 = v6 - 1;
        if (v9 != v7)
        {
          if (v9 == *(result + 2))
          {
            v8 = v6 - 1;
            goto LABEL_18;
          }

          if (*(*(v5 + 8) + 2) - 1 != v7)
          {
            return result;
          }
        }

        v9 = v7;
      }

LABEL_18:

      return sub_24BBEADC8(result, v9, v5, v8);
    }
  }

  return result;
}

uint64_t sub_24BBEADC8(uint64_t a1, int a2, uint64_t a3, int a4)
{
  memset(v22, 0, 13);
  memset(v21, 0, 13);
  sub_24BBEAFA8(v22, a1, a2, a3, a4);
  v8 = &v22[1];
  result = sub_24BBEAFA8(v21, a3, a4, a1, a2);
  v10 = &v21[1];
  v20 = a2;
  v11 = (a2 << 16) | 0x8000;
  while (1)
  {
    v12 = v8 + 1;
    while (1)
    {
      if (*v12 == v10[1])
      {
        if (!*v12)
        {
          return result;
        }

        v24 = __PAIR64__(*(a1 + 20), v11);
        v13 = *(a3 + 20);
        LODWORD(v23) = (a4 << 16) | 0x8000;
        HIDWORD(v23) = v13;
        if (!off_28151BD58)
        {
          sub_24BBEDB70(257, 0);
        }

        off_28151BD58(v24, &v24);
        if (!off_28151BD58)
        {
          sub_24BBEDB70(257, 0);
        }

        off_28151BD58(v23, &v23);
        if (HIDWORD(v24) == HIDWORD(v23))
        {
          v14 = v24 <= v23;
        }

        else
        {
          v14 = SHIDWORD(v24) >= SHIDWORD(v23);
        }

        if (v14)
        {
          v15 = (v10 + 1);
        }

        else
        {
          v15 = (v8 + 1);
        }

        v16 = *v15;
        if (*v15)
        {
          if (v14)
          {
            v17 = v10;
          }

          else
          {
            v17 = v8;
          }

          v18 = v17 + 4;
          do
          {
            *v15 = v16 + 1;
            v15 = (v17 + 4);
            v17 += 3;
            v19 = *v18;
            v18 += 3;
            v16 = v19;
          }

          while (v19);
        }
      }

      if (*v12 > v10[1])
      {
        break;
      }

      result = sub_24BBEB1DC(v21, v10, a3, a4);
      if (result)
      {
        return result;
      }

      v10 += 3;
    }

    result = sub_24BBEB1DC(v22, v8, a1, v20);
    if (result)
    {
      break;
    }

    v8 += 3;
  }

  return result;
}

uint64_t sub_24BBEAFA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  result = sub_24BBEB570(a2, a3, 1);
  *a1 = result;
  if (result == 255)
  {
LABEL_24:
    v27 = (a1 + 2);
  }

  else
  {
    while (1)
    {
      v11 = *(a4 + 20);
      v12 = *(a2 + 20);
      if (!result)
      {
        break;
      }

      v13 = 0;
      v14 = 0;
      v15 = result;
      do
      {
        v13 += 2;
        result = (result >> 6) | (4 * result);
        if ((result & 3) != 0 && result < v15)
        {
          v15 = result;
          v14 = v13;
        }
      }

      while (v13 < 6);
      if ((v15 - 1) <= 1u)
      {
        v18 = sub_24BBEB570(a2, a3, 0);
        result = 0;
        if (!v18)
        {
          continue;
        }
      }

      v19 = dword_24BC0618C[3 * ((v11 >> 16) - (v12 >> 16)) + 4 + a5 - a3];
      v20 = v15 << 8;
      goto LABEL_17;
    }

    v20 = 0;
    v19 = dword_24BC0618C[3 * ((v11 >> 16) - (v12 >> 16)) + 4 + a5 - a3];
    v14 = (6 - v19) & 6;
LABEL_17:
    v21 = 0;
    v22 = (v14 + v19) & 7 | v20;
    for (i = 46; ; i = v24 - 1)
    {
      while (1)
      {
        v24 = (i + v21) >> 1;
        v25 = (&unk_24BC061B0 + 4 * v24);
        v26 = *v25;
        if (v22 <= v26)
        {
          break;
        }

        if (v24 == i)
        {
          goto LABEL_24;
        }

        v21 = v24 + 1;
      }

      if (v22 == v26)
      {
        break;
      }

      if (v24 == v21)
      {
        goto LABEL_24;
      }
    }

    v28 = *(v25 + 2);
    if (v28 == 13)
    {
      v29 = 0;
      v30 = a1 + 1;
      v31 = &unk_24BC0628F + 8 * *(v25 + 3) + 2;
      do
      {
        *v30 = word_24BC06275[v29];
        *(v30 + 2) = (*(v31 - 1) - v14) & 7;
        v30 += 3;
        v32 = *v31;
        v31 += 2;
        v29 = v32;
      }

      while (v32 != 13);
    }

    else
    {
      *(a1 + 1) = word_24BC06275[v28];
      *(a1 + 3) = (*(v25 + 3) - v14) & 7;
      v30 = a1 + 4;
    }

    v27 = (v30 + 1);
  }

  *v27 = 0;
  return result;
}

uint64_t sub_24BBEB1DC(char *a1, unsigned __int8 *a2, uint64_t a3, int a4)
{
  v5 = a3;
  v7 = *(a3 + 22);
  v8 = *a2;
  if (v8 == 2)
  {
    v12 = a2[2];
    result = 1;
    if (v12 <= 4)
    {
      if (v12 != 1)
      {
        if (v12 != 3)
        {
          return result;
        }

        v13 = *(a3 + 8);
        if (!v13)
        {
          sub_24BBEDB70(-1, 0);
        }

        v14 = *(a3 + 2);
        v15 = *(v13 + 2) - 1 != v14 || dword_28151C0B8 == a4;
        if (!v15 && !sub_24BBEA0B0(a4 + 2, v7 - 1) && !sub_24BBEA0B0(a4 + 2, v7) && !sub_24BBEA0B0(a4 + 2, v7 + 1) && !sub_24BBEA0B0(a4 + 1, v7))
        {
          *(v5 + 2) = v14 + 1;
          ++*(v13 + 2);
          return 1;
        }

        return 0;
      }

      if (v7 == dword_28151C0B4 || sub_24BBEA0B0(a4 - 1, v7 + 2) || sub_24BBEA0B0(a4, v7 + 2) || sub_24BBEA0B0(a4 + 1, v7 + 2) || sub_24BBEA0B0(a4, v7 + 1))
      {
        return 0;
      }

      result = sub_24BBEBB64(v5, a4);
      if (!result)
      {
        return result;
      }

      v19 = *a1;
      if ((*a1 & 1) == 0)
      {
        goto LABEL_44;
      }

      if (!sub_24BBEBBD4(a4, v7 + 1))
      {
        v19 = *a1;
LABEL_44:
        if ((v19 & 4) == 0)
        {
          return 0;
        }

        v20 = v7 + 1;
        v21 = a4;
LABEL_69:
        result = sub_24BBEBC84(v21, v20);
        if (!result)
        {
          return result;
        }
      }

LABEL_4:
      v10 = *(v5 + 2);
      if (v10 == a4)
      {
        v11 = *v5;
        if ((*v5 & 0x200) != 0)
        {
          sub_24BBEDB70(-1, 0);
        }

        v23 = v10 + 1;
      }

      else
      {
        v5 = *(v5 + 8);
        if (!v5)
        {
          sub_24BBEDB70(-1, 0);
        }

        if (*(v5 + 2) - 1 != a4)
        {
          sub_24BBEDB70(-1, 0);
        }

        v11 = *v5;
        if ((*v5 & 0x200) != 0)
        {
          sub_24BBEDB70(-1, 0);
        }

        v23 = *(v5 + 2) - 1;
      }

      *(v5 + 2) = v23;
      *v5 = v11 | 0x200;
      return 1;
    }

    if (v12 != 5)
    {
      if (v12 != 7)
      {
        return result;
      }

      v16 = *(a3 + 8);
      if (!v16)
      {
        sub_24BBEDB70(-1, 0);
      }

      v17 = *(a3 + 2);
      v18 = *(v16 + 2) - 1 != v17 || dword_28151C0B0 == a4;
      if (!v18 && !sub_24BBEA0B0(a4 - 2, v7 - 1) && !sub_24BBEA0B0(a4 - 2, v7) && !sub_24BBEA0B0(a4 - 2, v7 + 1) && !sub_24BBEA0B0(a4 - 1, v7))
      {
        *(v5 + 2) = v17 - 1;
        --*(v16 + 2);
        return 1;
      }

      return 0;
    }

    if (v7 == dword_28151C0AC)
    {
      return 0;
    }

    if (sub_24BBEA0B0(a4 - 1, v7 - 2))
    {
      return 0;
    }

    if (sub_24BBEA0B0(a4, v7 - 2))
    {
      return 0;
    }

    if (sub_24BBEA0B0(a4 + 1, v7 - 2))
    {
      return 0;
    }

    v22 = v7 - 1;
    if (sub_24BBEA0B0(a4, v22))
    {
      return 0;
    }

    result = sub_24BBEBB64(v5, a4);
    if (!result)
    {
      return result;
    }

    v24 = *a1;
    if ((*a1 & 0x40) != 0)
    {
      if (sub_24BBEBBD4(a4, v22))
      {
        goto LABEL_4;
      }

      v24 = *a1;
    }

    if ((v24 & 0x10) == 0)
    {
      return 0;
    }

    v21 = a4;
    v20 = v22;
    goto LABEL_69;
  }

  if (v8 != 1)
  {
    sub_24BBEDB70(-1, 0);
  }

  result = sub_24BBEBB64(a3, a4);
  if (result)
  {
    goto LABEL_4;
  }

  return result;
}

uint64_t sub_24BBEB570(uint64_t a1, int a2, int a3)
{
  v6 = *(a1 + 22);
  v7 = *(a1 + 8);
  if (!v7)
  {
    sub_24BBEDB70(-1, 0);
  }

  if (*(a1 + 16) == *(v7 + 16))
  {
    return 255;
  }

  v8 = *(qword_28151C008 + 8 * *(a1 + 22));
  if (v8 == v7)
  {
    v14 = 0;
  }

  else
  {
    v9 = 1;
    v10 = 1;
    do
    {
      if (!v8)
      {
        sub_24BBEDB70(-1, 0);
      }

      LOWORD(v11) = *v8;
      if ((*v8 & 4) != 0)
      {
        v12 = sub_24BBF0978(v8);
        v11 = *v8;
        if (*(v12 + 4) > *(a1 + 16))
        {
          if (((v11 ^ *v12) & 0x400) == 0)
          {
            return 255;
          }

          if (*(sub_24BBF0AB4(v8, 1) + 20) <= *(a1 + 20))
          {
            v9 = 0;
          }

          else
          {
            v10 = 0;
          }

          LOWORD(v11) = *v8;
        }
      }

      if ((v11 & 8) != 0)
      {
        v13 = sub_24BBF0A14(v8);
        if (*(v13 + 4) > *(a1 + 16))
        {
          if (((*v8 ^ *v13) & 0x400) == 0)
          {
            return 255;
          }

          if (*(sub_24BBF0AB4(v8, 2) + 20) <= *(a1 + 20))
          {
            v9 = 0;
          }

          else
          {
            v10 = 0;
          }
        }
      }

      v8 = *(v8 + 1);
    }

    while (v8 != v7);
    v14 = v10 == 0;
    if (!v9)
    {
      if ((*a1 & 3) != 0 || (*v7 & 3) != 0)
      {
        return 255;
      }

      v15 = 0;
      v16 = 0;
      v43 = 0;
      v17 = 1;
      goto LABEL_60;
    }
  }

  v18 = *(qword_28151C008 + 8 * v6);
  if (v18 == v7)
  {
    goto LABEL_95;
  }

  v15 = 0;
  v19 = 0x80000000;
  do
  {
    if (!v18)
    {
      sub_24BBEDB70(-1, 0);
    }

    if ((*v18 & 3) != 0)
    {
      v20 = (*v18 & 3) == 1 ? sub_24BBF0978(v18) : sub_24BBF0A14(v18);
      if (*(v20 + 16) > v19)
      {
        v15 = v18;
        v19 = *(v20 + 16);
      }
    }

    v18 = *(v18 + 8);
  }

  while (v18 != v7);
  if (!v15)
  {
    goto LABEL_95;
  }

  v21 = *(v15 + 8);
  if (!v21)
  {
    goto LABEL_95;
  }

  v22 = a3;
  v23 = v14;
  v16 = 0;
  v24 = 0x7FFFFFFF;
  do
  {
    if ((*v21 & 3) != 0)
    {
      v25 = (*v21 & 3) == 1 ? sub_24BBF0978(v21) : sub_24BBF0A14(v21);
      if (*(v25 + 16) < v24)
      {
        v16 = v21;
        v24 = *(v25 + 16);
      }
    }

    v21 = *(v21 + 8);
  }

  while (v21);
  v14 = v23;
  a3 = v22;
  if (!v16)
  {
    goto LABEL_95;
  }

  if ((*v15 & 3) == 1)
  {
    v26 = sub_24BBF0978(v15);
  }

  else
  {
    v26 = sub_24BBF0A14(v15);
  }

  v27 = v26;
  if ((*v16 & 3) == 1)
  {
    v28 = sub_24BBF0978(v16);
  }

  else
  {
    v28 = sub_24BBF0A14(v16);
  }

  if ((*v27 & 0x400) == 0)
  {
    return 255;
  }

  if ((*v28 & 0x400) != 0)
  {
    return 255;
  }

  if (*(v27 + 16) >= *(v28 + 16))
  {
    return 255;
  }

  v43 = sub_24BBEBA08(v27, v28, a2, -1, v22);
  if (v43 == 255)
  {
    return 255;
  }

  v17 = 0;
LABEL_60:
  if (!v14)
  {
    v32 = *(qword_28151C008 + 8 * v6);
    if (v32 != v7)
    {
      v33 = 0;
      v34 = 0x80000000;
      do
      {
        if (!v32)
        {
          sub_24BBEDB70(-1, 0);
        }

        if ((*v32 & 0x100) != 0)
        {
          v35 = *(sub_24BBF0B64(v32) + 16);
          if (v35 > v34)
          {
            v33 = v32;
            v34 = v35;
          }
        }

        v32 = *(v32 + 8);
      }

      while (v32 != v7);
      if (v33)
      {
        v36 = *(v33 + 8);
        if (v36)
        {
          v37 = 0;
          v38 = 0x7FFFFFFF;
          do
          {
            if ((*v36 & 0x100) != 0)
            {
              v39 = *(sub_24BBF0B64(v36) + 16);
              if (v39 < v38)
              {
                v37 = v36;
                v38 = v39;
              }
            }

            v36 = *(v36 + 8);
          }

          while (v36);
          if (v37)
          {
            v29 = v33;
            v31 = v37;
            if ((v17 & 1) == 0)
            {
              if (*(v33 + 16) >= *(v15 + 16))
              {
                v29 = v15;
              }

              else
              {
                v29 = v33;
              }

              if (*(v37 + 16) <= *(v16 + 16))
              {
                v31 = v16;
              }

              else
              {
                v31 = v37;
              }
            }

            v40 = sub_24BBF0B64(v33);
            v41 = sub_24BBF0B64(v37);
            if ((*v40 & 0x400) == 0)
            {
              return 255;
            }

            if ((*v41 & 0x400) != 0)
            {
              return 255;
            }

            if (*(v40 + 16) >= *(v41 + 16))
            {
              return 255;
            }

            v43 |= sub_24BBEBA08(v40, v41, a2, 1, a3);
            if (v43 == 255)
            {
              return 255;
            }

            goto LABEL_98;
          }
        }
      }
    }

LABEL_95:
    sub_24BBEDB70(-1, 0);
  }

  if ((*a1 & 0x100) != 0 || (*v7 & 0x100) != 0)
  {
    return 255;
  }

  if (v17)
  {
    v29 = *(qword_28151C008 + 8 * v6);
    v30 = v29;
    do
    {
      v31 = v30;
      v30 = *(v30 + 1);
    }

    while (v30);
  }

  else
  {
    v29 = v15;
    v31 = v16;
  }

LABEL_98:
  if ((*v29 & 0x400) == 0)
  {
    return 255;
  }

  if ((*v31 & 0x400) != 0)
  {
    return 255;
  }

  result = sub_24BBEBA08(v29, v31, a2, 0, a3) | v43;
  if (result == 255)
  {
    return 255;
  }

  return result;
}

uint64_t sub_24BBEBA08(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  if (*(a2 + 16) >= *(a1 + 16))
  {
    v7 = a1;
    v5 = 0;
    v8 = 0;
    while (1)
    {
      v9 = *(v7 + 8);
      if (!v9)
      {
        sub_24BBEDB70(-1, 0);
      }

      v10 = *(v9 + 2) - a3 - 1;
      LODWORD(v11) = *(v7 + 2) - a3;
      if (a5)
      {
        if ((*v9 & 0x200) != 0)
        {
          v10 = *(v9 + 2) - a3;
        }

        LODWORD(v11) = v11 + ((*v7 << 6) >> 15);
      }

      if (v10 >= 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v10;
      }

      if (v11 < 0)
      {
        v13 = -1;
      }

      else
      {
        v13 = v11;
      }

      if ((*v9 & 0xC) != 0)
      {
        goto LABEL_18;
      }

      if (v10)
      {
        break;
      }

      if (a4)
      {
        v16 = v8 == 0;
      }

      else
      {
        v16 = 0;
      }

      v14 = v16;
LABEL_19:
      if (v13 <= v12)
      {
        if (v11 < 0)
        {
          LODWORD(v11) = -1;
        }

        v11 = v11;
        do
        {
          v5 |= byte_24BC0626C[3 * a4 + 4 + v11];
        }

        while (v11++ < v12);
      }

      if (!v14)
      {
        return v5;
      }

LABEL_25:
      if (v9 != a2)
      {
        v7 = *(v9 + 8);
        if (v7)
        {
          continue;
        }
      }

      return v5;
    }

    if (v10 == -1)
    {
      v8 = 1;
      v14 = 1;
      if (!a4)
      {
        goto LABEL_25;
      }

      goto LABEL_19;
    }

LABEL_18:
    v14 = 1;
    goto LABEL_19;
  }

  return 0;
}

BOOL sub_24BBEBB64(uint64_t a1, int a2)
{
  if (*(a1 + 2) != a2)
  {
    v2 = *(a1 + 8);
    if (!v2)
    {
      sub_24BBEDB70(-1, 0);
    }

    return v2[1] - 1 == a2 && (*v2 & 0x200) == 0;
  }

  return (*a1 & 0x200) == 0;
}

uint64_t sub_24BBEBBD4(int a1, int a2)
{
  v2 = *(qword_28151C008 + 8 * a2);
  if (!v2)
  {
    return 0;
  }

  while (1)
  {
    v3 = *(v2 + 8);
    if (!v3)
    {
      sub_24BBEDB70(-1, 0);
    }

    v4 = *(v3 + 2);
    if (v4 == a1)
    {
      break;
    }

    if ((*v3 & 0x200) != 0 && a1 - 1 == v4 && *(v2 + 2) >= v4)
    {
      *(v2 + 2) = a1;
      *v2 |= 0x200u;
      *v3 &= ~0x200u;
      break;
    }

    v2 = *(v3 + 8);
    if (!v2)
    {
      return 0;
    }
  }

  *(v3 + 2) = a1 + 1;
  return 1;
}

uint64_t sub_24BBEBC84(int a1, int a2)
{
  v2 = *(qword_28151C008 + 8 * a2);
  if (!v2)
  {
    return 0;
  }

  v3 = a1 + 1;
  while (v3 != v2[1])
  {
    v4 = *(v2 + 1);
    if (!v4)
    {
      sub_24BBEDB70(-1, 0);
    }

    v5 = *v2;
    if ((*v2 & 0x200) != 0)
    {
      v6 = v2[1];
      if (a1 + 2 == v6 && v6 >= *(v4 + 2))
      {
        *(v4 + 2) = v3;
        *v2 = v5 & 0xFDFF;
        *v4 |= 0x200u;
        break;
      }
    }

    v2 = *(v4 + 8);
    if (!v2)
    {
      return 0;
    }
  }

  v2[1] = a1;
  return 1;
}

void *sub_24BBEBD3C(uint64_t a1, uint64_t a2)
{
  result = sub_24BBE2254(a1, a2);
  *result = &unk_285F89990;
  return result;
}

void sub_24BBEBD74(MCacheData *a1)
{
  sub_24BBEDC50(a1);

  JUMPOUT(0x24C252120);
}

uint64_t sub_24BBEBDE4(uint64_t a1, void *a2, _WORD *a3, void *a4)
{
  v4 = *(a1 + 48);
  v5 = *(v4 + 146);
  *a3 = v5;
  v8 = v4 + 112;
  v6 = *(v4 + 112);
  v7 = *(v8 + 8);
  *a2 = v6;
  *a4 = v6 + v7;
  if (*a2)
  {
    v9 = v5 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    return v6 + v5 + v5 * *(*(a1 + 48) + 144);
  }

  result = 0;
  *a4 = 0;
  return result;
}

uint64_t sub_24BBEBE40(uint64_t a1, _WORD *a2, void *a3, void *a4, void *a5, void *a6)
{
  v6 = *(a1 + 48);
  result = *(v6 + 320);
  if (result && (v8 = *(v6 + 317), v9 = *(v6 + 328), v10 = *(v6 + 317) + *(v6 + 318) * *(v6 + 317), v9 > v10))
  {
    v11 = result + v10;
    *a2 = v8;
    *a3 = v11;
    *a4 = v11;
    v12 = result + v9;
  }

  else
  {
    v12 = 0;
    result = 0;
    *a2 = 0;
    *a3 = 0;
    *a4 = 0;
  }

  *a5 = v12;
  *a6 = v12;
  return result;
}

void *sub_24BBEBE9C(void *a1, uint64_t a2, int a3, int a4)
{
  v8 = sub_24BBD6E88(a1);
  *v8 = &unk_285F89B60;
  v9 = v8 + 1;
  sub_24BBE293C(v8 + 1, 12 * a3 + 4, 0);
  v10 = *v9;
  **v9 = 256;
  v21 = 0;
  v20 = 0u;
  memset(v19, 0, sizeof(v19));
  v11 = (*(*a2 + 280))(a2);
  sub_24BBF2BA4(v19, v11, 1751672161);
  v12 = *(&v20 + 1);
  if (*(&v20 + 1))
  {
    v10[2] = *(*(&v20 + 1) + 4);
    v10[3] = *(v12 + 6);
    v13 = *(v12 + 8);
  }

  else
  {
    v14 = (*(*a2 + 88))(a2);
    v13 = 0;
    v15 = *(v14 + 94);
    v10[2] = bswap32(*(v14 + 100) + 0xFFFF);
    v10[3] = bswap32(v15) >> 16;
  }

  v10[4] = v13;
  v16 = bswap32(18 * (-a4 >> 8)) >> 16;
  if (a4)
  {
    v17 = -6141;
  }

  else
  {
    v17 = 256;
  }

  v10[5] = v17;
  if (!a4)
  {
    LOWORD(v16) = 0;
  }

  v10[6] = v16;
  v10[7] = 0;
  sub_24BBE28C0(v19);
  return a1;
}

void sub_24BBEC038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_24BBE28C0(&a9);
  sub_24BBEC42C(v10);
  nullsub_1(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_24BBEC070(void *a1)
{
  *a1 = &unk_285F89B60;
  sub_24BBEC42C(a1 + 1);

  return nullsub_1(a1);
}

void sub_24BBEC0C4(void *a1)
{
  *a1 = &unk_285F89B60;
  sub_24BBEC42C(a1 + 1);
  v2 = nullsub_1(a1);

  sub_24BBD7160(v2);
}

void *sub_24BBEC128(void *a1, uint64_t a2, unsigned int a3)
{
  v6 = sub_24BBE06EC(a1);
  *v6 = &unk_285F89B88;
  v7 = v6 + 1;
  sub_24BBE293C(v6 + 1, 50 - 8 * a3, 0);
  v8 = *v7;
  *v8 = 512;
  *(v8 + 4) = 0;
  *(v8 + 6) = bswap32(a3) >> 16;
  v15 = 0;
  v14 = 0u;
  memset(v13, 0, sizeof(v13));
  v9 = (*(*a2 + 280))(a2);
  sub_24BBF2BA4(v13, v9, 1986553185);
  v10 = *(&v14 + 1);
  if (*(&v14 + 1))
  {
    *(v8 + 8) = *(*(&v14 + 1) + 4);
    *(v8 + 10) = bswap32((bswap32(v10[3]) >> 16) - (bswap32(v10[4]) >> 16)) >> 16;
    *(v8 + 12) = v10[9];
    v11 = v10[10];
  }

  else
  {
    *(v8 + 8) = 218035201;
    *(v8 + 12) = 0;
    v11 = 256;
  }

  *(v8 + 14) = v11;
  *(v8 + 16) = xmmword_24BC062D0;
  *(v8 + 32) = -4194304000;
  *(v8 + 40) = 0;
  sub_24BBE28C0(v13);
  return a1;
}

uint64_t sub_24BBEC2C8(void *a1)
{
  *a1 = &unk_285F89B88;
  sub_24BBEC42C(a1 + 1);

  return nullsub_1(a1);
}

void sub_24BBEC31C(void *a1)
{
  *a1 = &unk_285F89B88;
  sub_24BBEC42C(a1 + 1);
  v2 = nullsub_1(a1);

  sub_24BBD7160(v2);
}

void *sub_24BBEC380(uint64_t a1)
{
  v2 = sub_24BBD6D84(0x10u);
  sub_24BBEBE9C(v2, a1, *(*(a1 + 48) + 150), *(*(a1 + 48) + 152));
  return v2;
}

void *sub_24BBEC3D8(uint64_t a1)
{
  v2 = sub_24BBD6D84(0x10u);
  sub_24BBEC128(v2, a1, *(*(a1 + 48) + 150));
  return v2;
}

void *sub_24BBEC42C(void *a1)
{
  if (*a1)
  {
    (*(*qword_28151C040 + 32))(qword_28151C040);
  }

  return a1;
}

void sub_24BBEC4A4(MCacheData *a1)
{
  sub_24BBF33EC(a1);

  JUMPOUT(0x24C252120);
}

void *sub_24BBEC4DC(uint64_t a1, uint64_t a2)
{
  result = sub_24BBE28EC(a1, a2);
  *result = &unk_285F89BE0;
  return result;
}

uint64_t sub_24BBEC51C(void *a1, unsigned int a2, _BYTE *a3)
{
  v5 = *(*(a1[6] + 104) + 8 * a2);
  if (v5 >= 0x64)
  {
    v6 = v5 - 100;
  }

  else
  {
    v6 = 0;
  }

  if (v5 >= 0x64)
  {
    v7 = 100;
  }

  else
  {
    v7 = v5;
  }

  v17 = 0;
  v16 = 0u;
  memset(v15, 0, sizeof(v15));
  v8 = (*(*a1 + 280))(a1);
  v9 = (*(*a1 + 176))(a1);
  sub_24BBE2A94(v15, v8, v9, v6, v7);
  v10 = *(&v16 + 1) + v7;
  v11 = *(&v16 + 1) + v7 - 1;
  while (v11 > *(&v16 + 1))
  {
    if (*(v10 - 1) == 47 && *(v10 - 2) <= 0x20u)
    {
      v12 = 0;
      LOBYTE(v13) = 47;
      do
      {
        a3[v12 + 1] = v13;
        v13 = *(v10 + v12++);
      }

      while (v13 > 0x20);
      *a3 = v12;
      return sub_24BBE28C0(v15);
    }

    v11 = v10 - 2;
    --v10;
  }

  return sub_24BBE28C0(v15);
}

void sub_24BBEC65C(MCacheData *this)
{
  *this = &unk_285F89D48;
  v2 = *(this + 5);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    j__free(v4);
  }

  v5 = *(this + 2);
  if (v5)
  {
    sub_24BBECA0C(v5);
  }

  MCacheData::~MCacheData(this);
}

uint64_t sub_24BBEC75C(uint64_t result, int *a2, int *a3)
{
  v4 = a2[1];
  if (v4 == 1885434984)
  {
    v7 = 1024;
    goto LABEL_21;
  }

  if (v4 != 1651335536)
  {
    goto LABEL_22;
  }

  v5 = *a2;
  if (!*(a2 + 1))
  {
    if (v5 == 1668112752)
    {
      v6 = 0;
    }

    else
    {
      if (v5 != 1836343917)
      {
        goto LABEL_22;
      }

      v6 = 36;
    }

    v8 = 1;
    v9 = 32;
    goto LABEL_15;
  }

  if (v5 == 1885960244)
  {
    v6 = 0;
    goto LABEL_12;
  }

  if (v5 != 1836087348)
  {
LABEL_22:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BBE0934(exception, 13);
    __cxa_throw(exception, &unk_285F89D90, nullsub_8);
  }

  v6 = 36;
LABEL_12:
  v8 = 4;
  v9 = 40;
LABEL_15:
  v10 = (*(**(result + v9) + 64))(*(result + v9));
  result = (*(*v10 + 16))(v10);
  v11 = ((*(result + 736) + 0x8000) >> 16) - *(result + 730);
  v13 = v11 + 7;
  if (v11 < -7)
  {
    v13 = v11 + 14;
  }

  v14 = v13 >> 3;
  if (v11 <= 16)
  {
    v15 = v14;
  }

  else
  {
    v15 = ((v11 + 31) >> 3) & 0xFFFFFFC;
  }

  v12 = (((*(result + 740) + 0x8000) >> 16) - *(result + 734)) / v8;
  v7 = (((v15 * v12) / 9) & 1) + (v15 * v12) / 9 + v6;
LABEL_21:
  *a3 = v7;
  a3[1] = 0;
  return result;
}

void sub_24BBEC970(uint64_t a1, _DWORD *a2, int *a3)
{
  if (*a2 == 1835430499)
  {
    v3 = 24;
  }

  else
  {
    if (*a2 != 1836213362)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      sub_24BBE0934(exception, 12);
      __cxa_throw(exception, &unk_285F89D90, nullsub_8);
    }

    v3 = 36;
  }

  *a3 = v3;
  a3[1] = 1;
}

void sub_24BBECA0C(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t sub_24BBECA78(uint64_t result, uint64_t a2)
{
  *result = &unk_285F89D80;
  *(result + 8) = *(a2 + 8);
  return result;
}

void sub_24BBECAB8(TDefaultHeap *a1)
{
  TDefaultHeap::~TDefaultHeap(a1);

  JUMPOUT(0x24C252120);
}

uint64_t sub_24BBECAF8(int32x2_t *a1, int a2, void *a3, uint64_t (*a4)(void *, uint64_t), uint64_t (*a5)(void *, uint64_t *, uint64_t *, uint64_t *, uint64_t), uint64_t a6, uint64_t a7, int a8, int a9)
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v171[0] = 0;
  if (a2 >= 0)
  {
    v14 = a2;
  }

  else
  {
    v14 = -a2;
  }

  v15 = v14 / 0x64;
  v17 = a1[2].u32[0];
  v16 = a1[2].u32[1];
  v19 = a1[3].u32[0];
  v18 = a1[3].u32[1];
  v21 = a1[6].i32[0];
  v20 = a1[6].u32[1];
  v22 = a1[7].u32[1];
  v170 = a1[7].u32[0];
  v23 = a1[8].u32[0];
  v24 = a1[8].u32[1];
  v25 = a1[1];
  v26 = a1[5];
  v27 = vabd_s32(v25, v26);
  v28 = vcgt_u32(vdup_lane_s32(v27, 1), v27).u8[0];
  if (*qword_28151BD48 == 1)
  {
    v29 = 0;
    v31 = 0;
    v30 = 1;
  }

  else if (*qword_28151BD48 == 2)
  {
    v29 = 0;
    v30 = 0;
    v31 = 1;
  }

  else
  {
    v31 = 0;
    v30 = 0;
    v29 = 1;
  }

  v32 = a1[9];
  if (v28)
  {
    v33 = v26.u32[1];
    if (v26.i32[1] == v24)
    {
      v34 = 1;
    }

    else
    {
      v34 = v29;
    }

    v35 = v26.i32[0];
    if ((v34 & 1) == 0)
    {
      v145 = v25.i32[0];
      v134 = v25.u32[1];
      v36 = (v25.i32[1] - v24) / (v26.i32[1] - v24) * 65536.0;
      v37 = 0.5;
      if (v36 >= 0.0)
      {
        v38 = 0.5;
      }

      else
      {
        v38 = -0.5;
      }

      v39 = v36 + v38;
      v157 = v17;
      if (v39 >= 2147483650.0)
      {
        v40 = 0x7FFFFFFF;
      }

      else if (v39 <= -2147483650.0)
      {
        v40 = 0x80000000;
      }

      else
      {
        v40 = v39;
      }

      v47 = a1->i32[1];
      v48 = a1[4].i32[1];
      if (v40 < 0)
      {
        v40 = -v40;
      }

      v160 = v16;
      v162 = v18;
      v49 = v40;
      v50 = (v16 - v24) * v40 * 0.0000152587891;
      if (v50 >= 0.0)
      {
        v51 = 0.5;
      }

      else
      {
        v51 = -0.5;
      }

      v52 = v50 + v51;
      if (v52 > -2147483650.0)
      {
        v53 = v52;
      }

      else
      {
        v53 = 0x80000000;
      }

      if (v52 < 2147483650.0)
      {
        v54 = v53;
      }

      else
      {
        v54 = 0x7FFFFFFF;
      }

      v55 = (v18 - v24) * v49 * 0.0000152587891;
      if (v55 >= 0.0)
      {
        v56 = 0.5;
      }

      else
      {
        v56 = -0.5;
      }

      v57 = v55 + v56;
      if (v57 > -2147483650.0)
      {
        v58 = v57;
      }

      else
      {
        v58 = 0x80000000;
      }

      if (v57 < 2147483650.0)
      {
        v59 = v58;
      }

      else
      {
        v59 = 0x7FFFFFFF;
      }

      v168 = v20;
      v60 = (v20 - v24) * v49 * 0.0000152587891;
      if (v60 >= 0.0)
      {
        v61 = 0.5;
      }

      else
      {
        v61 = -0.5;
      }

      v62 = v60 + v61;
      if (v62 > -2147483650.0)
      {
        v63 = v62;
      }

      else
      {
        v63 = 0x80000000;
      }

      if (v62 < 2147483650.0)
      {
        v64 = v63;
      }

      else
      {
        v64 = 0x7FFFFFFF;
      }

      v65 = (v22 - v24) * v49 * 0.0000152587891;
      if (v65 < 0.0)
      {
        v37 = -0.5;
      }

      v66 = v65 + v37;
      v138 = v24;
      v147 = v22;
      if (v66 >= 2147483650.0)
      {
        v67 = 0x7FFFFFFF;
      }

      else if (v66 <= -2147483650.0)
      {
        v67 = 0x80000000;
      }

      else
      {
        v67 = v66;
      }

      v137 = v30;
      v87 = v15;
      v142 = v19;
      v164 = v21;
      v88 = v54 + v138;
      v89 = v59 + v138;
      v90 = v64 + v138;
      v91 = v67 + v138;
      LODWORD(v171[0]) = 0;
      HIDWORD(v171[0]) = (v48 - v47 + 0x8000) & 0xFFFF0000;
      if (!off_28151BD60)
      {
        sub_24BBEDB70(257, 0);
      }

      off_28151BD60(v171[0], v171);
      v92 = v171[0];
      if (v137)
      {
        v92 = HIDWORD(v171[0]);
      }

      if (v92 < 0)
      {
        v92 = -v92;
      }

      if (v92 >= v87)
      {
        v16 = v160;
      }

      else
      {
        v16 = v88;
      }

      if (v92 >= v87)
      {
        v18 = v162;
      }

      else
      {
        v18 = v89;
      }

      if (v92 >= v87)
      {
        v93 = v33;
      }

      else
      {
        v35 = v145;
        v93 = v134;
      }

      if (v92 >= v87)
      {
        v20 = v168;
      }

      else
      {
        v20 = v90;
      }

      if (v92 >= v87)
      {
        v94 = v147;
      }

      else
      {
        v94 = v91;
      }

      v22 = v94;
      if (v93 - v134 >= 0)
      {
        v95 = v93 - v134;
      }

      else
      {
        v95 = v134 - v93;
      }

      v21 = v164;
      v19 = v142;
      v17 = v157;
      if (v95 >= 0x43)
      {
        v159 = v16;
        v163 = v18;
        v169 = v20;
        v24 = v138;
        if (!off_28151BD50)
        {
          sub_24BBEDB70(257, 0);
        }

        off_28151BD50(v145 | (v134 << 32));
        v104 = v171[0];
        v105 = HIDWORD(v171[0]);
        if (v137)
        {
          v106 = HIDWORD(v171[0]);
        }

        else
        {
          v106 = v171[0];
        }

        LODWORD(v171[0]) = 0;
        HIDWORD(v171[0]) = (v93 - v134 + 0x8000) & 0xFFFF0000;
        if (!off_28151BD60)
        {
          sub_24BBEDB70(257, 0);
        }

        off_28151BD60(v171[0], v171);
        v12 = a3;
        v110 = v171;
        if (v137)
        {
          v110 = v171 + 1;
        }

        v111 = *v110;
        v112 = v111 + 0x8000;
        if (v111 < 0)
        {
          v113 = -65536;
        }

        else
        {
          v113 = 0x10000;
        }

        v114 = v112 & 0xFFFF0000;
        if (v114)
        {
          v113 = v114;
        }

        v115 = a9 == 0;
        v116 = a8 >= 0x8000;
        v117 = v106 - 0x8000;
        if (!v116 || !v115)
        {
          v117 = v106;
        }

        v118 = ((v113 + v117 + 0xFFFF) & 0xFFFF0000) - (v113 + v117) + ((v113 + v117) & 0xFFFF0000);
        if (v116 && v115)
        {
          v118 += 0x8000;
        }

        if (v137)
        {
          v119 = v104;
        }

        else
        {
          v119 = v118;
        }

        if (!v137)
        {
          v118 = v105;
        }

        v171[0] = __PAIR64__(v118, v119);
        if (!off_28151BD58)
        {
          sub_24BBEDB70(257, 0);
        }

        off_28151BD58(v171[0], v171);
        v9 = a6;
        v33 = HIDWORD(v171[0]);
        v18 = (HIDWORD(v171[0]) - v93 + v163);
        v20 = (HIDWORD(v171[0]) - v93 + v169);
        v11 = a4;
        v10 = a5;
        v21 = v164;
        v19 = v142;
LABEL_215:
        v16 = v159;
        v17 = v157;
        goto LABEL_216;
      }

      v33 = v93;
      v12 = a3;
      v9 = a6;
      v11 = a4;
      v10 = a5;
      v24 = v138;
    }
  }

  else
  {
    v35 = v26.i32[0];
    if (v26.i32[0] == v23)
    {
      v41 = 1;
    }

    else
    {
      v41 = v29;
    }

    v33 = v26.u32[1];
    if ((v41 & 1) == 0)
    {
      v146 = v25.u32[1];
      v136 = v25.u32[0];
      v42 = (v25.i32[0] - v23) / (v26.i32[0] - v23) * 65536.0;
      v43 = 0.5;
      if (v42 >= 0.0)
      {
        v44 = 0.5;
      }

      else
      {
        v44 = -0.5;
      }

      v45 = v42 + v44;
      v167 = v20;
      v159 = v16;
      v161 = v18;
      if (v45 >= 2147483650.0)
      {
        v46 = 0x7FFFFFFF;
      }

      else if (v45 <= -2147483650.0)
      {
        v46 = 0x80000000;
      }

      else
      {
        v46 = v45;
      }

      if (v46 < 0)
      {
        v46 = -v46;
      }

      v158 = v17;
      v68 = v46;
      v69 = (v17 - v23) * v46 * 0.0000152587891;
      if (v69 >= 0.0)
      {
        v70 = 0.5;
      }

      else
      {
        v70 = -0.5;
      }

      v71 = v69 + v70;
      if (v71 > -2147483650.0)
      {
        v72 = v71;
      }

      else
      {
        v72 = 0x80000000;
      }

      if (v71 < 2147483650.0)
      {
        v73 = v72;
      }

      else
      {
        v73 = 0x7FFFFFFF;
      }

      v74 = (v19 - v23) * v68 * 0.0000152587891;
      if (v74 >= 0.0)
      {
        v75 = 0.5;
      }

      else
      {
        v75 = -0.5;
      }

      v76 = v74 + v75;
      if (v76 > -2147483650.0)
      {
        v77 = v76;
      }

      else
      {
        v77 = 0x80000000;
      }

      if (v76 < 2147483650.0)
      {
        v78 = v77;
      }

      else
      {
        v78 = 0x7FFFFFFF;
      }

      v79 = (v21 - v23) * v68 * 0.0000152587891;
      if (v79 >= 0.0)
      {
        v80 = 0.5;
      }

      else
      {
        v80 = -0.5;
      }

      v81 = v79 + v80;
      if (v81 > -2147483650.0)
      {
        v82 = v81;
      }

      else
      {
        v82 = 0x80000000;
      }

      if (v81 < 2147483650.0)
      {
        v83 = v82;
      }

      else
      {
        v83 = 0x7FFFFFFF;
      }

      v84 = (v170 - v23) * v68 * 0.0000152587891;
      if (v84 < 0.0)
      {
        v43 = -0.5;
      }

      v85 = v84 + v43;
      v148 = v22;
      if (v85 >= 2147483650.0)
      {
        v86 = 0x7FFFFFFF;
      }

      else if (v85 <= -2147483650.0)
      {
        v86 = 0x80000000;
      }

      else
      {
        v86 = v85;
      }

      v139 = v31;
      v96 = v15;
      v97 = v19;
      v165 = v21;
      v98 = v73 + v23;
      v99 = v78 + v23;
      v143 = v83 + v23;
      v135 = v86 + v23;
      v171[0] = (a1[4].i32[0] - a1->i32[0] + 0x8000) & 0xFFFF0000;
      if (!off_28151BD60)
      {
        sub_24BBEDB70(257, 0);
      }

      off_28151BD60(v171[0], v171);
      v100 = HIDWORD(v171[0]);
      if (!v139)
      {
        v100 = v171[0];
      }

      if (v100 < 0)
      {
        v100 = -v100;
      }

      v17 = v158;
      if (v100 >= v96)
      {
        v19 = v97;
      }

      else
      {
        v17 = v98;
        v19 = v99;
      }

      if (v100 >= v96)
      {
        v101 = v35;
      }

      else
      {
        v101 = v136;
      }

      if (v100 >= v96)
      {
        v33 = v33;
      }

      else
      {
        v33 = v146;
      }

      if (v100 >= v96)
      {
        v21 = v165;
      }

      else
      {
        v21 = v143;
      }

      v102 = v170;
      if (v100 < v96)
      {
        v102 = v135;
      }

      v170 = v102;
      if ((v101 - v136) >= 0)
      {
        v103 = v101 - v136;
      }

      else
      {
        v103 = v136 - v101;
      }

      v20 = v167;
      v16 = v159;
      v18 = v161;
      if (v103 >= 0x43)
      {
        v157 = v17;
        v144 = v19;
        v166 = v21;
        v22 = v148;
        if (!off_28151BD50)
        {
          sub_24BBEDB70(257, 0);
        }

        off_28151BD50(v136 | (v146 << 32));
        v108 = v171[0];
        v107 = HIDWORD(v171[0]);
        if (v139)
        {
          v109 = HIDWORD(v171[0]);
        }

        else
        {
          v109 = v171[0];
        }

        v171[0] = (v101 - v136 + 0x8000) & 0xFFFF0000;
        if (!off_28151BD60)
        {
          sub_24BBEDB70(257, 0);
        }

        off_28151BD60(v171[0], v171);
        v11 = a4;
        v120 = v171;
        if (v139)
        {
          v120 = v171 + 1;
        }

        v121 = *v120;
        v122 = v121 + 0x8000;
        if (v121 < 0)
        {
          v123 = -65536;
        }

        else
        {
          v123 = 0x10000;
        }

        v124 = v122 & 0xFFFF0000;
        if (v124)
        {
          v123 = v124;
        }

        v125 = a9 == 0;
        v126 = a8 >= 0x8000;
        v127 = v109 - 0x8000;
        if (!v126 || !v125)
        {
          v127 = v109;
        }

        v128 = ((v123 + v127 + 0xFFFF) & 0xFFFF0000) - (v123 + v127) + ((v123 + v127) & 0xFFFF0000);
        if (v126 && v125)
        {
          v128 += 0x8000;
        }

        if (v139)
        {
          v129 = v108;
        }

        else
        {
          v129 = v128;
        }

        if (!v139)
        {
          v128 = v107;
        }

        v171[0] = __PAIR64__(v128, v129);
        if (!off_28151BD58)
        {
          sub_24BBEDB70(257, 0);
        }

        off_28151BD58(v171[0], v171);
        v12 = a3;
        v9 = a6;
        v35 = v171[0];
        v19 = LODWORD(v171[0]) - v101 + v144;
        v21 = LODWORD(v171[0]) - v101 + v166;
        v10 = a5;
        v20 = v167;
        v18 = v161;
        goto LABEL_215;
      }

      v35 = v101;
      v12 = a3;
      v9 = a6;
      v11 = a4;
      v10 = a5;
      v22 = v148;
    }
  }

LABEL_216:
  if (v35 == v23 || v33 == v24)
  {
    if (!off_28151BD50)
    {
      sub_24BBEDB70(257, 0);
    }

    off_28151BD50(v23 | (v24 << 32));
    result = v11(v12, v9);
  }

  else
  {
    v130 = v35 | (v33 << 32);
    v131 = v20;
    v132 = v21;
    sub_24BBED510(v17 | (v16 << 32), v19 | (v18 << 32), v130, v12, v10, v9);
    result = sub_24BBED510(v132 | (v131 << 32), v170 | (v22 << 32), v23 | (v24 << 32), v12, v10, v9);
  }

  a1[1] = v32;
  return result;
}

uint64_t sub_24BBED510(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void *, uint64_t *, uint64_t *, uint64_t *, uint64_t), uint64_t a6)
{
  v13 = a2;
  v14 = a1;
  v12 = a3;
  if (!off_28151BD50)
  {
    sub_24BBEDB70(257, 0);
  }

  off_28151BD50(a1);
  if (!off_28151BD50)
  {
    sub_24BBEDB70(257, 0);
  }

  (off_28151BD50)(a2, &v13);
  if (!off_28151BD50)
  {
    sub_24BBEDB70(257, 0);
  }

  (off_28151BD50)(a3, &v12);
  result = a5(a4, &v14, &v13, &v12, a6);
  *a4 = v12;
  return result;
}

uint64_t sub_24BBED5F0(void *a1, void *a2, uint64_t (*a3)(void *, uint64_t *, uint64_t *, uint64_t *, uint64_t), uint64_t a4)
{
  sub_24BBED510(a1[2], a1[3], a1[5], a2, a3, a4);
  result = sub_24BBED510(a1[6], a1[7], a1[8], a2, a3, a4);
  a1[1] = a1[9];
  return result;
}

uint64_t sub_24BBED668(int *a1, int *a2, int *a3, int *a4, uint64_t *a5, __int16 a6)
{
  v99 = *MEMORY[0x277D85DE8];
  v8 = (a6 + 1);
  if (v8 >= 39)
  {
    v9 = *(a5[4] + 16);
    v10 = *MEMORY[0x277D85DE8];

    return v9(a4, a5);
  }

  v87 = 0;
  v88 = 0;
  v85 = 0;
  v86 = 0;
  v83 = 0;
  v84 = 0;
  v81 = 0;
  v82 = 0;
  v12 = *a1;
  v13 = *a2;
  if (*a2 >= *a1)
  {
    v14 = *a1;
  }

  else
  {
    v14 = *a2;
  }

  if (v13 <= v12)
  {
    v15 = *a1;
  }

  else
  {
    v15 = *a2;
  }

  v16 = *a3;
  if (*a3 >= v14)
  {
    v17 = v14;
  }

  else
  {
    v17 = *a3;
  }

  if (v16 > v15)
  {
    v15 = *a3;
  }

  v18 = *a4;
  if (*a4 >= v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = *a4;
  }

  if (v18 > v15)
  {
    v15 = *a4;
  }

  if (v15 - v19 >= 8323072)
  {
    goto LABEL_39;
  }

  v20 = a1[1];
  v21 = a2[1];
  if (v21 >= v20)
  {
    v22 = a1[1];
  }

  else
  {
    v22 = a2[1];
  }

  if (v21 <= v20)
  {
    v23 = a1[1];
  }

  else
  {
    v23 = a2[1];
  }

  v24 = a3[1];
  if (v24 >= v22)
  {
    v25 = v22;
  }

  else
  {
    v25 = a3[1];
  }

  if (v24 > v23)
  {
    v23 = a3[1];
  }

  v26 = a4[1];
  if (v26 >= v25)
  {
    v27 = v25;
  }

  else
  {
    v27 = a4[1];
  }

  if (v26 > v23)
  {
    v23 = a4[1];
  }

  if (v23 - v27 > 8323071)
  {
LABEL_39:
    v29 = *a2;
    v28 = a2[1];
    v31 = *a3;
    v30 = a3[1];
    v32 = *a4;
    v84 = *a1;
    v85 = v32;
    LODWORD(v86) = (v32 + v31) >> 1;
    HIDWORD(v86) = (HIDWORD(v32) + v30) >> 1;
    v33 = v29 + v31;
    v34 = (v28 + v30) >> 1;
    LODWORD(v83) = (v84 + v29) >> 1;
    HIDWORD(v83) = (HIDWORD(v84) + v28) >> 1;
    LODWORD(v82) = (v83 + (v33 >> 1)) >> 1;
    HIDWORD(v82) = (HIDWORD(v83) + v34) >> 1;
    LODWORD(v87) = ((v33 >> 1) + v86) >> 1;
    HIDWORD(v87) = (v34 + HIDWORD(v86)) >> 1;
    LODWORD(v88) = (v82 + v87) >> 1;
    HIDWORD(v88) = (HIDWORD(v82) + HIDWORD(v87)) >> 1;
    v81 = v88;
    sub_24BBED668(&v84, &v83, &v82, &v81, a5, (a6 + 1));
    result = sub_24BBED668(&v88, &v87, &v86, &v85, a5, v8);
    goto LABEL_106;
  }

  v35 = *(a5 + 6);
  v36 = *(a5[4] + 16);
  v37 = *a5;
  v38 = v98;
  memset(v98, 0, sizeof(v98));
  v90 = (v12 - v19) >> 8;
  v91 = (v20 - v27) >> 8;
  v92 = (v13 - v19) >> 8;
  v93 = (v21 - v27) >> 8;
  v94 = (v16 - v19) >> 8;
  v95 = (v24 - v27) >> 8;
  v96 = (v18 - v19) >> 8;
  v97 = (v26 - v27) >> 8;
  if ((v35 << 8 >> 18) + (v35 << 8 >> 19) <= 8)
  {
    v39 = 8;
  }

  else
  {
    v39 = (v35 << 8 >> 18) + (v35 << 8 >> 19);
  }

  v40 = 1;
  while (1)
  {
    while (1)
    {
      if (v40 == 6)
      {
        v89 = 0;
        v40 = 5;
        goto LABEL_103;
      }

      v41 = *(v38 - 8);
      v42 = *(v38 - 6);
      v43 = *(v38 - 4);
      v44 = *(v38 - 2);
      if (v41 > v42 || v42 > v43 || v43 > v44)
      {
        v47 = v42 <= v41 && v43 <= v42;
        if (!v47 || v44 > v43)
        {
          LOWORD(v49) = *(v38 - 7);
          LOWORD(v50) = *(v38 - 5);
          LOWORD(v51) = *(v38 - 3);
          LOWORD(v52) = *(v38 - 1);
          goto LABEL_101;
        }
      }

      v49 = *(v38 - 7);
      v50 = *(v38 - 5);
      v51 = *(v38 - 3);
      v52 = *(v38 - 1);
      v53 = v49 <= v50 && v50 <= v51;
      v54 = v53 && v51 <= v52;
      if (v54 || (v50 <= v49 ? (v55 = v51 <= v50) : (v55 = 0), v55 ? (v56 = v52 <= v51) : (v56 = 0), v56))
      {
        if (v42 - v41 >= 0)
        {
          v57 = v42 - v41;
        }

        else
        {
          v57 = v41 - v42;
        }

        v58 = v44 - v41;
        if (v44 - v41 < 0)
        {
          v58 = v41 - v44;
        }

        v59 = v58 - 3 * v57;
        if (v59 < 0)
        {
          v59 = -v59;
        }

        if (v39 >= v59)
        {
          v60 = v43 - v41;
          if (v43 - v41 < 0)
          {
            v60 = v41 - v43;
          }

          v61 = 2 * (v58 - v60) - v60;
          if (v61 < 0)
          {
            v61 = -v61;
          }

          if (v39 >= v61)
          {
            if (v50 - v49 >= 0)
            {
              v62 = v50 - v49;
            }

            else
            {
              v62 = v49 - v50;
            }

            v63 = v52 - v49;
            if (v52 - v49 < 0)
            {
              v63 = v49 - v52;
            }

            v64 = v63 - 3 * v62;
            if (v64 < 0)
            {
              v64 = -v64;
            }

            if (v39 >= v64)
            {
              v65 = v51 - v49;
              if (v51 - v49 < 0)
              {
                v65 = v49 - v51;
              }

              v66 = 2 * (v63 - v65) - v65;
              if (v66 < 0)
              {
                v66 = -v66;
              }

              if (v39 >= v66)
              {
                break;
              }
            }
          }
        }
      }

LABEL_101:
      v67 = (v42 + v41) >> 1;
      *v38 = v41;
      v38[2] = v67;
      v68 = v43 + v42;
      v69 = v67 + (v68 >> 1);
      v38[4] = v69 >> 1;
      v70 = (v44 + v43) >> 1;
      *(v38 - 4) = v70;
      v71 = (v70 + (v68 >> 1)) >> 1;
      *(v38 - 6) = v71;
      v72 = (v71 + (v69 >> 1)) >> 1;
      v38[6] = v72;
      *(v38 - 8) = v72;
      v38[1] = v49;
      v73 = (v49 + v50) >> 1;
      v38[3] = v73;
      v74 = v50 + v51;
      v75 = (v73 + (v74 >> 1)) >> 1;
      v38[5] = v75;
      v76 = (v51 + v52) >> 1;
      *(v38 - 3) = v76;
      v77 = v76 + (v74 >> 1);
      *(v38 - 5) = v77 >> 1;
      v78 = (v75 + (v77 >> 1)) >> 1;
      v38[7] = v78;
      *(v38 - 7) = v78;
      v38 += 8;
      ++v40;
    }

    v89 = 0;
    if (!--v40)
    {
      break;
    }

LABEL_103:
    v79 = v27 + (*(v38 - 1) << 8);
    LODWORD(v89) = v19 + (*(v38 - 2) << 8);
    HIDWORD(v89) = v79;
    v36(&v89, v37);
    v38 -= 8;
  }

  v89 = *a4;
  result = (v36)(&v89, v37);
LABEL_106:
  v80 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BBEDB70(int a1, uint64_t a2)
{
  v2 = qword_28151C018;
  *(qword_28151C018 + 208) = a1;
  *(v2 + 200) = a2;
  qword_28151C018 = *(v2 + 192);
  _longjmp(v2, 1);
}

uint64_t sub_24BBEDBA0(uint64_t result, unsigned int a2)
{
  v2 = a2;
  if ((a2 & 0x80000000) == 0)
  {
    if (!a2)
    {
      return result;
    }

    if (a2 >= 5)
    {
      do
      {
        result = sub_24BBFB7E8(result, 0xD4E200000);
        v3 = v2 - 4;
        v4 = v2 > 8;
        v2 -= 4;
      }

      while (v4);
      goto LABEL_11;
    }

LABEL_10:
    v3 = a2;
    goto LABEL_11;
  }

  if (a2 > 0xFFFFFFF7)
  {
    goto LABEL_10;
  }

  do
  {
    result = sub_24BBFB7E8(result, 0xFFFFFFE555E63B88);
    v3 = v2 + 8;
    v5 = __CFADD__(v2, 16);
    v2 += 8;
  }

  while (!v5);
LABEL_11:
  v6 = qword_24BC06354[v3 + 8];

  return sub_24BBFB7E8(result, v6);
}

void sub_24BBEDC58(MCacheData *a1)
{
  sub_24BBF33EC(a1);

  JUMPOUT(0x24C252120);
}

uint64_t sub_24BBEDC90(void **a1, _DWORD *a2)
{
  sub_24BBD5FDC(a1, a2);
  v8 = 0;
  v7 = 0u;
  memset(v6, 0, sizeof(v6));
  v4 = ((*a1)[35])(a1);
  sub_24BBF2BA4(v6, v4, 1751474532);
  *a2 |= bswap32(*(*(&v7 + 1) + 16)) >> 16;
  return sub_24BBE28C0(v6);
}

uint64_t sub_24BBEDD4C(void *a1, _WORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6, _DWORD *a7, _DWORD *a8, _DWORD *a9, _DWORD *a10, _DWORD *a11)
{
  v16 = a1[6];
  v17 = v16[180];
  v18 = *a2;
  v19 = (*(*v16 + 168))(v16);
  if (v19 >= 0xFFFF)
  {
    v20 = 0xFFFF;
  }

  else
  {
    v20 = v19;
  }

  if (v18 >= v20 && (*(*a1[6] + 560))(a1[6], *a2) >= v17)
  {
    *a2 = 0;
  }

  *a6 = 0;
  *a4 = 0;
  *a11 = 2097152001;
  *a10 = 2097152001;
  *a9 = 2097152001;
  *a8 = 2097152001;
  *a7 = 2097152001;
  *a5 = 2097152001;
  *a3 = 2097152001;
  v21 = (*(*a1 + 280))(a1);
  v22 = *a2;
  v48 = 0;
  memset(v47, 0, sizeof(v47));
  sub_24BBF2BA4(v47, v21, 1751672161);
  if (LODWORD(v47[0]) <= 0x23)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BBE0934(exception, 5);
    __cxa_throw(exception, &unk_285F89D90, nullsub_8);
  }

  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  v43 = 0u;
  sub_24BBF2BA4(&v43, v21, 1448038983);
  v23 = bswap32(*(*(&v45 + 1) + 4)) >> 16;
  v24 = bswap32(*(*(&v45 + 1) + 6)) >> 16;
  v25 = *(&v45 + 1) + 12;
  while (1)
  {
    v24 = v24 + 0xFFFF;
    if ((v24 & 0x10000) == 0 || v25 > *(&v45 + 1) + DWORD1(v43))
    {
      break;
    }

    v26 = bswap32(*(v25 - 4));
    v25 += 4;
    if (v22 == HIWORD(v26))
    {
      v23 = bswap32(*(v25 - 6)) >> 16;
      break;
    }
  }

  sub_24BBE28C0(&v43);
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  v43 = 0u;
  sub_24BBF2BA4(&v43, v21, 1986553185);
  if (v43 <= 0x23)
  {
    v35 = __cxa_allocate_exception(0x10uLL);
    sub_24BBE0934(v35, 5);
    __cxa_throw(v35, &unk_285F89D90, nullsub_8);
  }

  v27 = *(*(&v45 + 1) + 6);
  v28 = *(*(&v45 + 1) + 34);
  v42 = 0;
  v41 = 0u;
  memset(v40, 0, sizeof(v40));
  sub_24BBF2BA4(v40, v21, 1986884728);
  v29 = __rev16(v28);
  if (v29 > (LODWORD(v40[0]) >> 2))
  {
    LOWORD(v29) = LODWORD(v40[0]) >> 2;
  }

  if (v22 >= v29)
  {
    v30 = (*(&v41 + 1) + 4 * v29 - 4);
  }

  else
  {
    v30 = (*(&v41 + 1) + 4 * v22);
  }

  if (*(&v41 + 1) > v30 || (v30 + 2) > *(&v41 + 1) + LODWORD(v40[0]))
  {
    v36 = __cxa_allocate_exception(0x10uLL);
    sub_24BBE0934(v36, 5);
    __cxa_throw(v36, &unk_285F89D90, nullsub_8);
  }

  v32 = bswap32(*v30) >> 16;
  sub_24BBE28C0(v40);
  sub_24BBE28C0(&v43);
  *a8 = v23 << 16;
  *a7 = -65536 * (bswap32(v27) >> 16);
  *a11 = -65536 * v32;
  result = sub_24BBE28C0(v47);
  *a5 = *a11;
  return result;
}

void sub_24BBEE118(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __int128 a23)
{
  sub_24BBE28C0(&a15);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    v26 = *(a11 + 6);
    __cxa_end_catch();
    JUMPOUT(0x24BBEE000);
  }

  sub_24BBE28C0(&a23);
  sub_24BBE28C0(v23 - 144);
  _Unwind_Resume(a1);
}

void sub_24BBEE2C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_24BBE28C0(va);
  __cxa_end_catch();
  sub_24BBE28C0(v14 - 144);
  JUMPOUT(0x24BBEE35CLL);
}

void sub_24BBEE304(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    v15 = *(v13 + 4);
    __cxa_end_catch();
    JUMPOUT(0x24BBEDF4CLL);
  }

  sub_24BBE28C0(v14 - 144);
  JUMPOUT(0x24BBEE35CLL);
}

size_t sub_24BBEE398(void **a1, uint64_t a2, _BYTE *a3)
{
  v6 = ((*a1)[41])(a1);
  v7 = ((*a1)[42])(a1);
  v8 = sub_24BBF34E0(v6, v7);
  if (v8 != 0xFFFF)
  {
    a2 = (*(*a1[6] + 560))(a1[6], a2);
  }

  return sub_24BBF3588(a1, v8, a2, a3);
}

uint64_t sub_24BBEE49C(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  result = sub_24BBF35BC(a1, a2, a3);
  v6 = result;
  if (*a2 != 97)
  {
    (*(**(a1 + 48) + 368))(*(a1 + 48), &v6, 1, &v6);
    return v6;
  }

  return result;
}

uint64_t sub_24BBEE51C(uint64_t a1, unsigned __int8 a2, _WORD *a3, _WORD *a4, uint64_t *a5, uint64_t *a6, void *a7, void *a8)
{
  v19 = 0;
  v18 = 0;
  result = (*(**(a1 + 48) + 536))(*(a1 + 48), a2, a3, &v19, &v19 + 2, &v18);
  v15 = v19;
  *a4 = v19;
  if (a3 && result)
  {
    v16 = result + v15 + v15 * *a3;
    v17 = result + v18;
  }

  else
  {
    v16 = 0;
    v17 = 0;
    result = 0;
    *a3 = 0;
  }

  *a6 = v16;
  *a5 = v16;
  *a7 = v17;
  *a8 = v17;
  return result;
}

void *sub_24BBEE5F8(void *result)
{
  *result = &unk_285F89FD8;
  result[1] = 0;
  return result;
}

void *sub_24BBEE618(void *a1)
{
  *a1 = &unk_285F89FD8;
  v2 = a1[1];
  if (v2)
  {
    if (v2[100])
    {
      j__free(v2[100]);
      v2 = a1[1];
    }

    j__free(v2);
  }

  return a1;
}

uint64_t sub_24BBEE680(_DWORD *a1, uint64_t a2, unint64_t a3, int a4)
{
  v6 = a1;
  v7 = 0;
  v8 = 0;
  v9 = a1;
  while (1)
  {
    v10 = v9;
    v11 = *(v9 + 8);
    if (!v11 || v10 != a1 && (v10[18] & 2) != 0)
    {
      break;
    }

    if (v7 >= a3)
    {
      sub_24BBEDB70(-1, 0);
    }

    v8 += *(v10 + 5);
    v12 = v7 + 1;
    *(a2 + 8 * v7) = v11;
    v9 = *(*(v10 + 8) + 24);
    ++v7;
    if (v9 == v10)
    {
      goto LABEL_10;
    }
  }

  v12 = v7;
LABEL_10:
  if (v12 >= 3)
  {
    v13 = v12 & 0x7FFFFFFF;
    v14 = a2;
    do
    {
      *(*(*v14 + 16) + 72) &= ~0x10u;
      v15 = *v14;
      v14 += 8;
      *(*(v15 + 24) + 72) &= ~0x10u;
      --v13;
    }

    while (v13);
  }

  v16 = a1[6] - a1[5];
  v17 = a1[4] - a1[3];
  if (v17)
  {
    v19 = (12 * v16) / v17 * 65536.0;
    v20 = 0.5;
    if (v19 < 0.0)
    {
      v20 = -0.5;
    }

    v21 = v19 + v20;
    if (v21 >= 2147483650.0)
    {
      v18 = 0x7FFFFFFF;
    }

    else if (v21 <= -2147483650.0)
    {
      v18 = 0x80000000;
    }

    else
    {
      v18 = v21;
    }
  }

  else
  {
    v18 = (v16 >> 31) ^ 0x7FFFFFFF;
  }

  v22 = *(v10 + 5);
  if (v18 >= 39322)
  {
    v23 = 39322;
  }

  else
  {
    v23 = v18;
  }

  sub_24BBEEB58(a2, v12, v23);
  result = sub_24BBEED3C(a2, v12);
  if (v12 < 1)
  {
    v25 = 0;
  }

  else
  {
    v25 = 0;
    v26 = v12 & 0x7FFFFFFF;
    v27 = a2;
    do
    {
      v28 = *v27++;
      v25 += *(v28 + 42);
      --v26;
    }

    while (v26);
  }

  v29 = v6[6];
  v30 = *(v10 + 36);
  v31 = a4 - ((v30 << 30 >> 31) & (a4 >> 1));
  v32 = (v30 & 2) == 0;
  v33 = 9;
  if (v32)
  {
    v33 = 5;
  }

  v34 = v10[v33];
  if ((v6[18] & 2) != 0)
  {
    v31 -= a4 >> 1;
    v35 = v6[10];
  }

  else
  {
    v35 = v6[6];
  }

  v36 = v22 + v8;
  v37 = v35 - v34;
  if (v12)
  {
    for (i = v25 + v36 - ((v37 + 0x8000) >> 16) + v12; i < 0; i += v12)
    {
      v39 = v12 & 0x7FFFFFFF;
      v40 = a2;
      if (v12 >= 1)
      {
        do
        {
          v41 = *v40++;
          *(v41 + 40) += 0x10000;
          --v39;
        }

        while (v39);
      }
    }

    for (; i > v12; i -= v12)
    {
      if (v12 >= 1)
      {
        v42 = v12 & 0x7FFFFFFF;
        v43 = a2;
        do
        {
          v44 = *v43++;
          *(v44 + 40) -= 0x10000;
          --v42;
        }

        while (v42);
      }
    }

    v45 = v31 * v37 * 0.0000152587891;
    v46 = 0.5;
    if (v45 < 0.0)
    {
      v46 = -0.5;
    }

    v47 = v45 + v46;
    v48 = v47 < 2147483650.0 && v47 > -2147483650.0;
    v49 = (v47 + 0x8000) >> 16;
    if (v48 && v49 >= 1 && i >= 1)
    {
      v76 = *(*(a2 + 8 * (i - 1)) + 44);
      if (i - 1 != v76)
      {
        v77 = -1;
        v78 = a2;
        do
        {
          v79 = v77;
          v80 = *v78++;
          ++v77;
        }

        while (*(v80 + 44) < v76);
        v81 = i - v77;
        if ((v76 - i) < v49)
        {
          i = v76 + 1;
        }

        if (v81 <= v49)
        {
          i = v79 + 1;
        }
      }
    }

    if (v12 < 1)
    {
      v25 = 0;
    }

    else
    {
      v52 = 0;
      v25 = 0;
      do
      {
        v53 = *(a2 + 8 * v52);
        v54 = *(v53 + 40);
        if (v54 == 0xFFFF)
        {
          v55 = 0x10000;
          *(v53 + 40) = 0x10000;
          ++i;
        }

        else
        {
          v55 = v54 & 0xFFFF0000;
          if (v52 >= i)
          {
            v55 += 0x10000;
          }

          *(v53 + 40) = v55;
        }

        v25 += v55 >> 16;
        ++v52;
      }

      while ((v12 & 0x7FFFFFFF) != v52);
    }
  }

  v56 = *(v6 + 36);
  if ((v56 & 2) == 0)
  {
    v57 = v25 + v36;
    v58 = v57 << 16;
    v59 = v6[10] - v6[9];
    if (v59 < 0)
    {
      v59 = v6[9] - v6[10];
    }

    if ((v10[18] & 2) != 0)
    {
      v71 = v10[9] + v58;
    }

    else
    {
      v60 = v37 - (v57 << 16);
      v61 = v6[5] + v29;
      v62 = v10[6] + v10[5];
      v63 = ((v59 - v60 + v61) / 2 + 0x8000) & 0xFFFF0000;
      v64 = v10[9];
      v65 = v10[10];
      v66 = ((v62 + v60 + v64 - v65) / 2 + 0x8000) & 0xFFFF0000;
      v67 = v66 + v58;
      v68 = v61 + v64 + v62 + v59;
      v69 = v68 - v65 - 4 * v63 + (v57 << 17);
      if (v69 < 0)
      {
        v69 = -v69;
      }

      v70 = v68 - (v65 + 2 * (v67 + v66));
      if (v70 < 0)
      {
        v70 = -v70;
      }

      if (v69 >= v70)
      {
        v71 = v67;
      }

      else
      {
        v71 = v63;
      }
    }

    v6[9] = v71 - v59;
    v6[10] = v71;
    *(v6 + 36) = v56 | 2;
    *(v6 + 37) = 0;
  }

  v72 = *(v6 + 8);
  if (!v72)
  {
    sub_24BBEDB70(-1, 0);
  }

  do
  {
    v73 = *(v72 + 24);
    v74 = *(v73 + 72);
    if ((v74 & 2) != 0)
    {
      break;
    }

    v75 = v6[9] - *(v72 + 40);
    *(v73 + 36) += v75 - *(v73 + 40);
    *(v73 + 40) = v75;
    *(v73 + 72) = v74 | 2;
    *(v73 + 74) = 0;
    v72 = *(v73 + 64);
    v6 = v73;
  }

  while (v72);
  return result;
}

uint64_t sub_24BBEEB58(uint64_t result, int a2, int a3)
{
  if (a2 >= 1)
  {
    for (i = 0; i != a2; ++i)
    {
      *(*(result + 8 * i) + 44) = i;
      v4 = *(result + 8 * i);
      v5 = *(v4 + 8);
      *(v4 + 36) = v5;
      *(v4 + 40) = v5;
      *(v4 + 32) = v5;
      *(v4 + 44) = *(v4 + 44);
    }
  }

  v6 = 0;
  do
  {
    if (a2 <= 1)
    {
      break;
    }

    v7 = -1;
    v8 = result + 8;
    for (j = 1; j != a2; ++j)
    {
      if (*(*v8 + 44) <= 0xFFu)
      {
        v10 = *(*(v8 - 8) + 8) - *(*v8 + 8);
        if (v10 < 0)
        {
          v10 = *(*v8 + 8) - *(*(v8 - 8) + 8);
        }

        if ((v7 & 0x80000000) != 0 || v6 > v10)
        {
          v7 = j;
          v6 = v10;
        }
      }

      v8 += 8;
    }

    if ((v7 & 0x80000000) != 0)
    {
      break;
    }

    *(*(result + 8 * v7) + 45) = 1;
    v13 = v7 - 1;
    v14 = *(result + 8 * (v7 - 1));
    v15 = *(result + 8 * v7);
    v17 = *(v14 + 32);
    v16 = *(v14 + 36);
    v18 = *(v15 + 32);
    v19 = *(v15 + 36);
    if (v17 < v18)
    {
      v18 = v17;
    }

    if (v16 > v19)
    {
      v19 = v16;
    }

    if (v19 - v18 <= a3)
    {
      if (v7 < 2)
      {
        goto LABEL_32;
      }

      v20 = v7;
      while (v13 == *(*(result - 8 + 8 * --v20) + 44))
      {
        if (v20 <= 1)
        {
          v13 = 0;
          goto LABEL_31;
        }
      }

      v13 = v20;
LABEL_31:
      if (v13 >= v7)
      {
        v22 = v13;
      }

      else
      {
LABEL_32:
        v21 = v7;
        v22 = v13;
        v23 = (result + 8 * v13);
        v24 = v21 - v13;
        do
        {
          v25 = *v23++;
          *(v25 + 44) = *(*(result + 8 * v21) + 44);
          --v24;
        }

        while (v24);
      }

      v26 = (result + 8 * v22);
      v27 = *(*v26 + 44);
      if (v13 <= v27)
      {
        v28 = v27 - v22 + 1;
        do
        {
          v29 = *v26++;
          *(v29 + 32) = v18;
          *(v29 + 36) = v19;
          --v28;
        }

        while (v28);
      }

      v7 = v13;
    }
  }

  while ((v7 & 0x80000000) == 0);
  if (a2 >= 1)
  {
    LODWORD(v30) = 0;
    do
    {
      v31 = *(result + 8 * v30);
      if (v30 < *(v31 + 44))
      {
        v32 = (*(v31 + 36) >> 1) + (*(v31 + 32) >> 1);
        v33 = v30 - 1;
        v34 = (result + 8 * v30);
        do
        {
          v35 = *v34++;
          *(v35 + 40) = v32;
          v30 = *(v31 + 44);
          ++v33;
        }

        while (v33 < v30);
      }

      LODWORD(v30) = v30 + 1;
    }

    while (v30 < a2);
  }

  return result;
}

uint64_t sub_24BBEED3C(uint64_t result, int a2)
{
  v2 = (a2 - 1);
  if (a2 <= 1)
  {
    goto LABEL_28;
  }

  v3 = 0;
  v4 = 1;
  do
  {
    v5 = v3++;
    v6 = v4;
    v7 = v5;
    do
    {
      v8 = *(result + 8 * v7);
      v9 = *(result + 8 * v6);
      if (*(v9 + 44) != *(v8 + 44))
      {
        v10 = *(v8 + 40);
        v11 = *(v9 + 40);
        v12 = (v10 >> 15) & 1;
        if (v10 >= 0x10000)
        {
          LOBYTE(v12) = 0;
        }

        v14 = (*(v9 + 40) & 0xFFFF0000) != 0 || v11 < 0x8000;
        if (v12 == v14)
        {
          if ((v12 & 1) == 0)
          {
            goto LABEL_21;
          }

LABEL_20:
          v7 = v6;
          goto LABEL_21;
        }

        v15 = *(v8 + 40);
        if (v15 > v11)
        {
          goto LABEL_20;
        }

        if (v15 < v11)
        {
          goto LABEL_21;
        }
      }

      v16 = *(v8 + 24);
      v17 = *(v16 + 72);
      v18 = *(v16 + 16);
      v19 = *(*(v9 + 24) + 16);
      if (v17)
      {
        if (v18 < v19)
        {
          goto LABEL_20;
        }
      }

      else if (v18 > v19)
      {
        goto LABEL_20;
      }

LABEL_21:
      ++v6;
    }

    while (a2 != v6);
    if (v5 != v7)
    {
      v20 = *(result + 8 * v5);
      *(result + 8 * v5) = *(result + 8 * v7);
      *(result + 8 * v7) = v20;
    }

    ++v4;
  }

  while (v3 != v2);
LABEL_28:
  if (a2 >= 1)
  {
    v21 = 0;
    do
    {
      if (v21 <= v2)
      {
        v22 = a2 - 1;
      }

      else
      {
        v22 = v21;
      }

      v23 = v22 - v21;
      v24 = result + 8 + 8 * v21;
      v25 = 1;
      while (v23)
      {
        v26 = *(*v24 + 44);
        v27 = *(*(v24 - 8) + 44);
        --v25;
        --v23;
        v24 += 8;
        if (v27 != v26)
        {
          v22 = v21 - v25;
          break;
        }
      }

      if (v21 <= v22)
      {
        v28 = v22;
        v29 = v22 + 1;
        v30 = (result + 8 * v21);
        v31 = v29 - v21;
        do
        {
          v32 = *v30++;
          *(v32 + 44) = v28;
          --v31;
        }

        while (v31);
        v21 = v29;
      }
    }

    while (v21 < a2);
  }

  return result;
}

uint64_t sub_24BBEEEB0(uint64_t *a1, void *a2, uint64_t *a3, int a4, int a5, int a6)
{
  v124 = *MEMORY[0x277D85DE8];
  if (!a6)
  {
    goto LABEL_139;
  }

  v9 = *a3;
  if (*(a3 + 2) < (8 * (a6 + a5)))
  {
    v10 = 8 * (a6 + a5);
    if (v9)
    {
      (*(**(qword_28151C038 + 40) + 16))(*(qword_28151C038 + 40), *a3);
    }

    result = (***(qword_28151C038 + 40))(*(qword_28151C038 + 40), v10);
    *a3 = result;
    if (!result)
    {
      *(a3 + 2) = 0;
      goto LABEL_140;
    }

    v9 = result;
    *(a3 + 2) = v10;
  }

  if (sub_24BBEF590(a1, v9) != a6)
  {
    result = 0;
    goto LABEL_140;
  }

  v115 = *(a3 + 2);
  if (a6 >= 1)
  {
    v12 = a6;
    v13 = v9;
    do
    {
      v14 = *v13++;
      *(v14 + 72) |= 0x10u;
      --v12;
    }

    while (v12);
  }

  v118 = v9 + 8 * a6;
  v15 = 0;
  while (a2)
  {
    v16 = a2[2];
    v17 = a2[3];
    v18 = *(v16 + 32);
    v19 = *(v17 + 32);
    if (*(v16 + 28) <= *(v17 + 28))
    {
      v20 = *(v17 + 28);
    }

    else
    {
      v20 = *(v16 + 28);
    }

    v121[0] = HIWORD(v20);
    memset(v123, 0, sizeof(v123));
    v122 = 0uLL;
    if (v18 >= v19)
    {
      v18 = v19;
    }

    v121[1] = HIWORD(v18);
    v21 = *(v17 + 76);
    v22 = *(v16 + 76);
    if (v21 + 1 >= v22)
    {
      v25 = 2;
      goto LABEL_67;
    }

    v119 = v20;
    v120 = v15;
    v23 = v22;
    v24 = v21 + 1;
    v25 = 2;
    do
    {
      v26 = *(v9 + 8 * v24);
      if ((*(v26 + 72) & 0x60) == 0)
      {
        v27 = *(v26 + 28);
        v28 = v27 >> 16;
        v29 = v25 - 1;
        v30 = v121[v29];
        if (v27 >> 16 < v30)
        {
          v31 = *(v26 + 32);
          v32 = v31 >> 16;
          if (v31 >> 16 > v121[0])
          {
            v33 = 0;
            v34 = 0;
            v35 = HIWORD(v27);
            if (v28 < v121[0])
            {
              LOWORD(v35) = v121[0];
            }

            v36 = v35;
            do
            {
              v37 = v34;
              v38 = v33;
              v39 = v121[v34++];
              v33 += 2;
            }

            while (v36 > v39);
            v40 = 0;
            v41 = HIWORD(v31);
            if (v32 <= v30)
            {
              LOWORD(v30) = v41;
            }

            v42 = v30;
            v43 = v37 ^ 1;
            v44 = v37;
            do
            {
              v45 = *(v121 + v38);
              v46 = v44;
              ++v40;
              ++v43;
              v38 += 2;
              ++v44;
            }

            while (v42 > v45);
            v47 = v34 - 1;
            v48 = v34 + v40 - 2;
            v49 = (v34 - 1) & 1;
            v50 = v36 == v39;
            if (v50 >= v49)
            {
              v51 = (v34 - 1) & 1;
            }

            else
            {
              v51 = v36 == v39;
            }

            v52 = v48 & 1;
            v53 = v42 == v45;
            v54 = v53 & v48;
            if (v53 >= v52)
            {
              v55 = v48 & 1;
            }

            else
            {
              v55 = v42 == v45;
            }

            if (v50 >= v49)
            {
              v56 = (v34 - 1) & 1;
            }

            else
            {
              v56 = v36 == v39;
            }

            v57 = v56 - v54 + ((v56 + v34 + 1) & 1);
            v58 = (v54 + v43) & 1;
            if (v25 + v57 + v58 + 1 == v40)
            {
              v15 = v120;
              goto LABEL_74;
            }

            v59 = v36 == v39;
            if (v59 >= v49)
            {
              v59 = (v34 - 1) & 1;
            }

            v60 = v59 - v54 + ((v59 + v34 + 1) & 1) + v58 + v25 - v40 + 1;
            if (v60 < 25)
            {
              v61 = v47 + v51;
              if (v25 <= v47 + v51)
              {
LABEL_64:
                v25 = v60;
                goto LABEL_43;
              }

              v62 = v48 + v55;
              v63 = v36 == v39;
              if (v63 >= (v47 & 1u))
              {
                v63 = v47 & 1;
              }

              v64 = v25 + v63 - v54 + ((v63 + v34 + 1) & 1) + ((v54 + v43) & 1) - v40;
              v65 = &v121[v29];
              if (v50 >= v49)
              {
                v66 = (v34 - 1) & 1;
              }

              else
              {
                v66 = v36 == v39;
              }

              v67 = v66 - v29 + v37;
              if (v53 < v52)
              {
                v52 = v53;
              }

              v68 = v52 - v29 + v46;
              while (2)
              {
                if (v62 < --v25)
                {
                  v69 = *v65;
                  LODWORD(v70) = v64;
                  goto LABEL_62;
                }

                if (v68)
                {
                  v70 = v64;
                }

                else
                {
                  v70 = v64 - 1;
                  v121[v64] = v121[v62];
                  if (v62)
                  {
                    v121[v70] = v42;
                    v70 = (v64 - 2);
                  }
                }

                if (v61)
                {
                  v69 = v36;
                  if (!v67)
                  {
LABEL_62:
                    v121[v70] = v69;
                    v70 = (v70 - 1);
                  }
                }

                --v65;
                ++v67;
                ++v68;
                v64 = v70;
                if (v61 >= v25)
                {
                  goto LABEL_64;
                }

                continue;
              }
            }
          }
        }
      }

LABEL_43:
      ++v24;
    }

    while (v24 != v23);
    v20 = v119;
    v15 = v120;
    if (v25 < 1)
    {
      v74 = 0;
      goto LABEL_72;
    }

LABEL_67:
    v71 = 0;
    v72 = 0;
    do
    {
      v73 = v121[v71];
      if ((v71 & 1) == 0)
      {
        v73 = -v73;
      }

      v72 += v73;
      ++v71;
    }

    while (v25 != v71);
    v74 = 2 * v72;
LABEL_72:
    if (v74 >= (v18 >> 16) - (v20 >> 16))
    {
      *(v118 + 8 * v15++) = a2;
    }

LABEL_74:
    a2 = *a2;
  }

  for (; a1; a1 = *a1)
  {
    a1[7] = 0;
  }

  if (v15 >= 1)
  {
    v75 = v15;
    v76 = v9 + 8 * a6;
    do
    {
      **v76 = *(*(*v76 + 24) + 56);
      v77 = *v76;
      v76 += 8;
      *(*(v77 + 24) + 56) = v77;
      --v75;
    }

    while (v75);
  }

  if (a6 < 1)
  {
    goto LABEL_138;
  }

  v78 = v9;
  v79 = a6;
  do
  {
    v80 = *v78++;
    *(v80 + 74) = 0;
    *(v80 + 64) = 0;
    --v79;
  }

  while (v79);
  v81 = 0;
  v82 = 0;
  do
  {
    v83 = *(v9 + 8 * v81);
    v84 = *(v83 + 56);
    if (v84)
    {
      v85 = *(v83 + 74);
      v86 = v85 + 1;
      do
      {
        v87 = v84[2];
        if ((*(v87 + 72) & 2) == 0)
        {
          v88 = *(v87 + 74);
          v89 = v85 >= v88;
          v90 = v85 < v88 && v86 == v88;
          if (!v90)
          {
            goto LABEL_108;
          }

          v91 = *(v9 + 8 * v81);
          v93 = *(v91 + 28);
          v92 = *(v91 + 32);
          v95 = *(v87 + 28);
          v94 = *(v87 + 32);
          if (v93 <= v95)
          {
            v93 = *(v87 + 28);
          }

          if (v92 >= v94)
          {
            v92 = *(v87 + 32);
          }

          v96 = v92 - v93;
          v97 = *(v87 + 64);
          v98 = *(v97 + 24);
          v100 = *(v98 + 28);
          v99 = *(v98 + 32);
          if (v100 > v95)
          {
            v95 = v100;
          }

          if (v99 < v94)
          {
            v94 = v99;
          }

          v101 = v94 - v95;
          v90 = v96 == v101;
          v89 = v96 > v101;
          if (v90)
          {
            if (*(v84 + 2) < *(v97 + 8))
            {
              goto LABEL_109;
            }
          }

          else
          {
LABEL_108:
            if (v89)
            {
LABEL_109:
              *(v87 + 74) = v86;
              *(v87 + 64) = v84;
              if (v79 <= v85)
              {
                LODWORD(v79) = (v85 + 1);
                v82 = v87;
              }
            }
          }
        }

        v84 = *v84;
      }

      while (v84);
    }

    ++v81;
  }

  while (v81 != a6);
  if (v82)
  {
    v102 = *(v82 + 56);
    if (!v102)
    {
      goto LABEL_123;
    }

    v103 = 0;
    v104 = 655360000;
    do
    {
      if (*(v102 + 2) < v104)
      {
        v104 = *(v102 + 2);
        v103 = v102;
      }

      v102 = *v102;
    }

    while (v102);
LABEL_121:
    if (v103)
    {
      v82 = v103[2];
      *(v82 + 64) = v103;
    }

LABEL_123:
    while (1)
    {
      sub_24BBEF8AC(v82, v118, (v115 >> 3) - a6, a4);
      v82 = 0;
      v105 = 0;
      v106 = v9;
      v107 = a6;
      do
      {
        v108 = *v106;
        if ((*(*v106 + 72) & 2) == 0)
        {
          v109 = *(v108 + 64);
          if (v109)
          {
            v110 = *(*(v109 + 24) + 74) + 1;
            *(v108 + 74) = v110;
            v111 = v105 < v110;
            if (v105 <= v110)
            {
              v105 = v110;
            }

            if (v111)
            {
              v82 = v108;
            }
          }
        }

        v106 += 8;
        --v107;
      }

      while (v107);
      if (!v82)
      {
        break;
      }

      v112 = *(v82 + 56);
      if (v112)
      {
        v103 = 0;
        v113 = 655360000;
        do
        {
          if (*(v112 + 2) < v113)
          {
            v113 = *(v112 + 2);
            v103 = v112;
          }

          v112 = *v112;
        }

        while (v112);
        goto LABEL_121;
      }
    }
  }

LABEL_138:
  sub_24BBEF64C(v9, a6);
LABEL_139:
  result = 1;
LABEL_140:
  v114 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24BBEF590(uint64_t *a1, uint64_t a2)
{
  v3 = 0;
  if (a1)
  {
    v4 = a1;
    do
    {
      if ((v4[9] & 1) == 0)
      {
        *(a2 + 8 * v3) = v4;
        v3 = (v3 + 1);
      }

      v4 = *v4;
    }

    while (v4);
    v5 = v3;
    do
    {
      if (a1[9])
      {
        *(a2 + 8 * v5) = a1;
        v5 = (v5 + 1);
      }

      a1 = *a1;
    }

    while (a1);
  }

  else
  {
    v5 = 0;
  }

  sub_24BBEF834(a2, 0, v3);
  sub_24BBEF834(a2, v3, v5);
  if (v5 >= 1)
  {
    v6 = 0;
    do
    {
      *(*(a2 + 8 * v6) + 76) = v6;
      ++v6;
    }

    while (v5 != v6);
  }

  return v5;
}

uint64_t sub_24BBEF64C(uint64_t result, int a2)
{
  if (a2 >= 1)
  {
    v13[5] = v2;
    v13[6] = v3;
    v4 = result;
    v5 = a2;
    do
    {
      v6 = *v4;
      v7 = *(*v4 + 36);
      if ((v7 & 0x10) != 0)
      {
        result = sub_24BBFC330(v6[3], v6[4], v7 & 1);
      }

      else if ((v7 & 0x60) == 0)
      {
        if (v7)
        {
          v13[0] = 0;
          HIDWORD(v13[0]) = 2 * v6[12];
          if (!off_28151BD60)
          {
            sub_24BBEDB70(257, 0);
          }

          result = off_28151BD60(v13[0], v13);
          v8 = HIDWORD(v13[0]);
        }

        else
        {
          v13[0] = (2 * v6[12]);
          if (!off_28151BD60)
          {
            sub_24BBEDB70(257, 0);
          }

          result = off_28151BD60(v13[0], v13);
          v8 = v13[0];
        }

        v9 = *v4;
        v10 = (v8 & 0xFFFF0000) - (*v4)[2] + 0x10000;
        v11 = ((*v4)[9] - (v10 >> 1)) & 0xFFFF0000;
        v12 = ((*v4)[10] + (v10 >> 1)) & 0xFFFF0000;
        v9[9] = v11;
        v9[10] = v12;
      }

      ++v4;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_24BBEF764(uint64_t *a1, uint64_t *a2, int a3, int a4)
{
  if (!a4)
  {
    return 1;
  }

  v7 = *a2;
  if (*(a2 + 2) >= (8 * (a4 + a3)))
  {
LABEL_7:
    sub_24BBEF590(a1, v7);
    sub_24BBEF64C(v7, a4);
    return 1;
  }

  v8 = 8 * (a4 + a3);
  if (v7)
  {
    (*(**(qword_28151C038 + 40) + 16))(*(qword_28151C038 + 40), *a2);
  }

  result = (***(qword_28151C038 + 40))(*(qword_28151C038 + 40), v8);
  *a2 = result;
  if (result)
  {
    v7 = result;
    *(a2 + 2) = v8;
    goto LABEL_7;
  }

  *(a2 + 2) = 0;
  return result;
}

uint64_t sub_24BBEF834(uint64_t result, int a2, int a3)
{
  if (a3 - 1 > a2)
  {
    v3 = a2;
    do
    {
      v4 = v3++;
      if (v3 < a3)
      {
        v5 = *(result + 8 * v4);
        v6 = *(v5 + 12);
        v7 = v3;
        v8 = v4;
        do
        {
          v9 = *(*(result + 8 * v7) + 12);
          if (v6 > v9)
          {
            v8 = v7;
          }

          if (v6 >= v9)
          {
            v6 = *(*(result + 8 * v7) + 12);
          }

          ++v7;
        }

        while (v7 < a3);
        if (v8 != v4)
        {
          *(result + 8 * v4) = *(result + 8 * v8);
          *(result + 8 * v8) = v5;
        }
      }
    }

    while (v3 != a3 - 1);
  }

  return result;
}

uint64_t sub_24BBEF8AC(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v5 = a1;
  v6 = *(a1 + 20);
  v7 = *(a1 + 24);
  if (v6 > v7)
  {
    sub_24BBEDB70(-1, 0);
  }

  v9 = a1 + 64;
  v8 = *(a1 + 64);
  if (v8)
  {
    v10 = 0;
    v11 = 0;
    v12 = a1;
    while (v12 == a1 || (*(v12 + 72) & 2) == 0)
    {
      v13 = *(v12 + 10);
      if (a3 <= v11)
      {
        sub_24BBEDB70(-1, 0);
      }

      v10 += v13;
      v14 = v11 + 1;
      *(a2 + 8 * v11) = v8;
      v12 = *(*v9 + 24);
      v9 = v12 + 64;
      v8 = *(v12 + 64);
      ++v11;
      if (!v8)
      {
        goto LABEL_13;
      }
    }

    v14 = v11;
LABEL_13:
    v15 = v14;
    if (v14 >= 3)
    {
      v16 = v14;
      v17 = a2;
      do
      {
        *(*(*v17 + 16) + 72) &= ~0x10u;
        v18 = *v17;
        v17 += 8;
        *(*(v18 + 24) + 72) &= ~0x10u;
        --v16;
      }

      while (v16);
    }
  }

  else
  {
    v15 = 0;
    v10 = 0;
    v14 = 0;
    v12 = a1;
  }

  v19 = *(a1 + 24) - *(a1 + 20);
  if (v19 < 0)
  {
    v19 = *(a1 + 20) - *(a1 + 24);
  }

  v20 = 12 * v19;
  v21 = *(a1 + 16) - *(a1 + 12);
  if (v21)
  {
    v23 = v20 / v21 * 65536.0;
    v24 = 0.5;
    if (v23 < 0.0)
    {
      v24 = -0.5;
    }

    v25 = v23 + v24;
    if (v25 >= 2147483650.0)
    {
      v22 = 0x7FFFFFFF;
    }

    else if (v25 <= -2147483650.0)
    {
      v22 = 0x80000000;
    }

    else
    {
      v22 = v25;
    }
  }

  else
  {
    v22 = (v20 >> 31) ^ 0x7FFFFFFF;
  }

  v26 = *(v12 + 10);
  if (v22 >= 39322)
  {
    v27 = 39322;
  }

  else
  {
    v27 = v22;
  }

  sub_24BBEEB58(a2, v15, v27);
  result = sub_24BBEED3C(a2, v15);
  if (v14 < 1)
  {
    v29 = 0;
    v32 = a4;
  }

  else
  {
    v29 = 0;
    v30 = v14;
    v31 = a2;
    v32 = a4;
    do
    {
      v33 = *v31++;
      v29 += *(v33 + 42);
      --v30;
    }

    while (v30);
  }

  v34 = v26 + v10;
  v35 = *(v5 + 24);
  if ((*(v12 + 72) & 2) != 0)
  {
    v36 = 0x8000;
  }

  else
  {
    v36 = 0x10000;
  }

  v37 = 36;
  if ((*(v12 + 72) & 2) == 0)
  {
    v37 = 20;
  }

  v38 = *(v12 + v37);
  if ((*(v5 + 72) & 2) != 0)
  {
    v36 -= 0x8000;
    v39 = *(v5 + 40);
  }

  else
  {
    v39 = *(v5 + 24);
  }

  v40 = v39 - v38;
  if (v40 < 0)
  {
    v40 = -v40;
  }

  LODWORD(v41) = (v14 + v29 + v34 - ((v40 + 0x8000) >> 16));
  if (((v14 + v29 + v34 - ((v40 + 0x8000) >> 16)) & 0x8000) != 0)
  {
    do
    {
      if (v14 < 1)
      {
        LOWORD(v42) = 0;
      }

      else
      {
        v42 = 0;
        v43 = v14;
        result = a2;
        do
        {
          v44 = *result;
          result += 8;
          v45 = *(v44 + 40) + 0x10000;
          *(v44 + 40) = v45;
          v42 += v45 >> 16;
          --v43;
        }

        while (v43);
      }

      v46 = v41 + v42 - v29;
      LODWORD(v41) = v46;
      LOWORD(v29) = v42;
    }

    while (v46 < 0);
  }

  for (; v41 > v14; LODWORD(v41) = (v41 - v14))
  {
    if (v14 >= 1)
    {
      v47 = v14;
      v48 = a2;
      do
      {
        v49 = *v48++;
        result = (*(v49 + 40) - 0x10000);
        *(v49 + 40) = result;
        --v47;
      }

      while (v47);
    }
  }

  v50 = v36 * v40 * 0.0000152587891;
  v51 = 0.5;
  if (v50 >= 0.0)
  {
    v52 = 0.5;
  }

  else
  {
    v52 = -0.5;
  }

  v53 = v50 + v52;
  v54 = 2147483650.0;
  if (v53 < 2147483650.0)
  {
    v54 = -2147483650.0;
    if (v53 > -2147483650.0)
    {
      v54 = v53;
    }
  }

  v55 = v54 * v32 * 0.0000152587891;
  if (v55 < 0.0)
  {
    v51 = -0.5;
  }

  v56 = v55 + v51;
  v57 = v56 < 2147483650.0 && v56 > -2147483650.0;
  v58 = (v56 + 0x8000) >> 16;
  if (v57 && v41 >= 1 && v58 >= 1)
  {
    v71 = *(*(a2 + 8 * (v41 - 1)) + 44);
    if (v41 - 1 != v71)
    {
      v72 = 0;
      do
      {
        v73 = v72;
        v74 = *(*(a2 + 8 * v72++) + 44);
      }

      while (v74 < v71);
      v75 = v41 - v73;
      if ((v71 - v41) < v58)
      {
        LOWORD(v41) = v71 + 1;
      }

      if (v75 <= v58)
      {
        LOWORD(v41) = v73;
      }
    }
  }

  if (v14 < 1)
  {
    v62 = 0;
  }

  else
  {
    v61 = 0;
    v62 = 0;
    v41 = v41;
    do
    {
      v63 = *(a2 + 8 * v61);
      v64 = *(v63 + 42) << 16;
      if (v61 >= v41)
      {
        v64 += 0x10000;
      }

      *(v63 + 40) = v64;
      v62 += v64 >> 16;
      ++v61;
    }

    while (v14 != v61);
  }

  v65 = *(v5 + 72);
  if ((v65 & 2) == 0)
  {
    v66 = (v62 + v34) << 16;
    v67 = v66 - v40;
    v68 = *(v5 + 40) - *(v5 + 36);
    if (v68 < 0)
    {
      v68 = *(v5 + 36) - *(v5 + 40);
    }

    v69 = *(v12 + 72);
    if (v6 >= v7)
    {
      if ((v69 & 2) != 0)
      {
        v76 = *(v12 + 36) - v66;
      }

      else
      {
        v76 = (v35 - v67 / 2 + 0x7FFF) & 0xFFFF0000;
      }

      *(v5 + 40) = v76;
      v77 = v76 + v68;
    }

    else
    {
      if ((v69 & 2) != 0)
      {
        v70 = *(v12 + 36) + v66;
      }

      else
      {
        v70 = (v35 + v67 / 2 + 0x8000) & 0xFFFF0000;
      }

      *(v5 + 40) = v70;
      v77 = v70 - v68;
    }

    *(v5 + 36) = v77;
    *(v5 + 72) = v65 | 2;
    *(v5 + 74) = 0;
  }

  do
  {
    v78 = *(v5 + 64);
    v79 = *(v78 + 24);
    v80 = *(v79 + 72);
    if ((v80 & 2) != 0)
    {
      break;
    }

    v81 = *(v78 + 40);
    v82 = *(v79 + 40) - *(v79 + 36);
    if (v82 < 0)
    {
      v82 = *(v79 + 36) - *(v79 + 40);
    }

    if (v6 < v7)
    {
      v81 = -v81;
    }

    v83 = *(v5 + 36) + v81;
    v84 = v6 >= v7 ? v82 : -v82;
    *(v79 + 36) = v84 + v83;
    *(v79 + 40) = v83;
    *(v79 + 72) = v80 | 2;
    *(v79 + 74) = 0;
    v5 = v79;
  }

  while (*(v79 + 64));
  return result;
}

unsigned __int16 *sub_24BBEFDFC(unsigned __int16 *result, unsigned int a2, uint64_t *a3, _WORD *a4, void *a5, _WORD *a6, _WORD *a7)
{
  if (a3)
  {
    *a3 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  if (a7)
  {
    *a7 = 0;
  }

  if (bswap32(*result) >> 16 >= 3)
  {
    v7 = &result[2 * (bswap32(result[2]) >> 16)];
    v8 = result + a2;
    if ((v7 + 17) <= v8)
    {
      v9 = *(v7 + 15);
      if (!v9)
      {
        return result;
      }

      v10 = bswap32(v9);
      if (v10 + 26 <= a2)
      {
        v11 = (result + v10);
        if (a3 && v11[2] != -1)
        {
          v12 = v11 + (bswap32(v11[1]) >> 16) + 10;
          *a3 = v12;
          v13 = bswap32(v11[3]) >> 16;
          if (v12 + v13 > v8)
          {
            goto LABEL_24;
          }

          if (a4)
          {
            *a4 = v13;
          }
        }

        if (!a5 || *v11 == -1)
        {
LABEL_21:
          if (a7)
          {
            *a7 = bswap32(v11[4]) >> 16;
          }

          return result;
        }

        *a5 = v11 + 5;
        v14 = bswap32(v11[1]) >> 16;
        if (v11 + v14 + 10 <= v8)
        {
          if (a6)
          {
            *a6 = v14;
          }

          goto LABEL_21;
        }
      }
    }

LABEL_24:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BBE0934(exception, 5);
    __cxa_throw(exception, &unk_285F89D90, nullsub_8);
  }

  return result;
}

BOOL sub_24BBEFFB4(unsigned __int8 *a1, unsigned __int16 *a2, unsigned int a3, int *a4, int *a5, uint64_t a6, uint64_t a7)
{
  __src[2] = *MEMORY[0x277D85DE8];
  v19 = 0;
  __src[0] = 0;
  v18 = 0;
  __src[1] = 0;
  if (a4 == a5)
  {
    v10 = __src;
  }

  else
  {
    v10 = a5;
  }

  if (a4 == a5)
  {
    v11 = a5;
  }

  else
  {
    v11 = 0;
  }

  if (bswap32(*a2) >> 16 >= 3 && (sub_24BBEFDFC(a2, a3, &v19, &v18 + 1, 0, 0, &v18), v19))
  {
    v15 = sub_24BBD12E8(a1, 0, v10, a4, 1, 0, 0, v19, SHIWORD(v18), 0, v18, a6, a7);
  }

  else
  {
    sub_24BBF0120(a2, a3, bswap32(a2[2]) >> 16, a4, v10);
    v15 = 1;
  }

  if (v10 == __src)
  {
    memcpy(v11, __src, 4 * (bswap32(a2[2]) >> 16));
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t sub_24BBF0120(uint64_t result, unsigned int a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a3 >= 1)
  {
    v7 = result;
    v8 = 0;
    v48 = result + 14;
    v9 = a3;
    v10 = result + a2;
    while (1)
    {
      v11 = (v48 + 4 * v8);
      if ((v11 + 1) > v10)
      {
        break;
      }

      v12 = bswap32(*v11);
      if (v12 + 2 > a2 || v12 + 4 > a2 || v12 + 6 > a2)
      {
        break;
      }

      v13 = *(a4 + 4 * v8);
      v14 = *(v7 + v12);
      v15 = *(v7 + v12 + 2);
      v16 = *(v7 + v12 + 4);
      v17 = sub_24BBF08F0(v7, a2, v12 + 6);
      v18 = sub_24BBF08F0(v7, a2, v17);
      result = sub_24BBF08F0(v7, a2, v18);
      if ((v14 & 0x100) != 0)
      {
        if (result + 2 > a2)
        {
          break;
        }

        v22 = bswap32(*(v7 + result)) >> 16;
        if (v22 < 1)
        {
          LOWORD(v23) = 0;
        }

        else
        {
          LOWORD(v23) = 0;
          v24 = result + 8;
          do
          {
            if (v24 > a2)
            {
              goto LABEL_54;
            }

            if (v13 >> 16 <= bswap32(*(v7 + v24 - 6)) >> 16)
            {
              goto LABEL_24;
            }

            v23 = (v23 + 1);
            v24 += 6;
          }

          while (v23 < v22);
          LOWORD(v23) = v22;
        }

LABEL_24:
        v28 = v23 != 0;
        v29 = v23 - 1;
        if (!v28)
        {
          v29 = 0;
        }

        v30 = v22 - 2;
        if (v30 >= v29)
        {
          LOWORD(v30) = v29;
        }

        v31 = result + 2 + 6 * v30;
        v32 = v31 + 6;
        if (v31 + 6 > a2 || v31 + 12 > a2)
        {
          break;
        }

        v33 = (v7 + v31);
        v34 = (v7 + v32);
        v35 = bswap32(*v33);
        v36 = v13 - (HIWORD(v35) << 16);
        v37 = ((bswap32(*v34) >> 16) - HIWORD(v35)) << 16;
        if (v37)
        {
          v38 = (v36 & 0xFFFF0000) / v37 * 65536.0;
          if (v38 >= 0.0)
          {
            v39 = 0.5;
          }

          else
          {
            v39 = -0.5;
          }

          v40 = v38 + v39;
          if (v40 >= 2147483650.0)
          {
            v41 = 0x7FFFFFFF;
          }

          else if (v40 <= -2147483650.0)
          {
            v41 = 0x80000000;
          }

          else
          {
            v41 = v40;
          }
        }

        else
        {
          v41 = (v36 >> 31) ^ 0x7FFFFFFF;
        }

        v42 = bswap32(*(v33 + 1));
        v43 = v41 * (bswap32(*(v34 + 1)) - v42) * 0.0000152587891;
        if (v43 >= 0.0)
        {
          v44 = 0.5;
        }

        else
        {
          v44 = -0.5;
        }

        v45 = v43 + v44;
        if (v45 >= 2147483650.0)
        {
          v46 = 0x7FFFFFFF;
        }

        else if (v45 <= -2147483650.0)
        {
          v46 = 0x80000000;
        }

        else
        {
          v46 = v45;
        }

        v21 = v46 + v42;
      }

      else
      {
        v19 = __rev16(v15);
        v20 = v13 - (v19 << 16);
        if (v16 == v15)
        {
          v21 = (v20 >> 31) ^ 0x7FFFFFFF;
        }

        else
        {
          v25 = v20 / ((__rev16(v16) - v19) << 16) * 65536.0;
          if (v25 >= 0.0)
          {
            v26 = 0.5;
          }

          else
          {
            v26 = -0.5;
          }

          v27 = v25 + v26;
          if (v27 >= 2147483650.0)
          {
            v21 = 0x7FFFFFFF;
          }

          else if (v27 <= -2147483650.0)
          {
            v21 = 0x80000000;
          }

          else
          {
            v21 = v27;
          }
        }
      }

      *(a5 + 4 * v8++) = v21;
      if (v8 == v9)
      {
        return result;
      }
    }

LABEL_54:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BBE0934(exception, 5);
    __cxa_throw(exception, &unk_285F89D90, nullsub_8);
  }

  return result;
}

BOOL sub_24BBF0574(unsigned __int8 *a1, unsigned __int16 *a2, unsigned int a3, int *a4, int *a5, _DWORD *a6, __int16 a7, uint64_t a8, uint64_t a9)
{
  __src[2] = *MEMORY[0x277D85DE8];
  v24 = 0;
  v25 = 0;
  v23 = 0;
  v22 = 0;
  __src[0] = 0;
  __src[1] = 0;
  if (a4 == a5)
  {
    v16 = __src;
  }

  else
  {
    v16 = a5;
  }

  if (a4 == a5)
  {
    v17 = a5;
  }

  else
  {
    v17 = 0;
  }

  if (bswap32(*a2) >> 16 >= 3)
  {
    sub_24BBEFDFC(a2, a3, &v25, &v23 + 1, &v24, &v23, &v22);
  }

  if (a4)
  {
    v18 = v25;
    if (!v25)
    {
      sub_24BBF0120(a2, a3, bswap32(a2[2]) >> 16, a4, v16);
      v18 = v25;
    }
  }

  else
  {
    v18 = 0;
    v25 = 0;
  }

  v19 = sub_24BBD12E8(a1, a6, v16, a4, a7, v24, v23, v18, SHIWORD(v23), 0, v22, a8, a9);
  if (v16 == __src)
  {
    memcpy(v17, __src, 4 * (bswap32(a2[2]) >> 16));
  }

  result = v19;
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24BBF0700(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 == 45 || v1 == 43)
  {
    v2 = v1 == 45;
    v3 = *++a1;
    v1 = v3;
  }

  else
  {
    v2 = 0;
  }

  if ((v1 - 48) > 9)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    v5 = a1 + 1;
    do
    {
      v4 = v1 + 10 * v4 - 48;
      v6 = *v5++;
      v1 = v6;
    }

    while ((v6 - 48) < 0xA);
  }

  if (v2)
  {
    return -v4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_24BBF076C(void *__src, size_t __n)
{
  v2 = __n;
  v6 = *MEMORY[0x277D85DE8];
  memset(v5, 0, sizeof(v5));
  memcpy(v5, __src, __n);
  *(v5 + v2) = 0;
  result = sub_24BBF0700(v5);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24BBF07F4(_BYTE *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 0;
  }

  result = 0;
  v4 = a1 + 1;
  do
  {
    if ((v1 - 48) > 9u)
    {
      if ((v1 - 65) > 5)
      {
        if ((v1 - 97) > 5)
        {
          return result;
        }

        result = (v1 + 16 * result - 87);
      }

      else
      {
        result = (v1 + 16 * result - 55);
      }
    }

    else
    {
      result = (v1 + 16 * result - 48);
    }

    v5 = *v4++;
    v1 = v5;
  }

  while (v5);
  return result;
}

uint64_t sub_24BBF0868(void *__src, size_t __n)
{
  v2 = __n;
  v6 = *MEMORY[0x277D85DE8];
  memset(v5, 0, sizeof(v5));
  memcpy(v5, __src, __n);
  *(v5 + v2) = 0;
  result = sub_24BBF07F4(v5);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24BBF08F0(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = *(a1 + a3);
  if (v3 >= 0x1F)
  {
    v3 = 31;
  }

  result = (v3 + a3 + 2) & 0xFFFFFFFE;
  if (result > a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BBE0934(exception, 5);
    __cxa_throw(exception, &unk_285F89D90, nullsub_8);
  }

  return result;
}

unint64_t sub_24BBF0978(uint64_t a1)
{
  v1 = a1 + 24;
  while (1)
  {
    v2 = v1;
    if (v1 < qword_28151C010)
    {
      sub_24BBEDB70(-1, 0);
    }

    v1 += 24;
    if (v2 + 24 > qword_28151C000)
    {
      sub_24BBEDB70(-1, 0);
    }

    if ((*v2 & 0x2000) == 0)
    {
      break;
    }

    if ((*v2 & 0x1000) != 0)
    {
      v3 = *(v2 + 16);
      v1 = v2 + v3;
      if (!v3)
      {
        sub_24BBEDB70(-1, 0);
      }
    }
  }

  return v2;
}

unint64_t sub_24BBF0A14(uint64_t a1)
{
  v1 = a1 - 24;
  while (1)
  {
    if (v1 < qword_28151C010)
    {
      sub_24BBEDB70(-1, 0);
    }

    if (v1 + 24 > qword_28151C000)
    {
      sub_24BBEDB70(-1, 0);
    }

    if ((*v1 & 0x2000) == 0)
    {
      break;
    }

    if ((*v1 & 0x1000) != 0)
    {
      v2 = *(v1 + 20);
      v1 += v2;
      if (!v2)
      {
        sub_24BBEDB70(-1, 0);
      }
    }

    else
    {
      v1 -= 24;
    }
  }

  return v1;
}

unint64_t sub_24BBF0AB4(uint64_t a1, int a2)
{
  if ((a2 - 1) >= 2)
  {
    sub_24BBEDB70(-1, 0);
  }

  if (a2 == 1)
  {
    v2 = a1 + 24;
    if ((*(a1 + 24) & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    v3 = *(a1 + 40);
  }

  else
  {
    v2 = a1 - 24;
    if ((*(a1 - 24) & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    v3 = *(a1 - 4);
  }

  v2 += v3;
LABEL_9:
  if (v2 < qword_28151C010)
  {
    sub_24BBEDB70(-1, 0);
  }

  if (v2 + 24 > qword_28151C000)
  {
    sub_24BBEDB70(-1, 0);
  }

  return v2;
}

unint64_t sub_24BBF0B64(uint64_t a1)
{
  if (*(sub_24BBF0AB4(a1, 1) + 20) <= *(a1 + 20))
  {

    return sub_24BBF0A14(a1);
  }

  else
  {

    return sub_24BBF0978(a1);
  }
}

_WORD *sub_24BBF0BCC(_WORD *result, int a2)
{
  do
  {
    result = sub_24BBF0AB4(result, a2);
  }

  while ((*result & 0x800) != 0);
  return result;
}

int *sub_24BBF0BFC(int *result, int a2, int a3, int a4)
{
  v5 = a2;
  v6 = word_28151BFE2;
  v93 = word_28151BFE0;
  v7 = qword_28151BFE8;
  v8 = HIDWORD(qword_28151BFF0);
  if (WORD2(qword_28151BFF0) == 0x8000)
  {
    v8 = HIDWORD(qword_28151BFF0) | 1;
    HIDWORD(qword_28151BFF0) |= 1u;
  }

  if (qword_27F078538)
  {
    v9 = *(qword_27F078538 + 2);
    if (v9 == 0x8000)
    {
      v10 = 0x80000000;
    }

    else
    {
      v10 = (v9 << 16) - 0x10000;
    }

    v11 = *(qword_27F078538 + 6);
    if (v11 == 0x7FFF)
    {
      v12 = 0x7FFFFFFF;
    }

    else
    {
      v12 = (v11 << 16) + 0x10000;
    }

    v91 = v10;
    v92 = v12;
    if (v8 >= v10)
    {
      v13 = v8 > v12;
    }

    else
    {
      v13 = 2;
    }

    v94 = v13;
  }

  else
  {
    v91 = 0x80000000;
    v92 = 0x7FFFFFFF;
    v94 = 0;
  }

  v14 = &qword_28151BFF0;
  if (a2 >= 1)
  {
    v89 = 0;
    while (1)
    {
      v15 = v14;
      v14 = result;
      v16 = result[1];
      if (v16 == 0x8000)
      {
        v16 |= 1u;
        result[1] = v16;
      }

      v17 = *v15;
      v18 = v15[1];
      v19 = *result;
      if (*v15 < dword_28151BD88)
      {
        dword_28151BD88 = *v15;
      }

      if (v17 > dword_28151BD8C)
      {
        dword_28151BD8C = v17;
      }

      if (v18 < dword_28151BD80)
      {
        dword_28151BD80 = v18;
      }

      if (v18 > dword_28151BD84)
      {
        dword_28151BD84 = v18;
      }

      v20 = v19 - v17;
      if (v16 == v18)
      {
        v21 = (v20 >> 31) ^ 0x7FFFFFFF;
      }

      else
      {
        v22 = v20 / (v16 - v18) * 65536.0;
        if (v22 >= 0.0)
        {
          v23 = 0.5;
        }

        else
        {
          v23 = -0.5;
        }

        v24 = v22 + v23;
        if (v24 >= 2147483650.0)
        {
          v21 = 0x7FFFFFFF;
        }

        else if (v24 <= -2147483650.0)
        {
          v21 = 0x80000000;
        }

        else
        {
          v21 = v24;
        }
      }

      if (v16 <= v92)
      {
        if (v16 >= v91)
        {
          v94 = 0;
        }

        else
        {
          v25 = v94;
          if (v94 == 2)
          {
LABEL_47:
            v94 = v25;
            goto LABEL_222;
          }

          v30 = (v91 - v18) * v21 * 0.0000152587891;
          if (v30 >= 0.0)
          {
            v31 = 0.5;
          }

          else
          {
            v31 = -0.5;
          }

          v32 = v30 + v31;
          if (v32 >= 2147483650.0)
          {
            v33 = 0x7FFFFFFF;
          }

          else if (v32 <= -2147483650.0)
          {
            v33 = 0x80000000;
          }

          else
          {
            v33 = v32;
          }

          v19 = v33 + v17;
          v94 = 2;
          v16 = v91;
        }
      }

      else
      {
        v25 = v94;
        if (v94 == 1)
        {
          goto LABEL_47;
        }

        v26 = (v92 - v18) * v21 * 0.0000152587891;
        if (v26 >= 0.0)
        {
          v27 = 0.5;
        }

        else
        {
          v27 = -0.5;
        }

        v28 = v26 + v27;
        if (v28 >= 2147483650.0)
        {
          v29 = 0x7FFFFFFF;
        }

        else if (v28 <= -2147483650.0)
        {
          v29 = 0x80000000;
        }

        else
        {
          v29 = v28;
        }

        v19 = v29 + v17;
        v94 = 1;
        v16 = v92;
      }

      if (v92 >= v18)
      {
        if (v91 > v18)
        {
          v38 = (v91 - v18) * v21 * 0.0000152587891;
          if (v38 >= 0.0)
          {
            v39 = 0.5;
          }

          else
          {
            v39 = -0.5;
          }

          v40 = v38 + v39;
          if (v40 >= 2147483650.0)
          {
            v41 = 0x7FFFFFFF;
          }

          else if (v40 <= -2147483650.0)
          {
            v41 = 0x80000000;
          }

          else
          {
            v41 = v40;
          }

          v17 += v41;
          v18 = v91;
        }
      }

      else
      {
        v34 = (v92 - v18) * v21 * 0.0000152587891;
        if (v34 >= 0.0)
        {
          v35 = 0.5;
        }

        else
        {
          v35 = -0.5;
        }

        v36 = v34 + v35;
        if (v36 >= 2147483650.0)
        {
          v37 = 0x7FFFFFFF;
        }

        else if (v36 <= -2147483650.0)
        {
          v37 = 0x80000000;
        }

        else
        {
          v37 = v36;
        }

        v17 += v37;
        v18 = v92;
      }

      if (a3)
      {
        v42 = sub_24BBE7E30(v17, v18);
      }

      else
      {
        v42 = 0;
      }

      v43 = v93;
      if (v17 <= v19)
      {
        if (v17 == v19)
        {
          if (v93)
          {
            if (v93 == 3)
            {
              goto LABEL_104;
            }

            if (!v42)
            {
              v42 = sub_24BBE7E30(v19, v18);
              v43 = v93;
            }

            if (v43 == 1)
            {
              v44 = &qword_28151BD98;
            }

            else
            {
              v44 = &qword_28151BD90;
            }

            *(v42 + 8) = *v44;
            *v44 = v42;
          }

          v43 = 3;
        }

        else
        {
          v43 = v93 | 2;
          if ((v93 | 2) != 2)
          {
            if (!v42)
            {
              v42 = sub_24BBE7E30(v17, v18);
            }

            *(v42 + 8) = qword_28151BD98;
            qword_28151BD98 = v42;
            v43 = 2;
          }
        }
      }

      else
      {
        if (v93 >= 2)
        {
          if (!v42)
          {
            v42 = sub_24BBE7E30(v17, v18);
          }

          *(v42 + 8) = qword_28151BD90;
          qword_28151BD90 = v42;
        }

        v43 = 1;
      }

LABEL_104:
      v93 = v43;
      if (v18 <= v16)
      {
        if (v18 == v16)
        {
          if (v6 != 6)
          {
            if (!v42)
            {
              sub_24BBE7E30(v17, v16);
            }

            v6 = 6;
          }
        }

        else
        {
          if (v6 != 4 && !v42)
          {
            sub_24BBE7E30(v17, v18);
          }

          v51 = (v18 + 0x8000) & 0xFFFF0000;
          v52 = v51 | 0x8000;
          if ((v51 | 0x8000) <= v16)
          {
            v53 = v21 * (v52 - v18) * 0.0000152587891;
            if (v53 >= 0.0)
            {
              v54 = 0.5;
            }

            else
            {
              v54 = -0.5;
            }

            v55 = v53 + v54;
            if (v55 >= 2147483650.0)
            {
              v56 = 0x7FFFFFFF;
            }

            else if (v55 <= -2147483650.0)
            {
              v56 = 0x80000000;
            }

            else
            {
              v56 = v55;
            }

            v65 = sub_24BBE7DA4(v56 + v17, v52);
            if (a4)
            {
              if (v21 >= 0)
              {
                v66 = v21;
              }

              else
              {
                v66 = -v21;
              }

              if (v66 <= 0x14D9F)
              {
                if (v66 >= 0x21B5)
                {
                  v67 = 32;
                }

                else
                {
                  v67 = 16;
                }
              }

              else if (v66 <= 0x79882)
              {
                if (v66 <= 0x26A09)
                {
                  v67 = 48;
                }

                else
                {
                  v67 = 64;
                }
              }

              else
              {
                v67 = 80;
              }

              *v65 = v67 | *v65 & 0xFF0F;
            }

            v77 = *(v65 + 20);
            v78 = *(v7 + 20);
            if (v77 > v78)
            {
              *v65 = *v65 & 0xFFFC | 2;
              v79 = *v7 | 0x100;
              goto LABEL_196;
            }

            if (v77 < v78)
            {
              *v7 = *v7 & 0xFFFC | 2;
              v80 = *v65 | 0x100;
              goto LABEL_201;
            }

            if (*(v65 + 16) >= *(v7 + 16))
            {
              v79 = *v7 | 4;
LABEL_196:
              *v7 = v79;
            }

            else
            {
              v80 = *v65 & 0xFFF3 | 8;
LABEL_201:
              *v65 = v80;
            }

            v81 = v51 + 98304;
            if ((v51 + 98304) <= v16)
            {
              if (v21 >= 0)
              {
                v82 = v21;
              }

              else
              {
                v82 = -v21;
              }

              if (v82 >= 0x21B5)
              {
                v83 = 32;
              }

              else
              {
                v83 = 16;
              }

              if (v82 <= 0x26A09)
              {
                v84 = 48;
              }

              else
              {
                v84 = 64;
              }

              if (v82 > 0x79882)
              {
                v84 = 80;
              }

              if (v82 <= 0x14D9F)
              {
                v85 = v83;
              }

              else
              {
                v85 = v84;
              }

              v86 = v21 + v56 + v17;
              do
              {
                v87 = v65;
                v65 = sub_24BBE7DA4(v86, v81);
                v88 = *v65;
                if (a4)
                {
                  v88 = v85 | *v65 & 0xFF0C;
                }

                *v65 = v88 & 0xFFFC | 2;
                *v87 |= 0x100u;
                v81 += 0x10000;
                v86 += v21;
              }

              while (v81 <= v16);
            }

            v89 = 1;
            v6 = 4;
            v7 = v65;
            goto LABEL_222;
          }

          v6 = 4;
        }

        goto LABEL_222;
      }

      if (v6 != 5 && !v42)
      {
        sub_24BBE7E30(v17, v18);
      }

      v45 = (v18 - 0x8000) & 0xFFFF0000;
      v46 = v45 | 0x8000;
      if ((v45 | 0x8000) < v16)
      {
        goto LABEL_189;
      }

      v47 = v21 * (v46 - v18) * 0.0000152587891;
      if (v47 >= 0.0)
      {
        v48 = 0.5;
      }

      else
      {
        v48 = -0.5;
      }

      v49 = v47 + v48;
      if (v49 >= 2147483650.0)
      {
        v50 = 0x7FFFFFFF;
      }

      else if (v49 <= -2147483650.0)
      {
        v50 = 0x80000000;
      }

      else
      {
        v50 = v49;
      }

      v57 = sub_24BBE7DA4(v50 + v17, v46);
      v58 = v57;
      if (a4)
      {
        if (v21 >= 0)
        {
          v59 = v21;
        }

        else
        {
          v59 = -v21;
        }

        if (v59 <= 0x14D9F)
        {
          if (v59 >= 0x21B5)
          {
            v60 = 32;
          }

          else
          {
            v60 = 16;
          }
        }

        else if (v59 <= 0x79882)
        {
          if (v59 <= 0x26A09)
          {
            v60 = 48;
          }

          else
          {
            v60 = 64;
          }
        }

        else
        {
          v60 = 80;
        }

        *v57 = v60 | *v57 & 0xFF0F;
      }

      v61 = *(v57 + 20);
      v62 = *(v7 + 20);
      if (v61 >= v62)
      {
        if (v61 > v62)
        {
          *v57 = *v57 & 0xFFFC | 2;
          v64 = *v7 | 0x100;
LABEL_167:
          *v7 = v64;
          goto LABEL_168;
        }

        if (*(v57 + 16) >= *(v7 + 16))
        {
          v64 = *v7 | 4;
          goto LABEL_167;
        }

        v63 = *v57 & 0xFFF3 | 8;
      }

      else
      {
        *v7 = *v7 & 0xFFFC | 1;
        v63 = *v57 | 0x100;
      }

      *v57 = v63;
LABEL_168:
      v68 = v45 - 0x8000;
      if (v68 >= v16)
      {
        if (v21 >= 0)
        {
          v69 = v21;
        }

        else
        {
          v69 = -v21;
        }

        if (v69 >= 0x21B5)
        {
          v70 = 32;
        }

        else
        {
          v70 = 16;
        }

        if (v69 <= 0x26A09)
        {
          v71 = 48;
        }

        else
        {
          v71 = 64;
        }

        if (v69 > 0x79882)
        {
          v71 = 80;
        }

        v72 = v69 > 0x14D9F;
        v73 = v50;
        if (v72)
        {
          v74 = v71;
        }

        else
        {
          v74 = v70;
        }

        v75 = v73 + v17 - v21;
        do
        {
          v76 = sub_24BBE7DA4(v75, v68);
          v7 = v76;
          if (a4)
          {
            *v76 = v74 | *v76 & 0xFF0F;
          }

          *v58 = *v58 & 0xFFFC | 1;
          *v76 |= 0x100u;
          v68 -= 0x10000;
          v75 -= v21;
          v58 = v76;
        }

        while (v68 >= v16);
        v89 = 1;
LABEL_189:
        v6 = 5;
        goto LABEL_222;
      }

      v89 = 1;
      v6 = 5;
      v7 = v57;
LABEL_222:
      result = (v14 + 1);
      v72 = v5-- <= 1;
      if (v72)
      {
        goto LABEL_227;
      }
    }
  }

  v89 = 0;
LABEL_227:
  dword_28151BFDC |= v89;
  word_28151BFE2 = v6;
  word_28151BFE0 = v93;
  qword_28151BFE8 = v7;
  qword_28151BFF0 = *v14;
  return result;
}

int *sub_24BBF164C(int *result)
{
  v1 = result;
  v2 = dword_27F078530;
  if (dword_27F078530 == 70)
  {
    result = sub_24BBE7EC0(dword_28151BDA0, 70, 0);
    v2 = 0;
    dword_27F078530 = 0;
  }

  else if ((dword_27F078530 - 1) <= 1)
  {
    v3 = &dword_28151BDA0[2 * (dword_27F078530 - 1)];
    v4 = -result[1];
    *v3 = *result;
    v3[1] = v4;
    return result;
  }

  v5 = &dword_28151BDA0[2 * v2];
  v6 = -v1[1];
  *v5 = *v1;
  v5[1] = v6;
  dword_27F078530 = v2 + 1;
  return result;
}

int *sub_24BBF16E8(int *result)
{
  v1 = result;
  v2 = dword_27F078530;
  if (dword_27F078530 == 70)
  {
    result = sub_24BBE7EC0(dword_28151BDA0, 70, 0);
    v2 = 0;
    dword_27F078530 = 0;
  }

  v3 = &dword_28151BDA0[2 * v2];
  v4 = -v1[1];
  *v3 = *v1;
  v3[1] = v4;
  dword_27F078530 = v2 + 1;
  return result;
}

_WORD *sub_24BBF1758(_WORD *a1)
{
  if ((*a1 & 0x400) != 0)
  {
    return a1;
  }

  v1 = a1[11];
  if (v1 < SHIWORD(dword_28151BD80) || v1 > SHIWORD(dword_28151BD84))
  {
    return a1;
  }

  v4 = (qword_28151C008 + 8 * a1[11]);
  do
  {
    v2 = *v4;
    if (!*v4)
    {
      sub_24BBEDB70(-1, 0);
    }

    v5 = *(v2 + 8);
    if (!v5)
    {
      sub_24BBEDB70(-1, 0);
    }

    v4 = (v5 + 8);
  }

  while (v5 != a1);
  return v2;
}

uint64_t sub_24BBF1804(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 20);
  v5 = a3 - v4;
  v6 = *(a2 + 20) - v3;
  v7 = *(a2 + 16) - v4;
  if (v7)
  {
    v9 = v6 / v7 * 65536.0;
    v10 = 0.5;
    if (v9 < 0.0)
    {
      v10 = -0.5;
    }

    v11 = v9 + v10;
    if (v11 >= 2147483650.0)
    {
      v8 = 0x7FFFFFFF;
    }

    else if (v11 <= -2147483650.0)
    {
      v8 = 0x80000000;
    }

    else
    {
      v8 = v11;
    }
  }

  else
  {
    v8 = (v6 >> 31) ^ 0x7FFFFFFF;
  }

  v12 = v5 * v8 * 0.0000152587891;
  v13 = 0.5;
  if (v12 < 0.0)
  {
    v13 = -0.5;
  }

  v14 = v12 + v13;
  if (v14 >= 2147483650.0)
  {
    v15 = 0x7FFFFFFF;
  }

  else if (v14 <= -2147483650.0)
  {
    v15 = 0x80000000;
  }

  else
  {
    v15 = v14;
  }

  return (v15 + v3);
}

void sub_24BBF18EC(TFontSurrogate *this)
{
  *this = &unk_285F8A030;
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  TFontSurrogate::~TFontSurrogate(this);
}

void sub_24BBF196C(TFontSurrogate *a1)
{
  sub_24BBF18EC(a1);

  JUMPOUT(0x24C252120);
}

void sub_24BBF19B0(MCacheData *a1)
{
  sub_24BBF1EF4(a1);

  JUMPOUT(0x24C252120);
}

uint64_t sub_24BBF19E8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  memset(v30, 0, sizeof(v30));
  (*(**(a1 + 48) + 472))(v30);
  Data = TDataReference::GetData(v30);
  if (!Data)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BBE0934(exception, 5);
    __cxa_throw(exception, &unk_285F89D90, nullsub_8);
  }

  v13 = *(*(a1 + 48) + 148);
  if (TDataReference::GetSize(v30) < (8 * v13))
  {
    v29 = __cxa_allocate_exception(0x10uLL);
    sub_24BBE0934(v29, 5);
    __cxa_throw(v29, &unk_285F89D90, nullsub_8);
  }

  if (v13)
  {
    v14 = 0;
    if (a3)
    {
      v15 = (a2 + 1) >= 2;
    }

    else
    {
      v15 = 0;
    }

    v16 = !v15;
    do
    {
      v17 = bswap32(*(a4 + 14 + 4 * v14));
      if (v17 + 7 > a5)
      {
        v27 = __cxa_allocate_exception(0x10uLL);
        sub_24BBE0934(v27, 5);
        __cxa_throw(v27, &unk_285F89D90, nullsub_8);
      }

      v18 = Data + 8 * v14;
      *(a6 + 4 * v14) = bswap32(*(v18 + 4)) & 0xFFFF0000;
      if ((v16 & 1) == 0)
      {
        v19 = a4 + v17;
        v20 = bswap32(*v18);
        v21 = (a3 + 4);
        v22 = a2;
        while (*(v21 - 1) != v20)
        {
          v21 += 2;
          if (!--v22)
          {
            goto LABEL_21;
          }
        }

        v23 = *v21 * (bswap32(*(v18 + 6)) >> 16);
        v24 = bswap32(*(v19 + 2)) & 0xFFFF0000;
        if (v23 >= v24)
        {
          v25 = bswap32(*(v19 + 4)) & 0xFFFF0000;
          if (v23 >= v25)
          {
            v24 = v25;
          }

          else
          {
            v24 = v23;
          }
        }

        *(a6 + 4 * v14) = v24;
      }

LABEL_21:
      ++v14;
    }

    while (v14 != v13);
  }

  return MEMORY[0x24C252010](v30);
}

void sub_24BBF1C1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_free_exception(v9);
  MEMORY[0x24C252010](&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_24BBF1C5C(uint64_t a1, uint64_t a2, _WORD *a3, void *a4)
{
  v4 = *(a1 + 48);
  *a3 = *(v4 + 146);
  v7 = v4 + 112;
  v5 = *(v4 + 112);
  v6 = *(v7 + 8);
  *a2 = v5;
  *a4 = v5 + v6;
  return *a2;
}

uint64_t sub_24BBF1C80(uint64_t a1, _WORD *a2, void *a3, void *a4, void *a5, void *a6)
{
  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  return 0;
}

void *sub_24BBF1C9C(void *a1, uint64_t a2)
{
  v4 = sub_24BBD6E88(a1);
  *v4 = &unk_285F8A1E0;
  v4[1] = a2;
  v5 = (*(**(a2 + 8) + 504))();
  a1[2] = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BBE0934(exception, 4);
    __cxa_throw(exception, &unk_285F89D90, nullsub_8);
  }

  return a1;
}

void sub_24BBF1D68(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  nullsub_1(v1);
  _Unwind_Resume(a1);
}

void sub_24BBF1D90(uint64_t a1)
{
  v1 = nullsub_1(a1);

  sub_24BBD7160(v1);
}

uint64_t sub_24BBF1DC8(uint64_t a1, unsigned int a2, unsigned int a3, _BYTE *a4)
{
  *a4 = 0;
  v8 = (*(**(a1 + 48) + 168))(*(a1 + 48));
  if (v8 >= 0xFFFF)
  {
    v9 = 0xFFFF;
  }

  else
  {
    v9 = v8;
  }

  if (v9 <= a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BBE0934(exception, 8);
    goto LABEL_17;
  }

  if (a2)
  {
    v10 = *(a1 + 48);
    v11 = *(*(v10 + 192) + 4 * a2);
    if ((v11 & 0x80000000) == 0)
    {
      v12 = *(v10 + 48);
      v13 = (v12 + v11 + 1);
      v14 = *(v12 + v11);
      goto LABEL_9;
    }

    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BBE0934(exception, 5);
LABEL_17:
    __cxa_throw(exception, &unk_285F89D90, nullsub_8);
  }

  v13 = ".notdef";
  v14 = aNotdef_0[0] - 1;
LABEL_9:
  if (v14)
  {
    v15 = v14 >= a3;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    memcpy(a4, v13, v14);
    a4[v14] = 0;
  }

  return v14;
}

void sub_24BBF1EF4(MCacheData *this)
{
  *this = &unk_285F8A2D0;
  v2 = *(this + 2);
  if (v2)
  {
    j__free(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    j__free(v3);
  }

  v4 = *(this + 5);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  MCacheData::~MCacheData(this);
}

void sub_24BBF1F94(uint64_t a1, int a2, uint64_t a3, _DWORD *a4)
{
  v4 = 0;
  if (a2)
  {
    v5 = (a3 + 4);
    v6 = a2;
    while (1)
    {
      v7 = *(v5 - 1);
      if (v7 == 1885434984)
      {
        break;
      }

      if (v7 != 1651335536)
      {
        goto LABEL_15;
      }

      v8 = *v5;
      if (*v5 > 1836343916)
      {
        if (v8 == 1885960244)
        {
LABEL_16:
          *a4 = 1;
          goto LABEL_17;
        }

        if (v8 != 1836343917)
        {
LABEL_15:
          *a4 = 0;
          ++v4;
          goto LABEL_17;
        }

        *a4 = 4;
      }

      else
      {
        if (v8 == 1668112752)
        {
          goto LABEL_11;
        }

        if (v8 != 1836087348)
        {
          goto LABEL_15;
        }

        *a4 = 3;
      }

LABEL_17:
      ++a4;
      v5 += 2;
      if (!--v6)
      {
        goto LABEL_18;
      }
    }

    if (*v5 == 1735946356)
    {
      goto LABEL_16;
    }

    if (*v5 != 1668637285)
    {
      goto LABEL_15;
    }

LABEL_11:
    *a4 = 2;
    goto LABEL_17;
  }

LABEL_18:
  if (v4 == a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BBE0934(exception, 13);
    __cxa_throw(exception, &unk_285F89D90, nullsub_8);
  }
}

uint64_t sub_24BBF20F4(uint64_t result, int a2, unsigned __int16 *a3, uint64_t a4, _BYTE *a5, _DWORD *a6)
{
  if (!a5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BBE0934(exception, 8);
    goto LABEL_12;
  }

  v7 = a2;
  if (a2)
  {
    v8 = a5;
    v11 = result;
    v12 = 0;
    while (1)
    {
      v13 = *a3++;
      result = (*(*v11 + 264))(v11, v13, a4, v8);
      if (!result)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        sub_24BBE0934(exception, 22);
        goto LABEL_12;
      }

      v12 += result;
      if (!*v8)
      {
        break;
      }

      v8 += result;
      a4 = (a4 - result);
      if (!--v7)
      {
        goto LABEL_9;
      }
    }

    *a6 = v12;
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BBE0934(exception, 19);
LABEL_12:
    __cxa_throw(exception, &unk_285F89D90, nullsub_8);
  }

  v12 = 0;
LABEL_9:
  *a6 = v12;
  return result;
}

uint64_t sub_24BBF2238(uint64_t a1, int a2, char *__s, _WORD *a4)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BBE0934(exception, 8);
    goto LABEL_10;
  }

  v6 = a2;
  do
  {
    v8 = strlen(__s);
    result = (*(*a1 + 272))(a1, __s, v8);
    *a4 = result;
      ;
    }

    ++a4;
    --v6;
  }

  while (v6);
  if (result == 0xFFFF)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BBE0934(exception, 22);
LABEL_10:
    __cxa_throw(exception, &unk_285F89D90, nullsub_8);
  }

  return result;
}

uint64_t sub_24BBF2338(uint64_t a1, const void *a2, unsigned int a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = (*(*a1 + 16))(a1);
  if (v6)
  {
    v7 = v6;
    for (i = 0; i < v7; ++i)
    {
      memset(v13, 0, sizeof(v13));
      if (i)
      {
        (*(*a1 + 304))(a1, i, v13);
        v9 = LOBYTE(v13[0]);
        v10 = v13 + 1;
        if (!LOBYTE(v13[0]))
        {
          continue;
        }
      }

      else
      {
        v9 = 8;
        v10 = "/.notdef";
      }

      if (v9 - 1 == a3 && !memcmp(v10 + 1, a2, a3))
      {
        goto LABEL_11;
      }
    }
  }

  i = 0;
LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return i;
}

unsigned __int8 *sub_24BBF24B0(unsigned __int16 *a1, unsigned int a2)
{
  v37[2] = *MEMORY[0x277D85DE8];
  v2 = bswap32(a1[2]);
  v3 = bswap32(a1[3]);
  v4 = v2 >> 16;
  v32 = 1 << SBYTE2(v2);
  if (1 << SBYTE2(v2) >= v3 >> 16 || (v37[0] = 0, sub_24BBEFDFC(a1, a2, 0, 0, v37, 0, 0), v37[0]))
  {
    v5 = v3 >> 16;
    v6 = sub_24BBD0EE4(v4, v3 >> 16, sub_24BBD0F60, 0);
    v7 = v6;
    v35 = v6;
    v8 = a1 + a2;
    v9 = &a1[2 * v4];
    if ((v9 + 9) > v8)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      sub_24BBE0934(exception, 5);
      __cxa_throw(exception, &unk_285F89D90, nullsub_8);
    }

    v10 = *(v9 + 7);
    v37[0] = 0;
    v37[1] = 0;
    if (v5 >= 1)
    {
      v11 = 0;
      v12 = a1 + bswap32(v10);
      v31 = v6;
      do
      {
        if ((v12 + 1) > v8)
        {
          v29 = __cxa_allocate_exception(0x10uLL);
          sub_24BBE0934(v29, 5);
          __cxa_throw(v29, &unk_285F89D90, nullsub_8);
        }

        v13 = v12 + 2;
        v14 = *v12;
        v36 = 0;
        if (v14 >= 1)
        {
          v15 = 1;
        }

        else
        {
          v15 = v14;
        }

        v16 = v15 - 1;
        while (v14 > 1)
        {
          if (v13 > v8)
          {
            goto LABEL_41;
          }

          v17 = *(v13++ - 1);
          --v14;
          if (v17 == 95)
          {
            v18 = v13 - 2;
            goto LABEL_16;
          }
        }

        v18 = v13 - 2;
        v14 = v16;
LABEL_16:
        v19 = 0;
        v20 = 0;
        v21 = (v18 + 2);
        do
        {
          if (v21 > v8 || v19 > 3 || v20 > 7)
          {
            goto LABEL_41;
          }

          v22 = *(v21 - 1);
          if ((v22 - 48) > 9)
          {
            if (v20)
            {
              *(&v37[-1] + v20) = 0;
              v23 = sub_24BBD0F7C(&v36);
              v20 = 0;
              *(v37 + v19++) = v23;
            }
          }

          else
          {
            *(&v37[-1] + v20++) = v22;
          }

          v24 = v14--;
          ++v21;
        }

        while (v24 > 1);
        v7 = v31;
        if (v20 <= 7 && v20 && v19 <= 3)
        {
          *(&v37[-1] + v20) = 0;
          *(v37 + v19) = sub_24BBD0F7C(&v36);
        }

        if (!qword_28151C130)
        {
          qword_28151C138 = sub_24BBF2FD8;
          qword_28151C140 = sub_24BBF3008;
          qword_28151C148 = sub_24BBF3038;
          qword_28151C150 = sub_24BBF3040;
          unk_28151C158 = 0;
          qword_28151C160 = sub_24BBF30D8;
          qword_28151C170 = 0;
          unk_28151C178 = 0;
          qword_28151C168 = sub_24BBF30E4;
          qword_28151C130 = &qword_28151C138;
        }

        if (!sub_24BBEFFB4(v31, a1, a2, v37, v37, &qword_28151C130, 0) || v32 == v5 && !sub_24BBD1288(v31, v11, v37))
        {
LABEL_41:
          v28 = __cxa_allocate_exception(0x10uLL);
          sub_24BBE0934(v28, 5);
          __cxa_throw(v28, &unk_285F89D90, nullsub_8);
        }

        v25 = &v12[*v12];
        if ((v25 + 1))
        {
          v12 = v25 + 2;
        }

        else
        {
          v12 = v25 + 1;
        }

        ++v11;
      }

      while (v11 != v5);
    }

    v35 = 0;
    sub_24BBF33B8(&v35);
  }

  else
  {
    v7 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v7;
}

void sub_24BBF28EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_24BBF33B8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BBF293C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  memset(v29, 0, sizeof(v29));
  (*(**(a1 + 48) + 472))(v29);
  Data = TDataReference::GetData(v29);
  if (!Data)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BBE0934(exception, 5);
    __cxa_throw(exception, &unk_285F89D90, nullsub_8);
  }

  v13 = *(*(a1 + 48) + 148);
  if (TDataReference::GetSize(v29) < (8 * v13))
  {
    v28 = __cxa_allocate_exception(0x10uLL);
    sub_24BBE0934(v28, 5);
    __cxa_throw(v28, &unk_285F89D90, nullsub_8);
  }

  if (v13)
  {
    v14 = 0;
    if (a3)
    {
      v15 = (a2 + 1) >= 2;
    }

    else
    {
      v15 = 0;
    }

    v16 = !v15;
    do
    {
      v17 = bswap32(*(a4 + 14 + 4 * v14));
      if (v17 + 7 > a5)
      {
        v26 = __cxa_allocate_exception(0x10uLL);
        sub_24BBE0934(v26, 5);
        __cxa_throw(v26, &unk_285F89D90, nullsub_8);
      }

      *(a6 + 4 * v14) = bswap32(*(Data + 4)) & 0xFFFF0000;
      if ((v16 & 1) == 0)
      {
        v18 = a4 + v17;
        v19 = bswap32(*Data);
        v20 = (a3 + 4);
        v21 = a2;
        while (*(v20 - 1) != v19)
        {
          v20 += 2;
          if (!--v21)
          {
            goto LABEL_21;
          }
        }

        v22 = *v20 * (bswap32(*(Data + 6)) >> 16);
        v23 = bswap32(*(v18 + 2)) & 0xFFFF0000;
        if (v22 >= v23)
        {
          v24 = bswap32(*(v18 + 4)) & 0xFFFF0000;
          if (v22 >= v24)
          {
            v23 = v24;
          }

          else
          {
            v23 = v22;
          }
        }

        *(a6 + 4 * v14) = v23;
      }

LABEL_21:
      ++v14;
      Data += 8;
    }

    while (v14 != v13);
  }

  return MEMORY[0x24C252010](v29);
}

void sub_24BBF2B70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_free_exception(v9);
  MEMORY[0x24C252010](&a9);
  _Unwind_Resume(a1);
}

void sub_24BBF2BB0(TFontSurrogate *a1)
{
  TFontSurrogate::~TFontSurrogate(a1);

  JUMPOUT(0x24C252120);
}

uint64_t sub_24BBF2BE8(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = (*(*result + 40))(result) - 22;
    if (v3 >= 8)
    {

      return MEMORY[0x282161720](a1);
    }

    else
    {
      return *&aNfwl1tdp1tdpct[4 * v3];
    }
  }

  return result;
}

uint64_t sub_24BBF2C6C(void *a1, uint64_t a2, _DWORD *a3)
{
  result = a1[1];
  if (result)
  {
    if ((*(*result + 40))(result) - 23 >= 7)
    {

      return MEMORY[0x282161708](a1, a2, a3);
    }

    else if ((*(*a1 + 16))(a1) == a2)
    {
      if (a3)
      {
        v7 = (*(*a1[1] + 56))(a1[1]);
        *a3 = (*(*v7 + 24))(v7);
      }

      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_24BBF2D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v10 = *(a1 + 8);
  if (v10 && (v11 = (*(*v10 + 40))(v10), a2 == -1) && (v11 - 23) <= 6 && (v12 = (*(**(a1 + 8) + 56))(*(a1 + 8)), v13 = (*(*v12 + 24))(v12), a4 + a3 <= v13))
  {
    *a5 = v13;
    if (a4)
    {
      v14 = a4;
    }

    else
    {
      v14 = v13 - a3;
    }

    v15 = *(**(a1 + 8) + 48);
    v16 = *(a1 + 8);

    return v15(v16, a3, v14);
  }

  else
  {

    return MEMORY[0x282161700](a1, a2, a3, a4, a5);
  }
}

uint64_t sub_24BBF2EF8(TFontSurrogate *a1)
{
  result = TFontSurrogate::GetFontTableSize(a1);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BBE0934(exception, 4);
    __cxa_throw(exception, &unk_285F89D90, nullsub_8);
  }

  return result;
}

char *sub_24BBF2F64(unsigned int a1, unint64_t a2)
{
  v2 = &unk_28151BAE0 + 24 * a1;
  v3 = *(v2 + 4);
  if (v3 < a2)
  {
    v4 = ((a2 - v3 + *(v2 + 5)) & ~*(v2 + 5)) + v3;
    v5 = sub_24BBE2E50(*v2, v4);
    if (v5)
    {
      *v2 = v5;
      *(v2 + 4) = v4;
      *(v2 + 2) = v4;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t sub_24BBF3040()
{
  result = (*(*qword_28151C040 + 16))(qword_28151C040);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BBE0934(exception, 20);
    __cxa_throw(exception, &unk_285F89D90, nullsub_8);
  }

  return result;
}

void *sub_24BBF30E4(int a1, void *a2, size_t __size)
{
  result = sub_24BBE2E50(a2, __size);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BBE0934(exception, 20);
    __cxa_throw(exception, &unk_285F89D90, nullsub_8);
  }

  return result;
}

uint64_t sub_24BBF3158(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  v10 = (*(*a2 + 64))(a2);
  v11 = (*(*v10 + 16))(v10);
  v19 = 0;
  v18 = 0;
  sub_24BBD6C20(v17, a1);
  sub_24BBF82A0(v17, *(*(a1 + 48) + 150), (v11 + 648), &v19 + 1, &v19, &v18);
  sub_24BBD70C8(v17);
  LODWORD(v17[0]) = 0;
  HIDWORD(v17[0]) = HIDWORD(v19);
  v15 = 0;
  v16 = v19;
  v13 = 0;
  v14 = v18;
  (*(*a2 + 24))(a2, v17, v17);
  (*(*a2 + 24))(a2, &v15, &v15);
  result = (*(*a2 + 24))(a2, &v13, &v13);
  *a3 = -HIDWORD(v17[0]);
  *a4 = v16;
  *a5 = -v14;
  return result;
}

void sub_24BBF3300(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20, __int128 a21, __int128 a22, __int128 a23, __int128 a24, __int128 a25, __int128 a26, __int128 a27, __int128 a28, __int128 a29, __int128 a30, __int128 a31, __int128 a32, uint64_t a33)
{
  sub_24BBD70C8(&a11);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    v37 = *(*(v33 + 48) + 128);
    a33 = 0;
    a31 = 0u;
    a32 = 0u;
    a29 = 0u;
    a30 = 0u;
    a27 = 0u;
    a28 = 0u;
    a25 = 0u;
    a26 = 0u;
    a23 = 0u;
    a24 = 0u;
    a21 = 0u;
    a22 = 0u;
    a19 = 0u;
    a20 = 0u;
    a17 = 0u;
    a18 = 0u;
    a15 = 0u;
    a16 = 0u;
    a13 = 0u;
    a14 = 0u;
    a11 = 0u;
    a12 = 0u;
    if (*(v37 + 72) > 1u)
    {
      v38 = &a11;
      sub_24BBD6C0C();
    }

    else
    {
      v38 = (v37 + 88);
    }

    v39 = *(v38 + 3);
    *(v34 - 88) = *(v38 + 1);
    *(v34 - 84) = v39;
    *(v34 - 92) = 0;
    __cxa_end_catch();
    JUMPOUT(0x24BBF321CLL);
  }

  _Unwind_Resume(a1);
}

void **sub_24BBF33B8(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    j__free(v2);
  }

  return a1;
}

void sub_24BBF33F4(MCacheData *a1)
{
  sub_24BBF37CC(a1);

  JUMPOUT(0x24C252120);
}

size_t sub_24BBF342C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = (*(*a1 + 328))(a1);
  v6 = (*(*a1 + 336))(a1);
  sub_24BBF34E0(v5, v6);
  GlyphNameForCIDPerROS = GenerateGlyphNameForCIDPerROS();
  result = strlen(GlyphNameForCIDPerROS);
  *a3 = result;
  return result;
}

uint64_t sub_24BBF34E0(uint64_t a1, uint64_t a2)
{
  if (!a1 || !a2 || strcmp((a1 + 1), "Adobe"))
  {
    return 0xFFFFLL;
  }

  if (!strcmp((a2 + 1), "Japan1"))
  {
    return 2;
  }

  result = strcmp((a2 + 1), "GB1");
  if (result)
  {
    if (!strcmp((a2 + 1), "CNS1"))
    {
      return 1;
    }

    if (!strcmp((a2 + 1), "Korea1"))
    {
      return 3;
    }

    return 0xFFFFLL;
  }

  return result;
}

size_t sub_24BBF3588(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  GlyphNameForCIDPerROS = GenerateGlyphNameForCIDPerROS();
  result = strlen(GlyphNameForCIDPerROS);
  *a4 = result;
  return result;
}

uint64_t sub_24BBF35BC(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  v3 = *a2;
  if (a3 >= 2 && v3 == 97)
  {
    v5 = sub_24BBF0868(a2 + 1, a3 - 1);
    v20 = 0;
    v19 = 0u;
    memset(v18, 0, sizeof(v18));
    v6 = (*(*a1 + 280))(a1);
    sub_24BBE24E0(v18, v6, 1886352244, 0x40000, 0, 0);
    if (LODWORD(v18[0]) >= 0x21 && ((LODWORD(v18[0]) + 131040) & 0x1FFFE) != 0)
    {
      v7 = 0;
      while (*(*(&v19 + 1) + 32 + 2 * v7) != v5)
      {
        if (++v7 >= ((LODWORD(v18[0]) + 131040) >> 1))
        {
          goto LABEL_8;
        }
      }

      sub_24BBE28C0(v18);
      return v7;
    }

LABEL_8:
    sub_24BBE28C0(v18);
    goto LABEL_29;
  }

  if (a3 >= 9 && v3 == 117)
  {
    if (a2[1] == 110 && a2[2] == 105)
    {
      v8 = 0;
      while (a3 - 7 != v8)
      {
        v9 = a2[v8++ + 7];
        if (v9 == 46)
        {
          v10 = a3 - 7 - v8;
          v11 = &a2[v8 + 7];
          if (v10 > 3 && *v11 == 99)
          {
            v12 = &a2[v8];
            if (a2[v8 + 8] == 105)
            {
              v13 = v12[9];
              v14 = a3 - v8 - 10;
              v15 = v12 + 10;
              if (v13 == 100)
              {
                v11 = v15;
                v10 = v14;
              }

              else
              {
                v10 = v10;
              }
            }
          }

          v16 = v10;
          goto LABEL_28;
        }
      }
    }

    goto LABEL_29;
  }

  LOWORD(v7) = 0;
  if (a3 < 4 || v3 != 99)
  {
    return v7;
  }

  if (a2[1] != 105 || a2[2] != 100)
  {
LABEL_29:
    LOWORD(v7) = 0;
    return v7;
  }

  v11 = a2 + 3;
  v16 = a3 - 3;
LABEL_28:
  LOWORD(v7) = sub_24BBF076C(v11, v16);
  return v7;
}

void sub_24BBF37D4(MCacheData *a1)
{
  sub_24BBF1EF4(a1);

  JUMPOUT(0x24C252120);
}

uint64_t sub_24BBF380C(uint64_t a1, uint64_t a2)
{
  v3 = sub_24BBD02B0(a1, a2);
  *v3 = &unk_285F8A678;
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  v4 = sub_24BBE244C(v3);
  sub_24BBE24E0(&v13, v4, 1415139377, 0x10000, 0, 24);
  v5 = *(&v15 + 1);
  *(a1 + 12) = bswap32(*(*(&v15 + 1) + 20));
  v6 = *(v5 + 4);
  if (bswap32(*(v5 + 8)) > bswap32(*(v5 + 12)) + bswap32(*(v5 + 16)))
  {
    *(a1 + 8) |= 0x80u;
  }

  sub_24BBE28C0(&v13);
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  v7 = (*(*a1 + 280))(a1);
  sub_24BBF2BA4(&v13, v7, 1112297028);
  *(a1 + 8) |= 1u;
  sub_24BBE28C0(&v13);
  v8 = (*(*a1 + 280))(a1);
  v9 = (*(*v8 + 56))(v8, 1129205844);
  v10 = bswap32(v6) >> 16;
  if (v9)
  {
    *(a1 + 8) |= 2u;
    if ((v10 & 2) == 0)
    {
LABEL_5:
      if ((v10 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((v10 & 2) == 0)
  {
    goto LABEL_5;
  }

  *(a1 + 8) |= 0x40u;
  if ((v10 & 8) != 0)
  {
LABEL_6:
    *(a1 + 8) |= 0x40u;
  }

LABEL_7:
  v11 = *(a1 + 8);
  if ((v10 & 4) != 0)
  {
    v11 |= 0xC0u;
    *(a1 + 8) = v11;
  }

  *(a1 + 32) = *(*(*(a1 + 48) + 128) + 56);
  if ((v11 & 0x80) != 0)
  {
    *(a1 + 8) = v11 | 0x40;
  }

  return a1;
}

uint64_t sub_24BBF3A4C(uint64_t a1, uint64_t a2, int a3, _DWORD *a4)
{
  v7 = *(a2 + 2);
  v8 = *(a2 + 2);
  if (atomic_load((a2 + 16)))
  {
    v10 = atomic_load((a2 + 16));
    v11 = (v10 + v8 * a3);
    v12 = sub_24BBE2D50(v11, *(a2 + 2));
    v13 = sub_24BBE2D50(&v11[v7], v8);
    v14 = *(a2 + 24);
    if (v14 <= v12 || v14 < v13)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      sub_24BBE0934(exception, 5);
      __cxa_throw(exception, &unk_285F89D90, nullsub_8);
    }

    *a4 = v13 - v12;
  }

  else
  {
    v28 = 0;
    v27 = 0u;
    memset(v26, 0, sizeof(v26));
    v17 = (*(*a1 + 280))(a1);
    v18 = (*(*a1 + 176))(a1);
    sub_24BBE2A94(v26, v17, v18, (*(a2 + 8) + v7 * a3), (2 * v7));
    v19 = v26[0];
    v20 = *(&v27 + 1);
    v12 = sub_24BBE2D50(*(&v27 + 1), v7);
    v21 = sub_24BBE2D50((v20 + v8), v7);
    if (v12 >= v19 || (v21 <= v19 ? (v22 = v21 >= v12) : (v22 = 0), !v22))
    {
      v25 = __cxa_allocate_exception(0x10uLL);
      sub_24BBE0934(v25, 5);
      __cxa_throw(v25, &unk_285F89D90, nullsub_8);
    }

    *a4 = v21 - v12;
    sub_24BBE28C0(v26);
  }

  return v12;
}

void sub_24BBF3C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_free_exception(v9);
  sub_24BBE28C0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_24BBF3C64(void *a1, int a2, uint64_t a3, void *a4, uint64_t a5, int a6)
{
  v11 = *(a1[6] + 448);
  v17 = 0;
  *__src = 0u;
  memset(v15, 0, sizeof(v15));
  v12 = (*(*a1 + 280))(a1);
  v13 = (*(*a1 + 176))(a1);
  sub_24BBE2A94(v15, v12, v13, (a2 + *(v11 + 4 * a6) - 1), a3);
  memcpy(a4, __src[1], a3);
  return sub_24BBE28C0(v15);
}

uint64_t sub_24BBF3D5C(uint64_t a1, uint64_t *a2, _WORD *a3, void *a4)
{
  sub_24BC025BC(a1, a2, a3, a4);
  v8 = *a2;
  if (v8 && *a3)
  {
    return v8 + *a3 + *a3 * (*(*a1 + 216))(a1);
  }

  result = 0;
  *a4 = 0;
  return result;
}

uint64_t sub_24BBF3DE8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  if (!*a3)
  {
    v10 = 0;
    v8 = 0;
    v9 = 0;
    v6 = 0;
    v7 = 0;
    v3 = (*(*a1 + 416))();
    *a3 = v3;
  }

  return v3;
}

uint64_t sub_24BBF3E94(uint64_t a1, _WORD *a2, void *a3, void *a4, void *a5, void *a6)
{
  v6 = *(a1 + 48);
  result = *(v6 + 320);
  if (result && (v8 = *(v6 + 317), v9 = *(v6 + 328), v10 = *(v6 + 317) + *(v6 + 318) * *(v6 + 317), v9 > v10))
  {
    v11 = result + v10;
    *a2 = v8;
    *a3 = v11;
    *a4 = v11;
    v12 = result + v9;
  }

  else
  {
    v12 = 0;
    result = 0;
    *a2 = 0;
    *a3 = 0;
    *a4 = 0;
  }

  *a5 = v12;
  *a6 = v12;
  return result;
}

void *sub_24BBF3EF0(uint64_t a1)
{
  v2 = sub_24BBD6D84(0x10u);
  sub_24BBEC06C(v2, a1, *(*(a1 + 48) + 150), *(*(a1 + 48) + 152));
  return v2;
}

void *sub_24BBF3F48(uint64_t a1)
{
  v2 = sub_24BBD6D84(0x10u);
  sub_24BBEC2C4(v2, a1, *(*(a1 + 48) + 150));
  return v2;
}

unsigned __int8 *sub_24BBF3F9C(unsigned __int8 *result, int a2)
{
  if (a2)
  {
    v2 = 54261;
    do
    {
      --a2;
      v3 = *result;
      v4 = v3 ^ (v2 >> 8);
      v2 = 16477 * (v2 + v3) + 21483;
      *result++ = v4;
    }

    while (a2);
  }

  return result;
}

void sub_24BBF3FD0(uint64_t a1)
{
  sub_24BBD1708(a1);

  JUMPOUT(0x24C252120);
}

void sub_24BBF400C(void *a1)
{
  sub_24BBE1554(a1);

  JUMPOUT(0x24C252120);
}

uint64_t sub_24BBF4044(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 56);
  v5 = qword_27F078540;
  v7 = (qword_27F078540 + 176);
  v6 = *(qword_27F078540 + 176);
  if (v6 && *(qword_27F078540 + 168) == v4)
  {
    *(a3 + 70) = *(qword_27F078540 + 184);
  }

  else
  {
    v8 = *(qword_27F078540 + 152);
    if (v8 && *(qword_27F078540 + 144) == v4)
    {
      *(a3 + 70) = *(qword_27F078540 + 160);
      return v8;
    }

    else if ((v4 & 0xFF00) == 0 && (v6 ? (v9 = 152) : (v9 = 176), !v6 ? (v10 = 1) : (v7 = (qword_27F078540 + 152), v10 = v8 == 0), v10))
    {
      v10 = v6 == 0;
      v11 = 144;
      if (v10)
      {
        v11 = 168;
        v12 = 184;
      }

      else
      {
        v12 = 160;
      }

      *(qword_27F078540 + v11) = v4;
      v13 = a1[6];
      v14 = *(v13 + 88);
      if (!v14 || *(v13 + 96) <= v4 || (v15 = *(v14 + 2 * v4), v18 = 0, v15 < 0))
      {
        v6 = 0;
        *v7 = 0;
      }

      else
      {
        v6 = (*(*a1 + 192))(a1, v15, &v18);
        *(v5 + v9) = v6;
        v16 = v18;
        *(a3 + 70) = v18;
        *(v5 + v12) = v16;
      }
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

uint64_t sub_24BBF41D4(uint64_t a1, uint64_t a2)
{
  v3 = ((*(a2 + 28) + 31) >> 3) & 0x1FFFFFFC;
  v4 = v3 * *(a2 + 24);
  *(a2 + 8) = v4;
  *(a2 + 12) = v3;
  if (v4)
  {
    v5 = (*(*qword_28151C040 + 24))(qword_28151C040, v4, 1);
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return 1;
}