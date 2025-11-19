uint64_t anonymous namespace::makeHierarchy@<X0>(FIK *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v25[0] = 0;
  v25[1] = 0;
  v26 = 0;
  v27 = FIK::defaultAllocator(a1);
  v6 = FIK::IKArray<FIK::JointDefinition>::reserve(v25, a2);
  if (a2)
  {
    v7 = (v4 + 48 * a2);
    do
    {
      v8 = FIK::defaultAllocator(v6);
      v17 = 0;
      v18 = 0;
      v19 = v8;
      v9 = strlen(*v4);
      IKString::assign(&v17, *v4, v9);
      v11 = FIK::defaultAllocator(v10);
      v20 = 0;
      v21 = 0;
      v22 = v11;
      v12 = strlen(*(v4 + 1));
      IKString::assign(&v20, *(v4 + 1), v12);
      v14 = *(v4 + 1);
      v13 = *(v4 + 2);
      HIDWORD(v14) = 0;
      v23 = v14;
      v24 = v13;
      v15 = FIK::IKArray<FIK::JointDefinition>::push_back(v25, &v17);
      if (v21)
      {
        v6 = (*(*v22 + 3))(v22, v20, 0, 8, v15);
        v20 = 0;
        v21 = 0;
      }

      if (v18)
      {
        v6 = (*(*v19 + 3))(v19, v17, 0, 8, v15);
      }

      v4 = (v4 + 48);
    }

    while (v4 != v7);
  }

  FIK::Hierarchy::Hierarchy(a3, v26, v25[0]);
  return FIK::IKArray<FIK::JointDefinition>::~IKArray(v25);
}

void std::__tree<std::__value_type<std::string_view,std::unique_ptr<FIK::Characterisation>>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,std::unique_ptr<FIK::Characterisation>>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,std::unique_ptr<FIK::Characterisation>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string_view,std::unique_ptr<FIK::Characterisation>>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,std::unique_ptr<FIK::Characterisation>>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,std::unique_ptr<FIK::Characterisation>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string_view,std::unique_ptr<FIK::Characterisation>>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,std::unique_ptr<FIK::Characterisation>>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,std::unique_ptr<FIK::Characterisation>>>>::destroy(a1, a2[1]);
    v4 = a2[6];
    a2[6] = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    operator delete(a2);
  }
}

FIK *FIK::Allocator::create<CoreIKRig>(uint64_t a1)
{
  v1 = (*(*a1 + 16))(a1, 384, 16);
  v2 = v1;
  if (v1)
  {
    *v1 = 0;
    v3 = FIK::defaultAllocator(v1);
    FIK::IKRig::IKRig((v2 + 16), v3);
    *(v2 + 24) = 0;
    *(v2 + 25) = 0;
    *(v2 + 26) = 0;
    *(v2 + 27) = v3;
    *(v2 + 28) = 0;
    *(v2 + 29) = 0;
    *(v2 + 30) = 0;
    *(v2 + 31) = v3;
    *(v2 + 32) = 0;
    *(v2 + 33) = 0;
    *(v2 + 34) = 0;
    *(v2 + 35) = v3;
    *(v2 + 36) = 0;
    *(v2 + 37) = 0;
    *(v2 + 38) = 0;
    *(v2 + 39) = v3;
    *(v2 + 40) = 0;
    *(v2 + 41) = 0;
    *(v2 + 42) = 0;
    *(v2 + 43) = v3;
    *(v2 + 16) = 2;
    *(v2 + 88) = 0;
    *(v2 + 368) = 1;
  }

  return v2;
}

void anonymous namespace::makeError(CFIndex code, CFErrorRef *a2)
{
  if (!*a2)
  {
    userInfoValues[3] = v2;
    userInfoValues[4] = v3;
    userInfoValues[0] = 0;
    v7 = *MEMORY[0x277CBEE30];
    if (code <= 101)
    {
      if (code == 100)
      {
        v6 = "No required joints could be identified.";
      }

      else
      {
        if (code != 101)
        {
          goto LABEL_14;
        }

        v6 = "Not all required joints could be identified.";
      }
    }

    else
    {
      switch(code)
      {
        case 102:
          v6 = "Invalid Pose Descritpion.";
          break;
        case 103:
          v6 = "Supplied Identified joint(s) not found in hierarchy.";
          break;
        case 200:
          v6 = "Rig generation failed due to internal error.";
          break;
        default:
          goto LABEL_14;
      }
    }

    userInfoValues[0] = CFStringCreateWithCString(0, v6, 0x8000100u);
LABEL_14:
    *a2 = CFErrorCreateWithUserInfoKeysAndValues(0, @"CoreIKAutoMatchingErrorDomain", code, &v7, userInfoValues, 1);
    if (userInfoValues[0])
    {
      CFRelease(userInfoValues[0]);
    }
  }
}

uint64_t *std::__variant_detail::__assignment<std::__variant_detail::__traits<FIK::GameRig,FIK::MoCapRig>>::__assign_alt[abi:nn200100]<1ul,FIK::MoCapRig,FIK::MoCapRig const&>(IKString *a1, uint64_t a2, IKString *a3)
{
  if (*(a1 + 84) == 1)
  {
    v6 = *a3;
    v5 = *(a3 + 1);
    if (v5)
    {
      v7 = *a3;
    }

    else
    {
      v7 = &unk_245A04BAE;
    }

    IKString::assign(a2, v7, v5);
    v8 = *(a3 + 24);
    *(a2 + 36) = *(a3 + 36);
    *(a2 + 24) = v8;
    v9 = *(a3 + 5);
    *(a2 + 64) = *(a3 + 4);
    *(a2 + 80) = v9;
    *(a2 + 96) = *(a3 + 6);
    v10 = *(a3 + 30);
    *(a2 + 112) = *(a3 + 14);
    *(a2 + 120) = v10;
    v11 = *(a3 + 32);
    *(a2 + 131) = *(a3 + 131);
    *(a2 + 128) = v11;
    *(a2 + 144) = *(a3 + 9);
    *(a2 + 160) = *(a3 + 10);
    FIK::IKArray<FIK::MoCapTask>::operator=((a2 + 176), a3 + 22);
    FIK::IKArray<FIK::MoCapBone>::operator=((a2 + 208), a3 + 26);
    result = FIK::IKArray<FIK::RigBoneBase>::operator=((a2 + 240), a3 + 30);
    *(a2 + 272) = *(a3 + 17);
    *(a2 + 288) = *(a3 + 18);
    *(a2 + 304) = *(a3 + 38);
  }

  else
  {

    return std::__variant_detail::__assignment<std::__variant_detail::__traits<FIK::GameRig,FIK::MoCapRig>>::__emplace[abi:nn200100]<1ul,FIK::MoCapRig const&>(a1, a3);
  }

  return result;
}

uint64_t *FIK::IKArray<FIK::MoCapTask>::operator=(uint64_t *a1, uint64_t *a2)
{
  if (*a2 >= a1[1])
  {
    v11 = a2[1];
    v12 = a1[3];
    if (v11)
    {
      v13 = (*(*v12 + 16))(a1[3], v11 << 8, 16);
      v14 = v13;
      if (v11 << 8)
      {
        bzero(v13, v11 << 8);
      }
    }

    else
    {
      v14 = 0;
    }

    v15 = *a2;
    if (*a2)
    {
      v16 = 0;
      v17 = a2[2];
      do
      {
        v18 = &v14[v16];
        IKString::IKString(&v14[v16], (v17 + v16));
        IKString::IKString(&v14[v16 + 24], (v17 + v16 + 24));
        v19 = *(v17 + v16 + 48);
        *(v18 + 8) = *(v17 + v16 + 64);
        *(v18 + 3) = v19;
        *(v18 + 5) = *(v17 + v16 + 80);
        *(v18 + 6) = *(v17 + v16 + 96);
        *(v18 + 7) = *(v17 + v16 + 112);
        *(v18 + 8) = *(v17 + v16 + 128);
        *(v18 + 9) = *(v17 + v16 + 144);
        *(v18 + 10) = *(v17 + v16 + 160);
        IKString::IKString(&v14[v16 + 176], (v17 + v16 + 176));
        v20 = *(v17 + v16 + 200);
        *(v18 + 102) = *(v17 + v16 + 204);
        *(v18 + 50) = v20;
        *(v18 + 13) = *(v17 + v16 + 208);
        *(v18 + 14) = *(v17 + v16 + 224);
        *(v18 + 15) = *(v17 + v16 + 240);
        v16 += 256;
        --v15;
      }

      while (v15);
    }

    v22 = a1[2];
    v21 = a1[3];
    a1[1] = v11;
    a1[2] = v14;
    a1[3] = v12;
    if (v22)
    {
      (*(*v21 + 24))(v21, v22, 0, 8);
    }
  }

  else
  {
    FIK::IKArray<FIK::MoCapTask>::clear(a1);
    v4 = *a2;
    if (*a2)
    {
      v5 = 0;
      v6 = a1[2];
      v7 = a2[2];
      do
      {
        v8 = v6 + v5;
        IKString::IKString((v6 + v5), (v7 + v5));
        IKString::IKString((v6 + v5 + 24), (v7 + v5 + 24));
        v9 = *(v7 + v5 + 48);
        *(v8 + 64) = *(v7 + v5 + 64);
        *(v8 + 48) = v9;
        *(v8 + 80) = *(v7 + v5 + 80);
        *(v8 + 96) = *(v7 + v5 + 96);
        *(v8 + 112) = *(v7 + v5 + 112);
        *(v8 + 128) = *(v7 + v5 + 128);
        *(v8 + 144) = *(v7 + v5 + 144);
        *(v8 + 160) = *(v7 + v5 + 160);
        IKString::IKString((v6 + v5 + 176), (v7 + v5 + 176));
        v10 = *(v7 + v5 + 200);
        *(v8 + 204) = *(v7 + v5 + 204);
        *(v8 + 200) = v10;
        *(v8 + 208) = *(v7 + v5 + 208);
        *(v8 + 224) = *(v7 + v5 + 224);
        *(v8 + 240) = *(v7 + v5 + 240);
        v5 += 256;
        --v4;
      }

      while (v4);
    }
  }

  *a1 = *a2;
  return a1;
}

