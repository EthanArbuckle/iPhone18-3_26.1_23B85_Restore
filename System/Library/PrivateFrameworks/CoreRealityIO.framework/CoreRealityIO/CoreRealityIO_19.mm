void sub_2475C3804(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void Exec::getUnreachableTargets(Exec *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, void *a3@<X8>)
{
  v37 = *MEMORY[0x277D85DE8];
  v30[0] = 0;
  v30[1] = 0;
  v28[1] = 0;
  v29 = v30;
  v27 = v28;
  v28[0] = 0;
  a3[2] = 0;
  a3[1] = 0;
  *a3 = a3 + 1;
  v33[0] = &unk_285951E98;
  v33[1] = &v27;
  v34 = v33;
  v5 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(this + 64, a2);
  v6 = this + 72;
  if ((this + 72) == v5)
  {
    goto LABEL_8;
  }

  v7 = v34;
  if (v34)
  {
    if (v34 == v33)
    {
      v36 = v35;
      (*(*v34 + 24))();
      goto LABEL_7;
    }

    v7 = (*(*v34 + 16))();
  }

  v36 = v7;
LABEL_7:
  realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::_traverse(this + 64, v35, v5[12], this + 14, 1);
  std::__function::__value_func<BOOL ()(realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage &)>::~__value_func[abi:ne200100](v35);
LABEL_8:
  std::__function::__value_func<BOOL ()(realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage &)>::~__value_func[abi:ne200100](v33);
  v8 = *(this + 8);
  if (v8 != v6)
  {
    do
    {
      std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>(&v29, v8 + 4);
      v9 = *(v8 + 1);
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = *(v8 + 2);
          v11 = *v10 == v8;
          v8 = v10;
        }

        while (!v11);
      }

      v8 = v10;
    }

    while (v10 != v6);
  }

  v12 = v29;
  v13 = v27;
  v14 = *a3;
  v31 = a3;
  v32 = v14;
  if (v29 == v30)
  {
    goto LABEL_50;
  }

  if (v27 == v28)
  {
    v23 = a3;
    goto LABEL_43;
  }

  do
  {
    if (pxrInternal__aapl__pxrReserved__::SdfPath::operator<((v12 + 28), (v13 + 28)))
    {
      std::insert_iterator<std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>::operator=[abi:ne200100](&v31, (v12 + 28));
      v15 = v12[1];
      if (v15)
      {
        do
        {
          v12 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = v12;
          v12 = v12[2];
        }

        while (*v12 != v16);
      }
    }

    else
    {
      if (pxrInternal__aapl__pxrReserved__::SdfPath::operator<((v13 + 28), (v12 + 28)))
      {
        v17 = v13[1];
        if (v17)
        {
          do
          {
            v13 = v17;
            v17 = *v17;
          }

          while (v17);
        }

        else
        {
          do
          {
            v18 = v13;
            v13 = v13[2];
          }

          while (*v13 != v18);
        }

        continue;
      }

      v19 = v12[1];
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = v12[2];
          v11 = *v20 == v12;
          v12 = v20;
        }

        while (!v11);
      }

      v21 = v13[1];
      if (v21)
      {
        do
        {
          v13 = v21;
          v21 = *v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v22 = v13;
          v13 = v13[2];
        }

        while (*v13 != v22);
      }

      v12 = v20;
    }

    if (v12 == v30)
    {
      goto LABEL_50;
    }
  }

  while (v13 != v28);
  v23 = v31;
  v14 = v32;
LABEL_43:
  v35[0] = v23;
  v35[1] = v14;
  do
  {
    std::insert_iterator<std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>::operator=[abi:ne200100](v35, (v12 + 28));
    v24 = v12[1];
    if (v24)
    {
      do
      {
        v25 = v24;
        v24 = *v24;
      }

      while (v24);
    }

    else
    {
      do
      {
        v25 = v12[2];
        v11 = *v25 == v12;
        v12 = v25;
      }

      while (!v11);
    }

    v12 = v25;
  }

  while (v25 != v30);
LABEL_50:
  std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy(&v27, v28[0]);
  std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy(&v29, v30[0]);
  v26 = *MEMORY[0x277D85DE8];
}

void sub_2475C3B78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void *);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void *);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  std::__function::__value_func<BOOL ()(realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage &)>::~__value_func[abi:ne200100](v3 - 88);
  std::__function::__value_func<BOOL ()(realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage &)>::~__value_func[abi:ne200100](va2);
  std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy(v2, *(v2 + 8));
  std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy(va, v7);
  std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy(va1, v11);
  _Unwind_Resume(a1);
}

void Exec::dumpDotfile(void *a1, void *a2)
{
  v71 = *MEMORY[0x277D85DE8];
  v67 = 0;
  v68 = 0;
  v66 = &v67;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "digraph G {\n", 12);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "node [shape=record];\n", 21);
  v3 = a1[11];
  v4 = a1 + 12;
  if (v3 != a1 + 12)
  {
    do
    {
      v5 = v3[5];
      if (*(v5 + 48))
      {
        v6 = "red";
      }

      else
      {
        v6 = "black";
      }

      std::string::basic_string[abi:ne200100]<0>(__p, v6);
      snprintf(__str, 0x80uLL, "node_%i", v68);
      v69 = v5 + 8;
      v7 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::piecewise_construct_t const&,std::tuple<pxrInternal__aapl__pxrReserved__::SdfPath const&>,std::tuple<>>(&v66, (v5 + 8));
      MEMORY[0x24C1A8D40](v7 + 40, __str);
      v8 = strlen(__str);
      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, __str, v8);
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "[ label={", 10);
      String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((v5 + 8));
      v12 = *(String + 23);
      if (v12 >= 0)
      {
        v13 = String;
      }

      else
      {
        v13 = *String;
      }

      if (v12 >= 0)
      {
        v14 = *(String + 23);
      }

      else
      {
        v14 = *(String + 8);
      }

      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v13, v14);
      v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "| ", 2);
      v17 = v16;
      if ((*(v5 + 16) & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        EmptyString = (*(v5 + 16) & 0xFFFFFFFFFFFFFFF8) + 16;
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v16);
      }

      v19 = *(EmptyString + 23);
      if (v19 >= 0)
      {
        v20 = EmptyString;
      }

      else
      {
        v20 = *EmptyString;
      }

      if (v19 >= 0)
      {
        v21 = *(EmptyString + 23);
      }

      else
      {
        v21 = *(EmptyString + 8);
      }

      v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v20, v21);
      v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "} color=", 9);
      if ((v65 & 0x80u) == 0)
      {
        v24 = __p;
      }

      else
      {
        v24 = __p[0];
      }

      if ((v65 & 0x80u) == 0)
      {
        v25 = v65;
      }

      else
      {
        v25 = __p[1];
      }

      v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v24, v25);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, " fillcolor=none style=filled];\n", 31);
      if (v65 < 0)
      {
        operator delete(__p[0]);
      }

      v27 = v3[1];
      if (v27)
      {
        do
        {
          v28 = v27;
          v27 = *v27;
        }

        while (v27);
      }

      else
      {
        do
        {
          v28 = v3[2];
          v29 = *v28 == v3;
          v3 = v28;
        }

        while (!v29);
      }

      v3 = v28;
    }

    while (v28 != v4);
  }

  v31 = a1[14];
  v30 = a1[15];
  if (v31 != v30)
  {
    v32 = 0;
    do
    {
      v33 = *v4;
      if (*v4)
      {
        v34 = a1 + 12;
        do
        {
          v35 = v33[4];
          v36 = v35 >= v32;
          v37 = v35 < v32;
          if (v36)
          {
            v34 = v33;
          }

          v33 = v33[v37];
        }

        while (v33);
        if (v34 != v4 && v32 >= v34[4])
        {
          v38 = *v31;
          if (*v31 != v31 + 1)
          {
            v39 = (v34[5] + 8);
            do
            {
              v40 = *v4;
              if (*v4)
              {
                v41 = v38[4];
                v42 = a1 + 12;
                do
                {
                  v43 = v40[4];
                  v36 = v43 >= v41;
                  v44 = v43 < v41;
                  if (v36)
                  {
                    v42 = v40;
                  }

                  v40 = v40[v44];
                }

                while (v40);
                if (v42 != v4 && v41 >= v42[4])
                {
                  v45 = v42[5];
                  *__str = v39;
                  v46 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::piecewise_construct_t const&,std::tuple<pxrInternal__aapl__pxrReserved__::SdfPath const&>,std::tuple<>>(&v66, v39);
                  *__str = v45 + 8;
                  v47 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::piecewise_construct_t const&,std::tuple<pxrInternal__aapl__pxrReserved__::SdfPath const&>,std::tuple<>>(&v66, (v45 + 8));
                  v50 = *(v46 + 40);
                  v49 = v46 + 40;
                  v48 = v50;
                  v51 = *(v49 + 23);
                  if (v51 >= 0)
                  {
                    v52 = v49;
                  }

                  else
                  {
                    v52 = v48;
                  }

                  if (v51 >= 0)
                  {
                    v53 = *(v49 + 23);
                  }

                  else
                  {
                    v53 = *(v49 + 8);
                  }

                  v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v52, v53);
                  v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, " -> ", 4);
                  v56 = *(v47 + 63);
                  if (v56 >= 0)
                  {
                    v57 = v47 + 40;
                  }

                  else
                  {
                    v57 = *(v47 + 40);
                  }

                  if (v56 >= 0)
                  {
                    v58 = *(v47 + 63);
                  }

                  else
                  {
                    v58 = *(v47 + 48);
                  }

                  v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, v57, v58);
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, "\n", 1);
                }
              }

              v60 = v38[1];
              if (v60)
              {
                do
                {
                  v61 = v60;
                  v60 = *v60;
                }

                while (v60);
              }

              else
              {
                do
                {
                  v61 = v38[2];
                  v29 = *v61 == v38;
                  v38 = v61;
                }

                while (!v29);
              }

              v38 = v61;
            }

            while (v61 != v31 + 1);
            v30 = a1[15];
          }
        }
      }

      v31 += 3;
      ++v32;
    }

    while (v31 != v30);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "}\n", 2);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>>>::destroy(v67);
  v62 = *MEMORY[0x277D85DE8];
}

_DWORD *std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::VtValue>::pair[abi:ne200100]<true,0>(_DWORD *a1, _DWORD *a2, const pxrInternal__aapl__pxrReserved__::VtValue *a3)
{
  v6 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a1, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v6 + 1, a2 + 1);
  pxrInternal__aapl__pxrReserved__::VtValue::VtValue((a1 + 2), a3);
  return a1;
}

void ExecFault::~ExecFault(void **this)
{
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((this + 4));
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

unint64_t pxrInternal__aapl__pxrReserved__::SdfPathTable<pxrInternal__aapl__pxrReserved__::VtValue>::Iterator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::VtValue>,pxrInternal__aapl__pxrReserved__::SdfPathTable<pxrInternal__aapl__pxrReserved__::VtValue>::_Entry *>::GetNextSubtree(uint64_t a1)
{
  if (!*a1)
  {
    return 0;
  }

  for (i = *(*a1 + 40); ; i = *(result + 40))
  {
    result = i & 0xFFFFFFFFFFFFFFF8;
    if ((i & 7) != 0 && result != 0)
    {
      break;
    }

    if (result)
    {
      v4 = (i & 7) == 0;
    }

    else
    {
      v4 = 0;
    }

    if (!v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::VtValue>::pair[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue,0>(uint64_t a1, _DWORD *a2, void *a3)
{
  v6 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a1, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v6 + 1, a2 + 1);
  pxrInternal__aapl__pxrReserved__::VtValue::VtValue((a1 + 8), a3);
  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPathTable<pxrInternal__aapl__pxrReserved__::VtValue>::_UpdateTreeForNewEntry(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath **a2)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v9, *a2);
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL())
  {
    v10[1] = 0;
    std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::VtValue>::pair[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue,0>(v11, &v9, v10);
    v4 = pxrInternal__aapl__pxrReserved__::SdfPathTable<pxrInternal__aapl__pxrReserved__::VtValue>::insert(a1, v11);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v12);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v11);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v10);
    v5 = *(v4 + 32);
    if (v5)
    {
      v6 = v5 | 1;
    }

    else
    {
      v6 = v4;
    }

    *(v3 + 5) = v6;
    *(v4 + 32) = v3;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  result = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v9);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2475C4230(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::SdfPathTable<pxrInternal__aapl__pxrReserved__::VtValue>::_InsertInTableImpl<pxrInternal__aapl__pxrReserved__::SdfPathTable<pxrInternal__aapl__pxrReserved__::VtValue>::_InsertInTable(std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::VtValue> const&)::{lambda(pxrInternal__aapl__pxrReserved__::SdfPathTable<pxrInternal__aapl__pxrReserved__::VtValue>::_Entry *)#1}>(void *a1, unsigned int *a2)
{
  v4 = a1[4];
  if (!v4)
  {
    pxrInternal__aapl__pxrReserved__::SdfPathTable<pxrInternal__aapl__pxrReserved__::VtValue>::_Grow(a1);
    v4 = a1[4];
  }

  v5 = (*a1 + 8 * (bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1))) & v4));
  if (!*v5)
  {
LABEL_7:
    if (a1[3] > ((a1[1] - *a1) >> 3))
    {
      pxrInternal__aapl__pxrReserved__::SdfPathTable<pxrInternal__aapl__pxrReserved__::VtValue>::_Grow(a1);
      v7 = *(*a1 + 8 * (bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1))) & a1[4]));
    }

    operator new();
  }

  v6 = *v5;
  while (*v6 != *a2)
  {
    v6 = v6[3];
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  return v6;
}

void sub_2475C43D4(_Unwind_Exception *a1)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(v1);
  MEMORY[0x24C1A91B0]();
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfPathTable<pxrInternal__aapl__pxrReserved__::VtValue>::_Grow(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfMallocTag::Auto::Auto<char const(&)[22],char const(&)[167]>(&v15);
  v2 = atomic_load(MEMORY[0x277D86538]);
  if (v2)
  {
    v3 = pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin();
  }

  else
  {
    v3 = 0;
  }

  v4 = 2 * *(a1 + 32);
  if (v4 > 7)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = 7;
  }

  *(a1 + 32) = v5;
  if (v5 != -1)
  {
    if (!((v5 + 1) >> 61))
    {
      operator new();
    }

    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
  }

  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = v7 - *a1;
  if (v7 != *a1)
  {
    v9 = 0;
    v10 = v8 >> 3;
    do
    {
      v11 = v6[v9];
      if (v11)
      {
        v12 = *(a1 + 32);
        do
        {
          v13 = *(v11 + 3);
          v14 = bswap64(0x9E3779B97F4A7C55 * (v11[1] + ((v11[1] + *v11 + (v11[1] + *v11) * (v11[1] + *v11)) >> 1))) & v12;
          *(v11 + 3) = *(8 * v14);
          *(8 * v14) = v11;
          v11 = v13;
        }

        while (v13);
      }

      ++v9;
    }

    while (v9 != v10);
    v6 = *a1;
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (v6)
  {
    operator delete(v6);
  }

  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  if (v15)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }
}

void sub_2475C4590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::TfMallocTag::Auto::~Auto(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfAnyUniquePtr::_Delete<ExecFault>(uint64_t result)
{
  if (result)
  {
    v1 = result;
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((result + 32));
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,ExecFault>,void *>>>::operator()[abi:ne200100](char a1, uint64_t a2)
{
  if (a1)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((a2 + 56));
    if (*(a2 + 55) < 0)
    {
      operator delete(*(a2 + 32));
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a2 + 16);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage>::~pair(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 24);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1 + 16);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1 + 8);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

uint64_t realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage::~NodeStorage(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 16);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1 + 8);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

void Exec::TargetVertex::~TargetVertex(Exec::TargetVertex *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 1);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>(result, a2);
    }

    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_2475C4908(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<pxrInternal__aapl__pxrReserved__::SdfPath>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void **std::__set_difference[abi:ne200100]<std::__less<void,void>,std::__tree_const_iterator<unsigned long,std::__tree_node<unsigned long,void *> *,long> &,std::__tree_const_iterator<unsigned long,std::__tree_node<unsigned long,void *> *,long> &,std::__tree_const_iterator<unsigned long,std::__tree_node<unsigned long,void *> *,long> &,std::__tree_const_iterator<unsigned long,std::__tree_node<unsigned long,void *> *,long> &,std::insert_iterator<std::set<unsigned long>> &>(void **result, uint64_t a2, void *a3, uint64_t a4, void *a5, void **a6)
{
  v7 = result;
  v8 = *a2;
  v9 = *a3;
  if (*a2 == *a3)
  {
LABEL_38:
    v27 = *a6;
    v9 = v8;
    goto LABEL_39;
  }

  for (i = *a4; *a4 != *a5; i = *a4)
  {
    v15 = v8[4];
    v16 = i[4];
    if (v15 >= v16)
    {
      if (v16 >= v15)
      {
        v23 = v8[1];
        if (v23)
        {
          do
          {
            v24 = v23;
            v23 = *v23;
          }

          while (v23);
        }

        else
        {
          do
          {
            v24 = v8[2];
            v20 = *v24 == v8;
            v8 = v24;
          }

          while (!v20);
        }

        *a2 = v24;
        v25 = *a4;
        v26 = *(*a4 + 8);
        if (v26)
        {
          do
          {
            v22 = v26;
            v26 = *v26;
          }

          while (v26);
        }

        else
        {
          do
          {
            v22 = v25[2];
            v20 = *v22 == v25;
            v25 = v22;
          }

          while (!v20);
        }
      }

      else
      {
        v21 = i[1];
        if (v21)
        {
          do
          {
            v22 = v21;
            v21 = *v21;
          }

          while (v21);
        }

        else
        {
          do
          {
            v22 = i[2];
            v20 = *v22 == i;
            i = v22;
          }

          while (!v20);
        }
      }

      *a4 = v22;
    }

    else
    {
      result = std::insert_iterator<std::set<unsigned long>>::operator=[abi:ne200100](a6, v8 + 4);
      v17 = *a2;
      v18 = *(*a2 + 8);
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = v17[2];
          v20 = *v19 == v17;
          v17 = v19;
        }

        while (!v20);
      }

      *a2 = v19;
    }

    v8 = *a2;
    v9 = *a3;
    if (*a2 == *a3)
    {
      goto LABEL_38;
    }
  }

  v27 = *a6;
  v30 = *a6;
  if (v8 != v9)
  {
    do
    {
      result = std::insert_iterator<std::set<unsigned long>>::operator=[abi:ne200100](&v30, v8 + 4);
      v28 = v8[1];
      if (v28)
      {
        do
        {
          v29 = v28;
          v28 = *v28;
        }

        while (v28);
      }

      else
      {
        do
        {
          v29 = v8[2];
          v20 = *v29 == v8;
          v8 = v29;
        }

        while (!v20);
      }

      v8 = v29;
    }

    while (v29 != v9);
    v27 = v30;
  }

LABEL_39:
  *v7 = v9;
  *(v7 + 1) = v27;
  return result;
}

void **std::insert_iterator<std::set<unsigned long>>::operator=[abi:ne200100](void **a1, unint64_t *a2)
{
  v3 = std::__tree<unsigned long>::__emplace_hint_unique_key_args<unsigned long,unsigned long const&>(*a1, a1[1], a2);
  a1[1] = v3;
  v4 = *(v3 + 8);
  if (v4)
  {
    do
    {
      v5 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  else
  {
    do
    {
      v5 = *(v3 + 16);
      v6 = *v5 == v3;
      v3 = v5;
    }

    while (!v6);
  }

  a1[1] = v5;
  return a1;
}

void std::__tree<unsigned long>::__erase_unique<unsigned long>(uint64_t **a1, unint64_t a2)
{
  v4 = (a1 + 1);
  v3 = a1[1];
  if (v3)
  {
    v5 = v4;
    v6 = v3;
    do
    {
      v7 = v6[4];
      v8 = v7 >= a2;
      v9 = v7 < a2;
      if (v8)
      {
        v5 = v6;
      }

      v6 = v6[v9];
    }

    while (v6);
    if (v5 != v4 && v5[4] <= a2)
    {
      v10 = v5[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        v12 = v5;
        do
        {
          v11 = v12[2];
          v13 = *v11 == v12;
          v12 = v11;
        }

        while (!v13);
      }

      if (*a1 == v5)
      {
        *a1 = v11;
      }

      a1[2] = (a1[2] - 1);
      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v3, v5);

      operator delete(v5);
    }
  }
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<ExecFault,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<ExecFault>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<ExecFault>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 48), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<ExecFault,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<ExecFault>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<ExecFault>>::_Move(uint64_t *result, uint64_t *a2)
{
  *a2 = *result;
  *result = 0;
  return pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<ExecFault>>::_DecrementIfValid(result);
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<ExecFault,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<ExecFault>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<ExecFault>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<ExecFault>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<ExecFault>::_PlaceCopy();
}

uint64_t *pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<ExecFault>>::_DecrementIfValid(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 48), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((v1 + 32));
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_ProxyHelper<ExecFault,void>::Equal(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 31);
  if (v4 >= 0)
  {
    v5 = *(a1 + 31);
  }

  else
  {
    v5 = *(a1 + 16);
  }

  v6 = *(a2 + 31);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 16);
  }

  if (v5 != v6)
  {
    return 0;
  }

  v8 = v4 >= 0 ? (a1 + 8) : *(a1 + 8);
  v9 = v7 >= 0 ? (a2 + 8) : *(a2 + 8);
  if (memcmp(v8, v9, v5))
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::operator==(a1 + 32, a2 + 32);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<ExecFault>::_GetMutableObj(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 48));
  if (v1 != 1)
  {
    v2 = *a1;
    pxrInternal__aapl__pxrReserved__::TfMakeDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<ExecFault>,ExecFault const&>();
  }

  return *a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_Counted<ExecFault>::_Counted(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
  }

  pxrInternal__aapl__pxrReserved__::VtValue::VtValue((a1 + 32), (a2 + 32));
  atomic_store(0, (a1 + 48));
  return a1;
}

