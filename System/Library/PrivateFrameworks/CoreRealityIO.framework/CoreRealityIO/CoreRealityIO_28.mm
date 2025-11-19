void sub_24765BFB8(_Unwind_Exception *a1)
{
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit(v1, 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan &,pxrInternal__aapl__pxrReserved__::TfToken *,0>(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v5 = result;
  if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v6 = (*a2 & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
    v6 = result;
  }

  if ((*v5 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v7 = (*v5 & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
    v7 = result;
  }

  if (*(v6 + 23) >= 0)
  {
    v8 = v6;
  }

  else
  {
    v8 = *v6;
  }

  v9 = *v8;
  if (*(v7 + 23) >= 0)
  {
    v10 = v7;
  }

  else
  {
    v10 = *v7;
  }

  if (v9 < 0 || (v11 = *v10, v11 < 0) || ((v12 = v9, v13 = v11, v14 = (v11 ^ v12) & 0x5F, v12 >= 0x40) ? (v15 = v14 == 0) : (v15 = 1), v15 || v13 < 0x40))
  {
    result = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl();
    if (result)
    {
      goto LABEL_21;
    }
  }

  else if (((v12 + 5) & 0x1Fu) < ((v13 + 5) & 0x1Fu))
  {
LABEL_21:
    if ((*a3 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v16 = (*a3 & 0xFFFFFFFFFFFFFFF8) + 16;
    }

    else
    {
      result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
      v16 = result;
    }

    if ((*v4 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v17 = (*v4 & 0xFFFFFFFFFFFFFFF8) + 16;
    }

    else
    {
      result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
      v17 = result;
    }

    if (*(v16 + 23) >= 0)
    {
      v18 = v16;
    }

    else
    {
      v18 = *v16;
    }

    v19 = *v18;
    if (*(v17 + 23) >= 0)
    {
      v20 = v17;
    }

    else
    {
      v20 = *v17;
    }

    if (v19 < 0 || (v21 = *v20, v21 < 0) || ((v22 = v19, v23 = v21, v24 = (v21 ^ v22) & 0x5F, v22 >= 0x40) ? (v25 = v24 == 0) : (v25 = 1), v25 || v23 < 0x40))
    {
      result = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl();
      if (result)
      {
        goto LABEL_41;
      }
    }

    else if (((v22 + 5) & 0x1Fu) < ((v23 + 5) & 0x1Fu))
    {
LABEL_41:
      v4 = a3;
LABEL_105:
      v61 = *v5;
      *v5 = *v4;
      *v4 = v61;
      return result;
    }

    v49 = *v5;
    *v5 = *v4;
    *v4 = v49;
    if ((*a3 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v50 = (*a3 & 0xFFFFFFFFFFFFFFF8) + 16;
    }

    else
    {
      result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
      v50 = result;
      v49 = *v4;
    }

    v51 = v49 & 0xFFFFFFFFFFFFFFF8;
    if (v51)
    {
      v52 = (v51 + 16);
    }

    else
    {
      result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
      v52 = result;
    }

    if (*(v50 + 23) >= 0)
    {
      v53 = v50;
    }

    else
    {
      v53 = *v50;
    }

    v54 = *v53;
    if (v52[23] >= 0)
    {
      v55 = v52;
    }

    else
    {
      v55 = *v52;
    }

    if (v54 < 0 || (v56 = *v55, v56 < 0) || ((v57 = v54, v58 = v56, v59 = (v56 ^ v57) & 0x5F, v57 >= 0x40) ? (v60 = v59 == 0) : (v60 = 1), v60 || v58 < 0x40))
    {
      result = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl();
      v5 = v4;
      v4 = a3;
      if (!result)
      {
        return result;
      }

      goto LABEL_105;
    }

    v47 = (v57 + 5) & 0x1F;
    v48 = (v58 + 5) & 0x1F;
    v5 = v4;
    v4 = a3;
LABEL_104:
    if (v47 >= v48)
    {
      return result;
    }

    goto LABEL_105;
  }

  if ((*a3 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v26 = (*a3 & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
    v26 = result;
  }

  if ((*v4 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v27 = (*v4 & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
    v27 = result;
  }

  if (*(v26 + 23) >= 0)
  {
    v28 = v26;
  }

  else
  {
    v28 = *v26;
  }

  v29 = *v28;
  if (*(v27 + 23) >= 0)
  {
    v30 = v27;
  }

  else
  {
    v30 = *v27;
  }

  if (v29 < 0 || (v31 = *v30, v31 < 0) || ((v32 = v29, v33 = v31, v34 = (v31 ^ v32) & 0x5F, v32 >= 0x40) ? (v35 = v34 == 0) : (v35 = 1), v35 || v33 < 0x40))
  {
    result = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl();
    if (!result)
    {
      return result;
    }
  }

  else if (((v32 + 5) & 0x1Fu) >= ((v33 + 5) & 0x1Fu))
  {
    return result;
  }

  v36 = *v4;
  *v4 = *a3;
  *a3 = v36;
  if ((*v4 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v37 = (*v4 & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
    v37 = result;
  }

  if ((*v5 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v38 = (*v5 & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
    v38 = result;
  }

  if (*(v37 + 23) >= 0)
  {
    v39 = v37;
  }

  else
  {
    v39 = *v37;
  }

  v40 = *v39;
  if (*(v38 + 23) >= 0)
  {
    v41 = v38;
  }

  else
  {
    v41 = *v38;
  }

  if ((v40 & 0x80000000) == 0)
  {
    v42 = *v41;
    if ((v42 & 0x80000000) == 0)
    {
      v43 = v40;
      v44 = v42;
      v45 = (v42 ^ v43) & 0x5F;
      v46 = v43 < 0x40 || v45 == 0;
      if (!v46 && v44 >= 0x40)
      {
        v47 = (v43 + 5) & 0x1F;
        v48 = (v44 + 5) & 0x1F;
        goto LABEL_104;
      }
    }
  }

  result = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl();
  if (result)
  {
    goto LABEL_105;
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::TfToken *std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan &,pxrInternal__aapl__pxrReserved__::TfToken *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan &,pxrInternal__aapl__pxrReserved__::TfToken *,0>(a1, a2, a3);
  if ((*a4 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v9 = (*a4 & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
    v9 = result;
  }

  if ((*a3 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v10 = (*a3 & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
    v10 = result;
  }

  if (*(v9 + 23) >= 0)
  {
    v11 = v9;
  }

  else
  {
    v11 = *v9;
  }

  v12 = *v11;
  if (*(v10 + 23) >= 0)
  {
    v13 = v10;
  }

  else
  {
    v13 = *v10;
  }

  if (v12 < 0 || (v14 = *v13, v14 < 0) || ((v15 = v12, v16 = v14, v17 = (v14 ^ v15) & 0x5F, v15 >= 0x40) ? (v18 = v17 == 0) : (v18 = 1), v18 || v16 < 0x40))
  {
    result = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl();
    if (!result)
    {
      return result;
    }
  }

  else if (((v15 + 5) & 0x1Fu) >= ((v16 + 5) & 0x1Fu))
  {
    return result;
  }

  v19 = *a3;
  *a3 = *a4;
  *a4 = v19;
  if ((*a3 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v20 = (*a3 & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
    v20 = result;
  }

  if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v21 = (*a2 & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
    v21 = result;
  }

  if (*(v20 + 23) >= 0)
  {
    v22 = v20;
  }

  else
  {
    v22 = *v20;
  }

  v23 = *v22;
  if (*(v21 + 23) >= 0)
  {
    v24 = v21;
  }

  else
  {
    v24 = *v21;
  }

  if (v23 < 0 || (v25 = *v24, v25 < 0) || ((v26 = v23, v27 = v25, v28 = (v25 ^ v26) & 0x5F, v26 >= 0x40) ? (v29 = v28 == 0) : (v29 = 1), v29 || v27 < 0x40))
  {
    result = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl();
    if (!result)
    {
      return result;
    }
  }

  else if (((v26 + 5) & 0x1Fu) >= ((v27 + 5) & 0x1Fu))
  {
    return result;
  }

  v30 = *a2;
  *a2 = *a3;
  *a3 = v30;
  if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v31 = (*a2 & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
    v31 = result;
  }

  if ((*a1 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v32 = (*a1 & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
    v32 = result;
  }

  if (*(v31 + 23) >= 0)
  {
    v33 = v31;
  }

  else
  {
    v33 = *v31;
  }

  v34 = *v33;
  if (*(v32 + 23) >= 0)
  {
    v35 = v32;
  }

  else
  {
    v35 = *v32;
  }

  if (v34 < 0 || (v36 = *v35, v36 < 0) || v34 < 0x40u || ((v36 ^ v34) & 0x5F) == 0 || v36 < 0x40u)
  {
    result = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl();
    if (!result)
    {
      return result;
    }
  }

  else if (((v34 + 5) & 0x1Fu) >= ((v36 + 5) & 0x1Fu))
  {
    return result;
  }

  v37 = *a1;
  *a1 = *a2;
  *a2 = v37;
  return result;
}

pxrInternal__aapl__pxrReserved__::TfToken *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan &,pxrInternal__aapl__pxrReserved__::TfToken *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan &,pxrInternal__aapl__pxrReserved__::TfToken *,0>(a1, a2, a3, a4);
  if ((*a5 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v11 = (*a5 & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
    v11 = result;
  }

  if ((*a4 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v12 = (*a4 & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
    v12 = result;
  }

  if (*(v11 + 23) >= 0)
  {
    v13 = v11;
  }

  else
  {
    v13 = *v11;
  }

  v14 = *v13;
  if (*(v12 + 23) >= 0)
  {
    v15 = v12;
  }

  else
  {
    v15 = *v12;
  }

  if (v14 < 0 || (v16 = *v15, v16 < 0) || ((v17 = v14, v18 = v16, v19 = (v16 ^ v17) & 0x5F, v17 >= 0x40) ? (v20 = v19 == 0) : (v20 = 1), v20 || v18 < 0x40))
  {
    result = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl();
    if (!result)
    {
      return result;
    }
  }

  else if (((v17 + 5) & 0x1Fu) >= ((v18 + 5) & 0x1Fu))
  {
    return result;
  }

  v21 = *a4;
  *a4 = *a5;
  *a5 = v21;
  if ((*a4 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v22 = (*a4 & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
    v22 = result;
  }

  if ((*a3 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v23 = (*a3 & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
    v23 = result;
  }

  if (*(v22 + 23) >= 0)
  {
    v24 = v22;
  }

  else
  {
    v24 = *v22;
  }

  v25 = *v24;
  if (*(v23 + 23) >= 0)
  {
    v26 = v23;
  }

  else
  {
    v26 = *v23;
  }

  if (v25 < 0 || (v27 = *v26, v27 < 0) || ((v28 = v25, v29 = v27, v30 = (v27 ^ v28) & 0x5F, v28 >= 0x40) ? (v31 = v30 == 0) : (v31 = 1), v31 || v29 < 0x40))
  {
    result = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl();
    if (!result)
    {
      return result;
    }
  }

  else if (((v28 + 5) & 0x1Fu) >= ((v29 + 5) & 0x1Fu))
  {
    return result;
  }

  v32 = *a3;
  *a3 = *a4;
  *a4 = v32;
  if ((*a3 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v33 = (*a3 & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
    v33 = result;
  }

  if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v34 = (*a2 & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
    v34 = result;
  }

  if (*(v33 + 23) >= 0)
  {
    v35 = v33;
  }

  else
  {
    v35 = *v33;
  }

  v36 = *v35;
  if (*(v34 + 23) >= 0)
  {
    v37 = v34;
  }

  else
  {
    v37 = *v34;
  }

  if (v36 < 0 || (v38 = *v37, v38 < 0) || v36 < 0x40u || ((v38 ^ v36) & 0x5F) == 0 || v38 < 0x40u)
  {
    result = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl();
    if (!result)
    {
      return result;
    }
  }

  else if (((v36 + 5) & 0x1Fu) >= ((v38 + 5) & 0x1Fu))
  {
    return result;
  }

  v39 = *a2;
  *a2 = *a3;
  *a3 = v39;
  if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v40 = (*a2 & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
    v40 = result;
  }

  if ((*a1 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v41 = (*a1 & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
    v41 = result;
  }

  if (*(v40 + 23) >= 0)
  {
    v42 = v40;
  }

  else
  {
    v42 = *v40;
  }

  v43 = *v42;
  if (*(v41 + 23) >= 0)
  {
    v44 = v41;
  }

  else
  {
    v44 = *v41;
  }

  if (v43 < 0 || (v45 = *v44, v45 < 0) || v43 < 0x40u || ((v45 ^ v43) & 0x5F) == 0 || v45 < 0x40u)
  {
    result = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl();
    if (!result)
    {
      return result;
    }
  }

  else if (((v43 + 5) & 0x1Fu) >= ((v45 + 5) & 0x1Fu))
  {
    return result;
  }

  v46 = *a1;
  *a1 = *a2;
  *a2 = v46;
  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan &,pxrInternal__aapl__pxrReserved__::TfToken *>(uint64_t *EmptyString, uint64_t *a2)
{
  v2 = a2;
  v3 = EmptyString;
  v4 = a2 - EmptyString;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan &,pxrInternal__aapl__pxrReserved__::TfToken *,0>(EmptyString, EmptyString + 1, a2 - 1);
        return 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan &,pxrInternal__aapl__pxrReserved__::TfToken *,0>(EmptyString, EmptyString + 1, EmptyString + 2, a2 - 1);
        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan &,pxrInternal__aapl__pxrReserved__::TfToken *,0>(EmptyString, EmptyString + 1, EmptyString + 2, EmptyString + 3, a2 - 1);
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
      if ((*(a2 - 1) & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v5 = (*(a2 - 1) & 0xFFFFFFFFFFFFFFF8) + 16;
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyString);
        v5 = EmptyString;
      }

      if ((*v3 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v38 = (*v3 & 0xFFFFFFFFFFFFFFF8) + 16;
      }

      else
      {
        v38 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyString);
      }

      if (*(v5 + 23) >= 0)
      {
        v39 = v5;
      }

      else
      {
        v39 = *v5;
      }

      v40 = *v39;
      if (*(v38 + 23) >= 0)
      {
        v41 = v38;
      }

      else
      {
        v41 = *v38;
      }

      if (v40 < 0 || (v42 = *v41, v42 < 0) || ((v43 = v40, v44 = v42, v45 = (v42 ^ v43) & 0x5F, v43 >= 0x40) ? (v46 = v45 == 0) : (v46 = 1), v46 || v44 < 0x40))
      {
        if (!pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl())
        {
          return 1;
        }

        goto LABEL_86;
      }

      if (((v43 + 5) & 0x1Fu) < ((v44 + 5) & 0x1Fu))
      {
LABEL_86:
        v47 = *v3;
        *v3 = *(v2 - 1);
        *(v2 - 1) = v47;
      }

      return 1;
    }
  }

  v6 = EmptyString + 2;
  v7 = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan &,pxrInternal__aapl__pxrReserved__::TfToken *,0>(EmptyString, EmptyString + 1, EmptyString + 2);
  v8 = v3 + 3;
  if (v3 + 3 == v2)
  {
    return 1;
  }

  v49 = v2;
  v9 = 0;
  v10 = 0;
  while (1)
  {
    if ((*v8 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v11 = (*v8 & 0xFFFFFFFFFFFFFFF8) + 16;
    }

    else
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v7);
      v11 = v7;
    }

    if ((*v6 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v12 = (*v6 & 0xFFFFFFFFFFFFFFF8) + 16;
    }

    else
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v7);
      v12 = v7;
    }

    v13 = *(v11 + 23) >= 0 ? v11 : *v11;
    v14 = *v13;
    v15 = *(v12 + 23) >= 0 ? v12 : *v12;
    if (v14 < 0)
    {
      break;
    }

    v16 = *v15;
    if (v16 < 0)
    {
      break;
    }

    v17 = v14;
    v18 = v16;
    v19 = (v16 ^ v17) & 0x5F;
    v20 = v17 < 0x40 || v19 == 0;
    if (v20 || v18 < 0x40)
    {
      break;
    }

    if (((v17 + 5) & 0x1Fu) < ((v18 + 5) & 0x1Fu))
    {
      goto LABEL_33;
    }

LABEL_63:
    v6 = v8;
    v9 += 8;
    if (++v8 == v2)
    {
      return 1;
    }
  }

  v7 = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl();
  if (!v7)
  {
    goto LABEL_63;
  }

LABEL_33:
  v21 = *v8;
  *v8 = 0;
  v50 = v21;
  v22 = v21 & 0xFFFFFFFFFFFFFFF8;
  v23 = (v21 & 0xFFFFFFFFFFFFFFF8) + 16;
  for (i = v9; ; i -= 8)
  {
    v25 = v3 + i;
    v26 = *(v3 + i + 24);
    if ((v26 & 7) != 0)
    {
      atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v27 = *(v25 + 2);
    *(v25 + 2) = 0;
    *(v25 + 3) = v27;
    if (i == -16)
    {
      break;
    }

    v28 = v23;
    if (!v22)
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v7);
      v28 = v7;
    }

    if ((*(v3 + i + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v29 = (*(v3 + i + 8) & 0xFFFFFFFFFFFFFFF8) + 16;
    }

    else
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v7);
      v29 = v7;
    }

    if (v28[23] >= 0)
    {
      v30 = v28;
    }

    else
    {
      v30 = *v28;
    }

    v31 = *v30;
    if (*(v29 + 23) >= 0)
    {
      v32 = v29;
    }

    else
    {
      v32 = *v29;
    }

    if (v31 < 0 || (v33 = *v32, v33 < 0) || ((v34 = v31, v35 = v33, v36 = (v33 ^ v34) & 0x5F, v34 >= 0x40) ? (v37 = v36 == 0) : (v37 = 1), v37 || v35 < 0x40))
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl();
      if (!v7)
      {
        v6 = (v3 + i + 16);
        goto LABEL_60;
      }
    }

    else if (((v34 + 5) & 0x1Fu) >= ((v35 + 5) & 0x1Fu))
    {
      goto LABEL_60;
    }

    --v6;
  }

  v6 = v3;
LABEL_60:
  v2 = v49;
  if ((*v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  *v6 = v50;
  if (++v10 != 8)
  {
    goto LABEL_63;
  }

  return v8 + 1 == v49;
}

uint64_t RIOPxrUsdEditTargetGetTypeID()
{
  if (RIOPxrUsdEditTargetGetTypeID::onceToken != -1)
  {
    dispatch_once(&RIOPxrUsdEditTargetGetTypeID::onceToken, &__block_literal_global_26);
  }

  return RIOPxrUsdEditTargetGetTypeID::typeID;
}

void __RIOPxrUsdEditTargetGetTypeID_block_invoke()
{
  if (!RIOPxrUsdEditTargetGetTypeID::typeID)
  {
    RIOPxrUsdEditTargetGetTypeID::typeID = _CFRuntimeRegisterClass();
  }
}

uint64_t RIOPxrUsdEditTargetCreateEmpty()
{
  v6[7] = *MEMORY[0x277D85DE8];
  MEMORY[0x24C1A5050](&v4);
  v0 = RIOPxrUsdEditTargetCreate<pxrInternal__aapl__pxrReserved__::UsdEditTarget>(&v4);
  pxrInternal__aapl__pxrReserved__::PcpMapFunction::_Data::~_Data(v6);
  v1 = v5;
  if (v5 && atomic_fetch_add_explicit((v5 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v1 + 8))(v1);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t RIOPxrUsdEditTargetCreateWithLayer(uint64_t a1)
{
  v1 = a1;
  v12 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(v8, 0.0, 1.0);
    MEMORY[0x24C1A5040](&v9, v1 + 16, v8[0], v8[1]);
    v2 = *MEMORY[0x277CBECE8];
    if (RIOPxrUsdEditTargetGetTypeID::onceToken != -1)
    {
      dispatch_once(&RIOPxrUsdEditTargetGetTypeID::onceToken, &__block_literal_global_26);
    }

    Instance = _CFRuntimeCreateInstance();
    v1 = Instance;
    if (Instance)
    {
      v4 = v10;
      *(Instance + 16) = v9;
      *(Instance + 24) = v4;
      if (v4)
      {
        atomic_fetch_add_explicit((v4 + 8), 1u, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::PcpMapFunction::_Data::_Data((Instance + 32), v11);
      *(v1 + 72) = *&v11[40];
    }

    pxrInternal__aapl__pxrReserved__::PcpMapFunction::_Data::~_Data(v11);
    v5 = v10;
    if (v10 && atomic_fetch_add_explicit((v10 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v5 + 8))(v5);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return v1;
}

void sub_24765D140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v5 = *(v3 + 24);
  if (v5)
  {
    if (atomic_fetch_add_explicit(v5 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v5 + 8))(v5);
    }
  }

  pxrInternal__aapl__pxrReserved__::UsdEditTarget::~UsdEditTarget(va);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrUsdEditTargetIsNull(uint64_t a1)
{
  v7[7] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    MEMORY[0x24C1A5050](&v5);
    v1 = pxrInternal__aapl__pxrReserved__::UsdEditTarget::operator==();
    pxrInternal__aapl__pxrReserved__::PcpMapFunction::_Data::~_Data(v7);
    v2 = v6;
    if (v6 && atomic_fetch_add_explicit((v6 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v2 + 8))(v2);
    }
  }

  else
  {
    v1 = 1;
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

BOOL RIOPxrUsdEditTargetIsValid(_BOOL8 result)
{
  if (result)
  {
    v1 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::SdfLayer>::operator pxrInternal__aapl__pxrReserved__::SdfLayer* (pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::SdfLayer>::*)(void)const((result + 16));
    return (v2 & 1 | v1) != 0;
  }

  return result;
}

uint64_t RIOPxrUsdEditTargetGetLayer(uint64_t result)
{
  if (result)
  {
    return RIOPxrSdfLayerCreate<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>((result + 16));
  }

  return result;
}

uint64_t RIOPxrUsdEditTargetCopyLayer(uint64_t result)
{
  if (result)
  {
    return RIOPxrSdfLayerCreate<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>((result + 16));
  }

  return result;
}

uint64_t RIOPxrUsdEditTargetCopyPrimSpec(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    pxrInternal__aapl__pxrReserved__::UsdEditTarget::GetPrimSpecForScenePath(&v4, (a1 + 16), (a2 + 16));
    if (pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(&v4))
    {
      v2 = 0;
    }

    else
    {
      v2 = RIOPxrSdfPrimSpecCreate<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec> &>(&v4);
    }

    pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v4);
  }

  return v2;
}

void sub_24765D348(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(va);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrSdfPrimSpecCreate<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec> &>(atomic_uint **a1)
{
  v2 = *MEMORY[0x277CBECE8];
  if (RIOPxrSdfPrimSpecGetTypeID::onceToken != -1)
  {
    dispatch_once(&RIOPxrSdfPrimSpecGetTypeID::onceToken, &__block_literal_global_3);
  }

  result = _CFRuntimeCreateInstance();
  if (result)
  {
    v4 = *a1;
    *(result + 16) = *a1;
    if (v4)
    {
      atomic_fetch_add(v4, 1u);
    }
  }

  return result;
}

atomic_uint *_RIOPxrUsdEditTargetCFFinalize(void *a1)
{
  pxrInternal__aapl__pxrReserved__::PcpMapFunction::_Data::~_Data((a1 + 4));
  result = a1[3];
  if (result && atomic_fetch_add_explicit(result + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    v3 = *(*result + 8);

    return v3();
  }

  return result;
}

uint64_t realityio::UsdPrimDelta::UsdPrimDelta(uint64_t a1, _DWORD *a2, int a3, uint64_t a4)
{
  *a1 = &unk_285957E40;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a1 + 8), a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a1 + 12), a2 + 1);
  *(a1 + 16) = a3;
  std::map<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>::map[abi:ne200100]((a1 + 24), a4);
  memset(v9, 0, sizeof(v9));
  v10 = 1065353216;
  *(a1 + 48) = &unk_285955750;
  std::unordered_set<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::unordered_set(a1 + 56, v9);
  std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::~__hash_table(v9);
  if (a3)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>>>::__assign_unique<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,realityio::UsdPropertyDelta> const*>((a1 + 24), 0, 0);
  }

  return a1;
}

void sub_24765D5B4(_Unwind_Exception *a1)
{
  *v3 = v2;
  std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::~__hash_table(v1 + 56);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>>>::destroy(v1 + 24, *(v1 + 32));
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath((v1 + 8));
  _Unwind_Resume(a1);
}

void realityio::UsdPrimDelta::setPropertyDeltaForPropertyName(realityio::UsdPrimDelta *this, const realityio::UsdPropertyDelta *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, int a4)
{
  v8 = this + 32;
  v9 = *(this + 4);
  v10 = this + 24;
  if (v9)
  {
    v11 = this + 32;
    do
    {
      v12 = std::less<pxrInternal__aapl__pxrReserved__::TfToken>::operator()[abi:ne200100](v10, v9 + 4, a3);
      if (v12)
      {
        v13 = 1;
      }

      else
      {
        v13 = 0;
      }

      if (!v12)
      {
        v11 = v9;
      }

      v9 = v9[v13];
    }

    while (v9);
    if (v11 != v8 && !std::less<pxrInternal__aapl__pxrReserved__::TfToken>::operator()[abi:ne200100](v10, a3, v11 + 4))
    {
      v15 = realityio::UsdPropertyDelta::updateWithPropertyDelta(v11 + 5, a2);
      if (!a4)
      {
        return;
      }

      goto LABEL_16;
    }
  }

  v14 = *std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::__find_equal<pxrInternal__aapl__pxrReserved__::TfToken>(v10, &v21, a3);
  if (!v14)
  {
    operator new();
  }

  v15 = pxrInternal__aapl__pxrReserved__::TfToken::operator=((v14 + 48), a2 + 1);
  if ((v14 + 40) != a2)
  {
    *(v14 + 96) = *(a2 + 14);
    std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<pxrInternal__aapl__pxrReserved__::TfToken,void *> *>>((v14 + 64), *(a2 + 5), 0);
  }

  if (a4)
  {
LABEL_16:
    if ((*a3 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = (*a3 & 0xFFFFFFFFFFFFFFF8) + 16;
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v15);
    }

    if (*(EmptyString + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__str, *EmptyString, *(EmptyString + 8));
    }

    else
    {
      v17 = *EmptyString;
      __str.__r_.__value_.__r.__words[2] = *(EmptyString + 16);
      *&__str.__r_.__value_.__l.__data_ = v17;
    }

    v18 = std::string::rfind(&__str, 58, 0xFFFFFFFFFFFFFFFFLL);
    if (v18 != -1)
    {
      std::string::basic_string(&v19, &__str, 0, v18, &v21);
      MEMORY[0x24C1A5E00](&v21, &v19);
      realityio::UsdPrimDelta::setPropertyDeltaForPropertyName(this, a2, &v21, 1);
      if ((v21 & 7) != 0)
      {
        atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v19.__r_.__value_.__l.__data_);
      }
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }
}

void sub_24765D844(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22)
{
  v25 = v22[4];
  if ((v25 & 7) != 0)
  {
    atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,void *>>>::operator()[abi:ne200100](v23 + 8, v22);
  _Unwind_Resume(a1);
}

void realityio::UsdPrimDelta::updateWithPrimDelta(uint64_t **this, const realityio::UsdPrimDelta *a2)
{
  if (this[1] == *(a2 + 1))
  {
    if (*(a2 + 16) == 1)
    {
      std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>>>::__assign_unique<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,realityio::UsdPropertyDelta> const*>(this + 3, 0, 0);
      memset(v10, 0, sizeof(v10));
      v11 = 1065353216;
      v12 = &unk_285955750;
      std::unordered_set<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::unordered_set(v13, v10);
      if (this + 6 != &v12)
      {
        *(this + 22) = v14;
        std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<pxrInternal__aapl__pxrReserved__::TfToken,void *> *>>(this + 7, v13[2], 0);
      }

      v12 = &unk_285955750;
      std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::~__hash_table(v13);
      std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::~__hash_table(v10);
      *(this + 16) = 1;
    }

    else
    {
      for (i = *(a2 + 9); i; i = *i)
      {
        std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken const&>(this + 7, i + 2);
      }

      v5 = *(a2 + 3);
      v6 = a2 + 32;
      if (v5 != v6)
      {
        do
        {
          realityio::UsdPrimDelta::setPropertyDeltaForPropertyName(this, (v5 + 40), (v5 + 32), 0);
          v7 = *(v5 + 1);
          if (v7)
          {
            do
            {
              v8 = v7;
              v7 = *v7;
            }

            while (v7);
          }

          else
          {
            do
            {
              v8 = *(v5 + 2);
              v9 = *v8 == v5;
              v5 = v8;
            }

            while (!v9);
          }

          v5 = v8;
        }

        while (v8 != v6);
      }
    }
  }
}

void sub_24765DA28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::~__hash_table(v9 + 8);
  std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::~__hash_table(&a9);
  _Unwind_Resume(a1);
}

const void **realityio::UsdPrimDelta::description@<X0>(realityio::UsdPrimDelta *this@<X0>, CFStringRef *a2@<X8>)
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0;
  v21[0] = &unk_285957E80;
  v22 = v21;
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  v6 = *(this + 3);
  if (v6 != (this + 32))
  {
    v7 = MEMORY[0x277CBF128];
    do
    {
      v8 = CFArrayCreateMutable(0, 0, v7);
      if (!v22)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v22 + 48))(&value);
      CFArrayAppendValue(v8, value);
      (*(*(v6 + 5) + 16))(&v19);
      CFArrayAppendValue(v8, v19);
      v10 = realityio::joinAsCFStringRef(v8, ": ", v9);
      CFRelease(v8);
      CFArrayAppendValue(Mutable, v10);
      CFRelease(v10);
      realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&v19);
      realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&value);
      v11 = *(v6 + 1);
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = *(v6 + 2);
          v13 = *v12 == v6;
          v6 = v12;
        }

        while (!v13);
      }

      v6 = v12;
    }

    while (v12 != (this + 32));
  }

  v14 = realityio::joinAsCFStringRef(Mutable, ", ", v4);
  CFRelease(Mutable);
  v18 = v14;
  std::__function::__value_func<realityio::WrappedCFRef<__CFString const*> ()(pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](v21);
  *a2 = 0;
  Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((this + 8));
  realityio::UsdMetadataDelta::description((this + 48), &value);
  *a2 = CFStringCreateWithFormat(0, 0, @"<UsdPrimDelta: %p { primPath: %s, metadata: %@, property deltas: (%lu) [ %@ ] }>", this, Text, value, *(this + 5), v18);
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&value);
  result = realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&v18);
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24765DCB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v9 = va_arg(va1, const void *);
  v11 = va_arg(va1, void);
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(va1);
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(v7);
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(va);
  _Unwind_Resume(a1);
}

uint64_t **std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>>>::__assign_unique<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,realityio::UsdPropertyDelta> const*>(uint64_t **result, uint64_t *a2, uint64_t *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v10 = result;
    v11 = v8;
    v12 = v8;
    if (v8)
    {
      v11 = std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::_DetachedTreeCache::__detach_next(v8);
      while (a2 != a3)
      {
        std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>>>::__node_assign_unique(v5, a2, v8);
        if (v9)
        {
          v8 = v11;
          v12 = v11;
          if (!v11)
          {
            a2 += 9;
            break;
          }

          v11 = std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::_DetachedTreeCache::__detach_next(v11);
        }

        else
        {
          v8 = v12;
        }

        a2 += 9;
        if (!v8)
        {
          break;
        }
      }
    }

    result = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v10);
  }

  while (a2 != a3)
  {
    result = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,realityio::UsdPropertyDelta> const&>(v5, a2);
    a2 += 9;
  }

  return result;
}

void sub_24765DE50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>>>::__node_assign_unique(uint64_t **a1, uint64_t *a2, uint64_t *a3)
{
  v6 = std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::__find_equal<pxrInternal__aapl__pxrReserved__::TfToken>(a1, &v9, a2);
  if (*v6)
  {
    return *v6;
  }

  v7 = v6;
  std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>::operator=[abi:ne200100]((a3 + 4), a2);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::__insert_node_at(a1, v9, v7, a3);
  return a3;
}

uint64_t std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,realityio::UsdPropertyDelta> const&>(uint64_t a1, uint64_t *a2)
{
  result = *std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::__find_equal<pxrInternal__aapl__pxrReserved__::TfToken>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>>>::__construct_node<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,realityio::UsdPropertyDelta> const&>();
  }

  return result;
}

CFStringRef std::__function::__func<realityio::UsdPrimDelta::description(void)::$_0,std::allocator<realityio::UsdPrimDelta::description(void)::$_0>,realityio::WrappedCFRef<__CFString const*> ()(pxrInternal__aapl__pxrReserved__::TfToken const&)>::operator()@<X0>(pxrInternal__aapl__pxrReserved__::TfToken *a1@<X0>, void *a2@<X1>, CFStringRef *a3@<X8>)
{
  if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = (*a2 & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  if (*(EmptyString + 23) >= 0)
  {
    v5 = EmptyString;
  }

  else
  {
    v5 = *EmptyString;
  }

  result = CFStringCreateWithCString(0, v5, 0x8000100u);
  *a3 = result;
  return result;
}

uint64_t std::__function::__func<realityio::UsdPrimDelta::description(void)::$_0,std::allocator<realityio::UsdPrimDelta::description(void)::$_0>,realityio::WrappedCFRef<__CFString const*> ()(pxrInternal__aapl__pxrReserved__::TfToken const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<realityio::WrappedCFRef<__CFString const*> ()(pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t shouldForceDisableSubdsIfHighGeometricComplexity(uint64_t *a1)
{
  v1 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(a1);
  PseudoRoot = pxrInternal__aapl__pxrReserved__::UsdStage::GetPseudoRoot(&v19, v1);
  UsdPrimAllPrimsPredicate = pxrInternal__aapl__pxrReserved__::GetUsdPrimAllPrimsPredicate(PseudoRoot);
  v5 = *UsdPrimAllPrimsPredicate;
  v4 = UsdPrimAllPrimsPredicate[1];
  v6 = UsdPrimAllPrimsPredicate[2];
  if ((pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL() & 1) == 0 && ((v5 & 0x2000) != 0 || (v4 & 0x2000) == 0))
  {
    v5 |= 0x2000uLL;
    v4 &= ~0x2000uLL;
  }

  v37 = v5;
  v38 = v4;
  *&v39 = v6;
  pxrInternal__aapl__pxrReserved__::UsdPrim::_MakeDescendantsRange(&v19, &v37, &v41);
  if ((v22 & 7) != 0)
  {
    atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v21);
  if (v20)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v20);
  }

  v37 = v41;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v38, &v42);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v38 + 1, &v43);
  v39 = v44;
  v40 = v45;
  v33 = v46;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v34, &v47);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v34 + 1, &v48);
  v7 = 0;
  v35 = v49;
  v36 = v50;
  while (v37 != v33 || v38 != v34 || (pxrInternal__aapl__pxrReserved__::operator==(&v39, &v35) & 1) == 0)
  {
    v8 = pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeIterator::dereference(&v37, v29);
    pxrInternal__aapl__pxrReserved__::UsdGeomMesh::_GetStaticTfType(v8);
    pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
    if (pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA())
    {
      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
      v28[0] = MEMORY[0x277D866A8] + 16;
      if (!realityio::isCatmullClarkSurface(v28, v9))
      {
        goto LABEL_34;
      }

      pxrInternal__aapl__pxrReserved__::UsdGeomMesh::GetFaceVertexCountsAttr(&v24, v28);
      if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v24))
      {
        FaceCount = pxrInternal__aapl__pxrReserved__::UsdGeomMesh::GetFaceCount();
        realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<int>>(&v24, &v19);
        v7 += FaceCount;
        if (v19 == 1)
        {
          v11 = v20;
          if (v20)
          {
            v12 = 0;
            do
            {
              pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(&v20);
              v13 = *(v23 + 4 * v12);
              if (v13 <= 1 || v13 == 4)
              {
                v15 = 0;
              }

              else
              {
                v15 = v13 - 1;
              }

              v7 += v15;
              ++v12;
            }

            while (v11 != v12);
          }
        }

        v16 = v7 < 0x88B8;
        realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<int>,realityio::DetailedError>::~Result(&v19);
      }

      else
      {
        v16 = 0;
      }

      if ((v27 & 7) != 0)
      {
        atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v26);
      if (v25)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v25);
      }

      if (!v16)
      {
        v17 = 1;
      }

      else
      {
LABEL_34:
        v17 = 0;
      }

      MEMORY[0x24C1A4DB0](v28);
    }

    else
    {
      v17 = 3;
    }

    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v31);
    if (v30)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v30);
    }

    if (v17 != 3 && v17)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v34);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v38);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v47);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v42);
      return 1;
    }

    pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeIterator::increment(&v37);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v34);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v38);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v47);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v42);
  return 0;
}

void realityio::LiveSceneUpdate::makeFromTrackedStageState(realityio::LiveSceneUpdate *this@<X0>, realityio::UsdStageStateTracker *a2@<X1>, uint64_t a3@<X8>)
{
  v79 = *MEMORY[0x277D85DE8];
  *&__p = *(this + 1);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&__p);
  v7 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&__p);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&__p);
  *&__p = *(this + 1);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&__p);
  v8 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&__p);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetTimeCodesPerSecond(v8);
  v10 = v9;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&__p);
  if (v10 == 0.0)
  {
    realityio::UsdStageStateTracker::getAndCleanAccumulatedStageDelta(this, &v75);
    __p = 0uLL;
    v70[0] = 0;
    v67 = 0;
    v68 = 0;
    v66 = &v67;
    pxrInternal__aapl__pxrReserved__::SdfLayer::CreateAnonymous();
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v66, v67);
    if (SHIBYTE(v70[0]) < 0)
    {
      operator delete(__p);
    }

    pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>(&__p, &v48);
    pxrInternal__aapl__pxrReserved__::UsdStage::Open();
    v11 = *(&__p + 1);
    if (*(&__p + 1) && atomic_fetch_add_explicit((*(&__p + 1) + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v11 + 8))(v11);
    }

    v65 = *(this + 1);
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v65);
    v13 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&v65);
    if (isDetailedResyncEnabled)
    {
      v14 = *(*(a2 + 2) + 24);
      v15 = *(v14 + 24);
      v14 += 24;
      *v14 = v46[0];
      pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(v46);
      pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdSkel_AnimQueryImpl>::_RemoveRef(v14, v15);
    }

    __p = 0u;
    memset(v70, 0, sizeof(v70));
    v71 = v72;
    v72[0] = 0;
    v74[0] = 0;
    v74[1] = 0;
    v72[1] = 0;
    v73 = v74;
    v67 = 0;
    v68 = 0;
    v66 = &v67;
    v64[0] = 0;
    v64[1] = 0;
    v62 = 0;
    v63 = v64;
    v60 = &v61;
    v61 = 0;
    v59[0] = 0;
    v59[1] = 0;
    v58 = v59;
    v16 = *realityio::logObjects(v13);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&dword_247485000, v16, OS_LOG_TYPE_ERROR, "Invalid Stage.timeCodesPerSecond == 0 - No conversion performed", &buf, 2u);
    }

    realityio::LiveSceneUpdate::LiveSceneUpdate(a3, v46, &v75, &__p, &v66, &v63, &v60, &v58, atomic_fetch_add(&realityio::LiveSceneUpdate::makeFromTrackedStageState(realityio::UsdStageStateTracker &,realityio::ImportSession const&)::nextUniqueIdentifier, 1uLL), 0);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>>>::destroy(&v58, v59[0]);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>>>::destroy(&v60, v61);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>,std::less<pxrInternal__aapl__pxrReserved__::SdfAssetPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>>>::destroy(&v63, v64[0]);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>>>::destroy(&v66, v67);
    std::__tree<std::string>::destroy(&v73, v74[0]);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned long>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned long>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned long>>>::destroy(&v71, v72[0]);
    v66 = &v70[1];
    std::vector<realityio::internal::PrimToEntityMap::EntityData>::__destroy_vector::operator()[abi:ne200100](&v66);
    if (__p)
    {
      *(&__p + 1) = __p;
      operator delete(__p);
    }

    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(v46);
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::~TfRefPtr(&v48);
    realityio::UsdStageDelta::~UsdStageDelta(&v75);
  }

  else if (*(a2 + 15))
  {
    pxrInternal__aapl__pxrReserved__::UsdStage::GetRootLayer(&__p, v7);
    v17 = *(&__p + 1);
    if (*(&__p + 1))
    {
      if (*(pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->(&__p + 1) + 14))
      {
        v17 = __p;
      }

      else
      {
        v17 = 0;
      }
    }

    v48 = v17;
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v48);
    v18 = *(&__p + 1);
    if (*(&__p + 1) && atomic_fetch_add_explicit((*(&__p + 1) + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v18 + 8))(v18);
    }

    if ((*(a2 + 274) & 1) == 0)
    {
      __p = 0uLL;
      v70[0] = 0;
      v76 = 0;
      v77[0] = 0;
      v75 = &v76;
      pxrInternal__aapl__pxrReserved__::SdfLayer::CreateAnonymous();
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v75, v76);
      if (SHIBYTE(v70[0]) < 0)
      {
        operator delete(__p);
      }

      pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(&v48);
      v19 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(&v66);
      pxrInternal__aapl__pxrReserved__::SdfLayer::GetIdentifier(v19);
      pxrInternal__aapl__pxrReserved__::SdfLayer::InsertSubLayerPath();
      pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(&v75, 0.0, 1.0);
      MEMORY[0x24C1A5040](&__p, &v66, *&v75, *&v76);
      EditTarget = pxrInternal__aapl__pxrReserved__::UsdStage::GetEditTarget(v7);
      v21 = *(EditTarget + 8);
      v75 = *EditTarget;
      v76 = v21;
      if (v21)
      {
        atomic_fetch_add_explicit(v21 + 2, 1u, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::PcpMapFunction::_Data::_Data(v77, EditTarget + 16);
      v78 = *(EditTarget + 56);
      pxrInternal__aapl__pxrReserved__::UsdStage::SetEditTarget(v7, &__p);
      pxrInternal__aapl__pxrReserved__::UsdStage::SetEditTarget(v7, &v75);
      pxrInternal__aapl__pxrReserved__::PcpMapFunction::_Data::~_Data(v77);
      v23 = v76;
      if (v76 && atomic_fetch_add_explicit(v76 + 2, 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v23 + 8))(v23);
      }

      pxrInternal__aapl__pxrReserved__::PcpMapFunction::_Data::~_Data(v70);
      v24 = *(&__p + 1);
      if (*(&__p + 1) && atomic_fetch_add_explicit((*(&__p + 1) + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v24 + 8))(v24);
      }

      pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::~TfRefPtr(&v66);
    }

    realityio::UsdStageStateTracker::getAndCleanAccumulatedStageDelta(this, &v75);
    pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>(&__p, &v48);
    pxrInternal__aapl__pxrReserved__::UsdStage::Open();
    v25 = *(&__p + 1);
    if (*(&__p + 1) && atomic_fetch_add_explicit((*(&__p + 1) + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v25 + 8))(v25);
    }

    if (*(a2 + 273) == 1)
    {
      v44 = v46[0];
      pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v44);
      v26 = shouldForceDisableSubdsIfHighGeometricComplexity(&v44) ^ 1;
      pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&v44);
    }

    else
    {
      v26 = 0;
    }

    v43 = v46[0];
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v43);
    realityio::internal::PrimToEntityMap::makePrimToEntityMap(&v43, &__p);
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&v43);
    v42 = v46[0];
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v42);
    realityio::internal::TexturePrimToMaterialPrimMap::makeTexturePrimToMaterialMap(&v42, &v66);
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&v42);
    v36 = *(a2 + 2);
    v41 = v46[0];
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v41);
    realityio::makeSdfAssetPathToTextureImportSettingsMapWithSpecifiedSemantics((v36 + 328), &v41, &v66, &v63);
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&v41);
    if (v26)
    {
      v40 = v46[0];
      pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v40);
      realityio::internal::makeMaterialPrimToBoundSurfaceUsageMap(&v40, &v60);
      pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&v40);
    }

    else
    {
      v61 = 0;
      v62 = 0;
      v60 = &v61;
    }

    v39 = v46[0];
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v39);
    realityio::internal::makeSkelAnimationPrimToBoundMeshesMap(&v39, &v58);
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&v39);
    realityio::LiveSceneUpdate::LiveSceneUpdate(a3, v46, &v75, &__p, &v66, &v63, &v60, &v58, atomic_fetch_add(&realityio::LiveSceneUpdate::makeFromTrackedStageState(realityio::UsdStageStateTracker &,realityio::ImportSession const&)::nextUniqueIdentifier, 1uLL), v26);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>>>::destroy(&v58, v59[0]);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>>>::destroy(&v60, v61);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>,std::less<pxrInternal__aapl__pxrReserved__::SdfAssetPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>>>::destroy(&v63, v64[0]);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>>>::destroy(&v66, v67);
    std::__tree<std::string>::destroy(&v73, v74[0]);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned long>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned long>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned long>>>::destroy(&v71, v72[0]);
    v66 = &v70[1];
    std::vector<realityio::internal::PrimToEntityMap::EntityData>::__destroy_vector::operator()[abi:ne200100](&v66);
    if (__p)
    {
      *(&__p + 1) = __p;
      operator delete(__p);
    }

    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(v46);
    realityio::UsdStageDelta::~UsdStageDelta(&v75);
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::~TfRefPtr(&v48);
  }

  else
  {
    std::chrono::steady_clock::now();
    pxrInternal__aapl__pxrReserved__::UsdStage::GetUsedLayers(v7);
    realityio::MultipleLayerMutex::MultipleLayerMutex<std::__wrap_iter<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *>>(&v63, v66, v67);
    realityio::MultipleLayerMutex::lock(&v63);
    pxrInternal__aapl__pxrReserved__::UsdStage::Flatten(v7);
    realityio::UsdStageStateTracker::getAndCleanAccumulatedStageDelta(this, &v75);
    __p = 0uLL;
    v70[0] = 0;
    v61 = 0;
    v62 = 0;
    v60 = &v61;
    pxrInternal__aapl__pxrReserved__::SdfLayer::CreateAnonymous();
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v60, v61);
    if (SHIBYTE(v70[0]) < 0)
    {
      operator delete(__p);
    }

    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(&v56);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetSessionLayer(&__p, v7);
    pxrInternal__aapl__pxrReserved__::SdfLayer::TransferContent();
    v27 = *(&__p + 1);
    if (*(&__p + 1) && atomic_fetch_add_explicit((*(&__p + 1) + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v27 + 8))(v27);
    }

    realityio::MultipleLayerMutex::unlock(&v63);
    pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>(&__p, &buf);
    pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>(&v60, &v56);
    pxrInternal__aapl__pxrReserved__::UsdStage::Open();
    v28 = v61;
    if (v61 && atomic_fetch_add_explicit(v61 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v28 + 8))(v28);
    }

    v29 = *(&__p + 1);
    if (*(&__p + 1) && atomic_fetch_add_explicit((*(&__p + 1) + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v29 + 8))(v29);
    }

    if ((*(a2 + 274) & 1) == 0)
    {
      v30 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v55);
    }

    v54 = *(this + 1);
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v54);
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&v54);
    if (v32)
    {
      v33 = *(*(a2 + 2) + 24);
      v34 = v33[3];
      v33 += 3;
      *v33 = v55;
      pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v55);
      pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdSkel_AnimQueryImpl>::_RemoveRef(v33, v34);
    }

    if (*(a2 + 273) == 1)
    {
      v53 = v55;
      pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v53);
      v35 = shouldForceDisableSubdsIfHighGeometricComplexity(&v53) ^ 1;
      pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&v53);
    }

    else
    {
      v35 = 0;
    }

    v52 = v55;
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v52);
    realityio::internal::PrimToEntityMap::makePrimToEntityMap(&v52, &__p);
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&v52);
    v51 = v55;
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v51);
    realityio::internal::TexturePrimToMaterialPrimMap::makeTexturePrimToMaterialMap(&v51, &v60);
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&v51);
    v37 = *(a2 + 2);
    v50 = v55;
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v50);
    realityio::makeSdfAssetPathToTextureImportSettingsMapWithSpecifiedSemantics((v37 + 328), &v50, &v60, &v58);
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&v50);
    std::chrono::steady_clock::now();
    std::chrono::steady_clock::now();
    if (v35)
    {
      v47 = v55;
      pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v47);
      realityio::internal::makeMaterialPrimToBoundSurfaceUsageMap(&v47, &v48);
      pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&v47);
    }

    else
    {
      v49[0] = 0;
      v49[1] = 0;
      v48 = v49;
    }

    v45 = v55;
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v45);
    realityio::internal::makeSkelAnimationPrimToBoundMeshesMap(&v45, v46);
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&v45);
    realityio::LiveSceneUpdate::LiveSceneUpdate(a3, &v55, &v75, &__p, &v60, &v58, &v48, v46, atomic_fetch_add(&realityio::LiveSceneUpdate::makeFromTrackedStageState(realityio::UsdStageStateTracker &,realityio::ImportSession const&)::nextUniqueIdentifier, 1uLL), v35);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>>>::destroy(v46, v46[1]);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>>>::destroy(&v48, v49[0]);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>,std::less<pxrInternal__aapl__pxrReserved__::SdfAssetPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>>>::destroy(&v58, v59[0]);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>>>::destroy(&v60, v61);
    std::__tree<std::string>::destroy(&v73, v74[0]);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned long>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned long>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned long>>>::destroy(&v71, v72[0]);
    v60 = &v70[1];
    std::vector<realityio::internal::PrimToEntityMap::EntityData>::__destroy_vector::operator()[abi:ne200100](&v60);
    if (__p)
    {
      *(&__p + 1) = __p;
      operator delete(__p);
    }

    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&v55);
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::~TfRefPtr(&v56);
    realityio::UsdStageDelta::~UsdStageDelta(&v75);
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::~TfRefPtr(&buf);
    *&__p = &v63;
    std::vector<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::__destroy_vector::operator()[abi:ne200100](&__p);
    *&__p = &v66;
    std::vector<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::__destroy_vector::operator()[abi:ne200100](&__p);
  }

  v38 = *MEMORY[0x277D85DE8];
}

