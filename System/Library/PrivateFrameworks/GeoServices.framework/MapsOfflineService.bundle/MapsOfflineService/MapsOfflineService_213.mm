uint64_t sub_CAB108(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 62))
    {
      operator new();
    }

    sub_1794();
  }

  sub_CA55DC(a1, 0, 4uLL);
  *(a1 + 78) = 0;
  if (*(a1 + 80) <= 3uLL)
  {
    *(a1 + 80) = 4;
  }

  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = -v3 & 3;
  if ((-v3 & 3) != 0)
  {
    if (v4 - *(a1 + 64) < v5)
    {
      sub_C7BF74(a1, v5);
      v4 = *(a1 + 56);
      v3 = *(a1 + 40);
    }

    v6 = 0;
    *(a1 + 56) = v4 - v5;
    *(a1 + 40) = v3 + v5;
    do
    {
      *(*(a1 + 56) + v6++) = 0;
    }

    while (v5 != v6);
    v4 = *(a1 + 56);
  }

  if ((v4 - *(a1 + 64)) <= 3)
  {
    sub_C7BF74(a1, 4uLL);
    v4 = *(a1 + 56);
  }

  *(a1 + 40) += 4;
  *(v4 - 4) = 0;
  *(a1 + 56) = v4 - 4;
  return *(a1 + 40);
}

void sub_CAB3E4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_CAB408(uint64_t a1, unint64_t a2, int a3, uint64_t *a4)
{
  v16 = a2;
  v17 = a3;
  if (a3 <= 3)
  {
    switch(a3)
    {
      case 1:

        sub_CAB7B8(a1, a2);
        break;
      case 2:

        sub_CAB9B8(a1, a2);
        break;
      case 3:
        v4 = a4[1];
        v5 = a4[2];
        if (v4 >= v5)
        {
          v7 = *a4;
          v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a4) >> 2);
          v9 = v8 + 1;
          if (v8 + 1 > 0x1555555555555555)
          {
            sub_1794();
          }

          v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v7) >> 2);
          if (2 * v10 > v9)
          {
            v9 = 2 * v10;
          }

          if (v10 >= 0xAAAAAAAAAAAAAAALL)
          {
            v11 = 0x1555555555555555;
          }

          else
          {
            v11 = v9;
          }

          if (v11)
          {
            if (v11 <= 0x1555555555555555)
            {
              operator new();
            }

            sub_1808();
          }

          v13 = 4 * ((v4 - *a4) >> 2);
          *v13 = v16;
          *(v13 + 8) = v17;
          v14 = 12 * v8 + 12;
          v15 = 12 * v8 - (v4 - v7);
          memcpy((v13 - (v4 - v7)), v7, v4 - v7);
          *a4 = v15;
          a4[1] = v14;
          a4[2] = 0;
          if (v7)
          {
            operator delete(v7);
          }

          a4[1] = v14;
        }

        else
        {
          v6 = v16;
          *(v4 + 8) = v17;
          *v4 = v6;
          a4[1] = v4 + 12;
        }

        break;
    }
  }

  else if (a3 > 5)
  {
    if (a3 == 6 || a3 == 7)
    {
      sub_CAB67C(a4, &v16);
    }
  }

  else if (a3 == 4)
  {

    sub_CABCD0(a1, a2);
  }

  else
  {

    sub_CABFE0(a1, a2);
  }
}

uint64_t sub_CAB67C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = *a1;
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 2);
    v9 = v8 + 1;
    if (v8 + 1 > 0x1555555555555555)
    {
      sub_1794();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v7) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0xAAAAAAAAAAAAAAALL)
    {
      v11 = 0x1555555555555555;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x1555555555555555)
      {
        operator new();
      }

      sub_1808();
    }

    v12 = 4 * ((v3 - *a1) >> 2);
    *v12 = *a2;
    *(v12 + 8) = *(a2 + 2);
    v6 = 12 * v8 + 12;
    v13 = 12 * v8 - (v3 - v7);
    memcpy((v12 - (v3 - v7)), v7, v3 - v7);
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = *a2;
    *(v3 + 8) = *(a2 + 2);
    *v3 = v5;
    v6 = v3 + 12;
  }

  *(a1 + 8) = v6;
  return v6 - 12;
}

void sub_CAB7B8(uint64_t a1, unint64_t a2)
{
  v3 = sub_93D480(a1 + 3896, a2, 0, "station");
  v4 = (v3 - *v3);
  if (*v4 >= 0xDu)
  {
    v5 = v4[6];
    if (v5)
    {
      v6 = (v3 + v5 + *(v3 + v5));
      v7 = *v6;
      if (v7)
      {
        v8 = 8 * v7;
        v9 = v6 + 1;
        do
        {
          if (*(a1 + 7784) != 1 || sub_2D5204(*(a1 + 7768)))
          {
            operator new();
          }

          v9 += 2;
          v8 -= 8;
        }

        while (v8);
      }
    }
  }
}

void sub_CAB998(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_CAB9B8(uint64_t a1, unint64_t a2)
{
  v3 = sub_93D2F4(a1 + 3896, a2, 0, "hall");
  v4 = (v3 - *v3);
  if (*v4 >= 0xDu)
  {
    v5 = v4[6];
    if (v5)
    {
      v6 = (v3 + v5 + *(v3 + v5));
      v7 = *v6;
      if (v7)
      {
        v8 = 8 * v7;
        v9 = v6 + 1;
        do
        {
          if (*(a1 + 7784) != 1 || sub_2D5204(*(a1 + 7768)))
          {
            operator new();
          }

          v9 += 2;
          v8 -= 8;
        }

        while (v8);
      }
    }
  }
}

void sub_CABCAC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_CABCD0(uint64_t a1, unint64_t a2)
{
  v3 = sub_943960(a1, a2, 0, "market");
  v4 = (v3 - *v3);
  if (*v4 >= 0x15u)
  {
    v5 = v4[10];
    if (v5)
    {
      v6 = (v3 + v5 + *(v3 + v5));
      v7 = *v6;
      if (v7)
      {
        v8 = 8 * v7;
        v9 = v6 + 1;
        do
        {
          if (*(a1 + 3888) != 1 || sub_2D5204(*(a1 + 3872)))
          {
            operator new();
          }

          v9 += 2;
          v8 -= 8;
        }

        while (v8);
      }
    }
  }
}

void sub_CABFBC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_CABFE0(uint64_t a1, unint64_t a2)
{
  v3 = sub_93E04C(a1, a2, 0, "system");
  v4 = (v3 - *v3);
  if (*v4 >= 9u)
  {
    v5 = v4[4];
    if (v5)
    {
      v6 = (v3 + v5 + *(v3 + v5));
      v7 = *v6;
      if (v7)
      {
        v8 = 8 * v7;
        v9 = v6 + 1;
        do
        {
          if (*(a1 + 3888) != 1 || sub_2D5204(*(a1 + 3872)))
          {
            operator new();
          }

          v9 += 2;
          v8 -= 8;
        }

        while (v8);
      }
    }
  }
}

void sub_CAC2CC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_CAC2F0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 8);
  v3 = *result == v2 || *result + 12 == v2;
  if (!v3)
  {
    v4 = *result + 24;
    while (1)
    {
      v5 = v4 - 24;
      v6 = *(v4 - 16);
      v7 = *(v4 - 4);
      if (v6 == -1 || v7 != v6)
      {
        if (v7 == v6)
        {
          break;
        }

        goto LABEL_7;
      }

      v14 = &v13;
      result = (off_26730A8[v6])(&v14, v4 - 24, v4 - 12);
      if (result)
      {
        break;
      }

LABEL_7:
      v3 = v4 == v2;
      v4 += 12;
      if (v3)
      {
        goto LABEL_28;
      }
    }

    if (v5 != v2)
    {
      for (; v4 != v2; v4 += 12)
      {
        v10 = *(v5 + 8);
        v11 = *(v4 + 8);
        if (v10 != -1 && v11 == v10)
        {
          v14 = &v13;
          result = (off_26730A8[v10])(&v14, v5, v4);
          if (result)
          {
            continue;
          }
        }

        else if (v11 == v10)
        {
          continue;
        }

        v9 = *(v4 + 8);
        *(v5 + 12) = *v4;
        v5 += 12;
        *(v5 + 8) = v9;
      }

      v2 = v5 + 12;
    }
  }

LABEL_28:
  if (v2 != *(v1 + 8))
  {
    *(v1 + 8) = v2;
  }

  return result;
}

uint64_t sub_CAC444(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = a2 - v9;
    v13 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 2);
    if (v13 > 2)
    {
      switch(v13)
      {
        case 3uLL:
          return sub_CACBFC(v8, v8 + 12, a2 - 12);
        case 4uLL:
          return sub_CAD2C4(v8, v8 + 12, v8 + 24, a2 - 12);
        case 5uLL:
          return sub_CAD6E8(v8, v8 + 12, v8 + 24, v8 + 36, a2 - 12);
      }
    }

    else
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        LODWORD(v34) = *(v8 + 8);
        if (v34 == -1)
        {
          return result;
        }

        v35 = *(a2 - 1);
        v36 = v35 == 0xFFFFFFFFLL;
        if (v35 == -1)
        {
LABEL_50:
          v37 = 0;
        }

        else
        {
          if (v35 < v34)
          {
            v36 = 0;
            goto LABEL_50;
          }

          if (v35 > v34)
          {
            return result;
          }

          v72 = &v74;
          result = (off_2672FE8[v35])(&v72, a2 - 12, v8);
          if (!result)
          {
            return result;
          }

          LODWORD(v34) = *(v8 + 8);
          LODWORD(v35) = *(a2 - 1);
          v36 = v35 == -1;
          v37 = v34 == -1;
          if (v34 == -1 && v35 == -1)
          {
            return result;
          }
        }

        v34 = v34;
        if (v37)
        {
          v34 = -1;
        }

        v38 = v34 == v35;
        if (v36)
        {
          v38 = v37;
        }

        if (v38)
        {
          return (off_2673028[v34])(&v72, v8, a2 - 12);
        }

        v68 = *(a2 - 12);
        v73 = *(a2 - 1);
        v72 = v68;
        *(a2 - 1) = -1;
        v69 = *(v8 + 8);
        if (v69 != -1)
        {
          v74 = a2 - 12;
          result = (off_2673068[v69])(&v74, v8);
          *(a2 - 1) = v69;
        }

        *(v8 + 8) = -1;
        v70 = v73;
        if (v73 != -1)
        {
          v74 = v8;
          result = (off_2673068[v73])(&v74, &v72);
          *(v8 + 8) = v70;
        }

        return result;
      }
    }

    if (v12 <= 287)
    {
      break;
    }

    if (v10 == 1)
    {
      if (v8 != a2)
      {
        v42 = (v13 - 2) >> 1;
        v43 = v42 + 1;
        v44 = v8 + 12 * v42;
        do
        {
          sub_CAE934(v8, a3, 0xAAAAAAAAAAAAAAABLL * (v12 >> 2), v44);
          v44 -= 12;
          --v43;
        }

        while (v43);
        v45 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 2);
        do
        {
          result = sub_CAEBD8(v8, a2, a3, v45);
          a2 = (a2 - 12);
        }

        while (v45-- > 2);
      }

      return result;
    }

    v14 = v13 >> 1;
    v15 = v8 + 12 * (v13 >> 1);
    if (v12 < 0x601)
    {
      sub_CACBFC(v15, v8, a2 - 12);
    }

    else
    {
      sub_CACBFC(v8, v15, a2 - 12);
      v16 = 12 * v14;
      v17 = 12 * v14 + v8 - 12;
      sub_CACBFC(v8 + 12, v17, (a2 - 3));
      sub_CACBFC(v8 + 24, v8 + 12 + v16, a2 - 36);
      sub_CACBFC(v17, v15, v8 + 12 + v16);
      v18 = *(v8 + 8);
      v19 = *(v15 + 8);
      if (v18 != -1 || v19 != -1)
      {
        v20 = v18 == -1;
        if (v18 == -1)
        {
          v18 = -1;
        }

        if (v19 == -1)
        {
          v21 = v20;
        }

        else
        {
          v21 = v18 == v19;
        }

        if (v21)
        {
          (off_2673028[v18])(&v72, v8, v15);
        }

        else
        {
          v31 = *v15;
          v73 = *(v15 + 8);
          v72 = v31;
          *(v15 + 8) = -1;
          v32 = *(v8 + 8);
          if (v32 != -1)
          {
            v74 = v15;
            (off_2673068[v32])(&v74, v8);
            *(v15 + 8) = v32;
          }

          *(v8 + 8) = -1;
          v33 = v73;
          if (v73 != -1)
          {
            v74 = v8;
            (off_2673068[v73])(&v74, &v72);
            *(v8 + 8) = v33;
          }
        }
      }
    }

    if ((a5 & 1) == 0)
    {
      v22 = *(v8 + 8);
      if (v22 == -1 || (v23 = *(v8 - 4), v23 != -1) && v23 >= v22 && (v23 > v22 || (v72 = &v74, ((off_2672FE8[v23])(&v72, v8 - 12, v8) & 1) == 0)))
      {
        result = sub_CADC48(v8, a2);
        v9 = result;
        goto LABEL_40;
      }
    }

    v26 = sub_CAE048(v8, a2);
    if ((v27 & 1) == 0)
    {
      goto LABEL_38;
    }

    v28 = sub_CAE3D8(v8, v26, a3, v24, v25);
    v9 = v26 + 12;
    result = sub_CAE3D8(v26 + 12, a2, a3, v29, v30);
    if (result)
    {
      a4 = -v11;
      a2 = v26;
      if (v28)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v28)
    {
LABEL_38:
      result = sub_CAC444(v8, v26, a3, -v11, a5 & 1);
      v9 = v26 + 12;
LABEL_40:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  if ((a5 & 1) == 0)
  {
    if (v8 == a2)
    {
      return result;
    }

    v58 = v8 + 12;
    if ((v8 + 12) == a2)
    {
      return result;
    }

    while (1)
    {
      v61 = v8;
      v8 = v58;
      v62 = *(v61 + 8);
      if (v62 != -1)
      {
        v63 = *(v61 + 20);
        v64 = v63 != -1 && v63 >= v62;
        if (!v64 || v63 <= v62 && (v72 = &v74, result = (off_2672FE8[v63])(&v72, v8, v61), result))
        {
          v65 = *v8;
          v73 = *(v8 + 8);
          v72 = v65;
          *v8 = *v61;
          *(v8 + 8) = *(v61 + 8);
          v66 = *(v61 - 4);
          if (v66 != -1)
          {
            while (1)
            {
              v59 = v61 - 12;
              if (v73 != -1 && v73 >= v66)
              {
                if (v73 > v66)
                {
                  break;
                }

                v74 = &v71;
                result = (off_2672FE8[v73])(&v74, &v72, v61 - 12);
                if (!result)
                {
                  break;
                }
              }

              *v61 = *v59;
              *(v61 + 8) = *(v61 - 4);
              v66 = *(v61 - 16);
              v61 -= 12;
              if (v66 == -1)
              {
                goto LABEL_96;
              }
            }
          }

          v59 = v61;
LABEL_96:
          v60 = v72;
          *(v59 + 8) = v73;
          *v59 = v60;
        }
      }

      v58 = v8 + 12;
      if ((v8 + 12) == a2)
      {
        return result;
      }
    }
  }

  if (v8 == a2)
  {
    return result;
  }

  v39 = v8 + 12;
  if ((v8 + 12) == a2)
  {
    return result;
  }

  v40 = 0;
  v41 = v8;
  while (2)
  {
    v49 = v41;
    v41 = v39;
    v50 = *(v49 + 8);
    if (v50 == -1)
    {
      goto LABEL_69;
    }

    v51 = *(v49 + 20);
    if (v51 != -1 && v51 >= v50)
    {
      if (v51 > v50)
      {
        goto LABEL_69;
      }

      v72 = &v74;
      result = (off_2672FE8[v51])(&v72, v41, v49);
      if (!result)
      {
        goto LABEL_69;
      }
    }

    v53 = *v41;
    v73 = *(v41 + 8);
    v72 = v53;
    *v41 = *v49;
    *(v41 + 8) = *(v49 + 8);
    v47 = v8;
    if (v49 == v8)
    {
      goto LABEL_68;
    }

    v54 = v40;
    while (1)
    {
      v55 = v8 + v54;
      v56 = *(v8 + v54 - 4);
      if (v56 == -1)
      {
LABEL_67:
        v47 = v49;
        goto LABEL_68;
      }

      if (v73 == -1 || v73 < v56)
      {
        goto LABEL_77;
      }

      if (v73 > v56)
      {
        break;
      }

      v74 = &v71;
      result = (off_2672FE8[v73])(&v74, &v72, v55 - 12);
      if (!result)
      {
        goto LABEL_67;
      }

LABEL_77:
      v49 -= 12;
      *v55 = *(v55 - 12);
      *(v55 + 8) = *(v55 - 4);
      v54 -= 12;
      if (!v54)
      {
        v47 = v8;
        goto LABEL_68;
      }
    }

    v47 = v8 + v54;
LABEL_68:
    v48 = v72;
    *(v47 + 8) = v73;
    *v47 = v48;
LABEL_69:
    v39 = v41 + 12;
    v40 += 12;
    if ((v41 + 12) != a2)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_CACBFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  if (v6 != -1)
  {
    v7 = *(a2 + 8);
    if (v7 == -1)
    {
      goto LABEL_75;
    }

    if (v7 < v6)
    {
LABEL_4:
      v8 = *(a3 + 8);
      if (v8 == -1)
      {
        v23 = -1;
        v24 = *(a1 + 8);
        if (v24 == -1)
        {
          return 1;
        }

LABEL_44:
        if (v23 == -1)
        {
          if (v24 == -1)
          {
            v9 = -1;
LABEL_109:
            (off_2673028[v9])(&v39, a1, a3);
            return 1;
          }
        }

        else
        {
          if (v24 == -1)
          {
            v9 = -1;
          }

          else
          {
            v9 = v24;
          }

          if (v9 == v23)
          {
            goto LABEL_109;
          }
        }

LABEL_70:
        v39 = *a3;
        v40 = *(a3 + 8);
        *(a3 + 8) = -1;
        v28 = *(a1 + 8);
        if (v28 != -1)
        {
          v41 = a3;
          (off_2673068[v28])(&v41, a1);
          *(a3 + 8) = v28;
        }

        *(a1 + 8) = -1;
        v29 = v40;
        if (v40 != -1)
        {
          v41 = a1;
          (off_2673068[v40])(&v41, &v39);
          *(a1 + 8) = v29;
        }

        return 1;
      }

      if (v8 < v7)
      {
        v9 = *(a1 + 8);
        if (v9 == v8)
        {
          goto LABEL_109;
        }

        goto LABEL_70;
      }

      if (v8 > v7)
      {
        v25 = *(a1 + 8);
        if (v25 == v7)
        {
          goto LABEL_87;
        }

        goto LABEL_82;
      }

      v39 = &v41;
      if ((off_2672FE8[v8])(&v39, a3, a2))
      {
        v23 = *(a3 + 8);
        v24 = *(a1 + 8);
        if ((v24 & v23) == 0xFFFFFFFF)
        {
          return 1;
        }

        goto LABEL_44;
      }

      v7 = *(a2 + 8);
LABEL_75:
      v25 = *(a1 + 8);
      if ((v25 & v7) == 0xFFFFFFFF)
      {
        return 1;
      }

      if (v7 == -1)
      {
        if (v25 == -1)
        {
          v25 = -1;
LABEL_87:
          (off_2673028[v25])(&v39, a1, a2);
          goto LABEL_88;
        }
      }

      else
      {
        if (v25 == -1)
        {
          v25 = -1;
        }

        if (v25 == v7)
        {
          goto LABEL_87;
        }
      }

LABEL_82:
      v39 = *a2;
      v40 = *(a2 + 8);
      *(a2 + 8) = -1;
      v30 = *(a1 + 8);
      if (v30 != -1)
      {
        v41 = a2;
        (off_2673068[v30])(&v41, a1);
        *(a2 + 8) = v30;
      }

      *(a1 + 8) = -1;
      v31 = v40;
      if (v40 != -1)
      {
        v41 = a1;
        (off_2673068[v40])(&v41, &v39);
        *(a1 + 8) = v31;
      }

LABEL_88:
      LODWORD(v32) = *(a2 + 8);
      if (v32 != -1)
      {
        v33 = *(a3 + 8);
        v34 = v33 == 0xFFFFFFFFLL;
        if (v33 != -1)
        {
          if (v33 >= v32)
          {
            if (v33 > v32)
            {
              return 1;
            }

            v39 = &v41;
            if (!(off_2672FE8[v33])(&v39, a3, a2))
            {
              return 1;
            }

            LODWORD(v32) = *(a2 + 8);
            LODWORD(v33) = *(a3 + 8);
            v34 = v33 == -1;
            v35 = v32 == -1;
            if (v32 == -1 && v33 == -1)
            {
              return 1;
            }

LABEL_93:
            v32 = v32;
            if (v35)
            {
              v32 = -1;
            }

            v36 = v32 == v33;
            if (v34)
            {
              v36 = v35;
            }

            if (v36)
            {
              (off_2673028[v32])(&v39, a2, a3);
            }

            else
            {
              v39 = *a3;
              v40 = *(a3 + 8);
              *(a3 + 8) = -1;
              v37 = *(a2 + 8);
              if (v37 != -1)
              {
                v41 = a3;
                (off_2673068[v37])(&v41, a2);
                *(a3 + 8) = v37;
              }

              *(a2 + 8) = -1;
              v38 = v40;
              if (v40 != -1)
              {
                v41 = a2;
                (off_2673068[v40])(&v41, &v39);
                *(a2 + 8) = v38;
              }
            }

            return 1;
          }

          v34 = 0;
        }

        v35 = 0;
        goto LABEL_93;
      }

      return 1;
    }

    if (v7 <= v6)
    {
      v39 = &v41;
      if ((off_2672FE8[v7])(&v39, a2, a1))
      {
        v7 = *(a2 + 8);
        if (v7 == -1)
        {
          goto LABEL_75;
        }

        goto LABEL_4;
      }
    }
  }

  LODWORD(v10) = *(a2 + 8);
  if (v10 == -1)
  {
    return 0;
  }

  v11 = *(a3 + 8);
  v12 = v11 == 0xFFFFFFFFLL;
  if (v11 == -1)
  {
LABEL_16:
    v13 = 0;
LABEL_17:
    v10 = v10;
    if (v13)
    {
      v10 = -1;
    }

    v14 = v10 == v11;
    if (v12)
    {
      v14 = v13;
    }

    if (v14)
    {
      (off_2673028[v10])(&v39, a2, a3);
    }

    else
    {
      v39 = *a3;
      v40 = *(a3 + 8);
      *(a3 + 8) = -1;
      v16 = *(a2 + 8);
      if (v16 != -1)
      {
        v41 = a3;
        (off_2673068[v16])(&v41, a2);
        *(a3 + 8) = v16;
      }

      *(a2 + 8) = -1;
      v17 = v40;
      if (v40 != -1)
      {
        v41 = a2;
        (off_2673068[v40])(&v41, &v39);
        *(a2 + 8) = v17;
      }
    }

LABEL_29:
    LODWORD(v18) = *(a1 + 8);
    if (v18 == -1)
    {
      return 1;
    }

    v19 = *(a2 + 8);
    v20 = v19 == 0xFFFFFFFFLL;
    if (v19 != -1)
    {
      if (v19 >= v18)
      {
        if (v19 > v18)
        {
          return 1;
        }

        v39 = &v41;
        if (!(off_2672FE8[v19])(&v39, a2, a1))
        {
          return 1;
        }

        LODWORD(v18) = *(a1 + 8);
        LODWORD(v19) = *(a2 + 8);
        v20 = v19 == -1;
        v21 = v18 == -1;
        if (v18 == -1 && v19 == -1)
        {
          return 1;
        }

LABEL_34:
        v18 = v18;
        if (v21)
        {
          v18 = -1;
        }

        v22 = v18 == v19;
        if (v20)
        {
          v22 = v21;
        }

        if (v22)
        {
          (off_2673028[v18])(&v39, a1, a2);
        }

        else
        {
          v39 = *a2;
          v40 = *(a2 + 8);
          *(a2 + 8) = -1;
          v26 = *(a1 + 8);
          if (v26 != -1)
          {
            v41 = a2;
            (off_2673068[v26])(&v41, a1);
            *(a2 + 8) = v26;
          }

          *(a1 + 8) = -1;
          v27 = v40;
          if (v40 != -1)
          {
            v41 = a1;
            (off_2673068[v40])(&v41, &v39);
            *(a1 + 8) = v27;
          }
        }

        return 1;
      }

      v20 = 0;
    }

    v21 = 0;
    goto LABEL_34;
  }

  if (v11 < v10)
  {
    v12 = 0;
    goto LABEL_16;
  }

  if (v11 > v10)
  {
    return 0;
  }

  v39 = &v41;
  result = (off_2672FE8[v11])(&v39, a3, a2);
  if (result)
  {
    LODWORD(v10) = *(a2 + 8);
    LODWORD(v11) = *(a3 + 8);
    v12 = v11 == -1;
    v13 = v10 == -1;
    if (v10 == -1 && v11 == -1)
    {
      goto LABEL_29;
    }

    goto LABEL_17;
  }

  return result;
}

uint64_t sub_CAD2C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_CACBFC(a1, a2, a3);
  LODWORD(v9) = *(a3 + 8);
  if (v9 == -1)
  {
    return result;
  }

  v10 = *(a4 + 8);
  v11 = v10 == 0xFFFFFFFFLL;
  if (v10 == -1)
  {
    goto LABEL_5;
  }

  if (v10 < v9)
  {
    v11 = 0;
LABEL_5:
    v12 = 0;
LABEL_6:
    v9 = v9;
    if (v12)
    {
      v9 = -1;
    }

    v13 = v9 == v10;
    if (v11)
    {
      v13 = v12;
    }

    if (v13)
    {
      result = (off_2673028[v9])(&v30, a3, a4);
    }

    else
    {
      v30 = *a4;
      v31 = *(a4 + 8);
      *(a4 + 8) = -1;
      v14 = *(a3 + 8);
      if (v14 != -1)
      {
        v32 = a4;
        result = (off_2673068[v14])(&v32, a3);
        *(a4 + 8) = v14;
      }

      *(a3 + 8) = -1;
      v15 = v31;
      if (v31 != -1)
      {
        v32 = a3;
        result = (off_2673068[v31])(&v32, &v30);
        *(a3 + 8) = v15;
      }
    }

    goto LABEL_16;
  }

  if (v10 > v9)
  {
    return result;
  }

  v30 = &v32;
  result = (off_2672FE8[v10])(&v30, a4, a3);
  if (!result)
  {
    return result;
  }

  LODWORD(v9) = *(a3 + 8);
  LODWORD(v10) = *(a4 + 8);
  v11 = v10 == -1;
  v12 = v9 == -1;
  if (v9 != -1 || v10 != -1)
  {
    goto LABEL_6;
  }

LABEL_16:
  LODWORD(v16) = *(a2 + 8);
  if (v16 == -1)
  {
    return result;
  }

  v17 = *(a3 + 8);
  v18 = v17 == 0xFFFFFFFFLL;
  if (v17 == -1)
  {
    goto LABEL_20;
  }

  if (v17 < v16)
  {
    v18 = 0;
LABEL_20:
    v19 = 0;
LABEL_21:
    v16 = v16;
    if (v19)
    {
      v16 = -1;
    }

    v20 = v16 == v17;
    if (v18)
    {
      v20 = v19;
    }

    if (v20)
    {
      result = (off_2673028[v16])(&v30, a2, a3);
    }

    else
    {
      v30 = *a3;
      v31 = *(a3 + 8);
      *(a3 + 8) = -1;
      v21 = *(a2 + 8);
      if (v21 != -1)
      {
        v32 = a3;
        result = (off_2673068[v21])(&v32, a2);
        *(a3 + 8) = v21;
      }

      *(a2 + 8) = -1;
      v22 = v31;
      if (v31 != -1)
      {
        v32 = a2;
        result = (off_2673068[v31])(&v32, &v30);
        *(a2 + 8) = v22;
      }
    }

    goto LABEL_36;
  }

  if (v17 > v16)
  {
    return result;
  }

  v30 = &v32;
  result = (off_2672FE8[v17])(&v30, a3, a2);
  if (!result)
  {
    return result;
  }

  LODWORD(v16) = *(a2 + 8);
  LODWORD(v17) = *(a3 + 8);
  v18 = v17 == -1;
  v19 = v16 == -1;
  if (v16 != -1 || v17 != -1)
  {
    goto LABEL_21;
  }

LABEL_36:
  LODWORD(v23) = *(a1 + 8);
  if (v23 == -1)
  {
    return result;
  }

  v24 = *(a2 + 8);
  v25 = v24 == 0xFFFFFFFFLL;
  if (v24 != -1)
  {
    if (v24 >= v23)
    {
      if (v24 > v23)
      {
        return result;
      }

      v30 = &v32;
      result = (off_2672FE8[v24])(&v30, a2, a1);
      if (!result)
      {
        return result;
      }

      LODWORD(v23) = *(a1 + 8);
      LODWORD(v24) = *(a2 + 8);
      v25 = v24 == -1;
      v26 = v23 == -1;
      if (v23 == -1 && v24 == -1)
      {
        return result;
      }

      goto LABEL_41;
    }

    v25 = 0;
  }

  v26 = 0;
LABEL_41:
  v23 = v23;
  if (v26)
  {
    v23 = -1;
  }

  v27 = v23 == v24;
  if (v25)
  {
    v27 = v26;
  }

  if (v27)
  {
    return (off_2673028[v23])(&v30, a1, a2);
  }

  v30 = *a2;
  v31 = *(a2 + 8);
  *(a2 + 8) = -1;
  v28 = *(a1 + 8);
  if (v28 != -1)
  {
    v32 = a2;
    result = (off_2673068[v28])(&v32, a1);
    *(a2 + 8) = v28;
  }

  *(a1 + 8) = -1;
  v29 = v31;
  if (v31 != -1)
  {
    v32 = a1;
    result = (off_2673068[v31])(&v32, &v30);
    *(a1 + 8) = v29;
  }

  return result;
}