void sub_2475C5028(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<unsigned long,unsigned long,pxrInternal__aapl__pxrReserved__::VtValue::_LocalTypeInfo<unsigned long>>::_GetProxiedAsVtValue@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = *result;
  a2[1] = &unk_285951DD3;
  return result;
}

uint64_t std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>(uint64_t a1, void *a2)
{
  v2 = *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::__find_equal<pxrInternal__aapl__pxrReserved__::SdfPath>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::__construct_node<pxrInternal__aapl__pxrReserved__::SdfPath const&>();
  }

  return v2;
}

uint64_t std::__function::__func<Exec::getUnreachableTargets(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0,std::allocator<Exec::getUnreachableTargets(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0>,BOOL ()(realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285951E98;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<Exec::getUnreachableTargets(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0,std::allocator<Exec::getUnreachableTargets(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0>,BOOL ()(realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void **std::insert_iterator<std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>::operator=[abi:ne200100](void **a1, void *a2)
{
  v3 = std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_hint_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>(*a1, a1[1], a2);
  a1[1] = v3;
  v4 = *(v3 + 8);
  if (v4)
  {
    do
    {
      v5 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  else
  {
    do
    {
      v5 = *(v3 + 16);
      v6 = *v5 == v3;
      v3 = v5;
    }

    while (!v6);
  }

  a1[1] = v5;
  return a1;
}

uint64_t std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_hint_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>(void *a1, void *a2, void *a3)
{
  v3 = *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>>>::__find_equal<pxrInternal__aapl__pxrReserved__::SdfPath>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::__construct_node<pxrInternal__aapl__pxrReserved__::SdfPath const&>();
  }

  return v3;
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>>>::destroy(*a1);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>>>::destroy(*(a1 + 1));
    if (a1[63] < 0)
    {
      operator delete(*(a1 + 5));
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a1 + 32));

    operator delete(a1);
  }
}

uint64_t std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::piecewise_construct_t const&,std::tuple<pxrInternal__aapl__pxrReserved__::SdfPath const&>,std::tuple<>>(uint64_t a1, void *a2)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_7;
  }

  while (1)
  {
    while (1)
    {
      v5 = v2;
      if (!pxrInternal__aapl__pxrReserved__::SdfPath::operator<(a2, v2 + 4))
      {
        break;
      }

      v2 = *v5;
      v3 = v5;
      if (!*v5)
      {
        goto LABEL_7;
      }
    }

    if (!pxrInternal__aapl__pxrReserved__::SdfPath::operator<(v5 + 4, a2))
    {
      break;
    }

    v3 = v5 + 1;
    v2 = v5[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }

  if (!*v3)
  {
LABEL_7:
    operator new();
  }

  return *v3;
}

uint64_t GetCoreRealityIOBundleVersion()
{
  v15 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CoreRealityIO"];
  v1 = [v0 objectForInfoDictionaryKey:*MEMORY[0x277CBED58]];
  [v1 componentsSeparatedByString:@"."];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v2 = v11 = 0u;
  v3 = 0;
  v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    v6 = 1000000000000;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v6 /= 0x3E8uLL;
        v3 += v6 * [*(*(&v10 + 1) + 8 * v7++) intValue];
      }

      while (v4 != v7);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v3;
}

BOOL IsCoreRIOBundleVersionValid()
{
  v0 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CoreRealityIO"];
  v1 = [v0 objectForInfoDictionaryKey:*MEMORY[0x277CBED58]];
  v2 = [v1 intValue];
  v4 = v2 != 0xFFFF && v2 != 0;

  return v4;
}

CFStringRef RIOCopyMtlxFromUsdFile(const char *a1)
{
  v2 = strlen(a1);
  if (v2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v3 = v2;
  if (v2 >= 0x17)
  {
    operator new();
  }

  v8 = v2;
  if (v2)
  {
    memcpy(&v7, a1, v2);
  }

  *(&v7 + v3) = 0;
  realityio::mtlxFromUsd(__p);
  if (v10 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  v5 = CFStringCreateWithCString(0, v4, 0x8000100u);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7);
  }

  return v5;
}

void sub_2475C59F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t realityio::AcousticMeshComponentBuilder::kOutputName(realityio::AcousticMeshComponentBuilder *this)
{
  if ((atomic_load_explicit(&qword_27EE53078, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE53078))
  {
    operator new();
  }

  return qword_27EE53070;
}

void sub_2475C5AAC(_Unwind_Exception *a1)
{
  MEMORY[0x24C1A91B0](v1, 0x1012C40EC159624);
  __cxa_guard_abort(&qword_27EE53078);
  _Unwind_Resume(a1);
}

void realityio::AcousticMeshComponentBuilder::AcousticMeshComponentBuilder(realityio::AcousticMeshComponentBuilder *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v7[11] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v5, "AcousticMeshComponentBuilder");
  std::string::basic_string[abi:ne200100]<0>(&__p, realityio::kAcousticMeshComponentBuilderIdentifier);
  if ((atomic_load_explicit(&qword_27EE53068, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE53068))
  {
    operator new();
  }

  if (unk_27EE53060)
  {
    atomic_fetch_add_explicit((unk_27EE53060 + 8), 1uLL, memory_order_relaxed);
  }

  v7[0] = &unk_285951F90;
  v7[3] = v7;
  v6[0] = &unk_2859521B0;
  v6[3] = v6;
  realityio::DynamicBuilder::DynamicBuilder(this, a2);
}

void sub_2475C5EC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char *a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, void *a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36, char *a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, std::__shared_weak_count *a44)
{
  v47 = *(v45 - 104);
  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  if (a44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a44);
  }

  *(v45 - 216) = &a37;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v45 - 216));
  v48 = *(v45 - 120);
  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  if (a36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a36);
  }

  *(v45 - 216) = &a25;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v45 - 216));
  a25 = &a28;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a25);
  std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::destroy(&a32, a33);
  v49 = 8;
  while (1)
  {
    v50 = *(v45 - 144 + v49);
    if ((v50 & 7) != 0)
    {
      atomic_fetch_add_explicit((v50 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v49 -= 8;
    if (v49 == -8)
    {
      a37 = &a40;
      std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a37);
      MEMORY[0x24C1A91B0](v44, 0x10A1C407F0BD61ELL);
      __cxa_guard_abort(&qword_27EE53068);
      if (a18 < 0)
      {
        operator delete(__p);
      }

      if (a24 < 0)
      {
        operator delete(a19);
      }

      _Unwind_Resume(a1);
    }
  }
}

uint64_t realityio::AcousticMeshComponentBuilder::clear(uint64_t a1, uint64_t a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 48);
  v5 = a2;
  v6[0] = &unk_285952230;
  v6[1] = &v5;
  v6[2] = a1;
  v6[3] = v6;
  (*(*v2 + 16))(v2, v6);
  result = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2475C61D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void realityio::AcousticMeshComponentBuilder::~AcousticMeshComponentBuilder(realityio::AcousticMeshComponentBuilder *this)
{
  *this = &unk_285943338;
  std::__function::__value_func<std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](this + 248);
  std::__function::__value_func<std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](this + 216);
  v2 = *(this + 26);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 24);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 23);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::Builder::~Builder(this);
}

{
  *this = &unk_285943338;
  std::__function::__value_func<std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](this + 248);
  std::__function::__value_func<std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](this + 216);
  v2 = *(this + 26);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 24);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 23);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::Builder::~Builder(this);

  JUMPOUT(0x24C1A91B0);
}

void sub_2475C6660(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::AcousticMeshComponentBuilder::AcousticMeshComponentBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0,std::allocator<realityio::AcousticMeshComponentBuilder::AcousticMeshComponentBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0>,std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__shared_ptr_emplace<realityio::EntityGeneratingOwningPrimInputDescriptor>::__shared_ptr_emplace[abi:ne200100]<std::string const&,pxrInternal__aapl__pxrReserved__::TfToken &,realityio::InputDescriptor::Optionality,std::allocator<realityio::EntityGeneratingOwningPrimInputDescriptor>,0>(void *a1, uint64_t a2, uint64_t *a3, int *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285952000;
  std::allocator<realityio::EntityGeneratingOwningPrimInputDescriptor>::construct[abi:ne200100]<realityio::EntityGeneratingOwningPrimInputDescriptor,std::string const&,pxrInternal__aapl__pxrReserved__::TfToken &,realityio::InputDescriptor::Optionality>(&v6, a1 + 3, a2, a3, a4);
  return a1;
}

void std::__shared_ptr_emplace<realityio::EntityGeneratingOwningPrimInputDescriptor>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285952000;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::allocator<realityio::EntityGeneratingOwningPrimInputDescriptor>::construct[abi:ne200100]<realityio::EntityGeneratingOwningPrimInputDescriptor,std::string const&,pxrInternal__aapl__pxrReserved__::TfToken &,realityio::InputDescriptor::Optionality>(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, int *a5)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  realityio::EntityGeneratingOwningPrimInputDescriptor::EntityGeneratingOwningPrimInputDescriptor(a2, &__p, a4, *a5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_2475C6984(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *realityio::EntityGeneratingOwningPrimInputDescriptor::EntityGeneratingOwningPrimInputDescriptor(void *a1, uint64_t a2, uint64_t *a3, int a4)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  realityio::InputDescriptor::InputDescriptor(a1, &__p, a3, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *a1 = &unk_285952050;
  return a1;
}

void sub_2475C6A48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void realityio::EntityGeneratingOwningPrimInputDescriptor::~EntityGeneratingOwningPrimInputDescriptor(realityio::EntityGeneratingOwningPrimInputDescriptor *this)
{
  realityio::InputDescriptor::~InputDescriptor(this);

  JUMPOUT(0x24C1A91B0);
}

void *realityio::EntityGeneratingOwningPrimInputDescriptor::resolvedPrimPaths@<X0>(pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  v6 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(a2 + 48, a1);
  if (a2 + 56 != v6)
  {
    v7 = *(a2 + 24);
    if (v7)
    {
      v8 = (v7 + 104 * *(v6 + 40) + 24);
      return std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>(a3, v8);
    }
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v12, a1);
  v9 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(a2 + 48, &v12);
  if (a2 + 56 == v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(a2 + 24) + 104 * *(v9 + 40);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  result = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v12);
  if (v10)
  {
    v8 = (v10 + 24);
    return std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>(a3, v8);
  }

  return result;
}

void sub_2475C6B80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::~__hash_table(v2);
  _Unwind_Resume(a1);
}

void std::__function::__func<anonymous namespace::generateInputsDescriptor(void)::$_0,std::allocator<anonymous namespace::generateInputsDescriptor(void)::$_0>,pxrInternal__aapl__pxrReserved__::TfHashSet<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>> ()(pxrInternal__aapl__pxrReserved__::UsdStage const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,realityio::internal::PrimToEntityMap const&)>::~__func()
{
  JUMPOUT(0x24C1A91B0);
}

{
  JUMPOUT(0x24C1A91B0);
}

void std::__function::__func<anonymous namespace::generateInputsDescriptor(void)::$_0,std::allocator<anonymous namespace::generateInputsDescriptor(void)::$_0>,pxrInternal__aapl__pxrReserved__::TfHashSet<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>> ()(pxrInternal__aapl__pxrReserved__::UsdStage const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,realityio::internal::PrimToEntityMap const&)>::__clone()
{
  operator new();
}

{
  operator new();
}

void std::__function::__func<anonymous namespace::generateInputsDescriptor(void)::$_0,std::allocator<anonymous namespace::generateInputsDescriptor(void)::$_0>,pxrInternal__aapl__pxrReserved__::TfHashSet<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>> ()(pxrInternal__aapl__pxrReserved__::UsdStage const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,realityio::internal::PrimToEntityMap const&)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_285952090;
}

{
  *a2 = &unk_28595D378;
}

uint64_t std::__function::__func<anonymous namespace::generateInputsDescriptor(void)::$_0,std::allocator<anonymous namespace::generateInputsDescriptor(void)::$_0>,pxrInternal__aapl__pxrReserved__::TfHashSet<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>> ()(pxrInternal__aapl__pxrReserved__::UsdStage const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,realityio::internal::PrimToEntityMap const&)>::operator()@<X0>(pxrInternal__aapl__pxrReserved__::UsdStage *this@<X1>, pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X2>, uint64_t a3@<X8>)
{
  v19 = *MEMORY[0x277D85DE8];
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  PrimAtPath = pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v10, this, a2);
  v4 = *(realityio::logObjects(PrimAtPath) + 24);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v10))
    {
      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v10, v14);
      String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(v14);
      if (*(String + 23) >= 0)
      {
        v6 = String;
      }

      else
      {
        v6 = *String;
      }

      *buf = 136315138;
      *v16 = v6;
      _os_log_impl(&dword_247485000, v4, OS_LOG_TYPE_DEFAULT, "AcousticMeshComponent generateInputsDescriptor(prim.path=%s)", buf, 0xCu);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v14);
    }

    else
    {
      *buf = 136315138;
      *v16 = "<invalid>";
      _os_log_impl(&dword_247485000, v4, OS_LOG_TYPE_DEFAULT, "AcousticMeshComponent generateInputsDescriptor(prim.path=%s)", buf, 0xCu);
    }
  }

  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v10))
  {
    v7 = atomic_load(&realityio::tokens::AcousticMeshBuilderTokens);
    if (!v7)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::AcousticMeshBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::AcousticMeshBuilderTokens_StaticTokenType>>::_TryToCreateData();
    }

    pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(buf, &v10, (v7 + 32));
    if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(buf))
    {
      pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::TfToken>();
    }

    if ((v18 & 7) != 0)
    {
      atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v17);
    if (*&v16[4])
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*&v16[4]);
    }
  }

  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v12);
  result = v11;
  if (v11)
  {
    result = pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v11);
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v15, this, a2);
  pxrInternal__aapl__pxrReserved__::UsdPrim::GetRelationships(&v13, &v15);
  v4 = v13;
  for (i = v14; v4 != i; v4 = (v4 + 32))
  {
    MEMORY[0x24C1A5DE0](&v10, "isEntityHandle");
    HasCustomDataKey = pxrInternal__aapl__pxrReserved__::UsdObject::HasCustomDataKey(v4, &v10);
    if ((v10 & 7) != 0)
    {
      atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (HasCustomDataKey)
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      pxrInternal__aapl__pxrReserved__::UsdRelationship::GetTargets();
      v7 = v10;
      v8 = v11;
      while (v7 != v8)
      {
        pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v19, v7);
        std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>(a3, &v19);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v19);
        v7 = (v7 + 8);
      }

      v19 = &v10;
      std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v19);
    }
  }

  v10 = &v13;
  std::vector<pxrInternal__aapl__pxrReserved__::UsdRelationship>::__destroy_vector::operator()[abi:ne200100](&v10);
  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v17);
  result = v16;
  if (v16)
  {
    return pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v16);
  }

  return result;
}

void sub_2475C70C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, int a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&a13);
  a9 = &a15;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&a9);
  pxrInternal__aapl__pxrReserved__::UsdRelationship::~UsdRelationship(&a24);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(&a28);
  if ((a19 & 7) != 0)
  {
    atomic_fetch_add_explicit((a19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute((v29 - 112));
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(&a20);
  std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::~__hash_table(v28);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<anonymous namespace::generateInputsDescriptor(void)::$_0,std::allocator<anonymous namespace::generateInputsDescriptor(void)::$_0>,pxrInternal__aapl__pxrReserved__::TfHashSet<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>> ()(pxrInternal__aapl__pxrReserved__::UsdStage const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,realityio::internal::PrimToEntityMap const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<anonymous namespace::generateInputsDescriptor(void)::$_0,std::allocator<anonymous namespace::generateInputsDescriptor(void)::$_0>,pxrInternal__aapl__pxrReserved__::TfHashSet<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>> ()(pxrInternal__aapl__pxrReserved__::UsdStage const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,realityio::internal::PrimToEntityMap const&)>::target_type()
{
}

{
}

uint64_t anonymous namespace::visitChildren(pxrInternal__aapl__pxrReserved__::UsdObject *a1, uint64_t a2)
{
  v37 = *MEMORY[0x277D85DE8];
  result = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1);
  if (result)
  {
    v5 = *(a2 + 24);
    if (!v5)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v6 = (*(*v5 + 48))(v5, a1);
    UsdPrimDefaultPredicate = pxrInternal__aapl__pxrReserved__::GetUsdPrimDefaultPredicate(v6);
    v9 = *UsdPrimDefaultPredicate;
    v8 = UsdPrimDefaultPredicate[1];
    v10 = UsdPrimDefaultPredicate[2];
    if ((pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL() & 1) == 0 && ((v9 & 0x2000) != 0 || (v8 & 0x2000) == 0))
    {
      v9 |= 0x2000uLL;
      v8 &= ~0x2000uLL;
    }

    v21 = v9;
    v22 = v8;
    *&v23 = v10;
    pxrInternal__aapl__pxrReserved__::UsdPrim::_MakeSiblingRange(a1, &v21, &v25);
    v21 = v25;
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v22, &v26);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v22 + 1, &v27);
    v23 = v28;
    v24 = v29;
    v17 = v30;
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v18, &v31);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v18 + 1, &v32);
    v19 = v33;
    v20 = v34;
    while (1)
    {
      if (v21 == v17 && v22 == v18 && pxrInternal__aapl__pxrReserved__::operator==(&v23, &v19))
      {
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v18);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v22);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v31);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        result = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v26);
        goto LABEL_22;
      }

      pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator::dereference(&v21, v13);
      v11 = *(a2 + 24);
      if (!v11)
      {
        goto LABEL_14;
      }

      if (v11 != a2)
      {
        break;
      }

      v36 = v35;
      (*(*v11 + 24))(v11, v35);
LABEL_16:
      std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&)>::~__value_func[abi:ne200100](v35);
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v15);
      if (v14)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v14);
      }

      pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator::increment(&v21);
    }

    v11 = (*(*v11 + 16))(v11);
LABEL_14:
    v36 = v11;
    goto LABEL_16;
  }

LABEL_22:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2475C74C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<anonymous namespace::generateInputsDescriptor(void)::$_0::operator() const(pxrInternal__aapl__pxrReserved__::UsdStage const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,realityio::internal::PrimToEntityMap const&)::{lambda(pxrInternal__aapl__pxrReserved__::UsdPrim const&)#1},std::allocator<anonymous namespace::generateInputsDescriptor(void)::$_0::operator() const(pxrInternal__aapl__pxrReserved__::UsdStage const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,realityio::internal::PrimToEntityMap const&)::{lambda(pxrInternal__aapl__pxrReserved__::UsdPrim const&)#1}>,void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285952100;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

unint64_t std::__function::__func<anonymous namespace::generateInputsDescriptor(void)::$_0::operator() const(pxrInternal__aapl__pxrReserved__::UsdStage const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,realityio::internal::PrimToEntityMap const&)::{lambda(pxrInternal__aapl__pxrReserved__::UsdPrim const&)#1},std::allocator<anonymous namespace::generateInputsDescriptor(void)::$_0::operator() const(pxrInternal__aapl__pxrReserved__::UsdStage const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,realityio::internal::PrimToEntityMap const&)::{lambda(pxrInternal__aapl__pxrReserved__::UsdPrim const&)#1}>,void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&)>::operator()(uint64_t a1, pxrInternal__aapl__pxrReserved__ **this)
{
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(this, &v12);
  v4 = v12;
  v5 = **(a1 + 8);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  result = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v12);
  if (v4 != v5)
  {
    if ((**(a1 + 16) & 1) != 0 || (pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(this, &v12), HasPrefix = pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(&v12, *(a1 + 8)), pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(), result = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v12), (HasPrefix & 1) == 0))
    {
      v9 = this[1];
      if (!v9 || (*(v9 + 57) & 8) != 0)
      {
        pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(this[1], v7);
      }

      v10 = *(v9 + 3);
      result = atomic_load(&realityio::tokens::AcousticMeshBuilderTokens);
      if (!result)
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::AcousticMeshBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::AcousticMeshBuilderTokens_StaticTokenType>>::_TryToCreateData();
      }

      if ((*(result + 16) ^ *v10) <= 7)
      {
        v11 = *(a1 + 24);
        pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(this, &v12);
        std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>(v11, &v12);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v12);
      }
    }
  }

  return result;
}

