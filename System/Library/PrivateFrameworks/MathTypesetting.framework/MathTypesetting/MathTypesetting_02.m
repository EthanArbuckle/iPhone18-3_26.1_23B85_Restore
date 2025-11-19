void sub_258261000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  EQKit::OpticalKern::Glyph::Key::~Key(va);
  _Unwind_Resume(a1);
}

void std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  EQKit::OpticalKern::Glyph::Key::Key(v5, *a1);
  EQKit::OpticalKern::Glyph::Key::operator=(v2, v3);
  EQKit::OpticalKern::Glyph::Key::operator=(v3, v5);
  EQKit::OpticalKern::Glyph::Key::~Key(v5);
  v4 = *(v2 + 32);
  *(v2 + 32) = *(v3 + 32);
  *(v3 + 32) = v4;
}

void std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> const&,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> const&),std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long>*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (**a5)(uint64_t, uint64_t))
{
  v16 = a2;
  v17 = a1;
  v14 = a4;
  v15 = a3;
  v19 = a2;
  v20 = a1;
  v18 = a3;
  v10 = (*a5)(a2, a1);
  v11 = (*a5)(a3, a2);
  if (v10)
  {
    if (v11)
    {
      v12 = &v20;
LABEL_9:
      v13 = &v18;
      goto LABEL_10;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&>(&v20, &v19);
    if ((*a5)(v18, v19))
    {
      v12 = &v19;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&>(&v19, &v18);
    if ((*a5)(v19, v20))
    {
      v12 = &v20;
      v13 = &v19;
LABEL_10:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&>(v12, v13);
    }
  }

  if ((*a5)(a4, a3))
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&>(&v15, &v14);
    if ((*a5)(v15, a2))
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&>(&v16, &v15);
      if ((*a5)(v16, a1))
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&>(&v17, &v16);
      }
    }
  }
}

void std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> const&,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> const&),std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long>*>(uint64_t a1, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  if (a1 != a2)
  {
    v5 = a1 + 40;
    if (a1 + 40 != a2)
    {
      v7 = 0;
      v8 = a1;
      do
      {
        v9 = v5;
        if ((*a3)(v5, v8))
        {
          EQKit::OpticalKern::Glyph::Key::Key(v13, v9);
          v14 = *(v8 + 72);
          v10 = v7;
          while (1)
          {
            EQKit::OpticalKern::Glyph::Key::operator=(a1 + v10 + 40, a1 + v10);
            *(a1 + v10 + 72) = *(a1 + v10 + 32);
            if (!v10)
            {
              break;
            }

            v11 = (*a3)(v13, a1 + v10 - 40);
            v10 -= 40;
            if ((v11 & 1) == 0)
            {
              v12 = a1 + v10 + 40;
              goto LABEL_10;
            }
          }

          v12 = a1;
LABEL_10:
          EQKit::OpticalKern::Glyph::Key::operator=(v12, v13);
          *(v12 + 32) = v14;
          EQKit::OpticalKern::Glyph::Key::~Key(v13);
        }

        v5 = v9 + 40;
        v7 += 40;
        v8 = v9;
      }

      while (v9 + 40 != a2);
    }
  }
}

void sub_2582612DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  EQKit::OpticalKern::Glyph::Key::~Key(va);
  _Unwind_Resume(a1);
}

void std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> const&,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> const&),std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long>*>(uint64_t a1, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1 + 40;
    if (a1 + 40 != a2)
    {
      do
      {
        v7 = v5;
        if ((*a3)(v5, v4))
        {
          EQKit::OpticalKern::Glyph::Key::Key(v8, v7);
          v9 = *(v4 + 72);
          do
          {
            EQKit::OpticalKern::Glyph::Key::operator=(v4 + 40, v4);
            *(v4 + 72) = *(v4 + 32);
            v4 -= 40;
          }

          while (((*a3)(v8, v4) & 1) != 0);
          EQKit::OpticalKern::Glyph::Key::operator=(v4 + 40, v8);
          *(v4 + 72) = v9;
          EQKit::OpticalKern::Glyph::Key::~Key(v8);
        }

        v5 = v7 + 40;
        v4 = v7;
      }

      while (v7 + 40 != a2);
    }
  }
}

void sub_2582613C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  EQKit::OpticalKern::Glyph::Key::~Key(va);
  _Unwind_Resume(a1);
}

unint64_t std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *,BOOL (*&)(std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> const&,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> const&)>(uint64_t a1, unint64_t a2, unsigned int (**a3)(_BYTE *))
{
  v15 = a1;
  v14 = a2;
  EQKit::OpticalKern::Glyph::Key::Key(v12, a1);
  v13 = *(a1 + 32);
  if ((*a3)(v12, a2 - 40))
  {
    v6 = a1;
    do
    {
      v6 += 40;
      v15 = v6;
    }

    while (((*a3)(v12, v6) & 1) == 0);
  }

  else
  {
    v7 = a1 + 40;
    do
    {
      v6 = v7;
      v15 = v7;
      if (v7 >= v14)
      {
        break;
      }

      v8 = (*a3)(v12, v7);
      v7 = v6 + 40;
    }

    while (!v8);
  }

  v9 = v14;
  if (v6 < v14)
  {
    do
    {
      v9 -= 40;
      v14 = v9;
    }

    while (((*a3)(v12, v9) & 1) != 0);
    v6 = v15;
  }

  if (v6 < v9)
  {
    do
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&>(&v15, &v14);
      do
      {
        v15 += 40;
      }

      while (!(*a3)(v12));
      do
      {
        v14 -= 40;
      }

      while (((*a3)(v12) & 1) != 0);
      v6 = v15;
    }

    while (v15 < v14);
  }

  if (v6 - 40 != a1)
  {
    EQKit::OpticalKern::Glyph::Key::operator=(a1, v6 - 40);
    *(a1 + 32) = *(v6 - 8);
  }

  EQKit::OpticalKern::Glyph::Key::operator=(v6 - 40, v12);
  *(v6 - 8) = v13;
  v10 = v15;
  EQKit::OpticalKern::Glyph::Key::~Key(v12);
  return v10;
}

void sub_258261564(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  EQKit::OpticalKern::Glyph::Key::~Key(va);
  _Unwind_Resume(a1);
}

unint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *,BOOL (*&)(std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> const&,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> const&)>(uint64_t a1, unint64_t a2, uint64_t (**a3)(void))
{
  v15 = a2;
  EQKit::OpticalKern::Glyph::Key::Key(v13, a1);
  v5 = 0;
  v14 = *(a1 + 32);
  do
  {
    v16 = a1 + v5 + 40;
    v5 += 40;
  }

  while (((*a3)() & 1) != 0);
  v6 = v15;
  if (v5 == 40)
  {
    v9 = a1 + 40;
    do
    {
      if (v9 >= v6)
      {
        break;
      }

      v10 = *a3;
      v6 -= 40;
      v15 = v6;
    }

    while (((v10)(v6, v13) & 1) == 0);
  }

  else
  {
    v7 = v15 - 40;
    do
    {
      v15 = v7;
      v8 = (*a3)(v7, v13);
      v7 -= 40;
    }

    while (!v8);
    v9 = v16;
  }

  v11 = v9;
  if (v9 < v15)
  {
    do
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&>(&v16, &v15);
      do
      {
        v16 += 40;
      }

      while (((*a3)() & 1) != 0);
      do
      {
        v15 -= 40;
      }

      while (!(*a3)());
      v11 = v16;
    }

    while (v16 < v15);
  }

  if (v11 - 40 != a1)
  {
    EQKit::OpticalKern::Glyph::Key::operator=(a1, v11 - 40);
    *(a1 + 32) = *(v11 - 8);
  }

  EQKit::OpticalKern::Glyph::Key::operator=(v11 - 40, v13);
  *(v11 - 8) = v14;
  EQKit::OpticalKern::Glyph::Key::~Key(v13);
  return v11 - 40;
}

void sub_258261714(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  EQKit::OpticalKern::Glyph::Key::~Key(va);
  _Unwind_Resume(a1);
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> const&,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> const&),std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long>*>(uint64_t a1, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  v28 = a2;
  v29 = a1;
  v6 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  if (v6 <= 2)
  {
    if (v6 < 2)
    {
      return 1;
    }

    if (v6 == 2)
    {
      v7 = *a3;
      v28 = a2 - 40;
      if ((v7)())
      {
        v8 = &v29;
        v9 = &v28;
LABEL_30:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&>(v8, v9);
        return 1;
      }

      return 1;
    }

LABEL_16:
    v16 = a1 + 80;
    v26[0] = a1;
    v32 = a1 + 80;
    v33 = a1 + 40;
    v17 = (*a3)(a1 + 40, a1);
    v18 = (*a3)(a1 + 80, a1 + 40);
    if (v17)
    {
      if (v18)
      {
        v19 = v26;
      }

      else
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&>(v26, &v33);
        if (!(*a3)(v32, v33))
        {
          goto LABEL_35;
        }

        v19 = &v33;
      }

      v20 = &v32;
    }

    else
    {
      if (!v18 || (std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&>(&v33, &v32), !(*a3)(v33, v26[0])))
      {
LABEL_35:
        v21 = a1 + 120;
        if (v21 != a2)
        {
          v22 = 0;
          while (1)
          {
            if ((*a3)(v21, v16))
            {
              EQKit::OpticalKern::Glyph::Key::Key(v26, v21);
              v27 = *(v21 + 32);
              do
              {
                v23 = v16;
                EQKit::OpticalKern::Glyph::Key::operator=(v16 + 40, v16);
                *(v16 + 72) = *(v16 + 32);
                if (v16 == v29)
                {
                  break;
                }

                v16 -= 40;
              }

              while (((*a3)(v26, v23 - 40) & 1) != 0);
              EQKit::OpticalKern::Glyph::Key::operator=(v23, v26);
              *(v23 + 32) = v27;
              if (++v22 == 8)
              {
                v24 = v21 + 40 == v28;
                EQKit::OpticalKern::Glyph::Key::~Key(v26);
                return v24;
              }

              EQKit::OpticalKern::Glyph::Key::~Key(v26);
            }

            v16 = v21;
            v21 += 40;
            if (v21 == v28)
            {
              return 1;
            }
          }
        }

        return 1;
      }

      v19 = v26;
      v20 = &v33;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&>(v19, v20);
    goto LABEL_35;
  }

  if (v6 != 3)
  {
    if (v6 == 4)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> const&,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> const&),std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long>*,0>(a1, a1 + 40, a1 + 80, a2 - 40, a3);
      return 1;
    }

    if (v6 != 5)
    {
      goto LABEL_16;
    }

    v26[0] = a1;
    v32 = a1 + 80;
    v33 = a1 + 40;
    v10 = a2 - 40;
    v30 = a2 - 40;
    v31 = a1 + 120;
    std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> const&,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> const&),std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long>*,0>(a1, a1 + 40, a1 + 80, a1 + 120, a3);
    if (!(*a3)(v10, a1 + 120))
    {
      return 1;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&>(&v31, &v30);
    if (!(*a3)(v31, a1 + 80))
    {
      return 1;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&>(&v32, &v31);
    if (!(*a3)(v32, a1 + 40))
    {
      return 1;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&>(&v33, &v32);
    v11 = (*a3)(v33, a1);
    goto LABEL_22;
  }

  v12 = a1 + 40;
  v13 = a2 - 40;
  v26[0] = a1;
  v32 = a2 - 40;
  v33 = a1 + 40;
  v14 = (*a3)(a1 + 40, a1);
  v15 = (*a3)(v13, v12);
  if (v14)
  {
    if (v15)
    {
      v8 = v26;
    }

    else
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&>(v26, &v33);
      if (!(*a3)(v32, v33))
      {
        return 1;
      }

      v8 = &v33;
    }

    v9 = &v32;
    goto LABEL_30;
  }

  if (v15)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&>(&v33, &v32);
    v11 = (*a3)(v33, v26[0]);
LABEL_22:
    if (v11)
    {
      v8 = v26;
      v9 = &v33;
      goto LABEL_30;
    }
  }

  return 1;
}

void sub_258261ABC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  EQKit::OpticalKern::Glyph::Key::~Key(va);
  _Unwind_Resume(a1);
}

uint64_t std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> const&,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> const&),std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long>*,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (**a4)(uint64_t, uint64_t))
{
  v18 = a1;
  if (a1 != a2)
  {
    v6 = a2;
    v7 = a1;
    v8 = a2 - a1;
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 41)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = a1 + 40 * v10;
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> const&,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> const&),std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long>*>(v7, a4, v9, v12);
        v12 -= 40;
        --v11;
      }

      while (v11);
    }

    v17 = v6;
    v13 = v6;
    if (v6 != a3)
    {
      do
      {
        if ((*a4)(v13, v18))
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> *&>(&v17, &v18);
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> const&,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> const&),std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long>*>(v18, a4, v9, v18);
        }

        v13 = v17 + 40;
        v17 = v13;
      }

      while (v13 != a3);
      v7 = v18;
      v8 = v6 - v18;
    }

    if (v8 >= 41)
    {
      v14 = 0xCCCCCCCCCCCCCCCDLL * (v8 >> 3);
      do
      {
        std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*)(std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> const&,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> const&),std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long>*>(v7, v6, a4, v14);
        v6 -= 40;
      }

      while (v14-- > 2);
      return v17;
    }

    return v13;
  }

  return a3;
}

void std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> const&,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> const&),std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long>*>(uint64_t a1, uint64_t (**a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (0xCCCCCCCCCCCCCCCDLL * ((a4 - a1) >> 3)))
    {
      v10 = (0x999999999999999ALL * ((a4 - a1) >> 3)) | 1;
      v11 = a1 + 40 * v10;
      v12 = 0x999999999999999ALL * ((a4 - a1) >> 3) + 2;
      if (v12 < a3 && (*a2)(a1 + 40 * v10, v11 + 40))
      {
        v11 += 40;
        v10 = v12;
      }

      if (((*a2)(v11, v5) & 1) == 0)
      {
        EQKit::OpticalKern::Glyph::Key::Key(v15, v5);
        v16 = *(v5 + 32);
        do
        {
          v13 = v11;
          EQKit::OpticalKern::Glyph::Key::operator=(v5, v11);
          *(v5 + 32) = *(v11 + 32);
          if (v7 < v10)
          {
            break;
          }

          v14 = (2 * v10) | 1;
          v11 = a1 + 40 * v14;
          v10 = 2 * v10 + 2;
          if (v10 >= a3)
          {
            v10 = v14;
          }

          else if ((*a2)(a1 + 40 * v14, v11 + 40))
          {
            v11 += 40;
          }

          else
          {
            v10 = v14;
          }

          v5 = v13;
        }

        while (!(*a2)(v11, v15));
        EQKit::OpticalKern::Glyph::Key::operator=(v13, v15);
        *(v13 + 32) = v16;
        EQKit::OpticalKern::Glyph::Key::~Key(v15);
      }
    }
  }
}

void sub_258261DA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  EQKit::OpticalKern::Glyph::Key::~Key(va);
  _Unwind_Resume(a1);
}

void std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*)(std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> const&,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> const&),std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long>*>(uint64_t a1, uint64_t a2, unsigned int (**a3)(uint64_t, uint64_t), uint64_t a4)
{
  if (a4 >= 2)
  {
    EQKit::OpticalKern::Glyph::Key::Key(v10, a1);
    v11 = *(a1 + 32);
    v8 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> const&,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> const&),std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long>*>(a1, a3, a4);
    v9 = v8;
    if (v8 == a2 - 40)
    {
      EQKit::OpticalKern::Glyph::Key::operator=(v8, v10);
      *(v9 + 32) = v11;
    }

    else
    {
      EQKit::OpticalKern::Glyph::Key::operator=(v8, a2 - 40);
      *(v9 + 32) = *(a2 - 8);
      EQKit::OpticalKern::Glyph::Key::operator=(a2 - 40, v10);
      *(a2 - 8) = v11;
      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> const&,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> const&),std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long>*>(a1, v9 + 40, a3, 0xCCCCCCCCCCCCCCCDLL * ((v9 + 40 - a1) >> 3));
    }

    EQKit::OpticalKern::Glyph::Key::~Key(v10);
  }
}

void sub_258261EA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  EQKit::OpticalKern::Glyph::Key::~Key(va);
  _Unwind_Resume(a1);
}

uint64_t std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> const&,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> const&),std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long>*>(uint64_t a1, unsigned int (**a2)(uint64_t, uint64_t), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = a1 + 40 * v6;
    v9 = v8 + 40;
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 < a3)
    {
      v12 = v8 + 80;
      if ((*a2)(v8 + 40, v8 + 80))
      {
        v9 = v12;
        v10 = v11;
      }
    }

    EQKit::OpticalKern::Glyph::Key::operator=(a1, v9);
    *(a1 + 32) = *(v9 + 32);
    a1 = v9;
    v6 = v10;
  }

  while (v10 <= v7);
  return v9;
}

void std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> const&,std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long> const&),std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long>*>(uint64_t a1, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t), uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v8 = v4 >> 1;
    v9 = a1 + 40 * (v4 >> 1);
    v10 = a2 - 40;
    if ((*a3)(v9, a2 - 40))
    {
      EQKit::OpticalKern::Glyph::Key::Key(v12, v10);
      v13 = *(a2 - 8);
      do
      {
        v11 = v9;
        EQKit::OpticalKern::Glyph::Key::operator=(v10, v9);
        *(v10 + 32) = *(v9 + 32);
        if (!v8)
        {
          break;
        }

        v8 = (v8 - 1) >> 1;
        v9 = a1 + 40 * v8;
        v10 = v11;
      }

      while (((*a3)(v9, v12) & 1) != 0);
      EQKit::OpticalKern::Glyph::Key::operator=(v11, v12);
      *(v11 + 32) = v13;
      EQKit::OpticalKern::Glyph::Key::~Key(v12);
    }
  }
}

void sub_258262068(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  EQKit::OpticalKern::Glyph::Key::~Key(va);
  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>,std::__unordered_map_hasher<EQKit::OpticalKern::Glyph::Key,std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>,std::hash<EQKit::OpticalKern::Glyph::Key>,std::equal_to<EQKit::OpticalKern::Glyph::Key>,true>,std::__unordered_map_equal<EQKit::OpticalKern::Glyph::Key,std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>,std::equal_to<EQKit::OpticalKern::Glyph::Key>,std::hash<EQKit::OpticalKern::Glyph::Key>,true>,std::allocator<std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>>>::__erase_unique<EQKit::OpticalKern::Glyph::Key>(void *a1, uint64_t a2)
{
  result = std::__hash_table<std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>,std::__unordered_map_hasher<EQKit::OpticalKern::Glyph::Key,std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>,std::hash<EQKit::OpticalKern::Glyph::Key>,std::equal_to<EQKit::OpticalKern::Glyph::Key>,true>,std::__unordered_map_equal<EQKit::OpticalKern::Glyph::Key,std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>,std::equal_to<EQKit::OpticalKern::Glyph::Key>,std::hash<EQKit::OpticalKern::Glyph::Key>,true>,std::allocator<std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>>>::find<EQKit::OpticalKern::Glyph::Key>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>,std::__unordered_map_hasher<EQKit::OpticalKern::Glyph::Key,std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>,std::hash<EQKit::OpticalKern::Glyph::Key>,std::equal_to<EQKit::OpticalKern::Glyph::Key>,true>,std::__unordered_map_equal<EQKit::OpticalKern::Glyph::Key,std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>,std::equal_to<EQKit::OpticalKern::Glyph::Key>,std::hash<EQKit::OpticalKern::Glyph::Key>,true>,std::allocator<std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>>>::erase(a1, result);
    return 1;
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>,std::__unordered_map_hasher<EQKit::OpticalKern::Glyph::Key,std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>,std::hash<EQKit::OpticalKern::Glyph::Key>,std::equal_to<EQKit::OpticalKern::Glyph::Key>,true>,std::__unordered_map_equal<EQKit::OpticalKern::Glyph::Key,std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>,std::equal_to<EQKit::OpticalKern::Glyph::Key>,std::hash<EQKit::OpticalKern::Glyph::Key>,true>,std::allocator<std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>,std::__unordered_map_hasher<EQKit::OpticalKern::Glyph::Key,std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>,std::hash<EQKit::OpticalKern::Glyph::Key>,std::equal_to<EQKit::OpticalKern::Glyph::Key>,true>,std::__unordered_map_equal<EQKit::OpticalKern::Glyph::Key,std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>,std::equal_to<EQKit::OpticalKern::Glyph::Key>,std::hash<EQKit::OpticalKern::Glyph::Key>,true>,std::allocator<std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v6 == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<EQKit::OpticalKern::Glyph::Key const,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>,0>((v3 + 16));
    }

    operator delete(v3);
  }

  return v2;
}

void *std::__hash_table<std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>,std::__unordered_map_hasher<EQKit::OpticalKern::Glyph::Key,std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>,std::hash<EQKit::OpticalKern::Glyph::Key>,std::equal_to<EQKit::OpticalKern::Glyph::Key>,true>,std::__unordered_map_equal<EQKit::OpticalKern::Glyph::Key,std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>,std::equal_to<EQKit::OpticalKern::Glyph::Key>,std::hash<EQKit::OpticalKern::Glyph::Key>,true>,std::allocator<std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

void std::vector<std::pair<EQKit::OpticalKern::Glyph::Key,unsigned long>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        EQKit::OpticalKern::Glyph::Key::~Key((v4 - 40));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t EQKitLayoutManager::EQKitLayoutManager(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  *(a1 + 40) = [a3 kerningManager];
  *(a1 + 48) = [a3 layoutConfig];
  [a2 baseFontSize];
  v9 = v8;
  v10 = EQKit::Font::Manager::fontCollection([a3 fontManager]);
  v11 = [a2 baseFontName];
  if (objc_opt_respondsToSelector())
  {
    [a2 textMacroFontSize];
  }

  else
  {
    [a2 baseFontSize];
  }

  EQKitLayoutContext::EQKitLayoutContext((a1 + 56), v9, v10, v11, v12, 1);
  *(a1 + 208) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 496) = 0;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 504) = 1065353216;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 608) = a3;
  *(a1 + 616) = a4;
  *a1 = a2;
  [a2 baseFontSize];
  *(a1 + 8) = v13;
  [a2 containerSize];
  *(a1 + 16) = v14;
  *(a1 + 24) = v15;
  v16 = [a2 baseFontName];
  *(a1 + 32) = v16;
  if (v16)
  {
    CFRetain(v16);
  }

  v17 = *(a1 + 8);
  v18 = EQKit::Font::Manager::fontCollection([a3 fontManager]);
  EQKitLayoutContext::EQKitLayoutContext(v20, v17, v18, [a2 baseFontName], *(a1 + 136), 1);
  std::deque<EQKitLayoutContext>::push_back((a1 + 256), v20);
  EQKitLayoutContext::~EQKitLayoutContext(v20);
  return a1;
}

void sub_258262B8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  EQKitLayoutContext::~EQKitLayoutContext(va);
  std::deque<EQKitLayoutTable>::~deque[abi:ne200100](v3 + 44);
  std::deque<EQKitLayoutElementaryStack>::~deque[abi:ne200100](v3 + 38);
  std::__hash_table<wchar_t,std::hash<wchar_t>,std::equal_to<wchar_t>,std::allocator<wchar_t>>::~__hash_table((v3 + 33));
  std::deque<objc_object  {objcproto15EQKitLayoutNode}*>::~deque[abi:ne200100](v3 + 27);
  v6 = v2[50];
  if (v6)
  {
    v2[51] = v6;
    operator delete(v6);
  }

  std::deque<EQKitLayoutRow>::~deque[abi:ne200100](v2 + 44);
  std::deque<objc_object  {objcproto15EQKitLayoutNode}*>::~deque[abi:ne200100](v2 + 38);
  std::deque<EQKitLayoutContext>::~deque[abi:ne200100](v4);
  std::deque<objc_object  {objcproto15EQKitLayoutNode}*>::~deque[abi:ne200100](v3);
  EQKitLayoutContext::~EQKitLayoutContext((v2 + 7));
  _Unwind_Resume(a1);
}

void EQKitLayoutManager::~EQKitLayoutManager(id *this)
{
  v2 = this[4];
  if (v2)
  {
    CFRelease(v2);
  }

  std::deque<EQKitLayoutTable>::~deque[abi:ne200100](this + 70);
  std::deque<EQKitLayoutElementaryStack>::~deque[abi:ne200100](this + 64);
  std::__hash_table<wchar_t,std::hash<wchar_t>,std::equal_to<wchar_t>,std::allocator<wchar_t>>::~__hash_table((this + 59));
  std::deque<objc_object  {objcproto15EQKitLayoutNode}*>::~deque[abi:ne200100](this + 53);
  v3 = this[50];
  if (v3)
  {
    this[51] = v3;
    operator delete(v3);
  }

  std::deque<EQKitLayoutRow>::~deque[abi:ne200100](this + 44);
  std::deque<objc_object  {objcproto15EQKitLayoutNode}*>::~deque[abi:ne200100](this + 38);
  std::deque<EQKitLayoutContext>::~deque[abi:ne200100](this + 32);
  std::deque<objc_object  {objcproto15EQKitLayoutNode}*>::~deque[abi:ne200100](this + 26);
  EQKitLayoutContext::~EQKitLayoutContext((this + 7));
}

unint64_t EQKitLayoutManager::layoutContext(EQKitLayoutManager *this)
{
  v1 = *(this + 37);
  if (v1)
  {
    return *(*(this + 33) + 8 * ((v1 + *(this + 36) - 1) / 0x1AuLL)) + 152 * ((v1 + *(this + 36) - 1) % 0x1AuLL);
  }

  else
  {
    return this + 56;
  }
}

double EQKitLayoutManager::leftSpaceForOperator(uint64_t a1, void *a2)
{
  v4 = *(a1 + 296);
  if (v4)
  {
    v5 = *(*(a1 + 264) + 8 * ((v4 + *(a1 + 288) - 1) / 0x1AuLL)) + 152 * ((v4 + *(a1 + 288) - 1) % 0x1AuLL);
  }

  else
  {
    v5 = a1 + 56;
  }

  v6 = [*(a1 + 608) operatorDictionary];
  v7 = [a2 operatorId];
  v8 = EQKitLayoutManager::operatorForm(a1, a2);
  v9 = EQKit::Config::Operator::Dictionary::lookup(v6, v7, v8);
  if (v9)
  {
    v10 = v9;
    v11 = EQKitLength::resolveToAbsoluteWithSize(v9, *(v5 + 24));
    if (v11 != 0.0)
    {
      v12 = *(a1 + 392) + *(a1 + 384) - 1;
      if (*(*(*(a1 + 360) + 8 * (v12 / 0x19)) + 160 * (v12 % 0x19) + 152) == 2)
      {
        if (*(v10 + 48) < 0)
        {
          v14 = *(v10 + 5);
        }

        else
        {
          v13 = EQKit::Font::Manager::fontCollection([*(a1 + 608) fontManager]);
          (*(*v13 + 64))(v13, 1);
        }

        v11 = v11 * v14;
      }
    }
  }

  else
  {
    v11 = 0.0;
  }

  return EQKitLayoutManager::lengthForAttribute(a1, 10, a2, v11);
}

uint64_t EQKitLayoutManager::operatorForm(uint64_t a1, void *a2)
{
  v14 = 0;
  v4 = *(a1 + 616);
  v15 = a2;
  v16 = 15;
  EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>(v4, v4 + 344, &v15, &v14);
  result = v14;
  if (!v14)
  {
    v6 = [a2 operatorId];
    result = EQKit::Config::Operator::Dictionary::formForOperatorId([*(a1 + 608) operatorDictionary], v6);
    v14 = result;
    if (!result)
    {
      v7 = EQKit::Config::Operator::Dictionary::formMaskForOperatorId([*(a1 + 608) operatorDictionary], v6);
      v8 = *(a1 + 248);
      if (v8)
      {
        v8 = *(*(*(a1 + 216) + (((v8 + *(a1 + 240) - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v8 + *(a1 + 240) - 1) & 0x1FF));
      }

      v9 = v8 & v7;
      if ((v7 & 8) != 0)
      {
        v10 = 3;
      }

      else
      {
        v10 = 2;
      }

      if ((v7 & 2) != 0)
      {
        v11 = 1;
      }

      else
      {
        v11 = v10;
      }

      if ((v9 & 4) != 0)
      {
        v12 = 2;
      }

      else
      {
        v12 = v11;
      }

      if ((v9 & 8) != 0)
      {
        v13 = 3;
      }

      else
      {
        v13 = v12;
      }

      if ((v9 & 2) != 0)
      {
        return 1;
      }

      else
      {
        return v13;
      }
    }
  }

  return result;
}

uint64_t EQKitLayoutManager::fontCollection(id *this)
{
  v1 = [this[76] fontManager];

  return EQKit::Font::Manager::fontCollection(v1);
}

double EQKitLayoutManager::lengthForAttribute(void *a1, int a2, uint64_t a3, double a4)
{
  LODWORD(v10[0]) = 1;
  v10[1] = 0.0;
  v11 = a3;
  v6 = a1[77];
  v12 = a2;
  if (EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,EQKitLength>>(v6, v6 + 32, &v11, v10))
  {
    v7 = a1[37];
    if (v7)
    {
      v8 = *(a1[33] + 8 * ((v7 + a1[36] - 1) / 0x1AuLL)) + 152 * ((v7 + a1[36] - 1) % 0x1AuLL);
    }

    else
    {
      v8 = (a1 + 7);
    }

    return EQKitLength::resolveToAbsoluteWithUnitProviderAndDefault(v10, v8, a4);
  }

  return a4;
}

double EQKitLayoutManager::rightSpaceForOperator(uint64_t a1, void *a2)
{
  v4 = *(a1 + 296);
  if (v4)
  {
    v5 = *(*(a1 + 264) + 8 * ((v4 + *(a1 + 288) - 1) / 0x1AuLL)) + 152 * ((v4 + *(a1 + 288) - 1) % 0x1AuLL);
  }

  else
  {
    v5 = a1 + 56;
  }

  v6 = [*(a1 + 608) operatorDictionary];
  v7 = [a2 operatorId];
  v8 = EQKitLayoutManager::operatorForm(a1, a2);
  v9 = EQKit::Config::Operator::Dictionary::lookup(v6, v7, v8);
  if (v9)
  {
    v10 = v9;
    v11 = EQKitLength::resolveToAbsoluteWithSize((v9 + 16), *(v5 + 24));
    if (v11 != 0.0)
    {
      v12 = *(a1 + 392) + *(a1 + 384) - 1;
      if (*(*(*(a1 + 360) + 8 * (v12 / 0x19)) + 160 * (v12 % 0x19) + 152) == 2)
      {
        if (*(v10 + 48) < 0)
        {
          v14 = *(v10 + 40);
        }

        else
        {
          v13 = EQKit::Font::Manager::fontCollection([*(a1 + 608) fontManager]);
          (*(*v13 + 64))(v13, 1);
        }

        v11 = v11 * v14;
      }
    }
  }

  else
  {
    v11 = 0.0;
  }

  return EQKitLayoutManager::lengthForAttribute(a1, 11, a2, v11);
}

CGPath *EQKitLayoutManager::createPathForNotation(void *a1, void *a2, int a3)
{
  Mutable = CGPathCreateMutable();
  [a2 width];
  v8 = v7;
  [a2 vsize];
  v10 = v9.n128_f64[0];
  v11 = a1[37];
  if (v11)
  {
    v12 = *(a1[33] + 8 * ((v11 + a1[36] - 1) / 0x1AuLL)) + 152 * ((v11 + a1[36] - 1) % 0x1AuLL);
  }

  else
  {
    v12 = (a1 + 7);
  }

  v13 = *(v12 + 88);
  if (*(v12 + 120))
  {
    v9.n128_u64[0] = *(v12 + 128);
  }

  else
  {
    v9.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v12);
  }

  v14 = (*(*v13 + 56))(v13, 24, v12 + 8, v9);
  v15 = v14;
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v20 = v8 * 0.5;
      CGPathMoveToPoint(Mutable, 0, v20, -v14);
      v17 = v10 + v15;
      v18 = Mutable;
      v16 = v20;
      goto LABEL_16;
    }

    if (a3 == 4)
    {
      v19 = v10 * 0.5;
      CGPathMoveToPoint(Mutable, 0, -v14, v19);
      v16 = v8 + v15;
      v18 = Mutable;
      v17 = v19;
      goto LABEL_16;
    }
  }

  else
  {
    if (a3 == 1)
    {
      CGPathMoveToPoint(Mutable, 0, -v14, v10 + v14);
      v16 = v8 + v15;
      v18 = Mutable;
      v17 = -v15;
      goto LABEL_16;
    }

    if (a3 == 2)
    {
      CGPathMoveToPoint(Mutable, 0, -v14, -v14);
      v16 = v8 + v15;
      v17 = v10 + v15;
      v18 = Mutable;
LABEL_16:
      CGPathAddLineToPoint(v18, 0, v16, v17);
    }
  }

  return Mutable;
}

