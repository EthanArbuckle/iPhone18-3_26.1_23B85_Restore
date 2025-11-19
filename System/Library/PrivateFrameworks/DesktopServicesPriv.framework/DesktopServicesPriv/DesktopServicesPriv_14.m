void sub_1E576F4A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, const void *a14, uint64_t a15, char a16)
{
  if (a16 == 1)
  {
    TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>::~TRef(&a14);
  }

  TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>::~TRef(v16);
  _Unwind_Resume(a1);
}

uint64_t std::optional<fstd::optional_err<TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,int>>::emplace[abi:ne200100]<__CFDictionary const*&,int,void>(uint64_t a1, CFTypeRef *a2, _DWORD *a3)
{
  if (*(a1 + 16) == 1)
  {
    TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>::~TRef(a1);
    *(a1 + 16) = 0;
  }

  std::construct_at[abi:ne200100]<fstd::optional_err<TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,int>,__CFDictionary const*&,int,fstd::optional_err<TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,int>*>(a1, a2, a3);
  *(a1 + 16) = 1;
  return a1;
}

uint64_t std::construct_at[abi:ne200100]<fstd::optional_err<TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,int>,__CFDictionary const*&,int,fstd::optional_err<TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,int>*>(uint64_t a1, CFTypeRef *a2, _DWORD *a3)
{
  v5 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  *a1 = v5;
  v7 = 0;
  *(a1 + 8) = *a3;
  TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>::~TRef(&v7);
  return a1;
}

void TPropertyValue::As<NSObject * {__strong}>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = 0;
  TPropertyValue::As<NSObject * {__strong}>(a1, &v2, a2);
}

const void **TPropertyValue::As<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>@<X0>(const void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = 0;
  TPropertyValue::As<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>(a1, &v3, a2);
  return TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v3);
}

void sub_1E576F72C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

const void **TPropertyValue::As<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>@<X0>(const void **result@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = -1;
  v4 = *(result + 4);
  switch(v4)
  {
    case 0:
      if (v4)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8072;
      v15 = -8072;
      std::optional<fstd::optional_err<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,int>>::emplace[abi:ne200100]<__CFURL const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 1:
      if (v4 != 1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,int>>::emplace[abi:ne200100]<__CFURL const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 2:
      if (v4 != 2)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,int>>::emplace[abi:ne200100]<__CFURL const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 3:
      if (v4 != 3)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,int>>::emplace[abi:ne200100]<__CFURL const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 4:
      if (v4 != 4)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,int>>::emplace[abi:ne200100]<__CFURL const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 5:
      if (v4 != 5)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,int>>::emplace[abi:ne200100]<__CFURL const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 6:
      if (v4 != 6)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,int>>::emplace[abi:ne200100]<__CFURL const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 7:
      if (v4 != 7)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,int>>::emplace[abi:ne200100]<__CFURL const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 8:
      if (v4 != 8)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,int>>::emplace[abi:ne200100]<__CFURL const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 9:
      v8 = *a2;
      cf = v8;
      if (v8)
      {
        CFRetain(v8);
      }

      v19 = -8050;
      TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::operator=<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>(a3, &cf);
      *(a3 + 8) = v19;
      p_cf = &cf;
      return TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(p_cf);
    case 10:
      if (v4 != 10)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,int>>::emplace[abi:ne200100]<__CFURL const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 11:
      if (v4 != 11)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,int>>::emplace[abi:ne200100]<__CFURL const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 12:
      if (v4 != 12)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,int>>::emplace[abi:ne200100]<__CFURL const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 13:
      if (v4 != 13)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,int>>::emplace[abi:ne200100]<__CFURL const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 14:
      if (v4 != 14)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,int>>::emplace[abi:ne200100]<__CFURL const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 15:
      if (v4 != 15)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,int>>::emplace[abi:ne200100]<__CFURL const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 16:
      if (v4 != 16)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v7 = *result;
      v16 = v7;
      if (v7)
      {
        CFRetain(v7);
      }

      v17 = 0;
      cf = v7;
      v16 = 0;
      v20 = 1;
      v19 = 0;
      TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v16);
      if (v20 == 1)
      {
        v13 = cf;
        if (cf)
        {
          CFRetain(cf);
        }

        goto LABEL_143;
      }

      v12 = *a2;
      v13 = v12;
      if (v12)
      {
        CFRetain(v12);
      }

      goto LABEL_146;
    case 17:
      if (v4 != 17)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,int>>::emplace[abi:ne200100]<__CFURL const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 18:
      if (v4 != 18)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,int>>::emplace[abi:ne200100]<__CFURL const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 19:
      if (v4 != 19)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,int>>::emplace[abi:ne200100]<__CFURL const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 20:
      if (v4 != 20)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,int>>::emplace[abi:ne200100]<__CFURL const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 21:
      if (v4 != 21)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,int>>::emplace[abi:ne200100]<__CFURL const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 22:
      if (v4 != 22)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,int>>::emplace[abi:ne200100]<__CFURL const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 23:
      if (v4 != 23)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,int>>::emplace[abi:ne200100]<__CFURL const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (cf)
        {
LABEL_95:
          CFRetain(v6);
        }

LABEL_143:
        v11 = v19;
      }

      else
      {
        v10 = *a2;
        v13 = v10;
        if (v10)
        {
LABEL_139:
          CFRetain(v10);
        }

LABEL_146:
        v11 = -8050;
      }

      v14 = v11;
      if (v20 == 1)
      {
        TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&cf);
      }

      TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::operator=<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>(a3, &v13);
      *(a3 + 8) = v14;
      p_cf = &v13;
      return TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(p_cf);
    default:
      return result;
  }
}

void sub_1E5770260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, const void *a14, uint64_t a15, char a16)
{
  if (a16 == 1)
  {
    TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&a14);
  }

  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(v16);
  _Unwind_Resume(a1);
}

uint64_t std::optional<fstd::optional_err<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,int>>::emplace[abi:ne200100]<__CFURL const*&,int,void>(uint64_t a1, CFTypeRef *a2, _DWORD *a3)
{
  if (*(a1 + 16) == 1)
  {
    TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(a1);
    *(a1 + 16) = 0;
  }

  std::construct_at[abi:ne200100]<fstd::optional_err<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,int>,__CFURL const*&,int,fstd::optional_err<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,int>*>(a1, a2, a3);
  *(a1 + 16) = 1;
  return a1;
}

uint64_t std::construct_at[abi:ne200100]<fstd::optional_err<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,int>,__CFURL const*&,int,fstd::optional_err<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,int>*>(uint64_t a1, CFTypeRef *a2, _DWORD *a3)
{
  v5 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  *a1 = v5;
  v7 = 0;
  *(a1 + 8) = *a3;
  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v7);
  return a1;
}

const void **TPropertyValue::As<TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>>@<X0>(const void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = 0;
  TPropertyValue::As<TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>>(a1, &v3, a2);
  return TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>::~TRef(&v3);
}

void sub_1E577049C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

const void **TPropertyValue::As<TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>>@<X0>(const void **result@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = -1;
  v4 = *(result + 4);
  switch(v4)
  {
    case 0:
      if (v4)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8072;
      v15 = -8072;
      std::optional<fstd::optional_err<TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,int>>::emplace[abi:ne200100]<__CFArray const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 1:
      if (v4 != 1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,int>>::emplace[abi:ne200100]<__CFArray const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 2:
      if (v4 != 2)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,int>>::emplace[abi:ne200100]<__CFArray const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 3:
      if (v4 != 3)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,int>>::emplace[abi:ne200100]<__CFArray const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 4:
      if (v4 != 4)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,int>>::emplace[abi:ne200100]<__CFArray const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 5:
      if (v4 != 5)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,int>>::emplace[abi:ne200100]<__CFArray const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 6:
      if (v4 != 6)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,int>>::emplace[abi:ne200100]<__CFArray const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 7:
      if (v4 != 7)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,int>>::emplace[abi:ne200100]<__CFArray const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 8:
      if (v4 != 8)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,int>>::emplace[abi:ne200100]<__CFArray const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 9:
      v7 = *a2;
      cf = v7;
      if (v7)
      {
        CFRetain(v7);
      }

      v19 = -8050;
      TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>::operator=<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>(a3, &cf);
      *(a3 + 8) = v19;
      p_cf = &cf;
      return TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>::~TRef(p_cf);
    case 10:
      if (v4 != 10)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,int>>::emplace[abi:ne200100]<__CFArray const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 11:
      if (v4 != 11)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,int>>::emplace[abi:ne200100]<__CFArray const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 12:
      if (v4 != 12)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,int>>::emplace[abi:ne200100]<__CFArray const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 13:
      if (v4 != 13)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,int>>::emplace[abi:ne200100]<__CFArray const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 14:
      if (v4 != 14)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,int>>::emplace[abi:ne200100]<__CFArray const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 15:
      if (v4 != 15)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,int>>::emplace[abi:ne200100]<__CFArray const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 16:
      if (v4 != 16)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,int>>::emplace[abi:ne200100]<__CFArray const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 17:
      if (v4 != 17)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v9 = *result;
      v16 = v9;
      if (v9)
      {
        CFRetain(v9);
      }

      v17 = 0;
      cf = v9;
      v16 = 0;
      v20 = 1;
      v19 = 0;
      TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>::~TRef(&v16);
      if (v20 == 1)
      {
        v13 = cf;
        if (cf)
        {
          CFRetain(cf);
        }

        goto LABEL_143;
      }

      v12 = *a2;
      v13 = v12;
      if (v12)
      {
        CFRetain(v12);
      }

      goto LABEL_146;
    case 18:
      if (v4 != 18)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,int>>::emplace[abi:ne200100]<__CFArray const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 19:
      if (v4 != 19)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,int>>::emplace[abi:ne200100]<__CFArray const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 20:
      if (v4 != 20)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,int>>::emplace[abi:ne200100]<__CFArray const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 21:
      if (v4 != 21)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,int>>::emplace[abi:ne200100]<__CFArray const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 22:
      if (v4 != 22)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,int>>::emplace[abi:ne200100]<__CFArray const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 23:
      if (v4 != 23)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,int>>::emplace[abi:ne200100]<__CFArray const*&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (cf)
        {
LABEL_95:
          CFRetain(v6);
        }

LABEL_143:
        v11 = v19;
      }

      else
      {
        v10 = *a2;
        v13 = v10;
        if (v10)
        {
LABEL_139:
          CFRetain(v10);
        }

LABEL_146:
        v11 = -8050;
      }

      v14 = v11;
      if (v20 == 1)
      {
        TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>::~TRef(&cf);
      }

      TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>::operator=<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>(a3, &v13);
      *(a3 + 8) = v14;
      p_cf = &v13;
      return TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>::~TRef(p_cf);
    default:
      return result;
  }
}

void sub_1E5770FD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, const void *a14, uint64_t a15, char a16)
{
  if (a16 == 1)
  {
    TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>::~TRef(&a14);
  }

  TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>::~TRef(v16);
  _Unwind_Resume(a1);
}

uint64_t std::optional<fstd::optional_err<TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,int>>::emplace[abi:ne200100]<__CFArray const*&,int,void>(uint64_t a1, CFTypeRef *a2, _DWORD *a3)
{
  if (*(a1 + 16) == 1)
  {
    TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>::~TRef(a1);
    *(a1 + 16) = 0;
  }

  std::construct_at[abi:ne200100]<fstd::optional_err<TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,int>,__CFArray const*&,int,fstd::optional_err<TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,int>*>(a1, a2, a3);
  *(a1 + 16) = 1;
  return a1;
}

uint64_t std::construct_at[abi:ne200100]<fstd::optional_err<TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,int>,__CFArray const*&,int,fstd::optional_err<TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,int>*>(uint64_t a1, CFTypeRef *a2, _DWORD *a3)
{
  v5 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  *a1 = v5;
  v7 = 0;
  *(a1 + 8) = *a3;
  TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>::~TRef(&v7);
  return a1;
}

const void **TPropertyValue::As<TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>>@<X0>(const void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = 0;
  TPropertyValue::As<TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>>(a1, &v3, a2);
  return TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>::~TRef(&v3);
}

void sub_1E577120C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>::~TRef(va);
  _Unwind_Resume(a1);
}

const void **TPropertyValue::As<TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>>@<X0>(const void **result@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = -1;
  v4 = *(result + 4);
  switch(v4)
  {
    case 0:
      if (v4)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8072;
      v15 = -8072;
      std::optional<fstd::optional_err<TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,int>>::emplace[abi:ne200100]<__CFFileSecurity *&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 1:
      if (v4 != 1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,int>>::emplace[abi:ne200100]<__CFFileSecurity *&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 2:
      if (v4 != 2)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,int>>::emplace[abi:ne200100]<__CFFileSecurity *&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 3:
      if (v4 != 3)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,int>>::emplace[abi:ne200100]<__CFFileSecurity *&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 4:
      if (v4 != 4)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,int>>::emplace[abi:ne200100]<__CFFileSecurity *&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 5:
      if (v4 != 5)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,int>>::emplace[abi:ne200100]<__CFFileSecurity *&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 6:
      if (v4 != 6)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,int>>::emplace[abi:ne200100]<__CFFileSecurity *&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 7:
      if (v4 != 7)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,int>>::emplace[abi:ne200100]<__CFFileSecurity *&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 8:
      if (v4 != 8)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,int>>::emplace[abi:ne200100]<__CFFileSecurity *&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 9:
      v7 = *a2;
      cf = v7;
      if (v7)
      {
        CFRetain(v7);
      }

      v19 = -8050;
      TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>::operator=<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>(a3, &cf);
      *(a3 + 8) = v19;
      p_cf = &cf;
      return TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>::~TRef(p_cf);
    case 10:
      if (v4 != 10)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,int>>::emplace[abi:ne200100]<__CFFileSecurity *&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 11:
      if (v4 != 11)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,int>>::emplace[abi:ne200100]<__CFFileSecurity *&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 12:
      if (v4 != 12)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,int>>::emplace[abi:ne200100]<__CFFileSecurity *&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 13:
      if (v4 != 13)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,int>>::emplace[abi:ne200100]<__CFFileSecurity *&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 14:
      if (v4 != 14)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,int>>::emplace[abi:ne200100]<__CFFileSecurity *&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 15:
      if (v4 != 15)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,int>>::emplace[abi:ne200100]<__CFFileSecurity *&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 16:
      if (v4 != 16)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,int>>::emplace[abi:ne200100]<__CFFileSecurity *&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 17:
      if (v4 != 17)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,int>>::emplace[abi:ne200100]<__CFFileSecurity *&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 18:
      if (v4 != 18)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v9 = *result;
      v16 = v9;
      if (v9)
      {
        CFRetain(v9);
      }

      v17 = 0;
      cf = v9;
      v16 = 0;
      v20 = 1;
      v19 = 0;
      TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>::~TRef(&v16);
      if (v20 == 1)
      {
        v13 = cf;
        if (cf)
        {
          CFRetain(cf);
        }

        goto LABEL_143;
      }

      v12 = *a2;
      v13 = v12;
      if (v12)
      {
        CFRetain(v12);
      }

      goto LABEL_146;
    case 19:
      if (v4 != 19)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,int>>::emplace[abi:ne200100]<__CFFileSecurity *&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 20:
      if (v4 != 20)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,int>>::emplace[abi:ne200100]<__CFFileSecurity *&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 21:
      if (v4 != 21)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,int>>::emplace[abi:ne200100]<__CFFileSecurity *&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 22:
      if (v4 != 22)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,int>>::emplace[abi:ne200100]<__CFFileSecurity *&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (!cf)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

      v10 = *a2;
      v13 = v10;
      if (!v10)
      {
        goto LABEL_146;
      }

      goto LABEL_139;
    case 23:
      if (v4 != 23)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(cf) = 0;
      v20 = 0;
      v16 = *a2;
      v17 = -8050;
      v15 = -8050;
      std::optional<fstd::optional_err<TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,int>>::emplace[abi:ne200100]<__CFFileSecurity *&,int,void>(&cf, &v16, &v15);
      if (v20 == 1)
      {
        v6 = cf;
        v13 = cf;
        if (cf)
        {
LABEL_95:
          CFRetain(v6);
        }

LABEL_143:
        v11 = v19;
      }

      else
      {
        v10 = *a2;
        v13 = v10;
        if (v10)
        {
LABEL_139:
          CFRetain(v10);
        }

LABEL_146:
        v11 = -8050;
      }

      v14 = v11;
      if (v20 == 1)
      {
        TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>::~TRef(&cf);
      }

      TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>::operator=<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>(a3, &v13);
      *(a3 + 8) = v14;
      p_cf = &v13;
      return TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>::~TRef(p_cf);
    default:
      return result;
  }
}

void sub_1E5771D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, const void *a14, uint64_t a15, char a16)
{
  if (a16 == 1)
  {
    TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>::~TRef(&a14);
  }

  TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>::~TRef(v16);
  _Unwind_Resume(a1);
}

uint64_t std::optional<fstd::optional_err<TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,int>>::emplace[abi:ne200100]<__CFFileSecurity *&,int,void>(uint64_t a1, CFTypeRef *a2, _DWORD *a3)
{
  if (*(a1 + 16) == 1)
  {
    TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>::~TRef(a1);
    *(a1 + 16) = 0;
  }

  std::construct_at[abi:ne200100]<fstd::optional_err<TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,int>,__CFFileSecurity *&,int,fstd::optional_err<TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,int>*>(a1, a2, a3);
  *(a1 + 16) = 1;
  return a1;
}

uint64_t std::construct_at[abi:ne200100]<fstd::optional_err<TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,int>,__CFFileSecurity *&,int,fstd::optional_err<TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,int>*>(uint64_t a1, CFTypeRef *a2, _DWORD *a3)
{
  v5 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  *a1 = v5;
  v7 = 0;
  *(a1 + 8) = *a3;
  TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>::~TRef(&v7);
  return a1;
}

unint64_t TPropertyValue::As<Property>(unsigned int *a1, unsigned int *a2)
{
  v2 = a1[4];
  v3 = v2;
  switch(v2)
  {
    case 0:
      if (v2)
      {
        goto LABEL_36;
      }

      v3 = *a2;
      v4 = 0xFFFFE07800000000;
      return v4 | v3;
    case 1:
      if (v2 != 1)
      {
        goto LABEL_36;
      }

      goto LABEL_29;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_36;
      }

      goto LABEL_29;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_36;
      }

      goto LABEL_29;
    case 4:
      if (v2 == 4)
      {
        goto LABEL_29;
      }

      goto LABEL_36;
    case 5:
      if (v2 != 5)
      {
        goto LABEL_36;
      }

      goto LABEL_29;
    case 6:
      if (v2 != 6)
      {
        goto LABEL_36;
      }

      goto LABEL_27;
    case 7:
      if (v2 != 7)
      {
        goto LABEL_36;
      }

      goto LABEL_29;
    case 8:
      if (v2 != 8)
      {
        goto LABEL_36;
      }

      goto LABEL_29;
    case 9:
      goto LABEL_29;
    case 10:
      if (v2 != 10)
      {
        goto LABEL_36;
      }

      goto LABEL_29;
    case 11:
      if (v2 != 11)
      {
        goto LABEL_36;
      }

      goto LABEL_29;
    case 12:
      if (v2 != 12)
      {
        goto LABEL_36;
      }

      goto LABEL_29;
    case 13:
      if (v2 != 13)
      {
        goto LABEL_36;
      }

      goto LABEL_29;
    case 14:
      if (v2 != 14)
      {
        goto LABEL_36;
      }

      goto LABEL_29;
    case 15:
      if (v2 != 15)
      {
        goto LABEL_36;
      }

      goto LABEL_29;
    case 16:
      if (v2 != 16)
      {
        goto LABEL_36;
      }

      goto LABEL_29;
    case 17:
      if (v2 != 17)
      {
        goto LABEL_36;
      }

      goto LABEL_29;
    case 18:
      if (v2 != 18)
      {
        goto LABEL_36;
      }

      goto LABEL_29;
    case 19:
      if (v2 != 19)
      {
        goto LABEL_36;
      }

      goto LABEL_29;
    case 20:
      if (v2 != 20)
      {
        goto LABEL_36;
      }

LABEL_27:
      v4 = 0;
      v3 = *a1;
      break;
    case 21:
      if (v2 != 21)
      {
        goto LABEL_36;
      }

      goto LABEL_29;
    case 22:
      if (v2 != 22)
      {
        goto LABEL_36;
      }

      goto LABEL_29;
    case 23:
      if (v2 != 23)
      {
LABEL_36:
        std::__throw_bad_variant_access[abi:ne200100]();
      }

LABEL_29:
      v4 = 0xFFFFE08E00000000;
      v3 = *a2;
      break;
    default:
      v4 = 0xFFFFFFFF00000000;
      break;
  }

  return v4 | v3;
}

