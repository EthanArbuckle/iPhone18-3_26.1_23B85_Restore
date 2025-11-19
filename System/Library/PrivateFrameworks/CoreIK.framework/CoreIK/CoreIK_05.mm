float std::__floyd_sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,FIK::IKArrayIterator<std::pair<float,unsigned long>>>(uint64_t a1, uint64_t a2, uint64_t a3)
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
      if (*a1 < v7 || v7 >= *a1 && *(a1 + 8) < *(a1 + 24))
      {
        a1 += 16;
        v3 = v6;
      }
    }

    result = *a1;
    *v4 = *a1;
    *(v4 + 8) = *(a1 + 8);
  }

  while (v3 <= (a3 - 2) / 2);
  return result;
}

uint64_t std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,FIK::IKArrayIterator<std::pair<float,unsigned long>>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = result + 16 * (v4 >> 1);
    v7 = *v6;
    v8 = *(a2 - 16);
    if (*v6 >= v8)
    {
      if (v8 < v7)
      {
        return result;
      }

      v10 = *(v6 + 8);
      v9 = *(a2 - 8);
      if (v10 >= v9)
      {
        return result;
      }
    }

    else
    {
      v9 = *(a2 - 8);
      v10 = *(v6 + 8);
    }

    *(a2 - 16) = v7;
    *(a2 - 8) = v10;
    if (v4 >= 2)
    {
      while (1)
      {
        v12 = (v5 - 1) / 2;
        v11 = result + 16 * v12;
        v13 = *v11;
        if (*v11 >= v8)
        {
          if (v8 < v13)
          {
            break;
          }

          v14 = *(v11 + 8);
          if (v14 >= v9)
          {
            break;
          }
        }

        else
        {
          v14 = *(v11 + 8);
        }

        *v6 = v13;
        *(v6 + 8) = v14;
        v6 = result + 16 * v12;
        v15 = v5 > 2;
        v5 = (v5 - 1) / 2;
        if (!v15)
        {
          goto LABEL_11;
        }
      }
    }

    v11 = v6;
LABEL_11:
    *v11 = v8;
    *(v11 + 8) = v9;
  }

  return result;
}

void FIK::Characterisation::~Characterisation(FIK::Characterisation *this)
{
  *this = &unk_28589C010;
  if (*(this + 2))
  {
    (*(**(this + 3) + 24))(*(this + 3), *(this + 1), 0, 8);
    *(this + 1) = 0;
    *(this + 2) = 0;
  }
}

uint64_t *std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::__emplace_unique_key_args<int,std::pair<int const,unsigned long>>(uint64_t a1, int *a2)
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

uint64_t *std::__tree<std::__value_type<int,FIK::IKArray<unsigned long>>,std::__map_value_compare<int,std::__value_type<int,FIK::IKArray<unsigned long>>,std::less<int>,true>,std::allocator<std::__value_type<int,FIK::IKArray<unsigned long>>>>::__emplace_unique_key_args<int,std::pair<int const,FIK::IKArray<unsigned long>>>(uint64_t a1, int *a2)
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

void *std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::pair<unsigned long const,unsigned long>>(uint64_t a1, unint64_t *a2)
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
      v5 = v2[4];
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

void *FIK::GenericSolver::initEstimationSolver(FIK::GenericSolver *this)
{
  result = FIK::defaultAllocator(this);
  v9[0] = 0;
  v9[1] = 0;
  v10 = 0;
  v11 = result;
  v3 = *(this + 46);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    for (i = 0; i < v3; ++i)
    {
      v8 = *(this + 48) + v4;
      if (*(v8 + 233) == 1 && (*(v8 + 52) & 1) == 0)
      {
        result = FIK::IKArray<FIK::Segment *>::reserve(v9, v6 + 1);
        v5 = v10;
        *(v10 + 8 * v9[0]) = i;
        v6 = ++v9[0];
        v3 = *(this + 46);
      }

      v4 += 240;
    }

    if (v6)
    {
      operator new();
    }

    v9[0] = 0;
    if (v5)
    {
      return (*(*v11 + 24))(v11, v5, 0, 8);
    }
  }

  return result;
}

void FIK::GenericSolver::initNode(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 16);
  operator new();
}

__n128 FIK::GenericSolver::InitPrevTaskTargets(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 56);
  if (v3)
  {
    v7 = *(a1 + 72);
    v8 = v7 + 576 * v3;
    do
    {
      FIK::RTGameTask::GenerateAnimTarget(v7, a2, a3, a1 + 192);
      result = *(v7 + 464);
      v10 = *(v7 + 480);
      *(v7 + 512) = result;
      *(v7 + 528) = v10;
      v7 += 576;
    }

    while (v7 != v8);
  }

  return result;
}

void FIK::GenericSolver::GenericSolver(uint64_t a1, uint64_t a2, __int128 *a3)
{
  *a1 = &unk_28589C040;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = xmmword_245A01E80;
  *(a1 + 48) = 1015222895;
  v6 = FIK::defaultAllocator(a1);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = v6;
  *(a1 + 96) = 1;
  *(a1 + 100) = 257;
  *(a1 + 102) = 1;
  *(a1 + 112) = xmmword_245A022C0;
  *(a1 + 128) = xmmword_245A022D0;
  *(a1 + 144) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 160) = 0;
  IKString::IKString((a1 + 192), a2);
  v7 = *(a2 + 24);
  *(a1 + 228) = *(a2 + 36);
  *(a1 + 216) = v7;
  v8 = *(a2 + 80);
  *(a1 + 256) = *(a2 + 64);
  *(a1 + 272) = v8;
  *(a1 + 288) = *(a2 + 96);
  v9 = *(a2 + 120);
  *(a1 + 304) = *(a2 + 112);
  *(a1 + 312) = v9;
  v10 = *(a2 + 128);
  *(a1 + 323) = *(a2 + 131);
  *(a1 + 320) = v10;
  *(a1 + 336) = *(a2 + 144);
  *(a1 + 352) = *(a2 + 160);
  FIK::IKArray<FIK::GameTask>::IKArray((a1 + 368), (a2 + 176));
  FIK::IKArray<FIK::RigBone>::IKArray((a1 + 400), (a2 + 208));
  FIK::IKArray<IKString>::IKArray((a1 + 432), (a2 + 240));
  FIK::IKArray<int>::IKArray((a1 + 464), (a2 + 272));
  FIK::IKArray<FIK::AimSetup>::IKArray((a1 + 496), (a2 + 304));
  *(a1 + 528) = 0;
  if (*(a1 + 400) <= 0)
  {
    FIK::GenericSolver::GenericSolver();
  }

  *(a1 + 268) = 15;
  v11 = *a3;
  v12 = *(a3 + 2);
  FIK::GenericSolver::initNode(a1, &v11);
}

void FIK::GenericSolver::GenericSolver(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_28589C040;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = xmmword_245A01E80;
  *(a1 + 48) = 1015222895;
  v4 = FIK::defaultAllocator(a1);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = v4;
  *(a1 + 96) = 1;
  *(a1 + 100) = 257;
  *(a1 + 102) = 1;
  *(a1 + 112) = xmmword_245A022C0;
  *(a1 + 128) = xmmword_245A022D0;
  *(a1 + 144) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 160) = 0;
  IKString::IKString((a1 + 192), a2);
  v5 = *(a2 + 24);
  *(a1 + 228) = *(a2 + 36);
  *(a1 + 216) = v5;
  v6 = *(a2 + 80);
  *(a1 + 256) = *(a2 + 64);
  *(a1 + 272) = v6;
  *(a1 + 288) = *(a2 + 96);
  v7 = *(a2 + 120);
  *(a1 + 304) = *(a2 + 112);
  *(a1 + 312) = v7;
  v8 = *(a2 + 128);
  *(a1 + 323) = *(a2 + 131);
  *(a1 + 320) = v8;
  *(a1 + 336) = *(a2 + 144);
  *(a1 + 352) = *(a2 + 160);
  FIK::IKArray<FIK::GameTask>::IKArray((a1 + 368), (a2 + 176));
  FIK::IKArray<FIK::RigBone>::IKArray((a1 + 400), (a2 + 208));
  FIK::IKArray<IKString>::IKArray((a1 + 432), (a2 + 240));
  FIK::IKArray<int>::IKArray((a1 + 464), (a2 + 272));
  FIK::IKArray<FIK::AimSetup>::IKArray((a1 + 496), (a2 + 304));
  *(a1 + 528) = 0;
  if (*(a1 + 400) <= 0)
  {
    FIK::GenericSolver::GenericSolver();
  }

  v9[0] = 0;
  v9[16] = 0;
  FIK::GenericSolver::initNode(a1, v9);
}

void FIK::GenericSolver::~GenericSolver(FIK::GenericSolver *this)
{
  *this = &unk_28589C040;
  v2 = *(this + 22);
  if (v2)
  {
    FIK::IKSolver::~IKSolver(v2);
    MEMORY[0x245D77F60]();
  }

  *(this + 22) = 0;
  v3 = *(this + 66);
  *(this + 66) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  FIK::IKArray<FIK::AimSetup>::~IKArray(this + 496);
  *(this + 58) = 0;
  v4 = *(this + 60);
  if (v4)
  {
    (*(**(this + 61) + 24))(*(this + 61), v4, 0, 8);
  }

  FIK::IKArray<IKString>::~IKArray(this + 432);
  FIK::IKArray<FIK::RigBone>::~IKArray(this + 400);
  FIK::IKArray<FIK::GameTask>::~IKArray(this + 368);
  if (*(this + 25))
  {
    (*(**(this + 26) + 24))(*(this + 26), *(this + 24), 0, 8);
    *(this + 24) = 0;
    *(this + 25) = 0;
  }

  FIK::IKArray<FIK::RTGameTask>::~IKArray(this + 56);
}

{
  FIK::GenericSolver::~GenericSolver(this);

  JUMPOUT(0x245D77F60);
}

uint64_t FIK::GenericSolver::GetTaskInstancePtr(FIK::GenericSolver *this, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0 || *(this + 14) <= a2)
  {
    return 0;
  }

  else
  {
    return *(this + 9) + 576 * a2;
  }
}

uint64_t FIK::GenericSolver::AddTaskToSolver(uint64_t a1, uint64_t a2)
{
  v57 = *MEMORY[0x277D85DE8];
  v20 = &unk_28589BD98;
  v21 = *(a2 + 8);
  IKString::IKString(v22, (a2 + 24), *(a2 + 40));
  IKString::IKString(&v24, (a2 + 48), *(a2 + 64));
  IKString::IKString(&v27, (a2 + 72), *(a2 + 88));
  v30 = *(a2 + 96);
  v31 = *(a2 + 112);
  v4 = *(a2 + 144);
  v32 = *(a2 + 128);
  v33 = v4;
  v5 = *(a2 + 176);
  v34 = *(a2 + 160);
  v35 = v5;
  v6 = *(a2 + 208);
  v36 = *(a2 + 192);
  v37 = v6;
  v7 = *(a2 + 240);
  v38 = *(a2 + 224);
  v39 = v7;
  v8 = *(a2 + 272);
  v40 = *(a2 + 256);
  v41 = v8;
  v20 = &unk_28589C2E8;
  v42 = *(a2 + 288);
  v9 = *(a2 + 320);
  v43 = *(a2 + 304);
  v44 = v9;
  v10 = *(a2 + 352);
  v45 = *(a2 + 336);
  v46 = v10;
  v11 = *(a2 + 384);
  v47 = *(a2 + 368);
  v48 = v11;
  *(v51 + 14) = *(a2 + 446);
  v13 = *(a2 + 416);
  v12 = *(a2 + 432);
  v49 = *(a2 + 400);
  v50 = v13;
  v14 = *(a2 + 464);
  v15 = *(a2 + 480);
  v51[0] = v12;
  v51[2] = v14;
  v51[3] = v15;
  v52 = *(a2 + 496);
  v16 = *(a2 + 528);
  v53 = *(a2 + 512);
  v54 = v16;
  v55 = *(a2 + 544);
  v56 = *(a2 + 560);
  v17 = FIK::GenericSolver::AddTaskToSolverInternal(a1, &v20);
  if (v28)
  {
    (*(*v29 + 24))(v29, v27, 0, 8);
    v27 = 0;
    v28 = 0;
  }

  if (v25)
  {
    (*(*v26 + 24))(v26, v24, 0, 8);
    v24 = 0;
    v25 = 0;
  }

  v20 = &unk_28589BD98;
  if (v22[1])
  {
    (*(*v23 + 24))(v23, v22[0], 0, 8);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t FIK::GenericSolver::AddTaskToSolverInternal(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 80);
  if (v4)
  {
    v5 = *(a2 + 72);
  }

  else
  {
    v5 = &unk_245A04BAE;
  }

  v6 = FIK::IKRigUtils::getBoneIndex<FIK::RigBone,void>(v5, v4, (a1 + 400));
  v7 = FIK::IKRigUtils::GetTaskIndexByName<FIK::GameRig>(a2 + 48, a1 + 192);
  result = 0xFFFFFFFFLL;
  if (v7 == -1 && v6 != -1)
  {
    *(a2 + 96) = v6;
    if (FIK::RTGameTask::AddSolverTask(a2, *(a1 + 176)))
    {
      Segment = FIK::IKSolver::getSegment(*(a1 + 176), (a2 + 72));
      *(a2 + 512) = *(*(*Segment + 544))(Segment);
      *(a2 + 528) = *(*(*Segment + 528))(Segment);
      FIK::IKArray<FIK::GameTask>::push_back<FIK::RTGameTask &,void>(a1 + 368, a2);
      FIK::IKArray<FIK::RTGameTask>::push_back<FIK::RTGameTask,void>((a1 + 56), a2);
      return (*(a1 + 56) - 1);
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

BOOL FIK::GenericSolver::RemoveTaskFromSolver(uint64_t a1, uint64_t a2)
{
  FIK::IKArray<FIK::RTGameTask>::IKArray(v12, (a1 + 56));
  FIK::IKArray<FIK::RTGameTask>::destroyBufferObjects(a1 + 64, *(a1 + 56));
  *(a1 + 56) = 0;
  FIK::IKArray<FIK::GameTask>::destroyBufferObjects(a1 + 376, *(a1 + 368));
  *(a1 + 368) = 0;
  if (v12[0])
  {
    v4 = 0;
    v5 = v12[2];
    v6 = 576 * v12[0];
    do
    {
      v7 = *(a2 + 8);
      if (v7)
      {
        v8 = *a2;
      }

      else
      {
        v8 = &unk_245A04BAE;
      }

      v9 = *(v5 + 7);
      if (v9)
      {
        v10 = *(v5 + 6);
      }

      else
      {
        v10 = &unk_245A04BAE;
      }

      if (v9 == v7 && !memcmp(v10, v8, v7))
      {
        v4 = FIK::RTGameTask::RemoveSolverTask(v5, *(a1 + 176));
      }

      else
      {
        FIK::IKArray<FIK::RTGameTask>::push_back<FIK::RTGameTask&,void>(a1 + 56, v5);
        FIK::IKArray<FIK::GameTask>::push_back<FIK::RTGameTask &,void>(a1 + 368, v5);
      }

      v5 = (v5 + 576);
      v6 -= 576;
    }

    while (v6);
  }

  else
  {
    v4 = 0;
  }

  FIK::IKArray<FIK::RTGameTask>::~IKArray(v12);
  return v4;
}

uint64_t FIK::IKArray<FIK::RTGameTask>::push_back<FIK::RTGameTask&,void>(uint64_t a1, const FIK::RTGameTask *a2)
{
  FIK::IKArray<FIK::RTGameTask>::reserve(a1, *a1 + 1);
  result = FIK::RTGameTask::RTGameTask((*(a1 + 16) + 576 * *a1), a2, *(a1 + 24));
  ++*a1;
  return result;
}

void FIK::IKArray<FIK::GameTask>::push_back<FIK::RTGameTask &,void>(uint64_t a1, uint64_t a2)
{
  FIK::IKArray<FIK::GameTask>::reserve(a1, *a1 + 1);
  FIK::GameTask::GameTask((*(a1 + 16) + 240 * *a1), a2 + 48, *(a1 + 24));
  ++*a1;
}

__n128 FIK::GenericSolver::SetWorldToSolverTransform(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = *a2;
  result = *(a2 + 16);
  *(a1 + 32) = result;
  return result;
}

void FIK::GenericSolver::copyTaskTargetParamsTo(FIK::GenericSolver *this, FIK::GenericSolver *a2)
{
  if (*(this + 7))
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(a2 + 9);
      v7 = *(this + 9) + v4;
      if (*(v7 + 281) == 1)
      {
        v8 = *(v7 + 420);
        v9 = 0uLL;
        FIK::RTGameTask::SetLookAtTargetParams(v6 + v4, (v7 + 368), &v9, v8, 0.0);
      }

      else
      {
        FIK::RTGameTask::SetTargetParams(v6 + v4, (v7 + 336), *(v7 + 416), *(v7 + 420));
      }

      ++v5;
      v4 += 576;
    }

    while (*(this + 7) > v5);
  }
}

uint64_t FIK::GenericSolver::configureAndSolve(uint64_t a1, uint64_t *a2)
{
  FIK::GenericSolver::ConfigureSegments(a1, a2);
  FIK::GenericSolver::ConfigureTaskTargets(a1, a2);
  v5 = 2;
  FIK::IKSolver::solve(*(a1 + 176), *(a1 + 268), &v5);
  return v5;
}

uint64_t FIK::GenericSolver::ConfigureSegments(uint64_t a1, void *a2)
{
  v4 = a2[1];
  result = FIK::IKSolver::numSegments(*(a1 + 176));
  if (v4 != result)
  {
    result = FIK::GenericSolver::ConfigureSegments();
  }

  if (*(a1 + 400) >= 1)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = *a2 + v7;
      Segment = FIK::IKSolver::getSegment(*(a1 + 176), v8);
      (*(*Segment + 200))(Segment, v9 + 16);
      result = (*(*Segment + 400))(Segment);
      if ((result & 1) == 0)
      {
        result = (*(*Segment + 248))(Segment, v9);
      }

      v11 = *(a1 + 416);
      if ((*(v11 + v6 + 105) & 1) != 0 || (*(v11 + v6 + 106) & 1) != 0 || *(v11 + v6 + 107) == 1)
      {
        result = (*(*Segment + 832))(Segment);
      }

      ++v8;
      v7 += 32;
      v6 += 256;
    }

    while (v8 < *(a1 + 400));
  }

  return result;
}

uint64_t FIK::GenericSolver::ConfigureTaskTargets(uint64_t result, uint64_t *a2)
{
  v2 = result;
  v3 = *(result + 56);
  if (v3)
  {
    v5 = *(result + 72);
    v6 = 576 * v3;
    do
    {
      FIK::RTGameTask::GenerateAnimTarget(v5, *a2, a2[1], &v2[12]);
      FIK::RTGameTask::ConvertTargetSpace(v5, v2->i32[2], v2 + 1, v7);
      FIK::RTGameTask::GenerateTarget(v5, a2, &v2[12]);
      FIK::RTGameTask::DoAlphaBlend(v5);
      FIK::RTGameTask::BlendTaskTarget(v5, v2[3].f32[0]);
      result = FIK::RTGameTask::SetSolverTaskTarget(v5);
      v5 += 36;
      v6 -= 576;
    }

    while (v6);
  }

  if (v2[17].i32[3] == 1)
  {
    if (v2->i32[2] == 1)
    {
      FIK::RTBalanceTask::ConvertTargetWorldToSolver(v2 + 6, v2 + 1);
    }

    return FIK::RTBalanceTask::SetSolverTaskTarget(&v2[6]);
  }

  return result;
}

void FIK::GenericSolver::extractEstimatedPose(FIK::GenericSolver *this)
{
  *&v14[5] = *MEMORY[0x277D85DE8];
  if (*(this + 7))
  {
    v2 = 0;
    v3 = *(this + 66);
    v4 = 320;
    do
    {
      v5 = *(this + 9);
      if (*(v5 + v4 - 32) == 1)
      {
        v6 = *(v3 + 72) + v4;
        v7 = *(v6 - 304);
        if ((v7 || (v7 = *(v6 - 312)) != 0) && (v8 = (*(*&v7[*(*v7 - 264)] + 200))(&v7[*(*v7 - 264)])) != 0)
        {
          v9 = (*(*v8 + 512))(v8);
          v10 = (v5 + v4);
          *(v10 - 1) = *v9;
          *v10 = v9[1];
        }

        else
        {
          v11 = ikinemaLogObject()[1];
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            FIK::GenericSolver::extractEstimatedPose(v13, v14, v11);
          }
        }
      }

      ++v2;
      v4 += 576;
    }

    while (*(this + 7) > v2);
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t FIK::GenericSolver::Solve(FIK::GenericSolver *this, uint64_t *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a2[1] != *(this + 100))
  {
    FIK::GenericSolver::Solve();
  }

  v4 = *(this + 66);
  if (v4)
  {
    FIK::GenericSolver::copyTaskTargetParamsTo(this, *(this + 66));
    v5 = FIK::GenericSolver::configureAndSolve(v4, a2);
    switch(v5)
    {
      case 2:
        v7 = ikinemaLogObject()[1];
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          FIK::GenericSolver::Solve(v7);
        }

        break;
      case 1:
        v6 = ikinemaLogObject()[1];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v11 = 136315138;
          v12 = "Solve";
          _os_log_impl(&dword_245976000, v6, OS_LOG_TYPE_DEFAULT, "%s: Estimation solver auto-tune triggered.", &v11, 0xCu);
        }

        break;
      case 0:
        FIK::GenericSolver::extractEstimatedPose(this);
        break;
    }
  }

  if (*(this + 22))
  {
    v8 = FIK::GenericSolver::configureAndSolve(this, a2);
    FIK::GenericSolver::PopulateOutArray(this, a2);
  }

  else
  {
    v8 = 2;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

unint64_t FIK::GenericSolver::PopulateOutArray(uint64_t a1, void *a2)
{
  result = FIK::IKSolver::numSegments(*(a1 + 176));
  if (result)
  {
    v5 = 0;
    for (i = 0; i < result; v5 = ++i)
    {
      Segment = FIK::IKSolver::getSegment(*(a1 + 176), i);
      v8 = (*(*Segment + 344))(Segment);
      *&v9 = *v8;
      DWORD2(v9) = *(v8 + 8);
      v12 = v9;
      v10 = *(*(*Segment + 312))(Segment);
      v11 = (*a2 + 32 * v5);
      *v11 = v12;
      v11[1] = v10;
      result = FIK::IKSolver::numSegments(*(a1 + 176));
    }
  }

  return result;
}

uint64_t FIK::GenericSolver::Solve(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v4[0] = a2[2];
  v4[1] = v2;
  return (*(*a1 + 32))(a1, v4);
}

uint64_t FIK::GenericSolver::SetSolverProperties(uint64_t a1, float32x4_t *a2)
{
  FIK::IKSolver::setZMP(*(a1 + 176), a2 + 2);
  FIK::IKSolver::useDefaultZMP(*(a1 + 176), a2[3].u8[5]);
  FIK::IKSolver::setMomentsWeight(*(a1 + 176), a2[3].f32[0]);
  FIK::IKSolver::setTranslationWeight(*(a1 + 176), 1.0);
  FIK::IKSolver::setPrecision(*(a1 + 176), a2[1].f32[0]);
  FIK::IKSolver::setFigureMass(*(a1 + 176), a2[3].f32[2]);
  FIK::IKSolver::setLimitsGain(*(a1 + 176), a2[1].f32[1]);
  FIK::IKSolver::setPGain(*(a1 + 176), a2->f32[0]);
  FIK::IKSolver::setSolutionTolerance(*(a1 + 176), a2->f32[1]);
  FIK::IKSolver::setRetargetingGain(*(a1 + 176), a2->f32[2]);
  FIK::IKSolver::enableShadowPosing(*(a1 + 176), a2[1].u8[9]);
  v4 = *(a1 + 176);
  v5 = a2[1].i8[10];

  return FIK::IKSolver::setAddErrors(v4, v5);
}

uint64_t FIK::GenericSolver::SetBoneProperties(FIK::GenericSolver *this, signed int a2, const FIK::RigBone *a3)
{
  if (a2 < 0 || *(this + 100) <= a2)
  {
    FIK::GenericSolver::SetBoneProperties();
  }

  Segment = FIK::IKSolver::getSegment(*(this + 22), a2);
  v7 = Segment;
  v8 = *Segment;
  if (*(a3 + 96) == 1)
  {
    if (((*(v8 + 168))(Segment) & 1) == 0)
    {
      (*(*v7 + 144))(v7, *(a3 + 105), *(a3 + 106), *(a3 + 107));
    }

    (*(*v7 + 136))(v7, *(a3 + 97), *(a3 + 98), *(a3 + 99));
    (*(*v7 + 176))(v7, *(a3 + 96), 0);
  }

  else
  {
    (*(v8 + 176))(Segment, 0, 1);
  }

  (*(*v7 + 280))(v7, 0, 1.0 - *(a3 + 36));
  v9.n128_f32[0] = 1.0 - *(a3 + 37);
  (*(*v7 + 280))(v7, 1, v9);
  v10.n128_f32[0] = 1.0 - *(a3 + 38);
  (*(*v7 + 280))(v7, 2, v10);
  v11.n128_u32[0] = *(a3 + 28);
  (*(*v7 + 952))(v7, v11);
  (*(*v7 + 656))(v7, 1);
  (*(*v7 + 64))(v7, *(a3 + 104));
  v12.n128_u32[0] = *(a3 + 31);
  (*(*v7 + 696))(v7, v12);
  v13 = 0;
  v26[24] = *(a3 + 32);
  v14 = (a3 + 192);
  do
  {
    v15 = *(v14 - 4);
    v16 = &v26[v13];
    v17 = *v14++;
    *v16 = v15;
    v16[1] = v17;
    v13 += 8;
  }

  while (v13 != 24);
  (*(*v7 + 624))(v7, v26, 1);
  (*(*v7 + 48))(v7, *(a3 + 103));
  if ((*(this + 281) & 1) == 0)
  {
    (*(*v7 + 16))(v7, *(a3 + 100), 0);
    v18.n128_u32[0] = *(a3 + 30);
    (*(*v7 + 712))(v7, v18);
  }

  (*(*v7 + 728))(v7, 0, *(a3 + 40));
  v19.n128_u32[0] = *(a3 + 41);
  (*(*v7 + 728))(v7, 1, v19);
  v20.n128_u32[0] = *(a3 + 42);
  (*(*v7 + 728))(v7, 2, v20);
  v21.n128_u32[0] = *(a3 + 29);
  (*(*v7 + 968))(v7, v21);
  result = (*(*v7 + 392))(v7);
  if (result)
  {
    (*(*v7 + 288))(v7, 3, *(a3 + 60));
    v23.n128_u32[0] = *(a3 + 61);
    (*(*v7 + 288))(v7, 4, v23);
    v24.n128_u32[0] = *(a3 + 62);
    (*(*v7 + 288))(v7, 5, v24);
    (*(*v7 + 88))(v7, *(a3 + 101));
    (*(*v7 + 104))(v7, *(a3 + 104));
    v25.n128_u32[0] = *(a3 + 33);
    return (*(*v7 + 760))(v7, v25);
  }

  return result;
}

uint64_t FIK::GenericSolver::ResetSolver(FIK::Solver ***this)
{
  FIK::IKSolver::resetSolver(this[22]);
  v2 = this[22];

  return FIK::IKSolver::setup(v2);
}

void FIK::GenericSolver::ConstructImportBones(_anonymous_namespace_ **this@<X0>, void *a2@<X8>)
{
  v4 = FIK::defaultAllocator(this);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = v4;
  v5 = this[50];
  if (v5)
  {
    v6 = this[52];
    v7 = (v6 + 256 * v5);
    do
    {
      v8 = (v6 + 64);
      FIK::ImportBone::setRestTransform(v10, v8);
      v9 = FIK::IKArray<FIK::ImportBone>::push_back<FIK::ImportBone&,void>(a2, v10);
      if (v13)
      {
        (*(*v14 + 24))(v14, v12, 0, 8, v9);
        v12 = 0;
        v13 = 0;
      }

      if (v10[1])
      {
        (*(*v11 + 24))(v11, v10[0], 0, 8, v9);
      }

      v6 = (v8 + 48);
    }

    while (v6 != v7);
  }
}

void anonymous namespace::CopyHierarchyInfo(_anonymous_namespace_ *this@<X0>, FIK::ImportBone *a2@<X8>)
{
  FIK::ImportBone::ImportBone(a2);
  v6 = *(this + 1);
  v5 = *(this + 2);
  if (v5)
  {
    v7 = *(this + 1);
  }

  else
  {
    v7 = &unk_245A04BAE;
  }

  IKString::assign(a2, v7, v5);
  v9 = *(this + 4);
  v8 = *(this + 5);
  if (v8)
  {
    v10 = *(this + 4);
  }

  else
  {
    v10 = &unk_245A04BAE;
  }

  IKString::assign(a2 + 3, v10, v8);
}

__n128 FIK::IKArray<FIK::ImportBone>::push_back<FIK::ImportBone&,void>(void *a1, uint64_t a2)
{
  FIK::IKArray<FIK::ImportBone>::reserve(a1, *a1 + 1);
  v4 = a1[2] + 144 * *a1;
  IKString::IKString(v4, a2);
  IKString::IKString((v4 + 24), (a2 + 24));
  v5 = *(a2 + 64);
  *(v4 + 48) = *(a2 + 48);
  *(v4 + 64) = v5;
  result = *(a2 + 80);
  v7 = *(a2 + 96);
  v8 = *(a2 + 128);
  *(v4 + 112) = *(a2 + 112);
  *(v4 + 128) = v8;
  *(v4 + 80) = result;
  *(v4 + 96) = v7;
  ++*a1;
  return result;
}

void FIK::GenericSolver::ConstructImportBones(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = FIK::defaultAllocator(a1);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = v6;
  if (*(a1 + 400) >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = (a2 + 16);
    do
    {
      v16[0] = *(v9 - 1);
      v16[1] = *v9;
      FIK::ImportBone::setRestTransform(v11, v16);
      v10 = FIK::IKArray<FIK::ImportBone>::push_back<FIK::ImportBone&,void>(a3, v11);
      if (v14)
      {
        (*(*v15 + 24))(v15, v13, 0, 8, v10);
        v13 = 0;
        v14 = 0;
      }

      if (v11[1])
      {
        (*(*v12 + 24))(v12, v11[0], 0, 8, v10);
      }

      ++v8;
      v9 += 2;
      v7 += 256;
    }

    while (v8 < *(a1 + 400));
  }
}

uint64_t FIK::IKRigUtils::GetTaskIndexByName<FIK::GameRig>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 176);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a2 + 192);
  if (*(a1 + 8))
  {
    v4 = *a1;
  }

  else
  {
    v4 = &unk_245A04BAE;
  }

  v5 = strlen(v4);
  v6 = 0;
  for (i = (v3 + 8); ; i += 30)
  {
    v8 = *i ? *(i - 1) : &unk_245A04BAE;
    if (*i == v5 && !memcmp(v8, v4, v5))
    {
      break;
    }

    if (v2 == ++v6)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v6;
}

uint64_t FIK::IKArray<FIK::RTGameTask>::push_back<FIK::RTGameTask,void>(void *a1, uint64_t a2)
{
  FIK::IKArray<FIK::RTGameTask>::reserve(a1, *a1 + 1);
  result = FIK::RTGameTask::RTGameTask(a1[2] + 576 * *a1, a2, a1[3]);
  ++*a1;
  return result;
}

