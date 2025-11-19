void std::__introsort<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::MinHeapCompare &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *,false>(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = a2;
  v8 = a1;
  v60 = a2;
  v61 = a1;
LABEL_2:
  for (i = 1 - a4; ; ++i)
  {
    v10 = v7 - v8;
    v11 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v8) >> 4);
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return;
      }

      if (v11 == 2)
      {
        v52 = *(v7 - 12);
        v60 = v7 - 6;
        if (v52 > *v8)
        {
          v53 = &v61;
          v54 = &v60;
          goto LABEL_94;
        }

        return;
      }

      goto LABEL_10;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {
      v60 = v7 - 6;
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::MinHeapCompare &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *,0>(v8, v8 + 6, v8 + 12, v7 - 12);
      return;
    }

    if (v11 == 5)
    {
      v60 = v7 - 6;
      v65 = (v8 + 6);
      v66 = v8;
      v63 = (v8 + 18);
      v64 = (v8 + 12);
      v62 = v7 - 6;
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::MinHeapCompare &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *,0>(v8, v8 + 6, v8 + 12, v8 + 36);
      if (*(v7 - 12) > *(v8 + 36))
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&>(&v63, &v62);
        if (*v63 > *(v8 + 24))
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&>(&v64, &v63);
          if (*v64 > *(v8 + 12))
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&>(&v65, &v64);
            v55 = *v65;
            v56 = *v8;
            goto LABEL_92;
          }
        }
      }

      return;
    }

LABEL_10:
    if (v10 <= 1151)
    {
      if (a5)
      {
        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::MinHeapCompare &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *>(v8, v7);
      }

      else
      {
        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::MinHeapCompare &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *>(v8, v7);
      }

      return;
    }

    if (i == 1)
    {
      if (v8 != v7)
      {
        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::MinHeapCompare &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *>(v8, v7, v7, a3);
      }

      return;
    }

    v12 = v11 >> 1;
    v13 = &v8[6 * (v11 >> 1)];
    v14 = (v7 - 6);
    if (v10 < 0x1801)
    {
      v65 = v8;
      v66 = v13;
      v64 = (v7 - 6);
      v19 = *v8;
      v20 = *v14;
      if (*v8 <= *v13)
      {
        if (v20 > v19)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&>(&v65, &v64);
          if (*v65 > *v66)
          {
            v21 = &v66;
            v22 = &v65;
            goto LABEL_35;
          }
        }
      }

      else
      {
        v21 = &v66;
        if (v20 > v19)
        {
          goto LABEL_22;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&>(&v66, &v65);
        if (*v64 > *v65)
        {
          v21 = &v65;
LABEL_22:
          v22 = &v64;
LABEL_35:
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&>(v21, v22);
        }
      }

      if (a5)
      {
        goto LABEL_37;
      }

      goto LABEL_63;
    }

    v65 = v13;
    v66 = v8;
    v64 = (v7 - 6);
    v15 = *v13;
    v16 = *v14;
    if (*v13 > *v8)
    {
      v17 = &v66;
      if (v16 <= v15)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&>(&v66, &v65);
        if (*v64 <= *v65)
        {
          goto LABEL_27;
        }

        v17 = &v65;
      }

      v18 = &v64;
      goto LABEL_26;
    }

    if (v16 > v15)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&>(&v65, &v64);
      if (*v65 > *v66)
      {
        v17 = &v66;
        v18 = &v65;
LABEL_26:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&>(v17, v18);
      }
    }

LABEL_27:
    v23 = &v8[6 * v12];
    v25 = *(v23 - 12);
    v24 = v23 - 6;
    v26 = v25;
    v27 = *(v8 + 12);
    v65 = v24;
    v66 = (v8 + 6);
    v28 = *(v7 - 24);
    v64 = (v7 - 12);
    if (v25 > v27)
    {
      v29 = &v66;
      if (v28 <= v26)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&>(&v66, &v65);
        if (*v64 <= *v65)
        {
          goto LABEL_42;
        }

        v29 = &v65;
      }

      v30 = &v64;
      goto LABEL_41;
    }

    if (v28 > v26)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&>(&v65, &v64);
      if (*v65 > *v66)
      {
        v29 = &v66;
        v30 = &v65;
LABEL_41:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&>(v29, v30);
      }
    }

LABEL_42:
    v31 = &v8[6 * v12];
    v33 = *(v31 + 12);
    v32 = v31 + 6;
    v34 = v33;
    v35 = *(v8 + 24);
    v65 = v32;
    v66 = (v8 + 12);
    v36 = *(v7 - 36);
    v64 = (v7 - 18);
    if (v33 > v35)
    {
      v37 = &v66;
      if (v36 <= v34)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&>(&v66, &v65);
        if (*v64 <= *v65)
        {
          goto LABEL_51;
        }

        v37 = &v65;
      }

      v38 = &v64;
      goto LABEL_50;
    }

    if (v36 > v34)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&>(&v65, &v64);
      if (*v65 > *v66)
      {
        v37 = &v66;
        v38 = &v65;
LABEL_50:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&>(v37, v38);
      }
    }

LABEL_51:
    v65 = v13;
    v66 = v24;
    v64 = v32;
    v39 = *v13;
    v40 = *v32;
    if (*v13 <= *v24)
    {
      if (v40 <= v39)
      {
        goto LABEL_60;
      }

      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&>(&v65, &v64);
      if (*v65 <= *v66)
      {
        goto LABEL_60;
      }

      v41 = &v66;
      v42 = &v65;
    }

    else
    {
      v41 = &v66;
      if (v40 <= v39)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&>(&v66, &v65);
        if (*v64 <= *v65)
        {
          goto LABEL_60;
        }

        v41 = &v65;
      }

      v42 = &v64;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&>(v41, v42);
LABEL_60:
    v43 = *v8;
    v59 = *(v8 + 1);
    v8[1] = 0;
    v45 = v8[3];
    v44 = v8[4];
    v8[2] = 0;
    v8[3] = 0;
    v66 = v44;
    v67 = *(v8 + 10);
    *v8 = *v13;
    std::vector<int>::__move_assign((v8 + 1), (v13 + 1));
    v46 = v13[4];
    *(v8 + 10) = *(v13 + 10);
    v8[4] = v46;
    *v13 = v43;
    v47 = v13[1];
    if (v47)
    {
      v13[2] = v47;
      operator delete(v47);
    }

    *(v13 + 1) = v59;
    v13[3] = v45;
    v48 = v66;
    *(v13 + 10) = v67;
    v13[4] = v48;
    v8 = v61;
    if (a5)
    {
LABEL_37:
      v7 = v60;
      goto LABEL_64;
    }

LABEL_63:
    v7 = v60;
    if (*(v8 - 12) <= *v8)
    {
      v8 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::MinHeapCompare &>(v8, v60);
      goto LABEL_73;
    }

LABEL_64:
    v49 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::MinHeapCompare &>(v8, v7);
    if ((v50 & 1) == 0)
    {
      goto LABEL_71;
    }

    v51 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::MinHeapCompare &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *>(v8, v49);
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::MinHeapCompare &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *>(v49 + 6, v7))
    {
      if (v51)
      {
        return;
      }

      v60 = v49;
      v7 = v49;
    }

    else
    {
      if (!v51)
      {
LABEL_71:
        std::__introsort<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::MinHeapCompare &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *,false>(v8, v49, a3, -i, a5 & 1);
        v8 = v49 + 6;
LABEL_73:
        a5 = 0;
        v61 = v8;
        a4 = -i;
        goto LABEL_2;
      }

      v61 = v49 + 6;
      v8 = v49 + 6;
    }
  }

  v57 = *(v8 + 12);
  v65 = (v8 + 6);
  v66 = v8;
  v58 = *(v7 - 12);
  v64 = (v7 - 6);
  if (v57 > *v8)
  {
    v53 = &v66;
    if (v58 <= v57)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&>(&v66, &v65);
      if (*v64 <= *v65)
      {
        return;
      }

      v53 = &v65;
    }

    v54 = &v64;
    goto LABEL_94;
  }

  if (v58 > v57)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&>(&v65, &v64);
    v55 = *v65;
    v56 = *v66;
LABEL_92:
    if (v55 > v56)
    {
      v53 = &v66;
      v54 = &v65;
LABEL_94:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&>(v53, v54);
    }
  }
}

__n128 std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&>(uint64_t **a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = **a1;
  v2 = *a1;
  v6 = *(*a1 + 1);
  v5 = *a1 + 1;
  v12 = v6;
  *v5 = 0;
  v8 = v2[3];
  v7 = v2[4];
  v2[2] = 0;
  v2[3] = 0;
  v13 = v7;
  v14 = *(v2 + 10);
  *v2 = *v3;
  std::vector<int>::__move_assign(v5, (v3 + 8));
  v9 = *(v3 + 32);
  *(v2 + 10) = *(v3 + 40);
  v2[4] = v9;
  *v3 = v4;
  v10 = *(v3 + 8);
  if (v10)
  {
    *(v3 + 16) = v10;
    operator delete(v10);
  }

  result = v12;
  *(v3 + 8) = v12;
  *(v3 + 24) = v8;
  *(v3 + 32) = v13;
  *(v3 + 40) = v14;
  return result;
}

double std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::MinHeapCompare &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, unsigned __int32 *a4)
{
  v16 = a2;
  v17 = a1;
  v14 = a4;
  v15 = a3;
  v20 = a1;
  v18 = a3;
  v19 = a2;
  v8 = *a2;
  v9 = *a3;
  if (*a2 <= *a1)
  {
    if (v9 > v8)
    {
      v11 = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&>(&v19, &v18);
      if (*v19 > *v20)
      {
        v10 = &v20;
        v12 = &v19;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v10 = &v20;
    if (v9 > v8)
    {
LABEL_5:
      v12 = &v18;
LABEL_9:
      v11 = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&>(v10, v12);
      goto LABEL_10;
    }

    v11 = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&>(&v20, &v19);
    if (*v18 > *v19)
    {
      v10 = &v19;
      goto LABEL_5;
    }
  }

LABEL_10:
  v11.n128_u32[0] = *a4;
  if (*a4 > *a3)
  {
    v11 = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&>(&v15, &v14);
    v11.n128_u32[0] = *v15;
    if (*v15 > *a2)
    {
      v11 = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&>(&v16, &v15);
      v11.n128_u32[0] = *v16;
      if (*v16 > *a1)
      {
        v11.n128_u64[0] = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&>(&v17, &v16).n128_u64[0];
      }
    }
  }

  return v11.n128_f64[0];
}

void std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::MinHeapCompare &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = a1 + 48;
    if (a1 + 48 != a2)
    {
      v5 = 0;
      v6 = a1;
      do
      {
        v7 = v4;
        v8 = *(v6 + 48);
        if (v8 > *v6)
        {
          v9 = *(v6 + 52);
          v10 = *(v6 + 56);
          v17 = *(v6 + 64);
          *(v6 + 64) = 0;
          *(v6 + 72) = 0;
          *(v6 + 56) = 0;
          v18 = *(v6 + 80);
          v19 = *(v6 + 88);
          v11 = v5;
          while (1)
          {
            v12 = v11;
            v13 = a1 + v11;
            *(a1 + v11 + 48) = *(a1 + v11);
            std::vector<int>::__move_assign(a1 + v11 + 56, (a1 + v11 + 8));
            *(v13 + 80) = *(v13 + 32);
            *(v13 + 88) = *(v13 + 40);
            if (!v12)
            {
              break;
            }

            v11 = v12 - 48;
            if (*(v13 - 48) >= v8)
            {
              v14 = a1 + v12;
              goto LABEL_10;
            }
          }

          v14 = a1;
LABEL_10:
          *v14 = v8;
          *(v14 + 4) = v9;
          v15 = *(v13 + 8);
          if (v15)
          {
            *(v14 + 16) = v15;
            operator delete(v15);
            v16 = a1 + v12;
            *(v16 + 16) = 0;
            *(v16 + 24) = 0;
          }

          *(v13 + 8) = v10;
          *(v14 + 16) = v17;
          *(v13 + 32) = v18;
          *(v13 + 40) = v19;
        }

        v4 = v7 + 48;
        v5 += 48;
        v6 = v7;
      }

      while (v7 + 48 != a2);
    }
  }
}

uint64_t std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::MinHeapCompare &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *>(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = result + 48;
    if (result + 48 != a2)
    {
      v4 = result - 48;
      do
      {
        v5 = v3;
        v6 = *(result + 48);
        if (v6 > *result)
        {
          v7 = *(result + 52);
          v13 = *(result + 56);
          v9 = *(result + 72);
          v8 = *(result + 80);
          *(result + 64) = 0;
          *(result + 72) = 0;
          *(result + 56) = 0;
          v14 = v8;
          v15 = *(result + 88);
          v10 = v4;
          do
          {
            *(v10 + 96) = *(v10 + 48);
            std::vector<int>::__move_assign(v10 + 104, (v10 + 56));
            *(v10 + 128) = *(v10 + 80);
            *(v10 + 136) = *(v10 + 88);
            v11 = *v10;
            v10 -= 48;
          }

          while (v11 < v6);
          *(v10 + 96) = v6;
          *(v10 + 100) = v7;
          v12 = *(v10 + 104);
          if (v12)
          {
            *(v10 + 112) = v12;
            operator delete(v12);
          }

          *(v10 + 104) = v13;
          *(v10 + 120) = v9;
          *(v10 + 128) = v14;
          *(v10 + 136) = v15;
        }

        v3 = v5 + 48;
        v4 += 48;
        result = v5;
      }

      while (v5 + 48 != a2);
    }
  }

  return result;
}

uint64_t *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::MinHeapCompare &>(std::vector<int> *this, unint64_t a2)
{
  v22 = a2;
  begin = this->__begin_;
  p_end = &this->__end_;
  v18 = *&this->__end_;
  v5 = this[1].__begin_;
  this->__end_ = 0;
  v7 = &this[1].__end_;
  end = this[1].__end_;
  this->__end_cap_.__value_ = 0;
  this[1].__begin_ = 0;
  v20 = end;
  value = this[1].__end_cap_.__value_;
  if (*(a2 - 48) >= *&begin)
  {
    v10 = this + 2;
    do
    {
      v8 = v10;
      if (v10 >= a2)
      {
        break;
      }

      v10 += 2;
    }

    while (*&v8->__begin_ >= *&begin);
  }

  else
  {
    v8 = this;
    do
    {
      v9 = *&v8[2].__begin_;
      v8 += 2;
    }

    while (v9 >= *&begin);
  }

  v23 = v8;
  if (v8 < a2)
  {
    do
    {
      v11 = *(a2 - 48);
      a2 -= 48;
    }

    while (v11 < *&begin);
    v22 = a2;
  }

  v19 = begin;
  if (v8 < a2)
  {
    do
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&>(&v23, &v22);
      begin = v19;
      v8 = v23;
      do
      {
        v12 = *&v8[2].__begin_;
        v8 += 2;
      }

      while (v12 >= *&v19);
      v23 = v8;
      v13 = v22;
      do
      {
        v14 = *(v13 - 48);
        v13 -= 48;
      }

      while (v14 < *&v19);
      v22 = v13;
    }

    while (v8 < v13);
  }

  if (&v8[-2] != this)
  {
    this->__begin_ = v8[-2].__begin_;
    std::vector<int>::__move_assign(p_end, &v8[-2].__end_);
    begin = v19;
    v15 = v8[-1].__end_;
    *(v7 + 2) = v8[-1].__end_cap_.__value_;
    *v7 = v15;
  }

  v8[-2].__begin_ = begin;
  v16 = v8[-2].__end_;
  if (v16)
  {
    v8[-2].__end_cap_.__value_ = v16;
    operator delete(v16);
  }

  *&v8[-2].__end_ = v18;
  v8[-1].__begin_ = v5;
  v8[-1].__end_ = v20;
  LODWORD(v8[-1].__end_cap_.__value_) = value;
  return v23;
}

std::vector<int> *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::MinHeapCompare &>(std::vector<int> *this, unint64_t a2)
{
  v4 = 0;
  begin = this->__begin_;
  p_end = &this->__end_;
  v20 = *&this->__end_;
  v7 = &this[1].__end_;
  end = this[1].__end_;
  value = this[1].__end_cap_.__value_;
  v8 = this[1].__begin_;
  this->__end_ = 0;
  this->__end_cap_.__value_ = 0;
  this[1].__begin_ = 0;
  do
  {
    v9 = *&this[v4 + 2].__begin_;
    v4 += 2;
  }

  while (v9 > *&begin);
  v10 = &this[v4];
  v25 = &this[v4];
  if (v4 == 2)
  {
    do
    {
      if (v10 >= a2)
      {
        break;
      }

      v12 = *(a2 - 48);
      a2 -= 48;
    }

    while (v12 <= *&begin);
  }

  else
  {
    do
    {
      v11 = *(a2 - 48);
      a2 -= 48;
    }

    while (v11 <= *&begin);
  }

  v24 = a2;
  v13 = &this[v4];
  v21 = begin;
  if (v10 < a2)
  {
    do
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&>(&v25, &v24);
      begin = v21;
      v13 = v25;
      do
      {
        v14 = *&v13[2].__begin_;
        v13 += 2;
      }

      while (v14 > *&v21);
      v25 = v13;
      v15 = v24;
      do
      {
        v16 = *(v15 - 48);
        v15 -= 48;
      }

      while (v16 <= *&v21);
      v24 = v15;
    }

    while (v13 < v15);
  }

  if (&v13[-2] != this)
  {
    this->__begin_ = v13[-2].__begin_;
    std::vector<int>::__move_assign(p_end, &v13[-2].__end_);
    begin = v21;
    v17 = v13[-1].__end_;
    *(v7 + 2) = v13[-1].__end_cap_.__value_;
    *v7 = v17;
  }

  v13[-2].__begin_ = begin;
  v18 = v13[-2].__end_;
  if (v18)
  {
    v13[-2].__end_cap_.__value_ = v18;
    operator delete(v18);
  }

  *&v13[-2].__end_ = v20;
  v13[-1].__begin_ = v8;
  LODWORD(v13[-1].__end_cap_.__value_) = value;
  v13[-1].__end_ = end;
  return v13 - 2;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::MinHeapCompare &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *>(uint64_t *a1, uint64_t *a2)
{
  v2 = a2;
  v33 = a2;
  v34 = a1;
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 4);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v31 = a1;
        v12 = *(a1 + 12);
        v13 = *(a2 - 12);
        v37 = (a2 - 6);
        v38 = (a1 + 6);
        if (v12 > *a1)
        {
          v6 = &v31;
          if (v13 <= v12)
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&>(&v31, &v38);
            if (*v37 <= *v38)
            {
              return 1;
            }

            v6 = &v38;
          }

          v7 = &v37;
          goto LABEL_28;
        }

        if (v13 <= v12)
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&>(&v38, &v37);
        v10 = *v38;
        v11 = *v31;
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::MinHeapCompare &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *,0>(a1, a1 + 6, a1 + 12, a2 - 12);
        return 1;
      case 5:
        v8 = (a1 + 6);
        v31 = a1;
        v9 = (a1 + 12);
        v37 = (a1 + 12);
        v38 = (a1 + 6);
        v35 = a2 - 6;
        v36 = (a1 + 18);
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::MinHeapCompare &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *,0>(a1, a1 + 6, a1 + 12, a1 + 36);
        if (*(v2 - 12) <= *(a1 + 36))
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&>(&v36, &v35);
        if (*v36 <= *v9)
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&>(&v37, &v36);
        if (*v37 <= *v8)
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&>(&v38, &v37);
        v10 = *v38;
        v11 = *a1;
        break;
      default:
        goto LABEL_18;
    }

    if (v10 > v11)
    {
      v6 = &v31;
      v7 = &v38;
      goto LABEL_28;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 12);
    v33 = a2 - 6;
    if (v5 > *a1)
    {
      v6 = &v34;
      v7 = &v33;
LABEL_28:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&>(v6, v7);
    }

    return 1;
  }

LABEL_18:
  v14 = a1 + 12;
  v15 = *(a1 + 24);
  v31 = a1;
  v16 = *(a1 + 12);
  v37 = (a1 + 12);
  v38 = (a1 + 6);
  if (v16 <= *a1)
  {
    if (v15 <= v16)
    {
      goto LABEL_33;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&>(&v38, &v37);
    if (*v38 <= *v31)
    {
      goto LABEL_33;
    }

    v17 = &v31;
    v18 = &v38;
    goto LABEL_32;
  }

  v17 = &v31;
  if (v15 > v16)
  {
LABEL_22:
    v18 = &v37;
LABEL_32:
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&>(v17, v18);
    goto LABEL_33;
  }

  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&>(&v31, &v38);
  if (*v37 > *v38)
  {
    v17 = &v38;
    goto LABEL_22;
  }

LABEL_33:
  v19 = a1 + 18;
  if (v19 == v2)
  {
    return 1;
  }

  v20 = 0;
  while (1)
  {
    v21 = *v19;
    if (*v19 > *v14)
    {
      break;
    }

LABEL_43:
    v14 = v19;
    v19 += 6;
    if (v19 == v2)
    {
      return 1;
    }
  }

  v22 = *(v19 + 1);
  v30 = *(v19 + 1);
  v24 = v19[3];
  v23 = v19[4];
  v19[2] = 0;
  v19[3] = 0;
  v19[1] = 0;
  v31 = v23;
  v32 = *(v19 + 10);
  do
  {
    v25 = v14;
    v14[6] = *v14;
    std::vector<int>::__move_assign((v14 + 7), (v14 + 1));
    v14[10] = v14[4];
    *(v14 + 22) = *(v14 + 10);
    if (v14 == v34)
    {
      break;
    }

    v14 -= 6;
  }

  while (*(v25 - 12) < v21);
  *v25 = v21;
  *(v25 + 1) = v22;
  v26 = v25[1];
  if (v26)
  {
    v25[2] = v26;
    operator delete(v26);
  }

  *(v25 + 1) = v30;
  v27 = v32;
  v28 = v31;
  v25[3] = v24;
  v25[4] = v28;
  *(v25 + 10) = v27;
  if (++v20 != 8)
  {
    v2 = v33;
    goto LABEL_43;
  }

  return v19 + 6 == v33;
}

uint64_t *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::MinHeapCompare &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *>(float *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v18 = a1;
  if (a1 != a2)
  {
    v6 = a2;
    v7 = a1;
    v8 = a2 - a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 4);
    if (a2 - a1 >= 49)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = &a1[12 * v10];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::MinHeapCompare &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *>(v7, a4, v9, v12);
        v12 -= 48;
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
        if (*v13 > *v18)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&>(&v17, &v18);
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::MinHeapCompare &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *>(v18, a4, v9, v18);
          v13 = v17;
        }

        v13 += 6;
        v17 = v13;
      }

      while (v13 != a3);
      v7 = v18;
      v8 = v6 - v18;
    }

    if (v8 >= 49)
    {
      v14 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 4);
      do
      {
        std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::MinHeapCompare,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *>(v7, v6, a4, v14);
        v6 -= 6;
      }

      while (v14-- > 2);
      return v17;
    }

    return v13;
  }

  return a3;
}