void sub_2475C77B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<anonymous namespace::generateInputsDescriptor(void)::$_0::operator() const(pxrInternal__aapl__pxrReserved__::UsdStage const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,realityio::internal::PrimToEntityMap const&)::{lambda(pxrInternal__aapl__pxrReserved__::UsdPrim const&)#1},std::allocator<anonymous namespace::generateInputsDescriptor(void)::$_0::operator() const(pxrInternal__aapl__pxrReserved__::UsdStage const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,realityio::internal::PrimToEntityMap const&)::{lambda(pxrInternal__aapl__pxrReserved__::UsdPrim const&)#1}>,void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void sub_2475C7A40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::AcousticMeshComponentBuilder::AcousticMeshComponentBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1,std::allocator<realityio::AcousticMeshComponentBuilder::AcousticMeshComponentBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1>,std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<realityio::AcousticMeshComponentBuilder::clear(realityio::Inputs *)::$_0,std::allocator<realityio::AcousticMeshComponentBuilder::clear(realityio::Inputs *)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285952230;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<realityio::AcousticMeshComponentBuilder::clear(realityio::Inputs *)::$_0,std::allocator<realityio::AcousticMeshComponentBuilder::clear(realityio::Inputs *)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = **(a1 + 8);
  v4 = realityio::AcousticMeshComponentBuilder::kOutputName(a1);
  v56 = 0;
  v57 = 0;
  v5 = *(v3 + 24);
  if (v5)
  {
    v57 = std::__shared_weak_count::lock(v5);
    if (v57)
    {
      v56 = *(v3 + 16);
    }
  }

  MEMORY[0x24C1A5E00](&v58, v4);
  v6 = std::__hash_table<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::__unordered_map_hasher<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,std::equal_to<realityio::BuilderAndIOName>,true>,std::__unordered_map_equal<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::equal_to<realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>>>::__equal_range_multi<realityio::BuilderAndIOName>(*(v3 + 8), &v56);
  if (v6 == v7)
  {
    std::operator+<char>();
    v8 = std::string::append(&v60, ") at prim path (");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v61.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v61.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((v3 + 32));
    v11 = *(String + 23);
    if (v11 >= 0)
    {
      v12 = String;
    }

    else
    {
      v12 = *String;
    }

    if (v11 >= 0)
    {
      v13 = *(String + 23);
    }

    else
    {
      v13 = *(String + 8);
    }

    v14 = std::string::append(&v61, v12, v13);
    v15 = *&v14->__r_.__value_.__l.__data_;
    v63.__r_.__value_.__r.__words[0] = v14->__r_.__value_.__r.__words[2];
    v62 = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    v16 = std::string::append(&v62, ")");
LABEL_22:
    v27 = *&v16->__r_.__value_.__l.__data_;
    *&__p[16] = *(&v16->__r_.__value_.__l + 2);
    *__p = v27;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    realityio::DetailedError::DetailedError(v59, 204, &realityio::FoundationErrorCategory(void)::instance, __p);
    v52 = *v59;
    *v53 = *&v59[16];
    *&v53[15] = *&v59[31];
    v28 = v59[39];
    memset(&v59[16], 0, 24);
    v51[0] = 0;
    v53[23] = v28;
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    if (v63.__r_.__value_.__s.__data_[7] < 0)
    {
      operator delete(v62);
    }

    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v60.__r_.__value_.__l.__data_);
    }

    goto LABEL_60;
  }

  v17 = 1;
  v18 = v6;
  do
  {
    v18 = *v18;
    --v17;
  }

  while (v18 != v7);
  if (v17)
  {
    std::operator+<char>();
    v19 = std::string::append(&v60, ") at prim path (");
    v20 = *&v19->__r_.__value_.__l.__data_;
    v61.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
    *&v61.__r_.__value_.__l.__data_ = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    v21 = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((v3 + 32));
    v22 = *(v21 + 23);
    if (v22 >= 0)
    {
      v23 = v21;
    }

    else
    {
      v23 = *v21;
    }

    if (v22 >= 0)
    {
      v24 = *(v21 + 23);
    }

    else
    {
      v24 = *(v21 + 8);
    }

    v25 = std::string::append(&v61, v23, v24);
    v26 = *&v25->__r_.__value_.__l.__data_;
    v63.__r_.__value_.__r.__words[0] = v25->__r_.__value_.__r.__words[2];
    v62 = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    v16 = std::string::append(&v62, ") because more than one connected builder produced the same output type");
    goto LABEL_22;
  }

  v29 = v6[5];
  v31 = *(v29 + 16);
  v30 = *(v29 + 24);
  if (v30)
  {
    atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if ((v6[7] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((v6[7] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v6);
  }

  std::mutex::lock(v31 + 1);
  v33 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(&v31->__m_.__opaque[32], EmptyString);
  if (&v31->__m_.__opaque[40] == v33)
  {
    std::operator+<char>();
    v37 = std::string::append(&v60, " does not exist in the builder outputs");
    v38 = *&v37->__r_.__value_.__l.__data_;
    v61.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
    *&v61.__r_.__value_.__l.__data_ = v38;
    v37->__r_.__value_.__l.__size_ = 0;
    v37->__r_.__value_.__r.__words[2] = 0;
    v37->__r_.__value_.__r.__words[0] = 0;
    realityio::DetailedError::DetailedError(&v62, 207, &realityio::FoundationErrorCategory(void)::instance, &v61);
    *&v59[8] = v62;
    *&v59[24] = *&v63.__r_.__value_.__l.__data_;
    *&v59[39] = *(&v63.__r_.__value_.__r.__words[1] + 7);
    v39 = HIBYTE(v63.__r_.__value_.__r.__words[2]);
    memset(&v63, 0, sizeof(v63));
    v59[0] = 0;
    v59[47] = v39;
    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v60.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v34 = *(v33 + 56);
    v36 = *(v34 + 8);
    v35 = *(v34 + 16);
    if (v35)
    {
      atomic_fetch_add_explicit((v35 + 8), 1uLL, memory_order_relaxed);
    }

    v59[0] = 1;
    *&v59[8] = v36;
    *&v59[16] = v35;
  }

  std::mutex::unlock(v31 + 1);
  v40 = v59[0];
  if (v59[0])
  {
    v42 = *&v59[8];
    v41 = *&v59[16];
    if (*&v59[16])
    {
      atomic_fetch_add_explicit((*&v59[16] + 8), 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
      __p[0] = 1;
      *&__p[8] = v42;
      *&__p[16] = v41;
      std::__shared_weak_count::__release_shared[abi:ne200100](v41);
    }

    else
    {
      __p[0] = 1;
      *&__p[8] = *&v59[8];
      *&__p[16] = 0;
    }
  }

  else
  {
    v62 = *&v59[8];
    if ((v59[47] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v63, *&v59[24], *&v59[32]);
    }

    else
    {
      v63 = *&v59[24];
    }

    __p[0] = 0;
    *&__p[8] = v62;
    v55 = v63;
  }

  realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(v59);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  if (v40)
  {
    v43 = *&__p[8];
    *&__p[8] = 0;
    *&__p[16] = 0;
    v51[0] = 1;
    v52 = v43;
  }

  else
  {
    *v59 = *&__p[8];
    if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v59[16], v55.__r_.__value_.__l.__data_, v55.__r_.__value_.__l.__size_);
    }

    else
    {
      *&v59[16] = v55;
    }

    v51[0] = 0;
    v52 = *v59;
    *v53 = *&v59[16];
    *&v53[16] = *&v59[32];
  }

  realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(__p);
LABEL_60:
  if ((v58 & 7) != 0)
  {
    atomic_fetch_add_explicit((v58 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v44 = v57;
  if (v57)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v57);
  }

  if (v51[0] == 1)
  {
    v46 = *(v2 + 16);
    v45 = *(v2 + 24);
    if (v45)
    {
      atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v47 = realityio::AcousticMeshComponentBuilder::kOutputName(v44);
    std::mutex::lock((v46 + 64));
    if (v46 + 48 != std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(v46 + 40, v47))
    {
      std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::__erase_unique<std::string>((v46 + 40), v47);
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__erase_unique<std::string>(v46, v47);
    std::mutex::unlock((v46 + 64));
    if (v45)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v45);
    }
  }

  v48 = **(a1 + 8);
  v49 = realityio::EntityBuilder::kInputName(v44);
  realityio::Inputs::_getValue<realityio::WrappedRERef<REEntity *>>(v48, v49, v59);
  if (v59[0])
  {
    *__p = *&v59[8];
    if (*&v59[8])
    {
      RERetain();
      if (*__p)
      {
        REAcousticMeshComponentGetComponentType();
        REEntityRemoveComponentByClass();
      }
    }
  }

  else
  {
    *__p = 0;
  }

  realityio::WrappedRERef<REEntity *>::~WrappedRERef(__p);
  realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(v59);
  return realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(v51);
}

void sub_2475C8120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24)
{
  realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(&a15);
  if ((a24 & 7) != 0)
  {
    atomic_fetch_add_explicit((a24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::AcousticMeshComponentBuilder::clear(realityio::Inputs *)::$_0,std::allocator<realityio::AcousticMeshComponentBuilder::clear(realityio::Inputs *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t realityio::GeomSubsetBuilder::kGeomSubsetOutputName(realityio::GeomSubsetBuilder *this)
{
  if ((atomic_load_explicit(&qword_27EE53088, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE53088))
  {
    operator new();
  }

  return _MergedGlobals_20;
}

void sub_2475C8338(_Unwind_Exception *a1)
{
  MEMORY[0x24C1A91B0](v1, 0x1012C40EC159624);
  __cxa_guard_abort(&qword_27EE53088);
  _Unwind_Resume(a1);
}

void realityio::GeomSubsetBuilder::GeomSubsetBuilder(realityio::GeomSubsetBuilder *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v8[4] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v6, "GeomSubsetBuilder");
  std::string::basic_string[abi:ne200100]<0>(&__p, realityio::kGeomSubsetBuilderIdentifier);
  realityio::generateGeomSubsetDirtyStageSubscription(&v4);
  v8[0] = &unk_285952328;
  v8[3] = v8;
  v7[0] = &unk_2859523A8;
  v7[3] = v7;
  realityio::DynamicBuilder::DynamicBuilder(this, a2);
}

void sub_2475C84BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  std::__function::__value_func<std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](&a24);
  std::__function::__value_func<std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v24 - 56);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

uint64_t realityio::GeomSubsetBuilder::run(realityio::GeomSubsetBuilder *this, realityio::Inputs *a2)
{
  size = a2;
  v72 = *MEMORY[0x277D85DE8];
  v5 = (a2 + 32);
  v6 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*a2 + 8));
  PrimAtPath = pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v62, v6, v5);
  v8 = realityio::MaterialAssetBuilder::kMaterialDataName(PrimAtPath);
  v57 = 0uLL;
  v9 = *(size + 3);
  if (v9)
  {
    *(&v57 + 1) = std::__shared_weak_count::lock(v9);
    if (*(&v57 + 1))
    {
      *&v57 = *(size + 2);
    }
  }

  MEMORY[0x24C1A5E00](&v58, v8);
  v10 = std::__hash_table<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::__unordered_map_hasher<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,std::equal_to<realityio::BuilderAndIOName>,true>,std::__unordered_map_equal<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::equal_to<realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>>>::__equal_range_multi<realityio::BuilderAndIOName>(*(size + 1), &v57);
  if (v10 == v11)
  {
    std::operator+<char>();
    v12 = std::string::append(&v66, ") at prim path (");
    v13 = *&v12->__r_.__value_.__l.__data_;
    v67.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v67.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(v5);
    v15 = *(String + 23);
    if (v15 >= 0)
    {
      v16 = String;
    }

    else
    {
      v16 = *String;
    }

    if (v15 >= 0)
    {
      v17 = *(String + 23);
    }

    else
    {
      v17 = *(String + 8);
    }

    v18 = std::string::append(&v67, v16, v17);
    v19 = *&v18->__r_.__value_.__l.__data_;
    v60.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v60.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    v20 = std::string::append(&v60, ")");
LABEL_22:
    v31 = *&v20->__r_.__value_.__l.__data_;
    v69.__r_.__value_.__r.__words[0] = v20->__r_.__value_.__r.__words[2];
    *__p = v31;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    realityio::DetailedError::DetailedError(buf, 204, &realityio::FoundationErrorCategory(void)::instance, __p);
    v32 = *buf;
    v33 = *&buf[16];
    v2 = buf[39];
    memset(&buf[16], 0, 24);
    if (v69.__r_.__value_.__s.__data_[7] < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v60.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v67.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v66.__r_.__value_.__l.__data_);
    }

    v34 = 0;
    goto LABEL_31;
  }

  v21 = 1;
  v22 = v10;
  do
  {
    v22 = *v22;
    --v21;
  }

  while (v22 != v11);
  if (v21)
  {
    std::operator+<char>();
    v23 = std::string::append(&v66, ") at prim path (");
    v24 = *&v23->__r_.__value_.__l.__data_;
    v67.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
    *&v67.__r_.__value_.__l.__data_ = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    v25 = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(v5);
    v26 = *(v25 + 23);
    if (v26 >= 0)
    {
      v27 = v25;
    }

    else
    {
      v27 = *v25;
    }

    if (v26 >= 0)
    {
      v28 = *(v25 + 23);
    }

    else
    {
      v28 = *(v25 + 8);
    }

    v29 = std::string::append(&v67, v27, v28);
    v30 = *&v29->__r_.__value_.__l.__data_;
    v60.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
    *&v60.__r_.__value_.__l.__data_ = v30;
    v29->__r_.__value_.__l.__size_ = 0;
    v29->__r_.__value_.__r.__words[2] = 0;
    v29->__r_.__value_.__r.__words[0] = 0;
    v20 = std::string::append(&v60, ") because more than one connected builder produced the same output type");
    goto LABEL_22;
  }

  v48 = v10[5];
  v33 = *(v48 + 16);
  v49 = *(v48 + 24);
  if (v49)
  {
    atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if ((v10[7] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((v10[7] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v10);
  }

  realityio::Outputs::getRawValue<realityio::MaterialAssetDataT *>(v33, EmptyString, buf);
  v34 = buf[0];
  if (buf[0])
  {
    *&v51 = *&buf[8];
  }

  else
  {
    *__p = *&buf[8];
    if ((buf[47] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v69, *&buf[24], *&buf[32]);
      v52 = buf[0] | (buf[47] >= 0);
    }

    else
    {
      v69 = *&buf[24];
      v52 = 1;
    }

    v51 = *__p;
    size = v69.__r_.__value_.__l.__size_;
    v33 = v69.__r_.__value_.__r.__words[0];
    v2 = HIBYTE(v69.__r_.__value_.__r.__words[2]);
    if ((v52 & 1) == 0)
    {
      v55 = *__p;
      operator delete(*&buf[24]);
      v51 = v55;
    }
  }

  if (v49)
  {
    v56 = v51;
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
    v51 = v56;
  }

  v32 = v51;
  if ((v34 & 1) == 0)
  {
    *buf = v51;
    if (v2 < 0)
    {
      std::string::__init_copy_ctor_external(&buf[16], v33, size);
      v32 = *buf;
      v53 = *&buf[16];
      v2 = buf[39];
      operator delete(v33);
      v33 = v53;
    }
  }

LABEL_31:
  if ((v58 & 7) != 0)
  {
    atomic_fetch_add_explicit((v58 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v35 = *(&v57 + 1);
  if (*(&v57 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v57 + 1));
  }

  if (v32)
  {
    v36 = v34;
  }

  else
  {
    v36 = 0;
  }

  if (v36)
  {
    v37 = *(v32 + 8);
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
    v67.__r_.__value_.__r.__words[0] = MEMORY[0x277D866F8] + 16;
    pxrInternal__aapl__pxrReserved__::UsdGeomSubset::GetIndicesAttr(&v60, &v67);
    v59 = 0;
    v57 = 0u;
    v58 = 0u;
    realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<int>>(&v60, buf);
    if (buf[0])
    {
      *__p = *&buf[8];
      *&v69.__r_.__value_.__l.__data_ = *&buf[24];
      v38 = *&buf[40];
    }

    else
    {
      *__p = v57;
      *&v69.__r_.__value_.__l.__data_ = v58;
      v38 = v59;
    }

    v69.__r_.__value_.__r.__words[2] = v38;
    if (v38)
    {
      v41 = (v38 - 16);
      if (v69.__r_.__value_.__l.__size_)
      {
        v41 = v69.__r_.__value_.__l.__size_;
      }

      atomic_fetch_add_explicit(v41, 1uLL, memory_order_relaxed);
    }

    realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<int>,realityio::DetailedError>::~Result(buf);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v57);
    if ((v61 & 7) != 0)
    {
      atomic_fetch_add_explicit((v61 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v60.__r_.__value_.__r.__words[2]);
    if (v60.__r_.__value_.__l.__size_)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v60.__r_.__value_.__l.__size_);
    }

    pxrInternal__aapl__pxrReserved__::UsdPrim::GetParent(&v62, &v57);
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v57, &v60);
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v62, &v66);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(buf, &v60);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&buf[4], v60.__r_.__value_.__r.__words + 1);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&buf[8], &v66);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&buf[12], v66.__r_.__value_.__r.__words + 1);
    *&buf[16] = *__p;
    *&buf[32] = v69;
    if (v69.__r_.__value_.__r.__words[2])
    {
      v42 = (v69.__r_.__value_.__r.__words[2] - 16);
      if (*&buf[40])
      {
        v42 = *&buf[40];
      }

      atomic_fetch_add_explicit(v42, 1uLL, memory_order_relaxed);
    }

    v71 = v37;
    if (v37)
    {
      RERetain();
    }

    realityio::GeomSubsetBuilder::SubsetDataT::operator=(this + 280, buf);
    realityio::GeomSubsetBuilder::SubsetDataT::~SubsetDataT(buf);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v66);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v60);
    if ((BYTE8(v58) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v58 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v58);
    v43 = *(&v57 + 1);
    if (*(&v57 + 1))
    {
      v43 = pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&v57 + 1));
    }

    v45 = *(this + 2);
    v44 = *(this + 3);
    if (v44)
    {
      atomic_fetch_add_explicit((v44 + 8), 1uLL, memory_order_relaxed);
    }

    realityio::GeomSubsetBuilder::kGeomSubsetOutputName(v43);
    std::mutex::lock(v45 + 1);
    operator new();
  }

  v39 = *(realityio::logObjects(v35) + 24);
  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v62, __p);
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(__p);
    *buf = 136315138;
    *&buf[4] = Text;
    _os_log_error_impl(&dword_247485000, v39, OS_LOG_TYPE_ERROR, "Stopping operation to set material shader because it didn't exist on GeomSubset prim %s", buf, 0xCu);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(__p);
  }

  if (v2 >= 0)
  {
    v40 = 1;
  }

  else
  {
    v40 = v34;
  }

  if ((v40 & 1) == 0)
  {
    operator delete(v33);
  }

  if ((v65 & 7) != 0)
  {
    atomic_fetch_add_explicit((v65 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v64);
  result = v63;
  if (v63)
  {
    result = pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v63);
  }

  v47 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2475C8CB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, char a42)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t realityio::GeomSubsetBuilder::SubsetDataT::operator=(uint64_t a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a1, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a1 + 4, (a2 + 4));
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a1 + 8, (a2 + 8));
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a1 + 12, (a2 + 12));
  if (a1 != a2)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(a1 + 16);
    v4 = *(a2 + 32);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = v4;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *(a1 + 48) = *(a2 + 48);
    *(a2 + 48) = 0;
  }

  v5 = *(a1 + 56);
  v6 = *(a2 + 56);
  if (v5 != v6)
  {
    *(a1 + 56) = v6;
    *(a2 + 56) = v5;
  }

  return a1;
}

void realityio::GeomSubsetBuilder::clear(realityio::GeomSubsetBuilder *this, realityio::Inputs *a2)
{
  v4 = *(this + 2);
  v3 = *(this + 3);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = realityio::GeomSubsetBuilder::kGeomSubsetOutputName(this);
  std::mutex::lock(v4 + 1);
  v6 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(&v4->__m_.__opaque[32], v5);
  v7 = &v4->__m_.__opaque[40];
  if (&v4->__m_.__opaque[40] != v6)
  {
    std::mutex::unlock(v4 + 1);
    v9 = 0;
    if (!v3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  std::operator+<char>();
  v13 = std::string::append(&v24, " does not exist in the builder outputs");
  v14 = *&v13->__r_.__value_.__l.__data_;
  v26 = v13->__r_.__value_.__r.__words[2];
  v25 = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  realityio::DetailedError::DetailedError(&v20, 207, &realityio::FoundationErrorCategory(void)::instance, &v25);
  v19 = v20;
  v15 = *(&v21 + 1);
  v5 = v21;
  v16 = SBYTE7(v22);
  *&v22 = 0;
  v21 = 0uLL;
  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  std::mutex::unlock(v4 + 1);
  v20 = v19;
  if ((v16 & 0x80000000) == 0)
  {
    v9 = 1;
    if (!v3)
    {
      goto LABEL_6;
    }

LABEL_5:
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    goto LABEL_6;
  }

  std::string::__init_copy_ctor_external(&v21, v5, v15);
  v17 = v21;
  v18 = SBYTE7(v22);
  operator delete(v5);
  v9 = v18 >= 0;
  v5 = v17;
  if (v3)
  {
    goto LABEL_5;
  }

LABEL_6:
  if (v7 == v6)
  {
    if (!v9)
    {
      operator delete(v5);
    }
  }

  else
  {
    v11 = *(this + 2);
    v10 = *(this + 3);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = realityio::GeomSubsetBuilder::kGeomSubsetOutputName(v8);
    std::mutex::lock((v11 + 64));
    if (v11 + 48 != std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(v11 + 40, v12))
    {
      std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::__erase_unique<std::string>((v11 + 40), v12);
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__erase_unique<std::string>(v11, v12);
    std::mutex::unlock((v11 + 64));
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    realityio::GeomSubsetBuilder::SubsetDataT::SubsetDataT(&v20);
    realityio::GeomSubsetBuilder::SubsetDataT::operator=(this + 280, &v20);
    realityio::GeomSubsetBuilder::SubsetDataT::~SubsetDataT(&v20);
  }
}

void sub_2475C919C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  operator delete(v26);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  _Unwind_Resume(a1);
}

void realityio::GeomSubsetBuilder::~GeomSubsetBuilder(realityio::GeomSubsetBuilder *this)
{
  *this = &unk_2859522B0;
  realityio::GeomSubsetBuilder::SubsetDataT::~SubsetDataT((this + 280));
  *this = &unk_285943338;
  std::__function::__value_func<std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](this + 248);
  std::__function::__value_func<std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](this + 216);
  v2 = *(this + 26);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 24);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 23);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::Builder::~Builder(this);
}

{
  *this = &unk_2859522B0;
  realityio::GeomSubsetBuilder::SubsetDataT::~SubsetDataT((this + 280));
  *this = &unk_285943338;
  std::__function::__value_func<std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](this + 248);
  std::__function::__value_func<std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](this + 216);
  v2 = *(this + 26);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 24);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 23);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::Builder::~Builder(this);

  JUMPOUT(0x24C1A91B0);
}

realityio::GeomSubsetBuilder::SubsetDataT *realityio::GeomSubsetBuilder::SubsetDataT::SubsetDataT(realityio::GeomSubsetBuilder::SubsetDataT *this)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 1) = 0u;
  return this;
}

void realityio::GeomSubsetBuilder::SubsetDataT::~SubsetDataT(realityio::GeomSubsetBuilder::SubsetDataT *this)
{
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(this + 7);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(this + 16);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 8);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this);
}

