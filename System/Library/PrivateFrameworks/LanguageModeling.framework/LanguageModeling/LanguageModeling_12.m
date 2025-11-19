void sub_1AE6A3F34(void *a1, unint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1 + 2);
  v5 = v3 - v2;
  v6 = 0x86BCA1AF286BCA1BLL * ((v3 - v2) >> 4);
  if (v6 >= a1[1])
  {
    if (v2 == v3)
    {
      __assert_rtn("worst", "PriorityQueue.h", 55, "!m_predictions.empty()");
    }

    v14 = *(a2 + 184) + *(a2 + 24);
    if (v14 >= *(v2 + 184) + *(v2 + 24))
    {
      v15 = a2;
      v16 = a1[2];
      do
      {
        v17 = v6 >> 1;
        v18 = v16 + 304 * (v6 >> 1);
        v19 = *(v18 + 184) + *(v18 + 24);
        v20 = v18 + 304;
        v6 += ~(v6 >> 1);
        if (v14 < v19)
        {
          v6 = v17;
        }

        else
        {
          v16 = v20;
        }
      }

      while (v6);
      v21 = v2 + 304;
      if (v2 + 304 != v16)
      {
        v22 = v2 + 304;
        while (1)
        {
          sub_1AE6A3918(v2, v21);
          v2 += 304;
          v21 += 304;
          if (v21 == v16)
          {
            break;
          }

          if (v2 == v22)
          {
            v22 = v21;
          }
        }

        if (v2 != v22)
        {
          v32 = v22;
          while (1)
          {
            sub_1AE6A3918(v2, v22);
            v22 += 304;
            v33 = v2 + 304 == v32;
            if (v22 == v16)
            {
              if (v2 + 304 == v32)
              {
                break;
              }

              v22 = v32 + 304;
              v2 += 608;
              while (1)
              {
                sub_1AE6A3918(v2 - 304, v32);
                v33 = v2 == v32;
                if (v22 != v16)
                {
                  break;
                }

                v34 = v2 == v32;
                v2 += 304;
                if (v34)
                {
                  goto LABEL_48;
                }
              }
            }

            else
            {
              v2 += 304;
            }

            if (v33)
            {
              v32 = v22;
            }
          }
        }
      }

LABEL_48:
      v35 = v16 - 304;
      v36 = v15;
LABEL_65:

      sub_1AE6A4B38(v35, v36);
    }
  }

  else
  {
    if (v3 == v2)
    {
      v9 = a1[3];
    }

    else
    {
      v8 = 0x86BCA1AF286BCA1BLL * ((v3 - v2) >> 4);
      v9 = a1[2];
      do
      {
        v10 = v8 >> 1;
        v11 = v9 + 304 * (v8 >> 1);
        v12 = *(v11 + 184) + *(v11 + 24);
        v13 = v11 + 304;
        v8 += ~(v8 >> 1);
        if (*(a2 + 184) + *(a2 + 24) < v12)
        {
          v8 = v10;
        }

        else
        {
          v9 = v13;
        }
      }

      while (v8);
      v5 = v9 - v2;
    }

    v23 = (v2 + v5);
    v24 = a1[4];
    if (v3 < v24)
    {
      if (v23 == v3)
      {
        sub_1AE69EF8C(a1[3], a2);
        a1[3] = v3 + 304;
        return;
      }

      v25 = (v3 - 304);
      if (v3 < 0x130)
      {
        v28 = v3;
      }

      else
      {
        *v3 = 0;
        *(v3 + 8) = 0;
        *(v3 + 16) = 0;
        *v3 = *v25;
        *(v3 + 16) = *(v3 - 288);
        *v25 = 0;
        *(v3 - 296) = 0;
        *(v3 - 288) = 0;
        *(v3 + 24) = *(v3 - 280);
        v26 = *(v3 - 272);
        *(v3 + 48) = *(v3 - 256);
        *(v3 + 32) = v26;
        *(v3 - 264) = 0;
        *(v3 - 256) = 0;
        *(v3 - 272) = 0;
        *(v3 + 56) = 0;
        *(v3 + 64) = 0;
        *(v3 + 72) = 0;
        *(v3 + 56) = *(v3 - 248);
        *(v3 + 72) = *(v3 - 232);
        *(v3 - 248) = 0;
        *(v3 - 240) = 0;
        *(v3 - 232) = 0;
        *(v3 + 80) = 0;
        *(v3 + 88) = 0;
        *(v3 + 96) = 0;
        *(v3 + 80) = *(v3 - 224);
        *(v3 + 96) = *(v3 - 208);
        *(v3 - 224) = 0;
        *(v3 - 216) = 0;
        *(v3 - 208) = 0;
        *(v3 + 104) = 0;
        *(v3 + 112) = 0;
        *(v3 + 120) = 0;
        *(v3 + 104) = *(v3 - 200);
        *(v3 + 120) = *(v3 - 184);
        *(v3 - 200) = 0;
        *(v3 - 192) = 0;
        *(v3 - 184) = 0;
        *(v3 + 128) = 0;
        *(v3 + 136) = 0;
        *(v3 + 144) = 0;
        *(v3 + 128) = *(v3 - 176);
        *(v3 + 144) = *(v3 - 160);
        *(v3 - 176) = 0;
        *(v3 - 168) = 0;
        *(v3 - 160) = 0;
        *(v3 + 152) = 0;
        *(v3 + 160) = 0;
        *(v3 + 168) = 0;
        *(v3 + 152) = *(v3 - 152);
        *(v3 + 168) = *(v3 - 136);
        *(v3 - 144) = 0;
        *(v3 - 136) = 0;
        *(v3 - 152) = 0;
        *(v3 + 176) = *(v3 - 128);
        *(v3 + 200) = 0;
        *(v3 + 208) = 0;
        *(v3 + 192) = 0;
        *(v3 + 192) = *(v3 - 112);
        *(v3 + 208) = *(v3 - 96);
        *(v3 - 112) = 0;
        *(v3 - 104) = 0;
        *(v3 - 96) = 0;
        *(v3 + 216) = 0;
        *(v3 + 224) = 0;
        *(v3 + 232) = 0;
        *(v3 + 216) = *(v3 - 88);
        *(v3 + 232) = *(v3 - 72);
        *(v3 - 88) = 0;
        *(v3 - 80) = 0;
        *(v3 - 72) = 0;
        *(v3 + 240) = 0;
        *(v3 + 248) = 0;
        *(v3 + 256) = 0;
        *(v3 + 240) = *(v3 - 64);
        *(v3 + 256) = *(v3 - 48);
        *(v3 - 64) = 0;
        *(v3 - 56) = 0;
        *(v3 - 48) = 0;
        v27 = *(v3 - 40);
        *(v3 + 272) = *(v3 - 32);
        *(v3 + 264) = v27;
        *(v3 + 288) = 0;
        *(v3 + 296) = 0;
        *(v3 + 280) = 0;
        *(v3 + 280) = *(v3 - 24);
        *(v3 + 288) = *(v3 - 16);
        *(v3 - 24) = 0;
        *(v3 - 16) = 0;
        *(v3 - 8) = 0;
        v28 = v3 + 304;
      }

      a1[3] = v28;
      if (v3 != v23 + 304)
      {
        v38 = a2;
        v39 = v5 + v2 - v3 + 304;
        v40 = v3 - 608;
        do
        {
          v25 = (sub_1AE6A3AE4(v25, v40) - 304);
          v40 -= 304;
          v39 += 304;
        }

        while (v39);
        v28 = a1[3];
        a2 = v38;
      }

      v41 = v28 <= a2 || v23 > a2;
      v42 = 304;
      if (v41)
      {
        v42 = 0;
      }

      v36 = a2 + v42;
      v35 = v23;
      goto LABEL_65;
    }

    v29 = v6 + 1;
    if (v29 > 0xD79435E50D7943)
    {
      sub_1AE5CBB70();
    }

    v30 = 0x86BCA1AF286BCA1BLL * ((v24 - v2) >> 4);
    if (2 * v30 > v29)
    {
      v29 = 2 * v30;
    }

    if (v30 >= 0x6BCA1AF286BCA1)
    {
      v31 = 0xD79435E50D7943;
    }

    else
    {
      v31 = v29;
    }

    if (v31)
    {
      if (v31 <= 0xD79435E50D7943)
      {
        operator new();
      }

      sub_1AE5CB09C();
    }

    v37 = 16 * (v5 >> 4);
    v57 = v37;
    v58 = v37;
    if (!(0x86BCA1AF286BCA1BLL * (v5 >> 4)))
    {
      if (v5 < 1)
      {
        if (v5)
        {
          v43 = 0xD79435E50D79436 * (v5 >> 4);
        }

        else
        {
          v43 = 1;
        }

        if (v43 <= 0xD79435E50D7943)
        {
          operator new();
        }

        sub_1AE5CB09C();
      }

      v37 -= 304 * ((0x86BCA1AF286BCA1BLL * (v5 >> 4) + 1) >> 1);
      v57 = v37;
      v58 = v37;
    }

    sub_1AE69EF8C(v37, a2);
    v44 = v58 + 304;
    v59 = v58 + 304;
    v45 = a1[3];
    v46 = v23;
    if (v45 != v23)
    {
      do
      {
        *v44 = 0;
        *(v44 + 8) = 0;
        *(v44 + 16) = 0;
        *v44 = *v46;
        *(v44 + 16) = *(v46 + 2);
        *v46 = 0;
        *(v46 + 1) = 0;
        *(v46 + 2) = 0;
        *(v44 + 24) = *(v46 + 3);
        v47 = *(v46 + 2);
        *(v44 + 48) = *(v46 + 6);
        *(v44 + 32) = v47;
        *(v46 + 5) = 0;
        *(v46 + 6) = 0;
        *(v46 + 4) = 0;
        *(v44 + 56) = 0;
        *(v44 + 64) = 0;
        *(v44 + 72) = 0;
        *(v44 + 56) = *(v46 + 56);
        *(v44 + 72) = *(v46 + 9);
        *(v46 + 7) = 0;
        *(v46 + 8) = 0;
        *(v46 + 9) = 0;
        *(v44 + 80) = 0;
        *(v44 + 88) = 0;
        *(v44 + 96) = 0;
        *(v44 + 80) = *(v46 + 5);
        *(v44 + 96) = *(v46 + 12);
        *(v46 + 10) = 0;
        *(v46 + 11) = 0;
        *(v46 + 12) = 0;
        *(v44 + 104) = 0;
        *(v44 + 112) = 0;
        *(v44 + 120) = 0;
        *(v44 + 104) = *(v46 + 104);
        *(v44 + 120) = *(v46 + 15);
        *(v46 + 13) = 0;
        *(v46 + 14) = 0;
        *(v46 + 15) = 0;
        *(v44 + 128) = 0;
        *(v44 + 136) = 0;
        *(v44 + 144) = 0;
        *(v44 + 128) = *(v46 + 8);
        *(v44 + 144) = *(v46 + 18);
        *(v46 + 16) = 0;
        *(v46 + 17) = 0;
        *(v46 + 18) = 0;
        *(v44 + 152) = 0;
        *(v44 + 160) = 0;
        *(v44 + 168) = 0;
        *(v44 + 152) = *(v46 + 152);
        *(v44 + 168) = *(v46 + 21);
        *(v46 + 20) = 0;
        *(v46 + 21) = 0;
        *(v46 + 19) = 0;
        *(v44 + 176) = *(v46 + 11);
        *(v44 + 200) = 0;
        *(v44 + 208) = 0;
        *(v44 + 192) = 0;
        *(v44 + 192) = *(v46 + 12);
        *(v44 + 208) = *(v46 + 26);
        *(v46 + 24) = 0;
        *(v46 + 25) = 0;
        *(v46 + 26) = 0;
        *(v44 + 216) = 0;
        *(v44 + 224) = 0;
        *(v44 + 232) = 0;
        *(v44 + 216) = *(v46 + 216);
        *(v44 + 232) = *(v46 + 29);
        *(v46 + 27) = 0;
        *(v46 + 28) = 0;
        *(v46 + 29) = 0;
        *(v44 + 240) = 0;
        *(v44 + 248) = 0;
        *(v44 + 256) = 0;
        *(v44 + 240) = *(v46 + 15);
        *(v44 + 256) = *(v46 + 32);
        *(v46 + 30) = 0;
        *(v46 + 31) = 0;
        *(v46 + 32) = 0;
        v48 = *(v46 + 33);
        *(v44 + 272) = *(v46 + 68);
        *(v44 + 264) = v48;
        *(v44 + 288) = 0;
        *(v44 + 296) = 0;
        *(v44 + 280) = 0;
        *(v44 + 280) = *(v46 + 35);
        *(v44 + 288) = *(v46 + 18);
        *(v46 + 35) = 0;
        *(v46 + 36) = 0;
        *(v46 + 37) = 0;
        v46 += 304;
        v44 += 304;
      }

      while (v46 != v45);
      v49 = v23;
      do
      {
        v49 = sub_1AE69F1DC(v49) + 304;
      }

      while (v49 != v45);
      v46 = a1[3];
      v44 = v59;
    }

    v50 = &v46[v44 - v9];
    v60 = v50;
    a1[3] = v23;
    v51 = a1[2];
    v52 = &v51[v57 - v9];
    if (v51 != v23)
    {
      v53 = a1[2];
      v54 = &v51[v57 - v9];
      do
      {
        *v54 = 0;
        *(v54 + 1) = 0;
        *(v54 + 2) = 0;
        *v54 = *v53;
        *(v54 + 2) = *(v53 + 2);
        *v53 = 0;
        *(v53 + 1) = 0;
        *(v53 + 2) = 0;
        *(v54 + 3) = *(v53 + 3);
        v55 = *(v53 + 2);
        *(v54 + 6) = *(v53 + 6);
        *(v54 + 2) = v55;
        *(v53 + 5) = 0;
        *(v53 + 6) = 0;
        *(v53 + 4) = 0;
        *(v54 + 7) = 0;
        *(v54 + 8) = 0;
        *(v54 + 9) = 0;
        *(v54 + 56) = *(v53 + 56);
        *(v54 + 9) = *(v53 + 9);
        *(v53 + 7) = 0;
        *(v53 + 8) = 0;
        *(v53 + 9) = 0;
        *(v54 + 10) = 0;
        *(v54 + 11) = 0;
        *(v54 + 12) = 0;
        *(v54 + 5) = *(v53 + 5);
        *(v54 + 12) = *(v53 + 12);
        *(v53 + 10) = 0;
        *(v53 + 11) = 0;
        *(v53 + 12) = 0;
        *(v54 + 13) = 0;
        *(v54 + 14) = 0;
        *(v54 + 15) = 0;
        *(v54 + 104) = *(v53 + 104);
        *(v54 + 15) = *(v53 + 15);
        *(v53 + 13) = 0;
        *(v53 + 14) = 0;
        *(v53 + 15) = 0;
        *(v54 + 16) = 0;
        *(v54 + 17) = 0;
        *(v54 + 18) = 0;
        *(v54 + 8) = *(v53 + 8);
        *(v54 + 18) = *(v53 + 18);
        *(v53 + 16) = 0;
        *(v53 + 17) = 0;
        *(v53 + 18) = 0;
        *(v54 + 19) = 0;
        *(v54 + 20) = 0;
        *(v54 + 21) = 0;
        *(v54 + 152) = *(v53 + 152);
        *(v54 + 21) = *(v53 + 21);
        *(v53 + 20) = 0;
        *(v53 + 21) = 0;
        *(v53 + 19) = 0;
        *(v54 + 11) = *(v53 + 11);
        *(v54 + 25) = 0;
        *(v54 + 26) = 0;
        *(v54 + 24) = 0;
        *(v54 + 12) = *(v53 + 12);
        *(v54 + 26) = *(v53 + 26);
        *(v53 + 24) = 0;
        *(v53 + 25) = 0;
        *(v53 + 26) = 0;
        *(v54 + 27) = 0;
        *(v54 + 28) = 0;
        *(v54 + 29) = 0;
        *(v54 + 216) = *(v53 + 216);
        *(v54 + 29) = *(v53 + 29);
        *(v53 + 27) = 0;
        *(v53 + 28) = 0;
        *(v53 + 29) = 0;
        *(v54 + 30) = 0;
        *(v54 + 31) = 0;
        *(v54 + 32) = 0;
        *(v54 + 15) = *(v53 + 15);
        *(v54 + 32) = *(v53 + 32);
        *(v53 + 30) = 0;
        *(v53 + 31) = 0;
        *(v53 + 32) = 0;
        v56 = *(v53 + 33);
        *(v54 + 68) = *(v53 + 68);
        *(v54 + 33) = v56;
        *(v54 + 36) = 0;
        *(v54 + 37) = 0;
        *(v54 + 35) = 0;
        *(v54 + 35) = *(v53 + 35);
        *(v54 + 18) = *(v53 + 18);
        *(v53 + 35) = 0;
        *(v53 + 36) = 0;
        *(v53 + 37) = 0;
        v53 += 304;
        v54 += 304;
      }

      while (v53 != v23);
      do
      {
        v51 = (sub_1AE69F1DC(v51) + 304);
      }

      while (v51 != v23);
      v51 = *v4;
      v50 = v60;
    }

    a1[2] = v52;
    a1[3] = v50;
    a1[4] = 0;
    if (v51)
    {
      operator delete(v51);
    }
  }
}

void sub_1AE6A48B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE6A58C8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE6A48C8(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1AE5CBB70();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1AE5CB09C();
  }

  v6 = 8 * ((a1[1] - *a1) >> 3);
  *v6 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(v6 + 16) = *(a2 + 16);
  v7 = 24 * v2 + 24;
  v8 = *a1;
  v9 = a1[1];
  v10 = v6 + *a1 - v9;
  if (*a1 != v9)
  {
    v11 = *a1;
    v12 = v6 + *a1 - v9;
    do
    {
      *v12 = *v11;
      *v11 = 0;
      v11[1] = 0;
      *(v12 + 16) = v11[2];
      v11 += 3;
      v12 += 24;
    }

    while (v11 != v9);
    do
    {
      v13 = v8[1];
      if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v13->__on_zero_shared)(v13);
        std::__shared_weak_count::__release_weak(v13);
      }

      v8 += 3;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

uint64_t sub_1AE6A4A70(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN2LM13LexiconCursorEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN2LM13LexiconCursorEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN2LM13LexiconCursorEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN2LM13LexiconCursorEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AE6A4ACC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1AE6A4AFC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B2706400);
}

uint64_t sub_1AE6A4B38(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    *(a1 + 24) = *(a2 + 24);
    sub_1AE6A50F8(a1 + 56, a2 + 56);
    v6 = *(a2 + 264);
    *(a1 + 272) = *(a2 + 272);
    *(a1 + 264) = v6;
  }

  else
  {
    sub_1AE6A4FB0(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
    *(a1 + 24) = *(a2 + 24);
    v4 = *(a2 + 55);
    if (*(a1 + 55) < 0)
    {
      if (v4 >= 0)
      {
        v7 = (a2 + 32);
      }

      else
      {
        v7 = *(a2 + 32);
      }

      if (v4 >= 0)
      {
        v8 = *(a2 + 55);
      }

      else
      {
        v8 = *(a2 + 40);
      }

      sub_1AE621B84(a1 + 32, v7, v8);
    }

    else if ((*(a2 + 55) & 0x80) != 0)
    {
      sub_1AE621AB4((a1 + 32), *(a2 + 32), *(a2 + 40));
    }

    else
    {
      v5 = *(a2 + 32);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 32) = v5;
    }

    sub_1AE6A50F8(a1 + 56, a2 + 56);
    v10 = (a1 + 240);
    v9 = *(a1 + 240);
    v12 = *(a2 + 240);
    v11 = *(a2 + 248);
    v13 = v11 - v12;
    v14 = *(a1 + 256);
    if (v14 - v9 < (v11 - v12))
    {
      v15 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
      if (v9)
      {
        v16 = *(a1 + 248);
        v17 = *(a1 + 240);
        if (v16 != v9)
        {
          do
          {
            v18 = *(v16 - 2);
            if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v18->__on_zero_shared)(v18);
              std::__shared_weak_count::__release_weak(v18);
            }

            v16 -= 24;
          }

          while (v16 != v9);
          v17 = *v10;
        }

        *(a1 + 248) = v9;
        operator delete(v17);
        v14 = 0;
        *v10 = 0;
        *(a1 + 248) = 0;
        *(a1 + 256) = 0;
      }

      if (v15 <= 0xAAAAAAAAAAAAAAALL)
      {
        v27 = 0xAAAAAAAAAAAAAAABLL * (v14 >> 3);
        v28 = 2 * v27;
        if (2 * v27 <= v15)
        {
          v28 = v15;
        }

        if (v27 >= 0x555555555555555)
        {
          v29 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v29 = v28;
        }

        if (v29 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }
      }

      sub_1AE5CBB70();
    }

    v19 = *(a1 + 248);
    if (v19 - v9 >= v13)
    {
      if (v12 != v11)
      {
        do
        {
          v25 = *v12;
          v24 = *(v12 + 1);
          if (v24)
          {
            atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
          }

          v26 = *(v9 + 1);
          *v9 = v25;
          *(v9 + 1) = v24;
          if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v26->__on_zero_shared)(v26);
            std::__shared_weak_count::__release_weak(v26);
          }

          *(v9 + 2) = *(v12 + 2);
          v12 += 24;
          v9 += 24;
        }

        while (v12 != v11);
        v19 = *(a1 + 248);
      }

      for (; v19 != v9; v19 -= 24)
      {
        v32 = *(v19 - 2);
        if (v32 && !atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v32->__on_zero_shared)(v32);
          std::__shared_weak_count::__release_weak(v32);
        }
      }

      *(a1 + 248) = v9;
    }

    else
    {
      v20 = &v12[v19 - v9];
      if (v19 != v9)
      {
        do
        {
          v22 = *v12;
          v21 = *(v12 + 1);
          if (v21)
          {
            atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
          }

          v23 = *(v9 + 1);
          *v9 = v22;
          *(v9 + 1) = v21;
          if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v23->__on_zero_shared)(v23);
            std::__shared_weak_count::__release_weak(v23);
          }

          *(v9 + 2) = *(v12 + 2);
          v12 += 24;
          v9 += 24;
        }

        while (v12 != v20);
        v19 = *(a1 + 248);
      }

      v30 = v19;
      if (v20 != v11)
      {
        v30 = v19;
        do
        {
          v31 = *(v20 + 1);
          *v30 = *v20;
          *(v30 + 1) = v31;
          if (v31)
          {
            atomic_fetch_add_explicit((v31 + 8), 1uLL, memory_order_relaxed);
          }

          *(v30 + 2) = *(v20 + 2);
          v20 += 24;
          v30 += 24;
        }

        while (v20 != v11);
      }

      *(a1 + 248) = v30;
    }

    v33 = *(a2 + 264);
    *(a1 + 272) = *(a2 + 272);
    *(a1 + 264) = v33;
    sub_1AE6A4FB0((a1 + 280), *(a2 + 280), *(a2 + 288), (*(a2 + 288) - *(a2 + 280)) >> 2);
  }

  return a1;
}

char *sub_1AE6A4FB0(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 2)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v6 >> 1;
      if (v6 >> 1 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFFCLL;
      v11 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 62))
      {
        operator new();
      }
    }

    sub_1AE5CBB70();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 2)
  {
    v17 = a3 - a2;
    if (v17)
    {
      v18 = result;
      memmove(result, a2, v17);
      result = v18;
    }

    v16 = &result[v17];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    v16 = &v12[v15];
  }

  a1[1] = v16;
  return result;
}