EQKitBox *EQKitLayoutManager::layoutExpression(EQKitLayoutManager *a1, void *a2, void *a3, void *a4, void *a5, double *a6, BOOL *a7)
{
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  *a3 = 0;
  v25[3] = a3;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  *a4 = 0;
  v24[3] = a4;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  *a5 = 0;
  v23[3] = a5;
  *a6 = 1.79769313e308;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v22[3] = 0;
  LODWORD(v17[0]) = 0;
  v11 = *(a1 + 77);
  v18 = a2;
  v19 = 7;
  v12 = EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>(v11, v11 + 320, &v18, v17) ^ 1;
  if ((v17[0] & 0xFFFFFFFD) != 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  EQKitLayoutManager::beginRow(a1, 1, 0);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = ___ZN18EQKitLayoutManager16layoutExpressionEPU26objcproto15EQKitLayoutNode11objc_objectRdS2_S2_S2_Rb_block_invoke;
  v21[3] = &unk_2798720C0;
  v21[4] = a2;
  v21[5] = v22;
  v21[6] = v25;
  v21[7] = v24;
  v21[8] = v23;
  v21[9] = a1;
  EQKitLayoutManager::layout(a1, a2, 0, v13, 0, v21);
  EQKitLayoutManager::endRow(a1, &v18);
  v14 = v18;
  if (v13 & 1 | ((*(*(a1 + 6) + 5) & 1) == 0))
  {
    v15 = 0;
  }

  else
  {
    v15 = (v20 & 0x1C00u) > 0x800;
  }

  *a7 = v15;
  EQKit::ILayoutOffset::ILayoutOffset(v17, 0, 0.0);
  if (EQKit::ILayout::getOffsetOfKind(&v18, 1, v17))
  {
    *a6 = EQKit::ILayoutOffset::offsetInBox(v17, v14);
  }

  EQKit::ILayoutOffset::~ILayoutOffset(v17);
  EQKit::ILayout::~ILayout(&v18);
  _Block_object_dispose(v22, 8);
  _Block_object_dispose(v23, 8);
  _Block_object_dispose(v24, 8);
  _Block_object_dispose(v25, 8);
  return v14;
}

void sub_258263600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  EQKit::ILayout::~ILayout(&a12);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 144), 8);
  _Block_object_dispose((v29 - 112), 8);
  _Block_object_dispose((v29 - 80), 8);
  _Unwind_Resume(a1);
}

void EQKitLayoutManager::beginRow(EQKitLayoutManager *this, char a2, BOOL a3)
{
  if ((a2 & 1) != 0 || (v4 = *(this + 49)) == 0)
  {
    EQKitLayoutRow::EQKitLayoutRow(v6, a3);
    std::deque<EQKitLayoutRow>::push_back(this + 44, v6);
    EQKitLayoutRow::~EQKitLayoutRow(v6);
  }

  else
  {
    v5 = *(*(this + 45) + 8 * ((v4 + *(this + 48) - 1) / 0x19uLL)) + 160 * ((v4 + *(this + 48) - 1) % 0x19uLL);

    EQKitLayoutRow::beginNestedRow(v5);
  }
}

void ___ZN18EQKitLayoutManager16layoutExpressionEPU26objcproto15EQKitLayoutNode11objc_objectRdS2_S2_S2_Rb_block_invoke(void *a1, uint64_t a2)
{
  if (a1[4] == a2)
  {
    v3 = a1[9];
    v4 = v3[37];
    if (*(v3[6] + 4) == 1)
    {
      if (v4)
      {
        v5 = *(v3[33] + 8 * ((v4 + v3[36] - 1) / 0x1AuLL)) + 152 * ((v4 + v3[36] - 1) % 0x1AuLL);
      }

      else
      {
        v5 = (v3 + 7);
      }

      v7 = v3[4];
      if (v7)
      {
        v8 = v7;
      }

      else
      {
        v8 = @"Times New Roman";
      }

      v9 = CTFontCreateWithName(v8, *(v5 + 24), 0);
    }

    else
    {
      if (v4)
      {
        v6 = (*(v3[33] + 8 * ((v4 + v3[36] - 1) / 0x1AuLL)) + 152 * ((v4 + v3[36] - 1) % 0x1AuLL));
      }

      else
      {
        v6 = (v3 + 7);
      }

      v10 = EQKitLayoutContext::font(v6);
      v9 = CFRetain(v10);
    }

    *(*(a1[5] + 8) + 24) = v9;
    v11 = *(*(a1[5] + 8) + 24);
    if (v11)
    {
      **(*(a1[6] + 8) + 24) = CTFontGetAscent(v11);
      **(*(a1[7] + 8) + 24) = CTFontGetDescent(*(*(a1[5] + 8) + 24));
      **(*(a1[8] + 8) + 24) = CTFontGetLeading(*(*(a1[5] + 8) + 24));
      v12 = *(*(a1[5] + 8) + 24);

      CFRelease(v12);
    }
  }
}

void EQKitLayoutManager::endRow(EQKitLayoutManager *this@<X0>, EQKit::ILayout *a2@<X8>)
{
  EQKit::ILayout::ILayout(a2, 0);
  v4 = *(this + 49);
  if (v4)
  {
    v5 = *(*(this + 45) + 8 * ((v4 + *(this + 48) - 1) / 0x19uLL)) + 160 * ((v4 + *(this + 48) - 1) % 0x19uLL);
    if (*(v5 + 64))
    {
      EQKitLayoutRow::endNestedRow(v5);
    }

    else if (v4 == 1 || (*(v5 + 156) & 1) == 0)
    {
      EQKitLayoutRow::resolveKerning(v5, *(this + 5));
      EQKitLayoutRow::overallLayout(v5, v7);
      EQKit::ILayout::operator=(a2, v7);
      EQKit::ILayout::~ILayout(v7);
      std::deque<EQKitLayoutRow>::pop_back(this + 44);
    }

    else
    {
      EQKitLayoutRow::EQKitLayoutRow(v7, v5);
      std::deque<EQKitLayoutRow>::pop_back(this + 44);
      v6 = *(this + 49) + *(this + 48) - 1;
      EQKitLayoutRow::addChild((*(*(this + 45) + 8 * (v6 / 0x19)) + 160 * (v6 % 0x19)), v7);
      EQKitLayoutRow::~EQKitLayoutRow(v7);
    }
  }
}

void sub_258263A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  EQKit::ILayout::~ILayout(&a9);
  EQKit::ILayout::~ILayout(v9);
  _Unwind_Resume(a1);
}

void EQKitLayoutManager::layoutBox(EQKitLayoutManager *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, EQKit::ILayout *a4@<X8>)
{
  v4 = *(a1 + 37);
  if (v4)
  {
    v5 = *(*(a1 + 33) + 8 * ((v4 + *(a1 + 36) - 1) / 0x1AuLL)) + 152 * ((v4 + *(a1 + 36) - 1) % 0x1AuLL);
  }

  else
  {
    v5 = a1 + 56;
  }

  EQKitLayoutManager::layoutBox(a1, a2, 0, *(v5 + 16), 0, 0, a3, a4);
}

void EQKitLayoutManager::layoutBox(EQKitLayoutManager *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, EQKit::ILayout *a8@<X8>)
{
  EQKitLayoutManager::beginRow(a1, 1, 0);
  v16 = *(a1 + 49) + *(a1 + 48) - 1;
  *(*(*(a1 + 45) + 8 * (v16 / 0x19)) + 160 * (v16 % 0x19) + 152) = a5;
  EQKitLayoutManager::layout(a1, a2, a3, a4, a6, a7);

  EQKitLayoutManager::endRow(a1, a8);
}

void EQKitLayoutManager::layout(EQKitLayoutManager *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = a6;
  v41[0] = a2;
  v11 = *(a1 + 37) + *(a1 + 36) - 1;
  v12 = *(*(a1 + 33) + 8 * (v11 / 0x1A));
  if (a6)
  {
    std::deque<void({block_pointer})(objc_object  {objcproto15EQKitLayoutNode}*,EQKit::Layout::Schemata const&),std::allocator<void ()(objc_object  {objcproto15EQKitLayoutNode}*,EQKit::Layout::Schemata const&)>>::push_back(a1 + 38, &v40);
  }

  LODWORD(v37[0]) = 0;
  v13 = *(a1 + 77);
  v38 = a2;
  v39 = 8;
  EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>(v13, v13 + 8, &v38, v37);
  if (LODWORD(v37[0]) == 2)
  {
    a4 = 1;
  }

  else if (LODWORD(v37[0]) == 1)
  {
    a4 = 0;
  }

  isOperatorPaddingRequired = EQKitLayoutManager::isOperatorPaddingRequired(a1);
  v15 = isOperatorPaddingRequired;
  v17 = *(a1 + 51);
  v16 = *(a1 + 52);
  if (v17 >= v16)
  {
    v19 = *(a1 + 50);
    v20 = (v17 - v19) >> 3;
    if ((v20 + 1) >> 61)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v35 = v12;
    v36 = a5;
    v21 = v16 - v19;
    v22 = v21 >> 2;
    if (v21 >> 2 <= (v20 + 1))
    {
      v22 = v20 + 1;
    }

    if (v21 >= 0x7FFFFFFFFFFFFFF8)
    {
      v23 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = v22;
    }

    if (v23)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<objc_object  {objcproto15EQKitLayoutNode}*>>(a1 + 400, v23);
    }

    v24 = a3;
    v25 = isOperatorPaddingRequired;
    v26 = (8 * v20);
    *v26 = a2;
    v18 = 8 * v20 + 8;
    v27 = *(a1 + 50);
    v28 = *(a1 + 51) - v27;
    v29 = v26 - v28;
    memcpy(v26 - v28, v27, v28);
    v30 = *(a1 + 50);
    *(a1 + 50) = v29;
    *(a1 + 51) = v18;
    *(a1 + 52) = 0;
    if (v30)
    {
      operator delete(v30);
    }

    v15 = v25;
    a5 = v36;
    a3 = v24;
    v12 = v35;
  }

  else
  {
    *v17 = a2;
    v18 = (v17 + 1);
  }

  *(a1 + 51) = v18;
  EQKitLayoutContext::EQKitLayoutContext(&v38, a1, v12 + 152 * (v11 % 0x1A), a2, a3, a4, a5);
  std::deque<EQKitLayoutContext>::push_back(a1 + 32, &v38);
  EQKitLayoutContext::~EQKitLayoutContext(&v38);
  isEmbellishedOperatorRoot = EQKitLayoutManager::isEmbellishedOperatorRoot(a1, a2);
  if (isEmbellishedOperatorRoot)
  {
    std::deque<objc_object  {objcproto15EQKitLayoutNode}*>::push_back(a1 + 53, v41);
  }

  EQKit::Layout::Schemata::Schemata(&v38);
  *&v37[0] = v41[0];
  v32 = std::__hash_table<std::__hash_value_type<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator}*,EQKitLayoutStretchedOperator>,std::__unordered_map_hasher<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator},EQKitLayoutStretchedOperator,std::hash<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator}>,std::equal_to<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator}>,true>,std::__unordered_map_equal<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator},EQKitLayoutStretchedOperator,std::equal_to,std::hash,true>,std::allocator<EQKitLayoutStretchedOperator>>::find<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator}>(a1 + 59, v37);
  if (v32)
  {
    EQKitLayoutManager::schemataForStretchedOperator(a1, (v32 + 3), v37);
    EQKit::Layout::Schemata::operator=(&v38, v37);
  }

  else
  {
    if (v41[0])
    {
      [v41[0] layoutSchemata];
    }

    else
    {
      memset(v37, 0, sizeof(v37));
    }

    EQKit::Layout::Schemata::operator=(&v38, v37);
  }

  EQKit::Layout::Schemata::~Schemata(v37);
  if (isEmbellishedOperatorRoot)
  {
    v33 = v41[0];
  }

  else
  {
    v33 = 0;
  }

  EQKitLayoutManager::layoutSchemata(a1, &v38, v15, v33);
  v34 = *(a1 + 43);
  if (v34)
  {
    (*(*(*(*(a1 + 39) + (((v34 + *(a1 + 42) - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v34 + *(a1 + 42) - 1) & 0x1FF)) + 16))();
  }

  if (isEmbellishedOperatorRoot)
  {
    --*(a1 + 58);
    std::deque<objc_object  {objcproto15EQKitLayoutNode}*>::__maybe_remove_back_spare[abi:ne200100](a1 + 53, 1);
  }

  std::deque<EQKitLayoutContext>::pop_back(a1 + 32);
  *(a1 + 51) -= 8;
  if (v40)
  {
    --*(a1 + 43);
    std::deque<objc_object  {objcproto15EQKitLayoutNode}*>::__maybe_remove_back_spare[abi:ne200100](a1 + 38, 1);
  }

  EQKit::Layout::Schemata::~Schemata(&v38);
}

void sub_258263EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  EQKit::Layout::Schemata::~Schemata(va);
  _Unwind_Resume(a1);
}

uint64_t EQKitLayoutManager::layout(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[37];
  if (v3)
  {
    v4 = *(a1[33] + 8 * ((v3 + a1[36] - 1) / 0x1AuLL)) + 152 * ((v3 + a1[36] - 1) % 0x1AuLL);
  }

  else
  {
    v4 = (a1 + 7);
  }

  return EQKitLayoutManager::layout(a1, a2, 0, *(v4 + 16), 0, a3);
}

void EQKitLayoutManager::layoutIntoRow(uint64_t a1, EQKitLayoutRow *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  EQKitLayoutManager::beginRow(a1, 1, 0);
  EQKitLayoutManager::layout(a1, a3, a4, a5, 0, a6);
  v12 = *(a1 + 392);
  if (v12)
  {
    EQKitLayoutRow::EQKitLayoutRow(v14, (*(*(a1 + 360) + 8 * ((v12 + *(a1 + 384) - 1) / 0x19uLL)) + 160 * ((v12 + *(a1 + 384) - 1) % 0x19uLL)));
    EQKitLayoutRow::operator=(a2, v14);
    EQKitLayoutRow::~EQKitLayoutRow(v14);
    EQKitLayoutRow::resolveKerning(a2, *(a1 + 40));
    EQKitLayoutRow::buildAlignmentGroups(a2);
  }

  EQKitLayoutManager::endRow(a1, v13);
  EQKit::ILayout::~ILayout(v13);
}

void sub_258264070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  EQKitLayoutRow::~EQKitLayoutRow(va);
  _Unwind_Resume(a1);
}

void EQKitLayoutManager::addHSpace(EQKitLayoutManager *this, double a2)
{
  if (a2 != 0.0)
  {
    v3 = [[EQKitHSpace alloc] initWithWidth:a2];
    EQKit::ILayout::ILayout(v5, &v3->super);
    EQKit::ILayout::setIsUserSpace(v5, 1);
    EQKit::ILayout::setVerticalContentClassification(v5, 6);
    EQKit::ILayout::ILayout(v4, v5);
    EQKitLayoutManager::addRowChild(this, v4, 0);
    EQKit::ILayout::~ILayout(v4);

    EQKit::ILayout::~ILayout(v5);
  }
}

void sub_25826412C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  EQKit::ILayout::~ILayout(&a9);
  EQKit::ILayout::~ILayout(&a16);
  _Unwind_Resume(a1);
}

void EQKitLayoutManager::addRowChild(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a1[49])
  {
    return;
  }

  v6 = *(a2 + 32);
  v7 = (v6 >> 4) & 3;
  if (v7 <= 1)
  {
    if (v7)
    {
      v8 = 31;
    }

    else
    {
      v8 = 30;
    }

    goto LABEL_9;
  }

  if (v7 == 2)
  {
    v8 = 32;
LABEL_9:
    EQKitLayoutManager::lengthForMetric(a1, v8);
    v10 = v9;
    LOWORD(v6) = *(a2 + 32);
    goto LABEL_11;
  }

  v10 = 0;
LABEL_11:
  v11 = v6 >> 6;
  if (v11 <= 1)
  {
    if (v11)
    {
      v12 = 31;
    }

    else
    {
      v12 = 30;
    }

    goto LABEL_17;
  }

  v13 = 0;
  if (v11 == 2)
  {
    v12 = 32;
LABEL_17:
    EQKitLayoutManager::lengthForMetric(a1, v12);
  }

  *(a2 + 40) = v10;
  *(a2 + 48) = v13;
  v14 = a1[49] + a1[48] - 1;
  v15 = *(a1[45] + 8 * (v14 / 0x19)) + 160 * (v14 % 0x19);

  EQKitLayoutRow::addChild(v15, a3, a2);
}

void EQKitLayoutManager::addOperatorLeftSpace(EQKitLayoutManager *this, double a2)
{
  v4 = *(this + 49);
  if (v4)
  {
    v5 = *(*(this + 45) + 8 * ((v4 + *(this + 48) - 1) / 0x19uLL)) + 160 * ((v4 + *(this + 48) - 1) % 0x19uLL);
    v6 = *(v5 + 144);
    v7 = a2 - v6;
    if (a2 - v6 < 0.0)
    {
      v7 = 0.0;
    }

    if (v6 > 0.0)
    {
      a2 = v7;
    }

    *(v5 + 144) = 0;
  }

  if (a2 != 0.0)
  {
    v8 = [[EQKitHSpace alloc] initWithWidth:a2];
    EQKit::ILayout::ILayout(v10, &v8->super);
    EQKit::ILayout::setIsUserSpace(v10, 1);
    EQKit::ILayout::setVerticalContentClassification(v10, 6);
    EQKit::ILayout::ILayout(v9, v10);
    EQKitLayoutManager::addRowChild(this, v9, 0);
    EQKit::ILayout::~ILayout(v9);

    EQKit::ILayout::~ILayout(v10);
  }
}

void sub_258264388(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  EQKit::ILayout::~ILayout(&a9);
  EQKit::ILayout::~ILayout(&a16);
  _Unwind_Resume(a1);
}

void EQKitLayoutManager::addOperatorRightSpace(EQKitLayoutManager *this, double a2)
{
  v3 = *(this + 49);
  if (v3)
  {
    *(*(*(this + 45) + 8 * ((v3 + *(this + 48) - 1) / 0x19uLL)) + 160 * ((v3 + *(this + 48) - 1) % 0x19uLL) + 144) = a2;
  }

  if (a2 != 0.0)
  {
    v4 = [[EQKitHSpace alloc] initWithWidth:a2];
    EQKit::ILayout::ILayout(v6, &v4->super);
    EQKit::ILayout::setIsUserSpace(v6, 1);
    EQKit::ILayout::setVerticalContentClassification(v6, 6);
    EQKit::ILayout::ILayout(v5, v6);
    EQKitLayoutManager::addRowChild(this, v5, 0);
    EQKit::ILayout::~ILayout(v5);

    EQKit::ILayout::~ILayout(v6);
  }
}

void sub_2582644A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  EQKit::ILayout::~ILayout(&a9);
  EQKit::ILayout::~ILayout(&a16);
  _Unwind_Resume(a1);
}

void *EQKitLayoutManager::registerVerticalStretchedOperator(void *a1, void *a2, double a3, double a4)
{
  v21 = a2;
  v19 = a4;
  v20 = a3;
  v7 = std::__hash_table<std::__hash_value_type<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator}*,EQKitLayoutStretchedOperator>,std::__unordered_map_hasher<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator},EQKitLayoutStretchedOperator,std::hash<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator}>,std::equal_to<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator}>,true>,std::__unordered_map_equal<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator},EQKitLayoutStretchedOperator,std::equal_to,std::hash,true>,std::allocator<EQKitLayoutStretchedOperator>>::find<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator}>(a1 + 59, &v21);
  if (v7)
  {
    v8 = v7 + 2;
    if (*(v7 + 8) != 2)
    {
      return v8 + 1;
    }

    v10 = *(v7 + 5);
    v9 = *(v7 + 6);
    if (v10 >= a3 && v9 >= a4)
    {
      return v8 + 1;
    }

    if (v10 <= a3)
    {
      v10 = a3;
    }

    if (v9 <= a4)
    {
      v9 = a4;
    }

    v19 = v9;
    v20 = v10;
  }

  EQKitLayoutManager::adjustStretchyVSize(a1, v21, &v20, &v19);
  EQKitLayoutStretchedOperator::EQKitLayoutStretchedOperator(v17, v21, 2, v20, v19, 0.0);
  v12 = std::__hash_table<std::__hash_value_type<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator}*,EQKitLayoutStretchedOperator>,std::__unordered_map_hasher<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator},EQKitLayoutStretchedOperator,std::hash<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator}>,std::equal_to<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator}>,true>,std::__unordered_map_equal<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator},EQKitLayoutStretchedOperator,std::equal_to,std::hash,true>,std::allocator<EQKitLayoutStretchedOperator>>::__emplace_unique_key_args<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator},objc_object  {objcproto15EQKitLayoutNode13EQKitOperator} const&,objc_object  {objcproto15EQKitLayoutNode13EQKitOperator}* const&>(a1 + 59, &v21);
  if ((v13 & 1) == 0)
  {
    v14 = v18;
    v15 = v17[1];
    *(v12 + 3) = v17[0];
    *(v12 + 5) = v15;
    v12[7] = v14;
  }

  v8 = v12 + 2;
  return v8 + 1;
}

void EQKitLayoutManager::adjustStretchyVSize(void *a1, void *a2, double *a3, double *a4)
{
  v8 = a1[37];
  if (v8)
  {
    v9 = *(a1[33] + 8 * ((v8 + a1[36] - 1) / 0x1AuLL)) + 152 * ((v8 + a1[36] - 1) % 0x1AuLL);
  }

  else
  {
    v9 = (a1 + 7);
  }

  v10 = [a2 operatorUnicharOrNul];
  if (v10)
  {
    v11 = v10;
    isOperatorSymmetric = EQKitLayoutManager::isOperatorSymmetric(a1, a2);
    if ((*(v9 + 120) & 2) != 0)
    {
      v13 = *(v9 + 136);
    }

    else
    {
      v13 = EQKitLayoutContext::pComputeMathAxis(v9);
    }

    v17 = (*(**(v9 + 88) + 136))(*(v9 + 88), v11, v9 + 8);
    v18 = v14;
    v19 = v15;
    v20 = v16;
    v21 = *a3 + *a4;
    if (v21 == 0.0)
    {
      v22 = v17;
      *a3 = -CGRectGetMinY(*(&v14 - 1));
      v38.origin.x = v17;
      v38.origin.y = v18;
      v38.size.width = v19;
      v38.size.height = v20;
      MaxY = CGRectGetMaxY(v38);
      *a4 = MaxY;
      v21 = MaxY + *a3;
    }

    LODWORD(v35[0]) = 1;
    v35[1] = 0.0;
    v36 = a2;
    v24 = a1[77];
    v37 = 41;
    if (EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,EQKitLength>>(v24, v24 + 32, &v36, v35))
    {
      v39.origin.x = v17;
      v39.origin.y = v18;
      v39.size.width = v19;
      v39.size.height = v20;
      Height = CGRectGetHeight(v39);
      v26 = EQKitLength::resolveToAbsoluteWithUnitProviderAndDefault(v35, v9, Height);
      if (v26 < v21)
      {
        if (isOperatorSymmetric)
        {
          *a3 = v13 + v26 * 0.5;
          v27 = v26 * 0.5 - v13;
        }

        else if (v21 == 0.0)
        {
          v27 = v26 * 0.5;
          *a3 = v26 * 0.5;
        }

        else
        {
          *a3 = v26 / v21 * *a3;
          v27 = v26 / v21 * *a4;
        }

        *a4 = v27;
        v21 = v26;
      }
    }

    LODWORD(v34[0]) = 1;
    v34[1] = 0.0;
    v28 = a1[77];
    v36 = a2;
    v37 = 40;
    if (EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,EQKitLength>>(v28, v28 + 32, &v36, v34))
    {
      v40.origin.x = v17;
      v40.origin.y = v18;
      v40.size.width = v19;
      v40.size.height = v20;
      v29 = CGRectGetHeight(v40);
      v30 = EQKitLength::resolveToAbsoluteWithUnitProviderAndDefault(v34, v9, v29);
      if (v30 > v21)
      {
        if (isOperatorSymmetric)
        {
          v31 = v30 * 0.5;
          *a3 = v13 + v31;
          v32 = v31 - v13;
        }

        else if (v21 == 0.0)
        {
          v32 = v30 * 0.5;
          *a3 = v32;
        }

        else
        {
          v33 = v30 / v21;
          *a3 = v33 * *a3;
          v32 = v33 * *a4;
        }

        *a4 = v32;
      }
    }
  }
}

void *EQKitLayoutManager::registerHorizontalStretchedOperator(void *a1, void *a2, char a3, double a4)
{
  v18 = a2;
  v7 = std::__hash_table<std::__hash_value_type<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator}*,EQKitLayoutStretchedOperator>,std::__unordered_map_hasher<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator},EQKitLayoutStretchedOperator,std::hash<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator}>,std::equal_to<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator}>,true>,std::__unordered_map_equal<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator},EQKitLayoutStretchedOperator,std::equal_to,std::hash,true>,std::allocator<EQKitLayoutStretchedOperator>>::find<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator}>(a1 + 59, &v18);
  if ((a3 & 1) != 0 || !v7 || (v8 = v7 + 2, *(v7 + 8) == 1) && *(v7 + 7) < a4)
  {
    v9 = v18;
    v10 = EQKitLayoutManager::adjustStretchyWidth(a1, v18, a4);
    EQKitLayoutStretchedOperator::EQKitLayoutStretchedOperator(v16, v9, 1, 0.0, 0.0, v10);
    v11 = std::__hash_table<std::__hash_value_type<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator}*,EQKitLayoutStretchedOperator>,std::__unordered_map_hasher<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator},EQKitLayoutStretchedOperator,std::hash<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator}>,std::equal_to<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator}>,true>,std::__unordered_map_equal<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator},EQKitLayoutStretchedOperator,std::equal_to,std::hash,true>,std::allocator<EQKitLayoutStretchedOperator>>::__emplace_unique_key_args<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator},objc_object  {objcproto15EQKitLayoutNode13EQKitOperator} const&,objc_object  {objcproto15EQKitLayoutNode13EQKitOperator}* const&>(a1 + 59, &v18);
    if ((v12 & 1) == 0)
    {
      v13 = v17;
      v14 = v16[1];
      *(v11 + 3) = v16[0];
      *(v11 + 5) = v14;
      v11[7] = v13;
    }

    v8 = v11 + 2;
  }

  return v8 + 1;
}

double EQKitLayoutManager::adjustStretchyWidth(void *a1, void *a2, double a3)
{
  v6 = a1[37];
  if (v6)
  {
    v7 = *(a1[33] + 8 * ((v6 + a1[36] - 1) / 0x1AuLL)) + 152 * ((v6 + a1[36] - 1) % 0x1AuLL);
  }

  else
  {
    v7 = (a1 + 7);
  }

  v8 = [a2 operatorUnicharOrNul];
  if (v8)
  {
    v9 = a1[37];
    if (v9)
    {
      v10 = *(a1[33] + 8 * ((v9 + a1[36] - 1) / 0x1AuLL)) + 152 * ((v9 + a1[36] - 1) % 0x1AuLL);
    }

    else
    {
      v10 = (a1 + 7);
    }

    v11 = (*(**(v7 + 88) + 136))(*(v7 + 88), v8, v10 + 8);
    v13 = v12;
    v15 = v14;
    v17 = v16;
    LODWORD(v26[0]) = 1;
    v26[1] = 0.0;
    v27 = a2;
    v18 = a1[77];
    v28 = 41;
    if (EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,EQKitLength>>(v18, v18 + 32, &v27, v26))
    {
      v29.origin.x = v11;
      v29.origin.y = v13;
      v29.size.width = v15;
      v29.size.height = v17;
      Width = CGRectGetWidth(v29);
      v20 = EQKitLength::resolveToAbsoluteWithUnitProviderAndDefault(v26, v7, Width);
      if (v20 < a3)
      {
        a3 = v20;
      }
    }

    LODWORD(v25[0]) = 1;
    v25[1] = 0.0;
    v21 = a1[77];
    v27 = a2;
    v28 = 40;
    if (EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,EQKitLength>>(v21, v21 + 32, &v27, v25))
    {
      v30.origin.x = v11;
      v30.origin.y = v13;
      v30.size.width = v15;
      v30.size.height = v17;
      v22 = CGRectGetWidth(v30);
      v23 = EQKitLength::resolveToAbsoluteWithUnitProviderAndDefault(v25, v7, v22);
      if (v23 > a3)
      {
        return v23;
      }
    }
  }

  return a3;
}

void EQKitLayoutManager::alignBoxHorizontally(const EQKit::ILayout *a1@<X1>, int a2@<W2>, int a3@<W3>, EQKit::ILayout *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  EQKit::ILayout::ILayout(a4, a1);
  if (a2 == 2)
  {
    v14 = *a1;
    if (a3)
    {
      [v14 erasableBounds];
      v12 = 0.0 - CGRectGetMidX(v19) + a6;
    }

    else
    {
      [v14 width];
      v12 = (a5 - v15) * 0.5;
    }
  }

  else
  {
    v12 = 0.0;
    if (a2 == 3)
    {
      [*a1 width];
      v12 = a5 - v13;
    }
  }

  [*a1 width];
  v17 = a5 - (v12 + v16);
  if (v12 != 0.0 || v17 != 0.0)
  {
    EQKitLayoutManager::layoutBoxHorizontallyWithSpacings(a1, v12, v17, v18);
    EQKit::ILayout::operator=(a4, v18);
    EQKit::ILayout::~ILayout(v18);
  }
}