uint64_t sub_CAD6E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_CAD2C4(a1, a2, a3, a4);
  LODWORD(v11) = *(a4 + 8);
  if (v11 == -1)
  {
    return result;
  }

  v12 = *(a5 + 8);
  v13 = v12 == 0xFFFFFFFFLL;
  if (v12 == -1)
  {
    goto LABEL_5;
  }

  if (v12 < v11)
  {
    v13 = 0;
LABEL_5:
    v14 = 0;
LABEL_6:
    v11 = v11;
    if (v14)
    {
      v11 = -1;
    }

    v15 = v11 == v12;
    if (v13)
    {
      v15 = v14;
    }

    if (v15)
    {
      result = (off_2673028[v11])(&v39, a4, a5);
    }

    else
    {
      v39 = *a5;
      v40 = *(a5 + 8);
      *(a5 + 8) = -1;
      v16 = *(a4 + 8);
      if (v16 != -1)
      {
        v41 = a5;
        result = (off_2673068[v16])(&v41, a4);
        *(a5 + 8) = v16;
      }

      *(a4 + 8) = -1;
      v17 = v40;
      if (v40 != -1)
      {
        v41 = a4;
        result = (off_2673068[v40])(&v41, &v39);
        *(a4 + 8) = v17;
      }
    }

    goto LABEL_16;
  }

  if (v12 > v11)
  {
    return result;
  }

  v39 = &v41;
  result = (off_2672FE8[v12])(&v39, a5, a4);
  if (!result)
  {
    return result;
  }

  LODWORD(v11) = *(a4 + 8);
  LODWORD(v12) = *(a5 + 8);
  v13 = v12 == -1;
  v14 = v11 == -1;
  if (v11 != -1 || v12 != -1)
  {
    goto LABEL_6;
  }

LABEL_16:
  LODWORD(v18) = *(a3 + 8);
  if (v18 == -1)
  {
    return result;
  }

  v19 = *(a4 + 8);
  v20 = v19 == 0xFFFFFFFFLL;
  if (v19 == -1)
  {
    goto LABEL_20;
  }

  if (v19 < v18)
  {
    v20 = 0;
LABEL_20:
    v21 = 0;
LABEL_21:
    v18 = v18;
    if (v21)
    {
      v18 = -1;
    }

    v22 = v18 == v19;
    if (v20)
    {
      v22 = v21;
    }

    if (v22)
    {
      result = (off_2673028[v18])(&v39, a3, a4);
    }

    else
    {
      v39 = *a4;
      v40 = *(a4 + 8);
      *(a4 + 8) = -1;
      v23 = *(a3 + 8);
      if (v23 != -1)
      {
        v41 = a4;
        result = (off_2673068[v23])(&v41, a3);
        *(a4 + 8) = v23;
      }

      *(a3 + 8) = -1;
      v24 = v40;
      if (v40 != -1)
      {
        v41 = a3;
        result = (off_2673068[v40])(&v41, &v39);
        *(a3 + 8) = v24;
      }
    }

    goto LABEL_36;
  }

  if (v19 > v18)
  {
    return result;
  }

  v39 = &v41;
  result = (off_2672FE8[v19])(&v39, a4, a3);
  if (!result)
  {
    return result;
  }

  LODWORD(v18) = *(a3 + 8);
  LODWORD(v19) = *(a4 + 8);
  v20 = v19 == -1;
  v21 = v18 == -1;
  if (v18 != -1 || v19 != -1)
  {
    goto LABEL_21;
  }

LABEL_36:
  LODWORD(v25) = *(a2 + 8);
  if (v25 == -1)
  {
    return result;
  }

  v26 = *(a3 + 8);
  v27 = v26 == 0xFFFFFFFFLL;
  if (v26 == -1)
  {
    goto LABEL_40;
  }

  if (v26 < v25)
  {
    v27 = 0;
LABEL_40:
    v28 = 0;
LABEL_41:
    v25 = v25;
    if (v28)
    {
      v25 = -1;
    }

    v29 = v25 == v26;
    if (v27)
    {
      v29 = v28;
    }

    if (v29)
    {
      result = (off_2673028[v25])(&v39, a2, a3);
    }

    else
    {
      v39 = *a3;
      v40 = *(a3 + 8);
      *(a3 + 8) = -1;
      v30 = *(a2 + 8);
      if (v30 != -1)
      {
        v41 = a3;
        result = (off_2673068[v30])(&v41, a2);
        *(a3 + 8) = v30;
      }

      *(a2 + 8) = -1;
      v31 = v40;
      if (v40 != -1)
      {
        v41 = a2;
        result = (off_2673068[v40])(&v41, &v39);
        *(a2 + 8) = v31;
      }
    }

    goto LABEL_56;
  }

  if (v26 > v25)
  {
    return result;
  }

  v39 = &v41;
  result = (off_2672FE8[v26])(&v39, a3, a2);
  if (!result)
  {
    return result;
  }

  LODWORD(v25) = *(a2 + 8);
  LODWORD(v26) = *(a3 + 8);
  v27 = v26 == -1;
  v28 = v25 == -1;
  if (v25 != -1 || v26 != -1)
  {
    goto LABEL_41;
  }

LABEL_56:
  LODWORD(v32) = *(a1 + 8);
  if (v32 == -1)
  {
    return result;
  }

  v33 = *(a2 + 8);
  v34 = v33 == 0xFFFFFFFFLL;
  if (v33 != -1)
  {
    if (v33 >= v32)
    {
      if (v33 > v32)
      {
        return result;
      }

      v39 = &v41;
      result = (off_2672FE8[v33])(&v39, a2, a1);
      if (!result)
      {
        return result;
      }

      LODWORD(v32) = *(a1 + 8);
      LODWORD(v33) = *(a2 + 8);
      v34 = v33 == -1;
      v35 = v32 == -1;
      if (v32 == -1 && v33 == -1)
      {
        return result;
      }

      goto LABEL_61;
    }

    v34 = 0;
  }

  v35 = 0;
LABEL_61:
  v32 = v32;
  if (v35)
  {
    v32 = -1;
  }

  v36 = v32 == v33;
  if (v34)
  {
    v36 = v35;
  }

  if (v36)
  {
    return (off_2673028[v32])(&v39, a1, a2);
  }

  v39 = *a2;
  v40 = *(a2 + 8);
  *(a2 + 8) = -1;
  v37 = *(a1 + 8);
  if (v37 != -1)
  {
    v41 = a2;
    result = (off_2673068[v37])(&v41, a1);
    *(a2 + 8) = v37;
  }

  *(a1 + 8) = -1;
  v38 = v40;
  if (v40 != -1)
  {
    v41 = a1;
    result = (off_2673068[v40])(&v41, &v39);
    *(a1 + 8) = v38;
  }

  return result;
}

unint64_t sub_CADC48(uint64_t *a1, _DWORD *a2)
{
  v2 = a2;
  v40 = *a1;
  v41 = *(a1 + 2);
  v4 = a2 - 3;
  v5 = *(a2 - 1);
  if (v5 == -1 || (v41 != -1 ? (v6 = v41 >= v5) : (v6 = 0), v6 && (v41 > v5 || (v42 = &v44, !(off_2672FE8[v41])(&v42, &v40, v4)))))
  {
    for (i = a1 + 12; i < v2; i += 12)
    {
      v11 = *(i + 8);
      if (v11 != -1)
      {
        if (v41 == -1 || v41 < v11)
        {
          break;
        }

        if (v41 <= v11)
        {
          v42 = &v44;
          if ((off_2672FE8[v41])(&v42, &v40, i))
          {
            break;
          }
        }
      }
    }
  }

  else
  {
    v7 = a1 + 12;
    while (1)
    {
      do
      {
        i = v7;
        v9 = *(v7 + 8);
        v7 += 12;
      }

      while (v9 == -1);
      if (v41 == -1 || v41 < v9)
      {
        break;
      }

      if (v41 <= v9)
      {
        v42 = &v44;
        if ((off_2672FE8[v41])(&v42, &v40, i))
        {
          break;
        }
      }
    }
  }

  if (i < v2)
  {
    v13 = *(v2 - 1);
    if (v13 == -1)
    {
LABEL_31:
      v2 = v4;
    }

    else
    {
      v14 = v41;
      if (v41 == -1)
      {
        v15 = v2 - 4;
        do
        {
          v16 = *v15;
          v15 -= 3;
        }

        while (v16 != -1);
        v2 = v15 + 1;
      }

      else
      {
        if (v41 != 0xFFFFFFFFLL && v41 >= v13)
        {
          goto LABEL_86;
        }

        while (1)
        {
          v2 = v4 - 3;
          v13 = *(v4 - 1);
          if (v13 == -1)
          {
            break;
          }

          v14 = v41;
          v4 -= 3;
          if (v41 != 0xFFFFFFFFLL && v41 >= v13)
          {
LABEL_86:
            if (v14 > v13)
            {
              goto LABEL_31;
            }

            v42 = &v44;
            if (!(off_2672FE8[v14])(&v42, &v40, v4))
            {
              goto LABEL_31;
            }
          }
        }
      }
    }
  }

  if (i < v2)
  {
    do
    {
      v18 = *(i + 8);
      v19 = v2[2];
      if (v18 != -1 || v19 != -1)
      {
        v21 = v18 == -1;
        if (v18 == -1)
        {
          v18 = -1;
        }

        if (v19 == -1)
        {
          v22 = v21;
        }

        else
        {
          v22 = v18 == v19;
        }

        if (v22)
        {
          (off_2673028[v18])(&v42, i, v2);
        }

        else
        {
          v23 = *v2;
          v43 = v2[2];
          v42 = v23;
          v2[2] = -1;
          v24 = *(i + 8);
          if (v24 != -1)
          {
            v44 = v2;
            (off_2673068[v24])(&v44, i);
            v2[2] = v24;
          }

          *(i + 8) = -1;
          v25 = v43;
          if (v43 != -1)
          {
            v44 = i;
            (off_2673068[v43])(&v44, &v42);
            *(i + 8) = v25;
          }
        }
      }

      v26 = i + 12;
      while (1)
      {
        do
        {
          i = v26;
          v27 = *(v26 + 8);
          v26 += 12;
        }

        while (v27 == -1);
        if (v41 == -1 || v41 < v27)
        {
          break;
        }

        if (v41 <= v27)
        {
          v42 = &v44;
          if ((off_2672FE8[v41])(&v42, &v40, i))
          {
            break;
          }
        }
      }

      v17 = v2 - 3;
      v29 = *(v2 - 1);
      if (v29 != -1)
      {
        v30 = v41;
        if (v41 == -1)
        {
          v31 = v2 - 4;
          do
          {
            v32 = *v31;
            v31 -= 3;
          }

          while (v32 != -1);
          v17 = v31 + 1;
        }

        else
        {
          while (1)
          {
            if (v30 != 0xFFFFFFFF && v30 >= v29)
            {
              if (v30 > v29)
              {
                break;
              }

              v42 = &v44;
              if (!(off_2672FE8[v30])(&v42, &v40, v17))
              {
                break;
              }
            }

            v29 = *(v17 - 1);
            if (v29 == -1)
            {
              v17 -= 3;
              break;
            }

            v30 = v41;
            v17 -= 3;
          }
        }
      }

      v2 = v17;
    }

    while (i < v17);
  }

  v34 = (i - 12);
  if ((i - 12) != a1)
  {
    v35 = *v34;
    *(a1 + 2) = *(i - 4);
    *a1 = v35;
  }

  v36 = v40;
  *(i - 4) = v41;
  *v34 = v36;
  return i;
}

uint64_t *sub_CAE048(uint64_t *a1, unint64_t a2)
{
  v36 = *a1;
  v4 = *(a1 + 2);
  v37 = v4;
  v5 = a1 + 12;
  if (v4 != -1)
  {
    v6 = 0;
    while (1)
    {
      v7 = *(v5 + 8);
      if (v7 == -1 || v7 < v4)
      {
        goto LABEL_3;
      }

      if (v7 > v4)
      {
        break;
      }

      v38 = &v40;
      if (!(off_2672FE8[v7])(&v38, v5, &v36))
      {
        break;
      }

      v4 = v37;
LABEL_3:
      v5 += 12;
      v6 -= 12;
      if (v4 == -1)
      {
        goto LABEL_13;
      }
    }

    if (v6)
    {
LABEL_13:
      v9 = v37;
      while (1)
      {
        v10 = a2 - 12;
        if (v9 == -1)
        {
          goto LABEL_16;
        }

        v11 = *(a2 - 4);
        if (v11 == -1 || v11 < v9)
        {
          goto LABEL_43;
        }

        a2 -= 12;
        if (v11 <= v9)
        {
          v38 = &v40;
          if ((off_2672FE8[v11])(&v38, v10, &v36))
          {
            goto LABEL_43;
          }

          v9 = v37;
LABEL_16:
          a2 = v10;
        }
      }
    }
  }

  if (v5 < a2)
  {
    v13 = v37;
    if (v37 != -1)
    {
      v10 = a2 - 12;
LABEL_30:
      while (1)
      {
        v14 = *(a2 - 4);
        if (v14 == -1 || v14 < v13)
        {
          break;
        }

        if (v14 > v13)
        {
          goto LABEL_28;
        }

        v38 = &v40;
        if (((off_2672FE8[v14])(&v38, v10, &v36) & 1) != 0 || v5 >= v10)
        {
          break;
        }

        v13 = v37;
        a2 = v10;
        v10 -= 12;
        if (v37 == -1)
        {
LABEL_28:
          while (1)
          {
            a2 = v10;
            if (v5 >= v10)
            {
              goto LABEL_43;
            }

            v10 -= 12;
            if (v13 != -1)
            {
              goto LABEL_30;
            }
          }
        }
      }

LABEL_43:
      a2 = v10;
      v16 = v5;
      if (v5 < a2)
      {
        goto LABEL_44;
      }

      goto LABEL_80;
    }

    do
    {
      a2 -= 12;
    }

    while (v5 < a2);
  }

  v16 = v5;
  if (v5 < a2)
  {
LABEL_44:
    v16 = v5;
    v17 = a2;
    do
    {
      v18 = *(v16 + 8);
      v19 = *(v17 + 8);
      if (v18 != -1 || v19 != -1)
      {
        v21 = v18 == -1;
        if (v18 == -1)
        {
          v18 = -1;
        }

        if (v19 == -1)
        {
          v22 = v21;
        }

        else
        {
          v22 = v18 == v19;
        }

        if (v22)
        {
          (off_2673028[v18])(&v38, v16, v17);
        }

        else
        {
          v23 = *v17;
          v39 = *(v17 + 8);
          v38 = v23;
          *(v17 + 8) = -1;
          v24 = *(v16 + 8);
          if (v24 != -1)
          {
            v40 = v17;
            (off_2673068[v24])(&v40, v16);
            *(v17 + 8) = v24;
          }

          *(v16 + 8) = -1;
          v25 = v39;
          if (v39 != -1)
          {
            v40 = v16;
            (off_2673068[v39])(&v40, &v38);
            *(v16 + 8) = v25;
          }
        }
      }

      v26 = v37;
      while (1)
      {
        v27 = *(v16 + 20);
        v16 += 12;
        if (v27 != -1 && v27 >= v26)
        {
          if (v27 > v26)
          {
            break;
          }

          v38 = &v40;
          v29 = (off_2672FE8[v27])(&v38, v16, &v36);
          v26 = v37;
          if ((v29 & 1) == 0)
          {
            break;
          }
        }
      }

      while (1)
      {
        v30 = v17 - 12;
        if (v26 == -1)
        {
          goto LABEL_70;
        }

        v31 = *(v17 - 4);
        if (v31 == -1 || v31 < v26)
        {
          break;
        }

        v17 -= 12;
        if (v31 <= v26)
        {
          v38 = &v40;
          if ((off_2672FE8[v31])(&v38, v30, &v36))
          {
            break;
          }

          v26 = v37;
LABEL_70:
          v17 = v30;
        }
      }

      v17 = v30;
    }

    while (v16 < v30);
  }

LABEL_80:
  result = (v16 - 12);
  if ((v16 - 12) != a1)
  {
    v34 = *result;
    *(a1 + 2) = *(v16 - 4);
    *a1 = v34;
  }

  v35 = v36;
  *(v16 - 4) = v37;
  *result = v35;
  return result;
}

BOOL sub_CAE3D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a3;
  v8 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 2);
  if (v8 > 2)
  {
    switch(v8)
    {
      case 3:
        sub_CACBFC(a1, a1 + 12, a2 - 12);
        return 1;
      case 4:
        sub_CAD2C4(a1, a1 + 12, a1 + 24, a2 - 12);
        return 1;
      case 5:
        sub_CAD6E8(a1, a1 + 12, a1 + 24, a1 + 36, a2 - 12);
        return 1;
    }
  }

  else
  {
    if (v8 < 2)
    {
      return 1;
    }

    if (v8 == 2)
    {
      LODWORD(v9) = *(a1 + 8);
      if (v9 != -1)
      {
        v10 = a2 - 12;
        v11 = *(a2 - 4);
        v12 = v11 == 0xFFFFFFFFLL;
        if (v11 == -1)
        {
LABEL_8:
          v13 = 0;
LABEL_9:
          v9 = v9;
          if (v13)
          {
            v9 = -1;
          }

          v14 = v9 == v11;
          if (v12)
          {
            v14 = v13;
          }

          if (v14)
          {
            (off_2673028[v9])(&v31, a1, v10, a4, a5, v5);
          }

          else
          {
            v31 = *v10;
            v32 = *(v10 + 8);
            *(a2 - 4) = -1;
            v28 = *(a1 + 8);
            if (v28 != -1)
            {
              v34 = v10;
              (off_2673068[v28])(&v34, a1);
              *(a2 - 4) = v28;
            }

            *(a1 + 8) = -1;
            v29 = v32;
            if (v32 != -1)
            {
              v34 = a1;
              (off_2673068[v32])(&v34, &v31);
              *(a1 + 8) = v29;
            }
          }

          return 1;
        }

        if (v11 < v9)
        {
          v12 = 0;
          goto LABEL_8;
        }

        if (v11 <= v9)
        {
          v31 = &v34;
          v30 = a2 - 12;
          if ((off_2672FE8[v11])(&v31, a2 - 12, a1, a4, a5, v5))
          {
            LODWORD(v9) = *(a1 + 8);
            LODWORD(v11) = *(a2 - 4);
            v12 = v11 == -1;
            v13 = v9 == -1;
            if (v9 != -1)
            {
              v10 = v30;
              goto LABEL_9;
            }

            v10 = v30;
            if (v11 != -1)
            {
              goto LABEL_9;
            }
          }
        }
      }

      return 1;
    }
  }

  v15 = a1 + 24;
  sub_CACBFC(a1, a1 + 12, a1 + 24);
  v16 = a1 + 36;
  if (a1 + 36 == a2)
  {
    return 1;
  }

  v17 = 0;
  v18 = 0;
  while (1)
  {
    v20 = *(v15 + 8);
    if (v20 != -1)
    {
      v21 = *(v16 + 8);
      v22 = v21 != -1 && v21 >= v20;
      if (!v22 || v21 <= v20 && (v31 = &v34, (off_2672FE8[v21])(&v31, v16, v15)))
      {
        v31 = *v16;
        v32 = *(v16 + 8);
        *v16 = *v15;
        *(v16 + 8) = *(v15 + 8);
        v23 = v17;
        while (1)
        {
          v24 = a1 + v23;
          v19 = a1 + v23 + 24;
          v25 = *(a1 + v23 + 20);
          if (v25 == -1)
          {
            break;
          }

          if (v32 != -1 && v32 >= v25)
          {
            if (v32 > v25)
            {
              break;
            }

            v34 = &v33;
            if (!(off_2672FE8[v32])(&v34, &v31, v24 + 12))
            {
              break;
            }
          }

          *v19 = *(v24 + 12);
          *(a1 + v23 + 32) = *(v24 + 20);
          v23 -= 12;
          if (v23 == -24)
          {
            v19 = a1;
            break;
          }
        }

        *v19 = v31;
        *(v19 + 8) = v32;
        if (++v18 == 8)
        {
          return v16 + 12 == a2;
        }
      }
    }

    v15 = v16;
    v17 += 12;
    v16 += 12;
    if (v16 == a2)
    {
      return 1;
    }
  }
}

void sub_CAE834(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  *a2 = *a3;
  *a3 = v3;
}

void sub_CAE848(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  *a2 = *a3;
  *a3 = v3;
}

void sub_CAE85C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  *a2 = *a3;
  *a3 = v3;
}

void sub_CAE870(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  *a2 = *a3;
  *a3 = v3;
}

void sub_CAE884(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  *a2 = *a3;
  *a3 = v3;
}

void sub_CAE898(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  *a2 = *a3;
  *a3 = v3;
}

void sub_CAE8AC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  *a2 = *a3;
  *a3 = v3;
}