uint64_t *FIK::IKArray<FIK::RigBoneBase>::operator=(uint64_t *a1, uint64_t *a2)
{
  if (*a2 >= a1[1])
  {
    v7 = a2[1];
    v8 = a1[3];
    if (v7)
    {
      v9 = (*(*v8 + 16))(a1[3], 96 * v7, 16);
      v10 = v9;
      if (96 * v7)
      {
        bzero(v9, 96 * v7);
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = *a2;
    if (*a2)
    {
      v12 = v10 + 32;
      v13 = (a2[2] + 32);
      do
      {
        *(v12 - 4) = *(v13 - 4);
        IKString::IKString((v12 - 24), (v13 - 24));
        IKString::IKString(v12, v13);
        v12[2] = v13[2];
        v12[3] = v13[3];
        v12 += 6;
        v13 += 6;
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
    FIK::IKArray<FIK::RigBoneBase>::clear(a1);
    v4 = *a2;
    if (*a2)
    {
      v5 = (a1[2] + 32);
      v6 = (a2[2] + 32);
      do
      {
        *(v5 - 4) = *(v6 - 4);
        IKString::IKString((v5 - 24), (v6 - 24));
        IKString::IKString(v5, v6);
        v5[2] = v6[2];
        v5[3] = v6[3];
        v5 += 6;
        v6 += 6;
        --v4;
      }

      while (v4);
    }
  }

  *a1 = *a2;
  return a1;
}

void *FIK::IKArray<FIK::MoCapTask>::clear(void *result)
{
  v1 = result;
  v2 = *result;
  if (*result)
  {
    v3 = result[2];
    do
    {
      if (*(v3 + 184))
      {
        result = (*(**(v3 + 192) + 24))(*(v3 + 192), *(v3 + 176), 0, 8);
        *(v3 + 176) = 0;
        *(v3 + 184) = 0;
      }

      if (*(v3 + 32))
      {
        result = (*(**(v3 + 40) + 24))(*(v3 + 40), *(v3 + 24), 0, 8);
        *(v3 + 24) = 0;
        *(v3 + 32) = 0;
      }

      if (*(v3 + 8))
      {
        result = (*(**(v3 + 16) + 24))(*(v3 + 16), *v3, 0, 8);
        *v3 = 0;
        *(v3 + 8) = 0;
      }

      v3 += 256;
      --v2;
    }

    while (v2);
  }

  *v1 = 0;
  return result;
}

void *FIK::IKArray<FIK::RigBoneBase>::clear(void *result)
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

      v3 += 12;
      --v2;
    }

    while (v2);
  }

  *v1 = 0;
  return result;
}

IKString *std::__variant_detail::__assignment<std::__variant_detail::__traits<FIK::GameRig,FIK::MoCapRig>>::__emplace[abi:nn200100]<1ul,FIK::MoCapRig const&>(IKString *this, IKString *a2)
{
  v4 = *(this + 84);
  if (v4 != -1)
  {
    (off_28589C520[v4])(&v10, this);
  }

  *(this + 84) = -1;
  IKString::IKString(this, a2);
  v5 = *(a2 + 24);
  *(this + 36) = *(a2 + 36);
  *(this + 24) = v5;
  v6 = *(a2 + 5);
  *(this + 4) = *(a2 + 4);
  *(this + 5) = v6;
  *(this + 6) = *(a2 + 6);
  v7 = *(a2 + 30);
  *(this + 14) = *(a2 + 14);
  *(this + 30) = v7;
  v8 = *(a2 + 32);
  *(this + 131) = *(a2 + 131);
  *(this + 32) = v8;
  *(this + 9) = *(a2 + 9);
  *(this + 10) = *(a2 + 10);
  FIK::IKArray<FIK::MoCapTask>::IKArray(this + 22, a2 + 22);
  FIK::IKArray<FIK::MoCapBone>::IKArray(this + 26, a2 + 26);
  FIK::IKArray<FIK::RigBoneBase>::IKArray(this + 30, a2 + 30);
  *(this + 17) = *(a2 + 17);
  *(this + 18) = *(a2 + 18);
  *(this + 38) = *(a2 + 38);
  *(this + 84) = 1;
  return this;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3FIK7GameRigENS8_8MoCapRigEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSC_1EJS9_SA_EEEEEEDcSE_DpT0_(uint64_t a1, uint64_t a2)
{
  FIK::IKArray<FIK::AimSetup>::~IKArray(a2 + 304);
  *(a2 + 272) = 0;
  v3 = *(a2 + 288);
  if (v3)
  {
    (*(**(a2 + 296) + 24))(*(a2 + 296), v3, 0, 8);
  }

  FIK::IKArray<IKString>::~IKArray(a2 + 240);
  FIK::IKArray<FIK::RigBone>::~IKArray(a2 + 208);
  result = FIK::IKArray<FIK::GameTask>::~IKArray(a2 + 176);
  if (*(a2 + 8))
  {
    result = (*(**(a2 + 16) + 24))(*(a2 + 16), *a2, 0, 8);
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  return result;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3FIK7GameRigENS8_8MoCapRigEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSC_1EJS9_SA_EEEEEEDcSE_DpT0_(uint64_t a1, uint64_t a2)
{
  FIK::IKArray<FIK::RigBoneBase>::~IKArray(a2 + 240);
  FIK::IKArray<FIK::MoCapBone>::~IKArray(a2 + 208);
  result = FIK::IKArray<FIK::MoCapTask>::~IKArray(a2 + 176);
  if (*(a2 + 8))
  {
    result = (*(**(a2 + 16) + 24))(*(a2 + 16), *a2, 0, 8);
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  return result;
}

void *anonymous namespace::getJointName(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = *(a1 + 56);
  v4 = a1 + 56;
  v5 = v6;
  if (!v6)
  {
    return &unk_245A04BAE;
  }

  v7 = v4;
  do
  {
    if (*(v5 + 32) >= a4)
    {
      v7 = v5;
    }

    v5 = *(v5 + 8 * (*(v5 + 32) < a4));
  }

  while (v5);
  if (v7 == v4)
  {
    return &unk_245A04BAE;
  }

  if (*(v7 + 32) > a4)
  {
    return &unk_245A04BAE;
  }

  v8 = *(v7 + 40);
  if (v8 == -1)
  {
    return &unk_245A04BAE;
  }

  else
  {
    return *(a2 + 48 * v8);
  }
}

FIK *anonymous namespace::getChildToParentChain@<X0>(_anonymous_namespace_ *this@<X0>, const FIK::Hierarchy *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = FIK::Hierarchy::parentIndexOf(this, a2);
  v10 = v9;
  if (v9)
  {
    v11 = v8;
    v16 = 0;
    v17 = 0;
    *&v18 = 0;
    *(&v18 + 1) = FIK::defaultAllocator(v8);
    result = FIK::IKArray<FIK::Segment *>::reserve(&v16, 1uLL);
    *(v18 + 8 * v16++) = a2;
    do
    {
      if ((v10 & 1) == 0)
      {
        v15 = std::__throw_bad_optional_access[abi:nn200100]();
        return std::map<int,FIK::IKArray<unsigned long>>::insert[abi:nn200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<int,FIK::IKArray<unsigned long>>,std::__tree_node<std::__value_type<int,FIK::IKArray<unsigned long>>,void *> *,long>>>(v15);
      }

      if (v11 == a3)
      {
        v14 = v17;
        *a4 = v16;
        *(a4 + 8) = v14;
        *(a4 + 16) = v18;
        return result;
      }

      FIK::IKArray<FIK::Segment *>::reserve(&v16, v16 + 1);
      *(v18 + 8 * v16++) = v11;
      result = FIK::Hierarchy::parentIndexOf(this, v11);
      v11 = result;
      v10 = v13;
    }

    while ((v13 & 1) != 0);
    result = FIK::defaultAllocator(result);
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *(a4 + 24) = result;
    v16 = 0;
    if (v18)
    {
      return (*(**(&v18 + 1) + 24))(*(&v18 + 1), v18, 0, 8);
    }
  }

  else
  {
    result = FIK::defaultAllocator(v8);
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *(a4 + 24) = result;
  }

  return result;
}

uint64_t std::map<int,FIK::IKArray<unsigned long>>::insert[abi:nn200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<int,FIK::IKArray<unsigned long>>,std::__tree_node<std::__value_type<int,FIK::IKArray<unsigned long>>,void *> *,long>>>(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<int,FIK::IKArray<unsigned long>>,std::__map_value_compare<int,std::__value_type<int,FIK::IKArray<unsigned long>>,std::less<int>,true>,std::allocator<std::__value_type<int,FIK::IKArray<unsigned long>>>>::__emplace_hint_unique_key_args<int,std::pair<int const,FIK::IKArray<unsigned long>> const&>(v5, v5 + 1, v4 + 8);
      v6 = *(v4 + 1);
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
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<std::__value_type<int,FIK::IKArray<unsigned long>>,std::__map_value_compare<int,std::__value_type<int,FIK::IKArray<unsigned long>>,std::less<int>,true>,std::allocator<std::__value_type<int,FIK::IKArray<unsigned long>>>>::__emplace_hint_unique_key_args<int,std::pair<int const,FIK::IKArray<unsigned long>> const&>(void *a1, uint64_t *a2, int *a3)
{
  v3 = *std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::__find_equal<int>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t FIK::IKArray<FIK::JointDefinition>::reserve(uint64_t result, unint64_t a2)
{
  if (*(result + 8) < a2)
  {
    v19 = v2;
    v20 = v3;
    v4 = result;
    v5 = *(result + 24);
    v6 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v6)
    {
      v7 = (*(*v5 + 16))(*(result + 24), 80 * v6, 16);
      v8 = v7;
      if (80 * v6)
      {
        bzero(v7, 80 * v6);
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
      v11 = 0;
      do
      {
        v12 = &v8[v11];
        IKString::IKString(&v8[v11], (v9 + v11), *(v9 + v11 + 16));
        IKString::IKString(&v8[v11 + 24], (v9 + v11 + 24), *(v9 + v11 + 40));
        *(v12 + 3) = *(v9 + v11 + 48);
        *(v12 + 4) = *(v9 + v11 + 64);
        v11 += 80;
        --v10;
      }

      while (v10);
      v9 = v4[2];
      v13 = *v4;
    }

    else
    {
      v13 = 0;
    }

    v14 = v4[1];
    v15 = v4[3];
    v4[1] = v6;
    v4[2] = v8;
    v4[3] = v5;
    v16 = v14;
    v17 = v9;
    v18 = v15;
    result = FIK::IKArray<FIK::JointDefinition>::destroyBufferObjects(&v16, v13);
    if (v17)
    {
      return (*(*v18 + 24))(v18, v17, 0, 8);
    }
  }

  return result;
}

__n128 FIK::IKArray<FIK::JointDefinition>::push_back(void *a1, uint64_t a2)
{
  FIK::IKArray<FIK::JointDefinition>::reserve(a1, *a1 + 1);
  v4 = a1[2] + 80 * *a1;
  IKString::IKString(v4, a2);
  IKString::IKString((v4 + 24), (a2 + 24));
  *(v4 + 48) = *(a2 + 48);
  result = *(a2 + 64);
  *(v4 + 64) = result;
  ++*a1;
  return result;
}

uint64_t FIK::IKArray<FIK::JointDefinition>::destroyBufferObjects(uint64_t result, uint64_t a2)
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

      v3 += 80;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t FIK::IKArray<FIK::JointDefinition>::~IKArray(uint64_t a1)
{
  FIK::IKArray<FIK::JointDefinition>::destroyBufferObjects(a1 + 8, *a1);
  *a1 = 0;
  v2 = *(a1 + 16);
  if (v2)
  {
    (*(**(a1 + 24) + 24))(*(a1 + 24), v2, 0, 8);
  }

  return a1;
}

uint64_t CoreIKFootPlacementSolverCreate(FIK *a1)
{
  if (*(a1 + 88))
  {
    v1 = ikinemaLogObject()[2];
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      CoreIKFootPlacementSolverCreate_cold_1(v1);
    }

    return 0;
  }

  else
  {
    v4 = FIK::defaultAllocator(a1);

    return FIK::Allocator::create<FIK::FootPlacement,FIK::GameRig const&>(v4, a1 + 16);
  }
}

uint64_t FIK::Allocator::create<FIK::FootPlacement,FIK::GameRig const&>(uint64_t a1, uint64_t a2)
{
  result = (*(*a1 + 16))(a1, 688, 16);
  if (result)
  {
    return FIK::FootPlacement::FootPlacement(result, a2);
  }

  return result;
}

uint64_t CoreIKFootPlacementSolverDestroy(FIK *a1)
{
  v2 = FIK::defaultAllocator(a1);

  return FIK::Allocator::destroy<FIK::FootPlacement>(v2, a1);
}

uint64_t FIK::Allocator::destroy<FIK::FootPlacement>(uint64_t result, FIK::GenericSolver *this)
{
  if (this)
  {
    v3 = result;
    FIK::GenericSolver::~GenericSolver(this);
    v4 = *(*v3 + 24);

    return v4(v3, this, 0, 8);
  }

  return result;
}

double CoreIKFootPlacementConstraintSetRayTraceParameters(uint64_t a1, __n128 a2, __n128 a3)
{
  a2.n128_u32[3] = 0;
  a3.n128_u32[3] = 0;
  v4 = a3;
  v5 = a2;
  *&result = FIK::RTGameTask::SetImpactPointAndNormal(a1, &v5, &v4).n128_u64[0];
  return result;
}

uint64_t CoreIKJointGetName(CoreIKConstraint *a1)
{
  v1 = *(*CoreIKConstraint::interface(a1) + 936);

  return v1();
}

double CoreIKJointGetRestTransform(CoreIKConstraint *a1)
{
  v1 = CoreIKConstraint::interface(a1);
  (*(*v1 + 864))(&v3);
  return *&v3;
}

uint64_t CoreIKJointSetRestTransform(CoreIKConstraint *a1, __n128 a2, __n128 a3)
{
  v3 = CoreIKConstraint::interface(a1);
  v4 = a2;
  v4.n128_u32[3] = 0;
  v8[0] = v4;
  v8[1] = a3;
  return (*(*v3 + 440))(v3, v8);
}

uint64_t CoreIKJointSetFkTarget(CoreIKConstraint *a1, __n128 a2)
{
  v2 = CoreIKConstraint::interface(a1);
  v5 = a2;
  return (*(*v2 + 200))(v2, &v5);
}

void *CoreIKJointGetParentName(CoreIKConstraint *a1)
{
  v1 = CoreIKConstraint::interface(a1);
  v2 = (*(*v1 + 392))(v1);
  if (!v2)
  {
    return &unk_245A04BAE;
  }

  v3 = *(*v2 + 936);

  return v3();
}

uint64_t CoreIKJointGetEnabled(CoreIKConstraint *a1)
{
  v1 = *(*CoreIKConstraint::interface(a1) + 896);

  return v1();
}

uint64_t CoreIKJointSetEnabled(CoreIKConstraint *a1)
{
  v1 = *(*CoreIKConstraint::interface(a1) + 176);

  return v1();
}

uint64_t CoreIKJointGetDoFEnabled(CoreIKConstraint *a1)
{
  v1 = CoreIKConstraint::interface(a1);
  v2 = (*(*v1 + 912))(v1, 0);
  (*(*v1 + 912))(v1, 1);
  (*(*v1 + 912))(v1, 2);
  return v2;
}

uint64_t CoreIKJointSetDoFEnabled(CoreIKConstraint *a1)
{
  v1 = *(*CoreIKConstraint::interface(a1) + 136);

  return v1();
}

uint64_t CoreIKJointSetEnableRetargeting(CoreIKConstraint *a1)
{
  v1 = *(*CoreIKConstraint::interface(a1) + 16);

  return v1();
}

uint64_t CoreIKJointGetRetargetingGain(CoreIKConstraint *a1)
{
  v1 = *(*CoreIKConstraint::interface(a1) + 736);

  return v1();
}

uint64_t CoreIKJointSetRetargetingGain(CoreIKConstraint *a1, float a2)
{
  v3 = *(*CoreIKConstraint::interface(a1) + 712);
  v4.n128_f32[0] = a2;

  return v3(v4);
}

double CoreIKJointGetRetargetingGainDOF(CoreIKConstraint *a1)
{
  v1 = CoreIKConstraint::interface(a1);
  v2 = (*(*v1 + 752))(v1, 0);
  v6 = LODWORD(v2);
  v3 = (*(*v1 + 752))(v1, 1);
  v5 = LODWORD(v3);
  (*(*v1 + 752))(v1, 2);
  return COERCE_DOUBLE(__PAIR64__(v5, v6));
}

uint64_t CoreIKJointSetRetargetingGainDOF(CoreIKConstraint *a1, __n128 a2)
{
  v2 = CoreIKConstraint::interface(a1);
  (*(*v2 + 728))(v2, 0, a2);
  v3 = a2;
  v3.n128_u32[0] = a2.n128_u32[1];
  (*(*v2 + 728))(v2, 1, v3);
  v4 = a2;
  v4.n128_u32[0] = a2.n128_u32[2];
  v5 = *(*v2 + 728);

  return v5(v2, 2, v4);
}

uint64_t CoreIKJointGetStretchEnabledDoF(CoreIKConstraint *a1)
{
  v1 = CoreIKConstraint::interface(a1);
  v2 = (*(*v1 + 928))(v1, 3);
  (*(*v1 + 928))(v1, 4);
  (*(*v1 + 928))(v1, 5);
  return v2;
}

uint64_t CoreIKSetStretchEnabledDoF(CoreIKConstraint *a1)
{
  v1 = *(*CoreIKConstraint::interface(a1) + 144);

  return v1();
}

uint64_t CoreIKJointGetEnableStretchLimits(CoreIKConstraint *a1)
{
  v1 = *(*CoreIKConstraint::interface(a1) + 96);

  return v1();
}

uint64_t CoreIKJointSetEnableStretchLimits(CoreIKConstraint *a1)
{
  v1 = *(*CoreIKConstraint::interface(a1) + 88);

  return v1();
}

uint64_t CoreIKJointGetStretchErrorGain(CoreIKConstraint *a1)
{
  v1 = *(*CoreIKConstraint::interface(a1) + 768);

  return v1();
}

uint64_t CoreIKJointSetStretchErrorGain(CoreIKConstraint *a1, float a2)
{
  v3 = *(*CoreIKConstraint::interface(a1) + 760);
  v4.n128_f32[0] = a2;

  return v3(v4);
}

__n128 CoreIKJointGetStretchMin(CoreIKConstraint *a1)
{
  v1 = CoreIKConstraint::interface(a1);
  v2 = (*(*v1 + 688))(v1);
  result.n128_u32[0] = *v2;
  result.n128_u32[1] = v2[2];
  result.n128_u32[2] = v2[4];
  return result;
}

__n128 CoreIKJointGetStretchMax(CoreIKConstraint *a1)
{
  v1 = CoreIKConstraint::interface(a1);
  v2 = (*(*v1 + 688))(v1);
  result.n128_u32[0] = v2[1];
  result.n128_u32[1] = v2[3];
  result.n128_u32[2] = v2[5];
  return result;
}

uint64_t CoreIKJointSetStretchMinAndMax(CoreIKConstraint *a1, __n128 a2, __n128 a3)
{
  v3 = CoreIKConstraint::interface(a1);
  (*(*v3 + 680))(v3, 3, a2, a3);
  v4 = a2;
  v5 = a3;
  v4.n128_u32[0] = a2.n128_u32[1];
  v5.n128_u32[0] = a3.n128_u32[1];
  (*(*v3 + 680))(v3, 4, v4, v5);
  v6 = a2;
  v7 = a3;
  v6.n128_u32[0] = a2.n128_u32[2];
  v7.n128_u32[0] = a3.n128_u32[2];
  v8 = *(*v3 + 680);

  return v8(v3, 5, v6, v7);
}

double CoreIKJointGetTranslationStiffness(CoreIKConstraint *a1)
{
  v1 = CoreIKConstraint::interface(a1);
  v2 = (*(*v1 + 800))(v1, 3);
  v6 = LODWORD(v2);
  v3 = (*(*v1 + 800))(v1, 4);
  v5 = LODWORD(v3);
  (*(*v1 + 800))(v1, 5);
  return COERCE_DOUBLE(__PAIR64__(v5, v6));
}

uint64_t CoreIKJointSetTranslationStiffness(CoreIKConstraint *a1, __n128 a2)
{
  v2 = CoreIKConstraint::interface(a1);
  (*(*v2 + 288))(v2, 3, a2);
  v3 = a2;
  v3.n128_u32[0] = a2.n128_u32[1];
  (*(*v2 + 288))(v2, 4, v3);
  v4 = a2;
  v4.n128_u32[0] = a2.n128_u32[2];
  v5 = *(*v2 + 288);

  return v5(v2, 5, v4);
}

uint64_t CoreIKJointGetEnableLimits(CoreIKConstraint *a1)
{
  v1 = *(*CoreIKConstraint::interface(a1) + 56);

  return v1();
}

uint64_t CoreIKJointSetEnableLimits(CoreIKConstraint *a1)
{
  v1 = *(*CoreIKConstraint::interface(a1) + 48);

  return v1();
}

uint64_t CoreIKJointGetEnforceLimits(CoreIKConstraint *a1)
{
  v1 = *(*CoreIKConstraint::interface(a1) + 72);

  return v1();
}

uint64_t CoreIKJointSetEnforceLimits(CoreIKConstraint *a1)
{
  v1 = *(*CoreIKConstraint::interface(a1) + 64);

  return v1();
}

uint64_t CoreIKJointGetLimitsGain(CoreIKConstraint *a1)
{
  v1 = *(*CoreIKConstraint::interface(a1) + 704);

  return v1();
}

uint64_t CoreIKJointSetLimitsGain(CoreIKConstraint *a1, float a2)
{
  v3 = *(*CoreIKConstraint::interface(a1) + 696);
  v4.n128_f32[0] = a2;

  return v3(v4);
}

uint64_t CoreIKJointSetLimits(CoreIKConstraint *a1, char a2, uint64_t a3, int32x4_t a4, int32x4_t a5)
{
  v7 = CoreIKConstraint::interface(a1);
  v11 = vzip1q_s32(a4, a5);
  v12 = vzip1_s32(*&vextq_s8(a4, a4, 8uLL), *&vextq_s8(a5, a5, 8uLL));
  v13 = a2;
  return (*(*v7 + 624))(v7, &v11, a3);
}

float CoreIKJointGetLimits(CoreIKConstraint *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  v7 = CoreIKConstraint::interface(a1);
  v8 = (*(*v7 + 616))(v7);
  result = *v8;
  v10 = *(v8 + 4);
  v11 = *(v8 + 8);
  v12 = *(v8 + 12);
  v13 = *(v8 + 16);
  v14 = *(v8 + 20);
  v15 = *(v8 + 24);
  *a3 = *v8;
  *a4 = v10;
  a3[1] = v11;
  a4[1] = v12;
  a3[2] = v13;
  a4[2] = v14;
  *a2 = v15;
  return result;
}

uint64_t CoreIKJointSetRotationStiffness(CoreIKConstraint *a1, __n128 a2)
{
  v2 = CoreIKConstraint::interface(a1);
  (*(*v2 + 280))(v2, 0, a2);
  v3 = a2;
  v3.n128_u32[0] = a2.n128_u32[1];
  (*(*v2 + 280))(v2, 1, v3);
  v4 = a2;
  v4.n128_u32[0] = a2.n128_u32[2];
  v5 = *(*v2 + 280);

  return v5(v2, 2, v4);
}

double CoreIKJointGetRotationStiffness(CoreIKConstraint *a1)
{
  v1 = CoreIKConstraint::interface(a1);
  v2 = (*(*v1 + 792))(v1, 0);
  v6 = LODWORD(v2);
  v3 = (*(*v1 + 792))(v1, 1);
  v5 = LODWORD(v3);
  (*(*v1 + 792))(v1, 2);
  return COERCE_DOUBLE(__PAIR64__(v5, v6));
}

uint64_t CoreIKJointGetMaxVelocity(CoreIKConstraint *a1)
{
  v1 = *(*CoreIKConstraint::interface(a1) + 976);

  return v1();
}

uint64_t CoreIKJointSetMaxVelocity(CoreIKConstraint *a1, float a2)
{
  v3 = *(*CoreIKConstraint::interface(a1) + 968);
  v4.n128_f32[0] = a2;

  return v3(v4);
}

void ikinema::loadRigFromString(FIK *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = *MEMORY[0x277D85DE8];
  v18 = 0;
  v6 = FIK::defaultAllocator(a1);
  FIK::Serialisation::LoadIKRigFromString(v27, &v18, a1, a2, v6);
  if (v18)
  {
    logRigFromStringError(v18, a3);
    goto LABEL_3;
  }

  if (v29 == 2)
  {
    v17 = FIK::defaultAllocator(v18);
    FIK::Serialisation::LoadGameRigFromString(v19, &v18, a1, a2, v17);
    if (v18)
    {
      logRigFromStringError(v18, a3);
    }

    else
    {
      std::__variant_detail::__union<(std::__variant_detail::_Trait)1,0ul,FIK::GameRig,FIK::MoCapRig>::__union[abi:nn200100]<FIK::GameRig>(a3, v19);
      *(a3 + 336) = 0;
      *(a3 + 352) = 1;
    }

    FIK::IKArray<FIK::AimSetup>::~IKArray(&v26);
    v23[4] = 0;
    if (v24)
    {
      (*(*v25 + 24))(v25, v24, 0, 8);
    }

    FIK::IKArray<IKString>::~IKArray(v23);
    FIK::IKArray<FIK::RigBone>::~IKArray(v22);
    FIK::IKArray<FIK::GameTask>::~IKArray(v21);
  }

  else
  {
    if (v29 != 1)
    {
      if (v29)
      {
        ikinema::loadRigFromString();
      }

      v8 = ikinemaLogObject()[2];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        ikinema::loadRigFromString(v8, v9, v10, v11, v12, v13, v14, v15);
      }

      *a3 = 0;
      *(a3 + 352) = 0;
      goto LABEL_3;
    }

    v16 = FIK::defaultAllocator(v18);
    FIK::Serialisation::LoadMoCapRigFromString(v19, &v18, a1, a2, v16);
    if (v18)
    {
      logRigFromStringError(v18, a3);
    }

    else
    {
      std::__variant_detail::__union<(std::__variant_detail::_Trait)1,0ul,FIK::GameRig,FIK::MoCapRig>::__union[abi:nn200100]<1ul,FIK::MoCapRig>(a3, v19);
      *(a3 + 336) = 1;
      *(a3 + 352) = 1;
    }

    FIK::IKArray<FIK::RigBoneBase>::~IKArray(v23);
    FIK::IKArray<FIK::MoCapBone>::~IKArray(v22);
    FIK::IKArray<FIK::MoCapTask>::~IKArray(v21);
  }

  if (v19[1])
  {
    (*(*v20 + 24))(v20, v19[0], 0, 8);
  }

LABEL_3:
  if (v27[1])
  {
    (*(*v28 + 24))(v28, v27[0], 0, 8);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void logRigFromStringError(int a1@<W0>, _BYTE *a2@<X8>)
{
  switch(a1)
  {
    case 1:
      v19 = ikinemaLogObject()[2];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        logRigFromStringError(v19);
      }

      break;
    case 3:
      v11 = ikinemaLogObject()[2];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        logRigFromStringError(v11, v12, v13, v14, v15, v16, v17, v18);
      }

      break;
    case 2:
      v3 = ikinemaLogObject()[2];
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        logRigFromStringError(v3, v4, v5, v6, v7, v8, v9, v10);
      }

      break;
  }

  *a2 = 0;
  a2[352] = 0;
}

void ikinema::loadRigFromFile(const char *a1@<X0>, uint64_t a2@<X8>)
{
  v43[5] = *MEMORY[0x277D85DE8];
  v33 = 0;
  v4 = strlen(a1);
  v5 = FIK::defaultAllocator(v4);
  FIK::Serialisation::LoadMoCapRigFromFile(&v34, &v33, a1, v4, v5);
  if (v33)
  {
    FIK::IKArray<FIK::RigBoneBase>::~IKArray(v39);
    FIK::IKArray<FIK::MoCapBone>::~IKArray(v38);
    FIK::IKArray<FIK::MoCapTask>::~IKArray(v37);
    if (v35)
    {
      (*(*v36 + 24))(v36, v34, 0, 8);
    }

    v6 = strlen(a1);
    v7 = FIK::defaultAllocator(v6);
    FIK::Serialisation::LoadGameRigFile(&v34, &v33, a1, v6, v7);
    if (v33)
    {
      FIK::IKArray<FIK::AimSetup>::~IKArray(v43);
      v40 = 0;
      if (v41)
      {
        (*(*v42 + 24))(v42, v41, 0, 8);
      }

      FIK::IKArray<IKString>::~IKArray(v39);
      FIK::IKArray<FIK::RigBone>::~IKArray(v38);
      FIK::IKArray<FIK::GameTask>::~IKArray(v37);
      if (v35)
      {
        (*(*v36 + 24))(v36, v34, 0, 8);
      }

      if (v33 <= 1)
      {
        if (v33 == 1)
        {
          v16 = ikinemaLogObject()[2];
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            ikinema::loadRigFromFile(v16, v17, v18, v19, v20, v21, v22, v23);
          }
        }

        else if (!v33)
        {
          ikinema::loadRigFromFile();
        }
      }

      else if (v33 == 2)
      {
        v24 = ikinemaLogObject()[2];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          ikinema::loadRigFromFile(v24, v25, v26, v27, v28, v29, v30, v31);
        }
      }

      else if (v33 == 3)
      {
        v8 = ikinemaLogObject()[2];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          ikinema::loadRigFromFile(v8, v9, v10, v11, v12, v13, v14, v15);
        }
      }

      *a2 = 0;
      *(a2 + 352) = 0;
      goto LABEL_27;
    }

    std::__variant_detail::__union<(std::__variant_detail::_Trait)1,0ul,FIK::GameRig,FIK::MoCapRig>::__union[abi:nn200100]<FIK::GameRig>(a2, &v34);
    *(a2 + 336) = 0;
    *(a2 + 352) = 1;
    FIK::IKArray<FIK::AimSetup>::~IKArray(v43);
    v40 = 0;
    if (v41)
    {
      (*(*v42 + 24))(v42, v41, 0, 8);
    }

    FIK::IKArray<IKString>::~IKArray(v39);
    FIK::IKArray<FIK::RigBone>::~IKArray(v38);
    FIK::IKArray<FIK::GameTask>::~IKArray(v37);
  }

  else
  {
    std::__variant_detail::__union<(std::__variant_detail::_Trait)1,0ul,FIK::GameRig,FIK::MoCapRig>::__union[abi:nn200100]<1ul,FIK::MoCapRig>(a2, &v34);
    *(a2 + 336) = 1;
    *(a2 + 352) = 1;
    FIK::IKArray<FIK::RigBoneBase>::~IKArray(v39);
    FIK::IKArray<FIK::MoCapBone>::~IKArray(v38);
    FIK::IKArray<FIK::MoCapTask>::~IKArray(v37);
  }

  if (v35)
  {
    (*(*v36 + 24))(v36, v34, 0, 8);
  }

LABEL_27:
  v32 = *MEMORY[0x277D85DE8];
}

CoreIKRig *CoreIKRig::createEmpty(FIK *a1, CFErrorRef *a2)
{
  v3 = a1;
  v52[5] = *MEMORY[0x277D85DE8];
  v4 = FIK::defaultAllocator(a1);
  Empty = FIK::Allocator::create<CoreIKRig>(v4);
  v6 = Empty;
  if (!Empty)
  {
    Empty = CoreIKRig::createEmpty();
  }

  if (v3 != 1)
  {
    if (v3)
    {
      makeError(1, a2);
      goto LABEL_22;
    }

    v13 = 0;
    v14 = 0;
    v15 = FIK::defaultAllocator(Empty);
    v16 = 1065353216;
    v17 = xmmword_245A02320;
    v18 = 1;
    v20 = 0x3727C5AC3E4CCCCDLL;
    v21 = 0x1E3F800000;
    v22 = 0x3F80000040800000;
    v23 = 1;
    v24 = 0;
    v26 = 0;
    v25 = 0;
    v27 = 0x3F80000000000000;
    v28 = 0;
    v29 = 1117782016;
    v30 = 1;
    v31 = 257;
    v32 = 1;
    v33 = xmmword_245A022C0;
    v34 = 0x4000000040000000;
    v37 = 0;
    v36 = 0;
    v35 = 0x40000000;
    v39 = 0;
    v38 = 0;
    v40 = v15;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = v15;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = v15;
    v49 = 0;
    v50 = 0;
    v51 = __PAIR128__(v15, 0);
    memset(v52, 0, 24);
    v52[3] = v15;
    v19 = 2;
    std::__variant_detail::__assignment<std::__variant_detail::__traits<FIK::GameRig,FIK::MoCapRig>>::__assign_alt[abi:nn200100]<0ul,FIK::GameRig,FIK::GameRig&>((v6 + 4), (v6 + 4), &v13);
    v7 = v6[88];
    if (v7 == 1)
    {
      v8 = 3;
    }

    else
    {
      if (v7)
      {
LABEL_14:
        FIK::IKArray<FIK::AimSetup>::~IKArray(v52);
        v49 = 0;
        if (v51)
        {
          (*(**(&v51 + 1) + 24))(*(&v51 + 1), v51, 0, 8);
        }

        FIK::IKArray<IKString>::~IKArray(&v45);
        FIK::IKArray<FIK::RigBone>::~IKArray(&v41);
        FIK::IKArray<FIK::GameTask>::~IKArray(&v36 + 4);
        goto LABEL_20;
      }

      v8 = 1;
    }

    *v6 = v8;
    goto LABEL_14;
  }

  v13 = 0;
  v14 = 0;
  v15 = FIK::defaultAllocator(Empty);
  v16 = 1065353216;
  v17 = xmmword_245A02320;
  v18 = 1;
  v20 = 0x3727C5AC3E4CCCCDLL;
  v21 = 0x1E3F800000;
  v22 = 0x3F80000040800000;
  v23 = 1;
  v24 = 0;
  v26 = 0;
  v25 = 0;
  v27 = 0x3F80000000000000;
  v28 = 0;
  v29 = 1117782016;
  v30 = 1;
  v31 = 257;
  v32 = 1;
  v33 = xmmword_245A022C0;
  v34 = 0x4000000040000000;
  v37 = 0;
  v36 = 0;
  v35 = 0x40000000;
  v39 = 0;
  v38 = 0;
  v40 = v15;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v44 = v15;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v48 = v15;
  v49 = 0;
  v50 = 0;
  v51 = xmmword_245A01E80;
  LOBYTE(v52[0]) = 0;
  HIDWORD(v52[0]) = 1065353216;
  v19 = 1;
  std::__variant_detail::__assignment<std::__variant_detail::__traits<FIK::GameRig,FIK::MoCapRig>>::__assign_alt[abi:nn200100]<1ul,FIK::MoCapRig,FIK::MoCapRig&>((v6 + 4), (v6 + 4), &v13);
  v9 = v6[88];
  if (v9 == 1)
  {
    v10 = 3;
    goto LABEL_18;
  }

  if (!v9)
  {
    v10 = 1;
LABEL_18:
    *v6 = v10;
  }

  FIK::IKArray<FIK::RigBoneBase>::~IKArray(&v45);
  FIK::IKArray<FIK::MoCapBone>::~IKArray(&v41);
  FIK::IKArray<FIK::MoCapTask>::~IKArray(&v36 + 4);
LABEL_20:
  if (v14)
  {
    (*(*v15 + 3))(v15, v13, 0, 8);
  }

LABEL_22:
  result = discardIfInvalid(v6);
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void makeError(CFIndex code, CFErrorRef *a2)
{
  if (!*a2)
  {
    userInfoValues[3] = v2;
    userInfoValues[4] = v3;
    userInfoValues[0] = 0;
    v7 = *MEMORY[0x277CBEE30];
    if (code > 502)
    {
      if (code <= 701)
      {
        if (code == 503 || code == 604)
        {
          v6 = "Constraint not found";
        }

        else
        {
          if (code != 701)
          {
            goto LABEL_33;
          }

          v6 = "Rig has invalid parenting ";
        }
      }

      else if (code > 703)
      {
        if (code == 704)
        {
          v6 = "Multiple constraints for target joint";
        }

        else
        {
          if (code != 705)
          {
            goto LABEL_33;
          }

          v6 = "No joints in rig";
        }
      }

      else if (code == 702)
      {
        v6 = "Constraint has no target joint";
      }

      else
      {
        v6 = "Multiple roots present in rig";
      }
    }

    else if (code <= 200)
    {
      switch(code)
      {
        case 1:
          v6 = "Requested solver type not supported";
          break;
        case 101:
          v6 = "Target already has a constraint";
          break;
        case 102:
          v6 = "Constraint already exists";
          break;
        default:
          goto LABEL_33;
      }
    }

    else if (code > 301)
    {
      if (code != 302 && code != 401)
      {
        goto LABEL_33;
      }

      v6 = "Joint not found";
    }

    else if (code == 201)
    {
      v6 = "Joint already exists";
    }

    else
    {
      if (code != 301)
      {
        goto LABEL_33;
      }

      v6 = "Only leaf joints can be removed";
    }

    userInfoValues[0] = CFStringCreateWithCString(0, v6, 0x8000100u);
LABEL_33:
    *a2 = CFErrorCreateWithUserInfoKeysAndValues(0, @"CoreIKRigAuthoringErrorDomain", code, &v7, userInfoValues, 1);
    if (userInfoValues[0])
    {
      CFRelease(userInfoValues[0]);
    }
  }
}

CoreIKRig *discardIfInvalid(CoreIKRig *a1)
{
  v1 = a1;
  if (!*a1)
  {
    v2 = FIK::defaultAllocator(a1);
    FIK::Allocator::destroy<CoreIKRig>(v2, v1);
    return 0;
  }

  return v1;
}

CoreIKRig *CoreIKRig::createFromJson(FIK *a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = FIK::defaultAllocator(a1);
  v5 = FIK::Allocator::create<CoreIKRig>(v4);
  if (!v5)
  {
    CoreIKRig::createFromJson();
  }

  ikinema::loadRigFromString(a1, a2, v11);
  if (v13 == 1)
  {
    std::__variant_detail::__assignment<std::__variant_detail::__traits<FIK::GameRig,FIK::MoCapRig>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<FIK::GameRig,FIK::MoCapRig>,(std::__variant_detail::_Trait)1>>(v5 + 16, v11);
    v6 = *(v5 + 88);
    if (v6 == 1)
    {
      v7 = 3;
    }

    else
    {
      if (v6)
      {
LABEL_9:
        *(v5 + 368) = 0;
        if ((v13 & 1) != 0 && v12 != -1)
        {
          (off_28589C530[v12])(&v10, v11);
        }

        goto LABEL_12;
      }

      v7 = 1;
    }

    *v5 = v7;
    goto LABEL_9;
  }

LABEL_12:
  result = discardIfInvalid(v5);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

CoreIKRig *CoreIKRig::createFromFile(FIK *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = FIK::defaultAllocator(a1);
  v3 = FIK::Allocator::create<CoreIKRig>(v2);
  if (!v3)
  {
    CoreIKRig::createFromFile();
  }

  ikinema::loadRigFromFile(a1, v9);
  if (v11 == 1)
  {
    std::__variant_detail::__assignment<std::__variant_detail::__traits<FIK::GameRig,FIK::MoCapRig>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<FIK::GameRig,FIK::MoCapRig>,(std::__variant_detail::_Trait)1>>(v3 + 16, v9);
    v4 = *(v3 + 88);
    if (v4 == 1)
    {
      v5 = 3;
    }

    else
    {
      if (v4)
      {
LABEL_9:
        *(v3 + 368) = 0;
        if ((v11 & 1) != 0 && v10 != -1)
        {
          (off_28589C530[v10])(&v8, v9);
        }

        goto LABEL_12;
      }

      v5 = 1;
    }

    *v3 = v5;
    goto LABEL_9;
  }

LABEL_12:
  result = discardIfInvalid(v3);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CoreIKRig::writeAsJsonToFile(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 352);
  if (v3 == 1)
  {
    v6 = a1 + 16;

    return FIK::Serialisation::SaveRig(v6, a2, 1);
  }

  else if (v3)
  {
    v7 = std::__throw_bad_variant_access[abi:nn200100]();
    return CoreIKRig::getAsJsonBuffer(v7);
  }

  else
  {
    v4 = a1 + 16;

    return FIK::Serialisation::SaveRig(v4, a2, 1);
  }
}

uint64_t CoreIKRig::getAsJsonBuffer(CoreIKRig *this)
{
  if (*(this + 88))
  {
    return allocateAndGetRigAsJsonBuffer<FIK::MoCapRig>(this + 16);
  }

  else
  {
    return allocateAndGetRigAsJsonBuffer<FIK::GameRig>(this + 16);
  }
}

uint64_t allocateAndGetRigAsJsonBuffer<FIK::GameRig>(uint64_t a1)
{
  if (*(a1 + 336))
  {
    v4 = std::__throw_bad_variant_access[abi:nn200100]();
    return allocateAndGetRigAsJsonBuffer<FIK::MoCapRig>(v4);
  }

  else
  {
    FIK::Serialisation::GetRigJSON(&v5);
    if (v6)
    {
      v1 = v5;
    }

    else
    {
      v1 = &unk_245A045FD;
    }

    v2 = CFStringCreateWithCString(0, v1, 0x8000100u);
    if (v6)
    {
      (*(*v7 + 24))(v7, v5, 0, 8);
    }

    return v2;
  }
}

uint64_t allocateAndGetRigAsJsonBuffer<FIK::MoCapRig>(uint64_t a1)
{
  if (*(a1 + 336) == 1)
  {
    FIK::Serialisation::GetRigJSON(&v6);
    if (v7)
    {
      v1 = v6;
    }

    else
    {
      v1 = &unk_245A045FD;
    }

    v2 = CFStringCreateWithCString(0, v1, 0x8000100u);
    if (v7)
    {
      (*(*v8 + 24))(v8, v6, 0, 8);
    }

    return v2;
  }

  else
  {
    v4 = std::__throw_bad_variant_access[abi:nn200100]();
    return CoreIKRig::destroy(v4, v5);
  }
}

uint64_t CoreIKRig::destroy(CoreIKRig *this, CoreIKRig *a2)
{
  v2 = this;
  if (!this)
  {
    this = CoreIKRig::destroy();
  }

  v3 = FIK::defaultAllocator(this);

  return FIK::Allocator::destroy<CoreIKRig>(v3, v2);
}

uint64_t FIK::Allocator::destroy<CoreIKRig>(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    v4 = *(a2 + 352);
    if (v4 != -1)
    {
      (off_28589C530[v4])(&v5, a2 + 16);
    }

    *(a2 + 352) = -1;
    return (*(*v3 + 24))(v3, a2, 0, 8);
  }

  return result;
}

uint64_t CoreIKRig::sourceJointCount(CoreIKRig *this)
{
  v1 = *(this + 88);
  if (v1)
  {
    if (v1 != 1)
    {
      CoreIKRig::sourceJointCount();
    }

    v2 = 256;
  }

  else
  {
    v2 = 224;
  }

  return *(this + v2);
}

uint64_t CoreIKRig::targetJointCount(CoreIKRig *this)
{
  if (*(this + 88) >= 2u)
  {
    CoreIKRig::targetJointCount();
  }

  return *(this + 28);
}

void *CoreIKRig::sourceJointName(CoreIKRig *this, unint64_t a2)
{
  v2 = *(this + 88);
  if (v2 != 1)
  {
    if (v2)
    {
      CoreIKRig::sourceJointName();
    }

    if (*(this + 28) > a2)
    {
      v3 = *(this + 30) + (a2 << 8);
      goto LABEL_7;
    }

    v5 = ikinemaLogObject()[2];
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      return &unk_245A045FD;
    }

LABEL_12:
    CoreIKRig::sourceJointName(v5, v6, v7, v8, v9, v10, v11, v12);
    return &unk_245A045FD;
  }

  if (*(this + 32) <= a2)
  {
    v5 = ikinemaLogObject()[2];
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      return &unk_245A045FD;
    }

    goto LABEL_12;
  }

  v3 = *(this + 34) + 96 * a2;
LABEL_7:
  if (*(v3 + 16))
  {
    return *(v3 + 8);
  }

  return &unk_245A045FD;
}

void *CoreIKRig::targetJointName(CoreIKRig *this, unint64_t a2)
{
  v2 = *(this + 88);
  if (v2 != 1)
  {
    if (v2)
    {
      CoreIKRig::targetJointName();
    }

    if (*(this + 28) > a2)
    {
      v3 = *(this + 30) + (a2 << 8);
      goto LABEL_7;
    }

    v5 = ikinemaLogObject()[2];
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      return &unk_245A045FD;
    }

LABEL_12:
    CoreIKRig::targetJointName(v5, v6, v7, v8, v9, v10, v11, v12);
    return &unk_245A045FD;
  }

  if (*(this + 28) <= a2)
  {
    v5 = ikinemaLogObject()[2];
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      return &unk_245A045FD;
    }

    goto LABEL_12;
  }

  v3 = *(this + 30) + 544 * a2;
LABEL_7:
  if (*(v3 + 16))
  {
    return *(v3 + 8);
  }

  return &unk_245A045FD;
}

void *CoreIKRig::sourceJointParentName(CoreIKRig *this, unint64_t a2)
{
  v2 = *(this + 88);
  if (v2 != 1)
  {
    if (v2)
    {
      CoreIKRig::sourceJointParentName();
    }

    if (*(this + 28) > a2)
    {
      v3 = *(this + 30) + (a2 << 8);
      goto LABEL_7;
    }

    v5 = ikinemaLogObject()[2];
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      return &unk_245A045FD;
    }

LABEL_12:
    CoreIKRig::sourceJointParentName(v5, v6, v7, v8, v9, v10, v11, v12);
    return &unk_245A045FD;
  }

  if (*(this + 32) <= a2)
  {
    v5 = ikinemaLogObject()[2];
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      return &unk_245A045FD;
    }

    goto LABEL_12;
  }

  v3 = *(this + 34) + 96 * a2;
LABEL_7:
  if (*(v3 + 40))
  {
    return *(v3 + 32);
  }

  return &unk_245A045FD;
}

void *CoreIKRig::targetJointParentName(CoreIKRig *this, unint64_t a2)
{
  v2 = *(this + 88);
  if (v2 != 1)
  {
    if (v2)
    {
      CoreIKRig::targetJointParentName();
    }

    if (*(this + 28) > a2)
    {
      v3 = *(this + 30) + (a2 << 8);
      goto LABEL_7;
    }

    v5 = ikinemaLogObject()[2];
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      return &unk_245A045FD;
    }

LABEL_12:
    CoreIKRig::targetJointParentName(v5, v6, v7, v8, v9, v10, v11, v12);
    return &unk_245A045FD;
  }

  if (*(this + 28) <= a2)
  {
    v5 = ikinemaLogObject()[2];
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      return &unk_245A045FD;
    }

    goto LABEL_12;
  }

  v3 = *(this + 30) + 544 * a2;
LABEL_7:
  if (*(v3 + 40))
  {
    return *(v3 + 32);
  }

  return &unk_245A045FD;
}

uint64_t CoreIKRig::constraintCount(CoreIKRig *this)
{
  if (*(this + 88) > 1u)
  {
    return -1;
  }

  else
  {
    return *(this + 24);
  }
}

void *CoreIKRig::constraintName(CoreIKRig *this, uint64_t a2)
{
  v2 = *(this + 88);
  if (v2 == 1)
  {
    v3 = (*(this + 26) + (a2 << 8));
  }

  else
  {
    if (v2)
    {
      return &unk_245A045FD;
    }

    v3 = (*(this + 26) + 240 * a2);
  }

  if (v3[1])
  {
    return *v3;
  }

  return &unk_245A045FD;
}

float CoreIKRig::getUnitScale(CoreIKRig *this)
{
  result = 0.0;
  if (*(this + 88) <= 1u)
  {
    return *(this + 10);
  }

  return result;
}

uint64_t CoreIKRig::setUnitScale(uint64_t this, float a2)
{
  if (*(this + 352) <= 1u)
  {
    *(this + 40) = a2;
  }

  return this;
}

uint64_t CoreIKRig::getContinuousSolving(CoreIKRig *this)
{
  if (*(this + 88) > 1u)
  {
    v1 = 0;
  }

  else
  {
    v1 = *(this + 60);
  }

  return v1 & 1;
}

uint64_t CoreIKRig::setContinuousSolving(uint64_t this, char a2)
{
  if (*(this + 352) <= 1u)
  {
    *(this + 60) = a2;
  }

  return this;
}

float CoreIKRig::getPCoefficient(CoreIKRig *this)
{
  result = 0.0;
  if (*(this + 88) <= 1u)
  {
    return *(this + 20);
  }

  return result;
}

uint64_t CoreIKRig::setPCoefficient(uint64_t this, float a2)
{
  if (*(this + 352) <= 1u)
  {
    *(this + 80) = a2;
  }

  return this;
}

float CoreIKRig::getSolutionTolerance(CoreIKRig *this)
{
  result = 0.0;
  if (*(this + 88) <= 1u)
  {
    return *(this + 21);
  }

  return result;
}

uint64_t CoreIKRig::setSolutionTolerance(uint64_t this, float a2)
{
  if (*(this + 352) <= 1u)
  {
    *(this + 84) = a2;
  }

  return this;
}

float CoreIKRig::getRetargetingGain(CoreIKRig *this)
{
  result = 0.0;
  if (*(this + 88) <= 1u)
  {
    return *(this + 22);
  }

  return result;
}

uint64_t CoreIKRig::setRetargetingGain(uint64_t this, float a2)
{
  if (*(this + 352) <= 1u)
  {
    *(this + 88) = a2;
  }

  return this;
}

uint64_t CoreIKRig::getMaxIterations(CoreIKRig *this)
{
  if (*(this + 88) <= 1u)
  {
    return *(this + 23);
  }

  else
  {
    return 0;
  }
}

uint64_t CoreIKRig::setMaxIterations(uint64_t this, int a2)
{
  if (*(this + 352) <= 1u)
  {
    *(this + 92) = a2;
  }

  return this;
}

float CoreIKRig::getTaskPrecision(CoreIKRig *this)
{
  result = 0.0;
  if (*(this + 88) <= 1u)
  {
    return *(this + 24);
  }

  return result;
}

uint64_t CoreIKRig::setTaskPrecision(uint64_t this, float a2)
{
  if (*(this + 352) <= 1u)
  {
    *(this + 96) = a2;
  }

  return this;
}

float CoreIKRig::getLimitsGain(CoreIKRig *this)
{
  result = 0.0;
  if (*(this + 88) <= 1u)
  {
    return *(this + 25);
  }

  return result;
}

uint64_t CoreIKRig::setLimitsGain(uint64_t this, float a2)
{
  if (*(this + 352) <= 1u)
  {
    *(this + 100) = a2;
  }

  return this;
}

uint64_t CoreIKRig::getTranslateRoot(CoreIKRig *this)
{
  if (*(this + 88) > 1u)
  {
    v1 = 0;
  }

  else
  {
    v1 = *(this + 104);
  }

  return v1 & 1;
}

uint64_t CoreIKRig::setTranslateRoot(uint64_t this, char a2)
{
  if (*(this + 352) <= 1u)
  {
    *(this + 104) = a2;
  }

  return this;
}

uint64_t CoreIKRig::getEnableShadowPosing(CoreIKRig *this)
{
  if (*(this + 88) > 1u)
  {
    v1 = 0;
  }

  else
  {
    v1 = *(this + 105);
  }

  return v1 & 1;
}

uint64_t CoreIKRig::setEnableShadowPosing(uint64_t this, char a2)
{
  if (*(this + 352) <= 1u)
  {
    *(this + 105) = a2;
  }

  return this;
}

uint64_t CoreIKRig::getCombineErrors(CoreIKRig *this)
{
  if (*(this + 88) > 1u)
  {
    v1 = 0;
  }

  else
  {
    v1 = *(this + 106);
  }

  return v1 & 1;
}

uint64_t CoreIKRig::setCombineErrors(uint64_t this, char a2)
{
  if (*(this + 352) <= 1u)
  {
    *(this + 106) = a2;
  }

  return this;
}

double CoreIKRig::getSourceTransform@<D0>(CoreIKRig *this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 88) == 1)
  {
    v3 = *(this + 18);
    v4 = *(this + 19);
    *a2 = v3;
    *(a2 + 16) = v4;
  }

  else
  {
    v5 = ikinemaLogObject()[2];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      CoreIKRig::getSourceTransform(v5, v6, v7, v8, v9, v10, v11, v12);
    }

    *a2 = 0;
    *(a2 + 8) = 0;
    *&v3 = 0;
    *(a2 + 16) = xmmword_245A01E80;
  }

  return *&v3;
}