uint64_t sub_1AE6A50F8(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    *(a1 + 120) = *(a2 + 120);
  }

  else
  {
    v5 = *a2;
    v4 = *(a2 + 8);
    v6 = v4 - *a2;
    v7 = *(a1 + 16);
    v8 = *a1;
    if (v7 - *a1 < v6)
    {
      v9 = v6 >> 5;
      if (v8)
      {
        v10 = *(a1 + 8);
        v11 = *a1;
        if (v10 != v8)
        {
          do
          {
            v12 = *(v10 - 9);
            v10 -= 4;
            if (v12 < 0)
            {
              operator delete(*v10);
            }
          }

          while (v10 != v8);
          v11 = *a1;
        }

        *(a1 + 8) = v8;
        operator delete(v11);
        v7 = 0;
        *a1 = 0;
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
      }

      if (!(v9 >> 59))
      {
        v30 = v7 >> 4;
        if (v7 >> 4 <= v9)
        {
          v30 = v9;
        }

        v31 = v7 >= 0x7FFFFFFFFFFFFFE0;
        v32 = 0x7FFFFFFFFFFFFFFLL;
        if (!v31)
        {
          v32 = v30;
        }

        if (!(v32 >> 59))
        {
          operator new();
        }
      }

      sub_1AE5CBB70();
    }

    v13 = *(a1 + 8);
    v14 = (v13 - v8);
    if (v13 - v8 >= v6)
    {
      if (v5 != v4)
      {
        v23 = 0;
        do
        {
          v26 = &v8[v23];
          v27 = &v5[v23];
          if (v5 != v8)
          {
            v28 = *(v27 + 23);
            if (*(v26 + 23) < 0)
            {
              if (v28 >= 0)
              {
                v24 = &v5[v23];
              }

              else
              {
                v24 = v5[v23];
              }

              if (v28 >= 0)
              {
                v25 = *(v27 + 23);
              }

              else
              {
                v25 = v5[v23 + 1];
              }

              v26 = sub_1AE621B84(v26, v24, v25);
            }

            else if ((*(v27 + 23) & 0x80) != 0)
            {
              v26 = sub_1AE621AB4(v26, v5[v23], v5[v23 + 1]);
            }

            else
            {
              v29 = *v27;
              *(v26 + 16) = v27[2];
              *v26 = v29;
            }
          }

          *(v26 + 24) = *(v27 + 6);
          v23 += 4;
        }

        while (&v5[v23] != v4);
        v8 = (v8 + v23 * 8);
        v13 = *(a1 + 8);
      }

      while (v13 != v8)
      {
        v36 = *(v13 - 9);
        v13 -= 4;
        if (v36 < 0)
        {
          operator delete(*v13);
        }
      }

      *(a1 + 8) = v8;
    }

    else
    {
      v15 = &v14[v5];
      if (v13 != v8)
      {
        v16 = 0;
        do
        {
          v19 = &v16[v8];
          v20 = &v16[v5];
          if (v5 != v8)
          {
            v21 = v20[23];
            if (*(v19 + 23) < 0)
            {
              if (v21 >= 0)
              {
                v17 = &v16[v5];
              }

              else
              {
                v17 = *&v16[v5];
              }

              if (v21 >= 0)
              {
                v18 = v20[23];
              }

              else
              {
                v18 = *&v16[v5 + 8];
              }

              v19 = sub_1AE621B84(v19, v17, v18);
            }

            else if (v20[23] < 0)
            {
              v19 = sub_1AE621AB4(v19, *&v16[v5], *&v16[v5 + 8]);
            }

            else
            {
              v22 = *v20;
              *(v19 + 16) = *(v20 + 2);
              *v19 = v22;
            }
          }

          *(v19 + 24) = *(v20 + 6);
          v16 += 32;
        }

        while (v14 != v16);
        v13 = *(a1 + 8);
      }

      v38 = v13;
      v33 = v13;
      if (v15 != v4)
      {
        v33 = v13;
        do
        {
          if (v15[23] < 0)
          {
            sub_1AE5DBF1C(v33, *v15, *(v15 + 1));
            v35 = v38;
          }

          else
          {
            v34 = *v15;
            v33[2] = *(v15 + 2);
            *v33 = v34;
            v35 = v33;
          }

          *(v33 + 6) = *(v15 + 6);
          v15 += 32;
          v33 = v35 + 4;
          v38 = v35 + 4;
        }

        while (v15 != v4);
      }

      *(a1 + 8) = v33;
    }

    sub_1AE6A5530((a1 + 24), *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 5);
    sub_1AE6A5530((a1 + 48), *(a2 + 48), *(a2 + 56), (*(a2 + 56) - *(a2 + 48)) >> 5);
    sub_1AE6A4FB0((a1 + 72), *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 2);
    sub_1AE6A4FB0((a1 + 96), *(a2 + 96), *(a2 + 104), (*(a2 + 104) - *(a2 + 96)) >> 2);
    *(a1 + 120) = *(a2 + 120);
    sub_1AE6A5530((a1 + 136), *(a2 + 136), *(a2 + 144), (*(a2 + 144) - *(a2 + 136)) >> 5);
    sub_1AE6A5530((a1 + 160), *(a2 + 160), *(a2 + 168), (*(a2 + 168) - *(a2 + 160)) >> 5);
  }

  return a1;
}

void sub_1AE6A5500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1AE61E3C4(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_1AE6A5518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1AE61E3C4(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_1AE6A5530(void ***a1, void **a2, void **a3, unint64_t a4)
{
  v7 = a1[2];
  v8 = *a1;
  if (a4 > (v7 - *a1) >> 5)
  {
    if (v8)
    {
      v9 = a4;
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v8)
      {
        do
        {
          v12 = *(v10 - 9);
          v10 -= 4;
          if (v12 < 0)
          {
            operator delete(*v10);
          }
        }

        while (v10 != v8);
        v11 = *a1;
      }

      a1[1] = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v9;
    }

    if (!(a4 >> 59))
    {
      v30 = v7 >> 4;
      if (v7 >> 4 <= a4)
      {
        v30 = a4;
      }

      v31 = v7 >= 0x7FFFFFFFFFFFFFE0;
      v32 = 0x7FFFFFFFFFFFFFFLL;
      if (!v31)
      {
        v32 = v30;
      }

      if (!(v32 >> 59))
      {
        operator new();
      }
    }

    sub_1AE5CBB70();
  }

  v13 = a1[1];
  v14 = (v13 - v8);
  if (a4 <= (v13 - v8) >> 5)
  {
    if (a2 != a3)
    {
      v23 = 0;
      do
      {
        v26 = &v8[v23];
        v27 = &a2[v23];
        if (a2 != v8)
        {
          v28 = *(v27 + 23);
          if (*(v26 + 23) < 0)
          {
            if (v28 >= 0)
            {
              v24 = &a2[v23];
            }

            else
            {
              v24 = a2[v23];
            }

            if (v28 >= 0)
            {
              v25 = *(v27 + 23);
            }

            else
            {
              v25 = a2[v23 + 1];
            }

            v26 = sub_1AE621B84(v26, v24, v25);
          }

          else if ((*(v27 + 23) & 0x80) != 0)
          {
            v26 = sub_1AE621AB4(v26, a2[v23], a2[v23 + 1]);
          }

          else
          {
            v29 = *v27;
            *(v26 + 16) = v27[2];
            *v26 = v29;
          }
        }

        *(v26 + 24) = *(v27 + 6);
        v23 += 4;
      }

      while (&a2[v23] != a3);
      v8 = (v8 + v23 * 8);
      v13 = a1[1];
    }

    while (v13 != v8)
    {
      v36 = *(v13 - 9);
      v13 -= 4;
      if (v36 < 0)
      {
        operator delete(*v13);
      }
    }

    a1[1] = v8;
  }

  else
  {
    v15 = &v14[a2];
    if (v13 != v8)
    {
      v16 = 0;
      do
      {
        v19 = &v16[v8];
        v20 = &v16[a2];
        if (a2 != v8)
        {
          v21 = v20[23];
          if (*(v19 + 23) < 0)
          {
            if (v21 >= 0)
            {
              v17 = &v16[a2];
            }

            else
            {
              v17 = *&v16[a2];
            }

            if (v21 >= 0)
            {
              v18 = v20[23];
            }

            else
            {
              v18 = *&v16[a2 + 8];
            }

            v19 = sub_1AE621B84(v19, v17, v18);
          }

          else if (v20[23] < 0)
          {
            v19 = sub_1AE621AB4(v19, *&v16[a2], *&v16[a2 + 8]);
          }

          else
          {
            v22 = *v20;
            *(v19 + 16) = *(v20 + 2);
            *v19 = v22;
          }
        }

        *(v19 + 24) = *(v20 + 6);
        v16 += 32;
      }

      while (v14 != v16);
      v13 = a1[1];
    }

    v37 = v13;
    v33 = v13;
    if (v15 != a3)
    {
      v33 = v13;
      do
      {
        if (v15[23] < 0)
        {
          sub_1AE5DBF1C(v33, *v15, *(v15 + 1));
          v35 = v37;
        }

        else
        {
          v34 = *v15;
          v33[2] = *(v15 + 2);
          *v33 = v34;
          v35 = v33;
        }

        *(v33 + 6) = *(v15 + 6);
        v15 += 32;
        v33 = v35 + 4;
        v37 = v35 + 4;
      }

      while (v15 != a3);
    }

    a1[1] = v33;
  }
}

void sub_1AE6A5898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1AE61E3C4(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_1AE6A58B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1AE61E3C4(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

uint64_t sub_1AE6A58C8(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 304;
    sub_1AE69F1DC(i - 304);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

os_log_t sub_1AE6A591C()
{
  result = os_log_create("com.apple.LanguageModeling", "InlineCompletionHypothesis");
  qword_1EB5E0A20 = result;
  return result;
}

void sub_1AE6A6CA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void ***a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, char a26)
{
  sub_1AE69F1DC(&a26);
  sub_1AE6A25B8(&STACK[0x3D8]);
  if (SLOBYTE(STACK[0x407]) < 0)
  {
    operator delete(STACK[0x3F0]);
  }

  sub_1AE646244(a20);
  sub_1AE622290(v26 - 248);
  _Unwind_Resume(a1);
}

double sub_1AE6A6F90(uint64_t a1, uint64_t a2)
{
  v2 = 0x84BDA12F684BDA13 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x12F684BDA12F684)
  {
    sub_1AE5CBB70();
  }

  if (0x97B425ED097B426 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x97B425ED097B426 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0x84BDA12F684BDA13 * ((*(a1 + 16) - *a1) >> 3) >= 0x97B425ED097B42)
  {
    v5 = 0x12F684BDA12F684;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x12F684BDA12F684)
    {
      operator new();
    }

    sub_1AE5CB09C();
  }

  v11 = 8 * ((*(a1 + 8) - *a1) >> 3);
  *v11 = *a2;
  *(v11 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(v11 + 24) = *(a2 + 24);
  *(v11 + 32) = *(a2 + 32);
  *(v11 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(v11 + 56) = *(a2 + 56);
  *(v11 + 72) = *(a2 + 72);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(v11 + 80) = *(a2 + 80);
  *(v11 + 96) = *(a2 + 96);
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(v11 + 104) = *(a2 + 104);
  *(v11 + 120) = *(a2 + 120);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  *(v11 + 128) = *(a2 + 128);
  *(v11 + 144) = *(a2 + 144);
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(v11 + 152) = *(a2 + 152);
  *(v11 + 168) = *(a2 + 168);
  *(v11 + 184) = *(a2 + 184);
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(v11 + 192) = *(a2 + 192);
  *(v11 + 208) = *(a2 + 208);
  *(a2 + 184) = 0;
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  v6 = *(a1 + 8);
  v7 = 216 * v2 + *a1 - v6;
  sub_1AE6A83A0(a1, *a1, v6, v7);
  v8 = *a1;
  *a1 = v7;
  v9 = 216 * v2 + 216;
  *(a1 + 8) = v9;
  if (v8)
  {
    operator delete(v8);
    *&v9 = 216 * v2 + 216;
  }

  return *&v9;
}

uint64_t sub_1AE6A7188(uint64_t a1)
{
  sub_1AE61E5C8((a1 + 32));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1AE6A71C4(uint64_t a1)
{
  v6[14] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 72);
  v4 = a1;
  v3 = *(a1 + 80);
  v6[6] = v2;
  v6[7] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 32))(v6);
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }
  }

  sub_1AE6A2614(v5, v4, 0);
}

void sub_1AE6A7A60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, int a21, int a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a45 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE6A7B68(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    sub_1AE6A6F90(a1, a2);
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 16);
    *v3 = v4;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    *(v3 + 24) = *(a2 + 24);
    *(v3 + 40) = 0;
    *(v3 + 48) = 0;
    *(v3 + 32) = 0;
    *(v3 + 32) = *(a2 + 32);
    *(v3 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
    *(v3 + 72) = 0;
    *(v3 + 56) = *(a2 + 56);
    *(v3 + 72) = *(a2 + 72);
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(v3 + 80) = 0;
    *(v3 + 88) = 0;
    *(v3 + 96) = 0;
    *(v3 + 80) = *(a2 + 80);
    *(v3 + 96) = *(a2 + 96);
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
    *(a2 + 96) = 0;
    *(v3 + 104) = 0;
    *(v3 + 112) = 0;
    *(v3 + 120) = 0;
    *(v3 + 104) = *(a2 + 104);
    *(v3 + 120) = *(a2 + 120);
    *(a2 + 104) = 0;
    *(a2 + 112) = 0;
    *(a2 + 120) = 0;
    *(v3 + 128) = 0;
    *(v3 + 136) = 0;
    *(v3 + 144) = 0;
    *(v3 + 128) = *(a2 + 128);
    *(v3 + 144) = *(a2 + 144);
    *(a2 + 136) = 0;
    *(a2 + 144) = 0;
    *(a2 + 128) = 0;
    *(v3 + 152) = *(a2 + 152);
    *(v3 + 176) = 0;
    *(v3 + 184) = 0;
    *(v3 + 168) = 0;
    *(v3 + 168) = *(a2 + 168);
    *(v3 + 184) = *(a2 + 184);
    *(a2 + 168) = 0;
    *(a2 + 176) = 0;
    *(a2 + 184) = 0;
    *(v3 + 192) = 0;
    *(v3 + 200) = 0;
    *(v3 + 208) = 0;
    *(v3 + 192) = *(a2 + 192);
    *(v3 + 208) = *(a2 + 208);
    *(a2 + 192) = 0;
    *(a2 + 200) = 0;
    *(a2 + 208) = 0;
    v5 = v3 + 216;
  }

  *(a1 + 8) = v5;
}

void sub_1AE6A7CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *MEMORY[0x1E69E9840];
  cf = 0;
  v5 = a4;
  operator new();
}

void sub_1AE6A7DF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12)
{
  if (a2)
  {
    sub_1AE6090F0(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AE6A7E30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN17language_modeling2v133enumerateComparableLexiconEntriesIN2LM22CompositeLanguageModelEEEvRKT_RKNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEENS2_22TokenEnumerationPolicyEmRKNS7_8functionIFvPK10__CFStringjdNS2_13SourceLexiconEPK10__CFLocaleRbEEEEUlSK_jdSL_SO_SP_E_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN17language_modeling2v133enumerateComparableLexiconEntriesIN2LM22CompositeLanguageModelEEEvRKT_RKNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEENS2_22TokenEnumerationPolicyEmRKNS7_8functionIFvPK10__CFStringjdNS2_13SourceLexiconEPK10__CFLocaleRbEEEEUlSK_jdSL_SO_SP_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN17language_modeling2v133enumerateComparableLexiconEntriesIN2LM22CompositeLanguageModelEEEvRKT_RKNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEENS2_22TokenEnumerationPolicyEmRKNS7_8functionIFvPK10__CFStringjdNS2_13SourceLexiconEPK10__CFLocaleRbEEEEUlSK_jdSL_SO_SP_E_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN17language_modeling2v133enumerateComparableLexiconEntriesIN2LM22CompositeLanguageModelEEEvRKT_RKNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEENS2_22TokenEnumerationPolicyEmRKNS7_8functionIFvPK10__CFStringjdNS2_13SourceLexiconEPK10__CFLocaleRbEEEEUlSK_jdSL_SO_SP_E_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

CFComparisonResult sub_1AE6A7E9C(uint64_t a1, const __CFString **a2, int *a3, uint64_t *a4, int *a5, const __CFLocale **a6, uint64_t a7)
{
  v9 = *a2;
  v10 = *a3;
  v11 = *a4;
  v12 = *a5;
  v13 = *a6;
  v14 = *(a1 + 8);
  v15 = *v14;
  if (!*v14)
  {
    v16 = *(a1 + 16);
    v17 = *(v16 + 23);
    if (v17 < 0)
    {
      if (!*v16)
      {
        v15 = 0;
        *v14 = 0;
        goto LABEL_9;
      }

      v17 = *(v16 + 1);
      v16 = *v16;
    }

    v18 = CFStringCreateWithBytes(0, v16, v17, 0x8000100u, 0);
    v29 = v18;
    if (!v18)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2705EB0](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v15 = v18;
    v19 = *(a1 + 8);
    v20 = *v19;
    *v19 = v15;
    if (v20)
    {
      CFRelease(v20);
      v15 = **(a1 + 8);
    }
  }

LABEL_9:
  v30.length = CFStringGetLength(v15);
  v30.location = 0;
  result = CFStringCompareWithOptionsAndLocale(v15, v9, v30, **(a1 + 24), v13);
  if (result == kCFCompareEqualTo)
  {
    v22 = *(a1 + 32);
    v29 = v9;
    v28 = v10;
    v27 = v11;
    v26 = v12;
    v25 = v13;
    v23 = *(v22 + 24);
    if (!v23)
    {
      sub_1AE60819C();
    }

    return (*(*v23 + 48))(v23, &v29, &v28, &v27, &v26, &v25, a7);
  }

  return result;
}

void sub_1AE6A8034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1AE631068(va);
  _Unwind_Resume(a1);
}

__n128 sub_1AE6A8064(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2432C80;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1AE6A811C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN2LML24isPhraseMatchFromLexiconERKNS_22CompositeLanguageModelERKNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN2LML24isPhraseMatchFromLexiconERKNS_22CompositeLanguageModelERKNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN2LML24isPhraseMatchFromLexiconERKNS_22CompositeLanguageModelERKNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN2LML24isPhraseMatchFromLexiconERKNS_22CompositeLanguageModelERKNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_1AE6A8188(uint64_t a1, const __CFString **a2, uint64_t a3, double *a4, uint64_t a5, const __CFLocale **a6, _BYTE *a7)
{
  v8 = *a2;
  v9 = *a4;
  v10 = *a6;
  v11 = *(a1 + 8);
  v12 = **(a1 + 16);
  v13 = **(a1 + 24);
  Length = CFStringGetLength(v12);
  if (Length == CFStringGetLength(v8) && (v23.length = CFStringGetLength(v12), v23.location = 0, CFStringCompareWithOptionsAndLocale(v12, v8, v23, 0, v10) == kCFCompareEqualTo))
  {
    sub_1AE5CC874(v8, &v21);
    v18 = *v11;
    if (*(*v11 + 24) == 1)
    {
      if (*(v18 + 23) < 0)
      {
        operator delete(*v18);
      }

      v19 = v21;
      *(v18 + 16) = v22;
      *v18 = v19;
    }

    else
    {
      v20 = v21;
      *(v18 + 16) = v22;
      *v18 = v20;
      *(v18 + 24) = 1;
    }

    *a7 = 1;
  }

  else if (v13 < v9)
  {
    sub_1AE5CC874(v8, &v21);
    v15 = *v11;
    if (*(*v11 + 24) == 1)
    {
      if (*(v15 + 23) < 0)
      {
        operator delete(*v15);
      }

      v16 = v21;
      *(v15 + 16) = v22;
      *v15 = v16;
    }

    else
    {
      v17 = v21;
      *(v15 + 16) = v22;
      *v15 = v17;
      *(v15 + 24) = 1;
    }
  }
}

__n128 sub_1AE6A82F4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F242BD28;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1AE6A83A0(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      *(a4 + 24) = *(v6 + 6);
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 32) = 0;
      *(a4 + 32) = v6[2];
      *(a4 + 48) = *(v6 + 6);
      *(v6 + 4) = 0;
      *(v6 + 5) = 0;
      *(v6 + 6) = 0;
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 72) = 0;
      *(a4 + 56) = *(v6 + 56);
      *(a4 + 72) = *(v6 + 9);
      *(v6 + 7) = 0;
      *(v6 + 8) = 0;
      *(v6 + 9) = 0;
      *(a4 + 80) = 0;
      *(a4 + 88) = 0;
      *(a4 + 96) = 0;
      *(a4 + 80) = v6[5];
      *(a4 + 96) = *(v6 + 12);
      *(v6 + 10) = 0;
      *(v6 + 11) = 0;
      *(v6 + 12) = 0;
      *(a4 + 104) = 0;
      *(a4 + 112) = 0;
      *(a4 + 120) = 0;
      *(a4 + 104) = *(v6 + 104);
      *(a4 + 120) = *(v6 + 15);
      *(v6 + 13) = 0;
      *(v6 + 14) = 0;
      *(v6 + 15) = 0;
      *(a4 + 128) = 0;
      *(a4 + 136) = 0;
      *(a4 + 144) = 0;
      *(a4 + 128) = v6[8];
      *(a4 + 144) = *(v6 + 18);
      *(v6 + 17) = 0;
      *(v6 + 18) = 0;
      *(v6 + 16) = 0;
      *(a4 + 152) = *(v6 + 152);
      *(a4 + 176) = 0;
      *(a4 + 184) = 0;
      *(a4 + 168) = 0;
      *(a4 + 168) = *(v6 + 168);
      *(a4 + 184) = *(v6 + 23);
      *(v6 + 21) = 0;
      *(v6 + 22) = 0;
      *(v6 + 23) = 0;
      *(a4 + 192) = 0;
      *(a4 + 200) = 0;
      *(a4 + 208) = 0;
      *(a4 + 192) = v6[12];
      *(a4 + 208) = *(v6 + 26);
      *(v6 + 24) = 0;
      *(v6 + 25) = 0;
      *(v6 + 26) = 0;
      v6 = (v6 + 216);
      a4 += 216;
    }

    while (v6 != a3);
    do
    {
      sub_1AE61E5C8(v5 + 4);
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 = (v5 + 216);
    }

    while (v5 != a3);
  }
}

void sub_1AE6A8518(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, unsigned int a7, uint64_t a8, uint64_t a9)
{
  if (qword_1ED9AC958 != -1)
  {
    dispatch_once(&qword_1ED9AC958, &unk_1F242BDB8);
  }

  v14 = os_signpost_id_generate(qword_1ED9AC960);
  if (qword_1ED9AC958 != -1)
  {
    dispatch_once(&qword_1ED9AC958, &unk_1F242BDB8);
  }

  v15 = v14 - 1;
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v16 = qword_1ED9AC960;
    if (os_signpost_enabled(qword_1ED9AC960))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1AE5C8000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "ToucanGenerateInlineCompletions", &unk_1AE7CF046, buf, 2u);
    }
  }

  if (*a2 == a2[1])
  {
    __assert_rtn("generateCompletions", "MultiWordBeamSearchPredictor.cpp", 554, "!stems.empty()");
  }

  if (!a5 || !a6)
  {
    __assert_rtn("generateCompletions", "MultiWordBeamSearchPredictor.cpp", 555, "minWordsPerPrediction > 0 && maxWordsPerPrediction > 0");
  }

  if (a6 < a5)
  {
    __assert_rtn("generateCompletions", "MultiWordBeamSearchPredictor.cpp", 556, "maxWordsPerPrediction >= minWordsPerPrediction");
  }

  (*(*a1 + 32))(a1, a3, a2, a4, a5, a6, a7, a8, a9);
  if (qword_1ED9AC958 == -1)
  {
    if (v15 > 0xFFFFFFFFFFFFFFFDLL)
    {
      return;
    }
  }

  else
  {
    dispatch_once(&qword_1ED9AC958, &unk_1F242BDB8);
    if (v15 > 0xFFFFFFFFFFFFFFFDLL)
    {
      return;
    }
  }

  v17 = qword_1ED9AC960;
  if (os_signpost_enabled(qword_1ED9AC960))
  {
    *v21 = 0;
    _os_signpost_emit_with_name_impl(&dword_1AE5C8000, v17, OS_SIGNPOST_INTERVAL_END, v14, "ToucanGenerateInlineCompletions", &unk_1AE7CF046, v21, 2u);
  }
}

void sub_1AE6A8778(void *a1)
{
  sub_1AE6A87B0(a1);

  JUMPOUT(0x1B2706400);
}

void *sub_1AE6A87B0(void *a1)
{
  *a1 = &unk_1F24318D8;
  v2 = a1[26];
  if (v2)
  {
    a1[27] = v2;
    operator delete(v2);
  }

  sub_1AE6A8898(a1 + 9);
  v3 = a1[6];
  if (v3)
  {
    do
    {
      v4 = *v3;
      operator delete(v3);
      v3 = v4;
    }

    while (v4);
  }

  v5 = a1[4];
  a1[4] = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = a1[3];
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    v7 = a1[1];
    if (!v7)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v7 = a1[1];
  if (v7)
  {
LABEL_10:
    CFRelease(v7);
  }

LABEL_11:
  a1[1] = 0;
  return a1;
}