void sub_2475C9614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::GeomSubsetBuilder::GeomSubsetBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0,std::allocator<realityio::GeomSubsetBuilder::GeomSubsetBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0>,std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2475C9838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::GeomSubsetBuilder::GeomSubsetBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1,std::allocator<realityio::GeomSubsetBuilder::GeomSubsetBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1>,std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<realityio::InputOutputWrapperObject<realityio::GeomSubsetBuilder::SubsetDataT *>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285952428;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void realityio::generateSceneLibraryDirtyStageSubscription(void *a1@<X8>)
{
  v5 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_27EE530A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE530A0))
  {
    operator new();
  }

  v3 = *algn_27EE53098;
  *a1 = _MergedGlobals_21;
  a1[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_2475C9C80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21, uint64_t a22, uint64_t a23, char a24)
{
  MEMORY[0x24C1A91B0](v27, 0x1060C40E5A1EACFLL);
  MEMORY[0x24C1A91B0](v26, 0x10A1C402FEF67C7);
  a21 = &a24;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a21);
  MEMORY[0x24C1A91B0](v25, 0x10A1C401BF1BAA1);
  MEMORY[0x24C1A91B0](v24, 0x10A1C407F0BD61ELL);
  __cxa_guard_abort(&qword_27EE530A0);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrSdfValueTypeNameGetTypeID()
{
  if (RIOPxrSdfValueTypeNameGetTypeID::onceToken != -1)
  {
    dispatch_once(&RIOPxrSdfValueTypeNameGetTypeID::onceToken, &__block_literal_global_12);
  }

  return RIOPxrSdfValueTypeNameGetTypeID::typeID;
}

void __RIOPxrSdfValueTypeNameGetTypeID_block_invoke()
{
  if (!RIOPxrSdfValueTypeNameGetTypeID::typeID)
  {
    RIOPxrSdfValueTypeNameGetTypeID::typeID = _CFRuntimeRegisterClass();
  }
}

uint64_t RIOPxrSdfValueTypeNameCreateBool()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (Data)
  {
  }

  else
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(Data);
}

uint64_t RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(void *a1)
{
  v2 = *MEMORY[0x277CBECE8];
  if (RIOPxrSdfValueTypeNameGetTypeID::onceToken != -1)
  {
    dispatch_once(&RIOPxrSdfValueTypeNameGetTypeID::onceToken, &__block_literal_global_12);
  }

  result = _CFRuntimeCreateInstance();
  if (result)
  {
    *(result + 16) = *a1;
  }

  return result;
}

uint64_t RIOPxrSdfValueTypeNameCreateInt32()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 16);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateInt64()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 32);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateUInt8()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 8);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateUInt32()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 24);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateUInt64()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 40);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateHalf()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 48);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateHalf2()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 128);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateHalf3()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 136);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateHalf4()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 144);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateFloat()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 56);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateFloat2()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 152);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateFloat3()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 160);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateFloat4()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 168);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateDouble()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 64);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateDouble2()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 176);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateDouble3()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 184);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateDouble4()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 192);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreatePoint3h()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 200);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreatePoint3f()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 208);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreatePoint3d()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 216);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateVector3h()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 224);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateVector3f()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 232);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateVector3d()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 240);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateTexCoord2h()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 376);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateTexCoord2f()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 384);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateTexCoord2d()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 392);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateTexCoord3h()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 400);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateTexCoord3f()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 408);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateTexCoord3d()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 416);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateInt2()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 104);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateInt3()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 112);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateInt4()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 120);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateColor4h()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 296);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateColor4f()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 304);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateColor4d()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 312);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateNormal3h()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 248);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateNormal3f()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 256);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateNormal3d()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 264);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateColor3h()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 272);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateColor3f()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 280);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateColor3d()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 288);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateQuath()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 320);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateQuatf()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 328);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateQuatd()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 336);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateMatrix2d()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 344);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateMatrix3d()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 352);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateMatrix4d()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 360);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateFrame4d()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 368);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateString()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 80);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateToken()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 88);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateBoolArray()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 448);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateInt32Array()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 464);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateInt64Array()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 488);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateUInt32Array()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 480);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateUInt8Array()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 456);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateUInt64Array()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 496);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateInt2Array()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 560);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateInt3Array()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 568);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateInt4Array()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 576);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateColor4hArray()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 752);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateColor4fArray()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 760);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateColor4dArray()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 768);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateNormal3hArray()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 704);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateNormal3fArray()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 712);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateNormal3dArray()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 720);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateColor3hArray()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 728);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateColor3fArray()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 736);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateColor3dArray()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 744);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateHalfArray()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 504);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateHalf2Array()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 584);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateHalf3Array()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 592);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateHalf4Array()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 600);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateFloatArray()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 512);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateFloat2Array()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 608);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateFloat3Array()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 616);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateFloat4Array()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 624);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateDoubleArray()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 520);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateDouble2Array()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 632);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateDouble3Array()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 640);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateDouble4Array()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 648);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreatePoint3hArray()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 656);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreatePoint3fArray()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 664);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreatePoint3dArray()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 672);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateVector3hArray()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 680);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateVector3fArray()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 688);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateVector3dArray()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 696);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateTexCoord2hArray()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 832);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateTexCoord2fArray()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 840);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateTexCoord2dArray()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 848);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateTexCoord3hArray()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 856);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateTexCoord3fArray()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 864);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateTexCoord3dArray()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 872);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateQuathArray()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 776);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateQuatfArray()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 784);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateQuatdArray()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 792);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateMatrix2dArray()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 800);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateMatrix3dArray()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 808);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateMatrix4dArray()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 816);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateFrame4dArray()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 824);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateStringArray()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 536);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateTokenArray()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 544);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateAssetPath()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 96);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

uint64_t RIOPxrSdfValueTypeNameCreateAssetPathArray()
{
  Data = atomic_load(MEMORY[0x277D86578]);
  if (!Data)
  {
    Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  v2 = (Data + 552);

  return RIOPxrSdfValueTypeNameCreate<pxrInternal__aapl__pxrReserved__::SdfValueTypeName const&>(v2);
}

CFStringRef RIOPxrSdfValueTypeNameCopyCppTypeName(uint64_t a1)
{
  if (!a1)
  {
    return &stru_28595E8A0;
  }

  CPPTypeName = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetCPPTypeName((a1 + 16));
  if (*(CPPTypeName + 23) >= 0)
  {
    v2 = CPPTypeName;
  }

  else
  {
    v2 = *CPPTypeName;
  }

  return CFStringCreateWithCString(0, v2, 0x8000100u);
}

uint64_t RIOPxrSdfValueTypeNameCopyToken(uint64_t a1)
{
  if (a1)
  {
    pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&v2, (a1 + 16));
    result = RIOPxrTfTokenCreate<pxrInternal__aapl__pxrReserved__::TfToken>(&v2);
    if ((v2 & 7) != 0)
    {
      atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    if (RIOPxrTfTokenEmpty::onceToken != -1)
    {
      dispatch_once(&RIOPxrTfTokenEmpty::onceToken, &__block_literal_global_2_2);
    }

    return RIOPxrTfTokenEmpty::tokenRef;
  }

  return result;
}

void realityio::BuilderDependencyDAG::SocketQuery::~SocketQuery(realityio::BuilderDependencyDAG::SocketQuery *this)
{
  v2 = *(this + 2);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 4);
}

void realityio::BuilderDependencyDAG::getDirectlyProvidingBuilders(void *a1, unint64_t *a2, void *a3)
{
  std::__hash_table<std::shared_ptr<realityio::Builder>,std::hash<std::shared_ptr<realityio::Builder>>,std::equal_to<std::shared_ptr<realityio::Builder>>,std::allocator<std::shared_ptr<realityio::Builder>>>::clear(a3);
  v6 = a2[1];
  v10 = *a2;
  v11 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = std::__hash_table<std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,std::__unordered_map_hasher<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,realityio::WeakBuilderPtrHash,realityio::WeakBuilderPtrEqual,true>,std::__unordered_map_equal<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,realityio::WeakBuilderPtrEqual,realityio::WeakBuilderPtrHash,true>,std::allocator<std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>>>::find<std::weak_ptr<realityio::Builder>>(a1, &v10);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  for (i = v7[18]; i; i = *i)
  {
    v10 = 0;
    v11 = 0;
    v9 = i[4];
    if (v9)
    {
      v11 = std::__shared_weak_count::lock(v9);
      if (v11)
      {
        v10 = i[3];
      }
    }

    std::__hash_table<std::shared_ptr<realityio::Builder>,std::hash<std::shared_ptr<realityio::Builder>>,std::equal_to<std::shared_ptr<realityio::Builder>>,std::allocator<std::shared_ptr<realityio::Builder>>>::__emplace_unique_key_args<std::shared_ptr<realityio::Builder>,std::shared_ptr<realityio::Builder>>(a3, &v10);
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }
}

void sub_2475CBFA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

void realityio::BuilderDependencyDAG::getDirectlyDependentBuilders(void *a1, unint64_t *a2, void *a3)
{
  std::__hash_table<std::shared_ptr<realityio::Builder>,std::hash<std::shared_ptr<realityio::Builder>>,std::equal_to<std::shared_ptr<realityio::Builder>>,std::allocator<std::shared_ptr<realityio::Builder>>>::clear(a3);
  v6 = a2[1];
  v10 = *a2;
  v11 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = std::__hash_table<std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,std::__unordered_map_hasher<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,realityio::WeakBuilderPtrHash,realityio::WeakBuilderPtrEqual,true>,std::__unordered_map_equal<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,realityio::WeakBuilderPtrEqual,realityio::WeakBuilderPtrHash,true>,std::allocator<std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>>>::find<std::weak_ptr<realityio::Builder>>(a1, &v10);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  for (i = v7[23]; i; i = *i)
  {
    v10 = 0;
    v11 = 0;
    v9 = i[4];
    if (v9)
    {
      v11 = std::__shared_weak_count::lock(v9);
      if (v11)
      {
        v10 = i[3];
      }
    }

    std::__hash_table<std::shared_ptr<realityio::Builder>,std::hash<std::shared_ptr<realityio::Builder>>,std::equal_to<std::shared_ptr<realityio::Builder>>,std::allocator<std::shared_ptr<realityio::Builder>>>::__emplace_unique_key_args<std::shared_ptr<realityio::Builder>,std::shared_ptr<realityio::Builder>>(a3, &v10);
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }
}

void sub_2475CC0A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t realityio::BuilderDependencyDAG::generateBuilderProviderInfo@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  for (i = *(this + 16); i; i = *i)
  {
    v3 = i[18];
    if (v3)
    {
      v4 = i[3];
      if (v4)
      {
        v5 = std::__shared_weak_count::lock(v4);
        if (v5)
        {
          v6 = i[2];
        }
      }

      else
      {
        v5 = 0;
      }

      v7 = v3[2];
      if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v7 &= 0xFFFFFFFFFFFFFFF8;
      }

      v8 = v3[4];
      if (v8)
      {
        v9 = std::__shared_weak_count::lock(v8);
        if (v9)
        {
          v10 = v3[3];
        }
      }

      else
      {
        v9 = 0;
      }

      v11 = v3[5];
      if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v11 &= 0xFFFFFFFFFFFFFFF8;
      }

      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed);
      }

      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed);
      }

      std::__hash_table<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::__unordered_map_hasher<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,std::equal_to<realityio::BuilderAndIOName>,true>,std::__unordered_map_equal<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::equal_to<realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>>>::__emplace_multi<std::pair<realityio::BuilderAndIOName,realityio::BuilderAndIOName>>();
    }
  }

  return this;
}

void sub_2475CC2CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::pair<realityio::BuilderAndIOName,realityio::BuilderAndIOName>::~pair(va);
  if (v3)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    if (!v5)
    {
LABEL_3:
      if (!v6)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if (!v5)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  if (!v6)
  {
LABEL_4:
    if (!v4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_9:
  atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  if (!v4)
  {
LABEL_6:
    std::__hash_table<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::__unordered_map_hasher<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,std::equal_to<realityio::BuilderAndIOName>,true>,std::__unordered_map_equal<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::equal_to<realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>>>::~__hash_table(a3);
    _Unwind_Resume(a1);
  }

LABEL_5:
  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  goto LABEL_6;
}

void realityio::BuilderDependencyDAG::addBuildersAndResyncIODescriptors(void *a1, unint64_t **a2, uint64_t a3, uint64_t *a4)
{
  v148 = a3;
  *(&v116 + 1) = 0;
  std::vector<std::shared_ptr<realityio::Builder>>::__vdeallocate(a4);
  *a4 = 0;
  a4[1] = 0;
  v100 = a4;
  a4[2] = 0;
  v115[1] = 0;
  *&v116 = 0;
  v115[0] = 0;
  *&v127 = v115;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v127);
  v6 = a1[2];
  v106 = a1;
  while (v6)
  {
    v149 = 0uLL;
    v7 = v6[3];
    if (v7)
    {
      *(&v149 + 1) = std::__shared_weak_count::lock(v7);
      if (*(&v149 + 1))
      {
        *&v149 = v6[2];
      }
    }

    realityio::BuilderDependencyDAG::addBuildersAndResyncIODescriptors(realityio::BuilderWorkingSetPriorityQueue<std::shared_ptr<realityio::Builder>> const&,realityio::LiveSceneUpdate const&,realityio::BuilderWorkingSetPriorityQueue<std::shared_ptr<realityio::Builder>>&)::$_0::operator()(v115, &v148, &v149);
    if (v6[9] != *(&v116 + 1))
    {
      goto LABEL_45;
    }

    v8 = v6[8];
    if (v8)
    {
      v10 = v6[6];
      v9 = v6[7];
      v11 = v115[0];
      v12 = v115[1];
      v103 = v9;
      v104 = v10;
      v101 = v115[1];
      v102 = v115[0];
      while (1)
      {
        v13 = *(v8 + 16);
        v14 = std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>>>::__equal_range_multi<pxrInternal__aapl__pxrReserved__::TfToken>(v10, v9, v13);
        v8 = v15;
        v16 = std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>>>::__equal_range_multi<pxrInternal__aapl__pxrReserved__::TfToken>(v11, v12, v13);
        v18 = v16;
        if (v14 == v8)
        {
          v19 = 0;
        }

        else
        {
          v19 = 0;
          v20 = v14;
          do
          {
            ++v19;
            v20 = *v20;
          }

          while (v20 != v8);
        }

        if (v16 == v17)
        {
          v21 = 0;
        }

        else
        {
          v21 = 0;
          v22 = v16;
          do
          {
            ++v21;
            v22 = *v22;
          }

          while (v22 != v17);
        }

        if (v19 != v21)
        {
          goto LABEL_45;
        }

        while (v14 != v8 && std::__equal_to::operator()[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>>(&v14[2], v18 + 2))
        {
          v14 = *v14;
          v18 = *v18;
        }

        if (v8 != v14)
        {
          break;
        }

LABEL_43:
        v35 = 1;
        v10 = v104;
        a1 = v106;
        v11 = v102;
        v9 = v103;
        v12 = v101;
        if (!v8)
        {
          goto LABEL_48;
        }
      }

      v23 = 0;
      v24 = 2;
      v25 = v14;
      do
      {
        v26 = v24;
        ++v23;
        v25 = *v25;
        ++v24;
      }

      while (v25 != v8);
      a1 = v106;
      if (v23 != 1)
      {
        v27 = v18;
        do
        {
          v27 = *v27;
          --v26;
        }

        while (v26 > 1);
        v28 = v14;
        while (1)
        {
          v29 = v14;
          if (v28 != v14)
          {
            v29 = v14;
            while (!std::__equal_to::operator()[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>>(&v29[2], v28 + 2))
            {
              v29 = *v29;
              if (v29 == v28)
              {
                goto LABEL_34;
              }
            }
          }

          if (v29 == v28)
          {
LABEL_34:
            if (v18 == v27)
            {
              goto LABEL_46;
            }

            v31 = 0;
            v32 = v18;
            do
            {
              v31 += std::__equal_to::operator()[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>>(&v28[2], v32 + 2);
              v32 = *v32;
            }

            while (v32 != v27);
            if (!v31)
            {
              goto LABEL_46;
            }

            v30 = *v28;
            v33 = 1;
            if (*v28 != v8)
            {
              v34 = *v28;
              do
              {
                v33 += std::__equal_to::operator()[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>>(&v28[2], v34 + 2);
                v34 = *v34;
              }

              while (v34 != v8);
            }

            if (v33 != v31)
            {
LABEL_46:
              v35 = 0;
              a1 = v106;
              goto LABEL_48;
            }
          }

          else
          {
            v30 = *v28;
          }

          v28 = v30;
          if (v30 == v8)
          {
            goto LABEL_43;
          }
        }
      }

LABEL_45:
      v35 = 0;
      goto LABEL_48;
    }

    v35 = 1;
LABEL_48:
    if (v6[14] != v121)
    {
LABEL_74:
      v39 = 0;
      goto LABEL_75;
    }

    v36 = v6 + 13;
    v37 = vcnt_s8(v119);
    v37.i16[0] = vaddlv_u8(v37);
    v38 = v119 - 1;
LABEL_50:
    v36 = *v36;
    v39 = v36 == 0;
    if (v36 && v119)
    {
      v40 = v36[2];
      v41 = bswap64(0x9E3779B97F4A7C55 * (v40 & 0xFFFFFFFFFFFFFFF8));
      if (v37.u32[0] > 1uLL)
      {
        v42 = v41;
        if (v41 >= v119)
        {
          v42 = v41 % v119;
        }
      }

      else
      {
        v42 = v41 & v38;
      }

      v43 = *(v118 + 8 * v42);
      if (v43)
      {
        v44 = *v43;
        if (v44)
        {
          while (1)
          {
            v45 = v44[1];
            if (v41 == v45)
            {
              if ((v44[2] ^ v40) < 8)
              {
                if (*(v36 + 6) == *(v44 + 6) && (v44[4] ^ v36[4]) < 8)
                {
                  goto LABEL_50;
                }

                break;
              }
            }

            else
            {
              if (v37.u32[0] > 1uLL)
              {
                if (v45 >= v119)
                {
                  v45 %= v119;
                }
              }

              else
              {
                v45 &= v38;
              }

              if (v45 != v42)
              {
                goto LABEL_74;
              }
            }

            v44 = *v44;
            if (!v44)
            {
              goto LABEL_74;
            }
          }
        }
      }
    }

LABEL_75:
    v47 = atomic_load((a1[16] + 28));
    if (v47 == 1)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(&v127, "addBuildersAndResyncIODescriptorsCancel");
      realityio::ImportSession::CancelledException::CancelledException(exception, &v127);
    }

    if (v35)
    {
      v48 = 0;
      LOBYTE(v144[0]) = 0;
    }

    else
    {
      v49 = v115[0];
      v50 = v115[1];
      v115[0] = 0;
      v115[1] = 0;
      v144[0] = v49;
      v144[1] = v50;
      v145 = v116;
      v146 = v117;
      if (*(&v116 + 1))
      {
        v51 = *(v116 + 8);
        if ((v50 & (v50 - 1)) != 0)
        {
          if (v51 >= v50)
          {
            v51 %= v50;
          }
        }

        else
        {
          v51 &= v50 - 1;
        }

        *(&v49->__vftable + v51) = &v145;
        v48 = 1;
        v116 = 0uLL;
      }

      else
      {
        v48 = 1;
      }
    }

    v147 = v48;
    if (v39)
    {
      v52 = 0;
      LOBYTE(v140[0]) = 0;
    }

    else
    {
      v53 = v118;
      v54 = v119;
      v118 = 0;
      v119 = 0;
      v140[0] = v53;
      v140[1] = v54;
      v141[0] = v120;
      v141[1] = v121;
      v142 = v122[0];
      if (v121)
      {
        v55 = *(v120 + 8);
        if ((v54 & (v54 - 1)) != 0)
        {
          if (v55 >= v54)
          {
            v55 %= v54;
          }
        }

        else
        {
          v55 &= v54 - 1;
        }

        *(v53 + 8 * v55) = v141;
        v52 = 1;
        v120 = 0;
        v121 = 0;
      }

      else
      {
        v52 = 1;
      }
    }

    v143 = v52;
    realityio::BuilderDependencyDAG::updateBuilderGraphNodeIOData(a1, &v149, v144, v140);
    if (v143 == 1)
    {
      std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>>>::~__hash_table(v140);
    }

    if (v35)
    {
      if (v147)
      {
        std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>>>::~__hash_table(v144);
      }

      if (v39)
      {
        goto LABEL_104;
      }
    }

    else if (v147)
    {
      std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>>>::~__hash_table(v144);
    }

    realityio::BuilderWorkingSetPriorityQueue<std::shared_ptr<realityio::Builder>>::insert(v100, &v149);
LABEL_104:
    std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>>>::~__hash_table(&v118);
    std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>>>::~__hash_table(v115);
    if (*(&v149 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v149 + 1));
    }

    v6 = *v6;
  }

  v56 = *a2;
  v57 = a2[1];
  if (*a2 != v57)
  {
    v58 = a1 + 10;
    v105 = a2[1];
    do
    {
      v59 = v56[1];
      v115[0] = *v56;
      v115[1] = v59;
      if (v59)
      {
        atomic_fetch_add_explicit(&v59->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v60 = std::__hash_table<std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,std::__unordered_map_hasher<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,realityio::WeakBuilderPtrHash,realityio::WeakBuilderPtrEqual,true>,std::__unordered_map_equal<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,realityio::WeakBuilderPtrEqual,realityio::WeakBuilderPtrHash,true>,std::allocator<std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>>>::find<std::weak_ptr<realityio::Builder>>(a1, v115);
      if (v115[1])
      {
        std::__shared_weak_count::__release_weak(v115[1]);
      }

      if (!v60)
      {
        v61 = atomic_load((a1[16] + 28));
        if (v61 == 1)
        {
          v98 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(v115, "addBuildersAndResyncIODescriptorsCancel");
          realityio::ImportSession::CancelledException::CancelledException(v98, v115);
        }

        v62 = *v56;
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v137, (*v56 + 8));
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v138, &v62->__shared_owners_ + 1);
        (*(**v56 + 24))(&v139);
        v63 = *v56;
        v64 = v56[1];
        if (v64)
        {
          atomic_fetch_add_explicit(&v64->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v115, &v137);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v115 + 1, &v138);
        v65 = v139;
        v115[1] = v139;
        if ((v139 & 7) != 0)
        {
          add_explicit = atomic_fetch_add_explicit((v139 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed);
          v65 = v115[1];
          if ((add_explicit & 1) == 0)
          {
            v65 = v115[1] & 0xFFFFFFFFFFFFFFF8;
            v115[1] = (v115[1] & 0xFFFFFFFFFFFFFFF8);
          }
        }

        *&v116 = v63;
        *(&v116 + 1) = v64;
        v67 = bswap64(0x9E3779B97F4A7C55 * (HIDWORD(v115[0]) + ((HIDWORD(v115[0]) + LODWORD(v115[0]) + (HIDWORD(v115[0]) + LODWORD(v115[0])) * (HIDWORD(v115[0]) + LODWORD(v115[0]))) >> 1)));
        v68 = (bswap64(0x9E3779B97F4A7C55 * (v65 & 0xFFFFFFFFFFFFFFF8)) - 0x61C8864680B583ABLL + (v67 << 6) + (v67 >> 2) - 62) ^ v67;
        v69 = v106[11];
        if (v69)
        {
          v70 = vcnt_s8(v69);
          v70.i16[0] = vaddlv_u8(v70);
          if (v70.u32[0] > 1uLL)
          {
            v71 = v68;
            if (v68 >= *&v69)
            {
              v71 = v68 % *&v69;
            }
          }

          else
          {
            v71 = v68 & (*&v69 - 1);
          }

          v72 = *(*v58 + 8 * v71);
          if (v72)
          {
            for (i = *v72; i; i = *i)
            {
              v74 = i[1];
              if (v74 == v68)
              {
                if (i[2] == v115[0] && (i[3] ^ v65) < 8)
                {
                  if (v64)
                  {
                    std::__shared_weak_count::__release_weak(v64);
                  }

                  if ((v115[1] & 7) != 0)
                  {
                    atomic_fetch_add_explicit((v115[1] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                  }

                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v115);
                  v76 = v106[15];
                  v126 = v76;
                  if (v76)
                  {
                    RERetain();
                    v76 = v126;
                  }

                  memset(v128, 0, sizeof(v128));
                  v127 = 0u;
                  memset(v130, 0, sizeof(v130));
                  v129 = 1065353216;
                  v131 = 1065353216;
                  memset(v132, 0, sizeof(v132));
                  memset(v134, 0, sizeof(v134));
                  v133 = 1065353216;
                  v135 = 1065353216;
                  v136 = v76;
                  if (v76)
                  {
                    RERetain();
                  }

                  realityio::WrappedRERef<REEngine *>::~WrappedRERef(&v126);
                  v78 = *v56;
                  v77 = v56[1];
                  if (v77)
                  {
                    atomic_fetch_add_explicit((v77 + 8), 1uLL, memory_order_relaxed);
                  }

                  v79 = *(&v127 + 1);
                  *&v127 = v78;
                  *(&v127 + 1) = v77;
                  if (v79)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v79);
                  }

                  v81 = *v56;
                  v80 = v56[1];
                  if (v80)
                  {
                    atomic_fetch_add_explicit(&v80->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                  }

                  v115[0] = v81;
                  v115[1] = v80;
                  realityio::BuilderDependencyDAG::BuilderGraphNode::BuilderGraphNode(&v116, &v127);
                  v82 = realityio::WeakBuilderPtrHash::operator()(v106, v115);
                  v83 = v82;
                  v84 = v106[1];
                  if (!*&v84)
                  {
                    goto LABEL_170;
                  }

                  v85 = vcnt_s8(v84);
                  v85.i16[0] = vaddlv_u8(v85);
                  v86 = v85.u32[0];
                  if (v85.u32[0] > 1uLL)
                  {
                    v87 = v82;
                    if (v82 >= *&v84)
                    {
                      v87 = v82 % *&v84;
                    }
                  }

                  else
                  {
                    v87 = (*&v84 - 1) & v82;
                  }

                  v88 = *(*v106 + 8 * v87);
                  if (!v88 || (v89 = *v88) == 0)
                  {
LABEL_170:
                    operator new();
                  }

                  while (1)
                  {
                    v90 = v89[1];
                    if (v90 == v83)
                    {
                      if (realityio::WeakBuilderPtrEqual::operator()(v106, v89 + 2, v115))
                      {
                        realityio::WrappedRERef<REEngine *>::~WrappedRERef(&v125);
                        std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>>>::~__hash_table(&v124);
                        std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>>>::~__hash_table(&v123);
                        std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>>>::~__hash_table(v122);
                        std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>>>::~__hash_table(&v117);
                        if (*(&v116 + 1))
                        {
                          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v116 + 1));
                        }

                        a1 = v106;
                        if (v115[1])
                        {
                          std::__shared_weak_count::__release_weak(v115[1]);
                        }

                        realityio::BuilderDependencyDAG::addBuildersAndResyncIODescriptors(realityio::BuilderWorkingSetPriorityQueue<std::shared_ptr<realityio::Builder>> const&,realityio::LiveSceneUpdate const&,realityio::BuilderWorkingSetPriorityQueue<std::shared_ptr<realityio::Builder>>&)::$_0::operator()(v115, &v148, v56);
                        v91 = v115[0];
                        v92 = v115[1];
                        v115[0] = 0;
                        v115[1] = 0;
                        v111[0] = v91;
                        v111[1] = v92;
                        v112 = v116;
                        v113 = v117;
                        if (*(&v116 + 1))
                        {
                          v93 = *(v116 + 8);
                          if ((v92 & (v92 - 1)) != 0)
                          {
                            if (v93 >= v92)
                            {
                              v93 %= v92;
                            }
                          }

                          else
                          {
                            v93 &= v92 - 1;
                          }

                          *(&v91->__vftable + v93) = &v112;
                          v116 = 0uLL;
                        }

                        v114 = 1;
                        v94 = v118;
                        v95 = v119;
                        v118 = 0;
                        v119 = 0;
                        v107[0] = v94;
                        v107[1] = v95;
                        v108[0] = v120;
                        v108[1] = v121;
                        v109 = v122[0];
                        if (v121)
                        {
                          v96 = *(v120 + 8);
                          if ((v95 & (v95 - 1)) != 0)
                          {
                            if (v96 >= v95)
                            {
                              v96 %= v95;
                            }
                          }

                          else
                          {
                            v96 &= v95 - 1;
                          }

                          *(v94 + 8 * v96) = v108;
                          v120 = 0;
                          v121 = 0;
                        }

                        v110 = 1;
                        realityio::BuilderDependencyDAG::updateBuilderGraphNodeIOData(v106, v56, v111, v107);
                        if (v110 == 1)
                        {
                          std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>>>::~__hash_table(v107);
                        }

                        if (v114 == 1)
                        {
                          std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>>>::~__hash_table(v111);
                        }

                        std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>>>::~__hash_table(&v118);
                        std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>>>::~__hash_table(v115);
                        realityio::WrappedRERef<REEngine *>::~WrappedRERef(&v136);
                        std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>>>::~__hash_table(v134);
                        std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>>>::~__hash_table(v132);
                        std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>>>::~__hash_table(v130);
                        std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>>>::~__hash_table(v128);
                        if (*(&v127 + 1))
                        {
                          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v127 + 1));
                        }

                        v57 = v105;
                        if ((v139 & 7) != 0)
                        {
                          atomic_fetch_add_explicit((v139 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                        }

                        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v137);
                        goto LABEL_196;
                      }
                    }

                    else
                    {
                      if (v86 > 1)
                      {
                        if (v90 >= *&v84)
                        {
                          v90 %= *&v84;
                        }
                      }

                      else
                      {
                        v90 &= *&v84 - 1;
                      }

                      if (v90 != v87)
                      {
                        goto LABEL_170;
                      }
                    }

                    v89 = *v89;
                    if (!v89)
                    {
                      goto LABEL_170;
                    }
                  }
                }
              }

              else
              {
                if (v70.u32[0] > 1uLL)
                {
                  if (v74 >= *&v69)
                  {
                    v74 %= *&v69;
                  }
                }

                else
                {
                  v74 &= *&v69 - 1;
                }

                if (v74 != v71)
                {
                  break;
                }
              }
            }
          }
        }

        operator new();
      }

LABEL_196:
      v56 += 2;
    }

    while (v56 != v57);
  }
}

void sub_2475CD574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, std::__shared_weak_count *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57)
{
  a57 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::weak_ptr<realityio::Builder>>,void *>>>::operator()[abi:ne200100](v58 + 8, v57);
  std::pair<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery const,std::weak_ptr<realityio::Builder>>::~pair(&__p);
  realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery::~BuilderAtPrimPathQuery((v59 - 232));
  _Unwind_Resume(a1);
}

