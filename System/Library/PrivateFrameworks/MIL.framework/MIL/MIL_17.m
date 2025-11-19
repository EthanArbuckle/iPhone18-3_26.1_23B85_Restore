uint64_t MIL::Transform::ProgramTransformer::ProgramTransformerImpl::GetMatchedOperationIndex(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  v4 = *a3;
  if (*a3 != v3)
  {
    while (*v4 != a1)
    {
      if (++v4 == v3)
      {
        v4 = *(a3 + 8);
        break;
      }
    }
  }

  if (v3 == v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Operation not found in list of matched ops");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  v5 = v4 - *a3;
  if (a2[1] - *a2 <= v5)
  {
    std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
  }

  return *&v5[*a2];
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,MIL::Transform::ProgramTransformer::ProgramTransformerImpl::InsertionPosition *,false>(__n128 *a1, __n128 *a2, uint64_t a3, uint64_t a4, char a5, __n128 a6)
{
LABEL_1:
  v9 = a2 - 1;
  v10 = a2 - 2;
  v11 = a2 - 3;
  v12 = a1;
LABEL_2:
  v13 = 1 - a4;
  while (1)
  {
    a1 = v12;
    v14 = v13;
    v15 = a2 - v12;
    if (v15 <= 2)
    {
      if (v15 < 2)
      {
        return;
      }

      if (v15 == 2)
      {
        v42 = a2 - 1;
        v43 = a2[-1].n128_u64[0];
        if (v43 >= v12->n128_u64[0])
        {
          if (v12->n128_u64[0] < v43)
          {
            return;
          }

          v44 = a2[-1].n128_u64[1];
          goto LABEL_140;
        }

        goto LABEL_165;
      }

      goto LABEL_10;
    }

    if (v15 == 3)
    {
      break;
    }

    if (v15 == 4)
    {

      return;
    }

    if (v15 == 5)
    {
      v48 = a2 - 1;
      v49 = a2[-1].n128_u64[0];
      v50 = v12[3].n128_u64[0];
      if (v49 < v50 || v50 >= v49 && a2[-1].n128_u64[1] < v12[3].n128_u64[1])
      {
        v51 = v12[3];
        v12[3] = *v48;
        *v48 = v51;
        v52 = v12[3].n128_u64[0];
        v53 = v12[2].n128_u64[0];
        if (v52 < v53 || v53 >= v52 && v12[3].n128_u64[1] < v12[2].n128_u64[1])
        {
          v54 = v12[2];
          v12[2] = v12[3];
          v12[3] = v54;
          v55 = v12[2].n128_u64[0];
          v56 = v12[1].n128_u64[0];
          if (v55 < v56 || v56 >= v55 && v12[2].n128_u64[1] < v12[1].n128_u64[1])
          {
            v57 = v12[1];
            v12[1] = v12[2];
            v12[2] = v57;
            v58 = v12[1].n128_u64[0];
            if (v58 < v12->n128_u64[0] || v12->n128_u64[0] >= v58 && v12[1].n128_u64[1] < v12->n128_u64[1])
            {
              v82 = *v12;
              *v12 = v12[1];
              v12[1] = v82;
            }
          }
        }
      }

      return;
    }

LABEL_10:
    if (v15 <= 23)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,MIL::Transform::ProgramTransformer::ProgramTransformerImpl::InsertionPosition *>(v12->n128_u64, a2->n128_u64);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,MIL::Transform::ProgramTransformer::ProgramTransformerImpl::InsertionPosition *>(v12->n128_u64, a2->n128_u64);
      }

      return;
    }

    if (v13 == 1)
    {
      if (v12 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,MIL::Transform::ProgramTransformer::ProgramTransformerImpl::InsertionPosition *,MIL::Transform::ProgramTransformer::ProgramTransformerImpl::InsertionPosition *>(v12, a2, a2, a3);
      }

      return;
    }

    v16 = &v12[v15 >> 1];
    v17 = v16;
    if (v15 >= 0x81)
    {
      v18 = v16->n128_u64[0];
      if (v16->n128_u64[0] < v12->n128_u64[0] || v12->n128_u64[0] >= v18 && v16->n128_u64[1] < v12->n128_u64[1])
      {
        if (v9->n128_u64[0] < v18 || v18 >= v9->n128_u64[0] && a2[-1].n128_u64[1] < v16->n128_u64[1])
        {
          v64 = *v12;
          *v12 = *v9;
        }

        else
        {
          v70 = *v12;
          *v12 = *v16;
          *v16 = v70;
          if (v9->n128_u64[0] >= v16->n128_u64[0] && (v16->n128_u64[0] < v9->n128_u64[0] || a2[-1].n128_u64[1] >= v16->n128_u64[1]))
          {
            goto LABEL_34;
          }

          v64 = *v16;
          *v16 = *v9;
        }

        *v9 = v64;
        goto LABEL_34;
      }

      if (v9->n128_u64[0] < v18 || v18 >= v9->n128_u64[0] && a2[-1].n128_u64[1] < v16->n128_u64[1])
      {
        v66 = *v16;
        *v16 = *v9;
        *v9 = v66;
        if (v16->n128_u64[0] < v12->n128_u64[0] || v12->n128_u64[0] >= v16->n128_u64[0] && v16->n128_u64[1] < v12->n128_u64[1])
        {
          v67 = *v12;
          *v12 = *v16;
          *v16 = v67;
        }
      }

LABEL_34:
      v20 = v12 + 1;
      v21 = v12[1].n128_u64[0];
      v22 = v16 - 1;
      v23 = v16[-1].n128_u64[0];
      if (v23 < v21 || v21 >= v23 && v16[-1].n128_u64[1] < v12[1].n128_u64[1])
      {
        if (v10->n128_u64[0] < v23 || v23 >= v10->n128_u64[0] && a2[-2].n128_u64[1] < v16[-1].n128_u64[1])
        {
          v24 = *v20;
          *v20 = *v10;
        }

        else
        {
          v26 = *v20;
          *v20 = *v22;
          *v22 = v26;
          if (v10->n128_u64[0] >= v22->n128_u64[0] && (v22->n128_u64[0] < v10->n128_u64[0] || a2[-2].n128_u64[1] >= v16[-1].n128_u64[1]))
          {
            goto LABEL_52;
          }

          v73 = *v22;
          *v22 = *v10;
          v24 = v73;
        }

        *v10 = v24;
        goto LABEL_52;
      }

      if (v10->n128_u64[0] < v23 || v23 >= v10->n128_u64[0] && a2[-2].n128_u64[1] < v16[-1].n128_u64[1])
      {
        v71 = *v22;
        *v22 = *v10;
        *v10 = v71;
        if (v22->n128_u64[0] < v20->n128_u64[0] || v20->n128_u64[0] >= v22->n128_u64[0] && v16[-1].n128_u64[1] < v12[1].n128_u64[1])
        {
          v25 = *v20;
          *v20 = *v22;
          *v22 = v25;
        }
      }

LABEL_52:
      v27 = v12 + 2;
      v28 = v12[2].n128_u64[0];
      v31 = v16[1].n128_u64[0];
      v29 = v16 + 1;
      v30 = v31;
      if (v31 < v28 || v28 >= v30 && v29->n128_u64[1] < v12[2].n128_u64[1])
      {
        if (v11->n128_u64[0] < v30 || v30 >= v11->n128_u64[0] && a2[-3].n128_u64[1] < v29->n128_u64[1])
        {
          v32 = *v27;
          *v27 = *v11;
        }

        else
        {
          v34 = *v27;
          *v27 = *v29;
          *v29 = v34;
          if (v11->n128_u64[0] >= v29->n128_u64[0] && (v29->n128_u64[0] < v11->n128_u64[0] || a2[-3].n128_u64[1] >= v29->n128_u64[1]))
          {
            goto LABEL_65;
          }

          v75 = *v29;
          *v29 = *v11;
          v32 = v75;
        }

        *v11 = v32;
        goto LABEL_65;
      }

      if (v11->n128_u64[0] < v30 || v30 >= v11->n128_u64[0] && a2[-3].n128_u64[1] < v29->n128_u64[1])
      {
        v74 = *v29;
        *v29 = *v11;
        *v11 = v74;
        if (v29->n128_u64[0] < v27->n128_u64[0] || v27->n128_u64[0] >= v29->n128_u64[0] && v29->n128_u64[1] < v12[2].n128_u64[1])
        {
          v33 = *v27;
          *v27 = *v29;
          *v29 = v33;
        }
      }

LABEL_65:
      v35 = v17->n128_u64[0];
      if (v17->n128_u64[0] >= v22->n128_u64[0] && (v22->n128_u64[0] < v35 || v17->n128_u64[1] >= v22->n128_u64[1]))
      {
        if (v29->n128_u64[0] < v35 || v35 >= v29->n128_u64[0] && v29->n128_u64[1] < v17->n128_u64[1])
        {
          v77 = *v17;
          *v17 = *v29;
          *v29 = v77;
          if (v17->n128_u64[0] < v22->n128_u64[0] || v22->n128_u64[0] >= v17->n128_u64[0] && v17->n128_u64[1] < v22->n128_u64[1])
          {
            v78 = *v22;
            *v22 = *v17;
            *v17 = v78;
          }
        }

        goto LABEL_78;
      }

      if (v29->n128_u64[0] < v35 || v35 >= v29->n128_u64[0] && v29->n128_u64[1] < v17->n128_u64[1])
      {
        v76 = *v22;
        *v22 = *v29;
      }

      else
      {
        v79 = *v22;
        *v22 = *v17;
        *v17 = v79;
        if (v29->n128_u64[0] >= v17->n128_u64[0] && (v17->n128_u64[0] < v29->n128_u64[0] || v29->n128_u64[1] >= v17->n128_u64[1]))
        {
          goto LABEL_78;
        }

        v76 = *v17;
        *v17 = *v29;
      }

      *v29 = v76;
LABEL_78:
      v80 = *v12;
      *v12 = *v17;
      *v17 = v80;
      goto LABEL_79;
    }

    v19 = v12->n128_u64[0];
    if (v12->n128_u64[0] < v17->n128_u64[0] || v17->n128_u64[0] >= v19 && v12->n128_u64[1] < v17->n128_u64[1])
    {
      if (v9->n128_u64[0] < v19 || v19 >= v9->n128_u64[0] && a2[-1].n128_u64[1] < v12->n128_u64[1])
      {
        v65 = *v17;
        *v17 = *v9;
LABEL_46:
        *v9 = v65;
        goto LABEL_79;
      }

      v72 = *v17;
      *v17 = *v12;
      *v12 = v72;
      if (v9->n128_u64[0] < v12->n128_u64[0] || v12->n128_u64[0] >= v9->n128_u64[0] && a2[-1].n128_u64[1] < v12->n128_u64[1])
      {
        v65 = *v12;
        *v12 = *v9;
        goto LABEL_46;
      }
    }

    else if (v9->n128_u64[0] < v19 || v19 >= v9->n128_u64[0] && a2[-1].n128_u64[1] < v12->n128_u64[1])
    {
      v68 = *v12;
      *v12 = *v9;
      *v9 = v68;
      if (v12->n128_u64[0] < v17->n128_u64[0] || v17->n128_u64[0] >= v12->n128_u64[0] && v12->n128_u64[1] < v17->n128_u64[1])
      {
        v69 = *v17;
        *v17 = *v12;
        *v12 = v69;
      }
    }

LABEL_79:
    if ((a5 & 1) == 0)
    {
      v36 = v12[-1].n128_u64[0];
      if (v36 >= v12->n128_u64[0] && (v12->n128_u64[0] < v36 || v12[-1].n128_u64[1] >= v12->n128_u64[1]))
      {
        v12 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,MIL::Transform::ProgramTransformer::ProgramTransformerImpl::InsertionPosition *,std::__less<void,void> &>(v12->n128_u64, a2);
        goto LABEL_134;
      }
    }

    v37 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,MIL::Transform::ProgramTransformer::ProgramTransformerImpl::InsertionPosition *,std::__less<void,void> &>(v12->n128_u64, a2);
    if ((v39 & 1) == 0)
    {
      goto LABEL_132;
    }

    v40 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,MIL::Transform::ProgramTransformer::ProgramTransformerImpl::InsertionPosition *>(v12, v37, v38);
    v12 = v37 + 1;
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,MIL::Transform::ProgramTransformer::ProgramTransformerImpl::InsertionPosition *>(v37 + 1, a2, v41))
    {
      a4 = -v14;
      a2 = v37;
      if (v40)
      {
        return;
      }

      goto LABEL_1;
    }

    v13 = v14 + 1;
    if (!v40)
    {
LABEL_132:
      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,MIL::Transform::ProgramTransformer::ProgramTransformerImpl::InsertionPosition *,false>(a1, v37, a3, -v14, a5 & 1);
      v12 = v37 + 1;
LABEL_134:
      a5 = 0;
      a4 = -v14;
      goto LABEL_2;
    }
  }

  v42 = v12 + 1;
  v45 = v12[1].n128_u64[0];
  if (v45 < v12->n128_u64[0] || v12->n128_u64[0] >= v45 && v12[1].n128_u64[1] < v12->n128_u64[1])
  {
    v46 = a2[-1].n128_u64[0];
    if (v46 < v45 || v45 >= v46 && a2[-1].n128_u64[1] < v12[1].n128_u64[1])
    {
      v81 = *v12;
      *v12 = *v9;
      v47 = v81;
    }

    else
    {
      v84 = *v12;
      *v12 = *v42;
      *v42 = v84;
      v62 = v12[1].n128_u64[0];
      if (v9->n128_u64[0] >= v62 && (v62 < v9->n128_u64[0] || a2[-1].n128_u64[1] >= v12[1].n128_u64[1]))
      {
        return;
      }

      v47 = *v42;
      *v42 = *v9;
    }

    *v9 = v47;
    return;
  }

  v59 = a2[-1].n128_u64[0];
  if (v59 < v45 || v45 >= v59 && a2[-1].n128_u64[1] < v12[1].n128_u64[1])
  {
    v60 = *v42;
    *v42 = *v9;
    *v9 = v60;
    v61 = v12[1].n128_u64[0];
    if (v61 < v12->n128_u64[0])
    {
      goto LABEL_165;
    }

    if (v12->n128_u64[0] < v61)
    {
      return;
    }

    v44 = v12[1].n128_u64[1];
LABEL_140:
    if (v44 < v12->n128_u64[1])
    {
LABEL_165:
      v83 = *v12;
      *v12 = *v42;
      *v42 = v83;
    }
  }
}

unint64_t *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,MIL::Transform::ProgramTransformer::ProgramTransformerImpl::InsertionPosition *>(unint64_t *result, unint64_t *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = 0;
      v4 = result;
      while (1)
      {
        v5 = v4;
        v4 = v2;
        v6 = v5[2];
        if (v6 < *v5)
        {
          break;
        }

        if (*v5 >= v6)
        {
          v7 = v5[3];
          if (v7 < v5[1])
          {
            goto LABEL_6;
          }
        }

LABEL_19:
        v2 = v4 + 2;
        v3 += 16;
        if (v4 + 2 == a2)
        {
          return result;
        }
      }

      v7 = v5[3];
LABEL_6:
      *v4 = *v5;
      v8 = result;
      if (v5 != result)
      {
        v9 = v3;
        while (1)
        {
          v10 = (result + v9);
          v11 = *(result + v9 - 16);
          if (v6 >= v11)
          {
            if (v11 < v6)
            {
              v8 = v5;
              goto LABEL_18;
            }

            if (v7 >= *(v10 - 1))
            {
              break;
            }
          }

          v5 -= 2;
          *v10 = *(result + v9 - 16);
          v9 -= 16;
          if (!v9)
          {
            v8 = result;
            goto LABEL_18;
          }
        }

        v8 = (result + v9);
      }

LABEL_18:
      *v8 = v6;
      v8[1] = v7;
      goto LABEL_19;
    }
  }

  return result;
}

unint64_t *std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,MIL::Transform::ProgramTransformer::ProgramTransformerImpl::InsertionPosition *>(unint64_t *result, unint64_t *a2)
{
  if (result != a2)
  {
    while (1)
    {
      if (result + 2 == a2)
      {
        return result;
      }

      v2 = result;
      result += 2;
      v3 = v2[2];
      if (v3 >= *v2)
      {
        if (*v2 >= v3)
        {
          v4 = v2[3];
          if (v4 < v2[1])
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        v4 = v2[3];
        do
        {
          do
          {
LABEL_5:
            v5 = v2;
            *(v2 + 1) = *v2;
            v7 = *(v2 - 2);
            v2 -= 2;
            v6 = v7;
          }

          while (v3 < v7);
        }

        while (v6 >= v3 && v4 < *(v5 - 1));
        *v5 = v3;
        v5[1] = v4;
      }
    }
  }

  return result;
}

unint64_t *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,MIL::Transform::ProgramTransformer::ProgramTransformerImpl::InsertionPosition *,std::__less<void,void> &>(unint64_t *a1, unint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a2 - 16);
  if (*a1 < v4 || v4 >= v2 && v3 < *(a2 - 8))
  {
    i = a1;
    do
    {
      v7 = i[2];
      i += 2;
      v6 = v7;
    }

    while (v2 >= v7 && (v6 < v2 || v3 >= i[1]));
  }

  else
  {
      ;
    }
  }

  if (i < a2)
  {
    for (a2 -= 16; v2 < v4 || v4 >= v2 && v3 < *(a2 + 8); a2 -= 16)
    {
      v8 = *(a2 - 16);
      v4 = v8;
    }
  }

  while (i < a2)
  {
    v14 = *i;
    *i = *a2;
    *a2 = v14;
    do
    {
      v10 = i[2];
      i += 2;
      v9 = v10;
    }

    while (v2 >= v10 && (v9 < v2 || v3 >= i[1]));
    do
    {
      do
      {
        v12 = *(a2 - 16);
        a2 -= 16;
        v11 = v12;
      }

      while (v2 < v12);
    }

    while (v11 >= v2 && v3 < *(a2 + 8));
  }

  if (i - 2 != a1)
  {
    *a1 = *(i - 1);
  }

  *(i - 2) = v2;
  *(i - 1) = v3;
  return i;
}

unint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,MIL::Transform::ProgramTransformer::ProgramTransformerImpl::InsertionPosition *,std::__less<void,void> &>(unint64_t *a1, unint64_t a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[1];
  while (1)
  {
    v5 = a1[v2 + 2];
    if (v5 >= v3 && (v3 < v5 || a1[v2 + 3] >= v4))
    {
      break;
    }

    v2 += 2;
  }

  v6 = &a1[v2 + 2];
  if (v2 * 8)
  {
    do
    {
      v8 = *(a2 - 16);
      a2 -= 16;
      v7 = v8;
    }

    while (v8 >= v3 && (v3 < v7 || *(a2 + 8) >= v4));
  }

  else
  {
LABEL_19:
    if (v6 < a2)
    {
      do
      {
        v10 = *(a2 - 16);
        a2 -= 16;
        v9 = v10;
        if (v10 < v3)
        {
          break;
        }

        if (v3 < v9)
        {
          goto LABEL_19;
        }
      }

      while (*(a2 + 8) >= v4 && v6 < a2);
    }
  }

  v12 = v6;
  if (v6 < a2)
  {
    v13 = a2;
    do
    {
      v19 = *v12;
      *v12 = *v13;
      *v13 = v19;
      do
      {
        do
        {
          v15 = *(v12 + 16);
          v12 += 16;
          v14 = v15;
        }

        while (v15 < v3);
      }

      while (v3 >= v14 && *(v12 + 8) < v4);
      do
      {
        v17 = *(v13 - 16);
        v13 -= 16;
        v16 = v17;
      }

      while (v17 >= v3 && (v3 < v16 || *(v13 + 8) >= v4));
    }

    while (v12 < v13);
  }

  if ((v12 - 16) != a1)
  {
    *a1 = *(v12 - 16);
  }

  *(v12 - 16) = v3;
  *(v12 - 8) = v4;
  return v12 - 16;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,MIL::Transform::ProgramTransformer::ProgramTransformerImpl::InsertionPosition *>(__n128 *a1, __n128 *a2, __n128 a3)
{
  v5 = a2 - a1;
  if (v5 > 2)
  {
    switch(v5)
    {
      case 3:
        v6 = a1 + 1;
        v21 = a1[1].n128_u64[0];
        v22 = a2 - 1;
        if (v21 < a1->n128_u64[0] || a1->n128_u64[0] >= v21 && a1[1].n128_u64[1] < a1->n128_u64[1])
        {
          v23 = a2[-1].n128_u64[0];
          if (v23 < v21 || v21 >= v23 && a2[-1].n128_u64[1] < a1[1].n128_u64[1])
          {
            v24 = *a1;
            *a1 = *v22;
          }

          else
          {
            v38 = *a1;
            *a1 = *v6;
            *v6 = v38;
            v39 = a1[1].n128_u64[0];
            if (v22->n128_u64[0] >= v39 && (v39 < v22->n128_u64[0] || a2[-1].n128_u64[1] >= a1[1].n128_u64[1]))
            {
              return 1;
            }

            v24 = *v6;
            *v6 = *v22;
          }

          *v22 = v24;
          return 1;
        }

        v31 = a2[-1].n128_u64[0];
        if (v31 < v21 || v21 >= v31 && a2[-1].n128_u64[1] < a1[1].n128_u64[1])
        {
          v32 = *v6;
          *v6 = *v22;
          *v22 = v32;
          v33 = a1[1].n128_u64[0];
          if (v33 < a1->n128_u64[0])
          {
            goto LABEL_28;
          }

          if (a1->n128_u64[0] < v33)
          {
            return 1;
          }

          v8 = a1[1].n128_u64[1];
          goto LABEL_7;
        }

        break;
      case 4:
        return 1;
      case 5:
        v9 = a2 - 1;
        v10 = a2[-1].n128_u64[0];
        v11 = a1[3].n128_u64[0];
        if (v10 < v11 || v11 >= v10 && a2[-1].n128_u64[1] < a1[3].n128_u64[1])
        {
          v12 = a1[3];
          a1[3] = *v9;
          *v9 = v12;
          v13 = a1[3].n128_u64[0];
          v14 = a1[2].n128_u64[0];
          if (v13 < v14 || v14 >= v13 && a1[3].n128_u64[1] < a1[2].n128_u64[1])
          {
            v15 = a1[2];
            a1[2] = a1[3];
            a1[3] = v15;
            v16 = a1[2].n128_u64[0];
            v17 = a1[1].n128_u64[0];
            if (v16 < v17 || v17 >= v16 && a1[2].n128_u64[1] < a1[1].n128_u64[1])
            {
              v18 = a1[1];
              a1[1] = a1[2];
              a1[2] = v18;
              v19 = a1[1].n128_u64[0];
              if (v19 < a1->n128_u64[0] || a1->n128_u64[0] >= v19 && a1[1].n128_u64[1] < a1->n128_u64[1])
              {
                v20 = *a1;
                *a1 = a1[1];
                a1[1] = v20;
              }
            }
          }
        }

        break;
      default:
        goto LABEL_20;
    }

    return 1;
  }

  if (v5 < 2)
  {
    return 1;
  }

  if (v5 == 2)
  {
    v6 = a2 - 1;
    v7 = a2[-1].n128_u64[0];
    if (v7 < a1->n128_u64[0])
    {
      goto LABEL_28;
    }

    if (a1->n128_u64[0] < v7)
    {
      return 1;
    }

    v8 = a2[-1].n128_u64[1];
LABEL_7:
    if (v8 >= a1->n128_u64[1])
    {
      return 1;
    }

LABEL_28:
    v34 = *a1;
    *a1 = *v6;
    *v6 = v34;
    return 1;
  }

LABEL_20:
  v25 = &a1[2];
  v26 = a1->n128_u64[0];
  v27 = a1 + 1;
  v28 = a1[1].n128_u64[0];
  if (v28 < a1->n128_u64[0] || v26 >= v28 && a1[1].n128_u64[1] < a1->n128_u64[1])
  {
    v29 = a1[2].n128_u64[0];
    if (v29 < v28 || v28 >= v29 && a1[2].n128_u64[1] < a1[1].n128_u64[1])
    {
      v30 = *a1;
      *a1 = *v25;
    }

    else
    {
      v40 = *a1;
      *a1 = *v27;
      *v27 = v40;
      v41 = a1[1].n128_u64[0];
      if (v29 >= v41 && (v41 < v29 || a1[2].n128_u64[1] >= a1[1].n128_u64[1]))
      {
        goto LABEL_47;
      }

      v30 = *v27;
      *v27 = *v25;
    }

    *v25 = v30;
    goto LABEL_47;
  }

  v35 = a1[2].n128_u64[0];
  if (v35 < v28 || v28 >= v35 && a1[2].n128_u64[1] < a1[1].n128_u64[1])
  {
    v36 = *v27;
    *v27 = *v25;
    *v25 = v36;
    if (v27->n128_u64[0] < v26 || v26 >= v27->n128_u64[0] && a1[1].n128_u64[1] < a1->n128_u64[1])
    {
      v37 = *a1;
      *a1 = *v27;
      *v27 = v37;
    }
  }

LABEL_47:
  v42 = a1 + 3;
  if (&a1[3] == a2)
  {
    return 1;
  }

  v43 = 0;
  v44 = 0;
  while (2)
  {
    v45 = v42->n128_u64[0];
    if (v42->n128_u64[0] >= *v25)
    {
      if (*v25 < v45)
      {
        goto LABEL_62;
      }

      v46 = v42->n128_u64[1];
      if (v46 >= *(v25 + 8))
      {
        goto LABEL_62;
      }
    }

    else
    {
      v46 = v42->n128_u64[1];
    }

    *v42 = *v25;
    v47 = v43;
    while (1)
    {
      v48 = (a1 + v47);
      v49 = *(a1[1].n128_u64 + v47);
      if (v45 >= v49)
      {
        break;
      }

LABEL_55:
      v25 -= 16;
      v48[2] = *(a1 + v47 + 16);
      v47 -= 16;
      if (v47 == -32)
      {
        v25 = a1;
        goto LABEL_61;
      }
    }

    if (v49 >= v45)
    {
      if (v46 >= v48[1].n128_u64[1])
      {
        goto LABEL_61;
      }

      goto LABEL_55;
    }

    v25 = &a1[2] + v47;
LABEL_61:
    *v25 = v45;
    *(v25 + 8) = v46;
    if (++v44 != 8)
    {
LABEL_62:
      v25 = v42;
      v43 += 16;
      if (++v42 == a2)
      {
        return 1;
      }

      continue;
    }

    return &v42[1] == a2;
  }
}

__n128 *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,MIL::Transform::ProgramTransformer::ProgramTransformerImpl::InsertionPosition *,MIL::Transform::ProgramTransformer::ProgramTransformerImpl::InsertionPosition *>(__n128 *a1, __n128 *a2, __n128 *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      n128_u64 = a1[v9].n128_u64;
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,MIL::Transform::ProgramTransformer::ProgramTransformerImpl::InsertionPosition *>(a1, a4, v8, n128_u64);
        n128_u64 -= 2;
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        if (v12->n128_u64[0] < a1->n128_u64[0] || a1->n128_u64[0] >= v12->n128_u64[0] && v12->n128_u64[1] < a1->n128_u64[1])
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,MIL::Transform::ProgramTransformer::ProgramTransformerImpl::InsertionPosition *>(a1, a4, v8, a1->n128_u64);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v14 = a2 - 1;
      do
      {
        v18 = *a1;
        std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,MIL::Transform::ProgramTransformer::ProgramTransformerImpl::InsertionPosition *>(a1, a4, v8);
        if (v14 == v15)
        {
          *v15 = v18;
        }

        else
        {
          *v15 = *v14;
          *v14 = v18;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,MIL::Transform::ProgramTransformer::ProgramTransformerImpl::InsertionPosition *>(a1, &v15[1], a4, &v15[1] - a1);
        }

        --v14;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,MIL::Transform::ProgramTransformer::ProgramTransformerImpl::InsertionPosition *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = (result + 16 * v7);
      v9 = v6 + 2;
      if (v9 < a3)
      {
        v10 = v8[2];
        if (*v8 < v10 || v10 >= *v8 && v8[1] < v8[3])
        {
          v8 += 2;
          v7 = v9;
        }
      }

      v11 = *a4;
      if (*v8 >= *a4)
      {
        v12 = a4[1];
        if (v11 < *v8 || v8[1] >= v12)
        {
          *a4 = *v8;
          if (v5 >= v7)
          {
            while (1)
            {
              v14 = 2 * v7;
              v7 = (2 * v7) | 1;
              v13 = (result + 16 * v7);
              v15 = v14 + 2;
              if (v15 < a3)
              {
                v16 = v13[2];
                if (*v13 < v16 || v16 >= *v13 && v13[1] < v13[3])
                {
                  v13 += 2;
                  v7 = v15;
                }
              }

              if (*v13 < v11 || v11 >= *v13 && v13[1] < v12)
              {
                break;
              }

              *v8 = *v13;
              v8 = v13;
              if (v5 < v7)
              {
                goto LABEL_13;
              }
            }
          }

          v13 = v8;
LABEL_13:
          *v13 = v11;
          v13[1] = v12;
        }
      }
    }
  }

  return result;
}