void sub_24765F104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, atomic_uint *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, atomic_uint *a31, atomic_uint *a32, atomic_uint *a33, __int16 a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, __int16 a44, uint64_t a45, uint64_t a46, void *__p)
{
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&a22);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>,std::less<pxrInternal__aapl__pxrReserved__::SdfAssetPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>>>::destroy(&a34, a35);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>>>::destroy(&a37, a38);
  realityio::internal::PrimToEntityMap::~PrimToEntityMap(&__p);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&a31);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::~TfRefPtr(&a32);
  realityio::UsdStageDelta::~UsdStageDelta((v47 - 176));
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::~TfRefPtr(&a33);
  __p = &a40;
  std::vector<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = &a44;
  std::vector<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::isDetailedResyncEnabled(uint64_t *a1)
{
  v1 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(a1);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetRootLayer(&__p, v1);
  v2 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(&__p);
  pxrInternal__aapl__pxrReserved__::SdfLayer::GetCustomLayerData(&v13, v2);
  v3 = v11;
  if (v11 && atomic_fetch_add_explicit((v11 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v3 + 8))(v3);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "realityio:enableDetailedResync");
  ValueAtPath = pxrInternal__aapl__pxrReserved__::VtDictionary::GetValueAtPath();
  v5 = ValueAtPath;
  if (v12 < 0)
  {
    operator delete(__p);
    if (!v5)
    {
LABEL_12:
      v7 = 0;
      goto LABEL_13;
    }
  }

  else if (!ValueAtPath)
  {
    goto LABEL_12;
  }

  if (!pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<BOOL>(v5))
  {
    goto LABEL_12;
  }

  v6 = *(v5 + 1);
  if ((v6 & 4) != 0)
  {
    v5 = (*((v6 & 0xFFFFFFFFFFFFFFF8) + 168))(v5);
  }

  v7 = *v5;
LABEL_13:
  v8 = v13;
  v13 = 0;
  if (v8)
  {
    std::__tree<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<std::string,std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<void>,true>,std::allocator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(v8, *(v8 + 8));
    MEMORY[0x24C1A91B0](v8, 0x1020C4062D53EE8);
  }

  return v7 & 1;
}