void realityio::BuilderDependencyDAG::addBuildersAndResyncIODescriptors(realityio::BuilderWorkingSetPriorityQueue<std::shared_ptr<realityio::Builder>> const&,realityio::LiveSceneUpdate const&,realityio::BuilderWorkingSetPriorityQueue<std::shared_ptr<realityio::Builder>>&)::$_0::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(**a3 + 40))(&v37);
  memset(v35, 0, sizeof(v35));
  v36 = 1065353216;
  v4 = *(v37 + 16);
  if (v4)
  {
    do
    {
      v24 = v4;
      v5 = v4[3];
      if (v5 != v4[4])
      {
        *&v31.__r_.__value_.__r.__words[1] = 0u;
        v32 = 0u;
        v33 = 1065353216;
        v34 = 0;
        v6 = *v5;
        LODWORD(v31.__r_.__value_.__l.__data_) = *(*v5 + 40);
        pxrInternal__aapl__pxrReserved__::TfToken::operator=(&v34, (v6 + 32));
        v7 = *v5;
        v8 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*a2 + 8));
        (*(*v7 + 16))(v28, v7, v8, *a3 + 8, *a2 + 16, *a2 + 184);
        v33 = v29[0];
        v9 = *&v28[16];
        v10 = v31.__r_.__value_.__r.__words[2];
        if (v31.__r_.__value_.__r.__words[2])
        {
          v11 = 0;
          do
          {
            *(v31.__r_.__value_.__l.__size_ + 8 * v11++) = 0;
          }

          while (v10 != v11);
          v12 = v32;
          v32 = 0uLL;
          if (v12)
          {
            v13 = v9 == 0;
          }

          else
          {
            v13 = 1;
          }

          if (v13)
          {
            v14 = v12;
          }

          else
          {
            do
            {
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=((v12 + 2), v9 + 4);
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v12 + 20, v9 + 5);
              v14 = *v12;
              std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::__node_insert_multi(&v31.__r_.__value_.__l.__size_, v12);
              v9 = *v9;
              if (v14)
              {
                v15 = v9 == 0;
              }

              else
              {
                v15 = 1;
              }

              v12 = v14;
            }

            while (!v15);
          }

          std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::__deallocate_node(&v31.__r_.__value_.__l.__size_, v14);
        }

        if (v9)
        {
          operator new();
        }

        std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::~__hash_table(v28);
        v16 = *v5;
        if (*(*v5 + 31) < 0)
        {
          std::string::__init_copy_ctor_external(v28, *(v16 + 8), *(v16 + 16));
        }

        else
        {
          v17 = *(v16 + 8);
          *&v28[16] = *(v16 + 24);
          *v28 = v17;
        }

        *&v28[24] = v31.__r_.__value_.__l.__data_;
        std::unordered_set<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::unordered_set(v29, &v31.__r_.__value_.__l.__size_);
        v30 = v34;
        v34 = 0;
        operator new();
      }

      v4 = *v4;
    }

    while (*v24);
  }

  (*(**a3 + 48))(&v39);
  memset(v28, 0, sizeof(v28));
  v29[0] = 1065353216;
  v18 = *(v39 + 56);
  if (v18)
  {
    v27 = 0;
    pxrInternal__aapl__pxrReserved__::TfToken::operator=(&v27, (*(v18 + 24) + 24));
    v19 = *(v18 + 24);
    v20 = *(v19 + 8);
    v26 = v20;
    if (*(v19 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v31, *v19, *(v19 + 1));
      v20 = v26;
    }

    else
    {
      v21 = *v19;
      v31.__r_.__value_.__r.__words[2] = *(v19 + 2);
      *&v31.__r_.__value_.__l.__data_ = v21;
    }

    LODWORD(v32) = v20;
    *(&v32 + 1) = v27;
    v27 = 0;
    operator new();
  }

  v22 = std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>>>::__hash_table(a1, v35);
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>>>::__hash_table(v22 + 40, v28);
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>>>::~__hash_table(v28);
  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>>>::~__hash_table(v35);
  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }
}

void sub_2475CE454(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>>>::~__hash_table(v1 - 176);
  v3 = *(v1 - 120);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(a1);
}