uint64_t sub_CAE934(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v43[11] = v4;
    v43[12] = v5;
    v7 = v6 >> 1;
    if ((v6 >> 1) >= (0xAAAAAAAAAAAAAAABLL * ((a4 - result) >> 2)))
    {
      v8 = (0x5555555555555556 * ((a4 - result) >> 2)) | 1;
      v9 = (result + 12 * v8);
      v10 = 0x5555555555555556 * ((a4 - result) >> 2) + 2;
      v11 = a3;
      v12 = result;
      if (v10 < a3)
      {
        v13 = *(v9 + 5);
        if (v13 != -1)
        {
          v14 = *(v9 + 2);
          v15 = v14 != -1 && v14 >= v13;
          if (!v15 || v14 <= v13 && (v40 = v43, v37 = a4, v38 = (off_2672FE8[v14])(&v40, v9, v9 + 12), a4 = v37, a3 = v11, v39 = v38, result = v12, v39))
          {
            v9 = (v9 + 12);
            v8 = v10;
          }
        }
      }

      v16 = *(a4 + 8);
      if (v16 == -1 || ((v17 = *(v9 + 2), v17 != -1) ? (v18 = v17 >= v16) : (v18 = 0), v18 && (v17 > v16 || (v40 = v43, v19 = a4, v20 = (off_2672FE8[v17])(&v40, v9, a4), a4 = v19, a3 = v11, v21 = v20, result = v12, (v21 & 1) == 0))))
      {
        v40 = *a4;
        v41 = *(a4 + 8);
        v22 = *(v9 + 2);
        *a4 = *v9;
        *(a4 + 8) = v22;
        if (v7 >= v8)
        {
          while (1)
          {
            v24 = v9;
            v25 = 2 * v8;
            v8 = (2 * v8) | 1;
            v9 = (result + 12 * v8);
            v26 = v25 + 2;
            if (v25 + 2 < a3)
            {
              v27 = *(v9 + 5);
              if (v27 != -1)
              {
                v28 = *(v9 + 2);
                v29 = v28 != -1 && v28 >= v27;
                if (!v29 || v28 <= v27 && (v43[0] = &v42, v34 = (off_2672FE8[v28])(v43, v9, v9 + 12), a3 = v11, v35 = v34, result = v12, v35))
                {
                  v9 = (v9 + 12);
                  v8 = v26;
                }
              }
            }

            if (v41 != -1)
            {
              v30 = *(v9 + 2);
              if (v30 == -1 || v30 < v41)
              {
                break;
              }

              if (v30 <= v41)
              {
                v43[0] = &v42;
                v32 = (off_2672FE8[v30])(v43, v9, &v40);
                a3 = v11;
                v33 = v32;
                result = v12;
                if (v33)
                {
                  break;
                }
              }
            }

            v23 = *v9;
            *(v24 + 2) = *(v9 + 2);
            *v24 = v23;
            if (v7 < v8)
            {
              goto LABEL_41;
            }
          }

          v9 = v24;
        }

LABEL_41:
        v36 = v40;
        *(v9 + 2) = v41;
        *v9 = v36;
      }
    }
  }

  return result;
}

uint64_t sub_CAEBD8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v43[11] = v4;
    v43[12] = v5;
    v8 = result;
    v9 = 0;
    v38 = *result;
    v39 = *(result + 8);
    v10 = (a4 - 2) >> 1;
    v11 = result;
    do
    {
      v13 = v11;
      v14 = v11 + 12 * v9;
      v11 = v14 + 12;
      v15 = 2 * v9;
      v9 = (2 * v9) | 1;
      v16 = v15 + 2;
      if (v15 + 2 < a4)
      {
        v17 = *(v14 + 32);
        if (v17 != -1)
        {
          v18 = v14 + 24;
          v19 = *(v14 + 20);
          v20 = v19 != -1 && v19 >= v17;
          if (!v20 || v19 <= v17 && (v40 = v43, result = (off_2672FE8[v19])(&v40, v11, v18), result))
          {
            v11 = v18;
            v9 = v16;
          }
        }
      }

      v12 = *v11;
      *(v13 + 8) = *(v11 + 8);
      *v13 = v12;
    }

    while (v9 <= v10);
    v21 = (a2 - 12);
    if (v11 == a2 - 12)
    {
      *(v11 + 8) = v39;
      *v11 = v38;
    }

    else
    {
      v22 = *v21;
      *(v11 + 8) = *(a2 - 4);
      *v11 = v22;
      *v21 = v38;
      *(a2 - 4) = v39;
      v23 = v11 - v8 + 12;
      if (v23 >= 13)
      {
        v24 = *(v11 + 8);
        if (v24 != -1)
        {
          v25 = 0xAAAAAAAAAAAAAAABLL * (v23 >> 2) - 2;
          v26 = v25 >> 1;
          v27 = v8 + 12 * (v25 >> 1);
          v28 = *(v27 + 8);
          v29 = v28 != -1 && v28 >= v24;
          if (!v29 || v28 <= v24 && (v40 = v43, result = (off_2672FE8[v28])(&v40, v8 + 12 * (v25 >> 1), v11), result))
          {
            v30 = *v11;
            v41 = *(v11 + 8);
            v40 = v30;
            v31 = *v27;
            *(v11 + 8) = *(v27 + 8);
            *v11 = v31;
            if (v25 >= 2)
            {
              while (v41 != -1)
              {
                v35 = v26 - 1;
                v26 = (v26 - 1) >> 1;
                v32 = v8 + 12 * v26;
                v36 = *(v32 + 8);
                if (v36 != -1 && v36 >= v41)
                {
                  if (v36 > v41)
                  {
                    break;
                  }

                  v43[0] = &v42;
                  result = (off_2672FE8[v36])(v43, v8 + 12 * v26, &v40);
                  if (!result)
                  {
                    break;
                  }
                }

                v34 = *v32;
                *(v27 + 8) = *(v32 + 8);
                *v27 = v34;
                v27 = v8 + 12 * v26;
                if (v35 <= 1)
                {
                  goto LABEL_24;
                }
              }
            }

            v32 = v27;
LABEL_24:
            v33 = v40;
            *(v32 + 8) = v41;
            *v32 = v33;
          }
        }
      }
    }
  }

  return result;
}

double sub_CAEE70(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  if (*(a2 + 24))
  {
    v4 = *(a2 + 8);
    if (!v4)
    {
      operator delete[]();
    }

    (*(*v4 + 24))(v4);
  }

  if (*(a2 + 16) == 1)
  {
    v5 = *(a2 + 8);
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }
  }

  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  result = 0.0;
  *v3 = 0u;
  v3[1] = 0u;
  return result;
}

void sub_CAEF8C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_26730F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_CAEFEC(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v6 = *a2;
  v7 = a2[1];
  *a2 = 0;
  *result = v6;
  *(result + 8) = v7;
  a2[1] = 0;
  v8 = a2[3];
  v9 = a2[2];
  v10 = *(a2 + 8);
  *(result + 16) = v9;
  *(result + 24) = v8;
  *(result + 32) = v10;
  if (v8)
  {
    v11 = *(v9 + 8);
    v12 = *(result + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(v6 + 8 * v11) = result + 16;
    a2[2] = 0;
    a2[3] = 0;
  }

  *(result + 40) = *a3;
  *(result + 48) = *(a3 + 8);
  *(result + 56) = *(a3 + 16);
  *(result + 64) = *(a3 + 24);
  *(result + 80) = *(a3 + 40);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  v13 = a4[2];
  *(result + 104) = v13;
  v14 = *a4;
  *(result + 96) = a4[1];
  *a4 = 0;
  *(result + 88) = v14;
  a4[1] = 0;
  v15 = a4[3];
  *(result + 112) = v15;
  *(result + 120) = *(a4 + 8);
  if (v15)
  {
    v16 = *(v13 + 8);
    v17 = *(result + 96);
    if ((v17 & (v17 - 1)) != 0)
    {
      if (v16 >= v17)
      {
        v16 %= v17;
      }
    }

    else
    {
      v16 &= v17 - 1;
    }

    *(v14 + 8 * v16) = result + 104;
    a4[2] = 0;
    a4[3] = 0;
  }

  v18 = a5[2];
  *(result + 144) = v18;
  v19 = *a5;
  *(result + 136) = a5[1];
  *a5 = 0;
  *(result + 128) = v19;
  a5[1] = 0;
  v20 = a5[3];
  *(result + 152) = v20;
  *(result + 160) = *(a5 + 8);
  if (v20)
  {
    v21 = *(v18 + 8);
    v22 = *(result + 136);
    if ((v22 & (v22 - 1)) != 0)
    {
      if (v21 >= v22)
      {
        v21 %= v22;
      }
    }

    else
    {
      v21 &= v22 - 1;
    }

    *(v19 + 8 * v21) = result + 144;
    a5[2] = 0;
    a5[3] = 0;
  }

  v23 = a6[2];
  *(result + 184) = v23;
  v24 = *a6;
  *(result + 176) = a6[1];
  *a6 = 0;
  *(result + 168) = v24;
  a6[1] = 0;
  v25 = a6[3];
  *(result + 192) = v25;
  *(result + 200) = *(a6 + 8);
  if (v25)
  {
    v26 = *(v23 + 8);
    v27 = *(result + 176);
    if ((v27 & (v27 - 1)) != 0)
    {
      if (v26 >= v27)
      {
        v26 %= v27;
      }
    }

    else
    {
      v26 &= v27 - 1;
    }

    *(v24 + 8 * v26) = result + 184;
    a6[2] = 0;
    a6[3] = 0;
  }

  return result;
}

uint64_t sub_CAF1D4(uint64_t a1)
{
  sub_CA1E18(a1 + 168);
  sub_CA1E18(a1 + 128);
  sub_CA1E18(a1 + 88);
  if (*(a1 + 56))
  {
    v2 = *(a1 + 40);
    if (!v2)
    {
      operator delete[]();
    }

    (*(*v2 + 24))(v2);
  }

  if (*(a1 + 48) == 1)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  v4 = *(a1 + 16);
  if (v4)
  {
    do
    {
      v5 = *v4;
      operator delete(v4);
      v4 = v5;
    }

    while (v5);
  }

  v6 = *a1;
  *a1 = 0;
  if (v6)
  {
    operator delete(v6);
  }

  return a1;
}

void sub_CAF314(uint64_t a1, uint64_t a2, void *a3)
{
  prime = vcvtps_u32_f32((*(a2 + 24) + ((a3[1] - *a3) >> 5)) / *(a2 + 32));
  if (prime == 1)
  {
    prime = 2;
  }

  else if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(prime);
  }

  v5 = *(a2 + 8);
  if (prime > *&v5)
  {
    goto LABEL_6;
  }

  if (prime >= *&v5)
  {
    return;
  }

  v6 = vcvtps_u32_f32(*(a2 + 24) / *(a2 + 32));
  if (*&v5 < 3uLL || (v7 = vcnt_s8(v5), v7.i16[0] = vaddlv_u8(v7), v7.u32[0] > 1uLL))
  {
    v9 = prime;
    v10 = std::__next_prime(v6);
    if (v9 <= v10)
    {
      prime = v10;
    }

    else
    {
      prime = v9;
    }

    if (prime >= *&v5)
    {
      return;
    }

LABEL_6:

    sub_B07C(a2, prime);
    return;
  }

  v8 = 1 << -__clz(v6 - 1);
  if (v6 >= 2)
  {
    v6 = v8;
  }

  if (prime <= v6)
  {
    prime = v6;
  }

  if (prime < *&v5)
  {
    goto LABEL_6;
  }
}

uint64_t *sub_CAF430(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = 0xFF51AFD7ED558CCDLL * (*a2 ^ (*a2 >> 33));
  v4 = (0xC4CEB9FE1A85EC53 * (v3 ^ (v3 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v3 ^ (v3 >> 33))) >> 33);
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_31;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = (0xC4CEB9FE1A85EC53 * (v3 ^ (v3 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v3 ^ (v3 >> 33))) >> 33);
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_31:
    operator new();
  }

  if (v6.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v9[1];
      if (v12 == v4)
      {
        if (*(v9 + 5) == HIDWORD(v2) && *(v9 + 4) == v2)
        {
          return v9;
        }
      }

      else if ((v12 & (*&v5 - 1)) != v7)
      {
        goto LABEL_31;
      }

      v9 = *v9;
      if (!v9)
      {
        goto LABEL_31;
      }
    }
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v10 >= *&v5)
    {
      v10 %= *&v5;
    }

    if (v10 != v7)
    {
      goto LABEL_31;
    }

LABEL_12:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_31;
    }
  }

  if (*(v9 + 5) != HIDWORD(v2) || *(v9 + 4) != v2)
  {
    goto LABEL_12;
  }

  return v9;
}

void sub_CAF798(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_39EA4(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_CAF7AC(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = 0xFF51AFD7ED558CCDLL * (*a2 ^ (*a2 >> 33));
  v4 = (0xC4CEB9FE1A85EC53 * (v3 ^ (v3 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v3 ^ (v3 >> 33))) >> 33);
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_31;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = (0xC4CEB9FE1A85EC53 * (v3 ^ (v3 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v3 ^ (v3 >> 33))) >> 33);
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_31:
    operator new();
  }

  if (v6.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v9[1];
      if (v12 == v4)
      {
        if (*(v9 + 5) == HIDWORD(v2) && *(v9 + 4) == v2)
        {
          return v9;
        }
      }

      else if ((v12 & (*&v5 - 1)) != v7)
      {
        goto LABEL_31;
      }

      v9 = *v9;
      if (!v9)
      {
        goto LABEL_31;
      }
    }
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v10 >= *&v5)
    {
      v10 %= *&v5;
    }

    if (v10 != v7)
    {
      goto LABEL_31;
    }

LABEL_12:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_31;
    }
  }

  if (*(v9 + 5) != HIDWORD(v2) || *(v9 + 4) != v2)
  {
    goto LABEL_12;
  }

  return v9;
}

void sub_CAFB38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_CAFB4C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_CAFB4C(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_CAEE70(*(a1 + 8), v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *sub_CAFBA0(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = 0xFF51AFD7ED558CCDLL * (*a2 ^ (*a2 >> 33));
  v4 = (0xC4CEB9FE1A85EC53 * (v3 ^ (v3 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v3 ^ (v3 >> 33))) >> 33);
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_31;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = (0xC4CEB9FE1A85EC53 * (v3 ^ (v3 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v3 ^ (v3 >> 33))) >> 33);
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_31:
    operator new();
  }

  if (v6.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v9[1];
      if (v12 == v4)
      {
        if (*(v9 + 5) == HIDWORD(v2) && *(v9 + 4) == v2)
        {
          return v9;
        }
      }

      else if ((v12 & (*&v5 - 1)) != v7)
      {
        goto LABEL_31;
      }

      v9 = *v9;
      if (!v9)
      {
        goto LABEL_31;
      }
    }
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v10 >= *&v5)
    {
      v10 %= *&v5;
    }

    if (v10 != v7)
    {
      goto LABEL_31;
    }

LABEL_12:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_31;
    }
  }

  if (*(v9 + 5) != HIDWORD(v2) || *(v9 + 4) != v2)
  {
    goto LABEL_12;
  }

  return v9;
}

void sub_CAFF08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_39EA4(va);
  _Unwind_Resume(a1);
}

void sub_CAFF1C(unint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v9 = (a2 - 4);
  v10 = a1;
LABEL_2:
  v11 = 1 - a4;
  while (1)
  {
    a1 = v10;
    v12 = v11;
    v13 = (a2 - v10) >> 5;
    if (v13 > 2)
    {
      switch(v13)
      {
        case 3uLL:
          sub_CB02A8(v10, (v10 + 32), a2 - 4);
          return;
        case 4uLL:
          sub_CB0534(v10, (v10 + 32), (v10 + 64), a2 - 2);
          return;
        case 5uLL:
          sub_CB06C8(v10, (v10 + 32), (v10 + 64), (v10 + 96), a2 - 2);
          return;
      }
    }

    else
    {
      if (v13 < 2)
      {
        return;
      }

      if (v13 == 2)
      {
        v36.n128_u64[0] = (a2 - 4);
        v36.n128_u64[1] = (a2 - 3);
        *&v37 = a2 - 12;
        *(&v37 + 1) = a2 - 1;
        v38 = a2 - 4;
        v39 = a2 - 3;
        v40 = a2 - 2;
        v41 = a2 - 1;
        v28 = v10;
        v29 = v10 + 8;
        v30 = v10 + 20;
        v31 = v10 + 24;
        v32 = v10 + 28;
        v33 = v10 + 29;
        v34 = v10 + 30;
        v35 = v10 + 31;
        v25 = sub_CB19B4(&v36, &v28);
        if (v25 < 0)
        {
          v26 = *(v10 + 16);
          v36 = *v10;
          v37 = v26;
          v27 = *(a2 - 1);
          *v10 = *v9;
          *(v10 + 16) = v27;
          *v9 = v36;
          *(a2 - 1) = v37;
        }

        return;
      }
    }

    if (v13 <= 23)
    {
      if (a5)
      {
        sub_CB08BC(v10, a2);
      }

      else
      {
        sub_CB0B3C(v10, a2);
      }

      return;
    }

    if (v12 == 1)
    {
      break;
    }

    v14 = v13 >> 1;
    v15 = v10 + 32 * (v13 >> 1);
    if (v13 < 0x81)
    {
      sub_CB02A8((v10 + 32 * (v13 >> 1)), v10, a2 - 4);
      if (a5)
      {
        goto LABEL_17;
      }
    }

    else
    {
      sub_CB02A8(v10, (v10 + 32 * (v13 >> 1)), a2 - 4);
      v16 = v10 + 32;
      v17 = 32 * v14;
      v18 = (32 * v14 + a1 - 32);
      sub_CB02A8((a1 + 32), v18, a2 - 8);
      sub_CB02A8((a1 + 64), (v16 + v17), a2 - 12);
      sub_CB02A8(v18, v15, (v16 + v17));
      v19 = *(a1 + 16);
      v36 = *a1;
      v37 = v19;
      v20 = *(v15 + 16);
      *a1 = *v15;
      *(a1 + 16) = v20;
      v21 = v37;
      *v15 = v36;
      *(v15 + 16) = v21;
      if (a5)
      {
        goto LABEL_17;
      }
    }

    v36.n128_u64[0] = a1 - 32;
    v36.n128_u64[1] = a1 - 24;
    *&v37 = a1 - 12;
    *(&v37 + 1) = a1 - 8;
    v38 = (a1 - 4);
    v39 = (a1 - 3);
    v40 = (a1 - 2);
    v41 = (a1 - 1);
    v28 = a1;
    v29 = a1 + 8;
    v30 = a1 + 20;
    v31 = a1 + 24;
    v32 = a1 + 28;
    v33 = a1 + 29;
    v34 = a1 + 30;
    v35 = a1 + 31;
    if ((sub_CB19B4(&v36, &v28) & 0x80) == 0)
    {
      v10 = sub_CB0D60(a1, a2);
      goto LABEL_22;
    }

LABEL_17:
    v22 = sub_CB1210(a1, a2);
    if ((v23 & 1) == 0)
    {
      goto LABEL_20;
    }

    v24 = sub_CB16B0(a1, v22);
    v10 = v22 + 32;
    if (sub_CB16B0((v22 + 32), a2))
    {
      a4 = -v12;
      a2 = v22;
      if (v24)
      {
        return;
      }

      goto LABEL_1;
    }

    v11 = v12 + 1;
    if (!v24)
    {
LABEL_20:
      sub_CAFF1C(a1, v22, a3, -v12, a5 & 1);
      v10 = v22 + 32;
LABEL_22:
      a5 = 0;
      a4 = -v12;
      goto LABEL_2;
    }
  }

  if (v10 != a2)
  {
    sub_CB1B50(v10, a2, a2, a3);
  }
}

uint64_t sub_CB02A8(unint64_t *a1, unint64_t *a2, unint64_t *a3)
{
  v49 = a2;
  v50 = a2 + 1;
  v40 = a2 + 1;
  v34 = a2 + 20;
  v51 = a2 + 20;
  v52 = a2 + 3;
  v36 = a2 + 3;
  v37 = a2 + 30;
  v38 = a2 + 28;
  v53 = a2 + 28;
  v54 = a2 + 29;
  v35 = a2 + 29;
  v55 = a2 + 30;
  v56 = a2 + 31;
  v39 = a2 + 31;
  v41 = a1;
  v42 = a1 + 1;
  v32 = a1 + 20;
  v33 = a1 + 1;
  v43 = a1 + 20;
  v44 = a1 + 3;
  v30 = a1 + 28;
  v31 = a1 + 3;
  v45 = a1 + 28;
  v46 = a1 + 29;
  v28 = a1 + 30;
  v29 = a1 + 29;
  v47 = a1 + 30;
  v48 = a1 + 31;
  v27 = a1 + 31;
  v6 = a3 + 1;
  v7 = a3 + 20;
  v8 = a3 + 3;
  v9 = a3 + 28;
  v10 = a3 + 29;
  v11 = a3 + 30;
  v12 = a3 + 31;
  if ((sub_CB19B4(&v49, &v41) & 0x80) != 0)
  {
    v49 = a3;
    v50 = v6;
    v51 = v7;
    v52 = v8;
    v53 = v9;
    v54 = v10;
    v55 = v11;
    v56 = v12;
    v41 = a2;
    v42 = v40;
    v43 = v34;
    v44 = v36;
    v45 = v38;
    v46 = v35;
    v47 = v37;
    v48 = v39;
    if ((sub_CB19B4(&v49, &v41) & 0x80) != 0)
    {
      v18 = *a1;
      v17 = *(a1 + 1);
      v26 = *(a3 + 1);
      *a1 = *a3;
      *(a1 + 1) = v26;
    }

    else
    {
      v15 = *a1;
      v14 = *(a1 + 1);
      v16 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v16;
      *a2 = v15;
      *(a2 + 1) = v14;
      v49 = a3;
      v50 = v6;
      v51 = v7;
      v52 = v8;
      v53 = v9;
      v54 = v10;
      v55 = v11;
      v56 = v12;
      v41 = a2;
      v42 = v40;
      v43 = v34;
      v44 = v36;
      v45 = v38;
      v46 = v35;
      v47 = v37;
      v48 = v39;
      if ((sub_CB19B4(&v49, &v41) & 0x80) == 0)
      {
        return 1;
      }

      v18 = *a2;
      v17 = *(a2 + 1);
      v19 = *(a3 + 1);
      *a2 = *a3;
      *(a2 + 1) = v19;
    }

    *a3 = v18;
    *(a3 + 1) = v17;
    return 1;
  }

  v49 = a3;
  v50 = v6;
  v51 = v7;
  v52 = v8;
  v53 = v9;
  v54 = v10;
  v55 = v11;
  v56 = v12;
  v41 = a2;
  v42 = v40;
  v43 = v34;
  v44 = v36;
  v45 = v38;
  v46 = v35;
  v47 = v37;
  v48 = v39;
  if ((sub_CB19B4(&v49, &v41) & 0x80) == 0)
  {
    return 0;
  }

  v21 = *a2;
  v20 = *(a2 + 1);
  v22 = *(a3 + 1);
  *a2 = *a3;
  *(a2 + 1) = v22;
  *a3 = v21;
  *(a3 + 1) = v20;
  v49 = a2;
  v50 = v40;
  v51 = v34;
  v52 = v36;
  v53 = v38;
  v54 = v35;
  v55 = v37;
  v56 = v39;
  v41 = a1;
  v42 = v33;
  v43 = v32;
  v44 = v31;
  v45 = v30;
  v46 = v29;
  v47 = v28;
  v48 = v27;
  if ((sub_CB19B4(&v49, &v41) & 0x80) != 0)
  {
    v24 = *a1;
    v23 = *(a1 + 1);
    v25 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v25;
    *a2 = v24;
    *(a2 + 1) = v23;
  }

  return 1;
}

__n128 sub_CB0534(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4)
{
  sub_CB02A8(a1->n128_u64, a2->n128_u64, a3->n128_u64);
  v25 = a4;
  v26 = &a4->n128_i64[1];
  v27 = a4[1].n128_i64 + 4;
  v28 = &a4[1].n128_i64[1];
  v29 = &a4[1].n128_i64[1] + 4;
  v30 = &a4[1].n128_i64[1] + 5;
  v31 = &a4[1].n128_i64[1] + 6;
  v32 = &a4[1].n128_i64[1] + 7;
  v17 = a3;
  v18 = &a3->n128_u64[1];
  v19 = &a3[1].n128_i8[4];
  v20 = &a3[1].n128_i8[8];
  v21 = &a3[1].n128_i8[12];
  v22 = &a3[1].n128_i8[13];
  v23 = &a3[1].n128_i8[14];
  v24 = &a3[1].n128_i8[15];
  if ((sub_CB19B4(&v25, &v17) & 0x80) != 0)
  {
    v9 = *a3;
    v8 = a3[1];
    v10 = a4[1];
    *a3 = *a4;
    a3[1] = v10;
    *a4 = v9;
    a4[1] = v8;
    v25 = a3;
    v26 = &a3->n128_i64[1];
    v27 = a3[1].n128_i64 + 4;
    v28 = &a3[1].n128_i64[1];
    v29 = &a3[1].n128_i64[1] + 4;
    v30 = &a3[1].n128_i64[1] + 5;
    v31 = &a3[1].n128_i64[1] + 6;
    v32 = &a3[1].n128_i64[1] + 7;
    v17 = a2;
    v18 = &a2->n128_u64[1];
    v19 = &a2[1].n128_i8[4];
    v20 = &a2[1].n128_i8[8];
    v21 = &a2[1].n128_i8[12];
    v22 = &a2[1].n128_i8[13];
    v23 = &a2[1].n128_i8[14];
    v24 = &a2[1].n128_i8[15];
    if ((sub_CB19B4(&v25, &v17) & 0x80) != 0)
    {
      v12 = *a2;
      v11 = a2[1];
      v13 = a3[1];
      *a2 = *a3;
      a2[1] = v13;
      *a3 = v12;
      a3[1] = v11;
      v25 = a2;
      v26 = &a2->n128_i64[1];
      v27 = a2[1].n128_i64 + 4;
      v28 = &a2[1].n128_i64[1];
      v29 = &a2[1].n128_i64[1] + 4;
      v30 = &a2[1].n128_i64[1] + 5;
      v31 = &a2[1].n128_i64[1] + 6;
      v32 = &a2[1].n128_i64[1] + 7;
      v17 = a1;
      v18 = &a1->n128_u64[1];
      v19 = &a1[1].n128_i8[4];
      v20 = &a1[1].n128_i8[8];
      v21 = &a1[1].n128_i8[12];
      v22 = &a1[1].n128_i8[13];
      v23 = &a1[1].n128_i8[14];
      v24 = &a1[1].n128_i8[15];
      if ((sub_CB19B4(&v25, &v17) & 0x80) != 0)
      {
        v14 = *a1;
        result = a1[1];
        v15 = a2[1];
        *a1 = *a2;
        a1[1] = v15;
        *a2 = v14;
        a2[1] = result;
      }
    }
  }

  return result;
}

