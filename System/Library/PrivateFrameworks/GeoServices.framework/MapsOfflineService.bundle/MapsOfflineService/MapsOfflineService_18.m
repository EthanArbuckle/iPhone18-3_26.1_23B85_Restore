uint64_t sub_12E6F0(void *a1)
{
  *(a1 - 6) = off_2634938;
  *a1 = off_2634998;
  v2 = a1[5];
  if (v2)
  {
    if (*v2)
    {
      v3 = *v2 - 1;
      *v2 = v3;
      if (!v3)
      {
        if (*(v2 + 16))
        {
          if (*(v2 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    a1[5] = 0;
  }

  *(a1 - 6) = off_26345A0;
  v4 = *(a1 - 4);
  if (v4 && *(a1 - 24) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 - 4) = 0;
  }

  result = *(a1 - 2);
  if (result && *(a1 - 8) == 1)
  {
    result = (*(*result + 8))(result);
    *(a1 - 2) = 0;
  }

  return result;
}

BOOL sub_12E884(uint64_t a1, int *a2)
{
  if (!*(a1 + 128))
  {
    return 1;
  }

  v2 = *a2;
  if (*a2 > 83)
  {
    switch(v2)
    {
      case 'T':
        v8 = 2;
        v3 = 15658;
        goto LABEL_18;
      case 'U':
        v8 = 2;
        v3 = 15663;
        goto LABEL_18;
      case 'V':
        v8 = 2;
        v3 = 15653;
        goto LABEL_18;
    }

LABEL_15:
    v8 = 0;
    v5 = __p;
    goto LABEL_19;
  }

  if (v2 == 81)
  {
    v8 = 2;
    v3 = 15674;
    goto LABEL_18;
  }

  if (v2 == 82)
  {
    v8 = 2;
    v3 = 15659;
    goto LABEL_18;
  }

  if (v2 != 83)
  {
    goto LABEL_15;
  }

  v8 = 2;
  v3 = 15661;
LABEL_18:
  LOWORD(__p[0]) = v3;
  v5 = (__p + 2);
LABEL_19:
  *v5 = 0;
  result = a1 + 120 == sub_BC284(a1 + 112, __p);
  if (v8 < 0)
  {
    v6 = result;
    operator delete(__p[0]);
    return v6;
  }

  return result;
}

void sub_12E9B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_131884(uint64_t result)
{
  *result = off_26345A0;
  v1 = *(result + 16);
  if (v1 && *(result + 24) == 1)
  {
    v2 = result;
    (*(*v1 + 8))(*(result + 16));
    result = v2;
    *(v2 + 16) = 0;
  }

  v3 = *(result + 32);
  if (v3)
  {
    if (*(result + 40) == 1)
    {
      v4 = result;
      (*(*v3 + 8))(*(result + 32));
      result = v4;
      *(v4 + 32) = 0;
    }
  }

  return result;
}

void sub_13194C(uint64_t a1)
{
  *a1 = off_26345A0;
  v1 = *(a1 + 16);
  if (v1 && *(a1 + 24) == 1)
  {
    v2 = a1;
    (*(*v1 + 8))(*(a1 + 16));
    a1 = v2;
    *(v2 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    v4 = a1;
    (*(*v3 + 8))(*(a1 + 32));
    *(v4 + 32) = 0;
  }

  operator delete();
}

double sub_131A34(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (!v2)
  {
    return NAN;
  }

  v3 = (*(*v2 + 40))(v2);
  result = (*(**(a1 + 32) + 16))(*(a1 + 32)) + *v3;
  *v3 = result;
  return result;
}

uint64_t sub_131ADC(uint64_t result)
{
  *result = off_26345A0;
  v1 = *(result + 16);
  if (v1 && *(result + 24) == 1)
  {
    v2 = result;
    (*(*v1 + 8))(*(result + 16));
    result = v2;
    *(v2 + 16) = 0;
  }

  v3 = *(result + 32);
  if (v3)
  {
    if (*(result + 40) == 1)
    {
      v4 = result;
      (*(*v3 + 8))(*(result + 32));
      result = v4;
      *(v4 + 32) = 0;
    }
  }

  return result;
}

void sub_131BA4(uint64_t a1)
{
  *a1 = off_26345A0;
  v1 = *(a1 + 16);
  if (v1 && *(a1 + 24) == 1)
  {
    v2 = a1;
    (*(*v1 + 8))(*(a1 + 16));
    a1 = v2;
    *(v2 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    v4 = a1;
    (*(*v3 + 8))(*(a1 + 32));
    *(v4 + 32) = 0;
  }

  operator delete();
}

double sub_131C8C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (!v2)
  {
    return NAN;
  }

  v3 = (*(*v2 + 40))(v2);
  result = *v3 - (*(**(a1 + 32) + 16))(*(a1 + 32));
  *v3 = result;
  return result;
}

uint64_t sub_131D34(uint64_t result)
{
  *result = off_26345A0;
  v1 = *(result + 16);
  if (v1 && *(result + 24) == 1)
  {
    v2 = result;
    (*(*v1 + 8))(*(result + 16));
    result = v2;
    *(v2 + 16) = 0;
  }

  v3 = *(result + 32);
  if (v3)
  {
    if (*(result + 40) == 1)
    {
      v4 = result;
      (*(*v3 + 8))(*(result + 32));
      result = v4;
      *(v4 + 32) = 0;
    }
  }

  return result;
}

void sub_131DFC(uint64_t a1)
{
  *a1 = off_26345A0;
  v1 = *(a1 + 16);
  if (v1 && *(a1 + 24) == 1)
  {
    v2 = a1;
    (*(*v1 + 8))(*(a1 + 16));
    a1 = v2;
    *(v2 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    v4 = a1;
    (*(*v3 + 8))(*(a1 + 32));
    *(v4 + 32) = 0;
  }

  operator delete();
}

double sub_131EE4(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (!v2)
  {
    return NAN;
  }

  v3 = (*(*v2 + 40))(v2);
  result = (*(**(a1 + 32) + 16))(*(a1 + 32)) * *v3;
  *v3 = result;
  return result;
}

uint64_t sub_131F8C(uint64_t result)
{
  *result = off_26345A0;
  v1 = *(result + 16);
  if (v1 && *(result + 24) == 1)
  {
    v2 = result;
    (*(*v1 + 8))(*(result + 16));
    result = v2;
    *(v2 + 16) = 0;
  }

  v3 = *(result + 32);
  if (v3)
  {
    if (*(result + 40) == 1)
    {
      v4 = result;
      (*(*v3 + 8))(*(result + 32));
      result = v4;
      *(v4 + 32) = 0;
    }
  }

  return result;
}

void sub_132054(uint64_t a1)
{
  *a1 = off_26345A0;
  v1 = *(a1 + 16);
  if (v1 && *(a1 + 24) == 1)
  {
    v2 = a1;
    (*(*v1 + 8))(*(a1 + 16));
    a1 = v2;
    *(v2 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    v4 = a1;
    (*(*v3 + 8))(*(a1 + 32));
    *(v4 + 32) = 0;
  }

  operator delete();
}

double sub_13213C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (!v2)
  {
    return NAN;
  }

  v3 = (*(*v2 + 40))(v2);
  result = *v3 / (*(**(a1 + 32) + 16))(*(a1 + 32));
  *v3 = result;
  return result;
}

uint64_t sub_1321E4(uint64_t result)
{
  *result = off_26345A0;
  v1 = *(result + 16);
  if (v1 && *(result + 24) == 1)
  {
    v2 = result;
    (*(*v1 + 8))(*(result + 16));
    result = v2;
    *(v2 + 16) = 0;
  }

  v3 = *(result + 32);
  if (v3)
  {
    if (*(result + 40) == 1)
    {
      v4 = result;
      (*(*v3 + 8))(*(result + 32));
      result = v4;
      *(v4 + 32) = 0;
    }
  }

  return result;
}

void sub_1322AC(uint64_t a1)
{
  *a1 = off_26345A0;
  v1 = *(a1 + 16);
  if (v1 && *(a1 + 24) == 1)
  {
    v2 = a1;
    (*(*v1 + 8))(*(a1 + 16));
    a1 = v2;
    *(v2 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    v4 = a1;
    (*(*v3 + 8))(*(a1 + 32));
    *(v4 + 32) = 0;
  }

  operator delete();
}

double sub_132394(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (!v2)
  {
    return NAN;
  }

  v3 = (*(*v2 + 40))(v2);
  v4 = (*(**(a1 + 32) + 16))(*(a1 + 32));
  result = fmod(*v3, v4);
  *v3 = result;
  return result;
}

uint64_t sub_13243C(uint64_t result)
{
  *result = off_26345A0;
  v1 = *(result + 16);
  if (v1 && *(result + 24) == 1)
  {
    v2 = result;
    (*(*v1 + 8))(*(result + 16));
    result = v2;
    *(v2 + 16) = 0;
  }

  v3 = *(result + 32);
  if (v3)
  {
    if (*(result + 40) == 1)
    {
      v4 = result;
      (*(*v3 + 8))(*(result + 32));
      result = v4;
      *(v4 + 32) = 0;
    }
  }

  return result;
}

void sub_132504(uint64_t a1)
{
  *a1 = off_26345A0;
  v1 = *(a1 + 16);
  if (v1 && *(a1 + 24) == 1)
  {
    v2 = a1;
    (*(*v1 + 8))(*(a1 + 16));
    a1 = v2;
    *(v2 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    v4 = a1;
    (*(*v3 + 8))(*(a1 + 32));
    *(v4 + 32) = 0;
  }

  operator delete();
}

double sub_1325EC(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (!v2)
  {
    return NAN;
  }

  v3 = (*(*v2 + 40))(v2);
  result = (*(**(a1 + 32) + 16))(*(a1 + 32)) + *v3;
  *v3 = result;
  return result;
}

uint64_t sub_132684(uint64_t result)
{
  *result = off_26345A0;
  v1 = *(result + 16);
  if (v1 && *(result + 24) == 1)
  {
    v2 = result;
    (*(*v1 + 8))(*(result + 16));
    result = v2;
    *(v2 + 16) = 0;
  }

  v3 = *(result + 32);
  if (v3)
  {
    if (*(result + 40) == 1)
    {
      v4 = result;
      (*(*v3 + 8))(*(result + 32));
      result = v4;
      *(v4 + 32) = 0;
    }
  }

  return result;
}

void sub_13274C(uint64_t a1)
{
  *a1 = off_26345A0;
  v1 = *(a1 + 16);
  if (v1 && *(a1 + 24) == 1)
  {
    v2 = a1;
    (*(*v1 + 8))(*(a1 + 16));
    a1 = v2;
    *(v2 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    v4 = a1;
    (*(*v3 + 8))(*(a1 + 32));
    *(v4 + 32) = 0;
  }

  operator delete();
}

double sub_132834(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (!v2)
  {
    return NAN;
  }

  v3 = (*(*v2 + 40))(v2);
  result = *v3 - (*(**(a1 + 32) + 16))(*(a1 + 32));
  *v3 = result;
  return result;
}

uint64_t sub_1328CC(uint64_t result)
{
  *result = off_26345A0;
  v1 = *(result + 16);
  if (v1 && *(result + 24) == 1)
  {
    v2 = result;
    (*(*v1 + 8))(*(result + 16));
    result = v2;
    *(v2 + 16) = 0;
  }

  v3 = *(result + 32);
  if (v3)
  {
    if (*(result + 40) == 1)
    {
      v4 = result;
      (*(*v3 + 8))(*(result + 32));
      result = v4;
      *(v4 + 32) = 0;
    }
  }

  return result;
}

void sub_132994(uint64_t a1)
{
  *a1 = off_26345A0;
  v1 = *(a1 + 16);
  if (v1 && *(a1 + 24) == 1)
  {
    v2 = a1;
    (*(*v1 + 8))(*(a1 + 16));
    a1 = v2;
    *(v2 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    v4 = a1;
    (*(*v3 + 8))(*(a1 + 32));
    *(v4 + 32) = 0;
  }

  operator delete();
}

double sub_132A7C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (!v2)
  {
    return NAN;
  }

  v3 = (*(*v2 + 40))(v2);
  result = (*(**(a1 + 32) + 16))(*(a1 + 32)) * *v3;
  *v3 = result;
  return result;
}

uint64_t sub_132B14(uint64_t result)
{
  *result = off_26345A0;
  v1 = *(result + 16);
  if (v1 && *(result + 24) == 1)
  {
    v2 = result;
    (*(*v1 + 8))(*(result + 16));
    result = v2;
    *(v2 + 16) = 0;
  }

  v3 = *(result + 32);
  if (v3)
  {
    if (*(result + 40) == 1)
    {
      v4 = result;
      (*(*v3 + 8))(*(result + 32));
      result = v4;
      *(v4 + 32) = 0;
    }
  }

  return result;
}

void sub_132BDC(uint64_t a1)
{
  *a1 = off_26345A0;
  v1 = *(a1 + 16);
  if (v1 && *(a1 + 24) == 1)
  {
    v2 = a1;
    (*(*v1 + 8))(*(a1 + 16));
    a1 = v2;
    *(v2 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    v4 = a1;
    (*(*v3 + 8))(*(a1 + 32));
    *(v4 + 32) = 0;
  }

  operator delete();
}

double sub_132CC4(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (!v2)
  {
    return NAN;
  }

  v3 = (*(*v2 + 40))(v2);
  result = *v3 / (*(**(a1 + 32) + 16))(*(a1 + 32));
  *v3 = result;
  return result;
}

uint64_t sub_132D5C(uint64_t result)
{
  *result = off_26345A0;
  v1 = *(result + 16);
  if (v1 && *(result + 24) == 1)
  {
    v2 = result;
    (*(*v1 + 8))(*(result + 16));
    result = v2;
    *(v2 + 16) = 0;
  }

  v3 = *(result + 32);
  if (v3)
  {
    if (*(result + 40) == 1)
    {
      v4 = result;
      (*(*v3 + 8))(*(result + 32));
      result = v4;
      *(v4 + 32) = 0;
    }
  }

  return result;
}

void sub_132E24(uint64_t a1)
{
  *a1 = off_26345A0;
  v1 = *(a1 + 16);
  if (v1 && *(a1 + 24) == 1)
  {
    v2 = a1;
    (*(*v1 + 8))(*(a1 + 16));
    a1 = v2;
    *(v2 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    v4 = a1;
    (*(*v3 + 8))(*(a1 + 32));
    *(v4 + 32) = 0;
  }

  operator delete();
}

double sub_132F0C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (!v2)
  {
    return NAN;
  }

  v3 = (*(*v2 + 40))(v2);
  v4 = (*(**(a1 + 32) + 16))(*(a1 + 32));
  result = fmod(*v3, v4);
  *v3 = result;
  return result;
}

uint64_t sub_132FA8(uint64_t result)
{
  *result = off_26345A0;
  v1 = *(result + 16);
  if (v1 && *(result + 24) == 1)
  {
    v2 = result;
    (*(*v1 + 8))(*(result + 16));
    result = v2;
    *(v2 + 16) = 0;
  }

  v3 = *(result + 32);
  if (v3)
  {
    if (*(result + 40) == 1)
    {
      v4 = result;
      (*(*v3 + 8))(*(result + 32));
      result = v4;
      *(v4 + 32) = 0;
    }
  }

  return result;
}

void sub_133070(uint64_t a1)
{
  *a1 = off_26345A0;
  v1 = *(a1 + 16);
  if (v1 && *(a1 + 24) == 1)
  {
    v2 = a1;
    (*(*v1 + 8))(*(a1 + 16));
    a1 = v2;
    *(v2 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    v4 = a1;
    (*(*v3 + 8))(*(a1 + 32));
    *(v4 + 32) = 0;
  }

  operator delete();
}

double sub_133158(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (!v2)
  {
    return NAN;
  }

  v3 = (*(*v2 + 40))(v2);
  result = (*(**(a1 + 32) + 16))(*(a1 + 32)) + *v3;
  *v3 = result;
  return result;
}

uint64_t sub_1331F0(uint64_t result)
{
  *result = off_26345A0;
  v1 = *(result + 16);
  if (v1 && *(result + 24) == 1)
  {
    v2 = result;
    (*(*v1 + 8))(*(result + 16));
    result = v2;
    *(v2 + 16) = 0;
  }

  v3 = *(result + 32);
  if (v3)
  {
    if (*(result + 40) == 1)
    {
      v4 = result;
      (*(*v3 + 8))(*(result + 32));
      result = v4;
      *(v4 + 32) = 0;
    }
  }

  return result;
}

void sub_1332B8(uint64_t a1)
{
  *a1 = off_26345A0;
  v1 = *(a1 + 16);
  if (v1 && *(a1 + 24) == 1)
  {
    v2 = a1;
    (*(*v1 + 8))(*(a1 + 16));
    a1 = v2;
    *(v2 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    v4 = a1;
    (*(*v3 + 8))(*(a1 + 32));
    *(v4 + 32) = 0;
  }

  operator delete();
}

double sub_1333A0(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (!v2)
  {
    return NAN;
  }

  v3 = (*(*v2 + 40))(v2);
  result = *v3 - (*(**(a1 + 32) + 16))(*(a1 + 32));
  *v3 = result;
  return result;
}

uint64_t sub_133438(uint64_t result)
{
  *result = off_26345A0;
  v1 = *(result + 16);
  if (v1 && *(result + 24) == 1)
  {
    v2 = result;
    (*(*v1 + 8))(*(result + 16));
    result = v2;
    *(v2 + 16) = 0;
  }

  v3 = *(result + 32);
  if (v3)
  {
    if (*(result + 40) == 1)
    {
      v4 = result;
      (*(*v3 + 8))(*(result + 32));
      result = v4;
      *(v4 + 32) = 0;
    }
  }

  return result;
}

void sub_133500(uint64_t a1)
{
  *a1 = off_26345A0;
  v1 = *(a1 + 16);
  if (v1 && *(a1 + 24) == 1)
  {
    v2 = a1;
    (*(*v1 + 8))(*(a1 + 16));
    a1 = v2;
    *(v2 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    v4 = a1;
    (*(*v3 + 8))(*(a1 + 32));
    *(v4 + 32) = 0;
  }

  operator delete();
}

double sub_1335E8(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (!v2)
  {
    return NAN;
  }

  v3 = (*(*v2 + 40))(v2);
  result = (*(**(a1 + 32) + 16))(*(a1 + 32)) * *v3;
  *v3 = result;
  return result;
}

uint64_t sub_133680(uint64_t result)
{
  *result = off_26345A0;
  v1 = *(result + 16);
  if (v1 && *(result + 24) == 1)
  {
    v2 = result;
    (*(*v1 + 8))(*(result + 16));
    result = v2;
    *(v2 + 16) = 0;
  }

  v3 = *(result + 32);
  if (v3)
  {
    if (*(result + 40) == 1)
    {
      v4 = result;
      (*(*v3 + 8))(*(result + 32));
      result = v4;
      *(v4 + 32) = 0;
    }
  }

  return result;
}

void sub_133748(uint64_t a1)
{
  *a1 = off_26345A0;
  v1 = *(a1 + 16);
  if (v1 && *(a1 + 24) == 1)
  {
    v2 = a1;
    (*(*v1 + 8))(*(a1 + 16));
    a1 = v2;
    *(v2 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    v4 = a1;
    (*(*v3 + 8))(*(a1 + 32));
    *(v4 + 32) = 0;
  }

  operator delete();
}

double sub_133830(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (!v2)
  {
    return NAN;
  }

  v3 = (*(*v2 + 40))(v2);
  result = *v3 / (*(**(a1 + 32) + 16))(*(a1 + 32));
  *v3 = result;
  return result;
}

uint64_t sub_1338C8(uint64_t result)
{
  *result = off_26345A0;
  v1 = *(result + 16);
  if (v1 && *(result + 24) == 1)
  {
    v2 = result;
    (*(*v1 + 8))(*(result + 16));
    result = v2;
    *(v2 + 16) = 0;
  }

  v3 = *(result + 32);
  if (v3)
  {
    if (*(result + 40) == 1)
    {
      v4 = result;
      (*(*v3 + 8))(*(result + 32));
      result = v4;
      *(v4 + 32) = 0;
    }
  }

  return result;
}

void sub_133990(uint64_t a1)
{
  *a1 = off_26345A0;
  v1 = *(a1 + 16);
  if (v1 && *(a1 + 24) == 1)
  {
    v2 = a1;
    (*(*v1 + 8))(*(a1 + 16));
    a1 = v2;
    *(v2 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    v4 = a1;
    (*(*v3 + 8))(*(a1 + 32));
    *(v4 + 32) = 0;
  }

  operator delete();
}

double sub_133A78(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (!v2)
  {
    return NAN;
  }

  v3 = (*(*v2 + 40))(v2);
  v4 = (*(**(a1 + 32) + 16))(*(a1 + 32));
  result = fmod(*v3, v4);
  *v3 = result;
  return result;
}

uint64_t sub_133B14(uint64_t result)
{
  *result = off_26345A0;
  v1 = *(result + 16);
  if (v1 && *(result + 24) == 1)
  {
    v2 = result;
    (*(*v1 + 8))(*(result + 16));
    result = v2;
    *(v2 + 16) = 0;
  }

  v3 = *(result + 32);
  if (v3)
  {
    if (*(result + 40) == 1)
    {
      v4 = result;
      (*(*v3 + 8))(*(result + 32));
      result = v4;
      *(v4 + 32) = 0;
    }
  }

  return result;
}

void sub_133BDC(uint64_t a1)
{
  *a1 = off_26345A0;
  v1 = *(a1 + 16);
  if (v1 && *(a1 + 24) == 1)
  {
    v2 = a1;
    (*(*v1 + 8))(*(a1 + 16));
    a1 = v2;
    *(v2 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    v4 = a1;
    (*(*v3 + 8))(*(a1 + 32));
    *(v4 + 32) = 0;
  }

  operator delete();
}

double sub_133CC4(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (!v2)
  {
    return NAN;
  }

  v3 = (*(*v2 + 40))(v2);
  result = (*(**(a1 + 32) + 16))(*(a1 + 32)) + *v3;
  *v3 = result;
  return result;
}

uint64_t sub_133D5C(uint64_t result)
{
  *result = off_26345A0;
  v1 = *(result + 16);
  if (v1 && *(result + 24) == 1)
  {
    v2 = result;
    (*(*v1 + 8))(*(result + 16));
    result = v2;
    *(v2 + 16) = 0;
  }

  v3 = *(result + 32);
  if (v3)
  {
    if (*(result + 40) == 1)
    {
      v4 = result;
      (*(*v3 + 8))(*(result + 32));
      result = v4;
      *(v4 + 32) = 0;
    }
  }

  return result;
}

void sub_133E24(uint64_t a1)
{
  *a1 = off_26345A0;
  v1 = *(a1 + 16);
  if (v1 && *(a1 + 24) == 1)
  {
    v2 = a1;
    (*(*v1 + 8))(*(a1 + 16));
    a1 = v2;
    *(v2 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    v4 = a1;
    (*(*v3 + 8))(*(a1 + 32));
    *(v4 + 32) = 0;
  }

  operator delete();
}

double sub_133F0C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (!v2)
  {
    return NAN;
  }

  v3 = (*(*v2 + 40))(v2);
  result = *v3 - (*(**(a1 + 32) + 16))(*(a1 + 32));
  *v3 = result;
  return result;
}

uint64_t sub_133FA4(uint64_t result)
{
  *result = off_26345A0;
  v1 = *(result + 16);
  if (v1 && *(result + 24) == 1)
  {
    v2 = result;
    (*(*v1 + 8))(*(result + 16));
    result = v2;
    *(v2 + 16) = 0;
  }

  v3 = *(result + 32);
  if (v3)
  {
    if (*(result + 40) == 1)
    {
      v4 = result;
      (*(*v3 + 8))(*(result + 32));
      result = v4;
      *(v4 + 32) = 0;
    }
  }

  return result;
}

void sub_13406C(uint64_t a1)
{
  *a1 = off_26345A0;
  v1 = *(a1 + 16);
  if (v1 && *(a1 + 24) == 1)
  {
    v2 = a1;
    (*(*v1 + 8))(*(a1 + 16));
    a1 = v2;
    *(v2 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    v4 = a1;
    (*(*v3 + 8))(*(a1 + 32));
    *(v4 + 32) = 0;
  }

  operator delete();
}

double sub_134154(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (!v2)
  {
    return NAN;
  }

  v3 = (*(*v2 + 40))(v2);
  result = (*(**(a1 + 32) + 16))(*(a1 + 32)) * *v3;
  *v3 = result;
  return result;
}

uint64_t sub_1341EC(uint64_t result)
{
  *result = off_26345A0;
  v1 = *(result + 16);
  if (v1 && *(result + 24) == 1)
  {
    v2 = result;
    (*(*v1 + 8))(*(result + 16));
    result = v2;
    *(v2 + 16) = 0;
  }

  v3 = *(result + 32);
  if (v3)
  {
    if (*(result + 40) == 1)
    {
      v4 = result;
      (*(*v3 + 8))(*(result + 32));
      result = v4;
      *(v4 + 32) = 0;
    }
  }

  return result;
}

void sub_1342B4(uint64_t a1)
{
  *a1 = off_26345A0;
  v1 = *(a1 + 16);
  if (v1 && *(a1 + 24) == 1)
  {
    v2 = a1;
    (*(*v1 + 8))(*(a1 + 16));
    a1 = v2;
    *(v2 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    v4 = a1;
    (*(*v3 + 8))(*(a1 + 32));
    *(v4 + 32) = 0;
  }

  operator delete();
}

double sub_13439C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (!v2)
  {
    return NAN;
  }

  v3 = (*(*v2 + 40))(v2);
  result = *v3 / (*(**(a1 + 32) + 16))(*(a1 + 32));
  *v3 = result;
  return result;
}

uint64_t sub_134434(uint64_t result)
{
  *result = off_26345A0;
  v1 = *(result + 16);
  if (v1 && *(result + 24) == 1)
  {
    v2 = result;
    (*(*v1 + 8))(*(result + 16));
    result = v2;
    *(v2 + 16) = 0;
  }

  v3 = *(result + 32);
  if (v3)
  {
    if (*(result + 40) == 1)
    {
      v4 = result;
      (*(*v3 + 8))(*(result + 32));
      result = v4;
      *(v4 + 32) = 0;
    }
  }

  return result;
}

void sub_1344FC(uint64_t a1)
{
  *a1 = off_26345A0;
  v1 = *(a1 + 16);
  if (v1 && *(a1 + 24) == 1)
  {
    v2 = a1;
    (*(*v1 + 8))(*(a1 + 16));
    a1 = v2;
    *(v2 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    v4 = a1;
    (*(*v3 + 8))(*(a1 + 32));
    *(v4 + 32) = 0;
  }

  operator delete();
}

double sub_1345E4(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (!v2)
  {
    return NAN;
  }

  v3 = (*(*v2 + 40))(v2);
  v4 = (*(**(a1 + 32) + 16))(*(a1 + 32));
  result = fmod(*v3, v4);
  *v3 = result;
  return result;
}

void sub_134680(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  *a1 = off_26345A0;
  *(a1 + 8) = *a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (a3)
  {
    v7 = (*(*a3 + 32))(a3) != 17 && (*(*a3 + 32))(a3) != 18;
    *(a1 + 16) = a3;
    *(a1 + 24) = v7;
  }

  if (a4)
  {
    v8 = (*(*a4 + 32))(a4) != 17 && (*(*a4 + 32))(a4) != 18;
    *(a1 + 32) = a4;
    *(a1 + 40) = v8;
  }

  *a1 = off_2635060;
  *(a1 + 48) = off_26350C8;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  operator new();
}

void sub_134CA0(_Unwind_Exception *a1)
{
  sub_F5710((v1 + 80));
  sub_12A624(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_134CD4(uint64_t a1)
{
  *a1 = off_2635060;
  *(a1 + 48) = off_26350C8;
  v2 = *(a1 + 80);
  if (v2)
  {
    if (*v2)
    {
      v3 = *v2 - 1;
      *v2 = v3;
      if (!v3)
      {
        if (*(v2 + 16))
        {
          if (*(v2 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 80) = 0;
  }

  *a1 = off_26345A0;
  v4 = *(a1 + 16);
  if (v4 && *(a1 + 24) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 16) = 0;
  }

  v5 = *(a1 + 32);
  if (v5 && *(a1 + 40) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 32) = 0;
  }

  return a1;
}

void sub_134E34(uint64_t a1)
{
  *a1 = off_2635060;
  *(a1 + 48) = off_26350C8;
  v2 = *(a1 + 80);
  if (v2)
  {
    if (*v2)
    {
      v3 = *v2 - 1;
      *v2 = v3;
      if (!v3)
      {
        if (*(v2 + 16))
        {
          if (*(v2 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 80) = 0;
  }

  *a1 = off_26345A0;
  v4 = *(a1 + 16);
  if (v4 && *(a1 + 24) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 16) = 0;
  }

  v5 = *(a1 + 32);
  if (v5 && *(a1 + 40) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 32) = 0;
  }

  operator delete();
}

double sub_134FB4(uint64_t a1)
{
  if (*(a1 + 72) != 1)
  {
    return NAN;
  }

  (*(**(a1 + 16) + 16))(*(a1 + 16));
  (*(**(a1 + 32) + 16))(*(a1 + 32));
  v3 = *(*(*(**(a1 + 56) + 64))(*(a1 + 56)) + 16);
  v4 = *(*(*(**(a1 + 64) + 64))(*(a1 + 64)) + 16);
  v5 = (*(*a1 + 56))(a1);
  if ((v5 & 0xF) != 0)
  {
    v6 = -16;
  }

  else
  {
    v6 = 0;
  }

  v7 = 8 * (v6 + v5);
  if (v7 >= 1)
  {
    v8 = &v3[v7 / 8];
    do
    {
      v9 = v3[1];
      *v3 = *v3 + *v4;
      v3[1] = v9 + v4[1];
      v10 = v3[3];
      v3[2] = v3[2] + v4[2];
      v3[3] = v10 + v4[3];
      v11 = v3[5];
      v3[4] = v3[4] + v4[4];
      v3[5] = v11 + v4[5];
      v12 = v3[7];
      v3[6] = v3[6] + v4[6];
      v3[7] = v12 + v4[7];
      v13 = v3[9];
      v3[8] = v3[8] + v4[8];
      v3[9] = v13 + v4[9];
      v14 = v3[11];
      v3[10] = v3[10] + v4[10];
      v3[11] = v14 + v4[11];
      v15 = v3[13];
      v3[12] = v3[12] + v4[12];
      v3[13] = v15 + v4[13];
      v16 = v3[15];
      v3[14] = v3[14] + v4[14];
      v3[15] = v16 + v4[15];
      v3 += 16;
      v4 += 16;
    }

    while (v3 < v8);
  }

  v17 = 0;
  v18 = 0;
  switch(v5 & 0xF)
  {
    case 1:
      goto LABEL_23;
    case 2:
      goto LABEL_22;
    case 3:
      goto LABEL_21;
    case 4:
      goto LABEL_20;
    case 5:
      goto LABEL_19;
    case 6:
      goto LABEL_18;
    case 7:
      goto LABEL_17;
    case 8:
      goto LABEL_16;
    case 9:
      goto LABEL_15;
    case 0xA:
      goto LABEL_14;
    case 0xB:
      goto LABEL_13;
    case 0xC:
      goto LABEL_12;
    case 0xD:
      goto LABEL_11;
    case 0xE:
      goto LABEL_10;
    case 0xF:
      *v3 = *v3 + *v4;
      v18 = 1;
LABEL_10:
      v3[v18] = v3[v18] + v4[v18];
      ++v18;
LABEL_11:
      v3[v18] = v3[v18] + v4[v18];
      ++v18;
LABEL_12:
      v3[v18] = v3[v18] + v4[v18];
      ++v18;
LABEL_13:
      v3[v18] = v3[v18] + v4[v18];
      ++v18;
LABEL_14:
      v3[v18] = v3[v18] + v4[v18];
      ++v18;
LABEL_15:
      v3[v18] = v3[v18] + v4[v18];
      ++v18;
LABEL_16:
      v3[v18] = v3[v18] + v4[v18];
      ++v18;
LABEL_17:
      v3[v18] = v3[v18] + v4[v18];
      ++v18;
LABEL_18:
      v3[v18] = v3[v18] + v4[v18];
      ++v18;
LABEL_19:
      v3[v18] = v3[v18] + v4[v18];
      ++v18;
LABEL_20:
      v3[v18] = v3[v18] + v4[v18];
      ++v18;
LABEL_21:
      v3[v18] = v3[v18] + v4[v18];
      ++v18;
LABEL_22:
      v3[v18] = v3[v18] + v4[v18];
      v17 = v18 + 1;
LABEL_23:
      v3[v17] = v3[v17] + v4[v17];
      break;
    default:
      break;
  }

  v19 = *(**(a1 + 56) + 16);

  v19();
  return result;
}

uint64_t sub_135414(void *a1)
{
  *(a1 - 6) = off_2635060;
  *a1 = off_26350C8;
  v2 = a1[4];
  if (v2)
  {
    if (*v2)
    {
      v3 = *v2 - 1;
      *v2 = v3;
      if (!v3)
      {
        if (*(v2 + 16))
        {
          if (*(v2 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    a1[4] = 0;
  }

  *(a1 - 6) = off_26345A0;
  v4 = *(a1 - 4);
  if (v4 && *(a1 - 24) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 - 4) = 0;
  }

  result = *(a1 - 2);
  if (result && *(a1 - 8) == 1)
  {
    result = (*(*result + 8))(result);
    *(a1 - 2) = 0;
  }

  return result;
}

void sub_1355E8(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  *a1 = off_26345A0;
  *(a1 + 8) = *a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (a3)
  {
    v7 = (*(*a3 + 32))(a3) != 17 && (*(*a3 + 32))(a3) != 18;
    *(a1 + 16) = a3;
    *(a1 + 24) = v7;
  }

  if (a4)
  {
    v8 = (*(*a4 + 32))(a4) != 17 && (*(*a4 + 32))(a4) != 18;
    *(a1 + 32) = a4;
    *(a1 + 40) = v8;
  }

  *a1 = off_2635150;
  *(a1 + 48) = off_26351B8;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  operator new();
}

void sub_135C08(_Unwind_Exception *a1)
{
  sub_F5710((v1 + 80));
  sub_12A624(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_135C3C(uint64_t a1)
{
  *a1 = off_2635150;
  *(a1 + 48) = off_26351B8;
  v2 = *(a1 + 80);
  if (v2)
  {
    if (*v2)
    {
      v3 = *v2 - 1;
      *v2 = v3;
      if (!v3)
      {
        if (*(v2 + 16))
        {
          if (*(v2 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 80) = 0;
  }

  *a1 = off_26345A0;
  v4 = *(a1 + 16);
  if (v4 && *(a1 + 24) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 16) = 0;
  }

  v5 = *(a1 + 32);
  if (v5 && *(a1 + 40) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 32) = 0;
  }

  return a1;
}

void sub_135D9C(uint64_t a1)
{
  *a1 = off_2635150;
  *(a1 + 48) = off_26351B8;
  v2 = *(a1 + 80);
  if (v2)
  {
    if (*v2)
    {
      v3 = *v2 - 1;
      *v2 = v3;
      if (!v3)
      {
        if (*(v2 + 16))
        {
          if (*(v2 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 80) = 0;
  }

  *a1 = off_26345A0;
  v4 = *(a1 + 16);
  if (v4 && *(a1 + 24) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 16) = 0;
  }

  v5 = *(a1 + 32);
  if (v5 && *(a1 + 40) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 32) = 0;
  }

  operator delete();
}

double sub_135F1C(uint64_t a1)
{
  if (*(a1 + 72) != 1)
  {
    return NAN;
  }

  (*(**(a1 + 16) + 16))(*(a1 + 16));
  (*(**(a1 + 32) + 16))(*(a1 + 32));
  v3 = *(*(*(**(a1 + 56) + 64))(*(a1 + 56)) + 16);
  v4 = *(*(*(**(a1 + 64) + 64))(*(a1 + 64)) + 16);
  v5 = (*(*a1 + 56))(a1);
  if ((v5 & 0xF) != 0)
  {
    v6 = -16;
  }

  else
  {
    v6 = 0;
  }

  v7 = 8 * (v6 + v5);
  if (v7 >= 1)
  {
    v8 = &v3[v7 / 8];
    do
    {
      v9 = v3[1];
      *v3 = *v3 - *v4;
      v3[1] = v9 - v4[1];
      v10 = v3[3];
      v3[2] = v3[2] - v4[2];
      v3[3] = v10 - v4[3];
      v11 = v3[5];
      v3[4] = v3[4] - v4[4];
      v3[5] = v11 - v4[5];
      v12 = v3[7];
      v3[6] = v3[6] - v4[6];
      v3[7] = v12 - v4[7];
      v13 = v3[9];
      v3[8] = v3[8] - v4[8];
      v3[9] = v13 - v4[9];
      v14 = v3[11];
      v3[10] = v3[10] - v4[10];
      v3[11] = v14 - v4[11];
      v15 = v3[13];
      v3[12] = v3[12] - v4[12];
      v3[13] = v15 - v4[13];
      v16 = v3[15];
      v3[14] = v3[14] - v4[14];
      v3[15] = v16 - v4[15];
      v3 += 16;
      v4 += 16;
    }

    while (v3 < v8);
  }

  v17 = 0;
  v18 = 0;
  switch(v5 & 0xF)
  {
    case 1:
      goto LABEL_23;
    case 2:
      goto LABEL_22;
    case 3:
      goto LABEL_21;
    case 4:
      goto LABEL_20;
    case 5:
      goto LABEL_19;
    case 6:
      goto LABEL_18;
    case 7:
      goto LABEL_17;
    case 8:
      goto LABEL_16;
    case 9:
      goto LABEL_15;
    case 0xA:
      goto LABEL_14;
    case 0xB:
      goto LABEL_13;
    case 0xC:
      goto LABEL_12;
    case 0xD:
      goto LABEL_11;
    case 0xE:
      goto LABEL_10;
    case 0xF:
      *v3 = *v3 - *v4;
      v18 = 1;
LABEL_10:
      v3[v18] = v3[v18] - v4[v18];
      ++v18;
LABEL_11:
      v3[v18] = v3[v18] - v4[v18];
      ++v18;
LABEL_12:
      v3[v18] = v3[v18] - v4[v18];
      ++v18;
LABEL_13:
      v3[v18] = v3[v18] - v4[v18];
      ++v18;
LABEL_14:
      v3[v18] = v3[v18] - v4[v18];
      ++v18;
LABEL_15:
      v3[v18] = v3[v18] - v4[v18];
      ++v18;
LABEL_16:
      v3[v18] = v3[v18] - v4[v18];
      ++v18;
LABEL_17:
      v3[v18] = v3[v18] - v4[v18];
      ++v18;
LABEL_18:
      v3[v18] = v3[v18] - v4[v18];
      ++v18;
LABEL_19:
      v3[v18] = v3[v18] - v4[v18];
      ++v18;
LABEL_20:
      v3[v18] = v3[v18] - v4[v18];
      ++v18;
LABEL_21:
      v3[v18] = v3[v18] - v4[v18];
      ++v18;
LABEL_22:
      v3[v18] = v3[v18] - v4[v18];
      v17 = v18 + 1;
LABEL_23:
      v3[v17] = v3[v17] - v4[v17];
      break;
    default:
      break;
  }

  v19 = *(**(a1 + 56) + 16);

  v19();
  return result;
}

uint64_t sub_13637C(void *a1)
{
  *(a1 - 6) = off_2635150;
  *a1 = off_26351B8;
  v2 = a1[4];
  if (v2)
  {
    if (*v2)
    {
      v3 = *v2 - 1;
      *v2 = v3;
      if (!v3)
      {
        if (*(v2 + 16))
        {
          if (*(v2 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    a1[4] = 0;
  }

  *(a1 - 6) = off_26345A0;
  v4 = *(a1 - 4);
  if (v4 && *(a1 - 24) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 - 4) = 0;
  }

  result = *(a1 - 2);
  if (result && *(a1 - 8) == 1)
  {
    result = (*(*result + 8))(result);
    *(a1 - 2) = 0;
  }

  return result;
}

void sub_136550(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  *a1 = off_26345A0;
  *(a1 + 8) = *a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (a3)
  {
    v7 = (*(*a3 + 32))(a3) != 17 && (*(*a3 + 32))(a3) != 18;
    *(a1 + 16) = a3;
    *(a1 + 24) = v7;
  }

  if (a4)
  {
    v8 = (*(*a4 + 32))(a4) != 17 && (*(*a4 + 32))(a4) != 18;
    *(a1 + 32) = a4;
    *(a1 + 40) = v8;
  }

  *a1 = off_2635240;
  *(a1 + 48) = off_26352A8;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  operator new();
}

void sub_136B70(_Unwind_Exception *a1)
{
  sub_F5710((v1 + 80));
  sub_12A624(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_136BA4(uint64_t a1)
{
  *a1 = off_2635240;
  *(a1 + 48) = off_26352A8;
  v2 = *(a1 + 80);
  if (v2)
  {
    if (*v2)
    {
      v3 = *v2 - 1;
      *v2 = v3;
      if (!v3)
      {
        if (*(v2 + 16))
        {
          if (*(v2 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 80) = 0;
  }

  *a1 = off_26345A0;
  v4 = *(a1 + 16);
  if (v4 && *(a1 + 24) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 16) = 0;
  }

  v5 = *(a1 + 32);
  if (v5 && *(a1 + 40) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 32) = 0;
  }

  return a1;
}

void sub_136D04(uint64_t a1)
{
  *a1 = off_2635240;
  *(a1 + 48) = off_26352A8;
  v2 = *(a1 + 80);
  if (v2)
  {
    if (*v2)
    {
      v3 = *v2 - 1;
      *v2 = v3;
      if (!v3)
      {
        if (*(v2 + 16))
        {
          if (*(v2 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 80) = 0;
  }

  *a1 = off_26345A0;
  v4 = *(a1 + 16);
  if (v4 && *(a1 + 24) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 16) = 0;
  }

  v5 = *(a1 + 32);
  if (v5 && *(a1 + 40) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 32) = 0;
  }

  operator delete();
}

double sub_136E84(uint64_t a1)
{
  if (*(a1 + 72) != 1)
  {
    return NAN;
  }

  (*(**(a1 + 16) + 16))(*(a1 + 16));
  (*(**(a1 + 32) + 16))(*(a1 + 32));
  v3 = *(*(*(**(a1 + 56) + 64))(*(a1 + 56)) + 16);
  v4 = *(*(*(**(a1 + 64) + 64))(*(a1 + 64)) + 16);
  v5 = (*(*a1 + 56))(a1);
  if ((v5 & 0xF) != 0)
  {
    v6 = -16;
  }

  else
  {
    v6 = 0;
  }

  v7 = 8 * (v6 + v5);
  if (v7 >= 1)
  {
    v8 = &v3[v7 / 8];
    do
    {
      v9 = v3[1];
      *v3 = *v3 * *v4;
      v3[1] = v9 * v4[1];
      v10 = v3[3];
      v3[2] = v3[2] * v4[2];
      v3[3] = v10 * v4[3];
      v11 = v3[5];
      v3[4] = v3[4] * v4[4];
      v3[5] = v11 * v4[5];
      v12 = v3[7];
      v3[6] = v3[6] * v4[6];
      v3[7] = v12 * v4[7];
      v13 = v3[9];
      v3[8] = v3[8] * v4[8];
      v3[9] = v13 * v4[9];
      v14 = v3[11];
      v3[10] = v3[10] * v4[10];
      v3[11] = v14 * v4[11];
      v15 = v3[13];
      v3[12] = v3[12] * v4[12];
      v3[13] = v15 * v4[13];
      v16 = v3[15];
      v3[14] = v3[14] * v4[14];
      v3[15] = v16 * v4[15];
      v3 += 16;
      v4 += 16;
    }

    while (v3 < v8);
  }

  v17 = 0;
  v18 = 0;
  switch(v5 & 0xF)
  {
    case 1:
      goto LABEL_23;
    case 2:
      goto LABEL_22;
    case 3:
      goto LABEL_21;
    case 4:
      goto LABEL_20;
    case 5:
      goto LABEL_19;
    case 6:
      goto LABEL_18;
    case 7:
      goto LABEL_17;
    case 8:
      goto LABEL_16;
    case 9:
      goto LABEL_15;
    case 0xA:
      goto LABEL_14;
    case 0xB:
      goto LABEL_13;
    case 0xC:
      goto LABEL_12;
    case 0xD:
      goto LABEL_11;
    case 0xE:
      goto LABEL_10;
    case 0xF:
      *v3 = *v3 * *v4;
      v18 = 1;
LABEL_10:
      v3[v18] = v3[v18] * v4[v18];
      ++v18;
LABEL_11:
      v3[v18] = v3[v18] * v4[v18];
      ++v18;
LABEL_12:
      v3[v18] = v3[v18] * v4[v18];
      ++v18;
LABEL_13:
      v3[v18] = v3[v18] * v4[v18];
      ++v18;
LABEL_14:
      v3[v18] = v3[v18] * v4[v18];
      ++v18;
LABEL_15:
      v3[v18] = v3[v18] * v4[v18];
      ++v18;
LABEL_16:
      v3[v18] = v3[v18] * v4[v18];
      ++v18;
LABEL_17:
      v3[v18] = v3[v18] * v4[v18];
      ++v18;
LABEL_18:
      v3[v18] = v3[v18] * v4[v18];
      ++v18;
LABEL_19:
      v3[v18] = v3[v18] * v4[v18];
      ++v18;
LABEL_20:
      v3[v18] = v3[v18] * v4[v18];
      ++v18;
LABEL_21:
      v3[v18] = v3[v18] * v4[v18];
      ++v18;
LABEL_22:
      v3[v18] = v3[v18] * v4[v18];
      v17 = v18 + 1;
LABEL_23:
      v3[v17] = v3[v17] * v4[v17];
      break;
    default:
      break;
  }

  v19 = *(**(a1 + 56) + 16);

  v19();
  return result;
}

uint64_t sub_1372E4(void *a1)
{
  *(a1 - 6) = off_2635240;
  *a1 = off_26352A8;
  v2 = a1[4];
  if (v2)
  {
    if (*v2)
    {
      v3 = *v2 - 1;
      *v2 = v3;
      if (!v3)
      {
        if (*(v2 + 16))
        {
          if (*(v2 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    a1[4] = 0;
  }

  *(a1 - 6) = off_26345A0;
  v4 = *(a1 - 4);
  if (v4 && *(a1 - 24) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 - 4) = 0;
  }

  result = *(a1 - 2);
  if (result && *(a1 - 8) == 1)
  {
    result = (*(*result + 8))(result);
    *(a1 - 2) = 0;
  }

  return result;
}

void sub_1374B8(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  *a1 = off_26345A0;
  *(a1 + 8) = *a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (a3)
  {
    v7 = (*(*a3 + 32))(a3) != 17 && (*(*a3 + 32))(a3) != 18;
    *(a1 + 16) = a3;
    *(a1 + 24) = v7;
  }

  if (a4)
  {
    v8 = (*(*a4 + 32))(a4) != 17 && (*(*a4 + 32))(a4) != 18;
    *(a1 + 32) = a4;
    *(a1 + 40) = v8;
  }

  *a1 = off_2635330;
  *(a1 + 48) = off_2635398;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  operator new();
}

void sub_137AD8(_Unwind_Exception *a1)
{
  sub_F5710((v1 + 80));
  sub_12A624(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_137B0C(uint64_t a1)
{
  *a1 = off_2635330;
  *(a1 + 48) = off_2635398;
  v2 = *(a1 + 80);
  if (v2)
  {
    if (*v2)
    {
      v3 = *v2 - 1;
      *v2 = v3;
      if (!v3)
      {
        if (*(v2 + 16))
        {
          if (*(v2 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 80) = 0;
  }

  *a1 = off_26345A0;
  v4 = *(a1 + 16);
  if (v4 && *(a1 + 24) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 16) = 0;
  }

  v5 = *(a1 + 32);
  if (v5 && *(a1 + 40) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 32) = 0;
  }

  return a1;
}

void sub_137C6C(uint64_t a1)
{
  *a1 = off_2635330;
  *(a1 + 48) = off_2635398;
  v2 = *(a1 + 80);
  if (v2)
  {
    if (*v2)
    {
      v3 = *v2 - 1;
      *v2 = v3;
      if (!v3)
      {
        if (*(v2 + 16))
        {
          if (*(v2 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 80) = 0;
  }

  *a1 = off_26345A0;
  v4 = *(a1 + 16);
  if (v4 && *(a1 + 24) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 16) = 0;
  }

  v5 = *(a1 + 32);
  if (v5 && *(a1 + 40) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 32) = 0;
  }

  operator delete();
}

double sub_137DEC(uint64_t a1)
{
  if (*(a1 + 72) != 1)
  {
    return NAN;
  }

  (*(**(a1 + 16) + 16))(*(a1 + 16));
  (*(**(a1 + 32) + 16))(*(a1 + 32));
  v3 = *(*(*(**(a1 + 56) + 64))(*(a1 + 56)) + 16);
  v4 = *(*(*(**(a1 + 64) + 64))(*(a1 + 64)) + 16);
  v5 = (*(*a1 + 56))(a1);
  if ((v5 & 0xF) != 0)
  {
    v6 = -16;
  }

  else
  {
    v6 = 0;
  }

  v7 = 8 * (v6 + v5);
  if (v7 >= 1)
  {
    v8 = &v3[v7 / 8];
    do
    {
      v9 = v3[1];
      *v3 = *v3 / *v4;
      v3[1] = v9 / v4[1];
      v10 = v3[3];
      v3[2] = v3[2] / v4[2];
      v3[3] = v10 / v4[3];
      v11 = v3[5];
      v3[4] = v3[4] / v4[4];
      v3[5] = v11 / v4[5];
      v12 = v3[7];
      v3[6] = v3[6] / v4[6];
      v3[7] = v12 / v4[7];
      v13 = v3[9];
      v3[8] = v3[8] / v4[8];
      v3[9] = v13 / v4[9];
      v14 = v3[11];
      v3[10] = v3[10] / v4[10];
      v3[11] = v14 / v4[11];
      v15 = v3[13];
      v3[12] = v3[12] / v4[12];
      v3[13] = v15 / v4[13];
      v16 = v3[15];
      v3[14] = v3[14] / v4[14];
      v3[15] = v16 / v4[15];
      v3 += 16;
      v4 += 16;
    }

    while (v3 < v8);
  }

  v17 = 0;
  v18 = 0;
  switch(v5 & 0xF)
  {
    case 1:
      goto LABEL_23;
    case 2:
      goto LABEL_22;
    case 3:
      goto LABEL_21;
    case 4:
      goto LABEL_20;
    case 5:
      goto LABEL_19;
    case 6:
      goto LABEL_18;
    case 7:
      goto LABEL_17;
    case 8:
      goto LABEL_16;
    case 9:
      goto LABEL_15;
    case 0xA:
      goto LABEL_14;
    case 0xB:
      goto LABEL_13;
    case 0xC:
      goto LABEL_12;
    case 0xD:
      goto LABEL_11;
    case 0xE:
      goto LABEL_10;
    case 0xF:
      *v3 = *v3 / *v4;
      v18 = 1;
LABEL_10:
      v3[v18] = v3[v18] / v4[v18];
      ++v18;
LABEL_11:
      v3[v18] = v3[v18] / v4[v18];
      ++v18;
LABEL_12:
      v3[v18] = v3[v18] / v4[v18];
      ++v18;
LABEL_13:
      v3[v18] = v3[v18] / v4[v18];
      ++v18;
LABEL_14:
      v3[v18] = v3[v18] / v4[v18];
      ++v18;
LABEL_15:
      v3[v18] = v3[v18] / v4[v18];
      ++v18;
LABEL_16:
      v3[v18] = v3[v18] / v4[v18];
      ++v18;
LABEL_17:
      v3[v18] = v3[v18] / v4[v18];
      ++v18;
LABEL_18:
      v3[v18] = v3[v18] / v4[v18];
      ++v18;
LABEL_19:
      v3[v18] = v3[v18] / v4[v18];
      ++v18;
LABEL_20:
      v3[v18] = v3[v18] / v4[v18];
      ++v18;
LABEL_21:
      v3[v18] = v3[v18] / v4[v18];
      ++v18;
LABEL_22:
      v3[v18] = v3[v18] / v4[v18];
      v17 = v18 + 1;
LABEL_23:
      v3[v17] = v3[v17] / v4[v17];
      break;
    default:
      break;
  }

  v19 = *(**(a1 + 56) + 16);

  v19();
  return result;
}

uint64_t sub_13824C(void *a1)
{
  *(a1 - 6) = off_2635330;
  *a1 = off_2635398;
  v2 = a1[4];
  if (v2)
  {
    if (*v2)
    {
      v3 = *v2 - 1;
      *v2 = v3;
      if (!v3)
      {
        if (*(v2 + 16))
        {
          if (*(v2 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    a1[4] = 0;
  }

  *(a1 - 6) = off_26345A0;
  v4 = *(a1 - 4);
  if (v4 && *(a1 - 24) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 - 4) = 0;
  }

  result = *(a1 - 2);
  if (result && *(a1 - 8) == 1)
  {
    result = (*(*result + 8))(result);
    *(a1 - 2) = 0;
  }

  return result;
}

void sub_138420(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  *a1 = off_26345A0;
  *(a1 + 8) = *a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (a3)
  {
    v7 = (*(*a3 + 32))(a3) != 17 && (*(*a3 + 32))(a3) != 18;
    *(a1 + 16) = a3;
    *(a1 + 24) = v7;
  }

  if (a4)
  {
    v8 = (*(*a4 + 32))(a4) != 17 && (*(*a4 + 32))(a4) != 18;
    *(a1 + 32) = a4;
    *(a1 + 40) = v8;
  }

  *a1 = off_2635420;
  *(a1 + 48) = off_2635488;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  operator new();
}

void sub_138A40(_Unwind_Exception *a1)
{
  sub_F5710((v1 + 80));
  sub_12A624(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_138A74(uint64_t a1)
{
  *a1 = off_2635420;
  *(a1 + 48) = off_2635488;
  v2 = *(a1 + 80);
  if (v2)
  {
    if (*v2)
    {
      v3 = *v2 - 1;
      *v2 = v3;
      if (!v3)
      {
        if (*(v2 + 16))
        {
          if (*(v2 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 80) = 0;
  }

  *a1 = off_26345A0;
  v4 = *(a1 + 16);
  if (v4 && *(a1 + 24) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 16) = 0;
  }

  v5 = *(a1 + 32);
  if (v5 && *(a1 + 40) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 32) = 0;
  }

  return a1;
}

void sub_138BD4(uint64_t a1)
{
  *a1 = off_2635420;
  *(a1 + 48) = off_2635488;
  v2 = *(a1 + 80);
  if (v2)
  {
    if (*v2)
    {
      v3 = *v2 - 1;
      *v2 = v3;
      if (!v3)
      {
        if (*(v2 + 16))
        {
          if (*(v2 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 80) = 0;
  }

  *a1 = off_26345A0;
  v4 = *(a1 + 16);
  if (v4 && *(a1 + 24) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 16) = 0;
  }

  v5 = *(a1 + 32);
  if (v5 && *(a1 + 40) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 32) = 0;
  }

  operator delete();
}

double sub_138D54(uint64_t a1)
{
  if (*(a1 + 72) != 1)
  {
    return NAN;
  }

  (*(**(a1 + 16) + 16))(*(a1 + 16));
  (*(**(a1 + 32) + 16))(*(a1 + 32));
  v3 = *(*(*(**(a1 + 56) + 64))(*(a1 + 56)) + 16);
  v4 = *(*(*(**(a1 + 64) + 64))(*(a1 + 64)) + 16);
  v5 = (*(*a1 + 56))(a1);
  v6 = v5 & 0xF;
  if ((v5 & 0xF) != 0)
  {
    v7 = -16;
  }

  else
  {
    v7 = 0;
  }

  v8 = 8 * (v7 + v5);
  if (v8 >= 1)
  {
    v9 = &v3[v8 / 8];
    do
    {
      *v3 = fmod(*v3, *v4);
      v3[1] = fmod(v3[1], v4[1]);
      v3[2] = fmod(v3[2], v4[2]);
      v3[3] = fmod(v3[3], v4[3]);
      v3[4] = fmod(v3[4], v4[4]);
      v3[5] = fmod(v3[5], v4[5]);
      v3[6] = fmod(v3[6], v4[6]);
      v3[7] = fmod(v3[7], v4[7]);
      v3[8] = fmod(v3[8], v4[8]);
      v3[9] = fmod(v3[9], v4[9]);
      v3[10] = fmod(v3[10], v4[10]);
      v3[11] = fmod(v3[11], v4[11]);
      v3[12] = fmod(v3[12], v4[12]);
      v3[13] = fmod(v3[13], v4[13]);
      v3[14] = fmod(v3[14], v4[14]);
      v3[15] = fmod(v3[15], v4[15]);
      v3 += 16;
      v4 += 16;
    }

    while (v3 < v9);
  }

  v10 = 0;
  v11 = 0;
  switch(v6)
  {
    case 1:
      goto LABEL_23;
    case 2:
      goto LABEL_22;
    case 3:
      goto LABEL_21;
    case 4:
      goto LABEL_20;
    case 5:
      goto LABEL_19;
    case 6:
      goto LABEL_18;
    case 7:
      goto LABEL_17;
    case 8:
      goto LABEL_16;
    case 9:
      goto LABEL_15;
    case 10:
      goto LABEL_14;
    case 11:
      goto LABEL_13;
    case 12:
      goto LABEL_12;
    case 13:
      goto LABEL_11;
    case 14:
      goto LABEL_10;
    case 15:
      *v3 = fmod(*v3, *v4);
      v11 = 1;
LABEL_10:
      v3[v11] = fmod(v3[v11], v4[v11]);
      ++v11;
LABEL_11:
      v3[v11] = fmod(v3[v11], v4[v11]);
      ++v11;
LABEL_12:
      v3[v11] = fmod(v3[v11], v4[v11]);
      ++v11;
LABEL_13:
      v3[v11] = fmod(v3[v11], v4[v11]);
      ++v11;
LABEL_14:
      v3[v11] = fmod(v3[v11], v4[v11]);
      ++v11;
LABEL_15:
      v3[v11] = fmod(v3[v11], v4[v11]);
      ++v11;
LABEL_16:
      v3[v11] = fmod(v3[v11], v4[v11]);
      ++v11;
LABEL_17:
      v3[v11] = fmod(v3[v11], v4[v11]);
      ++v11;
LABEL_18:
      v3[v11] = fmod(v3[v11], v4[v11]);
      ++v11;
LABEL_19:
      v3[v11] = fmod(v3[v11], v4[v11]);
      ++v11;
LABEL_20:
      v3[v11] = fmod(v3[v11], v4[v11]);
      ++v11;
LABEL_21:
      v3[v11] = fmod(v3[v11], v4[v11]);
      ++v11;
LABEL_22:
      v3[v11] = fmod(v3[v11], v4[v11]);
      v10 = v11 + 1;
LABEL_23:
      v3[v10] = fmod(v3[v10], v4[v10]);
      break;
    default:
      break;
  }

  v12 = *(**(a1 + 56) + 16);

  v12();
  return result;
}

uint64_t sub_1391DC(void *a1)
{
  *(a1 - 6) = off_2635420;
  *a1 = off_2635488;
  v2 = a1[4];
  if (v2)
  {
    if (*v2)
    {
      v3 = *v2 - 1;
      *v2 = v3;
      if (!v3)
      {
        if (*(v2 + 16))
        {
          if (*(v2 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    a1[4] = 0;
  }

  *(a1 - 6) = off_26345A0;
  v4 = *(a1 - 4);
  if (v4 && *(a1 - 24) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 - 4) = 0;
  }

  result = *(a1 - 2);
  if (result && *(a1 - 8) == 1)
  {
    result = (*(*result + 8))(result);
    *(a1 - 2) = 0;
  }

  return result;
}

void sub_1393B0(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  *a1 = off_26345A0;
  *(a1 + 8) = *a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (a3)
  {
    v7 = (*(*a3 + 32))(a3) != 17 && (*(*a3 + 32))(a3) != 18;
    *(a1 + 16) = a3;
    *(a1 + 24) = v7;
  }

  if (a4)
  {
    v8 = (*(*a4 + 32))(a4) != 17 && (*(*a4 + 32))(a4) != 18;
    *(a1 + 32) = a4;
    *(a1 + 40) = v8;
  }

  *a1 = off_2635510;
  *(a1 + 48) = off_2635578;
  *(a1 + 56) = 0;
  operator new();
}

void sub_1396D8(_Unwind_Exception *a1)
{
  sub_F5710((v1 + 64));
  sub_12A624(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1396F4(uint64_t a1)
{
  *a1 = off_2635510;
  *(a1 + 48) = off_2635578;
  v2 = *(a1 + 64);
  if (v2)
  {
    if (*v2)
    {
      v3 = *v2 - 1;
      *v2 = v3;
      if (!v3)
      {
        if (*(v2 + 16))
        {
          if (*(v2 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 64) = 0;
  }

  *a1 = off_26345A0;
  v4 = *(a1 + 16);
  if (v4 && *(a1 + 24) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 16) = 0;
  }

  v5 = *(a1 + 32);
  if (v5 && *(a1 + 40) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 32) = 0;
  }

  return a1;
}

void sub_139854(uint64_t a1)
{
  *a1 = off_2635510;
  *(a1 + 48) = off_2635578;
  v2 = *(a1 + 64);
  if (v2)
  {
    if (*v2)
    {
      v3 = *v2 - 1;
      *v2 = v3;
      if (!v3)
      {
        if (*(v2 + 16))
        {
          if (*(v2 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 64) = 0;
  }

  *a1 = off_26345A0;
  v4 = *(a1 + 16);
  if (v4 && *(a1 + 24) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 16) = 0;
  }

  v5 = *(a1 + 32);
  if (v5 && *(a1 + 40) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 32) = 0;
  }

  operator delete();
}

uint64_t sub_1399D4(uint64_t result)
{
  if (*(result + 56))
  {
    v1 = result;
    v14 = (*(**(result + 32) + 16))(*(result + 32));
    v2 = *(*((*v1)[9])(v1) + 16);
    v3 = ((*v1)[7])(v1);
    if ((v3 & 0xF) != 0)
    {
      v4 = -16;
    }

    else
    {
      v4 = 0;
    }

    v5 = 8 * (v4 + v3);
    if (v5 < 1)
    {
      v7 = *&v14;
    }

    else
    {
      v6 = (v2 + v5);
      v7 = *&v14;
      v8 = vdupq_lane_s64(v14, 0);
      do
      {
        v9 = vaddq_f64(v8, v2[1]);
        *v2 = vaddq_f64(v8, *v2);
        v2[1] = v9;
        v10 = vaddq_f64(v8, v2[3]);
        v2[2] = vaddq_f64(v8, v2[2]);
        v2[3] = v10;
        v11 = vaddq_f64(v8, v2[5]);
        v2[4] = vaddq_f64(v8, v2[4]);
        v2[5] = v11;
        v12 = vaddq_f64(v8, v2[7]);
        v2[6] = vaddq_f64(v8, v2[6]);
        v2[7] = v12;
        v2 += 8;
      }

      while (v2 < v6);
    }

    switch(v3 & 0xF)
    {
      case 1:
        goto LABEL_26;
      case 2:
        goto LABEL_25;
      case 3:
        goto LABEL_24;
      case 4:
        goto LABEL_23;
      case 5:
        goto LABEL_22;
      case 6:
        goto LABEL_21;
      case 7:
        goto LABEL_20;
      case 8:
        goto LABEL_19;
      case 9:
        goto LABEL_18;
      case 0xA:
        goto LABEL_17;
      case 0xB:
        goto LABEL_16;
      case 0xC:
        goto LABEL_15;
      case 0xD:
        goto LABEL_14;
      case 0xE:
        goto LABEL_13;
      case 0xF:
        v2->f64[0] = v7 + v2->f64[0];
        v2 = (v2 + 8);
LABEL_13:
        v2->f64[0] = v7 + v2->f64[0];
        v2 = (v2 + 8);
LABEL_14:
        v2->f64[0] = v7 + v2->f64[0];
        v2 = (v2 + 8);
LABEL_15:
        v2->f64[0] = v7 + v2->f64[0];
        v2 = (v2 + 8);
LABEL_16:
        v2->f64[0] = v7 + v2->f64[0];
        v2 = (v2 + 8);
LABEL_17:
        v2->f64[0] = v7 + v2->f64[0];
        v2 = (v2 + 8);
LABEL_18:
        v2->f64[0] = v7 + v2->f64[0];
        v2 = (v2 + 8);
LABEL_19:
        v2->f64[0] = v7 + v2->f64[0];
        v2 = (v2 + 8);
LABEL_20:
        v2->f64[0] = v7 + v2->f64[0];
        v2 = (v2 + 8);
LABEL_21:
        v2->f64[0] = v7 + v2->f64[0];
        v2 = (v2 + 8);
LABEL_22:
        v2->f64[0] = v7 + v2->f64[0];
        v2 = (v2 + 8);
LABEL_23:
        v2->f64[0] = v7 + v2->f64[0];
        v2 = (v2 + 8);
LABEL_24:
        v2->f64[0] = v7 + v2->f64[0];
        v2 = (v2 + 8);
LABEL_25:
        v2->f64[0] = v7 + v2->f64[0];
        v2 = (v2 + 8);
LABEL_26:
        v2->f64[0] = v7 + v2->f64[0];
        break;
      default:
        break;
    }

    v13 = *(*v1[7] + 16);

    return v13();
  }

  return result;
}

uint64_t sub_139CCC(void *a1)
{
  *(a1 - 6) = off_2635510;
  *a1 = off_2635578;
  v2 = a1[2];
  if (v2)
  {
    if (*v2)
    {
      v3 = *v2 - 1;
      *v2 = v3;
      if (!v3)
      {
        if (*(v2 + 16))
        {
          if (*(v2 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    a1[2] = 0;
  }

  *(a1 - 6) = off_26345A0;
  v4 = *(a1 - 4);
  if (v4 && *(a1 - 24) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 - 4) = 0;
  }

  result = *(a1 - 2);
  if (result && *(a1 - 8) == 1)
  {
    result = (*(*result + 8))(result);
    *(a1 - 2) = 0;
  }

  return result;
}

void sub_139EA0(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  *a1 = off_26345A0;
  *(a1 + 8) = *a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (a3)
  {
    v7 = (*(*a3 + 32))(a3) != 17 && (*(*a3 + 32))(a3) != 18;
    *(a1 + 16) = a3;
    *(a1 + 24) = v7;
  }

  if (a4)
  {
    v8 = (*(*a4 + 32))(a4) != 17 && (*(*a4 + 32))(a4) != 18;
    *(a1 + 32) = a4;
    *(a1 + 40) = v8;
  }

  *a1 = off_2635600;
  *(a1 + 48) = off_2635668;
  *(a1 + 56) = 0;
  operator new();
}

void sub_13A1C8(_Unwind_Exception *a1)
{
  sub_F5710((v1 + 64));
  sub_12A624(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_13A1E4(uint64_t a1)
{
  *a1 = off_2635600;
  *(a1 + 48) = off_2635668;
  v2 = *(a1 + 64);
  if (v2)
  {
    if (*v2)
    {
      v3 = *v2 - 1;
      *v2 = v3;
      if (!v3)
      {
        if (*(v2 + 16))
        {
          if (*(v2 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 64) = 0;
  }

  *a1 = off_26345A0;
  v4 = *(a1 + 16);
  if (v4 && *(a1 + 24) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 16) = 0;
  }

  v5 = *(a1 + 32);
  if (v5 && *(a1 + 40) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 32) = 0;
  }

  return a1;
}

void sub_13A344(uint64_t a1)
{
  *a1 = off_2635600;
  *(a1 + 48) = off_2635668;
  v2 = *(a1 + 64);
  if (v2)
  {
    if (*v2)
    {
      v3 = *v2 - 1;
      *v2 = v3;
      if (!v3)
      {
        if (*(v2 + 16))
        {
          if (*(v2 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 64) = 0;
  }

  *a1 = off_26345A0;
  v4 = *(a1 + 16);
  if (v4 && *(a1 + 24) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 16) = 0;
  }

  v5 = *(a1 + 32);
  if (v5 && *(a1 + 40) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 32) = 0;
  }

  operator delete();
}

uint64_t sub_13A4C4(uint64_t result)
{
  if (*(result + 56))
  {
    v1 = result;
    v14 = (*(**(result + 32) + 16))(*(result + 32));
    v2 = *(*((*v1)[9])(v1) + 16);
    v3 = ((*v1)[7])(v1);
    if ((v3 & 0xF) != 0)
    {
      v4 = -16;
    }

    else
    {
      v4 = 0;
    }

    v5 = 8 * (v4 + v3);
    if (v5 < 1)
    {
      v7 = *&v14;
    }

    else
    {
      v6 = (v2 + v5);
      v7 = *&v14;
      v8 = vdupq_lane_s64(v14, 0);
      do
      {
        v9 = vsubq_f64(v2[1], v8);
        *v2 = vsubq_f64(*v2, v8);
        v2[1] = v9;
        v10 = vsubq_f64(v2[3], v8);
        v2[2] = vsubq_f64(v2[2], v8);
        v2[3] = v10;
        v11 = vsubq_f64(v2[5], v8);
        v2[4] = vsubq_f64(v2[4], v8);
        v2[5] = v11;
        v12 = vsubq_f64(v2[7], v8);
        v2[6] = vsubq_f64(v2[6], v8);
        v2[7] = v12;
        v2 += 8;
      }

      while (v2 < v6);
    }

    switch(v3 & 0xF)
    {
      case 1:
        goto LABEL_26;
      case 2:
        goto LABEL_25;
      case 3:
        goto LABEL_24;
      case 4:
        goto LABEL_23;
      case 5:
        goto LABEL_22;
      case 6:
        goto LABEL_21;
      case 7:
        goto LABEL_20;
      case 8:
        goto LABEL_19;
      case 9:
        goto LABEL_18;
      case 0xA:
        goto LABEL_17;
      case 0xB:
        goto LABEL_16;
      case 0xC:
        goto LABEL_15;
      case 0xD:
        goto LABEL_14;
      case 0xE:
        goto LABEL_13;
      case 0xF:
        v2->f64[0] = v2->f64[0] - v7;
        v2 = (v2 + 8);
LABEL_13:
        v2->f64[0] = v2->f64[0] - v7;
        v2 = (v2 + 8);
LABEL_14:
        v2->f64[0] = v2->f64[0] - v7;
        v2 = (v2 + 8);
LABEL_15:
        v2->f64[0] = v2->f64[0] - v7;
        v2 = (v2 + 8);
LABEL_16:
        v2->f64[0] = v2->f64[0] - v7;
        v2 = (v2 + 8);
LABEL_17:
        v2->f64[0] = v2->f64[0] - v7;
        v2 = (v2 + 8);
LABEL_18:
        v2->f64[0] = v2->f64[0] - v7;
        v2 = (v2 + 8);
LABEL_19:
        v2->f64[0] = v2->f64[0] - v7;
        v2 = (v2 + 8);
LABEL_20:
        v2->f64[0] = v2->f64[0] - v7;
        v2 = (v2 + 8);
LABEL_21:
        v2->f64[0] = v2->f64[0] - v7;
        v2 = (v2 + 8);
LABEL_22:
        v2->f64[0] = v2->f64[0] - v7;
        v2 = (v2 + 8);
LABEL_23:
        v2->f64[0] = v2->f64[0] - v7;
        v2 = (v2 + 8);
LABEL_24:
        v2->f64[0] = v2->f64[0] - v7;
        v2 = (v2 + 8);
LABEL_25:
        v2->f64[0] = v2->f64[0] - v7;
        v2 = (v2 + 8);
LABEL_26:
        v2->f64[0] = v2->f64[0] - v7;
        break;
      default:
        break;
    }

    v13 = *(*v1[7] + 16);

    return v13();
  }

  return result;
}

uint64_t sub_13A7BC(void *a1)
{
  *(a1 - 6) = off_2635600;
  *a1 = off_2635668;
  v2 = a1[2];
  if (v2)
  {
    if (*v2)
    {
      v3 = *v2 - 1;
      *v2 = v3;
      if (!v3)
      {
        if (*(v2 + 16))
        {
          if (*(v2 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    a1[2] = 0;
  }

  *(a1 - 6) = off_26345A0;
  v4 = *(a1 - 4);
  if (v4 && *(a1 - 24) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 - 4) = 0;
  }

  result = *(a1 - 2);
  if (result && *(a1 - 8) == 1)
  {
    result = (*(*result + 8))(result);
    *(a1 - 2) = 0;
  }

  return result;
}

void sub_13A990(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  *a1 = off_26345A0;
  *(a1 + 8) = *a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (a3)
  {
    v7 = (*(*a3 + 32))(a3) != 17 && (*(*a3 + 32))(a3) != 18;
    *(a1 + 16) = a3;
    *(a1 + 24) = v7;
  }

  if (a4)
  {
    v8 = (*(*a4 + 32))(a4) != 17 && (*(*a4 + 32))(a4) != 18;
    *(a1 + 32) = a4;
    *(a1 + 40) = v8;
  }

  *a1 = off_26356F0;
  *(a1 + 48) = off_2635758;
  *(a1 + 56) = 0;
  operator new();
}

void sub_13ACB8(_Unwind_Exception *a1)
{
  sub_F5710((v1 + 64));
  sub_12A624(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_13ACD4(uint64_t a1)
{
  *a1 = off_26356F0;
  *(a1 + 48) = off_2635758;
  v2 = *(a1 + 64);
  if (v2)
  {
    if (*v2)
    {
      v3 = *v2 - 1;
      *v2 = v3;
      if (!v3)
      {
        if (*(v2 + 16))
        {
          if (*(v2 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 64) = 0;
  }

  *a1 = off_26345A0;
  v4 = *(a1 + 16);
  if (v4 && *(a1 + 24) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 16) = 0;
  }

  v5 = *(a1 + 32);
  if (v5 && *(a1 + 40) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 32) = 0;
  }

  return a1;
}

void sub_13AE34(uint64_t a1)
{
  *a1 = off_26356F0;
  *(a1 + 48) = off_2635758;
  v2 = *(a1 + 64);
  if (v2)
  {
    if (*v2)
    {
      v3 = *v2 - 1;
      *v2 = v3;
      if (!v3)
      {
        if (*(v2 + 16))
        {
          if (*(v2 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 64) = 0;
  }

  *a1 = off_26345A0;
  v4 = *(a1 + 16);
  if (v4 && *(a1 + 24) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 16) = 0;
  }

  v5 = *(a1 + 32);
  if (v5 && *(a1 + 40) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 32) = 0;
  }

  operator delete();
}

uint64_t sub_13AFB4(uint64_t result)
{
  if (*(result + 56))
  {
    v1 = result;
    v13 = (*(**(result + 32) + 16))(*(result + 32));
    v2 = *(*((*v1)[9])(v1) + 16);
    v3 = ((*v1)[7])(v1);
    if ((v3 & 0xF) != 0)
    {
      v4 = -16;
    }

    else
    {
      v4 = 0;
    }

    v5 = 8 * (v4 + v3);
    if (v5 < 1)
    {
      v7 = v13;
    }

    else
    {
      v6 = (v2 + v5);
      v7 = v13;
      do
      {
        v8 = vmulq_n_f64(v2[1], v13);
        *v2 = vmulq_n_f64(*v2, v13);
        v2[1] = v8;
        v9 = vmulq_n_f64(v2[3], v13);
        v2[2] = vmulq_n_f64(v2[2], v13);
        v2[3] = v9;
        v10 = vmulq_n_f64(v2[5], v13);
        v2[4] = vmulq_n_f64(v2[4], v13);
        v2[5] = v10;
        v11 = vmulq_n_f64(v2[7], v13);
        v2[6] = vmulq_n_f64(v2[6], v13);
        v2[7] = v11;
        v2 += 8;
      }

      while (v2 < v6);
    }

    switch(v3 & 0xF)
    {
      case 1:
        goto LABEL_26;
      case 2:
        goto LABEL_25;
      case 3:
        goto LABEL_24;
      case 4:
        goto LABEL_23;
      case 5:
        goto LABEL_22;
      case 6:
        goto LABEL_21;
      case 7:
        goto LABEL_20;
      case 8:
        goto LABEL_19;
      case 9:
        goto LABEL_18;
      case 0xA:
        goto LABEL_17;
      case 0xB:
        goto LABEL_16;
      case 0xC:
        goto LABEL_15;
      case 0xD:
        goto LABEL_14;
      case 0xE:
        goto LABEL_13;
      case 0xF:
        v2->f64[0] = v7 * v2->f64[0];
        v2 = (v2 + 8);
LABEL_13:
        v2->f64[0] = v7 * v2->f64[0];
        v2 = (v2 + 8);
LABEL_14:
        v2->f64[0] = v7 * v2->f64[0];
        v2 = (v2 + 8);
LABEL_15:
        v2->f64[0] = v7 * v2->f64[0];
        v2 = (v2 + 8);
LABEL_16:
        v2->f64[0] = v7 * v2->f64[0];
        v2 = (v2 + 8);
LABEL_17:
        v2->f64[0] = v7 * v2->f64[0];
        v2 = (v2 + 8);
LABEL_18:
        v2->f64[0] = v7 * v2->f64[0];
        v2 = (v2 + 8);
LABEL_19:
        v2->f64[0] = v7 * v2->f64[0];
        v2 = (v2 + 8);
LABEL_20:
        v2->f64[0] = v7 * v2->f64[0];
        v2 = (v2 + 8);
LABEL_21:
        v2->f64[0] = v7 * v2->f64[0];
        v2 = (v2 + 8);
LABEL_22:
        v2->f64[0] = v7 * v2->f64[0];
        v2 = (v2 + 8);
LABEL_23:
        v2->f64[0] = v7 * v2->f64[0];
        v2 = (v2 + 8);
LABEL_24:
        v2->f64[0] = v7 * v2->f64[0];
        v2 = (v2 + 8);
LABEL_25:
        v2->f64[0] = v7 * v2->f64[0];
        v2 = (v2 + 8);
LABEL_26:
        v2->f64[0] = v7 * v2->f64[0];
        break;
      default:
        break;
    }

    v12 = *(*v1[7] + 16);

    return v12();
  }

  return result;
}

uint64_t sub_13B2A8(void *a1)
{
  *(a1 - 6) = off_26356F0;
  *a1 = off_2635758;
  v2 = a1[2];
  if (v2)
  {
    if (*v2)
    {
      v3 = *v2 - 1;
      *v2 = v3;
      if (!v3)
      {
        if (*(v2 + 16))
        {
          if (*(v2 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    a1[2] = 0;
  }

  *(a1 - 6) = off_26345A0;
  v4 = *(a1 - 4);
  if (v4 && *(a1 - 24) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 - 4) = 0;
  }

  result = *(a1 - 2);
  if (result && *(a1 - 8) == 1)
  {
    result = (*(*result + 8))(result);
    *(a1 - 2) = 0;
  }

  return result;
}

void sub_13B47C(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  *a1 = off_26345A0;
  *(a1 + 8) = *a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (a3)
  {
    v7 = (*(*a3 + 32))(a3) != 17 && (*(*a3 + 32))(a3) != 18;
    *(a1 + 16) = a3;
    *(a1 + 24) = v7;
  }

  if (a4)
  {
    v8 = (*(*a4 + 32))(a4) != 17 && (*(*a4 + 32))(a4) != 18;
    *(a1 + 32) = a4;
    *(a1 + 40) = v8;
  }

  *a1 = off_26357E0;
  *(a1 + 48) = off_2635848;
  *(a1 + 56) = 0;
  operator new();
}

void sub_13B7A4(_Unwind_Exception *a1)
{
  sub_F5710((v1 + 64));
  sub_12A624(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_13B7C0(uint64_t a1)
{
  *a1 = off_26357E0;
  *(a1 + 48) = off_2635848;
  v2 = *(a1 + 64);
  if (v2)
  {
    if (*v2)
    {
      v3 = *v2 - 1;
      *v2 = v3;
      if (!v3)
      {
        if (*(v2 + 16))
        {
          if (*(v2 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 64) = 0;
  }

  *a1 = off_26345A0;
  v4 = *(a1 + 16);
  if (v4 && *(a1 + 24) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 16) = 0;
  }

  v5 = *(a1 + 32);
  if (v5 && *(a1 + 40) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 32) = 0;
  }

  return a1;
}

void sub_13B920(uint64_t a1)
{
  *a1 = off_26357E0;
  *(a1 + 48) = off_2635848;
  v2 = *(a1 + 64);
  if (v2)
  {
    if (*v2)
    {
      v3 = *v2 - 1;
      *v2 = v3;
      if (!v3)
      {
        if (*(v2 + 16))
        {
          if (*(v2 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 64) = 0;
  }

  *a1 = off_26345A0;
  v4 = *(a1 + 16);
  if (v4 && *(a1 + 24) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 16) = 0;
  }

  v5 = *(a1 + 32);
  if (v5 && *(a1 + 40) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 32) = 0;
  }

  operator delete();
}

uint64_t sub_13BAA0(uint64_t result)
{
  if (*(result + 56))
  {
    v1 = result;
    v14 = (*(**(result + 32) + 16))(*(result + 32));
    v2 = *(*((*v1)[9])(v1) + 16);
    v3 = ((*v1)[7])(v1);
    if ((v3 & 0xF) != 0)
    {
      v4 = -16;
    }

    else
    {
      v4 = 0;
    }

    v5 = 8 * (v4 + v3);
    if (v5 < 1)
    {
      v7 = *&v14;
    }

    else
    {
      v6 = (v2 + v5);
      v7 = *&v14;
      v8 = vdupq_lane_s64(v14, 0);
      do
      {
        v9 = vdivq_f64(v2[1], v8);
        *v2 = vdivq_f64(*v2, v8);
        v2[1] = v9;
        v10 = vdivq_f64(v2[3], v8);
        v2[2] = vdivq_f64(v2[2], v8);
        v2[3] = v10;
        v11 = vdivq_f64(v2[5], v8);
        v2[4] = vdivq_f64(v2[4], v8);
        v2[5] = v11;
        v12 = vdivq_f64(v2[7], v8);
        v2[6] = vdivq_f64(v2[6], v8);
        v2[7] = v12;
        v2 += 8;
      }

      while (v2 < v6);
    }

    switch(v3 & 0xF)
    {
      case 1:
        goto LABEL_26;
      case 2:
        goto LABEL_25;
      case 3:
        goto LABEL_24;
      case 4:
        goto LABEL_23;
      case 5:
        goto LABEL_22;
      case 6:
        goto LABEL_21;
      case 7:
        goto LABEL_20;
      case 8:
        goto LABEL_19;
      case 9:
        goto LABEL_18;
      case 0xA:
        goto LABEL_17;
      case 0xB:
        goto LABEL_16;
      case 0xC:
        goto LABEL_15;
      case 0xD:
        goto LABEL_14;
      case 0xE:
        goto LABEL_13;
      case 0xF:
        v2->f64[0] = v2->f64[0] / v7;
        v2 = (v2 + 8);
LABEL_13:
        v2->f64[0] = v2->f64[0] / v7;
        v2 = (v2 + 8);
LABEL_14:
        v2->f64[0] = v2->f64[0] / v7;
        v2 = (v2 + 8);
LABEL_15:
        v2->f64[0] = v2->f64[0] / v7;
        v2 = (v2 + 8);
LABEL_16:
        v2->f64[0] = v2->f64[0] / v7;
        v2 = (v2 + 8);
LABEL_17:
        v2->f64[0] = v2->f64[0] / v7;
        v2 = (v2 + 8);
LABEL_18:
        v2->f64[0] = v2->f64[0] / v7;
        v2 = (v2 + 8);
LABEL_19:
        v2->f64[0] = v2->f64[0] / v7;
        v2 = (v2 + 8);
LABEL_20:
        v2->f64[0] = v2->f64[0] / v7;
        v2 = (v2 + 8);
LABEL_21:
        v2->f64[0] = v2->f64[0] / v7;
        v2 = (v2 + 8);
LABEL_22:
        v2->f64[0] = v2->f64[0] / v7;
        v2 = (v2 + 8);
LABEL_23:
        v2->f64[0] = v2->f64[0] / v7;
        v2 = (v2 + 8);
LABEL_24:
        v2->f64[0] = v2->f64[0] / v7;
        v2 = (v2 + 8);
LABEL_25:
        v2->f64[0] = v2->f64[0] / v7;
        v2 = (v2 + 8);
LABEL_26:
        v2->f64[0] = v2->f64[0] / v7;
        break;
      default:
        break;
    }

    v13 = *(*v1[7] + 16);

    return v13();
  }

  return result;
}

uint64_t sub_13BD98(void *a1)
{
  *(a1 - 6) = off_26357E0;
  *a1 = off_2635848;
  v2 = a1[2];
  if (v2)
  {
    if (*v2)
    {
      v3 = *v2 - 1;
      *v2 = v3;
      if (!v3)
      {
        if (*(v2 + 16))
        {
          if (*(v2 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    a1[2] = 0;
  }

  *(a1 - 6) = off_26345A0;
  v4 = *(a1 - 4);
  if (v4 && *(a1 - 24) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 - 4) = 0;
  }

  result = *(a1 - 2);
  if (result && *(a1 - 8) == 1)
  {
    result = (*(*result + 8))(result);
    *(a1 - 2) = 0;
  }

  return result;
}

void sub_13BF6C(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  *a1 = off_26345A0;
  *(a1 + 8) = *a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (a3)
  {
    v7 = (*(*a3 + 32))(a3) != 17 && (*(*a3 + 32))(a3) != 18;
    *(a1 + 16) = a3;
    *(a1 + 24) = v7;
  }

  if (a4)
  {
    v8 = (*(*a4 + 32))(a4) != 17 && (*(*a4 + 32))(a4) != 18;
    *(a1 + 32) = a4;
    *(a1 + 40) = v8;
  }

  *a1 = off_26358D0;
  *(a1 + 48) = off_2635938;
  *(a1 + 56) = 0;
  operator new();
}

void sub_13C294(_Unwind_Exception *a1)
{
  sub_F5710((v1 + 64));
  sub_12A624(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_13C2B0(uint64_t a1)
{
  *a1 = off_26358D0;
  *(a1 + 48) = off_2635938;
  v2 = *(a1 + 64);
  if (v2)
  {
    if (*v2)
    {
      v3 = *v2 - 1;
      *v2 = v3;
      if (!v3)
      {
        if (*(v2 + 16))
        {
          if (*(v2 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 64) = 0;
  }

  *a1 = off_26345A0;
  v4 = *(a1 + 16);
  if (v4 && *(a1 + 24) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 16) = 0;
  }

  v5 = *(a1 + 32);
  if (v5 && *(a1 + 40) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 32) = 0;
  }

  return a1;
}

void sub_13C410(uint64_t a1)
{
  *a1 = off_26358D0;
  *(a1 + 48) = off_2635938;
  v2 = *(a1 + 64);
  if (v2)
  {
    if (*v2)
    {
      v3 = *v2 - 1;
      *v2 = v3;
      if (!v3)
      {
        if (*(v2 + 16))
        {
          if (*(v2 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 64) = 0;
  }

  *a1 = off_26345A0;
  v4 = *(a1 + 16);
  if (v4 && *(a1 + 24) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 16) = 0;
  }

  v5 = *(a1 + 32);
  if (v5 && *(a1 + 40) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 32) = 0;
  }

  operator delete();
}

double sub_13C590(void **a1)
{
  if (!a1[7])
  {
    return NAN;
  }

  v2 = (*(*a1[4] + 16))(a1[4]);
  v3 = *(*((*a1)[9])(a1) + 16);
  v4 = ((*a1)[7])(a1);
  v5 = v4 & 0xF;
  if ((v4 & 0xF) != 0)
  {
    v6 = -16;
  }

  else
  {
    v6 = 0;
  }

  v7 = 8 * (v6 + v4);
  if (v7 >= 1)
  {
    v8 = &v3[v7 / 8];
    do
    {
      *v3 = fmod(*v3, v2);
      v3[1] = fmod(v3[1], v2);
      v3[2] = fmod(v3[2], v2);
      v3[3] = fmod(v3[3], v2);
      v3[4] = fmod(v3[4], v2);
      v3[5] = fmod(v3[5], v2);
      v3[6] = fmod(v3[6], v2);
      v3[7] = fmod(v3[7], v2);
      v3[8] = fmod(v3[8], v2);
      v3[9] = fmod(v3[9], v2);
      v3[10] = fmod(v3[10], v2);
      v3[11] = fmod(v3[11], v2);
      v3[12] = fmod(v3[12], v2);
      v3[13] = fmod(v3[13], v2);
      v3[14] = fmod(v3[14], v2);
      v3[15] = fmod(v3[15], v2);
      v3 += 16;
    }

    while (v3 < v8);
  }

  switch(v5)
  {
    case 1:
      goto LABEL_23;
    case 2:
      goto LABEL_22;
    case 3:
      goto LABEL_21;
    case 4:
      goto LABEL_20;
    case 5:
      goto LABEL_19;
    case 6:
      goto LABEL_18;
    case 7:
      goto LABEL_17;
    case 8:
      goto LABEL_16;
    case 9:
      goto LABEL_15;
    case 10:
      goto LABEL_14;
    case 11:
      goto LABEL_13;
    case 12:
      goto LABEL_12;
    case 13:
      goto LABEL_11;
    case 14:
      goto LABEL_10;
    case 15:
      *v3 = fmod(*v3, v2);
      ++v3;
LABEL_10:
      *v3 = fmod(*v3, v2);
      ++v3;
LABEL_11:
      *v3 = fmod(*v3, v2);
      ++v3;
LABEL_12:
      *v3 = fmod(*v3, v2);
      ++v3;
LABEL_13:
      *v3 = fmod(*v3, v2);
      ++v3;
LABEL_14:
      *v3 = fmod(*v3, v2);
      ++v3;
LABEL_15:
      *v3 = fmod(*v3, v2);
      ++v3;
LABEL_16:
      *v3 = fmod(*v3, v2);
      ++v3;
LABEL_17:
      *v3 = fmod(*v3, v2);
      ++v3;
LABEL_18:
      *v3 = fmod(*v3, v2);
      ++v3;
LABEL_19:
      *v3 = fmod(*v3, v2);
      ++v3;
LABEL_20:
      *v3 = fmod(*v3, v2);
      ++v3;
LABEL_21:
      *v3 = fmod(*v3, v2);
      ++v3;
LABEL_22:
      *v3 = fmod(*v3, v2);
      ++v3;
LABEL_23:
      *v3 = fmod(*v3, v2);
      break;
    default:
      break;
  }

  v9 = *(*a1[7] + 16);

  v9();
  return result;
}

uint64_t sub_13C97C(void *a1)
{
  *(a1 - 6) = off_26358D0;
  *a1 = off_2635938;
  v2 = a1[2];
  if (v2)
  {
    if (*v2)
    {
      v3 = *v2 - 1;
      *v2 = v3;
      if (!v3)
      {
        if (*(v2 + 16))
        {
          if (*(v2 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    a1[2] = 0;
  }

  *(a1 - 6) = off_26345A0;
  v4 = *(a1 - 4);
  if (v4 && *(a1 - 24) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 - 4) = 0;
  }

  result = *(a1 - 2);
  if (result && *(a1 - 8) == 1)
  {
    result = (*(*result + 8))(result);
    *(a1 - 2) = 0;
  }

  return result;
}

void sub_13D8B8(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  *a1 = off_26345A0;
  *(a1 + 8) = *a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (a3)
  {
    v7 = (*(*a3 + 32))(a3) != 17 && (*(*a3 + 32))(a3) != 18;
    *(a1 + 16) = a3;
    *(a1 + 24) = v7;
  }

  if (a4)
  {
    v8 = (*(*a4 + 32))(a4) != 17 && (*(*a4 + 32))(a4) != 18;
    *(a1 + 32) = a4;
    *(a1 + 40) = v8;
  }

  *a1 = off_26359C0;
  *(a1 + 48) = off_2635A20;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  operator new();
}

void sub_13E1BC(_Unwind_Exception *a1)
{
  sub_F5710(v2);
  sub_12A624(v1);
  _Unwind_Resume(a1);
}

void sub_13E25C(uint64_t a1)
{
  sub_13E87C(a1);

  operator delete();
}

double sub_13E294(uint64_t a1)
{
  if (*(a1 + 88) != 1)
  {
    return NAN;
  }

  (*(**(a1 + 16) + 16))(*(a1 + 16));
  (*(**(a1 + 32) + 16))(*(a1 + 32));
  v2 = *(*(*(**(a1 + 56) + 64))(*(a1 + 56)) + 16);
  v3 = *(*(*(**(a1 + 64) + 64))(*(a1 + 64)) + 16);
  v4 = *(*(*(*a1 + 72))(a1) + 16);
  v5 = (*(*a1 + 56))(a1);
  if ((v5 & 0xF) != 0)
  {
    v6 = -16;
  }

  else
  {
    v6 = 0;
  }

  v7 = 8 * (v6 + v5);
  if (v7 >= 1)
  {
    v8 = &v4[v7 / 8];
    do
    {
      if (*v2 >= *v3)
      {
        v9 = 0.0;
      }

      else
      {
        v9 = 1.0;
      }

      *v4 = v9;
      if (v2[1] >= v3[1])
      {
        v10 = 0.0;
      }

      else
      {
        v10 = 1.0;
      }

      v4[1] = v10;
      if (v2[2] >= v3[2])
      {
        v11 = 0.0;
      }

      else
      {
        v11 = 1.0;
      }

      v4[2] = v11;
      if (v2[3] >= v3[3])
      {
        v12 = 0.0;
      }

      else
      {
        v12 = 1.0;
      }

      v4[3] = v12;
      if (v2[4] >= v3[4])
      {
        v13 = 0.0;
      }

      else
      {
        v13 = 1.0;
      }

      v4[4] = v13;
      if (v2[5] >= v3[5])
      {
        v14 = 0.0;
      }

      else
      {
        v14 = 1.0;
      }

      v4[5] = v14;
      if (v2[6] >= v3[6])
      {
        v15 = 0.0;
      }

      else
      {
        v15 = 1.0;
      }

      v4[6] = v15;
      if (v2[7] >= v3[7])
      {
        v16 = 0.0;
      }

      else
      {
        v16 = 1.0;
      }

      v4[7] = v16;
      if (v2[8] >= v3[8])
      {
        v17 = 0.0;
      }

      else
      {
        v17 = 1.0;
      }

      v4[8] = v17;
      if (v2[9] >= v3[9])
      {
        v18 = 0.0;
      }

      else
      {
        v18 = 1.0;
      }

      v4[9] = v18;
      if (v2[10] >= v3[10])
      {
        v19 = 0.0;
      }

      else
      {
        v19 = 1.0;
      }

      v4[10] = v19;
      if (v2[11] >= v3[11])
      {
        v20 = 0.0;
      }

      else
      {
        v20 = 1.0;
      }

      v4[11] = v20;
      if (v2[12] >= v3[12])
      {
        v21 = 0.0;
      }

      else
      {
        v21 = 1.0;
      }

      v4[12] = v21;
      if (v2[13] >= v3[13])
      {
        v22 = 0.0;
      }

      else
      {
        v22 = 1.0;
      }

      v4[13] = v22;
      if (v2[14] >= v3[14])
      {
        v23 = 0.0;
      }

      else
      {
        v23 = 1.0;
      }

      v4[14] = v23;
      if (v2[15] >= v3[15])
      {
        v24 = 0.0;
      }

      else
      {
        v24 = 1.0;
      }

      v4[15] = v24;
      v2 += 16;
      v3 += 16;
      v4 += 16;
    }

    while (v4 < v8);
  }

  v25 = 0;
  v26 = 0;
  switch(v5 & 0xF)
  {
    case 1:
      goto LABEL_99;
    case 2:
      goto LABEL_96;
    case 3:
      goto LABEL_93;
    case 4:
      goto LABEL_90;
    case 5:
      goto LABEL_87;
    case 6:
      goto LABEL_84;
    case 7:
      goto LABEL_81;
    case 8:
      goto LABEL_78;
    case 9:
      goto LABEL_75;
    case 0xA:
      goto LABEL_72;
    case 0xB:
      goto LABEL_69;
    case 0xC:
      goto LABEL_66;
    case 0xD:
      goto LABEL_63;
    case 0xE:
      goto LABEL_60;
    case 0xF:
      v27 = 0.0;
      if (*v2 < *v3)
      {
        v27 = 1.0;
      }

      *v4 = v27;
      v26 = 1;
LABEL_60:
      v28 = 0.0;
      if (v2[v26] < v3[v26])
      {
        v28 = 1.0;
      }

      v4[v26++] = v28;
LABEL_63:
      v29 = 0.0;
      if (v2[v26] < v3[v26])
      {
        v29 = 1.0;
      }

      v4[v26++] = v29;
LABEL_66:
      v30 = 0.0;
      if (v2[v26] < v3[v26])
      {
        v30 = 1.0;
      }

      v4[v26++] = v30;
LABEL_69:
      v31 = 0.0;
      if (v2[v26] < v3[v26])
      {
        v31 = 1.0;
      }

      v4[v26++] = v31;
LABEL_72:
      v32 = 0.0;
      if (v2[v26] < v3[v26])
      {
        v32 = 1.0;
      }

      v4[v26++] = v32;
LABEL_75:
      v33 = 0.0;
      if (v2[v26] < v3[v26])
      {
        v33 = 1.0;
      }

      v4[v26++] = v33;
LABEL_78:
      v34 = 0.0;
      if (v2[v26] < v3[v26])
      {
        v34 = 1.0;
      }

      v4[v26++] = v34;
LABEL_81:
      v35 = 0.0;
      if (v2[v26] < v3[v26])
      {
        v35 = 1.0;
      }

      v4[v26++] = v35;
LABEL_84:
      v36 = 0.0;
      if (v2[v26] < v3[v26])
      {
        v36 = 1.0;
      }

      v4[v26++] = v36;
LABEL_87:
      v37 = 0.0;
      if (v2[v26] < v3[v26])
      {
        v37 = 1.0;
      }

      v4[v26++] = v37;
LABEL_90:
      v38 = 0.0;
      if (v2[v26] < v3[v26])
      {
        v38 = 1.0;
      }

      v4[v26++] = v38;
LABEL_93:
      v39 = 0.0;
      if (v2[v26] < v3[v26])
      {
        v39 = 1.0;
      }

      v4[v26++] = v39;
LABEL_96:
      v40 = 0.0;
      if (v2[v26] < v3[v26])
      {
        v40 = 1.0;
      }

      v4[v26] = v40;
      v25 = v26 + 1;
LABEL_99:
      v41 = 0.0;
      if (v2[v25] < v3[v25])
      {
        v41 = 1.0;
      }

      v4[v25] = v41;
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_13E814(uint64_t a1)
{
  sub_13E87C(a1 - 48);

  operator delete();
}

uint64_t sub_13E87C(uint64_t a1)
{
  *a1 = off_26359C0;
  *(a1 + 48) = off_2635A20;
  if (*(a1 + 72))
  {
    operator delete();
  }

  v2 = *(a1 + 80);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    if (*v3)
    {
      v4 = *v3 - 1;
      *v3 = v4;
      if (!v4)
      {
        if (*(v3 + 16))
        {
          if (*(v3 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 96) = 0;
  }

  *a1 = off_26345A0;
  v5 = *(a1 + 16);
  if (v5 && *(a1 + 24) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 16) = 0;
  }

  v6 = *(a1 + 32);
  if (v6 && *(a1 + 40) == 1)
  {
    (*(*v6 + 8))(v6);
    *(a1 + 32) = 0;
  }

  return a1;
}

double sub_13EA24(double *a1, double *a2)
{
  result = 0.0;
  if (*a1 < *a2)
  {
    return 1.0;
  }

  return result;
}

void sub_13EA40(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  *a1 = off_26345A0;
  *(a1 + 8) = *a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (a3)
  {
    v7 = (*(*a3 + 32))(a3) != 17 && (*(*a3 + 32))(a3) != 18;
    *(a1 + 16) = a3;
    *(a1 + 24) = v7;
  }

  if (a4)
  {
    v8 = (*(*a4 + 32))(a4) != 17 && (*(*a4 + 32))(a4) != 18;
    *(a1 + 32) = a4;
    *(a1 + 40) = v8;
  }

  *a1 = off_2635AA8;
  *(a1 + 48) = off_2635B08;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  operator new();
}

void sub_13F344(_Unwind_Exception *a1)
{
  sub_F5710(v2);
  sub_12A624(v1);
  _Unwind_Resume(a1);
}

void sub_13F3E4(uint64_t a1)
{
  sub_13FA04(a1);

  operator delete();
}

double sub_13F41C(uint64_t a1)
{
  if (*(a1 + 88) != 1)
  {
    return NAN;
  }

  (*(**(a1 + 16) + 16))(*(a1 + 16));
  (*(**(a1 + 32) + 16))(*(a1 + 32));
  v2 = *(*(*(**(a1 + 56) + 64))(*(a1 + 56)) + 16);
  v3 = *(*(*(**(a1 + 64) + 64))(*(a1 + 64)) + 16);
  v4 = *(*(*(*a1 + 72))(a1) + 16);
  v5 = (*(*a1 + 56))(a1);
  if ((v5 & 0xF) != 0)
  {
    v6 = -16;
  }

  else
  {
    v6 = 0;
  }

  v7 = 8 * (v6 + v5);
  if (v7 >= 1)
  {
    v8 = &v4[v7 / 8];
    do
    {
      if (*v2 > *v3)
      {
        v9 = 0.0;
      }

      else
      {
        v9 = 1.0;
      }

      *v4 = v9;
      if (v2[1] > v3[1])
      {
        v10 = 0.0;
      }

      else
      {
        v10 = 1.0;
      }

      v4[1] = v10;
      if (v2[2] > v3[2])
      {
        v11 = 0.0;
      }

      else
      {
        v11 = 1.0;
      }

      v4[2] = v11;
      if (v2[3] > v3[3])
      {
        v12 = 0.0;
      }

      else
      {
        v12 = 1.0;
      }

      v4[3] = v12;
      if (v2[4] > v3[4])
      {
        v13 = 0.0;
      }

      else
      {
        v13 = 1.0;
      }

      v4[4] = v13;
      if (v2[5] > v3[5])
      {
        v14 = 0.0;
      }

      else
      {
        v14 = 1.0;
      }

      v4[5] = v14;
      if (v2[6] > v3[6])
      {
        v15 = 0.0;
      }

      else
      {
        v15 = 1.0;
      }

      v4[6] = v15;
      if (v2[7] > v3[7])
      {
        v16 = 0.0;
      }

      else
      {
        v16 = 1.0;
      }

      v4[7] = v16;
      if (v2[8] > v3[8])
      {
        v17 = 0.0;
      }

      else
      {
        v17 = 1.0;
      }

      v4[8] = v17;
      if (v2[9] > v3[9])
      {
        v18 = 0.0;
      }

      else
      {
        v18 = 1.0;
      }

      v4[9] = v18;
      if (v2[10] > v3[10])
      {
        v19 = 0.0;
      }

      else
      {
        v19 = 1.0;
      }

      v4[10] = v19;
      if (v2[11] > v3[11])
      {
        v20 = 0.0;
      }

      else
      {
        v20 = 1.0;
      }

      v4[11] = v20;
      if (v2[12] > v3[12])
      {
        v21 = 0.0;
      }

      else
      {
        v21 = 1.0;
      }

      v4[12] = v21;
      if (v2[13] > v3[13])
      {
        v22 = 0.0;
      }

      else
      {
        v22 = 1.0;
      }

      v4[13] = v22;
      if (v2[14] > v3[14])
      {
        v23 = 0.0;
      }

      else
      {
        v23 = 1.0;
      }

      v4[14] = v23;
      if (v2[15] > v3[15])
      {
        v24 = 0.0;
      }

      else
      {
        v24 = 1.0;
      }

      v4[15] = v24;
      v2 += 16;
      v3 += 16;
      v4 += 16;
    }

    while (v4 < v8);
  }

  v25 = 0;
  v26 = 0;
  switch(v5 & 0xF)
  {
    case 1:
      goto LABEL_99;
    case 2:
      goto LABEL_96;
    case 3:
      goto LABEL_93;
    case 4:
      goto LABEL_90;
    case 5:
      goto LABEL_87;
    case 6:
      goto LABEL_84;
    case 7:
      goto LABEL_81;
    case 8:
      goto LABEL_78;
    case 9:
      goto LABEL_75;
    case 0xA:
      goto LABEL_72;
    case 0xB:
      goto LABEL_69;
    case 0xC:
      goto LABEL_66;
    case 0xD:
      goto LABEL_63;
    case 0xE:
      goto LABEL_60;
    case 0xF:
      v27 = 0.0;
      if (*v2 <= *v3)
      {
        v27 = 1.0;
      }

      *v4 = v27;
      v26 = 1;
LABEL_60:
      v28 = 0.0;
      if (v2[v26] <= v3[v26])
      {
        v28 = 1.0;
      }

      v4[v26++] = v28;
LABEL_63:
      v29 = 0.0;
      if (v2[v26] <= v3[v26])
      {
        v29 = 1.0;
      }

      v4[v26++] = v29;
LABEL_66:
      v30 = 0.0;
      if (v2[v26] <= v3[v26])
      {
        v30 = 1.0;
      }

      v4[v26++] = v30;
LABEL_69:
      v31 = 0.0;
      if (v2[v26] <= v3[v26])
      {
        v31 = 1.0;
      }

      v4[v26++] = v31;
LABEL_72:
      v32 = 0.0;
      if (v2[v26] <= v3[v26])
      {
        v32 = 1.0;
      }

      v4[v26++] = v32;
LABEL_75:
      v33 = 0.0;
      if (v2[v26] <= v3[v26])
      {
        v33 = 1.0;
      }

      v4[v26++] = v33;
LABEL_78:
      v34 = 0.0;
      if (v2[v26] <= v3[v26])
      {
        v34 = 1.0;
      }

      v4[v26++] = v34;
LABEL_81:
      v35 = 0.0;
      if (v2[v26] <= v3[v26])
      {
        v35 = 1.0;
      }

      v4[v26++] = v35;
LABEL_84:
      v36 = 0.0;
      if (v2[v26] <= v3[v26])
      {
        v36 = 1.0;
      }

      v4[v26++] = v36;
LABEL_87:
      v37 = 0.0;
      if (v2[v26] <= v3[v26])
      {
        v37 = 1.0;
      }

      v4[v26++] = v37;
LABEL_90:
      v38 = 0.0;
      if (v2[v26] <= v3[v26])
      {
        v38 = 1.0;
      }

      v4[v26++] = v38;
LABEL_93:
      v39 = 0.0;
      if (v2[v26] <= v3[v26])
      {
        v39 = 1.0;
      }

      v4[v26++] = v39;
LABEL_96:
      v40 = 0.0;
      if (v2[v26] <= v3[v26])
      {
        v40 = 1.0;
      }

      v4[v26] = v40;
      v25 = v26 + 1;
LABEL_99:
      v41 = 0.0;
      if (v2[v25] <= v3[v25])
      {
        v41 = 1.0;
      }

      v4[v25] = v41;
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_13F99C(uint64_t a1)
{
  sub_13FA04(a1 - 48);

  operator delete();
}

uint64_t sub_13FA04(uint64_t a1)
{
  *a1 = off_2635AA8;
  *(a1 + 48) = off_2635B08;
  if (*(a1 + 72))
  {
    operator delete();
  }

  v2 = *(a1 + 80);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    if (*v3)
    {
      v4 = *v3 - 1;
      *v3 = v4;
      if (!v4)
      {
        if (*(v3 + 16))
        {
          if (*(v3 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 96) = 0;
  }

  *a1 = off_26345A0;
  v5 = *(a1 + 16);
  if (v5 && *(a1 + 24) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 16) = 0;
  }

  v6 = *(a1 + 32);
  if (v6 && *(a1 + 40) == 1)
  {
    (*(*v6 + 8))(v6);
    *(a1 + 32) = 0;
  }

  return a1;
}

double sub_13FBAC(double *a1, double *a2)
{
  result = 0.0;
  if (*a1 <= *a2)
  {
    return 1.0;
  }

  return result;
}

void sub_13FBC8(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  *a1 = off_26345A0;
  *(a1 + 8) = *a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (a3)
  {
    v7 = (*(*a3 + 32))(a3) != 17 && (*(*a3 + 32))(a3) != 18;
    *(a1 + 16) = a3;
    *(a1 + 24) = v7;
  }

  if (a4)
  {
    v8 = (*(*a4 + 32))(a4) != 17 && (*(*a4 + 32))(a4) != 18;
    *(a1 + 32) = a4;
    *(a1 + 40) = v8;
  }

  *a1 = off_2635B90;
  *(a1 + 48) = off_2635BF0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  operator new();
}

void sub_1404CC(_Unwind_Exception *a1)
{
  sub_F5710(v2);
  sub_12A624(v1);
  _Unwind_Resume(a1);
}

void sub_14056C(uint64_t a1)
{
  sub_140B8C(a1);

  operator delete();
}

double sub_1405A4(uint64_t a1)
{
  if (*(a1 + 88) != 1)
  {
    return NAN;
  }

  (*(**(a1 + 16) + 16))(*(a1 + 16));
  (*(**(a1 + 32) + 16))(*(a1 + 32));
  v2 = *(*(*(**(a1 + 56) + 64))(*(a1 + 56)) + 16);
  v3 = *(*(*(**(a1 + 64) + 64))(*(a1 + 64)) + 16);
  v4 = *(*(*(*a1 + 72))(a1) + 16);
  v5 = (*(*a1 + 56))(a1);
  if ((v5 & 0xF) != 0)
  {
    v6 = -16;
  }

  else
  {
    v6 = 0;
  }

  v7 = 8 * (v6 + v5);
  if (v7 >= 1)
  {
    v8 = &v4[v7 / 8];
    do
    {
      if (*v2 <= *v3)
      {
        v9 = 0.0;
      }

      else
      {
        v9 = 1.0;
      }

      *v4 = v9;
      if (v2[1] <= v3[1])
      {
        v10 = 0.0;
      }

      else
      {
        v10 = 1.0;
      }

      v4[1] = v10;
      if (v2[2] <= v3[2])
      {
        v11 = 0.0;
      }

      else
      {
        v11 = 1.0;
      }

      v4[2] = v11;
      if (v2[3] <= v3[3])
      {
        v12 = 0.0;
      }

      else
      {
        v12 = 1.0;
      }

      v4[3] = v12;
      if (v2[4] <= v3[4])
      {
        v13 = 0.0;
      }

      else
      {
        v13 = 1.0;
      }

      v4[4] = v13;
      if (v2[5] <= v3[5])
      {
        v14 = 0.0;
      }

      else
      {
        v14 = 1.0;
      }

      v4[5] = v14;
      if (v2[6] <= v3[6])
      {
        v15 = 0.0;
      }

      else
      {
        v15 = 1.0;
      }

      v4[6] = v15;
      if (v2[7] <= v3[7])
      {
        v16 = 0.0;
      }

      else
      {
        v16 = 1.0;
      }

      v4[7] = v16;
      if (v2[8] <= v3[8])
      {
        v17 = 0.0;
      }

      else
      {
        v17 = 1.0;
      }

      v4[8] = v17;
      if (v2[9] <= v3[9])
      {
        v18 = 0.0;
      }

      else
      {
        v18 = 1.0;
      }

      v4[9] = v18;
      if (v2[10] <= v3[10])
      {
        v19 = 0.0;
      }

      else
      {
        v19 = 1.0;
      }

      v4[10] = v19;
      if (v2[11] <= v3[11])
      {
        v20 = 0.0;
      }

      else
      {
        v20 = 1.0;
      }

      v4[11] = v20;
      if (v2[12] <= v3[12])
      {
        v21 = 0.0;
      }

      else
      {
        v21 = 1.0;
      }

      v4[12] = v21;
      if (v2[13] <= v3[13])
      {
        v22 = 0.0;
      }

      else
      {
        v22 = 1.0;
      }

      v4[13] = v22;
      if (v2[14] <= v3[14])
      {
        v23 = 0.0;
      }

      else
      {
        v23 = 1.0;
      }

      v4[14] = v23;
      if (v2[15] <= v3[15])
      {
        v24 = 0.0;
      }

      else
      {
        v24 = 1.0;
      }

      v4[15] = v24;
      v2 += 16;
      v3 += 16;
      v4 += 16;
    }

    while (v4 < v8);
  }

  v25 = 0;
  v26 = 0;
  switch(v5 & 0xF)
  {
    case 1:
      goto LABEL_99;
    case 2:
      goto LABEL_96;
    case 3:
      goto LABEL_93;
    case 4:
      goto LABEL_90;
    case 5:
      goto LABEL_87;
    case 6:
      goto LABEL_84;
    case 7:
      goto LABEL_81;
    case 8:
      goto LABEL_78;
    case 9:
      goto LABEL_75;
    case 0xA:
      goto LABEL_72;
    case 0xB:
      goto LABEL_69;
    case 0xC:
      goto LABEL_66;
    case 0xD:
      goto LABEL_63;
    case 0xE:
      goto LABEL_60;
    case 0xF:
      v27 = 0.0;
      if (*v2 > *v3)
      {
        v27 = 1.0;
      }

      *v4 = v27;
      v26 = 1;
LABEL_60:
      v28 = 0.0;
      if (v2[v26] > v3[v26])
      {
        v28 = 1.0;
      }

      v4[v26++] = v28;
LABEL_63:
      v29 = 0.0;
      if (v2[v26] > v3[v26])
      {
        v29 = 1.0;
      }

      v4[v26++] = v29;
LABEL_66:
      v30 = 0.0;
      if (v2[v26] > v3[v26])
      {
        v30 = 1.0;
      }

      v4[v26++] = v30;
LABEL_69:
      v31 = 0.0;
      if (v2[v26] > v3[v26])
      {
        v31 = 1.0;
      }

      v4[v26++] = v31;
LABEL_72:
      v32 = 0.0;
      if (v2[v26] > v3[v26])
      {
        v32 = 1.0;
      }

      v4[v26++] = v32;
LABEL_75:
      v33 = 0.0;
      if (v2[v26] > v3[v26])
      {
        v33 = 1.0;
      }

      v4[v26++] = v33;
LABEL_78:
      v34 = 0.0;
      if (v2[v26] > v3[v26])
      {
        v34 = 1.0;
      }

      v4[v26++] = v34;
LABEL_81:
      v35 = 0.0;
      if (v2[v26] > v3[v26])
      {
        v35 = 1.0;
      }

      v4[v26++] = v35;
LABEL_84:
      v36 = 0.0;
      if (v2[v26] > v3[v26])
      {
        v36 = 1.0;
      }

      v4[v26++] = v36;
LABEL_87:
      v37 = 0.0;
      if (v2[v26] > v3[v26])
      {
        v37 = 1.0;
      }

      v4[v26++] = v37;
LABEL_90:
      v38 = 0.0;
      if (v2[v26] > v3[v26])
      {
        v38 = 1.0;
      }

      v4[v26++] = v38;
LABEL_93:
      v39 = 0.0;
      if (v2[v26] > v3[v26])
      {
        v39 = 1.0;
      }

      v4[v26++] = v39;
LABEL_96:
      v40 = 0.0;
      if (v2[v26] > v3[v26])
      {
        v40 = 1.0;
      }

      v4[v26] = v40;
      v25 = v26 + 1;
LABEL_99:
      v41 = 0.0;
      if (v2[v25] > v3[v25])
      {
        v41 = 1.0;
      }

      v4[v25] = v41;
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_140B24(uint64_t a1)
{
  sub_140B8C(a1 - 48);

  operator delete();
}

uint64_t sub_140B8C(uint64_t a1)
{
  *a1 = off_2635B90;
  *(a1 + 48) = off_2635BF0;
  if (*(a1 + 72))
  {
    operator delete();
  }

  v2 = *(a1 + 80);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    if (*v3)
    {
      v4 = *v3 - 1;
      *v3 = v4;
      if (!v4)
      {
        if (*(v3 + 16))
        {
          if (*(v3 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 96) = 0;
  }

  *a1 = off_26345A0;
  v5 = *(a1 + 16);
  if (v5 && *(a1 + 24) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 16) = 0;
  }

  v6 = *(a1 + 32);
  if (v6 && *(a1 + 40) == 1)
  {
    (*(*v6 + 8))(v6);
    *(a1 + 32) = 0;
  }

  return a1;
}

double sub_140D34(double *a1, double *a2)
{
  result = 0.0;
  if (*a1 > *a2)
  {
    return 1.0;
  }

  return result;
}

void sub_140D50(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  *a1 = off_26345A0;
  *(a1 + 8) = *a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (a3)
  {
    v7 = (*(*a3 + 32))(a3) != 17 && (*(*a3 + 32))(a3) != 18;
    *(a1 + 16) = a3;
    *(a1 + 24) = v7;
  }

  if (a4)
  {
    v8 = (*(*a4 + 32))(a4) != 17 && (*(*a4 + 32))(a4) != 18;
    *(a1 + 32) = a4;
    *(a1 + 40) = v8;
  }

  *a1 = off_2635C78;
  *(a1 + 48) = off_2635CD8;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  operator new();
}

void sub_141654(_Unwind_Exception *a1)
{
  sub_F5710(v2);
  sub_12A624(v1);
  _Unwind_Resume(a1);
}

void sub_1416F4(uint64_t a1)
{
  sub_141D14(a1);

  operator delete();
}

double sub_14172C(uint64_t a1)
{
  if (*(a1 + 88) != 1)
  {
    return NAN;
  }

  (*(**(a1 + 16) + 16))(*(a1 + 16));
  (*(**(a1 + 32) + 16))(*(a1 + 32));
  v2 = *(*(*(**(a1 + 56) + 64))(*(a1 + 56)) + 16);
  v3 = *(*(*(**(a1 + 64) + 64))(*(a1 + 64)) + 16);
  v4 = *(*(*(*a1 + 72))(a1) + 16);
  v5 = (*(*a1 + 56))(a1);
  if ((v5 & 0xF) != 0)
  {
    v6 = -16;
  }

  else
  {
    v6 = 0;
  }

  v7 = 8 * (v6 + v5);
  if (v7 >= 1)
  {
    v8 = &v4[v7 / 8];
    do
    {
      if (*v2 < *v3)
      {
        v9 = 0.0;
      }

      else
      {
        v9 = 1.0;
      }

      *v4 = v9;
      if (v2[1] < v3[1])
      {
        v10 = 0.0;
      }

      else
      {
        v10 = 1.0;
      }

      v4[1] = v10;
      if (v2[2] < v3[2])
      {
        v11 = 0.0;
      }

      else
      {
        v11 = 1.0;
      }

      v4[2] = v11;
      if (v2[3] < v3[3])
      {
        v12 = 0.0;
      }

      else
      {
        v12 = 1.0;
      }

      v4[3] = v12;
      if (v2[4] < v3[4])
      {
        v13 = 0.0;
      }

      else
      {
        v13 = 1.0;
      }

      v4[4] = v13;
      if (v2[5] < v3[5])
      {
        v14 = 0.0;
      }

      else
      {
        v14 = 1.0;
      }

      v4[5] = v14;
      if (v2[6] < v3[6])
      {
        v15 = 0.0;
      }

      else
      {
        v15 = 1.0;
      }

      v4[6] = v15;
      if (v2[7] < v3[7])
      {
        v16 = 0.0;
      }

      else
      {
        v16 = 1.0;
      }

      v4[7] = v16;
      if (v2[8] < v3[8])
      {
        v17 = 0.0;
      }

      else
      {
        v17 = 1.0;
      }

      v4[8] = v17;
      if (v2[9] < v3[9])
      {
        v18 = 0.0;
      }

      else
      {
        v18 = 1.0;
      }

      v4[9] = v18;
      if (v2[10] < v3[10])
      {
        v19 = 0.0;
      }

      else
      {
        v19 = 1.0;
      }

      v4[10] = v19;
      if (v2[11] < v3[11])
      {
        v20 = 0.0;
      }

      else
      {
        v20 = 1.0;
      }

      v4[11] = v20;
      if (v2[12] < v3[12])
      {
        v21 = 0.0;
      }

      else
      {
        v21 = 1.0;
      }

      v4[12] = v21;
      if (v2[13] < v3[13])
      {
        v22 = 0.0;
      }

      else
      {
        v22 = 1.0;
      }

      v4[13] = v22;
      if (v2[14] < v3[14])
      {
        v23 = 0.0;
      }

      else
      {
        v23 = 1.0;
      }

      v4[14] = v23;
      if (v2[15] < v3[15])
      {
        v24 = 0.0;
      }

      else
      {
        v24 = 1.0;
      }

      v4[15] = v24;
      v2 += 16;
      v3 += 16;
      v4 += 16;
    }

    while (v4 < v8);
  }

  v25 = 0;
  v26 = 0;
  switch(v5 & 0xF)
  {
    case 1:
      goto LABEL_99;
    case 2:
      goto LABEL_96;
    case 3:
      goto LABEL_93;
    case 4:
      goto LABEL_90;
    case 5:
      goto LABEL_87;
    case 6:
      goto LABEL_84;
    case 7:
      goto LABEL_81;
    case 8:
      goto LABEL_78;
    case 9:
      goto LABEL_75;
    case 0xA:
      goto LABEL_72;
    case 0xB:
      goto LABEL_69;
    case 0xC:
      goto LABEL_66;
    case 0xD:
      goto LABEL_63;
    case 0xE:
      goto LABEL_60;
    case 0xF:
      v27 = 0.0;
      if (*v2 >= *v3)
      {
        v27 = 1.0;
      }

      *v4 = v27;
      v26 = 1;
LABEL_60:
      v28 = 0.0;
      if (v2[v26] >= v3[v26])
      {
        v28 = 1.0;
      }

      v4[v26++] = v28;
LABEL_63:
      v29 = 0.0;
      if (v2[v26] >= v3[v26])
      {
        v29 = 1.0;
      }

      v4[v26++] = v29;
LABEL_66:
      v30 = 0.0;
      if (v2[v26] >= v3[v26])
      {
        v30 = 1.0;
      }

      v4[v26++] = v30;
LABEL_69:
      v31 = 0.0;
      if (v2[v26] >= v3[v26])
      {
        v31 = 1.0;
      }

      v4[v26++] = v31;
LABEL_72:
      v32 = 0.0;
      if (v2[v26] >= v3[v26])
      {
        v32 = 1.0;
      }

      v4[v26++] = v32;
LABEL_75:
      v33 = 0.0;
      if (v2[v26] >= v3[v26])
      {
        v33 = 1.0;
      }

      v4[v26++] = v33;
LABEL_78:
      v34 = 0.0;
      if (v2[v26] >= v3[v26])
      {
        v34 = 1.0;
      }

      v4[v26++] = v34;
LABEL_81:
      v35 = 0.0;
      if (v2[v26] >= v3[v26])
      {
        v35 = 1.0;
      }

      v4[v26++] = v35;
LABEL_84:
      v36 = 0.0;
      if (v2[v26] >= v3[v26])
      {
        v36 = 1.0;
      }

      v4[v26++] = v36;
LABEL_87:
      v37 = 0.0;
      if (v2[v26] >= v3[v26])
      {
        v37 = 1.0;
      }

      v4[v26++] = v37;
LABEL_90:
      v38 = 0.0;
      if (v2[v26] >= v3[v26])
      {
        v38 = 1.0;
      }

      v4[v26++] = v38;
LABEL_93:
      v39 = 0.0;
      if (v2[v26] >= v3[v26])
      {
        v39 = 1.0;
      }

      v4[v26++] = v39;
LABEL_96:
      v40 = 0.0;
      if (v2[v26] >= v3[v26])
      {
        v40 = 1.0;
      }

      v4[v26] = v40;
      v25 = v26 + 1;
LABEL_99:
      v41 = 0.0;
      if (v2[v25] >= v3[v25])
      {
        v41 = 1.0;
      }

      v4[v25] = v41;
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_141CAC(uint64_t a1)
{
  sub_141D14(a1 - 48);

  operator delete();
}

uint64_t sub_141D14(uint64_t a1)
{
  *a1 = off_2635C78;
  *(a1 + 48) = off_2635CD8;
  if (*(a1 + 72))
  {
    operator delete();
  }

  v2 = *(a1 + 80);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    if (*v3)
    {
      v4 = *v3 - 1;
      *v3 = v4;
      if (!v4)
      {
        if (*(v3 + 16))
        {
          if (*(v3 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 96) = 0;
  }

  *a1 = off_26345A0;
  v5 = *(a1 + 16);
  if (v5 && *(a1 + 24) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 16) = 0;
  }

  v6 = *(a1 + 32);
  if (v6 && *(a1 + 40) == 1)
  {
    (*(*v6 + 8))(v6);
    *(a1 + 32) = 0;
  }

  return a1;
}

double sub_141EBC(double *a1, double *a2)
{
  result = 0.0;
  if (*a1 >= *a2)
  {
    return 1.0;
  }

  return result;
}

void sub_141ED8(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  *a1 = off_26345A0;
  *(a1 + 8) = *a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (a3)
  {
    v7 = (*(*a3 + 32))(a3) != 17 && (*(*a3 + 32))(a3) != 18;
    *(a1 + 16) = a3;
    *(a1 + 24) = v7;
  }

  if (a4)
  {
    v8 = (*(*a4 + 32))(a4) != 17 && (*(*a4 + 32))(a4) != 18;
    *(a1 + 32) = a4;
    *(a1 + 40) = v8;
  }

  *a1 = off_2635D60;
  *(a1 + 48) = off_2635DC0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  operator new();
}

void sub_1427DC(_Unwind_Exception *a1)
{
  sub_F5710(v2);
  sub_12A624(v1);
  _Unwind_Resume(a1);
}

void sub_14287C(uint64_t a1)
{
  sub_142E9C(a1);

  operator delete();
}

double sub_1428B4(uint64_t a1)
{
  if (*(a1 + 88) != 1)
  {
    return NAN;
  }

  (*(**(a1 + 16) + 16))(*(a1 + 16));
  (*(**(a1 + 32) + 16))(*(a1 + 32));
  v2 = *(*(*(**(a1 + 56) + 64))(*(a1 + 56)) + 16);
  v3 = *(*(*(**(a1 + 64) + 64))(*(a1 + 64)) + 16);
  v4 = *(*(*(*a1 + 72))(a1) + 16);
  v5 = (*(*a1 + 56))(a1);
  if ((v5 & 0xF) != 0)
  {
    v6 = -16;
  }

  else
  {
    v6 = 0;
  }

  v7 = 8 * (v6 + v5);
  if (v7 >= 1)
  {
    v8 = &v4[v7 / 8];
    do
    {
      if (*v2 == *v3)
      {
        v9 = 1.0;
      }

      else
      {
        v9 = 0.0;
      }

      *v4 = v9;
      if (v2[1] == v3[1])
      {
        v10 = 1.0;
      }

      else
      {
        v10 = 0.0;
      }

      v4[1] = v10;
      if (v2[2] == v3[2])
      {
        v11 = 1.0;
      }

      else
      {
        v11 = 0.0;
      }

      v4[2] = v11;
      if (v2[3] == v3[3])
      {
        v12 = 1.0;
      }

      else
      {
        v12 = 0.0;
      }

      v4[3] = v12;
      if (v2[4] == v3[4])
      {
        v13 = 1.0;
      }

      else
      {
        v13 = 0.0;
      }

      v4[4] = v13;
      if (v2[5] == v3[5])
      {
        v14 = 1.0;
      }

      else
      {
        v14 = 0.0;
      }

      v4[5] = v14;
      if (v2[6] == v3[6])
      {
        v15 = 1.0;
      }

      else
      {
        v15 = 0.0;
      }

      v4[6] = v15;
      if (v2[7] == v3[7])
      {
        v16 = 1.0;
      }

      else
      {
        v16 = 0.0;
      }

      v4[7] = v16;
      if (v2[8] == v3[8])
      {
        v17 = 1.0;
      }

      else
      {
        v17 = 0.0;
      }

      v4[8] = v17;
      if (v2[9] == v3[9])
      {
        v18 = 1.0;
      }

      else
      {
        v18 = 0.0;
      }

      v4[9] = v18;
      if (v2[10] == v3[10])
      {
        v19 = 1.0;
      }

      else
      {
        v19 = 0.0;
      }

      v4[10] = v19;
      if (v2[11] == v3[11])
      {
        v20 = 1.0;
      }

      else
      {
        v20 = 0.0;
      }

      v4[11] = v20;
      if (v2[12] == v3[12])
      {
        v21 = 1.0;
      }

      else
      {
        v21 = 0.0;
      }

      v4[12] = v21;
      if (v2[13] == v3[13])
      {
        v22 = 1.0;
      }

      else
      {
        v22 = 0.0;
      }

      v4[13] = v22;
      if (v2[14] == v3[14])
      {
        v23 = 1.0;
      }

      else
      {
        v23 = 0.0;
      }

      v4[14] = v23;
      if (v2[15] == v3[15])
      {
        v24 = 1.0;
      }

      else
      {
        v24 = 0.0;
      }

      v4[15] = v24;
      v2 += 16;
      v3 += 16;
      v4 += 16;
    }

    while (v4 < v8);
  }

  v25 = 0;
  v26 = 0;
  switch(v5 & 0xF)
  {
    case 1:
      goto LABEL_99;
    case 2:
      goto LABEL_96;
    case 3:
      goto LABEL_93;
    case 4:
      goto LABEL_90;
    case 5:
      goto LABEL_87;
    case 6:
      goto LABEL_84;
    case 7:
      goto LABEL_81;
    case 8:
      goto LABEL_78;
    case 9:
      goto LABEL_75;
    case 0xA:
      goto LABEL_72;
    case 0xB:
      goto LABEL_69;
    case 0xC:
      goto LABEL_66;
    case 0xD:
      goto LABEL_63;
    case 0xE:
      goto LABEL_60;
    case 0xF:
      v27 = 0.0;
      if (*v2 == *v3)
      {
        v27 = 1.0;
      }

      *v4 = v27;
      v26 = 1;
LABEL_60:
      v28 = 0.0;
      if (v2[v26] == v3[v26])
      {
        v28 = 1.0;
      }

      v4[v26++] = v28;
LABEL_63:
      v29 = 0.0;
      if (v2[v26] == v3[v26])
      {
        v29 = 1.0;
      }

      v4[v26++] = v29;
LABEL_66:
      v30 = 0.0;
      if (v2[v26] == v3[v26])
      {
        v30 = 1.0;
      }

      v4[v26++] = v30;
LABEL_69:
      v31 = 0.0;
      if (v2[v26] == v3[v26])
      {
        v31 = 1.0;
      }

      v4[v26++] = v31;
LABEL_72:
      v32 = 0.0;
      if (v2[v26] == v3[v26])
      {
        v32 = 1.0;
      }

      v4[v26++] = v32;
LABEL_75:
      v33 = 0.0;
      if (v2[v26] == v3[v26])
      {
        v33 = 1.0;
      }

      v4[v26++] = v33;
LABEL_78:
      v34 = 0.0;
      if (v2[v26] == v3[v26])
      {
        v34 = 1.0;
      }

      v4[v26++] = v34;
LABEL_81:
      v35 = 0.0;
      if (v2[v26] == v3[v26])
      {
        v35 = 1.0;
      }

      v4[v26++] = v35;
LABEL_84:
      v36 = 0.0;
      if (v2[v26] == v3[v26])
      {
        v36 = 1.0;
      }

      v4[v26++] = v36;
LABEL_87:
      v37 = 0.0;
      if (v2[v26] == v3[v26])
      {
        v37 = 1.0;
      }

      v4[v26++] = v37;
LABEL_90:
      v38 = 0.0;
      if (v2[v26] == v3[v26])
      {
        v38 = 1.0;
      }

      v4[v26++] = v38;
LABEL_93:
      v39 = 0.0;
      if (v2[v26] == v3[v26])
      {
        v39 = 1.0;
      }

      v4[v26++] = v39;
LABEL_96:
      v40 = 0.0;
      if (v2[v26] == v3[v26])
      {
        v40 = 1.0;
      }

      v4[v26] = v40;
      v25 = v26 + 1;
LABEL_99:
      v41 = 0.0;
      if (v2[v25] == v3[v25])
      {
        v41 = 1.0;
      }

      v4[v25] = v41;
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_142E34(uint64_t a1)
{
  sub_142E9C(a1 - 48);

  operator delete();
}

uint64_t sub_142E9C(uint64_t a1)
{
  *a1 = off_2635D60;
  *(a1 + 48) = off_2635DC0;
  if (*(a1 + 72))
  {
    operator delete();
  }

  v2 = *(a1 + 80);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    if (*v3)
    {
      v4 = *v3 - 1;
      *v3 = v4;
      if (!v4)
      {
        if (*(v3 + 16))
        {
          if (*(v3 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 96) = 0;
  }

  *a1 = off_26345A0;
  v5 = *(a1 + 16);
  if (v5 && *(a1 + 24) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 16) = 0;
  }

  v6 = *(a1 + 32);
  if (v6 && *(a1 + 40) == 1)
  {
    (*(*v6 + 8))(v6);
    *(a1 + 32) = 0;
  }

  return a1;
}

double sub_143044(double *a1, double *a2)
{
  result = 0.0;
  if (*a1 == *a2)
  {
    return 1.0;
  }

  return result;
}

void sub_143060(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  *a1 = off_26345A0;
  *(a1 + 8) = *a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (a3)
  {
    v7 = (*(*a3 + 32))(a3) != 17 && (*(*a3 + 32))(a3) != 18;
    *(a1 + 16) = a3;
    *(a1 + 24) = v7;
  }

  if (a4)
  {
    v8 = (*(*a4 + 32))(a4) != 17 && (*(*a4 + 32))(a4) != 18;
    *(a1 + 32) = a4;
    *(a1 + 40) = v8;
  }

  *a1 = off_2635E48;
  *(a1 + 48) = off_2635EA8;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  operator new();
}

void sub_143964(_Unwind_Exception *a1)
{
  sub_F5710(v2);
  sub_12A624(v1);
  _Unwind_Resume(a1);
}

void sub_143A04(uint64_t a1)
{
  sub_144024(a1);

  operator delete();
}

double sub_143A3C(uint64_t a1)
{
  if (*(a1 + 88) != 1)
  {
    return NAN;
  }

  (*(**(a1 + 16) + 16))(*(a1 + 16));
  (*(**(a1 + 32) + 16))(*(a1 + 32));
  v2 = *(*(*(**(a1 + 56) + 64))(*(a1 + 56)) + 16);
  v3 = *(*(*(**(a1 + 64) + 64))(*(a1 + 64)) + 16);
  v4 = *(*(*(*a1 + 72))(a1) + 16);
  v5 = (*(*a1 + 56))(a1);
  if ((v5 & 0xF) != 0)
  {
    v6 = -16;
  }

  else
  {
    v6 = 0;
  }

  v7 = 8 * (v6 + v5);
  if (v7 >= 1)
  {
    v8 = &v4[v7 / 8];
    do
    {
      if (*v2 == *v3)
      {
        v9 = 0.0;
      }

      else
      {
        v9 = 1.0;
      }

      *v4 = v9;
      if (v2[1] == v3[1])
      {
        v10 = 0.0;
      }

      else
      {
        v10 = 1.0;
      }

      v4[1] = v10;
      if (v2[2] == v3[2])
      {
        v11 = 0.0;
      }

      else
      {
        v11 = 1.0;
      }

      v4[2] = v11;
      if (v2[3] == v3[3])
      {
        v12 = 0.0;
      }

      else
      {
        v12 = 1.0;
      }

      v4[3] = v12;
      if (v2[4] == v3[4])
      {
        v13 = 0.0;
      }

      else
      {
        v13 = 1.0;
      }

      v4[4] = v13;
      if (v2[5] == v3[5])
      {
        v14 = 0.0;
      }

      else
      {
        v14 = 1.0;
      }

      v4[5] = v14;
      if (v2[6] == v3[6])
      {
        v15 = 0.0;
      }

      else
      {
        v15 = 1.0;
      }

      v4[6] = v15;
      if (v2[7] == v3[7])
      {
        v16 = 0.0;
      }

      else
      {
        v16 = 1.0;
      }

      v4[7] = v16;
      if (v2[8] == v3[8])
      {
        v17 = 0.0;
      }

      else
      {
        v17 = 1.0;
      }

      v4[8] = v17;
      if (v2[9] == v3[9])
      {
        v18 = 0.0;
      }

      else
      {
        v18 = 1.0;
      }

      v4[9] = v18;
      if (v2[10] == v3[10])
      {
        v19 = 0.0;
      }

      else
      {
        v19 = 1.0;
      }

      v4[10] = v19;
      if (v2[11] == v3[11])
      {
        v20 = 0.0;
      }

      else
      {
        v20 = 1.0;
      }

      v4[11] = v20;
      if (v2[12] == v3[12])
      {
        v21 = 0.0;
      }

      else
      {
        v21 = 1.0;
      }

      v4[12] = v21;
      if (v2[13] == v3[13])
      {
        v22 = 0.0;
      }

      else
      {
        v22 = 1.0;
      }

      v4[13] = v22;
      if (v2[14] == v3[14])
      {
        v23 = 0.0;
      }

      else
      {
        v23 = 1.0;
      }

      v4[14] = v23;
      if (v2[15] == v3[15])
      {
        v24 = 0.0;
      }

      else
      {
        v24 = 1.0;
      }

      v4[15] = v24;
      v2 += 16;
      v3 += 16;
      v4 += 16;
    }

    while (v4 < v8);
  }

  v25 = 0;
  v26 = 0;
  switch(v5 & 0xF)
  {
    case 1:
      goto LABEL_99;
    case 2:
      goto LABEL_96;
    case 3:
      goto LABEL_93;
    case 4:
      goto LABEL_90;
    case 5:
      goto LABEL_87;
    case 6:
      goto LABEL_84;
    case 7:
      goto LABEL_81;
    case 8:
      goto LABEL_78;
    case 9:
      goto LABEL_75;
    case 0xA:
      goto LABEL_72;
    case 0xB:
      goto LABEL_69;
    case 0xC:
      goto LABEL_66;
    case 0xD:
      goto LABEL_63;
    case 0xE:
      goto LABEL_60;
    case 0xF:
      v27 = 0.0;
      if (*v2 != *v3)
      {
        v27 = 1.0;
      }

      *v4 = v27;
      v26 = 1;
LABEL_60:
      v28 = 0.0;
      if (v2[v26] != v3[v26])
      {
        v28 = 1.0;
      }

      v4[v26++] = v28;
LABEL_63:
      v29 = 0.0;
      if (v2[v26] != v3[v26])
      {
        v29 = 1.0;
      }

      v4[v26++] = v29;
LABEL_66:
      v30 = 0.0;
      if (v2[v26] != v3[v26])
      {
        v30 = 1.0;
      }

      v4[v26++] = v30;
LABEL_69:
      v31 = 0.0;
      if (v2[v26] != v3[v26])
      {
        v31 = 1.0;
      }

      v4[v26++] = v31;
LABEL_72:
      v32 = 0.0;
      if (v2[v26] != v3[v26])
      {
        v32 = 1.0;
      }

      v4[v26++] = v32;
LABEL_75:
      v33 = 0.0;
      if (v2[v26] != v3[v26])
      {
        v33 = 1.0;
      }

      v4[v26++] = v33;
LABEL_78:
      v34 = 0.0;
      if (v2[v26] != v3[v26])
      {
        v34 = 1.0;
      }

      v4[v26++] = v34;
LABEL_81:
      v35 = 0.0;
      if (v2[v26] != v3[v26])
      {
        v35 = 1.0;
      }

      v4[v26++] = v35;
LABEL_84:
      v36 = 0.0;
      if (v2[v26] != v3[v26])
      {
        v36 = 1.0;
      }

      v4[v26++] = v36;
LABEL_87:
      v37 = 0.0;
      if (v2[v26] != v3[v26])
      {
        v37 = 1.0;
      }

      v4[v26++] = v37;
LABEL_90:
      v38 = 0.0;
      if (v2[v26] != v3[v26])
      {
        v38 = 1.0;
      }

      v4[v26++] = v38;
LABEL_93:
      v39 = 0.0;
      if (v2[v26] != v3[v26])
      {
        v39 = 1.0;
      }

      v4[v26++] = v39;
LABEL_96:
      v40 = 0.0;
      if (v2[v26] != v3[v26])
      {
        v40 = 1.0;
      }

      v4[v26] = v40;
      v25 = v26 + 1;
LABEL_99:
      v41 = 0.0;
      if (v2[v25] != v3[v25])
      {
        v41 = 1.0;
      }

      v4[v25] = v41;
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_143FBC(uint64_t a1)
{
  sub_144024(a1 - 48);

  operator delete();
}

uint64_t sub_144024(uint64_t a1)
{
  *a1 = off_2635E48;
  *(a1 + 48) = off_2635EA8;
  if (*(a1 + 72))
  {
    operator delete();
  }

  v2 = *(a1 + 80);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    if (*v3)
    {
      v4 = *v3 - 1;
      *v3 = v4;
      if (!v4)
      {
        if (*(v3 + 16))
        {
          if (*(v3 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 96) = 0;
  }

  *a1 = off_26345A0;
  v5 = *(a1 + 16);
  if (v5 && *(a1 + 24) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 16) = 0;
  }

  v6 = *(a1 + 32);
  if (v6 && *(a1 + 40) == 1)
  {
    (*(*v6 + 8))(v6);
    *(a1 + 32) = 0;
  }

  return a1;
}

double sub_1441CC(double *a1, double *a2)
{
  result = 0.0;
  if (*a1 != *a2)
  {
    return 1.0;
  }

  return result;
}

void sub_1441E8(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  *a1 = off_26345A0;
  *(a1 + 8) = *a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (a3)
  {
    v7 = (*(*a3 + 32))(a3) != 17 && (*(*a3 + 32))(a3) != 18;
    *(a1 + 16) = a3;
    *(a1 + 24) = v7;
  }

  if (a4)
  {
    v8 = (*(*a4 + 32))(a4) != 17 && (*(*a4 + 32))(a4) != 18;
    *(a1 + 32) = a4;
    *(a1 + 40) = v8;
  }

  *a1 = off_2635F30;
  *(a1 + 48) = off_2635F90;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  operator new();
}

void sub_144AEC(_Unwind_Exception *a1)
{
  sub_F5710(v2);
  sub_12A624(v1);
  _Unwind_Resume(a1);
}

void sub_144B8C(uint64_t a1)
{
  sub_1458B8(a1);

  operator delete();
}

double sub_144BC4(uint64_t a1)
{
  if (*(a1 + 88) != 1)
  {
    return NAN;
  }

  (*(**(a1 + 16) + 16))(*(a1 + 16));
  (*(**(a1 + 32) + 16))(*(a1 + 32));
  v2 = *(*(*(**(a1 + 56) + 64))(*(a1 + 56)) + 16);
  v3 = *(*(*(**(a1 + 64) + 64))(*(a1 + 64)) + 16);
  v4 = *(*(*(*a1 + 72))(a1) + 16);
  v5 = (*(*a1 + 56))(a1);
  if ((v5 & 0xF) != 0)
  {
    v6 = -16;
  }

  else
  {
    v6 = 0;
  }

  v7 = 8 * (v6 + v5);
  if (v7 >= 1)
  {
    v8 = &v4[v7 / 8];
    do
    {
      v9 = *v2;
      v10 = *v3;
      v11 = *v2 - *v3;
      if (v11 < 0.0)
      {
        v11 = -v11;
      }

      if (v9 < 0.0)
      {
        v9 = -v9;
      }

      if (v10 < 0.0)
      {
        v10 = -v10;
      }

      if (v9 < v10)
      {
        v9 = v10;
      }

      if (v11 > fmax(v9, 1.0) * 1.0e-10)
      {
        v12 = 0.0;
      }

      else
      {
        v12 = 1.0;
      }

      *v4 = v12;
      v13 = v2[1];
      v14 = v3[1];
      v15 = v13 - v14;
      if (v13 - v14 < 0.0)
      {
        v15 = -(v13 - v14);
      }

      if (v13 < 0.0)
      {
        v13 = -v13;
      }

      if (v14 < 0.0)
      {
        v14 = -v14;
      }

      if (v13 < v14)
      {
        v13 = v14;
      }

      if (v15 > fmax(v13, 1.0) * 1.0e-10)
      {
        v16 = 0.0;
      }

      else
      {
        v16 = 1.0;
      }

      v4[1] = v16;
      v17 = v2[2];
      v18 = v3[2];
      v19 = v17 - v18;
      if (v17 - v18 < 0.0)
      {
        v19 = -(v17 - v18);
      }

      if (v17 < 0.0)
      {
        v17 = -v17;
      }

      if (v18 < 0.0)
      {
        v18 = -v18;
      }

      if (v17 < v18)
      {
        v17 = v18;
      }

      if (v19 > fmax(v17, 1.0) * 1.0e-10)
      {
        v20 = 0.0;
      }

      else
      {
        v20 = 1.0;
      }

      v4[2] = v20;
      v21 = v2[3];
      v22 = v3[3];
      v23 = v21 - v22;
      if (v21 - v22 < 0.0)
      {
        v23 = -(v21 - v22);
      }

      if (v21 < 0.0)
      {
        v21 = -v21;
      }

      if (v22 < 0.0)
      {
        v22 = -v22;
      }

      if (v21 < v22)
      {
        v21 = v22;
      }

      if (v23 > fmax(v21, 1.0) * 1.0e-10)
      {
        v24 = 0.0;
      }

      else
      {
        v24 = 1.0;
      }

      v4[3] = v24;
      v25 = v2[4];
      v26 = v3[4];
      v27 = v25 - v26;
      if (v25 - v26 < 0.0)
      {
        v27 = -(v25 - v26);
      }

      if (v25 < 0.0)
      {
        v25 = -v25;
      }

      if (v26 < 0.0)
      {
        v26 = -v26;
      }

      if (v25 < v26)
      {
        v25 = v26;
      }

      if (v27 > fmax(v25, 1.0) * 1.0e-10)
      {
        v28 = 0.0;
      }

      else
      {
        v28 = 1.0;
      }

      v4[4] = v28;
      v29 = v2[5];
      v30 = v3[5];
      v31 = v29 - v30;
      if (v29 - v30 < 0.0)
      {
        v31 = -(v29 - v30);
      }

      if (v29 < 0.0)
      {
        v29 = -v29;
      }

      if (v30 < 0.0)
      {
        v30 = -v30;
      }

      if (v29 < v30)
      {
        v29 = v30;
      }

      if (v31 > fmax(v29, 1.0) * 1.0e-10)
      {
        v32 = 0.0;
      }

      else
      {
        v32 = 1.0;
      }

      v4[5] = v32;
      v33 = v2[6];
      v34 = v3[6];
      v35 = v33 - v34;
      if (v33 - v34 < 0.0)
      {
        v35 = -(v33 - v34);
      }

      if (v33 < 0.0)
      {
        v33 = -v33;
      }

      if (v34 < 0.0)
      {
        v34 = -v34;
      }

      if (v33 < v34)
      {
        v33 = v34;
      }

      if (v35 > fmax(v33, 1.0) * 1.0e-10)
      {
        v36 = 0.0;
      }

      else
      {
        v36 = 1.0;
      }

      v4[6] = v36;
      v37 = v2[7];
      v38 = v3[7];
      v39 = v37 - v38;
      if (v37 - v38 < 0.0)
      {
        v39 = -(v37 - v38);
      }

      if (v37 < 0.0)
      {
        v37 = -v37;
      }

      if (v38 < 0.0)
      {
        v38 = -v38;
      }

      if (v37 < v38)
      {
        v37 = v38;
      }

      if (v39 > fmax(v37, 1.0) * 1.0e-10)
      {
        v40 = 0.0;
      }

      else
      {
        v40 = 1.0;
      }

      v4[7] = v40;
      v41 = v2[8];
      v42 = v3[8];
      v43 = v41 - v42;
      if (v41 - v42 < 0.0)
      {
        v43 = -(v41 - v42);
      }

      if (v41 < 0.0)
      {
        v41 = -v41;
      }

      if (v42 < 0.0)
      {
        v42 = -v42;
      }

      if (v41 < v42)
      {
        v41 = v42;
      }

      if (v43 > fmax(v41, 1.0) * 1.0e-10)
      {
        v44 = 0.0;
      }

      else
      {
        v44 = 1.0;
      }

      v4[8] = v44;
      v45 = v2[9];
      v46 = v3[9];
      v47 = v45 - v46;
      if (v45 - v46 < 0.0)
      {
        v47 = -(v45 - v46);
      }

      if (v45 < 0.0)
      {
        v45 = -v45;
      }

      if (v46 < 0.0)
      {
        v46 = -v46;
      }

      if (v45 < v46)
      {
        v45 = v46;
      }

      if (v47 > fmax(v45, 1.0) * 1.0e-10)
      {
        v48 = 0.0;
      }

      else
      {
        v48 = 1.0;
      }

      v4[9] = v48;
      v49 = v2[10];
      v50 = v3[10];
      v51 = v49 - v50;
      if (v49 - v50 < 0.0)
      {
        v51 = -(v49 - v50);
      }

      if (v49 < 0.0)
      {
        v49 = -v49;
      }

      if (v50 < 0.0)
      {
        v50 = -v50;
      }

      if (v49 < v50)
      {
        v49 = v50;
      }

      if (v51 > fmax(v49, 1.0) * 1.0e-10)
      {
        v52 = 0.0;
      }

      else
      {
        v52 = 1.0;
      }

      v4[10] = v52;
      v53 = v2[11];
      v54 = v3[11];
      v55 = v53 - v54;
      if (v53 - v54 < 0.0)
      {
        v55 = -(v53 - v54);
      }

      if (v53 < 0.0)
      {
        v53 = -v53;
      }

      if (v54 < 0.0)
      {
        v54 = -v54;
      }

      if (v53 < v54)
      {
        v53 = v54;
      }

      if (v55 > fmax(v53, 1.0) * 1.0e-10)
      {
        v56 = 0.0;
      }

      else
      {
        v56 = 1.0;
      }

      v4[11] = v56;
      v57 = v2[12];
      v58 = v3[12];
      v59 = v57 - v58;
      if (v57 - v58 < 0.0)
      {
        v59 = -(v57 - v58);
      }

      if (v57 < 0.0)
      {
        v57 = -v57;
      }

      if (v58 < 0.0)
      {
        v58 = -v58;
      }

      if (v57 < v58)
      {
        v57 = v58;
      }

      if (v59 > fmax(v57, 1.0) * 1.0e-10)
      {
        v60 = 0.0;
      }

      else
      {
        v60 = 1.0;
      }

      v4[12] = v60;
      v61 = v2[13];
      v62 = v3[13];
      v63 = v61 - v62;
      if (v61 - v62 < 0.0)
      {
        v63 = -(v61 - v62);
      }

      if (v61 < 0.0)
      {
        v61 = -v61;
      }

      if (v62 < 0.0)
      {
        v62 = -v62;
      }

      if (v61 < v62)
      {
        v61 = v62;
      }

      if (v63 > fmax(v61, 1.0) * 1.0e-10)
      {
        v64 = 0.0;
      }

      else
      {
        v64 = 1.0;
      }

      v4[13] = v64;
      v65 = v2[14];
      v66 = v3[14];
      v67 = v65 - v66;
      if (v65 - v66 < 0.0)
      {
        v67 = -(v65 - v66);
      }

      if (v65 < 0.0)
      {
        v65 = -v65;
      }

      if (v66 < 0.0)
      {
        v66 = -v66;
      }

      if (v65 < v66)
      {
        v65 = v66;
      }

      if (v67 > fmax(v65, 1.0) * 1.0e-10)
      {
        v68 = 0.0;
      }

      else
      {
        v68 = 1.0;
      }

      v4[14] = v68;
      v69 = v2[15];
      v70 = v3[15];
      v71 = v69 - v70;
      if (v69 - v70 < 0.0)
      {
        v71 = -(v69 - v70);
      }

      if (v69 < 0.0)
      {
        v69 = -v69;
      }

      if (v70 < 0.0)
      {
        v70 = -v70;
      }

      if (v69 < v70)
      {
        v69 = v70;
      }

      if (v71 > fmax(v69, 1.0) * 1.0e-10)
      {
        v72 = 0.0;
      }

      else
      {
        v72 = 1.0;
      }

      v4[15] = v72;
      v2 += 16;
      v3 += 16;
      v4 += 16;
    }

    while (v4 < v8);
  }

  v73 = 0;
  v74 = 0;
  switch(v5 & 0xF)
  {
    case 1:
      goto LABEL_339;
    case 2:
      goto LABEL_328;
    case 3:
      goto LABEL_317;
    case 4:
      goto LABEL_306;
    case 5:
      goto LABEL_295;
    case 6:
      goto LABEL_284;
    case 7:
      goto LABEL_273;
    case 8:
      goto LABEL_262;
    case 9:
      goto LABEL_251;
    case 0xA:
      goto LABEL_240;
    case 0xB:
      goto LABEL_229;
    case 0xC:
      goto LABEL_218;
    case 0xD:
      goto LABEL_207;
    case 0xE:
      goto LABEL_196;
    case 0xF:
      v75 = *v2;
      v76 = *v3;
      v77 = *v2 - *v3;
      if (v77 < 0.0)
      {
        v77 = -v77;
      }

      if (v75 < 0.0)
      {
        v75 = -v75;
      }

      if (v76 < 0.0)
      {
        v76 = -v76;
      }

      if (v75 < v76)
      {
        v75 = v76;
      }

      v78 = v77 > fmax(v75, 1.0) * 1.0e-10;
      v79 = 0.0;
      if (!v78)
      {
        v79 = 1.0;
      }

      *v4 = v79;
      v74 = 1;
LABEL_196:
      v80 = v2[v74];
      v81 = v3[v74];
      v82 = v80 - v81;
      if (v80 - v81 < 0.0)
      {
        v82 = -(v80 - v81);
      }

      if (v80 < 0.0)
      {
        v80 = -v80;
      }

      if (v81 < 0.0)
      {
        v81 = -v81;
      }

      if (v80 < v81)
      {
        v80 = v81;
      }

      v78 = v82 > fmax(v80, 1.0) * 1.0e-10;
      v83 = 0.0;
      if (!v78)
      {
        v83 = 1.0;
      }

      v4[v74++] = v83;
LABEL_207:
      v84 = v2[v74];
      v85 = v3[v74];
      v86 = v84 - v85;
      if (v84 - v85 < 0.0)
      {
        v86 = -(v84 - v85);
      }

      if (v84 < 0.0)
      {
        v84 = -v84;
      }

      if (v85 < 0.0)
      {
        v85 = -v85;
      }

      if (v84 < v85)
      {
        v84 = v85;
      }

      v78 = v86 > fmax(v84, 1.0) * 1.0e-10;
      v87 = 0.0;
      if (!v78)
      {
        v87 = 1.0;
      }

      v4[v74++] = v87;
LABEL_218:
      v88 = v2[v74];
      v89 = v3[v74];
      v90 = v88 - v89;
      if (v88 - v89 < 0.0)
      {
        v90 = -(v88 - v89);
      }

      if (v88 < 0.0)
      {
        v88 = -v88;
      }

      if (v89 < 0.0)
      {
        v89 = -v89;
      }

      if (v88 < v89)
      {
        v88 = v89;
      }

      v78 = v90 > fmax(v88, 1.0) * 1.0e-10;
      v91 = 0.0;
      if (!v78)
      {
        v91 = 1.0;
      }

      v4[v74++] = v91;
LABEL_229:
      v92 = v2[v74];
      v93 = v3[v74];
      v94 = v92 - v93;
      if (v92 - v93 < 0.0)
      {
        v94 = -(v92 - v93);
      }

      if (v92 < 0.0)
      {
        v92 = -v92;
      }

      if (v93 < 0.0)
      {
        v93 = -v93;
      }

      if (v92 < v93)
      {
        v92 = v93;
      }

      v78 = v94 > fmax(v92, 1.0) * 1.0e-10;
      v95 = 0.0;
      if (!v78)
      {
        v95 = 1.0;
      }

      v4[v74++] = v95;
LABEL_240:
      v96 = v2[v74];
      v97 = v3[v74];
      v98 = v96 - v97;
      if (v96 - v97 < 0.0)
      {
        v98 = -(v96 - v97);
      }

      if (v96 < 0.0)
      {
        v96 = -v96;
      }

      if (v97 < 0.0)
      {
        v97 = -v97;
      }

      if (v96 < v97)
      {
        v96 = v97;
      }

      v78 = v98 > fmax(v96, 1.0) * 1.0e-10;
      v99 = 0.0;
      if (!v78)
      {
        v99 = 1.0;
      }

      v4[v74++] = v99;
LABEL_251:
      v100 = v2[v74];
      v101 = v3[v74];
      v102 = v100 - v101;
      if (v100 - v101 < 0.0)
      {
        v102 = -(v100 - v101);
      }

      if (v100 < 0.0)
      {
        v100 = -v100;
      }

      if (v101 < 0.0)
      {
        v101 = -v101;
      }

      if (v100 < v101)
      {
        v100 = v101;
      }

      v78 = v102 > fmax(v100, 1.0) * 1.0e-10;
      v103 = 0.0;
      if (!v78)
      {
        v103 = 1.0;
      }

      v4[v74++] = v103;
LABEL_262:
      v104 = v2[v74];
      v105 = v3[v74];
      v106 = v104 - v105;
      if (v104 - v105 < 0.0)
      {
        v106 = -(v104 - v105);
      }

      if (v104 < 0.0)
      {
        v104 = -v104;
      }

      if (v105 < 0.0)
      {
        v105 = -v105;
      }

      if (v104 < v105)
      {
        v104 = v105;
      }

      v78 = v106 > fmax(v104, 1.0) * 1.0e-10;
      v107 = 0.0;
      if (!v78)
      {
        v107 = 1.0;
      }

      v4[v74++] = v107;
LABEL_273:
      v108 = v2[v74];
      v109 = v3[v74];
      v110 = v108 - v109;
      if (v108 - v109 < 0.0)
      {
        v110 = -(v108 - v109);
      }

      if (v108 < 0.0)
      {
        v108 = -v108;
      }

      if (v109 < 0.0)
      {
        v109 = -v109;
      }

      if (v108 < v109)
      {
        v108 = v109;
      }

      v78 = v110 > fmax(v108, 1.0) * 1.0e-10;
      v111 = 0.0;
      if (!v78)
      {
        v111 = 1.0;
      }

      v4[v74++] = v111;
LABEL_284:
      v112 = v2[v74];
      v113 = v3[v74];
      v114 = v112 - v113;
      if (v112 - v113 < 0.0)
      {
        v114 = -(v112 - v113);
      }

      if (v112 < 0.0)
      {
        v112 = -v112;
      }

      if (v113 < 0.0)
      {
        v113 = -v113;
      }

      if (v112 < v113)
      {
        v112 = v113;
      }

      v78 = v114 > fmax(v112, 1.0) * 1.0e-10;
      v115 = 0.0;
      if (!v78)
      {
        v115 = 1.0;
      }

      v4[v74++] = v115;
LABEL_295:
      v116 = v2[v74];
      v117 = v3[v74];
      v118 = v116 - v117;
      if (v116 - v117 < 0.0)
      {
        v118 = -(v116 - v117);
      }

      if (v116 < 0.0)
      {
        v116 = -v116;
      }

      if (v117 < 0.0)
      {
        v117 = -v117;
      }

      if (v116 < v117)
      {
        v116 = v117;
      }

      v78 = v118 > fmax(v116, 1.0) * 1.0e-10;
      v119 = 0.0;
      if (!v78)
      {
        v119 = 1.0;
      }

      v4[v74++] = v119;
LABEL_306:
      v120 = v2[v74];
      v121 = v3[v74];
      v122 = v120 - v121;
      if (v120 - v121 < 0.0)
      {
        v122 = -(v120 - v121);
      }

      if (v120 < 0.0)
      {
        v120 = -v120;
      }

      if (v121 < 0.0)
      {
        v121 = -v121;
      }

      if (v120 < v121)
      {
        v120 = v121;
      }

      v78 = v122 > fmax(v120, 1.0) * 1.0e-10;
      v123 = 0.0;
      if (!v78)
      {
        v123 = 1.0;
      }

      v4[v74++] = v123;
LABEL_317:
      v124 = v2[v74];
      v125 = v3[v74];
      v126 = v124 - v125;
      if (v124 - v125 < 0.0)
      {
        v126 = -(v124 - v125);
      }

      if (v124 < 0.0)
      {
        v124 = -v124;
      }

      if (v125 < 0.0)
      {
        v125 = -v125;
      }

      if (v124 < v125)
      {
        v124 = v125;
      }

      v78 = v126 > fmax(v124, 1.0) * 1.0e-10;
      v127 = 0.0;
      if (!v78)
      {
        v127 = 1.0;
      }

      v4[v74++] = v127;
LABEL_328:
      v128 = v2[v74];
      v129 = v3[v74];
      v130 = v128 - v129;
      if (v128 - v129 < 0.0)
      {
        v130 = -(v128 - v129);
      }

      if (v128 < 0.0)
      {
        v128 = -v128;
      }

      if (v129 < 0.0)
      {
        v129 = -v129;
      }

      if (v128 < v129)
      {
        v128 = v129;
      }

      v78 = v130 > fmax(v128, 1.0) * 1.0e-10;
      v131 = 0.0;
      if (!v78)
      {
        v131 = 1.0;
      }

      v4[v74] = v131;
      v73 = v74 + 1;
LABEL_339:
      v132 = v2[v73];
      v133 = v3[v73];
      v134 = v132 - v133;
      if (v132 - v133 < 0.0)
      {
        v134 = -(v132 - v133);
      }

      if (v132 < 0.0)
      {
        v132 = -v132;
      }

      if (v133 < 0.0)
      {
        v133 = -v133;
      }

      if (v132 < v133)
      {
        v132 = v133;
      }

      v78 = v134 > fmax(v132, 1.0) * 1.0e-10;
      v135 = 0.0;
      if (!v78)
      {
        v135 = 1.0;
      }

      v4[v73] = v135;
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_145850(uint64_t a1)
{
  sub_1458B8(a1 - 48);

  operator delete();
}

uint64_t sub_1458B8(uint64_t a1)
{
  *a1 = off_2635F30;
  *(a1 + 48) = off_2635F90;
  if (*(a1 + 72))
  {
    operator delete();
  }

  v2 = *(a1 + 80);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    if (*v3)
    {
      v4 = *v3 - 1;
      *v3 = v4;
      if (!v4)
      {
        if (*(v3 + 16))
        {
          if (*(v3 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 96) = 0;
  }

  *a1 = off_26345A0;
  v5 = *(a1 + 16);
  if (v5 && *(a1 + 24) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 16) = 0;
  }

  v6 = *(a1 + 32);
  if (v6 && *(a1 + 40) == 1)
  {
    (*(*v6 + 8))(v6);
    *(a1 + 32) = 0;
  }

  return a1;
}

void sub_145A60(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  *a1 = off_26345A0;
  *(a1 + 8) = *a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (a3)
  {
    v7 = (*(*a3 + 32))(a3) != 17 && (*(*a3 + 32))(a3) != 18;
    *(a1 + 16) = a3;
    *(a1 + 24) = v7;
  }

  if (a4)
  {
    v8 = (*(*a4 + 32))(a4) != 17 && (*(*a4 + 32))(a4) != 18;
    *(a1 + 32) = a4;
    *(a1 + 40) = v8;
  }

  *a1 = off_2636018;
  *(a1 + 48) = off_2636078;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  operator new();
}

void sub_146364(_Unwind_Exception *a1)
{
  sub_F5710(v2);
  sub_12A624(v1);
  _Unwind_Resume(a1);
}

void sub_146404(uint64_t a1)
{
  sub_146AA0(a1);

  operator delete();
}

double sub_14643C(uint64_t a1)
{
  if (*(a1 + 88) != 1)
  {
    return NAN;
  }

  (*(**(a1 + 16) + 16))(*(a1 + 16));
  (*(**(a1 + 32) + 16))(*(a1 + 32));
  v2 = *(*(*(**(a1 + 56) + 64))(*(a1 + 56)) + 16);
  v3 = *(*(*(**(a1 + 64) + 64))(*(a1 + 64)) + 16);
  v4 = *(*(*(*a1 + 72))(a1) + 16);
  v5 = (*(*a1 + 56))(a1);
  if ((v5 & 0xF) != 0)
  {
    v6 = -16;
  }

  else
  {
    v6 = 0;
  }

  v7 = 8 * (v6 + v5);
  if (v7 >= 1)
  {
    v8 = &v4[v7 / 8];
    do
    {
      if (*v3 == 0.0 || *v2 == 0.0)
      {
        v10 = 0.0;
      }

      else
      {
        v10 = 1.0;
      }

      *v4 = v10;
      if (v3[1] == 0.0 || v2[1] == 0.0)
      {
        v12 = 0.0;
      }

      else
      {
        v12 = 1.0;
      }

      v4[1] = v12;
      if (v3[2] == 0.0 || v2[2] == 0.0)
      {
        v14 = 0.0;
      }

      else
      {
        v14 = 1.0;
      }

      v4[2] = v14;
      if (v3[3] == 0.0 || v2[3] == 0.0)
      {
        v16 = 0.0;
      }

      else
      {
        v16 = 1.0;
      }

      v4[3] = v16;
      if (v3[4] == 0.0 || v2[4] == 0.0)
      {
        v18 = 0.0;
      }

      else
      {
        v18 = 1.0;
      }

      v4[4] = v18;
      if (v3[5] == 0.0 || v2[5] == 0.0)
      {
        v20 = 0.0;
      }

      else
      {
        v20 = 1.0;
      }

      v4[5] = v20;
      if (v3[6] == 0.0 || v2[6] == 0.0)
      {
        v22 = 0.0;
      }

      else
      {
        v22 = 1.0;
      }

      v4[6] = v22;
      if (v3[7] == 0.0 || v2[7] == 0.0)
      {
        v24 = 0.0;
      }

      else
      {
        v24 = 1.0;
      }

      v4[7] = v24;
      if (v3[8] == 0.0 || v2[8] == 0.0)
      {
        v26 = 0.0;
      }

      else
      {
        v26 = 1.0;
      }

      v4[8] = v26;
      if (v3[9] == 0.0 || v2[9] == 0.0)
      {
        v28 = 0.0;
      }

      else
      {
        v28 = 1.0;
      }

      v4[9] = v28;
      if (v3[10] == 0.0 || v2[10] == 0.0)
      {
        v30 = 0.0;
      }

      else
      {
        v30 = 1.0;
      }

      v4[10] = v30;
      if (v3[11] == 0.0 || v2[11] == 0.0)
      {
        v32 = 0.0;
      }

      else
      {
        v32 = 1.0;
      }

      v4[11] = v32;
      if (v3[12] == 0.0 || v2[12] == 0.0)
      {
        v34 = 0.0;
      }

      else
      {
        v34 = 1.0;
      }

      v4[12] = v34;
      if (v3[13] == 0.0 || v2[13] == 0.0)
      {
        v36 = 0.0;
      }

      else
      {
        v36 = 1.0;
      }

      v4[13] = v36;
      if (v3[14] == 0.0 || v2[14] == 0.0)
      {
        v38 = 0.0;
      }

      else
      {
        v38 = 1.0;
      }

      v4[14] = v38;
      if (v3[15] == 0.0 || v2[15] == 0.0)
      {
        v40 = 0.0;
      }

      else
      {
        v40 = 1.0;
      }

      v4[15] = v40;
      v2 += 16;
      v3 += 16;
      v4 += 16;
    }

    while (v4 < v8);
  }

  v41 = 0;
  v42 = 0;
  switch(v5 & 0xF)
  {
    case 1:
      goto LABEL_203;
    case 2:
      goto LABEL_196;
    case 3:
      goto LABEL_189;
    case 4:
      goto LABEL_182;
    case 5:
      goto LABEL_175;
    case 6:
      goto LABEL_168;
    case 7:
      goto LABEL_161;
    case 8:
      goto LABEL_154;
    case 9:
      goto LABEL_147;
    case 0xA:
      goto LABEL_140;
    case 0xB:
      goto LABEL_133;
    case 0xC:
      goto LABEL_126;
    case 0xD:
      goto LABEL_119;
    case 0xE:
      goto LABEL_112;
    case 0xF:
      v43 = *v3 == 0.0 || *v2 == 0.0;
      v44 = 1.0;
      if (v43)
      {
        v44 = 0.0;
      }

      *v4 = v44;
      v42 = 1;
LABEL_112:
      v45 = v3[v42] == 0.0 || v2[v42] == 0.0;
      v46 = 1.0;
      if (v45)
      {
        v46 = 0.0;
      }

      v4[v42++] = v46;
LABEL_119:
      v47 = v3[v42] == 0.0 || v2[v42] == 0.0;
      v48 = 1.0;
      if (v47)
      {
        v48 = 0.0;
      }

      v4[v42++] = v48;
LABEL_126:
      v49 = v3[v42] == 0.0 || v2[v42] == 0.0;
      v50 = 1.0;
      if (v49)
      {
        v50 = 0.0;
      }

      v4[v42++] = v50;
LABEL_133:
      v51 = v3[v42] == 0.0 || v2[v42] == 0.0;
      v52 = 1.0;
      if (v51)
      {
        v52 = 0.0;
      }

      v4[v42++] = v52;
LABEL_140:
      v53 = v3[v42] == 0.0 || v2[v42] == 0.0;
      v54 = 1.0;
      if (v53)
      {
        v54 = 0.0;
      }

      v4[v42++] = v54;
LABEL_147:
      v55 = v3[v42] == 0.0 || v2[v42] == 0.0;
      v56 = 1.0;
      if (v55)
      {
        v56 = 0.0;
      }

      v4[v42++] = v56;
LABEL_154:
      v57 = v3[v42] == 0.0 || v2[v42] == 0.0;
      v58 = 1.0;
      if (v57)
      {
        v58 = 0.0;
      }

      v4[v42++] = v58;
LABEL_161:
      v59 = v3[v42] == 0.0 || v2[v42] == 0.0;
      v60 = 1.0;
      if (v59)
      {
        v60 = 0.0;
      }

      v4[v42++] = v60;
LABEL_168:
      v61 = v3[v42] == 0.0 || v2[v42] == 0.0;
      v62 = 1.0;
      if (v61)
      {
        v62 = 0.0;
      }

      v4[v42++] = v62;
LABEL_175:
      v63 = v3[v42] == 0.0 || v2[v42] == 0.0;
      v64 = 1.0;
      if (v63)
      {
        v64 = 0.0;
      }

      v4[v42++] = v64;
LABEL_182:
      v65 = v3[v42] == 0.0 || v2[v42] == 0.0;
      v66 = 1.0;
      if (v65)
      {
        v66 = 0.0;
      }

      v4[v42++] = v66;
LABEL_189:
      v67 = v3[v42] == 0.0 || v2[v42] == 0.0;
      v68 = 1.0;
      if (v67)
      {
        v68 = 0.0;
      }

      v4[v42++] = v68;
LABEL_196:
      v69 = v3[v42] == 0.0 || v2[v42] == 0.0;
      v70 = 1.0;
      if (v69)
      {
        v70 = 0.0;
      }

      v4[v42] = v70;
      v41 = v42 + 1;
LABEL_203:
      v71 = v3[v41] == 0.0 || v2[v41] == 0.0;
      v72 = 1.0;
      if (v71)
      {
        v72 = 0.0;
      }

      v4[v41] = v72;
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_146A38(uint64_t a1)
{
  sub_146AA0(a1 - 48);

  operator delete();
}

uint64_t sub_146AA0(uint64_t a1)
{
  *a1 = off_2636018;
  *(a1 + 48) = off_2636078;
  if (*(a1 + 72))
  {
    operator delete();
  }

  v2 = *(a1 + 80);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    if (*v3)
    {
      v4 = *v3 - 1;
      *v3 = v4;
      if (!v4)
      {
        if (*(v3 + 16))
        {
          if (*(v3 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 96) = 0;
  }

  *a1 = off_26345A0;
  v5 = *(a1 + 16);
  if (v5 && *(a1 + 24) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 16) = 0;
  }

  v6 = *(a1 + 32);
  if (v6 && *(a1 + 40) == 1)
  {
    (*(*v6 + 8))(v6);
    *(a1 + 32) = 0;
  }

  return a1;
}

double sub_146C48(double *a1, double *a2)
{
  v2 = *a2 == 0.0 || *a1 == 0.0;
  result = 1.0;
  if (v2)
  {
    return 0.0;
  }

  return result;
}

void sub_146C68(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  *a1 = off_26345A0;
  *(a1 + 8) = *a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (a3)
  {
    v7 = (*(*a3 + 32))(a3) != 17 && (*(*a3 + 32))(a3) != 18;
    *(a1 + 16) = a3;
    *(a1 + 24) = v7;
  }

  if (a4)
  {
    v8 = (*(*a4 + 32))(a4) != 17 && (*(*a4 + 32))(a4) != 18;
    *(a1 + 32) = a4;
    *(a1 + 40) = v8;
  }

  *a1 = off_2636100;
  *(a1 + 48) = off_2636160;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  operator new();
}

void sub_14756C(_Unwind_Exception *a1)
{
  sub_F5710(v2);
  sub_12A624(v1);
  _Unwind_Resume(a1);
}

void sub_14760C(uint64_t a1)
{
  sub_147CA8(a1);

  operator delete();
}

double sub_147644(uint64_t a1)
{
  if (*(a1 + 88) != 1)
  {
    return NAN;
  }

  (*(**(a1 + 16) + 16))(*(a1 + 16));
  (*(**(a1 + 32) + 16))(*(a1 + 32));
  v2 = *(*(*(**(a1 + 56) + 64))(*(a1 + 56)) + 16);
  v3 = *(*(*(**(a1 + 64) + 64))(*(a1 + 64)) + 16);
  v4 = *(*(*(*a1 + 72))(a1) + 16);
  v5 = (*(*a1 + 56))(a1);
  if ((v5 & 0xF) != 0)
  {
    v6 = -16;
  }

  else
  {
    v6 = 0;
  }

  v7 = 8 * (v6 + v5);
  if (v7 >= 1)
  {
    v8 = &v4[v7 / 8];
    do
    {
      if (*v3 == 0.0 || *v2 == 0.0)
      {
        v10 = 1.0;
      }

      else
      {
        v10 = 0.0;
      }

      *v4 = v10;
      if (v3[1] == 0.0 || v2[1] == 0.0)
      {
        v12 = 1.0;
      }

      else
      {
        v12 = 0.0;
      }

      v4[1] = v12;
      if (v3[2] == 0.0 || v2[2] == 0.0)
      {
        v14 = 1.0;
      }

      else
      {
        v14 = 0.0;
      }

      v4[2] = v14;
      if (v3[3] == 0.0 || v2[3] == 0.0)
      {
        v16 = 1.0;
      }

      else
      {
        v16 = 0.0;
      }

      v4[3] = v16;
      if (v3[4] == 0.0 || v2[4] == 0.0)
      {
        v18 = 1.0;
      }

      else
      {
        v18 = 0.0;
      }

      v4[4] = v18;
      if (v3[5] == 0.0 || v2[5] == 0.0)
      {
        v20 = 1.0;
      }

      else
      {
        v20 = 0.0;
      }

      v4[5] = v20;
      if (v3[6] == 0.0 || v2[6] == 0.0)
      {
        v22 = 1.0;
      }

      else
      {
        v22 = 0.0;
      }

      v4[6] = v22;
      if (v3[7] == 0.0 || v2[7] == 0.0)
      {
        v24 = 1.0;
      }

      else
      {
        v24 = 0.0;
      }

      v4[7] = v24;
      if (v3[8] == 0.0 || v2[8] == 0.0)
      {
        v26 = 1.0;
      }

      else
      {
        v26 = 0.0;
      }

      v4[8] = v26;
      if (v3[9] == 0.0 || v2[9] == 0.0)
      {
        v28 = 1.0;
      }

      else
      {
        v28 = 0.0;
      }

      v4[9] = v28;
      if (v3[10] == 0.0 || v2[10] == 0.0)
      {
        v30 = 1.0;
      }

      else
      {
        v30 = 0.0;
      }

      v4[10] = v30;
      if (v3[11] == 0.0 || v2[11] == 0.0)
      {
        v32 = 1.0;
      }

      else
      {
        v32 = 0.0;
      }

      v4[11] = v32;
      if (v3[12] == 0.0 || v2[12] == 0.0)
      {
        v34 = 1.0;
      }

      else
      {
        v34 = 0.0;
      }

      v4[12] = v34;
      if (v3[13] == 0.0 || v2[13] == 0.0)
      {
        v36 = 1.0;
      }

      else
      {
        v36 = 0.0;
      }

      v4[13] = v36;
      if (v3[14] == 0.0 || v2[14] == 0.0)
      {
        v38 = 1.0;
      }

      else
      {
        v38 = 0.0;
      }

      v4[14] = v38;
      if (v3[15] == 0.0 || v2[15] == 0.0)
      {
        v40 = 1.0;
      }

      else
      {
        v40 = 0.0;
      }

      v4[15] = v40;
      v2 += 16;
      v3 += 16;
      v4 += 16;
    }

    while (v4 < v8);
  }

  v41 = 0;
  v42 = 0;
  switch(v5 & 0xF)
  {
    case 1:
      goto LABEL_189;
    case 2:
      goto LABEL_183;
    case 3:
      goto LABEL_177;
    case 4:
      goto LABEL_171;
    case 5:
      goto LABEL_165;
    case 6:
      goto LABEL_159;
    case 7:
      goto LABEL_153;
    case 8:
      goto LABEL_147;
    case 9:
      goto LABEL_141;
    case 0xA:
      goto LABEL_135;
    case 0xB:
      goto LABEL_129;
    case 0xC:
      goto LABEL_123;
    case 0xD:
      goto LABEL_117;
    case 0xE:
      goto LABEL_111;
    case 0xF:
      v43 = *v3 == 0.0 || *v2 == 0.0;
      v44 = 1.0;
      if (!v43)
      {
        v44 = 0.0;
      }

      *v4 = v44;
      v42 = 1;
LABEL_111:
      v45 = v3[v42] == 0.0 || v2[v42] == 0.0;
      v46 = 1.0;
      if (!v45)
      {
        v46 = 0.0;
      }

      v4[v42++] = v46;
LABEL_117:
      v47 = v3[v42] == 0.0 || v2[v42] == 0.0;
      v48 = 1.0;
      if (!v47)
      {
        v48 = 0.0;
      }

      v4[v42++] = v48;
LABEL_123:
      v49 = v3[v42] == 0.0 || v2[v42] == 0.0;
      v50 = 1.0;
      if (!v49)
      {
        v50 = 0.0;
      }

      v4[v42++] = v50;
LABEL_129:
      v51 = v3[v42] == 0.0 || v2[v42] == 0.0;
      v52 = 1.0;
      if (!v51)
      {
        v52 = 0.0;
      }

      v4[v42++] = v52;
LABEL_135:
      v53 = v3[v42] == 0.0 || v2[v42] == 0.0;
      v54 = 1.0;
      if (!v53)
      {
        v54 = 0.0;
      }

      v4[v42++] = v54;
LABEL_141:
      v55 = v3[v42] == 0.0 || v2[v42] == 0.0;
      v56 = 1.0;
      if (!v55)
      {
        v56 = 0.0;
      }

      v4[v42++] = v56;
LABEL_147:
      v57 = v3[v42] == 0.0 || v2[v42] == 0.0;
      v58 = 1.0;
      if (!v57)
      {
        v58 = 0.0;
      }

      v4[v42++] = v58;
LABEL_153:
      v59 = v3[v42] == 0.0 || v2[v42] == 0.0;
      v60 = 1.0;
      if (!v59)
      {
        v60 = 0.0;
      }

      v4[v42++] = v60;
LABEL_159:
      v61 = v3[v42] == 0.0 || v2[v42] == 0.0;
      v62 = 1.0;
      if (!v61)
      {
        v62 = 0.0;
      }

      v4[v42++] = v62;
LABEL_165:
      v63 = v3[v42] == 0.0 || v2[v42] == 0.0;
      v64 = 1.0;
      if (!v63)
      {
        v64 = 0.0;
      }

      v4[v42++] = v64;
LABEL_171:
      v65 = v3[v42] == 0.0 || v2[v42] == 0.0;
      v66 = 1.0;
      if (!v65)
      {
        v66 = 0.0;
      }

      v4[v42++] = v66;
LABEL_177:
      v67 = v3[v42] == 0.0 || v2[v42] == 0.0;
      v68 = 1.0;
      if (!v67)
      {
        v68 = 0.0;
      }

      v4[v42++] = v68;
LABEL_183:
      v69 = v3[v42] == 0.0 || v2[v42] == 0.0;
      v70 = 1.0;
      if (!v69)
      {
        v70 = 0.0;
      }

      v4[v42] = v70;
      v41 = v42 + 1;
LABEL_189:
      v71 = v3[v41] == 0.0 || v2[v41] == 0.0;
      v72 = 1.0;
      if (!v71)
      {
        v72 = 0.0;
      }

      v4[v41] = v72;
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_147C40(uint64_t a1)
{
  sub_147CA8(a1 - 48);

  operator delete();
}

uint64_t sub_147CA8(uint64_t a1)
{
  *a1 = off_2636100;
  *(a1 + 48) = off_2636160;
  if (*(a1 + 72))
  {
    operator delete();
  }

  v2 = *(a1 + 80);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    if (*v3)
    {
      v4 = *v3 - 1;
      *v3 = v4;
      if (!v4)
      {
        if (*(v3 + 16))
        {
          if (*(v3 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 96) = 0;
  }

  *a1 = off_26345A0;
  v5 = *(a1 + 16);
  if (v5 && *(a1 + 24) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 16) = 0;
  }

  v6 = *(a1 + 32);
  if (v6 && *(a1 + 40) == 1)
  {
    (*(*v6 + 8))(v6);
    *(a1 + 32) = 0;
  }

  return a1;
}

double sub_147E50(double *a1, double *a2)
{
  v2 = *a2 == 0.0 || *a1 == 0.0;
  result = 1.0;
  if (!v2)
  {
    return 0.0;
  }

  return result;
}

void sub_147E70(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  *a1 = off_26345A0;
  *(a1 + 8) = *a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (a3)
  {
    v7 = (*(*a3 + 32))(a3) != 17 && (*(*a3 + 32))(a3) != 18;
    *(a1 + 16) = a3;
    *(a1 + 24) = v7;
  }

  if (a4)
  {
    v8 = (*(*a4 + 32))(a4) != 17 && (*(*a4 + 32))(a4) != 18;
    *(a1 + 32) = a4;
    *(a1 + 40) = v8;
  }

  *a1 = off_26361E8;
  *(a1 + 48) = off_2636248;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  operator new();
}

void sub_148774(_Unwind_Exception *a1)
{
  sub_F5710(v2);
  sub_12A624(v1);
  _Unwind_Resume(a1);
}

void sub_148814(uint64_t a1)
{
  sub_148EB0(a1);

  operator delete();
}

double sub_14884C(uint64_t a1)
{
  if (*(a1 + 88) != 1)
  {
    return NAN;
  }

  (*(**(a1 + 16) + 16))(*(a1 + 16));
  (*(**(a1 + 32) + 16))(*(a1 + 32));
  v2 = *(*(*(**(a1 + 56) + 64))(*(a1 + 56)) + 16);
  v3 = *(*(*(**(a1 + 64) + 64))(*(a1 + 64)) + 16);
  v4 = *(*(*(*a1 + 72))(a1) + 16);
  v5 = (*(*a1 + 56))(a1);
  if ((v5 & 0xF) != 0)
  {
    v6 = -16;
  }

  else
  {
    v6 = 0;
  }

  v7 = 8 * (v6 + v5);
  if (v7 >= 1)
  {
    v8 = &v4[v7 / 8];
    do
    {
      if (*v3 == 0.0 && *v2 == 0.0)
      {
        v10 = 0.0;
      }

      else
      {
        v10 = 1.0;
      }

      *v4 = v10;
      if (v3[1] == 0.0 && v2[1] == 0.0)
      {
        v12 = 0.0;
      }

      else
      {
        v12 = 1.0;
      }

      v4[1] = v12;
      if (v3[2] == 0.0 && v2[2] == 0.0)
      {
        v14 = 0.0;
      }

      else
      {
        v14 = 1.0;
      }

      v4[2] = v14;
      if (v3[3] == 0.0 && v2[3] == 0.0)
      {
        v16 = 0.0;
      }

      else
      {
        v16 = 1.0;
      }

      v4[3] = v16;
      if (v3[4] == 0.0 && v2[4] == 0.0)
      {
        v18 = 0.0;
      }

      else
      {
        v18 = 1.0;
      }

      v4[4] = v18;
      if (v3[5] == 0.0 && v2[5] == 0.0)
      {
        v20 = 0.0;
      }

      else
      {
        v20 = 1.0;
      }

      v4[5] = v20;
      if (v3[6] == 0.0 && v2[6] == 0.0)
      {
        v22 = 0.0;
      }

      else
      {
        v22 = 1.0;
      }

      v4[6] = v22;
      if (v3[7] == 0.0 && v2[7] == 0.0)
      {
        v24 = 0.0;
      }

      else
      {
        v24 = 1.0;
      }

      v4[7] = v24;
      if (v3[8] == 0.0 && v2[8] == 0.0)
      {
        v26 = 0.0;
      }

      else
      {
        v26 = 1.0;
      }

      v4[8] = v26;
      if (v3[9] == 0.0 && v2[9] == 0.0)
      {
        v28 = 0.0;
      }

      else
      {
        v28 = 1.0;
      }

      v4[9] = v28;
      if (v3[10] == 0.0 && v2[10] == 0.0)
      {
        v30 = 0.0;
      }

      else
      {
        v30 = 1.0;
      }

      v4[10] = v30;
      if (v3[11] == 0.0 && v2[11] == 0.0)
      {
        v32 = 0.0;
      }

      else
      {
        v32 = 1.0;
      }

      v4[11] = v32;
      if (v3[12] == 0.0 && v2[12] == 0.0)
      {
        v34 = 0.0;
      }

      else
      {
        v34 = 1.0;
      }

      v4[12] = v34;
      if (v3[13] == 0.0 && v2[13] == 0.0)
      {
        v36 = 0.0;
      }

      else
      {
        v36 = 1.0;
      }

      v4[13] = v36;
      if (v3[14] == 0.0 && v2[14] == 0.0)
      {
        v38 = 0.0;
      }

      else
      {
        v38 = 1.0;
      }

      v4[14] = v38;
      if (v3[15] == 0.0 && v2[15] == 0.0)
      {
        v40 = 0.0;
      }

      else
      {
        v40 = 1.0;
      }

      v4[15] = v40;
      v2 += 16;
      v3 += 16;
      v4 += 16;
    }

    while (v4 < v8);
  }

  v41 = 0;
  v42 = 0;
  switch(v5 & 0xF)
  {
    case 1:
      goto LABEL_203;
    case 2:
      goto LABEL_196;
    case 3:
      goto LABEL_189;
    case 4:
      goto LABEL_182;
    case 5:
      goto LABEL_175;
    case 6:
      goto LABEL_168;
    case 7:
      goto LABEL_161;
    case 8:
      goto LABEL_154;
    case 9:
      goto LABEL_147;
    case 0xA:
      goto LABEL_140;
    case 0xB:
      goto LABEL_133;
    case 0xC:
      goto LABEL_126;
    case 0xD:
      goto LABEL_119;
    case 0xE:
      goto LABEL_112;
    case 0xF:
      v43 = *v3 == 0.0 && *v2 == 0.0;
      v44 = 1.0;
      if (v43)
      {
        v44 = 0.0;
      }

      *v4 = v44;
      v42 = 1;
LABEL_112:
      v45 = v3[v42] == 0.0 && v2[v42] == 0.0;
      v46 = 1.0;
      if (v45)
      {
        v46 = 0.0;
      }

      v4[v42++] = v46;
LABEL_119:
      v47 = v3[v42] == 0.0 && v2[v42] == 0.0;
      v48 = 1.0;
      if (v47)
      {
        v48 = 0.0;
      }

      v4[v42++] = v48;
LABEL_126:
      v49 = v3[v42] == 0.0 && v2[v42] == 0.0;
      v50 = 1.0;
      if (v49)
      {
        v50 = 0.0;
      }

      v4[v42++] = v50;
LABEL_133:
      v51 = v3[v42] == 0.0 && v2[v42] == 0.0;
      v52 = 1.0;
      if (v51)
      {
        v52 = 0.0;
      }

      v4[v42++] = v52;
LABEL_140:
      v53 = v3[v42] == 0.0 && v2[v42] == 0.0;
      v54 = 1.0;
      if (v53)
      {
        v54 = 0.0;
      }

      v4[v42++] = v54;
LABEL_147:
      v55 = v3[v42] == 0.0 && v2[v42] == 0.0;
      v56 = 1.0;
      if (v55)
      {
        v56 = 0.0;
      }

      v4[v42++] = v56;
LABEL_154:
      v57 = v3[v42] == 0.0 && v2[v42] == 0.0;
      v58 = 1.0;
      if (v57)
      {
        v58 = 0.0;
      }

      v4[v42++] = v58;
LABEL_161:
      v59 = v3[v42] == 0.0 && v2[v42] == 0.0;
      v60 = 1.0;
      if (v59)
      {
        v60 = 0.0;
      }

      v4[v42++] = v60;
LABEL_168:
      v61 = v3[v42] == 0.0 && v2[v42] == 0.0;
      v62 = 1.0;
      if (v61)
      {
        v62 = 0.0;
      }

      v4[v42++] = v62;
LABEL_175:
      v63 = v3[v42] == 0.0 && v2[v42] == 0.0;
      v64 = 1.0;
      if (v63)
      {
        v64 = 0.0;
      }

      v4[v42++] = v64;
LABEL_182:
      v65 = v3[v42] == 0.0 && v2[v42] == 0.0;
      v66 = 1.0;
      if (v65)
      {
        v66 = 0.0;
      }

      v4[v42++] = v66;
LABEL_189:
      v67 = v3[v42] == 0.0 && v2[v42] == 0.0;
      v68 = 1.0;
      if (v67)
      {
        v68 = 0.0;
      }

      v4[v42++] = v68;
LABEL_196:
      v69 = v3[v42] == 0.0 && v2[v42] == 0.0;
      v70 = 1.0;
      if (v69)
      {
        v70 = 0.0;
      }

      v4[v42] = v70;
      v41 = v42 + 1;
LABEL_203:
      v71 = v3[v41] == 0.0 && v2[v41] == 0.0;
      v72 = 1.0;
      if (v71)
      {
        v72 = 0.0;
      }

      v4[v41] = v72;
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}