uint64_t anonymous namespace::deactivateAudioPrims(_anonymous_namespace_ *this, pxrInternal__aapl__pxrReserved__::UsdStage *a2)
{
  MEMORY[0x24C1A5DE0](&v28, "RealityKitAudioFile");
  MEMORY[0x24C1A5DE0](&v27, "RealityKitAudioFileGroup");
  pxrInternal__aapl__pxrReserved__::UsdStage::Traverse(v25, this);
  pxrInternal__aapl__pxrReserved__::UsdPrimRange::begin(v25, v20);
  v15 = v25[1];
  v16 = v25;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  v18 = 0;
  v19 = 0;
  while (1)
  {
    v3 = v20[1] == v16 && v20[0] == v15;
    if (v3 && v21 == v17 && v22 == v18 && v23 == v19 && v24 == HIBYTE(v19))
    {
      break;
    }

    v29 = v20[0];
    if (v20[0])
    {
      atomic_fetch_add_explicit((v20[0] + 48), 1uLL, memory_order_relaxed);
    }

    pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&v11, &v29, &v21);
    if (v29)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v29);
    }

    v5 = v12;
    if (!v12 || (*(v12 + 57) & 8) != 0)
    {
      pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(v12, v4);
    }

    v6 = *(v5 + 3);
    v7 = atomic_load(&realityio::tokens::SpatialAudioBuilderTokens);
    if (!v7)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::SpatialAudioBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::SpatialAudioBuilderTokens_StaticTokenType>>::_TryToCreateData();
    }

    if ((*(v7 + 112) ^ *v6) < 8)
    {
      goto LABEL_28;
    }

    v8 = v12;
    if (!v12 || (*(v12 + 57) & 8) != 0)
    {
      pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(v12, v4);
    }

    if ((v28 ^ **(v8 + 3)) < 8)
    {
      goto LABEL_28;
    }

    v9 = v12;
    if (!v12 || (*(v12 + 57) & 8) != 0)
    {
      pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(v12, v4);
    }

    if ((v27 ^ **(v9 + 3)) <= 7)
    {
LABEL_28:
      pxrInternal__aapl__pxrReserved__::UsdPrim::SetActive(&v11);
    }

    if ((v14 & 7) != 0)
    {
      atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v13);
    if (v12)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v12);
    }

    pxrInternal__aapl__pxrReserved__::UsdPrimRange::iterator::increment(v20);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v17);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v21);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  result = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v26);
  if ((v27 & 7) != 0)
  {
    atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v28 & 7) != 0)
  {
    atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void sub_24765FA74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  pxrInternal__aapl__pxrReserved__::UsdPrimRange::~UsdPrimRange(va);
  v15 = *(v13 - 88);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v16 = *(v13 - 80);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::SdfPath *realityio::LiveSceneUpdate::visitDirtyPrimPathsInStage(pxrInternal__aapl__pxrReserved__::SdfPath *result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 24))
  {
    v4 = result;
    memset(v19, 0, sizeof(v19));
    v20 = 1065353216;
    v17 = a3;
    v18 = v19;
    v15 = &v17;
    v16 = &v17;
    v5 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(result);
    if (!std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(v18, v5))
    {
      v6 = *(v17 + 24);
      if (!v6)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v6 + 48))(v6, v5);
      std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>(v18, v5);
    }

    v7 = v4[28];
    if (v7 != (v4 + 29))
    {
      do
      {
        if (*(v7 + 56) == 1)
        {
          if (a2)
          {
            v8 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((a2 + 8));
            realityio::LiveSceneUpdate::visitDirtyPrimPathsInStage(realityio::LiveSceneUpdate const*,std::function<void ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>)const::$_1::operator()(&v16, v7 + 8, v8);
          }

          v9 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(v4 + 1);
          realityio::LiveSceneUpdate::visitDirtyPrimPathsInStage(realityio::LiveSceneUpdate const*,std::function<void ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>)const::$_1::operator()(&v16, v7 + 8, v9);
        }

        else
        {
          if (a2)
          {
            v10 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((a2 + 8));
            realityio::LiveSceneUpdate::visitDirtyPrimPathsInStage(realityio::LiveSceneUpdate const*,std::function<void ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>)const::$_2::operator()(&v15, v7 + 10, v10);
          }

          v11 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(v4 + 1);
          realityio::LiveSceneUpdate::visitDirtyPrimPathsInStage(realityio::LiveSceneUpdate const*,std::function<void ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>)const::$_2::operator()(&v15, v7 + 10, v11);
        }

        v12 = *(v7 + 1);
        if (v12)
        {
          do
          {
            v13 = v12;
            v12 = *v12;
          }

          while (v12);
        }

        else
        {
          do
          {
            v13 = *(v7 + 2);
            v14 = *v13 == v7;
            v7 = v13;
          }

          while (!v14);
        }

        v7 = v13;
      }

      while (v13 != v4 + 29);
    }

    return std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::~__hash_table(v19);
  }

  return result;
}

void sub_24765FC90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t realityio::LiveSceneUpdate::visitDirtyPrimPathsInStage(realityio::LiveSceneUpdate const*,std::function<void ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>)const::$_1::operator()(uint64_t a1, unsigned int *a2, pxrInternal__aapl__pxrReserved__::UsdStage *a3)
{
  v6 = *a1;
  if (!std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(*(*a1 + 8), a2))
  {
    v7 = (*v6)[3];
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v7 + 48))(v7, a2);
    std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>(v6[1], a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v50, a3, a2);
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v50))
  {
    v42 = 0uLL;
    LOBYTE(v43) = 0;
    v8 = pxrInternal__aapl__pxrReserved__::Usd_PrimFlagsConjunction::operator&=(&v42, 0);
    v39 = *v8;
    *&v40 = *(v8 + 16);
    v42 = v39;
    LOBYTE(v43) = v40;
    v9 = pxrInternal__aapl__pxrReserved__::Usd_PrimFlagsConjunction::operator&=(&v42, 1);
    v36 = *v9;
    *&v37 = *(v9 + 16);
    v42 = v36;
    LOBYTE(v43) = v37;
    v10 = pxrInternal__aapl__pxrReserved__::Usd_PrimFlagsConjunction::operator&=(&v42, 0x100000005);
    v12 = *v10;
    v11 = v10[1];
    v13 = v10[2];
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL();
    v29 = v11 | 0x2000;
    *&v39 = v12 & 0xFFFFFFFFFFFFDFFFLL;
    *(&v39 + 1) = v11 | 0x2000;
    *&v40 = v13;
    pxrInternal__aapl__pxrReserved__::UsdPrim::_MakeDescendantsRange(&v50, &v39, &v42);
    *&v39 = v42;
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v39 + 2, &v42 + 2);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v39 + 3, &v42 + 3);
    v40 = v43;
    v41 = v44;
    *&v36 = v45;
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v36 + 2, &v46);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v36 + 3, &v47);
    v37 = v48;
    v38 = v49;
    while (v39 != v36 || !pxrInternal__aapl__pxrReserved__::operator==(&v40, &v37))
    {
      pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeIterator::dereference(&v39, v32);
      v14 = *a1;
      PrimPath = pxrInternal__aapl__pxrReserved__::UsdObject::GetPrimPath(v32);
      if (!std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(v14[1], PrimPath))
      {
        v16 = (*v14)[3];
        if (!v16)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v16 + 48))(v16, PrimPath);
        std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>(v14[1], PrimPath);
      }

      if ((v35 & 7) != 0)
      {
        atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v34);
      if (v33)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v33);
      }

      pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeIterator::increment(&v39);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v36 + 8);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v39 + 8);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v46);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v42 + 8);
    if (pxrInternal__aapl__pxrReserved__::UsdPrim::IsPseudoRoot(&v50))
    {
      pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v42, &v50);
      v17 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v42);
      pxrInternal__aapl__pxrReserved__::UsdStage::GetPrototypes(&v30, v17);
      v28 = v13;
      v18 = *(&v42 + 1);
      if (*(&v42 + 1) && atomic_fetch_add_explicit((*(&v42 + 1) + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v18 + 8))(v18);
      }

      v19 = v30;
      for (i = v31; v19 != i; v19 = (v19 + 32))
      {
        v21 = *a1;
        v22 = pxrInternal__aapl__pxrReserved__::UsdObject::GetPrimPath(v19);
        if (!std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(v21[1], v22))
        {
          v23 = (*v21)[3];
          if (!v23)
          {
            std::__throw_bad_function_call[abi:ne200100]();
          }

          (*(*v23 + 48))(v23, v22);
          std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>(v21[1], v22);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL();
        *&v39 = v12 & 0xFFFFFFFFFFFFDFFFLL;
        *(&v39 + 1) = v29;
        *&v40 = v28;
        pxrInternal__aapl__pxrReserved__::UsdPrim::_MakeDescendantsRange(v19, &v39, &v42);
        *&v39 = v42;
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v39 + 2, &v42 + 2);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v39 + 3, &v42 + 3);
        v40 = v43;
        v41 = v44;
        *&v36 = v45;
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v36 + 2, &v46);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v36 + 3, &v47);
        v37 = v48;
        v38 = v49;
        while (v39 != v36 || !pxrInternal__aapl__pxrReserved__::operator==(&v40, &v37))
        {
          pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeIterator::dereference(&v39, v32);
          v24 = *a1;
          v25 = pxrInternal__aapl__pxrReserved__::UsdObject::GetPrimPath(v32);
          if (!std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(v24[1], v25))
          {
            v26 = (*v24)[3];
            if (!v26)
            {
              std::__throw_bad_function_call[abi:ne200100]();
            }

            (*(*v26 + 48))(v26, v25);
            std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>(v24[1], v25);
          }

          if ((v35 & 7) != 0)
          {
            atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v34);
          if (v33)
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v33);
          }

          pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeIterator::increment(&v39);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v36 + 8);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v39 + 8);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v46);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v42 + 8);
      }

      *&v42 = &v30;
      std::vector<pxrInternal__aapl__pxrReserved__::UsdPrim>::__destroy_vector::operator()[abi:ne200100](&v42);
    }
  }

  if ((v53 & 7) != 0)
  {
    atomic_fetch_add_explicit((v53 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v52);
  result = v51;
  if (v51)
  {
    return pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v51);
  }

  return result;
}

uint64_t realityio::LiveSceneUpdate::visitDirtyPrimPathsInStage(realityio::LiveSceneUpdate const*,std::function<void ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>)const::$_2::operator()(uint64_t a1, unsigned int *a2, pxrInternal__aapl__pxrReserved__::UsdStage *this)
{
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v26, this, (a2 + 2));
  v5 = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
  v25 = 0;
  v23 = MEMORY[0x277D86790] + 16;
  if (v24)
  {
    if ((*(v24 + 57) & 8) == 0)
    {
      if ((*(MEMORY[0x277D86790] + 48))(v5))
      {
        pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::GetPrimvars(&v17, &v23);
        v6 = v17;
        v7 = v18;
        v16 = &v17;
        std::vector<pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar>::__destroy_vector::operator()[abi:ne200100](&v16);
        if (v6 != v7)
        {
          v8 = *(a2 + 3);
          if (v8 != a2 + 8)
          {
            do
            {
              pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::GetPrimvar(&v17, &v23, (v8 + 8));
              IsPrimvar = pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar();
              if ((v21 & 7) != 0)
              {
                atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              if ((v20 & 7) != 0)
              {
                atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v19);
              if (v18)
              {
                pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v18);
              }

              if (IsPrimvar)
              {
                break;
              }

              v10 = *(v8 + 1);
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
                do
                {
                  v11 = *(v8 + 2);
                  v12 = *v11 == v8;
                  v8 = v11;
                }

                while (!v12);
              }

              v8 = v11;
            }

            while (v11 != a2 + 8);
          }

          v22[0] = v22;
          v22[1] = v22;
          v22[2] = 0;
          std::__list_imp<pxrInternal__aapl__pxrReserved__::SdfPath>::__create_node[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath const&>();
        }
      }
    }
  }

  v13 = *a1;
  if (!std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(*(*a1 + 8), a2 + 2))
  {
    v14 = (*v13)[3];
    if (!v14)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v14 + 48))(v14, a2 + 1);
    std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>(v13[1], a2 + 2);
  }

  MEMORY[0x24C1A56A0](&v23);
  if ((v29 & 7) != 0)
  {
    atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v28);
  result = v27;
  if (v27)
  {
    return pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v27);
  }

  return result;
}

void sub_247660928(_Unwind_Exception *a1)
{
  std::__list_imp<pxrInternal__aapl__pxrReserved__::SdfPath>::clear((v1 - 176));
  MEMORY[0x24C1A56A0](v1 - 152);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim((v1 - 120));
  _Unwind_Resume(a1);
}

uint64_t realityio::LiveSceneUpdate::isStageMetadataDirty(realityio::LiveSceneUpdate *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v2 = *a2 & 0xFFFFFFFFFFFFFFF8;
  if (!v2)
  {
    return 1;
  }

  if ((*(v2 + 39) & 0x8000000000000000) != 0)
  {
    if (!*(v2 + 24))
    {
      return 1;
    }
  }

  else if (!*(v2 + 39))
  {
    return 1;
  }

  if (std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(this + 32, a2))
  {
    return 1;
  }

  v7 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(0);
  v8 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(this + 224, v7);
  if ((this + 232) == v8)
  {
    return 0;
  }

  v9 = v8;
  v11 = &unk_285957E40;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v12, v8 + 12);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v13, v9 + 13);
  v14 = *(v9 + 56);
  std::map<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>::map[abi:ne200100](v15, (v9 + 16));
  v15[3] = &unk_285955750;
  std::unordered_set<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::unordered_set(&v16, (v9 + 24));
  if (v14 == 1)
  {
    v10 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(this + 1);
    HasMetadata = pxrInternal__aapl__pxrReserved__::UsdStage::HasMetadata(v10, a2);
  }

  else
  {
    HasMetadata = 0;
  }

  realityio::UsdPrimDelta::~UsdPrimDelta(&v11);
  return HasMetadata;
}

uint64_t realityio::LiveSceneUpdate::isPrimMetadataDirty(realityio::LiveSceneUpdate *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3)
{
  v6 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(this + 224, a2);
  if ((this + 232) != v6)
  {
    v7 = *a3 & 0xFFFFFFFFFFFFFFF8;
    if (v7)
    {
      if ((*(v7 + 39) & 0x8000000000000000) != 0)
      {
        if (*(v7 + 24))
        {
LABEL_5:
          if (*(v6 + 56) != 1)
          {
            return std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::find<pxrInternal__aapl__pxrReserved__::TfToken>((v6 + 96), a3) != 0;
          }

          v8 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(this + 1);
          pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v14, v8, a2);
          if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v14))
          {
            HasMetadata = pxrInternal__aapl__pxrReserved__::UsdObject::HasMetadata(&v14, a3);
          }

          else
          {
            HasMetadata = 0;
          }

          if ((v17 & 7) != 0)
          {
            atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v16);
          if (v15)
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v15);
          }

          return HasMetadata;
        }
      }

      else if (*(v7 + 39))
      {
        goto LABEL_5;
      }
    }

    return 1;
  }

  v10 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(this + 1);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v14, v10, a2);
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v14))
  {
    v11 = pxrInternal__aapl__pxrReserved__::UsdObject::HasMetadata(&v14, a3);
  }

  else
  {
    v11 = 0;
  }

  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v16);
  if (v15)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v15);
  }

  if (v11)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t anonymous namespace::isPrimPathPartOfResyncedSubtreeInStageDelta(_anonymous_namespace_ *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const realityio::UsdStageDelta *a3)
{
  v5 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(this);
  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v11, v5);
  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v10, this);
  if (v10 == v11)
  {
LABEL_5:
    v8 = 0;
  }

  else
  {
    while (1)
    {
      v6 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(a2 + 16, &v10);
      if ((a2 + 24) != v6)
      {
        v12 = &unk_285957E40;
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v13, (v6 + 48));
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v14, (v6 + 52));
        v15 = *(v6 + 56);
        std::map<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>::map[abi:ne200100](v16, v6 + 64);
        v16[3] = &unk_285955750;
        std::unordered_set<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::unordered_set(&v17, v6 + 96);
        v7 = v15;
        realityio::UsdPrimDelta::~UsdPrimDelta(&v12);
        if (v7)
        {
          break;
        }
      }

      pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v12, &v10);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v10, &v12);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v10 + 4, &v12 + 1);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v12);
      if (v10 == v11)
      {
        goto LABEL_5;
      }
    }

    v8 = 1;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v10);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v11);
  return v8;
}

void sub_247660EB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

uint64_t realityio::LiveSceneUpdate::isPropertyDirty(realityio::LiveSceneUpdate *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3)
{
  v6 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(this + 224, a2);
  if (this + 232 != v6)
  {
    v7 = *a3 & 0xFFFFFFFFFFFFFFF8;
    if (v7)
    {
      if ((*(v7 + 39) & 0x8000000000000000) != 0)
      {
        if (*(v7 + 24))
        {
LABEL_5:
          if (v6[56] != 1)
          {
            return v6 + 72 != std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::find<pxrInternal__aapl__pxrReserved__::TfToken>((v6 + 64), a3);
          }

          v8 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(this + 1);
          pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v14, v8, a2);
          if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v14) && (pxrInternal__aapl__pxrReserved__::UsdPrim::IsPseudoRoot(&v14) & 1) == 0)
          {
            HasProperty = pxrInternal__aapl__pxrReserved__::UsdPrim::HasProperty(&v14, a3);
          }

          else
          {
            HasProperty = 0;
          }

          if ((v17 & 7) != 0)
          {
            atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v16);
          if (v15)
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v15);
          }

          return HasProperty;
        }
      }

      else if (*(v7 + 39))
      {
        goto LABEL_5;
      }
    }

    return 1;
  }

  v10 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(this + 1);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v14, v10, a2);
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v14) && (pxrInternal__aapl__pxrReserved__::UsdPrim::IsPseudoRoot(&v14) & 1) == 0)
  {
    v11 = pxrInternal__aapl__pxrReserved__::UsdPrim::HasProperty(&v14, a3);
  }

  else
  {
    v11 = 0;
  }

  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v16);
  if (v15)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v15);
  }

  if (v11)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t realityio::LiveSceneUpdate::isPropertyMetadataDirty(realityio::LiveSceneUpdate *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4)
{
  v24[0] = a3;
  v24[1] = this;
  v24[2] = a2;
  v24[3] = a4;
  v8 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(this + 224, a2);
  if ((this + 232) == v8)
  {
    result = realityio::LiveSceneUpdate::isPropertyMetadataDirty(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfToken const&)const::$_0::operator()(v24);
    if (result)
    {
    }
  }

  else
  {
    v9 = v8;
    if (*(v8 + 56) == 1)
    {
      return realityio::LiveSceneUpdate::isPropertyMetadataDirty(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfToken const&)const::$_0::operator()(v24);
    }

    v12 = *a3 & 0xFFFFFFFFFFFFFFF8;
    if (v12)
    {
      if ((*(v12 + 39) & 0x8000000000000000) != 0)
      {
        if (*(v12 + 24))
        {
LABEL_11:
          v13 = std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::find<pxrInternal__aapl__pxrReserved__::TfToken>(v8 + 64, a3);
          if (v9 + 72 != v13)
          {
            v14 = *a4 & 0xFFFFFFFFFFFFFFF8;
            if (v14)
            {
              v15 = *(v14 + 39);
              if (v15 < 0)
              {
                v15 = *(v14 + 24);
              }

              if (v15)
              {
                return std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::find<pxrInternal__aapl__pxrReserved__::TfToken>((v13 + 64), a4) != 0;
              }
            }

            return 1;
          }

          return 0;
        }
      }

      else if (*(v12 + 39))
      {
        goto LABEL_11;
      }
    }

    v16 = *a4 & 0xFFFFFFFFFFFFFFF8;
    if (!v16)
    {
      return 1;
    }

    v17 = *(v16 + 39);
    if (v17 < 0)
    {
      v17 = *(v16 + 24);
    }

    if (!v17)
    {
      return 1;
    }

    v18 = *(v8 + 64);
    v19 = (v8 + 72);
    if (v18 == (v8 + 72))
    {
      return 0;
    }

    do
    {
      v20 = std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(v18 + 8, a4);
      result = v20 != 0;
      if (v20)
      {
        break;
      }

      v21 = v18[1];
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
          v22 = v18[2];
          v23 = *v22 == v18;
          v18 = v22;
        }

        while (!v23);
      }

      v18 = v22;
    }

    while (v22 != v19);
  }

  return result;
}

uint64_t realityio::LiveSceneUpdate::isPropertyMetadataDirty(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfToken const&)const::$_0::operator()(uint64_t a1)
{
  v1 = **a1 & 0xFFFFFFFFFFFFFFF8;
  if (!v1)
  {
    return 1;
  }

  if ((*(v1 + 39) & 0x8000000000000000) == 0)
  {
    if (*(v1 + 39))
    {
      goto LABEL_4;
    }

    return 1;
  }

  if (!*(v1 + 24))
  {
    return 1;
  }

LABEL_4:
  v3 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*(a1 + 8) + 8));
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v10, v3, *(a1 + 16));
  if ((pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v10) & 1) != 0 && pxrInternal__aapl__pxrReserved__::UsdPrim::HasProperty(&v10, *a1))
  {
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetProperty(&v6, &v10, *a1);
    HasMetadata = pxrInternal__aapl__pxrReserved__::UsdObject::HasMetadata(&v6, *(a1 + 24));
    if ((v9 & 7) != 0)
    {
      atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v8);
    if (v7)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v7);
    }
  }

  else
  {
    HasMetadata = 0;
  }

  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v12);
  if (v11)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v11);
  }

  return HasMetadata;
}

