void sub_1D0B7C308(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_1D0B7CAB8(a11);
  }

  if (a13)
  {
    sub_1D0B7CAB8(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0B7C32C(uint64_t a1)
{
  *a1 = &unk_1F4CD55D8;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  v2 = MEMORY[0x1E69E54A8];
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = v2;
  sub_1D0B751F4((a1 + 48), &unk_1D0ED80C5);
  *(a1 + 8) = 1;
  sub_1D0B7C51C();
}

void sub_1D0B7C468(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*v2)
  {
    (*(**v2 + 8))(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0B7C4C0(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F4CDF5E0;
  sub_1D0B7C32C((a1 + 3));
}

void cnframework::Supervisor::RaiseEvent(uint64_t a1, char **a2, uint64_t a3)
{
  v5 = *a2;
  if (COERCE__INT64(fabs(*(*a2 + 5) + *(*a2 + 4))) < 0x7FF0000000000000)
  {
    std::mutex::lock((a1 + 416));
    if (*(a1 + 408))
    {
      std::mutex::lock((a1 + 344));
      if (!*(a1 + 320) || (*__p = *(*a2 + 2), sub_1D0B7C8AC((a1 + 328), __p)))
      {
        *(a1 + 320) = 1;
        *(a1 + 328) = *(*a2 + 2);
      }

      std::mutex::unlock((a1 + 344));
      std::recursive_mutex::lock((a1 + 256));
      v18 = *(a1 + 232);
      for (i = *(a1 + 240); v18 != i; ++v18)
      {
        v20 = *v18;
        v21 = a2[1];
        v31[0] = *a2;
        v31[1] = v21;
        if (v21)
        {
          atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        cnframework::ActiveObjectBase::ReceiveEvent(v20, v31, a3, v13, v14, v15, v16, v17);
        if (v21)
        {
          sub_1D0B7CAB8(v21);
        }
      }

      std::recursive_mutex::unlock((a1 + 256));
      std::mutex::unlock((a1 + 416));
      std::recursive_mutex::lock((a1 + 256));
      do
      {
        v24 = *(a1 + 232);
        v25 = *(a1 + 240);
        if (v24 == v25)
        {
          break;
        }

        v26 = 0;
        do
        {
          v27 = *v24;
          v28 = *(*v24 + 18);
          *(*v24 + 18) = v28 + 1;
          if (v28 <= 0)
          {
            IsNeeded = cnframework::ActiveObjectBase::HandleNextEventAndDetermineIfMoreWorkIsNeeded(v27, v22, v23);
            v28 = *(v27 + 18) - 1;
            v26 |= IsNeeded != 0;
          }

          *(v27 + 18) = v28;
          ++v24;
        }

        while (v24 != v25);
      }

      while ((v26 & 1) != 0);
      std::recursive_mutex::unlock((a1 + 256));
    }

    else
    {

      std::mutex::unlock((a1 + 416));
    }
  }

  else
  {
    v35 = 3;
    v34 = 4;
    cnframework::GenericEvent::GetEventName(v5, __p);
    LOBYTE(v11) = __p[0];
    if (v33 >= 0)
    {
      v11 = __p;
    }

    v30 = *(*a2 + 5) + *(*a2 + 4);
    cnprint::CNPrinter::Print(&v35, &v34, "Supervisor::RaiseEvent() called with event type %s with invalid timestamp %.3lf.", v6, v7, v8, v9, v10, v11);
    if (v33 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

BOOL sub_1D0B7C8AC(double *a1, double *a2)
{
  v2 = *a1;
  if (*a1 || (v3 = a1[1], (*&v3 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000))
  {
    v4 = *a2;
    if (!*a2 && (a2[1] & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      return a1[1] < a2[1];
    }

    if (*&v2 != *&v4)
    {
      return *&v2 < *&v4;
    }

    v3 = a1[1];
  }

  return v3 < a2[1];
}

void cnframework::ActiveObjectBase::ReceiveEvent(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *v19 = *(*a2 + 32);
  if (!*(a1 + 105) || sub_1D0B7CF88(v19, (a1 + 112)))
  {
    *(a1 + 105) = 1;
    *(a1 + 112) = *v19;
  }

  if (*(*a2 + 8) == 1)
  {
    v11 = *(*a2 + 24);
  }

  else
  {
    v21 = 3;
    v20 = 5;
    cnprint::CNPrinter::Print(&v21, &v20, "Attempted to access type of uninitialized GenericEvent.", a4, a5, a6, a7, a8, v18);
    v11 = MEMORY[0x1E69E54A8];
  }

  v12 = *(a1 + 8);
  v13 = *(a1 + 16);
  while (v12 != v13)
  {
    if ((sub_1D0B7CA64(*(v12 + 8), v11) || *v12 == 1) && (*(v12 + 24) == a3 || *(v12 + 16) == 1))
    {
      v16 = *a2;
      v17 = a2[1];
      *&v18 = v16;
      *(&v18 + 1) = v17;
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      cnframework::ActiveObjectBase::AddEventToEventQueue(a1, &v18, v14, v15);
      if (v17)
      {
        sub_1D0B7CAB8(v17);
      }

      return;
    }

    v12 += 32;
  }
}

void sub_1D0B7CA4C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1D0B7CAB8(v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1D0B7CA64(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void sub_1D0B7CAB8(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t cnframework::ActiveObjectBase::AddEventToEventQueue(uint64_t a1, __int128 *a2, int8x16_t a3, int8x16_t a4)
{
  v5 = a1;
  if (*(a1 + 208) != 1)
  {
    goto LABEL_14;
  }

  *__p = *(*a2 + 32);
  v59 = CNTimeSpan::operator+(__p, (a1 + 160), *__p, a4);
  v60 = v6;
  a1 = sub_1D0B7C8AC(&v59, (v5 + 112));
  if (!a1)
  {
    goto LABEL_14;
  }

  v12 = *(v5 + 80);
  v13 = *(v5 + 88);
  if (v12 != v13)
  {
    v14 = MEMORY[0x1E69E54A8];
    while (1)
    {
      v15 = *v12;
      if (*(*a2 + 8) == 1)
      {
        v16 = *(*a2 + 24);
      }

      else
      {
        LOWORD(v59) = 3;
        LOBYTE(__p[0]) = 5;
        cnprint::CNPrinter::Print(&v59, __p, "Attempted to access type of uninitialized GenericEvent.", v7, v8, v9, v10, v11, v52);
        v16 = v14;
      }

      a1 = sub_1D0B7CA64(v15, v16);
      if (a1)
      {
        break;
      }

      v12 += 2;
      if (v12 == v13)
      {
        v12 = v13;
        break;
      }
    }

    v13 = *(v5 + 88);
  }

  if (v12 == v13)
  {
    goto LABEL_43;
  }

  *__p = *(*a2 + 32);
  v17.i64[1] = __p[1];
  v17.i64[0] = v12[1];
  v62[0] = 0;
  v62[1] = 0;
  *v18.i64 = CNTimeSpan::SetTimeSpan(v62, 0, v17, a4);
  v59 = CNTimeSpan::operator+(__p, v62, v18, v19);
  v60 = v20;
  a1 = sub_1D0B8E6A8(&v59, (v5 + 112));
  if ((a1 & 1) == 0)
  {
LABEL_43:
    ++*(v5 + 152);
    v21 = 1;
  }

  else
  {
LABEL_14:
    v21 = 0;
  }

  if (*(v5 + 152) && ((a1 = CNTimeSpan::operator-((v5 + 112), (v5 + 136), a3, a4), *(v5 + 128) != 1) || v22 + a1 >= 1.0))
  {
    LOWORD(__p[0]) = 3;
    LOBYTE(v62[0]) = 3;
    v31 = *(v5 + 120) + *(v5 + 112);
    (*(*v5 + 16))(&v59, v5);
    v54 = *(v5 + 152);
    cnprint::CNPrinter::Print(__p, v62, "Warning: time,%.3lf,%s dropped %llu latent event(s) in the past %.1lf second(s)", v32, v33, v34, v35, v36, SLOBYTE(v31));
    if (v61 < 0)
    {
      operator delete(v59);
    }

    *(v5 + 128) = 1;
    *(v5 + 136) = *(v5 + 112);
    *(v5 + 152) = 0;
    if (v21)
    {
      goto LABEL_19;
    }
  }

  else if (v21)
  {
LABEL_19:
    if (!cnprint::CNPrinter::GetLogLevel(a1))
    {
      LOWORD(v62[0]) = 3;
      v58 = 0;
      (*(*v5 + 16))(&v59, v5);
      v23 = v61;
      v24 = v59;
      cnframework::GenericEvent::GetEventName(*a2, __p);
      if (v23 >= 0)
      {
        v30 = &v59;
      }

      else
      {
        LOBYTE(v30) = v24;
      }

      v53 = *(*a2 + 40) + *(*a2 + 32);
      v55 = *(v5 + 120) + *(v5 + 112);
      cnprint::CNPrinter::Print(v62, &v58, "Warning: %s dropping old %s with time %.3lf at time %.3lf", v25, v26, v27, v28, v29, v30);
      if (v57 < 0)
      {
        operator delete(__p[0]);
      }

      if (v61 < 0)
      {
        operator delete(v59);
      }
    }

    return v21 ^ 1u;
  }

  v37 = *(v5 + 184);
  v38 = *(v5 + 192);
  if (v37 >= v38)
  {
    v41 = *(v5 + 176);
    v42 = (v37 - v41) >> 4;
    v43 = v42 + 1;
    if ((v42 + 1) >> 60)
    {
      sub_1D0C5663C();
    }

    v44 = v38 - v41;
    if (v44 >> 3 > v43)
    {
      v43 = v44 >> 3;
    }

    if (v44 >= 0x7FFFFFFFFFFFFFF0)
    {
      v45 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v45 = v43;
    }

    if (v45)
    {
      if (!(v45 >> 60))
      {
        operator new();
      }

      sub_1D0C54BE8();
    }

    v46 = 16 * v42;
    v47 = *a2;
    *(16 * v42) = *a2;
    if (*(&v47 + 1))
    {
      atomic_fetch_add_explicit((*(&v47 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v40 = v46 + 16;
    v48 = *(v5 + 176);
    v49 = *(v5 + 184) - v48;
    v50 = v46 - v49;
    memcpy((v46 - v49), v48, v49);
    *(v5 + 176) = v50;
    *(v5 + 184) = v40;
    *(v5 + 192) = 0;
    if (v48)
    {
      operator delete(v48);
    }
  }

  else
  {
    *v37 = *a2;
    v39 = *(a2 + 1);
    v37[1] = v39;
    if (v39)
    {
      atomic_fetch_add_explicit((v39 + 8), 1uLL, memory_order_relaxed);
    }

    v40 = (v37 + 2);
  }

  *(v5 + 184) = v40;
  sub_1D0B7CFF0(*(v5 + 176), v40, (v40 - *(v5 + 176)) >> 4);
  return v21 ^ 1u;
}

void sub_1D0B7CF50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1D0B7CF88(double *a1, double *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    v3 = a1[1];
    if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      goto LABEL_8;
    }
  }

  v4 = *a2;
  if (!*a2 && (a2[1] & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v5 = a1[1] <= a2[1];
    return !v5;
  }

  v5 = *&v2 <= *&v4;
  if (*&v2 == *&v4)
  {
    v3 = a1[1];
LABEL_8:
    v5 = v3 <= a2[1];
  }

  return !v5;
}

void sub_1D0B7CFF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3 - 2;
  if (a3 < 2)
  {
    return;
  }

  v6 = v3 >> 1;
  v7 = (a1 + 16 * (v3 >> 1));
  v8 = *v7;
  v9 = v7[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *(a2 - 16);
  v11 = *(a2 - 8);
  v12 = (a2 - 16);
  if (!v11)
  {
    v13 = cnframework::GenericEvent::operator>(v8, v10);
    if (!v9)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v13 = cnframework::GenericEvent::operator>(v8, v10);
  sub_1D0B7CAB8(v11);
  if (v9)
  {
LABEL_6:
    sub_1D0B7CAB8(v9);
  }

LABEL_7:
  if (!v13)
  {
    return;
  }

  v14 = *(a2 - 16);
  v15 = *(a2 - 8);
  *v12 = 0;
  v12[1] = 0;
  do
  {
    v16 = v12;
    v12 = v7;
    v17 = *v7;
    *v7 = 0;
    v7[1] = 0;
    v18 = v16[1];
    *v16 = v17;
    if (v18)
    {
      sub_1D0B7CAB8(v18);
    }

    if (!v6)
    {
      break;
    }

    v6 = (v6 - 1) >> 1;
    v7 = (a1 + 16 * v6);
    v19 = *v7;
    v20 = v7[1];
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!v15)
    {
      v21 = cnframework::GenericEvent::operator>(v19, v14);
      if (!v20)
      {
        continue;
      }

LABEL_16:
      sub_1D0B7CAB8(v20);
      continue;
    }

    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    v21 = cnframework::GenericEvent::operator>(v19, v14);
    sub_1D0B7CAB8(v15);
    if (v20)
    {
      goto LABEL_16;
    }
  }

  while (v21);
  v22 = v12[1];
  *v12 = v14;
  v12[1] = v15;
  if (v22)
  {

    sub_1D0B7CAB8(v22);
  }
}

uint64_t cnframework::ActiveObjectBase::HandleNextEventAndDetermineIfMoreWorkIsNeeded(cnframework::ActiveObjectBase *this, int8x16_t a2, int8x16_t a3)
{
  v63 = *MEMORY[0x1E69E9840];
  v3 = *(this + 22);
  v4 = *(this + 23);
  if (v3 == v4)
  {
    goto LABEL_14;
  }

  v6 = *(this + 52);
  if (v6 != 1)
  {
    if (!v6)
    {
      v7 = *v3;
      goto LABEL_16;
    }

LABEL_14:
    result = 0;
    goto LABEL_58;
  }

  v7 = *v3;
  v8 = *(*v3 + 32);
  v9 = *(*v3 + 40);
  v10 = CNTimeSpan::operator-(this + 14, this + 20, a2, a3);
  if (v8)
  {
    v12 = 1;
  }

  else
  {
    v12 = (*&v9 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
  }

  if (v12 && (v10 || (*&v11 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) && v8 != v10)
  {
    if (v8 >= v10)
    {
      goto LABEL_14;
    }
  }

  else if (v9 > v11)
  {
    goto LABEL_14;
  }

LABEL_16:
  v14 = *(v3 + 1);
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    v3 = *(this + 22);
    v4 = *(this + 23);
  }

  v15 = (v4 - v3) >> 4;
  if (v15 >= 2)
  {
    v53 = v4;
    v54 = v7;
    v55 = v14;
    v16 = 0;
    v51 = *v3;
    v52 = *(v3 + 1);
    v17 = v3;
    *v3 = 0;
    *(v3 + 1) = 0;
    v50 = v3;
    while (1)
    {
      v18 = &v17[2 * v16 + 2];
      v19 = 2 * v16;
      v16 = (2 * v16) | 1;
      v20 = v19 + 2;
      if (v19 + 2 < v15)
      {
        v21 = *v18;
        v22 = v18[1];
        if (v22)
        {
          atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v23 = v18[2];
        v24 = v18[3];
        if (v24)
        {
          atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
          v25 = cnframework::GenericEvent::operator>(v21, v23);
          sub_1D0B7CAB8(v24);
          if (!v22)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v25 = cnframework::GenericEvent::operator>(v21, v23);
          if (!v22)
          {
LABEL_32:
            if (!v25)
            {
              goto LABEL_27;
            }

LABEL_26:
            v18 += 2;
            v16 = v20;
            goto LABEL_27;
          }
        }

        sub_1D0B7CAB8(v22);
        if (v25)
        {
          goto LABEL_26;
        }
      }

LABEL_27:
      v26 = *v18;
      *v18 = 0;
      v18[1] = 0;
      v27 = v17[1];
      *v17 = v26;
      if (v27)
      {
        sub_1D0B7CAB8(v27);
      }

      v17 = v18;
      if (v16 > ((v15 - 2) >> 1))
      {
        if (v53 - 16 == v18)
        {
          v31 = v18[1];
          *v18 = v51;
          v18[1] = v52;
          v7 = v54;
          v14 = v55;
          if (v31)
          {
            sub_1D0B7CAB8(v31);
          }
        }

        else
        {
          v28 = *(v53 - 1);
          *(v53 - 2) = 0;
          *(v53 - 1) = 0;
          v29 = v18[1];
          *v18 = v28;
          v7 = v54;
          if (v29)
          {
            sub_1D0B7CAB8(v29);
          }

          v30 = *(v53 - 1);
          *(v53 - 2) = v51;
          *(v53 - 1) = v52;
          v14 = v55;
          if (v30)
          {
            sub_1D0B7CAB8(v30);
          }

          sub_1D0B7CFF0(v50, (v18 + 2), (v18 - v50 + 16) >> 4);
        }

        break;
      }
    }
  }

  v32 = *(this + 23);
  v33 = *(v32 - 8);
  if (v33)
  {
    sub_1D0B7CAB8(v33);
  }

  *(this + 23) = v32 - 16;
  if (!v7 || *(v7 + 8) != 1)
  {
    LOWORD(v56[0]) = 3;
    LOBYTE(v59) = 4;
    (*(*this + 16))(__p, this);
    if (v61 >= 0)
    {
      v40 = __p;
    }

    else
    {
      LOBYTE(v40) = __p[0];
    }

    cnprint::CNPrinter::Print(v56, &v59, "%s received empty event; dropping.", v35, v36, v37, v38, v39, v40);
LABEL_53:
    if (v61 < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_55;
  }

  __p[0] = *(v7 + 24);
  v34 = sub_1D0B7D618(this + 4, __p);
  if (!v34)
  {
    v59 = 3;
    v58 = 5;
    (*(*this + 16))(__p, this);
    v42 = v61;
    v43 = __p[0];
    cnframework::GenericEvent::GetEventName(v7, v56);
    v49 = __p;
    if (v42 < 0)
    {
      LOBYTE(v49) = v43;
    }

    cnprint::CNPrinter::Print(&v59, &v58, "%s has no event handler defined for event type %s.  Dropping event.", v44, v45, v46, v47, v48, v49);
    if (v57 < 0)
    {
      operator delete(v56[0]);
    }

    goto LABEL_53;
  }

  sub_1D0B7D72C(__p, (v34 + 3));
  v56[0] = this;
  if (!v62)
  {
    sub_1D0C57820();
  }

  (*(*v62 + 48))(v62, v56, v7);
  sub_1D0B7D7C4(__p);
LABEL_55:
  if (v14)
  {
    sub_1D0B7CAB8(v14);
  }

  result = 2;
LABEL_58:
  v41 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D0B7D5B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (v29)
  {
    sub_1D0B7CAB8(v29);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1D0B7D618(void *a1, uint64_t *a2)
{
  v3 = *(*a2 + 8);
  if ((v3 & 0x8000000000000000) != 0)
  {
    v4 = (v3 & 0x7FFFFFFFFFFFFFFFLL);
    v5 = 5381;
    do
    {
      v3 = v5;
      v6 = *v4++;
      v5 = (33 * v5) ^ v6;
    }

    while (v6);
  }

  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v3;
    if (v3 >= *&v7)
    {
      v10 = v3 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v3;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    do
    {
      v13 = v12[1];
      if (v13 == v3)
      {
        if (sub_1D0B7CA64(v12[2], *a2))
        {
          return v12;
        }
      }

      else
      {
        if (v9 > 1)
        {
          if (v13 >= *&v7)
          {
            v13 %= *&v7;
          }
        }

        else
        {
          v13 &= *&v7 - 1;
        }

        if (v13 != v10)
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

uint64_t sub_1D0B7D72C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_1D0B7D7C4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_1D0B7D844(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Timer::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::Timer *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
    while (1)
    {
      v4 = *(a2 + 1);
      if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v4 + 1;
      }

      if (TagFallback != 10)
      {
        break;
      }

      *(this + 5) |= 1u;
      v6 = *(this + 1);
      if (!v6)
      {
        operator new();
      }

      v14 = 0;
      v7 = *(a2 + 1);
      if (v7 >= *(a2 + 2) || *v7 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v14))
        {
          return 0;
        }
      }

      else
      {
        v14 = *v7;
        *(a2 + 1) = v7 + 1;
      }

      v8 = *(a2 + 14);
      v9 = *(a2 + 15);
      *(a2 + 14) = v8 + 1;
      if (v8 >= v9)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v6, a2) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v10 = *(a2 + 14);
      v11 = __OFSUB__(v10, 1);
      v12 = v10 - 1;
      if (v12 < 0 == v11)
      {
        *(a2 + 14) = v12;
      }

      if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      break;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t raven::RavenSupervisor::RaiseEventsFrom(raven::RavenSupervisor *this, const CoreNavigation::CLP::LogEntry::PrivateData::Timer *a2, raven::TimerEvent *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x16_t a9, int8x16_t a10)
{
  v12 = 0uLL;
  v11 = &unk_1F4CEF300;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0uLL;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0x7FF8000000000000;
  result = raven::ConvertProtobufToTimerEvent(a2, &v11, a3, a4, a5, a6, a7, a8, a9, a10);
  if (result)
  {
    operator new();
  }

  return result;
}

void sub_1D0B7DD14(_Unwind_Exception *a1)
{
  v4 = *(v2 - 48);
  if (v4)
  {
    sub_1D0B7CAB8(v4);
  }

  sub_1D0B7CAB8(v1);
  _Unwind_Resume(a1);
}

uint64_t raven::ConvertProtobufToTimerEvent(raven *this, const CoreNavigation::CLP::LogEntry::PrivateData::Timer *a2, raven::TimerEvent *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x16_t a9, int8x16_t a10)
{
  if ((*(this + 20) & 1) == 0)
  {
    return 0;
  }

  v13 = *(this + 1);
  if (!v13)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
    v13 = *(CoreNavigation::CLP::LogEntry::PrivateData::Timer::default_instance_ + 8);
  }

  return raven::ConvertProtobufToRavenTime(v13, a2 + 8, 0, a4, a5, a6, a7, a8, a9, a10);
}

void cnprint::CNPrinter::Print(cnprint::CNPrinter *a1, _BYTE *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  cnprint::CNPrinter::GetCNPrinter(a1);
  v12 = dword_1EC5FB8D0;
  if (sub_1D0B7DED0(&stru_1EC5FB8D8, &v12))
  {
    v12 = &a9;
    cnprint::CNPrinter::PrintCore(&unk_1EC5FB8B8, a1, a2, a3, &a9);
    std::timed_mutex::unlock(&stru_1EC5FB8D8);
  }
}

uint64_t sub_1D0B7DED0(uint64_t a1, void *a2)
{
  v3.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 1000000 * *a2;
  v10.__m_ = a1;
  v10.__owns_ = 1;
  std::mutex::lock(a1);
  if (std::chrono::steady_clock::now().__d_.__rep_ < v3.__d_.__rep_)
  {
    while (1)
    {
      if (*(a1 + 112) != 1 || v3.__d_.__rep_ <= std::chrono::steady_clock::now().__d_.__rep_)
      {
        goto LABEL_18;
      }

      v4.__d_.__rep_ = v3.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
      if (v4.__d_.__rep_ >= 1)
      {
        break;
      }

LABEL_17:
      if (std::chrono::steady_clock::now().__d_.__rep_ >= v3.__d_.__rep_)
      {
        goto LABEL_18;
      }
    }

    std::chrono::steady_clock::now();
    v5.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    if (!v5.__d_.__rep_)
    {
      v6 = 0;
      goto LABEL_15;
    }

    if (v5.__d_.__rep_ < 1)
    {
      if (v5.__d_.__rep_ < 0xFFDF3B645A1CAC09)
      {
        v6 = 0x8000000000000000;
        goto LABEL_15;
      }
    }

    else if (v5.__d_.__rep_ > 0x20C49BA5E353F7)
    {
      v6 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_13;
    }

    v6 = 1000 * v5.__d_.__rep_;
LABEL_13:
    if (v6 > (v4.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
    {
      v7.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_16:
      std::condition_variable::__do_timed_wait((a1 + 64), &v10, v7);
      std::chrono::steady_clock::now();
      goto LABEL_17;
    }

LABEL_15:
    v7.__d_.__rep_ = v6 + v4.__d_.__rep_;
    goto LABEL_16;
  }

LABEL_18:
  v8 = *(a1 + 112);
  if ((v8 & 1) == 0)
  {
    *(a1 + 112) = 1;
  }

  if (v10.__owns_)
  {
    std::mutex::unlock(v10.__m_);
  }

  return v8 ^ 1u;
}

void *cnprint::CNPrinter::GetCNPrinter(cnprint::CNPrinter *this)
{
  if ((atomic_load_explicit(&qword_1EC5FB430, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EC5FB430))
  {
    cnprint::CNPrinter::CNPrinter(&unk_1EC5FB8B8);
    __cxa_atexit(sub_1D0C70F70, &unk_1EC5FB8B8, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EC5FB430);
  }

  return &unk_1EC5FB8B8;
}

BOOL cnframework::GenericEvent::operator>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = v2 > v4;
  if (v2 == v4)
  {
    v6 = v3 > v5;
  }

  if (v4)
  {
    v7 = 1;
  }

  else
  {
    v7 = (*&v5 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = v3 > v5;
  }

  if (v2)
  {
    v9 = 1;
  }

  else
  {
    v9 = (*(a1 + 40) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    return v8;
  }

  else
  {
    return v3 > v5;
  }
}

int64x2_t sub_1D0B7E140(int64x2_t *a1, uint64_t a2)
{
  v4 = a1[2].u64[0];
  if (!v4)
  {
    sub_1D0BA03F0(a1);
    v4 = a1[2].u64[0];
  }

  v5 = a1->i64[1];
  v6 = (v5 + 8 * (v4 / 0x1A));
  v7 = *v6 + 152 * (v4 % 0x1A);
  if (a1[1].i64[0] == v5)
  {
    v7 = 0;
  }

  if (v7 == *v6)
  {
    v7 = *(v6 - 1) + 3952;
  }

  *(v7 - 152) = &unk_1F4CEEEB0;
  *(v7 - 144) = *(a2 + 8);
  v8 = *(a2 + 24);
  v9 = *(a2 + 40);
  v10 = *(a2 + 72);
  *(v7 - 96) = *(a2 + 56);
  *(v7 - 80) = v10;
  *(v7 - 128) = v8;
  *(v7 - 112) = v9;
  v11 = *(a2 + 88);
  v12 = *(a2 + 104);
  v13 = *(a2 + 120);
  *(v7 - 22) = *(a2 + 130);
  *(v7 - 48) = v12;
  *(v7 - 32) = v13;
  *(v7 - 64) = v11;
  result = vaddq_s64(a1[2], xmmword_1D0E82EC0);
  a1[2] = result;
  return result;
}

uint64_t sub_1D0B7E234(int64x2_t *a1)
{
  v2 = (*(a1->i64[1] + 8 * (a1[2].i64[0] / 0x1AuLL)) + 152 * (a1[2].i64[0] % 0x1AuLL));
  (**v2)(v2);
  a1[2] = vaddq_s64(a1[2], xmmword_1D0E76280);

  return sub_1D0B7E2D8(a1, 1);
}

uint64_t sub_1D0B7E2D8(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x1A)
  {
    a2 = 1;
  }

  if (v2 < 0x34)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 26;
  }

  return v4 ^ 1u;
}

void trackrun::TrackRunEngineActiveObject::HandleEvent(trackrun::TrackRunEngineActiveObject *this, const trackrun::PositionEvent *a2, double *a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, int8x16_t a14)
{
  v15 = a2;
  v823 = *MEMORY[0x1E69E9840];
  if ((*(this + 224) & 1) == 0)
  {
    LOWORD(v802) = 13;
    LOBYTE(v814[0].f64[0]) = 4;
    v28 = (*(*a2 + 16))(a2);
    v736 = v29 + v28;
    cnprint::CNPrinter::Print(&v802, v814, "#tre_ao,Not Configured,HandleEvent,PositionEvent,time,%.3lf", v30, v31, v32, v33, v34, SLOBYTE(v736));
    goto LABEL_9;
  }

  if ((*(a2 + 105) & 1) == 0)
  {
    LOWORD(v802) = 13;
    LOBYTE(v814[0].f64[0]) = 4;
    v35 = (*(*a2 + 16))(a2);
    v737 = v36 + v35;
    cnprint::CNPrinter::Print(&v802, v814, "#tre_ao,Invalid PositionEvent,latlon coordinates invalid,time,%.3lf", v37, v38, v39, v40, v41, SLOBYTE(v737));
    goto LABEL_9;
  }

  v16 = *(a2 + 104);
  if (v16 > 0xD)
  {
    goto LABEL_111;
  }

  v17 = this;
  if (((1 << v16) & 0x2E10) != 0)
  {
    v18 = 0;
    if (*(this + 744) == 1)
    {
      *(this + 536) = *(a2 + 8);
      v19 = *(a2 + 24);
      v20 = *(a2 + 40);
      v21 = *(a2 + 72);
      *(this + 584) = *(a2 + 56);
      *(this + 600) = v21;
      *(this + 552) = v19;
      *(this + 568) = v20;
      v22 = *(a2 + 88);
      v23 = *(a2 + 104);
      v24 = *(a2 + 136);
      *(this + 648) = *(a2 + 120);
      *(this + 664) = v24;
      *(this + 616) = v22;
      *(this + 632) = v23;
      v25 = *(a2 + 152);
      v26 = *(a2 + 168);
      v27 = *(a2 + 200);
      *(this + 712) = *(a2 + 184);
      *(this + 728) = v27;
      *(this + 680) = v25;
      *(this + 696) = v26;
    }

    else
    {
      *(this + 66) = &unk_1F4CF0C98;
      *(this + 536) = *(a2 + 8);
      v52 = *(a2 + 24);
      v53 = *(a2 + 40);
      v54 = *(a2 + 72);
      *(this + 584) = *(a2 + 56);
      *(this + 600) = v54;
      *(this + 552) = v52;
      *(this + 568) = v53;
      v55 = *(a2 + 88);
      v56 = *(a2 + 104);
      v57 = *(a2 + 136);
      *(this + 648) = *(a2 + 120);
      *(this + 664) = v57;
      *(this + 616) = v55;
      *(this + 632) = v56;
      v25 = *(a2 + 152);
      v58 = *(a2 + 168);
      v27 = *(a2 + 200);
      *(this + 712) = *(a2 + 184);
      *(this + 728) = v27;
      *(this + 680) = v25;
      *(this + 696) = v58;
      *(this + 744) = 1;
    }

    goto LABEL_14;
  }

  if (((1 << v16) & 0x10C0) != 0)
  {
    if (*(this + 744) == 1)
    {
      *(this + 536) = *(a2 + 8);
      v43 = *(a2 + 24);
      v44 = *(a2 + 40);
      v45 = *(a2 + 72);
      *(this + 584) = *(a2 + 56);
      *(this + 600) = v45;
      *(this + 552) = v43;
      *(this + 568) = v44;
      v46 = *(a2 + 88);
      v47 = *(a2 + 104);
      v48 = *(a2 + 136);
      *(this + 648) = *(a2 + 120);
      *(this + 664) = v48;
      *(this + 616) = v46;
      *(this + 632) = v47;
      v49 = *(a2 + 152);
      v50 = *(a2 + 168);
      v51 = *(a2 + 200);
      *(this + 712) = *(a2 + 184);
      *(this + 728) = v51;
      *(this + 680) = v49;
      *(this + 696) = v50;
    }

    else
    {
      *(this + 66) = &unk_1F4CF0C98;
      *(this + 536) = *(a2 + 8);
      v121 = *(a2 + 24);
      v122 = *(a2 + 40);
      v123 = *(a2 + 72);
      *(this + 584) = *(a2 + 56);
      *(this + 600) = v123;
      *(this + 552) = v121;
      *(this + 568) = v122;
      v124 = *(a2 + 88);
      v125 = *(a2 + 104);
      v126 = *(a2 + 136);
      *(this + 648) = *(a2 + 120);
      *(this + 664) = v126;
      *(this + 616) = v124;
      *(this + 632) = v125;
      v127 = *(a2 + 152);
      v128 = *(a2 + 168);
      v129 = *(a2 + 200);
      *(this + 712) = *(a2 + 184);
      *(this + 728) = v129;
      *(this + 680) = v127;
      *(this + 696) = v128;
      *(this + 744) = 1;
    }

    goto LABEL_9;
  }

  if (v16 != 1)
  {
LABEL_111:
    LOWORD(v802) = 13;
    LOBYTE(v814[0].f64[0]) = 4;
    v162 = (*(*a2 + 16))(a2);
    v750 = *(v15 + 104);
    v741 = v163 + v162;
    cnprint::CNPrinter::Print(&v802, v814, "#tre_ao,HandleEvent,PositionEvent,time,%.3lf,type unusable,%hhu", v164, v165, v166, v167, v168, SLOBYTE(v741));
    goto LABEL_9;
  }

  if (*(this + 744) == 1)
  {
    *(this + 536) = *(a2 + 8);
    v130 = *(a2 + 24);
    v131 = *(a2 + 40);
    v132 = *(a2 + 72);
    *(this + 584) = *(a2 + 56);
    *(this + 600) = v132;
    *(this + 552) = v130;
    *(this + 568) = v131;
    v133 = *(a2 + 88);
    v134 = *(a2 + 104);
    v135 = *(a2 + 136);
    *(this + 648) = *(a2 + 120);
    *(this + 664) = v135;
    *(this + 616) = v133;
    *(this + 632) = v134;
    v25 = *(a2 + 152);
    v136 = *(a2 + 168);
    v27 = *(a2 + 200);
    *(this + 712) = *(a2 + 184);
    *(this + 728) = v27;
    *(this + 680) = v25;
    *(this + 696) = v136;
    v18 = 1;
  }

  else
  {
    *(this + 66) = &unk_1F4CF0C98;
    *(this + 536) = *(a2 + 8);
    v169 = *(a2 + 24);
    v170 = *(a2 + 40);
    v171 = *(a2 + 72);
    *(this + 584) = *(a2 + 56);
    *(this + 600) = v171;
    *(this + 552) = v169;
    *(this + 568) = v170;
    v172 = *(a2 + 88);
    v173 = *(a2 + 104);
    v174 = *(a2 + 136);
    *(this + 648) = *(a2 + 120);
    *(this + 664) = v174;
    *(this + 616) = v172;
    *(this + 632) = v173;
    v25 = *(a2 + 152);
    v175 = *(a2 + 168);
    v27 = *(a2 + 200);
    *(this + 712) = *(a2 + 184);
    *(this + 728) = v27;
    *(this + 680) = v25;
    *(this + 696) = v175;
    v18 = 1;
    *(this + 744) = 1;
  }

LABEL_14:
  if ((*(this + 416) & 1) != 0 || *(this + 2280) != 1)
  {
    if ((*(this + 448) & 1) == 0 && *(this + 2376) == 1)
    {
      trackrun::TrackRunEngineActiveObject::HandleEvent(this, (this + 2288), a3, a4, a5, a6, a7, a8, v25);
    }
  }

  else
  {
    trackrun::TrackRunEngineActiveObject::HandleEvent(this, (this + 2192), a3, a4, a5, a6, a7, a8, v25);
    if (*(v17 + 2280) == 1)
    {
      *(v17 + 274) = &unk_1F4CF0B60;
      v802 = (v17 + 2200);
      sub_1D0E62CA0(&v802);
      *(v17 + 2280) = 0;
    }
  }

  v802 = &unk_1F4CF0BF0;
  BYTE8(v803[3]) = 0;
  LOBYTE(v803[9]) = 0;
  BYTE8(v803[9]) = 0;
  BYTE8(v803[11]) = 0;
  LOBYTE(v803[12]) = 0;
  LOBYTE(v803[22]) = 0;
  LODWORD(v803[3]) = 0;
  memset(v814, 0, 24);
  memset(v821, 0, 23);
  LOBYTE(v803[0]) = 0;
  *(&v803[1] + 1) = v814[1].f64[0];
  *(v803 + 1) = v814[0];
  *(&v803[2] + 1) = 0;
  *(&v803[1] + 9) = *v821;
  BYTE10(v803[22]) = 0;
  WORD4(v803[22]) = v18;
  v59 = *(v17 + 416);
  if ((v59 & 1) == 0 && (*(v17 + 448) & 1) == 0)
  {
    strcpy(v814, "\r");
    v821[0] = 2;
    v114 = (*(*v15 + 16))(v15);
    v740 = v115 + v114;
    cnprint::CNPrinter::Print(v814, v821, "#tre_ao,HandleEvent,PositionEvent,time,%.3lf,no track data available; cannot perform proximity detection", v116, v117, v118, v119, v120, SLOBYTE(v740));
    LODWORD(v803[3]) = 0;
    BYTE10(v803[22]) = 1;
    if (*(v17 + 1800) == 1)
    {
      memcpy(v17 + 1432, v803, 0x16BuLL);
    }

    else
    {
      *(v17 + 178) = &unk_1F4CF0BF0;
      memcpy(v17 + 1432, v803, 0x16BuLL);
      *(v17 + 1800) = 1;
    }

    goto LABEL_9;
  }

  if ((*(v17 + 368) & 1) == 0)
  {
    v800.i8[0] = 0;
    v801 = 0;
    strcpy(v814, "\r");
    v821[0] = 4;
    v70 = (*(*v15 + 16))(v15);
    v738 = v71 + v70;
    cnprint::CNPrinter::Print(v814, v821, "#tre_ao,HandleEvent,PositionEvent,time,%.3lf,failed ConvertLatLonToEastNorth", v72, v73, v74, v75, v76, SLOBYTE(v738));
    goto LABEL_9;
  }

  v60 = vmulq_f64(vsubq_f64(*(v15 + 7), *(v17 + 22)), *(v17 + 376));
  v800 = vextq_s8(v60, v60, 8uLL);
  v801 = 1;
  v61 = *(v17 + 448);
  if (v61 != 1 || (v63 = *(v17 + 53), v62 = *(v17 + 54), v64 = v62 - v63, v62 == v63))
  {
    v65 = 0;
    v69 = INFINITY;
  }

  else
  {
    v65 = 0;
    v66 = 0;
    v67 = 0x4EC4EC4EC4EC4EC5 * (v64 >> 3);
    if (v67 <= 1)
    {
      v67 = 1;
    }

    v68 = (v63 + 32);
    v69 = INFINITY;
    *&v27 = 0;
    do
    {
      *a14.i64 = (*&v60.i64[1] - *(v68 - 1)) * (*&v60.i64[1] - *(v68 - 1)) + 0.0;
      if (*a14.i64 + (*v60.i64 - *v68) * (*v60.i64 - *v68) < v69)
      {
        v65 = v66;
        v69 = *a14.i64 + (*v60.i64 - *v68) * (*v60.i64 - *v68);
      }

      ++v66;
      v68 += 13;
    }

    while (v67 != v66);
  }

  v77 = (v17 + 392);
  if (!v59 || (v79 = *(v17 + 49), v78 = *(v17 + 50), v80 = v78 - v79, v78 == v79))
  {
    v81 = 0;
    v85 = INFINITY;
  }

  else
  {
    v81 = 0;
    v82 = 0;
    v83 = 0x4EC4EC4EC4EC4EC5 * (v80 >> 3);
    if (v83 <= 1)
    {
      v83 = 1;
    }

    *&v27 = v60.i64[1];
    v84 = (v79 + 32);
    v85 = INFINITY;
    do
    {
      v86 = (*&v60.i64[1] - *(v84 - 1)) * (*&v60.i64[1] - *(v84 - 1)) + 0.0;
      *a14.i64 = v86 + (*v60.i64 - *v84) * (*v60.i64 - *v84);
      if (*a14.i64 < v85)
      {
        v81 = v82;
        v85 = v86 + (*v60.i64 - *v84) * (*v60.i64 - *v84);
      }

      ++v82;
      v84 += 13;
    }

    while (v83 != v82);
  }

  if (v69 >= v85)
  {
    v61 = 0;
  }

  v791 = (v17 + 376);
  v792 = v18;
  v794 = v61;
  if ((v61 & 1) == 0)
  {
    v137 = (*v77 + 104 * v81);
    if (!v137[12])
    {
      strcpy(v814, "\r");
      v821[0] = 4;
      v176 = (*(*v15 + 16))(v15);
      v742 = v177 + v176;
      cnprint::CNPrinter::Print(v814, v821, "#tre_ao,HandleEvent,PositionEvent,time,%.3lf,nearest_track has no lanes cached. Cannot proceed.", v178, v179, v180, v181, v182, SLOBYTE(v742));
      goto LABEL_9;
    }

    v138 = v137[5];
    v793 = (*v77 + 104 * v81);
    *&v783 = v17 + 392;
    if ((*(v138 + 40) & 1) == 0)
    {
      trackrun::RunningTrackData::RunningTrackLane::PopulateLaneLength(v138, *v60.i64, v69, v85, *&v27);
      if (*(*(v17 + 35) + 216) == 1)
      {
        v144 = v137[5];
        v143 = v137[6];
        if (v144 != v143)
        {
          v145 = 1;
          do
          {
            trackrun::RunningTrackData::RunningTrackLane::PopulateLaneLength(v144, v139, v140, v141, v142);
            strcpy(v814, "\r");
            v821[0] = 3;
            if (*(v144 + 40) == 1)
            {
              v151 = *(v144 + 32);
            }

            v755 = *(v144 + 64);
            cnprint::CNPrinter::Print(v814, v821, "#tre_ao,lane,%zu,length,%.2lf,width,%.2lf", v146, v147, v148, v149, v150, v145++);
            v144 += 72;
          }

          while (v144 != v143);
        }
      }
    }

LABEL_98:
    std::mutex::lock((v17 + 288));
    if (*(v17 + 1800) == 1)
    {
      v154 = *(v17 + 2184);
      v155 = v792;
      if (v154 != 1 || (*(v17 + 1792) & 1) != 0)
      {
        goto LABEL_109;
      }

      v156 = CNTimeSpan::operator-(v17 + 180, v17 + 228, v152, v153);
      *&v814[0].f64[0] = v156;
      v814[0].f64[1] = v157;
      if (v156 < 0 || (*v158.i64 = v157, v157 < 0.0))
      {
        v156 = CNTimeSpan::operator-(v814, v158, v159);
        v158.i64[0] = v160;
      }

      if (!v156 && (v158.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v161 = v156 <= 2, v156 == 2))
      {
        v161 = *v158.i64 <= 0.0;
      }

      if (!v161)
      {
LABEL_109:
        if (v154 == 1)
        {
          memcpy(v17 + 1816, v17 + 1432, 0x16BuLL);
        }

        else if (v154)
        {
          *(v17 + 2184) = 0;
        }

        else
        {
          *(v17 + 226) = &unk_1F4CF0BF0;
          memcpy(v17 + 1816, v17 + 1432, 0x16BuLL);
          *(v17 + 2184) = 1;
        }
      }

      *(v17 + 1800) = 0;
    }

    else
    {
      v155 = v792;
    }

    v197 = v793;
    if ((v794 & 1) == 0)
    {
      v197 = (*(v793 + 6) - 72);
    }

    v198 = sub_1D0B85938(v800.i64, v197);
    v199 = (v15 + 136);
    v200 = *(v15 + 17) * *(v15 + 17);
    if (*(v15 + 105))
    {
      v201 = *(v15 + 17) * *(v15 + 17);
    }

    else
    {
      v201 = 0.0;
    }

    LODWORD(v803[3]) = 0;
    v202 = *(v17 + 35);
    *v821 = 4;
    *&v814[0].f64[0] = v821;
    v203 = *(sub_1D0B85E58((v202 + 72), 4) + 3);
    v204 = *(v17 + 35);
    *v821 = 2;
    *&v814[0].f64[0] = v821;
    v205 = *(sub_1D0B85E58((v204 + 72), 2) + 3);
    v206 = *(v17 + 35);
    *v821 = 3;
    *&v814[0].f64[0] = v821;
    v207 = sub_1D0B85E58((v206 + 72), 3);
    v208 = v201 + v203;
    if (v198 < v208)
    {
      v209 = v155;
    }

    else
    {
      v209 = 0;
    }

    if (v209 == 1)
    {
      LODWORD(v803[3]) = 3;
      if ((v794 & 1) == 0)
      {
        if (*(v793 + 12))
        {
          trackrun::TrackRunEngineActiveObject::FindClosestPointOnRing(v800.i64, *(v793 + 5), 1, 0);
          if (v210 < 0.0 || v210 * v210 < v208)
          {
            if (*(v17 + 1416) != 1 || (v211 = *(v17 + 1241), v211 > 5) || ((1 << v211) & 0x34) == 0 || (*(v17 + 816) & 1) != 0 || *(v17 + 2184) != 1 || *(v17 + 466) == 4 || v198 <= *(*(v793 + 6) - 8) * *(*(v793 + 6) - 8))
            {
              LODWORD(v803[3]) = 4;
            }
          }
        }

LABEL_188:
        memset(&v803[4], 0, 80);
        LOBYTE(v803[9]) = 1;
        *(&v803[3] + 1) = sqrt(v198);
        *(&v803[8] + 1) = *(v793 + 8);
        LOBYTE(v803[4]) = *(v793 + 12);
        v803[0] = *(v15 + 8);
        v803[1] = *(v15 + 24);
        v803[2] = *(v15 + 40);
        BYTE10(v803[22]) = 1;
        if (*(v17 + 1800) == 1)
        {
          memcpy(v17 + 1432, v803, 0x16BuLL);
        }

        else
        {
          *(v17 + 178) = &unk_1F4CF0BF0;
          memcpy(v17 + 1432, v803, 0x16BuLL);
          *(v17 + 1800) = 1;
        }

        trackrun::TrackRunEngineActiveObject::TrackCoordinateTransform::ConvertEastNorthToLatLon(v17 + 352, (v793 + 24), v220, v221, v222, v223, v224, &v806);
        LOWORD(v809.f64[0]) = 13;
        LOBYTE(v811[0]) = 3;
        v225 = *(v15 + 104);
        if (v225 > 9)
        {
          v226 = "Other";
        }

        else
        {
          v226 = off_1E83D8430[v225];
        }

        v227 = *(v17 + 2384);
        sub_1D0B751F4(v814, v226);
        v228 = *(v15 + 5);
        v229 = *(v15 + 6);
        (*(*v15 + 16))(v15);
        trackrun::TrackRunEngineActiveObject::ConvertIosTimeToGregorianString(v17, *(v15 + 5), *(v15 + 6), v821);
        v230 = (v15 + 152);
        v231 = *(v15 + 152);
        v232 = *(v15 + 7);
        v233 = *(v15 + 168);
        v234 = *(v15 + 17);
        v235 = *(v15 + 104);
        v763 = *(v15 + 26);
        v762 = *(v15 + 12);
        v761 = *(v15 + 184);
        cnprint::CNPrinter::Print(&v809, v811, "TrackRun-Raw-%u-%s,viewType,SingleArrowCoordinate,iOSTime,%.1lf,mcTime,%.1lf,gregTime,%s,latitude,%.7lf,longitude,%.7lf,course,%.2lf,courseUnc,%.2lf,speed,%.2lf,speedUnc,%.2lf,hunc,%.1lf,type,%d,track_prox,%d,dist_to_outer,%.1lf,track_lat,%.7lf,track_lon,%.7lf,num_lanes,%d,odo_valid,%d,odo,%.1lf,odo_dd,%.1lf,odo_dd_unc,%.1lf", v236, v237, v238, v239, v240, v227);
        v242 = v793;
        v243 = v791;
        v244 = v792;
        if ((v821[23] & 0x80000000) != 0)
        {
          operator delete(*v821);
        }

        if (SHIBYTE(v814[1].f64[0]) < 0)
        {
          operator delete(*&v814[0].f64[0]);
        }

        if ((*(v17 + 816) != 1 || (BYTE2(v791[248].f64[0]) & 1) == 0) && *(*(v17 + 35) + 68) == 1)
        {
          if (cnprint::CNPrinter::GetLogLevel(v241) <= 1)
          {
            strcpy(v814, "\r");
            v821[0] = 1;
            cnprint::CNPrinter::Print(v814, v821, "#tre_ao,DEBUG FORCING TO LANE %d", v245, v246, v247, v248, v249, *(*(v17 + 35) + 69));
          }

          memset(&v814[0].f64[1], 0, 56);
          *&v814[0].f64[0] = &unk_1F4CF0CE0;
          v814[1].f64[1] = 0.0;
          LOBYTE(v814[2].f64[0]) = 0;
          if (*(v17 + 816))
          {
            v250 = *(&v814[1] + 8);
            *(v17 + 760) = *(v814 + 8);
            *(v17 + 776) = v250;
            *(v17 + 792) = *(&v814[2] + 8);
            *(v17 + 808) = LOBYTE(v814[3].f64[1]);
          }

          else
          {
            *(v17 + 94) = &unk_1F4CF0CE0;
            v251 = *(&v814[1] + 8);
            *(v17 + 760) = *(v814 + 8);
            *(v17 + 776) = v251;
            *(v17 + 792) = *(&v814[2] + 8);
            *(v17 + 808) = LOBYTE(v814[3].f64[1]);
            *(v17 + 816) = 1;
          }

          *(v17 + 808) = *(*(v17 + 35) + 69);
          v252 = (v17 + 760);
          v253 = *(v15 + 8);
          v254 = *(v15 + 40);
          *(v17 + 776) = *(v15 + 24);
          *(v17 + 792) = v254;
          *(v17 + 760) = v253;
          if ((BYTE2(v791[248].f64[0]) & 1) == 0)
          {
            v814[0].f64[0] = 0.0;
            v814[0].f64[1] = NAN;
            LOBYTE(v814[1].f64[0]) = 0;
            LOBYTE(v814[1].f64[1]) = 0;
            LOBYTE(v814[5].f64[1]) = 0;
            *&v814[0].f64[0] = (*(*v15 + 16))(v15);
            v814[0].f64[1] = v255;
            LOBYTE(v814[1].f64[0]) = v803[4];
            if (LOBYTE(v814[5].f64[1]) == *(v17 + 816))
            {
              if (LOBYTE(v814[5].f64[1]))
              {
                v258 = *(v17 + 776);
                v814[2] = *v252;
                v814[3] = v258;
                v814[4] = *(v17 + 792);
                LOBYTE(v814[5].f64[0]) = *(v17 + 808);
              }
            }

            else if (LOBYTE(v814[5].f64[1]))
            {
              LOBYTE(v814[5].f64[1]) = 0;
            }

            else
            {
              *&v814[1].f64[1] = &unk_1F4CF0CE0;
              v265 = *(v17 + 776);
              v814[2] = *v252;
              v814[3] = v265;
              v814[4] = *(v17 + 792);
              LOBYTE(v814[5].f64[0]) = *(v17 + 808);
              LOBYTE(v814[5].f64[1]) = 1;
            }

            if (trackrun::TrackRunLaneEstimator::Initialize(v17 + 2848, v814, v256, v257))
            {
              strcpy(v821, "\r");
              LOBYTE(v809.f64[0]) = 4;
              cnprint::CNPrinter::Print(v821, &v809, "#tre_ao,lane estimator could not be initialized.", v266, v267, v268, v269, v270, v743);
LABEL_574:
              std::mutex::unlock((v17 + 288));
              goto LABEL_9;
            }

            if ((*(v17 + 816) & 1) == 0)
            {
              sub_1D0C42F28();
            }
          }

          v271 = *(v17 + 776);
          if (LOBYTE(v791[253].f64[0]) == 1)
          {
            *(v17 + 273) = *v252;
            *(v17 + 274) = v271;
            *(v17 + 275) = *(v17 + 792);
            *(v17 + 4416) = *(v17 + 808);
          }

          else
          {
            *(v17 + 273) = *v252;
            *(v17 + 545) = &unk_1F4CF0CE0;
            *(v17 + 274) = v271;
            *(v17 + 275) = *(v17 + 792);
            *(v17 + 4416) = *(v17 + 808);
            LOBYTE(v791[253].f64[0]) = 1;
          }

          v272 = *(v17 + 808);
          v242 = v793;
          if (v272 <= 1)
          {
            v273 = 1;
          }

          else
          {
            v273 = *(v17 + 808);
          }

          if (v272 > *(v793 + 96))
          {
            v273 = *(v793 + 96);
          }

          if (*(v793 + 96))
          {
            v274 = v273;
          }

          else
          {
            v274 = *(v17 + 808);
          }

          if ((LOBYTE(v791[254].f64[1]) & 1) == 0)
          {
            LOBYTE(v791[254].f64[1]) = 1;
          }

          *(v17 + 555) = v274;
          *(v17 + 2216) = 0;
        }

        if (*(v17 + 1416) == 1)
        {
          v275 = *(v17 + 1241);
          if (v275 <= 5 && ((1 << v275) & 0x34) != 0 && (v794 & 1) == 0 && (*(v17 + 416) & 1) != 0 && LODWORD(v803[3]) == 4)
          {
            *(v17 + 198) = 0;
            v791[76] = vdupq_n_s64(0x7FF8000000000000uLL);
            *(v17 + 201) = 0x7FF8000000000000;
            *(v17 + 1616) = 1;
            v276 = *(v15 + 24);
            if (!*(v15 + 184))
            {
              v276 = 0.0;
            }

            *(v17 + 199) = v276;
            *(v17 + 1584) = 0;
            v277 = *(v15 + 25);
            v278 = v277 > 0.0;
            v279 = *(v15 + 21);
            if (v279 <= 0.0)
            {
              v278 = 0;
            }

            if ((v792 & v278) == 1)
            {
              trackrun::TrackRunEngineActiveObject::ComputeAcrossTrackDistanceInformation(v17, v15, v242, v800.i64, v814);
              sub_1D0E695F4(v17 + 350, v814);
              trackrun::TrackRunEngineActiveObject::PruneAcrossTrackDistanceDeque(v17);
              v277 = *(v15 + 25);
              v279 = *(v15 + 21);
            }

            if (*(v17 + 355) && v277 > 0.0 && v279 > 0.0)
            {
              trackrun::TrackRunEngineActiveObject::ComputeAcrossTrackDistanceEvidence(v17, v15, v242, v821);
              if ((BYTE2(v791[248].f64[0]) & 1) == 0)
              {
                v814[0].f64[0] = 0.0;
                v814[0].f64[1] = NAN;
                LOBYTE(v814[1].f64[0]) = 0;
                LOBYTE(v814[1].f64[1]) = 0;
                LOBYTE(v814[5].f64[1]) = 0;
                *&v814[0].f64[0] = (*(*v15 + 16))(v15);
                v814[0].f64[1] = v286;
                LOBYTE(v814[1].f64[0]) = *(v242 + 96);
                if (*(v17 + 816) == 1)
                {
                  if (LOBYTE(v814[5].f64[1]) == 1)
                  {
                    LOBYTE(v814[5].f64[0]) = *(v17 + 808);
                    v289 = *(v17 + 776);
                    v814[2] = *(v17 + 760);
                    v814[3] = v289;
                    v814[4] = *(v17 + 792);
                  }

                  else if (LOBYTE(v814[5].f64[1]))
                  {
                    LOBYTE(v814[5].f64[1]) = 0;
                  }

                  else
                  {
                    *&v814[1].f64[1] = &unk_1F4CF0CE0;
                    LOBYTE(v814[5].f64[0]) = *(v17 + 808);
                    v383 = *(v17 + 776);
                    v814[2] = *(v17 + 760);
                    v814[3] = v383;
                    v814[4] = *(v17 + 792);
                    LOBYTE(v814[5].f64[1]) = 1;
                  }
                }

                if (trackrun::TrackRunLaneEstimator::Initialize(v17 + 2848, v814, v287, v288))
                {
                  LOWORD(v809.f64[0]) = 13;
                  LOBYTE(v811[0]) = 4;
                  cnprint::CNPrinter::Print(&v809, v811, "#tre_ao,TrackRunLaneEstimator is not initialized. Cannot continue.", v281, v282, v283, v284, v285, v743);
                  goto LABEL_574;
                }
              }

              trackrun::TrackRunLaneEstimator::HandleEvidence((v17 + 2848), v821, v280, v281, v282, v283, v284, v285);
            }

            if (BYTE2(v791[248].f64[0]) == 1 && (LOWORD(v384) = *(v17 + 1424), (v384 & 0x100) != 0))
            {
              v384 = v384;
            }

            else if (*(v17 + 816) != 1 || (v384 = *(v17 + 808), !*(v17 + 808)))
            {
              v385 = *(v17 + 355);
              if (v385)
              {
                v386 = (*(*(v17 + 351) + 8 * ((v385 + *(v17 + 354) - 1) / 0x33uLL)) + 80 * ((v385 + *(v17 + 354) - 1) % 0x33uLL));
                v814[1] = v386[1];
                v814[2] = v386[2];
                v814[3] = v386[3];
                v814[4] = v386[4];
                v814[0] = *v386;
              }

              else
              {
                trackrun::TrackRunEngineActiveObject::ComputeAcrossTrackDistanceInformation(v17, v15, v242, v800.i64, v814);
              }

              v389 = 1.0;
              if (*(v242 + 88) == 1 && (v390 = *(v242 + 80), v390 > 0.0) && (v389 = round(-round(v814[1].f64[1] / v390)), v389 < 1.0))
              {
                v388 = 0;
              }

              else
              {
                v391 = *(v242 + 96);
                if (v389 <= v391)
                {
                  v388 = (v389 + -1.0);
                }

                else
                {
                  v388 = v391 - 1;
                }
              }

LABEL_427:
              if (LOBYTE(v791[254].f64[1]))
              {
                v392 = *(v17 + 35);
                if (*(v392 + 217))
                {
                  v393 = *(v17 + 555);
                  if (*(v17 + 816))
                  {
                    goto LABEL_437;
                  }
                }

                else
                {
                  v393 = *(v17 + 555);
                }

                v394 = v388 + 1;
                if (v393 == v388 + 1)
                {
                  v393 = v388 + 1;
LABEL_437:
                  v396 = v393 - 1;
                  if (v396 >= *(v242 + 96) - 1)
                  {
                    v388 = *(v242 + 96) - 1;
                  }

                  else
                  {
                    v388 = v396;
                  }

                  v395 = *(v17 + 2216) + 1;
LABEL_441:
                  *(v17 + 2216) = v395;
                  ClosestPointOnRing = trackrun::TrackRunEngineActiveObject::FindClosestPointOnRing(v800.i64, (*(v242 + 40) + 72 * v388), 0, 1);
                  v399 = v398;
                  v401 = v400;
                  *v821 = ClosestPointOnRing;
                  *&v821[8] = v398;
                  *&v821[16] = v400;
                  *&v821[24] = v402;
                  trackrun::TrackRunEngineActiveObject::TrackCoordinateTransform::ConvertEastNorthToLatLon(v17 + 352, v821, v403, v404, v405, v406, v407, &v804);
                  if (v805 != 1)
                  {
                    strcpy(v814, "\r");
                    LOBYTE(v809.f64[0]) = 4;
                    v430 = (*(*v15 + 16))(v15);
                    v751 = *(v15 + 14);
                    v756 = *(v15 + 15);
                    v745 = v431 + v430;
                    cnprint::CNPrinter::Print(v814, &v809, "#tre_ao,Warning,MatchedPosition,time,%.3lf,current_position,latlng,%.7lf,%.7lf,lane_matched_point has no value", v432, v433, v434, v435, v436, SLOBYTE(v745));
                    goto LABEL_475;
                  }

                  v416 = v804;
                  v417 = *(v17 + 1520);
                  *(v17 + 94) = v804;
                  if ((v417 & 1) == 0)
                  {
                    *(v17 + 1520) = 1;
                  }

                  v419 = *v230;
                  v418 = *(v15 + 168);
                  v420.f64[0] = NAN;
                  v420.f64[1] = NAN;
                  v421 = vnegq_f64(v420);
                  v422 = vdupq_n_s64(0x7FF0000000000000uLL);
                  v423 = vuzp1q_s32(vcgeq_s64(vandq_s8(*v230, v421), v422), vcgeq_s64(vandq_s8(v418, v421), v422));
                  *&v423.f64[0] = vmovn_s32(v423);
                  LOWORD(v423.f64[0]) = vmaxv_u16(*&v423.f64[0]);
                  if ((LOBYTE(v423.f64[0]) & 1) == 0)
                  {
                    v423 = vuzp1q_s32(vcgezq_f64(v419), vcgezq_f64(v418));
                    *&v423.f64[0] = vmovn_s32(v423);
                    v418 = vcgtzq_f64(v418);
                    *&v418.f64[0] = vmovn_s64(v418);
                    WORD2(v423.f64[0]) = vuzp1_s16(*&v418, *&v418).i16[2];
                    *&v418.f64[0] = vcltz_s16(vshl_n_s16(*&v423.f64[0], 0xFuLL));
                    *&v423.f64[0] = 0x8000400020001;
                    *&v418.f64[0] = vand_s8(*&v418.f64[0], 0x8000400020001);
                    LOWORD(v418.f64[0]) = vaddv_s16(*&v418.f64[0]);
                    if ((~LOBYTE(v418.f64[0]) & 0xF) == 0)
                    {
                      v787 = *v230;
                      v418.f64[0] = fmod(v419.f64[0] - v401, 180.0);
                      v423.f64[0] = fabs(v418.f64[0]);
                      v424 = 1.0;
                      if (v418.f64[0] > 0.0)
                      {
                        v424 = -1.0;
                      }

                      v425 = v418.f64[0] + v424 * 180.0;
                      if (v423.f64[0] > 90.0)
                      {
                        v418.f64[0] = v425;
                      }

                      v423.f64[0] = fabs(v418.f64[0]);
                      v426 = *(v17 + 35);
                      if (v423.f64[0] <= *(v426 + 192) && (*(v426 + 200) & 1) == 0)
                      {
                        v427 = *v787.i64 - v418.f64[0];
                        if (v427 < 0.0 || v427 >= 360.0)
                        {
                          v428 = 1.0;
                          if (v427 <= 0.0)
                          {
                            v428 = 0.0;
                            if (v427 < 0.0)
                            {
                              v428 = -1.0;
                            }
                          }

                          v427 = v427 + v428 * -360.0;
                        }

                        *(v17 + 191) = v427;
                        *(v17 + 1536) = 1;
                        v243 = v791;
                        v244 = v792;
                        if (*(v17 + 1552) != 1 || (v418.f64[0] = *(v17 + 193), v423.f64[0] = *(v426 + 240), v418.f64[0] <= v423.f64[0]))
                        {
                          v418.f64[0] = *(v426 + 232);
                          v423.f64[0] = *v199;
                          if (v418.f64[0] >= *v199)
                          {
                            v418.f64[0] = *v199;
                          }

                          *(v17 + 193) = *&v418.f64[0];
                          *(v17 + 1552) = 1;
                          v243 = v791;
                          v244 = v792;
                        }
                      }
                    }
                  }

                  v429 = *(v17 + 1563);
                  if ((v429 & 1) == 0)
                  {
                    v429 = 1;
                    *(v17 + 1563) = 1;
                  }

                  *(v17 + 1562) = v388 + 1;
                  v795 = v388;
                  if (*(v17 + 2184) != 1)
                  {
                    goto LABEL_520;
                  }

                  v408 = CNTimeSpan::operator-(v15 + 2, v17 + 228, v418, v423);
                  *&v814[0].f64[0] = v408;
                  v814[0].f64[1] = v409;
                  if (v408 < 0 || (v418.f64[0] = v409, v409 < 0.0))
                  {
                    v408 = CNTimeSpan::operator-(v814, v418, v423);
                    v418.f64[0] = v409;
                  }

                  if ((v408 || (*&v418.f64[0] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) && v408 != 2)
                  {
                    if (v408 > 1)
                    {
                      goto LABEL_520;
                    }
                  }

                  else if (v418.f64[0] > 0.0)
                  {
                    goto LABEL_520;
                  }

                  if (*(v17 + 466) == 4 && *(v17 + 2000) == 1 && *(v17 + 1968) == 1 && *(v17 + 1960) == 1 && *(v17 + 1904) == 1 && *(v17 + 1945) == 1)
                  {
                    if ((*(v17 + 368) & 1) == 0)
                    {
                      sub_1D0C42F28();
                    }

                    v473 = (*(v17 + 236) - *(v17 + 44)) * *(v17 + 47) - v399;
                    v474 = (*(v17 + 237) - *(v17 + 45)) * *(v17 + 48) - ClosestPointOnRing;
                    v418.f64[0] = sqrt(v474 * v474 + 0.0 + v473 * v473);
                    v423.f64[0] = 11.0;
                    v243 = v791;
                    v244 = v792;
                    if (v418.f64[0] < 11.0)
                    {
                      *(v17 + 200) = *&v418.f64[0];
                      v475 = v429 ^ 1;
                      if (v388)
                      {
                        v475 = 1;
                      }

                      if ((v475 & 1) == 0)
                      {
                        v476 = *(v793 + 5);
                        if (*(v476 + 40) == 1)
                        {
                          v477 = *(v476 + 32);
                          if (v477 >= 392.0 && v477 <= 408.0)
                          {
                            if ((*(v476 + 56) & 1) == 0)
                            {
                              *(v476 + 48) = 400.0 / v477;
                              *(v476 + 56) = 1;
                              v476 = *(v793 + 5);
                              if ((*(v476 + 56) & 1) == 0)
                              {
                                sub_1D0C42F28();
                              }

                              v418.f64[0] = *(v17 + 200);
                            }

                            v418.f64[0] = *(v476 + 48) * v418.f64[0];
                            *(v17 + 200) = *&v418.f64[0];
                          }
                        }
                      }

                      v423.f64[0] = v418.f64[0] + *(v17 + 247);
                      *(v17 + 199) = *&v423.f64[0];
                      *(v17 + 201) = 0x3FD0000000000000;
                      *(v17 + 792) = 257;
                      v478 = *(v17 + 2736);
                      v244 = v792;
                      if (v478 == 1)
                      {
                        if (*(v17 + 1416) == 1 && *(v17 + 1241) == 4)
                        {
                          v408 = CNTimeSpan::operator-(v15 + 2, v17 + 172, v418, v423);
                          v423.f64[0] = v408;
                          v418.f64[0] = v409 + v408;
                          *(v17 + 329) = *&v418.f64[0];
                          v478 = 1;
                        }

                        else
                        {
                          v730.f64[0] = *(v17 + 329);
                          *(v17 + 329) = 0;
                          v730.f64[1] = v418.f64[0];
                          v423 = vaddq_f64(v730, *(v17 + 165));
                          *(v17 + 165) = v423;
                          v423.f64[0] = *(v17 + 340);
                          v418.f64[0] = v418.f64[0] + v423.f64[0];
                          *(v17 + 340) = *&v418.f64[0];
                          v478 = *(v15 + 184);
                          if (v478 != 1)
                          {
                            v478 = 1;
                            v244 = v792;
                            goto LABEL_528;
                          }

                          v731 = *(v15 + 25);
                          *(v17 + 332) = v731 + *(v17 + 332);
                          v423.f64[0] = *(v17 + 341);
                          v418.f64[0] = v731 + v423.f64[0];
                          *(v17 + 341) = *&v418.f64[0];
                        }

                        v244 = v792;
                      }

LABEL_528:
                      if (v478)
                      {
                        if (*(v17 + 2792))
                        {
                          *v481.i64 = CNTimeSpan::operator-(v15 + 2, v17 + 344, v418, v423);
                          *v483.i64 = v482 + *v481.i64;
                          *(v17 + 339) = v482 + *v481.i64;
                          v408 = CNTimeSpan::operator-(v15 + 2, v17 + 323, v483, v481);
                          v484 = v409 + v408 - *(v17 + 329) - *(v17 + 330);
                          *(v17 + 328) = v484;
                          if (v484 < 0.0)
                          {
                            strcpy(v814, "\r");
                            LOBYTE(v809.f64[0]) = 3;
                            v485 = (*(*v15 + 16))(v15);
                            v758 = *(v17 + 330);
                            v753 = *(v17 + 164);
                            v747 = v486 + v485;
                            cnprint::CNPrinter::Print(v814, &v809, "#tre_ao,%.1lf,Warning:current lap duration is less than 0,limiting to 0,current_lap_duration,%.1lf,current_pause_duration,%.1lf,previous_pauses_duration,%.1lf", v487, v488, v489, v490, v491, SLOBYTE(v747));
                            *(v17 + 328) = fmax(*(v17 + 328), 0.0);
                          }
                        }
                      }

                      if (LODWORD(v803[3]) == 4)
                      {
                        v492 = v244;
                      }

                      else
                      {
                        v492 = 0;
                      }

                      if (v492)
                      {
                        if (*(v17 + 2568) != 1)
                        {
LABEL_542:
                          v818 = 0u;
                          v819 = 0u;
                          v816 = 0u;
                          v817 = 0u;
                          v815 = 0u;
                          memset(v814, 0, sizeof(v814));
                          v820 = 1;
                          sub_1D0E6B228(v17 + 2392, v814);
                          v814[0].f64[0] = trackrun::TrackRunEngineActiveObject::FindClosestPointOnRing(v800.i64, *(v793 + 5), 0, 0);
                          v814[0].f64[1] = v494;
                          v814[1].f64[0] = v495;
                          v814[1].f64[1] = v496;
                          trackrun::TrackRunEngineActiveObject::TrackCoordinateTransform::ConvertEastNorthToLatLon(v17 + 352, v814, v497, v498, v499, v500, v501, &v798);
                          v809.f64[0] = trackrun::TrackRunEngineActiveObject::FindClosestPointOnRing(v800.i64, (*(v793 + 5) + 72 * *(v793 + 12) - 72), 0, 0);
                          v809.f64[1] = v502;
                          v810.f64[0] = v503;
                          v810.f64[1] = v504;
                          trackrun::TrackRunEngineActiveObject::TrackCoordinateTransform::ConvertEastNorthToLatLon(v17 + 352, &v809, v505, v506, v507, v508, v509, &v796);
                          if (v799 != 1 || (v797 & 1) == 0)
                          {
                            strcpy(v811, "\r");
                            v813[0] = 4;
                            v532 = (*(*v15 + 16))(v15);
                            v749 = v533 + v532;
                            cnprint::CNPrinter::Print(v811, v813, "#tre_ao,coordinate conversion issue, could not start line,%.1lf", v534, v535, v536, v537, v538, SLOBYTE(v749));
                            goto LABEL_574;
                          }

                          *(v17 + 2392) = v798;
                          *(v17 + 2408) = v796;
                          *(v17 + 2457) = *v199 <= *(*(v17 + 35) + 240);
                          trackrun::TrackRunEngineActiveObject::PopulateAllStartingLineFields(v17, v510, v511, v512, v513, v514, v515, v516);
                          if (cnprint::CNPrinter::GetLogLevel(v517) <= 1)
                          {
                            strcpy(v811, "\r");
                            v813[0] = 1;
                            v518 = (*(*v15 + 16))(v15);
                            v748 = v519 + v518;
                            cnprint::CNPrinter::Print(v811, v813, "#tre_ao,successfully set the start line,%.1lf", v520, v521, v522, v523, v524, SLOBYTE(v748));
                          }

                          if (*(v17 + 2736) == 1)
                          {
                            v525 = *(v17 + 339);
                            v526 = *(v17 + 331);
                            v527 = *(v17 + 341);
                            memset(v813, 0, sizeof(v813));
                            memset(&v812, 0, 23);
                            memset(v811, 0, 30);
                            *(v17 + 2576) = 0;
                            v528 = *v813;
                            *(v17 + 2593) = *&v813[16];
                            *(v17 + 2577) = v528;
                            v529 = v812;
                            *(v17 + 327) = 0;
                            *(v17 + 2601) = v529;
                            *(v17 + 167) = 0u;
                            *(v17 + 166) = 0u;
                            *(v17 + 165) = 0u;
                            *(v17 + 164) = 0u;
                            *(v17 + 168) = vdupq_n_s64(0x7FF8000000000000uLL);
                            *(v17 + 1352) = 0;
                            v530 = v811[0];
                            *(v17 + 1355) = WORD2(v811[0]);
                            *(v17 + 2706) = v530;
                            *(v17 + 2736) = 1;
                            *(v17 + 339) = v525;
                            *(v17 + 340) = v526;
                            *(v17 + 341) = v527;
                            BYTE2(v791[248].f64[0]) = 0;
                            LOBYTE(v791[248].f64[0]) = 0;
                            if (*(v17 + 2849) == 1)
                            {
                              *(v17 + 2849) = 0;
                            }

                            if (LOBYTE(v791[253].f64[0]) == 1)
                            {
                              LOBYTE(v791[253].f64[0]) = 0;
                            }

                            sub_1D0E6A014(v17 + 350);
                          }

                          else
                          {
                            memset(v813, 0, sizeof(v813));
                            memset(&v812, 0, 23);
                            memset(v811, 0, 30);
                            *(v17 + 2576) = 0;
                            v588 = *v813;
                            *(v17 + 2593) = *&v813[16];
                            *(v17 + 2577) = v588;
                            v589 = v812;
                            *(v17 + 327) = 0;
                            *(v17 + 2601) = v589;
                            *(v17 + 167) = 0u;
                            *(v17 + 166) = 0u;
                            *(v17 + 165) = 0u;
                            *(v17 + 164) = 0u;
                            *(v17 + 168) = vdupq_n_s64(0x7FF8000000000000uLL);
                            *(v17 + 1352) = 0;
                            v590 = v811[0];
                            *(v17 + 170) = *(v811 + 14);
                            *(v17 + 2706) = v590;
                            *(v17 + 2736) = 1;
                          }

                          v591 = *(v15 + 8);
                          v592 = *(v15 + 40);
                          *(v17 + 162) = *(v15 + 24);
                          *(v17 + 163) = v592;
                          *(v17 + 161) = v591;
                          *(v17 + 168) = v416;
                          *(v17 + 2536) = v804;
                          *(v17 + 2552) = 0;
                          *(v17 + 2560) = 1;
                          goto LABEL_590;
                        }

                        v493 = v17 + 2568;
                        if (*(v17 + 2456))
                        {
LABEL_562:
                          if ((*(v17 + 2512) != 1 || *(v17 + 2528) != 1 || (*(v17 + 2496) & 1) == 0) && ((trackrun::TrackRunEngineActiveObject::PopulateAllStartingLineFields(v17, *&v409, v410, v411, v412, v413, v414, v415), (*(v17 + 2496) & 1) == 0) || (*(v17 + 2528) & 1) == 0) || (*(v17 + 2512) & 1) == 0)
                          {
                            sub_1D0C42F28();
                          }

                          v552 = *(v17 + 308);
                          v553 = *(v17 + 309);
                          v554 = *(v17 + 315);
                          v555 = *(v17 + 313);
                          v809.f64[0] = trackrun::TrackRunEngineActiveObject::FindClosestPointOnLineSegment(v821, v17 + 303, 0, 0, 0);
                          v809.f64[1] = v556;
                          v810.f64[0] = v557;
                          v810.f64[1] = v558;
                          v565 = (ClosestPointOnRing - v552) * v554 - (v399 - v553) * v555;
                          if (cnprint::CNPrinter::GetLogLevel(v559) <= 1)
                          {
                            strcpy(v814, "\r");
                            LOBYTE(v811[0]) = 1;
                            cnprint::CNPrinter::Print(v814, v811, "#tre_ao,signed dist to inifinite start line,%.1lf", v560, v561, v562, v563, v564, SLOBYTE(v565));
                          }

                          v566 = *(v793 + 5);
                          if (*(v566 + 40) == 1)
                          {
                            v567 = *(v566 + 32) * 0.4;
                          }

                          else
                          {
                            v567 = 40.0;
                          }

                          if (*v493 != 1)
                          {
                            goto LABEL_590;
                          }

                          if (*(v17 + 2560) != 1)
                          {
                            goto LABEL_590;
                          }

                          v573 = v565 > 0.0;
                          if (*(v17 + 2552) == v573 || *(v17 + 2736) != 1 || v791[142].f64[0] <= v567)
                          {
                            goto LABEL_590;
                          }

                          strcpy(v814, "\r");
                          LOBYTE(v811[0]) = 3;
                          v574 = (*(*v15 + 16))(v15);
                          v576 = v575 + v574;
                          v759 = *(v17 + 331);
                          v754 = *(v17 + 2384);
                          cnprint::CNPrinter::Print(v814, v811, "#tre_ao,infinite starting line has been crossed,time,%.1lf,workout_number,%d,distance_to_start,%.1lf,current_lap_distance,%.1lf,lap_distance_thresh,%.1lf,lat,lon,%.7lf,%.7lf", v577, v578, v579, v580, v581, SLOBYTE(v576));
                          *(v17 + 2536) = v804;
                          *(v17 + 2552) = v573;
                          *(v17 + 2560) = 1;
                          if ((*(v17 + 2496) & 1) == 0)
                          {
                            sub_1D0C42F28();
                          }

                          trackrun::TrackRunEngineActiveObject::FindClosestPointOnLineSegment(v821, v17 + 308, 1, 0, 0);
                          if (fabs(v583) >= 10.0)
                          {
                            goto LABEL_590;
                          }

                          ++*(v17 + 1352);
                          *v582.i64 = fabs(v565);
                          v584 = vdupq_lane_s64(v582.i64[0], 0);
                          v585 = vsubq_f64(v791[142], v584);
                          *(v17 + 167) = v585;
                          *(v17 + 331) = v582.i64[0];
                          *(v17 + 332) = v582.i64[0];
                          v798 = 0uLL;
                          v585.i64[0] = *(v15 + 21);
                          if (fabs(*v585.i64) < 2.22044605e-16 || (v585.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
                          {
                            v584.i64[0] = 0;
                            *v585.i64 = fmax(*(v17 + 328), 0.0);
                            *(v17 + 333) = v585.i64[0];
                          }

                          else
                          {
                            v814[0] = 0uLL;
                            *v585.i64 = *v582.i64 / *v585.i64;
                            CNTimeSpan::SetTimeSpan(v814, 0, v585, v582);
                            v585.i64[1] = *&v814[0].f64[1];
                            v798 = v814[0];
                            v586 = *&v814[0].f64[0];
                            v584.i64[0] = 0;
                            *v585.i64 = fmax(*(v17 + 328), 0.0);
                            *(v17 + 333) = v585.i64[0];
                            if (v586)
                            {
                              if (v586 < 1)
                              {
                                v705 = 0;
                                goto LABEL_815;
                              }

                              v587 = *&v798.f64[1];
                              goto LABEL_814;
                            }
                          }

                          v586 = 0;
                          v705 = 0;
                          v587 = *&v798.f64[1];
                          if (v798.f64[1] <= 0.0)
                          {
LABEL_815:
                            *&v798.f64[0] = v705;
                            *&v798.f64[1] = v584.i64[0];
                            *v584.i64 = *v584.i64 + v705;
                            *v585.i64 = *v585.i64 - *v584.i64;
                            *(v17 + 333) = v585.i64[0];
                            sub_1D0E6A238(v814, v15 + 8, &v798, v585, v584);
                            v706 = v814[1];
                            *(v17 + 161) = v814[0];
                            *(v17 + 162) = v706;
                            *(v17 + 163) = v814[2];
                            *(v17 + 2632) = 0u;
                            trackrun::TrackRunEngineActiveObject::TrackCoordinateTransform::ConvertEastNorthToLatLon(v17 + 352, &v809, v707, v708, v709, v710, v711, v814);
                            if (LOBYTE(v814[1].f64[0]) == 1)
                            {
                              *(v17 + 168) = v814[0];
                            }

                            LOWORD(v796) = 13;
                            v813[0] = 3;
                            v712 = *(v17 + 2384);
                            v713 = *(v17 + 323);
                            v714 = *(v17 + 324);
                            trackrun::TrackRunEngineActiveObject::ConvertIosTimeToGregorianString(v17, *(v17 + 326), *(v17 + 327), v811);
                            v720 = *(v17 + 336);
                            v721 = *(v17 + 337);
                            v722 = v230->i64[0];
                            v723 = *(v17 + 1352);
                            v724 = *(v17 + 334);
                            v725 = *(v17 + 335);
                            v726 = *(v17 + 339);
                            v727 = *(v17 + 340);
                            v728 = *(v17 + 341);
                            if (LOBYTE(v791[254].f64[1]) == 1)
                            {
                              v729 = *(v17 + 555);
                            }

                            v760 = *(v17 + 327) + *(v17 + 326) - *(v17 + 333);
                            cnprint::CNPrinter::Print(&v796, v813, "TrackRun-Lap-%u,viewType,SingleArrowCoordinate,iOSTime,%.1lf,mcTime,%.1lf,gregTime,%s,latitude,%.7lf,longitude,%.7lf,course,%.2lf,cur_dist_past_lap_m,%.1lf,lap_count,%d,last_lap_dist,%.2lf,raw_last_lap_dist,%.2lf,last_lap_split_s,%.1lf,workout_duration,%.1lf,workout_dist,%.1lf,raw_workout_dist,%.1lf,current_lane,%lu,last_lap_start_time,%.1lf", v715, v716, v717, v718, v719, v712);
                            if (SBYTE7(v811[1]) < 0)
                            {
                              operator delete(*&v811[0]);
                            }

LABEL_590:
                            v388 = v795;
                            if (*(v17 + 2736) == 1)
                            {
                              v593 = *(v17 + 1784);
                              v594 = *(v17 + 168);
                              *(v17 + 1720) = *(v17 + 167);
                              *(v17 + 1736) = v594;
                              v595 = *(v17 + 170);
                              *(v17 + 1752) = *(v17 + 169);
                              *(v17 + 1768) = v595;
                              v596 = *(v17 + 164);
                              *(v17 + 1656) = *(v17 + 163);
                              *(v17 + 1672) = v596;
                              v597 = *(v17 + 166);
                              *(v17 + 1688) = *(v17 + 165);
                              *(v17 + 1704) = v597;
                              v598 = *(v17 + 162);
                              *(v17 + 1624) = *(v17 + 161);
                              *(v17 + 1640) = v598;
                              if ((v593 & 1) == 0)
                              {
                                *(v17 + 1784) = 1;
                              }
                            }

LABEL_475:
                            if ((*(v17 + 1424) & 0x100) != 0)
                            {
                              v437 = *(v17 + 1424) & 0x1FF;
                            }

                            else
                            {
                              if (*(v17 + 816) != 1)
                              {
                                if ((*(v17 + 1561) & 1) == 0)
                                {
                                  *(v17 + 1561) = 1;
                                }

                                *(v17 + 1560) = 1;
                                goto LABEL_483;
                              }

                              v437 = *(v17 + 808) | 0x100;
                            }

                            *(v17 + 780) = v437;
LABEL_483:
                            if (*(v17 + 1520) == 1)
                            {
                              v438 = v388;
                              LOWORD(v809.f64[0]) = 13;
                              LOBYTE(v811[0]) = 3;
                              v439 = *(v17 + 2384);
                              v441 = *(v15 + 5);
                              v440 = *(v15 + 6);
                              (*(*v15 + 16))(v15);
                              trackrun::TrackRunEngineActiveObject::ConvertIosTimeToGregorianString(v17, *(v15 + 5), *(v15 + 6), v814);
                              if (*(v17 + 1536))
                              {
                                v447 = (v17 + 1528);
                              }

                              else
                              {
                                v447 = (v15 + 152);
                              }

                              if (*(v17 + 1552))
                              {
                                v448 = (v17 + 1544);
                              }

                              else
                              {
                                v448 = (v15 + 136);
                              }

                              if (*(v17 + 1561) == 1)
                              {
                                v449 = *(v17 + 1560);
                              }

                              v457 = *(v17 + 188);
                              v458 = *(v17 + 189);
                              v459 = *v447;
                              v460 = *(v15 + 20);
                              v461 = *(v15 + 21);
                              v462 = *(v15 + 22);
                              v463 = *v448;
                              v464 = *(v15 + 16);
                              v465 = *(v15 + 18);
                              v466 = *(v15 + 104);
                              v467 = *(v17 + 1496);
                              v468 = *(*(v793 + 5) + 72 * v438 + 64);
                              v469 = *(v17 + 1584);
                              v470 = *(v17 + 201);
                              v471 = *(v17 + 199) - *(v15 + 24);
                              if (*(v17 + 2736) == 1)
                              {
                                v472 = *(v17 + 331);
                              }

                              v764 = *(v17 + 200) - *(v15 + 25);
                              cnprint::CNPrinter::Print(&v809, v811, "TrackRun-Mat-%u,viewType,SingleArrowCoordinate,iOSTime,%.1lf,mcTime,%.1lf,gregTime,%s,latitude,%.7lf,longitude,%.7lf,course,%.2lf,courseUnc,%.2lf,speed,%.2lf,speedUnc,%.2lf,hunc,%.1lf,altitude,%.1lf,vunc,%.1lf,type,%d,track_prox,%d,dist_to_lane_,%.1lf,matched_lane_num,%d,lane_est,%d,lane_count,%hhu,lane_width,%.2lf,odo_valid,%d,odo,%.1lf,odo_dd,%.1lf,odo_dd_unc,%.1lf,odo_diff,%.1lf,odo_dd_diff,%.1lf,current_lap_distance,%.1lf", v442, v443, v444, v445, v446, v439);
                              if (SHIBYTE(v814[1].f64[0]) < 0)
                              {
                                operator delete(*&v814[0].f64[0]);
                              }
                            }

                            else
                            {
                              strcpy(v814, "\r");
                              LOBYTE(v809.f64[0]) = 4;
                              v450 = (*(*v15 + 16))(v15);
                              v752 = *(v15 + 14);
                              v757 = *(v15 + 15);
                              v746 = v451 + v450;
                              cnprint::CNPrinter::Print(v814, &v809, "#tre_ao,Warning,MatchedPosition,time,%.3lf,current_position_east_north_m,latlng,%.8lf,%.8lf,track_position_ has no value.", v452, v453, v454, v455, v456, SLOBYTE(v746));
                            }

                            goto LABEL_574;
                          }

LABEL_814:
                          v705 = v586;
                          v584.i64[0] = v587;
                          goto LABEL_815;
                        }

                        if (!*(v17 + 2457) || *(v15 + 21) < 0.05 && (*(v17 + 520) != 1 || *(v17 + 512) - 1 <= 1))
                        {
                          goto LABEL_542;
                        }
                      }

                      else
                      {
                        if ((*(v17 + 2568) & 1) == 0)
                        {
                          goto LABEL_572;
                        }

                        v493 = v17 + 2568;
                        if (*(v17 + 2456))
                        {
                          goto LABEL_562;
                        }
                      }

                      *(v17 + 2456) = 1;
                      LOWORD(v809.f64[0]) = 13;
                      LOBYTE(v811[0]) = 3;
                      if (*(v17 + 816) == 1)
                      {
                        v531 = *(v17 + 808);
                      }

                      v539 = *(v17 + 2384);
                      v540 = *(v17 + 323);
                      v541 = *(v17 + 324);
                      trackrun::TrackRunEngineActiveObject::ConvertIosTimeToGregorianString(v17, *(v17 + 326), *(v17 + 327), v814);
                      v547 = *(v17 + 299);
                      v548 = *(v17 + 300);
                      v549 = *(v17 + 301);
                      v550 = *(v17 + 302);
                      if (*(v17 + 816) == 1)
                      {
                        v551 = *(v17 + 808);
                      }

                      cnprint::CNPrinter::Print(&v809, v811, "TrackRun-Start-%u hint:%d,viewType,MultiCoordinatePolyline,iOSTime,%.1lf,mcTime,%.1lf,gregTime,%s,latitude,%.7lf,longitude,%.7lf,latitude1,%.7lf,longitude1,%.7lf,lane_hint,%d", v542, v543, v544, v545, v546, v539);
                      if (SHIBYTE(v814[1].f64[0]) < 0)
                      {
                        operator delete(*&v814[0].f64[0]);
                      }

                      if (*v493)
                      {
                        goto LABEL_562;
                      }

LABEL_572:
                      if (cnprint::CNPrinter::GetLogLevel(v408) <= 1)
                      {
                        strcpy(v814, "\r");
                        LOBYTE(v809.f64[0]) = 1;
                        cnprint::CNPrinter::Print(v814, &v809, "#tre_ao,starting line not populated. Cannot proceed", v568, v569, v570, v571, v572, v743);
                      }

                      goto LABEL_574;
                    }
                  }

LABEL_520:
                  if (*(v15 + 184) == 1)
                  {
                    v418 = *(v15 + 12);
                    v243[76] = v418;
                    v418.f64[0] = *(v15 + 26);
                    *(v17 + 201) = *&v418.f64[0];
                    *(v17 + 792) = 1;
                  }

                  v478 = *(v17 + 2736);
                  if (v478 == 1)
                  {
                    if (*(v17 + 1416) == 1 && *(v17 + 1241) == 4)
                    {
                      v408 = CNTimeSpan::operator-(v15 + 2, v17 + 172, v418, v423);
                      v423.f64[0] = v408;
                      v418.f64[0] = v409 + v408;
                      *(v17 + 329) = *&v418.f64[0];
                    }

                    else
                    {
                      v479.f64[0] = *(v17 + 329);
                      *(v17 + 329) = 0;
                      v480 = *(v15 + 25);
                      v479.f64[1] = v480;
                      *(v17 + 165) = vaddq_f64(v479, *(v17 + 165));
                      *(v17 + 332) = v480 + *(v17 + 332);
                      v423 = vdupq_lane_s64(*&v480, 0);
                      v418 = vaddq_f64(v423, *(v17 + 170));
                      *(v17 + 170) = v418;
                    }

                    v478 = 1;
                  }

                  goto LABEL_528;
                }

                if (*(v392 + 184) > *(v17 + 2216))
                {
                  goto LABEL_437;
                }
              }

              else
              {
                v394 = v388 + 1;
              }

              *(v17 + 555) = v394;
              v395 = 1;
              LOBYTE(v791[254].f64[1]) = 1;
              *(v17 + 2216) = 0;
              goto LABEL_441;
            }

            v387 = v384 - 1;
            if (v387 >= *(v242 + 96) - 1)
            {
              v388 = *(v242 + 96) - 1;
            }

            else
            {
              v388 = v387;
            }

            goto LABEL_427;
          }
        }

        if (!v792)
        {
          goto LABEL_574;
        }

        if (*(&v803[3] + 1) < 50.0)
        {
          strcpy(v821, "\r");
          LOBYTE(v809.f64[0]) = 3;
          v290 = *(v17 + 2384);
          v292 = *(v15 + 5);
          v291 = *(v15 + 6);
          (*(*v15 + 16))(v15, *(&v803[3] + 1));
          trackrun::TrackRunEngineActiveObject::ConvertIosTimeToGregorianString(v17, *(v15 + 5), *(v15 + 6), v814);
          if (*(v17 + 1561) == 1)
          {
            v298 = *(v17 + 1560);
          }

          if (*(v17 + 2736) == 1)
          {
            v299 = *(v17 + 331);
          }

          v300 = *(v15 + 14);
          v301 = *(v15 + 15);
          v302 = *(v15 + 20);
          v303 = *(v15 + 21);
          v304 = *(v15 + 22);
          v306 = *(v15 + 16);
          v305 = *(v15 + 17);
          v308 = *(v15 + 18);
          v307 = *(v15 + 19);
          v309 = *(v15 + 104);
          v310 = *(v17 + 1496);
          if (*(v17 + 1416) == 1 && (*(v17 + 1241) - 2) <= 3u)
          {
            v311 = dword_1D0EC1EB0[(*(v17 + 1241) - 2)];
          }

          cnprint::CNPrinter::Print(v821, &v809, "TrackRun-Mat-%u,viewType,SingleArrowCoordinate,iOSTime,%.1lf,mcTime,%.1lf,gregTime,%s,latitude,%.7lf,longitude,%.7lf,course,%.2lf,courseUnc,%.2lf,speed,%.2lf,speedUnc,%.2lf,hunc,%.1lf,altitude,%.1lf,vunc,%.1lf,type,%d,track_prox,%d,dist_to_outer_lane_,%.1lf,lane_est,%d,lane_count,%hhu,current_lap_distance,%.1lf,in_a_workout,%d,use_sparse_data,%d", v293, v294, v295, v296, v297, v290);
          if (SHIBYTE(v814[1].f64[0]) < 0)
          {
            operator delete(*&v814[0].f64[0]);
          }
        }

        if (v198 <= *(*(v17 + 35) + 112))
        {
          goto LABEL_574;
        }

        if (*(v17 + 416))
        {
          v814[0].f64[0] = v783;
          sub_1D0E62CA0(v814);
          *(v17 + 416) = 0;
          if ((*(v17 + 2280) & 1) == 0)
          {
            goto LABEL_282;
          }
        }

        else if ((*(v17 + 2280) & 1) == 0)
        {
          goto LABEL_574;
        }

        *(v17 + 274) = &unk_1F4CF0B60;
        *&v814[0].f64[0] = v17 + 2200;
        sub_1D0E62CA0(v814);
        *(v17 + 2280) = 0;
LABEL_282:
        strcpy(v814, "\r");
        v821[0] = 3;
        v312 = (*(*v15 + 16))(v15);
        v744 = v313 + v312;
        cnprint::CNPrinter::Print(v814, v821, "#tre_ao,time,%.3lf,user is no longer near any track, clearing non-sparse track data.", v314, v315, v316, v317, v318, SLOBYTE(v744));
        goto LABEL_574;
      }

LABEL_187:
      BYTE9(v803[22]) = 1;
      goto LABEL_188;
    }

    if (v198 >= v201 + *(v207 + 3))
    {
      v212 = 1;
    }

    else
    {
      v212 = v155;
    }

    if (v212)
    {
      if (v198 < v201 + v205)
      {
LABEL_169:
        LODWORD(v803[3]) = 2;
        goto LABEL_185;
      }

      LODWORD(v803[3]) = 1;
      if (v155 && *(v17 + 2184) == 1 && *(v17 + 466) != 1)
      {
        trackrun::TrackRunEngineActiveObject::ResetTrackStateWhenLeaveTrackOrSessionEnds(v17);
      }
    }

    else
    {
      LODWORD(v803[3]) = 3;
      if (*(v17 + 1104) == 1 && *(v17 + 1048) == 1 && *(v17 + 880) == 1 && sub_1D0B9D420(v17 + 111, v15 + 2) && (!*(v17 + 928) || sub_1D0B8E6A8(v17 + 117, v15 + 2)))
      {
        v814[0] = *(v17 + 64);
        if (trackrun::TrackRunEngineActiveObject::ConvertPointLatLonToEastNorth(v17, v814, v213, v214, v215, v216, v217, v218))
        {
          v219 = v793;
          if ((v794 & 1) == 0)
          {
            v219 = (*(v793 + 6) - 72);
          }

          if (sub_1D0B85938(v814[0].f64, v219) <= *(*(v17 + 35) + 248) * *(v17 + 130) * (*(*(v17 + 35) + 248) * *(v17 + 130)))
          {
            goto LABEL_169;
          }
        }
      }
    }

LABEL_185:
    if (!v794 || (LODWORD(v803[3]) - 3) > 1)
    {
      goto LABEL_188;
    }

    goto LABEL_187;
  }

  *&v783 = v17 + 392;
  v87 = *(v17 + 53) + 104 * v65;
  v88 = *v87;
  v89 = *(v87 + 8);
  v793 = v87;
  if (*v87 != v89)
  {
    v90 = *v87;
    do
    {
      if ((*v90 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v90[1] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_83;
      }

      v90 += 2;
    }

    while (v90 != v89);
  }

  if ((v89 - v88) < 0x40)
  {
    goto LABEL_83;
  }

  v91 = 0;
  v92 = *v87;
  do
  {
    v93 = v91;
    if (v92 != v89)
    {
      v94 = *v92;
      v95 = fabs(*v92);
      v96 = v92;
      while (1)
      {
        v97 = *v96;
        if (*v96 != v94)
        {
          if ((*&v94 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v97 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            break;
          }

          v98 = fabs(v97);
          v99 = vabdd_f64(v97, v94);
          if (v98 < v95)
          {
            v98 = v95;
          }

          if (v98 < 1.0)
          {
            v98 = 1.0;
          }

          a14.i64[0] = 0x3CB0000000000000;
          if (v99 > v98 * 2.22044605e-16)
          {
            break;
          }
        }

        v100 = v96[1];
        v101 = v92[1];
        if (v100 != v101)
        {
          if ((*&v100 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v101 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            break;
          }

          v103 = fabs(v100);
          v104 = fabs(v101);
          v105 = vabdd_f64(v100, v101);
          if (v103 >= v104)
          {
            v106 = v103;
          }

          else
          {
            v106 = v104;
          }

          if (v106 < 1.0)
          {
            v106 = 1.0;
          }

          a14.i64[0] = 0x3CB0000000000000;
          if (v105 > v106 * 2.22044605e-16)
          {
            break;
          }
        }

        v96 += 2;
        if (v96 == v89)
        {
          goto LABEL_82;
        }
      }

      v92 = v96;
    }

    if (v92 == v89)
    {
      break;
    }

    v91 = v93 + 1;
  }

  while (v93 < 4);
LABEL_82:
  if (v93 < 3)
  {
    goto LABEL_83;
  }

  if (v88 == v89)
  {
    __assert_rtn("front", "range.hpp", 121, "!boost::empty(rng)");
  }

  v183 = *(v89 - 2);
  v184 = *v88;
  if (*v88 != v183)
  {
    if ((*&v184 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v183 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_83;
    }

    v259 = fabs(v184);
    v260 = fabs(v183);
    v261 = vabdd_f64(v184, v183);
    if (v259 < v260)
    {
      v259 = v260;
    }

    if (v259 < 1.0)
    {
      v259 = 1.0;
    }

    if (v261 > v259 * 2.22044605e-16)
    {
      goto LABEL_83;
    }
  }

  v185 = v88[1];
  v186 = *(v89 - 1);
  if (v185 != v186)
  {
    if ((*&v185 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v186 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_83;
    }

    v262 = fabs(v185);
    v263 = fabs(v186);
    v264 = vabdd_f64(v185, v186);
    if (v262 < v263)
    {
      v262 = v263;
    }

    if (v262 < 1.0)
    {
      v262 = 1.0;
    }

    if (v264 > v262 * 2.22044605e-16)
    {
      goto LABEL_83;
    }
  }

  v187 = v88 + 2;
  if (v88 + 2 != v89)
  {
    v188 = fabs(v184);
    v189 = fabs(v185);
    a14.i64[0] = 1.0;
    v190 = v88 + 2;
    while (1)
    {
      v191 = *v190;
      if (*v190 != v184)
      {
        if ((*&v184 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v191 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          break;
        }

        v192 = fabs(v191);
        v193 = vabdd_f64(v191, v184);
        if (v192 < v188)
        {
          v192 = v188;
        }

        if (v192 < 1.0)
        {
          v192 = 1.0;
        }

        if (v193 > v192 * 2.22044605e-16)
        {
          break;
        }
      }

      v194 = v190[1];
      if (v194 != v185)
      {
        if ((*&v185 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v194 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          break;
        }

        v195 = fabs(v194);
        v196 = vabdd_f64(v194, v185);
        if (v195 < v189)
        {
          v195 = v189;
        }

        if (v195 < 1.0)
        {
          v195 = 1.0;
        }

        if (v196 > v195 * 2.22044605e-16)
        {
          break;
        }
      }

      v190 += 2;
      if (v190 == v89)
      {
        goto LABEL_620;
      }
    }

    if (v190 != v89)
    {
      v319 = v190 + 2;
      if (v190 + 2 != v89)
      {
        v320 = fabs(v191);
        while (1)
        {
          v321 = *v319;
          if (*v319 != v191)
          {
            if ((*&v191 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v321 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              break;
            }

            v322 = fabs(v321);
            v323 = vabdd_f64(v321, v191);
            if (v322 < v320)
            {
              v322 = v320;
            }

            if (v322 < 1.0)
            {
              v322 = 1.0;
            }

            a14.i64[0] = 0x3CB0000000000000;
            if (v323 > v322 * 2.22044605e-16)
            {
              break;
            }
          }

          v324 = v319[1];
          v325 = v190[1];
          if (v324 != v325)
          {
            if ((*&v324 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v325 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              break;
            }

            v327 = fabs(v324);
            v328 = fabs(v325);
            v329 = vabdd_f64(v324, v325);
            if (v327 >= v328)
            {
              v330 = v327;
            }

            else
            {
              v330 = v328;
            }

            if (v330 < 1.0)
            {
              v330 = 1.0;
            }

            a14.i64[0] = 0x3CB0000000000000;
            if (v329 > v330 * 2.22044605e-16)
            {
              break;
            }
          }

          v319 += 2;
          if (v319 == v89)
          {
            goto LABEL_620;
          }
        }

        if (v319 != v89)
        {
          v14 = 1.0;
          v331 = v88;
          v786 = v89 - 2;
          do
          {
            v332 = v190;
            v190 = v319;
            v814[0].f64[0] = 1.0;
            v333 = v332;
            v334 = v331;
            v335 = sub_1D0B827D0(v319, v332, v331, v814[0].f64);
            if (v335 == 0.0 || (*&v335 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && fabs(v335) <= v814[0].f64[0] * 2.22044605e-16)
            {
              v336 = v333[1];
              v337 = v190[1] - v336;
              v338 = *v333 - *v190;
              if (v338 == 0.0 || COERCE_UNSIGNED_INT64(fabs(*v333 - *v190)) <= 0x7FEFFFFFFFFFFFFFLL && ((v341 = fabs(v338), v341 >= 1.0) ? (v342 = v341) : (v342 = 1.0), *a14.i64 = v342 * 2.22044605e-16, v341 <= *a14.i64))
              {
                if (v337 == 0.0)
                {
                  goto LABEL_83;
                }

                if (COERCE_UNSIGNED_INT64(fabs(v190[1] - v336)) <= 0x7FEFFFFFFFFFFFFFLL)
                {
                  v339 = fabs(v337);
                  v340 = v339 >= 1.0 ? v339 : 1.0;
                  *a14.i64 = v340 * 2.22044605e-16;
                  if (v339 <= *a14.i64)
                  {
                    goto LABEL_83;
                  }
                }
              }

              if (v336 * v337 - v338 * *v333 + v334[1] * -v337 + v338 * *v334 <= 0.0)
              {
                goto LABEL_83;
              }
            }

            v319 = v190;
            if (v190 != v89)
            {
              v319 = v190 + 2;
              if (v190 + 2 == v89)
              {
                break;
              }

              v343 = *v190;
              v344 = fabs(*v190);
              while (1)
              {
                v345 = *v319;
                if (*v319 != v343)
                {
                  if ((*&v343 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v345 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
                  {
                    break;
                  }

                  v346 = fabs(v345);
                  v347 = vabdd_f64(v345, v343);
                  if (v346 < v344)
                  {
                    v346 = v344;
                  }

                  if (v346 < 1.0)
                  {
                    v346 = 1.0;
                  }

                  if (v347 > v346 * 2.22044605e-16)
                  {
                    break;
                  }
                }

                v348 = v319[1];
                v349 = v190[1];
                if (v348 != v349)
                {
                  if ((*&v348 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v349 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
                  {
                    break;
                  }

                  v351 = fabs(v348);
                  *a14.i64 = fabs(v349);
                  v352 = vabdd_f64(v348, v349);
                  if (v351 >= *a14.i64)
                  {
                    v353 = v351;
                  }

                  else
                  {
                    v353 = *a14.i64;
                  }

                  if (v353 < 1.0)
                  {
                    v353 = 1.0;
                  }

                  if (v352 > v353 * 2.22044605e-16)
                  {
                    break;
                  }
                }

                v319 += 2;
                if (v319 == v89)
                {
                  goto LABEL_354;
                }
              }
            }

            v331 = v333;
          }

          while (v319 != v89);
LABEL_354:
          v354 = *v88;
          v355 = *v786;
          if (*v88 == *v786)
          {
            goto LABEL_838;
          }

          if ((*&v354 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v355 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            v600 = fabs(v354);
            v601 = fabs(v355);
            v602 = vabdd_f64(v354, v355);
            if (v600 < v601)
            {
              v600 = v601;
            }

            if (v600 < 1.0)
            {
              v600 = 1.0;
            }

            if (v602 <= v600 * 2.22044605e-16)
            {
LABEL_838:
              v356 = v88[1];
              v357 = *(v89 - 1);
              v358 = fabs(v356);
              if (v356 == v357)
              {
                goto LABEL_356;
              }

              if ((*&v356 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v357 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
              {
                v603 = fabs(v357);
                v604 = vabdd_f64(v356, v357);
                if (v358 >= v603)
                {
                  v603 = v358;
                }

                if (v603 < 1.0)
                {
                  v603 = 1.0;
                }

                *a14.i64 = v603 * 2.22044605e-16;
                if (v604 <= *a14.i64)
                {
LABEL_356:
                  v359 = v88;
                  if (v786 != v88)
                  {
                    v360 = fabs(v355);
                    v361 = fabs(v357);
                    v359 = v89 - 2;
                    v362 = v89 - 2;
                    while (1)
                    {
                      v363 = *(v362 - 2);
                      v362 -= 2;
                      v364 = v363;
                      if (v363 != v355)
                      {
                        if ((*&v355 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v364 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
                        {
                          break;
                        }

                        v365 = fabs(v364);
                        v366 = vabdd_f64(v364, v355);
                        if (v365 < v360)
                        {
                          v365 = v360;
                        }

                        if (v365 < 1.0)
                        {
                          v365 = 1.0;
                        }

                        if (v366 > v365 * 2.22044605e-16)
                        {
                          break;
                        }
                      }

                      v367 = *(v359 - 1);
                      if (v367 != v357)
                      {
                        if ((*&v357 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v367 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
                        {
                          break;
                        }

                        v368 = fabs(v367);
                        v369 = vabdd_f64(v367, v357);
                        if (v368 < v361)
                        {
                          v368 = v361;
                        }

                        if (v368 < 1.0)
                        {
                          v368 = 1.0;
                        }

                        if (v369 > v368 * 2.22044605e-16)
                        {
                          break;
                        }
                      }

                      v359 = v362;
                      if (v362 == v88)
                      {
                        v359 = v88;
                        break;
                      }
                    }
                  }

                  v370 = fabs(v354);
                  while (1)
                  {
                    v371 = *v187;
                    if (*v187 != v354)
                    {
                      if ((*&v354 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v371 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
                      {
                        break;
                      }

                      v372 = fabs(v371);
                      v373 = vabdd_f64(v371, v354);
                      if (v372 < v370)
                      {
                        v372 = v370;
                      }

                      if (v372 < 1.0)
                      {
                        v372 = 1.0;
                      }

                      if (v373 > v372 * 2.22044605e-16)
                      {
                        break;
                      }
                    }

                    v374 = v187[1];
                    if (v374 != v356)
                    {
                      if ((*&v356 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v374 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
                      {
                        break;
                      }

                      v375 = fabs(v374);
                      v376 = vabdd_f64(v374, v356);
                      if (v375 < v358)
                      {
                        v375 = v358;
                      }

                      if (v375 < 1.0)
                      {
                        v375 = 1.0;
                      }

                      if (v376 > v375 * 2.22044605e-16)
                      {
                        break;
                      }
                    }

                    v187 += 2;
                    if (v187 == v89)
                    {
                      v187 = v89;
                      break;
                    }
                  }

                  v814[0].f64[0] = 1.0;
                  v377 = sub_1D0B827D0(v187, v88, v359 - 2, v814[0].f64);
                  if (v377 == 0.0 || (*&v377 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && fabs(v377) <= v814[0].f64[0] * 2.22044605e-16)
                  {
                    v378 = v88[1];
                    v379 = v187[1] - v378;
                    v380 = *v88 - *v187;
                    if (v380 == 0.0)
                    {
                      goto LABEL_839;
                    }

                    if (COERCE_UNSIGNED_INT64(fabs(*v88 - *v187)) <= 0x7FEFFFFFFFFFFFFFLL)
                    {
                      v605 = fabs(v380);
                      v606 = 1.0;
                      if (v605 >= 1.0)
                      {
                        v606 = v605;
                      }

                      *a14.i64 = v606 * 2.22044605e-16;
                      if (v605 <= *a14.i64)
                      {
LABEL_839:
                        if (v379 == 0.0)
                        {
                          goto LABEL_83;
                        }

                        if (COERCE_UNSIGNED_INT64(fabs(v187[1] - v378)) <= 0x7FEFFFFFFFFFFFFFLL)
                        {
                          v381 = fabs(v379);
                          v382 = 1.0;
                          if (v381 >= 1.0)
                          {
                            v382 = v381;
                          }

                          *a14.i64 = v382 * 2.22044605e-16;
                          if (v381 <= *a14.i64)
                          {
                            goto LABEL_83;
                          }
                        }
                      }
                    }

                    if (v378 * v379 - v380 * *v88 + *(v359 - 1) * -v379 + v380 * *(v359 - 2) <= 0.0)
                    {
                      goto LABEL_83;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_620:
  v804 = 0uLL;
  v805 = 0;
  v607 = *v793;
  v608 = *(v793 + 1);
  if (*v793 == v608)
  {
    v614 = 0.0;
  }

  else
  {
    v609 = (v607 + 2);
    v610 = *v607;
    a14 = *v607;
    if (v607 + 2 != v608)
    {
      do
      {
        v611 = *v609++;
        a14 = vbslq_s8(vcgtq_f64(a14, v611), v611, a14);
        v610 = vbslq_s8(vcgtq_f64(v611, v610), v611, v610);
      }

      while (v609 != v608);
    }

    v612 = vabdq_f64(v610, a14);
    v613 = v612.f64[1];
    if (v612.f64[1] < v612.f64[0])
    {
      v613 = v612.f64[0];
    }

    v14 = *&a14.i64[1];
    v614 = 1.0;
    if (v613 != 0.0)
    {
      v615 = v613 == INFINITY;
      if (v613 >= 1.0)
      {
        v616 = v613;
      }

      else
      {
        v616 = 1.0;
      }

      if (v613 > v616 * 2.22044605e-16)
      {
        v615 = 1;
      }

      if (v613 != INFINITY && v613 < 10000000.0 && v615)
      {
        v788 = a14.i64[0];
        v618 = 10000000.0 / v613 + 0.5;
        sub_1D0B828E4(2 * (v618 >= 9.22337204e18));
        v619 = vcvtmd_s64_f64(v618);
        if (v619 < 1)
        {
          v732 = "factor >= 1";
          v733 = 86;
          v734 = "get_rescale_policy.hpp";
          v735 = "scale_box_to_integer_range";
LABEL_828:
          __assert_rtn(v735, v734, v733, v732);
        }

        v614 = v619;
        v607 = *v793;
        v608 = *(v793 + 1);
        a14.i64[0] = v788;
      }
    }
  }

  *v821 = a14.i64[0];
  *&v821[8] = v14;
  *&v821[16] = vdupq_n_s64(0xFFFFFFFFFFB3B4C0);
  v822 = v614;
  LOBYTE(v796) = 0;
  v806 = 0;
  v807 = 0;
  v808 = 0;
  if ((v608 - v607) < 0x11 || v608 == v607)
  {
    v670 = 0;
    v671 = 0;
    v672 = *&v793;
    goto LABEL_727;
  }

  v814[4].f64[0] = NAN;
  v814[4].f64[1] = NAN;
  v814[5] = 0uLL;
  LOBYTE(v815) = 0;
  *(&v815 + 1) = -1;
  LOWORD(v816) = 0;
  v620.f64[0] = NAN;
  v620.f64[1] = NAN;
  v814[2] = vnegq_f64(v620);
  v814[3] = vnegq_f64(0);
  v814[0].f64[0] = 0.0;
  memset(&v814[0].f64[1], 255, 24);
  v621 = (v607[1] - v14) * v614 + -5000000.0;
  if (v621 >= 0.0)
  {
    v622 = 0.5;
  }

  else
  {
    v622 = -0.5;
  }

  v623 = v621 + v622;
  if (v621 + v622 <= -9.22337204e18)
  {
    v624 = 1;
  }

  else
  {
    v624 = 2 * (v621 + v622 >= 9.22337204e18);
  }

  sub_1D0B828E4(v624);
  v625 = *&v821[16] + (*v607 - *v821) * v822;
  if (v625 >= 0.0)
  {
    v626 = 0.5;
  }

  else
  {
    v626 = -0.5;
  }

  v627 = v625 + v626;
  if (v625 + v626 <= -9.22337204e18)
  {
    v628 = 1;
  }

  else
  {
    v628 = 2 * (v625 + v626 >= 9.22337204e18);
  }

  sub_1D0B828E4(v628);
  v629 = v607 + 2;
  if (v607 + 2 == v608)
  {
    v671 = 0;
    v670 = 0;
    v703 = 0;
    goto LABEL_809;
  }

  v765 = v17;
  v767 = 0;
  v771 = 0;
  v776 = 0;
  v784 = 0;
  v789 = 0;
  v630 = 0.0;
  v779 = 0;
  v770 = (v608 - v607) >> 4;
  v631 = ceil(v627);
  v632 = floor(v627);
  if (v627 >= 0.0)
  {
    v631 = v632;
  }

  v633 = v631;
  v634 = ceil(v623);
  v635 = floor(v623);
  if (v623 >= 0.0)
  {
    v634 = v635;
  }

  v636 = v634;
  v774 = 0x7FFFFFFFFFFFFFFFLL;
  v637 = 0x8000000000000000;
  v638.f64[0] = NAN;
  v638.f64[1] = NAN;
  v769 = vnegq_f64(v638);
  v768 = vnegq_f64(0);
  v777 = 1;
  *&v639 = -0.0;
  v772 = v608;
  v773 = 0x7FFFFFFFFFFFFFFFLL;
  v775 = 1;
  do
  {
    v640 = *&v633;
    v641 = *&v636;
    v642 = v789;
    v643 = v784;
    v781 = v629;
    v644 = *&v821[24] + (v629[1] - *&v821[8]) * v822;
    if (v644 >= 0.0)
    {
      v645 = 0.5;
    }

    else
    {
      v645 = -0.5;
    }

    v646 = v644 + v645;
    if (v644 + v645 <= -9.22337204e18)
    {
      v647 = 1;
    }

    else
    {
      v647 = 2 * (v644 + v645 >= 9.22337204e18);
    }

    sub_1D0B828E4(v647);
    v648 = ceil(v646);
    v649 = floor(v646);
    if (v646 >= 0.0)
    {
      v650 = v649;
    }

    else
    {
      v650 = v648;
    }

    v651 = *&v821[16] + (*v781 - *v821) * v822;
    if (v651 >= 0.0)
    {
      v652 = 0.5;
    }

    else
    {
      v652 = -0.5;
    }

    v653 = v651 + v652;
    if (v651 + v652 <= -9.22337204e18)
    {
      v654 = 1;
    }

    else
    {
      v654 = 2 * (v651 + v652 >= 9.22337204e18);
    }

    sub_1D0B828E4(v654);
    v636 = v650;
    v655 = ceil(v653);
    v656 = floor(v653);
    if (v653 >= 0.0)
    {
      v655 = v656;
    }

    v633 = v655;
    if (*&v640 <= v655)
    {
      v657 = 0;
    }

    else
    {
      v657 = -1;
    }

    if (*&v640 < v655)
    {
      v658 = 1;
    }

    else
    {
      v658 = v657;
    }

    if (*&v641 <= v636)
    {
      v659 = 0;
    }

    else
    {
      v659 = -1;
    }

    if (*&v641 < v636)
    {
      v659 = 1;
    }

    v784 = v659;
    v789 = v658;
    v660 = *&v637;
    if (v658)
    {
      goto LABEL_693;
    }

    if (*&v640 != v633 || *&v641 != v636)
    {
      v789 = 0;
LABEL_693:
      v662 = 0;
      if (v630 == 0.0)
      {
        goto LABEL_705;
      }

      goto LABEL_694;
    }

    v662 = 1;
    v789 = -99;
    v784 = -99;
    if (v630 == 0.0)
    {
      goto LABEL_705;
    }

LABEL_694:
    if (v789 != v642 || *&v630 > 0xAuLL || v784 != v643)
    {
      if ((v776 & 1) == 0)
      {
        v767 = 0xEEEEEEEEEEEEEEEFLL * ((v807 - v806) >> 3);
      }

      sub_1D0B8295C(&v806, v814);
      *(&v814[4] + 8) = xmmword_1D0E7A2D0;
      v814[0].f64[0] = 0.0;
      v814[2] = v769;
      v814[3] = v768;
      LOWORD(v816) = 0;
LABEL_705:
      *&v814[4].f64[0] = v777 - 1;
      v814[0].f64[1] = 0.0;
      v814[1].f64[0] = NAN;
      v814[1].f64[1] = NAN;
      LOBYTE(v815) = v662;
      *(&v815 + 1) = v779;
      *&v814[5].f64[1] = v770;
      v665 = v772;
      if (!(v662 & 1 | ((v775 & 1) == 0)))
      {
        v775 = 0;
        LOBYTE(v816) = 1;
      }

      *&v814[0].f64[0] = __PAIR64__(v784, v789);
      v814[2].f64[0] = v640;
      v814[2].f64[1] = v641;
      v666 = v640;
      v814[3].f64[0] = v640;
      v814[3].f64[1] = v641;
      if (*&v640 > v633)
      {
        *&v814[2].f64[0] = v633;
        v666 = *&v633;
      }

      if (*&v640 < v633)
      {
        *&v814[3].f64[0] = v633;
        v640 = *&v633;
      }

      v773 = *&v666;
      v667 = *&v641;
      if (*&v641 > v636)
      {
        *&v814[2].f64[1] = v650;
        v667 = v650;
      }

      v774 = v667;
      v630 = 0.0;
      v771 = v662;
      v776 = v662;
      if (*&v641 < v636)
      {
        goto LABEL_714;
      }

      goto LABEL_715;
    }

    v669 = v773;
    v668 = v774;
    if (v773 >= v633)
    {
      v669 = v655;
    }

    if (v639 <= v633)
    {
      *&v640 = v655;
    }

    else
    {
      v640 = *&v639;
    }

    if (v774 >= v636)
    {
      v668 = v650;
    }

    v773 = v669;
    v774 = v668;
    *&v814[2].f64[0] = v669;
    *&v814[2].f64[1] = v668;
    v814[3].f64[0] = v640;
    v641 = v660;
    v665 = v772;
    if (*&v660 < v636)
    {
LABEL_714:
      *&v814[3].f64[1] = v650;
      *&v641 = v650;
    }

LABEL_715:
    ++*&v630;
    v779 += v662 ^ 1u;
    v629 = v781 + 2;
    *&v814[4].f64[1] = v777;
    v814[5].f64[0] = v630;
    ++v777;
    v637 = *&v641;
    *&v639 = v640;
  }

  while (v781 + 2 != v665);
  v17 = v765;
  v703 = v767;
  if ((v771 & 1) == 0)
  {
    v703 = 0xEEEEEEEEEEEEEEEFLL * ((v807 - v806) >> 3);
  }

  sub_1D0B8295C(&v806, v814);
  v671 = v806;
  v670 = v807;
LABEL_809:
  v672 = *&v793;
  if (v703 < 0xEEEEEEEEEEEEEEEFLL * ((v670 - v671) >> 3))
  {
    v704 = &v671[30 * v703];
    if ((v704[24] & 1) == 0)
    {
      *(v704 + 113) = 1;
    }
  }

LABEL_727:
  v814[0].f64[0] = v672;
  *&v814[0].f64[1] = v813;
  *&v814[1].f64[0] = v821;
  *&v814[1].f64[1] = &v804;
  *&v814[2].f64[0] = &v796;
  LODWORD(v814[2].f64[1]) = 0;
  BYTE4(v814[2].f64[1]) = 1;
  if (0xEEEEEEEEEEEEEEEFLL * ((v670 - v671) >> 3) < 0x11)
  {
    while (v671 != v670)
    {
      v700 = v671;
      v671 += 30;
      if (v671 != v670)
      {
        v701 = v671;
        do
        {
          if (*(v700 + 6) >= *(v701 + 4) && *(v700 + 4) <= *(v701 + 6))
          {
            v702 = *(v700 + 7) >= *(v701 + 5) && *(v700 + 5) <= *(v701 + 7);
            if (v702 && (v700[24] & 1) == 0 && (v701[24] & 1) == 0)
            {
              if (!sub_1D0B82AC0(SLODWORD(v814[2].f64[1]), **&v814[0].f64[0], *(*&v814[0].f64[0] + 8), v700, SLODWORD(v814[2].f64[1]), **&v814[0].f64[0], *(*&v814[0].f64[0] + 8), v701, SBYTE4(v814[2].f64[1]), *&v814[0].f64[1], *&v814[1].f64[0], *&v814[1].f64[1], *&v814[2].f64[0]))
              {
                goto LABEL_776;
              }

              v670 = v807;
            }
          }

          v701 += 30;
        }

        while (v701 != v670);
      }
    }
  }

  else
  {
    memset(v811, 0, 24);
    v673.f64[0] = NAN;
    v673.f64[1] = NAN;
    v809 = vnegq_f64(v673);
    v810 = vnegq_f64(0);
    *&v798.f64[0] = v671;
    if (v671 != v670)
    {
      v778 = v15;
      v780 = v670;
      v766 = v17;
      v674 = NAN;
      v675 = 0x8000000000000000;
      v676 = 0x8000000000000000;
      v677 = NAN;
      v678 = 0x8000000000000000;
      v679 = 0x7FFFFFFFFFFFFFFFLL;
      v680 = 0x8000000000000000;
      v681 = 0x7FFFFFFFFFFFFFFFLL;
      do
      {
        v782 = v681;
        v785 = v676;
        v790 = v677;
        v683 = *(v671 + 4);
        v682 = *(v671 + 5);
        v684 = *(v671 + 6);
        v685 = *(v671 + 7);
        sub_1D0E6BC48(v811, &v798);
        if (v682 <= v678)
        {
          v686 = v678;
        }

        else
        {
          v686 = v682;
        }

        if (v682 <= v678)
        {
          v687 = v675;
        }

        else
        {
          v687 = v682;
        }

        if (v682 >= v679)
        {
          v688 = v679;
        }

        else
        {
          v688 = v682;
        }

        if (v682 >= v679)
        {
          v689 = v674;
        }

        else
        {
          v689 = *&v682;
        }

        if (v683 <= v680)
        {
          v690 = v680;
        }

        else
        {
          v690 = v683;
        }

        v691 = v785;
        v692 = v790;
        if (v683 > v680)
        {
          v691 = v683;
        }

        v681 = v782;
        if (v683 < v782)
        {
          v681 = v683;
          v692 = *&v683;
        }

        if (*&v685 <= v686)
        {
          v675 = v687;
        }

        else
        {
          v675 = *&v685;
        }

        if (*&v685 <= v686)
        {
          v678 = v686;
        }

        else
        {
          v678 = *&v685;
        }

        if (*&v685 >= v688)
        {
          v674 = v689;
        }

        else
        {
          v674 = v685;
        }

        if (*&v685 >= v688)
        {
          v679 = v688;
        }

        else
        {
          v679 = *&v685;
        }

        if (*&v684 <= v690)
        {
          v676 = v691;
        }

        else
        {
          v676 = *&v684;
        }

        if (*&v684 <= v690)
        {
          v680 = v690;
        }

        else
        {
          v680 = *&v684;
        }

        if (*&v684 >= v681)
        {
          v677 = v692;
        }

        else
        {
          v677 = v684;
        }

        if (*&v684 < v681)
        {
          v681 = *&v684;
        }

        v671 += 30;
        *&v798.f64[0] = v671;
      }

      while (v671 != v780);
      v809.f64[0] = v677;
      v809.f64[1] = v674;
      *&v810.f64[0] = v676;
      *&v810.f64[1] = v675;
      v17 = v766;
      v15 = v778;
    }

    sub_1D0E6B6BC(&v809, v811, 0, v814);
    if (*&v811[0])
    {
      operator delete(*&v811[0]);
    }
  }

LABEL_776:
  if (v806)
  {
    operator delete(v806);
  }

  v693 = v796;
  if (v796 == 1 && v804 == *(&v804 + 1))
  {
    v732 = "! boost::empty(turns)";
    v733 = 94;
    v734 = "has_valid_self_turns.hpp";
    v735 = "apply";
    goto LABEL_828;
  }

  if (v804)
  {
    *(&v804 + 1) = v804;
    operator delete(v804);
  }

  if ((v693 & 1) == 0)
  {
    v694 = *v793;
    v695 = *(v793 + 1);
    if ((v695 - *v793) >= 0x40)
    {
      v696 = (v695 - 16);
      if (v696 != v694)
      {
        v697 = 0.0;
        v698 = v696;
        do
        {
          v699 = *(v698 - 2);
          v698 -= 2;
          v697 = v697 + (*v696 + v699) * (v696[1] - *(v696 - 1));
          v696 = v698;
        }

        while (v698 != v694);
        if (v697 * 0.5 > 0.0)
        {
          goto LABEL_98;
        }
      }
    }
  }

LABEL_83:
  strcpy(v814, "\r");
  v821[0] = 4;
  v107 = (*(*v15 + 16))(v15);
  v739 = v108 + v107;
  cnprint::CNPrinter::Print(v814, v821, "#tre_ao,HandleEvent,PositionEvent,time,%.3lf,nearest_track does not have a valid bounding box. Cannot proceed.", v109, v110, v111, v112, v113, SLOBYTE(v739));
LABEL_9:
  v42 = *MEMORY[0x1E69E9840];
}

void sub_1D0B82518(uint64_t a1, trackrun::TrackRunEngineActiveObject **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a2;
  if (*(a3 + 8) == 1)
  {
    v10 = *(a3 + 24);
  }

  else
  {
    LOWORD(v35.__vftable) = 3;
    LOBYTE(v44) = 5;
    cnprint::CNPrinter::Print(&v35, &v44, "Attempted to access type of uninitialized GenericEvent.", a4, a5, a6, a7, a8, v34);
    v10 = MEMORY[0x1E69E54A8];
  }

  {
    v19 = *(a3 + 16);
    if (v19)
    {
      v20 = (*(*v19 + 16))(v19);
    }

    else
    {
      v20 = MEMORY[0x1E69E54A8];
    }

    v26 = (*(v20 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v26 != (off_1F4CF0CC0 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v26, (off_1F4CF0CC0 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      v35.__vftable = 0;
      std::bad_cast::bad_cast(&v35);
      v35.__vftable = &unk_1F4CE4880;
      sub_1D0DC7F8C();
    }

    v27 = *(a3 + 16);
    v35.__vftable = &unk_1F4CF0C98;
    v36 = v27[1];
    v28 = v27[4];
    v29 = v27[5];
    v30 = v27[3];
    v37 = v27[2];
    v40 = v29;
    v39 = v28;
    v38 = v30;
    v31 = v27[8];
    v32 = v27[9];
    v33 = v27[7];
    *v41 = v27[6];
    *&v41[48] = v32;
    *&v41[32] = v31;
    *&v41[16] = v33;
    v25 = v27[12];
    v22 = v27[13];
    v24 = v27[10];
    v23 = v27[11];
    *&v41[64] = v24;
    *&v42[16] = v22;
    *v42 = v25;
    *&v41[80] = v23;
  }

  else
  {
    v44 = 3;
    v43 = 5;
    if (*(a3 + 8) == 1)
    {
      v21 = *(a3 + 24);
    }

    else
    {
      LOWORD(v35.__vftable) = 3;
      v45 = 5;
      cnprint::CNPrinter::Print(&v35, &v45, "Attempted to access type of uninitialized GenericEvent.", v12, v13, v14, v15, v16, v34);
      v21 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v44, &v43, "Attempted to cast a GenericEvent of type %s to type %s.", v12, v13, v14, v15, v16, *(v21 + 8));
    v36 = 0uLL;
    v39 = 0uLL;
    v35.__vftable = &unk_1F4CF0C98;
    v37 = 0uLL;
    v40 = 0uLL;
    v38 = 0uLL;
    memset(v41, 0, 24);
    v25 = vdupq_n_s64(0x7FF8000000000000uLL);
    *&v41[24] = v25;
    *&v41[40] = v25;
    *&v41[56] = v25;
    *&v41[72] = v25;
    *&v41[88] = 0x7FF8000000000000;
    *v42 = 0;
    *&v42[8] = v25;
    *&v42[24] = 0x7FF8000000000000;
  }

  trackrun::TrackRunEngineActiveObject::HandleEvent(v9, &v35, v11, v12, v13, v14, v15, v16, *v25.i64, *v22.i64, *v23.i64, *v24.i64, v17, v18);
}

double sub_1D0B827D0(double *a1, double *a2, double *a3, double *a4)
{
  v4 = a1[1];
  v20[0] = *a1;
  v20[1] = v4;
  v5 = a2[1];
  v19[0] = *a2;
  v19[1] = v5;
  v6 = a3[1];
  v18[0] = *a3;
  v18[1] = v6;
  v7 = v20[0] - v18[0];
  v27[0] = v20[0] - v18[0];
  v8 = v5 - v6;
  v26[0] = v5 - v6;
  v9 = v4 - v6;
  v25[0] = v4 - v6;
  v10 = v19[0] - v18[0];
  v24[0] = v19[0] - v18[0];
  v11 = vabdd_f64(v20[0], v18[0]);
  v12 = vabdd_f64(v5, v6);
  v13 = vabdd_f64(v4, v6);
  v14 = vabdd_f64(v19[0], v18[0]);
  if (v11 < v12)
  {
    v11 = v12;
  }

  if (v11 < v13)
  {
    v11 = v13;
  }

  if (v11 < v14)
  {
    v11 = v14;
  }

  if (v11 < 1.0)
  {
    v11 = 1.0;
  }

  *a4 = v11;
  v15 = v7 * v8;
  v23[0] = v7 * v8;
  v16 = v10 * v9;
  result = v7 * v8 - v10 * v9;
  v21 = fabs(v7 * v8) + fabs(v10 * v9);
  v22[0] = v10 * v9;
  if (vabdd_f64(v7 * v8, v10 * v9) < v21 * 3.33066907e-16 && (v15 <= 0.0 || v16 > 0.0) && (v15 >= 0.0 || v16 < 0.0))
  {
    return sub_1D0E0C744(v20, v19, v18, v27, v26, v25, v24, v23, v22, &v21);
  }

  return result;
}

uint64_t sub_1D0B828E4(uint64_t result)
{
  if (result == 2)
  {
    exception = __cxa_allocate_exception(8uLL);
    exception->__vftable = 0;
    v2 = sub_1D0E6B5FC(exception);
    v3 = &unk_1F4CF1030;
    v4 = std::exception::~exception;
    goto LABEL_6;
  }

  if (result == 1)
  {
    v5 = __cxa_allocate_exception(8uLL);
    v5->__vftable = 0;
    v2 = sub_1D0E6B5C4(v5);
    v3 = &unk_1F4CF1018;
    v4 = std::exception::~exception;
LABEL_6:
    __cxa_throw(v2, v3, v4);
  }

  return result;
}

void sub_1D0B8295C(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v12 = *a1;
    v13 = v3 - *a1;
    v14 = 0xEEEEEEEEEEEEEEEFLL * (v13 >> 3) + 1;
    if (v14 > 0x222222222222222)
    {
      sub_1D0C5663C();
    }

    v15 = 0xEEEEEEEEEEEEEEEFLL * ((v4 - v12) >> 3);
    if (2 * v15 > v14)
    {
      v14 = 2 * v15;
    }

    if (v15 >= 0x111111111111111)
    {
      v16 = 0x222222222222222;
    }

    else
    {
      v16 = v14;
    }

    if (v16)
    {
      if (v16 <= 0x222222222222222)
      {
        operator new();
      }

      sub_1D0C54BE8();
    }

    v17 = a2[5];
    v18 = 8 * (v13 >> 3);
    *(v18 + 64) = a2[4];
    *(v18 + 80) = v17;
    *(v18 + 96) = a2[6];
    *(v18 + 112) = *(a2 + 14);
    v19 = a2[1];
    *v18 = *a2;
    *(v18 + 16) = v19;
    v20 = a2[3];
    v11 = v18 + 120;
    v21 = v18 - v13;
    *(v18 + 32) = a2[2];
    *(v18 + 48) = v20;
    memcpy((v18 - v13), v12, v13);
    *a1 = v21;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    v5 = *a2;
    v6 = a2[1];
    v7 = a2[3];
    *(v3 + 32) = a2[2];
    *(v3 + 48) = v7;
    *v3 = v5;
    *(v3 + 16) = v6;
    v8 = a2[4];
    v9 = a2[5];
    v10 = a2[6];
    *(v3 + 112) = *(a2 + 14);
    *(v3 + 80) = v9;
    *(v3 + 96) = v10;
    *(v3 + 64) = v8;
    v11 = v3 + 120;
  }

  *(a1 + 8) = v11;
}

uint64_t sub_1D0B82AC0(int a1, double *a2, double *a3, int *a4, int a5, double *a6, double *a7, int *a8, char a9, uint64_t a10, uint64_t *a11, uint64_t *a12, BOOL *a13)
{
  v13 = a8;
  v14 = a7;
  v16 = a4;
  v595 = *MEMORY[0x1E69E9840];
  if (*(a4 + 96) == 1 && (*(a4 + 10) + 1) < *(a4 + 11) || *(a8 + 96) == 1 && (*(a8 + 10) + 1) < *(a8 + 11))
  {
    goto LABEL_5;
  }

  v18 = *a4;
  v501 = *a8;
  v20 = *(a4 + 8);
  v19 = *(a4 + 9);
  v21 = *(a4 + 13);
  v22 = &a2[2 * v20];
  v489 = &a2[2 * v19 + 2];
  v481 = *a4;
  if (16 * v20 == 16 * v19)
  {
    goto LABEL_33;
  }

  v24 = *(a4 + 8);
  v25 = 0;
  v26 = &a2[2 * v20];
  v27 = v22 + 2;
  v508 = v22;
  v487 = *(a4 + 13);
  v495 = v24;
  while (1)
  {
    v28 = a11[3] + (v27[1] - *(a11 + 1)) * *(a11 + 4);
    if (v28 >= 0.0)
    {
      v29 = 0.5;
    }

    else
    {
      v29 = -0.5;
    }

    v30 = v28 + v29;
    if (v30 <= -9.22337204e18)
    {
      v31 = 1;
    }

    else
    {
      v31 = 2 * (v30 >= 9.22337204e18);
    }

    sub_1D0B828E4(v31);
    v32 = a11[2] + (*v27 - *a11) * *(a11 + 4);
    if (v32 >= 0.0)
    {
      v33 = 0.5;
    }

    else
    {
      v33 = -0.5;
    }

    v34 = v32 + v33;
    if (v32 + v33 <= -9.22337204e18)
    {
      v35 = 1;
    }

    else
    {
      v35 = 2 * (v32 + v33 >= 9.22337204e18);
    }

    sub_1D0B828E4(v35);
    v36 = ceil(v34);
    v37 = floor(v34);
    if (v34 >= 0.0)
    {
      v36 = v37;
    }

    v38 = v36;
    if (v18 != 1)
    {
      if (v18 != -1)
      {
        v22 = v508;
        v16 = a4;
        v20 = v495;
        v21 = v487;
        goto LABEL_32;
      }

      if (v13[6] >= v38)
      {
        v40 = v24;
        v16 = a4;
        v22 = v26;
        v20 = v40;
        goto LABEL_32;
      }

      goto LABEL_27;
    }

    if (v13[4] <= v38)
    {
      break;
    }

LABEL_27:
    v39 = v27 + 2;
    ++v24;
    ++v21;
    ++v25;
    v26 = v27;
    v27 = v39;
    if (v39 == v489)
    {
      v22 = v39 - 2;
      v20 = v24;
      goto LABEL_31;
    }
  }

  v22 = v27 - 2;
  v21 = v487 + v25;
  v20 = v495 + v25;
LABEL_31:
  v16 = a4;
LABEL_32:
  v14 = a7;
LABEL_33:
  v17 = 1;
  if (v22 + 2 == v489)
  {
    goto LABEL_862;
  }

  v488 = v21;
  v41 = &a2[2 * (v22 != a2)];
  v485 = v22 + 2;
  if (v22 + 2 != a3)
  {
    v41 = v22 + 2;
  }

  v42 = v41 != a2;
  v43 = v41 + 2;
  v44 = &a2[2 * v42];
  if (v43 == a3)
  {
    v43 = v44;
  }

  v484 = v43;
  v478 = a6 + 2;
  v45 = 0.5;
  v46 = -0.5;
  v47 = v22;
  v490 = v14;
  v491 = a6;
  v492 = v13;
  while (2)
  {
    v48 = a11[3] + (v47[1] - *(a11 + 1)) * *(a11 + 4);
    if (v48 >= 0.0)
    {
      v49 = v45;
    }

    else
    {
      v49 = v46;
    }

    v50 = v48 + v49;
    if (v50 <= -9.22337204e18)
    {
      v51 = 1;
    }

    else
    {
      v51 = 2 * (v50 >= 9.22337204e18);
    }

    sub_1D0B828E4(v51);
    v482 = v47;
    v52 = a11[2] + (*v47 - *a11) * *(a11 + 4);
    if (v52 >= 0.0)
    {
      v53 = v45;
    }

    else
    {
      v53 = v46;
    }

    v54 = v52 + v53;
    if (v52 + v53 <= -9.22337204e18)
    {
      v55 = 1;
    }

    else
    {
      v55 = 2 * (v52 + v53 >= 9.22337204e18);
    }

    sub_1D0B828E4(v55);
    v56 = ceil(v54);
    v57 = floor(v54);
    if (v54 >= 0.0)
    {
      v56 = v57;
    }

    v58 = v56;
    if (v481 == -1)
    {
      if (v13[4] > v58)
      {
        break;
      }
    }

    else if (v481 == 1 && v13[6] < v58)
    {
      break;
    }

    v59 = *(a11 + 1);
    v537 = *a11;
    v531[0] = v16;
    v496 = v20;
    v531[1] = v20;
    *&v532 = v47;
    *(&v532 + 1) = v485;
    v533[0] = v484;
    v533[1] = a2;
    v533[2] = a3;
    v534 = 1;
    v536 = 0;
    v538 = v59;
    v61 = v13[8];
    v60 = v13[9];
    v62 = &a6[2 * v61];
    v539 = a11[4];
    v63 = v62 + 2;
    v64 = v13[13];
    v503 = &v478[2 * v60];
    if (v62 + 2 == v503)
    {
      v79 = &a6[2 * v61];
      goto LABEL_85;
    }

    v65 = 0;
    v66 = v62;
    v504 = v64;
    v499 = v61;
    while (2)
    {
      v67 = a11[3] + (v63[1] - *(a11 + 1)) * *(a11 + 4);
      if (v67 >= 0.0)
      {
        v68 = v45;
      }

      else
      {
        v68 = v46;
      }

      v69 = v67 + v68;
      if (v69 <= -9.22337204e18)
      {
        v70 = 1;
      }

      else
      {
        v70 = 2 * (v69 >= 9.22337204e18);
      }

      sub_1D0B828E4(v70);
      v71 = a11[2] + (*v63 - *a11) * *(a11 + 4);
      if (v71 >= 0.0)
      {
        v72 = v45;
      }

      else
      {
        v72 = v46;
      }

      v73 = v71 + v72;
      if (v71 + v72 <= -9.22337204e18)
      {
        v74 = 1;
      }

      else
      {
        v74 = 2 * (v71 + v72 >= 9.22337204e18);
      }

      sub_1D0B828E4(v74);
      v75 = ceil(v73);
      v76 = floor(v73);
      if (v73 >= 0.0)
      {
        v75 = v76;
      }

      v77 = v75;
      if (v501 != 1)
      {
        if (v501 != -1)
        {
          v79 = v62;
          v14 = v490;
          a6 = v491;
          v61 = v499;
          v64 = v504;
          goto LABEL_85;
        }

        if (*(a4 + 6) >= v77)
        {
          a6 = v491;
          v79 = v66;
          v14 = v490;
          goto LABEL_85;
        }

LABEL_79:
        v78 = v63 + 2;
        ++v61;
        ++v64;
        ++v65;
        v66 = v63;
        v63 = v78;
        if (v78 == v503)
        {
          v79 = v78 - 2;
          goto LABEL_84;
        }

        continue;
      }

      break;
    }

    if (*(a4 + 4) > v77)
    {
      goto LABEL_79;
    }

    v79 = v63 - 2;
    v64 = v504 + v65;
    v61 = v499 + v65;
LABEL_84:
    v14 = v490;
    a6 = v491;
LABEL_85:
    v80 = v79 + 2;
    v16 = a4;
    v81 = v496;
    if (v79 + 2 == v503)
    {
      ++v488;
      v13 = v492;
      goto LABEL_858;
    }

    v505 = v64;
    v82 = &a6[2 * (v79 != a6)];
    if (v80 != v14)
    {
      v82 = v79 + 2;
    }

    v83 = v82 != a6;
    v84 = v82 + 2;
    v85 = &a6[2 * v83];
    if (v84 == v14)
    {
      v84 = v85;
    }

    v509 = v84;
    ++v488;
    v13 = v492;
    while (2)
    {
      v86 = v81;
      v87 = a6;
      v88 = v14;
      v89 = v13;
      v506 = v80;
      v90 = a11[3] + (v79[1] - *(a11 + 1)) * *(a11 + 4);
      if (v90 >= 0.0)
      {
        v91 = v45;
      }

      else
      {
        v91 = v46;
      }

      v92 = v90 + v91;
      if (v92 <= -9.22337204e18)
      {
        v93 = 1;
      }

      else
      {
        v93 = 2 * (v92 >= 9.22337204e18);
      }

      v94 = v79;
      sub_1D0B828E4(v93);
      v507 = v94;
      v95 = a11[2] + (*v94 - *a11) * *(a11 + 4);
      if (v95 >= 0.0)
      {
        v96 = v45;
      }

      else
      {
        v96 = v46;
      }

      v97 = v95 + v96;
      if (v95 + v96 <= -9.22337204e18)
      {
        v98 = 1;
      }

      else
      {
        v98 = 2 * (v95 + v96 >= 9.22337204e18);
      }

      sub_1D0B828E4(v98);
      v99 = ceil(v97);
      v100 = floor(v97);
      if (v97 >= 0.0)
      {
        v99 = v100;
      }

      v101 = v99;
      if (v501 == -1)
      {
        v102 = xmmword_1D0E7DD30;
        if (v16[4] > v101)
        {
          goto LABEL_857;
        }

LABEL_110:
        v13 = v89;
        v14 = v88;
        a6 = v87;
        v81 = v86;
        if (a1 == a5 && v16[2] == v13[2] && v16[3] == v13[3] && a9 && (v505 == v488 || !v86 && v16[11] - 2 <= v61))
        {
LABEL_243:
          v79 = v507 + 2;
          v80 = v506 + 2;
          ++v61;
          v192 = &a6[2 * (v509 != a6)];
          if (v509 + 2 != v14)
          {
            v192 = v509 + 2;
          }

          v509 = v192;
          ++v505;
          if (v80 == v503)
          {
            goto LABEL_858;
          }

          continue;
        }

        v103 = 0;
        v104 = *(a11 + 1);
        v528 = *a11;
        v530 = a11[4];
        v521[0] = v13;
        v521[1] = v61;
        v522 = v507;
        v523 = v506;
        v524[0] = v509;
        v524[1] = a6;
        v524[2] = v14;
        v525 = 0;
        v527 = 0;
        v529 = v104;
        LODWORD(v511) = 0;
        BYTE4(v511) = 0;
        *(&v511 + 1) = -1;
        LOWORD(v512) = 0;
        *&v105 = -1;
        *(&v105 + 1) = -1;
        do
        {
          v106 = &v510 + v103;
          *(v106 + 10) = 0;
          *(v106 + 3) = v105;
          *(v106 + 4) = v105;
          *(v106 + 10) = -1;
          *(v106 + 88) = v102;
          v103 += 80;
          *(v106 + 13) = 0;
          *(v106 + 14) = 0;
        }

        while (v103 != 160);
        *v513 = a1;
        *&v513[8] = *(v16 + 1);
        *&v513[24] = v86;
        *&v514 = -1;
        *v517 = a5;
        *&v517[8] = *(v13 + 1);
        v500 = v61;
        *&v517[24] = v61;
        *&v518 = -1;
        v497 = *a12;
        v498 = a12[1];
        v562 = v531;
        v563 = v521;
        v572 = a11;
        v573 = v531;
        v574 = v521;
        v575 = 0;
        v107 = v532;
        v108 = a11[3] + (*(v532 + 8) - *(a11 + 1)) * *(a11 + 4);
        if (v108 >= 0.0)
        {
          v109 = v45;
        }

        else
        {
          v109 = v46;
        }

        v110 = v108 + v109;
        if (v108 + v109 <= -9.22337204e18)
        {
          v111 = 1;
        }

        else
        {
          v111 = 2 * (v108 + v109 >= 9.22337204e18);
        }

        sub_1D0B828E4(v111);
        v112 = ceil(v110);
        v113 = floor(v110);
        if (v110 >= 0.0)
        {
          v112 = v113;
        }

        v565 = v112;
        v114 = a11[2] + (*v107 - *a11) * *(a11 + 4);
        if (v114 >= 0.0)
        {
          v115 = v45;
        }

        else
        {
          v115 = v46;
        }

        v116 = v114 + v115;
        if (v114 + v115 <= -9.22337204e18)
        {
          v117 = 1;
        }

        else
        {
          v117 = 2 * (v114 + v115 >= 9.22337204e18);
        }

        sub_1D0B828E4(v117);
        v118 = ceil(v116);
        v119 = floor(v116);
        if (v116 >= 0.0)
        {
          v118 = v119;
        }

        v564 = v118;
        v120 = *(&v532 + 1);
        v121 = a11[3] + (*(*(&v532 + 1) + 8) - *(a11 + 1)) * *(a11 + 4);
        if (v121 >= 0.0)
        {
          v122 = v45;
        }

        else
        {
          v122 = v46;
        }

        v123 = v121 + v122;
        if (v121 + v122 <= -9.22337204e18)
        {
          v124 = 1;
        }

        else
        {
          v124 = 2 * (v121 + v122 >= 9.22337204e18);
        }

        sub_1D0B828E4(v124);
        v125 = ceil(v123);
        v126 = floor(v123);
        if (v123 >= 0.0)
        {
          v125 = v126;
        }

        v567 = v125;
        v127 = a11[2] + (*v120 - *a11) * *(a11 + 4);
        if (v127 >= 0.0)
        {
          v128 = v45;
        }

        else
        {
          v128 = v46;
        }

        v129 = v127 + v128;
        if (v127 + v128 <= -9.22337204e18)
        {
          v130 = 1;
        }

        else
        {
          v130 = 2 * (v127 + v128 >= 9.22337204e18);
        }

        sub_1D0B828E4(v130);
        v131 = ceil(v129);
        v132 = floor(v129);
        if (v129 >= 0.0)
        {
          v131 = v132;
        }

        v566 = v131;
        v133 = v522;
        v134 = a11[3] + (v522[1] - *(a11 + 1)) * *(a11 + 4);
        if (v134 >= 0.0)
        {
          v135 = v45;
        }

        else
        {
          v135 = v46;
        }

        v136 = v134 + v135;
        if (v134 + v135 <= -9.22337204e18)
        {
          v137 = 1;
        }

        else
        {
          v137 = 2 * (v134 + v135 >= 9.22337204e18);
        }

        sub_1D0B828E4(v137);
        v138 = ceil(v136);
        v139 = floor(v136);
        if (v136 >= 0.0)
        {
          v138 = v139;
        }

        v569 = v138;
        v140 = a11[2] + (*v133 - *a11) * *(a11 + 4);
        if (v140 >= 0.0)
        {
          v141 = v45;
        }

        else
        {
          v141 = v46;
        }

        v142 = v140 + v141;
        if (v140 + v141 <= -9.22337204e18)
        {
          v143 = 1;
        }

        else
        {
          v143 = 2 * (v140 + v141 >= 9.22337204e18);
        }

        sub_1D0B828E4(v143);
        v144 = ceil(v142);
        v145 = floor(v142);
        if (v142 >= 0.0)
        {
          v144 = v145;
        }

        v568 = v144;
        v146 = v523;
        v147 = a11[3] + (v523[1] - *(a11 + 1)) * *(a11 + 4);
        if (v147 >= 0.0)
        {
          v148 = v45;
        }

        else
        {
          v148 = v46;
        }

        v149 = v147 + v148;
        if (v147 + v148 <= -9.22337204e18)
        {
          v150 = 1;
        }

        else
        {
          v150 = 2 * (v147 + v148 >= 9.22337204e18);
        }

        sub_1D0B828E4(v150);
        v151 = ceil(v149);
        v152 = floor(v149);
        if (v149 >= 0.0)
        {
          v151 = v152;
        }

        v153 = v151;
        v571 = v151;
        v154 = a11[2] + (*v146 - *a11) * *(a11 + 4);
        if (v154 >= 0.0)
        {
          v155 = v45;
        }

        else
        {
          v155 = v46;
        }

        v156 = v154 + v155;
        if (v154 + v155 <= -9.22337204e18)
        {
          v157 = 1;
        }

        else
        {
          v157 = 2 * (v154 + v155 >= 9.22337204e18);
        }

        sub_1D0B828E4(v157);
        v158 = ceil(v156);
        v159 = floor(v156);
        if (v156 >= 0.0)
        {
          v158 = v159;
        }

        v160 = v158;
        v570 = v158;
        v576[0] = v531;
        v576[1] = a11;
        v576[2] = &v564;
        v576[3] = &v566;
        v577 = 0;
        v578[0] = v521;
        v578[1] = a11;
        v578[2] = &v568;
        v578[3] = &v570;
        v579 = 0;
        v581 = v576;
        v582 = v578;
        v583 = v578;
        v584 = v576;
        v161 = v532;
        v162 = v522;
        v541 = v532;
        v540[0] = v522;
        v540[1] = v523;
        v163 = *(*(&v532 + 1) + 8);
        v165 = *v532;
        v164 = *(v532 + 8);
        v166 = *v523;
        v167 = v523[1];
        v169 = v564 == v566 && v565 == v567;
        v171 = v568 == v160 && v569 == v153;
        v172 = *v522;
        v173 = v522[1];
        if (v169 && v171)
        {
          if (v564 == v160 && v565 == v153)
          {
            v174 = 0;
            a6 = v491;
            v13 = v492;
            v14 = v490;
            v81 = v496;
            v45 = 0.5;
            do
            {
              v175 = &v542 + v174;
              *(v175 + 40) = xmmword_1D0E7DD30;
              *(v175 + 7) = 0;
              *(v175 + 8) = 0;
              *(v175 + 9) = 1;
              *(v175 + 10) = 0;
              v174 += 56;
              v175[88] = 0;
            }

            while (v174 != 112);
            *&v542 = 1;
            *(&v542 + 1) = v165;
            *&v543 = v164;
            memset(&v553[2], 0, 40);
            v588 = *&v547[16];
            *v589 = v548;
            *&v589[16] = v549;
            v590 = v550;
            *&v585[32] = v544;
            *&v585[48] = v545;
            v586 = v546;
            v587 = *v547;
            *v585 = v542;
            *&v585[16] = v543;
            v591 = 48;
            *v592 = *v553;
            *&v592[16] = *&v553[16];
            *&v592[26] = *&v553[26];
            v593 = a10;
            v16 = a4;
            v46 = -0.5;
            goto LABEL_202;
          }

          v188 = 0;
          *&v542 = 0;
          a6 = v491;
          v13 = v492;
          v14 = v490;
          v81 = v496;
          v45 = 0.5;
          do
          {
            v189 = &v542 + v188;
            *(v189 + 40) = xmmword_1D0E7DD30;
            *(v189 + 7) = 0;
            *(v189 + 8) = 0;
            *(v189 + 9) = 1;
            *(v189 + 10) = 0;
            v188 += 56;
            v189[88] = 0;
          }

          while (v188 != 112);
          memset(&v553[2], 0, 40);
          v588 = *&v547[16];
          *v589 = v548;
          *&v589[16] = v549;
          v590 = v550;
          *&v585[32] = v544;
          *&v585[48] = v545;
          v586 = v546;
          v587 = *v547;
          *v585 = v542;
          *&v585[16] = v543;
          v591 = 100;
          *v592 = *v553;
          *&v592[16] = *&v553[16];
          *&v592[26] = *&v553[26];
          v16 = a4;
          goto LABEL_239;
        }

        if (v564 >= v566)
        {
          v176 = v566;
        }

        else
        {
          v176 = v564;
        }

        if (v564 <= v566)
        {
          v177 = v566;
        }

        else
        {
          v177 = v564;
        }

        if (v568 >= v160)
        {
          v178 = v158;
        }

        else
        {
          v178 = v568;
        }

        if (v568 <= v160)
        {
          v179 = v158;
        }

        else
        {
          v179 = v568;
        }

        if (v177 < v178 || v179 < v176 || (v565 >= v567 ? (v180 = v567) : (v180 = v565), v565 <= v567 ? (v181 = v567) : (v181 = v565), v569 >= v153 ? (v182 = v153) : (v182 = v569), v569 <= v153 ? (v183 = v153) : (v183 = v569), v181 < v182 || v183 < v180))
        {
          v186 = 0;
          *&v542 = 0;
          do
          {
            v187 = &v542 + v186;
            *(v187 + 40) = xmmword_1D0E7DD30;
            *(v187 + 7) = 0;
            *(v187 + 8) = 0;
            *(v187 + 9) = 1;
            *(v187 + 10) = 0;
            v186 += 56;
            v187[88] = 0;
          }

          while (v186 != 112);
          goto LABEL_235;
        }

        v476 = *(*(&v532 + 1) + 8);
        v479 = **(&v532 + 1);
        *&v542 = 0x3FF0000000000000;
        v184 = sub_1D0E6E618(v568, v569, v160, v153, v564, v565, &v542);
        if (v184 == 0.0)
        {
          goto LABEL_232;
        }

        if ((*&v184 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
        {
          v193 = fabs(v184);
          if (v184 > 0.0)
          {
            v185 = 1;
          }

          else
          {
            v185 = -1;
          }

          if (v193 <= *&v542 * 2.22044605e-16)
          {
LABEL_232:
            v185 = 0;
          }
        }

        else if (v184 > 0.0)
        {
          v185 = 1;
        }

        else
        {
          v185 = -1;
        }

        *&v542 = 0x3FF0000000000000;
        v194 = sub_1D0E6E618(v568, v569, v570, v571, v566, v567, &v542);
        if (v194 == 0.0)
        {
LABEL_256:
          v195 = 0;
          goto LABEL_265;
        }

        if ((*&v194 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
        {
          v196 = fabs(v194);
          if (v194 > 0.0)
          {
            v195 = 1;
          }

          else
          {
            v195 = -1;
          }

          if (v196 <= *&v542 * 2.22044605e-16)
          {
            goto LABEL_256;
          }
        }

        else if (v194 > 0.0)
        {
          v195 = 1;
        }

        else
        {
          v195 = -1;
        }

LABEL_265:
        if (v195 * v185 == 1)
        {
          v197 = 0;
          *&v542 = 0;
          do
          {
            v198 = &v542 + v197;
            *(v198 + 40) = xmmword_1D0E7DD30;
            *(v198 + 7) = 0;
            *(v198 + 8) = 0;
            *(v198 + 9) = 1;
            *(v198 + 10) = 0;
            v197 += 56;
            v198[88] = 0;
          }

          while (v197 != 112);
LABEL_235:
          memset(&v553[2], 0, 40);
          v14 = v490;
          v588 = *&v547[16];
          *v589 = v548;
          *&v589[16] = v549;
          v590 = v550;
          *&v585[32] = v544;
          *&v585[48] = v545;
          v586 = v546;
          v587 = *v547;
          *v585 = v542;
          *&v585[16] = v543;
          v591 = 100;
          *v592 = *v553;
          *&v592[16] = *&v553[16];
          *&v592[26] = *&v553[26];
          a6 = v491;
          v13 = v492;
          v16 = a4;
          v81 = v496;
          v45 = 0.5;
LABEL_239:
          v46 = -0.5;
          v61 = v500;
          v593 = a10;
          goto LABEL_240;
        }

        *&v542 = 0x3FF0000000000000;
        v199 = sub_1D0E6E618(v564, v565, v566, v567, v568, v569, &v542);
        if (v199 == 0.0)
        {
          goto LABEL_270;
        }

        if ((*&v199 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
        {
          v201 = fabs(v199);
          if (v199 > 0.0)
          {
            v200 = 1;
          }

          else
          {
            v200 = -1;
          }

          if (v201 <= *&v542 * 2.22044605e-16)
          {
LABEL_270:
            v200 = 0;
          }
        }

        else if (v199 > 0.0)
        {
          v200 = 1;
        }

        else
        {
          v200 = -1;
        }

        *&v542 = 0x3FF0000000000000;
        v202 = sub_1D0E6E618(v564, v565, v566, v567, v570, v571, &v542);
        if (v202 == 0.0)
        {
LABEL_280:
          v203 = 0;
          goto LABEL_289;
        }

        if ((*&v202 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
        {
          v204 = fabs(v202);
          if (v202 > 0.0)
          {
            v203 = 1;
          }

          else
          {
            v203 = -1;
          }

          if (v204 <= *&v542 * 2.22044605e-16)
          {
            goto LABEL_280;
          }
        }

        else if (v202 > 0.0)
        {
          v203 = 1;
        }

        else
        {
          v203 = -1;
        }

LABEL_289:
        v205 = v479;
        if (v203 * v200 == 1)
        {
          v206 = 0;
          *&v542 = 0;
          do
          {
            v207 = &v542 + v206;
            *(v207 + 40) = xmmword_1D0E7DD30;
            *(v207 + 7) = 0;
            *(v207 + 8) = 0;
            *(v207 + 9) = 1;
            *(v207 + 10) = 0;
            v206 += 56;
            v207[88] = 0;
          }

          while (v206 != 112);
          goto LABEL_235;
        }

        v208 = v566;
        v209 = v564;
        v210 = v566 - v564;
        v211 = v570;
        v212 = v568;
        v213 = v570 - v568;
        v214 = v567 - v565;
        v215 = v571 - v569;
        if (v195 | v185 | v200 | v203)
        {
          v216 = v215 * v210;
          v217 = v214 * v213;
          v218 = v214 * v213 - v215 * v210;
          if (v214 * v213 != v215 * v210)
          {
            v474 = v195;
            v475 = v185;
            v480 = v200;
            if (v216 >= v217)
            {
              v221 = (v565 - v569) * v213 + v215 * (v568 - v564);
            }

            else
            {
              v221 = -((v565 - v569) * v213 + v215 * (v568 - v564));
            }

            if (v216 - v217 >= 0)
            {
              v224 = v216 - v217;
            }

            else
            {
              v224 = v217 - v216;
            }

            v226 = v221 * 1000000.0 / v224;
            if (v218 >= 0)
            {
              v225 = v214 * v213 - v215 * v210;
            }

            else
            {
              v225 = v215 * v210 - v214 * v213;
            }

            if (v218 >= 0)
            {
              v222 = v214 * (v564 - v568) + (v569 - v565) * v210;
            }

            else
            {
              v222 = -(v214 * (v564 - v568) + (v569 - v565) * v210);
            }

            v223 = v222 * 1000000.0 / v225;
            goto LABEL_329;
          }

          v185 = 0;
          v195 = 0;
          v200 = 0;
          v203 = 0;
        }

        if (v210 < 0)
        {
          v210 = v564 - v566;
        }

        if (v214 < 0)
        {
          v214 = v565 - v567;
        }

        if ((v213 & 0x8000000000000000) != 0)
        {
          v213 = v568 - v570;
        }

        if ((v215 & 0x8000000000000000) != 0)
        {
          v215 = v569 - v571;
        }

        if (v169)
        {
          v219 = v213 >= v215;
        }

        else
        {
          if (!v171)
          {
            if (v213 >= v210)
            {
              v213 = v210;
            }

            if (v215 >= v214)
            {
              v215 = v214;
            }

            if (v213 == v215)
            {
              if (v213)
              {
                v220 = 257;
              }

              else
              {
                v220 = 1;
              }
            }

            else if (v213 <= v215)
            {
              v220 = 256;
            }

            else
            {
              v220 = 257;
            }

LABEL_311:
            if ((v220 & 0x100) == 0)
            {
              v474 = v195;
              v475 = v185;
              v480 = v200;
              v221 = 0;
              v222 = 0;
              v223 = 0.0;
              v224 = 1;
              v225 = 1;
              v226 = 0.0;
LABEL_329:
              v229 = 0;
              v230 = v205 - v165;
              v231 = v166 - v172;
              v232 = v476 - v164;
              v233 = v167 - v173;
              v13 = v492;
              v81 = v496;
              do
              {
                v234 = &v542 + v229;
                *(v234 + 40) = xmmword_1D0E7DD30;
                *(v234 + 7) = 0;
                *(v234 + 8) = 0;
                *(v234 + 9) = 1;
                *(v234 + 10) = 0;
                v229 += 56;
                v234[88] = 0;
              }

              while (v229 != 112);
              v477 = v203;
              *&v542 = 1;
              v235 = v232 * v232 + v230 * v230;
              v236 = v233 * v233 + v231 * v231;
              if (v235 >= v236)
              {
                v237 = v232 * v232 + v230 * v230;
              }

              else
              {
                v237 = v233 * v233 + v231 * v231;
              }

              v45 = 0.5;
              v46 = -0.5;
              v472 = v225;
              v473 = v222;
              if (v237 <= 0.0)
              {
                goto LABEL_340;
              }

              v238 = vabdd_f64(0.5, v223 / 1000000.0);
              v239 = v238 + v238;
              if (v239 > 1.0)
              {
                v239 = 1.0;
              }

              v240 = vabdd_f64(0.5, v226 / 1000000.0);
              v241 = v240 + v240;
              if (v241 > 1.0)
              {
                v241 = 1.0;
              }

              if (1.0 - v235 / v237 + v241 * 5.0 <= 1.0 - v236 / v237 + v239 * 5.0)
              {
                v242 = v226;
                v243 = v223;
                v244 = v162;
                v230 = v231;
                v232 = v233;
              }

              else
              {
LABEL_340:
                v242 = v226;
                v243 = v223;
                v244 = v161;
                v222 = v221;
                v225 = v224;
              }

              sub_1D0E70240(&v542 + 1, v244, v222, v225, v230, v232);
              v14 = v490;
              a6 = v491;
              v61 = v500;
              v547[8] = 1;
              *(&v544 + 1) = v221;
              *&v545 = v224;
              *(&v545 + 1) = v242;
              *&v546 = v473;
              *(&v546 + 1) = v472;
              *v547 = v243;
              v246 = xmmword_1D0E7DD30;
              if (!(v475 | v480))
              {
                v248 = -1;
                if (v477 == 1)
                {
                  v249 = -1;
                }

                else
                {
                  v249 = 1;
                }

                if (v477 == 1)
                {
                  v250 = 1;
                }

                else
                {
                  v250 = -1;
                }

                v251 = 102;
                v252 = -1;
                v247 = v474;
                goto LABEL_418;
              }

              v247 = v474;
              if (!(v474 | v477))
              {
                if (v480 == 1)
                {
                  v249 = -1;
                }

                else
                {
                  v249 = 1;
                }

                if (v480 == 1)
                {
                  v250 = 1;
                }

                else
                {
                  v250 = -1;
                }

                v248 = 1;
                v251 = 116;
                v252 = 1;
                goto LABEL_418;
              }

              if (v474 | v480)
              {
                if (v475 | v477)
                {
                  v248 = v480;
                  if (v480)
                  {
                    if (v475)
                    {
                      if (v477)
                      {
                        if (v474)
                        {
                          v248 = -1;
                          if (v477 == 1)
                          {
                            v249 = -1;
                          }

                          else
                          {
                            v249 = 1;
                          }

                          if (v477 == 1)
                          {
                            v250 = 1;
                          }

                          else
                          {
                            v250 = -1;
                          }

                          v251 = 105;
                          v252 = -1;
                          goto LABEL_418;
                        }

                        v252 = 0;
                        if (v477 == 1)
                        {
                          v249 = 1;
                        }

                        else
                        {
                          v249 = -1;
                        }

                        v248 = 1;
                      }

                      else
                      {
                        v248 = 0;
                        if (v474 == 1)
                        {
                          v249 = 1;
                        }

                        else
                        {
                          v249 = -1;
                        }

                        v252 = 1;
                      }

                      v251 = 109;
                      goto LABEL_400;
                    }

                    v252 = 0;
                    if (v477 == 1)
                    {
                      v250 = 1;
                    }

                    else
                    {
                      v250 = -1;
                    }

                    v248 = -1;
                    if (v477 == 1)
                    {
                      v249 = -1;
                    }

                    else
                    {
                      v249 = 1;
                    }
                  }

                  else
                  {
                    v252 = -1;
                    if (v477 == 1)
                    {
                      v249 = -1;
                    }

                    else
                    {
                      v249 = 1;
                    }

                    if (v477 == 1)
                    {
                      v250 = 1;
                    }

                    else
                    {
                      v250 = -1;
                    }
                  }

                  v251 = 115;
                  goto LABEL_418;
                }

                if (v480 == 1)
                {
                  v249 = 1;
                }

                else
                {
                  v249 = -1;
                }

                v252 = 1;
                v248 = -1;
              }

              else
              {
                if (v477 == 1)
                {
                  v249 = 1;
                }

                else
                {
                  v249 = -1;
                }

                v252 = -1;
                v248 = 1;
              }

              v251 = 97;
LABEL_400:
              v250 = v249;
LABEL_418:
              v588 = *&v547[16];
              *v589 = v548;
              *&v589[16] = v549;
              v590 = v550;
              *&v585[32] = v544;
              *&v585[48] = v545;
              v586 = v546;
              v587 = *v547;
              *v585 = v542;
              *&v585[16] = v543;
              v591 = v251;
              *&v592[2] = v248;
              *&v592[6] = v252;
              *&v592[10] = v249;
              *&v592[14] = v250;
              *&v592[18] = v475;
              *&v592[22] = v247;
              *&v592[26] = v480;
              *&v592[30] = v477;
              *&v592[34] = v248;
              *&v592[38] = v252;
              v16 = a4;
LABEL_419:
              v593 = a10;
              v594 = a11;
              if (v591 == 100)
              {
LABEL_240:
                v190 = a12[1];
                if (v190 - *a12 < (v498 - v497))
                {
                  __assert_rtn("pos", "range.hpp", 96, "i <= boost::size(rng)");
                }

                v191 = v498 - v497 + *a12;
                *a13 = v190 != v191;
                if (v190 != v191)
                {
                  v17 = 0;
                  goto LABEL_862;
                }

                goto LABEL_243;
              }

              v560[0] = v518;
              v560[1] = v519;
              v561 = v520;
              v556[1] = v515;
              v557 = v516;
              v558 = *v517;
              v559 = *&v517[16];
              *&v553[32] = v512;
              v554 = *v513;
              v555 = *&v513[16];
              v556[0] = v514;
              *v553 = v510;
              *&v553[16] = v511;
              if (v591 > 0x68u)
              {
                if (v591 == 105)
                {
                  *&v553[16] = 2;
                  if (!*v585)
                  {
                    goto LABEL_864;
                  }

                  *v553 = *&v585[8];
                  *(v556 + 8) = *&v585[40];
                  *(&v556[1] + 1) = *&v585[56];
                  *(v560 + 8) = v586;
                  *(&v560[1] + 1) = v587;
                  v268 = *&v592[26] == 1;
                  *&v553[80 * (*&v592[26] != 1) + 40] = 1;
                  *&v553[80 * v268 + 40] = 2;
                  goto LABEL_802;
                }

                if (v591 != 116)
                {
                  if (v591 != 109)
                  {
LABEL_202:
                    v61 = v500;
                    goto LABEL_240;
                  }

                  *&v553[16] = 4;
                  *v553 = *&v585[8];
                  v253 = 0;
                  v254 = 1;
                  v255 = 40;
                  if (*&v592[38] == 1)
                  {
                    do
                    {
                      v256 = v254;
                      v257 = *&v592[4 * v253 + 34];
                      if (v257 == -1)
                      {
                        v259 = &v553[80 * v253 + 40];
                        *(v259 + 3) = v246;
                        *(v259 + 8) = 0;
                      }

                      else if (v257 == 1)
                      {
                        v258 = &v553[80 * v253 + 40];
                        v258[3] = vdupq_n_s64(1uLL);
                        v258[4].i64[0] = 0x412E848000000000;
                      }

                      else
                      {
                        v260 = &v585[v255];
                        v261 = &v553[80 * v253 + 40];
                        *(v261 + 3) = *v260;
                        *(v261 + 8) = *(v260 + 2);
                      }

                      v254 = 0;
                      v255 = 64;
                      v253 = 1;
                    }

                    while ((v256 & 1) != 0);
                    v262 = *&v592[26];
                    v263 = v581[2];
                    v264 = v581[3];
                    v265 = sub_1D0E6E4CC(v582);
                    *&v542 = 0x3FF0000000000000;
                    v266 = sub_1D0E6E618(*v263, v263[1], *v264, v264[1], *v265, v265[1], &v542);
                    if (v266 == 0.0)
                    {
                      goto LABEL_432;
                    }

                    if ((*&v266 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
                    {
                      v353 = fabs(v266);
                      if (v266 > 0.0)
                      {
                        v267 = 1;
                      }

                      else
                      {
                        v267 = -1;
                      }

                      if (v353 <= *&v542 * 2.22044605e-16)
                      {
LABEL_432:
                        v267 = 0;
                      }
                    }

                    else if (v266 > 0.0)
                    {
                      v267 = 1;
                    }

                    else
                    {
                      v267 = -1;
                    }

                    if (!(v262 + v267))
                    {
                      v354 = v267 == -1;
                      v355 = v267 != -1;
LABEL_601:
                      *&v553[80 * v355 + 40] = 1;
                      *&v553[80 * v354 + 40] = 2;
LABEL_736:
                      a6 = v491;
                      v16 = a4;
                      goto LABEL_737;
                    }

                    v356 = v582[2];
                    v357 = v582[3];
                    v358 = sub_1D0E6E4CC(v582);
                    *&v542 = 0x3FF0000000000000;
                    v359 = sub_1D0E6E618(*v356, v356[1], *v357, v357[1], *v358, v358[1], &v542);
                    if (v359 == 0.0)
                    {
                      goto LABEL_594;
                    }

                    if ((*&v359 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
                    {
                      v397 = fabs(v359);
                      if (v359 > 0.0)
                      {
                        v360 = 1;
                      }

                      else
                      {
                        v360 = -1;
                      }

                      if (v397 <= *&v542 * 2.22044605e-16)
                      {
LABEL_594:
                        v360 = 0;
                      }
                    }

                    else if (v359 > 0.0)
                    {
                      v360 = 1;
                    }

                    else
                    {
                      v360 = -1;
                    }

                    v398 = v582[3];
                    v399 = sub_1D0E6E4CC(v582);
                    v400 = v581[3];
                    *&v542 = 0x3FF0000000000000;
                    v401 = sub_1D0E6E618(*v398, v398[1], *v399, v399[1], *v400, v400[1], &v542);
                    if (v401 == 0.0)
                    {
LABEL_693:
                      v402 = 0;
                      goto LABEL_712;
                    }

                    if ((*&v401 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
                    {
                      v408 = fabs(v401);
                      if (v401 > 0.0)
                      {
                        v402 = 1;
                      }

                      else
                      {
                        v402 = -1;
                      }

                      if (v408 <= *&v542 * 2.22044605e-16)
                      {
                        goto LABEL_693;
                      }
                    }

                    else if (v401 > 0.0)
                    {
                      v402 = 1;
                    }

                    else
                    {
                      v402 = -1;
                    }

LABEL_712:
                    if ((v267 & v262) != 0xFFFFFFFF || v360 != 1)
                    {
                      if (v262 == 1 && v267 == 1 && v360 == -1)
                      {
                        if (v402 == -1)
                        {
                          v409 = 1;
                        }

                        else
                        {
                          v409 = 3;
                        }

                        *&v553[40] = 1;
                        goto LABEL_733;
                      }

                      if (v262 == v267 && v262 == v360)
                      {
                        v410 = (v360 == 1) ^ (v402 == 0);
                        if (v402 * v262 == -1)
                        {
                          v412 = v581[2];
                          v411 = v581[3];
                          v413 = v582[3];
                          v414 = *v412;
                          v415 = v412[1];
                          v416 = *v411;
                          v417 = v411[1];
                          v418 = *v413;
                          v419 = v413[1];
                          *&v542 = 0x3FF0000000000000;
                          v420 = sub_1D0E6E618(v414, v415, v416, v417, v418, v419, &v542);
                          if (v420 == 0.0)
                          {
LABEL_725:
                            v421 = 0;
                            goto LABEL_825;
                          }

                          if ((*&v420 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
                          {
                            v450 = fabs(v420);
                            if (v420 > 0.0)
                            {
                              v421 = 1;
                            }

                            else
                            {
                              v421 = -1;
                            }

                            if (v450 <= *&v542 * 2.22044605e-16)
                            {
                              goto LABEL_725;
                            }
                          }

                          else if (v420 > 0.0)
                          {
                            v421 = 1;
                          }

                          else
                          {
                            v421 = -1;
                          }

LABEL_825:
                          v451 = v581[3];
                          v452 = sub_1D0E6E4CC(v581);
                          v453 = v582[3];
                          *&v542 = 0x3FF0000000000000;
                          v454 = sub_1D0E6E618(*v451, v451[1], *v452, v452[1], *v453, v453[1], &v542);
                          if (v454 == 0.0)
                          {
LABEL_826:
                            v455 = 0;
                            goto LABEL_845;
                          }

                          if ((*&v454 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
                          {
                            v462 = fabs(v454);
                            if (v454 > 0.0)
                            {
                              v455 = 1;
                            }

                            else
                            {
                              v455 = -1;
                            }

                            if (v462 <= *&v542 * 2.22044605e-16)
                            {
                              goto LABEL_826;
                            }
                          }

                          else if (v454 > 0.0)
                          {
                            v455 = 1;
                          }

                          else
                          {
                            v455 = -1;
                          }

LABEL_845:
                          v463 = v455 * v421;
                          v81 = v496;
                          v14 = v490;
                          if (v463 == 1)
                          {
                            v464 = v581;
                            v465 = v582;
                            goto LABEL_853;
                          }

                          goto LABEL_855;
                        }

LABEL_748:
                        v14 = v490;
                        v81 = v496;
                        goto LABEL_855;
                      }

                      if (!v267)
                      {
                        v16 = a4;
                        if (v262 != v360)
                        {
                          if (v360 == 1)
                          {
                            v431 = 2;
                          }

                          else
                          {
                            v431 = 1;
                          }

                          *&v553[40] = v431;
                          v432 = 3;
                          goto LABEL_805;
                        }

LABEL_804:
                        v432 = 4;
                        *&v553[40] = 4;
LABEL_805:
                        DWORD2(v557) = v432;
LABEL_812:
                        v14 = v490;
                        a6 = v491;
                        goto LABEL_737;
                      }

                      goto LABEL_780;
                    }

LABEL_732:
                    v409 = 2;
                    *&v553[40] = 2;
LABEL_733:
                    DWORD2(v557) = v409;
LABEL_734:
                    v553[20] = 1;
LABEL_735:
                    v14 = v490;
                    goto LABEL_736;
                  }

                  do
                  {
                    v290 = v254;
                    v291 = *&v592[4 * v253 + 34];
                    if (v291 == -1)
                    {
                      v293 = &v553[80 * v253 + 40];
                      *(v293 + 3) = v246;
                      *(v293 + 8) = 0;
                    }

                    else if (v291 == 1)
                    {
                      v292 = &v553[80 * v253 + 40];
                      v292[3] = vdupq_n_s64(1uLL);
                      v292[4].i64[0] = 0x412E848000000000;
                    }

                    else
                    {
                      v294 = &v585[v255];
                      v295 = &v553[80 * v253 + 40];
                      *(v295 + 3) = *v294;
                      *(v295 + 8) = *(v294 + 2);
                    }

                    v254 = 0;
                    v255 = 64;
                    v253 = 1;
                  }

                  while ((v290 & 1) != 0);
                  v296 = *&v592[18];
                  v297 = v583[2];
                  v298 = v583[3];
                  v299 = sub_1D0E6E4CC(v584);
                  *&v542 = 0x3FF0000000000000;
                  v300 = sub_1D0E6E618(*v297, v297[1], *v298, v298[1], *v299, v299[1], &v542);
                  if (v300 == 0.0)
                  {
                    goto LABEL_462;
                  }

                  if ((*&v300 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
                  {
                    v361 = fabs(v300);
                    if (v300 > 0.0)
                    {
                      v301 = 1;
                    }

                    else
                    {
                      v301 = -1;
                    }

                    if (v361 <= *&v542 * 2.22044605e-16)
                    {
LABEL_462:
                      v301 = 0;
                    }
                  }

                  else if (v300 > 0.0)
                  {
                    v301 = 1;
                  }

                  else
                  {
                    v301 = -1;
                  }

                  if (!(v296 + v301))
                  {
                    v354 = v301 != -1;
                    v355 = v301 == -1;
                    goto LABEL_601;
                  }

                  v362 = v584[2];
                  v363 = v584[3];
                  v364 = sub_1D0E6E4CC(v584);
                  *&v542 = 0x3FF0000000000000;
                  v365 = sub_1D0E6E618(*v362, v362[1], *v363, v363[1], *v364, v364[1], &v542);
                  if (v365 == 0.0)
                  {
                    goto LABEL_603;
                  }

                  if ((*&v365 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
                  {
                    v403 = fabs(v365);
                    if (v365 > 0.0)
                    {
                      v366 = 1;
                    }

                    else
                    {
                      v366 = -1;
                    }

                    if (v403 <= *&v542 * 2.22044605e-16)
                    {
LABEL_603:
                      v366 = 0;
                    }
                  }

                  else if (v365 > 0.0)
                  {
                    v366 = 1;
                  }

                  else
                  {
                    v366 = -1;
                  }

                  v404 = v584[3];
                  v405 = sub_1D0E6E4CC(v584);
                  v406 = v583[3];
                  *&v542 = 0x3FF0000000000000;
                  v407 = sub_1D0E6E618(*v404, v404[1], *v405, v405[1], *v406, v406[1], &v542);
                  if (v407 == 0.0)
                  {
LABEL_703:
                    v402 = 0;
                    goto LABEL_730;
                  }

                  if ((*&v407 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
                  {
                    v422 = fabs(v407);
                    if (v407 > 0.0)
                    {
                      v402 = 1;
                    }

                    else
                    {
                      v402 = -1;
                    }

                    if (v422 <= *&v542 * 2.22044605e-16)
                    {
                      goto LABEL_703;
                    }
                  }

                  else if (v407 > 0.0)
                  {
                    v402 = 1;
                  }

                  else
                  {
                    v402 = -1;
                  }

LABEL_730:
                  if ((v301 & v296) == 0xFFFFFFFF && v366 == 1)
                  {
                    goto LABEL_732;
                  }

                  if (v296 == 1 && v301 == 1 && v366 == -1)
                  {
                    if (v402 == -1)
                    {
                      v423 = 1;
                    }

                    else
                    {
                      v423 = 3;
                    }

                    *&v553[40] = v423;
                    DWORD2(v557) = 1;
                    goto LABEL_734;
                  }

                  if (v296 != v301 || v296 != v366)
                  {
                    if (!v301)
                    {
                      v16 = a4;
                      if (v296 != v366)
                      {
                        if (v366 == 1)
                        {
                          v449 = 2;
                        }

                        else
                        {
                          v449 = 1;
                        }

                        DWORD2(v557) = v449;
                        *&v553[40] = 3;
                        goto LABEL_812;
                      }

                      goto LABEL_804;
                    }

LABEL_780:
                    *&v553[16] = 8;
                    goto LABEL_735;
                  }

                  v410 = (v366 == 1) ^ (v402 != 0);
                  if (v402 * v296 != -1)
                  {
                    goto LABEL_748;
                  }

                  v439 = v583[2];
                  v438 = v583[3];
                  v440 = v584[3];
                  v441 = *v439;
                  v442 = v439[1];
                  v443 = *v438;
                  v444 = v438[1];
                  v445 = *v440;
                  v446 = v440[1];
                  *&v542 = 0x3FF0000000000000;
                  v447 = sub_1D0E6E618(v441, v442, v443, v444, v445, v446, &v542);
                  if (v447 == 0.0)
                  {
                    goto LABEL_807;
                  }

                  if ((*&v447 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
                  {
                    v456 = fabs(v447);
                    if (v447 > 0.0)
                    {
                      v448 = 1;
                    }

                    else
                    {
                      v448 = -1;
                    }

                    if (v456 <= *&v542 * 2.22044605e-16)
                    {
LABEL_807:
                      v448 = 0;
                    }
                  }

                  else if (v447 > 0.0)
                  {
                    v448 = 1;
                  }

                  else
                  {
                    v448 = -1;
                  }

                  v457 = v583[3];
                  v458 = sub_1D0E6E4CC(v583);
                  v459 = v584[3];
                  *&v542 = 0x3FF0000000000000;
                  v460 = sub_1D0E6E618(*v457, v457[1], *v458, v458[1], *v459, v459[1], &v542);
                  if (v460 == 0.0)
                  {
LABEL_836:
                    v461 = 0;
                    goto LABEL_851;
                  }

                  if ((*&v460 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
                  {
                    v466 = fabs(v460);
                    if (v460 > 0.0)
                    {
                      v461 = 1;
                    }

                    else
                    {
                      v461 = -1;
                    }

                    if (v466 <= *&v542 * 2.22044605e-16)
                    {
                      goto LABEL_836;
                    }
                  }

                  else if (v460 > 0.0)
                  {
                    v461 = 1;
                  }

                  else
                  {
                    v461 = -1;
                  }

LABEL_851:
                  v467 = v461 * v448;
                  v81 = v496;
                  v14 = v490;
                  if (v467 == 1)
                  {
                    v464 = v583;
                    v465 = v584;
LABEL_853:
                    if (sub_1D0E702A4(**(v464 + 24), *(*(v464 + 24) + 8), **(v465 + 16), *(*(v465 + 16) + 8), **(v465 + 24), *(*(v465 + 24) + 8)) * v402 == -1)
                    {
                      v410 ^= 1u;
                    }
                  }

LABEL_855:
                  *&v553[80 * v410 + 40] = 1;
                  *&v553[80 * (v410 ^ 1) + 40] = 2;
                  v553[20] = 1;
                  a6 = v491;
                  v16 = a4;
                  goto LABEL_802;
                }

                v269 = 0;
                *&v553[16] = 3;
                *v553 = *&v585[8];
                v270 = 1;
                v271 = 40;
                do
                {
                  v272 = v270;
                  v273 = *&v592[4 * v269 + 34];
                  if (v273 == -1)
                  {
                    v275 = &v553[80 * v269 + 40];
                    *(v275 + 3) = v246;
                    *(v275 + 8) = 0;
                  }

                  else if (v273 == 1)
                  {
                    v274 = &v553[80 * v269 + 40];
                    v274[3] = vdupq_n_s64(1uLL);
                    v274[4].i64[0] = 0x412E848000000000;
                  }

                  else
                  {
                    v276 = &v585[v271];
                    v277 = &v553[80 * v269 + 40];
                    *(v277 + 3) = *v276;
                    *(v277 + 8) = *(v276 + 2);
                  }

                  v270 = 0;
                  v271 = 64;
                  v269 = 1;
                }

                while ((v272 & 1) != 0);
                v278 = v582[2];
                v279 = v582[3];
                v280 = sub_1D0E6E4CC(v581);
                *&v542 = 0x3FF0000000000000;
                v281 = sub_1D0E6E618(*v278, v278[1], *v279, v279[1], *v280, v280[1], &v542);
                if (v281 == 0.0)
                {
                  goto LABEL_447;
                }

                if ((*&v281 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
                {
                  v302 = fabs(v281);
                  if (v281 > 0.0)
                  {
                    v282 = 1;
                  }

                  else
                  {
                    v282 = -1;
                  }

                  if (v302 <= *&v542 * 2.22044605e-16)
                  {
LABEL_447:
                    v282 = 0;
                  }
                }

                else if (v281 > 0.0)
                {
                  v282 = 1;
                }

                else
                {
                  v282 = -1;
                }

                v303 = *&v592[26];
                v304 = v581[2];
                v305 = v581[3];
                v306 = sub_1D0E6E4CC(v582);
                *&v542 = 0x3FF0000000000000;
                v307 = sub_1D0E6E618(*v304, v304[1], *v305, v305[1], *v306, v306[1], &v542);
                if (v307 == 0.0)
                {
LABEL_472:
                  v308 = 0;
                  goto LABEL_481;
                }

                if ((*&v307 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
                {
                  v309 = fabs(v307);
                  if (v307 > 0.0)
                  {
                    v308 = 1;
                  }

                  else
                  {
                    v308 = -1;
                  }

                  if (v309 <= *&v542 * 2.22044605e-16)
                  {
                    goto LABEL_472;
                  }
                }

                else if (v307 > 0.0)
                {
                  v308 = 1;
                }

                else
                {
                  v308 = -1;
                }

LABEL_481:
                if (v308 * v303 != -1)
                {
                  v310 = v582[3];
                  v311 = sub_1D0E6E4CC(v582);
                  v312 = sub_1D0E6E4CC(v581);
                  *&v542 = 0x3FF0000000000000;
                  v313 = sub_1D0E6E618(*v310, v310[1], *v311, v311[1], *v312, v312[1], &v542);
                  if (v313 == 0.0)
                  {
LABEL_483:
                    v314 = 0;
                    goto LABEL_516;
                  }

                  if ((*&v313 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
                  {
                    v329 = fabs(v313);
                    if (v313 > 0.0)
                    {
                      v314 = 1;
                    }

                    else
                    {
                      v314 = -1;
                    }

                    if (v329 <= *&v542 * 2.22044605e-16)
                    {
                      goto LABEL_483;
                    }
                  }

                  else if (v313 > 0.0)
                  {
                    v314 = 1;
                  }

                  else
                  {
                    v314 = -1;
                  }

LABEL_516:
                  v331 = v581[2];
                  v330 = v581[3];
                  v332 = sub_1D0E6E4CC(v581);
                  *&v542 = 0x3FF0000000000000;
                  v333 = sub_1D0E6E618(*v331, v331[1], *v330, v330[1], *v332, v332[1], &v542);
                  if (v333 != 0.0)
                  {
                    if ((*&v333 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
                    {
                      if (v333 > 0.0)
                      {
                        v334 = 1;
                      }

                      else
                      {
                        v334 = -1;
                      }

                      goto LABEL_526;
                    }

                    v335 = fabs(v333);
                    if (v333 > 0.0)
                    {
                      v334 = 1;
                    }

                    else
                    {
                      v334 = -1;
                    }

                    if (v335 > *&v542 * 2.22044605e-16)
                    {
                      goto LABEL_526;
                    }
                  }

                  v334 = 0;
LABEL_526:
                  v337 = v582[2];
                  v336 = v582[3];
                  v338 = sub_1D0E6E4CC(v582);
                  *&v542 = 0x3FF0000000000000;
                  v339 = sub_1D0E6E618(*v337, v337[1], *v336, v336[1], *v338, v338[1], &v542);
                  a6 = v491;
                  v16 = a4;
                  if (v339 == 0.0)
                  {
                    goto LABEL_527;
                  }

                  if ((*&v339 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
                  {
                    if (v339 > 0.0)
                    {
                      v340 = 1;
                    }

                    else
                    {
                      v340 = -1;
                    }

                    goto LABEL_536;
                  }

                  v341 = fabs(v339);
                  v340 = v339 > 0.0 ? 1 : -1;
                  if (v341 <= *&v542 * 2.22044605e-16)
                  {
LABEL_527:
                    v340 = 0;
                  }

LABEL_536:
                  if (v308)
                  {
                    v342 = 1;
                  }

                  else
                  {
                    v342 = v340 * v303 == 1;
                  }

                  v343 = !v342;
                  if (v334 != v303 && v334 != v308 && (v308 | v303 || v334 == -1))
                  {
                    if (v340 == 1)
                    {
                      v349 = 2;
                    }

                    else
                    {
                      v349 = 1;
                    }

                    if (v308 == 1 || v303 == 1)
                    {
                      v351 = 1;
                    }

                    else
                    {
                      v351 = 2;
                    }

                    if (v343)
                    {
                      v351 = 3;
                    }

                    *&v553[40] = v349;
                    DWORD2(v557) = v351;
                    v13 = v492;
                    v14 = v490;
                    v81 = v496;
                    if (v343)
                    {
                      goto LABEL_802;
                    }
                  }

                  else
                  {
                    if (!((v314 != 0) | v343 & 1))
                    {
                      *&v553[40] = 4;
                      DWORD2(v557) = 4;
                      v13 = v492;
                      v14 = v490;
LABEL_737:
                      v81 = v496;
                      goto LABEL_802;
                    }

                    v344 = v314;
                    v13 = v492;
                    v14 = v490;
                    v81 = v496;
                    if (!v282)
                    {
                      if (v340 == 1)
                      {
                        v367 = 2;
                      }

                      else
                      {
                        v367 = 1;
                      }

                      if (v343)
                      {
                        v348 = 3;
                      }

                      else
                      {
                        v348 = v367;
                      }

                      *&v553[40] = 3;
                      goto LABEL_619;
                    }

                    if (v282 == v344 && v340 * v282 != -1)
                    {
                      v345 = v340 == 1;
                      if (v340 == 1)
                      {
                        v346 = 1;
                      }

                      else
                      {
                        v346 = 2;
                      }

                      if (v345)
                      {
                        v347 = 2;
                      }

                      else
                      {
                        v347 = 1;
                      }

                      if (v343)
                      {
                        v348 = 3;
                      }

                      else
                      {
                        v348 = v347;
                      }

                      *&v553[40] = v346;
                      goto LABEL_619;
                    }

                    if (v344 + v340)
                    {
                      if (v282 != -v340)
                      {
                        goto LABEL_802;
                      }

                      if (v340 == 1)
                      {
                        v425 = 2;
                      }

                      else
                      {
                        v425 = 1;
                      }

                      *&v553[40] = v425;
                      DWORD2(v557) = v425;
                      if (v343)
                      {
                        v348 = 3;
LABEL_619:
                        DWORD2(v557) = v348;
                        goto LABEL_802;
                      }
                    }

                    else
                    {
                      if (v340 == 1)
                      {
                        v368 = 2;
                      }

                      else
                      {
                        v368 = 1;
                      }

                      if (v340 == 1)
                      {
                        v369 = 1;
                      }

                      else
                      {
                        v369 = 2;
                      }

                      *&v553[40] = v368;
                      DWORD2(v557) = v369;
                    }
                  }

                  v553[20] = 1;
                  goto LABEL_802;
                }

                v315 = v581[2];
                v316 = v581[3];
                v317 = sub_1D0E6E4CC(v581);
                *&v542 = 0x3FF0000000000000;
                v318 = *v316;
                v319 = v316[1];
                a6 = v491;
                v320 = sub_1D0E6E618(*v315, v315[1], v318, v319, *v317, v317[1], &v542);
                v13 = v492;
                v16 = a4;
                if (v320 == 0.0)
                {
                  goto LABEL_485;
                }

                if ((*&v320 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
                {
                  v370 = fabs(v320);
                  if (v320 > 0.0)
                  {
                    v321 = 1;
                  }

                  else
                  {
                    v321 = -1;
                  }

                  if (v370 <= *&v542 * 2.22044605e-16)
                  {
LABEL_485:
                    v321 = 0;
                  }
                }

                else if (v320 > 0.0)
                {
                  v321 = 1;
                }

                else
                {
                  v321 = -1;
                }

                v81 = v496;
                if (v321 == v303)
                {
                  if (!v282)
                  {
                    if (v308 == 1)
                    {
                      v378 = 1;
                    }

                    else
                    {
                      v378 = 2;
                    }

                    *&v553[40] = 3;
                    goto LABEL_647;
                  }

                  if (v282 == v308)
                  {
                    if (v308 == 1)
                    {
                      v371 = 1;
                    }

                    else
                    {
                      v371 = 2;
                    }

                    *&v553[40] = v371;
                    DWORD2(v557) = v371;
LABEL_793:
                    v553[20] = 1;
                    goto LABEL_801;
                  }
                }

                if (v321 == v308)
                {
                  v372 = v582[3];
                  v373 = sub_1D0E6E4CC(v582);
                  v374 = sub_1D0E6E4CC(v581);
                  *&v542 = 0x3FF0000000000000;
                  v81 = v496;
                  v375 = *v373;
                  v376 = v373[1];
                  v16 = a4;
                  v377 = sub_1D0E6E618(*v372, v372[1], v375, v376, *v374, v374[1], &v542);
                  if (v377 == 0.0)
                  {
LABEL_642:
                    v378 = 4;
                    *&v553[40] = 4;
LABEL_647:
                    DWORD2(v557) = v378;
LABEL_801:
                    v14 = v490;
                    goto LABEL_802;
                  }

                  if ((*&v377 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
                  {
                    v433 = fabs(v377);
                    if (v377 > 0.0)
                    {
                      v424 = 1;
                    }

                    else
                    {
                      v424 = -1;
                    }

                    if (v433 <= *&v542 * 2.22044605e-16)
                    {
                      goto LABEL_642;
                    }
                  }

                  else if (v377 > 0.0)
                  {
                    v424 = 1;
                  }

                  else
                  {
                    v424 = -1;
                  }

                  if (v424 == v308)
                  {
                    if (v308 == 1)
                    {
                      v434 = 1;
                    }

                    else
                    {
                      v434 = 2;
                    }

                    if (v308 == 1)
                    {
                      v435 = 2;
                    }

                    else
                    {
                      v435 = 1;
                    }

                    *&v553[40] = v434;
                    DWORD2(v557) = v435;
                    goto LABEL_793;
                  }
                }

                if (v308 == 1)
                {
                  v436 = 2;
                }

                else
                {
                  v436 = 1;
                }

                if (v308 == 1)
                {
                  v437 = 1;
                }

                else
                {
                  v437 = 2;
                }

                *&v553[40] = v436;
                DWORD2(v557) = v437;
                goto LABEL_801;
              }

              if (v591 != 99)
              {
                if (v591 != 101 || (v591 & 0x100) != 0)
                {
                  goto LABEL_202;
                }

                sub_1D0E6DED0(v553, v585, &v580);
                goto LABEL_802;
              }

              if ((v591 & 0x100) != 0)
              {
                v283 = v14;
                v551[0] = v518;
                v551[1] = v519;
                v552 = v520;
                *&v547[16] = v515;
                v548 = v516;
                v549 = *v517;
                v550 = *&v517[16];
                v544 = v512;
                v545 = *v513;
                v546 = *&v513[16];
                *v547 = v514;
                v542 = v510;
                v543 = v511;
                v284 = *&v592[38];
                if (*&v592[34] == 1)
                {
                  v285 = v581[2];
                  v286 = v581[3];
                  v287 = sub_1D0E6E4CC(v581);
                  *&v541 = 0x3FF0000000000000;
                  v288 = sub_1D0E6E618(*v285, v285[1], *v286, v286[1], *v287, v287[1], &v541);
                  if (v288 == 0.0 || (*&v288 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && fabs(v288) <= *&v541 * 2.22044605e-16)
                  {
                    a6 = v491;
                    v16 = a4;
                  }

                  else
                  {
                    if (v288 <= 0.0)
                    {
                      v352 = 1;
                    }

                    else
                    {
                      v352 = 2;
                    }

                    a6 = v491;
                    v16 = a4;
                    DWORD2(v548) = 3;
                    DWORD2(v544) = v352;
                    LODWORD(v543) = 5;
                    if (*v585 <= 1uLL)
                    {
                      goto LABEL_864;
                    }

                    v542 = *&v585[24];
                    *&v547[8] = v588;
                    *&v547[24] = *v589;
                    *(v551 + 8) = *&v589[8];
                    *(&v551[1] + 1) = *&v589[24];
                    *&v541 = a12;
                    sub_1D0E6DD24(&v541, &v542);
                  }
                }

                if (v284 == 1)
                {
                  v426 = v582[2];
                  v427 = v582[3];
                  v428 = sub_1D0E6E4CC(v582);
                  *&v541 = 0x3FF0000000000000;
                  v429 = sub_1D0E6E618(*v426, v426[1], *v427, v427[1], *v428, v428[1], &v541);
                  if (v429 == 0.0 || (*&v429 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && fabs(v429) <= *&v541 * 2.22044605e-16)
                  {
                    v16 = a4;
                  }

                  else
                  {
                    if (v429 <= 0.0)
                    {
                      v430 = 1;
                    }

                    else
                    {
                      v430 = 2;
                    }

                    v16 = a4;
                    DWORD2(v548) = v430;
                    DWORD2(v544) = 3;
                    LODWORD(v543) = 5;
                    if (!*v585)
                    {
                      goto LABEL_864;
                    }

                    v542 = *&v585[8];
                    *&v547[8] = *&v585[40];
                    *&v547[24] = *&v585[56];
                    *(v551 + 8) = v586;
                    *(&v551[1] + 1) = v587;
                    *&v541 = a12;
                    sub_1D0E6DD24(&v541, &v542);
                  }
                }

                v81 = v496;
                v14 = v283;
                goto LABEL_202;
              }

              if (!*&v592[34])
              {
                sub_1D0E6DED0(v553, v585, &v580);
                *&v553[16] = 5;
LABEL_802:
                *&v542 = a12;
                sub_1D0E6DD24(&v542, v553);
                goto LABEL_202;
              }

              if (vabdd_f64(*&v587, *&v589[24]) >= 50.0)
              {
                v289 = *&v587 < *&v589[24];
              }

              else
              {
                v542 = v586;
                sub_1D0E6F7F8(&v542);
                v541 = *&v589[8];
                sub_1D0E6F7F8(&v541);
                v289 = sub_1D0E6F6E4(v542, *(&v542 + 1), v541, *(&v541 + 1));
              }

              *&v553[16] = 5;
              if (*v585 <= v289)
              {
LABEL_864:
                __assert_rtn("assign_point", "get_turn_info.hpp", 164, "index < info.count");
              }

              *v553 = *&v585[16 * v289 + 8];
              v322 = &v585[56 * v289 + 40];
              *(v556 + 8) = *v322;
              *(&v556[1] + 1) = *(v322 + 2);
              *(v560 + 8) = *(v322 + 24);
              *(&v560[1] + 1) = *(v322 + 5);
              v323 = *&v592[34];
              if (!*&v592[34])
              {
                __assert_rtn("apply", "get_turn_info.hpp", 1033, "arrival_p != 0");
              }

              v324 = v581[2];
              v325 = v581[3];
              v326 = sub_1D0E6E4CC(v581);
              *&v542 = 0x3FF0000000000000;
              v327 = sub_1D0E6E618(*v324, v324[1], *v325, v325[1], *v326, v326[1], &v542);
              if (v327 == 0.0)
              {
                goto LABEL_507;
              }

              if ((*&v327 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
              {
                v379 = fabs(v327);
                if (v327 > 0.0)
                {
                  v328 = 1;
                }

                else
                {
                  v328 = -1;
                }

                if (v379 <= *&v542 * 2.22044605e-16)
                {
LABEL_507:
                  v328 = 0;
                }
              }

              else if (v327 > 0.0)
              {
                v328 = 1;
              }

              else
              {
                v328 = -1;
              }

              v380 = v582[2];
              v381 = v582[3];
              v382 = sub_1D0E6E4CC(v582);
              *&v542 = 0x3FF0000000000000;
              v383 = sub_1D0E6E618(*v380, v380[1], *v381, v381[1], *v382, v382[1], &v542);
              if (v383 != 0.0)
              {
                if ((*&v383 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
                {
                  if (v383 > 0.0)
                  {
                    v384 = 1;
                  }

                  else
                  {
                    v384 = -1;
                  }

LABEL_662:
                  if (v323 == 1)
                  {
                    v386 = v328;
                  }

                  else
                  {
                    v386 = v384;
                  }

                  if (v386 * v323 == 1)
                  {
                    v387 = 1;
                  }

                  else
                  {
                    v387 = 2;
                  }

                  if (v386 * v323 == 1)
                  {
                    v388 = 2;
                  }

                  else
                  {
                    v388 = 1;
                  }

                  v389 = v386 == 0;
                  if (v386)
                  {
                    v390 = v387;
                  }

                  else
                  {
                    v390 = 4;
                  }

                  if (v389)
                  {
                    v391 = 4;
                  }

                  else
                  {
                    v391 = v388;
                  }

                  *&v553[40] = v390;
                  DWORD2(v557) = v391;
                  if (v328)
                  {
                    v392 = *v553;
                    v393 = *&v553[8];
                    v394 = (*&v553[8] - *(*(&v532 + 1) + 8)) * (*&v553[8] - *(*(&v532 + 1) + 8)) + (*v553 - **(&v532 + 1)) * (*v553 - **(&v532 + 1));
                    v16 = a4;
                    v81 = v496;
                    v14 = v490;
                  }

                  else
                  {
                    v81 = v496;
                    v14 = v490;
                    if ((v536 & 1) == 0)
                    {
                      sub_1D0E6E1B8(v531, *(&v532 + 1), v533);
                      v535 = *v533[0];
                      v536 = 1;
                    }

                    v392 = *v553;
                    v393 = *&v553[8];
                    v394 = (*&v553[8] - *(&v535 + 1)) * (*&v553[8] - *(&v535 + 1)) + (*v553 - *&v535) * (*v553 - *&v535);
                    v16 = a4;
                  }

                  *&v557 = v394;
                  if (v384)
                  {
                    v395 = *v523;
                    v396 = v523[1];
                  }

                  else
                  {
                    if ((v527 & 1) == 0)
                    {
                      sub_1D0E6E1B8(v521, v523, v524);
                      v526 = *v524[0];
                      v527 = 1;
                      v392 = *v553;
                      v393 = *&v553[8];
                    }

                    v396 = *(&v526 + 1);
                    v395 = *&v526;
                  }

                  a6 = v491;
                  v561 = (v393 - v396) * (v393 - v396) + (v392 - v395) * (v392 - v395);
                  goto LABEL_802;
                }

                v385 = fabs(v383);
                if (v383 > 0.0)
                {
                  v384 = 1;
                }

                else
                {
                  v384 = -1;
                }

                if (v385 > *&v542 * 2.22044605e-16)
                {
                  goto LABEL_662;
                }
              }

              v384 = 0;
              goto LABEL_662;
            }

            if (v220)
            {
              v16 = a4;
              v45 = 0.5;
              v46 = -0.5;
              if (v169)
              {
                v227 = v161;
                v228 = v564;
                v209 = v568;
                v208 = v570;
LABEL_351:
                v245 = 1;
LABEL_394:
                sub_1D0E6E738(v585, v227, v228, v209, v208, v245);
LABEL_404:
                a6 = v491;
                v13 = v492;
                v14 = v490;
                v81 = v496;
                v246 = xmmword_1D0E7DD30;
                v61 = v500;
                goto LABEL_419;
              }

              if (v171)
              {
                v227 = v162;
                v228 = v568;
LABEL_393:
                v245 = 0;
                goto LABEL_394;
              }
            }

            else
            {
              v16 = a4;
              v45 = 0.5;
              v46 = -0.5;
              if (v169)
              {
                v227 = v161;
                v228 = v565;
                v209 = v569;
                v208 = v571;
                goto LABEL_351;
              }

              if (v171)
              {
                v227 = v162;
                v228 = v569;
                v209 = v565;
                v208 = v567;
                goto LABEL_393;
              }

              v209 = v565;
              v208 = v567;
              v212 = v569;
              v211 = v571;
            }

            sub_1D0E6EA6C(v585, &v541, v540, v209, v208, v212, v211);
            goto LABEL_404;
          }

          v219 = v210 >= v214;
        }

        if (v219)
        {
          v220 = 257;
        }

        else
        {
          v220 = 256;
        }

        goto LABEL_311;
      }

      break;
    }

    v102 = xmmword_1D0E7DD30;
    if (v501 != 1 || v16[6] >= v101)
    {
      goto LABEL_110;
    }

LABEL_857:
    v13 = v89;
    v14 = v88;
    a6 = v87;
    v81 = v86;
LABEL_858:
    v47 = v482 + 2;
    v468 = v485 + 2;
    v20 = v81 + 1;
    v469 = &a2[2 * (v484 != a2)];
    if (v484 + 2 != a3)
    {
      v469 = v484 + 2;
    }

    v484 = v469;
    v485 += 2;
    if (v468 != v489)
    {
      continue;
    }

    break;
  }

LABEL_5:
  v17 = 1;
LABEL_862:
  v470 = *MEMORY[0x1E69E9840];
  return v17;
}

double sub_1D0B85938(double *a1, double **a2)
{
  v4 = *a2;
  v3 = a2[1];
  if ((v3 - *a2) >= 0x40)
  {
    v38 = 0;
    v39 = 0;
    v6 = v3 - 4;
    do
    {
      if (v6 + 2 == v4)
      {
        break;
      }

      v7 = sub_1D0B85B94(a1, v6 + 2, v6, &v38);
      v6 -= 2;
    }

    while ((v7 & 1) != 0);
    if ((v39 & 1) == 0)
    {
      result = 0.0;
      if (v38)
      {
        return result;
      }
    }

    v4 = *a2;
    v3 = a2[1];
  }

  if (v3 == v4)
  {
    return 0.0;
  }

  v9 = *a1;
  v10 = a1[1];
  if (v4 + 2 == v3)
  {
    v19 = *v4;
    v20 = v4[1];
    v21 = v19 - v19;
    v22 = v20 - v20;
    v23 = v9 - *v4;
    v24 = (v20 - v20) * (v10 - v20) + v23 * (v19 - v19);
    if (v24 <= 0.0)
    {
      return v23 * v23 + 0.0 + (v10 - v20) * (v10 - v20);
    }

    v25 = v22 * v22 + v21 * v21;
    if (v25 <= v24)
    {
      return v23 * v23 + 0.0 + (v10 - v20) * (v10 - v20);
    }

    else
    {
      return (v9 - (v19 + v21 * (v24 / v25))) * (v9 - (v19 + v21 * (v24 / v25))) + 0.0 + (v10 - (v20 + v22 * (v24 / v25))) * (v10 - (v20 + v22 * (v24 / v25)));
    }
  }

  else
  {
    v11 = v4[2];
    v12 = v4[3];
    v13 = v4[1];
    v14 = v11 - *v4;
    v15 = v12 - v13;
    v16 = v9 - *v4;
    v17 = (v10 - v13) * (v12 - v13) + v16 * v14;
    if (v17 <= 0.0)
    {
      result = v16 * v16 + 0.0 + (v10 - v13) * (v10 - v13);
    }

    else
    {
      v18 = v15 * v15 + v14 * v14;
      if (v18 <= v17)
      {
        result = (v9 - v11) * (v9 - v11) + 0.0 + (v10 - v12) * (v10 - v12);
      }

      else
      {
        result = (v9 - (*v4 + v14 * (v17 / v18))) * (v9 - (*v4 + v14 * (v17 / v18))) + 0.0 + (v10 - (v13 + v15 * (v17 / v18))) * (v10 - (v13 + v15 * (v17 / v18)));
      }
    }

    if (v4 + 4 != v3)
    {
      v26 = v4 + 3;
      v27 = result;
      while (1)
      {
        v28 = v26[1];
        v29 = v26[2];
        v30 = *(v26 - 1);
        v31 = v28 - v30;
        v32 = v29 - *v26;
        v33 = v10 - *v26;
        v34 = v33 * v32 + (v9 - v30) * (v28 - v30);
        if (v34 <= 0.0)
        {
          v36 = (v9 - v30) * (v9 - v30) + 0.0 + v33 * v33;
        }

        else
        {
          v35 = v32 * v32 + v31 * v31;
          v36 = v35 <= v34 ? (v9 - v28) * (v9 - v28) + 0.0 + (v10 - v29) * (v10 - v29) : (v9 - (v30 + v31 * (v34 / v35))) * (v9 - (v30 + v31 * (v34 / v35))) + 0.0 + (v10 - (*v26 + v32 * (v34 / v35))) * (v10 - (*v26 + v32 * (v34 / v35)));
        }

        if (v36 == 0.0)
        {
          break;
        }

        if (v36 < v27)
        {
          result = v36;
          v27 = v36;
        }

        v37 = v26 + 3;
        v26 += 2;
        if (v37 == v3)
        {
          return result;
        }
      }

      return 0.0;
    }
  }

  return result;
}

uint64_t sub_1D0B85B94(double *a1, double *a2, double *a3, uint64_t a4)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a3;
  if (*a2 == *a1)
  {
    v8 = 1;
  }

  else if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v5 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v9 = fabs(v6);
    v10 = fabs(v5);
    v11 = vabdd_f64(v6, v5);
    if (v9 < v10)
    {
      v9 = v10;
    }

    if (v9 < 1.0)
    {
      v9 = 1.0;
    }

    v8 = v11 <= v9 * 2.22044605e-16;
  }

  else
  {
    v8 = 0;
  }

  if (v7 == v5)
  {
    v12 = 1;
LABEL_13:
    if (v8 && v12)
    {
      v13 = a1[1];
      v14 = a2[1];
      v15 = a3[1];
      v16 = v14 > v13 || v15 < v13;
      if (!v16 || (v14 >= v13 ? (v17 = v15 > v13) : (v17 = 1), !v17))
      {
        *(a4 + 4) = 1;
      }

      goto LABEL_62;
    }

    if (v8)
    {
      goto LABEL_31;
    }

    if (v12)
    {
      v19 = 1;
      v20 = v6 <= v5;
      v21 = -1;
      goto LABEL_34;
    }

    goto LABEL_53;
  }

  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v5 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v33 = fabs(v7);
    v34 = fabs(v5);
    v35 = vabdd_f64(v7, v5);
    if (v33 < v34)
    {
      v33 = v34;
    }

    if (v33 < 1.0)
    {
      v33 = 1.0;
    }

    v12 = v35 <= v33 * 2.22044605e-16;
    goto LABEL_13;
  }

  if (v8)
  {
LABEL_31:
    v19 = -1;
    v20 = v7 <= v5;
    v21 = 1;
LABEL_34:
    if (v20)
    {
      v22 = v19;
    }

    else
    {
      v22 = v21;
    }

    if (v8)
    {
      v23 = a2;
    }

    else
    {
      v23 = a3;
    }

    v24 = a1[1];
    v25 = v23[1];
    if (v24 != v25)
    {
      if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_48;
      }

      v26 = fabs(v24);
      v27 = fabs(v25);
      v28 = vabdd_f64(v24, v25);
      if (v26 < v27)
      {
        v26 = v27;
      }

      if (v26 < 1.0)
      {
        v26 = 1.0;
      }

      if (v28 > v26 * 2.22044605e-16)
      {
LABEL_48:
        if (v24 >= v25)
        {
          v29 = v22;
        }

        else
        {
          v29 = -v22;
        }

        goto LABEL_51;
      }
    }

    goto LABEL_70;
  }

LABEL_53:
  if (v6 < v5 && v7 > v5)
  {
    v22 = 2;
    goto LABEL_69;
  }

  if (v6 > v5 && v7 < v5)
  {
    v22 = -2;
LABEL_69:
    v39 = 1.0;
    v36 = sub_1D0B827D0(a2, a3, a1, &v39);
    if (v36 != 0.0)
    {
      if ((*&v36 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
      {
        v38 = fabs(v36);
        if (v36 > 0.0)
        {
          v29 = 1;
        }

        else
        {
          v29 = -1;
        }

        if (v38 <= v39 * 2.22044605e-16)
        {
          goto LABEL_70;
        }
      }

      else if (v36 > 0.0)
      {
        v29 = 1;
      }

      else
      {
        v29 = -1;
      }

LABEL_51:
      if (v22 * v29 >= 1)
      {
        *a4 += v22;
      }

      goto LABEL_62;
    }

LABEL_70:
    v32 = 0;
    *(a4 + 4) = 1;
    *a4 = 0;
    return v32 & 1;
  }

LABEL_62:
  v32 = *(a4 + 4) ^ 1;
  return v32 & 1;
}

uint64_t *sub_1D0B85E58(void *a1, int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
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

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void trackrun::TrackRunEngineActiveObject::TrackCoordinateTransform::ConvertEastNorthToLatLon(uint64_t a1@<X0>, float64x2_t *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  if (*(a1 + 16) == 1 && fabs(*(a1 + 24)) >= 2.22044605e-16 && (v9.f64[0] = *(a1 + 32), fabs(v9.f64[0]) >= 2.22044605e-16))
  {
    v9.f64[1] = *(a1 + 24);
    v11 = vdivq_f64(*a2, v9);
    *a8 = vaddq_f64(vextq_s8(v11, v11, 8uLL), *a1);
    v10 = 1;
  }

  else
  {
    v14 = 13;
    v13 = 4;
    cnprint::CNPrinter::Print(&v14, &v13, "#tre_ao,empty origin or zero values scale factors, cannot perform coordinate transform.", a3, a4, a5, a6, a7, v12);
    v10 = 0;
    *a8 = 0;
  }

  *(a8 + 16) = v10;
}

_BYTE *trackrun::TrackRunEngineActiveObject::ConvertIosTimeToGregorianString@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  if (*(*(a1 + 280) + 66) == 1)
  {
    v7[2] = v4;
    v7[3] = v5;
    v7[0] = a2;
    v7[1] = a3;
    return cnnavigation::iOSTimeToLocalTime(v7, a4);
  }

  else
  {

    return sub_1D0B751F4(a4, &unk_1D0ED80C5);
  }
}

void cnprint::CNPrinter::PrintCore(uint64_t a1, _WORD *a2, _BYTE *a3, char *__format, va_list a5)
{
  v102 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 160) & 7) == 0)
  {
    goto LABEL_102;
  }

  v7 = *a3;
  v8 = v7 != 255 && v7 >= *(a1 + 152);
  if (!v8 || vsnprintf(__str, 0x800uLL, __format, a5) < 1)
  {
    goto LABEL_102;
  }

  sub_1D0B751F4(v84, __str);
  v10 = *(a1 + 160);
  if ((v10 & 1) == 0)
  {
    goto LABEL_17;
  }

  v11 = *(a1 + 176);
  if (!v11)
  {
    goto LABEL_17;
  }

  v12 = *a2;
  v13 = a1 + 176;
  do
  {
    v14 = *(v11 + 32);
    v8 = v14 >= v12;
    v15 = v14 < v12;
    if (v8)
    {
      v13 = v11;
    }

    v11 = *(v11 + 8 * v15);
  }

  while (v11);
  if (v13 == a1 + 176 || v12 < *(v13 + 32))
  {
    goto LABEL_17;
  }

  if ((v85 & 0x80u) == 0)
  {
    v62 = v84;
  }

  else
  {
    v62 = v84[0];
  }

  v63 = *a3;
  if (v63 <= 2)
  {
    if (v63 == 1)
    {
      v71 = *(v13 + 40);
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136642819;
        *&buf[4] = v62;
        _os_log_debug_impl(&dword_1D0B71000, v71, OS_LOG_TYPE_DEBUG, "%{sensitive}s", buf, 0xCu);
      }

      goto LABEL_17;
    }

    if (v63 == 2)
    {
      v66 = *(v13 + 40);
      if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
      {
        *buf = 136642819;
        *&buf[4] = v62;
        v67 = v66;
        v68 = OS_LOG_TYPE_INFO;
LABEL_124:
        _os_log_impl(&dword_1D0B71000, v67, v68, "%{sensitive}s", buf, 0xCu);
      }
    }
  }

  else
  {
    if (v63 != 3)
    {
      if (v63 == 4)
      {
        v70 = *(v13 + 40);
        if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          *buf = 136642819;
          *&buf[4] = v62;
          _os_log_error_impl(&dword_1D0B71000, v70, OS_LOG_TYPE_ERROR, "%{sensitive}s", buf, 0xCu);
        }
      }

      else if (v63 == 5)
      {
        v64 = *(v13 + 40);
        if (os_log_type_enabled(v64, OS_LOG_TYPE_FAULT))
        {
          *buf = 136642819;
          *&buf[4] = v62;
          _os_log_fault_impl(&dword_1D0B71000, v64, OS_LOG_TYPE_FAULT, "%{sensitive}s", buf, 0xCu);
        }
      }

      goto LABEL_17;
    }

    v69 = *(v13 + 40);
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136642819;
      *&buf[4] = v62;
      v67 = v69;
      v68 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_124;
    }
  }

LABEL_17:
  if ((*(a1 + 160) & 7) != 0)
  {
    if ((v10 & 1) == 0 || (v16 = vcnt_s8((*(a1 + 160) & 7)), v16.i16[0] = vaddlv_u8(v16), v16.u32[0] >= 2uLL))
    {
      sub_1D0BC2F00(buf);
      v83 = time(0);
      v17 = localtime(&v83);
      v18 = *&v17->tm_sec;
      v19 = *&v17->tm_mon;
      v20 = *&v17->tm_isdst;
      tm_zone = v17->tm_zone;
      v80 = v19;
      v81 = v20;
      v79 = v18;
      MEMORY[0x1D387E950](&v90, &v96);
      if (v90 == 1)
      {
        std::ios_base::getloc((&v96 + *(v96 - 24)));
        std::locale::use_facet(&v87, MEMORY[0x1E69E5378]);
        std::locale::~locale(&v87);
        v21 = (&v96 + *(v96 - 24));
        rdbuf = v21->__rdbuf_;
        if (v21[1].__fmtflags_ == -1)
        {
          std::ios_base::getloc(v21);
          v23 = std::locale::use_facet(&v86, MEMORY[0x1E69E5318]);
          v24 = (v23->__vftable[2].~facet_0)(v23, 32);
          std::locale::~locale(&v86);
          v21[1].__fmtflags_ = v24;
        }

        if (!std::time_put<char,std::ostreambuf_iterator<char>>::put())
        {
          std::ios_base::clear((&v96 + *(v96 - 24)), *(&v98[2].__locale_ + *(v96 - 24)) | 1);
        }
      }

      MEMORY[0x1D387E960](&v90);
      sub_1D0BCD7C4(&v96, "\t", 1);
      v25 = pthread_self();
      sub_1D0BC2944(&v90);
      v26 = *(v90 - 3);
      v27 = std::locale::classic();
      v28 = (&v90 + v26);
      std::ios_base::getloc(v28);
      std::ios_base::imbue(v28, v27);
      std::locale::~locale(&v87);
      v29 = v28->__rdbuf_;
      if (v29)
      {
        (*(v29->__locale_ + 2))(v29, v27);
        std::locale::locale(v77, v29 + 1);
        std::locale::operator=(v29 + 1, v27);
        std::locale::~locale(v77);
      }

      std::locale::~locale(&v76);
      MEMORY[0x1D387E980](&v90, v25);
      sub_1D0BC2E5C(&v91, &v87);
      if ((v89 & 0x80u) == 0)
      {
        locale = &v87;
      }

      else
      {
        locale = v87.__locale_;
      }

      if ((v89 & 0x80u) == 0)
      {
        v31 = v89;
      }

      else
      {
        v31 = v88;
      }

      v32 = sub_1D0BCD7C4(&v96, locale, v31);
      if (v89 < 0)
      {
        operator delete(v87.__locale_);
      }

      v90 = *MEMORY[0x1E69E54E8];
      *(&v90 + *(v90 - 3)) = *(MEMORY[0x1E69E54E8] + 24);
      v91 = MEMORY[0x1E69E5548] + 16;
      if (v93 < 0)
      {
        operator delete(v92[7].__locale_);
      }

      v91 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v92);
      std::ostream::~ostream();
      MEMORY[0x1D387EBF0](&v94);
      sub_1D0BCD7C4(v32, "\t", 1);
      cnprint::CNPrinter::GetLogLevelString(a3, &v90);
      if (SHIBYTE(v92[0].__locale_) >= 0)
      {
        v33 = &v90;
      }

      else
      {
        v33 = v90;
      }

      if (SHIBYTE(v92[0].__locale_) >= 0)
      {
        locale_high = HIBYTE(v92[0].__locale_);
      }

      else
      {
        locale_high = v91;
      }

      v35 = sub_1D0BCD7C4(&v96, v33, locale_high);
      sub_1D0BCD7C4(v35, "\t", 1);
      sub_1D0B751F4(&v87, "0x0");
      if ((v89 & 0x80u) == 0)
      {
        v36 = &v87;
      }

      else
      {
        v36 = v87.__locale_;
      }

      if ((v89 & 0x80u) == 0)
      {
        v37 = v89;
      }

      else
      {
        v37 = v88;
      }

      v38 = sub_1D0BCD7C4(&v96, v36, v37);
      sub_1D0BCD7C4(v38, "\t", 1);
      v39 = getpid();
      v40 = MEMORY[0x1D387E9C0](&v96, v39);
      sub_1D0BCD7C4(v40, "\t", 1);
      v41 = sub_1D0BCD7C4(&v96, "unknown:", 8);
      sub_1D0BCD7C4(v41, "\t", 1);
      std::operator+<char>();
      v42 = std::string::append(&v74, ".", 1uLL);
      v43 = *&v42->__r_.__value_.__l.__data_;
      v75.__r_.__value_.__r.__words[2] = v42->__r_.__value_.__r.__words[2];
      *&v75.__r_.__value_.__l.__data_ = v43;
      v42->__r_.__value_.__l.__size_ = 0;
      v42->__r_.__value_.__r.__words[2] = 0;
      v42->__r_.__value_.__r.__words[0] = 0;
      cnprint::CNPrinter::GetLogCategoryString(a2, v72);
      if ((v73 & 0x80u) == 0)
      {
        v44 = v72;
      }

      else
      {
        v44 = v72[0];
      }

      if ((v73 & 0x80u) == 0)
      {
        v45 = v73;
      }

      else
      {
        v45 = v72[1];
      }

      v46 = std::string::append(&v75, v44, v45);
      v47 = *&v46->__r_.__value_.__l.__data_;
      v76.__r_.__value_.__r.__words[2] = v46->__r_.__value_.__r.__words[2];
      *&v76.__r_.__value_.__l.__data_ = v47;
      v46->__r_.__value_.__l.__size_ = 0;
      v46->__r_.__value_.__r.__words[2] = 0;
      v46->__r_.__value_.__r.__words[0] = 0;
      v48 = std::string::append(&v76, "]", 1uLL);
      v49 = *&v48->__r_.__value_.__l.__data_;
      v78 = v48->__r_.__value_.__r.__words[2];
      *&v77[0].__locale_ = v49;
      v48->__r_.__value_.__l.__size_ = 0;
      v48->__r_.__value_.__r.__words[2] = 0;
      v48->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v76.__r_.__value_.__l.__data_);
      }

      if (v73 < 0)
      {
        operator delete(v72[0]);
      }

      if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v75.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v74.__r_.__value_.__l.__data_);
      }

      if (v78 >= 0)
      {
        v50 = v77;
      }

      else
      {
        v50 = v77[0].__locale_;
      }

      if (v78 >= 0)
      {
        v51 = HIBYTE(v78);
      }

      else
      {
        v51 = v77[1].__locale_;
      }

      v52 = sub_1D0BCD7C4(&v96, v50, v51);
      sub_1D0BCD7C4(v52, "\t", 1);
      if ((v85 & 0x80u) == 0)
      {
        v53 = v84;
      }

      else
      {
        v53 = v84[0];
      }

      if ((v85 & 0x80u) == 0)
      {
        v54 = v85;
      }

      else
      {
        v54 = v84[1];
      }

      v55 = sub_1D0BCD7C4(&v96, v53, v54);
      sub_1D0BCD7C4(v55, "\n", 1);
      sub_1D0BC2E5C(&v97, &v76);
      if ((*(a1 + 160) & 2) != 0)
      {
        if (*(a1 + 344))
        {
          goto LABEL_77;
        }

        if (!sub_1D0C71260((a1 + 192), &unk_1D0ED80C5))
        {
          if (*(a1 + 344))
          {
            goto LABEL_77;
          }

          if (*(a1 + 215) < 0)
          {
            v65 = *(a1 + 192);
          }

          std::ofstream::open();
          if (*(a1 + 344))
          {
LABEL_77:
            if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v56 = &v76;
            }

            else
            {
              v56 = v76.__r_.__value_.__r.__words[0];
            }

            v57 = strlen(v56);
            sub_1D0BCD7C4((a1 + 216), v56, v57);
          }
        }
      }

      if ((*(a1 + 160) & 4) != 0)
      {
        if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v58 = &v76;
        }

        else
        {
          v58 = v76.__r_.__value_.__r.__words[0];
        }

        if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v76.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v76.__r_.__value_.__l.__size_;
        }

        sub_1D0BCD7C4(MEMORY[0x1E69E5310], v58, size);
      }

      if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v76.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v78) < 0)
      {
        operator delete(v77[0].__locale_);
      }

      if (v89 < 0)
      {
        operator delete(v87.__locale_);
      }

      if (SHIBYTE(v92[0].__locale_) < 0)
      {
        operator delete(v90);
      }

      *buf = *MEMORY[0x1E69E54D8];
      v60 = *(MEMORY[0x1E69E54D8] + 72);
      *&buf[*(*buf - 24)] = *(MEMORY[0x1E69E54D8] + 64);
      v96 = v60;
      v97 = MEMORY[0x1E69E5548] + 16;
      if (v99 < 0)
      {
        operator delete(v98[7].__locale_);
      }

      v97 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v98);
      std::iostream::~basic_iostream();
      MEMORY[0x1D387EBF0](&v100);
    }
  }

  if (v85 < 0)
  {
    operator delete(v84[0]);
  }

LABEL_102:
  v61 = *MEMORY[0x1E69E9840];
}

void sub_1D0B86C68(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, std::locale a38, void *a39, uint64_t a40, uint64_t a41, void *a42)
{
  if (a2)
  {
    MEMORY[0x1D387E960](&a42);
    __cxa_begin_catch(a1);
    std::ios_base::__set_badbit_and_consider_rethrow((v42 + *(STACK[0x220] - 24)));
    __cxa_end_catch();
    JUMPOUT(0x1D0B863E4);
  }

  _Unwind_Resume(a1);
}

void sub_1D0B86E94(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  v9 = *a2 + 0x4000;
  sub_1D0B88E94(v40, a3, a3, a4, a5, a6, a7, a8);
  v10 = sub_1D0B8910C((v8 + 17824), v40);
  v11 = *(v8 + 17864);
  if (v11 >= *(*(v8 + 232) + 984))
  {
    *(v8 + 248) = 0;
    *(v8 + 272) = 0;
    *(v8 + 280) = 0;
    *(v9 + 705) = 0;
    v30 = *(v8 + 17832);
    v31 = *(v8 + 17840);
    if (v31 == v30)
    {
      v31 = *(v8 + 17832);
    }

    else
    {
      v32 = *(v8 + 17856);
      v33 = &v30[v32 / 0x1A];
      v34 = v30[(v32 + v11) / 0x1A] + 152 * ((v32 + v11) % 0x1A);
      if (*v33 + 152 * (v32 % 0x1A) != v34)
      {
        v35 = (*v33 + 152 * (v32 % 0x1A));
        do
        {
          v36 = *v35;
          v35 += 19;
          (*v36)(v10);
          if (v35 - *v33 == 3952)
          {
            v37 = v33[1];
            ++v33;
            v35 = v37;
          }
        }

        while (v35 != v34);
        v31 = *(v8 + 17840);
        v30 = *(v8 + 17832);
      }
    }

    *(v8 + 17864) = 0;
    v38 = v31 - v30;
    if (v38 >= 3)
    {
      do
      {
        operator delete(*v30);
        v30 = (*(v8 + 17832) + 8);
        *(v8 + 17832) = v30;
        v38 = (*(v8 + 17840) - v30) >> 3;
      }

      while (v38 > 2);
    }

    if (v38 == 1)
    {
      v39 = 13;
    }

    else
    {
      if (v38 != 2)
      {
        return;
      }

      v39 = 26;
    }

    *(v8 + 17856) = v39;
  }

  else if (v11)
  {
    while (1)
    {
      v12 = *(v8 + 17856);
      v13 = *(*(v8 + 17832) + 8 * (v12 / 0x1A));
      v62 = &unk_1F4CEF658;
      if (!*(v8 + 248))
      {
        return;
      }

      v14 = v13 + 152 * (v12 % 0x1A);
      v15 = v8 + 288 + 48 * *(v8 + 284);
      v16 = *(v15 + 40);
      v17 = *(v15 + 24);
      v63 = *(v15 + 8);
      v64 = v17;
      v65 = v16;
      v18 = (*(*v14 + 16))(v14);
      v20.n128_f64[0] = v19;
      if (v63 || (v21 = *(&v63 + 1), (*(&v63 + 1) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000))
      {
        if (v18)
        {
          v22 = 1;
        }

        else
        {
          v22 = (*&v19 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
        }

        if (v22 && v63 != v18)
        {
          if (v63 < v18)
          {
            return;
          }

          goto LABEL_16;
        }

        v21 = *(&v63 + 1);
      }

      if (v21 < v19)
      {
        return;
      }

LABEL_16:
      v58 = 0;
      v59 = 0;
      v58 = (*(*v14 + 16))(v14, v20);
      v59 = v23;
      v60 = *(v14 + 104);
      v61 = *(v14 + 120);
      if (!cnestimation::RotationStabilizedAccelerationEstimator::AddAcceleration(v8 + 17088, &v58, v61, v24))
      {
        if (*(v9 + 705) == 1)
        {
          v25 = *(v8 + 17104);
          v26 = *(v8 + 17112);
          v27 = *(v8 + 17120);
          v28 = *(v8 + 17160);
          v29 = *(v8 + 17184);
          v44 = 0u;
          v45 = 0u;
          v46 = 0u;
          v47 = 0u;
          v48 = 0;
          v41 = &unk_1F4CEE768;
          v42 = v25;
          v43 = v26;
          v49 = 0x7FF8000000000000;
          v50 = *(v8 + 17168);
          v52 = vsubq_f64(v60, v50);
          v51 = v29;
          v53 = v61 - v29;
          v54 = v27;
          v55 = *(v9 + 744);
          v56 = *(v9 + 760);
          v57 = v28;
          operator new();
        }

        sub_1D0B7E234((v8 + 17824));
        if (*(v8 + 17864))
        {
          continue;
        }
      }

      return;
    }
  }
}

void sub_1D0B874BC(_Unwind_Exception *a1)
{
  v4 = *(v2 - 104);
  if (v4)
  {
    sub_1D0B7CAB8(v4);
  }

  sub_1D0B7CAB8(v1);
  _Unwind_Resume(a1);
}

__n128 sub_1D0B87544(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0x100000004;
  *(a1 + 24) = 0x100000004;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CDEBB8;
  if (a1 == a2)
  {
    v17 = "this != &(A)";
    v18 = 603;
    goto LABEL_16;
  }

  v4 = *(a2 + 8);
  v3 = *(a2 + 12);
  *(a1 + 8) = v4;
  *(a1 + 12) = v3;
  v5 = v3 * v4;
  *(a1 + 16) = v5;
  *(a1 + 20) = v4;
  v6 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  if (v4 > 4)
  {
    v17 = "this->max_num_rows_ >= A.num_rows_";
    v18 = 616;
    goto LABEL_16;
  }

  if (v3 >= 2)
  {
    v17 = "this->max_num_cols_ >= A.num_cols_";
    v18 = 617;
LABEL_16:
    __assert_rtn("CNMatrix", "cnmatrix.h", v18, v17);
  }

  v7 = *(a2 + 16);
  if (v7 > 3)
  {
    v10 = (v7 - 2);
    v11 = *(a2 + 32);
    v12 = (v7 - 1) >> 1;
    v13 = v11;
    v14 = (a1 + 40);
    do
    {
      v15 = *v13++;
      *v14++ = v15;
      --v12;
    }

    while (v12);
    v16 = v10;
    result = *(v11 + v16 * 8);
    *&v6[v16] = result;
  }

  else if (v5 >= 1)
  {
    v8 = *(a2 + 32);
    do
    {
      v9 = *v8++;
      result.n128_u64[0] = v9;
      *v6++ = v9;
      --v5;
    }

    while (v5);
  }

  return result;
}