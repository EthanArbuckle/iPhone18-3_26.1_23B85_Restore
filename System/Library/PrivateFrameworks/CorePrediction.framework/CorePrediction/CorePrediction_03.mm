void std::vector<std::vector<int>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<std::vector<int>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<int>>,std::vector<int>*,std::vector<int>*,std::vector<int>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v4, *v6, v6[1], (v6[1] - *v6) >> 2);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<int>>,std::vector<int>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<int>>,std::vector<int>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<int>>,std::vector<int>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<int>>,std::vector<int>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 24);
      v3 -= 24;
      v4 = v5;
      if (v5)
      {
        *(v1 - 16) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

char **std::__copy_impl::operator()[abi:ne200100]<std::vector<int> *,std::vector<int> *,std::vector<int> *>(int a1, char **a2, char **a3, char **a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(a4, *v5, v5[1], (v5[1] - *v5) >> 2);
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,CPMLNBCompareProbIndexAscending &,std::__wrap_iter<ProbIndex *>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = (result + 16 * (v4 >> 1));
    v7 = *(a2 - 16);
    if (*v6 <= v7)
    {
      if (*v6 != v7)
      {
        return result;
      }

      v8 = *(a2 - 8);
      if (*(v6 + 2) >= v8)
      {
        return result;
      }
    }

    else
    {
      v8 = *(a2 - 8);
    }

    v9 = *(a2 - 4);
    *(a2 - 16) = *v6;
    if (v4 >= 2)
    {
      v10 = (result + 16 * (v4 >> 1));
      while (1)
      {
        v11 = v5 - 1;
        v5 = (v5 - 1) >> 1;
        v6 = (result + 16 * v5);
        if (*v6 <= v7 && (*v6 != v7 || *(v6 + 2) >= v8))
        {
          break;
        }

        *v10 = *v6;
        v10 = (result + 16 * v5);
        if (v11 <= 1)
        {
          goto LABEL_14;
        }
      }

      v6 = v10;
    }

LABEL_14:
    *v6 = v7;
    *(v6 + 2) = v8;
    *(v6 + 3) = v9;
  }

  return result;
}

__n128 std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,CPMLNBCompareProbIndexAscending &,std::__wrap_iter<ProbIndex *>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = a1;
    a1 += 16 * v3 + 16;
    v5 = 2 * v3;
    v3 = (2 * v3) | 1;
    v6 = v5 + 2;
    if (v6 < a3)
    {
      v7 = *(a1 + 16);
      if (*a1 > v7 || *a1 == v7 && *(a1 + 8) < *(a1 + 24))
      {
        a1 += 16;
        v3 = v6;
      }
    }

    result = *a1;
    *v4 = *a1;
  }

  while (v3 <= (a3 - 2) / 2);
  return result;
}

void CPMLKMeans::CPMLKMeans(CPMLKMeans *this, CPMLCDB *a2, CPMLSerialization *a3, CPMLTunableData *a4)
{
  CPMLAlgorithm::CPMLAlgorithm(this, a2, a3, a4);
  *v5 = &unk_285927B08;
  v6 = *(a2->var0 + 30);
  v7 = *(a2->var0 + 31);
  v5[16] = v7 + 1;
  v5[17] = v6;
  v5[15] = v7 + 2;
  v5[23] = 0;
  CPMLCDB::getIterator();
}

void *CPMLKMeans::initializeKMeans(CPMLKMeans *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    if (CPMLTunableData::getNumberOfItems(v2) < 1)
    {
      *(this + 13) = 20;
      *(this + 20) = 0x3F847AE147AE147BLL;
      *(this + 76) = 0;
      if (*(this + 14) == -1)
      {
        *(this + 14) = 2;
      }
    }

    else
    {
      CPMLTunableData::tDataGetUInt64(*(this + 9), "maxIterations", this + 13);
      CPMLTunableData::tDataGetUInt64(*(this + 9), "kValue", this + 14);
      CPMLTunableData::tDataGetDouble(*(this + 9), "minConvergeValue", this + 20);
      CPMLTunableData::tDataGetBool(*(this + 9), "useWeightedkMeans", this + 152);
      CPMLTunableData::tDataGetBool(*(this + 9), "useRandomCluster", this + 153);
    }
  }

  v3 = malloc_type_calloc(*(this + 17), 8 * *(this + 15), 0x100004000313F17uLL);
  *(this + 21) = v3;
  if (!v3)
  {
    return fprintf(*MEMORY[0x277D85DF8], "%s cannot initialize kMeansDataSet\n");
  }

  v4 = malloc_type_calloc(*(this + 14), 0x30uLL, 0x1080040ECFC1FCFuLL);
  *(this + 22) = v4;
  if (!v4)
  {
    return fprintf(*MEMORY[0x277D85DF8], "%s cannot initialize centroidData\n");
  }

  v5 = *(this + 14);
  if (!v5)
  {
    goto LABEL_17;
  }

  v6 = 0;
  v7 = 0;
  v8 = MEMORY[0x277D85DF8];
  do
  {
    *(*(this + 22) + v6 + 32) = malloc_type_calloc(*(this + 15), 8uLL, 0x100004000313F17uLL);
    v9 = malloc_type_calloc(*(this + 15), 8uLL, 0x100004000313F17uLL);
    v10 = *(this + 22) + v6;
    *(v10 + 40) = v9;
    if (*(v10 + 32))
    {
      if (v9)
      {
        goto LABEL_12;
      }
    }

    else
    {
      fprintf(*v8, "%s cannot initialize centroidData positionInSpace\n", "initializeKMeans");
      if (*(*(this + 22) + v6 + 40))
      {
        goto LABEL_12;
      }
    }

    fprintf(*v8, "%s cannot initialize centroidData nextPositionInSpace\n", "initializeKMeans");
LABEL_12:
    ++v7;
    v11 = *(this + 14);
    v6 += 48;
  }

  while (v7 < v11);
  v5 = 8 * v11;
LABEL_17:
  v13 = v5 + 8 * *(this + 17) + 56;
  v14 = v5 + *(this + 16) * v5 + 40;
  *(this + 12) = v14 + v13;
  result = malloc_type_calloc(1uLL, v14 + v13, 0xFD23F04uLL);
  *(this + 5) = result;
  *result = v13 >> 3;
  result[1] = *(this + 13);
  result[2] = *(this + 14);
  result[3] = *(this + 16);
  v15 = *(this + 17);
  result[4] = v15;
  result[5] = v15 + 6;
  result[6] = 6;
  if (*(this + 17))
  {
    v16 = 0;
    do
    {
      result[v16++ + 6] = -2;
    }

    while (*(this + 17) > v16);
  }

  v17 = *(this + 14);
  if (v17)
  {
    v18 = 0;
    v19 = result;
    do
    {
      v19[result[5]] = 0;
      ++v18;
      v17 = *(this + 14);
      ++v19;
    }

    while (v17 > v18);
  }

  v20 = result + v13;
  *v20 = (v14 >> 3);
  *(v20 + 1) = *(this + 20);
  *(v20 + 1) = xmmword_247322750;
  v21 = *(this + 16) * v17;
  *(v20 + 4) = (v21 + 5);
  if (v21)
  {
    v22 = result + v13;
    do
    {
      *&v22[8 * *(v20 + 3)] = 0xC010000000000000;
      v22 += 8;
      --v21;
    }

    while (v21);
  }

  if (v17)
  {
    v23 = result + v13;
    do
    {
      *&v23[8 * *(v20 + 4)] = 0xC014000000000000;
      v23 += 8;
      --v17;
    }

    while (v17);
  }

  return result;
}

void CPMLKMeans::CPMLKMeans(CPMLKMeans *this, CPMLSerialization *a2, CPMLTunableData *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  CPMLAlgorithm::CPMLAlgorithm(this, 0, a2, a3);
  *v5 = &unk_285927B08;
  (*(a2->var0 + 10))(a2, v5 + 16, "totalCols", 1, 0);
  (*(a2->var0 + 10))(a2, this + 136, "totalRows", 1, 0);
  (*(a2->var0 + 10))(a2, this + 112, "kValue", 1, 0);
  *(this + 23) = 0;
  v6 = *(this + 16) + 1;
  *(this + 14) = -1;
  *(this + 15) = v6;
  CPMLKMeans::initializeKMeans(this);
  if (*(this + 14))
  {
    v7 = 0;
    v8 = 32;
    do
    {
      v9 = *(*(this + 22) + v8);
      sprintf(v12, "centroid%lld", v7);
      (*(a2->var0 + 12))(a2, v9, v12, *(this + 15), 0);
      ++v7;
      v8 += 48;
    }

    while (v7 < *(this + 14));
  }

  (*(**(this + 11) + 80))(*(this + 11), *(this + 5), "modelDataInt", **(this + 5), 0);
  v10 = *(*(this + 5) + 8 * **(this + 5));
  (*(**(this + 11) + 96))(*(this + 11));
  v11 = *MEMORY[0x277D85DE8];
}

void CPMLKMeans::CPMLKMeans(CPMLKMeans *this, int a2, int a3, double **a4, int a5, int a6, double a7, int a8, CPMLTunableData *a9)
{
  CPMLAlgorithm::CPMLAlgorithm(this, 0, 0, a9);
  *v15 = &unk_285927B08;
  *(v15 + 120) = a2 + 1;
  *(v15 + 128) = a2;
  *(v15 + 136) = a3;
  *(v15 + 104) = a6;
  *(v15 + 112) = a5;
  *(v15 + 160) = a7;
  *(v15 + 152) = a8 & 1;
  *(v15 + 153) = a8 < 0;
  CPMLKMeans::initializeKMeans(v15);
  operator new();
}