void sub_258264C00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  EQKit::ILayout::~ILayout(va);
  EQKit::ILayout::~ILayout(v2);
  _Unwind_Resume(a1);
}

void EQKitLayoutManager::layoutBoxHorizontallyWithSpacings(const EQKit::ILayout *a1@<X1>, double a2@<D0>, double a3@<D1>, EQKit::ILayout *a4@<X8>)
{
  v9 = objc_autoreleasePoolPush();
  if (*a1)
  {
    v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:3];
    if (a2 != 0.0)
    {
      [v10 addObject:{-[EQKitHSpace initWithWidth:]([EQKitHSpace alloc], "initWithWidth:", a2)}];
    }

    [v10 addObject:*a1];
    if (a3 != 0.0)
    {
      [v10 addObject:{-[EQKitHSpace initWithWidth:]([EQKitHSpace alloc], "initWithWidth:", a3)}];
    }

    EQKit::ILayout::ILayout(a4, a1);
    EQKit::ILayout::setBox(a4, [(EQKitCompoundBox *)[EQKitHBox alloc] initWithChildBoxes:v10]);
  }

  else
  {
    EQKit::ILayout::ILayout(a4, [[EQKitHSpace alloc] initWithWidth:a2 + a3]);
  }

  objc_autoreleasePoolPop(v9);
}

BOOL EQKitLayoutManager::isOperatorPaddingRequired(EQKitLayoutManager *this)
{
  v1 = *(this + 49) + *(this + 48) - 1;
  if (*(*(*(this + 45) + 8 * (v1 / 0x19)) + 160 * (v1 % 0x19) + 152) != 1)
  {
    for (i = *(this + 51); i != *(this + 50); i -= 8)
    {
      v5 = *(i - 8);
      v6 = [v5 isOperatorPaddingRequired];
      if (v6)
      {
        return v6 == 2;
      }
    }
  }

  return 0;
}

uint64_t EQKitLayoutManager::isEmbellishedOperatorRoot(void *a1, void *a2)
{
  result = [a2 isEmbellishedOperator];
  if (result)
  {
    v5 = a1[58];
    if (v5)
    {
      v6 = [*(*(a1[54] + (((v5 + a1[57] - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v5 + a1[57] - 1) & 0x1FF)) operatorCore];
      return v6 != [a2 operatorCore];
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void EQKitLayoutManager::schemataForStretchedOperator(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  EQKit::Layout::Schemata::Schemata(a3);
  v6 = *a2;
  v7 = *(a2 + 8);
  if (v7 == 1)
  {
    if (EQKitLayoutManager::isOperatorStretchableInAxis(a1, *a2))
    {
      if (v6)
      {
        [v6 stretchyLayoutSchemata];
      }

      else
      {
        memset(v8, 0, sizeof(v8));
      }

      EQKit::Layout::Schemata::operator=(a3, v8);
    }

    else
    {
      if (!v6)
      {
        return;
      }

      [v6 layoutSchemata];
      EQKit::Layout::Schemata::operator=(a3, v8);
    }

    goto LABEL_13;
  }

  if (v7 == 2)
  {
    EQKitLayoutManager::schemataForOperatorWhenStretchedVertically(a1, *a2, a3);
    return;
  }

  if (v6)
  {
    [*a2 layoutSchemata];
    EQKit::Layout::Schemata::operator=(a3, v8);
LABEL_13:
    EQKit::Layout::Schemata::~Schemata(v8);
  }
}

void sub_258264F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  EQKit::Layout::Schemata::~Schemata(&a9);
  EQKit::Layout::Schemata::~Schemata(v9);
  _Unwind_Resume(a1);
}

void EQKitLayoutManager::layoutSchemata(EQKitLayoutManager *a1, EQKit::Layout::Schemata *a2, int a3, void *a4)
{
  EQKit::ILayout::ILayout(v34, 0);
  v9 = *(a2 + 2);
  if (a4)
  {
    v10 = a3;
  }

  else
  {
    v10 = 0;
  }

  if (((v9 - 5) & 0xFFFFFFFD) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 == 1)
  {
    v12 = EQKitLayoutManager::leftSpaceForOperator(a1, [a4 operatorCore]);
    EQKitLayoutManager::addOperatorLeftSpace(a1, v12);
    v9 = *(a2 + 2);
  }

  switch(v9)
  {
    case 1:
      v13 = EQKit::Layout::Schemata::nodeSchemata(a2);
      EQKitLayoutManager::layout(a1, v13, 0);
      break;
    case 2:
      EQKitLayoutManager::layoutRow(a1, a2, v33);
      EQKit::ILayout::operator=(v34, v33);
      goto LABEL_39;
    case 3:
      v14 = [EQKit::Layout::Schemata::phantomSchemata(a2) schemataChild];
      EQKitLayoutManager::layoutBox(a1, v14, 0, v33);
      v15 = [EQKitHVSpace alloc];
      [v33[0] width];
      v17 = v16;
      [v33[0] height];
      v19 = v18;
      [v33[0] depth];
      v21 = [(EQKitHVSpace *)v15 initWithWidth:v17 height:v19 depth:v20];
      EQKit::ILayout::ILayout(v32, v21);
      EQKit::ILayout::operator=(v34, v32);
      EQKit::ILayout::~ILayout(v32);

      goto LABEL_39;
    case 4:
      EQKitLayoutManager::layoutSubsuperscript(a1, a2, v33);
      EQKit::ILayout::operator=(v34, v33);
      goto LABEL_39;
    case 5:
      EQKitLayoutManager::layoutUnderover(a2, a1, a3, a4, v33);
      EQKit::ILayout::operator=(v34, v33);
      goto LABEL_39;
    case 6:
      EQKitLayoutManager::layoutRadical(a1, a2, v33);
      EQKit::ILayout::operator=(v34, v33);
      goto LABEL_39;
    case 7:
      EQKitLayoutManager::layoutFraction(a2, a1, a3, a4, v33);
      EQKit::ILayout::operator=(v34, v33);
      goto LABEL_39;
    case 8:
      EQKitLayoutManager::layoutIdentifier(a1, a2, v33);
      EQKit::ILayout::operator=(v34, v33);
      goto LABEL_39;
    case 9:
      EQKitLayoutManager::layoutNumber(a1, a2, v33);
      EQKit::ILayout::operator=(v34, v33);
      goto LABEL_39;
    case 10:
      EQKitLayoutManager::layoutOperator(a1, a2, v33);
      EQKit::ILayout::operator=(v34, v33);
      goto LABEL_39;
    case 11:
      v32[0] = [EQKit::Layout::Schemata::operatorSchemata(a2) schemataOperator];
      v22 = std::__hash_table<std::__hash_value_type<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator}*,EQKitLayoutStretchedOperator>,std::__unordered_map_hasher<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator},EQKitLayoutStretchedOperator,std::hash<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator}>,std::equal_to<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator}>,true>,std::__unordered_map_equal<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator},EQKitLayoutStretchedOperator,std::equal_to,std::hash,true>,std::allocator<EQKitLayoutStretchedOperator>>::find<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator}>(a1 + 59, v32);
      v23 = v22;
      if (v22)
      {
        EQKitLayoutManager::layoutStretchOperator(a1, (v22 + 3), v33);
        EQKit::ILayout::operator=(v34, v33);
        EQKit::ILayout::~ILayout(v33);
        std::__hash_table<std::__hash_value_type<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator}*,EQKitLayoutStretchedOperator>,std::__unordered_map_hasher<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator},EQKitLayoutStretchedOperator,std::hash<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator}>,std::equal_to<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator}>,true>,std::__unordered_map_equal<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator},EQKitLayoutStretchedOperator,std::equal_to,std::hash,true>,std::allocator<EQKitLayoutStretchedOperator>>::erase(a1 + 59, v23);
      }

      break;
    case 12:
      EQKitLayoutManager::layoutStack(a1, a2, v33);
      EQKit::ILayout::operator=(v34, v33);
      goto LABEL_39;
    case 13:
      EQKitLayoutManager::layoutStackGroup(a1, a2, v33);
      EQKit::ILayout::operator=(v34, v33);
      goto LABEL_39;
    case 14:
      EQKitLayoutManager::layoutStackRow(a1, a2, v33);
      EQKit::ILayout::operator=(v34, v33);
      goto LABEL_39;
    case 15:
      EQKitLayoutManager::layoutStackLine(a1, a2, v33);
      EQKit::ILayout::operator=(v34, v33);
      goto LABEL_39;
    case 16:
      EQKitLayoutManager::layoutStackCarries(a1, a2, v33);
      EQKit::ILayout::operator=(v34, v33);
      goto LABEL_39;
    case 17:
      EQKitLayoutManager::layoutStackCarry(a1, a2, v33);
      EQKit::ILayout::operator=(v34, v33);
      goto LABEL_39;
    case 18:
      EQKitLayoutManager::layoutLongDivision(a1, a2, v33);
      EQKit::ILayout::operator=(v34, v33);
      goto LABEL_39;
    case 19:
      EQKitLayoutManager::layoutTable(a1, a2, v33);
      EQKit::ILayout::operator=(v34, v33);
      goto LABEL_39;
    case 20:
      EQKitLayoutManager::layoutTableRow(a1, a2, v33);
      EQKit::ILayout::operator=(v34, v33);
      goto LABEL_39;
    case 21:
      EQKitLayoutManager::layoutNone(v33);
      EQKit::ILayout::operator=(v34, v33);
      goto LABEL_39;
    case 22:
      EQKitLayoutManager::layoutText(a1, a2, v33);
      EQKit::ILayout::operator=(v34, v33);
      goto LABEL_39;
    case 23:
      EQKitLayoutManager::layoutPadded(a1, a2, v33);
      EQKit::ILayout::operator=(v34, v33);
      goto LABEL_39;
    case 24:
      EQKitLayoutManager::layoutSpace(a1, v33);
      EQKit::ILayout::operator=(v34, v33);
      goto LABEL_39;
    case 25:
      EQKitLayoutManager::layoutFenced(a1, a2, v33);
      EQKit::ILayout::operator=(v34, v33);
      goto LABEL_39;
    case 26:
      EQKitLayoutManager::layoutAlignGroup(a1, v8);
      break;
    case 27:
      EQKitLayoutManager::layoutAlignMark(v33);
      EQKit::ILayout::operator=(v34, v33);
      goto LABEL_39;
    case 28:
      EQKitLayoutManager::layoutEnclose(a1, a2, v33);
      EQKit::ILayout::operator=(v34, v33);
LABEL_39:
      EQKit::ILayout::~ILayout(v33);
      break;
    default:
      break;
  }

  if (v34[0])
  {
    if (EQKit::Layout::Schemata::automaticSourceAttribution(a2))
    {
      v24 = EQKit::Layout::Schemata::sourceAttribution(a2);
      if (v24)
      {
        v25 = [EQKitAttributionBox alloc];
        EQKit::ILayout::ILayout(v33, [(EQKitAttributionBox *)v25 initWithBox:v34[0] attribution:v24]);
        EQKit::ILayout::operator=(v34, v33);
        EQKit::ILayout::~ILayout(v33);
      }
    }

    EQKitLayoutManager::beginRow(a1, 0, 1);
    EQKit::ILayout::ILayout(v31, v34);
    v26 = *(a1 + 51);
    if (*(a1 + 50) == v26)
    {
      v27 = 0;
    }

    else
    {
      v27 = *(v26 - 8);
    }

    EQKitLayoutManager::addRowChild(a1, v31, v27);
    EQKit::ILayout::~ILayout(v31);
    EQKitLayoutManager::endRow(a1, v30);
    EQKit::ILayout::~ILayout(v30);
  }

  if (v11)
  {
    v28 = EQKitLayoutManager::rightSpaceForOperator(a1, [a4 operatorCore]);
    EQKitLayoutManager::addOperatorRightSpace(a1, v28);
  }

  else if (!a4)
  {
    if (a3)
    {
      v29 = *(a1 + 49);
      if (v29)
      {
        *(*(*(a1 + 45) + 8 * ((v29 + *(a1 + 48) - 1) / 0x19uLL)) + 160 * ((v29 + *(a1 + 48) - 1) % 0x19uLL) + 144) = 0;
      }
    }
  }

  EQKit::ILayout::~ILayout(v34);
}

uint64_t EQKitLayoutManager::isOperatorStretchableInAxis(uint64_t a1, void *a2)
{
  if (![a2 operatorUnicharOrNul])
  {
    return 0;
  }

  v4 = *(*EQKit::Font::Manager::fontCollection([*(a1 + 608) fontManager]) + 104);

  return v4();
}

uint64_t EQKitLayoutManager::schemataForOperatorWhenStretchedVertically(uint64_t a1, void *a2, uint64_t a3)
{
  isOperatorStretchableInAxis = EQKitLayoutManager::isOperatorStretchableInAxis(a1, a2);
  if (isOperatorStretchableInAxis)
  {
    if (a2)
    {
      [a2 stretchyLayoutSchemata];
    }

    else
    {
      v7 = 0u;
      v8 = 0u;
    }
  }

  else if (a2)
  {
    [a2 layoutSchemata];
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  EQKit::Layout::Schemata::operator=(a3, &v7);
  EQKit::Layout::Schemata::~Schemata(&v7);
  return isOperatorStretchableInAxis;
}

EQKit::ILayout *EQKitLayoutManager::layoutText@<X0>(EQKitLayoutManager *this@<X0>, const EQKit::Layout::Schemata *a2@<X1>, EQKit::ILayout *a3@<X8>)
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = EQKit::Layout::Schemata::textSchemata(a2);
  if (v4)
  {
    v5 = v4;
    v6 = *(this + 37);
    if (v6)
    {
      v7 = (*(*(this + 33) + 8 * ((v6 + *(this + 36) - 1) / 0x1AuLL)) + 152 * ((v6 + *(this + 36) - 1) % 0x1AuLL));
    }

    else
    {
      v7 = (this + 56);
    }

    v39 = v7;
    v40 = EQKitLayoutContext::textFont(v7);
    EQKitLayoutManager::beginRow(this, 0, 1);
    v37 = [v5 schemataIsQuoted];
    if (v37)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "");
      v8 = *(this + 77);
      v9 = *(this + 51);
      if (*(this + 50) == v9)
      {
        v10 = 0;
      }

      else
      {
        v10 = *(v9 - 8);
      }

      v49 = v10;
      v50 = 12;
      EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::string,std::less<EQKitTypes::Attributes::Enum>,std::char_traits<char><std::pair<EQKitTypes::Attributes::Enum const>>>>(v8, v8 + 80, &v49, __p);
      v12 = objc_alloc(MEMORY[0x277CCAB68]);
      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0].__r_.__value_.__r.__words[0];
      }

      v11 = [v12 initWithUTF8String:v13];
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v11 = 0;
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v14 = [v5 schemataChildren];
    v15 = [v14 countByEnumeratingWithState:&v45 objects:v51 count:16];
    if (v15)
    {
      v16 = *v46;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v46 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v45 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (v11)
            {
              [v11 appendString:v18];
            }

            else
            {
              v11 = [v18 mutableCopy];
            }
          }

          else if ([v18 conformsToProtocol:&unk_286975630])
          {
            if (v11)
            {
              v19 = EQKit::Font::Manager::fontCollection([*(this + 76) fontManager]);
              v20 = (*(*v19 + 144))(v19, v11, v40);
              v21 = [[EQKitStringBox alloc] initWithAttributedString:v20 cgColor:*(v39 + 14)];
              EQKit::ILayout::ILayout(__p, &v21->super);
              EQKit::ILayout::setVerticalContentClassification(__p, 5);
              EQKit::ILayout::ILayout(v43, __p);
              v22 = *(this + 51);
              if (*(this + 50) == v22)
              {
                v23 = 0;
              }

              else
              {
                v23 = *(v22 - 8);
              }

              EQKitLayoutManager::addRowChild(this, v43, v23);
              EQKit::ILayout::~ILayout(v43);

              EQKit::ILayout::~ILayout(__p);
            }

            EQKitLayoutManager::layout(this, v18, 0);
            v11 = 0;
          }
        }

        v15 = [v14 countByEnumeratingWithState:&v45 objects:v51 count:16];
      }

      while (v15);
    }

    if (!v37)
    {
      goto LABEL_44;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "");
    v24 = *(this + 77);
    v25 = *(this + 51);
    v26 = *(this + 50) == v25 ? 0 : *(v25 - 8);
    v49 = v26;
    v50 = 13;
    EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::string,std::less<EQKitTypes::Attributes::Enum>,std::char_traits<char><std::pair<EQKitTypes::Attributes::Enum const>>>>(v24, v24 + 80, &v49, __p);
    v27 = objc_alloc(MEMORY[0x277CCAB68]);
    v28 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
    v29 = [v27 initWithUTF8String:v28];
    v30 = v29;
    if (v11)
    {
      [v11 appendString:v29];
    }

    else
    {
      v11 = [v29 mutableCopy];
    }

    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
      if (v11)
      {
        goto LABEL_45;
      }
    }

    else
    {
LABEL_44:
      if (v11)
      {
LABEL_45:
        v31 = EQKit::Font::Manager::fontCollection([*(this + 76) fontManager]);
        v32 = (*(*v31 + 144))(v31, v11, v40);
        v33 = [[EQKitStringBox alloc] initWithAttributedString:v32 cgColor:*(v39 + 14)];
        EQKit::ILayout::ILayout(v42, &v33->super);
        v34 = *(this + 51);
        if (*(this + 50) == v34)
        {
          v35 = 0;
        }

        else
        {
          v35 = *(v34 - 8);
        }

        EQKitLayoutManager::addRowChild(this, v42, v35);
        EQKit::ILayout::~ILayout(v42);
      }
    }

    EQKitLayoutManager::endRow(this, v41);
    EQKit::ILayout::~ILayout(v41);
  }

  return EQKit::ILayout::ILayout(a3, 0);
}

void sub_258265DB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t EQKitLayoutManager::currentNode(EQKitLayoutManager *this)
{
  v1 = *(this + 51);
  if (*(this + 50) == v1)
  {
    return 0;
  }

  else
  {
    return *(v1 - 8);
  }
}

void EQKitLayoutManager::layoutRow(EQKitLayoutManager *this@<X0>, const EQKit::Layout::Schemata *a2@<X1>, EQKit::ILayout *a3@<X8>)
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = EQKit::Layout::Schemata::children(a2);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v5)
  {
    v6 = *v29;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v29 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v28 + 1) + 8 * i);
        if ([v8 isEmbellishedOperator] && (EQKitLayoutManager::doesOperatorRequireVerticalStretch(this, objc_msgSend(v8, "operatorCore")) & 1) != 0)
        {
          v9 = 1;
          goto LABEL_12;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_12:
  v10 = EQKitLayoutFilterOutSpaceLike(v4);
  v12 = -[NSArray count](v10, "count") == 1 && (v21[0] = [-[NSArray firstObject](v10 "firstObject")]) != 0 && (v11 = std::__hash_table<std::__hash_value_type<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator}*,EQKitLayoutStretchedOperator>,std::__unordered_map_hasher<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator},EQKitLayoutStretchedOperator,std::hash<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator}>,std::equal_to<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator}>,true>,std::__unordered_map_equal<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator},EQKitLayoutStretchedOperator,std::equal_to,std::hash,true>,std::allocator<EQKitLayoutStretchedOperator>>::find<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator}>(this + 59, v21)) != 0 && *(v11 + 8) == 1;
  if (((v9 | v12) & 1) != 0 && (v13 = *(this + 49) + *(this + 48) - 1, EQKitLayoutRow::isNewRowRequiredForStretching((*(*(this + 45) + 8 * (v13 / 0x19)) + 160 * (v13 % 0x19)))))
  {
    EQKitLayoutManager::beginRow(this, 1, 1);
    v19 = 1;
  }

  else
  {
    v19 = 0;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = [v4 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v14)
  {
    v15 = *v25;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v4);
        }

        v17 = *(*(&v24 + 1) + 8 * j);
        if (v9 && [*(*(&v24 + 1) + 8 * j) isEmbellishedOperator] && EQKitLayoutManager::doesOperatorRequireVerticalStretch(this, objc_msgSend(v17, "operatorCore")))
        {
          EQKit::ILayout::ILayout(v23, 0);
          EQKitLayoutManager::addRowChild(this, v23, v17);
          v18 = v23;
LABEL_33:
          EQKit::ILayout::~ILayout(v18);
          continue;
        }

        if (v12 && [v17 isEmbellishedOperator])
        {
          EQKit::ILayout::ILayout(v22, 0);
          EQKitLayoutManager::addRowChild(this, v22, v17);
          v18 = v22;
          goto LABEL_33;
        }

        EQKitLayoutManager::pushImplicitFormIfRequired(this, v17, v10);
        EQKitLayoutManager::layout(this, v17, 0);
        EQKitLayoutManager::popImplicitFormIfRequired(this, v17);
      }

      v14 = [v4 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v14);
  }

  EQKit::ILayout::ILayout(a3, 0);
  if ((v9 | v12))
  {
    EQKitLayoutManager::resolveRow(this, v10);
    if (v19)
    {
      EQKitLayoutManager::endRow(this, v21);
      EQKit::ILayout::operator=(a3, v21);
      EQKit::ILayout::~ILayout(v21);
    }
  }
}

void sub_258266190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, EQKit::ILayout *a4, ...)
{
  va_start(va, a4);
  EQKit::ILayout::~ILayout(va);
  EQKit::ILayout::~ILayout(a4);
  _Unwind_Resume(a1);
}

void EQKitLayoutManager::layoutFraction(EQKit::Layout::Schemata *this@<X1>, uint64_t a2@<X0>, int a3@<W2>, void *a4@<X3>, EQKit::ILayout *a5@<X8>)
{
  v8 = *(a2 + 296);
  if (v8)
  {
    v9 = *(*(a2 + 264) + 8 * ((v8 + *(a2 + 288) - 1) / 0x1AuLL)) + 152 * ((v8 + *(a2 + 288) - 1) % 0x1AuLL);
  }

  else
  {
    v9 = a2 + 56;
  }

  v10 = EQKit::Layout::Schemata::fractionSchemata(this);
  v110 = 0;
  v111 = &v110;
  v112 = 0x2020000000;
  v113 = 0;
  v106 = 0;
  v107 = &v106;
  v108 = 0x2020000000;
  v109 = 0;
  v102 = 0;
  v103 = &v102;
  v104 = 0x2020000000;
  v105 = 0;
  v98 = 0;
  v99 = &v98;
  v100 = 0x2020000000;
  v101 = 0;
  v11 = *(v9 + 16);
  v12 = [v10 schemataNumerator];
  v95[0] = MEMORY[0x277D85DD0];
  v95[1] = 3221225472;
  v95[2] = ___ZN18EQKitLayoutManager14layoutFractionERKN5EQKit6Layout8SchemataEbPU26objcproto15EQKitLayoutNode11objc_object_block_invoke;
  v95[3] = &unk_279872110;
  v95[4] = v12;
  v95[5] = &v110;
  v95[6] = &v106;
  v95[7] = a2;
  EQKitLayoutManager::layoutBox(a2, v12, v11 ^ 1, 0, 0, 0, v95, v96);
  v13 = [v10 schemataDenominator];
  v92[0] = MEMORY[0x277D85DD0];
  v92[1] = 3221225472;
  v92[2] = ___ZN18EQKitLayoutManager14layoutFractionERKN5EQKit6Layout8SchemataEbPU26objcproto15EQKitLayoutNode11objc_object_block_invoke_2;
  v92[3] = &unk_279872110;
  v92[4] = v13;
  v92[5] = &v102;
  v92[6] = &v98;
  v92[7] = a2;
  EQKitLayoutManager::layoutBox(a2, v13, v11 ^ 1, 0, 0, 1, v92, v93);
  if (*(v9 + 120))
  {
    v14 = *(v9 + 128);
  }

  else
  {
    v14 = EQKitLayoutContext::pComputeRuleThickness(v9);
  }

  v15 = *(a2 + 408);
  if (*(a2 + 400) == v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = *(v15 - 8);
  }

  v17 = EQKitLayoutManager::lengthForAttribute(a2, 36, v16, v14);
  v18 = 0.0;
  if (v17 > 0.0)
  {
    v19 = EQKit::Font::Manager::fontCollection([*(a2 + 608) fontManager]);
    v20 = *(a2 + 296);
    if (v20)
    {
      v21 = *(*(a2 + 264) + 8 * ((v20 + *(a2 + 288) - 1) / 0x1AuLL)) + 152 * ((v20 + *(a2 + 288) - 1) % 0x1AuLL);
    }

    else
    {
      v21 = a2 + 56;
    }

    v18 = (*(*v19 + 56))(v19, 25, v21 + 8, v14);
  }

  v22 = v96[0];
  v23 = v93[0];
  [v96[0] width];
  v25 = v24;
  [(EQKitBox *)v23 width];
  v27 = v26;
  if (v25 >= v26)
  {
    v28 = v25;
  }

  else
  {
    v28 = v26;
  }

  v29 = EQKit::Font::Manager::fontCollection([*(a2 + 608) fontManager]);
  if (((*(*v29 + 16))(v29) & 1) == 0)
  {
    v31 = *(v9 + 88);
    if (*(v9 + 120))
    {
      v30.n128_u64[0] = *(v9 + 128);
    }

    else
    {
      v30.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v9);
    }

    v32.n128_f64[0] = (*(*v31 + 56))(v31, 3, v9 + 8, v30);
    v111[3] = v32.n128_f64[0];
    v33 = *(v9 + 88);
    if (*(v9 + 120))
    {
      v32.n128_u64[0] = *(v9 + 128);
    }

    else
    {
      v32.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v9);
    }

    v34.n128_f64[0] = (*(*v33 + 56))(v33, 4, v9 + 8, v32);
    v103[3] = v34.n128_f64[0];
    v35 = *(v9 + 88);
    if (*(v9 + 120))
    {
      v34.n128_u64[0] = *(v9 + 128);
    }

    else
    {
      v34.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v9);
    }

    v36 = (*(*v35 + 56))(v35, 2, v9 + 8, v34);
    v107[3] = v36;
    v99[3] = v36;
  }

  if ((*(v9 + 120) & 2) != 0)
  {
    v37 = *(v9 + 136);
  }

  else
  {
    v37 = EQKitLayoutContext::pComputeMathAxis(v9);
  }

  v38 = v107;
  v39 = v111[3];
  if (v17 <= 0.0)
  {
    v40 = 0.0;
  }

  else
  {
    v40 = v17 * 0.5;
  }

  [(EQKitBox *)v22 depth];
  v42 = v39 - v37 - v40 - v41;
  if (v38[3] >= v42)
  {
    v43 = v38[3];
  }

  else
  {
    v43 = v42;
  }

  v44 = v99;
  v45 = v103[3];
  [(EQKitBox *)v23 height];
  v47 = v37 - v40 + v45 - v46;
  if (v44[3] >= v47)
  {
    v47 = v44[3];
  }

  v83 = v47;
  v48 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v91 = 2;
  v49 = *(a2 + 616);
  v50 = *(a2 + 408);
  if (*(a2 + 400) == v50)
  {
    v51 = 0;
  }

  else
  {
    v51 = *(v50 - 8);
  }

  v87 = v51;
  v88 = 24;
  EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>(v49, v49 + 128, &v87, &v91);
  v90 = 2;
  v52 = *(a2 + 616);
  v53 = *(a2 + 408);
  if (*(a2 + 400) == v53)
  {
    v54 = 0;
  }

  else
  {
    v54 = *(v53 - 8);
  }

  v87 = v54;
  v88 = 25;
  EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>(v52, v52 + 128, &v87, &v90);
  v55 = v28 + v18 * 2.0;
  if (v91 == 3)
  {
    v56 = v55 - v25;
  }

  else
  {
    v56 = 0.0;
    if (v91 == 2)
    {
      v56 = (v55 - v25) * 0.5;
    }
  }

  if (v90 == 3)
  {
    v57 = v55 - v27;
  }

  else
  {
    v57 = 0.0;
    if (v90 == 2)
    {
      v57 = (v55 - v27) * 0.5;
    }
  }

  if (v56 == 0.0)
  {
    [v48 addObject:v22];
  }

  else
  {
    EQKitLayoutManager::beginRow(a2, 1, 0);
    EQKitLayoutManager::addHSpace(a2, v56);
    EQKit::ILayout::ILayout(v89, v22);
    EQKitLayoutManager::addRowChild(a2, v89, 0);
    EQKit::ILayout::~ILayout(v89);
    EQKitLayoutManager::endRow(a2, &v87);
    if (v87)
    {
      [v48 addObject:?];
    }

    EQKit::ILayout::~ILayout(&v87);
  }

  v58 = [[EQKitVSpace alloc] initWithHeight:v43 depth:0.0];
  [v48 addObject:v58];

  v59 = [EQKitRule alloc];
  v60 = *(a2 + 296);
  if (v60)
  {
    v61 = *(*(a2 + 264) + 8 * ((v60 + *(a2 + 288) - 1) / 0x1AuLL)) + 152 * ((v60 + *(a2 + 288) - 1) % 0x1AuLL);
  }

  else
  {
    v61 = a2 + 56;
  }

  v62 = [(EQKitRule *)v59 initWithHeight:*(v61 + 112) depth:v40 width:v40 cgColor:v55];
  v63 = EQKitLayoutManager::wrapBoxWithAttribution(v62, v62, this);
  [v48 addObject:v63];

  v64 = [[EQKitVSpace alloc] initWithHeight:v83 depth:0.0];
  [v48 addObject:v64];

  if (v57 == 0.0)
  {
    [v48 addObject:v23];
  }

  else
  {
    EQKitLayoutManager::beginRow(a2, 1, 0);
    EQKitLayoutManager::addHSpace(a2, v57);
    EQKit::ILayout::ILayout(v86, v23);
    EQKitLayoutManager::addRowChild(a2, v86, 0);
    EQKit::ILayout::~ILayout(v86);
    EQKitLayoutManager::endRow(a2, &v87);
    if (v87)
    {
      [v48 addObject:?];
    }

    EQKit::ILayout::~ILayout(&v87);
  }

  v65 = [[EQKitOffsetVBox alloc] initWithChildBoxes:v48 pivotIndex:2 offset:v37];
  EQKit::ILayout::ILayout(a5, &v65->super.super.super);

  *(a5 + 16) = *(a5 + 16) & 0xFFF0 | 0xA;
  EQKit::ILayout::takeMissingOffsetsFromLayout(a5, v96);
  EQKit::ILayout::takeMissingOffsetsFromLayout(a5, v93);
  EQKit::ILayout::removeOffsetOfKind(a5, 1);

  v66 = *(a2 + 296);
  if (v66)
  {
    v67 = *(*(a2 + 264) + 8 * ((v66 + *(a2 + 288) - 1) / 0x1AuLL)) + 152 * ((v66 + *(a2 + 288) - 1) % 0x1AuLL);
  }

  else
  {
    v67 = a2 + 56;
  }

  if (*(v67 + 16))
  {
    goto LABEL_76;
  }

  if ((v97 & 0x1C00u) <= 0x1000 || (v94 & 0x1C00u) <= 0x1000)
  {
    if ((v97 & 0x1000) != 0)
    {
      if ((v94 & 0x1000) != 0)
      {
        v69 = 3;
      }

      else
      {
        v69 = 1;
      }

      goto LABEL_84;
    }

LABEL_76:
    v69 = 1;
    goto LABEL_84;
  }

  if (v66)
  {
    v68 = *(*(a2 + 264) + 8 * ((v66 + *(a2 + 288) - 1) / 0x1AuLL)) + 152 * ((v66 + *(a2 + 288) - 1) % 0x1AuLL);
  }

  else
  {
    v68 = a2 + 56;
  }

  if (*(v68 + 8) <= 0)
  {
    v69 = 3;
  }

  else
  {
    v69 = 4;
  }