unint64_t TPropertyValue::As<NodeDSStoreStatus>(unsigned int *a1, unsigned int *a2)
{
  v2 = a1[4];
  v3 = v2;
  switch(v2)
  {
    case 0:
      if (v2)
      {
        goto LABEL_48;
      }

      v3 = *a2;
      v4 = 0xFFFFE07800000000;
      return v4 | v3;
    case 1:
      if (v2 != 1)
      {
        goto LABEL_48;
      }

      goto LABEL_45;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_48;
      }

      goto LABEL_45;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_48;
      }

      goto LABEL_45;
    case 4:
      if (v2 != 4)
      {
        goto LABEL_48;
      }

      goto LABEL_43;
    case 5:
      if (v2 != 5)
      {
        goto LABEL_48;
      }

      goto LABEL_45;
    case 6:
      if (v2 != 6)
      {
        goto LABEL_48;
      }

      goto LABEL_45;
    case 7:
      if (v2 != 7)
      {
        goto LABEL_48;
      }

      goto LABEL_45;
    case 8:
      if (v2 != 8)
      {
        goto LABEL_48;
      }

      goto LABEL_45;
    case 9:
      goto LABEL_45;
    case 10:
      if (v2 != 10)
      {
        goto LABEL_48;
      }

      goto LABEL_45;
    case 11:
      if (v2 != 11)
      {
        goto LABEL_48;
      }

      goto LABEL_45;
    case 12:
      if (v2 != 12)
      {
        goto LABEL_48;
      }

      goto LABEL_45;
    case 13:
      if (v2 != 13)
      {
        goto LABEL_48;
      }

      goto LABEL_45;
    case 14:
      if (v2 != 14)
      {
        goto LABEL_48;
      }

      goto LABEL_45;
    case 15:
      if (v2 != 15)
      {
        goto LABEL_48;
      }

      goto LABEL_45;
    case 16:
      if (v2 != 16)
      {
        goto LABEL_48;
      }

      goto LABEL_45;
    case 17:
      if (v2 != 17)
      {
        goto LABEL_48;
      }

      goto LABEL_45;
    case 18:
      if (v2 != 18)
      {
        goto LABEL_48;
      }

      goto LABEL_45;
    case 19:
      if (v2 == 19)
      {
        goto LABEL_45;
      }

      goto LABEL_48;
    case 20:
      if (v2 != 20)
      {
        goto LABEL_48;
      }

      goto LABEL_45;
    case 21:
      if (v2 != 21)
      {
        goto LABEL_48;
      }

      goto LABEL_45;
    case 22:
      if (v2 != 22)
      {
        goto LABEL_48;
      }

LABEL_43:
      v4 = 0;
      v3 = *a1;
      break;
    case 23:
      if (v2 != 23)
      {
LABEL_48:
        std::__throw_bad_variant_access[abi:ne200100]();
      }

LABEL_45:
      v4 = 0xFFFFE08E00000000;
      v3 = *a2;
      break;
    default:
      v4 = 0xFFFFFFFF00000000;
      break;
  }

  return v4 | v3;
}

unint64_t TPropertyValue::As<DSBladeRunnerFlags>(unsigned int *a1, unsigned int *a2)
{
  v2 = a1[4];
  v3 = v2;
  switch(v2)
  {
    case 0:
      if (v2)
      {
        goto LABEL_50;
      }

      v3 = *a2;
      v4 = 0xFFFFE07800000000;
      return v4 | v3;
    case 1:
      if (v2 != 1)
      {
        goto LABEL_50;
      }

      goto LABEL_45;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_50;
      }

      goto LABEL_45;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_50;
      }

      goto LABEL_45;
    case 4:
      if (v2 != 4)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 5:
      if (v2 != 5)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 6:
      if (v2 != 6)
      {
        goto LABEL_50;
      }

      goto LABEL_45;
    case 7:
      if (v2 != 7)
      {
        goto LABEL_50;
      }

      goto LABEL_45;
    case 8:
      if (v2 != 8)
      {
        goto LABEL_50;
      }

      goto LABEL_45;
    case 9:
      goto LABEL_45;
    case 10:
      if (v2 != 10)
      {
        goto LABEL_50;
      }

      goto LABEL_45;
    case 11:
      if (v2 != 11)
      {
        goto LABEL_50;
      }

      goto LABEL_45;
    case 12:
      if (v2 != 12)
      {
        goto LABEL_50;
      }

      goto LABEL_45;
    case 13:
      if (v2 != 13)
      {
        goto LABEL_50;
      }

      goto LABEL_45;
    case 14:
      if (v2 != 14)
      {
        goto LABEL_50;
      }

      goto LABEL_45;
    case 15:
      if (v2 != 15)
      {
        goto LABEL_50;
      }

      goto LABEL_45;
    case 16:
      if (v2 != 16)
      {
        goto LABEL_50;
      }

      goto LABEL_45;
    case 17:
      if (v2 != 17)
      {
        goto LABEL_50;
      }

      goto LABEL_45;
    case 18:
      if (v2 != 18)
      {
        goto LABEL_50;
      }

      goto LABEL_45;
    case 19:
      if (v2 == 19)
      {
        goto LABEL_45;
      }

      goto LABEL_50;
    case 20:
      if (v2 != 20)
      {
        goto LABEL_50;
      }

LABEL_45:
      v4 = 0xFFFFE08E00000000;
      v3 = *a2;
      return v4 | v3;
    case 21:
      if (v2 != 21)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 22:
      if (v2 != 22)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 23:
      if (v2 != 23)
      {
LABEL_50:
        std::__throw_bad_variant_access[abi:ne200100]();
      }

LABEL_47:
      v4 = 0;
      v3 = *a1;
      break;
    default:
      v4 = 0xFFFFFFFF00000000;
      break;
  }

  return v4 | v3;
}

void *TPropertyValue::As<TString>@<X0>(uint64_t a1@<X0>, TString **a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = &stru_1F5F42870;
  result = CFRetain(&stru_1F5F42870);
  *(a3 + 8) = -1;
  v7 = *(a1 + 16);
  switch(v7)
  {
    case 0:
      if (v7)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(v17[0]) = 0;
      v18 = 0;
      LODWORD(v11[0]) = -8072;
      fstd::optional_err<TString,int>::optional_err(v12, a2, v11);
      std::optional<fstd::optional_err<TString,int>>::operator=[abi:ne200100]<fstd::optional_err<TString,int>,void>(v17, v12);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v12);
      if (v18 != 1)
      {
        goto LABEL_58;
      }

      goto LABEL_55;
    case 1:
      if (v7 != 1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      goto LABEL_57;
    case 2:
      if (v7 != 2)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      goto LABEL_57;
    case 3:
      if (v7 != 3)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      goto LABEL_57;
    case 4:
      if (v7 != 4)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      goto LABEL_57;
    case 5:
      if (v7 != 5)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      goto LABEL_57;
    case 6:
      if (v7 != 6)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      goto LABEL_57;
    case 7:
      if (v7 != 7)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      goto LABEL_57;
    case 8:
      if (v7 != 8)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      goto LABEL_57;
    case 9:
      goto LABEL_57;
    case 10:
      if (v7 != 10)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      goto LABEL_57;
    case 11:
      if (v7 != 11)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(v17[0]) = 0;
      v18 = 0;
      LODWORD(v11[0]) = 0;
      fstd::optional_err<TString,int>::optional_err(v12, a1, v11);
      std::optional<fstd::optional_err<TString,int>>::operator=[abi:ne200100]<fstd::optional_err<TString,int>,void>(v17, v12);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v12);
      if (v18 == 1)
      {
        goto LABEL_55;
      }

      goto LABEL_58;
    case 12:
      if (v7 != 12)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(v12[0]) = 0;
      v13 = 0;
      v8 = *a1;
      LOBYTE(v17[0]) = 0;
      v18 = 0;
      v14.fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(&v14, v8);
      v16 = 0;
      fstd::optional_err<TString,int>::optional_err(v15, &v14, &v16);
      std::optional<fstd::optional_err<TString,int>>::operator=[abi:ne200100]<fstd::optional_err<TString,int>,void>(v17, v15);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v15);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v14.fString.fRef);
      if (v18 == 1)
      {
        fstd::optional_err<TString,int>::optional_err(v11, v17);
      }

      else
      {
        LODWORD(v15[0]) = -8050;
        fstd::optional_err<TString,int>::optional_err(v11, a2, v15);
      }

      if (v18 == 1)
      {
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v17);
      }

      std::optional<fstd::optional_err<TString,int>>::operator=[abi:ne200100]<fstd::optional_err<TString,int>,void>(v12, v11);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v11);
      if (v13 == 1)
      {
        fstd::optional_err<TString,int>::optional_err(v10, v12);
      }

      else
      {
        LODWORD(v17[0]) = -8050;
        fstd::optional_err<TString,int>::optional_err(v10, a2, v17);
      }

      if (v13 == 1)
      {
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v12);
      }

      fstd::optional_err<TString,int>::operator=(a3, v10);
      v9 = v10;
      goto LABEL_62;
    case 13:
      if (v7 != 13)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(v17[0]) = 0;
      v18 = 0;
      LODWORD(v11[0]) = -8050;
      fstd::optional_err<TString,int>::optional_err(v12, a2, v11);
      std::optional<fstd::optional_err<TString,int>>::operator=[abi:ne200100]<fstd::optional_err<TString,int>,void>(v17, v12);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v12);
      if (v18 == 1)
      {
        goto LABEL_55;
      }

      goto LABEL_58;
    case 14:
      if (v7 != 14)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(v17[0]) = 0;
      v18 = 0;
      LODWORD(v11[0]) = -8050;
      fstd::optional_err<TString,int>::optional_err(v12, a2, v11);
      std::optional<fstd::optional_err<TString,int>>::operator=[abi:ne200100]<fstd::optional_err<TString,int>,void>(v17, v12);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v12);
      if (v18 == 1)
      {
        goto LABEL_55;
      }

      goto LABEL_58;
    case 15:
      if (v7 != 15)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(v17[0]) = 0;
      v18 = 0;
      LODWORD(v11[0]) = -8050;
      fstd::optional_err<TString,int>::optional_err(v12, a2, v11);
      std::optional<fstd::optional_err<TString,int>>::operator=[abi:ne200100]<fstd::optional_err<TString,int>,void>(v17, v12);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v12);
      if (v18 == 1)
      {
        goto LABEL_55;
      }

      goto LABEL_58;
    case 16:
      if (v7 != 16)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(v17[0]) = 0;
      v18 = 0;
      LODWORD(v11[0]) = -8050;
      fstd::optional_err<TString,int>::optional_err(v12, a2, v11);
      std::optional<fstd::optional_err<TString,int>>::operator=[abi:ne200100]<fstd::optional_err<TString,int>,void>(v17, v12);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v12);
      if (v18 == 1)
      {
        goto LABEL_55;
      }

      goto LABEL_58;
    case 17:
      if (v7 != 17)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(v17[0]) = 0;
      v18 = 0;
      LODWORD(v11[0]) = -8050;
      fstd::optional_err<TString,int>::optional_err(v12, a2, v11);
      std::optional<fstd::optional_err<TString,int>>::operator=[abi:ne200100]<fstd::optional_err<TString,int>,void>(v17, v12);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v12);
      if (v18 == 1)
      {
        goto LABEL_55;
      }

      goto LABEL_58;
    case 18:
      if (v7 != 18)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(v17[0]) = 0;
      v18 = 0;
      LODWORD(v11[0]) = -8050;
      fstd::optional_err<TString,int>::optional_err(v12, a2, v11);
      std::optional<fstd::optional_err<TString,int>>::operator=[abi:ne200100]<fstd::optional_err<TString,int>,void>(v17, v12);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v12);
      if (v18 == 1)
      {
        goto LABEL_55;
      }

      goto LABEL_58;
    case 19:
      if (v7 != 19)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(v17[0]) = 0;
      v18 = 0;
      LODWORD(v11[0]) = -8050;
      fstd::optional_err<TString,int>::optional_err(v12, a2, v11);
      std::optional<fstd::optional_err<TString,int>>::operator=[abi:ne200100]<fstd::optional_err<TString,int>,void>(v17, v12);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v12);
      if (v18 == 1)
      {
LABEL_55:
        fstd::optional_err<TString,int>::optional_err(v15, v17);
      }

      else
      {
LABEL_58:
        LODWORD(v12[0]) = -8050;
        fstd::optional_err<TString,int>::optional_err(v15, a2, v12);
      }

      if (v18 == 1)
      {
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v17);
      }

      fstd::optional_err<TString,int>::operator=(a3, v15);
      v9 = v15;
      goto LABEL_62;
    case 20:
      if (v7 != 20)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      goto LABEL_57;
    case 21:
      if (v7 != 21)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      goto LABEL_57;
    case 22:
      if (v7 != 22)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      goto LABEL_57;
    case 23:
      if (v7 != 23)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

LABEL_57:
      LODWORD(v12[0]) = -8050;
      fstd::optional_err<TString,int>::optional_err(v17, a2, v12);
      fstd::optional_err<TString,int>::operator=(a3, v17);
      v9 = v17;
LABEL_62:
      result = TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v9);
      break;
    default:
      return result;
  }

  return result;
}

void sub_1E5772C60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, uint64_t a14, char a15)
{
  if (a15 == 1)
  {
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a13);
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v15);
  _Unwind_Resume(a1);
}

uint64_t fstd::optional_err<TString,int>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=<__CFString const*,TRetainReleasePolicy<__CFString const*>>(a1, a2);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=(a2, &stru_1F5F42870);
  }

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t std::optional<fstd::optional_err<TString,int>>::operator=[abi:ne200100]<fstd::optional_err<TString,int>,void>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == 1)
  {
    fstd::optional_err<TString,int>::operator=(a1, a2);
  }

  else
  {
    fstd::optional_err<TString,int>::optional_err(a1, a2);
    *(a1 + 16) = 1;
  }

  return a1;
}

uint64_t fstd::optional_err<TString,int>::optional_err(uint64_t a1, uint64_t a2)
{
  *a1 = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(a1, *a2);
  *(a1 + 8) = *(a2 + 8);
  return a1;
}

{
  *a1 = *a2;
  *a2 = 0;
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=(a2, &stru_1F5F42870);
  *(a1 + 8) = *(a2 + 8);
  return a1;
}

unint64_t TPropertyValue::As<unsigned char>(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 4);
  switch(v2)
  {
    case 0:
      if (v2)
      {
        goto LABEL_30;
      }

      v3 = *a2;
      v4 = 0xFFFFE07800000000;
      break;
    case 1:
      if (v2 != 1)
      {
        goto LABEL_30;
      }

      goto LABEL_23;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_30;
      }

      v4 = 0;
      v3 = *a1;
      break;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_30;
      }

      goto LABEL_23;
    case 4:
      if (v2 != 4)
      {
        goto LABEL_30;
      }

      goto LABEL_23;
    case 5:
      if (v2 != 5)
      {
        goto LABEL_30;
      }

      goto LABEL_23;
    case 6:
      if (v2 == 6)
      {
        goto LABEL_23;
      }

      goto LABEL_30;
    case 7:
      if (v2 != 7)
      {
        goto LABEL_30;
      }

      goto LABEL_23;
    case 8:
      if (v2 != 8)
      {
        goto LABEL_30;
      }

      goto LABEL_23;
    case 9:
      goto LABEL_23;
    case 10:
      if (v2 != 10)
      {
        goto LABEL_30;
      }

      goto LABEL_23;
    case 11:
      if (v2 != 11)
      {
        goto LABEL_30;
      }

      goto LABEL_23;
    case 12:
      if (v2 != 12)
      {
        goto LABEL_30;
      }

      goto LABEL_23;
    case 13:
      if (v2 != 13)
      {
        goto LABEL_30;
      }

      goto LABEL_23;
    case 14:
      if (v2 != 14)
      {
        goto LABEL_30;
      }

      goto LABEL_23;
    case 15:
      if (v2 != 15)
      {
        goto LABEL_30;
      }

      goto LABEL_23;
    case 16:
      if (v2 != 16)
      {
        goto LABEL_30;
      }

      goto LABEL_23;
    case 17:
      if (v2 != 17)
      {
        goto LABEL_30;
      }

      goto LABEL_23;
    case 18:
      if (v2 != 18)
      {
        goto LABEL_30;
      }

      goto LABEL_23;
    case 19:
      if (v2 != 19)
      {
        goto LABEL_30;
      }

      goto LABEL_23;
    case 20:
      if (v2 != 20)
      {
        goto LABEL_30;
      }

      goto LABEL_23;
    case 21:
      if (v2 != 21)
      {
        goto LABEL_30;
      }

      goto LABEL_23;
    case 22:
      if (v2 != 22)
      {
        goto LABEL_30;
      }

      goto LABEL_23;
    case 23:
      if (v2 != 23)
      {
LABEL_30:
        std::__throw_bad_variant_access[abi:ne200100]();
      }

LABEL_23:
      v4 = 0xFFFFE08E00000000;
      v3 = *a2;
      break;
    default:
      v3 = 0;
      v4 = 0xFFFFFFFF00000000;
      break;
  }

  return v4 | v3;
}

unint64_t TPropertyValue::As<Point>(unsigned int *a1, unsigned int *a2)
{
  v2 = a1[4];
  v3 = v2;
  switch(v2)
  {
    case 0:
      if (v2)
      {
        goto LABEL_22;
      }

      v3 = *a2;
      v4 = 0xFFFFE07800000000;
      break;
    case 1:
      if (v2 == 1)
      {
        goto LABEL_17;
      }

      goto LABEL_22;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_22;
      }

      goto LABEL_17;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_22;
      }

      goto LABEL_17;
    case 4:
      if (v2 != 4)
      {
        goto LABEL_22;
      }

      goto LABEL_17;
    case 5:
      if (v2 != 5)
      {
        goto LABEL_22;
      }

      goto LABEL_17;
    case 6:
      if (v2 != 6)
      {
        goto LABEL_22;
      }

      goto LABEL_17;
    case 7:
      if (v2 != 7)
      {
        goto LABEL_22;
      }

      goto LABEL_17;
    case 8:
      if (v2 != 8)
      {
        goto LABEL_22;
      }

      v4 = 0;
      v3 = *a1;
      break;
    case 9:
      goto LABEL_17;
    case 10:
      if (v2 != 10)
      {
        goto LABEL_22;
      }

      goto LABEL_17;
    case 11:
      if (v2 != 11)
      {
        goto LABEL_22;
      }

      goto LABEL_17;
    case 12:
      if (v2 != 12)
      {
        goto LABEL_22;
      }

      goto LABEL_17;
    case 13:
      if (v2 != 13)
      {
        goto LABEL_22;
      }

      goto LABEL_17;
    case 14:
      if (v2 != 14)
      {
        goto LABEL_22;
      }

      goto LABEL_17;
    case 15:
      if (v2 != 15)
      {
        goto LABEL_22;
      }

      goto LABEL_17;
    case 16:
      if (v2 != 16)
      {
        goto LABEL_22;
      }

      goto LABEL_17;
    case 17:
      if (v2 != 17)
      {
        goto LABEL_22;
      }

      goto LABEL_17;
    case 18:
      if (v2 != 18)
      {
        goto LABEL_22;
      }

      goto LABEL_17;
    case 19:
      if (v2 != 19)
      {
        goto LABEL_22;
      }

      goto LABEL_17;
    case 20:
      if (v2 != 20)
      {
        goto LABEL_22;
      }

      goto LABEL_17;
    case 21:
      if (v2 != 21)
      {
        goto LABEL_22;
      }

      goto LABEL_17;
    case 22:
      if (v2 != 22)
      {
        goto LABEL_22;
      }

      goto LABEL_17;
    case 23:
      if (v2 != 23)
      {
LABEL_22:
        std::__throw_bad_variant_access[abi:ne200100]();
      }

LABEL_17:
      v4 = 0xFFFFE08E00000000;
      v3 = *a2;
      break;
    default:
      v4 = 0xFFFFFFFF00000000;
      break;
  }

  return v4 | v3;
}

void TNodeRequest::SetTask(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 16);
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

id __copy_helper_block_ea8_32c13_ZTS8TNodePtr40c47_ZTSRKNSt3__110shared_ptrI17TVolumeSyncThreadEE56c38_ZTSRKNSt3__110shared_ptrI9TNodeTaskEE(void *a1, uint64_t a2)
{
  result = *(a2 + 32);
  v6 = *(a2 + 40);
  v5 = *(a2 + 48);
  a1[4] = result;
  a1[5] = v6;
  a1[6] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(a2 + 64);
  a1[7] = *(a2 + 56);
  a1[8] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

id CopyDeep(NSSet *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = CopyDeepCommon(v1, 0);
    v4 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithSet:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id CopyDeepCommon(NSSet *a1, BOOL a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{-[NSSet count](v3, "count")}];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v3;
  v6 = [(NSSet *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = CopyDeepHelper(*(*(&v12 + 1) + 8 * i), a2);
        [v4 addObject:{v9, v12}];
      }

      v6 = [(NSSet *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v4;
}

id MutableCopyDeep(NSSet *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = CopyDeepCommon(v1, 1);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t TUniqueNamer::TUniqueNamer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = &stru_1F5F42870;
  *a1 = 0;
  *(a1 + 8) = 0;
  CFRetain(&stru_1F5F42870);
  *(a1 + 24) = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  *(a1 + 32) = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  *(a1 + 40) = 0x1000000FFLL;
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  v6 = (a1 + 56);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *a1 = a2;
  if (a3)
  {
    v7 = *(a3 + 16);
    *v6 = *a3;
    *(a1 + 72) = v7;
    if (*v6)
    {
      v8 = *(a1 + 64);
      if (v8)
      {
        v8();
      }
    }
  }

  return a1;
}

void sub_1E5773628(_Unwind_Exception *a1)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v3);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v1);
  _Unwind_Resume(a1);
}

uint64_t TUniqueNamer::TUniqueNamer(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = &stru_1F5F42870;
  *a1 = 0;
  *(a1 + 8) = 0;
  CFRetain(&stru_1F5F42870);
  *(a1 + 24) = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  *(a1 + 32) = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  *(a1 + 40) = 0x1000000FFLL;
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *a1 = *a2;
  v4 = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 40) = v4;
  v5 = *(a2 + 72);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = v5;
  v6 = *(a1 + 64);
  if (v6)
  {
    v6(*(a1 + 56));
  }

  return a1;
}