void sub_247318138(_Unwind_Exception *a1)
{
  MEMORY[0x24C19F910](v2, 0x10A1C40B2F27C95);
  CPModelClose(v1);
  _Unwind_Resume(a1);
}

void CPMLKMeans::~CPMLKMeans(CPMLKMeans *this)
{
  *this = &unk_285927B08;
  v2 = *(this + 14);
  v3 = *(this + 22);
  if (v2)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      free(*&v3[v4 + 32]);
      v6 = *(this + 22) + v4;
      *(v6 + 32) = 0;
      free(*(v6 + 40));
      v3 = *(this + 22);
      *&v3[v4 + 40] = 0;
      ++v5;
      v4 += 48;
    }

    while (v5 < *(this + 14));
  }

  free(v3);
  *(this + 22) = 0;
  free(*(this + 21));
  *(this + 21) = 0;
  free(*(this + 5));
  *(this + 5) = 0;
  v7 = *(this + 23);
  if (v7)
  {
    (*(*v7 + 8))(v7);
    *(this + 23) = 0;
  }

  CPModelClose(this);
}

{
  CPMLKMeans::~CPMLKMeans(this);

  JUMPOUT(0x24C19F910);
}

uint64_t CPMLKMeans::serialize(CPMLKMeans *this)
{
  v10 = *MEMORY[0x277D85DE8];
  (*(**(this + 11) + 32))(*(this + 11), this + 128, "totalCols", 1, 0);
  (*(**(this + 11) + 32))(*(this + 11), this + 136, "totalRows", 1, 0);
  (*(**(this + 11) + 32))(*(this + 11), this + 112, "kValue", 1, 0);
  if (*(this + 14))
  {
    v2 = 0;
    v3 = 32;
    do
    {
      v4 = *(*(this + 22) + v3);
      sprintf(v9, "centroid%lld", v2);
      (*(**(this + 11) + 48))(*(this + 11), v4, v9, *(this + 15), 0);
      ++v2;
      v3 += 48;
    }

    while (v2 < *(this + 14));
  }

  v5 = (*(this + 5) + 8 * **(this + 5));
  v6 = *v5;
  (*(**(this + 11) + 32))(*(this + 11));
  (*(**(this + 11) + 48))(*(this + 11), v5, "modelDataReal", v6, 0);
  v7 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t CPMLKMeans::train(CPMLKMeans *this)
{
  v84[1] = *MEMORY[0x277D85DE8];
  v2 = (*(**(this + 10) + 32))(*(this + 10));
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = 0;
    while (1)
    {
      IntVector = CPMLFeatureVector::getIntVector(v3);
      v7 = *IntVector;
      v8 = IntVector[1] - *IntVector;
      if (v8)
      {
        v9 = v8 >> 2;
        if (v9 <= 1)
        {
          v9 = 1;
        }

        v10 = (*(this + 21) + *(this + 15) * v4);
        do
        {
          v11 = *v7++;
          *v10++ = v11;
          --v9;
        }

        while (v9);
      }

      RealVector = CPMLFeatureVector::getRealVector(v3);
      v13 = *RealVector;
      v14 = *(RealVector + 8) - *RealVector;
      if (v14)
      {
        v15 = v14 >> 3;
        v16 = *IntVector;
        if (v15 <= 1)
        {
          v15 = 1;
        }

        v17 = (*(this + 21) + *(this + 15) * v4 + 2 * (IntVector[1] - *IntVector));
        do
        {
          v18 = *v13++;
          *v17++ = v18;
          --v15;
        }

        while (v15);
      }

      YHat = CPMLFeatureVector::getYHat(v3);
      v20 = *(this + 15);
      v21 = *(RealVector + 8) - *RealVector;
      v22 = IntVector[1] - *IntVector;
      *(*(this + 21) + 8 * v20 * v5 + v21 + 2 * v22) = YHat;
      if (v20 * v5 + (v21 >> 3) + (v22 >> 2) > *(this + 17) * v20)
      {
        break;
      }

      ++v5;
      v3 = (*(**(this + 10) + 32))(*(this + 10));
      v4 += 8;
      if (!v3)
      {
        goto LABEL_17;
      }
    }

    fprintf(*MEMORY[0x277D85DF8], "Index access beyond allocated. %d : %d : %d : %d\n", v5, *(this + 16), v21 >> 3, v22 >> 2);
LABEL_85:
    result = 0xFFFFFFFFLL;
    goto LABEL_86;
  }

  v5 = 0;
LABEL_17:
  if (*(this + 14) > v5)
  {
    fprintf(*MEMORY[0x277D85DF8], "kMeans %s cannot have more centroid than training rows\n", "train");
    goto LABEL_85;
  }

  MEMORY[0x28223BE20](0);
  v24 = v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = time(0);
  srand(v25);
  v26 = *(this + 14);
  if (v26)
  {
    for (i = 0; i < v26; ++i)
    {
      if (*(this + 153) == 1)
      {
        v28 = rand() % v5;
      }

      else
      {
        v28 = v5 / v26 * i;
      }

      v29 = *(this + 16);
      v30 = *(this + 22);
      if (v29)
      {
        v31 = (*(this + 21) + 8 * *(this + 15) * v28);
        v32 = v30 + 48 * i;
        v33 = *(v32 + 32);
        v34 = *(v32 + 40);
        do
        {
          v35 = *v31++;
          *v33++ = v35;
          *v34++ = v35;
          --v29;
        }

        while (v29);
      }

      v36 = (v30 + 48 * i);
      *v36 = 0xBFF0000000000000;
      v36[3] = 0;
      *&v24[8 * i] = v28;
      v26 = *(this + 14);
      if (i && v26 < v5)
      {
        v37 = 0;
        while (*&v24[8 * v37] != v28)
        {
          if (i == ++v37)
          {
            goto LABEL_34;
          }
        }

        --i;
      }

LABEL_34:
      ;
    }
  }

  v38 = 0;
  v39 = 0.0;
  do
  {
    if (v26)
    {
      v40 = *(this + 16);
      v41 = (*(this + 22) + 40);
      v42 = v26;
      do
      {
        *(v41 - 4) = 0;
        *(v41 - 3) = 0;
        *(v41 - 2) = 0;
        if (v40)
        {
          bzero(*v41, 8 * v40);
        }

        v41 += 6;
        --v42;
      }

      while (v42);
    }

    if (*(this + 17))
    {
      v43 = 0;
      v44 = *(this + 21);
      v45 = *(this + 15);
      do
      {
        NearestCentroid = CPMLKMeans::findNearestCentroid(this, (v44 + 8 * v45 * v43));
        v45 = *(this + 15);
        v44 = *(this + 21);
        v47 = *(this + 22);
        *(v44 + 8 * v45 * v43 + 8 * *(this + 16)) = NearestCentroid;
        *(v47 + 48 * NearestCentroid + 24) = *(v47 + 48 * NearestCentroid + 24) + 1.0;
        ++v43;
        v48 = *(this + 17);
      }

      while (v48 > v43);
      v26 = *(this + 14);
      v49 = v48 == 0;
      if (!v26)
      {
LABEL_52:
        v51 = 0.0;
        goto LABEL_53;
      }
    }

    else
    {
      v49 = 1;
      if (!v26)
      {
        goto LABEL_52;
      }
    }

    v50 = *(this + 22);
    v51 = 0.0;
    v52 = v26;
    do
    {
      v53 = v50[3];
      if (v53 == 0.0)
      {
        v54 = *(this + 20);
      }

      else
      {
        v54 = v50[1] / v53;
      }

      *v50 = v54;
      v50 += 6;
      v51 = v51 + v54;
      --v52;
    }

    while (v52);
LABEL_53:
    v55 = vabdd_f64(v39, v51);
    v56 = *(this + 20);
    if (v55 > v56 && ++v38 < *(this + 13) && v26 != 0)
    {
      v58 = 0;
      v59 = *(this + 16);
      do
      {
        if (v59)
        {
          v60 = 0;
          v61 = *(this + 22) + 48 * v58;
          do
          {
            v62 = *(v61 + 24);
            if (v62 != 0.0)
            {
              *(*(v61 + 32) + 8 * v60) = *(*(v61 + 40) + 8 * v60) / v62;
            }

            ++v60;
          }

          while (v59 != v60);
        }

        ++v58;
      }

      while (v58 != v26);
      v56 = *(this + 20);
    }

    if (v55 <= v56)
    {
      break;
    }

    v39 = v51;
  }

  while (v38 < *(this + 13));
  v63 = *(this + 5);
  if (!v49)
  {
    v64 = 0;
    v65 = v63[5];
    v66 = MEMORY[0x277D85DF8];
    do
    {
      v67 = *(*(this + 21) + 8 * *(this + 15) * v64 + 8 * *(this + 16));
      if (*(this + 14) <= v67)
      {
        fprintf(*v66, "%s Cluster value shouldn't be greater than kValue\n", "train");
      }

      else
      {
        v68 = *(this + 5);
        *(v68 + 8 * v64 + 48) = v67;
        ++*(v68 + 8 * v65 + 8 * v67);
      }

      ++v64;
    }

    while (v64 < *(this + 17));
    v63 = *(this + 5);
    v26 = *(this + 14);
  }

  v69 = &v63[*v63];
  CPMLKMeans::findTotss(this, *(this + 21));
  *(v69 + 2) = v70;
  if (v26)
  {
    v71 = 0;
    v72 = &v69[v69[4]];
    v73 = (*(this + 22) + 16);
    do
    {
      v74 = *v73;
      v73 += 6;
      v72[v71++] = v74;
    }

    while (v26 != v71);
    v75 = 0;
    v76 = *(this + 16);
    v77 = &v69[v69[3]];
    do
    {
      if (v76)
      {
        v78 = *(*(this + 22) + 48 * v75 + 32);
        v79 = v77;
        v80 = v76;
        do
        {
          v81 = *v78++;
          *v79++ = v81;
          --v80;
        }

        while (v80);
      }

      ++v75;
      v77 += v76;
    }

    while (v75 != v26);
  }

  result = 0;
LABEL_86:
  v83 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CPMLKMeans::findNearestCentroid(CPMLKMeans *this, double *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = *(this + 152);
  v3 = *(this + 16);
  v4 = *(this + 14);
  v5 = v3 - v2;
  if (v3 == v2 || !v4)
  {
    fprintf(*MEMORY[0x277D85DF8], "%s feature vector length %lld or kValue %lld\n", "findNearestCentroid", v5, v4);
    v12 = 0;
  }

  else
  {
    v29[1] = v29;
    v8 = MEMORY[0x28223BE20](this);
    v9 = (v29 - ((8 * v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v10 = *(v8 + 112);
    v31 = *(v8 + 176);
    if (v10)
    {
      v11 = 0;
      v12 = 0;
      v30 = a2 - 1;
      v13 = *(this + 152);
      v14 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      do
      {
        v32 = v14;
        v15 = *(v31 + 48 * v11 + 32);
        memcpy(v29 - ((8 * v5 + 15) & 0xFFFFFFFFFFFFFFF0), a2, 8 * v5);
        v16 = 0.0;
        v17 = a2;
        v18 = v5;
        do
        {
          v19 = *v17++;
          v20 = v19;
          v21 = *v15++;
          v16 = v16 + (v20 - v21) * (v20 - v21);
          --v18;
        }

        while (v18);
        *v22.i64 = sqrt(v16);
        if (v13)
        {
          *v22.i64 = *v22.i64 * v30[*(this + 16)];
        }

        if (*v22.i64 < *v32.i64)
        {
          v12 = v11;
        }

        v23 = vdup_n_s32(*v22.i64 < *v32.i64);
        v24.i64[0] = v23.u32[0];
        v24.i64[1] = v23.u32[1];
        *&v22.i64[1] = *v22.i64 * *v22.i64;
        v14 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v24, 0x3FuLL)), v22, v32);
        ++v11;
      }

      while (v11 != v10);
    }

    else
    {
      v12 = 0;
      v14 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    }

    v25 = *(v31 + 48 * v12 + 40);
    do
    {
      v26 = *v9++;
      *v25 = v26 + *v25;
      ++v25;
      --v5;
    }

    while (v5);
    *(v31 + 48 * v12 + 8) = vaddq_f64(v14, *(v31 + 48 * v12 + 8));
  }

  v27 = *MEMORY[0x277D85DE8];
  return v12;
}

void CPMLKMeans::findTotss(CPMLKMeans *this, double *a2)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v4 = *(this + 152);
  v5 = *(this + 16);
  MEMORY[0x28223BE20](this);
  v7 = (v27 - v6);
  if (v5 != v4)
  {
    bzero(v27 - v6, 8 * (v5 - v4));
  }

  v8 = *(this + 17);
  if (v8)
  {
    v9 = 0;
    for (i = 0; i != v8; ++i)
    {
      if (v5 != v4)
      {
        v11 = (a2 + *(this + 15) * v9);
        v12 = v7;
        v13 = v5 - v4;
        do
        {
          v14 = *v11++;
          *v12 = v14 + *v12;
          ++v12;
          --v13;
        }

        while (v13);
      }

      v9 += 8;
    }
  }

  if (v5 != v4)
  {
    v15 = v7;
    v16 = v5 - v4;
    do
    {
      *v15 = *v15 / v8;
      ++v15;
      --v16;
    }

    while (v16);
  }

  if (v8)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0.0;
    do
    {
      if (v5 != v4)
      {
        v20 = (a2 + *(this + 15) * v17);
        v21 = v7;
        v22 = v5 - v4;
        do
        {
          v23 = *v20++;
          v24 = v23;
          v25 = *v21++;
          v19 = v19 + (v24 - v25) * (v24 - v25);
          --v22;
        }

        while (v22);
      }

      ++v18;
      v17 += 8;
    }

    while (v18 != v8);
  }

  v26 = *MEMORY[0x277D85DE8];
}