LABEL_84:
  EQKit::ILayout::setVerticalContentClassification(a5, v69);
  if (a3)
  {
    v70 = EQKit::Font::Manager::fontCollection([*(a2 + 608) fontManager]);
    v72 = *(a2 + 296);
    if (v72)
    {
      v73 = *(*(a2 + 264) + 8 * ((v72 + *(a2 + 288) - 1) / 0x1AuLL)) + 152 * ((v72 + *(a2 + 288) - 1) % 0x1AuLL);
      v74 = v73 + 8;
    }

    else
    {
      v74 = a2 + 64;
      v73 = a2 + 56;
    }

    if (*(v73 + 120))
    {
      v71.n128_u64[0] = *(v73 + 128);
    }

    else
    {
      v71.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v73);
    }

    v75 = (*(*v70 + 56))(v70, 26, v74, v71);
    v76 = [a4 operatorCore];
    if (v76)
    {
      v77 = EQKitLayoutManager::leftSpaceForOperator(a2, v76);
      v78 = EQKitLayoutManager::rightSpaceForOperator(a2, v76);
      if (v75 >= v77)
      {
        v79 = v75;
      }

      else
      {
        v79 = v77;
      }

      if (v75 < v78)
      {
        v75 = v78;
      }
    }

    else
    {
      v79 = v75;
    }

    EQKitLayoutManager::addOperatorLeftSpace(a2, v79);
    EQKit::ILayout::ILayout(v85, a5);
    v80 = *(a2 + 408);
    if (*(a2 + 400) == v80)
    {
      v81 = 0;
    }

    else
    {
      v81 = *(v80 - 8);
    }

    EQKitLayoutManager::addRowChild(a2, v85, v81);
    EQKit::ILayout::~ILayout(v85);
    EQKitLayoutManager::addOperatorRightSpace(a2, v75);
    EQKit::ILayout::ILayout(&v87, 0);
    EQKit::ILayout::operator=(a5, &v87);
    EQKit::ILayout::~ILayout(&v87);
  }

  EQKit::ILayout::~ILayout(v93);
  EQKit::ILayout::~ILayout(v96);
  _Block_object_dispose(&v98, 8);
  _Block_object_dispose(&v102, 8);
  _Block_object_dispose(&v106, 8);
  _Block_object_dispose(&v110, 8);
}

void sub_258266C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  EQKit::ILayout::~ILayout(v72);
  EQKit::ILayout::~ILayout(&a50);
  EQKit::ILayout::~ILayout(&a65);
  _Block_object_dispose(&a72, 8);
  _Block_object_dispose((v73 - 248), 8);
  _Block_object_dispose((v73 - 216), 8);
  _Block_object_dispose((v73 - 184), 8);
  _Unwind_Resume(a1);
}

void EQKitLayoutManager::layoutSubsuperscript(EQKitLayoutManager *this@<X0>, const EQKit::Layout::Schemata *a2@<X1>, EQKit::ILayout *a3@<X8>)
{
  v5 = EQKit::Layout::Schemata::subsuperscriptSchemata(a2);
  v6 = [v5 schemataKernel];
  v7 = [v5 schemataSubscript];
  v8 = [v5 schemataSuperscript];

  EQKitLayoutManager::layoutSubsuperscript(this, v6, v7, v8, a3);
}

uint64_t EQKitLayoutManager::layoutOperator@<X0>(EQKitLayoutManager *this@<X0>, const EQKit::Layout::Schemata *a2@<X1>, EQKit::ILayout *a3@<X8>)
{
  v5 = *(this + 37);
  if (v5)
  {
    v6 = (*(*(this + 33) + 8 * ((v5 + *(this + 36) - 1) / 0x1AuLL)) + 152 * ((v5 + *(this + 36) - 1) % 0x1AuLL));
  }

  else
  {
    v6 = this + 56;
  }

  v7 = EQKit::Layout::Schemata::tokenSchemata(a2);
  v8 = (*(**(v6 + 11) + 80))(*(v6 + 11), [v7 schemataTokenString], v6 + 8);
  v9 = [[EQKitStringBox alloc] initWithAttributedString:v8 cgColor:*(v6 + 14)];
  v10 = [v7 schemataUnicharOrNul];
  v11 = 0.0;
  if (v10)
  {
    v12 = *(this + 51);
    v13 = *(this + 50) == v12 ? 0 : *(v12 - 8);
    if (EQKitLayoutManager::isOperatorSymmetric(this, [v13 operatorCore]) && ((*(**(v6 + 11) + 128))(*(v6 + 11), v10, v6 + 8) & 1) == 0)
    {
      [(EQKitStringBox *)v9 depth];
      v15 = v14;
      [(EQKitStringBox *)v9 height];
      v17 = v16;
      [(EQKitStringBox *)v9 depth];
      v19 = v15 + (v17 + v18) * -0.5;
      if ((v6[120] & 2) != 0)
      {
        v20 = *(v6 + 17);
      }

      else
      {
        v20 = EQKitLayoutContext::pComputeMathAxis(v6);
      }

      v11 = v19 + v20;
    }
  }

  v21 = v11 + EQKitLayoutManager::lengthForCharacterProperty(this, 0.0);
  if (v21 == 0.0)
  {
    v22 = v9;
  }

  else
  {
    v22 = [[EQKitVShift alloc] initWithBox:v9 offset:v21];
  }

  EQKit::ILayout::ILayout(a3, &v22->super);
  v23 = *(this + 51);
  if (*(this + 50) == v23)
  {
    v24 = 0;
  }

  else
  {
    v24 = *(v23 - 8);
  }

  v25 = [v24 operatorCore];
  v26 = [*(this + 76) operatorDictionary];
  v27 = [v25 operatorId];
  v28 = EQKitLayoutManager::operatorForm(this, v25);
  v29 = EQKit::Config::Operator::Dictionary::lookup(v26, v27, v28);
  if (v29 && (*(v29 + 48) & 0x40) != 0)
  {
    [(EQKitVShift *)v22 width];
    EQKit::ILayoutOffset::ILayoutOffset(v33, &v22->super, v30 * 0.5);
    EQKit::ILayout::setOffsetOfKind(a3, 1, v33);
    EQKit::ILayoutOffset::~ILayoutOffset(v33);
  }

  if ((*(**(v6 + 11) + 112))(*(v6 + 11), v10, v6 + 8))
  {
    v31 = 5;
  }

  else
  {
    v31 = 2;
  }

  return EQKit::ILayout::setVerticalContentClassification(a3, v31);
}

void sub_2582670C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  EQKit::ILayoutOffset::~ILayoutOffset(&a9);
  EQKit::ILayout::~ILayout(v9);
  _Unwind_Resume(a1);
}

void EQKitLayoutManager::layoutIdentifier(EQKitLayoutManager *this@<X0>, const EQKit::Layout::Schemata *a2@<X1>, EQKit::ILayout *a3@<X8>)
{
  v4 = *(this + 37);
  if (v4)
  {
    v5 = (*(*(this + 33) + 8 * ((v4 + *(this + 36) - 1) / 0x1AuLL)) + 152 * ((v4 + *(this + 36) - 1) % 0x1AuLL));
  }

  else
  {
    v5 = this + 56;
  }

  v6 = *(v5 + 11);
  v7 = [EQKit::Layout::Schemata::tokenSchemata(a2) schemataTokenString];
  v8 = (*(*v6 + 80))(v6, v7, v5 + 8);
  v9 = [[EQKitStringBox alloc] initWithAttributedString:v8 cgColor:*(v5 + 14)];
  v10 = EQKit::ILayout::ILayout(a3, &v9->super);
  EQKit::ILayout::setVerticalContentClassification(v10, 5);
  v11 = *(v5 + 5);
  v12 = v11 > 0xD;
  v13 = (1 << v11) & 0x3018;
  if (!v12 && v13 != 0)
  {
    *(a3 + 16) = *(a3 + 16) & 0xFF3F | 0x80;
  }
}

void EQKitLayoutManager::layoutNumber(EQKitLayoutManager *this@<X0>, const EQKit::Layout::Schemata *a2@<X1>, EQKit::ILayout *a3@<X8>)
{
  v5 = *(this + 37);
  if (v5)
  {
    v6 = (*(*(this + 33) + 8 * ((v5 + *(this + 36) - 1) / 0x1AuLL)) + 152 * ((v5 + *(this + 36) - 1) % 0x1AuLL));
  }

  else
  {
    v6 = this + 56;
  }

  v7 = *(v6 + 11);
  v8 = [EQKit::Layout::Schemata::tokenSchemata(a2) schemataTokenString];
  v9 = (*(*v7 + 80))(v7, v8, v6 + 8);
  v10 = [[EQKitStringBox alloc] initWithAttributedString:v9 cgColor:*(v6 + 14)];
  v11 = EQKit::ILayout::ILayout(a3, &v10->super);
  EQKit::ILayout::setVerticalContentClassification(v11, 5);
  EQKitLayoutManager::decimalPointOffsetInStringBox(this, v10);
  EQKit::ILayoutOffset::ILayoutOffset(v13, &v10->super, v12);
  EQKit::ILayout::setOffsetOfKind(a3, 2, v13);
  EQKit::ILayoutOffset::~ILayoutOffset(v13);
}

void sub_258267350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  EQKit::ILayoutOffset::~ILayoutOffset(&a9);
  EQKit::ILayout::~ILayout(v9);
  _Unwind_Resume(a1);
}

void EQKitLayoutManager::layoutUnderover(EQKit::Layout::Schemata *this@<X1>, uint64_t a2@<X0>, int a3@<W2>, void *a4@<X3>, EQKit::ILayout *a5@<X8>)
{
  v7 = EQKit::Layout::Schemata::underoverSchemata(this);
  v8 = [v7 schemataBase];
  v9 = [v7 schemataUnder];
  v10 = [v7 schemataOver];
  v11 = *(a2 + 296);
  if (v11)
  {
    v12 = *(*(a2 + 264) + 8 * ((v11 + *(a2 + 288) - 1) / 0x1AuLL)) + 152 * ((v11 + *(a2 + 288) - 1) % 0x1AuLL);
  }

  else
  {
    v12 = a2 + 56;
  }

  EQKit::ILayout::ILayout(a5, 0);
  if ((*(v12 + 16) & 1) == 0 && EQKitLayoutManager::isEmbellishedOperatorWithMovableLimts(a2, v8))
  {
    EQKitLayoutManager::layoutSubsuperscript(a2, v8, v9, v10, &v193);
    EQKit::ILayout::operator=(a5, &v193);
    EQKit::ILayout::~ILayout(&v193);
    v13 = 0.0;
    goto LABEL_269;
  }

  LODWORD(v181[0]) = 0;
  LODWORD(v180[0]) = 0;
  v168 = a5;
  if (v9)
  {
    v14 = *(a2 + 616);
    v193 = v9;
    LODWORD(v194) = 5;
    if ((EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>(v14, v14 + 8, &v193, v181) & 1) == 0)
    {
      v15 = *(a2 + 616);
      v16 = *(a2 + 408);
      if (*(a2 + 400) == v16)
      {
        v17 = 0;
      }

      else
      {
        v17 = *(v16 - 8);
      }

      v193 = v17;
      LODWORD(v194) = 6;
      EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>(v15, v15 + 8, &v193, v181);
    }
  }

  if (v10)
  {
    v18 = *(a2 + 616);
    v193 = v10;
    LODWORD(v194) = 5;
    if ((EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>(v18, v18 + 8, &v193, v180) & 1) == 0)
    {
      v19 = *(a2 + 616);
      v20 = *(a2 + 408);
      if (*(a2 + 400) == v20)
      {
        v21 = 0;
      }

      else
      {
        v21 = *(v20 - 8);
      }

      v193 = v21;
      LODWORD(v194) = 5;
      EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>(v19, v19 + 8, &v193, v180);
    }
  }

  if (LODWORD(v181[0]))
  {
    isEmbellishedOperatorWithAccent = LODWORD(v181[0]) == 2;
  }

  else
  {
    isEmbellishedOperatorWithAccent = EQKitLayoutManager::isEmbellishedOperatorWithAccent(a2, v9);
  }

  if (LODWORD(v180[0]))
  {
    v171 = LODWORD(v180[0]) == 2;
  }

  else
  {
    v171 = EQKitLayoutManager::isEmbellishedOperatorWithAccent(a2, v10);
  }

  v192 = 2;
  v22 = *(a2 + 616);
  v23 = *(a2 + 408);
  if (*(a2 + 400) == v23)
  {
    v24 = 0;
  }

  else
  {
    v24 = *(v23 - 8);
  }

  v193 = v24;
  LODWORD(v194) = 1;
  EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>(v22, v22 + 128, &v193, &v192);
  if ([v8 isEmbellishedOperator])
  {
    isOperatorStretchy = EQKitLayoutManager::isOperatorStretchy(a2, [v8 operatorCore]);
  }

  else
  {
    isOperatorStretchy = 0;
  }

  if ([v9 isEmbellishedOperator])
  {
    v26 = EQKitLayoutManager::isOperatorStretchy(a2, [v9 operatorCore]);
  }

  else
  {
    v26 = 0;
  }

  if ([v10 isEmbellishedOperator])
  {
    v27 = EQKitLayoutManager::isOperatorStretchy(a2, [v10 operatorCore]);
    if (!isOperatorStretchy)
    {
LABEL_36:
      v28 = 0;
      goto LABEL_42;
    }
  }

  else
  {
    v27 = 0;
    if (!isOperatorStretchy)
    {
      goto LABEL_36;
    }
  }

  v193 = v8;
  v28 = !v8 || (v29 = std::__hash_table<std::__hash_value_type<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator}*,EQKitLayoutStretchedOperator>,std::__unordered_map_hasher<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator},EQKitLayoutStretchedOperator,std::hash<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator}>,std::equal_to<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator}>,true>,std::__unordered_map_equal<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator},EQKitLayoutStretchedOperator,std::equal_to,std::hash,true>,std::allocator<EQKitLayoutStretchedOperator>>::find<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator}>((a2 + 472), &v193)) == 0 || *(v29 + 8) != 2;
LABEL_42:
  v191 = 0;
  v190 = 0;
  v183 = 0;
  v184 = 1;
  v185 = 0;
  v186 = 1;
  v187 = 12.0;
  v188 = 0;
  v189 = 0;
  EQKit::ILayout::ILayout(v181, 0);
  if (v8)
  {
    v30 = v28;
  }

  else
  {
    v30 = 1;
  }

  v31 = 0.0;
  if ((v30 & 1) == 0)
  {
    v193 = MEMORY[0x277D85DD0];
    v194 = 3221225472;
    v195 = ___ZN18EQKitLayoutManager22layoutUnderoverBaseBoxEPU26objcproto15EQKitLayoutNode11objc_objectPN5EQKit6Script4InfoEPbPj_block_invoke;
    v196 = &unk_279872188;
    v197 = v8;
    v198 = a2;
    v199 = &v191;
    v200 = &v183;
    v201 = &v190;
    EQKitLayoutManager::layoutBox(a2, v8, &v193, v180);
    EQKit::ILayout::operator=(v181, v180);
    EQKit::ILayout::~ILayout(v180);
    [v181[0] width];
    v31 = fmax(v32, 0.0);
  }

  v179 = 0;
  EQKit::ILayout::ILayout(v180, 0);
  if (!((v9 == 0) | v26 & 1))
  {
    EQKitLayoutManager::layoutOverOrUnderBox(a2, v9, isEmbellishedOperatorWithAccent, &v179, 0, 0, &v193);
    EQKit::ILayout::operator=(v180, &v193);
    EQKit::ILayout::~ILayout(&v193);
    [v180[0] width];
    if (v31 < v33)
    {
      v31 = v33;
    }
  }

  v178 = 0;
  v177 = 0;
  v176 = 0.0;
  EQKit::ILayout::ILayout(v175, 0);
  if (!((v10 == 0) | v27 & 1))
  {
    EQKitLayoutManager::layoutOverOrUnderBox(a2, v10, v171, &v177, &v178, &v176, &v193);
    EQKit::ILayout::operator=(v175, &v193);
    EQKit::ILayout::~ILayout(&v193);
    [v175[0] width];
    if (v31 < v34)
    {
      v31 = v34;
    }
  }

  if (v28)
  {
    EQKitLayoutManager::registerHorizontalStretchedOperator(a2, [v8 operatorCore], 0, v31);
    v193 = MEMORY[0x277D85DD0];
    v194 = 3221225472;
    v195 = ___ZN18EQKitLayoutManager22layoutUnderoverBaseBoxEPU26objcproto15EQKitLayoutNode11objc_objectPN5EQKit6Script4InfoEPbPj_block_invoke;
    v196 = &unk_279872188;
    v197 = v8;
    v198 = a2;
    v199 = &v191;
    v200 = &v183;
    v201 = &v190;
    EQKitLayoutManager::layoutBox(a2, v8, &v193, v174);
    EQKit::ILayout::operator=(v181, v174);
    EQKit::ILayout::~ILayout(v174);
  }

  if (v26)
  {
    EQKitLayoutManager::registerHorizontalStretchedOperator(a2, [v9 operatorCore], 0, v31);
    EQKitLayoutManager::layoutOverOrUnderBox(a2, v9, isEmbellishedOperatorWithAccent, &v179, 0, 0, &v193);
    EQKit::ILayout::operator=(v180, &v193);
    EQKit::ILayout::~ILayout(&v193);
  }

  if (v27)
  {
    if (![objc_msgSend(v10 "operatorCore")])
    {
      v31 = v31 + (*(a2 + 8) + *(a2 + 8)) / -12.0;
    }

    EQKitLayoutManager::registerHorizontalStretchedOperator(a2, [v10 operatorCore], 0, v31);
    EQKitLayoutManager::layoutOverOrUnderBox(a2, v10, v171, &v177, &v178, &v176, &v193);
    EQKit::ILayout::operator=(v175, &v193);
    EQKit::ILayout::~ILayout(&v193);
  }

  [v181[0] width];
  v36 = v35;
  if (v175[0])
  {
    [v175[0] width];
    if (v37 >= v36)
    {
      v38 = v37;
    }

    else
    {
      v38 = v36;
    }

    if (v171)
    {
      v39 = v36;
    }

    else
    {
      v39 = v38;
    }
  }

  else
  {
    v39 = v35;
    v38 = v35;
  }

  if (v180[0])
  {
    [v180[0] width];
    if (v40 >= v38)
    {
      v38 = v40;
    }

    if (v40 < v39)
    {
      v41 = 1;
    }

    else
    {
      v41 = isEmbellishedOperatorWithAccent;
    }

    if (!v41)
    {
      v39 = v40;
    }
  }

  v42 = 0.0;
  if (v36 < v39)
  {
    v43 = EQKit::Font::Manager::fontCollection([*(a2 + 608) fontManager]);
    v45 = *(a2 + 296);
    if (v45)
    {
      v46 = *(*(a2 + 264) + 8 * ((v45 + *(a2 + 288) - 1) / 0x1AuLL)) + 152 * ((v45 + *(a2 + 288) - 1) % 0x1AuLL);
      v47 = v46 + 8;
    }

    else
    {
      v47 = a2 + 64;
      v46 = a2 + 56;
    }

    if (*(v46 + 120))
    {
      v44.n128_u64[0] = *(v46 + 128);
    }

    else
    {
      v44.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v46);
    }

    v42 = (*(*v43 + 56))(v43, 27, v47, v44);
  }

  v48 = v175[0];
  v49 = v181[0];
  v50 = v180[0];
  [v181[0] erasableBounds];
  MidX = CGRectGetMidX(v202);
  EQKitLayoutManager::alignBoxHorizontally(v181, v192, 0, &v193, v38, 0.0);
  v166 = v42;
  EQKit::ILayout::operator=(v181, &v193);
  EQKit::ILayout::~ILayout(&v193);
  v53 = (v38 - v36) * 0.5 + MidX;
  if (!(*(**(v12 + 88) + 16))(*(v12 + 88)))
  {
    v57 = 0.0;
    v58 = 0.0;
    if (!v48)
    {
      goto LABEL_189;
    }

    if (v171)
    {
      if (v177 == 1)
      {
        [v48 depth];
        if (v59.n128_f64[0] >= 0.0)
        {
          v115 = *(v12 + 88);
          if (*(v12 + 120))
          {
            v59.n128_u64[0] = *(v12 + 128);
          }

          else
          {
            v59.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v12);
          }

          v60 = (v38 - v36) * 0.5 + MidX;
          v61 = -(*(*v115 + 56))(v115, 11, v12 + 8, v59);
        }

        else
        {
          v60 = (v38 - v36) * 0.5 + MidX;
          v61 = v176;
          [v48 depth];
          v63 = v62.n128_f64[0];
          v64 = *(v12 + 88);
          if (*(v12 + 120))
          {
            v62.n128_u64[0] = *(v12 + 128);
          }

          else
          {
            v62.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v12);
          }

          v116 = -v63 - (*(*v64 + 56))(v64, 11, v12 + 8, v62);
          if (v61 >= v116)
          {
            v61 = v116;
          }
        }

        [v181[0] height];
        if (v61 < v117)
        {
          v117 = v61;
        }

        v58 = -v117;
        v53 = v60;
      }

      else
      {
        v90 = *(v12 + 88);
        if (*(v12 + 120))
        {
          v52.n128_u64[0] = *(v12 + 128);
        }

        else
        {
          v52.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v12);
        }

        v58 = (*(*v90 + 56))(v90, 11, v12 + 8, v52);
      }

      if (v190 == 1)
      {
        v118 = EQKit::Font::Manager::fontCollection([*(a2 + 608) fontManager]);
        v119 = v53 + (*(*v118 + 176))(v118, v191, &v183);
        v95 = 1;
LABEL_188:
        EQKitLayoutManager::alignBoxHorizontally(v175, v192, v95, &v193, v38, v119);
        EQKit::ILayout::operator=(v175, &v193);
        EQKit::ILayout::~ILayout(&v193);
LABEL_189:
        if (!v50)
        {
          v78 = 0.0;
LABEL_217:
          v73 = 0.0;
          goto LABEL_245;
        }

        if (!isEmbellishedOperatorWithAccent)
        {
          v121 = *(v12 + 88);
          if (*(v12 + 120))
          {
            v52.n128_u64[0] = *(v12 + 128);
          }

          else
          {
            v52.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v12);
          }

          v123 = (*(*v121 + 56))(v121, 13, v12 + 8, v52);
          v124 = *(v12 + 88);
          if (*(v12 + 120))
          {
            v122.n128_u64[0] = *(v12 + 128);
          }

          else
          {
            v122.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v12);
          }

          v125 = (*(*v124 + 56))(v124, 14, v12 + 8, v122);
          [v50 layoutHeight];
          v126 = 0;
          v128 = v125 - v127;
          if (v123 >= v128)
          {
            v78 = v123;
          }

          else
          {
            v78 = v128;
          }

          goto LABEL_216;
        }

        if (v179 == 1)
        {
          [v50 height];
          if (v52.n128_f64[0] <= 0.0)
          {
            [v50 height];
            v130 = v129.n128_f64[0];
            v131 = *(v12 + 88);
            if (*(v12 + 120))
            {
              v129.n128_u64[0] = *(v12 + 128);
            }

            else
            {
              v129.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v12);
            }

            v78 = v130 + (*(*v131 + 56))(v131, 13, v12 + 8, v129);
            goto LABEL_213;
          }

          v120 = *(v12 + 88);
          if ((*(v12 + 120) & 1) == 0)
          {
            goto LABEL_207;
          }
        }

        else
        {
          v120 = *(v12 + 88);
          if ((*(v12 + 120) & 1) == 0)
          {
LABEL_207:
            v52.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v12);
            goto LABEL_208;
          }
        }

        v52.n128_u64[0] = *(v12 + 128);
LABEL_208:
        v78 = (*(*v120 + 56))(v120, 13, v12 + 8, v52);
LABEL_213:
        if (v190 == 1)
        {
          v132 = EQKit::Font::Manager::fontCollection([*(a2 + 608) fontManager]);
          v53 = v53 + (*(*v132 + 184))(v132, v191, &v183);
          v126 = 1;
        }

        else
        {
          v126 = 0;
        }

LABEL_216:
        EQKitLayoutManager::alignBoxHorizontally(v180, v192, v126, &v193, v38, v53);
        EQKit::ILayout::operator=(v180, &v193);
        EQKit::ILayout::~ILayout(&v193);
        goto LABEL_217;
      }

      v95 = 0;
    }

    else
    {
      v66 = *(v12 + 88);
      if (*(v12 + 120))
      {
        v52.n128_u64[0] = *(v12 + 128);
      }

      else
      {
        v52.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v12);
      }

      v92 = (*(*v66 + 56))(v66, 11, v12 + 8, v52);
      v93 = *(v12 + 88);
      if (*(v12 + 120))
      {
        v91.n128_u64[0] = *(v12 + 128);
      }

      else
      {
        v91.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v12);
      }

      v94 = (*(*v93 + 56))(v93, 12, v12 + 8, v91);
      [v48 layoutDepth];
      v95 = 0;
      v97 = v94 - v96;
      if (v92 >= v97)
      {
        v58 = v92;
      }

      else
      {
        v58 = v97;
      }
    }

    v119 = v53;
    goto LABEL_188;
  }

  if (([v8 isEmbellishedOperator] & 1) != 0 && EQKitLayoutManager::isOperatorLargeOp(a2, objc_msgSend(v8, "operatorCore")))
  {
    (*(**(v12 + 88) + 48))(&v193);
    v165 = EQKitLength::resolveToAbsoluteWithSize(&v193, v187);
    v56 = *(v12 + 88);
    if (*(v12 + 120))
    {
      v55.n128_u64[0] = *(v12 + 128);
    }

    else
    {
      v55.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v12);
    }

    v70 = (*(*v56 + 56))(v56, 12, v12 + 8, v55);
    v99 = *(v12 + 88);
    if (*(v12 + 120))
    {
      v98.n128_u64[0] = *(v12 + 128);
    }

    else
    {
      v98.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v12);
    }

    v162 = (*(*v99 + 56))(v99, 11, v12 + 8, v98);
    v101 = *(v12 + 88);
    if (*(v12 + 120))
    {
      v100.n128_u64[0] = *(v12 + 128);
    }

    else
    {
      v100.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v12);
    }

    v81 = (*(*v101 + 56))(v101, 14, v12 + 8, v100);
    v103 = *(v12 + 88);
    if (*(v12 + 120))
    {
      v102.n128_u64[0] = *(v12 + 128);
    }

    else
    {
      v102.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v12);
    }

    v78 = (*(*v103 + 56))(v103, 13, v12 + 8, v102);
    v86 = 0;
    v87 = 0.0;
  }

  else
  {
    v65 = *(v12 + 88);
    if (!v8 || (v28 & v190) == 0)
    {
      if (*(v12 + 120))
      {
        v54.n128_u64[0] = *(v12 + 128);
      }

      else
      {
        v54.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v12);
      }

      v162 = (*(*v65 + 56))(v65, 50, v12 + 8, v54);
      v68 = *(v12 + 88);
      if (*(v12 + 120))
      {
        v67.n128_u64[0] = *(v12 + 128);
      }

      else
      {
        v67.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v12);
      }

      v73 = (*(*v68 + 56))(v68, 51, v12 + 8, v67);
      v74 = *(v12 + 88);
      if (*(v12 + 120))
      {
        v72.n128_u64[0] = *(v12 + 128);
      }

      else
      {
        v72.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v12);
      }

      v78 = (*(*v74 + 56))(v74, 48, v12 + 8, v72);
      v79 = *(v12 + 88);
      if (*(v12 + 120))
      {
        v77.n128_u64[0] = *(v12 + 128);
      }

      else
      {
        v77.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v12);
      }

      v84 = (*(*v79 + 56))(v79, 49, v12 + 8, v77);
      v85 = *(v12 + 88);
      if (*(v12 + 120))
      {
        v83.n128_u64[0] = *(v12 + 128);
      }

      else
      {
        v83.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v12);
      }

      v87 = (*(*v85 + 56))(v85, 34, v12 + 8, v83);
      v86 = 1;
      v164 = v84;
      v165 = 0.0;
      v81 = 0.0;
      v70 = 0.0;
      if (v48)
      {
        goto LABEL_151;
      }

LABEL_129:
      v88 = v53;
      v89 = -1.79769313e308;
      goto LABEL_152;
    }

    if (*(v12 + 120))
    {
      v54.n128_u64[0] = *(v12 + 128);
    }

    else
    {
      v54.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v12);
    }

    v70 = (*(*v65 + 56))(v65, 44, v12 + 8, v54);
    v71 = *(v12 + 88);
    if (*(v12 + 120))
    {
      v69.n128_u64[0] = *(v12 + 128);
    }

    else
    {
      v69.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v12);
    }

    v162 = (*(*v71 + 56))(v71, 45, v12 + 8, v69);
    v76 = *(v12 + 88);
    if (*(v12 + 120))
    {
      v75.n128_u64[0] = *(v12 + 128);
    }

    else
    {
      v75.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v12);
    }

    v81 = (*(*v76 + 56))(v76, 42, v12 + 8, v75);
    v82 = *(v12 + 88);
    if (*(v12 + 120))
    {
      v80.n128_u64[0] = *(v12 + 128);
    }

    else
    {
      v80.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v12);
    }

    v78 = (*(*v82 + 56))(v82, 43, v12 + 8, v80);
    v86 = 0;
    v165 = 0.0;
    v87 = 0.0;
  }

  v164 = 0.0;
  v73 = 0.0;
  if (!v48)
  {
    goto LABEL_129;
  }

LABEL_151:
  v88 = v53;
  [v48 width];
  v89 = v104 * 0.5 - v165 * 0.5;