__n128 sub_CB06C8(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5)
{
  sub_CB0534(a1, a2, a3, a4);
  v30 = a5;
  v31 = &a5->n128_i64[1];
  v32 = a5[1].n128_i64 + 4;
  v33 = &a5[1].n128_i64[1];
  v34 = &a5[1].n128_i64[1] + 4;
  v35 = &a5[1].n128_i64[1] + 5;
  v36 = &a5[1].n128_i64[1] + 6;
  v37 = &a5[1].n128_i64[1] + 7;
  v22 = a4;
  v23 = &a4->n128_u64[1];
  v24 = &a4[1].n128_i8[4];
  v25 = &a4[1].n128_i8[8];
  v26 = &a4[1].n128_i8[12];
  v27 = &a4[1].n128_i8[13];
  v28 = &a4[1].n128_i8[14];
  v29 = &a4[1].n128_i8[15];
  if ((sub_CB19B4(&v30, &v22) & 0x80) != 0)
  {
    v10 = *a4;
    v9 = a4[1];
    v11 = a5[1];
    *a4 = *a5;
    a4[1] = v11;
    *a5 = v10;
    a5[1] = v9;
    v30 = a4;
    v31 = &a4->n128_i64[1];
    v32 = a4[1].n128_i64 + 4;
    v33 = &a4[1].n128_i64[1];
    v34 = &a4[1].n128_i64[1] + 4;
    v35 = &a4[1].n128_i64[1] + 5;
    v36 = &a4[1].n128_i64[1] + 6;
    v37 = &a4[1].n128_i64[1] + 7;
    v22 = a3;
    v23 = &a3->n128_u64[1];
    v24 = &a3[1].n128_i8[4];
    v25 = &a3[1].n128_i8[8];
    v26 = &a3[1].n128_i8[12];
    v27 = &a3[1].n128_i8[13];
    v28 = &a3[1].n128_i8[14];
    v29 = &a3[1].n128_i8[15];
    if ((sub_CB19B4(&v30, &v22) & 0x80) != 0)
    {
      v13 = *a3;
      v12 = a3[1];
      v14 = a4[1];
      *a3 = *a4;
      a3[1] = v14;
      *a4 = v13;
      a4[1] = v12;
      v30 = a3;
      v31 = &a3->n128_i64[1];
      v32 = a3[1].n128_i64 + 4;
      v33 = &a3[1].n128_i64[1];
      v34 = &a3[1].n128_i64[1] + 4;
      v35 = &a3[1].n128_i64[1] + 5;
      v36 = &a3[1].n128_i64[1] + 6;
      v37 = &a3[1].n128_i64[1] + 7;
      v22 = a2;
      v23 = &a2->n128_u64[1];
      v24 = &a2[1].n128_i8[4];
      v25 = &a2[1].n128_i8[8];
      v26 = &a2[1].n128_i8[12];
      v27 = &a2[1].n128_i8[13];
      v28 = &a2[1].n128_i8[14];
      v29 = &a2[1].n128_i8[15];
      if ((sub_CB19B4(&v30, &v22) & 0x80) != 0)
      {
        v16 = *a2;
        v15 = a2[1];
        v17 = a3[1];
        *a2 = *a3;
        a2[1] = v17;
        *a3 = v16;
        a3[1] = v15;
        v30 = a2;
        v31 = &a2->n128_i64[1];
        v32 = a2[1].n128_i64 + 4;
        v33 = &a2[1].n128_i64[1];
        v34 = &a2[1].n128_i64[1] + 4;
        v35 = &a2[1].n128_i64[1] + 5;
        v36 = &a2[1].n128_i64[1] + 6;
        v37 = &a2[1].n128_i64[1] + 7;
        v22 = a1;
        v23 = &a1->n128_u64[1];
        v24 = &a1[1].n128_i8[4];
        v25 = &a1[1].n128_i8[8];
        v26 = &a1[1].n128_i8[12];
        v27 = &a1[1].n128_i8[13];
        v28 = &a1[1].n128_i8[14];
        v29 = &a1[1].n128_i8[15];
        if ((sub_CB19B4(&v30, &v22) & 0x80) != 0)
        {
          v18 = *a1;
          result = a1[1];
          v19 = a2[1];
          *a1 = *a2;
          a1[1] = v19;
          *a2 = v18;
          a2[1] = result;
        }
      }
    }
  }

  return result;
}

uint64_t sub_CB08BC(uint64_t result, unint64_t *a2)
{
  if (result != a2)
  {
    v41[14] = v2;
    v41[15] = v3;
    v5 = result;
    v6 = (result + 32);
    if ((result + 32) != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v9 = v6;
        v41[0] = v6;
        v41[1] = v8 + 5;
        v41[2] = (v8 + 52);
        v41[3] = v8 + 7;
        v41[4] = (v8 + 60);
        v41[5] = (v8 + 61);
        v41[6] = (v8 + 62);
        v41[7] = (v8 + 63);
        v40[0] = v8;
        v40[1] = v8 + 1;
        v40[2] = (v8 + 20);
        v40[3] = v8 + 3;
        v40[4] = (v8 + 28);
        v40[5] = (v8 + 29);
        v40[6] = (v8 + 30);
        v40[7] = (v8 + 31);
        result = sub_CB19B4(v41, v40);
        if ((result & 0x80) != 0)
        {
          v10 = *(v8 + 4);
          v11 = *(v8 + 10);
          v12 = *(v8 + 11);
          v13 = *(v8 + 12);
          v14 = *(v8 + 13);
          v15 = *(v8 + 14);
          v16 = *(v8 + 60);
          v17 = *(v8 + 61);
          v18 = *(v8 + 62);
          v19 = *(v8 + 63);
          v20 = v8[1];
          result = v5;
          *v9 = *v8;
          *(v9 + 1) = v20;
          if (v8 != v5)
          {
            v21 = HIDWORD(v10);
            v22 = v7;
            while (1)
            {
              v24 = (v5 + v22);
              v25 = *(v5 + v22 - 32);
              v26 = HIDWORD(v25);
              v27 = v10 < v25;
              if (v21 != HIDWORD(v25))
              {
                v27 = v21 < HIDWORD(v25);
              }

              if (!v27)
              {
                v28 = v25 < v10;
                if (v21 != v26)
                {
                  v28 = v26 < v21;
                }

                if (v28)
                {
LABEL_41:
                  result = v8;
                  goto LABEL_5;
                }

                v29 = *(v24 - 6);
                if (v11 >= v29)
                {
                  if (v11 != v29 || v12 == -1 || (v30 = *(v5 + v22 - 20), v12 >= v30) && (v12 != v30 || v13 >= *(v5 + v22 - 16)))
                  {
                    if (v29 < v11)
                    {
                      goto LABEL_41;
                    }

                    v31 = *(v5 + v22 - 20);
                    if (v31 != -1 && (v31 < v12 || v31 == v12 && *(v5 + v22 - 16) < v13))
                    {
                      goto LABEL_41;
                    }

                    v32 = *(v24 - 3);
                    v33 = v14 == v32;
                    v34 = v14 < v32;
                    if (v33)
                    {
                      v35 = *(v24 - 2);
                      v33 = v15 == v35;
                      v34 = v15 < v35;
                      if (v33)
                      {
                        v36 = *(v24 - 4);
                        v33 = v16 == v36;
                        v34 = v16 < v36;
                        if (v33)
                        {
                          v37 = *(v24 - 3);
                          v33 = v17 == v37;
                          v34 = v17 < v37;
                          if (v33)
                          {
                            v38 = *(v24 - 2);
                            v33 = v18 == v38;
                            v34 = v18 < v38;
                            if (v33)
                            {
                              v39 = *(v24 - 1);
                              v33 = v19 == v39;
                              v34 = v19 < v39;
                              if (v33)
                              {
                                goto LABEL_41;
                              }
                            }
                          }
                        }
                      }
                    }

                    if (!v34)
                    {
                      break;
                    }
                  }
                }
              }

              v8 -= 2;
              v23 = *(v5 + v22 - 16);
              *v24 = *(v5 + v22 - 32);
              v24[1] = v23;
              v22 -= 32;
              if (!v22)
              {
                result = v5;
                goto LABEL_5;
              }
            }

            result = v5 + v22;
          }

LABEL_5:
          *result = v10;
          *(result + 8) = v11;
          *(result + 12) = v12;
          *(result + 16) = v13;
          *(result + 20) = v14;
          *(result + 24) = v15;
          *(result + 28) = v16;
          *(result + 29) = v17;
          *(result + 30) = v18;
          *(result + 31) = v19;
        }

        v6 = v9 + 4;
        v7 += 32;
        v8 = v9;
      }

      while (v9 + 4 != a2);
    }
  }

  return result;
}

uint64_t sub_CB0B3C(uint64_t result, unint64_t *a2)
{
  if (result != a2)
  {
    v36[12] = v2;
    v36[13] = v3;
    v5 = result;
    v6 = (result + 32);
    while (v6 != a2)
    {
      v7 = v6;
      v36[0] = v6;
      v36[1] = v5 + 5;
      v36[2] = (v5 + 52);
      v36[3] = v5 + 7;
      v36[4] = (v5 + 60);
      v36[5] = (v5 + 61);
      v36[6] = (v5 + 62);
      v36[7] = (v5 + 63);
      v35[0] = v5;
      v35[1] = v5 + 1;
      v35[2] = (v5 + 20);
      v35[3] = v5 + 3;
      v35[4] = (v5 + 28);
      v35[5] = (v5 + 29);
      v35[6] = (v5 + 30);
      v35[7] = (v5 + 31);
      result = sub_CB19B4(v36, v35);
      if ((result & 0x80) != 0)
      {
        v8 = *v7;
        v9 = HIDWORD(*v7);
        v10 = *(v5 + 10);
        v11 = *(v5 + 11);
        v12 = *(v5 + 12);
        v13 = *(v5 + 13);
        v14 = *(v5 + 14);
        v15 = *(v5 + 60);
        v16 = *(v5 + 61);
        v17 = *(v5 + 62);
        result = *(v5 + 63);
        for (i = v7; ; i -= 4)
        {
          v19 = *(i - 1);
          *i = *(i - 2);
          *(i + 1) = v19;
          v20 = *(i - 8);
          v21 = HIDWORD(v20);
          v22 = v8 < v20;
          if (v9 != HIDWORD(v20))
          {
            v22 = v9 < HIDWORD(v20);
          }

          if (!v22)
          {
            v23 = v20 < v8;
            if (v9 != v21)
            {
              v23 = v21 < v9;
            }

            if (v23)
            {
              break;
            }

            v24 = *(i - 14);
            if (v10 >= v24)
            {
              if (v10 != v24 || v11 == -1 || (v25 = *(i - 13), v11 >= v25) && (v11 != v25 || v12 >= *(i - 12)))
              {
                if (v24 < v10)
                {
                  break;
                }

                v26 = *(i - 13);
                if (v26 != -1 && (v26 < v11 || v26 == v11 && *(i - 12) < v12))
                {
                  break;
                }

                v27 = *(i - 11);
                v28 = v13 == v27;
                v29 = v13 < v27;
                if (v28)
                {
                  v30 = *(i - 10);
                  v28 = v14 == v30;
                  v29 = v14 < v30;
                  if (v28)
                  {
                    v31 = *(i - 36);
                    v28 = v15 == v31;
                    v29 = v15 < v31;
                    if (v28)
                    {
                      v32 = *(i - 35);
                      v28 = v16 == v32;
                      v29 = v16 < v32;
                      if (v28)
                      {
                        v33 = *(i - 34);
                        v28 = v17 == v33;
                        v29 = v17 < v33;
                        if (v28)
                        {
                          v34 = *(i - 33);
                          v28 = result == v34;
                          v29 = result < v34;
                          if (v28)
                          {
                            break;
                          }
                        }
                      }
                    }
                  }
                }

                if (!v29)
                {
                  break;
                }
              }
            }
          }
        }

        *(i - 4) = v8;
        *(i - 6) = v10;
        *(i - 5) = v11;
        *(i - 4) = v12;
        *(i - 3) = v13;
        *(i - 2) = v14;
        *(i - 4) = v15;
        *(i - 3) = v16;
        *(i - 2) = v17;
        *(i - 1) = result;
      }

      v6 = v7 + 4;
      v5 = v7;
    }
  }

  return result;
}

unint64_t sub_CB0D60(_OWORD *a1, char *a2)
{
  v2 = a2;
  v4 = a1[1];
  v57 = *a1;
  v58 = v4;
  *&v67 = &v57;
  *(&v67 + 1) = &v57 + 8;
  *&v68 = &v58 + 4;
  *(&v68 + 1) = &v58 + 8;
  v69 = &v58 + 12;
  v70 = &v58 + 13;
  v71 = &v58 + 14;
  v72 = &v58 + 15;
  v5 = a2 - 12;
  v59 = a2 - 32;
  v60 = a2 - 24;
  v61 = a2 - 12;
  v62 = a2 - 8;
  v63 = a2 - 4;
  v64 = a2 - 3;
  v65 = a2 - 2;
  v66 = a2 - 1;
  if ((sub_CB19B4(&v67, &v59) & 0x80) != 0)
  {
    v9 = a1 + 63;
    do
    {
      *&v67 = &v57;
      *(&v67 + 1) = &v57 + 8;
      *&v68 = &v58 + 4;
      *(&v68 + 1) = &v58 + 8;
      v69 = &v58 + 12;
      v70 = &v58 + 13;
      v71 = &v58 + 14;
      v72 = &v58 + 15;
      v59 = v9 - 31;
      v60 = v9 - 23;
      v61 = v9 - 11;
      v62 = v9 - 7;
      v63 = v9 - 3;
      v64 = v9 - 2;
      v65 = v9 - 1;
      v66 = v9;
      v9 += 32;
    }

    while ((sub_CB19B4(&v67, &v59) & 0x80) == 0);
    v7 = (v9 - 63);
    if (v7 >= v2)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v6 = a1 + 63;
    do
    {
      v7 = (v6 - 31);
      if (v6 - 31 >= v2)
      {
        break;
      }

      *&v67 = &v57;
      *(&v67 + 1) = &v57 + 8;
      *&v68 = &v58 + 4;
      *(&v68 + 1) = &v58 + 8;
      v69 = &v58 + 12;
      v70 = &v58 + 13;
      v71 = &v58 + 14;
      v72 = &v58 + 15;
      v59 = v6 - 31;
      v60 = v6 - 23;
      v61 = v6 - 11;
      v62 = v6 - 7;
      v63 = v6 - 3;
      v64 = v6 - 2;
      v65 = v6 - 1;
      v66 = v6;
      v6 += 32;
    }

    while ((sub_CB19B4(&v67, &v59) & 0x80) == 0);
    if (v7 >= v2)
    {
LABEL_6:
      v8 = a1;
      if (v7 >= v2)
      {
        goto LABEL_14;
      }

      goto LABEL_18;
    }
  }

  do
  {
    *&v67 = &v57;
    *(&v67 + 1) = &v57 + 8;
    *&v68 = &v58 + 4;
    *(&v68 + 1) = &v58 + 8;
    v69 = &v58 + 12;
    v70 = &v58 + 13;
    v71 = &v58 + 14;
    v72 = &v58 + 15;
    v59 = v5 - 20;
    v60 = v5 - 12;
    v61 = v5;
    v62 = v5 + 4;
    v63 = v5 + 8;
    v64 = v5 + 9;
    v65 = v5 + 10;
    v66 = v5 + 11;
    v5 -= 32;
  }

  while ((sub_CB19B4(&v67, &v59) & 0x80) != 0);
  v2 = v5 + 12;
  v10 = v7 >= (v5 + 12);
  v8 = a1;
  if (v10)
  {
    goto LABEL_14;
  }

  do
  {
LABEL_18:
    v15 = *(v7 + 16);
    v67 = *v7;
    v68 = v15;
    v16 = *(v2 + 1);
    *v7 = *v2;
    *(v7 + 16) = v16;
    v17 = v68;
    *v2 = v67;
    *(v2 + 1) = v17;
    v19 = *(v7 + 32);
    v7 += 32;
    v18 = v19;
    v20 = HIDWORD(v19);
    v21 = v57 < v19;
    v22 = DWORD1(v57) < HIDWORD(v19);
    if (DWORD1(v57) == HIDWORD(v19))
    {
      v23 = v21;
    }

    else
    {
      v23 = v22;
    }

    v24 = DWORD1(v57);
    if (!v23)
    {
      do
      {
        v44 = v18 < v57;
        v47 = v20 == v24;
        v45 = v20 < v24;
        if (!v47)
        {
          v44 = v45;
        }

        if (!v44)
        {
          v46 = *(v7 + 8);
          if (DWORD2(v57) < v46)
          {
            break;
          }

          v47 = DWORD2(v57) != v46 || HIDWORD(v57) == -1;
          if (!v47)
          {
            v48 = *(v7 + 12);
            if (HIDWORD(v57) < v48 || HIDWORD(v57) == v48 && v58 < *(v7 + 16))
            {
              break;
            }
          }

          if (v46 >= DWORD2(v57))
          {
            v49 = *(v7 + 12);
            if (v49 == -1 || v49 >= HIDWORD(v57) && (v49 != HIDWORD(v57) || *(v7 + 16) >= v58))
            {
              v50 = *(v7 + 20);
              v47 = DWORD1(v58) == v50;
              v51 = DWORD1(v58) < v50;
              if (v47 && (v52 = *(v7 + 24), v47 = DWORD2(v58) == v52, v51 = DWORD2(v58) < v52, v47) && (v53 = *(v7 + 28), v47 = BYTE12(v58) == v53, v51 = BYTE12(v58) < v53, v47) && (v54 = *(v7 + 29), v47 = BYTE13(v58) == v54, v51 = BYTE13(v58) < v54, v47) && (v55 = *(v7 + 30), v47 = BYTE14(v58) == v55, v51 = BYTE14(v58) < v55, v47))
              {
                if (HIBYTE(v58) < *(v7 + 31))
                {
                  break;
                }
              }

              else if (v51)
              {
                break;
              }
            }
          }
        }

        v41 = *(v7 + 32);
        v7 += 32;
        v18 = v41;
        v20 = HIDWORD(v41);
        v42 = v57 < v41;
        v43 = DWORD1(v57) < HIDWORD(v41);
        if (DWORD1(v57) != HIDWORD(v41))
        {
          v42 = v43;
        }
      }

      while (!v42);
    }

    for (i = v2 - 16; ; i -= 32)
    {
      v26 = *(i - 2);
      v27 = HIDWORD(v26);
      v28 = v57 < v26;
      if (DWORD1(v57) != HIDWORD(v26))
      {
        v28 = DWORD1(v57) < HIDWORD(v26);
      }

      if (!v28)
      {
        v29 = v57 > v26;
        v47 = v27 == v24;
        v30 = v27 < v24;
        if (!v47)
        {
          v29 = v30;
        }

        if (v29)
        {
          break;
        }

        v31 = *(i - 2);
        if (DWORD2(v57) >= v31)
        {
          if (DWORD2(v57) != v31 || HIDWORD(v57) == -1 || (v32 = *(i - 1), HIDWORD(v57) >= v32) && (HIDWORD(v57) != v32 || v58 >= *i))
          {
            if (v31 < DWORD2(v57))
            {
              break;
            }

            v33 = *(i - 1);
            if (v33 != -1 && (v33 < HIDWORD(v57) || v33 == HIDWORD(v57) && *i < v58))
            {
              break;
            }

            v34 = *(i + 1);
            v47 = DWORD1(v58) == v34;
            v35 = DWORD1(v58) < v34;
            if (v47)
            {
              v36 = *(i + 2);
              v47 = DWORD2(v58) == v36;
              v35 = DWORD2(v58) < v36;
              if (v47)
              {
                v37 = i[12];
                v47 = BYTE12(v58) == v37;
                v35 = BYTE12(v58) < v37;
                if (v47)
                {
                  v38 = i[13];
                  v47 = BYTE13(v58) == v38;
                  v35 = BYTE13(v58) < v38;
                  if (v47)
                  {
                    v39 = i[14];
                    v47 = BYTE14(v58) == v39;
                    v35 = BYTE14(v58) < v39;
                    if (v47)
                    {
                      v40 = i[15];
                      v47 = HIBYTE(v58) == v40;
                      v35 = HIBYTE(v58) < v40;
                      if (v47)
                      {
                        break;
                      }
                    }
                  }
                }
              }
            }

            if (!v35)
            {
              break;
            }
          }
        }
      }
    }

    v2 = i - 16;
  }

  while (v7 < (i - 16));
LABEL_14:
  v11 = (v7 - 32);
  if ((v7 - 32) != v8)
  {
    v12 = *(v7 - 16);
    *v8 = *v11;
    v8[1] = v12;
  }

  v13 = v58;
  *v11 = v57;
  *(v7 - 16) = v13;
  return v7;
}