void *sub_1AE6A8898(void *a1)
{
  v2 = a1[14];
  if (v2)
  {
    do
    {
      v10 = *v2;
      v11 = v2[5];
      if (v11)
      {
        do
        {
          v12 = *v11;
          operator delete(v11);
          v11 = v12;
        }

        while (v12);
      }

      v13 = v2[3];
      v2[3] = 0;
      if (v13)
      {
        operator delete(v13);
      }

      operator delete(v2);
      v2 = v10;
    }

    while (v10);
  }

  v3 = a1[12];
  a1[12] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = a1[9];
  if (v4)
  {
    do
    {
      v14 = *v4;
      v15 = v4[5];
      if (v15)
      {
        do
        {
          v16 = *v15;
          operator delete(v15);
          v15 = v16;
        }

        while (v16);
      }

      v17 = v4[3];
      v4[3] = 0;
      if (v17)
      {
        operator delete(v17);
      }

      operator delete(v4);
      v4 = v14;
    }

    while (v14);
  }

  v5 = a1[7];
  a1[7] = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = a1[5];
  if (v6)
  {
    CFRelease(v6);
  }

  a1[5] = 0;
  v7 = a1[3];
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = a1[1];
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  return a1;
}

uint64_t *sub_1AE6A8A1C(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4, int a5, uint64_t a6, uint64_t a7, int a8)
{
  *a1 = &unk_1F24318D8;
  v15 = (a1 + 8);
  v16 = *(a6 + 23);
  if (v16 >= 0)
  {
    v17 = a6;
  }

  else
  {
    v17 = *a6;
  }

  if (v17)
  {
    if (v16 >= 0)
    {
      v18 = *(a6 + 23);
    }

    else
    {
      v18 = *(a6 + 8);
    }

    v17 = CFStringCreateWithBytes(0, v17, v18, 0x8000100u, 0);
    cf[0] = v17;
    if (!v17)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2705EB0](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    cf[0] = 0;
  }

  *v15 = CFLocaleCreate(*MEMORY[0x1E695E480], v17);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  v33 = a2;
  *(a1 + 16) = *a4;
  v20 = a4[1];
  *(a1 + 24) = v20;
  if (v20)
  {
    atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
  }

  v21 = 0;
  v22 = *a3;
  v34 = a1;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  v23 = a1 + 32;
  *(v23 + 32) = 1065353216;
  do
  {
    v24 = off_1E7A2E118[v21];
    v25 = strlen(v24);
    if (v25 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1AE5DB4F0();
    }

    v26 = v25;
    if (v25 >= 0x17)
    {
      operator new();
    }

    v39 = v25;
    if (v25)
    {
      memmove(&__dst, v24, v25);
    }

    *(&__dst + v26) = 0;
    v40 = 0;
    sub_1AE5CA7E0(cf, &__dst);
    v43 = v40;
    (*(*v22 + 16))(&v44, v22, cf);
    if (v42 < 0)
    {
      operator delete(cf[0]);
      if ((v39 & 0x80000000) == 0)
      {
        goto LABEL_25;
      }
    }

    else if ((v39 & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    operator delete(__dst);
LABEL_25:
    v27 = v44;
    if (v45 - v44 == 4)
    {
      sub_1AE69DDF4(v23, *v44);
      v27 = v44;
    }

    if (v27)
    {
      v45 = v27;
      operator delete(v27);
    }

    ++v21;
  }

  while (v21 != 5);
  v28 = v33[1];
  v36 = *v33;
  v37 = v28;
  if (v28)
  {
    atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
  }

  v29 = *a3;
  v30 = a3[1];
  if (v30)
  {
    atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1AE72EAA0(v34 + 9, &v36, v29, v30, a5, a6, a7, a8);
  if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v30->__on_zero_shared)(v30);
    std::__shared_weak_count::__release_weak(v30);
  }

  v31 = v37;
  if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v31->__on_zero_shared)(v31);
    std::__shared_weak_count::__release_weak(v31);
  }

  v34[26] = 0;
  v34[27] = 0;
  v34[28] = 0;
  return v34;
}

void sub_1AE6A8E04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, const void **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  sub_1AE622290(&a19);
  sub_1AE622290(&a21);
  sub_1AE5F6784(v35);
  sub_1AE622290(a10);
  sub_1AE622258(a11);
  _Unwind_Resume(a1);
}

os_log_t sub_1AE6A8EA4()
{
  result = os_log_create("com.apple.LanguageModeling", "Default");
  qword_1ED9AC9E0 = result;
  return result;
}

os_log_t sub_1AE6A8ED4()
{
  result = os_log_create("com.apple.LanguageModeling", "LanguageModelingSignposts");
  qword_1ED9AC960 = result;
  return result;
}

void sub_1AE6A8F04(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      do
      {
        v6 = *v2;
        if (*(v2 + 39) < 0)
        {
          operator delete(v2[2]);
        }

        operator delete(v2);
        v2 = v6;
      }

      while (v6);
    }

    *(a1 + 40) = 0;
    v3 = *(a1 + 32);
    if (v3)
    {
      bzero(*(a1 + 24), 8 * v3);
    }

    *(a1 + 48) = 0;
  }

  if (*(a1 + 88))
  {
    v4 = *(a1 + 80);
    if (v4)
    {
      do
      {
        v7 = *v4;
        if (*(v4 + 55) < 0)
        {
          operator delete(v4[4]);
        }

        operator delete(v4);
        v4 = v7;
      }

      while (v7);
    }

    *(a1 + 80) = 0;
    v5 = *(a1 + 72);
    if (v5)
    {
      bzero(*(a1 + 64), 8 * v5);
    }

    *(a1 + 88) = 0;
  }

  *(a1 + 112) = *(a1 + 104);
  *(a1 + 8) = *(a1 + 12);
  *(a1 + 152) = 0;
}

void sub_1AE6A8FE8(_BYTE *a1)
{
  if (a1[152] == 1)
  {
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterPostNotification(LocalCenter, @"VocabularyDidChange", a1, 0, 0);
    a1[152] = 0;
  }
}

void sub_1AE6A9038(const void *a1, const void *a2)
{
  LocalCenter = CFNotificationCenterGetLocalCenter();

  CFNotificationCenterRemoveObserver(LocalCenter, a2, @"VocabularyDidChange", a1);
}

void sub_1AE6A9080(const void *a1, const void *a2, void (__cdecl *a3)(CFNotificationCenterRef, void *, CFNotificationName, const void *, CFDictionaryRef))
{
  LocalCenter = CFNotificationCenterGetLocalCenter();

  CFNotificationCenterAddObserver(LocalCenter, a2, a3, @"VocabularyDidChange", a1, CFNotificationSuspensionBehaviorHold);
}

BOOL sub_1AE6A90DC(void *a1, unsigned int a2)
{
  v2 = a1[9];
  if (!v2)
  {
    goto LABEL_21;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(a1[8] + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_21:
    v10 = 0;
    return v10 && v10 == a2;
  }

  if (v3.u32[0] < 2uLL)
  {
    v7 = v2 - 1;
    while (1)
    {
      v8 = v6[1];
      if (v8 == a2)
      {
        if (*(v6 + 4) == a2)
        {
          goto LABEL_28;
        }
      }

      else if ((v8 & v7) != v4)
      {
        goto LABEL_21;
      }

      v6 = *v6;
      if (!v6)
      {
        goto LABEL_21;
      }
    }
  }

  while (1)
  {
    v9 = v6[1];
    if (v9 == a2)
    {
      break;
    }

    if (v9 >= v2)
    {
      v9 %= v2;
    }

    if (v9 != v4)
    {
      goto LABEL_21;
    }

LABEL_16:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_21;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_16;
  }

LABEL_28:
  v10 = *(a1[13] + 24 * *(v6 + 6));
  return v10 && v10 == a2;
}

void sub_1AE6A91D8(uint64_t a1, int a2, uint64_t a3, __n128 a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 104);
  v6 = *(a1 + 112);
  if (v5 == v6)
  {
    v9 = 0;
    v8 = 0;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v11 = *v5;
      v10 = v5[1];
      v12 = v5[2];
      *&v27 = *(v5 + 3);
      DWORD2(v27) = v5[5];
      v13 = v11 == v10 && v12 == a2;
      if (v13)
      {
        v14 = v9 - v8;
        v15 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 3);
        v16 = v15 + 1;
        if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_1AE5CBB70();
        }

        if (0x5555555555555556 * (-v8 >> 3) > v16)
        {
          v16 = 0x5555555555555556 * (-v8 >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * (-v8 >> 3) >= 0x555555555555555)
        {
          v17 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v17 = v16;
        }

        if (v17)
        {
          if (v17 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_1AE5CB09C();
        }

        v18 = 24 * v15;
        *v18 = v11;
        *(v18 + 4) = v11;
        *(v18 + 8) = a2;
        *(v18 + 12) = v27;
        *(v18 + 20) = DWORD2(v27);
        v9 = 24 * v15 + 24;
        v19 = (v18 + 24 * (v14 / -24));
        memcpy(v19, v8, v14);
        if (v8)
        {
          operator delete(v8);
        }

        v8 = v19;
      }

      v5 += 6;
    }

    while (v5 != v6);
  }

  v20 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 3));
  if (v9 == v8)
  {
    v21 = 0;
  }

  else
  {
    v21 = v20;
  }

  sub_1AE6A9488(v8, v9, v21, 1, a4);
  v26 = 0;
  if (v9 != v8)
  {
    v22 = v8 + 24;
    do
    {
      v23 = *(v22 - 24);
      v28 = *(v22 - 8);
      v27 = v23;
      v24 = v23;
      v25 = v28;
      (*(a3 + 16))(a3, &v24, &v26);
      if (v26)
      {
        break;
      }

      v13 = v22 == v9;
      v22 += 24;
    }

    while (!v13);
  }

  if (v8)
  {
    operator delete(v8);
  }
}

void sub_1AE6A9468(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_1AE6A9488(uint64_t a1, unint64_t a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = (a2 - 24);
  v10 = (a2 - 48);
  v11 = (a2 - 72);
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v12) >> 3);
    if (v14 > 2)
    {
      break;
    }

    if (v14 < 2)
    {
      return result;
    }

    if (v14 == 2)
    {
      result.n128_u64[0] = *(a2 - 8);
      if (result.n128_f64[0] <= *(v12 + 16))
      {
        return result;
      }

LABEL_111:
      v188 = *(v12 + 16);
      v160 = *v12;
      v88 = *v9;
      *(v12 + 16) = *(a2 - 8);
      *v12 = v88;
      result = v160;
      v89 = v188;
LABEL_112:
      *(a2 - 8) = v89;
      *v9 = result;
      return result;
    }