void *FIK::IKArray<FIK::GameTask>::IKArray(void *a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  *a1 = v5;
  FIK::IKArray<FIK::GameTask>::MemoryBlock::MemoryBlock(a1 + 1, v4, a2[3]);
  v6 = *a2;
  if (*a2)
  {
    v7 = 0;
    v8 = a1[2];
    v9 = a2[2];
    do
    {
      v10 = v8 + v7;
      IKString::IKString((v8 + v7), (v9 + v7));
      IKString::IKString((v8 + v7 + 24), (v9 + v7 + 24));
      v11 = *(v9 + v7 + 48);
      *(v10 + 64) = *(v9 + v7 + 64);
      *(v10 + 48) = v11;
      *(v10 + 80) = *(v9 + v7 + 80);
      *(v10 + 96) = *(v9 + v7 + 96);
      *(v10 + 112) = *(v9 + v7 + 112);
      *(v10 + 128) = *(v9 + v7 + 128);
      *(v10 + 144) = *(v9 + v7 + 144);
      *(v10 + 160) = *(v9 + v7 + 160);
      *(v10 + 176) = *(v9 + v7 + 176);
      *(v10 + 192) = *(v9 + v7 + 192);
      *(v10 + 208) = *(v9 + v7 + 208);
      *(v10 + 224) = *(v9 + v7 + 224);
      v7 += 240;
      --v6;
    }

    while (v6);
  }

  return a1;
}

void *FIK::IKArray<FIK::GameTask>::MemoryBlock::MemoryBlock(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  if (a2)
  {
    v5 = 240 * a2;
    v6 = (*(*a3 + 16))(a3, 240 * a2, 16);
    a1[1] = v6;
    a1[2] = a3;
    if (v5)
    {
      bzero(v6, v5);
    }
  }

  else
  {
    a1[1] = 0;
    a1[2] = a3;
  }

  return a1;
}

void *FIK::IKArray<FIK::RigBone>::IKArray(void *a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  *a1 = v5;
  FIK::IKArray<FIK::RigBone>::MemoryBlock::MemoryBlock(a1 + 1, v4, a2[3]);
  v6 = *a2;
  if (*a2)
  {
    v7 = a2[2];
    v8 = a1[2] + 32;
    v9 = v7 + 32;
    do
    {
      *(v8 - 32) = *(v9 - 32);
      IKString::IKString((v8 - 24), (v9 - 24));
      IKString::IKString(v8, v9);
      *(v8 + 32) = *(v9 + 32);
      *(v8 + 48) = *(v9 + 48);
      v10 = *(v9 + 64);
      v11 = *(v9 + 80);
      *(v8 + 96) = *(v9 + 96);
      *(v8 + 64) = v10;
      *(v8 + 80) = v11;
      *(v8 + 112) = *(v9 + 112);
      *(v8 + 128) = *(v9 + 128);
      *(v8 + 144) = *(v9 + 144);
      *(v8 + 160) = *(v9 + 160);
      *(v8 + 176) = *(v9 + 176);
      *(v8 + 192) = *(v9 + 192);
      *(v8 + 208) = *(v9 + 208);
      v8 += 256;
      v9 += 256;
      --v6;
    }

    while (v6);
  }

  return a1;
}

void *FIK::IKArray<FIK::RigBone>::MemoryBlock::MemoryBlock(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  if (a2)
  {
    v5 = a2 << 8;
    v6 = (*(*a3 + 16))(a3, a2 << 8, 16);
    a1[1] = v6;
    a1[2] = a3;
    if (v5)
    {
      bzero(v6, v5);
    }
  }

  else
  {
    a1[1] = 0;
    a1[2] = a3;
  }

  return a1;
}

void *FIK::IKArray<IKString>::IKArray(void *a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  *a1 = v5;
  v6 = FIK::IKArray<IKString>::MemoryBlock::MemoryBlock(a1 + 1, v4, a2[3]);
  v7 = *a2;
  if (*a2)
  {
    v8 = a1[2];
    v9 = (a2[2] + 8);
    do
    {
      v10 = FIK::defaultAllocator(v6);
      *v8 = 0;
      v8[1] = 0;
      v8[2] = v10;
      v11 = *(v9 - 1);
      if (*v9)
      {
        v12 = *(v9 - 1);
      }

      else
      {
        v12 = &unk_245A04BAE;
      }

      IKString::assign(v8, v12, *v9);
      v8 += 3;
      v9 += 3;
      --v7;
    }

    while (v7);
  }

  return a1;
}

void *FIK::IKArray<FIK::AimSetup>::IKArray(void *a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  *a1 = v5;
  FIK::IKArray<FIK::AimSetup>::MemoryBlock::MemoryBlock(a1 + 1, v4, a2[3]);
  v6 = *a2;
  if (*a2)
  {
    v7 = 0;
    v8 = a1[2];
    v9 = a2[2];
    do
    {
      v10 = v8 + v7;
      IKString::IKString((v8 + v7), (v9 + v7));
      *(v10 + 24) = *(v9 + v7 + 24);
      IKString::IKString((v8 + v7 + 32), (v9 + v7 + 32));
      FIK::IKArray<FIK::Item>::IKArray((v8 + v7 + 56), (v9 + v7 + 56));
      FIK::IKArray<FIK::Item>::IKArray((v8 + v7 + 88), (v9 + v7 + 88));
      *(v10 + 120) = *(v9 + v7 + 120);
      v7 += 128;
      --v6;
    }

    while (v6);
  }

  return a1;
}

void *FIK::IKArray<FIK::AimSetup>::MemoryBlock::MemoryBlock(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  if (a2)
  {
    v5 = a2 << 7;
    v6 = (*(*a3 + 16))(a3, a2 << 7, 8);
    a1[1] = v6;
    a1[2] = a3;
    if (v5)
    {
      bzero(v6, v5);
    }
  }

  else
  {
    a1[1] = 0;
    a1[2] = a3;
  }

  return a1;
}

void *FIK::IKArray<FIK::Item>::IKArray(void *a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  *a1 = v5;
  FIK::IKArray<FIK::Item>::MemoryBlock::MemoryBlock(a1 + 1, v4, a2[3]);
  v6 = *a2;
  if (*a2)
  {
    v7 = (a1[2] + 8);
    v8 = (a2[2] + 8);
    do
    {
      *(v7 - 2) = *(v8 - 2);
      IKString::IKString(v7, v8);
      v7 = (v9 + 32);
      v8 = (v8 + 32);
      --v6;
    }

    while (v6);
  }

  return a1;
}

FIK::ImportBone *FIK::ImportBone::ImportBone(FIK::ImportBone *this)
{
  v2 = FIK::defaultAllocator(this);
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = v2;
  v3 = FIK::defaultAllocator(v2);
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = v3;
  *(this + 3) = xmmword_245A01E80;
  *(this + 8) = 0;
  *(this + 18) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0x200000002;
  *(this + 96) = 0;
  *(this + 100) = 0;
  *(this + 27) = 0;
  *(this + 7) = xmmword_245A03A80;
  *(this + 8) = unk_245A03A90;
  return this;
}

uint64_t FIK::IKArray<FIK::ImportBone>::~IKArray(uint64_t a1)
{
  FIK::IKArray<FIK::ImportBone>::destroyBufferObjects(a1 + 8, *a1);
  *a1 = 0;
  v2 = *(a1 + 16);
  if (v2)
  {
    (*(**(a1 + 24) + 24))(*(a1 + 24), v2, 0, 8);
  }

  return a1;
}

uint64_t FIK::IKArray<FIK::ImportBone>::destroyBufferObjects(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = *(result + 8) + 24;
    do
    {
      if (*(v3 + 8))
      {
        result = (*(**(v3 + 16) + 24))(*(v3 + 16), *v3, 0, 8);
        *v3 = 0;
        *(v3 + 8) = 0;
      }

      if (*(v3 - 16))
      {
        result = (*(**(v3 - 8) + 24))(*(v3 - 8), *(v3 - 24), 0, 8);
        *(v3 - 24) = 0;
        *(v3 - 16) = 0;
      }

      v3 += 144;
      --v2;
    }

    while (v2);
  }

  return result;
}

void *FIK::IKArray<FIK::RTGameTask>::MemoryBlock::MemoryBlock(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  if (a2)
  {
    v5 = 576 * a2;
    v6 = (*(*a3 + 16))(a3, 576 * a2, 16);
    a1[1] = v6;
    a1[2] = a3;
    if (v5)
    {
      bzero(v6, v5);
    }
  }

  else
  {
    a1[1] = 0;
    a1[2] = a3;
  }

  return a1;
}

uint64_t FIK::IKArray<FIK::RTGameTask>::~IKArray(uint64_t a1)
{
  FIK::IKArray<FIK::RTGameTask>::destroyBufferObjects(a1 + 8, *a1);
  *a1 = 0;
  v2 = *(a1 + 16);
  if (v2)
  {
    (*(**(a1 + 24) + 24))(*(a1 + 24), v2, 0, 8);
  }

  return a1;
}

void *FIK::IKArray<FIK::RTGameTask>::IKArray(void *a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  *a1 = v5;
  FIK::IKArray<FIK::RTGameTask>::MemoryBlock::MemoryBlock(a1 + 1, v4, a2[3]);
  v6 = *a2;
  if (*a2)
  {
    v7 = 0;
    v8 = a1[2];
    v9 = a2[2];
    do
    {
      v10 = v8 + v7;
      *v10 = &unk_28589BD98;
      *(v10 + 8) = *(v9 + v7 + 8);
      IKString::IKString((v8 + v7 + 24), (v9 + v7 + 24));
      IKString::IKString((v8 + v7 + 48), (v9 + v7 + 48));
      IKString::IKString((v8 + v7 + 72), (v9 + v7 + 72));
      v11 = *(v9 + v7 + 96);
      *(v10 + 112) = *(v9 + v7 + 112);
      *(v10 + 96) = v11;
      *(v10 + 128) = *(v9 + v7 + 128);
      *(v10 + 144) = *(v9 + v7 + 144);
      *(v10 + 160) = *(v9 + v7 + 160);
      *(v10 + 176) = *(v9 + v7 + 176);
      *(v10 + 192) = *(v9 + v7 + 192);
      *(v10 + 208) = *(v9 + v7 + 208);
      *(v10 + 224) = *(v9 + v7 + 224);
      *(v10 + 240) = *(v9 + v7 + 240);
      *(v10 + 256) = *(v9 + v7 + 256);
      *(v10 + 272) = *(v9 + v7 + 272);
      *v10 = &unk_28589C2E8;
      *(v10 + 288) = *(v9 + v7 + 288);
      *(v10 + 304) = *(v9 + v7 + 304);
      *(v10 + 320) = *(v9 + v7 + 320);
      *(v10 + 336) = *(v9 + v7 + 336);
      *(v10 + 352) = *(v9 + v7 + 352);
      *(v10 + 368) = *(v9 + v7 + 368);
      *(v10 + 384) = *(v9 + v7 + 384);
      *(v10 + 400) = *(v9 + v7 + 400);
      v12 = *(v9 + v7 + 416);
      v13 = *(v9 + v7 + 432);
      *(v10 + 446) = *(v9 + v7 + 446);
      *(v10 + 416) = v12;
      *(v10 + 432) = v13;
      *(v10 + 464) = *(v9 + v7 + 464);
      *(v10 + 480) = *(v9 + v7 + 480);
      *(v10 + 496) = *(v9 + v7 + 496);
      *(v10 + 512) = *(v9 + v7 + 512);
      *(v10 + 528) = *(v9 + v7 + 528);
      *(v10 + 544) = *(v9 + v7 + 544);
      *(v10 + 560) = *(v9 + v7 + 560);
      v7 += 576;
      --v6;
    }

    while (v6);
  }

  return a1;
}

uint64_t FIK::IKArray<FIK::RTGameTask>::destroyBufferObjects(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = *(result + 8);
    v4 = v3 + 48;
    do
    {
      if (*(v4 + 32))
      {
        result = (*(**(v4 + 40) + 24))(*(v4 + 40), *(v4 + 24), 0, 8);
        *(v4 + 24) = 0;
        *(v4 + 32) = 0;
      }

      if (*(v4 + 8))
      {
        result = (*(**(v4 + 16) + 24))(*(v4 + 16), *v4, 0, 8);
        *v4 = 0;
        *(v4 + 8) = 0;
      }

      *(v4 - 48) = &unk_28589BD98;
      if (*(v4 - 16))
      {
        result = (*(**(v4 - 8) + 24))(*(v4 - 8), *(v4 - 24), 0, 8);
        *(v4 - 24) = 0;
        *(v4 - 16) = 0;
      }

      v4 += 576;
      v3 += 576;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t FIK::IKArray<FIK::RTGameTask>::reserve(uint64_t result, unint64_t a2)
{
  if (*(result + 8) < a2)
  {
    v23 = v2;
    v24 = v3;
    v4 = result;
    v5 = *(result + 24);
    v6 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
    v20 = v6;
    if (v6)
    {
      v7 = (*(*v5 + 16))(v5, 576 * v6, 16);
      v8 = v7;
      v21 = v7;
      v22 = v5;
      if (576 * v6)
      {
        bzero(v7, 576 * v6);
      }
    }

    else
    {
      v8 = 0;
      v21 = 0;
      v22 = v5;
    }

    v9 = v4[2];
    v10 = *v4;
    if (*v4)
    {
      v11 = 0;
      do
      {
        v12 = &v8[v11];
        *v12 = &unk_28589BD98;
        v13 = &v9[v11];
        *(v12 + 8) = *&v9[v11 + 8];
        IKString::IKString(&v8[v11 + 24], &v9[v11 + 24], *&v9[v11 + 40]);
        IKString::IKString(&v8[v11 + 48], v13 + 6, v13[8]);
        IKString::IKString(&v8[v11 + 72], v13 + 9, v13[11]);
        v14 = *&v9[v11 + 96];
        *(v12 + 14) = *&v9[v11 + 112];
        *(v12 + 6) = v14;
        *(v12 + 8) = *&v9[v11 + 128];
        *(v12 + 9) = *&v9[v11 + 144];
        *(v12 + 10) = *&v9[v11 + 160];
        *(v12 + 11) = *&v9[v11 + 176];
        *(v12 + 12) = *&v9[v11 + 192];
        *(v12 + 13) = *&v9[v11 + 208];
        *(v12 + 14) = *&v9[v11 + 224];
        *(v12 + 15) = *&v9[v11 + 240];
        *(v12 + 16) = *&v9[v11 + 256];
        *(v12 + 17) = *&v9[v11 + 272];
        *v12 = &unk_28589C2E8;
        v12[288] = v9[v11 + 288];
        *(v12 + 19) = *&v9[v11 + 304];
        *(v12 + 20) = *&v9[v11 + 320];
        *(v12 + 21) = *&v9[v11 + 336];
        *(v12 + 22) = *&v9[v11 + 352];
        *(v12 + 23) = *&v9[v11 + 368];
        *(v12 + 24) = *&v9[v11 + 384];
        *(v12 + 25) = *&v9[v11 + 400];
        v15 = *&v9[v11 + 416];
        v16 = *&v9[v11 + 432];
        *(v12 + 446) = *&v9[v11 + 446];
        *(v12 + 26) = v15;
        *(v12 + 27) = v16;
        *(v12 + 29) = *&v9[v11 + 464];
        *(v12 + 30) = *&v9[v11 + 480];
        *(v12 + 124) = *&v9[v11 + 496];
        *(v12 + 32) = *&v9[v11 + 512];
        *(v12 + 33) = *&v9[v11 + 528];
        *(v12 + 34) = *&v9[v11 + 544];
        *(v12 + 70) = *&v9[v11 + 560];
        v11 += 576;
        --v10;
      }

      while (v10);
      v9 = v4[2];
      v6 = v20;
      v8 = v21;
      v5 = v22;
      v17 = *v4;
    }

    else
    {
      v17 = 0;
    }

    v18 = v4[1];
    v19 = v4[3];
    v4[1] = v6;
    v4[2] = v8;
    v4[3] = v5;
    v20 = v18;
    v21 = v9;
    v22 = v19;
    result = FIK::IKArray<FIK::RTGameTask>::destroyBufferObjects(&v20, v17);
    if (v21)
    {
      return (*(*v22 + 24))(v22, v21, 0, 8);
    }
  }

  return result;
}

uint64_t FIK::IKArray<FIK::ImportBone>::reserve(uint64_t result, unint64_t a2)
{
  if (*(result + 8) < a2)
  {
    v23 = v2;
    v24 = v3;
    v4 = result;
    v5 = *(result + 24);
    v6 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v6)
    {
      v7 = (*(*v5 + 16))(*(result + 24), 144 * v6, 8);
      v8 = v7;
      if (144 * v6)
      {
        bzero(v7, 144 * v6);
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = v4[2];
    v10 = *v4;
    if (*v4)
    {
      v11 = v8 + 24;
      v12 = v9 + 24;
      do
      {
        IKString::IKString(v11 - 3, (v12 - 24), *(v12 - 8));
        IKString::IKString(v11, v12, *(v12 + 16));
        v13 = *(v12 + 24);
        *(v11 + 40) = *(v12 + 40);
        *(v11 + 24) = v13;
        v14 = *(v12 + 56);
        v15 = *(v12 + 72);
        v16 = *(v12 + 88);
        *(v11 + 104) = *(v12 + 104);
        *(v11 + 88) = v16;
        *(v11 + 72) = v15;
        *(v11 + 56) = v14;
        v11 += 144;
        v12 += 144;
        --v10;
      }

      while (v10);
      v9 = v4[2];
      v17 = *v4;
    }

    else
    {
      v17 = 0;
    }

    v18 = v4[1];
    v19 = v4[3];
    v4[1] = v6;
    v4[2] = v8;
    v4[3] = v5;
    v20 = v18;
    v21 = v9;
    v22 = v19;
    result = FIK::IKArray<FIK::ImportBone>::destroyBufferObjects(&v20, v17);
    if (v21)
    {
      return (*(*v22 + 24))(v22, v21, 0, 8);
    }
  }

  return result;
}

uint64_t FIK::Enrollment::Exporter::Exporter(uint64_t a1)
{
  *(a1 + 464) = 0;
  v2 = MEMORY[0x277D82860] + 24;
  v3 = MEMORY[0x277D82860] + 64;
  *(a1 + 416) = MEMORY[0x277D82860] + 64;
  v4 = *(MEMORY[0x277D82810] + 16);
  v5 = *(MEMORY[0x277D82810] + 8);
  *a1 = v5;
  *(a1 + *(v5 - 24)) = v4;
  v6 = (a1 + *(*a1 - 24));
  std::ios_base::init(v6, (a1 + 8));
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  *a1 = v2;
  *(a1 + 416) = v3;
  MEMORY[0x245D77E10](a1 + 8);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  *(a1 + 568) = 0;
  *(a1 + 576) = 0;
  return a1;
}

void *FIK::Enrollment::Exporter::setupForNames(uint64_t a1, void *a2)
{
  *(a1 + 568) = *a2;
  result = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a1, "timeStamp,info#frame", 20);
  v5 = *a2;
  if (*a2)
  {
    v6 = a2[2];
    v7 = 16 * v5;
    do
    {
      v8 = *v6++;
      v11 = v8;
      v9 = FIK::Enrollment::operator<<(a1, &v11);
      v10 = v8;
      result = FIK::Enrollment::operator<<(v9, &v10);
      v7 -= 16;
    }

    while (v7);
  }

  *(a1 + 576) = 1;
  return result;
}

uint64_t FIK::Enrollment::Exporter::appendPoseToFile(uint64_t a1, float32x4_t *a2, uint64_t a3, uint64_t a4)
{
  if ((*(a1 + 576) & 1) == 0)
  {
    FIK::Enrollment::Exporter::appendPoseToFile();
  }

  if (*(a1 + 568) != a3)
  {
    FIK::Enrollment::Exporter::appendPoseToFile();
  }

  v12 = 10;
  v8 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a1, &v12, 1);
  *(v8 + *(*v8 - 24) + 16) = 8;
  v11 = a4;
  result = FIK::Enrollment::operator<<(v8, &v11);
  if (a3)
  {
    v10 = 32 * a3;
    do
    {
      result = FIK::Enrollment::operator<<(a1, a2);
      a2 += 2;
      v10 -= 32;
    }

    while (v10);
  }

  return result;
}

{
  if ((*(a1 + 576) & 1) == 0)
  {
    FIK::Enrollment::Exporter::appendPoseToFile();
  }

  if (*(a1 + 568) != a3)
  {
    FIK::Enrollment::Exporter::appendPoseToFile();
  }

  v13[0].i8[0] = 10;
  v8 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a1, v13, 1);
  *(v8 + *(*v8 - 24) + 16) = 8;
  v13[0].i64[0] = a4;
  result = FIK::Enrollment::operator<<(v8, v13);
  if (a3)
  {
    v10 = 16 * a3;
    do
    {
      v11 = *a2++;
      v12 = v11;
      v12.i32[3] = 0;
      v13[0] = v12;
      v13[1] = xmmword_245A01E80;
      result = FIK::Enrollment::operator<<(a1, v13);
      v10 -= 16;
    }

    while (v10);
  }

  return result;
}

uint64_t FIK::Enrollment::operator<<(uint64_t a1, void *a2)
{
  v4 = *a2 * 0.033333;
  v5 = std::ostream::operator<<();
  v8 = 44;
  v6 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v5, &v8, 1);
  MEMORY[0x245D77EA0](v6, *a2);
  return a1;
}

void *FIK::Enrollment::operator<<(void *a1, float32x4_t *a2)
{
  FIK::Enrollment::operator<<(a1, a2);
  FIK::Enrollment::eulerAnglesDegreesFromQuat(a2 + 1, &v5);
  return FIK::Enrollment::operator<<(a1, &v5);
}

{
  FIK::Enrollment::operator<<(a1, a2);
  FIK::Enrollment::eulerAnglesDegreesFromQuat(a2 + 1, &v13);
  v4 = FIK::Enrollment::operator<<(a1, &v13);
  v14 = 44;
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v4, &v14, 1);
  v5 = a2[1].i32[0];
  v6 = std::ostream::operator<<();
  v14 = 44;
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v6, &v14, 1);
  v7 = a2[1].i32[1];
  v8 = std::ostream::operator<<();
  v14 = 44;
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v8, &v14, 1);
  v9 = a2[1].i32[2];
  v10 = std::ostream::operator<<();
  v14 = 44;
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v10, &v14, 1);
  v11 = a2[1].i32[3];
  std::ostream::operator<<();
  return a1;
}

uint64_t FIK::Enrollment::DataLogger::DataLogger(uint64_t a1, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = __len;
  if (__len)
  {
    memmove(&__dst, __src, __len);
  }

  __dst.__r_.__value_.__s.__data_[__len] = 0;
  v5.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  std::to_string(&v27, v5.__d_.__rep_ / 1000000.0);
  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v27;
  }

  else
  {
    v6 = v27.__r_.__value_.__r.__words[0];
  }

  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v27.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v27.__r_.__value_.__l.__size_;
  }

  FIK::Enrollment::combinePath(v6, size, &__dst, &v29);
  FIK::Enrollment::createPath(&v29, a1);
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v26, *a1, *(a1 + 8));
  }

  else
  {
    v26 = *a1;
  }

  FIK::Enrollment::combinePath("task_targets.csv", 0x10uLL, &v26, &v27);
  FIK::Enrollment::Exporter::Exporter(a1 + 24);
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  FIK::Enrollment::combinePath("solved_pose.csv", 0xFuLL, &__p, &v27);
  FIK::Enrollment::Exporter::Exporter(a1 + 608);
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (!*(a1 + 152))
  {
    v8 = *ikinemaLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      FIK::Enrollment::DataLogger::DataLogger(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  if (!*(a1 + 736))
  {
    v16 = *ikinemaLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      FIK::Enrollment::DataLogger::DataLogger(v16, v17, v18, v19, v20, v21, v22, v23);
    }
  }

  return a1;
}

__n128 FIK::Enrollment::createPath@<Q0>(std::string *this@<X0>, uint64_t a2@<X8>)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    FIK::Enrollment::createPath();
  }

  v5 = 0;
  do
  {
    v5 = std::string::find(this, 47, v5 + 1);
    std::string::basic_string(&v8, this, 0, v5, &v9);
    if ((SHIBYTE(v8.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      if (!*(&v8.__r_.__value_.__s + 23))
      {
        continue;
      }

      v6 = &v8;
LABEL_11:
      mkdir(v6, 0xFFFu);
      if ((SHIBYTE(v8.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        continue;
      }

      goto LABEL_12;
    }

    if (v8.__r_.__value_.__l.__size_)
    {
      v6 = v8.__r_.__value_.__r.__words[0];
      goto LABEL_11;
    }

LABEL_12:
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  while (v5 != -1);
  result = *&this->__r_.__value_.__l.__data_;
  *a2 = *&this->__r_.__value_.__l.__data_;
  *(a2 + 16) = *(&this->__r_.__value_.__l + 2);
  this->__r_.__value_.__l.__size_ = 0;
  this->__r_.__value_.__r.__words[2] = 0;
  this->__r_.__value_.__r.__words[0] = 0;
  return result;
}

void FIK::Enrollment::combinePath(const std::string::value_type *__src@<X1>, size_t __len@<X2>, std::string *a3@<X0>, uint64_t a4@<X8>)
{
  size = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = a3->__r_.__value_.__l.__size_;
    if (size)
    {
      v8 = a3->__r_.__value_.__r.__words[0];
LABEL_6:
      if (v8->__r_.__value_.__s.__data_[size - 1] == 47)
      {
        v9 = std::string::append(a3, __src, __len);
        if (SHIBYTE(v9->__r_.__value_.__r.__words[2]) < 0)
        {
          v13 = v9->__r_.__value_.__r.__words[0];
          v14 = v9->__r_.__value_.__l.__size_;

          std::string::__init_copy_ctor_external(a4, v13, v14);
        }

        else
        {
          v10 = *&v9->__r_.__value_.__l.__data_;
          *(a4 + 16) = *(&v9->__r_.__value_.__l + 2);
          *a4 = v10;
        }
      }

      else
      {
        std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(&a3->__r_.__value_.__l.__data_, 47, &v15);
        v11 = std::string::append(&v15, __src, __len);
        if (SHIBYTE(v11->__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(a4, v11->__r_.__value_.__l.__data_, v11->__r_.__value_.__l.__size_);
        }

        else
        {
          v12 = *&v11->__r_.__value_.__l.__data_;
          *(a4 + 16) = *(&v11->__r_.__value_.__l + 2);
          *a4 = v12;
        }

        if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v15.__r_.__value_.__l.__data_);
        }
      }

      return;
    }
  }

  else if (*(&a3->__r_.__value_.__s + 23))
  {
    v8 = a3;
    goto LABEL_6;
  }

  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  *(a4 + 23) = __len;
  if (__len)
  {
    memmove(a4, __src, __len);
  }

  *(a4 + __len) = 0;
}

uint64_t FIK::Enrollment::DataLogger::exportSources(uint64_t a1, void *a2, uint64_t a3)
{
  v22[21] = *MEMORY[0x277D85DE8];
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, *a1, *(a1 + 8));
  }

  else
  {
    v17 = *a1;
  }

  FIK::Enrollment::combinePath("original_sources.csv", 0x14uLL, &v17, __p);
  if ((v19 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v19 & 0x80u) == 0)
  {
    v6 = v19;
  }

  else
  {
    v6 = __p[1];
  }

  FIK::Enrollment::SourceExporter::SourceExporter(&v20, v5, v6, a3);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (v21[15])
  {
    FIK::Enrollment::SourceExporter::exportSourceData(&v20, a2, *(a3 + 24), *(a3 + 8));
  }

  else
  {
    v7 = *ikinemaLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      FIK::Enrollment::DataLogger::exportSources(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  v20 = *MEMORY[0x277D82810];
  *(&v21[-1] + *(v20 - 24)) = *(MEMORY[0x277D82810] + 24);
  MEMORY[0x245D77E20](v21);
  std::ostream::~ostream();
  result = MEMORY[0x245D77F30](v22);
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t FIK::Enrollment::SourceExporter::exportSourceData(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = result;
  v33 = *MEMORY[0x277D85DE8];
  if (*(result + 568) != a4 * a3)
  {
    result = FIK::Enrollment::SourceExporter::exportSourceData();
  }

  v8 = a2[1];
  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      v28 = (*a2 + 160 * i);
      v29 = 1;
      v30.n128_u8[0] = 10;
      v10 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v7, &v30, 1);
      *(v10 + *(*v10 - 24) + 16) = 8;
      v11 = FIK::Enrollment::FrameAdaptor::ID(&v28);
      FIK::Enrollment::FrameAdaptor::getVioPose(&v28, v27);
      FIK::Enrollment::FrameAdaptor::getHeadPose(&v28, &v30);
      v24 = 0uLL;
      v12 = &v30;
      if (!v32)
      {
        v12 = &v24;
      }

      v26 = *v12;
      if (v32)
      {
        v13 = -1;
      }

      else
      {
        v13 = 0;
      }

      v22 = vbslq_s8(vdupq_n_s32(v13), v31, xmmword_245A01E80);
      v23 = v11;
      v14 = FIK::Enrollment::operator<<(v7, &v23);
      v30 = v27[0];
      v31 = v27[1];
      v15 = FIK::Enrollment::operator<<(v14, &v30);
      v24 = v26;
      v25 = v22;
      result = FIK::Enrollment::operator<<(v15, &v24);
      if (a3)
      {
        v16 = 0;
        do
        {
          FIK::Enrollment::FrameAdaptor::getCameraPoseForIndex(&v28, v16, &v30);
          v24 = v30;
          v25 = v31;
          result = FIK::Enrollment::operator<<(v7, &v24);
          if (a4)
          {
            v17 = 0;
            do
            {
              FIK::Enrollment::FrameAdaptor::getLiftedPositionForJoint(&v28, v16, v17, &v24);
              v18 = FIK::Enrollment::operator<<(v7, &v24);
              v24.n128_u8[0] = 44;
              std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v18, &v24, 1);
              FIK::Enrollment::FrameAdaptor::getConfidenceForLiftedJoint(&v28, v16, v17);
              std::ostream::operator<<();
              v24.n128_u8[0] = 44;
              v19 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v7, &v24, 1);
              isLiftedValid = FIK::Enrollment::FrameAdaptor::isLiftedValid(&v28, v16, v17);
              MEMORY[0x245D77E90](v19, isLiftedValid);
              FIK::Enrollment::FrameAdaptor::getRayDirectionForJoint(&v28, v16, v17, &v24);
              FIK::Enrollment::operator<<(v7, &v24);
              if (FIK::Enrollment::FrameAdaptor::isRayDirValid(&v28, v16, v17))
              {
                FIK::Enrollment::FrameAdaptor::getRayEndForJoint(&v28, 1.0, v16, v17, &v24);
              }

              else
              {
                v24 = 0uLL;
              }

              result = FIK::Enrollment::operator<<(v7, &v24);
              ++v17;
            }

            while (a4 != v17);
          }

          ++v16;
        }

        while (v16 != a3);
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t FIK::Enrollment::DataLogger::exportEnrollment(uint64_t a1, int *a2, uint64_t a3)
{
  v29[19] = *MEMORY[0x277D85DE8];
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v24, *a1, *(a1 + 8));
  }

  else
  {
    v24 = *a1;
  }

  FIK::Enrollment::combinePath("enrollment.csv", 0xEuLL, &v24, __p);
  v29[6] = 0;
  v5 = MEMORY[0x277D82860] + 24;
  v6 = MEMORY[0x277D82860] + 64;
  v29[0] = MEMORY[0x277D82860] + 64;
  v7 = MEMORY[0x277D82810];
  v8 = *(MEMORY[0x277D82810] + 16);
  v27 = *(MEMORY[0x277D82810] + 8);
  *(&v28[-1] + *(v27 - 24)) = v8;
  v9 = (&v28[-1] + *(v27 - 24));
  std::ios_base::init(v9, v28);
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  v27 = v5;
  v29[0] = v6;
  MEMORY[0x245D77E10](v28);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((&v28[-1] + *(v27 - 24)), *(&v28[3] + *(v27 - 24)) | 4);
  }

  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (v28[15])
  {
    if (a3)
    {
      v10 = &a2[6 * a3];
      do
      {
        v11 = *a2;
        v12 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v27, *(a2 + 1), *(a2 + 2));
        LOBYTE(__p[0]) = 44;
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v12, __p, 1);
        v13 = std::ostream::operator<<();
        LOBYTE(__p[0]) = 10;
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v13, __p, 1);
        a2 += 6;
      }

      while (a2 != v10);
    }
  }

  else
  {
    v14 = *ikinemaLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      FIK::Enrollment::DataLogger::exportEnrollment(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  v27 = *v7;
  *(&v28[-1] + *(v27 - 24)) = v7[3];
  MEMORY[0x245D77E20](v28);
  std::ostream::~ostream();
  result = MEMORY[0x245D77F30](v29);
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t FIK::Enrollment::DataLogger::exportComputedSources(uint64_t a1, void *a2, uint64_t a3, FIK *a4)
{
  v49[21] = *MEMORY[0x277D85DE8];
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v29, *a1, *(a1 + 8));
  }

  else
  {
    v29 = *a1;
  }

  FIK::Enrollment::combinePath("computed_sources.csv", 0x14uLL, &v29, __p);
  FIK::Enrollment::Exporter::Exporter(&v47);
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (v48[15])
  {
    FIK::Enrollment::queryNames<FIK::RigBoneBase>(a4, __p);
    FIK::Enrollment::Exporter::setupForNames(&v47, __p);
    __p[0] = 0;
    if (v31)
    {
      (*(*v32 + 24))(v32, v31, 0, 8);
    }

    *__p = *a3;
    FIK::IKArray<FIK::Transform>::IKArray(&v31, (a3 + 16));
    FIK::IKArray<BOOL>::IKArray(v33, (a3 + 48));
    FIK::IKArray<FIK::Enrollment::LiftedSource>::IKArray(v34, (a3 + 80));
    FIK::IKArray<FIK::Enrollment::RaySource>::IKArray(v35, (a3 + 112));
    FIK::IKArray<FIK::Enrollment::LiftedSource>::IKArray(v36, (a3 + 144));
    LOBYTE(v37) = 0;
    v45 = 0;
    if (*(a3 + 320) == 1)
    {
      v37 = *(a3 + 176);
      v38 = *(a3 + 192);
      v7 = *(a3 + 224);
      v39 = *(a3 + 208);
      v40 = v7;
      v41 = *(a3 + 240);
      v8 = *(a3 + 272);
      v42 = *(a3 + 256);
      v43 = v8;
      FIK::IKArray<FIK::Enrollment::VirtualSourceHierarchy::VirtualSourceDescriptor>::IKArray(v44, (a3 + 288));
      v45 = 1;
    }

    v46 = *(a3 + 336);
    v28 = 0;
    v9 = a2[1];
    if (v9)
    {
      v10 = 0;
      do
      {
        v26 = v10 + *a2;
        v27 = 1;
        v11 = FIK::Enrollment::FrameAdaptor::ID(&v26);
        v12 = FIK::Enrollment::DataPreprocessor::generateSolverSources(__p, a2, v11, &v28);
        v14 = v13;
        v15 = FIK::Enrollment::FrameAdaptor::ID(&v26);
        FIK::Enrollment::Exporter::appendPoseToFile(&v47, v12, v14, v15);
        v10 += 160;
        --v9;
      }

      while (v9);
    }

    FIK::Enrollment::DataPreprocessor::~DataPreprocessor(__p);
  }

  else
  {
    v16 = *ikinemaLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      FIK::Enrollment::DataLogger::exportComputedSources(v16, v17, v18, v19, v20, v21, v22, v23);
    }
  }

  v47 = *MEMORY[0x277D82810];
  *(&v48[-1] + *(v47 - 24)) = *(MEMORY[0x277D82810] + 24);
  MEMORY[0x245D77E20](v48);
  std::ostream::~ostream();
  result = MEMORY[0x245D77F30](v49);
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