void std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::MinHeapCompare &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (0xAAAAAAAAAAAAAAABLL * ((a4 - a1) >> 4)))
    {
      v9 = (0x5555555555555556 * ((a4 - a1) >> 4)) | 1;
      v10 = a1 + 48 * v9;
      if (0x5555555555555556 * ((a4 - a1) >> 4) + 2 < a3 && *v10 > *(v10 + 48))
      {
        v10 += 48;
        v9 = 0x5555555555555556 * ((a4 - a1) >> 4) + 2;
      }

      v11 = *a4;
      if (*v10 <= *a4)
      {
        v12 = *(a4 + 4);
        v21 = *(a4 + 8);
        v13 = *(a4 + 32);
        v20 = *(a4 + 24);
        *(a4 + 16) = 0;
        *(a4 + 24) = 0;
        *(a4 + 8) = 0;
        v22 = v13;
        v23 = *(a4 + 40);
        do
        {
          v14 = v5;
          v5 = v10;
          v15 = (v10 + 8);
          *v14 = *v10;
          std::vector<int>::__move_assign(v14 + 8, (v10 + 8));
          v16 = *(v5 + 32);
          *(v14 + 40) = *(v5 + 40);
          *(v14 + 32) = v16;
          if (v7 < v9)
          {
            break;
          }

          v17 = 2 * v9;
          v9 = (2 * v9) | 1;
          v10 = a1 + 48 * v9;
          v18 = v17 + 2;
          if (v18 < a3 && *v10 > *(v10 + 48))
          {
            v10 += 48;
            v9 = v18;
          }
        }

        while (*v10 <= v11);
        *v5 = v11;
        *(v5 + 4) = v12;
        v19 = *(v5 + 8);
        if (v19)
        {
          *(v5 + 16) = v19;
          operator delete(v19);
          *v15 = 0;
          v15[1] = 0;
          v15[2] = 0;
        }

        *(v5 + 8) = v21;
        *(v5 + 24) = v20;
        *(v5 + 32) = v22;
        *(v5 + 40) = v23;
      }
    }
  }
}

void std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::MinHeapCompare,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v8 = *a1;
    v7 = *(a1 + 8);
    v10 = *(a1 + 16);
    v9 = *(a1 + 24);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    v18 = *(a1 + 32);
    v19 = *(a1 + 40);
    v11 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::MinHeapCompare &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *>(a1, a3, a4);
    v12 = v11;
    if (v11 == (a2 - 48))
    {
      *v11 = v8;
      v17 = v11 + 1;
      v16 = v11[1];
      if (v16)
      {
        v12[2] = v16;
        operator delete(v16);
        *v17 = 0;
        v12[2] = 0;
        v12[3] = 0;
      }

      v12[1] = v7;
      v12[2] = v10;
      v12[3] = v9;
      v12[4] = v18;
      *(v12 + 10) = v19;
    }

    else
    {
      *v11 = *(a2 - 48);
      std::vector<int>::__move_assign((v11 + 1), (a2 - 40));
      v13 = *(a2 - 16);
      *(v12 + 10) = *(a2 - 8);
      v12[4] = v13;
      v14 = (v12 + 6);
      *(a2 - 48) = v8;
      v15 = *(a2 - 40);
      if (v15)
      {
        *(a2 - 32) = v15;
        operator delete(v15);
        *(a2 - 40) = 0;
        *(a2 - 32) = 0;
        *(a2 - 24) = 0;
      }

      *(a2 - 40) = v7;
      *(a2 - 32) = v10;
      *(a2 - 24) = v9;
      *(a2 - 16) = v18;
      *(a2 - 8) = v19;
      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::MinHeapCompare &,std::__wrap_iter<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *>>(a1, v14, a3, 0xAAAAAAAAAAAAAAABLL * ((v14 - a1) >> 4));
    }
  }
}

void sub_1B5611A74(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::MinHeapCompare &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = a1;
    v8 = a1 + 48 * v5;
    a1 = v8 + 48;
    v9 = 2 * v5;
    v5 = (2 * v5) | 1;
    v10 = v9 + 2;
    if (v10 < a3)
    {
      v12 = *(v8 + 96);
      v11 = v8 + 96;
      if (*(v11 - 48) > v12)
      {
        a1 = v11;
        v5 = v10;
      }
    }

    *v7 = *a1;
    std::vector<int>::__move_assign(v7 + 8, (a1 + 8));
    v13 = *(a1 + 32);
    *(v7 + 40) = *(a1 + 40);
    *(v7 + 32) = v13;
  }

  while (v5 <= v6);
  return a1;
}

__n128 std::vector<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement,std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement>>::__construct_one_at_end[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement const&>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 16) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v4 + 16, *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 2);
  result = *(a2 + 40);
  *(v4 + 40) = result;
  *(a1 + 8) = v4 + 56;
  return result;
}

uint64_t std::vector<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement,std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement>>::__emplace_back_slow_path<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement>>(a1, v6);
  }

  v7 = 56 * v2;
  v14 = 0;
  v15 = v7;
  v16 = v7;
  *v7 = *a2;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 16) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v7 + 16, *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 2);
  *(v7 + 40) = *(a2 + 40);
  *&v16 = v16 + 56;
  v8 = a1[1];
  v9 = v15 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement,std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement> &>::~__split_buffer(&v14);
  return v13;
}

void sub_1B5611D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement,std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement> &>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 16) = 0;
      *(a4 + 16) = *(v6 + 16);
      *(a4 + 32) = *(v6 + 32);
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      *(v6 + 32) = 0;
      *(a4 + 40) = *(v6 + 40);
      v6 += 56;
      a4 += 56;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      v7 = *(v5 + 16);
      if (v7)
      {
        *(v5 + 24) = v7;
        operator delete(v7);
      }

      v5 += 56;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 40);
    if (v3)
    {
      *(v1 - 32) = v3;
      operator delete(v3);
    }

    v1 -= 56;
  }
}

uint64_t std::__split_buffer<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement,std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement> &>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement,std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement> &>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement,std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement> &>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    *(a1 + 16) = v2 - 56;
    v5 = *(v2 - 40);
    if (v5)
    {
      *(v2 - 32) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 56;
    }
  }
}

void std::vector<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement,std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement,std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement,std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 48)
  {
    v4 = *(i - 40);
    if (v4)
    {
      *(i - 32) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *,false>(__int128 *a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = a2;
  v8 = a1;
  v57 = a2;
  v58 = a1;
LABEL_2:
  for (i = 1 - a4; ; ++i)
  {
    v10 = v7 - v8;
    v11 = 0x6DB6DB6DB6DB6DB7 * ((v7 - v8) >> 3);
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return;
      }

      if (v11 == 2)
      {
        v49 = *(v7 - 14);
        v57 = (v7 - 56);
        if (v49 < *v8)
        {
          v50 = &v58;
          v51 = &v57;
          goto LABEL_94;
        }

        return;
      }

      goto LABEL_10;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {
      v57 = (v7 - 56);
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *,0>(v8, (v8 + 56), v8 + 7, v7 - 14);
      return;
    }

    if (v11 == 5)
    {
      v57 = (v7 - 56);
      *&v63 = v8;
      v61 = (v8 + 7);
      *&v62 = v8 + 56;
      v59 = v7 - 56;
      v60 = v8 + 42;
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *,0>(v8, (v8 + 56), v8 + 7, v8 + 42);
      if (*(v7 - 14) < *(v8 + 42))
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&>(&v60, &v59);
        if (*v60 < *(v8 + 28))
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&>(&v61, &v60);
          if (*v61 < *(v8 + 14))
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&>(&v62, &v61);
            v52 = *v62;
            v53 = *v8;
            goto LABEL_92;
          }
        }
      }

      return;
    }

LABEL_10:
    if (v10 <= 1343)
    {
      if (a5)
      {
        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *>(v8, v7);
      }

      else
      {
        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *>(v8, v7);
      }

      return;
    }

    if (i == 1)
    {
      if (v8 != v7)
      {
        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *>(v8, v7, v7, a3);
      }

      return;
    }

    v12 = v11 >> 1;
    v13 = v8 + 56 * (v11 >> 1);
    v14 = v7 - 14;
    if (v10 < 0x1C01)
    {
      *&v63 = v13;
      v61 = v7 - 14;
      *&v62 = v8;
      v19 = *v8;
      v20 = *v14;
      if (*v8 >= *v13)
      {
        if (v20 < v19)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&>(&v62, &v61);
          if (*v62 < *v63)
          {
            v21 = &v63;
            v22 = &v62;
            goto LABEL_35;
          }
        }
      }

      else
      {
        v21 = &v63;
        if (v20 < v19)
        {
          goto LABEL_22;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&>(&v63, &v62);
        if (*v61 < *v62)
        {
          v21 = &v62;
LABEL_22:
          v22 = &v61;
LABEL_35:
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&>(v21, v22);
        }
      }

      if (a5)
      {
        goto LABEL_37;
      }

      goto LABEL_63;
    }

    *&v63 = v8;
    v61 = v7 - 14;
    *&v62 = v13;
    v15 = *v13;
    v16 = *v14;
    if (*v13 < *v8)
    {
      v17 = &v63;
      if (v16 >= v15)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&>(&v63, &v62);
        if (*v61 >= *v62)
        {
          goto LABEL_27;
        }

        v17 = &v62;
      }

      v18 = &v61;
      goto LABEL_26;
    }

    if (v16 < v15)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&>(&v62, &v61);
      if (*v62 < *v63)
      {
        v17 = &v63;
        v18 = &v62;
LABEL_26:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&>(v17, v18);
      }
    }

LABEL_27:
    v23 = v8 + 14 * v12;
    v25 = *(v23 - 14);
    v24 = v23 - 14;
    v26 = v25;
    v27 = *(v8 + 14);
    *&v63 = v8 + 56;
    *&v62 = v24;
    v28 = *(v7 - 28);
    v61 = (v7 - 7);
    if (v25 < v27)
    {
      v29 = &v63;
      if (v28 >= v26)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&>(&v63, &v62);
        if (*v61 >= *v62)
        {
          goto LABEL_42;
        }

        v29 = &v62;
      }

      v30 = &v61;
      goto LABEL_41;
    }

    if (v28 < v26)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&>(&v62, &v61);
      if (*v62 < *v63)
      {
        v29 = &v63;
        v30 = &v62;
LABEL_41:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&>(v29, v30);
      }
    }

LABEL_42:
    v31 = v8 + 14 * v12;
    v33 = v31[14];
    v32 = (v31 + 14);
    v34 = v33;
    v35 = *(v8 + 28);
    *&v63 = v8 + 7;
    *&v62 = v32;
    v36 = *(v7 - 42);
    v61 = v7 - 42;
    if (v33 < v35)
    {
      v37 = &v63;
      if (v36 >= v34)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&>(&v63, &v62);
        if (*v61 >= *v62)
        {
          goto LABEL_51;
        }

        v37 = &v62;
      }

      v38 = &v61;
      goto LABEL_50;
    }

    if (v36 < v34)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&>(&v62, &v61);
      if (*v62 < *v63)
      {
        v37 = &v63;
        v38 = &v62;
LABEL_50:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&>(v37, v38);
      }
    }

LABEL_51:
    *&v63 = v24;
    v61 = v32;
    *&v62 = v13;
    v39 = *v13;
    v40 = *v32;
    if (*v13 >= *v24)
    {
      if (v40 >= v39)
      {
        goto LABEL_60;
      }

      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&>(&v62, &v61);
      if (*v62 >= *v63)
      {
        goto LABEL_60;
      }

      v41 = &v63;
      v42 = &v62;
    }

    else
    {
      v41 = &v63;
      if (v40 >= v39)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&>(&v63, &v62);
        if (*v61 >= *v62)
        {
          goto LABEL_60;
        }

        v41 = &v62;
      }

      v42 = &v61;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&>(v41, v42);
LABEL_60:
    v43 = *v8;
    v56 = v8[1];
    v44 = *(v8 + 4);
    *(v8 + 2) = 0;
    *(v8 + 3) = 0;
    *(v8 + 4) = 0;
    v62 = *(v8 + 40);
    v63 = v43;
    *v8 = *v13;
    std::vector<int>::__move_assign((v8 + 1), v13 + 1);
    *(v8 + 40) = *(v13 + 40);
    *v13 = v63;
    v45 = *(v13 + 2);
    if (v45)
    {
      *(v13 + 3) = v45;
      operator delete(v45);
    }

    *(v13 + 1) = v56;
    *(v13 + 4) = v44;
    *(v13 + 40) = v62;
    v8 = v58;
    if (a5)
    {
LABEL_37:
      v7 = v57;
      goto LABEL_64;
    }

LABEL_63:
    v7 = v57;
    if (*(v8 - 14) >= *v8)
    {
      v8 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *,std::__less<void,void> &>(v8, v57);
      goto LABEL_73;
    }

LABEL_64:
    v46 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *,std::__less<void,void> &>(v8, v7);
    if ((v47 & 1) == 0)
    {
      goto LABEL_71;
    }

    v48 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *>(v8, v46);
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *>((v46 + 56), v7))
    {
      if (v48)
      {
        return;
      }

      v57 = v46;
      v7 = v46;
    }

    else
    {
      if (!v48)
      {
LABEL_71:
        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *,false>(v8, v46, a3, -i, a5 & 1);
        v8 = (v46 + 56);
LABEL_73:
        a5 = 0;
        v58 = v8;
        a4 = -i;
        goto LABEL_2;
      }

      v58 = (v46 + 56);
      v8 = (v46 + 56);
    }
  }

  *&v63 = v8;
  v54 = *(v8 + 14);
  *&v62 = v8 + 56;
  v55 = *(v7 - 14);
  v61 = v7 - 14;
  if (v54 < *v8)
  {
    v50 = &v63;
    if (v55 >= v54)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&>(&v63, &v62);
      if (*v61 >= *v62)
      {
        return;
      }

      v50 = &v62;
    }

    v51 = &v61;
    goto LABEL_94;
  }

  if (v55 < v54)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&>(&v62, &v61);
    v52 = *v62;
    v53 = *v63;
LABEL_92:
    if (v52 < v53)
    {
      v50 = &v63;
      v51 = &v62;
LABEL_94:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&>(v50, v51);
    }
  }
}

__n128 std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&>(__int128 **a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = **a1;
  v2 = *a1;
  v6 = (*a1)[1];
  v5 = *a1 + 1;
  v10 = v6;
  v7 = *(v2 + 4);
  *v5 = 0;
  *(v2 + 3) = 0;
  *(v2 + 4) = 0;
  v11 = *(v2 + 40);
  v12 = v4;
  *v2 = *v3;
  std::vector<int>::__move_assign(v5, (v3 + 16));
  *(v2 + 40) = *(v3 + 40);
  *v3 = v12;
  v8 = *(v3 + 16);
  if (v8)
  {
    *(v3 + 24) = v8;
    operator delete(v8);
  }

  result = v11;
  *(v3 + 16) = v10;
  *(v3 + 32) = v7;
  *(v3 + 40) = v11;
  return result;
}

double std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *,0>(__int128 *a1, __int128 *a2, __int128 *a3, unsigned __int32 *a4)
{
  v16 = a2;
  v17 = a1;
  v14 = a4;
  v15 = a3;
  v20 = a1;
  v18 = a3;
  v19 = a2;
  v8 = *a2;
  v9 = *a3;
  if (*a2 >= *a1)
  {
    if (v9 < v8)
    {
      v11 = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&>(&v19, &v18);
      if (*v19 < *v20)
      {
        v10 = &v20;
        v12 = &v19;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v10 = &v20;
    if (v9 < v8)
    {
LABEL_5:
      v12 = &v18;
LABEL_9:
      v11 = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&>(v10, v12);
      goto LABEL_10;
    }

    v11 = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&>(&v20, &v19);
    if (*v18 < *v19)
    {
      v10 = &v19;
      goto LABEL_5;
    }
  }

LABEL_10:
  v11.n128_u32[0] = *a4;
  if (*a4 < *a3)
  {
    v11 = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&>(&v15, &v14);
    v11.n128_u32[0] = *v15;
    if (*v15 < *a2)
    {
      v11 = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&>(&v16, &v15);
      v11.n128_u32[0] = *v16;
      if (*v16 < *a1)
      {
        v11.n128_u64[0] = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&>(&v17, &v16).n128_u64[0];
      }
    }
  }

  return v11.n128_f64[0];
}

void std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = a1 + 56;
    if (a1 + 56 != a2)
    {
      v5 = 0;
      v6 = a1;
      do
      {
        v7 = v4;
        v8 = *(v6 + 56);
        if (v8 < *v6)
        {
          v18 = *(v6 + 60);
          v19 = *(v6 + 68);
          v9 = *(v6 + 72);
          v16 = *(v6 + 80);
          v17 = *(v6 + 96);
          *(v6 + 72) = 0;
          *(v6 + 80) = 0;
          *(v6 + 88) = 0;
          v10 = v5;
          while (1)
          {
            v11 = v10;
            v12 = a1 + v10;
            *(a1 + v10 + 56) = *(a1 + v10);
            std::vector<int>::__move_assign(a1 + v10 + 72, (a1 + v10 + 16));
            *(v12 + 96) = *(v12 + 40);
            if (!v11)
            {
              break;
            }

            v10 = v11 - 56;
            if (v8 >= *(v12 - 56))
            {
              v13 = a1 + v11;
              goto LABEL_10;
            }
          }

          v13 = a1;
LABEL_10:
          *v13 = v8;
          *(v13 + 4) = v18;
          *(v13 + 12) = v19;
          v14 = *(v12 + 16);
          if (v14)
          {
            *(v13 + 24) = v14;
            operator delete(v14);
            v15 = a1 + v11;
            *(v15 + 24) = 0;
            *(v15 + 32) = 0;
          }

          *(v12 + 16) = v9;
          *(v13 + 24) = v16;
          *(v12 + 40) = v17;
        }

        v4 = v7 + 56;
        v5 += 56;
        v6 = v7;
      }

      while (v7 + 56 != a2);
    }
  }
}

uint64_t std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *>(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = result + 56;
    if (result + 56 != a2)
    {
      v4 = result - 56;
      do
      {
        v5 = v3;
        v6 = *(result + 56);
        if (v6 < *result)
        {
          v14 = *(result + 60);
          v15 = *(result + 68);
          v7 = *(result + 72);
          v8 = *(result + 88);
          *(result + 72) = 0;
          *(result + 80) = 0;
          *(result + 88) = 0;
          v9 = v4;
          v12 = v7;
          v13 = *(result + 96);
          do
          {
            *(v9 + 112) = *(v9 + 56);
            std::vector<int>::__move_assign(v9 + 128, (v9 + 72));
            *(v9 + 152) = *(v9 + 96);
            v10 = *v9;
            v9 -= 56;
          }

          while (v6 < v10);
          *(v9 + 112) = v6;
          *(v9 + 116) = v14;
          *(v9 + 124) = v15;
          v11 = *(v9 + 128);
          if (v11)
          {
            *(v9 + 136) = v11;
            operator delete(v11);
          }

          *(v9 + 128) = v12;
          *(v9 + 144) = v8;
          *(v9 + 152) = v13;
        }

        v3 = v5 + 56;
        v4 += 56;
        result = v5;
      }

      while (v5 + 56 != a2);
    }
  }

  return result;
}

__int128 *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *,std::__less<void,void> &>(std::vector<int> *this, unint64_t a2)
{
  v20 = a2;
  v3 = *&this->__begin_;
  v18 = *(&this->__begin_ + 4);
  end_high = HIDWORD(this->__end_);
  p_end_cap = &this->__end_cap_;
  v5 = *&this->__end_cap_.__value_;
  end = this[1].__end_;
  this->__end_cap_.__value_ = 0;
  this[1].__begin_ = 0;
  this[1].__end_ = 0;
  v16 = v5;
  v17 = *&this[1].__end_cap_.__value_;
  if (v3 >= *(a2 - 56))
  {
    v9 = (this + 56);
    do
    {
      v7 = v9;
      if (v9 >= a2)
      {
        break;
      }

      v9 = (v9 + 56);
    }

    while (v3 >= *&v7->__begin_);
  }

  else
  {
    v7 = this;
    do
    {
      v8 = *&v7[2].__end_;
      v7 = (v7 + 56);
    }

    while (v3 >= v8);
  }

  v21 = v7;
  if (v7 < a2)
  {
    do
    {
      v10 = *(a2 - 56);
      a2 -= 56;
    }

    while (v3 < v10);
    v20 = a2;
  }

  if (v7 < a2)
  {
    do
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&>(&v21, &v20);
      v7 = v21;
      do
      {
        v11 = *&v7[2].__end_;
        v7 = (v7 + 56);
      }

      while (v3 >= v11);
      v21 = v7;
      v12 = v20;
      do
      {
        v13 = *(v12 - 56);
        v12 -= 56;
      }

      while (v3 < v13);
      v20 = v12;
    }

    while (v7 < v12);
  }

  if (&v7[-3].__end_cap_ != this)
  {
    *&this->__begin_ = *&v7[-3].__end_cap_.__value_;
    std::vector<int>::__move_assign(p_end_cap, &v7[-2].__end_);
    *&this[1].__end_cap_.__value_ = *&v7[-1].__end_;
  }

  *&v7[-3].__end_cap_.__value_ = v3;
  HIDWORD(v7[-2].__begin_) = end_high;
  *(&v7[-3].__end_cap_.__value_ + 4) = v18;
  v14 = v7[-2].__end_;
  if (v14)
  {
    v7[-2].__end_cap_.__value_ = v14;
    operator delete(v14);
  }

  *&v7[-2].__end_ = v16;
  v7[-1].__begin_ = end;
  *&v7[-1].__end_ = v17;
  return v21;
}

uint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *,std::__less<void,void> &>(std::vector<int> *this, unint64_t a2)
{
  v4 = 0;
  v5 = *&this->__begin_;
  v21 = *(&this->__begin_ + 4);
  end_high = HIDWORD(this->__end_);
  p_end_cap = &this->__end_cap_;
  v7 = *&this->__end_cap_.__value_;
  end = this[1].__end_;
  this->__end_cap_.__value_ = 0;
  this[1].__begin_ = 0;
  this[1].__end_ = 0;
  v19 = v7;
  v20 = *&this[1].__end_cap_.__value_;
  do
  {
    v9 = *(&this[2].__end_ + v4);
    v4 += 56;
  }

  while (v9 < v5);
  v10 = this + v4;
  v24 = (this + v4);
  if (v4 == 56)
  {
    do
    {
      if (v10 >= a2)
      {
        break;
      }

      v12 = *(a2 - 56);
      a2 -= 56;
    }

    while (v12 >= v5);
  }

  else
  {
    do
    {
      v11 = *(a2 - 56);
      a2 -= 56;
    }

    while (v11 >= v5);
  }

  v23 = a2;
  v13 = (this + v4);
  if (v10 < a2)
  {
    do
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&>(&v24, &v23);
      v13 = v24;
      do
      {
        v14 = *(v13 + 14);
        v13 = (v13 + 56);
      }

      while (v14 < v5);
      v24 = v13;
      v15 = v23;
      do
      {
        v16 = *(v15 - 56);
        v15 -= 56;
      }

      while (v16 >= v5);
      v23 = v15;
    }

    while (v13 < v15);
  }

  if ((v13 - 56) != this)
  {
    *&this->__begin_ = *(v13 - 56);
    std::vector<int>::__move_assign(p_end_cap, (v13 - 40));
    *&this[1].__end_cap_.__value_ = *(v13 - 1);
  }

  *(v13 - 14) = v5;
  *(v13 - 11) = end_high;
  *(v13 - 52) = v21;
  v17 = *(v13 - 5);
  if (v17)
  {
    *(v13 - 4) = v17;
    operator delete(v17);
  }

  *(v13 - 40) = v19;
  *(v13 - 3) = end;
  *(v13 - 1) = v20;
  return v13 - 56;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *>(__int128 *a1, char *a2)
{
  v2 = a2;
  v32 = a2;
  v33 = a1;
  v4 = 0x6DB6DB6DB6DB6DB7 * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        *&v29 = a1;
        v12 = *(a1 + 14);
        v30 = a1 + 14;
        v13 = *(a2 - 14);
        v36 = (a2 - 56);
        if (v12 < *a1)
        {
          v6 = &v29;
          if (v13 >= v12)
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&>(&v29, &v30);
            if (*v36 >= *v30)
            {
              return 1;
            }

            v6 = &v30;
          }

          v7 = &v36;
          goto LABEL_28;
        }

        if (v13 >= v12)
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&>(&v30, &v36);
        v10 = *v30;
        v11 = *v29;
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *,0>(a1, (a1 + 56), a1 + 7, a2 - 14);
        return 1;
      case 5:
        v8 = a1 + 14;
        *&v29 = a1;
        v9 = (a1 + 7);
        v30 = a1 + 14;
        v36 = (a1 + 7);
        v34 = a2 - 56;
        v35 = a1 + 42;
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *,0>(a1, (a1 + 56), a1 + 7, a1 + 42);
        if (*(v2 - 14) >= *(a1 + 42))
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&>(&v35, &v34);
        if (*v35 >= *v9)
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&>(&v36, &v35);
        if (*v36 >= *v8)
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&>(&v30, &v36);
        v10 = *v30;
        v11 = *a1;
        break;
      default:
        goto LABEL_18;
    }

    if (v10 < v11)
    {
      v6 = &v29;
      v7 = &v30;
      goto LABEL_28;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 14);
    v32 = a2 - 56;
    if (v5 < *a1)
    {
      v6 = &v33;
      v7 = &v32;
LABEL_28:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&>(v6, v7);
    }

    return 1;
  }