LABEL_9:
    if (v13 <= 575)
    {
      v93 = (v12 + 24);
      v95 = v12 == a2 || v93 == a2;
      if (a4)
      {
        if (!v95)
        {
          v96 = 0;
          v97 = v12;
          do
          {
            result.n128_u64[0] = *(v97 + 5);
            v99 = *(v97 + 2);
            v97 = v93;
            if (result.n128_f64[0] > v99)
            {
              v162 = *v93;
              v100 = v96;
              do
              {
                v101 = v12 + v100;
                *(v101 + 24) = *(v12 + v100);
                *(v101 + 40) = *(v12 + v100 + 16);
                if (!v100)
                {
                  v98 = v12;
                  goto LABEL_126;
                }

                v100 -= 24;
              }

              while (result.n128_f64[0] > *(v101 - 8));
              v98 = v12 + v100 + 24;
LABEL_126:
              *v98 = v162;
              *(v98 + 16) = result.n128_u64[0];
            }

            v93 = (v97 + 24);
            v96 += 24;
          }

          while ((v97 + 24) != a2);
        }
      }

      else if (!v95)
      {
        do
        {
          result.n128_u64[0] = *(a1 + 40);
          v132 = *(a1 + 16);
          a1 = v93;
          if (result.n128_f64[0] > v132)
          {
            v166 = *v93;
            v133 = v93;
            do
            {
              *v133 = *(v133 - 24);
              *(v133 + 2) = *(v133 - 1);
              v134 = *(v133 - 4);
              v133 = (v133 - 24);
            }

            while (result.n128_f64[0] > v134);
            *v133 = v166;
            *(v133 + 2) = result.n128_u64[0];
          }

          v93 = (v93 + 24);
        }

        while (a1 + 24 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v102 = (v14 - 2) >> 1;
        v103 = v102;
        do
        {
          if (v102 >= v103)
          {
            v105 = (2 * (v103 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
            v106 = v12 + 24 * v105;
            if (2 * v103 + 2 < v14 && *(v106 + 16) > *(v106 + 40))
            {
              v106 += 24;
              v105 = 2 * v103 + 2;
            }

            v107 = v12 + 24 * v103;
            v108 = *(v107 + 16);
            if (*(v106 + 16) <= v108)
            {
              v163 = *v107;
              do
              {
                v109 = v107;
                v107 = v106;
                v110 = *v106;
                *(v109 + 16) = *(v106 + 16);
                *v109 = v110;
                if (v102 < v105)
                {
                  break;
                }

                v111 = 2 * v105;
                v105 = (2 * v105) | 1;
                v106 = v12 + 24 * v105;
                v112 = v111 + 2;
                if (v112 < v14 && *(v106 + 16) > *(v106 + 40))
                {
                  v106 += 24;
                  v105 = v112;
                }
              }

              while (*(v106 + 16) <= v108);
              *v107 = v163;
              *(v107 + 16) = v108;
            }
          }

          v104 = v103-- <= 0;
        }

        while (!v104);
        v113 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
        do
        {
          v114 = 0;
          v190 = *(v12 + 16);
          v164 = *v12;
          v115 = v12;
          do
          {
            v121 = v115 + 24 * v114;
            v119 = (v121 + 24);
            v122 = (2 * v114) | 1;
            v114 = 2 * v114 + 2;
            if (v114 < v113)
            {
              v116 = *(v121 + 40);
              v117 = *(v121 + 64);
              v118 = (v121 + 48);
              if (v116 <= v117)
              {
                v114 = v122;
              }

              else
              {
                v119 = v118;
              }
            }

            else
            {
              v114 = v122;
            }

            v120 = *v119;
            *(v115 + 16) = v119[1].n128_u64[0];
            *v115 = v120;
            v115 = v119;
          }

          while (v114 <= ((v113 - 2) >> 1));
          a2 -= 24;
          if (v119 == a2)
          {
            result = v164;
            v119[1].n128_u64[0] = v190;
            *v119 = v164;
          }

          else
          {
            v123 = *a2;
            v119[1].n128_u64[0] = *(a2 + 16);
            *v119 = v123;
            result = v164;
            *(a2 + 16) = v190;
            *a2 = v164;
            v124 = &v119[1].n128_i64[1] - v12;
            if (v124 >= 25)
            {
              v125 = (-2 - 0x5555555555555555 * (v124 >> 3)) >> 1;
              v126 = v12 + 24 * v125;
              result.n128_u64[0] = v119[1].n128_u64[0];
              if (*(v126 + 16) > result.n128_f64[0])
              {
                v141 = *v119;
                do
                {
                  v127 = v119;
                  v119 = v126;
                  v128 = *v126;
                  v127[1].n128_u64[0] = *(v126 + 16);
                  *v127 = v128;
                  if (!v125)
                  {
                    break;
                  }

                  v125 = (v125 - 1) >> 1;
                  v126 = v12 + 24 * v125;
                }

                while (*(v126 + 16) > result.n128_f64[0]);
                *v119 = v141;
                v119[1].n128_u64[0] = result.n128_u64[0];
              }
            }
          }

          v104 = v113-- <= 2;
        }

        while (!v104);
      }

      return result;
    }

    v15 = v14 >> 1;
    v16 = (v12 + 24 * (v14 >> 1));
    v17 = *(a2 - 8);
    if (v13 < 0xC01)
    {
      v20 = *(v12 + 16);
      if (v20 > v16[1].n128_f64[0])
      {
        if (v17 > v20)
        {
          v171 = v16[1].n128_u64[0];
          v143 = *v16;
          v21 = *v9;
          v16[1].n128_u64[0] = *(a2 - 8);
          *v16 = v21;
          goto LABEL_36;
        }

        v178 = v16[1].n128_u64[0];
        v150 = *v16;
        result = *v12;
        v16[1].n128_u64[0] = *(v12 + 16);
        *v16 = result;
        result.n128_u64[1] = v150.n128_u64[1];
        *(v12 + 16) = v178;
        *v12 = v150;
        if (*(a2 - 8) > *(v12 + 16))
        {
          v171 = *(v12 + 16);
          v143 = *v12;
          v37 = *v9;
          *(v12 + 16) = *(a2 - 8);
          *v12 = v37;
LABEL_36:
          result.n128_u64[1] = v143.n128_u64[1];
          *(a2 - 8) = v171;
          *v9 = v143;
        }

LABEL_37:
        --a3;
        if ((a4 & 1) == 0)
        {
          goto LABEL_61;
        }

        goto LABEL_38;
      }

      if (v17 <= v20)
      {
        goto LABEL_37;
      }

      v174 = *(v12 + 16);
      v146 = *v12;
      result = *v9;
      *(v12 + 16) = *(a2 - 8);
      *v12 = result;
      result.n128_u64[1] = v146.n128_u64[1];
      *(a2 - 8) = v174;
      *v9 = v146;
      if (*(v12 + 16) <= v16[1].n128_f64[0])
      {
        goto LABEL_37;
      }

      v175 = v16[1].n128_u64[0];
      v147 = *v16;
      result = *v12;
      v16[1].n128_u64[0] = *(v12 + 16);
      *v16 = result;
      result.n128_u64[1] = v147.n128_u64[1];
      *(v12 + 16) = v175;
      *v12 = v147;
      --a3;
      if (a4)
      {
        goto LABEL_38;
      }

LABEL_61:
      result.n128_u64[0] = *(v12 + 16);
      if (*(v12 - 8) > result.n128_f64[0])
      {
        goto LABEL_62;
      }

      result = *v12;
      v140 = *v12;
      result.n128_u64[0] = *(v12 + 16);
      if (result.n128_f64[0] <= *(a2 - 8))
      {
        v77 = v12 + 24;
        do
        {
          v12 = v77;
          if (v77 >= a2)
          {
            break;
          }

          v78 = *(v77 + 16);
          v77 += 24;
        }

        while (result.n128_f64[0] <= v78);
      }

      else
      {
        v75 = v12;
        do
        {
          v12 = v75 + 24;
          v76 = *(v75 + 40);
          v75 += 24;
        }

        while (result.n128_f64[0] <= v76);
      }

      v79 = a2;
      if (v12 < a2)
      {
        v80 = a2;
        do
        {
          v79 = v80 - 24;
          v81 = *(v80 - 8);
          v80 -= 24;
        }

        while (result.n128_f64[0] > v81);
      }

      while (v12 < v79)
      {
        v187 = *(v12 + 16);
        v159 = *v12;
        v82 = *v79;
        *(v12 + 16) = *(v79 + 16);
        *v12 = v82;
        *(v79 + 16) = v187;
        *v79 = v159;
        do
        {
          v83 = *(v12 + 40);
          v12 += 24;
        }

        while (result.n128_f64[0] <= v83);
        do
        {
          v84 = *(v79 - 8);
          v79 -= 24;
        }

        while (result.n128_f64[0] > v84);
      }

      v85 = (v12 - 24);
      if (v12 - 24 != a1)
      {
        v86 = *v85;
        *(a1 + 16) = *(v12 - 8);
        *a1 = v86;
      }

      a4 = 0;
      *v85 = v140;
      *(v12 - 8) = result.n128_u64[0];
    }

    else
    {
      v18 = v16[1].n128_f64[0];
      if (v18 <= *(v12 + 16))
      {
        if (v17 > v18)
        {
          v172 = v16[1].n128_u64[0];
          v144 = *v16;
          v22 = *v9;
          v16[1].n128_u64[0] = *(a2 - 8);
          *v16 = v22;
          *(a2 - 8) = v172;
          *v9 = v144;
          if (v16[1].n128_f64[0] > *(v12 + 16))
          {
            v173 = *(v12 + 16);
            v145 = *v12;
            v23 = *v16;
            *(v12 + 16) = v16[1].n128_u64[0];
            *v12 = v23;
            v16[1].n128_u64[0] = v173;
            *v16 = v145;
          }
        }
      }

      else
      {
        if (v17 <= v18)
        {
          v176 = *(v12 + 16);
          v148 = *v12;
          v24 = *v16;
          *(v12 + 16) = v16[1].n128_u64[0];
          *v12 = v24;
          v16[1].n128_u64[0] = v176;
          *v16 = v148;
          if (*(a2 - 8) <= v16[1].n128_f64[0])
          {
            goto LABEL_28;
          }

          v170 = v16[1].n128_u64[0];
          v142 = *v16;
          v25 = *v9;
          v16[1].n128_u64[0] = *(a2 - 8);
          *v16 = v25;
        }

        else
        {
          v170 = *(v12 + 16);
          v142 = *v12;
          v19 = *v9;
          *(v12 + 16) = *(a2 - 8);
          *v12 = v19;
        }

        *(a2 - 8) = v170;
        *v9 = v142;
      }

LABEL_28:
      v26 = v12 + 24 * v15;
      v27 = (v26 - 24);
      v28 = *(v26 - 8);
      v29 = *(a2 - 32);
      if (v28 <= *(v12 + 40))
      {
        if (v29 > v28)
        {
          v177 = *(v26 - 8);
          v149 = *v27;
          v33 = *v10;
          *(v26 - 8) = *(a2 - 32);
          *v27 = v33;
          *(a2 - 32) = v177;
          *v10 = v149;
          if (*(v26 - 8) > *(v12 + 40))
          {
            v34 = *(v12 + 24);
            v35 = *(v12 + 40);
            v36 = v27[1].n128_i64[0];
            *(v12 + 24) = *v27;
            *(v12 + 40) = v36;
            v27[1].n128_u64[0] = v35;
            *v27 = v34;
          }
        }
      }

      else
      {
        if (v29 <= v28)
        {
          v38 = *(v12 + 24);
          v39 = *(v12 + 40);
          v40 = v27[1].n128_i64[0];
          *(v12 + 24) = *v27;
          *(v12 + 40) = v40;
          v27[1].n128_u64[0] = v39;
          *v27 = v38;
          if (*(a2 - 32) <= v27[1].n128_f64[0])
          {
            goto LABEL_42;
          }

          v179 = v27[1].n128_i64[0];
          v151 = *v27;
          v41 = *v10;
          v27[1].n128_u64[0] = *(a2 - 32);
          *v27 = v41;
          v30 = v151;
          v31 = v179;
        }

        else
        {
          v30 = *(v12 + 24);
          v31 = *(v12 + 40);
          v32 = *(a2 - 32);
          *(v12 + 24) = *v10;
          *(v12 + 40) = v32;
        }

        *(a2 - 32) = v31;
        *v10 = v30;
      }

LABEL_42:
      v42 = v12 + 24 * v15;
      v43 = *(v42 + 40);
      v44 = *(a2 - 56);
      if (v43 <= *(v12 + 64))
      {
        if (v44 > v43)
        {
          v180 = *(v42 + 40);
          v152 = *(v42 + 24);
          v48 = *v11;
          *(v42 + 40) = *(a2 - 56);
          *(v42 + 24) = v48;
          *(a2 - 56) = v180;
          *v11 = v152;
          if (*(v42 + 40) > *(v12 + 64))
          {
            v49 = *(v12 + 48);
            v50 = *(v12 + 64);
            v51 = *(v42 + 40);
            *(v12 + 48) = *(v42 + 24);
            *(v12 + 64) = v51;
            *(v42 + 40) = v50;
            *(v42 + 24) = v49;
          }
        }
      }

      else
      {
        if (v44 <= v43)
        {
          v52 = *(v12 + 48);
          v53 = *(v12 + 64);
          v54 = *(v42 + 40);
          *(v12 + 48) = *(v42 + 24);
          *(v12 + 64) = v54;
          *(v42 + 40) = v53;
          *(v42 + 24) = v52;
          if (*(a2 - 56) <= *(v42 + 40))
          {
            goto LABEL_51;
          }

          v181 = *(v42 + 40);
          v153 = *(v42 + 24);
          v55 = *v11;
          *(v42 + 40) = *(a2 - 56);
          *(v42 + 24) = v55;
          v45 = v153;
          v46 = v181;
        }

        else
        {
          v45 = *(v12 + 48);
          v46 = *(v12 + 64);
          v47 = *(a2 - 56);
          *(v12 + 48) = *v11;
          *(v12 + 64) = v47;
        }

        *(a2 - 56) = v46;
        *v11 = v45;
      }

LABEL_51:
      v56 = v16[1].n128_f64[0];
      v57 = *(v42 + 40);
      if (v56 <= v27[1].n128_f64[0])
      {
        if (v57 > v56)
        {
          v183 = v16[1].n128_u64[0];
          v155 = *v16;
          *v16 = *(v42 + 24);
          v16[1].n128_u64[0] = *(v42 + 40);
          *(v42 + 40) = v183;
          *(v42 + 24) = v155;
          if (v16[1].n128_f64[0] > v27[1].n128_f64[0])
          {
            v184 = v27[1].n128_u64[0];
            v156 = *v27;
            *v27 = *v16;
            v27[1].n128_u64[0] = v16[1].n128_u64[0];
            v16[1].n128_u64[0] = v184;
            *v16 = v156;
          }
        }
      }

      else
      {
        if (v57 <= v56)
        {
          v185 = v27[1].n128_u64[0];
          v157 = *v27;
          *v27 = *v16;
          v27[1].n128_u64[0] = v16[1].n128_u64[0];
          v16[1].n128_u64[0] = v185;
          *v16 = v157;
          if (*(v42 + 40) <= v16[1].n128_f64[0])
          {
            goto LABEL_60;
          }

          v182 = v16[1].n128_u64[0];
          v154 = *v16;
          *v16 = *(v42 + 24);
          v16[1].n128_u64[0] = *(v42 + 40);
        }

        else
        {
          v182 = v27[1].n128_u64[0];
          v154 = *v27;
          *v27 = *(v42 + 24);
          v27[1].n128_u64[0] = *(v42 + 40);
        }

        *(v42 + 40) = v182;
        *(v42 + 24) = v154;
      }

LABEL_60:
      v186 = *(v12 + 16);
      v158 = *v12;
      result = *v16;
      *(v12 + 16) = v16[1].n128_u64[0];
      *v12 = result;
      result.n128_u64[1] = v158.n128_u64[1];
      v16[1].n128_u64[0] = v186;
      *v16 = v158;
      --a3;
      if ((a4 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_38:
      result.n128_u64[0] = *(v12 + 16);
LABEL_62:
      v139 = *v12;
      v58 = v12;
      do
      {
        v59 = v58;
        v58 += 24;
      }

      while (*(v59 + 40) > result.n128_f64[0]);
      v60 = a2;
      if (v59 == v12)
      {
        v63 = a2;
        while (v58 < v63)
        {
          v61 = v63 - 24;
          v64 = *(v63 - 8);
          v63 -= 24;
          if (v64 > result.n128_f64[0])
          {
            goto LABEL_72;
          }
        }

        v61 = v63;
      }

      else
      {
        do
        {
          v61 = v60 - 24;
          v62 = *(v60 - 8);
          v60 -= 24;
        }

        while (v62 <= result.n128_f64[0]);
      }

LABEL_72:
      v12 = v58;
      if (v58 < v61)
      {
        v65 = v61;
        do
        {
          v66 = *v12;
          v67 = *(v12 + 16);
          v68 = *(v65 + 16);
          *v12 = *v65;
          *(v12 + 16) = v68;
          *(v65 + 16) = v67;
          *v65 = v66;
          do
          {
            v69 = *(v12 + 40);
            v12 += 24;
          }

          while (v69 > result.n128_f64[0]);
          do
          {
            v70 = *(v65 - 8);
            v65 -= 24;
          }

          while (v70 <= result.n128_f64[0]);
        }

        while (v12 < v65);
      }

      v71 = (v12 - 24);
      if (v12 - 24 != a1)
      {
        v72 = *v71;
        *(a1 + 16) = *(v12 - 8);
        *a1 = v72;
      }

      *v71 = v139;
      *(v12 - 8) = result.n128_u64[0];
      if (v58 < v61)
      {
        goto LABEL_83;
      }

      v73 = sub_1AE6AA6B4(a1, v12 - 24, result);
      if (sub_1AE6AA6B4(v12, a2, v74))
      {
        a2 = v12 - 24;
        if (!v73)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v73)
      {
LABEL_83:
        sub_1AE6A9488(a1, v12 - 24, a3, a4 & 1);
        a4 = 0;
      }
    }
  }

  if (v14 != 3)
  {
    if (v14 == 4)
    {
      v90 = *(v12 + 40);
      v91 = *(v12 + 64);
      if (v90 <= *(v12 + 16))
      {
        if (v91 > v90)
        {
          v131 = *(v12 + 40);
          result = *(v12 + 24);
          *(v12 + 24) = *(v12 + 48);
          *(v12 + 40) = *(v12 + 64);
          *(v12 + 48) = result;
          *(v12 + 64) = v131;
          if (*(v12 + 40) > *(v12 + 16))
          {
            v191 = *(v12 + 16);
            v165 = *v12;
            *v12 = *(v12 + 24);
            *(v12 + 16) = *(v12 + 40);
            result.n128_u64[1] = v165.n128_u64[1];
            *(v12 + 24) = v165;
            *(v12 + 40) = v191;
          }
        }
      }

      else
      {
        if (v91 > v90)
        {
          v189 = *(v12 + 16);
          v161 = *v12;
          *v12 = *(v12 + 48);
          *(v12 + 16) = *(v12 + 64);
          result.n128_u64[1] = v161.n128_u64[1];
          *(v12 + 48) = v161;
          v92 = v189;
          goto LABEL_181;
        }

        v193 = *(v12 + 16);
        v168 = *v12;
        *v12 = *(v12 + 24);
        *(v12 + 16) = *(v12 + 40);
        result.n128_u64[1] = v168.n128_u64[1];
        *(v12 + 24) = v168;
        *(v12 + 40) = v193;
        if (*(v12 + 64) > *(v12 + 40))
        {
          v92 = *(v12 + 40);
          result = *(v12 + 24);
          *(v12 + 24) = *(v12 + 48);
          *(v12 + 40) = *(v12 + 64);
          *(v12 + 48) = result;
LABEL_181:
          *(v12 + 64) = v92;
        }
      }

      result.n128_u64[0] = *(a2 - 8);
      if (result.n128_f64[0] <= *(v12 + 64))
      {
        return result;
      }

      result = *(v12 + 48);
      v136 = *(v12 + 64);
      v137 = *(a2 - 8);
      *(v12 + 48) = *v9;
      *(v12 + 64) = v137;
      *(a2 - 8) = v136;
      *v9 = result;
      result.n128_u64[0] = *(v12 + 64);
      if (result.n128_f64[0] <= *(v12 + 40))
      {
        return result;
      }

      v138 = *(v12 + 40);
      result = *(v12 + 24);
      *(v12 + 24) = *(v12 + 48);
      *(v12 + 40) = *(v12 + 64);
      *(v12 + 48) = result;
      *(v12 + 64) = v138;
LABEL_185:
      result.n128_u64[0] = *(v12 + 40);
      if (result.n128_f64[0] > *(v12 + 16))
      {
        v194 = *(v12 + 16);
        v169 = *v12;
        *v12 = *(v12 + 24);
        *(v12 + 16) = *(v12 + 40);
        result = v169;
        *(v12 + 24) = v169;
        *(v12 + 40) = v194;
      }

      return result;
    }

    if (v14 == 5)
    {

      result.n128_u64[0] = sub_1AE6AA46C(v12, (v12 + 24), (v12 + 48), (v12 + 72), (a2 - 24), result).n128_u64[0];
      return result;
    }

    goto LABEL_9;
  }

  result.n128_u64[0] = *(v12 + 40);
  v87 = *(a2 - 8);
  if (result.n128_f64[0] <= *(v12 + 16))
  {
    if (v87 <= result.n128_f64[0])
    {
      return result;
    }

    result = *(v12 + 24);
    v129 = *(v12 + 40);
    v130 = *(a2 - 8);
    *(v12 + 24) = *v9;
    *(v12 + 40) = v130;
    *(a2 - 8) = v129;
    *v9 = result;
    goto LABEL_185;
  }

  if (v87 > result.n128_f64[0])
  {
    goto LABEL_111;
  }

  v192 = *(v12 + 16);
  v167 = *v12;
  *v12 = *(v12 + 24);
  *(v12 + 16) = *(v12 + 40);
  result.n128_u64[1] = v167.n128_u64[1];
  *(v12 + 24) = v167;
  *(v12 + 40) = v192;
  result.n128_u64[0] = *(a2 - 8);
  if (result.n128_f64[0] > *(v12 + 40))
  {
    result = *(v12 + 24);
    v89 = *(v12 + 40);
    v135 = *(a2 - 8);
    *(v12 + 24) = *v9;
    *(v12 + 40) = v135;
    goto LABEL_112;
  }

  return result;
}

__n128 sub_1AE6AA46C(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, __n128 result)
{
  v6 = a2[1].n128_f64[0];
  v7 = a3[1].n128_f64[0];
  if (v6 <= a1[1].n128_f64[0])
  {
    if (v7 > v6)
    {
      v10 = a2[1].n128_u64[0];
      result = *a2;
      v11 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v11;
      *a3 = result;
      a3[1].n128_u64[0] = v10;
      if (a2[1].n128_f64[0] > a1[1].n128_f64[0])
      {
        v12 = a1[1].n128_u64[0];
        result = *a1;
        v13 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v13;
        *a2 = result;
        a2[1].n128_u64[0] = v12;
      }
    }
  }

  else
  {
    if (v7 > v6)
    {
      v8 = a1[1].n128_u64[0];
      result = *a1;
      v9 = a3[1].n128_u64[0];
      *a1 = *a3;
      a1[1].n128_u64[0] = v9;
LABEL_9:
      *a3 = result;
      a3[1].n128_u64[0] = v8;
      goto LABEL_10;
    }

    v14 = a1[1].n128_u64[0];
    result = *a1;
    v15 = a2[1].n128_u64[0];
    *a1 = *a2;
    a1[1].n128_u64[0] = v15;
    *a2 = result;
    a2[1].n128_u64[0] = v14;
    if (a3[1].n128_f64[0] > a2[1].n128_f64[0])
    {
      v8 = a2[1].n128_u64[0];
      result = *a2;
      v16 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v16;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (a4[1].n128_f64[0] > a3[1].n128_f64[0])
  {
    v17 = a3[1].n128_u64[0];
    result = *a3;
    v18 = a4[1].n128_u64[0];
    *a3 = *a4;
    a3[1].n128_u64[0] = v18;
    *a4 = result;
    a4[1].n128_u64[0] = v17;
    if (a3[1].n128_f64[0] > a2[1].n128_f64[0])
    {
      v19 = a2[1].n128_u64[0];
      result = *a2;
      v20 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v20;
      *a3 = result;
      a3[1].n128_u64[0] = v19;
      if (a2[1].n128_f64[0] > a1[1].n128_f64[0])
      {
        v21 = a1[1].n128_u64[0];
        result = *a1;
        v22 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v22;
        *a2 = result;
        a2[1].n128_u64[0] = v21;
      }
    }
  }

  result.n128_u64[0] = a5[1].n128_u64[0];
  if (result.n128_f64[0] > a4[1].n128_f64[0])
  {
    v23 = a4[1].n128_i64[0];
    result = *a4;
    v24 = a5[1].n128_u64[0];
    *a4 = *a5;
    a4[1].n128_u64[0] = v24;
    *a5 = result;
    a5[1].n128_u64[0] = v23;
    result.n128_u64[0] = a4[1].n128_u64[0];
    if (result.n128_f64[0] > a3[1].n128_f64[0])
    {
      v25 = a3[1].n128_u64[0];
      result = *a3;
      v26 = a4[1].n128_u64[0];
      *a3 = *a4;
      a3[1].n128_u64[0] = v26;
      *a4 = result;
      a4[1].n128_u64[0] = v25;
      result.n128_u64[0] = a3[1].n128_u64[0];
      if (result.n128_f64[0] > a2[1].n128_f64[0])
      {
        v27 = a2[1].n128_u64[0];
        result = *a2;
        v28 = a3[1].n128_u64[0];
        *a2 = *a3;
        a2[1].n128_u64[0] = v28;
        *a3 = result;
        a3[1].n128_u64[0] = v27;
        result.n128_u64[0] = a2[1].n128_u64[0];
        if (result.n128_f64[0] > a1[1].n128_f64[0])
        {
          v29 = a1[1].n128_u64[0];
          result = *a1;
          v30 = a2[1].n128_u64[0];
          *a1 = *a2;
          a1[1].n128_u64[0] = v30;
          *a2 = result;
          a2[1].n128_u64[0] = v29;
        }
      }
    }
  }

  return result;
}

BOOL sub_1AE6AA6B4(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v7 = (a2 - 24);
      v8 = *(a1 + 40);
      v9 = *(a2 - 8);
      if (v8 > *(a1 + 16))
      {
        if (v9 <= v8)
        {
          v35 = *(a1 + 16);
          v36 = *a1;
          *a1 = *(a1 + 24);
          *(a1 + 16) = *(a1 + 40);
          *(a1 + 24) = v36;
          *(a1 + 40) = v35;
          if (*(a2 - 8) <= *(a1 + 40))
          {
            return 1;
          }

          v10 = *(a1 + 40);
          v11 = *(a1 + 24);
          v37 = *(a2 - 8);
          *(a1 + 24) = *v7;
          *(a1 + 40) = v37;
        }

        else
        {
          v10 = *(a1 + 16);
          v11 = *a1;
          v12 = *(a2 - 8);
          *a1 = *v7;
          *(a1 + 16) = v12;
        }

        *v7 = v11;
        *(a2 - 8) = v10;
        return 1;
      }

      if (v9 <= v8)
      {
        return 1;
      }

      v24 = *(a1 + 40);
      v25 = *(a1 + 24);
      v26 = *(a2 - 8);
      *(a1 + 24) = *v7;
      *(a1 + 40) = v26;
      *v7 = v25;
      *(a2 - 8) = v24;
LABEL_49:
      if (*(a1 + 40) > *(a1 + 16))
      {
        v55 = *(a1 + 16);
        v56 = *a1;
        *a1 = *(a1 + 24);
        *(a1 + 16) = *(a1 + 40);
        *(a1 + 24) = v56;
        *(a1 + 40) = v55;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      sub_1AE6AA46C(a1, (a1 + 24), (a1 + 48), (a1 + 72), (a2 - 24), a3);
      return 1;
    }

    v19 = *(a1 + 40);
    v20 = *(a1 + 16);
    v21 = *(a1 + 64);
    if (v19 <= v20)
    {
      if (v21 > v19)
      {
        v31 = *(a1 + 40);
        v32 = *(a1 + 24);
        *(a1 + 24) = *(a1 + 48);
        *(a1 + 40) = *(a1 + 64);
        *(a1 + 48) = v32;
        *(a1 + 64) = v31;
        if (*(a1 + 40) > v20)
        {
          v33 = *(a1 + 16);
          v34 = *a1;
          *a1 = *(a1 + 24);
          *(a1 + 16) = *(a1 + 40);
          *(a1 + 24) = v34;
          *(a1 + 40) = v33;
        }
      }

      goto LABEL_46;
    }

    if (v21 <= v19)
    {
      v47 = *(a1 + 16);
      v48 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v48;
      *(a1 + 40) = v47;
      if (v21 <= *(a1 + 40))
      {
        goto LABEL_46;
      }

      v22 = *(a1 + 40);
      v23 = *(a1 + 24);
      *(a1 + 24) = *(a1 + 48);
      *(a1 + 40) = *(a1 + 64);
    }

    else
    {
      v22 = *(a1 + 16);
      v23 = *a1;
      *a1 = *(a1 + 48);
      *(a1 + 16) = *(a1 + 64);
    }

    *(a1 + 48) = v23;
    *(a1 + 64) = v22;
LABEL_46:
    if (*(a2 - 8) <= *(a1 + 64))
    {
      return 1;
    }

    v49 = a2 - 24;
    v50 = *(a1 + 64);
    v51 = *(a1 + 48);
    v52 = *(a2 - 8);
    *(a1 + 48) = *(a2 - 24);
    *(a1 + 64) = v52;
    *v49 = v51;
    *(v49 + 16) = v50;
    if (*(a1 + 64) <= *(a1 + 40))
    {
      return 1;
    }

    v53 = *(a1 + 40);
    v54 = *(a1 + 24);
    *(a1 + 24) = *(a1 + 48);
    *(a1 + 40) = *(a1 + 64);
    *(a1 + 48) = v54;
    *(a1 + 64) = v53;
    goto LABEL_49;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    if (*(a2 - 8) > *(a1 + 16))
    {
      v4 = *(a1 + 16);
      v5 = *a1;
      v6 = *(a2 - 8);
      *a1 = *(a2 - 24);
      *(a1 + 16) = v6;
      *(a2 - 24) = v5;
      *(a2 - 8) = v4;
    }

    return 1;
  }

LABEL_13:
  v13 = a1 + 48;
  v14 = *(a1 + 40);
  v15 = *(a1 + 16);
  v16 = *(a1 + 64);
  if (v14 <= v15)
  {
    if (v16 > v14)
    {
      v27 = *(a1 + 40);
      v28 = *(a1 + 24);
      *(a1 + 24) = *v13;
      *(a1 + 40) = *(a1 + 64);
      *v13 = v28;
      *(a1 + 64) = v27;
      if (*(a1 + 40) > v15)
      {
        v29 = *(a1 + 16);
        v30 = *a1;
        *a1 = *(a1 + 24);
        *(a1 + 16) = *(a1 + 40);
        *(a1 + 24) = v30;
        *(a1 + 40) = v29;
      }
    }
  }

  else
  {
    if (v16 <= v14)
    {
      v38 = *(a1 + 16);
      v39 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v39;
      *(a1 + 40) = v38;
      if (v16 <= *(a1 + 40))
      {
        goto LABEL_33;
      }

      v17 = *(a1 + 40);
      v18 = *(a1 + 24);
      *(a1 + 24) = *v13;
      *(a1 + 40) = *(a1 + 64);
    }

    else
    {
      v17 = *(a1 + 16);
      v18 = *a1;
      *a1 = *v13;
      *(a1 + 16) = *(a1 + 64);
    }

    *v13 = v18;
    *(a1 + 64) = v17;
  }

LABEL_33:
  v40 = a1 + 72;
  if (a1 + 72 == a2)
  {
    return 1;
  }

  v41 = 0;
  v42 = 0;
  while (1)
  {
    v44 = *(v40 + 16);
    if (v44 > *(v13 + 16))
    {
      v58 = *v40;
      v45 = v41;
      do
      {
        v46 = a1 + v45;
        *(v46 + 72) = *(a1 + v45 + 48);
        *(v46 + 88) = *(a1 + v45 + 64);
        if (v45 == -48)
        {
          v43 = a1;
          goto LABEL_36;
        }

        v45 -= 24;
      }

      while (v44 > *(v46 + 40));
      v43 = a1 + v45 + 72;
LABEL_36:
      *v43 = v58;
      *(v43 + 16) = v44;
      if (++v42 == 8)
      {
        return v40 + 24 == a2;
      }
    }

    v13 = v40;
    v41 += 24;
    v40 += 24;
    if (v40 == a2)
    {
      return 1;
    }
  }
}

double sub_1AE6AAB50(void *a1, unsigned int a2)
{
  v2 = a1[9];
  result = 0.0;
  if (v2)
  {
    v4 = vcnt_s8(v2);
    v4.i16[0] = vaddlv_u8(v4);
    if (v4.u32[0] > 1uLL)
    {
      v5 = a2;
      if (v2 <= a2)
      {
        v5 = a2 % v2;
      }
    }

    else
    {
      v5 = (v2 - 1) & a2;
    }

    v6 = *(a1[8] + 8 * v5);
    if (v6)
    {
      v7 = *v6;
      if (v7)
      {
        if (v4.u32[0] < 2uLL)
        {
          v8 = v2 - 1;
          while (1)
          {
            v9 = v7[1];
            if (v9 == a2)
            {
              if (*(v7 + 4) == a2)
              {
                return *(a1[13] + 24 * *(v7 + 6) + 16);
              }
            }

            else if ((v9 & v8) != v5)
            {
              return result;
            }

            v7 = *v7;
            if (!v7)
            {
              return result;
            }
          }
        }

        do
        {
          v10 = v7[1];
          if (v10 == a2)
          {
            if (*(v7 + 4) == a2)
            {
              return *(a1[13] + 24 * *(v7 + 6) + 16);
            }
          }

          else
          {
            if (v10 >= v2)
            {
              v10 %= v2;
            }

            if (v10 != v5)
            {
              return result;
            }
          }

          v7 = *v7;
        }

        while (v7);
      }
    }
  }

  return result;
}

uint64_t sub_1AE6AAC40(void *a1, unsigned int a2)
{
  v2 = a1[9];
  if (!v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(a1[8] + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  v6 = *v5;
  if (!v6)
  {
    return 0;
  }

  if (v3.u32[0] < 2uLL)
  {
    v7 = v2 - 1;
    while (1)
    {
      v8 = v6[1];
      if (v8 == a2)
      {
        if (*(v6 + 4) == a2)
        {
          return *(a1[13] + 24 * *(v6 + 6) + 8);
        }
      }

      else if ((v8 & v7) != v4)
      {
        return 0;
      }

      v6 = *v6;
      if (!v6)
      {
        return 0;
      }
    }
  }

  while (1)
  {
    v9 = v6[1];
    if (v9 == a2)
    {
      break;
    }

    if (v9 >= v2)
    {
      v9 %= v2;
    }

    if (v9 != v4)
    {
      return 0;
    }

LABEL_16:
    v6 = *v6;
    if (!v6)
    {
      return 0;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_16;
  }

  return *(a1[13] + 24 * *(v6 + 6) + 8);
}

uint64_t sub_1AE6AAD30(void *a1, unsigned int a2)
{
  v2 = a1[9];
  if (!v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(a1[8] + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  v6 = *v5;
  if (!v6)
  {
    return 0;
  }

  if (v3.u32[0] < 2uLL)
  {
    v7 = v2 - 1;
    while (1)
    {
      v8 = v6[1];
      if (v8 == a2)
      {
        if (*(v6 + 4) == a2)
        {
          return *(a1[13] + 24 * *(v6 + 6));
        }
      }

      else if ((v8 & v7) != v4)
      {
        return 0;
      }

      v6 = *v6;
      if (!v6)
      {
        return 0;
      }
    }
  }

  while (1)
  {
    v9 = v6[1];
    if (v9 == a2)
    {
      break;
    }

    if (v9 >= v2)
    {
      v9 %= v2;
    }

    if (v9 != v4)
    {
      return 0;
    }

LABEL_16:
    v6 = *v6;
    if (!v6)
    {
      return 0;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_16;
  }

  return *(a1[13] + 24 * *(v6 + 6));
}

uint64_t **sub_1AE6AAE20(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    *a3 = 0;
  }

  result = sub_1AE6AAE78((a1 + 24), a2);
  if (result)
  {
    v6 = *(a1 + 104) + 24 * *(result + 10);
    if (a3)
    {
      *a3 = *(v6 + 16);
    }

    return *(v6 + 4);
  }

  return result;
}

uint64_t **sub_1AE6AAE78(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_1AE5DA928(&v25, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    v13 = v2[23];
    if (v13 >= 0)
    {
      v14 = v2[23];
    }

    else
    {
      v14 = *(v2 + 1);
    }

    if (v13 < 0)
    {
      v2 = *v2;
    }

    if (v9.u32[0] < 2uLL)
    {
      v15 = *&v7 - 1;
      while (1)
      {
        v20 = v12[1];
        if (v8 == v20)
        {
          v21 = *(v12 + 39);
          v22 = v21;
          if (v21 < 0)
          {
            v21 = v12[3];
          }

          if (v21 == v14)
          {
            v23 = v22 >= 0 ? (v12 + 2) : v12[2];
            if (!memcmp(v23, v2, v14))
            {
              return v12;
            }
          }
        }

        else if ((v20 & v15) != v10)
        {
          return 0;
        }

        v12 = *v12;
        if (!v12)
        {
          return v12;
        }
      }
    }

    do
    {
      v16 = v12[1];
      if (v8 == v16)
      {
        v17 = *(v12 + 39);
        v18 = v17;
        if (v17 < 0)
        {
          v17 = v12[3];
        }

        if (v17 == v14)
        {
          v19 = v18 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v19, v2, v14))
          {
            return v12;
          }
        }
      }

      else
      {
        if (v16 >= *&v7)
        {
          v16 %= *&v7;
        }

        if (v16 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

uint64_t sub_1AE6AB030(uint64_t a1, const __CFString *a2, void *a3)
{
  sub_1AE5CC874(a2, __p);
  if (a3)
  {
    *a3 = 0;
  }

  v5 = sub_1AE6AAE78((a1 + 24), __p);
  if (!v5)
  {
    v7 = 0;
    if ((v10 & 0x80000000) == 0)
    {
      return v7;
    }

    goto LABEL_7;
  }

  v6 = *(a1 + 104) + 24 * *(v5 + 10);
  if (a3)
  {
    *a3 = *(v6 + 16);
  }

  v7 = *(v6 + 4);
  if (v10 < 0)
  {
LABEL_7:
    operator delete(__p[0]);
  }

  return v7;
}

void *sub_1AE6AB0C4@<X0>(void *result@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = result[9];
  if (!v3)
  {
    goto LABEL_21;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (v3 <= a2)
    {
      v5 = a2 % v3;
    }
  }

  else
  {
    v5 = (v3 - 1) & a2;
  }

  v6 = *(result[8] + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_21:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    return result;
  }

  if (v4.u32[0] < 2uLL)
  {
    v8 = v3 - 1;
    while (1)
    {
      v9 = v7[1];
      if (v9 == a2)
      {
        if (*(v7 + 4) == a2)
        {
          goto LABEL_22;
        }
      }

      else if ((v9 & v8) != v5)
      {
        goto LABEL_21;
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_21;
      }
    }
  }

  while (1)
  {
    v10 = v7[1];
    if (v10 == a2)
    {
      break;
    }

    if (v10 >= v3)
    {
      v10 %= v3;
    }

    if (v10 != v5)
    {
      goto LABEL_21;
    }

LABEL_16:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_21;
    }
  }

  if (*(v7 + 4) != a2)
  {
    goto LABEL_16;
  }

LABEL_22:
  if (*(v7 + 55) < 0)
  {
    return sub_1AE5DBF1C(a3, v7[4], v7[5]);
  }

  v11 = *(v7 + 2);
  *(a3 + 16) = v7[6];
  *a3 = v11;
  return result;
}

void sub_1AE6AB1C8(void *a1, unsigned int a2, uint64_t a3)
{
  sub_1AE6AB0C4(a1, a2, v21);
  v5 = sub_1AE6AAE78(a1 + 3, v21);
  if (v5)
  {
    v6 = (a1[13] + 24 * *(v5 + 10));
    if (v6[1] == *v6)
    {
      v20 = 0;
      sub_1AE67C768(&__p, a1 + 16, v21, v6[2]);
      v7 = __p;
      v8 = v19;
      if (__p != v19)
      {
        do
        {
          v9 = sub_1AE6AAE78(a1 + 3, v7);
          if (v9)
          {
            v10 = v9;
            v11 = *(v7 + 23);
            if (v11 < 0)
            {
              v12 = *v7;
              v11 = v7[1];
            }

            else
            {
              v12 = v7;
            }

            v13 = sub_1AE61D700(v12, v11);
            (*(a3 + 16))(a3, v13, *(a1[13] + 24 * *(v10 + 10) + 4), &v20);
            v14 = v20;
            if (v13)
            {
              CFRelease(v13);
            }

            if (v14)
            {
              break;
            }
          }

          v7 += 3;
        }

        while (v7 != v8);
        v7 = __p;
      }

      if (v7)
      {
        v15 = v19;
        v16 = v7;
        if (v19 != v7)
        {
          do
          {
            v17 = *(v15 - 1);
            v15 -= 3;
            if (v17 < 0)
            {
              operator delete(*v15);
            }
          }

          while (v15 != v7);
          v16 = __p;
        }

        v19 = v7;
        operator delete(v16);
      }
    }
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
  }
}

void sub_1AE6AB344(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **sub_1AE6AB384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  if (a2 && a3)
  {
    v33 = a1;
    __p = 0;
    v35 = 0;
    v36 = 0;
    if (a3 >= 1)
    {
      for (i = 0; i < a3; ++i)
      {
        v9 = *(a2 + 2 * i);
        if ((v9 & 0xFC00) == 0xD800 && i < a3 - 1)
        {
          v11 = *(a2 + 2 * (i + 1));
          v12 = (v11 & 0xFC00) == 56320;
          v13 = v11 + (v9 << 10) - 56613888;
          if (v12)
          {
            v9 = v13;
          }

          if (v12)
          {
            ++i;
          }
        }

        if (v9 > 0x7F)
        {
          if (v9 > 0x7FF)
          {
            if (HIWORD(v9))
            {
              v14 = (v9 >> 18) | 0xFFFFFFF0;
              v38 = (v9 >> 12) & 0x3F | 0x80;
              v20 = v39;
              v17 = 3;
            }

            else
            {
              v14 = (v9 >> 12) | 0xFFFFFFE0;
              v20 = &v38;
              v17 = 2;
            }

            v37 = v14;
            *v20 = (v9 >> 6) & 0x3F | 0x80;
          }

          else
          {
            v14 = (v9 >> 6) | 0xFFFFFFC0;
            v37 = (v9 >> 6) | 0xC0;
            v17 = 1;
          }

          v15 = v17 + 1;
          *(&v37 + v17) = v9 & 0x3F | 0x80;
          v16 = HIBYTE(v36);
          if (SHIBYTE(v36) < 0)
          {
LABEL_30:
            v21 = (v36 & 0x7FFFFFFFFFFFFFFFLL) - 1;
            if (v35 == v21)
            {
              if ((v36 & 0x7FFFFFFFFFFFFFFFLL) != 0x7FFFFFFFFFFFFFF8)
              {
LABEL_32:
                operator new();
              }

              goto LABEL_65;
            }

            p_p = __p;
            v18 = v35++;
            goto LABEL_34;
          }
        }

        else
        {
          v37 = v9;
          LOBYTE(v14) = v9;
          v15 = 1;
          v16 = HIBYTE(v36);
          if (SHIBYTE(v36) < 0)
          {
            goto LABEL_30;
          }
        }

        if (v16 == 22)
        {
          goto LABEL_32;
        }

        v18 = v16;
        HIBYTE(v36) = (v16 + 1) & 0x7F;
        p_p = &__p;
LABEL_34:
        v22 = &p_p[v18];
        *v22 = v14;
        v22[1] = 0;
        if (v15 != 1)
        {
          if (SHIBYTE(v36) < 0)
          {
            v23 = (v36 & 0x7FFFFFFFFFFFFFFFLL) - 1;
            if (v35 == v23)
            {
              if ((v36 & 0x7FFFFFFFFFFFFFFFLL) != 0x7FFFFFFFFFFFFFF8)
              {
LABEL_40:
                operator new();
              }

              goto LABEL_65;
            }

            v25 = __p;
            v24 = v35++;
          }

          else
          {
            if (HIBYTE(v36) == 22)
            {
              goto LABEL_40;
            }

            v24 = HIBYTE(v36);
            HIBYTE(v36) = (HIBYTE(v36) + 1) & 0x7F;
            v25 = &__p;
          }

          v26 = &v25[v24];
          *v26 = v38;
          v26[1] = 0;
          if (v15 != 2)
          {
            if (SHIBYTE(v36) < 0)
            {
              v27 = (v36 & 0x7FFFFFFFFFFFFFFFLL) - 1;
              if (v35 == v27)
              {
                if ((v36 & 0x7FFFFFFFFFFFFFFFLL) != 0x7FFFFFFFFFFFFFF8)
                {
LABEL_49:
                  operator new();
                }

                goto LABEL_65;
              }

              v29 = __p;
              v28 = v35++;
            }

            else
            {
              if (HIBYTE(v36) == 22)
              {
                goto LABEL_49;
              }

              v28 = HIBYTE(v36);
              HIBYTE(v36) = (HIBYTE(v36) + 1) & 0x7F;
              v29 = &__p;
            }

            v30 = &v29[v28];
            *v30 = v39[0];
            v30[1] = 0;
            if (v15 != 3)
            {
              if (SHIBYTE(v36) < 0)
              {
                v31 = (v36 & 0x7FFFFFFFFFFFFFFFLL) - 1;
                if (v35 == v31)
                {
                  if ((v36 & 0x7FFFFFFFFFFFFFFFLL) != 0x7FFFFFFFFFFFFFF8)
                  {
LABEL_58:
                    operator new();
                  }

LABEL_65:
                  sub_1AE5DB4F0();
                }

                v7 = __p;
                v6 = v35++;
              }

              else
              {
                if (HIBYTE(v36) == 22)
                {
                  goto LABEL_58;
                }

                v6 = HIBYTE(v36);
                HIBYTE(v36) = (HIBYTE(v36) + 1) & 0x7F;
                v7 = &__p;
              }

              v8 = &v7[v6];
              *v8 = v39[1];
              v8[1] = 0;
            }
          }
        }
      }
    }

    result = sub_1AE6AAE78((v33 + 24), &__p);
    if (result)
    {
      result = (*(*(v33 + 104) + 24 * *(result + 10) + 4) == *(*(v33 + 104) + 24 * *(result + 10)));
    }

    if (SHIBYTE(v36) < 0)
    {
      v32 = result;
      operator delete(__p);
      return v32;
    }
  }

  return result;
}

void sub_1AE6AB9D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **sub_1AE6AB9F0(uint64_t a1, const __CFString *a2)
{
  if (!a2)
  {
    return 0;
  }

  sub_1AE5CC874(a2, __p);
  result = sub_1AE6AAE78((a1 + 24), __p);
  if (result)
  {
    result = (*(*(a1 + 104) + 24 * *(result + 10) + 4) == *(*(a1 + 104) + 24 * *(result + 10)));
  }

  if (v6 < 0)
  {
    v4 = result;
    operator delete(__p[0]);
    return v4;
  }

  return result;
}

uint64_t sub_1AE6ABA7C(int8x8_t *a1, const __CFString *a2, int a3, double a4)
{
  if (!a2 || a1[1].i32[0] >= a1[2].i32[0])
  {
    return 0;
  }

  sub_1AE5CC874(a2, &v39);
  if ((v41 & 0x80u) == 0)
  {
    v7 = &v39;
  }

  else
  {
    v7 = v39;
  }

  if ((v41 & 0x80u) == 0)
  {
    v8 = v41;
  }

  else
  {
    v8 = v40;
  }

  v9 = sub_1AE5DA928(__p, v7, v8);
  v10 = a1[4];
  if (v10)
  {
    v11 = v9;
    v12 = vcnt_s8(v10);
    v12.i16[0] = vaddlv_u8(v12);
    if (v12.u32[0] > 1uLL)
    {
      v13 = v9;
      if (v9 >= *&v10)
      {
        v13 = v9 % *&v10;
      }
    }

    else
    {
      v13 = (*&v10 - 1) & v9;
    }

    v15 = *(*&a1[3] + 8 * v13);
    if (v15)
    {
      v16 = *v15;
      if (*v15)
      {
        v17 = v41;
        if ((v41 & 0x80u) == 0)
        {
          v18 = v41;
        }

        else
        {
          v18 = v40;
        }

        if ((v41 & 0x80u) == 0)
        {
          v19 = &v39;
        }

        else
        {
          v19 = v39;
        }

        if (v12.u32[0] < 2uLL)
        {
          v20 = *&v10 - 1;
          while (1)
          {
            v25 = v16[1];
            if (v25 == v11)
            {
              v26 = *(v16 + 39);
              v27 = v26;
              if (v26 < 0)
              {
                v26 = v16[3];
              }

              if (v26 == v18)
              {
                v28 = v27 >= 0 ? (v16 + 2) : v16[2];
                if (!memcmp(v28, v19, v18))
                {
                  goto LABEL_48;
                }
              }
            }

            else if ((v25 & v20) != v13)
            {
              goto LABEL_50;
            }

            v16 = *v16;
            if (!v16)
            {
              goto LABEL_50;
            }
          }
        }

        do
        {
          v21 = v16[1];
          if (v21 == v11)
          {
            v22 = *(v16 + 39);
            v23 = v22;
            if (v22 < 0)
            {
              v22 = v16[3];
            }

            if (v22 == v18)
            {
              v24 = v23 >= 0 ? (v16 + 2) : v16[2];
              if (!memcmp(v24, v19, v18))
              {
LABEL_48:
                v14 = 0;
                if ((v17 & 0x80) != 0)
                {
                  goto LABEL_67;
                }

                return v14;
              }
            }
          }

          else
          {
            if (v21 >= *&v10)
            {
              v21 %= *&v10;
            }

            if (v21 != v13)
            {
              break;
            }
          }

          v16 = *v16;
        }

        while (v16);
      }
    }
  }

LABEL_50:
  v14 = a1[1].u32[0];
  if (v14 >= a1[2].i32[0])
  {
    v14 = 0;
  }

  else
  {
    a1[1].i32[0] = v14 + 1;
  }

  LODWORD(__p[0]) = v14;
  HIDWORD(__p[0]) = v14;
  LODWORD(__p[1]) = a3;
  __p[2] = *&a4;
  sub_1AE6ABDB4(a1, &v39, __p);
  sub_1AE67C768(__p, &a1[16], &v39, a3);
  v29 = __p[0];
  v30 = __p[1];
  if (__p[0] != __p[1])
  {
    do
    {
      v31 = a1[1].u32[0];
      if (v31 >= a1[2].i32[0])
      {
        break;
      }

      a1[1].i32[0] = v31 + 1;
      if (!v31)
      {
        break;
      }

      *&v36 = __PAIR64__(v31, v14);
      DWORD2(v36) = a3;
      v37 = a4;
      sub_1AE6ABDB4(a1, v29, &v36);
      v29 += 3;
    }

    while (v29 != v30);
    v29 = __p[0];
  }

  a1[19].i8[0] = 1;
  if (v29)
  {
    v32 = __p[1];
    v33 = v29;
    if (__p[1] != v29)
    {
      do
      {
        v34 = *(v32 - 1);
        v32 -= 3;
        if (v34 < 0)
        {
          operator delete(*v32);
        }
      }

      while (v32 != v29);
      v33 = __p[0];
    }

    __p[1] = v29;
    operator delete(v33);
  }

  if ((v41 & 0x80) != 0)
  {
LABEL_67:
    operator delete(v39);
  }

  return v14;
}

void sub_1AE6ABD80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_1AE6ABDB4(void *a1, uint64_t a2, __int128 *a3)
{
  v6 = a1[14];
  v7 = a1[15];
  if (v6 >= v7)
  {
    v10 = a1[13];
    v11 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v10) >> 3) + 1;
    if (v11 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1AE5CBB70();
    }

    v12 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v10) >> 3);
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x555555555555555)
    {
      v13 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      if (v13 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_1AE5CB09C();
    }

    v14 = 8 * ((v6 - v10) >> 3);
    *v14 = *a3;
    *(v14 + 16) = *(a3 + 2);
    v9 = v14 + 24;
    v15 = (v14 - (v6 - v10));
    memcpy(v15, v10, v6 - v10);
    a1[13] = v15;
    a1[14] = v9;
    a1[15] = 0;
    if (v10)
    {
      operator delete(v10);
    }
  }

  else
  {
    v8 = *a3;
    *(v6 + 16) = *(a3 + 2);
    *v6 = v8;
    v9 = v6 + 24;
  }

  a1[14] = v9;
  v16 = -1431655765 * ((v9 - a1[13]) >> 3) - 1;
  *(sub_1AE6AC3E0(a1 + 3, a2) + 10) = v16;
  v26 = v16;
  if (*(a2 + 23) < 0)
  {
    sub_1AE5DBF1C(&v27, *a2, *(a2 + 8));
  }

  else
  {
    v27 = *a2;
    v28 = *(a2 + 16);
  }

  v17 = *(a3 + 1);
  v18 = a1[9];
  if (!*&v18)
  {
    goto LABEL_38;
  }

  v19 = vcnt_s8(v18);
  v19.i16[0] = vaddlv_u8(v19);
  if (v19.u32[0] > 1uLL)
  {
    v20 = *(a3 + 1);
    if (*&v18 <= v17)
    {
      v20 = v17 % v18.i32[0];
    }
  }

  else
  {
    v20 = (v18.i32[0] - 1) & v17;
  }

  v21 = *(a1[8] + 8 * v20);
  if (!v21 || (v22 = *v21) == 0)
  {
LABEL_38:
    operator new();
  }

  if (v19.u32[0] < 2uLL)
  {
    while (1)
    {
      v23 = v22[1];
      if (v23 == v17)
      {
        if (*(v22 + 4) == v17)
        {
          goto LABEL_39;
        }
      }

      else if ((v23 & (*&v18 - 1)) != v20)
      {
        goto LABEL_38;
      }

      v22 = *v22;
      if (!v22)
      {
        goto LABEL_38;
      }
    }
  }

  while (1)
  {
    v24 = v22[1];
    if (v24 == v17)
    {
      break;
    }

    if (v24 >= *&v18)
    {
      v24 %= *&v18;
    }

    if (v24 != v20)
    {
      goto LABEL_38;
    }

LABEL_33:
    v22 = *v22;
    if (!v22)
    {
      goto LABEL_38;
    }
  }

  if (*(v22 + 4) != v17)
  {
    goto LABEL_33;
  }

LABEL_39:
  *(v22 + 6) = v26;
  if (*(v22 + 55) < 0)
  {
    operator delete(v22[4]);
  }

  result = *&v27;
  *(v22 + 2) = v27;
  v22[6] = v28;
  return result;
}

void sub_1AE6AC3B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17)
{
  sub_1AE6276E4(&a17);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t **sub_1AE6AC3E0(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_1AE5DA928(&v24, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_43;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v8)
    {
      v10 = v6 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_43:
    operator new();
  }

  v13 = v2[23];
  if (v13 >= 0)
  {
    v14 = v2[23];
  }

  else
  {
    v14 = *(v2 + 1);
  }

  if (v13 < 0)
  {
    v2 = *v2;
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v19 = v12[1];
      if (v19 == v7)
      {
        v20 = *(v12 + 39);
        v21 = v20;
        if (v20 < 0)
        {
          v20 = v12[3];
        }

        if (v20 == v14)
        {
          v22 = v21 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v22, v2, v14))
          {
            return v12;
          }
        }
      }

      else if ((v19 & (*&v8 - 1)) != v10)
      {
        goto LABEL_43;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v15 = v12[1];
    if (v15 == v7)
    {
      break;
    }

    if (v15 >= *&v8)
    {
      v15 %= *&v8;
    }

    if (v15 != v10)
    {
      goto LABEL_43;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_43;
    }
  }

  v16 = *(v12 + 39);
  v17 = v16;
  if (v16 < 0)
  {
    v16 = v12[3];
  }

  if (v16 != v14)
  {
    goto LABEL_20;
  }

  v18 = v17 >= 0 ? (v12 + 2) : v12[2];
  if (memcmp(v18, v2, v14))
  {
    goto LABEL_20;
  }

  return v12;
}

void sub_1AE6AC924(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE64A9A8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE6AC940(uint64_t a1, const __CFArray *a2)
{
  sub_1AE6ACA9C(&__p, a2);
  if ((a1 + 128) != &__p)
  {
    sub_1AE67C3E4((a1 + 128), __p, v9, 0xAAAAAAAAAAAAAAABLL * ((v9 - __p) >> 3));
  }

  v3 = __p;
  if (__p)
  {
    v4 = v9;
    v5 = __p;
    if (v9 != __p)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 3;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v3);
      v5 = __p;
    }

    v9 = v3;
    operator delete(v5);
  }

  return 1;
}

CFIndex sub_1AE6ACA9C(void *a1, CFArrayRef theArray)
{
  v4 = 0;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v5 = *MEMORY[0x1E695E6F0];
  while (1)
  {
    result = CFArrayGetCount(theArray);
    if (v4 >= result)
    {
      return result;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v4);
    v8 = CFGetTypeID(ValueAtIndex);
    TypeID = CFStringGetTypeID();
    if (v8 == TypeID)
    {
      ValueAtIndex = CFLocaleCreate(0, ValueAtIndex);
    }

    else
    {
      v10 = CFGetTypeID(ValueAtIndex);
      if (v10 != CFLocaleGetTypeID())
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "invalid locale value for creating vocabulary");
        exception->__vftable = (MEMORY[0x1E69E55C8] + 16);
        __cxa_throw(exception, off_1E7A2D6D8, MEMORY[0x1E69E5298]);
      }
    }

    Value = CFLocaleGetValue(ValueAtIndex, v5);
    sub_1AE5CC874(Value, __p);
    sub_1AE67D6DC(a1, __p);
    if (v14 < 0)
    {
      operator delete(__p[0]);
      if (v8 != TypeID)
      {
        goto LABEL_2;
      }
    }

    else if (v8 != TypeID)
    {
      goto LABEL_2;
    }

    CFRelease(ValueAtIndex);
LABEL_2:
    ++v4;
  }
}

void sub_1AE6ACC5C(void *a1)
{
  sub_1AE6ACC94(a1);

  JUMPOUT(0x1B2706400);
}

void *sub_1AE6ACC94(void *a1)
{
  *a1 = &unk_1F242FD60;
  v2 = a1[16];
  if (v2)
  {
    v3 = a1[17];
    v4 = a1[16];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = a1[16];
    }

    a1[17] = v2;
    operator delete(v4);
  }

  v6 = a1[13];
  if (v6)
  {
    a1[14] = v6;
    operator delete(v6);
  }

  v7 = a1[10];
  if (v7)
  {
    do
    {
      v12 = *v7;
      if (*(v7 + 55) < 0)
      {
        operator delete(v7[4]);
      }

      operator delete(v7);
      v7 = v12;
    }

    while (v12);
  }

  v8 = a1[8];
  a1[8] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  v9 = a1[5];
  if (v9)
  {
    do
    {
      v13 = *v9;
      if (*(v9 + 39) < 0)
      {
        operator delete(v9[2]);
      }

      operator delete(v9);
      v9 = v13;
    }

    while (v13);
  }

  v10 = a1[3];
  a1[3] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return a1;
}

uint64_t sub_1AE6ACDB8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      if (*(v2 + 55) < 0)
      {
        operator delete(v2[4]);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

BOOL sub_1AE6ACE50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 && (v3 = *(a2 + 4 * a3 - 4), *(a1 + 96) <= v3))
  {
    return *(a1 + 100) >= v3;
  }

  else
  {
    return 0;
  }
}

void sub_1AE6ACE80(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (!a3)
  {
    goto LABEL_7;
  }

  v5 = a2 + 4 * a3;
  v6 = *(v5 - 4);
  if (a3 == 1 || (v7 = *(v5 - 8), *(a1 + 88) > v7) || *(a1 + 92) < v7)
  {
    if (*(a1 + 96) > v6 || *(a1 + 100) < v6)
    {
LABEL_7:
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      return;
    }

    v8 = *(a1 + 56);
    v9 = *(a1 + 64);
    while (v9)
    {
      v10 = v9 >> 1;
      v11 = &v8[2 * (v9 >> 1)];
      v13 = *v11;
      v12 = (v11 + 2);
      v9 += ~(v9 >> 1);
      if (v13 < v6 << 16)
      {
        v8 = v12;
      }

      else
      {
        v9 = v10;
      }
    }

    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    v21 = *v8;
    if (v6 == HIWORD(*v8))
    {
      v22 = (v8 + 2);
      do
      {
        v28 = v21;
        if (v21)
        {
          sub_1AE6369B4(a4, &v28);
        }

        v23 = *v22;
        v22 += 2;
        LOWORD(v21) = v23;
      }

      while (v6 == HIWORD(v23));
    }
  }

  else
  {
    v14 = v6 + (v7 << 16);
    v15 = *(a1 + 72);
    v16 = *(a1 + 80);
    while (v16)
    {
      v17 = v16 >> 1;
      v18 = &v15[2 * (v16 >> 1)];
      v20 = *v18;
      v19 = (v18 + 2);
      v16 += ~(v16 >> 1);
      if (v20 < v14 << 16)
      {
        v15 = v19;
      }

      else
      {
        v16 = v17;
      }
    }

    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    v24 = *v15;
    if (v14 == *v15 >> 16)
    {
      v25 = (v15 + 2);
      do
      {
        v27 = v24;
        if (v24)
        {
          sub_1AE6369B4(a4, &v27);
        }

        v26 = *v25;
        v25 += 2;
        LOWORD(v24) = v26;
      }

      while (v14 == v26 >> 16);
    }
  }
}

void sub_1AE6ACFFC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1AE6AD0A8(uint64_t a1, unsigned int a2)
{
  if (a2 < 4)
  {
    return 1;
  }

  if (*(a1 + 112) <= a2)
  {
    return *(a1 + 116) >= a2;
  }

  return 0;
}

uint64_t sub_1AE6AD0E4(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    LODWORD(v1) = *(a1[3] + 8 * v1 - 8);
  }

  v2 = a1[6];
  if (v2)
  {
    LODWORD(v2) = *(a1[5] + 16 * v2 - 16);
  }

  if (v1 <= v2)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1AE6AD118(void *a1, unsigned int a2, _DWORD *a3, uint64_t a4)
{
  v4 = a1[4];
  if (!v4)
  {
    goto LABEL_14;
  }

  v5 = a1[3];
  v6 = &v5[2 * v4];
  do
  {
    v7 = v4 >> 1;
    v8 = &v5[2 * (v4 >> 1)];
    v10 = *v8;
    v9 = v8 + 2;
    v4 += ~(v4 >> 1);
    if (v10 < a2)
    {
      v5 = v9;
    }

    else
    {
      v4 = v7;
    }
  }

  while (v4);
  if (v5 != v6 && *v5 == a2)
  {
    if (a4)
    {
      *a3 = *(v5 + 3);
      a3[1] = *(v5 + 2);
    }

    if (*(v5 + 2))
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  else
  {
LABEL_14:
    v12 = a1[6];
    if (!v12)
    {
      goto LABEL_25;
    }

    v13 = a1[5];
    v14 = &v13[4 * v12];
    do
    {
      v15 = v12 >> 1;
      v16 = &v13[4 * (v12 >> 1)];
      v18 = *v16;
      v17 = v16 + 4;
      v12 += ~(v12 >> 1);
      if (v18 < a2)
      {
        v13 = v17;
      }

      else
      {
        v12 = v15;
      }
    }

    while (v12);
    if (v13 != v14 && *v13 == a2)
    {
      if (a4)
      {
        v19 = *(v13 + 1);
        *a3 = HIDWORD(v19);
        a3[1] = WORD1(v19);
        a3[2] = v19;
      }

      return 3;
    }

    else
    {
LABEL_25:
      *a3 = 3;
      return 1;
    }
  }
}

uint64_t sub_1AE6AD20C(void *a1, unsigned int *a2, unint64_t a3)
{
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v5 = a1[10];
      if (v5)
      {
        v6 = ((a2[1] << 16) | (*a2 << 32)) + a2[2];
        v7 = a1[9];
        v8 = &v7[2 * v5];
        do
        {
          v9 = v5 >> 1;
          v10 = &v7[2 * (v5 >> 1)];
          v12 = *v10;
          v11 = v10 + 2;
          v5 += ~(v5 >> 1);
          if (v12 < v6)
          {
            v7 = v11;
          }

          else
          {
            v5 = v9;
          }
        }

        while (v5);
        if (v7 != v8 && *v7 == v6)
        {
          return *(v7 + 2);
        }
      }
    }

    return 0;
  }

  if (a3 == 2)
  {
    v3 = a2[1];
    v4 = a1[8];
    if (!v4)
    {
      return 0;
    }
  }

  else
  {
    v3 = 0;
    v4 = a1[8];
    if (!v4)
    {
      return 0;
    }
  }

  v14 = v3 + (*a2 << 16);
  v15 = a1[7];
  v16 = &v15[2 * v4];
  do
  {
    v17 = v4 >> 1;
    v18 = &v15[2 * (v4 >> 1)];
    v20 = *v18;
    v19 = v18 + 2;
    v4 += ~(v4 >> 1);
    if (v20 < v14)
    {
      v15 = v19;
    }

    else
    {
      v4 = v17;
    }
  }

  while (v4);
  if (v15 != v16 && *v15 == v14)
  {
    return v15[1];
  }

  return 0;
}