void CoreIKRig::setSourceTransform(CoreIKRig *this, const FIK::Transform *a2)
{
  if (*(this + 88) == 1)
  {
    *(this + 18) = *a2;
    *(this + 19) = *(a2 + 1);
  }

  else
  {
    v2 = ikinemaLogObject()[2];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      CoreIKRig::setSourceTransform(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

uint64_t CoreIKRig::getRigidBodySolve(CoreIKRig *this)
{
  if (*(this + 88) == 1)
  {
    v1 = *(this + 320);
  }

  else
  {
    v2 = ikinemaLogObject()[2];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      CoreIKRig::getRigidBodySolve(v2, v3, v4, v5, v6, v7, v8, v9);
    }

    v1 = 0;
  }

  return v1 & 1;
}

void CoreIKRig::setRigidBodySolve(CoreIKRig *this, char a2)
{
  if (*(this + 88) == 1)
  {
    *(this + 320) = a2;
  }

  else
  {
    v2 = ikinemaLogObject()[2];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      CoreIKRig::setRigidBodySolve(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

float CoreIKRig::getSourceScale(CoreIKRig *this)
{
  if (*(this + 88) == 1)
  {
    return *(this + 81);
  }

  v2 = ikinemaLogObject()[2];
  v1 = -1.0;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    CoreIKRig::getSourceScale(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  return v1;
}

void CoreIKRig::setSourceScale(CoreIKRig *this, float a2)
{
  if (*(this + 88) == 1)
  {
    *(this + 81) = a2;
  }

  else
  {
    v2 = ikinemaLogObject()[2];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      CoreIKRig::setSourceScale(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

double CoreIKRig::updateRigSettings(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 352) <= 1u)
  {
    *(a1 + 40) = *a2;
    *(a1 + 60) = *(a2 + 4);
    *(a1 + 80) = *(a2 + 8);
    *(a1 + 88) = *(a2 + 16);
    *(a1 + 92) = *(a2 + 20);
    result = *(a2 + 24);
    *(a1 + 96) = result;
    *(a1 + 104) = *(a2 + 32);
    *(a1 + 105) = *(a2 + 33);
  }

  return result;
}

double CoreIKRig::getRigSettings@<D0>(CoreIKRig *this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 88) <= 1u)
  {
    v2 = *(this + 60);
    v3 = *(this + 22);
    v4 = *(this + 23);
    v5 = *(this + 52);
    v6 = *(this + 106);
    *a2 = *(this + 10);
    *(a2 + 4) = v2;
    *(a2 + 8) = *(this + 10);
    *(a2 + 16) = v3;
    *(a2 + 20) = v4;
    result = *(this + 12);
    *(a2 + 24) = result;
    *(a2 + 32) = v5;
    *(a2 + 34) = v6;
  }

  return result;
}

void CoreIKRig::addConstraintsWithSettings(uint64_t a1, const char **a2, uint64_t a3, CFErrorRef *a4)
{
  if (a3)
  {
    v5 = a3;
    do
    {
      CoreIKRig::addConstraintWithSettings(a1, a2, a4);
      a2 += 14;
      --v5;
    }

    while (v5);
  }
}

void CoreIKRig::addConstraintWithSettings(uint64_t a1, const char **a2, CFErrorRef *a3)
{
  v6 = *(a1 + 352);
  if (!v6)
  {
    *(a1 + 368) = 1;
    v7 = *a2;
    v8 = a2[1];
    v9 = strlen(v8);
    v10 = FIK::IKRigUtils::GetTaskIndexByBoneName<FIK::GameRig>(v8, v9, a1 + 16);
    if (v10 == -1)
    {
      v29 = 0uLL;
      v30 = FIK::defaultAllocator(v10);
      v12 = strlen(v7);
      IKString::assign(&v29, v7, v12);
      v13 = FIK::IKRigUtils::GetTaskIndexByName<FIK::GameRig>(&v29, a1 + 16);
      v14 = v13;
      if (*(&v29 + 1))
      {
        v13 = (*(*v30 + 3))(v30, v29, 0, 8);
      }

      if (v14 == -1)
      {
        v26 = FIK::defaultAllocator(v13);
        v29 = 0u;
        v30 = v26;
        v31 = 0;
        v32 = 0;
        v33 = v26;
        v34 = -1;
        v35 = 257;
        v36 = 0;
        v37 = 16843009;
        v38 = 257;
        v39 = -1;
        v40 = xmmword_245A02300;
        v41 = xmmword_245A02310;
        v42 = xmmword_245A022D0;
        v43 = 0x4000000040000000;
        v44 = 0x40000000;
        v46 = 0;
        v45 = 0;
        v48 = 0;
        v47 = 0;
        *v50 = xmmword_245A01E80;
        v49 = 5;
        v51 = 0;
        *&v50[16] = 0uLL;
        v52 = xmmword_245A01E80;
        HIDWORD(v53) = 0;
        *&v53 = 0;
        WORD4(v53) = 0;
        v27 = strlen(*a2);
        v28 = strlen(a2[1]);
        copySettingsToConstraint<FIK::GameTask>(a2, *a2, v27, a2[1], v28, &v29);
        FIK::IKArray<FIK::GameTask>::push_back<FIK::GameTask&,void>(a1 + 192, &v29);
        if (v32)
        {
          (*(*v33 + 3))(v33, v31, 0, 8);
          v31 = 0;
          v32 = 0;
        }

        if (*(&v29 + 1))
        {
          (*(*v30 + 3))(v30, v29, 0, 8);
        }

        goto LABEL_9;
      }

      v11 = 102;
    }

    else
    {
      v11 = 101;
    }

    makeError(v11, a3);
LABEL_9:
    v6 = *(a1 + 352);
  }

  if (v6 != 1)
  {
    return;
  }

  *(a1 + 368) = 1;
  v15 = *a2;
  v16 = strlen(a2[1]);
  v17 = FIK::IKRigUtils::GetTaskIndexByBoneName<FIK::MoCapRig>(a2[1], v16, a1 + 16);
  if (v17 != -1)
  {
    v18 = 101;
LABEL_17:
    makeError(v18, a3);
    return;
  }

  v19 = FIK::defaultAllocator(v17);
  v29 = 0uLL;
  v30 = v19;
  v20 = strlen(v15);
  IKString::assign(&v29, v15, v20);
  v21 = FIK::IKRigUtils::GetTaskIndexByName<FIK::MoCapRig>(&v29, a1 + 16);
  v22 = v21;
  if (*(&v29 + 1))
  {
    v21 = (*(*v30 + 3))(v30, v29, 0, 8);
  }

  if (v22 != -1)
  {
    v18 = 102;
    goto LABEL_17;
  }

  v23 = FIK::defaultAllocator(v21);
  v29 = 0u;
  v30 = v23;
  v31 = 0;
  v32 = 0;
  v33 = v23;
  v34 = -1;
  v35 = 257;
  v36 = 0;
  v37 = 16843009;
  v38 = 257;
  v39 = -1;
  v40 = xmmword_245A02300;
  v41 = xmmword_245A02310;
  v42 = xmmword_245A022D0;
  v43 = 0x4000000040000000;
  v44 = 0x40000000;
  v46 = 0;
  v45 = 0;
  v48 = 0;
  v47 = 0;
  v49 = 5;
  memset(v50, 0, 20);
  *&v50[20] = v23;
  *&v50[28] = -1;
  LOWORD(v51) = 1;
  v52 = 0uLL;
  v53 = xmmword_245A01E80;
  v54 = xmmword_245A01EF0;
  v24 = strlen(*a2);
  v25 = strlen(a2[1]);
  copySettingsToConstraint<FIK::GameTask>(a2, *a2, v24, a2[1], v25, &v29);
  FIK::IKArray<FIK::MoCapTask>::push_back<FIK::MoCapTask&,void>(a1 + 192, &v29);
  if (*&v50[12])
  {
    (*(**&v50[20] + 24))(*&v50[20], *&v50[4], 0, 8);
    *&v50[4] = 0;
    *&v50[12] = 0;
  }

  if (v32)
  {
    (*(*v33 + 3))(v33, v31, 0, 8);
    v31 = 0;
    v32 = 0;
  }

  if (*(&v29 + 1))
  {
    (*(*v30 + 3))(v30, v29, 0, 8);
  }
}

double CoreIKRig::updateConstraintWithSettings(uint64_t a1, char *a2, IKString *a3, uint64_t a4, CFErrorRef *a5)
{
  v10 = *(a1 + 352);
  if (!v10)
  {
    v27 = 0;
    v28 = 0;
    v29 = FIK::defaultAllocator(a1);
    IKString::assign(&v27, a2, a3);
    v11 = FIK::IKRigUtils::GetTaskIndexByName<FIK::GameRig>(&v27, a1 + 16);
    if (v28)
    {
      (*(*v29 + 3))(v29, v27, 0, 8);
    }

    if (v11 == -1)
    {
      v15 = ikinemaLogObject();
      if (os_log_type_enabled(v15[2], OS_LOG_TYPE_ERROR))
      {
        CoreIKRig::updateConstraintWithSettings();
      }

      makeError(503, a5);
    }

    else
    {
      v12 = (*(a1 + 208) + 240 * v11);
      v13 = v12[1];
      if (v13)
      {
        v14 = *v12;
      }

      else
      {
        v14 = &unk_245A045FD;
      }

      v17 = v12[4];
      if (v17)
      {
        v18 = v12[3];
      }

      else
      {
        v18 = &unk_245A045FD;
      }

      *&result = copySettingsToConstraint<FIK::GameTask>(a4, v14, v13, v18, v17, v12).n128_u64[0];
    }

    v10 = *(a1 + 352);
  }

  if (v10 == 1)
  {
    v19 = FIK::defaultAllocator(a1);
    v27 = 0;
    v28 = 0;
    v29 = v19;
    IKString::assign(&v27, a2, a3);
    v20 = FIK::IKRigUtils::GetTaskIndexByName<FIK::MoCapRig>(&v27, a1 + 16);
    if (v28)
    {
      (*(*v29 + 3))(v29, v27, 0, 8);
    }

    if (v20 == -1)
    {
      v24 = ikinemaLogObject();
      if (os_log_type_enabled(v24[2], OS_LOG_TYPE_ERROR))
      {
        CoreIKRig::updateConstraintWithSettings();
      }

      makeError(503, a5);
    }

    else
    {
      v21 = (*(a1 + 208) + (v20 << 8));
      v22 = v21[1];
      if (v22)
      {
        v23 = *v21;
      }

      else
      {
        v23 = &unk_245A045FD;
      }

      v25 = v21[4];
      if (v25)
      {
        v26 = v21[3];
      }

      else
      {
        v26 = &unk_245A045FD;
      }

      *&result = copySettingsToConstraint<FIK::GameTask>(a4, v23, v22, v26, v25, v21).n128_u64[0];
    }
  }

  return result;
}

double CoreIKRig::getRigConstraintSettings@<D0>(uint64_t a1@<X0>, char *a2@<X1>, IKString *a3@<X2>, _OWORD *a4@<X8>)
{
  v4 = *(a1 + 352);
  if (v4 == 1)
  {
    *&result = extractConstraintSettingsFromRig<FIK::MoCapRig>((a1 + 16), a2, a3, a4).n128_u64[0];
  }

  else if (v4)
  {
    result = 0.0;
    a4[5] = 0u;
    a4[6] = 0u;
    a4[3] = 0u;
    a4[4] = 0u;
    a4[1] = 0u;
    a4[2] = 0u;
    *a4 = 0u;
  }

  else
  {
    *&result = extractConstraintSettingsFromRig<FIK::GameRig>((a1 + 16), a2, a3, a4).n128_u64[0];
  }

  return result;
}

__n128 extractConstraintSettingsFromRig<FIK::GameRig>@<Q0>(FIK *a1@<X0>, char *a2@<X1>, IKString *a3@<X2>, uint64_t a4@<X8>)
{
  v21 = 0;
  v22 = 0;
  v23 = FIK::defaultAllocator(a1);
  IKString::assign(&v21, a2, a3);
  v8 = FIK::IKRigUtils::GetTaskIndexByName<FIK::GameRig>(&v21, a1);
  if (v22)
  {
    (*(*v23 + 3))(v23, v21, 0, 8);
  }

  v10 = *(a1 + 24) + 240 * v8;
  if (*(v10 + 8))
  {
    v11 = *v10;
  }

  else
  {
    v11 = &unk_245A045FD;
  }

  *a4 = v11;
  if (*(v10 + 32))
  {
    v12 = *(v10 + 24);
  }

  else
  {
    v12 = &unk_245A045FD;
  }

  *(a4 + 8) = v12;
  v9.i16[0] = *(v10 + 55);
  v13 = v9.u8[3];
  v14 = v9.u8[1];
  v9.i16[0] = v9.u8[0];
  v9.i16[1] = v14;
  v9.i16[2] = *(v10 + 57);
  v9.i16[3] = v13;
  *(a4 + 16) = *(v10 + 52);
  v9.i32[0] = vmovn_s16(v9).u32[0];
  v15 = v9.i16[0];
  *(a4 + 22) = v9.i8[4];
  v9.i16[0] = *(v10 + 58);
  v16 = v9.u8[3];
  v17 = v9.u8[1];
  v9.i16[0] = v9.u8[0];
  v9.i16[1] = v17;
  v9.i16[2] = *(v10 + 60);
  *(a4 + 20) = v15;
  v9.i16[3] = v16;
  *(a4 + 26) = v9.i8[4];
  *(a4 + 24) = vmovn_s16(v9).u16[0];
  *(a4 + 28) = *(v10 + 64);
  v18 = *(v10 + 96);
  *(a4 + 48) = *(v10 + 80);
  *(a4 + 64) = v18;
  result = *(v10 + 112);
  v20 = *(v10 + 128);
  *(a4 + 80) = result;
  *(a4 + 96) = v20;
  return result;
}

__n128 extractConstraintSettingsFromRig<FIK::MoCapRig>@<Q0>(FIK *a1@<X0>, char *a2@<X1>, IKString *a3@<X2>, uint64_t a4@<X8>)
{
  v21 = 0;
  v22 = 0;
  v23 = FIK::defaultAllocator(a1);
  IKString::assign(&v21, a2, a3);
  v8 = FIK::IKRigUtils::GetTaskIndexByName<FIK::MoCapRig>(&v21, a1);
  if (v22)
  {
    (*(*v23 + 3))(v23, v21, 0, 8);
  }

  v10 = *(a1 + 24) + (v8 << 8);
  if (*(v10 + 8))
  {
    v11 = *v10;
  }

  else
  {
    v11 = &unk_245A045FD;
  }

  *a4 = v11;
  if (*(v10 + 32))
  {
    v12 = *(v10 + 24);
  }

  else
  {
    v12 = &unk_245A045FD;
  }

  *(a4 + 8) = v12;
  v9.i16[0] = *(v10 + 55);
  v13 = v9.u8[3];
  v14 = v9.u8[1];
  v9.i16[0] = v9.u8[0];
  v9.i16[1] = v14;
  v9.i16[2] = *(v10 + 57);
  v9.i16[3] = v13;
  *(a4 + 16) = *(v10 + 52);
  v9.i32[0] = vmovn_s16(v9).u32[0];
  v15 = v9.i16[0];
  *(a4 + 22) = v9.i8[4];
  v9.i16[0] = *(v10 + 58);
  v16 = v9.u8[3];
  v17 = v9.u8[1];
  v9.i16[0] = v9.u8[0];
  v9.i16[1] = v17;
  v9.i16[2] = *(v10 + 60);
  *(a4 + 20) = v15;
  v9.i16[3] = v16;
  *(a4 + 26) = v9.i8[4];
  *(a4 + 24) = vmovn_s16(v9).u16[0];
  *(a4 + 28) = *(v10 + 64);
  v18 = *(v10 + 96);
  *(a4 + 48) = *(v10 + 80);
  *(a4 + 64) = v18;
  result = *(v10 + 112);
  v20 = *(v10 + 128);
  *(a4 + 80) = result;
  *(a4 + 96) = v20;
  return result;
}

uint64_t CoreIKRig::getLookAtEnabled(uint64_t a1, char *a2, IKString *a3)
{
  if (*(a1 + 352))
  {
    v5 = 0;
  }

  else
  {
    v14 = v3;
    v15 = v4;
    v11 = 0;
    v12 = 0;
    v13 = FIK::defaultAllocator(a1);
    IKString::assign(&v11, a2, a3);
    v9 = FIK::IKRigUtils::GetTaskIndexByName<FIK::GameRig>(&v11, a1 + 16);
    if (v12)
    {
      (*(*v13 + 3))(v13, v11, 0, 8);
    }

    v5 = *(*(a1 + 208) + 240 * v9 + 233);
  }

  return v5 & 1;
}

FIK *CoreIKRig::setLookAtEnabled(FIK *result, char *a2, IKString *a3, char a4)
{
  if (!*(result + 88))
  {
    v14 = v4;
    v15 = v5;
    v9 = result;
    v11 = 0;
    v12 = 0;
    v13 = FIK::defaultAllocator(result);
    IKString::assign(&v11, a2, a3);
    result = FIK::IKRigUtils::GetTaskIndexByName<FIK::GameRig>(&v11, v9 + 16);
    v10 = result;
    if (v12)
    {
      result = (*(*v13 + 3))(v13, v11, 0, 8);
    }

    *(*(v9 + 26) + 240 * v10 + 233) = a4;
  }

  return result;
}

__n128 CoreIKRig::getLookAtAxis(uint64_t a1, char *a2, IKString *a3)
{
  result.n128_u64[0] = 0;
  if (!*(a1 + 352))
  {
    v13 = v3;
    v14 = v4;
    v10 = 0;
    v11 = 0;
    v12 = FIK::defaultAllocator(a1);
    IKString::assign(&v10, a2, a3);
    v9 = FIK::IKRigUtils::GetTaskIndexByName<FIK::GameRig>(&v10, a1 + 16);
    if (v11)
    {
      (*(*v12 + 3))(v12, v10, 0, 8);
    }

    return *(*(a1 + 208) + 240 * v9 + 176);
  }

  return result;
}

__n128 CoreIKRig::setLookAtAxis(uint64_t a1, char *a2, IKString *a3, __n128 result)
{
  if (!*(a1 + 352))
  {
    v14 = v4;
    v15 = v5;
    v10 = result;
    v11 = 0;
    v12 = 0;
    v13 = FIK::defaultAllocator(a1);
    IKString::assign(&v11, a2, a3);
    v9 = FIK::IKRigUtils::GetTaskIndexByName<FIK::GameRig>(&v11, a1 + 16);
    if (v12)
    {
      (*(*v13 + 3))(v13, v11, 0, 8);
    }

    result = v10;
    *(*(a1 + 208) + 240 * v9 + 176) = v10;
  }

  return result;
}

uint64_t CoreIKRig::getUsesLocalSpaceLookAtAxis(uint64_t a1, char *a2, IKString *a3)
{
  if (*(a1 + 352))
  {
    v5 = 0;
  }

  else
  {
    v14 = v3;
    v15 = v4;
    v11 = 0;
    v12 = 0;
    v13 = FIK::defaultAllocator(a1);
    IKString::assign(&v11, a2, a3);
    v9 = FIK::IKRigUtils::GetTaskIndexByName<FIK::GameRig>(&v11, a1 + 16);
    if (v12)
    {
      (*(*v13 + 3))(v13, v11, 0, 8);
    }

    v5 = *(*(a1 + 208) + 240 * v9 + 232);
  }

  return v5 & 1;
}

FIK *CoreIKRig::setUsesLocalSpaceLookAtAxis(FIK *result, char *a2, IKString *a3)
{
  if (!*(result + 88))
  {
    v12 = v3;
    v13 = v4;
    v7 = result;
    v9 = 0;
    v10 = 0;
    v11 = FIK::defaultAllocator(result);
    IKString::assign(&v9, a2, a3);
    result = FIK::IKRigUtils::GetTaskIndexByName<FIK::GameRig>(&v9, v7 + 16);
    v8 = result;
    if (v10)
    {
      result = (*(*v11 + 3))(v11, v9, 0, 8);
    }

    *(*(v7 + 26) + 240 * v8 + 232) = 1;
  }

  return result;
}

uint64_t CoreIKRig::getUsesModelSpaceLookAtAxis(uint64_t a1, char *a2, IKString *a3)
{
  if (*(a1 + 352))
  {
    v5 = 0;
  }

  else
  {
    v14 = v3;
    v15 = v4;
    v11 = 0;
    v12 = 0;
    v13 = FIK::defaultAllocator(a1);
    IKString::assign(&v11, a2, a3);
    v9 = FIK::IKRigUtils::GetTaskIndexByName<FIK::GameRig>(&v11, a1 + 16);
    if (v12)
    {
      (*(*v13 + 3))(v13, v11, 0, 8);
    }

    v5 = *(*(a1 + 208) + 240 * v9 + 232) ^ 1;
  }

  return v5 & 1;
}

FIK *CoreIKRig::setUsesModelSpaceLookAtAxis(FIK *result, char *a2, IKString *a3)
{
  if (!*(result + 88))
  {
    v12 = v3;
    v13 = v4;
    v7 = result;
    v9 = 0;
    v10 = 0;
    v11 = FIK::defaultAllocator(result);
    IKString::assign(&v9, a2, a3);
    result = FIK::IKRigUtils::GetTaskIndexByName<FIK::GameRig>(&v9, v7 + 16);
    v8 = result;
    if (v10)
    {
      result = (*(*v11 + 3))(v11, v9, 0, 8);
    }

    *(*(v7 + 26) + 240 * v8 + 232) = 0;
  }

  return result;
}

void *CoreIKRig::getConstraintSourceName(uint64_t a1, char *a2, IKString *a3)
{
  v3 = getMoCapTask<std::variant<FIK::GameRig,FIK::MoCapRig> const>(a1 + 16, a2, a3);
  if (v3 && *(v3 + 184))
  {
    return *(v3 + 176);
  }

  else
  {
    return &unk_245A045FD;
  }
}

uint64_t getMoCapTask<std::variant<FIK::GameRig,FIK::MoCapRig> const>(uint64_t a1, char *a2, IKString *a3)
{
  if (*(a1 + 336) == 1)
  {
    v17 = 0;
    v18 = 0;
    v19 = FIK::defaultAllocator(a1);
    IKString::assign(&v17, a2, a3);
    v6 = FIK::IKRigUtils::GetTaskIndexByName<FIK::MoCapRig>(&v17, a1);
    if (v18)
    {
      (*(*v19 + 3))(v19, v17, 0, 8);
    }

    if (v6 != -1)
    {
      return *(a1 + 192) + (v6 << 8);
    }

    v16 = ikinemaLogObject();
    if (os_log_type_enabled(v16[2], OS_LOG_TYPE_ERROR))
    {
      getMoCapTask<std::variant<FIK::GameRig,FIK::MoCapRig> const>();
    }
  }

  else
  {
    v8 = ikinemaLogObject()[2];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      getMoCapTask<std::variant<FIK::GameRig,FIK::MoCapRig> const>(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  return 0;
}

void CoreIKRig::setConstraintSourceName(uint64_t a1, char *a2, IKString *a3, char *a4, IKString *a5)
{
  v7 = getMoCapTask<std::variant<FIK::GameRig,FIK::MoCapRig> const>(a1 + 16, a2, a3);
  if (v7)
  {
    v8 = (v7 + 176);

    IKString::assign(v8, a4, a5);
  }
}

uint64_t CoreIKRig::getIsParentConstraint(uint64_t a1, char *a2, IKString *a3)
{
  v3 = getMoCapTask<std::variant<FIK::GameRig,FIK::MoCapRig> const>(a1 + 16, a2, a3);
  if (v3)
  {
    v4 = *(v3 + 204);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t CoreIKRig::setIsParentConstraint(uint64_t a1, char *a2, IKString *a3, char a4)
{
  result = getMoCapTask<std::variant<FIK::GameRig,FIK::MoCapRig> const>(a1 + 16, a2, a3);
  if (result)
  {
    *(result + 204) = a4;
  }

  return result;
}

uint64_t CoreIKRig::getOffset@<X0>(uint64_t a1@<X0>, char *a2@<X1>, IKString *a3@<X2>, uint64_t a4@<X8>)
{
  result = getMoCapTask<std::variant<FIK::GameRig,FIK::MoCapRig> const>(a1 + 16, a2, a3);
  if (result)
  {
    v6 = *(result + 224);
    *a4 = *(result + 208);
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    v6 = xmmword_245A01E80;
  }

  *(a4 + 16) = v6;
  return result;
}

__n128 CoreIKRig::setOffset(uint64_t a1, char *a2, IKString *a3, uint64_t a4)
{
  v5 = getMoCapTask<std::variant<FIK::GameRig,FIK::MoCapRig> const>(a1 + 16, a2, a3);
  if (v5)
  {
    *(v5 + 208) = *a4;
    result = *(a4 + 16);
    *(v5 + 224) = result;
  }

  return result;
}

uint64_t CoreIKRig::removeConstraint(uint64_t result, char *a2, IKString *a3, CFErrorRef *a4)
{
  v7 = result;
  v47[5] = *MEMORY[0x277D85DE8];
  v8 = *(result + 352);
  if (!v8)
  {
    IKString::IKString(&v29, (result + 16));
    v32[0] = *(v7 + 40);
    *(v32 + 12) = *(v7 + 52);
    v9 = *(v7 + 96);
    v33 = *(v7 + 80);
    v34 = v9;
    v35 = *(v7 + 112);
    v36 = *(v7 + 128);
    v10 = *(v7 + 136);
    *(v38 + 3) = *(v7 + 147);
    v11 = *(v7 + 144);
    v37 = v10;
    v38[0] = v11;
    v12 = *(v7 + 176);
    v39 = *(v7 + 160);
    v40 = v12;
    FIK::IKArray<FIK::GameTask>::IKArray(v41, (v7 + 192));
    FIK::IKArray<FIK::RigBone>::IKArray(v43, (v7 + 224));
    FIK::IKArray<IKString>::IKArray(v44, (v7 + 256));
    FIK::IKArray<int>::IKArray(&v45, (v7 + 288));
    v13 = FIK::IKArray<FIK::AimSetup>::IKArray(v47, (v7 + 320));
    *(v7 + 368) = 1;
    v26 = 0;
    v27 = 0;
    v28 = FIK::defaultAllocator(v13);
    IKString::assign(&v26, a2, a3);
    v14 = FIK::IKRigUtils::GetTaskIndexByName<FIK::GameRig>(&v26, &v29);
    if (v27)
    {
      (*(*v28 + 3))(v28, v26, 0, 8);
    }

    if (v14 == -1)
    {
      v15 = ikinemaLogObject();
      if (os_log_type_enabled(v15[2], OS_LOG_TYPE_ERROR))
      {
        CoreIKRig::removeConstraint();
      }

      makeError(604, a4);
    }

    else
    {
      std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<FIK::IKArrayIterator<FIK::GameTask>,FIK::IKArrayIterator<FIK::GameTask>,FIK::IKArrayIterator<FIK::GameTask>>(&v26, v42 + 240 * v14 + 240, v42 + 240 * v41[0]--, v42 + 240 * v14);
    }

    FIK::IKArray<FIK::AimSetup>::~IKArray(v47);
    *&v45 = 0;
    if (v46)
    {
      (*(**(&v46 + 1) + 24))(*(&v46 + 1), v46, 0, 8);
    }

    FIK::IKArray<IKString>::~IKArray(v44);
    FIK::IKArray<FIK::RigBone>::~IKArray(v43);
    result = FIK::IKArray<FIK::GameTask>::~IKArray(v41);
    if (v30)
    {
      result = (*(*v31 + 24))(v31, v29, 0, 8);
    }

    v8 = *(v7 + 352);
  }

  if (v8 == 1)
  {
    IKString::IKString(&v29, (v7 + 16));
    v32[0] = *(v7 + 40);
    *(v32 + 12) = *(v7 + 52);
    v16 = *(v7 + 96);
    v33 = *(v7 + 80);
    v34 = v16;
    v35 = *(v7 + 112);
    v36 = *(v7 + 128);
    v17 = *(v7 + 136);
    *(v38 + 3) = *(v7 + 147);
    v18 = *(v7 + 144);
    v37 = v17;
    v38[0] = v18;
    v19 = *(v7 + 176);
    v39 = *(v7 + 160);
    v40 = v19;
    FIK::IKArray<FIK::MoCapTask>::IKArray(v41, (v7 + 192));
    FIK::IKArray<FIK::MoCapBone>::IKArray(v43, (v7 + 224));
    v20 = FIK::IKArray<FIK::RigBoneBase>::IKArray(v44, (v7 + 256));
    v21 = *(v7 + 304);
    v45 = *(v7 + 288);
    v46 = v21;
    v47[0] = *(v7 + 320);
    *(v7 + 368) = 1;
    v22 = FIK::defaultAllocator(v20);
    v26 = 0;
    v27 = 0;
    v28 = v22;
    IKString::assign(&v26, a2, a3);
    v23 = FIK::IKRigUtils::GetTaskIndexByName<FIK::MoCapRig>(&v26, &v29);
    if (v27)
    {
      (*(*v28 + 3))(v28, v26, 0, 8);
    }

    if (v23 == -1)
    {
      v24 = ikinemaLogObject();
      if (os_log_type_enabled(v24[2], OS_LOG_TYPE_ERROR))
      {
        CoreIKRig::removeConstraint();
      }

      makeError(604, a4);
    }

    else
    {
      std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<FIK::IKArrayIterator<FIK::MoCapTask>,FIK::IKArrayIterator<FIK::MoCapTask>,FIK::IKArrayIterator<FIK::MoCapTask>>(&v26, v42 + (v23 << 8) + 256, v42 + (v41[0]-- << 8), v42 + (v23 << 8));
    }

    FIK::IKArray<FIK::RigBoneBase>::~IKArray(v44);
    FIK::IKArray<FIK::MoCapBone>::~IKArray(v43);
    result = FIK::IKArray<FIK::MoCapTask>::~IKArray(v41);
    if (v30)
    {
      result = (*(*v31 + 24))(v31, v29, 0, 8);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return result;
}

void CoreIKRig::addJointWithSettings(uint64_t a1, const char **a2, CFErrorRef *a3)
{
  v6 = *(a1 + 352);
  if (!v6)
  {
    *(a1 + 368) = 1;
    v7 = *a2;
    v8 = strlen(*a2);
    v9 = FIK::IKRigUtils::getBoneIndex<FIK::RigBone,void>(v7, v8, (a1 + 224));
    if (v9 == -1)
    {
      v17 = -1;
      v18 = 0;
      v19 = 0;
      v20 = FIK::defaultAllocator(v9);
      v21 = 0;
      v22 = 0;
      v23 = v20;
      v24 = 0;
      v25 = 0;
      v26 = xmmword_245A01E80;
      v27 = 16843009;
      v28 = 1;
      v29 = 0;
      v30 = xmmword_245A022E0;
      v31 = 0x3F80000000000000;
      v32 = xmmword_245A01EF0;
      v33 = xmmword_245A01EF0;
      v34 = xmmword_245A022F0;
      v35 = vdup_n_s32(0x43B40000u);
      v36 = 1135869952;
      v40 = 0;
      v39 = 0u;
      v38 = 0u;
      v37 = 0u;
      v10 = strlen(*a2);
      v11 = strlen(a2[1]);
      copySettingsToJoint<FIK::RigBone>(a2, *a2, v10, a2[1], v11, &v17);
      FIK::IKArray<FIK::RigBone>::push_back<FIK::RigBone&,void>(a1 + 224, &v17);
      if (v22)
      {
        (*(*v23 + 3))(v23, v21, 0, 8);
        v21 = 0;
        v22 = 0;
      }

      if (v19)
      {
        (*(*v20 + 3))(v20, v18, 0, 8);
      }
    }

    else
    {
      makeError(201, a3);
    }

    v6 = *(a1 + 352);
  }

  if (v6 == 1)
  {
    *(a1 + 368) = 1;
    v12 = strlen(*a2);
    v13 = FIK::IKRigUtils::getBoneIndex<FIK::MoCapBone,void>(*a2, v12, (a1 + 224));
    if (v13 == -1)
    {
      v14 = FIK::defaultAllocator(v13);
      FIK::MoCapBone::MoCapBone(&v17, v14);
      v15 = strlen(*a2);
      v16 = strlen(a2[1]);
      copySettingsToJoint<FIK::RigBone>(a2, *a2, v15, a2[1], v16, &v17);
      FIK::IKArray<FIK::MoCapBone>::push_back<FIK::MoCapBone&,void>(a1 + 224, &v17);
      FIK::IKArray<IKString>::~IKArray(&v44);
      if (v42)
      {
        (*(*v43 + 24))(v43, v41, 0, 8);
        v41 = 0;
        v42 = 0;
      }

      if (v22)
      {
        (*(*v23 + 3))(v23, v21, 0, 8);
        v21 = 0;
        v22 = 0;
      }

      if (v19)
      {
        (*(*v20 + 3))(v20, v18, 0, 8);
      }
    }

    else
    {
      makeError(201, a3);
    }
  }
}

float CoreIKRig::updateJointWithSettings(uint64_t a1, void *__s2, size_t __n, uint64_t a4, CFErrorRef *a5)
{
  v10 = *(a1 + 352);
  if (!v10)
  {
    v11 = FIK::IKRigUtils::getBoneIndex<FIK::RigBone,void>(__s2, __n, (a1 + 224));
    if (v11 == -1)
    {
      makeError(401, a5);
    }

    else
    {
      v12 = (*(a1 + 240) + (v11 << 8));
      v13 = v12[2];
      if (v13)
      {
        v14 = v12[1];
      }

      else
      {
        v14 = &unk_245A045FD;
      }

      v16 = v12[5];
      if (v16)
      {
        v17 = v12[4];
      }

      else
      {
        v17 = &unk_245A045FD;
      }

      result = copySettingsToJoint<FIK::RigBone>(a4, v14, v13, v17, v16, v12);
    }

    v10 = *(a1 + 352);
  }

  if (v10 == 1)
  {
    v18 = FIK::IKRigUtils::getBoneIndex<FIK::MoCapBone,void>(__s2, __n, (a1 + 224));
    if (v18 == -1)
    {

      makeError(401, a5);
    }

    else
    {
      v19 = (*(a1 + 240) + 544 * v18);
      v20 = v19[2];
      if (v20)
      {
        v21 = v19[1];
      }

      else
      {
        v21 = &unk_245A045FD;
      }

      v22 = v19[5];
      if (v22)
      {
        v23 = v19[4];
      }

      else
      {
        v23 = &unk_245A045FD;
      }

      return copySettingsToJoint<FIK::RigBone>(a4, v21, v20, v23, v22, v19);
    }
  }

  return result;
}

void CoreIKRig::addJointsWithSettings(uint64_t a1, const char **a2, uint64_t a3, CFErrorRef *a4)
{
  if (a3)
  {
    v5 = a3;
    do
    {
      CoreIKRig::addJointWithSettings(a1, a2, a4);
      a2 += 28;
      --v5;
    }

    while (v5);
  }
}

uint64_t CoreIKRig::removeJoint(uint64_t result, void *__s2, size_t __n, CFErrorRef *a4)
{
  v5 = __n;
  v7 = result;
  v8 = *(result + 352);
  if (!v8)
  {
    *(result + 368) = 1;
    v9 = FIK::IKRigUtils::getBoneIndex<FIK::RigBone,void>(__s2, __n, (result + 224));
    if (v9 == -1)
    {
      makeError(302, a4);
      v19 = ikinemaLogObject();
      if (os_log_type_enabled(v19[2], OS_LOG_TYPE_ERROR))
      {
        CoreIKRig::removeJoint();
      }
    }

    else
    {
      v10 = *(v7 + 224);
      v11 = *(v7 + 240);
      __na = v9;
      v38 = a4;
      v12 = v11 + (v9 << 8);
      if (v10)
      {
        v13 = (v11 + 40);
        v14 = v9;
        v15 = *(v7 + 224);
        while (1)
        {
          if (v14)
          {
            v16 = *(v12 + 16);
            v17 = v16 ? *(v12 + 8) : &unk_245A045FD;
            v18 = *v13 ? *(v13 - 1) : &unk_245A045FD;
            if (*v13 == v16 && !memcmp(v18, v17, v16))
            {
              break;
            }
          }

          v13 += 32;
          --v14;
          if (!--v15)
          {
            goto LABEL_15;
          }
        }

        a4 = v38;
        makeError(301, v38);
        v34 = *(v7 + 240);
        v35 = ikinemaLogObject();
        if (os_log_type_enabled(v35[2], OS_LOG_TYPE_ERROR))
        {
          CoreIKRig::removeJoint(v34, __na);
        }
      }

      else
      {
LABEL_15:
        std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<FIK::IKArrayIterator<FIK::RigBone>,FIK::IKArrayIterator<FIK::RigBone>,FIK::IKArrayIterator<FIK::RigBone>>(&v40, v12 + 256, v11 + (v10 << 8), v12);
        --*(v7 + 224);
        a4 = v38;
      }
    }

    result = FIK::IKRigUtils::GetTaskIndexByBoneName<FIK::GameRig>(__s2, v5, v7 + 16);
    if (result != -1)
    {
      result = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<FIK::IKArrayIterator<FIK::GameTask>,FIK::IKArrayIterator<FIK::GameTask>,FIK::IKArrayIterator<FIK::GameTask>>(&v41, *(v7 + 208) + 240 * result + 240, *(v7 + 208) + 240 * *(v7 + 192), *(v7 + 208) + 240 * result);
      --*(v7 + 192);
    }

    v8 = *(v7 + 352);
  }

  if (v8 == 1)
  {
    *(v7 + 368) = 1;
    v20 = FIK::IKRigUtils::getBoneIndex<FIK::MoCapBone,void>(__s2, v5, (v7 + 224));
    if (v20 == -1)
    {
      makeError(302, a4);
      v31 = ikinemaLogObject();
      if (os_log_type_enabled(v31[2], OS_LOG_TYPE_ERROR))
      {
        CoreIKRig::removeJoint();
      }
    }

    else
    {
      __nb = v5;
      v39 = a4;
      v21 = v20;
      v22 = *(v7 + 224);
      v23 = *(v7 + 240);
      if (v22)
      {
        v24 = v23 + 544 * v20;
        v25 = (v23 + 40);
        v26 = v20;
        v27 = *(v7 + 224);
        while (1)
        {
          if (v26)
          {
            v28 = *(v24 + 16);
            v29 = v28 ? *(v24 + 8) : &unk_245A045FD;
            v30 = *v25 ? *(v25 - 1) : &unk_245A045FD;
            if (*v25 == v28 && !memcmp(v30, v29, v28))
            {
              break;
            }
          }

          v25 += 68;
          --v26;
          if (!--v27)
          {
            goto LABEL_35;
          }
        }

        makeError(301, v39);
        v32 = *(v7 + 240);
        v33 = ikinemaLogObject();
        v5 = __nb;
        if (os_log_type_enabled(v33[2], OS_LOG_TYPE_ERROR))
        {
          CoreIKRig::removeJoint(v32, v21);
        }
      }

      else
      {
LABEL_35:
        std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<FIK::IKArrayIterator<FIK::MoCapBone>,FIK::IKArrayIterator<FIK::MoCapBone>,FIK::IKArrayIterator<FIK::MoCapBone>>(&v42, v23 + 544 * v21 + 544, v23 + 544 * v22, v23 + 544 * v21);
        --*(v7 + 224);
        v5 = __nb;
      }
    }

    result = FIK::IKRigUtils::GetTaskIndexByBoneName<FIK::MoCapRig>(__s2, v5, v7 + 16);
    if (result != -1)
    {
      result = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<FIK::IKArrayIterator<FIK::MoCapTask>,FIK::IKArrayIterator<FIK::MoCapTask>,FIK::IKArrayIterator<FIK::MoCapTask>>(&v43, *(v7 + 208) + (result << 8) + 256, *(v7 + 208) + (*(v7 + 192) << 8), *(v7 + 208) + (result << 8));
      --*(v7 + 192);
    }
  }

  return result;
}

float CoreIKRig::getRigJointSettings@<S0>(void *__s2@<X1>, size_t __n@<X2>, uint64_t a3@<X0>, uint64_t a4@<X8>)
{
  v6 = *(a3 + 352);
  v7 = 0uLL;
  if (v6 == 1)
  {
    *(a4 + 192) = 0uLL;
    *(a4 + 208) = 0uLL;
    *(a4 + 160) = 0uLL;
    *(a4 + 176) = 0uLL;
    *(a4 + 128) = 0uLL;
    *(a4 + 144) = 0uLL;
    *(a4 + 96) = 0uLL;
    *(a4 + 112) = 0uLL;
    *(a4 + 64) = 0uLL;
    *(a4 + 80) = 0uLL;
    *(a4 + 32) = 0uLL;
    *(a4 + 48) = 0uLL;
    *a4 = 0uLL;
    *(a4 + 16) = 0uLL;
    v11 = FIK::IKRigUtils::getBoneIndex<FIK::MoCapBone,void>(__s2, __n, (a3 + 224));
    if (v11 != -1)
    {
      v9 = *(a3 + 240) + 544 * v11;
      if (*(v9 + 16))
      {
        v12 = *(v9 + 8);
      }

      else
      {
        v12 = &unk_245A045FD;
      }

      *a4 = v12;
      if (*(v9 + 40))
      {
        v26 = *(v9 + 32);
      }

      else
      {
        v26 = &unk_245A045FD;
      }

      *(a4 + 8) = v26;
      v27 = *(v9 + 64);
      _Q1 = *(v9 + 80);
      *(a4 + 16) = v27;
      *(a4 + 32) = _Q1;
      v27.i16[0] = *(v9 + 97);
      v29 = v27.u8[3];
      v30 = v27.u8[1];
      *(a4 + 48) = *(v9 + 96);
      v27.i16[0] = v27.u8[0];
      v27.i16[1] = v30;
      v27.i16[2] = *(v9 + 99);
      v27.i16[3] = v29;
      *(a4 + 54) = v27.i8[4];
      *(a4 + 52) = vmovn_s16(v27).u16[0];
      *(a4 + 56) = *(v9 + 100);
      *(a4 + 60) = *(v9 + 120);
      v27.i64[0] = *(v9 + 160);
      *(a4 + 72) = *(v9 + 168);
      *(a4 + 64) = v27.i64[0];
      __asm { FMOV            V1.2S, #1.0 }

      *v27.i8 = vsub_f32(*&_Q1, *(v9 + 144));
      *(a4 + 88) = 1.0 - *(v9 + 152);
      *(a4 + 80) = v27.i64[0];
      v27.i64[0] = *(v9 + 240);
      *(a4 + 104) = *(v9 + 248);
      *(a4 + 96) = v27.i64[0];
      v27.i16[0] = *(v9 + 105);
      v31 = v27.u8[3];
      v32 = v27.u8[1];
      *(a4 + 112) = *(v9 + 102);
      v27.i16[0] = v27.u8[0];
      v27.i16[1] = v32;
      v24 = *(v9 + 107);
      v27.i16[2] = v24;
      v27.i16[3] = v31;
      v25 = vmovn_s16(v27).u16[0];
      goto LABEL_20;
    }
  }

  else if (v6)
  {
    *(a4 + 192) = 0uLL;
    *(a4 + 208) = 0uLL;
    *(a4 + 160) = 0uLL;
    *(a4 + 176) = 0uLL;
    *(a4 + 128) = 0uLL;
    *(a4 + 144) = 0uLL;
    *(a4 + 96) = 0uLL;
    *(a4 + 112) = 0uLL;
    *(a4 + 64) = 0uLL;
    *(a4 + 80) = 0uLL;
    *(a4 + 32) = 0uLL;
    *(a4 + 48) = 0uLL;
    *a4 = 0uLL;
    *(a4 + 16) = 0uLL;
  }

  else
  {
    *(a4 + 192) = 0uLL;
    *(a4 + 208) = 0uLL;
    *(a4 + 160) = 0uLL;
    *(a4 + 176) = 0uLL;
    *(a4 + 128) = 0uLL;
    *(a4 + 144) = 0uLL;
    *(a4 + 96) = 0uLL;
    *(a4 + 112) = 0uLL;
    *(a4 + 64) = 0uLL;
    *(a4 + 80) = 0uLL;
    *(a4 + 32) = 0uLL;
    *(a4 + 48) = 0uLL;
    *a4 = 0uLL;
    *(a4 + 16) = 0uLL;
    v8 = FIK::IKRigUtils::getBoneIndex<FIK::RigBone,void>(__s2, __n, (a3 + 224));
    if (v8 != -1)
    {
      v9 = *(a3 + 240) + (v8 << 8);
      if (*(v9 + 16))
      {
        v10 = *(v9 + 8);
      }

      else
      {
        v10 = &unk_245A045FD;
      }

      *a4 = v10;
      if (*(v9 + 40))
      {
        v13 = *(v9 + 32);
      }

      else
      {
        v13 = &unk_245A045FD;
      }

      *(a4 + 8) = v13;
      v14 = *(v9 + 64);
      _Q1 = *(v9 + 80);
      *(a4 + 16) = v14;
      *(a4 + 32) = _Q1;
      v14.i16[0] = *(v9 + 97);
      v16 = v14.u8[3];
      v17 = v14.u8[1];
      *(a4 + 48) = *(v9 + 96);
      v14.i16[0] = v14.u8[0];
      v14.i16[1] = v17;
      v14.i16[2] = *(v9 + 99);
      v14.i16[3] = v16;
      *(a4 + 54) = v14.i8[4];
      *(a4 + 52) = vmovn_s16(v14).u16[0];
      *(a4 + 56) = *(v9 + 100);
      *(a4 + 60) = *(v9 + 120);
      v14.i64[0] = *(v9 + 160);
      *(a4 + 72) = *(v9 + 168);
      *(a4 + 64) = v14.i64[0];
      __asm { FMOV            V1.2S, #1.0 }

      *v14.i8 = vsub_f32(*&_Q1, *(v9 + 144));
      *(a4 + 88) = 1.0 - *(v9 + 152);
      *(a4 + 80) = v14.i64[0];
      v14.i64[0] = *(v9 + 240);
      *(a4 + 104) = *(v9 + 248);
      *(a4 + 96) = v14.i64[0];
      v14.i16[0] = *(v9 + 105);
      v22 = v14.u8[3];
      v23 = v14.u8[1];
      *(a4 + 112) = *(v9 + 102);
      v14.i16[0] = v14.u8[0];
      v14.i16[1] = v23;
      v24 = *(v9 + 107);
      v14.i16[2] = v24;
      v14.i16[3] = v22;
      v25 = vmovn_s16(v14).u16[0];
LABEL_20:
      *(a4 + 118) = v24;
      *(a4 + 116) = v25;
      *(a4 + 120) = *(v9 + 132);
      *(a4 + 124) = *(v9 + 101);
      v33 = *(v9 + 224);
      *(a4 + 128) = *(v9 + 208);
      *(a4 + 144) = v33;
      *(a4 + 160) = *(v9 + 103);
      *(a4 + 164) = *(v9 + 124);
      *(a4 + 168) = *(v9 + 128);
      v34 = *(v9 + 192);
      *(a4 + 176) = *(v9 + 176);
      *(a4 + 192) = v34;
      LODWORD(v7) = *(v9 + 116);
      *(a4 + 208) = v7;
    }
  }

  return *&v7;
}

void *CoreIKRig::getSourceName(uint64_t a1, void *a2, size_t a3)
{
  v3 = getMoCapBone<std::variant<FIK::GameRig,FIK::MoCapRig> const>(a1 + 16, a2, a3);
  if (v3 && *(v3 + 264))
  {
    return *(v3 + 256);
  }

  else
  {
    return &unk_245A045FD;
  }
}

uint64_t getMoCapBone<std::variant<FIK::GameRig,FIK::MoCapRig> const>(uint64_t a1, void *__s2, size_t __n)
{
  if (*(a1 + 336) == 1)
  {
    v4 = FIK::IKRigUtils::getBoneIndex<FIK::MoCapBone,void>(__s2, __n, (a1 + 208));
    if (v4 != -1)
    {
      return *(a1 + 224) + 544 * v4;
    }

    v14 = ikinemaLogObject();
    if (os_log_type_enabled(v14[2], OS_LOG_TYPE_ERROR))
    {
      getMoCapBone<std::variant<FIK::GameRig,FIK::MoCapRig> const>();
    }
  }

  else
  {
    v6 = ikinemaLogObject()[2];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      getMoCapBone<std::variant<FIK::GameRig,FIK::MoCapRig> const>(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  return 0;
}

void CoreIKRig::setSourceName(uint64_t a1, void *a2, size_t a3, char *a4, IKString *a5)
{
  v7 = getMoCapBone<std::variant<FIK::GameRig,FIK::MoCapRig> const>(a1 + 16, a2, a3);
  if (v7)
  {
    v8 = (v7 + 256);

    IKString::assign(v8, a4, a5);
  }
}

uint64_t CoreIKRig::getSourceRotationOffset@<X0>(uint64_t a1@<X0>, void *a2@<X1>, size_t a3@<X2>, __int128 *a4@<X8>)
{
  result = getMoCapBone<std::variant<FIK::GameRig,FIK::MoCapRig> const>(a1 + 16, a2, a3);
  if (result)
  {
    v6 = *(result + 304);
  }

  else
  {
    v6 = xmmword_245A01E80;
  }

  *a4 = v6;
  return result;
}

__n128 CoreIKRig::setSourceRotationOffset(uint64_t a1, void *a2, size_t a3, __n128 *a4)
{
  v5 = getMoCapBone<std::variant<FIK::GameRig,FIK::MoCapRig> const>(a1 + 16, a2, a3);
  if (v5)
  {
    result = *a4;
    *(v5 + 304) = *a4;
  }

  return result;
}

uint64_t CoreIKRig::getSourceParentRotationOffset@<X0>(uint64_t a1@<X0>, void *a2@<X1>, size_t a3@<X2>, __int128 *a4@<X8>)
{
  result = getMoCapBone<std::variant<FIK::GameRig,FIK::MoCapRig> const>(a1 + 16, a2, a3);
  if (result)
  {
    v6 = *(result + 336);
  }

  else
  {
    v6 = xmmword_245A01E80;
  }

  *a4 = v6;
  return result;
}

__n128 CoreIKRig::setSourceParentRotationOffset(uint64_t a1, void *a2, size_t a3, __n128 *a4)
{
  v5 = getMoCapBone<std::variant<FIK::GameRig,FIK::MoCapRig> const>(a1 + 16, a2, a3);
  if (v5)
  {
    result = *a4;
    *(v5 + 336) = *a4;
  }

  return result;
}

uint64_t CoreIKRig::validateRigHierarchy(CoreIKRig *this, __CFError **a2)
{
  v2 = *(this + 88);
  if (v2 == 1)
  {
    return validateRigHierarchy<FIK::MoCapRig>(this + 2, a2);
  }

  if (v2)
  {
    return 0;
  }

  return validateRigHierarchy<FIK::GameRig>(this + 2, a2);
}

uint64_t validateRigHierarchy<FIK::GameRig>(void *a1, CFErrorRef *a2)
{
  v66 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 26);
  if (a1[26])
  {
    v56 = a2;
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = a1[28];
      IKString::IKString(&__s2, (v6 + v4 + 32));
      if (__n)
      {
        v7 = FIK::IKRigUtils::getBoneIndex<FIK::RigBone,void>(__s2, __n, v2);
        v8 = v7;
        if (v7 == -1)
        {
          v9 = ikinemaLogObject()[2];
          v7 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
          if (v7)
          {
            if (__n)
            {
              v10 = __s2;
            }

            else
            {
              v10 = &unk_245A045FD;
            }

            v11 = &unk_245A045FD;
            if (*(v6 + v4 + 16))
            {
              v11 = *(v6 + v4 + 8);
            }

            *buf = 136315650;
            v61 = "rigJointsHaveInvalidParenting";
            v62 = 2080;
            v63 = v10;
            v64 = 2080;
            v65 = v11;
            _os_log_error_impl(&dword_245976000, v9, OS_LOG_TYPE_ERROR, "%s: Parent '%s' not found for joint '%s'", buf, 0x20u);
          }
        }

        if (__n)
        {
          v7 = (*(*v59 + 24))(v59, __s2, 0, 8);
        }

        if (v8 == -1)
        {
          v19 = 701;
LABEL_69:
          a2 = v56;
          goto LABEL_70;
        }
      }

      ++v5;
      v4 += 256;
    }

    while (*v2 > v5);
    if (*v2)
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      do
      {
        v15 = a1[28];
        if (!*(v15 + v12 + 40))
        {
          v16 = v14 + 1;
          if (v14 >= 1)
          {
            v17 = ikinemaLogObject()[2];
            v7 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
            if (v7)
            {
              v18 = &unk_245A045FD;
              if (*(v15 + v12 + 16))
              {
                v18 = *(v15 + v12 + 8);
              }

              *buf = 136315394;
              v61 = "rigJointsContainMoreThanOneRoot";
              v62 = 2080;
              v63 = v18;
              _os_log_error_impl(&dword_245976000, v17, OS_LOG_TYPE_ERROR, "%s: Multiple roots in rig: %s", buf, 0x16u);
            }
          }

          v14 = v16;
        }

        ++v13;
        v12 += 256;
      }

      while (*v2 > v13);
      if (v14 >= 2)
      {
        v19 = 703;
        goto LABEL_69;
      }
    }

    if (a1[22])
    {
      v20 = 0;
      v21 = 0;
      while (1)
      {
        v22 = a1[24];
        v23 = *(v22 + v20 + 32);
        v24 = v23 ? *(v22 + v20 + 24) : &unk_245A045FD;
        v7 = FIK::IKRigUtils::getBoneIndex<FIK::RigBone,void>(v24, v23, v2);
        if (v7 == -1)
        {
          break;
        }

        ++v21;
        v25 = a1[22];
        v20 += 240;
        if (v25 <= v21)
        {
          goto LABEL_41;
        }
      }

      v30 = ikinemaLogObject()[2];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v53 = v22 + v20;
        if (*(v22 + v20 + 32))
        {
          v54 = *(v53 + 24);
        }

        else
        {
          v54 = &unk_245A045FD;
        }

        if (*(v22 + v20 + 8))
        {
          v55 = *v53;
        }

        else
        {
          v55 = &unk_245A045FD;
        }

        *buf = 136315650;
        v61 = "rigHasOrphanConstraint";
        v62 = 2080;
        v63 = v54;
        v64 = 2080;
        v65 = v55;
        _os_log_error_impl(&dword_245976000, v30, OS_LOG_TYPE_ERROR, "%s: Joint '%s' for constraint '%s' cannot be found in rig", buf, 0x20u);
      }

      v19 = 702;
      goto LABEL_69;
    }

    v25 = 0;
LABEL_41:
    v26 = FIK::defaultAllocator(v7);
    v27 = v26;
    if (((v25 + 7) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v28 = (*(*v26 + 2))(v26, 4 * ((v25 + 7) & 0xFFFFFFFFFFFFFFF8), 4);
      v29 = v28;
      if (4 * ((v25 + 7) & 0xFFFFFFFFFFFFFFF8))
      {
        bzero(v28, 4 * ((v25 + 7) & 0xFFFFFFFFFFFFFFF8));
      }
    }

    else
    {
      v29 = 0;
    }

    if (a1[22])
    {
      v31 = 0;
      v32 = 0;
      do
      {
        v33 = a1[24] + v31;
        v34 = *(v33 + 32);
        if (v34)
        {
          v35 = *(v33 + 24);
        }

        else
        {
          v35 = &unk_245A045FD;
        }

        v29[v32++] = FIK::IKRigUtils::getBoneIndex<FIK::RigBone,void>(v35, v34, v2);
        v31 += 240;
      }

      while (v32 < a1[22]);
    }

    v36 = 126 - 2 * __clz(v25);
    if (v25)
    {
      v37 = v36;
    }

    else
    {
      v37 = 0;
    }

    std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,FIK::IKArrayIterator<int>,false>(v29, &v29[v25], buf, v37, 1);
    if (v25)
    {
      v38 = 4 * v25 + 4;
      v39 = v29 + 1;
      while (v38 != 8)
      {
        v40 = *(v39 - 1);
        v41 = *v39;
        v38 -= 4;
        ++v39;
        if (v40 == v41)
        {
          if (!v38)
          {
            break;
          }

          v42 = ikinemaLogObject()[2];
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            validateRigHierarchy<FIK::GameRig>(v42, v43, v44, v45, v46, v47, v48, v49);
          }

          v50 = 1;
          goto LABEL_65;
        }
      }
    }

    v50 = 0;
LABEL_65:
    if (v29)
    {
      (*(*v27 + 3))(v27, v29, 0, 8);
    }

    if (v50)
    {
      v19 = 704;
      goto LABEL_69;
    }

    result = 1;
  }

  else
  {
    v19 = 705;
LABEL_70:
    makeError(v19, a2);
    result = 0;
  }

  v52 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t validateRigHierarchy<FIK::MoCapRig>(void *a1, CFErrorRef *a2)
{
  v66 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 26);
  if (a1[26])
  {
    v56 = a2;
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = a1[28];
      IKString::IKString(&__s2, (v6 + v4 + 32));
      if (__n)
      {
        v7 = FIK::IKRigUtils::getBoneIndex<FIK::MoCapBone,void>(__s2, __n, v2);
        v8 = v7;
        if (v7 == -1)
        {
          v9 = ikinemaLogObject()[2];
          v7 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
          if (v7)
          {
            if (__n)
            {
              v10 = __s2;
            }

            else
            {
              v10 = &unk_245A045FD;
            }

            v11 = &unk_245A045FD;
            if (*(v6 + v4 + 16))
            {
              v11 = *(v6 + v4 + 8);
            }

            *buf = 136315650;
            v61 = "rigJointsHaveInvalidParenting";
            v62 = 2080;
            v63 = v10;
            v64 = 2080;
            v65 = v11;
            _os_log_error_impl(&dword_245976000, v9, OS_LOG_TYPE_ERROR, "%s: Parent '%s' not found for joint '%s'", buf, 0x20u);
          }
        }

        if (__n)
        {
          v7 = (*(*v59 + 24))(v59, __s2, 0, 8);
        }

        if (v8 == -1)
        {
          v19 = 701;
LABEL_69:
          a2 = v56;
          goto LABEL_70;
        }
      }

      ++v5;
      v4 += 544;
    }

    while (*v2 > v5);
    if (*v2)
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      do
      {
        v15 = a1[28];
        if (!*(v15 + v12 + 40))
        {
          v16 = v14 + 1;
          if (v14 >= 1)
          {
            v17 = ikinemaLogObject()[2];
            v7 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
            if (v7)
            {
              v18 = &unk_245A045FD;
              if (*(v15 + v12 + 16))
              {
                v18 = *(v15 + v12 + 8);
              }

              *buf = 136315394;
              v61 = "rigJointsContainMoreThanOneRoot";
              v62 = 2080;
              v63 = v18;
              _os_log_error_impl(&dword_245976000, v17, OS_LOG_TYPE_ERROR, "%s: Multiple roots in rig: %s", buf, 0x16u);
            }
          }

          v14 = v16;
        }

        ++v13;
        v12 += 544;
      }

      while (*v2 > v13);
      if (v14 >= 2)
      {
        v19 = 703;
        goto LABEL_69;
      }
    }

    if (a1[22])
    {
      v20 = 0;
      v21 = 0;
      while (1)
      {
        v22 = a1[24];
        v23 = *(v22 + v20 + 32);
        v24 = v23 ? *(v22 + v20 + 24) : &unk_245A045FD;
        v7 = FIK::IKRigUtils::getBoneIndex<FIK::MoCapBone,void>(v24, v23, v2);
        if (v7 == -1)
        {
          break;
        }

        ++v21;
        v25 = a1[22];
        v20 += 256;
        if (v25 <= v21)
        {
          goto LABEL_41;
        }
      }

      v30 = ikinemaLogObject()[2];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v53 = v22 + v20;
        if (*(v22 + v20 + 32))
        {
          v54 = *(v53 + 24);
        }

        else
        {
          v54 = &unk_245A045FD;
        }

        if (*(v22 + v20 + 8))
        {
          v55 = *v53;
        }

        else
        {
          v55 = &unk_245A045FD;
        }

        *buf = 136315650;
        v61 = "rigHasOrphanConstraint";
        v62 = 2080;
        v63 = v54;
        v64 = 2080;
        v65 = v55;
        _os_log_error_impl(&dword_245976000, v30, OS_LOG_TYPE_ERROR, "%s: Joint '%s' for constraint '%s' cannot be found in rig", buf, 0x20u);
      }

      v19 = 702;
      goto LABEL_69;
    }

    v25 = 0;
LABEL_41:
    v26 = FIK::defaultAllocator(v7);
    v27 = v26;
    if (((v25 + 7) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v28 = (*(*v26 + 2))(v26, 4 * ((v25 + 7) & 0xFFFFFFFFFFFFFFF8), 4);
      v29 = v28;
      if (4 * ((v25 + 7) & 0xFFFFFFFFFFFFFFF8))
      {
        bzero(v28, 4 * ((v25 + 7) & 0xFFFFFFFFFFFFFFF8));
      }
    }

    else
    {
      v29 = 0;
    }

    if (a1[22])
    {
      v31 = 0;
      v32 = 0;
      do
      {
        v33 = a1[24] + v31;
        v34 = *(v33 + 32);
        if (v34)
        {
          v35 = *(v33 + 24);
        }

        else
        {
          v35 = &unk_245A045FD;
        }

        v29[v32++] = FIK::IKRigUtils::getBoneIndex<FIK::MoCapBone,void>(v35, v34, v2);
        v31 += 256;
      }

      while (v32 < a1[22]);
    }

    v36 = 126 - 2 * __clz(v25);
    if (v25)
    {
      v37 = v36;
    }

    else
    {
      v37 = 0;
    }

    std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,FIK::IKArrayIterator<int>,false>(v29, &v29[v25], buf, v37, 1);
    if (v25)
    {
      v38 = 4 * v25 + 4;
      v39 = v29 + 1;
      while (v38 != 8)
      {
        v40 = *(v39 - 1);
        v41 = *v39;
        v38 -= 4;
        ++v39;
        if (v40 == v41)
        {
          if (!v38)
          {
            break;
          }

          v42 = ikinemaLogObject()[2];
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            validateRigHierarchy<FIK::GameRig>(v42, v43, v44, v45, v46, v47, v48, v49);
          }

          v50 = 1;
          goto LABEL_65;
        }
      }
    }

    v50 = 0;
LABEL_65:
    if (v29)
    {
      (*(*v27 + 3))(v27, v29, 0, 8);
    }

    if (v50)
    {
      v19 = 704;
      goto LABEL_69;
    }

    result = 1;
  }

  else
  {
    v19 = 705;
LABEL_70:
    makeError(v19, a2);
    result = 0;
  }

  v52 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CoreIKRig::finalizeChanges(CoreIKRig *this, __CFError **a2)
{
  v4 = *(this + 88);
  if (v4 == 1)
  {
    FIK::Serialisation::fixUpRigIndices(this + 16);
    result = validateRigHierarchy<FIK::MoCapRig>(this + 2, a2);
    *(this + 368) = result ^ 1;
  }

  else
  {
    if (v4)
    {
      return 0;
    }

    FIK::Serialisation::fixUpRigIndices(this + 16);
    v5 = validateRigHierarchy<FIK::GameRig>(this + 2, a2);
    *(this + 368) = v5 ^ 1;
    if ((v5 ^ 1))
    {
      return 0;
    }

    else
    {
      FIK::IKRigUtils::rebalanceTaskWeights(this + 16);
      return 1;
    }
  }

  return result;
}

void *CoreIKRig::createSolver(CoreIKRig *this)
{
  v1 = *this;
  if (*this == 3)
  {
    return CoreIK::createSolverObject<CoreIK::IKSolverRetarget>(this);
  }

  if (v1 == 2 || v1 == 1)
  {
    return CoreIK::createSolverObject<CoreIK::IKSolverGeneric>(this);
  }

  return 0;
}

void *CoreIK::createSolverObject<CoreIK::IKSolverGeneric>(FIK *a1)
{
  if (*(a1 + 88))
  {
    v1 = ikinemaLogObject()[1];
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      CoreIK::createSolverObject<CoreIK::IKSolverGeneric>(v1, v2, v3, v4, v5, v6, v7, v8);
    }

    return 0;
  }

  else
  {
    v10 = FIK::defaultAllocator(a1);

    return FIK::Allocator::create<CoreIK::IKSolverGeneric,FIK::GameRig const&>(v10);
  }
}

void *CoreIK::createSolverObject<CoreIK::IKSolverRetarget>(FIK *a1)
{
  if (*(a1 + 88) == 1)
  {
    v1 = FIK::defaultAllocator(a1);

    return FIK::Allocator::create<CoreIK::IKSolverRetarget,FIK::MoCapRig const&>(v1);
  }

  else
  {
    v3 = ikinemaLogObject()[1];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      CoreIK::createSolverObject<CoreIK::IKSolverGeneric>(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    return 0;
  }
}

__n128 std::__variant_detail::__union<(std::__variant_detail::_Trait)1,0ul,FIK::GameRig,FIK::MoCapRig>::__union[abi:nn200100]<FIK::GameRig>(uint64_t *a1, uint64_t a2)
{
  v3 = IKString::IKString(a1, a2, *(a2 + 16));
  v4 = *(a2 + 24);
  *(v3 + 36) = *(a2 + 36);
  *(v3 + 3) = v4;
  v5 = *(a2 + 80);
  *(v3 + 4) = *(a2 + 64);
  *(v3 + 5) = v5;
  *(v3 + 6) = *(a2 + 96);
  v6 = *(a2 + 120);
  v3[14] = *(a2 + 112);
  *(v3 + 30) = v6;
  v7 = *(a2 + 128);
  *(v3 + 131) = *(a2 + 131);
  *(v3 + 32) = v7;
  *(v3 + 9) = *(a2 + 144);
  *(v3 + 10) = *(a2 + 160);
  v8 = *(a2 + 176);
  *(a2 + 176) = 0;
  v3[22] = v8;
  v9 = *(a2 + 184);
  v10 = *(a2 + 192);
  *(a2 + 184) = 0;
  v3[23] = v9;
  *(a2 + 192) = 0;
  *(v3 + 12) = v10;
  v11 = *(a2 + 208);
  *(a2 + 208) = 0;
  v3[26] = v11;
  v12 = *(a2 + 216);
  v13 = *(a2 + 224);
  *(a2 + 216) = 0;
  v3[27] = v12;
  *(a2 + 224) = 0;
  *(v3 + 14) = v13;
  v14 = *(a2 + 240);
  *(a2 + 240) = 0;
  v3[30] = v14;
  v15 = *(a2 + 248);
  v16 = *(a2 + 256);
  *(a2 + 248) = 0;
  v3[31] = v15;
  *(a2 + 256) = 0;
  *(v3 + 16) = v16;
  v17 = *(a2 + 272);
  *(a2 + 272) = 0;
  v3[34] = v17;
  v18 = *(a2 + 280);
  v19 = *(a2 + 288);
  *(a2 + 280) = 0;
  v3[35] = v18;
  *(a2 + 288) = 0;
  *(v3 + 18) = v19;
  v20 = *(a2 + 304);
  *(a2 + 304) = 0;
  v3[38] = v20;
  v21 = *(a2 + 312);
  result = *(a2 + 320);
  *(a2 + 312) = 0;
  v3[39] = v21;
  *(a2 + 320) = 0;
  *(v3 + 20) = result;
  return result;
}

void *FIK::IKArray<FIK::AimSetup>::clear(void *result)
{
  v1 = result;
  v2 = *result;
  if (*result)
  {
    v3 = result[2] + 88;
    do
    {
      FIK::IKArray<FIK::Item>::~IKArray(v3);
      result = FIK::IKArray<FIK::Item>::~IKArray(v3 - 32);
      if (*(v3 - 48))
      {
        result = (*(**(v3 - 40) + 24))(*(v3 - 40), *(v3 - 56), 0, 8);
        *(v3 - 56) = 0;
        *(v3 - 48) = 0;
      }

      if (*(v3 - 80))
      {
        result = (*(**(v3 - 72) + 24))(*(v3 - 72), *(v3 - 88), 0, 8);
        *(v3 - 88) = 0;
        *(v3 - 80) = 0;
      }

      v3 += 128;
      --v2;
    }

    while (v2);
  }

  *v1 = 0;
  return result;
}

__n128 std::__variant_detail::__union<(std::__variant_detail::_Trait)1,0ul,FIK::GameRig,FIK::MoCapRig>::__union[abi:nn200100]<1ul,FIK::MoCapRig>(uint64_t *a1, uint64_t a2)
{
  v3 = IKString::IKString(a1, a2, *(a2 + 16));
  v4 = *(a2 + 24);
  *(v3 + 36) = *(a2 + 36);
  *(v3 + 3) = v4;
  v5 = *(a2 + 80);
  *(v3 + 4) = *(a2 + 64);
  *(v3 + 5) = v5;
  *(v3 + 6) = *(a2 + 96);
  v6 = *(a2 + 120);
  v3[14] = *(a2 + 112);
  *(v3 + 30) = v6;
  v7 = *(a2 + 128);
  *(v3 + 131) = *(a2 + 131);
  *(v3 + 32) = v7;
  *(v3 + 9) = *(a2 + 144);
  *(v3 + 10) = *(a2 + 160);
  v8 = *(a2 + 176);
  *(a2 + 176) = 0;
  v3[22] = v8;
  v9 = *(a2 + 184);
  v10 = *(a2 + 192);
  *(a2 + 184) = 0;
  v3[23] = v9;
  *(a2 + 192) = 0;
  *(v3 + 12) = v10;
  v11 = *(a2 + 208);
  *(a2 + 208) = 0;
  v3[26] = v11;
  v12 = *(a2 + 216);
  v13 = *(a2 + 224);
  *(a2 + 216) = 0;
  v3[27] = v12;
  *(a2 + 224) = 0;
  *(v3 + 14) = v13;
  v14 = *(a2 + 240);
  *(a2 + 240) = 0;
  v3[30] = v14;
  v15 = *(a2 + 248);
  v16 = *(a2 + 256);
  *(a2 + 248) = 0;
  v3[31] = v15;
  *(a2 + 256) = 0;
  *(v3 + 16) = v16;
  *(v3 + 17) = *(a2 + 272);
  result = *(a2 + 288);
  *(v3 + 18) = result;
  v3[38] = *(a2 + 304);
  return result;
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<FIK::GameRig,FIK::MoCapRig>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<FIK::GameRig,FIK::MoCapRig>,(std::__variant_detail::_Trait)1>>(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 336);
  v4 = *(a2 + 336);
  if (v3 == -1)
  {
    if (v4 == -1)
    {
      return result;
    }
  }

  else if (v4 == -1)
  {
    result = (off_28589C530[v3])(&v6, result, a2);
    *(v2 + 336) = -1;
    return result;
  }

  v5 = result;
  return (off_28589C540[v4])(&v5, result, a2);
}

void std::__variant_detail::__assignment<std::__variant_detail::__traits<FIK::GameRig,FIK::MoCapRig>>::__assign_alt[abi:nn200100]<0ul,FIK::GameRig,FIK::GameRig>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 336))
  {

    std::__variant_detail::__assignment<std::__variant_detail::__traits<FIK::GameRig,FIK::MoCapRig>>::__emplace[abi:nn200100]<0ul,FIK::GameRig>(a1, a3);
  }

  else
  {
    IKString::operator=(a2, a3);
    v5 = *(a3 + 24);
    *(a2 + 36) = *(a3 + 36);
    *(a2 + 24) = v5;
    v6 = *(a3 + 80);
    *(a2 + 64) = *(a3 + 64);
    *(a2 + 80) = v6;
    *(a2 + 96) = *(a3 + 96);
    v7 = *(a3 + 120);
    *(a2 + 112) = *(a3 + 112);
    *(a2 + 120) = v7;
    v8 = *(a3 + 128);
    *(a2 + 131) = *(a3 + 131);
    *(a2 + 128) = v8;
    *(a2 + 144) = *(a3 + 144);
    *(a2 + 160) = *(a3 + 160);
    FIK::IKArray<FIK::GameTask>::operator=((a2 + 176), (a3 + 176));
    FIK::IKArray<FIK::RigBone>::operator=((a2 + 208), (a3 + 208));
    FIK::IKArray<IKString>::operator=((a2 + 240), (a3 + 240));
    FIK::IKArray<unsigned int>::operator=(a2 + 272, (a3 + 272));

    FIK::IKArray<FIK::AimSetup>::operator=((a2 + 304), (a3 + 304));
  }
}

__int128 *FIK::IKArray<FIK::GameTask>::operator=(__int128 *a1, __int128 *a2)
{
  v3 = *a2;
  v4 = a2[1];
  *a2 = 0;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  v5 = *a1;
  v6 = a1[1];
  *a1 = v3;
  a1[1] = v4;
  v8[0] = v5;
  v8[1] = v6;
  FIK::IKArray<FIK::GameTask>::~IKArray(v8);
  return a1;
}

__int128 *FIK::IKArray<FIK::RigBone>::operator=(__int128 *a1, __int128 *a2)
{
  v3 = *a2;
  v4 = a2[1];
  *a2 = 0;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  v5 = *a1;
  v6 = a1[1];
  *a1 = v3;
  a1[1] = v4;
  v8[0] = v5;
  v8[1] = v6;
  FIK::IKArray<FIK::RigBone>::~IKArray(v8);
  return a1;
}

__int128 *FIK::IKArray<IKString>::operator=(__int128 *a1, __int128 *a2)
{
  v3 = *a2;
  v4 = a2[1];
  *a2 = 0;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  v5 = *a1;
  v6 = a1[1];
  *a1 = v3;
  a1[1] = v4;
  v8[0] = v5;
  v8[1] = v6;
  FIK::IKArray<IKString>::~IKArray(v8);
  return a1;
}

__int128 *FIK::IKArray<FIK::AimSetup>::operator=(__int128 *a1, __int128 *a2)
{
  v3 = *a2;
  v4 = a2[1];
  *a2 = 0;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  v5 = *a1;
  v6 = a1[1];
  *a1 = v3;
  a1[1] = v4;
  v8[0] = v5;
  v8[1] = v6;
  FIK::IKArray<FIK::AimSetup>::~IKArray(v8);
  return a1;
}

void std::__variant_detail::__assignment<std::__variant_detail::__traits<FIK::GameRig,FIK::MoCapRig>>::__emplace[abi:nn200100]<0ul,FIK::GameRig>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 336);
  if (v4 != -1)
  {
    (off_28589C530[v4])(&v5, a1);
  }

  *(a1 + 336) = -1;
  std::__variant_detail::__union<(std::__variant_detail::_Trait)1,0ul,FIK::GameRig,FIK::MoCapRig>::__union[abi:nn200100]<FIK::GameRig>(a1, a2);
  *(a1 + 336) = 0;
}

void std::__variant_detail::__assignment<std::__variant_detail::__traits<FIK::GameRig,FIK::MoCapRig>>::__assign_alt[abi:nn200100]<1ul,FIK::MoCapRig,FIK::MoCapRig>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 336) == 1)
  {
    IKString::operator=(a2, a3);
    v5 = *(a3 + 24);
    *(a2 + 36) = *(a3 + 36);
    *(a2 + 24) = v5;
    v6 = *(a3 + 80);
    *(a2 + 64) = *(a3 + 64);
    *(a2 + 80) = v6;
    *(a2 + 96) = *(a3 + 96);
    v7 = *(a3 + 120);
    *(a2 + 112) = *(a3 + 112);
    *(a2 + 120) = v7;
    v8 = *(a3 + 128);
    *(a2 + 131) = *(a3 + 131);
    *(a2 + 128) = v8;
    *(a2 + 144) = *(a3 + 144);
    *(a2 + 160) = *(a3 + 160);
    FIK::IKArray<FIK::MoCapTask>::operator=((a2 + 176), (a3 + 176));
    FIK::IKArray<FIK::MoCapBone>::operator=((a2 + 208), (a3 + 208));
    FIK::IKArray<FIK::RigBoneBase>::operator=((a2 + 240), (a3 + 240));
    *(a2 + 272) = *(a3 + 272);
    *(a2 + 288) = *(a3 + 288);
    *(a2 + 304) = *(a3 + 304);
  }

  else
  {

    std::__variant_detail::__assignment<std::__variant_detail::__traits<FIK::GameRig,FIK::MoCapRig>>::__emplace[abi:nn200100]<1ul,FIK::MoCapRig>(a1, a3);
  }
}

__int128 *FIK::IKArray<FIK::MoCapTask>::operator=(__int128 *a1, __int128 *a2)
{
  v3 = *a2;
  v4 = a2[1];
  *a2 = 0;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  v5 = *a1;
  v6 = a1[1];
  *a1 = v3;
  a1[1] = v4;
  v8[0] = v5;
  v8[1] = v6;
  FIK::IKArray<FIK::MoCapTask>::~IKArray(v8);
  return a1;
}

__int128 *FIK::IKArray<FIK::MoCapBone>::operator=(__int128 *a1, __int128 *a2)
{
  v3 = *a2;
  v4 = a2[1];
  *a2 = 0;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  v5 = *a1;
  v6 = a1[1];
  *a1 = v3;
  a1[1] = v4;
  v8[0] = v5;
  v8[1] = v6;
  FIK::IKArray<FIK::MoCapBone>::~IKArray(v8);
  return a1;
}

__int128 *FIK::IKArray<FIK::RigBoneBase>::operator=(__int128 *a1, __int128 *a2)
{
  v3 = *a2;
  v4 = a2[1];
  *a2 = 0;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  v5 = *a1;
  v6 = a1[1];
  *a1 = v3;
  a1[1] = v4;
  v8[0] = v5;
  v8[1] = v6;
  FIK::IKArray<FIK::RigBoneBase>::~IKArray(v8);
  return a1;
}

void std::__variant_detail::__assignment<std::__variant_detail::__traits<FIK::GameRig,FIK::MoCapRig>>::__emplace[abi:nn200100]<1ul,FIK::MoCapRig>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 336);
  if (v4 != -1)
  {
    (off_28589C530[v4])(&v5, a1);
  }

  *(a1 + 336) = -1;
  std::__variant_detail::__union<(std::__variant_detail::_Trait)1,0ul,FIK::GameRig,FIK::MoCapRig>::__union[abi:nn200100]<1ul,FIK::MoCapRig>(a1, a2);
  *(a1 + 336) = 1;
}

