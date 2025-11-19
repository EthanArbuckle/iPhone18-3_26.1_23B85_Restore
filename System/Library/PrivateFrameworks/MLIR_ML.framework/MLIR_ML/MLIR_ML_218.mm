uint64_t *std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,llvm::json::sortedElements(llvm::json::Object const&)::$_0 &,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value> const**,0>(uint64_t *result, uint64_t *a2, uint64_t *a3)
{
  v5 = result;
  v6 = *a2;
  v7 = *result;
  v8 = *(*a2 + 16);
  v9 = *(*result + 16);
  if (v9 >= v8)
  {
    v10 = *(*a2 + 16);
  }

  else
  {
    v10 = *(*result + 16);
  }

  if (v10)
  {
    result = memcmp(*(v6 + 8), *(v7 + 8), v10);
    if (result)
    {
      if ((result & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

LABEL_15:
      v14 = *a3;
      v15 = *(*a3 + 16);
      if (v8 >= v15)
      {
        v16 = *(*a3 + 16);
      }

      else
      {
        v16 = v8;
      }

      if (v16 && (result = memcmp(*(v14 + 8), *(v6 + 8), v16), result))
      {
        if ((result & 0x80000000) == 0)
        {
LABEL_21:
          *v5 = v6;
          *a2 = v7;
          v17 = *a3;
          v18 = *(*a3 + 16);
          if (v9 >= v18)
          {
            v19 = *(*a3 + 16);
          }

          else
          {
            v19 = v9;
          }

          if (v19 && (result = memcmp(*(v17 + 8), *(v7 + 8), v19), result))
          {
            if ((result & 0x80000000) == 0)
            {
              return result;
            }
          }

          else if (v18 >= v9)
          {
            return result;
          }

          *a2 = v17;
          goto LABEL_40;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_21;
      }

      *v5 = v14;
LABEL_40:
      *a3 = v7;
      return result;
    }
  }

  if (v8 < v9)
  {
    goto LABEL_15;
  }

LABEL_7:
  v11 = *a3;
  v12 = *(*a3 + 16);
  if (v8 >= v12)
  {
    v13 = *(*a3 + 16);
  }

  else
  {
    v13 = v8;
  }

  if (v13 && (result = memcmp(*(v11 + 8), *(v6 + 8), v13), result))
  {
    if ((result & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v12 >= v8)
  {
    return result;
  }

  *a2 = v11;
  *a3 = v6;
  v20 = *a2;
  v21 = *v5;
  v22 = *(*a2 + 16);
  v23 = *(*v5 + 16);
  if (v23 >= v22)
  {
    v24 = *(*a2 + 16);
  }

  else
  {
    v24 = *(*v5 + 16);
  }

  if (v24 && (result = memcmp(*(v20 + 8), *(v21 + 8), v24), result))
  {
    if ((result & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v22 >= v23)
  {
    return result;
  }

  *v5 = v20;
  *a2 = v21;
  return result;
}

uint64_t *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,llvm::json::sortedElements(llvm::json::Object const&)::$_0 &,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value> const**,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,llvm::json::sortedElements(llvm::json::Object const&)::$_0 &,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value> const**,0>(a1, a2, a3);
  v9 = *a4;
  v10 = *a3;
  v11 = *(*a4 + 16);
  v12 = *(*a3 + 16);
  if (v12 >= v11)
  {
    v13 = *(*a4 + 16);
  }

  else
  {
    v13 = *(*a3 + 16);
  }

  if (v13 && (result = memcmp(*(v9 + 8), *(v10 + 8), v13), result))
  {
    if ((result & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v11 >= v12)
  {
    return result;
  }

  *a3 = v9;
  *a4 = v10;
  v14 = *a3;
  v15 = *a2;
  v16 = *(*a3 + 16);
  v17 = *(*a2 + 16);
  if (v17 >= v16)
  {
    v18 = *(*a3 + 16);
  }

  else
  {
    v18 = *(*a2 + 16);
  }

  if (v18 && (result = memcmp(*(v14 + 8), *(v15 + 8), v18), result))
  {
    if ((result & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v16 >= v17)
  {
    return result;
  }

  *a2 = v14;
  *a3 = v15;
  v19 = *a2;
  v20 = *a1;
  v21 = *(*a2 + 16);
  v22 = *(*a1 + 16);
  if (v22 >= v21)
  {
    v23 = *(*a2 + 16);
  }

  else
  {
    v23 = *(*a1 + 16);
  }

  if (v23 && (result = memcmp(*(v19 + 8), *(v20 + 8), v23), result))
  {
    if ((result & 0x80000000) != 0)
    {
      goto LABEL_25;
    }
  }

  else if (v21 < v22)
  {
LABEL_25:
    *a1 = v19;
    *a2 = v20;
  }

  return result;
}

uint64_t *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,llvm::json::sortedElements(llvm::json::Object const&)::$_0 &,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value> const**,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  result = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,llvm::json::sortedElements(llvm::json::Object const&)::$_0 &,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value> const**,0>(a1, a2, a3, a4);
  v11 = *a5;
  v12 = *a4;
  v13 = *(*a5 + 16);
  v14 = *(*a4 + 16);
  if (v14 >= v13)
  {
    v15 = *(*a5 + 16);
  }

  else
  {
    v15 = *(*a4 + 16);
  }

  if (v15 && (result = memcmp(*(v11 + 8), *(v12 + 8), v15), result))
  {
    if ((result & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v13 >= v14)
  {
    return result;
  }

  *a4 = v11;
  *a5 = v12;
  v16 = *a4;
  v17 = *a3;
  v18 = *(*a4 + 16);
  v19 = *(*a3 + 16);
  if (v19 >= v18)
  {
    v20 = *(*a4 + 16);
  }

  else
  {
    v20 = *(*a3 + 16);
  }

  if (v20 && (result = memcmp(*(v16 + 8), *(v17 + 8), v20), result))
  {
    if ((result & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v18 >= v19)
  {
    return result;
  }

  *a3 = v16;
  *a4 = v17;
  v21 = *a3;
  v22 = *a2;
  v23 = *(*a3 + 16);
  v24 = *(*a2 + 16);
  if (v24 >= v23)
  {
    v25 = *(*a3 + 16);
  }

  else
  {
    v25 = *(*a2 + 16);
  }

  if (v25 && (result = memcmp(*(v21 + 8), *(v22 + 8), v25), result))
  {
    if ((result & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v23 >= v24)
  {
    return result;
  }

  *a2 = v21;
  *a3 = v22;
  v26 = *a2;
  v27 = *a1;
  v28 = *(*a2 + 16);
  v29 = *(*a1 + 16);
  if (v29 >= v28)
  {
    v30 = *(*a2 + 16);
  }

  else
  {
    v30 = *(*a1 + 16);
  }

  if (v30 && (result = memcmp(*(v26 + 8), *(v27 + 8), v30), result))
  {
    if ((result & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v28 >= v29)
  {
    return result;
  }

  *a1 = v26;
  *a2 = v27;
  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,llvm::json::sortedElements(llvm::json::Object const&)::$_0 &,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value> const**>(uint64_t *a1, uint64_t *a2)
{
  v2 = a2;
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,llvm::json::sortedElements(llvm::json::Object const&)::$_0 &,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value> const**,0>(a1, a1 + 1, a2 - 1);
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,llvm::json::sortedElements(llvm::json::Object const&)::$_0 &,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value> const**,0>(a1, a1 + 1, a1 + 2, a2 - 1);
        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,llvm::json::sortedElements(llvm::json::Object const&)::$_0 &,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value> const**,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v6 = *(a2 - 1);
      v7 = *a1;
      v8 = *(v6 + 16);
      v9 = *(*a1 + 16);
      if (v9 >= v8)
      {
        v10 = *(v6 + 16);
      }

      else
      {
        v10 = *(*a1 + 16);
      }

      if (v10 && (v11 = memcmp(*(v6 + 8), *(v7 + 8), v10)) != 0)
      {
        if ((v11 & 0x80000000) == 0)
        {
          return 1;
        }
      }

      else if (v8 >= v9)
      {
        return 1;
      }

      *a1 = v6;
      *(v2 - 1) = v7;
      return 1;
    }
  }

  v12 = a1 + 2;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,llvm::json::sortedElements(llvm::json::Object const&)::$_0 &,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value> const**,0>(a1, a1 + 1, a1 + 2);
  v13 = a1 + 3;
  if (a1 + 3 == v2)
  {
    return 1;
  }

  v14 = 0;
  v15 = 0;
  v27 = v2;
  while (1)
  {
    v17 = *v13;
    v18 = *v12;
    v19 = *(*v13 + 16);
    v20 = *(*v12 + 16);
    v21 = v20 >= v19 ? *(*v13 + 16) : *(*v12 + 16);
    if (!v21)
    {
      break;
    }

    v22 = memcmp(*(v17 + 8), *(v18 + 8), v21);
    if (!v22)
    {
      break;
    }

    if (v22 < 0)
    {
      goto LABEL_30;
    }

LABEL_21:
    v12 = v13;
    v14 += 8;
    if (++v13 == v2)
    {
      return 1;
    }
  }

  if (v19 >= v20)
  {
    goto LABEL_21;
  }

LABEL_30:
  for (i = v14; ; i -= 8)
  {
    while (1)
    {
      *(a1 + i + 24) = v18;
      if (i == -16)
      {
        v16 = a1;
        goto LABEL_20;
      }

      v16 = v12;
      v18 = *(a1 + i + 8);
      v24 = *(v18 + 16);
      v25 = v24 >= v19 ? v19 : *(v18 + 16);
      if (!v25)
      {
        break;
      }

      v26 = memcmp(*(v17 + 8), *(v18 + 8), v25);
      if (!v26)
      {
        break;
      }

      v12 = v16 - 1;
      i -= 8;
      if (((v26 >> 31) & 0x80000000) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v19 >= v24)
    {
      break;
    }

    v12 = v16 - 1;
  }

  v16 = (a1 + i + 16);
LABEL_20:
  *v16 = v17;
  ++v15;
  v2 = v27;
  if (v15 != 8)
  {
    goto LABEL_21;
  }

  return v13 + 1 == v27;
}

void llvm::json::OStream::value(llvm::json::Value const&)::$_1::operator()(void *a1)
{
  if (**a1 == 7)
  {
    v1 = *a1 + 8;
  }

  else
  {
    v1 = 0;
  }

  if (*(v1 + 8))
  {
    v2 = *v1;
    v3 = *(v1 + 16);
    if (v3)
    {
      v4 = 56 * v3;
      v5 = v2;
      while (*(v5 + 8) >= 0xFFFFFFFFFFFFFFFELL)
      {
        v5 += 56;
        v4 -= 56;
        if (!v4)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
      v5 = v2;
    }

    v6 = v2 + 56 * v3;
    if (v5 != v6)
    {
      operator new();
    }
  }

LABEL_13:
  std::__introsort<std::_ClassicAlgPolicy,llvm::json::sortedElements(llvm::json::Object const&)::$_0 &,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value> const**,false>(0, 0, 0, 1);
}

uint64_t llvm::KnownBits::computeForAddCarry@<X0>(llvm::KnownBits *this@<X0>, const llvm::KnownBits *a2@<X1>, const llvm::KnownBits *a3@<X2>, const llvm::KnownBits *a4@<X8>)
{
  v9 = *(a3 + 2);
  if (v9 > 0x40)
  {
    v10 = llvm::APInt::countLeadingZerosSlowCase(a3) == v9;
    v11 = *(a3 + 6);
    if (v11 > 0x40)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = *a3 == 0;
    v11 = *(a3 + 6);
    if (v11 > 0x40)
    {
LABEL_3:
      v12 = llvm::APInt::countLeadingZerosSlowCase((a3 + 16)) == v11;
      goto LABEL_6;
    }
  }

  v12 = *(a3 + 2) == 0;
LABEL_6:
  v13 = v12;

  return computeForAddCarry(a4, this, a2, !v10, v13 ^ 1u);
}

uint64_t computeForAddCarry(const llvm::KnownBits *a1, const llvm::KnownBits *a2, llvm::APInt *a3, int a4, unsigned int a5)
{
  v10 = *(a2 + 2);
  v71 = v10;
  if (v10 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v70, a2);
  }

  v11 = 0xFFFFFFFFFFFFFFFFLL >> -v10;
  if (!v10)
  {
    v11 = 0;
  }

  v12 = (v11 & ~*a2);
  v67 = v10;
  v66 = v12;
  v13 = *(a3 + 2);
  v71 = v13;
  if (v13 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v70, a3);
  }

  v14 = 0xFFFFFFFFFFFFFFFFLL >> -v13;
  if (!v13)
  {
    v14 = 0;
  }

  v15 = (v14 & ~*a3);
  v65 = v13;
  v64 = v15;
  llvm::APInt::operator+=(&v64, &v66);
  v69 = v65;
  v68 = v64;
  v65 = 0;
  llvm::APInt::operator+=(&v68, a4 ^ 1u);
  v71 = v69;
  v70 = v68;
  v69 = 0;
  if (v65 >= 0x41 && v64)
  {
    MEMORY[0x259C63150](v64, 0x1000C8000313F17);
  }

  if (v67 >= 0x41 && v66)
  {
    MEMORY[0x259C63150](v66, 0x1000C8000313F17);
  }

  v65 = *(a2 + 6);
  if (v65 > 0x40)
  {
    llvm::APInt::initSlowCase(&v64, (a2 + 16));
  }

  v64 = *(a2 + 2);
  v61 = *(a3 + 6);
  if (v61 > 0x40)
  {
    llvm::APInt::initSlowCase(&v60, (a3 + 16));
  }

  v60 = *(a3 + 2);
  llvm::APInt::operator+=(&v60, &v64);
  v63 = v61;
  v62 = v60;
  v61 = 0;
  result = llvm::APInt::operator+=(&v62, a5);
  v67 = v63;
  v66 = v62;
  v63 = 0;
  if (v61 >= 0x41)
  {
    result = v60;
    if (v60)
    {
      result = MEMORY[0x259C63150](v60, 0x1000C8000313F17);
    }
  }

  if (v65 >= 0x41)
  {
    result = v64;
    if (v64)
    {
      result = MEMORY[0x259C63150](v64, 0x1000C8000313F17);
    }
  }

  v55 = v71;
  if (v71 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v54, &v70);
  }

  v54 = v70 ^ *a2;
  v55 = 0;
  v17 = *a3 ^ v54;
  v56 = v17;
  v59 = v71;
  v57 = 0;
  v18 = 0xFFFFFFFFFFFFFFFFLL >> -v71;
  if (!v71)
  {
    v18 = 0;
  }

  v19 = v18 & ~v17;
  v58 = v19;
  v59 = 0;
  v51 = v67;
  if (v67 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v50, &v66);
  }

  v50 = v66 ^ *(a2 + 2);
  v53 = v67;
  v51 = 0;
  v52 = (*(a3 + 2) ^ v50);
  v65 = v67;
  v64 = v52;
  v53 = 0;
  v20 = *(a2 + 2);
  v49 = v20;
  if (v20 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v48, a2);
  }

  v21 = *a2 | *(a2 + 2);
  v48 = v21;
  v49 = 0;
  v22 = *(a3 + 2);
  v47 = v22;
  if (v22 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v46, a3);
  }

  v46 = (*a3 | *(a3 + 2));
  v61 = v22;
  v60 = v46;
  v47 = 0;
  v43 = v71;
  v42 = v64 | v19;
  v45 = v71;
  v44 = v64 | v19;
  v43 = 0;
  v36 = v60 & v21;
  v37 = 0;
  v38 = (v64 | v19) & v60 & v21;
  v41 = v20;
  v40 = v38;
  v39 = 0;
  *(a1 + 6) = 1;
  *(a1 + 2) = 0;
  v33 = v71;
  v23 = v71;
  v32 = v70;
  v71 = 0;
  if (v23 > 0x40)
  {
    result = llvm::APInt::flipAllBitsSlowCase(&v32);
    v23 = v33;
    v25 = v32;
    v35 = v33;
    v34 = v32;
    v33 = 0;
    if (v35 > 0x40)
    {
      result = llvm::APInt::andAssignSlowCase(&v34, &v40);
      v26 = v35;
      v35 = 0;
      *a1 = v34;
      *(a1 + 2) = v26;
      goto LABEL_45;
    }
  }

  else
  {
    v24 = 0xFFFFFFFFFFFFFFFFLL >> -v23;
    if (!v23)
    {
      v24 = 0;
    }

    v25 = v24 & ~v70;
    v32 = v25;
    v35 = v23;
    v33 = 0;
  }

  v34 = v40 & v25;
  v35 = 0;
  *a1 = v40 & v25;
  *(a1 + 2) = v23;
LABEL_45:
  if (v33 >= 0x41)
  {
    result = v32;
    if (v32)
    {
      result = MEMORY[0x259C63150](v32, 0x1000C8000313F17);
    }
  }

  v31 = v67;
  v27 = v67;
  v30 = v66;
  v67 = 0;
  if (v27 > 0x40)
  {
    result = llvm::APInt::andAssignSlowCase(&v30, &v40);
    v27 = v31;
    v28 = v30;
    v31 = 0;
    if (*(a1 + 6) <= 0x40u)
    {
LABEL_56:
      *(a1 + 2) = v28;
      *(a1 + 6) = v27;
      goto LABEL_57;
    }
  }

  else
  {
    v28 = v40 & v66;
    v30 = v40 & v66;
    v31 = 0;
    if (*(a1 + 6) <= 0x40u)
    {
      goto LABEL_56;
    }
  }

  result = *(a1 + 2);
  if (!result)
  {
    goto LABEL_56;
  }

  result = MEMORY[0x259C63150](result, 0x1000C8000313F17);
  v29 = v31;
  *(a1 + 2) = v28;
  *(a1 + 6) = v27;
  if (v29 >= 0x41)
  {
    result = v30;
    if (v30)
    {
      result = MEMORY[0x259C63150](v30, 0x1000C8000313F17);
    }
  }

LABEL_57:
  if (v41 >= 0x41)
  {
    result = v40;
    if (v40)
    {
      result = MEMORY[0x259C63150](v40, 0x1000C8000313F17);
    }
  }

  if (v45 >= 0x41)
  {
    result = v44;
    if (v44)
    {
      result = MEMORY[0x259C63150](v44, 0x1000C8000313F17);
    }
  }

  if (v61 >= 0x41)
  {
    result = v60;
    if (v60)
    {
      result = MEMORY[0x259C63150](v60, 0x1000C8000313F17);
    }
  }

  if (v65 >= 0x41)
  {
    result = v64;
    if (v64)
    {
      result = MEMORY[0x259C63150](v64, 0x1000C8000313F17);
    }
  }

  if (v67 >= 0x41)
  {
    result = v66;
    if (v66)
    {
      result = MEMORY[0x259C63150](v66, 0x1000C8000313F17);
    }
  }

  if (v71 >= 0x41)
  {
    result = v70;
    if (v70)
    {
      return MEMORY[0x259C63150](v70, 0x1000C8000313F17);
    }
  }

  return result;
}

void llvm::KnownBits::computeForAddSub(llvm::KnownBits *this@<X0>, llvm::KnownBits *a2@<X3>, const llvm::KnownBits *a3@<X4>, int a4@<W1>, int a5@<W2>, void *a6@<X8>)
{
  v9 = a5;
  v10 = this;
  v12 = *(a2 + 2);
  *(a6 + 2) = v12;
  v13 = (a6 + 2);
  v82 = (a6 + 2);
  if (v12 > 0x40)
  {
    llvm::APInt::initSlowCase(a6);
  }

  *a6 = 0;
  *(a6 + 6) = v12;
  v14 = v12;
  a6[2] = 0;
  if (*a2)
  {
    goto LABEL_22;
  }

  v15 = v12;
  v16 = this;
  v17 = *(a2 + 6);
  if (v17 > 0x40)
  {
    if (llvm::APInt::countLeadingZerosSlowCase((a2 + 16)) != v17)
    {
      goto LABEL_18;
    }
  }

  else if (*(a2 + 2))
  {
    goto LABEL_18;
  }

  v18 = *(a3 + 2);
  if (v18 > 0x40)
  {
    v19 = llvm::APInt::countLeadingZerosSlowCase(a3) == v18;
    v13 = v82;
    if (!v19)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v13 = v82;
    if (*a3)
    {
      goto LABEL_18;
    }
  }

  v20 = *(a3 + 6);
  if (v20 > 0x40)
  {
    v19 = llvm::APInt::countLeadingZerosSlowCase((a3 + 16)) == v20;
    v13 = v82;
    if (v19)
    {
      return;
    }
  }

  else
  {
    v13 = v82;
    if (!*(a3 + 2))
    {
      return;
    }
  }

LABEL_18:
  if (!*a2)
  {
    if (v17 > 0x40)
    {
      v10 = v16;
      v12 = v15;
      v9 = a5;
      if (llvm::APInt::countLeadingZerosSlowCase((a2 + 16)) == v17)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v10 = v16;
      v12 = v15;
      v9 = a5;
      if (!*(a2 + 2))
      {
        goto LABEL_45;
      }
    }

LABEL_22:
    v21 = *(a3 + 2);
    if (v21 > 0x40)
    {
      goto LABEL_28;
    }

LABEL_23:
    v22 = *a3;
    if (!*a3)
    {
      goto LABEL_29;
    }

    if ((v10 & 1) == 0)
    {
      v95 = v21;
      v94 = v22;
      v97 = *(a3 + 6);
      if (v97 > 0x40)
      {
        goto LABEL_63;
      }

      goto LABEL_65;
    }

LABEL_36:
    computeForAddCarry(&v94, a2, a3, 1, 0);
    if (*(a6 + 2) >= 0x41u && *a6)
    {
      MEMORY[0x259C63150](*a6, 0x1000C8000313F17);
    }

    *a6 = v94;
    *(a6 + 2) = v95;
    v95 = 0;
    if (*(a6 + 6) >= 0x41u && *v13)
    {
      MEMORY[0x259C63150](*v13, 0x1000C8000313F17);
    }

    a6[2] = v96;
    *(a6 + 6) = v97;
    if (v9)
    {
      goto LABEL_47;
    }

    goto LABEL_139;
  }

  v10 = v16;
  v12 = v15;
  v9 = a5;
  v21 = *(a3 + 2);
  if (v21 <= 0x40)
  {
    goto LABEL_23;
  }

LABEL_28:
  if (llvm::APInt::countLeadingZerosSlowCase(a3) != v21)
  {
    if ((v10 & 1) == 0)
    {
      v95 = v21;
      goto LABEL_64;
    }

    goto LABEL_36;
  }

LABEL_29:
  v23 = *(a3 + 6);
  if (v23 > 0x40)
  {
    if (llvm::APInt::countLeadingZerosSlowCase((a3 + 16)) == v23)
    {
      goto LABEL_45;
    }
  }

  else if (!*(a3 + 2))
  {
LABEL_45:
    if ((v9 & 1) == 0)
    {
      goto LABEL_139;
    }

    if (v10)
    {
LABEL_47:
      v91 = *(a2 + 6);
      if (v91 > 0x40)
      {
        llvm::APInt::initSlowCase(&v90, (a2 + 16));
      }

      v90 = *(a2 + 2);
      v89 = *(a3 + 6);
      if (v89 > 0x40)
      {
        llvm::APInt::initSlowCase(&v88, (a3 + 16));
      }

      v88 = *(a3 + 2);
      llvm::APInt::uadd_sat(&v90, &v88, &v94);
      if (v89 >= 0x41 && v88)
      {
        MEMORY[0x259C63150](v88, 0x1000C8000313F17);
      }

      if (v91 >= 0x41 && v90)
      {
        MEMORY[0x259C63150](v90, 0x1000C8000313F17);
      }

      if (a4)
      {
        v24 = v12 - 1;
        llvm::APInt::trunc(&v94, v12 - 1, &v90);
        if (v91 > 0x40)
        {
          v25 = llvm::APInt::countLeadingOnesSlowCase(&v90);
          if (v90)
          {
            MEMORY[0x259C63150](v90, 0x1000C8000313F17);
          }
        }

        else
        {
          if (!v91)
          {
            goto LABEL_116;
          }

          v25 = __clz(~(v90 << -v91));
        }

        if (v25)
        {
          v30 = v24 - v25;
          if (v24 <= 0x40 && v30 <= 0x3F)
          {
            v31 = 0xFFFFFFFFFFFFFFFFLL >> (v30 - v12 + 65) << v30;
            if (*(a6 + 6) > 0x40u)
            {
              **v13 |= v31;
              v32 = v95;
              if (v95 > 0x40)
              {
                goto LABEL_130;
              }
            }

            else
            {
              *v13 |= v31;
              v32 = v95;
              if (v95 > 0x40)
              {
LABEL_130:
                v40 = llvm::APInt::countLeadingOnesSlowCase(&v94);
                if (!v40)
                {
                  goto LABEL_134;
                }

LABEL_131:
                v43 = *(a6 + 6);
                v44 = v43 - v40;
                if (v43 <= 0x40 && v44 <= 0x3F)
                {
                  *v13 |= 0xFFFFFFFFFFFFFFFFLL >> -v40 << v44;
                  goto LABEL_134;
                }

                llvm::APInt::setBitsSlowCase(v13, v44, v43);
                if (v95 < 0x41)
                {
                  goto LABEL_139;
                }

LABEL_137:
                if (v94)
                {
                  MEMORY[0x259C63150](v94, 0x1000C8000313F17);
                }

                goto LABEL_139;
              }
            }

LABEL_117:
            if (!v32)
            {
              goto LABEL_139;
            }

            v40 = __clz(~(v94 << -v32));
            if (!v40)
            {
LABEL_134:
              if (v32 < 0x41)
              {
                goto LABEL_139;
              }

              goto LABEL_137;
            }

            goto LABEL_131;
          }

          llvm::APInt::setBitsSlowCase(v13, v30, v12 - 1);
        }
      }

LABEL_116:
      v32 = v95;
      if (v95 > 0x40)
      {
        goto LABEL_130;
      }

      goto LABEL_117;
    }

LABEL_79:
    v95 = v14;
    if (v14 >= 0x41)
    {
      llvm::APInt::initSlowCase(&v94, a2);
    }

    v28 = *a2;
    v29 = 0xFFFFFFFFFFFFFFFFLL >> -v14;
    if (!v14)
    {
      v29 = 0;
    }

    v91 = v14;
    v90 = v29 & ~v28;
    v89 = *(a3 + 6);
    if (v89 > 0x40)
    {
      llvm::APInt::initSlowCase(&v88, (a3 + 16));
    }

    v88 = *(a3 + 2);
    llvm::APInt::usub_sat(&v90, &v88, &v94);
    if (v89 >= 0x41 && v88)
    {
      MEMORY[0x259C63150](v88, 0x1000C8000313F17);
    }

    if (v91 >= 0x41 && v90)
    {
      MEMORY[0x259C63150](v90, 0x1000C8000313F17);
    }

    if (a4)
    {
      v33 = v12 - 1;
      llvm::APInt::trunc(&v94, v12 - 1, &v90);
      if (v91 > 0x40)
      {
        v34 = llvm::APInt::countLeadingZerosSlowCase(&v90);
        if (v90)
        {
          MEMORY[0x259C63150](v90, 0x1000C8000313F17);
        }
      }

      else
      {
        v34 = v91 + __clz(v90) - 64;
      }

      if (v34)
      {
        v35 = v33 - v34;
        if (v33 <= 0x40 && v35 <= 0x3F)
        {
          v36 = 0xFFFFFFFFFFFFFFFFLL >> (v35 - v12 + 65) << v35;
          if (*(a6 + 2) > 0x40u)
          {
            **a6 |= v36;
            v37 = v95;
            if (v95 > 0x40)
            {
              goto LABEL_121;
            }
          }

          else
          {
            *a6 |= v36;
            v37 = v95;
            if (v95 > 0x40)
            {
LABEL_121:
              v39 = llvm::APInt::countLeadingZerosSlowCase(&v94);
              if (v39)
              {
LABEL_122:
                v41 = *(a6 + 2);
                v42 = v41 - v39;
                if (v41 > 0x40 || v42 > 0x3F)
                {
                  llvm::APInt::setBitsSlowCase(a6, v42, v41);
                  if (v95 < 0x41)
                  {
                    goto LABEL_139;
                  }

                  goto LABEL_137;
                }

                *a6 |= 0xFFFFFFFFFFFFFFFFLL >> -v39 << v42;
              }

LABEL_125:
              if (v37 < 0x41)
              {
                goto LABEL_139;
              }

              goto LABEL_137;
            }
          }

LABEL_113:
          v38 = v37 + __clz(v94);
          v39 = v38 - 64;
          if (v38 != 64)
          {
            goto LABEL_122;
          }

          goto LABEL_125;
        }

        llvm::APInt::setBitsSlowCase(a6, v35, v12 - 1);
      }
    }

    v37 = v95;
    if (v95 > 0x40)
    {
      goto LABEL_121;
    }

    goto LABEL_113;
  }

  if (v10)
  {
    goto LABEL_36;
  }

  v95 = v21;
  if (v21 > 0x40)
  {
LABEL_64:
    llvm::APInt::initSlowCase(&v94, a3);
  }

  v94 = *a3;
  v97 = *(a3 + 6);
  if (v97 > 0x40)
  {
LABEL_63:
    llvm::APInt::initSlowCase(&v96, (a3 + 16));
  }

LABEL_65:
  v96 = *(a3 + 2);
  v26 = v95;
  v27 = v94;
  v94 = v96;
  v95 = v97;
  v96 = v27;
  v97 = v26;
  computeForAddCarry(&v90, a2, &v94, 0, 1u);
  if (*(a6 + 2) >= 0x41u && *a6)
  {
    MEMORY[0x259C63150](*a6, 0x1000C8000313F17);
  }

  *a6 = v90;
  *(a6 + 2) = v91;
  v91 = 0;
  if (*(a6 + 6) >= 0x41u && *v13)
  {
    MEMORY[0x259C63150](*v13, 0x1000C8000313F17);
  }

  a6[2] = v92;
  *(a6 + 6) = v93;
  if (v97 >= 0x41 && v96)
  {
    MEMORY[0x259C63150](v96, 0x1000C8000313F17);
  }

  if (v95 >= 0x41 && v94)
  {
    MEMORY[0x259C63150](v94, 0x1000C8000313F17);
  }

  if (v9)
  {
    v14 = *(a2 + 2);
    goto LABEL_79;
  }

LABEL_139:
  if (!a4)
  {
    goto LABEL_242;
  }

  v95 = 1;
  v94 = 0;
  v91 = 1;
  v90 = 0;
  if (v10)
  {
    v87 = *(a2 + 6);
    if (v87 > 0x40)
    {
      llvm::APInt::initSlowCase(&v86, (a2 + 16));
    }

    v86 = *(a2 + 2);
    v45 = *(a2 + 2);
    v46 = v45 - 1;
    if (v45 >= 0x41)
    {
      v47 = (*a2 + 8 * ((v45 - 1) >> 6));
    }

    else
    {
      v47 = a2;
    }

    if ((*v47 >> v46))
    {
      v85 = *(a3 + 6);
      if (v85 <= 0x40)
      {
        goto LABEL_151;
      }
    }

    else
    {
      v86 |= 1 << (v87 - 1);
      v85 = *(a3 + 6);
      if (v85 <= 0x40)
      {
LABEL_151:
        v84 = *(a3 + 2);
        v54 = *(a3 + 2);
        v55 = v54 - 1;
        if (v54 >= 0x41)
        {
          v56 = (*a3 + 8 * ((v54 - 1) >> 6));
        }

        else
        {
          v56 = a3;
        }

        if (((*v56 >> v55) & 1) == 0)
        {
          v84 |= 1 << (v85 - 1);
        }

        llvm::APInt::sadd_sat(&v86, &v84, &v88);
        if (v95 >= 0x41 && v94)
        {
          MEMORY[0x259C63150](v94, 0x1000C8000313F17);
        }

        v94 = v88;
        v95 = v89;
        v89 = 0;
        if (v85 >= 0x41 && v84)
        {
          MEMORY[0x259C63150](v84, 0x1000C8000313F17);
        }

        if (v87 >= 0x41 && v86)
        {
          MEMORY[0x259C63150](v86, 0x1000C8000313F17);
        }

        llvm::KnownBits::getSignedMaxValue(a2, &v86);
        llvm::KnownBits::getSignedMaxValue(a3, &v84);
        llvm::APInt::sadd_sat(&v86, &v84, &v88);
        goto LABEL_193;
      }
    }

    llvm::APInt::initSlowCase(&v84, (a3 + 16));
  }

  v87 = *(a2 + 6);
  if (v87 > 0x40)
  {
    llvm::APInt::initSlowCase(&v86, (a2 + 16));
  }

  v86 = *(a2 + 2);
  v48 = *(a2 + 2);
  v49 = v48 - 1;
  if (v48 >= 0x41)
  {
    v50 = (*a2 + 8 * ((v48 - 1) >> 6));
  }

  else
  {
    v50 = a2;
  }

  if (((*v50 >> v49) & 1) == 0)
  {
    v86 |= 1 << (v87 - 1);
  }

  llvm::KnownBits::getSignedMaxValue(a3, &v84);
  llvm::APInt::ssub_sat(&v86, &v84, &v88);
  if (v95 >= 0x41 && v94)
  {
    MEMORY[0x259C63150](v94, 0x1000C8000313F17);
  }

  v94 = v88;
  v95 = v89;
  v89 = 0;
  if (v85 >= 0x41 && v84)
  {
    MEMORY[0x259C63150](v84, 0x1000C8000313F17);
  }

  if (v87 >= 0x41 && v86)
  {
    MEMORY[0x259C63150](v86, 0x1000C8000313F17);
  }

  llvm::KnownBits::getSignedMaxValue(a2, &v86);
  v85 = *(a3 + 6);
  if (v85 > 0x40)
  {
    llvm::APInt::initSlowCase(&v84, (a3 + 16));
  }

  v84 = *(a3 + 2);
  v51 = *(a3 + 2);
  v52 = v51 - 1;
  if (v51 >= 0x41)
  {
    v53 = (*a3 + 8 * ((v51 - 1) >> 6));
  }

  else
  {
    v53 = a3;
  }

  if (((*v53 >> v52) & 1) == 0)
  {
    v84 |= 1 << (v85 - 1);
  }

  llvm::APInt::ssub_sat(&v86, &v84, &v88);
LABEL_193:
  v57 = v88;
  v90 = v88;
  v58 = v89;
  v91 = v89;
  v89 = 0;
  if (v85 >= 0x41 && v84)
  {
    MEMORY[0x259C63150](v84, 0x1000C8000313F17);
  }

  if (v87 >= 0x41 && v86)
  {
    MEMORY[0x259C63150](v86, 0x1000C8000313F17);
  }

  v59 = v95 - 1;
  v60 = &v94;
  if (v95 >= 0x41)
  {
    v60 = (v94 + 8 * (v59 >> 6));
  }

  if ((*v60 >> v59))
  {
    goto LABEL_218;
  }

  v61 = v12 - 1;
  llvm::APInt::trunc(&v94, v12 - 1, &v88);
  if (v89 > 0x40)
  {
    v62 = llvm::APInt::countLeadingOnesSlowCase(&v88);
    if (v88)
    {
      MEMORY[0x259C63150](v88, 0x1000C8000313F17);
    }

    goto LABEL_207;
  }

  if (v89)
  {
    v62 = __clz(~(v88 << -v89));
LABEL_207:
    if (v62)
    {
      v63 = v61 - v62;
      if (v61 > 0x40 || v63 > 0x3F)
      {
        llvm::APInt::setBitsSlowCase(v82, v63, v12 - 1);
      }

      else
      {
        v64 = 0xFFFFFFFFFFFFFFFFLL >> (v63 - v12 + 65) << v63;
        if (*(a6 + 6) > 0x40u)
        {
          **v82 |= v64;
        }

        else
        {
          *v82 |= v64;
        }
      }
    }
  }

  v65 = *(a6 + 2);
  v66 = v65 - 1;
  if (v65 >= 0x41)
  {
    v67 = (*a6 + 8 * ((v65 - 1) >> 6));
  }

  else
  {
    v67 = a6;
  }

  *v67 |= 1 << v66;
LABEL_218:
  v68 = (v57 + 8 * ((v58 - 1) >> 6));
  if (v58 < 0x41)
  {
    v68 = &v90;
  }

  if ((*v68 >> (v58 - 1)))
  {
    v69 = v12 - 1;
    llvm::APInt::trunc(&v90, v12 - 1, &v88);
    if (v89 > 0x40)
    {
      v70 = llvm::APInt::countLeadingZerosSlowCase(&v88);
      v71 = v82;
      if (v88)
      {
        MEMORY[0x259C63150](v88, 0x1000C8000313F17);
      }
    }

    else
    {
      v70 = v89 + __clz(v88) - 64;
      v71 = v82;
    }

    if (v70)
    {
      v72 = v69 - v70;
      if (v69 > 0x40 || v72 > 0x3F)
      {
        llvm::APInt::setBitsSlowCase(a6, v72, v12 - 1);
      }

      else
      {
        v73 = 0xFFFFFFFFFFFFFFFFLL >> (v72 - v12 + 65) << v72;
        if (*(a6 + 2) > 0x40u)
        {
          **a6 |= v73;
        }

        else
        {
          *a6 |= v73;
        }
      }
    }

    v74 = *(a6 + 6);
    v75 = v74 - 1;
    if (v74 >= 0x41)
    {
      v76 = (a6[2] + 8 * ((v74 - 1) >> 6));
    }

    else
    {
      v76 = v71;
    }

    *v76 |= 1 << v75;
    v58 = v91;
  }

  if (v58 >= 0x41 && v90)
  {
    MEMORY[0x259C63150](v90, 0x1000C8000313F17);
  }

  v13 = v82;
  if (v95 >= 0x41 && v94)
  {
    MEMORY[0x259C63150](v94, 0x1000C8000313F17);
  }

LABEL_242:
  v77 = *(a6 + 2);
  if (v77 > 0x40)
  {
    if (!llvm::APInt::intersectsSlowCase(a6, v13))
    {
      return;
    }

    memset(*a6, 255, ((v77 + 63) >> 3) & 0x3FFFFFF8);
    LODWORD(v77) = *(a6 + 2);
    if (v77)
    {
      goto LABEL_245;
    }
  }

  else
  {
    if ((a6[2] & *a6) == 0)
    {
      return;
    }

    *a6 = -1;
    if (v77)
    {
LABEL_245:
      v78 = 0xFFFFFFFFFFFFFFFFLL >> -v77;
      if (v77 >= 0x41)
      {
        v79 = (*a6 + 8 * (((v77 + 63) >> 6) - 1));
      }

      else
      {
        v79 = a6;
      }

      goto LABEL_251;
    }
  }

  v78 = 0;
  v79 = a6;
LABEL_251:
  *v79 &= v78;
  v80 = *(a6 + 6);
  if (v80 > 0x40)
  {
    bzero(*v13, ((v80 + 63) >> 3) & 0x3FFFFFF8);
  }

  else
  {
    *v13 = 0;
  }
}

uint64_t llvm::KnownBits::getSignedMinValue@<X0>(uint64_t this@<X0>, llvm::APInt *a2@<X8>)
{
  v2 = this;
  v4 = *(this + 24);
  *(a2 + 2) = v4;
  if (v4 > 0x40)
  {
    llvm::APInt::initSlowCase(a2, (this + 16));
  }

  *a2 = *(this + 16);
  v5 = *(this + 8);
  v6 = v5 - 1;
  if (v5 >= 0x41)
  {
    v2 = (*this + 8 * (v6 >> 6));
  }

  if (((*v2 >> v6) & 1) == 0)
  {
    v7 = *(a2 + 2);
    v8 = v7 - 1;
    if (v7 >= 0x41)
    {
      v9 = (*a2 + 8 * ((v7 - 1) >> 6));
    }

    else
    {
      v9 = a2;
    }

    *v9 |= 1 << v8;
  }

  return this;
}

_DWORD *llvm::KnownBits::getSignedMaxValue@<X0>(_DWORD *this@<X0>, uint64_t a2@<X8>)
{
  v3 = this[2];
  v10 = v3;
  if (v3 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v9, this);
  }

  v4 = 0xFFFFFFFFFFFFFFFFLL >> -v3;
  if (!v3)
  {
    v4 = 0;
  }

  v9 = v4 & ~*this;
  v5 = v9;
  *(a2 + 8) = v3;
  *a2 = v5;
  v10 = 0;
  v6 = this + 4;
  v7 = this[6];
  v8 = v7 - 1;
  if (v7 < 0x41)
  {
    if ((*v6 >> v8))
    {
      return this;
    }

LABEL_9:
    *a2 &= ~(1 << (v3 - 1));
    return this;
  }

  if (((*(*v6 + 8 * (v8 >> 6)) >> v8) & 1) == 0)
  {
    goto LABEL_9;
  }

  return this;
}

uint64_t llvm::KnownBits::computeForSubBorrow@<X0>(const llvm::KnownBits *a1@<X0>, uint64_t *a2@<X1>, _DWORD *a3@<X2>, const llvm::KnownBits *a4@<X8>)
{
  v8 = *(a2 + 2);
  v9 = *a2;
  *a2 = a2[2];
  *(a2 + 2) = *(a2 + 6);
  a2[2] = v9;
  *(a2 + 6) = v8;
  v10 = a3[6];
  if (v10 > 0x40)
  {
    v11 = llvm::APInt::countLeadingZerosSlowCase((a3 + 4)) == v10;
    v12 = a3[2];
    if (v12 > 0x40)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = *(a3 + 2) == 0;
    v12 = a3[2];
    if (v12 > 0x40)
    {
LABEL_3:
      v13 = llvm::APInt::countLeadingZerosSlowCase(a3) == v12;
      goto LABEL_6;
    }
  }

  v13 = *a3 == 0;
LABEL_6:
  v14 = v13;

  return computeForAddCarry(a4, a1, a2, !v11, v14 ^ 1u);
}

_DWORD *llvm::KnownBits::sextInReg@<X0>(_DWORD *this@<X0>, unsigned int a2@<W1>, _DWORD *a3@<X8>)
{
  v3 = this;
  v5 = this[2];
  v6 = v5 - a2;
  if (v5 == a2)
  {
    a3[2] = a2;
    if (a2 > 0x40)
    {
      llvm::APInt::initSlowCase(a3, this);
    }

    *a3 = *this;
    v7 = this[6];
    a3[6] = v7;
    if (v7 > 0x40)
    {

      llvm::APInt::initSlowCase((a3 + 4), (this + 4));
    }

    *(a3 + 2) = *(this + 2);
    return this;
  }

  a3[2] = 1;
  *(a3 + 2) = 0;
  v8 = (a3 + 4);
  *a3 = 0;
  a3[6] = 1;
  v9 = (this + 4);
  v10 = this[6];
  v31 = v10;
  if (v10 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v30, v9);
  }

  v11 = *v9 << v6;
  if (v10 == v6)
  {
    v11 = 0;
  }

  if (v10)
  {
    v12 = 0xFFFFFFFFFFFFFFFFLL >> -v10;
  }

  else
  {
    v12 = 0;
  }

  v30 = v12 & v11;
  if (a3[6] >= 0x41u)
  {
    this = *v8;
    if (*v8)
    {
      this = MEMORY[0x259C63150](this, 0x1000C8000313F17);
    }
  }

  *(a3 + 2) = v30;
  a3[6] = v31;
  v13 = *(v3 + 2);
  v31 = v13;
  if (v13 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v30, v3);
  }

  v14 = *v3 << v6;
  if (v13 == v6)
  {
    v14 = 0;
  }

  if (v13)
  {
    v15 = 0xFFFFFFFFFFFFFFFFLL >> -v13;
  }

  else
  {
    v15 = 0;
  }

  v30 = v15 & v14;
  if (a3[2] >= 0x41u)
  {
    this = *a3;
    if (*a3)
    {
      this = MEMORY[0x259C63150](this, 0x1000C8000313F17);
    }
  }

  *a3 = v30;
  v16 = v31;
  a3[2] = v31;
  v17 = a3[6];
  if (v17 > 0x40)
  {
    this = llvm::APInt::ashrSlowCase(a3 + 4, v6);
    v16 = a3[2];
    if (v16 > 0x40)
    {
      return llvm::APInt::ashrSlowCase(a3, v6);
    }
  }

  else
  {
    if (v17 == v6)
    {
      v18 = 63;
    }

    else
    {
      v18 = v6;
    }

    v19 = -v17;
    v20 = v17 == 0;
    if (v17)
    {
      v21 = (*v8 << -v17) >> -v17;
    }

    else
    {
      v21 = 0;
    }

    v22 = v21 >> v18;
    v23 = 0xFFFFFFFFFFFFFFFFLL >> v19;
    if (v20)
    {
      v23 = 0;
    }

    *v8 = v22 & v23;
    if (v16 > 0x40)
    {
      return llvm::APInt::ashrSlowCase(a3, v6);
    }
  }

  if (v16 == v6)
  {
    v24 = 63;
  }

  else
  {
    v24 = v6;
  }

  v25 = -v16;
  v26 = v16 == 0;
  if (v16)
  {
    v27 = (*a3 << -v16) >> -v16;
  }

  else
  {
    v27 = 0;
  }

  v28 = v27 >> v24;
  v29 = 0xFFFFFFFFFFFFFFFFLL >> v25;
  if (v26)
  {
    v29 = 0;
  }

  *a3 = v28 & v29;
  return this;
}

_DWORD *llvm::KnownBits::umax@<X0>(llvm::KnownBits *this@<X0>, const llvm::KnownBits *a2@<X1>, _DWORD *a3@<X8>)
{
  v22 = *(this + 6);
  if (v22 > 0x40)
  {
    llvm::APInt::initSlowCase(&v21, (this + 16));
  }

  v21 = *(this + 2);
  v7 = *(a2 + 2);
  v26 = v7;
  if (v7 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v25, a2);
  }

  v8 = *a2;
  v9 = 0xFFFFFFFFFFFFFFFFLL >> -v7;
  if (!v7)
  {
    v9 = 0;
  }

  v30 = v7;
  v29 = v9 & ~v8;
  result = llvm::APInt::compare(&v21, &v29);
  v11 = result;
  if (v22 >= 0x41)
  {
    result = v21;
    if (v21)
    {
      result = MEMORY[0x259C63150](v21, 0x1000C8000313F17);
    }
  }

  if ((v11 & 0x80000000) == 0)
  {
    v12 = *(this + 2);
    a3[2] = v12;
    if (v12 > 0x40)
    {
      llvm::APInt::initSlowCase(a3, this);
    }

    *a3 = *this;
    v13 = *(this + 6);
    a3[6] = v13;
    if (v13 > 0x40)
    {
      llvm::APInt::initSlowCase((a3 + 4), (this + 16));
    }

    v15 = *(this + 2);
LABEL_33:
    *(a3 + 2) = v15;
    return result;
  }

  v22 = *(a2 + 6);
  if (v22 > 0x40)
  {
    llvm::APInt::initSlowCase(&v21, (a2 + 16));
  }

  v21 = *(a2 + 2);
  v14 = *(this + 2);
  v26 = v14;
  if (v14 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v25, this);
  }

  v16 = *this;
  v17 = 0xFFFFFFFFFFFFFFFFLL >> -v14;
  if (!v14)
  {
    v17 = 0;
  }

  v30 = v14;
  v29 = v17 & ~v16;
  result = llvm::APInt::compare(&v21, &v29);
  v18 = result;
  if (v22 >= 0x41)
  {
    result = v21;
    if (v21)
    {
      result = MEMORY[0x259C63150](v21, 0x1000C8000313F17);
    }
  }

  if ((v18 & 0x80000000) == 0)
  {
    v19 = *(a2 + 2);
    a3[2] = v19;
    if (v19 > 0x40)
    {
      llvm::APInt::initSlowCase(a3, a2);
    }

    *a3 = *a2;
    v20 = *(a2 + 6);
    a3[6] = v20;
    if (v20 > 0x40)
    {
      llvm::APInt::initSlowCase((a3 + 4), (a2 + 16));
    }

    v15 = *(a2 + 2);
    goto LABEL_33;
  }

  v22 = *(a2 + 6);
  if (v22 > 0x40)
  {
    llvm::APInt::initSlowCase(&v21, (a2 + 16));
  }

  v21 = *(a2 + 2);
  llvm::KnownBits::makeGE(this, &v21, &v25);
  if (v22 >= 0x41 && v21)
  {
    MEMORY[0x259C63150](v21, 0x1000C8000313F17);
  }

  v30 = *(this + 6);
  if (v30 > 0x40)
  {
    llvm::APInt::initSlowCase(&v29, (this + 16));
  }

  v29 = *(this + 2);
  llvm::KnownBits::makeGE(a2, &v29, &v21);
  if (v30 >= 0x41 && v29)
  {
    MEMORY[0x259C63150](v29, 0x1000C8000313F17);
  }

  result = llvm::KnownBits::intersectWith(&v25, &v21, a3);
  if (v24 >= 0x41)
  {
    result = v23;
    if (v23)
    {
      result = MEMORY[0x259C63150](v23, 0x1000C8000313F17);
    }
  }

  if (v22 >= 0x41)
  {
    result = v21;
    if (v21)
    {
      result = MEMORY[0x259C63150](v21, 0x1000C8000313F17);
    }
  }

  if (v28 >= 0x41)
  {
    result = v27;
    if (v27)
    {
      result = MEMORY[0x259C63150](v27, 0x1000C8000313F17);
    }
  }

  if (v26 >= 0x41)
  {
    result = v25;
    if (v25)
    {
      return MEMORY[0x259C63150](v25, 0x1000C8000313F17);
    }
  }

  return result;
}

_DWORD *llvm::KnownBits::intersectWith@<X0>(_DWORD *this@<X0>, const llvm::KnownBits *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = this[2];
  v13 = v5;
  if (v5 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v12, this);
  }

  v6 = (*this & *a2);
  v12 = v6;
  v13 = 0;
  v7 = (this + 4);
  v8 = this[6];
  v11 = v8;
  if (v8 > 0x40)
  {
    llvm::APInt::initSlowCase(&v10, v7);
  }

  v9 = *v7 & *(a2 + 2);
  v10 = v9;
  v11 = 0;
  *(a3 + 8) = v5;
  *a3 = v6;
  *(a3 + 24) = v8;
  *(a3 + 16) = v9;
  if (v13 >= 0x41)
  {
    this = v12;
    if (v12)
    {
      return MEMORY[0x259C63150](v12, 0x1000C8000313F17);
    }
  }

  return this;
}

_DWORD *llvm::KnownBits::umin@<X0>(llvm::KnownBits *this@<X0>, const llvm::KnownBits *a2@<X1>, uint64_t a3@<X8>)
{
  v21 = *(this + 6);
  if (v21 > 0x40)
  {
    llvm::APInt::initSlowCase(&v20, (this + 16));
  }

  v20 = *(this + 2);
  v5 = *(this + 2);
  v13 = v5;
  if (v5 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v12, this);
  }

  v6 = *this;
  v17 = v21;
  v16 = v20;
  v19 = v5;
  v18 = v6;
  v21 = *(a2 + 6);
  if (v21 > 0x40)
  {
    llvm::APInt::initSlowCase(&v20, (a2 + 16));
  }

  v20 = *(a2 + 2);
  v7 = *(a2 + 2);
  v27 = v7;
  if (v7 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v26, a2);
  }

  v8 = *a2;
  v13 = v21;
  v12 = v20;
  v15 = v7;
  v14 = v8;
  result = llvm::KnownBits::umax(&v16, &v12, &v20);
  v27 = v23;
  if (v23 > 0x40)
  {
    llvm::APInt::initSlowCase(&v26, &v22);
  }

  v26 = v22;
  v10 = v21;
  v25 = v21;
  if (v21 >= 0x41)
  {
    llvm::APInt::initSlowCase(v24, &v20);
  }

  v11 = v20;
  *(a3 + 8) = v27;
  *a3 = v26;
  *(a3 + 24) = v10;
  *(a3 + 16) = v11;
  if (v23 >= 0x41)
  {
    result = v22;
    if (v22)
    {
      result = MEMORY[0x259C63150](v22, 0x1000C8000313F17);
    }
  }

  if (v21 >= 0x41)
  {
    result = v20;
    if (v20)
    {
      result = MEMORY[0x259C63150](v20, 0x1000C8000313F17);
    }
  }

  if (v15 >= 0x41)
  {
    result = v14;
    if (v14)
    {
      result = MEMORY[0x259C63150](v14, 0x1000C8000313F17);
    }
  }

  if (v13 >= 0x41)
  {
    result = v12;
    if (v12)
    {
      result = MEMORY[0x259C63150](v12, 0x1000C8000313F17);
    }
  }

  if (v19 >= 0x41)
  {
    result = v18;
    if (v18)
    {
      result = MEMORY[0x259C63150](v18, 0x1000C8000313F17);
    }
  }

  if (v17 >= 0x41)
  {
    result = v16;
    if (v16)
    {
      return MEMORY[0x259C63150](v16, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t llvm::KnownBits::smax@<X0>(llvm::KnownBits *this@<X0>, const llvm::KnownBits *a2@<X1>, uint64_t a3@<X8>)
{
  llvm::KnownBits::smax(llvm::KnownBits const&,llvm::KnownBits const&)::$_0::operator()(&v11, this);
  llvm::KnownBits::smax(llvm::KnownBits const&,llvm::KnownBits const&)::$_0::operator()(&v7, a2);
  llvm::KnownBits::umax(&v11, &v7, &v15);
  result = llvm::KnownBits::smax(llvm::KnownBits const&,llvm::KnownBits const&)::$_0::operator()(a3, &v15);
  if (v18 >= 0x41)
  {
    result = v17;
    if (v17)
    {
      result = MEMORY[0x259C63150](v17, 0x1000C8000313F17);
    }
  }

  if (v16 >= 0x41)
  {
    result = v15;
    if (v15)
    {
      result = MEMORY[0x259C63150](v15, 0x1000C8000313F17);
    }
  }

  if (v10 >= 0x41)
  {
    result = v9;
    if (v9)
    {
      result = MEMORY[0x259C63150](v9, 0x1000C8000313F17);
    }
  }

  if (v8 >= 0x41)
  {
    result = v7;
    if (v7)
    {
      result = MEMORY[0x259C63150](v7, 0x1000C8000313F17);
    }
  }

  if (v14 >= 0x41)
  {
    result = v13;
    if (v13)
    {
      result = MEMORY[0x259C63150](v13, 0x1000C8000313F17);
    }
  }

  if (v12 >= 0x41)
  {
    result = v11;
    if (v11)
    {
      return MEMORY[0x259C63150](v11, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t llvm::KnownBits::smax(llvm::KnownBits const&,llvm::KnownBits const&)::$_0::operator()(uint64_t result, llvm::APInt *a2)
{
  v2 = *(a2 + 2);
  v3 = v2 - 1;
  v22 = v2;
  if (v2 > 0x40)
  {
    llvm::APInt::initSlowCase(&v21, a2);
  }

  v21 = *a2;
  v4 = (a2 + 16);
  v20 = *(a2 + 6);
  if (v20 > 0x40)
  {
    llvm::APInt::initSlowCase(&v19, v4);
  }

  v19 = *v4;
  v5 = v3 >> 6;
  v6 = 1 << v3;
  v7 = &v21;
  if (v22 >= 0x41)
  {
    v7 = (v21 + 8 * v5);
  }

  if ((*v4 & v6) != 0)
  {
    v8 = *v7 | v6;
  }

  else
  {
    v8 = *v7 & ~v6;
  }

  *v7 = v8;
  v9 = 8 * v5;
  if (*(a2 + 2) >= 0x41u)
  {
    v10 = (*a2 + v9);
  }

  else
  {
    v10 = a2;
  }

  v11 = *v10;
  v12 = (v19 + v9);
  if (v20 < 0x41)
  {
    v12 = &v19;
  }

  if ((v11 & v6) != 0)
  {
    *v12 |= v6;
    v18 = v22;
    if (v22 <= 0x40)
    {
      goto LABEL_17;
    }

LABEL_20:
    llvm::APInt::initSlowCase(&v17, &v21);
  }

  *v12 &= ~v6;
  v18 = v22;
  if (v22 > 0x40)
  {
    goto LABEL_20;
  }

LABEL_17:
  v17 = v21;
  v13 = v20;
  v16 = v20;
  if (v20 > 0x40)
  {
    llvm::APInt::initSlowCase(&v15, &v19);
  }

  v14 = v19;
  v15 = v19;
  *(result + 8) = v18;
  *result = v17;
  v18 = 0;
  *(result + 24) = v13;
  *(result + 16) = v14;
  v16 = 0;
  if (v20 >= 0x41)
  {
    result = v19;
    if (v19)
    {
      result = MEMORY[0x259C63150](v19, 0x1000C8000313F17);
    }
  }

  if (v22 >= 0x41)
  {
    result = v21;
    if (v21)
    {
      return MEMORY[0x259C63150](v21, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t llvm::KnownBits::smin@<X0>(llvm::KnownBits *this@<X0>, const llvm::KnownBits *a2@<X1>, uint64_t a3@<X8>)
{
  llvm::KnownBits::smin(llvm::KnownBits const&,llvm::KnownBits const&)::$_0::operator()(&v11, this);
  llvm::KnownBits::smin(llvm::KnownBits const&,llvm::KnownBits const&)::$_0::operator()(&v7, a2);
  llvm::KnownBits::umax(&v11, &v7, &v15);
  result = llvm::KnownBits::smin(llvm::KnownBits const&,llvm::KnownBits const&)::$_0::operator()(a3, &v15);
  if (v18 >= 0x41)
  {
    result = v17;
    if (v17)
    {
      result = MEMORY[0x259C63150](v17, 0x1000C8000313F17);
    }
  }

  if (v16 >= 0x41)
  {
    result = v15;
    if (v15)
    {
      result = MEMORY[0x259C63150](v15, 0x1000C8000313F17);
    }
  }

  if (v10 >= 0x41)
  {
    result = v9;
    if (v9)
    {
      result = MEMORY[0x259C63150](v9, 0x1000C8000313F17);
    }
  }

  if (v8 >= 0x41)
  {
    result = v7;
    if (v7)
    {
      result = MEMORY[0x259C63150](v7, 0x1000C8000313F17);
    }
  }

  if (v14 >= 0x41)
  {
    result = v13;
    if (v13)
    {
      result = MEMORY[0x259C63150](v13, 0x1000C8000313F17);
    }
  }

  if (v12 >= 0x41)
  {
    result = v11;
    if (v11)
    {
      return MEMORY[0x259C63150](v11, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t llvm::KnownBits::smin(llvm::KnownBits const&,llvm::KnownBits const&)::$_0::operator()(uint64_t result, llvm::APInt *a2)
{
  v2 = *(a2 + 2);
  v3 = v2 - 1;
  v19 = *(a2 + 6);
  if (v19 > 0x40)
  {
    llvm::APInt::initSlowCase(&v18, (a2 + 16));
  }

  v18 = *(a2 + 2);
  v17 = v2;
  if (v2 > 0x40)
  {
    llvm::APInt::initSlowCase(&v16, a2);
  }

  v16 = *a2;
  v4 = 1 << v3;
  if ((*a2 & (1 << v3)) != 0)
  {
    v5 = v18 | v4;
  }

  else
  {
    v5 = v18 & ~v4;
  }

  v18 = v5;
  v6 = 8 * (v3 >> 6);
  if (*(a2 + 6) >= 0x41u)
  {
    v7 = (*(a2 + 2) + v6);
  }

  else
  {
    v7 = (a2 + 16);
  }

  v8 = *v7;
  v9 = (v16 + v6);
  if (v17 < 0x41)
  {
    v9 = &v16;
  }

  if ((v8 & v4) != 0)
  {
    *v9 |= v4;
    v15 = v19;
    if (v19 <= 0x40)
    {
      goto LABEL_15;
    }

LABEL_18:
    llvm::APInt::initSlowCase(&v14, &v18);
  }

  *v9 &= ~v4;
  v15 = v19;
  if (v19 > 0x40)
  {
    goto LABEL_18;
  }

LABEL_15:
  v14 = v18;
  v10 = v17;
  v13 = v17;
  if (v17 > 0x40)
  {
    llvm::APInt::initSlowCase(&v12, &v16);
  }

  v11 = v16;
  v12 = v16;
  *(result + 8) = v15;
  *result = v14;
  v15 = 0;
  *(result + 24) = v10;
  *(result + 16) = v11;
  v13 = 0;
  if (v17 >= 0x41)
  {
    result = v16;
    if (v16)
    {
      result = MEMORY[0x259C63150](v16, 0x1000C8000313F17);
    }
  }

  if (v19 >= 0x41)
  {
    result = v18;
    if (v18)
    {
      return MEMORY[0x259C63150](v18, 0x1000C8000313F17);
    }
  }

  return result;
}

void llvm::KnownBits::abdu(llvm::KnownBits *this@<X0>, const llvm::KnownBits *a2@<X1>, void *a3@<X8>)
{
  v16 = *(this + 6);
  if (v16 > 0x40)
  {
    llvm::APInt::initSlowCase(&v15, (this + 16));
  }

  v15 = *(this + 2);
  v7 = *(a2 + 2);
  v20 = v7;
  if (v7 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v19, a2);
  }

  v8 = *a2;
  v9 = 0xFFFFFFFFFFFFFFFFLL >> -v7;
  if (!v7)
  {
    v9 = 0;
  }

  v24 = v7;
  v23 = v9 & ~v8;
  v10 = llvm::APInt::compare(&v15, &v23);
  if (v16 >= 0x41 && v15)
  {
    MEMORY[0x259C63150](v15, 0x1000C8000313F17);
  }

  if (v10 < 0)
  {
    v16 = *(a2 + 6);
    if (v16 > 0x40)
    {
      llvm::APInt::initSlowCase(&v15, (a2 + 16));
    }

    v15 = *(a2 + 2);
    v11 = *(this + 2);
    v20 = v11;
    if (v11 >= 0x41)
    {
      llvm::APInt::initSlowCase(&v19, this);
    }

    v12 = *this;
    v13 = 0xFFFFFFFFFFFFFFFFLL >> -v11;
    if (!v11)
    {
      v13 = 0;
    }

    v24 = v11;
    v23 = v13 & ~v12;
    v14 = llvm::APInt::compare(&v15, &v23);
    if (v16 >= 0x41 && v15)
    {
      MEMORY[0x259C63150](v15, 0x1000C8000313F17);
    }

    if (v14 < 0)
    {
      llvm::KnownBits::computeForAddSub(0, this, a2, 0, 1, &v19);
      llvm::KnownBits::computeForAddSub(0, a2, this, 0, 1, &v15);
      llvm::KnownBits::intersectWith(&v19, &v15, a3);
      if (v18 >= 0x41 && v17)
      {
        MEMORY[0x259C63150](v17, 0x1000C8000313F17);
      }

      if (v16 >= 0x41 && v15)
      {
        MEMORY[0x259C63150](v15, 0x1000C8000313F17);
      }

      if (v22 >= 0x41 && v21)
      {
        MEMORY[0x259C63150](v21, 0x1000C8000313F17);
      }

      if (v20 >= 0x41)
      {
        if (v19)
        {
          MEMORY[0x259C63150](v19, 0x1000C8000313F17);
        }
      }
    }

    else
    {
      llvm::KnownBits::computeForAddSub(0, a2, this, 0, 0, a3);
    }
  }

  else
  {
    llvm::KnownBits::computeForAddSub(0, this, a2, 0, 0, a3);
  }
}

void llvm::KnownBits::abds(_DWORD *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = (a1 + 4);
  v43 = a1[6];
  if (v43 > 0x40)
  {
    llvm::APInt::initSlowCase(&v42, v6);
  }

  v42 = *v6;
  v7 = a1[2];
  v8 = v7 - 1;
  v9 = a1;
  if (v7 >= 0x41)
  {
    v9 = (*a1 + 8 * (v8 >> 6));
  }

  if (((*v9 >> v8) & 1) == 0)
  {
    v42 |= 1 << (v43 - 1);
  }

  llvm::KnownBits::getSignedMaxValue(a2, &v38);
  v10 = llvm::APInt::compareSigned(&v42, &v38);
  if (v39 >= 0x41 && v38)
  {
    MEMORY[0x259C63150](v38, 0x1000C8000313F17);
  }

  if (v43 >= 0x41 && v42)
  {
    MEMORY[0x259C63150](v42, 0x1000C8000313F17);
  }

  if ((v10 & 0x80000000) == 0)
  {
    v11 = a3;
    v12 = a1;
    v13 = a2;
LABEL_31:
    llvm::KnownBits::computeForAddSub(0, v12, v13, 0, 0, v11);
    return;
  }

  v14 = a2 + 2;
  v43 = *(a2 + 6);
  if (v43 > 0x40)
  {
    llvm::APInt::initSlowCase(&v42, (a2 + 2));
  }

  v42 = *v14;
  v15 = *(a2 + 2);
  v16 = v15 - 1;
  v17 = a2;
  if (v15 >= 0x41)
  {
    v17 = (*a2 + 8 * (v16 >> 6));
  }

  if (((*v17 >> v16) & 1) == 0)
  {
    v42 |= 1 << (v43 - 1);
  }

  llvm::KnownBits::getSignedMaxValue(a1, &v38);
  v18 = llvm::APInt::compareSigned(&v42, &v38);
  if (v39 >= 0x41 && v38)
  {
    MEMORY[0x259C63150](v38, 0x1000C8000313F17);
  }

  if (v43 >= 0x41 && v42)
  {
    MEMORY[0x259C63150](v42, 0x1000C8000313F17);
  }

  if ((v18 & 0x80000000) == 0)
  {
    v11 = a3;
    v12 = a2;
    v13 = a1;
    goto LABEL_31;
  }

  v19 = a1[2];
  v20 = v19 - 1;
  v21 = (v19 - 1) >> 6;
  if (v19 >= 0x41)
  {
    v22 = 1 << v20;
    v23 = *(*a1 + 8 * v21);
    v24 = v6;
    if (a1[6] < 0x41u)
    {
LABEL_35:
      v25 = ~v22;
      v26 = v23 & v22;
      if ((*v24 & v22) != 0)
      {
        goto LABEL_36;
      }

      goto LABEL_55;
    }
  }

  else
  {
    v22 = 1 << v20;
    v23 = *a1;
    v24 = v6;
    if (a1[6] < 0x41u)
    {
      goto LABEL_35;
    }
  }

  v25 = ~v22;
  v26 = v23 & v22;
  if ((*(*v6 + 8 * v21) & v22) != 0)
  {
LABEL_36:
    v27 = a1;
    if (v19 >= 0x41)
    {
      v27 = (*a1 + 8 * v21);
    }

    *v27 |= v22;
    v28 = a1[6] >= 0x41u;
    if (v26)
    {
      goto LABEL_39;
    }

LABEL_58:
    if (v28)
    {
      v6 = (*v6 + 8 * v21);
    }

    *v6 &= v25;
    v29 = *(a2 + 2);
    v30 = a2;
    if (v29 >= 0x41)
    {
      goto LABEL_43;
    }

    goto LABEL_44;
  }

LABEL_55:
  v36 = a1;
  if (v19 >= 0x41)
  {
    v36 = (*a1 + 8 * v21);
  }

  *v36 &= v25;
  v28 = a1[6] >= 0x41u;
  if (!v26)
  {
    goto LABEL_58;
  }

LABEL_39:
  if (v28)
  {
    v6 = (*v6 + 8 * v21);
  }

  *v6 |= v22;
  v29 = *(a2 + 2);
  v30 = a2;
  if (v29 >= 0x41)
  {
LABEL_43:
    v30 = (*a2 + 8 * v21);
  }

LABEL_44:
  v31 = *v30;
  if (*(a2 + 6) < 0x41u)
  {
    v32 = v31 & v22;
    if ((*v14 & v22) != 0)
    {
      goto LABEL_46;
    }

LABEL_64:
    v37 = a2;
    if (v29 >= 0x41)
    {
      v37 = (*a2 + 8 * v21);
    }

    *v37 &= v25;
    v34 = *(a2 + 6) >= 0x41u;
    if (v32)
    {
      goto LABEL_49;
    }

LABEL_67:
    if (v34)
    {
      v14 = (*v14 + 8 * v21);
    }

    v35 = *v14 & v25;
    goto LABEL_71;
  }

  v32 = v31 & v22;
  if ((*(*v14 + 8 * v21) & v22) == 0)
  {
    goto LABEL_64;
  }

LABEL_46:
  v33 = a2;
  if (v29 >= 0x41)
  {
    v33 = (*a2 + 8 * v21);
  }

  *v33 |= v22;
  v34 = *(a2 + 6) >= 0x41u;
  if (!v32)
  {
    goto LABEL_67;
  }

LABEL_49:
  if (v34)
  {
    v14 = (*v14 + 8 * v21);
  }

  v35 = *v14 | v22;
LABEL_71:
  *v14 = v35;
  llvm::KnownBits::computeForAddSub(0, a1, a2, 0, 1, &v42);
  llvm::KnownBits::computeForAddSub(0, a2, a1, 0, 1, &v38);
  llvm::KnownBits::intersectWith(&v42, &v38, a3);
  if (v41 > 0x40 && v40)
  {
    MEMORY[0x259C63150](v40, 0x1000C8000313F17);
  }

  if (v39 >= 0x41 && v38)
  {
    MEMORY[0x259C63150](v38, 0x1000C8000313F17);
  }

  if (v45 >= 0x41 && v44)
  {
    MEMORY[0x259C63150](v44, 0x1000C8000313F17);
  }

  if (v43 >= 0x41)
  {
    if (v42)
    {
      MEMORY[0x259C63150](v42, 0x1000C8000313F17);
    }
  }
}

void llvm::KnownBits::shl(llvm::KnownBits *this@<X0>, const llvm::KnownBits *a2@<X1>, const llvm::KnownBits *a3@<X2>, int a4@<W3>, unsigned int a5@<W4>, unint64_t *a6@<X8>, int8x8_t a7@<D0>)
{
  v88 = a3;
  v11 = *(this + 2);
  *(a6 + 2) = v11;
  v12 = (a6 + 2);
  if (v11 > 0x40)
  {
    llvm::APInt::initSlowCase(a6);
  }

  *a6 = 0;
  *(a6 + 6) = v11;
  a6[2] = 0;
  v13 = (a2 + 16);
  v96 = *(a2 + 6);
  v14 = (a2 + 16);
  if (v96 > 0x40)
  {
    llvm::APInt::initSlowCase(&v95, v13);
  }

  if (*v14 > v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = *v14;
  }

  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = a5;
  }

  v17 = *(this + 2);
  if (v17 <= 0x40)
  {
    if (*this)
    {
      goto LABEL_18;
    }
  }

  else if (llvm::APInt::countLeadingZerosSlowCase(this) != v17)
  {
    goto LABEL_18;
  }

  v18 = *(this + 6);
  if (v18 <= 0x40)
  {
    if (*(this + 2))
    {
      goto LABEL_18;
    }

LABEL_24:
    if (v16)
    {
      if (v16 <= 0x40)
      {
        v23 = 0xFFFFFFFFFFFFFFFFLL >> -v16;
        if (*(a6 + 2) > 0x40u)
        {
          **a6 |= v23;
          if (v15)
          {
            v24 = 1;
          }

          else
          {
            v24 = a5;
          }

          if (!a4)
          {
            return;
          }
        }

        else
        {
          *a6 |= v23;
          if (v15)
          {
            v24 = 1;
          }

          else
          {
            v24 = a5;
          }

          if (!a4)
          {
            return;
          }
        }

LABEL_153:
        if (v24 && v88)
        {
          v73 = *(a6 + 2);
          v74 = v73 - 1;
          if (v73 >= 0x41)
          {
            v75 = (*a6 + 8 * ((v73 - 1) >> 6));
          }

          else
          {
            v75 = a6;
          }

          *v75 |= 1 << v74;
        }

        return;
      }

      llvm::APInt::setBitsSlowCase(a6, 0, v16);
    }

    if (v15)
    {
      v24 = 1;
    }

    else
    {
      v24 = a5;
    }

    if (!a4)
    {
      return;
    }

    goto LABEL_153;
  }

  if (llvm::APInt::countLeadingZerosSlowCase((this + 16)) == v18)
  {
    goto LABEL_24;
  }

LABEL_18:
  v86 = v13;
  v19 = *(a2 + 2);
  v96 = v19;
  v89 = v12;
  v87 = a5;
  if (v19 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v95, a2);
  }

  v21 = 0xFFFFFFFFFFFFFFFFLL >> -v19;
  if (!v19)
  {
    v21 = 0;
  }

  v20 = *a2;
  v22 = v21 & ~*a2;
  v100 = v19;
  v99 = v21 & ~v20;
  a7.i32[0] = v11;
  v25 = vcnt_s8(a7);
  v25.i16[0] = vaddlv_u8(v25);
  v26 = v25.i32[0];
  if (v25.i32[0] == 1)
  {
    LODWORD(v27) = llvm::APInt::extractBitsAsZExtValue(&v99, 31 - __clz(v11), 0);
  }

  else
  {
    v27 = (v11 - 1);
    if (v22 <= v27)
    {
      LODWORD(v27) = v22;
    }
  }

  if (!v88)
  {
    if (!a4)
    {
      goto LABEL_50;
    }

    goto LABEL_43;
  }

  if (a4)
  {
    v28 = *(this + 6);
    if (v28 <= 0x40)
    {
      v29 = v28 + __clz(*(this + 2)) - 65;
      if (v29 < v27)
      {
        LODWORD(v27) = v29;
      }

LABEL_47:
      v34 = v28 + __clz(*(this + 2)) - 64;
      if (v34 < v27)
      {
        LODWORD(v27) = v34;
      }

      if (!a4)
      {
        goto LABEL_50;
      }

      goto LABEL_43;
    }

    v56 = llvm::APInt::countLeadingZerosSlowCase((this + 16)) - 1;
    if (v56 < v27)
    {
      LODWORD(v27) = v56;
    }
  }

  else
  {
    v28 = *(this + 6);
    if (v28 <= 0x40)
    {
      goto LABEL_47;
    }
  }

  v57 = llvm::APInt::countLeadingZerosSlowCase((this + 16));
  if (v57 < v27)
  {
    LODWORD(v27) = v57;
  }

  if (!a4)
  {
LABEL_50:
    if (v26 != 1 || v15 != 0)
    {
      goto LABEL_73;
    }

    goto LABEL_67;
  }

LABEL_43:
  v30 = *(this + 6);
  if (v30 > 0x40)
  {
    v31 = llvm::APInt::countLeadingZerosSlowCase((this + 16));
    v32 = *(this + 2);
    if (v32 > 0x40)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v31 = v30 + __clz(*(this + 2)) - 64;
    v32 = *(this + 2);
    if (v32 > 0x40)
    {
LABEL_45:
      v33 = llvm::APInt::countLeadingZerosSlowCase(this);
      goto LABEL_57;
    }
  }

  v33 = v32 + __clz(*this) - 64;
LABEL_57:
  if (v31 <= v33)
  {
    v36 = v33;
  }

  else
  {
    v36 = v31;
  }

  v37 = v36 - 1;
  if (v37 < v27)
  {
    LODWORD(v27) = v37;
  }

  if (v26 != 1 || v15 != 0)
  {
LABEL_73:
    llvm::APInt::zextOrTrunc(a2, 0x20u, &v95);
    if (v96 > 0x40)
    {
      v42 = *v95;
      MEMORY[0x259C63150](v95);
    }

    else
    {
      LODWORD(v42) = v95;
    }

    llvm::APInt::zextOrTrunc(v86, 0x20u, &v95);
    if (v96 > 0x40)
    {
      v44 = *v95;
      MEMORY[0x259C63150]();
      v45 = *(a6 + 2);
      if (v45 > 0x40)
      {
        goto LABEL_83;
      }
    }

    else
    {
      LODWORD(v44) = v95;
      v45 = *(a6 + 2);
      if (v45 > 0x40)
      {
LABEL_83:
        memset(*a6, 255, ((v45 + 63) >> 3) & 0x3FFFFFF8);
        LODWORD(v45) = *(a6 + 2);
        goto LABEL_86;
      }
    }

    *a6 = -1;
LABEL_86:
    if (v45)
    {
      v46 = 0xFFFFFFFFFFFFFFFFLL >> -v45;
      if (v45 >= 0x41)
      {
        v48 = (*a6 + 8 * (((v45 + 63) >> 6) - 1));
        *v48 &= v46;
        v47 = *(a6 + 6);
        if (v47 <= 0x40)
        {
          goto LABEL_89;
        }

        goto LABEL_91;
      }
    }

    else
    {
      v46 = 0;
    }

    *a6 &= v46;
    v47 = *(a6 + 6);
    if (v47 <= 0x40)
    {
LABEL_89:
      *v89 = -1;
      goto LABEL_92;
    }

LABEL_91:
    memset(a6[2], 255, ((v47 + 63) >> 3) & 0x3FFFFFF8);
    LODWORD(v47) = *(a6 + 6);
LABEL_92:
    if (v47)
    {
      v49 = 0xFFFFFFFFFFFFFFFFLL >> -v47;
      if (v47 < 0x41)
      {
        *v89 = (*v89 & v49);
        if (v16 <= v27)
        {
          goto LABEL_167;
        }

LABEL_97:
        v51 = *(a6 + 2);
        if (v51 > 0x40)
        {
          v52 = v89;
          if (!llvm::APInt::intersectsSlowCase(a6, v89))
          {
            goto LABEL_145;
          }

          memset(*a6, 255, ((v51 + 63) >> 3) & 0x3FFFFFF8);
          LODWORD(v51) = *(a6 + 2);
          if (v51)
          {
            goto LABEL_100;
          }
        }

        else
        {
          v52 = v89;
          if ((a6[2] & *a6) == 0)
          {
            goto LABEL_145;
          }

          *a6 = -1;
          if (v51)
          {
LABEL_100:
            v53 = 0xFFFFFFFFFFFFFFFFLL >> -v51;
            if (v51 >= 0x41)
            {
              v54 = (*a6 + 8 * (((v51 + 63) >> 6) - 1));
            }

            else
            {
              v54 = a6;
            }

            goto LABEL_108;
          }
        }

        v53 = 0;
        v54 = a6;
LABEL_108:
        *v54 &= v53;
        v55 = *(a6 + 6);
        if (v55 <= 0x40)
        {
          *v52 = 0;
          goto LABEL_145;
        }

        bzero(*v52, ((v55 + 63) >> 3) & 0x3FFFFFF8);
        if (v100 < 0x41)
        {
          return;
        }

        goto LABEL_146;
      }

      v50 = &(*v89)[((v47 + 63) >> 6) - 1];
      *v50 &= v49;
      if (v16 > v27)
      {
        goto LABEL_97;
      }
    }

    else
    {
      *v89 = 0;
      if (v16 > v27)
      {
        goto LABEL_97;
      }
    }

LABEL_167:
    v76 = 64 - v16;
    while (1)
    {
      if ((v16 & v42) != 0 || v16 != (v16 | v44))
      {
        goto LABEL_169;
      }

      v94 = 1;
      v93 = 0;
      *v101 = 0;
      llvm::APInt::ushl_ov(this, &v101[1], v16, &v95);
      v91 = v95;
      v92 = v96;
      if (v16)
      {
        if (v16 > 0x40)
        {
          llvm::APInt::setBitsSlowCase(&v91, 0, v16);
        }

        else
        {
          v77 = 0xFFFFFFFFFFFFFFFFLL >> v76;
          if (v96 > 0x40)
          {
            *v95 |= v77;
          }

          else
          {
            v91 = v95 | v77;
          }
        }
      }

      llvm::APInt::ushl_ov(this + 16, v101, v16, &v95);
      if (v94 >= 0x41 && v93)
      {
        MEMORY[0x259C63150](v93, 0x1000C8000313F17);
      }

      v78 = v95;
      v93 = v95;
      v94 = v96;
      if (a4)
      {
        if (v16 && (v88 & 1) != 0 || v101[1])
        {
          v79 = v92 - 1;
          v80 = &v91;
          if (v92 >= 0x41)
          {
            v80 = (v91 + 8 * (v79 >> 6));
          }

          *v80 |= 1 << v79;
        }

        else if (v101[0])
        {
          v84 = v96 - 1;
          v85 = &v93;
          if (v96 >= 0x41)
          {
            v85 = (v95 + 8 * (v84 >> 6));
            v78 = *v85;
          }

          *v85 = v78 | (1 << v84);
        }
      }

      llvm::KnownBits::intersectWith(a6, &v91, &v95);
      if (*(a6 + 2) >= 0x41u && *a6)
      {
        MEMORY[0x259C63150](*a6, 0x1000C8000313F17);
      }

      *a6 = v95;
      *(a6 + 2) = v96;
      v96 = 0;
      if (*(a6 + 6) >= 0x41u && *v89)
      {
        MEMORY[0x259C63150](*v89, 0x1000C8000313F17);
        v81 = v96;
        a6[2] = v97;
        *(a6 + 6) = v98;
        v98 = 0;
        if (v81 >= 0x41 && v95)
        {
          MEMORY[0x259C63150](v95, 0x1000C8000313F17);
        }
      }

      else
      {
        a6[2] = v97;
        *(a6 + 6) = v98;
        v98 = 0;
      }

      if (v94 >= 0x41 && v93)
      {
        MEMORY[0x259C63150](v93, 0x1000C8000313F17);
      }

      if (v92 >= 0x41 && v91)
      {
        MEMORY[0x259C63150](v91, 0x1000C8000313F17);
      }

      v82 = *(a6 + 2);
      if (v82 > 0x40)
      {
        if (llvm::APInt::countLeadingZerosSlowCase(a6) != v82)
        {
          goto LABEL_169;
        }
      }

      else if (*a6)
      {
        goto LABEL_169;
      }

      v83 = *(a6 + 6);
      if (v83 > 0x40)
      {
        if (llvm::APInt::countLeadingZerosSlowCase(v89) == v83)
        {
          goto LABEL_97;
        }
      }

      else if (!*v89)
      {
        goto LABEL_97;
      }

LABEL_169:
      ++v16;
      --v76;
      if (v16 > v27)
      {
        goto LABEL_97;
      }
    }
  }

LABEL_67:
  if ((v87 & 1) != 0 || v27 != v11 - 1)
  {
    goto LABEL_73;
  }

  if (*(this + 2) > 0x40u)
  {
    v39 = llvm::APInt::countTrailingOnesSlowCase(this);
    if (!v39)
    {
LABEL_71:
      v40 = (this + 16);
      v41 = *(this + 6);
      if (!v41)
      {
        goto LABEL_123;
      }

      goto LABEL_119;
    }
  }

  else
  {
    v39 = __clz(__rbit64(~*this));
    if (!v39)
    {
      goto LABEL_71;
    }
  }

  if (v39 > 0x40)
  {
    llvm::APInt::setBitsSlowCase(a6, 0, v39);
    v40 = (this + 16);
    v41 = *(this + 6);
    if (!v41)
    {
      goto LABEL_123;
    }
  }

  else
  {
    v43 = 0xFFFFFFFFFFFFFFFFLL >> -v39;
    if (*(a6 + 2) > 0x40u)
    {
      **a6 |= v43;
      v40 = (this + 16);
      v41 = *(this + 6);
      if (!v41)
      {
        goto LABEL_123;
      }
    }

    else
    {
      *a6 |= v43;
      v40 = (this + 16);
      v41 = *(this + 6);
      if (!v41)
      {
        goto LABEL_123;
      }
    }
  }

LABEL_119:
  if (v41 <= 0x40)
  {
    if (*v40 != 0xFFFFFFFFFFFFFFFFLL >> -v41)
    {
      goto LABEL_127;
    }

LABEL_123:
    v58 = *(a6 + 6);
    v59 = v58 - 1;
    if (v58 >= 0x41)
    {
      v60 = (a6[2] + 8 * ((v58 - 1) >> 6));
    }

    else
    {
      v60 = v89;
    }

    *v60 |= 1 << v59;
    goto LABEL_127;
  }

  if (llvm::APInt::countTrailingOnesSlowCase(v40) == v41)
  {
    goto LABEL_123;
  }

LABEL_127:
  if (!a4)
  {
    goto LABEL_145;
  }

  v61 = *(this + 2);
  v62 = v61 - 1;
  if (v61 >= 0x41)
  {
    v63 = (*this + 8 * ((v61 - 1) >> 6));
  }

  else
  {
    v63 = this;
  }

  if ((*v63 >> v62))
  {
    v64 = *(a6 + 2);
    v65 = v64 - 1;
    if (v64 >= 0x41)
    {
      v66 = (*a6 + 8 * ((v64 - 1) >> 6));
    }

    else
    {
      v66 = a6;
    }

    *v66 |= 1 << v65;
  }

  v67 = *(this + 6);
  v68 = v67 - 1;
  v69 = v67 >= 0x41 ? (*(this + 2) + 8 * ((v67 - 1) >> 6)) : v40;
  if (((*v69 >> v68) & 1) == 0)
  {
LABEL_145:
    if (v100 < 0x41)
    {
      return;
    }

    goto LABEL_146;
  }

  v70 = *(a6 + 6);
  v71 = v70 - 1;
  if (v70 >= 0x41)
  {
    v72 = (a6[2] + 8 * ((v70 - 1) >> 6));
  }

  else
  {
    v72 = v89;
  }

  *v72 |= 1 << v71;
  if (v100 >= 0x41)
  {
LABEL_146:
    if (v99)
    {
      MEMORY[0x259C63150](v99, 0x1000C8000313F17);
    }
  }
}

void llvm::KnownBits::lshr(llvm::KnownBits *this@<X0>, const llvm::KnownBits *a2@<X1>, const llvm::KnownBits *a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  v5 = a3;
  v9 = *(this + 2);
  *(a5 + 2) = v9;
  v10 = (a5 + 2);
  if (v9 > 0x40)
  {
    llvm::APInt::initSlowCase(a5);
  }

  *a5 = 0;
  *(a5 + 6) = v9;
  a5[2] = 0;
  v11 = (a2 + 16);
  v53 = *(a2 + 6);
  v12 = (a2 + 16);
  if (v53 > 0x40)
  {
    llvm::APInt::initSlowCase(&v52, v11);
  }

  if (*v12 > v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = *v12;
  }

  if (v13)
  {
    v5 = v13;
  }

  v14 = *(this + 2);
  if (v14 <= 0x40)
  {
    if (*this)
    {
      goto LABEL_17;
    }
  }

  else if (llvm::APInt::countLeadingZerosSlowCase(this) != v14)
  {
    goto LABEL_17;
  }

  v15 = *(this + 6);
  if (v15 > 0x40)
  {
    if (llvm::APInt::countLeadingZerosSlowCase((this + 16)) != v15)
    {
LABEL_17:
      v16 = *(a2 + 2);
      v53 = v16;
      if (v16 >= 0x41)
      {
        llvm::APInt::initSlowCase(&v52, a2);
      }

      v17 = 0xFFFFFFFFFFFFFFFFLL >> -v16;
      if (!v16)
      {
        v17 = 0;
      }

      v18 = v17 & ~*a2;
      v57 = v16;
      v56 = v18;
      v19 = (v9 - 1);
      if ((v9 ^ v19) <= v19)
      {
        v20 = a4;
        if (v18 <= v19)
        {
          LODWORD(v19) = v18;
        }
      }

      else
      {
        LODWORD(v19) = llvm::APInt::extractBitsAsZExtValue(&v56, 31 - __clz(v9), 0);
        v20 = a4;
      }

      if (!v20)
      {
LABEL_38:
        llvm::APInt::zextOrTrunc(a2, 0x20u, &v52);
        if (v53 > 0x40)
        {
          v26 = *v52;
          MEMORY[0x259C63150]();
        }

        else
        {
          LODWORD(v26) = v52;
        }

        llvm::APInt::zextOrTrunc(v11, 0x20u, &v52);
        if (v53 > 0x40)
        {
          v27 = *v52;
          MEMORY[0x259C63150]();
          v28 = *(a5 + 2);
          if (v28 > 0x40)
          {
            goto LABEL_43;
          }
        }

        else
        {
          LODWORD(v27) = v52;
          v28 = *(a5 + 2);
          if (v28 > 0x40)
          {
LABEL_43:
            memset(*a5, 255, ((v28 + 63) >> 3) & 0x3FFFFFF8);
            LODWORD(v28) = *(a5 + 2);
            goto LABEL_46;
          }
        }

        *a5 = -1;
LABEL_46:
        if (v28)
        {
          v29 = 0xFFFFFFFFFFFFFFFFLL >> -v28;
          if (v28 >= 0x41)
          {
            v31 = (*a5 + 8 * (((v28 + 63) >> 6) - 1));
            *v31 &= v29;
            v30 = *(a5 + 6);
            if (v30 <= 0x40)
            {
              goto LABEL_49;
            }

            goto LABEL_51;
          }
        }

        else
        {
          v29 = 0;
        }

        *a5 &= v29;
        v30 = *(a5 + 6);
        if (v30 <= 0x40)
        {
LABEL_49:
          *v10 = -1;
          goto LABEL_52;
        }

LABEL_51:
        memset(a5[2], 255, ((v30 + 63) >> 3) & 0x3FFFFFF8);
        LODWORD(v30) = *(a5 + 6);
LABEL_52:
        if (v30)
        {
          v32 = 0xFFFFFFFFFFFFFFFFLL >> -v30;
          if (v30 < 0x41)
          {
            *v10 = (*v10 & v32);
            if (v5 <= v19)
            {
              goto LABEL_90;
            }

LABEL_57:
            v34 = *(a5 + 2);
            if (v34 > 0x40)
            {
              if (!llvm::APInt::intersectsSlowCase(a5, v10))
              {
                goto LABEL_71;
              }

              memset(*a5, 255, ((v34 + 63) >> 3) & 0x3FFFFFF8);
              LODWORD(v34) = *(a5 + 2);
              if (v34)
              {
                goto LABEL_60;
              }
            }

            else
            {
              if ((a5[2] & *a5) == 0)
              {
                goto LABEL_71;
              }

              *a5 = -1;
              if (v34)
              {
LABEL_60:
                v35 = 0xFFFFFFFFFFFFFFFFLL >> -v34;
                if (v34 >= 0x41)
                {
                  v36 = (*a5 + 8 * (((v34 + 63) >> 6) - 1));
                }

                else
                {
                  v36 = a5;
                }

                goto LABEL_69;
              }
            }

            v35 = 0;
            v36 = a5;
LABEL_69:
            *v36 &= v35;
            v38 = *(a5 + 6);
            if (v38 > 0x40)
            {
              bzero(*v10, ((v38 + 63) >> 3) & 0x3FFFFFF8);
              if (v57 < 0x41)
              {
                return;
              }

LABEL_74:
              if (!v56)
              {
                return;
              }

LABEL_85:
              MEMORY[0x259C63150]();
              return;
            }

            *v10 = 0;
LABEL_71:
            if (v57 < 0x41)
            {
              return;
            }

            goto LABEL_74;
          }

          v33 = &(*v10)[((v30 + 63) >> 6) - 1];
          *v33 &= v32;
          if (v5 > v19)
          {
            goto LABEL_57;
          }
        }

        else
        {
          *v10 = 0;
          if (v5 > v19)
          {
            goto LABEL_57;
          }
        }

LABEL_90:
        v42 = -v5;
        while (1)
        {
          if ((v5 & v26) != 0 || v5 != (v5 | v27))
          {
            goto LABEL_92;
          }

          v49 = *(this + 2);
          if (v49 > 0x40)
          {
            llvm::APInt::initSlowCase(&v48, this);
          }

          v48 = *this;
          v51 = *(this + 6);
          if (v51 > 0x40)
          {
            llvm::APInt::initSlowCase(&v50, (this + 16));
          }

          v50 = *(this + 2);
          if (v5 == v49)
          {
            v48 = 0;
          }

          else
          {
            v48 >>= v5;
          }

          if (v5 == v51)
          {
            v50 = 0;
            if (!v42)
            {
              goto LABEL_110;
            }
          }

          else
          {
            v50 >>= v5;
            if (!v42)
            {
              goto LABEL_110;
            }
          }

          v43 = v42 + v49;
          if (v42 + v49 > 0x3F)
          {
            llvm::APInt::setBitsSlowCase(&v48, v43, v49);
          }

          else
          {
            v48 |= 0xFFFFFFFFFFFFFFFFLL >> v42 << v43;
          }

LABEL_110:
          llvm::KnownBits::intersectWith(a5, &v48, &v52);
          if (*(a5 + 2) >= 0x41u && *a5)
          {
            MEMORY[0x259C63150](*a5, 0x1000C8000313F17);
          }

          *a5 = v52;
          *(a5 + 2) = v53;
          v53 = 0;
          if (*(a5 + 6) >= 0x41u && *v10)
          {
            MEMORY[0x259C63150](*v10, 0x1000C8000313F17);
            v44 = v53;
            a5[2] = v54;
            *(a5 + 6) = v55;
            v55 = 0;
            if (v44 >= 0x41 && v52)
            {
              MEMORY[0x259C63150](v52, 0x1000C8000313F17);
            }
          }

          else
          {
            a5[2] = v54;
            *(a5 + 6) = v55;
            v55 = 0;
          }

          if (v51 >= 0x41 && v50)
          {
            MEMORY[0x259C63150](v50, 0x1000C8000313F17);
          }

          if (v49 >= 0x41 && v48)
          {
            MEMORY[0x259C63150](v48, 0x1000C8000313F17);
          }

          v45 = *(a5 + 2);
          if (v45 > 0x40)
          {
            if (llvm::APInt::countLeadingZerosSlowCase(a5) != v45)
            {
              goto LABEL_92;
            }
          }

          else if (*a5)
          {
            goto LABEL_92;
          }

          v46 = *(a5 + 6);
          if (v46 > 0x40)
          {
            if (llvm::APInt::countLeadingZerosSlowCase(v10) == v46)
            {
              goto LABEL_57;
            }
          }

          else if (!*v10)
          {
            goto LABEL_57;
          }

LABEL_92:
          ++v5;
          --v42;
          if (v5 > v19)
          {
            goto LABEL_57;
          }
        }
      }

      v23 = *(this + 6);
      if (v23 > 0x40)
      {
        v25 = llvm::APInt::countTrailingZerosSlowCase(this + 2);
        if (v25 >= v5)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v24 = __clz(__rbit64(*(this + 2)));
        if (v23 >= v24)
        {
          v25 = v24;
        }

        else
        {
          v25 = *(this + 6);
        }

        if (v25 >= v5)
        {
LABEL_36:
          if (v25 < v19)
          {
            LODWORD(v19) = v25;
          }

          goto LABEL_38;
        }
      }

      v37 = *(a5 + 2);
      if (v37 > 0x40)
      {
        memset(*a5, 255, ((v37 + 63) >> 3) & 0x3FFFFFF8);
        LODWORD(v37) = *(a5 + 2);
      }

      else
      {
        *a5 = -1;
      }

      if (v37)
      {
        v39 = 0xFFFFFFFFFFFFFFFFLL >> -v37;
        if (v37 >= 0x41)
        {
          v41 = (*a5 + 8 * (((v37 + 63) >> 6) - 1));
          *v41 &= v39;
          v40 = *(a5 + 6);
          if (v40 <= 0x40)
          {
LABEL_80:
            *v10 = 0;
            if (v57 < 0x41)
            {
              return;
            }

            goto LABEL_84;
          }

LABEL_83:
          bzero(*v10, ((v40 + 63) >> 3) & 0x3FFFFFF8);
          if (v57 < 0x41)
          {
            return;
          }

LABEL_84:
          if (!v56)
          {
            return;
          }

          goto LABEL_85;
        }
      }

      else
      {
        v39 = 0;
      }

      *a5 &= v39;
      v40 = *(a5 + 6);
      if (v40 <= 0x40)
      {
        goto LABEL_80;
      }

      goto LABEL_83;
    }
  }

  else if (*(this + 2))
  {
    goto LABEL_17;
  }

  if (v5)
  {
    v21 = *(a5 + 2);
    v22 = v21 - v5;
    if (v21 > 0x40 || v22 > 0x3F)
    {
      llvm::APInt::setBitsSlowCase(a5, v22, v21);
    }

    else
    {
      *a5 |= 0xFFFFFFFFFFFFFFFFLL >> -v5 << v22;
    }
  }
}

void llvm::KnownBits::ashr(llvm::KnownBits *this@<X0>, const llvm::KnownBits *a2@<X1>, const llvm::KnownBits *a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  v5 = a3;
  v9 = *(this + 2);
  *(a5 + 2) = v9;
  v10 = (a5 + 2);
  if (v9 > 0x40)
  {
    llvm::APInt::initSlowCase(a5);
  }

  *a5 = 0;
  *(a5 + 6) = v9;
  a5[2] = 0;
  v11 = (a2 + 16);
  v57 = *(a2 + 6);
  v12 = (a2 + 16);
  if (v57 > 0x40)
  {
    llvm::APInt::initSlowCase(&v56, v11);
  }

  if (*v12 > v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = *v12;
  }

  if (v13)
  {
    v5 = v13;
  }

  v14 = *(this + 2);
  if (v14 <= 0x40)
  {
    if (*this)
    {
      goto LABEL_17;
    }
  }

  else if (llvm::APInt::countLeadingZerosSlowCase(this) != v14)
  {
    goto LABEL_17;
  }

  v15 = *(this + 6);
  if (v15 > 0x40)
  {
    if (llvm::APInt::countLeadingZerosSlowCase((this + 16)) != v15)
    {
LABEL_17:
      v16 = *(a2 + 2);
      v57 = v16;
      if (v16 >= 0x41)
      {
        llvm::APInt::initSlowCase(&v56, a2);
      }

      v17 = 0xFFFFFFFFFFFFFFFFLL >> -v16;
      if (!v16)
      {
        v17 = 0;
      }

      v18 = v17 & ~*a2;
      v61 = v16;
      v60 = v18;
      v19 = (v9 - 1);
      if ((v9 ^ v19) <= v19)
      {
        v20 = a4;
        if (v18 <= v19)
        {
          LODWORD(v19) = v18;
        }
      }

      else
      {
        LODWORD(v19) = llvm::APInt::extractBitsAsZExtValue(&v60, 31 - __clz(v9), 0);
        v20 = a4;
      }

      if (!v20)
      {
LABEL_36:
        llvm::APInt::zextOrTrunc(a2, 0x20u, &v56);
        if (v57 > 0x40)
        {
          v24 = *v56;
          MEMORY[0x259C63150]();
        }

        else
        {
          LODWORD(v24) = v56;
        }

        llvm::APInt::zextOrTrunc(v11, 0x20u, &v56);
        if (v57 > 0x40)
        {
          v25 = *v56;
          MEMORY[0x259C63150]();
          v26 = *(a5 + 2);
          if (v26 > 0x40)
          {
            goto LABEL_41;
          }
        }

        else
        {
          LODWORD(v25) = v56;
          v26 = *(a5 + 2);
          if (v26 > 0x40)
          {
LABEL_41:
            memset(*a5, 255, ((v26 + 63) >> 3) & 0x3FFFFFF8);
            LODWORD(v26) = *(a5 + 2);
            goto LABEL_44;
          }
        }

        *a5 = -1;
LABEL_44:
        if (v26)
        {
          v27 = 0xFFFFFFFFFFFFFFFFLL >> -v26;
          if (v26 >= 0x41)
          {
            v29 = (*a5 + 8 * (((v26 + 63) >> 6) - 1));
            *v29 &= v27;
            v28 = *(a5 + 6);
            if (v28 <= 0x40)
            {
              goto LABEL_47;
            }

            goto LABEL_49;
          }
        }

        else
        {
          v27 = 0;
        }

        *a5 &= v27;
        v28 = *(a5 + 6);
        if (v28 <= 0x40)
        {
LABEL_47:
          *v10 = -1;
          goto LABEL_50;
        }

LABEL_49:
        memset(a5[2], 255, ((v28 + 63) >> 3) & 0x3FFFFFF8);
        LODWORD(v28) = *(a5 + 6);
LABEL_50:
        if (v28)
        {
          v30 = 0xFFFFFFFFFFFFFFFFLL >> -v28;
          if (v28 >= 0x41)
          {
            v31 = (*v10 + 8 * (((v28 + 63) >> 6) - 1));
            *v31 &= v30;
            if (v5 <= v19)
            {
              goto LABEL_90;
            }
          }

          else
          {
            *v10 &= v30;
            while (v5 <= v19)
            {
LABEL_90:
              if ((v5 & v24) != 0 || v5 != (v5 | v25))
              {
                goto LABEL_89;
              }

              v53 = *(this + 2);
              if (v53 > 0x40)
              {
                llvm::APInt::initSlowCase(&v52, this);
              }

              v52 = *this;
              v55 = *(this + 6);
              if (v55 > 0x40)
              {
                llvm::APInt::initSlowCase(&v54, (this + 16));
              }

              v54 = *(this + 2);
              if (v5 == v53)
              {
                v40 = 63;
              }

              else
              {
                v40 = v5;
              }

              if (v53)
              {
                v41 = (v52 << -v53) >> -v53;
              }

              else
              {
                v41 = 0;
              }

              v42 = v41 >> v40;
              v43 = 0xFFFFFFFFFFFFFFFFLL >> -v53;
              if (!v53)
              {
                v43 = 0;
              }

              v52 = v42 & v43;
              if (v5 == v55)
              {
                v44 = 63;
              }

              else
              {
                v44 = v5;
              }

              if (v55)
              {
                v45 = (v54 << -v55) >> -v55;
              }

              else
              {
                v45 = 0;
              }

              v46 = v45 >> v44;
              v47 = 0xFFFFFFFFFFFFFFFFLL >> -v55;
              if (!v55)
              {
                v47 = 0;
              }

              v54 = v46 & v47;
              llvm::KnownBits::intersectWith(a5, &v52, &v56);
              if (*(a5 + 2) >= 0x41u && *a5)
              {
                MEMORY[0x259C63150](*a5, 0x1000C8000313F17);
              }

              *a5 = v56;
              *(a5 + 2) = v57;
              v57 = 0;
              if (*(a5 + 6) >= 0x41u && *v10)
              {
                MEMORY[0x259C63150](*v10, 0x1000C8000313F17);
                v48 = v57;
                a5[2] = v58;
                *(a5 + 6) = v59;
                v59 = 0;
                if (v48 >= 0x41 && v56)
                {
                  MEMORY[0x259C63150](v56, 0x1000C8000313F17);
                }
              }

              else
              {
                a5[2] = v58;
                *(a5 + 6) = v59;
                v59 = 0;
              }

              if (v55 >= 0x41 && v54)
              {
                MEMORY[0x259C63150](v54, 0x1000C8000313F17);
              }

              if (v53 >= 0x41 && v52)
              {
                MEMORY[0x259C63150](v52, 0x1000C8000313F17);
              }

              v49 = *(a5 + 2);
              if (v49 > 0x40)
              {
                if (llvm::APInt::countLeadingZerosSlowCase(a5) != v49)
                {
                  goto LABEL_89;
                }
              }

              else if (*a5)
              {
                goto LABEL_89;
              }

              v50 = *(a5 + 6);
              if (v50 > 0x40)
              {
                if (llvm::APInt::countLeadingZerosSlowCase(v10) == v50)
                {
                  break;
                }
              }

              else if (!*v10)
              {
                break;
              }

LABEL_89:
              ++v5;
            }
          }
        }

        else
        {
          *v10 = 0;
          if (v5 <= v19)
          {
            goto LABEL_90;
          }
        }

        v32 = *(a5 + 2);
        if (v32 > 0x40)
        {
          if (!llvm::APInt::intersectsSlowCase(a5, v10))
          {
            goto LABEL_69;
          }

          memset(*a5, 255, ((v32 + 63) >> 3) & 0x3FFFFFF8);
          LODWORD(v32) = *(a5 + 2);
          if (v32)
          {
            goto LABEL_58;
          }
        }

        else
        {
          if ((a5[2] & *a5) == 0)
          {
            goto LABEL_69;
          }

          *a5 = -1;
          if (v32)
          {
LABEL_58:
            v33 = 0xFFFFFFFFFFFFFFFFLL >> -v32;
            if (v32 >= 0x41)
            {
              v34 = (*a5 + 8 * (((v32 + 63) >> 6) - 1));
            }

            else
            {
              v34 = a5;
            }

            goto LABEL_67;
          }
        }

        v33 = 0;
        v34 = a5;
LABEL_67:
        *v34 &= v33;
        v36 = *(a5 + 6);
        if (v36 > 0x40)
        {
          bzero(*v10, ((v36 + 63) >> 3) & 0x3FFFFFF8);
          if (v61 < 0x41)
          {
            return;
          }

LABEL_72:
          if (!v60)
          {
            return;
          }

LABEL_83:
          MEMORY[0x259C63150]();
          return;
        }

        *v10 = 0;
LABEL_69:
        if (v61 < 0x41)
        {
          return;
        }

        goto LABEL_72;
      }

      v21 = *(this + 6);
      if (v21 > 0x40)
      {
        v23 = llvm::APInt::countTrailingZerosSlowCase(this + 2);
        if (v23 >= v5)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v22 = __clz(__rbit64(*(this + 2)));
        if (v21 >= v22)
        {
          v23 = v22;
        }

        else
        {
          v23 = *(this + 6);
        }

        if (v23 >= v5)
        {
LABEL_34:
          if (v23 < v19)
          {
            LODWORD(v19) = v23;
          }

          goto LABEL_36;
        }
      }

      v35 = *(a5 + 2);
      if (v35 > 0x40)
      {
        memset(*a5, 255, ((v35 + 63) >> 3) & 0x3FFFFFF8);
        LODWORD(v35) = *(a5 + 2);
      }

      else
      {
        *a5 = -1;
      }

      if (v35)
      {
        v37 = 0xFFFFFFFFFFFFFFFFLL >> -v35;
        if (v35 >= 0x41)
        {
          v39 = (*a5 + 8 * (((v35 + 63) >> 6) - 1));
          *v39 &= v37;
          v38 = *(a5 + 6);
          if (v38 <= 0x40)
          {
LABEL_78:
            *v10 = 0;
            if (v61 < 0x41)
            {
              return;
            }

            goto LABEL_82;
          }

LABEL_81:
          bzero(*v10, ((v38 + 63) >> 3) & 0x3FFFFFF8);
          if (v61 < 0x41)
          {
            return;
          }

LABEL_82:
          if (!v60)
          {
            return;
          }

          goto LABEL_83;
        }
      }

      else
      {
        v37 = 0;
      }

      *a5 &= v37;
      v38 = *(a5 + 6);
      if (v38 <= 0x40)
      {
        goto LABEL_78;
      }

      goto LABEL_81;
    }
  }

  else if (*(this + 2))
  {
    goto LABEL_17;
  }

  if (v5 == v9)
  {
    llvm::KnownBits::ashr();
  }
}

uint64_t llvm::KnownBits::eq(int8x8_t *this, uint64_t a2)
{
  v4 = this[1].u32[0];
  if (v4 <= 0x40)
  {
    v5 = vcnt_s8(*this);
    v5.i16[0] = vaddlv_u8(v5);
    v6 = v5.i32[0];
    v7 = this[3].u32[0];
    if (v7 > 0x40)
    {
      goto LABEL_3;
    }

LABEL_6:
    v8 = vcnt_s8(this[2]);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.i32[0] + v6 != v4)
    {
      goto LABEL_10;
    }

LABEL_7:
    v9 = *(a2 + 8);
    if (v9 > 0x40)
    {
      v11 = llvm::APInt::countPopulationSlowCase(a2);
      if (*(a2 + 24) > 0x40u)
      {
LABEL_9:
        if (llvm::APInt::countPopulationSlowCase((a2 + 16)) + v11 != v9)
        {
          goto LABEL_10;
        }

        goto LABEL_20;
      }
    }

    else
    {
      v10 = vcnt_s8(*a2);
      v10.i16[0] = vaddlv_u8(v10);
      v11 = v10.i32[0];
      if (*(a2 + 24) > 0x40u)
      {
        goto LABEL_9;
      }
    }

    v14 = vcnt_s8(*(a2 + 16));
    v14.i16[0] = vaddlv_u8(v14);
    if (v14.i32[0] + v11 != v9)
    {
      goto LABEL_10;
    }

LABEL_20:
    if (v7 > 0x40)
    {
      v12 = llvm::APInt::equalSlowCase(&this[2], (a2 + 16));
    }

    else
    {
      v12 = *&this[2] == *(a2 + 16);
    }

    return v12 | 0x100u;
  }

  v6 = llvm::APInt::countPopulationSlowCase(this);
  v7 = this[3].u32[0];
  if (v7 <= 0x40)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (llvm::APInt::countPopulationSlowCase(&this[2]) + v6 == v4)
  {
    goto LABEL_7;
  }

LABEL_10:
  if (v7 > 0x40)
  {
    if (!llvm::APInt::intersectsSlowCase(&this[2], a2))
    {
      goto LABEL_14;
    }

LABEL_16:
    v12 = 0;
    return v12 | 0x100u;
  }

  if ((*a2 & *&this[2]) != 0)
  {
    goto LABEL_16;
  }

LABEL_14:
  if (*(a2 + 24) > 0x40u)
  {
    if (llvm::APInt::intersectsSlowCase((a2 + 16), this))
    {
      goto LABEL_16;
    }
  }

  else if ((*this & *(a2 + 16)) != 0)
  {
    goto LABEL_16;
  }

  return 0;
}

uint64_t llvm::KnownBits::ugt(llvm::KnownBits *this, const llvm::KnownBits *a2, const llvm::KnownBits *a3)
{
  v5 = *(this + 2);
  v19 = v5;
  if (v5 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v18, this);
  }

  v6 = *this;
  v7 = 0xFFFFFFFFFFFFFFFFLL >> -v5;
  if (!v5)
  {
    v7 = 0;
  }

  v17 = v5;
  v16 = v7 & ~v6;
  v19 = *(a2 + 6);
  if (v19 > 0x40)
  {
    llvm::APInt::initSlowCase(&v18, (a2 + 16));
  }

  v18 = *(a2 + 2);
  v8 = llvm::APInt::compare(&v16, &v18);
  if (v17 >= 0x41 && v16)
  {
    MEMORY[0x259C63150](v16, 0x1000C8000313F17);
  }

  if (v8 < 1)
  {
    return 256;
  }

  v17 = *(this + 6);
  if (v17 > 0x40)
  {
    llvm::APInt::initSlowCase(&v16, (this + 16));
  }

  v16 = *(this + 2);
  v9 = *(a2 + 2);
  v19 = v9;
  if (v9 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v18, a2);
  }

  v11 = *a2;
  v12 = 0xFFFFFFFFFFFFFFFFLL >> -v9;
  if (!v9)
  {
    v12 = 0;
  }

  v15 = v9;
  v14 = v12 & ~v11;
  v13 = llvm::APInt::compare(&v16, &v14);
  if (v17 >= 0x41)
  {
    if (v16)
    {
      MEMORY[0x259C63150](v16, 0x1000C8000313F17);
    }
  }

  return (v13 > 0) | ((v13 > 0) << 8);
}

uint64_t llvm::KnownBits::sgt(llvm::KnownBits *this, const llvm::KnownBits *a2, const llvm::KnownBits *a3)
{
  llvm::KnownBits::getSignedMaxValue(this, &v19);
  v5 = *(a2 + 6);
  v18 = v5;
  if (v5 > 0x40)
  {
    llvm::APInt::initSlowCase(&v17, (a2 + 16));
  }

  v17 = *(a2 + 2);
  v6 = *(a2 + 2);
  v7 = v6 - 1;
  if (v6 >= 0x41)
  {
    v8 = (*a2 + 8 * ((v6 - 1) >> 6));
  }

  else
  {
    v8 = a2;
  }

  if (((*v8 >> v7) & 1) == 0)
  {
    v17 |= 1 << (v5 - 1);
    v5 = v18;
  }

  v9 = llvm::APInt::compareSigned(&v19, &v17);
  if (v5 >= 0x41 && v17)
  {
    MEMORY[0x259C63150](v17, 0x1000C8000313F17);
  }

  if (v20 >= 0x41 && v19)
  {
    MEMORY[0x259C63150](v19, 0x1000C8000313F17);
  }

  if (v9 < 1)
  {
    v10 = 0;
    v11 = 1;
  }

  else
  {
    v20 = *(this + 6);
    if (v20 > 0x40)
    {
      llvm::APInt::initSlowCase(&v19, (this + 16));
    }

    v19 = *(this + 2);
    v12 = *(this + 2);
    v13 = v12 - 1;
    if (v12 >= 0x41)
    {
      v14 = (*this + 8 * ((v12 - 1) >> 6));
    }

    else
    {
      v14 = this;
    }

    if (((*v14 >> v13) & 1) == 0)
    {
      v19 |= 1 << (v20 - 1);
    }

    llvm::KnownBits::getSignedMaxValue(a2, &v17);
    v15 = llvm::APInt::compareSigned(&v19, &v17);
    if (v18 >= 0x41 && v17)
    {
      MEMORY[0x259C63150](v17, 0x1000C8000313F17);
    }

    if (v20 >= 0x41 && v19)
    {
      MEMORY[0x259C63150](v19, 0x1000C8000313F17);
    }

    v10 = v15 > 0;
    v11 = v10;
  }

  return v10 | (v11 << 8);
}

void llvm::KnownBits::abs(int8x8_t *this@<X0>, int a2@<W1>, _DWORD *a3@<X8>)
{
  v6 = this[1].u32[0];
  v7 = v6 - 1;
  if (v6 > 0x40)
  {
    v11 = *(*this + 8 * (v7 >> 6));
    a3[2] = v6;
    if ((v11 >> v7))
    {
      llvm::APInt::initSlowCase(a3, this);
    }

    llvm::APInt::initSlowCase(a3);
  }

  v8 = *this;
  a3[2] = v6;
  v9 = a3 + 2;
  if ((*&v8 >> v7))
  {
    *a3 = v8;
    v10 = this[3].u32[0];
    a3[6] = v10;
    if (v10 > 0x40)
    {

      llvm::APInt::initSlowCase((a3 + 4), &this[2]);
    }

    *(a3 + 2) = this[2];
    return;
  }

  *(a3 + 2) = 0;
  v12 = a3 + 4;
  a3[6] = v6;
  v13 = a3 + 6;
  *a3 = 0;
  v14 = this[3].u32[0];
  v15 = v14 - 1;
  if (v14 > 0x40)
  {
    if (((*(*&this[2] + 8 * (v15 >> 6)) >> v15) & 1) == 0)
    {
      v16 = llvm::APInt::countTrailingZerosSlowCase(&this[2]);
      if (this[1].i32[0] > 0x40u)
      {
        goto LABEL_13;
      }

LABEL_31:
      v17 = __clz(__rbit64(~*this));
      if (!v17)
      {
        goto LABEL_44;
      }

      goto LABEL_32;
    }

LABEL_17:
    v59 = this[1].u32[0];
    if (v59 > 0x40)
    {
      llvm::APInt::initSlowCase(&v58, this);
    }

    v58 = *this;
    v61 = v14;
    if (v14 > 0x40)
    {
      llvm::APInt::initSlowCase(&v60, &this[2]);
    }

    v60 = this[2];
    v19 = this[1].u32[0];
    if (a2)
    {
      if (v19 > 0x40)
      {
        if (llvm::APInt::countPopulationSlowCase(this) + 2 != v19)
        {
          v49 = v19;
          goto LABEL_52;
        }

        v21 = llvm::APInt::countTrailingOnesSlowCase(this);
      }

      else
      {
        v20 = vcnt_s8(*this);
        v20.i16[0] = vaddlv_u8(v20);
        if (v20.i32[0] + 2 != v19)
        {
          v49 = this[1].u32[0];
          goto LABEL_50;
        }

        v21 = __clz(__rbit64(~*this));
      }

      if (v61 >= 0x41)
      {
        v24 = (*&v60 + 8 * (v21 >> 6));
      }

      else
      {
        v24 = &v60;
      }

      *v24 |= 1 << v21;
      v49 = this[1].u32[0];
      if (v49 > 0x40)
      {
LABEL_52:
        llvm::APInt::initSlowCase(&v48);
      }
    }

    else
    {
      v49 = this[1].u32[0];
      if (v19 > 0x40)
      {
        goto LABEL_52;
      }
    }

LABEL_50:
    v48 = 0;
    llvm::KnownBits::makeConstant(&v48, &v50);
    llvm::KnownBits::computeForAddSub(0, &v50, &v58, a2, 0, &v54);
    if (*v9 >= 0x41u && *a3)
    {
      MEMORY[0x259C63150](*a3, 0x1000C8000313F17);
    }

    *a3 = v54;
    a3[2] = v55;
    v55 = 0;
    if (a3[6] >= 0x41u && *v12)
    {
      MEMORY[0x259C63150](*v12, 0x1000C8000313F17);
      v26 = v55;
      *v12 = v56;
      *v13 = v57;
      v57 = 0;
      if (v26 >= 0x41 && v54)
      {
        MEMORY[0x259C63150](v54, 0x1000C8000313F17);
      }
    }

    else
    {
      *v12 = v56;
      *v13 = v57;
      v57 = 0;
    }

    if (v53 >= 0x41 && v52)
    {
      MEMORY[0x259C63150](v52, 0x1000C8000313F17);
    }

    if (v51 >= 0x41 && v50)
    {
      MEMORY[0x259C63150](v50, 0x1000C8000313F17);
    }

    if (v49 >= 0x41 && v48)
    {
      MEMORY[0x259C63150](v48, 0x1000C8000313F17);
    }

    if (!a2)
    {
      goto LABEL_111;
    }

    v27 = v61;
    if (v61 > 0x40)
    {
      if (llvm::APInt::countPopulationSlowCase(&v60) != 1)
      {
        goto LABEL_111;
      }
    }

    else
    {
      v28 = vcnt_s8(v60);
      v28.i16[0] = vaddlv_u8(v28);
      if (v28.i32[0] != 1)
      {
        goto LABEL_111;
      }
    }

    v29 = v59;
    if (v59 > 0x40)
    {
      v31 = llvm::APInt::countPopulationSlowCase(&v58);
    }

    else
    {
      v30 = vcnt_s8(v58);
      v30.i16[0] = vaddlv_u8(v30);
      v31 = v30.i32[0];
    }

    if (v29 - v31 == 1)
    {
      goto LABEL_111;
    }

    v32 = (*&v60 + 8 * ((v27 - 1) >> 6));
    if (v27 < 0x41)
    {
      v32 = &v60;
    }

    *v32 &= ~(1 << (v27 - 1));
    v33 = v59 - 1;
    v34 = &v58;
    if (v59 >= 0x41)
    {
      v34 = (*&v58 + 8 * (v33 >> 6));
    }

    *v34 |= 1 << v33;
    v35 = this[1].u32[0];
    if (v59 > 0x40)
    {
      v36 = llvm::APInt::countLeadingOnesSlowCase(&v58);
      v37 = v35 - v36;
      v38 = v35 - 1;
      if (v35 - v36 == v35 - 1)
      {
        goto LABEL_111;
      }
    }

    else if (v59)
    {
      v36 = __clz(~(*&v58 << -v59));
      v37 = v35 - v36;
      v38 = v35 - 1;
      if (v35 - v36 == v35 - 1)
      {
        goto LABEL_111;
      }
    }

    else
    {
      LOBYTE(v36) = 0;
      v37 = v35;
      v38 = v35 - 1;
      if (v35 == v35 - 1)
      {
LABEL_111:
        if (v61 >= 0x41 && *&v60)
        {
          MEMORY[0x259C63150](*&v60, 0x1000C8000313F17);
        }

        if (v59 >= 0x41 && *&v58)
        {
          MEMORY[0x259C63150](*&v58, 0x1000C8000313F17);
        }

        return;
      }
    }

    if (v38 > 0x40 || v37 > 0x3F)
    {
      llvm::APInt::setBitsSlowCase(v12, v37, v38);
    }

    else
    {
      v47 = 0xFFFFFFFFFFFFFFFFLL >> (65 - v36) << v37;
      if (a3[6] > 0x40u)
      {
        **v12 |= v47;
      }

      else
      {
        *v12 |= v47;
      }
    }

    goto LABEL_111;
  }

  v18 = this[2];
  if ((v18 >> v15))
  {
    goto LABEL_17;
  }

  v22 = __clz(__rbit64(v18));
  if (v14 >= v22)
  {
    v16 = v22;
  }

  else
  {
    v16 = this[3].u32[0];
  }

  if (this[1].i32[0] <= 0x40u)
  {
    goto LABEL_31;
  }

LABEL_13:
  v17 = llvm::APInt::countTrailingOnesSlowCase(this);
  if (!v17)
  {
LABEL_44:
    if (v16 == v17)
    {
      goto LABEL_45;
    }

    goto LABEL_89;
  }

LABEL_32:
  if (v17 > 0x40)
  {
    llvm::APInt::setBitsSlowCase(a3, 0, v17);
    goto LABEL_44;
  }

  v23 = 0xFFFFFFFFFFFFFFFFLL >> -v17;
  if (*v9 > 0x40u)
  {
    **a3 |= v23;
    if (v16 == v17)
    {
LABEL_45:
      if (v16 < this[1].i32[0])
      {
        v25 = a3 + 4;
        if (a3[6] >= 0x41u)
        {
          v25 = (*v12 + 8 * (v16 >> 6));
        }

        *v25 |= 1 << v16;
      }
    }
  }

  else
  {
    *a3 |= v23;
    if (v16 == v17)
    {
      goto LABEL_45;
    }
  }

LABEL_89:
  if ((a2 & 1) == 0)
  {
    v44 = this[3].u32[0];
    if (v44 > 0x40)
    {
      if (llvm::APInt::countLeadingZerosSlowCase(&this[2]) == v44)
      {
        return;
      }

      v46 = v44 - 1;
      if (((*(*&this[2] + 8 * (v46 >> 6)) >> v46) & 1) != 0 && llvm::APInt::countTrailingZerosSlowCase(&this[2]) == v46)
      {
        return;
      }
    }

    else
    {
      v45 = this[2];
      if (!*&v45 || *&v45 == 1 << (v44 - 1))
      {
        return;
      }
    }
  }

  v39 = a3[6];
  v40 = v39 - 1;
  if (v39 >= 0x41)
  {
    v12 = (*v12 + 8 * (v40 >> 6));
  }

  *v12 &= ~(1 << v40);
  v41 = a3[2];
  v42 = v41 - 1;
  if (v41 >= 0x41)
  {
    v43 = (*a3 + 8 * ((v41 - 1) >> 6));
  }

  else
  {
    v43 = a3;
  }

  *v43 |= 1 << v42;
}

const llvm::APInt *llvm::KnownBits::makeConstant@<X0>(const llvm::APInt *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 2);
  v12 = v4;
  if (v4 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v11, this);
  }

  v5 = 0xFFFFFFFFFFFFFFFFLL >> -v4;
  if (!v4)
  {
    v5 = 0;
  }

  v6 = v5 & ~*this;
  v11 = v6;
  v12 = 0;
  v7 = *(this + 2);
  v10 = v7;
  if (v7 > 0x40)
  {
    llvm::APInt::initSlowCase(&v9, this);
  }

  v8 = *this;
  *(a2 + 8) = v4;
  *a2 = v6;
  *(a2 + 24) = v7;
  *(a2 + 16) = v8;
  return this;
}

void computeForSatAddSub(unint64_t *a1, llvm::KnownBits *this, const llvm::KnownBits *a3, const llvm::KnownBits *a4, _DWORD *a5)
{
  v7 = a3;
  v8 = this;
  llvm::KnownBits::computeForAddSub(this, a4, a5, 0, 0, a1);
  v10 = *(a1 + 2);
  if (v7)
  {
    v11 = v10 - 1;
    v12 = *(a4 + 2);
    v13 = *a4;
    v14 = (v10 - 1) >> 6;
    v15 = (*a4 + 8 * v14);
    if (v12 < 0x41)
    {
      v15 = a4;
    }

    v16 = 1 << v11;
    if ((*v15 & (1 << v11)) == 0)
    {
      v17 = (a4 + 16);
      if (*(a4 + 6) >= 0x41u)
      {
        v17 = (*(a4 + 2) + 8 * v14);
      }

      if ((*v17 & v16) == 0)
      {
        goto LABEL_43;
      }
    }

    v18 = a5[2];
    v19 = (*a5 + 8 * v14);
    if (v18 < 0x41)
    {
      v19 = a5;
    }

    if ((*v19 & v16) == 0)
    {
      v20 = a5 + 4;
      if (a5[6] >= 0x41u)
      {
        v20 = (*(a5 + 2) + 8 * v14);
      }

      if ((*v20 & v16) == 0)
      {
        goto LABEL_43;
      }
    }

    v21 = (*a1 + 8 * v14);
    if (v10 < 0x41)
    {
      v21 = a1;
    }

    v22 = *v21 & v16;
    if (v22)
    {
      goto LABEL_20;
    }

    v23 = a1 + 2;
    if (*(a1 + 6) >= 0x41u)
    {
      v23 = (a1[2] + 8 * v14);
    }

    if ((*v23 & v16) != 0)
    {
LABEL_20:
      v24 = (v12 - 1) >> 6;
      v25 = (v13 + 8 * v24);
      if (v12 < 0x41)
      {
        v25 = a4;
      }

      v26 = 1 << (v12 - 1);
      v27 = *v25 & v26;
      v28 = v18 - 1;
      if (v18 >= 0x41)
      {
        v29 = (*a5 + 8 * ((v18 - 1) >> 6));
      }

      else
      {
        v29 = a5;
      }

      v30 = (v27 != 0) ^ (*v29 >> v28);
      if (v8)
      {
        v31 = (v22 != 0) ^ (v27 != 0);
        v32 = 1;
        if (v30)
        {
          v33 = 0;
        }

        else
        {
          v33 = v31;
        }

        v34 = (v13 + 8 * v24);
        if (v12 >= 0x41)
        {
          v35 = v34;
        }

        else
        {
          v35 = a4;
        }

        if ((v26 & *v35) == 0)
        {
          goto LABEL_57;
        }

LABEL_48:
        v43 = a5[2];
        v44 = v43 - 1;
        if (v43 >= 0x41)
        {
          v45 = (*a5 + 8 * ((v43 - 1) >> 6));
        }

        else
        {
          v45 = a5;
        }

        if ((*v45 >> v44))
        {
          v46 = a1 + 2;
          v47 = *(a1 + 6);
          v48 = v47 - 1;
          if (v47 >= 0x41)
          {
            v46 = (*v46 + 8 * (v48 >> 6));
          }

          *v46 &= ~(1 << v48);
          v49 = *(a1 + 2);
          v50 = v49 - 1;
          v51 = a1;
          if (v49 >= 0x41)
          {
            v51 = (*a1 + 8 * (v50 >> 6));
          }

          *v51 |= 1 << v50;
        }

LABEL_57:
        v52 = (a4 + 16);
        v53 = *(a4 + 6);
        v54 = v53 - 1;
        if (v53 >= 0x41)
        {
          v52 = (*(a4 + 2) + 8 * (v54 >> 6));
        }

        if (((*v52 >> v54) & 1) == 0)
        {
          goto LABEL_94;
        }

        v56 = *(a5 + 2);
        v55 = a5 + 4;
        v57 = v55[2];
        v58 = (v56 + 8 * ((v57 - 1) >> 6));
        if (v57 < 0x41)
        {
          v58 = v55;
        }

        if (((*v58 >> (v57 - 1)) & 1) == 0)
        {
          goto LABEL_94;
        }

        goto LABEL_74;
      }

      v32 = 1;
      if (v30)
      {
        v33 = (v22 != 0) ^ (v27 != 0);
      }

      else
      {
        v33 = 0;
      }
    }

    else
    {
LABEL_43:
      v32 = 0;
      v33 = 0;
      if (v8)
      {
        v40 = 1 << (v12 - 1);
        v41 = (v13 + 8 * ((v12 - 1) >> 6));
        if (v12 >= 0x41)
        {
          v42 = v41;
        }

        else
        {
          v42 = a4;
        }

        if ((v40 & *v42) == 0)
        {
          goto LABEL_57;
        }

        goto LABEL_48;
      }
    }

    v59 = (a4 + 16);
    v60 = *(a4 + 6);
    v61 = v60 - 1;
    if (v60 >= 0x41)
    {
      v59 = (*(a4 + 2) + 8 * (v61 >> 6));
    }

    if (((*v59 >> v61) & 1) == 0 || ((v62 = a5[2], v63 = v62 - 1, v62 >= 0x41) ? (v64 = (*a5 + 8 * ((v62 - 1) >> 6))) : (v64 = a5), ((*v64 >> v63) & 1) == 0))
    {
      v71 = v12 - 1;
      v72 = (v13 + 8 * ((v12 - 1) >> 6));
      if (v12 >= 0x41)
      {
        v73 = v72;
      }

      else
      {
        v73 = a4;
      }

      if ((*v73 >> v71))
      {
        v75 = *(a5 + 2);
        v74 = a5 + 4;
        v76 = v74[2];
        v77 = (v75 + 8 * ((v76 - 1) >> 6));
        if (v76 < 0x41)
        {
          v77 = v74;
        }

        if ((*v77 >> (v76 - 1)))
        {
          v78 = a1 + 2;
          v79 = *(a1 + 6);
          v80 = v79 - 1;
          if (v79 >= 0x41)
          {
            v78 = (*v78 + 8 * (v80 >> 6));
          }

          *v78 &= ~(1 << v80);
          v81 = *(a1 + 2);
          v82 = v81 - 1;
          v83 = a1;
          if (v81 >= 0x41)
          {
            v83 = (*a1 + 8 * (v82 >> 6));
          }

          *v83 |= 1 << v82;
        }
      }

LABEL_94:
      if (v32)
      {
LABEL_95:
        if ((v33 & 1) == 0)
        {
          return;
        }

        v85 = *(a4 + 2);
        v84 = a4 + 16;
        v86 = *(v84 + 2);
        v87 = (v85 + 8 * ((v86 - 1) >> 6));
        if (v86 < 0x41)
        {
          v87 = v84;
        }

        v88 = *v87;
        v134 = v10;
        if ((v88 >> (v86 - 1)))
        {
          if (v10 > 0x40)
          {
            llvm::APInt::initSlowCase(&v133);
          }

          v133 = 1 << v11;
        }

        else
        {
          if (v10 > 0x40)
          {
            llvm::APInt::initSlowCase(&v133);
          }

          v103 = 0xFFFFFFFFFFFFFFFFLL >> -v10;
          if (!v10)
          {
            v103 = 0;
          }

          v133 = v103 & ~v16;
        }

LABEL_248:
        v138 = v133;
        v115 = v134;
        v139 = v134;
        if (*(a1 + 6) > 0x40u || v134 > 0x40)
        {
          llvm::APInt::assignSlowCase(a1 + 4, &v138);
          v116 = v139;
          v120 = v139;
          if (v139 >= 0x41)
          {
LABEL_251:
            llvm::APInt::initSlowCase(&v119, &v138);
          }
        }

        else
        {
          a1[2] = v133;
          *(a1 + 6) = v115;
          v116 = v139;
          v120 = v139;
          if (v139 >= 0x41)
          {
            goto LABEL_251;
          }
        }

        v117 = 0xFFFFFFFFFFFFFFFFLL >> -v116;
        if (!v116)
        {
          v117 = 0;
        }

        v118 = v117 & ~v138;
        v119 = v118;
        v120 = 0;
        if (*(a1 + 2) > 0x40u && *a1)
        {
          MEMORY[0x259C63150](*a1, 0x1000C8000313F17);
          *a1 = v118;
          *(a1 + 2) = v116;
        }

        else
        {
          *a1 = v118;
          *(a1 + 2) = v116;
        }

        if (v139 >= 0x41)
        {
          if (v138)
          {
            MEMORY[0x259C63150](v138, 0x1000C8000313F17);
          }
        }

        return;
      }

LABEL_79:
      llvm::APInt::clearLowBits(a1, v10 - 1);

      llvm::APInt::clearLowBits((a1 + 2), v10 - 1);
      return;
    }

LABEL_74:
    v65 = a1 + 2;
    v66 = *(a1 + 6);
    v67 = v66 - 1;
    if (v66 >= 0x41)
    {
      v65 = (*v65 + 8 * (v67 >> 6));
    }

    *v65 |= 1 << v67;
    v68 = *(a1 + 2);
    v69 = v68 - 1;
    v70 = a1;
    if (v68 >= 0x41)
    {
      v70 = (*a1 + 8 * (v69 >> 6));
    }

    *v70 &= ~(1 << v69);
    if (v32)
    {
      goto LABEL_95;
    }

    goto LABEL_79;
  }

  if (!v8)
  {
    v137 = 0;
    v134 = *(a4 + 6);
    if (v134 > 0x40)
    {
      llvm::APInt::initSlowCase(&v133, (a4 + 16));
    }

    v133 = *(a4 + 2);
    v39 = a5[2];
    v139 = v39;
    if (v39 >= 0x41)
    {
      llvm::APInt::initSlowCase(&v138, a5);
    }

    v89 = 0xFFFFFFFFFFFFFFFFLL >> -v39;
    if (!v39)
    {
      v89 = 0;
    }

    v90 = v89 & ~*a5;
    v132 = v39;
    v131 = v90;
    llvm::APInt::usub_ov(&v133, &v131, &v137, &v127);
    if (v128 >= 0x41 && v127)
    {
      MEMORY[0x259C63150](v127, 0x1000C8000313F17);
    }

    if (v132 >= 0x41 && v131)
    {
      MEMORY[0x259C63150](v131, 0x1000C8000313F17);
    }

    if (v134 >= 0x41 && v133)
    {
      MEMORY[0x259C63150](v133, 0x1000C8000313F17);
    }

    if (v137)
    {
      v94 = *(a4 + 2);
      v139 = v94;
      if (v94 >= 0x41)
      {
        llvm::APInt::initSlowCase(&v138, a4);
      }

      v95 = *a4;
      v96 = 0xFFFFFFFFFFFFFFFFLL >> -v94;
      if (!v94)
      {
        v96 = 0;
      }

      v134 = v94;
      v133 = v96 & ~v95;
      v139 = a5[6];
      if (v139 > 0x40)
      {
        llvm::APInt::initSlowCase(&v138, (a5 + 4));
      }

      v138 = *(a5 + 2);
      llvm::APInt::usub_ov(&v133, &v138, &v137, &v125);
      if (v126 >= 0x41 && v125)
      {
        MEMORY[0x259C63150](v125, 0x1000C8000313F17);
      }

      if (v139 >= 0x41 && v138)
      {
        MEMORY[0x259C63150](v138, 0x1000C8000313F17);
      }

      if (v134 >= 0x41 && v133)
      {
        MEMORY[0x259C63150](v133, 0x1000C8000313F17);
      }

      v97 = v137;
      v98 = v137;
      v99 = *(a4 + 2);
      if (v99 <= 0x40)
      {
LABEL_180:
        if (v99)
        {
          v100 = __clz(~(*a4 << -v99));
          v101 = a5[6];
          if (v101 > 0x40)
          {
            goto LABEL_207;
          }
        }

        else
        {
          v100 = 0;
          v101 = a5[6];
          if (v101 > 0x40)
          {
            goto LABEL_207;
          }
        }

        goto LABEL_182;
      }
    }

    else
    {
      v97 = 0;
      v98 = 1;
      v99 = *(a4 + 2);
      if (v99 <= 0x40)
      {
        goto LABEL_180;
      }
    }

    v100 = llvm::APInt::countLeadingOnesSlowCase(a4);
    v101 = a5[6];
    if (v101 > 0x40)
    {
      goto LABEL_207;
    }

LABEL_182:
    if (!v101)
    {
LABEL_160:
      if (!v100)
      {
        v100 = 0;
      }

      v139 = v10;
      if (v10 <= 0x40)
      {
        goto LABEL_210;
      }

LABEL_186:
      llvm::APInt::initSlowCase(&v138);
    }

    goto LABEL_183;
  }

  v137 = 0;
  v36 = *(a4 + 2);
  v139 = v36;
  if (v36 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v138, a4);
  }

  v37 = 0xFFFFFFFFFFFFFFFFLL >> -v36;
  if (!v36)
  {
    v37 = 0;
  }

  v38 = v37 & ~*a4;
  v134 = v36;
  v133 = v38;
  v91 = a5[2];
  v139 = v91;
  if (v91 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v138, a5);
  }

  v92 = 0xFFFFFFFFFFFFFFFFLL >> -v91;
  if (!v91)
  {
    v92 = 0;
  }

  v93 = v92 & ~*a5;
  v132 = v91;
  v131 = v93;
  llvm::APInt::uadd_ov(&v133, &v131, &v137, &v135);
  if (v136 >= 0x41 && v135)
  {
    MEMORY[0x259C63150](v135, 0x1000C8000313F17);
  }

  if (v132 >= 0x41 && v131)
  {
    MEMORY[0x259C63150](v131, 0x1000C8000313F17);
  }

  if (v134 >= 0x41 && v133)
  {
    MEMORY[0x259C63150](v133, 0x1000C8000313F17);
  }

  if (!v137)
  {
    v97 = 0;
    v98 = 1;
    v102 = *(a4 + 6);
    if (v102 <= 0x40)
    {
      goto LABEL_157;
    }

LABEL_144:
    v100 = llvm::APInt::countLeadingOnesSlowCase((a4 + 16));
    v101 = a5[6];
    if (v101 <= 0x40)
    {
      goto LABEL_159;
    }

    goto LABEL_207;
  }

  v139 = *(a4 + 6);
  if (v139 > 0x40)
  {
    llvm::APInt::initSlowCase(&v138, (a4 + 16));
  }

  v138 = *(a4 + 2);
  v134 = a5[6];
  if (v134 > 0x40)
  {
    llvm::APInt::initSlowCase(&v133, (a5 + 4));
  }

  v133 = *(a5 + 2);
  llvm::APInt::uadd_ov(&v138, &v133, &v137, &v129);
  if (v130 >= 0x41 && v129)
  {
    MEMORY[0x259C63150](v129, 0x1000C8000313F17);
  }

  if (v134 >= 0x41 && v133)
  {
    MEMORY[0x259C63150](v133, 0x1000C8000313F17);
  }

  if (v139 >= 0x41 && v138)
  {
    MEMORY[0x259C63150](v138, 0x1000C8000313F17);
  }

  v97 = v137;
  v98 = v137;
  v102 = *(a4 + 6);
  if (v102 > 0x40)
  {
    goto LABEL_144;
  }

LABEL_157:
  if (v102)
  {
    v100 = __clz(~(*(a4 + 2) << -v102));
    v101 = a5[6];
    if (v101 <= 0x40)
    {
      goto LABEL_159;
    }
  }

  else
  {
    v100 = 0;
    v101 = a5[6];
    if (v101 <= 0x40)
    {
LABEL_159:
      if (!v101)
      {
        goto LABEL_160;
      }

LABEL_183:
      v104 = __clz(~(*(a5 + 2) << -v101));
      if (v100 <= v104)
      {
        v100 = v104;
      }

      v139 = v10;
      if (v10 > 0x40)
      {
        goto LABEL_186;
      }

      goto LABEL_210;
    }
  }

LABEL_207:
  v108 = llvm::APInt::countLeadingOnesSlowCase((a5 + 4));
  if (v100 <= v108)
  {
    v100 = v108;
  }

  v139 = v10;
  if (v10 > 0x40)
  {
    goto LABEL_186;
  }

LABEL_210:
  v138 = 0;
  if (v100)
  {
    v109 = v10 - v100;
    if (v10 - v100 > 0x3F)
    {
      llvm::APInt::setBitsSlowCase(&v138, v109, v10);
      if (v8)
      {
        goto LABEL_188;
      }
    }

    else
    {
      v138 |= 0xFFFFFFFFFFFFFFFFLL >> -v100 << v109;
      if (v8)
      {
LABEL_188:
        if (*(a1 + 6) > 0x40u)
        {
          llvm::APInt::orAssignSlowCase((a1 + 2), &v138);
          v105 = v139;
          v124 = v139;
          if (v139 >= 0x41)
          {
LABEL_190:
            llvm::APInt::initSlowCase(&v123, &v138);
          }
        }

        else
        {
          a1[2] |= v138;
          v105 = v139;
          v124 = v139;
          if (v139 >= 0x41)
          {
            goto LABEL_190;
          }
        }

        v106 = 0xFFFFFFFFFFFFFFFFLL >> -v105;
        if (!v105)
        {
          v106 = 0;
        }

        v123 = v106 & ~v138;
        v134 = v105;
        v133 = v123;
        v124 = 0;
        if (*(a1 + 2) > 0x40u)
        {
          llvm::APInt::andAssignSlowCase(a1, &v133);
          if (v134 < 0x41)
          {
            goto LABEL_200;
          }
        }

        else
        {
          *a1 &= v106 & ~v138;
          if (v105 < 0x41)
          {
            goto LABEL_200;
          }
        }

        if (v133)
        {
          MEMORY[0x259C63150](v133, 0x1000C8000313F17);
        }

LABEL_200:
        if (v124 < 0x41)
        {
          goto LABEL_230;
        }

        v107 = v123;
        if (!v123)
        {
          goto LABEL_230;
        }

LABEL_229:
        MEMORY[0x259C63150](v107, 0x1000C8000313F17);
        goto LABEL_230;
      }
    }
  }

  else if (v8)
  {
    goto LABEL_188;
  }

  if (*(a1 + 2) > 0x40u)
  {
    llvm::APInt::orAssignSlowCase(a1, &v138);
    v110 = v139;
    v122 = v139;
    if (v139 >= 0x41)
    {
LABEL_217:
      llvm::APInt::initSlowCase(&v121, &v138);
    }
  }

  else
  {
    *a1 |= v138;
    v110 = v139;
    v122 = v139;
    if (v139 >= 0x41)
    {
      goto LABEL_217;
    }
  }

  v111 = 0xFFFFFFFFFFFFFFFFLL >> -v110;
  if (!v110)
  {
    v111 = 0;
  }

  v121 = v111 & ~v138;
  v134 = v110;
  v133 = v121;
  v122 = 0;
  if (*(a1 + 6) > 0x40u)
  {
    llvm::APInt::andAssignSlowCase((a1 + 2), &v133);
    if (v134 < 0x41)
    {
      goto LABEL_227;
    }
  }

  else
  {
    a1[2] &= v111 & ~v138;
    if (v110 < 0x41)
    {
      goto LABEL_227;
    }
  }

  if (v133)
  {
    MEMORY[0x259C63150](v133, 0x1000C8000313F17);
  }

LABEL_227:
  if (v122 >= 0x41)
  {
    v107 = v121;
    if (v121)
    {
      goto LABEL_229;
    }
  }

LABEL_230:
  if (v139 >= 0x41 && v138)
  {
    MEMORY[0x259C63150](v138, 0x1000C8000313F17);
  }

  if (v98)
  {
    if (!v97)
    {
      return;
    }

    if (v8)
    {
      v134 = v10;
      v112 = 0xFFFFFFFFFFFFFFFFLL >> -v10;
      if (!v10)
      {
        v112 = 0;
      }

      v133 = v112;
    }

    else
    {
      v134 = v10;
      v133 = 0;
    }

    goto LABEL_248;
  }

  if (v8)
  {
    v113 = *(a1 + 2);
    if (v113 <= 0x40)
    {
      *a1 = 0;
      return;
    }

    v114 = *a1;
  }

  else
  {
    v113 = *(a1 + 6);
    if (v113 <= 0x40)
    {
      a1[2] = 0;
      return;
    }

    v114 = a1[2];
  }

  bzero(v114, ((v113 + 63) >> 3) & 0x3FFFFFF8);
}

uint64_t llvm::KnownBits::avgFloorS@<X0>(llvm::KnownBits *this@<X0>, const llvm::KnownBits *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = *(this + 2);
  if (v10 > 0x40)
  {
    llvm::APInt::initSlowCase(&v9, this);
  }

  v9 = *this;
  v12 = *(this + 6);
  if (v12 > 0x40)
  {
    llvm::APInt::initSlowCase(&v11, (this + 16));
  }

  v11 = *(this + 2);
  v6 = *(a2 + 2);
  if (v6 > 0x40)
  {
    llvm::APInt::initSlowCase(&v5, a2);
  }

  v5 = *a2;
  v8 = *(a2 + 6);
  if (v8 > 0x40)
  {
    llvm::APInt::initSlowCase(&v7, (a2 + 16));
  }

  v7 = *(a2 + 2);
  result = avgCompute(a3, &v9, &v5, 0, 1);
  if (v8 >= 0x41)
  {
    result = v7;
    if (v7)
    {
      result = MEMORY[0x259C63150](v7, 0x1000C8000313F17);
    }
  }

  if (v6 >= 0x41)
  {
    result = v5;
    if (v5)
    {
      result = MEMORY[0x259C63150](v5, 0x1000C8000313F17);
    }
  }

  if (v12 >= 0x41)
  {
    result = v11;
    if (v11)
    {
      result = MEMORY[0x259C63150](v11, 0x1000C8000313F17);
    }
  }

  if (v10 >= 0x41)
  {
    result = v9;
    if (v9)
    {
      return MEMORY[0x259C63150](v9, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t avgCompute(uint64_t a1, void *a2, llvm::KnownBits *a3, unsigned int a4, int a5)
{
  v10 = *(a2 + 2);
  if (a5)
  {
    llvm::APInt::sext(a2, v10 + 1, &v27);
    llvm::APInt::sext((a2 + 2), v10 + 1, &v25);
    v22 = v28;
    v21 = v27;
    v24 = v26;
    v23 = v25;
  }

  else
  {
    llvm::KnownBits::zext(a2, v10 + 1, &v21);
  }

  if (*(a2 + 2) >= 0x41u && *a2)
  {
    MEMORY[0x259C63150](*a2, 0x1000C8000313F17);
  }

  *a2 = v21;
  *(a2 + 2) = v22;
  v22 = 0;
  if (*(a2 + 6) < 0x41u || (v11 = a2[2]) == 0)
  {
    a2[2] = v23;
    *(a2 + 6) = v24;
    if (a5)
    {
      goto LABEL_13;
    }

LABEL_16:
    llvm::KnownBits::zext(a3, v10 + 1, &v21);
    if (*(a3 + 2) < 0x41u)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  MEMORY[0x259C63150](v11, 0x1000C8000313F17);
  v12 = v22;
  a2[2] = v23;
  *(a2 + 6) = v24;
  v24 = 0;
  if (v12 >= 0x41 && v21)
  {
    MEMORY[0x259C63150](v21, 0x1000C8000313F17);
  }

  if (!a5)
  {
    goto LABEL_16;
  }

LABEL_13:
  llvm::APInt::sext(a3, v10 + 1, &v27);
  llvm::APInt::sext(a3 + 16, v10 + 1, &v25);
  v22 = v28;
  v21 = v27;
  v24 = v26;
  v23 = v25;
  if (*(a3 + 2) < 0x41u)
  {
    goto LABEL_19;
  }

LABEL_17:
  if (*a3)
  {
    MEMORY[0x259C63150](*a3, 0x1000C8000313F17);
  }

LABEL_19:
  *a3 = v21;
  *(a3 + 2) = v22;
  v22 = 0;
  if (*(a3 + 6) >= 0x41u && (v13 = *(a3 + 2)) != 0)
  {
    MEMORY[0x259C63150](v13, 0x1000C8000313F17);
    v14 = v22;
    *(a3 + 2) = v23;
    *(a3 + 6) = v24;
    v24 = 0;
    if (v14 >= 0x41 && v21)
    {
      MEMORY[0x259C63150](v21, 0x1000C8000313F17);
    }
  }

  else
  {
    *(a3 + 2) = v23;
    *(a3 + 6) = v24;
  }

  computeForAddCarry(&v21, a2, a3, a4 ^ 1, a4);
  if (*(a2 + 2) >= 0x41u && *a2)
  {
    MEMORY[0x259C63150](*a2, 0x1000C8000313F17);
  }

  *a2 = v21;
  *(a2 + 2) = v22;
  if (*(a2 + 6) >= 0x41u)
  {
    v15 = a2[2];
    if (v15)
    {
      MEMORY[0x259C63150](v15, 0x1000C8000313F17);
    }
  }

  a2[2] = v23;
  *(a2 + 6) = v24;
  llvm::APInt::extractBits(a2, v10, 1u, &v21);
  result = llvm::APInt::extractBits((a2 + 2), v10, 1u, &v27);
  v17 = v22;
  v18 = v21;
  v19 = v28;
  v20 = v27;
  if (*(a2 + 2) >= 0x41u)
  {
    result = *a2;
    if (*a2)
    {
      result = MEMORY[0x259C63150](result, 0x1000C8000313F17);
    }
  }

  *a2 = v18;
  *(a2 + 2) = v17;
  if (*(a2 + 6) >= 0x41u)
  {
    result = a2[2];
    if (result)
    {
      result = MEMORY[0x259C63150](result, 0x1000C8000313F17);
      v17 = *(a2 + 2);
      v18 = *a2;
    }
  }

  a2[2] = v20;
  *(a1 + 8) = v17;
  *a1 = v18;
  *(a2 + 2) = 0;
  *(a1 + 24) = v19;
  *(a1 + 16) = v20;
  *(a2 + 6) = 0;
  return result;
}

uint64_t llvm::KnownBits::avgFloorU@<X0>(llvm::KnownBits *this@<X0>, const llvm::KnownBits *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = *(this + 2);
  if (v10 > 0x40)
  {
    llvm::APInt::initSlowCase(&v9, this);
  }

  v9 = *this;
  v12 = *(this + 6);
  if (v12 > 0x40)
  {
    llvm::APInt::initSlowCase(&v11, (this + 16));
  }

  v11 = *(this + 2);
  v6 = *(a2 + 2);
  if (v6 > 0x40)
  {
    llvm::APInt::initSlowCase(&v5, a2);
  }

  v5 = *a2;
  v8 = *(a2 + 6);
  if (v8 > 0x40)
  {
    llvm::APInt::initSlowCase(&v7, (a2 + 16));
  }

  v7 = *(a2 + 2);
  result = avgCompute(a3, &v9, &v5, 0, 0);
  if (v8 >= 0x41)
  {
    result = v7;
    if (v7)
    {
      result = MEMORY[0x259C63150](v7, 0x1000C8000313F17);
    }
  }

  if (v6 >= 0x41)
  {
    result = v5;
    if (v5)
    {
      result = MEMORY[0x259C63150](v5, 0x1000C8000313F17);
    }
  }

  if (v12 >= 0x41)
  {
    result = v11;
    if (v11)
    {
      result = MEMORY[0x259C63150](v11, 0x1000C8000313F17);
    }
  }

  if (v10 >= 0x41)
  {
    result = v9;
    if (v9)
    {
      return MEMORY[0x259C63150](v9, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t llvm::KnownBits::avgCeilS@<X0>(llvm::KnownBits *this@<X0>, const llvm::KnownBits *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = *(this + 2);
  if (v10 > 0x40)
  {
    llvm::APInt::initSlowCase(&v9, this);
  }

  v9 = *this;
  v12 = *(this + 6);
  if (v12 > 0x40)
  {
    llvm::APInt::initSlowCase(&v11, (this + 16));
  }

  v11 = *(this + 2);
  v6 = *(a2 + 2);
  if (v6 > 0x40)
  {
    llvm::APInt::initSlowCase(&v5, a2);
  }

  v5 = *a2;
  v8 = *(a2 + 6);
  if (v8 > 0x40)
  {
    llvm::APInt::initSlowCase(&v7, (a2 + 16));
  }

  v7 = *(a2 + 2);
  result = avgCompute(a3, &v9, &v5, 1u, 1);
  if (v8 >= 0x41)
  {
    result = v7;
    if (v7)
    {
      result = MEMORY[0x259C63150](v7, 0x1000C8000313F17);
    }
  }

  if (v6 >= 0x41)
  {
    result = v5;
    if (v5)
    {
      result = MEMORY[0x259C63150](v5, 0x1000C8000313F17);
    }
  }

  if (v12 >= 0x41)
  {
    result = v11;
    if (v11)
    {
      result = MEMORY[0x259C63150](v11, 0x1000C8000313F17);
    }
  }

  if (v10 >= 0x41)
  {
    result = v9;
    if (v9)
    {
      return MEMORY[0x259C63150](v9, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t llvm::KnownBits::avgCeilU@<X0>(llvm::KnownBits *this@<X0>, const llvm::KnownBits *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = *(this + 2);
  if (v10 > 0x40)
  {
    llvm::APInt::initSlowCase(&v9, this);
  }

  v9 = *this;
  v12 = *(this + 6);
  if (v12 > 0x40)
  {
    llvm::APInt::initSlowCase(&v11, (this + 16));
  }

  v11 = *(this + 2);
  v6 = *(a2 + 2);
  if (v6 > 0x40)
  {
    llvm::APInt::initSlowCase(&v5, a2);
  }

  v5 = *a2;
  v8 = *(a2 + 6);
  if (v8 > 0x40)
  {
    llvm::APInt::initSlowCase(&v7, (a2 + 16));
  }

  v7 = *(a2 + 2);
  result = avgCompute(a3, &v9, &v5, 1u, 0);
  if (v8 >= 0x41)
  {
    result = v7;
    if (v7)
    {
      result = MEMORY[0x259C63150](v7, 0x1000C8000313F17);
    }
  }

  if (v6 >= 0x41)
  {
    result = v5;
    if (v5)
    {
      result = MEMORY[0x259C63150](v5, 0x1000C8000313F17);
    }
  }

  if (v12 >= 0x41)
  {
    result = v11;
    if (v11)
    {
      result = MEMORY[0x259C63150](v11, 0x1000C8000313F17);
    }
  }

  if (v10 >= 0x41)
  {
    result = v9;
    if (v9)
    {
      return MEMORY[0x259C63150](v9, 0x1000C8000313F17);
    }
  }

  return result;
}

void *llvm::KnownBits::mul@<X0>(llvm::KnownBits *this@<X0>, const llvm::KnownBits *a2@<X1>, const llvm::KnownBits *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3;
  v44 = *(this + 2);
  v8 = v44;
  if (v44 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v43, this);
  }

  v9 = 0xFFFFFFFFFFFFFFFFLL >> -v44;
  if (!v44)
  {
    v9 = 0;
  }

  v10 = (v9 & ~*this);
  v42 = v44;
  v41 = v10;
  v11 = *(a2 + 2);
  v44 = v11;
  if (v11 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v43, a2);
  }

  v12 = 0xFFFFFFFFFFFFFFFFLL >> -v11;
  if (!v11)
  {
    v12 = 0;
  }

  v13 = (v12 & ~*a2);
  v40 = v11;
  v39 = v13;
  v38 = 0;
  llvm::APInt::umul_ov(&v41, &v39, &v38, &v43);
  v14 = 0;
  if (!v38)
  {
    if (v44 > 0x40)
    {
      v14 = llvm::APInt::countLeadingZerosSlowCase(&v43);
    }

    else
    {
      v14 = v44 + __clz(v43) - 64;
    }
  }

  v35 = *(this + 2);
  if (v35 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v34, this);
  }

  v34 = *this | *(this + 2);
  v35 = 0;
  v15 = __clz(__rbit64(~v34));
  v33 = *(a2 + 2);
  if (v33 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v32, a2);
  }

  v32 = *a2 | *(a2 + 2);
  v33 = 0;
  v16 = __clz(__rbit64(~v32));
  if (*(this + 2) > 0x40u)
  {
    v17 = llvm::APInt::countTrailingOnesSlowCase(this);
    if (*(a2 + 2) > 0x40u)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v17 = __clz(__rbit64(~*this));
    if (*(a2 + 2) > 0x40u)
    {
LABEL_19:
      v18 = llvm::APInt::countTrailingOnesSlowCase(a2);
      goto LABEL_22;
    }
  }

  v18 = __clz(__rbit64(~*a2));
LABEL_22:
  v19 = v15 - v17;
  if (v16 - v18 < v15 - v17)
  {
    v19 = v16 - v18;
  }

  if (v8 >= v18 + v17 + v19)
  {
    v20 = v18 + v17 + v19;
  }

  else
  {
    v20 = v8;
  }

  llvm::APInt::getLoBits(this + 16, v15, &v30);
  llvm::APInt::getLoBits(a2 + 16, v16, &v28);
  llvm::APInt::operator*(&v30, &v28, &v36);
  if (v29 >= 0x41 && v28)
  {
    MEMORY[0x259C63150](v28, 0x1000C8000313F17);
  }

  if (v31 >= 0x41 && v30)
  {
    MEMORY[0x259C63150](v30, 0x1000C8000313F17);
  }

  *(a4 + 8) = v8;
  if (v8 > 0x40)
  {
    llvm::APInt::initSlowCase(a4);
  }

  *a4 = 0;
  *(a4 + 24) = v8;
  *(a4 + 16) = 0;
  if (!v14)
  {
LABEL_39:
    v22 = v37;
    v27 = v37;
    if (v37 < 0x41)
    {
      goto LABEL_43;
    }

LABEL_42:
    llvm::APInt::initSlowCase(&v26, &v36);
  }

  v21 = v8 - v14;
  if (v8 - v14 <= 0x3F)
  {
    *a4 |= 0xFFFFFFFFFFFFFFFFLL >> -v14 << v21;
    goto LABEL_39;
  }

  llvm::APInt::setBitsSlowCase(a4, v21, v8);
  v22 = v37;
  v27 = v37;
  if (v37 >= 0x41)
  {
    goto LABEL_42;
  }

LABEL_43:
  v23 = 0xFFFFFFFFFFFFFFFFLL >> -v22;
  if (!v22)
  {
    v23 = 0;
  }

  v26 = v23 & ~v36;
  v29 = v22;
  v28 = v26;
  v27 = 0;
  llvm::APInt::getLoBits(&v28, v20, &v30);
  if (*(a4 + 8) > 0x40u)
  {
    llvm::APInt::orAssignSlowCase(a4, &v30);
    if (v31 < 0x41)
    {
      goto LABEL_51;
    }
  }

  else
  {
    *a4 |= v30;
    if (v31 < 0x41)
    {
      goto LABEL_51;
    }
  }

  if (v30)
  {
    MEMORY[0x259C63150](v30, 0x1000C8000313F17);
  }

LABEL_51:
  if (v29 >= 0x41 && v28)
  {
    MEMORY[0x259C63150](v28, 0x1000C8000313F17);
  }

  if (v27 >= 0x41 && v26)
  {
    MEMORY[0x259C63150](v26, 0x1000C8000313F17);
  }

  result = llvm::APInt::getLoBits(&v36, v20, &v30);
  if (*(a4 + 24) >= 0x41u)
  {
    result = *(a4 + 16);
    if (result)
    {
      result = MEMORY[0x259C63150](result, 0x1000C8000313F17);
    }
  }

  *(a4 + 16) = v30;
  *(a4 + 24) = v31;
  if (v8 >= 2 && v4)
  {
    if (*(a4 + 8) >= 0x41u)
    {
      v25 = *a4;
    }

    else
    {
      v25 = a4;
    }

    *v25 |= 2uLL;
  }

  if (v37 >= 0x41)
  {
    result = v36;
    if (v36)
    {
      result = MEMORY[0x259C63150](v36, 0x1000C8000313F17);
    }
  }

  if (v44 >= 0x41)
  {
    result = v43;
    if (v43)
    {
      result = MEMORY[0x259C63150](v43, 0x1000C8000313F17);
    }
  }

  if (v40 >= 0x41)
  {
    result = v39;
    if (v39)
    {
      result = MEMORY[0x259C63150](v39, 0x1000C8000313F17);
    }
  }

  if (v42 >= 0x41)
  {
    result = v41;
    if (v41)
    {
      return MEMORY[0x259C63150](v41, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t llvm::KnownBits::mulhs@<X0>(llvm::KnownBits *this@<X0>, const llvm::KnownBits *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(this + 2);
  llvm::APInt::sext(this, 2 * v7, &v13);
  llvm::APInt::sext(this + 16, 2 * v7, &v9);
  v18 = v14;
  v17 = v13;
  v20 = v10;
  v19 = v9;
  llvm::APInt::sext(a2, 2 * v7, &v9);
  llvm::APInt::sext(a2 + 16, 2 * v7, &v23);
  v14 = v10;
  v13 = v9;
  v16 = v24;
  v15 = v23;
  llvm::KnownBits::mul(&v17, &v13, 0, &v9);
  llvm::APInt::extractBits(&v9, v7, v7, &v23);
  result = llvm::APInt::extractBits(&v11, v7, v7, &v21);
  *(a3 + 8) = v24;
  *a3 = v23;
  *(a3 + 24) = v22;
  *(a3 + 16) = v21;
  if (v12 >= 0x41)
  {
    result = v11;
    if (v11)
    {
      result = MEMORY[0x259C63150](v11, 0x1000C8000313F17);
    }
  }

  if (v10 >= 0x41)
  {
    result = v9;
    if (v9)
    {
      result = MEMORY[0x259C63150](v9, 0x1000C8000313F17);
    }
  }

  if (v16 >= 0x41)
  {
    result = v15;
    if (v15)
    {
      result = MEMORY[0x259C63150](v15, 0x1000C8000313F17);
    }
  }

  if (v14 >= 0x41)
  {
    result = v13;
    if (v13)
    {
      result = MEMORY[0x259C63150](v13, 0x1000C8000313F17);
    }
  }

  if (v20 >= 0x41)
  {
    result = v19;
    if (v19)
    {
      result = MEMORY[0x259C63150](v19, 0x1000C8000313F17);
    }
  }

  if (v18 >= 0x41)
  {
    result = v17;
    if (v17)
    {
      return MEMORY[0x259C63150](v17, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t llvm::KnownBits::mulhu@<X0>(llvm::KnownBits *this@<X0>, const llvm::KnownBits *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(this + 2);
  llvm::KnownBits::zext(this, 2 * v6, &v16);
  llvm::KnownBits::zext(a2, 2 * v6, &v12);
  llvm::KnownBits::mul(&v16, &v12, 0, &v8);
  llvm::APInt::extractBits(&v8, v6, v6, &v22);
  result = llvm::APInt::extractBits(&v10, v6, v6, &v20);
  *(a3 + 8) = v23;
  *a3 = v22;
  *(a3 + 24) = v21;
  *(a3 + 16) = v20;
  if (v11 >= 0x41)
  {
    result = v10;
    if (v10)
    {
      result = MEMORY[0x259C63150](v10, 0x1000C8000313F17);
    }
  }

  if (v9 >= 0x41)
  {
    result = v8;
    if (v8)
    {
      result = MEMORY[0x259C63150](v8, 0x1000C8000313F17);
    }
  }

  if (v15 >= 0x41)
  {
    result = v14;
    if (v14)
    {
      result = MEMORY[0x259C63150](v14, 0x1000C8000313F17);
    }
  }

  if (v13 >= 0x41)
  {
    result = v12;
    if (v12)
    {
      result = MEMORY[0x259C63150](v12, 0x1000C8000313F17);
    }
  }

  if (v19 >= 0x41)
  {
    result = v18;
    if (v18)
    {
      result = MEMORY[0x259C63150](v18, 0x1000C8000313F17);
    }
  }

  if (v17 >= 0x41)
  {
    result = v16;
    if (v16)
    {
      return MEMORY[0x259C63150](v16, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t *llvm::KnownBits::zext@<X0>(llvm::KnownBits *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = *(this + 2);
  llvm::APInt::zext(this, a2, &v12);
  if (v13 != v6)
  {
    if (v6 <= 0x3F && v13 <= 0x40)
    {
      v12 |= 0xFFFFFFFFFFFFFFFFLL >> ((v6 | 0x40) - v13) << v6;
      v11 = v13;
      goto LABEL_7;
    }

    llvm::APInt::setBitsSlowCase(&v12, v6, v13);
    v6 = v13;
  }

  v11 = v6;
  if (v6 > 0x40)
  {
    llvm::APInt::initSlowCase(&v10, &v12);
  }

LABEL_7:
  v10 = v12;
  result = llvm::APInt::zext(this + 2, a2, &v8);
  *(a3 + 8) = v11;
  *a3 = v10;
  v11 = 0;
  *(a3 + 24) = v9;
  *(a3 + 16) = v8;
  v9 = 0;
  if (v13 >= 0x41)
  {
    result = v12;
    if (v12)
    {
      return MEMORY[0x259C63150](v12, 0x1000C8000313F17);
    }
  }

  return result;
}

void llvm::KnownBits::sdiv(llvm::KnownBits *this@<X0>, const llvm::KnownBits *a2@<X1>, const llvm::KnownBits *a3@<X2>, _DWORD *a4@<X8>)
{
  v4 = a3;
  v8 = *(this + 2);
  v9 = (*this + 8 * ((v8 - 1) >> 6));
  if (v8 < 0x41)
  {
    v9 = this;
  }

  if ((*v9 >> (v8 - 1)))
  {
    v10 = *(a2 + 2);
    v11 = v10 - 1;
    v12 = v10 >= 0x41 ? (*a2 + 8 * ((v10 - 1) >> 6)) : a2;
    if ((*v12 >> v11))
    {

      llvm::KnownBits::udiv(this, a2, a3, a4);
      return;
    }
  }

  a4[2] = v8;
  if (v8 > 0x40)
  {
    llvm::APInt::initSlowCase(a4);
  }

  *a4 = 0;
  a4[6] = v8;
  *(a4 + 2) = 0;
  if (!v8)
  {
    goto LABEL_28;
  }

  if (*this == 0xFFFFFFFFFFFFFFFFLL >> -v8)
  {
    goto LABEL_28;
  }

  v13 = *(a2 + 2);
  if (!v13)
  {
    goto LABEL_28;
  }

  if (v13 > 0x40)
  {
    if (llvm::APInt::countTrailingOnesSlowCase(a2) != v13)
    {
      goto LABEL_19;
    }

LABEL_28:
    llvm::KnownBits::sdiv();
    return;
  }

  if (*a2 == 0xFFFFFFFFFFFFFFFFLL >> -v13)
  {
    goto LABEL_28;
  }

LABEL_19:
  LOBYTE(v57) = 0;
  v59 = 0;
  v14 = *(this + 2);
  v15 = *(this + 6);
  v16 = (v14 + 8 * ((v15 - 1) >> 6));
  if (v15 < 0x41)
  {
    v16 = (this + 16);
  }

  if (((*v16 >> (v15 - 1)) & 1) == 0)
  {
    goto LABEL_46;
  }

  v17 = (a2 + 16);
  v18 = *(a2 + 6);
  v19 = v18 - 1;
  if (v18 >= 0x41)
  {
    v17 = (*(a2 + 2) + 8 * (v19 >> 6));
  }

  if ((*v17 >> v19))
  {
    llvm::KnownBits::getSignedMaxValue(a2, &v45);
    LODWORD(v20) = *(this + 6);
    v56 = v20;
    if (v20 > 0x40)
    {
      llvm::APInt::initSlowCase(&v55, (this + 16));
    }

    v55 = *(this + 2);
    v24 = *(this + 2);
    v25 = v24 - 1;
    if (v24 >= 0x41)
    {
      v26 = (*this + 8 * ((v24 - 1) >> 6));
    }

    else
    {
      v26 = this;
    }

    if ((*v26 >> v25))
    {
      goto LABEL_55;
    }

    v27 = v20 - 1;
    v28 = v20 >= 0x41;
    v20 = &v55;
    if (v28)
    {
      v20 = &v55[v27 >> 6];
    }

    *v20 |= 1 << v27;
    LOBYTE(v20) = v56;
    if (v56 <= 0x40)
    {
LABEL_55:
      if (v55 != (1 << (v20 - 1)))
      {
        goto LABEL_90;
      }
    }

    else if (((v55[(v56 - 1) >> 6] >> (v56 - 1)) & 1) == 0 || (v29 = v56 - 1, llvm::APInt::countTrailingZerosSlowCase(&v55) != v29))
    {
LABEL_90:
      llvm::APInt::sdiv(&v55, &v45, &v53);
      if (v59 == 1)
      {
        goto LABEL_91;
      }

LABEL_97:
      v58 = v54;
      v57 = v53;
      v59 = 1;
      if (v56 < 0x41)
      {
LABEL_100:
        if (v46 >= 0x41 && v45)
        {
          MEMORY[0x259C63150](v45, 0x1000C8000313F17);
        }

        goto LABEL_103;
      }

LABEL_98:
      if (v55)
      {
        MEMORY[0x259C63150](v55, 0x1000C8000313F17);
      }

      goto LABEL_100;
    }

    v30 = v46;
    if (v46)
    {
      if (v46 > 0x40)
      {
        if (llvm::APInt::countTrailingOnesSlowCase(&v45) != v30)
        {
          goto LABEL_90;
        }
      }

      else if (v45 != 0xFFFFFFFFFFFFFFFFLL >> -v46)
      {
        goto LABEL_90;
      }
    }

    llvm::APInt::getSignedMaxValue(v8, &v53);
    if (v59 != 1)
    {
      goto LABEL_97;
    }

LABEL_91:
    if (v58 >= 0x41 && v57)
    {
      MEMORY[0x259C63150](v57, 0x1000C8000313F17);
    }

    v57 = v53;
    v58 = v54;
    if (v56 < 0x41)
    {
      goto LABEL_100;
    }

    goto LABEL_98;
  }

  v21 = (*a2 + 8 * ((v13 - 1) >> 6));
  if (v13 < 0x41)
  {
    v21 = a2;
  }

  if ((*v21 >> (v13 - 1)))
  {
    if (v4)
    {
      goto LABEL_43;
    }

    llvm::KnownBits::getSignedMaxValue(this, &v51);
    llvm::operator-(&v51, &v45);
    llvm::KnownBits::getSignedMaxValue(a2, &v55);
    v22 = llvm::APInt::compare(&v45, &v55);
    if (v56 >= 0x41 && v55)
    {
      MEMORY[0x259C63150](v55, 0x1000C8000313F17);
    }

    if (v46 >= 0x41 && v45)
    {
      MEMORY[0x259C63150](v45, 0x1000C8000313F17);
    }

    if (v52 >= 0x41 && v51)
    {
      MEMORY[0x259C63150](v51, 0x1000C8000313F17);
    }

    if ((v22 & 0x80000000) == 0)
    {
LABEL_43:
      llvm::KnownBits::getSignedMinValue(a2, &v45);
      llvm::KnownBits::getSignedMinValue(this, &v55);
      v23 = v46;
      if (v46 > 0x40)
      {
        if (llvm::APInt::countLeadingZerosSlowCase(&v45) != v23)
        {
          goto LABEL_90;
        }
      }

      else if (v45)
      {
        goto LABEL_90;
      }

      v54 = v56;
      if (v56 > 0x40)
      {
        llvm::APInt::initSlowCase(&v53, &v55);
      }

      v53 = v55;
      if (v59 != 1)
      {
        goto LABEL_97;
      }

      goto LABEL_91;
    }
  }

  else
  {
LABEL_46:
    if (((*this >> (v8 - 1)) & 1) == 0)
    {
      goto LABEL_103;
    }

    if (v15 > 0x40)
    {
      if (llvm::APInt::countLeadingZerosSlowCase((this + 16)) == v15)
      {
        goto LABEL_103;
      }
    }

    else if (!v14)
    {
      goto LABEL_103;
    }

    v31 = (a2 + 16);
    v32 = *(a2 + 6);
    v33 = v32 - 1;
    if (v32 >= 0x41)
    {
      v31 = (*(a2 + 2) + 8 * (v33 >> 6));
    }

    if ((*v31 >> v33))
    {
      if (v4)
      {
        goto LABEL_82;
      }

      llvm::KnownBits::getSignedMinValue(this, &v45);
      llvm::KnownBits::getSignedMinValue(a2, &v49);
      llvm::operator-(&v49, &v55);
      v34 = llvm::APInt::compare(&v45, &v55);
      if (v56 >= 0x41 && v55)
      {
        MEMORY[0x259C63150](v55, 0x1000C8000313F17);
      }

      if (v50 >= 0x41 && v49)
      {
        MEMORY[0x259C63150](v49, 0x1000C8000313F17);
      }

      if (v46 >= 0x41 && v45)
      {
        MEMORY[0x259C63150](v45, 0x1000C8000313F17);
      }

      if ((v34 & 0x80000000) == 0)
      {
LABEL_82:
        llvm::KnownBits::getSignedMaxValue(a2, &v45);
        llvm::KnownBits::getSignedMaxValue(this, &v55);
        goto LABEL_90;
      }
    }
  }

LABEL_103:
  if (v59 != 1)
  {
    goto LABEL_112;
  }

  v35 = v58 - 1;
  if (v58 > 0x40)
  {
    if ((*(v57 + 8 * (v35 >> 6)) >> v35))
    {
      v36 = llvm::APInt::countLeadingOnesSlowCase(&v57);
LABEL_110:
      if (v36)
      {
        llvm::KnownBits::sdiv((a4[6] - v36), a4[6], v36, (a4 + 4));
      }

      goto LABEL_112;
    }

    v40 = llvm::APInt::countLeadingZerosSlowCase(&v57);
    v37 = a4[2];
    if (!v40)
    {
      goto LABEL_113;
    }

    goto LABEL_137;
  }

  if (((v57 >> v35) & 1) == 0)
  {
    v39 = v58 + __clz(v57);
    v40 = v39 - 64;
    v37 = a4[2];
    if (v39 == 64)
    {
      goto LABEL_113;
    }

LABEL_137:
    llvm::KnownBits::sdiv(v37 - v40, v37, v40, a4);
    goto LABEL_112;
  }

  if (v58)
  {
    v36 = __clz(~(v57 << -v58));
    goto LABEL_110;
  }

LABEL_112:
  v37 = a4[2];
LABEL_113:
  v42 = v37;
  if (v37 > 0x40)
  {
    llvm::APInt::initSlowCase(&v41, a4);
  }

  v41 = *a4;
  v44 = a4[6];
  if (v44 > 0x40)
  {
    llvm::APInt::initSlowCase(&v43, (a4 + 4));
  }

  v43 = *(a4 + 2);
  divComputeLowBit(&v45, &v41, this, a2, v4);
  if (a4[2] >= 0x41u && *a4)
  {
    MEMORY[0x259C63150](*a4, 0x1000C8000313F17);
  }

  *a4 = v45;
  a4[2] = v46;
  if (a4[6] >= 0x41u)
  {
    v38 = *(a4 + 2);
    if (v38)
    {
      MEMORY[0x259C63150](v38, 0x1000C8000313F17);
    }
  }

  *(a4 + 2) = v47;
  a4[6] = v48;
  if (v44 >= 0x41 && v43)
  {
    MEMORY[0x259C63150](v43, 0x1000C8000313F17);
  }

  if (v42 >= 0x41 && v41)
  {
    MEMORY[0x259C63150](v41, 0x1000C8000313F17);
  }

  if (v59 == 1 && v58 >= 0x41 && v57)
  {
    MEMORY[0x259C63150](v57, 0x1000C8000313F17);
  }
}

void llvm::KnownBits::udiv(llvm::KnownBits *this@<X0>, const llvm::KnownBits *a2@<X1>, const llvm::KnownBits *a3@<X2>, _DWORD *a4@<X8>)
{
  v4 = a3;
  v8 = *(this + 2);
  a4[2] = v8;
  if (v8 > 0x40)
  {
    llvm::APInt::initSlowCase(a4);
  }

  *a4 = 0;
  a4[6] = v8;
  *(a4 + 2) = 0;
  if (!v8)
  {
    goto LABEL_12;
  }

  if (*this == 0xFFFFFFFFFFFFFFFFLL >> -v8)
  {
    goto LABEL_12;
  }

  v9 = *(a2 + 2);
  if (!v9)
  {
    goto LABEL_12;
  }

  if (v9 <= 0x40)
  {
    if (*a2 != 0xFFFFFFFFFFFFFFFFLL >> -v9)
    {
      goto LABEL_9;
    }

LABEL_12:
    llvm::KnownBits::sdiv();
    return;
  }

  if (llvm::APInt::countTrailingOnesSlowCase(a2) == v9)
  {
    goto LABEL_12;
  }

LABEL_9:
  v30 = *(a2 + 6);
  if (v30 > 0x40)
  {
    llvm::APInt::initSlowCase(&v29, (a2 + 16));
  }

  v29 = *(a2 + 2);
  v22 = v8;
  v10 = ((0xFFFFFFFFFFFFFFFFLL >> -v8) & ~*this);
  v28 = v8;
  v27 = v10;
  if (v29)
  {
    llvm::APInt::udiv(&v27, &v29, &v25);
    v11 = v26;
    if (v26 > 0x40)
    {
      v12 = llvm::APInt::countLeadingZerosSlowCase(&v25);
      v13 = a4[2];
      if (v12)
      {
        goto LABEL_22;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v26 = v8;
    v25 = v10;
    v11 = v8;
  }

  v14 = v11 + __clz(v25);
  v12 = v14 - 64;
  v13 = a4[2];
  if (v14 != 64)
  {
LABEL_22:
    v15 = v13 - v12;
    if (v13 <= 0x40 && v15 <= 0x3F)
    {
      *a4 |= 0xFFFFFFFFFFFFFFFFLL >> -v12 << v15;
      v18 = v13;
      goto LABEL_26;
    }

    llvm::APInt::setBitsSlowCase(a4, v15, v13);
    v18 = a4[2];
    if (v18 <= 0x40)
    {
      goto LABEL_26;
    }

LABEL_28:
    llvm::APInt::initSlowCase(&v17, a4);
  }

LABEL_19:
  v18 = v13;
  if (v13 > 0x40)
  {
    goto LABEL_28;
  }

LABEL_26:
  v17 = *a4;
  v20 = a4[6];
  if (v20 > 0x40)
  {
    llvm::APInt::initSlowCase(&v19, (a4 + 4));
  }

  v19 = *(a4 + 2);
  divComputeLowBit(&v21, &v17, this, a2, v4);
  if (a4[2] >= 0x41u && *a4)
  {
    MEMORY[0x259C63150](*a4, 0x1000C8000313F17);
  }

  *a4 = v21;
  a4[2] = v22;
  v22 = 0;
  if (a4[6] >= 0x41u)
  {
    v16 = *(a4 + 2);
    if (v16)
    {
      MEMORY[0x259C63150](v16, 0x1000C8000313F17);
    }
  }

  *(a4 + 2) = v23;
  a4[6] = v24;
  v24 = 0;
  if (v20 >= 0x41 && v19)
  {
    MEMORY[0x259C63150](v19, 0x1000C8000313F17);
  }

  if (v18 >= 0x41 && v17)
  {
    MEMORY[0x259C63150](v17, 0x1000C8000313F17);
  }

  if (v26 >= 0x41 && v25)
  {
    MEMORY[0x259C63150](v25, 0x1000C8000313F17);
  }

  if (v28 >= 0x41 && v27)
  {
    MEMORY[0x259C63150](v27, 0x1000C8000313F17);
  }

  if (v30 >= 0x41)
  {
    if (v29)
    {
      MEMORY[0x259C63150](v29, 0x1000C8000313F17);
    }
  }
}

uint64_t **llvm::operator-@<X0>(llvm::APInt *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 2);
  if (v4 > 0x40)
  {
    llvm::APInt::flipAllBitsSlowCase(this);
  }

  else
  {
    if (v4)
    {
      v5 = 0xFFFFFFFFFFFFFFFFLL >> -v4;
    }

    else
    {
      v5 = 0;
    }

    *this = v5 & ~*this;
  }

  result = llvm::APInt::operator++(this);
  *(a2 + 8) = *(this + 2);
  *a2 = *this;
  *(this + 2) = 0;
  return result;
}

void divComputeLowBit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    goto LABEL_39;
  }

  v10 = (a3 + 16);
  v9 = *(a3 + 16);
  if (*(a3 + 24) < 0x41u)
  {
    v9 = (a3 + 16);
  }

  if (*v9)
  {
    v11 = (a2 + 16);
    if (*(a2 + 24) >= 0x41u)
    {
      v11 = *v11;
    }

    *v11 |= 1uLL;
  }

  if (*(a3 + 8) > 0x40u)
  {
    v12 = llvm::APInt::countTrailingOnesSlowCase(a3);
    v13 = *(a4 + 24);
    if (v13 > 0x40)
    {
LABEL_10:
      v14 = llvm::APInt::countTrailingZerosSlowCase((a4 + 16));
      v15 = v12 - v14;
      v16 = *(a3 + 24);
      if (v16 > 0x40)
      {
        goto LABEL_11;
      }

      goto LABEL_20;
    }
  }

  else
  {
    v12 = __clz(__rbit64(~*a3));
    v13 = *(a4 + 24);
    if (v13 > 0x40)
    {
      goto LABEL_10;
    }
  }

  v19 = __clz(__rbit64(*(a4 + 16)));
  if (v13 >= v19)
  {
    v14 = v19;
  }

  else
  {
    v14 = v13;
  }

  v15 = v12 - v14;
  v16 = *(a3 + 24);
  if (v16 > 0x40)
  {
LABEL_11:
    v17 = llvm::APInt::countTrailingZerosSlowCase(v10);
    if (*(a4 + 8) > 0x40u)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_20:
  v20 = __clz(__rbit64(*v10));
  if (v16 >= v20)
  {
    v17 = v20;
  }

  else
  {
    v17 = v16;
  }

  if (*(a4 + 8) > 0x40u)
  {
LABEL_12:
    v18 = v17 - llvm::APInt::countTrailingOnesSlowCase(a4);
    if ((v15 & 0x80000000) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_24:
  v18 = v17 - __clz(__rbit64(~*a4));
  if ((v15 & 0x80000000) != 0)
  {
LABEL_13:
    if (v18 < 0)
    {
      divComputeLowBit(a2);
    }

    goto LABEL_35;
  }

LABEL_25:
  if (v12 != v14)
  {
    if (v15 <= 0x40)
    {
      v21 = 0xFFFFFFFFFFFFFFFFLL >> -v15;
      if (*(a2 + 8) > 0x40u)
      {
        **a2 |= v21;
        if (v15 != v18)
        {
          goto LABEL_35;
        }
      }

      else
      {
        *a2 |= v21;
        if (v15 != v18)
        {
          goto LABEL_35;
        }
      }

      goto LABEL_32;
    }

    llvm::APInt::setBitsSlowCase(a2, 0, v15);
  }

  if (v15 != v18)
  {
    goto LABEL_35;
  }

LABEL_32:
  v22 = (a2 + 16);
  if (*(a2 + 24) >= 0x41u)
  {
    v22 = (*v22 + 8 * (v15 >> 6));
  }

  *v22 |= 1 << v15;
LABEL_35:
  v23 = *(a2 + 8);
  if (v23 > 0x40)
  {
    if (llvm::APInt::intersectsSlowCase(a2, (a2 + 16)))
    {
      memset(*a2, 255, ((v23 + 63) >> 3) & 0x3FFFFFF8);
      LODWORD(v23) = *(a2 + 8);
      goto LABEL_43;
    }
  }

  else if ((*(a2 + 16) & *a2) != 0)
  {
    *a2 = -1;
LABEL_43:
    divComputeLowBit(a2, v23, (a2 + 16));
  }

LABEL_39:
  *(a1 + 8) = *(a2 + 8);
  *a1 = *a2;
  *(a2 + 8) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 24) = 0;
}

void *llvm::KnownBits::remGetLowBits@<X0>(void *this@<X0>, const llvm::KnownBits *a2@<X1>, const llvm::KnownBits *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(this + 2);
  v6 = *(a2 + 2);
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = this;
  if (v6 > 0x40)
  {
    this = llvm::APInt::countTrailingOnesSlowCase(a2);
    if (this != v6)
    {
      v11 = a2;
      v9 = this;
      if (**v11)
      {
        goto LABEL_13;
      }
    }

LABEL_10:
    *(a4 + 8) = v5;
    if (v5 > 0x40)
    {
      llvm::APInt::initSlowCase(a4);
    }

    *a4 = 0;
    *(a4 + 24) = v5;
    *(a4 + 16) = 0;
    return this;
  }

  if (*a2 == 0xFFFFFFFFFFFFFFFFLL >> -v6 || (*a2 & 1) == 0)
  {
    goto LABEL_10;
  }

  v9 = __clz(__rbit64(~*a2));
LABEL_13:
  v30 = v5;
  if (v5 > 0x40)
  {
    llvm::APInt::initSlowCase(&v29);
  }

  v29 = 0;
  if (v9)
  {
    if (v9 > 0x40)
    {
      this = llvm::APInt::setBitsSlowCase(&v29, 0, v9);
      v12 = (v7 + 4);
      v13 = v7[6];
      v26 = v13;
      if (v13 >= 0x41)
      {
LABEL_25:
        llvm::APInt::initSlowCase(&v25, v12);
      }
    }

    else
    {
      v14 = 0xFFFFFFFFFFFFFFFFLL >> -v9;
      if (v30 > 0x40)
      {
        *v29 |= v14;
        v12 = (v7 + 4);
        v13 = v7[6];
        v26 = v13;
        if (v13 >= 0x41)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v29 |= v14;
        v12 = (v7 + 4);
        v13 = v7[6];
        v26 = v13;
        if (v13 >= 0x41)
        {
          goto LABEL_25;
        }
      }
    }
  }

  else
  {
    v12 = (v7 + 4);
    v13 = v7[6];
    v26 = v13;
    if (v13 >= 0x41)
    {
      goto LABEL_25;
    }
  }

  v25 = (*v12 & v29);
  v15 = v25;
  v28 = v13;
  v27 = v25;
  v26 = 0;
  v16 = v7[2];
  v22 = v16;
  if (v16 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v21, v7);
  }

  v21 = (*v7 & v29);
  v24 = v16;
  v23 = v21;
  v22 = 0;
  v19 = v21;
  v17 = v25;
  *(a4 + 8) = v16;
  *a4 = v19;
  v20 = 0;
  *(a4 + 24) = v13;
  *(a4 + 16) = v15;
  v18 = 0;
  if (v24 >= 0x41)
  {
    this = v23;
    if (v23)
    {
      this = MEMORY[0x259C63150](v23, 0x1000C8000313F17, a3);
    }
  }

  if (v28 >= 0x41)
  {
    this = v27;
    if (v27)
    {
      this = MEMORY[0x259C63150](v27, 0x1000C8000313F17, a3);
    }
  }

  if (v30 >= 0x41)
  {
    this = v29;
    if (v29)
    {
      return MEMORY[0x259C63150](v29, 0x1000C8000313F17, a3);
    }
  }

  return this;
}

void *llvm::KnownBits::urem@<X0>(llvm::KnownBits *this@<X0>, int8x16_t **a2@<X1>, const llvm::KnownBits *a3@<X2>, uint64_t a4@<X8>)
{
  llvm::KnownBits::remGetLowBits(this, a2, a3, a4);
  v7 = *(a2 + 2);
  if (v7 > 0x40)
  {
    v9 = llvm::APInt::countPopulationSlowCase(a2);
    v10 = *(a2 + 6);
    if (v10 > 0x40)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = vcnt_s8(*a2);
    v8.i16[0] = vaddlv_u8(v8);
    v9 = v8.i32[0];
    v10 = *(a2 + 6);
    if (v10 > 0x40)
    {
LABEL_3:
      v11 = llvm::APInt::countPopulationSlowCase(a2 + 2);
      if (v11 + v9 == v7 && v11 == 1)
      {
        v25 = v10;
        llvm::APInt::initSlowCase(&v24, (a2 + 2));
      }

      goto LABEL_11;
    }
  }

  v12 = a2[2];
  v13 = vcnt_s8(v12);
  v13.i16[0] = vaddlv_u8(v13);
  if (v9 + v13.i32[0] == v7 && v13.u32[0] == 1)
  {
    v25 = v10;
    v24 = v12;
    result = llvm::APInt::operator-=(&v24, 1uLL);
    v19 = v25;
    v27 = v25;
    v26 = v24;
    v25 = 0;
    if (v27 > 0x40)
    {
      result = llvm::APInt::flipAllBitsSlowCase(&v26);
      v19 = v27;
      v21 = v26;
      v29 = v27;
      v28 = v26;
      v27 = 0;
      if (v25 >= 0x41)
      {
        result = v24;
        if (v24)
        {
          result = MEMORY[0x259C63150](v24, 0x1000C8000313F17);
        }
      }
    }

    else
    {
      v20 = 0xFFFFFFFFFFFFFFFFLL >> -v19;
      if (!v19)
      {
        v20 = 0;
      }

      v21 = v20 & ~v24;
      v26 = v21;
      v29 = v19;
      v28 = v21;
      v27 = 0;
    }

    if (*(a4 + 8) > 0x40u)
    {
      result = llvm::APInt::orAssignSlowCase(a4, &v28);
      if (v29 < 0x41)
      {
        return result;
      }
    }

    else
    {
      *a4 |= v21;
      if (v19 < 0x41)
      {
        return result;
      }
    }

    result = v28;
    if (v28)
    {
      return MEMORY[0x259C63150](v28, 0x1000C8000313F17);
    }

    return result;
  }

LABEL_11:
  v15 = *(this + 2);
  if (v15 > 0x40)
  {
    v16 = llvm::APInt::countLeadingOnesSlowCase(this);
    if (v7 > 0x40)
    {
      goto LABEL_36;
    }

    goto LABEL_16;
  }

  if (!v15)
  {
    v16 = 0;
    if (v7 > 0x40)
    {
      goto LABEL_36;
    }

LABEL_16:
    if (v7)
    {
      result = __clz(~(*a2 << -v7));
      if (v16 <= result)
      {
        v18 = result;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        goto LABEL_40;
      }
    }

    else
    {
      result = 0;
      if (v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = 0;
      }

      if (v18)
      {
        goto LABEL_40;
      }
    }

    return result;
  }

  v16 = __clz(~(*this << -v15));
  if (v7 <= 0x40)
  {
    goto LABEL_16;
  }

LABEL_36:
  result = llvm::APInt::countLeadingOnesSlowCase(a2);
  if (v16 <= result)
  {
    v18 = result;
  }

  else
  {
    v18 = v16;
  }

  if (v18)
  {
LABEL_40:
    v22 = *(a4 + 8);
    v23 = v22 - v18;
    if (v22 > 0x40 || v23 > 0x3F)
    {

      return llvm::APInt::setBitsSlowCase(a4, v23, v22);
    }

    else
    {
      *a4 |= 0xFFFFFFFFFFFFFFFFLL >> -v18 << v23;
    }
  }

  return result;
}

uint64_t llvm::KnownBits::srem@<X0>(llvm::KnownBits *this@<X0>, int8x16_t **a2@<X1>, const llvm::KnownBits *a3@<X2>, uint64_t a4@<X8>)
{
  result = llvm::KnownBits::remGetLowBits(this, a2, a3, a4);
  v8 = *(a2 + 2);
  if (v8 > 0x40)
  {
    result = llvm::APInt::countPopulationSlowCase(a2);
    v10 = result;
    v11 = *(a2 + 6);
    if (v11 > 0x40)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = vcnt_s8(*a2);
    v9.i16[0] = vaddlv_u8(v9);
    v10 = v9.i32[0];
    v11 = *(a2 + 6);
    if (v11 > 0x40)
    {
LABEL_3:
      result = llvm::APInt::countPopulationSlowCase(a2 + 2);
      if (result + v10 == v8 && result == 1)
      {
        v48 = v11;
        llvm::APInt::initSlowCase(&v47, (a2 + 2));
      }

LABEL_11:
      v15 = *(this + 2);
      v16 = *(this + 6);
      v17 = (v15 + 8 * ((v16 - 1) >> 6));
      if (v16 < 0x41)
      {
        v17 = (this + 16);
      }

      if ((*v17 >> (v16 - 1)))
      {
        v18 = *(a4 + 24);
        if (v18 > 0x40)
        {
          result = llvm::APInt::countLeadingZerosSlowCase((a4 + 16));
          if (result != v18)
          {
LABEL_16:
            if (v16 > 0x40)
            {
              v20 = llvm::APInt::countLeadingOnesSlowCase((this + 16));
            }

            else
            {
              v19 = __clz(~(v15 << -v16));
              if (v16)
              {
                v20 = v19;
              }

              else
              {
                v20 = 0;
              }
            }

            result = llvm::KnownBits::countMinSignBits(a2);
            if (v20 <= result)
            {
              v38 = result;
            }

            else
            {
              v38 = v20;
            }

            if (v38)
            {
              v39 = *(a4 + 24);
              v40 = v39 - v38;
              if (v39 > 0x40 || v40 > 0x3F)
              {

                return llvm::APInt::setBitsSlowCase((a4 + 16), v40, v39);
              }

              else
              {
                *(a4 + 16) |= 0xFFFFFFFFFFFFFFFFLL >> -v38 << v40;
              }
            }

            return result;
          }
        }

        else if (*(a4 + 16))
        {
          goto LABEL_16;
        }
      }

      v26 = *(this + 2);
      v27 = v26 - 1;
      if (v26 > 0x40)
      {
        if (((*(*this + 8 * (v27 >> 6)) >> v27) & 1) == 0)
        {
          return result;
        }

        v29 = llvm::APInt::countLeadingOnesSlowCase(this);
      }

      else
      {
        if (((*this >> v27) & 1) == 0)
        {
          return result;
        }

        v28 = __clz(~(*this << -v26));
        if (v26)
        {
          v29 = v28;
        }

        else
        {
          v29 = 0;
        }
      }

      return llvm::KnownBits::srem(a4, a2, v29);
    }
  }

  v12 = a2[2];
  v13 = vcnt_s8(v12);
  v13.i16[0] = vaddlv_u8(v13);
  if (v10 + v13.i32[0] != v8 || v13.u32[0] != 1)
  {
    goto LABEL_11;
  }

  v48 = v11;
  v47 = v12;
  result = llvm::APInt::operator-=(&v47, 1uLL);
  v21 = v48;
  v50 = v48;
  v49 = v47;
  v48 = 0;
  v22 = *(this + 2);
  v23 = v22 - 1;
  if (v22 >= 0x41)
  {
    v24 = (*this + 8 * (v23 >> 6));
  }

  else
  {
    v24 = this;
  }

  if ((*v24 >> v23))
  {
    v44 = v21;
    if (v21 >= 0x41)
    {
      llvm::APInt::initSlowCase(&v43, &v49);
    }

    goto LABEL_29;
  }

  if (v21 <= 0x40)
  {
    if ((v47 & ~*this) != 0)
    {
      goto LABEL_52;
    }

    v44 = v21;
LABEL_29:
    v25 = 0xFFFFFFFFFFFFFFFFLL >> -v21;
    if (!v21)
    {
      v25 = 0;
    }

    v43 = v25 & ~v47;
    v46 = v21;
    v45 = v43;
    v44 = 0;
    if (*(a4 + 8) > 0x40u)
    {
      result = llvm::APInt::orAssignSlowCase(a4, &v45);
      if (v46 < 0x41)
      {
        goto LABEL_48;
      }
    }

    else
    {
      *a4 |= v25 & ~v47;
      if (v46 < 0x41)
      {
LABEL_48:
        if (v44 >= 0x41)
        {
          result = v43;
          if (v43)
          {
            result = MEMORY[0x259C63150](v43, 0x1000C8000313F17);
          }
        }

        v21 = v50;
        goto LABEL_52;
      }
    }

    result = v45;
    if (v45)
    {
      result = MEMORY[0x259C63150](v45, 0x1000C8000313F17);
    }

    goto LABEL_48;
  }

  result = llvm::APInt::isSubsetOfSlowCase(&v49, this);
  if (result)
  {
    v44 = v21;
    llvm::APInt::initSlowCase(&v43, &v49);
  }

LABEL_52:
  v32 = *(this + 2);
  v31 = this + 16;
  v30 = v32;
  v33 = *(v31 + 2);
  v34 = v33 - 1;
  v35 = (v32 + 8 * ((v33 - 1) >> 6));
  if (v33 >= 0x41)
  {
    v36 = v35;
  }

  else
  {
    v36 = v31;
  }

  if (((*v36 >> v34) & 1) == 0)
  {
    goto LABEL_73;
  }

  if (v21 <= 0x40)
  {
    if ((v49 & v30) == 0)
    {
      return result;
    }

    v42 = v21;
    v37 = 0xFFFFFFFFFFFFFFFFLL >> -v21;
    if (!v21)
    {
      v37 = 0;
    }

    v41 = v37 & ~v49;
    v46 = v21;
    v45 = v41;
    v42 = 0;
    if (*(a4 + 24) > 0x40u)
    {
      result = llvm::APInt::orAssignSlowCase(a4 + 16, &v45);
      if (v46 < 0x41)
      {
        goto LABEL_69;
      }
    }

    else
    {
      *(a4 + 16) |= v37 & ~v49;
      if (v46 < 0x41)
      {
LABEL_69:
        if (v42 >= 0x41)
        {
          result = v41;
          if (v41)
          {
            result = MEMORY[0x259C63150](v41, 0x1000C8000313F17);
          }
        }

        v21 = v50;
LABEL_73:
        if (v21 < 0x41)
        {
          return result;
        }

        goto LABEL_74;
      }
    }

    result = v45;
    if (v45)
    {
      result = MEMORY[0x259C63150](v45, 0x1000C8000313F17);
    }

    goto LABEL_69;
  }

  if (llvm::APInt::intersectsSlowCase(&v49, v31))
  {
    v42 = v21;
    llvm::APInt::initSlowCase(&v41, &v49);
  }

LABEL_74:
  result = v49;
  if (v49)
  {
    return MEMORY[0x259C63150](v49, 0x1000C8000313F17);
  }

  return result;
}

llvm::APInt *llvm::KnownBits::operator&=(llvm::APInt *this, llvm::APInt *a2)
{
  if (*(this + 2) > 0x40u)
  {
    llvm::APInt::orAssignSlowCase(this, a2);
    if (*(this + 6) > 0x40u)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *this |= *a2;
    if (*(this + 6) > 0x40u)
    {
LABEL_3:
      llvm::APInt::andAssignSlowCase(this + 16, (a2 + 16));
      return this;
    }
  }

  *(this + 2) &= *(a2 + 2);
  return this;
}

llvm::APInt *llvm::KnownBits::operator|=(llvm::APInt *this, llvm::APInt *a2)
{
  if (*(this + 2) > 0x40u)
  {
    llvm::APInt::andAssignSlowCase(this, a2);
    if (*(this + 6) > 0x40u)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *this &= *a2;
    if (*(this + 6) > 0x40u)
    {
LABEL_3:
      llvm::APInt::orAssignSlowCase(this + 16, (a2 + 16));
      return this;
    }
  }

  *(this + 2) |= *(a2 + 2);
  return this;
}

llvm::APInt *llvm::KnownBits::operator^=(llvm::APInt *a1, void *a2)
{
  v3 = *(a1 + 2);
  v20 = v3;
  if (v3 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v19, a1);
  }

  v19 = *a1 & *a2;
  v22 = v3;
  v21 = v19;
  v20 = 0;
  v4 = (a1 + 16);
  v5 = *(a1 + 6);
  v16 = v5;
  if (v5 > 0x40)
  {
    llvm::APInt::initSlowCase(&v15, (a1 + 16));
  }

  v15 = *(a1 + 2) & a2[2];
  v16 = 0;
  v6 = v21 | v15;
  v17 = v21 | v15;
  v18 = 0;
  v7 = *(a1 + 2);
  v14 = v7;
  if (v7 > 0x40)
  {
    llvm::APInt::initSlowCase(&v13, a1);
  }

  v8 = *a1 & a2[2];
  v13 = v8;
  v22 = v7;
  v21 = v8;
  v14 = 0;
  v9 = *(a1 + 6);
  v12 = v9;
  if (v9 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v11, (a1 + 16));
  }

  v11 = *(a1 + 2) & *a2;
  v12 = 0;
  v17 = v8 | v11;
  v18 = 0;
  if (*(a1 + 6) >= 0x41u && *v4)
  {
    MEMORY[0x259C63150](*v4, 0x1000C8000313F17);
  }

  *(a1 + 2) = v8 | v11;
  *(a1 + 6) = v9;
  if (v18 >= 0x41 && v17)
  {
    MEMORY[0x259C63150](v17, 0x1000C8000313F17);
  }

  if (v12 >= 0x41 && v11)
  {
    MEMORY[0x259C63150](v11, 0x1000C8000313F17);
  }

  if (v22 >= 0x41 && v21)
  {
    MEMORY[0x259C63150](v21, 0x1000C8000313F17);
  }

  if (v14 >= 0x41 && v13)
  {
    MEMORY[0x259C63150](v13, 0x1000C8000313F17);
  }

  if (*(a1 + 2) >= 0x41u && *a1)
  {
    MEMORY[0x259C63150](*a1, 0x1000C8000313F17);
  }

  *a1 = v6;
  *(a1 + 2) = v5;
  return a1;
}

uint64_t llvm::KnownBits::blsi@<X0>(llvm::KnownBits *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 2);
  v15 = v4;
  if (v4 > 0x40)
  {
    llvm::APInt::initSlowCase(&v14, this);
  }

  v5 = *this;
  v14 = *this;
  *(a2 + 8) = v4;
  *a2 = v5;
  v15 = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = v4;
  v6 = *(this + 6);
  if (v6 > 0x40)
  {
    v11 = llvm::APInt::countTrailingZerosSlowCase(this + 2);
    v8 = v11;
    if (v4 >= v11 + 1)
    {
      v9 = v11 + 1;
    }

    else
    {
      v9 = v4;
    }

    v10 = v9 - v4;
    if (v9 == v4)
    {
LABEL_19:
      if (*(this + 2) <= 0x40u)
      {
        goto LABEL_20;
      }

      goto LABEL_23;
    }
  }

  else
  {
    v7 = __clz(__rbit64(*(this + 2)));
    if (v6 >= v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = *(this + 6);
    }

    if (v4 >= v8 + 1)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = v4;
    }

    v10 = v9 - v4;
    if (v9 == v4)
    {
      goto LABEL_19;
    }
  }

  if (v9 <= 0x3F)
  {
    *a2 = v5 | (0xFFFFFFFFFFFFFFFFLL >> v10 << v9);
    goto LABEL_19;
  }

  llvm::APInt::setBitsSlowCase(a2, v9, v4);
  if (*(this + 2) <= 0x40u)
  {
LABEL_20:
    result = __clz(__rbit64(~*this));
    if (v8 >= v4)
    {
      return result;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = llvm::APInt::countTrailingOnesSlowCase(this);
  if (v8 >= v4)
  {
    return result;
  }

LABEL_24:
  if (v8 == result)
  {
    if (*(a2 + 24) >= 0x41u)
    {
      v13 = (*(a2 + 16) + 8 * (v8 >> 6));
    }

    else
    {
      v13 = (a2 + 16);
    }

    *v13 |= 1 << v8;
  }

  return result;
}

void *llvm::KnownBits::blsmsk@<X0>(llvm::KnownBits *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 2);
  *(a2 + 8) = v4;
  if (v4 > 0x40)
  {
    llvm::APInt::initSlowCase(a2);
  }

  *a2 = 0;
  *(a2 + 24) = v4;
  *(a2 + 16) = 0;
  v5 = *(this + 6);
  if (v5 <= 0x40)
  {
    v10 = __clz(__rbit64(*(this + 2)));
    if (v5 >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = *(this + 6);
    }

    if (v4 >= v11 + 1)
    {
      v7 = v11 + 1;
    }

    else
    {
      v7 = v4;
    }

    v8 = *(a2 + 8);
    v9 = v7 - v8;
    if (v7 == v8)
    {
LABEL_19:
      if (*(this + 2) <= 0x40u)
      {
        goto LABEL_20;
      }

LABEL_26:
      result = llvm::APInt::countTrailingOnesSlowCase(this);
      if (v4 >= result + 1)
      {
        v13 = result + 1;
      }

      else
      {
        v13 = v4;
      }

      if (!v13)
      {
        return result;
      }

      goto LABEL_30;
    }
  }

  else
  {
    v6 = llvm::APInt::countTrailingZerosSlowCase(this + 2);
    if (v4 >= v6 + 1)
    {
      v7 = v6 + 1;
    }

    else
    {
      v7 = v4;
    }

    v8 = *(a2 + 8);
    v9 = v7 - v8;
    if (v7 == v8)
    {
      goto LABEL_19;
    }
  }

  if (v8 <= 0x40 && v7 <= 0x3F)
  {
    *a2 |= 0xFFFFFFFFFFFFFFFFLL >> v9 << v7;
    goto LABEL_19;
  }

  llvm::APInt::setBitsSlowCase(a2, v7, v8);
  if (*(this + 2) > 0x40u)
  {
    goto LABEL_26;
  }

LABEL_20:
  result = __clz(__rbit64(~*this));
  if (v4 >= result + 1)
  {
    v13 = result + 1;
  }

  else
  {
    v13 = v4;
  }

  if (!v13)
  {
    return result;
  }

LABEL_30:
  if (v13 > 0x40)
  {

    return llvm::APInt::setBitsSlowCase((a2 + 16), 0, v13);
  }

  else
  {
    v14 = 0xFFFFFFFFFFFFFFFFLL >> -v13;
    if (*(a2 + 24) > 0x40u)
    {
      **(a2 + 16) |= v14;
    }

    else
    {
      *(a2 + 16) |= v14;
    }
  }

  return result;
}

void *llvm::KnownBits::print(void *this, llvm::raw_ostream *a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    v4 = this;
    v5 = this + 2;
    v6 = v2 - 1;
    while (1)
    {
      while (1)
      {
        v7 = *(v4 + 8);
        v8 = v4;
        if (v7 >= 0x41)
        {
          v8 = (*v4 + 8 * (v6 >> 6));
        }

        v9 = 1 << v6;
        if ((*v8 & (1 << v6)) == 0)
        {
          break;
        }

        v10 = v5;
        if (*(v4 + 24) >= 0x41u)
        {
          v10 = (*v5 + 8 * (v6 >> 6));
        }

        if ((*v10 & v9) == 0)
        {
          break;
        }

        v11 = *(a2 + 4);
        if (*(a2 + 3) == v11)
        {
          this = llvm::raw_ostream::write(a2, "!", 1uLL);
          if (--v6 == -1)
          {
            return this;
          }
        }

        else
        {
          *v11 = 33;
LABEL_4:
          ++*(a2 + 4);
          if (--v6 == -1)
          {
            return this;
          }
        }
      }

      v12 = v4;
      if (v7 >= 0x41)
      {
        v12 = (*v4 + 8 * (v6 >> 6));
      }

      if ((*v12 & v9) != 0)
      {
        v13 = *(a2 + 4);
        if (*(a2 + 3) != v13)
        {
          *v13 = 48;
          goto LABEL_4;
        }

        this = llvm::raw_ostream::write(a2, "0", 1uLL);
        if (--v6 == -1)
        {
          return this;
        }
      }

      else
      {
        v14 = v5;
        if (*(v4 + 24) >= 0x41u)
        {
          v14 = (*v5 + 8 * (v6 >> 6));
        }

        v15 = *v14;
        v17 = *(a2 + 3);
        v16 = *(a2 + 4);
        if ((v15 & v9) != 0)
        {
          if (v17 != v16)
          {
            *v16 = 49;
            goto LABEL_4;
          }

          this = llvm::raw_ostream::write(a2, "1", 1uLL);
          if (--v6 == -1)
          {
            return this;
          }
        }

        else
        {
          if (v17 != v16)
          {
            *v16 = 63;
            goto LABEL_4;
          }

          this = llvm::raw_ostream::write(a2, "?", 1uLL);
          if (--v6 == -1)
          {
            return this;
          }
        }
      }
    }
  }

  return this;
}