void *FIK::Enrollment::queryNames<FIK::RigBoneBase>@<X0>(FIK *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = FIK::defaultAllocator(a1);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = v4;
  result = FIK::IKArray<std::string_view>::reserve(a2, *a1);
  if (*a1)
  {
    v6 = *(a1 + 2);
    v7 = *a2;
    v8 = 96 * *a1;
    v9 = (v6 + 16);
    do
    {
      v10 = *v9;
      if (*v9)
      {
        v11 = *(v9 - 1);
      }

      else
      {
        v11 = &unk_245A04BAE;
      }

      result = FIK::IKArray<std::string_view>::reserve(a2, v7 + 1);
      v12 = (a2[2] + 16 * *a2);
      *v12 = v11;
      v12[1] = v10;
      v7 = *a2 + 1;
      *a2 = v7;
      v9 += 12;
      v8 -= 96;
    }

    while (v8);
  }

  return result;
}

void *FIK::Enrollment::DataLogger::setupTaskExporter(void *result, FIK *a2)
{
  if (result[19])
  {
    v2 = result;
    FIK::Enrollment::queryNames<FIK::MoCapTask>(a2, v3);
    result = FIK::Enrollment::Exporter::setupForNames((v2 + 3), v3);
    v3[0] = 0;
    if (v4)
    {
      return (*(*v5 + 24))(v5, v4, 0, 8);
    }
  }

  return result;
}

void *FIK::Enrollment::queryNames<FIK::MoCapTask>@<X0>(FIK *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = FIK::defaultAllocator(a1);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = v4;
  result = FIK::IKArray<std::string_view>::reserve(a2, *a1);
  if (*a1)
  {
    v6 = *(a1 + 2);
    v7 = *a2;
    v8 = *a1 << 8;
    v9 = (v6 + 8);
    do
    {
      v10 = *v9;
      if (*v9)
      {
        v11 = *(v9 - 1);
      }

      else
      {
        v11 = &unk_245A04BAE;
      }

      result = FIK::IKArray<std::string_view>::reserve(a2, v7 + 1);
      v12 = (a2[2] + 16 * *a2);
      *v12 = v11;
      v12[1] = v10;
      v7 = *a2 + 1;
      *a2 = v7;
      v9 += 32;
      v8 -= 256;
    }

    while (v8);
  }

  return result;
}

uint64_t FIK::Enrollment::DataLogger::exportTasksFrame(uint64_t result, float32x4_t *a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 152))
  {
    return FIK::Enrollment::Exporter::appendPoseToFile(result + 24, a2, a3, a4);
  }

  return result;
}

void *FIK::Enrollment::DataLogger::setupSolveExporter(void *result, FIK *a2)
{
  if (result[92])
  {
    v2 = result;
    FIK::Enrollment::queryNames<FIK::MoCapBone>(a2, v3);
    FIK::IKArray<std::string_view>::push_back<char const(&)[4],void>(v3, "vio");
    result = FIK::Enrollment::Exporter::setupForNames((v2 + 76), v3);
    v3[0] = 0;
    if (v4)
    {
      return (*(*v5 + 24))(v5, v4, 0, 8);
    }
  }

  return result;
}

void *FIK::Enrollment::queryNames<FIK::MoCapBone>@<X0>(FIK *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = FIK::defaultAllocator(a1);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = v4;
  result = FIK::IKArray<std::string_view>::reserve(a2, *a1);
  if (*a1)
  {
    v6 = *(a1 + 2);
    v7 = *a2;
    v8 = 544 * *a1;
    v9 = (v6 + 16);
    do
    {
      v10 = *v9;
      if (*v9)
      {
        v11 = *(v9 - 1);
      }

      else
      {
        v11 = &unk_245A04BAE;
      }

      result = FIK::IKArray<std::string_view>::reserve(a2, v7 + 1);
      v12 = (a2[2] + 16 * *a2);
      *v12 = v11;
      v12[1] = v10;
      v7 = *a2 + 1;
      *a2 = v7;
      v9 += 68;
      v8 -= 544;
    }

    while (v8);
  }

  return result;
}

size_t FIK::IKArray<std::string_view>::push_back<char const(&)[4],void>(uint64_t *a1, const char *a2)
{
  FIK::IKArray<std::string_view>::reserve(a1, *a1 + 1);
  v4 = *a1;
  v5 = (a1[2] + 16 * *a1);
  *v5 = a2;
  result = strlen(a2);
  v5[1] = result;
  *a1 = v4 + 1;
  return result;
}

FIK *FIK::Enrollment::DataLogger::exportSolvedFrame(FIK *result, float32x4_t *a2, uint64_t a3, float32x4_t *a4, uint64_t a5)
{
  if (*(result + 92))
  {
    v9 = result;
    v10 = FIK::defaultAllocator(result);
    FIK::IKArray<FIK::Transform>::IKArray<FIK::Transform,void>(&v14, a3 + 1, v10);
    v11 = v15;
    if (a3)
    {
      v12 = &a2[2 * a3];
      do
      {
        *v11 = *a2;
        v11[1] = a2[1];
        a2 += 2;
        v11 += 2;
      }

      while (a2 != v12);
      v11 = v15;
    }

    v13 = &v11[2 * v14];
    v13[-2] = *a4;
    v13[-1] = a4[1];
    result = FIK::Enrollment::Exporter::appendPoseToFile(v9 + 608, v15, v14, a5);
    v14 = 0;
    if (v15)
    {
      return (*(*v16 + 24))(v16, v15, 0, 8);
    }
  }

  return result;
}

uint64_t FIK::Enrollment::SourceAndTargetDataLogger::SourceAndTargetDataLogger(uint64_t a1, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = __len;
  if (__len)
  {
    memmove(&__dst, __src, __len);
  }

  __dst.__r_.__value_.__s.__data_[__len] = 0;
  v5.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  std::to_string(&v9, v5.__d_.__rep_ / 1000000.0);
  if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v9;
  }

  else
  {
    v6 = v9.__r_.__value_.__r.__words[0];
  }

  if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v9.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v9.__r_.__value_.__l.__size_;
  }

  FIK::Enrollment::combinePath(v6, size, &__dst, &__p);
  FIK::Enrollment::createPath(&__p, a1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  return a1;
}

BOOL FIK::Enrollment::SourceAndTargetDataLogger::exportOriginalSources(uint64_t a1, const char **a2, uint64_t a3, float32x4_t *a4, uint64_t a5)
{
  v29[21] = *MEMORY[0x277D85DE8];
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v25, *a1, *(a1 + 8));
  }

  else
  {
    v25 = *a1;
  }

  FIK::Enrollment::combinePath("original_sources.csv", 0x14uLL, &v25, &__p);
  v9 = FIK::Enrollment::Exporter::Exporter(&v26);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  v10 = v28;
  if (v28)
  {
    v11 = FIK::defaultAllocator(v9);
    FIK::IKArray<std::string_view>::IKArray<char const* const,void>(&__p, a2, a3, v11);
    FIK::Enrollment::Exporter::setupForNames(&v26, &__p);
    __p = 0;
    if (v23)
    {
      (*(*v24 + 24))(v24, v23, 0, 8);
    }

    FIK::Enrollment::Exporter::appendPoseToFile(&v26, a4, a5, 0);
  }

  else
  {
    v12 = *ikinemaLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      FIK::Enrollment::SourceAndTargetDataLogger::exportOriginalSources(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  v26 = *MEMORY[0x277D82810];
  *(&v26 + *(v26 - 24)) = *(MEMORY[0x277D82810] + 24);
  MEMORY[0x245D77E20](&v27);
  std::ostream::~ostream();
  MEMORY[0x245D77F30](v29);
  v20 = *MEMORY[0x277D85DE8];
  return v10 != 0;
}

BOOL FIK::Enrollment::SourceAndTargetDataLogger::exportToFile(uint64_t a1, const char **a2, uint64_t a3, float32x4_t *a4, uint64_t a5, const std::string::value_type *__src, size_t __len)
{
  v33[21] = *MEMORY[0x277D85DE8];
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v29, *a1, *(a1 + 8));
  }

  else
  {
    v29 = *a1;
  }

  FIK::Enrollment::combinePath(__src, __len, &v29, &__p);
  v13 = FIK::Enrollment::Exporter::Exporter(&v30);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  v14 = v32;
  if (v32)
  {
    v15 = FIK::defaultAllocator(v13);
    FIK::IKArray<std::string_view>::IKArray<char const* const,void>(&__p, a2, a3, v15);
    FIK::Enrollment::Exporter::setupForNames(&v30, &__p);
    __p = 0;
    if (v27)
    {
      (*(*v28 + 24))(v28, v27, 0, 8);
    }

    FIK::Enrollment::Exporter::appendPoseToFile(&v30, a4, a5, 0);
  }

  else
  {
    v16 = *ikinemaLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      FIK::Enrollment::SourceAndTargetDataLogger::exportToFile(v16, v17, v18, v19, v20, v21, v22, v23);
    }
  }

  v30 = *MEMORY[0x277D82810];
  *(&v30 + *(v30 - 24)) = *(MEMORY[0x277D82810] + 24);
  MEMORY[0x245D77E20](&v31);
  std::ostream::~ostream();
  MEMORY[0x245D77F30](v33);
  v24 = *MEMORY[0x277D85DE8];
  return v14 != 0;
}

BOOL FIK::Enrollment::SourceAndTargetDataLogger::exportEnrollmentData(uint64_t a1, const char **a2, uint64_t a3, _DWORD *a4)
{
  v33[19] = *MEMORY[0x277D85DE8];
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v27, *a1, *(a1 + 8));
  }

  else
  {
    v27 = *a1;
  }

  FIK::Enrollment::combinePath("enrollment.csv", 0xEuLL, &v27, __p);
  v33[6] = 0;
  v7 = MEMORY[0x277D82860] + 24;
  v8 = MEMORY[0x277D82860] + 64;
  v33[0] = MEMORY[0x277D82860] + 64;
  v9 = MEMORY[0x277D82810];
  v10 = *(MEMORY[0x277D82810] + 16);
  v30 = *(MEMORY[0x277D82810] + 8);
  *&v31[*(v30 - 24) - 8] = v10;
  v11 = &v31[*(v30 - 24) - 8];
  std::ios_base::init(v11, v31);
  v11[1].__vftable = 0;
  v11[1].__fmtflags_ = -1;
  v30 = v7;
  v33[0] = v8;
  MEMORY[0x245D77E10](v31);
  if (!std::filebuf::open())
  {
    std::ios_base::clear(&v31[*(v30 - 24) - 8], *&v31[*(v30 - 24) + 24] | 4);
  }

  if (v29 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  v12 = v32;
  if (v32)
  {
    for (; a3; --a3)
    {
      v13 = *a2++;
      v14 = strlen(v13);
      v15 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v30, v13, v14);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v15, ",", 1);
      LODWORD(v13) = *a4++;
      v16 = std::ostream::operator<<();
      LOBYTE(__p[0]) = 10;
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v16, __p, 1);
    }
  }

  else
  {
    v17 = *ikinemaLogObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      FIK::Enrollment::SourceAndTargetDataLogger::exportEnrollmentData(v17, v18, v19, v20, v21, v22, v23, v24);
    }
  }

  v30 = *v9;
  *&v31[*(v30 - 24) - 8] = v9[3];
  MEMORY[0x245D77E20](v31);
  std::ostream::~ostream();
  MEMORY[0x245D77F30](v33);
  v25 = *MEMORY[0x277D85DE8];
  return v12 != 0;
}

BOOL FIK::Enrollment::SourceAndTargetDataLogger::exportAtlasData(std::string *this, const FIK::Transform *a2)
{
  v29[19] = *MEMORY[0x277D85DE8];
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v25, this->__r_.__value_.__l.__data_, this->__r_.__value_.__l.__size_);
  }

  else
  {
    v25 = *this;
  }

  FIK::Enrollment::combinePath("atlas_pose.csv", 0xEuLL, &v25, __p);
  v29[6] = 0;
  v3 = MEMORY[0x277D82860] + 24;
  v4 = MEMORY[0x277D82860] + 64;
  v29[0] = MEMORY[0x277D82860] + 64;
  v5 = MEMORY[0x277D82810];
  v6 = *(MEMORY[0x277D82810] + 16);
  v26 = *(MEMORY[0x277D82810] + 8);
  *&v27[*(v26 - 24) - 8] = v6;
  v7 = &v27[*(v26 - 24) - 8];
  std::ios_base::init(v7, v27);
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  v26 = v3;
  v29[0] = v4;
  MEMORY[0x245D77E10](v27);
  if (!std::filebuf::open())
  {
    std::ios_base::clear(&v27[*(v26 - 24) - 8], *&v27[*(v26 - 24) + 24] | 4);
  }

  if (SBYTE7(v23) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  v8 = v28;
  if (v28)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v26, "timeStamp,info#frame", 20);
    __p[0] = "Atlas";
    __p[1] = 5;
    v9 = FIK::Enrollment::operator<<(&v26, __p);
    LOBYTE(v24) = 10;
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v9, &v24, 1);
    v24 = 0;
    v10 = FIK::Enrollment::operator<<(&v26, &v24);
    v11 = *(a2 + 1);
    *__p = *a2;
    v23 = v11;
    FIK::Enrollment::operator<<(v10, __p);
  }

  else
  {
    v12 = *ikinemaLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      FIK::Enrollment::SourceAndTargetDataLogger::exportAtlasData(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  v26 = *v5;
  *&v27[*(v26 - 24) - 8] = v5[3];
  MEMORY[0x245D77E20](v27);
  std::ostream::~ostream();
  MEMORY[0x245D77F30](v29);
  v20 = *MEMORY[0x277D85DE8];
  return v8 != 0;
}

void *FIK::Enrollment::operator<<(void *a1, __int128 *a2)
{
  v9 = *a2;
  v4 = FIK::Enrollment::operator<<(a1, &v9);
  v8 = *a2;
  v5 = FIK::Enrollment::operator<<(v4, &v8);
  v7 = *a2;
  FIK::Enrollment::operator<<(v5, &v7);
  return a1;
}

void *FIK::Enrollment::operator<<(void *a1, uint64_t *a2)
{
  v4 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a1, ",", 1);
  v5 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v4, *a2, a2[1]);
  v8 = 35;
  v6 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v5, &v8, 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v6, a2[2], a2[3]);
  return a1;
}

{
  v4 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a1, ",", 1);
  v5 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v4, *a2, a2[1]);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v5, "#translateX", 11);
  v6 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a1, ",", 1);
  v7 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v6, *a2, a2[1]);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v7, "#translateY", 11);
  v8 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a1, ",", 1);
  v9 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v8, *a2, a2[1]);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v9, "#translateZ", 11);
  return a1;
}

{
  v4 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a1, ",", 1);
  v5 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v4, *a2, a2[1]);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v5, "#rotateX", 8);
  v6 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a1, ",", 1);
  v7 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v6, *a2, a2[1]);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v7, "#rotateY", 8);
  v8 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a1, ",", 1);
  v9 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v8, *a2, a2[1]);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v9, "#rotateZ", 8);
  return a1;
}

{
  v4 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a1, ",", 1);
  v5 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v4, *a2, a2[1]);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v5, "#rotateQX", 9);
  v6 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a1, ",", 1);
  v7 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v6, *a2, a2[1]);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v7, "#rotateQY", 9);
  v8 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a1, ",", 1);
  v9 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v8, *a2, a2[1]);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v9, "#rotateQZ", 9);
  v10 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a1, ",", 1);
  v11 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v10, *a2, a2[1]);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v11, "#rotateQW", 9);
  return a1;
}

void *FIK::Enrollment::operator<<(void *a1, int *a2)
{
  v10 = 44;
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a1, &v10, 1);
  v4 = *a2;
  v5 = std::ostream::operator<<();
  v11 = 44;
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v5, &v11, 1);
  v6 = a2[1];
  v7 = std::ostream::operator<<();
  v12 = 44;
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v7, &v12, 1);
  v8 = a2[2];
  std::ostream::operator<<();
  return a1;
}

void FIK::Enrollment::eulerAnglesDegreesFromQuat(float32x4_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  LODWORD(v4) = HIDWORD(a1->i64[0]);
  v5 = COERCE_FLOAT(a1->i64[1]);
  v6 = -v5;
  LODWORD(v7) = HIDWORD(*a1);
  v8 = vmuls_lane_f32(v4, *a1, 3);
  v9 = -COERCE_FLOAT(*a1);
  v10 = vmuls_lane_f32(v3.f32[0], v3, 3);
  v19 = *a1;
  v11 = (v8 + (v5 * v3.f32[0])) + (v8 + (v5 * v3.f32[0]));
  v12 = 1.0;
  if (v11 <= 1.0)
  {
    v12 = v11;
  }

  if (v11 < -1.0)
  {
    v12 = -1.0;
  }

  v21 = asinf(v12);
  if (fabsf(v11) >= 0.9999)
  {
    v18 = atan2f((v10 + (v4 * v5)) + (v10 + (v4 * v5)), (((v5 * v6) + (v4 * v4)) + (v7 * v7)) + (v9 * v19.f32[0]));
    DWORD2(v17) = 0;
    *&v17 = __PAIR64__(LODWORD(v21), LODWORD(v18));
  }

  else
  {
    v13 = (v7 * v6) + (v19.f32[0] * v4);
    v14 = (((v7 * v7) + (v5 * v5)) + (v9 * v19.f32[0])) - (v4 * v4);
    v15 = (((v19.f32[0] * v19.f32[0]) - (v4 * v4)) + (v6 * v5)) + (v7 * v7);
    v20 = atan2f(-(v10 - (v4 * v5)) * -2.0, v14);
    v16 = atan2f(v13 * -2.0, v15);
    *&v17 = __PAIR64__(LODWORD(v21), LODWORD(v20));
    *(&v17 + 2) = v16;
  }

  HIDWORD(v17) = 0;
  *a2 = v17;
}

uint64_t std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>@<X0>(const void **a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  result = std::string::basic_string[abi:nn200100](a3, v5 + 1);
  if (*(result + 23) >= 0)
  {
    v7 = result;
  }

  else
  {
    v7 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    result = memmove(v7, v8, v5);
  }

  v9 = &v7[v5];
  *v9 = a2;
  v9[1] = 0;
  return result;
}

uint64_t std::string::basic_string[abi:nn200100](uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void *FIK::Enrollment::SourceExporter::SourceExporter(void *a1, char *__s, uint64_t a3, uint64_t a4)
{
  strlen(__s);
  FIK::Enrollment::Exporter::Exporter(a1);
  a1[71] = *(a4 + 8) * *(a4 + 24);
  if (a1[16])
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a1, "timeStamp,info#frame", 20);
    __p[0] = "hmd2world";
    __p[1] = 9;
    v6 = FIK::Enrollment::operator<<(a1, __p);
    v34.__r_.__value_.__r.__words[0] = "Atlas";
    v34.__r_.__value_.__l.__size_ = 5;
    FIK::Enrollment::operator<<(v6, &v34);
    v31 = *(a4 + 24);
    if (v31)
    {
      v7 = 0;
      do
      {
        v32 = v7;
        v8 = *(*(a4 + 16) + 4 * v7) - 1;
        v9 = "mcam_l";
        if (v8 <= 2)
        {
          v9 = off_278E8A130[v8];
        }

        v41 = 6;
        v10 = *v9;
        WORD2(v39) = *(v9 + 2);
        LODWORD(v39) = v10;
        BYTE6(v39) = 0;
        __p[0] = &v39;
        __p[1] = 6;
        FIK::Enrollment::operator<<(a1, __p);
        v11 = *(a4 + 8);
        if (v11)
        {
          v12 = *a4;
          v13 = 8 * v11;
          do
          {
            v33.__r_.__value_.__r.__words[0] = *v12;
            v33.__r_.__value_.__l.__size_ = strlen(v33.__r_.__value_.__l.__data_);
            v14 = FIK::Enrollment::operator<<(a1, &v33);
            __p[0] = *v12;
            __p[1] = strlen(__p[0]);
            v37 = "confidence";
            v38 = 10;
            v15 = FIK::Enrollment::operator<<(v14, __p);
            v34.__r_.__value_.__r.__words[0] = *v12;
            v34.__r_.__value_.__l.__size_ = strlen(v34.__r_.__value_.__l.__data_);
            v34.__r_.__value_.__r.__words[2] = "valid";
            v35 = 5;
            FIK::Enrollment::operator<<(v15, &v34);
            if (v41 >= 0)
            {
              v16 = v41;
            }

            else
            {
              v16 = v40;
            }

            std::string::basic_string[abi:nn200100](&v34, v16 + 5);
            if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v17 = &v34;
            }

            else
            {
              v17 = v34.__r_.__value_.__r.__words[0];
            }

            if (v16)
            {
              if (v41 >= 0)
              {
                v18 = &v39;
              }

              else
              {
                v18 = v39;
              }

              memmove(v17, v18, v16);
            }

            strcpy(v17 + v16, "_ray_");
            v19 = std::string::append(&v34, *v12);
            v20 = v19->__r_.__value_.__r.__words[2];
            *__p = *&v19->__r_.__value_.__l.__data_;
            v37 = v20;
            v19->__r_.__value_.__l.__size_ = 0;
            v19->__r_.__value_.__r.__words[2] = 0;
            v19->__r_.__value_.__r.__words[0] = 0;
            if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v34.__r_.__value_.__l.__data_);
            }

            v21 = HIBYTE(v37);
            v22 = __p;
            if (SHIBYTE(v37) < 0)
            {
              v22 = __p[0];
              v21 = __p[1];
            }

            v34.__r_.__value_.__r.__words[0] = v22;
            v34.__r_.__value_.__l.__size_ = v21;
            FIK::Enrollment::operator<<(a1, &v34);
            if (v41 >= 0)
            {
              v23 = v41;
            }

            else
            {
              v23 = v40;
            }

            std::string::basic_string[abi:nn200100](&v33, v23 + 8);
            if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v24 = &v33;
            }

            else
            {
              v24 = v33.__r_.__value_.__r.__words[0];
            }

            if (v23)
            {
              if (v41 >= 0)
              {
                v25 = &v39;
              }

              else
              {
                v25 = v39;
              }

              memmove(v24, v25, v23);
            }

            strcpy(v24 + v23, "_rayEnd_");
            v26 = std::string::append(&v33, *v12);
            v27 = v26->__r_.__value_.__r.__words[2];
            *&v34.__r_.__value_.__l.__data_ = *&v26->__r_.__value_.__l.__data_;
            v34.__r_.__value_.__r.__words[2] = v27;
            v26->__r_.__value_.__l.__size_ = 0;
            v26->__r_.__value_.__r.__words[2] = 0;
            v26->__r_.__value_.__r.__words[0] = 0;
            if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v33.__r_.__value_.__l.__data_);
            }

            size = HIBYTE(v34.__r_.__value_.__r.__words[2]);
            if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v29 = &v34;
            }

            else
            {
              v29 = v34.__r_.__value_.__r.__words[0];
            }

            if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              size = v34.__r_.__value_.__l.__size_;
            }

            v33.__r_.__value_.__r.__words[0] = v29;
            v33.__r_.__value_.__l.__size_ = size;
            FIK::Enrollment::operator<<(a1, &v33);
            if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v34.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v37) < 0)
            {
              operator delete(__p[0]);
            }

            ++v12;
            v13 -= 8;
          }

          while (v13);
        }

        if (v41 < 0)
        {
          operator delete(v39);
        }

        v7 = v32 + 1;
      }

      while (v32 + 1 != v31);
    }
  }

  return a1;
}

uint64_t *FIK::IKArray<BOOL>::IKArray(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[3];
  *a1 = *a2;
  a1[1] = v5;
  if (v5)
  {
    v7 = (*(*v6 + 16))(v6, v5, 1);
    a1[2] = v7;
    a1[3] = v6;
    bzero(v7, v5);
    v4 = *a2;
    v8 = a1[2];
    if (!*a2)
    {
      return a1;
    }
  }

  else
  {
    v8 = 0;
    a1[2] = 0;
    a1[3] = v6;
    if (!v4)
    {
      return a1;
    }
  }

  v9 = a2[2];
  do
  {
    v10 = *v9++;
    *v8++ = v10;
    --v4;
  }

  while (v4);
  return a1;
}

void *FIK::IKArray<FIK::Enrollment::LiftedSource>::IKArray(void *a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  *a1 = v5;
  FIK::IKArray<FIK::Enrollment::LiftedSource>::MemoryBlock::MemoryBlock(a1 + 1, v4, a2[3]);
  v6 = *a2;
  if (*a2)
  {
    v7 = a1[2];
    v8 = a2[2];
    do
    {
      v9 = *v8;
      *(v7 + 8) = *(v8 + 2);
      *v7 = v9;
      v7 += 12;
      v8 = (v8 + 12);
      --v6;
    }

    while (v6);
  }

  return a1;
}

void *FIK::IKArray<FIK::Enrollment::LiftedSource>::MemoryBlock::MemoryBlock(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  if (a2)
  {
    v5 = 12 * a2;
    v6 = (*(*a3 + 16))(a3, 12 * a2, 4);
    a1[1] = v6;
    a1[2] = a3;
    if (v5)
    {
      bzero(v6, v5);
    }
  }

  else
  {
    a1[1] = 0;
    a1[2] = a3;
  }

  return a1;
}

void *FIK::IKArray<FIK::Enrollment::RaySource>::IKArray(void *a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  *a1 = v5;
  FIK::IKArray<IKString>::MemoryBlock::MemoryBlock(a1 + 1, v4, a2[3]);
  v6 = *a2;
  if (*a2)
  {
    v7 = a1[2];
    v8 = a2[2];
    do
    {
      v9 = *v8;
      *(v7 + 16) = *(v8 + 2);
      *v7 = v9;
      v7 += 24;
      v8 = (v8 + 24);
      --v6;
    }

    while (v6);
  }

  return a1;
}

void *FIK::IKArray<FIK::Enrollment::VirtualSourceHierarchy::VirtualSourceDescriptor>::IKArray(void *a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  *a1 = v5;
  FIK::IKArray<FIK::Enrollment::VirtualSourceHierarchy::VirtualSourceDescriptor>::MemoryBlock::MemoryBlock(a1 + 1, v4, a2[3]);
  v6 = *a2;
  if (*a2)
  {
    v7 = a1[2];
    v8 = a2[2];
    do
    {
      *v7 = *v8;
      *(v7 + 16) = *(v8 + 16);
      *(v7 + 32) = *(v8 + 32);
      v8 += 48;
      v7 += 48;
      --v6;
    }

    while (v6);
  }

  return a1;
}

void *FIK::IKArray<FIK::Enrollment::VirtualSourceHierarchy::VirtualSourceDescriptor>::MemoryBlock::MemoryBlock(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  if (a2)
  {
    v5 = 48 * a2;
    v6 = (*(*a3 + 16))(a3, 48 * a2, 16);
    a1[1] = v6;
    a1[2] = a3;
    if (v5)
    {
      bzero(v6, v5);
    }
  }

  else
  {
    a1[1] = 0;
    a1[2] = a3;
  }

  return a1;
}

void FIK::Enrollment::DataPreprocessor::~DataPreprocessor(FIK::Enrollment::DataPreprocessor *this)
{
  std::__optional_destruct_base<FIK::Enrollment::VirtualSourceController,false>::~__optional_destruct_base[abi:nn200100](this + 176);
  *(this + 18) = 0;
  v2 = *(this + 20);
  if (v2)
  {
    (*(**(this + 21) + 24))(*(this + 21), v2, 0, 8);
  }

  *(this + 14) = 0;
  v3 = *(this + 16);
  if (v3)
  {
    (*(**(this + 17) + 24))(*(this + 17), v3, 0, 8);
  }

  *(this + 10) = 0;
  v4 = *(this + 12);
  if (v4)
  {
    (*(**(this + 13) + 24))(*(this + 13), v4, 0, 8);
  }

  *(this + 6) = 0;
  v5 = *(this + 8);
  if (v5)
  {
    (*(**(this + 9) + 24))(*(this + 9), v5, 0, 8);
  }

  *(this + 2) = 0;
  v6 = *(this + 4);
  if (v6)
  {
    (*(**(this + 5) + 24))(*(this + 5), v6, 0, 8);
  }
}

uint64_t std::__optional_destruct_base<FIK::Enrollment::VirtualSourceController,false>::~__optional_destruct_base[abi:nn200100](uint64_t a1)
{
  if (*(a1 + 144) == 1)
  {
    *(a1 + 112) = 0;
    v2 = *(a1 + 128);
    if (v2)
    {
      (*(**(a1 + 136) + 24))(*(a1 + 136), v2, 0, 8);
    }
  }

  return a1;
}