uint64_t *std::__variant_detail::__assignment<std::__variant_detail::__traits<FIK::GameRig,FIK::MoCapRig>>::__assign_alt[abi:nn200100]<0ul,FIK::GameRig,FIK::GameRig&>(IKString *a1, uint64_t a2, IKString *a3)
{
  if (*(a1 + 84))
  {

    return std::__variant_detail::__assignment<std::__variant_detail::__traits<FIK::GameRig,FIK::MoCapRig>>::__emplace[abi:nn200100]<0ul,FIK::GameRig&>(a1, a3);
  }

  else
  {
    v7 = *a3;
    v6 = *(a3 + 1);
    if (v6)
    {
      v8 = *a3;
    }

    else
    {
      v8 = &unk_245A045FD;
    }

    IKString::assign(a2, v8, v6);
    v9 = *(a3 + 24);
    *(a2 + 36) = *(a3 + 36);
    *(a2 + 24) = v9;
    v10 = *(a3 + 5);
    *(a2 + 64) = *(a3 + 4);
    *(a2 + 80) = v10;
    *(a2 + 96) = *(a3 + 6);
    v11 = *(a3 + 30);
    *(a2 + 112) = *(a3 + 14);
    *(a2 + 120) = v11;
    v12 = *(a3 + 32);
    *(a2 + 131) = *(a3 + 131);
    *(a2 + 128) = v12;
    *(a2 + 144) = *(a3 + 9);
    *(a2 + 160) = *(a3 + 10);
    FIK::IKArray<FIK::GameTask>::operator=((a2 + 176), a3 + 22);
    FIK::IKArray<FIK::RigBone>::operator=((a2 + 208), a3 + 26);
    FIK::IKArray<IKString>::operator=((a2 + 240), a3 + 30);
    FIK::IKArray<int>::operator=((a2 + 272), a3 + 34);

    return FIK::IKArray<FIK::AimSetup>::operator=((a2 + 304), a3 + 38);
  }
}