LABEL_18:
  v14 = a1 + 7;
  v15 = *(a1 + 28);
  *&v29 = a1;
  v16 = *(a1 + 14);
  v30 = a1 + 14;
  v36 = (a1 + 7);
  if (v16 >= *a1)
  {
    if (v15 >= v16)
    {
      goto LABEL_33;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&>(&v30, &v36);
    if (*v30 >= *v29)
    {
      goto LABEL_33;
    }

    v17 = &v29;
    v18 = &v30;
    goto LABEL_32;
  }

  v17 = &v29;
  if (v15 < v16)
  {
LABEL_22:
    v18 = &v36;
LABEL_32:
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&>(v17, v18);
    goto LABEL_33;
  }

  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&>(&v29, &v30);
  if (*v36 < *v30)
  {
    v17 = &v30;
    goto LABEL_22;
  }

LABEL_33:
  v19 = a1 + 168;
  if (v19 == v2)
  {
    return 1;
  }

  v20 = 0;
  while (1)
  {
    v21 = *v19;
    if (*v19 < *v14)
    {
      break;
    }

LABEL_43:
    v14 = v19;
    v19 += 56;
    if (v19 == v2)
    {
      return 1;
    }
  }

  v30 = *(v19 + 4);
  v31 = *(v19 + 3);
  v22 = *(v19 + 1);
  v23 = *(v19 + 4);
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 4) = 0;
  v28 = v22;
  v29 = *(v19 + 40);
  do
  {
    v24 = v14;
    *(v14 + 56) = *v14;
    std::vector<int>::__move_assign(v14 + 72, v14 + 1);
    v14[6] = *(v14 + 40);
    if (v14 == v33)
    {
      break;
    }

    v14 = (v14 - 56);
  }

  while (v21 < *(v24 - 14));
  *v24 = v21;
  v25 = v30;
  *(v24 + 3) = v31;
  *(v24 + 4) = v25;
  v26 = *(v24 + 2);
  if (v26)
  {
    *(v24 + 3) = v26;
    operator delete(v26);
  }

  v24[1] = v28;
  *(v24 + 4) = v23;
  *(v24 + 40) = v29;
  if (++v20 != 8)
  {
    v2 = v32;
    goto LABEL_43;
  }

  return v19 + 56 == v32;
}

__int128 *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *>(float *a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v18 = a1;
  if (a1 != a2)
  {
    v6 = a2;
    v7 = a1;
    v8 = a2 - a1;
    v9 = 0x6DB6DB6DB6DB6DB7 * ((a2 - a1) >> 3);
    if (a2 - a1 >= 57)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = &a1[14 * v10];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *>(v7, a4, v9, v12);
        v12 -= 56;
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
        if (*v13 < *v18)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&>(&v17, &v18);
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *>(v18, a4, v9, v18);
          v13 = v17;
        }

        v13 = (v13 + 56);
        v17 = v13;
      }

      while (v13 != a3);
      v7 = v18;
      v8 = v6 - v18;
    }

    if (v8 >= 57)
    {
      v14 = 0x6DB6DB6DB6DB6DB7 * (v8 >> 3);
      do
      {
        std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *>(v7, v6, a4, v14);
        v6 = (v6 - 56);
      }

      while (v14-- > 2);
      return v17;
    }

    return v13;
  }

  return a3;
}

void std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= 0x6DB6DB6DB6DB6DB7 * ((a4 - a1) >> 3))
    {
      v9 = (0xDB6DB6DB6DB6DB6ELL * ((a4 - a1) >> 3)) | 1;
      v10 = (a1 + 56 * v9);
      if ((0xDB6DB6DB6DB6DB6ELL * ((a4 - a1) >> 3) + 2) < a3 && v10->n128_f32[0] < v10[3].n128_f32[2])
      {
        v10 = (v10 + 56);
        v9 = 0xDB6DB6DB6DB6DB6ELL * ((a4 - a1) >> 3) + 2;
      }

      v11 = *a4;
      if (v10->n128_f32[0] >= *a4)
      {
        v20 = *(a4 + 4);
        v21 = *(a4 + 12);
        v12 = *(a4 + 16);
        v13 = *(a4 + 32);
        *(a4 + 16) = 0;
        *(a4 + 24) = 0;
        *(a4 + 32) = 0;
        v18 = v12;
        v19 = *(a4 + 40);
        do
        {
          v14 = v5;
          v5 = v10;
          *v14 = *v10;
          std::vector<int>::__move_assign(&v14[1], v10 + 1);
          *(v14 + 40) = *(v5 + 40);
          if (v7 < v9)
          {
            break;
          }

          v15 = 2 * v9;
          v9 = (2 * v9) | 1;
          v10 = (a1 + 56 * v9);
          v16 = v15 + 2;
          if (v16 < a3 && v10->n128_f32[0] < v10[3].n128_f32[2])
          {
            v10 = (v10 + 56);
            v9 = v16;
          }
        }

        while (v10->n128_f32[0] >= v11);
        v5->n128_f32[0] = v11;
        v5->n128_u32[3] = v21;
        *(v5->n128_u64 + 4) = v20;
        v17 = v5[1].n128_u64[0];
        if (v17)
        {
          v5[1].n128_u64[1] = v17;
          operator delete(v17);
          v5[1].n128_u64[0] = 0;
          v5[1].n128_u64[1] = 0;
          v5[2].n128_u64[0] = 0;
        }

        v5[1] = v18;
        v5[2].n128_u64[0] = v13;
        *(v5 + 40) = v19;
      }
    }
  }
}

__n128 std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v7 = *a1;
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    v10 = *(a1 + 32);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    v18 = *(a1 + 40);
    v19 = v7;
    v11 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *>(a1, a3, a4);
    v12 = v11;
    v13 = (a2 - 56);
    if (v11 == a2 - 56)
    {
      *v11 = v19;
      v17 = *(v11 + 16);
      if (v17)
      {
        *(v12 + 24) = v17;
        operator delete(v17);
        *(v12 + 16) = 0;
        *(v12 + 24) = 0;
        *(v12 + 32) = 0;
      }

      *(v12 + 16) = v8;
      *(v12 + 24) = v9;
      *(v12 + 32) = v10;
      result = v18;
      *(v12 + 40) = v18;
    }

    else
    {
      *v11 = *v13;
      std::vector<int>::__move_assign(v11 + 16, (a2 - 40));
      *(v12 + 40) = *(a2 - 16);
      v14 = v12 + 56;
      *v13 = v19;
      v15 = *(a2 - 40);
      if (v15)
      {
        *(a2 - 32) = v15;
        operator delete(v15);
        *(a2 - 40) = 0;
        *(a2 - 32) = 0;
        *(a2 - 24) = 0;
      }

      *(a2 - 40) = v8;
      *(a2 - 32) = v9;
      *(a2 - 24) = v10;
      *(a2 - 16) = v18;
      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *>(a1, v14, a3, 0x6DB6DB6DB6DB6DB7 * ((v14 - a1) >> 3));
    }
  }

  return result;
}

void sub_1B5613568(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = a1;
    v8 = a1 + 56 * v5;
    a1 = v8 + 56;
    v9 = 2 * v5;
    v5 = (2 * v5) | 1;
    v10 = v9 + 2;
    if (v10 < a3)
    {
      v12 = *(v8 + 112);
      v11 = v8 + 112;
      if (*(v11 - 56) < v12)
      {
        a1 = v11;
        v5 = v10;
      }
    }

    *v7 = *a1;
    std::vector<int>::__move_assign((v7 + 1), (a1 + 16));
    *(v7 + 40) = *(a1 + 40);
  }

  while (v5 <= v6);
  return a1;
}

void std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = v4 >> 1;
    v7 = a1 + 56 * (v4 >> 1);
    v8 = a2 - 56;
    v9 = *(a2 - 56);
    if (*v7 < v9)
    {
      v16 = *(a2 - 52);
      v17 = *(a2 - 44);
      v10 = *(a2 - 40);
      v11 = *(a2 - 24);
      *(a2 - 40) = 0;
      *(a2 - 32) = 0;
      *(a2 - 24) = 0;
      v14 = v10;
      v15 = *(a2 - 16);
      do
      {
        v12 = v8;
        v8 = v7;
        *v12 = *v7;
        std::vector<int>::__move_assign((v12 + 1), (v7 + 16));
        *(v12 + 40) = *(v8 + 40);
        if (!v6)
        {
          break;
        }

        v6 = (v6 - 1) >> 1;
        v7 = a1 + 56 * v6;
      }

      while (*v7 < v9);
      *v8 = v9;
      *(v8 + 4) = v16;
      *(v8 + 12) = v17;
      v13 = *(v8 + 16);
      if (v13)
      {
        *(v8 + 24) = v13;
        operator delete(v13);
        *(v8 + 16) = 0;
        *(v8 + 24) = 0;
        *(v8 + 32) = 0;
      }

      *(v8 + 16) = v14;
      *(v8 + 32) = v11;
      *(v8 + 40) = v15;
    }
  }
}

void *std::__hash_table<std::__hash_value_type<long long,std::pair<float,int>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::pair<float,int>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::pair<float,int>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::pair<float,int>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(void *a1, unint64_t *a2)
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
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
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

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::Hyp::Hyp(uint64_t a1, int a2, int a3, int a4, char a5, uint64_t a6, float a7, float a8)
{
  v21[0] = a4;
  *a1 = *a6;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__init_with_size[abi:ne200100]<std::shared_ptr<kaldi::quasar::ComputeEngineBufferItf>*,std::shared_ptr<kaldi::quasar::ComputeEngineBufferItf>*>(a1 + 8, *(a6 + 8), *(a6 + 16), (*(a6 + 16) - *(a6 + 8)) >> 4);
  v14 = *(a6 + 44);
  *(a1 + 56) = 0;
  *(a1 + 32) = a2;
  *(a1 + 36) = a3;
  *(a1 + 40) = a4;
  *(a1 + 44) = vadd_f32(v14, __PAIR64__(LODWORD(a8), LODWORD(a7)));
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  std::unordered_map<int,std::vector<int>>::unordered_map(a1 + 80, a6 + 80);
  std::unordered_map<int,int>::unordered_map(a1 + 120, a6 + 120);
  std::unordered_map<int,int>::unordered_map(a1 + 160, a6 + 160);
  *(a1 + 208) = 0;
  *(a1 + 200) = a5;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 232) = &unk_1F2D0EE38;
  *(a1 + 272) = 0;
  v15 = *(a6 + 56);
  if ((*(a6 + 64) - v15) >= 5)
  {
    v16 = 1;
    v17 = 4;
    do
    {
      std::vector<int>::push_back[abi:ne200100]((a1 + 56), (v15 + v17));
      ++v16;
      v15 = *(a6 + 56);
      v17 += 4;
    }

    while (v16 < (*(a6 + 64) - v15) >> 2);
  }

  std::vector<int>::push_back[abi:ne200100]((a1 + 56), v21);
  return a1;
}