void sub_1AE6AD308(uint64_t a1)
{
  *a1 = &unk_1F242BE00;
  if (*(a1 + 8))
  {
    v1 = a1;
    munmap(*(a1 + 8), *(a1 + 16));
    a1 = v1;
  }

  *(a1 + 16) = 0;

  JUMPOUT(0x1B2706400);
}

uint64_t sub_1AE6AD384(uint64_t result)
{
  *result = &unk_1F242BE00;
  if (*(result + 8))
  {
    v1 = result;
    munmap(*(result + 8), *(result + 16));
    result = v1;
  }

  *(result + 16) = 0;
  return result;
}

void *sub_1AE6AD3E0(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  v5 = open(v4, 0);
  if (v5 < 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_1AE5CC990(&v18, "open()");
    v11 = __error();
    sub_1AE6AD8F4(exception, &v18, a2, *v11);
    __cxa_throw(exception, MEMORY[0x1E69E53D0], MEMORY[0x1E69E5360]);
  }

  v6 = v5;
  if (fstat(v5, &v18) < 0)
  {
    v12 = __cxa_allocate_exception(0x20uLL);
    sub_1AE5CC990(&v16, "fstat()");
    v13 = __error();
    sub_1AE6AD8F4(v12, &v16, a2, *v13);
    __cxa_throw(v12, MEMORY[0x1E69E53D0], MEMORY[0x1E69E5360]);
  }

  st_size = v18.st_size;
  a1[1] = v18.st_size;
  if (st_size >= 0x7FFFFFFF)
  {
    LODWORD(st_size) = 0x7FFFFFFF;
  }

  v17 = st_size;
  v16 = 0;
  fcntl(v6, 44, &v16);
  v8 = mmap(0, a1[1], 1, 1, v6, 0);
  *a1 = v8;
  if (v8 == -1)
  {
    v14 = __cxa_allocate_exception(0x20uLL);
    sub_1AE5CC990(&v16, "mmap()");
    v15 = __error();
    sub_1AE6AD8F4(v14, &v16, a2, *v15);
    __cxa_throw(v14, MEMORY[0x1E69E53D0], MEMORY[0x1E69E5360]);
  }

  close(v6);
  return a1;
}