void *FIK::IKArray<std::string_view>::IKArray<char const* const,void>(void *a1, const char **a2, uint64_t a3, uint64_t a4)
{
  *a1 = a3;
  FIK::IKArray<std::string_view>::MemoryBlock::MemoryBlock(a1 + 1, (a3 + 7) & 0xFFFFFFFFFFFFFFF8, a4);
  if (a3)
  {
    v7 = a1[2];
    v8 = 8 * a3;
    do
    {
      v9 = *a2++;
      *v7 = v9;
      v7[1] = strlen(v9);
      v7 += 2;
      v8 -= 8;
    }

    while (v8);
  }

  return a1;
}

uint64_t FIK::FilterNode::FilteringTask::FilteringTask(uint64_t a1, IKString *a2, uint64_t a3, float32x4_t *a4, float a5)
{
  IKString::operator+(a2, "_Task", 5, &v31);
  *a1 = &unk_28589BD98;
  *(a1 + 8) = a3;
  *(a1 + 16) = 0;
  IKString::IKString((a1 + 24), &v31, v33);
  if (v32)
  {
    (*(*v33 + 24))(v33, v31, 0, 8);
    v31 = 0;
    v32 = 0;
  }

  *a1 = &unk_28589C090;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = xmmword_245A01E80;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  v9 = *(a1 + 8) + *(**(a1 + 8) - 264);
  v10 = (*(*v9 + 200))(v9);
  v11 = (*(*v10 + 776))() * 0.3;
  if (v11 <= 1.0)
  {
    v12 = v11;
  }

  else
  {
    v12 = 1.0;
  }

  if (v11 >= 0.3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0.3;
  }

  *(a1 + 144) = v13;
  *(a1 + 128) = vmulq_n_f32(*a4, v13);
  v30 = *(*(*v10 + 544))(v10);
  v14 = (*(*v10 + 528))(v10);
  v15 = *(a1 + 128);
  v16 = vextq_s8(vuzp1q_s32(*v14, *v14), *v14, 0xCuLL);
  v17 = vnegq_f32(*v14);
  v18 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v15, v15), v15, 0xCuLL), v17), v15, v16);
  v19 = vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL);
  v20 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL), v17), v19, v16);
  v21.i64[0] = 0x4000000040000000;
  v21.i64[1] = 0x4000000040000000;
  v22 = vaddq_f32(v30, vmlaq_f32(v15, v21, vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v20, v20), v20, 0xCuLL), v19, *v14, 3)));
  v23 = 0.999;
  if ((1.0 - a5) <= 0.999)
  {
    v23 = 1.0 - a5;
  }

  v24 = 0.0;
  if ((1.0 - a5) >= 0.0)
  {
    v24 = v23;
  }

  *(a1 + 80) = v22;
  *(a1 + 96) = v22;
  *(a1 + 112) = v24;
  *(a1 + 116) = (v24 * 0.016667) / (1.0 - v24);
  *(a1 + 120) = v24;
  *(a1 + 124) = 1114636288;
  v25 = *(a1 + 8) + *(**(a1 + 8) - 264);
  (*(*v25 + 72))(v25, 1.0);
  v26.n128_u32[0] = *(a1 + 128);
  v27.n128_u32[0] = *(a1 + 132);
  v28.n128_u32[0] = *(a1 + 136);
  (*(**(a1 + 8) + 272))(v26, v27, v28);
  return a1;
}

uint64_t FIK::FilterNode::FilteringTask::setTarget(uint64_t result, float32x4_t *a2)
{
  if (*(result + 8))
  {
    v2 = a2[1];
    v3 = *(result + 128);
    v4 = vextq_s8(vuzp1q_s32(v2, v2), v2, 0xCuLL);
    v5 = vnegq_f32(v2);
    v6 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v3, v3), v3, 0xCuLL), v5), v3, v4);
    v7 = vextq_s8(vuzp1q_s32(v6, v6), v6, 0xCuLL);
    v8 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL), v5), v7, v4);
    v9 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL), v7, v2, 3);
    v2.i64[0] = 0x4000000040000000;
    v2.i64[1] = 0x4000000040000000;
    v10 = vaddq_f32(*a2, vmlaq_f32(v3, v2, v9));
    return (*(*result + 8))(result, &v10);
  }

  return result;
}

uint64_t FIK::FilterNode::FilteringTask::setPositionTarget(float32x4_t *a1, float32x4_t *a2)
{
  result = a1->i64[1];
  if (result)
  {
    v4 = a1[7].f32[0];
    v5 = a1[7].f32[1];
    v6 = vaddq_f32(vmulq_n_f32(*a2, v4), vmulq_n_f32(a1[5], 1.0 - v4));
    v7 = vaddq_f32(vmulq_n_f32(a1[6], 1.0 - v4), vmulq_n_f32(v6, v4));
    a1[5] = v6;
    a1[6] = v7;
    v8 = vsubq_f32(vmulq_n_f32(v6, v5 + 2.0), vmulq_n_f32(v7, v5 + 1.0));
    return (*(*result + 248))(result, &v8);
  }

  return result;
}

__n128 FIK::FilterNode::FilteringTask::setOffset(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *a2;
  result = *(a2 + 16);
  *(a1 + 64) = result;
  return result;
}

uint64_t FIK::FilterNode::Solve(void *a1, uint64_t a2)
{
  (*(*a1 + 16))(a1);
  FIK::PoseConverter::PoseConverter<FIK::MoCapBone>(v15, a1[46], a1[44], a2);
  if (FIK::IKSolver::numSegments((a1 + 2)))
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    do
    {
      GlobalTransform = FIK::PoseConverter::GetGlobalTransform(v15, v5);
      v8 = GlobalTransform[1];
      v14[0] = *GlobalTransform;
      v14[1] = v8;
      v9 = 3;
      v10 = v4;
      do
      {
        v11 = (a1[62] + 160 * v10);
        (**v11)(v11, v14);
        ++v10;
        --v9;
      }

      while (v9);
      v4 += 3;
      v5 = ++v6;
    }

    while (FIK::IKSolver::numSegments((a1 + 2)) > v6);
  }

  updated = FIK::AnimNode::SolveAndUpdatePose(a1, a2);
  FIK::PoseConverter::~PoseConverter(v15);
  return updated;
}

float FIK::FilterNode::SetFilterAlpha(FIK::FilterNode *this, float result)
{
  *(this + 118) = result;
  v2 = *(this + 60);
  if (v2)
  {
    v3 = 0.99;
    if (result <= 0.99)
    {
      v3 = result;
    }

    v4 = result < 0.0;
    result = 0.0;
    if (!v4)
    {
      result = v3;
    }

    v5 = (*(this + 62) + 124);
    v6 = 160 * v2;
    do
    {
      v7 = (result * (1.0 / *v5)) / (1.0 - result);
      *(v5 - 3) = result;
      *(v5 - 2) = v7;
      *(v5 - 1) = result;
      v5 += 40;
      v6 -= 160;
    }

    while (v6);
  }

  return result;
}

uint64_t FIK::FilterNode::FilterNode(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = FIK::AnimNode::AnimNode(a1, a2);
  *v3 = &unk_28589C0C8;
  *(v3 + 118) = 0;
  v4 = FIK::defaultAllocator(v3);
  *(a1 + 480) = 0;
  *(a1 + 488) = 0;
  *(a1 + 496) = 0;
  *(a1 + 504) = v4;
  if (FIK::IKSolver::numSegments((a1 + 16)))
  {
    LODWORD(v5) = 0;
    do
    {
      Segment = FIK::IKSolver::getSegment((a1 + 16), v5);
      v7 = (*(*Segment + 936))(Segment);
      v8 = &FIK::FilterNode::FilterNode(FIK::MoCapRig const&)::markerlocalPositions;
      v9 = 48;
      do
      {
        v10 = FIK::IKSolver::addPositionTask((a1 + 16), Segment);
        v11 = FIK::defaultAllocator(v10);
        v15 = 0;
        v16 = 0;
        v17 = v11;
        v12 = strlen(v7);
        IKString::assign(&v15, v7, v12);
        FIK::FilterNode::FilteringTask::FilteringTask(v18, &v15, v10, v8, *(a1 + 472));
        if (v16)
        {
          (*(*v17 + 3))(v17, v15, 0, 8);
        }

        FIK::IKArray<FIK::FilterNode::FilteringTask>::push_back<FIK::FilterNode::FilteringTask&,void>((a1 + 480), v18);
        FIK::FeetSliding::SlidingTask::~SlidingTask(v18);
        ++v8;
        v9 -= 16;
      }

      while (v9);
      v5 = (v5 + 1);
    }

    while (FIK::IKSolver::numSegments((a1 + 16)) > v5);
  }

  v13 = *MEMORY[0x277D85DE8];
  return a1;
}

float FIK::IKArray<FIK::FilterNode::FilteringTask>::push_back<FIK::FilterNode::FilteringTask&,void>(uint64_t *a1, uint64_t a2)
{
  FIK::IKArray<FIK::FilterNode::FilteringTask>::reserve(a1, *a1 + 1);
  v4 = a1[2] + 160 * *a1;
  *v4 = &unk_28589BD98;
  *(v4 + 8) = *(a2 + 8);
  IKString::IKString((v4 + 24), (a2 + 24));
  *v4 = &unk_28589C090;
  *(v4 + 48) = *(a2 + 48);
  *(v4 + 64) = *(a2 + 64);
  *(v4 + 80) = *(a2 + 80);
  *(v4 + 96) = *(a2 + 96);
  *(v4 + 112) = *(a2 + 112);
  *(v4 + 128) = *(a2 + 128);
  result = *(a2 + 144);
  *(v4 + 144) = result;
  ++*a1;
  return result;
}

unint64_t FIK::FilterNode::constraintByIndex(FIK::FilterNode *this, unint64_t a2)
{
  if (*(this + 60) <= a2)
  {
    return 0;
  }

  else
  {
    return *(this + 62) + 160 * a2;
  }
}

void FIK::FilterNode::~FilterNode(FIK::FilterNode *this)
{
  *this = &unk_28589C0C8;
  FIK::IKArray<FIK::FilterNode::FilteringTask>::~IKArray(this + 60);

  FIK::AnimNode::~AnimNode(this);
}

{
  *this = &unk_28589C0C8;
  FIK::IKArray<FIK::FilterNode::FilteringTask>::~IKArray(this + 60);
  FIK::AnimNode::~AnimNode(this);

  FIK::AnimNode::operator delete(v2);
}

uint64_t *FIK::IKArray<FIK::FilterNode::FilteringTask>::~IKArray(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[2];
    do
    {
      FIK::FeetSliding::SlidingTask::~SlidingTask(v3);
      v3 = (v4 + 160);
      --v2;
    }

    while (v2);
  }

  *a1 = 0;
  v5 = a1[2];
  if (v5)
  {
    (*(*a1[3] + 24))(a1[3], v5, 0, 8);
  }

  return a1;
}

void FIK::IKArray<FIK::FilterNode::FilteringTask>::reserve(uint64_t *a1, unint64_t a2)
{
  if (a1[1] < a2)
  {
    v3 = a1[3];
    v4 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v4)
    {
      v5 = (*(*v3 + 16))(a1[3], 160 * v4, 16);
      v6 = v5;
      if (160 * v4)
      {
        bzero(v5, 160 * v4);
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = a1[2];
    v8 = *a1;
    if (*a1)
    {
      v9 = 0;
      do
      {
        v10 = &v6[v9];
        *v10 = &unk_28589BD98;
        *(v10 + 8) = *(v7 + v9 + 8);
        IKString::IKString(&v6[v9 + 24], (v7 + v9 + 24));
        *v10 = &unk_28589C090;
        *(v10 + 3) = *(v7 + v9 + 48);
        *(v10 + 4) = *(v7 + v9 + 64);
        *(v10 + 5) = *(v7 + v9 + 80);
        *(v10 + 6) = *(v7 + v9 + 96);
        *(v10 + 7) = *(v7 + v9 + 112);
        *(v10 + 8) = *(v7 + v9 + 128);
        *(v10 + 36) = *(v7 + v9 + 144);
        v9 += 160;
        --v8;
      }

      while (v8);
      v7 = a1[2];
      v11 = *a1;
    }

    else
    {
      v11 = 0;
    }

    v12 = a1[3];
    a1[1] = v4;
    a1[2] = v6;
    a1[3] = v3;
    if (v11)
    {
      v13 = v7;
      do
      {
        FIK::FeetSliding::SlidingTask::~SlidingTask(v13);
        v13 = (v14 + 160);
        --v11;
      }

      while (v11);
    }

    if (v7)
    {
      v15 = *(*v12 + 24);

      v15(v12, v7, 0, 8);
    }
  }
}

void FIK::RetargetingNode::createTasks(FIK::RetargetingNode *this)
{
  FIK::IKArray<FIK::RetargetingNode::RetargetTask>::reserve(this + 215, *(this + 40));
  v2 = *(this + 40);
  if (v2)
  {
    v3 = *(this + 42);
    v4 = v2 << 8;
    do
    {
      if (v3[52] == 1)
      {
        v5 = FIK::IKSolver::addPositionTask(this + 2, (v3 + 24));
      }

      else
      {
        v5 = 0;
      }

      if (v3[53] == 1)
      {
        v6 = FIK::IKSolver::addOrientationTask(this + 2, (v3 + 24));
      }

      else
      {
        v6 = 0;
      }

      FIK::RetargetingNode::RetargetTask::RetargetTask(v9, v5, v6, v3);
      v8 = FIK::IKArray<FIK::RetargetingNode::RetargetTask>::push_back<FIK::RetargetingNode::RetargetTask,void>(this + 215, v9);
      v9[0] = &unk_28589BD98;
      if (v9[4])
      {
        (*(*v10 + 24))(v10, v9[3], 0, 8, v8);
      }

      FIK::AnimNode::updateConstraintSettings(*(this + 217) + 112 * *(this + 215) - 112, v3, v7);
      v3 += 256;
      v4 -= 256;
    }

    while (v4);
  }
}

void FIK::IKArray<FIK::RetargetingNode::RetargetTask>::reserve(uint64_t *a1, unint64_t a2)
{
  if (a1[1] < a2)
  {
    v3 = a1[3];
    v4 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v4)
    {
      v5 = (*(*v3 + 16))(a1[3], 112 * v4, 16);
      v6 = v5;
      if (112 * v4)
      {
        bzero(v5, 112 * v4);
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = a1[2];
    v8 = *a1;
    if (*a1)
    {
      v9 = (v6 + 24);
      v10 = (v7 + 48);
      v11 = v6;
      do
      {
        *(v9 - 3) = &unk_28589BD98;
        *(v9 - 1) = *(v10 - 5);
        v12 = IKString::IKString(v9, v10 - 3, *(v10 - 1));
        *(v12 - 3) = &unk_28589C1B8;
        *(v12 + 3) = *v10;
        *(v12 + 5) = *(v10 + 1);
        *(v12 + 7) = *(v10 + 2);
        *(v12 + 9) = *(v10 + 3);
        v9 = v12 + 14;
        v11 += 112;
        v10 += 14;
        --v8;
      }

      while (v8);
      v7 = a1[2];
      v13 = *a1;
    }

    else
    {
      v13 = 0;
    }

    v14 = a1[3];
    a1[1] = v4;
    a1[2] = v6;
    a1[3] = v3;
    if (v13)
    {
      v15 = v7;
      do
      {
        std::__destroy_at[abi:nn200100]<FIK::RetargetingNode::RetargetTask,0>(v15);
        v15 += 112;
        --v13;
      }

      while (v13);
    }

    if (v7)
    {
      v16 = *(*v14 + 24);

      v16(v14, v7, 0, 8);
    }
  }
}

__n128 FIK::IKArray<FIK::RetargetingNode::RetargetTask>::push_back<FIK::RetargetingNode::RetargetTask,void>(uint64_t *a1, uint64_t a2)
{
  FIK::IKArray<FIK::RetargetingNode::RetargetTask>::reserve(a1, *a1 + 1);
  v4 = a1[2] + 112 * *a1;
  *v4 = &unk_28589BD98;
  *(v4 + 8) = *(a2 + 8);
  IKString::IKString((v4 + 24), (a2 + 24), *(a2 + 40));
  *v4 = &unk_28589C1B8;
  *(v4 + 48) = *(a2 + 48);
  *(v4 + 64) = *(a2 + 64);
  *(v4 + 80) = *(a2 + 80);
  result = *(a2 + 96);
  *(v4 + 96) = result;
  ++*a1;
  return result;
}

uint64_t FIK::RetargetingNode::createAlgorithmBlocks(FIK::RetargetingNode *this)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13 = 0;
  v14 = FIK::defaultAllocator(this);
  IKString::assign(&v12, "sources", 7);
  v2 = FIK::AnimNode::registerBuffer<FIK::Transform>(this, &v12, *(this + 48));
  *(this + 208) = v2;
  if (v13)
  {
    v2 = (*(*v14 + 3))(v14, v12, 0, 8);
  }

  v3 = FIK::defaultAllocator(v2);
  v12 = 0;
  v13 = 0;
  v14 = v3;
  IKString::assign(&v12, "output", 6);
  v4 = FIK::AnimNode::registerBuffer<FIK::Transform>(this, &v12, *(this + 44));
  *(this + 210) = v4;
  if (v13)
  {
    v4 = (*(*v14 + 3))(v14, v12, 0, 8);
  }

  v5 = FIK::defaultAllocator(v4);
  v12 = 0;
  v13 = 0;
  v14 = v5;
  IKString::assign(&v12, "targets", 7);
  *(this + 209) = FIK::AnimNode::registerBuffer<FIK::Transform>(this, &v12, *(this + 40));
  if (v13)
  {
    (*(*v14 + 3))(v14, v12, 0, 8);
  }

  *(this + 213) = FIK::AnimNode::appendAlgorithm<ikinema::GenerateMocapConstraintTargetsAlgorithm,FIK::MoCapRig &,ikinema::BufferKey &,ikinema::BufferKey &>(this, this + 144, this + 208, this + 209);
  if (*(this + 448) == 1)
  {
    v6 = *(this + 40);
    if (v6)
    {
      v7 = v6 << 8;
      v8 = (*(this + 42) + 160);
      while (*v8 == 0.0)
      {
        v8 += 64;
        v7 -= 256;
        if (!v7)
        {
          goto LABEL_14;
        }
      }

      LODWORD(v12) = 100;
      FIK::AnimNode::appendAlgorithm<ikinema::TaskFilterAlgorithm,FIK::MoCapRig &,int,ikinema::BufferKey &>(this, this + 144, &v12, this + 209);
    }
  }

LABEL_14:
  v16 = *(this + 104);
  makeKeyArray(&v16, 2uLL, &v12);
  *(this + 211) = FIK::AnimNode::appendAlgorithm<ikinema::ScalePipeDataAlgorithm,char const(&)[17],float &,FIK::IKArray<ikinema::BufferKey>>(this, "applySourceScale", this + 113, &v12);
  v12 = 0;
  if (v14)
  {
    (*(*v15 + 24))(v15, v14, 0, 8);
  }

  *(this + 214) = FIK::AnimNode::appendAlgorithm<ikinema::SetMocapTargetAlgorithm,FIK::MoCapRig &,ikinema::BufferKey &,ikinema::BufferKey &>(this, this + 144, this + 208, this + 209);
  *(this + 58) = FIK::AnimNode::appendAlgorithm<ikinema::DoSolveAlgorithm,FIK::IKSolver &,unsigned int &,ikinema::BufferKey &>(this, this + 16, this + 2, this + 210);
  v11 = 1065353216;
  *&v16 = *(this + 210);
  makeKeyArray(&v16, 1uLL, &v12);
  *(this + 212) = FIK::AnimNode::appendAlgorithm<ikinema::ScalePipeDataAlgorithm,char const(&)[17],float &,FIK::IKArray<ikinema::BufferKey>>(this, "applyOutputScale", &v11, &v12);
  v12 = 0;
  if (v14)
  {
    (*(*v15 + 24))(v15, v14, 0, 8);
  }

  result = FIK::AnimNode::validateAlgorithms(this);
  if ((result & 1) == 0)
  {
    result = FIK::RetargetingNode::createAlgorithmBlocks();
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t FIK::AnimNode::registerBuffer<FIK::Transform>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 8))
  {
    v4 = *a2;
  }

  else
  {
    v4 = &unk_245A04BAE;
  }

  ikinema::BufferDescriptor::create<FIK::Transform>(v4, *(a2 + 8), a3, v7);
  ikinema::BufferContainer::createBuffer((a1 + 104), v7);
  v5 = v9;
  if (v7[1])
  {
    (*(*v8 + 24))(v8, v7[0], 0, 8);
  }

  return v5;
}

uint64_t (***FIK::AnimNode::appendAlgorithm<ikinema::GenerateMocapConstraintTargetsAlgorithm,FIK::MoCapRig &,ikinema::BufferKey &,ikinema::BufferKey &>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4))(void)
{
  ikinema::GenerateMocapConstraintTargetsAlgorithm::create(a2, *a3, *a4, &v11);
  FIK::IKArray<ikinema::AlgorithmHandle>::reserve((a1 + 72), *(a1 + 72) + 1);
  v5 = *(a1 + 88);
  v6 = *(a1 + 72);
  v7 = v11;
  v11 = 0;
  *(v5 + 8 * v6) = v7;
  v8 = v6 + 1;
  *(a1 + 72) = v8;
  if (v11)
  {
    (*(*v11 + 8))(v11);
    FIK::FIKFree(v11, v9);
    v5 = *(a1 + 88);
    v8 = *(a1 + 72);
  }

  return ikinema::AlgorithmBlock::as<ikinema::GenerateMocapConstraintTargetsAlgorithm>(*(v5 + 8 * v8 - 8));
}

uint64_t (***FIK::AnimNode::appendAlgorithm<ikinema::TaskFilterAlgorithm,FIK::MoCapRig &,int,ikinema::BufferKey &>(uint64_t a1, uint64_t a2, int *a3, uint64_t *a4))(void)
{
  ikinema::TaskFilterAlgorithm::create(a2, *a3, *a4, &v11);
  FIK::IKArray<ikinema::AlgorithmHandle>::reserve((a1 + 72), *(a1 + 72) + 1);
  v5 = *(a1 + 88);
  v6 = *(a1 + 72);
  v7 = v11;
  v11 = 0;
  *(v5 + 8 * v6) = v7;
  v8 = v6 + 1;
  *(a1 + 72) = v8;
  if (v11)
  {
    (*(*v11 + 8))(v11);
    FIK::FIKFree(v11, v9);
    v5 = *(a1 + 88);
    v8 = *(a1 + 72);
  }

  return ikinema::AlgorithmBlock::as<ikinema::TaskFilterAlgorithm>(*(v5 + 8 * v8 - 8));
}

uint64_t (***FIK::AnimNode::appendAlgorithm<ikinema::ScalePipeDataAlgorithm,char const(&)[17],float &,FIK::IKArray<ikinema::BufferKey>>(uint64_t a1, char *__s, float *a3, uint64_t a4))(void)
{
  v8 = strlen(__s);
  v9 = *a3;
  v10 = *a4;
  v11 = *(a4 + 16);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v17 = v10;
  v18 = v11;
  ikinema::ScalePipeDataAlgorithm::create(__s, v8, &v17, &v19, v9);
  FIK::IKArray<ikinema::AlgorithmHandle>::reserve((a1 + 72), *(a1 + 72) + 1);
  v12 = *(a1 + 88);
  v13 = *(a1 + 72);
  v14 = v19;
  v19 = 0;
  *(v12 + 8 * v13) = v14;
  *(a1 + 72) = v13 + 1;
  if (v19)
  {
    (*(*v19 + 8))(v19);
    FIK::FIKFree(v19, v15);
  }

  *&v17 = 0;
  if (v18)
  {
    (*(**(&v18 + 1) + 24))(*(&v18 + 1), v18, 0, 8);
  }

  return ikinema::AlgorithmBlock::as<ikinema::ScalePipeDataAlgorithm>(*(*(a1 + 88) + 8 * *(a1 + 72) - 8));
}

void *makeKeyArray@<X0>(FIK *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a1;
  v6 = FIK::defaultAllocator(a1);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = v6;
  result = FIK::IKArray<FIK::Segment *>::reserve(a3, a2);
  if (a2)
  {
    v8 = *a3;
    v9 = 8 * a2;
    do
    {
      result = FIK::IKArray<FIK::Segment *>::reserve(a3, v8 + 1);
      v10 = *v4;
      v4 = (v4 + 8);
      *(a3[2] + 8 * *a3) = v10;
      v8 = *a3 + 1;
      *a3 = v8;
      v9 -= 8;
    }

    while (v9);
  }

  return result;
}

uint64_t (***FIK::AnimNode::appendAlgorithm<ikinema::SetMocapTargetAlgorithm,FIK::MoCapRig &,ikinema::BufferKey &,ikinema::BufferKey &>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4))(void)
{
  ikinema::SetMocapTargetAlgorithm::create(a2, *a3, *a4, &v11);
  FIK::IKArray<ikinema::AlgorithmHandle>::reserve((a1 + 72), *(a1 + 72) + 1);
  v5 = *(a1 + 88);
  v6 = *(a1 + 72);
  v7 = v11;
  v11 = 0;
  *(v5 + 8 * v6) = v7;
  v8 = v6 + 1;
  *(a1 + 72) = v8;
  if (v11)
  {
    (*(*v11 + 8))(v11);
    FIK::FIKFree(v11, v9);
    v5 = *(a1 + 88);
    v8 = *(a1 + 72);
  }

  return ikinema::AlgorithmBlock::as<ikinema::SetMocapTargetAlgorithm>(*(v5 + 8 * v8 - 8));
}

uint64_t (***FIK::AnimNode::appendAlgorithm<ikinema::DoSolveAlgorithm,FIK::IKSolver &,unsigned int &,ikinema::BufferKey &>(uint64_t a1, uint64_t a2, int *a3, uint64_t *a4))(void)
{
  ikinema::DoSolveAlgorithm::create(a2, *a3, *a4, &v11);
  FIK::IKArray<ikinema::AlgorithmHandle>::reserve((a1 + 72), *(a1 + 72) + 1);
  v5 = *(a1 + 88);
  v6 = *(a1 + 72);
  v7 = v11;
  v11 = 0;
  *(v5 + 8 * v6) = v7;
  v8 = v6 + 1;
  *(a1 + 72) = v8;
  if (v11)
  {
    (*(*v11 + 8))(v11);
    FIK::FIKFree(v11, v9);
    v5 = *(a1 + 88);
    v8 = *(a1 + 72);
  }

  return ikinema::AlgorithmBlock::as<ikinema::DoSolveAlgorithm>(*(v5 + 8 * v8 - 8));
}

uint64_t FIK::RetargetingNode::RetargetingNode(uint64_t a1, uint64_t a2)
{
  v3 = FIK::AnimNode::AnimNode(a1, a2);
  *v3 = &unk_28589C158;
  *(v3 + 472) = 0;
  *(v3 + 1056) = 0;
  *(v3 + 1064) = 0;
  *(v3 + 1648) = 0;
  *(v3 + 1656) = 0;
  *(v3 + 1664) = -1;
  *(v3 + 1672) = -1;
  *(v3 + 1680) = -1;
  v4 = FIK::defaultAllocator(v3);
  *(a1 + 1720) = 0;
  *(a1 + 1736) = 0;
  *(a1 + 1728) = 0;
  *(a1 + 1744) = v4;
  *(a1 + 1752) = 0;
  *(a1 + 1784) = 0;
  FIK::RetargetingNode::createTasks(a1);
  FIK::RetargetingNode::createAlgorithmBlocks(a1);
  return a1;
}

uint64_t FIK::RetargetingNode::setupPoseConverter(FIK::RetargetingNode *this)
{
  memset(v7, 0, sizeof(v7));
  v8 = FIK::defaultAllocator(this);
  memset(v6, 0, 24);
  v6[3] = FIK::defaultAllocator(v8);
  FIK::IKRigUtils::getRigBoneNames<FIK::MoCapRig>(this + 144, v7, v6);
  FIK::FKConverter::FKConverter(&v3, v7, v7, v6);
  std::optional<FIK::FKConverter>::operator=[abi:nn200100]<FIK::FKConverter,void>(this + 1752, &v3);
  *&v3 = 0;
  if (v4)
  {
    (*(*v5 + 24))(v5, v4, 0, 8);
  }

  FIK::IKArray<IKString>::~IKArray(v6);
  return FIK::IKArray<IKString>::~IKArray(v7);
}

void FIK::IKRigUtils::getRigBoneNames<FIK::MoCapRig>(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 208);
  if (v3)
  {
    v6 = (*(a1 + 224) + 32);
    v7 = 544 * v3;
    do
    {
      FIK::IKArray<IKString>::push_back<IKString&,void>(a2, v6 - 3);
      FIK::IKArray<IKString>::push_back<IKString&,void>(a3, v6);
      v6 += 68;
      v7 -= 544;
    }

    while (v7);
  }
}

uint64_t std::optional<FIK::FKConverter>::operator=[abi:nn200100]<FIK::FKConverter,void>(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 32) == 1)
  {
    FIK::IKArray<unsigned int>::operator=(a1, a2);
  }

  else
  {
    v3 = *a2;
    *a2 = 0;
    *a1 = v3;
    v4 = *(a2 + 1);
    v5 = a2[1];
    *(a2 + 1) = 0;
    *(a1 + 8) = v4;
    *(a2 + 2) = 0;
    *(a1 + 16) = v5;
    *(a1 + 32) = 1;
  }

  return a1;
}

unint64_t FIK::RetargetingNode::PassFKPose(uint64_t a1, uint64_t a2)
{
  result = FIK::IKSolver::numSegments((a1 + 16));
  if (result)
  {
    v5 = 0;
    for (i = 0; i < result; v5 = ++i)
    {
      v7 = *(a1 + 368) + 544 * v5;
      v8 = *(v7 + 280);
      if ((v8 & 0x80000000) == 0)
      {
        v9 = *(a2 + 32 * v8 + 16);
        v10 = *(v7 + 336);
        v11 = vnegq_f32(v9);
        v12 = vtrn2q_s32(v9, vtrn1q_s32(v9, v11));
        v13 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v9, v11, 8uLL), *v10.f32, 1), vextq_s8(v12, v12, 8uLL), v10.f32[0]);
        v14 = vrev64q_s32(v9);
        v14.i32[0] = v11.i32[1];
        v14.i32[3] = v11.i32[2];
        v15 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v9, v10, 3), v14, v10, 2), v13);
        v16 = *(v7 + 304);
        v17 = vnegq_f32(v16);
        v18 = vtrn2q_s32(v16, vtrn1q_s32(v16, v17));
        v19 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v16, v17, 8uLL), *v15.f32, 1), vextq_s8(v18, v18, 8uLL), v15.f32[0]);
        v20 = vrev64q_s32(v16);
        v20.i32[0] = v17.i32[1];
        v20.i32[3] = v17.i32[2];
        v22 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v16, v15, 3), v20, v15, 2), v19);
        Segment = FIK::IKSolver::getSegment((a1 + 16), i);
        (*(*Segment + 200))(Segment, &v22);
      }

      result = FIK::IKSolver::numSegments((a1 + 16));
    }
  }

  return result;
}

uint64_t FIK::RetargetingNode::Solve()
{
  v0 = ikinemaLogObject();
  ikinemaAssertHandler(*v0, 0, "Solve", "(false) Inout pose solve not supported by retargeting node");
  return 2;
}