void sub_1B5613ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  kaldi::CuMatrix<float>::~CuMatrix(v8);
  std::vector<kaldi::Vector<float>>::__destroy_vector::operator()[abi:ne200100](va);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v6 + 160);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v6 + 120);
  std::__hash_table<std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,std::__unordered_map_hasher<kaldi::quasar::AbstractAttribute *,std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,true>,std::__unordered_map_equal<kaldi::quasar::AbstractAttribute *,std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,kaldi::quasar::AttributeEquality,kaldi::quasar::AttributeHash,true>,std::allocator<std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>>>::~__hash_table((v7 + 3));
  v10 = *v7;
  if (*v7)
  {
    *(v6 + 64) = v10;
    operator delete(v10);
  }

  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__init_with_size[abi:ne200100]<std::shared_ptr<kaldi::quasar::ComputeEngineBufferItf>*,std::shared_ptr<kaldi::quasar::ComputeEngineBufferItf>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B5613BA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_map<int,std::vector<int>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<int,std::vector<int>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<int>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<int>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<int>>>>::__emplace_unique_key_args<int,std::pair<int const,std::vector<int>> const&>(a1, i + 4);
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,std::vector<int>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<int>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<int>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<int>>>>::__emplace_unique_key_args<int,std::pair<int const,std::vector<int>> const&>(void *a1, int *a2)
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
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (result = *v6) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<int,std::vector<int>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<int>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<int>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<int>>>>::__construct_node_hash<std::pair<int const,std::vector<int>> const&>();
  }

  while (1)
  {
    v8 = result[1];
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
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (*(result + 4) != v2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_1B5613E44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5613EFC(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::Hyp::~Hyp(uint64_t a1)
{
  kaldi::CuMatrix<float>::~CuMatrix(a1 + 232);
  v4 = (a1 + 208);
  std::vector<kaldi::Vector<float>>::__destroy_vector::operator()[abi:ne200100](&v4);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(a1 + 160);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(a1 + 120);
  std::__hash_table<std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,std::__unordered_map_hasher<kaldi::quasar::AbstractAttribute *,std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,true>,std::__unordered_map_equal<kaldi::quasar::AbstractAttribute *,std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,kaldi::quasar::AttributeEquality,kaldi::quasar::AttributeHash,true>,std::allocator<std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>>>::~__hash_table(a1 + 80);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 8);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v4);
  return a1;
}

void std::vector<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement,std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement,std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

TFileObject *compileAlt(const TFileObject *a1, TFileObject *a2, TLexicon *a3, TAllocator *a4)
{
  v56 = *MEMORY[0x1E69E9840];
  if (*(a1 + 10))
  {
    if (TLexicon::checkName(a3, *(a1 + 3), 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      loggableFileObject(a1);
      v38 = v54.i8[15];
      v39 = v53.__vftable;
      loggableUnicode(*(a1 + 3), __p);
      v40 = &v53;
      if (v38 < 0)
      {
        v40 = v39;
      }

      if (v51 >= 0)
      {
        v41 = __p;
      }

      else
      {
        v41 = __p[0];
      }

      tknPrintf("Error: %s'%s' is an invalid token name.\n", v40, v41);
      if (v51 < 0)
      {
        operator delete(__p[0]);
      }

      if (v54.i8[15] < 0)
      {
        operator delete(v53.__vftable);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "");
      TException::TException(&v53, __p);
      v53.__vftable = &unk_1F2D00400;
      if (v55 >= 0)
      {
        v42 = &v54;
      }

      else
      {
        v42 = v54.i64[0];
      }

      conditionalAssert(v42->i8, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/tkn/patternmgr.cpp", 155);
      TException::~TException(&v53);
      if (v51 < 0)
      {
        operator delete(__p[0]);
      }

      exception = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(&v53, "");
      TException::TException(exception, &v53);
      *exception = &unk_1F2D00400;
    }

    if (*(getPropCheckTokenExistence() + 8) == 1 && !TLexicon::findHeadClone(a3, *(a1 + 3)))
    {
      loggableFileObject(a1);
      v8 = v54.i8[15];
      v9 = v53.__vftable;
      loggableUnicode(*(a1 + 3), __p);
      v10 = &v53;
      if (v8 < 0)
      {
        v10 = v9;
      }

      if (v51 >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = __p[0];
      }

      tknPrintf("Warning: %s'%s' isn't lexicalized.\n", v10, v11);
      if (v51 < 0)
      {
        operator delete(__p[0]);
      }

      if (v54.i8[15] < 0)
      {
        operator delete(v53.__vftable);
      }
    }

    v13 = *(a1 + 3);
    v12 = (a1 + 24);
    v14 = wcslen(v13);
    if ((v14 + 1) >> 62)
    {
      v15 = -1;
    }

    else
    {
      v15 = 4 * (v14 + 1);
    }

    v16 = TAllocator::allocate(a4, v15);
    wcscpy(v16, *v12);
    v17 = TAllocator::allocate(a4, 48);
    *(v17 + 40) = 1;
    *(v17 + 24) = v16;
    *(v17 + 32) = 0;
    *v17 = 0;
    *(v17 + 8) = "T";
    *(v17 + 16) = 0;
    goto LABEL_56;
  }

  v53.__vftable = &unk_1B5B0DA34;
  v54 = vdupq_n_s64(1uLL);
  v55 = -1;
  if (TFileObject::verify(a1, &v53, 1, 0))
  {
    std::string::basic_string[abi:ne200100]<0>(v48, "");
    TException::TException(__p, v48);
    __p[0] = &unk_1F2D00400;
    if (v52 >= 0)
    {
      v44 = &__p[1];
    }

    else
    {
      v44 = __p[1];
    }

    conditionalAssert(v44, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/tkn/patternmgr.cpp", 88);
    TException::~TException(__p);
    if (v49 < 0)
    {
      operator delete(v48[0]);
    }

    v45 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(__p, "");
    TException::TException(v45, __p);
    *v45 = &unk_1F2D00400;
  }

  v18 = 0;
  v19 = 0;
  v17 = 0;
  v20 = *(a1 + 3);
  do
  {
    if (TFileObject::verify(v20, 0, 0))
    {
      goto LABEL_31;
    }

    if (TLexicon::checkName(a3, *(v20 + 24), 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      loggableFileObject(v20);
      v21 = v51;
      v22 = __p[0];
      loggableUnicode(*(v20 + 24), v48);
      v23 = __p;
      if (v21 < 0)
      {
        v23 = v22;
      }

      if (v49 >= 0)
      {
        v24 = v48;
      }

      else
      {
        v24 = v48[0];
      }

      tknPrintf("Error: %s'%s' is an invalid token name.\n", v23, v24);
      if (v49 < 0)
      {
        operator delete(v48[0]);
      }

      if (v51 < 0)
      {
        operator delete(__p[0]);
      }

LABEL_31:
      v18 = 1;
      goto LABEL_32;
    }

    if (*(getPropCheckTokenExistence() + 8) == 1 && !TLexicon::findHeadClone(a3, *(v20 + 24)))
    {
      loggableFileObject(v20);
      v25 = v51;
      v26 = __p[0];
      loggableUnicode(*(v20 + 24), v48);
      v27 = __p;
      if (v25 < 0)
      {
        v27 = v26;
      }

      if (v49 >= 0)
      {
        v28 = v48;
      }

      else
      {
        v28 = v48[0];
      }

      tknPrintf("Warning: %s'%s' isn't lexicalized.\n", v27, v28);
      if (v49 < 0)
      {
        operator delete(v48[0]);
      }

      if (v51 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v29 = wcslen(*(v20 + 24));
    if ((v29 + 1) >> 62)
    {
      v30 = -1;
    }

    else
    {
      v30 = 4 * (v29 + 1);
    }

    v31 = TAllocator::allocate(a4, v30);
    wcscpy(v31, *(v20 + 24));
    v32 = TAllocator::allocate(a4, 48);
    *(v32 + 40) = 1;
    *(v32 + 24) = v31;
    *(v32 + 32) = 0;
    *v32 = 0;
    *(v32 + 8) = "T";
    *(v32 + 16) = 0;
    if (v19)
    {
      *(v19 + 16) = v32;
    }

    if (!v17)
    {
      v17 = v32;
    }

    v19 = v32;
LABEL_32:
    v20 = *(v20 + 16);
  }

  while (v20);
  if (v18)
  {
    std::string::basic_string[abi:ne200100]<0>(v48, "");
    TException::TException(__p, v48);
    __p[0] = &unk_1F2D00400;
    if (v52 >= 0)
    {
      v46 = &__p[1];
    }

    else
    {
      v46 = __p[1];
    }

    conditionalAssert(v46, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/tkn/patternmgr.cpp", 130);
    TException::~TException(__p);
    if (v49 < 0)
    {
      operator delete(v48[0]);
    }

    v47 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(__p, "");
    TException::TException(v47, __p);
    *v47 = &unk_1F2D00400;
  }

  if (*(v17 + 16))
  {
    v33 = TAllocator::allocate(a4, 48);
    *(v33 + 40) = 0;
    *(v33 + 24) = v17;
    *(v33 + 32) = 0;
    *v33 = 0;
    *(v33 + 8) = "S";
    *(v33 + 16) = 0;
    v17 = v33;
  }

LABEL_56:
  if (!a2)
  {
    return v17;
  }

  if (!wcscmp(*(a2 + 1), "A"))
  {
    v35 = *(a2 + 3);
    do
    {
      v36 = v35;
      v35 = *(v35 + 16);
    }

    while (v35);
    *(v36 + 16) = v17;
  }

  else
  {
    *(a2 + 2) = v17;
    v34 = TAllocator::allocate(a4, 48);
    *(v34 + 40) = 0;
    *(v34 + 24) = a2;
    *(v34 + 32) = 0;
    *(v34 + 8) = "A";
    *(v34 + 16) = 0;
    a2 = v34;
    *v34 = 0;
  }

  return a2;
}

void sub_1B561472C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, std::exception a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
    if ((v30 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v30)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v29);
  goto LABEL_6;
}

void TArrayObject::TArrayObject(TArrayObject *this, const TFileObject *a2, TLexicon *a3, TAllocator *a4)
{
  *(this + 1) = 0;
  v20 = this + 8;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v5 = (this + 32);
  *this = &unk_1F2D20C88;
  *(this + 5) = 0;
  *(this + 6) = 0;
  v26 = 0;
  v6 = *(a2 + 3);
  if (!v6)
  {
    return;
  }

  do
  {
    v7 = v6[1];
    if (!wcscmp(v7, "N"))
    {
      if ((*(this + 31) & 0x8000000000000000) != 0)
      {
        if (!*(this + 2))
        {
LABEL_25:
          MEMORY[0x1B8C84940](v20, v6[3]);
          goto LABEL_33;
        }
      }

      else if (!*(this + 31))
      {
        goto LABEL_25;
      }

      loggableFileObject(v6);
      if (v24 >= 0)
      {
        v14 = __p;
      }

      else
      {
        v14 = __p[0];
      }

      tknPrintf("Error: %sRedefinition\n", v14);
    }

    else
    {
      v8 = *v7;
      {
        operator new();
      }

      if (v8 < 48 || v8 >= 0x3A && (v8 < 0x660 || TLocaleInfo::getDigitExtended(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v8) == -1))
      {
        loggableFileObject(v6);
        if (v24 >= 0)
        {
          v13 = __p;
        }

        else
        {
          v13 = __p[0];
        }

        tknPrintf("Error: %sInvalid attribute\n", v13);
      }

      else
      {
        v9 = v6[1];
        {
          operator new();
        }

        v10 = TLocaleInfo::stringToUInt(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v9, &v26);
        if ((v26 & 1) == 0 && v10 >> 4 < 0x271)
        {
          v11 = v10;
          v12 = *(this + 4);
          if (v10 >= ((*(this + 5) - v12) >> 3))
          {
            std::vector<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *,std::allocator<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *>>::reserve(v5, 2 * (v10 + 1));
            __p[0] = 0;
            std::vector<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *,std::allocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *>>::resize(v5, v11 + 1, __p);
            v12 = *v5;
          }

          *(*v5 + 8 * v11) = compileAlt(v6, *(v12 + 8 * v11), a3, a4);
          goto LABEL_33;
        }

        loggableFileObject(v6);
        if (v24 >= 0)
        {
          v15 = __p;
        }

        else
        {
          v15 = __p[0];
        }

        tknPrintf("Error: %sBad index (not an integer or greater than 10000)\n", v15);
      }
    }

    if (v24 < 0)
    {
      operator delete(__p[0]);
    }

    v26 = 1;
LABEL_33:
    v6 = v6[2];
  }

  while (v6);
  if (v26)
  {
    std::string::basic_string[abi:ne200100]<0>(v21, "");
    TException::TException(__p, v21);
    __p[0] = &unk_1F2D00400;
    if (v25 >= 0)
    {
      v16 = &__p[1];
    }

    else
    {
      v16 = __p[1];
    }

    conditionalAssert(v16, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/tkn/patternmgr.cpp", 286);
    TException::~TException(__p);
    if (v22 < 0)
    {
      operator delete(v21[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(__p, "");
    TException::TException(exception, __p);
    *exception = &unk_1F2D00400;
  }
}

void sub_1B5614C20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  MEMORY[0x1B8C85350](v27, 0x1070C40ADD13FEBLL);
  v30 = *v28;
  if (*v28)
  {
    *(v26 + 40) = v30;
    operator delete(v30);
  }

  *v26 = a11;
  if (*(v26 + 31) < 0)
  {
    operator delete(*a14);
  }

  _Unwind_Resume(a1);
}

uint64_t TArrayObject::checkNoGap(TArrayObject *this, unint64_t a2, unint64_t a3)
{
  if (a2 >= a3)
  {
    v6 = 0;
  }

  else
  {
    v4 = a2;
    v6 = 0;
    v7 = (this + 8);
    do
    {
      v8 = *(this + 4);
      if (v4 >= (*(this + 5) - v8) >> 3 || !*(v8 + 8 * v4))
      {
        v9 = v7;
        if (*(this + 31) < 0)
        {
          v9 = *v7;
        }

        loggableUnicode(v9, __p);
        if (v13 >= 0)
        {
          v10 = __p;
        }

        else
        {
          v10 = __p[0];
        }

        tknPrintf("Error: Array '%s' : Attribute '%llu' : Missing declaration\n", v10, v4);
        if (v13 < 0)
        {
          operator delete(__p[0]);
        }

        v6 = 1;
      }

      ++v4;
    }

    while (a3 != v4);
  }

  return v6 & 1;
}

void sub_1B5614DF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void TDigitObject::TDigitObject(TDigitObject *this, const TFileObject *a2, TLexicon *a3, TAllocator *a4)
{
  v63 = *MEMORY[0x1E69E9840];
  *(this + 1) = 0;
  v18 = this + 8;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v8 = (this + 32);
  *this = &unk_1F2D20CB8;
  *(this + 5) = 0;
  *(this + 6) = 0;
  v24 = "0";
  v25 = vdupq_n_s64(1uLL);
  v26 = -1;
  v27 = "1";
  v28 = v25;
  v29 = -1;
  v30 = "2";
  v31 = v25;
  v32 = -1;
  v33 = "3";
  v34 = v25;
  v35 = -1;
  v36 = "4";
  v37 = v25;
  v38 = -1;
  v39 = "5";
  v40 = v25;
  v41 = -1;
  v42 = "6";
  v43 = v25;
  v44 = -1;
  v45 = "7";
  v46 = v25;
  v47 = -1;
  v48 = "8";
  v49 = 1;
  v50 = xmmword_1B5AE01E0;
  v51 = "9";
  v52 = 1;
  v53 = xmmword_1B5AE01E0;
  v54 = "D";
  v55 = 3;
  v56 = xmmword_1B5AE01E0;
  v57 = "T";
  v58 = 3;
  v59 = xmmword_1B5AE01E0;
  v60 = "N";
  v61 = 0;
  v62 = xmmword_1B5AE01E0;
  v17 = (this + 32);
  v9 = TFileObject::verify(a2, &v24, 13, 1);
  v23 = v9;
  if (v9)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "");
    TException::TException(v21, __p);
    v21[0].__vftable = &unk_1F2D00400;
    if (v22 >= 0)
    {
      v13 = &v21[1];
    }

    else
    {
      v13 = v21[1].__vftable;
    }

    conditionalAssert(v13, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/tkn/patternmgr.cpp", 422);
    TException::~TException(v21);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v21, "");
    TException::TException(exception, v21);
    *exception = &unk_1F2D00400;
  }

  *(this + 7) = 0;
  *(this + 8) = 0;
  v21[0].__vftable = 0;
  std::vector<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *,std::allocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *>>::resize(v8, 0xAuLL, v21);
  for (i = *(a2 + 3); i; i = *(i + 2))
  {
    v11 = *(i + 1);
    if (!wcscmp(v11, "N"))
    {
      v23 = TFileObject::verify(i, 0, 0);
      MEMORY[0x1B8C84940](v18, *(i + 3));
    }

    else if (!wcscmp(v11, "D"))
    {
      *(this + 7) = compileAlt(i, *(this + 7), a3, a4);
    }

    else if (!wcscmp(v11, "T"))
    {
      *(this + 8) = compileAlt(i, *(this + 8), a3, a4);
    }

    else
    {
      {
        operator new();
      }

      v12 = TLocaleInfo::stringToUInt(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v11, &v23);
      *(*v17 + 8 * v12) = compileAlt(i, *(*v17 + 8 * v12), a3, a4);
    }
  }

  if (v23)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "");
    TException::TException(v21, __p);
    v21[0].__vftable = &unk_1F2D00400;
    if (v22 >= 0)
    {
      v15 = &v21[1];
    }

    else
    {
      v15 = v21[1].__vftable;
    }

    conditionalAssert(v15, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/tkn/patternmgr.cpp", 453);
    TException::~TException(v21);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    v16 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v21, "");
    TException::TException(v16, v21);
    *v16 = &unk_1F2D00400;
  }
}

void sub_1B5615344(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void **a11, void **a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  MEMORY[0x1B8C85350](v24, 0x1070C40ADD13FEBLL);
  v27 = *a11;
  if (*a11)
  {
    *(v25 + 40) = v27;
    operator delete(v27);
  }

  *v25 = a10;
  if (*(v25 + 31) < 0)
  {
    operator delete(*a12);
  }

  _Unwind_Resume(a1);
}

const char *TDigitObject::build(const char *result, unsigned int *a2, TVertex *a3, TVertex *a4, TGraph *this, TLexicon *a6)
{
  v30 = result;
  v6 = *a2;
  if (*a2)
  {
    v10 = a2;
    do
    {
      {
        operator new();
      }

      DigitExtended = v6 - 48;
      if (v6 < 48)
      {
        goto LABEL_8;
      }

      if (v6 <= 0x39)
      {
        goto LABEL_9;
      }

      if (v6 < 0x660)
      {
LABEL_8:
        DigitExtended = -1;
      }

      else
      {
        DigitExtended = TLocaleInfo::getDigitExtended(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v6);
      }

LABEL_9:
      v12 = *v10;
      if (*v10)
      {
        v13 = 0;
        v14 = v10;
        v15 = v10 + 1;
        while (1)
        {
          {
            operator new();
          }

          v16 = v12 - 48;
          if (v12 < 48)
          {
            goto LABEL_16;
          }

          if (v12 <= 0x39)
          {
            goto LABEL_17;
          }

          if (v12 < 0x660)
          {
LABEL_16:
            v16 = -1;
          }

          else
          {
            v16 = TLocaleInfo::getDigitExtended(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v12);
          }

LABEL_17:
          if (v16 != DigitExtended)
          {
            v17 = v13;
            goto LABEL_24;
          }

          v17 = v13 + 1;
          v12 = v15[v13++];
          if (!v12)
          {
            goto LABEL_24;
          }
        }
      }

      v14 = v10;
      v17 = 0;
LABEL_24:
      v18 = *(*(v30 + 32) + 8 * DigitExtended);
      if (*(v30 + 64) && (v17 > 4 || v17 == 3))
      {
        v19 = TGraph::addVertex(this, 0);
        addSequence(*(v30 + 64), a3, v19, this, a6, 0, 0, 0);
        v10 = v14 + 3;
        v20 = v14[3];
        goto LABEL_44;
      }

      if (v17 >= 2 && *(v30 + 56))
      {
        v19 = TGraph::addVertex(this, 0);
        addSequence(*(v30 + 56), a3, v19, this, a6, 0, 0, 0);
        v10 = v14 + 2;
        v20 = v14[2];
LABEL_44:
        v21 = a4;
        if (v20)
        {
          v21 = TGraph::addVertex(this, 0);
        }

LABEL_48:
        result = addSequence(v18, v19, v21, this, a6, 0, 0, 0);
        goto LABEL_49;
      }

      v28 = &v14[v17];
      v21 = a4;
      if (*v28)
      {
        v21 = TGraph::addVertex(this, 0);
      }

      result = wcscmp(*(v18 + 8), "A");
      if (result)
      {
        if (v17)
        {
          v22 = v17 - 1;
          if (v17 == 1)
          {
            v19 = a3;
            v10 = &v14[v17];
          }

          else
          {
            v10 = &v14[v17];
            do
            {
              v19 = TGraph::addVertex(this, 0);
              addSequence(v18, a3, v19, this, a6, 0, 0, 0);
              a3 = v19;
              --v22;
            }

            while (v22);
          }

          goto LABEL_48;
        }
      }

      else
      {
        for (i = *(v18 + 24); i; i = *(i + 2))
        {
          v24 = v17;
          for (j = a3; v24; --v24)
          {
            v26 = v21;
            if (v24 != 1)
            {
              v26 = TGraph::addVertex(this, 0);
            }

            v27 = i[1];
            v31 = *i;
            v32 = v27;
            v33 = i[2];
            *&v32 = 0;
            result = addSequence(&v31, j, v26, this, a6, 0, 0, 0);
            j = v26;
          }
        }
      }

      v10 = v28;
LABEL_49:
      v6 = *v10;
      a3 = v21;
    }

    while (*v10);
  }

  return result;
}

void sub_1B56157F4(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v1, 0x1070C40ADD13FEBLL);
  _Unwind_Resume(a1);
}

const char *addSequence(const __int32 **a1, TVertex *a2, TVertex *a3, TGraph *a4, TLexicon *a5, const char *a6, const char *a7, const char *a8)
{
  v12 = a1;
  if (wcscmp(a1[1], "S") || (v12 = *(v12 + 3)) != 0)
  {
    while (!wcscmp(*(v12 + 1), "S"))
    {
LABEL_37:
      v12 = *(v12 + 2);
      if (!v12)
      {
        return a7;
      }
    }

    v13 = *(v12 + 2);
    v14 = a3;
    v15 = a7;
    if (v13)
    {
      if (!wcscmp(*(v13 + 8), "S"))
      {
        do
        {
          v17 = v13;
          v13 = *(v13 + 16);
          if (!v13)
          {
            v14 = a3;
            goto LABEL_7;
          }
        }

        while (!wcscmp(*(v13 + 8), "S"));
        if (a6)
        {
          v28 = 0;
          v18 = *(v17 + 24);
          {
            operator new();
          }

          v19 = &a6[TLocaleInfo::stringToUInt(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v18, &v28)];
          while (v19 > a7)
          {
            v21 = *--v19;
            v20 = v21;
            if (v21 < 0)
            {
              if (!__maskrune(v20, 0x4000uLL))
              {
LABEL_22:
                v15 = v19 + 1;
                if (v19 + 1 >= a8)
                {
                  break;
                }

                v14 = TGraph::addVertex(a4, v19 + 1);
                if (a8)
                {
                  goto LABEL_9;
                }

                goto LABEL_24;
              }
            }

            else if ((*(MEMORY[0x1E69E9830] + 4 * v20 + 60) & 0x4000) == 0)
            {
              goto LABEL_22;
            }
          }
        }
      }

      v14 = TGraph::addVertex(a4, 0);
LABEL_7:
      v15 = a7;
    }

    if (a8)
    {
LABEL_9:
      if (*(v14 + 3))
      {
        v16 = *(v14 + 3);
      }

      else
      {
        v16 = a8;
      }
    }

    else
    {
LABEL_24:
      v16 = 0;
    }

    v22 = *(v12 + 1);
    if (!wcscmp(v22, "T"))
    {
      addToken(v12, a2, v14, a4, a5);
    }

    else
    {
      if (!wcscmp(v22, "A"))
      {
        v23 = addAlt(v12, a2, v14, a4, a5, a6, a7, v16);
        goto LABEL_32;
      }

      if (!wcscmp(v22, "P"))
      {
        addPattern(v12, a2, v14, a4, a5);
        goto LABEL_34;
      }

      if (!wcscmp(v22, "S"))
      {
        v23 = addSequence(v12, a2, v14, a4, a5, a6, a7, v16);
LABEL_32:
        a7 = v23;
      }
    }

LABEL_34:
    if (v15 > a7)
    {
      a7 = v15;
    }

    a2 = v14;
    goto LABEL_37;
  }

  return a7;
}

void sub_1B5615B20(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v1, 0x1070C40ADD13FEBLL);
  _Unwind_Resume(a1);
}

void TRomanObject::TRomanObject(TRomanObject *this, const TFileObject *a2, TLexicon *a3, TAllocator *a4)
{
  v42 = *MEMORY[0x1E69E9840];
  *(this + 1) = 0;
  v7 = this + 8;
  *(this + 4) = 0;
  v8 = (this + 32);
  *(this + 2) = 0;
  *(this + 3) = 0;
  *this = &unk_1F2D20CE8;
  *(this + 5) = 0;
  *(this + 6) = 0;
  v18 = "I";
  v19 = vdupq_n_s64(1uLL);
  v20 = -1;
  v21 = "V";
  v22 = v19;
  v23 = -1;
  v24 = "X";
  v25 = v19;
  v26 = -1;
  v27 = "L";
  v28 = v19;
  v29 = -1;
  v30 = "C";
  v31 = v19;
  v32 = -1;
  v33 = "D";
  v34 = v19;
  v35 = -1;
  v36 = "M";
  v37 = v19;
  v38 = -1;
  v39 = "N";
  v40 = xmmword_1B5AE0060;
  v41 = -1;
  if (TFileObject::verify(a2, &v18, 8, 1))
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "");
    TException::TException(v16, __p);
    v16[0].__vftable = &unk_1F2D00400;
    if (v17 >= 0)
    {
      v12 = &v16[1];
    }

    else
    {
      v12 = v16[1].__vftable;
    }

    conditionalAssert(v12, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/tkn/patternmgr.cpp", 594);
    TException::~TException(v16);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v16, "");
    TException::TException(exception, v16);
    *exception = &unk_1F2D00400;
  }

  v16[0].__vftable = 0;
  std::vector<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *,std::allocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *>>::resize(v8, 7uLL, v16);
  for (i = *(a2 + 3); i; i = *(i + 2))
  {
    v10 = *(i + 1);
    if (!wcscmp(v10, "N"))
    {
      MEMORY[0x1B8C84940](v7, *(i + 3));
    }

    else
    {
      v11 = wcschr("I", *v10) - "I";
      *(*v8 + 8 * (v11 >> 2)) = compileAlt(i, *(*v8 + 2 * v11), a3, a4);
    }
  }
}

void sub_1B5615E58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((v26 & 1) == 0)
    {
LABEL_6:
      v28 = *v24;
      if (*v24)
      {
        *(v21 + 40) = v28;
        operator delete(v28);
      }

      *v21 = v23;
      if (*(v21 + 31) < 0)
      {
        operator delete(*v22);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v26)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v25);
  goto LABEL_6;
}

uint64_t TRomanObject::build(uint64_t a1, signed int *a2, TVertex *a3, TVertex *a4, TGraph *a5, TLexicon *a6)
{
  v24 = 0;
  {
    operator new();
  }

  v12 = TLocaleInfo::stringToUInt(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, a2, &v24);
  v20 = v22;
  v21 = xmmword_1B5AE2110;
  v23 = 1;
  result = arabicToRoman(v12, &v20);
  if (*(&v21 + 1) >= v21)
  {
    if (v23)
    {
      v25[0] = 0;
      result = TBuffer<wchar_t>::insert(&v20, *(&v21 + 1), v25, 1uLL);
      v14 = v20;
      --*(&v21 + 1);
    }

    else
    {
      v14 = v20;
      if (v21)
      {
        *&v20[4 * v21 - 4] = 0;
      }
    }
  }

  else
  {
    v14 = v20;
    *&v20[4 * *(&v21 + 1)] = 0;
  }

  for (i = v14 + 4; ; ++i)
  {
    v16 = *(i - 1);
    if (!v16)
    {
      break;
    }

    v17 = wcschr("I", v16);
    v18 = a4;
    if (*i)
    {
      v18 = TGraph::addVertex(a5, 0);
    }

    result = addSequence(*(*(a1 + 32) + 2 * (v17 - "I")), a3, v18, a5, a6, 0, 0, 0);
    a3 = v18;
  }

  if (v23 == 1)
  {
    result = v20;
    if (v20 != v22 && v20 != 0)
    {
      return MEMORY[0x1B8C85310]();
    }
  }

  return result;
}

void sub_1B56160E8(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v1, 0x1070C40ADD13FEBLL);
  _Unwind_Resume(a1);
}