void sub_2476613C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  pxrInternal__aapl__pxrReserved__::UsdProperty::~UsdProperty(&a9);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(&a13);
  _Unwind_Resume(a1);
}

CFStringRef realityio::LiveSceneUpdate::description@<X0>(realityio::LiveSceneUpdate *this@<X0>, CFStringRef *a2@<X8>)
{
  *a2 = 0;
  result = CFStringCreateWithFormat(0, 0, @"<LiveSceneUpdate: %p>", this);
  *a2 = result;
  return result;
}

void realityio::LiveSceneUpdate::~LiveSceneUpdate(realityio::LiveSceneUpdate *this)
{
  realityio::LiveSceneUpdate::~LiveSceneUpdate(this);

  JUMPOUT(0x24C1A91B0);
}

{
  *this = &unk_285957F10;
  realityio::UsdStageDelta::~UsdStageDelta((this + 208));
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>>>::destroy(this + 184, *(this + 24));
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>>>::destroy(this + 160, *(this + 21));
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>,std::less<pxrInternal__aapl__pxrReserved__::SdfAssetPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>>>::destroy(this + 136, *(this + 18));
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>>>::destroy(this + 112, *(this + 15));
  std::__tree<std::string>::destroy(this + 88, *(this + 12));
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned long>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned long>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned long>>>::destroy(this + 64, *(this + 9));
  v3 = (this + 40);
  std::vector<realityio::internal::PrimToEntityMap::EntityData>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }

  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(this + 1);
}

uint64_t realityio::LiveSceneUpdate::LiveSceneUpdate(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8, uint64_t a9, char a10)
{
  *a1 = &unk_285957F10;
  *(a1 + 8) = *a2;
  *a2 = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = *a4;
  *(a1 + 32) = *(a4 + 16);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = *(a4 + 24);
  *(a1 + 56) = *(a4 + 40);
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 24) = 0;
  v16 = (a4 + 48);
  *(a1 + 64) = *(a4 + 48);
  v18 = (a4 + 56);
  v17 = *(a4 + 56);
  *(a1 + 72) = v17;
  v19 = a1 + 72;
  v20 = *(a4 + 64);
  *(a1 + 80) = v20;
  if (v20)
  {
    *(v17 + 16) = v19;
    *v16 = v18;
    *v18 = 0;
    *(a4 + 64) = 0;
  }

  else
  {
    *(a1 + 64) = v19;
  }

  *(a1 + 88) = *(a4 + 72);
  v22 = (a4 + 80);
  v21 = *(a4 + 80);
  *(a1 + 96) = v21;
  v23 = a1 + 96;
  v24 = *(a4 + 88);
  *(a1 + 104) = v24;
  if (v24)
  {
    *(v21 + 16) = v23;
    *(a4 + 72) = v22;
    *v22 = 0;
    *(a4 + 88) = 0;
  }

  else
  {
    *(a1 + 88) = v23;
  }

  *(a4 + 8) = *a4;
  std::vector<realityio::internal::PrimToEntityMap::EntityData>::clear[abi:ne200100]((a4 + 24));
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned long>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned long>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned long>>>::destroy(v16, *(a4 + 56));
  *(a4 + 56) = 0;
  *(a4 + 64) = 0;
  *(a4 + 48) = v18;
  std::__tree<std::string>::destroy(a4 + 72, *(a4 + 80));
  *(a4 + 80) = 0;
  *(a4 + 88) = 0;
  *(a4 + 72) = v22;
  *(a1 + 112) = *a5;
  v25 = a5 + 1;
  v26 = a5[1];
  *(a1 + 120) = v26;
  v27 = a1 + 120;
  v28 = a5[2];
  *(a1 + 128) = v28;
  if (v28)
  {
    *(v26 + 16) = v27;
    *a5 = v25;
    *v25 = 0;
    a5[2] = 0;
  }

  else
  {
    *(a1 + 112) = v27;
  }

  *(a1 + 136) = *a6;
  v29 = a6 + 1;
  v30 = a6[1];
  *(a1 + 144) = v30;
  v31 = a1 + 144;
  v32 = a6[2];
  *(a1 + 152) = v32;
  if (v32)
  {
    *(v30 + 16) = v31;
    *a6 = v29;
    *v29 = 0;
    a6[2] = 0;
  }

  else
  {
    *(a1 + 136) = v31;
  }

  *(a1 + 160) = *a7;
  v33 = a7 + 1;
  v34 = a7[1];
  *(a1 + 168) = v34;
  v35 = a1 + 168;
  v36 = a7[2];
  *(a1 + 176) = v36;
  if (v36)
  {
    *(v34 + 16) = v35;
    *a7 = v33;
    *v33 = 0;
    a7[2] = 0;
  }

  else
  {
    *(a1 + 160) = v35;
  }

  *(a1 + 184) = *a8;
  v37 = a8 + 1;
  v38 = a8[1];
  *(a1 + 192) = v38;
  v39 = a1 + 192;
  v40 = a8[2];
  *(a1 + 200) = v40;
  if (v40)
  {
    *(v38 + 16) = v39;
    *a8 = v37;
    *v37 = 0;
    a8[2] = 0;
  }

  else
  {
    *(a1 + 184) = v39;
  }

  *(a1 + 216) = *(a3 + 8);
  *(a1 + 208) = &unk_285949620;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef((a1 + 216));
  std::map<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>::map[abi:ne200100]((a1 + 224), a3 + 16);
  *(a1 + 248) = &unk_285955750;
  std::unordered_set<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::unordered_set(a1 + 256, a3 + 48);
  *(a1 + 296) = a9;
  *(a1 + 304) = a10;
  return a1;
}

void sub_247661788(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char **a10, atomic_uint **a11)
{
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>>>::destroy(v13 + 224, *(v13 + 232));
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(v15);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>>>::destroy(v16, *v14);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>>>::destroy(v18, *v12);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>,std::less<pxrInternal__aapl__pxrReserved__::SdfAssetPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>>>::destroy(v17, *v19);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>>>::destroy(a9, *v11);
  realityio::internal::PrimToEntityMap::~PrimToEntityMap(a10);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(a11);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdPrim::SetActive(pxrInternal__aapl__pxrReserved__::UsdPrim *this)
{
  v1 = atomic_load(MEMORY[0x277D86540]);
  if (v1)
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::_SetMetadataImpl<BOOL>(this, v1);
  }

  pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType>>::_TryToCreateData();
}

void *std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = bswap64(0x9E3779B97F4A7C55 * (*a2 & 0xFFFFFFFFFFFFFFF8));
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = v3;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = v3 & (*&v2 - 1);
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v3 == v8)
      {
        if ((result[2] ^ *a2) < 8)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t RIOBuilderDirtyMetadataDescriptorGetTypeID()
{
  if (RIOBuilderDirtyMetadataDescriptorGetTypeID::onceToken != -1)
  {
    dispatch_once(&RIOBuilderDirtyMetadataDescriptorGetTypeID::onceToken, &__block_literal_global_27);
  }

  return RIOBuilderDirtyMetadataDescriptorGetTypeID::typeID;
}

void __RIOBuilderDirtyMetadataDescriptorGetTypeID_block_invoke()
{
  if (!RIOBuilderDirtyMetadataDescriptorGetTypeID::typeID)
  {
    RIOBuilderDirtyMetadataDescriptorGetTypeID::typeID = _CFRuntimeRegisterClass();
  }
}

void RIOBuilderDirtyMetadataDescriptorCreateWithMetadata(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 16);
    if ((v1 & 7) != 0)
    {
      atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed);
    }
  }

  operator new();
}

void sub_247661BF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v11)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RIOBuilderDirtyMetadataDescriptorCopyMetadata(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 16);
    v2 = *(a1 + 24);
    if (v2)
    {
      atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v1)
    {
      v3 = *v1;
      v7 = v3;
      if ((v3 & 7) != 0)
      {
        v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
        if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
        {
          v7 = v4;
        }
      }

      v5 = RIOPxrTfTokenCreate<pxrInternal__aapl__pxrReserved__::TfToken const&>(&v7);
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (!v2)
      {
        return v5;
      }

LABEL_18:
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
      return v5;
    }

    if (RIOPxrTfTokenEmpty::onceToken != -1)
    {
      dispatch_once(&RIOPxrTfTokenEmpty::onceToken, &__block_literal_global_2_2);
    }

    v5 = RIOPxrTfTokenEmpty::tokenRef;
    if (v2)
    {
      goto LABEL_18;
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

  return v5;
}

void sub_247661D2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}

void _RIOBuilderDirtyMetadataDescriptorCFFinalize(void *a1)
{
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__shared_ptr_emplace<realityio::DirtyMetadataDescriptor>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285957FD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

uint64_t std::__shared_ptr_emplace<realityio::DirtyMetadataDescriptor>::__on_zero_shared(uint64_t result)
{
  v1 = *(result + 24);
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

uint64_t RIOBuilderInputDescriptorGetTypeID()
{
  if (RIOBuilderInputDescriptorGetTypeID::onceToken != -1)
  {
    dispatch_once(&RIOBuilderInputDescriptorGetTypeID::onceToken, &__block_literal_global_28);
  }

  return RIOBuilderInputDescriptorGetTypeID::typeID;
}

void __RIOBuilderInputDescriptorGetTypeID_block_invoke()
{
  if (!RIOBuilderInputDescriptorGetTypeID::typeID)
  {
    RIOBuilderInputDescriptorGetTypeID::typeID = _CFRuntimeRegisterClass();
  }
}

uint64_t RIOBuilderCurrentPrimInputDescriptorCreate(__CFString *a1, uint64_t a2)
{
  realityio::CFStringCopyUTF8String(a1, v6);
  if (v6[0] == 1)
  {
    v3 = SHIBYTE(v7.__r_.__value_.__r.__words[2]);
    if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v7.__r_.__value_.__l.__data_, v7.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v7;
    }

    if (a2)
    {
      operator new();
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((v3 & 0x80000000) == 0)
      {
        return 0;
      }
    }

    else if ((v3 & 0x80000000) == 0)
    {
      return 0;
    }

    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_2476620B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  std::__shared_weak_count::~__shared_weak_count(v25);
  operator delete(v28);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v26 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(a1);
}

CFStringRef anonymous namespace::inputNameRefFromInputDescriptorRef(uint64_t a1, std::__shared_weak_count *a2)
{
  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v3 = (a1 + 8);
  if (*(a1 + 31) < 0)
  {
    v3 = *v3;
  }

  v4 = CFStringCreateWithCString(0, v3, 0x8000100u);
  if (a2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a2);
  }

  return v4;
}

void sub_247662190(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::outputIdentifierRefFromInputDescriptorRef(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 16);
    v2 = *(a1 + 24);
    if (v2)
    {
      atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v3 = RIOPxrTfTokenCreate<pxrInternal__aapl__pxrReserved__::TfToken const&>((v1 + 32));
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
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

  return v3;
}

void sub_247662230(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL RIOBuilderCurrentPrimInputDescriptorCopyOptionality(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
    v3 = *(v2 + 40);
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  else
  {
    v3 = *(v2 + 40);
  }

  return v3 != 1;
}

uint64_t RIOBuilderChildPrimInputDescriptorCreate(__CFString *a1, uint64_t a2)
{
  realityio::CFStringCopyUTF8String(a1, v5);
  if (v5[0] == 1)
  {
    if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v6.__r_.__value_.__l.__data_, v6.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v6;
    }

    if (a2)
    {
      operator new();
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if ((v5[0] & 1) != 0 && SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v6.__r_.__value_.__l.__data_);
    }
  }

  return 0;
}

void sub_247662488(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  std::__shared_weak_count::~__shared_weak_count(v28);
  operator delete(v30);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a15 == 1 && a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

uint64_t RIOBuilderDescendantPrimInputDescriptorCreate(__CFString *a1, uint64_t a2)
{
  realityio::CFStringCopyUTF8String(a1, v6);
  if (v6[0] == 1)
  {
    v3 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v5, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v5 = __p;
    }

    if (a2)
    {
      operator new();
    }

    if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v5.__r_.__value_.__l.__data_);
      if ((v3 & 0x80000000) == 0)
      {
        return 0;
      }
    }

    else if ((v3 & 0x80000000) == 0)
    {
      return 0;
    }

    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_24766268C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  std::__shared_weak_count::~__shared_weak_count(v27);
  operator delete(v30);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (v28 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(a1);
}

uint64_t RIOBuilderDescendantPrimsInputDescriptorCreate(__CFString *a1, uint64_t a2, const __CFArray *a3)
{
  realityio::CFStringCopyUTF8String(a1, v13);
  if (v13[0] == 1)
  {
    v5 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v12, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v12 = __p;
    }

    if (a2)
    {
      v11[0] = 0;
      v11[1] = 0;
      v10 = v11;
      Count = CFArrayGetCount(a3);
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a3, i);
          std::__tree<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfTokenFastArbitraryLessThan,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken const&>(&v10, ValueAtIndex + 2);
        }
      }

      operator new();
    }

    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
      if ((v5 & 0x80000000) == 0)
      {
        return 0;
      }
    }

    else if ((v5 & 0x80000000) == 0)
    {
      return 0;
    }

    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_2476628C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, void *a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, void *a23)
{
  std::__shared_weak_count::~__shared_weak_count(v23);
  operator delete(v26);
  std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::destroy(&a12, a13);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (v24 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(a1);
}

uint64_t RIOBuilderChildPrimInputDescriptorCopyChildPrimType(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  {
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v6 = RIOPxrTfTokenCreate<pxrInternal__aapl__pxrReserved__::TfToken const&>(v5 + 6);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
LABEL_12:
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  else
  {
    if (RIOPxrTfTokenEmpty::onceToken != -1)
    {
      dispatch_once(&RIOPxrTfTokenEmpty::onceToken, &__block_literal_global_2_2);
    }

    v6 = RIOPxrTfTokenEmpty::tokenRef;
    if (v3)
    {
      goto LABEL_12;
    }
  }

  return v6;
}

void sub_247662A44(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL RIOBuilderChildPrimInputDescriptorCopyOptionality(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
    v3 = *(v2 + 40);
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  else
  {
    v3 = *(v2 + 40);
  }

  return v3 != 1;
}

uint64_t RIOBuilderParentPrimInputDescriptorCreate(__CFString *a1, uint64_t a2)
{
  realityio::CFStringCopyUTF8String(a1, v6);
  if (v6[0] == 1)
  {
    v3 = SHIBYTE(v7.__r_.__value_.__r.__words[2]);
    if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v7.__r_.__value_.__l.__data_, v7.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v7;
    }

    if (a2)
    {
      operator new();
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((v3 & 0x80000000) == 0)
      {
        return 0;
      }
    }

    else if ((v3 & 0x80000000) == 0)
    {
      return 0;
    }

    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_247662CB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v25);
  operator delete(v28);
  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (v26 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(a1);
}

BOOL RIOBuilderParentPrimInputDescriptorCopyOptionality(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
    v3 = *(v2 + 40);
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  else
  {
    v3 = *(v2 + 40);
  }

  return v3 != 1;
}

uint64_t RIOBuilderRelatedPrimInputDescriptorCreate(__CFString *a1, uint64_t a2)
{
  realityio::CFStringCopyUTF8String(a1, v5);
  if (v5[0] == 1)
  {
    if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v6.__r_.__value_.__l.__data_, v6.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v6;
    }

    if (a2)
    {
      operator new();
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if ((v5[0] & 1) != 0 && SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v6.__r_.__value_.__l.__data_);
    }
  }

  return 0;
}

void sub_247662F8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  std::__shared_weak_count::~__shared_weak_count(v28);
  operator delete(v30);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a15 == 1 && a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

uint64_t RIOBuilderRelatedPrimInputDescriptorCopyPropertyNameOnCurrentPrimWithRelationship(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  {
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v6 = RIOPxrTfTokenCreate<pxrInternal__aapl__pxrReserved__::TfToken const&>(v5 + 6);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
LABEL_12:
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  else
  {
    if (RIOPxrTfTokenEmpty::onceToken != -1)
    {
      dispatch_once(&RIOPxrTfTokenEmpty::onceToken, &__block_literal_global_2_2);
    }

    v6 = RIOPxrTfTokenEmpty::tokenRef;
    if (v3)
    {
      goto LABEL_12;
    }
  }

  return v6;
}

void sub_24766311C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL RIOBuilderRelatedPrimInputDescriptorCopyOptionality(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
    v3 = *(v2 + 40);
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  else
  {
    v3 = *(v2 + 40);
  }

  return v3 != 1;
}

uint64_t RIOBuilderStaticPrimInputDescriptorCreate(__CFString *a1, uint64_t a2)
{
  realityio::CFStringCopyUTF8String(a1, v6);
  if (v6[0] == 1)
  {
    v3 = SHIBYTE(v7.__r_.__value_.__r.__words[2]);
    if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v7.__r_.__value_.__l.__data_, v7.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v7;
    }

    if (a2)
    {
      operator new();
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((v3 & 0x80000000) == 0)
      {
        return 0;
      }
    }

    else if ((v3 & 0x80000000) == 0)
    {
      return 0;
    }

    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_247663374(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  std::__shared_weak_count::~__shared_weak_count(v25);
  operator delete(v28);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v26 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

uint64_t RIOBuilderStaticPrimInputDescriptorCopyPrimPath(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  {
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    EmptyPath = RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath const&>(v5 + 11);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
LABEL_10:
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  else
  {
    EmptyPath = RIOPxrSdfPathCreateEmptyPath();
    if (v3)
    {
      goto LABEL_10;
    }
  }

  return EmptyPath;
}

void sub_2476634C4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::dynamic_pointer_cast[abi:ne200100]<realityio::StaticPrimInputDescriptor const,realityio::InputDescriptor const>(void *result, char **lpsrc, uint64_t a3)
{
  v3 = result;
  {
    *v3 = result;
    v3[1] = a3;
    if (a3)
    {
      atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

BOOL RIOBuilderStaticPrimInputDescriptorCopyOptionality(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
    v3 = *(v2 + 40);
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  else
  {
    v3 = *(v2 + 40);
  }

  return v3 != 1;
}

uint64_t RIOBuilderEntityGeneratingPrimDescriptorCreate(__CFString *a1, uint64_t a2)
{
  realityio::CFStringCopyUTF8String(a1, v6);
  if (v6[0] == 1)
  {
    v3 = SHIBYTE(v7.__r_.__value_.__r.__words[2]);
    if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v7.__r_.__value_.__l.__data_, v7.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v7;
    }

    if (a2)
    {
      operator new();
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((v3 & 0x80000000) == 0)
      {
        return 0;
      }
    }

    else if ((v3 & 0x80000000) == 0)
    {
      return 0;
    }

    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_24766377C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  std::__shared_weak_count::~__shared_weak_count(v25);
  operator delete(v28);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v26 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(a1);
}

BOOL RIOBuilderEntityGeneratingPrimInputDescriptorCopyOptionality(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
    v3 = *(v2 + 40);
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  else
  {
    v3 = *(v2 + 40);
  }

  return v3 != 1;
}

uint64_t RIOBuilderCustomCallbackInputDescriptorCreate(__CFString *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  realityio::CFStringCopyUTF8String(a1, v9);
  if (v9[0])
  {
    v6 = SHIBYTE(v10.__r_.__value_.__r.__words[2]);
    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v10.__r_.__value_.__l.__data_, v10.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v10;
    }

    if (a2)
    {
      operator new();
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((v6 & 0x80000000) == 0)
      {
        goto LABEL_10;
      }
    }

    else if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    operator delete(v10.__r_.__value_.__l.__data_);
  }

LABEL_10:

  return 0;
}

void sub_247663A7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v33);
  operator delete(v37);
  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (v35 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(a1);
}

BOOL RIOBuilderCustomCallbackInputDescriptorCopyOptionality(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
    v3 = *(v2 + 40);
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  else
  {
    v3 = *(v2 + 40);
  }

  return v3 != 1;
}

id RIOBuilderCustomCallbackInputDescriptorCopyCallbackFunction(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = **v2;
  v5 = *(a1 + 24);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = MEMORY[0x24C1A9770](v4[6]);
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  else
  {
    v6 = MEMORY[0x24C1A9770](v4[6]);
  }

  return v6;
}

void *std::dynamic_pointer_cast[abi:ne200100]<realityio::ObjCCustomInputDescriptor const,realityio::InputDescriptor const>(void *result, char **lpsrc, uint64_t a3)
{
  v3 = result;
  {
    *v3 = result;
    v3[1] = a3;
    if (a3)
    {
      atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

uint64_t RIOBuilderInputDescriptorCopyType(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v2)
  {
    goto LABEL_31;
  }

  v3 = *v2;
  v4 = **v2;
  {
    v2 = 1;
    if (!v1)
    {
      return v2;
    }

    goto LABEL_17;
  }

  v5 = *v3;
  {
    v2 = 2;
    if (!v1)
    {
      return v2;
    }

    goto LABEL_17;
  }

  v6 = *v3;
  {
    v2 = 3;
    if (!v1)
    {
      return v2;
    }

    goto LABEL_17;
  }

  v7 = *v3;
  {
    std::dynamic_pointer_cast[abi:ne200100]<realityio::StaticPrimInputDescriptor const,realityio::InputDescriptor const>(&v13, v2, v1);
    if (v13)
    {
      v2 = 5;
    }

    else
    {
      std::dynamic_pointer_cast[abi:ne200100]<realityio::EntityGeneratingOwningPrimInputDescriptor const,realityio::InputDescriptor const>(&v11, v2, v1);
      if (v11)
      {
        v2 = 6;
      }

      else
      {
        std::dynamic_pointer_cast[abi:ne200100]<realityio::ObjCCustomInputDescriptor const,realityio::InputDescriptor const>(&v9, v2, v1);
        if (v9)
        {
          v2 = 7;
        }

        else
        {
          v2 = 0;
        }

        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        }
      }

      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }
    }

    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

LABEL_31:
    if (v1)
    {
      goto LABEL_32;
    }

    return v2;
  }

  v2 = 4;
  if (v1)
  {
LABEL_17:
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
LABEL_32:
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  return v2;
}

void *std::dynamic_pointer_cast[abi:ne200100]<realityio::EntityGeneratingOwningPrimInputDescriptor const,realityio::InputDescriptor const>(void *result, char **lpsrc, uint64_t a3)
{
  v3 = result;
  {
    *v3 = result;
    v3[1] = a3;
    if (a3)
    {
      atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

void _RIOBuilderInputDescriptorCFFinalize(void *a1)
{
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void *realityio::DescendantPrimInputDescriptor::DescendantPrimInputDescriptor(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, int a5)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  realityio::InputDescriptor::InputDescriptor(a1, &__p, a3, a5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *a1 = &unk_285945E50;
  std::set<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfTokenFastArbitraryLessThan,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::set[abi:ne200100](a1 + 6, a4);
  return a1;
}

void std::__shared_ptr_emplace<realityio::ParentPrimInputDescriptor>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2859580A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void realityio::ParentPrimInputDescriptor::~ParentPrimInputDescriptor(realityio::ParentPrimInputDescriptor *this)
{
  realityio::InputDescriptor::~InputDescriptor(this);

  JUMPOUT(0x24C1A91B0);
}

void *realityio::ParentPrimInputDescriptor::resolvedPrimPaths@<X0>(pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X0>, pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X2>, uint64_t a3@<X8>)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  result = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(a1);
  if (*a2 != *result)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v6, a2);
    std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>(a3, &v6);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v6);
  }

  return result;
}

void sub_2476641E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::~__hash_table(v2);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<realityio::ObjCCustomInputDescriptor>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285958130;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void realityio::ArbitraryComponentStructBuilder::ArbitraryComponentStructBuilder(realityio::ArbitraryComponentStructBuilder *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v7[13] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v5, "ArbitraryComponentStructBuilder");
  std::string::basic_string[abi:ne200100]<0>(&__p, realityio::kArbitraryComponentStructBuilderIdentifier);
  if ((atomic_load_explicit(&qword_27EE533F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE533F0))
  {
    operator new();
  }

  if (*algn_27EE533E8)
  {
    atomic_fetch_add_explicit((*algn_27EE533E8 + 8), 1uLL, memory_order_relaxed);
  }

  v7[0] = &unk_2859582D0;
  v7[3] = v7;
  v6[0] = &unk_285958350;
  v6[3] = v6;
  realityio::DynamicBuilder::DynamicBuilder(this, a2);
}

void sub_247664754(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char ***a24, uint64_t a25, uint64_t a26, char **a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, std::__shared_weak_count *a32, uint64_t a33, char *a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, std::__shared_weak_count *a42, uint64_t a43, std::__shared_weak_count *a44, char a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, std::__shared_weak_count *a52)
{
  v55 = *(v53 - 120);
  if (v55)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v55);
  }

  if (a52)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a52);
  }

  *(v53 - 248) = &a45;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v53 - 248));
  v56 = 40;
  while (1)
  {
    v57 = *(v53 - 176 + v56);
    if (v57)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v57);
    }

    v56 -= 16;
    if (v56 == -8)
    {
      if (a32)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a32);
      }

      *(v53 - 248) = &a24;
      std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v53 - 248));
      a24 = &a27;
      std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a24);
      if ((a30 & 7) != 0)
      {
        atomic_fetch_add_explicit((a30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (a42)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a42);
      }

      a27 = &a34;
      std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a27);
      a34 = &a37;
      std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a34);
      if ((a40 & 7) != 0)
      {
        atomic_fetch_add_explicit((a40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (a44)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a44);
      }

      *(v53 - 176) = &a48;
      std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v53 - 176));
      MEMORY[0x24C1A91B0](v52, 0x10A1C407F0BD61ELL);
      __cxa_guard_abort(&qword_27EE533F0);
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
  }
}