uint64_t sub_CB1210(__int128 *a1, unint64_t a2)
{
  v3 = 0;
  v4 = a1[1];
  v5 = &v63 + 8;
  v6 = &v64 + 4;
  v7 = &v64 + 8;
  v63 = *a1;
  v64 = v4;
  v8 = &v64 + 12;
  do
  {
    *&v73 = &a1[v3 + 2];
    *(&v73 + 1) = &a1[v3 + 2] + 8;
    *&v74 = &a1[v3 + 3] + 4;
    *(&v74 + 1) = &a1[v3 + 3] + 8;
    v75 = &a1[v3 + 3] + 12;
    v76 = &a1[v3 + 3] + 13;
    v77 = &a1[v3 + 3] + 14;
    v78 = &a1[v3 + 3] + 15;
    v65 = &v63;
    v66 = v5;
    v67 = v6;
    v68 = v7;
    v69 = v8;
    v70 = &v64 + 13;
    v71 = &v64 + 14;
    v72 = &v64 + 15;
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = v8;
    v13 = sub_CB19B4(&v73, &v65);
    v8 = v12;
    v7 = v11;
    v6 = v10;
    v5 = v9;
    v3 += 2;
  }

  while (v13 < 0);
  v61 = &a1[v3];
  v14 = &a1[v3 - 2];
  if (v3 == 2)
  {
    while (v61 < a2)
    {
      v17 = a2 - 32;
      *&v73 = a2 - 32;
      *(&v73 + 1) = a2 - 24;
      *&v74 = a2 - 12;
      *(&v74 + 1) = a2 - 8;
      v75 = a2 - 4;
      v76 = a2 - 3;
      v77 = a2 - 2;
      v78 = a2 - 1;
      v65 = &v63;
      v66 = v5;
      v67 = v6;
      v68 = v7;
      v69 = v8;
      v70 = &v64 + 13;
      v71 = &v64 + 14;
      v72 = &v64 + 15;
      v18 = sub_CB19B4(&v73, &v65);
      v8 = v12;
      v7 = v11;
      v6 = v10;
      v5 = v9;
      a2 -= 32;
      if (v18 < 0)
      {
        goto LABEL_10;
      }
    }

    v17 = a2;
  }

  else
  {
    v15 = a2 - 12;
    do
    {
      *&v73 = v15 - 20;
      *(&v73 + 1) = v15 - 12;
      *&v74 = v15;
      *(&v74 + 1) = v15 + 4;
      v75 = v15 + 8;
      v76 = v15 + 9;
      v77 = v15 + 10;
      v78 = v15 + 11;
      v65 = &v63;
      v66 = v5;
      v67 = v6;
      v68 = v7;
      v69 = v8;
      v70 = &v64 + 13;
      v71 = &v64 + 14;
      v72 = &v64 + 15;
      v16 = sub_CB19B4(&v73, &v65);
      v8 = v12;
      v7 = v11;
      v6 = v10;
      v5 = v9;
      v15 -= 32;
    }

    while ((v16 & 0x80) == 0);
    v17 = v15 + 12;
  }

LABEL_10:
  if (v61 < v17)
  {
    v19 = v61;
    v20 = v17;
    do
    {
      v21 = *(v19 + 16);
      v73 = *v19;
      v74 = v21;
      v22 = *(v20 + 16);
      *v19 = *v20;
      *(v19 + 16) = v22;
      v23 = v74;
      *v20 = v73;
      *(v20 + 16) = v23;
      v24 = DWORD1(v63);
      while (1)
      {
        do
        {
          v14 = v19;
          v25 = *(v19 + 32);
          v26 = *(v19 + 36);
          v19 += 32;
          v27 = v25 < v63;
          v28 = v26 == DWORD1(v63);
          v29 = v26 < DWORD1(v63);
          if (!v28)
          {
            v27 = v29;
          }
        }

        while (v27);
        v30 = v24 < HIDWORD(*v19);
        if (v24 == HIDWORD(*v19))
        {
          v30 = v63 < *v19;
        }

        if (v30)
        {
          break;
        }

        v31 = *(v14 + 40);
        if (v31 >= DWORD2(v63))
        {
          if (v31 != DWORD2(v63) || (v32 = *(v14 + 44), v32 == -1) || v32 >= HIDWORD(v63) && (v32 != HIDWORD(v63) || *(v14 + 48) >= v64))
          {
            if (DWORD2(v63) < v31)
            {
              break;
            }

            if (HIDWORD(v63) != -1)
            {
              v33 = *(v14 + 44);
              if (HIDWORD(v63) < v33 || HIDWORD(v63) == v33 && v64 < *(v14 + 48))
              {
                break;
              }
            }

            v34 = *(v14 + 52);
            v28 = v34 == DWORD1(v64);
            v35 = v34 < DWORD1(v64);
            if (v28 && (v36 = *(v14 + 56), v28 = v36 == DWORD2(v64), v35 = v36 < DWORD2(v64), v28) && (v37 = *(v14 + 60), v28 = v37 == BYTE12(v64), v35 = v37 < BYTE12(v64), v28) && (v38 = *(v14 + 61), v28 = v38 == BYTE13(v64), v35 = v38 < BYTE13(v64), v28) && (v39 = *(v14 + 62), v28 = v39 == BYTE14(v64), v35 = v39 < BYTE14(v64), v28))
            {
              if (*(v14 + 63) >= HIBYTE(v64))
              {
                break;
              }
            }

            else if (!v35)
            {
              break;
            }
          }
        }
      }

      v40 = *(v20 - 32);
      v41 = *(v20 - 28);
      v20 -= 32;
      v42 = v40 < v63;
      v28 = v41 == DWORD1(v63);
      v43 = v41 < DWORD1(v63);
      if (!v28)
      {
        v42 = v43;
      }

      if (!v42)
      {
        do
        {
          v48 = v24 < HIDWORD(*v20);
          if (v24 == HIDWORD(*v20))
          {
            v48 = v63 < *v20;
          }

          if (!v48)
          {
            v49 = *(v20 + 8);
            if (v49 < DWORD2(v63))
            {
              break;
            }

            if (v49 == DWORD2(v63))
            {
              v50 = *(v20 + 12);
              if (v50 != -1 && (v50 < HIDWORD(v63) || v50 == HIDWORD(v63) && *(v20 + 16) < v64))
              {
                break;
              }
            }

            if (DWORD2(v63) >= v49)
            {
              if (HIDWORD(v63) == -1 || (v51 = *(v20 + 12), HIDWORD(v63) >= v51) && (HIDWORD(v63) != v51 || v64 >= *(v20 + 16)))
              {
                v52 = *(v20 + 20);
                v28 = v52 == DWORD1(v64);
                v53 = v52 < DWORD1(v64);
                if (v28 && (v54 = *(v20 + 24), v28 = v54 == DWORD2(v64), v53 = v54 < DWORD2(v64), v28) && (v55 = *(v20 + 28), v28 = v55 == BYTE12(v64), v53 = v55 < BYTE12(v64), v28) && (v56 = *(v20 + 29), v28 = v56 == BYTE13(v64), v53 = v56 < BYTE13(v64), v28) && (v57 = *(v20 + 30), v28 = v57 == BYTE14(v64), v53 = v57 < BYTE14(v64), v28))
                {
                  if (*(v20 + 31) < HIBYTE(v64))
                  {
                    break;
                  }
                }

                else if (v53)
                {
                  break;
                }
              }
            }
          }

          v44 = *(v20 - 32);
          v45 = *(v20 - 28);
          v20 -= 32;
          v46 = v44 < v63;
          v28 = v45 == DWORD1(v63);
          v47 = v45 < DWORD1(v63);
          if (!v28)
          {
            v46 = v47;
          }
        }

        while (!v46);
      }

      v19 = v14 + 32;
    }

    while (v14 + 32 < v20);
  }

  if (v14 != a1)
  {
    v58 = *(v14 + 16);
    *a1 = *v14;
    a1[1] = v58;
  }

  v59 = v64;
  *v14 = v63;
  *(v14 + 16) = v59;
  return v14;
}

BOOL sub_CB16B0(__n128 *a1, __int128 *a2)
{
  v3 = (a2 - a1) >> 5;
  if (v3 <= 2)
  {
    if (v3 >= 2)
    {
      if (v3 == 2)
      {
        v4 = (a2 - 2);
        v30 = a2 - 2;
        v31 = a2 - 24;
        v32 = a2 - 12;
        v33 = a2 - 8;
        v34 = a2 - 4;
        v35 = a2 - 3;
        v36 = a2 - 2;
        v37 = a2 - 1;
        v22 = a1;
        v23 = &a1->n128_u64[1];
        v24 = &a1[1].n128_i8[4];
        v25 = &a1[1].n128_u64[1];
        v26 = &a1[1].n128_i8[12];
        v27 = &a1[1].n128_i8[13];
        v28 = &a1[1].n128_i8[14];
        v29 = &a1[1].n128_i8[15];
        if ((sub_CB19B4(&v30, &v22) & 0x80) != 0)
        {
          v6 = *a1;
          v5 = a1[1];
          v7 = v4[1];
          *a1 = *v4;
          a1[1] = v7;
          *v4 = v6;
          v4[1] = v5;
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v3)
  {
    case 3:
      sub_CB02A8(a1->n128_u64, a1[2].n128_u64, a2 - 4);
      return 1;
    case 4:
      sub_CB0534(a1, a1 + 2, a1 + 4, a2 - 2);
      return 1;
    case 5:
      sub_CB06C8(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2);
      return 1;
  }

LABEL_11:
  n128_u64 = a1[4].n128_u64;
  sub_CB02A8(a1->n128_u64, a1[2].n128_u64, a1[4].n128_u64);
  v9 = &a1[6];
  if (&a1[6] == a2)
  {
    return 1;
  }

  v10 = 0;
  v18 = 0;
  while (1)
  {
    v30 = v9;
    v31 = v9 + 8;
    v32 = v9 + 20;
    v33 = v9 + 24;
    v34 = v9 + 28;
    v35 = v9 + 29;
    v36 = v9 + 30;
    v37 = v9 + 31;
    v22 = n128_u64;
    v23 = n128_u64 + 1;
    v24 = n128_u64 + 20;
    v25 = n128_u64 + 3;
    v26 = n128_u64 + 28;
    v27 = n128_u64 + 29;
    v28 = n128_u64 + 30;
    v29 = n128_u64 + 31;
    if ((sub_CB19B4(&v30, &v22) & 0x80) != 0)
    {
      break;
    }

LABEL_13:
    n128_u64 = v9;
    v10 += 32;
    v9 += 2;
    if (v9 == a2)
    {
      return 1;
    }
  }

  v11 = v9[1];
  v20 = *v9;
  v21 = v11;
  v12 = v10;
  while (1)
  {
    v13 = a1 + v12;
    v14 = *(&a1[5] + v12);
    *(v13 + 96) = *(a1 + v12 + 64);
    *(v13 + 112) = v14;
    if (v12 == -64)
    {
      break;
    }

    v30 = &v20;
    v31 = &v20 + 8;
    v32 = &v21 + 4;
    v33 = &v21 + 8;
    v34 = &v21 + 12;
    v35 = &v21 + 13;
    v36 = &v21 + 14;
    v37 = &v21 + 15;
    v22 = (v13 + 32);
    v23 = (v13 + 40);
    v24 = (v13 + 52);
    v25 = (v13 + 56);
    v26 = (v13 + 60);
    v27 = (v13 + 61);
    v28 = (v13 + 62);
    v29 = (v13 + 63);
    v12 -= 32;
    if ((sub_CB19B4(&v30, &v22) & 0x80) == 0)
    {
      v15 = (a1 + v12 + 96);
      goto LABEL_20;
    }
  }

  v15 = a1;
LABEL_20:
  v16 = v21;
  *v15 = v20;
  v15[1] = v16;
  if (v18 != 7)
  {
    ++v18;
    goto LABEL_13;
  }

  return v9 + 2 == a2;
}

uint64_t sub_CB19B4(unint64_t **a1, unint64_t **a2)
{
  v2 = **a2;
  v3 = *(*a1 + 1);
  v4 = HIDWORD(v2);
  v20 = v3 == HIDWORD(v2);
  v5 = v3 < HIDWORD(v2);
  if (v20)
  {
    v5 = **a1 < v2;
  }

  if (v5)
  {
    return 255;
  }

  v7 = **a1;
  v8 = v2 < v7;
  v20 = v4 == HIDWORD(v7);
  v9 = v4 < HIDWORD(v7);
  if (v20)
  {
    v9 = v8;
  }

  if (v9)
  {
    return 1;
  }

  v10 = a1[1];
  v11 = a2[1];
  v12 = *v11;
  v13 = *v10;
  if (*v10 < *v11)
  {
    return 255;
  }

  if (v13 == v12)
  {
    v14 = v10[1];
    if (v14 != -1)
    {
      v15 = v11[1];
      if (v14 < v15 || v14 == v15 && v10[2] < v11[2])
      {
        return 255;
      }
    }
  }

  if (v12 < v13)
  {
    return 1;
  }

  v16 = v11[1];
  if (v16 != -1)
  {
    v17 = v10[1];
    if (v16 < v17 || v16 == v17 && v11[2] < v10[2])
    {
      return 1;
    }
  }

  v18 = *a1[2];
  v19 = *a2[2];
  v20 = v18 == v19;
  if (v18 < v19)
  {
    v21 = 0xFFFFFFFFLL;
  }

  else
  {
    v21 = 1;
  }

  if (!v20)
  {
    return v21;
  }

  v22 = *a1[3];
  v23 = *a2[3];
  if (v22 < v23)
  {
    v24 = 0xFFFFFFFFLL;
  }

  else
  {
    v24 = 1;
  }

  if (v22 != v23)
  {
    return v24;
  }

  v25 = *a1[4];
  v26 = *a2[4];
  v27 = v25 == v26;
  if (v25 < v26)
  {
    v21 = 0xFFFFFFFFLL;
  }

  else
  {
    v21 = 1;
  }

  if (!v27)
  {
    return v21;
  }

  v28 = *a1[5];
  v29 = *a2[5];
  v24 = v28 < v29 ? 0xFFFFFFFFLL : 1;
  if (v28 != v29)
  {
    return v24;
  }

  v30 = *a1[6];
  v31 = *a2[6];
  v32 = v30 == v31;
  if (v30 < v31)
  {
    v21 = 0xFFFFFFFFLL;
  }

  else
  {
    v21 = 1;
  }

  if (!v32)
  {
    return v21;
  }

  v33 = *a1[7];
  v34 = *a2[7];
  if (v33 < v34)
  {
    v35 = -1;
  }

  else
  {
    v35 = 1;
  }

  if (v33 == v34)
  {
    return 0;
  }

  else
  {
    return v35;
  }
}

char *sub_CB1B50(uint64_t a1, char *a2, char *a3, uint64_t a4)
{
  if (a1 == a2)
  {
    return a3;
  }

  v6 = a2;
  v8 = &a2[-a1] >> 5;
  if (v8 >= 2)
  {
    v9 = (v8 - 2) >> 1;
    v10 = v9 + 1;
    v11 = (a1 + 32 * v9);
    do
    {
      sub_CB1EC8(a1, a4, v8, v11);
      v11 -= 4;
      --v10;
    }

    while (v10);
  }

  v12 = v6;
  if (v6 != a3)
  {
    v13 = v6 + 20;
    do
    {
      v16 = v13 - 20;
      *&v59 = v13 - 20;
      *(&v59 + 1) = v13 - 12;
      *&v60 = v13;
      *(&v60 + 1) = v13 + 4;
      v61 = v13 + 8;
      v62 = v13 + 9;
      v63 = v13 + 10;
      v64 = v13 + 11;
      v58[0] = a1;
      v58[1] = (a1 + 8);
      v58[2] = (a1 + 20);
      v58[3] = (a1 + 24);
      v58[4] = (a1 + 28);
      v58[5] = (a1 + 29);
      v58[6] = (a1 + 30);
      v58[7] = (a1 + 31);
      if ((sub_CB19B4(&v59, v58) & 0x80) != 0)
      {
        v18 = *v16;
        v17 = *(v13 - 4);
        v19 = *(a1 + 16);
        *v16 = *a1;
        *(v13 - 4) = v19;
        *a1 = v18;
        *(a1 + 16) = v17;
        sub_CB1EC8(a1, a4, v8, a1);
      }

      v14 = v13 + 32;
      v15 = v13 + 12;
      v13 += 32;
    }

    while (v15 != a3);
    v12 = v14 - 20;
  }

  if (v8 < 2)
  {
    return v12;
  }

  while (2)
  {
    v25 = 0;
    v26 = *(a1 + 16);
    v59 = *a1;
    v60 = v26;
    v27 = a1;
    do
    {
      v29 = v27;
      v30 = &v27[32 * v25];
      v27 = v30 + 32;
      v31 = 2 * v25;
      v25 = (2 * v25) | 1;
      v32 = v31 + 2;
      if (v32 < v8)
      {
        v33 = v30 + 64;
        v34 = *(v30 + 8);
        v35 = *(v30 + 9);
        v36 = HIDWORD(v34);
        v37 = v35 == HIDWORD(v34);
        v38 = v35 < HIDWORD(v34);
        if (v37)
        {
          v38 = *(v30 + 8) < v34;
        }

        if (v38)
        {
LABEL_20:
          v27 = v33;
          v25 = v32;
          goto LABEL_21;
        }

        v39 = v34 < *v27;
        v37 = v36 == HIDWORD(*v27);
        v40 = v36 < HIDWORD(*v27);
        if (!v37)
        {
          v39 = v40;
        }

        if (!v39)
        {
          v41 = *(v30 + 18);
          v42 = *(v30 + 10);
          if (v42 < v41)
          {
            goto LABEL_20;
          }

          if (v42 == v41)
          {
            v43 = *(v30 + 11);
            if (v43 != -1)
            {
              v44 = *(v30 + 19);
              if (v43 < v44 || v43 == v44 && *(v30 + 12) < *(v30 + 20))
              {
                goto LABEL_20;
              }
            }
          }

          if (v41 >= v42)
          {
            v45 = *(v30 + 19);
            if (v45 == -1 || (v46 = *(v30 + 11), v45 >= v46) && (v45 != v46 || *(v30 + 20) >= *(v30 + 12)))
            {
              v47 = *(v30 + 13);
              v48 = *(v30 + 21);
              v37 = v47 == v48;
              v49 = v47 < v48;
              if (v37 && (v50 = *(v30 + 14), v51 = *(v30 + 22), v37 = v50 == v51, v49 = v50 < v51, v37) && (v52 = v30[60], v53 = v30[92], v37 = v52 == v53, v49 = v52 < v53, v37) && (v54 = v30[61], v55 = v30[93], v37 = v54 == v55, v49 = v54 < v55, v37) && (v56 = v30[62], v57 = v30[94], v37 = v56 == v57, v49 = v56 < v57, v37))
              {
                if (v30[63] < v30[95])
                {
                  goto LABEL_20;
                }
              }

              else
              {
                if (!v49)
                {
                  v33 = v30 + 32;
                }

                v27 = v33;
                if (v49)
                {
                  goto LABEL_20;
                }
              }
            }
          }
        }
      }

LABEL_21:
      v28 = *(v27 + 1);
      *v29 = *v27;
      *(v29 + 1) = v28;
    }

    while (v25 <= ((v8 - 2) >> 1));
    v6 -= 32;
    if (v27 == v6)
    {
      v24 = v60;
      *v27 = v59;
      *(v27 + 1) = v24;
      v23 = v8-- <= 2;
      if (!v23)
      {
        continue;
      }
    }

    else
    {
      v21 = *(v6 + 1);
      *v27 = *v6;
      *(v27 + 1) = v21;
      v22 = v60;
      *v6 = v59;
      *(v6 + 1) = v22;
      sub_CB21A4(a1, (v27 + 32), a4, &v27[-a1 + 32] >> 5);
      v23 = v8-- <= 2;
      if (!v23)
      {
        continue;
      }
    }

    return v12;
  }
}

double sub_CB1EC8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v44 = v4;
    v45 = v5;
    v8 = v6 >> 1;
    if ((v6 >> 1) >= (a4 - a1) >> 5)
    {
      v10 = (a4 - a1) >> 4;
      v11 = v10 + 1;
      v12 = a1 + 32 * (v10 + 1);
      v13 = v10 + 2;
      if (v10 + 2 < a3)
      {
        v36 = (a1 + 32 * (v10 + 1));
        v37 = v12 + 8;
        v38 = v12 + 20;
        v39 = v12 + 24;
        v40 = v12 + 28;
        v41 = v12 + 29;
        v42 = v12 + 30;
        v43 = v12 + 31;
        v28 = (v12 + 32);
        v29 = (v12 + 40);
        v30 = (v12 + 52);
        v31 = (v12 + 56);
        v32 = (v12 + 60);
        v33 = (v12 + 61);
        v34 = (v12 + 62);
        v35 = (v12 + 63);
        v14 = a4;
        v15 = sub_CB19B4(&v36, &v28);
        a4 = v14;
        if (v15 < 0)
        {
          v12 += 32;
          v11 = v13;
        }
      }

      v36 = v12;
      v37 = v12 + 8;
      v38 = v12 + 20;
      v39 = v12 + 24;
      v40 = v12 + 28;
      v41 = v12 + 29;
      v42 = v12 + 30;
      v43 = v12 + 31;
      v28 = a4;
      v29 = (a4 + 1);
      v30 = a4 + 20;
      v31 = (a4 + 3);
      v32 = a4 + 28;
      v33 = a4 + 29;
      v34 = a4 + 30;
      v35 = a4 + 31;
      v16 = a4;
      if ((sub_CB19B4(&v36, &v28) & 0x80) == 0)
      {
        v18 = v16;
        v19 = *(v16 + 1);
        v26 = *v16;
        v27 = v19;
        do
        {
          v21 = v12;
          v22 = *(v12 + 16);
          *v18 = *v12;
          *(v18 + 1) = v22;
          if (v8 < v11)
          {
            break;
          }

          v23 = (2 * v11) | 1;
          v12 = a1 + 32 * v23;
          v24 = 2 * v11 + 2;
          if (v24 < a3)
          {
            v36 = (a1 + 32 * v23);
            v37 = v12 + 8;
            v38 = v12 + 20;
            v39 = v12 + 24;
            v40 = v12 + 28;
            v41 = v12 + 29;
            v42 = v12 + 30;
            v43 = v12 + 31;
            v28 = (v12 + 32);
            v29 = (v12 + 40);
            v30 = (v12 + 52);
            v31 = (v12 + 56);
            v32 = (v12 + 60);
            v33 = (v12 + 61);
            v34 = (v12 + 62);
            v35 = (v12 + 63);
            if ((sub_CB19B4(&v36, &v28) & 0x80u) != 0)
            {
              v12 += 32;
              v23 = v24;
            }
          }

          v36 = v12;
          v37 = v12 + 8;
          v38 = v12 + 20;
          v39 = v12 + 24;
          v40 = v12 + 28;
          v41 = v12 + 29;
          v42 = v12 + 30;
          v43 = v12 + 31;
          v28 = &v26;
          v29 = &v26 + 8;
          v30 = &v27 + 4;
          v31 = &v27 + 8;
          v32 = &v27 + 12;
          v33 = &v27 + 13;
          v34 = &v27 + 14;
          v35 = &v27 + 15;
          v20 = sub_CB19B4(&v36, &v28);
          v18 = v21;
          v11 = v23;
        }

        while ((v20 & 0x80) == 0);
        result = *&v26;
        v25 = v27;
        *v21 = v26;
        *(v21 + 1) = v25;
      }
    }
  }

  return result;
}

double sub_CB21A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a4 - 2;
  if (a4 >= 2)
  {
    v34 = v4;
    v35 = v5;
    v8 = v6 >> 1;
    v9 = a1 + 32 * (v6 >> 1);
    v26 = v9;
    v27 = v9 + 8;
    v10 = (a2 - 32);
    v28 = v9 + 20;
    v29 = v9 + 24;
    v30 = v9 + 28;
    v31 = v9 + 29;
    v32 = v9 + 30;
    v33 = v9 + 31;
    v18 = (a2 - 32);
    v19 = (a2 - 24);
    v20 = (a2 - 12);
    v21 = (a2 - 8);
    v22 = (a2 - 4);
    v23 = (a2 - 3);
    v24 = (a2 - 2);
    v25 = (a2 - 1);
    if ((sub_CB19B4(&v26, &v18) & 0x80) != 0)
    {
      v12 = v10[1];
      v16 = *v10;
      v17 = v12;
      do
      {
        v13 = v9;
        v14 = *(v9 + 16);
        *v10 = *v9;
        v10[1] = v14;
        if (!v8)
        {
          break;
        }

        v8 = (v8 - 1) >> 1;
        v9 = a1 + 32 * v8;
        v26 = v9;
        v27 = v9 + 8;
        v28 = v9 + 20;
        v29 = v9 + 24;
        v30 = v9 + 28;
        v31 = v9 + 29;
        v32 = v9 + 30;
        v33 = v9 + 31;
        v18 = &v16;
        v19 = &v16 + 8;
        v20 = &v17 + 4;
        v21 = &v17 + 8;
        v22 = &v17 + 12;
        v23 = &v17 + 13;
        v24 = &v17 + 14;
        v25 = &v17 + 15;
        v10 = v13;
      }

      while ((sub_CB19B4(&v26, &v18) & 0x80) != 0);
      result = *&v16;
      v15 = v17;
      *v13 = v16;
      v13[1] = v15;
    }
  }

  return result;
}