LABEL_152:
  v161 = v81;
  if (v50)
  {
    [v50 width];
    v106 = v165 * 0.5 + v105 * 0.5;
  }

  else
  {
    v106 = -1.79769313e308;
  }

  if (v89 <= v88)
  {
    v107 = v88;
  }

  else
  {
    v107 = v89;
  }

  v108 = v88;
  if (v106 > v107)
  {
    v107 = v106;
  }

  v163 = v107;
  v58 = 0.0;
  if (!v48)
  {
    goto LABEL_236;
  }

  if (v86)
  {
    if (v171 && v177 == 1)
    {
      [v48 depth];
      v160 = v108;
      if (v109.n128_f64[0] >= 0.0)
      {
        EQKitLayoutContext::metricForKey(v12, 11, v109);
        v112 = -v133;
      }

      else
      {
        [v48 depth];
        v111 = -v110 - v162;
        if (v87 >= v111)
        {
          v112 = v111;
        }

        else
        {
          v112 = v87;
        }
      }

      [v49 height];
      if (v112 < v134)
      {
        v134 = v112;
      }

      v58 = -v134;
      v108 = v160;
    }

    else
    {
      v58 = v162;
    }
  }

  else
  {
    [v49 layoutHeight];
    v114 = v70 - v113;
    if (v162 >= v114)
    {
      v58 = v162;
    }

    else
    {
      v58 = v114;
    }
  }

  if (v192 == 2)
  {
    if (v191)
    {
      v135 = EQKit::Font::Manager::fontCollection([*(a2 + 608) fontManager]);
      (*(*v135 + 48))(v174);
      if (LODWORD(v174[0]))
      {
        v136 = EQKitLength::resolveToAbsoluteWithSize(v174, v187) - v108;
        goto LABEL_229;
      }
    }

    else
    {
      LODWORD(v174[0]) = 0;
      v174[1] = 0;
    }

    v136 = 0.0;
LABEL_229:
    if (v178)
    {
      v137 = EQKit::Font::Manager::fontCollection([*(a2 + 608) fontManager]);
      (*(*v137 + 48))(v173);
      if (LODWORD(v173[0]))
      {
        v138 = EQKitLength::resolveToAbsoluteWithSize(v173, v187);
LABEL_234:
        [v48 width];
        EQKitLayoutManager::layoutBoxHorizontallyWithSpacings(v175, v165 * 0.5 + v163 + v136 - v138, v38 - v140 - (v165 * 0.5 + v163 + v136 - v138), &v193);
        EQKit::ILayout::operator=(v175, &v193);
        goto LABEL_235;
      }
    }

    else
    {
      LODWORD(v173[0]) = 0;
      v173[1] = 0;
    }

    [v48 width];
    v138 = v139 * 0.5;
    goto LABEL_234;
  }

  EQKitLayoutManager::alignBoxHorizontally(v175, v192, 0, &v193, v38, 0.0);
  EQKit::ILayout::operator=(v175, &v193);
LABEL_235:
  EQKit::ILayout::~ILayout(&v193);
LABEL_236:
  if (v50)
  {
    v57 = v164;
    if ((v86 & 1) == 0)
    {
      [v50 layoutHeight];
      v142 = v161 - v141;
      if (v78 < v142)
      {
        v78 = v142;
      }
    }

    if (v192 == 2)
    {
      [v50 width];
      EQKitLayoutManager::layoutBoxHorizontallyWithSpacings(v180, v163 - v106, v38 - v143 - (v163 - v106), &v193);
    }

    else
    {
      EQKitLayoutManager::alignBoxHorizontally(v180, v192, 0, &v193, v38, 0.0);
    }

    EQKit::ILayout::operator=(v180, &v193);
    EQKit::ILayout::~ILayout(&v193);
  }

  else
  {
    v78 = 0.0;
    v57 = v164;
  }

LABEL_245:
  v144 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v145 = v175[0];
  if (v175[0])
  {
    if (v73 != 0.0)
    {
      v146 = [[EQKitVSpace alloc] initWithHeight:v73 depth:0.0];
      [v144 addObject:v146];

      v145 = v175[0];
    }

    [v144 addObject:v145];
    if (v58 != 0.0)
    {
      v147 = [[EQKitVSpace alloc] initWithHeight:v58 depth:0.0];
      [v144 addObject:v147];
    }
  }

  v148 = [v144 count];
  if (v181[0])
  {
    [v144 addObject:?];
  }

  v149 = v180[0];
  if (v180[0])
  {
    if (v78 != 0.0)
    {
      v150 = [[EQKitVSpace alloc] initWithHeight:v78 depth:0.0];
      [v144 addObject:v150];

      v149 = v180[0];
    }

    [v144 addObject:v149];
    if (v57 != 0.0)
    {
      v151 = [[EQKitVSpace alloc] initWithHeight:0.0 depth:v57];
      [v144 addObject:v151];
    }
  }

  a5 = v168;
  v13 = v166;
  v152 = [[EQKitVBox alloc] initWithChildBoxes:v144 pivotIndex:v148];
  EQKit::ILayout::operator=(v168, v181);
  if (v8)
  {
    v153 = 1;
    if ((v182 & 0x1C00u) <= 0x1000 || !((v9 == 0) | isEmbellishedOperatorWithAccent & 1))
    {
      goto LABEL_266;
    }

    goto LABEL_262;
  }

  if ((v9 == 0) | isEmbellishedOperatorWithAccent & 1)
  {
LABEL_262:
    if ((v10 == 0) | v171 & 1)
    {
      v153 = 4;
    }

    else
    {
      v153 = 1;
    }

    goto LABEL_266;
  }

  v153 = 1;
LABEL_266:
  EQKit::ILayout::setVerticalContentClassification(v168, v153);
  EQKit::ILayout::setBox(v168, &v152->super.super);

  if (((v10 != 0) & v190 & v171) == 1)
  {
    EQKit::ILayout::setIsOverAccentTokenWithBaseToken(v168, 1);
  }

  EQKit::ILayout::~ILayout(v175);
  EQKit::ILayout::~ILayout(v180);
  EQKit::ILayout::~ILayout(v181);
LABEL_269:
  if (a3)
  {
    v154 = [a4 operatorCore];
    if (v154)
    {
      v155 = EQKitLayoutManager::leftSpaceForOperator(a2, v154);
      v156 = EQKitLayoutManager::rightSpaceForOperator(a2, v154);
      if (v13 >= v155)
      {
        v157 = v13;
      }

      else
      {
        v157 = v155;
      }

      if (v13 < v156)
      {
        v13 = v156;
      }
    }

    else
    {
      v157 = v13;
    }

    EQKitLayoutManager::addOperatorLeftSpace(a2, v157);
    EQKit::ILayout::ILayout(v172, a5);
    v158 = *(a2 + 408);
    if (*(a2 + 400) == v158)
    {
      v159 = 0;
    }

    else
    {
      v159 = *(v158 - 8);
    }

    EQKitLayoutManager::addRowChild(a2, v172, v159);
    EQKit::ILayout::~ILayout(v172);
    EQKitLayoutManager::addOperatorRightSpace(a2, v13);
    EQKit::ILayout::ILayout(&v193, 0);
    EQKit::ILayout::operator=(a5, &v193);
    EQKit::ILayout::~ILayout(&v193);
  }
}

void sub_258268B38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, EQKit::ILayout *a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  EQKit::ILayout::~ILayout(&a38);
  EQKit::ILayout::~ILayout(&a48);
  EQKit::ILayout::~ILayout(&a55);
  EQKit::ILayout::~ILayout(a19);
  _Unwind_Resume(a1);
}

uint64_t EQKitLayoutManager::layoutTable@<X0>(EQKitLayoutManager *this@<X0>, const EQKit::Layout::Schemata *a2@<X1>, EQKit::ILayout *a3@<X8>)
{
  EQKit::ILayout::ILayout(a3, 0);
  v9[0] = &unk_28696A928;
  v9[1] = this;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  memset(v13, 0, sizeof(v13));
  std::deque<EQKitLayoutTable>::push_back(this + 70, v9);
  EQKitLayoutTable::~EQKitLayoutTable(v9);
  v6 = EQKit::Layout::Schemata::tableSchemata(a2);
  if (v6)
  {
    v7 = *(this + 75);
    if (v7)
    {
      EQKitLayoutTable::layoutTable(*(*(this + 71) + 8 * ((v7 + *(this + 74) - 1) / 0x2AuLL)) + 96 * ((v7 + *(this + 74) - 1) % 0x2AuLL), v6, v9);
      EQKit::ILayout::operator=(a3, v9);
      EQKit::ILayout::~ILayout(v9);
    }
  }

  return std::deque<EQKitLayoutTable>::pop_back(this + 70);
}

void sub_258268DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  EQKit::ILayout::~ILayout(&a9);
  EQKit::ILayout::~ILayout(v9);
  _Unwind_Resume(a1);
}

void EQKitLayoutManager::layoutTableRow(EQKitLayoutManager *this@<X0>, const EQKit::Layout::Schemata *a2@<X1>, EQKit::ILayout *a3@<X8>)
{
  EQKit::ILayout::ILayout(a3, 0);
  v6 = EQKit::Layout::Schemata::tableRowSchemata(a2);
  if (v6)
  {
    v7 = *(this + 75);
    if (v7)
    {
      EQKitLayoutTable::layoutTr(*(*(this + 71) + 8 * ((v7 + *(this + 74) - 1) / 0x2AuLL)) + 96 * ((v7 + *(this + 74) - 1) % 0x2AuLL), v6, v8);
      EQKit::ILayout::operator=(a3, v8);
      EQKit::ILayout::~ILayout(v8);
    }
  }
}

void sub_258268EE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  EQKit::ILayout::~ILayout(va);
  EQKit::ILayout::~ILayout(v2);
  _Unwind_Resume(a1);
}

uint64_t EQKitLayoutManager::layoutStack@<X0>(EQKitLayoutManager *this@<X0>, const EQKit::Layout::Schemata *a2@<X1>, EQKit::ILayout *a3@<X8>)
{
  v5 = EQKit::Layout::Schemata::stackSchemata(a2);
  EQKitLayoutElementaryStack::EQKitLayoutElementaryStack(v8, this, v5, 0x7FFFFFFFFFFFFFFFLL, 0x7FFFFFFFFFFFFFFFLL, 0.0);
  std::deque<EQKitLayoutElementaryStack>::push_back(this + 64, v8);
  EQKitLayoutElementaryStack::~EQKitLayoutElementaryStack(v8);
  v6 = *(this + 69) + *(this + 68) - 1;
  EQKitLayoutElementaryStack::layout((*(*(this + 65) + 8 * (v6 / 0x18)) + 168 * (v6 % 0x18)), a3);
  return std::deque<EQKitLayoutElementaryStack>::pop_back(this + 64);
}

void EQKitLayoutManager::layoutStackGroup(EQKitLayoutManager *this@<X0>, const EQKit::Layout::Schemata *a2@<X1>, EQKit::ILayout *a3@<X8>)
{
  EQKit::ILayout::ILayout(a3, 0);
  v6 = *(this + 69);
  if (v6)
  {
    v7 = v6 + *(this + 68) - 1;
    v8 = *(*(this + 65) + 8 * (v7 / 0x18));
    v9 = EQKit::Layout::Schemata::stackGroupSchemata(a2);
    EQKitLayoutElementaryStack::layoutStackGroup((v8 + 168 * (v7 % 0x18)), v9, v10);
    EQKit::ILayout::operator=(a3, v10);
    EQKit::ILayout::~ILayout(v10);
  }
}

void sub_258269090(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  EQKit::ILayout::~ILayout(va);
  EQKit::ILayout::~ILayout(v2);
  _Unwind_Resume(a1);
}

void EQKitLayoutManager::layoutStackRow(EQKitLayoutManager *this@<X0>, const EQKit::Layout::Schemata *a2@<X1>, EQKit::ILayout *a3@<X8>)
{
  EQKit::ILayout::ILayout(a3, 0);
  v6 = *(this + 69);
  if (v6)
  {
    v7 = v6 + *(this + 68) - 1;
    v8 = *(*(this + 65) + 8 * (v7 / 0x18));
    v9 = EQKit::Layout::Schemata::stackRowSchemata(a2);
    EQKitLayoutElementaryStack::layoutStackRow((v8 + 168 * (v7 % 0x18)), v9, v10);
    EQKit::ILayout::operator=(a3, v10);
    EQKit::ILayout::~ILayout(v10);
  }
}

void sub_258269164(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  EQKit::ILayout::~ILayout(va);
  EQKit::ILayout::~ILayout(v2);
  _Unwind_Resume(a1);
}

void EQKitLayoutManager::layoutStackLine(EQKitLayoutManager *this@<X0>, const EQKit::Layout::Schemata *a2@<X1>, EQKit::ILayout *a3@<X8>)
{
  EQKit::ILayout::ILayout(a3, 0);
  v6 = *(this + 69);
  if (v6)
  {
    v7 = v6 + *(this + 68) - 1;
    v8 = *(*(this + 65) + 8 * (v7 / 0x18));
    EQKit::Layout::Schemata::stackLineSchemata(a2);
    EQKitLayoutElementaryStack::layoutStackLine(v8 + 168 * (v7 % 0x18), v9);
    EQKit::ILayout::operator=(a3, v9);
    EQKit::ILayout::~ILayout(v9);
  }
}

void sub_258269238(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  EQKit::ILayout::~ILayout(va);
  EQKit::ILayout::~ILayout(v2);
  _Unwind_Resume(a1);
}

void EQKitLayoutManager::layoutStackCarries(EQKitLayoutManager *this@<X0>, const EQKit::Layout::Schemata *a2@<X1>, EQKit::ILayout *a3@<X8>)
{
  EQKit::ILayout::ILayout(a3, 0);
  v6 = *(this + 69);
  if (v6)
  {
    v7 = v6 + *(this + 68) - 1;
    v8 = *(*(this + 65) + 8 * (v7 / 0x18));
    v9 = EQKit::Layout::Schemata::stackCarriesSchemata(a2);
    EQKitLayoutElementaryStack::layoutStackCarries((v8 + 168 * (v7 % 0x18)), v9, v10);
    EQKit::ILayout::operator=(a3, v10);
    EQKit::ILayout::~ILayout(v10);
  }
}

void sub_25826930C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  EQKit::ILayout::~ILayout(va);
  EQKit::ILayout::~ILayout(v2);
  _Unwind_Resume(a1);
}

void EQKitLayoutManager::layoutStackCarry(EQKitLayoutManager *this@<X0>, const EQKit::Layout::Schemata *a2@<X1>, EQKit::ILayout *a3@<X8>)
{
  EQKit::ILayout::ILayout(a3, 0);
  v6 = *(this + 69);
  if (v6)
  {
    v7 = v6 + *(this + 68) - 1;
    v8 = *(*(this + 65) + 8 * (v7 / 0x18));
    v9 = EQKit::Layout::Schemata::stackCarrySchemata(a2);
    EQKitLayoutElementaryStack::layoutStackCarry((v8 + 168 * (v7 % 0x18)), v9, v10);
    EQKit::ILayout::operator=(a3, v10);
    EQKit::ILayout::~ILayout(v10);
  }
}

void sub_2582693E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  EQKit::ILayout::~ILayout(va);
  EQKit::ILayout::~ILayout(v2);
  _Unwind_Resume(a1);
}

void EQKitLayoutManager::layoutLongDivision(EQKitLayoutManager *this@<X0>, const EQKit::Layout::Schemata *a2@<X1>, EQKit::ILayout *a3@<X8>)
{
  v44[3] = *MEMORY[0x277D85DE8];
  v5 = EQKit::Layout::Schemata::longDivisionSchemata(a2);
  v6 = *(this + 37);
  if (v6)
  {
    v7 = (*(*(this + 33) + 8 * ((v6 + *(this + 36) - 1) / 0x1AuLL)) + 152 * ((v6 + *(this + 36) - 1) % 0x1AuLL));
  }

  else
  {
    v7 = this + 56;
  }

  v8 = *(this + 51);
  if (*(this + 50) == v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(v8 - 8);
  }

  EQKitLayoutContext::EQKitLayoutContext(v42, this, v7, v9, 0, 0, 0);
  std::deque<EQKitLayoutContext>::push_back(this + 32, v42);
  v10 = EQKit::Font::Manager::fontCollection([*(this + 76) fontManager]);
  v41 = (*(*v10 + 72))(v10, v43);
  if (!v41)
  {
    goto LABEL_18;
  }

  EQKitLayoutManager::layoutBox(this, [v5 schemataDivisor], 0, 0, 0, 0, 0, v40);
  EQKitPath::EQKitPath(&v37, v41, 0x27CCu);
  EQKitPath::findStemForEdge(&v37, 2u, v36);
  v11 = v36[6];
  v35 = 0.0;
  v12 = [v5 schemataStack];
  if (v12)
  {
    [v12 layoutSchemata];
  }

  else
  {
    memset(v34, 0, sizeof(v34));
  }

  EQKitLayoutManager::layoutStack(this, v34, *&v11, &v35, 2, 1, v36);
  EQKit::Layout::Schemata::~Schemata(v34);
  *&v34[0] = 0;
  v13 = EQKit::Font::Manager::fontCollection([*(this + 76) fontManager]);
  v14 = v35;
  [v36[0] width];
  v33 = (*(*v13 + 168))(v13, v43, v34, v14, v15);
  if (v33)
  {
    v16 = [EQKitPathBox alloc];
    v17 = [(EQKitPathBox *)v16 initWithCGPath:v33 height:v43[13] cgColor:*&v11];
    v18 = [EQKitPaddedBox alloc];
    [(EQKitPathBox *)v17 height];
    v20 = v19;
    v21 = (v39[32] == 1 ? v39 : EQKitPath::computePathBounds(&v37));
    Width = CGRectGetWidth(*v21);
    [(EQKitPathBox *)v17 depth];
    v25 = v24;
    [(EQKitPathBox *)v17 height];
    v27 = [(EQKitPaddedBox *)v18 initWithBox:v17 height:v20 width:Width depth:v25 lspace:0.0 voffset:v14 - v26];

    v28 = [EQKitHBox alloc];
    v44[0] = v40[0];
    v44[1] = v27;
    v44[2] = v36[0];
    v22 = -[EQKitCompoundBox initWithChildBoxes:](v28, "initWithChildBoxes:", [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:3]);
  }

  else
  {
    v22 = 0;
  }

  EQKit::AutoCFType<CGPath const*>::~AutoCFType(&v33);
  EQKit::ILayout::~ILayout(v36);
  EQKitPath::~EQKitPath(&v37);
  EQKit::ILayout::~ILayout(v40);
  if (!v22)
  {
LABEL_18:
    v22 = objc_alloc_init(EQKitBox);
  }

  LODWORD(v36[0]) = 0;
  v29 = *(this + 77);
  v30 = *(this + 51);
  if (*(this + 50) == v30)
  {
    v31 = 0;
  }

  else
  {
    v31 = *(v30 - 8);
  }

  v37 = v31;
  v38 = 2;
  EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>(v29, v29 + 152, &v37, v36);
  std::deque<EQKitLayoutContext>::pop_back(this + 32);
  v32 = EQKitLayoutManager::baselineAlignBox(this, v22, v36[0]);
  EQKit::ILayout::ILayout(a3, &v32->super);
  EQKit::AutoCFType<__CTFont const*>::~AutoCFType(&v41);
  EQKitLayoutContext::~EQKitLayoutContext(v42);
}

void sub_2582697F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, const void *a51, char a52)
{
  EQKit::Layout::Schemata::~Schemata(&a11);
  EQKitPath::~EQKitPath(&a24);
  EQKit::ILayout::~ILayout(&a44);
  EQKit::AutoCFType<__CTFont const*>::~AutoCFType(&a51);
  EQKitLayoutContext::~EQKitLayoutContext(&a52);
  _Unwind_Resume(a1);
}

void EQKitLayoutManager::layoutRadical(EQKitLayoutManager *this@<X0>, const EQKit::Layout::Schemata *a2@<X1>, EQKit::ILayout *a3@<X8>)
{
  v135[3] = *MEMORY[0x277D85DE8];
  v6 = *(this + 37);
  if (v6)
  {
    v7 = (*(*(this + 33) + 8 * ((v6 + *(this + 36) - 1) / 0x1AuLL)) + 152 * ((v6 + *(this + 36) - 1) % 0x1AuLL));
  }

  else
  {
    v7 = this + 56;
  }

  v8 = EQKit::Layout::Schemata::radicalSchemata(a2);
  EQKit::ILayout::ILayout(v133, 0);
  v122 = v8;
  if ([v8 schemataIndex])
  {
    EQKitLayoutManager::layoutBox(this, [v8 schemataIndex], 2, 0, 0, 0, 0, v131);
    EQKit::ILayout::operator=(v133, v131);
    EQKit::ILayout::~ILayout(v131);
  }

  v9 = v133[0];
  EQKitLayoutManager::layoutBox(this, [v8 schemataRadicand], 0, v7[16], 0, 0, 0, v131);
  v11 = v131[0];
  if (v7[120])
  {
    v12 = v7 + 88;
    v13 = *(v7 + 11);
    v14 = *(v7 + 16);
LABEL_9:
    v10.n128_u64[0] = *(v7 + 16);
    goto LABEL_11;
  }

  v14 = EQKitLayoutContext::pComputeRuleThickness(v7);
  v12 = v7 + 88;
  v13 = *(v7 + 11);
  if (v7[120])
  {
    goto LABEL_9;
  }

  v10.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v7);
LABEL_11:
  v15 = (*(*v13 + 56))(v13, 17, v7 + 8, v10);
  v17 = v14;
  v18 = v14;
  if ((*(**v12 + 16))())
  {
    v19 = *(v7 + 11);
    if (v7[120])
    {
      v16.n128_u64[0] = *(v7 + 16);
    }

    else
    {
      v16.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v7);
    }

    v18 = (*(*v19 + 56))(v19, 53, v7 + 8, v16);
    v17 = 0.0;
  }

  v20 = *(v7 + 11);
  if (v7[120])
  {
    v16.n128_u64[0] = *(v7 + 16);
  }

  else
  {
    v16.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v7);
  }

  v21 = (*(*v20 + 56))(v20, 18, v7 + 8, v16);
  [v11 erasableBounds];
  v23 = v22;
  [v11 width];
  v25 = v24;
  v130 = 0.0;
  v128 = 0u;
  v129 = 0u;
  v124 = *MEMORY[0x277CBF3A8];
  v125 = 0;
  v126 = 0;
  v26 = EQKit::Font::Manager::fontCollection([*(this + 76) fontManager]);
  v123 = (*(*v26 + 160))(v26, v7 + 8, &v128, &v124, v21 + v18 + v23 + v17 * 2.0, v25, v18);
  if (v123)
  {
    v27 = (*(**v12 + 16))();
    v28 = *(&v124 + 1);
    v29 = v127;
    v30 = [EQKitPathBox alloc];
    v31 = v28 - v29;
    if (!v27)
    {
      v31 = v28;
    }

    v32 = [(EQKitPathBox *)v30 initWithCGPath:v123 height:*(v7 + 14) cgColor:v31];
    v33 = EQKitLayoutManager::wrapBoxWithAttribution(v32, v32, a2);
    v34 = [EQKitPaddedBox alloc];
    [(EQKitBox *)v33 height];
    v36 = v35;
    [(EQKitBox *)v33 width];
    v38 = v37;
    v39 = v130;
    [(EQKitBox *)v33 depth];
    v41 = [(EQKitPaddedBox *)v34 initWithBox:v33 height:v36 width:v38 - v25 - v39 depth:v40 lspace:0.0 voffset:0.0];
  }

  else
  {
    v41 = 0;
  }

  v43 = v18 + v21;
  if ((*(**v12 + 16))())
  {
    [(EQKitBox *)v41 layoutHeight];
    v45 = v44;
    [v11 layoutHeight];
    if (v45 > v43 + v46.n128_f64[0])
    {
      [(EQKitBox *)v41 layoutDepth];
      v48 = v47;
      [v11 layoutDepth];
      if (v48 > v46.n128_f64[0])
      {
        [(EQKitBox *)v41 layoutHeight];
        v50 = v49;
        [v11 layoutHeight];
        v43 = v50 - v46.n128_f64[0];
      }
    }

    v51 = *(v7 + 11);
    if (v7[120])
    {
      v46.n128_u64[0] = *(v7 + 16);
    }

    else
    {
      v46.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v7);
    }

    v64 = v43 + (*(*v51 + 56))(v51, 52, v7 + 8, v46);
  }

  else
  {
    v52 = *(v7 + 11);
    if (v7[120])
    {
      v42.n128_u64[0] = *(v7 + 16);
    }

    else
    {
      v42.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v7);
    }

    v53 = (*(*v52 + 56))(v52, 19, v7 + 8, v42);
    [(EQKitBox *)v41 layoutHeight];
    v55 = v54;
    [v11 layoutVSize];
    v57 = v55 - v18 - v21;
    if (v57 >= v53)
    {
      v57 = v53;
    }

    if (v56 >= v57)
    {
      v58 = v56;
    }

    else
    {
      v58 = v57;
    }

    [(EQKitBox *)v41 layoutHeight];
    v60 = v59;
    [v11 layoutVSize];
    v62 = v60 - v18 - (v21 + v58);
    if (v62 <= 0.0)
    {
      v63 = v18 + v21;
    }

    else
    {
      v63 = v43 + v62 * 0.5;
    }

    v64 = v63 + v58 - v61;
  }

  v65 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v64 != 0.0)
  {
    v66 = [[EQKitVSpace alloc] initWithHeight:v64 depth:0.0];
    [v65 addObject:v66];
  }

  [v11 width];
  v68 = v15 + (v25 - v67) * 0.5;
  if (v68 == 0.0)
  {
    [v65 addObject:v11];
  }

  else
  {
    v69 = [[EQKitHSpace alloc] initWithWidth:v68];
    v70 = [EQKitHBox alloc];
    v135[0] = v69;
    v135[1] = v11;
    v135[2] = v69;
    v71 = -[EQKitCompoundBox initWithChildBoxes:](v70, "initWithChildBoxes:", [MEMORY[0x277CBEA60] arrayWithObjects:v135 count:3]);
    [v65 addObject:v71];
  }

  v72 = -[EQKitVBox initWithChildBoxes:pivotIndex:]([EQKitVBox alloc], "initWithChildBoxes:pivotIndex:", v65, [v65 count] - 1);
  v73 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [(EQKitPaddedBox *)v41 width];
  v75 = v74;
  if (v9)
  {
    v76 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if ((*(**v12 + 16))())
    {
      v78 = *(v7 + 11);
      if (v7[120])
      {
        v77.n128_u64[0] = *(v7 + 16);
      }

      else
      {
        v77.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v7);
      }

      v88 = (*(*v78 + 56))(v78, 54, v7 + 8, v77);
      [v9 erasableBounds];
      Width = CGRectGetWidth(v136);
      v91 = *(v7 + 11);
      if (v7[120])
      {
        v89.n128_u64[0] = *(v7 + 16);
      }

      else
      {
        v89.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v7);
      }

      v92 = (*(*v91 + 56))(v91, 55, v7 + 8, v89);
      if (v92 <= -Width)
      {
        v93 = -Width;
      }

      else
      {
        v93 = v92;
      }

      [v9 erasableBounds];
      v94 = fmax(v88, 0.0);
      if (CGRectGetWidth(v137) < -v93 || ([v9 erasableBounds], v94 = v94 - v93 - CGRectGetWidth(v138), v94 >= 0.0))
      {
        if (v94 != 0.0)
        {
          [v76 addObject:{-[EQKitHSpace initWithWidth:]([EQKitHSpace alloc], "initWithWidth:", v94)}];
        }
      }

      else
      {
        v75 = v75 - v94;
      }
    }

    else
    {
      v79 = **(this + 6);
      v80 = *&v129;
      [v9 width];
      v82 = v80 - v81;
      if (v79 != 3)
      {
        v83 = *(&v128 + 1);
        [v9 width];
        v85 = v83 + v84 * -0.5;
        if (v82 >= v85)
        {
          v82 = v85;
        }
      }

      [v9 width];
      v87 = v82 + v86;
      if (v75 >= v87)
      {
        v87 = v75;
      }

      if (v82 >= 0.0)
      {
        v75 = v87;
      }

      else
      {
        v75 = v87 - v82;
      }

      if (v82 > 0.0)
      {
        [v76 addObject:{-[EQKitHSpace initWithWidth:]([EQKitHSpace alloc], "initWithWidth:", v82)}];
      }
    }

    [v76 addObject:v9];
    [v73 addObject:{-[EQKitCompoundBox initWithChildBoxes:]([EQKitHBox alloc], "initWithChildBoxes:", v76)}];
    if ((*(**v12 + 16))())
    {
      v95 = (*(**v12 + 64))(*v12, 5);
      [v73 addObject:{-[EQKitVSpace initWithHeight:depth:]([EQKitVSpace alloc], "initWithHeight:depth:", (v95 / 100.0 + -1.0) * *(&v124 + 1), 0.0)}];
    }

    else
    {
      v96 = *(this + 37);
      if (v96)
      {
        v97 = (*(*(this + 33) + 8 * ((v96 + *(this + 36) - 1) / 0x1AuLL)) + 152 * ((v96 + *(this + 36) - 1) % 0x1AuLL));
      }

      else
      {
        v97 = this + 56;
      }

      v98 = *&v128;
      v99 = (*(**v12 + 56))(*v12, 20, v97 + 8, v14);
      v100 = *(this + 37);
      if (v100)
      {
        v101 = (*(*(this + 33) + 8 * ((v100 + *(this + 36) - 1) / 0x1AuLL)) + 152 * ((v100 + *(this + 36) - 1) % 0x1AuLL));
      }

      else
      {
        v101 = this + 56;
      }

      v102 = (*(**v12 + 56))(*v12, 21, v101 + 8, v14);
      [v9 layoutDepth];
      v104 = v102 + v103;
      if (v99 >= v104)
      {
        v105 = v99;
      }

      else
      {
        v105 = v104;
      }

      v106 = [EQKitVSpace alloc];
      [v9 layoutDepth];
      v108 = v107;
      [(EQKitBox *)v41 layoutHeight];
      [v73 addObject:{-[EQKitVSpace initWithHeight:depth:](v106, "initWithHeight:depth:", v98 + v105 - v108 - v109, 0.0)}];
    }
  }

  [(EQKitPaddedBox *)v41 width];
  if (v110 >= v75)
  {
    if (v41)
    {
      [v73 addObject:v41];
    }
  }

  else
  {
    v111 = MEMORY[0x277CBEA60];
    v112 = [EQKitHSpace alloc];
    [(EQKitPaddedBox *)v41 width];
    [v73 addObject:{-[EQKitCompoundBox initWithChildBoxes:]([EQKitHBox alloc], "initWithChildBoxes:", objc_msgSend(v111, "arrayWithObjects:", -[EQKitHSpace initWithWidth:](v112, "initWithWidth:", v75 - v113), v41, 0))}];
  }

  [(EQKitCompoundBox *)v72 height];
  v115 = v114;
  [(EQKitPaddedBox *)v41 height];
  v117 = -[EQKitOffsetVBox initWithChildBoxes:pivotIndex:offset:]([EQKitOffsetVBox alloc], "initWithChildBoxes:pivotIndex:offset:", v73, [v73 count] - 1, v115 - v14 - v116);
  v118 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v118 addObject:v117];
  if (v15 != 0.0)
  {
    [v118 addObject:{-[EQKitHSpace initWithWidth:]([EQKitHSpace alloc], "initWithWidth:", -v15)}];
  }

  [v118 addObject:v72];
  if (v130 != 0.0)
  {
    v119 = [EQKitHSpace alloc];
    [v118 addObject:{-[EQKitHSpace initWithWidth:](v119, "initWithWidth:", v130)}];
  }

  EQKit::ILayout::ILayout(a3, v131);
  v120 = [(EQKitCompoundBox *)[EQKitHBox alloc] initWithChildBoxes:v118];
  EQKit::ILayout::setBox(a3, &v120->super.super);

  EQKit::ILayout::removeOffsetOfKind(a3, 1);
  if (![v122 schemataIndex] || (v134 & 0x1000) != 0)
  {
    if ((v132 & 0x1C00u) <= 0x1000)
    {
      v121 = 0;
    }

    else
    {
      v121 = 3;
    }
  }

  else
  {
    v121 = 0;
  }

  EQKit::ILayout::setVerticalContentClassification(a3, v121);
  EQKit::AutoCFType<CGPath const*>::~AutoCFType(&v123);
  EQKit::ILayout::~ILayout(v131);
  EQKit::ILayout::~ILayout(v133);
}