void sub_1AE6AD5C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v23 & 1) == 0)
    {
LABEL_6:
      close(v21);
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v22);
  goto LABEL_6;
}

uint64_t sub_1AE6AD658(void *a1)
{
  if (a1[1] <= 0x2FuLL)
  {
    sub_1AE5F2968(v13);
    v3 = sub_1AE5DB608(v14, "(file_size=", 11);
    v4 = MEMORY[0x1B2706120](v3, a1[1]);
    v5 = sub_1AE5DB608(v4, ", offset=", 9);
    v6 = MEMORY[0x1B2706120](v5, 0);
    v7 = sub_1AE5DB608(v6, ", object_size=", 14);
    v8 = MEMORY[0x1B2706120](v7, 48);
    sub_1AE5DB608(v8, ")", 1);
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1AE6AD814(&__dst, v13);
    v10 = sub_1AE67B590(&v12, "attempted to read beyond the end of the mapped file ", &__dst);
    MEMORY[0x1B2705EC0](exception, &v12, v10);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return *a1;
}

void sub_1AE6AD764(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v23 & 1) == 0)
    {
LABEL_8:
      sub_1AE644C5C(&a22);
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v22);
  goto LABEL_8;
}

uint64_t sub_1AE6AD7D4(uint64_t result)
{
  if (*result)
  {
    v1 = result;
    munmap(*result, *(result + 8));
    result = v1;
  }

  *(result + 8) = 0;
  return result;
}

_BYTE *sub_1AE6AD814(_BYTE *__dst, uint64_t a2)
{
  v2 = __dst;
  v3 = *(a2 + 120);
  if ((v3 & 0x10) != 0)
  {
    v5 = *(a2 + 112);
    v6 = *(a2 + 72);
    if (v5 < v6)
    {
      *(a2 + 112) = v6;
      v5 = v6;
    }

    v7 = (a2 + 64);
  }

  else
  {
    if ((v3 & 8) == 0)
    {
      v4 = 0;
      __dst[23] = 0;
      goto LABEL_14;
    }

    v7 = (a2 + 40);
    v5 = *(a2 + 56);
  }

  v8 = *v7;
  v4 = v5 - *v7;
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1AE5DB4F0();
  }

  if (v4 >= 0x17)
  {
    operator new();
  }

  __dst[23] = v4;
  if (v4)
  {
    __dst = memmove(__dst, v8, v4);
  }

LABEL_14:
  v2[v4] = 0;
  return __dst;
}

void sub_1AE6AD8F4(std::ios_base::failure *a1, void *a2, uint64_t a3, unsigned int a4)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v5 + 13 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1AE5DB4F0();
  }

  if (v5 + 13 >= 0x17)
  {
    operator new();
  }

  memset(&v17, 0, sizeof(v17));
  *(&v17.__r_.__value_.__s + 23) = v5 + 13;
  if (v5)
  {
    if ((v4 & 0x80u) != 0)
    {
      a2 = *a2;
    }

    memmove(&v17, a2, v5);
  }

  strcpy(&v17 + v5, " failed for '");
  v9 = *(a3 + 23);
  if (v9 >= 0)
  {
    v10 = a3;
  }

  else
  {
    v10 = *a3;
  }

  if (v9 >= 0)
  {
    v11 = *(a3 + 23);
  }

  else
  {
    v11 = *(a3 + 8);
  }

  v12 = std::string::append(&v17, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v18.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v18.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v18, "'", 1uLL);
  v15 = *&v14->__r_.__value_.__l.__data_;
  __msg.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&__msg.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  *&__ec.__val_ = a4;
  __ec.__cat_ = std::generic_category();
  std::ios_base::failure::failure(a1, &__msg, &__ec);
  if (SHIBYTE(__msg.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__msg.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_19:
      if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_23:
      operator delete(v17.__r_.__value_.__l.__data_);
      return;
    }
  }

  else if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_19;
  }

  operator delete(v18.__r_.__value_.__l.__data_);
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_23;
  }
}

void sub_1AE6ADAC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a17 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);
  if ((a17 & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(a12);
  _Unwind_Resume(exception_object);
}

uint64_t sub_1AE6ADB48(uint64_t a1)
{
  *a1 = &unk_1F2431CD0;
  sub_1AE673AE4(*(a1 + 56));
  sub_1AE627688(*(a1 + 32));
  return a1;
}

char *sub_1AE6ADB98@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 56);
  result = (a1 + 56);
  v4 = v5;
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = result;
  do
  {
    v7 = *(v4 + 8);
    v8 = v7 >= a2;
    v9 = v7 < a2;
    if (v8)
    {
      v6 = v4;
    }

    v4 = *&v4[8 * v9];
  }

  while (v4);
  if (v6 != result && *(v6 + 8) <= a2)
  {
    if (v6[63] < 0)
    {
      return sub_1AE5DBF1C(a3, *(v6 + 5), *(v6 + 6));
    }

    else
    {
      v10 = *(v6 + 40);
      *(a3 + 16) = *(v6 + 7);
      *a3 = v10;
    }
  }

  else
  {
LABEL_9:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  return result;
}

uint64_t sub_1AE6ADC04(uint64_t a1, const void **a2)
{
  v3 = sub_1AE63148C(a1 + 24, a2);
  if ((a1 + 32) == v3)
  {
    return 0;
  }

  else
  {
    return *(v3 + 14);
  }
}

void sub_1AE6ADC44(uint64_t a1)
{
  *a1 = &unk_1F2431CD0;
  sub_1AE673AE4(*(a1 + 56));
  sub_1AE627688(*(a1 + 32));

  JUMPOUT(0x1B2706400);
}

uint64_t sub_1AE6ADCB4(uint64_t a1)
{
  *a1 = &unk_1F2431CD0;
  sub_1AE673AE4(*(a1 + 56));
  sub_1AE627688(*(a1 + 32));
  return a1;
}

uint64_t sub_1AE6ADD04(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v3 = *(a1 + 128);
  if (v3 == *(a1 + 136))
  {
    __assert_rtn("getPrediction", "NeuralModelPredictionEnumerator.cpp", 72, "false && getPrediction: called without predictions");
  }

  *a2 = *v3;
  if (a3)
  {
    *a3 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 32) = 1;
    *(a3 + 40) = xmmword_1AE79A550;
    *(a3 + 56) = 0;
    *(a3 + 64) = xmmword_1AE79A550;
    *(a3 + 88) = 0;
    *(a3 + 96) = 0;
    *(a3 + 80) = 0xFFEFFFFFFFFFFFFFLL;
    v4 = *(*(a1 + 128) + 8);
    *(a3 + 116) = 1;
    *(a3 + 48) = 0x3FF0000000000000;
    *(a3 + 40) = v4;
    *a3 = v4;
    *(a3 + 8) = v4;
  }

  return 1;
}