unint64_t sub_CB231C(uint64_t a1, void *a2, unsigned int a3, signed int a4)
{
  a2[4] = a2[3] + 16 * a3;
  v5 = -1431655765 * ((a2[9] - a2[7]) >> 2);
  if (!v5)
  {
    goto LABEL_52;
  }

  v8 = 0;
  v9 = a2[11];
  v10 = 4 * v9;
  while (1)
  {
    v11 = sub_A5706C((a1 + 4136), v9);
    v12 = &v11[-*v11];
    if (*v12 < 5u)
    {
      v13 = 0;
    }

    else
    {
      v13 = *(v12 + 2);
      if (v13)
      {
        v13 += &v11[*&v11[v13]];
      }
    }

    v14 = (v13 + v10 + 4 + *(v13 + v10 + 4));
    v15 = (v14 - *v14);
    if (*v15 >= 7u && (v16 = v15[3]) != 0)
    {
      v17 = (v14 + v16 + *(v14 + v16));
    }

    else
    {
      v17 = 0;
    }

    v18 = sub_A7AC40(v17, v8);
    v19 = sub_A7AA48((a1 + 4136), v9, v8, *(v18 + 8) - 1);
    v20 = sub_A5706C((a1 + 4136), v9);
    v21 = v20;
    v22 = &v20[-*v20];
    if (*v22 < 5u)
    {
      v23 = 0;
    }

    else
    {
      v23 = *(v22 + 2);
      if (v23)
      {
        v23 += &v20[*&v20[v23]];
      }
    }

    v24 = (v23 + v10 + 4 + *(v23 + v10 + 4));
    v25 = (v24 - *v24);
    if (*v25 >= 7u && (v26 = v25[3]) != 0)
    {
      v27 = (v24 + v26 + *(v24 + v26));
    }

    else
    {
      v27 = 0;
    }

    v28 = sub_A7AC40(v27, v8);
    v29 = (v21 - *v21);
    if (*v29 < 7u)
    {
      v30 = 0;
    }

    else
    {
      v30 = v29[3];
      if (v30)
      {
        v30 = (v30 + v21 + *(v30 + v21));
      }
    }

    if (*(sub_A7AEE0(v30, *(v28 + 4) + a3) + 4) + v19 >= a4)
    {
      break;
    }

    if (v5 == ++v8)
    {
LABEL_25:
      LODWORD(v31) = -1;
      v32 = -1;
      return v32 | (v31 << 32);
    }
  }

  v32 = -1;
  LODWORD(v31) = -1;
  if (v8 != 0xFFFFFFFFLL)
  {
    v33 = a2[11];
    v35 = a2[3];
    v34 = a2[4];
    v36 = sub_A5706C((a1 + 4136), v33);
    v37 = &v36[-*v36];
    if (*v37 < 5u)
    {
      v38 = 0;
    }

    else
    {
      v38 = *(v37 + 2);
      if (v38)
      {
        v38 += &v36[*&v36[v38]];
      }
    }

    v39 = 4 * v33;
    v40 = (v38 + v39 + 4 + *(v38 + v39 + 4));
    v41 = (v40 - *v40);
    if (*v41 >= 7u && (v42 = v41[3]) != 0)
    {
      v43 = (v40 + v42 + *(v40 + v42));
    }

    else
    {
      v43 = 0;
    }

    v44 = v34 - v35;
    v45 = *(sub_A7AC40(v43, v8) + 8);
    v46 = sub_A5706C((a1 + 4136), v33);
    v47 = v46;
    v48 = &v46[-*v46];
    if (*v48 < 5u)
    {
      v49 = 0;
    }

    else
    {
      v49 = *(v48 + 2);
      if (v49)
      {
        v49 += &v46[*&v46[v49]];
      }
    }

    v50 = v49 + v39;
    v51 = v44 >> 4;
    v52 = (v50 + 4 + *(v50 + 4));
    v53 = (v52 - *v52);
    if (*v53 >= 7u && (v54 = v53[3]) != 0)
    {
      v55 = (v52 + v54 + *(v52 + v54));
    }

    else
    {
      v55 = 0;
    }

    v56 = sub_A7AC40(v55, v8);
    v57 = (v47 - *v47);
    if (*v57 < 7u)
    {
      v59 = sub_A7AEE0(0, *(v56 + 4) + v51);
      if (v45)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v58 = v57[3];
      if (v58)
      {
        v58 = (v58 + v47 + *(v58 + v47));
      }

      v59 = sub_A7AEE0(v58, *(v56 + 4) + v51);
      if (v45)
      {
LABEL_47:
        v31 = 0;
        v60 = *(v59 + 4);
        while ((sub_A7AA48((a1 + 4136), v33, v8, v31) + v60) < a4)
        {
          if (v45 == ++v31)
          {
            goto LABEL_25;
          }
        }

        v62 = a2[11];
        v63 = sub_A7AB44((a1 + 4136), v62, v8, v31);
        v92 = sub_A7AA48((a1 + 4136), v62, v8, v31);
        v64 = sub_A5706C((a1 + 4136), v62);
        v65 = v64;
        v66 = &v64[-*v64];
        if (*v66 < 5u)
        {
          v67 = 0;
        }

        else
        {
          v67 = *(v66 + 2);
          if (v67)
          {
            v67 += &v64[*&v64[v67]];
          }
        }

        v68 = 4 * v62;
        v69 = (v67 + v68 + 4 + *(v67 + v68 + 4));
        v70 = (v69 - *v69);
        if (*v70 >= 7u && (v71 = v70[3]) != 0)
        {
          v72 = (v69 + v71 + *(v69 + v71));
        }

        else
        {
          v72 = 0;
        }

        v73 = sub_A7AC40(v72, v8);
        v74 = (v65 - *v65);
        if (*v74 < 9u)
        {
          v75 = 0;
        }

        else
        {
          v75 = v74[4];
          if (v75)
          {
            v75 = (v75 + v65 + *(v75 + v65));
          }
        }

        v76 = *sub_A7AD90(v75, (*(v73 + 8) >> 8) + v31);
        v77 = sub_A5706C((a1 + 4136), v62);
        v78 = v77;
        v79 = &v77[-*v77];
        if (*v79 < 5u)
        {
          v80 = 0;
        }

        else
        {
          v80 = *(v79 + 2);
          if (v80)
          {
            v80 += &v77[*&v77[v80]];
          }
        }

        v81 = (v80 + v68 + 4 + *(v80 + v68 + 4));
        v82 = (v81 - *v81);
        if (*v82 >= 7u && (v83 = v82[3]) != 0)
        {
          v84 = (v81 + v83 + *(v81 + v83));
        }

        else
        {
          v84 = 0;
        }

        v85 = sub_A7AC40(v84, v8);
        v86 = (v78 - *v78);
        if (*v86 < 7u)
        {
          v87 = 0;
        }

        else
        {
          v87 = v86[3];
          if (v87)
          {
            v87 = (v87 + v78 + *(v87 + v78));
          }
        }

        v88 = a4 - *(sub_A7AEE0(v87, *(v85 + 4) + a3) + 4);
        v89 = __OFSUB__(v88, v63);
        v90 = v88 - v63;
        if (!((v90 < 0) ^ v89 | (v90 == 0)))
        {
          sub_6B82E0((v90 / v76));
          sub_6B82E0(((v92 - v63) / v76));
        }

        v32 = v8;
        return v32 | (v31 << 32);
      }
    }

LABEL_52:
    v32 = -1;
    LODWORD(v31) = -1;
  }

  return v32 | (v31 << 32);
}

unint64_t sub_CB291C(uint64_t a1, void *a2, unsigned int a3, int a4)
{
  a2[4] = a2[3] + 16 * a3;
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2[9] - a2[7]) >> 2);
  if (!v4)
  {
    goto LABEL_69;
  }

  v7 = a2[11];
  v8 = 4 * v7;
  v9 = v4;
  while (1)
  {
    v10 = sub_A5706C((a1 + 4136), v7);
    v11 = &v10[-*v10];
    if (*v11 < 5u)
    {
      v12 = 0;
    }

    else
    {
      v12 = *(v11 + 2);
      if (v12)
      {
        v12 += &v10[*&v10[v12]];
      }
    }

    v13 = (v12 + v8 + 4 + *(v12 + v8 + 4));
    v14 = (v13 - *v13);
    if (*v14 >= 7u && (v15 = v14[3]) != 0)
    {
      v16 = (v13 + v15 + *(v13 + v15));
    }

    else
    {
      v16 = 0;
    }

    v17 = v9 - 1;
    sub_A7AC40(v16, v9 - 1);
    v18 = sub_A5706C((a1 + 4136), v7);
    v19 = v18;
    v20 = &v18[-*v18];
    if (*v20 < 5u)
    {
      v21 = 0;
    }

    else
    {
      v21 = *(v20 + 2);
      if (v21)
      {
        v21 += &v18[*&v18[v21]];
      }
    }

    v22 = (v21 + v8 + 4 + *(v21 + v8 + 4));
    v23 = (v22 - *v22);
    if (*v23 >= 7u && (v24 = v23[3]) != 0)
    {
      v25 = (v22 + v24 + *(v22 + v24));
    }

    else
    {
      v25 = 0;
    }

    v26 = sub_A7AC40(v25, v9 - 1);
    v27 = *v26;
    v28 = (v19 - *v19);
    if (*v28 < 9u)
    {
      v29 = 0;
    }

    else
    {
      v29 = v28[4];
      if (v29)
      {
        v29 = (v29 + v19 + *(v29 + v19));
      }
    }

    v30 = *(sub_A7AD90(v29, v26[2] >> 8) + 4);
    v31 = sub_A5706C((a1 + 4136), v7);
    v32 = v31;
    v33 = &v31[-*v31];
    if (*v33 < 5u)
    {
      v34 = 0;
    }

    else
    {
      v34 = *(v33 + 2);
      if (v34)
      {
        v34 += &v31[*&v31[v34]];
      }
    }

    v35 = (v34 + v8 + 4 + *(v34 + v8 + 4));
    v36 = (v35 - *v35);
    if (*v36 >= 7u && (v37 = v36[3]) != 0)
    {
      v38 = (v35 + v37 + *(v35 + v37));
    }

    else
    {
      v38 = 0;
    }

    v39 = sub_A7AC40(v38, v9 - 1);
    v40 = (v32 - *v32);
    if (*v40 < 7u)
    {
      v41 = 0;
    }

    else
    {
      v41 = v40[3];
      if (v41)
      {
        v41 = (v41 + v32 + *(v41 + v32));
      }
    }

    if (v30 + v27 + *sub_A7AEE0(v41, *(v39 + 4) + a3) <= a4)
    {
      break;
    }

    if (!--v9)
    {
      goto LABEL_69;
    }
  }

  if (!v9)
  {
    goto LABEL_69;
  }

  v42 = a2[11];
  v44 = a2[3];
  v43 = a2[4];
  v45 = sub_A5706C((a1 + 4136), v42);
  v46 = &v45[-*v45];
  if (*v46 < 5u)
  {
    v47 = 0;
  }

  else
  {
    v47 = *(v46 + 2);
    if (v47)
    {
      v47 += &v45[*&v45[v47]];
    }
  }

  v48 = 4 * v42;
  v49 = (v47 + v48 + 4 + *(v47 + v48 + 4));
  v50 = (v49 - *v49);
  if (*v50 >= 7u && (v51 = v50[3]) != 0)
  {
    v52 = (v49 + v51 + *(v49 + v51));
  }

  else
  {
    v52 = 0;
  }

  v53 = v43 - v44;
  v54 = *(sub_A7AC40(v52, v9 - 1) + 8);
  v55 = sub_A5706C((a1 + 4136), v42);
  v56 = v55;
  v57 = &v55[-*v55];
  if (*v57 < 5u)
  {
    v58 = 0;
  }

  else
  {
    v58 = *(v57 + 2);
    if (v58)
    {
      v58 += &v55[*&v55[v58]];
    }
  }

  v59 = v58 + v48;
  v60 = v53 >> 4;
  v61 = (v59 + 4 + *(v59 + 4));
  v62 = (v61 - *v61);
  if (*v62 >= 7u && (v63 = v62[3]) != 0)
  {
    v64 = (v61 + v63 + *(v61 + v63));
  }

  else
  {
    v64 = 0;
  }

  v65 = sub_A7AC40(v64, v9 - 1);
  v66 = (v56 - *v56);
  if (*v66 < 7u)
  {
    v68 = sub_A7AEE0(0, *(v65 + 4) + v60);
    if (!v54)
    {
LABEL_69:
      v17 = -1;
      v77 = 0xFFFFFFFFLL;
      return v17 | (v77 << 32);
    }
  }

  else
  {
    v67 = v66[3];
    if (v67)
    {
      v67 = (v67 + v56 + *(v67 + v56));
    }

    v68 = sub_A7AEE0(v67, *(v65 + 4) + v60);
    if (!v54)
    {
      goto LABEL_69;
    }
  }

  v69 = *v68;
  while ((sub_A7AB44((a1 + 4136), v42, v9 - 1, v54 - 1) + v69) > a4)
  {
    if (!--v54)
    {
      goto LABEL_69;
    }
  }

  if (!v54)
  {
    goto LABEL_69;
  }

  v70 = a2[11];
  v71 = sub_A7AB44((a1 + 4136), v70, v9 - 1, v54 - 1);
  v72 = sub_A7AA48((a1 + 4136), v70, v9 - 1, v54 - 1);
  v73 = sub_A5706C((a1 + 4136), v70);
  v74 = v73;
  v75 = &v73[-*v73];
  v110 = v71;
  if (*v75 < 5u)
  {
    v76 = 0;
  }

  else
  {
    v76 = *(v75 + 2);
    if (v76)
    {
      v76 += &v73[*&v73[v76]];
    }
  }

  v79 = 4 * v70;
  v80 = (v76 + v79 + 4 + *(v76 + v79 + 4));
  v81 = (v80 - *v80);
  if (*v81 >= 7u && (v82 = v81[3]) != 0)
  {
    v83 = (v80 + v82 + *(v80 + v82));
  }

  else
  {
    v83 = 0;
  }

  v84 = sub_A7AC40(v83, v9 - 1);
  v85 = (v74 - *v74);
  v108 = v72;
  if (*v85 < 9u)
  {
    v86 = 0;
  }

  else
  {
    v86 = v85[4];
    if (v86)
    {
      v86 = (v86 + v74 + *(v86 + v74));
    }
  }

  v87 = *sub_A7AD90(v86, (*(v84 + 8) >> 8) + v54 - 1);
  v88 = sub_A5706C((a1 + 4136), v70);
  v89 = v88;
  v90 = &v88[-*v88];
  if (*v90 < 5u)
  {
    v91 = 0;
  }

  else
  {
    v91 = *(v90 + 2);
    if (v91)
    {
      v91 += &v88[*&v88[v91]];
    }
  }

  v92 = (v91 + v79 + 4 + *(v91 + v79 + 4));
  v93 = (v92 - *v92);
  if (*v93 >= 7u && (v94 = v93[3]) != 0)
  {
    v95 = (v92 + v94 + *(v92 + v94));
  }

  else
  {
    v95 = 0;
  }

  v96 = sub_A7AC40(v95, v9 - 1);
  v97 = (v89 - *v89);
  if (*v97 < 7u)
  {
    v98 = 0;
  }

  else
  {
    v98 = v97[3];
    if (v98)
    {
      v98 = (v98 + v89 + *(v98 + v89));
    }
  }

  v99 = sub_A7AEE0(v98, *(v96 + 4) + a3);
  v100 = sub_6B82E0(((a4 - v110 - *v99) / v87 + 1));
  if (v100 >= sub_6B82E0(((v108 - v110) / v87)))
  {
    v101 = sub_A5706C((a1 + 4136), v70);
    v102 = &v101[-*v101];
    if (*v102 < 5u)
    {
      v103 = 0;
    }

    else
    {
      v103 = *(v102 + 2);
      if (v103)
      {
        v103 += &v101[*&v101[v103]];
      }
    }

    v104 = (v103 + v79 + 4 + *(v103 + v79 + 4));
    v105 = (v104 - *v104);
    if (*v105 >= 7u && (v106 = v105[3]) != 0)
    {
      v107 = (v104 + v106 + *(v104 + v106));
    }

    else
    {
      v107 = 0;
    }

    if (*(sub_A7AC40(v107, v9 - 1) + 8) == v54)
    {
      v17 = v9;
      v77 = 0;
    }

    else
    {
      v77 = v54;
    }
  }

  else
  {
    v77 = v54 - 1;
  }

  return v17 | (v77 << 32);
}

void sub_CB3064()
{
  v0 = __chkstk_darwin();
  v2 = v0[1];
  *&v17 = *v0;
  *(&v17 + 1) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = v1[1];
  *&v8 = *v1;
  *(&v8 + 1) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = v1[3];
  v9 = v1[2];
  v10 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = v1[5];
  v11 = v1[4];
  v12 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = v1[7];
  v13 = v1[6];
  v14 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = v1[9];
  v15 = v1[8];
  v16 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  sub_A30418(v18, &v17, 1, &v8);
}

void sub_CB39A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62, uint64_t a63)
{
  sub_1F1A8(&a10);
  sub_CA1E18(&a12);
  sub_CA1E18(&a17);
  sub_CA1E18(&a22);
  sub_CA1F48(&a27);
  sub_C4F39C(&a33);
  sub_39AFC(&a39);
  sub_39AFC(&a44);
  sub_C4D624(&a49);
  sub_5EC8BC(&a62);
  sub_5EC8BC(&a67);
  sub_C49884(&STACK[0x200]);
  sub_506524(&STACK[0x278]);
  _Unwind_Resume(a1);
}

void sub_CB3AB8(void *a1, int8x8_t **a2, void **a3)
{
  if (!sub_7E7E4(1u))
  {
    goto LABEL_18;
  }

  sub_19594F8(v118);
  sub_4A5C(v118, "Computing affected trip sequences in stop patterns from snapshot with ", 70);
  v5 = std::ostream::operator<<();
  sub_4A5C(v5, " trip updates", 13);
  if ((v130 & 0x10) != 0)
  {
    v7 = v129;
    if (v129 < v123)
    {
      v129 = v123;
      v7 = v123;
    }

    v8 = v122;
    v6 = v7 - v122;
    if ((v7 - v122) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_191;
    }
  }

  else
  {
    if ((v130 & 8) == 0)
    {
      v6 = 0;
      BYTE7(v112) = 0;
LABEL_13:
      *(&__dst + v6) = 0;
      sub_7E854(&__dst, 1u);
      if (SBYTE7(v112) < 0)
      {
        operator delete(__dst);
      }

      if (v128 < 0)
      {
        operator delete(__p);
      }

      std::locale::~locale(&v119);
      std::ostream::~ostream();
      std::ios::~ios();
LABEL_18:
      sub_7E9A4(v117);
      v114 = 0;
      v115 = 0;
      v116 = 0;
      __dst = 0u;
      v112 = 0u;
      v113 = 1065353216;
      v9 = (*a2)[4];
      if (v9)
      {
        v10 = 0;
        while (1)
        {
          v11 = *(*&v9 + 40);
          if (v11)
          {
            v12 = *(*&v9 + 44);
            v13 = v11 << 32;
            if (v12 == -1)
            {
              v13 = 0;
              v12 = 0xFFFFFFFFLL;
            }
          }

          else
          {
            v13 = 0;
            v12 = 0xFFFFFFFFLL;
          }

          v14 = v12 | v13;
          v15 = *(*&v9 + 48);
          v109 = v12 | v13;
          v110 = v15;
          if (!*a3)
          {
            goto LABEL_50;
          }

          if (!sub_C175B0(*a3, &v109))
          {
            break;
          }

          v16 = sub_C175B0(*a3, &v109);
          v17 = v16;
          if (!v16)
          {
            sub_49EC("unordered_map::at: key not found");
          }

          v19 = v16[4];
          for (i = v16[5]; v19 != i; v19 += 12)
          {
            while (1)
            {
              sub_CBA8AC(a1, v19, v118);
              v20 = v115;
              if (v115 >= v116)
              {
                break;
              }

              *v115 = 0;
              v20[1] = 0;
              v20[2] = 0;
              *v20 = *v118;
              v20[2] = v119.__locale_;
              v115 = v20 + 3;
              v19 += 12;
              if (v19 == i)
              {
                goto LABEL_47;
              }
            }

            v21 = sub_C4E6A8(&v114, v118);
            v22 = v118[0];
            v115 = v21;
            if (v118[0])
            {
              v23 = v118[1];
              v24 = v118[0];
              if (v118[1] != v118[0])
              {
                do
                {
                  v25 = *(v23 - 3);
                  if (v25)
                  {
                    *(v23 - 2) = v25;
                    operator delete(v25);
                  }

                  v26 = *(v23 - 6);
                  if (v26)
                  {
                    *(v23 - 5) = v26;
                    operator delete(v26);
                  }

                  v27 = *(v23 - 9);
                  if (v27)
                  {
                    *(v23 - 8) = v27;
                    operator delete(v27);
                  }

                  v23 -= 128;
                }

                while (v23 != v22);
                v24 = v118[0];
              }

              v118[1] = v22;
              operator delete(v24);
            }
          }

LABEL_47:
          v118[0] = &v109;
          v28 = sub_CBCA00(&__dst, &v109);
          if (v28 != v17)
          {
            sub_35354C(v28 + 4, v17[4], v17[5], 0xAAAAAAAAAAAAAAABLL * ((v17[5] - v17[4]) >> 2));
          }

LABEL_21:
          v9 = **&v9;
          if (!*&v9)
          {
            goto LABEL_172;
          }
        }

        v14 = v109;
        v15 = v110;
LABEL_50:
        sub_CBB360(v118, a1, v14, v15, 0, 1);
        v29 = __p;
        v30 = v126;
        while (v29 < v30)
        {
          v107 = __ROR8__(*v29, 32);
          v108 = *(v29 + 2);
          sub_CBA8AC(a1, &v107, v105);
          v31 = v115;
          if (v115 >= v116)
          {
            v32 = sub_C4E6A8(&v114, v105);
            v33 = v105[0];
            v115 = v32;
            if (v105[0])
            {
              v34 = v105[1];
              v35 = v105[0];
              if (v105[1] != v105[0])
              {
                do
                {
                  v36 = *(v34 - 3);
                  if (v36)
                  {
                    *(v34 - 2) = v36;
                    operator delete(v36);
                  }

                  v37 = *(v34 - 6);
                  if (v37)
                  {
                    *(v34 - 5) = v37;
                    operator delete(v37);
                  }

                  v38 = *(v34 - 9);
                  if (v38)
                  {
                    *(v34 - 8) = v38;
                    operator delete(v38);
                  }

                  v34 -= 128;
                }

                while (v34 != v33);
                v35 = v105[0];
              }

              v105[1] = v33;
              operator delete(v35);
              v32 = v115;
            }
          }

          else
          {
            *v115 = 0;
            v31[1] = 0;
            v31[2] = 0;
            *v31 = *v105;
            v31[2] = v106;
            v32 = (v31 + 3);
            v115 = v31 + 3;
          }

          v40 = *(v32 - 24);
          for (j = *(v32 - 16); v40 != j; v40 += 128)
          {
            v43 = (*a2)[3];
            if (v43)
            {
              v44 = *(v40 + 8);
              v45 = 0xFF51AFD7ED558CCDLL * (*v40 ^ (*v40 >> 33));
              v46 = (((0xC4CEB9FE1A85EC53 * (v45 ^ (v45 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v45 ^ (v45 >> 33))) >> 33)) + 0x388152A534) ^ 0xDEADBEEF;
              v47 = (v44 + (v46 << 6) + (v46 >> 2) + 2654435769u) ^ v46;
              v48 = vcnt_s8(v43);
              v48.i16[0] = vaddlv_u8(v48);
              if (v48.u32[0] > 1uLL)
              {
                v49 = v47;
                if (v47 >= *&v43)
                {
                  v49 = v47 % *&v43;
                }
              }

              else
              {
                v49 = v47 & (*&v43 - 1);
              }

              v50 = *(*&(*a2)[2] + 8 * v49);
              if (v50)
              {
                v51 = *v50;
                if (v51)
                {
                  v52 = __ROR8__(*v40, 32);
                  if (v48.u32[0] < 2uLL)
                  {
                    v53 = *&v43 - 1;
                    while (1)
                    {
                      v55 = v51[1];
                      if (v47 == v55)
                      {
                        if (*(v51 + 4) == v52 && *(v51 + 20) == __PAIR64__(v44, HIDWORD(v52)))
                        {
                          goto LABEL_99;
                        }
                      }

                      else if ((v55 & v53) != v49)
                      {
                        goto LABEL_76;
                      }

                      v51 = *v51;
                      if (!v51)
                      {
                        goto LABEL_76;
                      }
                    }
                  }

                  do
                  {
                    v54 = v51[1];
                    if (v47 == v54)
                    {
                      if (*(v51 + 4) == v52 && *(v51 + 20) == __PAIR64__(v44, HIDWORD(v52)))
                      {
LABEL_99:
                        v105[0] = *v40;
                        LODWORD(v105[1]) = v44;
                        v131 = v105;
                        v56 = sub_CBCDD8(&__dst, v105);
                        v57 = v56;
                        v58 = v56[5];
                        v59 = v56[6];
                        if (v58 < v59)
                        {
                          *v58 = v107;
                          *(v58 + 8) = v108;
                          v42 = v58 + 12;
                        }

                        else
                        {
                          v60 = v56[4];
                          v61 = 0xAAAAAAAAAAAAAAABLL * ((v58 - v60) >> 2) + 1;
                          if (v61 > 0x1555555555555555)
                          {
                            sub_1794();
                          }

                          v62 = 0xAAAAAAAAAAAAAAABLL * ((v59 - v60) >> 2);
                          if (2 * v62 > v61)
                          {
                            v61 = 2 * v62;
                          }

                          if (v62 >= 0xAAAAAAAAAAAAAAALL)
                          {
                            v63 = 0x1555555555555555;
                          }

                          else
                          {
                            v63 = v61;
                          }

                          if (v63)
                          {
                            if (v63 <= 0x1555555555555555)
                            {
                              operator new();
                            }

                            sub_1808();
                          }

                          v64 = 4 * ((v58 - v60) >> 2);
                          *v64 = v107;
                          *(v64 + 8) = v108;
                          v42 = v64 + 12;
                          v65 = (v64 - (v58 - v60));
                          memcpy(v65, v60, v58 - v60);
                          v57[4] = v65;
                          v57[5] = v42;
                          v57[6] = 0;
                          if (v60)
                          {
                            operator delete(v60);
                          }
                        }

                        v57[5] = v42;
                        break;
                      }
                    }

                    else
                    {
                      if (v54 >= *&v43)
                      {
                        v54 %= *&v43;
                      }

                      if (v54 != v49)
                      {
                        break;
                      }
                    }

                    v51 = *v51;
                  }

                  while (v51);
                }
              }
            }

LABEL_76:
            ;
          }

          v30 = v126;
          v29 = __p + 12;
          __p = v29;
          if (v29 == v126)
          {
            v41 = v123 + 2;
            v123 = v41;
            if (v41 >= v124)
            {
              break;
            }

            while (1)
            {
              v29 = *v41;
              v30 = v41[1];
              if (*v41 != v30)
              {
                break;
              }

              v41 += 2;
              v123 = v41;
              if (v41 >= v124)
              {
                goto LABEL_20;
              }
            }

            __p = *v41;
            v126 = v30;
            if (v29 < v30)
            {
              goto LABEL_116;
            }
          }

          else if (v29 < v126)
          {
            do
            {
LABEL_116:
              if ((v127 & 1) == 0)
              {
                v66 = v118[0];
                v67 = *v29;
                v68 = *(v118[0] + 517);
                if (sub_68312C(v68 + 3896))
                {
                  if (*(v68 + 3944))
                  {
                    if ((atomic_load_explicit(&qword_27339C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27339C8))
                    {
                      v94 = sub_A57824(-85.0, 0.0);
                      sub_58168(v94 >> 17, v94 >> 49);
                      dword_27339C0 = v95 | 0x40000000;
                      __cxa_guard_release(&qword_27339C8);
                    }

                    v69 = __ROR8__(v67, 32);
                    v70 = v66[517];
                    if (dword_27339C0 == HIDWORD(v69))
                    {
                      if (!sub_68312C(v70 + 3896) || !*(v70 + 3944))
                      {
LABEL_194:
                        exception = __cxa_allocate_exception(0x40uLL);
                        v103 = sub_2D390(exception, "Encountered reference to invalid journey planner incident data.", 0x3FuLL);
                      }
                    }

                    else
                    {
                      v71 = *(v70 + 3944);
                      v72 = v71[1];
                      if (v72)
                      {
                        v73 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v69 ^ (v69 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v69 ^ (v69 >> 33))) >> 33));
                        v74 = v73 ^ (v73 >> 33);
                        v75 = vcnt_s8(v72);
                        v75.i16[0] = vaddlv_u8(v75);
                        if (v75.u32[0] > 1uLL)
                        {
                          v76 = v74;
                          if (v74 >= *&v72)
                          {
                            v76 = v74 % *&v72;
                          }
                        }

                        else
                        {
                          v76 = (*&v72 - 1) & v74;
                        }

                        v77 = *(*v71 + 8 * v76);
                        if (v77)
                        {
                          v78 = *v77;
                          if (v78)
                          {
                            if (v75.u32[0] < 2uLL)
                            {
                              v79 = *&v72 - 1;
                              while (1)
                              {
                                v83 = v78[1];
                                if (v74 == v83)
                                {
                                  if (*(v78 + 5) == HIDWORD(v69) && *(v78 + 4) == v69)
                                  {
                                    goto LABEL_160;
                                  }
                                }

                                else if ((v83 & v79) != v76)
                                {
                                  goto LABEL_150;
                                }

                                v78 = *v78;
                                if (!v78)
                                {
                                  goto LABEL_150;
                                }
                              }
                            }

                            do
                            {
                              v81 = v78[1];
                              if (v74 == v81)
                              {
                                if (*(v78 + 5) == HIDWORD(v69) && *(v78 + 4) == v69)
                                {
                                  goto LABEL_160;
                                }
                              }

                              else
                              {
                                if (v81 >= *&v72)
                                {
                                  v81 %= *&v72;
                                }

                                if (v81 != v76)
                                {
                                  break;
                                }
                              }

                              v78 = *v78;
                            }

                            while (v78);
                          }
                        }
                      }
                    }
                  }
                }
              }

LABEL_150:
              v84 = v118[0];
              if (*(v118[0] + 16) != 1)
              {
                break;
              }

              v85 = *__p;
              if ((atomic_load_explicit(&qword_27339C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27339C8))
              {
                v90 = sub_A57824(-85.0, 0.0);
                sub_58168(v90 >> 17, v90 >> 49);
                dword_27339C0 = v91 | 0x40000000;
                __cxa_guard_release(&qword_27339C8);
              }

              if (dword_27339C0 == v85)
              {
                v86 = *(v84 + 517);
                if (!sub_68312C(v86 + 3896) || !*(v86 + 3944))
                {
                  goto LABEL_194;
                }

                if (*(*(v84 + 517) + 3944))
                {
                  break;
                }
              }

              if ((atomic_load_explicit(&qword_27339D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27339D8))
              {
                v92 = sub_A57824(-85.0, -13.0);
                sub_58168(v92 >> 17, v92 >> 49);
                dword_27339D0 = v93 | 0x40000000;
                __cxa_guard_release(&qword_27339D8);
              }

              v87 = *(v84 + 517);
              if (dword_27339D0 == v85)
              {
                if (v87[497])
                {
                  break;
                }
              }

              if (sub_2D5204(*v87))
              {
                break;
              }

LABEL_160:
              v88 = v126;
              v29 = __p + 12;
              __p = v29;
              if (v29 == v126)
              {
                v89 = v123 + 2;
                v123 = v89;
                if (v89 >= v124)
                {
                  break;
                }

                while (1)
                {
                  v29 = *v89;
                  v88 = v89[1];
                  if (*v89 != v88)
                  {
                    break;
                  }

                  v89 += 2;
                  v123 = v89;
                  if (v89 >= v124)
                  {
                    goto LABEL_20;
                  }
                }

                __p = *v89;
                v126 = v88;
              }
            }

            while (v29 < v88);
            v29 = __p;
            v30 = v126;
          }
        }

LABEL_20:
        ++v10;
        goto LABEL_21;
      }

LABEL_172:
      sub_7EA60(v117);
      if (!sub_7E7E4(1u))
      {
LABEL_189:
        operator new();
      }

      sub_19594F8(v118);
      sub_4A5C(v118, "Computed ", 9);
      v96 = std::ostream::operator<<();
      sub_4A5C(v96, " trip sequences in ", 19);
      v97 = std::ostream::operator<<();
      sub_4A5C(v97, " ms (", 5);
      v98 = std::ostream::operator<<();
      sub_4A5C(v98, " new trips since previous snapshot)", 35);
      if ((v130 & 0x10) != 0)
      {
        v100 = v129;
        if (v129 < v123)
        {
          v129 = v123;
          v100 = v123;
        }

        v101 = v122;
        v99 = v100 - v122;
        if ((v100 - v122) > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_193;
        }
      }

      else
      {
        if ((v130 & 8) == 0)
        {
          v99 = 0;
          HIBYTE(v106) = 0;
LABEL_184:
          *(v105 + v99) = 0;
          sub_7E854(v105, 1u);
          if (SHIBYTE(v106) < 0)
          {
            operator delete(v105[0]);
          }

          if (v128 < 0)
          {
            operator delete(__p);
          }

          std::locale::~locale(&v119);
          std::ostream::~ostream();
          std::ios::~ios();
          goto LABEL_189;
        }

        v101 = v120;
        v99 = v121 - v120;
        if ((v121 - v120) > 0x7FFFFFFFFFFFFFF7)
        {
LABEL_193:
          sub_3244();
        }
      }

      if (v99 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v106) = v99;
      if (v99)
      {
        memmove(v105, v101, v99);
      }

      goto LABEL_184;
    }

    v8 = v120;
    v6 = v121 - v120;
    if ((v121 - v120) > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_191:
      sub_3244();
    }
  }

  if (v6 >= 0x17)
  {
    operator new();
  }

  BYTE7(v112) = v6;
  if (v6)
  {
    memmove(&__dst, v8, v6);
  }

  goto LABEL_13;
}