__n128 std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,MIL::Transform::ProgramTransformer::ProgramTransformerImpl::InsertionPosition *>(__n128 *a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = a1;
    v5 = &a1[v3];
    a1 = v5 + 1;
    v6 = 2 * v3;
    v3 = (2 * v3) | 1;
    v7 = v6 + 2;
    if (v7 < a3)
    {
      v8 = v5[2].n128_u64[0];
      v9 = v5[1].n128_u64[0];
      if (v9 < v8 || v8 >= v9 && v5[1].n128_u64[1] < v5[2].n128_u64[1])
      {
        a1 = v5 + 2;
        v3 = v7;
      }
    }

    result = *a1;
    *v4 = *a1;
  }

  while (v3 <= (a3 - 2) / 2);
  return result;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,MIL::Transform::ProgramTransformer::ProgramTransformerImpl::InsertionPosition *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = (result + 16 * (v4 >> 1));
    v7 = *(a2 - 16);
    if (*v6 >= v7)
    {
      if (v7 < *v6)
      {
        return result;
      }

      v8 = *(a2 - 8);
      if (v6[1] >= v8)
      {
        return result;
      }
    }

    else
    {
      v8 = *(a2 - 8);
    }

    *(a2 - 16) = *v6;
    if (v4 >= 2)
    {
      while (1)
      {
        v10 = v5 - 1;
        v5 = (v5 - 1) >> 1;
        v9 = (result + 16 * v5);
        if (*v9 >= v7 && (v7 < *v9 || v9[1] >= v8))
        {
          break;
        }

        *v6 = *v9;
        v6 = (result + 16 * v5);
        if (v10 <= 1)
        {
          goto LABEL_10;
        }
      }
    }

    v9 = v6;
LABEL_10:
    *v9 = v7;
    v9[1] = v8;
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<MIL::Builder::OperationBuilder *,unsigned long>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<MIL::Builder::OperationBuilder *,unsigned long> *,false>(uint64_t result, unint64_t *a2, uint64_t a3, uint64_t a4, char a5)
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
    v12 = (a2 - v9) >> 4;
    if (v12 <= 2)
    {
      break;
    }

    switch(v12)
    {
      case 3uLL:

        return std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<MIL::Builder::OperationBuilder *,unsigned long> *,0>(v9, v9 + 2, a2 - 2);
      case 4uLL:
        result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<MIL::Builder::OperationBuilder *,unsigned long> *,0>(v9, v9 + 2, v9 + 4);
        v26 = *(a2 - 2);
        v27 = v9[4];
        if (v26 >= v27)
        {
          if (v27 < v26)
          {
            return result;
          }

          v29 = *(a2 - 1);
          v28 = v9[5];
          if (v29 >= v28)
          {
            return result;
          }
        }

        else
        {
          v28 = v9[5];
          v29 = *(a2 - 1);
        }

        v9[4] = v26;
        v9[5] = v29;
        *(a2 - 2) = v27;
        *(a2 - 1) = v28;
        v30 = v9[4];
        v31 = v9[2];
        if (v30 >= v31)
        {
          if (v31 < v30)
          {
            return result;
          }

          v33 = v9[5];
          v32 = v9[3];
          if (v33 >= v32)
          {
            return result;
          }
        }

        else
        {
          v32 = v9[3];
          v33 = v9[5];
        }

        v9[2] = v30;
        v9[3] = v33;
        v9[4] = v31;
        v9[5] = v32;
        v34 = *v9;
        if (v30 >= *v9)
        {
          if (v34 < v30)
          {
            return result;
          }

          v35 = v9[1];
          if (v33 >= v35)
          {
            return result;
          }
        }

        else
        {
          v35 = v9[1];
        }

        *v9 = v30;
        v9[1] = v33;
        v9[2] = v34;
        v9[3] = v35;
        return result;
      case 5uLL:

        return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<MIL::Builder::OperationBuilder *,unsigned long> *,0>(v9, v9 + 2, v9 + 4, v9 + 6, a2 - 2);
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<MIL::Builder::OperationBuilder *,unsigned long> *>(v9, a2);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<MIL::Builder::OperationBuilder *,unsigned long> *>(v9, a2);
      }
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<MIL::Builder::OperationBuilder *,unsigned long> *,std::pair<MIL::Builder::OperationBuilder *,unsigned long> *>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = &v9[2 * (v12 >> 1)];
    if (v12 < 0x81)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<MIL::Builder::OperationBuilder *,unsigned long> *,0>(&v9[2 * (v12 >> 1)], v9, a2 - 2);
      if (a5)
      {
        goto LABEL_20;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<MIL::Builder::OperationBuilder *,unsigned long> *,0>(v9, &v9[2 * (v12 >> 1)], a2 - 2);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<MIL::Builder::OperationBuilder *,unsigned long> *,0>(v9 + 2, v14 - 2, a2 - 4);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<MIL::Builder::OperationBuilder *,unsigned long> *,0>(v9 + 4, &v9[2 * v13 + 2], a2 - 6);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<MIL::Builder::OperationBuilder *,unsigned long> *,0>(v14 - 2, v14, &v9[2 * v13 + 2]);
      v15 = *v9;
      v16 = v9[1];
      v17 = v14[1];
      *v9 = *v14;
      v9[1] = v17;
      *v14 = v15;
      v14[1] = v16;
      if (a5)
      {
        goto LABEL_20;
      }
    }

    v18 = *(v9 - 2);
    if (v18 >= *v9 && (*v9 < v18 || *(v9 - 1) >= v9[1]))
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<MIL::Builder::OperationBuilder *,unsigned long> *,std::__less<void,void> &>(v9, a2);
      v9 = result;
      goto LABEL_25;
    }

LABEL_20:
    v19 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<MIL::Builder::OperationBuilder *,unsigned long> *,std::__less<void,void> &>(v9, a2);
    if ((v20 & 1) == 0)
    {
      goto LABEL_23;
    }

    v21 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<MIL::Builder::OperationBuilder *,unsigned long> *>(v9, v19);
    v9 = v19 + 2;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<MIL::Builder::OperationBuilder *,unsigned long> *>(v19 + 2, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v19;
      if (v21)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v21)
    {
LABEL_23:
      result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<MIL::Builder::OperationBuilder *,unsigned long> *,false>(v8, v19, a3, -v11, a5 & 1);
      v9 = v19 + 2;
LABEL_25:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  if (v12 < 2)
  {
    return result;
  }

  if (v12 != 2)
  {
    goto LABEL_11;
  }

  v22 = *(a2 - 2);
  v23 = *v9;
  if (v22 < *v9)
  {
    v24 = v9[1];
    v25 = *(a2 - 1);
LABEL_30:
    *v9 = v22;
    v9[1] = v25;
    *(a2 - 2) = v23;
    *(a2 - 1) = v24;
    return result;
  }

  if (v23 >= v22)
  {
    v25 = *(a2 - 1);
    v24 = v9[1];
    if (v25 < v24)
    {
      goto LABEL_30;
    }
  }

  return result;
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<MIL::Builder::OperationBuilder *,unsigned long> *,0>(unint64_t *a1, unint64_t *a2, unint64_t *a3)
{
  v3 = *a2;
  v4 = *a1;
  if (*a2 < *a1 || v4 >= v3 && a2[1] < a1[1])
  {
    v5 = *a3;
    if (*a3 < v3)
    {
      v6 = a3[1];
LABEL_4:
      v7 = a1[1];
      *a1 = v5;
      a1[1] = v6;
      *a3 = v4;
      a3[1] = v7;
      return 1;
    }

    if (v3 >= v5)
    {
      v6 = a3[1];
      v16 = a2[1];
      if (v6 < v16)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v16 = a2[1];
    }

    v17 = a1[1];
    *a1 = v3;
    a1[1] = v16;
    *a2 = v4;
    a2[1] = v17;
    v18 = *a3;
    if (*a3 >= v4)
    {
      if (v4 < v18)
      {
        return 1;
      }

      v19 = a3[1];
      if (v19 >= v17)
      {
        return 1;
      }
    }

    else
    {
      v19 = a3[1];
    }

    *a2 = v18;
    a2[1] = v19;
    result = 1;
    *a3 = v4;
    a3[1] = v17;
    return result;
  }

  v9 = *a3;
  if (*a3 < v3)
  {
    v10 = a2[1];
    v11 = a3[1];
LABEL_10:
    *a2 = v9;
    a2[1] = v11;
    *a3 = v3;
    a3[1] = v10;
    v12 = *a2;
    v13 = *a1;
    if (*a2 < *a1)
    {
      v14 = a1[1];
      v15 = a2[1];
LABEL_12:
      *a1 = v12;
      a1[1] = v15;
      result = 1;
      *a2 = v13;
      a2[1] = v14;
      return result;
    }

    if (v13 >= v12)
    {
      v15 = a2[1];
      v14 = a1[1];
      if (v15 < v14)
      {
        goto LABEL_12;
      }
    }

    return 1;
  }

  if (v3 >= v9)
  {
    v11 = a3[1];
    v10 = a2[1];
    if (v11 < v10)
    {
      goto LABEL_10;
    }
  }

  return 0;
}

uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<MIL::Builder::OperationBuilder *,unsigned long> *,0>(unint64_t *a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, unint64_t *a5)
{
  result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<MIL::Builder::OperationBuilder *,unsigned long> *,0>(a1, a2, a3);
  v11 = *a4;
  v12 = *a3;
  if (*a4 >= *a3)
  {
    if (v12 < v11)
    {
      goto LABEL_16;
    }

    v14 = a4[1];
    v13 = a3[1];
    if (v14 >= v13)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v13 = a3[1];
    v14 = a4[1];
  }

  *a3 = v11;
  a3[1] = v14;
  *a4 = v12;
  a4[1] = v13;
  v15 = *a3;
  v16 = *a2;
  if (*a3 >= *a2)
  {
    if (v16 < v15)
    {
      goto LABEL_16;
    }

    v18 = a3[1];
    v17 = a2[1];
    if (v18 >= v17)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v17 = a2[1];
    v18 = a3[1];
  }

  *a2 = v15;
  a2[1] = v18;
  *a3 = v16;
  a3[1] = v17;
  v19 = *a2;
  v20 = *a1;
  if (*a2 < *a1)
  {
    v21 = a1[1];
    v22 = a2[1];
LABEL_7:
    *a1 = v19;
    a1[1] = v22;
    *a2 = v20;
    a2[1] = v21;
    goto LABEL_16;
  }

  if (v20 >= v19)
  {
    v22 = a2[1];
    v21 = a1[1];
    if (v22 < v21)
    {
      goto LABEL_7;
    }
  }

LABEL_16:
  v23 = *a5;
  v24 = *a4;
  if (*a5 >= *a4)
  {
    if (v24 < v23)
    {
      return result;
    }

    v26 = a5[1];
    v25 = a4[1];
    if (v26 >= v25)
    {
      return result;
    }
  }

  else
  {
    v25 = a4[1];
    v26 = a5[1];
  }

  *a4 = v23;
  a4[1] = v26;
  *a5 = v24;
  a5[1] = v25;
  v27 = *a4;
  v28 = *a3;
  if (*a4 >= *a3)
  {
    if (v28 < v27)
    {
      return result;
    }

    v30 = a4[1];
    v29 = a3[1];
    if (v30 >= v29)
    {
      return result;
    }
  }

  else
  {
    v29 = a3[1];
    v30 = a4[1];
  }

  *a3 = v27;
  a3[1] = v30;
  *a4 = v28;
  a4[1] = v29;
  v31 = *a3;
  v32 = *a2;
  if (*a3 >= *a2)
  {
    if (v32 < v31)
    {
      return result;
    }

    v34 = a3[1];
    v33 = a2[1];
    if (v34 >= v33)
    {
      return result;
    }
  }

  else
  {
    v33 = a2[1];
    v34 = a3[1];
  }

  *a2 = v31;
  a2[1] = v34;
  *a3 = v32;
  a3[1] = v33;
  v35 = *a2;
  v36 = *a1;
  if (*a2 < *a1)
  {
    v37 = a1[1];
    v38 = a2[1];
LABEL_24:
    *a1 = v35;
    a1[1] = v38;
    *a2 = v36;
    a2[1] = v37;
    return result;
  }

  if (v36 >= v35)
  {
    v38 = a2[1];
    v37 = a1[1];
    if (v38 < v37)
    {
      goto LABEL_24;
    }
  }

  return result;
}

unint64_t *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<MIL::Builder::OperationBuilder *,unsigned long> *>(unint64_t *result, unint64_t *a2)
{
  if (result == a2)
  {
    return result;
  }

  v2 = result + 2;
  if (result + 2 == a2)
  {
    return result;
  }

  v3 = 0;
  v4 = result;
  do
  {
    v5 = v4;
    v4 = v2;
    v6 = v5[2];
    v7 = *v5;
    if (v6 >= *v5)
    {
      if (v7 < v6)
      {
        goto LABEL_19;
      }

      v8 = v5[3];
      v9 = v5[1];
      if (v8 >= v9)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v8 = v5[3];
      v9 = v5[1];
    }

    v5[2] = v7;
    v4[1] = v9;
    v10 = result;
    if (v5 == result)
    {
      goto LABEL_18;
    }

    v11 = v3;
    while (1)
    {
      v12 = *(result + v11 - 16);
      if (v6 >= v12)
      {
        break;
      }

      v13 = *(result + v11 - 8);
LABEL_12:
      v5 -= 2;
      v14 = (result + v11);
      *v14 = v12;
      v14[1] = v13;
      v11 -= 16;
      if (!v11)
      {
        v10 = result;
        goto LABEL_18;
      }
    }

    if (v12 >= v6)
    {
      v10 = (result + v11);
      v13 = *(result + v11 - 8);
      if (v8 >= v13)
      {
        goto LABEL_18;
      }

      goto LABEL_12;
    }

    v10 = v5;
LABEL_18:
    *v10 = v6;
    v10[1] = v8;
LABEL_19:
    v2 = v4 + 2;
    v3 += 16;
  }

  while (v4 + 2 != a2);
  return result;
}

unint64_t *std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<MIL::Builder::OperationBuilder *,unsigned long> *>(unint64_t *result, unint64_t *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      for (i = result + 1; ; i += 2)
      {
        v4 = result;
        result = v2;
        v5 = v4[2];
        v6 = *v4;
        if (v5 < *v4)
        {
          break;
        }

        if (v6 >= v5)
        {
          v7 = v4[3];
          if (v7 < v4[1])
          {
            goto LABEL_6;
          }
        }

LABEL_14:
        v2 = result + 2;
        if (result + 2 == a2)
        {
          return result;
        }
      }

      v7 = v4[3];
LABEL_6:
      for (j = i; ; j -= 2)
      {
        v9 = *j;
        j[1] = v6;
        j[2] = v9;
        v6 = *(j - 3);
        if (v5 >= v6 && (v6 < v5 || v7 >= *(j - 2)))
        {
          break;
        }
      }

      *(j - 1) = v5;
      *j = v7;
      goto LABEL_14;
    }
  }

  return result;
}

unint64_t *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<MIL::Builder::OperationBuilder *,unsigned long> *,std::__less<void,void> &>(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a2 - 2);
  if (*a1 < v4 || v4 >= v2 && v3 < *(a2 - 1))
  {
    i = a1;
    do
    {
      v7 = i[2];
      i += 2;
      v6 = v7;
    }

    while (v2 >= v7 && (v6 < v2 || v3 >= i[1]));
  }

  else
  {
      ;
    }
  }

  if (i < a2)
  {
    for (a2 -= 2; v2 < v4 || v4 >= v2 && v3 < a2[1]; a2 -= 2)
    {
      v8 = *(a2 - 2);
      v4 = v8;
    }
  }

  if (i < a2)
  {
    v9 = *i;
    v10 = *a2;
    do
    {
      *i = v10;
      *a2 = v9;
      v11 = i[2];
      i += 2;
      v9 = v11;
      v12 = *(i - 1);
      *(i - 1) = a2[1];
      a2[1] = v12;
      while (v2 >= v9 && (v9 < v2 || v3 >= i[1]))
      {
        v13 = i[2];
        i += 2;
        v9 = v13;
      }

      do
      {
        do
        {
          v14 = *(a2 - 2);
          a2 -= 2;
          v10 = v14;
        }

        while (v2 < v14);
      }

      while (v10 >= v2 && v3 < a2[1]);
    }

    while (i < a2);
  }

  if (i - 2 != a1)
  {
    v15 = *(i - 1);
    *a1 = *(i - 2);
    a1[1] = v15;
  }

  *(i - 2) = v2;
  *(i - 1) = v3;
  return i;
}

unint64_t *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<MIL::Builder::OperationBuilder *,unsigned long> *,std::__less<void,void> &>(unint64_t *a1, unint64_t *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[1];
  while (1)
  {
    v5 = a1[v2 + 2];
    if (v5 >= v3 && (v3 < v5 || a1[v2 + 3] >= v4))
    {
      break;
    }

    v2 += 2;
  }

  v6 = &a1[v2 + 2];
  if (v2 * 8)
  {
    do
    {
      v8 = *(a2 - 2);
      a2 -= 2;
      v7 = v8;
    }

    while (v8 >= v3 && (v3 < v7 || a2[1] >= v4));
  }

  else
  {
LABEL_19:
    if (v6 < a2)
    {
      do
      {
        v10 = *(a2 - 2);
        a2 -= 2;
        v9 = v10;
        if (v10 < v3)
        {
          break;
        }

        if (v3 < v9)
        {
          goto LABEL_19;
        }
      }

      while (a2[1] >= v4 && v6 < a2);
    }
  }

  if (v6 >= a2)
  {
    v13 = v6;
  }

  else
  {
    v12 = *a2;
    v13 = v6;
    v14 = a2;
    do
    {
      v15 = v13[1];
      v16 = v14[1];
      *v13 = v12;
      v13[1] = v16;
      *v14 = v5;
      v14[1] = v15;
      do
      {
        do
        {
          v17 = v13[2];
          v13 += 2;
          v5 = v17;
        }

        while (v17 < v3);
      }

      while (v3 >= v5 && v13[1] < v4);
      do
      {
        v18 = *(v14 - 2);
        v14 -= 2;
        v12 = v18;
      }

      while (v18 >= v3 && (v3 < v12 || v14[1] >= v4));
    }

    while (v13 < v14);
  }

  if (v13 - 2 != a1)
  {
    v19 = *(v13 - 1);
    *a1 = *(v13 - 2);
    a1[1] = v19;
  }

  *(v13 - 2) = v3;
  *(v13 - 1) = v4;
  return v13 - 2;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<MIL::Builder::OperationBuilder *,unsigned long> *>(unint64_t *a1, unint64_t *a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<MIL::Builder::OperationBuilder *,unsigned long> *,0>(a1, a1 + 2, a2 - 2);
        return 1;
      case 4:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<MIL::Builder::OperationBuilder *,unsigned long> *,0>(a1, a1 + 2, a1 + 4);
        v23 = *(a2 - 2);
        v24 = a1[4];
        if (v23 >= v24)
        {
          if (v24 < v23)
          {
            return 1;
          }

          v26 = *(a2 - 1);
          v25 = a1[5];
          if (v26 >= v25)
          {
            return 1;
          }
        }

        else
        {
          v25 = a1[5];
          v26 = *(a2 - 1);
        }

        a1[4] = v23;
        a1[5] = v26;
        *(a2 - 2) = v24;
        *(a2 - 1) = v25;
        v27 = a1[4];
        v28 = a1[2];
        if (v27 >= v28)
        {
          if (v28 < v27)
          {
            return 1;
          }

          v30 = a1[5];
          v29 = a1[3];
          if (v30 >= v29)
          {
            return 1;
          }
        }

        else
        {
          v29 = a1[3];
          v30 = a1[5];
        }

        a1[2] = v27;
        a1[3] = v30;
        a1[4] = v28;
        a1[5] = v29;
        v31 = *a1;
        if (v27 >= *a1)
        {
          if (v31 < v27)
          {
            return 1;
          }

          v32 = a1[1];
          if (v30 >= v32)
          {
            return 1;
          }
        }

        else
        {
          v32 = a1[1];
        }

        *a1 = v27;
        a1[1] = v30;
        result = 1;
        a1[2] = v31;
        a1[3] = v32;
        return result;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<MIL::Builder::OperationBuilder *,unsigned long> *,0>(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2);
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
      v5 = *(a2 - 2);
      v6 = *a1;
      if (v5 < *a1)
      {
        v7 = a1[1];
        v8 = *(a2 - 1);
LABEL_6:
        *a1 = v5;
        a1[1] = v8;
        result = 1;
        *(a2 - 2) = v6;
        *(a2 - 1) = v7;
        return result;
      }

      if (v6 >= v5)
      {
        v8 = *(a2 - 1);
        v7 = a1[1];
        if (v8 < v7)
        {
          goto LABEL_6;
        }
      }

      return 1;
    }
  }

  v10 = a1 + 4;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<MIL::Builder::OperationBuilder *,unsigned long> *,0>(a1, a1 + 2, a1 + 4);
  v11 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = 0;
  while (2)
  {
    v14 = *v11;
    v15 = *v10;
    if (*v11 >= *v10)
    {
      if (v15 < v14)
      {
        goto LABEL_28;
      }

      v16 = v11[1];
      v17 = v10[1];
      if (v16 >= v17)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v16 = v11[1];
      v17 = v10[1];
    }

    *v11 = v15;
    v11[1] = v17;
    v18 = v12;
    while (1)
    {
      v19 = a1 + v18;
      v20 = *(a1 + v18 + 16);
      if (v14 >= v20)
      {
        break;
      }

      v21 = *(v19 + 3);
LABEL_21:
      *(v19 + 4) = v20;
      *(a1 + v18 + 40) = v21;
      v18 -= 16;
      if (v18 == -32)
      {
        v22 = a1;
        goto LABEL_27;
      }
    }

    if (v20 >= v14)
    {
      v21 = *(a1 + v18 + 24);
      if (v16 < v21)
      {
        goto LABEL_21;
      }
    }

    v22 = (a1 + v18 + 32);
LABEL_27:
    *v22 = v14;
    v22[1] = v16;
    if (++v13 != 8)
    {
LABEL_28:
      v10 = v11;
      v12 += 16;
      v11 += 2;
      if (v11 == a2)
      {
        return 1;
      }

      continue;
    }

    return v11 + 2 == a2;
  }
}