BOOL sub_1AE6ADDA4(uint64_t a1)
{
  v274 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 96);
  if (v2 != -1 && v2 >= *(a1 + 80))
  {
    return 0;
  }

  v3 = (a1 + 128);
  v4 = *(a1 + 136);
  v5 = *(a1 + 128);
  v6 = v5;
  if (v5 != v4)
  {
    v7 = (v4 - v5) >> 4;
    if (v7 >= 2)
    {
      v8 = 0;
      v9 = *v5;
      v10 = v5[1];
      v11 = *(a1 + 128);
      do
      {
        v12 = v11;
        v11 += 2 * v8 + 2;
        v13 = 2 * v8;
        v8 = (2 * v8) | 1;
        v14 = v13 + 2;
        if (v14 < v7 && v11[1] < v11[3])
        {
          v11 += 2;
          v8 = v14;
        }

        *v12 = *v11;
        v12[1] = v11[1];
      }

      while (v8 <= ((v7 - 2) >> 1));
      if (v11 == (v4 - 4))
      {
        *v11 = v9;
      }

      else
      {
        *v11 = *(v4 - 4);
        v11[1] = *(v4 - 1);
        *(v4 - 4) = v9;
        *(v4 - 1) = v10;
        v16 = (v11 - v5 + 16) >> 4;
        v17 = v16 < 2;
        v18 = v16 - 2;
        if (v17)
        {
          goto LABEL_20;
        }

        v19 = v18 >> 1;
        v20 = &v5[2 * v19];
        v21 = *(v20 + 1);
        v10 = v11[1];
        if (v21 >= v10)
        {
          goto LABEL_20;
        }

        v22 = *v11;
        do
        {
          v23 = v11;
          v11 = v20;
          *v23 = *v20;
          v23[1] = v21;
          if (!v19)
          {
            break;
          }

          v19 = (v19 - 1) >> 1;
          v20 = &v5[2 * v19];
          v21 = *(v20 + 1);
        }

        while (v21 < v10);
        *v11 = v22;
      }

      v11[1] = v10;
    }

LABEL_20:
    v6 = (v4 - 4);
    *(a1 + 136) = v4 - 4;
  }

  v24 = v2 + 1;
  if (v2 + 1 >= *(a1 + 80))
  {
    return v5 != v6;
  }

  v243 = *MEMORY[0x1E69E54E8];
  v242 = *(MEMORY[0x1E69E54E8] + 24);
  v241 = (a1 + 128);
  while (2)
  {
    v5 = *(a1 + 128);
    v6 = *(a1 + 136);
    v25 = *(a1 + 56);
    if (v5 != v6)
    {
      v26 = *(v25 + 8 * v24 + 4);
      v27 = log10f(v26);
      if (v26 <= 0.0)
      {
        v27 = -10.0;
      }

      if (v5[1] >= v27)
      {
        return v5 != v6;
      }
    }

    v28 = v2 + 1;
    *(a1 + 96) = v28;
    v246 = 0;
    v247 = 0;
    v248 = 0;
    v29 = (*(**(a1 + 24) + 48))(*(a1 + 24));
    if (v29)
    {
      if (!(v29 >> 62))
      {
        operator new();
      }

LABEL_325:
      sub_1AE5CBB70();
    }

    v30 = v25 + 8 * v28;
    sub_1AE6369B4(&v246, v30);
    v32 = v246;
    v31 = v247;
    if (v246 == v247)
    {
LABEL_324:
      v239 = 130;
      v240 = "false && no tokens provided";
      goto LABEL_318;
    }

    v33 = *(v30 + 4);
    v34 = log10f(v33);
    if (v33 <= 0.0)
    {
      v34 = -10.0;
    }

    v35 = v34;
    while (1)
    {
      v36 = *(a1 + 24);
      v37 = *(v31 - 1);
      if ((*(*v36 + 80))(v36, v37))
      {
        break;
      }

      if ((*(*v36 + 56))(v36, v37))
      {
        v103 = v31 - v32;
        if (v31 - v32 == 4)
        {
          goto LABEL_152;
        }

        v239 = 141;
        v240 = "false && unexpected non-combining ID";
LABEL_318:
        __assert_rtn("wordIsComplete", "NeuralModelPredictionEnumerator.cpp", v239, v240);
      }

      if (((*(*v36 + 64))(v36, v37) & 1) == 0 && ((*(*v36 + 72))(v36, v37) & 1) == 0)
      {
        v239 = 145;
        v240 = "mapper.isPrefixID(lastToken) || mapper.isStemID(lastToken)";
        goto LABEL_318;
      }

      v38 = *(a1 + 104);
      v39 = *(a1 + 112);
      v40 = v39 - v38;
      v41 = v31 - v32;
      v42 = (v31 - v32) >> 2;
      v43 = v42 - 1;
      if (v42 >= 1)
      {
        v44 = *(a1 + 120);
        if (v44 - v39 >= v41)
        {
          if (v32 != v31)
          {
            if ((v41 - 4) < 0x1C)
            {
              v51 = v32;
            }

            else if ((v39 - v32) < 0x20)
            {
              v51 = v32;
            }

            else
            {
              v49 = ((v41 - 4) >> 2) + 1;
              v50 = 4 * (v49 & 0x7FFFFFFFFFFFFFF8);
              v51 = &v32[v50];
              v52 = v39 + 4;
              v53 = (v32 + 16);
              v54 = v49 & 0x7FFFFFFFFFFFFFF8;
              do
              {
                v55 = *v53;
                *(v52 - 1) = *(v53 - 1);
                *v52 = v55;
                v52 += 2;
                v53 += 2;
                v54 -= 8;
              }

              while (v54);
              v39 = (v39 + v50);
              if (v49 == (v49 & 0x7FFFFFFFFFFFFFF8))
              {
                goto LABEL_72;
              }
            }

            do
            {
              v71 = *v51;
              v51 += 4;
              *v39++ = v71;
            }

            while (v51 != v31);
          }

LABEL_72:
          *(a1 + 112) = v39;
          goto LABEL_73;
        }

        v45 = (v40 >> 2) + v42;
        if (v45 >> 62)
        {
          goto LABEL_325;
        }

        v46 = v44 - v38;
        v47 = v46 >> 1;
        if (v46 >> 1 <= v45)
        {
          v47 = v45;
        }

        if (v46 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v48 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v48 = v47;
        }

        if (v48)
        {
          if (!(v48 >> 62))
          {
            operator new();
          }

          sub_1AE5CB09C();
        }

        v56 = 4 * (v40 >> 2);
        v57 = (v56 + v41);
        v58 = v43 & 0x3FFFFFFFFFFFFFFFLL;
        if ((v43 & 0x3FFFFFFFFFFFFFFFuLL) >= 7)
        {
          if ((v40 - v32) < 0x20)
          {
            v59 = (4 * (v40 >> 2));
            goto LABEL_65;
          }

          v60 = v58 + 1;
          v61 = (v58 + 1) & 0x7FFFFFFFFFFFFFF8;
          v59 = (v56 + 4 * v61);
          v62 = (v32 + 16);
          v63 = (v56 + 16);
          v64 = v61;
          do
          {
            v65 = *v62;
            *(v63 - 1) = *(v62 - 1);
            *v63 = v65;
            v62 += 2;
            v63 += 2;
            v64 -= 8;
          }

          while (v64);
          if (v60 != v61)
          {
            v32 += 4 * v61;
            goto LABEL_65;
          }
        }

        else
        {
          v59 = (4 * (v40 >> 2));
          do
          {
LABEL_65:
            v66 = *v32;
            v32 += 4;
            *v59 = v66;
            v59 += 4;
          }

          while (v59 != v57);
        }

        v67 = *(a1 + 112) - v39;
        memcpy(v57, v39, v67);
        v68 = &v57[v67];
        *(a1 + 112) = v39;
        v69 = *(a1 + 104);
        v70 = (v56 - (v39 - v69));
        memcpy(v70, v69, v39 - v69);
        *(a1 + 104) = v70;
        *(a1 + 112) = v68;
        *(a1 + 120) = 0;
        if (v69)
        {
          operator delete(v69);
          v39 = *(a1 + 112);
        }

        else
        {
          v39 = v68;
        }
      }

LABEL_73:
      v72 = *(a1 + 24);
      v73 = *(v39 - 1);
      if (((*(*v72 + 64))(v72, v73) & 1) == 0 && ((*(*v72 + 72))(v72, v73) & 1) == 0)
      {
        (*(*v72 + 16))(v72);
      }

      (*(**(a1 + 8) + 40))(v252);
      v74 = *v252[0];
      v253 = *v252[0];
      v75 = *(*(a1 + 112) - 4);
      sub_1AE6369B4(a1 + 104, &v253);
      if ((*(**(a1 + 24) + 64))(*(a1 + 24), v75))
      {
        (*(**(a1 + 24) + 120))(&v254);
        v76 = v254;
        v77 = v255;
        if (v254)
        {
          v255 = v254;
          operator delete(v254);
        }

        if (v76 == v77)
        {
          v88 = *(a1 + 112);
          *(a1 + 112) = v88 - 4;
          if (((*(**(a1 + 24) + 64))(*(a1 + 24), *(v88 - 8)) & 1) == 0)
          {
            __assert_rtn("predictValidStemFromPrefix", "NeuralModelPredictionEnumerator.cpp", 174, "m_tokenIDMapper->isPrefixID(context.back())");
          }

          (*(**(a1 + 8) + 40))(&v254);
          v90 = *(a1 + 104);
          v89 = *(a1 + 112);
          if (v89 != v90)
          {
            if (((v89 - v90) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_1AE5CBB70();
          }

          v94 = 0;
          v95 = v254;
          v96 = v255;
          if (v254 == v255)
          {
            v244 = 3;
          }

          else
          {
            v244 = 3;
            do
            {
              v97 = v94;
              v98 = v94 >> 2;
              if ((v98 + 1) >> 62)
              {
                sub_1AE5CBB70();
              }

              if (v98 != -1)
              {
                if (!((v98 + 1) >> 62))
                {
                  operator new();
                }

                sub_1AE5CB09C();
              }

              MEMORY[0xFFFFFFFFFFFFFFFC] = *v95;
              memcpy(0, 0, v97);
              (*(**(a1 + 24) + 120))(&__dst);
              if (__dst != v267)
              {
                v244 = *v95;
              }

              if (__dst)
              {
                v267 = __dst;
                operator delete(__dst);
              }

              v94 = -4;
              v95 += 2;
            }

            while (v95 != v96);
          }

          if (v254)
          {
            v255 = v254;
            operator delete(v254);
          }

          v253 = v244;
          if (v244 != 3)
          {
            goto LABEL_139;
          }

LABEL_81:
          if (qword_1EB5E0C68 != -1)
          {
            dispatch_once(&qword_1EB5E0C68, &unk_1F242BEF0);
          }

          v78 = qword_1EB5E0C60;
          if (!os_log_type_enabled(qword_1EB5E0C60, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_139;
          }

          sub_1AE5D9464(&v254);
          v80 = *(a1 + 104);
          for (i = *(a1 + 112); v80 != i; ++v80)
          {
            if ((v264 & 0x10) != 0)
            {
              v82 = v263;
              v83 = &v259;
              if (v263 < v260)
              {
                v263 = v260;
                v82 = v260;
                v83 = &v259;
              }
            }

            else
            {
              if ((v264 & 8) == 0)
              {
                v81 = 0;
                HIBYTE(v268) = 0;
                goto LABEL_97;
              }

              v82 = v258;
              v83 = v257;
            }

            v84 = *v83;
            v81 = v82 - *v83;
            if (v81 > 0x7FFFFFFFFFFFFFF7)
            {
              sub_1AE5DB4F0();
            }

            if (v81 >= 0x17)
            {
              operator new();
            }

            HIBYTE(v268) = v82 - *v83;
            if (v81)
            {
              memmove(&__dst, v84, v81);
            }

LABEL_97:
            *(&__dst + v81) = 0;
            if ((SHIBYTE(v268) & 0x80000000) == 0)
            {
              if (!HIBYTE(v268))
              {
                goto LABEL_102;
              }

LABEL_101:
              sub_1AE5DB608(&v254, " ", 1);
              goto LABEL_102;
            }

            v85 = v267;
            operator delete(__dst);
            if (v85)
            {
              goto LABEL_101;
            }

LABEL_102:
            MEMORY[0x1B2706110](&v254, *v80);
          }

          if ((v264 & 0x10) != 0)
          {
            v86 = v263;
            v87 = &v259;
            if (v263 < v260)
            {
              v263 = v260;
              v86 = v260;
              v87 = &v259;
            }

LABEL_112:
            v91 = *v87;
            v92 = v86 - *v87;
            if (v92 > 0x7FFFFFFFFFFFFFF7)
            {
              sub_1AE5DB4F0();
            }

            if (v92 >= 0x17)
            {
              operator new();
            }

            v251 = v86 - *v87;
            if (v92)
            {
              memmove(&v250, v91, v92);
            }
          }

          else
          {
            if ((v264 & 8) != 0)
            {
              v86 = v258;
              v87 = v257;
              goto LABEL_112;
            }

            v92 = 0;
            v251 = 0;
          }

          *(&v250 + v92) = 0;
          v254 = v243;
          *(&v254 + *(v243 - 3)) = v242;
          v255 = (MEMORY[0x1E69E5548] + 16);
          if (v262 < 0)
          {
            operator delete(__p);
          }

          v255 = (MEMORY[0x1E69E5538] + 16);
          std::locale::~locale(&v256);
          std::ostream::~ostream();
          MEMORY[0x1B2706340](&v265);
          v93 = &v250;
          if (v251 < 0)
          {
            v93 = v250;
          }

          *buf = 136315138;
          v273 = v93;
          _os_log_error_impl(&dword_1AE5C8000, v78, OS_LOG_TYPE_ERROR, "Could not find a valid prediction for context: [%s]", buf, 0xCu);
          if (v251 < 0)
          {
            operator delete(v250);
          }

          goto LABEL_139;
        }
      }

      if (v74 == 3)
      {
        goto LABEL_81;
      }

LABEL_139:
      v99 = *(a1 + 112);
      v100 = v99 - *(a1 + 104);
      if (v100 > v40)
      {
        do
        {
          v99 -= 4;
          v100 -= 4;
        }

        while (v100 > v40);
        *(a1 + 112) = v99;
      }

      if (v252[0])
      {
        v252[1] = v252[0];
        operator delete(v252[0]);
      }

      v101 = *(&v253 + 1);
      v249 = v253;
      if (v253 == 3)
      {
        v32 = v246;
        goto LABEL_181;
      }

      sub_1AE6369B4(&v246, &v249);
      v102 = log10f(v101);
      if (v101 <= 0.0)
      {
        v102 = -10.0;
      }

      v35 = v35 + v102;
      v32 = v246;
      v31 = v247;
      if (v246 == v247)
      {
        goto LABEL_324;
      }
    }

    v103 = v31 - v32;
LABEL_152:
    v104 = (*(**(a1 + 24) + 24))(*(a1 + 24), v32, v103 >> 2);
    v105 = v104;
    LODWORD(v252[0]) = v104;
    v252[1] = *&v35;
    v106 = *(a1 + 40);
    if (!v106)
    {
      goto LABEL_180;
    }

    v107 = v106[14];
    if (v107)
    {
      v108 = v106[15];
      v109 = v106[14];
      do
      {
        v110 = v109 >> 1;
        v111 = &v108[v109 >> 1];
        v113 = *v111;
        v112 = v111 + 1;
        v109 += ~(v109 >> 1);
        if (v113 < v104)
        {
          v108 = v112;
        }

        else
        {
          v109 = v110;
        }
      }

      while (v109);
    }

    else
    {
      v108 = v106[15];
    }

    if (v108 == (v106[15] + 4 * v107) || *v108 != v104)
    {
LABEL_180:
      sub_1AE6AF890(v3, v252);
      goto LABEL_181;
    }

    v114 = *(a1 + 88);
    v254 = 0;
    v255 = &v254;
    v256.__locale_ = 0x4002000000;
    v257[0] = sub_1AE77CEC8;
    v257[1] = sub_1AE77CEEC;
    v259 = 0;
    v260 = 0;
    v258 = 0;
    if (!v114)
    {
      goto LABEL_312;
    }

    v245 = v114;
    v115 = v106[10];
    v116 = v106[11];
    if (v115 != v116)
    {
      v117 = MEMORY[0x1E69E9820];
      do
      {
        v118 = *v115;
        if (v105 <= 125)
        {
          v119 = v105;
          if (v105 != 72)
          {
            if (v105 != 123)
            {
              goto LABEL_176;
            }

            v119 = 69;
          }
        }

        else
        {
          if (v105 != 126)
          {
            v119 = v105;
            if (v105 == 127)
            {
              goto LABEL_177;
            }

            v119 = v105;
            if (v105 == 128)
            {
              goto LABEL_177;
            }

LABEL_176:
            v119 = 0;
            goto LABEL_177;
          }

          v119 = 68;
        }

LABEL_177:
        __dst = v117;
        v267 = 0x40000000;
        v268 = sub_1AE77CF04;
        v269 = &unk_1E7A30000;
        v270 = &v254;
        v271 = v106;
        (*(*v118 + 104))(v118, v119, &__dst);
        ++v115;
      }

      while (v115 != v116);
    }

    v120 = v106[3];
    if (v120)
    {
      v121 = 0;
      v122 = 1;
      do
      {
        v124 = v106[2] + 16 * v121;
        if (*(v124 + 4) == v105)
        {
          v125 = v255;
          v126 = v255[6];
          v127 = v255[7];
          if (v126 < v127)
          {
            *v126 = *v124;
            *(v126 + 8) = *(v124 + 8);
            v123 = v126 + 16;
          }

          else
          {
            v128 = v255[5];
            v129 = v126 - v128;
            v130 = (v126 - v128) >> 4;
            v131 = v130 + 1;
            if ((v130 + 1) >> 60)
            {
              sub_1AE5CBB70();
            }

            v132 = v127 - v128;
            if (v132 >> 3 > v131)
            {
              v131 = v132 >> 3;
            }

            if (v132 >= 0x7FFFFFFFFFFFFFF0)
            {
              v133 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v133 = v131;
            }

            if (v133)
            {
              if (!(v133 >> 60))
              {
                operator new();
              }

              sub_1AE5CB09C();
            }

            v134 = 16 * v130;
            *v134 = *v124;
            *(v134 + 8) = *(v124 + 8);
            v123 = 16 * v130 + 16;
            memcpy(0, v128, v129);
            v125[5] = 0;
            v125[6] = v123;
            v125[7] = 0;
            if (v128)
            {
              operator delete(v128);
            }
          }

          v125[6] = v123;
          v120 = v106[3];
          v3 = v241;
        }

        v121 = v122++;
      }

      while (v120 > v121);
    }

    v135 = v255;
    v136 = v255[6];
    v137 = v255[5];
    if (v137 == v136)
    {
      goto LABEL_312;
    }

    v138 = (v136 - v137) >> 4;
    if (v138 >= v245)
    {
      v139 = v245;
    }

    else
    {
      v139 = (v136 - v137) >> 4;
    }

    v140 = &v137[4 * v139];
    if (v140 == v136)
    {
LABEL_300:
      if (v138 > v139)
      {
        v135[6] = &v137[4 * v139];
      }

      goto LABEL_309;
    }

    do
    {
      v141 = (v136 - v137) >> 4;
      if (v141 < 2)
      {
        break;
      }

      if (v141 == 3)
      {
        v200 = *(v137 + 3);
        v201 = v200;
        v202 = *(v137 + 1);
        v203 = v202;
        v204 = *(v136 - 8);
        v205 = v204;
        if (v201 <= v203)
        {
          if (v205 > v201)
          {
            v219 = v137[4];
            v137[4] = *(v136 - 16);
            *(v136 - 16) = v219;
            *(v137 + 3) = v204;
            *(v136 - 8) = v200;
            v220 = *(v137 + 3);
            v221 = v220;
            v222 = *(v137 + 1);
            v223 = v222;
            if (v221 > v223)
            {
              v224 = *v137;
              *v137 = v137[4];
              v137[4] = v224;
              *(v137 + 1) = v220;
              *(v137 + 3) = v222;
            }
          }
        }

        else
        {
          v206 = *v137;
          if (v205 <= v201)
          {
            *v137 = v137[4];
            v137[4] = v206;
            *(v137 + 1) = v200;
            *(v137 + 3) = v202;
            v225 = *(v136 - 8);
            v226 = v225;
            if (v226 <= v203)
            {
              break;
            }

            v137[4] = *(v136 - 16);
            *(v136 - 16) = v206;
            *(v137 + 3) = v225;
          }

          else
          {
            *v137 = *(v136 - 16);
            *(v136 - 16) = v206;
            *(v137 + 1) = v204;
          }

          *(v136 - 8) = v202;
        }

        break;
      }

      if (v141 == 2)
      {
        v207 = *(v136 - 8);
        v208 = v207;
        v209 = *(v137 + 1);
        v210 = v209;
        if (v208 > v210)
        {
          v211 = *v137;
          *v137 = *(v136 - 16);
          *(v136 - 16) = v211;
          *(v137 + 1) = v207;
          *(v136 - 8) = v209;
        }

        break;
      }

      if (v141 <= 7)
      {
        while (v137 != (v136 - 16))
        {
          v212 = v137;
          v137 += 4;
          if (v212 != v136 && v137 != v136)
          {
            v213 = v137;
            v214 = v212;
            do
            {
              v215 = v213[1];
              v216 = *(v214 + 1);
              if (v215 > v216)
              {
                v214 = v213;
              }

              v213 += 2;
            }

            while (v213 != v136);
            if (v214 != v212)
            {
              v217 = *v212;
              *v212 = *v214;
              *v214 = v217;
              v218 = *(v212 + 1);
              *(v212 + 1) = *(v214 + 1);
              *(v214 + 1) = v218;
            }
          }
        }

        break;
      }

      v142 = &v137[4 * ((v136 - v137) >> 5)];
      v143 = *(v142 + 8);
      v144 = v143;
      v145 = *(v137 + 1);
      v146 = v145;
      v147 = *(v136 - 8);
      v148 = v147;
      if (v144 > v146)
      {
        v149 = *v137;
        if (v148 > v144)
        {
          *v137 = *(v136 - 16);
          *(v136 - 16) = v149;
          *(v137 + 1) = v147;
          goto LABEL_216;
        }

        *v137 = *v142;
        *v142 = v149;
        *(v137 + 1) = v143;
        *(v142 + 8) = v145;
        v156 = *(v136 - 8);
        v157 = v156;
        if (v157 > v146)
        {
          *v142 = *(v136 - 16);
          *(v136 - 16) = v149;
          *(v142 + 8) = v156;
LABEL_216:
          *(v136 - 8) = v145;
        }

LABEL_217:
        v158 = 1;
        goto LABEL_219;
      }

      if (v148 > v144)
      {
        v150 = *v142;
        *v142 = *(v136 - 16);
        *(v136 - 16) = v150;
        *(v142 + 8) = v147;
        *(v136 - 8) = v143;
        v151 = *(v142 + 8);
        v152 = v151;
        v153 = *(v137 + 1);
        v154 = v153;
        if (v152 > v154)
        {
          v155 = *v137;
          *v137 = *v142;
          *v142 = v155;
          *(v137 + 1) = v151;
          *(v142 + 8) = v153;
        }

        goto LABEL_217;
      }

      v158 = 0;
LABEL_219:
      v159 = v136 - 16;
      v160 = *(v137 + 1);
      v161 = v160;
      v162 = *(v142 + 8);
      if (v161 <= v162)
      {
        v164 = v136 - 16;
        while (1)
        {
          v163 = v164 - 16;
          if ((v164 - 16) == v137)
          {
            break;
          }

          v165 = *(v164 - 8);
          v166 = v165;
          v164 -= 16;
          if (v166 > v162)
          {
            v167 = *v137;
            *v137 = *v163;
            *v163 = v167;
            *(v137 + 1) = v165;
            *(v163 + 8) = v160;
            if (v158)
            {
              v158 = 2;
            }

            else
            {
              v158 = 1;
            }

            goto LABEL_227;
          }
        }

        v185 = (v137 + 4);
        v186 = *(v136 - 8);
        v187 = v186;
        if (v161 <= v187)
        {
          if (v185 == v159)
          {
            break;
          }

          while (1)
          {
            v188 = v185[1];
            v189 = v188;
            if (v161 > v189)
            {
              break;
            }

            v185 += 2;
            if (v185 == v159)
            {
              goto LABEL_290;
            }
          }

          v193 = *v185;
          *v185 = *(v136 - 16);
          *(v136 - 16) = v193;
          v185[1] = v186;
          *(v136 - 8) = v188;
          v185 += 2;
        }

        if (v185 == v159)
        {
          break;
        }

        while (1)
        {
          v194 = *(v137 + 1);
          do
          {
            v182 = v185;
            v195 = v185[1];
            v196 = v195;
            v185 += 2;
          }

          while (v194 <= v196);
          do
          {
            v197 = *(v159 - 8);
            v159 -= 16;
            v198 = v197;
          }

          while (v194 > v198);
          if (v182 >= v159)
          {
            break;
          }

          v199 = *v182;
          *v182 = *v159;
          *v159 = v199;
          *(v182 + 8) = v197;
          *(v159 + 8) = v195;
        }

        if (v182 > v140)
        {
          break;
        }
      }

      else
      {
        v163 = v136 - 16;
LABEL_227:
        v168 = v137 + 4;
        if ((v137 + 4) >= v163)
        {
          v171 = (v137 + 4);
        }

        else
        {
          v169 = (v137 + 4);
          while (1)
          {
            v170 = *(v142 + 8);
            do
            {
              v171 = v169;
              v172 = *(v169 + 8);
              v173 = v172;
              v169 += 16;
            }

            while (v173 > v170);
            do
            {
              v174 = *(v163 - 8);
              v163 -= 16;
              v175 = v174;
            }

            while (v175 <= v170);
            if (v171 >= v163)
            {
              break;
            }

            v176 = *v171;
            *v171 = *v163;
            *v163 = v176;
            *(v171 + 8) = v174;
            *(v163 + 8) = v172;
            ++v158;
            if (v142 == v171)
            {
              v142 = v163;
            }
          }
        }

        if (v171 != v142)
        {
          v177 = *(v142 + 8);
          v178 = v177;
          v179 = *(v171 + 8);
          v180 = v179;
          if (v178 > v180)
          {
            v181 = *v171;
            *v171 = *v142;
            *v142 = v181;
            *(v171 + 8) = v177;
            *(v142 + 8) = v179;
            ++v158;
          }
        }

        if (v171 == v140)
        {
          break;
        }

        if (!v158)
        {
          if (v171 <= v140)
          {
            v190 = v171 + 16;
            while (v190 != v136)
            {
              v191 = *(v190 + 8);
              v192 = *(v190 - 8);
              v190 += 16;
              if (v191 > v192)
              {
                goto LABEL_242;
              }
            }
          }

          else
          {
            while (v168 != v171)
            {
              v183 = *(v168 + 1);
              v184 = *(v168 - 1);
              v168 += 4;
              if (v183 > v184)
              {
                goto LABEL_242;
              }
            }
          }

          break;
        }

LABEL_242:
        if (v171 <= v140)
        {
          v182 = v171 + 16;
        }

        else
        {
          v136 = v171;
          v182 = v137;
        }
      }

      v137 = v182;
    }

    while (v136 != v140);
LABEL_290:
    v135 = v255;
    v137 = v255[5];
    v227 = v255[6];
    v138 = (v227 - v137) >> 4;
    v228 = v139 - v138;
    if (v139 <= v138)
    {
      goto LABEL_300;
    }

    v229 = v255[7];
    if (v228 > (v229 - v227) >> 4)
    {
      if (!(v139 >> 60))
      {
        v230 = v229 - v137;
        v231 = v230 >> 3;
        if (v230 >> 3 <= v139)
        {
          v231 = v139;
        }

        if (v230 >= 0x7FFFFFFFFFFFFFF0)
        {
          v232 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v232 = v231;
        }

        if (!(v232 >> 60))
        {
          operator new();
        }

        sub_1AE5CB09C();
      }

      sub_1AE5CBB70();
    }

    v233 = v227 + 16 * v228;
    if (((v228 - 1) & 0xFFFFFFFFFFFFFFFLL) != 0)
    {
      v234 = ((v228 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v235 = v227 + 16;
      v236 = v234 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v235 - 16) = 0;
        *v235 = 0;
        *(v235 - 8) = 0;
        *(v235 + 8) = 0;
        v235 += 32;
        v236 -= 2;
      }

      while (v236);
      if (v234 != (v234 & 0x1FFFFFFFFFFFFFFELL))
      {
        v227 += 16 * (v234 & 0x1FFFFFFFFFFFFFFELL);
        goto LABEL_307;
      }
    }

    else
    {
      do
      {
LABEL_307:
        *v227 = 0;
        *(v227 + 8) = 0;
        v227 += 16;
      }

      while (v227 != v233);
    }

    v135[6] = v233;
    v135 = v255;
LABEL_309:
    v238 = v135[5];
    v237 = v135[6];
    if (v237 != v238)
    {
      if (((v237 - v238) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1AE5CBB70();
    }

LABEL_312:
    _Block_object_dispose(&v254, 8);
    if (v258)
    {
      v259 = v258;
      operator delete(v258);
    }

LABEL_181:
    if (v32)
    {
      v247 = v32;
      operator delete(v32);
    }

    v2 = *(a1 + 96);
    v24 = v2 + 1;
    if (v2 + 1 < *(a1 + 80))
    {
      continue;
    }

    break;
  }

  v5 = *(a1 + 128);
  v6 = *(a1 + 136);
  return v5 != v6;
}

void sub_1AE6AF708(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38)
{
  _Block_object_dispose(&a32, 8);
  if (__p)
  {
    a38 = __p;
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1AE6AF890(char **a1, _OWORD *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 4;
    v9 = (v7 >> 4) + 1;
    if (v9 >> 60)
    {
      sub_1AE5CBB70();
    }

    v10 = v3 - v6;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 60))
      {
        operator new();
      }

      sub_1AE5CB09C();
    }

    *(16 * v8) = *a2;
    v5 = 16 * v8 + 16;
    memcpy(0, v6, v7);
    *a1 = 0;
    a1[1] = v5;
    a1[2] = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 16);
  }

  a1[1] = v5;
  v12 = *a1;
  v13 = (v5 - *a1) >> 4;
  v14 = v13 < 2;
  v15 = v13 - 2;
  if (!v14)
  {
    v16 = v15 >> 1;
    v17 = &v12[16 * v16];
    v18 = v17[1];
    v19 = *(v5 - 8);
    if (v18 < v19)
    {
      v22 = *(v5 - 16);
      v21 = v5 - 16;
      v20 = v22;
      do
      {
        v23 = v21;
        v21 = v17;
        *v23 = *v17;
        *(v23 + 8) = v18;
        if (!v16)
        {
          break;
        }

        v16 = (v16 - 1) >> 1;
        v17 = &v12[16 * v16];
        v18 = v17[1];
      }

      while (v18 < v19);
      *v21 = v20;
      *(v21 + 8) = v19;
    }
  }
}

os_log_t sub_1AE6AFA04()
{
  result = os_log_create("com.apple.LanguageModeling", "Prediction");
  qword_1EB5E0C60 = result;
  return result;
}

void sub_1AE6AFA34(void *a1)
{
  sub_1AE6AFA6C(a1);

  JUMPOUT(0x1B2706400);
}

void *sub_1AE6AFA6C(void *a1)
{
  *a1 = &unk_1F242BEB8;
  v2 = a1[16];
  if (v2)
  {
    a1[17] = v2;
    operator delete(v2);
  }

  v3 = a1[13];
  if (v3)
  {
    a1[14] = v3;
    operator delete(v3);
  }

  v4 = a1[7];
  if (v4)
  {
    a1[8] = v4;
    operator delete(v4);
  }

  v5 = a1[6];
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = a1[4];
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = a1[2];
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  return a1;
}

uint64_t sub_1AE6AFBB8(uint64_t result, int a2, unsigned __int8 *a3, int a4, unsigned int a5)
{
  v5 = *(result + 56);
  v6 = 4 * (a2 & 0x3FFFFFFF);
  v7 = (v5 + v6);
  if (!a4)
  {
LABEL_29:
    *v7 = a5;
    return result;
  }

  v8 = a4;
  v10 = result;
LABEL_4:
  v11 = *a3;
  v12 = v7 + 1;
  v13 = v7[v11 + 1];
  v14 = v7[v11 + 1] & 3;
  result = v13 >> 2;
  if ((v13 & 3) <= 1)
  {
    if (v14)
    {
      goto LABEL_23;
    }

    v15 = *(v10 + 80);
    if (v15 != *(v10 + 72))
    {
      v15 = (*(v10 + 80) & 0xFFFFFFFCLL) + *(*(v10 + 120) + (*(v10 + 80) & 0xFFFFFFFCLL)) + 4;
      *(v10 + 72) = v15;
    }

    v16 = v15 + 3;
    v17 = (v15 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v18 = v17 + *(v10 + 200);
    v19 = *(v10 + 64);
    if (v18 <= v19)
    {
LABEL_19:
      *(v10 + 72) = v18;
      *(v10 + 80) = v17;
      v24 = (v16 >> 2) | 0x100000000;
      goto LABEL_20;
    }

    while (1)
    {
      while (1)
      {
        v20 = 2 * v19 ? 2 * v19 : 0x10000;
        if (*(v10 + 88))
        {
          break;
        }

        v19 = v20;
        v23 = malloc_type_realloc(*(v10 + 120), v20, 0x6103A0DFuLL);
        *(v10 + 120) = v23;
        if (!v23)
        {
          v24 = 0;
LABEL_20:
          v12[v11] = HIDWORD(v24) | (4 * v24);
          result = v24;
LABEL_23:
          v26 = (*(v10 + 120) + 4 * (result & 0x3FFFFFFF));
          v25 = (v8 - 1);
          if (v8 == 1)
          {
            *v26 = 4;
            v26[1] = a5;
            return result;
          }

          v27 = *v26;
          if (!v27)
          {
            *v26 = 4;
            v27 = 4;
          }

          ++a3;
          v28 = (v8 + 4);
          v29 = v27 + 4;
          if (v29 + v28 < *(v10 + 200))
          {
            *(v26 + v29) = v25;
            v30 = v26 + v29 + 1;
            result = memcpy(v30, a3, v25);
            *&v30[v25] = a5;
            *v26 += v28;
            return result;
          }

          result = sub_1AE6B0168(v10);
          v5 = *(v10 + 56);
          *(v5 + v6 + 4 * v11 + 4) = HIDWORD(result) | (4 * result);
LABEL_3:
          v6 = 4 * (result & 0x3FFFFFFF);
          v7 = (v5 + v6);
          v8 = v25;
          if (!v25)
          {
            goto LABEL_29;
          }

          goto LABEL_4;
        }

LABEL_18:
        bzero(&v23[*(v10 + 64)], v19 - *(v10 + 64));
        *(v10 + 64) = v19;
        if (v18 <= v19)
        {
          goto LABEL_19;
        }
      }

      v21 = *(v10 + 104);
      v22 = *(v10 + 120);
      v19 = v20;
      if (!v21)
      {
        v23 = malloc_type_realloc(v22, v20, 0xC3B007B5uLL);
        *(v10 + 120) = v23;
        **(v10 + 96) = 1;
        goto LABEL_18;
      }

      *(v10 + 120) = v21(v22, v20, *(v10 + 112));
      *(v10 + 64) = v19;
      if (v18 <= v19)
      {
        goto LABEL_19;
      }
    }
  }

  if (v14 == 3)
  {
    ++a3;
    LODWORD(v25) = v8 - 1;
    goto LABEL_3;
  }

  return result;
}

unint64_t sub_1AE6AFE3C(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  LODWORD(v4) = a2;
  v5 = HIDWORD(a2);
  if (HIDWORD(a2) == 3)
  {
    v8 = (*(a1 + 56) + 4 * (a2 & 0x3FFFFFFF));
    v9 = v8 + 1;
    v10 = (v8 + 5);
    v11 = 0uLL;
    v12 = 256;
    v13.i64[0] = 0x300000003;
    v13.i64[1] = 0x300000003;
    v14 = 0uLL;
    do
    {
      v11 = vsubq_s32(v11, vtstq_s32(v10[-1], v13));
      v14 = vsubq_s32(v14, vtstq_s32(*v10, v13));
      v10 += 2;
      v12 -= 8;
    }

    while (v12);
    if (!a4)
    {
      v11 = vaddq_s32(v14, v11);
      v11.n128_u32[0] = vaddvq_s32(v11);
      v15 = v11.n128_u8[0];
      if (v11.n128_u32[0] < 0x21)
      {
        v16 = *a3;
        v17 = *(a3 + 8) + 3;
        v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL) + 4 * v11.n128_u32[0] + 40;
        if (v18 > *a3)
        {
          do
          {
            if (2 * v16)
            {
              v20 = 2 * v16;
            }

            else
            {
              v20 = 0x10000;
            }

            if (*(a3 + 24))
            {
              v21 = *(a3 + 40);
              v22 = *(a3 + 56);
              v16 = v20;
              if (v21)
              {
                *(a3 + 56) = v21(v22, v20, *(a3 + 48));
                goto LABEL_10;
              }

              v19 = malloc_type_realloc(v22, v20, 0xC3B007B5uLL);
              *(a3 + 56) = v19;
              **(a3 + 32) = 1;
            }

            else
            {
              v16 = v20;
              v19 = malloc_type_realloc(*(a3 + 56), v20, 0x6103A0DFuLL);
              *(a3 + 56) = v19;
            }

            bzero(&v19[*a3], v16 - *a3);
LABEL_10:
            *a3 = v16;
          }

          while (v18 > v16);
        }

        v35 = 0;
        *(a3 + 8) = v18;
        *(a3 + 16) = v17 & 0xFFFFFFFFFFFFFFFCLL;
        v4 = (v17 >> 2) | 0x200000000;
        v36 = v17 & 0xFFFFFFFC;
        v37 = *(a3 + 56) + v36;
        *v37 = *v8;
        *(v37 + 37) = v15;
        do
        {
          v38 = sub_1AE6AFE3C(a1, (v9[v35] >> 2) | ((v9[v35] & 3) << 32), a3, 0, v11, v14);
          if (HIDWORD(v38))
          {
            v39 = *(a3 + 56) + v36;
            v40 = *(v39 + 36);
            *(v39 + 36) = v40 + 1;
            *(v39 + 4 * v40 + 40) = HIDWORD(v38) + 4 * v38;
            *(v39 + 4 * (v35 >> 5) + 4) |= 1 << v35;
          }

          ++v35;
        }

        while (v35 != 256);
        goto LABEL_32;
      }
    }

    v23 = *a3;
    v24 = *(a3 + 8) + 3;
    v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL) + 1028;
    if (v25 <= *a3)
    {
LABEL_30:
      *(a3 + 8) = v25;
      *(a3 + 16) = v24 & 0xFFFFFFFFFFFFFFFCLL;
      v4 = (v24 >> 2) | 0x300000000;
      *(*(a3 + 56) + (v24 & 0xFFFFFFFC)) = *v8;
      v30 = (v24 & 0xFFFFFFFC) + 4;
      v31 = 256;
      do
      {
        v32 = *v9++;
        v33 = sub_1AE6AFE3C(a1, (v32 >> 2) | ((v32 & 3) << 32), a3, 0, v11, v14);
        *(*(a3 + 56) + v30) = HIDWORD(v33) + 4 * v33;
        v30 += 4;
        --v31;
      }

      while (v31);
LABEL_32:
      v5 = HIDWORD(v4);
      return v4 | (v5 << 32);
    }

    while (1)
    {
      if (2 * v23)
      {
        v27 = 2 * v23;
      }

      else
      {
        v27 = 0x10000;
      }

      if (*(a3 + 24))
      {
        v28 = *(a3 + 40);
        v29 = *(a3 + 56);
        v23 = v27;
        if (v28)
        {
          *(a3 + 56) = v28(v29, v27, *(a3 + 48), v11, v14);
          goto LABEL_22;
        }

        v26 = malloc_type_realloc(v29, v27, 0xC3B007B5uLL);
        *(a3 + 56) = v26;
        **(a3 + 32) = 1;
      }

      else
      {
        v23 = v27;
        v26 = malloc_type_realloc(*(a3 + 56), v27, 0x6103A0DFuLL);
        *(a3 + 56) = v26;
      }

      bzero(&v26[*a3], v23 - *a3);
LABEL_22:
      *a3 = v23;
      if (v25 <= v23)
      {
        goto LABEL_30;
      }
    }
  }

  return v4 | (v5 << 32);
}