void sub_CB4C54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, void **a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  __cxa_guard_abort(&qword_27339C8);
  v37 = a26;
  if (a26)
  {
    do
    {
      v38 = *v37;
      v39 = v37[4];
      if (v39)
      {
        v37[5] = v39;
        operator delete(v39);
      }

      operator delete(v37);
      v37 = v38;
    }

    while (v38);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a30)
  {
    sub_21E3AC0(&a30, a30);
  }

  _Unwind_Resume(a1);
}

void sub_CB4DE4(void *a1, int8x8_t **a2, void **a3)
{
  if (!sub_7E7E4(1u))
  {
LABEL_18:
    sub_7E9A4(v149);
    __dst = 0u;
    v147 = 0u;
    v148 = 1065353216;
    memset(v144, 0, sizeof(v144));
    v145 = 1065353216;
    *v141 = 0u;
    *v142 = 0u;
    v143 = 1065353216;
    v10 = (*a2)[4];
    if (!*&v10)
    {
      v136 = 0;
      v137 = 0;
      v138 = 0;
      *v133 = 0uLL;
      *v134 = 0uLL;
      v135 = 1065353216;
      goto LABEL_203;
    }

    v11 = 0;
    v12 = "trip";
    v129 = a3;
    while (1)
    {
      v13 = *(*&v10 + 40);
      if (v13)
      {
        v14 = *(*&v10 + 44);
        v15 = v13 << 32;
        if (v14 == -1)
        {
          v15 = 0;
          v14 = 0xFFFFFFFFLL;
        }

        v16 = v14 | v15;
        v17 = *(*&v10 + 48);
        v136 = v16;
        LODWORD(v137) = v17;
        v18 = *a3;
        if (!*a3)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v16 = 0xFFFFFFFFLL;
        v19 = *(*&v10 + 48);
        v136 = 0xFFFFFFFFLL;
        LODWORD(v137) = v19;
        v18 = *a3;
        if (!*a3)
        {
          goto LABEL_35;
        }
      }

      if (!sub_C175B0(v18, &v136))
      {
        v16 = v136;
LABEL_35:
        v23 = sub_3A25A8(a1[523] + 24, __ROR8__(v16, 32), 0, v12);
        v24 = (v23 - *v23);
        if (*v24 >= 7u && (v25 = v24[3]) != 0)
        {
          v26 = *(v23 + v25 + 4) | (*(v23 + v25) << 32);
        }

        else
        {
          v26 = 0xFFFFFFFFLL;
        }

        v140 = v26;
        if (!sub_A794D0(v144, &v140))
        {
          sub_BC460C(v144, &v140);
          v27 = v12;
          sub_C7FB60(v150, a1, v140, 0, 1);
          v28 = __p;
          v29 = v158;
          while (1)
          {
            while (1)
            {
              if (v28 >= v29)
              {
LABEL_20:
                v12 = v27;
                a3 = v129;
                goto LABEL_21;
              }

              v30 = __ROR8__(*v28, 32);
              v139 = v30;
              if (v141[1])
              {
                v31 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v30 ^ (v30 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v30 ^ (v30 >> 33))) >> 33));
                v32 = v31 ^ (v31 >> 33);
                v33 = vcnt_s8(v141[1]);
                v33.i16[0] = vaddlv_u8(v33);
                if (v33.u32[0] > 1uLL)
                {
                  v34 = v32;
                  if (v32 >= v141[1])
                  {
                    v34 = v32 % v141[1];
                  }
                }

                else
                {
                  v34 = v32 & (v141[1] - 1);
                }

                v35 = *(v141[0] + v34);
                if (v35)
                {
                  v36 = *v35;
                  if (v36)
                  {
                    if (v33.u32[0] < 2uLL)
                    {
                      while (1)
                      {
                        v40 = v36[1];
                        if (v32 == v40)
                        {
                          if (*(v36 + 5) == HIDWORD(v30) && *(v36 + 4) == v30)
                          {
                            goto LABEL_102;
                          }
                        }

                        else if ((v40 & (v141[1] - 1)) != v34)
                        {
                          goto LABEL_68;
                        }

                        v36 = *v36;
                        if (!v36)
                        {
                          goto LABEL_68;
                        }
                      }
                    }

                    do
                    {
                      v38 = v36[1];
                      if (v32 == v38)
                      {
                        if (*(v36 + 5) == HIDWORD(v30) && *(v36 + 4) == v30)
                        {
                          goto LABEL_102;
                        }
                      }

                      else
                      {
                        if (v38 >= v141[1])
                        {
                          v38 %= v141[1];
                        }

                        if (v38 != v34)
                        {
                          break;
                        }
                      }

                      v36 = *v36;
                    }

                    while (v36);
                  }
                }
              }

LABEL_68:
              sub_BC460C(v141, &v139);
              v41 = sub_A57920(a1 + 517, v139);
              v42 = (v41 - *v41);
              if (*v42 >= 7u)
              {
                v43 = v42[3];
                if (v43)
                {
                  v44 = *(v41 + v43 + *(v41 + v43));
                  if (v44)
                  {
                    for (i = 0; i != v44; ++i)
                    {
                      sub_A78D38(a1 + 517, v139, i, v133);
                      v46 = v133[0];
                      if (v133[0] != v133[1])
                      {
                        v47 = (*a2)[3];
                        if (v47)
                        {
                          v48 = vcnt_s8(v47);
                          v48.i16[0] = vaddlv_u8(v48);
                          v49 = *&v47 - 1;
                          v50 = v133[0];
                          while (1)
                          {
                            v52 = *v50;
                            v51 = v50[1];
                            v53 = v50[2];
                            v54 = __ROR8__(v51 | (v52 << 32), 32);
                            v55 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v54 ^ (v54 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v54 ^ (v54 >> 33))) >> 33));
                            v56 = (v53 + 2654435769 + ((((v55 ^ (v55 >> 33)) + 0x388152A534) ^ 0xDEADBEEF) << 6) + ((((v55 ^ (v55 >> 33)) + 0x388152A534) ^ 0xDEADBEEF) >> 2)) ^ ((v55 ^ (v55 >> 33)) + 0x388152A534) ^ 0xDEADBEEF;
                            if (v48.u32[0] > 1uLL)
                            {
                              v57 = v56;
                              if (v56 >= *&v47)
                              {
                                v57 = v56 % *&v47;
                              }
                            }

                            else
                            {
                              v57 = v56 & v49;
                            }

                            v58 = *(*&(*a2)[2] + 8 * v57);
                            if (v58)
                            {
                              v59 = *v58;
                              if (v59)
                              {
                                break;
                              }
                            }

LABEL_76:
                            v50 += 3;
                            if (v50 == v133[1])
                            {
                              goto LABEL_100;
                            }
                          }

                          if (v48.u32[0] < 2uLL)
                          {
                            while (1)
                            {
                              v60 = v59[1];
                              if (v56 == v60)
                              {
                                if (*(v59 + 4) == v51 && *(v59 + 20) == __PAIR64__(v53, v52))
                                {
                                  goto LABEL_99;
                                }
                              }

                              else if ((v60 & v49) != v57)
                              {
                                goto LABEL_76;
                              }

                              v59 = *v59;
                              if (!v59)
                              {
                                goto LABEL_76;
                              }
                            }
                          }

                          while (1)
                          {
                            v61 = v59[1];
                            if (v56 == v61)
                            {
                              if (*(v59 + 4) == v51 && *(v59 + 20) == __PAIR64__(v53, v52))
                              {
LABEL_99:
                                v130 = v139;
                                v131 = i;
                                sub_CBD57C(&__dst, &v130);
                                v46 = v133[0];
                                break;
                              }
                            }

                            else
                            {
                              if (v61 >= *&v47)
                              {
                                v61 %= *&v47;
                              }

                              if (v61 != v57)
                              {
                                goto LABEL_76;
                              }
                            }

                            v59 = *v59;
                            if (!v59)
                            {
                              goto LABEL_76;
                            }
                          }
                        }
                      }

LABEL_100:
                      if (v46)
                      {
                        v133[1] = v46;
                        operator delete(v46);
                      }
                    }
                  }
                }
              }

LABEL_102:
              v29 = v158;
              v28 = __p + 12;
              __p = v28;
              if (v28 != v158)
              {
                break;
              }

              v63 = v155 + 16;
              v155 = v63;
              if (v63 >= v156)
              {
                goto LABEL_20;
              }

              while (1)
              {
                v28 = *v63;
                v29 = *(v63 + 8);
                if (*v63 != v29)
                {
                  break;
                }

                v63 += 16;
                v155 = v63;
                if (v63 >= v156)
                {
                  goto LABEL_20;
                }
              }

              __p = *v63;
              v158 = v29;
              if (v28 < v29)
              {
                goto LABEL_104;
              }
            }

            if (v28 < v158)
            {
LABEL_104:
              v62 = v11;
              do
              {
                if ((v159 & 1) == 0)
                {
                  v64 = v150[0];
                  v65 = *v28;
                  v66 = *(v150[0] + 517);
                  if (sub_68312C(v66 + 3896))
                  {
                    if (*(v66 + 3944))
                    {
                      if ((atomic_load_explicit(&qword_27339C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27339C8))
                      {
                        v80 = sub_A57824(-85.0, 0.0);
                        sub_58168(v80 >> 17, v80 >> 49);
                        dword_27339C0 = v81 | 0x40000000;
                        __cxa_guard_release(&qword_27339C8);
                      }

                      v67 = __ROR8__(v65, 32);
                      v68 = v64[517];
                      if (dword_27339C0 == HIDWORD(v67))
                      {
                        if (!sub_68312C(v68 + 3896) || !*(v68 + 3944))
                        {
LABEL_225:
                          exception = __cxa_allocate_exception(0x40uLL);
                          v128 = sub_2D390(exception, "Encountered reference to invalid journey planner incident data.", 0x3FuLL);
                        }
                      }

                      else
                      {
                        v69 = *(v68 + 3944);
                        v133[0] = v67;
                        if (sub_A794D0(v69, v133))
                        {
                          goto LABEL_130;
                        }
                      }
                    }
                  }
                }

                v70 = v150[0];
                if (*(v150[0] + 16) != 1)
                {
                  break;
                }

                v71 = *__p;
                if ((atomic_load_explicit(&qword_27339C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27339C8))
                {
                  v76 = sub_A57824(-85.0, 0.0);
                  sub_58168(v76 >> 17, v76 >> 49);
                  dword_27339C0 = v77 | 0x40000000;
                  __cxa_guard_release(&qword_27339C8);
                }

                if (dword_27339C0 == v71)
                {
                  v72 = *(v70 + 517);
                  if (!sub_68312C(v72 + 3896) || !*(v72 + 3944))
                  {
                    goto LABEL_225;
                  }

                  if (*(*(v70 + 517) + 3944))
                  {
                    break;
                  }
                }

                if ((atomic_load_explicit(&qword_27339D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27339D8))
                {
                  v78 = sub_A57824(-85.0, -13.0);
                  sub_58168(v78 >> 17, v78 >> 49);
                  dword_27339D0 = v79 | 0x40000000;
                  __cxa_guard_release(&qword_27339D8);
                }

                v73 = *(v70 + 517);
                if (dword_27339D0 == v71)
                {
                  if (v73[497])
                  {
                    break;
                  }
                }

                if (sub_2D5204(*v73))
                {
                  break;
                }

LABEL_130:
                v74 = v158;
                v28 = __p + 12;
                __p = v28;
                if (v28 == v158)
                {
                  v75 = v155 + 16;
                  v155 = v75;
                  if (v75 >= v156)
                  {
                    break;
                  }

                  v11 = v62;
                  while (1)
                  {
                    v28 = *v75;
                    v74 = *(v75 + 8);
                    if (*v75 != v74)
                    {
                      break;
                    }

                    v75 += 16;
                    v155 = v75;
                    if (v75 >= v156)
                    {
                      goto LABEL_20;
                    }
                  }

                  __p = *v75;
                  v158 = v74;
                }
              }

              while (v28 < v74);
              v28 = __p;
              v29 = v158;
              v11 = v62;
            }
          }
        }

LABEL_21:
        ++v11;
        goto LABEL_22;
      }

      v20 = sub_C175B0(*a3, &v136);
      if (!v20)
      {
        sub_49EC("unordered_map::at: key not found");
      }

      v22 = v20[4];
      for (j = v20[5]; v22 != j; v22 = (v22 + 12))
      {
        sub_CBD1B0(&__dst, v22);
      }

LABEL_22:
      v10 = **&v10;
      if (!*&v10)
      {
        v82 = v147;
        v136 = 0;
        v137 = 0;
        v138 = 0;
        *v133 = 0u;
        *v134 = 0u;
        v135 = 1065353216;
        if (v147)
        {
          while (1)
          {
            sub_CBA8AC(a1, (v82 + 2), v150);
            v83 = v137;
            if (v137 >= v138)
            {
              v84 = sub_C4E6A8(&v136, v150);
              v85 = v150[0];
              v137 = v84;
              if (v150[0])
              {
                v86 = v150[1];
                v87 = v150[0];
                if (v150[1] != v150[0])
                {
                  do
                  {
                    v88 = *(v86 - 3);
                    if (v88)
                    {
                      *(v86 - 2) = v88;
                      operator delete(v88);
                    }

                    v89 = *(v86 - 6);
                    if (v89)
                    {
                      *(v86 - 5) = v89;
                      operator delete(v89);
                    }

                    v90 = *(v86 - 9);
                    if (v90)
                    {
                      *(v86 - 8) = v90;
                      operator delete(v90);
                    }

                    v86 -= 128;
                  }

                  while (v86 != v85);
                  v87 = v150[0];
                }

                v150[1] = v85;
                operator delete(v87);
                v84 = v137;
              }
            }

            else
            {
              *v137 = 0;
              v83[1] = 0;
              v83[2] = 0;
              *v83 = *v150;
              v83[2] = v151.__locale_;
              v84 = (v83 + 3);
              v137 = v83 + 3;
            }

            v92 = *(v84 - 24);
            v91 = *(v84 - 16);
            if (v92 != v91)
            {
              break;
            }

LABEL_147:
            v82 = *v82;
            if (!v82)
            {
              goto LABEL_203;
            }
          }

LABEL_165:
          while (1)
          {
            v93 = (*a2)[3];
            if (v93)
            {
              v94 = *(v92 + 8);
              v95 = 0xFF51AFD7ED558CCDLL * (*v92 ^ (*v92 >> 33));
              v96 = (((0xC4CEB9FE1A85EC53 * (v95 ^ (v95 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v95 ^ (v95 >> 33))) >> 33)) + 0x388152A534) ^ 0xDEADBEEF;
              v97 = (v94 + 2654435769 + (v96 << 6) + (v96 >> 2)) ^ v96;
              v98 = vcnt_s8(v93);
              v98.i16[0] = vaddlv_u8(v98);
              if (v98.u32[0] > 1uLL)
              {
                v99 = v97;
                if (v97 >= *&v93)
                {
                  v99 = v97 % *&v93;
                }
              }

              else
              {
                v99 = v97 & (*&v93 - 1);
              }

              v100 = *(*&(*a2)[2] + 8 * v99);
              if (v100)
              {
                v101 = *v100;
                if (v101)
                {
                  break;
                }
              }
            }

LABEL_164:
            v92 += 128;
            if (v92 == v91)
            {
              goto LABEL_147;
            }
          }

          v102 = __ROR8__(*v92, 32);
          if (v98.u32[0] < 2uLL)
          {
            v103 = *&v93 - 1;
            while (1)
            {
              v105 = v101[1];
              if (v97 == v105)
              {
                if (*(v101 + 4) == v102 && *(v101 + 20) == __PAIR64__(v94, HIDWORD(v102)))
                {
                  goto LABEL_187;
                }
              }

              else if ((v105 & v103) != v99)
              {
                goto LABEL_164;
              }

              v101 = *v101;
              if (!v101)
              {
                goto LABEL_164;
              }
            }
          }

          while (1)
          {
            v104 = v101[1];
            if (v97 == v104)
            {
              if (*(v101 + 4) == v102 && *(v101 + 20) == __PAIR64__(v94, HIDWORD(v102)))
              {
LABEL_187:
                v106 = a1;
                v107 = v11;
                v150[0] = *v92;
                LODWORD(v150[1]) = v94;
                v130 = v150;
                v108 = sub_CBCDD8(v133, v150);
                v109 = v108;
                v110 = v108[5];
                v111 = v108[6];
                if (v110 >= v111)
                {
                  v114 = v108[4];
                  v115 = 0xAAAAAAAAAAAAAAABLL * ((v110 - v114) >> 2) + 1;
                  if (v115 > 0x1555555555555555)
                  {
                    sub_1794();
                  }

                  v116 = 0xAAAAAAAAAAAAAAABLL * ((v111 - v114) >> 2);
                  if (2 * v116 > v115)
                  {
                    v115 = 2 * v116;
                  }

                  if (v116 >= 0xAAAAAAAAAAAAAAALL)
                  {
                    v117 = 0x1555555555555555;
                  }

                  else
                  {
                    v117 = v115;
                  }

                  if (v117)
                  {
                    if (v117 <= 0x1555555555555555)
                    {
                      operator new();
                    }

                    sub_1808();
                  }

                  v118 = 4 * ((v110 - v114) >> 2);
                  v119 = v82[2];
                  *(v118 + 8) = *(v82 + 6);
                  *v118 = v119;
                  v113 = v118 + 12;
                  v120 = (v118 - (v110 - v114));
                  memcpy(v120, v114, v110 - v114);
                  v109[4] = v120;
                  v109[5] = v113;
                  v109[6] = 0;
                  if (v114)
                  {
                    operator delete(v114);
                  }
                }

                else
                {
                  v112 = v82[2];
                  *(v110 + 8) = *(v82 + 6);
                  *v110 = v112;
                  v113 = v110 + 12;
                }

                v109[5] = v113;
                v11 = v107;
                a1 = v106;
                v92 += 128;
                if (v92 == v91)
                {
                  goto LABEL_147;
                }

                goto LABEL_165;
              }
            }

            else
            {
              if (v104 >= *&v93)
              {
                v104 %= *&v93;
              }

              if (v104 != v99)
              {
                goto LABEL_164;
              }
            }

            v101 = *v101;
            if (!v101)
            {
              goto LABEL_164;
            }
          }
        }

LABEL_203:
        sub_7EA60(v149);
        if (sub_7E7E4(1u))
        {
          sub_19594F8(v150);
          sub_4A5C(v150, "Computed ", 9);
          v121 = std::ostream::operator<<();
          sub_4A5C(v121, " trip sequences in ", 19);
          v122 = std::ostream::operator<<();
          sub_4A5C(v122, " ms (", 5);
          v123 = std::ostream::operator<<();
          sub_4A5C(v123, " new trips since previous snapshot)", 35);
          if ((v162 & 0x10) != 0)
          {
            v125 = v161;
            if (v161 < v155)
            {
              v161 = v155;
              v125 = v155;
            }

            v126 = v154;
            v124 = v125 - v154;
            if (v125 - v154 > 0x7FFFFFFFFFFFFFF7)
            {
              goto LABEL_224;
            }
          }

          else
          {
            if ((v162 & 8) == 0)
            {
              v124 = 0;
              v132 = 0;
              goto LABEL_215;
            }

            v126 = v152;
            v124 = v153 - v152;
            if ((v153 - v152) > 0x7FFFFFFFFFFFFFF7)
            {
LABEL_224:
              sub_3244();
            }
          }

          if (v124 >= 0x17)
          {
            operator new();
          }

          v132 = v124;
          if (v124)
          {
            memmove(&v130, v126, v124);
          }

LABEL_215:
          *(&v130 + v124) = 0;
          sub_7E854(&v130, 1u);
          if (v132 < 0)
          {
            operator delete(v130);
          }

          if (v160 < 0)
          {
            operator delete(__p);
          }

          std::locale::~locale(&v151);
          std::ostream::~ostream();
          std::ios::~ios();
        }

        operator new();
      }
    }
  }

  sub_19594F8(v150);
  sub_4A5C(v150, "Computing affected trip sequences in stop patterns from snapshot with ", 70);
  v6 = std::ostream::operator<<();
  sub_4A5C(v6, " trip updates", 13);
  if ((v162 & 0x10) != 0)
  {
    v8 = v161;
    if (v161 < v155)
    {
      v161 = v155;
      v8 = v155;
    }

    v9 = v154;
    v7 = v8 - v154;
    if (v8 - v154 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_222;
    }
  }

  else
  {
    if ((v162 & 8) == 0)
    {
      v7 = 0;
      BYTE7(v147) = 0;
LABEL_13:
      *(&__dst + v7) = 0;
      sub_7E854(&__dst, 1u);
      if (SBYTE7(v147) < 0)
      {
        operator delete(__dst);
      }

      if (v160 < 0)
      {
        operator delete(__p);
      }

      std::locale::~locale(&v151);
      std::ostream::~ostream();
      std::ios::~ios();
      goto LABEL_18;
    }

    v9 = v152;
    v7 = v153 - v152;
    if ((v153 - v152) > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_222:
      sub_3244();
    }
  }

  if (v7 >= 0x17)
  {
    operator new();
  }

  BYTE7(v147) = v7;
  if (v7)
  {
    memmove(&__dst, v9, v7);
  }

  goto LABEL_13;
}