uint64_t CPMLKMeans::eval(void *a1, CPMLFeatureVector *a2)
{
  v4 = malloc_type_calloc(8 * a1[15], 1uLL, 0x100004000313F17uLL);
  IntVector = CPMLFeatureVector::getIntVector(a2);
  v6 = *IntVector;
  v7 = IntVector[1] - *IntVector;
  if (v7)
  {
    v8 = v7 >> 2;
    if (v8 <= 1)
    {
      v8 = 1;
    }

    v9 = v4;
    do
    {
      v10 = *v6++;
      *v9++ = v10;
      --v8;
    }

    while (v8);
  }

  RealVector = CPMLFeatureVector::getRealVector(a2);
  v12 = *RealVector;
  v13 = *(RealVector + 8) - *RealVector;
  if (v13)
  {
    v14 = v13 >> 3;
    v15 = (v4 + 2 * (IntVector[1] - *IntVector));
    if (v14 <= 1)
    {
      v14 = 1;
    }

    do
    {
      v16 = *v12++;
      *v15++ = v16;
      --v14;
    }

    while (v14);
  }

  v17 = a1[14];
  if (v17)
  {
    v18 = 0;
    v19 = 0x7FFFFFFFFFFFFFFFLL;
    v20 = 1.79769313e308;
    do
    {
      if (a1[16])
      {
        v21 = *(a1[22] + 48 * v18 + 32);
        v22 = 0.0;
        v23 = a1[16];
        v24 = v4;
        do
        {
          v25 = *v24++;
          v26 = v25;
          v27 = *v21++;
          v22 = v22 + (v26 - v27) * (v26 - v27);
          --v23;
        }

        while (v23);
      }

      else
      {
        v22 = 0.0;
      }

      v28 = sqrt(v22);
      if (v28 < v20)
      {
        v19 = v18;
        v20 = v28;
      }

      ++v18;
    }

    while (v18 != v17);
    v29 = v19;
  }

  else
  {
    v29 = 9.22337204e18;
  }

  CPMLFeatureVector::setYHat(a2, v29);
  free(v4);
  return 0;
}

void CPMLCDB::CPMLCDB(CPMLCDB *this, sqlite3 *a2, sqlite3 *a3, CPMLTunableData *a4)
{
  this->var1 = a2;
  this->var2 = a3;
  this->var3 = 0;
  this->var4 = 0;
  this->var5 = a4;
}

void CPMLCDB::CPMLCDB(CPMLCDB *this, sqlite3 *a2, sqlite3 *a3, CPMLRemapper *a4, CPMLTunableData *a5)
{
  this->var1 = a2;
  this->var2 = a3;
  this->var3 = 0;
  this->var4 = a4;
  this->var5 = a5;
}

void CPMLCDB::~CPMLCDB(CPMLCDB *this)
{
  var3 = this->var3;
  if (var3)
  {
    (*(*var3 + 8))(var3);
  }
}

uint64_t CPMLDBSerialization::cp_read(CPMLDBSerialization *this, int *a2, const char *a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    v8 = sqlite3_mprintf("select * from %q where pkey=%d", a3, a5 + 1);
  }

  else
  {
    v8 = sqlite3_mprintf("select * from %q", a3);
  }

  return CPMLDBSerialization::do_cp_read(this, a2, a4, v8);
}

