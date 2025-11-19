uint64_t FIK::IKRigUtils::rebalanceTaskWeights(uint64_t result)
{
  v1 = *(result + 176);
  if (v1)
  {
    v2 = result;
    v3 = *(result + 192);
    v4 = &v3[3].i8[4];
    v5 = 240 * v1;
    v6 = 0.0;
    v7 = 0.0;
    v8 = 0.0;
    do
    {
      if (*v4 == 1)
      {
        v9 = *(v4 + 28);
        v6 = v6 + (COERCE_FLOAT(*(v4 + 36)) + vaddv_f32(*v9.f32));
        v9.f32[3] = v7;
        v7 = vmaxvq_f32(v9);
      }

      if (v4[1] == 1)
      {
        v8 = v8 + (COERCE_FLOAT(*(v4 + 52)) + vaddv_f32(*(v4 + 44)));
      }

      v4 += 240;
      v5 -= 240;
    }

    while (v5);
    v10 = v8 + v6;
    if ((v8 + v6) > 0.0 && v7 > 0.0 || (v16 = v7, v15 = ikinemaLogObject(), result = ikinemaAssertHandler(*v15, 0, "rebalanceTaskWeights", "(totalWeight > 0 && pMax > 0) No active tasks"), v7 = v16, v3 = *(v2 + 192), (v1 = *(v2 + 176)) != 0))
    {
      v11 = 10.0 / v7;
      if ((10.0 / v7) >= (100.0 / v10))
      {
        v11 = 100.0 / v10;
      }

      v12 = fminf(v11, 1.0);
      v13 = v3 + 6;
      v14 = 240 * v1;
      do
      {
        if (v13[-3].i8[4] == 1)
        {
          v13[-1] = vmulq_n_f32(v13[-1], v12);
        }

        if (v13[-3].i8[5] == 1)
        {
          *v13 = vmulq_n_f32(*v13, v12);
        }

        v13 += 15;
        v14 -= 240;
      }

      while (v14);
    }
  }

  return result;
}

uint64_t FIK::IKRigUtils::getIndexForAxis(uint64_t result)
{
  if (result <= 2)
  {
    return result;
  }

  else
  {
    return (result - 3);
  }
}

float FIK::IKRigUtils::getUnitVecForAxis@<S0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 <= 5)
  {
    result = flt_245A03C1C[a1];
    v3 = dword_245A03C34[a1];
    v4 = dword_245A03C4C[a1];
    *a2 = result;
    *(a2 + 4) = v3;
    *(a2 + 8) = v4;
    *(a2 + 12) = 0;
  }

  return result;
}

uint64_t FIK::IKRigUtils::highestMagnitudeAxis(float32x4_t *a1)
{
  v1 = *a1;
  v2 = vabsq_f32(*a1);
  if (v2.f32[0] == v2.f32[1] && v2.f32[0] == v2.f32[2])
  {
    v6 = 0;
    v5 = 0;
  }

  else
  {
    v4 = v2.f32[0] < v2.f32[1];
    if (v2.f32[0] < v2.f32[1])
    {
      v2.f32[0] = v2.f32[1];
    }

    if (v2.f32[0] < v2.f32[2])
    {
      v4 = 2;
    }

    if (v4 == 2)
    {
      v5 = 2;
      if (v1.f32[2] < 0.0)
      {
        v5 = 5;
      }
    }

    else if (v4 == 1)
    {
      v5 = 4;
      if (v1.f32[1] >= 0.0)
      {
        v5 = 1;
      }
    }

    else
    {
      v5 = 3;
      if (v1.f32[0] >= 0.0)
      {
        v5 = 0;
      }
    }

    v6 = 0x100000000;
  }

  return v5 | v6;
}

void FIK::Characteriser::Characteriser(FIK::Characteriser *this)
{
  *(this + 2) = 0;
  *(this + 1) = 0;
  *this = this + 8;
  FIK::Characterisation::Characterisation((this + 24), "undefined");
  *(this + 3) = &unk_28589C410;
  operator new();
}

uint64_t FIK::Characteriser::registerCharacterisation(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(*a2 + 16);
  if (v5)
  {
    v6 = *(v4 + 8);
  }

  else
  {
    v6 = &unk_245A04BAE;
  }

  v10 = v2;
  v11 = v3;
  v8[0] = v6;
  v8[1] = v5;
  *a2 = 0;
  v9 = v4;
  std::__tree<std::__value_type<std::string_view,std::unique_ptr<FIK::Characterisation>>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,std::unique_ptr<FIK::Characterisation>>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,std::unique_ptr<FIK::Characterisation>>>>::__emplace_unique_key_args<std::string_view,std::pair<std::string_view const,std::unique_ptr<FIK::Characterisation>>>(a1, v8);
  result = v9;
  v9 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t FIK::Characteriser::operator[](uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = a2;
  v6[1] = a3;
  v4 = std::__tree<std::__value_type<std::string_view,std::unique_ptr<FIK::Characterisation>>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,std::unique_ptr<FIK::Characterisation>>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,std::unique_ptr<FIK::Characterisation>>>>::find<std::string_view>(a1, v6);
  if (a1 + 8 == v4)
  {
    return a1 + 24;
  }

  else
  {
    return *(v4 + 48);
  }
}

FIK *FIK::Characterisation::Characterisation(FIK *a1, char *a2)
{
  *a1 = &unk_28589C010;
  v4 = FIK::defaultAllocator(a1);
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *(a1 + 3) = v4;
  v5 = strlen(a2);
  IKString::assign(a1 + 1, a2, v5);
  return a1;
}

uint64_t std::__tree<std::__value_type<std::string_view,std::unique_ptr<FIK::Characterisation>>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,std::unique_ptr<FIK::Characterisation>>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,std::unique_ptr<FIK::Characterisation>>>>::__emplace_unique_key_args<std::string_view,std::pair<std::string_view const,std::unique_ptr<FIK::Characterisation>>>(uint64_t a1, uint64_t a2)
{
  v2 = *std::__tree<std::__value_type<std::string_view,std::unique_ptr<FIK::Characterisation>>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,std::unique_ptr<FIK::Characterisation>>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,std::unique_ptr<FIK::Characterisation>>>>::__find_equal<std::string_view>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *std::__tree<std::__value_type<std::string_view,std::unique_ptr<FIK::Characterisation>>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,std::unique_ptr<FIK::Characterisation>>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,std::unique_ptr<FIK::Characterisation>>>>::__find_equal<std::string_view>(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!std::less<std::string_view>::operator()[abi:nn200100](a1, a3, (v4 + 4)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!std::less<std::string_view>::operator()[abi:nn200100](a1, (v8 + 4), a3))
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

uint64_t std::less<std::string_view>::operator()[abi:nn200100](uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *a3;
  v6 = *(a3 + 8);
  if (v6 >= v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = *(a3 + 8);
  }

  v8 = memcmp(v3, v5, v7);
  if (v4 < v6)
  {
    v9 = -1;
  }

  else
  {
    v9 = 1;
  }

  if (v4 == v6)
  {
    v9 = 0;
  }

  if (v8)
  {
    v9 = v8;
  }

  return v9 >> 31;
}

uint64_t std::__tree<std::__value_type<std::string_view,std::unique_ptr<FIK::Characterisation>>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,std::unique_ptr<FIK::Characterisation>>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,std::unique_ptr<FIK::Characterisation>>>>::find<std::string_view>(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = std::less<std::string_view>::operator()[abi:nn200100](a1, v3 + 32, a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || std::less<std::string_view>::operator()[abi:nn200100](a1, a2, v6 + 32))
  {
    return v2;
  }

  return v6;
}

uint64_t FIK::AnimNode::updateSolverBoneSettings(uint64_t a1, uint64_t a2)
{
  (*(*a1 + 136))(a1, *(a2 + 97), *(a2 + 98), *(a2 + 99));
  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
    (*(*a1 + 144))(a1, *(a2 + 105), *(a2 + 106), *(a2 + 107));
  }

  (*(*a1 + 176))(a1, *(a2 + 96), 0);
  v4.n128_u32[0] = *(a2 + 116);
  (*(*a1 + 968))(a1, v4);
  (*(*a1 + 64))(a1, *(a2 + 104));
  v5.n128_u32[0] = *(a2 + 124);
  (*(*a1 + 696))(a1, v5);
  v6 = 0;
  v20[24] = *(a2 + 128);
  v7 = (a2 + 192);
  do
  {
    v8 = *(v7 - 4);
    v9 = &v20[v6];
    v10 = *v7++;
    *v9 = v8;
    v9[1] = v10;
    v6 += 8;
  }

  while (v6 != 24);
  (*(*a1 + 624))(a1, v20, 1);
  (*(*a1 + 48))(a1, *(a2 + 103));
  (*(*a1 + 16))(a1, *(a2 + 100), 0);
  v11.n128_u32[0] = *(a2 + 120);
  (*(*a1 + 712))(a1, v11);
  v12.n128_u32[0] = *(a2 + 160);
  (*(*a1 + 728))(a1, 0, v12);
  v13.n128_u32[0] = *(a2 + 164);
  (*(*a1 + 728))(a1, 1, v13);
  v14.n128_u32[0] = *(a2 + 168);
  (*(*a1 + 728))(a1, 2, v14);
  (*(*a1 + 656))(a1, 0);
  v15.n128_f32[0] = 1.0 - *(a2 + 144);
  (*(*a1 + 280))(a1, 0, v15);
  v16.n128_f32[0] = 1.0 - *(a2 + 148);
  (*(*a1 + 280))(a1, 1, v16);
  v17.n128_f32[0] = 1.0 - *(a2 + 152);
  (*(*a1 + 280))(a1, 2, v17);
  if ((*(a2 + 105) & 1) != 0 || (*(a2 + 106) & 1) != 0 || *(a2 + 107) == 1)
  {
    v18 = *(a2 + 101);
  }

  else
  {
    v18 = 0;
  }

  (*(*a1 + 88))(a1, v18 & 1);
  return (*(*a1 + 104))(a1, 0);
}

uint64_t FIK::AnimNode::updateSolverSettings(FIK::IKSolver *a1, uint64_t a2)
{
  FIK::IKSolver::enableShadowPosing(a1, *(a2 + 25));
  FIK::IKSolver::setLimitsGain(a1, *(a2 + 20));
  FIK::IKSolver::setRetargetingGain(a1, *(a2 + 8));
  FIK::IKSolver::setAddErrors(a1, *(a2 + 26));
  FIK::IKSolver::setTranslationWeight(a1, 1.0);
  FIK::IKSolver::setSolutionTolerance(a1, *(a2 + 4));
  FIK::IKSolver::setPrecision(a1, *(a2 + 16));
  result = FIK::IKSolver::setPGain(a1, *a2);
  if (*(a2 + 24) == 1)
  {
    RootSegment = FIK::IKSolver::getRootSegment(a1);
    (*(*RootSegment + 136))(RootSegment, 1, 1, 1);
    FIK::IKSolver::translateRoot(a1, 1);
    (*(*RootSegment + 160))(RootSegment, 1, 0);
    v6 = *(*RootSegment + 120);

    return v6(RootSegment, 0);
  }

  return result;
}

uint64_t FIK::AnimNode::updateConstraintSettings(uint64_t this, ikinema::Constraint *a2, const FIK::RigTask *a3)
{
  v4 = this;
  if (*(a2 + 52) == 1)
  {
    v5 = *(this + 8);
    if (!v5)
    {
      v16 = ikinemaLogObject();
      ikinemaAssertHandler(*v16, 0, "updateConstraintSettings", "(constraint.positionTask) Position task should have been created.");
      v5 = *(v4 + 8);
    }

    v6 = (a2 + 112);
    v7 = -3;
    do
    {
      (*(*(v5 + *(*v5 - 264)) + 80))(v5 + *(*v5 - 264), (v7 + 3), a3, *(v6 - 8));
      v8 = *v6++;
      (*(*(v5 + *(*v5 - 264)) + 104))(v5 + *(*v5 - 264), (v7 + 3), v8);
      v9 = __CFADD__(v7++, 1);
    }

    while (!v9);
    (*(*(v5 + *(*v5 - 264)) + 144))(v5 + *(*v5 - 264), *(a2 + 55), *(a2 + 56), *(a2 + 57));
    (*(*(v5 + *(*v5 - 264)) + 56))(v5 + *(*v5 - 264), *(a2 + 16));
    (*(*v5 + 392))(v5, *(a2 + 54));
    this = (*(*v5 + 280))(v5, a2 + 144);
  }

  if (*(a2 + 53) == 1)
  {
    v10 = *(v4 + 16);
    if (!v10)
    {
      v17 = ikinemaLogObject();
      ikinemaAssertHandler(*v17, 0, "updateConstraintSettings", "(constraint.orientationTask) Orientation task should have been created.");
      v10 = *(v4 + 16);
    }

    v11 = (a2 + 128);
    v12 = -3;
    do
    {
      (*(*&v10[*(*v10 - 264)] + 80))(&v10[*(*v10 - 264)], (v12 + 3), *(v11 - 8));
      v13 = *v11++;
      (*(*&v10[*(*v10 - 264)] + 104))(&v10[*(*v10 - 264)], (v12 + 3), v13);
      v9 = __CFADD__(v12++, 1);
    }

    while (!v9);
    (*(*&v10[*(*v10 - 264)] + 144))(&v10[*(*v10 - 264)], *(a2 + 58), *(a2 + 59), *(a2 + 60));
    v14 = *(a2 + 17);
    v15 = *(*&v10[*(*v10 - 264)] + 56);

    return v15();
  }

  return this;
}

uint64_t FIK::AnimNode::loadSolverSkeletonFromRig(FIK::AnimNode *this)
{
  FIK::IKRigUtils::generateImportBonesFromRig<FIK::MoCapRig,void>(this + 18, v7);
  FIK::IKSolver::importBones(this + 2, v7);
  FIK::AnimNode::updateSolverSettings((this + 16), this + 208);
  v2 = *(this + 44);
  if (v2)
  {
    v3 = *(this + 46);
    v4 = 544 * v2;
    do
    {
      Segment = FIK::IKSolver::getSegment((this + 16), *v3);
      FIK::AnimNode::updateSolverBoneSettings(Segment, v3);
      v3 += 136;
      v4 -= 544;
    }

    while (v4);
  }

  FIK::IKSolver::setup(this + 2);
  return FIK::IKArray<FIK::ImportBone>::~IKArray(v7);
}

void *FIK::IKRigUtils::generateImportBonesFromRig<FIK::MoCapRig,void>@<X0>(unint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = FIK::defaultAllocator(a1);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = v4;
  FIK::IKArray<FIK::ImportBone>::reserve(a2, a1[26]);
  v5 = a1[28];
  v6 = &v5[136 * a1[26]];

  return std::transform[abi:nn200100]<FIK::IKArrayIterator<FIK::MoCapBone const>,std::back_insert_iterator<FIK::IKArray<FIK::ImportBone>>,FIK::IKArray<FIK::ImportBone> FIK::IKRigUtils::generateImportBonesFromRig<FIK::MoCapRig,void>(FIK::MoCapRig const&)::{lambda(FIK::RigBoneBase const&)#1}>(v5, v6, a2);
}

uint64_t FIK::AnimNode::AnimNode(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_28589C220;
  *(a1 + 8) = *(a2 + 76);
  *(a1 + 12) = 1114636288;
  v4 = FIK::defaultAllocator(a1);
  v5 = FIK::IKSolver::IKSolver((a1 + 16), v4);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = xmmword_245A01E80;
  *(a1 + 64) = 0;
  v6 = FIK::defaultAllocator(v5);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = v6;
  v7 = FIK::defaultAllocator(v6);
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = v7;
  IKString::IKString((a1 + 144), a2);
  v8 = *(a2 + 24);
  *(a1 + 180) = *(a2 + 36);
  *(a1 + 168) = v8;
  v9 = *(a2 + 80);
  *(a1 + 208) = *(a2 + 64);
  *(a1 + 224) = v9;
  *(a1 + 240) = *(a2 + 96);
  v10 = *(a2 + 120);
  *(a1 + 256) = *(a2 + 112);
  *(a1 + 264) = v10;
  v11 = *(a2 + 128);
  *(a1 + 275) = *(a2 + 131);
  *(a1 + 272) = v11;
  *(a1 + 288) = *(a2 + 144);
  *(a1 + 304) = *(a2 + 160);
  FIK::IKArray<FIK::MoCapTask>::IKArray((a1 + 320), (a2 + 176));
  FIK::IKArray<FIK::MoCapBone>::IKArray((a1 + 352), (a2 + 208));
  FIK::IKArray<FIK::RigBoneBase>::IKArray((a1 + 384), (a2 + 240));
  *(a1 + 416) = *(a2 + 272);
  *(a1 + 432) = *(a2 + 288);
  *(a1 + 448) = *(a2 + 304);
  *(a1 + 464) = 0;
  FIK::AnimNode::loadSolverSkeletonFromRig(a1);
  v12 = *FIK::IKSolver::getRootSegment((a1 + 16));
  (*(v12 + 864))(v15);
  v13 = v15[1];
  *(a1 + 32) = v15[0];
  *(a1 + 48) = v13;
  return a1;
}

uint64_t FIK::AnimNode::PassFKPose(uint64_t a1, uint64_t a2)
{
  result = FIK::IKSolver::numSegments((a1 + 16));
  if (result)
  {
    v5 = result;
    v6 = 0;
    for (i = 0; i < v5; v6 = ++i)
    {
      v8 = a2 + 32 * v6;
      Segment = FIK::IKSolver::getSegment((a1 + 16), i);
      result = (*(*Segment + 200))(Segment, v8 + 16);
    }
  }

  return result;
}

uint64_t FIK::AnimNode::SolveAndUpdatePose(uint64_t a1, uint64_t a2)
{
  v13 = 2;
  FIK::IKSolver::solve(a1 + 16, *(a1 + 8), &v13);
  if (v13 != 2)
  {
    if (v13 || (v4 = FIK::IKSolver::getRootSegment((a1 + 16)), (*(*v4 + 360))(v12), v5 = vmulq_f32(v12[0], v12[0]), sqrtf(v5.f32[2] + vaddv_f32(*v5.f32)) > 5000.0))
    {
      RootSegment = FIK::IKSolver::getRootSegment((a1 + 16));
      (*(*RootSegment + 440))(RootSegment, a1 + 32);
      FIK::IKSolver::resetSolver((a1 + 16));
      FIK::IKSolver::storeRootTransform((a1 + 16));
      FIK::IKSolver::solve(a1 + 16, *(a1 + 8), &v13);
    }

    if (FIK::IKSolver::numSegments((a1 + 16)))
    {
      v7 = 0;
      v8 = 0;
      do
      {
        Segment = FIK::IKSolver::getSegment((a1 + 16), v8);
        (*(*Segment + 360))(v12);
        v10 = (a2 + 32 * v7);
        *v10 = v12[0];
        v10[1] = v12[1];
        v7 = ++v8;
      }

      while (FIK::IKSolver::numSegments((a1 + 16)) > v8);
    }
  }

  return v13;
}

void FIK::AnimNode::updateSolverBoneLengths(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (FIK::IKSolver::numSegments((a1 + 16)) != a3)
  {
    FIK::AnimNode::updateSolverBoneLengths();
  }

  if (FIK::IKSolver::numSegments((a1 + 16)))
  {
    v5 = 0;
    v6 = 64;
    do
    {
      v7 = *(a2 + 4 * v5);
      if (v7 >= 0.0)
      {
        FIK::IKRigUtils::setBoneLength<FIK::MoCapBone>(a1 + 352, v5, v7);
        v9 = *(*(a1 + 368) + v6);
        if (FIK::IKSolver::numSegments((a1 + 16)) <= v5)
        {
          FIK::AnimNode::updateSolverBoneLengths();
        }

        Segment = FIK::IKSolver::getSegment((a1 + 16), v5);
        (*(*Segment + 432))(Segment, &v9);
      }

      ++v5;
      v6 += 544;
    }

    while (FIK::IKSolver::numSegments((a1 + 16)) > v5);
  }

  FIK::IKSolver::resetSolver((a1 + 16));
}

uint64_t FIK::AnimNode::jointByIndex(FIK::AnimNode *this, unint64_t a2)
{
  v2 = a2;
  if (FIK::IKSolver::numSegments((this + 16)) <= a2)
  {
    return 0;
  }

  return FIK::IKSolver::getSegment((this + 16), v2);
}

uint64_t FIK::AnimNode::GetTaskIndex(uint64_t a1, uint64_t *a2)
{
  v4 = (*(*a1 + 40))(a1);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = v4;
  v6 = 0;
  while (1)
  {
    v7 = (*(*a1 + 48))(a1, v6);
    v8 = *(v7 + 32);
    v9 = v8 ? *(v7 + 24) : &unk_245A04BAE;
    if (a2[1] == v8)
    {
      v10 = *a2;
      v11 = v8 ? *a2 : &unk_245A04BAE;
      if (!memcmp(v11, v9, v8))
      {
        break;
      }
    }

    if (v5 == ++v6)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v6;
}

uint64_t FIK::AnimNode::insertAlgorithmBefore(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  if (!*a3)
  {
    return 2;
  }

  v4 = a1 + 72;
  v3 = *(a1 + 72);
  if (v3 >= a2)
  {
    v3 = a2;
  }

  FIK::IKArray<ikinema::AlgorithmHandle>::insert((a1 + 72), *(a1 + 88) + 8 * v3, a3);
  result = 0;
  *(v4 - 8) = 0;
  return result;
}

uint64_t FIK::IKArray<ikinema::AlgorithmHandle>::insert(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v6 = a1[2];
  v7 = a2 - v6;
  v8 = *a1;
  v9 = v6 + 8 * *a1;
  FIK::IKArray<ikinema::AlgorithmHandle>::reserve(a1, *a1 + 1);
  v10 = (a1[2] + v7);
  if (v9 != a2)
  {
    v11 = (v10 + v9 - a2);
    v12 = v7 - 8 * v8;
    do
    {
      v13 = v11 - 1;
      ikinema::AlgorithmHandle::operator=(v11, v11 - 1);
      v11 = v13;
      v12 += 8;
    }

    while (v12);
  }

  v14 = *a3;
  *a3 = 0;
  *v10 = v14;
  ++*a1;
  return a1[2] + v7;
}

uint64_t FIK::AnimNode::removeAlgorithmAt(FIK::AnimNode *this, unint64_t a2)
{
  v2 = (this + 72);
  if (*(this + 9) <= a2)
  {
    return 0;
  }

  v4 = (*(this + 11) + 8 * a2);
  result = (*(**v4 + 40))();
  if (result)
  {
    FIK::IKArray<ikinema::AlgorithmHandle>::erase(v2, v4);
    *(this + 64) = 0;
    return 1;
  }

  return result;
}

FIK **FIK::IKArray<ikinema::AlgorithmHandle>::erase(uint64_t *a1, FIK **a2)
{
  v4 = a2 + 1;
  v5 = *a1;
  v6 = a1[2] + 8 * *a1;
  if (a2 + 1 != v6)
  {
    v7 = a2;
    do
    {
      ikinema::AlgorithmHandle::operator=(v7++, v4++);
    }

    while (v4 != v6);
    v5 = *a1;
  }

  *a1 = v5 - 1;
  return a2;
}

uint64_t FIK::AnimNode::registerAndValidateAlgorithms(FIK::AnimNode *this)
{
  v1 = *(this + 9);
  if (!v1)
  {
    return 1;
  }

  v3 = *(this + 11);
  v4 = 8 * v1;
  while ((*(**v3 + 32))(*v3, this + 104) != 1)
  {
    ++v3;
    v4 -= 8;
    if (!v4)
    {
      return 1;
    }
  }

  v7 = *(this + 13);
  if (v7)
  {
    v8 = *(this + 15);
    do
    {
      ikinema::Buffer::~Buffer(v8, v5);
      v8 = (v9 + 72);
      --v7;
    }

    while (v7);
  }

  result = 0;
  *(this + 13) = 0;
  return result;
}

uint64_t FIK::AnimNode::validateAlgorithms(FIK::AnimNode *this)
{
  if (*(this + 64))
  {
    return 1;
  }

  result = FIK::AnimNode::registerAndValidateAlgorithms(this);
  *(this + 64) = result;
  return result;
}

void *FIK::IKArray<FIK::MoCapTask>::IKArray(void *a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  *a1 = v5;
  FIK::IKArray<FIK::RigBone>::MemoryBlock::MemoryBlock(a1 + 1, v4, a2[3]);
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
      IKString::IKString((v8 + v7 + 176), (v9 + v7 + 176));
      v12 = *(v9 + v7 + 200);
      *(v10 + 204) = *(v9 + v7 + 204);
      *(v10 + 200) = v12;
      *(v10 + 208) = *(v9 + v7 + 208);
      *(v10 + 224) = *(v9 + v7 + 224);
      *(v10 + 240) = *(v9 + v7 + 240);
      v7 += 256;
      --v6;
    }

    while (v6);
  }

  return a1;
}

void *FIK::IKArray<FIK::MoCapBone>::IKArray(void *a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  *a1 = v5;
  FIK::IKArray<FIK::MoCapBone>::MemoryBlock::MemoryBlock(a1 + 1, v4, a2[3]);
  v6 = *a2;
  if (*a2)
  {
    v7 = 0;
    v8 = a1[2];
    v9 = a2[2];
    do
    {
      v10 = v8 + v7;
      *(v8 + v7) = *(v9 + v7);
      IKString::IKString((v8 + v7 + 8), (v9 + v7 + 8));
      IKString::IKString((v8 + v7 + 32), (v9 + v7 + 32));
      *(v10 + 64) = *(v9 + v7 + 64);
      *(v10 + 80) = *(v9 + v7 + 80);
      v11 = *(v9 + v7 + 96);
      v12 = *(v9 + v7 + 112);
      *(v10 + 128) = *(v9 + v7 + 128);
      *(v10 + 96) = v11;
      *(v10 + 112) = v12;
      *(v10 + 144) = *(v9 + v7 + 144);
      *(v10 + 160) = *(v9 + v7 + 160);
      *(v10 + 176) = *(v9 + v7 + 176);
      *(v10 + 192) = *(v9 + v7 + 192);
      *(v10 + 208) = *(v9 + v7 + 208);
      *(v10 + 224) = *(v9 + v7 + 224);
      *(v10 + 240) = *(v9 + v7 + 240);
      IKString::IKString((v8 + v7 + 256), (v9 + v7 + 256));
      *(v10 + 280) = *(v9 + v7 + 280);
      *(v10 + 288) = *(v9 + v7 + 288);
      *(v10 + 304) = *(v9 + v7 + 304);
      *(v10 + 320) = *(v9 + v7 + 320);
      *(v10 + 336) = *(v9 + v7 + 336);
      v13 = *(v9 + v7 + 352);
      *(v10 + 368) = *(v9 + v7 + 368);
      *(v10 + 352) = v13;
      *(v10 + 384) = *(v9 + v7 + 384);
      *(v10 + 400) = *(v9 + v7 + 400);
      FIK::IKArray<IKString>::IKArray((v8 + v7 + 416), (v9 + v7 + 416));
      *(v10 + 448) = *(v9 + v7 + 448);
      *(v10 + 464) = *(v9 + v7 + 464);
      *(v10 + 480) = *(v9 + v7 + 480);
      *(v10 + 496) = *(v9 + v7 + 496);
      *(v10 + 512) = *(v9 + v7 + 512);
      *(v10 + 528) = *(v9 + v7 + 528);
      v7 += 544;
      --v6;
    }

    while (v6);
  }

  return a1;
}

void *FIK::IKArray<FIK::RigBoneBase>::IKArray(void *a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  *a1 = v5;
  FIK::IKArray<FIK::RigBoneBase>::MemoryBlock::MemoryBlock(a1 + 1, v4, a2[3]);
  v6 = *a2;
  if (*a2)
  {
    v7 = a2[2];
    v8 = (a1[2] + 32);
    v9 = (v7 + 32);
    do
    {
      *(v8 - 4) = *(v9 - 4);
      IKString::IKString((v8 - 24), (v9 - 24));
      IKString::IKString(v8, v9);
      v8[2] = v9[2];
      v8[3] = v9[3];
      v8 += 6;
      v9 += 6;
      --v6;
    }

    while (v6);
  }

  return a1;
}

void *FIK::IKArray<FIK::RigBoneBase>::MemoryBlock::MemoryBlock(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  if (a2)
  {
    v5 = 96 * a2;
    v6 = (*(*a3 + 16))(a3, 96 * a2, 16);
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

void *std::transform[abi:nn200100]<FIK::IKArrayIterator<FIK::MoCapBone const>,std::back_insert_iterator<FIK::IKArray<FIK::ImportBone>>,FIK::IKArray<FIK::ImportBone> FIK::IKRigUtils::generateImportBonesFromRig<FIK::MoCapRig,void>(FIK::MoCapRig const&)::{lambda(FIK::RigBoneBase const&)#1}>(_DWORD *a1, _DWORD *a2, void *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      IKString::IKString(v16, (v5 + 2));
      IKString::IKString(&v13, (v5 + 8));
      FIK::ImportBone::ImportBone(v8, v16, &v13, v5 + 16);
      if (v14)
      {
        (*(*v15 + 24))(v15, v13, 0, 8);
        v13 = 0;
        v14 = 0;
      }

      if (v16[1])
      {
        (*(*v17 + 24))(v17, v16[0], 0, 8);
      }

      v6 = FIK::IKArray<FIK::ImportBone>::push_back<FIK::ImportBone,void>(a3, v8);
      if (v11)
      {
        (*(*v12 + 24))(v12, v10, 0, 8, v6);
        v10 = 0;
        v11 = 0;
      }

      if (v8[1])
      {
        (*(*v9 + 24))(v9, v8[0], 0, 8, v6);
      }

      v5 += 136;
    }

    while (v5 != a2);
  }

  return a3;
}

uint64_t FIK::ImportBone::ImportBone(uint64_t a1, uint64_t *a2, uint64_t *a3, _DWORD *a4)
{
  v7 = IKString::IKString(a1, a2, a2[2]);
  IKString::IKString(v7 + 3, a3, a3[2]);
  *(a1 + 48) = xmmword_245A01E80;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0x200000002;
  *(a1 + 96) = 0;
  *(a1 + 100) = 0;
  *(a1 + 108) = 0;
  *(a1 + 112) = xmmword_245A03C74;
  *(a1 + 128) = unk_245A03C84;
  FIK::ImportBone::setRestTransform(a1, a4);
  return a1;
}

__n128 FIK::IKArray<FIK::ImportBone>::push_back<FIK::ImportBone,void>(void *a1, uint64_t a2)
{
  FIK::IKArray<FIK::ImportBone>::reserve(a1, *a1 + 1);
  v4 = a1[2] + 144 * *a1;
  IKString::IKString(v4, a2, *(a2 + 16));
  IKString::IKString((v4 + 24), (a2 + 24), *(a2 + 40));
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

FIK **ikinema::AlgorithmHandle::operator=(FIK **a1, FIK **a2)
{
  v3 = *a2;
  *a2 = 0;
  v4 = *a1;
  *a1 = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
    FIK::FIKFree(v4, v5);
  }

  return a1;
}

uint64_t FIK::FootPlacement::SetupTaskParentIndices(uint64_t this)
{
  v1 = *(this + 56);
  if (v1)
  {
    v2 = this;
    v3 = *(this + 72);
    v4 = 576 * v1;
    do
    {
      this = FIK::IKRigUtils::GetParentTaskIndexByBoneIndex<FIK::GameRig>(*(v3 + 96), v2 + 192);
      *(v3 + 564) = this;
      v3 += 576;
      v4 -= 576;
    }

    while (v4);
  }

  return this;
}

uint64_t FIK::FootPlacement::AddTaskToSolver(uint64_t a1, uint64_t a2)
{
  v58 = *MEMORY[0x277D85DE8];
  v20 = &unk_28589BD98;
  v21 = *(a2 + 8);
  IKString::IKString(&v22, (a2 + 24), *(a2 + 40));
  IKString::IKString(&v25, (a2 + 48), *(a2 + 64));
  IKString::IKString(&v28, (a2 + 72), *(a2 + 88));
  v31 = *(a2 + 96);
  v32 = *(a2 + 112);
  v4 = *(a2 + 144);
  v33 = *(a2 + 128);
  v34 = v4;
  v5 = *(a2 + 176);
  v35 = *(a2 + 160);
  v36 = v5;
  v6 = *(a2 + 208);
  v37 = *(a2 + 192);
  v38 = v6;
  v7 = *(a2 + 240);
  v39 = *(a2 + 224);
  v40 = v7;
  v8 = *(a2 + 272);
  v41 = *(a2 + 256);
  v42 = v8;
  v20 = &unk_28589C2E8;
  v43 = *(a2 + 288);
  v9 = *(a2 + 320);
  v44 = *(a2 + 304);
  v45 = v9;
  v10 = *(a2 + 352);
  v46 = *(a2 + 336);
  v47 = v10;
  v11 = *(a2 + 384);
  v48 = *(a2 + 368);
  v49 = v11;
  *(v52 + 14) = *(a2 + 446);
  v13 = *(a2 + 416);
  v12 = *(a2 + 432);
  v50 = *(a2 + 400);
  v51 = v13;
  v14 = *(a2 + 464);
  v15 = *(a2 + 480);
  v52[0] = v12;
  v52[2] = v14;
  v52[3] = v15;
  v53 = *(a2 + 496);
  v16 = *(a2 + 528);
  v54 = *(a2 + 512);
  v55 = v16;
  v56 = *(a2 + 544);
  v57 = *(a2 + 560);
  v17 = FIK::GenericSolver::AddTaskToSolver(a1, &v20);
  if (v29)
  {
    (*(*v30 + 24))(v30, v28, 0, 8);
    v28 = 0;
    v29 = 0;
  }

  if (v26)
  {
    (*(*v27 + 24))(v27, v25, 0, 8);
    v25 = 0;
    v26 = 0;
  }

  v20 = &unk_28589BD98;
  if (v23)
  {
    (*(*v24 + 24))(v24, v22, 0, 8);
    v22 = 0;
    v23 = 0;
  }

  if (v17 != -1)
  {
    FIK::FootPlacement::SetupTaskParentIndices(a1);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

BOOL FIK::FootPlacement::RemoveTaskFromSolver(FIK *a1, char **a2)
{
  v9 = 0;
  v10 = 0;
  v11 = FIK::defaultAllocator(a1);
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    v6 = *a2;
  }

  else
  {
    v6 = &unk_245A04BAE;
  }

  IKString::assign(&v9, v6, v4);
  v7 = FIK::GenericSolver::RemoveTaskFromSolver(a1, &v9);
  if (v10)
  {
    (*(*v11 + 3))(v11, v9, 0, 8);
    v9 = 0;
    v10 = 0;
  }

  if (v7)
  {
    FIK::FootPlacement::SetupTaskParentIndices(a1);
  }

  return v7;
}

uint64_t FIK::FootPlacement::Solve(float32x4_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v4[0] = a2[2];
  v4[1] = v2;
  return FIK::FootPlacement::Solve(a1, v4);
}

{
  v6 = 0;
  FIK::GenericSolver::ConfigureSegments(a1, a2);
  FIK::FootPlacement::ProcessFootPlacementTasks(a1, a2, v4);
  FIK::IKSolver::solve(a1[11].i64[0], a1[16].u32[3], &v6);
  a1[16].f32[0] = FIK::IKSolver::getPGain(a1[11].i64[0]);
  FIK::GenericSolver::PopulateOutArray(a1, a2);
  return v6;
}

void FIK::FootPlacement::ProcessFootPlacementTasks(float32x4_t *a1, uint64_t *a2, double a3)
{
  v20 = 0uLL;
  v4 = a1[3].i64[1];
  if (v4)
  {
    v6 = 0;
    v7 = a1[4].i64[1];
    v8 = 576 * v4;
    v9 = 0uLL;
    do
    {
      v14 = v9;
      FIK::RTGameTask::GenerateAnimTarget(v7, *a2, a2[1], &a1[12]);
      FIK::RTGameTask::ConvertTargetSpace(v7, a1->i32[2], a1 + 1, v10);
      if (v7[17].i8[4] == 1)
      {
        FIK::FootPlacement::GenerateRayTraceTarget(a1, v7, v20.f32, &v19);
        HIDWORD(a3) = v19.i32[1];
        v9 = vaddq_f32(v14, v19);
        ++v6;
      }

      else
      {
        FIK::RTGameTask::GenerateTarget(v7, a2, &a1[12]);
        v9 = v14;
      }

      v7 += 36;
      v8 -= 576;
    }

    while (v8);
  }

  else
  {
    v6 = 0;
    v9 = 0uLL;
  }

  if (a1[34].i32[2])
  {
    v15 = v9;
    FIK::FootPlacement::GenerateFootStabilization(a1, &v19);
    HIDWORD(a3) = v19.i32[1];
    v9 = vaddq_f32(v15, v19);
  }

  if (a1[36].i32[0])
  {
    v16 = v9;
    FIK::FootPlacement::GenerateAimingBehaviour(a1);
    v9 = v16;
  }

  if (v6 >= 1)
  {
    *&a3 = v6;
    v9 = vdivq_f32(v9, vdupq_lane_s32(*&a3, 0));
  }

  v18 = v9;
  FIK::FootPlacement::AdjustAvrOffset(a1, &v18, &v20, a1[13].i32[3], &v19);
  v11 = a1[3].i64[1];
  if (v11)
  {
    v17 = v19;
    v12 = a1[4].i64[1];
    v13 = &v12[36 * v11];
    do
    {
      FIK::RTGameTask::DoAlphaBlend(v12);
      if ((v12[17].i8[4] & 1) == 0 && v12[28].i8[4] == 1)
      {
        v12[21] = vaddq_f32(v17, v12[21]);
      }

      FIK::RTGameTask::BlendTaskTarget(v12, a1[3].f32[0]);
      FIK::RTGameTask::SetSolverTaskTarget(v12);
      v12 += 36;
    }

    while (v12 != v13);
  }

  if (a1[17].i32[3] == 1)
  {
    if (a1->i32[2] == 1)
    {
      FIK::RTBalanceTask::ConvertTargetWorldToSolver(a1 + 6, a1 + 1);
    }

    FIK::RTBalanceTask::SetSolverTaskTarget(&a1[6]);
  }
}

uint64_t FIK::IKRigUtils::GetParentTaskIndexByBoneIndex<FIK::GameRig>(unsigned int a1, uint64_t a2)
{
  result = 0xFFFFFFFFLL;
  if ((a1 & 0x80000000) == 0 && *(a2 + 208) > a1)
  {
    v4 = *(*(a2 + 224) + (a1 << 8) + 4);
    if (v4 == -1)
    {
      return 0xFFFFFFFFLL;
    }

    v5 = *(a2 + 176);
    if (!v5)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      result = 0;
      v6 = (*(a2 + 192) + 48);
      while (1)
      {
        v7 = *v6;
        v6 += 60;
        if (v7 == v4)
        {
          break;
        }

        if (v5 == ++result)
        {
          return 0xFFFFFFFFLL;
        }
      }
    }
  }

  return result;
}

float32x4_t FIK::FootPlacement::GenerateRayTraceTarget@<Q0>(uint64_t a1@<X0>, float32x4_t *a2@<X1>, float *a3@<X2>, float32x4_t *a4@<X8>)
{
  a4->i64[0] = 0;
  a4->i64[1] = 0;
  v8 = a2 + 21;
  if (a2[28].i8[5])
  {
    v9 = a2 + 21;
  }

  else
  {
    v9 = a2 + 29;
  }

  v10 = v9[1];
  v19 = *v9;
  v20 = v10;
  f32 = a2[26].f32;
  if (fabsf(a2[26].f32[1]) >= 0.000000001 && (a2[17].i8[7] & 1) == 0)
  {
    FIK::FootPlacement::CalculateDeltaRotation(a1, a2, *(a1 + 220), &v20);
  }

  if (fabsf(*f32) >= 0.000000001)
  {
    FIK::FootPlacement::CalculateDeltaTranslation(a1, a2, *(a1 + 220), &v18);
    *a4 = v18;
    v17 = *a4;
    FIK::FootPlacement::ModifyTargetPosFromSettings(a1, a2, &v17, *(a1 + 220), &v18);
    v12 = v18;
    v13 = v19;
    *a4 = v18;
    v19 = vaddq_f32(v12, v13);
    UpElement = FIK::Utils::GetUpElement(a4->f32, *(a1 + 220));
    if (UpElement <= FIK::Utils::GetUpElement(a3, *(a1 + 220)))
    {
      v15 = a3;
    }

    else
    {
      v15 = a4;
    }

    *a3 = *v15;
  }

  FIK::RTGameTask::SetTarget(a2, &v19);
  if (FIK::Utils::ContainsNaN(v8))
  {
    FIK::FootPlacement::GenerateRayTraceTarget();
  }

  result = vmulq_n_f32(*a4, COERCE_FLOAT(*f32));
  *a4 = result;
  return result;
}

void FIK::FootPlacement::GenerateFootStabilization(FIK::FootPlacement *this@<X0>, float32x4_t *a2@<X8>)
{
  a2->i64[0] = 0;
  a2->i64[1] = 0;
  v3 = *(this + 7);
  if (v3)
  {
    v5 = 0;
    v6 = *(this + 9);
    v7 = 576 * v3;
    do
    {
      v8 = *(v6 + v5 + 564);
      if (v8 == -1)
      {
        goto LABEL_15;
      }

      TaskInstance = FIK::GenericSolver::GetTaskInstance(this, v8);
      if (*(v6 + v5 + 276) != 1)
      {
        goto LABEL_15;
      }

      v10 = TaskInstance;
      if (*(TaskInstance + 276) != 1)
      {
        goto LABEL_15;
      }

      v11 = v6 + v5;
      PlaneOffset = FIK::Utils::GetPlaneOffset((v6 + v5 + 400), (v6 + v5 + 384), (TaskInstance + 384));
      v13 = *(this + 55);
      if (v13 >= 3)
      {
        v14 = -PlaneOffset;
      }

      else
      {
        v14 = PlaneOffset;
      }

      v19 = vsubq_f32(*(v11 + 464), v10[29]);
      v15 = fabsf(FIK::Utils::GetUpElement(v19.f32, v13)) * *(this + 141);
      if (v14 <= v15)
      {
        FIK::FootPlacement::CalculateReverseFootAlpha(this, v10, (v11 + 336), v14, -v15);
        v10[31].f32[0] = v16;
        if (v16 != 0.0)
        {
          v17 = vnegq_f32(v19);
          FIK::FootPlacement::AdjustParentTaskFS(this, v10, (v11 + 336), &v17, &v18);
          goto LABEL_14;
        }
      }

      else if (*(this + 138) != 1)
      {
        FIK::FootPlacement::AdjustChildTaskFS((v6 + v5), v10 + 21, &v19, &v18);
LABEL_14:
        *a2 = vaddq_f32(v18, *a2);
      }

LABEL_15:
      v5 += 576;
    }

    while (v7 != v5);
  }
}

uint64_t FIK::FootPlacement::GenerateAimingBehaviour(FIK::FootPlacement *this)
{
  if (*(this + 145) == -1 || *(this + 146) == -1 || (v2 = *(this + 147), v2 == -1) || *(this + 148) == -1)
  {
    v44 = ikinemaLogObject();
    ikinemaAssertHandler(*v44, 0, "GenerateAimingBehaviour", "(AimSettings.HandleHandIndex != -1 && AimSettings.TriggerHandIndex != -1 && AimSettings.ChestTaskIndex != -1 && AimSettings.HeadTaskIndex != -1) All indices must be valid");
    v2 = *(this + 147);
  }

  TaskInstance = FIK::GenericSolver::GetTaskInstance(this, v2);
  v4 = FIK::GenericSolver::GetTaskInstance(this, *(this + 145));
  v5 = FIK::GenericSolver::GetTaskInstance(this, *(this + 146));
  if (*(this + 596) == 1)
  {
    v6 = FIK::GenericSolver::GetTaskInstance(this, *(this + 148));
    v7 = FIK::RTGameTask::SetLookAtTarget(v6, this + 38);
    if (*(this + 2) == 1)
    {
      FIK::RTGameTask::ConvertTargetSpace(v6, 1, this + 1, v7);
    }

    FIK::RTGameTask::GenerateLookAtTarget(v6);
    FIK::RTGameTask::SetRotationAlpha(v6, *(TaskInstance + 420));
  }

  v8 = vmulq_f32(*(TaskInstance + 480), xmmword_245A01F10);
  v9 = *(TaskInstance + 352);
  v10 = vnegq_f32(v8);
  v11 = vtrn2q_s32(v8, vtrn1q_s32(v8, v10));
  v12 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v8, v10, 8uLL), *v9.f32, 1), vextq_s8(v11, v11, 8uLL), v9.f32[0]);
  v13 = vrev64q_s32(v8);
  v13.i32[0] = v10.i32[1];
  v13.i32[3] = v10.i32[2];
  v14 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v8, v9, 3), v13, v9, 2), v12);
  v15 = *(v4 + 480);
  v16 = vsubq_f32(*(v4 + 464), *(TaskInstance + 464));
  v17 = vnegq_f32(v15);
  v18 = vtrn2q_s32(v15, vtrn1q_s32(v15, v17));
  v19 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v15, v17, 8uLL), *v14.f32, 1), vextq_s8(v18, v18, 8uLL), v14.f32[0]);
  v20 = vrev64q_s32(v15);
  v20.i32[0] = v17.i32[1];
  v20.i32[3] = v17.i32[2];
  v21 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v15, v14, 3), v20, v14, 2), v19);
  *(v4 + 336) = v16;
  *(v4 + 352) = v21;
  if (*(this + 624) == 1)
  {
    v23 = *(this + 40);
    v22 = *(this + 41);
    v24 = vnegq_f32(v22);
    v25 = vtrn2q_s32(v22, vtrn1q_s32(v22, v24));
    v26 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v22, v24, 8uLL), *v21.f32, 1), vextq_s8(v25, v25, 8uLL), v21.f32[0]);
    v27 = vrev64q_s32(v22);
    v27.i32[0] = v24.i32[1];
    v27.i32[3] = v24.i32[2];
    v28 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v22, v21, 3), v27, v21, 2), v26);
    v29 = vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL);
    v30 = vnegq_f32(v21);
    v31 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL), v30), v23, v29);
    v32 = vextq_s8(vuzp1q_s32(v31, v31), v31, 0xCuLL);
    v33 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v32, v32), v32, 0xCuLL), v30), v32, v29);
    v34 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v33, v33), v33, 0xCuLL), v32, v21, 3);
    v35.i64[0] = 0x4000000040000000;
    v35.i64[1] = 0x4000000040000000;
    v36 = vaddq_f32(v16, vmlaq_f32(v23, v35, v34));
  }

  else
  {
    v36 = v5[29];
    if (*(this + 144) == 2)
    {
      v28 = v5[30];
    }

    else
    {
      v37 = v5[30];
      v38 = vnegq_f32(v37);
      v39 = vtrn2q_s32(v37, vtrn1q_s32(v37, v38));
      v40 = vmlaq_f32(vmulq_lane_f32(vextq_s8(v37, v38, 8uLL), *v14.f32, 1), vextq_s8(v39, v39, 8uLL), vdupq_lane_s32(*v14.f32, 0));
      v41 = vrev64q_s32(v37);
      v41.i32[0] = v38.i32[1];
      v36 = vaddq_f32(*(TaskInstance + 464), vsubq_f32(v36, *(TaskInstance + 464)));
      v41.i32[3] = v38.i32[2];
      v28 = vaddq_f32(vmlaq_f32(vmulq_laneq_f32(v37, v14, 3), v41, vdupq_laneq_s32(v14, 2)), v40);
    }
  }

  v5[21] = v36;
  v5[22] = v28;
  FIK::RTGameTask::SetAlpha(v4, *(TaskInstance + 420));
  v42 = *(TaskInstance + 420);

  return FIK::RTGameTask::SetAlpha(v5, v42);
}

__n128 FIK::FootPlacement::AdjustAvrOffset@<Q0>(uint64_t a1@<X0>, float32x4_t *a2@<X1>, float32x4_t *a3@<X2>, int a4@<W3>, float32x4_t *a5@<X8>)
{
  v8 = *a3;
  v9 = *a2;
  v10 = *(a1 + 672);
  if (fabsf(v10) >= 0.000000001)
  {
    v15 = *a2;
    v16 = *a3;
    FIK::Utils::AddToUpElement(a2->f32, a4, v10);
    v9 = v15;
    v8 = v16;
  }

  v11 = vmulq_f32(v8, v8);
  v12 = vmulq_f32(v9, v9);
  *v11.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v12, v12, 8uLL), *&vextq_s8(v11, v11, 8uLL)), vadd_f32(vzip1_s32(*v12.i8, *v11.i8), vzip2_s32(*v12.i8, *v11.i8))));
  v13 = 544;
  if (((vabds_f32(*&v11.i32[1], *v11.i32 / *&v11.i32[1]) < 0.05) ^ *(a1 + 677)))
  {
    v13 = 548;
  }

  *a2 = vmulq_n_f32(*a2, *(a1 + v13));
  result = *a2;
  *a5 = *a2;
  return result;
}

float32x4_t FIK::FootPlacement::AdjustChildTaskFS@<Q0>(float32x4_t *a1@<X1>, float32x4_t *a2@<X2>, float32x4_t *a3@<X3>, float32x4_t *a4@<X8>)
{
  v4 = vmulq_f32(a1[30], xmmword_245A01F10);
  v5 = a1[22];
  v6 = vnegq_f32(v5);
  v7 = vtrn2q_s32(v5, vtrn1q_s32(v5, v6));
  v8 = vrev64q_s32(v5);
  v8.i32[0] = v6.i32[1];
  v8.i32[3] = v6.i32[2];
  v9 = vmulq_f32(vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v5, v4, 3), v8, v4, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v5, v6, 8uLL), *v4.f32, 1), vextq_s8(v7, v7, 8uLL), v4.f32[0])), xmmword_245A01F10);
  v10 = vmulq_f32(v9, v9);
  v11 = vadd_f32(*v10.i8, *&vextq_s8(v10, v10, 8uLL));
  if (vaddv_f32(v11) == 0.0)
  {
    v12 = xmmword_245A01E80;
  }

  else
  {
    v13 = vadd_f32(v11, vdup_lane_s32(v11, 1)).u32[0];
    v14 = vrsqrte_f32(v13);
    v15 = vmul_f32(v14, vrsqrts_f32(v13, vmul_f32(v14, v14)));
    v12 = vmulq_n_f32(v9, vmul_f32(v15, vrsqrts_f32(v13, vmul_f32(v15, v15))).f32[0]);
  }

  v16 = vaddq_f32(*a2, *a3);
  *a4 = vsubq_f32(v16, a1[21]);
  v17 = vnegq_f32(v12);
  v18 = vtrn2q_s32(v12, vtrn1q_s32(v12, v17));
  v19 = vrev64q_s32(v12);
  v19.i32[0] = v17.i32[1];
  v19.i32[3] = v17.i32[2];
  result = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v12, v5, 3), v19, v5, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v12, v17, 8uLL), *v5.f32, 1), vextq_s8(v18, v18, 8uLL), v5.f32[0]));
  a1[21] = v16;
  a1[22] = result;
  return result;
}

uint64_t FIK::FootPlacement::CalculateReverseFootAlpha(uint64_t result, uint64_t a2, __int128 *a3, float a4, float a5)
{
  if (a4 >= a5)
  {
    v16 = v8;
    v17 = v7;
    v18 = v5;
    v19 = v6;
    v9 = result;
    v10 = *(a2 + 496);
    v11 = *(result + 220);
    v12 = *a3;
    v14 = *(a2 + 336);
    v15 = v12;
    result = FIK::Utils::PointAIsHigherThanB(&v15, &v14, v11);
    v13 = *(v9 + 560);
  }

  return result;
}

uint64_t FIK::FootPlacement::AdjustParentTaskFS@<X0>(uint64_t a1@<X0>, float32x4_t *a2@<X1>, float32x4_t *a3@<X2>, float32x4_t *a4@<X3>, float32x4_t *a5@<X8>)
{
  v10 = vmulq_f32(a2[30], xmmword_245A01F10);
  v11 = a2[22];
  v12 = vnegq_f32(v11);
  v13 = vtrn2q_s32(v11, vtrn1q_s32(v11, v12));
  v14 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v11, v12, 8uLL), *v10.f32, 1), vextq_s8(v13, v13, 8uLL), v10.f32[0]);
  v15 = vrev64q_s32(v11);
  v15.i32[0] = v12.i32[1];
  v15.i32[3] = v12.i32[2];
  v65 = vmulq_f32(vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v11, v10, 3), v15, v10, 2), v14), xmmword_245A01F10);
  v16 = vnegq_f32(v65);
  v17 = vtrn2q_s32(v65, vtrn1q_s32(v65, v16));
  v18 = vrev64q_s32(v65);
  v18.i32[0] = v16.i32[1];
  v18.i32[3] = v16.i32[2];
  v19 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v65, v11, 3), v18, v11, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v65, v16, 8uLL), *v11.f32, 1), vextq_s8(v17, v17, 8uLL), v11.f32[0]));
  v20 = a2[31].f32[0];
  v21 = vmulq_f32(v11, v19);
  v22 = vextq_s8(v21, v21, 8uLL);
  *v21.f32 = vadd_f32(*v21.f32, *v22.f32);
  v21.f32[0] = vaddv_f32(*v21.f32);
  v22.i64[0] = 0;
  v23 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v21, v22)), 0), vnegq_f32(v19), v19);
  v24 = 1.0;
  v25 = 1.0 - v20;
  v26 = vsubq_f32(v11, v23);
  v27 = vmulq_f32(v26, v26);
  v62 = v23;
  v63 = v11;
  v28 = vaddq_f32(v11, v23);
  v29 = vmulq_f32(v28, v28);
  v30 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v27.i8, *&vextq_s8(v27, v27, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v29.i8, *&vextq_s8(v29, v29, 8uLL)))));
  v31 = v30 + v30;
  v32 = (v30 + v30) == 0.0;
  v33 = 1.0;
  if (!v32)
  {
    v33 = sinf(v31) / v31;
  }

  v34 = v33;
  v35 = vrecpe_f32(LODWORD(v33));
  v36 = vmul_f32(v35, vrecps_f32(LODWORD(v34), v35));
  LODWORD(v37) = vmul_f32(v36, vrecps_f32(LODWORD(v34), v36)).u32[0];
  if ((v25 * v31) != 0.0)
  {
    v60 = v37;
    v36.f32[0] = sinf(v25 * v31);
    v37 = v60;
    v24 = v36.f32[0] / (v25 * v31);
  }

  v36.f32[0] = v25 * (v37 * v24);
  v38 = vdupq_lane_s32(v36, 0);
  v39 = v20 * v31;
  v40 = 1.0;
  if (v39 != 0.0)
  {
    v59 = v38;
    v61 = v37;
    v41 = sinf(v39);
    v38 = v59;
    v37 = v61;
    v40 = v41 / v39;
  }

  v42 = vmlaq_f32(vmulq_n_f32(v62, v20 * (v37 * v40)), v63, v38);
  v43 = vmulq_f32(v42, v42);
  v44 = vadd_f32(*v43.i8, *&vextq_s8(v43, v43, 8uLL));
  v45 = xmmword_245A01E80;
  if (vaddv_f32(v44) != 0.0)
  {
    v46 = vadd_f32(v44, vdup_lane_s32(v44, 1)).u32[0];
    v47 = vrsqrte_f32(v46);
    v48 = vmul_f32(v47, vrsqrts_f32(v46, vmul_f32(v47, v47)));
    v45 = vmulq_n_f32(v42, vmul_f32(v48, vrsqrts_f32(v46, vmul_f32(v48, v48))).f32[0]);
  }

  v64 = v45;
  FIK::Utils::SetUpElement(v65.f32, *(a1 + 220), 0.0);
  v49 = vmulq_f32(v65, v65);
  v50 = vadd_f32(*v49.i8, *&vextq_s8(v49, v49, 8uLL));
  v51 = xmmword_245A01E80;
  if (vaddv_f32(v50) != 0.0)
  {
    v52 = vadd_f32(v50, vdup_lane_s32(v50, 1)).u32[0];
    v53 = vrsqrte_f32(v52);
    v54 = vmul_f32(v53, vrsqrts_f32(v52, vmul_f32(v53, v53)));
    v51 = vmulq_n_f32(v65, vmul_f32(v54, vrsqrts_f32(v52, vmul_f32(v54, v54))).f32[0]);
  }

  v65 = v51;
  v55 = *(a1 + 556) * a2[31].f32[0];
  if (v55 <= 0.0)
  {
    v57 = a2[21];
    v56 = v57;
  }

  else
  {
    v56 = vaddq_f32(*a3, *a4);
    v57 = a2[21];
    if (v55 < 1.0)
    {
      v56 = vaddq_f32(v57, vmulq_n_f32(vsubq_f32(v56, v57), v55));
    }
  }

  *a5 = vsubq_f32(v56, v57);
  a2[21] = v56;
  a2[22] = v64;
  result = FIK::Utils::ContainsNaN(a2 + 21);
  if (result)
  {
    return FIK::FootPlacement::AdjustParentTaskFS();
  }

  return result;
}

uint64_t FIK::FootPlacement::CalculateDeltaRotation@<X0>(uint64_t result@<X0>, float32x4_t *a2@<X1>, int a3@<W2>, int *a4@<X8>)
{
  if (*(result + 676) == 1)
  {
    *a4 = a2[30];
  }

  else
  {
    v122 = 0uLL;
    FIK::Utils::SetUpElement(v122.f32, a3, 1.0);
    v6 = vmulq_f32(v122, v122);
    v7 = a2[25];
    v8 = vmulq_f32(v7, v7);
    v9 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v8, v8, 8uLL), *&vextq_s8(v6, v6, 8uLL)), vadd_f32(vzip1_s32(*v8.i8, *v6.i8), vzip2_s32(*v8.i8, *v6.i8))));
    v10 = 1.0 / v9.f32[1];
    v11 = vmvn_s8(vceqz_f32(v9));
    v12 = 0.0;
    if ((v11.i8[4] & 1) == 0)
    {
      v10 = 0.0;
    }

    v13 = vmulq_n_f32(v122, v10);
    v14 = 1.0 / v9.f32[0];
    if ((v11.i8[0] & 1) == 0)
    {
      v14 = 0.0;
    }

    v15 = vmulq_n_f32(v7, v14);
    v16 = vmulq_f32(v13, v15);
    v17 = v16.f32[2] + vaddv_f32(*v16.f32);
    v18 = xmmword_245A01E80;
    if (v17 < 1.0)
    {
      v19 = v17;
      if (v17 >= -0.999999)
      {
        *&v19 = sqrtf((v17 + 1.0) + (v17 + 1.0));
        v27 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v15, v15), v15, 0xCuLL), vnegq_f32(v13)), v15, vextq_s8(vuzp1q_s32(v13, v13), v13, 0xCuLL));
        v28 = vdivq_f32(vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL), vdupq_lane_s32(*&v19, 0));
        v28.f32[3] = *&v19 * 0.5;
        v29 = vmulq_f32(v28, v28);
        v30 = vadd_f32(*v29.i8, *&vextq_s8(v29, v29, 8uLL));
        v18 = xmmword_245A01E80;
        if (vaddv_f32(v30) != 0.0)
        {
          v31 = vadd_f32(v30, vdup_lane_s32(v30, 1)).u32[0];
          v32 = vrsqrte_f32(v31);
          v33 = vmul_f32(v32, vrsqrts_f32(v31, vmul_f32(v32, v32)));
          v18 = vmulq_n_f32(v28, vmul_f32(v33, vrsqrts_f32(v31, vmul_f32(v33, v33))).f32[0]);
        }
      }

      else
      {
        v20 = vextq_s8(vuzp1q_s32(v13, v13), v13, 0xCuLL);
        v21 = vmlaq_f32(vmulq_f32(v20, xmmword_245A01E90), xmmword_245A01EA0, v13);
        v22 = vmulq_f32(v21, v21);
        v23 = sqrtf(v22.f32[1] + (v22.f32[2] + v22.f32[0]));
        if (fabsf(v23) >= 0.000000001)
        {
          v25 = vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL);
          v25.i32[3] = 0;
        }

        else
        {
          v24 = vmlaq_f32(vmulq_f32(v20, xmmword_245A01EB0), xmmword_245A01EC0, v13);
          v25 = vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL);
          v26 = vmulq_f32(v24, v24);
          v23 = sqrtf(v26.f32[1] + (v26.f32[2] + v26.f32[0]));
        }

        v34 = 1.0 / v23;
        if (v23 == 0.0)
        {
          v34 = 0.0;
        }

        v18 = vmulq_n_f32(v25, v34);
        v18.i32[3] = 0;
      }
    }

    v35 = vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL);
    v36 = vextq_s8(vuzp1q_s32(v122, v122), v122, 0xCuLL);
    v37 = vnegq_f32(v18);
    v38 = vmlaq_f32(vmulq_f32(v36, v37), v122, v35);
    v39 = vextq_s8(vuzp1q_s32(v38, v38), v38, 0xCuLL);
    v40 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v39, v39), v39, 0xCuLL), v37), v39, v35);
    v41 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v40, v40), v40, 0xCuLL), v39, v18, 3);
    v42.i64[0] = 0x4000000040000000;
    v42.i64[1] = 0x4000000040000000;
    v43 = vmlaq_f32(v122, v42, v41);
    v121 = a2[30];
    v44 = vmulq_f32(v121, xmmword_245A01F10);
    v45 = vextq_s8(vuzp1q_s32(v44, v44), v44, 0xCuLL);
    v46 = vnegq_f32(v44);
    v47 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v43, v43), v43, 0xCuLL), v46), v43, v45);
    v48 = vextq_s8(vuzp1q_s32(v47, v47), v47, 0xCuLL);
    v49 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v48, v48), v48, 0xCuLL), v46), v48, v45);
    v50 = vmlaq_f32(v43, v42, vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v49, v49), v49, 0xCuLL), v48, v44, 3));
    v51 = v50;
    v51.i32[3] = 0;
    v52 = vmlaq_f32(vmulq_f32(v36, v46), v122, v45);
    v53 = vextq_s8(vuzp1q_s32(v52, v52), v52, 0xCuLL);
    v54 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v53, v53), v53, 0xCuLL), v46), v53, v45);
    v55 = vmlaq_f32(v122, v42, vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v54, v54), v54, 0xCuLL), v53, v44, 3));
    v122 = v55;
    v56 = vmulq_f32(v55, v55);
    v57 = vmulq_f32(v51, v51);
    v58 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v57, v57, 8uLL), *&vextq_s8(v56, v56, 8uLL)), vadd_f32(vzip1_s32(*v57.i8, *v56.i8), vzip2_s32(*v57.i8, *v56.i8))));
    v59 = 1.0 / v58.f32[1];
    v60 = vmvn_s8(vceqz_f32(v58));
    if ((v60.i8[4] & 1) == 0)
    {
      v59 = 0.0;
    }

    v61 = vmulq_n_f32(v55, v59);
    v62 = 1.0 / v58.f32[0];
    if (v60.i8[0])
    {
      v12 = v62;
    }

    v63 = vmulq_n_f32(v50, v12);
    v64 = vmulq_f32(v61, v63);
    v65 = v64.f32[2] + vaddv_f32(*v64.f32);
    v66 = xmmword_245A01E80;
    if (v65 < 1.0)
    {
      v67 = v65;
      if (v65 >= -0.999999)
      {
        *&v67 = sqrtf((v65 + 1.0) + (v65 + 1.0));
        v75 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v63, v63), v63, 0xCuLL), vnegq_f32(v61)), v63, vextq_s8(vuzp1q_s32(v61, v61), v61, 0xCuLL));
        v76 = vdivq_f32(vextq_s8(vuzp1q_s32(v75, v75), v75, 0xCuLL), vdupq_lane_s32(*&v67, 0));
        v76.f32[3] = *&v67 * 0.5;
        v77 = vmulq_f32(v76, v76);
        v78 = vadd_f32(*v77.i8, *&vextq_s8(v77, v77, 8uLL));
        v66 = xmmword_245A01E80;
        if (vaddv_f32(v78) != 0.0)
        {
          v79 = vadd_f32(v78, vdup_lane_s32(v78, 1)).u32[0];
          v80 = vrsqrte_f32(v79);
          v81 = vmul_f32(v80, vrsqrts_f32(v79, vmul_f32(v80, v80)));
          v66 = vmulq_n_f32(v76, vmul_f32(v81, vrsqrts_f32(v79, vmul_f32(v81, v81))).f32[0]);
        }
      }

      else
      {
        v68 = vextq_s8(vuzp1q_s32(v61, v61), v61, 0xCuLL);
        v69 = vmlaq_f32(vmulq_f32(v68, xmmword_245A01E90), xmmword_245A01EA0, v61);
        v70 = vmulq_f32(v69, v69);
        v71 = sqrtf(v70.f32[1] + (v70.f32[2] + v70.f32[0]));
        if (fabsf(v71) >= 0.000000001)
        {
          v73 = vextq_s8(vuzp1q_s32(v69, v69), v69, 0xCuLL);
          v73.i32[3] = 0;
        }

        else
        {
          v72 = vmlaq_f32(vmulq_f32(v68, xmmword_245A01EB0), xmmword_245A01EC0, v61);
          v73 = vextq_s8(vuzp1q_s32(v72, v72), v72, 0xCuLL);
          v74 = vmulq_f32(v72, v72);
          v71 = sqrtf(v74.f32[1] + (v74.f32[2] + v74.f32[0]));
        }

        v82 = 1.0 / v71;
        if (v71 == 0.0)
        {
          v82 = 0.0;
        }

        v66 = vmulq_n_f32(v73, v82);
        v66.i32[3] = 0;
      }
    }

    v83 = a2[26].f32[1];
    v84 = vmulq_f32(v66, xmmword_245A01E80);
    v85 = vextq_s8(v84, v84, 8uLL);
    *v84.f32 = vadd_f32(*v84.f32, *v85.f32);
    v84.f32[0] = vaddv_f32(*v84.f32);
    v85.i64[0] = 0;
    v86 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v84, v85)), 0), vnegq_f32(v66), v66);
    v87 = 1.0;
    v88 = 1.0 - v83;
    v89 = vsubq_f32(xmmword_245A01E80, v86);
    v90 = vmulq_f32(v89, v89);
    v120 = v86;
    v91 = vaddq_f32(v86, xmmword_245A01E80);
    v92 = vmulq_f32(v91, v91);
    v93 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v90.i8, *&vextq_s8(v90, v90, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v92.i8, *&vextq_s8(v92, v92, 8uLL)))));
    v94 = v93 + v93;
    v95 = (v93 + v93) == 0.0;
    v96 = 1.0;
    if (!v95)
    {
      v96 = sinf(v94) / v94;
    }

    v97 = v96;
    v98 = vrecpe_f32(LODWORD(v96));
    v99 = vmul_f32(v98, vrecps_f32(LODWORD(v97), v98));
    LODWORD(v100) = vmul_f32(v99, vrecps_f32(LODWORD(v97), v99)).u32[0];
    if ((v88 * v94) != 0.0)
    {
      v118 = v100;
      v99.f32[0] = sinf(v88 * v94);
      v100 = v118;
      v87 = v99.f32[0] / (v88 * v94);
    }

    v99.f32[0] = v88 * (v100 * v87);
    v101 = vdupq_lane_s32(v99, 0);
    v102 = v83 * v94;
    v103 = 1.0;
    if (v102 != 0.0)
    {
      v117 = v101;
      v119 = v100;
      v104 = sinf(v102);
      v101 = v117;
      v100 = v119;
      v103 = v104 / v102;
    }

    v105 = vmulq_n_f32(v120, v83 * (v100 * v103));
    v106 = xmmword_245A01E80;
    v107 = vmlaq_f32(v105, xmmword_245A01E80, v101);
    v108 = vmulq_f32(v107, v107);
    v109 = vadd_f32(*v108.i8, *&vextq_s8(v108, v108, 8uLL));
    if (vaddv_f32(v109) != 0.0)
    {
      v110 = vadd_f32(v109, vdup_lane_s32(v109, 1)).u32[0];
      v111 = vrsqrte_f32(v110);
      v112 = vmul_f32(v111, vrsqrts_f32(v110, vmul_f32(v111, v111)));
      v106 = vmulq_n_f32(v107, vmul_f32(v112, vrsqrts_f32(v110, vmul_f32(v112, v112))).f32[0]);
    }

    v113 = vnegq_f32(v106);
    v114 = vtrn2q_s32(v106, vtrn1q_s32(v106, v113));
    v115 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v106, v113, 8uLL), *v121.f32, 1), vextq_s8(v114, v114, 8uLL), v121.f32[0]);
    v116 = vrev64q_s32(v106);
    v116.i32[0] = v113.i32[1];
    v116.i32[3] = v113.i32[2];
    *a4 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v106, v121, 3), v116, v121, 2), v115);
    result = FIK::Utils::ContainsNaN(a4);
    if (result)
    {
      return FIK::FootPlacement::CalculateDeltaRotation();
    }
  }

  return result;
}

float32x4_t FIK::FootPlacement::CalculateDeltaTranslation@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, float32x4_t *a4@<X8>)
{
  v14 = xmmword_245A01EF0;
  FIK::Utils::SetUpElement(v14.f32, a3, 0.0);
  *a4 = *(a2 + 464);
  v9 = vmulq_f32(*a4, v14);
  *a4 = v9;
  v13 = *(a2 + 384);
  if (FIK::RTGameTask::ShouldBlendWithMaxVel(a2))
  {
    v12[0] = v13;
    v12[1] = xmmword_245A01E80;
    v11[0] = *(a2 + 544);
    v11[1] = xmmword_245A01E80;
    FIK::TargetSmoothing::smooth((a2 + 424), v12, v11, *(a1 + 220), &v10, COERCE_DOUBLE(*(a1 + 48)));
    v13 = v10;
  }

  FIK::FootPlacement::SetImpactPoint(&v13, a4->f32, a3);
  result = vsubq_f32(*a4, v9);
  *a4 = result;
  return result;
}

__n128 FIK::FootPlacement::ModifyTargetPosFromSettings@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, float32x4_t *a3@<X2>, unsigned int a4@<W3>, float32x4_t *a5@<X8>)
{
  if (*(a1 + 676) == 1)
  {
    FIK::Utils::SetUpElement(a3->f32, a4, 0.0);
  }

  if (*(a1 + 536))
  {
    v14 = *a3;
    FIK::FootPlacement::LimitLegExtension(a1, v14.f32, a4, &v15);
    *a3 = v15;
  }

  v10 = *(a2 + 284);
  if (fabsf(v10) >= 0.000000001)
  {
    v15 = 0uLL;
    FIK::Utils::SetUpElement(v15.f32, a4, v10);
    *a3 = vaddq_f32(v15, *a3);
  }

  v11 = *(a2 + 416);
  if (v11 < 1.0)
  {
    v12 = 0uLL;
    if (v11 > 0.0)
    {
      v12 = *a3;
      if (v11 < 1.0)
      {
        v12 = vaddq_f32(vmulq_n_f32(v12, v11), 0);
      }
    }

    *a3 = v12;
  }

  result = *a3;
  *a5 = *a3;
  return result;
}

float FIK::FootPlacement::SetImpactPoint(float *a1, float *a2, int a3)
{
  if (a3 <= 2)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        if (a3 != 2)
        {
          return result;
        }

LABEL_9:
        result = a1[2];
        a2[2] = result;
        return result;
      }

LABEL_11:
      result = a1[1];
      a2[1] = result;
      return result;
    }

LABEL_10:
    result = *a1;
    *a2 = *a1;
    return result;
  }

  switch(a3)
  {
    case 3:
      goto LABEL_10;
    case 4:
      goto LABEL_11;
    case 5:
      goto LABEL_9;
  }

  return result;
}

__n128 FIK::FootPlacement::LimitLegExtension@<Q0>(uint64_t a1@<X0>, float *a2@<X1>, unsigned int a3@<W2>, _OWORD *a4@<X8>)
{
  v8 = *(a1 + 540) * *(a1 + 544);
  UpElement = FIK::Utils::GetUpElement(a2, a3);
  if (FIK::Utils::PointAIsHigherThanB(a3, v8, UpElement))
  {
    v10 = *(a1 + 536);
    if (v10 == 2)
    {
      FIK::Utils::SetUpElementAbs(a2, a3, v8);
    }

    else if (v10 == 1)
    {
      FIK::Utils::SetUpElement(a2, a3, 0.0);
    }
  }

  result = *a2;
  *a4 = *a2;
  return result;
}

void FIK::FootPlacement::~FootPlacement(FIK::FootPlacement *this)
{
  FIK::GenericSolver::~GenericSolver(this);

  JUMPOUT(0x245D77F60);
}

uint64_t FIK::RTGameTask::RTGameTask(uint64_t a1, const IKString *a2)
{
  IKString::IKString(&v7, a2);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_28589BD98;
  v4 = IKString::IKString((a1 + 24), &v7, v9);
  if (v8)
  {
    v4 = (*(*v9 + 24))(v9, v7, 0, 8);
    v7 = 0;
    v8 = 0;
  }

  v5 = FIK::defaultAllocator(v4);
  FIK::GameTask::GameTask((a1 + 48), a2, v5);
  *a1 = &unk_28589C2E8;
  *(a1 + 288) = 0;
  *(a1 + 304) = 0u;
  *(a1 + 320) = xmmword_245A01E80;
  *(a1 + 336) = 0u;
  *(a1 + 352) = xmmword_245A01E80;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 412) = 0u;
  *(a1 + 428) = 1103626240;
  *(a1 + 432) = 0;
  *(a1 + 440) = 0;
  *(a1 + 444) = 0x3F00000000000000;
  *(a1 + 452) = 1;
  *(a1 + 464) = 0u;
  *(a1 + 480) = xmmword_245A01E80;
  *(a1 + 496) = 0;
  *(a1 + 512) = 0u;
  *(a1 + 528) = xmmword_245A01E80;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0xFFFFFFFF00000000;
  return a1;
}

FIK::RTGameTask *FIK::RTGameTask::RTGameTask(FIK::RTGameTask *this, const FIK::RTGameTask *a2, FIK::Allocator *a3)
{
  *this = &unk_28589BD98;
  *(this + 8) = *(a2 + 8);
  IKString::IKString((this + 24), (a2 + 24));
  FIK::GameTask::GameTask((this + 48), a2 + 48, a3);
  *this = &unk_28589C2E8;
  *(this + 288) = 0;
  *(this + 38) = 0;
  *(this + 39) = 0;
  *(this + 20) = xmmword_245A01E80;
  *(this + 21) = *(a2 + 21);
  *(this + 22) = *(a2 + 22);
  *(this + 23) = *(a2 + 23);
  *(this + 24) = *(a2 + 24);
  *(this + 25) = *(a2 + 25);
  *(this + 52) = *(a2 + 52);
  v6 = *(a2 + 424);
  *(this + 110) = *(a2 + 110);
  *(this + 424) = v6;
  *(this + 444) = *(a2 + 444);
  *(this + 226) = *(a2 + 226);
  *(this + 29) = *(a2 + 29);
  *(this + 30) = *(a2 + 30);
  *(this + 124) = *(a2 + 124);
  *(this + 32) = *(a2 + 32);
  *(this + 33) = *(a2 + 33);
  *(this + 34) = *(a2 + 34);
  *(this + 140) = *(a2 + 140);
  *(this + 141) = *(a2 + 141);
  return this;
}

uint64_t FIK::RTGameTask::RTGameTask(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_28589BD98;
  *(a1 + 8) = *(a2 + 8);
  IKString::IKString((a1 + 24), (a2 + 24), *(a2 + 40));
  FIK::GameTask::GameTask(a1 + 48, a2 + 48, a3);
  *a1 = &unk_28589C2E8;
  *(a1 + 288) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = xmmword_245A01E80;
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 368) = *(a2 + 368);
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 416) = *(a2 + 416);
  v6 = *(a2 + 424);
  *(a1 + 440) = *(a2 + 440);
  *(a1 + 424) = v6;
  *(a1 + 444) = *(a2 + 444);
  *(a1 + 452) = *(a2 + 452);
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 496) = *(a2 + 496);
  *(a1 + 512) = *(a2 + 512);
  *(a1 + 528) = *(a2 + 528);
  *(a1 + 544) = *(a2 + 544);
  *(a1 + 560) = *(a2 + 560);
  *(a1 + 564) = *(a2 + 564);
  return a1;
}

float FIK::GameTask::GameTask(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = FIK::RigTask::RigTask(a1, a2, a3);
  *(v4 + 176) = *(a2 + 176);
  *(v4 + 192) = *(a2 + 192);
  *(v4 + 208) = *(a2 + 208);
  *(v4 + 224) = *(a2 + 224);
  *(v4 + 228) = *(a2 + 228);
  *(v4 + 232) = *(a2 + 232);
  result = *(a2 + 236);
  *(v4 + 236) = result;
  return result;
}

__n128 FIK::RTGameTask::setTarget(uint64_t a1, uint64_t a2)
{
  *(a1 + 336) = *a2;
  result = *(a2 + 16);
  *(a1 + 352) = result;
  return result;
}

__n128 FIK::RTGameTask::SetTarget(uint64_t a1, uint64_t a2)
{
  *(a1 + 336) = *a2;
  result = *(a2 + 16);
  *(a1 + 352) = result;
  return result;
}

__n128 FIK::RTGameTask::setPositionTarget(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[21] = *a2;
  return result;
}

__n128 FIK::RTGameTask::SetPositionTarget(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[21] = *a2;
  return result;
}

__n128 FIK::RTGameTask::setOrientationTarget(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[22] = *a2;
  return result;
}

__n128 FIK::RTGameTask::SetRotationTarget(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[22] = *a2;
  return result;
}

__n128 FIK::RTGameTask::setOffset(uint64_t a1, uint64_t a2)
{
  *(a1 + 240) = *a2;
  result = *(a2 + 16);
  *(a1 + 256) = result;
  return result;
}

uint64_t FIK::RTGameTask::SetTargetParams(uint64_t result, _OWORD *a2, float a3, float a4)
{
  *(result + 336) = *a2;
  *(result + 352) = a2[1];
  *(result + 416) = a3;
  *(result + 420) = a4;
  return result;
}

uint64_t FIK::RTGameTask::SetAlpha(uint64_t this, float a2, float a3)
{
  *(this + 416) = a2;
  *(this + 420) = a3;
  return this;
}

__n128 FIK::RTGameTask::SetLookAtTarget(__n128 *a1, __n128 *a2)
{
  if ((a1[17].n128_u8[9] & 1) == 0)
  {
    FIK::RTGameTask::SetLookAtTarget();
  }

  result = *a2;
  a1[23] = *a2;
  return result;
}

__n128 FIK::RTGameTask::SetLookAtTargetParams(uint64_t a1, _OWORD *a2, __n128 *a3, float a4, float a5)
{
  if ((*(a1 + 281) & 1) == 0)
  {
    FIK::RTGameTask::SetLookAtTargetParams((a1 + 281));
  }

  *(a1 + 368) = *a2;
  *(a1 + 416) = a5;
  *(a1 + 420) = a4;
  result = *a3;
  *(a1 + 336) = *a3;
  return result;
}

__n128 FIK::RTGameTask::SetImpactPointAndNormal(uint64_t a1, _OWORD *a2, __n128 *a3)
{
  if ((*(a1 + 276) & 1) == 0)
  {
    FIK::RTGameTask::SetImpactPointAndNormal();
  }

  *(a1 + 384) = *a2;
  result = *a3;
  *(a1 + 400) = *a3;
  return result;
}

uint64_t FIK::RTGameTask::SetAlpha(uint64_t this, float a2)
{
  *(this + 416) = a2;
  *(this + 420) = a2;
  return this;
}

uint64_t FIK::RTGameTask::SetProperties(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4)
  {
    (*(*&v4[*(*v4 - 264)] + 144))(&v4[*(*v4 - 264)], *(a2 + 55), *(a2 + 56), *(a2 + 57));
    v5 = *(v3 + 8) + *(**(v3 + 8) - 264);
    (*(*v5 + 56))(v5, *(a2 + 64));
    v6 = *(v3 + 8) + *(**(v3 + 8) - 264);
    (*(*v6 + 80))(v6, 0, *(a2 + 80));
    v7 = *(v3 + 8) + *(**(v3 + 8) - 264);
    (*(*v7 + 80))(v7, 1, *(a2 + 84));
    v8 = *(v3 + 8) + *(**(v3 + 8) - 264);
    (*(*v8 + 80))(v8, 2, *(a2 + 88));
    v9 = *(v3 + 8) + *(**(v3 + 8) - 264);
    (*(*v9 + 104))(v9, 0, *(a2 + 112));
    v10 = *(v3 + 8) + *(**(v3 + 8) - 264);
    (*(*v10 + 104))(v10, 1, *(a2 + 116));
    v11 = *(v3 + 8) + *(**(v3 + 8) - 264);
    (*(*v11 + 104))(v11, 2, *(a2 + 120));
    v12 = *(a2 + 54);
    (*(**(v3 + 8) + 392))();
    (*(**(v3 + 8) + 280))();
    v13 = *(v3 + 8) + *(**(v3 + 8) - 264);
    result = (*(*v13 + 136))(v13, *(a2 + 52), 0);
  }

  v14 = *(v3 + 16);
  if (v14)
  {
    (*(*&v14[*(*v14 - 264)] + 144))(&v14[*(*v14 - 264)], *(a2 + 58), *(a2 + 59), *(a2 + 60));
    v15 = *(v3 + 16) + *(**(v3 + 16) - 264);
    (*(*v15 + 56))(v15, *(a2 + 68));
    v16 = *(v3 + 16) + *(**(v3 + 16) - 264);
    (*(*v16 + 80))(v16, 0, *(a2 + 96));
    v17 = *(v3 + 16) + *(**(v3 + 16) - 264);
    (*(*v17 + 80))(v17, 1, *(a2 + 100));
    v18 = *(v3 + 16) + *(**(v3 + 16) - 264);
    (*(*v18 + 80))(v18, 2, *(a2 + 104));
    v19 = *(v3 + 16) + *(**(v3 + 16) - 264);
    (*(*v19 + 104))(v19, 0, *(a2 + 128));
    v20 = *(v3 + 16) + *(**(v3 + 16) - 264);
    (*(*v20 + 104))(v20, 1, *(a2 + 132));
    v21 = *(v3 + 16) + *(**(v3 + 16) - 264);
    (*(*v21 + 104))(v21, 2, *(a2 + 136));
    v22 = *(a2 + 53);
    v23 = *(*(*(v3 + 16) + *(**(v3 + 16) - 264)) + 136);

    return v23();
  }

  return result;
}

uint64_t FIK::RTGameTask::GenerateAnimTarget(float32x4_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  FIK::IKRigUtils::GetAnimTarget<FIK::GameRig>(a1[6].u32[0], a2, a4, v7);
  v5 = v7[1];
  a1[29] = v7[0];
  a1[30] = v5;
  result = FIK::Utils::ContainsNaN(a1 + 29);
  if (result)
  {
    return FIK::RTGameTask::GenerateAnimTarget();
  }

  return result;
}

uint64_t FIK::IKRigUtils::GetAnimTarget<FIK::GameRig>@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, float32x4_t *a4@<X8>)
{
  v6 = result;
  if ((result & 0x80000000) != 0 || *(a3 + 208) <= result)
  {
    result = FIK::IKRigUtils::GetAnimTarget<FIK::GameRig>();
  }

  v8 = *(a3 + 224);
  v9 = *(v8 + (v6 << 8) + 4);
  v10 = (a2 + 32 * v6);
  v11 = v10[1];
  *a4 = *v10;
  if (v9 != -1)
  {
    v12 = *a4;
    v13.i64[0] = 0x4000000040000000;
    v13.i64[1] = 0x4000000040000000;
    do
    {
      v14 = (a2 + 32 * v9);
      v15 = v14[1];
      v16 = vnegq_f32(v11);
      v17 = vtrn2q_s32(v11, vtrn1q_s32(v11, v16));
      v18 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v11, v16, 8uLL), *v15.f32, 1), vextq_s8(v17, v17, 8uLL), v15.f32[0]);
      v19 = vrev64q_s32(v11);
      v19.i32[0] = v16.i32[1];
      v19.i32[3] = v16.i32[2];
      v11 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v11, v15, 3), v19, v15, 2), v18);
      v20 = vextq_s8(vuzp1q_s32(v15, v15), v15, 0xCuLL);
      v21 = vnegq_f32(v15);
      v22 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL), v21), v12, v20);
      v23 = vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL);
      v24 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL), v21), v23, v20);
      v12 = vaddq_f32(*v14, vmlaq_f32(v12, v13, vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL), v23, v15, 3)));
      v9 = *(v8 + (v9 << 8) + 4);
    }

    while (v9 != -1);
    *a4 = v12;
  }

  a4[1] = v11;
  return result;
}

float32x4_t FIK::RTGameTask::ConvertTargetSpace(float32x4_t *a1, int a2, float32x4_t *a3, float32x4_t result)
{
  if (a2 == 1)
  {
    if (FIK::Utils::ContainsNaN(a3))
    {
      FIK::RTGameTask::ConvertTargetSpace();
    }

    v7 = a1[21];
    v6 = a1[22];
    v8 = vnegq_f32(v6);
    v9 = vtrn2q_s32(v6, vtrn1q_s32(v6, v8));
    v10 = a3[1];
    v11 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v6, v8, 8uLL), *v10.f32, 1), vextq_s8(v9, v9, 8uLL), v10.f32[0]);
    v12 = vrev64q_s32(v6);
    v12.i32[0] = v8.i32[1];
    v12.i32[3] = v8.i32[2];
    v13 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v6, v10, 3), v12, v10, 2), v11);
    v14 = vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL);
    v15 = vnegq_f32(v10);
    v16 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL), v15), v7, v14);
    v17 = vextq_s8(vuzp1q_s32(v16, v16), v16, 0xCuLL);
    v18 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL), v15), v17, v14);
    result.i64[0] = 0x4000000040000000;
    result.i64[1] = 0x4000000040000000;
    a1[21] = vaddq_f32(*a3, vmlaq_f32(v7, result, vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL), v17, v10, 3)));
    a1[22] = v13;
    if (a1[17].i8[9] == 1)
    {
      v19 = a3[1];
      v20 = a1[23];
      v21 = vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL);
      v22 = vnegq_f32(v19);
      v23 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v20, v20), v20, 0xCuLL), v22), v20, v21);
      v24 = vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL);
      v25 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL), v22), v24, v21);
      result = vaddq_f32(*a3, vmlaq_f32(v20, result, vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL), v24, v19, 3)));
      a1[23] = result;
    }

    if (a1[17].i8[4] == 1)
    {
      v26 = a3[1];
      v27 = vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL);
      v29 = a1[24];
      v28 = a1[25];
      v30 = vnegq_f32(v26);
      v31 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL), v30), v28, v27);
      v32 = vextq_s8(vuzp1q_s32(v31, v31), v31, 0xCuLL);
      v33 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v32, v32), v32, 0xCuLL), v30), v32, v27);
      v34 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v33, v33), v33, 0xCuLL), v32, v26, 3);
      v26.i64[0] = 0x4000000040000000;
      v26.i64[1] = 0x4000000040000000;
      a1[25] = vmlaq_f32(v28, v26, v34);
      v35 = a3[1];
      v36 = vextq_s8(vuzp1q_s32(v35, v35), v35, 0xCuLL);
      v37 = vnegq_f32(v35);
      v38 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL), v37), v29, v36);
      v39 = vextq_s8(vuzp1q_s32(v38, v38), v38, 0xCuLL);
      v40 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v39, v39), v39, 0xCuLL), v37), v39, v36);
      result = vaddq_f32(*a3, vmlaq_f32(v29, v26, vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v40, v40), v40, 0xCuLL), v39, v35, 3)));
      a1[24] = result;
    }
  }

  return result;
}

uint64_t FIK::RTGameTask::GenerateTarget(uint64_t this, uint64_t *a2, uint64_t a3)
{
  if (*(this + 281) == 1)
  {
    return FIK::RTGameTask::GenerateLookAtTarget(this);
  }

  if (*(this + 102) == 1)
  {
    return FIK::RTGameTask::GeneratePoleVecTarget(this, a2, a3);
  }

  if (*(this + 278) == 1)
  {
    return FIK::RTGameTask::GenerateVRTarget(this);
  }

  return this;
}

uint64_t FIK::RTGameTask::GenerateLookAtTarget(uint64_t this)
{
  v1 = this;
  if (*(this + 420) == 0.0 && *(this + 416) == 0.0)
  {
    v2 = *(this + 480);
    *(this + 336) = *(this + 464);
    *(this + 352) = v2;
    return this;
  }

  if (*(this + 280) == 1)
  {
    v3 = *(this + 480);
    v4 = *(this + 224);
    v5 = vextq_s8(vuzp1q_s32(v3, v3), v3, 0xCuLL);
    v6 = vnegq_f32(v3);
    v7 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v4, v4), v4, 0xCuLL), v6), v4, v5);
    v8 = vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL);
    v9 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL), v6), v8, v5);
    v10 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL), v8, v3, 3);
    v8.i64[0] = 0x4000000040000000;
    v8.i64[1] = 0x4000000040000000;
    v11 = vmlaq_f32(v4, v8, v10);
    v11.i32[3] = 0;
  }

  else
  {
    v11 = *(this + 224);
    v3 = *(this + 480);
  }

  v12 = vmulq_f32(v3, xmmword_245A01F10);
  v13 = vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL);
  v14 = vnegq_f32(v12);
  v15 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL), v14), v11, v13);
  v16 = vextq_s8(vuzp1q_s32(v15, v15), v15, 0xCuLL);
  v17 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v16, v16), v16, 0xCuLL), v14), v16, v13);
  v18 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL), v16, v12, 3);
  v19.i64[0] = 0x4000000040000000;
  v19.i64[1] = 0x4000000040000000;
  v20 = vmlaq_f32(v11, v19, v18);
  v21 = 464;
  if (*(this + 288))
  {
    v21 = 304;
  }

  v22 = vsubq_f32(*(this + 368), *(this + v21));
  v23 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL), v14), v22, v13);
  v24 = vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL);
  v25 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL), v14), v24, v13);
  v26 = vmlaq_f32(v22, v19, vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL), v24, v12, 3));
  v27 = vmulq_f32(v20, v20);
  v28 = sqrtf(v27.f32[2] + vaddv_f32(*v27.f32));
  v19.i32[1] = 0;
  if (v28 == 0.0)
  {
    v29 = 0.0;
  }

  else
  {
    v29 = 1.0 / v28;
  }

  v30 = vmulq_n_f32(v20, v29);
  v31 = vmulq_f32(v26, v26);
  v32 = sqrtf(v31.f32[2] + vaddv_f32(*v31.f32));
  if (v32 == 0.0)
  {
    v33 = 0.0;
  }

  else
  {
    v33 = 1.0 / v32;
  }

  v34 = vmulq_n_f32(v26, v33);
  v35 = vmulq_f32(v30, v34);
  v19.f32[0] = v35.f32[2] + vaddv_f32(*v35.f32);
  v36 = xmmword_245A01E80;
  if (v19.f32[0] < 1.0)
  {
    if (v19.f32[0] >= -0.999999)
    {
      v19.f32[0] = sqrtf((v19.f32[0] + 1.0) + (v19.f32[0] + 1.0));
      v44 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL), vnegq_f32(v30)), v34, vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL));
      v45 = vdivq_f32(vextq_s8(vuzp1q_s32(v44, v44), v44, 0xCuLL), vdupq_lane_s32(*v19.f32, 0));
      v45.f32[3] = v19.f32[0] * 0.5;
      v46 = vmulq_f32(v45, v45);
      v47 = vadd_f32(*v46.i8, *&vextq_s8(v46, v46, 8uLL));
      if (vaddv_f32(v47) != 0.0)
      {
        v48 = vadd_f32(v47, vdup_lane_s32(v47, 1)).u32[0];
        v49 = vrsqrte_f32(v48);
        v50 = vmul_f32(v49, vrsqrts_f32(v48, vmul_f32(v49, v49)));
        v36 = vmulq_n_f32(v45, vmul_f32(v50, vrsqrts_f32(v48, vmul_f32(v50, v50))).f32[0]);
      }
    }

    else
    {
      v37 = vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL);
      v38 = vmlaq_f32(vmulq_f32(v37, xmmword_245A01E90), xmmword_245A01EA0, v30);
      v39 = vmulq_f32(v38, v38);
      v40 = sqrtf(v39.f32[1] + (v39.f32[2] + v39.f32[0]));
      if (fabsf(v40) >= 0.000000001)
      {
        v42 = vextq_s8(vuzp1q_s32(v38, v38), v38, 0xCuLL);
        v42.i32[3] = 0;
      }

      else
      {
        v41 = vmlaq_f32(vmulq_f32(v37, xmmword_245A01EB0), xmmword_245A01EC0, v30);
        v42 = vextq_s8(vuzp1q_s32(v41, v41), v41, 0xCuLL);
        v43 = vmulq_f32(v41, v41);
        v40 = sqrtf(v43.f32[1] + (v43.f32[2] + v43.f32[0]));
      }

      v51 = 1.0 / v40;
      if (v40 == 0.0)
      {
        v51 = 0.0;
      }

      v36 = vmulq_n_f32(v42, v51);
      v36.i32[3] = 0;
    }
  }

  v52 = vnegq_f32(v36);
  v53 = vtrn2q_s32(v36, vtrn1q_s32(v36, v52));
  v54 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v36, v52, 8uLL), *v3.f32, 1), vextq_s8(v53, v53, 8uLL), v3.f32[0]);
  v55 = vrev64q_s32(v36);
  v55.i32[0] = v52.i32[1];
  v55.i32[3] = v52.i32[2];
  v65 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v36, v3, 3), v55, v3, 2), v54);
  *(this + 352) = v65;
  this = FIK::Utils::ContainsNaN(&v65);
  if (this)
  {
    this = FIK::RTGameTask::GenerateLookAtTarget();
  }

  if (*(v1 + 444) == 1)
  {
    v56 = *(v1 + 368);
    v57 = vmulq_f32(v56, v56);
    v57.f32[0] = sqrtf(v57.f32[2] + vaddv_f32(*v57.f32));
    v58 = 1.0 / v57.f32[0];
    v59 = v57.f32[0] == 0.0;
    v60 = 0.0;
    if (v59)
    {
      v58 = 0.0;
    }

    v61 = vmulq_f32(*(v1 + 224), vmulq_n_f32(v56, v58));
    v62 = v61.f32[2] + vaddv_f32(*v61.f32);
    v63 = *(v1 + 448);
    if (v62 >= 0.0)
    {
      if (v63 <= 0.0)
      {
        v60 = *(v1 + 420);
        goto LABEL_40;
      }

      v60 = *(v1 + 560);
      if (v63 >= 1.0)
      {
LABEL_40:
        *(v1 + 560) = v60;
        return this;
      }

      v64 = *(v1 + 420);
      v60 = v60 - v64;
    }

    else
    {
      if (v63 <= 0.0)
      {
        goto LABEL_40;
      }

      v60 = *(v1 + 560);
      if (v63 >= 1.0)
      {
        goto LABEL_40;
      }

      v64 = 0.0;
    }

    v60 = v64 + (v60 * v63);
    goto LABEL_40;
  }

  return this;
}

uint64_t FIK::RTGameTask::GeneratePoleVecTarget(uint64_t result, uint64_t *a2, uint64_t a3)
{
  if (fabsf(*(result + 416)) < 0.000000001)
  {
    v3 = result;
    v4 = *(result + 192);
    v5 = vmulq_f32(v4, v4);
    if (fabsf(sqrtf(v5.f32[2] + vaddv_f32(*v5.f32))) >= 0.000000001)
    {
      v14 = *(result + 480);
      v15 = vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL);
      v16 = vnegq_f32(v14);
      v17 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v4, v4), v4, 0xCuLL), v16), v4, v15);
      v18 = vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL);
      v19 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL), v16), v18, v15);
      v20 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL), v18, v14, 3);
      v14.i64[0] = 0x4000000040000000;
      v14.i64[1] = 0x4000000040000000;
      *(result + 336) = vaddq_f32(*(result + 464), vmlaq_f32(v4, v14, v20));
      *(result + 352) = xmmword_245A01E80;
    }

    else
    {
      v8 = *(result + 96);
      v9 = *(a3 + 224);
      v10 = *(a3 + 208);
      if (v10)
      {
        v11 = (v9 + 4);
        v12 = v10 << 8;
        while (*v11 != v8)
        {
          v11 += 64;
          v12 -= 256;
          if (!v12)
          {
            goto LABEL_7;
          }
        }

        v13 = *(v11 - 1);
      }

      else
      {
LABEL_7:
        v13 = 0xFFFFFFFFLL;
      }

      v21 = 0xFFFFFFFFLL;
      if ((v8 & 0x80000000) == 0 && v8 < v10)
      {
        v21 = *(v9 + (v8 << 8) + 4);
      }

      v22 = a2[1];
      FIK::IKRigUtils::GetAnimTarget<FIK::GameRig>(v21, *a2, a3, v48);
      v47 = v48[0];
      v23 = a2[1];
      FIK::IKRigUtils::GetAnimTarget<FIK::GameRig>(v13, *a2, a3, v48);
      v24 = v48[0];
      v48[0] = v3[29];
      v25 = vsubq_f32(v48[0], v47);
      v26 = vsubq_f32(v48[0], v24);
      v27 = vmulq_f32(v25, v25);
      v27.f32[0] = sqrtf(v27.f32[2] + vaddv_f32(*v27.f32));
      v28 = 1.0 / v27.f32[0];
      if (v27.f32[0] == 0.0)
      {
        v28 = 0.0;
      }

      v29 = vmulq_n_f32(v25, v28);
      v30 = vmulq_f32(v26, v26);
      v31 = sqrtf(v30.f32[2] + vaddv_f32(*v30.f32));
      if (v31 == 0.0)
      {
        v32 = 0.0;
      }

      else
      {
        v32 = 1.0 / v31;
      }

      v33 = vmulq_n_f32(v26, v32);
      v34 = vextq_s8(vuzp1q_s32(v33, v33), v33, 0xCuLL);
      v35 = vmlaq_f32(vmulq_f32(v34, vnegq_f32(v29)), v33, vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL));
      v36 = vextq_s8(vuzp1q_s32(v35, v35), v35, 0xCuLL);
      v37 = vmulq_f32(v35, v35);
      v38 = sqrtf(v37.f32[1] + (v37.f32[2] + v37.f32[0]));
      if (v38 == 0.0)
      {
        v39 = 0.0;
      }

      else
      {
        v39 = 1.0 / v38;
      }

      v40 = vmulq_n_f32(v36, v39);
      v41 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v40, v40), v40, 0xCuLL), vnegq_f32(v33)), v40, v34);
      v42 = vextq_s8(vuzp1q_s32(v41, v41), v41, 0xCuLL);
      v43 = vmulq_f32(v41, v41);
      v44 = sqrtf(v43.f32[1] + (v43.f32[2] + v43.f32[0]));
      if (v44 == 0.0)
      {
        v45 = 0.0;
      }

      else
      {
        v45 = 1.0 / v44;
      }

      v46 = vmulq_f32(v29, v29);
      v48[0] = vaddq_f32(v48[0], vmulq_f32(vmulq_n_f32(vmulq_n_f32(v42, v45), sqrtf(v46.f32[2] + vaddv_f32(*v46.f32))), vdupq_n_s32(0x43160000u)));
      v3[21] = v48[0];
      result = FIK::Utils::ContainsNaN(v48);
      if (result)
      {
        return FIK::RTGameTask::GeneratePoleVecTarget();
      }
    }
  }

  return result;
}

uint64_t FIK::RTGameTask::GenerateVRTarget(uint64_t this)
{
  if (*(this + 420) == 0.0 && *(this + 416) == 0.0)
  {
    v1 = *(this + 480);
    *(this + 336) = *(this + 464);
    *(this + 352) = v1;
  }

  else
  {
    v2 = *(this + 352);
    v3 = vextq_s8(vuzp1q_s32(v2, v2), v2, 0xCuLL);
    v4 = *(this + 240);
    v5 = *(this + 256);
    v6 = vnegq_f32(v2);
    v7 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v4, v4), v4, 0xCuLL), v6), v4, v3);
    v8 = vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL);
    v9 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL), v6), v8, v3);
    v10 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL), v8, v2, 3);
    v8.i64[0] = 0x4000000040000000;
    v8.i64[1] = 0x4000000040000000;
    v11 = vaddq_f32(*(this + 336), vmlaq_f32(v4, v8, v10));
    v12 = vnegq_f32(v5);
    v13 = vtrn2q_s32(v5, vtrn1q_s32(v5, v12));
    v14 = vrev64q_s32(v5);
    v14.i32[0] = v12.i32[1];
    v14.i32[3] = v12.i32[2];
    *(this + 336) = v11;
    *(this + 352) = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v5, v2, 3), v14, v2, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v5, v12, 8uLL), *v2.f32, 1), vextq_s8(v13, v13, 8uLL), v2.f32[0]));
    this = FIK::Utils::ContainsNaN((this + 336));
    if (this)
    {
      return FIK::RTGameTask::GenerateVRTarget();
    }
  }

  return this;
}

uint64_t FIK::RTGameTask::SetSolverTaskTarget(uint64_t this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2)
  {
    (*(*&v2[*(*v2 - 264)] + 136))(&v2[*(*v2 - 264)], *(this + 100), 0);
    (*(**(v1 + 8) + 280))();
    this = (*(**(v1 + 8) + 248))(*(v1 + 8), v1 + 336);
  }

  v3 = *(v1 + 16);
  if (v3)
  {
    (*(*&v3[*(*v3 - 264)] + 136))(&v3[*(*v3 - 264)], *(v1 + 101), 0);
    v4 = *(**(v1 + 16) + 248);

    return v4();
  }

  return this;
}

uint64_t FIK::RTGameTask::AddSolverTask(FIK::RTGameTask *this, FIK::Solver **a2)
{
  if (*(this + 100) == 1)
  {
    v4 = FIK::IKSolver::addPositionTask(a2, *(this + 24));
    *(this + 1) = v4;
    v5 = v4 != 0;
  }

  else
  {
    v5 = 1;
  }

  if (*(this + 101) == 1)
  {
    v6 = FIK::IKSolver::addOrientationTask(a2, *(this + 24));
    *(this + 2) = v6;
    v5 = (v6 != 0) & v5;
  }

  FIK::RTGameTask::SetProperties(this, this + 48);
  return v5;
}

BOOL FIK::RTGameTask::RemoveSolverTask(FIK::RTGameTask *this, FIK::Solver **a2)
{
  v4 = *(this + 2);
  if (v4)
  {
    FIK::IKSolver::removeTask(a2, v4 + *(*v4 - 264));
    *(this + 2) = 0;
  }

  v5 = *(this + 1);
  if (!v5)
  {
    return 1;
  }

  FIK::IKSolver::removeTask(a2, v5 + *(*v5 - 264));
  *(this + 1) = 0;
  return *(this + 2) == 0;
}

__n128 FIK::RTGameTask::BlendTaskTarget(float32x4_t *this, float a2)
{
  v3 = this[33];
  v8[0] = this[32];
  v8[1] = v3;
  FIK::TargetSmoothing::smooth(&this[26].u32[2], this + 21, v8, a2, v7);
  result = v7[0];
  v5 = v7[1];
  this[21] = v7[0];
  this[22] = v5;
  v6 = this[22];
  this[32] = result;
  this[33] = v6;
  return result;
}

void FIK::RTGameTask::DoAlphaBlend(float32x4_t *this)
{
  if ((this[6].i8[6] & 1) == 0)
  {
    v2 = this[26].f32[0];
    v3 = 105;
    if (this[27].i32[3] == 1)
    {
      v3 = 140;
    }

    v4 = this->f32[v3];
    if (v2 == 0.0 && v4 == 0.0)
    {
      v5 = this[29];
      v6 = this[30];
    }

    else
    {
      v7 = this[17].i32[0];
      if (v7 == 2)
      {
        FIK::Utils::BlendWithOffset(this + 29, this + 21, v8, v2, v4);
      }

      else if (v7 == 1)
      {
        FIK::Utils::BlendWithTarget(this + 29, this + 21, v8, v2, v4);
      }

      else
      {
        if (v7)
        {
          FIK::RTGameTask::DoAlphaBlend();
        }

        FIK::Utils::BlendToTarget(this + 29, this + 21, v8, v2, v4);
      }

      v5 = v8[0];
      v6 = v8[1];
    }

    this[21] = v5;
    this[22] = v6;
  }
}

uint64_t FIK::RigTask::RigTask(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = IKString::IKString(a1, a2, a3);
  IKString::IKString(v6 + 3, (a2 + 24), a3);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 53) = *(a2 + 53);
  v7 = *(a2 + 55);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 55) = v7;
  v8 = *(a2 + 58);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 58) = v8;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  return a1;
}

FIK *ikinema::BoneNormalisationAlgorithmImpl::BoneNormalisationAlgorithmImpl(FIK *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_28589C380;
  *(a1 + 1) = a3;
  *(a1 + 2) = a4;
  v6 = FIK::defaultAllocator(a1);
  *(a1 + 3) = 0;
  *(a1 + 4) = 0;
  *(a1 + 5) = 0;
  *(a1 + 6) = v6;
  FIK::IKArray<FIK::Vector>::IKArray(a1 + 7, a2);
  FIK::IKArray<FIK::Task *>::IKArray(a1 + 11, a2 + 4);
  FIK::IKArray<FIK::Task *>::IKArray(a1 + 15, a2 + 8);
  FIK::IKArray<FIK::Task *>::IKArray(a1 + 19, a2 + 12);
  return a1;
}

uint64_t ikinema::BoneNormalisationAlgorithmImpl::process(uint64_t *a1, uint64_t a2, void *a3)
{
  v5 = ikinema::BufferContainer::buffer(a3, a1[1]);
  v6 = ikinema::Buffer::arrayView<FIK::Transform>(v5);
  v8 = v7;
  v9 = ikinema::BufferContainer::buffer(a3, a1[2]);
  v10 = ikinema::Buffer::arrayView<FIK::Transform>(v9);
  v12 = v11;
  v13 = a1[3];
  v14 = &v6[2 * v8];
  if (!v13)
  {
    std::__copy_impl::operator()[abi:nn200100]<FIK::Transform const*,FIK::Transform const*,std::back_insert_iterator<FIK::IKArray<FIK::Transform>>>(&v17, v6, &v6[2 * v8], a1 + 3);
    v13 = a1[3];
  }

  FIK::generateHelperHierarchyPose((a1 + 7), v6, v8, a1[5], v13, v10, v12);
  if (v8)
  {
    v15 = a1[5];
    do
    {
      *v15 = *v6;
      v15[1] = v6[1];
      v6 += 2;
      v15 += 2;
    }

    while (v6 != v14);
  }

  return 0;
}

FIK *ikinema::BoneNormalisationAlgorithm::create@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, FIK **a4@<X8>)
{
  v5 = a3;
  v6 = a2;
  return ikinema::AlgorithmHandle::make<ikinema::BoneNormalisationAlgorithmImpl,FIK::BoneNormalisationHelperHierarchy const&,ikinema::BufferKey &,ikinema::BufferKey &>(a1, &v6, &v5, a4);
}

FIK *ikinema::AlgorithmHandle::make<ikinema::BoneNormalisationAlgorithmImpl,FIK::BoneNormalisationHelperHierarchy const&,ikinema::BufferKey &,ikinema::BufferKey &>@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, FIK **a4@<X8>)
{
  result = FIK::FIKAlloc(0xB8, 8);
  if (result)
  {
    result = ikinema::BoneNormalisationAlgorithmImpl::BoneNormalisationAlgorithmImpl(result, a1, *a2, *a3);
  }

  *a4 = result;
  return result;
}

uint64_t ikinema::BoneNormalisationAlgorithmImpl::registerBuffers(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    return 1;
  }

  v2 = a2[2];
  v3 = 72 * *a2;
  v4 = (v2 + 56);
  v5 = v3;
  while (1)
  {
    v6 = *v4;
    v4 += 9;
    if (v6 == *(a1 + 8))
    {
      break;
    }

    v5 -= 72;
    if (!v5)
    {
      return 1;
    }
  }

  v7 = (v2 + 56);
  while (1)
  {
    v8 = *v7;
    v7 += 9;
    if (v8 == *(a1 + 16))
    {
      break;
    }

    v3 -= 72;
    if (!v3)
    {
      return 1;
    }
  }

  return 0;
}

const char *ikinema::AlgorithmBlockBase<ikinema::BoneNormalisationAlgorithm>::typeId()
{
  result = "N7ikinema26BoneNormalisationAlgorithmE";
  if (("N7ikinema26BoneNormalisationAlgorithmE" & 0x8000000000000000) != 0)
  {
    v1 = ("N7ikinema26BoneNormalisationAlgorithmE" & 0x7FFFFFFFFFFFFFFFLL);
    v2 = 5381;
    do
    {
      result = v2;
      v3 = *v1++;
      v2 = (33 * v2) ^ v3;
    }

    while (v3);
  }

  return result;
}

void ikinema::BoneNormalisationAlgorithmImpl::~BoneNormalisationAlgorithmImpl(ikinema::BoneNormalisationAlgorithmImpl *this)
{
  ikinema::BoneNormalisationAlgorithmImpl::~BoneNormalisationAlgorithmImpl(this);

  JUMPOUT(0x245D77F60);
}

{
  *(this + 19) = 0;
  v2 = *(this + 21);
  if (v2)
  {
    (*(**(this + 22) + 24))(*(this + 22), v2, 0, 8);
  }

  *(this + 15) = 0;
  v3 = *(this + 17);
  if (v3)
  {
    (*(**(this + 18) + 24))(*(this + 18), v3, 0, 8);
  }

  *(this + 11) = 0;
  v4 = *(this + 13);
  if (v4)
  {
    (*(**(this + 14) + 24))(*(this + 14), v4, 0, 8);
  }

  *(this + 7) = 0;
  v5 = *(this + 9);
  if (v5)
  {
    (*(**(this + 10) + 24))(*(this + 10), v5, 0, 8);
  }

  *(this + 3) = 0;
  v6 = *(this + 5);
  if (v6)
  {
    (*(**(this + 6) + 24))(*(this + 6), v6, 0, 8);
  }
}

void *FIK::IKArray<FIK::Vector>::IKArray(void *a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  *a1 = v5;
  FIK::IKArray<FIK::Vector>::MemoryBlock::MemoryBlock(a1 + 1, v4, a2[3]);
  v6 = *a2;
  if (*a2)
  {
    v7 = a1[2];
    v8 = a2[2];
    do
    {
      v9 = *v8++;
      *v7++ = v9;
      --v6;
    }

    while (v6);
  }

  return a1;
}

void *FIK::IKArray<FIK::Vector>::MemoryBlock::MemoryBlock(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  if (a2)
  {
    v5 = 16 * a2;
    v6 = (*(*a3 + 16))(a3, 16 * a2, 16);
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

_OWORD *std::__copy_impl::operator()[abi:nn200100]<FIK::Transform const*,FIK::Transform const*,std::back_insert_iterator<FIK::IKArray<FIK::Transform>>>(uint64_t a1, _OWORD *a2, _OWORD *a3, uint64_t *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    v7 = *a4;
    do
    {
      FIK::IKArray<FIK::Transform>::reserve(a4, v7 + 1);
      v8 = (a4[2] + 32 * *a4);
      *v8 = *v5;
      v8[1] = v5[1];
      v7 = *a4 + 1;
      *a4 = v7;
      v5 += 2;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

float32x4_t FIK::AutoMatch::calculateSourceTransform@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, float32x4_t *a3@<X2>, int32x4_t *a4@<X3>, float32x4_t *a5@<X8>)
{
  FIK::IKRigUtils::getUnitVecForAxis(*(a1 + 12), &v92);
  FIK::IKRigUtils::getUnitVecForAxis(*(a1 + 8), &v91);
  v86 = v92;
  v87 = v91;
  v88 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v86, v86), v86, 0xCuLL), vnegq_f32(v91)), v86, vextq_s8(vuzp1q_s32(v87, v87), v91, 0xCuLL));
  FIK::IKRigUtils::getUnitVecForAxis(*(a2 + 12), &v90);
  FIK::IKRigUtils::getUnitVecForAxis(*(a2 + 8), &v89);
  v10 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v90, v90), v90, 0xCuLL), vnegq_f32(v89)), v90, vextq_s8(vuzp1q_s32(v89, v89), v89, 0xCuLL));
  v11 = (*v87.i32 + v86.f32[1]) + *&v88.i32[1];
  if (v11 >= 0.0)
  {
    v26 = sqrtf(v11 + 1.0);
    v27 = v26 + v26;
    v28 = vrecpe_f32(COERCE_UNSIGNED_INT(v26 + v26));
    v29 = vmul_f32(v28, vrecps_f32(COERCE_UNSIGNED_INT(v26 + v26), v28));
    v29.i32[0] = vmul_f32(v29, vrecps_f32(COERCE_UNSIGNED_INT(v26 + v26), v29)).u32[0];
    *v22.f32 = vmul_n_f32(vsub_f32(vzip1_s32(*&vextq_s8(v86, v86, 8uLL), *&vextq_s8(v88, v88, 8uLL)), vzip1_s32(*v88.i8, *&vextq_s8(v87, v87, 8uLL))), v29.f32[0]);
    v30.f32[0] = *&v87.i32[1] - v86.f32[0];
    v30.f32[1] = v27;
    v29.i32[1] = 0.25;
    v25 = vmul_f32(v30, v29);
  }

  else if (*v87.i32 < v86.f32[1] || *v87.i32 < *&v88.i32[1])
  {
    v58 = 1.0 - *v87.i32;
    if (v86.f32[1] >= *&v88.i32[1])
    {
      v72 = sqrtf(v86.f32[1] + (v58 - *&v88.i32[1]));
      *&v73 = v72 + v72;
      v74 = vrecpe_f32(v73);
      v75 = vmul_f32(v74, vrecps_f32(v73, v74));
      v75.i32[0] = vmul_f32(v75, vrecps_f32(v73, v75)).u32[0];
      v76.f32[0] = *&v87.i32[1] + v86.f32[0];
      v76.i32[1] = v73;
      v77 = vzip1_s32(*v88.i8, *&vextq_s8(v88, v88, 8uLL));
      v78.i32[0] = vadd_f32(v77, *&vextq_s8(v86, v86, 8uLL)).u32[0];
      v78.i32[1] = vsub_f32(v77, vdup_laneq_s32(v87, 2)).i32[1];
      v25 = vmul_n_f32(v78, v75.f32[0]);
      v75.i32[1] = 0.25;
      *v22.f32 = vmul_f32(v76, v75);
    }

    else
    {
      v59 = sqrtf((v58 - v86.f32[1]) + *&v88.i32[1]);
      v60.f32[0] = v59 + v59;
      v61 = vrecpe_f32(COERCE_UNSIGNED_INT(v59 + v59));
      v62 = vmul_f32(v61, vrecps_f32(COERCE_UNSIGNED_INT(v59 + v59), v61));
      v62.i32[0] = vmul_f32(v62, vrecps_f32(COERCE_UNSIGNED_INT(v59 + v59), v62)).u32[0];
      v63.i32[0] = vextq_s8(v88, v88, 8uLL).u32[0];
      v63.i32[1] = v88.i32[0];
      *v22.f32 = vmul_n_f32(vadd_f32(vzip1_s32(*&vextq_s8(v87, v87, 8uLL), *&vextq_s8(v86, v86, 8uLL)), v63), v62.f32[0]);
      v60.f32[1] = *&v87.i32[1] - v86.f32[0];
      __asm { FMOV            V6.2S, #0.25 }

      _D6.i32[1] = v62.i32[0];
      v25 = vmul_f32(v60, _D6);
    }
  }

  else
  {
    v12 = sqrtf(*v87.i32 + ((1.0 - v86.f32[1]) - *&v88.i32[1]));
    v13.f32[0] = v12 + v12;
    v14 = vrecpe_f32(v13.u32[0]);
    v15 = vmul_f32(v14, vrecps_f32(v13.u32[0], v14));
    LODWORD(v16) = vmul_f32(v15, vrecps_f32(v13.u32[0], v15)).u32[0];
    v13.f32[1] = *&v87.i32[1] + v86.f32[0];
    __asm { FMOV            V5.2S, #0.25 }

    _D5.f32[1] = v16;
    *v22.f32 = vmul_f32(v13, _D5);
    v23.i32[0] = vextq_s8(v88, v88, 8uLL).u32[0];
    v23.i32[1] = v88.i32[0];
    v24.i32[0] = vadd_f32(*&vextq_s8(v87, v87, 8uLL), v23).u32[0];
    v24.i32[1] = vsub_f32(vdup_laneq_s32(*&v86, 2), v23).i32[1];
    v25 = vmul_n_f32(v24, v16);
  }

  v31 = (*v89.i32 + *&v90.i32[1]) + *&v10.i32[1];
  if (v31 >= 0.0)
  {
    v41 = sqrtf(v31 + 1.0);
    v42 = v41 + v41;
    v43 = vrecpe_f32(COERCE_UNSIGNED_INT(v41 + v41));
    v44 = vmul_f32(v43, vrecps_f32(COERCE_UNSIGNED_INT(v41 + v41), v43));
    v44.i32[0] = vmul_f32(v44, vrecps_f32(COERCE_UNSIGNED_INT(v41 + v41), v44)).u32[0];
    *v38.f32 = vmul_n_f32(vsub_f32(vzip1_s32(*&vextq_s8(v90, v90, 8uLL), *&vextq_s8(v10, v10, 8uLL)), vzip1_s32(*v10.i8, *&vextq_s8(v89, v89, 8uLL))), v44.f32[0]);
    v45.f32[0] = *&v89.i32[1] - *v90.i32;
    v45.f32[1] = v42;
    v44.i32[1] = 0.25;
    v40 = vmul_f32(v45, v44);
  }

  else if (*v89.i32 < *&v90.i32[1] || *v89.i32 < *&v10.i32[1])
  {
    v65 = 1.0 - *v89.i32;
    if (*&v90.i32[1] >= *&v10.i32[1])
    {
      v79 = sqrtf(*&v90.i32[1] + (v65 - *&v10.i32[1]));
      *&v80 = v79 + v79;
      v81 = vrecpe_f32(v80);
      v82 = vmul_f32(v81, vrecps_f32(v80, v81));
      v83.i32[0] = vmul_f32(v82, vrecps_f32(v80, v82)).u32[0];
      v82.f32[0] = *&v89.i32[1] + *v90.i32;
      v82.i32[1] = v80;
      v84 = vzip1_s32(*v10.i8, *&vextq_s8(v10, v10, 8uLL));
      v85.i32[0] = vadd_f32(v84, *&vextq_s8(v90, v90, 8uLL)).u32[0];
      v85.i32[1] = vsub_f32(v84, vdup_laneq_s32(v89, 2)).i32[1];
      v40 = vmul_n_f32(v85, v83.f32[0]);
      v83.i32[1] = 0.25;
      *v38.f32 = vmul_f32(v82, v83);
    }

    else
    {
      v66 = sqrtf((v65 - *&v90.i32[1]) + *&v10.i32[1]);
      v67.f32[0] = v66 + v66;
      v68 = vrecpe_f32(COERCE_UNSIGNED_INT(v66 + v66));
      v69 = vmul_f32(v68, vrecps_f32(COERCE_UNSIGNED_INT(v66 + v66), v68));
      v69.i32[0] = vmul_f32(v69, vrecps_f32(COERCE_UNSIGNED_INT(v66 + v66), v69)).u32[0];
      v70.i32[0] = vextq_s8(v10, v10, 8uLL).u32[0];
      v70.i32[1] = v10.i32[0];
      *v38.f32 = vmul_n_f32(vadd_f32(vzip1_s32(*&vextq_s8(v89, v89, 8uLL), *&vextq_s8(v90, v90, 8uLL)), v70), v69.f32[0]);
      v67.f32[1] = *&v89.i32[1] - *v90.i32;
      __asm { FMOV            V0.2S, #0.25 }

      _D0.i32[1] = v69.i32[0];
      v40 = vmul_f32(v67, _D0);
    }
  }

  else
  {
    v32 = sqrtf(*v89.i32 + ((1.0 - *&v90.i32[1]) - *&v10.i32[1]));
    v33.f32[0] = v32 + v32;
    v34 = vrecpe_f32(v33.u32[0]);
    v35 = vmul_f32(v34, vrecps_f32(v33.u32[0], v34));
    LODWORD(v36) = vmul_f32(v35, vrecps_f32(v33.u32[0], v35)).u32[0];
    v33.f32[1] = *&v89.i32[1] + *v90.i32;
    __asm { FMOV            V7.2S, #0.25 }

    _D7.f32[1] = v36;
    *v38.f32 = vmul_f32(v33, _D7);
    _D7.i32[0] = vextq_s8(v10, v10, 8uLL).u32[0];
    _D7.i32[1] = v10.i32[0];
    v39.i32[0] = vadd_f32(*&vextq_s8(v89, v89, 8uLL), _D7).u32[0];
    v39.i32[1] = vsub_f32(vdup_laneq_s32(v90, 2), _D7).i32[1];
    v40 = vmul_n_f32(v39, v36);
  }

  *&v22.u32[2] = v25;
  *&v38.u32[2] = v40;
  v46 = vmulq_f32(v38, xmmword_245A01F10);
  v47 = vnegq_f32(v22);
  v48 = vtrn2q_s32(v22, vtrn1q_s32(v22, v47));
  v49 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v22, v47, 8uLL), *v46.f32, 1), vextq_s8(v48, v48, 8uLL), v46.f32[0]);
  v50 = vrev64q_s32(v22);
  v50.i32[0] = v47.i32[1];
  v50.i32[3] = v47.i32[2];
  result = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v22, v46, 3), v50, v46, 2), v49);
  v52 = vextq_s8(vuzp1q_s32(result, result), result, 0xCuLL);
  v53 = vnegq_f32(result);
  v54 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*a4, *a4), *a4, 0xCuLL), v53), *a4, v52);
  v55 = vextq_s8(vuzp1q_s32(v54, v54), v54, 0xCuLL);
  v56 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v55, v55), v55, 0xCuLL), v53), v55, v52);
  v57 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v56, v56), v56, 0xCuLL), v55, result, 3);
  v55.i64[0] = 0x4000000040000000;
  v55.i64[1] = 0x4000000040000000;
  *a5 = vsubq_f32(*a3, vmlaq_f32(*a4, v55, v57));
  a5[1] = result;
  return result;
}

float32x2_t FIK::AutoMatch::calculateSourceScale(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4)
{
  v4 = vsubq_f32(*a4, *a3);
  v5 = vmulq_f32(v4, v4);
  v6 = vsubq_f32(*a2, *a1);
  v7 = vmulq_f32(v6, v6);
  *v5.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v7, v7, 8uLL), *&vextq_s8(v5, v5, 8uLL)), vadd_f32(vzip1_s32(*v7.i8, *v5.i8), vzip2_s32(*v7.i8, *v5.i8))));
  return vdiv_f32(*v5.i8, vdup_lane_s32(*v5.i8, 1));
}

float32x4_t FIK::AutoMatch::calculateTaskOffset@<Q0>(float32x4_t *a1@<X0>, float32x4_t *a2@<X1>, float32x4_t *a3@<X2>, float32x4_t *a4@<X8>, double a5@<D0>)
{
  v6 = *a2;
  v5 = a2[1];
  v7 = vnegq_f32(v5);
  v8 = vtrn2q_s32(v5, vtrn1q_s32(v5, v7));
  v9 = a3[1];
  v10 = vrev64q_s32(v5);
  v10.i32[0] = v7.i32[1];
  v10.i32[3] = v7.i32[2];
  v11 = vmulq_f32(vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v5, v9, 3), v10, v9, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v5, v7, 8uLL), *v9.f32, 1), vextq_s8(v8, v8, 8uLL), v9.f32[0])), xmmword_245A01F10);
  v12 = a1[1];
  v13 = vnegq_f32(v12);
  v14 = vtrn2q_s32(v12, vtrn1q_s32(v12, v13));
  v15 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v12, v13, 8uLL), *v11.f32, 1), vextq_s8(v14, v14, 8uLL), v11.f32[0]);
  v16 = vrev64q_s32(v12);
  v16.i32[0] = v13.i32[1];
  v16.i32[3] = v13.i32[2];
  v17 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v12, v11, 3), v16, v11, 2), v15);
  v18 = vmulq_f32(v17, v17);
  v19 = vadd_f32(*v18.i8, *&vextq_s8(v18, v18, 8uLL));
  if (vaddv_f32(v19) == 0.0)
  {
    v20 = xmmword_245A01E80;
  }

  else
  {
    v21 = vadd_f32(v19, vdup_lane_s32(v19, 1)).u32[0];
    v22 = vrsqrte_f32(v21);
    v23 = vmul_f32(v22, vrsqrts_f32(v21, vmul_f32(v22, v22)));
    v20 = vmulq_n_f32(v17, vmul_f32(v23, vrsqrts_f32(v21, vmul_f32(v23, v23))).f32[0]);
  }

  v24 = vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL);
  v25 = vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL);
  v26 = vnegq_f32(v9);
  v27 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v6, v6), v6, 0xCuLL), v26), v6, v25);
  v28 = vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL);
  v29 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL), v26), v28, v25);
  v30 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL), v28, v9, 3);
  v31.i64[0] = 0x4000000040000000;
  v31.i64[1] = 0x4000000040000000;
  v32 = vdivq_f32(vsubq_f32(*a1, vmulq_n_f32(vaddq_f32(*a3, vmlaq_f32(v6, v31, v30)), *&a5)), vdupq_lane_s32(*&a5, 0));
  v33 = vnegq_f32(v11);
  v34 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v32, v32), v32, 0xCuLL), v33), v32, v24);
  v35 = vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL);
  v36 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v35, v35), v35, 0xCuLL), v33), v35, v24);
  result = vmlaq_f32(v32, v31, vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v36, v36), v36, 0xCuLL), v35, v11, 3));
  *a4 = result;
  a4[1] = v20;
  return result;
}

float32x4_t FIK::AutoMatch::calculateSourceOffset@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, float32x4_t *a4@<X8>)
{
  v4 = vmulq_f32(*(a2 + 16), xmmword_245A01F10);
  v5 = vextq_s8(vuzp1q_s32(v4, v4), v4, 0xCuLL);
  v6 = vnegq_f32(v4);
  v7 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*a2, *a2), *a2, 0xCuLL), v6), *a2, v5);
  v8 = vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL);
  v9 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL), v6), v8, v5);
  v10 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL), v8, v4, 3);
  v8.i64[0] = 0x4000000040000000;
  v8.i64[1] = 0x4000000040000000;
  v11 = vmlaq_f32(*a2, v8, v10);
  v12 = vmulq_f32(*(a3 + 16), xmmword_245A01F10);
  v13 = vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL);
  v14 = vnegq_f32(v12);
  v15 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*a3, *a3), *a3, 0xCuLL), v14), *a3, v13);
  v16 = vextq_s8(vuzp1q_s32(v15, v15), v15, 0xCuLL);
  v17 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v16, v16), v16, 0xCuLL), v14), v16, v13);
  v18 = vmlaq_f32(*a3, v8, vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL), v16, v12, 3));
  v19 = vtrn2q_s32(v12, vtrn1q_s32(v12, v14));
  v20 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v12, v14, 8uLL), *v4.f32, 1), vextq_s8(v19, v19, 8uLL), v4.f32[0]);
  v21 = vrev64q_s32(v12);
  v21.i32[0] = v14.i32[1];
  v21.i32[3] = v14.i32[2];
  v22 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v12, v4, 3), v21, v4, 2), v20);
  v23 = vnegq_f32(v18);
  v24 = vmlsq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL), v6), v5, v18);
  v25 = vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL);
  v26 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL), v6), v25, v5);
  v27 = vsubq_f32(vmlaq_f32(v23, v8, vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL), v25, v4, 3)), v11);
  v28 = *(a1 + 16);
  v29 = vnegq_f32(v28);
  v30 = vtrn2q_s32(v28, vtrn1q_s32(v28, v29));
  v31 = vrev64q_s32(v28);
  v31.i32[0] = v29.i32[1];
  v31.i32[3] = v29.i32[2];
  v32 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v28, v22, 3), v31, v22, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v28, v29, 8uLL), *v22.f32, 1), vextq_s8(v30, v30, 8uLL), v22.f32[0]));
  v33 = vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL);
  v34 = vnegq_f32(v22);
  v35 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*a1, *a1), *a1, 0xCuLL), v34), *a1, v33);
  v36 = vextq_s8(vuzp1q_s32(v35, v35), v35, 0xCuLL);
  v37 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v36, v36), v36, 0xCuLL), v34), v36, v33);
  result = vaddq_f32(vmlaq_f32(*a1, v8, vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v37, v37), v37, 0xCuLL), v36, v22, 3)), v27);
  *a4 = result;
  a4[1] = v32;
  return result;
}

float32x4_t FIK::AutoMatch::calculateSourceParentOffset@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, float32x4_t *a4@<X8>)
{
  v4 = vmulq_f32(*(a3 + 16), xmmword_245A01F10);
  v5 = vextq_s8(vuzp1q_s32(v4, v4), v4, 0xCuLL);
  v6 = vnegq_f32(v4);
  v7 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*a3, *a3), *a3, 0xCuLL), v6), *a3, v5);
  v8 = vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL);
  v9 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL), v6), v8, v5);
  v10 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL), v8, v4, 3);
  v8.i64[0] = 0x4000000040000000;
  v8.i64[1] = 0x4000000040000000;
  v11 = vmlaq_f32(*a3, v8, v10);
  v12 = *(a1 + 16);
  v13 = vnegq_f32(v12);
  v14 = vtrn2q_s32(v12, vtrn1q_s32(v12, v13));
  v15 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v12, v13, 8uLL), *v4.f32, 1), vextq_s8(v14, v14, 8uLL), v4.f32[0]);
  v16 = vrev64q_s32(v12);
  v16.i32[0] = v13.i32[1];
  v16.i32[3] = v13.i32[2];
  v17 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*a1, *a1), *a1, 0xCuLL), v6), *a1, v5);
  v18 = vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL);
  v19 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL), v6), v18, v5);
  v20 = vsubq_f32(vmlaq_f32(*a1, v8, vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL), v18, v4, 3)), v11);
  v21 = vmulq_f32(vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v12, v4, 3), v16, v4, 2), v15), xmmword_245A01F10);
  v22 = vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL);
  v23 = vnegq_f32(v21);
  v24 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v20, v20), v20, 0xCuLL), v23), v20, v22);
  v25 = vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL);
  v26 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL), v23), v25, v22);
  v27 = vmlaq_f32(v20, v8, vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL), v25, v21, 3));
  v28 = *(a2 + 16);
  v29 = vnegq_f32(v28);
  v30 = vtrn2q_s32(v28, vtrn1q_s32(v28, v29));
  v31 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v28, v29, 8uLL), *v21.f32, 1), vextq_s8(v30, v30, 8uLL), v21.f32[0]);
  v32 = vrev64q_s32(v28);
  v32.i32[0] = v29.i32[1];
  v32.i32[3] = v29.i32[2];
  v33 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*a2, *a2), *a2, 0xCuLL), v23), *a2, v22);
  v34 = vextq_s8(vuzp1q_s32(v33, v33), v33, 0xCuLL);
  v35 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL), v23), v34, v22);
  result = vsubq_f32(vmlaq_f32(*a2, v8, vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v35, v35), v35, 0xCuLL), v34, v21, 3)), v27);
  *a4 = result;
  a4[1] = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v28, v21, 3), v32, v21, 2), v31);
  return result;
}

__n128 FIK::Enrollment::FrameAdaptor::getLiftedPositionForJoint@<Q0>(FIK::Enrollment::FrameAdaptor *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X8>)
{
  result = *(*(**this + 80 * a2) + 48 * a3 + 32);
  *a4 = result;
  return result;
}

__n128 FIK::Enrollment::FrameAdaptor::getRayDirectionForJoint@<Q0>(FIK::Enrollment::FrameAdaptor *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X8>)
{
  result = *(*(**this + 80 * a2) + 48 * a3 + 16);
  *a4 = result;
  return result;
}

void FIK::Enrollment::FrameAdaptor::getHeadPose(float32x4_t **this@<X0>, FIK::Transform *a2@<X8>)
{
  if (*(this + 2) != 1 || (vminvq_u32(vandq_s8(vandq_s8(vceqq_f32((*this)[7], *(MEMORY[0x277D860B8] + 16)), vceqq_f32((*this)[6], *MEMORY[0x277D860B8])), vandq_s8(vceqq_f32((*this)[8], *(MEMORY[0x277D860B8] + 32)), vceqq_f32((*this)[9], *(MEMORY[0x277D860B8] + 48))))) & 0x80000000) != 0)
  {
    v3 = 0;
    *a2 = 0;
  }

  else
  {
    FIK::Transform::Transform(a2, &(*this)[6]);
    v3 = 1;
  }

  *(a2 + 32) = v3;
}

float32x4_t FIK::Enrollment::FrameAdaptor::getRayDirectionForJoint@<Q0>(FIK::Enrollment::FrameAdaptor *this@<X0>, float a2@<S0>, uint64_t a3@<X1>, uint64_t a4@<X2>, float32x4_t *a5@<X8>)
{
  v7 = *(**this + 80 * a3) + 48 * a4;
  v8 = *(v7 + 16);
  v9 = vmulq_f32(v8, v8);
  v10 = sqrtf(v9.f32[2] + vaddv_f32(*v9.f32));
  if (v10 == 0.0)
  {
    v12 = *(v7 + 16);
    FIK::Enrollment::FrameAdaptor::getRayDirectionForJoint();
    v8 = v12;
  }

  result = vmulq_n_f32(v8, a2 / v10);
  *a5 = result;
  return result;
}

float32x4_t FIK::Enrollment::FrameAdaptor::getRayEndForJoint@<Q0>(FIK::Enrollment::FrameAdaptor *this@<X0>, float a2@<S0>, uint64_t a3@<X1>, uint64_t a4@<X2>, float32x4_t *a5@<X8>)
{
  FIK::Enrollment::FrameAdaptor::getRayDirectionForJoint(this, a2, a3, a4, &v17);
  FIK::Transform::Transform(&v15, (**this + 80 * a3 + 16));
  v8 = vextq_s8(vuzp1q_s32(v16, v16), v16, 0xCuLL);
  v9 = vnegq_f32(v16);
  v10 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL), v9), v17, v8);
  v11 = vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL);
  v12 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL), v9), v11, v8);
  v13.i64[0] = 0x4000000040000000;
  v13.i64[1] = 0x4000000040000000;
  result = vaddq_f32(v15, vmlaq_f32(v17, v13, vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL), v11, v16, 3)));
  *a5 = result;
  return result;
}

BOOL FIK::Enrollment::FrameAdaptor::isLiftedValid(FIK::Enrollment::FrameAdaptor *this, uint64_t a2, uint64_t a3)
{
  v3 = *(*(**this + 80 * a2) + 48 * a3 + 32);
  v4 = vmulq_f32(v3, v3);
  return (v4.f32[2] + vaddv_f32(*v4.f32)) > 0.00001;
}

BOOL FIK::Enrollment::FrameAdaptor::isRayDirValid(FIK::Enrollment::FrameAdaptor *this, uint64_t a2, uint64_t a3)
{
  v3 = *(*(**this + 80 * a2) + 48 * a3 + 16);
  v4 = vmulq_f32(v3, v3);
  return (v4.f32[2] + vaddv_f32(*v4.f32)) > 0.00001;
}

uint64_t FIK::Enrollment::SourceDefinition::cameraIndexForName(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 == 6)
  {
    if (*a2 != 1835098989 || *(a2 + 4) != 27743)
    {
      if (*a2 != 1835098989 || *(a2 + 4) != 29279)
      {
        if (*a2 != 1835098980 || *(a2 + 4) != 27743)
        {
          v6 = *(a2 + 4);
          v7 = *a2 == 1835098980;
          v8 = 29279;
          goto LABEL_29;
        }

LABEL_37:
        v13 = 2;
        goto LABEL_38;
      }

LABEL_36:
      v13 = 1;
      goto LABEL_38;
    }

LABEL_35:
    v13 = 0;
    goto LABEL_38;
  }

  if (a3 != 5)
  {
    goto LABEL_44;
  }

  if (*a2 == 1835098989 && *(a2 + 4) == 108)
  {
    goto LABEL_35;
  }

  if (*a2 == 1835098989 && *(a2 + 4) == 114)
  {
    goto LABEL_36;
  }

  if (*a2 == 1835098980 && *(a2 + 4) == 108)
  {
    goto LABEL_37;
  }

  v6 = *(a2 + 4);
  v7 = *a2 == 1835098980;
  v8 = 114;
LABEL_29:
  if (!v7 || v6 != v8)
  {
LABEL_44:
    FIK::Enrollment::SourceDefinition::cameraIndexForName();
  }

  v13 = 3;
LABEL_38:
  v14 = *(a1 + 24);
  if (!v14)
  {
    return 0xFFFFFFFFLL;
  }

  v15 = 0;
  while (*(*(a1 + 16) + 4 * v15) != v13)
  {
    if (v14 == ++v15)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v15;
}

uint64_t FIK::Enrollment::SourceDefinition::detectionIndexForName(uint64_t *a1, const void *a2, size_t a3)
{
  v3 = a1[1];
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = 0;
  v7 = *a1;
  while (strlen(*(v7 + 8 * v6)) != a3 || memcmp(*(v7 + 8 * v6), a2, a3))
  {
    if (v3 == ++v6)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v6;
}

uint64_t FIK::Enrollment::SourceDefinition::getDetectionIndicesForPrefixedName(FIK *a1, _BYTE *a2, size_t a3, _DWORD *a4, _DWORD *a5)
{
  v10 = 0;
  v11 = 0;
  v33[0] = 0;
  v33[1] = 0;
  v34 = 0;
  v35 = FIK::defaultAllocator(a1);
  do
  {
    if (a3 <= v11)
    {
      v13 = -1;
    }

    else
    {
      v12 = memchr(&a2[v11], 95, a3 - v11);
      if (v12)
      {
        v13 = v12 - a2;
      }

      else
      {
        v13 = -1;
      }
    }

    v14 = a3 - v11;
    if (a3 < v11)
    {
      abort();
    }

    v15 = v13 - v11;
    v16 = &a2[v11];
    if (v14 >= v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = v14;
    }

    result = FIK::IKArray<std::string_view>::reserve(v33, v10 + 1);
    v19 = &v34[2 * v33[0]];
    *v19 = v16;
    v19[1] = v17;
    v20 = v33[0];
    v10 = ++v33[0];
    v11 = v13 + 1;
  }

  while (v13 != -1);
  if (v20 > 1)
  {
    if (v20 == 2)
    {
      v23 = v34;
      v24 = v34[3];
      if (v24 == 3 && ((v25 = v34[2], v26 = *v25, v27 = *(v25 + 2), v26 == 24946) ? (v28 = v27 == 121) : (v28 = 0), v28))
      {
        *a5 = -1;
      }

      else
      {
        v29 = v24 + v34[1];
        if (a3 >= v29 + 1)
        {
          v30 = v29 + 1;
        }

        else
        {
          v30 = a3;
        }

        *a5 = FIK::Enrollment::SourceDefinition::cameraIndexForName(a1, a2, v30);
        v23 = v34;
      }

      v21 = v23[4];
      v22 = v23[5];
    }

    else
    {
      if (v20 != 3)
      {
        goto LABEL_32;
      }

      *a5 = -1;
      v21 = v34[6];
      v22 = v34[7];
    }

    goto LABEL_31;
  }

  if (v20)
  {
    if (v20 != 1)
    {
      goto LABEL_32;
    }

    *a5 = FIK::Enrollment::SourceDefinition::cameraIndexForName(a1, *v34, v34[1]);
    v21 = v34[2];
    v22 = v34[3];
LABEL_31:
    result = FIK::Enrollment::SourceDefinition::detectionIndexForName(a1, v21, v22);
    *a4 = result;
    goto LABEL_32;
  }

  result = FIK::Enrollment::SourceDefinition::detectionIndexForName(a1, a2, a3);
  *a4 = result;
  if (*(a1 + 3) == 1)
  {
    *a5 = 0;
  }

  else
  {
    v31 = *(a1 + 5);
    if (v31)
    {
      v32 = 0;
      while (*(*(a1 + 4) + v32) != 1)
      {
        if (v31 == ++v32)
        {
          goto LABEL_32;
        }
      }

      *a5 = v32;
    }
  }

LABEL_32:
  v33[0] = 0;
  if (v34)
  {
    return (*(*v35 + 3))(v35, v34, 0, 8);
  }

  return result;
}

void FIK::Enrollment::estimateHeadPose(void *a1@<X0>, unint64_t a2@<X1>, float32x4_t *a3@<X8>)
{
  v35 = *MEMORY[0x277D85DE8];
  if (a1[1] <= a2)
  {
LABEL_21:
    a3->i8[0] = 0;
    a3[2].i8[0] = 0;
    goto LABEL_33;
  }

  v20 = (*a1 + 160 * a2);
  v21 = 1;
  FIK::Enrollment::FrameAdaptor::getHeadPose(&v20, a3);
  if (a3[2].i8[0] != 1)
  {
    v24.i8[0] = 0;
    v26 = 0;
    v27.i8[0] = 0;
    v29 = 0;
    v8 = -1;
    v30 = -1;
    v31 = -1;
    if (a2)
    {
      v9 = 1 - a2;
      v10 = (*a1 + 160 * a2 - 160);
      while (1)
      {
        v22 = v10;
        v23 = 1;
        FIK::Enrollment::FrameAdaptor::getHeadPose(&v22, &v32);
        v11 = v34;
        if (v34 == 1)
        {
          break;
        }

        ++v9;
        v10 -= 10;
        if (v9 == 1)
        {
          v11 = 0;
          v8 = -1;
          goto LABEL_10;
        }
      }

      v8 = -v9;
      v6 = v33;
      v24 = v32;
      v25 = v33;
      v26 = 1;
      v30 = v8;
    }

    else
    {
      v11 = 0;
    }

LABEL_10:
    v12 = a2 + 1;
    v13 = a1[1] - (a2 + 1);
    if (v13)
    {
      v19 = v6;
      v14 = (*a1 + 160 * v12);
      if (v13 <= 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = v13;
      }

      while (1)
      {
        v22 = v14;
        v23 = 1;
        FIK::Enrollment::FrameAdaptor::getHeadPose(&v22, &v32);
        LODWORD(v13) = v34;
        if (v34 == 1)
        {
          break;
        }

        ++v12;
        v14 += 10;
        if (!--v15)
        {
          LODWORD(v13) = 0;
          v12 = -1;
          v6 = v19;
          if (v11)
          {
            goto LABEL_23;
          }

          goto LABEL_19;
        }
      }

      v7 = v33;
      v27 = v32;
      v28 = v33;
      v29 = 1;
      v6 = v19;
      v31 = v12;
      if (!v11)
      {
        goto LABEL_19;
      }

      goto LABEL_23;
    }

    v12 = -1;
    if (v11)
    {
LABEL_23:
      if (v13)
      {
        v16 = (a2 - v8) / (v12 - v8);
        if (v16 <= 0.0)
        {
          v32 = v24;
        }

        else if (v16 >= 1.0)
        {
          v32 = v27;
          v6 = v7;
        }

        else
        {
          FIK::Slerp(&v25, &v28, &v33, v16);
          v32 = vaddq_f32(v24, vmulq_n_f32(vsubq_f32(v27, v24), (a2 - v8) / (v12 - v8)));
          v6 = v33;
        }

        v17 = v32;
      }

      else
      {
        v17 = v24;
      }

      *a3 = v17;
      a3[1] = v6;
      goto LABEL_32;
    }

LABEL_19:
    if (v13)
    {
      *a3 = v27;
      a3[1] = v7;
LABEL_32:
      a3[2].i8[0] = 1;
      goto LABEL_33;
    }

    goto LABEL_21;
  }

LABEL_33:
  v18 = *MEMORY[0x277D85DE8];
}

FIK::Enrollment::DataPreprocessor *FIK::Enrollment::DataPreprocessor::DataPreprocessor(FIK::Enrollment::DataPreprocessor *this, uint64_t a2, uint64_t a3)
{
  *this = -1;
  *(this + 1) = a3;
  v5 = FIK::defaultAllocator(this);
  v6 = FIK::IKArray<FIK::Transform>::IKArray<FIK::Transform,void>(this + 2, a2, v5);
  v7 = FIK::defaultAllocator(v6);
  v8 = FIK::IKArray<BOOL>::IKArray<BOOL,void>(this + 6, a2, v7);
  v9 = FIK::defaultAllocator(v8);
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = v9;
  v10 = FIK::defaultAllocator(v9);
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = v10;
  v11 = FIK::defaultAllocator(v10);
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 21) = v11;
  *(this + 176) = 0;
  *(this + 320) = 0;
  *(this + 336) = 1;
  return this;
}

void *FIK::Enrollment::DataPreprocessor::addLiftedSource(uint64_t a1, uint64_t a2, int a3)
{
  v5 = (a1 + 80);
  result = FIK::IKArray<FIK::Enrollment::LiftedSource>::reserve((a1 + 80), *(a1 + 80) + 1);
  v7 = v5[2] + 12 * *v5;
  *v7 = a2;
  *(v7 + 8) = a3;
  ++*v5;
  return result;
}

__n128 FIK::Enrollment::DataPreprocessor::addRaySource(uint64_t a1, __n128 *a2)
{
  v3 = (a1 + 112);
  FIK::IKArray<FIK::Enrollment::RaySource>::reserve((a1 + 112), *(a1 + 112) + 1);
  v4 = (v3[2] + 24 * *v3);
  result = *a2;
  v4[1].n128_u64[0] = a2[1].n128_u64[0];
  *v4 = result;
  ++*v3;
  return result;
}

uint64_t FIK::Enrollment::DataPreprocessor::generateSolverSources(int *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v44 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 6);
  if (v8 >= 1)
  {
    bzero(*(a1 + 8), v8);
  }

  v9 = *(a2 + 8);
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = 0;
  v11 = *a2;
  v12 = (*a2 + 80);
  v13 = -v9;
  while (v12->columns[0].i64[0] != a3)
  {
    --v10;
    v12 = (v12 + 160);
    v11 += 160;
    if (v13 == v10)
    {
      goto LABEL_9;
    }
  }

  if (v10 != 1)
  {
    v17 = -v10;
    FIK::Transform::Transform(v37, v12 - 1);
    v18 = (*(a1 + 4) + 32 * *a1);
    *v18 = v37[0];
    v18[1] = v37[1];
    *(*(a1 + 8) + *a1) = 1;
    if (*(a2 + 16) != 1)
    {
      FIK::Enrollment::DataPreprocessor::generateSolverSources();
    }

    if (a1[1] == -1)
    {
      FIK::Enrollment::DataPreprocessor::generateSolverSources();
    }

    FIK::Enrollment::estimateHeadPose(a2, v17, v42);
    if ((v43 & 1) == 0)
    {
      FIK::Enrollment::DataPreprocessor::generateSolverSources();
    }

    v19 = (*(a1 + 4) + 32 * a1[1]);
    *v19 = v42[0];
    v19[1] = v42[1];
    *(*(a1 + 8) + a1[1]) = 1;
    v20 = *(a1 + 10);
    if (v20)
    {
      v21 = *(a1 + 12);
      v22 = 12 * v20;
      do
      {
        FIK::Enrollment::LiftedSource::getTarget(v21, a2, v17, &v40);
        if (v41)
        {
          v23 = -1;
        }

        else
        {
          v23 = 0;
        }

        v24 = vbslq_s8(vdupq_n_s32(v23), v40, 0);
        v25 = (*(a1 + 4) + 32 * *v21);
        *v25 = v24;
        v25[1] = xmmword_245A01E80;
        v26 = *v21;
        v21 += 3;
        *(*(a1 + 8) + v26) = v41;
        v22 -= 12;
      }

      while (v22);
    }

    v27 = *(a1 + 14);
    if (v27)
    {
      v28 = *(a1 + 16);
      v29 = &v28[6 * v27];
      do
      {
        FIK::Enrollment::RaySource::getTarget(v28, a2, v17, &v40);
        if (v41)
        {
          v30 = -1;
        }

        else
        {
          v30 = 0;
        }

        v31 = vbslq_s8(vdupq_n_s32(v30), v40, 0);
        v32 = (*(a1 + 4) + 32 * v28[1]);
        *v32 = v31;
        v32[1] = xmmword_245A01E80;
        *(*(a1 + 8) + v28[1]) = v41;
        v28 += 6;
      }

      while (v28 != v29);
    }

    FIK::Enrollment::DataPreprocessor::getDetectedHipsAlignmentPosition(a1, v11, 1, &v40);
    if (a1[80])
    {
      v33 = *(a1 + 4);
      v34 = *(a1 + 2);
      v35 = *(a1 + 8);
      v36 = *(a1 + 6);
      v38.i8[0] = 0;
      v39 = 0;
      if (v41 == 1)
      {
        v38 = v40;
        v39 = v41;
      }

      FIK::Enrollment::VirtualSourceController::updateDependents(a1 + 11, v33, v34, v35, v36, v37, &v38);
    }

    *a4 = 0;
  }

  else
  {
LABEL_9:
    *a4 = 1;
  }

  result = *(a1 + 4);
  v15 = *(a1 + 2);
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void FIK::Enrollment::DataPreprocessor::getDetectedHipsAlignmentPosition(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X8>)
{
  if (*(a1 + 144))
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      FIK::Enrollment::LiftedSource::getTarget(*(a1 + 160) + v8, a2, a3, a4);
      if (a4[1].n128_u8[0])
      {
        break;
      }

      ++v9;
      v8 += 12;
      if (v9 >= *(a1 + 144))
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    a4->n128_u8[0] = 0;
    a4[1].n128_u8[0] = 0;
  }
}

float32x2_t FIK::Transform::Transform(FIK::Transform *this, const simd_float4x4 *a2)
{
  v2 = a2->columns[3];
  v2.i32[3] = 0;
  *this = v2;
  v4 = a2->columns[0];
  v3 = a2->columns[1];
  v5 = a2->columns[2];
  LODWORD(v6) = HIDWORD(a2->columns[1].i64[0]);
  v7 = COERCE_FLOAT(a2->columns[2].i64[1]);
  v8 = v7 + (COERCE_FLOAT(*a2->columns) + v6);
  if (v8 >= 0.0)
  {
    v17 = sqrtf(v8 + 1.0);
    v18 = v17 + v17;
    v19 = vrecpe_f32(COERCE_UNSIGNED_INT(v17 + v17));
    v20 = vmul_f32(v19, vrecps_f32(COERCE_UNSIGNED_INT(v17 + v17), v19));
    v20.i32[0] = vmul_f32(v20, vrecps_f32(COERCE_UNSIGNED_INT(v17 + v17), v20)).u32[0];
    *&v31 = vmul_n_f32(vsub_f32(vzip1_s32(*&vextq_s8(v3, v3, 8uLL), *v5.f32), vext_s8(*v5.f32, *&vextq_s8(v4, v4, 8uLL), 4uLL)), v20.f32[0]);
    v21.f32[0] = *&v4.i32[1] - *v3.i32;
    v21.f32[1] = v18;
    v20.i32[1] = 0.25;
    result = vmul_f32(v21, v20);
  }

  else if (*v4.i32 < v6 || *v4.i32 < v7)
  {
    v10 = 1.0 - *v4.i32;
    if (v6 >= v7)
    {
      v34 = sqrtf(v6 + (v10 - v7));
      *&v35 = v34 + v34;
      v36 = vrecpe_f32(v35);
      v37 = vmul_f32(v36, vrecps_f32(v35, v36));
      v38.i32[0] = vmul_f32(v37, vrecps_f32(v35, v37)).u32[0];
      v37.f32[0] = *&v4.i32[1] + *v3.i32;
      v37.i32[1] = v35;
      result = vmul_n_f32(vext_s8(vadd_f32(*v5.f32, vdup_laneq_s32(v3, 2)), vsub_f32(*v5.f32, *&vextq_s8(v4, v4, 8uLL)), 4uLL), v38.f32[0]);
      v38.i32[1] = 0.25;
      *&v31 = vmul_f32(v37, v38);
    }

    else
    {
      v11 = sqrtf(v7 + (v10 - v6));
      v12.f32[0] = v11 + v11;
      v13 = vrecpe_f32(COERCE_UNSIGNED_INT(v11 + v11));
      v14 = vmul_f32(v13, vrecps_f32(COERCE_UNSIGNED_INT(v11 + v11), v13));
      v14.i32[0] = vmul_f32(v14, vrecps_f32(COERCE_UNSIGNED_INT(v11 + v11), v14)).u32[0];
      *&v31 = vmul_n_f32(vadd_f32(vzip1_s32(*&vextq_s8(v4, v4, 8uLL), *&vextq_s8(v3, v3, 8uLL)), *v5.f32), v14.f32[0]);
      v15 = HIDWORD(a2->columns[0].i64[0]);
      v12.f32[1] = *&v4.i32[1] - *v3.i32;
      __asm { FMOV            V0.2S, #0.25 }

      _D0.i32[1] = v14.i32[0];
      result = vmul_f32(v12, _D0);
    }
  }

  else
  {
    v22 = sqrtf(*v4.i32 + ((1.0 - v6) - v7));
    v23.f32[0] = v22 + v22;
    v24 = vrecpe_f32(v23.u32[0]);
    v25 = vmul_f32(v24, vrecps_f32(v23.u32[0], v24));
    LODWORD(v26) = vmul_f32(v25, vrecps_f32(v23.u32[0], v25)).u32[0];
    v23.f32[1] = *&v4.i32[1] + *v3.i32;
    __asm { FMOV            V5.2S, #0.25 }

    _D5.f32[1] = v26;
    *&v31 = vmul_f32(v23, _D5);
    v32.i32[0] = vadd_f32(*&vextq_s8(v4, v4, 8uLL), *v5.f32).u32[0];
    v32.i32[1] = vsub_f32(vdup_laneq_s32(v3, 2), *&v5).i32[1];
    result = vmul_n_f32(v32, v26);
  }

  *(&v31 + 1) = result;
  *(this + 1) = v31;
  return result;
}

void FIK::Slerp(float32x4_t *a1@<X0>, float32x4_t *a2@<X1>, float32x4_t *a3@<X8>, float a4@<S0>)
{
  v6 = vmulq_f32(*a1, *a2);
  v7 = vextq_s8(v6, v6, 8uLL);
  *v6.f32 = vadd_f32(*v6.f32, *v7.f32);
  v6.f32[0] = vaddv_f32(*v6.f32);
  v7.i64[0] = 0;
  v8 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v6, v7)), 0), vnegq_f32(*a2), *a2);
  v9 = 1.0;
  v10 = 1.0 - a4;
  v11 = vsubq_f32(*a1, v8);
  v12 = vmulq_f32(v11, v11);
  v37 = v8;
  v38 = *a1;
  v13 = vaddq_f32(*a1, v8);
  v14 = vmulq_f32(v13, v13);
  v15 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v12.i8, *&vextq_s8(v12, v12, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v14.i8, *&vextq_s8(v14, v14, 8uLL)))));
  v16 = v15 + v15;
  v17 = (v15 + v15) == 0.0;
  v18 = 1.0;
  if (!v17)
  {
    v18 = sinf(v16) / v16;
  }

  v19 = v18;
  v20 = vrecpe_f32(LODWORD(v18));
  v21 = vmul_f32(v20, vrecps_f32(LODWORD(v19), v20));
  LODWORD(v22) = vmul_f32(v21, vrecps_f32(LODWORD(v19), v21)).u32[0];
  if ((v10 * v16) != 0.0)
  {
    v35 = v22;
    v21.f32[0] = sinf(v10 * v16);
    v22 = v35;
    v9 = v21.f32[0] / (v10 * v16);
  }

  v21.f32[0] = v10 * (v22 * v9);
  v23 = vdupq_lane_s32(v21, 0);
  v24 = v16 * a4;
  v25 = 1.0;
  if (v24 != 0.0)
  {
    v34 = v23;
    v36 = v22;
    v26 = sinf(v24);
    v23 = v34;
    v22 = v36;
    v25 = v26 / v24;
  }

  v27 = vmlaq_f32(vmulq_n_f32(v37, (v22 * v25) * a4), v38, v23);
  v28 = vmulq_f32(v27, v27);
  v29 = vadd_f32(*v28.i8, *&vextq_s8(v28, v28, 8uLL));
  if (vaddv_f32(v29) == 0.0)
  {
    v30 = xmmword_245A01E80;
  }

  else
  {
    v31 = vadd_f32(v29, vdup_lane_s32(v29, 1)).u32[0];
    v32 = vrsqrte_f32(v31);
    v33 = vmul_f32(v32, vrsqrts_f32(v31, vmul_f32(v32, v32)));
    v30 = vmulq_n_f32(v27, vmul_f32(v33, vrsqrts_f32(v31, vmul_f32(v33, v33))).f32[0]);
  }

  *a3 = v30;
}

void *FIK::IKArray<BOOL>::IKArray<BOOL,void>(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  *a1 = a2;
  a1[1] = v5;
  if (v5)
  {
    v6 = (*(*a3 + 16))(a3, (a2 + 7) & 0xFFFFFFFFFFFFFFF8, 1);
    a1[2] = v6;
    a1[3] = a3;
    bzero(v6, v5);
  }

  else
  {
    a1[2] = 0;
    a1[3] = a3;
  }

  return a1;
}

void *FIK::IKArray<FIK::Enrollment::RaySource>::reserve(void *result, unint64_t a2)
{
  if (result[1] < a2)
  {
    v2 = result;
    v3 = result[3];
    v4 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v4)
    {
      v5 = (*(*v3 + 16))(result[3], 24 * v4, 8);
      v6 = v5;
      if (24 * v4)
      {
        bzero(v5, 24 * v4);
      }
    }

    else
    {
      v6 = 0;
    }

    memcpy(v6, v2[2], 24 * *v2);
    v7 = v2[2];
    result = v2[3];
    v2[1] = v4;
    v2[2] = v6;
    v2[3] = v3;
    if (v7)
    {
      v8 = *(*result + 24);

      return v8();
    }
  }

  return result;
}

uint64_t FIK::CharacterisedHierarchy::getHierarchyIndexFromJointID<FIK::BipedIdentifiers::Joint>(uint64_t a1, int a2)
{
  v4 = *(a1 + 56);
  v2 = a1 + 56;
  v3 = v4;
  if (!v4)
  {
    return -1;
  }

  v5 = v2;
  do
  {
    if (*(v3 + 32) >= a2)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 32) < a2));
  }

  while (v3);
  if (v5 != v2 && *(v5 + 32) <= a2)
  {
    return *(v5 + 40);
  }

  else
  {
    return -1;
  }
}

__n128 *FIK::CharacterisedHierarchy::CharacterisedHierarchy(__n128 *a1, __n128 *a2, uint64_t a3)
{
  v5 = FIK::Hierarchy::Hierarchy(a1, a2);
  (*(*a3 + 16))(a3, a1, v5);
  return a1;
}

{
  FIK::Hierarchy::Hierarchy(a1, a2);
  *(v5 + 32) = *a3;
  *(v5 + 48) = *(a3 + 16);
  v6 = (a3 + 24);
  v7 = *(a3 + 24);
  *(v5 + 56) = v7;
  v8 = v5 + 56;
  v9 = *(a3 + 32);
  *(v5 + 64) = v9;
  if (v9)
  {
    *(v7 + 16) = v8;
    *(a3 + 16) = v6;
    *v6 = 0;
    *(a3 + 32) = 0;
  }

  else
  {
    a1[3].n128_u64[0] = v8;
  }

  a1[4].n128_u64[1] = *(a3 + 40);
  v10 = (a3 + 48);
  v11 = *(a3 + 48);
  a1[5].n128_u64[0] = v11;
  v12 = a1 + 5;
  v13 = *(a3 + 56);
  a1[5].n128_u64[1] = v13;
  if (v13)
  {
    *(v11 + 16) = v12;
    *(a3 + 40) = v10;
    *v10 = 0;
    *(a3 + 56) = 0;
  }

  else
  {
    a1[4].n128_u64[1] = v12;
  }

  IKString::IKString(&a1[6], (a3 + 64), *(a3 + 80));
  return a1;
}

uint64_t *FIK::UndefinedCharacterisation::operator()@<X0>(FIK *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a2;
  *a2 = 0;
  *(a2 + 4) = 0;
  *(a2 + 24) = 0;
  *(a2 + 16) = a2 + 24;
  *(a2 + 56) = 0;
  *(a2 + 48) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = a2 + 48;
  v3 = FIK::defaultAllocator(a1);
  v2[8] = 0;
  v2[9] = 0;
  v2 += 8;
  v2[2] = v3;
  IKString::assign(v2, "undefined", 9);
  v6 = 0;
  v7 = 0;
  v8 = FIK::defaultAllocator(v4);
  IKString::assign(&v6, "undefined", 9);
  result = IKString::operator=(v2, &v6);
  if (v7)
  {
    return (*(*v8 + 3))(v8, v6, 0, 8);
  }

  return result;
}

void FIK::UndefinedCharacterisation::~UndefinedCharacterisation(FIK::UndefinedCharacterisation *this)
{
  FIK::Characterisation::~Characterisation(this);

  JUMPOUT(0x245D77F60);
}

uint64_t ikinema::SetMocapTargetAlgorithmImpl::setFkTargets(uint64_t result, uint64_t a2, int a3, FIK::AnimNode **this)
{
  v4 = *(result + 56);
  if (v4)
  {
    v7 = (*(result + 72) + 16);
    v8 = 48 * v4;
    do
    {
      v9 = *(a2 + 32 * v7[-1].i64[1] + 16);
      v10 = vnegq_f32(v9);
      v11 = vtrn2q_s32(v9, vtrn1q_s32(v9, v10));
      v12 = v7[1];
      v13 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v9, v10, 8uLL), *v7->f32, 1), vextq_s8(v11, v11, 8uLL), COERCE_FLOAT(*v7));
      v14 = vrev64q_s32(v9);
      v14.i32[0] = v10.i32[1];
      v14.i32[3] = v10.i32[2];
      v15 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v9, *v7, 3), v14, *v7, 2), v13);
      v16 = vnegq_f32(v12);
      v17 = vtrn2q_s32(v12, vtrn1q_s32(v12, v16));
      v18 = vrev64q_s32(v12);
      v18.i32[0] = v16.i32[1];
      v18.i32[3] = v16.i32[2];
      v20 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v12, v15, 3), v18, v15, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v12, v16, 8uLL), *v15.f32, 1), vextq_s8(v17, v17, 8uLL), v15.f32[0]));
      v19 = ikinema::JointCollection::element(this, v7[-1].u64[0]);
      result = (*(*v19 + 200))(v19, &v20);
      v7 += 3;
      v8 -= 48;
    }

    while (v8);
  }

  return result;
}

uint64_t ikinema::SetMocapTargetAlgorithmImpl::setConstraintTargets(float32x4_t *a1, float32x4_t *a2, int a3, ikinema::ConstraintCollection *this)
{
  result = ikinema::ConstraintCollection::elementCount(this);
  if (result)
  {
    v8 = result;
    v9 = 0;
    v10 = a2 + 1;
    do
    {
      v11 = v10[-1];
      v12 = vnegq_f32(*v10);
      v13 = vtrn2q_s32(*v10, vtrn1q_s32(*v10, v12));
      v14 = a1[2];
      v15 = vrev64q_s32(*v10);
      v15.i32[0] = v12.i32[1];
      v15.i32[3] = v12.i32[2];
      v16 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(*v10, v14, 3), v15, v14, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(*v10, v12, 8uLL), *v14.f32, 1), vextq_s8(v13, v13, 8uLL), v14.f32[0]));
      v17 = vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL);
      v18 = vnegq_f32(v14);
      v19 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL), v18), v11, v17);
      v20 = vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL);
      v21 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v20, v20), v20, 0xCuLL), v18), v20, v17);
      v22 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL), v20, v14, 3);
      v20.i64[0] = 0x4000000040000000;
      v20.i64[1] = 0x4000000040000000;
      v24 = vaddq_f32(a1[1], vmlaq_f32(v11, v20, v22));
      v25 = v16;
      v23 = *ikinema::ConstraintCollection::element(this);
      result = (*v23)();
      ++v9;
      v10 += 2;
    }

    while (v8 != v9);
  }

  return result;
}

uint64_t ikinema::SetMocapTargetAlgorithmImpl::process(float32x4_t *a1, FIK::AnimNode **a2, void *a3)
{
  if (a1[3].i8[1] == 1)
  {
    v6 = ikinema::BufferContainer::buffer(a3, a1[5].i64[1]);
    v7 = ikinema::Buffer::arrayView<FIK::Transform>(v6);
    ikinema::SetMocapTargetAlgorithmImpl::setFkTargets(a1, v7, v8, a2);
  }

  v9 = ikinema::BufferContainer::buffer(a3, a1[6].i64[0]);
  v10 = ikinema::Buffer::arrayView<FIK::Transform>(v9);
  ikinema::SetMocapTargetAlgorithmImpl::setConstraintTargets(a1, v10, v11, (a2 + 1));
  return 0;
}

uint64_t ikinema::SetMocapTargetAlgorithmImpl::registerBuffers(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    return 1;
  }

  v2 = a2[2];
  v3 = 72 * *a2;
  v4 = (v2 + 56);
  v5 = v3;
  while (1)
  {
    v6 = *v4;
    v4 += 9;
    if (v6 == *(a1 + 88))
    {
      break;
    }

    v5 -= 72;
    if (!v5)
    {
      return 1;
    }
  }

  v7 = (v2 + 56);
  while (1)
  {
    v8 = *v7;
    v7 += 9;
    if (v8 == *(a1 + 96))
    {
      break;
    }

    v3 -= 72;
    if (!v3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t ikinema::SetMocapTargetAlgorithmImpl::SetMocapTargetAlgorithmImpl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_28589C4E8;
  *(a1 + 16) = *(a2 + 272);
  *(a1 + 32) = *(a2 + 288);
  *(a1 + 48) = 1;
  *a1 = &unk_28589C458;
  *(a1 + 49) = *(a2 + 304) ^ 1;
  v8 = FIK::defaultAllocator(a1);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = v8;
  *(a1 + 88) = a3;
  *(a1 + 96) = a4;
  v9 = *(a2 + 208);
  if (v9)
  {
    v10 = 0;
    v11 = 0;
    v12 = 336;
    do
    {
      v13 = (*(a2 + 224) + v12);
      v14 = *(v13 - 14);
      if (v14 != -1)
      {
        v17 = *(v13 - 2);
        v18 = *v13;
        FIK::IKArray<ikinema::SetMocapTargetAlgorithmImpl::JointData>::reserve((a1 + 56), v10 + 1);
        v15 = *(a1 + 72) + 48 * *(a1 + 56);
        *v15 = v11;
        *(v15 + 8) = v14;
        *(v15 + 16) = v18;
        *(v15 + 32) = v17;
        v10 = *(a1 + 56) + 1;
        *(a1 + 56) = v10;
      }

      ++v11;
      v12 += 544;
    }

    while (v9 != v11);
  }

  return a1;
}

uint64_t ikinema::SetMocapTargetAlgorithm::create@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = a3;
  v6 = a2;
  return ikinema::AlgorithmHandle::make<ikinema::SetMocapTargetAlgorithmImpl,FIK::MoCapRig const&,ikinema::BufferKey &,ikinema::BufferKey &>(a1, &v6, &v5, a4);
}

uint64_t ikinema::AlgorithmHandle::make<ikinema::SetMocapTargetAlgorithmImpl,FIK::MoCapRig const&,ikinema::BufferKey &,ikinema::BufferKey &>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  result = FIK::FIKAlloc(0x70, 16);
  if (result)
  {
    result = ikinema::SetMocapTargetAlgorithmImpl::SetMocapTargetAlgorithmImpl(result, a1, *a2, *a3);
  }

  *a4 = result;
  return result;
}

const char *ikinema::AlgorithmBlockBase<ikinema::SetMocapTargetAlgorithm>::typeId()
{
  result = "N7ikinema23SetMocapTargetAlgorithmE";
  if (("N7ikinema23SetMocapTargetAlgorithmE" & 0x8000000000000000) != 0)
  {
    v1 = ("N7ikinema23SetMocapTargetAlgorithmE" & 0x7FFFFFFFFFFFFFFFLL);
    v2 = 5381;
    do
    {
      result = v2;
      v3 = *v1++;
      v2 = (33 * v2) ^ v3;
    }

    while (v3);
  }

  return result;
}

void ikinema::SetMocapTargetAlgorithmImpl::~SetMocapTargetAlgorithmImpl(ikinema::SetMocapTargetAlgorithmImpl *this)
{
  *(this + 7) = 0;
  v1 = *(this + 9);
  if (v1)
  {
    (*(**(this + 10) + 24))(*(this + 10), v1, 0, 8);
  }
}

{
  *(this + 7) = 0;
  v1 = *(this + 9);
  if (v1)
  {
    (*(**(this + 10) + 24))(*(this + 10), v1, 0, 8);
  }

  JUMPOUT(0x245D77F60);
}

uint64_t *FIK::IKArray<ikinema::SetMocapTargetAlgorithmImpl::JointData>::reserve(uint64_t *result, unint64_t a2)
{
  if (result[1] < a2)
  {
    v2 = result;
    v3 = result[3];
    v4 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v4)
    {
      v5 = (*(*v3 + 16))(result[3], 48 * v4, 16);
      v6 = v5;
      if (48 * v4)
      {
        bzero(v5, 48 * v4);
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = v2[2];
    v8 = *v2;
    if (*v2)
    {
      v9 = v6;
      do
      {
        *v9 = *v7;
        v9[1] = v7[1];
        v9[2] = v7[2];
        v9 += 3;
        v7 += 3;
        --v8;
      }

      while (v8);
      v7 = v2[2];
    }

    result = v2[3];
    v2[1] = v4;
    v2[2] = v6;
    v2[3] = v3;
    if (v7)
    {
      v10 = *(*result + 24);

      return v10();
    }
  }

  return result;
}

FIK *FIK::AutoRig::createMoCapRigForBiped@<X0>(FIK::Hierarchy *this@<X0>, FIK::Hierarchy *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(this + 8);
  v7 = *(a2 + 8);
  if (v6 != v7)
  {
    if (v6 == 2)
    {
      FIK::RigBuilderUtils::alignToTPose(this);
      v7 = *(a2 + 8);
    }

    if (v7 == 2)
    {
      FIK::RigBuilderUtils::alignToTPose(a2);
    }
  }

  FIK::RigBuilderUtils::shiftHipsToOrigin<FIK::BipedIdentifiers::Joint>(this, 0);
  FIK::RigBuilderUtils::shiftHipsToOrigin<FIK::BipedIdentifiers::Joint>(a2, 0);
  return FIK::MoCapRigBuilder::createMoCapRig(this, a2, "\b", 7, &FIK::AutoRig::createMoCapRigForBiped(FIK::CharacterisedHierarchy &,FIK::CharacterisedHierarchy &,FIK::Transform const&,FIK::Transform const&)::jointsToRemove, 2, a3, FIK::AutoRig::createMoCapRigForBiped(FIK::CharacterisedHierarchy &,FIK::CharacterisedHierarchy &,FIK::Transform const&,FIK::Transform const&)::groupsToRemove, 6);
}

uint64_t ikinema::rig::generate_EnrollmentRigV2@<X0>(ikinema::rig *this@<X0>, uint64_t a2@<X8>)
{
  v3 = FIK::defaultAllocator(this);
  FIK::IKRig::IKRig(a2, v3);
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  *(a2 + 192) = 0;
  *(a2 + 200) = v3;
  *(a2 + 208) = 0;
  *(a2 + 216) = 0;
  *(a2 + 224) = 0;
  *(a2 + 232) = v3;
  *(a2 + 240) = 0;
  *(a2 + 248) = 0;
  *(a2 + 256) = 0;
  *(a2 + 272) = 0;
  *(a2 + 280) = 0;
  *(a2 + 264) = v3;
  *(a2 + 288) = xmmword_245A01E80;
  *(a2 + 304) = 0;
  *(a2 + 308) = 1065353216;
  *(a2 + 48) = 1;
  IKString::assign(v4, "6699B756-CD45-7D56-8407-DB8F3B430D60", 0x24);
  *(a2 + 24) = 1065353216;
  *(a2 + 28) = 0x500000001;
  *(a2 + 36) = 0;
  *(a2 + 44) = 0;
  *(a2 + 48) = 1;
  *(a2 + 64) = 0x3727C5AC3D89374CLL;
  *(a2 + 72) = 0x19000000000;
  *(a2 + 80) = 0x3F80000040800000;
  *(a2 + 88) = 257;
  *(a2 + 90) = 0;
  *(a2 + 100) = 0;
  *(a2 + 92) = 0;
  *(a2 + 108) = 0x3F80000000000000;
  *(a2 + 116) = 256;
  *(a2 + 120) = 1117782015;
  FIK::IKArray<FIK::MoCapTask>::reserve(a2 + 176, 9uLL);
  v5 = *(a2 + 16);
  v176 = 0u;
  v177 = v5;
  v178 = 0;
  v179 = 0;
  v180 = v5;
  *v181 = -1;
  *&v181[4] = 257;
  v181[6] = 0;
  *&v181[7] = 16843009;
  v182 = 257;
  v183 = -1;
  v185 = xmmword_245A02300;
  v186 = xmmword_245A02310;
  v187 = xmmword_245A022D0;
  v188 = 0x4000000040000000;
  v189 = 0x40000000;
  v191 = 0;
  v190 = 0;
  v193 = 0;
  v192 = 0;
  v194 = 5;
  memset(v195, 0, sizeof(v195));
  v196 = v5;
  v197 = -1;
  v198 = 1;
  v199 = 0;
  v200 = 0;
  v201 = xmmword_245A01E80;
  v202 = xmmword_245A01EF0;
  FIK::IKArray<FIK::MoCapTask>::push_back<FIK::MoCapTask,void>((a2 + 176), &v176);
  if (*&v195[3])
  {
    (*(*v196 + 24))(v196, *&v195[1], 0, 8);
    *&v195[1] = 0uLL;
  }

  if (v179)
  {
    (*(*v180 + 24))(v180, v178, 0, 8);
    v178 = 0;
    v179 = 0;
  }

  if (*(&v176 + 1))
  {
    (*(*v177 + 24))(v177, v176, 0, 8);
  }

  v6 = *(a2 + 192) + (*(a2 + 176) << 8);
  IKString::assign((v6 - 256), "head_joint_Task", 0xF);
  IKString::assign((v6 - 232), "head_joint", 0xA);
  *(v6 - 208) = 22;
  *(v6 - 52) = 0;
  *(v6 - 204) = 257;
  *(v6 - 202) = 0;
  *(v6 - 201) = 16843009;
  *(v6 - 192) = 0xD0000000DLL;
  *(v6 - 197) = 257;
  *(v6 - 176) = vdupq_n_s32(0x43200000u);
  *(v6 - 160) = vdupq_n_s32(0x42C80000u);
  *&v7 = 0x4000000040000000;
  *(&v7 + 1) = 0x4000000040000000;
  *(v6 - 144) = v7;
  *(v6 - 128) = v7;
  *(v6 - 112) = 0;
  *(v6 - 104) = 0;
  *(v6 - 99) = 0;
  *(v6 - 88) = 0xBF80000000000005;
  IKString::assign((v6 - 80), "Atlas", 5);
  *(v6 - 56) = -1;
  *(v6 - 48) = 0u;
  *(v6 - 32) = xmmword_245A01E80;
  __asm { FMOV            V2.4S, #1.0 }

  v175 = _Q2;
  *(v6 - 16) = _Q2;
  v13 = *(a2 + 16);
  v176 = 0u;
  v177 = v13;
  v178 = 0;
  v179 = 0;
  v180 = v13;
  *v181 = -1;
  *&v181[4] = 257;
  v181[6] = 0;
  *&v181[7] = 16843009;
  v182 = 257;
  v183 = -1;
  v185 = xmmword_245A02300;
  v186 = xmmword_245A02310;
  v187 = xmmword_245A022D0;
  v188 = 0x4000000040000000;
  v189 = 0x40000000;
  v191 = 0;
  v190 = 0;
  v193 = 0;
  v192 = 0;
  v194 = 5;
  memset(v195, 0, sizeof(v195));
  v196 = v13;
  v197 = -1;
  v198 = 1;
  v199 = 0;
  v200 = 0;
  v201 = xmmword_245A01E80;
  v202 = xmmword_245A01EF0;
  FIK::IKArray<FIK::MoCapTask>::push_back<FIK::MoCapTask,void>((a2 + 176), &v176);
  if (*&v195[3])
  {
    (*(*v196 + 24))(v196, *&v195[1], 0, 8);
    *&v195[1] = 0;
    *&v195[3] = 0;
  }

  if (v179)
  {
    (*(*v180 + 24))(v180, v178, 0, 8);
    v178 = 0;
    v179 = 0;
  }

  if (*(&v176 + 1))
  {
    (*(*v177 + 24))(v177, v176, 0, 8);
  }

  v14 = *(a2 + 192) + (*(a2 + 176) << 8);
  IKString::assign((v14 - 256), "hips_joint_Task", 0xF);
  IKString::assign((v14 - 232), "hips_joint", 0xA);
  *(v14 - 208) = 0;
  *(v14 - 52) = 0;
  *(v14 - 204) = 257;
  *(v14 - 202) = 0;
  *(v14 - 201) = 16843009;
  *(v14 - 197) = 257;
  *(v14 - 192) = 0x100000001;
  __asm
  {
    FMOV            V0.4S, #5.0
    FMOV            V1.4S, #10.0
  }

  v173 = _Q0;
  v174 = _Q1;
  *(v14 - 176) = _Q0;
  *(v14 - 160) = _Q1;
  *&_Q0 = 0x4000000040000000;
  *(&_Q0 + 1) = 0x4000000040000000;
  *(v14 - 144) = _Q0;
  *(v14 - 128) = _Q0;
  *(v14 - 112) = 0;
  *(v14 - 104) = 0;
  *(v14 - 88) = 0xBF80000000000005;
  *(v14 - 99) = 0;
  IKString::assign((v14 - 80), "virtualHips", 0xB);
  *(v14 - 56) = -1;
  *(v14 - 48) = 0u;
  *(v14 - 32) = xmmword_245A01E80;
  *(v14 - 16) = v175;
  v17 = *(a2 + 16);
  v176 = 0u;
  v177 = v17;
  v178 = 0;
  v179 = 0;
  v180 = v17;
  *v181 = -1;
  *&v181[4] = 257;
  v181[6] = 0;
  *&v181[7] = 16843009;
  v182 = 257;
  v183 = -1;
  v185 = xmmword_245A02300;
  v186 = xmmword_245A02310;
  v187 = xmmword_245A022D0;
  v188 = 0x4000000040000000;
  v189 = 0x40000000;
  v191 = 0;
  v190 = 0;
  v193 = 0;
  v192 = 0;
  v194 = 5;
  memset(v195, 0, sizeof(v195));
  v196 = v17;
  v197 = -1;
  v198 = 1;
  v199 = 0;
  v200 = 0;
  v201 = xmmword_245A01E80;
  v202 = xmmword_245A01EF0;
  FIK::IKArray<FIK::MoCapTask>::push_back<FIK::MoCapTask,void>((a2 + 176), &v176);
  if (*&v195[3])
  {
    (*(*v196 + 24))(v196, *&v195[1], 0, 8);
    *&v195[1] = 0;
    *&v195[3] = 0;
  }

  if (v179)
  {
    (*(*v180 + 24))(v180, v178, 0, 8);
    v178 = 0;
    v179 = 0;
  }

  if (*(&v176 + 1))
  {
    (*(*v177 + 24))(v177, v176, 0, 8);
  }

  v18 = *(a2 + 192) + (*(a2 + 176) << 8);
  IKString::assign((v18 - 256), "left_arm_joint_Task", 0x13);
  IKString::assign((v18 - 232), "left_arm_joint", 0xE);
  *(v18 - 208) = 24;
  *(v18 - 52) = 0;
  *(v18 - 204) = 1;
  *(v18 - 202) = 0;
  *(v18 - 201) = 16843009;
  *(v18 - 197) = 257;
  *(v18 - 192) = 0xFFFFFFFF00000002;
  __asm { FMOV            V1.4S, #30.0 }

  v172 = _Q1;
  *(v18 - 176) = _Q1;
  *(v18 - 160) = v175;
  *&v20 = 0x4000000040000000;
  *(&v20 + 1) = 0x4000000040000000;
  *(v18 - 144) = v20;
  *(v18 - 128) = v20;
  *(v18 - 112) = 0;
  *(v18 - 104) = 0;
  *(v18 - 88) = 0xBF80000000000005;
  *(v18 - 99) = 0;
  IKString::assign((v18 - 80), "LeftShoulder", 0xC);
  *(v18 - 56) = -1;
  *(v18 - 48) = xmmword_245A03EC0;
  *(v18 - 32) = xmmword_245A01E80;
  *(v18 - 16) = v175;
  v21 = *(a2 + 16);
  v176 = 0u;
  v177 = v21;
  v178 = 0;
  v179 = 0;
  v180 = v21;
  *v181 = -1;
  *&v181[4] = 257;
  v181[6] = 0;
  *&v181[7] = 16843009;
  v182 = 257;
  v183 = -1;
  v185 = xmmword_245A02300;
  v186 = xmmword_245A02310;
  v187 = xmmword_245A022D0;
  v188 = 0x4000000040000000;
  v189 = 0x40000000;
  v191 = 0;
  v190 = 0;
  v193 = 0;
  v192 = 0;
  v194 = 5;
  memset(v195, 0, sizeof(v195));
  v196 = v21;
  v197 = -1;
  v198 = 1;
  v199 = 0;
  v200 = 0;
  v201 = xmmword_245A01E80;
  v202 = xmmword_245A01EF0;
  FIK::IKArray<FIK::MoCapTask>::push_back<FIK::MoCapTask,void>((a2 + 176), &v176);
  if (*&v195[3])
  {
    (*(*v196 + 24))(v196, *&v195[1], 0, 8);
    *&v195[1] = 0;
    *&v195[3] = 0;
  }

  if (v179)
  {
    (*(*v180 + 24))(v180, v178, 0, 8);
    v178 = 0;
    v179 = 0;
  }

  if (*(&v176 + 1))
  {
    (*(*v177 + 24))(v177, v176, 0, 8);
  }

  v22 = *(a2 + 192) + (*(a2 + 176) << 8);
  IKString::assign((v22 - 256), "left_forearm_joint_Task", 0x17);
  IKString::assign((v22 - 232), "left_forearm_joint", 0x12);
  *(v22 - 208) = 25;
  *(v22 - 52) = 0;
  *(v22 - 204) = 1;
  *(v22 - 202) = 0;
  *(v22 - 201) = 16843009;
  *(v22 - 197) = 257;
  *(v22 - 192) = 0xFFFFFFFF00000002;
  *(v22 - 176) = v174;
  *(v22 - 160) = v175;
  *&v23 = 0x4000000040000000;
  *(&v23 + 1) = 0x4000000040000000;
  *(v22 - 144) = v23;
  *(v22 - 128) = v23;
  *(v22 - 112) = 0;
  *(v22 - 104) = 0;
  *(v22 - 88) = 0xBF80000000000005;
  *(v22 - 99) = 0;
  IKString::assign((v22 - 80), "LeftElbow", 9);
  *(v22 - 56) = -1;
  *(v22 - 48) = 0u;
  *(v22 - 32) = xmmword_245A01E80;
  *(v22 - 16) = v175;
  v24 = *(a2 + 16);
  v176 = 0u;
  v177 = v24;
  v178 = 0;
  v179 = 0;
  v180 = v24;
  *v181 = -1;
  *&v181[4] = 257;
  v181[6] = 0;
  *&v181[7] = 16843009;
  v182 = 257;
  v183 = -1;
  v185 = xmmword_245A02300;
  v186 = xmmword_245A02310;
  v187 = xmmword_245A022D0;
  v188 = 0x4000000040000000;
  v189 = 0x40000000;
  v191 = 0;
  v190 = 0;
  v193 = 0;
  v192 = 0;
  v194 = 5;
  memset(v195, 0, sizeof(v195));
  v196 = v24;
  v197 = -1;
  v198 = 1;
  v199 = 0;
  v200 = 0;
  v201 = xmmword_245A01E80;
  v202 = xmmword_245A01EF0;
  FIK::IKArray<FIK::MoCapTask>::push_back<FIK::MoCapTask,void>((a2 + 176), &v176);
  if (*&v195[3])
  {
    (*(*v196 + 24))(v196, *&v195[1], 0, 8);
    *&v195[1] = 0;
    *&v195[3] = 0;
  }

  if (v179)
  {
    (*(*v180 + 24))(v180, v178, 0, 8);
    v178 = 0;
    v179 = 0;
  }

  if (*(&v176 + 1))
  {
    (*(*v177 + 24))(v177, v176, 0, 8);
  }

  v25 = *(a2 + 192) + (*(a2 + 176) << 8);
  IKString::assign((v25 - 256), "left_hand_joint_Task", 0x14);
  IKString::assign((v25 - 232), "left_hand_joint", 0xF);
  *(v25 - 208) = 26;
  *(v25 - 52) = 0;
  *(v25 - 204) = 257;
  *(v25 - 202) = 0;
  *(v25 - 201) = 16843009;
  *(v25 - 197) = 257;
  *(v25 - 192) = 0x300000003;
  *(v25 - 176) = v173;
  *(v25 - 160) = v174;
  *&v26 = 0x4000000040000000;
  *(&v26 + 1) = 0x4000000040000000;
  *(v25 - 144) = v26;
  *(v25 - 128) = v26;
  *(v25 - 112) = 0;
  *(v25 - 104) = 0;
  *(v25 - 88) = 0xBF80000000000005;
  *(v25 - 99) = 0;
  IKString::assign((v25 - 80), "LeftWrist", 9);
  *(v25 - 48) = xmmword_245A03ED0;
  *(v25 - 32) = xmmword_245A03EE0;
  *(v25 - 56) = -1;
  *(v25 - 16) = v175;
  v27 = *(a2 + 16);
  v176 = 0u;
  v177 = v27;
  v178 = 0;
  v179 = 0;
  v180 = v27;
  *v181 = -1;
  *&v181[4] = 257;
  v181[6] = 0;
  *&v181[7] = 16843009;
  v182 = 257;
  v183 = -1;
  v185 = xmmword_245A02300;
  v186 = xmmword_245A02310;
  v187 = xmmword_245A022D0;
  v188 = 0x4000000040000000;
  v189 = 0x40000000;
  v191 = 0;
  v190 = 0;
  v193 = 0;
  v192 = 0;
  v194 = 5;
  memset(v195, 0, sizeof(v195));
  v196 = v27;
  v197 = -1;
  v198 = 1;
  v199 = 0;
  v200 = 0;
  v201 = xmmword_245A01E80;
  v202 = xmmword_245A01EF0;
  FIK::IKArray<FIK::MoCapTask>::push_back<FIK::MoCapTask,void>((a2 + 176), &v176);
  if (*&v195[3])
  {
    (*(*v196 + 24))(v196, *&v195[1], 0, 8);
    *&v195[1] = 0;
    *&v195[3] = 0;
  }

  if (v179)
  {
    (*(*v180 + 24))(v180, v178, 0, 8);
    v178 = 0;
    v179 = 0;
  }

  if (*(&v176 + 1))
  {
    (*(*v177 + 24))(v177, v176, 0, 8);
  }

  v28 = *(a2 + 192) + (*(a2 + 176) << 8);
  IKString::assign((v28 - 256), "neck_1_joint_Task", 0x11);
  IKString::assign((v28 - 232), "neck_1_joint", 0xC);
  *(v28 - 208) = 18;
  *(v28 - 52) = 0;
  *(v28 - 204) = 1;
  *(v28 - 202) = 0;
  *(v28 - 201) = 16843009;
  *(v28 - 197) = 257;
  *(v28 - 192) = -4294967287;
  __asm { FMOV            V1.4S, #20.0 }

  *(v28 - 176) = _Q1;
  *(v28 - 160) = v175;
  *&v30 = 0x4000000040000000;
  *(&v30 + 1) = 0x4000000040000000;
  *(v28 - 144) = v30;
  *(v28 - 128) = v30;
  *(v28 - 112) = 0;
  *(v28 - 104) = 0;
  *(v28 - 88) = 0xBF80000000000005;
  *(v28 - 99) = 0;
  IKString::assign((v28 - 80), "MidShoulder", 0xB);
  *(v28 - 56) = -1;
  *(v28 - 48) = xmmword_245A03EF0;
  *(v28 - 32) = xmmword_245A01E80;
  *(v28 - 16) = v175;
  v31 = *(a2 + 16);
  v176 = 0u;
  v177 = v31;
  v178 = 0;
  v179 = 0;
  v180 = v31;
  *v181 = -1;
  *&v181[4] = 257;
  v181[6] = 0;
  *&v181[7] = 16843009;
  v182 = 257;
  v183 = -1;
  v185 = xmmword_245A02300;
  v186 = xmmword_245A02310;
  v187 = xmmword_245A022D0;
  v188 = 0x4000000040000000;
  v189 = 0x40000000;
  v191 = 0;
  v190 = 0;
  v193 = 0;
  v192 = 0;
  v194 = 5;
  memset(v195, 0, sizeof(v195));
  v196 = v31;
  v197 = -1;
  v198 = 1;
  v199 = 0;
  v200 = 0;
  v201 = xmmword_245A01E80;
  v202 = xmmword_245A01EF0;
  FIK::IKArray<FIK::MoCapTask>::push_back<FIK::MoCapTask,void>((a2 + 176), &v176);
  if (*&v195[3])
  {
    (*(*v196 + 24))(v196, *&v195[1], 0, 8);
    *&v195[1] = 0;
    *&v195[3] = 0;
  }

  if (v179)
  {
    (*(*v180 + 24))(v180, v178, 0, 8);
    v178 = 0;
    v179 = 0;
  }

  if (*(&v176 + 1))
  {
    (*(*v177 + 24))(v177, v176, 0, 8);
  }

  v32 = *(a2 + 192) + (*(a2 + 176) << 8);
  IKString::assign((v32 - 256), "right_arm_joint_Task", 0x14);
  IKString::assign((v32 - 232), "right_arm_joint", 0xF);
  *(v32 - 208) = 28;
  *(v32 - 52) = 0;
  *(v32 - 204) = 1;
  *(v32 - 202) = 0;
  *(v32 - 201) = 16843009;
  *(v32 - 197) = 257;
  *(v32 - 192) = 0xFFFFFFFF00000002;
  *(v32 - 176) = v172;
  *(v32 - 160) = v175;
  *&v33 = 0x4000000040000000;
  *(&v33 + 1) = 0x4000000040000000;
  *(v32 - 144) = v33;
  *(v32 - 128) = v33;
  *(v32 - 112) = 0;
  *(v32 - 104) = 0;
  *(v32 - 88) = 0xBF80000000000005;
  *(v32 - 99) = 0;
  IKString::assign((v32 - 80), "RightShoulder", 0xD);
  *(v32 - 56) = -1;
  *(v32 - 48) = xmmword_245A03EC0;
  *(v32 - 32) = xmmword_245A01E80;
  *(v32 - 16) = v175;
  v34 = *(a2 + 16);
  v176 = 0u;
  v177 = v34;
  v178 = 0;
  v179 = 0;
  v180 = v34;
  *v181 = -1;
  *&v181[4] = 257;
  v181[6] = 0;
  *&v181[7] = 16843009;
  v182 = 257;
  v183 = -1;
  v185 = xmmword_245A02300;
  v186 = xmmword_245A02310;
  v187 = xmmword_245A022D0;
  v188 = 0x4000000040000000;
  v189 = 0x40000000;
  v191 = 0;
  v190 = 0;
  v193 = 0;
  v192 = 0;
  v194 = 5;
  memset(v195, 0, sizeof(v195));
  v196 = v34;
  v197 = -1;
  v198 = 1;
  v199 = 0;
  v200 = 0;
  v201 = xmmword_245A01E80;
  v202 = xmmword_245A01EF0;
  FIK::IKArray<FIK::MoCapTask>::push_back<FIK::MoCapTask,void>((a2 + 176), &v176);
  if (*&v195[3])
  {
    (*(*v196 + 24))(v196, *&v195[1], 0, 8);
    *&v195[1] = 0;
    *&v195[3] = 0;
  }

  if (v179)
  {
    (*(*v180 + 24))(v180, v178, 0, 8);
    v178 = 0;
    v179 = 0;
  }

  if (*(&v176 + 1))
  {
    (*(*v177 + 24))(v177, v176, 0, 8);
  }

  v35 = *(a2 + 192) + (*(a2 + 176) << 8);
  IKString::assign((v35 - 256), "right_forearm_joint_Task", 0x18);
  IKString::assign((v35 - 232), "right_forearm_joint", 0x13);
  *(v35 - 208) = 29;
  *(v35 - 52) = 0;
  *(v35 - 204) = 1;
  *(v35 - 202) = 0;
  *(v35 - 201) = 16843009;
  *(v35 - 197) = 257;
  *(v35 - 192) = 0xFFFFFFFF00000002;
  *(v35 - 176) = v174;
  *(v35 - 160) = v175;
  *&v36 = 0x4000000040000000;
  *(&v36 + 1) = 0x4000000040000000;
  *(v35 - 144) = v36;
  *(v35 - 128) = v36;
  *(v35 - 112) = 0;
  *(v35 - 104) = 0;
  *(v35 - 88) = 0xBF80000000000005;
  *(v35 - 99) = 0;
  IKString::assign((v35 - 80), "RightElbow", 0xA);
  *(v35 - 56) = -1;
  *(v35 - 48) = 0u;
  *(v35 - 32) = xmmword_245A01E80;
  *(v35 - 16) = v175;
  v37 = *(a2 + 16);
  v176 = 0u;
  v177 = v37;
  v178 = 0;
  v179 = 0;
  v180 = v37;
  *v181 = -1;
  *&v181[4] = 257;
  v181[6] = 0;
  *&v181[7] = 16843009;
  v182 = 257;
  v183 = -1;
  v185 = xmmword_245A02300;
  v186 = xmmword_245A02310;
  v187 = xmmword_245A022D0;
  v188 = 0x4000000040000000;
  v189 = 0x40000000;
  v191 = 0;
  v190 = 0;
  v193 = 0;
  v192 = 0;
  v194 = 5;
  memset(v195, 0, sizeof(v195));
  v196 = v37;
  v197 = -1;
  v198 = 1;
  v199 = 0;
  v200 = 0;
  v201 = xmmword_245A01E80;
  v202 = xmmword_245A01EF0;
  FIK::IKArray<FIK::MoCapTask>::push_back<FIK::MoCapTask,void>((a2 + 176), &v176);
  if (*&v195[3])
  {
    (*(*v196 + 24))(v196, *&v195[1], 0, 8);
    *&v195[1] = 0;
    *&v195[3] = 0;
  }

  if (v179)
  {
    (*(*v180 + 24))(v180, v178, 0, 8);
    v178 = 0;
    v179 = 0;
  }

  if (*(&v176 + 1))
  {
    (*(*v177 + 24))(v177, v176, 0, 8);
  }

  v38 = *(a2 + 192) + (*(a2 + 176) << 8);
  IKString::assign((v38 - 256), "right_hand_joint_Task", 0x15);
  IKString::assign((v38 - 232), "right_hand_joint", 0x10);
  *(v38 - 208) = 30;
  *(v38 - 52) = 0;
  *(v38 - 204) = 257;
  *(v38 - 202) = 0;
  *(v38 - 201) = 16843009;
  *(v38 - 197) = 257;
  *(v38 - 192) = 0x300000003;
  *(v38 - 176) = v173;
  *(v38 - 160) = v174;
  *&v39 = 0x4000000040000000;
  *(&v39 + 1) = 0x4000000040000000;
  *(v38 - 144) = v39;
  *(v38 - 128) = v39;
  *(v38 - 112) = 0;
  *(v38 - 104) = 0;
  *(v38 - 88) = 0xBF80000000000005;
  *(v38 - 99) = 0;
  IKString::assign((v38 - 80), "RightWrist", 0xA);
  *(v38 - 56) = -1;
  *(v38 - 48) = xmmword_245A03F00;
  *(v38 - 32) = xmmword_245A03F10;
  *(v38 - 16) = v175;
  FIK::IKArray<FIK::MoCapBone>::reserve(a2 + 208, 0x1FuLL);
  FIK::MoCapBone::MoCapBone(&v176, *(a2 + 16));
  FIK::IKArray<FIK::MoCapBone>::push_back<FIK::MoCapBone,void>((a2 + 208), &v176);
  FIK::IKArray<IKString>::~IKArray(v206);
  if (v204)
  {
    (*(*v205 + 24))(v205, v203, 0, 8);
    v203 = 0;
    v204 = 0;
  }

  if (v180)
  {
    (*(**v181 + 24))(*v181, v179, 0, 8);
    v179 = 0;
    v180 = 0;
  }

  if (v177)
  {
    (*(*v178 + 24))(v178, *(&v176 + 1), 0, 8);
  }

  v40 = *(a2 + 224) + 544 * *(a2 + 208);
  *(v40 - 190) = 0;
  *(v40 - 188) = 0;
  *(v40 - 192) = 1;
  *(v40 - 180) = 0x3DF5C28F3DCCCCCDLL;
  *(v40 - 184) = 1;
  *(v40 - 172) = 5;
  *(v40 - 544) = 0xFFFFFFFF00000000;
  IKString::assign((v40 - 536), "hips_joint", 0xA);
  IKString::assign((v40 - 512), &unk_245A04BAE, 0);
  *(v40 - 464) = xmmword_245A03F20;
  *(v40 - 480) = xmmword_245A03F30;
  *(v40 - 448) = 16843009;
  *(v40 - 444) = 256;
  *(v40 - 442) = 1;
  v41 = v40 - 441;
  *v41 = 0;
  *(v41 + 4) = 0;
  *(v40 - 432) = xmmword_245A03F40;
  *(v40 - 416) = 0x3F80000000000000;
  *(v40 - 400) = v175;
  *(v40 - 384) = v175;
  *(v40 - 368) = vdupq_n_s32(0xC3B40000);
  *(v40 - 352) = vdupq_n_s32(0x43B40000u);
  v42 = (v40 - 336);
  *v42 = 0u;
  v42[1] = 0u;
  v42[2] = 0u;
  *(v40 - 256) = 0u;
  *(v40 - 240) = xmmword_245A01E80;
  *(v40 - 224) = 0u;
  *(v40 - 208) = xmmword_245A01E80;
  IKString::assign((v40 - 288), "virtualHips", 0xB);
  *(v40 - 264) = -1;
  FIK::MoCapBone::MoCapBone(&v176, *(a2 + 16));
  FIK::IKArray<FIK::MoCapBone>::push_back<FIK::MoCapBone,void>((a2 + 208), &v176);
  FIK::IKArray<IKString>::~IKArray(v206);
  if (v204)
  {
    (*(*v205 + 24))(v205, v203, 0, 8);
    v203 = 0;
    v204 = 0;
  }

  if (v180)
  {
    (*(**v181 + 24))(*v181, v179, 0, 8);
    v179 = 0;
    v180 = 0;
  }

  if (v177)
  {
    (*(*v178 + 24))(v178, *(&v176 + 1), 0, 8);
  }

  v43 = *(a2 + 224) + 544 * *(a2 + 208);
  *(v43 - 190) = 0;
  *(v43 - 188) = 0;
  *(v43 - 192) = 0;
  *(v43 - 180) = 0x3DF5C28F3DCCCCCDLL;
  *(v43 - 184) = 0;
  *(v43 - 172) = 5;
  *(v43 - 544) = 0xFFFFFFFF00000001;
  IKString::assign((v43 - 536), "left_upLeg_joint", 0x10);
  IKString::assign((v43 - 512), "hips_joint", 0xA);
  v44.f64[0] = -0.0000305175998;
  v44.f64[1] = -0.0000305175998;
  *(v43 - 464) = vnegq_f64(v44);
  *(v43 - 480) = xmmword_245A03F50;
  *(v43 - 448) = 0;
  v45 = v43 - 447;
  v46 = v43 - 441;
  *v45 = 16843009;
  *(v45 + 4) = 257;
  *v46 = 0;
  *(v46 + 4) = 0;
  *(v43 - 432) = xmmword_245A03F60;
  *(v43 - 416) = 0x3F80000000000000;
  *(v43 - 400) = v175;
  *(v43 - 384) = v175;
  *(v43 - 368) = vdupq_n_s32(0xC3B40000);
  *(v43 - 352) = vdupq_n_s32(0x43B40000u);
  v47 = (v43 - 336);
  *v47 = 0u;
  v47[1] = 0u;
  v47[2] = 0u;
  *(v43 - 256) = 0u;
  *(v43 - 240) = xmmword_245A01E80;
  *(v43 - 224) = 0u;
  *(v43 - 208) = xmmword_245A01E80;
  IKString::assign((v43 - 288), &unk_245A04BAE, 0);
  *(v43 - 264) = -1;
  FIK::MoCapBone::MoCapBone(&v176, *(a2 + 16));
  FIK::IKArray<FIK::MoCapBone>::push_back<FIK::MoCapBone,void>((a2 + 208), &v176);
  FIK::IKArray<IKString>::~IKArray(v206);
  if (v204)
  {
    (*(*v205 + 24))(v205, v203, 0, 8);
    v203 = 0;
    v204 = 0;
  }

  if (v180)
  {
    (*(**v181 + 24))(*v181, v179, 0, 8);
    v179 = 0;
    v180 = 0;
  }

  if (v177)
  {
    (*(*v178 + 24))(v178, *(&v176 + 1), 0, 8);
  }

  v48 = *(a2 + 224) + 544 * *(a2 + 208);
  *(v48 - 190) = 0;
  *(v48 - 188) = 0;
  *(v48 - 192) = 0;
  *(v48 - 180) = 0x3DF5C28F3DCCCCCDLL;
  *(v48 - 184) = 0;
  *(v48 - 172) = 5;
  *(v48 - 544) = 0xFFFFFFFF00000002;
  IKString::assign((v48 - 536), "left_leg_joint", 0xE);
  IKString::assign((v48 - 512), "left_upLeg_joint", 0x10);
  *(v48 - 464) = xmmword_245A03F70;
  *(v48 - 480) = xmmword_245A03F80;
  *(v48 - 448) = 0;
  v49 = v48 - 447;
  v50 = v48 - 441;
  *v49 = 16843009;
  *(v49 + 4) = 257;
  *v50 = 0;
  *(v50 + 4) = 0;
  *(v48 - 432) = xmmword_245A03F90;
  *(v48 - 416) = 0x3F80000000000000;
  *(v48 - 400) = v175;
  *(v48 - 384) = v175;
  *(v48 - 368) = vdupq_n_s32(0xC3B40000);
  *(v48 - 352) = vdupq_n_s32(0x43B40000u);
  v51 = (v48 - 336);
  *v51 = 0u;
  v51[1] = 0u;
  v51[2] = 0u;
  *(v48 - 256) = 0u;
  *(v48 - 240) = xmmword_245A01E80;
  *(v48 - 224) = 0u;
  *(v48 - 208) = xmmword_245A01E80;
  IKString::assign((v48 - 288), &unk_245A04BAE, 0);
  *(v48 - 264) = -1;
  FIK::MoCapBone::MoCapBone(&v176, *(a2 + 16));
  FIK::IKArray<FIK::MoCapBone>::push_back<FIK::MoCapBone,void>((a2 + 208), &v176);
  FIK::IKArray<IKString>::~IKArray(v206);
  if (v204)
  {
    (*(*v205 + 24))(v205, v203, 0, 8);
    v203 = 0;
    v204 = 0;
  }

  if (v180)
  {
    (*(**v181 + 24))(*v181, v179, 0, 8);
    v179 = 0;
    v180 = 0;
  }

  if (v177)
  {
    (*(*v178 + 24))(v178, *(&v176 + 1), 0, 8);
  }

  v52 = *(a2 + 224) + 544 * *(a2 + 208);
  *(v52 - 190) = 0;
  *(v52 - 188) = 0;
  *(v52 - 192) = 0;
  *(v52 - 180) = 0x3DF5C28F3DCCCCCDLL;
  *(v52 - 184) = 0;
  *(v52 - 172) = 5;
  *(v52 - 544) = 0xFFFFFFFF00000003;
  IKString::assign((v52 - 536), "left_foot_joint", 0xF);
  IKString::assign((v52 - 512), "left_leg_joint", 0xE);
  *(v52 - 464) = xmmword_245A03FA0;
  *(v52 - 480) = xmmword_245A03FB0;
  *(v52 - 448) = 0;
  v53 = v52 - 447;
  v54 = v52 - 441;
  *v53 = 16843009;
  *(v53 + 4) = 257;
  *v54 = 0;
  *(v54 + 4) = 0;
  *(v52 - 432) = xmmword_245A03FC0;
  *(v52 - 416) = 0x3F80000000000000;
  *(v52 - 400) = v175;
  *(v52 - 384) = v175;
  *(v52 - 368) = vdupq_n_s32(0xC3B40000);
  *(v52 - 352) = vdupq_n_s32(0x43B40000u);
  v55 = (v52 - 336);
  *v55 = 0u;
  v55[1] = 0u;
  v55[2] = 0u;
  *(v52 - 256) = 0u;
  *(v52 - 240) = xmmword_245A01E80;
  *(v52 - 224) = 0u;
  *(v52 - 208) = xmmword_245A01E80;
  IKString::assign((v52 - 288), &unk_245A04BAE, 0);
  *(v52 - 264) = -1;
  FIK::MoCapBone::MoCapBone(&v176, *(a2 + 16));
  FIK::IKArray<FIK::MoCapBone>::push_back<FIK::MoCapBone,void>((a2 + 208), &v176);
  FIK::IKArray<IKString>::~IKArray(v206);
  if (v204)
  {
    (*(*v205 + 24))(v205, v203, 0, 8);
    v203 = 0;
    v204 = 0;
  }

  if (v180)
  {
    (*(**v181 + 24))(*v181, v179, 0, 8);
    v179 = 0;
    v180 = 0;
  }

  if (v177)
  {
    (*(*v178 + 24))(v178, *(&v176 + 1), 0, 8);
  }

  v56 = *(a2 + 224) + 544 * *(a2 + 208);
  *(v56 - 190) = 0;
  *(v56 - 188) = 0;
  *(v56 - 192) = 0;
  *(v56 - 180) = 0x3DF5C28F3DCCCCCDLL;
  *(v56 - 184) = 0;
  *(v56 - 172) = 5;
  *(v56 - 544) = 0xFFFFFFFF00000004;
  IKString::assign((v56 - 536), "left_toes_joint", 0xF);
  IKString::assign((v56 - 512), "left_foot_joint", 0xF);
  *(v56 - 464) = xmmword_245A03FD0;
  *(v56 - 480) = xmmword_245A03FE0;
  *(v56 - 448) = 0;
  v57 = v56 - 447;
  v58 = v56 - 441;
  *v57 = 16843009;
  *(v57 + 4) = 257;
  *v58 = 0;
  *(v58 + 4) = 0;
  *(v56 - 432) = xmmword_245A03FF0;
  *(v56 - 416) = 0x3F80000000000000;
  *(v56 - 400) = v175;
  *(v56 - 384) = v175;
  *(v56 - 368) = vdupq_n_s32(0xC3B40000);
  *(v56 - 352) = vdupq_n_s32(0x43B40000u);
  v59 = (v56 - 336);
  *v59 = 0u;
  v59[1] = 0u;
  v59[2] = 0u;
  *(v56 - 256) = 0u;
  *(v56 - 240) = xmmword_245A01E80;
  *(v56 - 224) = 0u;
  *(v56 - 208) = xmmword_245A01E80;
  IKString::assign((v56 - 288), &unk_245A04BAE, 0);
  *(v56 - 264) = -1;
  FIK::MoCapBone::MoCapBone(&v176, *(a2 + 16));
  FIK::IKArray<FIK::MoCapBone>::push_back<FIK::MoCapBone,void>((a2 + 208), &v176);
  FIK::IKArray<IKString>::~IKArray(v206);
  if (v204)
  {
    (*(*v205 + 24))(v205, v203, 0, 8);
    v203 = 0;
    v204 = 0;
  }

  if (v180)
  {
    (*(**v181 + 24))(*v181, v179, 0, 8);
    v179 = 0;
    v180 = 0;
  }

  if (v177)
  {
    (*(*v178 + 24))(v178, *(&v176 + 1), 0, 8);
  }

  v60 = *(a2 + 224) + 544 * *(a2 + 208);
  *(v60 - 190) = 0;
  *(v60 - 188) = 0;
  *(v60 - 192) = 0;
  *(v60 - 180) = 0x3DF5C28F3DCCCCCDLL;
  *(v60 - 184) = 0;
  *(v60 - 172) = 5;
  *(v60 - 544) = -4294967291;
  IKString::assign((v60 - 536), "left_toesEnd_joint", 0x12);
  IKString::assign((v60 - 512), "left_toes_joint", 0xF);
  *(v60 - 464) = xmmword_245A01E80;
  *(v60 - 480) = xmmword_245A04000;
  *(v60 - 448) = 0;
  v61 = v60 - 447;
  v62 = v60 - 441;
  *v61 = 16843009;
  *(v61 + 4) = 257;
  *v62 = 0;
  *(v62 + 4) = 0;
  *(v60 - 432) = xmmword_245A022E0;
  *(v60 - 416) = 0x3F80000000000000;
  *(v60 - 400) = v175;
  *(v60 - 384) = v175;
  *(v60 - 368) = vdupq_n_s32(0xC3B40000);
  *(v60 - 352) = vdupq_n_s32(0x43B40000u);
  v63 = (v60 - 336);
  *v63 = 0u;
  v63[1] = 0u;
  v63[2] = 0u;
  *(v60 - 256) = 0u;
  *(v60 - 240) = xmmword_245A01E80;
  *(v60 - 224) = 0u;
  *(v60 - 208) = xmmword_245A01E80;
  IKString::assign((v60 - 288), &unk_245A04BAE, 0);
  *(v60 - 264) = -1;
  FIK::MoCapBone::MoCapBone(&v176, *(a2 + 16));
  FIK::IKArray<FIK::MoCapBone>::push_back<FIK::MoCapBone,void>((a2 + 208), &v176);
  FIK::IKArray<IKString>::~IKArray(v206);
  if (v204)
  {
    (*(*v205 + 24))(v205, v203, 0, 8);
    v203 = 0;
    v204 = 0;
  }

  if (v180)
  {
    (*(**v181 + 24))(*v181, v179, 0, 8);
    v179 = 0;
    v180 = 0;
  }

  if (v177)
  {
    (*(*v178 + 24))(v178, *(&v176 + 1), 0, 8);
  }

  v64 = *(a2 + 224) + 544 * *(a2 + 208);
  *(v64 - 190) = 0;
  *(v64 - 188) = 0;
  *(v64 - 192) = 0;
  *(v64 - 180) = 0x3DF5C28F3DCCCCCDLL;
  *(v64 - 184) = 0;
  *(v64 - 172) = 5;
  *(v64 - 544) = -4294967290;
  IKString::assign((v64 - 536), "right_upLeg_joint", 0x11);
  IKString::assign((v64 - 512), "hips_joint", 0xA);
  *&v65 = 0x3F0000003F000000;
  *(&v65 + 1) = 0x3F0000003F000000;
  *(v64 - 464) = v65;
  *(v64 - 480) = xmmword_245A04010;
  *(v64 - 448) = 0;
  v66 = v64 - 447;
  v67 = v64 - 441;
  *v66 = 16843009;
  *(v66 + 4) = 257;
  *v67 = 0;
  *(v67 + 4) = 0;
  *(v64 - 432) = xmmword_245A04020;
  *(v64 - 416) = 0x3F80000000000000;
  *(v64 - 400) = v175;
  *(v64 - 384) = v175;
  *(v64 - 368) = vdupq_n_s32(0xC3B40000);
  *(v64 - 352) = vdupq_n_s32(0x43B40000u);
  v68 = (v64 - 336);
  *v68 = 0u;
  v68[1] = 0u;
  v68[2] = 0u;
  *(v64 - 256) = 0u;
  *(v64 - 240) = xmmword_245A01E80;
  *(v64 - 224) = 0u;
  *(v64 - 208) = xmmword_245A01E80;
  IKString::assign((v64 - 288), &unk_245A04BAE, 0);
  *(v64 - 264) = -1;
  FIK::MoCapBone::MoCapBone(&v176, *(a2 + 16));
  FIK::IKArray<FIK::MoCapBone>::push_back<FIK::MoCapBone,void>((a2 + 208), &v176);
  FIK::IKArray<IKString>::~IKArray(v206);
  if (v204)
  {
    (*(*v205 + 24))(v205, v203, 0, 8);
    v203 = 0;
    v204 = 0;
  }

  if (v180)
  {
    (*(**v181 + 24))(*v181, v179, 0, 8);
    v179 = 0;
    v180 = 0;
  }

  if (v177)
  {
    (*(*v178 + 24))(v178, *(&v176 + 1), 0, 8);
  }

  v69 = *(a2 + 224) + 544 * *(a2 + 208);
  *(v69 - 190) = 0;
  *(v69 - 188) = 0;
  *(v69 - 192) = 0;
  *(v69 - 180) = 0x3DF5C28F3DCCCCCDLL;
  *(v69 - 184) = 0;
  *(v69 - 172) = 5;
  *(v69 - 544) = 0xFFFFFFFF00000007;
  IKString::assign((v69 - 536), "right_leg_joint", 0xF);
  IKString::assign((v69 - 512), "right_upLeg_joint", 0x11);
  *(v69 - 464) = xmmword_245A03F70;
  *(v69 - 480) = xmmword_245A04030;
  *(v69 - 448) = 0;
  v70 = v69 - 447;
  v71 = v69 - 441;
  *v70 = 16843009;
  *(v70 + 4) = 257;
  *v71 = 0;
  *(v71 + 4) = 0;
  *(v69 - 432) = xmmword_245A04040;
  *(v69 - 416) = 0x3F80000000000000;
  *(v69 - 400) = v175;
  *(v69 - 384) = v175;
  *(v69 - 368) = vdupq_n_s32(0xC3B40000);
  *(v69 - 352) = vdupq_n_s32(0x43B40000u);
  v72 = (v69 - 336);
  *v72 = 0u;
  v72[1] = 0u;
  v72[2] = 0u;
  *(v69 - 256) = 0u;
  *(v69 - 240) = xmmword_245A01E80;
  *(v69 - 224) = 0u;
  *(v69 - 208) = xmmword_245A01E80;
  IKString::assign((v69 - 288), &unk_245A04BAE, 0);
  *(v69 - 264) = -1;
  FIK::MoCapBone::MoCapBone(&v176, *(a2 + 16));
  FIK::IKArray<FIK::MoCapBone>::push_back<FIK::MoCapBone,void>((a2 + 208), &v176);
  FIK::IKArray<IKString>::~IKArray(v206);
  if (v204)
  {
    (*(*v205 + 24))(v205, v203, 0, 8);
    v203 = 0;
    v204 = 0;
  }

  if (v180)
  {
    (*(**v181 + 24))(*v181, v179, 0, 8);
    v179 = 0;
    v180 = 0;
  }

  if (v177)
  {
    (*(*v178 + 24))(v178, *(&v176 + 1), 0, 8);
  }

  v73 = *(a2 + 224) + 544 * *(a2 + 208);
  *(v73 - 190) = 0;
  *(v73 - 188) = 0;
  *(v73 - 192) = 0;
  *(v73 - 180) = 0x3DF5C28F3DCCCCCDLL;
  *(v73 - 184) = 0;
  *(v73 - 172) = 5;
  *(v73 - 544) = 0xFFFFFFFF00000008;
  IKString::assign((v73 - 536), "right_foot_joint", 0x10);
  IKString::assign((v73 - 512), "right_leg_joint", 0xF);
  *(v73 - 464) = xmmword_245A04050;
  *(v73 - 480) = xmmword_245A04060;
  *(v73 - 448) = 0;
  v74 = v73 - 447;
  v75 = v73 - 441;
  *v74 = 16843009;
  *(v74 + 4) = 257;
  *v75 = 0;
  *(v75 + 4) = 0;
  *(v73 - 432) = xmmword_245A04070;
  *(v73 - 416) = 0x3F80000000000000;
  *(v73 - 400) = v175;
  *(v73 - 384) = v175;
  *(v73 - 368) = vdupq_n_s32(0xC3B40000);
  *(v73 - 352) = vdupq_n_s32(0x43B40000u);
  v76 = (v73 - 336);
  *v76 = 0u;
  v76[1] = 0u;
  v76[2] = 0u;
  *(v73 - 256) = 0u;
  *(v73 - 240) = xmmword_245A01E80;
  *(v73 - 224) = 0u;
  *(v73 - 208) = xmmword_245A01E80;
  IKString::assign((v73 - 288), &unk_245A04BAE, 0);
  *(v73 - 264) = -1;
  FIK::MoCapBone::MoCapBone(&v176, *(a2 + 16));
  FIK::IKArray<FIK::MoCapBone>::push_back<FIK::MoCapBone,void>((a2 + 208), &v176);
  FIK::IKArray<IKString>::~IKArray(v206);
  if (v204)
  {
    (*(*v205 + 24))(v205, v203, 0, 8);
    v203 = 0;
    v204 = 0;
  }

  if (v180)
  {
    (*(**v181 + 24))(*v181, v179, 0, 8);
    v179 = 0;
    v180 = 0;
  }

  if (v177)
  {
    (*(*v178 + 24))(v178, *(&v176 + 1), 0, 8);
  }

  v77 = *(a2 + 224) + 544 * *(a2 + 208);
  *(v77 - 190) = 0;
  *(v77 - 188) = 0;
  *(v77 - 192) = 0;
  *(v77 - 180) = 0x3DF5C28F3DCCCCCDLL;
  *(v77 - 184) = 0;
  *(v77 - 172) = 5;
  *(v77 - 544) = -4294967287;
  IKString::assign((v77 - 536), "right_toes_joint", 0x10);
  IKString::assign((v77 - 512), "right_foot_joint", 0x10);
  *(v77 - 464) = xmmword_245A03FD0;
  *(v77 - 480) = xmmword_245A04080;
  *(v77 - 448) = 0;
  v78 = v77 - 447;
  v79 = v77 - 441;
  *v78 = 16843009;
  *(v78 + 4) = 257;
  *v79 = 0;
  *(v79 + 4) = 0;
  *(v77 - 432) = xmmword_245A04090;
  *(v77 - 416) = 0x3F80000000000000;
  *(v77 - 400) = v175;
  *(v77 - 384) = v175;
  *(v77 - 368) = vdupq_n_s32(0xC3B40000);
  *(v77 - 352) = vdupq_n_s32(0x43B40000u);
  v80 = (v77 - 336);
  *v80 = 0u;
  v80[1] = 0u;
  v80[2] = 0u;
  *(v77 - 256) = 0u;
  *(v77 - 240) = xmmword_245A01E80;
  *(v77 - 224) = 0u;
  *(v77 - 208) = xmmword_245A01E80;
  IKString::assign((v77 - 288), &unk_245A04BAE, 0);
  *(v77 - 264) = -1;
  FIK::MoCapBone::MoCapBone(&v176, *(a2 + 16));
  FIK::IKArray<FIK::MoCapBone>::push_back<FIK::MoCapBone,void>((a2 + 208), &v176);
  FIK::IKArray<IKString>::~IKArray(v206);
  if (v204)
  {
    (*(*v205 + 24))(v205, v203, 0, 8);
    v203 = 0;
    v204 = 0;
  }

  if (v180)
  {
    (*(**v181 + 24))(*v181, v179, 0, 8);
    v179 = 0;
    v180 = 0;
  }

  if (v177)
  {
    (*(*v178 + 24))(v178, *(&v176 + 1), 0, 8);
  }

  v81 = *(a2 + 224) + 544 * *(a2 + 208);
  *(v81 - 190) = 0;
  *(v81 - 188) = 0;
  *(v81 - 192) = 0;
  *(v81 - 180) = 0x3DF5C28F3DCCCCCDLL;
  *(v81 - 184) = 0;
  *(v81 - 172) = 5;
  *(v81 - 544) = -4294967286;
  IKString::assign((v81 - 536), "right_toesEnd_joint", 0x13);
  IKString::assign((v81 - 512), "right_toes_joint", 0x10);
  *(v81 - 464) = xmmword_245A01E80;
  *(v81 - 480) = xmmword_245A040A0;
  *(v81 - 448) = 0;
  v82 = v81 - 447;
  v83 = v81 - 441;
  *v82 = 16843009;
  *(v82 + 4) = 257;
  *v83 = 0;
  *(v83 + 4) = 0;
  *(v81 - 432) = xmmword_245A022E0;
  *(v81 - 416) = 0x3F80000000000000;
  *(v81 - 400) = v175;
  *(v81 - 384) = v175;
  *(v81 - 368) = vdupq_n_s32(0xC3B40000);
  *(v81 - 352) = vdupq_n_s32(0x43B40000u);
  v84 = (v81 - 336);
  *v84 = 0u;
  v84[1] = 0u;
  v84[2] = 0u;
  *(v81 - 256) = 0u;
  *(v81 - 240) = xmmword_245A01E80;
  *(v81 - 224) = 0u;
  *(v81 - 208) = xmmword_245A01E80;
  IKString::assign((v81 - 288), &unk_245A04BAE, 0);
  *(v81 - 264) = -1;
  FIK::MoCapBone::MoCapBone(&v176, *(a2 + 16));
  FIK::IKArray<FIK::MoCapBone>::push_back<FIK::MoCapBone,void>((a2 + 208), &v176);
  FIK::IKArray<IKString>::~IKArray(v206);
  if (v204)
  {
    (*(*v205 + 24))(v205, v203, 0, 8);
    v203 = 0;
    v204 = 0;
  }

  if (v180)
  {
    (*(**v181 + 24))(*v181, v179, 0, 8);
    v179 = 0;
    v180 = 0;
  }

  if (v177)
  {
    (*(*v178 + 24))(v178, *(&v176 + 1), 0, 8);
  }

  v85 = *(a2 + 224) + 544 * *(a2 + 208);
  *(v85 - 190) = 0;
  *(v85 - 188) = 0;
  *(v85 - 192) = 0;
  *(v85 - 180) = 0x3DF5C28F3DCCCCCDLL;
  *(v85 - 184) = 0;
  *(v85 - 172) = 5;
  *(v85 - 544) = -4294967285;
  IKString::assign((v85 - 536), "spine_1_joint", 0xD);
  IKString::assign((v85 - 512), "hips_joint", 0xA);
  *&v86 = 0x3F0000003F000000;
  *(&v86 + 1) = 0x3F0000003F000000;
  *(v85 - 464) = v86;
  *(v85 - 480) = xmmword_245A040B0;
  v87 = v85 - 448;
  *v87 = 16843009;
  *(v87 + 3) = 16843009;
  *(v85 - 437) = 0;
  *(v85 - 432) = xmmword_245A040C0;
  *(v85 - 416) = 0x3F80000000000000;
  *(v85 - 400) = 0u;
  *(v85 - 384) = v175;
  *(v85 - 368) = vdupq_n_s32(0xC3B40000);
  *(v85 - 352) = vdupq_n_s32(0x43B40000u);
  v88 = (v85 - 336);
  *v88 = 0u;
  v88[1] = 0u;
  v88[2] = 0u;
  *(v85 - 256) = 0u;
  *(v85 - 240) = xmmword_245A01E80;
  *(v85 - 224) = 0u;
  *(v85 - 208) = xmmword_245A01E80;
  IKString::assign((v85 - 288), &unk_245A04BAE, 0);
  *(v85 - 264) = -1;
  FIK::MoCapBone::MoCapBone(&v176, *(a2 + 16));
  FIK::IKArray<FIK::MoCapBone>::push_back<FIK::MoCapBone,void>((a2 + 208), &v176);
  FIK::IKArray<IKString>::~IKArray(v206);
  if (v204)
  {
    (*(*v205 + 24))(v205, v203, 0, 8);
    v203 = 0;
    v204 = 0;
  }

  if (v180)
  {
    (*(**v181 + 24))(*v181, v179, 0, 8);
    v179 = 0;
    v180 = 0;
  }

  if (v177)
  {
    (*(*v178 + 24))(v178, *(&v176 + 1), 0, 8);
  }

  v89 = *(a2 + 224) + 544 * *(a2 + 208);
  *(v89 - 190) = 0;
  *(v89 - 188) = 0;
  *(v89 - 192) = 0;
  *(v89 - 180) = 0x3DF5C28F3DCCCCCDLL;
  *(v89 - 184) = 0;
  *(v89 - 172) = 5;
  *(v89 - 544) = -4294967284;
  IKString::assign((v89 - 536), "spine_2_joint", 0xD);
  IKString::assign((v89 - 512), "spine_1_joint", 0xD);
  *(v89 - 464) = xmmword_245A040D0;
  *(v89 - 480) = xmmword_245A040E0;
  v90 = v89 - 448;
  *v90 = 16843009;
  *(v90 + 3) = 16843009;
  *(v89 - 437) = 0;
  *(v89 - 432) = xmmword_245A040F0;
  *(v89 - 416) = 0x3F80000000000000;
  *(v89 - 400) = vdupq_n_s32(0x3E19999Au);
  *(v89 - 384) = v175;
  *(v89 - 368) = vdupq_n_s32(0xC3B40000);
  *(v89 - 352) = vdupq_n_s32(0x43B40000u);
  v91 = (v89 - 336);
  *v91 = 0u;
  v91[1] = 0u;
  v91[2] = 0u;
  *(v89 - 256) = 0u;
  *(v89 - 240) = xmmword_245A01E80;
  *(v89 - 224) = 0u;
  *(v89 - 208) = xmmword_245A01E80;
  IKString::assign((v89 - 288), &unk_245A04BAE, 0);
  *(v89 - 264) = -1;
  FIK::MoCapBone::MoCapBone(&v176, *(a2 + 16));
  FIK::IKArray<FIK::MoCapBone>::push_back<FIK::MoCapBone,void>((a2 + 208), &v176);
  FIK::IKArray<IKString>::~IKArray(v206);
  if (v204)
  {
    (*(*v205 + 24))(v205, v203, 0, 8);
    v203 = 0;
    v204 = 0;
  }

  if (v180)
  {
    (*(**v181 + 24))(*v181, v179, 0, 8);
    v179 = 0;
    v180 = 0;
  }

  if (v177)
  {
    (*(*v178 + 24))(v178, *(&v176 + 1), 0, 8);
  }

  v92 = *(a2 + 224) + 544 * *(a2 + 208);
  *(v92 - 190) = 0;
  *(v92 - 188) = 0;
  *(v92 - 192) = 0;
  *(v92 - 180) = 0x3DF5C28F3DCCCCCDLL;
  *(v92 - 184) = 0;
  *(v92 - 172) = 5;
  *(v92 - 544) = -4294967283;
  IKString::assign((v92 - 536), "spine_3_joint", 0xD);
  IKString::assign((v92 - 512), "spine_2_joint", 0xD);
  *(v92 - 464) = xmmword_245A04100;
  *(v92 - 480) = xmmword_245A04110;
  v93 = v92 - 448;
  *v93 = 16843009;
  *(v93 + 3) = 16843009;
  *(v92 - 437) = 0;
  *(v92 - 432) = xmmword_245A04120;
  *(v92 - 416) = 0x3F80000000000000;
  *(v92 - 400) = vdupq_n_s32(0x3E19999Au);
  *(v92 - 384) = v175;
  *(v92 - 368) = vdupq_n_s32(0xC3B40000);
  *(v92 - 352) = vdupq_n_s32(0x43B40000u);
  v94 = (v92 - 336);
  *v94 = 0u;
  v94[1] = 0u;
  v94[2] = 0u;
  *(v92 - 256) = 0u;
  *(v92 - 240) = xmmword_245A01E80;
  *(v92 - 224) = 0u;
  *(v92 - 208) = xmmword_245A01E80;
  IKString::assign((v92 - 288), &unk_245A04BAE, 0);
  *(v92 - 264) = -1;
  FIK::MoCapBone::MoCapBone(&v176, *(a2 + 16));
  FIK::IKArray<FIK::MoCapBone>::push_back<FIK::MoCapBone,void>((a2 + 208), &v176);
  FIK::IKArray<IKString>::~IKArray(v206);
  if (v204)
  {
    (*(*v205 + 24))(v205, v203, 0, 8);
    v203 = 0;
    v204 = 0;
  }

  if (v180)
  {
    (*(**v181 + 24))(*v181, v179, 0, 8);
    v179 = 0;
    v180 = 0;
  }

  if (v177)
  {
    (*(*v178 + 24))(v178, *(&v176 + 1), 0, 8);
  }

  v95 = *(a2 + 224) + 544 * *(a2 + 208);
  *(v95 - 190) = 0;
  *(v95 - 188) = 0;
  *(v95 - 192) = 0;
  *(v95 - 180) = 0x3DF5C28F3DCCCCCDLL;
  *(v95 - 184) = 0;
  *(v95 - 172) = 5;
  *(v95 - 544) = -4294967282;
  IKString::assign((v95 - 536), "spine_4_joint", 0xD);
  IKString::assign((v95 - 512), "spine_3_joint", 0xD);
  *(v95 - 464) = xmmword_245A04130;
  *(v95 - 480) = xmmword_245A04140;
  v96 = v95 - 448;
  *v96 = 16843009;
  *(v96 + 3) = 16843009;
  *(v95 - 437) = 0;
  *(v95 - 432) = xmmword_245A04150;
  *(v95 - 416) = 0x3F80000000000000;
  *(v95 - 400) = vdupq_n_s32(0x3E19999Au);
  *(v95 - 384) = v175;
  *(v95 - 368) = vdupq_n_s32(0xC3B40000);
  *(v95 - 352) = vdupq_n_s32(0x43B40000u);
  v97 = (v95 - 336);
  *v97 = 0u;
  v97[1] = 0u;
  v97[2] = 0u;
  *(v95 - 256) = 0u;
  *(v95 - 240) = xmmword_245A01E80;
  *(v95 - 224) = 0u;
  *(v95 - 208) = xmmword_245A01E80;
  IKString::assign((v95 - 288), &unk_245A04BAE, 0);
  *(v95 - 264) = -1;
  FIK::MoCapBone::MoCapBone(&v176, *(a2 + 16));
  FIK::IKArray<FIK::MoCapBone>::push_back<FIK::MoCapBone,void>((a2 + 208), &v176);
  FIK::IKArray<IKString>::~IKArray(v206);
  if (v204)
  {
    (*(*v205 + 24))(v205, v203, 0, 8);
    v203 = 0;
    v204 = 0;
  }

  if (v180)
  {
    (*(**v181 + 24))(*v181, v179, 0, 8);
    v179 = 0;
    v180 = 0;
  }

  if (v177)
  {
    (*(*v178 + 24))(v178, *(&v176 + 1), 0, 8);
  }

  v98 = *(a2 + 224) + 544 * *(a2 + 208);
  *(v98 - 190) = 0;
  *(v98 - 188) = 0;
  *(v98 - 192) = 0;
  *(v98 - 180) = 0x3DF5C28F3DCCCCCDLL;
  *(v98 - 184) = 0;
  *(v98 - 172) = 5;
  *(v98 - 544) = 0xFFFFFFFF0000000FLL;
  IKString::assign((v98 - 536), "spine_5_joint", 0xD);
  IKString::assign((v98 - 512), "spine_4_joint", 0xD);
  *(v98 - 464) = xmmword_245A04160;
  *(v98 - 480) = xmmword_245A04170;
  v99 = v98 - 448;
  *v99 = 16843009;
  *(v99 + 3) = 16843009;
  *(v98 - 437) = 0;
  *(v98 - 432) = xmmword_245A04180;
  *(v98 - 416) = 0x3F80000000000000;
  *(v98 - 400) = vdupq_n_s32(0x3E19999Au);
  *(v98 - 384) = v175;
  *(v98 - 368) = vdupq_n_s32(0xC3B40000);
  *(v98 - 352) = vdupq_n_s32(0x43B40000u);
  v100 = (v98 - 336);
  *v100 = 0u;
  v100[1] = 0u;
  v100[2] = 0u;
  *(v98 - 256) = 0u;
  *(v98 - 240) = xmmword_245A01E80;
  *(v98 - 224) = 0u;
  *(v98 - 208) = xmmword_245A01E80;
  IKString::assign((v98 - 288), &unk_245A04BAE, 0);
  *(v98 - 264) = -1;
  FIK::MoCapBone::MoCapBone(&v176, *(a2 + 16));
  FIK::IKArray<FIK::MoCapBone>::push_back<FIK::MoCapBone,void>((a2 + 208), &v176);
  FIK::IKArray<IKString>::~IKArray(v206);
  if (v204)
  {
    (*(*v205 + 24))(v205, v203, 0, 8);
    v203 = 0;
    v204 = 0;
  }

  if (v180)
  {
    (*(**v181 + 24))(*v181, v179, 0, 8);
    v179 = 0;
    v180 = 0;
  }

  if (v177)
  {
    (*(*v178 + 24))(v178, *(&v176 + 1), 0, 8);
  }

  v101 = *(a2 + 224) + 544 * *(a2 + 208);
  *(v101 - 190) = 0;
  *(v101 - 188) = 0;
  *(v101 - 192) = 0;
  *(v101 - 180) = 0x3DF5C28F3DCCCCCDLL;
  *(v101 - 184) = 0;
  *(v101 - 172) = 5;
  *(v101 - 544) = 0xFFFFFFFF00000010;
  IKString::assign((v101 - 536), "spine_6_joint", 0xD);
  IKString::assign((v101 - 512), "spine_5_joint", 0xD);
  *(v101 - 464) = xmmword_245A04190;
  *(v101 - 480) = xmmword_245A041A0;
  v102 = v101 - 448;
  *v102 = 16843009;
  *(v102 + 3) = 16843009;
  *(v101 - 437) = 0;
  *(v101 - 432) = xmmword_245A041B0;
  *(v101 - 416) = 0x3F80000000000000;
  *(v101 - 400) = vdupq_n_s32(0x3E19999Au);
  *(v101 - 384) = v175;
  *(v101 - 368) = vdupq_n_s32(0xC3B40000);
  *(v101 - 352) = vdupq_n_s32(0x43B40000u);
  v103 = (v101 - 336);
  *v103 = 0u;
  v103[1] = 0u;
  v103[2] = 0u;
  *(v101 - 256) = 0u;
  *(v101 - 240) = xmmword_245A01E80;
  *(v101 - 224) = 0u;
  *(v101 - 208) = xmmword_245A01E80;
  IKString::assign((v101 - 288), &unk_245A04BAE, 0);
  *(v101 - 264) = -1;
  FIK::MoCapBone::MoCapBone(&v176, *(a2 + 16));
  FIK::IKArray<FIK::MoCapBone>::push_back<FIK::MoCapBone,void>((a2 + 208), &v176);
  FIK::IKArray<IKString>::~IKArray(v206);
  if (v204)
  {
    (*(*v205 + 24))(v205, v203, 0, 8);
    v203 = 0;
    v204 = 0;
  }

  if (v180)
  {
    (*(**v181 + 24))(*v181, v179, 0, 8);
    v179 = 0;
    v180 = 0;
  }

  if (v177)
  {
    (*(*v178 + 24))(v178, *(&v176 + 1), 0, 8);
  }

  v104 = *(a2 + 224) + 544 * *(a2 + 208);
  *(v104 - 190) = 0;
  *(v104 - 188) = 0;
  *(v104 - 192) = 0;
  *(v104 - 180) = 0x3DF5C28F3DCCCCCDLL;
  *(v104 - 184) = 0;
  *(v104 - 172) = 5;
  *(v104 - 544) = -4294967279;
  IKString::assign((v104 - 536), "spine_7_joint", 0xD);
  IKString::assign((v104 - 512), "spine_6_joint", 0xD);
  *(v104 - 464) = xmmword_245A041C0;
  *(v104 - 480) = xmmword_245A041D0;
  v105 = v104 - 448;
  *v105 = 16843009;
  *(v105 + 3) = 16843009;
  *(v104 - 437) = 0;
  *(v104 - 432) = xmmword_245A041E0;
  *(v104 - 416) = 0x3F80000000000000;
  *(v104 - 400) = vdupq_n_s32(0x3ECCCCCDu);
  *(v104 - 384) = v175;
  *(v104 - 368) = vdupq_n_s32(0xC3B40000);
  *(v104 - 352) = vdupq_n_s32(0x43B40000u);
  v106 = (v104 - 336);
  *v106 = 0u;
  v106[1] = 0u;
  v106[2] = 0u;
  *(v104 - 256) = 0u;
  *(v104 - 240) = xmmword_245A01E80;
  *(v104 - 224) = 0u;
  *(v104 - 208) = xmmword_245A01E80;
  IKString::assign((v104 - 288), &unk_245A04BAE, 0);
  *(v104 - 264) = -1;
  FIK::MoCapBone::MoCapBone(&v176, *(a2 + 16));
  FIK::IKArray<FIK::MoCapBone>::push_back<FIK::MoCapBone,void>((a2 + 208), &v176);
  FIK::IKArray<IKString>::~IKArray(v206);
  if (v204)
  {
    (*(*v205 + 24))(v205, v203, 0, 8);
    v203 = 0;
    v204 = 0;
  }

  if (v180)
  {
    (*(**v181 + 24))(*v181, v179, 0, 8);
    v179 = 0;
    v180 = 0;
  }

  if (v177)
  {
    (*(*v178 + 24))(v178, *(&v176 + 1), 0, 8);
  }

  v107 = *(a2 + 224) + 544 * *(a2 + 208);
  *(v107 - 190) = 0;
  *(v107 - 188) = 0;
  *(v107 - 192) = 1;
  *(v107 - 180) = 0x3DF5C28F3DCCCCCDLL;
  *(v107 - 184) = 1;
  *(v107 - 172) = 5;
  *(v107 - 544) = -4294967278;
  IKString::assign((v107 - 536), "neck_1_joint", 0xC);
  IKString::assign((v107 - 512), "spine_7_joint", 0xD);
  *(v107 - 464) = xmmword_245A041F0;
  *(v107 - 480) = xmmword_245A041D0;
  v108 = v107 - 448;
  *v108 = 16843009;
  *(v108 + 3) = 16843009;
  *(v107 - 437) = 0;
  *(v107 - 432) = xmmword_245A04200;
  *(v107 - 416) = 0x3F80000000000000;
  *(v107 - 400) = v175;
  *(v107 - 384) = v175;
  *(v107 - 368) = vdupq_n_s32(0xC3B40000);
  *(v107 - 352) = vdupq_n_s32(0x43B40000u);
  v109 = (v107 - 336);
  *v109 = 0u;
  v109[1] = 0u;
  v109[2] = 0u;
  *(v107 - 256) = 0u;
  *(v107 - 240) = xmmword_245A01E80;
  *(v107 - 224) = 0u;
  *(v107 - 208) = xmmword_245A01E80;
  IKString::assign((v107 - 288), "MidShoulder", 0xB);
  *(v107 - 264) = -1;
  FIK::MoCapBone::MoCapBone(&v176, *(a2 + 16));
  FIK::IKArray<FIK::MoCapBone>::push_back<FIK::MoCapBone,void>((a2 + 208), &v176);
  FIK::IKArray<IKString>::~IKArray(v206);
  if (v204)
  {
    (*(*v205 + 24))(v205, v203, 0, 8);
    v203 = 0;
    v204 = 0;
  }

  if (v180)
  {
    (*(**v181 + 24))(*v181, v179, 0, 8);
    v179 = 0;
    v180 = 0;
  }

  if (v177)
  {
    (*(*v178 + 24))(v178, *(&v176 + 1), 0, 8);
  }

  v110 = *(a2 + 224) + 544 * *(a2 + 208);
  *(v110 - 190) = 0;
  *(v110 - 188) = 0;
  *(v110 - 192) = 0;
  *(v110 - 180) = 0x3DF5C28F3DCCCCCDLL;
  *(v110 - 184) = 0;
  *(v110 - 172) = 5;
  *(v110 - 544) = -4294967277;
  IKString::assign((v110 - 536), "neck_2_joint", 0xC);
  IKString::assign((v110 - 512), "neck_1_joint", 0xC);
  *(v110 - 464) = xmmword_245A04210;
  *(v110 - 480) = xmmword_245A04220;
  v111 = v110 - 448;
  *v111 = 16843009;
  *(v111 + 3) = 16843009;
  *(v110 - 437) = 0;
  *(v110 - 432) = xmmword_245A04230;
  *(v110 - 416) = 0x3F80000000000000;
  *(v110 - 400) = v175;
  *(v110 - 384) = v175;
  *(v110 - 368) = vdupq_n_s32(0xC3B40000);
  *(v110 - 352) = vdupq_n_s32(0x43B40000u);
  v112 = (v110 - 336);
  *v112 = 0u;
  v112[1] = 0u;
  v112[2] = 0u;
  *(v110 - 256) = 0u;
  *(v110 - 240) = xmmword_245A01E80;
  *(v110 - 224) = 0u;
  *(v110 - 208) = xmmword_245A01E80;
  IKString::assign((v110 - 288), &unk_245A04BAE, 0);
  *(v110 - 264) = -1;
  FIK::MoCapBone::MoCapBone(&v176, *(a2 + 16));
  FIK::IKArray<FIK::MoCapBone>::push_back<FIK::MoCapBone,void>((a2 + 208), &v176);
  FIK::IKArray<IKString>::~IKArray(v206);
  if (v204)
  {
    (*(*v205 + 24))(v205, v203, 0, 8);
    v203 = 0;
    v204 = 0;
  }

  if (v180)
  {
    (*(**v181 + 24))(*v181, v179, 0, 8);
    v179 = 0;
    v180 = 0;
  }

  if (v177)
  {
    (*(*v178 + 24))(v178, *(&v176 + 1), 0, 8);
  }

  v113 = *(a2 + 224) + 544 * *(a2 + 208);
  *(v113 - 190) = 0;
  *(v113 - 188) = 0;
  *(v113 - 192) = 0;
  *(v113 - 180) = 0x3DF5C28F3DCCCCCDLL;
  *(v113 - 184) = 0;
  *(v113 - 172) = 5;
  *(v113 - 544) = -4294967276;
  IKString::assign((v113 - 536), "neck_3_joint", 0xC);
  IKString::assign((v113 - 512), "neck_2_joint", 0xC);
  *(v113 - 464) = xmmword_245A04240;
  *(v113 - 480) = xmmword_245A04250;
  v114 = v113 - 448;
  *v114 = 16843009;
  *(v114 + 3) = 16843009;
  *(v113 - 437) = 0;
  *(v113 - 432) = xmmword_245A04260;
  *(v113 - 416) = 0x3F80000000000000;
  *(v113 - 400) = v175;
  *(v113 - 384) = v175;
  *(v113 - 368) = vdupq_n_s32(0xC3B40000);
  *(v113 - 352) = vdupq_n_s32(0x43B40000u);
  v115 = (v113 - 336);
  *v115 = 0u;
  v115[1] = 0u;
  v115[2] = 0u;
  *(v113 - 256) = 0u;
  *(v113 - 240) = xmmword_245A01E80;
  *(v113 - 224) = 0u;
  *(v113 - 208) = xmmword_245A01E80;
  IKString::assign((v113 - 288), &unk_245A04BAE, 0);
  *(v113 - 264) = -1;
  FIK::MoCapBone::MoCapBone(&v176, *(a2 + 16));
  FIK::IKArray<FIK::MoCapBone>::push_back<FIK::MoCapBone,void>((a2 + 208), &v176);
  FIK::IKArray<IKString>::~IKArray(v206);
  if (v204)
  {
    (*(*v205 + 24))(v205, v203, 0, 8);
    v203 = 0;
    v204 = 0;
  }

  if (v180)
  {
    (*(**v181 + 24))(*v181, v179, 0, 8);
    v179 = 0;
    v180 = 0;
  }

  if (v177)
  {
    (*(*v178 + 24))(v178, *(&v176 + 1), 0, 8);
  }

  v116 = *(a2 + 224) + 544 * *(a2 + 208);
  *(v116 - 190) = 0;
  *(v116 - 188) = 0;
  *(v116 - 192) = 0;
  *(v116 - 180) = 0x3DF5C28F3DCCCCCDLL;
  *(v116 - 184) = 0;
  *(v116 - 172) = 5;
  *(v116 - 544) = -4294967275;
  IKString::assign((v116 - 536), "neck_4_joint", 0xC);
  IKString::assign((v116 - 512), "neck_3_joint", 0xC);
  *(v116 - 464) = xmmword_245A04270;
  *(v116 - 480) = xmmword_245A04280;
  v117 = v116 - 448;
  *v117 = 16843009;
  *(v117 + 3) = 16843009;
  *(v116 - 437) = 0;
  *(v116 - 432) = xmmword_245A04290;
  *(v116 - 416) = 0x3F80000000000000;
  *(v116 - 400) = v175;
  *(v116 - 384) = v175;
  *(v116 - 368) = vdupq_n_s32(0xC3B40000);
  *(v116 - 352) = vdupq_n_s32(0x43B40000u);
  v118 = (v116 - 336);
  *v118 = 0u;
  v118[1] = 0u;
  v118[2] = 0u;
  *(v116 - 256) = 0u;
  *(v116 - 240) = xmmword_245A01E80;
  *(v116 - 224) = 0u;
  *(v116 - 208) = xmmword_245A01E80;
  IKString::assign((v116 - 288), &unk_245A04BAE, 0);
  *(v116 - 264) = -1;
  FIK::MoCapBone::MoCapBone(&v176, *(a2 + 16));
  FIK::IKArray<FIK::MoCapBone>::push_back<FIK::MoCapBone,void>((a2 + 208), &v176);
  FIK::IKArray<IKString>::~IKArray(v206);
  if (v204)
  {
    (*(*v205 + 24))(v205, v203, 0, 8);
    v203 = 0;
    v204 = 0;
  }

  if (v180)
  {
    (*(**v181 + 24))(*v181, v179, 0, 8);
    v179 = 0;
    v180 = 0;
  }

  if (v177)
  {
    (*(*v178 + 24))(v178, *(&v176 + 1), 0, 8);
  }

  v119 = *(a2 + 224) + 544 * *(a2 + 208);
  *(v119 - 190) = 0;
  *(v119 - 188) = 0;
  *(v119 - 192) = 1;
  *(v119 - 180) = 0x3DF5C28F3DCCCCCDLL;
  *(v119 - 184) = 1;
  *(v119 - 172) = 5;
  *(v119 - 544) = -4294967274;
  IKString::assign((v119 - 536), "head_joint", 0xA);
  IKString::assign((v119 - 512), "neck_4_joint", 0xC);
  *(v119 - 464) = xmmword_245A042A0;
  *(v119 - 480) = xmmword_245A042B0;
  *(v119 - 448) = 16843009;
  *(v119 - 444) = 256;
  *(v119 - 442) = 1;
  v120 = v119 - 441;
  *v120 = 0;
  *(v120 + 4) = 0;
  *(v119 - 432) = xmmword_245A042C0;
  *(v119 - 416) = 0x3F80000000000000;
  *(v119 - 400) = v175;
  *(v119 - 384) = v175;
  *(v119 - 368) = vdupq_n_s32(0xC3B40000);
  *(v119 - 352) = vdupq_n_s32(0x43B40000u);
  v121 = (v119 - 336);
  *v121 = 0u;
  v121[1] = 0u;
  v121[2] = 0u;
  *(v119 - 256) = 0u;
  *(v119 - 240) = xmmword_245A01E80;
  *(v119 - 224) = 0u;
  *(v119 - 208) = xmmword_245A01E80;
  IKString::assign((v119 - 288), "Atlas", 5);
  *(v119 - 264) = -1;
  FIK::MoCapBone::MoCapBone(&v176, *(a2 + 16));
  FIK::IKArray<FIK::MoCapBone>::push_back<FIK::MoCapBone,void>((a2 + 208), &v176);
  FIK::IKArray<IKString>::~IKArray(v206);
  if (v204)
  {
    (*(*v205 + 24))(v205, v203, 0, 8);
    v203 = 0;
    v204 = 0;
  }

  if (v180)
  {
    (*(**v181 + 24))(*v181, v179, 0, 8);
    v179 = 0;
    v180 = 0;
  }

  if (v177)
  {
    (*(*v178 + 24))(v178, *(&v176 + 1), 0, 8);
  }

  v122 = *(a2 + 224) + 544 * *(a2 + 208);
  *(v122 - 190) = 0;
  *(v122 - 188) = 0;
  *(v122 - 192) = 0;
  *(v122 - 180) = 0x3DF5C28F3DCCCCCDLL;
  *(v122 - 184) = 0;
  *(v122 - 172) = 5;
  *(v122 - 544) = -4294967273;
  IKString::assign((v122 - 536), "left_shoulder_1_joint", 0x15);
  IKString::assign((v122 - 512), "spine_7_joint", 0xD);
  *(v122 - 464) = xmmword_245A042D0;
  *(v122 - 480) = xmmword_245A042E0;
  *(v122 - 448) = 1;
  v123 = v122 - 446;
  v124 = v122 - 441;
  *v123 = 16843009;
  *(v123 + 4) = 1;
  *v124 = 0;
  *(v124 + 4) = 0;
  *(v122 - 432) = xmmword_245A042F0;
  *(v122 - 416) = 0x3F80000000000000;
  *(v122 - 400) = v175;
  *(v122 - 384) = xmmword_245A04300;
  *(v122 - 368) = vdupq_n_s32(0xC3B40000);
  *(v122 - 352) = vdupq_n_s32(0x43B40000u);
  v125 = (v122 - 336);
  *v125 = 0u;
  v125[1] = 0u;
  v125[2] = 0u;
  *(v122 - 256) = 0u;
  *(v122 - 240) = xmmword_245A01E80;
  *(v122 - 224) = 0u;
  *(v122 - 208) = xmmword_245A01E80;
  IKString::assign((v122 - 288), &unk_245A04BAE, 0);
  *(v122 - 264) = -1;
  FIK::MoCapBone::MoCapBone(&v176, *(a2 + 16));
  FIK::IKArray<FIK::MoCapBone>::push_back<FIK::MoCapBone,void>((a2 + 208), &v176);
  FIK::IKArray<IKString>::~IKArray(v206);
  if (v204)
  {
    (*(*v205 + 24))(v205, v203, 0, 8);
    v203 = 0;
    v204 = 0;
  }

  if (v180)
  {
    (*(**v181 + 24))(*v181, v179, 0, 8);
    v179 = 0;
    v180 = 0;
  }

  if (v177)
  {
    (*(*v178 + 24))(v178, *(&v176 + 1), 0, 8);
  }

  v126 = *(a2 + 224) + 544 * *(a2 + 208);
  *(v126 - 190) = 0;
  *(v126 - 188) = 0;
  *(v126 - 192) = 1;
  *(v126 - 180) = 0x3DF5C28F3DCCCCCDLL;
  *(v126 - 184) = 1;
  *(v126 - 172) = 5;
  *(v126 - 544) = -4294967272;
  IKString::assign((v126 - 536), "left_arm_joint", 0xE);
  IKString::assign((v126 - 512), "left_shoulder_1_joint", 0x15);
  *(v126 - 464) = xmmword_245A04310;
  *(v126 - 480) = xmmword_245A04320;
  v127 = v126 - 448;
  *v127 = 16843009;
  *(v127 + 3) = 16843009;
  *(v126 - 437) = 0;
  *(v126 - 432) = xmmword_245A04330;
  *(v126 - 416) = 0x3F80000000000000;
  *(v126 - 400) = v175;
  *(v126 - 384) = xmmword_245A04340;
  *(v126 - 368) = vdupq_n_s32(0xC3B40000);
  *(v126 - 352) = vdupq_n_s32(0x43B40000u);
  v128 = (v126 - 336);
  *v128 = 0u;
  v128[1] = 0u;
  v128[2] = 0u;
  *(v126 - 256) = 0u;
  *(v126 - 240) = xmmword_245A01E80;
  *(v126 - 224) = 0u;
  *(v126 - 208) = xmmword_245A01E80;
  IKString::assign((v126 - 288), "LeftShoulder", 0xC);
  *(v126 - 264) = -1;
  FIK::MoCapBone::MoCapBone(&v176, *(a2 + 16));
  FIK::IKArray<FIK::MoCapBone>::push_back<FIK::MoCapBone,void>((a2 + 208), &v176);
  FIK::IKArray<IKString>::~IKArray(v206);
  if (v204)
  {
    (*(*v205 + 24))(v205, v203, 0, 8);
    v203 = 0;
    v204 = 0;
  }

  if (v180)
  {
    (*(**v181 + 24))(*v181, v179, 0, 8);
    v179 = 0;
    v180 = 0;
  }

  if (v177)
  {
    (*(*v178 + 24))(v178, *(&v176 + 1), 0, 8);
  }

  v129 = *(a2 + 224) + 544 * *(a2 + 208);
  *(v129 - 190) = 0;
  *(v129 - 188) = 0;
  *(v129 - 192) = 1;
  *(v129 - 180) = 0x3DF5C28F3DCCCCCDLL;
  *(v129 - 184) = 1;
  *(v129 - 172) = 5;
  *(v129 - 544) = -4294967271;
  IKString::assign((v129 - 536), "left_forearm_joint", 0x12);
  IKString::assign((v129 - 512), "left_arm_joint", 0xE);
  *(v129 - 464) = xmmword_245A04350;
  *(v129 - 480) = xmmword_245A04360;
  v130 = v129 - 448;
  *v130 = 16843009;
  *(v130 + 3) = 16843009;
  *(v129 - 437) = 0;
  *(v129 - 432) = xmmword_245A04370;
  *(v129 - 416) = 0x3F80000000000000;
  *(v129 - 400) = v175;
  *(v129 - 384) = xmmword_245A04380;
  *(v129 - 368) = vdupq_n_s32(0xC3B40000);
  *(v129 - 352) = vdupq_n_s32(0x43B40000u);
  v131 = (v129 - 336);
  *v131 = 0u;
  v131[1] = 0u;
  v131[2] = 0u;
  *(v129 - 256) = 0u;
  *(v129 - 240) = xmmword_245A01E80;
  *(v129 - 224) = 0u;
  *(v129 - 208) = xmmword_245A01E80;
  IKString::assign((v129 - 288), "LeftElbow", 9);
  *(v129 - 264) = -1;
  FIK::MoCapBone::MoCapBone(&v176, *(a2 + 16));
  FIK::IKArray<FIK::MoCapBone>::push_back<FIK::MoCapBone,void>((a2 + 208), &v176);
  FIK::IKArray<IKString>::~IKArray(v206);
  if (v204)
  {
    (*(*v205 + 24))(v205, v203, 0, 8);
    v203 = 0;
    v204 = 0;
  }

  if (v180)
  {
    (*(**v181 + 24))(*v181, v179, 0, 8);
    v179 = 0;
    v180 = 0;
  }

  if (v177)
  {
    (*(*v178 + 24))(v178, *(&v176 + 1), 0, 8);
  }

  v132 = *(a2 + 224) + 544 * *(a2 + 208);
  *(v132 - 190) = 0;
  *(v132 - 188) = 0;
  *(v132 - 192) = 1;
  *(v132 - 180) = 0x3DF5C28F3DCCCCCDLL;
  *(v132 - 184) = 1;
  *(v132 - 172) = 5;
  *(v132 - 544) = -4294967270;
  IKString::assign((v132 - 536), "left_hand_joint", 0xF);
  IKString::assign((v132 - 512), "left_forearm_joint", 0x12);
  *(v132 - 464) = xmmword_245A04390;
  *(v132 - 480) = xmmword_245A043A0;
  *(v132 - 448) = 16843009;
  *(v132 - 444) = 256;
  *(v132 - 442) = 1;
  v133 = v132 - 441;
  *v133 = 0;
  *(v133 + 4) = 0;
  *(v132 - 432) = xmmword_245A022E0;
  *(v132 - 416) = 0x3F80000000000000;
  *(v132 - 400) = v175;
  *(v132 - 384) = vdupq_n_s32(0x3DCCCCCDu);
  *(v132 - 368) = vdupq_n_s32(0xC3B40000);
  *(v132 - 352) = vdupq_n_s32(0x43B40000u);
  v134 = (v132 - 336);
  *v134 = 0u;
  v134[1] = 0u;
  v134[2] = 0u;
  *(v132 - 256) = 0u;
  *(v132 - 240) = xmmword_245A01E80;
  *(v132 - 224) = 0u;
  *(v132 - 208) = xmmword_245A01E80;
  IKString::assign((v132 - 288), "LeftWrist", 9);
  *(v132 - 264) = -1;
  FIK::MoCapBone::MoCapBone(&v176, *(a2 + 16));
  FIK::IKArray<FIK::MoCapBone>::push_back<FIK::MoCapBone,void>((a2 + 208), &v176);
  FIK::IKArray<IKString>::~IKArray(v206);
  if (v204)
  {
    (*(*v205 + 24))(v205, v203, 0, 8);
    v203 = 0;
    v204 = 0;
  }

  if (v180)
  {
    (*(**v181 + 24))(*v181, v179, 0, 8);
    v179 = 0;
    v180 = 0;
  }

  if (v177)
  {
    (*(*v178 + 24))(v178, *(&v176 + 1), 0, 8);
  }

  v135 = *(a2 + 224) + 544 * *(a2 + 208);
  *(v135 - 190) = 0;
  *(v135 - 188) = 0;
  *(v135 - 192) = 0;
  *(v135 - 180) = 0x3DF5C28F3DCCCCCDLL;
  *(v135 - 184) = 0;
  *(v135 - 172) = 5;
  *(v135 - 544) = -4294967269;
  IKString::assign((v135 - 536), "right_shoulder_1_joint", 0x16);
  IKString::assign((v135 - 512), "spine_7_joint", 0xD);
  *(v135 - 464) = xmmword_245A043B0;
  *(v135 - 480) = xmmword_245A043C0;
  *(v135 - 448) = 1;
  v136 = v135 - 446;
  v137 = v135 - 441;
  *v136 = 16843009;
  *(v136 + 4) = 1;
  *v137 = 0;
  *(v137 + 4) = 0;
  *(v135 - 432) = xmmword_245A042F0;
  *(v135 - 416) = 0x3F80000000000000;
  *(v135 - 400) = v175;
  *(v135 - 384) = xmmword_245A04300;
  *(v135 - 368) = vdupq_n_s32(0xC3B40000);
  *(v135 - 352) = vdupq_n_s32(0x43B40000u);
  v138 = (v135 - 336);
  *v138 = 0u;
  v138[1] = 0u;
  v138[2] = 0u;
  *(v135 - 256) = 0u;
  *(v135 - 240) = xmmword_245A01E80;
  *(v135 - 224) = 0u;
  *(v135 - 208) = xmmword_245A01E80;
  IKString::assign((v135 - 288), &unk_245A04BAE, 0);
  *(v135 - 264) = -1;
  FIK::MoCapBone::MoCapBone(&v176, *(a2 + 16));
  FIK::IKArray<FIK::MoCapBone>::push_back<FIK::MoCapBone,void>((a2 + 208), &v176);
  FIK::IKArray<IKString>::~IKArray(v206);
  if (v204)
  {
    (*(*v205 + 24))(v205, v203, 0, 8);
    v203 = 0;
    v204 = 0;
  }

  if (v180)
  {
    (*(**v181 + 24))(*v181, v179, 0, 8);
    v179 = 0;
    v180 = 0;
  }

  if (v177)
  {
    (*(*v178 + 24))(v178, *(&v176 + 1), 0, 8);
  }

  v139 = *(a2 + 224) + 544 * *(a2 + 208);
  *(v139 - 190) = 0;
  *(v139 - 188) = 0;
  *(v139 - 192) = 1;
  *(v139 - 180) = 0x3DF5C28F3DCCCCCDLL;
  *(v139 - 184) = 1;
  *(v139 - 172) = 5;
  *(v139 - 544) = -4294967268;
  IKString::assign((v139 - 536), "right_arm_joint", 0xF);
  IKString::assign((v139 - 512), "right_shoulder_1_joint", 0x16);
  *(v139 - 464) = xmmword_245A043D0;
  *(v139 - 480) = xmmword_245A043E0;
  v140 = v139 - 448;
  *v140 = 16843009;
  *(v140 + 3) = 16843009;
  *(v139 - 437) = 0;
  *(v139 - 432) = xmmword_245A043F0;
  *(v139 - 416) = 0x3F80000000000000;
  *(v139 - 400) = v175;
  *(v139 - 384) = xmmword_245A04340;
  *(v139 - 368) = vdupq_n_s32(0xC3B40000);
  *(v139 - 352) = vdupq_n_s32(0x43B40000u);
  v141 = (v139 - 336);
  *v141 = 0u;
  v141[1] = 0u;
  v141[2] = 0u;
  *(v139 - 256) = 0u;
  *(v139 - 240) = xmmword_245A01E80;
  *(v139 - 224) = 0u;
  *(v139 - 208) = xmmword_245A01E80;
  IKString::assign((v139 - 288), "RightShoulder", 0xD);
  *(v139 - 264) = -1;
  FIK::MoCapBone::MoCapBone(&v176, *(a2 + 16));
  FIK::IKArray<FIK::MoCapBone>::push_back<FIK::MoCapBone,void>((a2 + 208), &v176);
  FIK::IKArray<IKString>::~IKArray(v206);
  if (v204)
  {
    (*(*v205 + 24))(v205, v203, 0, 8);
    v203 = 0;
    v204 = 0;
  }

  if (v180)
  {
    (*(**v181 + 24))(*v181, v179, 0, 8);
    v179 = 0;
    v180 = 0;
  }

  if (v177)
  {
    (*(*v178 + 24))(v178, *(&v176 + 1), 0, 8);
  }

  v142 = *(a2 + 224) + 544 * *(a2 + 208);
  *(v142 - 190) = 0;
  *(v142 - 188) = 0;
  *(v142 - 192) = 1;
  *(v142 - 180) = 0x3DF5C28F3DCCCCCDLL;
  *(v142 - 184) = 1;
  *(v142 - 172) = 5;
  *(v142 - 544) = -4294967267;
  IKString::assign((v142 - 536), "right_forearm_joint", 0x13);
  IKString::assign((v142 - 512), "right_arm_joint", 0xF);
  *(v142 - 464) = xmmword_245A04400;
  *(v142 - 480) = xmmword_245A04410;
  v143 = v142 - 448;
  *v143 = 16843009;
  *(v143 + 3) = 16843009;
  *(v142 - 437) = 0;
  *(v142 - 432) = xmmword_245A04420;
  *(v142 - 416) = 0x3F80000000000000;
  *(v142 - 400) = v175;
  *(v142 - 384) = xmmword_245A04380;
  *(v142 - 368) = vdupq_n_s32(0xC3B40000);
  *(v142 - 352) = vdupq_n_s32(0x43B40000u);
  v144 = (v142 - 336);
  *v144 = 0u;
  v144[1] = 0u;
  v144[2] = 0u;
  *(v142 - 256) = 0u;
  *(v142 - 240) = xmmword_245A01E80;
  *(v142 - 224) = 0u;
  *(v142 - 208) = xmmword_245A01E80;
  IKString::assign((v142 - 288), "RightElbow", 0xA);
  *(v142 - 264) = -1;
  FIK::MoCapBone::MoCapBone(&v176, *(a2 + 16));
  FIK::IKArray<FIK::MoCapBone>::push_back<FIK::MoCapBone,void>((a2 + 208), &v176);
  FIK::IKArray<IKString>::~IKArray(v206);
  if (v204)
  {
    (*(*v205 + 24))(v205, v203, 0, 8);
    v203 = 0;
    v204 = 0;
  }

  if (v180)
  {
    (*(**v181 + 24))(*v181, v179, 0, 8);
    v179 = 0;
    v180 = 0;
  }

  if (v177)
  {
    (*(*v178 + 24))(v178, *(&v176 + 1), 0, 8);
  }

  v145 = *(a2 + 224) + 544 * *(a2 + 208);
  *(v145 - 190) = 0;
  *(v145 - 188) = 0;
  *(v145 - 192) = 1;
  *(v145 - 180) = 0x3DF5C28F3DCCCCCDLL;
  *(v145 - 184) = 1;
  *(v145 - 172) = 5;
  *(v145 - 544) = -4294967266;
  IKString::assign((v145 - 536), "right_hand_joint", 0x10);
  IKString::assign((v145 - 512), "right_forearm_joint", 0x13);
  *(v145 - 464) = xmmword_245A04430;
  *(v145 - 480) = xmmword_245A04440;
  *(v145 - 448) = 16843009;
  *(v145 - 444) = 256;
  *(v145 - 442) = 1;
  v146 = v145 - 441;
  *v146 = 0;
  *(v146 + 4) = 0;
  *(v145 - 432) = xmmword_245A022E0;
  *(v145 - 416) = 0x3F80000000000000;
  *(v145 - 400) = v175;
  *(v145 - 384) = vdupq_n_s32(0x3DCCCCCDu);
  *(v145 - 368) = vdupq_n_s32(0xC3B40000);
  *(v145 - 352) = vdupq_n_s32(0x43B40000u);
  v147 = (v145 - 336);
  *v147 = 0u;
  v147[1] = 0u;
  v147[2] = 0u;
  *(v145 - 256) = 0u;
  *(v145 - 240) = xmmword_245A01E80;
  *(v145 - 224) = 0u;
  *(v145 - 208) = xmmword_245A01E80;
  IKString::assign((v145 - 288), "RightWrist", 0xA);
  *(v145 - 264) = -1;
  FIK::IKArray<FIK::RigBoneBase>::reserve(a2 + 240, 0xAuLL);
  v148 = *(a2 + 16);
  v176 = 0xFFFFFFFFFFFFFFFFLL;
  v177 = 0;
  v178 = v148;
  v179 = 0;
  v180 = 0;
  *v181 = v148;
  v183 = 0;
  v184 = 0;
  v185 = xmmword_245A01E80;
  FIK::IKArray<FIK::RigBoneBase>::push_back<FIK::RigBoneBase,void>((a2 + 240), &v176);
  if (v180)
  {
    (*(**v181 + 24))(*v181, v179, 0, 8);
    v179 = 0;
    v180 = 0;
  }

  if (v177)
  {
    (*(*v178 + 24))(v178, *(&v176 + 1), 0, 8);
  }

  v149 = *(a2 + 256) + 96 * *(a2 + 240);
  IKString::assign((v149 - 88), "virtualHips", 0xB);
  IKString::assign((v149 - 64), &unk_245A04BAE, 0);
  *(v149 - 32) = xmmword_245A04450;
  *(v149 - 16) = xmmword_245A01E80;
  v150 = *(a2 + 16);
  v176 = 0xFFFFFFFFFFFFFFFFLL;
  v177 = 0;
  v178 = v150;
  v179 = 0;
  v180 = 0;
  *v181 = v150;
  v183 = 0;
  v184 = 0;
  v185 = xmmword_245A01E80;
  FIK::IKArray<FIK::RigBoneBase>::push_back<FIK::RigBoneBase,void>((a2 + 240), &v176);
  if (v180)
  {
    (*(**v181 + 24))(*v181, v179, 0, 8);
    v179 = 0;
    v180 = 0;
  }

  if (v177)
  {
    (*(*v178 + 24))(v178, *(&v176 + 1), 0, 8);
  }

  v151 = *(a2 + 256) + 96 * *(a2 + 240);
  IKString::assign((v151 - 88), "MidShoulder", 0xB);
  IKString::assign((v151 - 64), &unk_245A04BAE, 0);
  *(v151 - 32) = xmmword_245A04460;
  *(v151 - 16) = xmmword_245A01E80;
  v152 = *(a2 + 16);
  v176 = 0xFFFFFFFFFFFFFFFFLL;
  v177 = 0;
  v178 = v152;
  v179 = 0;
  v180 = 0;
  *v181 = v152;
  v183 = 0;
  v184 = 0;
  v185 = xmmword_245A01E80;
  FIK::IKArray<FIK::RigBoneBase>::push_back<FIK::RigBoneBase,void>((a2 + 240), &v176);
  if (v180)
  {
    (*(**v181 + 24))(*v181, v179, 0, 8);
    v179 = 0;
    v180 = 0;
  }

  if (v177)
  {
    (*(*v178 + 24))(v178, *(&v176 + 1), 0, 8);
  }

  v153 = *(a2 + 256) + 96 * *(a2 + 240);
  IKString::assign((v153 - 88), "Atlas", 5);
  IKString::assign((v153 - 64), &unk_245A04BAE, 0);
  *(v153 - 32) = xmmword_245A04470;
  *(v153 - 16) = xmmword_245A01E80;
  v154 = *(a2 + 16);
  v176 = 0xFFFFFFFFFFFFFFFFLL;
  v177 = 0;
  v178 = v154;
  v179 = 0;
  v180 = 0;
  *v181 = v154;
  v183 = 0;
  v184 = 0;
  v185 = xmmword_245A01E80;
  FIK::IKArray<FIK::RigBoneBase>::push_back<FIK::RigBoneBase,void>((a2 + 240), &v176);
  if (v180)
  {
    (*(**v181 + 24))(*v181, v179, 0, 8);
    v179 = 0;
    v180 = 0;
  }

  if (v177)
  {
    (*(*v178 + 24))(v178, *(&v176 + 1), 0, 8);
  }

  v155 = *(a2 + 256) + 96 * *(a2 + 240);
  IKString::assign((v155 - 88), "LeftShoulder", 0xC);
  IKString::assign((v155 - 64), &unk_245A04BAE, 0);
  *(v155 - 32) = xmmword_245A04480;
  *(v155 - 16) = xmmword_245A01E80;
  v156 = *(a2 + 16);
  v176 = 0xFFFFFFFFFFFFFFFFLL;
  v177 = 0;
  v178 = v156;
  v179 = 0;
  v180 = 0;
  *v181 = v156;
  v183 = 0;
  v184 = 0;
  v185 = xmmword_245A01E80;
  FIK::IKArray<FIK::RigBoneBase>::push_back<FIK::RigBoneBase,void>((a2 + 240), &v176);
  if (v180)
  {
    (*(**v181 + 24))(*v181, v179, 0, 8);
    v179 = 0;
    v180 = 0;
  }

  if (v177)
  {
    (*(*v178 + 24))(v178, *(&v176 + 1), 0, 8);
  }

  v157 = *(a2 + 256) + 96 * *(a2 + 240);
  IKString::assign((v157 - 88), "LeftElbow", 9);
  IKString::assign((v157 - 64), &unk_245A04BAE, 0);
  *(v157 - 32) = 0u;
  *(v157 - 16) = xmmword_245A01E80;
  v158 = *(a2 + 16);
  v176 = 0xFFFFFFFFFFFFFFFFLL;
  v177 = 0;
  v178 = v158;
  v179 = 0;
  v180 = 0;
  *v181 = v158;
  v183 = 0;
  v184 = 0;
  v185 = xmmword_245A01E80;
  FIK::IKArray<FIK::RigBoneBase>::push_back<FIK::RigBoneBase,void>((a2 + 240), &v176);
  if (v180)
  {
    (*(**v181 + 24))(*v181, v179, 0, 8);
    v179 = 0;
    v180 = 0;
  }

  if (v177)
  {
    (*(*v178 + 24))(v178, *(&v176 + 1), 0, 8);
  }

  v159 = *(a2 + 256) + 96 * *(a2 + 240);
  IKString::assign((v159 - 88), "LeftWrist", 9);
  IKString::assign((v159 - 64), &unk_245A04BAE, 0);
  *(v159 - 32) = xmmword_245A04490;
  *(v159 - 16) = xmmword_245A01E80;
  v160 = *(a2 + 16);
  v176 = 0xFFFFFFFFFFFFFFFFLL;
  v177 = 0;
  v178 = v160;
  v179 = 0;
  v180 = 0;
  *v181 = v160;
  v183 = 0;
  v184 = 0;
  v185 = xmmword_245A01E80;
  FIK::IKArray<FIK::RigBoneBase>::push_back<FIK::RigBoneBase,void>((a2 + 240), &v176);
  if (v180)
  {
    (*(**v181 + 24))(*v181, v179, 0, 8);
    v179 = 0;
    v180 = 0;
  }

  if (v177)
  {
    (*(*v178 + 24))(v178, *(&v176 + 1), 0, 8);
  }

  v161 = *(a2 + 256) + 96 * *(a2 + 240);
  IKString::assign((v161 - 88), "RightShoulder", 0xD);
  IKString::assign((v161 - 64), &unk_245A04BAE, 0);
  *(v161 - 32) = xmmword_245A044A0;
  *(v161 - 16) = xmmword_245A01E80;
  v162 = *(a2 + 16);
  v176 = 0xFFFFFFFFFFFFFFFFLL;
  v177 = 0;
  v178 = v162;
  v179 = 0;
  v180 = 0;
  *v181 = v162;
  v183 = 0;
  v184 = 0;
  v185 = xmmword_245A01E80;
  FIK::IKArray<FIK::RigBoneBase>::push_back<FIK::RigBoneBase,void>((a2 + 240), &v176);
  if (v180)
  {
    (*(**v181 + 24))(*v181, v179, 0, 8);
    v179 = 0;
    v180 = 0;
  }

  if (v177)
  {
    (*(*v178 + 24))(v178, *(&v176 + 1), 0, 8);
  }

  v163 = *(a2 + 256) + 96 * *(a2 + 240);
  IKString::assign((v163 - 88), "RightElbow", 0xA);
  IKString::assign((v163 - 64), &unk_245A04BAE, 0);
  *(v163 - 32) = 0u;
  *(v163 - 16) = xmmword_245A01E80;
  v164 = *(a2 + 16);
  v176 = 0xFFFFFFFFFFFFFFFFLL;
  v177 = 0;
  v178 = v164;
  v179 = 0;
  v180 = 0;
  *v181 = v164;
  v183 = 0;
  v184 = 0;
  v185 = xmmword_245A01E80;
  FIK::IKArray<FIK::RigBoneBase>::push_back<FIK::RigBoneBase,void>((a2 + 240), &v176);
  if (v180)
  {
    (*(**v181 + 24))(*v181, v179, 0, 8);
    v179 = 0;
    v180 = 0;
  }

  if (v177)
  {
    (*(*v178 + 24))(v178, *(&v176 + 1), 0, 8);
  }

  v165 = *(a2 + 256) + 96 * *(a2 + 240);
  IKString::assign((v165 - 88), "RightWrist", 0xA);
  IKString::assign((v165 - 64), &unk_245A04BAE, 0);
  *(v165 - 32) = xmmword_245A044B0;
  *(v165 - 16) = xmmword_245A01E80;
  v166 = *(a2 + 16);
  v176 = 0xFFFFFFFFFFFFFFFFLL;
  v177 = 0;
  v178 = v166;
  v179 = 0;
  v180 = 0;
  *v181 = v166;
  v183 = 0;
  v184 = 0;
  v185 = xmmword_245A01E80;
  FIK::IKArray<FIK::RigBoneBase>::push_back<FIK::RigBoneBase,void>((a2 + 240), &v176);
  if (v180)
  {
    (*(**v181 + 24))(*v181, v179, 0, 8);
    v179 = 0;
    v180 = 0;
  }

  if (v177)
  {
    (*(*v178 + 24))(v178, *(&v176 + 1), 0, 8);
  }

  v167 = *(a2 + 256) + 96 * *(a2 + 240);
  IKString::assign((v167 - 88), "hmd2world", 9);
  IKString::assign((v167 - 64), &unk_245A04BAE, 0);
  *(v167 - 32) = 0u;
  *(v167 - 16) = xmmword_245A01EA0;
  *(a2 + 272) = 0u;
  *(a2 + 288) = xmmword_245A01E80;
  *(a2 + 304) = 1;
  *(a2 + 308) = 1120403456;
  result = FIK::Serialisation::fixUpRigIndices(a2);
  v169 = *(a2 + 176);
  if (v169)
  {
    v170 = v169 << 8;
    v171 = (*(a2 + 192) + 208);
    do
    {
      if ((v171[-1].i8[12] & 1) == 0 && (v171[-1].i8[13] & 1) == 0)
      {
        *v171 = vdivq_f32(*v171, vdupq_lane_s32(*(a2 + 308), 0));
      }

      v171 += 16;
      v170 -= 256;
    }

    while (v170);
  }

  return result;
}

uint64_t FIK::IKArray<FIK::MoCapTask>::push_back<FIK::MoCapTask,void>(void *a1, uint64_t a2)
{
  FIK::IKArray<FIK::MoCapTask>::reserve(a1, *a1 + 1);
  result = FIK::MoCapTask::MoCapTask(a1[2] + (*a1 << 8), a2, a1[3]);
  ++*a1;
  return result;
}

uint64_t FIK::IKArray<FIK::MoCapBone>::push_back<FIK::MoCapBone,void>(void *a1, uint64_t a2)
{
  FIK::IKArray<FIK::MoCapBone>::reserve(a1, *a1 + 1);
  result = FIK::MoCapBone::MoCapBone(a1[2] + 544 * *a1, a2, a1[3]);
  ++*a1;
  return result;
}

uint64_t FIK::IKArray<FIK::RigBoneBase>::push_back<FIK::RigBoneBase,void>(void *a1, uint64_t a2)
{
  FIK::IKArray<FIK::RigBoneBase>::reserve(a1, *a1 + 1);
  result = FIK::RigBoneBase::RigBoneBase(a1[2] + 96 * *a1, a2, a1[3]);
  ++*a1;
  return result;
}

uint64_t FIK::MoCapTask::MoCapTask(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = FIK::RigTask::RigTask(a1, a2, a3);
  IKString::IKString((v6 + 176), (a2 + 176), a3);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 204) = *(a2 + 204);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 240) = *(a2 + 240);
  return a1;
}

uint64_t FIK::MoCapBone::MoCapBone(uint64_t a1, uint64_t a2, unint64_t a3)
{
  FIK::RigBone::RigBone(a1, a2, a3);
  IKString::IKString((v6 + 256), (a2 + 256), a3);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 360) = *(a2 + 360);
  FIK::SelfPenetrationBone::SelfPenetrationBone(a1 + 384, a2 + 384, a3);
  return a1;
}

__n128 FIK::RigBone::RigBone(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = FIK::RigBoneBase::RigBoneBase(a1, a2, a3);
  *(v4 + 96) = *(a2 + 96);
  v5 = *(a2 + 97);
  *(v4 + 99) = *(a2 + 99);
  *(v4 + 97) = v5;
  *(v4 + 100) = *(a2 + 100);
  *(v4 + 104) = *(a2 + 104);
  v6 = *(a2 + 105);
  *(v4 + 107) = *(a2 + 107);
  *(v4 + 105) = v6;
  *(v4 + 108) = *(a2 + 108);
  *(v4 + 112) = *(a2 + 112);
  *(v4 + 128) = *(a2 + 128);
  *(v4 + 132) = *(a2 + 132);
  *(v4 + 144) = *(a2 + 144);
  *(v4 + 160) = *(a2 + 160);
  *(v4 + 176) = *(a2 + 176);
  *(v4 + 192) = *(a2 + 192);
  *(v4 + 208) = *(a2 + 208);
  *(v4 + 224) = *(a2 + 224);
  result = *(a2 + 240);
  *(v4 + 240) = result;
  return result;
}

uint64_t FIK::SelfPenetrationBone::SelfPenetrationBone(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 16) = *(a2 + 16);
  FIK::IKArray<IKString>::IKArray((a1 + 32), (a2 + 32), a3);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  v5 = *(a2 + 152);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = v5;
  return a1;
}

unint64_t *FIK::IKArray<IKString>::IKArray(unint64_t *a1, uint64_t *a2, unint64_t a3)
{
  v5 = FIK::IKArray<IKString>::IKArray(a1, a2);
  if (((*(*v5[3] + 32))(v5[3], a3) & 1) == 0)
  {
    v6 = a1[1];
    if (v6)
    {
      v7 = (*(*a3 + 16))(a3, 24 * v6, 8);
      v8 = v7;
      if (24 * v6)
      {
        bzero(v7, 24 * v6);
      }
    }

    else
    {
      v8 = 0;
    }

    if (*a1)
    {
      v9 = 0;
      v10 = 0;
      do
      {
        v11 = &v8[v9];
        v12 = (a1[2] + v9);
        *v11 = 0;
        *(v11 + 1) = 0;
        *(v11 + 2) = a3;
        v15 = v12;
        v14 = *v12;
        v13 = v15[1];
        if (v13)
        {
          v16 = v14;
        }

        else
        {
          v16 = &unk_245A04BAE;
        }

        IKString::assign(v11, v16, v13);
        ++v10;
        v9 += 24;
      }

      while (v10 < *a1);
    }

    v18 = a1[2];
    v17 = a1[3];
    a1[1] = v6;
    a1[2] = v8;
    a1[3] = a3;
    if (v18)
    {
      (*(*v17 + 24))(v17, v18, 0, 8);
    }
  }

  return a1;
}

FIK::DoubleExponentialPositionFilter *CoreIKDoubleExponentialPositionFilterCreate(FIK *a1, float a2, float a3)
{
  v6 = a2;
  v5 = a3;
  v3 = FIK::defaultAllocator(a1);
  return FIK::Allocator::create<FIK::DoubleExponentialPositionFilter,float &,float &>(v3, &v6, &v5);
}

FIK::DoubleExponentialPositionFilter *FIK::Allocator::create<FIK::DoubleExponentialPositionFilter,float &,float &>(uint64_t a1, float *a2, float *a3)
{
  result = (*(*a1 + 16))(a1, 64, 16);
  if (result)
  {
    return FIK::DoubleExponentialPositionFilter::DoubleExponentialPositionFilter(result, *a2, *a3);
  }

  return result;
}

_UNKNOWN **CoreIKDoubleExponentialPositionFilterDestroy(FIK *a1)
{
  result = FIK::defaultAllocator(a1);
  if (a1)
  {
    v3 = *(*result + 3);

    return v3();
  }

  return result;
}

double CoreIKDoubleExponentialPositionFilterDoFilter(float32x4_t *a1, float32x4_t a2)
{
  a2.i32[3] = 0;
  v3 = a2;
  FIK::DoubleExponentialPositionFilter::filter(a1, &v3, &v4);
  return *v4.i64;
}

_BYTE *CoreIKDoubleExponentialTransformFilterCreate(FIK *a1, float a2, float a3)
{
  v7 = a2;
  v6 = a3;
  v3 = FIK::defaultAllocator(a1);
  v5 = 1;
  return FIK::Allocator::create<FIK::TransformFilter<FIK::DoubleExponentialPositionFilter>,BOOL,float &,float &>(v3, &v5, &v7, &v6);
}

_BYTE *FIK::Allocator::create<FIK::TransformFilter<FIK::DoubleExponentialPositionFilter>,BOOL,float &,float &>(uint64_t a1, char *a2, float *a3, float *a4)
{
  result = (*(*a1 + 16))(a1, 336, 16);
  if (result)
  {
    return FIK::TransformFilter<FIK::DoubleExponentialPositionFilter>::TransformFilter<float const&,float,void>(result, *a2, a3, a4);
  }

  return result;
}

_UNKNOWN **CoreIKDoubleExponentialTransformFilterDestroy(FIK *a1)
{
  result = FIK::defaultAllocator(a1);
  if (a1)
  {
    v3 = *(*result + 3);

    return v3();
  }

  return result;
}

void CoreIKDoubleExponentialTransformFilterSetProperties(_BYTE *a1, float a2, float a3)
{
  v4 = a2;
  v3 = a3;
  FIK::TransformFilter<FIK::DoubleExponentialPositionFilter>::set<float &,float &>(a1, &v4, &v3);
}

void FIK::TransformFilter<FIK::DoubleExponentialPositionFilter>::set<float &,float &>(_BYTE *a1, float *a2, float *a3)
{
  FIK::DoubleExponentialPositionFilter::set(a1, *a2, *a3);
  if (a1[320] == 1)
  {
    v6 = (a1 + 64);
    v7 = 4;
    do
    {
      FIK::DoubleExponentialPositionFilter::set(v6, *a2, *a3);
      v6 = (v6 + 64);
      --v7;
    }

    while (v7);
  }
}

double CoreIKDoubleExponentialTransformFilterDoFilter(float32x4_t *a1, __n128 a2, __n128 a3)
{
  a2.n128_u32[3] = 0;
  v5[0] = a2;
  v5[1] = a3;
  FIK::TransformFilter<FIK::DoubleExponentialPositionFilter>::filter<>(a1, v5, &v4);
  return *v4.i64;
}

uint64_t CoreIKConstraint::setTarget(uint64_t a1)
{
  (**a1)(a1);
  if (*(a1 + 8) != 0)
  {
    return 0;
  }

  v2 = ikinemaLogObject()[1];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    CoreIKConstraint::setTarget(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  return 1;
}

uint64_t CoreIKConstraint::setTargetTranslation(void *a1)
{
  (*(*a1 + 8))(a1);
  if (a1[1])
  {
    return 0;
  }

  v3 = ikinemaLogObject()[1];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    CoreIKConstraint::setTargetTranslation(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  return 1;
}

uint64_t CoreIKConstraint::setTargetOrientation(void *a1)
{
  (*(*a1 + 16))(a1);
  if (a1[2])
  {
    return 0;
  }

  v3 = ikinemaLogObject()[1];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    CoreIKConstraint::setTargetOrientation(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  return 1;
}

void *CoreIKConstraint::getName(CoreIKConstraint *this)
{
  if (*(this + 4))
  {
    return *(this + 3);
  }

  else
  {
    return &unk_245A04BAE;
  }
}

__n128 CoreIKConstraint::getOffset@<Q0>(CoreIKConstraint *this@<X0>, _OWORD *a2@<X8>)
{
  v3 = (*(*this + 32))(this);
  result = *v3;
  v5 = *(v3 + 16);
  *a2 = *v3;
  a2[1] = v5;
  return result;
}

uint64_t CoreIKConstraint::getPositionEnabled(CoreIKConstraint *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(*(v2 + *(*v2 - 264)) + 16);

    return v3();
  }

  else
  {
    v5 = ikinemaLogObject()[1];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      CoreIKConstraint::getPositionEnabled(v5, v6, v7, v8, v9, v10, v11, v12);
    }

    return 0;
  }
}

void CoreIKConstraint::setPositionEnabled(CoreIKConstraint *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(*(v2 + *(*v2 - 264)) + 136);

    v3();
  }

  else
  {
    v4 = ikinemaLogObject()[1];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      CoreIKConstraint::setPositionEnabled(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }
}

uint64_t CoreIKConstraint::getOrientationEnabled(CoreIKConstraint *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(*(v2 + *(*v2 - 264)) + 16);

    return v3();
  }

  else
  {
    v5 = ikinemaLogObject()[1];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      CoreIKConstraint::getOrientationEnabled(v5, v6, v7, v8, v9, v10, v11, v12);
    }

    return 0;
  }
}

void CoreIKConstraint::setOrientationEnabled(CoreIKConstraint *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(*(v2 + *(*v2 - 264)) + 136);

    v3();
  }

  else
  {
    v4 = ikinemaLogObject()[1];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      CoreIKConstraint::setOrientationEnabled(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }
}

uint64_t CoreIKConstraint::getPositionAsPole(CoreIKConstraint *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(*v2 + 400);

    return v3();
  }

  else
  {
    v5 = ikinemaLogObject()[1];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      CoreIKConstraint::getPositionAsPole(v5, v6, v7, v8, v9, v10, v11, v12);
    }

    return 0;
  }
}

void CoreIKConstraint::setPositionAsPole(CoreIKConstraint *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(*v2 + 392);

    v3();
  }

  else
  {
    v4 = ikinemaLogObject()[1];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      CoreIKConstraint::setPositionAsPole(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }
}

uint64_t CoreIKConstraint::getPositionDoFEnabled(CoreIKConstraint *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    LODWORD(v2) = (*(*&v1[*(*v1 - 264)] + 152))(&v1[*(*v1 - 264)], 0);
    (*(*&v1[*(*v1 - 264)] + 152))(&v1[*(*v1 - 264)], 1);
    v2 = v2;
    (*(*&v1[*(*v1 - 264)] + 152))(&v1[*(*v1 - 264)], 2);
  }

  else
  {
    v3 = ikinemaLogObject()[1];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      CoreIKConstraint::getPositionDoFEnabled(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    return 0;
  }

  return v2;
}

void CoreIKConstraint::setPositionDoFEnabled(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(*(v2 + *(*v2 - 264)) + 144);

    v3();
  }

  else
  {
    v4 = ikinemaLogObject()[1];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      CoreIKConstraint::setPositionDoFEnabled(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }
}

uint64_t CoreIKConstraint::getOrientationDoFEnabled(CoreIKConstraint *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    LODWORD(v2) = (*(*&v1[*(*v1 - 264)] + 152))(&v1[*(*v1 - 264)], 0);
    (*(*&v1[*(*v1 - 264)] + 152))(&v1[*(*v1 - 264)], 1);
    v2 = v2;
    (*(*&v1[*(*v1 - 264)] + 152))(&v1[*(*v1 - 264)], 2);
  }

  else
  {
    v3 = ikinemaLogObject()[1];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      CoreIKConstraint::getOrientationDoFEnabled(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    return 0;
  }

  return v2;
}

void CoreIKConstraint::setOrientationDoFEnabled(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(*(v2 + *(*v2 - 264)) + 144);

    v3();
  }

  else
  {
    v4 = ikinemaLogObject()[1];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      CoreIKConstraint::setOrientationDoFEnabled(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }
}

uint64_t CoreIKConstraint::getPositionDepth(CoreIKConstraint *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(*(v2 + *(*v2 - 264)) + 64);

    return v3();
  }

  else
  {
    v5 = ikinemaLogObject()[1];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      CoreIKConstraint::getPositionDepth(v5, v6, v7, v8, v9, v10, v11, v12);
    }

    return 0;
  }
}

void CoreIKConstraint::setPositionDepth(CoreIKConstraint *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(*(v2 + *(*v2 - 264)) + 56);

    v3();
  }

  else
  {
    v4 = ikinemaLogObject()[1];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      CoreIKConstraint::setPositionDepth(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }
}

uint64_t CoreIKConstraint::getOrientationDepth(CoreIKConstraint *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(*(v2 + *(*v2 - 264)) + 64);

    return v3();
  }

  else
  {
    v5 = ikinemaLogObject()[1];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      CoreIKConstraint::getOrientationDepth(v5, v6, v7, v8, v9, v10, v11, v12);
    }

    return 0;
  }
}

void CoreIKConstraint::setOrientationDepth(CoreIKConstraint *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(*(v2 + *(*v2 - 264)) + 56);

    v3();
  }

  else
  {
    v4 = ikinemaLogObject()[1];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      CoreIKConstraint::setOrientationDepth(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }
}

double CoreIKConstraint::getPositionWeight(CoreIKConstraint *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    v2 = (*(*&v1[*(*v1 - 264)] + 88))(&v1[*(*v1 - 264)], 0);
    v15 = LODWORD(v2);
    v3 = (*(*&v1[*(*v1 - 264)] + 88))(&v1[*(*v1 - 264)], 1);
    v14 = LODWORD(v3);
    (*(*&v1[*(*v1 - 264)] + 88))(&v1[*(*v1 - 264)], 2);
    return COERCE_DOUBLE(__PAIR64__(v14, v15));
  }

  else
  {
    v5 = ikinemaLogObject()[1];
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    result = 0.0;
    if (v6)
    {
      CoreIKConstraint::getPositionWeight(v5, v7, v8, v9, v10, v11, v12, v13);
      return 0.0;
    }
  }

  return result;
}

void CoreIKConstraint::setPositionWeight(uint64_t a1, __n128 a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    (*(*&v2[*(*v2 - 264)] + 80))(&v2[*(*v2 - 264)], 0);
    (*(*&v2[*(*v2 - 264)] + 80))(&v2[*(*v2 - 264)], 1, a2.n128_f32[1]);
    v3 = a2;
    v3.n128_u32[0] = a2.n128_u32[2];
    v4 = *(*&v2[*(*v2 - 264)] + 80);

    v4(v3);
  }

  else
  {
    v5 = ikinemaLogObject()[1];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      CoreIKConstraint::setPositionWeight(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }
}

double CoreIKConstraint::getOrientationWeight(CoreIKConstraint *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    v2 = (*(*&v1[*(*v1 - 264)] + 88))(&v1[*(*v1 - 264)], 0);
    v15 = LODWORD(v2);
    v3 = (*(*&v1[*(*v1 - 264)] + 88))(&v1[*(*v1 - 264)], 1);
    v14 = LODWORD(v3);
    (*(*&v1[*(*v1 - 264)] + 88))(&v1[*(*v1 - 264)], 2);
    return COERCE_DOUBLE(__PAIR64__(v14, v15));
  }

  else
  {
    v5 = ikinemaLogObject()[1];
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    result = 0.0;
    if (v6)
    {
      CoreIKConstraint::getOrientationWeight(v5, v7, v8, v9, v10, v11, v12, v13);
      return 0.0;
    }
  }

  return result;
}

void CoreIKConstraint::setOrientationWeight(uint64_t a1, __n128 a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    (*(*&v2[*(*v2 - 264)] + 80))(&v2[*(*v2 - 264)], 0);
    (*(*&v2[*(*v2 - 264)] + 80))(&v2[*(*v2 - 264)], 1, a2.n128_f32[1]);
    v3 = a2;
    v3.n128_u32[0] = a2.n128_u32[2];
    v4 = *(*&v2[*(*v2 - 264)] + 80);

    v4(v3);
  }

  else
  {
    v5 = ikinemaLogObject()[1];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      CoreIKConstraint::setOrientationWeight(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }
}

double CoreIKConstraint::getPositionPrecision(CoreIKConstraint *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    v2 = (*(*&v1[*(*v1 - 264)] + 112))(&v1[*(*v1 - 264)], 0);
    v15 = LODWORD(v2);
    v3 = (*(*&v1[*(*v1 - 264)] + 112))(&v1[*(*v1 - 264)], 1);
    v14 = LODWORD(v3);
    (*(*&v1[*(*v1 - 264)] + 112))(&v1[*(*v1 - 264)], 2);
    return COERCE_DOUBLE(__PAIR64__(v14, v15));
  }

  else
  {
    v5 = ikinemaLogObject()[1];
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    result = 0.0;
    if (v6)
    {
      CoreIKConstraint::getPositionPrecision(v5, v7, v8, v9, v10, v11, v12, v13);
      return 0.0;
    }
  }

  return result;
}

void CoreIKConstraint::setPositionPrecision(uint64_t a1, __n128 a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    (*(*&v2[*(*v2 - 264)] + 104))(&v2[*(*v2 - 264)], 0);
    (*(*&v2[*(*v2 - 264)] + 104))(&v2[*(*v2 - 264)], 1, a2.n128_f32[1]);
    v3 = a2;
    v3.n128_u32[0] = a2.n128_u32[2];
    v4 = *(*&v2[*(*v2 - 264)] + 104);

    v4(v3);
  }

  else
  {
    v5 = ikinemaLogObject()[1];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      CoreIKConstraint::setPositionPrecision(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }
}

double CoreIKConstraint::getOrientationPrecision(CoreIKConstraint *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    v2 = (*(*&v1[*(*v1 - 264)] + 112))(&v1[*(*v1 - 264)], 0);
    v15 = LODWORD(v2);
    v3 = (*(*&v1[*(*v1 - 264)] + 112))(&v1[*(*v1 - 264)], 1);
    v14 = LODWORD(v3);
    (*(*&v1[*(*v1 - 264)] + 112))(&v1[*(*v1 - 264)], 2);
    return COERCE_DOUBLE(__PAIR64__(v14, v15));
  }

  else
  {
    v5 = ikinemaLogObject()[1];
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    result = 0.0;
    if (v6)
    {
      CoreIKConstraint::getOrientationPrecision(v5, v7, v8, v9, v10, v11, v12, v13);
      return 0.0;
    }
  }

  return result;
}

void CoreIKConstraint::setOrientationPrecision(uint64_t a1, __n128 a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    (*(*&v2[*(*v2 - 264)] + 104))(&v2[*(*v2 - 264)], 0);
    (*(*&v2[*(*v2 - 264)] + 104))(&v2[*(*v2 - 264)], 1, a2.n128_f32[1]);
    v3 = a2;
    v3.n128_u32[0] = a2.n128_u32[2];
    v4 = *(*&v2[*(*v2 - 264)] + 104);

    v4(v3);
  }

  else
  {
    v5 = ikinemaLogObject()[1];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      CoreIKConstraint::setOrientationPrecision(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }
}

uint64_t CoreIKAutoMatchingGenerateRetargetRig(FIK *a1, unint64_t a2, __int128 *a3, FIK *a4, unint64_t a5, __int128 *a6, CFErrorRef *a7)
{
  v47 = *MEMORY[0x277D85DE8];
  v13 = *a6;
  v12 = a6[1];
  HIDWORD(v13) = 0;
  v39 = v13;
  v40 = v12;
  v15 = *a3;
  v14 = a3[1];
  HIDWORD(v15) = 0;
  v37 = v15;
  v38 = v14;
  MoCapRigForBiped = FIK::AutoRig::createMoCapRigForBiped(v25, v31, v41);
  if (v46 == 1)
  {
    v17 = FIK::defaultAllocator(MoCapRigForBiped);
    v18 = FIK::Allocator::create<CoreIKRig>(v17);
    if ((v46 & 1) == 0)
    {
      v22 = std::__throw_bad_optional_access[abi:nn200100]();
    }

    v19 = v18;
    std::__variant_detail::__assignment<std::__variant_detail::__traits<FIK::GameRig,FIK::MoCapRig>>::__assign_alt[abi:nn200100]<1ul,FIK::MoCapRig,FIK::MoCapRig const&>((v18 + 16), v18 + 16, v41);
    *v19 = 3;
  }

  else
  {
    v19 = 0;
  }

  if (v46 == 1)
  {
    FIK::IKArray<FIK::RigBoneBase>::~IKArray(&v45);
    FIK::IKArray<FIK::MoCapBone>::~IKArray(&v44);
    FIK::IKArray<FIK::MoCapTask>::~IKArray(&v43);
    if (v41[1])
    {
      (*(*v42 + 24))(v42, v41[0], 0, 8);
    }
  }

  if (v29)
  {
    (*(*v30 + 24))(v30, v28, 0, 8);
    v28 = 0;
    v29 = 0;
  }

  std::__tree<std::__value_type<unsigned long,FIK::IKArray<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,FIK::IKArray<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,FIK::IKArray<unsigned long>>>>::destroy(v27, v27[1]);
  std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::destroy(v26, v26[1]);
  FIK::IKArray<FIK::Hierarchy::Joint>::~IKArray(v25);
  if (v35)
  {
    (*(*v36 + 24))(v36, v34, 0, 8);
    v34 = 0;
    v35 = 0;
  }

  std::__tree<std::__value_type<unsigned long,FIK::IKArray<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,FIK::IKArray<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,FIK::IKArray<unsigned long>>>>::destroy(v33, v33[1]);
  std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::destroy(v32, v32[1]);
  FIK::IKArray<FIK::Hierarchy::Joint>::~IKArray(v31);
  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t anonymous namespace::makeCharacterisedHierarchy@<X0>(FIK *a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  FIK::Characteriser::Characteriser(v6);
  v4 = FIK::Characteriser::operator[](v6, "biped", 5);
  FIK::CharacterisedHierarchy::CharacterisedHierarchy(a3, v9, v4);
  FIK::Characterisation::~Characterisation(&v8);
  std::__tree<std::__value_type<std::string_view,std::unique_ptr<FIK::Characterisation>>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,std::unique_ptr<FIK::Characterisation>>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,std::unique_ptr<FIK::Characterisation>>>>::destroy(v6, v7);
  return FIK::IKArray<FIK::Hierarchy::Joint>::~IKArray(v9);
}

uint64_t CoreIKAutoMatchingGenerateHierarchyToRigMapping(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    if (*(a3 + 352) == 1)
    {
      if (*(a3 + 224))
      {
        v6 = result;
        v7 = 0;
        v8 = *(a3 + 240);
        v15 = (result + 48 * a2);
        v16 = 48 * a2;
        do
        {
          v9 = v8 + 544 * v7;
          if (*(v9 + 16))
          {
            v10 = *(v9 + 8);
            if (a2)
            {
              goto LABEL_7;
            }
          }

          else
          {
            v10 = &unk_245A04BAE;
            if (a2)
            {
LABEL_7:
              v11 = strlen(v10);
              v12 = v16;
              v13 = v6;
              while (1)
              {
                result = strlen(*v13);
                if (v11 == result)
                {
                  result = memcmp(v10, *v13, v11);
                  if (!result)
                  {
                    goto LABEL_14;
                  }
                }

                v13 += 6;
                v12 -= 48;
                if (!v12)
                {
                  v13 = v15;
                  goto LABEL_14;
                }
              }
            }
          }

          v13 = v6;
LABEL_14:
          *(a4 + 8 * v7++) = 0xAAAAAAAAAAAAAAABLL * ((v13 - v6) >> 4);
        }

        while (v7 < *(a3 + 224));
      }
    }

    else
    {
      v14 = std::__throw_bad_variant_access[abi:nn200100]();
      return CoreIKAutoMatchingIdentifyJoints(v14);
    }
  }

  return result;
}

uint64_t CoreIKAutoMatchingIdentifyJoints@<X0>(FIK *a1@<X0>, unint64_t a2@<X1>, CFErrorRef *a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 256) = 0;
  *(a4 + 224) = 0u;
  *(a4 + 240) = 0u;
  *(a4 + 192) = 0u;
  *(a4 + 208) = 0u;
  *(a4 + 160) = 0u;
  *(a4 + 176) = 0u;
  *(a4 + 128) = 0u;
  *(a4 + 144) = 0u;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *a4 = JointName;
  *(a4 + 8) = v80;
  *(a4 + 16) = v79;
  *(a4 + 24) = v78;
  *(a4 + 32) = v77;
  *(a4 + 40) = v76;
  *(a4 + 48) = v75;
  *(a4 + 56) = v74;
  *(a4 + 64) = v73;
  *(a4 + 72) = v72;
  *(a4 + 80) = v71;
  *(a4 + 88) = v70;
  *(a4 + 96) = v69;
  *(a4 + 104) = v68;
  *(a4 + 112) = v7;
  *(a4 + 120) = v8;
  *(a4 + 128) = v9;
  *(a4 + 136) = v10;
  *(a4 + 144) = v11;
  *(a4 + 152) = v12;
  *(a4 + 160) = v13;
  *(a4 + 176) = v14;
  v15 = v85[0];
  if (!v85[0])
  {
    goto LABEL_13;
  }

  v16 = v85;
  v17 = v85[0];
  do
  {
    if (v17[8] >= 8)
    {
      v16 = v17;
    }

    v17 = *&v17[2 * (v17[8] < 8)];
  }

  while (v17);
  if (v16 == v85 || v16[8] > 8)
  {
LABEL_13:
    v26 = &unk_245A04BAE;
    *(a4 + 184) = &unk_245A04BAE;
    goto LABEL_14;
  }

  v18 = *(v16 + 7);
  v19 = *(v16 + 5);
  if (v19 <= 2)
  {
    if (v19 != 1)
    {
      if (v19 != 2)
      {
        goto LABEL_18;
      }

      v45 = *(a1 + 6 * v18[1]);
      v46 = *(a1 + 6 * *v18);
      *(a4 + 184) = v45;
      *(a4 + 192) = v46;
      v26 = &unk_245A04BAE;
      goto LABEL_15;
    }

    v65 = *(a1 + 6 * *v18);
    v26 = &unk_245A04BAE;
    *(a4 + 184) = v65;
LABEL_14:
    *(a4 + 192) = &unk_245A04BAE;
LABEL_15:
    *(a4 + 200) = &unk_245A04BAE;
LABEL_16:
    *(a4 + 208) = &unk_245A04BAE;
    goto LABEL_17;
  }

  switch(v19)
  {
    case 3:
      v49 = v18[1];
      v50 = *(a1 + 6 * v18[2]);
      v51 = *v18;
      v52 = *(a1 + 6 * v49);
      *(a4 + 184) = v50;
      *(a4 + 192) = v52;
      v53 = *(a1 + 6 * v51);
      v26 = &unk_245A04BAE;
      *(a4 + 200) = v53;
      goto LABEL_16;
    case 4:
      v59 = *(a1 + 6 * v18[2]);
      *(a4 + 184) = *(a1 + 6 * v18[3]);
      *(a4 + 192) = v59;
      v60 = *(a1 + 6 * v18[1]);
      v61 = *(a1 + 6 * *v18);
      *(a4 + 200) = v60;
      *(a4 + 208) = v61;
      v26 = &unk_245A04BAE;
      goto LABEL_17;
    case 5:
      v20 = *(a1 + 6 * v18[4]);
      v21 = v18[1];
      v22 = *(a1 + 6 * v18[3]);
      v23 = *(a1 + 6 * v18[2]);
      v24 = *v18;
      v25 = *(a1 + 6 * v21);
      *(a4 + 184) = v20;
      *(a4 + 192) = v22;
      *(a4 + 200) = v23;
      *(a4 + 208) = v25;
      v26 = *(a1 + 6 * v24);
LABEL_17:
      *(a4 + 216) = v26;
      break;
  }

LABEL_18:
  if (!v15)
  {
    goto LABEL_30;
  }

  v27 = v85;
  do
  {
    if (v15[8] >= 14)
    {
      v27 = v15;
    }

    v15 = *&v15[2 * (v15[8] < 14)];
  }

  while (v15);
  if (v27 == v85 || v27[8] > 14)
  {
LABEL_30:
    v36 = &unk_245A04BAE;
    *(a4 + 224) = &unk_245A04BAE;
    goto LABEL_31;
  }

  v28 = *(v27 + 7);
  v29 = *(v27 + 5);
  if (v29 <= 2)
  {
    if (v29 != 1)
    {
      if (v29 != 2)
      {
        goto LABEL_35;
      }

      v47 = *(a1 + 6 * v28[1]);
      v48 = *(a1 + 6 * *v28);
      *(a4 + 224) = v47;
      *(a4 + 232) = v48;
      v36 = &unk_245A04BAE;
      goto LABEL_32;
    }

    v66 = *(a1 + 6 * *v28);
    v36 = &unk_245A04BAE;
    *(a4 + 224) = v66;
LABEL_31:
    *(a4 + 232) = &unk_245A04BAE;
LABEL_32:
    *(a4 + 240) = &unk_245A04BAE;
LABEL_33:
    *(a4 + 248) = &unk_245A04BAE;
    goto LABEL_34;
  }

  switch(v29)
  {
    case 3:
      v54 = v28[1];
      v55 = *(a1 + 6 * v28[2]);
      v56 = *v28;
      v57 = *(a1 + 6 * v54);
      *(a4 + 224) = v55;
      *(a4 + 232) = v57;
      v58 = *(a1 + 6 * v56);
      v36 = &unk_245A04BAE;
      *(a4 + 240) = v58;
      goto LABEL_33;
    case 4:
      v62 = *(a1 + 6 * v28[2]);
      *(a4 + 224) = *(a1 + 6 * v28[3]);
      *(a4 + 232) = v62;
      v63 = *(a1 + 6 * v28[1]);
      v64 = *(a1 + 6 * *v28);
      *(a4 + 240) = v63;
      *(a4 + 248) = v64;
      v36 = &unk_245A04BAE;
      goto LABEL_34;
    case 5:
      v30 = *(a1 + 6 * v28[4]);
      v31 = v28[1];
      v32 = *(a1 + 6 * v28[3]);
      v33 = *(a1 + 6 * v28[2]);
      v34 = *v28;
      v35 = *(a1 + 6 * v31);
      *(a4 + 224) = v30;
      *(a4 + 232) = v32;
      *(a4 + 240) = v33;
      *(a4 + 248) = v35;
      v36 = *(a1 + 6 * v34);
LABEL_34:
      *(a4 + 256) = v36;
      break;
  }

LABEL_35:
  v37 = 0;
  v38 = 0;
  v92[0] = JointName;
  v92[1] = v80;
  v92[2] = v79;
  v92[3] = v78;
  v92[4] = v77;
  v92[5] = v76;
  v92[6] = v75;
  v92[7] = v74;
  v92[8] = v73;
  v92[9] = v72;
  v92[10] = v71;
  v92[11] = v70;
  v92[12] = v69;
  v92[13] = v68;
  v92[14] = v7;
  v92[15] = v8;
  v92[16] = v9;
  v92[17] = v10;
  v92[18] = v11;
  v92[19] = v12;
  v39 = 1;
  v92[20] = v13;
  do
  {
    v40 = FIK::defaultAllocator(v14);
    v89 = 0;
    v90 = 0;
    v91 = v40;
    v41 = strlen(v92[v38]);
    IKString::assign(&v89, v92[v38], v41);
    v14 = FIK::Hierarchy::containsJoint(v82, &v89);
    v42 = v14;
    if (v90)
    {
      v14 = (*(*v91 + 3))(v91, v89, 0, 8);
    }

    v37 |= v42;
    v39 &= v42;
    ++v38;
  }

  while (v38 != 21);
  if ((v39 & 1) == 0)
  {
    if (v37)
    {
      v43 = 101;
    }

    else
    {
      v43 = 100;
    }
  }

  if (v87)
  {
    (*(*v88 + 24))(v88, v86, 0, 8);
    v86 = 0;
    v87 = 0;
  }

  std::__tree<std::__value_type<unsigned long,FIK::IKArray<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,FIK::IKArray<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,FIK::IKArray<unsigned long>>>>::destroy(&v84, v85[0]);
  std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::destroy(v83, v83[1]);
  return FIK::IKArray<FIK::Hierarchy::Joint>::~IKArray(v82);
}

BOOL CoreIKAutoMatchingRequiredJointsAreValid(uint64_t a1, const char **a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a1 + 16);
  v19[0] = *a1;
  v19[1] = v6;
  v7 = *(a1 + 48);
  v19[2] = *(a1 + 32);
  v19[3] = v7;
  v8 = *(a1 + 80);
  v19[4] = *(a1 + 64);
  v19[5] = v8;
  v9 = *(a1 + 112);
  v19[6] = *(a1 + 96);
  v19[7] = v9;
  v10 = *(a1 + 128);
  v11 = *(a1 + 144);
  v20 = *(a1 + 160);
  v12 = &a2[6 * a3];
  v13 = 48 * a3;
  v19[8] = v10;
  v19[9] = v11;
  do
  {
    i = a2;
    if (a3)
    {
      v15 = *(v19 + v5);
      v16 = strlen(v15);
      v17 = v13;
      for (i = a2; v16 != strlen(*i) || memcmp(v15, *i, v16); i += 6)
      {
        v17 -= 48;
        if (!v17)
        {
          return 0;
        }
      }
    }

    result = i != v12;
    if (i == v12)
    {
      break;
    }

    v5 += 8;
  }

  while (v5 != 168);
  return result;
}

void CoreIKAutoMatchingGenerateRetargetRigFromDefinition(FIK *a1, unint64_t a2, const char **a3, uint64_t a4, __int128 *a5, FIK *a6, unint64_t a7, __int128 *a8, const char **a9, int32x2_t *a10, CFErrorRef *a11)
{
  v57 = *MEMORY[0x277D85DE8];
  FIK::IKArray<FIK::Hierarchy::Joint>::~IKArray(v51);
  if (!*a11)
  {
    FIK::IKArray<FIK::Hierarchy::Joint>::~IKArray(v51);
    if (!*a11)
    {
      if (v33 == 1 && (v41 & 1) != 0)
      {
        v16 = v32;
        if (v40 != v32)
        {
          if ((v40 & 0xFFFFFFFE) == 2)
          {
            FIK::RigBuilderUtils::alignToTPose(v39);
            v16 = v32;
          }

          if ((v16 & 0xFFFFFFFE) == 2)
          {
            FIK::RigBuilderUtils::alignToTPose(v31);
          }
        }

        FIK::RigBuilderUtils::shiftHipsToOrigin<FIK::BipedIdentifiers::Joint>(v31, 0);
        FIK::RigBuilderUtils::shiftHipsToOrigin<FIK::BipedIdentifiers::Joint>(v39, 0);
        v18 = *a8;
        v17 = a8[1];
        HIDWORD(v18) = 0;
        v49 = v18;
        v50 = v17;
        v20 = *a5;
        v19 = a5[1];
        HIDWORD(v20) = 0;
        v47 = v20;
        v48 = v19;
        MoCapRig = FIK::MoCapRigBuilder::createMoCapRig(v39, v31, CoreIKAutoMatchingGenerateRetargetRigFromDefinition::taskJoints, 7, 0, 0, v51, 0, 0);
        if (v56 == 1)
        {
          v22 = FIK::defaultAllocator(MoCapRig);
          v23 = FIK::Allocator::create<CoreIKRig>(v22);
          if ((v56 & 1) == 0)
          {
            v26 = std::__throw_bad_optional_access[abi:nn200100]();
            return;
          }

          v24 = v23;
          std::__variant_detail::__assignment<std::__variant_detail::__traits<FIK::GameRig,FIK::MoCapRig>>::__assign_alt[abi:nn200100]<1ul,FIK::MoCapRig,FIK::MoCapRig const&>((v23 + 16), v23 + 16, v51);
          *v24 = 3;
        }

        else
        {
        }

        if (v56 == 1)
        {
          FIK::IKArray<FIK::RigBoneBase>::~IKArray(&v55);
          FIK::IKArray<FIK::MoCapBone>::~IKArray(&v54);
          FIK::IKArray<FIK::MoCapTask>::~IKArray(&v53);
          if (v51[1])
          {
            (*(*v52 + 24))(v52, v51[0], 0, 8);
          }
        }
      }

      else
      {
      }
    }

    if (v37)
    {
      (*(*v38 + 24))(v38, v36, 0, 8);
      v36 = 0;
      v37 = 0;
    }

    std::__tree<std::__value_type<unsigned long,FIK::IKArray<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,FIK::IKArray<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,FIK::IKArray<unsigned long>>>>::destroy(v35, v35[1]);
    std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::destroy(v34, v34[1]);
    FIK::IKArray<FIK::Hierarchy::Joint>::~IKArray(v31);
  }

  if (v45)
  {
    (*(*v46 + 24))(v46, v44, 0, 8);
    v44 = 0;
    v45 = 0;
  }

  std::__tree<std::__value_type<unsigned long,FIK::IKArray<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,FIK::IKArray<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,FIK::IKArray<unsigned long>>>>::destroy(v43, v43[1]);
  std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::destroy(v42, v42[1]);
  FIK::IKArray<FIK::Hierarchy::Joint>::~IKArray(v39);
  v25 = *MEMORY[0x277D85DE8];
}

void anonymous namespace::makeCharacterisedHierarchy(FIK *a1@<X0>, const char **a2@<X1>, int32x2_t *a3@<X2>, CFErrorRef *a4@<X3>, uint64_t a5@<X8>)
{
  LODWORD(v129) = 0;
  BYTE4(v129) = 0;
  v130 = v131;
  v131[0] = 0;
  v133[0] = 0;
  v133[1] = 0;
  v131[1] = 0;
  v132 = v133;
  v10 = FIK::defaultAllocator(a1);
  v134 = 0;
  v135 = 0;
  v136 = v10;
  IKString::assign(&v134, "undefined", 9);
  v11 = vrev64_s32(vadd_s32(*a3, -1));
  *(&v129 + 1) = vand_s8(vadd_s32(v11, 0x100000001), vcgt_u32(0x500000005, v11));
  BYTE4(v129) = 1;
  v12 = a3[1].i32[0];
  if ((v12 - 1) >= 3)
  {
    v12 = 0;
  }

  LODWORD(v129) = v12;
  v13 = strlen(*a2);
  v14 = FIK::Hierarchy::indexOf(a1, *a2, v13);
  if (v14 == -1)
  {
  }

  else
  {
    v119 = 0;
    v120[0] = v14;
    std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::__emplace_unique_key_args<int,std::pair<int const,unsigned long>>(&v130, &v119);
  }

  v15 = strlen(a2[1]);
  v16 = FIK::Hierarchy::indexOf(a1, a2[1], v15);
  if (v16 == -1)
  {
  }

  else
  {
    v119 = 1;
    v120[0] = v16;
    std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::__emplace_unique_key_args<int,std::pair<int const,unsigned long>>(&v130, &v119);
  }

  v17 = strlen(a2[2]);
  v18 = FIK::Hierarchy::indexOf(a1, a2[2], v17);
  if (v18 == -1)
  {
  }

  else
  {
    v119 = 8;
    v120[0] = v18;
    std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::__emplace_unique_key_args<int,std::pair<int const,unsigned long>>(&v130, &v119);
  }

  v19 = strlen(a2[3]);
  v20 = FIK::Hierarchy::indexOf(a1, a2[3], v19);
  if (v20 == -1)
  {
  }

  else
  {
    v119 = 9;
    v120[0] = v20;
    std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::__emplace_unique_key_args<int,std::pair<int const,unsigned long>>(&v130, &v119);
  }

  v21 = strlen(a2[4]);
  v22 = FIK::Hierarchy::indexOf(a1, a2[4], v21);
  if (v22 == -1)
  {
  }

  else
  {
    v119 = 14;
    v120[0] = v22;
    std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::__emplace_unique_key_args<int,std::pair<int const,unsigned long>>(&v130, &v119);
  }

  v23 = strlen(a2[5]);
  v24 = FIK::Hierarchy::indexOf(a1, a2[5], v23);
  if (v24 == -1)
  {
  }

  else
  {
    v119 = 16;
    v120[0] = v24;
    std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::__emplace_unique_key_args<int,std::pair<int const,unsigned long>>(&v130, &v119);
  }

  v25 = strlen(a2[6]);
  v26 = FIK::Hierarchy::indexOf(a1, a2[6], v25);
  if (v26 == -1)
  {
  }

  else
  {
    v119 = 17;
    v120[0] = v26;
    std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::__emplace_unique_key_args<int,std::pair<int const,unsigned long>>(&v130, &v119);
  }

  v27 = strlen(a2[7]);
  v28 = FIK::Hierarchy::indexOf(a1, a2[7], v27);
  if (v28 == -1)
  {
  }

  else
  {
    v119 = 19;
    v120[0] = v28;
    std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::__emplace_unique_key_args<int,std::pair<int const,unsigned long>>(&v130, &v119);
  }

  v29 = strlen(a2[8]);
  v30 = FIK::Hierarchy::indexOf(a1, a2[8], v29);
  if (v30 == -1)
  {
  }

  else
  {
    v119 = 21;
    v120[0] = v30;
    std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::__emplace_unique_key_args<int,std::pair<int const,unsigned long>>(&v130, &v119);
  }

  v31 = strlen(a2[9]);
  v32 = FIK::Hierarchy::indexOf(a1, a2[9], v31);
  if (v32 == -1)
  {
  }

  else
  {
    v119 = 23;
    v120[0] = v32;
    std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::__emplace_unique_key_args<int,std::pair<int const,unsigned long>>(&v130, &v119);
  }

  v33 = strlen(a2[10]);
  v34 = FIK::Hierarchy::indexOf(a1, a2[10], v33);
  if (v34 == -1)
  {
  }

  else
  {
    v119 = 24;
    v120[0] = v34;
    std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::__emplace_unique_key_args<int,std::pair<int const,unsigned long>>(&v130, &v119);
  }

  v35 = strlen(a2[11]);
  v36 = FIK::Hierarchy::indexOf(a1, a2[11], v35);
  if (v36 == -1)
  {
  }

  else
  {
    v119 = 26;
    v120[0] = v36;
    std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::__emplace_unique_key_args<int,std::pair<int const,unsigned long>>(&v130, &v119);
  }

  v37 = strlen(a2[12]);
  v38 = FIK::Hierarchy::indexOf(a1, a2[12], v37);
  if (v38 == -1)
  {
  }

  else
  {
    v119 = 28;
    v120[0] = v38;
    std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::__emplace_unique_key_args<int,std::pair<int const,unsigned long>>(&v130, &v119);
  }

  v39 = strlen(a2[13]);
  v40 = FIK::Hierarchy::indexOf(a1, a2[13], v39);
  if (v40 == -1)
  {
  }

  else
  {
    v119 = 30;
    v120[0] = v40;
    std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::__emplace_unique_key_args<int,std::pair<int const,unsigned long>>(&v130, &v119);
  }

  v41 = strlen(a2[14]);
  v42 = FIK::Hierarchy::indexOf(a1, a2[14], v41);
  if (v42 == -1)
  {
  }

  else
  {
    v119 = 32;
    v120[0] = v42;
    std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::__emplace_unique_key_args<int,std::pair<int const,unsigned long>>(&v130, &v119);
  }

  v43 = strlen(a2[15]);
  v44 = FIK::Hierarchy::indexOf(a1, a2[15], v43);
  if (v44 == -1)
  {
  }

  else
  {
    v119 = 34;
    v120[0] = v44;
    std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::__emplace_unique_key_args<int,std::pair<int const,unsigned long>>(&v130, &v119);
  }

  v45 = strlen(a2[16]);
  v46 = FIK::Hierarchy::indexOf(a1, a2[16], v45);
  if (v46 == -1)
  {
  }

  else
  {
    v119 = 35;
    v120[0] = v46;
    std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::__emplace_unique_key_args<int,std::pair<int const,unsigned long>>(&v130, &v119);
  }

  v47 = strlen(a2[17]);
  v48 = FIK::Hierarchy::indexOf(a1, a2[17], v47);
  if (v48 == -1)
  {
  }

  else
  {
    v119 = 39;
    v120[0] = v48;
    std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::__emplace_unique_key_args<int,std::pair<int const,unsigned long>>(&v130, &v119);
  }

  v49 = strlen(a2[18]);
  v50 = FIK::Hierarchy::indexOf(a1, a2[18], v49);
  if (v50 == -1)
  {
  }

  else
  {
    v119 = 41;
    v120[0] = v50;
    std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::__emplace_unique_key_args<int,std::pair<int const,unsigned long>>(&v130, &v119);
  }

  v51 = strlen(a2[19]);
  v52 = FIK::Hierarchy::indexOf(a1, a2[19], v51);
  if (v52 == -1)
  {
  }

  else
  {
    v119 = 43;
    v120[0] = v52;
    std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::__emplace_unique_key_args<int,std::pair<int const,unsigned long>>(&v130, &v119);
  }

  v53 = strlen(a2[20]);
  v54 = FIK::Hierarchy::indexOf(a1, a2[20], v53);
  if (v54 == -1)
  {
  }

  else
  {
    v119 = 44;
    v120[0] = v54;
    v55 = std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::__emplace_unique_key_args<int,std::pair<int const,unsigned long>>(&v130, &v119);
  }

  v56 = FIK::defaultAllocator(v55);
  v126[0] = 0;
  v126[1] = 0;
  v127 = 0;
  v128 = v56;
  v57 = strlen(a2[23]);
  if (v57)
  {
    v58 = FIK::Hierarchy::indexOf(a1, a2[23], v57);
    if (v58 == -1)
    {
    }

    else
    {
      v59 = v58;
      FIK::IKArray<FIK::Segment *>::reserve(v126, v126[0] + 1);
      *(v127 + 8 * v126[0]++) = v59;
    }
  }

  v60 = strlen(a2[24]);
  if (v60)
  {
    v61 = FIK::Hierarchy::indexOf(a1, a2[24], v60);
    if (v61 == -1)
    {
    }

    else
    {
      v62 = v61;
      FIK::IKArray<FIK::Segment *>::reserve(v126, v126[0] + 1);
      *(v127 + 8 * v126[0]++) = v62;
    }
  }

  v63 = strlen(a2[25]);
  if (v63)
  {
    v64 = FIK::Hierarchy::indexOf(a1, a2[25], v63);
    if (v64 == -1)
    {
    }

    else
    {
      v65 = v64;
      FIK::IKArray<FIK::Segment *>::reserve(v126, v126[0] + 1);
      *(v127 + 8 * v126[0]++) = v65;
    }
  }

  v66 = strlen(a2[26]);
  if (v66)
  {
    v67 = FIK::Hierarchy::indexOf(a1, a2[26], v66);
    if (v67 == -1)
    {
    }

    else
    {
      v68 = v67;
      FIK::IKArray<FIK::Segment *>::reserve(v126, v126[0] + 1);
      *(v127 + 8 * v126[0]++) = v68;
    }
  }

  v69 = strlen(a2[27]);
  if (v69)
  {
    v70 = FIK::Hierarchy::indexOf(a1, a2[27], v69);
    if (v70 == -1)
    {
    }

    else
    {
      v71 = v70;
      v69 = FIK::IKArray<FIK::Segment *>::reserve(v126, v126[0] + 1);
      *(v127 + 8 * v126[0]++) = v71;
    }
  }

  v72 = FIK::defaultAllocator(v69);
  v123[0] = 0;
  v123[1] = 0;
  v124 = 0;
  v125 = v72;
  v73 = strlen(a2[28]);
  if (v73)
  {
    v74 = FIK::Hierarchy::indexOf(a1, a2[28], v73);
    if (v74 == -1)
    {
    }

    else
    {
      v75 = v74;
      FIK::IKArray<FIK::Segment *>::reserve(v123, v123[0] + 1);
      *(v124 + 8 * v123[0]++) = v75;
    }
  }

  v76 = strlen(a2[29]);
  if (v76)
  {
    v77 = FIK::Hierarchy::indexOf(a1, a2[29], v76);
    if (v77 == -1)
    {
    }

    else
    {
      v78 = v77;
      FIK::IKArray<FIK::Segment *>::reserve(v123, v123[0] + 1);
      *(v124 + 8 * v123[0]++) = v78;
    }
  }

  v79 = strlen(a2[30]);
  if (v79)
  {
    v80 = FIK::Hierarchy::indexOf(a1, a2[30], v79);
    if (v80 == -1)
    {
    }

    else
    {
      v81 = v80;
      FIK::IKArray<FIK::Segment *>::reserve(v123, v123[0] + 1);
      *(v124 + 8 * v123[0]++) = v81;
    }
  }

  v82 = strlen(a2[31]);
  if (v82)
  {
    v83 = FIK::Hierarchy::indexOf(a1, a2[31], v82);
    if (v83 == -1)
    {
    }

    else
    {
      v84 = v83;
      FIK::IKArray<FIK::Segment *>::reserve(v123, v123[0] + 1);
      *(v124 + 8 * v123[0]++) = v84;
    }
  }

  v85 = strlen(a2[32]);
  if (v85)
  {
    v86 = FIK::Hierarchy::indexOf(a1, a2[32], v85);
    if (v86 == -1)
    {
    }

    else
    {
      v87 = v86;
      FIK::IKArray<FIK::Segment *>::reserve(v123, v123[0] + 1);
      *(v124 + 8 * v123[0]++) = v87;
    }
  }

  v119 = 8;
  FIK::IKArray<FIK::Task *>::IKArray(v120, v126);
  std::__tree<std::__value_type<int,FIK::IKArray<unsigned long>>,std::__map_value_compare<int,std::__value_type<int,FIK::IKArray<unsigned long>>,std::less<int>,true>,std::allocator<std::__value_type<int,FIK::IKArray<unsigned long>>>>::__emplace_unique_key_args<int,std::pair<int const,FIK::IKArray<unsigned long>>>(&v132, &v119);
  v120[0] = 0;
  if (v121)
  {
    (*(*v122 + 24))(v122, v121, 0, 8);
  }

  v119 = 14;
  FIK::IKArray<FIK::Task *>::IKArray(v120, v123);
  std::__tree<std::__value_type<int,FIK::IKArray<unsigned long>>,std::__map_value_compare<int,std::__value_type<int,FIK::IKArray<unsigned long>>,std::less<int>,true>,std::allocator<std::__value_type<int,FIK::IKArray<unsigned long>>>>::__emplace_unique_key_args<int,std::pair<int const,FIK::IKArray<unsigned long>>>(&v132, &v119);
  v120[0] = 0;
  if (v121)
  {
    (*(*v122 + 24))(v122, v121, 0, 8);
  }

  v88 = strlen(a2[1]);
  v89 = FIK::Hierarchy::indexOf(a1, a2[1], v88);
  v90 = strlen(a2[2]);
  v91 = FIK::Hierarchy::indexOf(a1, a2[2], v90);
  v92 = FIK::Hierarchy::parentIndexOf(a1, v91);
  if ((v93 & 1) == 0)
  {
    goto LABEL_129;
  }

  v119 = 1;
  FIK::IKArray<FIK::Task *>::IKArray(v120, v116);
  std::__tree<std::__value_type<int,FIK::IKArray<unsigned long>>,std::__map_value_compare<int,std::__value_type<int,FIK::IKArray<unsigned long>>,std::less<int>,true>,std::allocator<std::__value_type<int,FIK::IKArray<unsigned long>>>>::__emplace_unique_key_args<int,std::pair<int const,FIK::IKArray<unsigned long>>>(&v132, &v119);
  v120[0] = 0;
  if (v121)
  {
    (*(*v122 + 24))(v122, v121, 0, 8);
  }

  v94 = strlen(a2[3]);
  v95 = FIK::Hierarchy::indexOf(a1, a2[3], v94);
  v96 = a2[4];
  v97 = strlen(v96);
  v98 = FIK::Hierarchy::indexOf(a1, v96, v97);
  v99 = FIK::Hierarchy::parentIndexOf(a1, v98);
  if (v100)
  {
    v119 = 2;
    FIK::IKArray<FIK::Task *>::IKArray(v120, v113);
    std::__tree<std::__value_type<int,FIK::IKArray<unsigned long>>,std::__map_value_compare<int,std::__value_type<int,FIK::IKArray<unsigned long>>,std::less<int>,true>,std::allocator<std::__value_type<int,FIK::IKArray<unsigned long>>>>::__emplace_unique_key_args<int,std::pair<int const,FIK::IKArray<unsigned long>>>(&v132, &v119);
    v120[0] = 0;
    if (v121)
    {
      (*(*v122 + 24))(v122, v121, 0, 8);
    }

    FIK::Hierarchy::Hierarchy(v112, a1);
    v104 = v129;
    v106[0] = 0;
    v106[1] = 0;
    v105 = v106;
    std::map<int,unsigned long>::insert[abi:nn200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<int,unsigned long>,std::__tree_node<std::__value_type<int,unsigned long>,void *> *,long>>>(&v105, v130, v131);
    v108[0] = 0;
    v108[1] = 0;
    v107 = v108;
    std::map<int,FIK::IKArray<unsigned long>>::insert[abi:nn200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<int,FIK::IKArray<unsigned long>>,std::__tree_node<std::__value_type<int,FIK::IKArray<unsigned long>>,void *> *,long>>>(&v107, v132, v133);
    IKString::IKString(&v109, &v134);
    FIK::CharacterisedHierarchy::CharacterisedHierarchy(a5, v112, &v104);
    if (v110)
    {
      (*(*v111 + 24))(v111, v109, 0, 8);
      v109 = 0;
      v110 = 0;
    }

    std::__tree<std::__value_type<unsigned long,FIK::IKArray<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,FIK::IKArray<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,FIK::IKArray<unsigned long>>>>::destroy(&v107, v108[0]);
    std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::destroy(&v105, v106[0]);
    FIK::IKArray<FIK::Hierarchy::Joint>::~IKArray(v112);
    v113[0] = 0;
    if (v114)
    {
      (*(*v115 + 24))(v115, v114, 0, 8);
    }

    v116[0] = 0;
    if (v117)
    {
      (*(*v118 + 24))(v118, v117, 0, 8);
    }

    v123[0] = 0;
    if (v124)
    {
      (*(*v125 + 3))(v125, v124, 0, 8);
    }

    v126[0] = 0;
    if (v127)
    {
      (*(*v128 + 3))(v128, v127, 0, 8);
    }

    if (v135)
    {
      (*(*v136 + 3))(v136, v134, 0, 8);
      v134 = 0;
      v135 = 0;
    }

    std::__tree<std::__value_type<unsigned long,FIK::IKArray<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,FIK::IKArray<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,FIK::IKArray<unsigned long>>>>::destroy(&v132, v133[0]);
    std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::destroy(&v130, v131[0]);
  }

  else
  {
LABEL_129:
    v101 = std::__throw_bad_optional_access[abi:nn200100]();
  }
}