uint64_t FIK::RetargetingNode::solveInternal(uint64_t a1, _OWORD *a2, uint64_t a3, _OWORD *a4)
{
  if ((*(a1 + 64) & 1) == 0)
  {
    FIK::RetargetingNode::solveInternal();
  }

  v8 = ikinema::BufferContainer::buffer((a1 + 104), *(a1 + 1664));
  v9 = ikinema::Buffer::arrayView<FIK::Transform>(v8);
  if (a3)
  {
    v10 = &a2[2 * a3];
    do
    {
      *v9 = *a2;
      v9[1] = a2[1];
      a2 += 2;
      v9 += 2;
    }

    while (a2 != v10);
  }

  v19[0] = a1;
  v19[1] = a1;
  v11 = *(a1 + 72);
  if (v11)
  {
    v12 = *(a1 + 88);
    v13 = 8 * v11;
    while (!(*(**v12 + 24))(*v12, v19, a1 + 104))
    {
      ++v12;
      v13 -= 8;
      if (!v13)
      {
        goto LABEL_10;
      }
    }

    return 2;
  }

  else
  {
LABEL_10:
    v14 = ikinema::BufferContainer::buffer((a1 + 104), *(a1 + 1680));
    v15 = ikinema::Buffer::arrayView<FIK::Transform>(v14);
    if (v16)
    {
      v17 = &v15[2 * v16];
      do
      {
        *a4 = *v15;
        a4[1] = v15[1];
        v15 += 2;
        a4 += 2;
      }

      while (v15 != v17);
    }

    return *(*(a1 + 464) + 8);
  }
}

uint64_t FIK::RetargetingNode::Solve(uint64_t a1, _OWORD *a2, uint64_t a3, _OWORD *a4, uint64_t a5, _OWORD *a6)
{
  *(*(a1 + 1704) + 48) = 1;
  v6 = *(a1 + 1712);
  *(v6 + 48) = 1;
  *(v6 + 16) = *a6;
  *(v6 + 32) = a6[1];
  return FIK::RetargetingNode::solveInternal(a1, a2, a3, a4);
}

uint64_t FIK::RetargetingNode::SolveModel(uint64_t a1, _OWORD *a2, uint64_t a3, _OWORD *a4, uint64_t a5, _OWORD *a6)
{
  *(*(a1 + 1704) + 48) = 0;
  v6 = *(a1 + 1712);
  *(v6 + 48) = 0;
  *(v6 + 16) = *a6;
  *(v6 + 32) = a6[1];
  return FIK::RetargetingNode::solveInternal(a1, a2, a3, a4);
}

void *FIK::RetargetingNode::GetModelSpacePose(FIK::RetargetingNode *this, uint64_t a2)
{
  if ((*(this + 1784) & 1) == 0)
  {
    FIK::RetargetingNode::setupPoseConverter(this);
  }

  v4 = ikinema::BufferContainer::buffer(this + 13, *(this + 210));
  v6 = ikinema::Buffer::arrayView<FIK::Transform>(v4);

  return FIK::FKConverter::convertToGlobal(this + 219, v6, v5, a2);
}

__n128 FIK::RetargetingNode::GetTaskPosDebug(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 == *(a1 + 1720) && a3 != 0)
  {
    v4 = 0;
    v5 = 1;
    do
    {
      v6 = *(a1 + 1736) + 112 * v4;
      v7 = a2 + 32 * v4;
      *v7 = *(v6 + 80);
      result = *(v6 + 96);
      *(v7 + 16) = result;
      v4 = v5;
    }

    while (*(a1 + 1720) > v5++);
  }

  return result;
}

uint64_t FIK::RetargetingNode::RetargetTask::RetargetTask(uint64_t a1, uint64_t a2, uint64_t a3, IKString *a4)
{
  IKString::IKString(v9, a4);
  *a1 = &unk_28589BD98;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  IKString::IKString((a1 + 24), v9, v10);
  if (v9[1])
  {
    (*(*v10 + 24))(v10, v9[0], 0, 8);
  }

  *a1 = &unk_28589C1B8;
  *(a1 + 48) = *(a4 + 13);
  *(a1 + 64) = *(a4 + 14);
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = xmmword_245A01E80;
  return a1;
}

uint64_t FIK::RetargetingNode::RetargetTask::setTarget(uint64_t a1, _OWORD *a2)
{
  *(a1 + 80) = *a2;
  v4 = *(a1 + 8);
  if (v4)
  {
    (*(*v4 + 248))(v4, a2);
  }

  *(a1 + 96) = a2[1];
  result = *(a1 + 16);
  if (result)
  {
    v6 = *(*result + 248);

    return v6();
  }

  return result;
}

uint64_t FIK::RetargetingNode::RetargetTask::setPositionTarget(uint64_t a1, _OWORD *a2)
{
  *(a1 + 80) = *a2;
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 248))();
  }

  return result;
}

uint64_t FIK::RetargetingNode::RetargetTask::setOrientationTarget(uint64_t a1, _OWORD *a2)
{
  *(a1 + 96) = *a2;
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 248))();
  }

  return result;
}

__n128 FIK::RetargetingNode::RetargetTask::setOffset(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *a2;
  result = *(a2 + 16);
  *(a1 + 64) = result;
  return result;
}

uint64_t FIK::RetargetingNode::adjustTaskOffset(void *a1, unint64_t a2, _OWORD *a3)
{
  if (a2 == -1 || a1[40] <= a2)
  {
    FIK::RetargetingNode::adjustTaskOffset();
  }

  v6 = a1[42] + (a2 << 8);
  *(v6 + 208) = *a3;
  *(v6 + 224) = a3[1];
  v7 = *(*(*(*a1 + 48))(a1, a2) + 24);

  return v7();
}

unint64_t FIK::RetargetingNode::constraintByIndex(FIK::RetargetingNode *this, unint64_t a2)
{
  if (*(this + 215) <= a2)
  {
    return 0;
  }

  else
  {
    return *(this + 217) + 112 * a2;
  }
}

uint64_t FIK::RetargetingNode::setSourceScale(uint64_t this, float a2)
{
  if (a2 > 0.0)
  {
    *(*(this + 1688) + 8) = a2;
  }

  return this;
}

uint64_t FIK::RetargetingNode::setOutputScale(uint64_t this, float a2)
{
  if (a2 > 0.0)
  {
    *(*(this + 1696) + 8) = a2;
  }

  return this;
}

void FIK::RetargetingNode::~RetargetingNode(FIK::RetargetingNode *this)
{
  FIK::RetargetingNode::~RetargetingNode(this);

  FIK::AnimNode::operator delete(v1);
}

{
  *this = &unk_28589C158;
  std::__optional_destruct_base<FIK::FKConverter,false>::~__optional_destruct_base[abi:nn200100](this + 1752);
  FIK::IKArray<FIK::RetargetingNode::RetargetTask>::~IKArray(this + 215);
  v2 = MEMORY[0x277D82810];
  if (*(this + 1648) == 1)
  {
    v3 = *MEMORY[0x277D82810];
    *(this + 133) = *MEMORY[0x277D82810];
    *(this + *(v3 - 24) + 1064) = v2[3];
    MEMORY[0x245D77E20](this + 1072);
    std::ostream::~ostream();
    MEMORY[0x245D77F30](this + 1480);
  }

  if (*(this + 1056) == 1)
  {
    v4 = *v2;
    *(this + 59) = *v2;
    *(this + *(v4 - 24) + 472) = v2[3];
    MEMORY[0x245D77E20](this + 480);
    std::ostream::~ostream();
    MEMORY[0x245D77F30](this + 888);
  }

  FIK::AnimNode::~AnimNode(this);
}

uint64_t std::__optional_destruct_base<FIK::FKConverter,false>::~__optional_destruct_base[abi:nn200100](uint64_t a1)
{
  if (*(a1 + 32) == 1)
  {
    *a1 = 0;
    v2 = *(a1 + 16);
    if (v2)
    {
      (*(**(a1 + 24) + 24))(*(a1 + 24), v2, 0, 8);
    }
  }

  return a1;
}

uint64_t *FIK::IKArray<FIK::RetargetingNode::RetargetTask>::~IKArray(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[2];
    do
    {
      std::__destroy_at[abi:nn200100]<FIK::RetargetingNode::RetargetTask,0>(v3);
      v3 += 112;
      --v2;
    }

    while (v2);
  }

  *a1 = 0;
  v4 = a1[2];
  if (v4)
  {
    (*(*a1[3] + 24))(a1[3], v4, 0, 8);
  }

  return a1;
}

uint64_t std::__destroy_at[abi:nn200100]<FIK::RetargetingNode::RetargetTask,0>(uint64_t result)
{
  *result = &unk_28589BD98;
  if (*(result + 32))
  {
    v1 = result;
    result = (*(**(result + 40) + 24))(*(result + 40), *(result + 24), 0, 8);
    *(v1 + 24) = 0;
    *(v1 + 32) = 0;
  }

  return result;
}

uint64_t *ikinema::BufferDescriptor::create<FIK::Transform>@<X0>(FIK *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = "N3FIK9TransformE";
  if (("N3FIK9TransformE" & 0x8000000000000000) != 0)
  {
    v9 = ("N3FIK9TransformE" & 0x7FFFFFFFFFFFFFFFLL);
    v10 = 5381;
    do
    {
      v8 = v10;
      v11 = *v9++;
      v10 = (33 * v10) ^ v11;
    }

    while (v11);
  }

  v15 = 0;
  v16 = 0;
  v17 = FIK::defaultAllocator(a1);
  v12 = strlen(a1);
  IKString::assign(&v15, a1, v12);
  v13 = (33 * ((33 * std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](&v18, a1, a2)) ^ v8)) ^ a3;
  result = IKString::IKString(a4, &v15, v17);
  *(a4 + 24) = xmmword_245A03B30;
  *(a4 + 40) = a3;
  *(a4 + 48) = v8;
  *(a4 + 56) = v13;
  if (v16)
  {
    return (*(*v17 + 3))(v17, v15, 0, 8);
  }

  return result;
}

uint64_t ikinema::BufferContainer::createBuffer(uint64_t *a1, uint64_t *a2)
{
  if (*a1)
  {
    v3 = 72 * *a1;
    v4 = (a1[2] + 56);
    while (1)
    {
      v5 = *v4;
      v4 += 9;
      if (v5 == a2[7])
      {
        break;
      }

      v3 -= 72;
      if (!v3)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    ikinema::Buffer::create(a2, v10);
    if (v12)
    {
      v7 = v11 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      FIK::IKArray<ikinema::Buffer>::push_back<ikinema::Buffer,void>(a1, v10);
      ikinema::Buffer::~Buffer(v10, v8);
      return 1;
    }

    ikinema::Buffer::~Buffer(v10, v6);
  }

  return 0;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:nn200100](a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:nn200100](a2, a3);
  }

  else
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:nn200100](a2, a3);
  }
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:nn200100](_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:nn200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:nn200100](void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

__n128 ikinema::Buffer::create@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[5];
  if (!v4)
  {
    v9 = ikinemaLogObject();
    ikinemaAssertHandler(*v9, 0, "create", "(descriptor.elementCount()) Can't create a buffer with no elements.");
    v4 = a1[5];
  }

  v5 = (a1 + 3);
  v6 = FIK::FIKAlloc((v4 * a1[4]), a1[3]);
  if (!v6)
  {
    ikinema::Buffer::create();
  }

  IKString::IKString(a2, a1);
  result = *v5;
  v8 = *(a1 + 5);
  *(a2 + 24) = *v5;
  *(a2 + 40) = v8;
  *(a2 + 56) = a1[7];
  *(a2 + 64) = v6;
  return result;
}

__n128 FIK::IKArray<ikinema::Buffer>::push_back<ikinema::Buffer,void>(uint64_t *a1, uint64_t a2)
{
  FIK::IKArray<ikinema::Buffer>::reserve(a1, (*a1 + 1));
  IKString::IKString((a1[2] + 72 * *a1), a2);
  result = *(a2 + 24);
  v5 = *(a2 + 40);
  *(v6 + 56) = *(a2 + 56);
  *(v6 + 40) = v5;
  *(v6 + 24) = result;
  v7 = *(a2 + 64);
  *(a2 + 64) = 0;
  *(v6 + 64) = v7;
  ++*a1;
  return result;
}