uint64_t CPMLDBSerialization::do_cp_read(CPMLDBSerialization *this, int *a2, uint64_t a3, char *__s)
{
  v8 = *(this + 4);
  v9 = strlen(__s);
  sqlite3_prepare_v2(v8, __s, v9, this + 5, 0);
  if (__s)
  {
    sqlite3_free(__s);
  }

  if (a3)
  {
    v10 = 0;
    while (1)
    {
      v11 = sqlite3_step(*(this + 5));
      if (v11 != 100)
      {
        break;
      }

      a2[v10++] = sqlite3_column_int(*(this + 5), 0);
      if (a3 == v10)
      {
        goto LABEL_7;
      }
    }

    if (v11 == 101)
    {
      sqlite3_finalize(*(this + 5));
      return v10;
    }

    else
    {
      CPMLLog = CPMLLog::getCPMLLog(v11);
      CPMLLog::log(CPMLLog, CPML_LOG_ERR, "do_cp_read", "Serializer: Error iterating rows\n");
      sqlite3_finalize(*(this + 5));
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
LABEL_7:
    sqlite3_finalize(*(this + 5));
  }

  return a3;
}

uint64_t CPMLDBSerialization::cp_update_int(sqlite3 **this, uint64_t a2, char *a3, char *a4, int a5)
{
  v6 = sqlite3_mprintf("UPDATE %q SET %q=%d where pKey=%d", a3, a4, a2, (a5 + 1));
  v7 = strlen(v6);
  sqlite3_prepare_v2(this[4], v6, v7, this + 5, 0);
  if (v6)
  {
    sqlite3_free(v6);
  }

  v8 = sqlite3_step(this[5]);
  if (v8 == 101)
  {
    v9 = 0;
  }

  else
  {
    CPMLLog = CPMLLog::getCPMLLog(v8);
    CPMLLog::log(CPMLLog, CPML_LOG_ERR, "cp_update_int", "Serializer: Error iterating rows\n");
    v9 = 0xFFFFFFFFLL;
  }

  sqlite3_finalize(this[5]);
  return v9;
}

uint64_t CPMLDBSerialization::cp_read(sqlite3 **this, unsigned int *a2, const char *a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    v8 = sqlite3_mprintf("select * from %q where pkey=%d", a3, a5 + 1);
  }

  else
  {
    v8 = sqlite3_mprintf("select * from %q", a3);
  }

  v9 = v8;
  v10 = strlen(v8);
  sqlite3_prepare_v2(this[4], v9, v10, this + 6, 0);
  if (v9)
  {
    sqlite3_free(v9);
  }

  if (a4)
  {
    while (1)
    {
      v11 = sqlite3_step(this[6]);
      if (v11 != 100)
      {
        break;
      }

      *a2++ = sqlite3_column_int(this[6], 0);
      if (!--a4)
      {
        goto LABEL_13;
      }
    }

    if (v11 == 101)
    {
      a4 = 0;
    }

    else
    {
      CPMLLog = CPMLLog::getCPMLLog(v11);
      CPMLLog::log(CPMLLog, CPML_LOG_ERR, "cp_read", "Serializer: Error iterating rows\n");
      a4 = 0xFFFFFFFFLL;
    }
  }

LABEL_13:
  sqlite3_finalize(this[6]);
  return a4;
}

uint64_t CPMLDBSerialization::cp_read(CPMLDBSerialization *this, sqlite3_int64 *a2, const char *a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    v8 = sqlite3_mprintf("select * from %q where pkey=%d", a3, a5 + 1);
  }

  else
  {
    v8 = sqlite3_mprintf("select * from %q", a3);
  }

  return CPMLDBSerialization::do_cp_read(this, a2, a4, v8);
}

uint64_t CPMLDBSerialization::do_cp_read(CPMLDBSerialization *this, sqlite3_int64 *a2, uint64_t a3, char *__s)
{
  v8 = *(this + 4);
  v9 = strlen(__s);
  sqlite3_prepare_v2(v8, __s, v9, this + 7, 0);
  if (__s)
  {
    sqlite3_free(__s);
  }

  if (a3)
  {
    while (1)
    {
      v10 = sqlite3_step(*(this + 7));
      if (v10 != 100)
      {
        break;
      }

      *a2++ = sqlite3_column_int64(*(this + 7), 0);
      if (!--a3)
      {
        goto LABEL_10;
      }
    }

    v11 = v10;
    if (v10 == 101)
    {
      a3 = 0;
      *a2 = 0;
    }

    else
    {
      CPMLLog = CPMLLog::getCPMLLog(v10);
      CPMLLog::log(CPMLLog, CPML_LOG_ERR, "do_cp_read", "cp_readDefault Error iterating rows %d\n", v11);
      a3 = 0xFFFFFFFFLL;
    }
  }

LABEL_10:
  sqlite3_finalize(*(this + 7));
  return a3;
}

uint64_t CPMLDBSerialization::cp_multiQuery_uint64_t(CPMLDBSerialization *this, sqlite3_int64 *a2, uint64_t a3, const char *a4)
{
  v7 = sqlite3_mprintf("%s", a4);

  return CPMLDBSerialization::do_cp_read(this, a2, a3, v7);
}

uint64_t CPMLDBSerialization::cp_query_uint64_t(CPMLDBSerialization *this, sqlite3_int64 *a2, uint64_t a3, char *a4, char *a5, int a6)
{
  v9 = sqlite3_mprintf("select %q from %q where pKey BETWEEN %d AND %d", a5, a4, (a6 + 1), a3 + a6 + 1);

  return CPMLDBSerialization::do_cp_read(this, a2, a3, v9);
}

uint64_t CPMLDBSerialization::cp_update_uint64_t(sqlite3 **this, uint64_t a2, char *a3, char *a4, int a5)
{
  v6 = sqlite3_mprintf("UPDATE %q SET %q=%ld where pKey=%d", a3, a4, a2, (a5 + 1));
  v7 = strlen(v6);
  sqlite3_prepare_v2(this[4], v6, v7, this + 7, 0);
  if (v6)
  {
    sqlite3_free(v6);
  }

  v8 = sqlite3_step(this[7]);
  if (v8 == 101)
  {
    v9 = 0;
  }

  else
  {
    CPMLLog = CPMLLog::getCPMLLog(v8);
    CPMLLog::log(CPMLLog, CPML_LOG_ERR, "cp_update_uint64_t", "Serializer: Error iterating rows\n");
    v9 = 0xFFFFFFFFLL;
  }

  sqlite3_finalize(this[7]);
  return v9;
}

uint64_t CPMLDBSerialization::cp_read(sqlite3 **this, float *a2, const char *a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    v8 = sqlite3_mprintf("select * from %q where pkey=%d", a3, a5 + 1);
  }

  else
  {
    v8 = sqlite3_mprintf("select * from %q", a3);
  }

  v9 = v8;
  v10 = strlen(v8);
  sqlite3_prepare_v2(this[4], v9, v10, this + 8, 0);
  if (v9)
  {
    sqlite3_free(v9);
  }

  if (a4)
  {
    while (1)
    {
      v11 = sqlite3_step(this[8]);
      if (v11 != 100)
      {
        break;
      }

      if (sqlite3_column_type(this[8], 0) == 5)
      {
        v12 = nanf("");
      }

      else
      {
        v12 = sqlite3_column_double(this[8], 0);
      }

      *a2++ = v12;
      if (!--a4)
      {
        goto LABEL_16;
      }
    }

    if (v11 == 101)
    {
      a4 = 0;
    }

    else
    {
      CPMLLog = CPMLLog::getCPMLLog(v11);
      CPMLLog::log(CPMLLog, CPML_LOG_ERR, "cp_read", "Serializer: Error iterating rows\n");
      a4 = 0xFFFFFFFFLL;
    }
  }

LABEL_16:
  sqlite3_finalize(this[8]);
  return a4;
}

uint64_t CPMLDBSerialization::cp_read(CPMLDBSerialization *this, double *a2, const char *a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    v8 = sqlite3_mprintf("select * from %q where pkey=%d", a3, a5 + 1);
  }

  else
  {
    v8 = sqlite3_mprintf("select * from %q", a3);
  }

  return CPMLDBSerialization::do_cp_read(this, a2, a4, v8);
}

uint64_t CPMLDBSerialization::do_cp_read(CPMLDBSerialization *this, double *a2, uint64_t a3, char *__s)
{
  v8 = *(this + 4);
  v9 = strlen(__s);
  sqlite3_prepare_v2(v8, __s, v9, this + 9, 0);
  if (__s)
  {
    sqlite3_free(__s);
  }

  if (a3)
  {
    while (1)
    {
      v10 = sqlite3_step(*(this + 9));
      if (v10 != 100)
      {
        break;
      }

      if (sqlite3_column_type(*(this + 9), 0) == 5)
      {
        v11 = nan("");
      }

      else
      {
        v11 = sqlite3_column_double(*(this + 9), 0);
      }

      *a2++ = v11;
      if (!--a3)
      {
        goto LABEL_13;
      }
    }

    if (v10 == 101)
    {
      a3 = 0;
    }

    else
    {
      CPMLLog = CPMLLog::getCPMLLog(v10);
      CPMLLog::log(CPMLLog, CPML_LOG_ERR, "do_cp_read", "Serializer: Error iterating rows\n");
      a3 = 0xFFFFFFFFLL;
    }
  }

LABEL_13:
  sqlite3_finalize(*(this + 9));
  return a3;
}

uint64_t CPMLDBSerialization::cp_multiQuery_double(CPMLDBSerialization *this, double *a2, uint64_t a3, const char *a4)
{
  v7 = sqlite3_mprintf("%s", a4);

  return CPMLDBSerialization::do_cp_read(this, a2, a3, v7);
}

uint64_t CPMLDBSerialization::cp_query_double(CPMLDBSerialization *this, double *a2, uint64_t a3, char *a4, char *a5, int a6)
{
  v9 = sqlite3_mprintf("select %q from %q where pKey BETWEEN %d AND %d", a5, a4, (a6 + 1), a3 + a6 + 1);

  return CPMLDBSerialization::do_cp_read(this, a2, a3, v9);
}

uint64_t CPMLDBSerialization::cp_update_double(sqlite3 **this, double a2, char *a3, char *a4, int a5)
{
  v6 = sqlite3_mprintf("UPDATE %q SET %q=%lf where pKey=%d", a3, a4, *&a2, (a5 + 1));
  v7 = strlen(v6);
  sqlite3_prepare_v2(this[4], v6, v7, this + 9, 0);
  if (v6)
  {
    sqlite3_free(v6);
  }

  v8 = sqlite3_step(this[9]);
  if (v8 == 101)
  {
    v9 = 0;
  }

  else
  {
    CPMLLog = CPMLLog::getCPMLLog(v8);
    CPMLLog::log(CPMLLog, CPML_LOG_ERR, "cp_update_double", "Serializer: Error iterating rows\n");
    v9 = 0xFFFFFFFFLL;
  }

  sqlite3_finalize(this[9]);
  return v9;
}