void realityio::ArbitraryComponentStructBuilder::run(realityio::ArbitraryComponentStructBuilder *this, realityio::Inputs *a2)
{
  v3 = *(this + 2);
  v2 = *(this + 3);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "arbitraryComponentStructPrimPath");
  std::allocate_shared[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath const&,0>();
}

void sub_247664CF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  _Unwind_Resume(exception_object);
}

void realityio::ArbitraryComponentStructBuilder::clear(realityio::ArbitraryComponentStructBuilder *this, realityio::Inputs *a2)
{
  v4 = *(this + 2);
  v3 = *(this + 3);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "arbitraryComponentStructPrimPath");
  std::mutex::lock(v4 + 1);
  v5 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(&v4->__m_.__opaque[32], __p);
  std::mutex::unlock(v4 + 1);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = &v4->__m_.__opaque[40];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (v6 != v5)
  {
    v8 = *(this + 2);
    v7 = *(this + 3);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "arbitraryComponentStructPrimPath");
    std::mutex::lock((v8 + 64));
    if (v8 + 48 != std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(v8 + 40, __p))
    {
      std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::__erase_unique<std::string>((v8 + 40), __p);
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__erase_unique<std::string>(v8, __p);
    std::mutex::unlock((v8 + 64));
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }

    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  v10 = *(this + 2);
  v9 = *(this + 3);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "arbitraryComponentAnimationFilePrimPath");
  std::mutex::lock(v10 + 1);
  v11 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(&v10->__m_.__opaque[32], __p);
  std::mutex::unlock(v10 + 1);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  v12 = &v10->__m_.__opaque[40];
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (v12 != v11)
  {
    v14 = *(this + 2);
    v13 = *(this + 3);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "arbitraryComponentAnimationFilePrimPath");
    std::mutex::lock((v14 + 64));
    if (v14 + 48 != std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(v14 + 40, __p))
    {
      std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::__erase_unique<std::string>((v14 + 40), __p);
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__erase_unique<std::string>(v14, __p);
    std::mutex::unlock((v14 + 64));
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }

    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }
  }

  v16 = *(this + 2);
  v15 = *(this + 3);
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "arbitraryComponentClipDefinitionPrimPath");
  std::mutex::lock(v16 + 1);
  v17 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(&v16->__m_.__opaque[32], __p);
  std::mutex::unlock(v16 + 1);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  v18 = &v16->__m_.__opaque[40];
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (v18 != v17)
  {
    v20 = *(this + 2);
    v19 = *(this + 3);
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "arbitraryComponentClipDefinitionPrimPath");
    std::mutex::lock((v20 + 64));
    if (v20 + 48 != std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(v20 + 40, __p))
    {
      std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::__erase_unique<std::string>((v20 + 40), __p);
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__erase_unique<std::string>(v20, __p);
    std::mutex::unlock((v20 + 64));
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }

    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }
  }
}

void sub_2476651F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  std::mutex::unlock(v16 + 1);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  _Unwind_Resume(a1);
}

void realityio::ArbitraryComponentStructBuilder::~ArbitraryComponentStructBuilder(realityio::ArbitraryComponentStructBuilder *this)
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

_anonymous_namespace_::ArbitraryComponentStructDirtyPrimDescriptor *anonymous namespace::ArbitraryComponentStructDirtyPrimDescriptor::ArbitraryComponentStructDirtyPrimDescriptor(_anonymous_namespace_::ArbitraryComponentStructDirtyPrimDescriptor *this)
{
  memset(v4, 0, sizeof(v4));
  memset(v3, 0, sizeof(v3));
  realityio::PrimitiveDirtyPrimDescriptor::PrimitiveDirtyPrimDescriptor(this, v4, v3);
  v5 = v3;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v3[0] = v4;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](v3);
  *this = &unk_2859581F8;
  return this;
}

void sub_247665454(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v3 - 40) = v2;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v3 - 40));
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2476654E0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::ArbitraryComponentStructDirtyPrimDescriptor::~ArbitraryComponentStructDirtyPrimDescriptor(_anonymous_namespace_::ArbitraryComponentStructDirtyPrimDescriptor *this)
{
  *this = &unk_2859525B8;
  v1 = (this + 8);
  v2 = (this + 32);
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = v1;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

{
  *this = &unk_2859525B8;
  v2 = (this + 8);
  v3 = (this + 32);
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = v2;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v3);
  MEMORY[0x24C1A91B0](this, 0x10A1C402FEF67C7);
}

uint64_t anonymous namespace::ArbitraryComponentStructDirtyPrimDescriptor::validate(uint64_t a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::UsdStage *a3, pxrInternal__aapl__pxrReserved__::UsdStage *a4, int a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v73 = *MEMORY[0x277D85DE8];
  MEMORY[0x24C1A5DE0](&v62, "RealityKitStruct");
  v17 = v62;
  if ((v62 ^ *a6) < 8)
  {
    v20 = 0;
  }

  else
  {
    MEMORY[0x24C1A5DE0](&v57, "RealityKitDict");
    v18 = v57;
    if ((v57 ^ *a6) < 8)
    {
      v20 = 0;
    }

    else
    {
      MEMORY[0x24C1A5DE0](&v51, "Struct");
      v19 = v51;
      if ((v51 ^ *a6) < 8)
      {
        v20 = 0;
      }

      else
      {
        MEMORY[0x24C1A5DE0](&v44, "Dict");
        v20 = (v44 ^ *a6) > 7;
        if ((v44 & 7) != 0)
        {
          atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v19 = v51;
      }

      if ((v19 & 7) != 0)
      {
        atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v18 = v57;
    }

    if ((v18 & 7) != 0)
    {
      atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v17 = v62;
  }

  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v20)
  {
    v21 = 0;
    goto LABEL_105;
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v57, a4, a2);
  pxrInternal__aapl__pxrReserved__::UsdPrim::GetParent(&v57, &v62);
  v43 = a3;
  if ((v61 & 7) != 0)
  {
    atomic_fetch_add_explicit((v61 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  v42 = a8;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v59);
  v22 = v58;
  if (v58)
  {
LABEL_23:
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v22);
    goto LABEL_24;
  }

  while (1)
  {
LABEL_24:
    if (!pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v62))
    {
      goto LABEL_53;
    }

    v24 = v63;
    if (!v63 || (*(v63 + 57) & 8) != 0)
    {
      pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(v63, v23);
    }

    v25 = *(v24 + 3);
    MEMORY[0x24C1A5DE0](&v57, "RealityKitComponent");
    v26 = v57;
    if ((v57 ^ *v25) >= 8)
    {
      MEMORY[0x24C1A5DE0](&v51, "RealityKitCustomComponent");
      v28 = v51;
      if ((v51 ^ *v25) >= 8)
      {
        MEMORY[0x24C1A5DE0](&v44, "Component");
        v29 = v44;
        if ((v44 ^ *v25) >= 8)
        {
          MEMORY[0x24C1A5DE0](&v56, "CustomComponent");
          v27 = (v56 ^ *v25) < 8;
          if ((v56 & 7) != 0)
          {
            atomic_fetch_add_explicit((v56 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          v29 = v44;
        }

        else
        {
          v27 = 1;
        }

        if ((v29 & 7) != 0)
        {
          atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v28 = v51;
      }

      else
      {
        v27 = 1;
      }

      if ((v28 & 7) != 0)
      {
        atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v26 = v57;
    }

    else
    {
      v27 = 1;
    }

    if ((v26 & 7) != 0)
    {
      atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v27)
    {
      break;
    }

    pxrInternal__aapl__pxrReserved__::UsdPrim::GetParent(&v62, &v57);
    LODWORD(v62) = v57;
    if (v63)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v63);
    }

    v63 = v58;
    v58 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v64, &v59);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v65, &v60);
    if ((v66 & 7) != 0)
    {
      atomic_fetch_add_explicit((v66 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v66 = v61;
    v61 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v59);
    v22 = v58;
    if (v58)
    {
      goto LABEL_23;
    }
  }

  std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::__value_func[abi:ne200100](v72, a7);
  std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::__value_func[abi:ne200100](v71, v42);
  std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::__value_func[abi:ne200100](v70, a9);
  v30 = realityio::PrimitiveDirtyPrimDescriptor::validate(a1, a2, a3, a4, a5, a6, v72, v71, v70);
  std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](v70);
  std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](v71);
  std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](v72);
  if (v30)
  {
    goto LABEL_100;
  }

LABEL_53:
  if (!v43)
  {
LABEL_99:
    v21 = 0;
    goto LABEL_101;
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v57, v43, a2);
  if ((pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v57) & 1) == 0)
  {
    if ((v61 & 7) != 0)
    {
      atomic_fetch_add_explicit((v61 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v59);
    if (v58)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v58);
    }

    goto LABEL_99;
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetParent(&v57, &v51);
  while (1)
  {
    if (!pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v51))
    {
      v38 = 1;
      goto LABEL_90;
    }

    v32 = v52;
    if (!v52 || (*(v52 + 57) & 8) != 0)
    {
      pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(v52, v31);
    }

    v33 = *(v32 + 3);
    MEMORY[0x24C1A5DE0](&v44, "RealityKitComponent");
    v34 = v44;
    if ((v44 ^ *v33) >= 8)
    {
      MEMORY[0x24C1A5DE0](&v56, "RealityKitCustomComponent");
      v36 = v56;
      if ((v56 ^ *v33) >= 8)
      {
        MEMORY[0x24C1A5DE0](&v50, "Component");
        v37 = v50;
        if ((v50 ^ *v33) >= 8)
        {
          MEMORY[0x24C1A5DE0](&v49, "CustomComponent");
          v35 = (v49 ^ *v33) < 8;
          if ((v49 & 7) != 0)
          {
            atomic_fetch_add_explicit((v49 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          v37 = v50;
        }

        else
        {
          v35 = 1;
        }

        if ((v37 & 7) != 0)
        {
          atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v36 = v56;
      }

      else
      {
        v35 = 1;
      }

      if ((v36 & 7) != 0)
      {
        atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v34 = v44;
    }

    else
    {
      v35 = 1;
    }

    if ((v34 & 7) != 0)
    {
      atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v35)
    {
      break;
    }

    pxrInternal__aapl__pxrReserved__::UsdPrim::GetParent(&v51, &v44);
    LODWORD(v51) = v44;
    if (v52)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v52);
    }

    v52 = v45;
    v45 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v53, &v46);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v54, &v47);
    if ((v55 & 7) != 0)
    {
      atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v55 = v48;
    v48 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v46);
    if (v45)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v45);
    }
  }

  std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::__value_func[abi:ne200100](v69, a7);
  std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::__value_func[abi:ne200100](v68, v42);
  std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::__value_func[abi:ne200100](v67, a9);
  v39 = realityio::PrimitiveDirtyPrimDescriptor::validate(a1, a2, v43, a4, a5, a6, v69, v68, v67);
  std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](v67);
  std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](v68);
  std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](v69);
  v38 = v39 ^ 1;
LABEL_90:
  if ((v55 & 7) != 0)
  {
    atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v53);
  if (v52)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v52);
  }

  if ((v61 & 7) != 0)
  {
    atomic_fetch_add_explicit((v61 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v59);
  if (v58)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v58);
  }

  if (v38)
  {
    goto LABEL_99;
  }

LABEL_100:
  v21 = 1;
LABEL_101:
  if ((v66 & 7) != 0)
  {
    atomic_fetch_add_explicit((v66 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v64);
  if (v63)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v63);
  }

LABEL_105:
  v40 = *MEMORY[0x277D85DE8];
  return v21;
}

void sub_247665D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](&a37);
  std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](&a41);
  std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](v41 - 224);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(&a24);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(&a29);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(&a33);
  _Unwind_Resume(a1);
}

CFStringRef anonymous namespace::ArbitraryComponentStructDirtyPrimDescriptor::description@<X0>(CFStringRef *a1@<X8>)
{
  *a1 = 0;
  result = CFStringCreateWithCString(0, "ArbitraryComponentStructDirtyPrimDescriptor", 0x8000100u);
  *a1 = result;
  return result;
}

void std::__shared_ptr_pointer<anonymous namespace::ArbitraryComponentStructDirtyPrimDescriptor *,std::shared_ptr<anonymous namespace::ArbitraryComponentStructDirtyPrimDescriptor>::__shared_ptr_default_delete<anonymous namespace::ArbitraryComponentStructDirtyPrimDescriptor,anonymous namespace::ArbitraryComponentStructDirtyPrimDescriptor>,std::allocator<anonymous namespace::ArbitraryComponentStructDirtyPrimDescriptor>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

uint64_t std::__shared_ptr_pointer<anonymous namespace::ArbitraryComponentStructDirtyPrimDescriptor *,std::shared_ptr<anonymous namespace::ArbitraryComponentStructDirtyPrimDescriptor>::__shared_ptr_default_delete<anonymous namespace::ArbitraryComponentStructDirtyPrimDescriptor,anonymous namespace::ArbitraryComponentStructDirtyPrimDescriptor>,std::allocator<anonymous namespace::ArbitraryComponentStructDirtyPrimDescriptor>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<anonymous namespace::ArbitraryComponentStructDirtyPrimDescriptor *,std::shared_ptr<anonymous namespace::ArbitraryComponentStructDirtyPrimDescriptor>::__shared_ptr_default_delete<anonymous namespace::ArbitraryComponentStructDirtyPrimDescriptor,anonymous namespace::ArbitraryComponentStructDirtyPrimDescriptor>,std::allocator<anonymous namespace::ArbitraryComponentStructDirtyPrimDescriptor>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<realityio::ArbitraryComponentStructBuilder::ArbitraryComponentStructBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0,std::allocator<realityio::ArbitraryComponentStructBuilder::ArbitraryComponentStructBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0>,std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2476664E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::ArbitraryComponentStructBuilder::ArbitraryComponentStructBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1,std::allocator<realityio::ArbitraryComponentStructBuilder::ArbitraryComponentStructBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1>,std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<pxrInternal__aapl__pxrReserved__::SdfPath>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2859583D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::InputOutputWrapperObject<std::shared_ptr<pxrInternal__aapl__pxrReserved__::SdfPath>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285958420;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::InputOutputWrapperObject<std::shared_ptr<pxrInternal__aapl__pxrReserved__::SdfPath>>>::__on_zero_shared(uint64_t a1)
{
  *(a1 + 24) = &unk_285958470;
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t realityio::InputOutputWrapperObject<std::shared_ptr<pxrInternal__aapl__pxrReserved__::SdfPath>>::getRawValue(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  return v2;
}

void realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationAggregationBuilder(realityio::SkeletalAnimationAggregationBuilder *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v8[4] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v6, "SkeletalAnimationAggregationBuilder");
  std::string::basic_string[abi:ne200100]<0>(&__p, realityio::kSkeletalAnimationAggregationBuilderIdentifier);
  realityio::generateSkeletalMeshDirtyStageSubscription(&v4);
  v8[0] = &unk_285958518;
  v8[3] = v8;
  v7[0] = &unk_2859586B8;
  v7[3] = v7;
  realityio::DynamicBuilder::DynamicBuilder(this, a2);
}

void sub_24766694C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
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

uint64_t realityio::SkeletalAnimationAggregationBuilder::createSkeletalAnimationAssetsAndAppendToArrayHelper(uint64_t result, uint64_t a2, void *a3, pxrInternal__aapl__pxrReserved__::SdfPath *a4, uint64_t a5, void *a6, uint64_t a7)
{
  v7 = a3 + 12;
  v8 = a3[12];
  if (v8)
  {
    v13 = result;
    v14 = a3 + 12;
    do
    {
      result = pxrInternal__aapl__pxrReserved__::SdfPath::operator<((v8 + 28), a4);
      if (result)
      {
        v15 = 1;
      }

      else
      {
        v15 = 0;
      }

      if (!result)
      {
        v14 = v8;
      }

      v8 = v8[v15];
    }

    while (v8);
    if (v14 != v7)
    {
      result = pxrInternal__aapl__pxrReserved__::SdfPath::operator<(a4, (v14 + 28));
      if ((result & 1) == 0)
      {
        v16 = *(v14 + 9);
        if (v16 != -1)
        {
          v17 = *(*a3 + 8);
          SkeletonAtIndex = REMeshAssetGetSkeletonAtIndex();
          v19 = a5;
          TimelineDefinitionRef = realityio::SkeletalAnimationAssetBuilder::SkeletalAnimationAssetDataT::createTimelineDefinitionRef(a5, v16, SkeletonAtIndex);
          if (TimelineDefinitionRef)
          {
            ServiceLocator = REEngineGetServiceLocator();
            MEMORY[0x24C1A4230](ServiceLocator);
            TimelineAsset = RETimelineDefinitionCreateTimelineAsset();
            if (TimelineAsset)
            {
              String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(a4);
              v22 = String;
              if (*(String + 23) >= 0)
              {
                v23 = *(String + 23);
              }

              else
              {
                v23 = *(String + 8);
              }

              std::string::basic_string[abi:ne200100](__p, v23 + 23);
              if (v46 >= 0)
              {
                v24 = __p;
              }

              else
              {
                v24 = __p[0];
              }

              if (v23)
              {
                if (v22[23] >= 0)
                {
                  v25 = v22;
                }

                else
                {
                  v25 = *v22;
                }

                memmove(v24, v25, v23);
              }

              strcpy(v24 + v23, "_skeletalAnimationAsset");
              v44 = TimelineAsset;
              if (TimelineAsset)
              {
                RERetain();
              }

              if (v46 >= 0)
              {
                v26 = __p;
              }

              else
              {
                v26 = __p[0];
              }

              realityio::Builder::addAsset(v13, &v44, v26);
              v27 = a7;
              realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v44);
              v28 = TimelineAsset;
              v43 = TimelineAsset;
              if (TimelineAsset)
              {
                RERetain();
              }

              v29 = a6[1];
              if (v29 >= a6[2])
              {
                v30 = std::vector<realityio::WrappedRERef<REAsset *>>::__emplace_back_slow_path<realityio::WrappedRERef<REAsset *>>(a6, &v43);
              }

              else
              {
                *v29 = v28;
                v30 = (v29 + 1);
                v43 = 0;
              }

              a6[1] = v30;
              realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v43);
              v32 = *(a7 + 8);
              v31 = *(v27 + 16);
              if (v32 >= v31)
              {
                v34 = (v32 - *v27) >> 3;
                if ((v34 + 1) >> 61)
                {
                  std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
                }

                v35 = v31 - *v27;
                v36 = v35 >> 2;
                if (v35 >> 2 <= (v34 + 1))
                {
                  v36 = v34 + 1;
                }

                if (v35 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v37 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v37 = v36;
                }

                if (v37)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<realityio::TransformAnimationAggregationBuilder::TransformAnimationSceneDataT const*>>(v37);
                }

                v38 = (8 * v34);
                *v38 = v19;
                v33 = 8 * v34 + 8;
                v39 = *(v27 + 8) - *v27;
                v40 = v38 - v39;
                memcpy(v38 - v39, *v27, v39);
                v41 = *v27;
                *v27 = v40;
                *(v27 + 8) = v33;
                *(v27 + 16) = 0;
                if (v41)
                {
                  operator delete(v41);
                }
              }

              else
              {
                *v32 = v19;
                v33 = (v32 + 1);
              }

              *(v27 + 8) = v33;
              if (v46 < 0)
              {
                operator delete(__p[0]);
              }
            }

            realityio::WrappedRERef<REAsset *>::~WrappedRERef(&TimelineAsset);
          }

          return realityio::WrappedRERef<RETimelineDefinition *>::~WrappedRERef(&TimelineDefinitionRef);
        }
      }
    }
  }

  return result;
}

void sub_247666C78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, char a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21)
{
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&a10);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&a20);
  realityio::WrappedRERef<RETimelineDefinition *>::~WrappedRERef(&a21);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::SdfPath *pxrInternal__aapl__pxrReserved__::SdfPath::SdfPath(pxrInternal__aapl__pxrReserved__::SdfPath *this)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  return this;
}

uint64_t realityio::SkeletalAnimationAggregationBuilder::kOutputName(realityio::SkeletalAnimationAggregationBuilder *this)
{
  {
    operator new();
  }

  return realityio::SkeletalAnimationAggregationBuilder::kOutputName(void)::kOutputName;
}