void FIK::IKArray<ikinema::Buffer>::reserve(uint64_t *a1, void *a2)
{
  if (a1[1] < a2)
  {
    v3 = a1[3];
    v4 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v4)
    {
      v5 = (*(*v3 + 16))(a1[3], 72 * v4, 8);
      v6 = v5;
      if (72 * v4)
      {
        bzero(v5, 72 * v4);
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = a1[2];
    v8 = *a1;
    if (*a1)
    {
      v9 = v6;
      do
      {
        IKString::IKString(v9, v7);
        v10 = *(v7 + 24);
        v11 = *(v7 + 40);
        *(v12 + 56) = *(v7 + 56);
        *(v12 + 40) = v11;
        *(v12 + 24) = v10;
        v13 = *(v7 + 64);
        *(v7 + 64) = 0;
        *(v12 + 64) = v13;
        v9 = (v12 + 72);
        v7 += 72;
        --v8;
      }

      while (v8);
      v7 = a1[2];
      v14 = *a1;
    }

    else
    {
      v14 = 0;
    }

    v15 = a1[3];
    a1[1] = v4;
    a1[2] = v6;
    a1[3] = v3;
    if (v14)
    {
      v16 = v7;
      do
      {
        ikinema::Buffer::~Buffer(v16, a2);
        v16 = (v17 + 72);
        --v14;
      }

      while (v14);
    }

    if (v7)
    {
      v18 = *(*v15 + 24);

      v18(v15, v7, 0, 8);
    }
  }
}

uint64_t (***ikinema::AlgorithmBlock::as<ikinema::GenerateMocapConstraintTargetsAlgorithm>(uint64_t (***a1)(void)))(void)
{
  v2 = "N7ikinema39GenerateMocapConstraintTargetsAlgorithmE";
  if (("N7ikinema39GenerateMocapConstraintTargetsAlgorithmE" & 0x8000000000000000) != 0)
  {
    v3 = ("N7ikinema39GenerateMocapConstraintTargetsAlgorithmE" & 0x7FFFFFFFFFFFFFFFLL);
    v4 = 5381;
    do
    {
      v2 = v4;
      v5 = *v3++;
      v4 = (33 * v4) ^ v5;
    }

    while (v5);
  }

  if (v2 == (**a1)(a1))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void FIK::IKArray<ikinema::AlgorithmHandle>::reserve(uint64_t *a1, unint64_t a2)
{
  if (a1[1] >= a2)
  {
    return;
  }

  v3 = a1[3];
  v4 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v4)
  {
    v5 = (*(*v3 + 16))(a1[3], 8 * v4, 8);
    v6 = v5;
    if (8 * v4)
    {
      bzero(v5, 8 * v4);
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = a1[2];
  v8 = *a1;
  if (!*a1)
  {
    v11 = a1[3];
    a1[1] = v4;
    a1[2] = v6;
    a1[3] = v3;
    if (!v7)
    {
      return;
    }

    goto LABEL_13;
  }

  v9 = 0;
  do
  {
    v10 = v7[v9];
    v7[v9] = 0;
    v6[v9++] = v10;
  }

  while (v8 != v9);
  v7 = a1[2];
  v11 = a1[3];
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v3;
  if (v8)
  {
    v12 = v7;
    do
    {
      ikinema::AlgorithmHandle::~AlgorithmHandle(v12);
      v12 = (v13 + 8);
      --v8;
    }

    while (v8);
  }

  if (v7)
  {
LABEL_13:
    v14 = *(*v11 + 24);

    v14(v11, v7, 0, 8);
  }
}

uint64_t (***ikinema::AlgorithmBlock::as<ikinema::TaskFilterAlgorithm>(uint64_t (***a1)(void)))(void)
{
  v2 = "N7ikinema19TaskFilterAlgorithmE";
  if (("N7ikinema19TaskFilterAlgorithmE" & 0x8000000000000000) != 0)
  {
    v3 = ("N7ikinema19TaskFilterAlgorithmE" & 0x7FFFFFFFFFFFFFFFLL);
    v4 = 5381;
    do
    {
      v2 = v4;
      v5 = *v3++;
      v4 = (33 * v4) ^ v5;
    }

    while (v5);
  }

  if (v2 == (**a1)(a1))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t (***ikinema::AlgorithmBlock::as<ikinema::ScalePipeDataAlgorithm>(uint64_t (***a1)(void)))(void)
{
  v2 = "N7ikinema22ScalePipeDataAlgorithmE";
  if (("N7ikinema22ScalePipeDataAlgorithmE" & 0x8000000000000000) != 0)
  {
    v3 = ("N7ikinema22ScalePipeDataAlgorithmE" & 0x7FFFFFFFFFFFFFFFLL);
    v4 = 5381;
    do
    {
      v2 = v4;
      v5 = *v3++;
      v4 = (33 * v4) ^ v5;
    }

    while (v5);
  }

  if (v2 == (**a1)(a1))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t (***ikinema::AlgorithmBlock::as<ikinema::SetMocapTargetAlgorithm>(uint64_t (***a1)(void)))(void)
{
  v2 = "N7ikinema23SetMocapTargetAlgorithmE";
  if (("N7ikinema23SetMocapTargetAlgorithmE" & 0x8000000000000000) != 0)
  {
    v3 = ("N7ikinema23SetMocapTargetAlgorithmE" & 0x7FFFFFFFFFFFFFFFLL);
    v4 = 5381;
    do
    {
      v2 = v4;
      v5 = *v3++;
      v4 = (33 * v4) ^ v5;
    }

    while (v5);
  }

  if (v2 == (**a1)(a1))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t (***ikinema::AlgorithmBlock::as<ikinema::DoSolveAlgorithm>(uint64_t (***a1)(void)))(void)
{
  v2 = "N7ikinema16DoSolveAlgorithmE";
  if (("N7ikinema16DoSolveAlgorithmE" & 0x8000000000000000) != 0)
  {
    v3 = ("N7ikinema16DoSolveAlgorithmE" & 0x7FFFFFFFFFFFFFFFLL);
    v4 = 5381;
    do
    {
      v2 = v4;
      v5 = *v3++;
      v4 = (33 * v4) ^ v5;
    }

    while (v5);
  }

  if (v2 == (**a1)(a1))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t FIK::SourceToTargetMapper::mapSourceToTarget@<X0>(void *a1@<X0>, void *a2@<X1>, int *a3@<X2>, uint64_t a4@<X3>, int *a5@<X4>, uint64_t a6@<X5>, unint64_t *a7@<X8>)
{
  v14 = FIK::defaultAllocator(a1);
  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
  a7[3] = v14;
  v15 = *a1;
  v52[0] = -1;
  result = FIK::IKArray<unsigned long>::resize(a7, v15, v52);
  v17 = a7[2];
  if (a4)
  {
    v18 = &a3[a4];
    v19 = a1 + 7;
    v20 = a1[7];
    v21 = a2[7];
    do
    {
      v22 = *a3;
      if (!v20)
      {
        goto LABEL_10;
      }

      v23 = a1 + 7;
      v24 = v20;
      do
      {
        if (*(v24 + 32) >= v22)
        {
          v23 = v24;
        }

        v24 = *(v24 + 8 * (*(v24 + 32) < v22));
      }

      while (v24);
      if (v23 == v19 || v22 < *(v23 + 8))
      {
LABEL_10:
        v23 = a1 + 7;
      }

      if (v21)
      {
        v25 = a2 + 7;
        v26 = v21;
        do
        {
          if (*(v26 + 32) >= v22)
          {
            v25 = v26;
          }

          v26 = *(v26 + 8 * (*(v26 + 32) < v22));
        }

        while (v26);
        if (v25 != a2 + 7 && v22 >= *(v25 + 8) && v23 != v19)
        {
          *(v17 + 8 * v23[5]) = v25[5];
        }
      }

      ++a3;
    }

    while (a3 != v18);
  }

  if (a6)
  {
    v28 = *a7;
    v29 = a1 + 10;
    v30 = a2 + 10;
    v31 = &a5[a6];
    do
    {
      v32 = *a5;
      v33 = *v29;
      if (!*v29)
      {
        goto LABEL_32;
      }

      v34 = a1 + 10;
      do
      {
        if (*(v33 + 32) >= v32)
        {
          v34 = v33;
        }

        v33 = *(v33 + 8 * (*(v33 + 32) < v32));
      }

      while (v33);
      if (v34 == v29 || v32 < *(v34 + 8))
      {
LABEL_32:
        v34 = a1 + 10;
      }

      v35 = *v30;
      if (!*v30)
      {
        goto LABEL_61;
      }

      v36 = a2 + 10;
      do
      {
        if (*(v35 + 32) >= v32)
        {
          v36 = v35;
        }

        v35 = *(v35 + 8 * (*(v35 + 32) < v32));
      }

      while (v35);
      if (v36 == v30)
      {
        goto LABEL_61;
      }

      if (v32 < *(v36 + 8) || v34 == v29)
      {
        goto LABEL_61;
      }

      if (v32 == 14)
      {
        v38 = a1;
        v39 = a2;
        v40 = 14;
      }

      else
      {
        if (v32 != 8)
        {
          FIK::IKArray<FIK::Task *>::IKArray(v52, v34 + 5);
          result = FIK::IKArray<FIK::Task *>::IKArray(v49, v36 + 5);
          v41 = v52[0];
          v42 = v49[0];
          if (v52[0] > v49[0])
          {
            v55 = -1;
            result = FIK::IKArray<unsigned long>::insert(v49, v50 + ((4 * v49[0] + 4) & 0xFFFFFFFFFFFFFFF8), v52[0] - v49[0], &v55);
          }

          if (v42 > v41)
          {
            v55 = -1;
            result = FIK::IKArray<unsigned long>::insert(v52, v53 + ((4 * v41 + 4) & 0xFFFFFFFFFFFFFFF8), v42 - v41, &v55);
          }

          v43 = v52[0];
          v44 = v50;
          if (v52[0])
          {
            v45 = v53;
            v46 = v50;
            do
            {
              v48 = *v45++;
              v47 = v48;
              if (v48 != -1)
              {
                *(v17 + 8 * v47) = *v46;
              }

              ++v46;
              --v43;
            }

            while (v43);
          }

          v49[0] = 0;
          if (v44)
          {
            result = (*(*v51 + 24))(v51, v44, 0, 8);
          }

          v52[0] = 0;
          if (v53)
          {
            result = (*(*v54 + 24))(v54, v53, 0, 8);
          }

          goto LABEL_61;
        }

        v38 = a1;
        v39 = a2;
        v40 = 8;
      }

LABEL_61:
      ++a5;
    }

    while (a5 != v31);
  }

  return result;
}

FIK::Hierarchy *FIK::anonymous namespace::mapFingers<FIK::BipedIdentifiers::Group>(FIK::Hierarchy *this, FIK::Hierarchy *a2, int a3, uint64_t a4)
{
  v6 = this;
  v7 = (this + 80);
  v8 = *(this + 10);
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = (this + 80);
  do
  {
    if (*(v8 + 32) >= a3)
    {
      v9 = v8;
    }

    v8 = *(v8 + 8 * (*(v8 + 32) < a3));
  }

  while (v8);
  if (v9 == v7 || *(v9 + 8) > a3)
  {
LABEL_8:
    v9 = (this + 80);
  }

  v10 = *(a2 + 10);
  if (v10)
  {
    v11 = (a2 + 80);
    do
    {
      if (*(v10 + 32) >= a3)
      {
        v11 = v10;
      }

      v10 = *(v10 + 8 * (*(v10 + 32) < a3));
    }

    while (v10);
    if (v11 != (a2 + 80) && *(v11 + 8) <= a3 && v9 != v7)
    {
      v13 = v9[5];
      v14 = v11[5] >= v13 ? v9[5] : v11[5];
      if (v13)
      {
        for (i = 0; i < v13; ++i)
        {
          if (i < v14)
          {
            v16 = *(v9[7] + 8 * i);
            v17 = *(v11[7] + 8 * i);
            *(a4 + 8 * v16) = v17;
            FIK::Hierarchy::descendentIndicesOf(v6, v16, &v34);
            this = FIK::Hierarchy::descendentIndicesOf(a2, v17, &v31);
            v18 = v35;
            if (v34)
            {
              v19 = (v35 + 8 * v34 - 8);
              if (v19 > v35)
              {
                v20 = v35 + 8;
                do
                {
                  v21 = *(v20 - 8);
                  *(v20 - 8) = *v19;
                  *v19-- = v21;
                  v22 = v20 >= v19;
                  v20 += 8;
                }

                while (!v22);
              }
            }

            v23 = v32;
            v24 = v31;
            v25 = (v32 + 8 * v31 - 8);
            if (v31)
            {
              v26 = v25 > v32;
            }

            else
            {
              v26 = 0;
            }

            if (v26)
            {
              v27 = v32 + 8;
              do
              {
                v28 = *(v27 - 8);
                *(v27 - 8) = *v25;
                *v25-- = v28;
                v22 = v27 >= v25;
                v27 += 8;
              }

              while (!v22);
              v24 = v31;
            }

            v29 = v34;
            if (v24 >= v34)
            {
              v24 = v34;
            }

            if (v34)
            {
              v30 = 0;
              do
              {
                if (v30 < v24)
                {
                  *(a4 + 8 * *(v18 + 8 * v30)) = *(v23 + 8 * v30);
                }

                ++v30;
              }

              while (v30 < v29);
            }

            v31 = 0;
            if (v23)
            {
              this = (*(*v33 + 24))(v33, v23, 0, 8);
              v18 = v35;
            }

            v34 = 0;
            if (v18)
            {
              this = (*(*v36 + 24))(v36, v18, 0, 8);
            }

            v13 = v9[5];
          }
        }
      }
    }
  }

  return this;
}

uint64_t FIK::IKArray<unsigned long>::insert(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = a1[2];
  v9 = a2 - v8;
  v10 = v8 + 8 * *a1;
  FIK::IKArray<FIK::Segment *>::reserve(a1, *a1 + a3);
  v11 = a1[2];
  if (v10 != a2)
  {
    memmove((v11 + v9 + 8 * a3), (v11 + v9), v10 - a2);
  }

  if (a3)
  {
    v12 = 0;
    v13 = *a4;
    v14 = (a3 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v15 = v14 - ((a3 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2;
    v16 = vdupq_n_s64(v14);
    v17 = (v9 + v11 + 8);
    do
    {
      v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_245A020B0)));
      if (v18.i8[0])
      {
        *(v17 - 1) = v13;
      }

      if (v18.i8[4])
      {
        *v17 = v13;
      }

      v12 += 2;
      v17 += 2;
    }

    while (v15 != v12);
  }

  *a1 += a3;
  return a1[2] + v9;
}

uint64_t FIK::GameRigBuilder::createGameRig@<X0>(unint64_t *a1@<X0>, int *a2@<X1>, unint64_t a3@<X2>, int *a4@<X3>, uint64_t a5@<X4>, int *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v13 = a2;
  v71 = *MEMORY[0x277D85DE8];
  result = FIK::RigBuilderUtils::hasAllExpectedJoints<FIK::BipedIdentifiers::Joint>((a1 + 4), a2, a3);
  if (result)
  {
    v39 = a4;
    v40 = a7;
    v53 = 0;
    v54 = 0;
    v55 = FIK::defaultAllocator(result);
    *v56 = 1065353216;
    *&v56[4] = xmmword_245A02320;
    v56[20] = 1;
    *&v57 = 0x3727C5AC3E4CCCCDLL;
    *(&v57 + 1) = 0x1E3F800000;
    *v58 = 0x3F80000040800000;
    *&v58[8] = 1;
    v58[10] = 0;
    *&v58[12] = 0uLL;
    *&v58[28] = 0x3F80000000000000;
    *&v58[36] = 0;
    v59 = 1117782016;
    *v60 = 1;
    *&v60[4] = 257;
    v60[6] = 1;
    v61 = xmmword_245A022C0;
    *v62 = 0x4000000040000000;
    memset(&v62[12], 0, 28);
    *&v62[8] = 0x40000000;
    *&v62[40] = v55;
    v63 = 0uLL;
    v64 = __PAIR128__(v55, 0);
    v65 = 0uLL;
    v66 = __PAIR128__(v55, 0);
    v67 = 0uLL;
    v68 = __PAIR128__(v55, 0);
    v69 = 0uLL;
    v70 = __PAIR128__(v55, 0);
    *&v56[24] = 2;
    FIK::RigBuilderUtils::addTargetsToRig<FIK::GameRig>(a1, &v53);
    FIK::IKArray<FIK::GameTask>::reserve(&v62[16], a3);
    if (a3)
    {
      v18 = &v13[a3];
      v19 = a1 + 7;
      while (1)
      {
        v20 = *v13;
        v21 = *v19;
        if (!*v19)
        {
          goto LABEL_11;
        }

        v22 = a1 + 7;
        do
        {
          if (*(v21 + 32) >= v20)
          {
            v22 = v21;
          }

          v21 = *(v21 + 8 * (*(v21 + 32) < v20));
        }

        while (v21);
        if (v22 == v19 || v20 < *(v22 + 8))
        {
LABEL_11:
          v22 = a1 + 7;
        }

        if (v20 <= 27)
        {
          break;
        }

        if (v20 <= 33)
        {
          if (v20 != 28)
          {
            if (v20 != 32)
            {
LABEL_52:
              FIK::GameRigBuilder::createGameRig();
            }

LABEL_27:
            FIK::GameRigTaskFactory::kneeTask(v55, v17, v47);
            goto LABEL_31;
          }

          goto LABEL_21;
        }

        if (v20 != 34)
        {
          if (v20 == 41)
          {
            goto LABEL_27;
          }

          if (v20 != 43)
          {
            goto LABEL_52;
          }
        }

        FIK::GameRigTaskFactory::ankleTask(v55, v47);
LABEL_31:
        v23 = FIK::Hierarchy::nameOf(a1, v22[5]);
        v25 = *v23;
        v24 = v23[1];
        if (v24)
        {
          v26 = *v23;
        }

        else
        {
          v26 = &unk_245A04BAE;
        }

        IKString::assign(&v49, v26, v24);
        v28 = FIK::defaultAllocator(v27);
        v41 = 0;
        v42 = 0;
        v43 = v28;
        IKString::assign(&v41, "_Task", 5);
        if (v42)
        {
          v29 = v41;
        }

        else
        {
          v29 = &unk_245A04BAE;
        }

        IKString::operator+(&v49, v29, v42, &v44);
        IKString::operator=(v47, &v44);
        if (v45)
        {
          (*(*v46 + 24))(v46, v44, 0, 8);
          v44 = 0;
          v45 = 0;
        }

        if (v42)
        {
          (*(*v43 + 3))(v43, v41, 0, 8);
        }

        v52 = -1;
        FIK::IKArray<FIK::GameTask>::push_back<FIK::GameTask&,void>(&v62[16], v47);
        if (v50)
        {
          (*(*v51 + 24))(v51, v49, 0, 8);
          v49 = 0;
          v50 = 0;
        }

        if (v47[1])
        {
          (*(*v48 + 24))(v48, v47[0], 0, 8);
        }

        if (++v13 == v18)
        {
          goto LABEL_46;
        }
      }

      if (v20 > 13)
      {
        if (v20 == 14)
        {
          FIK::GameRigTaskFactory::headTask(v55, v17, v47);
          goto LABEL_31;
        }

        if (v20 != 21)
        {
          goto LABEL_52;
        }
      }

      else
      {
        if (!v20)
        {
          FIK::GameRigTaskFactory::hipsTask(v55, v47);
          goto LABEL_31;
        }

        if (v20 != 8)
        {
          goto LABEL_52;
        }
      }

LABEL_21:
      FIK::GameRigTaskFactory::chestTask(v55, v17, v47);
      goto LABEL_31;
    }

LABEL_46:
    FIK::RigBuilderUtils::cullJointsFromRig<FIK::GameRig,FIK::RigBone,FIK::BipedIdentifiers::Joint,FIK::BipedIdentifiers::Group>(a1, 0, v39, a5, a6, v40, &v53);
    IKString::IKString(a8, &v53, v55);
    *(a8 + 24) = *v56;
    *(a8 + 36) = *&v56[12];
    v30 = *v58;
    *(a8 + 64) = v57;
    *(a8 + 80) = v30;
    *(a8 + 96) = *&v58[16];
    *(a8 + 112) = *&v58[32];
    *(a8 + 120) = v59;
    *(a8 + 131) = *&v60[3];
    *(a8 + 128) = *v60;
    v31 = *v62;
    *(a8 + 144) = v61;
    *(a8 + 160) = v31;
    v32 = *&v62[32];
    *(a8 + 176) = *&v62[16];
    *(a8 + 192) = v32;
    v33 = v64;
    *(a8 + 208) = v63;
    *(a8 + 224) = v33;
    v34 = v66;
    *(a8 + 240) = v65;
    *(a8 + 256) = v34;
    v35 = v68;
    v36 = v69;
    *(a8 + 272) = v67;
    *(a8 + 288) = v35;
    memset(&v62[16], 0, 24);
    v63 = 0u;
    *&v64 = 0;
    v65 = 0u;
    *&v66 = 0;
    v67 = 0u;
    *&v68 = 0;
    v69 = 0u;
    v37 = v70;
    *&v70 = 0;
    *(a8 + 304) = v36;
    *(a8 + 320) = v37;
    *(a8 + 336) = 1;
    FIK::IKArray<FIK::AimSetup>::~IKArray(&v69);
    *&v67 = 0;
    if (v68)
    {
      (*(**(&v68 + 1) + 24))(*(&v68 + 1), v68, 0, 8);
    }

    FIK::IKArray<IKString>::~IKArray(&v65);
    FIK::IKArray<FIK::RigBone>::~IKArray(&v63);
    result = FIK::IKArray<FIK::GameTask>::~IKArray(&v62[16]);
    if (v54)
    {
      result = (*(*v55 + 24))(v55, v53, 0, 8);
    }
  }

  else
  {
    *a8 = 0;
    *(a8 + 336) = 0;
  }

  v38 = *MEMORY[0x277D85DE8];
  return result;
}

void FIK::RigBuilderUtils::cullJointsFromRig<FIK::GameRig,FIK::RigBone,FIK::BipedIdentifiers::Joint,FIK::BipedIdentifiers::Group>(FIK::Hierarchy *this, int a2, int *a3, uint64_t a4, int *a5, uint64_t a6, void *a7)
{
  v42 = a7[2];
  v47 = 0;
  v48 = 0;
  v46 = &v47;
  v14 = this + 56;
  v13 = *(this + 7);
  if (v13)
  {
    v15 = this + 56;
    do
    {
      if (*(v13 + 8) >= a2)
      {
        v15 = v13;
      }

      v13 = *&v13[8 * (*(v13 + 8) < a2)];
    }

    while (v13);
    if (v15 != v14 && *(v15 + 8) <= a2)
    {
      v16 = FIK::Hierarchy::nameOf(this, *(v15 + 5));
      IKString::IKString(&v43, v16);
      if (v44)
      {
        v17 = v43;
      }

      else
      {
        v17 = &unk_245A04BAE;
      }

      FIK::Hierarchy::ancestorsOf(this, v17, v44, v49);
      if (v49[0])
      {
        v18 = v50;
        v19 = 24 * v49[0];
        do
        {
          std::__tree<IKString>::__emplace_unique_key_args<IKString,IKString const&>(&v46, v18);
          v18 += 24;
          v19 -= 24;
        }

        while (v19);
      }

      FIK::IKArray<IKString>::~IKArray(v49);
      if (v44)
      {
        (*(*v45 + 24))(v45, v43, 0, 8);
      }
    }
  }

  if (a4)
  {
    v20 = &a3[a4];
    do
    {
      v21 = *v14;
      if (*v14)
      {
        v22 = *a3;
        v23 = v14;
        do
        {
          if (*(v21 + 32) >= v22)
          {
            v23 = v21;
          }

          v21 = *(v21 + 8 * (*(v21 + 32) < v22));
        }

        while (v21);
        if (v23 != v14 && v22 >= *(v23 + 8))
        {
          v24 = FIK::Hierarchy::nameOf(this, *(v23 + 5));
          IKString::IKString(&v43, v24);
          std::__tree<IKString>::__emplace_unique_key_args<IKString,IKString const&>(&v46, &v43);
          if (v44)
          {
            v25 = v43;
          }

          else
          {
            v25 = &unk_245A04BAE;
          }

          FIK::Hierarchy::descendentsOf(this, v25, v44, v49);
          if (v49[0])
          {
            v26 = v50;
            v27 = 24 * v49[0];
            do
            {
              std::__tree<IKString>::__emplace_unique_key_args<IKString,IKString const&>(&v46, v26);
              v26 += 24;
              v27 -= 24;
            }

            while (v27);
          }

          FIK::IKArray<IKString>::~IKArray(v49);
          if (v44)
          {
            (*(*v45 + 24))(v45, v43, 0, 8);
          }
        }
      }

      ++a3;
    }

    while (a3 != v20);
  }

  if (a6)
  {
    v28 = &a5[a6];
    v29 = (this + 80);
    do
    {
      v30 = *v29;
      if (*v29)
      {
        v31 = *a5;
        v32 = (this + 80);
        do
        {
          if (*(v30 + 8) >= v31)
          {
            v32 = v30;
          }

          v30 = *&v30[8 * (*(v30 + 8) < v31)];
        }

        while (v30);
        if (v32 != v29 && v31 >= *(v32 + 8))
        {
          v33 = v32[5];
          if (v33)
          {
            v34 = v32[7];
            v35 = &v34[v33];
            do
            {
              v36 = FIK::Hierarchy::nameOf(this, *v34);
              IKString::IKString(&v43, v36);
              std::__tree<IKString>::__emplace_unique_key_args<IKString,IKString const&>(&v46, &v43);
              if (v44)
              {
                v37 = v43;
              }

              else
              {
                v37 = &unk_245A04BAE;
              }

              FIK::Hierarchy::descendentsOf(this, v37, v44, v49);
              if (v49[0])
              {
                v38 = v50;
                v39 = 24 * v49[0];
                do
                {
                  std::__tree<IKString>::__emplace_unique_key_args<IKString,IKString const&>(&v46, v38);
                  v38 += 24;
                  v39 -= 24;
                }

                while (v39);
              }

              FIK::IKArray<IKString>::~IKArray(v49);
              if (v44)
              {
                (*(*v45 + 24))(v45, v43, 0, 8);
              }

              ++v34;
            }

            while (v34 != v35);
          }
        }
      }

      ++a5;
    }

    while (a5 != v28);
  }

  if (v48)
  {
    FIK::IKArray<FIK::RigBone>::IKArray<FIK::RigBone,void>(v49, a7[26] - v48, v42);
    v40 = a7[28];
    v41 = v40 + (a7[26] << 8);
    v43 = &v46;
    std::__copy_if[abi:nn200100]<FIK::IKArrayIterator<FIK::RigBone const>,FIK::IKArrayIterator<FIK::RigBone const>,FIK::IKArrayIterator<FIK::RigBone>,std::__identity,void FIK::RigBuilderUtils::cullJointsFromRig<FIK::GameRig,FIK::RigBone,FIK::BipedIdentifiers::Joint,FIK::BipedIdentifiers::Group>(FIK::CharacterisedHierarchy const&,FIK::BipedIdentifiers::Joint,FIK::IKArrayView<FIK::BipedIdentifiers::Joint const>,FIK::IKArrayView<FIK::BipedIdentifiers::Group const>,FIK::GameRig &)::{lambda(FIK::RigBone const&)#1}>(v40, v41, v50, &v43);
    if (v49[0])
    {
      IKString::assign((v50 + 32), &unk_245A04BAE, 0);
    }

    FIK::IKArray<FIK::RigBone>::operator=(a7 + 26, v49);
    FIK::Serialisation::fixUpRigIndices(a7);
    FIK::IKArray<FIK::RigBone>::~IKArray(v49);
  }

  std::__tree<IKString>::destroy(&v46, v47);
}

uint64_t FIK::RigBuilderUtils::hasAllExpectedJoints<FIK::BipedIdentifiers::Joint>(uint64_t a1, int *a2, uint64_t a3)
{
  if (!a3)
  {
    return 1;
  }

  v3 = &a2[a3];
  v6 = *(a1 + 24);
  v4 = a1 + 24;
  v5 = v6;
  while (v5)
  {
    v7 = *a2;
    v8 = v4;
    v9 = v5;
    do
    {
      if (*(v9 + 32) >= v7)
      {
        v8 = v9;
      }

      v9 = *(v9 + 8 * (*(v9 + 32) < v7));
    }

    while (v9);
    if (v8 == v4 || v7 < *(v8 + 32))
    {
      break;
    }

    if (++a2 == v3)
    {
      return 1;
    }
  }

  return 0;
}

void *FIK::IKArray<FIK::RigBone>::clear(void *result)
{
  v1 = result;
  v2 = *result;
  if (*result)
  {
    v3 = (result[2] + 24);
    do
    {
      if (v3[2])
      {
        result = (*(*v3[3] + 24))(v3[3], v3[1], 0, 8);
        v3[1] = 0;
        v3[2] = 0;
      }

      if (*(v3 - 1))
      {
        result = (*(**v3 + 24))(*v3, *(v3 - 2), 0, 8);
        *(v3 - 2) = 0;
        *(v3 - 1) = 0;
      }

      v3 += 32;
      --v2;
    }

    while (v2);
  }

  *v1 = 0;
  return result;
}

uint64_t *FIK::IKArray<FIK::RigBone>::operator=(uint64_t *a1, uint64_t *a2)
{
  if (*a2 >= a1[1])
  {
    v9 = a2[1];
    v10 = a1[3];
    if (v9)
    {
      v11 = (*(*v10 + 16))(a1[3], v9 << 8, 16);
      v12 = v11;
      if (v9 << 8)
      {
        bzero(v11, v9 << 8);
      }
    }

    else
    {
      v12 = 0;
    }

    v13 = *a2;
    if (*a2)
    {
      v14 = v12 + 32;
      v15 = a2[2] + 32;
      do
      {
        *(v14 - 4) = *(v15 - 32);
        IKString::IKString((v14 - 24), (v15 - 24));
        IKString::IKString(v14, v15);
        *(v14 + 2) = *(v15 + 32);
        *(v14 + 3) = *(v15 + 48);
        v16 = *(v15 + 64);
        v17 = *(v15 + 80);
        *(v14 + 12) = *(v15 + 96);
        *(v14 + 4) = v16;
        *(v14 + 5) = v17;
        *(v14 + 7) = *(v15 + 112);
        *(v14 + 8) = *(v15 + 128);
        *(v14 + 9) = *(v15 + 144);
        *(v14 + 10) = *(v15 + 160);
        *(v14 + 11) = *(v15 + 176);
        *(v14 + 12) = *(v15 + 192);
        *(v14 + 13) = *(v15 + 208);
        v14 += 256;
        v15 += 256;
        --v13;
      }

      while (v13);
    }

    v19 = a1[2];
    v18 = a1[3];
    a1[1] = v9;
    a1[2] = v12;
    a1[3] = v10;
    if (v19)
    {
      (*(*v18 + 24))(v18, v19, 0, 8);
    }
  }

  else
  {
    FIK::IKArray<FIK::RigBone>::clear(a1);
    v4 = *a2;
    if (*a2)
    {
      v5 = a1[2] + 32;
      v6 = a2[2] + 32;
      do
      {
        *(v5 - 32) = *(v6 - 32);
        IKString::IKString((v5 - 24), (v6 - 24));
        IKString::IKString(v5, v6);
        *(v5 + 32) = *(v6 + 32);
        *(v5 + 48) = *(v6 + 48);
        v7 = *(v6 + 64);
        v8 = *(v6 + 80);
        *(v5 + 96) = *(v6 + 96);
        *(v5 + 64) = v7;
        *(v5 + 80) = v8;
        *(v5 + 112) = *(v6 + 112);
        *(v5 + 128) = *(v6 + 128);
        *(v5 + 144) = *(v6 + 144);
        *(v5 + 160) = *(v6 + 160);
        *(v5 + 176) = *(v6 + 176);
        *(v5 + 192) = *(v6 + 192);
        *(v5 + 208) = *(v6 + 208);
        v5 += 256;
        v6 += 256;
        --v4;
      }

      while (v4);
    }
  }

  *a1 = *a2;
  return a1;
}

uint64_t std::__tree<IKString>::__emplace_unique_key_args<IKString,IKString const&>(uint64_t a1, uint64_t a2)
{
  v2 = *std::__tree<IKString>::__find_equal<IKString>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *std::__tree<IKString>::__find_equal<IKString>(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!IKString::operator<(a3, (v4 + 4)))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!IKString::operator<((v7 + 4), a3))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

void *FIK::IKArray<FIK::RigBone>::IKArray<FIK::RigBone,void>(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  *a1 = a2;
  FIK::IKArray<FIK::RigBone>::MemoryBlock::MemoryBlock(a1 + 1, (a2 + 7) & 0xFFFFFFFFFFFFFFF8, a3);
  v6 = a1[2];
  v11 = 0;
  v12 = 0;
  v13 = a3;
  v14 = 0;
  v15 = 0;
  v16 = a3;
  v17 = 0uLL;
  v18 = xmmword_245A01E80;
  LODWORD(v19) = 16843009;
  BYTE4(v19) = 1;
  *(&v19 + 5) = 0;
  v20 = xmmword_245A022E0;
  v21 = 0x3F80000000000000;
  v22 = xmmword_245A01EF0;
  v23 = xmmword_245A01EF0;
  v24 = xmmword_245A022F0;
  *v25 = vdup_n_s32(0x43B40000u);
  *&v25[8] = 1135869952;
  memset(&v25[12], 0, 52);
  if (v4)
  {
    v7 = v6 + 32;
    do
    {
      *(v7 - 32) = -1;
      IKString::IKString((v7 - 24), &v11);
      IKString::IKString(v7, &v14);
      *(v7 + 32) = v17;
      *(v7 + 48) = v18;
      v8 = v19;
      v9 = v20;
      *(v7 + 96) = v21;
      *(v7 + 64) = v8;
      *(v7 + 80) = v9;
      *(v7 + 112) = v22;
      *(v7 + 128) = v23;
      *(v7 + 144) = v24;
      *(v7 + 160) = *v25;
      *(v7 + 176) = *&v25[16];
      *(v7 + 192) = *&v25[32];
      *(v7 + 208) = *&v25[48];
      v7 += 256;
      --v4;
    }

    while (v4);
    if (v15)
    {
      (*(*v16 + 24))(v16, v14, 0, 8);
      v14 = 0;
      v15 = 0;
    }
  }

  if (v12)
  {
    (*(*v13 + 24))(v13, v11, 0, 8);
  }

  return a1;
}

uint64_t std::__copy_if[abi:nn200100]<FIK::IKArrayIterator<FIK::RigBone const>,FIK::IKArrayIterator<FIK::RigBone const>,FIK::IKArrayIterator<FIK::RigBone>,std::__identity,void FIK::RigBuilderUtils::cullJointsFromRig<FIK::GameRig,FIK::RigBone,FIK::BipedIdentifiers::Joint,FIK::BipedIdentifiers::Group>(FIK::CharacterisedHierarchy const&,FIK::BipedIdentifiers::Joint,FIK::IKArrayView<FIK::BipedIdentifiers::Joint const>,FIK::IKArrayView<FIK::BipedIdentifiers::Group const>,FIK::GameRig &)::{lambda(FIK::RigBone const&)#1}>(uint64_t a1, uint64_t a2, uint64_t a3, void ***a4)
{
  v5 = a1;
  if (a1 == a2)
  {
    return a1;
  }

  v6 = a2;
  do
  {
    if (*a4 + 1 == std::__find[abi:nn200100]<std::__tree_const_iterator<IKString,std::__tree_node<IKString,void *> *,long>,std::__tree_const_iterator<IKString,std::__tree_node<IKString,void *> *,long>,IKString,std::__identity>(**a4, *a4 + 1, v5 + 8))
    {
      *a3 = *v5;
      v9 = *(v5 + 8);
      v8 = *(v5 + 16);
      if (v8)
      {
        v10 = *(v5 + 8);
      }

      else
      {
        v10 = &unk_245A04BAE;
      }

      IKString::assign((a3 + 8), v10, v8);
      v12 = *(v5 + 32);
      v11 = *(v5 + 40);
      if (v11)
      {
        v13 = *(v5 + 32);
      }

      else
      {
        v13 = &unk_245A04BAE;
      }

      IKString::assign((a3 + 32), v13, v11);
      *(a3 + 64) = *(v5 + 64);
      *(a3 + 80) = *(v5 + 80);
      v14 = *(v5 + 96);
      v15 = *(v5 + 112);
      *(a3 + 128) = *(v5 + 128);
      *(a3 + 96) = v14;
      *(a3 + 112) = v15;
      *(a3 + 144) = *(v5 + 144);
      *(a3 + 160) = *(v5 + 160);
      *(a3 + 176) = *(v5 + 176);
      *(a3 + 192) = *(v5 + 192);
      *(a3 + 208) = *(v5 + 208);
      *(a3 + 224) = *(v5 + 224);
      *(a3 + 240) = *(v5 + 240);
      a3 += 256;
    }

    v5 += 256;
  }

  while (v5 != v6);
  return v6;
}

void *std::__find[abi:nn200100]<std::__tree_const_iterator<IKString,std::__tree_node<IKString,void *> *,long>,std::__tree_const_iterator<IKString,std::__tree_node<IKString,void *> *,long>,IKString,std::__identity>(void *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  if (a1 != a2)
  {
    v5 = *(a3 + 8);
    if (v5)
    {
      v6 = *a3;
    }

    else
    {
      v6 = &unk_245A04BAE;
    }

    while (1)
    {
      v7 = v3[5];
      v8 = v7 ? v3[4] : &unk_245A04BAE;
      if (v7 == v5 && !memcmp(v8, v6, v5))
      {
        break;
      }

      v9 = v3[1];
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
          v10 = v3[2];
          v11 = *v10 == v3;
          v3 = v10;
        }

        while (!v11);
      }

      v3 = v10;
      if (v10 == a2)
      {
        return a2;
      }
    }
  }

  return v3;
}

void std::__tree<IKString>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<IKString>::destroy(a1, *a2);
    std::__tree<IKString>::destroy(a1, a2[1]);
    if (a2[5])
    {
      (*(*a2[6] + 24))(a2[6], a2[4], 0, 8);
    }

    operator delete(a2);
  }
}

void FIK::RigBuilderUtils::addTargetsToRig<FIK::MoCapRig>(unint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  FIK::IKArray<FIK::MoCapBone>::resize(a2 + 208, *a1);
  if (v4)
  {
    v5 = 0;
    for (i = 0; i != v4; ++i)
    {
      v7 = *(a2 + 224);
      v8 = v7 + v5;
      *(v7 + v5) = i;
      v9 = FIK::Hierarchy::localSpaceRestPose(a1, i);
      *(v8 + 64) = *v9;
      *(v8 + 80) = v9[1];
      v10 = FIK::Hierarchy::nameOf(a1, i);
      v12 = *v10;
      v11 = v10[1];
      if (v11)
      {
        v13 = *v10;
      }

      else
      {
        v13 = &unk_245A04BAE;
      }

      IKString::assign((v8 + 8), v13, v11);
      v14 = FIK::Hierarchy::parentIndexOf(a1, i);
      v15 = v14;
      v17 = v16;
      if (v16)
      {
        v18 = FIK::Hierarchy::nameOf(a1, v14);
        IKString::IKString(&v23, v18);
      }

      else
      {
        v19 = FIK::defaultAllocator(v14);
        v23 = 0;
        v24 = 0;
        v25 = v19;
        IKString::assign(&v23, &unk_245A04BAE, 0);
      }

      v20 = v7 + v5;
      if (v24)
      {
        v21 = v23;
      }

      else
      {
        v21 = &unk_245A04BAE;
      }

      IKString::assign((v20 + 32), v21, v24);
      if (v24)
      {
        (*(*v25 + 3))(v25, v23, 0, 8);
      }

      if (v17)
      {
        v22 = v15;
      }

      else
      {
        v22 = -1;
      }

      *(v20 + 4) = v22;
      v5 += 544;
    }
  }
}

uint64_t FIK::IKArray<FIK::MoCapBone>::resize(uint64_t a1, unint64_t a2)
{
  FIK::MoCapBone::MoCapBone(v5, *(a1 + 24));
  FIK::IKArray<FIK::MoCapBone>::resize(a1, a2, v5);
  result = FIK::IKArray<IKString>::~IKArray(&v13);
  if (v11)
  {
    result = (*(*v12 + 24))(v12, v10, 0, 8);
    v10 = 0;
    v11 = 0;
  }

  if (v8)
  {
    result = (*(*v9 + 24))(v9, v7, 0, 8);
    v7 = 0;
    v8 = 0;
  }

  if (v5[2])
  {
    return (*(*v6 + 24))(v6, v5[1], 0, 8);
  }

  return result;
}

void FIK::RigBuilderUtils::addTargetsToRig<FIK::GameRig>(unint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  FIK::IKArray<FIK::RigBone>::resize((a2 + 208), *a1);
  if (v4)
  {
    v5 = 0;
    for (i = 0; i != v4; ++i)
    {
      v7 = *(a2 + 224);
      v8 = v7 + v5;
      *(v7 + v5) = i;
      v9 = FIK::Hierarchy::localSpaceRestPose(a1, i);
      *(v8 + 64) = *v9;
      *(v8 + 80) = v9[1];
      v10 = FIK::Hierarchy::nameOf(a1, i);
      v12 = *v10;
      v11 = v10[1];
      if (v11)
      {
        v13 = *v10;
      }

      else
      {
        v13 = &unk_245A04BAE;
      }

      IKString::assign((v8 + 8), v13, v11);
      v14 = FIK::Hierarchy::parentIndexOf(a1, i);
      v15 = v14;
      v17 = v16;
      if (v16)
      {
        v18 = FIK::Hierarchy::nameOf(a1, v14);
        IKString::IKString(&v23, v18);
      }

      else
      {
        v19 = FIK::defaultAllocator(v14);
        v23 = 0;
        v24 = 0;
        v25 = v19;
        IKString::assign(&v23, &unk_245A04BAE, 0);
      }

      v20 = v7 + v5;
      if (v24)
      {
        v21 = v23;
      }

      else
      {
        v21 = &unk_245A04BAE;
      }

      IKString::assign((v20 + 32), v21, v24);
      if (v24)
      {
        (*(*v25 + 3))(v25, v23, 0, 8);
      }

      if (v17)
      {
        v22 = v15;
      }

      else
      {
        v22 = -1;
      }

      *(v20 + 4) = v22;
      v5 += 256;
    }
  }
}

void FIK::IKArray<FIK::RigBone>::resize(unint64_t *a1, unint64_t a2)
{
  v2 = a1[3];
  v3 = -1;
  v4 = 0;
  v5 = 0;
  v6 = v2;
  v7 = 0;
  v8 = 0;
  v9 = v2;
  v10 = 0;
  v11 = 0;
  v12 = xmmword_245A01E80;
  v13 = 16843009;
  v14 = 1;
  v15 = 0;
  v16 = xmmword_245A022E0;
  v17 = 0x3F80000000000000;
  v18 = xmmword_245A01EF0;
  v19 = xmmword_245A01EF0;
  v20 = xmmword_245A022F0;
  v21 = vdup_n_s32(0x43B40000u);
  v22 = 1135869952;
  v26 = 0;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  FIK::IKArray<FIK::RigBone>::resize(a1, a2, &v3);
  if (v8)
  {
    (*(*v9 + 24))(v9, v7, 0, 8);
    v7 = 0;
    v8 = 0;
  }

  if (v5)
  {
    (*(*v6 + 24))(v6, v4, 0, 8);
  }
}

double FIK::RigBuilderUtils::shiftHipsToOrigin<FIK::BipedIdentifiers::Joint>(FIK::Hierarchy *this, int a2)
{
  v2 = *(this + 7);
  if (v2)
  {
    v4 = this + 56;
    do
    {
      if (*(v2 + 8) >= a2)
      {
        v4 = v2;
      }

      v2 = *&v2[8 * (*(v2 + 8) < a2)];
    }

    while (v2);
    if (v4 != this + 56 && *(v4 + 8) <= a2)
    {
      v5 = FIK::Hierarchy::parentIndexOf(this, *(v4 + 5));
      if ((v7 & 1) != 0 && *(this + 36) == 1)
      {
        v8 = v5;
        FIK::IKRigUtils::getUnitVecForAxis(*(this + 11), v26);
        v9 = vmulq_f32(v26[0], v28);
        v10 = *(v4 + 5);
        v11 = vmulq_f32(v27[1], xmmword_245A01F10);
        v12 = vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL);
        v13 = vnegq_f32(v11);
        v14 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v27[0], v27[0]), v27[0], 0xCuLL), v13), v27[0], v12);
        v15 = vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL);
        v16 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v15, v15), v15, 0xCuLL), v13), v15, v12);
        v17 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v16, v16), v16, 0xCuLL), v15, v11, 3);
        v15.i64[0] = 0x4000000040000000;
        v15.i64[1] = 0x4000000040000000;
        v18 = vmlaq_f32(v27[0], v15, v17);
        v19 = vnegq_f32(v29);
        v20 = vtrn2q_s32(v29, vtrn1q_s32(v29, v19));
        v21 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v29, v19, 8uLL), *v11.f32, 1), vextq_s8(v20, v20, 8uLL), v11.f32[0]);
        v22 = vrev64q_s32(v29);
        v22.i32[0] = v19.i32[1];
        v22.i32[3] = v19.i32[2];
        v23 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL), v13), v9, v12);
        v24 = vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL);
        v25 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL), v13), v24, v12);
        v26[0] = vsubq_f32(vmlaq_f32(v9, v15, vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL), v24, v11, 3)), v18);
        v26[1] = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v29, v11, 3), v22, v11, 2), v21);
        *&result = FIK::Hierarchy::setLocalSpaceRestPose(this, v10, v26).n128_u64[0];
      }
    }
  }

  return result;
}

__n128 anonymous namespace::getModelSpaceForJointIndex@<Q0>(FIK::Hierarchy *a1@<X0>, uint64_t a2@<X1>, float32x4_t *a3@<X8>)
{
  v6 = FIK::Hierarchy::localSpaceRestPose(a1, a2);
  v25 = v6[1];
  *a3 = *v6;
  v7 = FIK::Hierarchy::parentIndexOf(a1, a2);
  if (v8)
  {
    v9 = v7;
    v24 = *a3;
    do
    {
      v10 = FIK::Hierarchy::localSpaceRestPose(a1, v9);
      v11 = *(v10 + 16);
      v12 = vnegq_f32(v25);
      v13 = vtrn2q_s32(v25, vtrn1q_s32(v25, v12));
      v14 = vrev64q_s32(v25);
      v14.i32[0] = v12.i32[1];
      v14.i32[3] = v12.i32[2];
      v15 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v25, v11, 3), v14, v11, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v25, v12, 8uLL), *v11.f32, 1), vextq_s8(v13, v13, 8uLL), v11.f32[0]));
      v16 = vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL);
      v17 = vnegq_f32(v11);
      v18 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL), v17), v24, v16);
      v19 = vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL);
      v20 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL), v17), v19, v16);
      v21 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v20, v20), v20, 0xCuLL), v19, v11, 3);
      v11.i64[0] = 0x4000000040000000;
      v11.i64[1] = 0x4000000040000000;
      v24 = vaddq_f32(*v10, vmlaq_f32(v24, v11, v21));
      v25 = v15;
      v9 = FIK::Hierarchy::parentIndexOf(a1, v9);
    }

    while ((v22 & 1) != 0);
    *a3 = v24;
  }

  result = v25;
  a3[1] = v25;
  return result;
}

void FIK::RigBuilderUtils::alignToTPose(uint64_t a1)
{
  v49 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32) == 1)
  {
LABEL_29:
    v20 = *MEMORY[0x277D85DE8];
    return;
  }

  FIK::AutoRig::createGameRigForBiped(a1, v37);
  if (v48)
  {
    v40 = 0x963DCCCCCDLL;
    v39 = 1065353216;
    FIK::GenericSolver::GenericSolver(v36);
    TaskInstance = FIK::GenericSolver::GetTaskInstance(v36, RigTaskIndexForJointID);
    FIK::RTGameTask::SetAlpha(TaskInstance, 1.0, 1.0);
    (**TaskInstance)(TaskInstance, v32);
    v5 = FIK::GenericSolver::GetTaskInstance(v36, v3);
    FIK::RTGameTask::SetAlpha(v5, 1.0, 1.0);
    v6 = (**v5)(v5, v31);
    v28[0] = 0;
    v28[1] = 0;
    v29 = 0;
    v30 = FIK::defaultAllocator(v6);
    FIK::IKArray<FIK::Transform>::reserve(v28, v42);
    if (v42)
    {
      v7 = v28[0];
      v8 = v42 << 8;
      v9 = (v43 + 80);
      do
      {
        FIK::IKArray<FIK::Transform>::reserve(v28, v7 + 1);
        v10 = (v29 + 32 * v28[0]);
        *v10 = *(v9 - 1);
        v10[1] = *v9;
        v7 = ++v28[0];
        v9 += 16;
        v8 -= 256;
      }

      while (v8);
    }

    v11 = FIK::GenericSolver::Solve(v36, v28);
    if (v11 == 1)
    {
      FIK::GenericSolver::ResetSolver(v36);
      v11 = FIK::GenericSolver::Solve(v36, v28);
    }

    *(a1 + 32) = 1;
    v25[0] = 0;
    v25[1] = 0;
    v26 = 0;
    v27 = FIK::defaultAllocator(v11);
    FIK::IKArray<FIK::Segment *>::reserve(v25, v42);
    if (v42)
    {
      v12 = v42 << 8;
      v13 = (v43 + 8);
      do
      {
        IKString::IKString(&v33, v13);
        if (v34)
        {
          v14 = v33;
        }

        else
        {
          v14 = &unk_245A04BAE;
        }

        v15 = FIK::Hierarchy::indexOf(a1, v14, v34);
        FIK::IKArray<FIK::Segment *>::reserve(v25, v25[0] + 1);
        v26[v25[0]++] = v15;
        if (v34)
        {
          (*(*v35 + 24))(v35, v33, 0, 8);
        }

        v13 = (v13 + 256);
        v12 -= 256;
      }

      while (v12);
    }

    v16 = v26;
    v17 = v25[0];
    if (v25[0])
    {
      v18 = v29;
      do
      {
        v19 = *v16++;
        FIK::Hierarchy::setLocalSpaceRestPose(a1, v19, v18);
        v18 += 32;
        --v17;
      }

      while (v17);
      v16 = v26;
    }

    v25[0] = 0;
    if (v16)
    {
      (*(*v27 + 3))(v27, v16, 0, 8);
    }

    v28[0] = 0;
    if (v29)
    {
      (*(*v30 + 3))(v30, v29, 0, 8);
    }

    FIK::GenericSolver::~GenericSolver(v36);
    if (v48 == 1)
    {
      FIK::IKArray<FIK::AimSetup>::~IKArray(&v47);
      v44[4] = 0;
      if (v45)
      {
        (*(*v46 + 24))(v46, v45, 0, 8);
      }

      FIK::IKArray<IKString>::~IKArray(v44);
      FIK::IKArray<FIK::RigBone>::~IKArray(&v42);
      FIK::IKArray<FIK::GameTask>::~IKArray(&v41);
      if (v37[1])
      {
        (*(*v38 + 24))(v38, v37[0], 0, 8);
      }
    }

    goto LABEL_29;
  }

  v21 = std::__throw_bad_optional_access[abi:nn200100]();
}