uint64_t CPMLDBSerialization::cp_read(CPMLDBSerialization *this, char *a2, const char *a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    v8 = sqlite3_mprintf("select * from %q where pkey=%d", a3, a5 + 1);
  }

  else
  {
    v8 = sqlite3_mprintf("select * from %q", a3);
  }

  v9 = *(*this + 184);

  return v9(this, a2, a4, v8);
}

uint64_t CPMLDBSerialization::cp_singleQuery_string(CPMLDBSerialization *this, char *a2, size_t a3, char *__s)
{
  v6 = (this + 80);
  if (!*(this + 10))
  {
    v8 = *(this + 4);
    v9 = strlen(__s);
    sqlite3_prepare_v2(v8, __s, v9, v6, 0);
    if (__s)
    {
      sqlite3_free(__s);
    }
  }

  v10 = sqlite3_step(*v6);
  if (v10 == 100)
  {
    v12 = sqlite3_column_text(*v6, 0);
    strlcpy(a2, v12, a3);
    v11 = 0;
  }

  else if (v10 == 101)
  {
    v11 = 0;
    *a2 = 0;
  }

  else
  {
    CPMLLog = CPMLLog::getCPMLLog(v10);
    CPMLLog::log(CPMLLog, CPML_LOG_ERR, "cp_singleQuery_string", "Serializer: Error iterating rows\n");
    v11 = 0xFFFFFFFFLL;
  }

  sqlite3_finalize(*v6);
  *v6 = 0;
  return v11;
}

uint64_t CPMLDBSerialization::cp_singleQuery_uint64_t(CPMLDBSerialization *this, sqlite3_int64 *a2, char *__s)
{
  v6 = *(this + 4);
  v7 = strlen(__s);
  sqlite3_prepare_v2(v6, __s, v7, this + 11, 0);
  v8 = sqlite3_step(*(this + 11));
  if (v8 == 100)
  {
    if (sqlite3_column_type(*(this + 11), 0) == 5)
    {
      v10 = 0;
    }

    else
    {
      v10 = sqlite3_column_int64(*(this + 11), 0);
    }

    *a2 = v10;
    sqlite3_finalize(*(this + 11));
    return 0;
  }

  else if (v8 == 101)
  {
    sqlite3_finalize(*(this + 11));
    result = 0;
    *a2 = 0;
  }

  else
  {
    CPMLLog = CPMLLog::getCPMLLog(v8);
    CPMLLog::log(CPMLLog, CPML_LOG_ERR, "cp_singleQuery_uint64_t", "Serializer: Error iterating rows\n");
    sqlite3_finalize(*(this + 11));
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t CPMLDBSerialization::cp_singleQuery_double(CPMLDBSerialization *this, double *a2, char *__s)
{
  v6 = *(this + 4);
  v7 = strlen(__s);
  sqlite3_prepare_v2(v6, __s, v7, this + 11, 0);
  v8 = sqlite3_step(*(this + 11));
  if (v8 == 100)
  {
    if (sqlite3_column_type(*(this + 11), 0) == 5)
    {
      v11 = nan("");
    }

    else
    {
      v11 = sqlite3_column_double(*(this + 11), 0);
    }

    *a2 = v11;
    sqlite3_finalize(*(this + 11));
    return 0;
  }

  else
  {
    v9 = v8;
    if (v8 == 101)
    {
      sqlite3_finalize(*(this + 11));
      *a2 = 0.0;
      return 101;
    }

    else
    {
      CPMLLog = CPMLLog::getCPMLLog(v8);
      CPMLLog::log(CPMLLog, CPML_LOG_ERR, "cp_singleQuery_double", "Serializer: Error %d iterating rows: %s\n", v9, __s);
      sqlite3_finalize(*(this + 11));
      return 0xFFFFFFFFLL;
    }
  }
}

void CPNaiveBayesClassifier::CPNaiveBayesClassifier(CPNaiveBayesClassifier *this, CPMLCDB *a2, CPMLSerialization *a3, CPMLTunableData *a4)
{
  CPMLAlgorithm::CPMLAlgorithm(this, a2, a3, a4);
  *v6 = &unk_2859274C0;
  *(v6 + 192) = 0;
  *(v6 + 200) = 0;
  *(v6 + 208) = 0;
  strcpy((v6 + 8), "1.0.0");
  var0 = a2->var0;
  v8 = *(a2->var0 + 33);
  v9 = *(a2->var0 + 32);
  *(v6 + 96) = *(a2->var0 + 31);
  *(v6 + 100) = v8;
  v10 = *(var0 + 4) - *(var0 + 3);
  v11 = *(var0 + 1) - *var0;
  *(v6 + 176) = *var0;
  v12 = v10 >> 3;
  *(v6 + 152) = 0;
  *(v6 + 160) = v12;
  v13 = v11 >> 2;
  *(v6 + 168) = v13;
  if (*(*(var0 + 9) + 4 * v9))
  {
    *(this + 20) = v12 - 1;
  }

  else
  {
    *(this + 42) = v13 - 1;
  }

  CPMLCDB::getIterator();
}

void sub_24731A1BC(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    v1[25] = v4;
    operator delete(v4);
  }

  CPModelClose(v1);
  _Unwind_Resume(a1);
}

size_t CPNaiveBayesClassifier::initializeNaiveBayesMemory(CPNaiveBayesClassifier *this)
{
  if (CPMLTunableData::getNumberOfItems(*(this + 9)) < 1)
  {
    *(this + 17) = 0x4008000000000000;
  }

  else
  {
    CPMLTunableData::tDataGetDouble(*(this + 9), "laplaceParameter", this + 17);
  }

  result = malloc_type_calloc(*(this + 25), 8uLL, 0x100004000313F17uLL);
  *(this + 18) = result;
  if (*(this + 42))
  {
    result = malloc_type_calloc(*(this + 25), 8uLL, 0x80040B8603338uLL);
    *(this + 23) = result;
    if (*(this + 25))
    {
      v3 = 0;
      result = *(this + 42);
      do
      {
        *(*(this + 23) + 8 * v3) = malloc_type_calloc(result, 8uLL, 0x10040436913F5uLL);
        if (*(this + 42))
        {
          v4 = 0;
          do
          {
            *(*(*(this + 23) + 8 * v3) + 8 * v4) = malloc_type_calloc(*(*(this + 22) + 4 * v4), 8uLL, 0x100004000313F17uLL);
            ++v4;
            result = *(this + 42);
          }

          while (v4 < result);
        }

        else
        {
          result = 0;
        }

        ++v3;
      }

      while (v3 < *(this + 25));
    }
  }

  if (*(this + 20))
  {
    v5 = *(this + 25);
    if (!v5)
    {
      *(this + 25) = 2;
      CPMLLog = CPMLLog::getCPMLLog(result);
      CPMLLog::log(CPMLLog, CPML_LOG_DEBUG, "initializeNaiveBayesMemory", "resultCardinality 0\n");
      v5 = *(this + 25);
    }

    *(this + 15) = malloc_type_calloc(v5, 8uLL, 0x80040B8603338uLL);
    *(this + 16) = malloc_type_calloc(*(this + 25), 8uLL, 0x80040B8603338uLL);
    *(this + 13) = malloc_type_calloc(*(this + 25), 8uLL, 0x80040B8603338uLL);
    result = malloc_type_calloc(*(this + 25), 8uLL, 0x80040B8603338uLL);
    *(this + 14) = result;
    if (*(this + 25))
    {
      v7 = 0;
      do
      {
        *(*(this + 15) + 8 * v7) = malloc_type_calloc(*(this + 24), 8uLL, 0x100004000313F17uLL);
        *(*(this + 16) + 8 * v7) = malloc_type_calloc(*(this + 24), 8uLL, 0x100004000313F17uLL);
        *(*(this + 13) + 8 * v7) = malloc_type_calloc(*(this + 24), 8uLL, 0x100004000313F17uLL);
        result = malloc_type_calloc(*(this + 24), 8uLL, 0x100004000313F17uLL);
        *(*(this + 14) + 8 * v7++) = result;
      }

      while (v7 < *(this + 25));
    }
  }

  return result;
}

void CPNaiveBayesClassifier::CPNaiveBayesClassifier(CPNaiveBayesClassifier *this, CPMLSerialization *a2, CPMLTunableData *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  CPMLAlgorithm::CPMLAlgorithm(this, 0, a2, a3);
  *v5 = &unk_2859274C0;
  v5[24] = 0;
  v5[25] = 0;
  v5[26] = 0;
  (*(a2->var0 + 13))(a2, v5 + 1, "version", 5, 0);
  (*(a2->var0 + 10))(a2, this + 152, "totalDataCount", 1, 0);
  (*(a2->var0 + 9))(a2, this + 96, "featureVectorSpace", 1, 0);
  (*(a2->var0 + 9))(a2, this + 100, "resultCardinality", 1, 0);
  (*(a2->var0 + 10))(a2, this + 160, "continousFeatureCount", 1, 0);
  (*(a2->var0 + 9))(a2, this + 168, "discreteFeatureCount", 1, 0);
  v6 = *(this + 42);
  if (v6)
  {
    *(this + 22) = malloc_type_calloc(v6, 4uLL, 0x100004052888210uLL);
    v7 = *(this + 42);
    (*(a2->var0 + 8))(a2);
  }

  CPNaiveBayesClassifier::initializeNaiveBayesMemory(this);
  v8 = *(this + 25);
  if (*(this + 42))
  {
    if (!*(this + 25))
    {
      goto LABEL_15;
    }

    v9 = 0;
    LODWORD(v10) = 1;
    do
    {
      if (v10)
      {
        v11 = 0;
        do
        {
          sprintf(v15, "discreteFeatureTable_%d_%d", v9, v11);
          (*(a2->var0 + 10))(a2, *(*(*(this + 23) + 8 * v9) + 8 * v11), v15, *(*(this + 22) + 4 * v11), 0);
          ++v11;
          v10 = *(this + 42);
        }

        while (v11 < v10);
        v8 = *(this + 25);
      }

      ++v9;
    }

    while (v9 < v8);
  }

  if (*(this + 20) && v8)
  {
    for (i = 0; i < v8; ++i)
    {
      sprintf(v15, "datasetMean%d", i);
      sprintf(v14, "datasetVariance%d", i);
      (*(a2->var0 + 12))(a2, *(*(this + 13) + 8 * i), v15, *(this + 24), 0);
      (*(a2->var0 + 12))(a2, *(*(this + 14) + 8 * i), v14, *(this + 24), 0);
      v8 = *(this + 25);
    }
  }

LABEL_15:
  (*(a2->var0 + 10))(a2, *(this + 18), "dist_datasetOutput", v8, 0);
  v13 = *MEMORY[0x277D85DE8];
}

void sub_24731A840(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    v1[25] = v4;
    operator delete(v4);
  }

  CPModelClose(v1);
  _Unwind_Resume(a1);
}