void sub_1E577372C(_Unwind_Exception *a1)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v3);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v1);
  _Unwind_Resume(a1);
}

const void **TUniqueNamer::SetSeed(TString *this, const TString *a2, const TString *a3)
{
  v6 = this + 2;
  if (v6 != a2)
  {
    TString::SetStringRefAsImmutable(v6, a2->fString.fRef);
  }

  if (&this[3] != a2)
  {
    TString::SetStringRefAsImmutable(this + 3, a2->fString.fRef);
  }

  FileSuffix(a3, &cf);
  if (&this[4] != &cf)
  {
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=<__CFString const*,TRetainReleasePolicy<__CFString const*>>(&this[4].fString.fRef, &cf);
    CFRetain(&stru_1F5F42870);
    if (cf)
    {
      CFRelease(cf);
    }

    cf = &stru_1F5F42870;
  }

  return TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);
}

void TUniqueNamer::~TUniqueNamer(TUniqueNamer *this)
{
  if (*(this + 7))
  {
    v2 = *(this + 9);
    if (v2)
    {
      v2();
    }
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(this + 4);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(this + 3);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(this + 2);
}

uint64_t TUniqueNamer::NextUniqueName(const TString *this, TString *a2)
{
  fRef = this->fString.fRef;
  if (this->fString.fRef)
  {
    v16 = 0;
    p_fRef = &this[3].fString.fRef;
    v6 = RetainCF<__CFString const*>(&this[3].fString.fRef);
    if (v6)
    {
      v7 = CFAutorelease(v6);
      v8 = static_cf_cast<__CFString const*,void const*>(v7);
    }

    else
    {
      v8 = 0;
    }

    v10 = RetainCF<__CFString const*>(&this[4].fString.fRef);
    if (v10)
    {
      v11 = CFAutorelease(v10);
      v12 = static_cf_cast<__CFString const*,void const*>(v11);
    }

    else
    {
      v12 = 0;
    }

    v9 = (fRef)(v8, v12, &this[7], &v16);
    if (!v9)
    {
      v13 = v16;
      if (v16)
      {
        cf = &stru_1F5F42870;
        CFRetain(&stru_1F5F42870);
        TString::SetStringRefAsImmutable(&cf, v13);
        if (p_fRef != &cf)
        {
          TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=<__CFString const*,TRetainReleasePolicy<__CFString const*>>(&this[3].fString.fRef, &cf);
          CFRetain(&stru_1F5F42870);
          if (cf)
          {
            CFRelease(cf);
          }

          cf = &stru_1F5F42870;
        }

        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);
      }
    }

    TAutoRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TAutoRef(&v16);
  }

  else
  {
    v9 = 4294959224;
  }

  SlashesToColons(this + 3, &v16);
  if (&v16 != a2)
  {
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=<__CFString const*,TRetainReleasePolicy<__CFString const*>>(&a2->fString.fRef, &v16);
    CFRetain(&stru_1F5F42870);
    if (v16)
    {
      CFRelease(v16);
    }

    v16 = &stru_1F5F42870;
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v16);
  return v9;
}

void sub_1E57739D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a9);
  TAutoRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TAutoRef(&a10);
  _Unwind_Resume(a1);
}

void TFileCoordinationRecord::TFileCoordinationRecord(TFileCoordinationRecord *this, int a2)
{
  *this = 0u;
  *(this + 1) = 0u;
  v4 = NewFileCoordinator();
  v5 = *(this + 3);
  *(this + 3) = v4;

  CoordinationRecordingLock();
  os_unfair_lock_lock(&_MergedGlobals_7);
  *(this + 8) = a2;
  *(this + 36) = 1;
  *(this + 10) = 0;
  if (!gPendingCoordinations)
  {
    operator new();
  }

  v6 = std::__tree<std::__value_type<int,NSMutableSet * {__strong}>,std::__map_value_compare<int,std::__value_type<int,NSMutableSet * {__strong}>,std::less<int>,true>,std::allocator<std::__value_type<int,NSMutableSet * {__strong}>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(gPendingCoordinations, this + 8)[5];
  if (!v6)
  {
    v7 = [MEMORY[0x1E695DFA8] set];
    v8 = std::__tree<std::__value_type<int,NSMutableSet * {__strong}>,std::__map_value_compare<int,std::__value_type<int,NSMutableSet * {__strong}>,std::less<int>,true>,std::allocator<std::__value_type<int,NSMutableSet * {__strong}>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(gPendingCoordinations, this + 8);
    objc_storeStrong(v8 + 5, v7);
    v6 = v7;
  }

  [v6 addObject:*(this + 3)];

  os_unfair_lock_unlock(&_MergedGlobals_7);
}

void sub_1E5773B4C(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(&_MergedGlobals_7);

  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(a1);
}

id NewFileCoordinator(void)
{
  v0 = objc_opt_new();
  [v0 setPurposeIdentifier:@"com.apple.desktopservices.copyengine"];

  return v0;
}

void CoordinationRecordingLock(void)
{
  if ((atomic_load_explicit(&qword_1ECFF45C8, memory_order_acquire) & 1) == 0)
  {
    CoordinationRecordingLock();
  }
}

void TFileCoordinationRecord::TFileCoordinationRecord(TFileCoordinationRecord *this, NSFileCoordinator *a2)
{
  v3 = a2;
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = v3;
  *(this + 36) = 0;
  *(this + 8) = 0;
  *(this + 10) = 0;
}

void TFileCoordinationRecord::~TFileCoordinationRecord(TFileCoordinationRecord *this)
{
  v2 = *this;
  if (v2)
  {
    (*(v2 + 16))();
  }

  if (*(this + 36) == 1)
  {
    CoordinationRecordingLock();
    os_unfair_lock_lock(&_MergedGlobals_7);
    v3 = std::__tree<std::__value_type<int,NSMutableSet * {__strong}>,std::__map_value_compare<int,std::__value_type<int,NSMutableSet * {__strong}>,std::less<int>,true>,std::allocator<std::__value_type<int,NSMutableSet * {__strong}>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(gPendingCoordinations, this + 8)[5];
    [v3 removeObject:*(this + 3)];
    if (![v3 count])
    {
      std::__tree<std::__value_type<int,NSMutableSet * {__strong}>,std::__map_value_compare<int,std::__value_type<int,NSMutableSet * {__strong}>,std::less<int>,true>,std::allocator<std::__value_type<int,NSMutableSet * {__strong}>>>::__erase_unique<int>(gPendingCoordinations, this + 8);
    }

    os_unfair_lock_unlock(&_MergedGlobals_7);
  }

  v4 = *(this + 2);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void TFileCoordinationRecord::CancelPendingCoordinators(TFileCoordinationRecord *this)
{
  v1 = this;
  v31 = *MEMORY[0x1E69E9840];
  v27 = this;
  CoordinationRecordingLock();
  os_unfair_lock_lock(&_MergedGlobals_7);
  v2 = gPendingCoordinations;
  if (gPendingCoordinations)
  {
    if (v1)
    {
      v28 = &v27;
      v3 = std::__tree<std::__value_type<int,NSMutableSet * {__strong}>,std::__map_value_compare<int,std::__value_type<int,NSMutableSet * {__strong}>,std::less<int>,true>,std::allocator<std::__value_type<int,NSMutableSet * {__strong}>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(gPendingCoordinations, &v27)[5];
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v4 = v3;
      v5 = [v4 countByEnumeratingWithState:&v19 objects:v29 count:16];
      if (v5)
      {
        v6 = *v20;
        do
        {
          for (i = 0; i != v5; ++i)
          {
            if (*v20 != v6)
            {
              objc_enumerationMutation(v4);
            }

            [*(*(&v19 + 1) + 8 * i) cancel];
          }

          v5 = [v4 countByEnumeratingWithState:&v19 objects:v29 count:16];
        }

        while (v5);
      }

      [v4 removeAllObjects];
      std::__tree<std::__value_type<int,NSMutableSet * {__strong}>,std::__map_value_compare<int,std::__value_type<int,NSMutableSet * {__strong}>,std::less<int>,true>,std::allocator<std::__value_type<int,NSMutableSet * {__strong}>>>::__erase_unique<int>(gPendingCoordinations, &v27);
    }

    else
    {
      v8 = gPendingCoordinations + 8;
      v9 = *gPendingCoordinations;
      if (*gPendingCoordinations != gPendingCoordinations + 8)
      {
        do
        {
          v10 = v9[5];
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v11 = v10;
          v12 = [v11 countByEnumeratingWithState:&v23 objects:v30 count:16];
          if (v12)
          {
            v13 = *v24;
            do
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v24 != v13)
                {
                  objc_enumerationMutation(v11);
                }

                [*(*(&v23 + 1) + 8 * j) cancel];
              }

              v12 = [v11 countByEnumeratingWithState:&v23 objects:v30 count:16];
            }

            while (v12);
          }

          [v11 removeAllObjects];
          v15 = v9[1];
          if (v15)
          {
            do
            {
              v16 = v15;
              v15 = *v15;
            }

            while (v15);
          }

          else
          {
            do
            {
              v16 = v9[2];
              v17 = *v16 == v9;
              v9 = v16;
            }

            while (!v17);
          }

          v9 = v16;
        }

        while (v16 != v8);
        v2 = gPendingCoordinations;
      }

      std::__tree<std::__value_type<int,NSMutableSet * {__strong}>,std::__map_value_compare<int,std::__value_type<int,NSMutableSet * {__strong}>,std::less<int>,true>,std::allocator<std::__value_type<int,NSMutableSet * {__strong}>>>::destroy(v2, *(v2 + 8));
      *v2 = v2 + 8;
      *(v2 + 16) = 0;
      *(v2 + 8) = 0;
    }
  }

  os_unfair_lock_unlock(&_MergedGlobals_7);
  v18 = *MEMORY[0x1E69E9840];
}

const void **TFileCoordinationRecord::CoordinateReading@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v9 = *a2;
  v8 = *(a2 + 8);
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = *(a1 + 16);
  *(a1 + 8) = v9;
  *(a1 + 16) = v8;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v13 = TFileCoordinationRecord::CopyURLForCoordinatedReading(a1, a2, a3);
  if (v13 != **a2)
  {
    _ZNSt3__115allocate_sharedB8ne200100I10TCFURLInfoNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  v11 = *(a2 + 8);
  *a4 = *a2;
  a4[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  return TAutoRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TAutoRef(&v13);
}

void sub_1E5774110(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, ...)
{
  va_start(va, a3);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }

  TAutoRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TAutoRef(va);
  _Unwind_Resume(a1);
}

id TFileCoordinationRecord::CopyURLForCoordinatedReading(uint64_t a1, id **a2, int a3)
{
  v38 = 0;
  v6 = **a2;
  v7 = NormalizeNoFollowURL(v6, &v38);

  v8 = Copy<NSMutableArray<FILocalAppContainerNode *>>(v7);
  v37 = v8;
  v9 = *a2;
  TCFURLInfo::CheckPrefetchState(v9, 1);
  if ((*(v9 + 54) & 4) != 0)
  {
    v10 = _CFURLCopyLogicalURLOfPromiseAtURL();
    v36 = v10;
    if (v10)
    {
      v11 = v10;

      v7 = v11;
    }

    if (a3)
    {
      v12 = [MEMORY[0x1E696AC08] defaultManager];
      v13 = [v7 path];
      v14 = [v12 fileExistsAtPath:v13];

      if (v14)
      {
        v15 = v8;
        TAutoRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TAutoRef(&v36);
        v16 = v15;
        goto LABEL_20;
      }
    }

    TAutoRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TAutoRef(&v36);
  }

  LOBYTE(v36) = 0;
  if (a3)
  {
    v17 = *(a1 + 24);
    v18 = 262145;
    if (objc_opt_respondsToSelector())
    {
      v19 = [MEMORY[0x1E696ABF8] _nextClaimIdentifier];
      v20 = dispatch_get_global_queue(0, 0);
      v21 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v20);

      v22 = *(a1 + 24);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = ___ZN23TFileCoordinationRecord28CopyURLForCoordinatedReadingERKNSt3__110shared_ptrIK10TCFURLInfoEEb_block_invoke;
      handler[3] = &unk_1E877F518;
      v34 = v22;
      v35 = v19;
      v23 = v19;
      v24 = v22;
      dispatch_source_set_event_handler(v21, handler);
      v25 = dispatch_time(0, 10000000000);
      dispatch_source_set_timer(v21, v25, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
      dispatch_resume(v21);
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
    v18 = 1;
  }

  v26 = *(a1 + 24);
  v31 = a1;
  v32 = 0;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3321888768;
  v29[2] = ___ZN23TFileCoordinationRecord28CopyURLForCoordinatedReadingERKNSt3__110shared_ptrIK10TCFURLInfoEEb_block_invoke_2;
  v29[3] = &__block_descriptor_64_ea8_32c106_ZTSKZN23TFileCoordinationRecord28CopyURLForCoordinatedReadingERKNSt3__110shared_ptrIK10TCFURLInfoEEbE3__0_e24_v24__0__NSURL_8___v___16l;
  v29[4] = &v37;
  v29[5] = &v36;
  v30 = v38;
  [v26 _coordinateReadingItemAtURL:v7 options:v18 error:&v32 byAccessor:v29];
  v27 = v32;
  if (v21)
  {
    dispatch_source_cancel(v21);
  }

  if ((v36 & 1) == 0)
  {
    if (a3)
    {
      [v27 code];
    }

    *(a1 + 40) = -8095;
  }

  v16 = v37;

  v15 = v37;
LABEL_20:

  return v16;
}

id NormalizeNoFollowURL(NSURL *a1, BOOL *a2)
{
  v4 = a1;
  v5 = v4;
  if (!v4 || [(NSURL *)v4 isFileReferenceURL])
  {
    goto LABEL_13;
  }

  TString::TString(&v13, [(NSURL *)v5 fileSystemRepresentation]);
  v6 = NoFollowPrefix();
  if (TString::BeginsWith(&v13, v6))
  {
    TString::SubStringFrom(&v13, 10, &theString);
  }

  else
  {
    theString = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(&theString, v13);
  }

  v7 = v5;
  if (CFStringGetLength(theString))
  {
    Length = CFStringGetLength(theString);
    v8 = 1;
    if (Length < CFStringGetLength(v13))
    {
      *a2 = 1;
      v11 = MEMORY[0x1E692C960](v5);
      v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:theString];
      Length = v9;
      if (v11)
      {
        MEMORY[0x1E692C8F0](v9);
      }

      TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef(&v11);
      v8 = 0;
    }
  }

  else
  {
    v8 = 1;
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&theString);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v13);
  if (v8)
  {
LABEL_13:
    v7 = 0;
    *a2 = 0;
    Length = v5;
  }

  return Length;
}

void sub_1E5774644(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v7 = va_arg(va2, const void *);

  TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef(va);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va1);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va2);

  _Unwind_Resume(a1);
}

void ___ZN23TFileCoordinationRecord28CopyURLForCoordinatedReadingERKNSt3__110shared_ptrIK10TCFURLInfoEEb_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12 = v5;
  v7 = v6;
  v8 = *(a1 + 56);
  if (v12)
  {
    if (*(a1 + 48) == 1)
    {
      MakeNoFollowURL(v12);
    }

    else
    {
      Copy<NSMutableArray<FILocalAppContainerNode *>>(v12);
    }
    v9 = ;
    objc_storeStrong(*(a1 + 32), v9);
  }

  v10 = [v7 copy];
  v11 = *v8;
  *v8 = v10;

  **(a1 + 40) = 1;
}

__n128 __copy_helper_block_ea8_32c106_ZTSKZN23TFileCoordinationRecord28CopyURLForCoordinatedReadingERKNSt3__110shared_ptrIK10TCFURLInfoEEbE3__0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  v3 = *(a2 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v3;
  return result;
}

uint64_t TFileCoordinationRecord::CoordinateWriting(uint64_t a1, os_unfair_lock_s **a2, unsigned int a3, os_unfair_lock_s **a4)
{
  v8 = *a2;
  os_unfair_lock_lock(*a2 + 27);
  v9 = *&v8[4]._os_unfair_lock_opaque;
  *&v20 = v9;
  if (v9)
  {
    CFRetain(v9);
  }

  os_unfair_lock_unlock(v8 + 27);
  v10 = TFileCoordinationRecord::CopyURLForCoordinatedWriting(a1, v9, a3);
  v21 = v10;
  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v20);
  if (!v10)
  {
    v14 = a4[1];
    v15 = 4294967168;
    v16 = 4294967168;
    *a4 = 0;
    a4[1] = 0;
    if (!v14)
    {
      goto LABEL_10;
    }

LABEL_9:
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    v16 = v15;
    goto LABEL_10;
  }

  v11 = *a2;
  os_unfair_lock_lock(*a2 + 27);
  v12 = *&v11[4]._os_unfair_lock_opaque;
  *&v20 = v12;
  if (v12)
  {
    CFRetain(v12);
  }

  os_unfair_lock_unlock(v11 + 27);
  v13 = v21;
  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v20);
  if (v12 != v13)
  {
    _ZNSt3__115allocate_sharedB8ne200100I7TFSInfoNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  v19 = *a2;
  v18 = a2[1];
  if (v18)
  {
    atomic_fetch_add_explicit(&v18[2], 1uLL, memory_order_relaxed);
  }

  v15 = 0;
  v16 = 0;
  v14 = a4[1];
  *a4 = v19;
  a4[1] = v18;
  if (v14)
  {
    goto LABEL_9;
  }

LABEL_10:
  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v21);
  return v16;
}

void sub_1E5774968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

NSURL *TFileCoordinationRecord::CopyURLForCoordinatedWriting(uint64_t a1, void *a2, unsigned int a3)
{
  v15 = Copy<NSMutableArray<FILocalAppContainerNode *>>(a2);
  v14 = 0;
  v5 = NormalizeNoFollowURL(v15, &v14);
  v6 = *(a1 + 24);
  v12 = a1;
  v13 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3321888768;
  v10[2] = ___ZN23TFileCoordinationRecord28CopyURLForCoordinatedWritingEPK7__CFURLNS_14WritingOptionsE_block_invoke;
  v10[3] = &__block_descriptor_56_ea8_32c98_ZTSKZN23TFileCoordinationRecord28CopyURLForCoordinatedWritingEPK7__CFURLNS_14WritingOptionsEE3__0_e24_v24__0__NSURL_8___v___16l;
  v10[4] = &v15;
  v11 = v14;
  [v6 _coordinateWritingItemAtURL:v5 options:a3 error:&v13 byAccessor:v10];
  v7 = v13;
  v8 = v15;

  return v8;
}

void ___ZN23TFileCoordinationRecord28CopyURLForCoordinatedWritingEPK7__CFURLNS_14WritingOptionsE_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12 = v5;
  v7 = v6;
  v8 = *(a1 + 48);
  if (v12)
  {
    if (*(a1 + 40) == 1)
    {
      MakeNoFollowURL(v12);
    }

    else
    {
      Copy<NSMutableArray<FILocalAppContainerNode *>>(v12);
    }
    v9 = ;
    objc_storeStrong(*(a1 + 32), v9);
  }

  v10 = [v7 copy];
  v11 = *v8;
  *v8 = v10;
}

__n128 __copy_helper_block_ea8_32c98_ZTSKZN23TFileCoordinationRecord28CopyURLForCoordinatedWritingEPK7__CFURLNS_14WritingOptionsEE3__0(__n128 *a1, __n128 *a2)
{
  result = a2[2];
  a1[3].n128_u64[0] = a2[3].n128_u64[0];
  a1[2] = result;
  return result;
}

uint64_t TFileCoordinationRecord::CoordinatedWriting(TFileCoordinationRecord *this, const TString *a2)
{
  v3 = RetainCF<__CFString const*>(&a2->fString.fRef);
  if (v3)
  {
    v4 = CFAutorelease(v3);
    v5 = static_cf_cast<__CFString const*,void const*>(v4);
  }

  else
  {
    v5 = 0;
  }

  v9 = CFURLCreateWithFileSystemPath(0, v5, kCFURLPOSIXPathStyle, 0);
  v8 = TFileCoordinationRecord::CopyURLForCoordinatedWriting(this, v9, 0);
  if (v8)
  {
    v6 = 0;
  }

  else
  {
    v6 = 4294967168;
  }

  TAutoRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TAutoRef(&v8);
  TAutoRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TAutoRef(&v9);
  return v6;
}

void sub_1E5774C70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TAutoRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TAutoRef(va);
  _Unwind_Resume(a1);
}

id MakeNoFollowURL(NSURL *a1)
{
  v1 = a1;
  if ([(NSURL *)v1 isFileReferenceURL])
  {
    v2 = v1;
  }

  else
  {
    TString::TString(&v7, [(NSURL *)v1 fileSystemRepresentation]);
    MakeNoFollowPath(&v7, &v6);
    v5 = MEMORY[0x1E692C960](v1);
    v3 = [MEMORY[0x1E695DFF8] fileURLWithPath:v6.fString.fRef];
    v2 = v3;
    if (v5)
    {
      MEMORY[0x1E692C8F0](v3);
    }

    TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef(&v5);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v6.fString.fRef);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v7.fString.fRef);
  }

  return v2;
}