void sub_CB622C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  __cxa_guard_abort(&qword_27339C8);
  sub_11BD8(&a28);
  sub_11BD8(&a34);
  sub_11BD8(&a40);
  _Unwind_Resume(a1);
}

void sub_CB63B0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_7E9A4(v65);
  v62 = 0u;
  v63 = 0u;
  v64 = 1065353216;
  v6 = *(a2 + 16);
  v47 = a3;
  if (v6)
  {
    do
    {
      v7 = v6[4];
      v8 = v6[5];
      if (v7 != v8)
      {
        v9 = (v7 + 8);
        do
        {
          v50 = (v9 - 1);
          v11 = sub_CBD948(&v62, v9 - 1);
          v12 = *(v11 + 6);
          v13 = v9;
          if (v12 != -1)
          {
            if (*v9 >= v12)
            {
              v14 = v11 + 3;
            }

            else
            {
              v14 = v9;
            }

            if (*v9 == -1)
            {
              v13 = v11 + 3;
            }

            else
            {
              v13 = v14;
            }
          }

          v17 = *(v11 + 7);
          v15 = (v11 + 28);
          v16 = v17;
          *(v15 - 1) = *v13;
          v18 = v9;
          if (v17 != -1)
          {
            v18 = v15;
            if (*v9 != -1)
            {
              if (v16 >= *v9)
              {
                v18 = v15;
              }

              else
              {
                v18 = v9;
              }
            }
          }

          *v15 = *v18;
          v10 = v9 + 1;
          v9 = (v9 + 12);
        }

        while (v10 != v8);
      }

      v6 = *v6;
    }

    while (v6);
    v19 = v63;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    for (*(a3 + 32) = 1065353216; v19; v19 = *v19)
    {
      v20 = *(v19 + 6);
      v21 = *(v19 + 7);
      __p = 0;
      v52.__locale_ = 0;
      v54 = 0;
      v53 = 0;
      LODWORD(v50) = v20;
      if (v21 - v20 != -1)
      {
        operator new();
      }

      sub_CBDCC8(a3, v19 + 2);
    }
  }

  else
  {
    *a3 = 0uLL;
    *(a3 + 16) = 0uLL;
    *(a3 + 32) = 1065353216;
  }

  v22 = *(a2 + 16);
  if (v22)
  {
    while (1)
    {
      v23 = v22[4];
      v24 = v22[5];
      if (v23 != v24)
      {
        break;
      }

LABEL_28:
      v22 = *v22;
      if (!v22)
      {
        goto LABEL_43;
      }
    }

    v46 = *(v22 + 6);
    v25 = *(v22 + 5) | (*(v22 + 4) << 32);
    while (1)
    {
      v50 = v23;
      v32 = sub_CBE070(a3, v23);
      v33 = *(v23 + 8);
      v34 = *(a1 + 4184);
      if (sub_4C2B90(v34 + 3896))
      {
        v26 = *(v34 + 3960);
        if (!v26)
        {
          goto LABEL_32;
        }

        v35 = sub_39F47C(*(*(a1 + 4184) + 3960), v25, v46, 1);
        if (v35)
        {
          LOBYTE(v26) = *(v35 + 33);
          goto LABEL_32;
        }
      }

      LOBYTE(v26) = 0;
LABEL_32:
      v27 = v33 - *(v32 + 6);
      v28 = v32[4];
      v29 = *(v28 + v27);
      if ((v29 & 3) == 1)
      {
        v30 = 1;
      }

      else
      {
        v30 = 2;
      }

      if (v26)
      {
        v31 = v30;
      }

      else
      {
        v31 = 0;
      }

      *(v28 + v27) = v29 & 0xFC | v31 | 1;
      *(v32 + 14) += (v29 & 1) == 0;
      v23 += 12;
      a3 = v47;
      if (v23 == v24)
      {
        goto LABEL_28;
      }
    }
  }

LABEL_43:
  v36 = *(a3 + 16);
  if (v36)
  {
    v37 = 0;
    v38 = 0;
    do
    {
      v38 += *(v36 + 14);
      v37 = v36[5] + v37 - v36[4];
      v36 = *v36;
    }

    while (v36);
  }

  sub_7EA60(v65);
  if (!sub_7E7E4(1u))
  {
LABEL_63:
    operator new();
  }

  sub_19594F8(&v50);
  sub_4A5C(&v50, "Blocked ", 8);
  v39 = std::ostream::operator<<();
  sub_4A5C(v39, " trip sequences in ", 19);
  v40 = std::ostream::operator<<();
  sub_4A5C(v40, " stop patterns in ", 18);
  v41 = std::ostream::operator<<();
  sub_4A5C(v41, " ms (load: ", 11);
  v42 = std::ostream::operator<<();
  sub_4A5C(v42, " %)", 3);
  if ((v61 & 0x10) != 0)
  {
    v44 = v60;
    if (v60 < v57)
    {
      v60 = v57;
      v44 = v57;
    }

    v45 = v56;
    v43 = v44 - v56;
    if (v44 - v56 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_65;
    }
  }

  else
  {
    if ((v61 & 8) == 0)
    {
      v43 = 0;
      HIBYTE(v49) = 0;
LABEL_58:
      *(&__dst + v43) = 0;
      sub_7E854(&__dst, 1u);
      if (SHIBYTE(v49) < 0)
      {
        operator delete(__dst);
      }

      if (v59 < 0)
      {
        operator delete(v58);
      }

      std::locale::~locale(&v52);
      std::ostream::~ostream();
      std::ios::~ios();
      goto LABEL_63;
    }

    v45 = v53;
    v43 = v55 - v53;
    if ((v55 - v53) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_65:
      sub_3244();
    }
  }

  if (v43 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v49) = v43;
  if (v43)
  {
    memmove(&__dst, v45, v43);
  }

  goto LABEL_58;
}

void sub_CB6BB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a17);
  sub_5EC8BC(a10);
  sub_11BD8(v17 - 176);
  _Unwind_Resume(a1);
}

void sub_CB6C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a15)
  {
    JUMPOUT(0xCB6C80);
  }

  sub_5EC8BC(a10);
  sub_11BD8(v15 - 176);
  _Unwind_Resume(a1);
}

void sub_CB6CCC(uint64_t a1)
{
  sub_7E9A4(v111);
  v108 = 0;
  v109 = 0;
  v110 = 0;
  v3 = *a1;
  v2 = *(a1 + 8);
  if (v2 == *a1)
  {
    goto LABEL_128;
  }

  v4 = 0;
  v95 = 0;
  v5 = 0;
LABEL_4:
  v6 = v108;
  v7 = v109;
  if (v109 != v108)
  {
    v8 = v109;
    do
    {
      v11 = *(v8 - 3);
      v8 -= 3;
      v10 = v11;
      if (v11)
      {
        v12 = *(v7 - 2);
        v9 = v10;
        if (v12 != v10)
        {
          do
          {
            v13 = *(v12 - 3);
            if (v13)
            {
              *(v12 - 2) = v13;
              operator delete(v13);
            }

            v14 = *(v12 - 6);
            if (v14)
            {
              *(v12 - 5) = v14;
              operator delete(v14);
            }

            v15 = *(v12 - 9);
            if (v15)
            {
              *(v12 - 8) = v15;
              operator delete(v15);
            }

            v12 -= 128;
          }

          while (v12 != v10);
          v9 = *v8;
        }

        *(v7 - 2) = v10;
        operator delete(v9);
      }

      v7 = v8;
    }

    while (v8 != v6);
    v3 = *a1;
  }

  v109 = v6;
  v16 = &v3->n128_u64[3 * v5];
  v17 = *v16;
  v18 = v16[1];
  if (*v16 == v18)
  {
    goto LABEL_94;
  }

  v19 = 0;
  while (1)
  {
    v20 = *(v17 + v19 + 32);
    if (v20 && *(v20 + 32) == 1)
    {
      v38 = v17 + v19;
      if (v17 + v19 > v17)
      {
        __p[0] = 0;
        __p[1] = 0;
        v99.__locale_ = 0;
        sub_CBE3F8(__p, v17, v17 + v19, v19 >> 7);
        v39 = v109;
        if (v109 >= v110)
        {
          v47 = sub_C4E6A8(&v108, __p);
          v48 = __p[0];
          v109 = v47;
          if (__p[0])
          {
            v49 = __p[1];
            v50 = __p[0];
            if (__p[1] != __p[0])
            {
              do
              {
                v51 = *(v49 - 3);
                if (v51)
                {
                  *(v49 - 2) = v51;
                  operator delete(v51);
                }

                v52 = *(v49 - 6);
                if (v52)
                {
                  *(v49 - 5) = v52;
                  operator delete(v52);
                }

                v53 = *(v49 - 9);
                if (v53)
                {
                  *(v49 - 8) = v53;
                  operator delete(v53);
                }

                v49 -= 128;
              }

              while (v49 != v48);
              v50 = __p[0];
            }

            __p[1] = v48;
            operator delete(v50);
          }
        }

        else
        {
          *v109 = 0;
          v39[1] = 0;
          v39[2] = 0;
          *v39 = *__p;
          v39[2] = v99.__locale_;
          v109 = v39 + 3;
        }

        v18 = v16[1];
      }

      if (v18 > v38 + 128)
      {
        __p[0] = 0;
        __p[1] = 0;
        v99.__locale_ = 0;
        sub_CBE3F8(__p, v38 + 128, v18, (v18 - (v38 + 128)) >> 7);
        v71 = v109;
        if (v109 >= v110)
        {
          v72 = sub_C4E6A8(&v108, __p);
          v73 = __p[0];
          v109 = v72;
          if (__p[0])
          {
            v74 = __p[1];
            v75 = __p[0];
            if (__p[1] != __p[0])
            {
              do
              {
                v76 = *(v74 - 3);
                if (v76)
                {
                  *(v74 - 2) = v76;
                  operator delete(v76);
                }

                v77 = *(v74 - 6);
                if (v77)
                {
                  *(v74 - 5) = v77;
                  operator delete(v77);
                }

                v78 = *(v74 - 9);
                if (v78)
                {
                  *(v74 - 8) = v78;
                  operator delete(v78);
                }

                v74 -= 128;
              }

              while (v74 != v73);
              v75 = __p[0];
            }

            __p[1] = v73;
            operator delete(v75);
          }
        }

        else
        {
          *v109 = 0;
          v71[1] = 0;
          v71[2] = 0;
          *v71 = *__p;
          v71[2] = v99.__locale_;
          v109 = v71 + 3;
        }

        v18 = v16[1];
      }

      ++v4;
      v64 = *v16;
      while (v18 != v64)
      {
        v79 = *(v18 - 24);
        if (v79)
        {
          *(v18 - 16) = v79;
          operator delete(v79);
        }

        v80 = *(v18 - 48);
        if (v80)
        {
          *(v18 - 40) = v80;
          operator delete(v80);
        }

        v81 = *(v18 - 72);
        if (v81)
        {
          *(v18 - 64) = v81;
          operator delete(v81);
        }

        v18 -= 128;
      }

LABEL_93:
      v16[1] = v64;
LABEL_94:
      v70 = v108;
      v69 = v109;
      v2 = *(a1 + 8);
      while (v70 != v69)
      {
        if (v2 < *(a1 + 16))
        {
          v2->n128_u64[0] = 0;
          v2->n128_u64[1] = 0;
          v2[1].n128_u64[0] = 0;
          *v2 = *v70;
          v2[1].n128_u64[0] = *(v70 + 16);
          *v70 = 0;
          *(v70 + 8) = 0;
          *(v70 + 16) = 0;
          v2 = (v2 + 24);
        }

        else
        {
          v2 = sub_C4E6A8(a1, v70);
        }

        *(a1 + 8) = v2;
        v70 += 24;
      }

      ++v5;
      v3 = *a1;
      if (v5 < 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 3))
      {
        goto LABEL_4;
      }

LABEL_128:
      v82 = v2;
      if (v3 == v2)
      {
        v3 = v2;
      }

      else
      {
        while (v3->n128_u64[0] != v3->n128_u64[1])
        {
          v3 = (v3 + 24);
          if (v3 == v2)
          {
            v3 = v2;
            goto LABEL_140;
          }
        }

        if (v3 != v2)
        {
          v83 = (v3 + 24);
          if (&v3[1].n128_i8[8] != v2)
          {
            do
            {
              if (v83->n128_u64[0] != v83->n128_u64[1])
              {
                sub_CBC1BC(v3, v83);
                v2 = v82;
                v3 = (v3 + 24);
              }

              v83 = (v83 + 24);
            }

            while (v83 != v2);
            v82 = *(a1 + 8);
          }
        }
      }

LABEL_140:
      sub_CBB160(a1, v3, v82);
      v84 = *(a1 + 8);
      v85 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v84 - *a1) >> 3));
      if (v84 == *a1)
      {
        v86 = 0;
      }

      else
      {
        v86 = v85;
      }

      sub_CBE504(*a1, v84, __p, v86, 1);
      v87 = sub_CBC274(*a1, *(a1 + 8));
      sub_CBB160(a1, v87, *(a1 + 8));
      sub_7EA60(v111);
      if (sub_7E7E4(1u))
      {
        sub_19594F8(__p);
        sub_4A5C(__p, "Removed ", 8);
        v88 = std::ostream::operator<<();
        sub_4A5C(v88, " cancelled trips and split ", 27);
        v89 = std::ostream::operator<<();
        sub_4A5C(v89, " inconsistent trip pairs in ", 28);
        v90 = std::ostream::operator<<();
        sub_4A5C(v90, " ms", 3);
        if ((v107 & 0x10) != 0)
        {
          v92 = v106;
          if (v106 < v103)
          {
            v106 = v103;
            v92 = v103;
          }

          v93 = v102;
          v91 = v92 - v102;
          if (v92 - v102 >= 0x7FFFFFFFFFFFFFF8)
          {
            goto LABEL_162;
          }
        }

        else
        {
          if ((v107 & 8) == 0)
          {
            v91 = 0;
            HIBYTE(v97) = 0;
            goto LABEL_155;
          }

          v93 = v100;
          v91 = v101 - v100;
          if ((v101 - v100) >= 0x7FFFFFFFFFFFFFF8)
          {
LABEL_162:
            sub_3244();
          }
        }

        if (v91 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v97) = v91;
        if (v91)
        {
          memmove(&__dst, v93, v91);
        }

LABEL_155:
        *(&__dst + v91) = 0;
        sub_7E854(&__dst, 1u);
        if (SHIBYTE(v97) < 0)
        {
          operator delete(__dst);
        }

        if (v105 < 0)
        {
          operator delete(v104);
        }

        std::locale::~locale(&v99);
        std::ostream::~ostream();
        std::ios::~ios();
      }

      operator new();
    }

    if (v17 + v19 > v17)
    {
      break;
    }

LABEL_22:
    v19 += 128;
    if (v17 + v19 == v18)
    {
      goto LABEL_94;
    }
  }

  v21 = v17 + v19;
  v22 = *(v17 + v19 - 112);
  v23 = (v22 - *v22);
  if (*v23 >= 9u && (v24 = v23[4]) != 0)
  {
    v25 = *(v22 + v24) - 1;
    v26 = *(v21 - 96);
    if (!v26)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v25 = -1;
    v26 = *(v21 - 96);
    if (!v26)
    {
LABEL_29:
      v27 = 10 * *(*(v21 - 104) + 24 * v25 + 12);
      if (!v20)
      {
LABEL_30:
        v28 = 10 * *(*(v17 + v19 + 24) + 8);
        goto LABEL_34;
      }

LABEL_33:
      v28 = *(*(v20 + 40) + 8);
      LODWORD(v20) = *(v20 + 33);
LABEL_34:
      v29 = *(v21 - 80);
      v30 = *(v17 + v19 + 48) + v28 / 10;
      if (v28 < 0)
      {
        v31 = -5;
      }

      else
      {
        v31 = 5;
      }

      v32 = 103 * (v31 + v28 % 10);
      v33 = v30 + ((v32 >> 15) & 1) + (v32 >> 10);
      v34 = v29 + v27 / 10;
      if (v27 < 0)
      {
        v35 = -5;
      }

      else
      {
        v35 = 5;
      }

      v36 = 103 * (v35 + v27 % 10);
      if (v34 + ((v36 >> 15) & 1) + (v36 >> 10)) > v33 || ((v26 ^ v20))
      {
        __p[0] = 0;
        __p[1] = 0;
        v99.__locale_ = 0;
        sub_CBE3F8(__p, v17, v17 + v19, v19 >> 7);
        v37 = v109;
        if (v109 >= v110)
        {
          v40 = sub_C4E6A8(&v108, __p);
          v41 = __p[0];
          v109 = v40;
          if (__p[0])
          {
            v94 = v4;
            v42 = __p[1];
            v43 = __p[0];
            if (__p[1] != __p[0])
            {
              do
              {
                v44 = *(v42 - 3);
                if (v44)
                {
                  *(v42 - 2) = v44;
                  operator delete(v44);
                }

                v45 = *(v42 - 6);
                if (v45)
                {
                  *(v42 - 5) = v45;
                  operator delete(v45);
                }

                v46 = *(v42 - 9);
                if (v46)
                {
                  *(v42 - 8) = v46;
                  operator delete(v46);
                }

                v42 -= 128;
              }

              while (v42 != v41);
              v43 = __p[0];
            }

            __p[1] = v41;
            operator delete(v43);
            v4 = v94;
          }
        }

        else
        {
          *v109 = 0;
          v37[1] = 0;
          v37[2] = 0;
          *v37 = *__p;
          v37[2] = v99.__locale_;
          v109 = v37 + 3;
        }

        v54 = v16[1];
        __p[0] = 0;
        __p[1] = 0;
        v99.__locale_ = 0;
        sub_CBE3F8(__p, v17 + v19, v54, (v54 - v17 - v19) >> 7);
        v55 = v109;
        if (v109 >= v110)
        {
          v57 = sub_C4E6A8(&v108, __p);
          v56 = v4;
          v58 = __p[0];
          v109 = v57;
          if (__p[0])
          {
            v59 = __p[1];
            v60 = __p[0];
            if (__p[1] != __p[0])
            {
              do
              {
                v61 = *(v59 - 3);
                if (v61)
                {
                  *(v59 - 2) = v61;
                  operator delete(v61);
                }

                v62 = *(v59 - 6);
                if (v62)
                {
                  *(v59 - 5) = v62;
                  operator delete(v62);
                }

                v63 = *(v59 - 9);
                if (v63)
                {
                  *(v59 - 8) = v63;
                  operator delete(v63);
                }

                v59 -= 128;
              }

              while (v59 != v58);
              v60 = __p[0];
            }

            __p[1] = v58;
            operator delete(v60);
          }
        }

        else
        {
          v56 = v4;
          *v109 = 0;
          v55[1] = 0;
          v55[2] = 0;
          *v55 = *__p;
          v55[2] = v99.__locale_;
          v109 = v55 + 3;
        }

        ++v95;
        v64 = *v16;
        for (i = v16[1]; i != v64; i -= 128)
        {
          v66 = *(i - 24);
          if (v66)
          {
            *(i - 16) = v66;
            operator delete(v66);
          }

          v67 = *(i - 48);
          if (v67)
          {
            *(i - 40) = v67;
            operator delete(v67);
          }

          v68 = *(i - 72);
          if (v68)
          {
            *(i - 64) = v68;
            operator delete(v68);
          }
        }

        v4 = v56;
        goto LABEL_93;
      }

      goto LABEL_22;
    }
  }

  v27 = *(*(v26 + 40) + 20 * v25 + 12);
  LODWORD(v26) = *(v26 + 33);
  if (!v20)
  {
    goto LABEL_30;
  }

  goto LABEL_33;
}

void sub_CB7950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a17 < 0)
  {
    operator delete(__p);
    sub_1959728(&a18);
    sub_C49884(v18 - 152);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a18);
  sub_C49884(v18 - 152);
  _Unwind_Resume(a1);
}

void sub_CB7B38(uint64_t a1, uint64_t a2)
{
  v4 = sub_3D4D04(*(a1 + 4072) + 24, 1u, 0);
  if (!v4 || (v5 = &v4[-*v4], *v5 < 5u) || (v6 = *(v5 + 2)) == 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v12 = sub_2D390(exception, "Root quad node of transit routing layer does not contain info object", 0x44uLL);
  }

  v7 = &v4[v6 + *&v4[v6]];
  v8 = &v7[-*v7];
  if (*v8 >= 0xDu && (v9 = *(v8 + 6)) != 0)
  {
    v10 = *&v7[v9];
  }

  else
  {
    v10 = 0;
  }

  sub_A7E978(a1, a2, v10, &v13);
}

void sub_CB7C10(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  if (!sub_7E7E4(1u))
  {
    goto LABEL_18;
  }

  sub_19594F8(&v28);
  sub_4A5C(&v28, "Computing stop patterns from ", 29);
  v4 = std::ostream::operator<<();
  sub_4A5C(v4, " trip sequences", 15);
  if ((v38 & 0x10) != 0)
  {
    v6 = v37;
    if (v37 < v34)
    {
      v37 = v34;
      v6 = v34;
    }

    v7 = v33;
    v5 = v6 - v33;
    if (v6 - v33 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_40;
    }
  }

  else
  {
    if ((v38 & 8) == 0)
    {
      v5 = 0;
      HIBYTE(v22) = 0;
LABEL_13:
      *(&__dst + v5) = 0;
      sub_7E854(&__dst, 1u);
      if (SHIBYTE(v22) < 0)
      {
        operator delete(__dst);
      }

      if (v36 < 0)
      {
        operator delete(__p);
      }

      std::locale::~locale(&v30);
      std::ostream::~ostream();
      std::ios::~ios();
LABEL_18:
      sub_7E9A4(v27);
      sub_C46BBC(a1, 1, &__dst);
      *(a2 + 88) = 0;
      *(a2 + 72) = 0u;
      *(a2 + 56) = 0u;
      *(a2 + 40) = 0u;
      *(a2 + 24) = 0u;
      *a2 = __dst;
      v8 = v22;
      __dst = 0;
      *&v22 = 0;
      *(a2 + 8) = v8;
      *(&v22 + 1) = 0;
      if (v24 != v23)
      {
        if (0xAAAAAAAAAAAAAAABLL * ((v24 - v23) >> 2) < 0x1555555555555556)
        {
          operator new();
        }

        sub_1794();
      }

      v9 = v25[0];
      v10 = v25[3];
      *(a2 + 72) = 0;
      *(a2 + 80) = 0;
      *(a2 + 88) = 0;
      *(a2 + 24) = v9;
      *(a2 + 32) = *&v25[1];
      *(a2 + 48) = v10;
      memset(v25, 0, sizeof(v25));
      *(a2 + 56) = v26;
      v26 = 0u;
      sub_7EA60(v27);
      if (!sub_7E7E4(1u))
      {
LABEL_38:
        operator new();
      }

      sub_19594F8(&v28);
      sub_4A5C(&v28, "Computed ", 9);
      v11 = std::ostream::operator<<();
      sub_4A5C(v11, " stop patterns on ", 18);
      v12 = std::ostream::operator<<();
      sub_4A5C(v12, " scheduled trip refs (", 22);
      v13 = std::ostream::operator<<();
      sub_4A5C(v13, " stop events, ", 14);
      v14 = std::ostream::operator<<();
      sub_4A5C(v14, " frequencies) in ", 17);
      v15 = std::ostream::operator<<();
      sub_4A5C(v15, " ms", 3);
      if ((v38 & 0x10) != 0)
      {
        v17 = v37;
        if (v37 < v34)
        {
          v37 = v34;
          v17 = v34;
        }

        v18 = v33;
        v16 = v17 - v33;
        if (v17 - v33 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_42;
        }
      }

      else
      {
        if ((v38 & 8) == 0)
        {
          v16 = 0;
          HIBYTE(v20) = 0;
LABEL_33:
          *(&v19 + v16) = 0;
          sub_7E854(&v19, 1u);
          if (SHIBYTE(v20) < 0)
          {
            operator delete(v19);
          }

          if (v36 < 0)
          {
            operator delete(__p);
          }

          std::locale::~locale(&v30);
          std::ostream::~ostream();
          std::ios::~ios();
          goto LABEL_38;
        }

        v18 = v31;
        v16 = v32 - v31;
        if ((v32 - v31) > 0x7FFFFFFFFFFFFFF7)
        {
LABEL_42:
          sub_3244();
        }
      }

      if (v16 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v20) = v16;
      if (v16)
      {
        memmove(&v19, v18, v16);
      }

      goto LABEL_33;
    }

    v7 = v31;
    v5 = v32 - v31;
    if ((v32 - v31) > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_40:
      sub_3244();
    }
  }

  if (v5 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v22) = v5;
  if (v5)
  {
    memmove(&__dst, v7, v5);
  }

  goto LABEL_13;
}