void CPNaiveBayesClassifier::~CPNaiveBayesClassifier(CPNaiveBayesClassifier *this)
{
  *this = &unk_2859274C0;
  if (*(this + 42))
  {
    if (*(this + 25))
    {
      v2 = 0;
      do
      {
        if (*(this + 42))
        {
          v3 = 0;
          do
          {
            free(*(*(*(this + 23) + 8 * v2) + 8 * v3++));
          }

          while (v3 < *(this + 42));
        }

        free(*(*(this + 23) + 8 * v2++));
      }

      while (v2 < *(this + 25));
    }

    free(*(this + 23));
  }

  if (*(this + 20))
  {
    if (*(this + 25))
    {
      v4 = 0;
      do
      {
        free(*(*(this + 15) + 8 * v4));
        free(*(*(this + 16) + 8 * v4));
        free(*(*(this + 13) + 8 * v4));
        free(*(*(this + 14) + 8 * v4++));
      }

      while (v4 < *(this + 25));
    }

    free(*(this + 15));
    free(*(this + 16));
    free(*(this + 13));
    free(*(this + 14));
  }

  free(*(this + 18));
  v5 = *(this + 24);
  if (v5)
  {
    *(this + 25) = v5;
    operator delete(v5);
  }

  CPModelClose(this);
}

{
  CPNaiveBayesClassifier::~CPNaiveBayesClassifier(this);

  JUMPOUT(0x24C19F910);
}

uint64_t CPNaiveBayesClassifier::serialize(CPNaiveBayesClassifier *this)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(this + 11);
  v3 = strlen(this + 8);
  (*(*v2 + 56))(v2, this + 8, "version", v3, 0);
  (*(**(this + 11) + 32))(*(this + 11), this + 152, "totalDataCount", 1, 0);
  (*(**(this + 11) + 24))(*(this + 11), this + 96, "featureVectorSpace", 1, 0);
  (*(**(this + 11) + 24))(*(this + 11), this + 100, "resultCardinality", 1, 0);
  (*(**(this + 11) + 32))(*(this + 11), this + 160, "continousFeatureCount", 1, 0);
  (*(**(this + 11) + 24))(*(this + 11), this + 168, "discreteFeatureCount", 1, 0);
  v4 = *(this + 42);
  if (v4)
  {
    (*(**(this + 11) + 16))(*(this + 11), *(this + 22), "discreteCardinality", v4, 0);
    v5 = *(this + 25);
    if (!v5)
    {
      v5 = 0;
      goto LABEL_17;
    }

    v6 = 0;
    LODWORD(v7) = *(this + 42);
    do
    {
      if (v7)
      {
        v8 = 0;
        do
        {
          sprintf(v13, "discreteFeatureTable_%d_%d", v6, v8);
          (*(**(this + 11) + 32))(*(this + 11), *(*(*(this + 23) + 8 * v6) + 8 * v8), v13, *(*(this + 22) + 4 * v8), 0);
          ++v8;
          v7 = *(this + 42);
        }

        while (v8 < v7);
        v5 = *(this + 25);
      }

      ++v6;
    }

    while (v6 < v5);
  }

  else
  {
    v5 = *(this + 25);
  }

  if (*(this + 20) && v5)
  {
    for (i = 0; i < v5; ++i)
    {
      sprintf(v13, "datasetMean%d", i);
      sprintf(v12, "datasetVariance%d", i);
      (*(**(this + 11) + 48))(*(this + 11), *(*(this + 13) + 8 * i), v13, *(this + 24), 0);
      (*(**(this + 11) + 48))(*(this + 11), *(*(this + 14) + 8 * i), v12, *(this + 24), 0);
      v5 = *(this + 25);
    }
  }

LABEL_17:
  (*(**(this + 11) + 32))(*(this + 11), *(this + 18), "dist_datasetOutput", v5, 0);
  v10 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t CPNaiveBayesClassifier::train(CPNaiveBayesClassifier *this)
{
  v2 = (*(**(this + 10) + 32))(*(this + 10));
  if (v2)
  {
    v3 = v2;
    do
    {
      YHat = CPMLFeatureVector::getYHat(v3);
      ++*(*(this + 18) + 8 * YHat);
      ++*(this + 19);
      IntVector = CPMLFeatureVector::getIntVector(v3);
      v6 = *IntVector;
      v7 = *(IntVector + 8) - *IntVector;
      if (v7)
      {
        v8 = v7 >> 2;
        v9 = *(*(this + 23) + 8 * YHat);
        if (v8 <= 1)
        {
          v8 = 1;
        }

        do
        {
          v11 = *v6++;
          v10 = v11;
          v12 = *v9++;
          ++*(v12 + 8 * v10);
          --v8;
        }

        while (v8);
      }

      RealVector = CPMLFeatureVector::getRealVector(v3);
      v14 = *RealVector;
      v15 = *(RealVector + 8) - *RealVector;
      if (v15)
      {
        v16 = v15 >> 3;
        v17 = *(*(this + 15) + 8 * YHat);
        if (v16 <= 1)
        {
          v16 = 1;
        }

        do
        {
          v18 = *v14++;
          *v17 = v18 + *v17;
          ++v17;
          --v16;
        }

        while (v16);
      }

      v3 = (*(**(this + 10) + 32))(*(this + 10));
    }

    while (v3);
  }

  CPNaiveBayesClassifier::updateMean(this);
  (*(**(this + 10) + 40))(*(this + 10));
  v19 = (*(**(this + 10) + 32))(*(this + 10));
  if (v19)
  {
    v20 = v19;
    do
    {
      v21 = CPMLFeatureVector::getYHat(v20);
      v22 = CPMLFeatureVector::getRealVector(v20);
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = v24 - *v22;
      if (v24 != *v22)
      {
        v26 = *(*(this + 13) + 8 * v21);
        v27 = v25 >> 3;
        v28 = *(*(this + 16) + 8 * v21);
        if (v27 <= 1)
        {
          v29 = 1;
        }

        else
        {
          v29 = v27;
        }

        do
        {
          v30 = *v26++;
          v31 = v30;
          v32 = *v23++;
          *v28 = *v28 + (v32 - v31) * (v32 - v31);
          ++v28;
          --v29;
        }

        while (v29);
      }

      v20 = (*(**(this + 10) + 32))(*(this + 10));
    }

    while (v20);
  }

  CPNaiveBayesClassifier::updateVariance(this);
  return 0;
}

uint64_t CPNaiveBayesClassifier::updateMean(uint64_t this)
{
  v1 = *(this + 100);
  if (v1)
  {
    v2 = 0;
    v3 = *(this + 160);
    do
    {
      if (v3)
      {
        v4 = *(*(this + 120) + 8 * v2);
        v5 = *(*(this + 144) + 8 * v2);
        v6 = *(*(this + 104) + 8 * v2);
        v7 = v3;
        do
        {
          v8 = *v4++;
          *v6++ = v8 / v5;
          --v7;
        }

        while (v7);
      }

      ++v2;
    }

    while (v2 != v1);
  }

  return this;
}

uint64_t CPNaiveBayesClassifier::updateVariance(uint64_t this)
{
  v1 = *(this + 100);
  if (v1)
  {
    v2 = 0;
    v3 = *(this + 160);
    do
    {
      if (v3)
      {
        v4 = *(*(this + 128) + 8 * v2);
        v5 = (*(*(this + 144) + 8 * v2) - 1);
        v6 = *(*(this + 112) + 8 * v2);
        v7 = v3;
        do
        {
          v8 = *v4++;
          *v6++ = v8 / v5;
          --v7;
        }

        while (v7);
      }

      ++v2;
    }

    while (v2 != v1);
  }

  return this;
}