unint64_t *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<MIL::Builder::OperationBuilder *,unsigned long> *,std::pair<MIL::Builder::OperationBuilder *,unsigned long> *>(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[2 * v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<MIL::Builder::OperationBuilder *,unsigned long> *>(a1, a4, v8, v11);
        v11 -= 2;
        --v10;
      }

      while (v10);
    }

    i = a2;
    if (a2 != a3)
    {
      for (i = a2; i != a3; i += 2)
      {
        v13 = *i;
        v14 = *a1;
        if (*i >= *a1)
        {
          if (v14 < v13)
          {
            continue;
          }

          v15 = i[1];
          v16 = a1[1];
          if (v15 >= v16)
          {
            continue;
          }
        }

        else
        {
          v15 = i[1];
          v16 = a1[1];
        }

        *i = v14;
        i[1] = v16;
        *a1 = v13;
        a1[1] = v15;
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<MIL::Builder::OperationBuilder *,unsigned long> *>(a1, a4, v8, a1);
      }
    }

    if (v8 >= 2)
    {
      v17 = a2 - 2;
      do
      {
        v19 = *a1;
        v18 = a1[1];
        v20 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<MIL::Builder::OperationBuilder *,unsigned long> *>(a1, a4, v8);
        if (v17 == v20)
        {
          *v20 = v19;
          v20[1] = v18;
        }

        else
        {
          v21 = v17[1];
          *v20 = *v17;
          v20[1] = v21;
          *v17 = v19;
          v17[1] = v18;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<MIL::Builder::OperationBuilder *,unsigned long> *>(a1, (v20 + 2), a4, ((v20 + 2) - a1) >> 4);
        }

        v17 -= 2;
      }

      while (v8-- > 2);
    }

    return i;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<MIL::Builder::OperationBuilder *,unsigned long> *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = (result + 16 * v7);
      v9 = v6 + 2;
      if (v9 < a3)
      {
        v10 = v8[2];
        if (*v8 < v10 || v10 >= *v8 && v8[1] < v8[3])
        {
          v8 += 2;
          v7 = v9;
        }
      }

      v11 = *v8;
      v12 = *a4;
      if (*v8 >= *a4)
      {
        if (v12 >= v11)
        {
          v14 = v8[1];
          v13 = a4[1];
          if (v14 < v13)
          {
            return result;
          }
        }

        else
        {
          v13 = a4[1];
          v14 = v8[1];
        }

        *a4 = v11;
        a4[1] = v14;
        if (v5 >= v7)
        {
          while (1)
          {
            v16 = 2 * v7;
            v7 = (2 * v7) | 1;
            v15 = (result + 16 * v7);
            v17 = v16 + 2;
            if (v17 < a3)
            {
              v18 = v15[2];
              if (*v15 < v18 || v18 >= *v15 && v15[1] < v15[3])
              {
                v15 += 2;
                v7 = v17;
              }
            }

            v19 = *v15;
            if (*v15 < v12)
            {
              break;
            }

            v20 = v15[1];
            if (v12 >= v19 && v20 < v13)
            {
              break;
            }

            *v8 = v19;
            v8[1] = v20;
            v8 = v15;
            if (v5 < v7)
            {
              goto LABEL_14;
            }
          }
        }

        v15 = v8;
LABEL_14:
        *v15 = v12;
        v15[1] = v13;
      }
    }
  }

  return result;
}

void *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<MIL::Builder::OperationBuilder *,unsigned long> *>(void *result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = result;
    v5 = &result[2 * v3];
    result = v5 + 2;
    v6 = 2 * v3;
    v3 = (2 * v3) | 1;
    v7 = v6 + 2;
    if (v7 < a3)
    {
      v8 = v5[4];
      v9 = v5[2];
      if (v9 < v8 || v8 >= v9 && v5[3] < v5[5])
      {
        result = v5 + 4;
        v3 = v7;
      }
    }

    v10 = result[1];
    *v4 = *result;
    v4[1] = v10;
  }

  while (v3 <= (a3 - 2) / 2);
  return result;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<MIL::Builder::OperationBuilder *,unsigned long> *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = (result + 16 * (v4 >> 1));
    v7 = *v6;
    v8 = *(a2 - 16);
    if (*v6 >= v8)
    {
      if (v8 < v7)
      {
        return result;
      }

      v10 = v6[1];
      v9 = *(a2 - 8);
      if (v10 >= v9)
      {
        return result;
      }
    }

    else
    {
      v9 = *(a2 - 8);
      v10 = v6[1];
    }

    *(a2 - 16) = v7;
    *(a2 - 8) = v10;
    if (v4 >= 2)
    {
      while (1)
      {
        v12 = v5 - 1;
        v5 = (v5 - 1) >> 1;
        v11 = (result + 16 * v5);
        v13 = *v11;
        if (*v11 >= v8)
        {
          if (v8 < v13)
          {
            break;
          }

          v14 = v11[1];
          if (v14 >= v9)
          {
            break;
          }
        }

        else
        {
          v14 = v11[1];
        }

        *v6 = v13;
        v6[1] = v14;
        v6 = (result + 16 * v5);
        if (v12 <= 1)
        {
          goto LABEL_11;
        }
      }
    }

    v11 = v6;
LABEL_11:
    *v11 = v8;
    v11[1] = v9;
  }

  return result;
}

void MIL::Transform::anonymous namespace::TopoSortViaDepthFirstSearch::Push(MIL::Transform::_anonymous_namespace_::TopoSortViaDepthFirstSearch *this, uint64_t a2)
{
  v5 = a2;
  v2 = *(this + 10);
  v3 = a2 - *(this + 9);
  if (*(this + 11) - v2 <= v3)
  {
    std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
  }

  if (*(v2 + v3))
  {
    if (*(v2 + v3) == 1)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::invalid_argument::invalid_argument[abi:ne200100](exception, "Program's data dependency graph has a cycle");
      __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
    }
  }

  else
  {
    *(v2 + v3) = 1;
    std::vector<unsigned long long>::push_back[abi:ne200100](this + 13, &v5);
  }
}

void MIL::Transform::ProgramTransformer::ProgramTransformerImpl::MatchAndReplaceHelper::~MatchAndReplaceHelper(MIL::Transform::ProgramTransformer::ProgramTransformerImpl::MatchAndReplaceHelper *this)
{
  v2 = *(this + 91);
  if (v2)
  {
    *(this + 92) = v2;
    operator delete(v2);
  }

  v3 = *(this + 88);
  if (v3)
  {
    *(this + 89) = v3;
    operator delete(v3);
  }

  v4 = *(this + 85);
  if (v4)
  {
    *(this + 86) = v4;
    operator delete(v4);
  }

  v5 = *(this + 82);
  if (v5)
  {
    *(this + 83) = v5;
    operator delete(v5);
  }

  v6 = *(this + 78);
  if (v6)
  {
    *(this + 79) = v6;
    operator delete(v6);
  }

  v7 = *(this + 75);
  if (v7)
  {
    *(this + 76) = v7;
    operator delete(v7);
  }

  v8 = *(this + 69);
  if (v8)
  {
    *(this + 70) = v8;
    operator delete(v8);
  }

  v9 = *(this + 66);
  if (v9)
  {
    operator delete(v9);
  }

  v10 = *(this + 62);
  if (v10)
  {
    *(this + 63) = v10;
    operator delete(v10);
  }

  v11 = *(this + 59);
  if (v11)
  {
    *(this + 60) = v11;
    operator delete(v11);
  }

  v23 = (this + 448);
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&v23);
  v12 = *(this + 53);
  if (v12)
  {
    *(this + 54) = v12;
    operator delete(v12);
  }

  v13 = *(this + 50);
  if (v13)
  {
    *(this + 51) = v13;
    operator delete(v13);
  }

  v14 = *(this + 47);
  if (v14)
  {
    operator delete(v14);
  }

  v15 = *(this + 43);
  if (v15)
  {
    *(this + 44) = v15;
    operator delete(v15);
  }

  v16 = *(this + 40);
  if (v16)
  {
    *(this + 41) = v16;
    operator delete(v16);
  }

  v17 = *(this + 37);
  if (v17)
  {
    operator delete(v17);
  }

  v18 = *(this + 33);
  if (v18)
  {
    *(this + 34) = v18;
    operator delete(v18);
  }

  v19 = *(this + 30);
  if (v19)
  {
    *(this + 31) = v19;
    operator delete(v19);
  }

  v20 = *(this + 27);
  if (v20)
  {
    *(this + 28) = v20;
    operator delete(v20);
  }

  v21 = *(this + 24);
  if (v21)
  {
    *(this + 25) = v21;
    operator delete(v21);
  }

  v22 = *(this + 21);
  if (v22)
  {
    *(this + 22) = v22;
    operator delete(v22);
  }

  MIL::Matching::Match::~Match((this + 160));
  MIL::Transform::MatchContext::MatchContextImpl::~MatchContextImpl(this);
}

uint64_t MIL::Transform::ProgramTransformer::ProgramTransformerImpl::RemoveRedundantOps(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v10 = (a3 + 16);
  while (1)
  {
    v10 = *v10;
    if (!v10)
    {
      break;
    }

    if (!MIL::Builder::BlockBuilder::TryGetVariable(*a2, (v10 + 2)))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::operator+<char>();
      std::logic_error::logic_error(exception, v52);
      exception->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
    }
  }

  v12 = *a4;
  v13 = a4[1];
  while (v12 != v13)
  {
    if (!MIL::Builder::BlockBuilder::TryGetVariable(*a2, v12))
    {
      v34 = __cxa_allocate_exception(0x10uLL);
      std::operator+<char>();
      std::logic_error::logic_error(v34, v52);
      v34->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(v34, off_278235F80, MEMORY[0x277D82610]);
    }

    v12 += 24;
  }

  NumOperations = MIL::Builder::BlockBuilder::GetNumOperations(*a2);
  v54 = 0u;
  v55 = 0u;
  v56 = 1065353216;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__rehash<true>(&v54, NumOperations);
  if (NumOperations)
  {
    for (i = 0; i != NumOperations; ++i)
    {
      MIL::Builder::BlockBuilder::GetOperation(*a2, i, v52);
      v51[0] = v52;
      *(std::__hash_table<std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,BOOL>,std::__unordered_map_hasher<std::shared_ptr<MIL::Builder::OperationBuilder>,std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,BOOL>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,true>,std::__unordered_map_equal<std::shared_ptr<MIL::Builder::OperationBuilder>,std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,BOOL>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,BOOL>>>::__emplace_unique_key_args<std::shared_ptr<MIL::Builder::OperationBuilder>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<MIL::Builder::OperationBuilder>&&>,std::tuple<>>(&v54, v52) + 32) = 0;
      if (*&v52[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&v52[8]);
      }
    }
  }

  v53 = 0u;
  memset(v52, 0, sizeof(v52));
  v51[0] = a2;
  v51[1] = a3;
  v51[2] = &v54;
  v51[3] = v52;
  v51[4] = a5;
  v17 = *a4;
  v16 = a4[1];
  if (*a4 != v16)
  {
    do
    {
      MIL::Transform::ProgramTransformer::ProgramTransformerImpl::RemoveRedundantOps(std::shared_ptr<MIL::Builder::BlockBuilder> const&,std::unordered_set<std::string> const&,std::vector<std::string> const&,std::unordered_set<std::string>&)::{lambda(std::string const&)#1}::operator()(v51, v17);
      v17 += 3;
    }

    while (v17 != v16);
    while (*(&v53 + 1))
    {
      v18 = *(*&v52[8] + ((v53 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v53;
      v20 = *v18;
      v19 = *(v18 + 8);
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v36 = v19;
      MIL::Builder::OperationBuilder::GetBlocks(v20, v50);
      v22 = v50[0];
      v21 = v50[1];
      while (v22 != v21)
      {
        v23 = *v22;
        v24 = *(v22 + 8);
        v48 = *v22;
        v49 = v24;
        if (v24)
        {
          atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        MIL::Builder::BlockBuilder::GetInputNames(v23, &v47);
        std::unordered_set<std::string>::unordered_set<std::__wrap_iter<std::string*>>(&__p, &v47.__begin_->__r_.__value_.__l.__data_, &v47.__end_->__r_.__value_.__l.__data_);
        v41 = 0u;
        v42 = 0u;
        v43 = 1065353216;
        v38 = v48;
        v39 = v49;
        if (v49)
        {
          atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        MIL::Transform::ProgramTransformer::ProgramTransformerImpl::GetBlockOutsAndWriteEffectOpIns(&v38, v40);
        MIL::Transform::ProgramTransformer::ProgramTransformerImpl::RemoveRedundantOps(a1, &v48, &__p, v40, &v41);
        v57 = v40;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v57);
        if (v39)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v39);
        }

        for (j = v42; j; j = *j)
        {
          MIL::Transform::ProgramTransformer::ProgramTransformerImpl::RemoveRedundantOps(std::shared_ptr<MIL::Builder::BlockBuilder> const&,std::unordered_set<std::string> const&,std::vector<std::string> const&,std::unordered_set<std::string>&)::{lambda(std::string const&)#1}::operator()(v51, j + 2);
        }

        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&v41);
        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&__p);
        __p = &v47;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
        if (v49)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v49);
        }

        v22 += 16;
      }

      __p = v50;
      std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&__p);
      MIL::Builder::OperationBuilder::GetInputArguments(v20, &__p);
      for (k = v46; k; k = *k)
      {
        Name = MIL::Builder::Variable::TryGetName(k[2]);
        if (Name)
        {
          MIL::Transform::ProgramTransformer::ProgramTransformerImpl::RemoveRedundantOps(std::shared_ptr<MIL::Builder::BlockBuilder> const&,std::unordered_set<std::string> const&,std::vector<std::string> const&,std::unordered_set<std::string>&)::{lambda(std::string const&)#1}::operator()(v51, Name);
        }
      }

      std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(&__p);
      std::deque<std::shared_ptr<MIL::Builder::OperationBuilder>>::pop_front(v52);
      if (v36)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v36);
      }
    }
  }

  __p = 0;
  v45 = 0;
  v46 = 0;
  v47.__begin_ = 0;
  if (NumOperations)
  {
    for (m = 0; m < NumOperations; v47.__begin_ = m)
    {
      MIL::Builder::BlockBuilder::GetOperation(*a2, m, &v41);
      v50[0] = &v41;
      if ((std::__hash_table<std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,BOOL>,std::__unordered_map_hasher<std::shared_ptr<MIL::Builder::OperationBuilder>,std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,BOOL>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,true>,std::__unordered_map_equal<std::shared_ptr<MIL::Builder::OperationBuilder>,std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,BOOL>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,BOOL>>>::__emplace_unique_key_args<std::shared_ptr<MIL::Builder::OperationBuilder>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<MIL::Builder::OperationBuilder> const&>,std::tuple<>>(&v54, &v41)[4] & 1) == 0)
      {
        v37 = v41;
        if (*(&v41 + 1))
        {
          atomic_fetch_add_explicit((*(&v41 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v29 = MIL::Transform::HasWriteEffectAndNoOutputs(&v37);
        if (*(&v37 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v37 + 1));
        }

        if (!v29)
        {
          std::vector<unsigned long long>::push_back[abi:ne200100](&__p, &v47);
        }
      }

      if (*(&v41 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v41 + 1));
      }

      m = (&v47.__begin_->__r_.__value_.__l.__data_ + 1);
    }

    v30 = __p;
  }

  else
  {
    v30 = 0;
  }

  v31 = v45 - v30;
  if (*(&v55 + 1) && v31 == *(&v55 + 1))
  {
    v35 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v35, "produced an empty program!");
    __cxa_throw(v35, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (v45 == v30)
  {
    v32 = 0;
  }

  else
  {
    v32 = v30;
  }

  MIL::Builder::BlockBuilder::RemoveOperations(*a2, v32, v31, 1);
  if (__p)
  {
    v45 = __p;
    operator delete(__p);
  }

  std::deque<std::shared_ptr<MIL::Builder::OperationBuilder>>::~deque[abi:ne200100](v52);
  return std::__hash_table<std::shared_ptr<MIL::Builder::OperationBuilder>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>>::~__hash_table(&v54);
}

void sub_2180C7380(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::deque<std::shared_ptr<MIL::Builder::OperationBuilder>>::~deque[abi:ne200100]((v35 - 192));
  std::__hash_table<std::shared_ptr<MIL::Builder::OperationBuilder>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>>::~__hash_table(v35 - 144);
  _Unwind_Resume(a1);
}

unint64_t MIL::Transform::ProgramTransformer::ProgramTransformerImpl::GetBlockOutsAndWriteEffectOpIns@<X0>(MIL::Builder::BlockBuilder **a1@<X1>, void *a2@<X8>)
{
  MIL::Builder::BlockBuilder::GetOutputNames(*a1, a2);
  for (i = 0; ; ++i)
  {
    result = MIL::Builder::BlockBuilder::GetNumOperations(*a1);
    if (i >= result)
    {
      break;
    }

    MIL::Builder::BlockBuilder::GetOperation(*a1, i, &v13);
    v12 = v13;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v6 = MIL::Transform::HasWriteEffectAndNoOutputs(&v12);
    if (*(&v12 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v12 + 1));
    }

    if (v6)
    {
      MIL::Builder::OperationBuilder::GetInputArguments(v13, v10);
      for (j = v11; j; j = *j)
      {
        Name = MIL::Builder::Variable::TryGetName(j[2]);
        if (Name)
        {
          Type = MIL::Builder::Variable::TryGetType(j[2]);
          if (!MIL::IRValueType::TryCastAsStateType(Type))
          {
            std::vector<std::string>::push_back[abi:ne200100](a2, Name);
          }
        }
      }

      std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v10);
    }

    if (*(&v13 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v13 + 1));
    }
  }

  return result;
}

void sub_2180C75FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void MIL::Transform::ProgramTransformer::ProgramTransformerImpl::RemoveRedundantOps(std::shared_ptr<MIL::Builder::BlockBuilder> const&,std::unordered_set<std::string> const&,std::vector<std::string> const&,std::unordered_set<std::string>&)::{lambda(std::string const&)#1}::operator()(uint64_t a1, const void **a2)
{
  if (!std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(*(a1 + 8), a2))
  {
    MIL::Builder::BlockBuilder::TryGetOperation(**a1, a2, &v6);
    if (v6)
    {
      v4 = *(a1 + 16);
      v7 = &v6;
      if ((std::__hash_table<std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,BOOL>,std::__unordered_map_hasher<std::shared_ptr<MIL::Builder::OperationBuilder>,std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,BOOL>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,true>,std::__unordered_map_equal<std::shared_ptr<MIL::Builder::OperationBuilder>,std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,BOOL>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,BOOL>>>::__emplace_unique_key_args<std::shared_ptr<MIL::Builder::OperationBuilder>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<MIL::Builder::OperationBuilder> const&>,std::tuple<>>(v4, &v6)[4] & 1) == 0)
      {
        v5 = *(a1 + 16);
        v7 = &v6;
        *(std::__hash_table<std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,BOOL>,std::__unordered_map_hasher<std::shared_ptr<MIL::Builder::OperationBuilder>,std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,BOOL>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,true>,std::__unordered_map_equal<std::shared_ptr<MIL::Builder::OperationBuilder>,std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,BOOL>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,BOOL>>>::__emplace_unique_key_args<std::shared_ptr<MIL::Builder::OperationBuilder>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<MIL::Builder::OperationBuilder> const&>,std::tuple<>>(v5, &v6) + 32) = 1;
        std::deque<std::shared_ptr<MIL::Builder::OperationBuilder>>::push_back(*(a1 + 24), &v6);
      }
    }

    else
    {
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(*(a1 + 32), a2);
    }

    if (*(&v6 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v6 + 1));
    }
  }
}

void sub_2180C7734(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::deque<std::shared_ptr<MIL::Builder::OperationBuilder>>::pop_front(void *a1)
{
  v2 = a1[4];
  v3 = *(*(a1[1] + ((v2 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v2 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    v2 = a1[4];
  }

  v4 = a1[5] - 1;
  a1[4] = v2 + 1;
  a1[5] = v4;

  return std::deque<std::shared_ptr<MIL::Builder::OperationBuilder>>::__maybe_remove_front_spare[abi:ne200100](a1, 1);
}

void *std::__hash_table<std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,BOOL>,std::__unordered_map_hasher<std::shared_ptr<MIL::Builder::OperationBuilder>,std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,BOOL>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,true>,std::__unordered_map_equal<std::shared_ptr<MIL::Builder::OperationBuilder>,std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,BOOL>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,BOOL>>>::__emplace_unique_key_args<std::shared_ptr<MIL::Builder::OperationBuilder>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<MIL::Builder::OperationBuilder>&&>,std::tuple<>>(void *a1, void *a2)
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

void *std::deque<std::shared_ptr<MIL::Builder::OperationBuilder>>::push_back(void *result, __int128 *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 32 * (v4 - v5) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    result = std::deque<std::shared_ptr<MIL::Builder::OperationBuilder>>::__add_back_capacity(result);
    v5 = v3[1];
    v7 = v3[5];
    v8 = v7 + v3[4];
  }

  v9 = *a2;
  *(*(v5 + ((v8 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v8) = *a2;
  if (*(&v9 + 1))
  {
    atomic_fetch_add_explicit((*(&v9 + 1) + 8), 1uLL, memory_order_relaxed);
    v7 = v3[5];
  }

  v3[5] = v7 + 1;
  return result;
}

void *std::deque<std::shared_ptr<MIL::Builder::OperationBuilder>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x100;
  v3 = v1 - 256;
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<MIL::Pass>>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(a1, &v10);
}

void sub_2180C7C70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::deque<std::shared_ptr<MIL::Builder::OperationBuilder>>::__maybe_remove_front_spare[abi:ne200100](uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x100)
  {
    a2 = 1;
  }

  if (v2 < 0x200)
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
    *(a1 + 32) -= 256;
  }

  return v4 ^ 1u;
}

void *std::__hash_table<std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,BOOL>,std::__unordered_map_hasher<std::shared_ptr<MIL::Builder::OperationBuilder>,std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,BOOL>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,true>,std::__unordered_map_equal<std::shared_ptr<MIL::Builder::OperationBuilder>,std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,BOOL>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,BOOL>>>::__emplace_unique_key_args<std::shared_ptr<MIL::Builder::OperationBuilder>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<MIL::Builder::OperationBuilder> const&>,std::tuple<>>(void *a1, void *a2)
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

uint64_t std::deque<std::shared_ptr<MIL::Builder::OperationBuilder>>::~deque[abi:ne200100](void *a1)
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
    v6 = &v2[v5 >> 8];
    v7 = *v6;
    v8 = *v6 + 16 * v5;
    v9 = *(v2 + (((a1[5] + v5) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 40) + v5);
    if (v8 != v9)
    {
      do
      {
        v10 = *(v8 + 8);
        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
          v7 = *v6;
        }

        v8 += 16;
        if (v8 - v7 == 4096)
        {
          v11 = v6[1];
          ++v6;
          v7 = v11;
          v8 = v11;
        }
      }

      while (v8 != v9);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v12 = v3 - v2;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v12 = v3 - v2;
    }

    while (v12 > 2);
  }

  if (v12 == 1)
  {
    v13 = 128;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_18;
    }

    v13 = 256;
  }

  a1[4] = v13;
LABEL_18:
  while (v2 != v3)
  {
    v14 = *v2++;
    operator delete(v14);
  }

  return std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::~__split_buffer(a1);
}