uint64_t *FIK::IKArray<FIK::GameTask>::operator=(uint64_t *a1, uint64_t *a2)
{
  v5 = a1[1];
  v4 = (a1 + 1);
  if (*a2 >= v5)
  {
    v12 = a2[1];
    v13 = a1[3];
    if (v12)
    {
      v14 = (*(*v13 + 16))(a1[3], 240 * v12, 16);
      v15 = v14;
      if (240 * v12)
      {
        bzero(v14, 240 * v12);
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
        IKString::IKString(&v15[v17], (v18 + v17));
        IKString::IKString(&v15[v17 + 24], (v18 + v17 + 24));
        v20 = *(v18 + v17 + 48);
        *(v19 + 8) = *(v18 + v17 + 64);
        *(v19 + 3) = v20;
        *(v19 + 5) = *(v18 + v17 + 80);
        *(v19 + 6) = *(v18 + v17 + 96);
        *(v19 + 7) = *(v18 + v17 + 112);
        *(v19 + 8) = *(v18 + v17 + 128);
        *(v19 + 9) = *(v18 + v17 + 144);
        *(v19 + 10) = *(v18 + v17 + 160);
        *(v19 + 11) = *(v18 + v17 + 176);
        *(v19 + 12) = *(v18 + v17 + 192);
        *(v19 + 13) = *(v18 + v17 + 208);
        *(v19 + 14) = *(v18 + v17 + 224);
        v17 += 240;
        --v16;
      }

      while (v16);
    }

    v22 = a1[2];
    v21 = a1[3];
    a1[1] = v12;
    a1[2] = v15;
    a1[3] = v13;
    if (v22)
    {
      (*(*v21 + 24))(v21, v22, 0, 8);
    }
  }

  else
  {
    FIK::IKArray<FIK::GameTask>::destroyBufferObjects(v4, *a1);
    *a1 = 0;
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
  }

  *a1 = *a2;
  return a1;
}