void sub_2475CE45C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34)
{
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>,void *>>>::operator()[abi:ne200100](1, v34);
  if ((a34 & 7) != 0)
  {
    atomic_fetch_add_explicit((a34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a32 < 0)
  {
    operator delete(__p);
  }

  if ((a16 & 7) != 0)
  {
    atomic_fetch_add_explicit((a16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>>>::~__hash_table(&a17);
  v37 = *(v35 - 104);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>>>::~__hash_table(v35 - 176);
  v38 = *(v35 - 120);
  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }

  _Unwind_Resume(a1);
}

void sub_2475CE4E8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  std::unique_ptr<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,void *>>>>::~unique_ptr[abi:ne200100](v37 - 112);
  std::pair<std::string,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>::~pair(&__p);
  if ((a36 & 7) != 0)
  {
    atomic_fetch_add_explicit((a36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::~__hash_table(v36);
  JUMPOUT(0x2475CE5B8);
}

void sub_2475CE554(void *a1)
{
  __cxa_begin_catch(a1);
  std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::__deallocate_node(v1, v2);
  __cxa_rethrow();
}

void sub_2475CE56C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __cxa_end_catch();
  std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::~__hash_table(va);
  JUMPOUT(0x2475CE598);
}

void realityio::ImportSession::CancelledException::~CancelledException(std::exception *this)
{
  this->__vftable = &unk_285952540;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);
}

{
  this->__vftable = &unk_285952540;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);

  JUMPOUT(0x24C1A91B0);
}

std::chrono::steady_clock::time_point realityio::BuilderDependencyDAG::updateBuilderGraphNodeIOData(void *a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  std::chrono::steady_clock::now();
  if (*(a3 + 40) == 1)
  {
    realityio::BuilderDependencyDAG::removeInputDataForGraphNode(a1, a2);
  }

  if (*(a4 + 40) == 1)
  {
    realityio::BuilderDependencyDAG::removeOutputDataForGraphNode(a1, a2);
  }

  v8 = a2[1];
  v68 = *a2;
  v69 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = std::__hash_table<std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,std::__unordered_map_hasher<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,realityio::WeakBuilderPtrHash,realityio::WeakBuilderPtrEqual,true>,std::__unordered_map_equal<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,realityio::WeakBuilderPtrEqual,realityio::WeakBuilderPtrHash,true>,std::allocator<std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>>>::find<std::weak_ptr<realityio::Builder>>(a1, &v68);
  v64 = a4;
  if (!v9)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  if (v69)
  {
    std::__shared_weak_count::__release_weak(v69);
  }

  v63 = a3;
  if (*(a3 + 40) == 1)
  {
    if (v9[9])
    {
      std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>>>::__deallocate_node((v9 + 6), v9[8]);
      v9[8] = 0;
      v10 = v9[7];
      if (v10)
      {
        for (i = 0; i != v10; ++i)
        {
          *(v9[6] + 8 * i) = 0;
        }
      }

      v9[9] = 0;
    }

    v12 = *a3;
    *a3 = 0;
    v13 = v9[6];
    v9[6] = v12;
    if (v13)
    {
      operator delete(v13);
    }

    v14 = a3[2];
    v15 = a3[1];
    v9[8] = v14;
    v16 = v9 + 8;
    v9[7] = v15;
    a3[1] = 0;
    v17 = a3[3];
    v9[9] = v17;
    *(v9 + 20) = *(a3 + 8);
    if (v17)
    {
      v18 = v14[1];
      v19 = v9[7];
      if ((v19 & (v19 - 1)) != 0)
      {
        if (v18 >= v19)
        {
          v18 %= v19;
        }
      }

      else
      {
        v18 &= v19 - 1;
      }

      *(v9[6] + 8 * v18) = v16;
      a3[2] = 0;
      a3[3] = 0;
      v14 = *v16;
    }

    for (; v14; v14 = *v14)
    {
      v20 = v14[6];
      if (v20)
      {
        v72 = 1;
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v73, (v20 + 16));
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v74, (v20 + 20));
        v21 = v14[9];
        v75 = v21;
        if ((v21 & 7) != 0 && (atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v75 &= 0xFFFFFFFFFFFFFFF8;
        }

        v22 = a2[1];
        v65 = *a2;
        v66 = v22;
        if (v22)
        {
          atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
        }

        v23 = v14[2];
        v67 = v23;
        if ((v23 & 7) != 0)
        {
          v24 = (v23 & 0xFFFFFFFFFFFFFFF8);
          if ((atomic_fetch_add_explicit(v24, 2u, memory_order_relaxed) & 1) == 0)
          {
            v67 = v24;
          }
        }

        std::pair<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::shared_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>::pair[abi:ne200100]<realityio::BuilderDependencyDAG::SocketQuery&,std::pair<std::shared_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>,0>(&v68, &v72, &v65);
        std::__hash_table<std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,std::__unordered_map_hasher<realityio::BuilderDependencyDAG::SocketQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,realityio::BuilderDependencyDAG::SocketQuery::Hash,std::equal_to<realityio::BuilderDependencyDAG::SocketQuery>,true>,std::__unordered_map_equal<realityio::BuilderDependencyDAG::SocketQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,std::equal_to<realityio::BuilderDependencyDAG::SocketQuery>,realityio::BuilderDependencyDAG::SocketQuery::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>>>::__emplace_multi<std::pair<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::shared_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>>();
      }
    }
  }

  if (*(v64 + 40) == 1)
  {
    if (v9[14])
    {
      std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>>>::__deallocate_node(v9 + 88, v9[13]);
      v9[13] = 0;
      v25 = v9[12];
      if (v25)
      {
        for (j = 0; j != v25; ++j)
        {
          *(v9[11] + 8 * j) = 0;
        }
      }

      v9[14] = 0;
    }

    v27 = *v64;
    *v64 = 0;
    v28 = v9[11];
    v9[11] = v27;
    if (v28)
    {
      operator delete(v28);
    }

    v29 = v64[2];
    v30 = v64[1];
    v9[13] = v29;
    v31 = v9 + 13;
    v9[12] = v30;
    v64[1] = 0;
    v32 = v64[3];
    v9[14] = v32;
    *(v9 + 30) = *(v64 + 8);
    if (v32)
    {
      v33 = v29[1];
      v34 = v9[12];
      if ((v34 & (v34 - 1)) != 0)
      {
        if (v33 >= v34)
        {
          v33 %= v34;
        }
      }

      else
      {
        v33 &= v34 - 1;
      }

      *(v9[11] + 8 * v33) = v31;
      v64[2] = 0;
      v64[3] = 0;
      v29 = *v31;
    }

    if (v29)
    {
      v72 = 0;
      v35 = v9[4];
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v73, (v35 + 8));
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v74, (v35 + 12));
      v36 = v29[4];
      v75 = v36;
      if ((v36 & 7) != 0 && (atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v75 &= 0xFFFFFFFFFFFFFFF8;
      }

      v37 = a2[1];
      v65 = *a2;
      v66 = v37;
      if (v37)
      {
        atomic_fetch_add_explicit((v37 + 8), 1uLL, memory_order_relaxed);
      }

      v38 = v29[2];
      v67 = v38;
      if ((v38 & 7) != 0)
      {
        v39 = (v38 & 0xFFFFFFFFFFFFFFF8);
        if ((atomic_fetch_add_explicit(v39, 2u, memory_order_relaxed) & 1) == 0)
        {
          v67 = v39;
        }
      }

      std::pair<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::shared_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>::pair[abi:ne200100]<realityio::BuilderDependencyDAG::SocketQuery&,std::pair<std::shared_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>,0>(&v68, &v72, &v65);
      std::__hash_table<std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,std::__unordered_map_hasher<realityio::BuilderDependencyDAG::SocketQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,realityio::BuilderDependencyDAG::SocketQuery::Hash,std::equal_to<realityio::BuilderDependencyDAG::SocketQuery>,true>,std::__unordered_map_equal<realityio::BuilderDependencyDAG::SocketQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,std::equal_to<realityio::BuilderDependencyDAG::SocketQuery>,realityio::BuilderDependencyDAG::SocketQuery::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>>>::__emplace_multi<std::pair<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::shared_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>>();
    }
  }

  if (*(v63 + 40) == 1)
  {
    for (k = v9[8]; k; k = *k)
    {
      for (m = k[6]; m; m = *m)
      {
        v72 = 0;
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v73, m + 4);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v74, m + 5);
        v42 = k[9];
        v75 = v42;
        if ((v42 & 7) != 0 && (atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v75 &= 0xFFFFFFFFFFFFFFF8;
        }

        v43 = std::__hash_table<std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,std::__unordered_map_hasher<realityio::BuilderDependencyDAG::SocketQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,realityio::BuilderDependencyDAG::SocketQuery::Hash,std::equal_to<realityio::BuilderDependencyDAG::SocketQuery>,true>,std::__unordered_map_equal<realityio::BuilderDependencyDAG::SocketQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,std::equal_to<realityio::BuilderDependencyDAG::SocketQuery>,realityio::BuilderDependencyDAG::SocketQuery::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>>>::__equal_range_multi<realityio::BuilderDependencyDAG::SocketQuery>(a1 + 5, &v72);
        if (v43 != v44)
        {
          v45 = v43;
          if (std::__hash_table<std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,std::__unordered_map_hasher<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,realityio::WeakBuilderPtrHash,realityio::WeakBuilderPtrEqual,true>,std::__unordered_map_equal<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,realityio::WeakBuilderPtrEqual,realityio::WeakBuilderPtrHash,true>,std::allocator<std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>>>::find<std::weak_ptr<realityio::Builder>>(a1, v43 + 5))
          {
            v47 = *a2;
            v46 = a2[1];
            if (v46)
            {
              atomic_fetch_add_explicit(&v46->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            }

            v48 = k[2];
            if ((v48 & 7) != 0 && (atomic_fetch_add_explicit((v48 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
            {
              v48 &= 0xFFFFFFFFFFFFFFF8;
            }

            v49 = v45[7];
            v68 = v49;
            if ((v49 & 7) != 0)
            {
              v50 = (v49 & 0xFFFFFFFFFFFFFFF8);
              if ((atomic_fetch_add_explicit(v50, 2u, memory_order_relaxed) & 1) == 0)
              {
                v68 = v50;
              }
            }

            v69 = v47;
            v70 = v46;
            v71 = v48;
            std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>>>::__emplace_multi<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,realityio::BuilderDependencyDAG::DependentBuilder>>();
          }

          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        if ((v75 & 7) != 0)
        {
          atomic_fetch_add_explicit((v75 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v73);
      }
    }
  }

  if (*(v64 + 40) == 1)
  {
    for (n = v9[13]; n; n = *n)
    {
      v72 = 1;
      v52 = v9[4];
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v73, (v52 + 8));
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v74, (v52 + 12));
      v53 = n[4];
      v75 = v53;
      if ((v53 & 7) != 0 && (atomic_fetch_add_explicit((v53 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v75 &= 0xFFFFFFFFFFFFFFF8;
      }

      v54 = std::__hash_table<std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,std::__unordered_map_hasher<realityio::BuilderDependencyDAG::SocketQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,realityio::BuilderDependencyDAG::SocketQuery::Hash,std::equal_to<realityio::BuilderDependencyDAG::SocketQuery>,true>,std::__unordered_map_equal<realityio::BuilderDependencyDAG::SocketQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,std::equal_to<realityio::BuilderDependencyDAG::SocketQuery>,realityio::BuilderDependencyDAG::SocketQuery::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>>>::__equal_range_multi<realityio::BuilderDependencyDAG::SocketQuery>(a1 + 5, &v72);
      if (v54 != v55)
      {
        v56 = v54;
        if (std::__hash_table<std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,std::__unordered_map_hasher<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,realityio::WeakBuilderPtrHash,realityio::WeakBuilderPtrEqual,true>,std::__unordered_map_equal<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,realityio::WeakBuilderPtrEqual,realityio::WeakBuilderPtrHash,true>,std::allocator<std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>>>::find<std::weak_ptr<realityio::Builder>>(a1, v54 + 5))
        {
          v58 = *a2;
          v57 = a2[1];
          if (v57)
          {
            atomic_fetch_add_explicit(&v57->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          v59 = n[2];
          if ((v59 & 7) != 0 && (atomic_fetch_add_explicit((v59 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            v59 &= 0xFFFFFFFFFFFFFFF8;
          }

          v60 = v56[7];
          v68 = v60;
          if ((v60 & 7) != 0)
          {
            v61 = (v60 & 0xFFFFFFFFFFFFFFF8);
            if ((atomic_fetch_add_explicit(v61, 2u, memory_order_relaxed) & 1) == 0)
            {
              v68 = v61;
            }
          }

          v69 = v58;
          v70 = v57;
          v71 = v59;
          std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ProvidingBuilder>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ProvidingBuilder>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ProvidingBuilder>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ProvidingBuilder>>>::__emplace_multi<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,realityio::BuilderDependencyDAG::ProvidingBuilder>>();
        }

        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      if ((v75 & 7) != 0)
      {
        atomic_fetch_add_explicit((v75 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v73);
    }
  }

  std::chrono::steady_clock::now();
  return std::chrono::steady_clock::now();
}

void sub_2475CEF74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  _Unwind_Resume(exception_object);
}

void realityio::BuilderDependencyDAG::removeInputDataForGraphNode(void *a1, unint64_t *a2)
{
  v4 = a2[1];
  v46 = *a2;
  v47 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = std::__hash_table<std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,std::__unordered_map_hasher<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,realityio::WeakBuilderPtrHash,realityio::WeakBuilderPtrEqual,true>,std::__unordered_map_equal<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,realityio::WeakBuilderPtrEqual,realityio::WeakBuilderPtrHash,true>,std::allocator<std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>>>::find<std::weak_ptr<realityio::Builder>>(a1, &v46);
  if (!v5)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  if (v47)
  {
    std::__shared_weak_count::__release_weak(v47);
  }

  v45 = v5;
  v6 = v5[8];
  if (v6)
  {
    while (1)
    {
      v7 = v6[6];
      if (v7)
      {
        break;
      }

LABEL_31:
      v6 = *v6;
      if (!v6)
      {
        goto LABEL_32;
      }
    }

    while (1)
    {
      LODWORD(v46) = 1;
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v46 + 1, v7 + 4);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v47, v7 + 5);
      v8 = v6[9];
      v48 = v8;
      if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v48 &= 0xFFFFFFFFFFFFFFF8;
      }

      v9 = std::__hash_table<std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,std::__unordered_map_hasher<realityio::BuilderDependencyDAG::SocketQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,realityio::BuilderDependencyDAG::SocketQuery::Hash,std::equal_to<realityio::BuilderDependencyDAG::SocketQuery>,true>,std::__unordered_map_equal<realityio::BuilderDependencyDAG::SocketQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,std::equal_to<realityio::BuilderDependencyDAG::SocketQuery>,realityio::BuilderDependencyDAG::SocketQuery::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>>>::__equal_range_multi<realityio::BuilderDependencyDAG::SocketQuery>(a1 + 5, &v46);
      if (v10 != v9)
      {
        break;
      }

LABEL_12:
      if ((v48 & 7) != 0)
      {
        atomic_fetch_add_explicit((v48 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v46 + 4);
      v7 = *v7;
      if (!v7)
      {
        goto LABEL_31;
      }
    }

    v11 = v9;
    v12 = v10;
    while (1)
    {
      v13 = v11[6];
      if (v13 && (v13 = std::__shared_weak_count::lock(v13)) != 0)
      {
        v14 = v11[5];
      }

      else
      {
        v14 = 0;
      }

      if (v14 == *a2)
      {
        break;
      }

      v15 = 0;
      if (v13)
      {
        goto LABEL_23;
      }

LABEL_24:
      if (v15)
      {
        v11 = std::__hash_table<std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,std::__unordered_map_hasher<realityio::BuilderDependencyDAG::SocketQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,realityio::BuilderDependencyDAG::SocketQuery::Hash,std::equal_to<realityio::BuilderDependencyDAG::SocketQuery>,true>,std::__unordered_map_equal<realityio::BuilderDependencyDAG::SocketQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,std::equal_to<realityio::BuilderDependencyDAG::SocketQuery>,realityio::BuilderDependencyDAG::SocketQuery::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>>>::erase(a1 + 5, v11);
      }

      else
      {
        v11 = *v11;
      }

      if (v11 == v12)
      {
        goto LABEL_12;
      }
    }

    v15 = (v6[2] ^ v11[7]) < 8;
    if (!v13)
    {
      goto LABEL_24;
    }

LABEL_23:
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    goto LABEL_24;
  }

LABEL_32:
  for (i = v45[18]; i; i = *i)
  {
    v17 = std::__hash_table<std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,std::__unordered_map_hasher<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,realityio::WeakBuilderPtrHash,realityio::WeakBuilderPtrEqual,true>,std::__unordered_map_equal<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,realityio::WeakBuilderPtrEqual,realityio::WeakBuilderPtrHash,true>,std::allocator<std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>>>::find<std::weak_ptr<realityio::Builder>>(a1, i + 3);
    if (!v17)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    v18 = v17;
    shared_owners = v17[7].__shared_owners_;
    if (!*&shared_owners)
    {
      continue;
    }

    v20 = i[5];
    v21 = bswap64(0x9E3779B97F4A7C55 * (v20 & 0xFFFFFFFFFFFFFFF8));
    v22 = vcnt_s8(shared_owners);
    v22.i16[0] = vaddlv_u8(v22);
    if (v22.u32[0] > 1uLL)
    {
      v23 = v21;
      if (v21 >= *&shared_owners)
      {
        v23 = v21 % *&shared_owners;
      }
    }

    else
    {
      v23 = v21 & (*&shared_owners - 1);
    }

    v24 = &v17[7].__vftable;
    v25 = *(&v17[7].~__shared_weak_count + v23);
    if (!v25)
    {
      continue;
    }

    v26 = *v25;
    if (!*v25)
    {
      continue;
    }

    while (1)
    {
      v27 = v26[1];
      if (v27 == v21)
      {
        break;
      }

      if (v22.u32[0] > 1uLL)
      {
        if (v27 >= *&shared_owners)
        {
          v27 %= *&shared_owners;
        }
      }

      else
      {
        v27 &= *&shared_owners - 1;
      }

      if (v27 != v23)
      {
        goto LABEL_94;
      }

LABEL_49:
      v26 = *v26;
      if (!v26)
      {
        goto LABEL_94;
      }
    }

    if ((v26[2] ^ v20) > 7)
    {
      goto LABEL_49;
    }

    v28 = v26;
    do
    {
      v28 = *v28;
    }

    while (v28 && (v28[2] ^ v20) < 8);
    if (v28 != v26)
    {
      p_shared_weak_owners = &v17[7].__shared_weak_owners_;
      while (1)
      {
        v30 = v26[4];
        if (v30 && (v30 = std::__shared_weak_count::lock(v30)) != 0)
        {
          v31 = v26[3];
        }

        else
        {
          v31 = 0;
        }

        if (v31 != *a2)
        {
          break;
        }

        v32 = (i[2] ^ v26[5]) < 8;
        if (v30)
        {
          goto LABEL_61;
        }

LABEL_62:
        if (v32)
        {
          v33 = v18[7].__shared_owners_;
          v34 = v26[1];
          v35 = vcnt_s8(v33);
          v35.i16[0] = vaddlv_u8(v35);
          if (v35.u32[0] > 1uLL)
          {
            if (v34 >= *&v33)
            {
              v34 %= *&v33;
            }
          }

          else
          {
            v34 &= *&v33 - 1;
          }

          v36 = *v26;
          v37 = *(*v24 + 8 * v34);
          do
          {
            v38 = v37;
            v37 = *v37;
          }

          while (v37 != v26);
          if (v38 == p_shared_weak_owners)
          {
            goto LABEL_105;
          }

          v39 = v38[1];
          if (v35.u32[0] > 1uLL)
          {
            if (v39 >= *&v33)
            {
              v39 %= *&v33;
            }
          }

          else
          {
            v39 &= *&v33 - 1;
          }

          v40 = *v26;
          if (v39 == v34)
          {
LABEL_85:
            if (v40)
            {
              goto LABEL_86;
            }
          }

          else
          {
LABEL_105:
            if (!v36)
            {
              goto LABEL_84;
            }

            v41 = v36[1];
            if (v35.u32[0] > 1uLL)
            {
              if (v41 >= *&v33)
              {
                v41 %= *&v33;
              }
            }

            else
            {
              v41 &= *&v33 - 1;
            }

            v40 = *v26;
            if (v41 != v34)
            {
LABEL_84:
              *(*v24 + 8 * v34) = 0;
              v40 = *v26;
              goto LABEL_85;
            }

LABEL_86:
            v42 = *(v40 + 8);
            if (v35.u32[0] > 1uLL)
            {
              if (v42 >= *&v33)
              {
                v42 %= *&v33;
              }
            }

            else
            {
              v42 &= *&v33 - 1;
            }

            if (v42 != v34)
            {
              *(*v24 + 8 * v42) = v38;
              v40 = *v26;
            }
          }

          *v38 = v40;
          *v26 = 0;
          --v18[8].__vftable;
          v46 = v26;
          v47 = v18 + 7;
          LOBYTE(v48) = 1;
          *(&v48 + 1) = 0;
          HIDWORD(v48) = 0;
          std::unique_ptr<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,void *>>>>::~unique_ptr[abi:ne200100](&v46);
          goto LABEL_93;
        }

        v36 = *v26;
LABEL_93:
        v26 = v36;
        if (v36 == v28)
        {
          goto LABEL_94;
        }
      }

      v32 = 0;
      if (!v30)
      {
        goto LABEL_62;
      }

LABEL_61:
      std::__shared_weak_count::__release_shared[abi:ne200100](v30);
      goto LABEL_62;
    }

LABEL_94:
    ;
  }

  if (v45[19])
  {
    std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>>>::__deallocate_node((v45 + 16), v45[18]);
    v45[18] = 0;
    v43 = v45[17];
    if (v43)
    {
      for (j = 0; j != v43; ++j)
      {
        *(v45[16] + 8 * j) = 0;
      }
    }

    v45[19] = 0;
  }
}

void sub_2475CF590(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_weak(a11);
  }

  _Unwind_Resume(exception_object);
}

void realityio::BuilderDependencyDAG::removeOutputDataForGraphNode(void *a1, unint64_t *a2)
{
  v4 = a2[1];
  v45 = *a2;
  v46 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = std::__hash_table<std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,std::__unordered_map_hasher<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,realityio::WeakBuilderPtrHash,realityio::WeakBuilderPtrEqual,true>,std::__unordered_map_equal<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,realityio::WeakBuilderPtrEqual,realityio::WeakBuilderPtrHash,true>,std::allocator<std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>>>::find<std::weak_ptr<realityio::Builder>>(a1, &v45);
  if (!v5)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  if (v46)
  {
    std::__shared_weak_count::__release_weak(v46);
  }

  v6 = v5[13];
  if (v6)
  {
    while (1)
    {
      LODWORD(v45) = 0;
      v7 = v5[4];
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v45 + 1, (v7 + 8));
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v46, (v7 + 12));
      v8 = v6[4];
      v47 = v8;
      if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v47 &= 0xFFFFFFFFFFFFFFF8;
      }

      v9 = std::__hash_table<std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,std::__unordered_map_hasher<realityio::BuilderDependencyDAG::SocketQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,realityio::BuilderDependencyDAG::SocketQuery::Hash,std::equal_to<realityio::BuilderDependencyDAG::SocketQuery>,true>,std::__unordered_map_equal<realityio::BuilderDependencyDAG::SocketQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,std::equal_to<realityio::BuilderDependencyDAG::SocketQuery>,realityio::BuilderDependencyDAG::SocketQuery::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>>>::__equal_range_multi<realityio::BuilderDependencyDAG::SocketQuery>(a1 + 5, &v45);
      if (v10 != v9)
      {
        break;
      }

LABEL_11:
      if ((v47 & 7) != 0)
      {
        atomic_fetch_add_explicit((v47 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v45 + 4);
      v6 = *v6;
      if (!v6)
      {
        goto LABEL_30;
      }
    }

    v11 = v9;
    v12 = v10;
    while (1)
    {
      v13 = v11[6];
      if (v13 && (v13 = std::__shared_weak_count::lock(v13)) != 0)
      {
        v14 = v11[5];
      }

      else
      {
        v14 = 0;
      }

      if (v14 == *a2)
      {
        break;
      }

      v15 = 0;
      if (v13)
      {
        goto LABEL_22;
      }

LABEL_23:
      if (v15)
      {
        v11 = std::__hash_table<std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,std::__unordered_map_hasher<realityio::BuilderDependencyDAG::SocketQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,realityio::BuilderDependencyDAG::SocketQuery::Hash,std::equal_to<realityio::BuilderDependencyDAG::SocketQuery>,true>,std::__unordered_map_equal<realityio::BuilderDependencyDAG::SocketQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,std::equal_to<realityio::BuilderDependencyDAG::SocketQuery>,realityio::BuilderDependencyDAG::SocketQuery::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>>>::erase(a1 + 5, v11);
      }

      else
      {
        v11 = *v11;
      }

      if (v11 == v12)
      {
        goto LABEL_11;
      }
    }

    v15 = (v6[2] ^ v11[7]) < 8;
    if (!v13)
    {
      goto LABEL_23;
    }

LABEL_22:
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    goto LABEL_23;
  }

LABEL_30:
  for (i = v5[23]; i; i = *i)
  {
    v17 = std::__hash_table<std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,std::__unordered_map_hasher<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,realityio::WeakBuilderPtrHash,realityio::WeakBuilderPtrEqual,true>,std::__unordered_map_equal<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,realityio::WeakBuilderPtrEqual,realityio::WeakBuilderPtrHash,true>,std::allocator<std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>>>::find<std::weak_ptr<realityio::Builder>>(a1, i + 3);
    if (!v17)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    v18 = v17;
    v19 = v17[17];
    if (!*&v19)
    {
      continue;
    }

    v20 = i[5];
    v21 = bswap64(0x9E3779B97F4A7C55 * (v20 & 0xFFFFFFFFFFFFFFF8));
    v22 = vcnt_s8(v19);
    v22.i16[0] = vaddlv_u8(v22);
    if (v22.u32[0] > 1uLL)
    {
      v23 = v21;
      if (v21 >= *&v19)
      {
        v23 = v21 % *&v19;
      }
    }

    else
    {
      v23 = v21 & (*&v19 - 1);
    }

    v24 = v17 + 16;
    v25 = *(v17[16] + 8 * v23);
    if (!v25)
    {
      continue;
    }

    v26 = *v25;
    if (!*v25)
    {
      continue;
    }

    while (1)
    {
      v27 = v26[1];
      if (v27 == v21)
      {
        break;
      }

      if (v22.u32[0] > 1uLL)
      {
        if (v27 >= *&v19)
        {
          v27 %= *&v19;
        }
      }

      else
      {
        v27 &= *&v19 - 1;
      }

      if (v27 != v23)
      {
        goto LABEL_92;
      }

LABEL_47:
      v26 = *v26;
      if (!v26)
      {
        goto LABEL_92;
      }
    }

    if ((v26[2] ^ v20) > 7)
    {
      goto LABEL_47;
    }

    v28 = v26;
    do
    {
      v28 = *v28;
    }

    while (v28 && (v28[2] ^ v20) < 8);
    if (v28 != v26)
    {
      v29 = v17 + 18;
      while (1)
      {
        v30 = v26[4];
        if (v30 && (v30 = std::__shared_weak_count::lock(v30)) != 0)
        {
          v31 = v26[3];
        }

        else
        {
          v31 = 0;
        }

        if (v31 != *a2)
        {
          break;
        }

        v32 = (i[2] ^ v26[5]) < 8uLL;
        if (v30)
        {
          goto LABEL_59;
        }

LABEL_60:
        if (v32)
        {
          v33 = v18[17];
          v34 = v26[1];
          v35 = vcnt_s8(v33);
          v35.i16[0] = vaddlv_u8(v35);
          if (v35.u32[0] > 1uLL)
          {
            if (v34 >= *&v33)
            {
              v34 %= *&v33;
            }
          }

          else
          {
            v34 &= *&v33 - 1;
          }

          v36 = *v26;
          v37 = *(*v24 + 8 * v34);
          do
          {
            v38 = v37;
            v37 = *v37;
          }

          while (v37 != v26);
          if (v38 == v29)
          {
            goto LABEL_103;
          }

          v39 = v38[1];
          if (v35.u32[0] > 1uLL)
          {
            if (v39 >= *&v33)
            {
              v39 %= *&v33;
            }
          }

          else
          {
            v39 &= *&v33 - 1;
          }

          v40 = *v26;
          if (v39 == v34)
          {
LABEL_83:
            if (v40)
            {
              goto LABEL_84;
            }
          }

          else
          {
LABEL_103:
            if (!v36)
            {
              goto LABEL_82;
            }

            v41 = v36[1];
            if (v35.u32[0] > 1uLL)
            {
              if (v41 >= *&v33)
              {
                v41 %= *&v33;
              }
            }

            else
            {
              v41 &= *&v33 - 1;
            }

            v40 = *v26;
            if (v41 != v34)
            {
LABEL_82:
              *(*v24 + 8 * v34) = 0;
              v40 = *v26;
              goto LABEL_83;
            }

LABEL_84:
            v42 = *(v40 + 8);
            if (v35.u32[0] > 1uLL)
            {
              if (v42 >= *&v33)
              {
                v42 %= *&v33;
              }
            }

            else
            {
              v42 &= *&v33 - 1;
            }

            if (v42 != v34)
            {
              *(*v24 + 8 * v42) = v38;
              v40 = *v26;
            }
          }

          *v38 = v40;
          *v26 = 0;
          --v18[19];
          v45 = v26;
          v46 = (v18 + 16);
          LOBYTE(v47) = 1;
          *(&v47 + 1) = 0;
          HIDWORD(v47) = 0;
          std::unique_ptr<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,void *>>>>::~unique_ptr[abi:ne200100](&v45);
          goto LABEL_91;
        }

        v36 = *v26;
LABEL_91:
        v26 = v36;
        if (v36 == v28)
        {
          goto LABEL_92;
        }
      }

      v32 = 0;
      if (!v30)
      {
        goto LABEL_60;
      }

LABEL_59:
      std::__shared_weak_count::__release_shared[abi:ne200100](v30);
      goto LABEL_60;
    }

LABEL_92:
    ;
  }

  if (v5[24])
  {
    std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>>>::__deallocate_node((v5 + 21), v5[23]);
    v5[23] = 0;
    v43 = v5[22];
    if (v43)
    {
      for (j = 0; j != v43; ++j)
      {
        *(v5[21] + 8 * j) = 0;
      }
    }

    v5[24] = 0;
  }
}

void sub_2475CFA74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_weak(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::shared_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>::pair[abi:ne200100]<realityio::BuilderDependencyDAG::SocketQuery&,std::pair<std::shared_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a1 + 4), (a2 + 4));
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a1 + 8), (a2 + 8));
  v6 = *(a2 + 16);
  *(a1 + 16) = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 16) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 24) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a1 + 40) = *(a3 + 16);
  *(a3 + 16) = 0;
  return a1;
}

void *std::pair<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::shared_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>::~pair(void *a1)
{
  v2 = a1[5];
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = a1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[2];
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1 + 4);
  return a1;
}

void *std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,realityio::BuilderDependencyDAG::DependentBuilder>::~pair(void *a1)
{
  v2 = a1[3];
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

void realityio::BuilderDependencyDAG::topologicalSort(realityio::BuilderDependencyDAG *a1, uint64_t *a2)
{
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::clear[abi:ne200100](a2);
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v38 = a1;
  realityio::BuilderDependencyDAG::findRoots(a1, &v44);
  v4 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v3);
  MEMORY[0x24C1A5DE0](v41, realityio::kEndOfUpdateBuilderIdentifier);
  realityio::BuilderDependencyDAG::getBuilderAtPrimPathWithBuilderIdentifier(a1, v4, v41, &v43);
  if ((v41[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((*&v41[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v43)
  {
    realityio::BuilderWorkingSetPriorityQueue<std::shared_ptr<realityio::Builder>>::erase(&v44, &v43);
  }

  memset(v41, 0, sizeof(v41));
  v42 = 1065353216;
  for (i = *(a1 + 2); i; i = *i)
  {
    v6 = i[19];
    v7 = i[3];
    if (v7)
    {
      v8 = std::__shared_weak_count::lock(v7);
      if (v8)
      {
        v9 = i[2];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
      v8 = 0;
    }

    v10 = 0x9DDFEA08EB382D69 * ((8 * (v9 & 0x1FFFFFFF) + 8) ^ HIDWORD(v9));
    v11 = 0x9DDFEA08EB382D69 * (HIDWORD(v9) ^ (v10 >> 47) ^ v10);
    v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
    if (!*(&v41[0] + 1))
    {
      goto LABEL_27;
    }

    v13 = vcnt_s8(*(v41 + 8));
    v13.i16[0] = vaddlv_u8(v13);
    if (v13.u32[0] > 1uLL)
    {
      v14 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      if (v12 >= *(&v41[0] + 1))
      {
        v14 = v12 % *(&v41[0] + 1);
      }
    }

    else
    {
      v14 = v12 & (*(&v41[0] + 1) - 1);
    }

    v15 = *(*&v41[0] + 8 * v14);
    if (!v15 || (v16 = *v15) == 0)
    {
LABEL_27:
      operator new();
    }

    while (1)
    {
      v17 = v16[1];
      if (v17 == v12)
      {
        break;
      }

      if (v13.u32[0] > 1uLL)
      {
        if (v17 >= *(&v41[0] + 1))
        {
          v17 %= *(&v41[0] + 1);
        }
      }

      else
      {
        v17 &= *(&v41[0] + 1) - 1;
      }

      if (v17 != v14)
      {
        goto LABEL_27;
      }

LABEL_26:
      v16 = *v16;
      if (!v16)
      {
        goto LABEL_27;
      }
    }

    if (v16[2] != v9)
    {
      goto LABEL_26;
    }

    *(v16 + 8) = v6;
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  v18 = v44;
  v19 = v45;
  if (v44 != v45)
  {
    while (1)
    {
      v20 = v18[1];
      *&v40 = *v18;
      *(&v40 + 1) = v20;
      if (v20)
      {
        atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
        v19 = v45;
      }

      std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,realityio::OrderedAndDeterministicBuilderGreaterThan,std::__wrap_iter<std::shared_ptr<realityio::Builder> *>>(v18, v19, &v39, (v19 - v18) >> 4);
      v21 = v45;
      v22 = *(v45 - 1);
      if (v22)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      }

      v45 = v21 - 2;
      std::vector<std::shared_ptr<RIO_MTLX::Element>>::push_back[abi:ne200100](a2, &v40);
      v39 = v40;
      if (*(&v40 + 1))
      {
        atomic_fetch_add_explicit((*(&v40 + 1) + 16), 1uLL, memory_order_relaxed);
      }

      v23 = std::__hash_table<std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,std::__unordered_map_hasher<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,realityio::WeakBuilderPtrHash,realityio::WeakBuilderPtrEqual,true>,std::__unordered_map_equal<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,realityio::WeakBuilderPtrEqual,realityio::WeakBuilderPtrHash,true>,std::allocator<std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>>>::find<std::weak_ptr<realityio::Builder>>(v38, &v39);
      if (!v23)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      if (*(&v39 + 1))
      {
        std::__shared_weak_count::__release_weak(*(&v39 + 1));
      }

      v24 = v23[23];
      if (v24)
      {
        break;
      }

LABEL_70:
      if (v44 == v45)
      {
        if (v43)
        {
          realityio::BuilderWorkingSetPriorityQueue<std::shared_ptr<realityio::Builder>>::insert(&v44, &v43);
          v36 = *(&v43 + 1);
          v43 = 0uLL;
          if (v36)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v36);
          }
        }
      }

      if (*(&v40 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v40 + 1));
      }

      v18 = v44;
      v19 = v45;
      if (v44 == v45)
      {
        goto LABEL_77;
      }
    }

LABEL_43:
    v39 = 0uLL;
    v25 = v24[4];
    if (v25)
    {
      *(&v39 + 1) = std::__shared_weak_count::lock(v25);
      if (*(&v39 + 1))
      {
        v26 = v24[3];
        *&v39 = v26;
      }

      else
      {
        v26 = v39;
      }
    }

    else
    {
      v26 = 0;
    }

    v27 = 0x9DDFEA08EB382D69 * ((8 * (v26 & 0x1FFFFFFF) + 8) ^ HIDWORD(v26));
    v28 = 0x9DDFEA08EB382D69 * (HIDWORD(v26) ^ (v27 >> 47) ^ v27);
    v29 = 0x9DDFEA08EB382D69 * (v28 ^ (v28 >> 47));
    if (!*(&v41[0] + 1))
    {
      goto LABEL_64;
    }

    v30 = vcnt_s8(*(v41 + 8));
    v30.i16[0] = vaddlv_u8(v30);
    if (v30.u32[0] > 1uLL)
    {
      v31 = 0x9DDFEA08EB382D69 * (v28 ^ (v28 >> 47));
      if (v29 >= *(&v41[0] + 1))
      {
        v31 = v29 % *(&v41[0] + 1);
      }
    }

    else
    {
      v31 = v29 & (*(&v41[0] + 1) - 1);
    }

    v32 = *(*&v41[0] + 8 * v31);
    if (!v32 || (v33 = *v32) == 0)
    {
LABEL_64:
      operator new();
    }

    while (1)
    {
      v34 = v33[1];
      if (v34 == v29)
      {
        if (v33[2] == v26)
        {
          v35 = *(v33 + 8) - 1;
          *(v33 + 8) = v35;
          if (!v35)
          {
            realityio::BuilderWorkingSetPriorityQueue<std::shared_ptr<realityio::Builder>>::insert(&v44, &v39);
          }

          if (*(&v39 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v39 + 1));
          }

          v24 = *v24;
          if (!v24)
          {
            goto LABEL_70;
          }

          goto LABEL_43;
        }
      }

      else
      {
        if (v30.u32[0] > 1uLL)
        {
          if (v34 >= *(&v41[0] + 1))
          {
            v34 %= *(&v41[0] + 1);
          }
        }

        else
        {
          v34 &= *(&v41[0] + 1) - 1;
        }

        if (v34 != v31)
        {
          goto LABEL_64;
        }
      }

      v33 = *v33;
      if (!v33)
      {
        goto LABEL_64;
      }
    }
  }

LABEL_77:
  std::__hash_table<std::__hash_value_type<std::shared_ptr<realityio::Builder>,unsigned int>,std::__unordered_map_hasher<std::shared_ptr<realityio::Builder>,std::__hash_value_type<std::shared_ptr<realityio::Builder>,unsigned int>,std::hash<std::shared_ptr<realityio::Builder>>,std::equal_to<std::shared_ptr<realityio::Builder>>,true>,std::__unordered_map_equal<std::shared_ptr<realityio::Builder>,std::__hash_value_type<std::shared_ptr<realityio::Builder>,unsigned int>,std::equal_to<std::shared_ptr<realityio::Builder>>,std::hash<std::shared_ptr<realityio::Builder>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<realityio::Builder>,unsigned int>>>::~__hash_table(v41);
  if (*(&v43 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v43 + 1));
  }

  *&v41[0] = &v44;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](v41);
}

void sub_2475D02B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  a17 = v24 - 120;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a17);
  _Unwind_Resume(a1);
}

void realityio::BuilderDependencyDAG::findRoots(uint64_t a1, uint64_t *a2)
{
  v22 = 0;
  std::vector<std::shared_ptr<realityio::Builder>>::__vdeallocate(a2);
  *a2 = 0;
  a2[1] = 0;
  v18 = a2;
  a2[2] = 0;
  v21 = 0;
  v20 = 0uLL;
  v23 = &v20;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v23);
  v4 = *(a1 + 16);
  if (!v4)
  {
    return;
  }

  do
  {
    v19 = v4;
    v5 = v4 + 8;
    while (1)
    {
      v5 = *v5;
      if (!v5)
      {
        break;
      }

      v6 = v5[6];
      v7 = v5[9];
      if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v7 &= 0xFFFFFFFFFFFFFFF8;
      }

      if (!v6)
      {
LABEL_23:
        v16 = 0;
        if ((v7 & 7) == 0)
        {
          goto LABEL_25;
        }

LABEL_24:
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        goto LABEL_25;
      }

      while (1)
      {
        LODWORD(v20) = 0;
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v20 + 1, v6 + 4);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v20 + 2, v6 + 5);
        v21 = v7;
        if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v21 &= 0xFFFFFFFFFFFFFFF8;
        }

        v8 = std::__hash_table<std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,std::__unordered_map_hasher<realityio::BuilderDependencyDAG::SocketQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,realityio::BuilderDependencyDAG::SocketQuery::Hash,std::equal_to<realityio::BuilderDependencyDAG::SocketQuery>,true>,std::__unordered_map_equal<realityio::BuilderDependencyDAG::SocketQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,std::equal_to<realityio::BuilderDependencyDAG::SocketQuery>,realityio::BuilderDependencyDAG::SocketQuery::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<realityio::BuilderDependencyDAG::SocketQuery>((a1 + 40), &v20);
        if (v8 && (v9 = v8, (v10 = v8[6]) != 0))
        {
          v11 = std::__shared_weak_count::lock(v10);
          v12 = v11;
          if (v11)
          {
            v13 = v9[5];
            atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            std::__shared_weak_count::__release_shared[abi:ne200100](v11);
            v14 = v13 == 0;
            goto LABEL_17;
          }
        }

        else
        {
          v12 = 0;
        }

        v14 = 1;
LABEL_17:
        if ((v21 & 7) != 0)
        {
          atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v20 + 4);
        if (v12)
        {
          v15 = std::__shared_weak_count::lock(v12);
          std::__shared_weak_count::__release_weak(v12);
          if (v15)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v15);
            if (!v14)
            {
              break;
            }
          }
        }

        v6 = *v6;
        if (!v6)
        {
          goto LABEL_23;
        }
      }

      v16 = 1;
      if ((v7 & 7) != 0)
      {
        goto LABEL_24;
      }