void anonymous namespace::getWristTarget(FIK::Hierarchy *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, float32x4_t *a4@<X8>)
{
  if (a3)
  {
    v8 = 21;
  }

  else
  {
    v8 = 28;
  }

  if (a3)
  {
    v9 = 17;
  }

  else
  {
    v9 = 24;
  }

  FIK::PoseConverter::PoseConverter<FIK::RigBone>(v73, *(a2 + 224), *(a2 + 208));
  GlobalTransform = FIK::PoseConverter::GetGlobalTransform(v73, RigIndexForJointID);
  v13 = FIK::PoseConverter::GetGlobalTransform(v73, v11);
  v68 = *GlobalTransform;
  v69 = *v13;
  v70 = *FIK::PoseConverter::GetGlobalTransform(v73, v14);
  v72 = vsubq_f32(*FIK::PoseConverter::GetGlobalTransform(v73, v15), v70);
  v16 = FIK::IKRigUtils::highestMagnitudeAxis(&v72);
  if ((v16 & 0x100000000) != 0)
  {
    FIK::IKRigUtils::getUnitVecForAxis(v16, &v71);
    v17 = v71;
    if (a3)
    {
      v17 = vnegq_f32(v71);
      v71 = v17;
    }

    v18 = *(*(a2 + 224) + (v11 << 8) + 64);
    v19 = vmulq_f32(v18, v18);
    v19.f32[0] = sqrtf(v19.f32[2] + vaddv_f32(*v19.f32));
    v20 = 1.0 / v19.f32[0];
    v21 = v19.f32[0] == 0.0;
    v22 = 0.0;
    if (v21)
    {
      v20 = 0.0;
    }

    v23 = vmulq_n_f32(v18, v20);
    v24 = v23;
    v24.i32[3] = 0;
    v25 = v13[1];
    v26 = vmulq_f32(v25, xmmword_245A01F10);
    v27 = vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL);
    v28 = vnegq_f32(v26);
    v29 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL), v28), v17, v27);
    v30 = vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL);
    v31 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL), v28), v30, v27);
    v32 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v31, v31), v31, 0xCuLL), v30, v26, 3);
    v26.i64[0] = 0x4000000040000000;
    v26.i64[1] = 0x4000000040000000;
    v33 = vmlaq_f32(v17, v26, v32);
    v34 = v33;
    v34.i32[3] = 0;
    v35 = vmulq_f32(v24, v24);
    v36 = vmulq_f32(v34, v34);
    *v32.f32 = vadd_f32(vzip1_s32(*v36.i8, *v35.i8), vzip2_s32(*v36.i8, *v35.i8));
    v38 = vextq_s8(v36, v36, 8uLL).u64[0];
    v37 = vsqrt_f32(vadd_f32(vzip1_s32(v38, *&vextq_s8(v35, v35, 8uLL)), *v32.f32));
    *v38.i32 = 1.0 / v37.f32[1];
    v39 = vmvn_s8(vceqz_f32(v37));
    if ((v39.i8[4] & 1) == 0)
    {
      *v38.i32 = 0.0;
    }

    v40 = vmulq_n_f32(v23, *v38.i32);
    v41 = 1.0 / v37.f32[0];
    if (v39.i8[0])
    {
      v22 = v41;
    }

    v42 = vmulq_n_f32(v33, v22);
    v43 = vmulq_f32(v40, v42);
    *v38.i32 = v43.f32[2] + vaddv_f32(*v43.f32);
    v44 = xmmword_245A01E80;
    if (*v38.i32 < 1.0)
    {
      if (*v38.i32 >= -0.999999)
      {
        *v38.i32 = sqrtf((*v38.i32 + 1.0) + (*v38.i32 + 1.0));
        v52 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v42, v42), v42, 0xCuLL), vnegq_f32(v40)), v42, vextq_s8(vuzp1q_s32(v40, v40), v40, 0xCuLL));
        v53 = vdivq_f32(vextq_s8(vuzp1q_s32(v52, v52), v52, 0xCuLL), vdupq_lane_s32(v38, 0));
        v53.f32[3] = *v38.i32 * 0.5;
        v54 = vmulq_f32(v53, v53);
        v55 = vadd_f32(*v54.i8, *&vextq_s8(v54, v54, 8uLL));
        if (vaddv_f32(v55) != 0.0)
        {
          v56 = vadd_f32(v55, vdup_lane_s32(v55, 1)).u32[0];
          v57 = vrsqrte_f32(v56);
          v58 = vmul_f32(v57, vrsqrts_f32(v56, vmul_f32(v57, v57)));
          v44 = vmulq_n_f32(v53, vmul_f32(v58, vrsqrts_f32(v56, vmul_f32(v58, v58))).f32[0]);
        }
      }

      else
      {
        v45 = vextq_s8(vuzp1q_s32(v40, v40), v40, 0xCuLL);
        v46 = vmlaq_f32(vmulq_f32(v45, xmmword_245A01E90), xmmword_245A01EA0, v40);
        v47 = vmulq_f32(v46, v46);
        v48 = sqrtf(v47.f32[1] + (v47.f32[2] + v47.f32[0]));
        if (fabsf(v48) >= 0.000000001)
        {
          v50 = vextq_s8(vuzp1q_s32(v46, v46), v46, 0xCuLL);
          v50.i32[3] = 0;
        }

        else
        {
          v49 = vmlaq_f32(vmulq_f32(v45, xmmword_245A01EB0), xmmword_245A01EC0, v40);
          v50 = vextq_s8(vuzp1q_s32(v49, v49), v49, 0xCuLL);
          v51 = vmulq_f32(v49, v49);
          v48 = sqrtf(v51.f32[1] + (v51.f32[2] + v51.f32[0]));
        }

        v59 = 1.0 / v48;
        v21 = v48 == 0.0;
        v60 = 0.0;
        if (!v21)
        {
          v60 = v59;
        }

        v44 = vmulq_n_f32(v50, v60);
        v44.i32[3] = 0;
      }
    }

    v61 = vsubq_f32(v69, v68);
    v62 = vmulq_f32(v61, v61);
    v63 = vaddq_f32(*GlobalTransform, vmulq_n_f32(v17, sqrtf(v62.f32[2] + vaddv_f32(*v62.f32))));
    v64 = vnegq_f32(v44);
    v65 = vtrn2q_s32(v44, vtrn1q_s32(v44, v64));
    v66 = vrev64q_s32(v44);
    v66.i32[0] = v64.i32[1];
    v66.i32[3] = v64.i32[2];
    *a4 = v63;
    a4[1] = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v44, v25, 3), v66, v25, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v44, v64, 8uLL), *v25.f32, 1), vextq_s8(v65, v65, 8uLL), v25.f32[0]));
    FIK::PoseConverter::~PoseConverter(v73);
  }

  else
  {
    v67 = std::__throw_bad_optional_access[abi:nn200100]();
  }
}

uint64_t anonymous namespace::getRigTaskIndexForJointID(FIK::Hierarchy *a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 7);
  if (!v3)
  {
    return -1;
  }

  v5 = (a1 + 56);
  do
  {
    if (*(v3 + 32) >= a3)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 32) < a3));
  }

  while (v3);
  if (v5 == (a1 + 56) || *(v5 + 8) > a3)
  {
    return -1;
  }

  v7 = FIK::Hierarchy::nameOf(a1, v5[5]);
  IKString::IKString(v10, v7);
  IKString::operator+(v10, "_Task", 5, v8);
  LODWORD(a2) = FIK::IKRigUtils::GetTaskIndexByName<FIK::GameRig>(v8, a2);
  if (v8[1])
  {
    (*(*v9 + 24))(v9, v8[0], 0, 8);
  }

  a2 = a2;
  if (v10[1])
  {
    (*(*v11 + 24))(v11, v10[0], 0, 8);
  }

  return a2;
}

uint64_t FIK::RigBuilderUtils::stringContains(char *__s, int64_t a2, const void **a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  v4 = a3;
  v7 = &a3[2 * a4];
  v8 = &__s[a2];
  while (1)
  {
    v9 = v4[1];
    if (!v9)
    {
      return 1;
    }

    if (a2 >= v9)
    {
      v10 = *v4;
      v11 = **v4;
      v12 = a2;
      v13 = __s;
      do
      {
        v14 = &v12[-v9];
        if (v14 == -1)
        {
          break;
        }

        v15 = memchr(v13, v11, (v14 + 1));
        if (!v15)
        {
          break;
        }

        v16 = v15;
        if (!memcmp(v15, v10, v9))
        {
          if (v16 == v8 || v16 - __s == -1)
          {
            break;
          }

          return 1;
        }

        v13 = v16 + 1;
        v12 = (v8 - (v16 + 1));
      }

      while (v12 >= v9);
    }

    v4 += 2;
    if (v4 == v7)
    {
      return 0;
    }
  }
}

unint64_t FIK::RigBuilderUtils::getShortJointName(unint64_t result, unint64_t a2)
{
  if (a2)
  {
    v2 = 0;
    v3 = result - 1;
    v4 = result - 1 - 2 * result;
    while (a2 != v2)
    {
      v5 = *(v3 + a2);
      ++v2;
      ++v4;
      --v3;
      if (v5 == 47)
      {
        if (a2 + 1 != v2)
        {
          if (a2 <= a2 - v2)
          {
            abort();
          }

          return a2 - v4;
        }

        return result;
      }
    }
  }

  return result;
}

uint64_t anonymous namespace::getRigIndexForJointID(FIK::Hierarchy *a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 7);
  if (!v3)
  {
    return -1;
  }

  v5 = (a1 + 56);
  do
  {
    if (*(v3 + 32) >= a3)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 32) < a3));
  }

  while (v3);
  if (v5 == (a1 + 56) || *(v5 + 8) > a3)
  {
    return -1;
  }

  v8 = FIK::Hierarchy::nameOf(a1, v5[5]);
  IKString::IKString(&v10, v8);
  if (v11)
  {
    v9 = v10;
  }

  else
  {
    v9 = &unk_245A04BAE;
  }

  v6 = FIK::IKRigUtils::getBoneIndex<FIK::RigBone,void>(v9, v11, (a2 + 208));
  if (v11)
  {
    (*(*v12 + 24))(v12, v10, 0, 8);
  }

  return v6;
}

uint64_t *FIK::PoseConverter::PoseConverter<FIK::RigBone>(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v6 = FIK::defaultAllocator(a1);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = v6;
  v7 = FIK::defaultAllocator(v6);
  a1[4] = 0;
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = v7;
  v8 = FIK::defaultAllocator(v7);
  a1[8] = 0;
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = v8;
  v9 = FIK::defaultAllocator(v8);
  a1[12] = 0;
  a1[13] = 0;
  a1[14] = 0;
  a1[15] = v9;
  v10 = FIK::defaultAllocator(v9);
  a1[16] = 0;
  a1[17] = 0;
  a1[18] = 0;
  a1[19] = v10;
  FIK::IKArray<FIK::Transform>::reserve(a1 + 12, a3);
  FIK::IKArray<unsigned int>::reserve(a1, a3);
  if (a3)
  {
    v11 = (a2 + 64);
    v12 = a3 << 8;
    do
    {
      FIK::IKArray<FIK::Transform>::reserve(a1 + 12, a1[12] + 1);
      v13 = (a1[14] + 32 * a1[12]);
      *v13 = *v11;
      v13[1] = v11[1];
      ++a1[12];
      FIK::IKArray<unsigned int>::reserve(a1, *a1 + 1);
      v14 = *a1;
      *(a1[2] + 4 * *a1) = *(v11 - 15);
      *a1 = v14 + 1;
      v11 += 16;
      v12 -= 256;
    }

    while (v12);
  }

  FIK::PoseConverter::resetGlobalFlag(a1);
  return a1;
}

uint64_t std::destroy_n[abi:nn200100]<FIK::RigBone *,unsigned long>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = a2;
    do
    {
      if (*(a1 + 40))
      {
        (*(**(a1 + 48) + 24))(*(a1 + 48), *(a1 + 32), 0, 8);
        *(a1 + 32) = 0;
        *(a1 + 40) = 0;
      }

      if (*(a1 + 16))
      {
        (*(**(a1 + 24) + 24))(*(a1 + 24), *(a1 + 8), 0, 8);
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
      }

      a1 += 256;
      --v3;
    }

    while (v3);
  }

  return a1;
}

uint64_t FIK::IKArray<FIK::MoCapBone>::resize(unint64_t *a1, unint64_t a2, uint64_t a3)
{
  v5 = *a1 >= a2;
  v6 = *a1 - a2;
  if (v6 != 0 && v5)
  {
    result = std::destroy_n[abi:nn200100]<FIK::MoCapBone *,unsigned long>(a1[2] + 544 * a2, v6);
  }

  else
  {
    result = FIK::IKArray<FIK::MoCapBone>::reserve(a1, a2);
    v9 = *a1;
    if (a2 != *a1)
    {
      v10 = a1[2] + 544 * v9 + 256;
      v11 = v9 - a2;
      do
      {
        *(v10 - 256) = *a3;
        IKString::IKString((v10 - 248), (a3 + 8));
        IKString::IKString((v10 - 224), (a3 + 32));
        *(v10 - 192) = *(a3 + 64);
        *(v10 - 176) = *(a3 + 80);
        v12 = *(a3 + 96);
        v13 = *(a3 + 112);
        *(v10 - 128) = *(a3 + 128);
        *(v10 - 160) = v12;
        *(v10 - 144) = v13;
        *(v10 - 112) = *(a3 + 144);
        *(v10 - 96) = *(a3 + 160);
        *(v10 - 80) = *(a3 + 176);
        *(v10 - 64) = *(a3 + 192);
        *(v10 - 48) = *(a3 + 208);
        *(v10 - 32) = *(a3 + 224);
        *(v10 - 16) = *(a3 + 240);
        IKString::IKString(v10, (a3 + 256));
        *(v10 + 24) = *(a3 + 280);
        *(v10 + 32) = *(a3 + 288);
        *(v10 + 48) = *(a3 + 304);
        *(v10 + 64) = *(a3 + 320);
        *(v10 + 80) = *(a3 + 336);
        v14 = *(a3 + 352);
        *(v10 + 112) = *(a3 + 368);
        *(v10 + 96) = v14;
        *(v10 + 128) = *(a3 + 384);
        *(v10 + 144) = *(a3 + 400);
        result = FIK::IKArray<IKString>::IKArray((v10 + 160), (a3 + 416));
        *(v10 + 192) = *(a3 + 448);
        *(v10 + 208) = *(a3 + 464);
        *(v10 + 224) = *(a3 + 480);
        *(v10 + 240) = *(a3 + 496);
        *(v10 + 256) = *(a3 + 512);
        *(v10 + 272) = *(a3 + 528);
        v10 += 544;
        v5 = __CFADD__(v11++, 1);
      }

      while (!v5);
    }
  }

  *a1 = a2;
  return result;
}

uint64_t std::destroy_n[abi:nn200100]<FIK::MoCapBone *,unsigned long>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = a2;
    do
    {
      FIK::IKArray<IKString>::~IKArray(a1 + 416);
      if (*(a1 + 264))
      {
        (*(**(a1 + 272) + 24))(*(a1 + 272), *(a1 + 256), 0, 8);
        *(a1 + 256) = 0;
        *(a1 + 264) = 0;
      }

      if (*(a1 + 40))
      {
        (*(**(a1 + 48) + 24))(*(a1 + 48), *(a1 + 32), 0, 8);
        *(a1 + 32) = 0;
        *(a1 + 40) = 0;
      }

      if (*(a1 + 16))
      {
        (*(**(a1 + 24) + 24))(*(a1 + 24), *(a1 + 8), 0, 8);
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
      }

      a1 += 544;
      --v3;
    }

    while (v3);
  }

  return a1;
}

void FIK::IKArray<FIK::RigBone>::resize(unint64_t *a1, unint64_t a2, uint64_t a3)
{
  v5 = *a1 >= a2;
  v6 = *a1 - a2;
  if (v6 != 0 && v5)
  {
    std::destroy_n[abi:nn200100]<FIK::RigBone *,unsigned long>(a1[2] + (a2 << 8), v6);
  }

  else
  {
    FIK::IKArray<FIK::RigBone>::reserve(a1, a2);
    v8 = *a1;
    if (a2 != *a1)
    {
      v9 = a1[2] + (v8 << 8) + 32;
      v10 = v8 - a2;
      do
      {
        *(v9 - 32) = *a3;
        IKString::IKString((v9 - 24), (a3 + 8));
        IKString::IKString(v9, (a3 + 32));
        *(v9 + 32) = *(a3 + 64);
        *(v9 + 48) = *(a3 + 80);
        v11 = *(a3 + 96);
        v12 = *(a3 + 112);
        *(v9 + 96) = *(a3 + 128);
        *(v9 + 64) = v11;
        *(v9 + 80) = v12;
        *(v9 + 112) = *(a3 + 144);
        *(v9 + 128) = *(a3 + 160);
        *(v9 + 144) = *(a3 + 176);
        *(v9 + 160) = *(a3 + 192);
        *(v9 + 176) = *(a3 + 208);
        *(v9 + 192) = *(a3 + 224);
        *(v9 + 208) = *(a3 + 240);
        v9 += 256;
        v5 = __CFADD__(v10++, 1);
      }

      while (!v5);
    }
  }

  *a1 = a2;
}

FIK::PoseConverter *FIK::PoseConverter::PoseConverter(FIK::PoseConverter *this, const FIK::Hierarchy *a2)
{
  v4 = FIK::defaultAllocator(this);
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = v4;
  v5 = FIK::defaultAllocator(v4);
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = v5;
  v6 = FIK::defaultAllocator(v5);
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = v6;
  v7 = FIK::defaultAllocator(v6);
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 15) = v7;
  v8 = FIK::defaultAllocator(v7);
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 19) = v8;
  v9 = *a2;
  FIK::IKArray<FIK::Transform>::reserve(this + 12, *a2);
  FIK::IKArray<unsigned int>::reserve(this, v9);
  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      v11 = FIK::Hierarchy::localSpaceRestPose(a2, i);
      FIK::IKArray<FIK::Transform>::reserve(this + 12, *(this + 12) + 1);
      v12 = (*(this + 14) + 32 * *(this + 12));
      *v12 = *v11;
      v12[1] = v11[1];
      ++*(this + 12);
      v13 = FIK::Hierarchy::parentIndexOf(a2, i);
      if (v14)
      {
        v15 = v13;
      }

      else
      {
        v15 = -1;
      }

      FIK::IKArray<unsigned int>::reserve(this, *this + 1);
      v16 = *this;
      *(*(this + 2) + 4 * *this) = v15;
      *this = v16 + 1;
    }
  }

  FIK::PoseConverter::resetGlobalFlag(this);
  return this;
}

void FIK::PoseConverter::resetGlobalFlag(FIK::PoseConverter *this)
{
  FIK::IKArray<FIK::Transform>::operator=(this + 8, this + 12);
  v2 = (this + 128);
  v3 = *(this + 8);
  v4 = v3;
  if (*(this + 16) <= v3)
  {
    FIK::IKArray<BOOL>::reserve(this + 16, *(this + 8));
    if (v3 != *v2)
    {
      bzero((*(this + 18) + *v2), v3 - *v2);
    }

    v4 = *(this + 8);
  }

  *v2 = v3;
  if (v4)
  {
    v5 = 0;
    v6 = *(this + 2);
    do
    {
      if (*(v6 + 4 * v5) == -1)
      {
        *(*(this + 18) + v5) = 1;
      }

      ++v5;
    }

    while (v4 != v5);
  }
}

void *FIK::PoseConverter::updatePose(FIK::PoseConverter *this, uint64_t a2, const FIK::Transform *a3)
{
  v5 = (*(this + 10) + 32 * a2);
  v6 = *a3;
  *v5 = *a3;
  v5[1] = *(a3 + 1);
  v7 = (*(this + 14) + 32 * a2);
  *v7 = v6;
  v7[1] = v5[1];
  v8 = FIK::PoseConverter::evaluateChildIndices(this);
  v20[0] = 0;
  v20[1] = 0;
  v21 = 0;
  v22 = FIK::defaultAllocator(v8);
  FIK::IKArray<FIK::Segment *>::reserve(v20, *(this + 12));
  result = FIK::IKArray<FIK::Segment *>::reserve(v20, v20[0] + 1);
  *(v21 + 8 * v20[0]) = a2;
  v10 = __CFADD__(v20[0], 1);
  v11 = ++v20[0];
  if (!v10)
  {
    v12 = 0;
    do
    {
      v13 = *(v21 + 8 * v12);
      v14 = *(this + 18);
      if (*(v14 + v13) == 1)
      {
        *(v14 + v13) = *(*(this + 2) + 4 * v13) == -1;
        v15 = (*(this + 14) + 32 * v13);
        v16 = (*(this + 10) + 32 * v13);
        *v16 = *v15;
        v16[1] = v15[1];
        v17 = (*(this + 6) + 32 * v13);
        v11 = v20[0];
        if (*v17)
        {
          v18 = 0;
          do
          {
            v19 = v17[2];
            result = FIK::IKArray<FIK::Segment *>::reserve(v20, v11 + 1);
            *(v21 + 8 * v20[0]) = *(v19 + 8 * v18);
            v11 = ++v20[0];
            ++v18;
          }

          while (v18 < *v17);
        }
      }

      ++v12;
    }

    while (v12 < v11);
  }

  v20[0] = 0;
  if (v21)
  {
    return (*(*v22 + 3))(v22, v21, 0, 8);
  }

  return result;
}

unint64_t *FIK::PoseConverter::evaluateChildIndices(FIK::PoseConverter *this)
{
  v3 = *(this + 4);
  result = (this + 32);
  if (!v3)
  {
    result = FIK::IKArray<FIK::IKArray<unsigned long>>::resize(result, *(this + 8));
    v4 = *(this + 12);
    if (v4)
    {
      for (i = 0; i != v4; ++i)
      {
        v6 = *(*(this + 2) + 4 * i);
        if ((v6 & 0x80000000) == 0 && v4 > v6)
        {
          v7 = (*(this + 6) + 32 * v6);
          result = FIK::IKArray<FIK::Segment *>::reserve(v7, *v7 + 1);
          *(v7[2] + 8 * (*v7)++) = i;
        }
      }
    }
  }

  return result;
}

void *FIK::PoseConverter::CalculateGlobalTransform(void *this, uint64_t a2)
{
  v3 = this;
  v4 = *(this[2] + 4 * a2);
  if (this[16] > v4 && (*(this[18] + v4) & 1) == 0)
  {
    this = FIK::PoseConverter::CalculateGlobalTransform(this, *(this[2] + 4 * a2));
  }

  if ((v4 & 0x80000000) == 0)
  {
    v5 = v3[10];
    v6 = (v5 + 32 * v4);
    v7 = v3[14] + 32 * a2;
    v8 = *(v7 + 16);
    v9 = vnegq_f32(v8);
    v10 = vtrn2q_s32(v8, vtrn1q_s32(v8, v9));
    v11 = v6[1];
    v12 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v8, v9, 8uLL), *v11.f32, 1), vextq_s8(v10, v10, 8uLL), v11.f32[0]);
    v13 = vrev64q_s32(v8);
    v13.i32[0] = v9.i32[1];
    v13.i32[3] = v9.i32[2];
    v14 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v8, v11, 3), v13, v11, 2), v12);
    v15 = vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL);
    v16 = vnegq_f32(v11);
    v17 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*v7, *v7), *v7, 0xCuLL), v16), *v7, v15);
    v18 = vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL);
    v19 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL), v16), v18, v15);
    v20 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL), v18, v11, 3);
    v18.i64[0] = 0x4000000040000000;
    v18.i64[1] = 0x4000000040000000;
    v21 = (v5 + 32 * a2);
    *v21 = vaddq_f32(*v6, vmlaq_f32(*v7, v18, v20));
    v21[1] = v14;
  }

  *(v3[18] + a2) = 1;
  return this;
}

unint64_t FIK::PoseConverter::GetGlobalTransform(FIK::PoseConverter *this, unint64_t a2)
{
  if (*(this + 8) <= a2)
  {
    FIK::PoseConverter::GetGlobalTransform();
  }

  if ((*(*(this + 18) + a2) & 1) == 0)
  {
    FIK::PoseConverter::CalculateGlobalTransform(this, a2);
  }

  return *(this + 10) + 32 * a2;
}

void *FIK::PoseConverter::getGlobalTransforms@<X0>(FIK::PoseConverter *this@<X0>, void *a2@<X8>)
{
  v3 = (this + 64);
  v4 = *(this + 8);
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      if ((*(*(this + 18) + i) & 1) == 0)
      {
        FIK::PoseConverter::CalculateGlobalTransform(this, i);
      }
    }
  }

  return FIK::IKArray<FIK::Transform>::IKArray(a2, v3);
}