void sub_1E5774D64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v6 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v8 = va_arg(va2, const void *);
  v4 = v3;

  TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef(va);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va1);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va2);

  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<int,NSMutableSet * {__strong}>,std::__map_value_compare<int,std::__value_type<int,NSMutableSet * {__strong}>,std::less<int>,true>,std::allocator<std::__value_type<int,NSMutableSet * {__strong}>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<int,NSMutableSet * {__strong}>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<int,NSMutableSet * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<int,NSMutableSet * {__strong}>,std::__map_value_compare<int,std::__value_type<int,NSMutableSet * {__strong}>,std::less<int>,true>,std::allocator<std::__value_type<int,NSMutableSet * {__strong}>>>::__erase_unique<int>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    if (*(v2 + 32) >= v3)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < v3));
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 32))
  {
    return 0;
  }

  std::__tree<std::__value_type<int,NSMutableSet * {__strong}>,std::__map_value_compare<int,std::__value_type<int,NSMutableSet * {__strong}>,std::less<int>,true>,std::allocator<std::__value_type<int,NSMutableSet * {__strong}>>>::erase(a1, v4);
  return 1;
}

uint64_t *std::__tree<std::__value_type<int,NSMutableSet * {__strong}>,std::__map_value_compare<int,std::__value_type<int,NSMutableSet * {__strong}>,std::less<int>,true>,std::allocator<std::__value_type<int,NSMutableSet * {__strong}>>>::erase(uint64_t **a1, uint64_t a2)
{
  v3 = std::__tree<Property>::__remove_node_pointer(a1, a2);

  operator delete(a2);
  return v3;
}

void std::__tree<std::__value_type<int,NSMutableSet * {__strong}>,std::__map_value_compare<int,std::__value_type<int,NSMutableSet * {__strong}>,std::less<int>,true>,std::allocator<std::__value_type<int,NSMutableSet * {__strong}>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<int,NSMutableSet * {__strong}>,std::__map_value_compare<int,std::__value_type<int,NSMutableSet * {__strong}>,std::less<int>,true>,std::allocator<std::__value_type<int,NSMutableSet * {__strong}>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<int,NSMutableSet * {__strong}>,std::__map_value_compare<int,std::__value_type<int,NSMutableSet * {__strong}>,std::less<int>,true>,std::allocator<std::__value_type<int,NSMutableSet * {__strong}>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void sub_1E57753B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9, id a10, uint64_t a11, uint64_t a12, char a13)
{
  std::__function::__value_func<void ()(std::vector<std::optional<FINode * {__strong}>> const&)>::~__value_func[abi:ne200100](&a13);

  objc_destroyWeak(&a9);
  _Unwind_Resume(a1);
}

void sub_1E577554C(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

id objc_cast<FIRenameSubOperation,FISubOperation * {__strong}>(void *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_1E5775AE4(_Unwind_Exception *a1)
{
  v6 = v5;

  objc_sync_exit(v4);
  _Unwind_Resume(a1);
}

void sub_1E5775DBC(_Unwind_Exception *a1)
{
  objc_sync_exit(v5);

  _Unwind_Resume(a1);
}

id ___ZZ32__FINewFolderOperation_schedule_ENK3__1cvU13block_pointerFP8NSStringP11FIOperationS1_S1_PU15__autoreleasingP7NSErrorEEv_block_invoke(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v8 = a3;
  v9 = a4;
  v10 = v8;
  v11 = v9;
  v12 = static_objc_cast<NSString,objc_object * {__strong}>(a2);
  v13 = [v12 nameConflictHandler:v10 fileExtension:v11 error:a5];

  return v13;
}

void ___ZZ32__FINewFolderOperation_schedule_ENK3__2cvU13block_pointerFvP11FIOperation16NodeSuboperationP6FINodeEEv_block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = a4;
  v9 = static_objc_cast<NSString,objc_object * {__strong}>(a2);
  v10 = v9;
  if (a3 == 21)
  {
    v11 = v9;
    objc_sync_enter(v11);
    v12 = NSStringFromSelector(sel_folderNode);
    StChangeValueForKeyHelper::StChangeValueForKeyHelper(v15, v11, v12);

    objc_storeStrong(&v11[179].isa, a4);
    StChangeValueForKeyHelper::~StChangeValueForKeyHelper(v15);
    objc_sync_exit(v11);
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    (*(v13 + 16))(v13, v10, a3, v8);
  }

  if (([v10 postOpRenameHandler:v8 suboperation:a3] & 1) == 0)
  {
    v14 = [v10 subOperation];
    [v14 done];
  }
}

uint64_t __copy_helper_block_ea8_32c45_ZTSKZ32__FINewFolderOperation_schedule_E3__2(uint64_t a1, uint64_t a2)
{
  objc_copyWeak((a1 + 32), (a2 + 32));
  result = MEMORY[0x1E692D6D0](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_ea8_32c45_ZTSKZ32__FINewFolderOperation_schedule_E3__2(uint64_t a1)
{

  objc_destroyWeak((a1 + 32));
}

void sub_1E57767F8(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

id TNSWeakPtr<FINewFolderOperation>::Lock(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1);
  if ((objc_opt_respondsToSelector() & 1) != 0 && [WeakRetained isTornDown])
  {

    WeakRetained = 0;
  }

  return WeakRetained;
}

void *__copy_helper_atomic_property_(void *result, void *a2)
{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void *std::__shared_ptr_emplace<TDSOperationRecord>::__shared_ptr_emplace[abi:ne200100]<TNode *,TNode *,OpaquePropertyListRef *&,OperationType &,std::allocator<TDSOperationRecord>,0>(void *a1, const TNode **a2, const TNode **a3, void *a4, unsigned int *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5F41D30;
  std::construct_at[abi:ne200100]<TDSOperationRecord,TNode *,TNode *,OpaquePropertyListRef *&,OperationType &,TDSOperationRecord*>((a1 + 3), a2, a3, a4, a5);
  return a1;
}

void std::__shared_ptr_emplace<TDSOperationRecord>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5F41D30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E692CD30);
}

uint64_t std::construct_at[abi:ne200100]<TDSOperationRecord,TNode *,TNode *,OpaquePropertyListRef *&,OperationType &,TDSOperationRecord*>(uint64_t a1, const TNode **a2, const TNode **a3, void *a4, unsigned int *a5)
{
  TNodePtr::TNodePtr(&v11, *a2);
  TNodePtr::TNodePtr(&v10, *a3);
  TDSOperationRecord::TDSOperationRecord(a1, &v11, &v10, *a4, *a5);

  return a1;
}

void TDSOperationRecord::~TDSOperationRecord(TDSOperationRecord *this)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(this + 14);
  NodePropertyListRelease(*(this + 13));

  std::mutex::~mutex(this);
}

void TFolderSizingThread::SetTimerToDispatchResizeRequest(void *a1, uint64_t *a2, uint64_t a3)
{
  v6 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(*a1 + 8));
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3321888768;
  handler[2] = ___ZN19TFolderSizingThread31SetTimerToDispatchResizeRequestERKNSt3__110shared_ptrIS_EERKNS1_I9TNodeTaskEEy_block_invoke;
  handler[3] = &__block_descriptor_72_ea8_32c113_ZTSKZN19TFolderSizingThread31SetTimerToDispatchResizeRequestERKNSt3__110shared_ptrIS_EERKNS1_I9TNodeTaskEEyE3__0_e5_v8__0l;
  v8 = *a1;
  v7 = a1[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = v6;
  v10 = v9;
  v11 = *a2;
  v12 = a2[1];
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  handler[4] = v8;
  v17 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = v9;
  v19 = v11;
  v20 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    dispatch_source_set_event_handler(v9, handler);
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    if (!v7)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  dispatch_source_set_event_handler(v9, handler);
  if (v7)
  {
LABEL_9:
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

LABEL_10:
  v14 = TTime::MicrosecondsSinceStartup(v13);
  v15 = dispatch_time(0, 1000 * (a3 - v14));
  dispatch_source_set_timer(v10, v15, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_resume(v10);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }
}

void sub_1E5777358(_Unwind_Exception *a1)
{
  TFSInfoSizer::SizeFolder(std::shared_ptr<TFSInfoSizer>,unsigned long long)::$_0::~$_0(v2 + 32);

  _Unwind_Resume(a1);
}

void ___ZN19TFolderSizingThread31SetTimerToDispatchResizeRequestERKNSt3__110shared_ptrIS_EERKNS1_I9TNodeTaskEEy_block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3321888768;
  v3[2] = ___ZZN19TFolderSizingThread31SetTimerToDispatchResizeRequestERKNSt3__110shared_ptrIS_EERKNS1_I9TNodeTaskEEyENK3__0clEv_block_invoke;
  v3[3] = &__block_descriptor_48_ea8_32c38_ZTSRKNSt3__110shared_ptrI9TNodeTaskEE_e5_v8__0l;
  v2 = *(a1 + 64);
  v3[4] = *(a1 + 56);
  v4 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ExceptionSafeBlock(v3);
  dispatch_source_cancel(*(a1 + 48));
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1E5777410(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

id __copy_helper_block_ea8_32c113_ZTSKZN19TFolderSizingThread31SetTimerToDispatchResizeRequestERKNSt3__110shared_ptrIS_EERKNS1_I9TNodeTaskEEyE3__0(void *a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  a1[4] = *(a2 + 32);
  a1[5] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a2 + 48);
  v7 = *(a2 + 56);
  v6 = *(a2 + 64);
  a1[6] = result;
  a1[7] = v7;
  a1[8] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_ea8_32c113_ZTSKZN19TFolderSizingThread31SetTimerToDispatchResizeRequestERKNSt3__110shared_ptrIS_EERKNS1_I9TNodeTaskEEyE3__0(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void TFolderSizingThread::PostFolderSizingTaskRequest(uint64_t a1, uint64_t a2)
{
  v4 = **a2;
  v5 = *(*a1 + 8);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3321888768;
  v8[2] = ___ZN19TFolderSizingThread27PostFolderSizingTaskRequestERKNSt3__110shared_ptrIS_EERKNS1_I9TNodeTaskEE_block_invoke;
  v8[3] = &__block_descriptor_48_ea8_32c108_ZTSKZN19TFolderSizingThread27PostFolderSizingTaskRequestERKNSt3__110shared_ptrIS_EERKNS1_I9TNodeTaskEEE3__0_e5_v8__0l;
  v6 = *a2;
  v7 = *(a2 + 8);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    v9 = v6;
    v10 = v7;
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    dispatch_async(v5, v8);
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  else
  {
    v9 = v6;
    v10 = 0;
    dispatch_async(v5, v8);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void ___ZN19TFolderSizingThread27PostFolderSizingTaskRequestERKNSt3__110shared_ptrIS_EERKNS1_I9TNodeTaskEE_block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3321888768;
  v2[2] = ___ZZN19TFolderSizingThread27PostFolderSizingTaskRequestERKNSt3__110shared_ptrIS_EERKNS1_I9TNodeTaskEEENK3__0clEv_block_invoke;
  v2[3] = &__block_descriptor_48_ea8_32c38_ZTSRKNSt3__110shared_ptrI9TNodeTaskEE_e5_v8__0l;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ExceptionSafeBlock(v2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_1E5777650(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_ea8_32c108_ZTSKZN19TFolderSizingThread27PostFolderSizingTaskRequestERKNSt3__110shared_ptrIS_EERKNS1_I9TNodeTaskEEE3__0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_ea8_32c108_ZTSKZN19TFolderSizingThread27PostFolderSizingTaskRequestERKNSt3__110shared_ptrIS_EERKNS1_I9TNodeTaskEEE3__0(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t __copy_helper_block_ea8_32c38_ZTSRKNSt3__110shared_ptrI9TNodeTaskEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t NodePropertyListCreateCopy(void *a1)
{
  if (a1)
  {
    MapFromListRef(a1, &v2);
    NodeNewPropertyList();
  }

  return 0;
}

void sub_1E5777808(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NodePropertyListRetain(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  if (!TRefCount::Retain<long>((a1 + 16)))
  {
    return 0;
  }

  return v1;
}

BOOL TRefCount::Retain<long>(unint64_t *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = atomic_load(a1);
  if ((v2 & 0x8000000000000000) != 0)
  {
    v4 = v2;
LABEL_7:
    v5 = LogObj(5);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = IsRedactionEnabled();
      if (v6)
      {
        v7 = &stru_1F5F42870;
      }

      else
      {
        v1 = [MEMORY[0x1E696AF00] callStackSymbols];
        v7 = [v1 description];
      }

      v10 = 136446722;
      v11 = "Retain";
      v12 = 2048;
      v13 = v4;
      v14 = 2114;
      v15 = v7;
      _os_log_impl(&dword_1E5674000, v5, OS_LOG_TYPE_ERROR, "%{public}s on bad object. -- refCount: %ld\n%{public}@", &v10, 0x20u);
      if (!v6)
      {
      }
    }

    v3 = 0;
  }

  else
  {
    while (1)
    {
      v3 = v2 != 0;
      if (!v2)
      {
        break;
      }

      v4 = v2;
      atomic_compare_exchange_strong_explicit(a1, &v4, v2 + 1, memory_order_release, memory_order_relaxed);
      if (v4 == v2)
      {
        break;
      }

      v2 = v4;
      if ((v4 & 0x8000000000000000) != 0)
      {
        goto LABEL_7;
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return v3;
}

BOOL NodePropertyListRelease(_BOOL8 result)
{
  if (result)
  {
    v1 = result;
    result = TRefCount::Release<long>((result + 16));
    if (result)
    {
      v2 = *(v1 + 8);
      if (v2)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v2);
      }

      JUMPOUT(0x1E692CD30);
    }
  }

  return result;
}

BOOL TRefCount::Release<long>(unint64_t *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = atomic_load(a1);
  if (v2 < 1)
  {
    v3 = v2;
LABEL_7:
    v5 = LogObj(5);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = IsRedactionEnabled();
      if (v6)
      {
        v7 = &stru_1F5F42870;
      }

      else
      {
        v1 = [MEMORY[0x1E696AF00] callStackSymbols];
        v7 = [v1 description];
      }

      v11 = 136446722;
      v12 = "Release";
      v13 = 2048;
      v14 = v3;
      v15 = 2114;
      v16 = v7;
      _os_log_impl(&dword_1E5674000, v5, OS_LOG_TYPE_ERROR, "%{public}s overrelease -- refCount: %ld\n%{public}@", &v11, 0x20u);
      if (!v6)
      {
      }
    }

    v4 = v3 - 1;
  }

  else
  {
    v3 = v2;
    while (1)
    {
      v4 = v2 - 1;
      atomic_compare_exchange_strong_explicit(a1, &v3, v2 - 1, memory_order_release, memory_order_relaxed);
      if (v3 == v2)
      {
        break;
      }

      v2 = v3;
      if (v3 < 1)
      {
        goto LABEL_7;
      }
    }

    v3 = v2;
  }

  result = v3 == 1 && v4 == 0;
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t NodePropertyListRemoveValue(void *a1, unsigned int a2)
{
  v6 = a2;
  if (!a1)
  {
    return 4294959224;
  }

  MapFromListRef(a1, &v4);
  if (std::__hash_table<std::__hash_value_type<Property,TPropertyValue>,std::__unordered_map_hasher<Property,std::__hash_value_type<Property,TPropertyValue>,std::hash<Property>,std::equal_to<Property>,true>,std::__unordered_map_equal<Property,std::__hash_value_type<Property,TPropertyValue>,std::equal_to<Property>,std::hash<Property>,true>,std::allocator<std::__hash_value_type<Property,TPropertyValue>>>::__erase_unique<Property>(v4, &v6))
  {
    v2 = 0;
  }

  else
  {
    v2 = 4294959245;
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v2;
}

void sub_1E5777C44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NodePropertyListGet(void *a1, unsigned int a2, uint64_t a3)
{
  v9 = a2;
  if (!a1)
  {
    return 4294959224;
  }

  MapFromListRef(a1, &v7);
  v4 = std::__hash_table<std::__hash_value_type<Property,TPropertyValue>,std::__unordered_map_hasher<Property,std::__hash_value_type<Property,TPropertyValue>,std::hash<Property>,std::equal_to<Property>,true>,std::__unordered_map_equal<Property,std::__hash_value_type<Property,TPropertyValue>,std::equal_to<Property>,std::hash<Property>,true>,std::allocator<std::__hash_value_type<Property,TPropertyValue>>>::find<Property>(v7, &v9);
  if (v4)
  {
    v5 = TPropertyReference::SetAs<TPropertyValue>(a3, v4 + 1);
  }

  else
  {
    v5 = 4294959245;
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  return v5;
}

void sub_1E5777CD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NodePropertyListGetAsBool(void *a1, unsigned int a2, uint64_t a3)
{
  if (!a3)
  {
    return 4294959224;
  }

  v5 = 1;
  v4 = a3;
  return NodePropertyListGet(a1, a2, &v4);
}

uint64_t NodePropertyListGetAsByte(void *a1, unsigned int a2, uint64_t a3)
{
  if (!a3)
  {
    return 4294959224;
  }

  v5 = 2;
  v4 = a3;
  return NodePropertyListGet(a1, a2, &v4);
}

uint64_t NodePropertyListGetAsInt16(void *a1, unsigned int a2, uint64_t a3)
{
  if (!a3)
  {
    return 4294959224;
  }

  v5 = 3;
  v4 = a3;
  return NodePropertyListGet(a1, a2, &v4);
}

uint64_t NodePropertyListGetAsInt32(void *a1, unsigned int a2, uint64_t a3)
{
  if (!a3)
  {
    return 4294959224;
  }

  v5 = 4;
  v4 = a3;
  return NodePropertyListGet(a1, a2, &v4);
}

uint64_t NodePropertyListGetAsInt64(void *a1, unsigned int a2, uint64_t a3)
{
  if (!a3)
  {
    return 4294959224;
  }

  v5 = 5;
  v4 = a3;
  return NodePropertyListGet(a1, a2, &v4);
}

uint64_t NodePropertyListGetAsCFAbsoluteTime(void *a1, unsigned int a2, uint64_t a3)
{
  if (!a3)
  {
    return 4294959224;
  }

  v5 = 7;
  v4 = a3;
  return NodePropertyListGet(a1, a2, &v4);
}

uint64_t NodePropertyListGetAsData(void *a1, unsigned int a2, unsigned int a3, _DWORD *a4, uint64_t a5)
{
  v5 = 4294959224;
  if (a3 && a4 && a5)
  {
    v10[1] = a5;
    v10[0] = a3;
    v9 = 9;
    v8 = v10;
    v5 = NodePropertyListGet(a1, a2, &v8);
    *a4 = HIDWORD(v10[0]);
  }

  return v5;
}

uint64_t NodePropertyListCopyAsCFString(void *a1, unsigned int a2, void *a3)
{
  if (!a3)
  {
    return 4294959224;
  }

  v9 = 0;
  v8 = 12;
  v7 = &v9;
  v4 = NodePropertyListGet(a1, a2, &v7);
  if (!v4)
  {
    v5 = v9;
    v9 = 0;
    *a3 = v5;
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v9);
  return v4;
}

void sub_1E5777F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

uint64_t NodePropertyListCopyAsCFData(void *a1, unsigned int a2, void *a3)
{
  if (!a3)
  {
    return 4294959224;
  }

  v9 = 0;
  v8 = 14;
  v7 = &v9;
  v4 = NodePropertyListGet(a1, a2, &v7);
  if (!v4)
  {
    v5 = v9;
    v9 = 0;
    *a3 = v5;
  }

  TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef(&v9);
  return v4;
}

void sub_1E5777FCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

uint64_t NodePropertyListCopyAsCFArray(void *a1, unsigned int a2, void *a3)
{
  if (!a3)
  {
    return 4294959224;
  }

  v9 = 0;
  v8 = 17;
  v7 = &v9;
  v4 = NodePropertyListGet(a1, a2, &v7);
  if (!v4)
  {
    v5 = v9;
    v9 = 0;
    *a3 = v5;
  }

  TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>::~TRef(&v9);
  return v4;
}

void sub_1E5778050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

uint64_t NodePropertyListSet(void *a1, unsigned int a2, const TPropertyReference *a3)
{
  v9 = a2;
  if (!a1)
  {
    return 4294959224;
  }

  MapFromListRef(a1, &v7);
  TPropertyValue::TPropertyValue(&v6, a3);
  v10 = &v9;
  v4 = std::__hash_table<std::__hash_value_type<Property,TPropertyValue>,std::__unordered_map_hasher<Property,std::__hash_value_type<Property,TPropertyValue>,std::hash<Property>,std::equal_to<Property>,true>,std::__unordered_map_equal<Property,std::__hash_value_type<Property,TPropertyValue>,std::equal_to<Property>,std::hash<Property>,true>,std::allocator<std::__hash_value_type<Property,TPropertyValue>>>::__emplace_unique_key_args<Property,std::piecewise_construct_t const&,std::tuple<Property const&>,std::tuple<>>(v7, &v9);
  TPropertyValue::operator=(v4 + 1, &v6);
  TPropertyValue::~TPropertyValue(&v6);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  return 0;
}

void sub_1E57780F8(_Unwind_Exception *a1, TPropertyValue *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  TPropertyValue::~TPropertyValue(&a10);
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(a1);
}

uint64_t NodePropertyListSetAsBool(void *a1, unsigned int a2, char a3)
{
  v6 = a3;
  v5 = 1;
  v4 = &v6;
  return NodePropertyListSet(a1, a2, &v4);
}

uint64_t NodePropertyListSetAsByte(void *a1, unsigned int a2, char a3)
{
  v6 = a3;
  v5 = 2;
  v4 = &v6;
  return NodePropertyListSet(a1, a2, &v4);
}

uint64_t NodePropertyListSetAsInt16(void *a1, unsigned int a2, __int16 a3)
{
  v6 = a3;
  v5 = 3;
  v4 = &v6;
  return NodePropertyListSet(a1, a2, &v4);
}

uint64_t NodePropertyListSetAsInt32(void *a1, unsigned int a2, int a3)
{
  v6 = a3;
  v5 = 4;
  v4 = &v6;
  return NodePropertyListSet(a1, a2, &v4);
}

uint64_t NodePropertyListSetAsInt64(void *a1, unsigned int a2, uint64_t a3)
{
  v6 = a3;
  v5 = 5;
  v4 = &v6;
  return NodePropertyListSet(a1, a2, &v4);
}

uint64_t NodePropertyListSetAsCFAbsoluteTime(void *a1, unsigned int a2, double a3)
{
  v6 = a3;
  v5 = 7;
  v4 = &v6;
  return NodePropertyListSet(a1, a2, &v4);
}

uint64_t NodePropertyListSetAsData(void *a1, unsigned int a2, int a3, uint64_t a4)
{
  v7[0] = a3;
  v7[1] = a3;
  v8 = a4;
  v6 = 9;
  v5 = v7;
  return NodePropertyListSet(a1, a2, &v5);
}

uint64_t NodePropertyListSetAsCFString(void *a1, unsigned int a2, CFTypeRef cf)
{
  v9 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v8 = 12;
  v7 = &v9;
  v5 = NodePropertyListSet(a1, a2, &v7);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v9);
  return v5;
}

void sub_1E5778318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

uint64_t NodePropertyListSetAsCFData(void *a1, unsigned int a2, CFTypeRef cf)
{
  v9 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v8 = 14;
  v7 = &v9;
  v5 = NodePropertyListSet(a1, a2, &v7);
  TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef(&v9);
  return v5;
}

void sub_1E5778398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

uint64_t NodePropertyListSetAsCFArray(void *a1, unsigned int a2, CFTypeRef cf)
{
  v9 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v8 = 17;
  v7 = &v9;
  v5 = NodePropertyListSet(a1, a2, &v7);
  TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>::~TRef(&v9);
  return v5;
}

void sub_1E5778418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<std::unordered_map<Property,TPropertyValue>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5F41E10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E692CD30);
}

uint64_t std::__hash_table<std::__hash_value_type<Property,TPropertyValue>,std::__unordered_map_hasher<Property,std::__hash_value_type<Property,TPropertyValue>,std::hash<Property>,std::equal_to<Property>,true>,std::__unordered_map_equal<Property,std::__hash_value_type<Property,TPropertyValue>,std::equal_to<Property>,std::hash<Property>,true>,std::allocator<std::__hash_value_type<Property,TPropertyValue>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<Property,TPropertyValue>,std::__unordered_map_hasher<Property,std::__hash_value_type<Property,TPropertyValue>,std::hash<Property>,std::equal_to<Property>,true>,std::__unordered_map_equal<Property,std::__hash_value_type<Property,TPropertyValue>,std::equal_to<Property>,std::hash<Property>,true>,std::allocator<std::__hash_value_type<Property,TPropertyValue>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<Property,TPropertyValue>,std::__unordered_map_hasher<Property,std::__hash_value_type<Property,TPropertyValue>,std::hash<Property>,std::equal_to<Property>,true>,std::__unordered_map_equal<Property,std::__hash_value_type<Property,TPropertyValue>,std::equal_to<Property>,std::hash<Property>,true>,std::allocator<std::__hash_value_type<Property,TPropertyValue>>>::__deallocate_node(uint64_t a1, TPropertyValue *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      value = v2->fData.__impl_.__data.__tail.__tail.__tail.__tail.__tail.__head.__value;
      TPropertyValue::~TPropertyValue(v2 + 1);
      operator delete(v2);
      v2 = value;
    }

    while (value);
  }
}

void std::__hash_table<std::__hash_value_type<Property,TPropertyValue>,std::__unordered_map_hasher<Property,std::__hash_value_type<Property,TPropertyValue>,std::hash<Property>,std::equal_to<Property>,true>,std::__unordered_map_equal<Property,std::__hash_value_type<Property,TPropertyValue>,std::equal_to<Property>,std::hash<Property>,true>,std::allocator<std::__hash_value_type<Property,TPropertyValue>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<Property,TPropertyValue>,void *> *>>(void *a1, TPropertyValue *a2, TPropertyValue *a3)
{
  v4 = a2;
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      v9 = a2 == a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      value = v8;
    }

    else
    {
      do
      {
        v8->fData.__impl_.__index = v4->fData.__impl_.__index;
        TPropertyValue::operator=(v8 + 1, v4 + 1);
        value = v8->fData.__impl_.__data.__tail.__tail.__tail.__tail.__tail.__head.__value;
        index = v8->fData.__impl_.__index;
        v8->fData.__impl_.__data.__tail.__tail.__tail.__tail.__tail.__tail.__tail.__tail.__tail.__head.__value.buffer = index;
        inserted = std::__hash_table<std::__hash_value_type<Property,TPropertyValue>,std::__unordered_map_hasher<Property,std::__hash_value_type<Property,TPropertyValue>,std::hash<Property>,std::equal_to<Property>,true>,std::__unordered_map_equal<Property,std::__hash_value_type<Property,TPropertyValue>,std::equal_to<Property>,std::hash<Property>,true>,std::allocator<std::__hash_value_type<Property,TPropertyValue>>>::__node_insert_multi_prepare(a1, index, &v8->fData.__impl_.__index);
        std::__hash_table<NSObject *,std::hash<std::hash>,std::equal_to<std::hash>,std::allocator<std::hash>>::__node_insert_multi_perform(a1, v8, inserted);
        v4 = v4->fData.__impl_.__data.__tail.__tail.__tail.__tail.__tail.__head.__value;
        if (!value)
        {
          break;
        }

        v8 = value;
      }

      while (v4 != a3);
    }

    std::__hash_table<std::__hash_value_type<Property,TPropertyValue>,std::__unordered_map_hasher<Property,std::__hash_value_type<Property,TPropertyValue>,std::hash<Property>,std::equal_to<Property>,true>,std::__unordered_map_equal<Property,std::__hash_value_type<Property,TPropertyValue>,std::equal_to<Property>,std::hash<Property>,true>,std::allocator<std::__hash_value_type<Property,TPropertyValue>>>::__deallocate_node(a1, value);
  }

  if (v4 != a3)
  {
    std::__hash_table<std::__hash_value_type<Property,TPropertyValue>,std::__unordered_map_hasher<Property,std::__hash_value_type<Property,TPropertyValue>,std::hash<Property>,std::equal_to<Property>,true>,std::__unordered_map_equal<Property,std::__hash_value_type<Property,TPropertyValue>,std::equal_to<Property>,std::hash<Property>,true>,std::allocator<std::__hash_value_type<Property,TPropertyValue>>>::__emplace_multi<std::pair<Property const,TPropertyValue> const&>();
  }
}

void sub_1E577861C(void *a1)
{
  __cxa_begin_catch(a1);
  std::__hash_table<std::__hash_value_type<Property,TPropertyValue>,std::__unordered_map_hasher<Property,std::__hash_value_type<Property,TPropertyValue>,std::hash<Property>,std::equal_to<Property>,true>,std::__unordered_map_equal<Property,std::__hash_value_type<Property,TPropertyValue>,std::equal_to<Property>,std::hash<Property>,true>,std::allocator<std::__hash_value_type<Property,TPropertyValue>>>::__deallocate_node(v1, v2);
  __cxa_rethrow();
}

uint64_t std::__hash_table<std::__hash_value_type<Property,TPropertyValue>,std::__unordered_map_hasher<Property,std::__hash_value_type<Property,TPropertyValue>,std::hash<Property>,std::equal_to<Property>,true>,std::__unordered_map_equal<Property,std::__hash_value_type<Property,TPropertyValue>,std::equal_to<Property>,std::hash<Property>,true>,std::allocator<std::__hash_value_type<Property,TPropertyValue>>>::__node_insert_multi_prepare(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 2 * v6;
    v10 = v6 < 3 || (v6 & (v6 - 1)) != 0;
    v11 = v10 | v9;
    v12 = vcvtps_u32_f32(v7 / v8);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    std::__hash_table<std::__hash_value_type<Property,TPropertyValue>,std::__unordered_map_hasher<Property,std::__hash_value_type<Property,TPropertyValue>,std::hash<Property>,std::equal_to<Property>,true>,std::__unordered_map_equal<Property,std::__hash_value_type<Property,TPropertyValue>,std::equal_to<Property>,std::hash<Property>,true>,std::allocator<std::__hash_value_type<Property,TPropertyValue>>>::__rehash<false>(a1, v13);
    v6 = *(a1 + 8);
  }

  v14 = vcnt_s8(v6);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  do
  {
    result = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v19 = *(v16 + 8);
    if (v14.u32[0] > 1uLL)
    {
      v20 = *(v16 + 8);
      if (v19 >= v6)
      {
        v20 = v19 % v6;
      }
    }

    else
    {
      v20 = v19 & (v6 - 1);
    }

    if (v20 != v15)
    {
      break;
    }

    v21 = v19 == a2 && *(v16 + 16) == *a3;
    v22 = v21 != (v17 & 1);
    v23 = v17 & v22;
    v17 |= v22;
  }

  while (v23 != 1);
  return result;
}

void std::__hash_table<std::__hash_value_type<Property,TPropertyValue>,std::__unordered_map_hasher<Property,std::__hash_value_type<Property,TPropertyValue>,std::hash<Property>,std::equal_to<Property>,true>,std::__unordered_map_equal<Property,std::__hash_value_type<Property,TPropertyValue>,std::equal_to<Property>,std::hash<Property>,true>,std::allocator<std::__hash_value_type<Property,TPropertyValue>>>::__rehash<false>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<Property,TPropertyValue>,std::__unordered_map_hasher<Property,std::__hash_value_type<Property,TPropertyValue>,std::hash<Property>,std::equal_to<Property>,true>,std::__unordered_map_equal<Property,std::__hash_value_type<Property,TPropertyValue>,std::equal_to<Property>,std::hash<Property>,true>,std::allocator<std::__hash_value_type<Property,TPropertyValue>>>::__do_rehash<false>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<Property,TPropertyValue>,std::__unordered_map_hasher<Property,std::__hash_value_type<Property,TPropertyValue>,std::hash<Property>,std::equal_to<Property>,true>,std::__unordered_map_equal<Property,std::__hash_value_type<Property,TPropertyValue>,std::equal_to<Property>,std::hash<Property>,true>,std::allocator<std::__hash_value_type<Property,TPropertyValue>>>::__do_rehash<false>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_1E5778A80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<Property,TPropertyValue>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<Property,TPropertyValue>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<Property,TPropertyValue>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<Property,TPropertyValue>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      TPropertyValue::~TPropertyValue(v2 + 1);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<Property,TPropertyValue>,std::__unordered_map_hasher<Property,std::__hash_value_type<Property,TPropertyValue>,std::hash<Property>,std::equal_to<Property>,true>,std::__unordered_map_equal<Property,std::__hash_value_type<Property,TPropertyValue>,std::equal_to<Property>,std::hash<Property>,true>,std::allocator<std::__hash_value_type<Property,TPropertyValue>>>::__erase_unique<Property>(void *a1, unsigned int *a2)
{
  result = std::__hash_table<std::__hash_value_type<Property,TPropertyValue>,std::__unordered_map_hasher<Property,std::__hash_value_type<Property,TPropertyValue>,std::hash<Property>,std::equal_to<Property>,true>,std::__unordered_map_equal<Property,std::__hash_value_type<Property,TPropertyValue>,std::equal_to<Property>,std::hash<Property>,true>,std::allocator<std::__hash_value_type<Property,TPropertyValue>>>::find<Property>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<TString,TProgressInfo>,std::__unordered_map_hasher<TString,std::__hash_value_type<TString,TProgressInfo>,std::hash<TString>,std::equal_to<TString>,true>,std::__unordered_map_equal<TString,std::__hash_value_type<TString,TProgressInfo>,std::equal_to<TString>,std::hash<TString>,true>,std::allocator<std::__hash_value_type<TString,TProgressInfo>>>::remove(a1, result, v4);
    std::unique_ptr<std::__hash_node<std::__hash_value_type<Property,TPropertyValue>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<Property,TPropertyValue>,void *>>>>::~unique_ptr[abi:ne200100](v4);
    return 1;
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<Property,TPropertyValue>,std::__unordered_map_hasher<Property,std::__hash_value_type<Property,TPropertyValue>,std::hash<Property>,std::equal_to<Property>,true>,std::__unordered_map_equal<Property,std::__hash_value_type<Property,TPropertyValue>,std::equal_to<Property>,std::hash<Property>,true>,std::allocator<std::__hash_value_type<Property,TPropertyValue>>>::__emplace_unique_key_args<Property,std::piecewise_construct_t const&,std::tuple<Property const&>,std::tuple<>>(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
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

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_1E5778E10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<Property,TPropertyValue>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<Property,TPropertyValue>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1E5778FB4(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

id objc_cast<ISFolderIconConfiguration,objc_object  {objcproto19ISIconConfiguration}* {__strong}>(void *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_1E57796A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, id);
  v8 = va_arg(va1, id);
  v9 = va_arg(va1, void);
  TNodeEventPtr::~TNodeEventPtr(va);
  TNodeEventPtr::~TNodeEventPtr((v4 + 8));

  TNodeEventPtr::~TNodeEventPtr(va1);
  _Unwind_Resume(a1);
}

void sub_1E5779AF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TNodeEventPtr::~TNodeEventPtr(va);
  _Unwind_Resume(a1);
}

const void **GetDocumentContainerInfo@<X0>(_BYTE *a1@<X8>)
{
  identifier = container_get_identifier();
  TString::TString(&v21, identifier);
  v3 = [MEMORY[0x1E69635F8] bundleRecordWithApplicationIdentifier:v21.fString.fRef error:0];
  v4 = [v3 URL];

  if (v4)
  {
    v5 = [v3 URL];
    v6 = [v5 URLByAppendingPathComponent:@"Info.plist" isDirectory:0];
    v18.fString.fRef = 0;
    v7 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v6 options:2 error:&v18];
    v8 = v18.fString.fRef;
    v9 = v8;
    if (v7)
    {
      v22 = 0;
      v10 = [MEMORY[0x1E696AE40] propertyListWithData:v7 options:0 format:0 error:&v22];
      v11 = v22;

      v12 = objc_cast<NSDictionary,NSObject * {__strong}>(v10);

      if (v12)
      {
        v13 = v12;
        v14 = 0;
      }

      else
      {
        v14 = [(__CFString *)v11 code];
      }
    }

    else
    {
      v14 = [(__CFString *)v8 code];
      v12 = 0;
      v11 = v9;
    }

    if (!v14)
    {
      v15 = [v12 objectForKeyedSubscript:@"NSUbiquitousContainers"];
      v16 = objc_cast<NSDictionary,NSObject * {__strong}>(v15);

      LOBYTE(v22) = 0;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3321888768;
      v20[2] = ___ZL24GetDocumentContainerInfoP18container_object_s_block_invoke;
      v20[3] = &__block_descriptor_40_ea8_32c59_ZTSKZL24GetDocumentContainerInfoP18container_object_sE3__0_e15_v32__0_8_16_B24l;
      v20[4] = &v22;
      [v16 enumerateKeysAndObjectsUsingBlock:v20];
      v18.fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(&v18, v21.fString.fRef);
      v19 = v22;
      std::pair<TString,BOOL>::pair[abi:ne200100](a1, &v18);
      a1[16] = 1;
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v18.fString.fRef);

      goto LABEL_12;
    }
  }

  *a1 = 0;
  a1[16] = 0;
LABEL_12:

  return TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v21.fString.fRef);
}

void sub_1E5779DB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

BOOL TContainerFetcher::IsVisible(_BYTE *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*a1 != 1 || (a1[1] & 1) == 0)
  {
    if (![v3 count])
    {
      goto LABEL_10;
    }

    if ((*a1 & 1) == 0)
    {
      v6 = [v4 objectForKeyedSubscript:*MEMORY[0x1E695DB90]];
      v7 = objc_cast<NSNumber,objc_object * {__strong}>(v6);

      v8 = [v7 BOOLValue];
      v9 = v7 ? v8 : 1;

      if (v9)
      {
LABEL_10:
        v5 = 0;
        goto LABEL_18;
      }
    }

    v10 = [v4 objectForKeyedSubscript:*MEMORY[0x1E695DC30]];
    v11 = objc_cast<NSString,objc_object * {__strong}>(v10);
    theString = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(&theString, v11);

    Length = CFStringGetLength(theString);
    if (Length)
    {
      if (*a1 != 1)
      {
        v14 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], ".", 1, 0x8000100u, 0, *MEMORY[0x1E695E498]);
        v18 = v14;
        v16.fString.fRef = &stru_1F5F42870;
        CFRetain(&stru_1F5F42870);
        TString::SetStringRefAsImmutable(&v16, v14);
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v18);
        v5 = !TString::BeginsWith(&theString, &v16);
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v16.fString.fRef);
        goto LABEL_17;
      }

      PropertyStoreName = TCFURLInfo::GetPropertyStoreName(Length);
      if (!CFEqual(theString, *PropertyStoreName))
      {
        v5 = !operator==(&theString, ".localized");
        goto LABEL_17;
      }
    }

    v5 = 0;