void sub_25826A5A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  EQKit::AutoCFType<CGPath const*>::~AutoCFType(&a12);
  EQKit::ILayout::~ILayout(&a24);
  EQKit::ILayout::~ILayout(&a31);
  _Unwind_Resume(a1);
}

EQKit::ILayout *EQKitLayoutManager::layoutNone@<X0>(EQKit::ILayout *a1@<X8>)
{
  v4 = [[EQKitHVSpace alloc] initWithWidth:0.0 height:0.0 depth:0.0];

  return EQKit::ILayout::ILayout(a1, &v4->super);
}

void EQKitLayoutManager::layoutPadded(EQKitLayoutManager *this@<X0>, const EQKit::Layout::Schemata *a2@<X1>, EQKit::ILayout *a3@<X8>)
{
  v5 = [EQKit::Layout::Schemata::paddedSchemata(a2) schemataNode];
  EQKitLayoutManager::layoutBox(this, v5, 0, v55);
  [v55[0] layoutHeight];
  v7 = v6;
  [v55[0] layoutDepth];
  v9 = v8;
  [v55[0] width];
  v11 = v10;
  v12 = *(this + 37);
  if (v12)
  {
    v13 = (*(*(this + 33) + 8 * ((v12 + *(this + 36) - 1) / 0x1AuLL)) + 152 * ((v12 + *(this + 36) - 1) % 0x1AuLL));
  }

  else
  {
    v13 = this + 56;
  }

  LODWORD(v52) = 1;
  v53 = 0;
  v54 = 0;
  v14 = *(this + 77);
  v15 = *(this + 51);
  if (*(this + 50) == v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = *(v15 - 8);
  }

  v49 = v16;
  LODWORD(v50) = 29;
  EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,EQKitPseudoUnitLength>>(v14, v14 + 464, &v49, &v52);
  v17 = EQKitPseudoUnitLength::resolveToAbsoluteLength(&v52, v13, v7, v7, v9, v11);
  if (v17 >= 0.0)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0.0;
  }

  LODWORD(v49) = 1;
  v50 = 0;
  v51 = 0;
  v19 = *(this + 77);
  v20 = *(this + 51);
  if (*(this + 50) == v20)
  {
    v21 = 0;
  }

  else
  {
    v21 = *(v20 - 8);
  }

  v46 = v21;
  LODWORD(v47) = 30;
  EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,EQKitPseudoUnitLength>>(v19, v19 + 464, &v46, &v49);
  v22 = EQKitPseudoUnitLength::resolveToAbsoluteLength(&v49, v13, v9, v7, v9, v11);
  if (v22 >= 0.0)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0.0;
  }

  LODWORD(v46) = 1;
  v47 = 0;
  v48 = 0;
  v24 = *(this + 77);
  v25 = *(this + 51);
  if (*(this + 50) == v25)
  {
    v26 = 0;
  }

  else
  {
    v26 = *(v25 - 8);
  }

  v43 = v26;
  LODWORD(v44) = 31;
  EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,EQKitPseudoUnitLength>>(v24, v24 + 464, &v43, &v46);
  v27 = EQKitPseudoUnitLength::resolveToAbsoluteLength(&v46, v13, v11, v7, v9, v11);
  if (v27 >= 0.0)
  {
    v28 = v27;
  }

  else
  {
    v28 = 0.0;
  }

  LODWORD(v43) = 1;
  v44 = 0;
  v45 = 0;
  v29 = *(this + 77);
  v30 = *(this + 51);
  if (*(this + 50) == v30)
  {
    v31 = 0;
  }

  else
  {
    v31 = *(v30 - 8);
  }

  v40 = v31;
  LODWORD(v41) = 32;
  EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,EQKitPseudoUnitLength>>(v29, v29 + 464, &v40, &v43);
  v32 = EQKitPseudoUnitLength::resolveToAbsoluteLength(&v43, v13, 0.0, v7, v9, v11);
  LODWORD(v40) = 1;
  v41 = 0;
  v42 = 0;
  v33 = *(this + 77);
  v34 = *(this + 51);
  if (*(this + 50) == v34)
  {
    v35 = 0;
  }

  else
  {
    v35 = *(v34 - 8);
  }

  v57 = v35;
  v58 = 33;
  EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,EQKitPseudoUnitLength>>(v33, v33 + 464, &v57, &v40);
  v36 = EQKitPseudoUnitLength::resolveToAbsoluteLength(&v40, v13, 0.0, v7, v9, v11);
  v37 = [EQKitPaddedBox alloc];
  v38 = [(EQKitPaddedBox *)v37 initWithBox:v55[0] height:v18 width:v28 depth:v23 lspace:v32 voffset:v36, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54];
  EQKit::ILayout::ILayout(a3, v55);
  EQKit::ILayout::setBox(a3, v38);
  if (v18 == v7 && v23 == v9 && v36 == 0.0)
  {
    v39 = (v56 >> 10) & 7;
  }

  else
  {
    LOBYTE(v39) = 0;
  }

  EQKit::ILayout::setVerticalContentClassification(a3, v39);

  EQKit::ILayout::~ILayout(v55);
}

void sub_25826AA68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  EQKit::ILayout::~ILayout(v24);
  EQKit::ILayout::~ILayout(&a24);
  _Unwind_Resume(a1);
}

void EQKitLayoutManager::layoutSpace(EQKitLayoutManager *this@<X0>, EQKit::ILayout *a2@<X8>)
{
  v5 = *(this + 51);
  if (*(this + 50) == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(v5 - 8);
  }

  v7 = EQKitLayoutManager::lengthForAttribute(this, 26, v6, 0.0);
  v8 = *(this + 51);
  if (*(this + 50) == v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(v8 - 8);
  }

  v10 = EQKitLayoutManager::lengthForAttribute(this, 27, v9, 0.0);
  v11 = *(this + 51);
  if (*(this + 50) == v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v11 - 8);
  }

  v13 = [[EQKitHVSpace alloc] initWithWidth:EQKitLayoutManager::lengthForAttribute(this height:28 depth:v12, 0.0), v7, v10];
  v14 = EQKit::ILayout::ILayout(a2, &v13->super);
  EQKit::ILayout::setIsUserSpace(v14, 1);
  if (v10 == 0.0 && v7 == 0.0)
  {
    v16 = 6;
  }

  else
  {
    v16 = 0;
  }

  EQKit::ILayout::setVerticalContentClassification(a2, v16);
}

void EQKitLayoutManager::layoutFenced(EQKitLayoutManager *this@<X0>, const EQKit::Layout::Schemata *a2@<X1>, uint64_t a3@<X8>)
{
  v56 = a3;
  v72 = *MEMORY[0x277D85DE8];
  obj = [EQKit::Layout::Schemata::fencedSchemata(a2) schemataChildren];
  v3 = [obj count];
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  std::string::basic_string[abi:ne200100]<0>(&v69, "(");
  std::string::basic_string[abi:ne200100]<0>(&v68, ")");
  memset(&v67, 0, sizeof(v67));
  std::string::basic_string[abi:ne200100]<0>(__p, ",");
  end = v67.__end_;
  if (v67.__end_ >= v67.__end_cap_.__value_)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v67.__end_ - v67.__begin_) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    if (0x5555555555555556 * ((v67.__end_cap_.__value_ - v67.__begin_) >> 3) > v8)
    {
      v8 = 0x5555555555555556 * ((v67.__end_cap_.__value_ - v67.__begin_) >> 3);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((v67.__end_cap_.__value_ - v67.__begin_) >> 3) >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v8;
    }

    v70.__end_cap_.__value_ = &v67;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(&v67, v9);
    }

    v10 = 8 * ((v67.__end_ - v67.__begin_) >> 3);
    v11 = *__p;
    *(v10 + 16) = v66;
    *v10 = v11;
    __p[1] = 0;
    v66 = 0;
    __p[0] = 0;
    v12 = (24 * v7 - (v67.__end_ - v67.__begin_));
    memcpy(v12, v67.__begin_, v67.__end_ - v67.__begin_);
    begin = v67.__begin_;
    value = v67.__end_cap_.__value_;
    v67.__begin_ = v12;
    v67.__end_ = (24 * v7 + 24);
    v67.__end_cap_.__value_ = 0;
    v70.__end_ = begin;
    v70.__end_cap_.__value_ = value;
    v70.__first_ = begin;
    v70.__begin_ = begin;
    std::__split_buffer<std::string>::~__split_buffer(&v70);
    v67.__end_ = (24 * v7 + 24);
    if (SHIBYTE(v66) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v6 = *__p;
    v67.__end_->__r_.__value_.__r.__words[2] = v66;
    *&end->__r_.__value_.__l.__data_ = v6;
    v67.__end_ = end + 1;
  }

  v15 = *(this + 77);
  v16 = *(this + 51);
  if (*(this + 50) == v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = *(v16 - 8);
  }

  v70.__first_ = v17;
  LODWORD(v70.__begin_) = 18;
  EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::string,std::less<EQKitTypes::Attributes::Enum>,std::char_traits<char><std::pair<EQKitTypes::Attributes::Enum const>>>>(v15, v15 + 80, &v70, &v69);
  v18 = *(this + 77);
  v19 = *(this + 51);
  if (*(this + 50) == v19)
  {
    v20 = 0;
  }

  else
  {
    v20 = *(v19 - 8);
  }

  v70.__first_ = v20;
  LODWORD(v70.__begin_) = 19;
  EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::string,std::less<EQKitTypes::Attributes::Enum>,std::char_traits<char><std::pair<EQKitTypes::Attributes::Enum const>>>>(v18, v18 + 80, &v70, &v68);
  v21 = *(this + 77);
  v22 = *(this + 51);
  if (*(this + 50) == v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = *(v22 - 8);
  }

  v70.__first_ = v23;
  LODWORD(v70.__begin_) = 20;
  EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::vector<std::string,std::char_traits<char><std::allocator<char>>>,std::less<EQKitTypes::Attributes::Enum>,std::char_traits<char><std::pair<EQKitTypes::Attributes::Enum const,std::char_traits<char><std::allocator<char>>>>>>(v21, v21 + 104, &v70, &v67);
  v25 = v67.__begin_;
  v24 = v67.__end_;
  size = HIBYTE(v69.__r_.__value_.__r.__words[2]);
  if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v69.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v27 = objc_alloc(MEMORY[0x277CCACA8]);
    if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v28 = &v69;
    }

    else
    {
      v28 = v69.__r_.__value_.__r.__words[0];
    }

    v29 = [v27 initWithUTF8String:{v28, v56}];
    v30 = [[EQKitMathMLMOperator alloc] initWithString:v29 environment:*(this + 76)];
    v31 = v30;
    v32 = *(this + 51);
    if (*(this + 50) == v32)
    {
      v33 = 0;
    }

    else
    {
      v33 = *(v32 - 8);
    }

    [(EQKitMathMLNode *)v30 setParent:v33];
    [v4 addObject:v31];
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v34 = [obj countByEnumeratingWithState:&v61 objects:v71 count:{16, v56}];
  if (v34)
  {
    v35 = 0;
    v58 = v24 - v25;
    v36 = 0xAAAAAAAAAAAAAAABLL * ((v24 - v25) >> 3);
    v37 = *v62;
    do
    {
      v38 = 0;
      v39 = v35;
      do
      {
        v40 = v35;
        if (*v62 != v37)
        {
          objc_enumerationMutation(obj);
        }

        [v4 addObject:*(*(&v61 + 1) + 8 * v38)];
        ++v35;
        if (v40 + 1 < v3 && v67.__end_ != v67.__begin_)
        {
          if (v40 >= v36)
          {
            v41 = (v67.__begin_ + v58 - 24);
          }

          else
          {
            v41 = &v67.__begin_[v39];
          }

          if ((SHIBYTE(v41->__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
          {
            if (!v41->__r_.__value_.__l.__size_)
            {
              goto LABEL_52;
            }
          }

          else if (!*(&v41->__r_.__value_.__s + 23))
          {
            goto LABEL_52;
          }

          v42 = objc_alloc(MEMORY[0x277CCACA8]);
          if (SHIBYTE(v41->__r_.__value_.__r.__words[2]) < 0)
          {
            v41 = v41->__r_.__value_.__r.__words[0];
          }

          v43 = [v42 initWithUTF8String:v41];
          v44 = [[EQKitMathMLMOperator alloc] initWithString:v43 environment:*(this + 76)];
          v45 = v44;
          v46 = *(this + 51);
          if (*(this + 50) == v46)
          {
            v47 = 0;
          }

          else
          {
            v47 = *(v46 - 8);
          }

          [(EQKitMathMLNode *)v44 setParent:v47];
          [v4 addObject:v45];
        }

LABEL_52:
        ++v38;
        ++v39;
      }

      while (v34 != v38);
      v34 = [obj countByEnumeratingWithState:&v61 objects:v71 count:16];
    }

    while (v34);
  }

  v48 = HIBYTE(v68.__r_.__value_.__r.__words[2]);
  if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v48 = v68.__r_.__value_.__l.__size_;
  }

  if (v48)
  {
    v49 = objc_alloc(MEMORY[0x277CCACA8]);
    if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v50 = &v68;
    }

    else
    {
      v50 = v68.__r_.__value_.__r.__words[0];
    }

    v51 = [v49 initWithUTF8String:v50];
    v52 = [[EQKitMathMLMOperator alloc] initWithString:v51 environment:*(this + 76)];
    v53 = v52;
    v54 = *(this + 51);
    if (*(this + 50) == v54)
    {
      v55 = 0;
    }

    else
    {
      v55 = *(v54 - 8);
    }

    [(EQKitMathMLNode *)v52 setParent:v55];
    [v4 addObject:v53];
  }

  EQKit::Layout::Schemata::row(v4, &v70);

  EQKitLayoutManager::layoutRow(this, &v70, v57);
  EQKit::Layout::Schemata::~Schemata(&v70);
  v70.__first_ = &v67;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v70);
  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }
}

void sub_25826B180(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, char a43)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  __p = &a28;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (a36 < 0)
  {
    operator delete(a31);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  _Unwind_Resume(a1);
}

void EQKitLayoutManager::layoutEnclose(EQKitLayoutManager *this@<X0>, const EQKit::Layout::Schemata *a2@<X1>, EQKit::ILayout *a3@<X8>)
{
  v5 = [EQKit::Layout::Schemata::encloseSchemata(a2) schemataRow];
  EQKitLayoutManager::layoutBox(this, v5, 0, v27);
  __p = 0;
  v25 = 0;
  v26 = 0;
  v6 = *(this + 77);
  v7 = *(this + 51);
  if (*(this + 50) == v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(v7 - 8);
  }

  v28 = v8;
  v29 = 47;
  EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::vector<objc_object  {objcproto15EQKitLayoutNode}*::Notation::Enum>,std::less<EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Notation::Enum<std::pair<EQKitTypes::Attributes::Enum const>>>>(v6, v6 + 224, &v28, &__p);
  Mutable = CGPathCreateMutable();
  v10 = __p;
  v11 = v25;
  while (v10 != v11)
  {
    PathForNotation = EQKitLayoutManager::createPathForNotation(this, v27[0], *v10);
    CGPathAddPath(Mutable, 0, PathForNotation);
    CGPathRelease(PathForNotation);
    ++v10;
  }

  v13 = [EQKitPathBox alloc];
  [v27[0] height];
  v15 = v14.n128_f64[0];
  v16 = *(this + 37);
  if (v16)
  {
    v17 = (*(*(this + 33) + 8 * ((v16 + *(this + 36) - 1) / 0x1AuLL)) + 152 * ((v16 + *(this + 36) - 1) % 0x1AuLL));
    v18 = (v17 + 112);
  }

  else
  {
    v18 = (this + 168);
    v17 = this + 56;
  }

  v19 = *v18;
  v20 = *(v17 + 11);
  if (v17[120])
  {
    v14.n128_u64[0] = *(v17 + 16);
  }

  else
  {
    v14.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v17);
  }

  v21 = [(EQKitPathBox *)v13 initWithCGPath:Mutable height:v19 cgColor:2 drawingMode:v15 lineWidth:(*(*v20 + 56))(v20, 23, v17 + 8, v14)];
  v22 = [EQKitOverlayBox alloc];
  v23 = [(EQKitOverlayBox *)v22 initWithBox:v27[0] overlayBox:v21];
  EQKit::ILayout::ILayout(a3, v27);
  EQKit::ILayout::setBox(a3, v23);

  CGPathRelease(Mutable);
  if (__p)
  {
    v25 = __p;
    operator delete(__p);
  }

  EQKit::ILayout::~ILayout(v27);
}

void sub_25826B448(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  EQKit::ILayout::~ILayout(&a12);
  _Unwind_Resume(a1);
}

void EQKitLayoutManager::layoutAlignGroup(EQKitLayoutManager *this, const EQKit::Layout::Schemata *a2)
{
  if (*(this + 49))
  {
    v7 = 0;
    v3 = *(this + 77);
    v4 = *(this + 51);
    if (*(this + 50) == v4)
    {
      v5 = 0;
    }

    else
    {
      v5 = *(v4 - 8);
    }

    v8 = v5;
    v9 = 37;
    EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>(v3, v3 + 176, &v8, &v7);
    v6 = *(this + 49) + *(this + 48) - 1;
    EQKitLayoutRow::beginAlignmentGroup(*(*(this + 45) + 8 * (v6 / 0x19)) + 160 * (v6 % 0x19), v7);
  }
}

void EQKitLayoutManager::layoutAlignMark(EQKit::ILayout *a1@<X8>)
{
  v4 = objc_alloc_init(EQKitBox);
  EQKit::ILayout::ILayout(a1, v4);
  EQKit::ILayoutOffset::ILayoutOffset(v5, v4, 0.0);
  EQKit::ILayout::setOffsetOfKind(a1, 3, v5);
  EQKit::ILayoutOffset::~ILayoutOffset(v5);
}

uint64_t EQKitLayoutManager::layoutStretchOperator@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, EQKit::ILayout *a3@<X8>)
{
  EQKit::ILayout::ILayout(a3, 0);
  v6 = [*a2 operatorUnicharOrNul];
  v42 = v6;
  if (*(a2 + 8) == 2)
  {
    v7 = *(a2 + 24) + *(a2 + 16);
  }

  else
  {
    v7 = *(a2 + 32);
  }

  v8 = EQKit::Font::Manager::fontCollection([*(a1 + 608) fontManager]);
  v9 = *(a1 + 296);
  if (v9)
  {
    v10 = *(*(a1 + 264) + 8 * ((v9 + *(a1 + 288) - 1) / 0x1AuLL)) + 152 * ((v9 + *(a1 + 288) - 1) % 0x1AuLL);
  }

  else
  {
    v10 = a1 + 56;
  }

  v11 = (*(*v8 + 88))(v8, &v42, *(a2 + 8), v10 + 8, v7);
  if (v11)
  {
    v12 = EQKit::Font::Manager::fontCollection([*(a1 + 608) fontManager]);
    v13 = (*(*v12 + 152))(v12, v42, v11);
    if (!v13)
    {
LABEL_22:
      CFRelease(v11);
      goto LABEL_23;
    }

    v14 = [EQKitStringBox alloc];
    v15 = *(a1 + 296);
    if (v15)
    {
      v16 = *(*(a1 + 264) + 8 * ((v15 + *(a1 + 288) - 1) / 0x1AuLL)) + 152 * ((v15 + *(a1 + 288) - 1) % 0x1AuLL);
    }

    else
    {
      v16 = a1 + 56;
    }

    v17 = [(EQKitStringBox *)v14 initWithAttributedString:v13 cgColor:*(v16 + 112)];
    p_super = &v17->super;
    v19 = *(a2 + 8);
    if (v17)
    {
      v20 = v19 == 2;
    }

    else
    {
      v20 = 0;
    }

    if (v20)
    {
      [(EQKitStringBox *)v17 height];
      v22 = v21;
      [(EQKitBox *)p_super depth];
      v24 = (v7 - (v22 + v23)) * 0.5 + v23 - *(a2 + 24);
      if (v24 == 0.0)
      {
LABEL_20:
        EQKit::ILayout::ILayout(v41, p_super);
        EQKit::ILayout::operator=(a3, v41);
        EQKit::ILayout::~ILayout(v41);
        goto LABEL_21;
      }

      v25 = [[EQKitVShift alloc] initWithBox:p_super offset:v24];
      EQKit::ILayout::ILayout(v41, &v25->super);
      EQKit::ILayout::operator=(a3, v41);
      EQKit::ILayout::~ILayout(v41);
    }

    else if (v19 == 1)
    {
      goto LABEL_20;
    }

LABEL_21:

    goto LABEL_22;
  }

LABEL_23:
  if (!*a3)
  {
    v40 = *MEMORY[0x277CBF3A8];
    v26 = EQKit::Font::Manager::fontCollection([*(a1 + 608) fontManager]);
    v27.n128_f64[0] = *(a2 + 24) + *(a2 + 16);
    if (*(a2 + 8) != 2)
    {
      v27.n128_u64[0] = *(a2 + 32);
    }

    v28 = (*(*v26 + 96))(v26, v6, v27);
    if (v28)
    {
      if (*(a2 + 8) == 2)
      {
        v29 = *(a2 + 16);
        v30 = *(a2 + 24);
        v31 = [EQKitPathBox alloc];
        v32 = *(a1 + 296);
        if (v32)
        {
          v33 = *(*(a1 + 264) + 8 * ((v32 + *(a1 + 288) - 1) / 0x1AuLL)) + 152 * ((v32 + *(a1 + 288) - 1) % 0x1AuLL);
        }

        else
        {
          v33 = a1 + 56;
        }

        v37 = [(EQKitPathBox *)v31 initWithCGPath:v28 height:*(v33 + 112) paddingLeft:v29 + (*(&v40 + 1) - (v29 + v30)) * 0.5 paddingRight:0.0 cgColor:0.0];
      }

      else
      {
        v34 = [EQKitPathBox alloc];
        v35 = *(a1 + 296);
        if (v35)
        {
          v36 = *(*(a1 + 264) + 8 * ((v35 + *(a1 + 288) - 1) / 0x1AuLL)) + 152 * ((v35 + *(a1 + 288) - 1) % 0x1AuLL);
        }

        else
        {
          v36 = a1 + 56;
        }

        v37 = [(EQKitPathBox *)v34 initWithCGPath:v28 height:*(v36 + 112) cgColor:*(&v40 + 1)];
      }

      v38 = v37;
      EQKit::ILayout::ILayout(v41, v37);
      EQKit::ILayout::operator=(a3, v41);
      EQKit::ILayout::~ILayout(v41);

      CGPathRelease(v28);
    }
  }

  return EQKit::ILayout::setVerticalContentClassification(a3, 5);
}

void sub_25826BA80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  EQKit::ILayout::~ILayout(va);
  EQKit::ILayout::~ILayout(v7);
  _Unwind_Resume(a1);
}

uint64_t EQKitLayoutManager::isOperatorSymmetric(uint64_t a1, void *a2)
{
  v9 = 0;
  v4 = *(a1 + 616);
  v10 = a2;
  v11 = 14;
  EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>(v4, v4 + 8, &v10, &v9);
  if (v9 == 1)
  {
    return 0;
  }

  if (v9 == 2)
  {
    return 1;
  }

  v6 = [*(a1 + 608) operatorDictionary];
  v7 = [a2 operatorId];
  v8 = EQKitLayoutManager::operatorForm(a1, a2);
  result = EQKit::Config::Operator::Dictionary::lookup(v6, v7, v8);
  if (result)
  {
    return (*(result + 48) >> 1) & 1;
  }

  return result;
}

double EQKitLayoutManager::lengthForCharacterProperty(uint64_t a1, double a2)
{
  v4 = EQKit::Font::Manager::fontCollection([*(a1 + 608) fontManager]);
  (*(*v4 + 48))(v8);
  if (LODWORD(v8[0]))
  {
    v5 = *(a1 + 296);
    if (v5)
    {
      v6 = *(*(a1 + 264) + 8 * ((v5 + *(a1 + 288) - 1) / 0x1AuLL)) + 152 * ((v5 + *(a1 + 288) - 1) % 0x1AuLL);
    }

    else
    {
      v6 = a1 + 56;
    }

    return EQKitLength::resolveToAbsoluteWithSize(v8, *(v6 + 24));
  }

  return a2;
}

uint64_t EQKitLayoutManager::decimalPointOffsetInStringBox(EQKitLayoutManager *this, EQKitStringBox *a2)
{
  v6 = EQKitLayoutManager::decimalPointCharacter(this);
  v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharacters:&v6 length:1];
  v4 = [(NSString *)[(NSAttributedString *)[(EQKitStringBox *)a2 attributedString] string] rangeOfString:v3];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [(NSAttributedString *)[(EQKitStringBox *)a2 attributedString] length];
  }

  return [(EQKitStringBox *)a2 positionOfCharacterAtIndex:v4];
}

void *EQKitLayoutManager::layoutNumberDigits(EQKitLayoutManager *this, const EQKit::Layout::Schemata *a2, unint64_t *a3)
{
  v6 = [MEMORY[0x277CBEB18] array];
  v7 = *(this + 37);
  if (v7)
  {
    v8 = (*(*(this + 33) + 8 * ((v7 + *(this + 36) - 1) / 0x1AuLL)) + 152 * ((v7 + *(this + 36) - 1) % 0x1AuLL));
  }

  else
  {
    v8 = this + 56;
  }

  v9 = *(v8 + 11);
  v10 = [EQKit::Layout::Schemata::tokenSchemata(a2) schemataTokenString];
  v11 = (*(*v9 + 80))(v9, v10, v8 + 8);
  v23 = EQKitLayoutManager::decimalPointCharacter(this);
  v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharacters:&v23 length:1];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0x7FFFFFFFFFFFFFFFLL;
  v13 = [v11 string];
  v14 = [v11 length];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = ___ZN18EQKitLayoutManager18layoutNumberDigitsERKN5EQKit6Layout8SchemataERm_block_invoke;
  v18[3] = &unk_2798720E8;
  v18[4] = v11;
  v18[5] = v12;
  v18[6] = v6;
  v18[7] = &v19;
  v18[8] = v8;
  [v13 enumerateSubstringsInRange:0 options:v14 usingBlock:{2, v18}];

  v15 = [v6 count];
  *a3 = v15;
  v16 = v20[3];
  if (v16 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = v15;
  }

  *a3 = v16;

  _Block_object_dispose(&v19, 8);
  return v6;
}

void sub_25826BF40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t EQKitLayoutManager::decimalPointCharacter(EQKitLayoutManager *this)
{
  v7 = 46;
  v2 = *(this + 77);
  v4 = *(this + 50);
  v3 = *(this + 51);
  if (v4 == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(v3 - 8);
  }

  v8 = v5;
  v9 = 35;
  EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,unsigned short>>(v2, v2 + 488, &v8, &v7);
  return v7;
}

void ___ZN18EQKitLayoutManager18layoutNumberDigitsERKN5EQKit6Layout8SchemataERm_block_invoke(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 32) attributedSubstringFromRange:?];
  if (*(*(*(a1 + 56) + 8) + 24) == 0x7FFFFFFFFFFFFFFFLL && [a2 isEqualToString:*(a1 + 40)])
  {
    *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 48) count];
  }

  v5 = [[EQKitStringBox alloc] initWithAttributedString:v4 cgColor:*(*(a1 + 64) + 112)];
  [*(a1 + 48) addObject:v5];
}

uint64_t EQKitLayoutManager::isEmbellishedOperatorWithMovableLimts(uint64_t a1, void *a2)
{
  result = [a2 isEmbellishedOperator];
  if (result)
  {
    v5 = [a2 operatorCore];
    v10 = 0;
    v6 = *(a1 + 616);
    v11 = v5;
    v12 = 45;
    EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>(v6, v6 + 8, &v11, &v10);
    if (v10)
    {
      return v10 == 2;
    }

    else
    {
      v7 = [*(a1 + 608) operatorDictionary];
      v8 = [v5 operatorId];
      v9 = EQKitLayoutManager::operatorForm(a1, v5);
      result = EQKit::Config::Operator::Dictionary::lookup(v7, v8, v9);
      if (result)
      {
        return (*(result + 48) >> 5) & 1;
      }
    }
  }

  return result;
}

uint64_t EQKitLayoutManager::isEmbellishedOperatorWithAccent(uint64_t a1, void *a2)
{
  result = [a2 isEmbellishedOperator];
  if (result)
  {
    v5 = [a2 operatorCore];
    v6 = [*(a1 + 608) operatorDictionary];
    v7 = [v5 operatorId];
    v8 = EQKitLayoutManager::operatorForm(a1, v5);
    result = EQKit::Config::Operator::Dictionary::lookup(v6, v7, v8);
    if (result)
    {
      return (*(result + 48) >> 3) & 1;
    }
  }

  return result;
}

uint64_t EQKitLayoutManager::isOperatorStretchy(uint64_t a1, void *a2)
{
  v11 = 0;
  v4 = *(a1 + 616);
  v12 = a2;
  v13 = 16;
  EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>(v4, v4 + 8, &v12, &v11);
  if (v11 == 1)
  {
    goto LABEL_6;
  }

  if (v11 != 2)
  {
    v6 = [*(a1 + 608) operatorDictionary];
    v7 = [a2 operatorId];
    v8 = EQKitLayoutManager::operatorForm(a1, a2);
    v9 = EQKit::Config::Operator::Dictionary::lookup(v6, v7, v8);
    if (v9)
    {
      v5 = *(v9 + 48);
      return v5 & 1;
    }

LABEL_6:
    v5 = 0;
    return v5 & 1;
  }

  v5 = 1;
  return v5 & 1;
}

uint64_t EQKitLayoutManager::doesOperatorRequireVerticalStretch(uint64_t a1, void *a2)
{
  v6 = a2;
  if (std::__hash_table<std::__hash_value_type<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator}*,EQKitLayoutStretchedOperator>,std::__unordered_map_hasher<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator},EQKitLayoutStretchedOperator,std::hash<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator}>,std::equal_to<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator}>,true>,std::__unordered_map_equal<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator},EQKitLayoutStretchedOperator,std::equal_to,std::hash,true>,std::allocator<EQKitLayoutStretchedOperator>>::find<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator}>((a1 + 472), &v6) || !EQKitLayoutManager::isOperatorStretchy(a1, v6))
  {
    return 0;
  }

  EQKit::Layout::Schemata::Schemata(v5);
  v3 = EQKitLayoutManager::schemataForOperatorWhenStretchedVertically(a1, v6, v5);
  EQKit::Layout::Schemata::~Schemata(v5);
  return v3;
}