void sub_247666D98(_Unwind_Exception *a1)
{
  MEMORY[0x24C1A91B0](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

uint64_t realityio::SkeletalAnimationAggregationBuilder::kOutputBlendShapeName(realityio::SkeletalAnimationAggregationBuilder *this)
{
  {
    operator new();
  }

  return realityio::SkeletalAnimationAggregationBuilder::kOutputBlendShapeName(void)::kOutputName;
}

void sub_247666E50(_Unwind_Exception *a1)
{
  MEMORY[0x24C1A91B0](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

uint64_t realityio::SkeletalAnimationAggregationBuilder::run(realityio::SkeletalAnimationAggregationBuilder *this, realityio::Inputs *a2)
{
  v137 = *MEMORY[0x277D85DE8];
  v119 = a2;
  v4 = (a2 + 32);
  v5 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*a2 + 8));
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v115, v5, v4);
  v6 = *a2;
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v115, &v113);
  v7 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(v6 + 64, &v113);
  v8 = v6 + 72 != v7 && *(*(v6 + 40) + 104 * *(v7 + 40) + 24) == v113;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  v9 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v113);
  if (!v8)
  {
    goto LABEL_142;
  }

  v10 = v119;
  v11 = *(*(*(v119 + 5) + 16) + 16);
  v12 = realityio::EntityBuilder::kOutputName(v9);
  realityio::Inputs::_getValue<realityio::WrappedRERef<REEntity *>>(v10, v12, &v113);
  if (v113 != 1 || !v114)
  {
    v39 = v119;
    v40 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*v119 + 8));
    pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(buf, v40, (v39 + 32));
    PrimPath = pxrInternal__aapl__pxrReserved__::UsdObject::GetPrimPath(buf);
    if ((v136 & 7) != 0)
    {
      atomic_fetch_add_explicit((v136 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v135);
    v42 = *&v134[4];
    if (*&v134[4])
    {
      v42 = pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*&v134[4]);
    }

    v43 = *(realityio::logObjects(v42) + 24);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(PrimPath);
      *buf = 136315138;
      *v134 = Text;
      _os_log_error_impl(&dword_247485000, v43, OS_LOG_TYPE_ERROR, "Stopping operation to set skeletal components because the entity does not exist at path (%s).\n", buf, 0xCu);
    }

    goto LABEL_141;
  }

  v112 = v114;
  v14 = v119;
  v15 = realityio::MeshAssetBuilder::kOutputName(v13);
  realityio::Inputs::_getValue<std::shared_ptr<realityio::MeshAssetBuilder::MeshAssetDataT>>(v14, v15, buf);
  if (buf[0] != 1)
  {
    goto LABEL_140;
  }

  v16 = *&v134[4];
  if (!*&v134[4])
  {
    goto LABEL_140;
  }

  v111 = *(**&v134[4] + 8);
  if (v111)
  {
    RERetain();
  }

  v110 = 0;
  v17 = *(v119 + 6);
  v129 = &unk_285958738;
  *&v130 = &v112;
  *v131 = &v129;
  (*(*v17 + 16))(v17, &v129);
  v18 = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](&v129);
  if (!*(v16 + 104))
  {
    v67 = v119;
    v68 = realityio::SkeletalAnimationAssetBuilder::kOutputBlendShapeName(v18);
    *&v122.__r_.__value_.__l.__data_ = 0uLL;
    v69 = *(v67 + 3);
    if (v69)
    {
      v122.__r_.__value_.__l.__size_ = std::__shared_weak_count::lock(v69);
      if (v122.__r_.__value_.__l.__size_)
      {
        v122.__r_.__value_.__r.__words[0] = *(v67 + 2);
      }
    }

    MEMORY[0x24C1A5E00](&v122.__r_.__value_.__r.__words[2], v68);
    v70 = std::__hash_table<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::__unordered_map_hasher<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,std::equal_to<realityio::BuilderAndIOName>,true>,std::__unordered_map_equal<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::equal_to<realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>>>::__equal_range_multi<realityio::BuilderAndIOName>(*(v67 + 1), &v122);
    v71 = v70;
    v73 = v72;
    if (v70 == v72)
    {
      std::operator+<char>();
      v74 = std::string::append(&v120, ") at prim path (");
      v75 = *&v74->__r_.__value_.__l.__data_;
      v121.__r_.__value_.__r.__words[2] = v74->__r_.__value_.__r.__words[2];
      *&v121.__r_.__value_.__l.__data_ = v75;
      v74->__r_.__value_.__l.__size_ = 0;
      v74->__r_.__value_.__r.__words[2] = 0;
      v74->__r_.__value_.__r.__words[0] = 0;
      String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((v67 + 32));
      v77 = *(String + 23);
      if (v77 >= 0)
      {
        v78 = String;
      }

      else
      {
        v78 = *String;
      }

      if (v77 >= 0)
      {
        v79 = *(String + 23);
      }

      else
      {
        v79 = *(String + 8);
      }

      v80 = std::string::append(&v121, v78, v79);
      v81 = *&v80->__r_.__value_.__l.__data_;
      v123.__r_.__value_.__r.__words[2] = v80->__r_.__value_.__r.__words[2];
      *&v123.__r_.__value_.__l.__data_ = v81;
      v80->__r_.__value_.__l.__size_ = 0;
      v80->__r_.__value_.__r.__words[2] = 0;
      v80->__r_.__value_.__r.__words[0] = 0;
      v82 = std::string::append(&v123, ")");
      v83 = *&v82->__r_.__value_.__l.__data_;
      v126 = v82->__r_.__value_.__r.__words[2];
      *__p = v83;
      v82->__r_.__value_.__l.__size_ = 0;
      v82->__r_.__value_.__r.__words[2] = 0;
      v82->__r_.__value_.__r.__words[0] = 0;
      realityio::DetailedError::DetailedError(&v127, 204, &realityio::FoundationErrorCategory(void)::instance, __p);
      v130 = v127;
      *v131 = *&v128.__r_.__value_.__l.__data_;
      *&v131[15] = *(&v128.__r_.__value_.__r.__words[1] + 7);
      v84 = HIBYTE(v128.__r_.__value_.__r.__words[2]);
      memset(&v128, 0, sizeof(v128));
      LOBYTE(v129) = 0;
      v132 = v84;
      if (SHIBYTE(v126) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v123.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v121.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v120.__r_.__value_.__l.__data_);
      }

      goto LABEL_127;
    }

    v103 = v16;
    v85 = 0;
    while (1)
    {
      v86 = *(v71 + 5);
      v87 = *(v86 + 16);
      v88 = *(v86 + 24);
      if (v88)
      {
        atomic_fetch_add_explicit(&v88->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v89 = ((*(v71 + 7) & 0xFFFFFFFFFFFFFFF8) != 0 ? (*(v71 + 7) & 0xFFFFFFFFFFFFFFF8) + 16 : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v70));
      std::mutex::lock(v87 + 1);
      v90 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(&v87->__m_.__opaque[32], v89);
      v91 = v90;
      v92 = &v87->__m_.__opaque[40];
      if (&v87->__m_.__opaque[40] == v90)
      {
        break;
      }

      v93 = *(*(v90 + 56) + 8);
      std::mutex::unlock(v87 + 1);
      if (v88)
      {
        goto LABEL_107;
      }

LABEL_108:
      if (v92 == v91)
      {
        if ((v107 & 0x80) != 0)
        {
          operator delete(v16);
        }
      }

      else
      {
        v97 = v85;
        v98 = v85 >> 3;
        if (((v85 >> 3) + 1) >> 61)
        {
          std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
        }

        if (v85 >> 3 != -1)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<realityio::TransformAnimationAggregationBuilder::TransformAnimationSceneDataT const*>>((v85 >> 3) + 1);
        }

        *(8 * v98) = v93;
        v85 = 8 * v98 + 8;
        v70 = memcpy(0, 0, v97);
      }

      v71 = *v71;
      if (v71 == v73)
      {
        v127 = 0uLL;
        v128.__r_.__value_.__r.__words[0] = 0;
        std::vector<realityio::SkeletalAnimationAssetBuilder::BlendShapeAnimationAssetDataT const*>::__init_with_size[abi:ne200100]<realityio::SkeletalAnimationAssetBuilder::BlendShapeAnimationAssetDataT const**,realityio::SkeletalAnimationAssetBuilder::BlendShapeAnimationAssetDataT const**>(&v127, 0, v85, v85 >> 3);
        LOBYTE(v129) = 1;
        v130 = v127;
        *v131 = v128.__r_.__value_.__r.__words[0];
        v16 = v103;
LABEL_127:
        if ((v122.__r_.__value_.__s.__data_[16] & 7) != 0)
        {
          atomic_fetch_add_explicit((v122.__r_.__value_.__r.__words[2] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (v122.__r_.__value_.__l.__size_)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v122.__r_.__value_.__l.__size_);
        }

        if (v129 == 1 && *(v16 + 192) == 1)
        {
          memset(&v122, 0, sizeof(v122));
          std::vector<realityio::SkeletalAnimationAssetBuilder::BlendShapeAnimationAssetDataT const*>::__init_with_size[abi:ne200100]<realityio::SkeletalAnimationAssetBuilder::BlendShapeAnimationAssetDataT const**,realityio::SkeletalAnimationAssetBuilder::BlendShapeAnimationAssetDataT const**>(&v122, v130, *(&v130 + 1), (*(&v130 + 1) - v130) >> 3);
          std::sort[abi:ne200100]<std::__wrap_iter<realityio::SkeletalAnimationAssetBuilder::BlendShapeAnimationAssetDataT const**>,realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_6>(v122.__r_.__value_.__r.__words[0], v122.__r_.__value_.__l.__size_);
          memset(&v121, 0, sizeof(v121));
          memset(&v120, 0, sizeof(v120));
          pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
          v128.__r_.__value_.__l.__size_ = 0;
          *&v127 = MEMORY[0x277D86780] + 16;
          pxrInternal__aapl__pxrReserved__::UsdPrim::UsdPrim(__p);
          if (*(&v127 + 1) && (*(*(&v127 + 1) + 57) & 8) == 0 && (*(v127 + 32))(&v127))
          {
            pxrInternal__aapl__pxrReserved__::UsdSkelBindingAPI::GetAnimationSource(&v127, __p);
          }

          v100 = *(v119 + 6);
          v124 = 0;
          operator new();
        }

        realityio::Result<std::vector<realityio::TransformAnimationAggregationBuilder::TransformAnimationSceneDataT const*>,realityio::DetailedError>::~Result(&v129);
        std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SkeletalAnimationAssetBuilder::BlendShapeAnimationAssetDataT const*>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SkeletalAnimationAssetBuilder::BlendShapeAnimationAssetDataT const*>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SkeletalAnimationAssetBuilder::BlendShapeAnimationAssetDataT const*>>>::destroy(0);
        goto LABEL_139;
      }
    }

    std::operator+<char>();
    v94 = std::string::append(&v123, " does not exist in the builder outputs");
    v95 = *&v94->__r_.__value_.__l.__data_;
    v126 = v94->__r_.__value_.__r.__words[2];
    *__p = v95;
    v94->__r_.__value_.__l.__size_ = 0;
    v94->__r_.__value_.__r.__words[2] = 0;
    v94->__r_.__value_.__r.__words[0] = 0;
    realityio::DetailedError::DetailedError(&v127, 207, &realityio::FoundationErrorCategory(void)::instance, __p);
    v105 = v127;
    size = v128.__r_.__value_.__l.__size_;
    v16 = v128.__r_.__value_.__r.__words[0];
    v107 = SHIBYTE(v128.__r_.__value_.__r.__words[2]);
    memset(&v128, 0, sizeof(v128));
    if (SHIBYTE(v126) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v123.__r_.__value_.__l.__data_);
    }

    std::mutex::unlock(v87 + 1);
    v127 = v105;
    if (v107 < 0)
    {
      std::string::__init_copy_ctor_external(&v128, v16, size);
      v93 = v127;
      v99 = v128.__r_.__value_.__r.__words[0];
      LOBYTE(v107) = *(&v128.__r_.__value_.__s + 23);
      operator delete(v16);
      v16 = v99;
      if (!v88)
      {
        goto LABEL_108;
      }
    }

    else
    {
      v93 = v105;
      if (!v88)
      {
        goto LABEL_108;
      }
    }

LABEL_107:
    std::__shared_weak_count::__release_shared[abi:ne200100](v88);
    goto LABEL_108;
  }

  realityio::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v109, 2030, this);
  v19 = *(v119 + 6);
  v129 = &unk_285958838;
  *&v130 = &v112;
  *(&v130 + 1) = this;
  *v131 = &v129;
  (*(*v19 + 16))(v19, &v129);
  v20 = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](&v129);
  v21 = v119;
  v22 = realityio::SkeletonPoseDefinitionBuilder::kOutputName(v20);
  *&v122.__r_.__value_.__l.__data_ = 0uLL;
  v23 = *(v21 + 24);
  if (v23)
  {
    v122.__r_.__value_.__l.__size_ = std::__shared_weak_count::lock(v23);
    if (v122.__r_.__value_.__l.__size_)
    {
      v122.__r_.__value_.__r.__words[0] = *(v21 + 16);
    }
  }

  MEMORY[0x24C1A5E00](&v122.__r_.__value_.__r.__words[2], v22);
  v24 = std::__hash_table<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::__unordered_map_hasher<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,std::equal_to<realityio::BuilderAndIOName>,true>,std::__unordered_map_equal<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::equal_to<realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>>>::__equal_range_multi<realityio::BuilderAndIOName>(*(v21 + 8), &v122);
  v25 = v24;
  v27 = v26;
  if (v24 == v26)
  {
    std::operator+<char>();
    v28 = std::string::append(&v120, ") at prim path (");
    v29 = *&v28->__r_.__value_.__l.__data_;
    v121.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
    *&v121.__r_.__value_.__l.__data_ = v29;
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    v30 = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((v21 + 32));
    v31 = *(v30 + 23);
    if (v31 >= 0)
    {
      v32 = v30;
    }

    else
    {
      v32 = *v30;
    }

    if (v31 >= 0)
    {
      v33 = *(v30 + 23);
    }

    else
    {
      v33 = *(v30 + 8);
    }

    v34 = std::string::append(&v121, v32, v33);
    v35 = *&v34->__r_.__value_.__l.__data_;
    v123.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
    *&v123.__r_.__value_.__l.__data_ = v35;
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    v36 = std::string::append(&v123, ")");
    v37 = *&v36->__r_.__value_.__l.__data_;
    v126 = v36->__r_.__value_.__r.__words[2];
    *__p = v37;
    v36->__r_.__value_.__l.__size_ = 0;
    v36->__r_.__value_.__r.__words[2] = 0;
    v36->__r_.__value_.__r.__words[0] = 0;
    realityio::DetailedError::DetailedError(&v127, 204, &realityio::FoundationErrorCategory(void)::instance, __p);
    v130 = v127;
    *v131 = *&v128.__r_.__value_.__l.__data_;
    *&v131[15] = *(&v128.__r_.__value_.__r.__words[1] + 7);
    v38 = HIBYTE(v128.__r_.__value_.__r.__words[2]);
    memset(&v128, 0, sizeof(v128));
    LOBYTE(v129) = 0;
    v132 = v38;
    if (SHIBYTE(v126) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v123.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v121.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v120.__r_.__value_.__l.__data_);
    }

    goto LABEL_73;
  }

  v45 = 0;
  v46 = 0;
  do
  {
    v108 = v45;
    v47 = v27;
    v48 = *(v25 + 5);
    v49 = *(v48 + 16);
    v50 = *(v48 + 24);
    if (v50)
    {
      atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if ((*(v25 + 7) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((*(v25 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v24);
    }

    std::mutex::lock(v49 + 1);
    v52 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(&v49->__m_.__opaque[32], EmptyString);
    v53 = v52;
    v54 = &v49->__m_.__opaque[40];
    if (&v49->__m_.__opaque[40] != v52)
    {
      v55 = *(*(v52 + 56) + 8);
      std::mutex::unlock(v49 + 1);
      if (!v50)
      {
        goto LABEL_46;
      }

LABEL_45:
      std::__shared_weak_count::__release_shared[abi:ne200100](v50);
      goto LABEL_46;
    }

    std::operator+<char>();
    v56 = std::string::append(&v123, " does not exist in the builder outputs");
    v57 = *&v56->__r_.__value_.__l.__data_;
    v126 = v56->__r_.__value_.__r.__words[2];
    *__p = v57;
    v56->__r_.__value_.__l.__size_ = 0;
    v56->__r_.__value_.__r.__words[2] = 0;
    v56->__r_.__value_.__r.__words[0] = 0;
    realityio::DetailedError::DetailedError(&v127, 207, &realityio::FoundationErrorCategory(void)::instance, __p);
    v104 = v127;
    v58 = v128.__r_.__value_.__l.__size_;
    v21 = v128.__r_.__value_.__r.__words[0];
    __src = SHIBYTE(v128.__r_.__value_.__r.__words[2]);
    memset(&v128, 0, sizeof(v128));
    if (SHIBYTE(v126) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v123.__r_.__value_.__l.__data_);
    }

    std::mutex::unlock(v49 + 1);
    v127 = v104;
    if (__src < 0)
    {
      std::string::__init_copy_ctor_external(&v128, v21, v58);
      v55 = v127;
      v63 = v128.__r_.__value_.__r.__words[0];
      LOBYTE(__src) = *(&v128.__r_.__value_.__s + 23);
      operator delete(v21);
      v21 = v63;
      if (v50)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v55 = v104;
      if (v50)
      {
        goto LABEL_45;
      }
    }

LABEL_46:
    if (v54 == v53)
    {
      v45 = v108;
      v27 = v47;
      if ((__src & 0x80) != 0)
      {
        operator delete(v21);
      }
    }

    else
    {
      v27 = v47;
      v59 = &v46[-v108];
      v60 = &v46[-v108] >> 3;
      v61 = v60 + 1;
      if ((v60 + 1) >> 61)
      {
        std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
      }

      if (-v108 >> 2 > v61)
      {
        v61 = -v108 >> 2;
      }

      if (-v108 >= 0x7FFFFFFFFFFFFFF8)
      {
        v62 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v62 = v61;
      }

      if (v62)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<realityio::TransformAnimationAggregationBuilder::TransformAnimationSceneDataT const*>>(v62);
      }

      v64 = (8 * v60);
      *v64 = v55;
      v46 = (v64 + 1);
      v24 = memcpy(0, v108, v59);
      v45 = 0;
    }

    v25 = *v25;
  }

  while (v25 != v27);
  v65 = v46 - v45;
  if (v46 != v45)
  {
    if (!((v65 >> 3) >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<realityio::TransformAnimationAggregationBuilder::TransformAnimationSceneDataT const*>>(v65 >> 3);
    }

    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
  }

  LOBYTE(v129) = 1;
  v130 = 0uLL;
  *v131 = 0;
LABEL_73:
  if ((v122.__r_.__value_.__s.__data_[16] & 7) != 0)
  {
    atomic_fetch_add_explicit((v122.__r_.__value_.__r.__words[2] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v122.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v122.__r_.__value_.__l.__size_);
  }

  if (v129 == 1 && v130 != *(&v130 + 1))
  {
    memset(&v121, 0, sizeof(v121));
    memset(&v120, 0, sizeof(v120));
    v66 = *(v119 + 6);
    v128.__r_.__value_.__l.__size_ = 0;
    operator new();
  }

  realityio::Result<std::vector<realityio::TransformAnimationAggregationBuilder::TransformAnimationSceneDataT const*>,realityio::DetailedError>::~Result(&v129);
  realityio::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v109);
LABEL_139:
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v110);
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v111);
LABEL_140:
  realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(buf);
LABEL_141:
  realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(&v113);
LABEL_142:
  if ((v118 & 7) != 0)
  {
    atomic_fetch_add_explicit((v118 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v117);
  result = v116;
  if (v116)
  {
    result = pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v116);
  }

  v102 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24766848C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, void *__p, uint64_t a61, int a62, __int16 a63)
{
  if ((a57 & 1) == 0 && a65 < 0)
  {
    operator delete(__p);
  }

  if ((a66 & 1) == 0 && a72 < 0)
  {
    operator delete(a69);
  }

  realityio::Result<std::vector<realityio::TransformAnimationAggregationBuilder::TransformAnimationSceneDataT const*>,realityio::DetailedError>::~Result(v72 - 256);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SkeletalAnimationAssetBuilder::SkeletalAnimationAssetDataT const*>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SkeletalAnimationAssetBuilder::SkeletalAnimationAssetDataT const*>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SkeletalAnimationAssetBuilder::SkeletalAnimationAssetDataT const*>>>::destroy(a25);
  std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy(&a27, a28);
  if (a46)
  {
    a47 = a46;
    operator delete(a46);
  }

  *(v72 - 256) = &a49;
  std::vector<realityio::WrappedRERef<REAsset *>>::__destroy_vector::operator()[abi:ne200100]((v72 - 256));
  realityio::Result<std::vector<realityio::TransformAnimationAggregationBuilder::TransformAnimationSceneDataT const*>,realityio::DetailedError>::~Result(v72 - 208);
  realityio::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(&a30);
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&a32);
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&a33);
  realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(v72 - 160);
  realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(&a35);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(&a41);
  _Unwind_Resume(a1);
}

void realityio::Inputs::getAccumulatedValues<realityio::SkeletalAnimationAssetBuilder::SkeletalAnimationAssetDataT const*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42[2] = *MEMORY[0x277D85DE8];
  v35 = 0;
  v36 = 0;
  v7 = *(a2 + 24);
  if (v7)
  {
    v36 = std::__shared_weak_count::lock(v7);
    if (v36)
    {
      v35 = *(a2 + 16);
    }
  }

  MEMORY[0x24C1A5E00](&v37, a3);
  v8 = std::__hash_table<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::__unordered_map_hasher<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,std::equal_to<realityio::BuilderAndIOName>,true>,std::__unordered_map_equal<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::equal_to<realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>>>::__equal_range_multi<realityio::BuilderAndIOName>(*(a2 + 8), &v35);
  v9 = v8;
  v11 = v10;
  v12 = v40;
  if (v8 == v10)
  {
    std::operator+<char>();
    v13 = std::string::append(&v32, ") at prim path (");
    v14 = *&v13->__r_.__value_.__l.__data_;
    v33.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
    *&v33.__r_.__value_.__l.__data_ = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((a2 + 32));
    v16 = *(String + 23);
    if (v16 >= 0)
    {
      v17 = String;
    }

    else
    {
      v17 = *String;
    }

    if (v16 >= 0)
    {
      v18 = *(String + 23);
    }

    else
    {
      v18 = *(String + 8);
    }

    v19 = std::string::append(&v33, v17, v18);
    v20 = *&v19->__r_.__value_.__l.__data_;
    v34.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
    *&v34.__r_.__value_.__l.__data_ = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    v21 = std::string::append(&v34, ")");
    v22 = *&v21->__r_.__value_.__l.__data_;
    v39.__r_.__value_.__r.__words[0] = v21->__r_.__value_.__r.__words[2];
    *__p = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    realityio::DetailedError::DetailedError(v40, 204, &realityio::FoundationErrorCategory(void)::instance, __p);
    *(a1 + 8) = *v40;
    v23 = *&v40[16];
    v42[0] = v41.__r_.__value_.__r.__words[0];
    *(v42 + 7) = *(v41.__r_.__value_.__r.__words + 7);
    v24 = v41.__r_.__value_.__s.__data_[15];
    *&v41.__r_.__value_.__l.__data_ = 0uLL;
    *&v40[16] = 0;
    *a1 = 0;
    *(a1 + 39) = *(v42 + 7);
    v25 = v42[0];
    *(a1 + 24) = v23;
    *(a1 + 32) = v25;
    *(a1 + 47) = v24;
    if (v39.__r_.__value_.__s.__data_[7] < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    do
    {
      v26 = *(v9 + 5);
      v28 = *(v26 + 16);
      v27 = *(v26 + 24);
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if ((*(v9 + 7) & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        EmptyString = ((*(v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v8);
      }

      realityio::Outputs::getRawValue<realityio::SkeletalAnimationAssetBuilder::SkeletalAnimationAssetDataT const*>(v28, EmptyString, v40);
      v30 = v40[0];
      if ((v40[0] & 1) == 0)
      {
        *__p = *&v40[8];
        if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v39, v41.__r_.__value_.__l.__data_, v41.__r_.__value_.__l.__size_);
          v12 = v39.__r_.__value_.__r.__words[0];
          v3 = HIBYTE(v39.__r_.__value_.__r.__words[2]);
          if ((v40[0] & 1) == 0 && SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v41.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v39 = v41;
          v12 = v41.__r_.__value_.__r.__words[0];
          v3 = HIBYTE(v41.__r_.__value_.__r.__words[2]);
        }
      }

      if (v27)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v27);
      }

      if (v30)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<realityio::TransformAnimationAggregationBuilder::TransformAnimationSceneDataT const*>>(1uLL);
      }

      if (v3 < 0)
      {
        operator delete(v12);
      }

      v9 = *v9;
    }

    while (v9 != v11);
    memset(v40, 0, sizeof(v40));
    std::vector<realityio::SkeletalAnimationAssetBuilder::SkeletalAnimationAssetDataT const*>::__init_with_size[abi:ne200100]<realityio::SkeletalAnimationAssetBuilder::SkeletalAnimationAssetDataT const**,realityio::SkeletalAnimationAssetBuilder::SkeletalAnimationAssetDataT const**>(v40, 0, 0, 0);
    *a1 = 1;
    *(a1 + 8) = *v40;
    *(a1 + 24) = *&v40[16];
  }

  if ((v37 & 7) != 0)
  {
    atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  v31 = *MEMORY[0x277D85DE8];
}

void sub_247668D74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, std::__shared_weak_count *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (v46)
  {
    operator delete(v46);
  }

  if ((a31 & 7) != 0)
  {
    atomic_fetch_add_explicit((a31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  _Unwind_Resume(exception_object);
}

unint64_t std::sort[abi:ne200100]<std::__wrap_iter<realityio::SkeletalAnimationAssetBuilder::BlendShapeAnimationAssetDataT const**>,realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_6>(unint64_t a1, uint64_t *a2)
{
  v2 = 126 - 2 * __clz((a2 - a1) >> 3);
  if (a2 == a1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  return std::__introsort<std::_ClassicAlgPolicy,realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_6 &,realityio::SkeletalAnimationAssetBuilder::BlendShapeAnimationAssetDataT const**,false>(a1, a2, v3, 1);
}

uint64_t realityio::SkeletalAnimationAggregationBuilder::clear(realityio::SkeletalAnimationAggregationBuilder *this, realityio::Inputs *a2)
{
  v4 = *(this + 2);
  v3 = *(this + 3);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = realityio::SkeletalAnimationAggregationBuilder::kOutputName(this);
  realityio::Outputs::getRawValue<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>(v4, v5, v28);
  if (v28[0])
  {
    v6 = v29;
    if (*(&v29 + 1))
    {
      atomic_fetch_add_explicit((*(&v29 + 1) + 8), 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit((*(&v6 + 1) + 8), 1uLL, memory_order_relaxed);
      v22[0] = 1;
      v23 = v6;
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v6 + 1));
    }

    else
    {
      v22[0] = 1;
      v23 = v29;
    }
  }

  else
  {
    *v21 = v29;
    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v21[16], v30.__r_.__value_.__l.__data_, v30.__r_.__value_.__l.__size_);
    }

    else
    {
      *&v21[16] = v30;
    }

    v22[0] = 0;
    v23 = *v21;
    v24 = *&v21[16];
    v25 = *&v21[32];
  }

  v7 = realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(v28);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (v22[0] == 1)
  {
    v9 = *(this + 2);
    v8 = *(this + 3);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = realityio::SkeletalAnimationAggregationBuilder::kOutputName(v7);
    std::mutex::lock((v9 + 64));
    if (v9 + 48 != std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(v9 + 40, v10))
    {
      std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::__erase_unique<std::string>((v9 + 40), v10);
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__erase_unique<std::string>(v9, v10);
    std::mutex::unlock((v9 + 64));
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  v12 = *(this + 2);
  v11 = *(this + 3);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = realityio::SkeletalAnimationAggregationBuilder::kOutputBlendShapeName(v7);
  realityio::Outputs::getRawValue<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::BlendShapeAnimationSceneDataT>>(v12, v13, v28);
  v14 = v28[0];
  if (v28[0])
  {
    v15 = v29;
    if (*(&v29 + 1))
    {
      atomic_fetch_add_explicit((*(&v29 + 1) + 8), 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit((*(&v15 + 1) + 8), 1uLL, memory_order_relaxed);
      v21[0] = 1;
      *&v21[8] = v15;
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v15 + 1));
    }

    else
    {
      v21[0] = 1;
      *&v21[8] = v29;
      *&v21[16] = 0;
    }
  }

  else
  {
    v26 = v29;
    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v27, v30.__r_.__value_.__l.__data_, v30.__r_.__value_.__l.__size_);
    }

    else
    {
      v27 = v30;
    }

    v21[0] = 0;
    *&v21[8] = v26;
    *&v21[24] = v27;
  }

  v16 = realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(v28);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (v14)
  {
    v18 = *(this + 2);
    v17 = *(this + 3);
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v19 = realityio::SkeletalAnimationAggregationBuilder::kOutputBlendShapeName(v16);
    std::mutex::lock((v18 + 64));
    if (v18 + 48 != std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(v18 + 40, v19))
    {
      std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::__erase_unique<std::string>((v18 + 40), v19);
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__erase_unique<std::string>(v18, v19);
    std::mutex::unlock((v18 + 64));
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }
  }

  realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(v21);
  return realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(v22);
}