uint64_t std::unordered_set<std::string>::unordered_set<std::__wrap_iter<std::string const*>>(uint64_t a1, const void **a2, const void **a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a1, v5);
      v5 += 3;
    }

    while (v5 != a3);
  }

  return a1;
}

void MIL::Transform::ProgramTransformer::ProgramTransformerImpl::GetInputsAndOutputs(uint64_t *a1@<X0>, const void **a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X8>)
{
  MIL::Builder::ProgramBuilder::GetFunction(a1[4], a2, &v46);
  v9 = v46;
  v10 = MIL::Builder::FunctionBuilder::SelectedSpecialization(v46);
  MIL::Builder::FunctionBuilder::GetBlock(v9, v10, &v44);
  v27 = a5;
  MIL::Builder::BlockBuilder::GetOperations(v44, &v42);
  memset(v40, 0, sizeof(v40));
  v41 = 1065353216;
  memset(v38, 0, sizeof(v38));
  v39 = 1065353216;
  v11 = v42;
  if (v43 != v42)
  {
    v12 = 0;
    do
    {
      v13 = v11 + 16 * v12;
      v15 = *v13;
      v14 = *(v13 + 8);
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      MIL::Transform::ProgramTransformer::ProgramTransformerImpl::GetAllConsumedVariableNames(a1, v15, v36);
      for (i = v37; i; i = *i)
      {
        v28[0] = (i + 2);
        std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v40, i + 2)[5] = v12;
      }

      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v36);
      for (j = 0; j < MIL::Builder::OperationBuilder::GetNumOutputs(v15); ++j)
      {
        v36[0] = MIL::Builder::OperationBuilder::GetOutputName(v15, j);
        std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v38, v36[0])[5] = v12;
      }

      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      ++v12;
      v11 = v42;
    }

    while (v12 < (v43 - v42) >> 4);
  }

  MIL::Builder::BlockBuilder::GetOutputNames(v44, v35);
  std::unordered_set<std::string>::unordered_set<std::__wrap_iter<std::string*>>(v36, v35[0], v35[1]);
  memset(&v34, 0, sizeof(v34));
  memset(v33, 0, sizeof(v33));
  v31 = 0;
  __sz = 0;
  *v30 = &v31;
  if (a3 < a4)
  {
    v18 = a3;
    do
    {
      v19 = v42 + 16 * v18;
      v21 = *v19;
      v20 = *(v19 + 8);
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      MIL::Transform::ProgramTransformer::ProgramTransformerImpl::GetAllConsumedVariableNames(a1, v21, v28);
      for (k = v29; k; k = *k)
      {
        v23 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(v38, k + 2);
        if (!v23 || v23[5] < a3)
        {
          std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(v30, k + 2);
        }
      }

      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v28);
      for (m = 0; m < MIL::Builder::OperationBuilder::GetNumOutputs(v21); ++m)
      {
        OutputName = MIL::Builder::OperationBuilder::GetOutputName(v21, m);
        v28[0] = OutputName;
        if (std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v40, OutputName)[5] >= a4 || std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(v36, OutputName))
        {
          std::vector<std::string>::push_back[abi:ne200100](v33, OutputName);
        }
      }

      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      }

      ++v18;
    }

    while (v18 != a4);
  }

  std::vector<std::string>::resize(&v34, __sz);
  std::__copy_impl::operator()[abi:ne200100]<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::string*>(v28, *v30, &v31, v34.__begin_);
  std::pair<std::vector<std::string>,std::vector<std::string>>::pair[abi:ne200100]<std::vector<std::string>&,std::vector<std::string>&,0>(v27, &v34, v33);
  std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::destroy(v30, v31);
  v28[0] = v33;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v28);
  v28[0] = &v34;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v28);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v36);
  v36[0] = v35;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v36);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v38);
  v26 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v40);
  *&v40[0] = &v42;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](v26);
  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }
}

void sub_2180C84EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, void **a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  a28 = &a25;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a28);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a33);
  v35 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v33 - 192);
  *(v33 - 192) = v33 - 152;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](v35);
  v36 = *(v33 - 120);
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  v37 = *(v33 - 104);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  _Unwind_Resume(a1);
}

void **std::pair<std::vector<std::string>,std::vector<std::string>>::~pair(void **a1)
{
  v3 = a1 + 3;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = a1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

void MIL::Transform::ProgramTransformer::ProgramTransformerImpl::GetAllConsumedVariableNames(MIL::Transform::ProgramTransformer::ProgramTransformerImpl *this@<X0>, const void ***a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  MIL::Builder::OperationBuilder::GetParameterNames(a2, &v30);
  for (i = v31; i; i = *i)
  {
    NumArguments = MIL::Builder::OperationBuilder::GetNumArguments(a2, i + 2);
    if (NumArguments)
    {
      for (j = 0; j != NumArguments; ++j)
      {
        ArgumentForParameter = MIL::Builder::OperationBuilder::GetArgumentForParameter(a2, (i + 2), j);
        Name = MIL::Builder::Variable::TryGetName(ArgumentForParameter);
        if (Name)
        {
          std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a3, Name);
        }
      }
    }
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&v30);
  BlocksRef = MIL::Builder::OperationBuilder::GetBlocksRef(a2);
  v12 = *BlocksRef;
  v26 = BlocksRef[1];
  if (*BlocksRef != v26)
  {
    do
    {
      v14 = *v12;
      v13 = *(v12 + 8);
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v27 = v13;
      v30 = 0u;
      v31 = 0u;
      v32 = 1065353216;
      MIL::Builder::BlockBuilder::GetInputNames(v14, &v28);
      begin = v28.__begin_;
      end = v28.__end_;
      while (begin != end)
      {
        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(&v30, &begin->__r_.__value_.__l.__data_);
        ++begin;
      }

      v29[0] = &v28;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v29);
      MIL::Builder::BlockBuilder::GetOperations(v14, v29);
      v18 = v29[0];
      v17 = v29[1];
      while (v18 != v17)
      {
        v20 = *v18;
        v19 = v18[1];
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        for (k = 0; k < MIL::Builder::OperationBuilder::GetNumOutputs(v20); ++k)
        {
          OutputName = MIL::Builder::OperationBuilder::GetOutputName(v20, k);
          std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(&v30, OutputName);
        }

        MIL::Transform::ProgramTransformer::ProgramTransformerImpl::GetAllConsumedVariableNames(&v28, this, v20);
        for (m = v28.__end_cap_.__value_; m; m = m->__r_.__value_.__r.__words[0])
        {
          if (!std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(&v30, &m->__r_.__value_.__r.__words[2]))
          {
            std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a3, &m->__r_.__value_.__r.__words[2]);
          }
        }

        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&v28);
        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        }

        v18 += 2;
      }

      v28.__begin_ = v29;
      std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&v28);
      MIL::Builder::BlockBuilder::GetOutputNames(v14, &v28);
      v25 = v28.__begin_;
      for (n = v28.__end_; v25 != n; ++v25)
      {
        if (!std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(&v30, &v25->__r_.__value_.__l.__data_))
        {
          std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a3, &v25->__r_.__value_.__l.__data_);
        }
      }

      v29[0] = &v28;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v29);
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&v30);
      if (v27)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v27);
      }

      v12 += 16;
    }

    while (v12 != v26);
  }
}

uint64_t anonymous namespace::ReorderSubProgramOutputs(__int128 **a1, uint64_t *a2)
{
  memset(v20, 0, sizeof(v20));
  v21 = 1065353216;
  v3 = *a2;
  if (a2[1] != *a2)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v17 = (v3 + v5);
      std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v20, (v3 + v5))[5] = v6++;
      v3 = *a2;
      v5 += 24;
    }

    while (v6 < 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  }

  v17 = 0;
  v18 = 0;
  v19 = 0;
  v7 = *a1;
  v8 = a1[1];
  if (*a1 == v8)
  {
    v9 = 0;
    v10 = 0;
  }

  else
  {
    do
    {
      if (std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v20, v7))
      {
        std::vector<std::string>::push_back[abi:ne200100](&v17, v7);
      }

      v7 = (v7 + 24);
    }

    while (v7 != v8);
    v9 = v17;
    v10 = v18;
  }

  v11 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v9) >> 3);
  if (v11 >= 2)
  {
    v22 = v20;
    v12 = 126 - 2 * __clz(v11);
    v13 = v10 == v9 ? 0 : v12;
    v14 = *a1;
    if (*a1 != a1[1])
    {
      v15 = v17;
      do
      {
        if (std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v20, &v14->__r_.__value_.__l.__data_))
        {
          std::string::operator=(v14, v15++);
        }

        ++v14;
      }

      while (v14 != a1[1]);
    }
  }

  v23 = &v17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v23);
  return std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v20);
}

void sub_2180C8B08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  *(v2 - 56) = va;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v2 - 56));
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(va1);
  _Unwind_Resume(a1);
}

void std::vector<std::string>::resize(std::vector<std::string> *this, std::vector<std::string>::size_type __sz)
{
  end = this->__end_;
  v4 = 0xAAAAAAAAAAAAAAABLL * ((end - this->__begin_) >> 3);
  v5 = __sz >= v4;
  v6 = __sz - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::string>::__append(this, v6);
  }

  else if (!v5)
  {
    v7 = &this->__begin_[__sz];
    while (end != v7)
    {
      v8 = SHIBYTE(end[-1].__r_.__value_.__r.__words[2]);
      --end;
      if (v8 < 0)
      {
        operator delete(end->__r_.__value_.__l.__data_);
      }
    }

    this->__end_ = v7;
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_2180C8E30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2180C8EF8(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(uint64_t a1, const void **a2)
{
  result = *std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::string>::__construct_node<std::string const&>();
  }

  return result;
}

void std::__introsort<std::_ClassicAlgPolicy,anonymous namespace::ReorderSubProgramOutputs(std::vector<std::string> &,std::vector<std::string> const&)::$_0 &,std::string*,false>(uint64_t a1, unint64_t a2, void **a3, uint64_t a4, char a5)
{
  v178 = *MEMORY[0x277D85DE8];
  while (2)
  {
    v7 = a1;
    v169 = (a2 - 24);
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v8 = v7;
          v9 = a2 - v7;
          v10 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v7) >> 3);
          a1 = v8;
          if (v10 > 2)
          {
            switch(v10)
            {
              case 3uLL:
                return;
              case 4uLL:
                return;
              case 5uLL:
                return;
            }
          }

          else
          {
            if (v10 < 2)
            {
              return;
            }

            if (v10 == 2)
            {
              v77 = *a3;
              *&v174 = a2 - 24;
              v78 = std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v77, v169)[5];
              v79 = *a3;
              *&v174 = a1;
              if (v78 < std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v79, a1)[5])
              {
                v80 = *a1;
                v175 = *(a1 + 16);
                v174 = v80;
                v81 = *v169;
                *(a1 + 16) = *(a2 - 8);
                *a1 = v81;
                v82 = v174;
                *(a2 - 8) = v175;
                *v169 = v82;
              }

              return;
            }
          }

          if (v9 <= 575)
          {
            if (a5)
            {
              if (v8 != a2)
              {
                v83 = v8 + 3;
                if (v8 + 3 != a2)
                {
                  v84 = 0;
                  v85 = v8;
                  do
                  {
                    v86 = v83;
                    v87 = *a3;
                    *&v174 = v83;
                    v88 = std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v87, v83)[5];
                    v89 = *a3;
                    *&v174 = v85;
                    if (v88 < std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v89, v85)[5])
                    {
                      v90 = *v86;
                      v175 = v86[2];
                      v174 = v90;
                      v86[1] = 0;
                      v86[2] = 0;
                      *v86 = 0;
                      v91 = v84;
                      do
                      {
                        v92 = a1 + v91;
                        if (*(a1 + v91 + 47) < 0)
                        {
                          operator delete(*(v92 + 24));
                        }

                        *(v92 + 24) = *v92;
                        *(v92 + 40) = *(v92 + 16);
                        *(v92 + 23) = 0;
                        *v92 = 0;
                        if (!v91)
                        {
                          v96 = a1;
                          goto LABEL_83;
                        }

                        v93 = *a3;
                        *&v176 = &v174;
                        v94 = std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v93, &v174)[5];
                        v95 = *a3;
                        *&v176 = a1 + v91 - 24;
                        v91 -= 24;
                      }

                      while (v94 < std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v95, v176)[5]);
                      v96 = a1 + v91 + 24;
                      if (*(a1 + v91 + 47) < 0)
                      {
                        operator delete(*v96);
                      }

LABEL_83:
                      v97 = v174;
                      *(v96 + 16) = v175;
                      *v96 = v97;
                    }

                    v83 = v86 + 3;
                    v84 += 24;
                    v85 = v86;
                  }

                  while (v86 + 3 != a2);
                }
              }
            }

            else if (v8 != a2)
            {
              v151 = v8 + 3;
              if (v8 + 3 != a2)
              {
                v152 = v8 - 3;
                do
                {
                  v153 = v151;
                  v154 = *a3;
                  *&v174 = v151;
                  v155 = std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v154, v151)[5];
                  v156 = *a3;
                  *&v174 = a1;
                  if (v155 < std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v156, a1)[5])
                  {
                    v157 = *v153;
                    v175 = v153[2];
                    v174 = v157;
                    v153[1] = 0;
                    v153[2] = 0;
                    *v153 = 0;
                    v158 = v152;
                    do
                    {
                      if (*(v158 + 71) < 0)
                      {
                        operator delete(v158[6]);
                      }

                      *(v158 + 3) = *(v158 + 3);
                      v158[8] = v158[5];
                      *(v158 + 47) = 0;
                      *(v158 + 24) = 0;
                      v159 = *a3;
                      *&v176 = &v174;
                      v160 = std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v159, &v174)[5];
                      v161 = *a3;
                      *&v176 = v158;
                      v162 = std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v161, v158);
                      v158 -= 3;
                    }

                    while (v160 < v162[5]);
                    if (*(v158 + 71) < 0)
                    {
                      operator delete(v158[6]);
                    }

                    v163 = v174;
                    v158[8] = v175;
                    *(v158 + 3) = v163;
                  }

                  v151 = v153 + 3;
                  v152 += 3;
                  a1 = v153;
                }

                while (v153 + 3 != a2);
              }
            }

            return;
          }

          if (!a4)
          {
            if (v8 != a2)
            {
              v164 = v9;
              v98 = (v10 - 2) >> 1;
              v170 = v98;
              v99 = v8;
              do
              {
                v100 = v98;
                if (v170 >= v98)
                {
                  v167 = v98;
                  v101 = (2 * v98) | 1;
                  v102 = v99 + 24 * v101;
                  v103 = 2 * v98 + 2;
                  if (v103 < v10)
                  {
                    v104 = *a3;
                    *&v174 = v99 + 24 * v101;
                    v105 = std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v104, v174)[5];
                    v106 = *a3;
                    *&v174 = v102 + 24;
                    if (v105 < std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v106, (v102 + 24))[5])
                    {
                      v102 += 24;
                      v101 = v103;
                    }
                  }

                  v107 = *a3;
                  *&v174 = v102;
                  v108 = a1 + 24 * v167;
                  v109 = std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v107, v102)[5];
                  v110 = *a3;
                  *&v174 = v108;
                  v111 = std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v110, v108);
                  v99 = a1;
                  v100 = v167;
                  if (v109 >= v111[5])
                  {
                    v112 = *v108;
                    v175 = *(v108 + 16);
                    v174 = v112;
                    *(v108 + 8) = 0;
                    *(v108 + 16) = 0;
                    *v108 = 0;
                    while (1)
                    {
                      v113 = v102;
                      if (*(v108 + 23) < 0)
                      {
                        operator delete(*v108);
                      }

                      v114 = *v102;
                      *(v108 + 16) = *(v102 + 16);
                      *v108 = v114;
                      *(v102 + 23) = 0;
                      *v102 = 0;
                      if (v170 < v101)
                      {
                        break;
                      }

                      v115 = (2 * v101) | 1;
                      v102 = v99 + 24 * v115;
                      v101 = 2 * v101 + 2;
                      if (v101 >= v10)
                      {
                        v101 = v115;
                      }

                      else
                      {
                        v116 = *a3;
                        *&v176 = v99 + 24 * v115;
                        v117 = std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v116, v176)[5];
                        v118 = *a3;
                        *&v176 = v102 + 24;
                        if (v117 >= std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v118, (v102 + 24))[5])
                        {
                          v101 = v115;
                        }

                        else
                        {
                          v102 += 24;
                        }
                      }

                      v119 = *a3;
                      *&v176 = v102;
                      v120 = std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v119, v102)[5];
                      v121 = *a3;
                      *&v176 = &v174;
                      v108 = v113;
                      v99 = a1;
                      if (v120 < std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v121, &v174)[5])
                      {
                        if (*(v113 + 23) < 0)
                        {
                          operator delete(*v113);
                        }

                        break;
                      }
                    }

                    v122 = v174;
                    *(v113 + 16) = v175;
                    *v113 = v122;
                    v100 = v167;
                  }
                }

                v98 = v100 - 1;
              }

              while (v100);
              v123 = 0xAAAAAAAAAAAAAAABLL * (v164 >> 3);
              do
              {
                v124 = 0;
                v125 = a1;
                v165 = a2;
                v168 = *a1;
                *&v176 = *(a1 + 8);
                *(&v176 + 7) = *(a1 + 15);
                v171 = *(a1 + 23);
                *(a1 + 8) = 0;
                *(a1 + 16) = 0;
                *a1 = 0;
                do
                {
                  v126 = v125;
                  v127 = v125 + 24 * v124;
                  v125 = v127 + 24;
                  v128 = 2 * v124;
                  v124 = (2 * v124) | 1;
                  v129 = v128 + 2;
                  if (v128 + 2 < v123)
                  {
                    v130 = *a3;
                    *&v174 = v127 + 24;
                    v131 = std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v130, (v127 + 24));
                    v132 = (v127 + 48);
                    v133 = v131[5];
                    v134 = *a3;
                    *&v174 = v132;
                    if (v133 < std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v134, v132)[5])
                    {
                      v125 = v132;
                      v124 = v129;
                    }

                    if (*(v126 + 23) < 0)
                    {
                      operator delete(*v126);
                    }
                  }

                  v135 = *v125;
                  *(v126 + 16) = *(v125 + 16);
                  *v126 = v135;
                  *(v125 + 23) = 0;
                  *v125 = 0;
                }

                while (v124 <= ((v123 - 2) >> 1));
                a2 -= 24;
                if (v125 == v165 - 24)
                {
                  *v125 = v168;
                  v149 = *(&v176 + 7);
                  *(v125 + 8) = v176;
                  *(v125 + 15) = v149;
                  *(v125 + 23) = v171;
                }

                else
                {
                  v136 = *(v165 - 24);
                  *(v125 + 16) = *(v165 - 8);
                  *v125 = v136;
                  *(v165 - 24) = v168;
                  v137 = v176;
                  *(v165 - 9) = *(&v176 + 7);
                  *(v165 - 16) = v137;
                  *(v165 - 1) = v171;
                  v138 = v125 - a1 + 24;
                  if (v138 >= 25)
                  {
                    v139 = (-2 - 0x5555555555555555 * (v138 >> 3)) >> 1;
                    v140 = a1 + 24 * v139;
                    v141 = *a3;
                    *&v174 = v140;
                    v142 = std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v141, v140)[5];
                    v143 = *a3;
                    *&v174 = v125;
                    if (v142 < std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v143, v125)[5])
                    {
                      v144 = *v125;
                      v175 = *(v125 + 16);
                      v174 = v144;
                      *(v125 + 8) = 0;
                      *(v125 + 16) = 0;
                      *v125 = 0;
                      while (1)
                      {
                        v145 = v140;
                        if (*(v125 + 23) < 0)
                        {
                          operator delete(*v125);
                        }

                        v146 = *v140;
                        *(v125 + 16) = *(v140 + 16);
                        *v125 = v146;
                        *(v140 + 23) = 0;
                        *v140 = 0;
                        if (!v139)
                        {
                          break;
                        }

                        v139 = (v139 - 1) >> 1;
                        v140 = a1 + 24 * v139;
                        v147 = std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(*a3, v140)[5];
                        v125 = v145;
                        if (v147 >= std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(*a3, &v174)[5])
                        {
                          if (*(v145 + 23) < 0)
                          {
                            operator delete(*v145);
                          }

                          break;
                        }
                      }

                      v148 = v174;
                      *(v145 + 16) = v175;
                      *v145 = v148;
                    }
                  }
                }
              }

              while (v123-- > 2);
            }

            return;
          }

          v11 = v10 >> 1;
          v12 = &v8[3 * (v10 >> 1)];
          if (v9 < 0xC01)
          {
            v14 = a1;
          }

          else
          {
            v13 = a1 + 24 * v11;
            v14 = a1;
            v15 = *a1;
            v175 = *(a1 + 16);
            v174 = v15;
            v16 = *v12;
            *(a1 + 16) = v12[2];
            *a1 = v16;
            v17 = v174;
            v12[2] = v175;
            *v12 = v17;
          }

          --a4;
          if (a5)
          {
            break;
          }

          v18 = *a3;
          *&v174 = v14 - 24;
          v19 = std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v18, (v14 - 24))[5];
          v20 = *a3;
          *&v174 = a1;
          v14 = a1;
          if (v19 < std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v20, a1)[5])
          {
            break;
          }

          v49 = *a1;
          v177 = *(a1 + 16);
          v176 = v49;
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
          *a1 = 0;
          v50 = *a3;
          *&v174 = &v176;
          v51 = std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v50, &v176)[5];
          v52 = *a3;
          *&v174 = a2 - 24;
          if (v51 >= std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v52, v169)[5])
          {
            v56 = a1 + 24;
            do
            {
              v7 = v56;
              if (v56 >= a2)
              {
                break;
              }

              v57 = *a3;
              *&v174 = &v176;
              v58 = std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v57, &v176)[5];
              v59 = *a3;
              *&v174 = v7;
              v60 = std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v59, v7);
              v56 = v7 + 24;
            }

            while (v58 >= v60[5]);
          }

          else
          {
            v7 = a1;
            do
            {
              v53 = *a3;
              *&v174 = &v176;
              v7 += 24;
              v54 = std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v53, &v176)[5];
              v55 = *a3;
              *&v174 = v7;
            }

            while (v54 >= std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v55, v7)[5]);
          }

          v61 = a2;
          if (v7 < a2)
          {
            v61 = a2;
            do
            {
              v62 = *a3;
              *&v174 = &v176;
              v61 -= 24;
              v63 = std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v62, &v176)[5];
              v64 = *a3;
              *&v174 = v61;
            }

            while (v63 < std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v64, v61)[5]);
          }

          while (v7 < v61)
          {
            v65 = *v7;
            v175 = *(v7 + 16);
            v174 = v65;
            v66 = *v61;
            *(v7 + 16) = *(v61 + 16);
            *v7 = v66;
            v67 = v174;
            *(v61 + 16) = v175;
            *v61 = v67;
            do
            {
              v68 = *a3;
              *&v174 = &v176;
              v7 += 24;
              v69 = std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v68, &v176)[5];
              v70 = *a3;
              *&v174 = v7;
            }

            while (v69 >= std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v70, v7)[5]);
            do
            {
              v71 = *a3;
              *&v174 = &v176;
              v61 -= 24;
              v72 = std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v71, &v176)[5];
              v73 = *a3;
              *&v174 = v61;
            }

            while (v72 < std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v73, v61)[5]);
          }

          v74 = (v7 - 24);
          if (v7 - 24 == a1)
          {
            if (*(v7 - 1) < 0)
            {
              operator delete(*v74);
            }
          }

          else
          {
            if (*(a1 + 23) < 0)
            {
              operator delete(*a1);
            }

            v75 = *v74;
            *(a1 + 16) = *(v7 - 8);
            *a1 = v75;
            *(v7 - 1) = 0;
            *(v7 - 24) = 0;
          }

          a5 = 0;
          v76 = v176;
          *(v7 - 8) = v177;
          *v74 = v76;
        }

        v21 = 0;
        v22 = *v14;
        v177 = *(v14 + 16);
        v176 = v22;
        *(v14 + 8) = 0;
        *(v14 + 16) = 0;
        *v14 = 0;
        do
        {
          v23 = *a3;
          *&v174 = v14 + v21 + 24;
          v24 = std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v23, v174)[5];
          v25 = *a3;
          *&v174 = &v176;
          v21 += 24;
        }

        while (v24 < std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v25, &v176)[5]);
        v26 = v14 + v21;
        v27 = a2;
        if (v21 == 24)
        {
          v27 = a2;
          do
          {
            if (v26 >= v27)
            {
              break;
            }

            v27 -= 3;
            v31 = *a3;
            *&v174 = v27;
            v32 = std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v31, v27)[5];
            v33 = *a3;
            *&v174 = &v176;
          }

          while (v32 >= std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v33, &v176)[5]);
        }

        else
        {
          do
          {
            v27 -= 3;
            v28 = *a3;
            *&v174 = v27;
            v29 = std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v28, v27)[5];
            v30 = *a3;
            *&v174 = &v176;
          }

          while (v29 >= std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v30, &v176)[5]);
        }

        v7 = v26;
        if (v26 < v27)
        {
          v34 = v27;
          do
          {
            v35 = *v7;
            v175 = *(v7 + 16);
            v174 = v35;
            v36 = *v34;
            *(v7 + 16) = v34[2];
            *v7 = v36;
            v37 = v174;
            v34[2] = v175;
            *v34 = v37;
            do
            {
              v7 += 24;
              v38 = *a3;
              *&v174 = v7;
              v39 = std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v38, v7)[5];
              v40 = *a3;
              *&v174 = &v176;
            }

            while (v39 < std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v40, &v176)[5]);
            do
            {
              v34 -= 3;
              v41 = *a3;
              *&v174 = v34;
              v42 = std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v41, v34)[5];
              v43 = *a3;
              *&v174 = &v176;
            }

            while (v42 >= std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v43, &v176)[5]);
          }

          while (v7 < v34);
        }

        v44 = (v7 - 24);
        v45 = a1;
        if (v7 - 24 == a1)
        {
          if (*(v7 - 1) < 0)
          {
            operator delete(*v44);
          }
        }

        else
        {
          if (*(a1 + 23) < 0)
          {
            operator delete(*a1);
          }

          v46 = *v44;
          *(a1 + 16) = *(v7 - 8);
          *a1 = v46;
          *(v7 - 1) = 0;
          *(v7 - 24) = 0;
        }

        v47 = v176;
        *(v7 - 8) = v177;
        *v44 = v47;
        if (v26 >= v27)
        {
          break;
        }