void sub_25826C2FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  EQKit::Layout::Schemata::~Schemata(va);
  _Unwind_Resume(a1);
}

uint64_t EQKitLayoutManager::isOperatorLargeOp(uint64_t a1, void *a2)
{
  v9 = 0;
  v4 = *(a1 + 616);
  v10 = a2;
  v11 = 39;
  EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>(v4, v4 + 8, &v10, &v9);
  if (v9 == 1)
  {
    return 0;
  }

  if (v9 == 2)
  {
    return 1;
  }

  v6 = [*(a1 + 608) operatorDictionary];
  v7 = [a2 operatorId];
  v8 = EQKitLayoutManager::operatorForm(a1, a2);
  result = EQKit::Config::Operator::Dictionary::lookup(v6, v7, v8);
  if (result)
  {
    return (*(result + 48) >> 2) & 1;
  }

  return result;
}

void *EQKitLayoutManager::pushImplicitFormIfRequired(void *a1, void *a2, void *a3)
{
  result = EQKitLayoutManager::isEmbellishedOperatorRoot(a1, a2);
  if (result)
  {
    v7 = [a3 firstObject];
    v9 = 2 * (v7 == a2);
    if ([a3 lastObject] == a2)
    {
      v8 = (2 * (v7 == a2)) | 8;
    }

    else
    {
      if (v7 == a2)
      {
        return std::deque<unsigned long>::push_back(a1 + 26, &v9);
      }

      v8 = 4;
    }

    v9 = v8;
    return std::deque<unsigned long>::push_back(a1 + 26, &v9);
  }

  return result;
}

uint64_t EQKitLayoutManager::popImplicitFormIfRequired(void *a1, void *a2)
{
  result = EQKitLayoutManager::isEmbellishedOperatorRoot(a1, a2);
  if (result)
  {
    v4 = a1[31];
    if (v4)
    {
      a1[31] = v4 - 1;

      return std::deque<objc_object  {objcproto15EQKitLayoutNode}*>::__maybe_remove_back_spare[abi:ne200100](a1 + 26, 1);
    }
  }

  return result;
}

void EQKitLayoutManager::resolveRow(EQKitLayoutManager *this, NSArray *a2)
{
  v2 = *(this + 49);
  if (v2)
  {
    v4 = (*(*(this + 45) + 8 * ((v2 + *(this + 48) - 1) / 0x19uLL)) + 160 * ((v2 + *(this + 48) - 1) % 0x19uLL));
    if (!v4[8])
    {
      memset(v30, 0, sizeof(v30));
      std::vector<EQKit::ILayout>::__init_with_size[abi:ne200100]<EQKit::ILayout*,EQKit::ILayout*>(v30, v4[1], v4[2], 0x6DB6DB6DB6DB6DB7 * ((v4[2] - v4[1]) >> 3));
      v6 = v4[7];
      v28 = 0.0;
      v29 = 0.0;
      EQKitLayoutRow::determineVSize(v4, &v29, &v28);
      v7 = *(this + 37);
      if (v7)
      {
        v8 = (*(*(this + 33) + 8 * ((v7 + *(this + 36) - 1) / 0x1AuLL)) + 152 * ((v7 + *(this + 36) - 1) % 0x1AuLL));
      }

      else
      {
        v8 = (this + 56);
      }

      if ((v8[15] & 2) != 0)
      {
        v9 = v8[17];
      }

      else
      {
        v9 = EQKitLayoutContext::pComputeMathAxis(v8);
      }

      for (i = [v6 firstIndex]; i != 0x7FFFFFFFFFFFFFFFLL; i = objc_msgSend(v6, "indexGreaterThanIndex:", i))
      {
        v11 = EQKitLayoutRow::childNodeAtIndex(v4, i);
        v12 = v11;
        if (v11)
        {
          v27 = [v11 operatorCore];
          v13 = std::__hash_table<std::__hash_value_type<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator}*,EQKitLayoutStretchedOperator>,std::__unordered_map_hasher<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator},EQKitLayoutStretchedOperator,std::hash<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator}>,std::equal_to<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator}>,true>,std::__unordered_map_equal<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator},EQKitLayoutStretchedOperator,std::equal_to,std::hash,true>,std::allocator<EQKitLayoutStretchedOperator>>::find<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator}>(this + 59, &v27);
          v14 = v13;
          if (v13 && *(v13 + 8) == 1)
          {
            v15 = EQKitLayoutRow::determineWidth(v4);
            EQKitLayoutManager::registerHorizontalStretchedOperator(this, v27, 1, v14[7] - v15);
            EQKitLayoutManager::layoutBox(this, v12, 0, v26);
            EQKit::ILayout::operator=(v30[0] + 56 * i, v26);
          }

          else
          {
            EQKitLayoutManager::pushImplicitFormIfRequired(this, v12, a2);
            isOperatorSymmetric = EQKitLayoutManager::isOperatorSymmetric(this, v27);
            v17 = v29;
            if (isOperatorSymmetric)
            {
              v18 = v29 - v9;
              if (v29 - v9 < v9 + v28)
              {
                v18 = v9 + v28;
              }

              v17 = v9 + v18;
              v19 = v18 - v9;
            }

            else
            {
              v19 = v28;
            }

            v20 = EQKitLayoutManager::registerVerticalStretchedOperator(this, v27, v17, v19);
            v21 = *(v20 + 2);
            v23 = *(v20 + 2);
            v22 = *(v20 + 3);
            v24 = *(v20 + 4);
            EQKitLayoutManager::layoutBox(this, v12, 0, v26);
            v25 = v22 + v23;
            if (v21 != 2)
            {
              v25 = v24;
            }

            if (v17 + v19 < v25)
            {
              EQKit::ILayout::setVerticalContentClassification(v26, 0);
            }

            EQKit::ILayout::operator=(v30[0] + 56 * i, v26);
            EQKitLayoutManager::popImplicitFormIfRequired(this, v12);
          }

          EQKit::ILayout::~ILayout(v26);
        }
      }

      EQKitLayoutRow::resolveLayouts(v4, v30);
      v26[0] = v30;
      std::vector<EQKit::ILayout>::__destroy_vector::operator()[abi:ne200100](v26);
    }
  }
}

void sub_25826C7BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  a10 = &a20;
  std::vector<EQKit::ILayout>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void ___ZN18EQKitLayoutManager14layoutFractionERKN5EQKit6Layout8SchemataEbPU26objcproto15EQKitLayoutNode11objc_object_block_invoke(void *a1, uint64_t a2, __n128 a3)
{
  if (a1[4] == a2)
  {
    v4 = a1[7];
    v5 = v4[37];
    if (v5)
    {
      v6 = *(v4[33] + 8 * ((v5 + v4[36] - 1) / 0x1AuLL)) + 152 * ((v5 + v4[36] - 1) % 0x1AuLL);
    }

    else
    {
      v6 = (v4 + 7);
    }

    v7 = *(v6 + 88);
    if (*(v6 + 120))
    {
      a3.n128_u64[0] = *(v6 + 128);
    }

    else
    {
      a3.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v6);
    }

    *(*(a1[5] + 8) + 24) = (*(*v7 + 56))(v7, 3, v6 + 8, a3);
    v9 = v4[37];
    if (v9)
    {
      v10 = *(v4[33] + 8 * ((v9 + v4[36] - 1) / 0x1AuLL)) + 152 * ((v9 + v4[36] - 1) % 0x1AuLL);
    }

    else
    {
      v10 = (v4 + 7);
    }

    v11 = *(v10 + 88);
    if (*(v10 + 120))
    {
      v8.n128_u64[0] = *(v10 + 128);
    }

    else
    {
      v8.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v10);
    }

    *(*(a1[6] + 8) + 24) = (*(*v11 + 56))(v11, 37, v10 + 8, v8);
  }
}

uint64_t EQKitLayoutContext::metricForKey(EQKitLayoutContext *this, uint64_t a2, __n128 a3)
{
  v5 = *(this + 11);
  if (*(this + 120))
  {
    a3.n128_u64[0] = *(this + 16);
  }

  else
  {
    a3.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(this);
  }

  v6 = *(*v5 + 56);

  return v6(v5, a2, this + 8, a3);
}

void ___ZN18EQKitLayoutManager14layoutFractionERKN5EQKit6Layout8SchemataEbPU26objcproto15EQKitLayoutNode11objc_object_block_invoke_2(void *a1, uint64_t a2, __n128 a3)
{
  if (a1[4] == a2)
  {
    v4 = a1[7];
    v5 = v4[37];
    if (v5)
    {
      v6 = *(v4[33] + 8 * ((v5 + v4[36] - 1) / 0x1AuLL)) + 152 * ((v5 + v4[36] - 1) % 0x1AuLL);
    }

    else
    {
      v6 = (v4 + 7);
    }

    v7 = *(v6 + 88);
    if (*(v6 + 120))
    {
      a3.n128_u64[0] = *(v6 + 128);
    }

    else
    {
      a3.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v6);
    }

    *(*(a1[5] + 8) + 24) = (*(*v7 + 56))(v7, 4, v6 + 8, a3);
    v9 = v4[37];
    if (v9)
    {
      v10 = *(v4[33] + 8 * ((v9 + v4[36] - 1) / 0x1AuLL)) + 152 * ((v9 + v4[36] - 1) % 0x1AuLL);
    }

    else
    {
      v10 = (v4 + 7);
    }

    v11 = *(v10 + 88);
    if (*(v10 + 120))
    {
      v8.n128_u64[0] = *(v10 + 128);
    }

    else
    {
      v8.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v10);
    }

    *(*(a1[6] + 8) + 24) = (*(*v11 + 56))(v11, 38, v10 + 8, v8);
  }
}

EQKitBox *EQKitLayoutManager::wrapBoxWithAttribution(EQKitLayoutManager *this, EQKitBox *a2, id *a3)
{
  v4 = EQKit::Layout::Schemata::sourceAttribution(a3);
  if (!v4)
  {
    return a2;
  }

  v5 = [[EQKitAttributionBox alloc] initWithBox:a2 attribution:v4];

  return v5;
}

uint64_t EQKitLayoutManager::lengthForMetric(uint64_t a1, uint64_t a2)
{
  v4 = EQKit::Font::Manager::fontCollection([*(a1 + 608) fontManager]);
  v6 = *(a1 + 296);
  if (v6)
  {
    v7 = *(*(a1 + 264) + 8 * ((v6 + *(a1 + 288) - 1) / 0x1AuLL)) + 152 * ((v6 + *(a1 + 288) - 1) % 0x1AuLL);
    v8 = v7 + 8;
  }

  else
  {
    v8 = a1 + 64;
    v7 = a1 + 56;
  }

  if (*(v7 + 120))
  {
    v5.n128_u64[0] = *(v7 + 128);
  }

  else
  {
    v5.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v7);
  }

  v9 = *(*v4 + 56);

  return v9(v4, a2, v8, v5);
}

void EQKitLayoutManager::layoutSubsuperscript(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, EQKit::ILayout *a5@<X8>)
{
  v9 = *(a1 + 296);
  if (v9)
  {
    v10 = *(*(a1 + 264) + 8 * ((v9 + *(a1 + 288) - 1) / 0x1AuLL)) + 152 * ((v9 + *(a1 + 288) - 1) % 0x1AuLL);
  }

  else
  {
    v10 = a1 + 56;
  }

  v194 = 0;
  v195 = &v194;
  v196 = 0x2020000000;
  v197 = 0;
  v190 = 0;
  v191 = &v190;
  v192 = 0x2020000000;
  v193 = 0;
  v186 = 0;
  v187 = &v186;
  v188 = 0x2020000000;
  v189 = 0;
  v182 = 0;
  v183 = &v182;
  v184 = 0x2020000000;
  v185 = 0;
  v178 = 0;
  v179 = &v178;
  v180 = 0x2020000000;
  v181 = 0;
  v11 = a2;
  if (a2)
  {
    while (1)
    {
      v12 = v11;
      [v11 layoutSchemata];
      if (v174 != 2)
      {
        break;
      }

      v13 = EQKit::Layout::Schemata::children(&v173);
      if ([v13 count] != 1)
      {
        break;
      }

      v11 = [v13 objectAtIndex:0];
      EQKit::Layout::Schemata::~Schemata(&v173);
      if (!v11)
      {
        goto LABEL_11;
      }
    }

    EQKit::Layout::Schemata::~Schemata(&v173);
  }

  else
  {
    v12 = 0;
  }

LABEL_11:
  if ([v12 isEmbellishedOperator])
  {
    isOperatorLargeOp = EQKitLayoutManager::isOperatorLargeOp(a1, [v12 operatorCore]);
  }

  else
  {
    isOperatorLargeOp = 0;
  }

  v172[0] = MEMORY[0x277D85DD0];
  v172[1] = 3221225472;
  v172[2] = ___ZN18EQKitLayoutManager20layoutSubsuperscriptEPU26objcproto15EQKitLayoutNode11objc_objectS1_S1__block_invoke;
  v172[3] = &unk_279872138;
  v172[6] = &v194;
  v172[7] = &v190;
  v172[8] = &v186;
  v172[9] = &v182;
  v172[11] = a1;
  v172[10] = &v178;
  v172[4] = v12;
  v172[5] = a2;
  EQKitLayoutManager::layoutBox(a1, a2, v172, &v173);
  if ((v175 & 0x100) != 0)
  {
    *(v191 + 24) = 1;
  }

  EQKit::ILayout::ILayout(v168, 0);
  v164 = 0;
  v165 = &v164;
  v166 = 0x2020000000;
  v167 = 0;
  if (a3)
  {
    v159[0] = MEMORY[0x277D85DD0];
    v159[1] = 3221225472;
    v159[2] = ___ZN18EQKitLayoutManager20layoutSubsuperscriptEPU26objcproto15EQKitLayoutNode11objc_objectS1_S1__block_invoke_2;
    v159[3] = &unk_279872110;
    v159[4] = a3;
    v159[5] = &v190;
    v159[6] = &v164;
    v159[7] = a1;
    EQKitLayoutManager::layoutBox(a1, a3, 1, 0, 2, 1, v159, v160);
    EQKit::ILayout::operator=(v168, v160);
  }

  else
  {
    EQKit::ILayout::ILayout(v160, 0);
    EQKit::ILayout::operator=(v168, v160);
  }

  EQKit::ILayout::~ILayout(v160);
  if (*(v195 + 3) != 0.0)
  {
    v15 = EQKit::Font::Manager::fontCollection([*(a1 + 608) fontManager]);
    v16 = (*(*v15 + 64))(v15, 0);
    *(v195 + 3) = v16 * *(v195 + 3);
  }

  if (a4 && ((v191[3] & 1) != 0 || (*(*(a1 + 48) + 6) & 1) == 0))
  {
    [a4 layoutSchemata];
    isLayoutSchemataOnlyPseudoSuperscripts = _isLayoutSchemataOnlyPseudoSuperscripts(v160);
    EQKit::Layout::Schemata::~Schemata(v160);
  }

  else
  {
    isLayoutSchemataOnlyPseudoSuperscripts = 0;
  }

  EQKit::ILayout::ILayout(v160, 0);
  v155 = 0;
  v156 = &v155;
  v157 = 0x2020000000;
  v158 = 0;
  if (a4)
  {
    v152[0] = MEMORY[0x277D85DD0];
    v152[1] = 3221225472;
    v152[2] = ___ZN18EQKitLayoutManager20layoutSubsuperscriptEPU26objcproto15EQKitLayoutNode11objc_objectS1_S1__block_invoke_3;
    v152[3] = &unk_279872110;
    v152[4] = a4;
    v152[5] = &v190;
    v152[6] = &v155;
    v152[7] = a1;
    EQKitLayoutManager::layoutBox(a1, a4, !isLayoutSchemataOnlyPseudoSuperscripts, 0, 2, 0, v152, v153);
    EQKit::ILayout::operator=(v160, v153);
  }

  else
  {
    EQKit::ILayout::ILayout(v153, 0);
    EQKit::ILayout::operator=(v160, v153);
  }

  EQKit::ILayout::~ILayout(v153);
  v19 = v168[0];
  v20 = v160[0];
  if (*(v191 + 24) == 1)
  {
    v21 = *(v10 + 88);
    if (*(v10 + 120))
    {
      v18.n128_u64[0] = *(v10 + 128);
    }

    else
    {
      v18.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v10);
    }

    v26 = (*(*v21 + 56))(v21, 0, v10 + 8, v18);
    v30 = *(v10 + 88);
    if (*(v10 + 120))
    {
      v29.n128_u64[0] = *(v10 + 128);
    }

    else
    {
      v29.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v10);
    }

    v28 = (*(*v30 + 56))(v30, 1, v10 + 8, v29);
  }

  else
  {
    v22 = v173;
    [v173 depth];
    v24 = v23;
    v25 = v165[3];
    [v22 height];
    v26 = v24 + v25;
    v28 = v27 - v156[3];
  }

  [v19 height];
  v32 = v31.n128_f64[0];
  v33 = *(v10 + 88);
  if (*(v10 + 120))
  {
    v31.n128_u64[0] = *(v10 + 128);
  }

  else
  {
    v31.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v10);
  }

  v34.n128_f64[0] = v32 - (*(*v33 + 56))(v33, 8, v10 + 8, v31);
  if (v26 < v34.n128_f64[0])
  {
    v26 = v34.n128_f64[0];
  }

  v35 = *(v10 + 88);
  if (*(v10 + 120))
  {
    v34.n128_u64[0] = *(v10 + 128);
  }

  else
  {
    v34.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v10);
  }

  v36 = (*(*v35 + 56))(v35, 7, v10 + 8, v34);
  [v20 depth];
  v37.n128_f64[0] = v36 + v37.n128_f64[0];
  if (v28 < v37.n128_f64[0])
  {
    v28 = v37.n128_f64[0];
  }

  if (v20)
  {
    v38 = isLayoutSchemataOnlyPseudoSuperscripts;
  }

  else
  {
    v38 = 0;
  }

  if (v38)
  {
    v28 = 0.0;
    if ((*(*(a1 + 40) + 16) & 1) == 0)
    {
      EQKitLayoutManager::lengthForMetric(a1, 29);
      v183[3] = v37.n128_f64[0] + v183[3];
    }
  }

  if (v19)
  {
    v39 = v20 == 0;
  }

  else
  {
    v39 = 1;
  }

  v40 = !v39;
  v145 = v40;
  if (!v39)
  {
    v41 = *(v10 + 88);
    if (*(v10 + 120))
    {
      v37.n128_u64[0] = *(v10 + 128);
    }

    else
    {
      v37.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v10);
    }

    v42 = (*(*v41 + 56))(v41, 9, v10 + 8, v37);
    [v20 depth];
    v44 = v43;
    [v19 height];
    v46 = v28 - v44;
    v47 = v42 - (v46 + v26 - v45.n128_f64[0]);
    if (v47 > 0.0)
    {
      v48 = *(v10 + 88);
      if (*(v10 + 120))
      {
        v45.n128_u64[0] = *(v10 + 128);
      }

      else
      {
        v45.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v10);
      }

      v49 = (*(*v48 + 56))(v48, 10, v10 + 8, v45) - v46;
      if (v49 >= v47)
      {
        v50 = v47;
      }

      else
      {
        v50 = v49;
      }

      v51 = v49 <= 0.0;
      if (v49 > 0.0)
      {
        v28 = v28 + v50;
      }

      v52 = 0.0;
      if (!v51)
      {
        v52 = v50;
      }

      v53 = v47 - v52;
      if (v53 > 0.0)
      {
        v26 = v26 + v53;
      }
    }
  }

  v54 = v175;
  v55 = v175 & 0x3F | 0x40;
  v175 = v175 & 0xFF3F | 0x40;
  v169 = v169 & 0xFFCF | 0x10;
  v161 = v161 & 0xFFCF | 0x10;
  v56 = (v54 >> 4) & 3;
  if (v56 <= 1)
  {
    if (v56)
    {
      v57 = 31;
    }

    else
    {
      v57 = 30;
    }

    goto LABEL_83;
  }

  if (v56 == 2)
  {
    v57 = 32;
LABEL_83:
    EQKitLayoutManager::lengthForMetric(a1, v57);
    v59 = v58;
    v55 = v175;
    goto LABEL_85;
  }

  v59 = 0;
LABEL_85:
  v60 = v55 >> 6;
  if (v60 > 1)
  {
    v62 = 0.0;
    if (v60 != 2)
    {
      goto LABEL_92;
    }

    v61 = 32;
  }

  else if (v60)
  {
    v61 = 31;
  }

  else
  {
    v61 = 30;
  }

  EQKitLayoutManager::lengthForMetric(a1, v61);
LABEL_92:
  v176 = v59;
  v177 = v62;
  v63 = v169;
  v64 = (v169 >> 4) & 3;
  if (v64 <= 1)
  {
    if (v64)
    {
      v65 = 31;
    }

    else
    {
      v65 = 30;
    }

    goto LABEL_98;
  }

  if (v64 == 2)
  {
    v65 = 32;
LABEL_98:
    EQKitLayoutManager::lengthForMetric(a1, v65);
    v67 = v66;
    v63 = v169;
    goto LABEL_100;
  }

  v67 = 0.0;
LABEL_100:
  v68 = v63 >> 6;
  if (v68 > 1)
  {
    v70 = 0;
    if (v68 != 2)
    {
      goto LABEL_107;
    }

    v69 = 32;
  }

  else if (v68)
  {
    v69 = 31;
  }

  else
  {
    v69 = 30;
  }

  EQKitLayoutManager::lengthForMetric(a1, v69);
LABEL_107:
  v170 = v67;
  v171 = v70;
  v71 = v161;
  v72 = (v161 >> 4) & 3;
  if (v72 <= 1)
  {
    if (v72)
    {
      v73 = 31;
    }

    else
    {
      v73 = 30;
    }

    goto LABEL_113;
  }

  if (v72 == 2)
  {
    v73 = 32;
LABEL_113:
    EQKitLayoutManager::lengthForMetric(a1, v73);
    v75 = v74;
    v71 = v161;
    goto LABEL_115;
  }

  v75 = 0.0;
LABEL_115:
  v76 = v71 >> 6;
  if (v76 > 1)
  {
    v78 = 0;
    if (v76 != 2)
    {
      goto LABEL_122;
    }

    v77 = 32;
  }

  else if (v76)
  {
    v77 = 31;
  }

  else
  {
    v77 = 30;
  }

  EQKitLayoutManager::lengthForMetric(a1, v77);
LABEL_122:
  v162 = v75;
  v163 = v78;
  v79 = 0.0;
  v80 = 0.0;
  v81 = 0.0;
  v82 = MEMORY[0x277CBF348];
  v146 = v19;
  v147 = a3;
  if (v19)
  {
    if (*(v195 + 3) != 0.0 && v26 != 0.0 || v187[3] != 0.0)
    {
      v83 = _startsWithToken(a3, *(a1 + 48));
      v84 = 0.0;
      if (v83)
      {
        v84 = v26 * tan(*(v195 + 3));
      }

      v81 = v84 - v187[3];
    }

    v85 = a4;
    v86 = isOperatorLargeOp;
    v87 = a5;
    if (isOperatorLargeOp)
    {
      v81 = v81 - v179[3];
    }

    v88 = v177;
    v89 = v170;
    v90 = *(a1 + 40);
    v91 = v175;
    v92 = *v82;
    v93 = v82[1];
    v94 = v82;
    v95 = v173;
    v96 = v169;
    [v173 opticalAlignWidth];
    if (v88 >= v89)
    {
      v98 = v88;
    }

    else
    {
      v98 = v89;
    }

    v80 = EQKit::Kerning::Manager::kerningDistanceRequiredToSatisfyMinClearance(v90, (v91 >> 2) & 3, v95, v96 & 3, v168[0], v92, v93, v81 + v97, v26, v98);
    a5 = v87;
    a4 = v85;
    a3 = v147;
    LOBYTE(isOperatorLargeOp) = v86;
    v82 = v94;
  }

  v99 = 0.0;
  if (v20)
  {
    if (*(v195 + 3) != 0.0 && v28 != 0.0 || v183[3] != 0.0)
    {
      v100 = _startsWithToken(a4, *(a1 + 48));
      v101 = 0.0;
      if (v100)
      {
        v101 = v28 * tan(*(v195 + 3));
      }

      v99 = v183[3] - v101;
    }

    v102 = a4;
    v144 = v81;
    v103 = v26;
    v104 = a5;
    if ((isOperatorLargeOp & 1) == 0)
    {
      v99 = v99 + v179[3];
    }

    v105 = v177;
    v106 = v162;
    v107 = *(a1 + 40);
    v108 = v175;
    v109 = *v82;
    v110 = v82[1];
    v111 = v173;
    v112 = v161;
    [v173 opticalAlignWidth];
    if (v105 >= v106)
    {
      v114 = v105;
    }

    else
    {
      v114 = v106;
    }

    v79 = EQKit::Kerning::Manager::kerningDistanceRequiredToSatisfyMinClearance(v107, (v108 >> 2) & 3, v111, v112 & 3, v160[0], v109, v110, v99 + v113, -v28, v114);
    a5 = v104;
    a4 = v102;
    a3 = v147;
    v26 = v103;
    v81 = v144;
  }

  if (v80 < v79)
  {
    v80 = v79;
  }

  EQKitLayoutManager::lengthForMetric(a1, 36);
  if (v115 == 0.0)
  {
    v116 = 0;
    if (!v146)
    {
      goto LABEL_162;
    }
  }

  else
  {
    v116 = [[EQKitHSpace alloc] initWithWidth:v115];
    if (!v146)
    {
      goto LABEL_162;
    }
  }

  if (v81 + v80 != 0.0 || v116)
  {
    v117 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:3];
    if (v81 + v80 != 0.0)
    {
      v118 = [[EQKitHSpace alloc] initWithWidth:v81 + v80];
      [v117 addObject:v118];
    }

    [v117 addObject:v146];
    if (v116)
    {
      [v117 addObject:v116];
    }

    if (v117)
    {
      v119 = [(EQKitCompoundBox *)[EQKitHBox alloc] initWithChildBoxes:v117];
      goto LABEL_163;
    }
  }

LABEL_162:
  v119 = v146;
  v117 = 0;
LABEL_163:

  if (!v20 || v99 + v80 == 0.0 && !v116)
  {
    goto LABEL_172;
  }

  v120 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:3];
  if (v99 + v80 != 0.0)
  {
    v121 = [[EQKitHSpace alloc] initWithWidth:v99 + v80];
    [v120 addObject:v121];
  }

  [v120 addObject:v20];
  if (v116)
  {
    [v120 addObject:v116];
  }

  if (v120)
  {
    v122 = [(EQKitCompoundBox *)[EQKitHBox alloc] initWithChildBoxes:v120];
  }

  else
  {
LABEL_172:
    v122 = v20;
    v120 = 0;
  }

  EQKit::ILayout::ILayout(v153, 0);
  if (v145)
  {
    [v20 layoutDepth];
    v124 = v123;
    [v146 layoutHeight];
    v126 = [[EQKitVSpace alloc] initWithHeight:v28 - v124 depth:v26 - v125];
    v127 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v122, v126, v119, 0}];
    v128 = [[EQKitVBox alloc] initWithChildBoxes:v127 pivotIndex:1];
    EQKit::ILayout::ILayout(v151, &v128->super.super);
    EQKit::ILayout::operator=(v153, v151);
    EQKit::ILayout::~ILayout(v151);
  }

  else if (v146)
  {
    v129 = [[EQKitVShift alloc] initWithBox:v119 offset:-v26];
    EQKit::ILayout::ILayout(v151, &v129->super);
    EQKit::ILayout::operator=(v153, v151);
    EQKit::ILayout::~ILayout(v151);
  }

  else if (v20)
  {
    v130 = [[EQKitVShift alloc] initWithBox:v122 offset:v28];
    EQKit::ILayout::ILayout(v151, &v130->super);
    EQKit::ILayout::operator=(v153, v151);
    EQKit::ILayout::~ILayout(v151);
  }

  EQKitLayoutManager::beginRow(a1, 1, 0);
  v175 = v175 & 0xFFF3 | 4;
  v154 = v154 & 0xFFFC | 1;
  EQKit::ILayout::ILayout(v150, &v173);
  EQKitLayoutManager::addRowChild(a1, v150, a2);
  EQKit::ILayout::~ILayout(v150);
  EQKit::ILayout::ILayout(v149, v153);
  v131 = *(a1 + 408);
  if (*(a1 + 400) == v131)
  {
    v132 = 0;
  }

  else
  {
    v132 = *(v131 - 8);
  }

  EQKitLayoutManager::addRowChild(a1, v149, v132);
  EQKit::ILayout::~ILayout(v149);
  EQKitLayoutManager::endRow(a1, a5);
  v133 = *(a1 + 296);
  if (v133)
  {
    v134 = *(*(a1 + 264) + 8 * ((v133 + *(a1 + 288) - 1) / 0x1AuLL)) + 152 * ((v133 + *(a1 + 288) - 1) % 0x1AuLL);
  }

  else
  {
    v134 = a1 + 56;
  }

  if ((*(v134 + 16) & 1) == 0 && (v175 & 0x1000) != 0)
  {
    if (a4)
    {
      v136 = (v161 >> 12) & 1;
    }

    else
    {
      v136 = 0;
    }

    v137 = v169 & 0x1C00;
    if (a3)
    {
      v138 = (v169 >> 12) & 1;
    }

    else
    {
      v138 = 0;
    }

    v139 = v137 > 0x1000 && a3 != 0;
    v140 = (v161 & 0x1C00u) > 0x1000 && a4 != 0;
    v141 = v138 + v136;
    if ((a3 != 0) != (a4 != 0) && v141 == 1 || (a3 ? (v142 = a4 == 0) : (v142 = 1), v142 ? (v143 = 0) : (v143 = 1), !v142 && (v161 & 0x1C00u) > 0x1000 && v137 > 0x1000 || (v135 = 0, (v143 & (v139 ^ v140)) == 1) && v141 == 2))
    {
      v135 = 3;
    }
  }

  else
  {
    v135 = 0;
  }

  EQKit::ILayout::setVerticalContentClassification(a5, v135);
  *(a5 + 16) = *(a5 + 16) & 0xFFF3 | 8;
  EQKit::ILayout::~ILayout(v153);
  _Block_object_dispose(&v155, 8);
  EQKit::ILayout::~ILayout(v160);
  _Block_object_dispose(&v164, 8);
  EQKit::ILayout::~ILayout(v168);
  EQKit::ILayout::~ILayout(&v173);
  _Block_object_dispose(&v178, 8);
  _Block_object_dispose(&v182, 8);
  _Block_object_dispose(&v186, 8);
  _Block_object_dispose(&v190, 8);
  _Block_object_dispose(&v194, 8);
}