LABEL_25:
      if (v16)
      {
        goto LABEL_34;
      }
    }

    v20 = 0uLL;
    v17 = v19[3];
    if (v17)
    {
      *(&v20 + 1) = std::__shared_weak_count::lock(v17);
      if (*(&v20 + 1))
      {
        *&v20 = v19[2];
      }
    }

    realityio::BuilderWorkingSetPriorityQueue<std::shared_ptr<realityio::Builder>>::insert(v18, &v20);
    if (*(&v20 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v20 + 1));
    }

LABEL_34:
    v4 = *v19;
  }

  while (*v19);
}

void sub_2475D05B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(exception_object);
}

BOOL realityio::BuilderWorkingSetPriorityQueue<std::shared_ptr<realityio::Builder>>::erase(uint64_t **a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (v3 == v4)
  {
    v5 = v3;
  }

  else
  {
    v5 = v3;
    v6 = v3;
    while (*v6 != *a2)
    {
      v6 += 2;
      v5 += 16;
      if (v6 == v4)
      {
        v5 = a1[1];
        break;
      }
    }
  }

  if (v4 != v5)
  {
    if (v3 == v5)
    {
      std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,realityio::OrderedAndDeterministicBuilderGreaterThan,std::__wrap_iter<std::shared_ptr<realityio::Builder> *>>(v3, a1[1], &v19, (v4 - v3) >> 4);
      v16 = a1[1];
      v17 = *(v16 - 1);
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      }

      a1[1] = v16 - 2;
    }

    else
    {
      std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<RIO_MTLX::Element> *,std::shared_ptr<RIO_MTLX::Element> *,std::shared_ptr<RIO_MTLX::Element> *>(&v20, (v5 + 16), a1[1], v5);
      v8 = v7;
      v9 = a1[1];
      if (v9 != v7)
      {
        do
        {
          v10 = *(v9 - 1);
          if (v10)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v10);
          }

          v9 -= 2;
        }

        while (v9 != v8);
      }

      a1[1] = v8;
      v11 = *a1;
      v12 = (v8 - v11) >> 4;
      if (v12 >= 2)
      {
        v13 = (v12 - 2) >> 1;
        v14 = (v11 + 16 * v13);
        v15 = v13 + 1;
        do
        {
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,realityio::OrderedAndDeterministicBuilderGreaterThan &,std::__wrap_iter<std::shared_ptr<realityio::Builder> *>>(v11, &v21, v12, v14);
          v14 -= 2;
          --v15;
        }

        while (v15);
      }
    }
  }

  return v4 != v5;
}

void realityio::BuilderDependencyDAG::findDownstreamDependencies(void *a1, __int128 **a2, uint64_t *a3)
{
  __src = 0;
  v37 = 0;
  v38 = 0;
  v5 = *a2;
  v6 = a2[1];
  if (*a2 != v6)
  {
    v7 = 0;
    do
    {
      v33 = *v5;
      v8 = *(v5 + 1);
      if (v8)
      {
        atomic_fetch_add_explicit(((*(v5 + 8) >> 64) + 16), 1uLL, memory_order_relaxed);
      }

      if (v7 >= v38)
      {
        v9 = __src;
        v10 = v7 - __src;
        v11 = (v7 - __src) >> 4;
        v12 = v11 + 1;
        if ((v11 + 1) >> 60)
        {
          std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
        }

        v13 = v38 - __src;
        if ((v38 - __src) >> 3 > v12)
        {
          v12 = v13 >> 3;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFF0)
        {
          v14 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v12;
        }

        p_src = &__src;
        if (v14)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>>(&__src, v14);
        }

        v15 = v11;
        v16 = (16 * v11);
        v17 = &v16[-v15];
        *v16 = v33;
        v7 = (v16 + 1);
        memcpy(v17, v9, v10);
        v18 = __src;
        v19 = v38;
        __src = v17;
        v37 = v7;
        v38 = 0;
        *&v39 = v18;
        v40 = v18;
        v41 = v19;
        *(&v39 + 1) = v18;
        std::__split_buffer<std::weak_ptr<realityio::Builder>>::~__split_buffer(&v39);
      }

      else
      {
        *v7 = v33;
        *(v7 + 1) = v8;
        v7 += 16;
      }

      v37 = v7;
      ++v5;
    }

    while (v5 != v6);
  }

  v41 = 0;
  std::vector<std::shared_ptr<realityio::Builder>>::__vdeallocate(a3);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v40 = 0;
  v39 = 0uLL;
  v34 = &v39;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v34);
  v20 = v37;
  if (__src != v37)
  {
    while (1)
    {
      v21 = v20 - 16;
      v34 = *(v20 - 2);
      v22 = *(v20 - 1);
      v35 = v22;
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v23 = *(v20 - 1);
        if (v23)
        {
          std::__shared_weak_count::__release_weak(v23);
        }
      }

      v37 = v21;
      v24 = atomic_load((a1[16] + 28));
      if (v24 == 1)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(&v39, "findDownstreamDependenciesCancel");
        realityio::ImportSession::CancelledException::CancelledException(exception, &v39);
      }

      v25 = v35;
      if (v35)
      {
        v25 = std::__shared_weak_count::lock(v35);
        v26 = v34;
        if (!v25)
        {
          v26 = 0;
        }
      }

      else
      {
        v26 = 0;
      }

      v27 = *a3;
      v28 = a3[1];
      if (*a3 != v28)
      {
        while (*v27 != v26)
        {
          v27 += 2;
          if (v27 == v28)
          {
            v27 = a3[1];
            break;
          }
        }
      }

      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }

      v29 = v35;
      if (v27 == v28)
      {
        break;
      }

      if (v35)
      {
        goto LABEL_35;
      }

LABEL_36:
      v20 = v37;
      if (__src == v37)
      {
        goto LABEL_49;
      }
    }

    v39 = 0uLL;
    if (v35)
    {
      *(&v39 + 1) = std::__shared_weak_count::lock(v35);
      if (*(&v39 + 1))
      {
        *&v39 = v34;
      }
    }

    realityio::BuilderWorkingSetPriorityQueue<std::shared_ptr<realityio::Builder>>::insert(a3, &v39);
    if (*(&v39 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v39 + 1));
    }

    v30 = std::__hash_table<std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,std::__unordered_map_hasher<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,realityio::WeakBuilderPtrHash,realityio::WeakBuilderPtrEqual,true>,std::__unordered_map_equal<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,realityio::WeakBuilderPtrEqual,realityio::WeakBuilderPtrHash,true>,std::allocator<std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>>>::find<std::weak_ptr<realityio::Builder>>(a1, &v34);
    if (!v30)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    for (i = v30 + 23; ; std::vector<std::weak_ptr<realityio::Builder>>::push_back[abi:ne200100](&__src, (i + 3)))
    {
      i = *i;
      if (!i)
      {
        break;
      }
    }

    v29 = v35;
    if (!v35)
    {
      goto LABEL_36;
    }

LABEL_35:
    std::__shared_weak_count::__release_weak(v29);
    goto LABEL_36;
  }

LABEL_49:
  *&v39 = &__src;
  std::vector<std::weak_ptr<realityio::Builder>>::__destroy_vector::operator()[abi:ne200100](&v39);
}

void sub_2475D0A44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (v21)
  {
    std::__shared_weak_count::__release_weak(v21);
  }

  a11 = &a13;
  std::vector<std::weak_ptr<realityio::Builder>>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void **std::vector<std::weak_ptr<realityio::Builder>>::push_back[abi:ne200100](void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - *result;
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

    v18[4] = result;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>>(result, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 16), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
    v14 = result[1] - *result;
    v15 = v12 - v14;
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<std::weak_ptr<realityio::Builder>>::~__split_buffer(v18);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    *(v4 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 16;
  }

  v3[1] = v7;
  return result;
}