LABEL_40:
        a5 = 0;
      }

      {
        break;
      }

      v45 = a1;
      if (!v48)
      {
        goto LABEL_40;
      }
    }

    a2 = v7 - 24;
    if (!v48)
    {
      continue;
    }

    break;
  }
}

void sub_2180C9FD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,anonymous namespace::ReorderSubProgramOutputs(std::vector<std::string> &,std::vector<std::string> const&)::$_0 &,std::string*,0>(const void **a1, const void **a2, const void **a3, void **a4)
{
  v8 = std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(*a4, a2)[5];
  v9 = std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(*a4, a1)[5];
  v10 = *a4;
  if (v8 >= v9)
  {
    v16 = std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v10, a3)[5];
    result = std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(*a4, a2);
    if (v16 < result[5])
    {
      v17 = a2[2];
      v18 = *a2;
      v19 = a3[2];
      *a2 = *a3;
      a2[2] = v19;
      *a3 = v18;
      a3[2] = v17;
      v20 = std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(*a4, a2)[5];
      result = std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(*a4, a1);
      if (v20 < result[5])
      {
        v21 = a1[2];
        v22 = *a1;
        v23 = a2[2];
        *a1 = *a2;
        a1[2] = v23;
        *a2 = v22;
        a2[2] = v21;
      }
    }
  }

  else
  {
    v11 = std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v10, a3)[5];
    result = std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(*a4, a2);
    if (v11 >= result[5])
    {
      v24 = a1[2];
      v25 = *a1;
      v26 = a2[2];
      *a1 = *a2;
      a1[2] = v26;
      *a2 = v25;
      a2[2] = v24;
      v27 = std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(*a4, a3)[5];
      result = std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(*a4, a2);
      if (v27 >= result[5])
      {
        return result;
      }

      v13 = a2[2];
      v14 = *a2;
      v28 = a3[2];
      *a2 = *a3;
      a2[2] = v28;
    }

    else
    {
      v13 = a1[2];
      v14 = *a1;
      v15 = a3[2];
      *a1 = *a3;
      a1[2] = v15;
    }

    *a3 = v14;
    a3[2] = v13;
  }

  return result;
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,anonymous namespace::ReorderSubProgramOutputs(std::vector<std::string> &,std::vector<std::string> const&)::$_0 &,std::string*,0>(uint64_t a1, const void **a2, const void **a3, const void **a4, void **a5)
{
  v10 = std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(*a5, a4)[5];
  if (v10 < std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(*a5, a3)[5])
  {
    v12 = a3[2];
    v13 = *a3;
    v14 = a4[2];
    *a3 = *a4;
    a3[2] = v14;
    *a4 = v13;
    a4[2] = v12;
    v15 = std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(*a5, a3)[5];
    if (v15 < std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(*a5, a2)[5])
    {
      v16 = a2[2];
      v17 = *a2;
      v18 = a3[2];
      *a2 = *a3;
      a2[2] = v18;
      *a3 = v17;
      a3[2] = v16;
      v19 = std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(*a5, a2)[5];
      if (v19 < std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(*a5, a1)[5])
      {
        v20 = *(a1 + 16);
        result = *a1;
        v21 = a2[2];
        *a1 = *a2;
        *(a1 + 16) = v21;
        *a2 = result;
        a2[2] = v20;
      }
    }
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,anonymous namespace::ReorderSubProgramOutputs(std::vector<std::string> &,std::vector<std::string> const&)::$_0 &,std::string*,0>(uint64_t a1, const void **a2, const void **a3, const void **a4, const void **a5, void **a6)
{
  v12 = std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(*a6, a5)[5];
  if (v12 < std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(*a6, a4)[5])
  {
    v14 = a4[2];
    v15 = *a4;
    v16 = a5[2];
    *a4 = *a5;
    a4[2] = v16;
    *a5 = v15;
    a5[2] = v14;
    v17 = std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(*a6, a4)[5];
    if (v17 < std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(*a6, a3)[5])
    {
      v18 = a3[2];
      v19 = *a3;
      v20 = a4[2];
      *a3 = *a4;
      a3[2] = v20;
      *a4 = v19;
      a4[2] = v18;
      v21 = std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(*a6, a3)[5];
      if (v21 < std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(*a6, a2)[5])
      {
        v22 = a2[2];
        v23 = *a2;
        v24 = a3[2];
        *a2 = *a3;
        a2[2] = v24;
        *a3 = v23;
        a3[2] = v22;
        v25 = std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(*a6, a2)[5];
        if (v25 < std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(*a6, a1)[5])
        {
          v26 = *(a1 + 16);
          result = *a1;
          v27 = a2[2];
          *a1 = *a2;
          *(a1 + 16) = v27;
          *a2 = result;
          a2[2] = v26;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,anonymous namespace::ReorderSubProgramOutputs(std::vector<std::string> &,std::vector<std::string> const&)::$_0 &,std::string*>(uint64_t a1, uint64_t a2, void **a3)
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v6 <= 2)
  {
    if (v6 >= 2)
    {
      if (v6 == 2)
      {
        v7 = a2 - 24;
        v8 = *a3;
        *&v29 = a2 - 24;
        v9 = std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v8, (a2 - 24))[5];
        v10 = *a3;
        *&v29 = a1;
        if (v9 < std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v10, a1)[5])
        {
          v11 = *(a1 + 16);
          v12 = *a1;
          v13 = *(v7 + 16);
          *a1 = *v7;
          *(a1 + 16) = v13;
          *v7 = v12;
          *(v7 + 16) = v11;
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v6)
  {
    case 3:
      return 1;
    case 4:
      return 1;
    case 5:
      return 1;
  }

LABEL_11:
  v14 = (a1 + 48);
  v15 = a1 + 72;
  if (a1 + 72 == a2)
  {
    return 1;
  }

  v16 = 0;
  v17 = 0;
  while (1)
  {
    v18 = *a3;
    *&v29 = v15;
    v19 = std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v18, v15)[5];
    v20 = *a3;
    *&v29 = v14;
    if (v19 < std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v20, v14)[5])
    {
      v29 = *v15;
      v30 = *(v15 + 16);
      *(v15 + 8) = 0;
      *(v15 + 16) = 0;
      *v15 = 0;
      v21 = v16;
      do
      {
        v22 = a1 + v21;
        if (*(a1 + v21 + 95) < 0)
        {
          operator delete(*(v22 + 72));
        }

        *(v22 + 72) = *(v22 + 48);
        *(v22 + 88) = *(v22 + 64);
        *(v22 + 71) = 0;
        *(v22 + 48) = 0;
        if (v21 == -48)
        {
          v27 = a1;
          goto LABEL_22;
        }

        v23 = *a3;
        v31 = &v29;
        v24 = std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v23, &v29)[5];
        v25 = *a3;
        v31 = (a1 + v21 + 24);
        v21 -= 24;
      }

      while (v24 < std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v25, v31)[5]);
      v26 = *(a1 + v21 + 95);
      v27 = a1 + v21 + 72;
      if (v26 < 0)
      {
        operator delete(*v27);
      }

LABEL_22:
      *v27 = v29;
      *(v27 + 16) = v30;
      if (++v17 == 8)
      {
        return v15 + 24 == a2;
      }
    }

    v14 = v15;
    v16 += 24;
    v15 += 24;
    if (v15 == a2)
    {
      return 1;
    }
  }
}

void sub_2180CA958(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::string>::__append(std::vector<std::string> *this, std::vector<std::string>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3) >= __n)
  {
    if (__n)
    {
      v10 = 24 * ((24 * __n - 24) / 0x18) + 24;
      bzero(this->__end_, v10);
      end = (end + v10);
    }

    this->__end_ = end;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((end - this->__begin_) >> 3);
    v7 = v6 + __n;
    if (v6 + __n > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((value - this->__begin_) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v18.__end_cap_.__value_ = this;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(this, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * __n - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = (v11 + v12);
    v14 = this->__end_ - this->__begin_;
    v15 = (v11 - v14);
    memcpy((v11 - v14), this->__begin_, v14);
    begin = this->__begin_;
    this->__begin_ = v15;
    this->__end_ = v13;
    v17 = this->__end_cap_.__value_;
    this->__end_cap_.__value_ = 0;
    v18.__end_ = begin;
    v18.__end_cap_.__value_ = v17;
    v18.__first_ = begin;
    v18.__begin_ = begin;
    std::__split_buffer<std::string>::~__split_buffer(&v18);
  }
}

void *std::__copy_impl::operator()[abi:ne200100]<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::string*>(int a1, void *a2, void *a3, std::string *this)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      std::string::operator=(this, (v5 + 4));
      v7 = v5[1];
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
          v8 = v5[2];
          v9 = *v8 == v5;
          v5 = v8;
        }

        while (!v9);
      }

      ++this;
      v5 = v8;
    }

    while (v8 != a3);
    return a3;
  }

  return v5;
}

void *std::pair<std::vector<std::string>,std::vector<std::string>>::pair[abi:ne200100]<std::vector<std::string>&,std::vector<std::string>&,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a1, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 3), *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  return a1;
}

void sub_2180CABEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::vector<unsigned long>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned long long>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned long long>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_2180CAC60(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Transform::ProgramTransformer::ProgramTransformerImpl::GetInputsAndOutputs(uint64_t *a1@<X0>, const void **a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  MIL::Builder::ProgramBuilder::GetFunction(a1[4], a2, &v56);
  v7 = v56;
  v8 = MIL::Builder::FunctionBuilder::SelectedSpecialization(v56);
  MIL::Builder::FunctionBuilder::GetBlock(v7, v8, &v54);
  MIL::Builder::BlockBuilder::GetOperations(v54, &v52);
  v50 = 0;
  v51 = 0;
  *v49 = &v50;
  v9 = a3 + 1;
  if (a3 + 1 == *a3)
  {
    v21 = 0;
  }

  else
  {
    v10 = a3 + 1;
    do
    {
      v11 = *v10;
      v12 = v10;
      if (*v10)
      {
        do
        {
          v13 = v11;
          v11 = v11[1];
        }

        while (v11);
      }

      else
      {
        do
        {
          v13 = v12[2];
          v14 = *v13 == v12;
          v12 = v13;
        }

        while (v14);
      }

      v15 = (v52 + 16 * v13[4]);
      MIL::Transform::ProgramTransformer::ProgramTransformerImpl::GetAllConsumedVariableNames(a1, *v15, v47);
      for (i = v48; i; i = *i)
      {
        std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(v49, i + 2);
      }

      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v47);
      for (j = 0; j < MIL::Builder::OperationBuilder::GetNumOutputs(*v15); ++j)
      {
        OutputName = MIL::Builder::OperationBuilder::GetOutputName(*v15, j);
        std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::__erase_unique<std::string>(v49, OutputName);
      }

      v19 = *v10;
      if (*v10)
      {
        do
        {
          v20 = v19;
          v19 = v19[1];
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = v10[2];
          v14 = *v20 == v10;
          v10 = v20;
        }

        while (v14);
      }

      v10 = v20;
    }

    while (v20 != *a3);
    v21 = v51;
  }

  std::vector<std::string>::vector[abi:ne200100](v45, v21);
  std::__copy_impl::operator()[abi:ne200100]<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::string*>(v47, *v49, &v50, v45[0]);
  v44[0] = 0;
  v44[1] = 0;
  v43 = v44;
  v22 = *(*a3 + 32);
  v24 = v52;
  v23 = v53;
  while (v22 < (v23 - v24) >> 4)
  {
    v25 = *v9;
    if (!*v9)
    {
      goto LABEL_29;
    }

    v26 = a3 + 1;
    do
    {
      v27 = v25[4];
      v28 = v27 >= v22;
      v29 = v27 < v22;
      if (v28)
      {
        v26 = v25;
      }

      v25 = v25[v29];
    }

    while (v25);
    if (v26 == v9 || v22 < v26[4])
    {
LABEL_29:
      MIL::Transform::ProgramTransformer::ProgramTransformerImpl::GetAllConsumedVariableNames(a1, *(v24 + 16 * v22), v47);
      for (k = v48; k; k = *k)
      {
        std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(&v43, k + 2);
      }

      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v47);
      v24 = v52;
      v23 = v53;
    }

    ++v22;
  }

  MIL::Builder::BlockBuilder::GetOutputNames(v54, v42);
  std::unordered_set<std::string>::unordered_set<std::__wrap_iter<std::string const*>>(v47, v42[0], v42[1]);
  v40 = 0uLL;
  v41 = 0;
  v31 = *a3;
  if (*a3 != v9)
  {
    do
    {
      v32 = 0;
      v33 = (v52 + 16 * v31[4]);
      while (v32 < MIL::Builder::OperationBuilder::GetNumOutputs(*v33))
      {
        v34 = MIL::Builder::OperationBuilder::GetOutputName(*v33, v32);
        if (v44 != std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::find<std::string>(&v43, v34) || std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(v47, v34))
        {
          v35 = *(&v40 + 1);
          if (*(&v40 + 1) >= v41)
          {
            v37 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(&v40, v34);
          }

          else
          {
            if (*(v34 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(*(&v40 + 1), *v34, *(v34 + 8));
            }

            else
            {
              v36 = *v34;
              *(*(&v40 + 1) + 16) = *(v34 + 16);
              *v35 = v36;
            }

            v37 = (v35 + 24);
          }

          *(&v40 + 1) = v37;
        }

        ++v32;
      }

      v38 = v31[1];
      if (v38)
      {
        do
        {
          v39 = v38;
          v38 = *v38;
        }

        while (v38);
      }

      else
      {
        do
        {
          v39 = v31[2];
          v14 = *v39 == v31;
          v31 = v39;
        }

        while (!v14);
      }

      v31 = v39;
    }

    while (v39 != v9);
  }

  *a4 = *v45;
  *(a4 + 16) = v46;
  v45[1] = 0;
  v46 = 0;
  v45[0] = 0;
  *(a4 + 24) = v40;
  *(a4 + 40) = v41;
  v40 = 0uLL;
  v41 = 0;
  v58 = &v40;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v58);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v47);
  v47[0] = v42;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v47);
  std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::destroy(&v43, v44[0]);
  v47[0] = v45;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v47);
  std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::destroy(v49, v50);
  v47[0] = &v52;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](v47);
  if (v55)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v55);
  }

  if (v57)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v57);
  }
}

void sub_2180CB098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void **a16, char *a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28, char *a29)
{
  *(v29 - 88) = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v29 - 88));
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a23);
  a23 = &a13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a23);
  std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::destroy(&a16, a17);
  a16 = &a19;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a16);
  std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::destroy(&a28, a29);
  a28 = (v29 - 144);
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&a28);
  v31 = *(v29 - 112);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  v32 = *(v29 - 96);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  _Unwind_Resume(a1);
}

void *std::vector<std::string>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

uint64_t MIL::Transform::ProgramTransformer::ProgramTransformerImpl::ForEachBlock<MIL::Transform::ProgramTransformer::ProgramTransformerImpl::FoldConstantNodes(void)::{lambda(std::shared_ptr<MIL::Builder::BlockBuilder> const&)#1}>(MIL::Builder::ProgramBuilder *a1, uint64_t *a2)
{
  result = MIL::Builder::ProgramBuilder::GetFunctions(a1);
  for (i = *(result + 16); i; i = *i)
  {
    result = MIL::Builder::FunctionBuilder::GetSpecializations(i[5]);
    for (j = *(result + 16); j; j = *j)
    {
      result = MIL::Transform::ProgramTransformer::ProgramTransformerImpl::ForEachBlock<MIL::Transform::ProgramTransformer::ProgramTransformerImpl::FoldConstantNodes(void)::{lambda(std::shared_ptr<MIL::Builder::BlockBuilder> const&)#1}>(j + 5, a2);
    }
  }

  return result;
}

uint64_t MIL::Transform::ProgramTransformer::ProgramTransformerImpl::ForEachBlock<MIL::Transform::ProgramTransformer::ProgramTransformerImpl::FoldConstantNodes(void)::{lambda(std::shared_ptr<MIL::Builder::BlockBuilder> const&)#1}>(MIL::Builder::BlockBuilder **a1, uint64_t *a2)
{
  if (MIL::Builder::BlockBuilder::GetNumOperations(*a1))
  {
    v4 = 0;
    do
    {
      MIL::Builder::BlockBuilder::GetOperation(*a1, v4, &v9);
      MIL::Builder::OperationBuilder::GetBlocks(v9, v8);
      v5 = v8[0];
      v6 = v8[1];
      while (v5 != v6)
      {
        MIL::Transform::ProgramTransformer::ProgramTransformerImpl::ForEachBlock<MIL::Transform::ProgramTransformer::ProgramTransformerImpl::FoldConstantNodes(void)::{lambda(std::shared_ptr<MIL::Builder::BlockBuilder> const&)#1}>(v5, a2);
        v5 += 16;
      }

      v10 = v8;
      std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&v10);
      if (*(&v9 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v9 + 1));
      }

      ++v4;
    }

    while (v4 < MIL::Builder::BlockBuilder::GetNumOperations(*a1));
  }

  return MIL::Transform::ProgramTransformer::ProgramTransformerImpl::FoldConstantNodesWithinBlock(*a2, a1);
}

void sub_2180CB35C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::Transform::ProgramTransformer::ProgramTransformerImpl::FoldConstantNodesWithinBlock(uint64_t a1, MIL::Builder::BlockBuilder **a2)
{
  v45 = 0u;
  v46 = 0u;
  v47 = 1065353216;
  MIL::Transform::ProgramTransformer::ProgramTransformerImpl::FindAllConstantOpsWithinBlock(a1, a2, &v45, v44);
  v3 = 0;
  memset(v42, 0, sizeof(v42));
  v43 = 1065353216;
  while (v3 < MIL::Builder::BlockBuilder::GetNumOperations(*a2))
  {
    MIL::Builder::BlockBuilder::GetOperation(*a2, v3, &v39);
    __p = &v39;
    std::__hash_table<std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,unsigned long>,std::__unordered_map_hasher<std::shared_ptr<MIL::Builder::OperationBuilder>,std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,unsigned long>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,true>,std::__unordered_map_equal<std::shared_ptr<MIL::Builder::OperationBuilder>,std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,unsigned long>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,unsigned long>>>::__emplace_unique_key_args<std::shared_ptr<MIL::Builder::OperationBuilder>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<MIL::Builder::OperationBuilder>&&>,std::tuple<>>(v42, &v39)[4] = v3;
    if (*(&v39 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v39 + 1));
    }

    ++v3;
  }

  v39 = 0u;
  v40 = 0u;
  v41 = 1065353216;
  for (i = v46; i; i = *i)
  {
    OperationsByInput = MIL::Builder::BlockBuilder::GetOperationsByInput(*a2, i + 2);
    std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>::unordered_set(&__p, OperationsByInput);
    v6 = v38;
    if (!v38)
    {
      goto LABEL_19;
    }

    v7 = 0;
    do
    {
      if (!std::__hash_table<std::__hash_value_type<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::unordered_set<MIL::Builder::DataDependency>>,std::__unordered_map_hasher<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::__hash_value_type<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::unordered_set<MIL::Builder::DataDependency>>,std::hash<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>,std::equal_to<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>,true>,std::__unordered_map_equal<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::__hash_value_type<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::unordered_set<MIL::Builder::DataDependency>>,std::equal_to<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>,std::hash<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::unordered_set<MIL::Builder::DataDependency>>>>::find<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>(v44, v6 + 2))
      {
        if (!std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(&v39, i + 2)
          || (*&v35 = v6 + 2, v8 = std::__hash_table<std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,unsigned long>,std::__unordered_map_hasher<std::shared_ptr<MIL::Builder::OperationBuilder>,std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,unsigned long>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,true>,std::__unordered_map_equal<std::shared_ptr<MIL::Builder::OperationBuilder>,std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,unsigned long>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,unsigned long>>>::__emplace_unique_key_args<std::shared_ptr<MIL::Builder::OperationBuilder>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<MIL::Builder::OperationBuilder> const&>,std::tuple<>>(v42, v6 + 2)[4], *&v35 = i + 2, *&v35 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::OperationBuilder>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::OperationBuilder>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::OperationBuilder>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v39, i + 2) + 5, v8 < std::__hash_table<std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,unsigned long>,std::__unordered_map_hasher<std::shared_ptr<MIL::Builder::OperationBuilder>,std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,unsigned long>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,true>,std::__unordered_map_equal<std::shared_ptr<MIL::Builder::OperationBuilder>,std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,unsigned long>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,unsigned long>>>::__emplace_unique_key_args<std::shared_ptr<MIL::Builder::OperationBuilder>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<MIL::Builder::OperationBuilder> const&>,std::tuple<>>(v42, v35)[4]))
        {
          *&v35 = i + 2;
          v9 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::OperationBuilder>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::OperationBuilder>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::OperationBuilder>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v39, i + 2);
          v11 = v6[2];
          v10 = v6[3];
          if (v10)
          {
            atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
          }

          v12 = v9[6];
          v9[5] = v11;
          v9[6] = v10;
          if (v12)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v12);
          }
        }

        v7 = 1;
      }

      v6 = *v6;
    }

    while (v6);
    if ((v7 & 1) == 0)
    {
LABEL_19:
      MIL::Builder::BlockBuilder::GetOutputNames(*a2, &v35);
      v14 = *(&v35 + 1);
      v13 = v35;
      if (v35 != *(&v35 + 1))
      {
        v15 = *(i + 39);
        if (v15 >= 0)
        {
          v16 = *(i + 39);
        }

        else
        {
          v16 = i[3];
        }

        if (v15 >= 0)
        {
          v17 = i + 2;
        }

        else
        {
          v17 = i[2];
        }

        while (1)
        {
          v18 = *(v13 + 23);
          v19 = v18;
          if ((v18 & 0x80u) != 0)
          {
            v18 = *(v13 + 8);
          }

          if (v18 == v16)
          {
            v20 = v19 >= 0 ? v13 : *v13;
            if (!memcmp(v20, v17, v16))
            {
              break;
            }
          }

          v13 += 24;
          if (v13 == v14)
          {
            goto LABEL_38;
          }
        }
      }

      if (v13 != v14)
      {
        v48 = (i + 2);
        v21 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::OperationBuilder>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::OperationBuilder>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::OperationBuilder>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v39, i + 2);
        v22 = v21[6];
        v21[5] = 0;
        v21[6] = 0;
        if (v22)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v22);
        }
      }