LABEL_17:
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&theString);
    goto LABEL_18;
  }

  v5 = 1;
LABEL_18:

  return v5;
}

void sub_1E577A040(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, const void *);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va1);

  _Unwind_Resume(a1);
}

void TContainerFetcher::FetchContainers(TContainerFetcher *this@<X0>, void *a2@<X8>)
{
  v53[1] = *MEMORY[0x1E69E9840];
  v30 = 0uLL;
  v31 = 0;
  v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v28 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = *MEMORY[0x1E695DB78];
  v4 = *MEMORY[0x1E695DBC8];
  v40[0] = *MEMORY[0x1E695DB78];
  v40[1] = v4;
  v5 = *MEMORY[0x1E695DC40];
  v40[2] = *MEMORY[0x1E695DB68];
  v40[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:4];
  v27 = v6;
  if ((*this & 1) == 0)
  {
    v7 = *MEMORY[0x1E695DC30];
    v39[0] = *MEMORY[0x1E695DB90];
    v39[1] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:2];
    v27 = [v6 arrayByAddingObjectsFromArray:v8];
  }

  container_query_create();
  container_query_set_class();
  container_query_set_include_other_owners();
  v9 = *MEMORY[0x1E69E9980];
  container_query_set_persona_unique_string();
  container_query_operation_set_flags();
  count_results = container_query_count_results();
  if (count_results < 0)
  {
    if (container_query_get_last_error())
    {
      v11 = container_error_copy_unlocalized_description();
      if (v11)
      {
        v12 = LogObj(5);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446210;
          *&buf[4] = v11;
          _os_log_impl(&dword_1E5674000, v12, OS_LOG_TYPE_ERROR, "Container query failed %{public}s", buf, 0xCu);
        }

        free(v11);
      }
    }

    else
    {
      v13 = LogObj(5);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = count_results;
        _os_log_impl(&dword_1E5674000, v13, OS_LOG_TYPE_ERROR, "Container query failed %ld", buf, 0xCu);
      }
    }

    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  else
  {
    container_query_iterate_results_sync();
  }

  container_query_free();
  if ((count_results & 0x8000000000000000) == 0)
  {
    v25 = v29;
    IDContainerIteratorAdaptor<NSArray<NSURL *>>::NSForwardIterator<NSArray<NSURL *>>::NSForwardIterator(buf, v25);
    IDContainerIteratorAdaptor<NSArray<NSURL *>>::IDContainerIteratorAdaptor(v32, -1, v25);
    while (1)
    {
      if (*buf == v32[0] && v47 == v32[16])
      {

        *a2 = v30;
        a2[2] = v31;
        v31 = 0;
        v30 = 0uLL;
        break;
      }

      v14 = *(v42 + 8 * v46);
      v15 = [v14 URLByAppendingPathComponent:@"Documents/" isDirectory:{1, v25}];
      v53[0] = v3;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:1];
      v17 = [v15 resourceValuesForKeys:v16 error:0];
      v18 = [v17 objectForKeyedSubscript:v3];

      if (v18)
      {
        obj = 0;
        *&v48 = v14;
        if (!TNode::GetNodeFromURL(&v48, &obj, 0) && TNodeFromFINode(obj))
        {
          v48 = 0uLL;
          v49.fString.fRef = &stru_1F5F42870;
          CFRetain(&stru_1F5F42870);
          v50 = &stru_1F5F42870;
          CFRetain(&stru_1F5F42870);
          v51 = 0;
          v52 = 0;
          objc_storeStrong(&v48, obj);
          TNodePtr::TNodePtr(&v37, 0);
          TNodePtr::operator=(&v48 + 1, &v37.fFINode);

          v23 = [v28 objectForKeyedSubscript:v14];
          if (v49.fString.fRef != v23)
          {
            TString::SetStringRefAsImmutable(&v49, v23);
          }

          std::optional<TAppContainerInfo>::optional[abi:ne200100]<TAppContainerInfo,0>(v33, &v48);
          TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v50);
          TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v49.fString.fRef);

          goto LABEL_24;
        }
      }

      v19 = LogObj(5);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = [v14 lastPathComponent];
        LODWORD(v48) = 138412290;
        *(&v48 + 4) = v20;
        _os_log_impl(&dword_1E5674000, v19, OS_LOG_TYPE_ERROR, "Failed to create node for container %@", &v48, 0xCu);
      }

      LOBYTE(v33[0]) = 0;
      v36 = 0;