uint64_t sub_1AE6B0168(uint64_t a1)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1EEE9AC00]();
  v4 = (v20 - ((v3 + 19) & 0x1FFFFFFF0));
  v6 = 4 * (v5 & 0x3FFFFFFF);
  v7 = (*(v2 + 120) + v6);
  v8 = *v7;
  *v4 = v8;
  memcpy(v4 + 1, v7 + 1, v8);
  if (*(a1 + 80) == v6)
  {
    bzero(v7, *(a1 + 72) - v6);
    *(a1 + 72) = *(a1 + 80);
  }

  v9 = *a1;
  v10 = *(a1 + 8) + 3;
  v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL) + 1028;
  if (v11 > *a1)
  {
    do
    {
      if (2 * v9)
      {
        v13 = 2 * v9;
      }

      else
      {
        v13 = 0x10000;
      }

      if (*(a1 + 24))
      {
        v14 = *(a1 + 40);
        v15 = *(a1 + 56);
        v9 = v13;
        if (v14)
        {
          *(a1 + 56) = v14(v15, v13, *(a1 + 48));
          goto LABEL_7;
        }

        v12 = malloc_type_realloc(v15, v13, 0xC3B007B5uLL);
        *(a1 + 56) = v12;
        **(a1 + 32) = 1;
      }

      else
      {
        v9 = v13;
        v12 = malloc_type_realloc(*(a1 + 56), v13, 0x6103A0DFuLL);
        *(a1 + 56) = v12;
      }

      bzero(&v12[*a1], v9 - *a1);
LABEL_7:
      *a1 = v9;
    }

    while (v11 > v9);
  }

  *(a1 + 8) = v11;
  *(a1 + 16) = v10 & 0xFFFFFFFFFFFFFFFCLL;
  *(*(a1 + 56) + (v10 & 0xFFFFFFFC)) = v4[1];
  if (v8 >= 5)
  {
    v16 = v4 + v8;
    v17 = (v4 + 2);
    do
    {
      v18 = &v17[*v17 + 1];
      sub_1AE6AFBB8(a1, (v10 >> 2) | 0x300000000);
      v17 = (v18 + 4);
    }

    while (v18 < v16);
  }

  return (v10 >> 2) | 0x300000000;
}

void *sub_1AE6B035C(void *result, void *a2, _DWORD *a3, uint64_t a4, uint64_t a5)
{
  v8 = result;
  if (*a2)
  {
    if (qword_1EB5E0C40 != -1)
    {
      v11 = a3;
      dispatch_once(&qword_1EB5E0C40, &unk_1F242B740);
      a3 = v11;
    }

    result = (*(**(qword_1EB5E0C48 + 8 * (*a3 & 3)) + 16))(&v12);
    *v8 = v12;
    v8[1] = *(&v12 + 1);
    *(v8 + 16) = v13;
  }

  else
  {
    *result = 0;
    result[1] = 0;
    *(result + 16) = 0;
  }

  v9 = a5 - 1;
  v10 = a4 + 1;
  do
  {
    if ((*v8 & 3) == 0)
    {
      break;
    }

    if (*a2)
    {
      if (qword_1EB5E0C40 != -1)
      {
        dispatch_once(&qword_1EB5E0C40, &unk_1F242B740);
      }

      result = (*(**(qword_1EB5E0C48 + 8 * (*v8 & 3)) + 16))(&v12);
      *v8 = v12;
      v8[2] = v13;
    }

    ++v10;
    --v9;
  }

  while (v9);
  return result;
}

uint64_t sub_1AE6B0520(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a1 + 168);
  v43 = *(a1 + 16);
  if (v43 > v8)
  {
    v8 = *(a1 + 16);
  }

  v9 = a2 + 4 * a3 + 4 * (1 - v8);
  if (a3 >= v8)
  {
    v10 = v8 - 1;
  }

  else
  {
    v9 = a2;
    v10 = a3;
  }

  v44 = v10;
  if (v10)
  {
    v11 = (a1 + 24);
    v12 = *(a1 + 56);
    v13 = v44;
    if (v44 > 7)
    {
      v14 = 0;
      v32 = v12 + 4 * v44;
      v34 = v12 < a1 + 28 && v11 < v32;
      if ((v9 >= v32 || v12 >= v9 + 4 * v44) && !v34)
      {
        v14 = v44 & 0xFFFFFFFFFFFFFFF8;
        v36 = vld1q_dup_f32(v11);
        v37 = (v12 + 16);
        v38 = (v9 + 16);
        v39 = v44 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v40 = vbicq_s8(*v38, vcgtq_u32(*v38, v36));
          v37[-1] = vbicq_s8(v38[-1], vcgtq_u32(v38[-1], v36));
          *v37 = v40;
          v37 += 2;
          v38 += 2;
          v39 -= 8;
        }

        while (v39);
        if (v44 == v14)
        {
LABEL_13:
          v21 = *(a1 + 416);
          v22 = *(a1 + 440);
          v23 = a1 + 304;
          while (1)
          {
            v25 = (*(*v23 + 24))(a1 + 304, v12, 1, &dword_1EB5E0E90, 3);
            if (v25 != 1)
            {
              break;
            }

            v24 = dword_1EB5E0E90;
            *v21++ = dword_1EB5E0E90;
            if (v22)
            {
              goto LABEL_15;
            }

LABEL_16:
            v12 += 4;
            if (!--v13)
            {
              goto LABEL_21;
            }
          }

          if (v25 != 3)
          {
            goto LABEL_16;
          }

          *v21++ = dword_1EB5E0E90;
          if (!v22)
          {
            goto LABEL_16;
          }

          v24 = dword_1EB5E0E98;
LABEL_15:
          *v22++ = v24;
          goto LABEL_16;
        }
      }
    }

    else
    {
      v14 = 0;
    }

    v15 = v44 - v14;
    v16 = 4 * v14;
    v17 = (v12 + 4 * v14);
    v18 = (v9 + v16);
    do
    {
      v20 = *v18++;
      v19 = v20;
      if (v20 > *v11)
      {
        v19 = 0;
      }

      *v17++ = v19;
      --v15;
    }

    while (v15);
    goto LABEL_13;
  }

LABEL_21:
  if (v43 > a4)
  {
    if (v44 >= v43 - 1)
    {
      v26 = v43 - 1;
    }

    else
    {
      v26 = v44;
    }

    v27 = 0.0;
    if (v26 > a4)
    {
      v28 = 4 * v44 - 4 * v26;
      do
      {
        if (sub_1AE7048D0(*(a1 + 80), (*(a1 + 416) + v28), v26, v45) != 2)
        {
          v27 = *(**(a1 + 96) + 8 * BYTE1(v45[0])) + v27;
        }

        --v26;
        v28 += 4;
      }

      while (v26 > a4);
    }

    if (!a4 && (a5 & 0x8000000000000000) == 0)
    {
      if (!*(a1 + 88))
      {
        v45[0] = &unk_1F242BF58;
        v45[1] = a1;
        *&v45[2] = v27;
        v45[3] = 0;
        v45[4] = a6;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v30 = *(**(a1 + 80) + 32);
        if (v30 != 5 && v30 != 3)
        {
          operator new();
        }

        operator new();
      }

      operator new();
    }

    operator new();
  }

  return 0;
}

void sub_1AE6B0998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  MEMORY[0x1B2706400](v6, 0x30C400D66AB62);
  sub_1AE6B0A38(va);
  _Unwind_Resume(a1);
}

void sub_1AE6B09CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
    v27 = a22;
    if (!a22)
    {
LABEL_3:
      v28 = a19;
      if (!a19)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v27 = a22;
    if (!a22)
    {
      goto LABEL_3;
    }
  }

  operator delete(v27);
  v28 = a19;
  if (!a19)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(v28);
  _Unwind_Resume(exception_object);
}

void *sub_1AE6B0A38(void *a1)
{
  *a1 = &unk_1F242BF58;
  v2 = a1[17];
  if (v2)
  {
    v3 = a1[18];
    v4 = a1[17];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 24);
        if (v5)
        {
          *(v3 - 16) = v5;
          operator delete(v5);
        }

        v3 -= 40;
      }

      while (v3 != v2);
      v4 = a1[17];
    }

    a1[18] = v2;
    operator delete(v4);
  }

  v6 = a1[16];
  a1[16] = 0;
  if (v6)
  {
    if (*v6)
    {
      (*(**v6 + 8))(*v6);
    }

    MEMORY[0x1B2706400](v6, 0x1020C40EDED9539);
  }

  v7 = a1[15];
  a1[15] = 0;
  if (v7)
  {
    (*(*v7 + 24))(v7);
  }

  v8 = a1[11];
  if (v8)
  {
    a1[12] = v8;
    operator delete(v8);
  }

  v9 = a1[8];
  if (v9)
  {
    a1[9] = v9;
    operator delete(v9);
  }

  v10 = a1[5];
  if (v10)
  {
    a1[6] = v10;
    operator delete(v10);
  }

  return a1;
}

void sub_1AE6B0B78(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = &unk_1F242BF58;
  *(a1 + 8) = a2;
  *(a1 + 16) = a5;
  *(a1 + 24) = 0;
  *(a1 + 32) = a8;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  if (a4)
  {
    if ((a4 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  if (a7)
  {
    if ((a7 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  sub_1AE705D64(*(a2 + 80), a3, a4);
}

void sub_1AE6B0CC8(_Unwind_Exception *exception_object)
{
  v6 = *v2;
  if (*v2)
  {
    v1[12] = v6;
    operator delete(v6);
    v7 = *v3;
    if (!*v3)
    {
LABEL_3:
      v8 = *v4;
      if (!*v4)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v7 = *v3;
    if (!*v3)
    {
      goto LABEL_3;
    }
  }

  v1[9] = v7;
  operator delete(v7);
  v8 = *v4;
  if (!*v4)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  v1[6] = v8;
  operator delete(v8);
  _Unwind_Resume(exception_object);
}

unint64_t sub_1AE6B0D3C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 136);
  v4 = *(a1 + 144) - v3;
  v5 = 0xCCCCCCCCCCCCCCCDLL * (v4 >> 3);
  if (!v4)
  {
    v7 = 0.0;
    goto LABEL_28;
  }

  if (v5 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 0xCCCCCCCCCCCCCCCDLL * (v4 >> 3);
  }

  if (!a2)
  {
    if (v5 >= 4)
    {
      v25 = v6 & 0xFFFFFFFFFFFFFFFCLL;
      v26 = (v3 + 80);
      v27 = 0uLL;
      v28 = v6 & 0xFFFFFFFFFFFFFFFCLL;
      v29 = 0uLL;
      do
      {
        v30 = v26 + 5;
        v31.f64[0] = *(v26 - 10);
        v31.f64[1] = *(v26 - 5);
        v32 = *v26;
        v26 += 20;
        v33.f64[0] = v32;
        v33.f64[1] = *v30;
        v27 = vaddq_f64(v31, v27);
        v29 = vaddq_f64(v33, v29);
        v28 -= 4;
      }

      while (v28);
      v7 = vaddvq_f64(vaddq_f64(v29, v27));
      if (v5 == v25)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v25 = 0;
      v7 = 0.0;
    }

    v34 = v6 - v25;
    v35 = (v3 + 40 * v25);
    do
    {
      v36 = *v35;
      v35 += 5;
      v7 = v36 + v7;
      --v34;
    }

    while (v34);
    goto LABEL_28;
  }

  v7 = 0.0;
  if (v5 <= 7 || (v3 + 40 * v6 - 28 > a2 ? (v8 = v3 + 8 >= a2 + 4 * v6) : (v8 = 1), !v8))
  {
    v9 = 0;
LABEL_18:
    v21 = v6 - v9;
    v22 = (a2 + 4 * v9);
    v23 = (v3 + 40 * v9 + 8);
    do
    {
      v7 = *(v23 - 1) + v7;
      v24 = *v23;
      v23 += 5;
      *v22++ = v24;
      --v21;
    }

    while (v21);
    goto LABEL_28;
  }

  v9 = v6 & 0xFFFFFFFFFFFFFFF8;
  v10 = (a2 + 16);
  v11 = v3 + 160;
  v12 = 0uLL;
  v13 = v6 & 0xFFFFFFFFFFFFFFF8;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  do
  {
    v17.f64[0] = *(v11 - 160);
    v18.f64[0] = *(v11 - 80);
    v17.f64[1] = *(v11 - 120);
    v18.f64[1] = *(v11 - 40);
    v19.f64[0] = *v11;
    v20.f64[0] = *(v11 + 80);
    v19.f64[1] = *(v11 + 40);
    v20.f64[1] = *(v11 + 120);
    v14 = vaddq_f64(v18, v14);
    v12 = vaddq_f64(v17, v12);
    v16 = vaddq_f64(v20, v16);
    LODWORD(v17.f64[0]) = *(v11 - 152);
    HIDWORD(v17.f64[0]) = *(v11 - 112);
    LODWORD(v17.f64[1]) = *(v11 - 72);
    HIDWORD(v17.f64[1]) = *(v11 - 32);
    LODWORD(v18.f64[0]) = *(v11 + 8);
    HIDWORD(v18.f64[0]) = *(v11 + 48);
    LODWORD(v18.f64[1]) = *(v11 + 88);
    HIDWORD(v18.f64[1]) = *(v11 + 128);
    v15 = vaddq_f64(v19, v15);
    v10[-1] = v17;
    *v10 = v18;
    v10 += 2;
    v11 += 320;
    v13 -= 8;
  }

  while (v13);
  v7 = vaddvq_f64(vaddq_f64(vaddq_f64(v15, v12), vaddq_f64(v16, v14)));
  if (v5 != v9)
  {
    goto LABEL_18;
  }

LABEL_28:
  if (a3)
  {
    *a3 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 32) = 1;
    *(a3 + 40) = xmmword_1AE79A550;
    *(a3 + 56) = 0;
    *(a3 + 64) = xmmword_1AE79A550;
    *(a3 + 88) = 0;
    *(a3 + 96) = 0;
    *(a3 + 80) = 0xFFEFFFFFFFFFFFFFLL;
    *(a3 + 104) = (*(**(a1 + 120) + 32))(*(a1 + 120));
    *a3 = v7;
    *(a3 + 112) = 0;
  }

  return v5;
}

uint64_t sub_1AE6B0FB0(uint64_t a1)
{
  v2 = (a1 + 136);
  if ((*(a1 + 24) - 1) <= 2 && *(a1 + 32) >= 2uLL)
  {
    v3 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 144) - *(a1 + 136)) >> 3);
    if (v3 < *(*(a1 + 8) + 16) - 1)
    {
      v4 = (*(a1 + 48) - *(a1 + 40)) >> 2;
      if (v4 > v3)
      {
        if (!(v4 >> 62))
        {
          operator new();
        }

        goto LABEL_61;
      }
    }
  }

  v45 = 0;
  v46 = 0;
  v5 = 0.0;
  *__dst = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  do
  {
    while (1)
    {
      while (1)
      {
        v6 = *(a1 + 128);
        if (!v6)
        {
          break;
        }

        v7 = *v6;
        if (!*v6)
        {
          break;
        }

        v8 = v6[1];
        if (v8 > 2)
        {
          break;
        }

        v6[1] = v8 + 1;
        if (!(*(*v7 + 16))(v7))
        {
          break;
        }

        *(a1 + 96) -= 4;
        v18 = *(a1 + 128);
        v48 = *__dst;
        v49 = 0;
        v50 = 0;
        v51 = 1;
        v52 = xmmword_1AE79A550;
        v53 = 0;
        v54 = xmmword_1AE79A550;
        v55 = 0xFFEFFFFFFFFFFFFFLL;
        v60 = 0;
        v57 = 0;
        v58 = 0;
        v56 = 0;
        v59 = 0;
        v19 = *v18;
        if (*v18 && v18[1] <= 2)
        {
          v47 = 0;
          (*(*v19 + 24))(v19, &v47, &v48);
          v5 = *&v48;
          v20 = v47;
        }

        else
        {
          v20 = 0;
        }

        v46 = v20;
        sub_1AE6369B4(a1 + 88, &v46);
      }

      *(a1 + 96) = *(a1 + 88);
      v9 = *(a1 + 136);
      for (i = *(a1 + 144); i != v9; i -= 40)
      {
        v11 = *(i - 24);
        if (v11)
        {
          *(i - 16) = v11;
          operator delete(v11);
        }
      }

      *(a1 + 144) = v9;
      *(a1 + 112) = 0;
      if (!(***(a1 + 120))(*(a1 + 120)))
      {
        break;
      }

      v14 = (v44 = 0, v12 = (*(**(a1 + 120) + 8))(*(a1 + 120), &v44), v43 = v12, v13 = *(a1 + 8), *(v13 + 336) <= v12) && *(v13 + 340) >= v12 || *(v13 + 344) <= v12 && *(v13 + 348) >= v12;
      v15 = *(a1 + 16);
      v16 = *(**(v13 + 104) + 8 * v44);
      sub_1AE6369B4(a1 + 88, &v43);
      *(a1 + 112) = v16 + v15 + *(a1 + 112);
      if (!v14)
      {
        break;
      }

      v17 = (*(a1 + 72) - *(a1 + 64)) >> 2;
      if (v17 >= 2)
      {
        if (!(v17 >> 62))
        {
          operator new();
        }

        goto LABEL_61;
      }
    }

    v21 = *(a1 + 88);
    v22 = *(a1 + 96) - v21;
    if (!v22)
    {
      return 0;
    }
  }

  while (sub_1AE718618(*(a1 + 8) + 304, v21, v22 >> 2, &v45, 1) != 1);
  v23 = v45;
  v25 = *(a1 + 88);
  v24 = *(a1 + 96);
  if (v24 != v25)
  {
    if (((v24 - v25) & 0x8000000000000000) == 0)
    {
      operator new();
    }

LABEL_61:
    sub_1AE5CBB70();
  }

  v27 = *(a1 + 112) + v5;
  v29 = *(a1 + 144);
  v28 = *(a1 + 152);
  if (v29 >= v28)
  {
    v31 = *v2;
    v32 = v29 - *v2;
    v33 = 0xCCCCCCCCCCCCCCCDLL * (v32 >> 3) + 1;
    if (v33 > 0x666666666666666)
    {
      sub_1AE5CBB70();
    }

    v34 = 0xCCCCCCCCCCCCCCCDLL * ((v28 - v31) >> 3);
    if (2 * v34 > v33)
    {
      v33 = 2 * v34;
    }

    if (v34 >= 0x333333333333333)
    {
      v35 = 0x666666666666666;
    }

    else
    {
      v35 = v33;
    }

    if (v35)
    {
      if (v35 <= 0x666666666666666)
      {
        operator new();
      }

      sub_1AE5CB09C();
    }

    v36 = 8 * (v32 >> 3);
    *v36 = v27;
    *(v36 + 8) = v23;
    *(v36 + 16) = 0u;
    *(v36 + 32) = 0;
    v30 = v36 + 40;
    v37 = v36 - v32;
    if (v31 != v29)
    {
      v38 = v31;
      v39 = v37;
      do
      {
        v40 = *v38;
        *(v39 + 8) = *(v38 + 2);
        *v39 = v40;
        *(v39 + 24) = 0;
        *(v39 + 32) = 0;
        *(v39 + 16) = *(v38 + 1);
        *(v39 + 32) = v38[4];
        v38[2] = 0;
        v38[3] = 0;
        v38[4] = 0;
        v38 += 5;
        v39 += 40;
      }

      while (v38 != v29);
      do
      {
        v41 = v31[2];
        if (v41)
        {
          v31[3] = v41;
          operator delete(v41);
        }

        v31 += 5;
      }

      while (v31 != v29);
      v31 = *v2;
    }

    *(a1 + 136) = v37;
    *(a1 + 144) = v30;
    *(a1 + 152) = 0;
    if (v31)
    {
      operator delete(v31);
    }
  }

  else
  {
    *v29 = v27;
    *(v29 + 8) = v23;
    *(v29 + 16) = 0u;
    v30 = v29 + 40;
    *(v29 + 32) = 0;
  }

  *(a1 + 144) = v30;
  ++*(a1 + 24);
  return 1;
}