uint64_t CPNaiveBayesClassifier::eval(uint64_t a1, CPMLFeatureVector *this)
{
  v2 = this;
  IntVector = CPMLFeatureVector::getIntVector(this);
  RealVector = CPMLFeatureVector::getRealVector(v2);
  v6 = malloc_type_calloc(*(a1 + 100), 8uLL, 0x100004000313F17uLL);
  v7 = v6;
  v8 = *(a1 + 100);
  if (v8)
  {
    v62 = v2;
    v9 = *(a1 + 144);
    v10 = *(a1 + 152);
    v11 = *(a1 + 100);
    v12 = v6;
    do
    {
      v13 = *v9++;
      *v12++ = log(v13 / v10);
      --v11;
    }

    while (v11);
    v14 = 0;
    v15 = *(a1 + 160);
    v16 = *(a1 + 168);
    do
    {
      if (v15)
      {
        v17 = 0;
        v18 = *(*(a1 + 112) + 8 * v14);
        v19 = v7[v14];
        do
        {
          v20 = *(v18 + 8 * v17);
          v21 = 1.0;
          if (v20 != 0.0)
          {
            v22 = *(*RealVector + 8 * v17) - *(*(*(a1 + 104) + 8 * v14) + 8 * v17);
            v21 = exp(-(v22 * v22) / (v20 + v20)) / sqrt(v20 * 6.28318531);
          }

          v19 = v19 + log(v21);
          v7[v14] = v19;
          ++v17;
        }

        while (v15 != v17);
      }

      if (v16)
      {
        v23 = 0;
        v24 = *IntVector;
        do
        {
          v25 = *(v24 + 4 * v23);
          if ((v25 & 0x80000000) != 0)
          {
            v26 = 0.0;
          }

          else
          {
            v26 = log((*(a1 + 136) + *(*(*(*(a1 + 184) + 8 * v14) + 8 * v23) + 8 * v25)) / (*(*(a1 + 144) + 8 * v14) + *(a1 + 136) * *(*(a1 + 176) + 4 * v23)));
          }

          v7[v14] = v7[v14] + v26;
          ++v23;
        }

        while (v16 != v23);
      }

      ++v14;
    }

    while (v14 != v8);
    v2 = v62;
  }

  else
  {
    v8 = 0;
  }

  v27 = malloc_type_calloc(v8, 8uLL, 0x100004000313F17uLL);
  v28 = *(a1 + 100);
  if (v28)
  {
    for (i = 0; i != v28; ++i)
    {
      v30 = v7[i];
      v31 = 0.0;
      v32 = v28;
      v33 = v7;
      do
      {
        v34 = *v33++;
        v31 = v31 + exp(v34 - v30);
        --v32;
      }

      while (v32);
      v35 = 1.0 / v31;
      if (v31 <= 0.0)
      {
        v35 = 1.0;
      }

      v27[i] = v35;
    }

    v36 = v27;
    v37 = v7;
    do
    {
      v38 = *v36++;
      *v37++ = v38;
      --v28;
    }

    while (v28);
  }

  free(v27);
  if (*(a1 + 100))
  {
    v39 = 0;
    v40 = 0;
    v41 = *(a1 + 200);
    v42 = 0.0;
    do
    {
      v43 = v7[v39];
      if (v43 > v42)
      {
        v42 = v7[v39];
        v40 = v39;
      }

      v44 = *(a1 + 208);
      if (v41 >= v44)
      {
        v45 = *(a1 + 192);
        v46 = (v41 - v45) >> 4;
        if ((v46 + 1) >> 60)
        {
          std::vector<double>::__throw_length_error[abi:ne200100]();
        }

        v47 = v44 - v45;
        v48 = v47 >> 3;
        if (v47 >> 3 <= (v46 + 1))
        {
          v48 = v46 + 1;
        }

        if (v47 >= 0x7FFFFFFFFFFFFFF0)
        {
          v49 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v49 = v48;
        }

        if (v49)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<ProbIndex>>(a1 + 192, v49);
        }

        v50 = 16 * v46;
        *v50 = v43;
        *(v50 + 8) = v39;
        *(v50 + 12) = 0;
        v41 = 16 * v46 + 16;
        v51 = *(a1 + 192);
        v52 = *(a1 + 200) - v51;
        v53 = (16 * v46 - v52);
        memcpy(v53, v51, v52);
        v54 = *(a1 + 192);
        *(a1 + 192) = v53;
        *(a1 + 200) = v41;
        *(a1 + 208) = 0;
        if (v54)
        {
          operator delete(v54);
        }
      }

      else
      {
        *v41 = v43;
        *(v41 + 8) = v39;
        *(v41 + 12) = 0;
        v41 += 16;
      }

      *(a1 + 200) = v41;
      ++v39;
    }

    while (v39 < *(a1 + 100));
    v55 = v40;
  }

  else
  {
    v55 = 0.0;
  }

  free(v7);
  v56 = *(a1 + 192);
  v57 = *(a1 + 200);
  v58 = a1 + 192;
  v59 = 126 - 2 * __clz((v57 - v56) >> 4);
  v63 = sortProbIndexClassic;
  if (v57 == v56)
  {
    v60 = 0;
  }

  else
  {
    v60 = v59;
  }

  std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(ProbIndex,ProbIndex),ProbIndex*,false>(v56, v57, &v63, v60, 1);
  CPMLFeatureVector::setYHat(v2, v55);
  CPMLFeatureVector::setYHatProbList(v2, v58);
  *(v58 + 8) = *v58;
  return 0;
}

void CPMLMemoryIterator::CPMLMemoryIterator(CPMLMemoryIterator *this, int a2, int a3, double **a4, CPMLTunableData *a5)
{
  CPMLIterator::CPMLIterator(this);
  *v5 = &unk_285927778;
  *(v5 + 88) = 0;
  operator new();
}

void sub_24731B518(_Unwind_Exception *a1)
{
  MEMORY[0x24C19F910](v2, 0x1020C4087C48359);
  CPMLIterator::~CPMLIterator(v1);
  _Unwind_Resume(a1);
}

void CPMLMemoryIterator::~CPMLMemoryIterator(CPMLIterator *this)
{
  *this = &unk_285927778;
  v2 = *(this + 13);
  if (v2)
  {
    CPMLFeatureVector::~CPMLFeatureVector(v2);
    MEMORY[0x24C19F910]();
  }

  *(this + 13) = 0;

  CPMLIterator::~CPMLIterator(this);
}

{
  CPMLMemoryIterator::~CPMLMemoryIterator(this);

  JUMPOUT(0x24C19F910);
}

uint64_t CPMLMemoryIterator::iterateFirst(CPMLMemoryIterator *this)
{
  if (!*(this + 12))
  {
    return 0;
  }

  if (*(this + 22) == *(this + 21))
  {
    return 0;
  }

  CPMLFeatureVector::resetAll(*(this + 13));
  LODWORD(v3) = *(this + 20);
  if (v3 >= 1)
  {
    v4 = 0;
    do
    {
      v5 = *(this + 13);
      v6 = *(*(*(this + 12) + 8 * v4++) + 8 * *(this + 22));
      if (v4 >= v3)
      {
        CPMLFeatureVector::setYHat(v5, v6);
      }

      else
      {
        CPMLFeatureVector::insertRealVClass(v5, v6);
      }

      v3 = *(this + 20);
    }

    while (v4 < v3);
  }

  ++*(this + 22);
  return *(this + 13);
}

double CPMLNaiveBayesSuggestionsAdaptor::get_cx_given_y(CPMLNaiveBayesSuggestionsAdaptor *this, int a2, unsigned int a3, int a4, double *a5)
{
  v9 = a4;
  v14 = a4;
  if (std::__hash_table<std::__hash_value_type<unsigned long long,double>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,double>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,double>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,double>>>::find<unsigned long long>(this + 14, &v14))
  {
    v13 = v9;
    v14 = &v13;
    v10 = std::__hash_table<std::__hash_value_type<unsigned long long,double>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,double>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,double>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,double>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(this + 14, &v13)[3];
  }

  else
  {
    v10 = 0;
  }

  *a5 = v10;
  v13 = v9 | (a3 << 32);
  v11 = std::__hash_table<std::__hash_value_type<unsigned long long,double>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,double>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,double>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,double>>>::find<unsigned long long>(this + 9, &v13);
  if (a3 == -1 || a4 == -1)
  {
    *a5 = 0.0;
  }

  else
  {
    if (v11)
    {
      v14 = &v13;
      return *(std::__hash_table<std::__hash_value_type<unsigned long long,double>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,double>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,double>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,double>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 9, &v13) + 3);
    }

    v14 = &v13;
    std::__hash_table<std::__hash_value_type<unsigned long long,double>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,double>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,double>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,double>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 9, &v13)[3] = 0;
  }

  return 0.0;
}