uint64_t TCountingObject::TCountingObject(uint64_t a1, uint64_t a2, uint64_t **a3, TLexicon *a4, TAllocator *a5)
{
  v7 = a2;
  v99 = *MEMORY[0x1E69E9840];
  *(a1 + 8) = 0;
  v53 = a1 + 8;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_1F2D20D18;
  v60 = "E";
  v61 = xmmword_1B5AFFEF0;
  v62 = -1;
  v63 = "I";
  v64 = xmmword_1B5AFFEF0;
  v65 = -1;
  v66 = "N";
  v67 = xmmword_1B5AFFEF0;
  v68 = -1;
  v69 = "Z";
  v70 = xmmword_1B5AFFEF0;
  v71 = -1;
  v72 = "D";
  v73 = xmmword_1B5AE0060;
  v74 = -1;
  v75 = "C";
  v76 = xmmword_1B5AE0060;
  v77 = -1;
  v78 = "C";
  v79 = xmmword_1B5AE0060;
  v80 = -1;
  v81 = "L";
  v82 = xmmword_1B5AE5400;
  v83 = -1;
  v84 = "L";
  v85 = 2;
  v86 = xmmword_1B5AE01E0;
  v87 = "E";
  v88 = 2;
  v89 = xmmword_1B5AE01E0;
  v90 = "E";
  v91 = 2;
  v92 = xmmword_1B5AE01E0;
  v93 = "W";
  v94 = 2;
  v95 = xmmword_1B5AE01E0;
  v96 = "N";
  v97 = 0;
  v98 = xmmword_1B5AE01E0;
  v9 = TFileObject::verify(a2, &v60, 13, 1);
  v59 = v9;
  if (v9)
  {
    std::string::basic_string[abi:ne200100]<0>(v54, "");
    TException::TException(__p, v54);
    __p[0] = &unk_1F2D00400;
    if (v58 >= 0)
    {
      v45 = &__p[1];
    }

    else
    {
      v45 = __p[1];
    }

    conditionalAssert(v45, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/tkn/patternmgr.cpp", 740);
    TException::~TException(__p);
    if (v55 < 0)
    {
      operator delete(v54[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(__p, "");
    TException::TException(exception, __p);
    *exception = &unk_1F2D00400;
  }

  *(a1 + 32) = 0u;
  *(a1 + 96) = 0u;
  v10 = (a1 + 96);
  *(a1 + 80) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 3;
  *(a1 + 136) = 0;
  v11 = v7[3];
  if (v11)
  {
    v51 = v7;
    v12 = 0;
    while (1)
    {
      v13 = *(v11 + 1);
      if (!wcscmp(v13, "N"))
      {
        MEMORY[0x1B8C84940](v53, *(v11 + 3));
      }

      else
      {
        if (!wcscmp(v13, "E"))
        {
          v15 = *v10;
          v16 = compileAlt(v11, *v10, a4, a5);
          if (!v15)
          {
            ++v12;
          }

          *v10 = v16;
          goto LABEL_50;
        }

        if (!wcscmp(v13, "I"))
        {
          v17 = *(a1 + 104);
          v18 = compileAlt(v11, v17, a4, a5);
          if (!v17)
          {
            ++v12;
          }

          *(a1 + 104) = v18;
          goto LABEL_50;
        }

        if (!wcscmp(v13, "N"))
        {
          v19 = *(a1 + 112);
          v20 = compileAlt(v11, v19, a4, a5);
          if (!v19)
          {
            ++v12;
          }

          *(a1 + 112) = v20;
          goto LABEL_50;
        }

        if (!wcscmp(v13, "Z"))
        {
          v21 = *(a1 + 120);
          v22 = compileAlt(v11, v21, a4, a5);
          if (!v21)
          {
            ++v12;
          }

          *(a1 + 120) = v22;
          goto LABEL_50;
        }

        if (!wcscmp(v13, "D"))
        {
          if (TFileObject::verify(v11, 0, 0))
          {
            std::string::basic_string[abi:ne200100]<0>(v54, "");
            TException::TException(__p, v54);
            __p[0] = &unk_1F2D00400;
            if (v58 >= 0)
            {
              v49 = &__p[1];
            }

            else
            {
              v49 = __p[1];
            }

            conditionalAssert(v49, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/tkn/patternmgr.cpp", 787);
            TException::~TException(__p);
            if (v55 < 0)
            {
              operator delete(v54[0]);
            }

            v50 = __cxa_allocate_exception(0x20uLL);
            std::string::basic_string[abi:ne200100]<0>(__p, "");
            TException::TException(v50, __p);
            *v50 = &unk_1F2D00400;
          }

          v23 = *(v11 + 3);
          if (wcscmp(v23, "I"))
          {
            {
              operator new();
            }

            v24 = TLocaleInfo::stringToUInt(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v23, &v59);
            *(a1 + 128) = v24;
            if (v24 - 5 >= 0xFFFFFFFD && v59 != 1)
            {
              goto LABEL_50;
            }

            loggableFileObject(v11);
            v25 = __p;
            if (v57 < 0)
            {
              v25 = __p[0];
            }

            tknPrintf("Error: %sValue is out of range, must be 2, 3, 4, or I\n", v25);
            if (v57 < 0)
            {
              operator delete(__p[0]);
            }

            v26 = 1;
            goto LABEL_49;
          }

          *(a1 + 128) = 7;
          *(a1 + 136) = 1;
        }

        else
        {
          if (!wcscmp(v13, "C"))
          {
            Array = TCountingObject::getArray(0, v11, a3);
            *(a1 + 32) = Array;
            goto LABEL_48;
          }

          if (!wcscmp(v13, "C"))
          {
            Array = TCountingObject::getArray(0, v11, a3);
            *(a1 + 40) = Array;
            goto LABEL_48;
          }

          if (!wcscmp(v13, "L"))
          {
            Array = TCountingObject::getArray(0, v11, a3);
            *(a1 + 48) = Array;
            goto LABEL_48;
          }

          if (!wcscmp(v13, "L"))
          {
            Array = TCountingObject::getArray(0, v11, a3);
            *(a1 + 56) = Array;
            goto LABEL_48;
          }

          if (!wcscmp(v13, "E"))
          {
            Array = TCountingObject::getArray(0, v11, a3);
            *(a1 + 64) = Array;
            goto LABEL_48;
          }

          if (!wcscmp(v13, "E"))
          {
            Array = TCountingObject::getArray(0, v11, a3);
            *(a1 + 72) = Array;
            goto LABEL_48;
          }

          if (!wcscmp(v13, "W"))
          {
            Array = TCountingObject::getArray(0, v11, a3);
            *(a1 + 80) = Array;
LABEL_48:
            v26 = v59 | (Array == 0);
LABEL_49:
            v59 = v26;
          }
        }
      }

LABEL_50:
      v11 = *(v11 + 2);
      if (!v11)
      {
        v27 = v12 < 2;
        v7 = v51;
        if (!v27)
        {
          loggableFileObject(v51);
          if (v57 >= 0)
          {
            v28 = __p;
          }

          else
          {
            v28 = __p[0];
          }

          tknPrintf("Error: %sAttributes EnxAnd, ItaAnd, NldAnd, and ZhoZero are exclusive\n", v28);
          if (v57 < 0)
          {
            operator delete(__p[0]);
          }

          v59 = 1;
        }

        break;
      }
    }
  }

  *(a1 + 88) = 0;
  v29 = *(a1 + 32);
  if (v29)
  {
    v30 = *(a1 + 40);
    if (v30)
    {
      v31 = (((*(v30 + 5) - *(v30 + 4)) >> 3) / (10 * *(a1 + 128)) + 2) * *(a1 + 128);
      *(a1 + 88) = v31;
      if (*(a1 + 136) == 1)
      {
        *(a1 + 88) = v31 - 2;
      }

      v32 = TCountingObject::checkChunk(a1, v7, v29, v30);
      v59 |= v32;
      v33 = TCountingObject::checkMagnitude(a1, v7, *(a1 + 40));
      v59 |= v33;
    }
  }

  v34 = *(a1 + 48);
  if (v34)
  {
    v35 = *(a1 + 56);
    if (v35)
    {
      v36 = (((*(v35 + 5) - *(v35 + 4)) >> 3) / (10 * *(a1 + 128)) + 2) * *(a1 + 128);
      if (*(a1 + 136))
      {
        v36 -= 2;
      }

      if (v36 >= *(a1 + 88))
      {
        v36 = *(a1 + 88);
      }

      *(a1 + 88) = v36;
      v37 = TCountingObject::checkChunk(a1, v7, v34, v35);
      v59 |= v37;
      v38 = TCountingObject::checkMagnitude(a1, v7, *(a1 + 56));
      v59 |= v38;
    }
  }

  v39 = *(a1 + 64);
  if (v39)
  {
    v40 = *(a1 + 72);
    if (v40)
    {
      v41 = (((*(v40 + 5) - *(v40 + 4)) >> 3) / (10 * *(a1 + 128)) + 2) * *(a1 + 128);
      if (*(a1 + 136))
      {
        v41 -= 2;
      }

      if (v41 >= *(a1 + 88))
      {
        v41 = *(a1 + 88);
      }

      *(a1 + 88) = v41;
      v42 = TCountingObject::checkChunk(a1, v7, v39, v40);
      v59 |= v42;
      v43 = TCountingObject::checkMagnitude(a1, v7, *(a1 + 72));
      v59 |= v43;
    }
  }

  if (v59 == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(v54, "");
    TException::TException(__p, v54);
    __p[0] = &unk_1F2D00400;
    if (v58 >= 0)
    {
      v47 = &__p[1];
    }

    else
    {
      v47 = __p[1];
    }

    conditionalAssert(v47, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/tkn/patternmgr.cpp", 897);
    TException::~TException(__p);
    if (v55 < 0)
    {
      operator delete(v54[0]);
    }

    v48 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(__p, "");
    TException::TException(v48, __p);
    *v48 = &unk_1F2D00400;
  }

  return a1;
}

void sub_1B5616BC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  MEMORY[0x1B8C85350](a10, 0x1070C40ADD13FEBLL);
  *v26 = a11;
  if (*(v26 + 31) < 0)
  {
    operator delete(*a14);
  }

  _Unwind_Resume(a1);
}

uint64_t TCountingObject::getArray(int a1, const __int32 **this, uint64_t **a3)
{
  if (TFileObject::verify(this, 0, 0))
  {
    std::string::basic_string[abi:ne200100]<0>(v16, "");
    TException::TException(__p, v16);
    __p[0] = &unk_1F2D00400;
    if (v20 >= 0)
    {
      v14 = &__p[1];
    }

    else
    {
      v14 = __p[1];
    }

    conditionalAssert(v14, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/tkn/patternmgr.cpp", 905);
    TException::~TException(__p);
    if (v17 < 0)
    {
      operator delete(v16[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(__p, "");
    TException::TException(exception, __p);
    *exception = &unk_1F2D00400;
  }

  v5 = *a3;
  v6 = a3[1] - *a3;
  if (v6)
  {
    v7 = v6 >> 3;
    v8 = this[3];
    if (v7 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v7;
    }

    while (1)
    {
      v10 = *v5;
      v11 = (*v5 + 8);
      if (*(*v5 + 31) < 0)
      {
        v11 = *v11;
      }

      if (!wcscmp(v8, v11))
      {
        break;
      }

      ++v5;
      if (!--v9)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    loggableFileObject(this);
    if (v19 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    tknPrintf("Error: %sArray name does not exist\n", v12);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  return v10;
}

void sub_1B5616E9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((v22 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v21);
  goto LABEL_6;
}

uint64_t TCountingObject::checkChunk(TCountingObject *this, const TFileObject *a2, const TArrayObject *a3, const TArrayObject *a4)
{
  v8 = TArrayObject::checkNoGap(a3, 0, 0xAuLL);
  v9 = *(this + 16);
  if (v9 >= 2)
  {
    v10 = 100;
    v11 = 1;
    v12 = 10;
    do
    {
      v13 = *(a4 + 4);
      if ((10 * v11 >= (*(a4 + 5) - v13) >> 3 || !*(v13 + 80 * v11)) && (((v11 & 0xFFFFFFFFFFFFFFFDLL) == 4) & *(this + 136)) == 0 && v12 < v10)
      {
        do
        {
          v14 = *(a3 + 4);
          if (v12 >= (*(a3 + 5) - v14) >> 3 || !*(v14 + 8 * v12))
          {
            loggableFileObject(a2);
            if (v18 >= 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p;
            }

            tknPrintf("Error: %sCannot make spoken form for '%llu'\n", p_p, v12);
            if (v18 < 0)
            {
              operator delete(__p);
            }

            v8 = 1;
          }

          ++v12;
        }

        while (v10 != v12);
        v9 = *(this + 16);
      }

      v12 = v10;
      v10 *= 10;
      v11 += 2;
    }

    while (v11 < v9);
  }

  return v8 & 1;
}

void sub_1B5617058(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TCountingObject::checkMagnitude(TCountingObject *this, const TFileObject *a2, const TArrayObject *a3)
{
  if (*a2)
  {
    v6 = *(*a2 + 72) > 2uLL;
  }

  else
  {
    v6 = 1;
  }

  v7 = *(a3 + 4);
  v8 = (*(a3 + 5) - v7) >> 3;
  if (v8 > 10 * *(this + 16) && (v9 = 10 * *(this + 16), *(v7 + 80 * *(this + 16))))
  {
    v10 = 0;
  }

  else
  {
    loggableFileObject(a2);
    if (v19 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    tknPrintf("Error: %sMagnitude '%llu' hasn't been specified and is needed\n", v11, 10 * *(this + 16));
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }

    v7 = *(a3 + 4);
    v9 = 10 * *(this + 16);
    v8 = (*(a3 + 5) - v7) >> 3;
    v10 = 1;
  }

  for (i = v9 + 10; i < v8; ++i)
  {
    v13 = *(this + 16);
    if (i % (10 * v13))
    {
      if (i / 0xA % v13 && *(v7 + 8 * i))
      {
        if (!v6)
        {
          loggableFileObject(a2);
          if (v19 >= 0)
          {
            v16 = __p;
          }

          else
          {
            v16 = __p[0];
          }

          tknPrintf("Warning: %sMagnitude '%llu' is not supported\n", v16, i);
          if (v19 < 0)
          {
            operator delete(__p[0]);
          }

          goto LABEL_38;
        }

        loggableFileObject(a2);
        if (v19 >= 0)
        {
          v14 = __p;
        }

        else
        {
          v14 = __p[0];
        }

        tknPrintf("Error: %sMagnitude '%llu' is not supported\n", v14, i);
        goto LABEL_30;
      }
    }

    else if (!*(v7 + 8 * i) && (v8 <= i + 10 * v13 || !*(v7 + 80 * v13 + 8 * i) || *(this + 136) == 1))
    {
      loggableFileObject(a2);
      if (v19 >= 0)
      {
        v15 = __p;
      }

      else
      {
        v15 = __p[0];
      }

      tknPrintf("Error: %sMagnitude '%llu' hasn't been specified and is needed\n", v15, i);
LABEL_30:
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }

      v10 = 1;
    }

LABEL_38:
    v7 = *(a3 + 4);
    v8 = (*(a3 + 5) - v7) >> 3;
  }

  return v10 & 1;
}

void sub_1B56172C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TCountingObject::getChunk(TCountingObject *this, int a2, int a3, unint64_t a4)
{
  if ((!a3 || (v4 = *(this + 8)) == 0) && (!a2 || (v4 = *(this + 6)) == 0))
  {
    v4 = *(this + 4);
  }

  v6 = v4 + 32;
  v5 = *(v4 + 32);
  if (a4 >= (*(v6 + 8) - v5) >> 3)
  {
    return 0;
  }

  else
  {
    return *(v5 + 8 * a4);
  }
}

uint64_t TCountingObject::getMagnitude(TCountingObject *this, int a2, int a3, uint64_t a4, unint64_t a5)
{
  if (a5 > 9)
  {
    return 0;
  }

  v5 = a5 + 10 * a4;
  if ((!a3 || (v6 = *(this + 9)) == 0) && (!a2 || (v6 = *(this + 7)) == 0))
  {
    v6 = *(this + 5);
  }

  v8 = v6 + 32;
  v7 = *(v6 + 32);
  if (v5 >= (*(v8 + 8) - v7) >> 3)
  {
    return 0;
  }

  else
  {
    return *(v7 + 8 * v5);
  }
}

const __int32 **TCountingObject::addHundredChunk(TCountingObject *this, unint64_t a2, int a3, int a4, int a5, int a6, TVertex *a7, TVertex *a8, TGraph *a9, TLexicon *a10)
{
  v16 = 0;
  if (a2 && a3)
  {
    v16 = a2 <= 0x63 && *(this + 12) || a2 < 0xD && *(this + 14) != 0;
  }

  v18 = 0;
  if (a2 && a4)
  {
    v18 = *(this + 15) != 0;
  }

  v70 = v18;
  v19 = *(this + 12);
  if (!v19)
  {
    v19 = *(this + 14);
  }

  v69 = v19;
  v20 = a10;
  v68 = *(this + 15);
  result = TCountingObject::getChunk(this, a5, a6, a2);
  if (result)
  {
    v22 = result;
    result = addSequence(result, a7, a8, a9, a10, 0, 0, 0);
    if (!v16 && !v70)
    {
      return result;
    }

    if (v16)
    {
      v23 = v69;
    }

    else
    {
      v23 = v68;
    }

    v24 = TGraph::addVertex(a9, 0);
    addSequence(v23, a7, v24, a9, a10, 0, 0, 0);
    v25 = v22;
    v26 = v24;
    v27 = a8;
    v28 = a9;
    goto LABEL_59;
  }

  v66 = v16;
  v65 = a7;
  if (a2 < 0xA)
  {
    v29 = 0;
    v31 = 1;
    v30 = a2;
    goto LABEL_42;
  }

  v29 = 1;
  v30 = a2;
  v31 = 1;
  while (v30 > 0x63 || !*(this + 136))
  {
    v31 *= 10;
    v32 = v30 / 0xA;
    ++v29;
    v33 = v30 > 0x63;
    v30 /= 0xAuLL;
    if (!v33)
    {
      --v29;
      v30 = v32;
      goto LABEL_42;
    }
  }

  if (v29 != 6)
  {
    if (v29 == 4)
    {
      v34 = v30 / 0xAu + 40;
      v35 = *(*(this + 5) + 32);
      v36 = *(*(this + 5) + 40) - v35;
      if ((v34 >= v36 >> 3 || !*(v35 + 8 * v34)) && (v36 < 0x141 || !*(v35 + 320)))
      {
        v29 = 3;
        goto LABEL_42;
      }
    }

    goto LABEL_41;
  }

  v37 = v30 / 0xAu + 60;
  v38 = *(*(this + 5) + 32);
  v39 = *(*(this + 5) + 40) - v38;
  if (v37 < v39 >> 3 && *(v38 + 8 * v37) || v39 >= 0x1E1 && *(v38 + 480))
  {
LABEL_41:
    v31 *= 10;
    v30 = v30 / 0xAu;
    goto LABEL_42;
  }

  v29 = 5;
LABEL_42:
  if (a2 == v30 * v31)
  {
    v40 = a8;
  }

  else
  {
    v41 = TGraph::addVertex(a9, 0);
    result = TCountingObject::addHundredChunk(this, a2 - v30 * v31, v29 == 2, 0, 0, a6, v41, a8, a9, a10);
    if (*(this + 15) && a2 - v30 * v31 < v31 / 0xA)
    {
      v40 = TGraph::addVertex(a9, 0);
      result = addSequence(*(this + 15), v40, v41, a9, a10, 0, 0, 0);
    }

    else
    {
      v40 = v41;
    }
  }

  if (v30)
  {
    v67 = v40;
    if (a2 == v30 * v31)
    {
      v42 = a6;
    }

    else
    {
      v42 = 0;
    }

    Magnitude = TCountingObject::getMagnitude(this, a5, v42, v29, v30);
    if (!Magnitude)
    {
      if (v66 || v70)
      {
        if (v66)
        {
          v48 = v69;
        }

        else
        {
          v48 = v68;
        }

        v49 = TGraph::addVertex(a9, 0);
        addSequence(v48, v65, v49, a9, a10, 0, 0, 0);
        v50 = TGraph::addVertex(a9, 0);
        v51 = 0;
        v52 = *(*(this + 4) + 32);
        if (v30 < (*(*(this + 4) + 40) - v52) >> 3)
        {
          v51 = *(v52 + 8 * v30);
        }

        addSequence(v51, v49, v50, a9, a10, 0, 0, 0);
        if (!v42 || (v53 = *(this + 9)) == 0)
        {
          v53 = *(this + 5);
        }

        v55 = v53 + 32;
        v54 = *(v53 + 32);
        if (10 * v29 >= ((*(v55 + 8) - v54) >> 3))
        {
          v56 = 0;
        }

        else
        {
          v56 = *(v54 + 80 * v29);
        }

        addSequence(v56, v50, v67, a9, a10, 0, 0, 0);
      }

      v57 = TGraph::addVertex(a9, 0);
      if (!a5 || (v58 = *(this + 6)) == 0)
      {
        v58 = *(this + 4);
      }

      v60 = v58 + 32;
      v59 = *(v58 + 32);
      if (v30 >= (*(v60 + 8) - v59) >> 3)
      {
        v61 = 0;
      }

      else
      {
        v61 = *(v59 + 8 * v30);
      }

      addSequence(v61, v65, v57, a9, a10, 0, 0, 0);
      if (!v42 || (v62 = *(this + 9)) == 0)
      {
        v62 = *(this + 5);
      }

      v64 = v62 + 32;
      v63 = *(v62 + 32);
      if (10 * v29 >= ((*(v64 + 8) - v63) >> 3))
      {
        v25 = 0;
      }

      else
      {
        v25 = *(v63 + 80 * v29);
      }

      v47 = a10;
      v27 = v67;
      v26 = v57;
      v28 = a9;
      goto LABEL_60;
    }

    v44 = Magnitude;
    v20 = a10;
    if (v66 || v70)
    {
      if (v66)
      {
        v45 = v69;
      }

      else
      {
        v45 = v68;
      }

      v46 = TGraph::addVertex(a9, 0);
      addSequence(v45, v65, v46, a9, a10, 0, 0, 0);
      addSequence(v44, v46, v67, a9, a10, 0, 0, 0);
    }

    v25 = v44;
    v26 = v65;
    v27 = v67;
    v28 = a9;
LABEL_59:
    v47 = v20;
LABEL_60:

    return addSequence(v25, v26, v27, v28, v47, 0, 0, 0);
  }

  return result;
}

unint64_t TCountingObject::build(TCountingObject *a1, __int32 *a2, TVertex *a3, TVertex *a4, TGraph *a5, TLexicon *a6)
{
  do
  {
    v8 = a2;
    v9 = a2[1];
    ++a2;
    if (!v9)
    {
      break;
    }

    v10 = *v8;
    {
      operator new();
    }

    DigitExtended = v10 - 48;
    if (v10 < 48)
    {
      break;
    }

    if (v10 > 0x39)
    {
      if (v10 < 0x660)
      {
        break;
      }

      DigitExtended = TLocaleInfo::getDigitExtended(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v10);
    }
  }

  while (!DigitExtended);
  result = wcslen(v8);
  v13 = result;
  v14 = *(a1 + 16);
  if (result <= v14)
  {
    v15 = *(a1 + 10);
    if (v15)
    {
      LOBYTE(v66) = 0;
      {
        operator new();
      }

      result = TLocaleInfo::stringToUInt(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v8, &v66);
      v16 = *(v15 + 32);
      if (result < ((*(v15 + 40) - v16) >> 3))
      {
        result = *(v16 + 8 * result);
        if (result)
        {
          return addSequence(result, a3, a4, a5, a6, 0, 0, 0);
        }
      }
    }
  }

  v66 = v68;
  v67 = xmmword_1B5AE2110;
  v69 = 1;
  v17 = v13 / v14;
  v18 = v13 % v14;
  v64 = a1;
  if (v13 % v14)
  {
    TBuffer<wchar_t>::insert(&v66, 0, "0", v14 - v18);
    TBuffer<wchar_t>::insert(&v66, *(&v67 + 1), v8, v13 % v14);
    v70[0] = v17 + 48;
    result = TBuffer<wchar_t>::insert(&v66, *(&v67 + 1), v70, 1uLL);
    v8 += v18;
  }

  v65 = v14;
  if (v14 <= v13)
  {
    v19 = 0;
    do
    {
      result = wcsncmp(v8, "0", v14);
      if (result)
      {
        TBuffer<wchar_t>::insert(&v66, *(&v67 + 1), v8, v14);
        v70[0] = v17 + 48 + ~v19;
        result = TBuffer<wchar_t>::insert(&v66, *(&v67 + 1), v70, 1uLL);
      }

      ++v19;
      v8 = (v8 + v65 * 4);
    }

    while (v19 < v17);
  }

  if (*(&v67 + 1) >= v67)
  {
    if (v69)
    {
      v20 = v14;
      v70[0] = 0;
      result = TBuffer<wchar_t>::insert(&v66, *(&v67 + 1), v70, 1uLL);
      v21 = v66;
      --*(&v67 + 1);
    }

    else
    {
      v20 = v14;
      v21 = v66;
      if (v67)
      {
        v66[v67 - 1] = 0;
      }
    }
  }

  else
  {
    v20 = v14;
    v21 = v66;
    v66[*(&v67 + 1)] = 0;
  }

  v22 = a5;
  if (*v21)
  {
    v59 = 0;
    v23 = 0;
    v53 = 10 * v20;
    v54 = v65 * 4 + 4;
    v24 = 1;
    v62 = v21;
    v55 = v20;
    v52 = (8 * v20) | 4;
    do
    {
      v25 = v21[v65];
      {
        operator new();
      }

      v26 = v25 - 48;
      if (v25 < 48)
      {
        goto LABEL_37;
      }

      if (v25 <= 0x39)
      {
        goto LABEL_38;
      }

      if (v25 < 0x660)
      {
LABEL_37:
        v26 = -1;
      }

      else
      {
        v26 = TLocaleInfo::getDigitExtended(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v25);
      }

LABEL_38:
      if (*(&v67 + 1) >= v67)
      {
        if (v69)
        {
          v70[0] = 0;
          TBuffer<wchar_t>::insert(&v66, *(&v67 + 1), v70, 1uLL);
          --*(&v67 + 1);
        }

        else if (v67)
        {
          v66[v67 - 1] = 0;
        }
      }

      else
      {
        v66[*(&v67 + 1)] = 0;
      }

      v62[v65] = 0;
      LOBYTE(v70[0]) = 0;
      {
        operator new();
      }

      v27 = TLocaleInfo::stringToUInt(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v21, v70);
      v57 = v23;
      if (!(v24 & 1 | (*(v64 + 15) == 0)))
      {
        v28 = *v21;
        {
          operator new();
        }

        v29 = v28 - 48;
        if (v28 >= 48)
        {
          if (v28 > 0x39)
          {
            if (v28 < 0x660)
            {
              goto LABEL_55;
            }

            v29 = TLocaleInfo::getDigitExtended(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v28);
          }

          if (!v29 && v27)
          {
            v30 = TGraph::addVertex(v22, 0);
            addSequence(*(v64 + 15), a3, v30, v22, a6, 0, 0, 0);
            v57 = 0;
            if (!v59)
            {
              goto LABEL_60;
            }

            goto LABEL_56;
          }
        }
      }

LABEL_55:
      v30 = a3;
      if (!v59)
      {
        goto LABEL_60;
      }

LABEL_56:
      if (*(v64 + 13) && (v27 < 0x64 || !(v27 % 0x64)))
      {
        v31 = TGraph::addVertex(v22, 0);
        addSequence(*(v64 + 13), v30, v31, v22, a6, 0, 0, 0);
        v30 = v31;
      }

LABEL_60:
      v32 = v26;
      if (!v26)
      {
        result = TCountingObject::addHundredChunk(v64, v27, (v24 & 1) == 0, v57, v24 & 1, 1, v30, a4, a5, a6);
        break;
      }

      v59 = v26 == 1;
      v61 = &v21[v65];
      v33 = v21[v65 + 1];
      a3 = a4;
      if (v33)
      {
        a3 = TGraph::addVertex(a5, 0);
      }

      v34 = v55 * v26;
      Magnitude = TCountingObject::getMagnitude(v64, v24 & 1, v33 == 0, v34, v27);
      if (!Magnitude)
      {
        if (v33 || (v38 = *(v64 + 9)) == 0)
        {
          v38 = *(v64 + 5);
        }

        v40 = v38 + 32;
        v39 = *(v38 + 32);
        if (10 * v34 < ((*(v40 + 8) - v39) >> 3))
        {
          v36 = *(v39 + 80 * v34);
          if (v36)
          {
            v22 = a5;
            v41 = TGraph::addVertex(a5, 0);
            TCountingObject::addHundredChunk(v64, v27, 0, v57, v24 & 1, 0, v30, v41, a5, a6);
            v30 = v41;
            goto LABEL_66;
          }
        }

        if (v27 <= 9 && (v42 = *(*(v64 + 5) + 32), v53 + v27 < (*(*(v64 + 5) + 40) - v42) >> 3) && (v36 = *(v42 + 8 * (v53 + v27))) != 0)
        {
          v43 = v30;
        }

        else
        {
          v43 = TGraph::addVertex(a5, 0);
          TCountingObject::addHundredChunk(v64, v27, 0, v57, v24 & 1, 0, v30, v43, a5, a6);
          v44 = *(*(v64 + 5) + 32);
          if (v53 >= (*(*(v64 + 5) + 40) - v44) >> 3)
          {
            v36 = 0;
          }

          else
          {
            v36 = *(v44 + 8 * v53);
          }
        }

        if (v61[1])
        {
          v45 = *(v21 + v52);
          {
            operator new();
          }

          v46 = v45 - 48;
          if (v45 < 48)
          {
            goto LABEL_87;
          }

          if (v45 <= 0x39)
          {
            goto LABEL_88;
          }

          if (v45 < 0x660)
          {
LABEL_87:
            v46 = -1;
          }

          else
          {
            v46 = TLocaleInfo::getDigitExtended(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v45);
          }

LABEL_88:
          v47 = v46 + 1;
        }

        else
        {
          v47 = 1;
        }

        if (v47 < v32)
        {
          v30 = TGraph::addVertex(a5, 0);
          addSequence(v36, v43, v30, a5, a6, 0, 0, 0);
          v48 = v53 * (v32 - 1);
          if (v33 || (v49 = *(v64 + 9)) == 0)
          {
            v49 = *(v64 + 5);
          }

          v51 = v49 + 32;
          v50 = *(v49 + 32);
          v22 = a5;
          if (v48 >= (*(v51 + 8) - v50) >> 3)
          {
            v36 = 0;
          }

          else
          {
            v36 = *(v50 + 8 * v48);
          }

          goto LABEL_66;
        }

        v30 = v43;
        goto LABEL_65;
      }

      v36 = Magnitude;
LABEL_65:
      v22 = a5;
LABEL_66:
      result = addSequence(v36, v30, a3, v22, a6, 0, 0, 0);
      v24 = 0;
      v21 = (v21 + v54);
      HIDWORD(v37) = -858993459 * v27;
      LODWORD(v37) = -858993459 * v27;
      v23 = (v37 >> 1) < 0x1999999A;
      v62 = (v62 + v54);
    }

    while (v61[1]);
  }

  if (v69 == 1)
  {
    result = v66;
    if (v66 != v68)
    {
      if (v66)
      {
        return MEMORY[0x1B8C85310]();
      }
    }
  }

  return result;
}

void sub_1B561833C(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v1, 0x1070C40ADD13FEBLL);
  _Unwind_Resume(a1);
}

void TChartSeeder::makeTerminals(uint64_t a1, unint64_t a2, uint64_t *a3, void *a4, void *a5, TAllocator *a6)
{
  v6 = (*(a1 + 8) + a2);
  if (*v6 && *(a1 + 32) > a2)
  {
    v41 = v43;
    v42 = xmmword_1B5AE2110;
    v44 = 1;
    v10 = v6;
    Terminals = 1;
    while ((Terminals & 1) != 0)
    {
      Segment = TSegmenter::getSegment(*(a1 + 16), v10);
      v13 = Segment;
      if (!Segment)
      {
        break;
      }

      v14 = *(Segment + 24);
      if (v14 == 5)
      {
        break;
      }

      v15 = *Segment;
      if (wcslen(*Segment) + *(&v42 + 1) > *(a1 + 32))
      {
        break;
      }

      if (!v14)
      {
        v22 = 0;
        while (1)
        {
          if (!v13)
          {
            goto LABEL_66;
          }

          if (*(v13 + 24))
          {
            goto LABEL_12;
          }

          v23 = *v13;
          v10 = *(v13 + 8);
          v24 = **v13;
          if (v24 == 9)
          {
LABEL_60:
            if (*(v13 + 24))
            {
              goto LABEL_12;
            }

            goto LABEL_66;
          }

          if (!*(&v42 + 1) || v41[*(&v42 + 1) - 1] != 32)
          {
            {
              operator new();
            }

            if (v24 <= 8202)
            {
              if (v24 != 32 && v24 != 160)
              {
                goto LABEL_45;
              }
            }

            else if (v24 != 8203 && v24 != 12288 && v24 != 65279)
            {
LABEL_45:
              v23 = *v13;
              goto LABEL_33;
            }

            v23 = *v13;
            if (wcslen(*v13) > 2)
            {
              goto LABEL_60;
            }
          }

LABEL_33:
          v26 = *v23;
          {
            operator new();
          }

          v28 = v26 == 10 || v26 == 13;
          if (v28 & v22)
          {
            goto LABEL_60;
          }

          if (!*(&v42 + 1) || v41[*(&v42 + 1) - 1] != 32)
          {
            TBuffer<wchar_t>::insert(&v41, *(&v42 + 1), " ", 1uLL);
          }

          v22 |= v28;
          v13 = TSegmenter::getSegment(*(a1 + 16), v10);
        }
      }

      v16 = 0;
      v10 = *(v13 + 8);
        ;
      }

      TBuffer<wchar_t>::insert(&v41, *(&v42 + 1), v15, v16 - 1);
LABEL_12:
      v18 = *a3;
      v19 = a3[1];
      v20 = *(a1 + 24);
      if (*(&v42 + 1) >= v42)
      {
        if (v44)
        {
          LODWORD(v39) = 0;
          TBuffer<wchar_t>::insert(&v41, *(&v42 + 1), &v39, 1uLL);
          v21 = v41;
          --*(&v42 + 1);
        }

        else
        {
          v21 = v41;
          if (v42)
          {
            v41[v42 - 1] = 0;
          }
        }
      }

      else
      {
        v21 = v41;
        v41[*(&v42 + 1)] = 0;
      }

      Terminals = TGrammar::getTerminals(v20, v21, a3);
      v29 = a3[1] - *a3;
      if (v19 - v18 != v29)
      {
        *&v39 = v10 - v6;
        std::vector<unsigned long>::resize(a4, v29 >> 3, &v39);
        v40 = "s";
        if ((*(&v42 + 1) + 1) >> 62)
        {
          v30 = -1;
        }

        else
        {
          v30 = 4 * (*(&v42 + 1) + 1);
        }

        v31 = TAllocator::allocate(a6, v30);
        if (*(&v42 + 1) >= v42)
        {
          if (v44)
          {
            LODWORD(v39) = 0;
            TBuffer<wchar_t>::insert(&v41, *(&v42 + 1), &v39, 1uLL);
            v32 = v41;
            --*(&v42 + 1);
          }

          else
          {
            v32 = v41;
            if (v42)
            {
              v41[v42 - 1] = 0;
            }
          }
        }

        else
        {
          v32 = v41;
          v41[*(&v42 + 1)] = 0;
        }

        wcscpy(v31, v32);
        *&v39 = 1;
        *(&v39 + 1) = v31;
        v34 = *a3;
        v33 = a3[1];
        ClientData = TGrammarCompiler::makeClientData(&v40, &v39, 1, a6);
        std::vector<void const*>::resize(a5, (v33 - v34) >> 3, &ClientData);
      }
    }

LABEL_66:
    if (v44 == 1 && v41 != v43 && v41 != 0)
    {
      MEMORY[0x1B8C85310]();
    }
  }
}

void sub_1B56188D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  MEMORY[0x1B8C85350](v16, 0x1070C40ADD13FEBLL);
  if (LOBYTE(STACK[0x450]) == 1 && a16 != a9)
  {
    if (a16)
    {
      MEMORY[0x1B8C85310]();
    }
  }

  _Unwind_Resume(a1);
}

void std::vector<void const*>::resize(void *a1, unint64_t a2, uint64_t *a3)
{
  v3 = (a1[1] - *a1) >> 3;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<void const*>::__append(a1, a2 - v3, a3);
  }
}

void TPatternManager::TPatternManager(TPatternManager *this, TInputStream *a2, TInputStream *a3, TLexicon *a4, TTokenizerParamManager *a5)
{
  v8 = *MEMORY[0x1E69E9840];
  TAllocator::TAllocator((this + 40), 2048);
  *(this + 5) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 6) = 0u;
  *(this + 1) = a4;
  *(this + 2) = a5;
  *this = -1;
  *(this + 22) = 0;
  operator new();
}

void sub_1B5619598(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  TFileObjectParser::~TFileObjectParser(&v31);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    TPatternManager::freeMemory(v28);
    __cxa_rethrow();
  }

  JUMPOUT(0x1B5619754);
}

void sub_1B5619724()
{
  __cxa_end_catch();
  if (v9 == 1 && v8 != v7 && v8 != 0)
  {
    MEMORY[0x1B8C85310]();
  }

  v3 = v0[19];
  if (v3)
  {
    v0[20] = v3;
    operator delete(v3);
  }

  v4 = v0[16];
  if (v4)
  {
    v0[17] = v4;
    operator delete(v4);
  }

  v5 = v0[13];
  if (v5)
  {
    v0[14] = v5;
    operator delete(v5);
  }

  v6 = *v1;
  if (*v1)
  {
    v0[11] = v6;
    operator delete(v6);
  }

  TAllocator::clear((v0 + 5));
  JUMPOUT(0x1B56197DCLL);
}

void sub_1B56197D4(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1B56197DCLL);
  }

  __clang_call_terminate(a1);
}

uint64_t callBackSeqAlt(uint64_t a1, uint64_t a2, __int32 *a3, uint64_t a4, TAllocator *a5)
{
  v10 = callBackSeqAltHelper(a1, a2, a3, a4, 0);
  if (v10 >= 2)
  {
    if (v10 >> 62)
    {
      v11 = -1;
    }

    else
    {
      v11 = 4 * v10;
    }

    v12 = TAllocator::allocate(a5, v11);
    callBackSeqAltHelper(a1, a2, a3, a4, v12);
  }

  return 1;
}

uint64_t callBackSync(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, TAllocator *a5)
{
  if (a2 <= 1 && *a1 > 1uLL)
  {
    return 0;
  }

  v7 = *(a1 + 8);
  if (*v7)
  {
    v8 = wcslen(*(a1 + 8));
    v9 = v8 + 10;
    if ((v8 + 10) >> 62)
    {
      v10 = -1;
    }

    else
    {
      v10 = 4 * (v8 + 10);
    }

    v13 = TAllocator::allocate(a5, v10);
    v14 = v9;
    v17 = 0;
    v15 = 0;
    TBuffer<wchar_t>::insert(&v13, 0, "S", 8uLL);
    v11 = 0;
      ;
    }

    TBuffer<wchar_t>::insert(&v13, v15, v7, v11 - 1);
    v18 = 34;
    TBuffer<wchar_t>::insert(&v13, v15, &v18, 1uLL);
    if (v15 >= v14)
    {
      if (v17)
      {
        v18 = 0;
        TBuffer<wchar_t>::insert(&v13, v15--, &v18, 1uLL);
      }

      else if (v14)
      {
        *(v13 + v14 - 1) = 0;
      }
    }

    else
    {
      *(v13 + v15) = 0;
    }

    if (v17 == 1 && v13 != &v16)
    {
      if (v13)
      {
        MEMORY[0x1B8C85310]();
      }
    }
  }

  return 1;
}

void sub_1B5619A08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (LOBYTE(STACK[0x420]) == 1)
  {
    callBackSync(va);
  }

  _Unwind_Resume(a1);
}

uint64_t callBackLookup(void *a1, unint64_t a2, void *a3, uint64_t a4, TAllocator *a5)
{
  v29 = *MEMORY[0x1E69E9840];
  if (a2 <= 1 && *a1 > 1uLL)
  {
    return 0;
  }

  v8 = a1[1];
  if (!*v8)
  {
    return 1;
  }

  if (TLexicon::checkName(a3, v8, 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    loggableUnicode(v8, &__p);
    if (v28 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    tknPrintf("Error: '%s' : Lookup requested for an invalid word name.\n", p_p);
    if (v28 < 0)
    {
      operator delete(__p);
    }

    return 0;
  }

  v24 = 0;
  v25 = 0;
  v26 = 0;
  v11 = TStringParam::get((a4 + 10736));
  ActiveConfigHandle = TParam::getActiveConfigHandle((a4 + 16456));
  v13 = *(a4 + 4 * TParam::getValidConfig((a4 + 16456), ActiveConfigHandle) + 16616);
  v14 = TParam::getActiveConfigHandle((a4 + 16104));
  ValidConfig = TParam::getValidConfig((a4 + 16104), v14);
  TLexicon::findHeadClonesCollated(a3, v8, v11, v13, *(a4 + 4 * ValidConfig + 16264), &v24);
  for (i = 0; i != 1600; i += 16)
  {
    *(&__p + i) = 0;
  }

  v17 = 0;
  v18 = (v25 - v24) >> 5;
  v19 = v24 + 16;
  v20 = 100;
  do
  {
    if (!v18)
    {
      break;
    }

    if ((*v19 & 0x35) == 0)
    {
      v21 = **(v19 - 2);
      v22 = &__p + 2 * v17;
      *v22 = 1;
      v22[1] = v21;
      ++v17;
    }

    --v18;
    v19 += 32;
    --v20;
  }

  while (v20);
  std::vector<TLexiconMatch>::resize(&v24, 0);
  if (v17)
  {
    if (v17 == 1)
    {
      v10 = __p;
    }

    else
    {
      v10 = callBackSeqAlt(&__p, v17, "A", a3, a5);
    }
  }

  else
  {
    v10 = 1;
  }

  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

  return v10;
}

void sub_1B5619C7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B561A504(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      if (a2 == 1)
      {
        __cxa_begin_catch(a1);
        (*(*v15 + 8))(v15);
        __cxa_rethrow();
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

uint64_t TPatternManager::freeMemory(TPatternManager *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    TParser::~TParser(v2);
    MEMORY[0x1B8C85350]();
  }

  result = *(this + 3);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  v5 = *(this + 19);
  v4 = *(this + 20);
  if (v4 != v5)
  {
    v6 = 0;
    do
    {
      result = *(v5 + 8 * v6);
      if (result)
      {
        result = (*(*result + 8))(result);
        v5 = *(this + 19);
        v4 = *(this + 20);
      }

      ++v6;
    }

    while (v6 < (v4 - v5) >> 3);
  }

  v8 = *(this + 16);
  v7 = *(this + 17);
  if (v7 != v8)
  {
    v9 = 0;
    do
    {
      result = *(v8 + 8 * v9);
      if (result)
      {
        result = (*(*result + 8))(result);
        v8 = *(this + 16);
        v7 = *(this + 17);
      }

      ++v9;
    }

    while (v9 < (v7 - v8) >> 3);
  }

  v11 = *(this + 13);
  v10 = *(this + 14);
  if (v10 != v11)
  {
    v12 = 0;
    do
    {
      result = *(v11 + 8 * v12);
      if (result)
      {
        result = (*(*result + 8))(result);
        v11 = *(this + 13);
        v10 = *(this + 14);
      }

      ++v12;
    }

    while (v12 < (v10 - v11) >> 3);
  }

  v14 = *(this + 10);
  v13 = *(this + 11);
  if (v13 != v14)
  {
    v15 = 0;
    do
    {
      result = *(v14 + 8 * v15);
      if (result)
      {
        result = (*(*result + 8))(result);
        v14 = *(this + 10);
        v13 = *(this + 11);
      }

      ++v15;
    }

    while (v15 < (v13 - v14) >> 3);
  }

  return result;
}

void TPatternManager::~TPatternManager(TPatternManager *this)
{
  TPatternManager::freeMemory(this);
  v2 = *(this + 19);
  if (v2)
  {
    *(this + 20) = v2;
    operator delete(v2);
  }

  v3 = *(this + 16);
  if (v3)
  {
    *(this + 17) = v3;
    operator delete(v3);
  }

  v4 = *(this + 13);
  if (v4)
  {
    *(this + 14) = v4;
    operator delete(v4);
  }

  v5 = *(this + 10);
  if (v5)
  {
    *(this + 11) = v5;
    operator delete(v5);
  }

  TAllocator::clear((this + 40));
}

uint64_t callBackObject(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, TAllocator *a5)
{
  if (a2 <= 1 && *a1 > 1uLL)
  {
    return 0;
  }

  v8 = *(a1 + 8);
  v9 = *v8;
  if (*v8)
  {
    for (i = v8 + 1; ; ++i)
    {
      {
        operator new();
      }

      if (v9 < 48 || v9 >= 0x3A && (v9 < 0x660 || TLocaleInfo::getDigitExtended(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v9) == -1))
      {
        break;
      }

      v11 = *i;
      v9 = v11;
      if (!v11)
      {
        v14 = *(a1 + 8);
        if ((*(*a3 + 16))(a3, v14))
        {
          v16 = wcslen(v14);
          v17 = v16 + 54;
          if ((v16 + 54) >> 62)
          {
            v18 = -1;
          }

          else
          {
            v18 = 4 * (v16 + 54);
          }

          __p = TAllocator::allocate(a5, v18);
          v22 = v17;
          v25 = 0;
          v23 = 0;
          TBuffer<wchar_t>::insert(&__p, 0, "P", 0x17uLL);
          {
            operator new();
          }

          TLocaleInfo::valueToString(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, a3, &__p, 1);
          TBuffer<wchar_t>::insert(&__p, v23, "", 0xBuLL);
          v19 = 0;
            ;
          }

          TBuffer<wchar_t>::insert(&__p, v23, v14, v19 - 1);
          TBuffer<wchar_t>::insert(&__p, v23, "", 3uLL);
          if (v23 >= v22)
          {
            if (v25)
            {
              v26 = 0;
              TBuffer<wchar_t>::insert(&__p, v23--, &v26, 1uLL);
            }

            else if (v22)
            {
              *(__p + v22 - 1) = 0;
            }
          }

          else
          {
            *(__p + v23) = 0;
          }

          if (v25 == 1 && __p != &v24)
          {
            if (__p)
            {
              MEMORY[0x1B8C85310]();
            }
          }
        }

        return 1;
      }
    }

    loggableUnicode(*(a1 + 8), &__p);
    if (v23 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    tknPrintf("Error: ${Counting, Array, Roman}...() : the argument (%s) must be a number\n", p_p);
    if (SHIBYTE(v23) < 0)
    {
      operator delete(__p);
    }

    return 0;
  }

  return 1;
}

void sub_1B561B47C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *__p, uint64_t a11, uint64_t a12, uint64_t a13)
{
  MEMORY[0x1B8C85350](v13, 0x1070C40ADD13FEBLL);
  if (LOBYTE(STACK[0x420]) == 1 && __p != &a13 && __p != 0)
  {
    MEMORY[0x1B8C85310]();
  }

  _Unwind_Resume(a1);
}

TAllocator *TPatternManager::clear(TPatternManager *this)
{
  v2 = *(this + 4);
  v4 = *(v2 + 48);
  result = (v2 + 48);
  if (v4 >= 0x801)
  {
    result = TAllocator::clear(result);
  }

  *(this + 22) = 0;
  return result;
}

uint64_t TPatternManager::addWords(TPatternManager *this, TVertex *a2, TGraph *a3, TSegmenter *a4, uint64_t a5)
{
  *this = a5;
  v9 = *(a2 + 2);
  result = TSegmenter::getSegment(a4, v9);
  if (!result)
  {
    return result;
  }

  v11 = result;
  if (*(result + 24) == 5)
  {
    return result;
  }

  v12 = **result;
  {
    if (result)
    {
      operator new();
    }
  }

  if (v12 > 159)
  {
    v14 = v12 == 12288;
    if (v12 >= 12288)
    {
      v15 = 65279;
    }

    else
    {
      v14 = v12 == 160;
      v15 = 8203;
    }

    if (v14 || v12 == v15)
    {
      return result;
    }
  }

  else if (v12 <= 0x20 && ((1 << v12) & 0x100002600) != 0)
  {
    return result;
  }

  v80 = a3;
  v17 = *(v11 + 8) - v9;
  v84 = v17;
  if (v17 >= 0x32)
  {
    v17 = 50;
  }

  if (v9 >= *(this + 22))
  {
    v18 = 50;
  }

  else
  {
    v18 = v17;
  }

  v19 = *(this + 2);
  v20 = *(*(this + 3) + 56);
  v96[0] = &unk_1F2D20D48;
  v96[1] = v9;
  v96[2] = a4;
  v96[3] = v20;
  v96[4] = v18;
  ActiveConfigHandle = TParam::getActiveConfigHandle((v19 + 21152));
  v22 = *(v19 + 4 * TParam::getValidConfig((v19 + 21152), ActiveConfigHandle) + 21312);
  v23 = *(this + 4);
  v24 = *(v23 + 16);
  *(v23 + 24) = v22;
  (*(v24 + 16))();
  AllProductions = TParser::getAllProductions(*(this + 4), v96);
  TAllocator::TAllocator(v95, 2048);
  if (!AllProductions)
  {
    v56 = 0;
    goto LABEL_103;
  }

  v82 = 0;
  v26 = &v90;
  v27 = AllProductions;
  do
  {
    v28 = **TSegmenter::getPreviousSegment(a4, &v9[v27[2]]);
    {
      operator new();
    }

    if (v28 > 159)
    {
      v30 = v28 == 12288;
      if (v28 >= 12288)
      {
        v31 = 65279;
      }

      else
      {
        v30 = v28 == 160;
        v31 = 8203;
      }

      if (v30 || v28 == v31)
      {
        goto LABEL_43;
      }
    }

    else if (v28 <= 0x20 && ((1 << v28) & 0x100002600) != 0)
    {
      goto LABEL_43;
    }

    if (TGrammarCompiler::getAttributeValue(v27, "s", v95, 0) <= 1)
    {
      if (*v33)
      {
        if (TGrammarCompiler::getAttributeValue(v27, "l", v95, 0) <= 1)
        {
          v35 = v34;
          if (!*v34)
          {
            goto LABEL_91;
          }

          v36 = v26;
          v88 = v26;
          v89 = xmmword_1B5AE2110;
          v94 = 1;
          PreviousSegment = TSegmenter::getPreviousSegment(a4, v9);
          v39 = v38;
          while (PreviousSegment && *(PreviousSegment + 24) != 5)
          {
            if (*(&v89 + 1) > 0x31uLL)
            {
              goto LABEL_59;
            }

            v40 = 0;
            v41 = *PreviousSegment;
              ;
            }

            TBuffer<wchar_t>::insert(&v88, 0, v41, v40 - 1);
            PreviousSegment = TSegmenter::getPreviousSegment(a4, v39);
            v39 = v43;
          }

          if (!*(&v89 + 1))
          {
            TBuffer<wchar_t>::insert(&v88, 0, "\n", 1uLL);
          }

LABEL_59:
          TRegExp::TRegExp(&__p, v35, *(this + 1) + 224);
          v26 = v36;
          if (*(&v89 + 1) >= v89)
          {
            if (v94)
            {
              v97[0] = 0;
              TBuffer<wchar_t>::insert(&v88, *(&v89 + 1), v97, 1uLL);
              v44 = v88;
              --*(&v89 + 1);
            }

            else
            {
              v44 = v88;
              if (v89)
              {
                v88[v89 - 1] = 0;
              }
            }
          }

          else
          {
            v44 = v88;
            v88[*(&v89 + 1)] = 0;
          }

          v45 = TRegExp::match(&__p, v44, 1);
          TRegExp::~TRegExp(&__p);
          if (v94 == 1 && v88 != v36 && v88)
          {
            MEMORY[0x1B8C85310](v88);
          }

          if (v45)
          {
LABEL_91:
            if (TGrammarCompiler::getAttributeValue(v27, "r", v95, 0) <= 1)
            {
              v47 = v46;
              if (!*v46)
              {
                goto LABEL_92;
              }

              v48 = v26;
              v88 = v26;
              v89 = xmmword_1B5AE2110;
              v94 = 1;
              for (i = TSegmenter::getSegment(a4, &v9[v27[2]]); i && *(i + 24) != 5; i = TSegmenter::getSegment(a4, *(i + 8)))
              {
                if (*(&v89 + 1) > 0x31uLL)
                {
                  goto LABEL_81;
                }

                v50 = 0;
                v51 = *i;
                  ;
                }

                TBuffer<wchar_t>::insert(&v88, *(&v89 + 1), v51, v50 - 1);
              }

              if (!*(&v89 + 1))
              {
                TBuffer<wchar_t>::insert(&v88, 0, "\n", 1uLL);
              }

LABEL_81:
              TRegExp::TRegExp(&__p, v47, *(this + 1) + 224);
              v26 = v48;
              if (*(&v89 + 1) >= v89)
              {
                if (v94)
                {
                  v97[0] = 0;
                  TBuffer<wchar_t>::insert(&v88, *(&v89 + 1), v97, 1uLL);
                  v53 = v88;
                  --*(&v89 + 1);
                }

                else
                {
                  v53 = v88;
                  if (v89)
                  {
                    v88[v89 - 1] = 0;
                  }
                }
              }

              else
              {
                v53 = v88;
                v88[*(&v89 + 1)] = 0;
              }

              v54 = TRegExp::match(&__p, v53, 2);
              TRegExp::~TRegExp(&__p);
              if (v94 == 1 && v88 != v48 && v88)
              {
                MEMORY[0x1B8C85310](v88);
              }

              if (v54)
              {
LABEL_92:
                v55 = v82;
                if (v27[2] > v82)
                {
                  v55 = v27[2];
                }

                v82 = v55;
              }
            }
          }
        }
      }

      else
      {
        tknPrintString("Error: Top production 'spoken' attribute is an empty string\n");
      }
    }

LABEL_43:
    v27 = *v27;
  }

  while (v27);
  v56 = v82;
  if (v82)
  {
    if (&v9[v82] <= *(this + 22))
    {
      v56 = v84;
    }

    else
    {
      *(this + 22) = &v9[v82];
    }
  }

  else
  {
    AllProductions = 0;
  }

LABEL_103:
  v57 = *(this + 2);
  v58 = TParam::getActiveConfigHandle((v57 + 21504));
  ValidConfig = TParam::getValidConfig((v57 + 21504), v58);
  v60 = MEMORY[0x1E69E54E8];
  if (*(v57 + ValidConfig + 21656) == 1)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&v88);
    TParser::logChart(*(this + 4), &v88);
    std::stringbuf::str();
    if (v87 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    tknPrintString(p_p);
    if (v87 < 0)
    {
      operator delete(__p);
    }

    v88 = *v60;
    *(&v88 + *(v88 - 3)) = v60[3];
    *&v89 = MEMORY[0x1E69E5548] + 16;
    if (v92 < 0)
    {
      operator delete(v91);
    }

    *&v89 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(&v89 + 1);
    std::ostream::~ostream();
    MEMORY[0x1B8C85200](v93);
  }

  if (AllProductions)
  {
    v62 = v56;
    v83 = *v60;
    v81 = v60[3];
    do
    {
      v63 = AllProductions[2];
      if (v63 == v62 || v63 == v84)
      {
        v65 = *(this + 2);
        v66 = TParam::getActiveConfigHandle((v65 + 21752));
        if (*(v65 + TParam::getValidConfig((v65 + 21752), v66) + 21904) == 1)
        {
          std::ostringstream::basic_ostringstream[abi:ne200100](&v88);
          TParser::logTree(*(this + 4), AllProductions, &v88);
          std::stringbuf::str();
          if (v87 >= 0)
          {
            v67 = &__p;
          }

          else
          {
            v67 = __p;
          }

          tknPrintString(v67);
          if (v87 < 0)
          {
            operator delete(__p);
          }

          v88 = v83;
          *(&v88 + *(v83 - 24)) = v81;
          *&v89 = MEMORY[0x1E69E5548] + 16;
          if (v92 < 0)
          {
            operator delete(v91);
          }

          *&v89 = MEMORY[0x1E69E5538] + 16;
          std::locale::~locale(&v89 + 1);
          std::ostream::~ostream();
          MEMORY[0x1B8C85200](v93);
        }

        __p = TGrammarCompiler::getAttributeValue(AllProductions, "s", v95, 0);
        v86 = v68;
        if (__p <= 1)
        {
          if (*v68)
          {
            v69 = callBackSeqAlt(&__p, 1, "S", *(this + 1), v95);
            v71 = v70;
            __p = v69;
            v86 = v70;
            if (v69 <= 1 && v70 && TGrammarCompiler::getAttributeValue(AllProductions, "n", v95, 0) <= 1)
            {
              v73 = v72;
              v74 = v60;
              v75 = TGraph::addVertex(v80, &v9[AllProductions[2]]);
              v76 = TLexicon::addTempWord(*(this + 1), v73, "p", 0, v71);
              LODWORD(v88) = 5;
              v89 = v76;
              v90 = 0;
              TGraph::addEdge(v80, a2, v75, &v88);
              v60 = v74;
            }
          }
        }
      }

      AllProductions = *AllProductions;
    }

    while (AllProductions);
  }

  v77 = *(this + 4);
  v79 = *(v77 + 48);
  v78 = (v77 + 48);
  if (v79 >= 0x801)
  {
    TAllocator::clear(v78);
  }

  return TAllocator::clear(v95);
}

void sub_1B561BFEC(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v1, 0x1070C40ADD13FEBLL);
  _Unwind_Resume(a1);
}