LABEL_24:

      if (v36 == 1)
      {
        *&v48 = &v30;
        std::back_insert_iterator<std::vector<TAppContainerInfo>>::operator=[abi:ne200100](&v48, v33);
        if (v36)
        {

          TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v35);
          TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v34);
        }
      }

      v21 = v46;
      if (v46 >= v45 - 1)
      {
        v22 = [*buf countByEnumeratingWithState:&buf[8] objects:v44 count:4];
        v21 = -1;
        v45 = v22;
        v46 = -1;
      }

      if (v44[4] != *v43)
      {
        objc_enumerationMutation(*buf);
        v21 = v46;
      }

      ++v47;
      v46 = v21 + 1;
    }
  }

  *buf = &v30;
  std::vector<TAppContainerInfo>::__destroy_vector::operator()[abi:ne200100](buf);
  v24 = *MEMORY[0x1E69E9840];
}

void sub_1E577A758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *a23, void *a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void **a46)
{
  container_query_free();

  a46 = &a25;
  std::vector<TAppContainerInfo>::__destroy_vector::operator()[abi:ne200100](&a46);
  _Unwind_Resume(a1);
}

uint64_t ___ZNK17TContainerFetcher15FetchContainersEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  path = container_get_path();
  TString::TString(&v24, path);
  v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:v24.fString.fRef isDirectory:1];
  v5 = MEMORY[0x1E695DFF8];
  v6 = [(__CFString *)v24.fString.fRef stringByAppendingPathComponent:@"Documents"];
  v7 = [v5 fileURLWithPath:v6 isDirectory:1];

  v8 = [v4 resourceValuesForKeys:**(a1 + 40) error:0];
  if (!v8 || !TContainerFetcher::IsVisible(v2, v8))
  {
    goto LABEL_7;
  }

  v9 = *MEMORY[0x1E695DB78];
  v10 = [v8 objectForKeyedSubscript:*MEMORY[0x1E695DB78]];
  v11 = objc_cast<NSNumber,objc_object * {__strong}>(v10);
  if (([v11 BOOLValue] & 1) == 0)
  {
LABEL_6:

LABEL_7:
    goto LABEL_8;
  }

  v19 = [v8 objectForKeyedSubscript:*MEMORY[0x1E695DBC8]];
  v12 = objc_cast<NSNumber,objc_object * {__strong}>(v19);
  if ([v12 BOOLValue])
  {

    goto LABEL_6;
  }

  v18 = [v8 objectForKeyedSubscript:*MEMORY[0x1E695DB68]];
  v14 = objc_cast<NSNumber,objc_object * {__strong}>(v18);
  v17 = [v14 BOOLValue];

  if (v17)
  {
    goto LABEL_8;
  }

  v23 = 0;
  v15 = [v7 getResourceValue:&v23 forKey:v9 error:0];
  v16 = v23;
  v8 = v16;
  if (!v15 || ([v16 BOOLValue] & 1) == 0)
  {
    goto LABEL_7;
  }

  GetDocumentContainerInfo(&v20);
  if (v22 == 1)
  {
    if (v21 & 1) == 0 || ([**(a1 + 48) setObject:v20 forKeyedSubscript:v4], objc_msgSend(**(a1 + 32), "addObject:", v4), (v22))
    {
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v20);
    }
  }

LABEL_8:

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v24.fString.fRef);
  return 1;
}

void sub_1E577AB54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v7 = va_arg(va1, const void *);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  if (v10 == 1)
  {
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va1);
  _Unwind_Resume(a1);
}

__n128 __copy_helper_block_ea8_32c51_ZTSKZNK17TContainerFetcher15FetchContainersEvE3__1(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  v3 = *(a2 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v3;
  return result;
}

BOOL TContainerFetcher::DirectoryHasVisibleContent(TContainerFetcher *this, const TNodePtr *a2)
{
  if (!TNodeFromFINode(a2->fFINode))
  {
    return 0;
  }

  v4 = TNodeFromFINode(a2->fFINode);
  v5 = TNode::CopyURL(v4);
  HasVisibleContent = TContainerFetcher::DirectoryHasVisibleContent(this, v5);

  return HasVisibleContent;
}

BOOL TContainerFetcher::DirectoryHasVisibleContent(TContainerFetcher *this, NSURL *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if (!*(this + 1))
    {
      if (*this == 1)
      {
        if (*(this + 1) == 1)
        {
          *(this + 1) = MEMORY[0x1E695E0F0];
        }

        else
        {
          v29 = *MEMORY[0x1E695DC30];
          v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
          v9 = *(this + 1);
          *(this + 1) = v8;
        }
      }

      else
      {
        v5 = *MEMORY[0x1E695DC30];
        v28[0] = *MEMORY[0x1E695DB90];
        v28[1] = v5;
        v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
        v7 = *(this + 1);
        *(this + 1) = v6;
      }
    }

    v10 = [MEMORY[0x1E696AC08] defaultManager];
    v11 = *(this + 1);
    v24 = 0;
    v12 = [v10 contentsOfDirectoryAtURL:v3 includingPropertiesForKeys:v11 options:0 error:&v24];
    v13 = v24;

    if (!v12)
    {
      v14 = LogObj(5);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = SanitizedURL(v3);
        *buf = 138543618;
        *&buf[4] = v15;
        v31 = 2114;
        *v32 = v13;
        _os_log_impl(&dword_1E5674000, v14, OS_LOG_TYPE_ERROR, "Got Error trying to get content of %{public}@, %{public}@", buf, 0x16u);
      }
    }

    if (*this == 1 && *(this + 1) == 1)
    {
      v4 = [v12 count] != 0;
    }

    else
    {
      IDContainerIteratorAdaptor<NSArray<NSURL *>>::NSForwardIterator<NSArray<NSURL *>>::NSForwardIterator(v26, v12);
      IDContainerIteratorAdaptor<NSArray<NSURL *>>::IDContainerIteratorAdaptor(v25, -1, v12);
      IDContainerIteratorAdaptor<NSArray<NSURL *>>::NSForwardIterator<NSArray<NSURL *>>::NSForwardIterator(buf, v26);
      IDContainerIteratorAdaptor<NSArray<NSURL *>>::NSForwardIterator<NSArray<NSURL *>>::NSForwardIterator(v27, v25);
      while (1)
      {
        v16 = v27[0];
        if (*buf == v27[0] && v37 == v27[16])
        {
          break;
        }

        v17 = *(*&v32[2] + 8 * v36);
        v18 = [v17 resourceValuesForKeys:*(this + 1) error:0];
        IsVisible = TContainerFetcher::IsVisible(this, v18);

        if (IsVisible)
        {
          v4 = 1;
          v16 = v27[0];
          goto LABEL_27;
        }

        v20 = v36;
        if (v36 >= v35 - 1)
        {
          v21 = [*buf countByEnumeratingWithState:&buf[8] objects:v34 count:4];
          v20 = -1;
          v35 = v21;
          v36 = -1;
        }

        if (v34[4] != *v33)
        {
          objc_enumerationMutation(*buf);
          v20 = v36;
        }

        v36 = v20 + 1;
        ++v37;
      }

      v4 = 0;
LABEL_27:
    }
  }

  else
  {
    v4 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t TContainerFetcher::FetchContainersAndDocumentsFolders@<X0>(TContainerFetcher *this@<X0>, uint64_t *a2@<X8>)
{
  TContainerFetcher::FetchContainers(this, a2);
  v4 = *a2;
  v5 = a2[1];
  v8[0] = this;
  while (1)
  {
    if (v4 == v5)
    {
      v4 = v5;
      return std::vector<TAppContainerInfo>::erase(a2, v4, a2[1]);
    }

    if (TContainerFetcher::FetchContainersAndDocumentsFolders(void)const::$_0::operator()(v8, v4))
    {
      break;
    }

    v4 += 48;
  }

  if (v4 != v5)
  {
    for (i = v4 + 48; i != v5; i += 48)
    {
      if ((TContainerFetcher::FetchContainersAndDocumentsFolders(void)const::$_0::operator()(v8, i) & 1) == 0)
      {
        TAppContainerInfo::operator=(v4, i);
        v4 += 48;
      }
    }
  }

  return std::vector<TAppContainerInfo>::erase(a2, v4, a2[1]);
}

void sub_1E577B134(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<TAppContainerInfo>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void VolumeIdentifierForURL(NSURL *a1@<X0>, void *a2@<X8>)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v11 = 0;
  v4 = *MEMORY[0x1E695DD70];
  v10 = 0;
  v5 = [(NSURL *)v3 getResourceValue:&v11 forKey:v4 error:&v10];
  v6 = v11;
  v7 = v10;
  if (v5)
  {
    *a2 = v6;
    a2[1] = 0;
  }

  else
  {
    v8 = LogObj(7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v13 = v3;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&dword_1E5674000, v8, OS_LOG_TYPE_ERROR, "Failed to get volume identifier for %@: %@", buf, 0x16u);
    }

    *a2 = 0;
    a2[1] = v7;
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t IsEDSWithSeparatePersonaAndVolume(FPAppMetadata *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (([(FPAppMetadata *)v1 isManaged]& 1) != 0)
  {
    v2 = [(FPAppMetadata *)v1 documentsURL];
    VolumeIdentifierForURL(v2, &v9);
    if (*(&v9 + 1))
    {
      v3 = v9;
    }

    else
    {
      v3 = 0;
    }

    if (*(&v9 + 1))
    {
      v4 = 0;
    }

    else
    {
      v4 = v9;
    }

    if (v4)
    {
      {
        IsEDSWithSeparatePersonaAndVolume(FPAppMetadata *)::homeVolumeIdentifier = IsEDSWithSeparatePersonaAndVolume(FPAppMetadata *)::$_0::operator()();
      }

      if (IsEDSWithSeparatePersonaAndVolume(FPAppMetadata *)::homeVolumeIdentifier)
      {
        v5 = [v4 isEqual:?] ^ 1;
LABEL_17:

        goto LABEL_18;
      }
    }

    else
    {
      v6 = LogObj(7);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v9) = 138412290;
        *(&v9 + 4) = v1;
        _os_log_impl(&dword_1E5674000, v6, OS_LOG_TYPE_ERROR, "Could not fetch volume for managed app: %@", &v9, 0xCu);
      }
    }

    v5 = 0;
    goto LABEL_17;
  }

  v5 = 0;
LABEL_18:

  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

void sub_1E577B410(_Unwind_Exception *a1)
{

  _Unwind_Resume(a1);
}

id IsEDSWithSeparatePersonaAndVolume(FPAppMetadata *)::$_0::operator()()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = objc_alloc(MEMORY[0x1E695DFF8]);
  v1 = NSHomeDirectory();
  v2 = [v0 initFileURLWithPath:v1 isDirectory:1];

  VolumeIdentifierForURL(v2, &v8);
  if (*(&v8 + 1))
  {
    v3 = v8;
  }

  else
  {
    v3 = 0;
  }

  if (*(&v8 + 1))
  {
    v4 = 0;
  }

  else
  {
    v4 = v8;
  }

  if (!v4)
  {
    v5 = LogObj(7);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v8) = 138412290;
      *(&v8 + 4) = v2;
      _os_log_impl(&dword_1E5674000, v5, OS_LOG_TYPE_ERROR, "Could not fetch volume for user home: %@", &v8, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];

  return v4;
}

void TContainerFetcher::FetchContainersAndDocumentsFolders(TContainerFetcher *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  v17 = a2;
  IDContainerIteratorAdaptor<NSArray<FPAppMetadata *>>::NSForwardIterator<NSArray<FPAppMetadata *>>::NSForwardIterator(v21, v17);
  IDContainerIteratorAdaptor<NSArray<FPAppMetadata *>>::IDContainerIteratorAdaptor(v20, -1, v17);
  v4 = algorithm_extras::distance_or_zero<IDContainerIteratorAdaptor<NSArray<FPAppMetadata *>>>(v21, v20);

  type_traits_extras::CopyAsHelper<std::vector<TAppContainerInfo>>::MakeWithCapacity(v4, &v18);
  IDContainerIteratorAdaptor<NSArray<FPAppMetadata *>>::NSForwardIterator<NSArray<FPAppMetadata *>>::NSForwardIterator(&obj, v17);
  IDContainerIteratorAdaptor<NSArray<FPAppMetadata *>>::IDContainerIteratorAdaptor(v22, -1, v17);
  while (obj != v22[0] || v28 != v22[16])
  {
    v5 = *(v24[1] + 8 * v27);
    if (IsEDSWithSeparatePersonaAndVolume(v5))
    {
      v6 = LogObj(7);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v5;
        _os_log_impl(&dword_1E5674000, v6, OS_LOG_TYPE_DEBUG, "Ignoring local app library because EDS does not support Local Storage App Libraries: %{public}@", &buf, 0xCu);
      }

      LOBYTE(v29[0]) = 0;
      v32 = 0;
    }

    else
    {
      v34.fFINode = 0;
      v7 = [v5 documentsURL];
      *&buf = v7;
      v8 = TNode::GetNodeFromURL(&buf, &v34.fFINode, 0) == 0;

      if (v8)
      {
        v9 = TNodeFromFINode(v34.fFINode);
        v10 = TNode::ParentLock(v9);
        os_unfair_lock_lock(v10);
        TNodePtr::TNodePtr(&v33, *(v9 + 48));
        os_unfair_lock_unlock(v10);
        *&buf = v33.fFINode;
        *(&buf + 1) = v34.fFINode;
        v11 = [v5 bundleID];
        v36.fString.fRef = &stru_1F5F42870;
        CFRetain(&stru_1F5F42870);
        TString::SetStringRefAsImmutable(&v36, v11);

        v12 = [v5 displayName];
        v37.fString.fRef = &stru_1F5F42870;
        CFRetain(&stru_1F5F42870);
        TString::SetStringRefAsImmutable(&v37, v12);

        v38 = v5;
        v39 = 0;

        if (TContainerFetcher::DirectoryHasVisibleContent(a1, &v34))
        {
          v39 = 1;
        }

        std::optional<TAppContainerInfo>::optional[abi:ne200100]<TAppContainerInfo,0>(v29, &buf);

        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v37.fString.fRef);
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v36.fString.fRef);
      }

      else
      {
        LOBYTE(v29[0]) = 0;
        v32 = 0;
      }
    }

    if (v32 == 1)
    {
      *&buf = &v18;
      std::back_insert_iterator<std::vector<TAppContainerInfo>>::operator=[abi:ne200100](&buf, v29);
      if (v32)
      {

        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v31);
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v30);
      }
    }

    v13 = v27;
    if (v27 >= v26 - 1)
    {
      v14 = [obj countByEnumeratingWithState:v24 objects:v25 count:4];
      v13 = -1;
      v26 = v14;
      v27 = -1;
    }

    if (v25[4] != *v24[2])
    {
      objc_enumerationMutation(obj);
      v13 = v27;
    }

    ++v28;
    v27 = v13 + 1;
  }

  *a3 = v18;
  *(a3 + 16) = v19;
  v18 = 0uLL;
  v19 = 0;
  obj = &v18;
  std::vector<TAppContainerInfo>::__destroy_vector::operator()[abi:ne200100](&obj);

  v15 = *MEMORY[0x1E69E9840];
}

void sub_1E577B9C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(v67 - 216) = &a13;
  std::vector<TAppContainerInfo>::__destroy_vector::operator()[abi:ne200100]((v67 - 216));

  _Unwind_Resume(a1);
}

void ___ZL24GetDocumentContainerInfoP18container_object_s_block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v9 = objc_cast<NSDictionary,NSObject * {__strong}>(a3);
  v6 = [v9 objectForKeyedSubscript:@"NSUbiquitousContainerIsDocumentScopePublic"];
  v7 = objc_cast<NSNumber,objc_object * {__strong}>(v6);
  v8 = [v7 BOOLValue];

  if (v8)
  {
    **(a1 + 32) = 1;
    *a4 = 1;
  }
}

uint64_t std::pair<TString,BOOL>::pair[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *a2 = 0;
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=(a2, &stru_1F5F42870);
  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t **std::back_insert_iterator<std::vector<TAppContainerInfo>>::operator=[abi:ne200100](uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[1];
  if (v4 >= (*a1)[2])
  {
    v5 = std::vector<TAppContainerInfo>::__emplace_back_slow_path<TAppContainerInfo>(*a1, a2);
  }

  else
  {
    std::allocator_traits<std::allocator<TAppContainerInfo>>::construct[abi:ne200100]<TAppContainerInfo,TAppContainerInfo,void,0>(*a1, v4, a2);
    v5 = v4 + 48;
    v3[1] = v4 + 48;
  }

  v3[1] = v5;
  return a1;
}

uint64_t std::optional<TAppContainerInfo>::~optional(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {

    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef((a1 + 24));
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef((a1 + 16));
  }

  return a1;
}

uint64_t std::optional<TAppContainerInfo>::optional[abi:ne200100]<TAppContainerInfo,0>(uint64_t a1, uint64_t a2)
{
  v4 = TNodePtr::TNodePtr(a1, a2);
  TNodePtr::TNodePtr(v4 + 1, (a2 + 8));
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=((a2 + 16), &stru_1F5F42870);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=((a2 + 24), &stru_1F5F42870);
  v5 = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 32) = v5;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = 1;
  return a1;
}

void TAppContainerInfo::~TAppContainerInfo(TAppContainerInfo *this)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(this + 3);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(this + 2);
}

uint64_t std::vector<TAppContainerInfo>::__emplace_back_slow_path<TAppContainerInfo>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    std::vector<std::pair<TNodePtr,TNodePtr>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::allocator<TAppContainerInfo>::allocate_at_least[abi:ne200100](a1, v6);
  }

  v13 = 0;
  v14 = 48 * v2;
  std::allocator_traits<std::allocator<TAppContainerInfo>>::construct[abi:ne200100]<TAppContainerInfo,TAppContainerInfo,void,0>(a1, 48 * v2, a2);
  v15 = 48 * v2 + 48;
  v7 = a1[1];
  v8 = 48 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TAppContainerInfo>,TAppContainerInfo*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<TAppContainerInfo>::~__split_buffer(&v13);
  return v12;
}

void sub_1E577BF04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<TAppContainerInfo>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

CFTypeRef *std::allocator_traits<std::allocator<TAppContainerInfo>>::construct[abi:ne200100]<TAppContainerInfo,TAppContainerInfo,void,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  TNodePtr::TNodePtr(a2, a3);
  TNodePtr::TNodePtr((a2 + 8), (a3 + 8));
  *(a2 + 16) = *(a3 + 16);
  *(a3 + 16) = 0;
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=((a3 + 16), &stru_1F5F42870);
  *(a2 + 24) = *(a3 + 24);
  *(a3 + 24) = 0;
  result = TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=((a3 + 24), &stru_1F5F42870);
  v6 = *(a3 + 32);
  *(a3 + 32) = 0;
  *(a2 + 32) = v6;
  *(a2 + 40) = *(a3 + 40);
  return result;
}

void std::allocator<TAppContainerInfo>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TAppContainerInfo>,TAppContainerInfo*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      std::allocator_traits<std::allocator<TAppContainerInfo>>::construct[abi:ne200100]<TAppContainerInfo,TAppContainerInfo,void,0>(a1, a4, v7);
      v7 += 48;
      a4 = v12 + 48;
      v12 += 48;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<TAppContainerInfo>>::destroy[abi:ne200100]<TAppContainerInfo,void,0>(a1, v5);
      v5 += 48;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<TAppContainerInfo>,TAppContainerInfo*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

void std::allocator_traits<std::allocator<TAppContainerInfo>>::destroy[abi:ne200100]<TAppContainerInfo,void,0>(uint64_t a1, uint64_t a2)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef((a2 + 24));
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef((a2 + 16));

  v3 = *a2;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<TAppContainerInfo>,TAppContainerInfo*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<TAppContainerInfo>,TAppContainerInfo*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<TAppContainerInfo>,TAppContainerInfo*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 48;
      std::allocator_traits<std::allocator<TAppContainerInfo>>::destroy[abi:ne200100]<TAppContainerInfo,void,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<TAppContainerInfo>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<TAppContainerInfo>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<TAppContainerInfo>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 48;
    std::allocator_traits<std::allocator<TAppContainerInfo>>::destroy[abi:ne200100]<TAppContainerInfo,void,0>(v5, v4 - 48);
  }
}

void std::vector<TAppContainerInfo>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<TAppContainerInfo>>::destroy[abi:ne200100]<TAppContainerInfo,void,0>(a1, i))
  {
    i -= 48;
  }

  *(a1 + 8) = a2;
}