uint64_t *FIK::IKArray<int>::operator=(uint64_t *a1, uint64_t *a2)
{
  if (*a2 >= a1[1])
  {
    v8 = a2[1];
    v9 = a1[3];
    if (v8)
    {
      v10 = (*(*v9 + 16))(a1[3], 4 * v8, 4);
      v11 = v10;
      if (4 * v8)
      {
        bzero(v10, 4 * v8);
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = *a2;
    if (*a2)
    {
      v13 = a2[2];
      v14 = v11;
      do
      {
        v15 = *v13++;
        *v14++ = v15;
        --v12;
      }

      while (v12);
    }

    v17 = a1[2];
    v16 = a1[3];
    a1[1] = v8;
    a1[2] = v11;
    a1[3] = v9;
    if (v17)
    {
      (*(*v16 + 24))(v16, v17, 0, 8);
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
        v7 = *v6++;
        *v5++ = v7;
        --v4;
      }

      while (v4);
    }
  }

  *a1 = *a2;
  return a1;
}

uint64_t *FIK::IKArray<FIK::AimSetup>::operator=(uint64_t *a1, uint64_t *a2)
{
  if (*a2 >= a1[1])
  {
    v9 = a2[1];
    v10 = a1[3];
    if (v9)
    {
      v11 = (*(*v10 + 16))(a1[3], v9 << 7, 8);
      v12 = v11;
      if (v9 << 7)
      {
        bzero(v11, v9 << 7);
      }
    }

    else
    {
      v12 = 0;
    }

    v13 = *a2;
    if (*a2)
    {
      v14 = 0;
      v15 = a2[2];
      do
      {
        v16 = &v12[v14];
        IKString::IKString(&v12[v14], (v15 + v14));
        *(v16 + 6) = *(v15 + v14 + 24);
        IKString::IKString(&v12[v14 + 32], (v15 + v14 + 32));
        FIK::IKArray<FIK::Item>::IKArray(&v12[v14 + 56], (v15 + v14 + 56));
        FIK::IKArray<FIK::Item>::IKArray(&v12[v14 + 88], (v15 + v14 + 88));
        *(v16 + 30) = *(v15 + v14 + 120);
        v14 += 128;
        --v13;
      }

      while (v13);
    }

    v18 = a1[2];
    v17 = a1[3];
    a1[1] = v9;
    a1[2] = v12;
    a1[3] = v10;
    if (v18)
    {
      (*(*v17 + 24))(v17, v18, 0, 8);
    }
  }

  else
  {
    FIK::IKArray<FIK::AimSetup>::clear(a1);
    v4 = *a2;
    if (*a2)
    {
      v5 = 0;
      v6 = a1[2];
      v7 = a2[2];
      do
      {
        v8 = v6 + v5;
        IKString::IKString((v6 + v5), (v7 + v5));
        *(v8 + 24) = *(v7 + v5 + 24);
        IKString::IKString((v6 + v5 + 32), (v7 + v5 + 32));
        FIK::IKArray<FIK::Item>::IKArray((v6 + v5 + 56), (v7 + v5 + 56));
        FIK::IKArray<FIK::Item>::IKArray((v6 + v5 + 88), (v7 + v5 + 88));
        *(v8 + 120) = *(v7 + v5 + 120);
        v5 += 128;
        --v4;
      }

      while (v4);
    }
  }

  *a1 = *a2;
  return a1;
}

IKString *std::__variant_detail::__assignment<std::__variant_detail::__traits<FIK::GameRig,FIK::MoCapRig>>::__emplace[abi:nn200100]<0ul,FIK::GameRig&>(IKString *this, IKString *a2)
{
  v4 = *(this + 84);
  if (v4 != -1)
  {
    (off_28589C530[v4])(&v10, this);
  }

  *(this + 84) = -1;
  IKString::IKString(this, a2);
  v5 = *(a2 + 24);
  *(this + 36) = *(a2 + 36);
  *(this + 24) = v5;
  v6 = *(a2 + 5);
  *(this + 4) = *(a2 + 4);
  *(this + 5) = v6;
  *(this + 6) = *(a2 + 6);
  v7 = *(a2 + 30);
  *(this + 14) = *(a2 + 14);
  *(this + 30) = v7;
  v8 = *(a2 + 32);
  *(this + 131) = *(a2 + 131);
  *(this + 32) = v8;
  *(this + 9) = *(a2 + 9);
  *(this + 10) = *(a2 + 10);
  FIK::IKArray<FIK::GameTask>::IKArray(this + 22, a2 + 22);
  FIK::IKArray<FIK::RigBone>::IKArray(this + 26, a2 + 26);
  FIK::IKArray<IKString>::IKArray(this + 30, a2 + 30);
  FIK::IKArray<int>::IKArray(this + 34, a2 + 34);
  FIK::IKArray<FIK::AimSetup>::IKArray(this + 38, a2 + 38);
  *(this + 84) = 0;
  return this;
}

uint64_t *std::__variant_detail::__assignment<std::__variant_detail::__traits<FIK::GameRig,FIK::MoCapRig>>::__assign_alt[abi:nn200100]<1ul,FIK::MoCapRig,FIK::MoCapRig&>(IKString *a1, uint64_t a2, IKString *a3)
{
  if (*(a1 + 84) == 1)
  {
    v6 = *a3;
    v5 = *(a3 + 1);
    if (v5)
    {
      v7 = *a3;
    }

    else
    {
      v7 = &unk_245A045FD;
    }

    IKString::assign(a2, v7, v5);
    v8 = *(a3 + 24);
    *(a2 + 36) = *(a3 + 36);
    *(a2 + 24) = v8;
    v9 = *(a3 + 5);
    *(a2 + 64) = *(a3 + 4);
    *(a2 + 80) = v9;
    *(a2 + 96) = *(a3 + 6);
    v10 = *(a3 + 30);
    *(a2 + 112) = *(a3 + 14);
    *(a2 + 120) = v10;
    v11 = *(a3 + 32);
    *(a2 + 131) = *(a3 + 131);
    *(a2 + 128) = v11;
    *(a2 + 144) = *(a3 + 9);
    *(a2 + 160) = *(a3 + 10);
    FIK::IKArray<FIK::MoCapTask>::operator=((a2 + 176), a3 + 22);
    FIK::IKArray<FIK::MoCapBone>::operator=((a2 + 208), a3 + 26);
    result = FIK::IKArray<FIK::RigBoneBase>::operator=((a2 + 240), a3 + 30);
    *(a2 + 272) = *(a3 + 17);
    *(a2 + 288) = *(a3 + 18);
    *(a2 + 304) = *(a3 + 38);
  }

  else
  {

    return std::__variant_detail::__assignment<std::__variant_detail::__traits<FIK::GameRig,FIK::MoCapRig>>::__emplace[abi:nn200100]<1ul,FIK::MoCapRig&>(a1, a3);
  }

  return result;
}

IKString *std::__variant_detail::__assignment<std::__variant_detail::__traits<FIK::GameRig,FIK::MoCapRig>>::__emplace[abi:nn200100]<1ul,FIK::MoCapRig&>(IKString *this, IKString *a2)
{
  v4 = *(this + 84);
  if (v4 != -1)
  {
    (off_28589C530[v4])(&v10, this);
  }

  *(this + 84) = -1;
  IKString::IKString(this, a2);
  v5 = *(a2 + 24);
  *(this + 36) = *(a2 + 36);
  *(this + 24) = v5;
  v6 = *(a2 + 5);
  *(this + 4) = *(a2 + 4);
  *(this + 5) = v6;
  *(this + 6) = *(a2 + 6);
  v7 = *(a2 + 30);
  *(this + 14) = *(a2 + 14);
  *(this + 30) = v7;
  v8 = *(a2 + 32);
  *(this + 131) = *(a2 + 131);
  *(this + 32) = v8;
  *(this + 9) = *(a2 + 9);
  *(this + 10) = *(a2 + 10);
  FIK::IKArray<FIK::MoCapTask>::IKArray(this + 22, a2 + 22);
  FIK::IKArray<FIK::MoCapBone>::IKArray(this + 26, a2 + 26);
  FIK::IKArray<FIK::RigBoneBase>::IKArray(this + 30, a2 + 30);
  *(this + 17) = *(a2 + 17);
  *(this + 18) = *(a2 + 18);
  *(this + 38) = *(a2 + 38);
  *(this + 84) = 1;
  return this;
}

uint64_t FIK::IKRigUtils::GetTaskIndexByBoneName<FIK::GameRig>(void *__s2, size_t __n, uint64_t a3)
{
  v3 = *(a3 + 176);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = 0;
  v7 = *(a3 + 192) + 32;
  v8 = v7;
  while (1)
  {
    v10 = *v8;
    v8 += 30;
    v9 = v10;
    v11 = v10 ? *(v7 - 8) : &unk_245A045FD;
    if (v9 == __n && !memcmp(v11, __s2, __n))
    {
      break;
    }

    ++v6;
    v7 = v8;
    if (v3 == v6)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v6;
}

__n128 copySettingsToConstraint<FIK::GameTask>(uint64_t a1, char *a2, IKString *a3, char *a4, IKString *a5, uint64_t a6)
{
  IKString::assign(a6, a2, a3);
  IKString::assign((a6 + 24), a4, a5);
  *(a6 + 52) = *(a1 + 16);
  v10.i32[0] = *(a1 + 20);
  v11 = vmovl_u8(v10);
  *(a6 + 55) = v11.i8[0] != 0;
  *(a6 + 56) = *(a1 + 21) != 0;
  *(a6 + 57) = *(a1 + 22) != 0;
  v11.i32[0] = *(a1 + 24);
  *(a6 + 58) = vmovl_u8(*v11.i8).u8[0] != 0;
  *(a6 + 59) = *(a1 + 25) != 0;
  *(a6 + 60) = *(a1 + 26) != 0;
  *(a6 + 64) = *(a1 + 28);
  *(a6 + 80) = *(a1 + 48);
  *(a6 + 96) = *(a1 + 64);
  *(a6 + 112) = *(a1 + 80);
  result = *(a1 + 96);
  *(a6 + 128) = result;
  return result;
}

uint64_t FIK::IKRigUtils::GetTaskIndexByBoneName<FIK::MoCapRig>(void *__s2, size_t __n, uint64_t a3)
{
  v3 = *(a3 + 176);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = 0;
  for (i = (*(a3 + 192) + 32); ; i += 32)
  {
    v8 = *i ? *(i - 1) : &unk_245A045FD;
    if (*i == __n && !memcmp(v8, __s2, __n))
    {
      break;
    }

    if (v3 == ++v6)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v6;
}

uint64_t std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<FIK::IKArrayIterator<FIK::GameTask>,FIK::IKArrayIterator<FIK::GameTask>,FIK::IKArrayIterator<FIK::GameTask>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a2;
  if (a2 != a3)
  {
    v7 = a4;
    do
    {
      IKString::operator=(v7, v5);
      IKString::operator=((v7 + 24), v5 + 24);
      v8 = *(v5 + 48);
      *(v7 + 64) = *(v5 + 64);
      *(v7 + 48) = v8;
      *(v7 + 80) = *(v5 + 80);
      *(v7 + 96) = *(v5 + 96);
      *(v7 + 112) = *(v5 + 112);
      *(v7 + 128) = *(v5 + 128);
      *(v7 + 144) = *(v5 + 144);
      *(v7 + 160) = *(v5 + 160);
      *(v7 + 176) = *(v5 + 176);
      *(v7 + 192) = *(v5 + 192);
      *(v7 + 208) = *(v5 + 208);
      *(v7 + 224) = *(v5 + 224);
      v4 += 240;
      v5 += 240;
      v7 += 240;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<FIK::IKArrayIterator<FIK::MoCapTask>,FIK::IKArrayIterator<FIK::MoCapTask>,FIK::IKArrayIterator<FIK::MoCapTask>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a2;
  if (a2 != a3)
  {
    v7 = a4;
    do
    {
      IKString::operator=(v7, v5);
      IKString::operator=((v7 + 24), v5 + 24);
      v8 = *(v5 + 48);
      *(v7 + 64) = *(v5 + 64);
      *(v7 + 48) = v8;
      *(v7 + 80) = *(v5 + 80);
      *(v7 + 96) = *(v5 + 96);
      *(v7 + 112) = *(v5 + 112);
      *(v7 + 128) = *(v5 + 128);
      *(v7 + 144) = *(v5 + 144);
      *(v7 + 160) = *(v5 + 160);
      IKString::operator=((v7 + 176), v5 + 176);
      v9 = *(v5 + 200);
      *(v7 + 204) = *(v5 + 204);
      *(v7 + 200) = v9;
      *(v7 + 208) = *(v5 + 208);
      *(v7 + 224) = *(v5 + 224);
      *(v7 + 240) = *(v5 + 240);
      v4 += 256;
      v5 += 256;
      v7 += 256;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

float copySettingsToJoint<FIK::RigBone>(uint64_t a1, char *a2, IKString *a3, char *a4, IKString *a5, uint64_t a6)
{
  IKString::assign((a6 + 8), a2, a3);
  IKString::assign((a6 + 32), a4, a5);
  *(a6 + 64) = *(a1 + 16);
  v10 = *(a1 + 32);
  *(a6 + 80) = v10;
  *(a6 + 96) = *(a1 + 48);
  LODWORD(v10) = *(a1 + 52);
  v11 = vmovl_u8(*&v10);
  *(a6 + 97) = v11.i8[0] != 0;
  *(a6 + 98) = *(a1 + 53) != 0;
  *(a6 + 99) = *(a1 + 54) != 0;
  *(a6 + 100) = *(a1 + 56);
  *(a6 + 101) = *(a1 + 124);
  *(a6 + 102) = *(a1 + 112);
  *(a6 + 103) = *(a1 + 160);
  v11.i32[0] = *(a1 + 116);
  v12 = *(a1 + 120);
  *(a6 + 105) = vmovl_u8(*v11.i8).u8[0] != 0;
  *(a6 + 106) = *(a1 + 117) != 0;
  *(a6 + 107) = *(a1 + 118) != 0;
  v13 = *(a1 + 60);
  *(a6 + 116) = *(a1 + 208);
  *(a6 + 120) = v13;
  *(a6 + 124) = *(a1 + 164);
  *(a6 + 132) = v12;
  *(a6 + 144) = 1.0 - *(a1 + 80);
  *(a6 + 148) = 1.0 - *(a1 + 84);
  *(a6 + 152) = 1.0 - *(a1 + 88);
  *(a6 + 160) = *(a1 + 64);
  *(a6 + 164) = *(a1 + 68);
  *(a6 + 168) = *(a1 + 72);
  *(a6 + 128) = *(a1 + 168);
  *(a6 + 176) = *(a1 + 176);
  *(a6 + 192) = *(a1 + 192);
  *(a6 + 208) = *(a1 + 128);
  *(a6 + 224) = *(a1 + 144);
  *(a6 + 240) = *(a1 + 96);
  *(a6 + 244) = *(a1 + 100);
  result = *(a1 + 104);
  *(a6 + 248) = result;
  return result;
}

uint64_t std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<FIK::IKArrayIterator<FIK::RigBone>,FIK::IKArrayIterator<FIK::RigBone>,FIK::IKArrayIterator<FIK::RigBone>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a2;
  if (a2 != a3)
  {
    v7 = a4;
    do
    {
      *v7 = *v5;
      IKString::operator=((v7 + 8), v5 + 8);
      IKString::operator=((v7 + 32), v5 + 32);
      *(v7 + 64) = *(v5 + 64);
      *(v7 + 80) = *(v5 + 80);
      v9 = *(v5 + 96);
      v8 = *(v5 + 112);
      *(v7 + 128) = *(v5 + 128);
      *(v7 + 96) = v9;
      *(v7 + 112) = v8;
      *(v7 + 144) = *(v5 + 144);
      *(v7 + 160) = *(v5 + 160);
      *(v7 + 176) = *(v5 + 176);
      *(v7 + 192) = *(v5 + 192);
      *(v7 + 208) = *(v5 + 208);
      *(v7 + 224) = *(v5 + 224);
      *(v7 + 240) = *(v5 + 240);
      v4 += 256;
      v5 += 256;
      v7 += 256;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<FIK::IKArrayIterator<FIK::MoCapBone>,FIK::IKArrayIterator<FIK::MoCapBone>,FIK::IKArrayIterator<FIK::MoCapBone>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a2;
  if (a2 != a3)
  {
    v7 = a4;
    do
    {
      *v7 = *v5;
      IKString::operator=((v7 + 8), v5 + 8);
      IKString::operator=((v7 + 32), v5 + 32);
      *(v7 + 64) = *(v5 + 64);
      *(v7 + 80) = *(v5 + 80);
      v9 = *(v5 + 96);
      v8 = *(v5 + 112);
      *(v7 + 128) = *(v5 + 128);
      *(v7 + 96) = v9;
      *(v7 + 112) = v8;
      *(v7 + 144) = *(v5 + 144);
      *(v7 + 160) = *(v5 + 160);
      *(v7 + 176) = *(v5 + 176);
      *(v7 + 192) = *(v5 + 192);
      *(v7 + 208) = *(v5 + 208);
      *(v7 + 224) = *(v5 + 224);
      *(v7 + 240) = *(v5 + 240);
      IKString::operator=((v7 + 256), v5 + 256);
      *(v7 + 280) = *(v5 + 280);
      *(v7 + 288) = *(v5 + 288);
      *(v7 + 304) = *(v5 + 304);
      *(v7 + 320) = *(v5 + 320);
      *(v7 + 336) = *(v5 + 336);
      v10 = *(v5 + 368);
      *(v7 + 352) = *(v5 + 352);
      *(v7 + 368) = v10;
      *(v7 + 384) = *(v5 + 384);
      *(v7 + 400) = *(v5 + 400);
      FIK::IKArray<IKString>::operator=((v7 + 416), (v5 + 416));
      *(v7 + 448) = *(v5 + 448);
      *(v7 + 464) = *(v5 + 464);
      *(v7 + 480) = *(v5 + 480);
      *(v7 + 496) = *(v5 + 496);
      *(v7 + 512) = *(v5 + 512);
      *(v7 + 528) = *(v5 + 528);
      v4 += 544;
      v5 += 544;
      v7 += 544;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

int *std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,FIK::IKArrayIterator<int>,false>(int *result, int *a2, uint64_t a3, uint64_t a4, char a5)
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
    v12 = a2 - v9;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v56 = *(a2 - 1);
        v57 = *v9;
        if (v56 < *v9)
        {
          *v9 = v56;
          *(a2 - 1) = v57;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      v58 = v9 + 1;
      v59 = v9[1];
      v60 = v9 + 2;
      v61 = v9[2];
      v62 = *v9;
      if (v59 >= v62)
      {
        if (v61 >= v59)
        {
          goto LABEL_121;
        }

        *v58 = v61;
        *v60 = v59;
        v63 = v9;
        v64 = v9 + 1;
        result = v59;
        if (v61 < v62)
        {
          goto LABEL_113;
        }
      }

      else
      {
        v63 = v9;
        v64 = v9 + 2;
        result = *v9;
        if (v61 >= v59)
        {
          *v9 = v59;
          v9[1] = v62;
          v63 = v9 + 1;
          v64 = v9 + 2;
          result = v62;
          if (v61 >= v62)
          {
LABEL_121:
            LODWORD(v59) = v61;
            goto LABEL_122;
          }
        }

LABEL_113:
        *v63 = v61;
        *v64 = v62;
        LODWORD(v59) = result;
      }

LABEL_122:
      v78 = *(a2 - 1);
      if (v78 < v59)
      {
        *v60 = v78;
        *(a2 - 1) = v59;
        v79 = *v60;
        v80 = *v58;
        if (v79 < v80)
        {
          v9[1] = v79;
          v9[2] = v80;
          v81 = *v9;
          if (v79 < *v9)
          {
            *v9 = v79;
            v9[1] = v81;
          }
        }
      }

      return result;
    }

    if (v12 == 5)
    {
      v47 = v9 + 1;
      v48 = v9[1];
      v50 = v9 + 2;
      v49 = v9[2];
      v51 = *v9;
      if (v48 >= v51)
      {
        if (v49 >= v48)
        {
          v54 = *v9;
          LODWORD(v51) = v9[1];
        }

        else
        {
          v52 = v9;
          v53 = v9 + 1;
          *v47 = v49;
          *v50 = v48;
          v54 = v49;
          result = v51;
          v55 = v48;
          if (v49 < v51)
          {
            goto LABEL_130;
          }

          v54 = v51;
          LODWORD(v51) = v49;
          LODWORD(v49) = v48;
        }
      }

      else
      {
        if (v49 < v48)
        {
          v52 = v9;
          v53 = v9 + 2;
          v54 = v9[2];
          result = v9[1];
          v55 = *v9;
          goto LABEL_130;
        }

        v52 = v9 + 1;
        v53 = v9 + 2;
        *v9 = v48;
        v9[1] = v51;
        v54 = v48;
        result = v49;
        v55 = v51;
        if (v49 >= v51)
        {
          v54 = v48;
        }

        else
        {
LABEL_130:
          *v52 = v49;
          *v53 = v51;
          LODWORD(v51) = result;
          LODWORD(v49) = v55;
        }
      }

      v83 = v9[3];
      if (v83 >= v49)
      {
        LODWORD(v49) = v9[3];
      }

      else
      {
        v9[2] = v83;
        v9[3] = v49;
        if (v83 < v51)
        {
          *v47 = v83;
          *v50 = v51;
          if (v83 < v54)
          {
            *v9 = v83;
            v9[1] = v54;
          }
        }
      }

      v84 = *(a2 - 1);
      if (v84 >= v49)
      {
        return result;
      }

      v9[3] = v84;
      *(a2 - 1) = v49;
      v85 = v9[2];
      v74 = v9[3];
      if (v74 >= v85)
      {
        return result;
      }

      v9[2] = v74;
      v9[3] = v85;
      v86 = v9[1];
      if (v74 >= v86)
      {
        return result;
      }

      v9[1] = v74;
      v9[2] = v86;
LABEL_142:
      v87 = *v9;
      if (v74 < *v9)
      {
        *v9 = v74;
        v9[1] = v87;
      }

      return result;
    }

LABEL_11:
    if (v12 <= 23)
    {
      v65 = v9 + 1;
      v67 = v9 == a2 || v65 == a2;
      if (a5)
      {
        if (!v67)
        {
          v68 = 0;
          v69 = v9;
          do
          {
            v71 = *v69;
            v70 = v69[1];
            v69 = v65;
            if (v70 < v71)
            {
              v72 = v68;
              while (1)
              {
                *(v9 + v72 + 4) = v71;
                if (!v72)
                {
                  break;
                }

                v71 = *(v9 + v72 - 4);
                v72 -= 4;
                if (v70 >= v71)
                {
                  v73 = (v9 + v72 + 4);
                  goto LABEL_99;
                }
              }

              v73 = v9;
LABEL_99:
              *v73 = v70;
            }

            v65 = v69 + 1;
            v68 += 4;
          }

          while (v69 + 1 != a2);
        }
      }

      else if (!v67)
      {
        do
        {
          v75 = *v65;
          v76 = *v8;
          if (*v65 < *v8)
          {
            v77 = 1;
            do
            {
              v8[v77] = v76;
              v76 = v8[v77 - 2];
              --v77;
            }

            while (v75 < v76);
            v8[v77] = v75;
          }

          ++v65;
          ++v8;
        }

        while (v65 != a2);
      }

      return result;
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,FIK::IKArrayIterator<int>,FIK::IKArrayIterator<int>>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = &v9[v12 >> 1];
    v14 = v13;
    v15 = *(a2 - 1);
    if (v12 >= 0x81)
    {
      v16 = *v13;
      v17 = *v9;
      if (*v13 >= *v9)
      {
        if (v15 < v16)
        {
          *v13 = v15;
          *(a2 - 1) = v16;
          v20 = *v9;
          if (*v13 < *v9)
          {
            *v9 = *v13;
            *v13 = v20;
          }
        }
      }

      else
      {
        if (v15 < v16)
        {
          *v9 = v15;
          goto LABEL_29;
        }

        *v9 = v16;
        *v13 = v17;
        v22 = *(a2 - 1);
        if (v22 < v17)
        {
          *v13 = v22;
LABEL_29:
          *(a2 - 1) = v17;
        }
      }

      v23 = (v13 - 1);
      v24 = *(v13 - 1);
      v25 = v9[1];
      v26 = *(a2 - 2);
      if (v24 >= v25)
      {
        if (v26 < v24)
        {
          *v23 = v26;
          *(a2 - 2) = v24;
          v27 = v9[1];
          if (*v23 < v27)
          {
            v9[1] = *v23;
            *v23 = v27;
          }
        }
      }

      else
      {
        if (v26 < v24)
        {
          v9[1] = v26;
          goto LABEL_43;
        }

        v9[1] = v24;
        *v23 = v25;
        v29 = *(a2 - 2);
        if (v29 < v25)
        {
          *v23 = v29;
LABEL_43:
          *(a2 - 2) = v25;
        }
      }

      v32 = v13[1];
      v30 = (v13 + 1);
      v31 = v32;
      v33 = v9[2];
      v34 = *(a2 - 3);
      if (v32 >= v33)
      {
        if (v34 < v31)
        {
          *v30 = v34;
          *(a2 - 3) = v31;
          v35 = v9[2];
          if (*v30 < v35)
          {
            v9[2] = *v30;
            *v30 = v35;
          }
        }
      }

      else
      {
        if (v34 < v31)
        {
          v9[2] = v34;
          goto LABEL_52;
        }

        v9[2] = v31;
        *v30 = v33;
        v36 = *(a2 - 3);
        if (v36 < v33)
        {
          *v30 = v36;
LABEL_52:
          *(a2 - 3) = v33;
        }
      }

      v37 = *v14;
      v38 = *v23;
      v39 = *v30;
      if (*v14 >= *v23)
      {
        if (v39 < v37)
        {
          *v14 = v39;
          *v30 = v37;
          v30 = v14;
          v37 = v38;
          if (v39 < v38)
          {
            goto LABEL_59;
          }

          v37 = v39;
        }
      }

      else
      {
        if (v39 >= v37)
        {
          *v23 = v37;
          *v14 = v38;
          v23 = v14;
          v37 = v39;
          if (v39 >= v38)
          {
            v37 = v38;
            goto LABEL_60;
          }
        }

LABEL_59:
        *v23 = v39;
        *v30 = v38;
      }

LABEL_60:
      v40 = *v9;
      *v9 = v37;
      *v14 = v40;
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    v18 = *v9;
    v19 = *v13;
    if (*v9 < *v14)
    {
      if (v15 < v18)
      {
        *v14 = v15;
        goto LABEL_38;
      }

      *v14 = v18;
      *v9 = v19;
      v28 = *(a2 - 1);
      if (v28 < v19)
      {
        *v9 = v28;
LABEL_38:
        *(a2 - 1) = v19;
      }

LABEL_39:
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v15 >= v18)
    {
      goto LABEL_39;
    }

    *v9 = v15;
    *(a2 - 1) = v18;
    v21 = *v14;
    if (*v9 >= *v14)
    {
      goto LABEL_39;
    }

    *v14 = *v9;
    *v9 = v21;
    if (a5)
    {
      goto LABEL_62;
    }

LABEL_61:
    if (*(v9 - 1) >= *v9)
    {
      result = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,FIK::IKArrayIterator<int>,std::__less<void,void> &>(v9, a2);
      v9 = result;
      goto LABEL_69;
    }

LABEL_62:
    v41 = std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,FIK::IKArrayIterator<int>,std::__less<void,void> &>(v9, a2);
    if ((v42 & 1) == 0)
    {
      goto LABEL_67;
    }

    v43 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,FIK::IKArrayIterator<int>>(v9, v41);
    v9 = v41 + 1;
    result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,FIK::IKArrayIterator<int>>(v41 + 1, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v41;
      if (v43)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v43)
    {
LABEL_67:
      result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,FIK::IKArrayIterator<int>,false>(v8, v41, a3, -v11, a5 & 1);
      v9 = v41 + 1;
LABEL_69:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v44 = *v9;
  v45 = v9[1];
  v46 = *(a2 - 1);
  if (v45 >= *v9)
  {
    if (v46 >= v45)
    {
      return result;
    }

    v9[1] = v46;
    *(a2 - 1) = v45;
    v74 = v9[1];
    goto LABEL_142;
  }

  if (v46 >= v45)
  {
    *v9 = v45;
    v9[1] = v44;
    v82 = *(a2 - 1);
    if (v82 >= v44)
    {
      return result;
    }

    v9[1] = v82;
  }

  else
  {
    *v9 = v46;
  }

  *(a2 - 1) = v44;
  return result;
}

int *std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,FIK::IKArrayIterator<int>,std::__less<void,void> &>(int *a1, int *a2)
{
  v2 = *a1;
  if (*a1 >= *(a2 - 1))
  {
    v5 = a1 + 1;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      ++v5;
    }

    while (v2 >= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[1];
      ++v3;
    }

    while (v2 >= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *--a2;
    }

    while (v2 < v6);
  }

  if (v3 < a2)
  {
    v7 = *v3;
    v8 = *a2;
    do
    {
      *v3 = v8;
      *a2 = v7;
      do
      {
        v9 = v3[1];
        ++v3;
        v7 = v9;
      }

      while (v2 >= v9);
      do
      {
        v10 = *--a2;
        v8 = v10;
      }

      while (v2 < v10);
    }

    while (v3 < a2);
  }

  if (v3 - 1 != a1)
  {
    *a1 = *(v3 - 1);
  }

  *(v3 - 1) = v2;
  return v3;
}

int *std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,FIK::IKArrayIterator<int>,std::__less<void,void> &>(int *a1, int *a2)
{
  v2 = 0;
  v3 = *a1;
  do
  {
    v4 = a1[++v2];
  }

  while (v4 < v3);
  v5 = &a1[v2];
  v6 = &a1[v2 - 1];
  if (v2 == 1)
  {
    do
    {
      if (v5 >= a2)
      {
        break;
      }

      v8 = *--a2;
    }

    while (v8 >= v3);
  }

  else
  {
    do
    {
      v7 = *--a2;
    }

    while (v7 >= v3);
  }

  if (v5 < a2)
  {
    v9 = *a2;
    v10 = &a1[v2];
    v11 = a2;
    do
    {
      *v10 = v9;
      *v11 = v4;
      do
      {
        v12 = v10[1];
        ++v10;
        v4 = v12;
      }

      while (v12 < v3);
      do
      {
        v13 = *--v11;
        v9 = v13;
      }

      while (v13 >= v3);
    }

    while (v10 < v11);
    v6 = v10 - 1;
  }

  if (v6 != a1)
  {
    *a1 = *v6;
  }

  *v6 = v3;
  return v6;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,FIK::IKArrayIterator<int>>(_DWORD *a1, int *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v14 = *a1;
      v15 = a1[1];
      v16 = *(a2 - 1);
      if (v15 < *a1)
      {
        if (v16 >= v15)
        {
          *a1 = v15;
          a1[1] = v14;
          v30 = *(a2 - 1);
          if (v30 >= v14)
          {
            return 1;
          }

          a1[1] = v30;
        }

        else
        {
          *a1 = v16;
        }

        *(a2 - 1) = v14;
        return 1;
      }

      if (v16 >= v15)
      {
        return 1;
      }

      a1[1] = v16;
      *(a2 - 1) = v15;
      v29 = a1[1];
LABEL_71:
      v47 = *a1;
      if (v29 < *a1)
      {
        *a1 = v29;
        a1[1] = v47;
      }

      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_16;
      }

      v4 = a1[1];
      v5 = a1[2];
      v6 = *a1;
      if (v4 >= *a1)
      {
        if (v5 >= v4)
        {
          v9 = *a1;
          v6 = a1[1];
          goto LABEL_62;
        }

        a1[1] = v5;
        a1[2] = v4;
        if (v5 >= v6)
        {
          v9 = v6;
          v6 = v5;
          v5 = v4;
          goto LABEL_62;
        }

        v7 = a1;
        v8 = a1 + 1;
        v9 = v5;
        v10 = v6;
        v11 = v4;
      }

      else if (v5 >= v4)
      {
        v7 = a1 + 1;
        v8 = a1 + 2;
        *a1 = v4;
        a1[1] = v6;
        v9 = v4;
        v10 = v5;
        v11 = v6;
        if (v5 >= v6)
        {
          v9 = v4;
          goto LABEL_62;
        }
      }

      else
      {
        v7 = a1;
        v8 = a1 + 2;
        v9 = a1[2];
        v10 = a1[1];
        v11 = *a1;
      }

      *v7 = v5;
      *v8 = v6;
      v6 = v10;
      v5 = v11;
LABEL_62:
      v43 = a1[3];
      if (v43 >= v5)
      {
        v5 = a1[3];
      }

      else
      {
        a1[2] = v43;
        a1[3] = v5;
        if (v43 < v6)
        {
          a1[1] = v43;
          a1[2] = v6;
          if (v43 < v9)
          {
            *a1 = v43;
            a1[1] = v9;
          }
        }
      }

      v44 = *(a2 - 1);
      if (v44 >= v5)
      {
        return 1;
      }

      a1[3] = v44;
      *(a2 - 1) = v5;
      v45 = a1[2];
      v29 = a1[3];
      if (v29 >= v45)
      {
        return 1;
      }

      a1[2] = v29;
      a1[3] = v45;
      v46 = a1[1];
      if (v29 >= v46)
      {
        return 1;
      }

      a1[1] = v29;
      a1[2] = v46;
      goto LABEL_71;
    }

    v23 = a1[1];
    v24 = a1 + 2;
    v25 = a1[2];
    v26 = *a1;
    if (v23 >= *a1)
    {
      if (v25 < v23)
      {
        a1[1] = v25;
        a1[2] = v23;
        if (v25 >= v26)
        {
LABEL_54:
          v25 = v23;
          goto LABEL_55;
        }

        v27 = a1;
        v28 = a1 + 1;
LABEL_53:
        *v27 = v25;
        *v28 = v26;
        goto LABEL_54;
      }
    }

    else
    {
      if (v25 < v23)
      {
        v27 = a1;
        v28 = a1 + 2;
        v23 = *a1;
        goto LABEL_53;
      }

      *a1 = v23;
      a1[1] = v26;
      v27 = a1 + 1;
      v28 = a1 + 2;
      v23 = v26;
      if (v25 < v26)
      {
        goto LABEL_53;
      }
    }

LABEL_55:
    v39 = *(a2 - 1);
    if (v39 < v25)
    {
      *v24 = v39;
      *(a2 - 1) = v25;
      v40 = *v24;
      v41 = a1[1];
      if (v40 < v41)
      {
        a1[1] = v40;
        a1[2] = v41;
        v42 = *a1;
        if (v40 < *a1)
        {
          *a1 = v40;
          a1[1] = v42;
        }
      }
    }

    return 1;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v12 = *(a2 - 1);
    v13 = *a1;
    if (v12 < *a1)
    {
      *a1 = v12;
      *(a2 - 1) = v13;
    }

    return 1;
  }

LABEL_16:
  v18 = a1 + 2;
  v17 = a1[2];
  v19 = a1 + 1;
  v20 = a1[1];
  v21 = *a1;
  if (v20 < *a1)
  {
    if (v17 >= v20)
    {
      *a1 = v20;
      a1[1] = v21;
      v22 = a1 + 1;
      v19 = a1 + 2;
      if (v17 >= v21)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v22 = a1;
      v19 = a1 + 2;
    }

    goto LABEL_37;
  }

  if (v17 < v20)
  {
    a1[1] = v17;
    a1[2] = v20;
    if (v17 < v21)
    {
      v22 = a1;
LABEL_37:
      *v22 = v17;
      *v19 = v21;
    }
  }

LABEL_38:
  v31 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v32 = 0;
  for (i = 12; ; i += 4)
  {
    v34 = *v31;
    v35 = *v18;
    if (*v31 < v35)
    {
      v36 = i;
      while (1)
      {
        *(a1 + v36) = v35;
        v37 = v36 - 4;
        if (v36 == 4)
        {
          break;
        }

        v35 = *(a1 + v36 - 8);
        v36 -= 4;
        if (v34 >= v35)
        {
          v38 = (a1 + v37);
          goto LABEL_46;
        }
      }

      v38 = a1;
LABEL_46:
      *v38 = v34;
      if (++v32 == 8)
      {
        break;
      }
    }

    v18 = v31++;
    if (v31 == a2)
    {
      return 1;
    }
  }

  return v31 + 1 == a2;
}

int *std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,FIK::IKArrayIterator<int>,FIK::IKArrayIterator<int>>(int *a1, int *a2, int *a3, uint64_t a4)
{
  result = a3;
  v6 = a2 - a1;
  if (a2 != a1)
  {
    v9 = a2;
    v10 = v6 >> 2;
    v11 = __OFSUB__(v6 >> 2, 2);
    v12 = (v6 >> 2) - 2;
    if (v12 < 0 == v11)
    {
      v13 = v12 >> 1;
      v14 = &a1[v13];
      v15 = v13 + 1;
      do
      {
        std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,FIK::IKArrayIterator<int>>(a1, a4, v10, v14--);
        --v15;
      }

      while (v15);
    }

    result = v9;
    if (v9 != a3)
    {
      v16 = v9;
      do
      {
        v17 = *v16;
        if (*v16 < *a1)
        {
          *v16 = *a1;
          *a1 = v17;
          std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,FIK::IKArrayIterator<int>>(a1, a4, v10, a1);
        }

        ++v16;
      }

      while (v16 != a3);
      result = a3;
    }

    if (v10 >= 2)
    {
      do
      {
        v18 = 0;
        v19 = *a1;
        v20 = a1;
        do
        {
          v21 = &v20[v18 + 1];
          v22 = (2 * v18) | 1;
          v18 = 2 * v18 + 2;
          if (v18 >= v10)
          {
            v23 = *v21;
            v18 = v22;
          }

          else
          {
            v23 = *v21;
            v24 = v21[1];
            if (*v21 <= v24)
            {
              v23 = v21[1];
            }

            if (*v21 >= v24)
            {
              v18 = v22;
            }

            else
            {
              ++v21;
            }
          }

          *v20 = v23;
          v20 = v21;
        }

        while (v18 <= ((v10 - 2) >> 1));
        if (v21 != --v9)
        {
          *v21 = *v9;
          *v9 = v19;
          v25 = (v21 - a1 + 4) >> 2;
          v26 = v25 < 2;
          v27 = v25 - 2;
          if (v26)
          {
            goto LABEL_27;
          }

          v28 = v27 >> 1;
          v29 = &a1[v27 >> 1];
          v30 = *v29;
          v19 = *v21;
          if (*v29 >= *v21)
          {
            goto LABEL_27;
          }

          do
          {
            *v21 = v30;
            v21 = v29;
            if (!v28)
            {
              break;
            }

            v28 = (v28 - 1) / 2;
            v29 = &a1[v28];
            v30 = *v29;
          }

          while (*v29 < v19);
        }

        *v21 = v19;
LABEL_27:
        v26 = v10-- <= 2;
      }

      while (!v26);
    }
  }

  return result;
}

uint64_t std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,FIK::IKArrayIterator<int>>(uint64_t result, uint64_t a2, uint64_t a3, int *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 2)
    {
      v6 = v4 >> 1;
      v7 = (v4 >> 1) | 1;
      v8 = (result + 4 * v7);
      v9 = v6 + 2;
      if (v9 >= a3)
      {
        v10 = *v8;
      }

      else
      {
        v10 = *v8;
        v11 = v8[1];
        if (*v8 <= v11)
        {
          v10 = v8[1];
        }

        if (*v8 < v11)
        {
          ++v8;
          v7 = v9;
        }
      }

      v12 = *a4;
      if (v10 >= *a4)
      {
        do
        {
          *a4 = v10;
          a4 = v8;
          if (v5 < v7)
          {
            break;
          }

          v13 = (2 * v7) | 1;
          v8 = (result + 4 * v13);
          v7 = 2 * v7 + 2;
          if (v7 >= a3)
          {
            v10 = *v8;
            v7 = v13;
          }

          else
          {
            v10 = *v8;
            v14 = v8[1];
            if (*v8 <= v14)
            {
              v10 = v8[1];
            }

            if (*v8 >= v14)
            {
              v7 = v13;
            }

            else
            {
              ++v8;
            }
          }
        }

        while (v10 >= v12);
        *a4 = v12;
      }
    }
  }

  return result;
}

void *FIK::Allocator::create<CoreIK::IKSolverGeneric,FIK::GameRig const&>(uint64_t a1)
{
  result = (*(*a1 + 16))(a1, 560, 16);
  if (result)
  {
    return CoreIK::IKSolverGeneric::IKSolverGeneric(result);
  }

  return result;
}

void *FIK::Allocator::create<CoreIK::IKSolverRetarget,FIK::MoCapRig const&>(uint64_t a1)
{
  result = (*(*a1 + 16))(a1, 1824, 16);
  if (result)
  {
    return CoreIK::IKSolverRetarget::IKSolverRetarget(result);
  }

  return result;
}

void OUTLINED_FUNCTION_4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void *CoreIKConstraintGetName(CoreIKConstraint *this)
{
  if (!this)
  {
    CoreIKConstraintGetName_cold_1();
  }

  return CoreIKConstraint::getName(this);
}

uint64_t CoreIKConstraintGetBoneName(CoreIKConstraint *this)
{
  if (!this)
  {
    CoreIKConstraintGetBoneName_cold_1();
  }

  return CoreIKConstraint::getBoneName(this);
}

double CoreIKConstraintGetOffset(CoreIKConstraint *this)
{
  if (!this)
  {
    CoreIKConstraintGetOffset_cold_1();
  }

  CoreIKConstraint::getOffset(this, &v3);
  return *&v3;
}

uint64_t CoreIKConstraintSetOffset(CoreIKConstraint *this, __n128 a2, __n128 a3)
{
  if (!this)
  {
    v5 = a2;
    v6 = a3;
    CoreIKConstraintSetOffset_cold_1();
    a2 = v5;
    a3 = v6;
  }

  a2.n128_u32[3] = 0;
  v7[0] = a2;
  v7[1] = a3;
  return CoreIKConstraint::setOffset(this, v7);
}

double CoreIKGetConstraintTarget(CoreIKConstraint *this)
{
  if (!this)
  {
    CoreIKGetConstraintTarget_cold_1();
  }

  CoreIKConstraint::getTarget(&v3, this);
  return *&v3;
}

uint64_t CoreIKSetConstraintTarget(uint64_t a1)
{
  if (!a1)
  {
    CoreIKSetConstraintTarget_cold_1();
  }

  return CoreIKConstraint::setTarget(a1);
}

uint64_t CoreIKSetConstraintTargetTranslation(void *a1)
{
  if (!a1)
  {
    CoreIKSetConstraintTargetTranslation_cold_1();
  }

  return CoreIKConstraint::setTargetTranslation(a1);
}

uint64_t CoreIKSetConstraintTargetOrientation(void *a1)
{
  if (!a1)
  {
    CoreIKSetConstraintTargetOrientation_cold_1();
  }

  return CoreIKConstraint::setTargetOrientation(a1);
}

uint64_t CoreIKExportRigAsJSONToFilePath(uint64_t a1, char *__s)
{
  strlen(__s);

  return CoreIKRig::writeAsJsonToFile(a1, __s);
}

double CoreIKRigUpdateSettings(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v4[0] = *a2;
  v4[1] = v2;
  v5 = *(a2 + 32);
  return CoreIKRig::updateRigSettings(a1, v4);
}

float CoreIKRigUpdateJointWithSettings(uint64_t a1, char *__s, uint64_t a3, CFErrorRef *a4)
{
  v8 = strlen(__s);

  return CoreIKRig::updateJointWithSettings(a1, __s, v8, a3, a4);
}

uint64_t CoreIKRigRemoveJoint(uint64_t a1, char *__s, CFErrorRef *a3)
{
  v6 = strlen(__s);

  return CoreIKRig::removeJoint(a1, __s, v6, a3);
}

float CoreIKRigGetJointSettings@<S0>(char *__s@<X1>, uint64_t a2@<X0>, uint64_t a3@<X8>)
{
  v6 = strlen(__s);

  return CoreIKRig::getRigJointSettings(__s, v6, a2, a3);
}

double CoreIKRigUpdateConstraintWithSettings(uint64_t a1, char *__s, uint64_t a3, CFErrorRef *a4)
{
  v8 = strlen(__s);

  return CoreIKRig::updateConstraintWithSettings(a1, __s, v8, a3, a4);
}

double CoreIKRigGetConstraintSettings@<D0>(char *__s@<X1>, uint64_t a2@<X0>, _OWORD *a3@<X8>)
{
  v6 = strlen(__s);

  return CoreIKRig::getRigConstraintSettings(a2, __s, v6, a3);
}

uint64_t CoreIKRigRemoveConstraint(uint64_t a1, char *__s, CFErrorRef *a3)
{
  v6 = strlen(__s);

  return CoreIKRig::removeConstraint(a1, __s, v6, a3);
}

uint64_t CoreIKRigConstraintPositionAsPoleEnabled(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v2 = *(a1 + 352);
  if (v2 == -1)
  {
    v4 = std::__throw_bad_variant_access[abi:nn200100]();
    return CoreIKRigConstraintSetPositionAsPoleEnabled(v4);
  }

  else
  {
    v6 = &v5;
    return (off_28589C550[v2])(&v6, a1 + 16);
  }
}

uint64_t CoreIKRigConstraintSetPositionAsPoleEnabled(uint64_t a1, uint64_t a2, char a3)
{
  v6 = a2;
  v7 = a3;
  v3 = *(a1 + 352);
  if (v3 == -1)
  {
    v5 = std::__throw_bad_variant_access[abi:nn200100]();
    return CoreIKRigIsValid(v5);
  }

  else
  {
    v8 = &v6;
    return (off_28589C560[v3])(&v8, a1 + 16);
  }
}

__n128 CoreIKRigSetSourceTransform(CoreIKRig *a1, __n128 a2, __n128 a3)
{
  a2.n128_u32[3] = 0;
  v4[0] = a2;
  v4[1] = a3;
  CoreIKRig::setSourceTransform(a1, v4);
  return result;
}

void *CoreIKRigConstraintGetSourceName(uint64_t a1, char *__s)
{
  v4 = strlen(__s);

  return CoreIKRig::getConstraintSourceName(a1, __s, v4);
}

void CoreIKRigConstraintSetSourceName(uint64_t a1, char *__s, char *a3)
{
  v6 = strlen(__s);
  v7 = strlen(a3);

  CoreIKRig::setConstraintSourceName(a1, __s, v6, a3, v7);
}

uint64_t CoreIKRigConstraintGetIsParentConstraintEnabled(uint64_t a1, char *__s)
{
  v4 = strlen(__s);

  return CoreIKRig::getIsParentConstraint(a1, __s, v4);
}

uint64_t CoreIKRigConstraintSetIsParentConstraintEnabled(uint64_t a1, char *__s, char a3)
{
  v6 = strlen(__s);

  return CoreIKRig::setIsParentConstraint(a1, __s, v6, a3);
}

double CoreIKRigConstraintGetOffset(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  CoreIKRig::getOffset(a1, __s, v4, &v6);
  return *&v6;
}

double CoreIKRigConstraintSetOffset(uint64_t a1, char *__s, __n128 a3, __n128 a4)
{
  a3.n128_u32[3] = 0;
  v8[0] = a3;
  v8[1] = a4;
  v6 = strlen(__s);
  *&result = CoreIKRig::setOffset(a1, __s, v6, v8).n128_u64[0];
  return result;
}

void *CoreIKRigJointGetSourceName(uint64_t a1, char *__s)
{
  v4 = strlen(__s);

  return CoreIKRig::getSourceName(a1, __s, v4);
}

void CoreIKRigJointSetSourceName(uint64_t a1, char *__s, char *a3)
{
  v6 = strlen(__s);
  v7 = strlen(a3);

  CoreIKRig::setSourceName(a1, __s, v6, a3, v7);
}

double CoreIKRigJointGetSourceRotationOffset(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  CoreIKRig::getSourceRotationOffset(a1, __s, v4, &v6);
  return *&v6;
}

double CoreIKRigJointSetSourceRotationOffset(uint64_t a1, char *__s, __n128 a3)
{
  v5 = strlen(__s);
  v8 = a3;
  *&result = CoreIKRig::setSourceRotationOffset(a1, __s, v5, &v8).n128_u64[0];
  return result;
}

double CoreIKRigJointGetSourceParentRotationOffset(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  CoreIKRig::getSourceParentRotationOffset(a1, __s, v4, &v6);
  return *&v6;
}

double CoreIKRigJointSetSourceParentRotationOffset(uint64_t a1, char *__s, __n128 a3)
{
  v5 = strlen(__s);
  v8 = a3;
  *&result = CoreIKRig::setSourceParentRotationOffset(a1, __s, v5, &v8).n128_u64[0];
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<CoreIKRigConstraintPositionAsPoleEnabled::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,FIK::GameRig,std::__variant_detail::_Trait::MoCapRig> &>(FIK *a1, uint64_t a2)
{
  v3 = *a1;
  v17 = 0;
  v18 = 0;
  v19 = FIK::defaultAllocator(a1);
  v4 = *v3;
  v5 = strlen(v4);
  IKString::assign(&v17, v4, v5);
  v6 = FIK::IKRigUtils::GetTaskIndexByName<FIK::GameRig>(&v17, a2);
  if (v18)
  {
    (*(*v19 + 3))(v19, v17, 0, 8);
  }

  if (v6 == -1)
  {
    v8 = ikinemaLogObject()[2];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<CoreIKRigConstraintPositionAsPoleEnabled::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,FIK::GameRig,std::__variant_detail::_Trait::MoCapRig> &>(v8, v9, v10, v11, v12, v13, v14, v15);
    }

    v7 = 0;
  }

  else
  {
    v7 = *(*(a2 + 192) + 240 * v6 + 54);
  }

  return v7 & 1;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<CoreIKRigConstraintPositionAsPoleEnabled::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,FIK::GameRig,std::__variant_detail::_Trait::MoCapRig> &>(FIK *a1, uint64_t a2)
{
  v3 = *a1;
  v17 = 0;
  v18 = 0;
  v19 = FIK::defaultAllocator(a1);
  v4 = *v3;
  v5 = strlen(v4);
  IKString::assign(&v17, v4, v5);
  v6 = FIK::IKRigUtils::GetTaskIndexByName<FIK::MoCapRig>(&v17, a2);
  if (v18)
  {
    (*(*v19 + 3))(v19, v17, 0, 8);
  }

  if (v6 == -1)
  {
    v8 = ikinemaLogObject()[2];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<CoreIKRigConstraintPositionAsPoleEnabled::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,FIK::GameRig,std::__variant_detail::_Trait::MoCapRig> &>(v8, v9, v10, v11, v12, v13, v14, v15);
    }

    v7 = 0;
  }

  else
  {
    v7 = *(*(a2 + 192) + (v6 << 8) + 54);
  }

  return v7 & 1;
}

void std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<CoreIKRigConstraintSetPositionAsPoleEnabled::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,FIK::GameRig,std::__variant_detail::_Trait::MoCapRig> &>(FIK *a1, uint64_t a2)
{
  v3 = *a1;
  v14 = 0;
  v15 = 0;
  v16 = FIK::defaultAllocator(a1);
  v4 = strlen(*v3);
  IKString::assign(&v14, *v3, v4);
  v5 = FIK::IKRigUtils::GetTaskIndexByName<FIK::GameRig>(&v14, a2);
  if (v15)
  {
    (*(*v16 + 3))(v16, v14, 0, 8);
  }

  if (v5 == -1)
  {
    v6 = ikinemaLogObject()[2];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<CoreIKRigConstraintPositionAsPoleEnabled::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,FIK::GameRig,std::__variant_detail::_Trait::MoCapRig> &>(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  else
  {
    *(*(a2 + 192) + 240 * v5 + 54) = *(v3 + 8);
  }
}

void std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<CoreIKRigConstraintSetPositionAsPoleEnabled::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,FIK::GameRig,std::__variant_detail::_Trait::MoCapRig> &>(FIK *a1, uint64_t a2)
{
  v3 = *a1;
  v14 = 0;
  v15 = 0;
  v16 = FIK::defaultAllocator(a1);
  v4 = strlen(*v3);
  IKString::assign(&v14, *v3, v4);
  v5 = FIK::IKRigUtils::GetTaskIndexByName<FIK::MoCapRig>(&v14, a2);
  if (v15)
  {
    (*(*v16 + 3))(v16, v14, 0, 8);
  }

  if (v5 == -1)
  {
    v6 = ikinemaLogObject()[2];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<CoreIKRigConstraintPositionAsPoleEnabled::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,FIK::GameRig,std::__variant_detail::_Trait::MoCapRig> &>(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  else
  {
    *(*(a2 + 192) + (v5 << 8) + 54) = *(v3 + 8);
  }
}

uint64_t CoreIKSolver::setInputScale(CoreIKSolver *this, float a2)
{
  if (a2 <= 0.0)
  {
    v5 = ikinemaLogObject()[1];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      CoreIKSolver::setInputScale(v5);
    }

    return (*(*this + 104))(this);
  }

  else
  {
    v3 = *(*this + 112);

    return v3();
  }
}

uint64_t CoreIKSolver::setOutputScale(CoreIKSolver *this, float a2)
{
  if (a2 <= 0.0)
  {
    v5 = ikinemaLogObject()[1];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      CoreIKSolver::setOutputScale(v5);
    }

    return (*(*this + 120))(this);
  }

  else
  {
    v3 = *(*this + 128);

    return v3();
  }
}

FIK *CoreIKCreateACPPenetrationSolverFromRig(FIK *a1)
{
  if (a1)
  {
    return CoreIK::createSolverObject<CoreIKACPPenetrationSolver>(a1);
  }

  return a1;
}

void *CoreIK::createSolverObject<CoreIKACPPenetrationSolver>(FIK *a1)
{
  if (*(a1 + 88) == 1)
  {
    v1 = FIK::defaultAllocator(a1);

    return FIK::Allocator::create<CoreIKACPPenetrationSolver,FIK::MoCapRig const&>(v1);
  }

  else
  {
    v3 = ikinemaLogObject()[1];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      CoreIK::createSolverObject<CoreIK::IKSolverGeneric>(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    return 0;
  }
}

uint64_t CoreIKDestroyACPPenetrationSolver(FIK *a1)
{
  v1 = a1;
  if (!a1)
  {
    a1 = CoreIKDestroyACPPenetrationSolver_cold_1();
  }

  v2 = FIK::defaultAllocator(a1);

  return FIK::Allocator::destroy<CoreIKACPPenetrationSolver>(v2, v1);
}

uint64_t FIK::Allocator::destroy<CoreIKACPPenetrationSolver>(uint64_t result, void (***a2)(void))
{
  if (a2)
  {
    v3 = result;
    (**a2)(a2);
    v4 = *(*v3 + 24);

    return v4(v3, a2, 0, 8);
  }

  return result;
}

double CoreIKACPPenetrationConstraintSetPlaneDefinition(CoreIKConstraint *a1, __n128 a2, __n128 a3)
{
  a2.n128_u32[3] = 0;
  a3.n128_u32[3] = 0;
  v4 = a3;
  v5 = a2;
  return CoreIKACPPenetrationConstraint::setPlaneDefinition(a1, &v5, &v4);
}

double CoreIKACPPenetrationSolverGetTargetRestPose(uint64_t a1, unint64_t a2)
{
  Rig = FIK::AnimNode::GetRig((a1 + 32));
  if (*(Rig + 208) <= a2)
  {
    v7 = ikinemaLogObject()[2];
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    *&v5 = 0;
    if (v8)
    {
      CoreIKACPPenetrationSolverGetTargetRestPose_cold_1(v7, v9, v10, v11, v12, v13, v14, v15);
      *&v5 = 0;
    }
  }

  else
  {
    v4 = *(Rig + 224) + 544 * a2;
    v5 = *(v4 + 64);
    v6 = *(v4 + 80);
  }

  return *&v5;
}

uint64_t CoreIKACPPenetrationSolverGetConstraintTargetName(CoreIKACPPenetrationSolver *a1, unint64_t a2)
{
  Constraint = CoreIKACPPenetrationSolver::getConstraint(a1, a2);

  return CoreIKConstraint::getBoneName(Constraint);
}

FIK *CoreIKCreateACPFilteringSolverFromRig(FIK *a1)
{
  if (a1)
  {
    return CoreIK::createSolverObject<CoreIKACPFilteringSolver>(a1);
  }

  return a1;
}

void *CoreIK::createSolverObject<CoreIKACPFilteringSolver>(FIK *a1)
{
  if (*(a1 + 88) == 1)
  {
    v1 = FIK::defaultAllocator(a1);

    return FIK::Allocator::create<CoreIKACPFilteringSolver,FIK::MoCapRig const&>(v1);
  }

  else
  {
    v3 = ikinemaLogObject()[1];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      CoreIK::createSolverObject<CoreIK::IKSolverGeneric>(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    return 0;
  }
}

uint64_t CoreIKDestroyACPFilteringSolver(FIK *a1)
{
  v1 = a1;
  if (!a1)
  {
    a1 = CoreIKDestroyACPFilteringSolver_cold_1();
  }

  v2 = FIK::defaultAllocator(a1);

  return FIK::Allocator::destroy<CoreIKACPPenetrationSolver>(v2, v1);
}

FIK *CoreIKCreateACPSlidingSolverFromRig(FIK *a1)
{
  if (a1)
  {
    return CoreIK::createSolverObject<CoreIKACPSlidingSolver>(a1);
  }

  return a1;
}

void *CoreIK::createSolverObject<CoreIKACPSlidingSolver>(FIK *a1)
{
  if (*(a1 + 88) == 1)
  {
    v1 = FIK::defaultAllocator(a1);

    return FIK::Allocator::create<CoreIKACPSlidingSolver,FIK::MoCapRig const&>(v1);
  }

  else
  {
    v3 = ikinemaLogObject()[1];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      CoreIK::createSolverObject<CoreIK::IKSolverGeneric>(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    return 0;
  }
}

uint64_t CoreIKDestroyACPSlidingSolver(FIK *a1)
{
  v1 = a1;
  if (!a1)
  {
    a1 = CoreIKDestroyACPSlidingSolver_cold_1();
  }

  v2 = FIK::defaultAllocator(a1);

  return FIK::Allocator::destroy<CoreIKACPPenetrationSolver>(v2, v1);
}

void *FIK::Allocator::create<CoreIKACPPenetrationSolver,FIK::MoCapRig const&>(uint64_t a1)
{
  result = (*(*a1 + 16))(a1, 544, 16);
  if (result)
  {
    return CoreIKACPPenetrationSolver::CoreIKACPPenetrationSolver(result);
  }

  return result;
}

void *FIK::Allocator::create<CoreIKACPFilteringSolver,FIK::MoCapRig const&>(uint64_t a1)
{
  result = (*(*a1 + 16))(a1, 544, 16);
  if (result)
  {
    return CoreIKACPFilteringSolver::CoreIKACPFilteringSolver(result);
  }

  return result;
}

void *FIK::Allocator::create<CoreIKACPSlidingSolver,FIK::MoCapRig const&>(uint64_t a1)
{
  result = (*(*a1 + 16))(a1, 544, 16);
  if (result)
  {
    return CoreIKACPSlidingSolver::CoreIKACPSlidingSolver(result);
  }

  return result;
}

uint64_t ikinema::UserAlgorithmImpl::process(void *a1, CoreIKConstraint *this, uint64_t a3)
{
  v6 = a1[2];
  if (v6)
  {
    v7 = CoreIKConstraint::interface(this);
    v6(v7, a1[1], a3);
  }

  v8 = a1[3];
  if (v8)
  {
    v9 = CoreIKConstraint::interface((this + 8));
    v8(v9, a1[1], a3);
  }

  return 0;
}

uint64_t ikinema::UserAlgorithmImpl::registerBuffers(uint64_t a1, void *a2)
{
  v2 = *(a1 + 56);
  if (!v2)
  {
    return 0;
  }

  if (!*a2)
  {
    return 1;
  }

  v3 = *(a1 + 72);
  v4 = &v3[v2];
  do
  {
    v5 = (a2[2] + 56);
    v6 = 72 * *a2;
    while (1)
    {
      v7 = *v5;
      v5 += 9;
      if (v7 == *v3)
      {
        break;
      }

      v6 -= 72;
      if (!v6)
      {
        return 1;
      }
    }

    result = 0;
    ++v3;
  }

  while (v3 != v4);
  return result;
}

uint64_t ikinema::UserAlgorithmImpl::UserAlgorithmImpl(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = &unk_28589C580;
  *(a1 + 8) = v4;
  *(a1 + 16) = *a2;
  v5 = FIK::defaultAllocator(a1);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = v5;
  v6 = strlen(*(a2 + 40));
  IKString::assign((a1 + 32), *(a2 + 40), v6);
  v8 = FIK::defaultAllocator(v7);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = v8;
  v9 = *(a2 + 32);
  v14 = -1;
  FIK::IKArray<unsigned long>::resize((a1 + 56), v9, &v14);
  if (*(a2 + 32))
  {
    v10 = 0;
    v11 = *(a2 + 24);
    v12 = *(a1 + 72);
    do
    {
      *(v12 + 8 * v10) = *(v11 + 8 * v10);
      ++v10;
    }

    while (v10 != *(a2 + 32));
  }

  return a1;
}

_OWORD *ikinema::UserAlgorithm::create@<X0>(_OWORD *a1@<X0>, uint64_t *a2@<X8>)
{
  if (*a1 || *(a1 + 1))
  {
    return ikinema::AlgorithmHandle::make<ikinema::UserAlgorithmImpl,CoreIKAlgorithmBlock &>(a1, a2);
  }

  *a2 = 0;
  return a1;
}

uint64_t ikinema::AlgorithmHandle::make<ikinema::UserAlgorithmImpl,CoreIKAlgorithmBlock &>@<X0>(_OWORD *a1@<X0>, uint64_t *a2@<X8>)
{
  result = FIK::FIKAlloc(0x58, 8);
  if (result)
  {
    v5 = a1[1];
    v6[0] = *a1;
    v6[1] = v5;
    v6[2] = a1[2];
    result = ikinema::UserAlgorithmImpl::UserAlgorithmImpl(result, v6);
  }

  *a2 = result;
  return result;
}

const char *ikinema::AlgorithmBlockBase<ikinema::UserAlgorithm>::typeId()
{
  result = "N7ikinema13UserAlgorithmE";
  if (("N7ikinema13UserAlgorithmE" & 0x8000000000000000) != 0)
  {
    v1 = ("N7ikinema13UserAlgorithmE" & 0x7FFFFFFFFFFFFFFFLL);
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

void ikinema::UserAlgorithmImpl::~UserAlgorithmImpl(ikinema::UserAlgorithmImpl *this)
{
  *(this + 7) = 0;
  v2 = *(this + 9);
  if (v2)
  {
    (*(**(this + 10) + 24))(*(this + 10), v2, 0, 8);
  }

  if (*(this + 5))
  {
    (*(**(this + 6) + 24))(*(this + 6), *(this + 4), 0, 8);
    *(this + 4) = 0;
    *(this + 5) = 0;
  }
}

{
  *(this + 7) = 0;
  v2 = *(this + 9);
  if (v2)
  {
    (*(**(this + 10) + 24))(*(this + 10), v2, 0, 8);
  }

  if (*(this + 5))
  {
    (*(**(this + 6) + 24))(*(this + 6), *(this + 4), 0, 8);
    *(this + 4) = 0;
    *(this + 5) = 0;
  }

  JUMPOUT(0x245D77F60);
}

void *ikinema::UserAlgorithmImpl::name(ikinema::UserAlgorithmImpl *this)
{
  if (*(this + 5))
  {
    return *(this + 4);
  }

  else
  {
    return &unk_245A04BAE;
  }
}

void *CoreIK::IKSolverGeneric::IKSolverGeneric(void *a1)
{
  *a1 = &unk_28589C610;
  FIK::GenericSolver::GenericSolver(a1 + 2);
  return a1;
}

uint64_t CoreIK::IKSolverGeneric::despatchGetConstraint(uint64_t a1, const char *a2)
{
  Tasks = FIK::GenericSolver::GetTasks((a1 + 16));
  v4 = *Tasks;
  if (*Tasks)
  {
    v5 = Tasks[2];
    v6 = strlen(a2);
    while (1)
    {
      v7 = *(v5 + 7);
      v8 = v7 ? *(v5 + 6) : &unk_245A04BAE;
      if (v7 == v6 && !memcmp(v8, a2, v6))
      {
        break;
      }

      v5 = (v5 + 576);
      if (!--v4)
      {
        goto LABEL_9;
      }
    }

    return CoreIKConstraint::interface(v5);
  }

  else
  {
LABEL_9:
    v9 = ikinemaLogObject()[1];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      CoreIK::IKSolverGeneric::despatchGetConstraint(v9, v10, v11, v12, v13, v14, v15, v16);
    }

    return 0;
  }
}

BOOL CoreIK::IKSolverGeneric::despatchSolve(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a5;
  v12[0] = a5;
  v12[1] = a6;
  if (a3 == a6)
  {
    if (!a3)
    {
      return FIK::GenericSolver::Solve((a1 + 16), v12) == 2;
    }
  }

  else
  {
    CoreIK::IKSolverGeneric::despatchSolve();
    if (!a3)
    {
      return FIK::GenericSolver::Solve((a1 + 16), v12) == 2;
    }
  }

  v10 = &a2[2 * a3];
  do
  {
    *v6 = *a2;
    v6[1] = a2[1];
    a2 += 2;
    v6 += 2;
  }

  while (a2 != v10);
  return FIK::GenericSolver::Solve((a1 + 16), v12) == 2;
}

void *CoreIK::IKSolverGeneric::despatchGetInputName(CoreIK::IKSolverGeneric *this, uint64_t a2)
{
  v2 = *(this + 54) + (a2 << 8);
  if (*(v2 + 16))
  {
    return *(v2 + 8);
  }

  else
  {
    return &unk_245A04BAE;
  }
}

void *CoreIK::IKSolverGeneric::despatchGetOutputName(CoreIK::IKSolverGeneric *this, uint64_t a2)
{
  v2 = *(this + 54) + (a2 << 8);
  if (*(v2 + 16))
  {
    return *(v2 + 8);
  }

  else
  {
    return &unk_245A04BAE;
  }
}

void *CoreIK::IKSolverGeneric::despatchGetOutputParentName(CoreIK::IKSolverGeneric *this, uint64_t a2)
{
  v2 = *(this + 54) + (a2 << 8);
  if (*(v2 + 40))
  {
    return *(v2 + 32);
  }

  else
  {
    return &unk_245A04BAE;
  }
}

void CoreIK::IKSolverGeneric::~IKSolverGeneric(CoreIK::IKSolverGeneric *this)
{
  FIK::GenericSolver::~GenericSolver((this + 16));
}

{
  FIK::GenericSolver::~GenericSolver((this + 16));

  JUMPOUT(0x245D77F60);
}

uint64_t CoreIKSolver::despatchJoints(CoreIKSolver *this)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *ikinemaLogObject();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "despatchJoints";
    _os_log_impl(&dword_245976000, v1, OS_LOG_TYPE_INFO, "%s: Getting joint collection is not supported by this solver", &v4, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t CoreIKSolver::despatchConstraints(CoreIKSolver *this)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *ikinemaLogObject();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "despatchConstraints";
    _os_log_impl(&dword_245976000, v1, OS_LOG_TYPE_INFO, "%s: Getting constraint collection is not supported by this solver", &v4, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
  return 0;
}

float CoreIKSolver::despatchSetInputScale(CoreIKSolver *this, float a2)
{
  v2 = ikinemaLogObject()[1];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    CoreIKSolver::despatchSetInputScale(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  return 1.0;
}

float CoreIKSolver::despatchSetOutputScale(CoreIKSolver *this, float a2)
{
  v2 = ikinemaLogObject()[1];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    CoreIKSolver::despatchSetOutputScale(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  return 1.0;
}

void CoreIKSolver::despatchResetSolver(CoreIKSolver *this)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *ikinemaLogObject();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    v3 = 136315138;
    v4 = "despatchResetSolver";
    _os_log_impl(&dword_245976000, v1, OS_LOG_TYPE_INFO, "%s: Solver reset is not supported by this solver", &v3, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

uint64_t CoreIKSolver::despatchGetConstraintCount(CoreIKSolver *this)
{
  v1 = ikinemaLogObject()[1];
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    CoreIKSolver::despatchGetConstraintCount(v1, v2, v3, v4, v5, v6, v7, v8);
  }

  return 0;
}

void CoreIKSolver::despatchGetTaskTargetsDebug()
{
  v0 = ikinemaLogObject()[1];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    CoreIKSolver::despatchGetTaskTargetsDebug(v0, v1, v2, v3, v4, v5, v6, v7);
  }
}

void *ikinema::processedRigs::getBPERigObject@<X0>(ikinema::processedRigs *this@<X0>, uint64_t a2@<X8>)
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = ikinema::rig::BPE(this);
  ikinema::loadRigFromString(v3, v4, v27);
  if (v42[0] != 1 || v41 != 1)
  {
    ikinema::processedRigs::getBPERigObject(v42);
  }

  if (v41 != 1)
  {
    std::__throw_bad_variant_access[abi:nn200100]();
  }

  v6 = 0;
  v7 = &unk_278E8A160;
  do
  {
    v8 = FIK::IKRigUtils::getBoneIndex<FIK::RigBoneBase,void>(*(v7 - 1), *v7, v36);
    if (v8 == -1)
    {
      v19 = ikinemaLogObject();
      if (os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
      {
        ikinema::processedRigs::getBPERigObject();
      }

      goto LABEL_24;
    }

    v7 += 2;
    *(v37 + 96 * v8) = v6++;
  }

  while (v6 != 17);
  v9 = 0;
  v10 = &unk_278E8A270;
  while (1)
  {
    v11 = FIK::IKRigUtils::getBoneIndex<FIK::MoCapBone,void>(*(v10 - 1), *v10, v34);
    if (v11 == -1)
    {
      break;
    }

    v12 = v11;
    v10 += 2;
    v13 = v35;
    v14 = (v35 + 544 * v12);
    *v14 = v9;
    v14[1] = -1;
    if (++v9 == 91)
    {
      v15 = 126 - 2 * __clz(v34[0]);
      if (v34[0])
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      v17 = 126 - 2 * __clz(v36[0]);
      if (v36[0])
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      FIK::Serialisation::fixUpRigIndices(v27);
      goto LABEL_24;
    }
  }

  v20 = ikinemaLogObject();
  if (os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
  {
    ikinema::processedRigs::getBPERigObject();
  }

LABEL_24:
  IKString::IKString(a2, v27);
  *(a2 + 24) = *v28;
  *(a2 + 36) = *(&v28[1] + 4);
  v21 = *&v28[7];
  *(a2 + 64) = *&v28[5];
  *(a2 + 80) = v21;
  *(a2 + 96) = *&v28[9];
  *(a2 + 112) = v28[11];
  *(a2 + 120) = v29;
  *(a2 + 131) = *(v30 + 3);
  *(a2 + 128) = v30[0];
  v22 = v32;
  *(a2 + 144) = v31;
  *(a2 + 160) = v22;
  FIK::IKArray<FIK::MoCapTask>::IKArray((a2 + 176), v33);
  FIK::IKArray<FIK::MoCapBone>::IKArray((a2 + 208), v34);
  result = FIK::IKArray<FIK::RigBoneBase>::IKArray((a2 + 240), v36);
  v24 = v39;
  *(a2 + 272) = v38;
  *(a2 + 288) = v24;
  *(a2 + 304) = v40;
  if (v42[0] == 1 && v41 != -1)
  {
    result = (off_28589C6D8[v41])(&v26, v27);
  }

  v25 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ikinema::processedRigs::getBPEHelperHierarchyBoneDefinitions@<X0>(ikinema::processedRigs *this@<X0>, void *a2@<X8>)
{
  v103[10] = *MEMORY[0x277D85DE8];
  ikinema::processedRigs::getBPERigObject(this, v98);
  FIK::PoseConverter::PoseConverter<FIK::MoCapBone>(v94, v102, v101);
  FIK::PoseConverter::getGlobalTransforms(v94, &v95);
  FIK::PoseConverter::~PoseConverter(v94);
  v4 = FIK::defaultAllocator(v3);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = v4;
  v7 = vmulq_f32(v102[4], v102[4]);
  v8 = sqrtf(v7.f32[2] + vaddv_f32(*v7.f32));
  FIK::IKArray<FIK::HelperHierarchyBoneDefinition>::reserve(a2, *a2 + 1);
  v9 = a2[2] + 32 * *a2;
  *v9 = -1;
  *(v9 + 8) = SourceIndex;
  *(v9 + 16) = SourceParent;
  *(v9 + 24) = v8;
  ++*a2;
  FIK::IKArray<FIK::HelperHierarchyBoneDefinition>::reserve(a2, *a2 + 1);
  v14 = a2[2] + 32 * *a2;
  *v14 = v10;
  *(v14 + 8) = v11;
  *(v14 + 16) = v12;
  *(v14 + 24) = DistanceBetween;
  ++*a2;
  FIK::IKArray<FIK::HelperHierarchyBoneDefinition>::reserve(a2, *a2 + 1);
  v19 = a2[2] + 32 * *a2;
  *v19 = v15;
  *(v19 + 8) = v16;
  *(v19 + 16) = v17;
  *(v19 + 24) = v18;
  ++*a2;
  FIK::IKArray<FIK::HelperHierarchyBoneDefinition>::reserve(a2, *a2 + 1);
  v24 = a2[2] + 32 * *a2;
  *v24 = v20;
  *(v24 + 8) = v21;
  *(v24 + 16) = v22;
  *(v24 + 24) = v23;
  ++*a2;
  FIK::IKArray<FIK::HelperHierarchyBoneDefinition>::reserve(a2, *a2 + 1);
  v29 = a2[2] + 32 * *a2;
  *v29 = v25;
  *(v29 + 8) = v26;
  *(v29 + 16) = v27;
  *(v29 + 24) = v28;
  ++*a2;
  FIK::IKArray<FIK::HelperHierarchyBoneDefinition>::reserve(a2, *a2 + 1);
  v34 = a2[2] + 32 * *a2;
  *v34 = v30;
  *(v34 + 8) = v31;
  *(v34 + 16) = v32;
  *(v34 + 24) = v33;
  ++*a2;
  FIK::IKArray<FIK::HelperHierarchyBoneDefinition>::reserve(a2, *a2 + 1);
  v39 = a2[2] + 32 * *a2;
  *v39 = v35;
  *(v39 + 8) = v36;
  *(v39 + 16) = v37;
  *(v39 + 24) = v38;
  ++*a2;
  v44 = LODWORD(CumulativeBoneLengthBetween);
  FIK::IKArray<FIK::HelperHierarchyBoneDefinition>::reserve(a2, *a2 + 1);
  v45 = a2[2] + 32 * *a2;
  *v45 = v40;
  *(v45 + 8) = v41;
  *(v45 + 16) = v42;
  *(v45 + 24) = v44;
  ++*a2;
  v50 = LODWORD(v49);
  FIK::IKArray<FIK::HelperHierarchyBoneDefinition>::reserve(a2, *a2 + 1);
  v51 = a2[2] + 32 * *a2;
  *v51 = v46;
  *(v51 + 8) = v47;
  *(v51 + 16) = v48;
  *(v51 + 24) = v50;
  ++*a2;
  FIK::IKArray<FIK::HelperHierarchyBoneDefinition>::reserve(a2, *a2 + 1);
  v56 = a2[2] + 32 * *a2;
  *v56 = v52;
  *(v56 + 8) = v53;
  *(v56 + 16) = v54;
  *(v56 + 24) = v55;
  ++*a2;
  FIK::IKArray<FIK::HelperHierarchyBoneDefinition>::reserve(a2, *a2 + 1);
  v61 = a2[2] + 32 * *a2;
  *v61 = v57;
  *(v61 + 8) = v58;
  *(v61 + 16) = v59;
  *(v61 + 24) = v60;
  ++*a2;
  FIK::IKArray<FIK::HelperHierarchyBoneDefinition>::reserve(a2, *a2 + 1);
  v66 = a2[2] + 32 * *a2;
  *v66 = v62;
  *(v66 + 8) = v63;
  *(v66 + 16) = v64;
  *(v66 + 24) = v65;
  ++*a2;
  FIK::IKArray<FIK::HelperHierarchyBoneDefinition>::reserve(a2, *a2 + 1);
  v71 = a2[2] + 32 * *a2;
  *v71 = v67;
  *(v71 + 8) = v68;
  *(v71 + 16) = v69;
  *(v71 + 24) = v70;
  ++*a2;
  FIK::IKArray<FIK::HelperHierarchyBoneDefinition>::reserve(a2, *a2 + 1);
  v76 = a2[2] + 32 * *a2;
  *v76 = v72;
  *(v76 + 8) = v73;
  *(v76 + 16) = v74;
  *(v76 + 24) = v75;
  ++*a2;
  FIK::IKArray<FIK::HelperHierarchyBoneDefinition>::reserve(a2, *a2 + 1);
  v81 = a2[2] + 32 * *a2;
  *v81 = v77;
  *(v81 + 8) = v78;
  *(v81 + 16) = v79;
  *(v81 + 24) = v80;
  ++*a2;
  FIK::IKArray<FIK::HelperHierarchyBoneDefinition>::reserve(a2, *a2 + 1);
  v86 = a2[2] + 32 * *a2;
  *v86 = v82;
  *(v86 + 8) = v83;
  *(v86 + 16) = v84;
  *(v86 + 24) = v85;
  ++*a2;
  FIK::IKArray<FIK::HelperHierarchyBoneDefinition>::reserve(a2, *a2 + 1);
  v91 = a2[2] + 32 * *a2;
  *v91 = v87;
  *(v91 + 8) = v88;
  *(v91 + 16) = v89;
  *(v91 + 24) = v90;
  ++*a2;
  v95 = 0;
  if (v96)
  {
    (*(*v97 + 24))(v97, v96, 0, 8);
  }

  FIK::IKArray<FIK::RigBoneBase>::~IKArray(v103);
  FIK::IKArray<FIK::MoCapBone>::~IKArray(&v101);
  result = FIK::IKArray<FIK::MoCapTask>::~IKArray(&v100);
  if (v98[1])
  {
    result = (*(*v99 + 24))(v99, v98[0], 0, 8);
  }

  v93 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t anonymous namespace::getSourceIndex(void *a1, size_t a2)
{
  if (v2 == -1)
  {
  }

  return v2;
}

uint64_t anonymous namespace::getSourceParent(void *a1, size_t a2, uint64_t a3)
{
  if (v4 == -1)
  {
  }

  return *(*(a3 + 256) + 96 * v4 + 4);
}

float anonymous namespace::getDistanceBetween(void *a1, size_t a2, void *a3, size_t a4, uint64_t a5)
{
  if (v8 == -1)
  {
  }

  if (v9 == -1)
  {
  }

  v10 = vsubq_f32(*(a5 + 32 * v9), *(a5 + 32 * v8));
  v11 = vmulq_f32(v10, v10);
  return sqrtf(v11.f32[2] + vaddv_f32(*v11.f32));
}

double anonymous namespace::getCumulativeBoneLengthBetween(void *a1, size_t a2, void *a3, size_t a4, uint64_t a5)
{
  v9 = v8;
  if (v8 == -1)
  {
  }

  if (v10 == -1)
  {
    return 0.0;
  }

  else
  {
    result = 0.0;
    if (v10 != v9 && v10 != -1)
    {
      do
      {
        v12 = (*(a5 + 224) + 544 * v10);
        v13 = vmulq_f32(v12[4], v12[4]);
        *&result = *&result + sqrtf(v13.f32[2] + vaddv_f32(*v13.f32));
        LODWORD(v10) = v12->i32[1];
      }

      while (v10 != v9 && v10 != -1);
      if (v10 != v9)
      {
        *&result = 0.0;
      }
    }
  }

  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,anonymous namespace::reorderRigBones(FIK::MoCapRig &)::$_0 &,FIK::IKArrayIterator<FIK::MoCapBone>,false>(uint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v6 = result;
LABEL_2:
  v7 = a2 - 68;
  v170 = a2 - 204;
  v171 = a2 - 136;
  v8 = v6;
  v173 = a2;
  while (1)
  {
    v6 = v8;
    v9 = 0xF0F0F0F0F0F0F0F1 * ((a2 - v8) >> 5);
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        if (*v7 >= *v8)
        {
          return result;
        }

LABEL_123:
        v99 = v8;
LABEL_124:
        v100 = v7;
        return std::swap[abi:nn200100]<FIK::MoCapBone>(v99, v100);
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      v101 = *(v8 + 136);
      v102 = *v7;
      if (v101 >= *v8)
      {
        if (v102 < v101)
        {
          result = std::swap[abi:nn200100]<FIK::MoCapBone>(v8 + 68, v7);
          if (*(v8 + 136) < *v8)
          {
            v100 = v8 + 68;
            v99 = v8;
            return std::swap[abi:nn200100]<FIK::MoCapBone>(v99, v100);
          }
        }
      }

      else
      {
        if (v102 < v101)
        {
          goto LABEL_123;
        }

        result = std::swap[abi:nn200100]<FIK::MoCapBone>(v8, v8 + 68);
        if (*v7 < *(v8 + 136))
        {
          v99 = v8 + 68;
          goto LABEL_124;
        }
      }

      return result;
    }

    if (v9 == 4)
    {
    }

    if (v9 == 5)
    {
      break;
    }

LABEL_10:
    if (a2 - v8 <= 13055)
    {
      if (a4)
      {
        if (v8 != a2)
        {
          v103 = v8 + 68;
          if (v8 + 68 != a2)
          {
            v104 = 0;
            v105 = v8;
            do
            {
              v106 = v103;
              if (*(v105 + 136) < *v105)
              {
                v176 = *v103;
                IKString::IKString(&v178, v105 + 69, v105[71]);
                IKString::IKString(&v181, v105 + 72, v105[74]);
                v107 = *(v105 + 39);
                v184 = *(v105 + 38);
                v185 = v107;
                v108 = *(v105 + 41);
                v186 = *(v105 + 40);
                v187 = v108;
                v188 = v105[84];
                v109 = *(v105 + 44);
                v189 = *(v105 + 43);
                v190 = v109;
                v110 = *(v105 + 46);
                v191 = *(v105 + 45);
                v192 = v110;
                v111 = *(v105 + 48);
                v193 = *(v105 + 47);
                v194 = v111;
                v195 = *(v105 + 49);
                IKString::IKString(&v196, v105 + 100, v105[102]);
                v199 = *(v105 + 206);
                v112 = *(v105 + 53);
                v200 = *(v105 + 52);
                v113 = *(v105 + 55);
                v202 = *(v105 + 54);
                v201 = v112;
                v203 = v113;
                v204 = *(v105 + 56);
                v205 = v105[114];
                v206 = v105[116];
                v114 = *(v105 + 60);
                v207 = *(v105 + 59);
                *(v105 + 60) = 0u;
                v115 = *(v105 + 61);
                v116 = *(v105 + 62);
                v105[122] = 0;
                v208 = v114;
                v209 = v115;
                v210 = v116;
                v211 = *(v105 + 63);
                v212 = v105[128];
                v117 = *(v105 + 66);
                v213 = *(v105 + 65);
                v214 = v117;
                v118 = v104;
                v215 = *(v105 + 67);
                while (1)
                {
                  v119 = v8 + v118;
                  *(v8 + v118 + 544) = *(v8 + v118);
                  IKString::operator=((v8 + v118 + 552), v8 + v118 + 8);
                  IKString::operator=(v119 + 72, (v119 + 32));
                  v120 = *(v8 + v118 + 80);
                  *(v119 + 38) = *(v119 + 4);
                  *(v119 + 39) = v120;
                  v121 = *(v8 + v118 + 112);
                  *(v119 + 40) = *(v119 + 6);
                  *(v119 + 41) = v121;
                  *(v119 + 84) = *(v119 + 16);
                  v122 = *(v8 + v118 + 160);
                  *(v119 + 43) = *(v119 + 9);
                  *(v119 + 44) = v122;
                  v123 = *(v8 + v118 + 192);
                  *(v119 + 45) = *(v119 + 11);
                  *(v119 + 46) = v123;
                  v124 = *(v8 + v118 + 224);
                  *(v119 + 47) = *(v119 + 13);
                  *(v119 + 48) = v124;
                  *(v119 + 49) = *(v119 + 15);
                  IKString::operator=(v119 + 100, (v119 + 256));
                  *(v119 + 206) = *(v119 + 70);
                  v125 = *(v8 + v118 + 304);
                  *(v119 + 52) = *(v119 + 18);
                  *(v119 + 53) = v125;
                  v126 = *(v8 + v118 + 336);
                  *(v119 + 54) = *(v119 + 20);
                  *(v119 + 55) = v126;
                  *(v119 + 56) = *(v119 + 22);
                  *(v119 + 114) = *(v119 + 46);
                  *(v119 + 116) = *(v119 + 48);
                  *(v119 + 59) = *(v119 + 25);
                  FIK::IKArray<IKString>::operator=(v119 + 60, v119 + 26);
                  v127 = *(v8 + v118 + 464);
                  *(v119 + 62) = *(v119 + 28);
                  *(v119 + 63) = v127;
                  *(v119 + 128) = *(v119 + 60);
                  v128 = *(v8 + v118 + 512);
                  *(v119 + 65) = *(v119 + 31);
                  *(v119 + 66) = v128;
                  *(v119 + 67) = *(v119 + 33);
                  if (!v118)
                  {
                    break;
                  }

                  v118 -= 544;
                  if (v176 >= *(v8 + v118))
                  {
                    v129 = v8 + v118 + 544;
                    goto LABEL_137;
                  }
                }

                v129 = v8;
LABEL_137:
                *v129 = v176;
                IKString::operator=(v119 + 1, &v178);
                IKString::operator=(v119 + 4, &v181);
                *(v129 + 64) = v184;
                *(v119 + 5) = v185;
                v131 = v186;
                v130 = v187;
                *(v119 + 16) = v188;
                *(v119 + 6) = v131;
                *(v119 + 7) = v130;
                *(v129 + 144) = v189;
                *(v129 + 160) = v190;
                *(v129 + 176) = v191;
                *(v129 + 192) = v192;
                *(v129 + 208) = v193;
                *(v129 + 224) = v194;
                *(v129 + 240) = v195;
                IKString::operator=(v119 + 32, &v196);
                *(v129 + 280) = v199;
                *(v129 + 288) = v200;
                *(v119 + 19) = v201;
                *(v129 + 320) = v202;
                *(v119 + 21) = v203;
                v132 = v205;
                *(v119 + 22) = v204;
                *(v119 + 46) = v132;
                *(v129 + 384) = v206;
                *(v129 + 400) = v207;
                v133 = v208;
                v208 = 0uLL;
                v134 = *(v119 + 52);
                *(v119 + 52) = v133;
                v135 = *(v129 + 424);
                *(v129 + 424) = *(&v133 + 1);
                v136 = v209;
                *&v209 = 0;
                *&v216 = v134;
                *(&v216 + 1) = v135;
                v137 = *(v129 + 432);
                *(v129 + 432) = v136;
                v217 = v137;
                FIK::IKArray<IKString>::~IKArray(&v216);
                *(v129 + 448) = v210;
                *(v119 + 29) = v211;
                *(v129 + 480) = v212;
                *(v129 + 496) = v213;
                *(v129 + 512) = v214;
                *(v119 + 33) = v215;
                result = FIK::IKArray<IKString>::~IKArray(&v208);
                if (v197)
                {
                  result = (*(*v198 + 24))(v198, v196, 0, 8);
                  v196 = 0;
                  v197 = 0;
                }

                if (v182)
                {
                  result = (*(*v183 + 24))(v183, v181, 0, 8);
                  v181 = 0;
                  v182 = 0;
                }

                if (v179)
                {
                  result = (*(*v180 + 24))(v180, v178, 0, 8);
                }
              }

              v103 = v106 + 68;
              v104 += 544;
              v105 = v106;
            }

            while (v106 + 68 != a2);
          }
        }
      }

      else if (v8 != a2)
      {
        v138 = v8 + 68;
        if (v8 + 68 != a2)
        {
          v139 = v8 - 68;
          do
          {
            v140 = v138;
            if (*(v6 + 544) < *v6)
            {
              v177 = *v138;
              IKString::IKString(&v178, (v6 + 552), *(v6 + 568));
              IKString::IKString(&v181, (v6 + 576), *(v6 + 592));
              v141 = *(v6 + 624);
              v184 = *(v6 + 608);
              v185 = v141;
              v142 = *(v6 + 656);
              v186 = *(v6 + 640);
              v187 = v142;
              v188 = *(v6 + 672);
              v143 = *(v6 + 704);
              v189 = *(v6 + 688);
              v190 = v143;
              v144 = *(v6 + 736);
              v191 = *(v6 + 720);
              v192 = v144;
              v145 = *(v6 + 768);
              v193 = *(v6 + 752);
              v194 = v145;
              v195 = *(v6 + 784);
              IKString::IKString(&v196, (v6 + 800), *(v6 + 816));
              v199 = *(v6 + 824);
              v146 = *(v6 + 848);
              v200 = *(v6 + 832);
              v147 = *(v6 + 880);
              v202 = *(v6 + 864);
              v201 = v146;
              v203 = v147;
              v204 = *(v6 + 896);
              v205 = *(v6 + 912);
              v206 = *(v6 + 928);
              v148 = *(v6 + 960);
              v207 = *(v6 + 944);
              *(v6 + 960) = 0u;
              v149 = *(v6 + 976);
              v150 = *(v6 + 992);
              *(v6 + 976) = 0;
              v208 = v148;
              v209 = v149;
              v210 = v150;
              v211 = *(v6 + 1008);
              v212 = *(v6 + 1024);
              v151 = *(v6 + 1056);
              v213 = *(v6 + 1040);
              v214 = v151;
              v152 = *(v6 + 1072);
              v153 = v139;
              v215 = v152;
              do
              {
                v153[136] = v153[68];
                IKString::operator=(v153 + 137, (v153 + 69));
                IKString::operator=(v153 + 140, (v153 + 72));
                v154 = *(v153 + 39);
                *(v153 + 72) = *(v153 + 38);
                *(v153 + 73) = v154;
                v155 = *(v153 + 41);
                *(v153 + 74) = *(v153 + 40);
                *(v153 + 75) = v155;
                v156 = *(v153 + 44);
                *(v153 + 77) = *(v153 + 43);
                *(v153 + 78) = v156;
                v157 = *(v153 + 46);
                *(v153 + 79) = *(v153 + 45);
                *(v153 + 80) = v157;
                v158 = *(v153 + 48);
                *(v153 + 81) = *(v153 + 47);
                v153[152] = v153[84];
                *(v153 + 82) = v158;
                *(v153 + 83) = *(v153 + 49);
                IKString::operator=(v153 + 168, (v153 + 100));
                v159 = *(v153 + 53);
                *(v153 + 86) = *(v153 + 52);
                *(v153 + 87) = v159;
                v160 = *(v153 + 55);
                *(v153 + 88) = *(v153 + 54);
                *(v153 + 342) = *(v153 + 206);
                *(v153 + 89) = v160;
                *(v153 + 90) = *(v153 + 56);
                v153[182] = v153[114];
                v153[184] = v153[116];
                *(v153 + 93) = *(v153 + 59);
                FIK::IKArray<IKString>::operator=(v153 + 94, v153 + 60);
                v161 = *(v153 + 63);
                *(v153 + 96) = *(v153 + 62);
                *(v153 + 97) = v161;
                v153[196] = v153[128];
                *(v153 + 99) = *(v153 + 65);
                *(v153 + 100) = *(v153 + 66);
                *(v153 + 101) = *(v153 + 67);
                v162 = *v153;
                v153 -= 68;
              }

              while (v177 < v162);
              v153[136] = v177;
              IKString::operator=(v153 + 137, &v178);
              IKString::operator=(v153 + 140, &v181);
              *(v153 + 72) = v184;
              *(v153 + 73) = v185;
              v163 = v188;
              v164 = v187;
              *(v153 + 74) = v186;
              v153[152] = v163;
              *(v153 + 75) = v164;
              *(v153 + 77) = v189;
              *(v153 + 78) = v190;
              *(v153 + 79) = v191;
              *(v153 + 80) = v192;
              *(v153 + 81) = v193;
              *(v153 + 82) = v194;
              *(v153 + 83) = v195;
              IKString::operator=(v153 + 168, &v196);
              *(v153 + 342) = v199;
              *(v153 + 86) = v200;
              *(v153 + 87) = v201;
              *(v153 + 88) = v202;
              *(v153 + 89) = v203;
              v165 = v205;
              *(v153 + 90) = v204;
              v153[182] = v165;
              v153[184] = v206;
              *(v153 + 93) = v207;
              v166 = v208;
              v167 = v209;
              v208 = 0uLL;
              *&v209 = 0;
              v168 = *(v153 + 94);
              *(v153 + 94) = v166;
              v216 = v168;
              v169 = *(v153 + 95);
              *(v153 + 95) = v167;
              v217 = v169;
              FIK::IKArray<IKString>::~IKArray(&v216);
              *(v153 + 96) = v210;
              *(v153 + 97) = v211;
              v153[196] = v212;
              *(v153 + 99) = v213;
              *(v153 + 100) = v214;
              *(v153 + 101) = v215;
              result = FIK::IKArray<IKString>::~IKArray(&v208);
              if (v197)
              {
                result = (*(*v198 + 24))(v198, v196, 0, 8);
                v196 = 0;
                v197 = 0;
              }

              if (v182)
              {
                result = (*(*v183 + 24))(v183, v181, 0, 8);
                v181 = 0;
                v182 = 0;
              }

              if (v179)
              {
                result = (*(*v180 + 24))(v180, v178, 0, 8);
              }
            }

            v138 = v140 + 68;
            v139 += 68;
            v6 = v140;
          }

          while (v140 + 68 != a2);
        }
      }

      return result;
    }

    if (!a3)
    {
    }

    v10 = v9 >> 1;
    v11 = &v8[68 * (v9 >> 1)];
    v12 = *v7;
    if (v9 >= 0x81)
    {
      v13 = *v11;
      if (*v11 >= *v6)
      {
        if (v12 >= v13 || (std::swap[abi:nn200100]<FIK::MoCapBone>(v11, v7), *v11 >= *v6))
        {
LABEL_27:
          v19 = (v6 + 544 * v10 - 544);
          v20 = *v19;
          v21 = *v171;
          if (*v19 >= *(v6 + 544))
          {
            if (v21 >= v20 || (std::swap[abi:nn200100]<FIK::MoCapBone>((v6 + 544 * v10 - 544), v171), *v19 >= *(v6 + 544)))
            {
LABEL_40:
              v24 = (v6 + 544 * v10 + 544);
              v25 = *v24;
              v26 = *v170;
              if (*v24 >= *(v6 + 1088))
              {
                if (v26 >= v25 || (std::swap[abi:nn200100]<FIK::MoCapBone>((v6 + 544 * v10 + 544), v170), *v24 >= *(v6 + 1088)))
                {
LABEL_49:
                  v29 = *v11;
                  v30 = *v24;
                  if (*v11 >= *v19)
                  {
                    if (v30 >= v29)
                    {
                      goto LABEL_58;
                    }

                    std::swap[abi:nn200100]<FIK::MoCapBone>(v11, (v6 + 544 * v10 + 544));
                    if (*v11 >= *v19)
                    {
                      goto LABEL_58;
                    }

                    v31 = (v6 + 544 * v10 - 544);
                    v32 = v11;
                  }

                  else
                  {
                    v31 = (v6 + 544 * v10 - 544);
                    if (v30 >= v29)
                    {
                      std::swap[abi:nn200100]<FIK::MoCapBone>(v31, v11);
                      if (*v24 >= *v11)
                      {
LABEL_58:
                        std::swap[abi:nn200100]<FIK::MoCapBone>(v6, v11);
                        a2 = v173;
                        goto LABEL_59;
                      }

                      v31 = v11;
                    }

                    v32 = (v6 + 544 * v10 + 544);
                  }

                  std::swap[abi:nn200100]<FIK::MoCapBone>(v31, v32);
                  goto LABEL_58;
                }

                v27 = (v6 + 1088);
                v28 = (v6 + 544 * v10 + 544);
              }

              else
              {
                v27 = (v6 + 1088);
                if (v26 >= v25)
                {
                  std::swap[abi:nn200100]<FIK::MoCapBone>(v27, (v6 + 544 * v10 + 544));
                  if (*v170 >= *v24)
                  {
                    goto LABEL_49;
                  }

                  v27 = (v6 + 544 * v10 + 544);
                }

                v28 = v170;
              }

              std::swap[abi:nn200100]<FIK::MoCapBone>(v27, v28);
              goto LABEL_49;
            }

            v22 = (v6 + 544);
            v23 = (v6 + 544 * v10 - 544);
          }

          else
          {
            v22 = (v6 + 544);
            if (v21 >= v20)
            {
              std::swap[abi:nn200100]<FIK::MoCapBone>(v22, (v6 + 544 * v10 - 544));
              if (*v171 >= *v19)
              {
                goto LABEL_40;
              }

              v22 = (v6 + 544 * v10 - 544);
            }

            v23 = v171;
          }

          std::swap[abi:nn200100]<FIK::MoCapBone>(v22, v23);
          goto LABEL_40;
        }

        v14 = v6;
        v15 = v11;
      }

      else
      {
        v14 = v6;
        if (v12 >= v13)
        {
          std::swap[abi:nn200100]<FIK::MoCapBone>(v6, v11);
          if (*v7 >= *v11)
          {
            goto LABEL_27;
          }

          v14 = v11;
        }

        v15 = v7;
      }

      std::swap[abi:nn200100]<FIK::MoCapBone>(v14, v15);
      goto LABEL_27;
    }

    v16 = *v6;
    if (*v6 >= *v11)
    {
      if (v12 >= v16)
      {
        goto LABEL_59;
      }

      std::swap[abi:nn200100]<FIK::MoCapBone>(v6, v7);
      if (*v6 >= *v11)
      {
        goto LABEL_59;
      }

      v17 = v11;
      v18 = v6;
    }

    else
    {
      v17 = v11;
      if (v12 >= v16)
      {
        std::swap[abi:nn200100]<FIK::MoCapBone>(v11, v6);
        if (*v7 >= *v6)
        {
          goto LABEL_59;
        }

        v17 = v6;
      }

      v18 = v7;
    }

    std::swap[abi:nn200100]<FIK::MoCapBone>(v17, v18);
LABEL_59:
    --a3;
    if ((a4 & 1) != 0 || *(v6 - 544) < *v6)
    {
      v174 = *v6;
      IKString::IKString(&v178, (v6 + 8), *(v6 + 24));
      IKString::IKString(&v181, (v6 + 32), *(v6 + 48));
      v33 = *(v6 + 80);
      v184 = *(v6 + 64);
      v185 = v33;
      v34 = *(v6 + 96);
      v35 = *(v6 + 112);
      v188 = *(v6 + 128);
      v186 = v34;
      v187 = v35;
      v36 = *(v6 + 160);
      v189 = *(v6 + 144);
      v190 = v36;
      v37 = *(v6 + 192);
      v191 = *(v6 + 176);
      v192 = v37;
      v38 = *(v6 + 224);
      v193 = *(v6 + 208);
      v194 = v38;
      v195 = *(v6 + 240);
      IKString::IKString(&v196, (v6 + 256), *(v6 + 272));
      v39 = 0;
      v199 = *(v6 + 280);
      v200 = *(v6 + 288);
      v40 = *(v6 + 304);
      v41 = *(v6 + 336);
      v202 = *(v6 + 320);
      v201 = v40;
      v203 = v41;
      v42 = *(v6 + 352);
      v205 = *(v6 + 368);
      v204 = v42;
      v206 = *(v6 + 384);
      v43 = *(v6 + 416);
      v207 = *(v6 + 400);
      *(v6 + 416) = 0;
      *(v6 + 424) = 0;
      v44 = *(v6 + 432);
      v45 = *(v6 + 448);
      *(v6 + 432) = 0;
      v208 = v43;
      v209 = v44;
      v210 = v45;
      v211 = *(v6 + 464);
      v212 = *(v6 + 480);
      v46 = *(v6 + 512);
      v213 = *(v6 + 496);
      v214 = v46;
      v215 = *(v6 + 528);
      do
      {
        v47 = *(v6 + v39 + 544);
        v39 += 544;
      }

      while (v47 < v174);
      v48 = v6 + v39;
      if (v39 == 544)
      {
        a2 = v173;
        do
        {
          if (v48 >= a2)
          {
            break;
          }

          a2 -= 68;
        }

        while (*a2 >= v174);
      }

      else
      {
        do
        {
          a2 -= 68;
        }

        while (*a2 >= v174);
      }

      v8 = (v6 + v39);
      if (v48 < a2)
      {
        v49 = a2;
        do
        {
          std::swap[abi:nn200100]<FIK::MoCapBone>(v8, v49);
          do
          {
            v50 = *(v8 + 136);
            v8 += 68;
          }

          while (v50 < v174);
          do
          {
            v49 -= 68;
          }

          while (*v49 >= v174);
        }

        while (v8 < v49);
      }

      v51 = v8 - 68;
      if (v8 - 68 != v6)
      {
        *v6 = *v51;
        IKString::operator=((v6 + 8), (v8 - 67));
        IKString::operator=((v6 + 32), (v8 - 64));
        *(v6 + 64) = *(v8 - 30);
        *(v6 + 80) = *(v8 - 29);
        v53 = *(v8 - 28);
        v52 = *(v8 - 27);
        *(v6 + 128) = *(v8 - 52);
        *(v6 + 96) = v53;
        *(v6 + 112) = v52;
        *(v6 + 144) = *(v8 - 25);
        *(v6 + 160) = *(v8 - 24);
        *(v6 + 176) = *(v8 - 23);
        *(v6 + 192) = *(v8 - 22);
        *(v6 + 208) = *(v8 - 21);
        *(v6 + 224) = *(v8 - 20);
        *(v6 + 240) = *(v8 - 19);
        IKString::operator=((v6 + 256), (v8 - 36));
        *(v6 + 280) = *(v8 - 66);
        *(v6 + 288) = *(v8 - 16);
        *(v6 + 304) = *(v8 - 15);
        *(v6 + 320) = *(v8 - 14);
        *(v6 + 336) = *(v8 - 13);
        v54 = *(v8 - 22);
        *(v6 + 352) = *(v8 - 12);
        *(v6 + 368) = v54;
        *(v6 + 384) = *(v8 - 20);
        *(v6 + 400) = *(v8 - 9);
        FIK::IKArray<IKString>::operator=((v6 + 416), v8 - 8);
        *(v6 + 448) = *(v8 - 6);
        *(v6 + 464) = *(v8 - 5);
        *(v6 + 480) = *(v8 - 8);
        *(v6 + 496) = *(v8 - 3);
        *(v6 + 512) = *(v8 - 2);
        *(v6 + 528) = *(v8 - 1);
      }

      *v51 = v174;
      IKString::operator=(v8 - 67, &v178);
      IKString::operator=(v8 - 64, &v181);
      *(v8 - 30) = v184;
      *(v8 - 29) = v185;
      v55 = v8 - 56;
      v57 = v186;
      v56 = v187;
      v55[4] = v188;
      *v55 = v57;
      *(v55 + 1) = v56;
      *(v8 - 25) = v189;
      *(v8 - 24) = v190;
      *(v8 - 23) = v191;
      *(v8 - 22) = v192;
      *(v8 - 21) = v193;
      *(v8 - 20) = v194;
      *(v8 - 19) = v195;
      IKString::operator=(v8 - 36, &v196);
      *(v8 - 66) = v199;
      *(v8 - 16) = v200;
      *(v8 - 15) = v201;
      *(v8 - 14) = v202;
      *(v8 - 13) = v203;
      v58 = v205;
      *(v8 - 12) = v204;
      *(v8 - 22) = v58;
      *(v8 - 20) = v206;
      *(v8 - 9) = v207;
      v59 = v208;
      v208 = 0uLL;
      v60 = *(v8 - 16);
      *(v8 - 16) = v59;
      *&v216 = v60;
      v61 = *(v8 - 15);
      *(v8 - 15) = *(&v59 + 1);
      v62 = v209;
      *&v209 = 0;
      *(&v216 + 1) = v61;
      v63 = *(v8 - 7);
      *(v8 - 7) = v62;
      v217 = v63;
      FIK::IKArray<IKString>::~IKArray(&v216);
      *(v8 - 6) = v210;
      *(v8 - 5) = v211;
      *(v8 - 8) = v212;
      *(v8 - 3) = v213;
      *(v8 - 2) = v214;
      *(v8 - 1) = v215;
      FIK::IKArray<IKString>::~IKArray(&v208);
      if (v197)
      {
        (*(*v198 + 24))(v198, v196, 0, 8);
        v196 = 0;
        v197 = 0;
      }

      if (v182)
      {
        (*(*v183 + 24))(v183, v181, 0, 8);
        v181 = 0;
        v182 = 0;
      }

      if (v179)
      {
        (*(*v180 + 24))(v180, v178, 0, 8);
      }

      v64 = v48 >= a2;
      a2 = v173;
      if (!v64)
      {
        goto LABEL_87;
      }

      if (result)
      {
        a2 = v8 - 68;
        if (!v65)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v65)
      {
LABEL_87:
        goto LABEL_88;
      }
    }

    else
    {
      v175 = *v6;
      IKString::IKString(&v178, (v6 + 8), *(v6 + 24));
      IKString::IKString(&v181, (v6 + 32), *(v6 + 48));
      v66 = *(v6 + 80);
      v184 = *(v6 + 64);
      v185 = v66;
      v67 = *(v6 + 96);
      v68 = *(v6 + 112);
      v188 = *(v6 + 128);
      v186 = v67;
      v187 = v68;
      v69 = *(v6 + 160);
      v189 = *(v6 + 144);
      v190 = v69;
      v70 = *(v6 + 192);
      v191 = *(v6 + 176);
      v192 = v70;
      v71 = *(v6 + 224);
      v193 = *(v6 + 208);
      v194 = v71;
      v195 = *(v6 + 240);
      IKString::IKString(&v196, (v6 + 256), *(v6 + 272));
      v199 = *(v6 + 280);
      v72 = *(v6 + 304);
      v200 = *(v6 + 288);
      v73 = *(v6 + 336);
      v202 = *(v6 + 320);
      v201 = v72;
      v203 = v73;
      v74 = *(v6 + 352);
      v205 = *(v6 + 368);
      v204 = v74;
      v206 = *(v6 + 384);
      v75 = *(v6 + 416);
      v207 = *(v6 + 400);
      *(v6 + 416) = 0;
      *(v6 + 424) = 0;
      v76 = *(v6 + 432);
      v77 = *(v6 + 448);
      *(v6 + 432) = 0;
      v208 = v75;
      v209 = v76;
      v210 = v77;
      v211 = *(v6 + 464);
      v212 = *(v6 + 480);
      v78 = *(v6 + 512);
      v213 = *(v6 + 496);
      v214 = v78;
      v215 = *(v6 + 528);
      if (v175 >= *v7)
      {
        v81 = (v6 + 544);
        do
        {
          v8 = v81;
          if (v81 >= a2)
          {
            break;
          }

          v82 = *v81;
          v81 += 68;
        }

        while (v175 >= v82);
      }

      else
      {
        v79 = v6;
        do
        {
          v8 = (v79 + 544);
          v80 = *(v79 + 544);
          v79 += 544;
        }

        while (v175 >= v80);
      }

      v83 = a2;
      if (v8 < a2)
      {
        v83 = a2;
        do
        {
          v83 -= 68;
        }

        while (v175 < *v83);
      }

      while (v8 < v83)
      {
        std::swap[abi:nn200100]<FIK::MoCapBone>(v8, v83);
        do
        {
          v84 = *(v8 + 136);
          v8 += 68;
        }

        while (v175 >= v84);
        do
        {
          v83 -= 68;
        }

        while (v175 < *v83);
      }

      v85 = v8 - 68;
      if (v8 - 68 != v6)
      {
        *v6 = *v85;
        IKString::operator=((v6 + 8), (v8 - 67));
        IKString::operator=((v6 + 32), (v8 - 64));
        *(v6 + 64) = *(v8 - 30);
        *(v6 + 80) = *(v8 - 29);
        v87 = *(v8 - 28);
        v86 = *(v8 - 27);
        *(v6 + 128) = *(v8 - 52);
        *(v6 + 96) = v87;
        *(v6 + 112) = v86;
        *(v6 + 144) = *(v8 - 25);
        *(v6 + 160) = *(v8 - 24);
        *(v6 + 176) = *(v8 - 23);
        *(v6 + 192) = *(v8 - 22);
        *(v6 + 208) = *(v8 - 21);
        *(v6 + 224) = *(v8 - 20);
        *(v6 + 240) = *(v8 - 19);
        IKString::operator=((v6 + 256), (v8 - 36));
        *(v6 + 280) = *(v8 - 66);
        *(v6 + 288) = *(v8 - 16);
        *(v6 + 304) = *(v8 - 15);
        *(v6 + 320) = *(v8 - 14);
        *(v6 + 336) = *(v8 - 13);
        v88 = *(v8 - 22);
        *(v6 + 352) = *(v8 - 12);
        *(v6 + 368) = v88;
        *(v6 + 384) = *(v8 - 20);
        *(v6 + 400) = *(v8 - 9);
        FIK::IKArray<IKString>::operator=((v6 + 416), v8 - 8);
        *(v6 + 448) = *(v8 - 6);
        *(v6 + 464) = *(v8 - 5);
        *(v6 + 480) = *(v8 - 8);
        *(v6 + 496) = *(v8 - 3);
        *(v6 + 512) = *(v8 - 2);
        *(v6 + 528) = *(v8 - 1);
      }

      *v85 = v175;
      IKString::operator=(v8 - 67, &v178);
      IKString::operator=(v8 - 64, &v181);
      *(v8 - 30) = v184;
      *(v8 - 29) = v185;
      v89 = v8 - 56;
      v91 = v186;
      v90 = v187;
      v89[4] = v188;
      *v89 = v91;
      *(v89 + 1) = v90;
      *(v8 - 25) = v189;
      *(v8 - 24) = v190;
      *(v8 - 23) = v191;
      *(v8 - 22) = v192;
      *(v8 - 21) = v193;
      *(v8 - 20) = v194;
      *(v8 - 19) = v195;
      IKString::operator=(v8 - 36, &v196);
      *(v8 - 66) = v199;
      *(v8 - 16) = v200;
      *(v8 - 15) = v201;
      *(v8 - 14) = v202;
      *(v8 - 13) = v203;
      v92 = v205;
      *(v8 - 12) = v204;
      *(v8 - 22) = v92;
      *(v8 - 20) = v206;
      *(v8 - 9) = v207;
      v93 = v208;
      v208 = 0uLL;
      v94 = *(v8 - 16);
      *(v8 - 16) = v93;
      *&v216 = v94;
      v95 = *(v8 - 15);
      *(v8 - 15) = *(&v93 + 1);
      v96 = v209;
      *&v209 = 0;
      *(&v216 + 1) = v95;
      v97 = *(v8 - 7);
      *(v8 - 7) = v96;
      v217 = v97;
      FIK::IKArray<IKString>::~IKArray(&v216);
      *(v8 - 6) = v210;
      *(v8 - 5) = v211;
      *(v8 - 8) = v212;
      *(v8 - 3) = v213;
      *(v8 - 2) = v214;
      *(v8 - 1) = v215;
      result = FIK::IKArray<IKString>::~IKArray(&v208);
      if (v197)
      {
        result = (*(*v198 + 24))(v198, v196, 0, 8);
        v196 = 0;
        v197 = 0;
      }

      if (v182)
      {
        result = (*(*v183 + 24))(v183, v181, 0, 8);
        v181 = 0;
        v182 = 0;
      }

      if (v179)
      {
        result = (*(*v180 + 24))(v180, v178, 0, 8);
      }

LABEL_88:
      a4 = 0;
    }
  }

  v98 = v8 + 136;
  if (*v7 < *(v8 + 408))
  {
    result = std::swap[abi:nn200100]<FIK::MoCapBone>(v8 + 204, v7);
    if (*(v8 + 408) < *v98)
    {
      result = std::swap[abi:nn200100]<FIK::MoCapBone>(v8 + 136, v8 + 204);
      if (*v98 < *(v8 + 136))
      {
        result = std::swap[abi:nn200100]<FIK::MoCapBone>(v8 + 68, v8 + 136);
        if (*(v8 + 136) < *v8)
        {
          v99 = v8;
          v100 = v8 + 68;
          return std::swap[abi:nn200100]<FIK::MoCapBone>(v99, v100);
        }
      }
    }
  }

  return result;
}