uint64_t addToken(__int32 **a1, TVertex *a2, TVertex *a3, TGraph *a4, TLexicon *a5)
{
  HeadClone = TLexicon::findHeadClone(a5, a1[3]);
  if (HeadClone)
  {
    v11 = 1;
  }

  else
  {
    HeadClone = TLexicon::addTempWord(a5, a1[3], 0, 0, 0);
    v11 = 4;
  }

  v13 = v11;
  v14 = HeadClone;
  v15 = 0;
  v16 = 0;
  return TGraph::addEdge(a4, a2, a3, &v13);
}

const char *addAlt(const TFileObject *a1, TVertex *a2, TVertex *a3, TGraph *a4, TLexicon *a5, const char *a6, const char *a7, const char *a8)
{
  v9 = *(a1 + 3);
  if (v9)
  {
    v15 = a7;
    while (1)
    {
      v16 = *(v9 + 8);
      if (!wcscmp(v16, "T"))
      {
        addToken(v9, a2, a3, a4, a5);
      }

      else
      {
        if (!wcscmp(v16, "A"))
        {
          v17 = addAlt(v9, a2, a3, a4, a5, a6, a7, a8);
LABEL_10:
          if (v17 > a7)
          {
            v15 = v17;
          }

          goto LABEL_14;
        }

        if (!wcscmp(v16, "P"))
        {
          addPattern(v9, a2, a3, a4, a5);
        }

        else if (!wcscmp(v16, "S"))
        {
          v17 = addSequence(v9, a2, a3, a4, a5, a6, a7, a8);
          goto LABEL_10;
        }
      }

LABEL_14:
      v9 = *(v9 + 16);
      if (!v9)
      {
        return v15;
      }
    }
  }

  return a7;
}