LABEL_38:
      v49[0] = &v35;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v49);
    }

    std::__hash_table<std::shared_ptr<MIL::Builder::OperationBuilder>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>>::~__hash_table(&__p);
  }

  __p = 0;
  v37 = 0;
  v38 = 0;
  std::vector<unsigned long long>::reserve(&__p, v44[3]);
  for (j = 0; ; j = (v49[0] + 1))
  {
    v49[0] = j;
    if (j >= MIL::Builder::BlockBuilder::GetNumOperations(*a2))
    {
      break;
    }

    MIL::Builder::BlockBuilder::GetOperation(*a2, v49[0], &v35);
    v24 = std::__hash_table<std::__hash_value_type<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::unordered_set<MIL::Builder::DataDependency>>,std::__unordered_map_hasher<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::__hash_value_type<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::unordered_set<MIL::Builder::DataDependency>>,std::hash<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>,std::equal_to<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>,true>,std::__unordered_map_equal<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::__hash_value_type<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::unordered_set<MIL::Builder::DataDependency>>,std::equal_to<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>,std::hash<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::unordered_set<MIL::Builder::DataDependency>>>>::find<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>(v44, &v35);
    if (*(&v35 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v35 + 1));
    }

    if (v24)
    {
      std::vector<unsigned long long>::push_back[abi:ne200100](&__p, v49);
    }
  }

  if (v37 == __p)
  {
    v25 = 0;
  }

  else
  {
    v25 = __p;
  }

  MIL::Builder::BlockBuilder::RemoveOperations(*a2, v25, (v37 - __p) >> 3, 1);
  v26 = v40;
  if (v40)
  {
    v27 = *a2;
    if (*(v40 + 39) < 0)
    {
      std::string::__init_copy_ctor_external(&v34, *(v40 + 16), *(v40 + 24));
    }

    else
    {
      v34 = *(v40 + 16);
    }

    *&v35 = v26 + 16;
    v28 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v45, (v26 + 16));
    v29 = v28[6];
    v33[0] = v28[5];
    v33[1] = v29;
    if (v29)
    {
      atomic_fetch_add_explicit(v29 + 1, 1uLL, memory_order_relaxed);
    }

    v30 = *(v26 + 48);
    v32[0] = *(v26 + 40);
    v32[1] = v30;
    if (v30)
    {
      atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
    }

    MIL::Builder::BlockBuilder::AddConst(v27, &v34, v33, v32);
  }

  if (__p)
  {
    v37 = __p;
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&v39);
  std::__hash_table<std::shared_ptr<MIL::Builder::OperationBuilder>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>>::~__hash_table(v42);
  std::__hash_table<std::shared_ptr<MIL::Builder::OperationBuilder>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>>::~__hash_table(v44);
  return std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&v45);
}

void sub_2180CB7E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a28);
  std::__hash_table<std::shared_ptr<MIL::Builder::OperationBuilder>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>>::~__hash_table(&a34);
  std::__hash_table<std::shared_ptr<MIL::Builder::OperationBuilder>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>>::~__hash_table(v34 - 200);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v34 - 160);
  _Unwind_Resume(a1);
}

unint64_t MIL::Transform::ProgramTransformer::ProgramTransformerImpl::FindAllConstantOpsWithinBlock@<X0>(uint64_t a1@<X0>, MIL::Builder::BlockBuilder **a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a2;
  v6 = 0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 1065353216;
  while (1)
  {
    result = MIL::Builder::BlockBuilder::GetNumOperations(*v5);
    if (v6 >= result)
    {
      return result;
    }

    MIL::Builder::BlockBuilder::GetOperation(*v5, v6, &v49);
    MIL::Builder::OperationBuilder::GetInputArguments(v49, &v50);
    v8 = v50.__r_.__value_.__r.__words[2];
    if (v50.__r_.__value_.__r.__words[2])
    {
      while (1)
      {
        Name = MIL::Builder::Variable::TryGetName(v8[2]);
        if (Name)
        {
          if (!std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, Name))
          {
            break;
          }
        }

        v8 = *v8;
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(&v50);
    }

    else
    {
LABEL_7:
      std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(&v50);
      Operator = MIL::Builder::OperationBuilder::GetOperator(v49);
      if ((*(*Operator + 224))(Operator))
      {
        std::__hash_table<std::shared_ptr<MIL::Builder::OperationBuilder>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>>::__emplace_unique_key_args<std::shared_ptr<MIL::Builder::OperationBuilder>,std::shared_ptr<MIL::Builder::OperationBuilder> const&>(a4, &v49);
        memset(v47, 0, sizeof(v47));
        v48 = 1065353216;
        Parameters = MIL::Builder::OperationBuilder::GetParameters(v49);
        v13 = Parameters + 1;
        v12 = *Parameters;
        if (*Parameters != (Parameters + 1))
        {
          do
          {
            __src = 0;
            v45 = 0;
            v46 = 0;
            std::vector<std::shared_ptr<MIL::IRValue const>>::reserve(&__src, (v12[8] - v12[7]) >> 4);
            v14 = v12[7];
            v15 = v12[8];
            while (v14 != v15)
            {
              if ((*(**v14 + 24))())
              {
                (*(**v14 + 48))(&v43);
                v16 = v45;
                if (v45 >= v46)
                {
                  v19 = __src;
                  v20 = v45 - __src;
                  v21 = (v45 - __src) >> 4;
                  v22 = v21 + 1;
                  if ((v21 + 1) >> 60)
                  {
                    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
                  }

                  v23 = v46 - __src;
                  if ((v46 - __src) >> 3 > v22)
                  {
                    v22 = v23 >> 3;
                  }

                  if (v23 >= 0x7FFFFFFFFFFFFFF0)
                  {
                    v24 = 0xFFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v24 = v22;
                  }

                  p_src = &__src;
                  if (v24)
                  {
                    std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<MIL::Validation::Constraints const>>>(&__src, v24);
                  }

                  *(16 * v21) = v43;
                  v43 = 0uLL;
                  memcpy(0, v19, v20);
                  v25 = __src;
                  v26 = v46;
                  __src = 0;
                  v45 = (16 * v21 + 16);
                  v46 = 0;
                  v50.__r_.__value_.__r.__words[2] = v25;
                  v51 = v26;
                  v50.__r_.__value_.__r.__words[0] = v25;
                  v50.__r_.__value_.__l.__size_ = v25;
                  std::__split_buffer<std::shared_ptr<MIL::IRBlock>>::~__split_buffer(&v50.__r_.__value_.__l.__data_);
                  v45 = (16 * v21 + 16);
                  if (*(&v43 + 1))
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v43 + 1));
                  }
                }

                else
                {
                  *v45 = v43;
                  v45 = v16 + 16;
                }
              }

              else
              {
                v17 = MIL::IRArgument::GetName(*v14);
                v18 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(a3, v17);
                if (!v18)
                {
                  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
                }

                std::vector<std::shared_ptr<MIL::IRValue const>>::push_back[abi:ne200100](&__src, (v18 + 5));
              }

              v14 += 2;
            }

            v50.__r_.__value_.__r.__words[0] = (v12 + 4);
            v27 = (std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRValue const>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRValue const>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRValue const>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRValue const>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v47, v12 + 4) + 5);
            if (v27 != &__src)
            {
              std::vector<std::shared_ptr<MIL::IRValue const>>::__assign_with_size[abi:ne200100]<std::shared_ptr<MIL::IRValue const>*,std::shared_ptr<MIL::IRValue const>*>(v27, __src, v45, (v45 - __src) >> 4);
            }

            v50.__r_.__value_.__r.__words[0] = &__src;
            std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&v50);
            v28 = v12[1];
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
                v29 = v12[2];
                v30 = *v29 == v12;
                v12 = v29;
              }

              while (!v30);
            }

            v12 = v29;
          }

          while (v29 != v13);
        }

        __src = 0;
        v45 = 0;
        v46 = 0;
        MIL::Builder::OperationBuilder::GetBlocks(v49, &v50);
        std::vector<std::shared_ptr<MIL::IROperation>>::reserve(&__src, (v50.__r_.__value_.__l.__size_ - v50.__r_.__value_.__r.__words[0]) >> 4);
        *&v43 = &v50;
        std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&v43);
        MIL::Builder::OperationBuilder::GetBlocks(v49, &v43);
        if (v43 != *(&v43 + 1))
        {
          MIL::Builder::BlockBuilder::CreateBlock(*v43);
        }

        v50.__r_.__value_.__r.__words[0] = &v43;
        std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&v50);
        v31 = MIL::Builder::OperationBuilder::GetOperator(v49);
        LocationPtr = MIL::Builder::OperationBuilder::GetLocationPtr(v49);
        v33 = LocationPtr[1];
        v41 = *LocationPtr;
        v42 = v33;
        if (v33)
        {
          atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        Attributes = MIL::Builder::OperationBuilder::GetAttributes(v49);
        (*(*v31 + 208))(&v43, v31, a1, &v41, v47, Attributes, &__src, 0xFFFFFFFFLL);
        if (v42)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v42);
        }

        v35 = 0;
        for (i = 0; i < MIL::Builder::OperationBuilder::GetNumOutputs(v49); ++i)
        {
          OutputName = MIL::Builder::OperationBuilder::GetOutputName(v49, i);
          std::pair<std::string const,std::shared_ptr<MIL::Blob::LegacyStorageReader>>::pair[abi:ne200100]<std::string const&,std::shared_ptr<MIL::Blob::LegacyStorageReader>&,0>(&v50, OutputName, (v43 + v35));
          std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<MIL::IRValue const>>>(a3, &v50.__r_.__value_.__l.__data_);
          if (p_src)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](p_src);
          }

          if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v50.__r_.__value_.__l.__data_);
          }

          v35 += 16;
        }

        v50.__r_.__value_.__r.__words[0] = &v43;
        std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&v50);
        v50.__r_.__value_.__r.__words[0] = &__src;
        std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&v50);
        std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::~__hash_table(v47);
        v5 = a2;
      }
    }

    if (*(&v49 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v49 + 1));
    }

    ++v6;
  }
}

void sub_2180CBF1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::__shared_weak_count *a27)
{
  *(v27 - 136) = &a18;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100]((v27 - 136));
  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::~__hash_table(&a21);
  if (a27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a27);
  }

  std::__hash_table<std::shared_ptr<MIL::Builder::OperationBuilder>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>>::~__hash_table(a11);
  _Unwind_Resume(a1);
}

void **std::vector<std::shared_ptr<MIL::IRValue const>>::push_back[abi:ne200100](void **result, __int128 *a2)
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
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<MIL::Validation::Constraints const>>>(result, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
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
    result = std::__split_buffer<std::shared_ptr<MIL::IRBlock>>::~__split_buffer(v18);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    *(v4 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 16;
  }

  v3[1] = v7;
  return result;
}

void *std::__hash_table<std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,unsigned long>,std::__unordered_map_hasher<std::shared_ptr<MIL::Builder::OperationBuilder>,std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,unsigned long>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,true>,std::__unordered_map_equal<std::shared_ptr<MIL::Builder::OperationBuilder>,std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,unsigned long>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,unsigned long>>>::__emplace_unique_key_args<std::shared_ptr<MIL::Builder::OperationBuilder>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<MIL::Builder::OperationBuilder>&&>,std::tuple<>>(void *a1, void *a2)
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

void *std::__hash_table<std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,unsigned long>,std::__unordered_map_hasher<std::shared_ptr<MIL::Builder::OperationBuilder>,std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,unsigned long>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,true>,std::__unordered_map_equal<std::shared_ptr<MIL::Builder::OperationBuilder>,std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,unsigned long>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,unsigned long>>>::__emplace_unique_key_args<std::shared_ptr<MIL::Builder::OperationBuilder>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<MIL::Builder::OperationBuilder> const&>,std::tuple<>>(void *a1, void *a2)
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

uint64_t *std::pair<std::unique_ptr<MIL::IRProgram>,MIL::ValidationResult>::~pair(uint64_t *a1)
{
  MIL::ValidationResult::~ValidationResult((a1 + 1));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void MIL::Transform::ProgramTransformer::ProgramTransformerImpl::ProgramTransformerImpl(void *a1, void *a2)
{
  *a1 = *a2;
  v2 = a2[1];
  a1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  std::allocate_shared[abi:ne200100]<MIL::Transform::NameGenerator,std::allocator<MIL::Transform::NameGenerator>,MIL::IRProgram const&,0>();
}

void sub_2180CC818(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12)
{
  if (a12)
  {
    MIL::Transform::ProgramTransformer::ProgramTransformerImpl::ProgramTransformerImpl();
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  v14 = *(v12 + 24);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v15 = *(v12 + 8);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<MIL::Transform::NameGenerator>::__shared_ptr_emplace[abi:ne200100]<MIL::IRProgram const&,std::allocator<MIL::Transform::NameGenerator>,0>(void *a1, const MIL::IRProgram *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2829E93C8;
  MIL::Transform::NameGenerator::NameGenerator((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<MIL::Transform::NameGenerator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2829E93C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

void std::__shared_ptr_pointer<MIL::Builder::ProgramBuilder  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t std::__shared_ptr_pointer<MIL::Builder::ProgramBuilder  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::Builder::ProgramBuilder  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void MIL::Util::FindBlobFilePaths(MIL::Util *this@<X0>, std::vector<std::string> *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  *&v5.__r_.__value_.__l.__data_ = 0uLL;
  v4 = &v5;
  v5.__r_.__value_.__r.__words[2] = &unk_2829E9478;
  v6 = &v4;
  v7 = &v5.__r_.__value_.__s.__data_[16];
  MIL::Util::Walk(this, &v5.__r_.__value_.__r.__words[2]);
  std::__function::__value_func<BOOL ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&v5.__r_.__value_.__r.__words[2]);
  a2->__begin_ = 0;
  a2->__end_ = 0;
  a2->__end_cap_.__value_ = 0;
  std::vector<std::string>::insert[abi:ne200100]<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,0>(a2, 0, v4, &v5);
  std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::destroy(&v4, v5.__r_.__value_.__l.__data_);
}

void sub_2180CCB40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, void **a12)
{
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::destroy(&a9, a10);
  _Unwind_Resume(a1);
}

std::string *std::vector<std::string>::insert[abi:ne200100]<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,0>(std::vector<std::string> *a1, std::string *a2, std::string *a3, std::string *a4)
{
  if (a3 == a4)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    v5 = a3;
    do
    {
      size = v5->__r_.__value_.__l.__size_;
      if (size)
      {
        do
        {
          v7 = size;
          size = size->__r_.__value_.__r.__words[0];
        }

        while (size);
      }

      else
      {
        do
        {
          v7 = v5->__r_.__value_.__r.__words[2];
          v8 = v7->__r_.__value_.__r.__words[0] == v5;
          v5 = v7;
        }

        while (!v8);
      }

      ++v4;
      v5 = v7;
    }

    while (v7 != a4);
  }

  return std::vector<std::string>::__insert_with_size[abi:ne200100]<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(a1, a2, a3, a4, v4);
}

uint64_t std::__function::__func<MIL::Util::FindBlobFilePaths(MIL::IRProgram const&)::$_0,std::allocator<MIL::Util::FindBlobFilePaths(MIL::IRProgram const&)::$_0>,BOOL ()(MIL::IROperation const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829E9478;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<MIL::Util::FindBlobFilePaths(MIL::IRProgram const&)::$_0,std::allocator<MIL::Util::FindBlobFilePaths(MIL::IRProgram const&)::$_0>,BOOL ()(MIL::IROperation const&)>::operator()(uint64_t a1, MIL::IRObject *this)
{
  for (i = *(MIL::IRObject::GetAttributes(this) + 16); i; i = *i)
  {
    v5 = (*(*i[5] + 40))(i[5]);
    if (v5)
    {
      v6 = v5;
      if ((*(*v5 + 80))(v5))
      {
        v7 = (*(*v6 + 88))(v6);
        v8 = *(a1 + 8);
        MIL::Util::FindBlobFilePaths(MIL::IRProgram const&)::$_0::operator() const(MIL::IROperation const&)::{lambda(std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&)#1}::operator()(v7, &v23);
        MIL::IRValue::GetScalar<std::string>(v23, &__p);
        std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(v8, &__p.__r_.__value_.__l.__data_);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v24)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v24);
        }
      }
    }
  }

  v9 = (*(*this + 160))(this);
  v10 = v9 + 1;
  v11 = *v9;
  if (*v9 != v9 + 1)
  {
    do
    {
      v12 = v11[7];
      v13 = v11[8];
      while (v12 != v13)
      {
        if ((*(**v12 + 24))())
        {
          Value = MIL::IRArgument::GetValue(*v12);
          v15 = (*(*Value + 40))(Value);
          if (v15)
          {
            v16 = v15;
            if ((*(*v15 + 80))(v15))
            {
              v17 = (*(*v16 + 88))(v16);
              v18 = *(a1 + 8);
              MIL::Util::FindBlobFilePaths(MIL::IRProgram const&)::$_0::operator() const(MIL::IROperation const&)::{lambda(std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&)#1}::operator()(v17, &v23);
              MIL::IRValue::GetScalar<std::string>(v23, &__p);
              std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(v18, &__p.__r_.__value_.__l.__data_);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if (v24)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v24);
              }
            }
          }
        }

        v12 += 2;
      }

      v19 = v11[1];
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
          v20 = v11[2];
          v21 = *v20 == v11;
          v11 = v20;
        }

        while (!v21);
      }

      v11 = v20;
    }

    while (v20 != v10);
  }

  return 1;
}

void sub_2180CCEFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Util::FindBlobFilePaths(MIL::IRProgram const&)::$_0,std::allocator<MIL::Util::FindBlobFilePaths(MIL::IRProgram const&)::$_0>,BOOL ()(MIL::IROperation const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void MIL::Util::FindBlobFilePaths(MIL::IRProgram const&)::$_0::operator() const(MIL::IROperation const&)::{lambda(std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&)#1}::operator()(void *a1@<X0>, void *a2@<X8>)
{
  v7 = 4;
  strcpy(__p, "path");
  v3 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a1, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (!v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Invalid file properties: Blob file path property not found.");
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  v4 = v3[6];
  *a2 = v3[5];
  a2[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  }
}

std::string *std::vector<std::string>::__insert_with_size[abi:ne200100]<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(std::vector<std::string> *this, std::string *__from_s, std::string *a3, void *a4, uint64_t a5)
{
  v5 = __from_s;
  if (a5 >= 1)
  {
    v6 = a5;
    v7 = a3;
    end = this->__end_;
    value = this->__end_cap_.__value_;
    if ((0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3)) >= a5)
    {
      v16 = end - __from_s;
      v17 = 0xAAAAAAAAAAAAAAABLL * ((end - __from_s) >> 3);
      if (v17 >= a5)
      {
        std::vector<std::string>::__move_range(this, v5, this->__end_, &v5[a5]);
        std::string::operator=(v5, (v7 + 32));
        if (v6 != 1)
        {
          v20 = v5;
          do
          {
            size = v7->__r_.__value_.__l.__size_;
            if (size)
            {
              do
              {
                v22 = size;
                size = size->__r_.__value_.__r.__words[0];
              }

              while (size);
            }

            else
            {
              do
              {
                v22 = v7->__r_.__value_.__r.__words[2];
                v23 = *v22 == v7;
                v7 = v22;
              }

              while (!v23);
            }

            std::string::operator=(++v20, (v22 + 4));
            v7 = v22;
          }

          while (v6-- > 2);
        }
      }

      else
      {
        v33.__first_ = a3;
        std::__advance[abi:ne200100]<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(&v33, v17);
        first = v33.__first_;
        this->__end_ = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::string*>(this, v33.__first_->__r_.__value_.__r.__words, a4, this->__end_);
        if (v16 >= 1)
        {
          std::vector<std::string>::__move_range(this, v5, end, &v5[v6]);
          std::__copy_impl::operator()[abi:ne200100]<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::string*>(&v33, v7, first, v5);
        }
      }
    }

    else
    {
      begin = this->__begin_;
      v12 = a5 - 0x5555555555555555 * ((end - this->__begin_) >> 3);
      if (v12 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
      }

      v13 = __from_s - begin;
      v14 = 0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3);
      if (2 * v14 > v12)
      {
        v12 = 2 * v14;
      }

      if (v14 >= 0x555555555555555)
      {
        v15 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v15 = v12;
      }

      v33.__end_cap_.__value_ = this;
      if (v15)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(this, v15);
      }

      v33.__first_ = 0;
      v33.__begin_ = (8 * (v13 >> 3));
      v33.__end_ = v33.__begin_;
      v33.__end_cap_.__value_ = 0;
      std::__split_buffer<std::string>::__construct_at_end_with_size<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(&v33, a3, a5);
      v25 = v33.__begin_;
      memcpy(v33.__end_, v5, this->__end_ - v5);
      v26 = this->__begin_;
      v27 = v33.__begin_;
      v33.__end_ = (v33.__end_ + this->__end_ - v5);
      this->__end_ = v5;
      v28 = v5 - v26;
      v29 = (v27 - (v5 - v26));
      memcpy(v29, v26, v28);
      v30 = this->__begin_;
      this->__begin_ = v29;
      v31 = this->__end_cap_.__value_;
      *&this->__end_ = *&v33.__end_;
      v33.__end_ = v30;
      v33.__end_cap_.__value_ = v31;
      v33.__first_ = v30;
      v33.__begin_ = v30;
      std::__split_buffer<std::string>::~__split_buffer(&v33);
      return v25;
    }
  }

  return v5;
}

void std::vector<std::string>::__move_range(std::vector<std::string> *this, std::vector<std::string>::pointer __from_s, std::vector<std::string>::pointer __from_e, std::vector<std::string>::pointer __to)
{
  end = this->__end_;
  v7 = __from_s + end - __to;
  v8 = end;
  if (v7 < __from_e)
  {
    v9 = v7;
    v8 = this->__end_;
    do
    {
      v10 = *v9;
      v8->__r_.__value_.__r.__words[2] = *(v9 + 16);
      *&v8->__r_.__value_.__l.__data_ = v10;
      ++v8;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *v9 = 0;
      v9 += 24;
    }

    while (v9 < __from_e);
  }

  this->__end_ = v8;
  std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::string *,std::string *,std::string *>(&v11, __from_s, v7, end);
}

void std::__split_buffer<std::string>::__construct_at_end_with_size<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (a3)
  {
    v6 = &v4[a3];
    do
    {
      if (*(a2 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(v4, a2[4], a2[5]);
      }

      else
      {
        v7 = *(a2 + 2);
        v4->__r_.__value_.__r.__words[2] = a2[6];
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v8 = a2[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = a2[2];
          v10 = *v9 == a2;
          a2 = v9;
        }

        while (!v10);
      }

      ++v4;
      a2 = v9;
    }

    while (v4 != v6);
    v4 = v6;
  }

  *(a1 + 16) = v4;
}

void **std::__advance[abi:ne200100]<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(void **result, uint64_t a2)
{
  if (a2 < 0)
  {
    v7 = *result;
    do
    {
      v8 = *v7;
      if (*v7)
      {
        do
        {
          v4 = v8;
          v8 = v8[1];
        }

        while (v8);
      }

      else
      {
        do
        {
          v4 = v7[2];
          v5 = *v4 == v7;
          v7 = v4;
        }

        while (v5);
      }

      v7 = v4;
    }

    while (!__CFADD__(a2++, 1));
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = *result;
    do
    {
      v3 = v2[1];
      if (v3)
      {
        do
        {
          v4 = v3;
          v3 = *v3;
        }

        while (v3);
      }

      else
      {
        do
        {
          v4 = v2[2];
          v5 = *v4 == v2;
          v2 = v4;
        }

        while (!v5);
      }

      v2 = v4;
    }

    while (a2-- > 1);
  }

  *result = v4;
  return result;
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::string*>(uint64_t a1, void *a2, void *a3, std::string *this)
{
  v4 = this;
  v14 = this;
  v15 = this;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  v13 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(v4, v6[4], v6[5]);
      }

      else
      {
        v7 = *(v6 + 2);
        v4->__r_.__value_.__r.__words[2] = v6[6];
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v8 = v6[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v6[2];
          v10 = *v9 == v6;
          v6 = v9;
        }

        while (!v10);
      }

      v4 = ++v15;
      v6 = v9;
    }

    while (v9 != a3);
  }

  v13 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](v12);
  return v4;
}