uint64_t realityio::BuilderDependencyDAG::findUnsatisfiableBuilders(void *a1, uint64_t a2)
{
  if (*(a2 + 24))
  {
    std::__hash_table<std::__hash_value_type<std::shared_ptr<realityio::Builder>,std::vector<realityio::BuilderDependencyDAG::UnsatisfiedInputDescriptorInfo>>,std::__unordered_map_hasher<std::shared_ptr<realityio::Builder>,std::__hash_value_type<std::shared_ptr<realityio::Builder>,std::vector<realityio::BuilderDependencyDAG::UnsatisfiedInputDescriptorInfo>>,std::hash<std::shared_ptr<realityio::Builder>>,std::equal_to<std::shared_ptr<realityio::Builder>>,true>,std::__unordered_map_equal<std::shared_ptr<realityio::Builder>,std::__hash_value_type<std::shared_ptr<realityio::Builder>,std::vector<realityio::BuilderDependencyDAG::UnsatisfiedInputDescriptorInfo>>,std::equal_to<std::shared_ptr<realityio::Builder>>,std::hash<std::shared_ptr<realityio::Builder>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<realityio::Builder>,std::vector<realityio::BuilderDependencyDAG::UnsatisfiedInputDescriptorInfo>>>>::__deallocate_node(a2, *(a2 + 16));
    *(a2 + 16) = 0;
    v4 = *(a2 + 8);
    if (v4)
    {
      for (i = 0; i != v4; ++i)
      {
        *(*a2 + 8 * i) = 0;
      }
    }

    *(a2 + 24) = 0;
  }

  memset(v57, 0, sizeof(v57));
  v58 = 1065353216;
  v54 = 0;
  v55 = 0;
  v56 = 0;
  realityio::BuilderDependencyDAG::findRoots(a1, &v54);
  v6 = v54;
  v7 = v55;
  if (v54 != v55)
  {
    v49 = a2;
    do
    {
      v8 = v6[1];
      *&v53 = *v6;
      *(&v53 + 1) = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
        v7 = v55;
      }

      std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,realityio::OrderedAndDeterministicBuilderGreaterThan,std::__wrap_iter<std::shared_ptr<realityio::Builder> *>>(v6, v7, &v62, (v7 - v6) >> 4);
      v9 = v55;
      v10 = *(v55 - 8);
      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }

      v55 = v9 - 16;
      *v59 = v53;
      if (*(&v53 + 1))
      {
        atomic_fetch_add_explicit((*(&v53 + 1) + 16), 1uLL, memory_order_relaxed);
      }

      v11 = std::__hash_table<std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,std::__unordered_map_hasher<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,realityio::WeakBuilderPtrHash,realityio::WeakBuilderPtrEqual,true>,std::__unordered_map_equal<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,realityio::WeakBuilderPtrEqual,realityio::WeakBuilderPtrHash,true>,std::allocator<std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>>>::find<std::weak_ptr<realityio::Builder>>(a1, v59);
      if (!v11)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      if (v59[1])
      {
        std::__shared_weak_count::__release_weak(v59[1]);
      }

      std::__hash_table<std::shared_ptr<realityio::Builder>,std::hash<std::shared_ptr<realityio::Builder>>,std::equal_to<std::shared_ptr<realityio::Builder>>,std::allocator<std::shared_ptr<realityio::Builder>>>::__emplace_unique_key_args<std::shared_ptr<realityio::Builder>,std::shared_ptr<realityio::Builder> const&>(v57, &v53);
      v51 = 0uLL;
      v52 = 0;
      v50 = v11;
      v12 = v11[8];
      if (v12)
      {
        while (1)
        {
          if (*(v12 + 6) != 1)
          {
            v13 = v12[6];
            if (v13)
            {
              while (1)
              {
                LODWORD(v59[0]) = 0;
                pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v59 + 1, v13 + 4);
                pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v59[1], v13 + 5);
                v14 = v12[9];
                v60.i64[0] = v14;
                if ((v14 & 7) != 0)
                {
                  add_explicit = atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed);
                  v14 = v60.i64[0];
                  if ((add_explicit & 1) == 0)
                  {
                    v14 = v60.i64[0] & 0xFFFFFFFFFFFFFFF8;
                    v60.i64[0] &= 0xFFFFFFFFFFFFFFF8;
                  }
                }

                v16 = std::__hash_table<std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,std::__unordered_map_hasher<realityio::BuilderDependencyDAG::SocketQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,realityio::BuilderDependencyDAG::SocketQuery::Hash,std::equal_to<realityio::BuilderDependencyDAG::SocketQuery>,true>,std::__unordered_map_equal<realityio::BuilderDependencyDAG::SocketQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,std::equal_to<realityio::BuilderDependencyDAG::SocketQuery>,realityio::BuilderDependencyDAG::SocketQuery::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<realityio::BuilderDependencyDAG::SocketQuery>(a1 + 5, v59);
                v17 = v16;
                if (v16)
                {
                  v18 = v16;
                  do
                  {
                    v18 = *v18;
                  }

                  while (v18 && *(v18 + 4) == LODWORD(v59[0]) && *(v18 + 20) == *(v59 + 4) && (v18[4] ^ v14) < 8);
                }

                else
                {
                  v18 = 0;
                }

                if ((v14 & 7) != 0)
                {
                  atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                }

                pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v59 + 4);
                if (v17 != v18)
                {
                  break;
                }

                v13 = *v13;
                if (!v13)
                {
                  goto LABEL_35;
                }
              }
            }

            else
            {
LABEL_35:
              v19 = v12[2];
              v59[0] = v19;
              if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
              {
                v59[0] = (v59[0] & 0xFFFFFFFFFFFFFFF8);
              }

              v20 = v12[9];
              v59[1] = v20;
              if ((v20 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
              {
                v59[1] = (v59[1] & 0xFFFFFFFFFFFFFFF8);
              }

              std::unordered_set<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::unordered_set(&v60, (v12 + 4));
              v21 = v51.i64[1];
              if (v51.i64[1] >= v52)
              {
                v23 = 0x6DB6DB6DB6DB6DB7 * ((v51.i64[1] - v51.i64[0]) >> 3) + 1;
                if (v23 > 0x492492492492492)
                {
                  std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
                }

                if (0xDB6DB6DB6DB6DB6ELL * ((v52 - v51.i64[0]) >> 3) > v23)
                {
                  v23 = 0xDB6DB6DB6DB6DB6ELL * ((v52 - v51.i64[0]) >> 3);
                }

                if ((0x6DB6DB6DB6DB6DB7 * ((v52 - v51.i64[0]) >> 3)) >= 0x249249249249249)
                {
                  v24 = 0x492492492492492;
                }

                else
                {
                  v24 = v23;
                }

                v66 = &v51;
                if (v24)
                {
                  if (v24 <= 0x492492492492492)
                  {
                    operator new();
                  }

                  std::__throw_bad_array_new_length[abi:ne200100]();
                }

                v25 = (8 * ((v51.i64[1] - v51.i64[0]) >> 3));
                v62 = 0;
                v63 = v25;
                v64 = v25;
                v65 = 0;
                *v25 = *v59;
                v59[0] = 0;
                v59[1] = 0;
                std::unordered_set<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::unordered_set((v25 + 2), &v60);
                v26 = v51.i64[1];
                v27 = v51.i64[0];
                v28 = v63 - (v51.i64[1] - v51.i64[0]);
                v22 = (v64 + 7);
                v64 += 7;
                if (v51.i64[1] != v51.i64[0])
                {
                  v29 = 0;
                  do
                  {
                    v30 = &v27[v29];
                    v31 = v27[v29];
                    *(v28 + v29 * 8) = v31;
                    if ((v31 & 7) != 0 && (atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
                    {
                      *(v28 + v29 * 8) &= 0xFFFFFFFFFFFFFFF8;
                    }

                    v32 = v28 + v29 * 8;
                    v33 = v30[1];
                    *(v28 + v29 * 8 + 8) = v33;
                    if ((v33 & 7) != 0 && (atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
                    {
                      *(v32 + 8) &= 0xFFFFFFFFFFFFFFF8;
                    }

                    std::unordered_set<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::unordered_set(v32 + 16, &v27[v29 + 2]);
                    v29 += 7;
                  }

                  while (v30 + 7 != v26);
                  do
                  {
                    std::allocator<realityio::BuilderDependencyDAG::UnsatisfiedInputDescriptorInfo>::destroy[abi:ne200100](&v51, v27);
                    v27 += 7;
                  }

                  while (v27 != v26);
                  v27 = v51.i64[0];
                  v22 = v64;
                }

                v51.i64[0] = v28;
                v51.i64[1] = v22;
                v34 = v52;
                v52 = v65;
                v64 = v27;
                v65 = v34;
                v62 = v27;
                v63 = v27;
                std::__split_buffer<realityio::BuilderDependencyDAG::UnsatisfiedInputDescriptorInfo>::~__split_buffer(&v62);
              }

              else
              {
                *v51.i64[1] = v59[0];
                *(v21 + 8) = v59[1];
                v59[0] = 0;
                v59[1] = 0;
                std::unordered_set<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::unordered_set(v21 + 16, &v60);
                v22 = v21 + 56;
              }

              v51.i64[1] = v22;
              std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::~__hash_table(&v60);
              if ((v59[1] & 7) != 0)
              {
                atomic_fetch_add_explicit((v59[1] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              if ((v59[0] & 7) != 0)
              {
                atomic_fetch_add_explicit((v59[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }
            }
          }

          v12 = *v12;
          if (!v12)
          {
            v35 = v51;
            if (vmovn_s64(vceqq_s64(v51, vdupq_laneq_s64(v51, 1))).u8[0])
            {
              break;
            }

            v36 = v50[23];
            if (v36)
            {
              do
              {
                v59[0] = 0;
                v59[1] = 0;
                v37 = v36[4];
                if (v37)
                {
                  v59[1] = std::__shared_weak_count::lock(v37);
                  if (v59[1])
                  {
                    v59[0] = v36[3];
                  }
                }

                if (!std::__hash_table<REEntity *,std::hash<REEntity *>,std::equal_to<REEntity *>,std::allocator<REEntity *>>::find<REEntity *>(v57, v59))
                {
                  realityio::BuilderWorkingSetPriorityQueue<std::shared_ptr<realityio::Builder>>::insert(&v54, v59);
                }

                if (v59[1])
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v59[1]);
                }

                v36 = *v36;
              }

              while (v36);
              v35 = v51;
            }

            v38 = v53;
            v53 = 0uLL;
            *v59 = v38;
            v60 = v35;
            v61 = v52;
            v52 = 0;
            v51 = 0uLL;
            v39 = 0x9DDFEA08EB382D69 * ((8 * (v38 & 0x1FFFFFFF) + 8) ^ DWORD1(v38));
            v40 = 0x9DDFEA08EB382D69 * (DWORD1(v38) ^ (v39 >> 47) ^ v39);
            v41 = 0x9DDFEA08EB382D69 * (v40 ^ (v40 >> 47));
            v42 = v49[1];
            if (!*&v42)
            {
              goto LABEL_96;
            }

            v43 = vcnt_s8(v42);
            v43.i16[0] = vaddlv_u8(v43);
            if (v43.u32[0] > 1uLL)
            {
              v44 = 0x9DDFEA08EB382D69 * (v40 ^ (v40 >> 47));
              if (v41 >= *&v42)
              {
                v44 = v41 % *&v42;
              }
            }

            else
            {
              v44 = v41 & (*&v42 - 1);
            }

            v45 = *(*v49 + 8 * v44);
            if (!v45 || (v46 = *v45) == 0)
            {
LABEL_96:
              operator new();
            }

            while (1)
            {
              v47 = v46[1];
              if (v47 == v41)
              {
                if (v46[2] == v38)
                {
                  v62 = &v60;
                  std::vector<realityio::BuilderDependencyDAG::UnsatisfiedInputDescriptorInfo>::__destroy_vector::operator()[abi:ne200100](&v62);
                  if (v59[1])
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v59[1]);
                  }

                  goto LABEL_99;
                }
              }

              else
              {
                if (v43.u32[0] > 1uLL)
                {
                  if (v47 >= *&v42)
                  {
                    v47 %= *&v42;
                  }
                }

                else
                {
                  v47 &= *&v42 - 1;
                }

                if (v47 != v44)
                {
                  goto LABEL_96;
                }
              }

              v46 = *v46;
              if (!v46)
              {
                goto LABEL_96;
              }
            }
          }
        }
      }

LABEL_99:
      v59[0] = &v51;
      std::vector<realityio::BuilderDependencyDAG::UnsatisfiedInputDescriptorInfo>::__destroy_vector::operator()[abi:ne200100](v59);
      if (*(&v53 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v53 + 1));
      }

      v6 = v54;
      v7 = v55;
    }

    while (v54 != v55);
  }

  v59[0] = &v54;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](v59);
  return std::__hash_table<std::shared_ptr<realityio::Builder>,std::hash<std::shared_ptr<realityio::Builder>>,std::equal_to<std::shared_ptr<realityio::Builder>>,std::allocator<std::shared_ptr<realityio::Builder>>>::~__hash_table(v57);
}

void sub_2475D1628(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char *a31, std::__shared_weak_count *a32)
{
  a31 = &a21;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a31);
  std::__hash_table<std::shared_ptr<realityio::Builder>,std::hash<std::shared_ptr<realityio::Builder>>,std::equal_to<std::shared_ptr<realityio::Builder>>,std::allocator<std::shared_ptr<realityio::Builder>>>::~__hash_table(&a25);
  _Unwind_Resume(a1);
}

uint64_t realityio::BuilderDependencyDAG::removeBuilder(void *a1, unint64_t *a2)
{
  v4 = *a2;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v10, (*a2 + 8));
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v11, (v4 + 12));
  (*(**a2 + 24))(&v12);
  v5 = std::__hash_table<std::__hash_value_type<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::weak_ptr<realityio::Builder>>,std::__unordered_map_hasher<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::weak_ptr<realityio::Builder>>,realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery::Hash,std::equal_to<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery>,true>,std::__unordered_map_equal<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::weak_ptr<realityio::Builder>>,std::equal_to<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery>,realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::weak_ptr<realityio::Builder>>>>::find<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery>(a1 + 10, &v10);
  std::__hash_table<std::__hash_value_type<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::weak_ptr<realityio::Builder>>,std::__unordered_map_hasher<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::weak_ptr<realityio::Builder>>,realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery::Hash,std::equal_to<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery>,true>,std::__unordered_map_equal<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::weak_ptr<realityio::Builder>>,std::equal_to<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery>,realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::weak_ptr<realityio::Builder>>>>::erase(a1 + 10, v5);
  realityio::BuilderDependencyDAG::removeInputDataForGraphNode(a1, a2);
  realityio::BuilderDependencyDAG::removeOutputDataForGraphNode(a1, a2);
  v6 = a2[1];
  v8 = *a2;
  v9 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  std::__hash_table<std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,std::__unordered_map_hasher<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,realityio::WeakBuilderPtrHash,realityio::WeakBuilderPtrEqual,true>,std::__unordered_map_equal<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,realityio::WeakBuilderPtrEqual,realityio::WeakBuilderPtrHash,true>,std::allocator<std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>>>::__erase_unique<std::weak_ptr<realityio::Builder>>(a1, &v8);
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v10);
}

void sub_2475D1908(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, char a11)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery::~BuilderAtPrimPathQuery(&a11);
  _Unwind_Resume(a1);
}

void std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::__node_insert_multi(uint64_t a1, uint64_t a2)
{
  v4 = bswap64(0x9E3779B97F4A7C55 * (*(a2 + 20) + ((*(a2 + 20) + *(a2 + 16) + (*(a2 + 20) + *(a2 + 16)) * (*(a2 + 20) + *(a2 + 16))) >> 1)));
  *(a2 + 8) = v4;
  v5 = *(a1 + 8);
  v6 = (*(a1 + 24) + 1);
  v7 = *(a1 + 32);
  if (!v5 || (v7 * v5) < v6)
  {
    v8 = 1;
    if (v5 >= 3)
    {
      v8 = (v5 & (v5 - 1)) != 0;
    }

    v9 = v8 | (2 * v5);
    v10 = vcvtps_u32_f32(v6 / v7);
    if (v9 <= v10)
    {
      prime = v10;
    }

    else
    {
      prime = v9;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v5 = *(a1 + 8);
    }

    if (prime > v5)
    {
LABEL_13:
      if (!(prime >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    if (prime < v5)
    {
      v12 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v5 < 3 || (v13 = vcnt_s8(v5), v13.i16[0] = vaddlv_u8(v13), v13.u32[0] > 1uLL))
      {
        v12 = std::__next_prime(v12);
      }

      else
      {
        v14 = 1 << -__clz(v12 - 1);
        if (v12 >= 2)
        {
          v12 = v14;
        }
      }

      if (prime <= v12)
      {
        prime = v12;
      }

      if (prime >= v5)
      {
        v5 = *(a1 + 8);
      }

      else
      {
        if (prime)
        {
          goto LABEL_13;
        }

        v28 = *a1;
        *a1 = 0;
        if (v28)
        {
          operator delete(v28);
        }

        v5 = 0;
        *(a1 + 8) = 0;
      }
    }
  }

  v15 = vcnt_s8(v5);
  v15.i16[0] = vaddlv_u8(v15);
  if (v15.u32[0] > 1uLL)
  {
    v16 = v4;
    if (v5 <= v4)
    {
      v16 = v4 % v5;
    }
  }

  else
  {
    v16 = (v5 - 1) & v4;
  }

  v17 = *a1;
  v18 = *(*a1 + 8 * v16);
  if (v18)
  {
    v19 = 0;
    do
    {
      v20 = v18;
      v18 = *v18;
      if (!v18)
      {
        break;
      }

      v21 = v18[1];
      if (v15.u32[0] > 1uLL)
      {
        v22 = v18[1];
        if (v21 >= v5)
        {
          v22 = v21 % v5;
        }
      }

      else
      {
        v22 = v21 & (v5 - 1);
      }

      if (v22 != v16)
      {
        break;
      }

      v23 = v21 == v4 && v18[2] == *(a2 + 16);
      v24 = v23 != (v19 & 1);
      v25 = v19 & v24;
      v19 |= v24;
    }

    while (v25 != 1);
  }

  else
  {
    v20 = 0;
  }

  v26 = *(a2 + 8);
  if (v15.u32[0] > 1uLL)
  {
    if (v26 >= v5)
    {
      v26 %= v5;
    }
  }

  else
  {
    v26 &= v5 - 1;
  }

  if (!v20)
  {
    *a2 = *(a1 + 16);
    *(a1 + 16) = a2;
    v17[v26] = a1 + 16;
    if (!*a2)
    {
      goto LABEL_57;
    }

    v27 = *(*a2 + 8);
    if (v15.u32[0] > 1uLL)
    {
      if (v27 >= v5)
      {
        v27 %= v5;
      }
    }

    else
    {
      v27 &= v5 - 1;
    }

LABEL_56:
    *(*a1 + 8 * v27) = a2;
    goto LABEL_57;
  }

  *a2 = *v20;
  *v20 = a2;
  if (*a2)
  {
    v27 = *(*a2 + 8);
    if (v15.u32[0] > 1uLL)
    {
      if (v27 >= v5)
      {
        v27 %= v5;
      }
    }

    else
    {
      v27 &= v5 - 1;
    }

    if (v27 != v26)
    {
      goto LABEL_56;
    }
  }

LABEL_57:
  ++*(a1 + 24);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,0>(v2 + 2);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__destroy_at[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,0>(void *a1)
{
  v2 = a1[7];
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  result = std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::~__hash_table((a1 + 2));
  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

uint64_t std::pair<std::string,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>::~pair(uint64_t a1)
{
  v2 = *(a1 + 72);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::~__hash_table(a1 + 32);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v2 = __p[4];
    if ((v2 & 7) != 0)
    {
      atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 = __p[2];
    if ((v3 & 7) != 0)
    {
      atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>>>::__hash_table(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  v5 = a2[2];
  v3 = a2 + 2;
  v4 = v5;
  v6 = *(v3 - 1);
  *(result + 16) = v5;
  *(result + 8) = v6;
  *(v3 - 1) = 0;
  v7 = v3[1];
  *(result + 24) = v7;
  *(result + 32) = *(v3 + 4);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 16;
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[4];
      if ((v4 & 7) != 0)
      {
        atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v5 = v2[2];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,0>(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *realityio::ImportSession::CancelledException::CancelledException(void *a1, __int128 *a2)
{
  *a1 = &unk_285952540;
  v3 = (a1 + 1);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v3, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    v3->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v3->__r_.__value_.__l.__data_ = v4;
  }

  return a1;
}

uint64_t std::pair<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery const,std::weak_ptr<realityio::Builder>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 8);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,realityio::BuilderDependencyDAG::DependentBuilder>,0>(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,realityio::BuilderDependencyDAG::DependentBuilder>,0>(void *a1)
{
  v2 = a1[3];
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

uint64_t realityio::BuilderDependencyDAG::BuilderGraphNode::BuilderGraphNode(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>>>::__hash_table(a1 + 16, (a2 + 16));
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>>>::__hash_table(a1 + 56, (a2 + 56));
  v4 = *(a2 + 96);
  *(a2 + 96) = 0;
  *(a1 + 96) = v4;
  v5 = *(a2 + 112);
  v6 = *(a2 + 104);
  *(a1 + 112) = v5;
  *(a1 + 104) = v6;
  *(a2 + 104) = 0;
  v7 = *(a2 + 120);
  *(a1 + 120) = v7;
  *(a1 + 128) = *(a2 + 128);
  if (v7)
  {
    v8 = *(v5 + 8);
    v9 = *(a1 + 104);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v4 + 8 * v8) = a1 + 112;
    *(a2 + 112) = 0;
    *(a2 + 120) = 0;
  }

  v10 = *(a2 + 136);
  *(a2 + 136) = 0;
  *(a1 + 136) = v10;
  v11 = *(a2 + 152);
  v12 = *(a2 + 144);
  *(a1 + 152) = v11;
  *(a1 + 144) = v12;
  *(a2 + 144) = 0;
  v13 = *(a2 + 160);
  *(a1 + 160) = v13;
  *(a1 + 168) = *(a2 + 168);
  if (v13)
  {
    v14 = *(v11 + 8);
    v15 = *(a1 + 144);
    if ((v15 & (v15 - 1)) != 0)
    {
      if (v14 >= v15)
      {
        v14 %= v15;
      }
    }

    else
    {
      v14 &= v15 - 1;
    }

    *(v10 + 8 * v14) = a1 + 152;
    *(a2 + 152) = 0;
    *(a2 + 160) = 0;
  }

  *(a1 + 176) = *(a2 + 176);
  *(a2 + 176) = 0;
  return a1;
}

void *std::pair<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>::~pair(void *a1)
{
  realityio::WrappedRERef<REEngine *>::~WrappedRERef(a1 + 24);
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>>>::~__hash_table((a1 + 19));
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>>>::~__hash_table((a1 + 14));
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>>>::~__hash_table((a1 + 9));
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>>>::~__hash_table((a1 + 4));
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[1];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void realityio::BuilderDependencyDAG::BuilderGraphNode::~BuilderGraphNode(realityio::BuilderDependencyDAG::BuilderGraphNode *this)
{
  realityio::WrappedRERef<REEngine *>::~WrappedRERef(this + 22);
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>>>::~__hash_table(this + 136);
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>>>::~__hash_table(this + 96);
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>>>::~__hash_table(this + 56);
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>>>::~__hash_table(this + 16);
  v2 = *(this + 1);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

uint64_t std::allocator<realityio::BuilderDependencyDAG::UnsatisfiedInputDescriptorInfo>::destroy[abi:ne200100](uint64_t a1, void *a2)
{
  result = std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::~__hash_table((a2 + 2));
  v4 = a2[1];
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*a2 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

uint64_t std::__split_buffer<realityio::BuilderDependencyDAG::UnsatisfiedInputDescriptorInfo>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(a1 + 32);
    *(a1 + 16) = i - 56;
    std::allocator<realityio::BuilderDependencyDAG::UnsatisfiedInputDescriptorInfo>::destroy[abi:ne200100](v4, (i - 56));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void realityio::BuilderDependencyDAG::UnsatisfiedInputDescriptorInfo::~UnsatisfiedInputDescriptorInfo(realityio::BuilderDependencyDAG::UnsatisfiedInputDescriptorInfo *this)
{
  std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::~__hash_table(this + 16);
  v2 = *(this + 1);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

uint64_t std::pair<std::shared_ptr<realityio::Builder> const,std::vector<realityio::BuilderDependencyDAG::UnsatisfiedInputDescriptorInfo>>::~pair(uint64_t a1)
{
  v4 = (a1 + 16);
  std::vector<realityio::BuilderDependencyDAG::UnsatisfiedInputDescriptorInfo>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void **std::__split_buffer<std::weak_ptr<realityio::Builder>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::weak_ptr<realityio::Builder>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::weak_ptr<realityio::Builder>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

void std::__hash_table<std::shared_ptr<realityio::Builder>,std::hash<std::shared_ptr<realityio::Builder>>,std::equal_to<std::shared_ptr<realityio::Builder>>,std::allocator<std::shared_ptr<realityio::Builder>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::shared_ptr<realityio::Builder>,std::hash<std::shared_ptr<realityio::Builder>>,std::equal_to<std::shared_ptr<realityio::Builder>>,std::allocator<std::shared_ptr<realityio::Builder>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void std::__hash_table<std::shared_ptr<realityio::Builder>,std::hash<std::shared_ptr<realityio::Builder>>,std::equal_to<std::shared_ptr<realityio::Builder>>,std::allocator<std::shared_ptr<realityio::Builder>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *std::__hash_table<std::shared_ptr<realityio::Builder>,std::hash<std::shared_ptr<realityio::Builder>>,std::equal_to<std::shared_ptr<realityio::Builder>>,std::allocator<std::shared_ptr<realityio::Builder>>>::__emplace_unique_key_args<std::shared_ptr<realityio::Builder>,std::shared_ptr<realityio::Builder>>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
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
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}