uint64_t std::vector<TAppContainerInfo>::erase(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *(a1 + 8);
    v7 = a2;
    while (v4 != v6)
    {
      TAppContainerInfo::operator=(v7, v4);
      v4 += 48;
      v7 += 48;
    }

    std::vector<TAppContainerInfo>::__base_destruct_at_end[abi:ne200100](a1, v7);
  }

  return a2;
}

uint64_t TAppContainerInfo::operator=(uint64_t a1, uint64_t a2)
{
  TNodePtr::operator=(a1, a2);
  TNodePtr::operator=((a1 + 8), (a2 + 8));
  if (a1 != a2)
  {
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=<__CFString const*,TRetainReleasePolicy<__CFString const*>>((a1 + 16), (a2 + 16));
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=((a2 + 16), &stru_1F5F42870);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=<__CFString const*,TRetainReleasePolicy<__CFString const*>>((a1 + 24), (a2 + 24));
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=((a2 + 24), &stru_1F5F42870);
  }

  v4 = *(a2 + 32);
  *(a2 + 32) = 0;
  v5 = *(a1 + 32);
  *(a1 + 32) = v4;

  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t TContainerFetcher::FetchContainersAndDocumentsFolders(void)const::$_0::operator()(TContainerFetcher **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = TNodeFromFINode(*a2);
  v10 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], "Documents", 9, 0x8000100u, 0, *MEMORY[0x1E695E498]);
  v8.fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(&v8, v10);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v10);
  TNode::FindChild(v4, &v8, 0, 0, &obj);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v8.fString.fRef);
  if (TNodeFromFINode(obj))
  {
    objc_storeStrong((a2 + 8), obj);
    HasVisibleContent = TContainerFetcher::DirectoryHasVisibleContent(v3, &obj);
    if (HasVisibleContent)
    {
      *(a2 + 40) = 1;
    }

    v6 = !HasVisibleContent;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

uint64_t algorithm_extras::distance_or_zero<IDContainerIteratorAdaptor<NSArray<FPAppMetadata *>>>(uint64_t a1, uint64_t a2)
{
  IDContainerIteratorAdaptor<NSArray<FPAppMetadata *>>::NSForwardIterator<NSArray<FPAppMetadata *>>::NSForwardIterator(v6, a1);
  IDContainerIteratorAdaptor<NSArray<FPAppMetadata *>>::NSForwardIterator<NSArray<FPAppMetadata *>>::NSForwardIterator(v5, a2);
  v3 = std::distance[abi:ne200100]<IDContainerIteratorAdaptor<NSArray<FPAppMetadata *>>>(v6, v5);

  return v3;
}

void type_traits_extras::CopyAsHelper<std::vector<TAppContainerInfo>>::MakeWithCapacity(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = 0uLL;
  v4 = 0;
  std::vector<TAppContainerInfo>::reserve(&v3, a1);
  *a2 = v3;
  *(a2 + 16) = v4;
  v4 = 0;
  v3 = 0uLL;
  v5 = &v3;
  std::vector<TAppContainerInfo>::__destroy_vector::operator()[abi:ne200100](&v5);
}

void sub_1E577C5D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<TAppContainerInfo>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::distance[abi:ne200100]<IDContainerIteratorAdaptor<NSArray<FPAppMetadata *>>>(uint64_t a1, uint64_t a2)
{
  IDContainerIteratorAdaptor<NSArray<FPAppMetadata *>>::NSForwardIterator<NSArray<FPAppMetadata *>>::NSForwardIterator(&obj, a1);
  IDContainerIteratorAdaptor<NSArray<FPAppMetadata *>>::NSForwardIterator<NSArray<FPAppMetadata *>>::NSForwardIterator(v7, a2);
  v3 = 0;
  while (obj != v7[0] || v13 != v7[16])
  {
    v4 = v12;
    if (v12 >= v11 - 1)
    {
      v5 = [obj countByEnumeratingWithState:v9 objects:v10 count:4];
      v4 = -1;
      v11 = v5;
      v12 = -1;
    }

    if (v10[4] != *v9[2])
    {
      objc_enumerationMutation(obj);
      v4 = v12;
    }

    v12 = v4 + 1;
    ++v13;
    ++v3;
  }

  return v3;
}

uint64_t IDContainerIteratorAdaptor<NSArray<FPAppMetadata *>>::NSForwardIterator<NSArray<FPAppMetadata *>>::NSForwardIterator(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  *a1 = v4;
  *(a1 + 8) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 112) = -1;
  v5 = (a1 + 112);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 120) = -1;
  v6 = (a1 + 120);
  *(a1 + 128) = -1;
  if (v4 && [v4 count] && (v7 = *(a2 + 128), v7 < objc_msgSend(*a1, "count")))
  {
    v8 = [*a1 countByEnumeratingWithState:a1 + 8 objects:a1 + 72 count:4];
    *(a1 + 112) = v8;
    *(a1 + 104) = **(a1 + 24);
    *v6 = 0;
    *(a1 + 128) = 0;
    v9 = *(a2 + 128);
    if (v9 >= v8)
    {
      if (v9 >= 1)
      {
        v11 = 0;
        v12 = 0;
        do
        {
          if (v11 >= *v5 - 1)
          {
            *v5 = [*a1 countByEnumeratingWithState:a1 + 8 objects:a1 + 72 count:4];
            v11 = -1;
            *v6 = -1;
          }

          if (*(a1 + 104) != **(a1 + 24))
          {
            objc_enumerationMutation(*a1);
            v11 = *v6;
          }

          v13 = *(a1 + 128) + 1;
          *(a1 + 120) = ++v11;
          *(a1 + 128) = v13;
          ++v12;
        }

        while (*(a2 + 128) > v12);
      }
    }

    else
    {
      *(a1 + 120) = *(a2 + 120);
      *(a1 + 128) = v9;
    }
  }

  else
  {
    *v6 = *(a2 + 120);
  }

  return a1;
}

uint64_t IDContainerIteratorAdaptor<NSArray<FPAppMetadata *>>::NSForwardIterator<NSArray<FPAppMetadata *>>::NSForwardIterator(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  *a1 = v3;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 120) = -1;
  *(a1 + 104) = 0;
  *(a1 + 112) = -1;
  *(a1 + 128) = -1;
  if (v3 && [v3 count])
  {
    *(a1 + 112) = [*a1 countByEnumeratingWithState:a1 + 8 objects:a1 + 72 count:4];
    *(a1 + 104) = **(a1 + 24);
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
  }

  else
  {
    *(a1 + 128) = 0;
  }

  return a1;
}

uint64_t IDContainerIteratorAdaptor<NSArray<FPAppMetadata *>>::IDContainerIteratorAdaptor(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  *a1 = v4;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 112) = -1;
  *(a1 + 120) = -1;
  *(a1 + 128) = -1;
  *(a1 + 128) = [v4 count];

  return a1;
}

void *std::vector<TAppContainerInfo>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x555555555555556)
    {
      v2 = result[1] - *result;
      v3 = result;
      std::allocator<TAppContainerInfo>::allocate_at_least[abi:ne200100](result, a2);
    }

    std::vector<std::pair<TNodePtr,TNodePtr>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1E577CA80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<TAppContainerInfo>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void sub_1E577CB50(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1E577CD04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  std::__function::__value_func<void ()(std::vector<std::optional<FINode * {__strong}>> const&)>::~__value_func[abi:ne200100](&a14);
  [FICopyOperation initWithSourceItems:destinationItem:]::$_0::~$_0(&a9);

  _Unwind_Resume(a1);
}

void sub_1E577CEC8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id TNSWeakPtr<FIMoveOperation>::Lock(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1);
  if ((objc_opt_respondsToSelector() & 1) != 0 && [WeakRetained isTornDown])
  {

    WeakRetained = 0;
  }

  return WeakRetained;
}

void sub_1E577D688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, id a10)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a9);

  _Unwind_Resume(a1);
}

void sub_1E577DB20(_Unwind_Exception *a1, void *a2, void *a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  +[FIDSNode_FPv2 makeWithCoder:]::$_0::~$_0(va1);
  +[FIDSNode_FPv2 makeWithCoder:]::$_0::~$_0(va);
  std::__shared_weak_count::__release_shared[abi:ne200100](v5);

  _Unwind_Resume(a1);
}

id __copy_helper_block_ea8_32c44_ZTSKZ31__FIDSNode_FPv2_makeWithCoder__E3__0(void *a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v6 = *(a2 + 40);
  v5 = *(a2 + 48);
  a1[4] = v4;
  a1[5] = v6;
  a1[6] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  a1[7] = *(a2 + 56);
  result = *(a2 + 64);
  a1[8] = result;
  return result;
}

void __destroy_helper_block_ea8_32c44_ZTSKZ31__FIDSNode_FPv2_makeWithCoder__E3__0(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 32);
}

void sub_1E577DE98(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1E577E46C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  objc_sync_exit(v13);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);

  _Unwind_Resume(a1);
}

void sub_1E577E5E0(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_1E577EDF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v6 = v5;

  TNodeEventPtr::~TNodeEventPtr(va);
  _Unwind_Resume(a1);
}

void sub_1E577F1E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = v3;

  TProgressInfo::~TProgressInfo(va);
  _Unwind_Resume(a1);
}

void sub_1E577F3B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = v3;

  TProgressInfo::~TProgressInfo(va);
  _Unwind_Resume(a1);
}

void sub_1E577F874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

id objc_cast<UTType,NSObject * {__strong}>(void *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_1E577FEF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

void sub_1E5780190(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E578060C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

void sub_1E5780734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

void sub_1E57809A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1E5780DB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, id a13, void **a14)
{
  a14 = &a10;
  std::vector<std::pair<TNodePtr,TNodeEventPtr>>::__destroy_vector::operator()[abi:ne200100](&a14);
  TNodeEventPtr::~TNodeEventPtr(&a13);

  _Unwind_Resume(a1);
}

void sub_1E5780F18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id a15, void **a16)
{
  a16 = &a10;
  std::vector<TAppContainerInfo>::__destroy_vector::operator()[abi:ne200100](&a16);

  _Unwind_Resume(a1);
}

uint64_t TNode::AsNodeRef(TNode *this, const TNode *a2)
{
  v2 = FIDSNodeFromTNode(this);
  v3 = [v2 nodeRef];

  return v3;
}

void std::__shared_ptr_emplace<FIDSNode_FPv2 * {__strong}>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5F41FA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E692CD30);
}

uint64_t TNodeOperationTask::TNodeOperationTask(uint64_t a1, TOperation **a2)
{
  *a1 = &unk_1F5F41FF0;
  *(a1 + 8) = 0;
  v3 = *a2;
  *(a1 + 16) = *a2;
  if (v3)
  {
    TOperation::AddPtrReference(v3);
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  return a1;
}

uint64_t TNodeOperationTask::Run(TNodeOperationTask *this)
{
  v2 = dispatch_queue_create("TNodeOperationTask::Run", 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = ___ZN18TNodeOperationTask3RunEv_block_invoke;
  block[3] = &__block_descriptor_40_ea8_32c38_ZTSKZN18TNodeOperationTask3RunEvE3__0_e5_v8__0l;
  block[4] = this;
  dispatch_async(v2, block);

  return 0;
}

void TNodeOperationTask::CreateNewOperation(TOperation **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X8>)
{
  v11 = a5;
  TOperation::GetFirstOperationRecordForIterator(*a1, v12, &v14);
  if (v14)
  {
    RequestedOperation = TDSOperationRecord::GetRequestedOperation(v14);
    if ((RequestedOperation - 1) < 5)
    {
      goto LABEL_3;
    }

    if (RequestedOperation == 11)
    {
      TDesktopServicesHelperNewFileSystemObjectOperation::Make();
    }

    if (RequestedOperation == 22)
    {
LABEL_3:
      TDesktopServicesHelperCopyMoveOperation::Make(a1, a2, a3, a4, v11);
    }
  }

  *a6 = 0;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }
}

void sub_1E5781250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

void sub_1E5781318(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  MEMORY[0x1E692CD30](v10, 0x10F1C402370A13ALL);

  _Unwind_Resume(a1);
}

uint64_t TNodeOperationTask::HandleOperation(uint64_t a1, OperationIterator *a2)
{
  if (!a2->fData)
  {
    return 4294959234;
  }

  TOperation::GetFirstOperationRecordForIterator(*(a2->fData + 10), a2, &v19);
  RequestedOperation = TDSOperationRecord::GetRequestedOperation(v19);
  v4 = 0;
  if (RequestedOperation <= 0x16)
  {
    if (((1 << RequestedOperation) & 0x40000E) != 0)
    {
      fData = a2->fData;
      v7 = [[FIAnalyticsOperationRecord alloc] initWithEventName:@"com.apple.finder.copymove.result"];
LABEL_8:
      v8 = *(fData + 322);
      *(fData + 322) = v7;

      v4 = 0;
      goto LABEL_9;
    }

    if (((1 << RequestedOperation) & 0x7000) != 0)
    {
      v4 = 1;
      goto LABEL_9;
    }

    if (RequestedOperation == 6)
    {
      fData = a2->fData;
      v7 = [[FIAnalyticsOperationRecord alloc] initWithEventName:@"com.apple.finder.emptytrash.result"];
      goto LABEL_8;
    }
  }

LABEL_9:
  TOperation::UpdateStatusStage(a2->fData, 1);
  if ((v4 & 1) != 0 || (v5 = (*(*a2->fData + 80))(), !v5))
  {
    TOperation::IncrementOperationCounts(a2->fData, v9);
    v5 = 4294959219;
    while (v5 == -8077)
    {
      v5 = (*(*a2->fData + 128))();
      if (v5 == -8077)
      {
        TOperation::ReportStatus(a2->fData, 1);
        usleep(0x61A8u);
        if (TOperation::CancelRequested(a2->fData))
        {
          v5 = 4294967168;
        }

        else
        {
          v5 = 4294959219;
        }
      }
    }

    if (!v5)
    {
      v5 = (*(*a2->fData + 40))();
      if (!v5)
      {
        v5 = (*(*a2->fData + 64))();
      }
    }

    TOperation::ReleaseLocks(a2->fData);
    TOperation::DecrementOperationCounts(a2->fData, v10);
  }

  if (v5 != -8010)
  {
    if (v5)
    {
      v11 = a2->fData;
      v17 = 0;
      v18 = 0;
      TNodePtr::TNodePtr(&v16, 0);
      (*(*v11 + 48))(v11, &v17, v5, &v16, 0);

      if (v18)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      }
    }
  }

  v12 = *(a2->fData + 322);
  if (v12)
  {
    (*(*a2->fData + 56))();
    v13 = [MEMORY[0x1E696AD98] numberWithInt:v5];
    [v12 setObject:v13 forKeyedSubscript:@"Status"];

    v14 = +[FIAnalytics sharedAnalytics];
    [v14 sendAnalytics:v12];
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  return v5;
}

void sub_1E5781704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(a1);
}

uint64_t TNodeOperationTask::OperationTaskProcedure(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 2);
  v2 = *&this[4]._os_unfair_lock_opaque;
  v10.fData = v2;
  if (v2)
  {
    TOperation::AddPtrReference(v2);
  }

  os_unfair_lock_unlock(this + 2);
  RequestedOperation = TOperation::GetRequestedOperation(v2);
  v4 = StPowerAssertion::StPowerAssertion(v9, RequestedOperation);
  v5 = TNodeOperationTask::HandleOperation(v4, &v10);
  (*(*&this->_os_unfair_lock_opaque + 40))(this);
  if (v10.fData)
  {
    TOperation::CleanupAll(v10.fData, v6, v7);
    if (v10.fData)
    {
      TOperation::RemovePtrReference(v10.fData);
    }
  }

  v10.fData = 0;
  TNodeOperationTask::Completed(this);
  StPowerAssertion::~StPowerAssertion(v9);
  TRef<TOperation *,TRetainReleasePolicy<TOperation *>>::~TRef(&v10);
  return v5;
}

TOperation **TNodeOperationTask::Completed(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 2);
  v2 = *&this[4]._os_unfair_lock_opaque;
  v6 = v2;
  if (v2)
  {
    TOperation::AddPtrReference(v2);
    os_unfair_lock_unlock(this + 2);
    TOperation::Completed(v2);
    os_unfair_lock_lock(this + 2);
    v3 = *&this[4]._os_unfair_lock_opaque;
    if (v3)
    {
      TOperation::RemovePtrReference(v3);
    }

    *&this[4]._os_unfair_lock_opaque = 0;
  }

  os_unfair_lock_unlock(this + 2);
  v4 = *&this[8]._os_unfair_lock_opaque;
  *&this[6]._os_unfair_lock_opaque = 0;
  *&this[8]._os_unfair_lock_opaque = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return TRef<TOperation *,TRetainReleasePolicy<TOperation *>>::~TRef(&v6);
}

void sub_1E5781900(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  os_unfair_lock_unlock(v2 + 2);
  TRef<TOperation *,TRetainReleasePolicy<TOperation *>>::~TRef(va);
  _Unwind_Resume(a1);
}

TOperation **TNodeOperationTask::Finalize(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 2);
  v2 = *&this[4]._os_unfair_lock_opaque;
  v4 = v2;
  if (v2)
  {
    TOperation::AddPtrReference(v2);
    os_unfair_lock_unlock(this + 2);
    (*(*v2 + 168))(v2);
  }

  else
  {
    os_unfair_lock_unlock(this + 2);
  }

  return TRef<TOperation *,TRetainReleasePolicy<TOperation *>>::~TRef(&v4);
}

void sub_1E57819BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<TOperation *,TRetainReleasePolicy<TOperation *>>::~TRef(va);
  _Unwind_Resume(a1);
}

void *TNodeOperationTask::TaskFromOperationRef@<X0>(void *this@<X0>, void *a2@<X8>)
{
  v3 = this[1];
  *a2 = *this;
  a2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return this;
}

void sub_1E5781A94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

TOperation **TNodeOperationTask::Cancel(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 2);
  v2 = *&this[4]._os_unfair_lock_opaque;
  v4 = v2;
  if (v2)
  {
    TOperation::AddPtrReference(v2);
    os_unfair_lock_unlock(this + 2);
    (*(*v2 + 200))(v2);
  }

  else
  {
    os_unfair_lock_unlock(this + 2);
  }

  return TRef<TOperation *,TRetainReleasePolicy<TOperation *>>::~TRef(&v4);
}

void sub_1E5781B34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<TOperation *,TRetainReleasePolicy<TOperation *>>::~TRef(va);
  _Unwind_Resume(a1);
}

TOperation **TNodeOperationTask::Pause(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 2);
  v2 = *&this[4]._os_unfair_lock_opaque;
  v4 = v2;
  if (v2)
  {
    TOperation::AddPtrReference(v2);
    os_unfair_lock_unlock(this + 2);
    LOBYTE(this[10]._os_unfair_lock_opaque) = 1;
    (*(*v2 + 208))(v2);
  }

  else
  {
    os_unfair_lock_unlock(this + 2);
  }

  return TRef<TOperation *,TRetainReleasePolicy<TOperation *>>::~TRef(&v4);
}

void sub_1E5781BE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<TOperation *,TRetainReleasePolicy<TOperation *>>::~TRef(va);
  _Unwind_Resume(a1);
}

TOperation **TNodeOperationTask::Resume(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 2);
  v2 = *&this[4]._os_unfair_lock_opaque;
  v4 = v2;
  if (v2)
  {
    TOperation::AddPtrReference(v2);
    os_unfair_lock_unlock(this + 2);
    (*(*v2 + 216))(v2);
    LOBYTE(this[10]._os_unfair_lock_opaque) = 0;
  }

  else
  {
    os_unfair_lock_unlock(this + 2);
  }

  return TRef<TOperation *,TRetainReleasePolicy<TOperation *>>::~TRef(&v4);
}

void sub_1E5781C98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<TOperation *,TRetainReleasePolicy<TOperation *>>::~TRef(va);
  _Unwind_Resume(a1);
}

TOperation **TRef<TDesktopServicesHelperCopyMoveOperation *,TRetainReleasePolicy<TDesktopServicesHelperCopyMoveOperation *>>::~TRef(TOperation **a1)
{
  v2 = *a1;
  if (v2)
  {
    TOperation::RemovePtrReference(v2);
  }

  return a1;
}

TOperation **TRef<TDesktopServicesHelperNewFileSystemObjectOperation *,TRetainReleasePolicy<TDesktopServicesHelperNewFileSystemObjectOperation *>>::~TRef(TOperation **a1)
{
  v2 = *a1;
  if (v2)
  {
    TOperation::RemovePtrReference(v2);
  }

  return a1;
}

void sub_1E5781DD0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<TNodeOperationTask>::shared_ptr[abi:ne200100]<TNodeOperationTask,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<TNodeOperationTask *,std::shared_ptr<TNodeOperationTask>::__shared_ptr_default_delete<TNodeOperationTask,TNodeOperationTask>,std::allocator<TNodeOperationTask>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E692CD30);
}