uint64_t std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::string *,std::string *,std::string *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      v8 = *(a4 - 1);
      a4 -= 24;
      if (v8 < 0)
      {
        operator delete(*a4);
      }

      v9 = *(v7 - 24);
      *(a4 + 16) = *(v7 - 8);
      *a4 = v9;
      *(v7 - 1) = 0;
      *(v7 - 24) = 0;
      v7 -= 24;
    }

    while (v7 != a2);
  }

  return a3;
}

uint64_t ***MIL::Util::ForEachVariableName(uint64_t a1, uint64_t a2)
{
  result = (*(*a1 + 72))(a1);
  for (i = result[2]; i; i = *i)
  {
    v5 = i[5];
    v6 = (*(*v5 + 128))(v5);
    v7 = v6 + 1;
    v8 = *v6;
    if (*v6 != v6 + 1)
    {
      do
      {
        v9 = *(a2 + 24);
        if (!v9)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v9 + 48))(v9, v8 + 4);
        v10 = v8[1];
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
            v11 = v8[2];
            v12 = *v11 == v8;
            v8 = v11;
          }

          while (!v12);
        }

        v8 = v11;
      }

      while (v11 != v7);
    }

    result = (*(*v5 + 112))(v5);
    v13 = result + 1;
    v14 = *result;
    if (*result != (result + 1))
    {
      do
      {
        v15 = v14[1];
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
            v16 = v14[2];
            v12 = *v16 == v14;
            v14 = v16;
          }

          while (!v12);
        }

        v14 = v16;
      }

      while (v16 != v13);
    }
  }

  return result;
}

uint64_t ***MIL::Util::anonymous namespace::ForEachVariableName(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 40))(a1);
  v5 = *v4;
  v6 = *(v4 + 8);
  while (v5 != v6)
  {
    Name = MIL::IRNamedValueType::GetName(*v5);
    v8 = *(a2 + 24);
    if (!v8)
    {
LABEL_33:
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v8 + 48))(v8, Name);
    v5 += 2;
  }

  v9 = (*(*a1 + 88))(a1);
  v10 = *v9;
  v11 = v9[1];
  while (v10 != v11)
  {
    v12 = *(a2 + 24);
    if (!v12)
    {
      goto LABEL_33;
    }

    (*(*v12 + 48))(v12, v10);
    v10 += 24;
  }

  result = (*(*a1 + 56))(a1);
  v14 = **result;
  v15 = (*result)[1];
  while (v14 != v15)
  {
    v16 = *v14;
    v17 = (*(**v14 + 160))(*v14);
    v18 = v17 + 1;
    v19 = *v17;
    if (*v17 != v17 + 1)
    {
      do
      {
        v20 = v19[7];
        v21 = v19[8];
        while (v20 != v21)
        {
          v22 = (*(**v20 + 32))();
          if (v22)
          {
            v23 = v22;
            v24 = *(a2 + 24);
            if (!v24)
            {
              goto LABEL_33;
            }

            (*(*v24 + 48))(v24, v23);
          }

          v20 += 16;
        }

        v25 = v19[1];
        if (v25)
        {
          do
          {
            v26 = v25;
            v25 = *v25;
          }

          while (v25);
        }

        else
        {
          do
          {
            v26 = v19[2];
            v27 = *v26 == v19;
            v19 = v26;
          }

          while (!v27);
        }

        v19 = v26;
      }

      while (v26 != v18);
    }

    v28 = (*(*v16 + 176))(v16);
    v29 = *v28;
    v30 = *(v28 + 8);
    while (v29 != v30)
    {
      v31 = MIL::IRNamedValueType::GetName(*v29);
      v32 = *(a2 + 24);
      if (!v32)
      {
        goto LABEL_33;
      }

      (*(*v32 + 48))(v32, v31);
      v29 += 2;
    }

    result = (*(*v16 + 208))(v16);
    v33 = **result;
    v34 = (*result)[1];
    while (v33 != v34)
    {
      v35 = *v33;
      v33 += 2;
    }

    v14 += 2;
  }

  return result;
}

BOOL MIL::Util::DblApproxEqual(MIL::Util *this, double a2, double a3, double a4)
{
  if (a2 == a3)
  {
    return 1;
  }

  v4 = 0;
  if (a2 > 0.0 != a3 > 0.0)
  {
    return v4;
  }

  if (vabdd_f64(a2, a3) <= fmax(a2, a3) * a4)
  {
    return 1;
  }

  v5 = *&a2 - *&a3;
  if ((*&a2 - *&a3) < 0)
  {
    v5 = *&a3 - *&a2;
  }

  return v5 <= this;
}

BOOL MIL::Util::FltApproxEqual(MIL::Util *this, float a2, float a3, float a4)
{
  if (a2 == a3)
  {
    return 1;
  }

  v4 = 0;
  if (a2 > 0.0 != a3 > 0.0)
  {
    return v4;
  }

  if (vabds_f32(a2, a3) <= (fmaxf(a2, a3) * a4))
  {
    return 1;
  }

  v5 = LODWORD(a2) - LODWORD(a3);
  if (LODWORD(a2) - LODWORD(a3) < 0)
  {
    v5 = LODWORD(a3) - LODWORD(a2);
  }

  return v5 <= this;
}

uint64_t MIL::Util::Walk(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  result = (*(*v3 + 48))(v3, a1);
  if (result)
  {
    v6 = (*(*a1 + 208))(a1);
    v7 = **v6;
    v8 = (*v6)[1];
    if (v7 == v8)
    {
      return 1;
    }

    else
    {
      v9 = v7 + 16;
      do
      {
        result = MIL::Util::Walk(*(v9 - 16), a2);
        if (result)
        {
          v10 = v9 == v8;
        }

        else
        {
          v10 = 1;
        }

        v9 += 16;
      }

      while (!v10);
    }
  }

  return result;
}

{
  v3 = (*(*a1 + 56))(a1);
  v4 = **v3;
  v5 = (*v3)[1];
  if (v4 == v5)
  {
    return 1;
  }

  v6 = v4 + 16;
  do
  {
    result = MIL::Util::Walk(*(v6 - 16), a2);
    if (result)
    {
      v8 = v6 == v5;
    }

    else
    {
      v8 = 1;
    }

    v6 += 16;
  }

  while (!v8);
  return result;
}

{
  v3 = (*(*a1 + 208))(a1);
  v4 = **v3;
  v5 = (*v3)[1];
  if (v4 == v5)
  {
    return 1;
  }

  v6 = v4 + 16;
  do
  {
    result = MIL::Util::Walk(*(v6 - 16), a2);
    if (result)
    {
      v8 = v6 == v5;
    }

    else
    {
      v8 = 1;
    }

    v6 += 16;
  }

  while (!v8);
  return result;
}

{
  v3 = *(a2 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  result = (*(*v3 + 48))(v3, a1);
  if (result)
  {
    v6 = (*(*a1 + 56))(a1);
    v7 = **v6;
    v8 = (*v6)[1];
    if (v7 == v8)
    {
      return 1;
    }

    else
    {
      while (2)
      {
        v9 = (*(**v7 + 208))();
        v10 = **v9;
        v11 = (*v9)[1];
        while (v10 != v11)
        {
          if ((MIL::Util::Walk(*v10, a2) & 1) == 0)
          {
            return 0;
          }

          v10 += 2;
        }

        v7 += 16;
        result = 1;
        if (v7 != v8)
        {
          continue;
        }

        break;
      }
    }
  }

  return result;
}

{
  v3 = (*(*a1 + 112))(a1);
  v4 = v3 + 1;
  v5 = *v3;
  if (*v3 == v3 + 1)
  {
    return 1;
  }

  do
  {
    result = MIL::Util::Walk(v5[7], a2);
    if (!result)
    {
      break;
    }

    v7 = v5[1];
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
        v8 = v5[2];
        v9 = *v8 == v5;
        v5 = v8;
      }

      while (!v9);
    }

    v5 = v8;
  }

  while (v8 != v4);
  return result;
}

{
  v3 = (*(*a1 + 112))(a1);
  v4 = v3 + 1;
  v5 = *v3;
  if (*v3 == v3 + 1)
  {
    return 1;
  }

  do
  {
    result = MIL::Util::Walk(v5[7], a2);
    if (!result)
    {
      break;
    }

    v7 = v5[1];
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
        v8 = v5[2];
        v9 = *v8 == v5;
        v5 = v8;
      }

      while (!v9);
    }

    v5 = v8;
  }

  while (v8 != v4);
  return result;
}

uint64_t MIL::Util::Rewrite(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  result = (*(*v3 + 48))(v3, a1);
  if (result)
  {
    v6 = (*(*a1 + 208))(a1);
    v7 = **v6;
    v8 = (*v6)[1];
    if (v7 == v8)
    {
      return 1;
    }

    else
    {
      v9 = v7 + 16;
      do
      {
        result = MIL::Util::Rewrite(*(v9 - 16), a2);
        if (result)
        {
          v10 = v9 == v8;
        }

        else
        {
          v10 = 1;
        }

        v9 += 16;
      }

      while (!v10);
    }
  }

  return result;
}

{
  v3 = (*(*a1 + 64))(a1);
  v4 = **v3;
  v5 = (*v3)[1];
  if (v4 == v5)
  {
    return 1;
  }

  v6 = v4 + 16;
  do
  {
    result = MIL::Util::Rewrite(*(v6 - 16), a2);
    if (result)
    {
      v8 = v6 == v5;
    }

    else
    {
      v8 = 1;
    }

    v6 += 16;
  }

  while (!v8);
  return result;
}

{
  v3 = (*(*a1 + 208))(a1);
  v4 = **v3;
  v5 = (*v3)[1];
  if (v4 == v5)
  {
    return 1;
  }

  v6 = v4 + 16;
  do
  {
    result = MIL::Util::Rewrite(*(v6 - 16), a2);
    if (result)
    {
      v8 = v6 == v5;
    }

    else
    {
      v8 = 1;
    }

    v6 += 16;
  }

  while (!v8);
  return result;
}

{
  v3 = *(a2 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  result = (*(*v3 + 48))(v3, a1);
  if (result)
  {
    v6 = (*(*a1 + 64))(a1);
    v7 = **v6;
    v8 = (*v6)[1];
    if (v7 == v8)
    {
      return 1;
    }

    else
    {
      while (2)
      {
        v9 = (*(**v7 + 208))();
        v10 = **v9;
        v11 = (*v9)[1];
        while (v10 != v11)
        {
          if ((MIL::Util::Rewrite(*v10, a2) & 1) == 0)
          {
            return 0;
          }

          v10 += 2;
        }

        v7 += 16;
        result = 1;
        if (v7 != v8)
        {
          continue;
        }

        break;
      }
    }
  }

  return result;
}

{
  v3 = (*(*a1 + 120))(a1);
  v4 = v3 + 1;
  v5 = *v3;
  if (*v3 == v3 + 1)
  {
    return 1;
  }

  do
  {
    result = MIL::Util::Rewrite(v5[7], a2);
    if (!result)
    {
      break;
    }

    v7 = v5[1];
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
        v8 = v5[2];
        v9 = *v8 == v5;
        v5 = v8;
      }

      while (!v9);
    }

    v5 = v8;
  }

  while (v8 != v4);
  return result;
}

{
  v3 = (*(*a1 + 120))(a1);
  v4 = v3 + 1;
  v5 = *v3;
  if (*v3 == v3 + 1)
  {
    return 1;
  }

  do
  {
    result = MIL::Util::Rewrite(v5[7], a2);
    if (!result)
    {
      break;
    }

    v7 = v5[1];
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
        v8 = v5[2];
        v9 = *v8 == v5;
        v5 = v8;
      }

      while (!v9);
    }

    v5 = v8;
  }

  while (v8 != v4);
  return result;
}

BOOL MIL::Util::Walk(uint64_t a1, uint64_t a2)
{
  v3 = ((*(*a1 + 72))(a1) + 16);
  do
  {
    v3 = *v3;
  }

  while (v3 && (MIL::Util::Walk(v3[5], a2) & 1) != 0);
  return v3 == 0;
}

{
  v3 = ((*(*a1 + 72))(a1) + 16);
  do
  {
    v3 = *v3;
  }

  while (v3 && (MIL::Util::Walk(v3[5], a2) & 1) != 0);
  return v3 == 0;
}

{
  v3 = ((*(*a1 + 72))(a1) + 16);
  do
  {
    v3 = *v3;
    if (!v3)
    {
      break;
    }

    v4 = *(a2 + 24);
    if (!v4)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }
  }

  while (((*(*v4 + 48))(v4, v3[5]) & 1) != 0);
  return v3 == 0;
}

BOOL MIL::Util::Rewrite(uint64_t a1, uint64_t a2)
{
  v3 = ((*(*a1 + 72))(a1) + 16);
  do
  {
    v3 = *v3;
  }

  while (v3 && (MIL::Util::Rewrite(v3[5], a2) & 1) != 0);
  return v3 == 0;
}

{
  v3 = ((*(*a1 + 72))(a1) + 16);
  do
  {
    v3 = *v3;
  }

  while (v3 && (MIL::Util::Rewrite(v3[5], a2) & 1) != 0);
  return v3 == 0;
}

{
  v3 = ((*(*a1 + 72))(a1) + 16);
  do
  {
    v3 = *v3;
    if (!v3)
    {
      break;
    }

    v4 = *(a2 + 24);
    if (!v4)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }
  }

  while (((*(*v4 + 48))(v4, v3[5]) & 1) != 0);
  return v3 == 0;
}

void MIL::Util::ComputeStructureHash(MIL::Util *this, const MIL::IRProgram *a2, const MIL::Util::HashOptions *a3)
{
  v31 = xmmword_21858BBF0;
  v32 = 100;
  v33 = 257;
  v34 = xmmword_21858BC00;
  v35 = 0x10000000;
  CC_SHA256_Init(&c);
  Attributes = MIL::IRObject::GetAttributes(this);
  v5 = (*(*this + 72))(this);
  std::map<std::string,std::shared_ptr<MIL::IRFunction>>::map[abi:ne200100]<std::__hash_map_const_iterator<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRFunction>>,void *> *>>>(&v28, *(v5 + 16), 0);
  v6 = v28;
  if (v28 != v29)
  {
    do
    {
      v7 = v6[7];
      v8 = (*(*v7 + 128))(v7);
      std::map<std::string,MIL::IRValueType const*>::map[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,MIL::IRValueType const*>,std::__tree_node<std::__value_type<std::string,MIL::IRValueType const*>,void *> *,long>>>(&v39, *v8, v8 + 1);
      v9 = v39;
      if (v39 != v40)
      {
        do
        {
          if (SHIBYTE(v38) < 0)
          {
            operator delete(v36);
          }

          v11 = v9[1];
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
              v12 = v9[2];
              v13 = *v12 == v9;
              v9 = v12;
            }

            while (!v13);
          }

          v9 = v12;
        }

        while (v12 != v40);
      }

      v14 = (*(*v7 + 32))(v7);
      v15 = (*(*v7 + 40))(v7);
      v16 = (*(*v7 + 112))(v7);
      v37 = 0;
      v38 = 0;
      v36 = &v37;
      v17 = v16 + 1;
      v18 = *v16;
      if (*v16 != v16 + 1)
      {
        do
        {
          v19 = v18[7];
          v40[3] = (v18 + 4);
          *(std::__tree<std::__value_type<std::string,MIL::IRBlock const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRBlock const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRBlock const*>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v36, v18 + 4) + 56) = v19;
          v20 = v18[1];
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
              v21 = v18[2];
              v13 = *v21 == v18;
              v18 = v21;
            }

            while (!v13);
          }

          v18 = v21;
        }

        while (v21 != v17);
        v22 = v36;
        if (v36 != &v37)
        {
          do
          {
            v23 = *(v22 + 1);
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
                v24 = *(v22 + 2);
                v13 = *v24 == v22;
                v22 = v24;
              }

              while (!v13);
            }

            v22 = v24;
          }

          while (v24 != &v37);
        }
      }

      v25 = MIL::IRObject::GetAttributes(v7);
      std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::destroy(&v36, v37);
      std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::destroy(&v39, v40[0]);
      v26 = v6[1];
      if (v26)
      {
        do
        {
          v27 = v26;
          v26 = *v26;
        }

        while (v26);
      }

      else
      {
        do
        {
          v27 = v6[2];
          v13 = *v27 == v6;
          v6 = v27;
        }

        while (!v13);
      }

      v6 = v27;
    }

    while (v27 != v29);
  }

  std::__tree<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>>>::destroy(&v28, v29[0]);
}

void MIL::Util::anonymous namespace::ValidateInputs(MIL::Util::_anonymous_namespace_ *this, const MIL::IRProgram *a2, const MIL::Util::HashOptions *a3)
{
  MIL::Util::HashOptions::Validate(a2);
  v4 = (*(*this + 72))(this);
  std::map<std::string,std::shared_ptr<MIL::IRFunction>>::map[abi:ne200100]<std::__hash_map_const_iterator<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRFunction>>,void *> *>>>(&v11, *(v4 + 16), 0);
  v5 = v11;
  if (v11 != v12)
  {
    do
    {
      if (!v5[7])
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::operator+<char>();
        std::logic_error::logic_error(exception, &v10);
        exception->__vftable = (MEMORY[0x277D828F8] + 16);
        __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
      }

      v6 = v5[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != v12);
  }

  std::__tree<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>>>::destroy(&v11, v12[0]);
}

void sub_2180CEE78(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (!v22)
  {
LABEL_8:
    __cxa_end_catch();
    JUMPOUT(0x2180CEED4);
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

void MIL::Util::anonymous namespace::HashAttributes(CC_SHA256_CTX *a1, uint64_t a2)
{
  std::map<std::string,std::shared_ptr<MIL::IRValue const>>::map[abi:ne200100]<std::__hash_map_const_iterator<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *> *>>>(&v11, *(a2 + 16), 0);
  v3 = v11;
  if (v11 != v12)
  {
    do
    {
      v5 = v3[7];
      if (v5)
      {
        if (v10 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v6 = v3[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v3[2];
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != v12);
  }

  std::__tree<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>>>::destroy(&v11, v12[0]);
}

void sub_2180CEFB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>>>::destroy(&a15, a16);
  _Unwind_Resume(a1);
}

uint64_t MIL::Util::anonymous namespace::HashCombine(CC_SHA256_CTX *a1, _DWORD *a2)
{
  v3 = *(a2 + 23);
  v4 = a2[2];
  if (v3 >= 0)
  {
    v5 = v3;
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  CC_SHA256_Update(a1, a2, v5);

  return CC_SHA256_Update(a1, &unk_21858BC30, 1u);
}

uint64_t MIL::Util::anonymous namespace::SHA256Hasher::Finalize(CC_SHA256_CTX *c)
{
  v13 = *MEMORY[0x277D85DE8];
  CC_SHA256_Final(md, c);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v6);
  v1 = v6;
  *(&v6 + *(v6 - 24) + 8) = *(&v6 + *(v6 - 24) + 8) & 0xFFFFFFB5 | 8;
  *(&v6 + *(v1 - 24) + 8) &= ~0x4000u;
  v2 = (&v6 + *(v1 - 24));
  if (v2[1].__fmtflags_ == -1)
  {
    std::ios_base::getloc(v2);
    v3 = std::locale::use_facet(&v11, MEMORY[0x277D82680]);
    (v3->__vftable[2].~facet_0)(v3, 32);
    std::locale::~locale(&v11);
  }

  v4 = 0;
  v2[1].__fmtflags_ = 48;
  do
  {
    *(&v8[1].__locale_ + *(v6 - 24)) = 2;
    MEMORY[0x21CEAFB30](&v6, md[v4++]);
  }

  while (v4 != 32);
  std::stringbuf::str();
  v6 = *MEMORY[0x277D82828];
  *(&v6 + *(v6 - 24)) = *(MEMORY[0x277D82828] + 24);
  v7 = MEMORY[0x277D82878] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v8);
  std::ostream::~ostream();
  return MEMORY[0x21CEAFDA0](&v10);
}

void sub_2180CF2EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void MIL::Util::ComputeWeightsHash(MIL::Util::HashOptions *this@<X1>, uint64_t *a2@<X0>, uint64_t *a3@<X8>)
{
  MIL::Util::HashOptions::Validate(this);
  v6 = *a2;
  v7 = a2[1];
  if (*a2 == v7)
  {
    goto LABEL_11;
  }

  do
  {
    v8 = *(v6 + 23);
    if (v8 < 0)
    {
      v8 = *(v6 + 8);
    }

    if (!v8)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "ProgramHashUtils: Empty file path in blob file list");
      exception->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
    }

    if (std::string::find(v6, 0, 0) != -1)
    {
      v23 = __cxa_allocate_exception(0x10uLL);
      std::operator+<char>();
      std::logic_error::logic_error(v23, &c);
      v23->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(v23, off_278235F80, MEMORY[0x277D82610]);
    }

    v6 += 24;
  }

  while (v6 != v7);
  if (*a2 == a2[1])
  {
LABEL_11:
    CC_SHA256_Init(&c);
  }

  else
  {
    CC_SHA256_Init(&c);
    v10 = *a2;
    v9 = a2[1];
    v35 = 0;
    v34 = 0uLL;
    v37.__r_.__value_.__r.__words[0] = &v34;
    v37.__r_.__value_.__s.__data_[8] = 0;
    v11 = v9 - v10;
    if (v11)
    {
      if (0xAAAAAAAAAAAAAAABLL * (v11 >> 3) < 0x666666666666667)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v31 = 0;
    v32 = 0;
    v33 = 0;
    std::vector<std::thread>::reserve(&v31, 0);
    if (a2[1] != *a2)
    {
      v29.__r_.__value_.__r.__words[0] = &v34;
      v29.__r_.__value_.__l.__size_ = a2;
      v29.__r_.__value_.__r.__words[2] = this;
      v30 = 0;
      if (v32 < v33)
      {
        std::allocator_traits<std::allocator<std::thread>>::construct[abi:ne200100]<std::thread,MIL::Util::ComputeWeightsHash(std::vector<std::string> const&,MIL::Util::HashOptions const&)::$_0,0>();
      }

      v12 = v32 - v31;
      if (!((v12 + 1) >> 61))
      {
        v13 = (v33 - v31) >> 2;
        if (v13 <= v12 + 1)
        {
          v13 = v12 + 1;
        }

        if (v33 - v31 >= 0x7FFFFFFFFFFFFFF8)
        {
          v14 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v13;
        }

        v39 = &v31;
        if (v14)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<MIL::Pass>>>(&v31, v14);
        }

        v37.__r_.__value_.__r.__words[0] = 0;
        v37.__r_.__value_.__l.__size_ = 8 * v12;
        v37.__r_.__value_.__r.__words[2] = 8 * v12;
        v38 = 0;
        std::allocator_traits<std::allocator<std::thread>>::construct[abi:ne200100]<std::thread,MIL::Util::ComputeWeightsHash(std::vector<std::string> const&,MIL::Util::HashOptions const&)::$_0,0>();
      }

      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v15 = v32;
    for (i = v31; i != v15; ++i)
    {
      if (i->__t_)
      {
        std::thread::join(i);
      }
    }

    v17 = *(&v34 + 1);
    v18 = v34;
    if (*(&v34 + 1) != v34)
    {
      v19 = 0;
      v20 = 0xCCCCCCCCCCCCCCCDLL * ((*(&v34 + 1) - v34) >> 3);
      if (v20 <= 1)
      {
        v20 = 1;
      }

      v21 = v34 + 24;
      do
      {
        if (*v21)
        {
          std::exception_ptr::exception_ptr(&v28, v21);
          v27.__ptr_ = &v28;
          std::rethrow_exception(v27);
          __break(1u);
          return;
        }

        if ((*(v21 + 8) & 1) == 0)
        {
          v24 = __cxa_allocate_exception(0x10uLL);
          std::operator+<char>();
          v25 = std::string::append(&v29, "'");
          v26 = *&v25->__r_.__value_.__l.__data_;
          v37.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
          *&v37.__r_.__value_.__l.__data_ = v26;
          v25->__r_.__value_.__l.__size_ = 0;
          v25->__r_.__value_.__r.__words[2] = 0;
          v25->__r_.__value_.__r.__words[0] = 0;
          std::runtime_error::runtime_error(v24, &v37);
          __cxa_throw(v24, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        v19 -= 24;
        v21 += 40;
        --v20;
      }

      while (v20);
      do
      {
        v18 += 10;
      }

      while (v18 != v17);
    }

    v37.__r_.__value_.__r.__words[0] = &v31;
    std::vector<std::thread>::__destroy_vector::operator()[abi:ne200100](&v37);
    v37.__r_.__value_.__r.__words[0] = &v34;
    std::vector<MIL::Util::ComputeWeightsHash(std::vector<std::string> const&,MIL::Util::HashOptions const&)::FileProcessingResult,std::allocator<MIL::Util::ComputeWeightsHash(std::vector<std::string> const&,MIL::Util::HashOptions const&)::FileProcessingResult>>::__destroy_vector::operator()[abi:ne200100](&v37);
  }
}

void sub_2180CFE7C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  if (*(v36 - 121) < 0)
  {
    operator delete(*(v36 - 144));
    if ((v35 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (!v35)
  {
LABEL_8:
    __cxa_end_catch();
    JUMPOUT(0x2180CFED8);
  }

  __cxa_free_exception(v34);
  goto LABEL_8;
}

unint64_t *MIL::Util::HashOptions::Validate(unint64_t *this)
{
  v1 = this[1];
  if (!v1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "chunkSize must be greater than 0");
    goto LABEL_17;
  }

  if (*this)
  {
    v2 = v1 > *this;
  }

  else
  {
    v2 = 0;
  }

  if (v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "chunkSize must be <= maxSampleBudget when maxSampleBudget > 0");
    goto LABEL_17;
  }

  if (!this[2])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "minSamplesPerFile must be greater than 0");
    goto LABEL_17;
  }

  v3 = this[5];
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "maxConstantMemoryUsage must be greater than 0");
    goto LABEL_17;
  }

  v4 = this[6];
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "maxConstantBatchSize must be greater than 0");
    goto LABEL_17;
  }

  if (v4 > v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "maxConstantBatchSize must be <= maxConstantMemoryUsage");