void CPMLNaiveBayesSuggestionsAdaptor::setCacheSize(CPMLNaiveBayesSuggestionsAdaptor *this, int a2, int a3)
{
  v37 = *MEMORY[0x277D85DE8];
  CPMLNaiveBayesAdaptor::setCacheSize(this, a2, a3);
  v35 = 0.0;
  v6 = sqlite3_mprintf("select count(*) from xcol0;");
  (*(**(this + 1) + 224))(*(this + 1), &v35, v6);
  sqlite3_free(v6);
  if (v35 > (a3 * a2))
  {
    v35 = (a3 * a2);
  }

  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v33 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v33 - v14;
  v16 = sqlite3_mprintf("select xMap from xcol0;");
  (*(**(this + 1) + 208))(*(this + 1), v10, v35, v16);
  sqlite3_free(v16);
  v17 = sqlite3_mprintf("select yMap from xcol0;");
  (*(**(this + 1) + 208))(*(this + 1), v13, v35, v17);
  sqlite3_free(v17);
  v18 = sqlite3_mprintf("select xyCount from xcol0;");
  (*(**(this + 1) + 216))(*(this + 1), v15, v35, v18);
  sqlite3_free(v18);
  if (v35)
  {
    v19 = 0;
    do
    {
      v34 = *&v13[8 * v19] | (*&v10[8 * v19] << 32);
      v20 = *&v15[8 * v19];
      v36 = &v34;
      std::__hash_table<std::__hash_value_type<unsigned long long,double>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,double>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,double>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,double>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 9, &v34)[3] = v20;
      ++v19;
    }

    while (v19 < v35);
  }

  v21 = sqlite3_mprintf("select count(*) from xCardinality0;");
  (*(**(this + 1) + 224))(*(this + 1), &v35, v21);
  sqlite3_free(v21);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = (&v33 - ((v24 + 15) & 0xFFFFFFFF0));
  MEMORY[0x28223BE20](v23);
  v27 = &v33 - v26;
  v28 = sqlite3_mprintf("select yMap from xCardinality0;");
  (*(**(this + 1) + 208))(*(this + 1), v25, v35, v28);
  sqlite3_free(v28);
  v29 = sqlite3_mprintf("select xCardinality from xCardinality0;");
  (*(**(this + 1) + 216))(*(this + 1), v27, v35, v29);
  sqlite3_free(v29);
  if (v35)
  {
    v30 = 0;
    do
    {
      v31 = *&v27[8 * v30];
      v36 = v25;
      std::__hash_table<std::__hash_value_type<unsigned long long,double>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,double>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,double>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,double>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 14, v25)[3] = v31;
      ++v30;
      ++v25;
    }

    while (v30 < v35);
  }

  v32 = *MEMORY[0x277D85DE8];
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,double>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,double>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,double>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,double>>>::find<unsigned long long>(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
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
      if (v8 == v3)
      {
        if (result[2] == v3)
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

uint64_t CPMLlinearSVM::TRON::info(uint64_t (**this)(char *), const char *a2, ...)
{
  va_start(va, a2);
  v6 = *MEMORY[0x277D85DE8];
  vsprintf(v5, a2, va);
  result = this[3](v5);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CPMLlinearSVM::TRON::TRON(uint64_t result, uint64_t a2, int a3, double a4)
{
  *result = a4;
  *(result + 8) = a3;
  *(result + 16) = a2;
  *(result + 24) = default_print;
  return result;
}

uint64_t default_print(const char *a1)
{
  v1 = MEMORY[0x277D85E08];
  fputs(a1, *MEMORY[0x277D85E08]);
  v2 = *v1;

  return fflush(v2);
}

void CPMLlinearSVM::TRON::tron(CPMLlinearSVM::TRON *this, double *a2)
{
  n = (*(**(this + 2) + 24))(*(this + 2));
  da = 1.0;
  incx = 1;
  operator new[]();
}

void CPMLlinearSVM::TRON::trcg(CPMLlinearSVM::TRON *this, double a2, double *a3, double *a4, double *a5)
{
  incx = 1;
  n = (*(**(this + 2) + 24))(*(this + 2));
  v5 = 1.0;
  operator new[]();
}

void CPMLlinearSVM::TRON::norm_inf(CPMLlinearSVM::TRON *this, int a2, double *a3)
{
  v3 = fabs(*a3);
  if (a2 >= 2)
  {
    v4 = a3 + 1;
    v5 = a2 - 1;
    do
    {
      v6 = *v4++;
      v7 = fabs(v6);
      if (v7 >= v3)
      {
        v3 = v7;
      }

      --v5;
    }

    while (v5);
  }
}

void sub_24731CC10(_Unwind_Exception *a1)
{
  v3 = v2;
  MEMORY[0x24C19F910](v3, v1);
  _Unwind_Resume(a1);
}

CPMLKMeansAnalysisHandler *CPMLDestroyKMEANSAnalysis(CPMLKMeansAnalysisHandler *result)
{
  if (result)
  {
    CPMLKMeansAnalysisHandler::~CPMLKMeansAnalysisHandler(result);

    JUMPOUT(0x24C19F910);
  }

  return result;
}

uint64_t CPMLKMeansAnalysisHandler::cluster(CPMLKMeansAnalysisHandler *this, int **a2)
{
  v3 = *(this + 2);
  v2 = *(this + 3);
  v4 = *(v3 + 32);
  if (!v2)
  {
    operator new[]();
  }

  *a2 = v2;
  return v4;
}

uint64_t CPMLKMeansAnalysisHandler::centers(CPMLKMeansAnalysisHandler *this, double **a2)
{
  v2 = *(this + 2);
  v3 = v2[2];
  v4 = v2[3];
  v5 = *(this + 4);
  if (!v5)
  {
    v6 = *v2;
    operator new[]();
  }

  *a2 = v5;
  return (v4 * v3);
}

uint64_t CPMLKMeansAnalysisHandler::withinss(CPMLKMeansAnalysisHandler *this, double **a2)
{
  v2 = *(this + 2);
  v3 = v2[2];
  v4 = *(this + 5);
  if (!v4)
  {
    v5 = *v2;
    operator new[]();
  }

  *a2 = v4;
  return v3;
}

double CPMLKMeansAnalysisHandler::totalWithinss(CPMLKMeansAnalysisHandler *this)
{
  v6 = 0;
  v1 = CPMLKMeansAnalysisHandler::withinss(this, &v6);
  if (v1 < 1)
  {
    return 0.0;
  }

  v2 = v6;
  v3 = v1;
  result = 0.0;
  do
  {
    v5 = *v2++;
    result = result + v5;
    --v3;
  }

  while (v3);
  return result;
}

uint64_t CPMLKMeansAnalysisHandler::size(CPMLKMeansAnalysisHandler *this, int **a2)
{
  v2 = *(*(this + 2) + 16);
  v3 = *(this + 6);
  if (!v3)
  {
    operator new[]();
  }

  *a2 = v3;
  return v2;
}

void CPMLKMeansAnalysisHandler::CPMLKMeansAnalysisHandler(CPMLKMeansAnalysisHandler *this, CPMLAlgorithm *a2)
{
  CPMLAnalysisHandler::CPMLAnalysisHandler(this);
  *(v4 + 24) = 0u;
  *(v4 + 40) = 0u;
  *v4 = &unk_285927260;
  *(v4 + 8) = a2;
  *(this + 2) = (*(a2->var0 + 11))(a2);
}

void CPMLKMeansAnalysisHandler::~CPMLKMeansAnalysisHandler(CPMLKMeansAnalysisHandler *this)
{
  *this = &unk_285927260;
  v2 = *(this + 3);
  if (v2)
  {
    MEMORY[0x24C19F910](v2, 0x1000C4052888210);
  }

  v3 = *(this + 4);
  if (v3)
  {
    MEMORY[0x24C19F910](v3, 0x1000C4000313F17);
  }

  v4 = *(this + 5);
  if (v4)
  {
    MEMORY[0x24C19F910](v4, 0x1000C4000313F17);
  }

  v5 = *(this + 6);
  if (v5)
  {
    MEMORY[0x24C19F910](v5, 0x1000C4052888210);
  }

  v6 = *(this + 1);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  CPModelClose(this);
}

void CPMLOnlineSvm::Update()
{
  __assert_rtn("operator()", "matrix-base-impl.h", 88, "row < this->_rows && row index exceeds matrix dimension");
}

{
  __assert_rtn("operator()", "matrix-base-impl.h", 89, "col < this->_cols && col index exceeds matrix dimension");
}

void CPLogisticRegressionClassfier::ComputeSingleGradient()
{
  __assert_rtn("ComputeSingleGradient", "CPLogisticRegression.c", 290, "allBeta.size() == gradient.size()");
}

{
  __assert_rtn("ComputeSingleGradient", "CPLogisticRegression.c", 289, "responseLevel >= 0 && responseLevel <= numResponse-1");
}

void CPMLNaiveBayes::set_decay_rate()
{
  __assert_rtn("set_decay_rate", "CPMLNaiveBayes.cpp", 79, "rate <= 1");
}

{
  __assert_rtn("set_decay_rate", "CPMLNaiveBayes.cpp", 78, "rate > 0");
}

uint64_t std::istream::operator>>()
{
  return MEMORY[0x2821F7830]();
}

{
  return MEMORY[0x2821F7840]();
}

{
  return MEMORY[0x2821F7858]();
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78E8]();
}

{
  return MEMORY[0x2821F7900]();
}

{
  return MEMORY[0x2821F7910]();
}

{
  return MEMORY[0x2821F7918]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

uint64_t operator<<()
{
  return MEMORY[0x282153010]();
}

{
  return MEMORY[0x282153018]();
}

{
  return MEMORY[0x282153020]();
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}