uint64_t addPattern(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = 0;
  v8 = 0;
  v9 = *(a1 + 24);
  do
  {
    v10 = v9[1];
    if (!wcscmp(v10, "A"))
    {
      v15 = 0;
      v11 = v9[3];
      {
        operator new();
      }

      v7 = TLocaleInfo::stringToULong(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v11, &v15, 1);
    }

    else if (!wcscmp(v10, "V"))
    {
      v8 = v9[3];
    }

    v9 = v9[2];
  }

  while (v9);
  return (*(*v7 + 24))(v7, v8, a2, a3, a4, a5);
}

void sub_1B561C4A4(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v1, 0x1070C40ADD13FEBLL);
  _Unwind_Resume(a1);
}

void TPatternManager::expandWord(uint64_t a1, TGraph *a2, uint64_t a3, int a4)
{
  v8 = *(a3 + 16);
  v7 = *(a3 + 24);
  if (a4)
  {
    v27 = v29;
    v28 = xmmword_1B5AE2110;
    v30 = 1;
    TWord::getWrittenForm(*(a3 + 56), &v27);
    v22 = v25;
    v23 = 256;
    v26 = 1;
    v24 = 0;
    TBuffer<wchar_t>::insert(&v22, 0, "d", 0xCuLL);
    TBuffer<wchar_t>::operator+=(&v22, &v27);
    v9 = *(a1 + 8);
    if (v24 >= v23)
    {
      if (v26)
      {
        v18 = 0;
        TBuffer<wchar_t>::insert(&v22, v24, &v18, 1uLL);
        v10 = v22;
        --v24;
      }

      else
      {
        v10 = v22;
        if (v23)
        {
          v22[v23 - 1] = 0;
        }
      }
    }

    else
    {
      v10 = v22;
      v22[v24] = 0;
    }

    v13 = TLexicon::addTempWord(v9, 0, v10, 0, 0);
    v12 = TGraph::addVertex(a2, 0);
    v18 = 6;
    v19 = v13;
    v20 = 0;
    v21 = 0;
    TGraph::addEdge(a2, v8, v12, &v18);
    v24 = 0;
    TBuffer<wchar_t>::insert(&v22, 0, "d", 0xAuLL);
    TBuffer<wchar_t>::operator+=(&v22, &v27);
    v14 = *(a1 + 8);
    if (v24 >= v23)
    {
      if (v26)
      {
        v18 = 0;
        TBuffer<wchar_t>::insert(&v22, v24, &v18, 1uLL);
        v15 = v22;
        --v24;
      }

      else
      {
        v15 = v22;
        if (v23)
        {
          v22[v23 - 1] = 0;
        }
      }
    }

    else
    {
      v15 = v22;
      v22[v24] = 0;
    }

    v16 = TLexicon::addTempWord(v14, 0, v15, 0, 0);
    v11 = TGraph::addVertex(a2, 0);
    v18 = 6;
    v19 = v16;
    v20 = 0;
    v21 = 0;
    TGraph::addEdge(a2, v11, v7, &v18);
    if (v26 == 1 && v22 != v25 && v22)
    {
      MEMORY[0x1B8C85310]();
    }

    if (v30 == 1 && v27 != v29 && v27)
    {
      MEMORY[0x1B8C85310]();
    }
  }

  else
  {
    v11 = *(a3 + 24);
    v12 = *(a3 + 16);
  }

  v17 = wcslen(**(a3 + 56));
  TFileObjectParser::TFileObjectParser(&v27, **(a3 + 56) + 4 * v17 + 4, 1, *(a1 + 8) + 224);
  addSequence(v27[3], v12, v11, a2, *(a1 + 8), *(v12 + 2), *(v12 + 2), v11[3]);
  TFileObjectParser::~TFileObjectParser(&v27);
  TGraph::deleteEdge(a2, a3);
}

void sub_1B561C7EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (LOBYTE(STACK[0x438]) == 1 && a13 != v14 && a13)
  {
    MEMORY[0x1B8C85310]();
  }

  if (LOBYTE(STACK[0x858]) == 1)
  {
    v16 = STACK[0x440];
    if (STACK[0x440] != v13)
    {
      if (v16)
      {
        MEMORY[0x1B8C85310](v16, 0x1000C8052888210);
      }
    }
  }

  _Unwind_Resume(a1);
}

void TDigitObject::~TDigitObject(TDigitObject *this)
{
  TDigitObject::~TDigitObject(this);

  JUMPOUT(0x1B8C85350);
}

{
  *this = &unk_1F2D20CB8;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  *this = &unk_1F2D20E08;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void TRomanObject::~TRomanObject(TRomanObject *this)
{
  TRomanObject::~TRomanObject(this);

  JUMPOUT(0x1B8C85350);
}

{
  *this = &unk_1F2D20CE8;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  *this = &unk_1F2D20E08;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

uint64_t TRomanObject::isBuildable(uint64_t a1, signed int *a2)
{
  v5 = 0;
  {
    operator new();
  }

  v3 = TLocaleInfo::stringToUInt(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, a2, &v5);
  return (v3 < 0xBB8) & ~v5;
}

void sub_1B561C9D0(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v1, 0x1070C40ADD13FEBLL);
  _Unwind_Resume(a1);
}

void TCountingObject::~TCountingObject(void **this)
{
  *this = &unk_1F2D20E08;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F2D20E08;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1B8C85350);
}

BOOL TCountingObject::isBuildable(uint64_t a1, __int32 *a2)
{
  do
  {
    v4 = a2;
    v5 = a2[1];
    ++a2;
    if (!v5)
    {
      break;
    }

    v6 = *v4;
    {
      operator new();
    }

    DigitExtended = v6 - 48;
    if (v6 < 48)
    {
      break;
    }

    if (v6 > 0x39)
    {
      if (v6 < 0x660)
      {
        return wcslen(v4) <= *(a1 + 88);
      }

      DigitExtended = TLocaleInfo::getDigitExtended(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v6);
    }
  }

  while (!DigitExtended);
  return wcslen(v4) <= *(a1 + 88);
}

void sub_1B561CBA8(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v1, 0x1070C40ADD13FEBLL);
  _Unwind_Resume(a1);
}

void TArrayObject::~TArrayObject(TArrayObject *this)
{
  TArrayObject::~TArrayObject(this);

  JUMPOUT(0x1B8C85350);
}

{
  *this = &unk_1F2D20C88;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  *this = &unk_1F2D20E08;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

BOOL TArrayObject::isBuildable(uint64_t a1, __int32 *a2)
{
  do
  {
    v4 = a2;
    v5 = a2[1];
    ++a2;
    if (!v5)
    {
      break;
    }

    v6 = *v4;
    {
      operator new();
    }

    DigitExtended = v6 - 48;
    if (v6 < 48)
    {
      break;
    }

    if (v6 > 0x39)
    {
      if (v6 < 0x660)
      {
        break;
      }

      DigitExtended = TLocaleInfo::getDigitExtended(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v6);
    }
  }

  while (!DigitExtended);
  if (wcslen(v4) > 5)
  {
    return 0;
  }

  v11 = 0;
  {
    operator new();
  }

  v8 = TLocaleInfo::stringToUInt(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v4, &v11);
  if (v11)
  {
    return 0;
  }

  v9 = *(a1 + 32);
  return v8 < ((*(a1 + 40) - v9) >> 3) && *(v9 + 8 * v8) != 0;
}

void sub_1B561CDA4(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v1, 0x1070C40ADD13FEBLL);
  _Unwind_Resume(a1);
}

const char *TArrayObject::build(uint64_t a1, signed int *a2, TVertex *a3, TVertex *a4, TGraph *a5, TLexicon *a6)
{
  v14 = 0;
  {
    operator new();
  }

  v12 = TLocaleInfo::stringToUInt(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, a2, &v14);
  return addSequence(*(*(a1 + 32) + 8 * v12), a3, a4, a5, a6, 0, 0, 0);
}

void sub_1B561CEE4(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v1, 0x1070C40ADD13FEBLL);
  _Unwind_Resume(a1);
}

size_t callBackSeqAltHelper(uint64_t a1, uint64_t a2, __int32 *a3, uint64_t a4, __int32 *a5)
{
  v5 = a5;
  if (a5)
  {
    wcscpy(a5, a3);
    v8 = &v5[wcslen(v5)];
    strcpy(v8, " ");
    v5 = &v8[4 * wcslen(v8)];
  }

  if (a2)
  {
    v9 = 0;
    v10 = 0;
    v11 = a2;
    v12 = 1;
    while (1)
    {
      v13 = (a1 + 16 * v9);
      if (*v13 > 1uLL)
      {
        break;
      }

      v14 = v13[1];
      if (*v14)
      {
        v15 = wcsncmp(v14, "S", 8uLL);
        v16 = v15 == 0;
        if (v15)
        {
LABEL_8:
          if (!wcsncmp(v14, "S", 6uLL) || !wcsncmp(v14, "A", 6uLL) || !wcsncmp(v14, "P", 0xAuLL) || !wcsncmp(v14, "S", 7uLL))
          {
            v19 = wcslen(v14);
            if (v5)
            {
              wcscpy(v5, v14);
              v5 += wcslen(v5);
            }
          }

          else
          {
            if (TLexicon::checkName(a4, v14, 0, 0xFFFFFFFFFFFFFFFFLL))
            {
              loggableUnicode(v14, &__p);
              if (v35 >= 0)
              {
                p_p = &__p;
              }

              else
              {
                p_p = __p;
              }

              tknPrintf("Warning: '%s' : The tokenizer grammar constructed an invalid word name.\n", p_p);
              if (SHIBYTE(v35) < 0)
              {
                operator delete(__p);
              }

              return 0;
            }

            __p = v36;
            v35 = xmmword_1B5AE2110;
            v37 = 1;
            slashEscape(v14, &__p);
            v17 = *(&v35 + 1);
            if (v5)
            {
              v29 = v5;
              v30 = *(&v35 + 1) + 11;
              v33 = 0;
              v31 = 0;
              TBuffer<wchar_t>::insert(&v29, 0, "T", 9uLL);
              if (*(&v35 + 1) >= v35)
              {
                if (v37)
                {
                  v38[0] = 0;
                  TBuffer<wchar_t>::insert(&__p, *(&v35 + 1), v38, 1uLL);
                  v18 = __p;
                  --*(&v35 + 1);
                }

                else
                {
                  v18 = __p;
                  if (v35)
                  {
                    *(__p + v35 - 1) = 0;
                  }
                }
              }

              else
              {
                v18 = __p;
                *(__p + *(&v35 + 1)) = 0;
              }

              v22 = 0;
                ;
              }

              TBuffer<wchar_t>::insert(&v29, v31, v18, v22 - 1);
              v38[0] = 34;
              TBuffer<wchar_t>::insert(&v29, v31, v38, 1uLL);
              if (v31 >= v30)
              {
                if (v33)
                {
                  v38[0] = 0;
                  TBuffer<wchar_t>::insert(&v29, v31--, v38, 1uLL);
                }

                else if (v30)
                {
                  v29[v30 - 1] = 0;
                }
              }

              else
              {
                v29[v31] = 0;
              }

              v24 = wcslen(v5);
              if (v33 == 1 && v29 != &v32 && v29)
              {
                MEMORY[0x1B8C85310]();
              }

              v5 += v24;
            }

            if (v37 == 1 && __p != v36 && __p)
            {
              MEMORY[0x1B8C85310]();
            }

            v19 = v17 + 10;
          }

          v10 += v19;
          v12 = v16;
        }

        else if (v10)
        {
          v20 = wcscmp(a3, "A");
          if (!((v20 != 0) | v12 & 1))
          {
            v21 = v11;
            while (--v21)
            {
              if (wcsncmp(v14, "S", 8uLL))
              {
                goto LABEL_8;
              }
            }

            goto LABEL_51;
          }

          v12 |= v20 == 0;
        }
      }

      ++v9;
      --v11;
      if (v9 == a2)
      {
        goto LABEL_51;
      }
    }
  }

  else
  {
    v10 = 0;
LABEL_51:
    if (v5)
    {
      strcpy(v5, "}");
    }

    if (v10)
    {
      return v10 + wcslen(a3) + 6;
    }
  }

  return 0;
}

void sub_1B561D36C(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x477]) < 0)
  {
    operator delete(STACK[0x460]);
  }

  _Unwind_Resume(a1);
}

void std::vector<void const*>::__append(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 3)
  {
    if (a2)
    {
      v12 = 0;
      v13 = v6 + 8 * a2;
      v14 = *a3;
      v15 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v16 = vdupq_n_s64(v15);
      v17 = (v6 + 8);
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_1B5AE0060)));
        if (v18.i8[0])
        {
          *(v17 - 1) = v14;
        }

        if (v18.i8[4])
        {
          *v17 = v14;
        }

        v12 += 2;
        v17 += 2;
      }

      while (v15 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v12);
    }

    else
    {
      v13 = *(a1 + 8);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    v7 = v6 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 3;
    v10 = v5 - *a1;
    if (v10 >> 2 > v8)
    {
      v8 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(a1, v11);
    }

    v19 = 0;
    v20 = 8 * v9;
    v21 = 8 * v9 + 8 * a2;
    v22 = *a3;
    v23 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v24 = v23 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2;
    v25 = vdupq_n_s64(v23);
    v26 = (v20 + 8);
    do
    {
      v27 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(vdupq_n_s64(v19), xmmword_1B5AE0060)));
      if (v27.i8[0])
      {
        *(v26 - 1) = v22;
      }

      if (v27.i8[4])
      {
        *v26 = v22;
      }

      v19 += 2;
      v26 += 2;
    }

    while (v24 != v19);
    v28 = *(a1 + 8) - *a1;
    v29 = v20 - v28;
    memcpy((v20 - v28), *a1, v28);
    v30 = *a1;
    *a1 = v29;
    *(a1 + 8) = v21;
    *(a1 + 16) = 0;
    if (v30)
    {

      operator delete(v30);
    }
  }
}

double std::__fs::filesystem::path::stem[abi:ne200100]@<D0>(const std::__fs::filesystem::path *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = std::__fs::filesystem::path::__stem(a1);
  if (v3.__size_ >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v3.__size_ >= 0x17)
  {
    operator new();
  }

  HIBYTE(v6) = v3.__size_;
  if (v3.__size_)
  {
    memmove(&__dst, v3.__data_, v3.__size_);
  }

  *(&__dst + v3.__size_) = 0;
  result = *&__dst;
  *a2 = __dst;
  *(a2 + 16) = v6;
  return result;
}

void quasar::filesystem::Path::filename(quasar::filesystem::Path *this@<X0>, void *a2@<X8>)
{
  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v4, (this + 8));
  std::__fs::filesystem::path::filename[abi:ne200100](&v4, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v6, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v6 = __p;
  }

  *a2 = &unk_1F2CFAA28;
  v3 = (a2 + 1);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v3, v6.__r_.__value_.__l.__data_, v6.__r_.__value_.__l.__size_);
    if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v6.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *v3 = v6;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}

void sub_1B561D8D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

double std::__fs::filesystem::path::filename[abi:ne200100]@<D0>(const std::__fs::filesystem::path *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = std::__fs::filesystem::path::__filename(a1);
  if (v3.__size_ >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v3.__size_ >= 0x17)
  {
    operator new();
  }

  HIBYTE(v6) = v3.__size_;
  if (v3.__size_)
  {
    memmove(&__dst, v3.__data_, v3.__size_);
  }

  *(&__dst + v3.__size_) = 0;
  result = *&__dst;
  *a2 = __dst;
  *(a2 + 16) = v6;
  return result;
}

void quasar::filesystem::Path::operator/(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v8, (a1 + 8));
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v6, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v6 = *(a2 + 8);
  }

  __p.__pn_ = v6;
  memset(&v6, 0, sizeof(v6));
  std::__fs::filesystem::operator/[abi:ne200100](&__p, &v8, &v9);
  if (SHIBYTE(v9.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&pn, v9.__pn_.__r_.__value_.__l.__data_, v9.__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    pn = v9.__pn_;
  }

  *a3 = &unk_1F2CFAA28;
  v5 = (a3 + 1);
  if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v5, pn.__r_.__value_.__l.__data_, pn.__r_.__value_.__l.__size_);
    if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(pn.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *v5 = pn;
  }

  if (SHIBYTE(v9.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }
}