uint64_t std::__shared_ptr_pointer<TNodeOperationTask *,std::shared_ptr<TNodeOperationTask>::__shared_ptr_default_delete<TNodeOperationTask,TNodeOperationTask>,std::allocator<TNodeOperationTask>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<TNodeOperationTask *,std::shared_ptr<TNodeOperationTask>::__shared_ptr_default_delete<TNodeOperationTask,TNodeOperationTask>,std::allocator<TNodeOperationTask>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void DeEscapeFormatFragment(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = *a1;
  if (v3 >= 0x17)
  {
    operator new();
  }

  *(a2 + 23) = v3;
  if (v3)
  {
    memmove(a2, v4, v3);
  }

  *(a2 + v3) = 0;
  v8 = 2;
  strcpy(__s, "%%");
  v6 = 1;
  LOWORD(__p[0]) = 37;
  ReplaceAll(a2, __s, 2uLL, __p, 1uLL);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(*__s);
  }

  v8 = 2;
  strcpy(__s, "{{");
  v6 = 1;
  LOWORD(__p[0]) = 123;
  ReplaceAll(a2, __s, 2uLL, __p, 1uLL);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(*__s);
  }

  v8 = 2;
  strcpy(__s, "}}");
  v6 = 1;
  LOWORD(__p[0]) = 125;
  ReplaceAll(a2, __s, 2uLL, __p, 1uLL);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(*__s);
  }
}

void sub_1E578205C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (*(v20 + 23) < 0)
  {
    operator delete(*v20);
  }

  _Unwind_Resume(exception_object);
}

double ReplaceAll(std::string *this, std::string::value_type *__s, std::string::size_type __n, const std::string::value_type *a4, std::string::size_type a5)
{
  if (__n != a5 && SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0 && this->__r_.__value_.__l.__size_ > 0x3E8)
  {
    v13 = std::string::find(this, __s, 0, __n);
    if (v13 == -1)
    {
      return result;
    }

    v14 = v13;
    memset(&v23, 0, sizeof(v23));
    if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(this->__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = this->__r_.__value_.__l.__size_;
    }

    std::string::reserve(&v23, size);
    v16 = 0;
    while (1)
    {
      if (v14 != v16)
      {
        std::string::basic_string(&v22, this, v16, v14 - v16, &v24);
        v17 = (v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v22 : v22.__r_.__value_.__r.__words[0];
        v18 = (v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v22.__r_.__value_.__r.__words[2]) : v22.__r_.__value_.__l.__size_;
        std::string::append(&v23, v17, v18);
        if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
        {
          break;
        }
      }

      if (a5)
      {
        goto LABEL_22;
      }

LABEL_23:
      v16 = v14 + __n;
      v14 = std::string::find(this, __s, v14 + __n, __n);
      if (v14 == -1)
      {
        v19 = HIBYTE(this->__r_.__value_.__r.__words[2]);
        if ((v19 & 0x80u) != 0)
        {
          v19 = this->__r_.__value_.__l.__size_;
        }

        std::string::basic_string(&v22, this, v16, v19 - v16, &v24);
        if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v20 = &v22;
        }

        else
        {
          v20 = v22.__r_.__value_.__r.__words[0];
        }

        if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v21 = HIBYTE(v22.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v21 = v22.__r_.__value_.__l.__size_;
        }

        std::string::append(&v23, v20, v21);
        if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v22.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(this->__r_.__value_.__l.__data_);
        }

        result = *&v23.__r_.__value_.__l.__data_;
        *this = v23;
        return result;
      }
    }

    operator delete(v22.__r_.__value_.__l.__data_);
    if (!a5)
    {
      goto LABEL_23;
    }

LABEL_22:
    std::string::append(&v23, a4, a5);
    goto LABEL_23;
  }

  v10 = std::string::find(this, __s, 0, __n);
  if (v10 != -1)
  {
    for (i = v10; i != -1; i = std::string::find(this, __s, i + a5, __n))
    {
      std::string::replace(this, i, __n, a4, a5);
    }
  }

  return result;
}

void sub_1E57822C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void ExtractEmbeddedFormat(std::string *__str@<X0>, _BYTE *a2@<X8>)
{
  v4 = -1;
  std::string::basic_string(&v15, __str, 1uLL, 0xFFFFFFFFFFFFFFFFLL, v14);
  size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v15;
  }

  else
  {
    v6 = v15.__r_.__value_.__r.__words[0];
  }

  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v15.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v7 = v6 + size;
    v8 = v6;
LABEL_8:
    v9 = 0;
    while (v8->__r_.__value_.__s.__data_[0] != asc_1E57B78C0[v9])
    {
      if (++v9 == 3)
      {
        v8 = (v8 + 1);
        if (v8 != v7)
        {
          goto LABEL_8;
        }

        v8 = v7;
        break;
      }
    }

    v10 = v8 - v6;
    if (v8 == v7)
    {
      v4 = -1;
    }

    else
    {
      v4 = v10;
    }
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = __str;
  }

  else
  {
    v11 = __str->__r_.__value_.__r.__words[0];
  }

  v14[0] = &v11->__r_.__value_.__s.__data_[v4 + 1];
  v14[1] = strlen(v14[0]);
  ParseFormat(v14, &v15);
  v12 = v15.__r_.__value_.__l.__size_;
  if (v15.__r_.__value_.__l.__size_ >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v13 = v15.__r_.__value_.__r.__words[0];
  if (v15.__r_.__value_.__l.__size_ >= 0x17)
  {
    operator new();
  }

  a2[23] = v15.__r_.__value_.__s.__data_[8];
  if (v12)
  {
    memmove(a2, v13, v12);
  }

  a2[v12] = 0;
}

void PrependEachLine(const void **a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a1;
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, a1, a3);
  v5 = *(v3 + 23);
  if ((v5 & 0x8000000000000000) != 0)
  {
    v5 = v3[1];
    if (!v5)
    {
LABEL_9:
      v9 = 0;
      goto LABEL_12;
    }

    v3 = *v3;
  }

  else if (!*(v3 + 23))
  {
    goto LABEL_9;
  }

  if (*(v3 + v5 - 1) != 10)
  {
    goto LABEL_9;
  }

  v6 = *(a3 + 23);
  if (v6 < 0)
  {
    v8 = *a3;
    v7 = *(a3 + 8) - 1;
    *(a3 + 8) = v7;
  }

  else
  {
    v7 = v6 - 1;
    *(a3 + 23) = v7 & 0x7F;
    v8 = a3;
  }

  *(v8 + v7) = 0;
  v9 = 1;
LABEL_12:
  std::operator+<char>();
  if ((v13 & 0x80u) == 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if ((v13 & 0x80u) == 0)
  {
    v11 = v13;
  }

  else
  {
    v11 = __p[1];
  }

  ReplaceAll(a3, "\n", 1uLL, v10, v11);
  if (v13 < 0)
  {
    operator delete(__p[0]);
    if (!v9)
    {
      return;
    }

    goto LABEL_22;
  }

  if (v9)
  {
LABEL_22:
    std::string::push_back(a3, 10);
  }
}

void sub_1E5782588(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<X0>(const void **a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  result = std::string::basic_string[abi:ne200100](a3, v6 + v5);
  if (*(result + 23) >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    result = memmove(v8, v9, v5);
  }

  v10 = &v8[v5];
  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    result = memmove(v10, v11, v6);
  }

  v10[v6] = 0;
  return result;
}

void AppendEachLine(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  v5 = a3;
  LODWORD(a3) = *(a1 + 23);
  if ((a3 & 0x80000000) == 0)
  {
    *&v5->__r_.__value_.__l.__data_ = *a1;
    v5->__r_.__value_.__r.__words[2] = *(a1 + 16);
    goto LABEL_4;
  }

  std::string::__init_copy_ctor_external(v5, *a1, *(a1 + 8));
  LODWORD(a3) = *(a1 + 23);
  if ((a3 & 0x80000000) == 0)
  {
LABEL_4:
    v6 = 0;
    if (a3)
    {
      goto LABEL_5;
    }

LABEL_14:
    v12 = 0;
    goto LABEL_17;
  }

  v6 = 1;
  if (!*(a1 + 8))
  {
    goto LABEL_14;
  }

LABEL_5:
  a3 = a3;
  v7 = v6 == 0;
  if (v6)
  {
    v8 = *a1;
  }

  else
  {
    v8 = a1;
  }

  if (!v7)
  {
    a3 = *(a1 + 8);
  }

  if (a3->__r_.__value_.__s.__data_[v8 - 1] != 10)
  {
    goto LABEL_14;
  }

  v9 = SHIBYTE(v5->__r_.__value_.__r.__words[2]);
  if (v9 < 0)
  {
    v11 = v5->__r_.__value_.__r.__words[0];
    v10 = v5->__r_.__value_.__l.__size_ - 1;
    v5->__r_.__value_.__l.__size_ = v10;
  }

  else
  {
    v10 = v9 - 1;
    *(&v5->__r_.__value_.__s + 23) = v10 & 0x7F;
    v11 = v5;
  }

  v11->__r_.__value_.__s.__data_[v10] = 0;
  v12 = 1;
LABEL_17:
  v13 = *(a2 + 23);
  if (v13 >= 0)
  {
    v14 = a2;
  }

  else
  {
    v14 = *a2;
  }

  if (v13 >= 0)
  {
    v15 = *(a2 + 23);
  }

  else
  {
    v15 = *(a2 + 8);
  }

  std::string::append(v5, v14, v15);
  if (*(a2 + 23) >= 0)
  {
    v16 = *(a2 + 23);
  }

  else
  {
    v16 = *(a2 + 8);
  }

  v17 = __p;
  std::string::basic_string[abi:ne200100](__p, v16 + 1);
  if ((v22 & 0x80u) != 0)
  {
    v17 = __p[0];
  }

  if (v16)
  {
    if (*(a2 + 23) >= 0)
    {
      v18 = a2;
    }

    else
    {
      v18 = *a2;
    }

    memmove(v17, v18, v16);
  }

  *(v17 + v16) = 10;
  if ((v22 & 0x80u) == 0)
  {
    v19 = __p;
  }

  else
  {
    v19 = __p[0];
  }

  if ((v22 & 0x80u) == 0)
  {
    v20 = v22;
  }

  else
  {
    v20 = __p[1];
  }

  ReplaceAll(v5, "\n", 1uLL, v19, v20);
  if (v22 < 0)
  {
    operator delete(__p[0]);
    if (!v12)
    {
      return;
    }

    goto LABEL_43;
  }

  if (v12)
  {
LABEL_43:
    std::string::push_back(v5, 10);
  }
}

void sub_1E5782848(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v14 + 23) < 0)
  {
    operator delete(*v14);
  }

  _Unwind_Resume(exception_object);
}

void ExtendedFormatPrefixAndPostfix(char *a1@<X0>, uint64_t a2@<X8>)
{
  v33[6] = 0;
  v33[7] = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  memset(v33, 0, 41);
  v39 = 0;
  {
    std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&ExtendedFormatPrefixAndPostfix(std::string const&)::extendedFormatPattern, "[{]([^{}%]*:)?([^}%]*)[%}](.|\\n)*", 0);
  }

  v4 = a1[23];
  if ((v4 & 0x80u) == 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a1 + 1);
  }

  if (!std::regex_match[abi:ne200100]<std::__wrap_iter<char const*>,std::allocator<std::sub_match<std::__wrap_iter<char const*>>>,char,std::regex_traits<char>>(v5, &v5[v4], v33, &ExtendedFormatPrefixAndPostfix(std::string const&)::extendedFormatPattern, 0))
  {
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    goto LABEL_45;
  }

  v6 = v33[0];
  v7 = 0xAAAAAAAAAAAAAAABLL * ((v33[1] - v33[0]) >> 3);
  v8 = (v33[0] + 64);
  if (v7 <= 2)
  {
    v8 = &v33[5];
  }

  if (*v8 == 1)
  {
    v9 = v7 > 2;
    if (v7 <= 2)
    {
      v10 = &v33[3];
    }

    else
    {
      v10 = (v33[0] + 48);
    }

    v11 = (v33[0] + 56);
    if (!v9)
    {
      v11 = &v33[4];
    }

    std::string::__init_with_size[abi:ne200100]<char *,char *>(&__dst, *v10, *v11, *v11 - *v10);
    v6 = v33[0];
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v33[1] - v33[0]) >> 3);
  }

  else
  {
    __dst = 0uLL;
    v32 = 0;
  }

  v12 = v6 + 6;
  if (v7 <= 2)
  {
    v12 = &v33[3];
  }

  v13 = *v12;
  v14 = v6 + 8;
  if (v7 <= 2)
  {
    v14 = &v33[5];
  }

  if (*v14 == 1)
  {
    v15 = v6 + 7;
    if (v7 <= 2)
    {
      v15 = &v33[4];
    }

    v16 = (*v15 - v13);
  }

  else
  {
    v16 = 0;
  }

  v17 = &v13[v16 - v39];
  if (a1[23] >= 0)
  {
    v18 = a1;
  }

  else
  {
    v18 = *a1;
  }

  __p.__matches_.__begin_ = &v17[v18];
  __p.__matches_.__end_ = strlen(&v17[v18]);
  ParseFormat(&__p, v29);
  v19 = v30;
  if (v30)
  {
    memset(&__p.__prefix_, 0, 17);
    memset(&__p.__suffix_, 0, 17);
    __p.__ready_ = 0;
    __p.__position_start_ = 0;
    memset(&__p, 0, 41);
    {
      std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&ExtendedFormatPrefixAndPostfix(std::string const&)::extendedFormatPostfix, "([^}]*)[}](.|\\n)*", 0);
    }

    if (a1[23] >= 0)
    {
      v20 = a1;
    }

    else
    {
      v20 = *a1;
    }

    v21 = &v20[v19 + v17];
    v22 = strlen(v21);
    if (std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(&ExtendedFormatPrefixAndPostfix(std::string const&)::extendedFormatPostfix, v21, &v21[v22], &__p, 4160))
    {
      if (!__p.__suffix_.matched)
      {
        begin = __p.__matches_.__begin_;
        v24 = 0xAAAAAAAAAAAAAAABLL * ((__p.__matches_.__end_ - __p.__matches_.__begin_) >> 3);
        if (v24 <= 1)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__matches_.__begin_;
        }

        if (p_p[1].matched)
        {
          if (v24 <= 1)
          {
            begin = &__p;
          }

          std::string::__init_with_size[abi:ne200100]<char *,char *>(&v26, begin[1].first, begin[1].second, begin[1].second - begin[1].first);
        }

        else
        {
          v26 = 0uLL;
          v27 = 0;
        }

        std::pair<std::string,std::string>::pair[abi:ne200100]<std::string&,std::string&,0>(a2, &__dst, &v26);
        if (SHIBYTE(v27) < 0)
        {
          operator delete(v26);
        }

        goto LABEL_40;
      }

      __p.__matches_.__end_ = __p.__matches_.__begin_;
    }

    std::pair<std::string,std::string>::pair[abi:ne200100]<std::string&,char const(&)[1],0>(a2, &__dst, "");
LABEL_40:
    if (__p.__matches_.__begin_)
    {
      __p.__matches_.__end_ = __p.__matches_.__begin_;
      operator delete(__p.__matches_.__begin_);
    }

    goto LABEL_43;
  }

  std::pair<std::string,std::string>::pair[abi:ne200100]<std::string&,char const(&)[1],0>(a2, &__dst, "");
LABEL_43:
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__dst);
  }

LABEL_45:
  if (v33[0])
  {
    v33[1] = v33[0];
    operator delete(v33[0]);
  }
}

void sub_1E5782C1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  v40 = *(v38 - 160);
  if (v40)
  {
    *(v38 - 152) = v40;
    operator delete(v40);
  }

  _Unwind_Resume(a1);
}

void ExtendedFormatAdaptor(char *a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  ExtendedFormatPrefixAndPostfix(a1, v9);
  v5 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v5 = v9[1];
  }

  if (v5)
  {
    goto LABEL_7;
  }

  v6 = v12;
  if ((v12 & 0x80u) != 0)
  {
    v6 = v11[1];
  }

  if (v6)
  {
LABEL_7:
    PrependEachLine(a2, v9, __p);
    AppendEachLine(__p, v11, a3);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a3, *a2, *(a2 + 8));
  }

  else
  {
    *&a3->__r_.__value_.__l.__data_ = *a2;
    a3->__r_.__value_.__r.__words[2] = *(a2 + 16);
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  if (v10 < 0)
  {
    operator delete(v9[0]);
  }
}

uint64_t std::pair<std::string,std::string>::~pair(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void WidenHexFormatStringSpecifierToLongLong(char *a1@<X0>, uint64_t a2@<X8>)
{
  if ((a1[23] & 0x80000000) == 0)
  {
    if (*a1 != 30757)
    {
      v4 = a1;
      if (*a1 != 37)
      {
        goto LABEL_10;
      }

      goto LABEL_8;
    }

LABEL_7:
    *(a2 + 23) = 4;
    strcpy(a2, "%llx");
    return;
  }

  v4 = *a1;
  if (**a1 != 37)
  {
    goto LABEL_10;
  }

  if (v4[1] == 120)
  {
    goto LABEL_7;
  }

LABEL_8:
  if (v4[1] == 112)
  {
    *(a2 + 23) = 2;
    strcpy(a2, "%p");
    return;
  }

LABEL_10:
  {
    std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&WidenHexFormatStringSpecifierToLongLong(std::string const&)::hexFormatPattern, "(%)([+\\- #0]?[0-9]*)(hh|h|ll|l|j|z|t)?([xXp])(.|\\n)*", 0);
  }

  v44[6] = 0;
  v44[7] = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v50 = 0;
  memset(v44, 0, 41);
  v5 = a1[23];
  if ((v5 & 0x80u) == 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a1 + 1);
  }

  if (std::regex_match[abi:ne200100]<std::__wrap_iter<char const*>,std::allocator<std::sub_match<std::__wrap_iter<char const*>>>,char,std::regex_traits<char>>(v6, &v6[v5], v44, &WidenHexFormatStringSpecifierToLongLong(std::string const&)::hexFormatPattern, 0))
  {
    v7 = v44[0];
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v44[1] - v44[0]) >> 3);
    if (v8 <= 1)
    {
      v9 = v44;
    }

    else
    {
      v9 = v44[0];
    }

    if (*(v9 + 40) == 1)
    {
      if (v8 <= 1)
      {
        v7 = v44;
      }

      std::string::__init_with_size[abi:ne200100]<char *,char *>(&__dst, v7[3], v7[4], v7[4] - v7[3]);
      v7 = v44[0];
      v8 = 0xAAAAAAAAAAAAAAABLL * ((v44[1] - v44[0]) >> 3);
    }

    else
    {
      memset(&__dst, 0, sizeof(__dst));
    }

    v10 = v7 + 8;
    if (v8 <= 2)
    {
      v10 = &v44[5];
    }

    if (*v10 == 1)
    {
      v11 = v8 > 2;
      if (v8 <= 2)
      {
        v12 = &v44[3];
      }

      else
      {
        v12 = v7 + 6;
      }

      v13 = v7 + 7;
      if (!v11)
      {
        v13 = &v44[4];
      }

      std::string::__init_with_size[abi:ne200100]<char *,char *>(&v38, *v12, *v13, *v13 - *v12);
      v14 = HIBYTE(v40);
      v16 = v38;
      v15 = v39;
    }

    else
    {
      v15 = 0;
      v16 = 0;
      v14 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
    }

    if ((v14 & 0x80u) == 0)
    {
      v17 = &v38;
    }

    else
    {
      v17 = v16;
    }

    if ((v14 & 0x80u) == 0)
    {
      v18 = v14;
    }

    else
    {
      v18 = v15;
    }

    v19 = std::string::append(&__dst, v17, v18);
    v20 = *&v19->__r_.__value_.__l.__data_;
    v42.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
    *&v42.__r_.__value_.__l.__data_ = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    v21 = std::string::append(&v42, "ll", 2uLL);
    v22 = *&v21->__r_.__value_.__l.__data_;
    v43.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
    *&v43.__r_.__value_.__l.__data_ = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    v23 = 0xAAAAAAAAAAAAAAABLL * ((v44[1] - v44[0]) >> 3);
    v24 = (v44[0] + 112);
    if (v23 <= 4)
    {
      v24 = &v44[5];
    }

    if (*v24 == 1)
    {
      v25 = v23 > 4;
      if (v23 <= 4)
      {
        v26 = &v44[3];
      }

      else
      {
        v26 = (v44[0] + 96);
      }

      v27 = (v44[0] + 104);
      if (!v25)
      {
        v27 = &v44[4];
      }

      std::string::__init_with_size[abi:ne200100]<char *,char *>(&__p, *v26, *v27, *v27 - *v26);
      v28 = HIBYTE(v37);
      v30 = __p;
      v29 = v36;
    }

    else
    {
      v29 = 0;
      v30 = 0;
      v28 = 0;
      __p = 0;
      v36 = 0;
      v37 = 0;
    }

    if ((v28 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = v30;
    }

    if ((v28 & 0x80u) == 0)
    {
      v32 = v28;
    }

    else
    {
      v32 = v29;
    }

    v33 = std::string::append(&v43, p_p, v32);
    v34 = *&v33->__r_.__value_.__l.__data_;
    *(a2 + 16) = *(&v33->__r_.__value_.__l + 2);
    *a2 = v34;
    v33->__r_.__value_.__l.__size_ = 0;
    v33->__r_.__value_.__r.__words[2] = 0;
    v33->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v37) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v43.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v40) < 0)
    {
      operator delete(v38);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }

  else if (a1[23] < 0)
  {
    std::string::__init_copy_ctor_external(a2, *a1, *(a1 + 1));
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 2);
  }

  if (v44[0])
  {
    v44[1] = v44[0];
    operator delete(v44[0]);
  }
}