uint64_t *FIK::IKArray<FIK::Transform>::operator=(uint64_t *a1, uint64_t *a2)
{
  if (*a2 >= a1[1])
  {
    v7 = a2[1];
    v8 = a1[3];
    if (v7)
    {
      v9 = (*(*v8 + 16))(a1[3], 32 * v7, 16);
      v10 = v9;
      if (32 * v7)
      {
        bzero(v9, 32 * v7);
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = *a2;
    if (*a2)
    {
      v12 = a2[2];
      v13 = v10;
      do
      {
        *v13 = *v12;
        v13[1] = v12[1];
        v12 += 2;
        v13 += 2;
        --v11;
      }

      while (v11);
    }

    v15 = a1[2];
    v14 = a1[3];
    a1[1] = v7;
    a1[2] = v10;
    a1[3] = v8;
    if (v15)
    {
      (*(*v14 + 24))(v14, v15, 0, 8);
    }
  }

  else
  {
    *a1 = 0;
    v4 = *a2;
    if (*a2)
    {
      v5 = a1[2];
      v6 = a2[2];
      do
      {
        *v5 = *v6;
        v5[1] = v6[1];
        v6 += 2;
        v5 += 2;
        --v4;
      }

      while (v4);
    }
  }

  *a1 = *a2;
  return a1;
}

void *FIK::IKArray<FIK::IKArray<unsigned long>>::resize(unint64_t *a1, unint64_t a2)
{
  v2 = a1[3];
  v4[0] = 0;
  v4[1] = 0;
  v5 = 0;
  v6 = v2;
  result = FIK::IKArray<FIK::IKArray<unsigned long>>::resize(a1, a2, v4);
  v4[0] = 0;
  if (v5)
  {
    return (*(*v6 + 24))(v6, v5, 0, 8);
  }

  return result;
}

void *FIK::IKArray<FIK::IKArray<unsigned long>>::resize(unint64_t *a1, unint64_t a2, uint64_t *a3)
{
  v5 = *a1 >= a2;
  v6 = *a1 - a2;
  if (v6 != 0 && v5)
  {
    result = std::destroy_n[abi:nn200100]<FIK::IKArray<unsigned long> *,unsigned long>(a1[2] + 32 * a2, v6);
  }

  else
  {
    result = FIK::IKArray<FIK::IKArray<unsigned long>>::reserve(a1, a2);
    v9 = *a1;
    if (a2 != *a1)
    {
      result = (a1[2] + 32 * v9);
      v10 = v9 - a2;
      do
      {
        result = FIK::IKArray<FIK::Task *>::IKArray(result, a3) + 4;
        v5 = __CFADD__(v10++, 1);
      }

      while (!v5);
    }
  }

  *a1 = a2;
  return result;
}

FIK *FIK::MoCapRigBuilder::createMoCapRig@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, int *a3@<X4>, uint64_t a4@<X5>, int *a5@<X6>, uint64_t a6@<X7>, uint64_t *a7@<X8>, int *a8, uint64_t a9)
{
  v12 = a3;
  v147 = *MEMORY[0x277D85DE8];
  result = FIK::RigBuilderUtils::hasAllExpectedJoints<FIK::BipedIdentifiers::Joint>(a1 + 32, a3, a4);
  if (result && (*(a1 + 36) & 1) != 0 && (result = FIK::RigBuilderUtils::hasAllExpectedJoints<FIK::BipedIdentifiers::Joint>((a2 + 4), v12, a4), result) && (*(a2 + 36) & 1) != 0)
  {
    v101 = a7;
    v102 = a4;
    v99 = a5;
    v100 = a6;
    v131 = 0;
    v130 = 0;
    v132 = FIK::defaultAllocator(result);
    *v133 = 1065353216;
    *&v133[4] = xmmword_245A02320;
    v133[20] = 1;
    *v135 = 0x3F80000040800000;
    *&v135[8] = 1;
    v135[10] = 0;
    *&v135[12] = 0uLL;
    *&v135[28] = 0x3F80000000000000;
    *&v135[36] = 0;
    v136 = 1117782016;
    *v137 = 1;
    *&v137[4] = 257;
    v137[6] = 1;
    v138 = xmmword_245A022C0;
    *v139 = 0x4000000040000000;
    memset(&v139[12], 0, 28);
    *&v139[8] = 0x40000000;
    *&v139[40] = v132;
    v140 = 0uLL;
    v141 = __PAIR128__(v132, 0);
    v142 = 0uLL;
    v143 = __PAIR128__(v132, 0);
    v144 = 0uLL;
    v145 = xmmword_245A01E80;
    LOBYTE(v146) = 0;
    HIDWORD(v146) = 1065353216;
    *&v133[24] = 1;
    *&v134 = 0x3727C5AC3D4CCCCDLL;
    *(&v134 + 1) = 0x3C3F800000;
    v103 = a1;
    FIK::RigBuilderUtils::addTargetsToRig<FIK::MoCapRig>(a1, &v130);
    v18 = *a2;
    if (*a2)
    {
      v19 = 0;
      while (1)
      {
        v104 = -1;
        v105 = 0;
        v106 = 0;
        v108 = 0;
        v109 = 0;
        v107 = *(&v143 + 1);
        v110 = *(&v143 + 1);
        v111 = 0uLL;
        v112 = xmmword_245A01E80;
        v20 = FIK::Hierarchy::localSpaceRestPose(a2, v19);
        v111 = *v20;
        v112 = v20[1];
        v21 = FIK::Hierarchy::nameOf(a2, v19);
        v23 = *v21;
        v22 = v21[1];
        v24 = v22 ? *v21 : &unk_245A04BAE;
        IKString::assign(&v105, v24, v22);
        v25 = FIK::Hierarchy::parentIndexOf(a2, v19);
        v26 = v25;
        v28 = v27;
        if ((v27 & 1) == 0)
        {
          break;
        }

        v29 = FIK::Hierarchy::nameOf(a2, v25);
        IKString::IKString(&v127, v29);
        v30 = v128;
        if (!v128)
        {
          goto LABEL_14;
        }

        v31 = v127;
LABEL_15:
        IKString::assign(&v108, v31, v30);
        if (v128)
        {
          (*(*v129 + 3))(v129, v127, 0, 8);
        }

        if (v28)
        {
          v33 = v26;
        }

        else
        {
          v33 = -1;
        }

        HIDWORD(v104) = v33;
        FIK::IKArray<FIK::RigBoneBase>::push_back<FIK::RigBoneBase&,void>(&v142, &v104);
        if (v109)
        {
          (*(*v110 + 24))(v110, v108, 0, 8);
          v108 = 0;
          v109 = 0;
        }

        if (v106)
        {
          (*(*v107 + 24))(v107, v105, 0, 8);
        }

        if (v18 == ++v19)
        {
          goto LABEL_25;
        }
      }

      v32 = FIK::defaultAllocator(v25);
      v30 = 0;
      v128 = 0;
      v127 = 0;
      v129 = v32;
LABEL_14:
      v31 = &unk_245A04BAE;
      goto LABEL_15;
    }

LABEL_25:
    if (v102)
    {
      v34 = &v12[v102];
      v35 = (a1 + 56);
      v36 = a2 + 7;
      do
      {
        v37 = *v12;
        v38 = *v35;
        if (!*v35)
        {
          goto LABEL_34;
        }

        v39 = v35;
        do
        {
          if (*(v38 + 32) >= v37)
          {
            v39 = v38;
          }

          v38 = *(v38 + 8 * (*(v38 + 32) < v37));
        }

        while (v38);
        if (v39 == v35 || v37 < *(v39 + 8))
        {
LABEL_34:
          v39 = v35;
        }

        v40 = *v36;
        if (!*v36)
        {
          goto LABEL_42;
        }

        v41 = a2 + 7;
        do
        {
          if (*(v40 + 32) >= v37)
          {
            v41 = v40;
          }

          v40 = *(v40 + 8 * (*(v40 + 32) < v37));
        }

        while (v40);
        if (v41 == v36 || v37 < *(v41 + 8))
        {
LABEL_42:
          v41 = a2 + 7;
        }

        if (v37 <= 31)
        {
          if (v37)
          {
            if (v37 == 8)
            {
              FIK::MoCapTaskFactory::chestTask(v132, v17, &v104);
            }

            else
            {
              if (v37 != 14)
              {
                goto LABEL_105;
              }

              FIK::MoCapTaskFactory::headTask(v132, v17, &v104);
            }

            goto LABEL_58;
          }

          goto LABEL_57;
        }

        if (v37 > 40)
        {
          if (v37 != 41)
          {
            if (v37 != 43)
            {
LABEL_105:
              FIK::GameRigBuilder::createGameRig();
            }

            goto LABEL_57;
          }
        }

        else if (v37 != 32)
        {
          if (v37 != 34)
          {
            goto LABEL_105;
          }

LABEL_57:
          FIK::MoCapTaskFactory::hipsTask(v132, v17, &v104);
          goto LABEL_58;
        }

        FIK::MoCapTaskFactory::kneeTask(v132, v17, &v104);
LABEL_58:
        v42 = v39[5];
        v43 = FIK::Hierarchy::nameOf(v103, v42);
        v45 = *v43;
        v44 = v43[1];
        if (v44)
        {
          v46 = *v43;
        }

        else
        {
          v46 = &unk_245A04BAE;
        }

        IKString::assign(&v107, v46, v44);
        IKString::operator+(&v107, "_Task", 5, &v127);
        IKString::operator=(&v104, &v127);
        if (v128)
        {
          (*(*v129 + 3))(v129, v127, 0, 8);
        }

        LODWORD(v110) = v42;
        v47 = v41[5];
        v48 = FIK::Hierarchy::nameOf(a2, v47);
        v50 = *v48;
        v49 = v48[1];
        if (v49)
        {
          v51 = *v48;
        }

        else
        {
          v51 = &unk_245A04BAE;
        }

        IKString::assign(&v113, v51, v49);
        v116 = v47;
        FIK::IKArray<FIK::MoCapTask>::push_back<FIK::MoCapTask&,void>(&v139[16], &v104);
        if (v114)
        {
          (*(*v115 + 24))(v115, v113, 0, 8);
          v113 = 0;
          v114 = 0;
        }

        if (v108)
        {
          (*(*v109 + 24))(v109, v107, 0, 8);
          v107 = 0;
          v108 = 0;
        }

        if (v105)
        {
          (*(*v106 + 24))(v106, v104, 0, 8);
        }

        ++v12;
      }

      while (v12 != v34);
    }

    v52 = v106;
    v53 = v104;
    if (v104)
    {
      v54 = 280;
      do
      {
        v56 = *v52++;
        v55 = v56;
        if (v56 != -1)
        {
          v57 = v141;
          v58 = FIK::Hierarchy::nameOf(a2, v55);
          v59 = (v57 + v54);
          v60 = *(v58 + 8);
          if (v60)
          {
            v61 = *v58;
          }

          else
          {
            v61 = &unk_245A04BAE;
          }

          IKString::assign(v59 - 3, v61, v60);
          *v59 = v55;
        }

        v54 += 544;
        --v53;
      }

      while (v53);
      v52 = v106;
    }

    v104 = 0;
    if (v52)
    {
      (*(*v107 + 24))(v107, v52, 0, 8);
    }

    FIK::PoseConverter::PoseConverter(&v104, v103);
    FIK::PoseConverter::PoseConverter(&v127, a2);
    HIDWORD(v146) = FIK::AutoMatch::calculateSourceScale(&v126, &v124, &v125, &v123).u32[0];
    FIK::AutoMatch::calculateSourceTransform((v103 + 8), (a2 + 4), &v126, &v125, v122);
    v62 = FIK::CharacterisedHierarchy::getHierarchyIndexFromJointID<FIK::BipedIdentifiers::Joint>(v103, 0);
    v63 = FIK::Hierarchy::localSpaceRestPose(v103, v62);
    v64 = vmulq_f32(*v63, *v63);
    if ((v64.f32[2] + vaddv_f32(*v64.f32)) <= 0.01)
    {
      v65 = v122[0];
    }

    else
    {
      v120 = v122[0];
      v120.i32[FIK::IKRigUtils::getIndexForAxis(v103[11])] = 0;
      v65 = v120;
      v122[0] = v120;
    }

    v144 = v65;
    v145 = v122[1];
    if (*&v139[16])
    {
      v67 = *&v139[16] << 8;
      v68 = (*&v139[32] + 224);
      do
      {
        GlobalTransform = FIK::PoseConverter::GetGlobalTransform(&v104, *(v68 - 44));
        v70 = FIK::PoseConverter::GetGlobalTransform(&v127, *(v68 - 6));
        LODWORD(v71) = HIDWORD(v146);
        FIK::AutoMatch::calculateTaskOffset(GlobalTransform, v70, &v144, &v120, v71);
        *(v68 - 1) = v120;
        *v68 = v121;
        v68 += 16;
        v67 -= 256;
      }

      while (v67);
    }

    v72 = v140;
    if (v140)
    {
      v73 = 0;
      v74 = 336;
      do
      {
        v75 = v141;
        v76 = v141 + v74;
        v77 = *(v141 + v74 - 56);
        if (v77 != -1)
        {
          v78 = FIK::PoseConverter::GetGlobalTransform(&v104, v73);
          v79 = FIK::PoseConverter::GetGlobalTransform(&v127, v77);
          FIK::AutoMatch::calculateSourceOffset(v78, v79, &v144, &v120);
          v80 = v121;
          *(v76 - 48) = 0u;
          *(v76 - 32) = v80;
          v81 = *(v143 + 96 * v77 + 4);
          v82 = *(v76 - 332);
          if (v82 == -1)
          {
            v119[0] = 0uLL;
            v84 = xmmword_245A01E80;
          }

          else
          {
            v83 = FIK::PoseConverter::GetGlobalTransform(&v104, v82);
            v84 = v83[1];
            v119[0] = *v83;
          }

          v119[1] = v84;
          if (v81 == -1)
          {
            v118[0] = 0uLL;
            v86 = xmmword_245A01E80;
          }

          else
          {
            v85 = FIK::PoseConverter::GetGlobalTransform(&v127, v81);
            v86 = v85[1];
            v118[0] = *v85;
          }

          v118[1] = v86;
          FIK::AutoMatch::calculateSourceParentOffset(v119, v118, &v144, v117);
          v87 = v117[1];
          v88 = (v75 + v74);
          v88[-1] = 0u;
          *v88 = v87;
          v72 = v140;
        }

        ++v73;
        v74 += 544;
      }

      while (v73 < v72);
    }

    FIK::PoseConverter::~PoseConverter(&v127);
    FIK::PoseConverter::~PoseConverter(&v104);
    FIK::RigBuilderUtils::cullJointsFromRig<FIK::MoCapRig,FIK::MoCapBone,FIK::BipedIdentifiers::Joint,FIK::BipedIdentifiers::Group>(v103, 0, v99, v100, a8, a9, &v130);
    v89 = IKString::IKString(v101, &v130, v132);
    *(v89 + 3) = *v133;
    *(v89 + 36) = *&v133[12];
    v90 = *v135;
    *(v89 + 4) = v134;
    *(v89 + 5) = v90;
    v91 = *&v139[16];
    *(v89 + 6) = *&v135[16];
    v89[14] = *&v135[32];
    *(v89 + 30) = v136;
    *(v89 + 131) = *&v137[3];
    *(v89 + 32) = *v137;
    v92 = *v139;
    *(v89 + 9) = v138;
    *(v89 + 10) = v92;
    memset(&v139[16], 0, 24);
    v93 = *&v139[32];
    v94 = v140;
    *(v89 + 11) = v91;
    *(v89 + 12) = v93;
    v140 = 0u;
    v95 = v141;
    v96 = v142;
    *&v141 = 0;
    *(v89 + 13) = v94;
    *(v89 + 14) = v95;
    v142 = 0u;
    v97 = v143;
    v98 = v145;
    *&v143 = 0;
    *(v89 + 15) = v96;
    *(v89 + 16) = v97;
    *(v89 + 17) = v144;
    *(v89 + 18) = v98;
    v89[38] = v146;
    *(v89 + 320) = 1;
    FIK::IKArray<FIK::RigBoneBase>::~IKArray(&v142);
    FIK::IKArray<FIK::MoCapBone>::~IKArray(&v140);
    result = FIK::IKArray<FIK::MoCapTask>::~IKArray(&v139[16]);
    if (v131)
    {
      result = (*(*v132 + 24))(v132, v130, 0, 8);
    }
  }

  else
  {
    *a7 = 0;
    *(a7 + 320) = 0;
  }

  v66 = *MEMORY[0x277D85DE8];
  return result;
}

FIK::Hierarchy *FIK::anonymous namespace::disableUnmatchedJointsInGroupAndDescendents<FIK::BipedIdentifiers::Group>(FIK::Hierarchy *this, int a2, uint64_t a3)
{
  v3 = *(this + 10);
  if (v3)
  {
    v5 = this;
    v6 = (this + 80);
    do
    {
      if (*(v3 + 32) >= a2)
      {
        v6 = v3;
      }

      v3 = *(v3 + 8 * (*(v3 + 32) < a2));
    }

    while (v3);
    if (v6 != (this + 80) && *(v6 + 8) <= a2)
    {
      v7 = v6[5];
      if (v7)
      {
        v8 = v6[7];
        v9 = &v8[v7];
        do
        {
          v10 = *v8;
          v11 = *(a3 + 224) + 544 * *v8;
          if (*(v11 + 280) == -1)
          {
            *(v11 + 96) = 0;
          }

          this = FIK::Hierarchy::descendentIndicesOf(v5, v10, &v17);
          v12 = v18;
          if (v17)
          {
            v13 = *(a3 + 224);
            v14 = 8 * v17;
            v15 = v18;
            do
            {
              v16 = v13 + 544 * *v15;
              if (*(v16 + 280) == -1)
              {
                *(v16 + 96) = 0;
              }

              ++v15;
              v14 -= 8;
            }

            while (v14);
          }

          v17 = 0;
          if (v12)
          {
            this = (*(*v19 + 24))(v19, v12, 0, 8);
          }

          ++v8;
        }

        while (v8 != v9);
      }
    }
  }

  return this;
}

void FIK::RigBuilderUtils::cullJointsFromRig<FIK::MoCapRig,FIK::MoCapBone,FIK::BipedIdentifiers::Joint,FIK::BipedIdentifiers::Group>(FIK::Hierarchy *this, int a2, int *a3, uint64_t a4, int *a5, uint64_t a6, void *a7)
{
  v42 = a7[2];
  v47 = 0;
  v48 = 0;
  v46 = &v47;
  v14 = this + 56;
  v13 = *(this + 7);
  if (v13)
  {
    v15 = this + 56;
    do
    {
      if (*(v13 + 8) >= a2)
      {
        v15 = v13;
      }

      v13 = *&v13[8 * (*(v13 + 8) < a2)];
    }

    while (v13);
    if (v15 != v14 && *(v15 + 8) <= a2)
    {
      v16 = FIK::Hierarchy::nameOf(this, *(v15 + 5));
      IKString::IKString(&v43, v16);
      if (v44)
      {
        v17 = v43;
      }

      else
      {
        v17 = &unk_245A04BAE;
      }

      FIK::Hierarchy::ancestorsOf(this, v17, v44, v49);
      if (v49[0])
      {
        v18 = v50;
        v19 = 24 * v49[0];
        do
        {
          std::__tree<IKString>::__emplace_unique_key_args<IKString,IKString const&>(&v46, v18);
          v18 += 24;
          v19 -= 24;
        }

        while (v19);
      }

      FIK::IKArray<IKString>::~IKArray(v49);
      if (v44)
      {
        (*(*v45 + 24))(v45, v43, 0, 8);
      }
    }
  }

  if (a4)
  {
    v20 = &a3[a4];
    do
    {
      v21 = *v14;
      if (*v14)
      {
        v22 = *a3;
        v23 = v14;
        do
        {
          if (*(v21 + 32) >= v22)
          {
            v23 = v21;
          }

          v21 = *(v21 + 8 * (*(v21 + 32) < v22));
        }

        while (v21);
        if (v23 != v14 && v22 >= *(v23 + 8))
        {
          v24 = FIK::Hierarchy::nameOf(this, *(v23 + 5));
          IKString::IKString(&v43, v24);
          std::__tree<IKString>::__emplace_unique_key_args<IKString,IKString const&>(&v46, &v43);
          if (v44)
          {
            v25 = v43;
          }

          else
          {
            v25 = &unk_245A04BAE;
          }

          FIK::Hierarchy::descendentsOf(this, v25, v44, v49);
          if (v49[0])
          {
            v26 = v50;
            v27 = 24 * v49[0];
            do
            {
              std::__tree<IKString>::__emplace_unique_key_args<IKString,IKString const&>(&v46, v26);
              v26 += 24;
              v27 -= 24;
            }

            while (v27);
          }

          FIK::IKArray<IKString>::~IKArray(v49);
          if (v44)
          {
            (*(*v45 + 24))(v45, v43, 0, 8);
          }
        }
      }

      ++a3;
    }

    while (a3 != v20);
  }

  if (a6)
  {
    v28 = &a5[a6];
    v29 = (this + 80);
    do
    {
      v30 = *v29;
      if (*v29)
      {
        v31 = *a5;
        v32 = (this + 80);
        do
        {
          if (*(v30 + 8) >= v31)
          {
            v32 = v30;
          }

          v30 = *&v30[8 * (*(v30 + 8) < v31)];
        }

        while (v30);
        if (v32 != v29 && v31 >= *(v32 + 8))
        {
          v33 = v32[5];
          if (v33)
          {
            v34 = v32[7];
            v35 = &v34[v33];
            do
            {
              v36 = FIK::Hierarchy::nameOf(this, *v34);
              IKString::IKString(&v43, v36);
              std::__tree<IKString>::__emplace_unique_key_args<IKString,IKString const&>(&v46, &v43);
              if (v44)
              {
                v37 = v43;
              }

              else
              {
                v37 = &unk_245A04BAE;
              }

              FIK::Hierarchy::descendentsOf(this, v37, v44, v49);
              if (v49[0])
              {
                v38 = v50;
                v39 = 24 * v49[0];
                do
                {
                  std::__tree<IKString>::__emplace_unique_key_args<IKString,IKString const&>(&v46, v38);
                  v38 += 24;
                  v39 -= 24;
                }

                while (v39);
              }

              FIK::IKArray<IKString>::~IKArray(v49);
              if (v44)
              {
                (*(*v45 + 24))(v45, v43, 0, 8);
              }

              ++v34;
            }

            while (v34 != v35);
          }
        }
      }

      ++a5;
    }

    while (a5 != v28);
  }

  if (v48)
  {
    FIK::IKArray<FIK::MoCapBone>::IKArray<FIK::MoCapBone,void>(v49, a7[26] - v48, v42);
    v40 = a7[28];
    v41 = v40 + 544 * a7[26];
    v43 = &v46;
    std::__copy_if[abi:nn200100]<FIK::IKArrayIterator<FIK::MoCapBone const>,FIK::IKArrayIterator<FIK::MoCapBone const>,FIK::IKArrayIterator<FIK::MoCapBone>,std::__identity,void FIK::RigBuilderUtils::cullJointsFromRig<FIK::MoCapRig,FIK::MoCapBone,FIK::BipedIdentifiers::Joint,FIK::BipedIdentifiers::Group>(FIK::CharacterisedHierarchy const&,FIK::BipedIdentifiers::Joint,FIK::IKArrayView<FIK::BipedIdentifiers::Joint const>,FIK::IKArrayView<FIK::BipedIdentifiers::Group const>,FIK::MoCapRig &)::{lambda(FIK::MoCapBone const&)#1}>(v40, v41, v50, &v43);
    if (v49[0])
    {
      IKString::assign((v50 + 32), &unk_245A04BAE, 0);
    }

    FIK::IKArray<FIK::MoCapBone>::operator=(a7 + 26, v49);
    FIK::Serialisation::fixUpRigIndices(a7);
    FIK::IKArray<FIK::MoCapBone>::~IKArray(v49);
  }

  std::__tree<IKString>::destroy(&v46, v47);
}

void *FIK::IKArray<FIK::MoCapBone>::MemoryBlock::MemoryBlock(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  if (a2)
  {
    v5 = 544 * a2;
    v6 = (*(*a3 + 16))(a3, 544 * a2, 16);
    a1[1] = v6;
    a1[2] = a3;
    if (v5)
    {
      bzero(v6, v5);
    }
  }

  else
  {
    a1[1] = 0;
    a1[2] = a3;
  }

  return a1;
}

void *FIK::IKArray<FIK::MoCapBone>::clear(void *result)
{
  v1 = result;
  v2 = *result;
  if (*result)
  {
    v3 = result[2] + 256;
    do
    {
      result = FIK::IKArray<IKString>::~IKArray(v3 + 160);
      if (*(v3 + 8))
      {
        result = (*(**(v3 + 16) + 24))(*(v3 + 16), *v3, 0, 8);
        *v3 = 0;
        *(v3 + 8) = 0;
      }

      if (*(v3 - 216))
      {
        result = (*(**(v3 - 208) + 24))(*(v3 - 208), *(v3 - 224), 0, 8);
        *(v3 - 224) = 0;
        *(v3 - 216) = 0;
      }

      if (*(v3 - 240))
      {
        result = (*(**(v3 - 232) + 24))(*(v3 - 232), *(v3 - 248), 0, 8);
        *(v3 - 248) = 0;
        *(v3 - 240) = 0;
      }

      v3 += 544;
      --v2;
    }

    while (v2);
  }

  *v1 = 0;
  return result;
}

void *FIK::IKArray<IKString>::clear(void *result)
{
  v1 = result;
  v2 = *result;
  if (*result)
  {
    v3 = result[2];
    do
    {
      if (*(v3 + 8))
      {
        result = (*(**(v3 + 16) + 24))(*(v3 + 16), *v3, 0, 8);
        *v3 = 0;
        *(v3 + 8) = 0;
      }

      v3 += 24;
      --v2;
    }

    while (v2);
  }

  *v1 = 0;
  return result;
}

__n128 FIK::anonymous namespace::getGlobalJointPosition<FIK::BipedIdentifiers::Joint>@<Q0>(uint64_t a1@<X0>, FIK::PoseConverter *a2@<X1>, int a3@<W2>, __n128 *a4@<X8>)
{
  v6 = FIK::CharacterisedHierarchy::getHierarchyIndexFromJointID<FIK::BipedIdentifiers::Joint>(a1, a3);
  if (v6 == -1)
  {
  }

  GlobalTransform = FIK::PoseConverter::GetGlobalTransform(a2, v6);
  result = *GlobalTransform;
  *a4 = *GlobalTransform;
  return result;
}

uint64_t *FIK::IKArray<FIK::MoCapBone>::operator=(uint64_t *a1, uint64_t *a2)
{
  if (*a2 >= a1[1])
  {
    v12 = a2[1];
    v13 = a1[3];
    if (v12)
    {
      v14 = (*(*v13 + 16))(a1[3], 544 * v12, 16);
      v15 = v14;
      if (544 * v12)
      {
        bzero(v14, 544 * v12);
      }
    }

    else
    {
      v15 = 0;
    }

    v16 = *a2;
    if (*a2)
    {
      v17 = 0;
      v18 = a2[2];
      do
      {
        v19 = &v15[v17];
        *&v15[v17] = *(v18 + v17);
        IKString::IKString(&v15[v17 + 8], (v18 + v17 + 8));
        IKString::IKString(&v15[v17 + 32], (v18 + v17 + 32));
        *(v19 + 4) = *(v18 + v17 + 64);
        *(v19 + 5) = *(v18 + v17 + 80);
        v20 = *(v18 + v17 + 96);
        v21 = *(v18 + v17 + 112);
        *(v19 + 16) = *(v18 + v17 + 128);
        *(v19 + 6) = v20;
        *(v19 + 7) = v21;
        *(v19 + 9) = *(v18 + v17 + 144);
        *(v19 + 10) = *(v18 + v17 + 160);
        *(v19 + 11) = *(v18 + v17 + 176);
        *(v19 + 12) = *(v18 + v17 + 192);
        *(v19 + 13) = *(v18 + v17 + 208);
        *(v19 + 14) = *(v18 + v17 + 224);
        *(v19 + 15) = *(v18 + v17 + 240);
        IKString::IKString(&v15[v17 + 256], (v18 + v17 + 256));
        *(v19 + 70) = *(v18 + v17 + 280);
        *(v19 + 18) = *(v18 + v17 + 288);
        *(v19 + 19) = *(v18 + v17 + 304);
        *(v19 + 20) = *(v18 + v17 + 320);
        *(v19 + 21) = *(v18 + v17 + 336);
        v22 = *(v18 + v17 + 352);
        *(v19 + 46) = *(v18 + v17 + 368);
        *(v19 + 22) = v22;
        *(v19 + 48) = *(v18 + v17 + 384);
        *(v19 + 25) = *(v18 + v17 + 400);
        FIK::IKArray<IKString>::IKArray(&v15[v17 + 416], (v18 + v17 + 416));
        *(v19 + 28) = *(v18 + v17 + 448);
        *(v19 + 29) = *(v18 + v17 + 464);
        *(v19 + 60) = *(v18 + v17 + 480);
        *(v19 + 31) = *(v18 + v17 + 496);
        *(v19 + 32) = *(v18 + v17 + 512);
        *(v19 + 33) = *(v18 + v17 + 528);
        v17 += 544;
        --v16;
      }

      while (v16);
    }

    v24 = a1[2];
    v23 = a1[3];
    a1[1] = v12;
    a1[2] = v15;
    a1[3] = v13;
    if (v24)
    {
      (*(*v23 + 24))(v23, v24, 0, 8);
    }
  }

  else
  {
    FIK::IKArray<FIK::MoCapBone>::clear(a1);
    v4 = *a2;
    if (*a2)
    {
      v5 = 0;
      v6 = a1[2];
      v7 = a2[2];
      do
      {
        v8 = v6 + v5;
        *(v6 + v5) = *(v7 + v5);
        IKString::IKString((v6 + v5 + 8), (v7 + v5 + 8));
        IKString::IKString((v6 + v5 + 32), (v7 + v5 + 32));
        *(v8 + 64) = *(v7 + v5 + 64);
        *(v8 + 80) = *(v7 + v5 + 80);
        v9 = *(v7 + v5 + 96);
        v10 = *(v7 + v5 + 112);
        *(v8 + 128) = *(v7 + v5 + 128);
        *(v8 + 96) = v9;
        *(v8 + 112) = v10;
        *(v8 + 144) = *(v7 + v5 + 144);
        *(v8 + 160) = *(v7 + v5 + 160);
        *(v8 + 176) = *(v7 + v5 + 176);
        *(v8 + 192) = *(v7 + v5 + 192);
        *(v8 + 208) = *(v7 + v5 + 208);
        *(v8 + 224) = *(v7 + v5 + 224);
        *(v8 + 240) = *(v7 + v5 + 240);
        IKString::IKString((v6 + v5 + 256), (v7 + v5 + 256));
        *(v8 + 280) = *(v7 + v5 + 280);
        *(v8 + 288) = *(v7 + v5 + 288);
        *(v8 + 304) = *(v7 + v5 + 304);
        *(v8 + 320) = *(v7 + v5 + 320);
        *(v8 + 336) = *(v7 + v5 + 336);
        v11 = *(v7 + v5 + 352);
        *(v8 + 368) = *(v7 + v5 + 368);
        *(v8 + 352) = v11;
        *(v8 + 384) = *(v7 + v5 + 384);
        *(v8 + 400) = *(v7 + v5 + 400);
        FIK::IKArray<IKString>::IKArray((v6 + v5 + 416), (v7 + v5 + 416));
        *(v8 + 448) = *(v7 + v5 + 448);
        *(v8 + 464) = *(v7 + v5 + 464);
        *(v8 + 480) = *(v7 + v5 + 480);
        *(v8 + 496) = *(v7 + v5 + 496);
        *(v8 + 512) = *(v7 + v5 + 512);
        *(v8 + 528) = *(v7 + v5 + 528);
        v5 += 544;
        --v4;
      }

      while (v4);
    }
  }

  *a1 = *a2;
  return a1;
}

void *FIK::IKArray<FIK::MoCapBone>::IKArray<FIK::MoCapBone,void>(void *a1, uint64_t a2, FIK::Allocator *a3)
{
  v4 = a2;
  *a1 = a2;
  FIK::IKArray<FIK::MoCapBone>::MemoryBlock::MemoryBlock(a1 + 1, (a2 + 7) & 0xFFFFFFFFFFFFFFF8, a3);
  v6 = a1[2];
  FIK::MoCapBone::MoCapBone(&v12, a3);
  if (v4)
  {
    v7 = v6 + 256;
    do
    {
      *(v7 - 256) = v12;
      IKString::IKString((v7 - 248), v13);
      IKString::IKString((v7 - 224), &v15);
      *(v7 - 192) = v18;
      *(v7 - 176) = v19;
      v8 = v20;
      v9 = v21;
      *(v7 - 128) = v22;
      *(v7 - 160) = v8;
      *(v7 - 144) = v9;
      *(v7 - 112) = v23;
      *(v7 - 96) = v24;
      *(v7 - 80) = v25;
      *(v7 - 64) = v26;
      *(v7 - 48) = v27;
      *(v7 - 32) = v28;
      *(v7 - 16) = v29;
      IKString::IKString(v7, &v30);
      *(v7 + 24) = v33;
      *(v7 + 32) = v34;
      *(v7 + 48) = v35;
      *(v7 + 64) = v36;
      *(v7 + 80) = v37;
      v10 = v38;
      *(v7 + 112) = v39;
      *(v7 + 96) = v10;
      *(v7 + 128) = v40;
      *(v7 + 144) = v41;
      FIK::IKArray<IKString>::IKArray((v7 + 160), v42);
      *(v7 + 192) = v43;
      *(v7 + 208) = v44;
      *(v7 + 224) = v45;
      *(v7 + 240) = v46;
      *(v7 + 256) = v47;
      *(v7 + 272) = v48;
      v7 += 544;
      --v4;
    }

    while (v4);
  }

  FIK::IKArray<IKString>::~IKArray(v42);
  if (v31)
  {
    (*(*v32 + 24))(v32, v30, 0, 8);
    v30 = 0;
    v31 = 0;
  }

  if (v16)
  {
    (*(*v17 + 24))(v17, v15, 0, 8);
    v15 = 0;
    v16 = 0;
  }

  if (v13[1])
  {
    (*(*v14 + 24))(v14, v13[0], 0, 8);
  }

  return a1;
}

uint64_t std::__copy_if[abi:nn200100]<FIK::IKArrayIterator<FIK::MoCapBone const>,FIK::IKArrayIterator<FIK::MoCapBone const>,FIK::IKArrayIterator<FIK::MoCapBone>,std::__identity,void FIK::RigBuilderUtils::cullJointsFromRig<FIK::MoCapRig,FIK::MoCapBone,FIK::BipedIdentifiers::Joint,FIK::BipedIdentifiers::Group>(FIK::CharacterisedHierarchy const&,FIK::BipedIdentifiers::Joint,FIK::IKArrayView<FIK::BipedIdentifiers::Joint const>,FIK::IKArrayView<FIK::BipedIdentifiers::Group const>,FIK::MoCapRig &)::{lambda(FIK::MoCapBone const&)#1}>(uint64_t a1, uint64_t a2, uint64_t a3, void ***a4)
{
  v5 = a1;
  if (a1 == a2)
  {
    return a1;
  }

  v6 = a2;
  do
  {
    if (*a4 + 1 == std::__find[abi:nn200100]<std::__tree_const_iterator<IKString,std::__tree_node<IKString,void *> *,long>,std::__tree_const_iterator<IKString,std::__tree_node<IKString,void *> *,long>,IKString,std::__identity>(**a4, *a4 + 1, v5 + 8))
    {
      *a3 = *v5;
      v9 = *(v5 + 8);
      v8 = *(v5 + 16);
      if (v8)
      {
        v10 = *(v5 + 8);
      }

      else
      {
        v10 = &unk_245A04BAE;
      }

      IKString::assign((a3 + 8), v10, v8);
      v12 = *(v5 + 32);
      v11 = *(v5 + 40);
      if (v11)
      {
        v13 = *(v5 + 32);
      }

      else
      {
        v13 = &unk_245A04BAE;
      }

      IKString::assign((a3 + 32), v13, v11);
      *(a3 + 64) = *(v5 + 64);
      *(a3 + 80) = *(v5 + 80);
      v14 = *(v5 + 96);
      v15 = *(v5 + 112);
      *(a3 + 128) = *(v5 + 128);
      *(a3 + 96) = v14;
      *(a3 + 112) = v15;
      *(a3 + 144) = *(v5 + 144);
      *(a3 + 160) = *(v5 + 160);
      *(a3 + 176) = *(v5 + 176);
      *(a3 + 192) = *(v5 + 192);
      *(a3 + 208) = *(v5 + 208);
      *(a3 + 224) = *(v5 + 224);
      *(a3 + 240) = *(v5 + 240);
      v17 = *(v5 + 256);
      v16 = *(v5 + 264);
      if (v16)
      {
        v18 = *(v5 + 256);
      }

      else
      {
        v18 = &unk_245A04BAE;
      }

      IKString::assign((a3 + 256), v18, v16);
      *(a3 + 280) = *(v5 + 280);
      *(a3 + 288) = *(v5 + 288);
      *(a3 + 304) = *(v5 + 304);
      *(a3 + 320) = *(v5 + 320);
      *(a3 + 336) = *(v5 + 336);
      v19 = *(v5 + 352);
      *(a3 + 368) = *(v5 + 368);
      *(a3 + 352) = v19;
      *(a3 + 384) = *(v5 + 384);
      *(a3 + 400) = *(v5 + 400);
      FIK::IKArray<IKString>::operator=((a3 + 416), (v5 + 416));
      *(a3 + 448) = *(v5 + 448);
      *(a3 + 464) = *(v5 + 464);
      *(a3 + 480) = *(v5 + 480);
      *(a3 + 496) = *(v5 + 496);
      *(a3 + 512) = *(v5 + 512);
      *(a3 + 528) = *(v5 + 528);
      a3 += 544;
    }

    v5 += 544;
  }

  while (v5 != v6);
  return v6;
}

uint64_t *FIK::IKArray<IKString>::operator=(uint64_t *a1, uint64_t *a2)
{
  v3 = a1;
  if (*a2 >= a1[1])
  {
    v11 = a2[1];
    v12 = a1[3];
    if (v11)
    {
      a1 = (*(*v12 + 16))(a1[3], 24 * v11, 8);
      v13 = a1;
      if (24 * v11)
      {
        bzero(a1, 24 * v11);
      }
    }

    else
    {
      v13 = 0;
    }

    v14 = *a2;
    if (*a2)
    {
      v15 = (a2[2] + 8);
      v16 = v13;
      do
      {
        v17 = FIK::defaultAllocator(a1);
        *v16 = 0;
        v16[1] = 0;
        v16[2] = v17;
        v18 = *(v15 - 1);
        if (*v15)
        {
          v19 = *(v15 - 1);
        }

        else
        {
          v19 = &unk_245A04BAE;
        }

        IKString::assign(v16, v19, *v15);
        v16 += 3;
        v15 += 3;
        --v14;
      }

      while (v14);
    }

    v21 = v3[2];
    v20 = v3[3];
    v3[1] = v11;
    v3[2] = v13;
    v3[3] = v12;
    if (v21)
    {
      (*(*v20 + 24))(v20, v21, 0, 8);
    }
  }

  else
  {
    v4 = FIK::IKArray<IKString>::clear(a1);
    v5 = *a2;
    if (*a2)
    {
      v6 = v3[2];
      v7 = (a2[2] + 8);
      do
      {
        v8 = FIK::defaultAllocator(v4);
        *v6 = 0;
        v6[1] = 0;
        v6[2] = v8;
        v9 = *(v7 - 1);
        if (*v7)
        {
          v10 = *(v7 - 1);
        }

        else
        {
          v10 = &unk_245A04BAE;
        }

        IKString::assign(v6, v10, *v7);
        v6 += 3;
        v7 += 3;
        --v5;
      }

      while (v5);
    }
  }

  *v3 = *a2;
  return v3;
}