void sub_25826DCEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  EQKit::ILayout::~ILayout(&a31);
  EQKit::ILayout::~ILayout(&a46);
  _Block_object_dispose(&a53, 8);
  EQKit::ILayout::~ILayout(&a65);
  _Block_object_dispose(&a72, 8);
  EQKit::ILayout::~ILayout(&STACK[0x218]);
  EQKit::ILayout::~ILayout(&STACK[0x2B0]);
  _Block_object_dispose(&STACK[0x2E8], 8);
  _Block_object_dispose(&STACK[0x308], 8);
  _Block_object_dispose((v72 - 248), 8);
  _Block_object_dispose((v72 - 216), 8);
  _Block_object_dispose((v72 - 184), 8);
  _Unwind_Resume(a1);
}

void ___ZN18EQKitLayoutManager20layoutSubsuperscriptEPU26objcproto15EQKitLayoutNode11objc_objectS1_S1__block_invoke(void *a1, uint64_t a2, EQKit::Layout::Schemata *this)
{
  if (a1[4] == a2 && (v6 = a1[11], EQKit::Layout::Schemata::isToken(this)))
  {
    v7 = v6[37];
    if (v7)
    {
      v8 = *(v6[33] + 8 * ((v7 + v6[36] - 1) / 0x1AuLL)) + 152 * ((v7 + v6[36] - 1) % 0x1AuLL);
    }

    else
    {
      v8 = (v6 + 7);
    }

    if ((*(v8 + 120) & 4) != 0)
    {
      v10 = *(v8 + 144);
    }

    else
    {
      v10 = EQKitLayoutContext::pComputeSlantAngle(v8);
    }

    *(*(a1[6] + 8) + 24) = v10;
    v11 = EQKit::Layout::Schemata::tokenSchemata(this);
    if (v11)
    {
      v12 = [v11 schemataUnicharOrNul];
      v13 = v6[37];
      if (v13)
      {
        v14 = *(v6[33] + 8 * ((v13 + v6[36] - 1) / 0x1AuLL)) + 152 * ((v13 + v6[36] - 1) % 0x1AuLL);
        v15 = (v14 + 88);
      }

      else
      {
        v15 = v6 + 18;
        v14 = (v6 + 7);
      }

      v16 = v12;
      if ((*(**v15 + 120))(*v15, v12, v14 + 8))
      {
        *(*(a1[7] + 8) + 24) = 1;
      }

      if (v16)
      {
        *(*(a1[8] + 8) + 24) = EQKitLayoutManager::lengthForCharacterProperty(v6, 0.0);
        *(*(a1[9] + 8) + 24) = EQKitLayoutManager::lengthForCharacterProperty(v6, 0.0);
        *(*(a1[10] + 8) + 24) = EQKitLayoutManager::lengthForCharacterProperty(v6, 0.0);
      }
    }
  }

  else
  {
    v9 = a1[5] == a2 && *(this + 2) == 2;
    if (v9 && ![EQKit::Layout::Schemata::children(this) count])
    {
      *(*(a1[7] + 8) + 24) = 1;
    }
  }
}

void ___ZN18EQKitLayoutManager20layoutSubsuperscriptEPU26objcproto15EQKitLayoutNode11objc_objectS1_S1__block_invoke_2(void *a1, uint64_t a2, __n128 a3)
{
  if (a1[4] == a2 && (*(*(a1[5] + 8) + 24) & 1) == 0)
  {
    v4 = a1[7];
    v5 = v4[37];
    if (v5)
    {
      v6 = *(v4[33] + 8 * ((v5 + v4[36] - 1) / 0x1AuLL)) + 152 * ((v5 + v4[36] - 1) % 0x1AuLL);
    }

    else
    {
      v6 = (v4 + 7);
    }

    v7 = *(v6 + 88);
    if (*(v6 + 120))
    {
      a3.n128_u64[0] = *(v6 + 128);
    }

    else
    {
      a3.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v6);
    }

    *(*(a1[6] + 8) + 24) = (*(*v7 + 56))(v7, 6, v6 + 8, a3);
  }
}

BOOL _isLayoutSchemataOnlyPseudoSuperscripts(const EQKit::Layout::Schemata *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (!EQKit::Layout::Schemata::isToken(a1))
  {
    if (*(a1 + 2) == 2)
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v4 = EQKit::Layout::Schemata::children(a1);
      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (!v5)
      {
        return 1;
      }

      v6 = *v12;
LABEL_8:
      v7 = 0;
      while (1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        if (v8)
        {
          [v8 layoutSchemata];
        }

        else
        {
          memset(v10, 0, sizeof(v10));
        }

        isLayoutSchemataOnlyPseudoSuperscripts = _isLayoutSchemataOnlyPseudoSuperscripts(v10);
        EQKit::Layout::Schemata::~Schemata(v10);
        if ((isLayoutSchemataOnlyPseudoSuperscripts & 1) == 0)
        {
          break;
        }

        if (v5 == ++v7)
        {
          v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
          result = 1;
          if (v5)
          {
            goto LABEL_8;
          }

          return result;
        }
      }
    }

    return 0;
  }

  v2 = [EQKit::Layout::Schemata::tokenSchemata(a1) schemataUnicharOrNul];

  return EQKit::Unicode::isPseudoScript(v2);
}

void ___ZN18EQKitLayoutManager20layoutSubsuperscriptEPU26objcproto15EQKitLayoutNode11objc_objectS1_S1__block_invoke_3(void *a1, uint64_t a2, __n128 a3)
{
  if (a1[4] == a2 && (*(*(a1[5] + 8) + 24) & 1) == 0)
  {
    v4 = a1[7];
    v5 = v4[37];
    if (v5)
    {
      v6 = *(v4[33] + 8 * ((v5 + v4[36] - 1) / 0x1AuLL)) + 152 * ((v5 + v4[36] - 1) % 0x1AuLL);
    }

    else
    {
      v6 = (v4 + 7);
    }

    v7 = *(v6 + 88);
    if (*(v6 + 120))
    {
      a3.n128_u64[0] = *(v6 + 128);
    }

    else
    {
      a3.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v6);
    }

    *(*(a1[6] + 8) + 24) = (*(*v7 + 56))(v7, 5, v6 + 8, a3);
  }
}

uint64_t _startsWithToken(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    while (1)
    {
      [v3 layoutSchemata];
      if (EQKit::Layout::Schemata::isToken(&v6))
      {
        break;
      }

      if (v7 == 4)
      {
        if (*(a2 + 7) != 1)
        {
          goto LABEL_12;
        }

        v5 = [EQKit::Layout::Schemata::subsuperscriptSchemata(&v6) schemataKernel];
      }

      else
      {
        if (v7 != 2 || (v4 = EQKit::Layout::Schemata::children(&v6), ![v4 count]))
        {
LABEL_12:
          EQKit::Layout::Schemata::~Schemata(&v6);
          return 0;
        }

        v5 = [v4 objectAtIndex:0];
      }

      v3 = v5;
      EQKit::Layout::Schemata::~Schemata(&v6);
      if (!v3)
      {
        return 0;
      }
    }

    EQKit::Layout::Schemata::~Schemata(&v6);
    return 1;
  }

  return result;
}

void EQKitLayoutManager::layoutOverOrUnderBox(EQKitLayoutManager *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, EQKit::ILayout *a7@<X8>)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = ___ZN18EQKitLayoutManager20layoutOverOrUnderBoxEPU26objcproto15EQKitLayoutNode11objc_objectbPbPjPd_block_invoke;
  v7[3] = &unk_279872160;
  v8 = a3;
  v7[4] = a2;
  v7[5] = a1;
  v7[6] = a4;
  v7[7] = a5;
  v7[8] = a6;
  EQKitLayoutManager::layoutBox(a1, a2, a3 ^ 1u, 0, 2, 0, v7, a7);
}

void ___ZN18EQKitLayoutManager20layoutOverOrUnderBoxEPU26objcproto15EQKitLayoutNode11objc_objectbPbPjPd_block_invoke(uint64_t a1, uint64_t a2, EQKit::Layout::Schemata *this)
{
  if (*(a1 + 72) == 1 && *(a1 + 32) == a2)
  {
    v5 = *(a1 + 40);
    if (EQKit::Layout::Schemata::isToken(this))
    {
      v6 = *(a1 + 56);
      **(a1 + 48) = 1;
      if (v6)
      {
        **(a1 + 56) = [EQKit::Layout::Schemata::tokenSchemata(this) schemataUnicharOrNul];
      }

      if (*(a1 + 64))
      {
        v7 = v5[37];
        if (v7)
        {
          v8 = (*(v5[33] + 8 * ((v7 + v5[36] - 1) / 0x1AuLL)) + 152 * ((v7 + v5[36] - 1) % 0x1AuLL));
        }

        else
        {
          v8 = (v5 + 7);
        }

        v9 = EQKitLayoutContext::font(v8);
        **(a1 + 64) = CTFontGetXHeight(v9);
      }
    }
  }
}

void ___ZN18EQKitLayoutManager22layoutUnderoverBaseBoxEPU26objcproto15EQKitLayoutNode11objc_objectPN5EQKit6Script4InfoEPbPj_block_invoke(uint64_t a1, uint64_t a2, EQKit::Layout::Schemata *this)
{
  if (*(a1 + 32) == a2)
  {
    v5 = *(a1 + 40);
    if (EQKit::Layout::Schemata::isToken(this))
    {
      **(a1 + 48) = [EQKit::Layout::Schemata::tokenSchemata(this) schemataUnicharOrNul];
      v6 = v5[37];
      if (v6)
      {
        v7 = *(v5[33] + 8 * ((v6 + v5[36] - 1) / 0x1AuLL)) + 152 * ((v6 + v5[36] - 1) % 0x1AuLL);
      }

      else
      {
        v7 = (v5 + 7);
      }

      EQKit::Script::Info::operator=(*(a1 + 56), v7 + 8);
      **(a1 + 64) = 1;
    }
  }
}

double EQKit::Script::Info::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 9) = *(a2 + 9);
    *(a1 + 12) = *(a2 + 12);
    result = *(a2 + 16);
    *(a1 + 16) = result;
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = *(a2 + 32);
  }

  return result;
}

EQKitVShift *EQKitLayoutManager::baselineAlignBox(void *a1, void *a2, int a3)
{
  v4 = 0.0;
  if (a3 <= 2)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        [a2 height];
        v4 = -v15;
      }

      else if (a3 == 2)
      {
        [a2 vsize];
        v7 = v6 * 0.5;
        [a2 height];
        v9 = a1[37];
        if (v9)
        {
          v10 = *(a1[33] + 8 * ((v9 + a1[36] - 1) / 0x1AuLL)) + 152 * ((v9 + a1[36] - 1) % 0x1AuLL);
        }

        else
        {
          v10 = (a1 + 7);
        }

        v16 = v7 - v8;
        if ((*(v10 + 120) & 2) != 0)
        {
          v17 = *(v10 + 136);
        }

        else
        {
          v17 = EQKitLayoutContext::pComputeMathAxis(v10);
        }

        v4 = v16 + v17;
      }

      goto LABEL_17;
    }

LABEL_8:
    [a2 vsize];
    v12 = v11 * 0.5;
    [a2 height];
    v4 = v12 - v13;
    goto LABEL_17;
  }

  if ((a3 - 3) < 2)
  {
    goto LABEL_8;
  }

  if (a3 == 5)
  {
    [a2 depth];
    v4 = v14;
  }

LABEL_17:
  v18 = [[EQKitVShift alloc] initWithBox:a2 offset:v4];

  return v18;
}

uint64_t EQKitLayoutManager::layoutStack@<X0>(EQKitLayoutManager *this@<X0>, const EQKit::Layout::Schemata *a2@<X1>, double a3@<D0>, double *a4@<X4>, uint64_t a5@<X2>, uint64_t a6@<X3>, EQKit::ILayout *a7@<X8>)
{
  v13 = EQKit::Layout::Schemata::stackSchemata(a2);
  EQKitLayoutElementaryStack::EQKitLayoutElementaryStack(v18, this, v13, a5, a6, a3);
  std::deque<EQKitLayoutElementaryStack>::push_back(this + 64, v18);
  EQKitLayoutElementaryStack::~EQKitLayoutElementaryStack(v18);
  v14 = *(this + 69) + *(this + 68) - 1;
  v15 = (*(*(this + 65) + 8 * (v14 / 0x18)) + 168 * (v14 % 0x18));
  EQKitLayoutElementaryStack::layout(v15, a7);
  v16 = EQKitLayoutElementaryStack::baselineForRowAtIndex(v15, 2uLL);
  *a4 = v16 - EQKitLayoutElementaryStack::baselineForRowAtIndex(v15, 1uLL);
  return std::deque<EQKitLayoutElementaryStack>::pop_back(this + 64);
}

void sub_25826E9A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  EQKitLayoutElementaryStack::~EQKitLayoutElementaryStack(va);
  _Unwind_Resume(a1);
}

void EQKitLayoutTable::~EQKitLayoutTable(EQKitLayoutTable *this)
{
  *this = &unk_28696A928;
  v4 = (this + 64);
  std::vector<EQKitLayoutTable::LayoutRow>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    *(this + 3) = v3;
    operator delete(v3);
  }
}

{
  EQKitLayoutTable::~EQKitLayoutTable(this);

  JUMPOUT(0x259C7CB70);
}

uint64_t std::deque<EQKitLayoutTable>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0x2A];
    v7 = v2[(a1[5] + v5) / 0x2A] + 96 * ((a1[5] + v5) % 0x2A);
    if (*v6 + 96 * (v5 % 0x2A) != v7)
    {
      v8 = (*v6 + 96 * (v5 % 0x2A));
      do
      {
        v9 = *v8;
        v8 += 12;
        (*v9)();
        if (v8 - *v6 == 4032)
        {
          v10 = v6[1];
          ++v6;
          v8 = v10;
        }
      }

      while (v8 != v7);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v11 = v3 - v2;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v11 = v3 - v2;
    }

    while (v11 > 2);
  }

  if (v11 == 1)
  {
    v12 = 21;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_17;
    }

    v12 = 42;
  }

  a1[4] = v12;
LABEL_17:
  while (v2 != v3)
  {
    v13 = *v2++;
    operator delete(v13);
  }

  return std::__split_buffer<EQKitLayoutTable *>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<EQKitLayoutTable *>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t std::deque<EQKitLayoutElementaryStack>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0x18];
    v7 = (*v6 + 168 * (v5 % 0x18));
    v8 = v2[(a1[5] + v5) / 0x18] + 168 * ((a1[5] + v5) % 0x18);
    if (v7 != v8)
    {
      do
      {
        EQKitLayoutElementaryStack::~EQKitLayoutElementaryStack(v7);
        v7 = (v9 + 168);
        if (v7 - *v6 == 4032)
        {
          v10 = v6[1];
          ++v6;
          v7 = v10;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v11 = v3 - v2;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v11 = v3 - v2;
    }

    while (v11 > 2);
  }

  if (v11 == 1)
  {
    v12 = 12;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_16;
    }

    v12 = 24;
  }

  a1[4] = v12;
LABEL_16:
  while (v2 != v3)
  {
    v13 = *v2++;
    operator delete(v13);
  }

  return std::__split_buffer<EQKitLayoutTable *>::~__split_buffer(a1);
}

uint64_t std::deque<objc_object  {objcproto15EQKitLayoutNode}*>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 512;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<EQKitLayoutTable *>::~__split_buffer(a1);
}

uint64_t std::deque<EQKitLayoutRow>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0x19];
    v7 = (*v6 + 160 * (v5 % 0x19));
    v8 = v2[(a1[5] + v5) / 0x19] + 160 * ((a1[5] + v5) % 0x19);
    if (v7 != v8)
    {
      do
      {
        EQKitLayoutRow::~EQKitLayoutRow(v7);
        v7 = (v9 + 160);
        if (v7 - *v6 == 4000)
        {
          v10 = v6[1];
          ++v6;
          v7 = v10;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v11 = v3 - v2;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v11 = v3 - v2;
    }

    while (v11 > 2);
  }

  if (v11 == 1)
  {
    v12 = 12;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_16;
    }

    v12 = 25;
  }

  a1[4] = v12;
LABEL_16:
  while (v2 != v3)
  {
    v13 = *v2++;
    operator delete(v13);
  }

  return std::__split_buffer<EQKitLayoutTable *>::~__split_buffer(a1);
}

uint64_t std::deque<EQKitLayoutContext>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0x1A];
    v7 = v2[(a1[5] + v5) / 0x1A] + 152 * ((a1[5] + v5) % 0x1A);
    if (*v6 + 152 * (v5 % 0x1A) != v7)
    {
      v8 = (*v6 + 152 * (v5 % 0x1A));
      do
      {
        v9 = *v8;
        v8 += 19;
        (*v9)();
        if (v8 - *v6 == 3952)
        {
          v10 = v6[1];
          ++v6;
          v8 = v10;
        }
      }

      while (v8 != v7);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v11 = v3 - v2;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v11 = v3 - v2;
    }

    while (v11 > 2);
  }

  if (v11 == 1)
  {
    v12 = 13;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_17;
    }

    v12 = 26;
  }

  a1[4] = v12;
LABEL_17:
  while (v2 != v3)
  {
    v13 = *v2++;
    operator delete(v13);
  }

  return std::__split_buffer<EQKitLayoutTable *>::~__split_buffer(a1);
}

uint64_t EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v7 = std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>::find<EQKitTypes::Attributes::Enum>(a2, a3);
  v8 = v7;
  if (a2 + 8 != v7)
  {
    v9 = *(v7 + 48);
LABEL_3:
    *a4 = v9;
    return 1;
  }

  result = [*a3 isAttributeDefaultInheritableFromStyle:*(a3 + 8)];
  if (result)
  {
    result = [*a3 parent];
    if (result)
    {
      v11 = result;
      while (1)
      {
        v12 = [v11 layoutStyleNode];
        if (v12)
        {
          v14 = v12;
          v15 = *(a3 + 8);
          v13 = std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>::find<EQKitTypes::Attributes::Enum>(a2, &v14);
          if (v8 != v13)
          {
            break;
          }
        }

        result = [v11 parent];
        v11 = result;
        if (!result)
        {
          return result;
        }
      }

      v9 = *(v13 + 48);
      goto LABEL_3;
    }
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>::find<EQKitTypes::Attributes::Enum>(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v2 = a1 + 8;
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v5 = *a2;
  v6 = *(a2 + 2);
  v7 = v2;
  do
  {
    v8 = *(v3 + 32);
    if (v5 == v8)
    {
      v9 = *(v3 + 40) < v6;
    }

    else
    {
      v9 = v8 < v5;
    }

    v10 = !v9;
    if (v9)
    {
      v11 = 8;
    }

    else
    {
      v11 = 0;
    }

    if (v10)
    {
      v7 = v3;
    }

    v3 = *(v3 + v11);
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v12 = *(v7 + 32);
  v13 = v6 < *(v7 + 40);
  v14 = v12 == v5 ? v13 : v5 < v12;
  if (v14 == 1)
  {
    return v2;
  }

  return v7;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<objc_object  {objcproto15EQKitLayoutNode}*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::string,std::less<EQKitTypes::Attributes::Enum>,std::char_traits<char><std::pair<EQKitTypes::Attributes::Enum const>>>>(uint64_t a1, uint64_t a2, uint64_t a3, std::string *a4)
{
  v7 = std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>::find<EQKitTypes::Attributes::Enum>(a2, a3);
  v8 = v7;
  if (a2 + 8 != v7)
  {
    v9 = (v7 + 48);
LABEL_3:
    std::string::operator=(a4, v9);
    return 1;
  }

  result = [*a3 isAttributeDefaultInheritableFromStyle:*(a3 + 8)];
  if (result)
  {
    result = [*a3 parent];
    if (result)
    {
      v11 = result;
      while (1)
      {
        v12 = [v11 layoutStyleNode];
        if (v12)
        {
          v14 = v12;
          v15 = *(a3 + 8);
          v13 = std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>::find<EQKitTypes::Attributes::Enum>(a2, &v14);
          if (v8 != v13)
          {
            break;
          }
        }

        result = [v11 parent];
        v11 = result;
        if (!result)
        {
          return result;
        }
      }

      v9 = (v13 + 48);
      goto LABEL_3;
    }
  }

  return result;
}

uint64_t EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,unsigned short>>(uint64_t a1, uint64_t a2, uint64_t a3, _WORD *a4)
{
  v7 = std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>::find<EQKitTypes::Attributes::Enum>(a2, a3);
  v8 = v7;
  if (a2 + 8 != v7)
  {
    v9 = *(v7 + 48);
LABEL_3:
    *a4 = v9;
    return 1;
  }

  result = [*a3 isAttributeDefaultInheritableFromStyle:*(a3 + 8)];
  if (result)
  {
    result = [*a3 parent];
    if (result)
    {
      v11 = result;
      while (1)
      {
        v12 = [v11 layoutStyleNode];
        if (v12)
        {
          v14 = v12;
          v15 = *(a3 + 8);
          v13 = std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>::find<EQKitTypes::Attributes::Enum>(a2, &v14);
          if (v8 != v13)
          {
            break;
          }
        }

        result = [v11 parent];
        v11 = result;
        if (!result)
        {
          return result;
        }
      }

      v9 = *(v13 + 48);
      goto LABEL_3;
    }
  }

  return result;
}

uint64_t EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,EQKitPseudoUnitLength>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>::find<EQKitTypes::Attributes::Enum>(a2, a3);
  v8 = v7;
  if (a2 + 8 != v7)
  {
    *a4 = *(v7 + 48);
    *(a4 + 8) = *(v7 + 56);
    v9 = *(v7 + 64);
LABEL_3:
    *(a4 + 16) = v9;
    return 1;
  }

  result = [*a3 isAttributeDefaultInheritableFromStyle:*(a3 + 8)];
  if (result)
  {
    result = [*a3 parent];
    if (result)
    {
      v11 = result;
      while (1)
      {
        v12 = [v11 layoutStyleNode];
        if (v12)
        {
          v14 = v12;
          v15 = *(a3 + 8);
          v13 = std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>::find<EQKitTypes::Attributes::Enum>(a2, &v14);
          if (v8 != v13)
          {
            break;
          }
        }

        result = [v11 parent];
        v11 = result;
        if (!result)
        {
          return result;
        }
      }

      *a4 = *(v13 + 48);
      *(a4 + 8) = *(v13 + 56);
      v9 = *(v13 + 64);
      goto LABEL_3;
    }
  }

  return result;
}

uint64_t EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::vector<objc_object  {objcproto15EQKitLayoutNode}*::Notation::Enum>,std::less<EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Notation::Enum<std::pair<EQKitTypes::Attributes::Enum const>>>>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>::find<EQKitTypes::Attributes::Enum>(a2, a3);
  v8 = v7;
  if (a2 + 8 != v7)
  {
    if ((v7 + 48) == a4)
    {
      return 1;
    }

    v9 = *(v7 + 48);
    v10 = *(v7 + 56);
LABEL_4:
    std::vector<EQKitTypes::Notation::Enum>::__assign_with_size[abi:ne200100]<EQKitTypes::Notation::Enum*,EQKitTypes::Notation::Enum*>(a4, v9, v10, (v10 - v9) >> 2);
    return 1;
  }

  result = [*a3 isAttributeDefaultInheritableFromStyle:*(a3 + 8)];
  if (result)
  {
    result = [*a3 parent];
    if (result)
    {
      v12 = result;
      while (1)
      {
        v13 = [v12 layoutStyleNode];
        if (v13)
        {
          v15 = v13;
          v16 = *(a3 + 8);
          v14 = std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>::find<EQKitTypes::Attributes::Enum>(a2, &v15);
          if (v8 != v14)
          {
            break;
          }
        }

        result = [v12 parent];
        v12 = result;
        if (!result)
        {
          return result;
        }
      }

      if ((v14 + 48) == a4)
      {
        return 1;
      }

      v9 = *(v14 + 48);
      v10 = *(v14 + 56);
      goto LABEL_4;
    }
  }

  return result;
}

void *std::vector<EQKitTypes::Notation::Enum>::__assign_with_size[abi:ne200100]<EQKitTypes::Notation::Enum*,EQKitTypes::Notation::Enum*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<EQKitTypes::Notation::Enum>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void std::vector<EQKitTypes::Notation::Enum>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<wchar_t>>(a1, a2);
  }

  std::vector<std::string>::__throw_length_error[abi:ne200100]();
}

uint64_t EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::vector<std::string,std::char_traits<char><std::allocator<char>>>,std::less<EQKitTypes::Attributes::Enum>,std::char_traits<char><std::pair<EQKitTypes::Attributes::Enum const,std::char_traits<char><std::allocator<char>>>>>>(uint64_t a1, uint64_t a2, uint64_t a3, std::vector<std::wstring> *a4)
{
  v7 = std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>::find<EQKitTypes::Attributes::Enum>(a2, a3);
  v8 = v7;
  if (a2 + 8 != v7)
  {
    if ((v7 + 48) == a4)
    {
      return 1;
    }

    v9 = *(v7 + 48);
    v10 = *(v7 + 56);
LABEL_4:
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(a4, v9, v10, 0xAAAAAAAAAAAAAAABLL * ((v10 - v9) >> 3));
    return 1;
  }

  result = [*a3 isAttributeDefaultInheritableFromStyle:*(a3 + 8)];
  if (result)
  {
    result = [*a3 parent];
    if (result)
    {
      v12 = result;
      while (1)
      {
        v13 = [v12 layoutStyleNode];
        if (v13)
        {
          v15 = v13;
          v16 = *(a3 + 8);
          v14 = std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>::find<EQKitTypes::Attributes::Enum>(a2, &v15);
          if (v8 != v14)
          {
            break;
          }
        }

        result = [v12 parent];
        v12 = result;
        if (!result)
        {
          return result;
        }
      }

      if ((v14 + 48) == a4)
      {
        return 1;
      }

      v9 = *(v14 + 48);
      v10 = *(v14 + 56);
      goto LABEL_4;
    }
  }

  return result;
}

void std::vector<EQKitLayoutTable::LayoutRow>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<EQKitLayoutTable::LayoutRow>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<EQKitLayoutTable::LayoutRow>::clear[abi:ne200100](void ***a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = v2 - 3;
    do
    {
      v8 = v4;
      std::vector<EQKitLayoutTable::LayoutCell>::__destroy_vector::operator()[abi:ne200100](&v8);
      v5 = *(v4 - 4);
      if (v5)
      {
        *(v4 - 3) = v5;
        operator delete(v5);
      }

      v6 = *(v4 - 7);
      if (v6)
      {
        *(v4 - 6) = v6;
        operator delete(v6);
      }

      v7 = v4 - 7;
      v4 -= 10;
    }

    while (v7 != v3);
  }

  a1[1] = v3;
}

void std::vector<EQKitLayoutTable::LayoutCell>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<EQKitLayoutTable::LayoutCell>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<EQKitLayoutTable::LayoutCell>::clear[abi:ne200100](char **a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = (v2 - 56);
    do
    {
      EQKit::ILayout::~ILayout(v4);
      EQKitLayoutRow::~EQKitLayoutRow((v4 - 160));
      v5 = *(v4 - 25);
      if (v5)
      {
        *(v4 - 24) = v5;
        operator delete(v5);
      }

      v6 = *(v4 - 28);
      if (v6)
      {
        *(v4 - 27) = v6;
        operator delete(v6);
      }

      v7 = v4 - 224;
      v4 = (v4 - 280);
    }

    while (v7 != v3);
  }

  a1[1] = v3;
}

uint64_t EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,EQKitLength>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>::find<EQKitTypes::Attributes::Enum>(a2, a3);
  v8 = v7;
  if (a2 + 8 != v7)
  {
    *a4 = *(v7 + 48);
    v9 = *(v7 + 56);
LABEL_3:
    *(a4 + 8) = v9;
    return 1;
  }

  result = [*a3 isAttributeDefaultInheritableFromStyle:*(a3 + 8)];
  if (result)
  {
    result = [*a3 parent];
    if (result)
    {
      v11 = result;
      while (1)
      {
        v12 = [v11 layoutStyleNode];
        if (v12)
        {
          v14 = v12;
          v15 = *(a3 + 8);
          v13 = std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>::find<EQKitTypes::Attributes::Enum>(a2, &v14);
          if (v8 != v13)
          {
            break;
          }
        }

        result = [v11 parent];
        v11 = result;
        if (!result)
        {
          return result;
        }
      }

      *a4 = *(v13 + 48);
      v9 = *(v13 + 56);
      goto LABEL_3;
    }
  }

  return result;
}

uint64_t std::vector<EQKit::ILayout>::__init_with_size[abi:ne200100]<EQKit::ILayout*,EQKit::ILayout*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<EQKit::ILayout>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25826FB78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<EQKit::ILayout>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<EQKit::ILayout>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<EQKit::ILayout>>(a1, a2);
  }

  std::vector<std::string>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<EQKit::ILayout>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

EQKit::ILayout *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<EQKit::ILayout>,EQKit::ILayout*,EQKit::ILayout*,EQKit::ILayout*>(int a1, EQKit::ILayout *a2, EQKit::ILayout *a3, EQKit::ILayout *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      EQKit::ILayout::ILayout(this, v6);
      v6 = (v6 + 56);
      this = (this + 56);
      v7 -= 56;
    }

    while (v6 != a3);
  }

  return this;
}

void sub_25826FCA4(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 56);
    do
    {
      EQKit::ILayout::~ILayout(v4);
      v4 = (v5 - 56);
      v2 += 56;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<EQKit::ILayout>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        EQKit::ILayout::~ILayout((v4 - 56));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

EQKitLayoutContext *std::deque<EQKitLayoutContext>::push_back(void *a1, EQKitLayoutContext *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 26 * ((v5 - v4) >> 3) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<EQKitLayoutContext>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = (*(v4 + 8 * (v7 / 0x1A)) + 152 * (v7 % 0x1A));
  }

  result = EQKitLayoutContext::EQKitLayoutContext(v8, a2);
  ++a1[5];
  return result;
}

void *std::deque<EQKitLayoutContext>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x1A;
  v3 = v1 - 26;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<EQKitLayoutContext *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<EQKitLayoutContext *>::emplace_back<EQKitLayoutContext *&>(a1, &v10);
}

void sub_25826FF8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<EQKitLayoutContext *>::emplace_back<EQKitLayoutContext *&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<EQKitLayoutContext *>>(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<EQKitLayoutContext *>::emplace_front<EQKitLayoutContext *>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<EQKitLayoutContext *>>(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *std::__split_buffer<EQKitLayoutContext *>::emplace_back<EQKitLayoutContext *>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<EQKitLayoutContext *>>(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<EQKitLayoutContext *>::emplace_front<EQKitLayoutContext *&>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<EQKitLayoutContext *>>(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<EQKitLayoutContext *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::deque<EQKitLayoutContext>::pop_back(void *a1)
{
  v2 = a1[5] + a1[4] - 1;
  (**(*(a1[1] + 8 * (v2 / 0x1A)) + 152 * (v2 % 0x1A)))();
  --a1[5];

  return std::deque<EQKitLayoutContext>::__maybe_remove_back_spare[abi:ne200100](a1, 1);
}

uint64_t std::deque<EQKitLayoutContext>::__maybe_remove_back_spare[abi:ne200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 26 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x1A)
  {
    a2 = 1;
  }

  if (v5 < 0x34)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}