LABEL_17:
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  return this;
}

void *std::vector<std::thread>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<MIL::Pass>>>(result, a2);
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_2180D00A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::thread>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t *MIL::Util::ComputeConstantValuesHash@<X0>(const MIL::IRProgram *a1@<X1>, uint64_t *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  MIL::Util::HashOptions::Validate(a1);
  if (*(a1 + 25))
  {
    memset(v7, 0, sizeof(v7));
    *&buf.hash[6] = v7;
    operator new();
  }

  CC_SHA256_Init(&buf);
}

void sub_2180D13D0(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, int a63)
{
  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
    operator delete(STACK[0x2A0]);
  }

  if (a66 < 0)
  {
    operator delete(a61);
  }

  __cxa_end_catch();
  if (a2 == 2)
  {
    __cxa_begin_catch(a1);
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v69 = std::string::append(&v79, "' (estimated size: ");
    v70 = *&v69->__r_.__value_.__l.__data_;
    v80.__r_.__value_.__r.__words[2] = v69->__r_.__value_.__r.__words[2];
    *&v80.__r_.__value_.__l.__data_ = v70;
    v69->__r_.__value_.__l.__size_ = 0;
    v69->__r_.__value_.__r.__words[2] = 0;
    v69->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v78, *v77);
    if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v71 = &v78;
    }

    else
    {
      v71 = v78.__r_.__value_.__r.__words[0];
    }

    if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v78.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v78.__r_.__value_.__l.__size_;
    }

    v73 = std::string::append(&v80, v71, size);
    v74 = *&v73->__r_.__value_.__l.__data_;
    v81.__r_.__value_.__r.__words[2] = v73->__r_.__value_.__r.__words[2];
    *&v81.__r_.__value_.__l.__data_ = v74;
    v73->__r_.__value_.__l.__size_ = 0;
    v73->__r_.__value_.__r.__words[2] = 0;
    v73->__r_.__value_.__r.__words[0] = 0;
    v75 = std::string::append(&v81, " bytes) - try reducing maxConstantMemoryUsage or maxConstantBatchSize");
    v76 = *&v75->__r_.__value_.__l.__data_;
    v82.__r_.__value_.__r.__words[2] = v75->__r_.__value_.__r.__words[2];
    *&v82.__r_.__value_.__l.__data_ = v76;
    v75->__r_.__value_.__l.__size_ = 0;
    v75->__r_.__value_.__r.__words[2] = 0;
    v75->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v82);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  JUMPOUT(0x2180D17E0);
}

void sub_2180D1420(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (*(v28 - 185) < 0)
  {
    operator delete(*(v28 - 208));
  }

  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (SLOBYTE(STACK[0x287]) < 0)
  {
    operator delete(STACK[0x270]);
  }

  if (*(v28 - 217) < 0)
  {
    operator delete(*(v28 - 240));
  }

  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
    operator delete(STACK[0x2A0]);
  }

  if (SLOBYTE(STACK[0x29F]) < 0)
  {
    operator delete(STACK[0x288]);
    if ((v26 & 1) == 0)
    {
LABEL_16:
      if (a2 == 2)
      {
        __cxa_begin_catch(a1);
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "ProgramHashUtils::ComputeConstantValuesHash: Memory allocation failed during constant values hash computation - try reducing maxConstantMemoryUsage or maxConstantBatchSize in HashOptions");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      JUMPOUT(0x2180D1AF0);
    }
  }

  else if (!v26)
  {
    goto LABEL_16;
  }

  __cxa_free_exception(v27);
  goto LABEL_16;
}

void sub_2180D16A0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a60 < 0)
  {
    operator delete(__p);
  }

  if (a2 == 2)
  {
    __cxa_begin_catch(a1);
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v63 = std::string::append(&v73, "' (estimated size: ");
    v64 = *&v63->__r_.__value_.__l.__data_;
    v74.__r_.__value_.__r.__words[2] = v63->__r_.__value_.__r.__words[2];
    *&v74.__r_.__value_.__l.__data_ = v64;
    v63->__r_.__value_.__l.__size_ = 0;
    v63->__r_.__value_.__r.__words[2] = 0;
    v63->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v72, *v71);
    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v65 = &v72;
    }

    else
    {
      v65 = v72.__r_.__value_.__r.__words[0];
    }

    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v72.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v72.__r_.__value_.__l.__size_;
    }

    v67 = std::string::append(&v74, v65, size);
    v68 = *&v67->__r_.__value_.__l.__data_;
    v75.__r_.__value_.__r.__words[2] = v67->__r_.__value_.__r.__words[2];
    *&v75.__r_.__value_.__l.__data_ = v68;
    v67->__r_.__value_.__l.__size_ = 0;
    v67->__r_.__value_.__r.__words[2] = 0;
    v67->__r_.__value_.__r.__words[0] = 0;
    v69 = std::string::append(&v75, " bytes) - try reducing maxConstantMemoryUsage or maxConstantBatchSize");
    v70 = *&v69->__r_.__value_.__l.__data_;
    v76.__r_.__value_.__r.__words[2] = v69->__r_.__value_.__r.__words[2];
    *&v76.__r_.__value_.__l.__data_ = v70;
    v69->__r_.__value_.__l.__size_ = 0;
    v69->__r_.__value_.__r.__words[2] = 0;
    v69->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v76);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  JUMPOUT(0x2180D17E0);
}

void sub_2180D18EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, uint64_t a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
    operator delete(STACK[0x2A0]);
  }

  if (a56 < 0)
  {
    operator delete(a51);
  }

  if (a72 < 0)
  {
    operator delete(a67);
  }

  if (a63 < 0)
  {
    operator delete(a58);
    if ((v73 & 1) == 0)
    {
LABEL_12:
      __cxa_end_catch();
      if (v74)
      {
        operator delete(v74);
      }

      JUMPOUT(0x2180D1A9CLL);
    }
  }

  else if (!v73)
  {
    goto LABEL_12;
  }

  __cxa_free_exception(v72);
  goto LABEL_12;
}

void sub_2180D1A30(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (a56 < 0)
  {
    operator delete(__p);
  }

  __cxa_free_exception(v56);
  __cxa_end_catch();
  JUMPOUT(0x2180D1A60);
}

void sub_2180D1BD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
    operator delete(STACK[0x2A0]);
  }

  if (a69 < 0)
  {
    operator delete(a64);
    if ((v70 & 1) == 0)
    {
LABEL_10:
      __cxa_end_catch();
      _Unwind_Resume(a1);
    }
  }

  else if (!v70)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v69);
  goto LABEL_10;
}

void sub_2180D1C6C(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x2180D1C74);
  }

  __clang_call_terminate(a1);
}

void **std::vector<MIL::Util::anonymous namespace::ConstantInfo>::~vector[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        if (*(v3 - 9) < 0)
        {
          operator delete(*(v3 - 4));
        }

        v3 -= 5;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void MIL::Util::ComputeSeparateHashes(MIL::Util *this@<X0>, const MIL::IRProgram *a2@<X1>, const MIL::Util::HashOptions *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a2;
  v58 = *MEMORY[0x277D85DE8];
  *(a4 + 64) = 0;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  MIL::Util::ComputeStructureHash(this, v7, v8);
  v9 = *(v4 + 25);
  *a4 = *c.count;
  *(a4 + 16) = *&c.hash[2];
  if (v9)
  {
    MIL::Util::ComputeConstantValuesHash(v4, &c);
    *(a4 + 24) = *c.count;
    v10 = *&c.hash[2];
  }

  else
  {
    CC_SHA256_Init(&c);
    *(a4 + 24) = v52;
    v10 = v53;
  }

  *(a4 + 40) = v10;
  if (*(v4 + 24) != 1)
  {
    CC_SHA256_Init(&c);
    *(a4 + 48) = v52;
    *(a4 + 64) = v53;
    return;
  }

  *c.hash = 0;
  *&c.hash[2] = 0;
  *c.count = c.hash;
  v11 = (*(*this + 72))(this);
  std::map<std::string,std::shared_ptr<MIL::IRFunction>>::map[abi:ne200100]<std::__hash_map_const_iterator<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRFunction>>,void *> *>>>(&v52, *(v11 + 16), 0);
  v12 = v52;
  if (v52 == (&v52 + 8))
  {
LABEL_56:
    memset(&v46, 0, sizeof(v46));
    goto LABEL_60;
  }

  v45 = 0;
  v13 = MEMORY[0x277D86220];
  v42 = v4;
  v43 = a4;
  v41 = this;
  while (2)
  {
    v14 = (*(**(v12 + 7) + 48))(*(v12 + 7));
    v15 = (*(*v14 + 64))(v14);
    v16 = **v15;
    v44 = (*v15)[1];
    if (v16 == v44)
    {
      if (v45 > 0x63)
      {
        goto LABEL_56;
      }

      goto LABEL_50;
    }

    v17 = 0;
    do
    {
      v18 = *v16;
      Attributes = MIL::IRObject::GetAttributes(*v16);
      std::map<std::string,std::shared_ptr<MIL::IRValue const>>::map[abi:ne200100]<std::__hash_map_const_iterator<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *> *>>>(&v50, *(Attributes + 16), 0);
      v20 = v50;
      if (v50 != v51)
      {
        while (1)
        {
          v21 = (*(*v20[7] + 40))(v20[7]);
          if (v21)
          {
            if ((*(*v21 + 80))(v21))
            {
              break;
            }
          }

          v22 = v20[1];
          if (v22)
          {
            do
            {
              v23 = v22;
              v22 = *v22;
            }

            while (v22);
          }

          else
          {
            do
            {
              v23 = v20[2];
              v24 = *v23 == v20;
              v20 = v23;
            }

            while (!v24);
          }

          v20 = v23;
          if (v23 == v51)
          {
            goto LABEL_18;
          }
        }

LABEL_58:
        std::__tree<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>>>::destroy(&v50, v51[0]);
        v4 = v42;
        a4 = v43;
        v38 = v41;
        goto LABEL_59;
      }

LABEL_18:
      if (v17)
      {
        goto LABEL_58;
      }

      v25 = (*(*v18 + 160))(v18);
      std::map<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>::map[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__tree_node<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,void *> *,long>>>(&v48, *v25, v25 + 1);
      v26 = v48;
      if (v48 == v49)
      {
LABEL_41:
        v17 = 0;
        v36 = ++v45 > 0x63;
        goto LABEL_42;
      }

      while (1)
      {
        v27 = v26[7];
        v28 = v26[8];
        if (v27 != v28)
        {
          break;
        }

LABEL_35:
        v34 = v26[1];
        if (v34)
        {
          do
          {
            v35 = v34;
            v34 = *v34;
          }

          while (v34);
        }

        else
        {
          do
          {
            v35 = v26[2];
            v24 = *v35 == v26;
            v26 = v35;
          }

          while (!v24);
        }

        v26 = v35;
        if (v35 == v49)
        {
          goto LABEL_41;
        }
      }

      while (1)
      {
        if (!*v27)
        {
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v31 = v26 + 4;
            if (*(v26 + 55) < 0)
            {
              v31 = v26[4];
            }

            v32 = (*(*v18 + 56))(v18);
            if (*(v32 + 23) >= 0)
            {
              v33 = v32;
            }

            else
            {
              v33 = *v32;
            }

            *buf = 136315394;
            v55 = v31;
            v56 = 2080;
            v57 = v33;
            _os_log_error_impl(&dword_217F7E000, v13, OS_LOG_TYPE_ERROR, "ProgramHashUtils::FindBlobFilePathsOptimized: null argument found for parameter '%s' in operation '%s'", buf, 0x16u);
          }

          goto LABEL_27;
        }

        if ((*(**v27 + 24))(*v27))
        {
          Value = MIL::IRArgument::GetValue(*v27);
          v30 = (*(*Value + 40))(Value);
          if (v30)
          {
            if ((*(*v30 + 80))(v30))
            {
              break;
            }
          }
        }

LABEL_27:
        v27 += 2;
        if (v27 == v28)
        {
          goto LABEL_35;
        }
      }

      v17 = 1;
      v36 = 1;
LABEL_42:
      std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::destroy(&v48, v49[0]);
      std::__tree<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>>>::destroy(&v50, v51[0]);
      if (v36)
      {
        break;
      }

      v16 += 2;
    }

    while (v16 != v44);
    if (v45 > 0x63)
    {
      v37 = 1;
    }

    else
    {
      v37 = v17;
    }

    v4 = v42;
    a4 = v43;
    v38 = v41;
    if ((v37 & 1) == 0)
    {
LABEL_50:
      v39 = *(v12 + 1);
      if (v39)
      {
        do
        {
          v40 = v39;
          v39 = *v39;
        }

        while (v39);
      }

      else
      {
        do
        {
          v40 = *(v12 + 2);
          v24 = *v40 == v12;
          v12 = v40;
        }

        while (!v24);
      }

      v12 = v40;
      if (v40 == (&v52 + 8))
      {
        goto LABEL_56;
      }

      continue;
    }

    break;
  }

  if ((v17 & 1) == 0)
  {
    goto LABEL_56;
  }

LABEL_59:
  MIL::Util::FindBlobFilePaths(v38, &v46);
LABEL_60:
  std::__tree<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>>>::destroy(&v52, *(&v52 + 1));
  std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::destroy(&c, *c.hash);
  MIL::Util::ComputeWeightsHash(v4, &v46, &c);
  *(a4 + 48) = *c.count;
  *(a4 + 64) = *&c.hash[2];
  *c.count = &v46;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&c);
}

void sub_2180D22CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char *a22)
{
  std::__tree<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>>>::destroy(v23 - 152, *(v23 - 144));
  std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::destroy(&a21, a22);
  MIL::Util::SeparateHashes::~SeparateHashes(v22);
  _Unwind_Resume(a1);
}

void MIL::Util::SeparateHashes::~SeparateHashes(void **this)
{
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void MIL::Util::ComputeProgramHash(MIL::Util *this@<X0>, const MIL::IRProgram *a2@<X1>, const MIL::Util::HashOptions *a3@<X2>, uint64_t *a4@<X8>)
{
  MIL::Util::ComputeSeparateHashes(this, a2, a3, v7);
  CC_SHA256_Init(&v6);
  if (*(a2 + 25) == 1)
  {
  }

  if (*(a2 + 24) == 1)
  {
  }

  if (v12 < 0)
  {
    operator delete(v11);
  }

  if (v10 < 0)
  {
    operator delete(v9);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }
}

uint64_t MIL::Util::anonymous namespace::HashValue(MIL::Util::_anonymous_namespace_ *this, const MIL::IRValue *a2)
{
  CC_SHA256_Init(&c);
  v3 = (*(*this + 40))(this);
  if (v3)
  {
    v4 = v3;
    v5 = (*(*v3 + 32))(v3);
    if (v5)
    {
      (*(*v5 + 56))(&__p);
      v6 = (v17 & 0x80u) == 0 ? &__p : __p;
      v7 = (v17 & 0x80u) == 0 ? v17 : v16;
      CC_SHA256_Update(&c, v6, v7);
      if (v17 < 0)
      {
        operator delete(__p);
      }
    }

    v8 = (*(*v4 + 136))(v4);
    if (v8)
    {
      v9 = *(v8 + 23);
      if (v9 >= 0)
      {
        v10 = v8;
      }

      else
      {
        v10 = *v8;
      }

      if (v9 >= 0)
      {
        v11 = *(v8 + 23);
      }

      else
      {
        v11 = *(v8 + 8);
      }

      CC_SHA256_Update(&c, v10, v11);
    }
  }

  else
  {
    (*(*this + 72))(&__p, this);
    if ((v17 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v17 & 0x80u) == 0)
    {
      v13 = v17;
    }

    else
    {
      v13 = v16;
    }

    CC_SHA256_Update(&c, p_p, v13);
    if (v17 < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_2180D265C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::map<std::string,std::shared_ptr<MIL::IRValue const>>::map[abi:ne200100]<std::__hash_map_const_iterator<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *> *>>>(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      std::__tree<std::__value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<MIL::IRValue const>> const&>(a1, v4, v6 + 2);
      v6 = *v6;
    }

    while (v6 != a3);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<MIL::IRValue const>> const&>(void *a1, uint64_t a2, const void **a3)
{
  v3 = *std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::__find_equal<std::string>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    std::__tree<std::__value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__construct_node<std::pair<std::string const,std::shared_ptr<MIL::IRValue const>> const&>();
  }

  return v3;
}

uint64_t MIL::Util::anonymous namespace::HashValueType(MIL::Util::_anonymous_namespace_ *this, const MIL::IRValueType *a2)
{
  CC_SHA256_Init(&c);
  (*(*this + 56))(&__p, this);
  if ((v8 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v8 & 0x80u) == 0)
  {
    v4 = v8;
  }

  else
  {
    v4 = v7;
  }

  CC_SHA256_Update(&c, p_p, v4);
  if (v8 < 0)
  {
    operator delete(__p);
  }
}

void sub_2180D28B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Util::anonymous namespace::HashBlock(CC_SHA256_CTX *a1, MIL::IRObject *a2)
{
  v75 = *MEMORY[0x277D85DE8];
  v3 = (*(*a2 + 40))(a2);
  v4 = *v3;
  v5 = *(v3 + 8);
  while (v4 != v5)
  {
    Name = MIL::IRNamedValueType::GetName(*v4);
    Type = MIL::IRNamedValueType::GetType(*v4);
    if (SHIBYTE(v71) < 0)
    {
      operator delete(*buf);
    }

    v4 += 2;
  }

  v9 = (*(*a2 + 88))(a2);
  v10 = *v9;
  v11 = *(v9 + 8);
  while (v10 != v11)
  {
    v10 += 6;
  }

  v12 = (*(*a2 + 56))(a2);
  v13 = **v12;
  v61 = (*v12)[1];
  if (v13 != v61)
  {
    v14 = MEMORY[0x277D86220];
    do
    {
      v62 = v13;
      v15 = *v13;
      v16 = (*(**v13 + 56))(*v13);
      v17 = (*(*v15 + 160))(v15);
      v63 = v15;
      v69[0] = 0;
      v69[1] = 0;
      v68 = v69;
      v19 = v17 + 1;
      v18 = *v17;
      if (*v17 != v17 + 1)
      {
        do
        {
          v20 = v18 + 4;
          v66[0] = 0;
          v66[1] = 0;
          v67 = 0;
          v21 = v18[7];
          v22 = v18[8];
          while (v21 != v22)
          {
            if (*v21)
            {
              v23 = (*(**v21 + 16))(*v21);
              v24 = *v21;
              if (v23)
              {
                v25 = MIL::IRArgument::GetName(v24);
                std::vector<std::string>::push_back[abi:ne200100](v66, v25);
              }

              else
              {
                if ((*(*v24 + 24))(v24))
                {
                  Value = MIL::IRArgument::GetValue(*v21);
                  std::operator+<char>();
                  std::vector<std::string>::push_back[abi:ne200100](v66, &__p);
                  if (v65 < 0)
                  {
                    operator delete(__p);
                  }
                }

                else
                {
                  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
                  {
                    v31 = v18 + 4;
                    if (*(v18 + 55) < 0)
                    {
                      v31 = *v20;
                    }

                    v32 = (*(*v63 + 56))(v63);
                    if (*(v32 + 23) >= 0)
                    {
                      v33 = v32;
                    }

                    else
                    {
                      v33 = *v32;
                    }

                    v34 = (*(**v21 + 16))();
                    v35 = (*(**v21 + 24))();
                    *buf = 136315906;
                    v36 = "false";
                    if (v34)
                    {
                      v37 = "true";
                    }

                    else
                    {
                      v37 = "false";
                    }

                    *&buf[4] = v31;
                    if (v35)
                    {
                      v36 = "true";
                    }

                    *&buf[12] = 2080;
                    *&buf[14] = v33;
                    v71 = 2080;
                    v72 = v37;
                    v73 = 2080;
                    v74 = v36;
                    _os_log_error_impl(&dword_217F7E000, v14, OS_LOG_TYPE_ERROR, "ProgramHashUtils::HashOperation: unknown argument type for parameter '%s' in operation '%s' (IsName()=%s, IsValue()=%s)", buf, 0x2Au);
                  }

                  std::string::basic_string[abi:ne200100]<0>(buf, "<unknown_arg>");
                  std::vector<std::string>::push_back[abi:ne200100](v66, buf);
                }

                if (SHIBYTE(v71) < 0)
                {
                  operator delete(*buf);
                }
              }
            }

            else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              v26 = v18 + 4;
              if (*(v18 + 55) < 0)
              {
                v26 = *v20;
              }

              v27 = (*(*v63 + 56))(v63);
              if (*(v27 + 23) >= 0)
              {
                v28 = v27;
              }

              else
              {
                v28 = *v27;
              }

              *buf = 136315394;
              *&buf[4] = v26;
              *&buf[12] = 2080;
              *&buf[14] = v28;
              _os_log_error_impl(&dword_217F7E000, v14, OS_LOG_TYPE_ERROR, "ProgramHashUtils::HashOperation: null argument found for parameter '%s' in operation '%s'", buf, 0x16u);
            }

            v21 += 2;
          }

          *buf = v18 + 4;
          v38 = std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v68, v18 + 4);
          std::vector<std::string>::__vdeallocate((v38 + 56));
          *(v38 + 56) = *v66;
          *(v38 + 72) = v67;
          v66[1] = 0;
          v67 = 0;
          v66[0] = 0;
          *buf = v66;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](buf);
          v39 = v18[1];
          if (v39)
          {
            do
            {
              v40 = v39;
              v39 = *v39;
            }

            while (v39);
          }

          else
          {
            do
            {
              v40 = v18[2];
              v41 = *v40 == v18;
              v18 = v40;
            }

            while (!v41);
          }

          v18 = v40;
        }

        while (v40 != v19);
        v42 = v68;
        if (v68 != v69)
        {
          do
          {
            v43 = v42[7];
            v44 = v42[8];
            while (v43 != v44)
            {
              v43 += 6;
            }

            v45 = v42[1];
            if (v45)
            {
              do
              {
                v46 = v45;
                v45 = *v45;
              }

              while (v45);
            }

            else
            {
              do
              {
                v46 = v42[2];
                v41 = *v46 == v42;
                v42 = v46;
              }

              while (!v41);
            }

            v42 = v46;
          }

          while (v46 != v69);
        }
      }

      (*(*v63 + 200))(buf, v63);
      v47 = (*(*v63 + 176))(v63);
      v48 = *buf;
      if (*&buf[8] != *buf)
      {
        v49 = v47;
        v50 = 0;
        v51 = 0;
        v52 = 0;
        do
        {
          if (v52 < (v49[1] - *v49) >> 4)
          {
            v53 = MIL::IRNamedValueType::GetType(*(*v49 + v51));
            if (SHIBYTE(v67) < 0)
            {
              operator delete(v66[0]);
            }
          }

          ++v52;
          v48 = *buf;
          v51 += 16;
          v50 += 24;
        }

        while (v52 < 0xAAAAAAAAAAAAAAABLL * ((*&buf[8] - *buf) >> 3));
      }

      Attributes = MIL::IRObject::GetAttributes(v63);
      v56 = (*(*v63 + 208))(v63);
      v57 = **v56;
      v58 = (*v56)[1];
      while (v57 != v58)
      {
        v57 += 2;
      }

      v66[0] = buf;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v66);
      std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::destroy(&v68, v69[0]);
      v13 = v62 + 2;
    }

    while (v62 + 2 != v61);
  }

  v59 = MIL::IRObject::GetAttributes(a2);
}