void sub_2476693A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(v8 - 96);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(va);
  _Unwind_Resume(a1);
}

void realityio::SkeletalAnimationAggregationBuilder::~SkeletalAnimationAggregationBuilder(realityio::SkeletalAnimationAggregationBuilder *this)
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

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,unsigned int>::~pair(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SkeletalAnimationAssetBuilder::SkeletalAnimationAssetDataT const*>::~pair(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

pxrInternal__aapl__pxrReserved__::UsdPrim *pxrInternal__aapl__pxrReserved__::UsdPrim::UsdPrim(pxrInternal__aapl__pxrReserved__::UsdPrim *this)
{
  *this = 1;
  *(this + 1) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  *(this + 3) = 0;
  return this;
}

void std::vector<realityio::SkeletalAnimationAssetBuilder::BlendShapeAnimationAssetDataT const*>::__init_with_size[abi:ne200100]<realityio::SkeletalAnimationAssetBuilder::BlendShapeAnimationAssetDataT const**,realityio::SkeletalAnimationAssetBuilder::BlendShapeAnimationAssetDataT const**>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<realityio::TransformAnimationAggregationBuilder::TransformAnimationSceneDataT const*>>(a4);
    }

    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
  }
}

void sub_2476696CC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_247669DE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v32);
  operator delete(v34);
  std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationAggregationBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0,std::allocator<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationAggregationBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0>,std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__shared_ptr_emplace<realityio::SkeletonPrimsOnPrimGeneratingEntityOnlyInputDescriptor>::__shared_ptr_emplace[abi:ne200100]<std::string const&,pxrInternal__aapl__pxrReserved__::TfToken &,realityio::InputDescriptor::Optionality,std::allocator<realityio::SkeletonPrimsOnPrimGeneratingEntityOnlyInputDescriptor>,0>(void *a1, uint64_t a2, uint64_t *a3, int *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285959058;
  std::allocator<realityio::SkeletonPrimsOnPrimGeneratingEntityOnlyInputDescriptor>::construct[abi:ne200100]<realityio::SkeletonPrimsOnPrimGeneratingEntityOnlyInputDescriptor,std::string const&,pxrInternal__aapl__pxrReserved__::TfToken &,realityio::InputDescriptor::Optionality>(&v6, a1 + 3, a2, a3, a4);
  return a1;
}

void std::__shared_ptr_emplace<realityio::SkeletonPrimsOnPrimGeneratingEntityOnlyInputDescriptor>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285959058;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::allocator<realityio::SkeletonPrimsOnPrimGeneratingEntityOnlyInputDescriptor>::construct[abi:ne200100]<realityio::SkeletonPrimsOnPrimGeneratingEntityOnlyInputDescriptor,std::string const&,pxrInternal__aapl__pxrReserved__::TfToken &,realityio::InputDescriptor::Optionality>(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, int *a5)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  realityio::SkeletonPrimsOnPrimGeneratingEntityOnlyInputDescriptor::SkeletonPrimsOnPrimGeneratingEntityOnlyInputDescriptor(a2, &__p, a4, *a5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_24766A1FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *realityio::SkeletonPrimsOnPrimGeneratingEntityOnlyInputDescriptor::SkeletonPrimsOnPrimGeneratingEntityOnlyInputDescriptor(void *a1, uint64_t a2, uint64_t *a3, int a4)
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

  *a1 = &unk_2859590A8;
  return a1;
}

void sub_24766A2C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void realityio::SkeletonPrimsOnPrimGeneratingEntityOnlyInputDescriptor::~SkeletonPrimsOnPrimGeneratingEntityOnlyInputDescriptor(realityio::SkeletonPrimsOnPrimGeneratingEntityOnlyInputDescriptor *this)
{
  realityio::InputDescriptor::~InputDescriptor(this);

  JUMPOUT(0x24C1A91B0);
}

void realityio::SkeletonPrimsOnPrimGeneratingEntityOnlyInputDescriptor::resolvedPrimPaths(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  v6 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(a2 + 48, a1);
  if (a2 + 56 != v6 && *(*(a2 + 24) + 104 * *(v6 + 40) + 24) == *a1)
  {
    v7 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(a2 + 48, a1);
    if (a2 + 56 != v7)
    {
      v8 = *(a2 + 24);
      if (v8)
      {
        v9 = (v8 + 104 * *(v7 + 40));
        v10 = v9[4];
        std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::__rehash<true>(a3, vcvtps_u32_f32(v9[9] / *(a3 + 32)));
        v11 = (v9 + 5);
        if (v10 != v11)
        {
          do
          {
            std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>(a3, v10 + 7);
            v12 = *(v10 + 1);
            if (v12)
            {
              do
              {
                v13 = v12;
                v12 = *v12;
              }

              while (v12);
            }

            else
            {
              do
              {
                v13 = *(v10 + 2);
                v14 = *v13 == v10;
                v10 = v13;
              }

              while (!v14);
            }

            v10 = v13;
          }

          while (v13 != v11);
        }
      }
    }
  }
}

void std::__shared_ptr_emplace<realityio::RelatedOrConnectedToMeshPrimsOnPrimGeneratingEntityOnlyInputDescriptor>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285958588;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void realityio::RelatedOrConnectedToMeshPrimsOnPrimGeneratingEntityOnlyInputDescriptor::~RelatedOrConnectedToMeshPrimsOnPrimGeneratingEntityOnlyInputDescriptor(realityio::RelatedOrConnectedToMeshPrimsOnPrimGeneratingEntityOnlyInputDescriptor *this)
{
  *this = &unk_2859585D8;
  v1 = *(this + 6);
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::InputDescriptor::~InputDescriptor(this);
}

{
  *this = &unk_2859585D8;
  v2 = *(this + 6);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::InputDescriptor::~InputDescriptor(this);

  JUMPOUT(0x24C1A91B0);
}

void realityio::RelatedOrConnectedToMeshPrimsOnPrimGeneratingEntityOnlyInputDescriptor::resolvedPrimPaths(uint64_t a1@<X0>, pxrInternal__aapl__pxrReserved__::UsdStage *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 1065353216;
  v10 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(a4 + 48, a3);
  if (a4 + 56 != v10 && *(*(a4 + 24) + 104 * *(v10 + 40) + 24) == *a3)
  {
    v11 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(a4 + 48, a3);
    if (a4 + 56 != v11)
    {
      v12 = *(a4 + 24);
      if (v12)
      {
        v13 = (v12 + 104 * *(v11 + 40));
        v14 = v13[7];
        std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::__rehash<true>(a5, vcvtps_u32_f32(v13[9] / *(a5 + 32)));
        v15 = v13 + 8;
        if (v14 != v13 + 8)
        {
          do
          {
            pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v29, a2, (v14 + 28));
            if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v29))
            {
              if (pxrInternal__aapl__pxrReserved__::UsdPrim::HasRelationship(&v29, (a1 + 48)))
              {
                pxrInternal__aapl__pxrReserved__::UsdPrim::GetRelationship(&v25, &v29, (a1 + 48));
                v23 = 0uLL;
                v24 = 0;
                pxrInternal__aapl__pxrReserved__::UsdRelationship::GetTargets();
                v16 = *(&v23 + 1);
                for (i = v23; i != v16; i += 2)
                {
                  std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>(a5, i);
                }

                v33 = &v23;
                std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v33);
                if ((v28 & 7) != 0)
                {
                  atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                }
              }

              else
              {
                pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&v25, &v29, (a1 + 48));
                v23 = 0uLL;
                v24 = 0;
                pxrInternal__aapl__pxrReserved__::UsdAttribute::GetConnections();
                v18 = *(&v23 + 1);
                for (j = v23; j != v18; j += 2)
                {
                  std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>(a5, j);
                }

                v33 = &v23;
                std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v33);
                if ((v28 & 7) != 0)
                {
                  atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                }
              }

              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v27);
              if (v26)
              {
                pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v26);
              }
            }

            if ((v32 & 7) != 0)
            {
              atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v31);
            if (v30)
            {
              pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v30);
            }

            v20 = v14[1];
            if (v20)
            {
              do
              {
                v21 = v20;
                v20 = *v20;
              }

              while (v20);
            }

            else
            {
              do
              {
                v21 = v14[2];
                v22 = *v21 == v14;
                v14 = v21;
              }

              while (!v22);
            }

            v14 = v21;
          }

          while (v21 != v15);
        }
      }
    }
  }
}

void std::__shared_ptr_emplace<realityio::AnimationPrimsConnectedToBoundSkeletonsOnPrimGeneratingEntityOnlyInputDescriptor>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285958618;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void realityio::AnimationPrimsConnectedToBoundSkeletonsOnPrimGeneratingEntityOnlyInputDescriptor::~AnimationPrimsConnectedToBoundSkeletonsOnPrimGeneratingEntityOnlyInputDescriptor(realityio::AnimationPrimsConnectedToBoundSkeletonsOnPrimGeneratingEntityOnlyInputDescriptor *this)
{
  realityio::InputDescriptor::~InputDescriptor(this);

  JUMPOUT(0x24C1A91B0);
}

void realityio::AnimationPrimsConnectedToBoundSkeletonsOnPrimGeneratingEntityOnlyInputDescriptor::resolvedPrimPaths(pxrInternal__aapl__pxrReserved__::UsdStage *a1@<X1>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 1065353216;
  v8 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(a3 + 48, a2);
  if (a3 + 56 != v8 && *(*(a3 + 24) + 104 * *(v8 + 40) + 24) == *a2)
  {
    v9 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(a3 + 48, a2);
    if (a3 + 56 != v9)
    {
      v10 = *(a3 + 24);
      if (v10)
      {
        v11 = (v10 + 104 * *(v9 + 40));
        v12 = v11[4];
        std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::__rehash<true>(a4, vcvtps_u32_f32(v11[9] / *(a4 + 32)));
        v13 = v11 + 5;
        if (v12 != v13)
        {
          do
          {
            pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v27, a1, (v12 + 28));
            MEMORY[0x24C1A4F20](&v22);
            pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
            v18 = MEMORY[0x277D86720] + 16;
            pxrInternal__aapl__pxrReserved__::UsdSkelCache::GetSkelQuery(&v24, &v22, &v18);
            MEMORY[0x24C1A53A0](&v18);
            if (v23)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v23);
            }

            v22 = *pxrInternal__aapl__pxrReserved__::UsdSkelSkeletonQuery::GetAnimQuery(&v24);
            pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v22);
            pxrInternal__aapl__pxrReserved__::UsdSkelAnimQuery::GetPrim(&v18, &v22);
            if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v18))
            {
              pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v18, &v17);
              std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>(a4, &v17);
              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v17);
            }

            if ((v21 & 7) != 0)
            {
              atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v20);
            if (v19)
            {
              pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v19);
            }

            pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdSkel_AnimQueryImpl>::~TfRefPtr(&v22);
            pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v26);
            pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdSkel_AnimQueryImpl>::~TfRefPtr(&v25);
            pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdSkel_SkelDefinition>::~TfRefPtr(&v24);
            if ((v30 & 7) != 0)
            {
              atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v29);
            if (v28)
            {
              pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v28);
            }

            v14 = v12[1];
            if (v14)
            {
              do
              {
                v15 = v14;
                v14 = *v14;
              }

              while (v14);
            }

            else
            {
              do
              {
                v15 = v12[2];
                v16 = *v15 == v12;
                v12 = v15;
              }

              while (!v16);
            }

            v12 = v15;
          }

          while (v15 != v13);
        }
      }
    }
  }
}

void sub_24766AEE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationAggregationBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1,std::allocator<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationAggregationBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1>,std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::vector<realityio::WrappedRERef<REAsset *>>::__emplace_back_slow_path<realityio::WrappedRERef<REAsset *>>(void *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  v6 = v5 + 1;
  if ((v5 + 1) >> 61)
  {
    std::vector<realityio::WrappedRERef<REAsset *>>::__throw_length_error[abi:ne200100]();
  }

  v8 = a1[2] - v3;
  if (v8 >> 2 > v6)
  {
    v6 = v8 >> 2;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    v6 = 0x1FFFFFFFFFFFFFFFLL;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<REComponentClass *>>(a1, v6);
  }

  v13 = 0;
  v14 = (8 * v5);
  *v14 = *a2;
  *a2 = 0;
  v15 = (8 * v5 + 8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<realityio::WrappedRERef<REAsset *>>,realityio::WrappedRERef<REAsset *>*>(a1, v3, v4, 0);
  v9 = *a1;
  *a1 = 0;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<realityio::WrappedRERef<REAsset *>>::~__split_buffer(&v13);
  return v12;
}

void sub_24766B08C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<realityio::WrappedRERef<REAsset *>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285958738;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v1 = **(a1 + 8);
  REAnimationLibraryComponentGetComponentType();
  v5[0] = &unk_2859587A8;
  v5[3] = v5;
  ComponentByClass = REEntityGetComponentByClass();
  if (ComponentByClass)
  {
    std::function<void ()(REComponent *)>::operator()(v5, ComponentByClass);
    RENetworkMarkComponentDirty();
  }

  result = std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](v5);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24766B1EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNKSt3__110__function6__funcIZZN9realityio35SkeletalAnimationAggregationBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E_NS_9allocatorIS8_EEFvP11REComponentEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZN9realityio35SkeletalAnimationAggregationBuilder3runEPNS_6InputsEENK3__0clEvEUlT_E_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_1,std::allocator<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_1>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285958838;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_1,std::allocator<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_1>,void ()(void)>::operator()(uint64_t a1)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16);
  v2 = **(a1 + 8);
  RESkeletalPoseComponentGetComponentType();
  v6[0] = &unk_2859588A8;
  v6[1] = v1;
  v6[3] = v6;
  v3 = REEntityGetOrAddComponentByClass();
  std::function<void ()(REComponent *)>::operator()(v6, v3);
  RENetworkMarkComponentDirty();
  result = std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24766B47C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_1,std::allocator<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_1>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_1::operator() const(void)::{lambda(REComponent *)#1},std::allocator<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_1::operator() const(void)::{lambda(REComponent *)#1}>,void ()(REComponent *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2859588A8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_1::operator() const(void)::{lambda(REComponent *)#1},std::allocator<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_1::operator() const(void)::{lambda(REComponent *)#1}>,void ()(REComponent *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SkeletalAnimationAssetBuilder::SkeletalAnimationAssetDataT const*>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SkeletalAnimationAssetBuilder::SkeletalAnimationAssetDataT const*>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SkeletalAnimationAssetBuilder::SkeletalAnimationAssetDataT const*>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SkeletalAnimationAssetBuilder::SkeletalAnimationAssetDataT const*>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SkeletalAnimationAssetBuilder::SkeletalAnimationAssetDataT const*>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SkeletalAnimationAssetBuilder::SkeletalAnimationAssetDataT const*>>>::destroy(*a1);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SkeletalAnimationAssetBuilder::SkeletalAnimationAssetDataT const*>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SkeletalAnimationAssetBuilder::SkeletalAnimationAssetDataT const*>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SkeletalAnimationAssetBuilder::SkeletalAnimationAssetDataT const*>>>::destroy(a1[1]);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a1 + 4));

    operator delete(a1);
  }
}

__n128 std::__function::__func<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_2,std::allocator<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_2>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285958938;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_2,std::allocator<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_2>,void ()(void)>::operator()(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  if (v2 != v3)
  {
    v4 = result;
    v5 = *(result + 16);
    do
    {
      v6 = *v2;
      v7 = *(*v2 + 8);
      if (v7)
      {
        result = realityio::SkeletalAnimationAggregationBuilder::createSkeletalAnimationAssetsAndAppendToArrayHelper(v5, *(*(*(**(v4 + 24) + 40) + 16) + 16), *(v4 + 32), (v6 + 16), v7, *(v4 + 40), *(v4 + 48));
      }

      else
      {
        result = std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>(*(v4 + 56), (v6 + 16));
      }

      ++v2;
    }

    while (v2 != v3);
  }

  return result;
}

uint64_t std::__function::__func<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_2,std::allocator<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_2>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::vector<realityio::SkeletalAnimationAssetBuilder::SkeletalAnimationAssetDataT const*>::__init_with_size[abi:ne200100]<realityio::SkeletalAnimationAssetBuilder::SkeletalAnimationAssetDataT const**,realityio::SkeletalAnimationAssetBuilder::SkeletalAnimationAssetDataT const**>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<realityio::TransformAnimationAggregationBuilder::TransformAnimationSceneDataT const*>>(a4);
    }

    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
  }
}

void sub_24766B860(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_3,std::allocator<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_3>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2859589B8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_3,std::allocator<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_3>,void ()(void)>::operator()(uint64_t result)
{
  v1 = *(result + 8);
  v4 = *v1;
  v2 = v1 + 1;
  v3 = v4;
  if (v4 != v2)
  {
    v5 = result;
    v6 = *(result + 32);
    do
    {
      v7 = *(v5 + 16);
      v8 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(v7 + 112, (v3 + 28));
      if (v7 + 120 == v8)
      {
        v20 = 0;
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
      }

      else
      {
        v9 = v8;
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v20, (v8 + 36));
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v20 + 1, (v9 + 40));
      }

      v10 = *(v5 + 24);
      v13 = *(v10 + 8);
      v11 = v10 + 8;
      v12 = v13;
      if (!v13)
      {
        goto LABEL_16;
      }

      v14 = v11;
      do
      {
        v15 = pxrInternal__aapl__pxrReserved__::SdfPath::operator<((v12 + 32), &v20);
        if (v15)
        {
          v16 = 8;
        }

        else
        {
          v16 = 0;
        }

        if (!v15)
        {
          v14 = v12;
        }

        v12 = *(v12 + v16);
      }

      while (v12);
      if (v14 == v11 || pxrInternal__aapl__pxrReserved__::SdfPath::operator<(&v20, (v14 + 32)))
      {
LABEL_16:
        v14 = v11;
      }

      if (*(v5 + 24) + 8 != v14)
      {
        realityio::SkeletalAnimationAggregationBuilder::createSkeletalAnimationAssetsAndAppendToArrayHelper(v6, *(*(*(**(v5 + 40) + 40) + 16) + 16), *(v5 + 16), (v3 + 28), *(v14 + 40), *(v5 + 48), *(v5 + 56));
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      result = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v20);
      v17 = v3[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v3[2];
          v19 = *v18 == v3;
          v3 = v18;
        }

        while (!v19);
      }

      v3 = v18;
    }

    while (v18 != v2);
  }

  return result;
}

void sub_24766BAE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_3,std::allocator<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_3>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_4,std::allocator<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_4>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285958A38;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_4,std::allocator<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_4>,void ()(void)>::operator()(uint64_t a1)
{
  v13[4] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v3 = **(a1 + 8);
  RERigComponentGetComponentType();
  v13[0] = &unk_285958AA8;
  v13[1] = v2;
  v13[3] = v13;
  v4 = REEntityGetOrAddComponentByClass();
  std::function<void ()(REComponent *)>::operator()(v13, v4);
  RENetworkMarkComponentDirty();
  std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](v13);
  v5 = **(a1 + 8);
  REMeshDeformationComponentGetComponentType();
  v12[0] = &unk_285958B28;
  v12[1] = v2;
  v12[3] = v12;
  v6 = REEntityGetOrAddComponentByClass();
  std::function<void ()(REComponent *)>::operator()(v12, v6);
  RENetworkMarkComponentDirty();
  std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](v12);
  v7 = **(a1 + 8);
  REAnimationComponentGetComponentType();
  v11[0] = &unk_285958BA8;
  v11[1] = v2;
  v11[3] = v11;
  v8 = REEntityGetOrAddComponentByClass();
  std::function<void ()(REComponent *)>::operator()(v11, v8);
  RENetworkMarkComponentDirty();
  result = std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](v11);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__function::__func<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_4,std::allocator<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_4>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_4::operator() const(void)::{lambda(REComponent *)#1},std::allocator<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_4::operator() const(void)::{lambda(REComponent *)#1}>,void ()(REComponent *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285958AA8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_4::operator() const(void)::{lambda(REComponent *)#1},std::allocator<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_4::operator() const(void)::{lambda(REComponent *)#1}>,void ()(REComponent *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_4::operator() const(void)::{lambda(REComponent *)#2},std::allocator<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_4::operator() const(void)::{lambda(REComponent *)#2}>,void ()(REComponent *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285958B28;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_4::operator() const(void)::{lambda(REComponent *)#2},std::allocator<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_4::operator() const(void)::{lambda(REComponent *)#2}>,void ()(REComponent *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_4::operator() const(void)::{lambda(REComponent *)#3},std::allocator<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_4::operator() const(void)::{lambda(REComponent *)#3}>,void ()(REComponent *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285958BA8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_4::operator() const(void)::{lambda(REComponent *)#3},std::allocator<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_4::operator() const(void)::{lambda(REComponent *)#3}>,void ()(REComponent *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  realityio::Builder::addComponent(*(a1 + 8), *a2);
  result = REAnimationComponentActiveAnimationCount();
  if (result)
  {

    return MEMORY[0x282153810](v2);
  }

  return result;
}

uint64_t std::__function::__func<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_4::operator() const(void)::{lambda(REComponent *)#3},std::allocator<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_4::operator() const(void)::{lambda(REComponent *)#3}>,void ()(REComponent *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_24766C1F8(_Unwind_Exception *a1)
{
  realityio::WrappedRERef<REEntity *>::~WrappedRERef(v2);
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285958C38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void *std::__shared_ptr_emplace<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    *(a1 + 72) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 40);
  std::vector<realityio::WrappedRERef<REAsset *>>::__destroy_vector::operator()[abi:ne200100](&v4);
  realityio::WrappedRERef<REAsset *>::~WrappedRERef((a1 + 32));
  return realityio::WrappedRERef<REEntity *>::~WrappedRERef((a1 + 24));
}