void sub_1B561DB34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 - 25) < 0)
  {
    operator delete(*(v28 - 48));
  }

  if (*(v28 - 49) < 0)
  {
    operator delete(*(v28 - 72));
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void quasar::filesystem::Path::operator/(uint64_t a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  quasar::filesystem::Path::Path(v5, a2);
  quasar::filesystem::Path::operator/(a1, v5, a3);
  v5[0] = &unk_1F2CFAA28;
  if (v6 < 0)
  {
    operator delete(v5[1]);
  }
}

void sub_1B561DC24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *quasar::filesystem::CreateTemporaryDirectory@<X0>(uint64_t a1@<X8>)
{
  std::__fs::filesystem::__temp_directory_path(&v6, 0);
  std::__fs::filesystem::path::path[abi:ne200100]<char [14],void>(&__p, "tmpdir.XXXXXX");
  std::__fs::filesystem::operator/[abi:ne200100](&__p, &v6, &v7);
  if (SHIBYTE(v7.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(a1, v7.__pn_.__r_.__value_.__l.__data_, v7.__pn_.__r_.__value_.__l.__size_);
    if (SHIBYTE(v7.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v7.__pn_.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *a1 = v7;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__pn_.__r_.__value_.__l.__data_);
  }

  if (*(a1 + 23) >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  return mkdtemp(v3);
}

void sub_1B561DD20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

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

quasar::filesystem::TemporaryDirectoryPath *quasar::filesystem::TemporaryDirectoryPath::TemporaryDirectoryPath(quasar::filesystem::TemporaryDirectoryPath *this)
{
  quasar::filesystem::CreateTemporaryDirectory(__p);
  *this = &unk_1F2CFAA28;
  v2 = (this + 8);
  if (SHIBYTE(v5) < 0)
  {
    std::string::__init_copy_ctor_external(v2, __p[0], __p[1]);
    if (SHIBYTE(v5) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *&v2->__r_.__value_.__l.__data_ = *__p;
    *(this + 3) = v5;
  }

  *this = &unk_1F2D20E38;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  return this;
}

void sub_1B561DE2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::filesystem::TemporaryDirectoryPath::~TemporaryDirectoryPath(quasar::filesystem::TemporaryDirectoryPath *this)
{
  *this = &unk_1F2D20E38;
  v2 = *(this + 4);
  v3 = *(this + 5);
  while (v2 != v3)
  {
    close(*v2++);
  }

  if (*(this + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(this + 1), *(this + 2));
  }

  else
  {
    __p = *(this + 8);
  }

  quasar::filesystem::remove_all(&__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v4 = *(this + 4);
  if (v4)
  {
    *(this + 5) = v4;
    operator delete(v4);
  }

  *this = &unk_1F2CFAA28;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  quasar::filesystem::TemporaryDirectoryPath::~TemporaryDirectoryPath(this);

  JUMPOUT(0x1B8C85350);
}

uintmax_t quasar::filesystem::remove_all(std::string *a1)
{
  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v3.__pn_, a1);
  v1 = std::__fs::filesystem::__remove_all(&v3, 0);
  if (SHIBYTE(v3.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__pn_.__r_.__value_.__l.__data_);
  }

  return v1;
}

void sub_1B561DF94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL quasar::filesystem::is_directory(std::string *a1)
{
  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&__p, a1);
  std::__fs::filesystem::__status(&__p, 0);
  v1 = v4;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v1 == 2;
}

void sub_1B561E04C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL quasar::filesystem::remove(std::string *a1)
{
  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v3.__pn_, a1);
  v1 = std::__fs::filesystem::__remove(&v3, 0);
  if (SHIBYTE(v3.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__pn_.__r_.__value_.__l.__data_);
  }

  return v1;
}

void sub_1B561E0C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL quasar::filesystem::create_directories(std::string *a1)
{
  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v3.__pn_, a1);
  v1 = std::__fs::filesystem::__create_directories(&v3, 0);
  if (SHIBYTE(v3.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__pn_.__r_.__value_.__l.__data_);
  }

  return v1;
}

void sub_1B561E134(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::filesystem::rename(std::string *a1, std::string *a2)
{
  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&__from.__pn_, a1);
  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&__p, a2);
  std::__fs::filesystem::__rename(&__from, &__p, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__from.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__from.__pn_.__r_.__value_.__l.__data_);
  }
}

void sub_1B561E1C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::filesystem::last_write_time(std::string *a1)
{
  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v2.__pn_, a1);
  std::__fs::filesystem::__last_write_time(&v2, 0);
  if (SHIBYTE(v2.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v2.__pn_.__r_.__value_.__l.__data_);
  }

  return __divti3();
}

void sub_1B561E26C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *quasar::filesystem::operator<<(void *a1, uint64_t a2)
{
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    __p = *(a2 + 8);
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v5;
}

void sub_1B561E318(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::filesystem::writeFileAlmostDurable(void *a1, uint64_t a2, int a3, int a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 8);
  }

  if (!v4)
  {
    if (quasar::gLogLevel >= 5)
    {
      memset(&v32, 0, 272);
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v32);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, "Bad path", 8);
      goto LABEL_51;
    }

    return -1;
  }

  if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
  {
    if (quasar::gLogLevel >= 5)
    {
      memset(&v32, 0, 272);
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v32);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, "Bad stream", 10);
LABEL_51:
      quasar::QuasarDebugMessage::~QuasarDebugMessage(&v32);
      return -1;
    }

    return -1;
  }

  if (v5 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (a4 != -1)
  {
    v10 = open_dprotected_np(v9, a3, a4, 0, 438);
    v11 = *__error();
    if (v10 != -1 || v11 != 45)
    {
      *__error() = v11;
      if (v10 < 0)
      {
        goto LABEL_49;
      }

      goto LABEL_21;
    }

    if (!statfs(v9, &v32) && (v32.f_flags & 0x80) != 0)
    {
      *__error() = 45;
      goto LABEL_49;
    }

    *__error() = 45;
  }

  v10 = open(v9, a3, 438);
  if (v10 < 0)
  {
LABEL_49:
    if (quasar::gLogLevel >= 5)
    {
      memset(&v32, 0, 272);
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v32);
      v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, "openProtected() failed: ", 24);
      v27 = __error();
      v28 = strerror(*v27);
      v29 = strlen(v28);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, v28, v29);
      goto LABEL_51;
    }

    return -1;
  }

LABEL_21:
  LOBYTE(v32.f_bsize) = 0;
  std::vector<char>::vector[abi:ne200100](__p, 1024);
  if ((*(a1 + *(*a1 - 24) + 32) & 2) != 0)
  {
    v12 = 0;
  }

  else
  {
    v12 = 0;
    do
    {
      std::istream::read();
      v13 = a1[1];
      if (v13)
      {
        v14 = 0;
        v15 = __p[0];
        do
        {
          while (1)
          {
            v16 = write(v10, &v15[v14], v13 - v14);
            if (v16 < 0)
            {
              break;
            }

            v14 += v16;
            if (v14 >= v13)
            {
              goto LABEL_32;
            }
          }
        }

        while (*__error() == 4 || *__error() == 35);
        v14 = -1;
      }

      else
      {
        v14 = 0;
      }

LABEL_32:
      v12 += v14;
    }

    while ((*(a1 + *(*a1 - 24) + 32) & 2) == 0);
  }

  if (fsync(v10))
  {
    if (quasar::gLogLevel >= 5)
    {
      memset(&v32, 0, 272);
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v32);
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, "fsync() failed: ", 16);
      v18 = __error();
      v19 = strerror(*v18);
      v20 = strlen(v19);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v19, v20);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(&v32);
    }

    close(v10);
LABEL_39:
    if (*(a2 + 23) >= 0)
    {
      v21 = a2;
    }

    else
    {
      v21 = *a2;
    }

    unlink(v21);
    v12 = -1;
    goto LABEL_43;
  }

  if (close(v10))
  {
    if (quasar::gLogLevel >= 5)
    {
      memset(&v32, 0, 272);
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v32);
      v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, "close() failed: ", 16);
      v23 = __error();
      v24 = strerror(*v23);
      v25 = strlen(v24);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v24, v25);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(&v32);
    }

    goto LABEL_39;
  }

LABEL_43:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v12;
}

void sub_1B561E81C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::filesystem::writeFileAlmostAtomic(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = *(a3 + 23);
  if (v5 >= 0)
  {
    v6 = *(a3 + 23);
  }

  else
  {
    v6 = *(a3 + 8);
  }

  if (!v6)
  {
    goto LABEL_29;
  }

  v10 = *(a2 + 23);
  v11 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a2 + 8);
  }

  if (v10 == v6)
  {
    v12 = v11 >= 0 ? a2 : *a2;
    v13 = v5 >= 0 ? a3 : *a3;
    if (!memcmp(v12, v13, v6))
    {
LABEL_29:
      if (quasar::gLogLevel >= 5)
      {
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v25 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v25);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v25, "Bad path", 8);
        quasar::QuasarDebugMessage::~QuasarDebugMessage(&v25);
      }

      return -1;
    }
  }

  v15 = quasar::filesystem::writeFileAlmostDurable(a1, a2, 2561, a4);
  if ((v15 & 0x8000000000000000) == 0)
  {
    v16 = *(a2 + 23) >= 0 ? a2 : *a2;
    v17 = *(a3 + 23) >= 0 ? a3 : *a3;
    rename(v16, v17, v14);
    if (v18)
    {
      if (quasar::gLogLevel >= 5)
      {
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v25 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v25);
        v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v25, "rename() failed: ", 17);
        v20 = __error();
        v21 = strerror(*v20);
        v22 = strlen(v21);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v21, v22);
        quasar::QuasarDebugMessage::~QuasarDebugMessage(&v25);
      }

      if (*(a2 + 23) >= 0)
      {
        v23 = a2;
      }

      else
      {
        v23 = *a2;
      }

      unlink(v23);
      return -1;
    }
  }

  return v15;
}

void *std::vector<char>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<quasar::rescoring::FeatureType>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<quasar::rescoring::FeatureType>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1B561EADC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B561F11C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, ...)
{
  va_start(va, a5);
  quasar::QuasarInfoMessage::~QuasarInfoMessage(va);
  *(v5 - 136) = v5 - 168;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100]((v5 - 136));
  if (a5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a5);
  }

  _Unwind_Resume(a1);
}

void quasar::LatticeLmeFtmDecoder::doEagerTasks(uint64_t a1)
{
  v2 = *(a1 + 3416);
  if (v2)
  {
    if (std::__shared_weak_count::lock(v2))
    {
      v3 = *(a1 + 3408);
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  kaldi::quasar::LatticeBiglmFasterTraceBackDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PruneActiveTokensFinal(*(v3 + 2432), *(*(v3 + 2432) + 808), 1);
  _ZNSt3__115allocate_sharedB8ne200100IN3fst9VectorFstINS1_6ArcTplINS1_16LatticeWeightTplIfEEiEENS1_11VectorStateIS6_NS_9allocatorIS6_EEEEEENS8_ISB_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void sub_1B561F370(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::LatticeLmeFtmDecoder::runAsyncTasks(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  quasar::SpeechRecognizerModelLoader::getDecoderChain(*a8, (a1 + 3344), 0, &v46);
  v9 = v46;
  if ((v47 - v46) <= 0x10)
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v29 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v29);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v29, "FTM chain must have at least two elements", 41);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v29);
  }

  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v29 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v29);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v29, "FTM Decoder must be derived from OnlineLatticeBiglmFasterDecoder", 64);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v29);
  }

  v11 = v9[1];
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 3408) = v10;
  v12 = *(a1 + 3416);
  *(a1 + 3416) = v11;
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
    v9 = v46;
  }

  v13 = (v9 + 2);
  if (v47 != (v9 + 2))
  {
    v14 = (a1 + 3424);
    do
    {
      if (((*(**v13 + 80))() & 1) == 0)
      {
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v29 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v29);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v29, "Second pass decoders must support eager", 39);
        quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v29);
      }

      v28 = *v13;
      v15 = *(v13 + 1);
      if (v15)
      {
        atomic_fetch_add_explicit((*(v13 + 1) + 16), 1uLL, memory_order_relaxed);
      }

      v16 = *(a1 + 3432);
      v17 = *(a1 + 3440);
      if (v16 >= v17)
      {
        v19 = *v14;
        v20 = v16 - *v14;
        v21 = (v20 >> 4) + 1;
        if (v21 >> 60)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v22 = v17 - v19;
        if (v22 >> 3 > v21)
        {
          v21 = v22 >> 3;
        }

        if (v22 >= 0x7FFFFFFFFFFFFFF0)
        {
          v23 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v23 = v21;
        }

        *&v31 = a1 + 3424;
        if (v23)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<quasar::FeatureExtractor>>>(a1 + 3424, v23);
        }

        v24 = (16 * (v20 >> 4));
        *v24 = v28;
        v18 = v24 + 1;
        memcpy(0, v19, v20);
        v25 = *(a1 + 3424);
        *(a1 + 3424) = 0;
        *(a1 + 3432) = v18;
        v26 = *(a1 + 3440);
        *(a1 + 3440) = 0;
        *&v30 = v25;
        *(&v30 + 1) = v26;
        *&v29 = v25;
        *(&v29 + 1) = v25;
        std::__split_buffer<std::weak_ptr<quasar::Decoder>>::~__split_buffer(&v29);
      }

      else
      {
        *v16 = v28;
        *(v16 + 1) = v15;
        v18 = v16 + 16;
      }

      *(a1 + 3432) = v18;
      v13 += 16;
    }

    while (v13 != v47);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  *&v29 = &v46;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v29);
  return 0;
}

void sub_1B561F734(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  *(v3 - 96) = v3 - 120;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100]((v3 - 96));
  _Unwind_Resume(a1);
}

void sub_1B561F8B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void quasar::LatticeLmeFtmDecoder::~LatticeLmeFtmDecoder(quasar::LatticeLmeFtmDecoder *this)
{
  *this = &unk_1F2D20E70;
  v5 = (this + 3424);
  std::vector<std::weak_ptr<quasar::Decoder>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v2 = *(this + 427);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(this + 425);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 423);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (*(this + 3367) < 0)
  {
    operator delete(*(this + 418));
  }

  quasar::OnlineLatticeBiglmLmeFasterDecoder::~OnlineLatticeBiglmLmeFasterDecoder(this);
}

{
  *this = &unk_1F2D20E70;
  v5 = (this + 3424);
  std::vector<std::weak_ptr<quasar::Decoder>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v2 = *(this + 427);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(this + 425);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 423);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (*(this + 3367) < 0)
  {
    operator delete(*(this + 418));
  }

  quasar::OnlineLatticeBiglmLmeFasterDecoder::~OnlineLatticeBiglmLmeFasterDecoder(this);
  MEMORY[0x1B8C85350]();
}

void quasar::OnlineLatticeBiglmLmeFasterDecoder::~OnlineLatticeBiglmLmeFasterDecoder(quasar::OnlineLatticeBiglmLmeFasterDecoder *this)
{
  *this = &unk_1F2D35910;
  v2 = *(this + 414);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__tree<int>::destroy(this + 3280, *(this + 411));
  std::__tree<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy(this + 3256, *(this + 408));
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(this + 3216);
  if (*(this + 3215) < 0)
  {
    operator delete(*(this + 399));
  }

  if (*(this + 3191) < 0)
  {
    operator delete(*(this + 396));
  }

  if (*(this + 3167) < 0)
  {
    operator delete(*(this + 393));
  }

  if (*(this + 3143) < 0)
  {
    operator delete(*(this + 390));
  }

  if (*(this + 3119) < 0)
  {
    operator delete(*(this + 387));
  }

  if (*(this + 3095) < 0)
  {
    operator delete(*(this + 384));
  }

  if (*(this + 3071) < 0)
  {
    operator delete(*(this + 381));
  }

  std::__tree<std::string>::destroy(this + 3024, *(this + 379));
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(this + 2984);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 2944);
  v3 = *(this + 367);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(this + 2927) < 0)
  {
    operator delete(*(this + 363));
  }

  quasar::OnlineLatticeBiglmFasterDecoder::~OnlineLatticeBiglmFasterDecoder(this);
}

{
  quasar::OnlineLatticeBiglmLmeFasterDecoder::~OnlineLatticeBiglmLmeFasterDecoder(this);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<quasar::DecoderPassData>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<kaldi::OnlineFeatInputItf> const&,std::shared_ptr<kaldi::OnlineFeatInputItf> const&,std::shared_ptr<kaldi::OnlineFeatureMatrix> const&,std::shared_ptr<kaldi::DecodableInterface> const&,std::shared_ptr<quasar::Decodable> const&,std::shared_ptr<kaldi::SnrTracker> const&,BOOL,BOOL,std::allocator<quasar::DecoderPassData>,0>(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, char *a8, char *a9)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D14DB0;
  std::allocator<quasar::DecoderPassData>::construct[abi:ne200100]<quasar::DecoderPassData,std::shared_ptr<kaldi::OnlineFeatInputItf> const&,std::shared_ptr<kaldi::OnlineFeatInputItf> const&,std::shared_ptr<kaldi::OnlineFeatureMatrix> const&,std::shared_ptr<kaldi::DecodableInterface> const&,std::shared_ptr<quasar::Decodable> const&,std::shared_ptr<kaldi::SnrTracker> const&,BOOL,BOOL>(&v11, (a1 + 3), a2, a3, a4, a5, a6, a7, a8, a9);
  return a1;
}

void std::allocator<quasar::DecoderPassData>::construct[abi:ne200100]<quasar::DecoderPassData,std::shared_ptr<kaldi::OnlineFeatInputItf> const&,std::shared_ptr<kaldi::OnlineFeatInputItf> const&,std::shared_ptr<kaldi::OnlineFeatureMatrix> const&,std::shared_ptr<kaldi::DecodableInterface> const&,std::shared_ptr<quasar::Decodable> const&,std::shared_ptr<kaldi::SnrTracker> const&,BOOL,BOOL>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, char *a9, char *a10)
{
  v11 = a3[1];
  v40 = *a3;
  v41 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = a4[1];
  v38 = *a4;
  v39 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = a5[1];
  v36 = *a5;
  v37 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = a6[1];
  v34 = *a6;
  v35 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = a7[1];
  v32 = *a7;
  v33 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = a8[1];
  v30 = *a8;
  v31 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = *a9;
  v18 = *a10;
  memset(v29, 0, sizeof(v29));
  v27 = 0;
  v28 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  v23 = 0;
  v24 = 0;
  memset(v22, 0, sizeof(v22));
  memset(v21, 0, sizeof(v21));
  memset(v20, 0, sizeof(v20));
  memset(v19, 0, sizeof(v19));
  quasar::DecoderPassData::DecoderPassData(a2, &v40, &v38, &v36, &v34, &v32, &v30, v17, v18, v29, &v27, __p, &v23, 4, 0, v22, v21, v20, 0, 0, v19, 0);
  v42 = v19;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v42);
  v19[0] = v20;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v19);
  v19[0] = v21;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v19);
  v19[0] = v22;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v19);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  __p[0] = v29;
  std::vector<std::weak_ptr<quasar::Decoder>>::__destroy_vector::operator()[abi:ne200100](__p);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }
}

void sub_1B561FEDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, std::__shared_weak_count *a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  *(v42 - 88) = v41;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100]((v42 - 88));
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a22);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a22);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a22);
  if (a35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a35);
  }

  if (a41 < 0)
  {
    operator delete(__p);
  }

  v44 = *(v42 - 216);
  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

  __p = (v42 - 208);
  std::vector<std::weak_ptr<quasar::Decoder>>::__destroy_vector::operator()[abi:ne200100](&__p);
  v45 = *(v42 - 176);
  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  v46 = *(v42 - 160);
  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  }

  v47 = *(v42 - 144);
  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  v48 = *(v42 - 128);
  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  v49 = *(v42 - 112);
  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

  v50 = *(v42 - 96);
  if (v50)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v50);
  }

  _Unwind_Resume(a1);
}

void std::vector<std::weak_ptr<quasar::Decoder>>::__assign_with_size[abi:ne200100]<std::weak_ptr<quasar::Decoder>*,std::weak_ptr<quasar::Decoder>*>(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 4)
  {
    std::vector<std::weak_ptr<quasar::Decoder>>::__vdeallocate(a1);
    if (!(a4 >> 60))
    {
      v9 = a1[2] - *a1;
      v10 = v9 >> 3;
      if (v9 >> 3 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFF0)
      {
        v11 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>::__vallocate[abi:ne200100](a1, v11);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1] - v8;
  if (a4 <= v12 >> 4)
  {
    std::__copy_impl::operator()[abi:ne200100]<std::weak_ptr<quasar::Decoder> *,std::weak_ptr<quasar::Decoder> *,std::weak_ptr<quasar::Decoder> *>(&v18, a2, a3, v8);
    v14 = v13;
    v15 = a1[1];
    if (v15 != v13)
    {
      do
      {
        v16 = *(v15 - 8);
        if (v16)
        {
          std::__shared_weak_count::__release_weak(v16);
        }

        v15 -= 16;
      }

      while (v15 != v14);
    }

    a1[1] = v14;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<std::weak_ptr<quasar::Decoder> *,std::weak_ptr<quasar::Decoder> *,std::weak_ptr<quasar::Decoder> *>(&v17, a2, (a2 + v12), v8);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::weak_ptr<quasar::Decoder>>,std::weak_ptr<quasar::Decoder>*,std::weak_ptr<quasar::Decoder>*,std::weak_ptr<quasar::Decoder>*>(a1, (a2 + v12), a3, a1[1]);
  }
}

uint64_t *std::__copy_impl::operator()[abi:ne200100]<std::weak_ptr<quasar::Decoder> *,std::weak_ptr<quasar::Decoder> *,std::weak_ptr<quasar::Decoder> *>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v8 = *v5;
      v7 = v5[1];
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 16), 1uLL, memory_order_relaxed);
      }

      v9 = a4[1];
      *a4 = v8;
      a4[1] = v7;
      if (v9)
      {
        std::__shared_weak_count::__release_weak(v9);
      }

      v5 += 2;
      a4 += 2;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_1B56201FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    quasar::SpeechRecognizerModelLoader::SpeechRecognizerModelLoader(a10);
  }

  _Unwind_Resume(exception_object);
}

void quasar::SpeechRecognizerModelLoader::~SpeechRecognizerModelLoader(char **this)
{
  v4 = (this + 47);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v4);
  std::__tree<std::string>::destroy((this + 44), this[45]);
  std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<quasar::FeatureExtractor>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<quasar::FeatureExtractor>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<quasar::FeatureExtractor>>>>>::destroy((this + 41), this[42]);
  std::__tree<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy((this + 38), this[39]);
  std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<quasar::FeatureExtractor>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<quasar::FeatureExtractor>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<quasar::FeatureExtractor>>>>>::destroy((this + 35), this[36]);
  quasar::SpeechRecognizerActiveConfiguration::~SpeechRecognizerActiveConfiguration(this + 3);
  v2 = this[2];
  this[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = this[1];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

uint64_t quasar::SpeechRecognizerModelLoader::getDecodable@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  __p = a2;
  result = std::__tree<std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 304, a2);
  if (v7)
  {
    v8 = *a1;
    std::operator+<char>();
    Ptree = quasar::SystemConfig::getPtree(v8, &__p);
    if (v14 < 0)
    {
      operator delete(__p);
    }

    v10 = *(a1 + 16);
    v11 = quasar::PTree::begin(Ptree);
    (*(*v10 + 24))(&__p, v10, a2, v11);
    quasar::Decodable::init(__p, v8);
  }

  v12 = *(result + 64);
  *a3 = *(result + 56);
  a3[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}