void std::__shared_ptr_emplace<realityio::InputOutputWrapperObject<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285958C88;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::InputOutputWrapperObject<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>>::__on_zero_shared(uint64_t a1)
{
  *(a1 + 24) = &unk_285958CD8;
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t realityio::InputOutputWrapperObject<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>::getRawValue(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  return v2;
}

__n128 std::__function::__func<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_5,std::allocator<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_5>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285958D08;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_5,std::allocator<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_5>,void ()(void)>::operator()(uint64_t a1)
{
  v20[4] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v3 = *(a1 + 8);
  v4 = **(a1 + 16);
  v5 = **(a1 + 24);
  AnimationLibraryAsset = REAnimationLibraryDefinitionCreateAnimationLibraryAsset();
  if (*v3)
  {
    RERelease();
  }

  *v3 = AnimationLibraryAsset;
  if (**(a1 + 8))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(*(a1 + 40), v20);
    String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(v20);
    v8 = String;
    if (*(String + 23) >= 0)
    {
      v9 = *(String + 23);
    }

    else
    {
      v9 = *(String + 8);
    }

    v10 = __p;
    std::string::basic_string[abi:ne200100](__p, v9 + 17);
    if (v19 < 0)
    {
      v10 = __p[0];
    }

    if (v9)
    {
      if (v8[23] >= 0)
      {
        v11 = v8;
      }

      else
      {
        v11 = *v8;
      }

      memmove(v10, v11, v9);
    }

    strcpy(v10 + v9, "_animationLibrary");
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v20);
    v17 = **(a1 + 8);
    if (v17)
    {
      RERetain();
    }

    if (v19 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    realityio::Builder::addAsset(v2, &v17, v12);
    realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v17);
    v13 = **(a1 + 56);
    REAnimationLibraryComponentGetComponentType();
    v14 = *(a1 + 8);
    v20[0] = &unk_285958D78;
    v20[1] = v2;
    v20[2] = v14;
    v20[3] = v20;
    v15 = REEntityGetOrAddComponentByClass();
    std::function<void ()(REComponent *)>::operator()(v20, v15);
    RENetworkMarkComponentDirty();
    std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](v20);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_24766C6B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&a10);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_5,std::allocator<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_5>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZZN9realityio35SkeletalAnimationAggregationBuilder3runEPNS2_6InputsEENK3__5clEvEUlT_E_NS_9allocatorIS8_EEFvP11REComponentEE7__cloneEPNS0_6__baseISD_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285958D78;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZZN9realityio35SkeletalAnimationAggregationBuilder3runEPNS2_6InputsEENK3__5clEvEUlT_E_NS_9allocatorIS8_EEFvP11REComponentEEclEOSC_(uint64_t a1, uint64_t *a2)
{
  realityio::Builder::addComponent(*(a1 + 8), *a2);
  v3 = **(a1 + 16);

  return REAnimationLibraryComponentAssignAnimationLibraryAsset();
}

uint64_t _ZNKSt3__110__function6__funcIZZN9realityio35SkeletalAnimationAggregationBuilder3runEPNS2_6InputsEENK3__5clEvEUlT_E_NS_9allocatorIS8_EEFvP11REComponentEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZN9realityio35SkeletalAnimationAggregationBuilder3runEPNS_6InputsEENK3__5clEvEUlT_E_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SkeletalAnimationAssetBuilder::BlendShapeAnimationAssetDataT const*>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SkeletalAnimationAssetBuilder::BlendShapeAnimationAssetDataT const*>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SkeletalAnimationAssetBuilder::BlendShapeAnimationAssetDataT const*>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SkeletalAnimationAssetBuilder::BlendShapeAnimationAssetDataT const*>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SkeletalAnimationAssetBuilder::BlendShapeAnimationAssetDataT const*>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SkeletalAnimationAssetBuilder::BlendShapeAnimationAssetDataT const*>>>::destroy(*a1);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SkeletalAnimationAssetBuilder::BlendShapeAnimationAssetDataT const*>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SkeletalAnimationAssetBuilder::BlendShapeAnimationAssetDataT const*>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SkeletalAnimationAssetBuilder::BlendShapeAnimationAssetDataT const*>>>::destroy(a1[1]);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a1 + 4));

    operator delete(a1);
  }
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_6 &,realityio::SkeletalAnimationAssetBuilder::BlendShapeAnimationAssetDataT const**,false>(unint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = a2 - v8;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v76 = *(a2 - 1);
        v77 = *v8;
        if (*(v76 + 8) < *(*v8 + 8))
        {
          *v8 = v76;
          *(a2 - 1) = v77;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v84 = v8 + 1;
      v85 = v8[1];
      v86 = v8 + 2;
      v87 = v8[2];
      v88 = *v8;
      v89 = *(v85 + 2);
      v90 = *(*v8 + 8);
      v91 = *(v87 + 8);
      if (v89 >= v90)
      {
        if (v91 >= v89)
        {
          goto LABEL_177;
        }

        *v84 = v87;
        *v86 = v85;
        v92 = v8;
        v93 = (v8 + 1);
        result = v85;
        if (v91 < v90)
        {
          goto LABEL_169;
        }
      }

      else
      {
        v92 = v8;
        v93 = (v8 + 2);
        result = *v8;
        if (v91 >= v89)
        {
          *v8 = v85;
          v8[1] = v88;
          v92 = v8 + 1;
          v93 = (v8 + 2);
          result = v88;
          if (v91 >= v90)
          {
LABEL_177:
            v85 = v87;
            goto LABEL_178;
          }
        }

LABEL_169:
        *v92 = v87;
        *v93 = v88;
        v85 = result;
      }

LABEL_178:
      v141 = *(a2 - 1);
      if (*(v141 + 8) < *(v85 + 2))
      {
        *v86 = v141;
        *(a2 - 1) = v85;
        v142 = *v86;
        v143 = *v84;
        v144 = *(v142 + 8);
        if (v144 < *(v143 + 8))
        {
          v8[1] = v142;
          v8[2] = v143;
          v145 = *v8;
          if (v144 < *(*v8 + 8))
          {
            *v8 = v142;
            v8[1] = v145;
          }
        }
      }

      return result;
    }

    if (v9 == 5)
    {

      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_6 &,realityio::SkeletalAnimationAssetBuilder::BlendShapeAnimationAssetDataT const**,0>(v8, v8 + 1, v8 + 2, v8 + 3, a2 - 1);
    }

LABEL_10:
    if (v9 <= 23)
    {
      v94 = v8 + 1;
      v96 = v8 == a2 || v94 == a2;
      if (a4)
      {
        if (!v96)
        {
          v97 = 8;
          v98 = v8;
          do
          {
            v100 = *v98;
            v99 = v98[1];
            v98 = v94;
            v101 = *(v99 + 8);
            if (v101 < *(v100 + 8))
            {
              v102 = v97;
              while (1)
              {
                *(v8 + v102) = v100;
                v103 = v102 - 8;
                if (v102 == 8)
                {
                  break;
                }

                v100 = *(v8 + v102 - 16);
                v102 -= 8;
                if (v101 >= *(v100 + 8))
                {
                  v104 = (v8 + v103);
                  goto LABEL_130;
                }
              }

              v104 = v8;
LABEL_130:
              *v104 = v99;
            }

            v94 = v98 + 1;
            v97 += 8;
          }

          while (v98 + 1 != a2);
        }
      }

      else if (!v96)
      {
        do
        {
          v138 = *v7;
          v137 = v7[1];
          v7 = v94;
          v139 = *(v137 + 8);
          if (v139 < *(v138 + 8))
          {
            v140 = v7;
            do
            {
              *v140 = v138;
              v138 = *(v140 - 2);
              --v140;
            }

            while (v139 < *(v138 + 8));
            *v140 = v137;
          }

          v94 = v7 + 1;
        }

        while (v7 + 1 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v105 = (v9 - 2) >> 1;
        v106 = v105;
        do
        {
          v107 = v106;
          if (v105 >= v106)
          {
            v108 = (2 * v106) | 1;
            v109 = &v8[v108];
            v110 = *v109;
            if (2 * v107 + 2 < v9 && *(v110 + 8) < *(v109[1] + 8))
            {
              v110 = v109[1];
              ++v109;
              v108 = 2 * v107 + 2;
            }

            result = &v8[v107];
            v111 = *result;
            v112 = *(*result + 8);
            if (*(v110 + 8) >= v112)
            {
              do
              {
                v113 = v109;
                *result = v110;
                if (v105 < v108)
                {
                  break;
                }

                v114 = (2 * v108) | 1;
                v109 = &v8[v114];
                v115 = 2 * v108 + 2;
                v110 = *v109;
                if (v115 < v9 && *(v110 + 8) < *(v109[1] + 8))
                {
                  v110 = v109[1];
                  ++v109;
                  v114 = v115;
                }

                result = v113;
                v108 = v114;
              }

              while (*(v110 + 8) >= v112);
              *v113 = v111;
            }
          }

          v106 = v107 - 1;
        }

        while (v107);
        do
        {
          v116 = 0;
          v117 = *v8;
          v118 = v8;
          do
          {
            v119 = &v118[v116];
            v120 = v119 + 1;
            v121 = v119[1];
            v122 = (2 * v116) | 1;
            v116 = 2 * v116 + 2;
            if (v116 >= v9)
            {
              v116 = v122;
            }

            else
            {
              v125 = v119[2];
              v123 = v119 + 2;
              v124 = v125;
              result = *(v121 + 8);
              if (result >= *(v125 + 8))
              {
                v116 = v122;
              }

              else
              {
                v121 = v124;
                v120 = v123;
              }
            }

            *v118 = v121;
            v118 = v120;
          }

          while (v116 <= ((v9 - 2) >> 1));
          if (v120 == --a2)
          {
            *v120 = v117;
          }

          else
          {
            *v120 = *a2;
            *a2 = v117;
            v126 = (v120 - v8 + 8) >> 3;
            v127 = v126 < 2;
            v128 = v126 - 2;
            if (!v127)
            {
              v129 = v128 >> 1;
              v130 = &v8[v129];
              v131 = *v130;
              v132 = *v120;
              v133 = *(*v120 + 8);
              if (*(*v130 + 8) < v133)
              {
                do
                {
                  v134 = v130;
                  *v120 = v131;
                  if (!v129)
                  {
                    break;
                  }

                  v129 = (v129 - 1) >> 1;
                  v130 = &v8[v129];
                  v131 = *v130;
                  v120 = v134;
                }

                while (*(*v130 + 8) < v133);
                *v134 = v132;
              }
            }
          }

          v127 = v9-- <= 2;
        }

        while (!v127);
      }

      return result;
    }

    v10 = &v8[v9 >> 1];
    v11 = v10;
    v12 = *(a2 - 1);
    v13 = *(v12 + 8);
    if (v9 >= 0x81)
    {
      v14 = *v10;
      v15 = *v8;
      v16 = *(*v10 + 8);
      v17 = *(*v8 + 8);
      if (v16 >= v17)
      {
        if (v13 < v16)
        {
          *v10 = v12;
          *(a2 - 1) = v14;
          v22 = *v8;
          if (*(*v10 + 8) < *(*v8 + 8))
          {
            *v8 = *v10;
            *v10 = v22;
          }
        }
      }

      else
      {
        if (v13 < v16)
        {
          *v8 = v12;
          goto LABEL_27;
        }

        *v8 = v14;
        *v10 = v15;
        v24 = *(a2 - 1);
        if (*(v24 + 8) < v17)
        {
          *v10 = v24;
LABEL_27:
          *(a2 - 1) = v15;
        }
      }

      v25 = v10 - 1;
      v26 = *(v10 - 1);
      v27 = v8[1];
      v28 = *(v26 + 8);
      v29 = *(v27 + 8);
      v30 = *(a2 - 2);
      v31 = *(v30 + 8);
      if (v28 >= v29)
      {
        if (v31 < v28)
        {
          *v25 = v30;
          *(a2 - 2) = v26;
          v32 = v8[1];
          if (*(*v25 + 8) < *(v32 + 8))
          {
            v8[1] = *v25;
            *v25 = v32;
          }
        }
      }

      else
      {
        if (v31 < v28)
        {
          v8[1] = v30;
          goto LABEL_39;
        }

        v8[1] = v26;
        *v25 = v27;
        v34 = *(a2 - 2);
        if (*(v34 + 8) < v29)
        {
          *v25 = v34;
LABEL_39:
          *(a2 - 2) = v27;
        }
      }

      v37 = v10[1];
      v35 = v10 + 1;
      v36 = v37;
      v38 = v8[2];
      v39 = *(v37 + 8);
      v40 = *(v38 + 8);
      v41 = *(a2 - 3);
      v42 = *(v41 + 8);
      if (v39 >= v40)
      {
        if (v42 < v39)
        {
          *v35 = v41;
          *(a2 - 3) = v36;
          v43 = v8[2];
          if (*(*v35 + 8) < *(v43 + 8))
          {
            v8[2] = *v35;
            *v35 = v43;
          }
        }
      }

      else
      {
        if (v42 < v39)
        {
          v8[2] = v41;
          goto LABEL_48;
        }

        v8[2] = v36;
        *v35 = v38;
        v44 = *(a2 - 3);
        if (*(v44 + 8) < v40)
        {
          *v35 = v44;
LABEL_48:
          *(a2 - 3) = v38;
        }
      }

      v45 = *v11;
      v46 = *v25;
      v47 = *(*v11 + 8);
      v48 = *(*v25 + 8);
      v49 = *v35;
      v50 = *(*v35 + 8);
      if (v47 >= v48)
      {
        if (v50 >= v47)
        {
          goto LABEL_56;
        }

        *v11 = v49;
        *v35 = v45;
        v35 = v11;
        v45 = v46;
        if (v50 >= v48)
        {
          v45 = v49;
          goto LABEL_56;
        }
      }

      else if (v50 >= v47)
      {
        *v25 = v45;
        *v11 = v46;
        v25 = v11;
        v45 = v49;
        if (v50 >= v48)
        {
          v45 = v46;
LABEL_56:
          v51 = *v8;
          *v8 = v45;
          *v11 = v51;
          goto LABEL_57;
        }
      }

      *v25 = v49;
      *v35 = v46;
      goto LABEL_56;
    }

    v18 = *v8;
    v19 = *v11;
    v20 = *(*v8 + 8);
    v21 = *(*v11 + 8);
    if (v20 >= v21)
    {
      if (v13 < v20)
      {
        *v8 = v12;
        *(a2 - 1) = v18;
        v23 = *v11;
        if (*(*v8 + 8) < *(*v11 + 8))
        {
          *v11 = *v8;
          *v8 = v23;
        }
      }

      goto LABEL_57;
    }

    if (v13 < v20)
    {
      *v11 = v12;
LABEL_36:
      *(a2 - 1) = v19;
      goto LABEL_57;
    }

    *v11 = v18;
    *v8 = v19;
    v33 = *(a2 - 1);
    if (*(v33 + 8) < v21)
    {
      *v8 = v33;
      goto LABEL_36;
    }

LABEL_57:
    --a3;
    v52 = *v8;
    if (a4)
    {
      v53 = *(v52 + 8);
LABEL_60:
      v54 = 0;
      do
      {
        v55 = v8[++v54];
      }

      while (*(v55 + 8) < v53);
      v56 = &v8[v54];
      v57 = a2;
      if (v54 == 1)
      {
        v57 = a2;
        do
        {
          if (v56 >= v57)
          {
            break;
          }

          v59 = *--v57;
        }

        while (*(v59 + 8) >= v53);
      }

      else
      {
        do
        {
          v58 = *--v57;
        }

        while (*(v58 + 8) >= v53);
      }

      if (v56 >= v57)
      {
        v65 = v56 - 1;
      }

      else
      {
        v60 = *v57;
        v61 = &v8[v54];
        v62 = v57;
        do
        {
          *v61 = v60;
          *v62 = v55;
          do
          {
            v63 = v61[1];
            ++v61;
            v55 = v63;
          }

          while (*(v63 + 8) < v53);
          do
          {
            v64 = *--v62;
            v60 = v64;
          }

          while (*(v64 + 8) >= v53);
        }

        while (v61 < v62);
        v65 = v61 - 1;
      }

      if (v65 != v8)
      {
        *v8 = *v65;
      }

      *v65 = v52;
      if (v56 < v57)
      {
        goto LABEL_81;
      }

      v66 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_6 &,realityio::SkeletalAnimationAssetBuilder::BlendShapeAnimationAssetDataT const**>(v8, v65);
      v8 = v65 + 1;
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_6 &,realityio::SkeletalAnimationAssetBuilder::BlendShapeAnimationAssetDataT const**>(v65 + 1, a2);
      if (result)
      {
        a2 = v65;
        if (!v66)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v66)
      {
LABEL_81:
        result = std::__introsort<std::_ClassicAlgPolicy,realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_6 &,realityio::SkeletalAnimationAssetBuilder::BlendShapeAnimationAssetDataT const**,false>(v7, v65, a3, a4 & 1);
        a4 = 0;
        v8 = v65 + 1;
      }
    }

    else
    {
      v53 = *(v52 + 8);
      if (*(*(v8 - 1) + 8) < v53)
      {
        goto LABEL_60;
      }

      if (v53 >= *(*(a2 - 1) + 8))
      {
        v68 = v8 + 1;
        do
        {
          v8 = v68;
          if (v68 >= a2)
          {
            break;
          }

          ++v68;
        }

        while (v53 >= *(*v8 + 8));
      }

      else
      {
        do
        {
          v67 = v8[1];
          ++v8;
        }

        while (v53 >= *(v67 + 8));
      }

      v69 = a2;
      if (v8 < a2)
      {
        v69 = a2;
        do
        {
          v70 = *--v69;
        }

        while (v53 < *(v70 + 8));
      }

      if (v8 < v69)
      {
        v71 = *v8;
        v72 = *v69;
        do
        {
          *v8 = v72;
          *v69 = v71;
          do
          {
            v73 = v8[1];
            ++v8;
            v71 = v73;
          }

          while (v53 >= *(v73 + 8));
          do
          {
            v74 = *--v69;
            v72 = v74;
          }

          while (v53 < *(v74 + 8));
        }

        while (v8 < v69);
      }

      v75 = v8 - 1;
      if (v8 - 1 != v7)
      {
        *v7 = *v75;
      }

      a4 = 0;
      *v75 = v52;
    }
  }

  v78 = *v8;
  v79 = v8[1];
  v80 = *(v79 + 8);
  v81 = *(*v8 + 8);
  v82 = *(a2 - 1);
  v83 = *(v82 + 8);
  if (v80 >= v81)
  {
    if (v83 < v80)
    {
      v8[1] = v82;
      *(a2 - 1) = v79;
      v136 = *v8;
      v135 = v8[1];
      if (*(v135 + 8) < *(*v8 + 8))
      {
        *v8 = v135;
        v8[1] = v136;
      }
    }
  }

  else
  {
    if (v83 >= v80)
    {
      *v8 = v79;
      v8[1] = v78;
      v146 = *(a2 - 1);
      if (*(v146 + 8) >= v81)
      {
        return result;
      }

      v8[1] = v146;
    }

    else
    {
      *v8 = v82;
    }

    *(a2 - 1) = v78;
  }

  return result;
}

uint64_t *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_6 &,realityio::SkeletalAnimationAssetBuilder::BlendShapeAnimationAssetDataT const**,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *(*a2 + 8);
  v8 = *(*result + 8);
  v9 = *a3;
  v10 = *(*a3 + 8);
  if (v7 >= v8)
  {
    if (v10 >= v7)
    {
      v5 = *a3;
    }

    else
    {
      *a2 = v9;
      *a3 = v5;
      v11 = *result;
      if (*(*a2 + 8) < *(*result + 8))
      {
        *result = *a2;
        *a2 = v11;
        v5 = *a3;
      }
    }
  }

  else
  {
    if (v10 < v7)
    {
      *result = v9;
LABEL_9:
      *a3 = v6;
      v5 = v6;
      goto LABEL_11;
    }

    *result = v5;
    *a2 = v6;
    v5 = *a3;
    if (*(*a3 + 8) < v8)
    {
      *a2 = v5;
      goto LABEL_9;
    }
  }

LABEL_11:
  if (*(*a4 + 8) < *(v5 + 8))
  {
    *a3 = *a4;
    *a4 = v5;
    v12 = *a2;
    if (*(*a3 + 8) < *(*a2 + 8))
    {
      *a2 = *a3;
      *a3 = v12;
      v13 = *result;
      if (*(*a2 + 8) < *(*result + 8))
      {
        *result = *a2;
        *a2 = v13;
      }
    }
  }

  v14 = *a4;
  if (*(*a5 + 8) < *(*a4 + 8))
  {
    *a4 = *a5;
    *a5 = v14;
    v15 = *a3;
    if (*(*a4 + 8) < *(*a3 + 8))
    {
      *a3 = *a4;
      *a4 = v15;
      v16 = *a2;
      if (*(*a3 + 8) < *(*a2 + 8))
      {
        *a2 = *a3;
        *a3 = v16;
        v17 = *result;
        if (*(*a2 + 8) < *(*result + 8))
        {
          *result = *a2;
          *a2 = v17;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_6 &,realityio::SkeletalAnimationAssetBuilder::BlendShapeAnimationAssetDataT const**>(uint64_t *a1, uint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v5 = *a1;
      v6 = a1[1];
      v7 = *(v6 + 8);
      v8 = *(*a1 + 8);
      v9 = *(a2 - 1);
      v10 = *(v9 + 8);
      if (v7 >= v8)
      {
        if (v10 < v7)
        {
          a1[1] = v9;
          *(a2 - 1) = v6;
          v32 = *a1;
          v31 = a1[1];
          if (*(v31 + 8) < *(*a1 + 8))
          {
            *a1 = v31;
            a1[1] = v32;
          }
        }

        return 1;
      }

      if (v10 >= v7)
      {
        *a1 = v6;
        a1[1] = v5;
        v47 = *(a2 - 1);
        if (*(v47 + 8) >= v8)
        {
          return 1;
        }

        a1[1] = v47;
      }

      else
      {
        *a1 = v9;
      }

      *(a2 - 1) = v5;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_6 &,realityio::SkeletalAnimationAssetBuilder::BlendShapeAnimationAssetDataT const**,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
      return 1;
    }

    v20 = a1 + 1;
    v21 = a1[1];
    v22 = a1 + 2;
    v23 = a1[2];
    v24 = *a1;
    v25 = *(v21 + 8);
    v26 = *(*a1 + 8);
    v27 = *(v23 + 8);
    if (v25 >= v26)
    {
      if (v27 >= v25)
      {
LABEL_41:
        v21 = v23;
        goto LABEL_42;
      }

      *v20 = v23;
      *v22 = v21;
      v28 = a1;
      v29 = a1 + 1;
      v30 = v21;
      if (v27 >= v26)
      {
LABEL_42:
        v42 = *(a2 - 1);
        if (*(v42 + 8) < *(v21 + 8))
        {
          *v22 = v42;
          *(a2 - 1) = v21;
          v43 = *v22;
          v44 = *v20;
          v45 = *(v43 + 8);
          if (v45 < *(v44 + 8))
          {
            a1[1] = v43;
            a1[2] = v44;
            v46 = *a1;
            if (v45 < *(*a1 + 8))
            {
              *a1 = v43;
              a1[1] = v46;
            }
          }
        }

        return 1;
      }
    }

    else
    {
      v28 = a1;
      v29 = a1 + 2;
      v30 = *a1;
      if (v27 >= v25)
      {
        *a1 = v21;
        a1[1] = v24;
        v28 = a1 + 1;
        v29 = a1 + 2;
        v30 = v24;
        if (v27 >= v26)
        {
          goto LABEL_41;
        }
      }
    }

    *v28 = v23;
    *v29 = v24;
    v21 = v30;
    goto LABEL_42;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 1);
    v4 = *a1;
    if (*(v3 + 8) < *(*a1 + 8))
    {
      *a1 = v3;
      *(a2 - 1) = v4;
    }

    return 1;
  }

LABEL_13:
  v12 = a1 + 2;
  v11 = a1[2];
  v13 = a1[1];
  v14 = *a1;
  v15 = *(v13 + 8);
  v16 = *(*a1 + 8);
  v17 = *(v11 + 8);
  if (v15 >= v16)
  {
    if (v17 >= v15)
    {
      goto LABEL_27;
    }

    a1[1] = v11;
    *v12 = v13;
    v18 = a1;
    v19 = a1 + 1;
LABEL_25:
    if (v17 >= v16)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v18 = a1;
  v19 = a1 + 2;
  if (v17 >= v15)
  {
    *a1 = v13;
    a1[1] = v14;
    v18 = a1 + 1;
    v19 = a1 + 2;
    goto LABEL_25;
  }

LABEL_26:
  *v18 = v11;
  *v19 = v14;
LABEL_27:
  v33 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v34 = 0;
  for (i = 24; ; i += 8)
  {
    v36 = *v33;
    v37 = *v12;
    v38 = *(*v33 + 8);
    if (v38 < *(v37 + 8))
    {
      v39 = i;
      while (1)
      {
        *(a1 + v39) = v37;
        v40 = v39 - 8;
        if (v39 == 8)
        {
          break;
        }

        v37 = *(a1 + v39 - 16);
        v39 -= 8;
        if (v38 >= *(v37 + 8))
        {
          v41 = (a1 + v40);
          goto LABEL_35;
        }
      }

      v41 = a1;
LABEL_35:
      *v41 = v36;
      if (++v34 == 8)
      {
        break;
      }
    }

    v12 = v33++;
    if (v33 == a2)
    {
      return 1;
    }
  }

  return v33 + 1 == a2;
}