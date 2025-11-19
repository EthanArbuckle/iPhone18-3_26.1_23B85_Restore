void physx::Dy::UpdateArticTask::~UpdateArticTask(physx::Dy::UpdateArticTask *this)
{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
}

{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
  JUMPOUT(0x1E6906520);
}

uint64_t physx::Dy::UpdateArticTask::runInternal(uint64_t this)
{
  v1 = *(this + 48);
  v2 = *(this + 52);
  if (v2 > v1)
  {
    v3 = *(this + 56);
    v4 = *(this + 40);
    v5 = v2 - v1;
    v6 = 96 * v1;
    do
    {
      v7 = *(v4 + 12288);
      v8 = physx::Dy::ArticulationPImpl::sUpdateBodiesTGS[*(*(v7 + v6) + 40)];
      if (v8)
      {
        this = v8(v7 + v6, v3);
      }

      v6 += 96;
      --v5;
    }

    while (v5);
  }

  return this;
}

void physx::Dy::SetupDescsTask::~SetupDescsTask(physx::Dy::SetupDescsTask *this)
{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
}

{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
  JUMPOUT(0x1E6906520);
}

void physx::Dy::SetupDescsTask::runInternal(physx::Dy::SetupDescsTask *this)
{
  v1 = this;
  v62[1] = *MEMORY[0x1E69E9840];
  v2 = *(this + 11);
  v4 = *(this + 5);
  v3 = *(this + 6);
  v57 = *(this + 18);
  v5 = *v4;
  v6 = *(v3 + 64);
  v60 = v2;
  v54 = *(v3 + 40);
  if (v54)
  {
    v50 = *(this + 6);
    v51 = *v4;
    v7 = 0;
    v53 = *(v3 + 32);
    v8 = v2 + 256;
    v9 = *(this + 7);
    v56 = *(this + 8);
    v59 = v2 + 256;
    while (1)
    {
      v55 = v7;
      for (i = *(*(v9 + 344) + 44 * *(v53 + 4 * v7) + 24); i != -1; i = *(v12 + 16 * (i % v11) + 8))
      {
        v11 = *(v9 + 304);
        v12 = *(*(v9 + 280) + 8 * (i / v11));
        v13 = *(*(*(v9 + 176) + 8 * (i / *(v9 + 200))) + 8 * (i % *(v9 + 200)));
        v14 = *(v2 + 576);
        v15 = 2 * i;
        v16 = *(*(**(v9 + 832) + 8 * (v15 / *(*(v9 + 832) + 24))) + 4 * (v15 % *(*(v9 + 832) + 24)));
        if (v16 >= 0xFFFFFF80)
        {
          *v6 = v8;
          *(v6 + 20) = 0;
LABEL_18:
          *(v6 + 16) = -1;
          goto LABEL_19;
        }

        v17 = *(v9 + 248) + 32 * (v16 >> 7);
        if (*(v17 + 5) != 1)
        {
          v23 = *(*(v9 + 264) + 4 * (v16 >> 7));
          if ((*(v17 + 4) & 4) == 0)
          {
            v23 = *(v56 + 4 * v23) + v57;
          }

          v24 = v23 + 1;
          *v6 = v14 + (v24 << 6);
          *(v6 + 20) = v24;
          goto LABEL_18;
        }

        v18 = *(v17 + 24);
        v62[0] = 0;
        v61 = 0;
        v19 = (v16 >> 1) & 0x3F;
        v58 = v12;
        v20 = v14;
        (*(*v18 + 376))(v18, v19, v62, &v61);
        v14 = v20;
        v12 = v58;
        v8 = v59;
        v2 = v60;
        if (v61 == 2)
        {
          v21 = v18;
        }

        else
        {
          v21 = v59;
        }

        if (v61 == 2)
        {
          v22 = v19;
        }

        else
        {
          v22 = -1;
        }

        *v6 = v21;
        *(v6 + 16) = v22;
        *(v6 + 20) = 0;
LABEL_19:
        v25 = *(*(**(v9 + 832) + 8 * ((v15 | 1) / *(*(v9 + 832) + 24))) + 4 * ((v15 | 1) % *(*(v9 + 832) + 24)));
        if (v25 >= 0xFFFFFF80)
        {
          *(v6 + 8) = v8;
          *(v6 + 24) = 0;
LABEL_32:
          *(v6 + 18) = -1;
          goto LABEL_33;
        }

        v26 = *(v9 + 248) + 32 * (v25 >> 7);
        if (*(v26 + 5) != 1)
        {
          v32 = *(*(v9 + 264) + 4 * (v25 >> 7));
          if ((*(v26 + 4) & 4) == 0)
          {
            v32 = *(v56 + 4 * v32) + v57;
          }

          v33 = v32 + 1;
          *(v6 + 8) = v14 + (v33 << 6);
          *(v6 + 24) = v33;
          goto LABEL_32;
        }

        v27 = *(v26 + 24);
        v62[0] = 0;
        v61 = 0;
        v28 = (v25 >> 1) & 0x3F;
        v29 = v12;
        (*(*v27 + 376))(v27, v28, v62, &v61);
        v12 = v29;
        v8 = v59;
        v2 = v60;
        if (v61 == 2)
        {
          v30 = v27;
        }

        else
        {
          v30 = v59;
        }

        if (v61 == 2)
        {
          v31 = v28;
        }

        else
        {
          v31 = -1;
        }

        *(v6 + 8) = v30;
        *(v6 + 18) = v31;
        *(v6 + 24) = 0;
LABEL_33:
        *(v6 + 32) = v13;
        *(v6 + 30) = 2;
        v6 += 48;
      }

      v7 = v55 + 1;
      if (v55 + 1 == v54)
      {
        v3 = v50;
        v5 = v51;
        v34 = *(v50 + 64);
        v1 = this;
        goto LABEL_37;
      }
    }
  }

  v34 = *(v3 + 64);
LABEL_37:
  physx::shdfnd::sort<physx::PxSolverConstraintDesc,physx::Dy::ConstraintLess,physx::shdfnd::ReflectionAllocator<physx::PxSolverConstraintDesc>>(v34, -1431655765 * ((v6 - v34) >> 4), &v61, v62, 32);
  if (*(v4 + 4))
  {
    v35 = 0;
    v36 = *(v3 + 24);
    v37 = v6 + 16;
    v38 = 24;
    do
    {
      v39 = v36 + v38;
      v40 = *(v60 + 576);
      v62[0] = v57;
      v41 = *(v36 + v38 - 8);
      v42 = v60 + 256;
      if (v41 != 3)
      {
        if (v41 == 2)
        {
          *(v37 - 16) = *(v39 - 24) & 0xFFFFFFFFFFFFFFC0;
          *v37 = *(v39 - 24) & 0x3F;
          *(v37 + 4) = 0;
          goto LABEL_47;
        }

        v42 = v40 + ((*(v39 - 24) + *(v62 + *(v36 + v38 - 8)) + 1) << 6);
      }

      *(v37 - 16) = v42;
      v43 = *(v39 - 8);
      if (v43 == 3)
      {
        v44 = 0;
      }

      else
      {
        v44 = *(v39 - 24) + *(v62 + v43) + 1;
      }

      *(v37 + 4) = v44;
      *v37 = -1;
LABEL_47:
      v45 = *(v36 + v38 - 7);
      v46 = v60 + 256;
      if (v45 == 3)
      {
        goto LABEL_51;
      }

      if (v45 != 2)
      {
        v46 = v40 + ((*(v36 + v38 - 16) + *(v62 + *(v36 + v38 - 7)) + 1) << 6);
LABEL_51:
        *(v37 - 8) = v46;
        v48 = *(v36 + v38 - 7);
        if (v48 == 3)
        {
          v49 = 0;
        }

        else
        {
          v49 = *(v36 + v38 - 16) + *(v62 + v48) + 1;
        }

        *(v37 + 8) = v49;
        *(v37 + 2) = -1;
        goto LABEL_55;
      }

      v47 = v36 + v38;
      *(v37 - 8) = *(v47 - 16) & 0xFFFFFFFFFFFFFFC0;
      *(v37 + 2) = *(v47 - 16) & 0x3F;
      *(v37 + 8) = 0;
LABEL_55:
      v36 = *(v3 + 24);
      *(v37 + 16) = *(v36 + v38);
      *(v37 + 14) = 1;
      ++v35;
      v38 += 32;
      v37 += 48;
      v6 += 48;
    }

    while (v35 < *(v4 + 4));
  }

  *(v5 + 12024) = -1431655765 * ((v6 - *(v3 + 64)) >> 4);
  *(*(v1 + 5) + 152) = *(**(v1 + 5) + 12024);
}

void physx::Dy::PreIntegrateTask::~PreIntegrateTask(physx::Dy::PreIntegrateTask *this)
{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
}

{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
  JUMPOUT(0x1E6906520);
}

void physx::Dy::PreIntegrateTask::runInternal(physx::Dy::PreIntegrateTask *this)
{
  v2 = *(this + 22);
  if (v2 >= 0x201)
  {
    v13 = 0;
    for (i = 0; i < v2; i += 512)
    {
      if (v2 + v13 >= 0x200)
      {
        v15 = 512;
      }

      else
      {
        v15 = v2 + v13;
      }

      v16 = physx::Cm::FlushPool::allocate(*(*(this + 16) + 776), 136, 0x10u);
      v17 = *(this + 5) + 8 * i;
      v18 = *(this + 6) + 8 * i;
      v19 = *(this + 7) + (i << 6);
      v20 = *(this + 12);
      v21 = *(this + 26);
      v22 = *(this + 16);
      v23 = *(v22 + 800);
      v24 = *(this + 8) + (i << 6);
      v25 = *(this + 9) + 48 * i;
      v26 = *(this + 7);
      v27 = *(this + 10) + 4 * i;
      *(v16 + 16) = 0;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0;
      *(v16 + 8) = v23;
      v28 = &unk_1F5D1E128;
      *v16 = &unk_1F5D1E128;
      *(v16 + 40) = v17;
      *(v16 + 48) = v18;
      *(v16 + 56) = v19;
      *(v16 + 64) = v24;
      *(v16 + 72) = v25;
      *(v16 + 80) = v27;
      *(v16 + 88) = v15;
      *(v16 + 96) = v20;
      *(v16 + 104) = v21;
      *(v16 + 112) = v26;
      *(v16 + 128) = v22;
      v29 = *(this + 3);
      *(v16 + 32) = 1;
      *(v16 + 24) = v29;
      if (v29)
      {
        (*(*v29 + 32))(v29);
        *(v16 + 16) = *(*(v16 + 24) + 16);
        v28 = *v16;
      }

      v28[5](v16);
      v2 = *(this + 22);
      v13 -= 512;
    }
  }

  else
  {
    v30 = 0;
    physx::Dy::DynamicsTGSContext::preIntegrateBodies(*(this + 5), *(this + 6), *(this + 7), *(this + 8), *(this + 9), *(this + 10), v2, *(this + 12), *(this + 26), &v30 + 1, &v30);
    v3 = *(this + 14);
    v4 = HIDWORD(v30);
    do
    {
      v5 = *v3;
      if (*v3 <= v4)
      {
        v6 = v4;
      }

      else
      {
        v6 = *v3;
      }

      v7 = *v3;
      atomic_compare_exchange_strong(v3, &v7, v6);
    }

    while (v7 != v5);
    v8 = *(this + 15);
    v9 = v30;
    do
    {
      v10 = *v8;
      if (*v8 <= v9)
      {
        v11 = v9;
      }

      else
      {
        v11 = *v8;
      }

      v12 = *v8;
      atomic_compare_exchange_strong(v8, &v12, v11);
    }

    while (v12 != v10);
  }
}

void physx::Dy::PreIntegrateParallelTask::~PreIntegrateParallelTask(physx::Dy::PreIntegrateParallelTask *this)
{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
}

{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
  JUMPOUT(0x1E6906520);
}

void physx::Dy::PreIntegrateParallelTask::runInternal(physx::Dy::PreIntegrateParallelTask *this)
{
  v13 = 0;
  v12 = 0;
  physx::Dy::DynamicsTGSContext::preIntegrateBodies(*(this + 5), *(this + 6), *(this + 7), *(this + 8), *(this + 9), *(this + 10), *(this + 22), *(this + 12), *(this + 26), &v13, &v12);
  v2 = *(this + 14);
  v3 = v13;
  do
  {
    v4 = *v2;
    if (*v2 <= v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = *v2;
    }

    v6 = *v2;
    atomic_compare_exchange_strong(v2, &v6, v5);
  }

  while (v6 != v4);
  v7 = *(this + 15);
  v8 = v12;
  do
  {
    v9 = *v7;
    if (*v7 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = *v7;
    }

    v11 = *v7;
    atomic_compare_exchange_strong(v7, &v11, v10);
  }

  while (v11 != v9);
}

void physx::Dy::SetupArticulationTask::~SetupArticulationTask(physx::Dy::SetupArticulationTask *this)
{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
}

{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
  JUMPOUT(0x1E6906520);
}

uint64_t physx::Dy::SetupArticulationTask::runInternal(uint64_t this)
{
  v1 = *(this + 40);
  v2 = v1[3];
  v3 = v2 & 0x7FFFFFFF;
  v33 = this;
  if ((v2 & 0x7FFFFFFF) != 0)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v35 = *(this + 48);
    v36 = *(this + 80);
    v8 = *(this + 56);
    v9 = *(*v1 + 11984);
    v37 = v2 & 0x7FFFFFFF;
    v34 = *(this + 24);
    do
    {
      v38 = v5 + 32;
      if (v3 >= v5 + 32)
      {
        v10 = (v5 + 32);
      }

      else
      {
        v10 = v3;
      }

      v11 = v4;
      v12 = v5;
      do
      {
        v13 = (*(*v1 + 12288) + v11);
        v14 = *(v9 + 8 * v12);
        v15 = v14[8];
        v17 = v14[5];
        v16 = v14[6];
        v13[4] = v14[7];
        v13[5] = v15;
        v13[2] = v17;
        v13[3] = v16;
        v18 = v14[4];
        *v13 = v14[3];
        v13[1] = v18;
        v19 = *(*(*(v9 + 8 * v12) + 112) + 12);
        if (v19 >> 8 > v6)
        {
          v6 = v19 >> 8;
        }

        if (*(*(*(v9 + 8 * v12) + 112) + 12) > v7)
        {
          v7 = *(*(*(v9 + 8 * v12) + 112) + 12);
        }

        ++v12;
        v11 += 96;
      }

      while (v12 < v10);
      v20 = *v1;
      v21 = physx::Cm::FlushPool::allocate(*(v36 + 776), 80, 0x10u);
      v22 = *(v20 + 12288) + 96 * v5;
      v23 = *(v36 + 800);
      *(v21 + 16) = 0;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0;
      v24 = &unk_1F5D1DEF8;
      *v21 = &unk_1F5D1DEF8;
      *(v21 + 8) = v23;
      *(v21 + 40) = v36;
      *(v21 + 48) = v22;
      *(v21 + 56) = v10 - v5;
      *(v21 + 60) = *v35;
      *(v21 + 68) = *(v35 + 8);
      *(v21 + 72) = v8;
      *(v21 + 32) = 1;
      *(v21 + 24) = v34;
      if (v34)
      {
        (*(*v34 + 32))(v34);
        *(v21 + 16) = *(*(v21 + 24) + 16);
        v24 = *v21;
      }

      v5 += 32;
      this = v24[5](v21);
      v4 += 3072;
      v3 = v37;
    }

    while (v38 < v37);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v25 = *(v33 + 64);
  do
  {
    v26 = *v25;
    if (*v25 <= v7)
    {
      v27 = v7;
    }

    else
    {
      v27 = *v25;
    }

    v28 = *v25;
    atomic_compare_exchange_strong(v25, &v28, v27);
  }

  while (v28 != v26);
  v29 = *(v33 + 72);
  do
  {
    v30 = *v29;
    if (*v29 <= v6)
    {
      v31 = v6;
    }

    else
    {
      v31 = *v29;
    }

    v32 = *v29;
    atomic_compare_exchange_strong(v29, &v32, v31);
  }

  while (v32 != v30);
  return this;
}

void physx::Dy::SetStepperTask::~SetStepperTask(physx::Dy::SetStepperTask *this)
{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
}

{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
  JUMPOUT(0x1E6906520);
}

uint64_t physx::Dy::SetStepperTask::release(physx::Dy::SetStepperTask *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  v3 = *(**(this + 7) + 40);

  return v3();
}

float physx::Dy::SetStepperTask::runInternal(physx::Dy::SetStepperTask *this)
{
  v1 = *(this + 5);
  v2 = *(*(this + 6) + 88);
  v3 = *(v1 + 148);
  if (v3 >= 4)
  {
    v4 = 4;
  }

  else
  {
    v4 = *(v1 + 148);
  }

  v5 = *(v1 + 144) + v3 - v4;
  *(v1 + 144) = v5;
  *(v1 + 148) = v4;
  result = v2 / v5;
  *(v1 + 156) = result;
  *(v1 + 160) = 1.0 / result;
  return result;
}

void physx::Dy::SetupArticulationInternalConstraintsTask::~SetupArticulationInternalConstraintsTask(physx::Dy::SetupArticulationInternalConstraintsTask *this)
{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
}

{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
  JUMPOUT(0x1E6906520);
}

uint64_t physx::Dy::SetupArticulationInternalConstraintsTask::runInternal(physx::Dy::SetupArticulationInternalConstraintsTask *this)
{
  v32 = *MEMORY[0x1E69E9840];
  v1 = *(this + 5);
  v2 = *(this + 12);
  v3 = *(v1 + 160);
  v4 = *(this + 7);
  v5 = *(this + 8);
  v6 = *(v1 + 152);
  v7 = *(*v1 + 11984);
  v8 = *(v1 + 12) & 0x7FFFFFFF;
  v9 = physx::shdfnd::SListImpl::pop(*(v5 + 432));
  if (!v9)
  {
    v10 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v11 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Dy::ThreadContext>::getName() [T = physx::Dy::ThreadContext]";
    }

    else
    {
      v11 = "<allocation names disabled>";
    }

    v12 = (*(*(v10 + 24) + 16))(v10 + 24, 12343, v11, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevel/common/include/utils/PxcThreadCoherentCache.h", 82);
    if (v12)
    {
      v9 = (v12 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v9 - 8) = v9 - v12;
    }

    else
    {
      v9 = 0;
    }

    physx::Dy::ThreadContext::ThreadContext(v9, *(v5 + 440));
  }

  v29 = v5;
  *(v9 + 11880) = 0;
  *(v9 + 11888) = 0;
  if (v8)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = v4 + 48 * v6;
    v17 = 96 * v8;
    do
    {
      v18 = *(*v1 + 12288) + v13;
      v19 = *v7;
      v20 = *(*v7 + 128);
      v22 = *(*v7 + 80);
      v21 = *(*v7 + 96);
      *(v18 + 64) = *(*v7 + 112);
      *(v18 + 80) = v20;
      *(v18 + 32) = v22;
      *(v18 + 48) = v21;
      v23 = *(v19 + 64);
      *v18 = *(v19 + 48);
      *(v18 + 16) = v23;
      v30 = 0;
      v24 = v14;
      v25 = physx::Dy::ArticulationPImpl::sSetupInternalConstraintsTGS[*(*v18 + 40)];
      if (v25)
      {
        v26 = v25(v18, v9 + 11872, v16 + 48 * v24, &v30, *v1 + 11848, v31, *(v1 + 156), v3, v2);
      }

      else
      {
        v26 = 0;
      }

      *(v18 + 93) = v26;
      v15 += v26;
      v14 = v24 + 64;
      v13 += 96;
      ++v7;
    }

    while (v17 != v13);
  }

  else
  {
    v15 = 0;
  }

  v27 = *(v29 + 432);
  pthread_mutex_lock((v27 + 8));
  *v9 = *v27;
  *v27 = v9;
  result = pthread_mutex_unlock((v27 + 8));
  *(*v1 + 12024) += v15;
  return result;
}

void physx::Dy::PartitionTask::~PartitionTask(physx::Dy::PartitionTask *this)
{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
}

{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
  JUMPOUT(0x1E6906520);
}

uint64_t physx::Dy::PartitionTask::runInternal(physx::Dy::PartitionTask *this)
{
  v2 = *(this + 8);
  v3 = *(v2 + 12288);
  v4 = *(this + 5);
  v5 = *(v4 + 12);
  if ((v5 & 0x7FFFFFFF) != 0 && (v5 & 0x7FFFFFFE) != 0)
  {
    v6 = *(v4 + 152);
    v7 = v6 + *(v3 + 93);
    v8 = *(this + 6);
    v9 = v6 + 64;
    v10 = 1;
    do
    {
      v6 += 64;
      v11 = *(v3 + 96 * v10 + 93);
      if (v6 < v6 + v11)
      {
        v12 = (v8 + 48 * v9);
        do
        {
          v13 = (v8 + 48 * v7++);
          v14 = *v12;
          v15 = v12[2];
          v13[1] = v12[1];
          v13[2] = v15;
          *v13 = v14;
          v12 += 3;
          --v11;
        }

        while (v11);
        v4 = *(this + 5);
      }

      ++v10;
      v9 += 64;
    }

    while (v10 < (*(v4 + 12) & 0x7FFFFFFFu));
    v2 = *(this + 8);
  }

  v16 = *(v2 + 12024);
  *(v2 + 11928) = 0;
  LODWORD(v58) = 0;
  physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::resize(v2 + 11920, 1u, &v58);
  v17 = *(this + 8);
  **(v17 + 11920) = 0;
  v58 = *(this + 7);
  v60 = 64;
  v61 = v3;
  v18 = *(this + 5);
  v63 = *(this + 6);
  v62 = *(v17 + 12296);
  v59 = *(v18 + 8);
  v64 = v16;
  v65 = *(v18 + 96);
  v67 = 0;
  v66 = 0;
  v68 = v17 + 11920;
  v69 = v17 + 11952;
  v70 = 0;
  result = physx::Dy::partitionContactConstraints(&v58);
  v20 = *(this + 8);
  *(v20 + 12232) = result;
  v21 = v66;
  v22 = HIDWORD(v66);
  *(v20 + 11896) = v66;
  *(v20 + 11904) = v22;
  v23 = v67;
  *(v20 + 11908) = v67;
  v24 = *(v20 + 12024);
  v25 = 0;
  if (v21)
  {
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = *(v20 + 11920);
    v30 = *v29;
    if (v70)
    {
      v31 = 1;
    }

    else
    {
      v31 = 4;
    }

    v32 = *(this + 5);
    v33 = *(v32 + 112);
    v34 = *(v32 + 96);
    while (1)
    {
      if (v30 - v26 >= v31)
      {
        v35 = v31;
      }

      else
      {
        v35 = v30 - v26;
      }

      if (v30 == v26)
      {
        v36 = 0;
        goto LABEL_51;
      }

      v37 = v34 + 48 * v26;
      v38 = *(v37 + 16);
      v39 = *(v37 + 18);
      v40 = *(v37 + 30);
      if (v38 == -1 && v39 == 0xFFFF)
      {
        if (v40 == 1)
        {
          v43 = 1;
          LOWORD(v42) = 1;
          if (v28 == -1 || v35 < 2)
          {
            goto LABEL_50;
          }

LABEL_37:
          LOWORD(v42) = v35;
          if (v35 <= 2u)
          {
            LOWORD(v42) = 2;
          }

          v46 = v26 + 1;
          v47 = v35 - 1;
          v48 = -1;
          while (1)
          {
            v49 = v34 + 48 * v46;
            if (v40 != *(v49 + 30))
            {
              break;
            }

            v50 = *(v49 + 16);
            v51 = *(v49 + 18);
            if (v50 != -1 || v51 != 0xFFFF)
            {
              break;
            }

            --v48;
            ++v46;
            if (!--v47)
            {
              goto LABEL_49;
            }
          }

          v42 = -v48;
          goto LABEL_49;
        }

        if (v40 == 2 && v28 != -1 && v35 > 1)
        {
          goto LABEL_37;
        }
      }

      LOWORD(v42) = 1;
LABEL_49:
      v43 = v40;
LABEL_50:
      v53 = v33 + 8 * v25;
      *v53 = v26;
      ++v25;
      *(v53 + 4) = v42;
      *(v53 + 6) = v43;
      ++v27;
      v36 = v42;
LABEL_51:
      v26 += v36;
      if (v30 != v21 && v30 == v26)
      {
        v29[v28] = v27;
        v27 = 0;
        v30 = v29[++v28];
      }

      if (v26 >= v21)
      {
        v29[v28] = v27;
        result = *(v20 + 12232);
        goto LABEL_57;
      }
    }
  }

  v33 = *(*(this + 5) + 112);
LABEL_57:
  *(v20 + 11928) = result;
  v54 = v25;
  if (v24 != v23 + v21)
  {
    v55 = v24 - v23;
    v56 = v25;
    do
    {
      v54 = v56 + 1;
      v57 = (v33 + 8 * v56);
      *v57 = v21;
      v57[1] = 262145;
      ++v21;
      v56 = v54;
    }

    while (v55 != v21);
  }

  *(v20 + 12192) = v25;
  *(v20 + 12196) = v54 - v25;
  *(v20 + 12048) = v54;
  return result;
}

void physx::Dy::SetupSolverConstraintsTask::~SetupSolverConstraintsTask(physx::Dy::SetupSolverConstraintsTask *this)
{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
}

{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
  JUMPOUT(0x1E6906520);
}

uint64_t physx::Dy::SetupSolverConstraintsTask::runInternal(uint64_t this)
{
  v1 = this;
  v2 = *(this + 40);
  v3 = *(*v2 + 12048);
  if (v3)
  {
    v4 = 0;
    v5 = *(v2 + 14);
    v6 = *(*v2 + 12048);
    do
    {
      v7 = v6 - 64;
      if (v6 >= 0x40)
      {
        v8 = 64;
      }

      else
      {
        v8 = v6;
      }

      v9 = physx::Cm::FlushPool::allocate(*(*(v1 + 80) + 776), 112, 0x10u);
      v11 = *(v1 + 40);
      v10 = *(v1 + 48);
      v12 = *(v1 + 72);
      v13 = v11[39];
      v14 = v11[40];
      v15 = *(v1 + 80);
      v16 = *(v15 + 92);
      LODWORD(v11) = v11[36];
      v17 = *(v1 + 56);
      v18 = *(v1 + 64);
      v19 = *(v15 + 800);
      *(v9 + 16) = 0;
      *(v9 + 24) = 0;
      *(v9 + 32) = 0;
      v20 = &unk_1F5D1E3C8;
      *v9 = &unk_1F5D1E3C8;
      *(v9 + 8) = v19;
      *(v9 + 40) = v10;
      *(v9 + 48) = v5 + 8 * v4;
      *(v9 + 56) = v8;
      *(v9 + 64) = v17;
      *(v9 + 72) = v13;
      *(v9 + 76) = v12;
      *(v9 + 80) = v14;
      *(v9 + 84) = v16;
      *(v9 + 88) = v11;
      *(v9 + 96) = v15;
      *(v9 + 104) = v18;
      v21 = *(v1 + 24);
      *(v9 + 32) = 1;
      *(v9 + 24) = v21;
      if (v21)
      {
        (*(*v21 + 32))(v21);
        *(v9 + 16) = *(*(v9 + 24) + 16);
        v20 = *v9;
      }

      this = v20[5](v9);
      v4 += 64;
      v6 = v7;
    }

    while (v4 < v3);
    v2 = *(v1 + 40);
  }

  v22 = v2[3];
  v23 = v22 & 0x7FFFFFFF;
  if ((v22 & 0x7FFFFFFF) != 0)
  {
    v24 = 0;
    v25 = 0;
    v26 = v22 & 0x7FFFFFFF;
    do
    {
      v27 = v26 - 64;
      if (v26 >= 0x40)
      {
        v28 = 64;
      }

      else
      {
        v28 = v26;
      }

      v29 = physx::Cm::FlushPool::allocate(*(*(v1 + 80) + 776), 104, 0x10u);
      v31 = *(v1 + 56);
      v30 = *(v1 + 64);
      v32 = *(v30 + 11984) + v24;
      v33 = *(v1 + 80);
      v34 = v33[76];
      v35 = v33[74];
      v36 = *(v1 + 40);
      v37 = v33[100];
      *(v29 + 16) = 0;
      *(v29 + 24) = 0;
      *(v29 + 32) = 0;
      v38 = &unk_1F5D1E438;
      *v29 = &unk_1F5D1E438;
      *(v29 + 8) = v37;
      *(v29 + 40) = v32;
      *(v29 + 48) = v28;
      *(v29 + 56) = v34;
      *(v29 + 64) = v35;
      *(v29 + 72) = v30;
      *(v29 + 80) = v33;
      *(v29 + 88) = v31;
      *(v29 + 96) = v36;
      v39 = *(v1 + 24);
      *(v29 + 32) = 1;
      *(v29 + 24) = v39;
      if (v39)
      {
        (*(*v39 + 32))(v39);
        *(v29 + 16) = *(*(v29 + 24) + 16);
        v38 = *v29;
      }

      this = v38[5](v29);
      v25 += 64;
      v24 += 512;
      v26 = v27;
    }

    while (v25 < v23);
  }

  return this;
}

void physx::Dy::SetupSolverConstraintsSubTask::~SetupSolverConstraintsSubTask(physx::Dy::SetupSolverConstraintsSubTask *this)
{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
}

{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
  JUMPOUT(0x1E6906520);
}

uint64_t physx::Dy::SetupSolverConstraintsSubTask::runInternal(physx::Dy::SetupSolverConstraintsSubTask *this)
{
  v110[91] = *MEMORY[0x1E69E9840];
  v2 = *(this + 12);
  v3 = physx::shdfnd::SListImpl::pop(*(v2 + 432));
  if (!v3)
  {
    v6 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Dy::ThreadContext>::getName() [T = physx::Dy::ThreadContext]";
    }

    else
    {
      v7 = "<allocation names disabled>";
    }

    v8 = (*(*(v6 + 24) + 16))(v6 + 24, 12343, v7, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevel/common/include/utils/PxcThreadCoherentCache.h", 82);
    if (v8)
    {
      v3 = (v8 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v3 - 8) = v3 - v8;
    }

    else
    {
      v3 = 0;
    }

    physx::Dy::ThreadContext::ThreadContext(v3, *(v2 + 440));
  }

  *(v3 + 11880) = 0;
  *(v3 + 11888) = 0;
  v9 = *(this + 5);
  v10 = *(this + 6);
  v11 = *(this + 14);
  v96 = *(this + 8);
  v12 = *(this + 12);
  v13 = *(this + 18);
  v14 = *(this + 19);
  v15 = *(this + 20);
  v16 = (*(this + 13) + 11848);
  v103[0] = &unk_1F5D1DC80;
  v103[1] = v16;
  v103[2] = (v3 + 11872);
  v103[3] = (v3 + 11824);
  v103[4] = (v3 + 12208);
  v100 = v11;
  if (v11)
  {
    v99 = v3;
    v17 = 0;
    v18 = *(v12 + 592);
    v19 = *(v12 + 608);
    v94 = this;
    v95 = v9 + 40;
    v20 = xmmword_1E30474D0;
    v97 = v10;
    __asm { FMOV            V14.2S, #1.0 }

    v98 = v9;
    v25 = v11;
    while (1)
    {
      v26 = (v10 + 8 * v17);
      v27 = *v26;
      v28 = *(v26 + 2);
      v29 = (v27 + v28);
      v30 = *(v9 + 48 * v27 + 30);
      if (v30 == 2)
      {
        break;
      }

      if (v30 == 1)
      {
        HIDWORD(v31) = 0;
        v104 = 0u;
        v105 = 0u;
        v106 = 0u;
        v107 = 0u;
        v102 = v17;
        v101 = v10 + 8 * v17;
        if (v27 >= v29)
        {
          v59 = v99;
          if (v28 != 4)
          {
            goto LABEL_55;
          }
        }

        else
        {
          v32 = *(v96 + 32);
          v33 = (v9 + 48 * v27);
          v34 = &v104;
          v35 = &v106;
          v36 = v108;
          do
          {
            v37 = *(v33 + 4);
            *v35 = v37;
            v38 = v32 + 32 * (*(v96 + 4 * (*(v37 + 108) & 7)) + (*(v37 + 108) >> 3));
            *v34 = v38;
            v40 = *(v33 + 5);
            v39 = *(v33 + 6);
            v41 = v18 + (v40 << 6);
            v42 = v18 + (v39 << 6);
            v43 = v19 + 48 * v40;
            v44 = v19 + 48 * v39;
            v46 = *(v37 + 32);
            v45 = *(v37 + 40);
            v47 = *(v37 + 24);
            v48 = *(v38 + 16);
            v49 = *v33;
            *(v36 + 9) = *v46;
            *&v50 = *(v46 + 16);
            DWORD2(v50) = *(v46 + 24);
            HIDWORD(v50) = *v45;
            *(v36 + 11) = v50;
            *(v36 + 13) = *(v45 + 4);
            v36[15] = *(v45 + 20);
            v36[17] = v47;
            v36[23] = v48;
            v36[2] = v33;
            *(v36 + 3) = v49;
            v36[5] = v41;
            v36[6] = v42;
            v36[7] = v43;
            v36[8] = v44;
            v51 = *(v37 + 80);
            *(v36 + 158) = HIBYTE(v51) & 1;
            *(v36 + 157) = (v51 & 4) != 0;
            if ((v51 & 8) != 0)
            {
              v52 = 8;
            }

            else
            {
              v52 = 1;
            }

            *(v36 + 32) = v52;
            if ((v51 & 0x10) != 0)
            {
              if (*(v33 + 9) == -1)
              {
                *(v36 + 33) = 2;
              }

              else
              {
                *(v36 + 33) = 8;
              }
            }

            else
            {
              if ((v51 & 0x40) != 0)
              {
                v53 = 1;
              }

              else
              {
                v53 = 2;
              }

              if ((v51 & 0x400) != 0)
              {
                v53 = 4;
              }

              *(v36 + 33) = v53;
            }

            v54 = (v43 + 12);
            if ((v51 & 8) != 0)
            {
              v54 = (*(v37 + 32) + 128);
            }

            v55 = *v54;
            v56 = (v44 + 12);
            if ((v51 & 0x10) != 0)
            {
              v56 = (*(v37 + 40) + 128);
            }

            v57.i32[0] = *(v37 + 84);
            v57.i32[1] = *(v37 + 85);
            v58 = *v56;
            v4 = COERCE_DOUBLE(vceqz_s32(v57));
            v112.val[0] = vbic_s8(_D14, *&v4);
            v112.val[1] = v112.val[0];
            vst2_f32(v36, v112);
            *(v36 + 40) = *(v37 + 92);
            v36[21] = *(v37 + 72);
            *(v36 + 176) = *(v37 + 82);
            *(v36 + 41) = 2139095039;
            if (v55 >= v58)
            {
              v55 = v58;
            }

            *(v36 + 52) = v55;
            v34 = (v34 + 8);
            v31 = *(v37 + 112);
            *(v36 + 212) = v31;
            v35 = (v35 + 8);
            v36 += 28;
            v33 += 3;
            --v28;
          }

          while (v28);
          v59 = v99;
          if (*(v26 + 2) != 4)
          {
LABEL_53:
            v79 = (v95 + 48 * v27);
            v80 = v108;
            v81 = &v104;
            do
            {
              v82 = *v81++;
              LODWORD(v20) = *(v12 + 120);
              *&v4 = 1.0 / v14;
              physx::Dy::createFinalizeSolverContactsStep(v80, v82, v59, v103, v15, v4, *&v20, *(v12 + 124), *(v12 + 136));
              *(v79 - 6) = *(v82 + 24);
              *v79 = *(v82 + 16);
              v79 += 6;
              ++v27;
              v80 += 28;
            }

            while (v27 < v29);
            goto LABEL_55;
          }
        }

        LODWORD(v20) = *(v12 + 120);
        LODWORD(v5) = *(v12 + 128);
        *&v31 = v15;
        *&v4 = 1.0 / v14;
        FinalizeSolverContacts4Step = physx::Dy::createFinalizeSolverContacts4Step(&v104, v59, v108, v103, v31, v4, *&v20, *(v12 + 124), *(v12 + 136), v5);
        if (v27 < v29 && FinalizeSolverContacts4Step != 2)
        {
          goto LABEL_53;
        }

LABEL_55:
        v83 = *(v101 + 4);
        if (*(v101 + 4))
        {
          v84 = &v106;
          v85 = v110;
          do
          {
            v87 = *v84;
            v84 = (v84 + 8);
            v86 = v87;
            *(v87 + 72) = *(v85 - 1);
            LOBYTE(v87) = *v85;
            v85 += 224;
            *(v86 + 82) = v87;
            --v83;
          }

          while (v83);
        }

        v10 = v97;
        v9 = v98;
        v25 = v100;
LABEL_66:
        v17 = v102;
        v20 = xmmword_1E30474D0;
      }

      if (++v17 == v25)
      {
        v12 = *(v94 + 12);
        v3 = v99;
        goto LABEL_69;
      }
    }

    v102 = v17;
    if (v27 >= v29)
    {
      if (v28 != 4)
      {
        goto LABEL_66;
      }
    }

    else
    {
      v60 = *(v12 + 232);
      v61 = (v9 + 48 * v27);
      v62 = &v105;
      v63 = v109;
      v64 = *(v26 + 2);
      do
      {
        v106 = v20;
        *&v107 = 0;
        DWORD2(v107) = 0;
        v65 = *(v61 + 4);
        v66 = *(v65 + 40);
        if (v66)
        {
          v67 = *(v66 + 40);
        }

        else
        {
          v67 = &v106;
        }

        v68 = *(v65 + 48);
        if (v68)
        {
          v69 = *(v68 + 40);
        }

        else
        {
          v69 = &v106;
        }

        v70 = *(v65 + 32);
        v71 = *(v65 + 8);
        v72 = *(v61 + 5);
        v73 = *(v61 + 6);
        *(v62 - 1) = *(v65 + 16);
        *v62 = v70;
        *(v62 + 2) = v71;
        *(v62 - 2) = v65;
        v74 = *v67;
        v75 = *v61;
        *(v63 - 155) = v61;
        *(v63 - 99) = v74;
        *&v74 = *(v67 + 2);
        DWORD2(v74) = *(v67 + 6);
        HIDWORD(v74) = *v69;
        *(v63 - 83) = v74;
        *(v63 - 67) = *(v69 + 4);
        *(v63 - 51) = *(v69 + 20);
        *(v63 - 147) = v75;
        *(v63 - 131) = v18 + (v72 << 6);
        *(v63 - 123) = v18 + (v73 << 6);
        *(v63 - 115) = v19 + 48 * v72;
        *(v63 - 107) = v19 + 48 * v73;
        *(v63 - 23) = *v65;
        *(v63 - 11) = v60 + 32 * *(v65 + 72);
        v76 = *(v65 + 10);
        *(v63 - 3) = HIBYTE(v76) & 1;
        *(v63 - 2) = (v76 & 0x80) != 0;
        *(v63 - 1) = (v76 & 0x20) != 0;
        *v63 = (v76 & 0x200) != 0;
        *(v63 - 15) = *(v65 + 76);
        LODWORD(v74) = *(v61 + 8);
        DWORD1(v74) = *(v61 + 9);
        *&v74 = vceq_s32(*&v74, 0xFFFF0000FFFFLL);
        *(v63 - 43) = vsub_s32(vbic_s8(0x800000008, *&v74), *&v74);
        v63 += 208;
        v61 += 3;
        v62 += 2;
        --v64;
      }

      while (v64);
      if (v28 != 4)
      {
LABEL_64:
        v90 = v108;
        v91 = &v104;
        do
        {
          physx::Dy::SetupSolverConstraintStep(v91, v90, v103, v13, v14, v15, 1.0 / v14, *(v12 + 760));
          LODWORD(v27) = v27 + 1;
          v90 += 26;
          v91 += 2;
        }

        while (v27 < v29);
        goto LABEL_66;
      }
    }

    v88 = physx::Dy::setupSolverConstraintStep4(&v104, v108, &v106, v103, v13, v14, v15, 1.0 / v14, *(v12 + 760));
    if (v27 >= v29 || v88 == 2)
    {
      goto LABEL_66;
    }

    goto LABEL_64;
  }

LABEL_69:
  v92 = *(v12 + 432);
  pthread_mutex_lock((v92 + 8));
  *v3 = *v92;
  *v92 = v3;

  return pthread_mutex_unlock((v92 + 8));
}

void physx::Dy::PxsCreateArticConstraintsSubTask::~PxsCreateArticConstraintsSubTask(physx::Dy::PxsCreateArticConstraintsSubTask *this)
{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
}

{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
  JUMPOUT(0x1E6906520);
}

uint64_t physx::Dy::PxsCreateArticConstraintsSubTask::runInternal(physx::Dy::PxsCreateArticConstraintsSubTask *this)
{
  v2 = *(this + 10);
  v3 = *(v2 + 136);
  v4 = *(v2 + 120);
  v5 = *(v2 + 124);
  v6 = *(v2 + 88);
  if (*(v2 + 96) >= *(v2 + 92))
  {
    v7 = *(v2 + 92);
  }

  else
  {
    v7 = *(v2 + 96);
  }

  v8 = physx::shdfnd::SListImpl::pop(*(v2 + 432));
  if (!v8)
  {
    v9 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v10 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Dy::ThreadContext>::getName() [T = physx::Dy::ThreadContext]";
    }

    else
    {
      v10 = "<allocation names disabled>";
    }

    v11 = (*(*(v9 + 24) + 16))(v9 + 24, 12343, v10, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevel/common/include/utils/PxcThreadCoherentCache.h", 82);
    if (v11)
    {
      v8 = (v11 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v8 - 8) = v8 - v11;
    }

    else
    {
      v8 = 0;
    }

    physx::Dy::ThreadContext::ThreadContext(v8, *(v2 + 440));
  }

  *(v8 + 11880) = 0;
  *(v8 + 11888) = 0;
  if (*(this + 12))
  {
    v12 = 0;
    do
    {
      v13 = *(*(this + 5) + 8 * v12);
      (*(*v13 + 296))(v13, *(this + 11), v8, *(this + 7), *(this + 8), *(this + 9) + 11848, *(*(this + 10) + 232), *(*(this + 12) + 144), *(*(this + 12) + 156), v6, *(*(this + 12) + 160), v7, v3, v4, v5, *(*(this + 10) + 760));
      ++v12;
    }

    while (v12 < *(this + 12));
  }

  v14 = *(*(this + 10) + 432);
  pthread_mutex_lock((v14 + 8));
  *v8 = *v14;
  *v14 = v8;

  return pthread_mutex_unlock((v14 + 8));
}

void physx::Dy::SolveIslandTask::~SolveIslandTask(physx::Dy::SolveIslandTask *this)
{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
}

{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
  JUMPOUT(0x1E6906520);
}

void physx::Dy::SolveIslandTask::runInternal(physx::Dy::SolveIslandTask *this, double a2, __n128 a3, __n128 a4)
{
  v5 = *(this + 8);
  v6 = *(v5 + 11928);
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v6 = 0;
    v13 = *(this + 6);
    v14 = *(v13 + 72);
    v15 = *(v13 + 88);
    do
    {
      v16 = *(v5 + 11920);
      v17 = *(v16 + 4 * v7) + v11;
      if (v11 >= v17)
      {
        v18 = 0;
        v11 += *(v16 + 4 * v7);
      }

      else
      {
        v18 = 0;
        v19 = v11;
        do
        {
          v20 = *(v15 + 8 * v19 + 4);
          if (v20)
          {
            v21 = (v20 + v9);
            v22 = v8;
            do
            {
              v23 = (v14 + 48 * v9);
              if (*(v23 + 15))
              {
                if (v9 != v22)
                {
                  v24 = v14 + 48 * v22;
                  v25 = *v23;
                  a3 = v23[1];
                  a4 = v23[2];
                  *(v24 + 16) = a3;
                  *(v24 + 32) = a4;
                  *v24 = v25;
                }

                v22 = (v22 + 1);
              }

              else
              {
                --v20;
              }

              ++v9;
            }

            while (v21 != v9);
            if (v20)
            {
              v26 = v15 + 8 * v10;
              *v26 = v8;
              *(v26 + 4) = v20;
              v27 = **(v14 + 48 * v8 + 32);
              if (v27 == 5)
              {
                if (v20 == 1)
                {
                  LOBYTE(v27) = 5;
                }

                else
                {
                  v28 = v20 - 1;
                  v29 = v8 + 1;
                  LOBYTE(v27) = 5;
                  do
                  {
                    if (**(v14 + 48 * v29 + 32) == 1)
                    {
                      LOBYTE(v27) = 1;
                    }

                    ++v29;
                    --v28;
                  }

                  while (v28);
                }
              }

              *(v26 + 6) = v27;
              ++v10;
              ++v18;
            }

            v8 = v22;
          }

          ++v19;
        }

        while (v19 != v17);
        v5 = *(this + 8);
        v16 = *(v5 + 11920);
        v11 += *(v16 + 4 * v7);
      }

      *(v16 + 4 * v6) = v18;
      if (v18)
      {
        ++v6;
      }

      v12 += v18;
      ++v7;
    }

    while (v7 < *(v5 + 11928));
  }

  else
  {
    v12 = 0;
  }

  *(v5 + 11928) = v6;
  *(v5 + 12048) = v12;
  v30 = 0;
  v31 = *(*(this + 7) + 4) & 0x7FFFFFFF;
  if (v31)
  {
    v32 = (*(v5 + 12288) + 92);
    do
    {
      v34 = *v32;
      v32 += 96;
      v33 = v34;
      if (v30 <= v34)
      {
        v30 = v33;
      }

      --v31;
    }

    while (v31);
    *(v5 + 12168) = 0;
    if ((*(v5 + 12172) & 0x7FFFFFFFu) < v30)
    {
      physx::shdfnd::Array<physx::Cm::SpatialVectorF,physx::shdfnd::ReflectionAllocator<physx::Cm::SpatialVectorF>>::recreate(v5 + 12160, v30);
      v5 = *(this + 8);
    }

    *(v5 + 12168) = v30;
    *(v5 + 12184) = 0;
    if ((*(v5 + 12188) & 0x7FFFFFFFu) < v30)
    {
      physx::shdfnd::Array<physx::Cm::SpatialVectorF,physx::shdfnd::ReflectionAllocator<physx::Cm::SpatialVectorF>>::recreate(v5 + 12176, v30);
      v5 = *(this + 8);
    }
  }

  else
  {
    *(v5 + 12168) = 0;
    *(v5 + 12184) = 0;
  }

  *(v5 + 12184) = v30;
  v35 = *(v5 + 12176);
  v116 = *(v5 + 12160);
  v117 = v35;
  if (*(v5 + 11928) && ((v36 = (*(**(this + 2) + 8))(*(this + 2)), v37 = (*(*v36 + 8))(v36), v5 = *(this + 8), v38 = (v12 + *(v5 + 11928) - 1) / *(v5 + 11928) + 7, v37 >= 2) ? (v39 = v38 >= 0x10) : (v39 = 0), v39))
  {
    v88 = *(this + 5);
    if (v37 >= v38 >> 3)
    {
      v89 = v38 >> 3;
    }

    else
    {
      v89 = v37;
    }

    *(v88 + 172) = 0;
    *(v88 + 164) = 0;
    *(v88 + 180) = 0;
    v90 = physx::Cm::FlushPool::allocate(*(*(this + 9) + 776), 80 * v89, 0x10u);
    v91 = 0;
    v92 = v90;
    do
    {
      v93 = *(this + 9);
      v94 = *(v93 + 800);
      v95 = *(this + 40);
      v96 = *(this + 56);
      *(v92 + 16) = 0;
      *(v92 + 24) = 0;
      *(v92 + 32) = 0;
      v97 = &unk_1F5D1E518;
      *v92 = &unk_1F5D1E518;
      *(v92 + 8) = v94;
      *(v92 + 40) = v95;
      *(v92 + 56) = v96;
      *(v92 + 72) = v93;
      v98 = *(this + 3);
      *(v92 + 32) = 1;
      *(v92 + 24) = v98;
      if (v98)
      {
        (*(*v98 + 32))(v98);
        *(v92 + 16) = *(*(v92 + 24) + 16);
        v97 = *v92;
      }

      v97[5](v92);
      ++v91;
      v92 += 80;
      v90 += 80;
    }

    while (v91 < v89);
  }

  else
  {
    v40 = *(this + 9);
    v41 = *(this + 6);
    v42 = *(this + 7);
    v43 = *(this + 5);
    v44 = *(v43 + 156);
    v45 = *(v43 + 144);
    v113 = v45;
    v114 = *(v43 + 148);
    v46 = *(v41 + 112);
    if (*(v5 + 12048))
    {
      v110 = *(v41 + 112);
      v112 = *(this + 6);
      v47 = 0.0;
      if (v45 >= 2)
      {
        v111 = (v110 << 6) + 64;
        for (i = 1; i != v45; ++i)
        {
          v49 = v40;
          if ((v42[1] & 0x7FFFFFFF) != 0)
          {
            v50 = 0;
            v51 = 0;
            do
            {
              (*(**(*(v5 + 12288) + v50) + 272))(*(*(v5 + 12288) + v50), *(v5 + 12160), *(v5 + 12176), 0, 1, v44, 1.0 / v44, v47);
              ++v51;
              v50 += 96;
            }

            while (v51 < (v42[1] & 0x7FFFFFFF));
          }

          v52 = *(v5 + 12048);
          v53 = *(v49 + 592);
          if (v52)
          {
            v54 = *(v112 + 72);
            v55 = *(v112 + 88);
            do
            {
              physx::Dy::g_SolveTGSMethods[*(v55 + 6)](v55, v54, v53, v115, -3.4028e38, v47);
              v55 += 8;
              --v52;
            }

            while (v52);
            v40 = v49;
            v53 = *(v49 + 592);
          }

          else
          {
            v40 = v49;
          }

          v56 = *v42;
          if (v56)
          {
            v57 = v53 + v111;
            v58 = (*(v40 + 576) + v111);
            do
            {
              physx::Dy::integrateCoreStep(v58, v57, v44, a3.n128_f64[0], a4);
              v57 += 64;
              v58 += 8;
              --v56;
            }

            while (v56);
          }

          physx::Dy::DynamicsTGSContext::stepArticulations(v5, v42, v44);
          v47 = v44 + v47;
        }
      }

      if ((v42[1] & 0x7FFFFFFF) != 0)
      {
        v59 = 0;
        v60 = 0;
        do
        {
          (*(**(*(v5 + 12288) + v59) + 272))(*(*(v5 + 12288) + v59), *(v5 + 12160), *(v5 + 12176), 0, 1, v44, 1.0 / v44, v47);
          ++v60;
          v59 += 96;
        }

        while (v60 < (v42[1] & 0x7FFFFFFF));
      }

      v61 = *(v5 + 12048);
      v62 = *(v40 + 592);
      if (v61)
      {
        v63 = *(v112 + 72);
        v64 = *(v112 + 88);
        do
        {
          physx::Dy::g_SolveConcludeTGSMethods[*(v64 + 6)](v64, v63, v62, v115, v47);
          v64 += 8;
          --v61;
        }

        while (v61);
        v62 = *(v40 + 592);
      }

      v65 = *(v40 + 92);
      v66 = *v42;
      if (v66)
      {
        v67 = (v110 << 6) + 64;
        v68 = v62 + v67;
        v69 = (*(v40 + 576) + v67);
        do
        {
          physx::Dy::integrateCoreStep(v69, v68, v44, a3.n128_f64[0], a4);
          v68 += 64;
          v69 += 8;
          --v66;
        }

        while (v66);
      }

      physx::Dy::DynamicsTGSContext::stepArticulations(v5, v42, v44);
      v70 = v42[1];
      if ((v70 & 0x7FFFFFFF) != 0)
      {
        v71 = 0;
        v72 = 0;
        do
        {
          v73 = *(v5 + 12288);
          v74 = physx::Dy::ArticulationPImpl::sSaveVelocityTGS[*(*(v73 + v71) + 40)];
          if (v74)
          {
            v74(v73 + v71, v65);
            v70 = v42[1];
          }

          ++v72;
          v71 += 96;
        }

        while (v72 < (v70 & 0x7FFFFFFF));
      }

      if (v114)
      {
        v75 = 0;
        v76 = v44 + v47;
        do
        {
          if ((v42[1] & 0x7FFFFFFF) != 0)
          {
            v77 = 0;
            v78 = 0;
            do
            {
              (*(**(*(v5 + 12288) + v77) + 272))(*(*(v5 + 12288) + v77), *(v5 + 12160), *(v5 + 12176), 0, 1, v44, 1.0 / v44, v76);
              ++v78;
              v77 += 96;
            }

            while (v78 < (v42[1] & 0x7FFFFFFF));
          }

          v79 = *(v5 + 12048);
          if (v79)
          {
            v80 = *(v112 + 72);
            v81 = *(v112 + 88);
            v82 = *(v40 + 592);
            do
            {
              physx::Dy::g_SolveTGSMethods[*(v81 + 6)](v81, v80, v82, v115, 0.0, v76);
              v81 += 8;
              --v79;
            }

            while (v79);
          }

          ++v75;
        }

        while (v75 != v114);
      }

      v83 = *(v5 + 12048);
      if (v83)
      {
        v84 = *(v112 + 88);
        v85 = *(v112 + 72);
        do
        {
          physx::Dy::g_WritebackTGSMethods[*(v84 + 6)](v84, v85, 0);
          v84 += 8;
          --v83;
        }

        while (v83);
      }

      if ((v42[1] & 0x7FFFFFFF) != 0)
      {
        v86 = 0;
        v87 = 0;
        do
        {
          (*(**(*(v5 + 12288) + v86) + 280))(*(*(v5 + 12288) + v86), 1);
          ++v87;
          v86 += 96;
        }

        while (v87 < (v42[1] & 0x7FFFFFFF));
      }
    }

    else
    {
      if ((v42[1] & 0x7FFFFFFF) != 0)
      {
        v99 = 0;
        do
        {
          v100 = (*(v5 + 12288) + 96 * v99);
          for (j = 0.0; v45; --v45)
          {
            (*(**v100 + 272))(*v100, *(v5 + 12160), *(v5 + 12176), 0, 1, v44, 1.0 / v44, j);
            v102 = physx::Dy::ArticulationPImpl::sUpdateDeltaMotion[*(*v100 + 40)];
            if (v102)
            {
              v102(v100, *(v5 + 12176), v44);
            }

            j = v44 + j;
          }

          v103 = physx::Dy::ArticulationPImpl::sSaveVelocityTGS[*(*v100 + 40)];
          if (v103)
          {
            v103(v100, *(v40 + 92));
          }

          for (k = v114; k; --k)
          {
            (*(**v100 + 272))(*v100, *(v5 + 12160), *(v5 + 12176), 1, 1, v44, 1.0 / v44, j);
          }

          (*(**v100 + 280))(*v100, 1);
          ++v99;
          v45 = v113;
        }

        while (v99 < (v42[1] & 0x7FFFFFFF));
      }

      v105 = *v42;
      if (v105)
      {
        v106 = *(v40 + 88);
        v107 = (v46 << 6) + 64;
        v108 = *(v40 + 592) + v107;
        v109 = (*(v40 + 576) + v107);
        do
        {
          physx::Dy::integrateCoreStep(v109, v108, v106, a3.n128_f64[0], a4);
          v108 += 64;
          v109 += 8;
          --v105;
        }

        while (v105);
      }
    }
  }
}

void physx::Dy::ParallelSolveTask::~ParallelSolveTask(physx::Dy::ParallelSolveTask *this)
{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
}

{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
  JUMPOUT(0x1E6906520);
}

uint64_t physx::Dy::ParallelSolveTask::runInternal(physx::Dy::ParallelSolveTask *this)
{
  v2 = *(this + 8);
  v1 = *(this + 9);
  v3 = *(this + 6);
  v4 = *(this + 7);
  v5 = *(this + 5);
  v6 = *(v5 + 39);
  v143 = v5[36];
  v144 = v5[37];
  v7 = physx::shdfnd::SListImpl::pop(*(v1 + 432));
  if (!v7)
  {
    v10 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v11 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Dy::ThreadContext>::getName() [T = physx::Dy::ThreadContext]";
    }

    else
    {
      v11 = "<allocation names disabled>";
    }

    v12 = (*(*(v10 + 24) + 16))(v10 + 24, 12343, v11, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevel/common/include/utils/PxcThreadCoherentCache.h", 82);
    if (v12)
    {
      v7 = (v12 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v7 - 8) = v7 - v12;
    }

    else
    {
      v7 = 0;
    }

    physx::Dy::ThreadContext::ThreadContext(v7, *(v1 + 440));
  }

  add = atomic_fetch_add(v5 + 41, 4u);
  v154 = atomic_fetch_add(v5 + 43, 0x80u);
  v146 = atomic_fetch_add(v5 + 45, 1u);
  v13 = v1;
  v14 = *(v2 + 12048);
  v15 = v4[1];
  v149 = *v4;
  v16 = *(v3 + 72);
  v153 = *(v3 + 88);
  v141 = v13;
  v17 = *(v13 + 592);
  v158 = *(v2 + 11920);
  v160 = *(v2 + 11928);
  v138 = *(v3 + 112);
  v139 = *(v13 + 576);
  v18 = *(v2 + 12168);
  if ((*(v7 + 12172) & 0x7FFFFFFFu) < v18)
  {
    physx::shdfnd::Array<physx::Cm::SpatialVectorF,physx::shdfnd::ReflectionAllocator<physx::Cm::SpatialVectorF>>::recreate(v7 + 12160, v18);
    v18 = *(v2 + 12168);
  }

  v140 = v14;
  if ((*(v7 + 12188) & 0x7FFFFFFFu) < v18)
  {
    physx::shdfnd::Array<physx::Cm::SpatialVectorF,physx::shdfnd::ReflectionAllocator<physx::Cm::SpatialVectorF>>::recreate(v7 + 12176, v18);
  }

  v157 = v15 & 0x7FFFFFFF;
  v152 = v7;
  v19 = *(v7 + 12176);
  v187 = *(v7 + 12160);
  v188 = v19;
  v170 = v5;
  v159 = v2;
  if (v143 < 2)
  {
    v22 = 0;
    v21 = 0;
    v20 = 0;
    v167 = 4;
    v24 = 0.0;
    v142 = 128;
  }

  else
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = (v138 << 6) + 64;
    v148 = v17 + v23;
    v147 = v139 + v23;
    v24 = 0.0;
    v142 = 128;
    v167 = 4;
    v25 = 1;
    v26 = v149;
    do
    {
      v145 = v25;
      v150 = v21;
      if (v5[44] < v21)
      {
        v27 = 30000;
        while (v5[44] < v150)
        {
          if (!--v27)
          {
            sched_yield();
            v27 = 10000;
          }
        }
      }

      if (v5[46] < v22)
      {
        v28 = 30000;
        while (v5[46] < v22)
        {
          if (!--v28)
          {
            sched_yield();
            v28 = 10000;
          }
        }
      }

      v29 = v146 - v22;
      if (v146 - v22 < v157)
      {
        v174 = v20;
        v30 = 0;
        do
        {
          v31 = *(*(v2 + 12288) + 96 * v29);
          (*(*v31 + 272))(v31, v152[1520], v152[1522], 0, 1, v6, 1.0 / v6, v24);
          ++v30;
          v32 = atomic_fetch_add(v5 + 45, 1u);
          v29 = v32 - v22;
        }

        while (v32 - v22 < v157);
        v146 = v32;
        if (v30)
        {
          atomic_fetch_add(v5 + 46, v30);
        }

        v20 = v174;
        v26 = v149;
      }

      v155 = v22 + v157;
      v33 = add;
      if (v5[46] < v155)
      {
        v34 = 30000;
        while (v5[46] < v155)
        {
          if (!--v34)
          {
            sched_yield();
            v34 = 10000;
          }
        }
      }

      if (v160)
      {
        v35 = 0;
        v164 = 0;
        do
        {
          v161 = v35;
          if (v5[42] < v20)
          {
            v36 = 30000;
            while (v5[42] < v20)
            {
              if (!--v36)
              {
                sched_yield();
                v36 = 10000;
              }
            }
          }

          v175 = v20;
          v37 = v33 - v20;
          v38 = v161;
          v39 = *(v158 + 4 * v161);
          if (v37 >= v39)
          {
            v46 = v175;
          }

          else
          {
            v40 = 0;
            v41 = v167;
            v171 = *(v158 + 4 * v161);
            do
            {
              v182 = v33;
              v42 = v41;
              if (v39 - v37 >= v41)
              {
                v43 = v41;
              }

              else
              {
                v43 = v39 - v37;
              }

              if (v43)
              {
                v44 = v153 + 8 * v164 + 8 * v37;
                v45 = v43;
                do
                {
                  physx::Dy::g_SolveTGSMethods[*(v44 + 6)](v44, v16, v17, v186, -3.4028e38, v24);
                  v44 += 8;
                  --v45;
                }

                while (v45);
              }

              v41 = v42 - v43;
              if (v42 == v43)
              {
                v41 = 4;
                v33 = atomic_fetch_add(v170 + 41, 4u);
                v37 = v33 - v175;
              }

              else
              {
                v33 = v43 + v182;
                v37 += v43;
              }

              v39 = v171;
              v40 += v43;
            }

            while (v37 < v171);
            v167 = v41;
            if (v40)
            {
              atomic_fetch_add(v170 + 42, v40);
            }

            v5 = v170;
            v46 = v175;
            v26 = v149;
            v38 = v161;
          }

          v20 = v39 + v46;
          v164 += v39;
          v35 = v38 + 1;
          v2 = v159;
        }

        while (v35 != v160);
      }

      if (v5[42] < v20)
      {
        v47 = 30000;
        while (v5[42] < v20)
        {
          if (!--v47)
          {
            sched_yield();
            v47 = 10000;
          }
        }
      }

      v48 = v154 - v150;
      add = v33;
      if (v154 - v150 < v26)
      {
        v49 = 0;
        v50 = v142;
        v176 = v20;
        do
        {
          v51 = v50;
          if (v26 - v48 >= v50)
          {
            v52 = v50;
          }

          else
          {
            v52 = v26 - v48;
          }

          v53 = v48;
          if (v52)
          {
            v54 = v148 + (v48 << 6);
            v55 = v52;
            v56 = (v147 + (v48 << 6));
            do
            {
              physx::Dy::integrateCoreStep(v56, v54, v6, v8, v9);
              v54 += 64;
              v56 += 8;
              --v55;
            }

            while (v55);
          }

          v50 = v51 - v52;
          if (v51 == v52)
          {
            v50 = 128;
            v154 = atomic_fetch_add(v170 + 43, 0x80u);
            v48 = v154 - v150;
          }

          else
          {
            v154 += v52;
            v48 = v52 + v53;
          }

          v20 = v176;
          v49 += v52;
        }

        while (v48 < v26);
        v142 = v50;
        if (v49)
        {
          atomic_fetch_add(v170 + 44, v49);
        }

        v5 = v170;
        v2 = v159;
      }

      v57 = v145;
      v58 = v146 - v155;
      if (v146 - v155 < v157)
      {
        v59 = 0;
        do
        {
          v60 = physx::Dy::ArticulationPImpl::sUpdateDeltaMotion[*(*(*(v2 + 12288) + 96 * v58) + 40)];
          if (v60)
          {
            v60(v6);
          }

          ++v59;
          v61 = atomic_fetch_add(v5 + 45, 1u);
          v58 = v61 - v155;
        }

        while (v61 - v155 < v157);
        v146 = v61;
        if (v59)
        {
          atomic_fetch_add(v5 + 46, v59);
        }

        v57 = v145;
      }

      v24 = v6 + v24;
      v25 = v57 + 1;
      v21 = v150 + v26;
      v22 = v155 + v157;
    }

    while (v25 != v143);
  }

  v62 = v21;
  if (v5[44] < v21)
  {
    v63 = 30000;
    while (v5[44] < v62)
    {
      if (!--v63)
      {
        sched_yield();
        v63 = 10000;
      }
    }
  }

  if (v5[46] < v22)
  {
    v64 = 30000;
    while (v5[46] < v22)
    {
      if (!--v64)
      {
        sched_yield();
        v64 = 10000;
      }
    }
  }

  v65 = v146 - v22;
  v151 = v62;
  if (v146 - v22 < v157)
  {
    v66 = 0;
    do
    {
      v67 = *(*(v2 + 12288) + 96 * v65);
      (*(*v67 + 272))(v67, v152[1520], v152[1522], 0, 1, v6, 1.0 / v6, v24);
      ++v66;
      v68 = atomic_fetch_add(v5 + 45, 1u);
      v65 = v68 - v22;
    }

    while (v68 - v22 < v157);
    v146 = v68;
    v5 = v170;
    if (v66)
    {
      atomic_fetch_add(v170 + 46, v66);
    }

    v20 = v20;
  }

  v168 = v22 + v157;
  v69 = add;
  if (v5[46] < v168)
  {
    v70 = 30000;
    while (v5[46] < v168)
    {
      if (!--v70)
      {
        sched_yield();
        v70 = 10000;
      }
    }
  }

  if (v160)
  {
    v71 = 0;
    v72 = 0;
    do
    {
      if (v5[42] < v20)
      {
        v73 = 30000;
        while (v5[42] < v20)
        {
          if (!--v73)
          {
            sched_yield();
            v73 = 10000;
          }
        }
      }

      v74 = v69 - v20;
      v75 = *(v158 + 4 * v71);
      if (v69 - v20 >= v75)
      {
        v78 = v167;
      }

      else
      {
        v165 = v71;
        v177 = v20;
        v76 = v72;
        v77 = 0;
        v162 = v76;
        v172 = v153 + 8 * v76;
        v78 = v167;
        v183 = *(v158 + 4 * v71);
        do
        {
          v79 = v69;
          v80 = v78;
          if (v75 - v74 >= v78)
          {
            v81 = v78;
          }

          else
          {
            v81 = v75 - v74;
          }

          if (v81)
          {
            v82 = v172 + 8 * v74;
            v83 = v81;
            do
            {
              physx::Dy::g_SolveConcludeTGSMethods[*(v82 + 6)](v82, v16, v17, v186, v24);
              v82 += 8;
              --v83;
            }

            while (v83);
          }

          v78 = v80 - v81;
          if (v80 == v81)
          {
            v78 = 4;
            v69 = atomic_fetch_add(v170 + 41, 4u);
            v74 = v69 - v177;
          }

          else
          {
            v69 = v81 + v79;
            v74 += v81;
          }

          v75 = v183;
          v77 += v81;
        }

        while (v74 < v183);
        if (v77)
        {
          atomic_fetch_add(v170 + 42, v77);
        }

        v2 = v159;
        LODWORD(v20) = v177;
        v71 = v165;
        v72 = v162;
      }

      v167 = v78;
      v20 = v75 + v20;
      v72 += v75;
      ++v71;
      v5 = v170;
    }

    while (v71 != v160);
  }

  if (v5[42] < v20)
  {
    v84 = 30000;
    while (v5[42] < v20)
    {
      if (!--v84)
      {
        sched_yield();
        v84 = 10000;
      }
    }
  }

  v85 = *(v141 + 92);
  v86 = v154 - v151;
  v178 = v20;
  v184 = v69;
  if (v154 - v151 < v149)
  {
    v87 = 0;
    v88 = (v138 << 6) + 64;
    v173 = v17 + v88;
    v89 = v139 + v88;
    v90 = v149;
    v91 = v142;
    do
    {
      v92 = v90 - v86;
      v93 = v91;
      if (v92 >= v91)
      {
        v94 = v91;
      }

      else
      {
        v94 = v92;
      }

      v95 = v86;
      if (v94)
      {
        v96 = v173 + (v86 << 6);
        v97 = v94;
        v98 = (v89 + (v86 << 6));
        do
        {
          physx::Dy::integrateCoreStep(v98, v96, v6, v8, v9);
          v96 += 64;
          v98 += 8;
          --v97;
        }

        while (v97);
      }

      v91 = v93 - v94;
      if (v93 == v94)
      {
        v5 = v170;
        v91 = 128;
        v86 = atomic_fetch_add(v170 + 43, 0x80u) - v151;
      }

      else
      {
        v86 = v94 + v95;
        v5 = v170;
      }

      v20 = v178;
      v87 += v94;
      v90 = v149;
    }

    while (v86 < v149);
    v2 = v159;
    if (v87)
    {
      atomic_fetch_add(v5 + 44, v87);
    }
  }

  v99 = v146 - v168;
  if (v146 - v168 < v157)
  {
    v100 = 0;
    do
    {
      v101 = *(v159 + 12288) + 96 * v99;
      v102 = *(*v101 + 40);
      v103 = physx::Dy::ArticulationPImpl::sUpdateDeltaMotion[v102];
      if (v103)
      {
        v103(v101, v188, v6);
        v102 = *(*v101 + 40);
      }

      v104 = physx::Dy::ArticulationPImpl::sSaveVelocityTGS[v102];
      if (v104)
      {
        v104(v101, v85);
      }

      ++v100;
      v105 = atomic_fetch_add(v170 + 45, 1u);
      v99 = v105 - v168;
    }

    while (v105 - v168 < v157);
    v146 = v105;
    v5 = v170;
    if (v100)
    {
      atomic_fetch_add(v170 + 46, v100);
    }

    v2 = v159;
    v20 = v178;
  }

  v166 = v168 + v157;
  v106 = *(v141 + 432);
  pthread_mutex_lock((v106 + 8));
  *v152 = *v106;
  *v106 = v152;
  result = pthread_mutex_unlock((v106 + 8));
  v108 = v184;
  if (v5[44] < (v151 + v149))
  {
    v109 = 30000;
    while (v5[44] < (v151 + v149))
    {
      if (!--v109)
      {
        result = sched_yield();
        v109 = 10000;
      }
    }
  }

  if (v5[46] < v166)
  {
    v110 = 30000;
    while (v5[46] < v166)
    {
      if (!--v110)
      {
        result = sched_yield();
        v110 = 10000;
      }
    }
  }

  if (v144)
  {
    v156 = 0;
    v111 = v6 + v24;
    v180 = v16;
    do
    {
      if (v5[42] < v20)
      {
        v112 = 30000;
        while (v5[42] < v20)
        {
          if (!--v112)
          {
            result = sched_yield();
            v112 = 10000;
          }
        }
      }

      v113 = v146 - v166;
      if (v146 - v166 < v157)
      {
        v114 = v20;
        v115 = 0;
        do
        {
          v116 = (*(v2 + 12288) + 96 * v113);
          result = (*(**v116 + 272))(*v116, v152[1520], v152[1522], 1, 1, v6, 1.0 / v6, v111);
          if (v144 - v156 == 1)
          {
            result = (*(**v116 + 280))(*v116, 1);
          }

          ++v115;
          v117 = atomic_fetch_add(v5 + 45, 1u);
          v113 = v117 - v166;
        }

        while (v117 - v166 < v157);
        v146 = v117;
        if (v115)
        {
          atomic_fetch_add(v5 + 46, v115);
        }

        v20 = v114;
      }

      v166 += v157;
      if (v5[46] < v166)
      {
        v118 = 30000;
        while (v5[46] < v166)
        {
          if (!--v118)
          {
            result = sched_yield();
            v118 = 10000;
          }
        }
      }

      if (v160)
      {
        v119 = 0;
        v169 = 0;
        do
        {
          if (v5[42] < v20)
          {
            v120 = 30000;
            while (v5[42] < v20)
            {
              if (!--v120)
              {
                result = sched_yield();
                v120 = 10000;
              }
            }
          }

          v121 = v108 - v20;
          v122 = *(v158 + 4 * v119);
          if (v108 - v20 >= v122)
          {
            v124 = v167;
          }

          else
          {
            v163 = v119;
            v179 = v20;
            v123 = 0;
            v124 = v167;
            v185 = v122;
            do
            {
              v125 = v108;
              v126 = v124;
              if (v122 - v121 >= v124)
              {
                v127 = v124;
              }

              else
              {
                v127 = v122 - v121;
              }

              if (v127)
              {
                v128 = v153 + 8 * v169 + 8 * v121;
                v129 = v127;
                do
                {
                  result = (physx::Dy::g_SolveTGSMethods[*(v128 + 6)])(v128, v180, v17, v186, 0.0, v111);
                  v128 += 8;
                  --v129;
                }

                while (v129);
              }

              v124 = v126 - v127;
              if (v126 == v127)
              {
                v124 = 4;
                v108 = atomic_fetch_add(v170 + 41, 4u);
                v121 = v108 - v179;
              }

              else
              {
                v108 = v127 + v125;
                v121 += v127;
              }

              v122 = v185;
              v123 += v127;
            }

            while (v121 < v185);
            v5 = v170;
            if (v123)
            {
              atomic_fetch_add(v170 + 42, v123);
            }

            LODWORD(v20) = v179;
            v119 = v163;
            v16 = v180;
          }

          v20 = v122 + v20;
          v167 = v124;
          v169 += v122;
          ++v119;
          v2 = v159;
        }

        while (v119 != v160);
      }

      ++v156;
    }

    while (v156 != v144);
  }

  if (v5[42] < v20)
  {
    v130 = 30000;
    while (v5[42] < v20)
    {
      if (!--v130)
      {
        result = sched_yield();
        v130 = 10000;
      }
    }
  }

  v131 = v108 - v20;
  if (v131 < v140)
  {
    v132 = 0;
    v133 = v167;
    do
    {
      v134 = v133;
      if (v140 - v131 >= v133)
      {
        v135 = v133;
      }

      else
      {
        v135 = v140 - v131;
      }

      if (v135)
      {
        v136 = v153 + 8 * v131;
        v137 = v135;
        do
        {
          result = (physx::Dy::g_WritebackTGSMethods[*(v136 + 6)])(v136, v16, 0);
          v136 += 8;
          --v137;
        }

        while (v137);
      }

      v133 = v134 - v135;
      if (v134 == v135)
      {
        v133 = 4;
        v131 = atomic_fetch_add(v170 + 41, 4u) - v20;
      }

      else
      {
        v131 += v135;
      }

      v132 += v135;
    }

    while (v131 < v140);
    if (v132)
    {
      atomic_fetch_add(v170 + 42, v132);
    }
  }

  return result;
}

void physx::Dy::FinishSolveIslandTask::~FinishSolveIslandTask(physx::Dy::FinishSolveIslandTask *this)
{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
}

{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
  JUMPOUT(0x1E6906520);
}

uint64_t physx::Dy::FinishSolveIslandTask::runInternal(physx::Dy::FinishSolveIslandTask *this)
{
  v1 = *(this + 8);
  v2 = *(this + 9);
  v3 = *(this + 5);
  v4 = *(this + 6);
  v5 = *(this + 7);
  v6 = *(this + 3);
  result = physx::PxcNpMemBlockPool::releaseConstraintBlocks(*(v3 + 11864), v3 + 11848);
  *(v3 + 11880) = 0;
  *(v3 + 11888) = 0;
  if (*v5)
  {
    v8 = 0;
    v9 = v1 + 224;
    do
    {
      v10 = physx::Cm::FlushPool::allocate(*(v2 + 776), 104, 0x10u);
      v11 = v10;
      v12 = *(v4 + 112);
      v13 = *(v2 + 576) + (v12 << 6);
      v14 = *(v2 + 592) + (v12 << 6);
      v15 = *(v2 + 608) + 48 * v12;
      v16 = *(v2 + 92);
      v17 = v8 + 512;
      v18 = *v5;
      if (v8 + 512 < *v5)
      {
        v18 = v8 + 512;
      }

      *(v10 + 8) = *(v2 + 800);
      *(v10 + 16) = 0;
      *(v10 + 32) = 0;
      v19 = &unk_1F5D1DF68;
      *v10 = &unk_1F5D1DF68;
      *(v10 + 40) = v4;
      *(v10 + 48) = v13;
      *(v10 + 56) = v14;
      *(v10 + 64) = v15;
      *(v10 + 72) = v16;
      *(v10 + 80) = v9;
      *(v10 + 88) = v8;
      *(v10 + 92) = v18;
      *(v10 + 96) = v2;
      *(v10 + 32) = 1;
      *(v10 + 24) = v6;
      if (v6)
      {
        (*(*v6 + 32))(v6);
        v11[2] = *(v11[3] + 16);
        v19 = *v11;
      }

      result = v19[5](v11);
      v8 += 512;
    }

    while (v17 < *v5);
  }

  if ((v5[1] & 0x7FFFFFFF) != 0)
  {
    v20 = 0;
    do
    {
      v21 = physx::Cm::FlushPool::allocate(*(v2 + 776), 72, 0x10u);
      v22 = v21;
      v23 = v5[1] & 0x7FFFFFFF;
      v24 = v20 + 64;
      if (v23 >= v20 + 64)
      {
        v23 = v20 + 64;
      }

      v25 = *(v2 + 88);
      *(v21 + 8) = *(v2 + 800);
      *(v21 + 16) = 0;
      *(v21 + 32) = 0;
      v26 = &unk_1F5D1DFD8;
      *v21 = &unk_1F5D1DFD8;
      *(v21 + 40) = v3;
      *(v21 + 48) = v20;
      *(v21 + 52) = v23;
      *(v21 + 56) = v25;
      *(v21 + 64) = v2;
      *(v21 + 32) = 1;
      *(v21 + 24) = v6;
      if (v6)
      {
        (*(*v6 + 32))(v6);
        v22[2] = *(v22[3] + 16);
        v26 = *v22;
      }

      result = v26[5](v22);
      v20 += 64;
    }

    while (v24 < (v5[1] & 0x7FFFFFFF));
  }

  return result;
}

void physx::Dy::EndIslandTask::~EndIslandTask(physx::Dy::EndIslandTask *this)
{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
}

{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
  JUMPOUT(0x1E6906520);
}

uint64_t physx::Dy::EndIslandTask::runInternal(physx::Dy::EndIslandTask *this)
{
  v1 = *(this + 5);
  v2 = *(*(this + 6) + 432);
  pthread_mutex_lock((v2 + 8));
  *v1 = *v2;
  *v2 = v1;

  return pthread_mutex_unlock((v2 + 8));
}

uint64_t physx::shdfnd::Array<physx::PxSolverConstraintDesc,physx::shdfnd::ReflectionAllocator<physx::PxSolverConstraintDesc>>::recreate(uint64_t result, unsigned int a2)
{
  v3 = result;
  if (a2)
  {
    result = physx::shdfnd::ReflectionAllocator<physx::PxSolverConstraintDesc>::allocate(result, 48 * a2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v4 = result;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v3 + 8);
  v6 = *v3;
  if (v5)
  {
    v7 = &v4[3 * v5];
    v8 = v4;
    do
    {
      v9 = *v6;
      v10 = v6[2];
      v8[1] = v6[1];
      v8[2] = v10;
      *v8 = v9;
      v8 += 3;
      v6 += 3;
    }

    while (v8 < v7);
    v6 = *v3;
  }

  if ((*(v3 + 12) & 0x80000000) == 0 && v6)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *v3 = v4;
  *(v3 + 12) = a2;
  return result;
}

uint64_t physx::shdfnd::Array<physx::Dy::ArticulationSolverDesc,physx::shdfnd::ReflectionAllocator<physx::Dy::ArticulationSolverDesc>>::recreate(uint64_t result, unsigned int a2)
{
  v3 = result;
  if (a2)
  {
    v4 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v5 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Dy::ArticulationSolverDesc>::getName() [T = physx::Dy::ArticulationSolverDesc]";
    }

    else
    {
      v5 = "<allocation names disabled>";
    }

    result = (*(*(v4 + 24) + 16))(v4 + 24, 96 * a2, v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v6 = result;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v3 + 8);
  v8 = *v3;
  if (v7)
  {
    v9 = &v6[6 * v7];
    v10 = v6;
    do
    {
      v11 = v8[1];
      *v10 = *v8;
      v10[1] = v11;
      v12 = v8[2];
      v13 = v8[3];
      v14 = v8[5];
      v10[4] = v8[4];
      v10[5] = v14;
      v10[2] = v12;
      v10[3] = v13;
      v10 += 6;
      v8 += 6;
    }

    while (v10 < v9);
    v8 = *v3;
  }

  if ((*(v3 + 12) & 0x80000000) == 0 && v8)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *v3 = v6;
  *(v3 + 12) = a2;
  return result;
}

uint64_t physx::shdfnd::Array<physx::PxTGSSolverBodyVel,physx::shdfnd::AlignedAllocator<128u,physx::shdfnd::ReflectionAllocator<physx::PxTGSSolverBodyVel>>>::recreate(unint64_t *a1, unsigned int a2)
{
  v4 = a2 << 6;
  v5 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v6 = "static const char *physx::shdfnd::ReflectionAllocator<physx::PxTGSSolverBodyVel>::getName() [T = physx::PxTGSSolverBodyVel]";
  }

  else
  {
    v6 = "<allocation names disabled>";
  }

  result = (*(*(v5 + 24) + 16))(v5 + 24, v4 + 135, v6, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
  if (result)
  {
    v8 = (result + 135) & 0xFFFFFFFFFFFFFF80;
    *(v8 - 8) = v8 - result;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 2);
  if (v9)
  {
    v10 = v8 + (v9 << 6);
    v11 = *a1;
    v12 = v8;
    do
    {
      *v12 = *v11;
      *(v12 + 8) = *(v11 + 8);
      *(v12 + 12) = *(v11 + 12);
      *(v12 + 16) = *(v11 + 16);
      *(v12 + 24) = *(v11 + 24);
      *(v12 + 28) = *(v11 + 28);
      *(v12 + 32) = *(v11 + 32);
      *(v12 + 48) = *(v11 + 48);
      *(v12 + 56) = *(v11 + 56);
      *(v12 + 60) = *(v11 + 60);
      v12 += 64;
      v11 += 64;
    }

    while (v12 < v10);
  }

  if ((*(a1 + 3) & 0x80000000) == 0 && *a1)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, *a1 - *(*a1 - 8));
  }

  *a1 = v8;
  *(a1 + 3) = a2;
  return result;
}

uint64_t physx::shdfnd::Array<physx::PxTGSSolverBodyTxInertia,physx::shdfnd::AlignedAllocator<128u,physx::shdfnd::ReflectionAllocator<physx::PxTGSSolverBodyTxInertia>>>::recreate(unint64_t *a1, unsigned int a2)
{
  v4 = a2 << 6;
  v5 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v6 = "static const char *physx::shdfnd::ReflectionAllocator<physx::PxTGSSolverBodyTxInertia>::getName() [T = physx::PxTGSSolverBodyTxInertia]";
  }

  else
  {
    v6 = "<allocation names disabled>";
  }

  result = (*(*(v5 + 24) + 16))(v5 + 24, v4 + 135, v6, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
  if (result)
  {
    v8 = (result + 135) & 0xFFFFFFFFFFFFFF80;
    *(v8 - 8) = v8 - result;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 2);
  v10 = *a1;
  if (v9)
  {
    v11 = v8 + (v9 << 6);
    v12 = *a1;
    v13 = v8;
    do
    {
      *v13 = *v12;
      *(v13 + 16) = *(v12 + 16);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 32) = *(v12 + 32);
      *(v13 + 40) = *(v12 + 40);
      *(v13 + 48) = *(v12 + 48);
      *(v13 + 56) = *(v12 + 56);
      v13 += 64;
      v12 += 64;
    }

    while (v13 < v11);
  }

  if ((*(a1 + 3) & 0x80000000) == 0 && v10)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v10 - *(v10 - 8));
  }

  *a1 = v8;
  *(a1 + 3) = a2;
  return result;
}

uint64_t physx::shdfnd::Array<physx::PxTGSSolverBodyData,physx::shdfnd::AlignedAllocator<128u,physx::shdfnd::ReflectionAllocator<physx::PxTGSSolverBodyData>>>::recreate(unint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = 48 * a2;
  v5 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance, a2))
  {
    v6 = "static const char *physx::shdfnd::ReflectionAllocator<physx::PxTGSSolverBodyData>::getName() [T = physx::PxTGSSolverBodyData]";
  }

  else
  {
    v6 = "<allocation names disabled>";
  }

  result = (*(*(v5 + 24) + 16))(v5 + 24, v4 + 135, v6, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
  if (result)
  {
    v8 = (result + 135) & 0xFFFFFFFFFFFFFF80;
    *(v8 - 8) = v8 - result;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 2);
  if (v9)
  {
    v10 = v8 + 48 * v9;
    v11 = *a1;
    v12 = v8;
    do
    {
      *v12 = *v11;
      *(v12 + 16) = *(v11 + 16);
      *(v12 + 24) = *(v11 + 24);
      v13 = *(v11 + 28);
      *(v12 + 44) = *(v11 + 44);
      *(v12 + 28) = v13;
      v12 += 48;
      v11 += 48;
    }

    while (v12 < v10);
  }

  if ((*(a1 + 3) & 0x80000000) == 0 && *a1)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, *a1 - *(*a1 - 8));
  }

  *a1 = v8;
  *(a1 + 3) = v2;
  return result;
}

void *physx::Sc::ActorSim::setActorsInteractionsDirty(void *result, char a2, uint64_t a3, int a4)
{
  v4 = *(result + 13);
  if (v4)
  {
    v8 = result[5];
    do
    {
      v10 = *v8++;
      v9 = v10;
      if (!a3 || *v9 == a3 || *(v9 + 8) == a3)
      {
        v11 = *(v9 + 29);
        if ((v11 & a4) != 0)
        {
          *(v9 + 30) |= a2;
          if ((v11 & 8) == 0)
          {
            result = physx::Sc::Interaction::addToDirtyList(v9);
            *(v9 + 29) |= 8u;
          }
        }
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t physx::Cm::OwnedArray<physx::Sc::Interaction *,physx::Sc::ActorSim,unsigned int,&physx::Sc::ActorSim::reallocInteractions>::releaseMem(uint64_t result, uint64_t a2)
{
  v3 = result;
  *(result + 12) = 0;
  v4 = *result;
  if (*result)
  {
    v5 = v4 == (a2 + 8);
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    result = physx::Sc::Scene::deallocatePointerBlock(*(a2 + 72), v4, *(result + 8));
  }

  *(v3 + 8) = 0;
  *v3 = 0;
  return result;
}

void physx::Sc::ActorSim::~ActorSim(physx::Sc::ActorSim *this)
{
  *this = &unk_1F5D1E668;
  physx::Cm::OwnedArray<physx::Sc::Interaction *,physx::Sc::ActorSim,unsigned int,&physx::Sc::ActorSim::reallocInteractions>::releaseMem(this + 40, this);
}

{
  *this = &unk_1F5D1E668;
  physx::Cm::OwnedArray<physx::Sc::Interaction *,physx::Sc::ActorSim,unsigned int,&physx::Sc::ActorSim::reallocInteractions>::releaseMem(this + 40, this);
  v1 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

  v1();
}

physx::Sc::Scene **physx::Sc::ActorSim::registerInteractionInActor(physx::Sc::ActorSim *this, physx::Sc::Interaction *a2)
{
  v5 = a2;
  v3 = *(this + 13);
  result = physx::Cm::OwnedArray<physx::Sc::Interaction *,physx::Sc::ActorSim,unsigned int,&physx::Sc::ActorSim::reallocInteractions>::pushBack(this + 5, &v5, this);
  if (*v5 == this)
  {
    *(v5 + 5) = v3;
  }

  else
  {
    *(v5 + 6) = v3;
  }

  return result;
}

physx::Sc::Scene **physx::Cm::OwnedArray<physx::Sc::Interaction *,physx::Sc::ActorSim,unsigned int,&physx::Sc::ActorSim::reallocInteractions>::pushBack(physx::Sc::Scene **result, uint64_t *a2, physx::Sc::Scene **this)
{
  v4 = result;
  v5 = *(result + 3);
  if (v5 == *(result + 2))
  {
    result = physx::Sc::ActorSim::reallocInteractions(this, result, result + 2, v5, v5 + 1);
    v5 = *(v4 + 3);
  }

  v6 = *a2;
  v7 = *v4;
  *(v4 + 3) = v5 + 1;
  *(v7 + v5) = v6;
  return result;
}

uint64_t physx::Sc::ActorSim::unregisterInteractionFromActor(uint64_t result, void *a2)
{
  v2 = 24;
  if (*a2 == result)
  {
    v2 = 20;
  }

  v3 = *(a2 + v2);
  v4 = *(result + 40);
  v5 = *(result + 52) - 1;
  *(result + 52) = v5;
  *(v4 + 8 * v3) = *(v4 + 8 * v5);
  if (v3 < v5)
  {
    v6 = *(*(result + 40) + 8 * v3);
    if (*v6 == result)
    {
      *(v6 + 20) = v3;
    }

    else
    {
      *(v6 + 24) = v3;
    }
  }

  return result;
}

physx::Sc::Scene **physx::Sc::ActorSim::reallocInteractions(physx::Sc::Scene **this, physx::Sc::Interaction ***a2, unsigned int *a3, int a4, unsigned int a5)
{
  v8 = this;
  if (a5)
  {
    if (a5 > 4)
    {
      v11 = (a5 - 1) | ((a5 - 1) >> 1) | (((a5 - 1) | ((a5 - 1) >> 1)) >> 2);
      v12 = v11 | (v11 >> 4) | ((v11 | (v11 >> 4)) >> 8);
      v10 = (v12 | HIWORD(v12)) + 1;
      this = physx::Sc::Scene::allocatePointerBlock(this[9], v10);
      v9 = this;
    }

    else
    {
      v9 = this + 1;
      v10 = 4;
    }
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  if (*a2)
  {
    this = memcpy(v9, *a2, (8 * a4));
    if (*a2 != (v8 + 8))
    {
      this = physx::Sc::Scene::deallocatePointerBlock(*(v8 + 72), *a2, *a3);
    }
  }

  *a3 = v10;
  *a2 = v9;
  return this;
}

unsigned __int16 *physx::Sc::ArticulationSim::createDriveCache(physx::Sc::ArticulationSim *this, float a2, unsigned __int16 a3)
{
  physx::Sc::ArticulationSim::checkResize(this);
  v9 = 0;
  v8 = 0;
  (*(**this + 48))(*this, *(this + 8), &v9 + 4, &v9, &v8);
  if (v9)
  {
    v6 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))();
  }

  else
  {
    v6 = 0;
  }

  physx::Dy::PxvArticulationDriveCache::initialize(v6, *(this + 16), *(this + 3), a3, *(*this + 128), *(*this + 142), a2);
  return v6;
}

void physx::Sc::ArticulationSim::updateDriveCache(uint64_t a1, unsigned __int16 *a2, unsigned __int16 a3, float a4)
{
  physx::Sc::ArticulationSim::checkResize(a1);
  v8 = *(a1 + 32);
  v9 = *(a1 + 24);
  v10 = *(*a1 + 128);
  v11 = *(*a1 + 142);

  physx::Dy::PxvArticulationDriveCache::initialize(a2, v8, v9, a3, v10, v11, a4);
}

void physx::Sc::ArticulationSim::applyImpulse(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v31[255] = *MEMORY[0x1E69E9840];
  v11 = *(v9 + 32);
  bzero(v29, (32 * v11));
  bzero(&v30, (32 * v11));
  v14 = *(v10 + 48);
  if (v14)
  {
    v15 = 0;
    while (*(*(v10 + 40) + 8 * v15) != *v8)
    {
      if (v14 == ++v15)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v15 = 0x80000000;
  }

  v12.i64[0] = *v4;
  v16.i64[0] = vnegq_f32(v12).u64[0];
  v16.f32[2] = -*(v4 + 8);
  v13.i64[0] = *v2;
  v17.i64[0] = vnegq_f32(v13).u64[0];
  v17.f32[2] = -*(v2 + 8);
  v16.i32[3] = 0;
  v18 = &v29[2 * v15];
  v17.i32[3] = 0;
  *v18 = v16;
  v18[1] = v17;
  physx::Dy::Articulation::applyImpulses(v6, v29, &v30);
  if (v11)
  {
    v19 = 0;
    v20 = v31;
    do
    {
      v21 = *(*(*(v10 + 40) + 8 * v19) + 80);
      v22 = *(v20 - 1);
      v26 = *v20;
      v23 = COERCE_FLOAT(v20[1]);
      v24 = *(&v22 + 2) + v21[11].f32[0];
      v27 = vadd_f32(*&v22, v21[10]);
      v28 = v24;
      physx::Sc::BodyCore::setLinearVelocity(v21, &v27);
      v25 = v23 + v21[13].f32[0];
      v27 = vadd_f32(*&v26, v21[12]);
      v28 = v25;
      physx::Sc::BodyCore::setAngularVelocity(v21, &v27);
      ++v19;
      v20 += 4;
    }

    while (v19 < *(v10 + 32));
  }
}

__n128 physx::Sc::ArticulationSim::computeImpulseResponse(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(a1 + 48);
  if (v9)
  {
    v11 = 0;
    v12 = *a2;
    while (*(*(a1 + 40) + 8 * v11) != v12)
    {
      if (v9 == ++v11)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    LODWORD(v11) = 0x80000000;
  }

  v13.i64[0] = *a6;
  v13.i64[1] = *(a6 + 8);
  v14.i64[0] = *a7;
  v14.i64[1] = *(a7 + 8);
  v17[0] = v13;
  v17[1] = v14;
  physx::Dy::ArticulationHelper::getImpulseResponse(a5, v11, v17, v18);
  result = v18[0];
  v16 = v18[1];
  *a3 = v18[0].i64[0];
  *(a3 + 8) = result.n128_u32[2];
  *a4 = v16.i64[0];
  *(a4 + 8) = v16.i32[2];
  return result;
}

void *physx::Sc::ArticulationSim::createCache(physx::Sc::ArticulationSim *this)
{
  physx::Sc::ArticulationSim::checkResize(this);
  v2 = (*(**this + 56))();
  v3 = *(this + 8);
  v4 = (24 * v2 + 240) * v3 + (4 * v2 + 16) * v2;
  v5 = (v4 + 196);
  if (v4 == -196)
  {
    v6 = 0;
  }

  else
  {
    v6 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v5, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/simulationcontroller/src/ScArticulationSim.cpp", 524);
  }

  bzero(v6, v5);
  v7 = (*(**this + 56))();
  v8 = 32 * v3 + 120;
  *v6 = v6 + 15;
  v6[1] = v6 + v8;
  v9 = v8 + 24 * v3 * (v7 + 6);
  v10 = v9 + 4 * v7 * v7;
  v6[2] = v6 + v9;
  v6[3] = v6 + v10;
  LODWORD(v9) = v10 + 4 * v7;
  v11 = v6 + (v9 & 0xFFFFFFFC);
  LODWORD(v9) = v9 + 4 * v7;
  v6[4] = v11;
  v6[5] = v6 + (v9 & 0xFFFFFFFC);
  LODWORD(v9) = v9 + 4 * v7;
  v12 = v6 + (v9 & 0xFFFFFFFC);
  LODWORD(v9) = v9 + 4 * v7;
  v6[6] = v12;
  v6[7] = v6 + (v9 & 0xFFFFFFFC);
  LODWORD(v9) = v9 + 32 * v3;
  v6[8] = v6 + (v9 & 0xFFFFFFFC);
  v6[9] = v6 + ((v9 + 32 * v3) & 0xFFFFFFFC);
  v6[10] = 0;
  v6[11] = 0;
  v13 = 20 * (*(**this + 56))() + 272 * *(this + 8);
  if (v13)
  {
    v14 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v13, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/simulationcontroller/src/ScArticulationSim.cpp", 567);
  }

  else
  {
    v14 = 0;
  }

  v6[12] = v14;
  v15 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 40, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/simulationcontroller/src/ScArticulationSim.cpp", 570);
  v16 = physx::PxcScratchAllocator::PxcScratchAllocator(v15);
  v6[13] = v16;
  physx::PxcScratchAllocator::setBlock(v16, v14, v13);
  return v6;
}

uint64_t physx::Sc::ArticulationCore::getCacheDataSize(physx::Sc::ArticulationCore *this)
{
  v1 = *this;
  if (!*this)
  {
    return 0;
  }

  v2 = (*(**v1 + 56))();
  return ((24 * v2 + 240) * v1[8] + (4 * v2 + 16) * v2 + 76);
}

void physx::Sc::ArticulationCore::zeroCache(_DWORD **a1, void **a2)
{
  v2 = *a1;
  if (*a1)
  {
    v4 = (*(**v2 + 56))();
    v5 = ((24 * v4 + 240) * v2[8] + (4 * v4 + 16) * v4 + 76);
    v6 = *a2;

    bzero(v6, v5);
  }
}

uint64_t physx::Sc::ArticulationSim::applyCache(void *a1, uint64_t a2, char *a3)
{
  v4 = *a1;
  v6 = *a3;
  result = (*(*v4 + 72))(v4, a2, &v6);
  if (result)
  {
    return (*(**(a1[1] + 1904) + 128))(*(a1[1] + 1904), *a1, a1 + 9);
  }

  return result;
}

uint64_t physx::Sc::ArticulationSim::releaseCache(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 104);
  if (v3)
  {
    v4 = *(v3 + 20);
    if ((v4 & 0x80000000) == 0 && (v4 & 0x7FFFFFFF) != 0 && *(v3 + 8) != 0)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    physx::shdfnd::MutexT<physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>>::~MutexT(v3);
    if (*(a2 + 104))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    *(a2 + 104) = 0;
  }

  if (*(a2 + 96))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    *(a2 + 96) = 0;
  }

  v6 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

  return v6();
}

uint64_t physx::Sc::ArticulationCore::computeLambda(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v6 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v8 = *a5;
  v9 = *(a5 + 2);
  return (*(**v6 + 176))(*v6, v6[10], *(v6 + 22), a2, a3, a4, &v8, a6);
}

double physx::Sc::ArticulationSim::getLinkVelocity@<D0>(physx::Sc::ArticulationSim *this@<X0>, _OWORD *a2@<X8>)
{
  (*(**this + 360))(v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

double physx::Sc::ArticulationSim::getLinkAcceleration@<D0>(physx::Sc::ArticulationSim *this@<X0>, _OWORD *a2@<X8>)
{
  (*(**this + 368))(v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

void **physx::Sc::ArticulationCore::setGlobalPose(void **this)
{
  v1 = *this;
  if (*this)
  {
    physx::Sc::ArticulationSim::checkResize(*this);
    v2 = *(**v1 + 200);

    return v2();
  }

  return this;
}

uint64_t physx::Sc::ArticulationJointCore::ArticulationJointCore(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *a1 = 0;
  *(a1 + 272) = 1120403456;
  *(a1 + 8) = xmmword_1E30474D0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 48) = xmmword_1E3047670;
  *(a1 + 340) = 1028443341;
  *(a1 + 278) = 3;
  v5 = a1 + 266;
  *(a1 + 270) = 0;
  *(a1 + 266) = 0;
  *(a1 + 276) = 256;
  *(a1 + 8) = *a2;
  *&v6 = *(a2 + 16);
  DWORD2(v6) = *(a2 + 24);
  HIDWORD(v6) = *a3;
  *(a1 + 24) = v6;
  *(a1 + 40) = *(a3 + 4);
  *(a1 + 56) = *(a3 + 20);
  *(a1 + 280) = xmmword_1E30474D0;
  *(a1 + 338) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0x3F80000000000000;
  *(a1 + 320) = 0x3D4CCCCD3F800000;
  if (a4)
  {
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0u;
    v7 = (a1 + 208);
    *(a1 + 64) = 0u;
    v8 = a1 + 124;
    v9 = 6;
    do
    {
      *(v8 - 12) = 0;
      *(v8 - 4) = 0x400000000;
      v8 += 16;
      *v7 = 0;
      v7[6] = 0;
      ++v7;
      --v9;
    }

    while (v9);
    *(a1 + 340) = 0;
    *(a1 + 348) = 0;
    *(a1 + 364) = 0;
    *(a1 + 356) = 0;
  }

  else
  {
    *(a1 + 80) = vdup_n_s32(0x3F490FDBu);
    *(a1 + 324) = 1028443341;
    *(a1 + 64) = xmmword_1E3114670;
    *(a1 + 340) = 1028443341;
    v10 = tanf(0.19635);
    *(a1 + 344) = v10;
    *(a1 + 348) = v10;
    v11 = tanf(0.0125);
    *(a1 + 352) = v11;
    *(a1 + 356) = v10;
    *(a1 + 360) = tanf(-0.19635);
    *(a1 + 364) = v11;
  }

  *(a1 + 336) = 0;
  *(a1 + 328) = 0;
  *(a1 + 256) = 1028443341;
  *(a1 + 278) = 4;
  *v5 = 0;
  *(v5 + 4) = 0;
  return a1;
}

physx::Sc::ArticulationJointSim *physx::Sc::ArticulationJointCore::setParentPose(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *a2;
  *(a1 + 24) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 24);
  *(a1 + 277) |= 2u;
  result = *a1;
  if (result)
  {
    return physx::Sc::ArticulationJointSim::setDirty(result);
  }

  return result;
}

physx::Sc::ArticulationJointSim *physx::Sc::ArticulationJointCore::setChildPose(uint64_t a1, uint64_t a2)
{
  *(a1 + 36) = *a2;
  *(a1 + 52) = *(a2 + 16);
  *(a1 + 60) = *(a2 + 24);
  *(a1 + 277) |= 2u;
  result = *a1;
  if (result)
  {
    return physx::Sc::ArticulationJointSim::setDirty(result);
  }

  return result;
}

uint64_t physx::Sc::ArticulationJointCore::setJointType(uint64_t result, char a2)
{
  *(result + 278) = a2;
  v2 = **(result + 368);
  if (v2)
  {
    v3 = v2[1];
    *(*v2 + 161) = 1;
    return (*(**(v3 + 1904) + 128))();
  }

  return result;
}

uint64_t physx::Sc::ArticulationJointSim::setDirty(physx::Sc::ArticulationJointSim *this)
{
  v1 = **(*(this + 4) + 368);
  v2 = v1[1];
  *(*v1 + 161) = 1;
  (*(**(v2 + 1904) + 128))(*(v2 + 1904));
  v3 = *(**(v1[1] + 1904) + 136);

  return v3();
}

uint64_t physx::Sc::ArticulationJointSim::ArticulationJointSim(uint64_t a1, uint64_t a2, physx::Sc::ArticulationSim **a3, physx::Sc::BodySim *a4)
{
  *a1 = a3;
  *(a1 + 8) = a4;
  *(a1 + 16) = -1;
  *(a1 + 24) = -1;
  *(a1 + 28) = 5;
  *(a1 + 30) = 0;
  *(a1 + 32) = a2;
  physx::Sc::activateInteraction(a1, 0, a3);
  physx::Sc::ActorSim::registerInteractionInActor(*a1, a1);
  physx::Sc::ActorSim::registerInteractionInActor(*(a1 + 8), a1);
  physx::Sc::ArticulationSim::addBody(a3[24], a4, a3, a1);
  **(a1 + 32) = a1;
  return a1;
}

void physx::Sc::ArticulationSim::addBody(physx::Sc::ArticulationSim *this, physx::Sc::BodySim *a2, physx::Sc::BodySim *a3, physx::Sc::ArticulationJointSim *a4)
{
  v43 = a2;
  v44 = a4;
  v8 = *(this + 12);
  if ((*(this + 13) & 0x7FFFFFFFu) <= v8)
  {
    physx::shdfnd::Array<physx::Sc::BodySim *,physx::shdfnd::ReflectionAllocator<physx::Sc::BodySim *>>::growAndPushBack(this + 40, &v43);
  }

  else
  {
    *(*(this + 5) + 8 * v8) = a2;
    *(this + 12) = v8 + 1;
  }

  v9 = *(this + 16);
  if ((*(this + 17) & 0x7FFFFFFFu) <= v9)
  {
    physx::shdfnd::Array<physx::Sc::ArticulationJointSim *,physx::shdfnd::ReflectionAllocator<physx::Sc::ArticulationJointSim *>>::growAndPushBack(this + 56, &v44);
  }

  else
  {
    *(*(this + 7) + 8 * v9) = a4;
    *(this + 16) = v9 + 1;
  }

  (*(**this + 32))(*this, a2);
  v10 = *(this + 8);
  v11 = *(this + 9) & 0x7FFFFFFF;
  v12 = v10;
  if (v11 <= v10)
  {
    if (v11)
    {
      v13 = 2 * *(this + 9);
    }

    else
    {
      v13 = 1;
    }

    physx::shdfnd::Array<physx::Dy::ArticulationLink,physx::shdfnd::ReflectionAllocator<physx::Dy::ArticulationLink>>::recreate(this + 24, v13);
    v12 = *(this + 8);
  }

  v14 = *(this + 3);
  *(this + 8) = v12 + 1;
  v15 = v14 + 40 * v12;
  v16 = *(a2 + 10);
  *(v15 + 16) = v16 + 16;
  *v15 = 0;
  v17 = *(v16 + 176);
  if (!v17 || *(v17 + 31) == 1)
  {
    v17 = 0;
  }

  if (*(v16 + 80) != 0.0 || *(v16 + 84) != 0.0 || *(v16 + 88) != 0.0 || *(v16 + 96) != 0.0 || *(v16 + 100) != 0.0)
  {
    goto LABEL_41;
  }

  v18 = *(v16 + 104);
  v19 = *(a2 + 182);
  v20 = v18 == 0.0 && (v19 & 2) == 0;
  if ((*(a2 + 182) & 2) != 0 && v18 == 0.0)
  {
    if (!v17)
    {
LABEL_65:
      v21 = 1;
      goto LABEL_42;
    }

    if (*v17 == 0.0 && *(v17 + 4) == 0.0 && *(v17 + 8) == 0.0 && *(v17 + 16) == 0.0 && *(v17 + 20) == 0.0)
    {
      v20 = *(v17 + 24) == 0.0;
      goto LABEL_32;
    }

LABEL_41:
    v21 = 0;
    goto LABEL_42;
  }

LABEL_32:
  v21 = (v19 & 4) == 0 && v20;
  if ((*(a2 + 182) & 4) != 0 && v20)
  {
    if (v17)
    {
      if (*(v17 + 32) == 0.0 && *(v17 + 36) == 0.0 && *(v17 + 40) == 0.0 && *(v17 + 48) == 0.0 && *(v17 + 52) == 0.0)
      {
        v21 = *(v17 + 56) == 0.0;
        goto LABEL_42;
      }

      goto LABEL_41;
    }

    goto LABEL_65;
  }

LABEL_42:
  v22 = *(*(this + 2) + 36);
  if (a3)
  {
    v23 = *(this + 5);
    v24 = *(*v23 + 184) > 0xFFFFFFFD;
    v25 = v24 & v21;
    v26 = *(this + 12);
    if (v26)
    {
      v27 = 0;
      while (*(v23 + 8 * v27) != a3)
      {
        if (v26 == ++v27)
        {
          goto LABEL_47;
        }
      }
    }

    else
    {
LABEL_47:
      LODWORD(v27) = 0x80000000;
    }

    *(v15 + 32) = v27;
    v28 = (v14 + 40 * v27);
    v29 = *v28;
    v30 = v28[1] | (1 << v10);
    *(v15 + 8) = v30;
    *(v15 + 24) = *(a4 + 4) + 8;
    *v28 = v29 | (1 << v10);
  }

  else
  {
    v24 = v22 == 0.0;
    v25 = v24 & v21;
    *(v15 + 32) = -1;
    v30 = 1;
    *(v15 + 8) = 1;
    *(v15 + 24) = 0;
  }

  v31 = HIDWORD(v30);
  v32 = vcnt_s8(v30);
  v32.i16[0] = vaddlv_u8(v32);
  v33 = v32.i32[0];
  v34 = vcnt_s8(v31);
  v34.i16[0] = vaddlv_u8(v34);
  v35 = v34.i32[0] + v33;
  if ((v34.i32[0] + v33) <= *(this + 24))
  {
    v35 = *(this + 24);
  }

  *(this + 24) = v35;
  *(*this + 164) = v35;
  if (v24 && (v25 & 1) == 0 && *(this + 12) != 1)
  {
    v36 = 0;
    do
    {
      physx::Sc::BodySim::internalWakeUpArticulationLink(*(*(this + 5) + 8 * v36++), v22);
    }

    while (v36 < (*(this + 12) - 1));
    v16 = *(a2 + 10);
  }

  *(a2 + 24) = this;
  v37 = *(this + 18) & 0xFFFFFF80 | (2 * v10);
  *(a2 + 44) = v37 | 1;
  *(v16 + 156) = v22;
  if ((*(v16 + 44) & 0x20) != 0)
  {
    v38 = *(a2 + 9);
    physx::Cm::BitMapBase<physx::shdfnd::NonTrackingAllocator>::extend(v38 + 7632, (v37 >> 7) + 1);
    *(*(v38 + 7632) + 4 * (v37 >> 12)) |= 1 << (v37 >> 7);
  }

  if (v25)
  {
    v39 = *(a2 + 44);
    if (!*(a2 + 24))
    {
      v40 = *(*(a2 + 9) + 1880);
      physx::IG::IslandSim::deactivateNode(v40 + 224, *(a2 + 44));
      physx::IG::IslandSim::deactivateNode(v40 + 864, v39);
      v39 = *(a2 + 44);
    }

    physx::IG::SimpleIslandManager::putNodeToSleep(*(*(a2 + 9) + 1880), v39);
    physx::Sc::BodySim::setActive(a2, 0, 0);
  }

  else
  {
    physx::Sc::BodySim::setActive(a2, 1, 0);
    v41 = *(*(a2 + 9) + 1880);
    v42 = *(a2 + 44);
    physx::IG::IslandSim::activateNode(v41 + 224, v42);
    physx::IG::IslandSim::activateNode(v41 + 864, v42);
  }
}

void physx::Sc::ArticulationJointSim::~ArticulationJointSim(physx::Sc::ArticulationJointSim *this)
{
  physx::Sc::ActorSim::unregisterInteractionFromActor(*this, this);
  physx::Sc::ActorSim::unregisterInteractionFromActor(*(this + 1), this);
  physx::Sc::ArticulationSim::removeBody(*(*(this + 1) + 192), *(this + 1));
  **(this + 4) = 0;
}

uint64_t physx::Sc::ArticulationSim::removeBody(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = 0;
    while (*(*(a1 + 40) + 8 * v3) != a2)
    {
      if (v2 == ++v3)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    LODWORD(v3) = 0x80000000;
  }

  *(a2 + 192) = 0;
  *(a2 + 176) = -125;
  v4 = v3;
  v5 = v3 + 1;
  LODWORD(v3) = *(a1 + 32);
  if (v5 < v3)
  {
    v6 = v4 + 1;
    v7 = 40 * v4 + 40;
    do
    {
      v8 = *(a1 + 24);
      v9 = (v8 + v7);
      v10 = v8 + 40 * (v6 - 1);
      v11 = *v9;
      v12 = v9[1];
      *(v10 + 32) = *(v9 + 4);
      *v10 = v11;
      *(v10 + 16) = v12;
      *(*(a1 + 40) + 8 * (v6 - 1)) = *(*(a1 + 40) + 8 * v6);
      *(*(a1 + 56) + 8 * (v6 - 1)) = *(*(a1 + 56) + 8 * v6);
      ++v6;
      v3 = *(a1 + 32);
      v7 += 40;
    }

    while (v6 < v3);
  }

  *(a1 + 96) = 0;
  v13 = 0;
  if (v3)
  {
    v14 = (1 << v4) - 1;
    v15 = ~(v14 | (1 << v4));
    v16 = *(a1 + 24);
    v17 = v3;
    do
    {
      v18 = *(v16 + 32);
      v19 = *(v16 + 8);
      if (v18 != -1 && v18 > v4)
      {
        v19 = v19 & v14 | ((v19 & v15) >> 1);
        *(v16 + 8) = v19;
      }

      *v16 = *v16 & v14 | ((*v16 & v15) >> 1);
      v16 += 40;
      v21 = vpaddl_u8(vcnt_s8(__PAIR64__(v19, HIDWORD(v19))));
      v22 = vpadal_u16(vdup_lane_s32(vpaddl_u16(v21), 1), v21).u32[0];
      if (v22 > v13)
      {
        v13 = v22;
      }

      --v17;
    }

    while (v17);
    *(a1 + 96) = v13;
  }

  *(a1 + 32) = v3 - 1;
  --*(a1 + 48);
  --*(a1 + 64);
  v23 = *a1;
  v23[41] = v13;
  return (*(*v23 + 40))();
}

physx::Sc::ArticulationSim *physx::Sc::ArticulationSim::ArticulationSim(physx::Sc::ArticulationSim *this, physx::Sc::ArticulationCore *a2, physx::IG::SimpleIslandManager **a3, physx::Sc::BodySim **a4)
{
  *this = 0;
  *(this + 1) = a3;
  *(this + 2) = a2;
  *(this + 40) = 0u;
  v8 = this + 40;
  *(this + 24) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = -128;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 24) = 0;
  physx::shdfnd::Array<physx::Dy::ArticulationLink,physx::shdfnd::ReflectionAllocator<physx::Dy::ArticulationLink>>::recreate(this + 24, 0x10u);
  if ((*(this + 17) & 0x7FFFFFF0) == 0)
  {
    physx::shdfnd::Array<physx::Sc::ArticulationJointSim *,physx::shdfnd::ReflectionAllocator<physx::Sc::ArticulationJointSim *>>::recreate(this + 56, 0x10u);
  }

  if ((*(this + 13) & 0x7FFFFFF0) == 0)
  {
    physx::shdfnd::Array<physx::Sc::BodySim *,physx::shdfnd::ReflectionAllocator<physx::Sc::BodySim *>>::recreate(v8, 0x10u);
  }

  physx::Sc::Scene::createLLArticulation(*(this + 1), this);
  *this = v9;
  *(this + 18) = physx::IG::SimpleIslandManager::addArticulation(a3[235], this, v9, 0);
  if (*this)
  {
    *(*this + 161) = 1;
    physx::Sc::ArticulationSim::addBody(this, *a4, 0, 0);
    **(this + 2) = this;
    v13 = *this;
    *(v13 + 32) = *(*(this + 1) + 1888);
    *(v13 + 48) = 0u;
    *(v13 + 64) = 0u;
    *(v13 + 80) = 0u;
    *(v13 + 96) = 0u;
    *(v13 + 112) = a2 + 8;
    *(v13 + 120) = 0;
    *(v13 + 128) = 0;
    *(v13 + 136) = 0;
  }

  else
  {
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 32, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/simulationcontroller/src/ScArticulationSim.cpp", 71, "Articulation: could not allocate low-level resources.", v10, v11, v12, v15);
  }

  return this;
}

void physx::Sc::ArticulationSim::~ArticulationSim(physx::Sc::ArticulationSim *this)
{
  v2 = *this;
  if (*this)
  {
    v3 = 4352;
    if (*(v2 + 40) == 1)
    {
      v3 = 4344;
    }

    v4 = *(*(this + 1) + v3);
    (**v2)(*this);
    --*(v4 + 548);
    v5 = *(v4 + 560);
    *(v4 + 560) = v2;
    *v2 = v5;
    physx::IG::SimpleIslandManager::removeNode(*(*(this + 1) + 1880), *(this + 18));
    **(this + 2) = 0;
  }

  v6 = *(this + 23);
  if ((v6 & 0x80000000) == 0 && (v6 & 0x7FFFFFFF) != 0 && *(this + 10) != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  v8 = *(this + 17);
  if ((v8 & 0x80000000) == 0 && (v8 & 0x7FFFFFFF) != 0 && *(this + 7) != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  v10 = *(this + 13);
  if ((v10 & 0x80000000) == 0 && (v10 & 0x7FFFFFFF) != 0 && *(this + 5))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  v11 = *(this + 9);
  if ((v11 & 0x80000000) == 0 && (v11 & 0x7FFFFFFF) != 0)
  {
    if (*(this + 3))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }
  }
}

uint64_t physx::Sc::ArticulationSim::addLoopConstraint(uint64_t this, physx::Sc::ConstraintSim *a2)
{
  v3 = *(a2 + 13);
  v2 = *(a2 + 14);
  if (v3 && (v4 = *(this + 48), v4))
  {
    v5 = 0;
    while (*(*(this + 40) + 8 * v5) != v3)
    {
      if (v4 == ++v5)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    LODWORD(v5) = 0x80000000;
  }

  LODWORD(v9) = v5;
  if (v2 && (v6 = *(this + 48), v6))
  {
    v7 = 0;
    while (*(*(this + 40) + 8 * v7) != v2)
    {
      if (v6 == ++v7)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    LODWORD(v7) = 0x80000000;
  }

  DWORD1(v9) = v7;
  *(&v9 + 1) = a2;
  v8 = *(this + 88);
  if ((*(this + 92) & 0x7FFFFFFFu) <= v8)
  {
    return physx::shdfnd::Array<physx::Dy::ArticulationLoopConstraint,physx::shdfnd::ReflectionAllocator<physx::Dy::ArticulationLoopConstraint>>::growAndPushBack(this + 80, &v9);
  }

  *(*(this + 80) + 16 * v8) = v9;
  ++*(this + 88);
  return this;
}

void physx::Sc::BodySim::updateCached(uint64_t a1, void *a2)
{
  if ((*(a1 + 124) & 1) == 0)
  {
    for (i = *(a1 + 56); i; i = *i)
    {
      physx::Sc::ShapeSim::updateCached(i, 0, a2);
    }
  }
}

void physx::Sc::ArticulationSim::markShapesUpdated(uint64_t a1, void *a2)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    for (i = 0; i < v2; ++i)
    {
      v6 = *(*(*(a1 + 40) + 8 * i) + 56);
      if (v6)
      {
        do
        {
          v7 = *(v6 + 4);
          if ((v7 & 0x80000000) != 0)
          {
            physx::Cm::BitMapBase<physx::shdfnd::VirtualAllocator>::extend(a2, (v7 & 0x7FFFFFFF) + 1);
            *(*a2 + ((v7 >> 3) & 0xFFFFFFC)) |= 1 << v7;
          }

          v6 = *v6;
        }

        while (v6);
        v2 = *(a1 + 48);
      }
    }
  }
}

void physx::Sc::BodySim::updateContactDistance(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  v4 = *(a1 + 136);
  if ((*(v4 + 28) & 0x20) != 0 && (*(a1 + 124) & 1) == 0)
  {
    v5 = *(a1 + 56);
    if (v5)
    {
      v9 = *(v4 + 80);
      v10 = *(v4 + 88);
      v11 = sqrtf(((*(v4 + 68) * *(v4 + 68)) + (*(v4 + 64) * *(v4 + 64))) + (*(v4 + 72) * *(v4 + 72))) * a4;
      do
      {
        v12 = v9;
        v13 = v10;
        physx::Sc::ShapeSim::updateContactDistance(v5, a2, &v12, a3, v11, a4);
        v5 = *v5;
      }

      while (v5);
    }
  }
}

uint64_t physx::Sc::BodySim::internalWakeUpArticulationLink(uint64_t this, float a2)
{
  v2 = *(this + 80);
  if ((*(v2 + 44) & 1) == 0 && *(v2 + 156) < a2)
  {
    v3 = this;
    *(v2 + 156) = a2;
    (*(**(*(this + 72) + 1904) + 88))(*(*(this + 72) + 1904), *(v2 + 13) == 2, this + 176);
    physx::Sc::BodySim::setActive(v3, 1, 0);
    v4 = *(*(v3 + 72) + 1880);
    v5 = *(v3 + 176);
    physx::IG::IslandSim::activateNode(v4 + 224, v5);
    this = physx::IG::IslandSim::activateNode(v4 + 864, v5);
    *(v3 + 124) &= ~1u;
  }

  return this;
}

void *physx::Sc::ArticulationSim::checkResize(void *this)
{
  if (*(this + 12))
  {
    v1 = *this;
    v2 = *(this + 8);
    v3 = this[3];
    (*(**this + 24))(*this, v2);
    *(v1 + 56) = v3;
    *(v1 + 140) = v2;
    v4 = *(*v1 + 16);

    return v4(v1);
  }

  return this;
}

void *physx::Sc::ArticulationSim::sleepCheck(void *this, float a2)
{
  if (!*(this + 12))
  {
    return this;
  }

  v2 = this;
  if (*(*this[5] + 184) > 0xFFFFFFFD)
  {
    return this;
  }

  v3 = this[2];
  if (!*(this + 8))
  {
    *(v3 + 36) = 0;
LABEL_57:
    v51 = *(*(v2 + 8) + 1880);
    v52 = *(v2 + 72);
    physx::IG::IslandSim::deactivateNode(v51 + 224, v52);
    return physx::IG::IslandSim::deactivateNode(v51 + 864, v52);
  }

  v5 = 0;
  v6 = *(v3 + 28);
  v7 = 3.4028e38;
  v8 = 0.0;
  do
  {
    this = (*(**v2 + 360))(&v53);
    v9 = *(*(v2 + 40) + 8 * v5);
    v10 = v9[10];
    v11 = *(*&v10 + 156);
    v12 = v9[18];
    v13 = v9[19].f32[0];
    v14 = v9[20].f32[0];
    v15 = v9[20].f32[1];
    v16 = v9[21].f32[0];
    if (v11 >= 0.2 && v11 >= a2)
    {
      goto LABEL_30;
    }

    v18 = *(*&v10 + 176);
    if (v18 && *(v18 + 31) == 1)
    {
      v19 = (v18 + 32);
    }

    else
    {
      v19 = (*&v10 + 128);
    }

    v20 = v19[1];
    v21 = v19[2];
    if (*v19 <= 0.0)
    {
      v22 = 1.0;
    }

    else
    {
      v22 = 1.0 / *v19;
    }

    if (v20 <= 0.0)
    {
      v23 = 1.0;
    }

    else
    {
      v23 = 1.0 / v20;
    }

    if (v21 <= 0.0)
    {
      v24 = 1.0;
    }

    else
    {
      v24 = 1.0 / v21;
    }

    if (v18 && *(v18 + 31) == 1)
    {
      v25 = (v18 + 44);
    }

    else
    {
      v25 = (*&v10 + 140);
    }

    v27 = *(*&v10 + 24);
    v26 = *(*&v10 + 28);
    v28 = (v26 * v26) + -0.5;
    v29 = *(*&v10 + 16);
    v30 = *(*&v10 + 20);
    v31 = (((v56 + v56) * v30) + (v29 * (v55 + v55))) + (v27 * (v57 + v57));
    v12 = vadd_f32(v12, v53);
    v13 = v13 + v54;
    v14 = v14 + ((((v55 + v55) * v28) - (((v30 * (v57 + v57)) - (v27 * (v56 + v56))) * v26)) + (v29 * v31));
    v15 = v15 + ((((v56 + v56) * v28) - (((v27 * (v55 + v55)) - (v29 * (v57 + v57))) * v26)) + (v30 * v31));
    v16 = v16 + ((((v57 + v57) * v28) - (((v29 * (v56 + v56)) - (v30 * (v55 + v55))) * v26)) + (v27 * v31));
    v32 = *v25;
    if (*v25 == 0.0)
    {
      v32 = 1.0;
    }

    v33 = (((COERCE_FLOAT(vmul_f32(v12, v12).i32[1]) + (v12.f32[0] * v12.f32[0])) + (v13 * v13)) + ((((v23 * (v15 * v15)) + ((v14 * v14) * v22)) + ((v16 * v16) * v24)) * v32)) * 0.5;
    v34 = (*(*&v9[17] + 148) + 1);
    v35 = v6 * v34;
    if (v33 >= (v6 * v34))
    {
      v9[20] = 0;
      v9[21].i32[0] = 0;
      v38 = 1.0;
      v9[18] = 0;
      v9[19].i32[0] = 0;
      if (v35 != 0.0)
      {
        v38 = fminf(v33 / v35, 2.0) * 0.5;
      }

      v36 = ((v34 + -1.0) * a2) + (v38 * 0.4);
      *(*&v10 + 156) = v36;
      if (v11 == 0.0)
      {
        v39 = *(*&v9[9] + 1880);
        v40 = v9[22].u32[0];
        physx::IG::IslandSim::activateNode(v39 + 224, v40);
        this = physx::IG::IslandSim::activateNode(v39 + 864, v40);
      }
    }

    else
    {
LABEL_30:
      v9[18] = v12;
      v9[19].f32[0] = v13;
      v9[20].f32[0] = v14;
      v9[20].f32[1] = v15;
      v9[21].f32[0] = v16;
      v36 = fmaxf(v11 - a2, 0.0);
      *(*&v10 + 156) = v36;
    }

    if (v8 <= v36)
    {
      v8 = v36;
    }

    if (v7 >= v36)
    {
      v7 = v36;
    }

    ++v5;
    v37 = *(v2 + 32);
  }

  while (v5 < v37);
  *(*(v2 + 16) + 36) = v8;
  if (v8 == 0.0)
  {
    if (v37)
    {
      v46 = 0;
      v47 = *(v2 + 40);
      do
      {
        v48 = *(v47 + 8 * v46);
        if (!*(v48 + 192))
        {
          v49 = *(*(v48 + 72) + 1880);
          v50 = *(v48 + 176);
          physx::IG::IslandSim::deactivateNode(v49 + 224, v50);
          physx::IG::IslandSim::deactivateNode(v49 + 864, v50);
          v47 = *(v2 + 40);
          v37 = *(v2 + 32);
          v48 = *(v47 + 8 * v46);
        }

        *(v48 + 160) = 0;
        *(v48 + 168) = 0;
        *(v48 + 144) = 0;
        *(v48 + 152) = 0;
        ++v46;
      }

      while (v46 < v37);
    }

    goto LABEL_57;
  }

  if (v7 == 0.0 && v37 != 0)
  {
    v42 = *(v2 + 40);
    do
    {
      v43 = *v42++;
      v44 = *(v43 + 80);
      v45 = *(v44 + 156);
      if (v45 < 0.000001)
      {
        v45 = 0.000001;
      }

      *(v44 + 156) = v45;
      --v37;
    }

    while (v37);
  }

  return this;
}

uint64_t physx::Sc::BodySim::notifyReadyForSleeping(uint64_t this)
{
  if (!*(this + 192))
  {
    v2 = *(*(this + 72) + 1880);
    v3 = *(this + 176);
    physx::IG::IslandSim::deactivateNode(v2 + 224, v3);

    return physx::IG::IslandSim::deactivateNode(v2 + 864, v3);
  }

  return this;
}

uint64_t physx::Sc::ArticulationSim::internalWakeUp(uint64_t this, float a2)
{
  v3 = *(this + 16);
  if (*(v3 + 36) < a2)
  {
    v4 = this;
    *(v3 + 36) = a2;
    if (*(this + 32))
    {
      v5 = 0;
      do
      {
        this = physx::Sc::BodySim::internalWakeUpArticulationLink(*(*(v4 + 40) + 8 * v5++), a2);
      }

      while (v5 < *(v4 + 32));
    }
  }

  return this;
}

void physx::Sc::ArticulationSim::setActive(physx::Sc::ArticulationSim *this, physx::Sc::Interaction *a2, char a3)
{
  v3 = *(this + 12);
  if (v3)
  {
    v7 = 0;
    do
    {
      v8 = v7 + 1;
      v9 = *(this + 5);
      if (v7 + 1 < v3)
      {
        _X8 = *(v9 + 8 * v7 + 8);
        __asm
        {
          PRFM            #0, [X8]
          PRFM            #0, [X8,#0x80]
        }
      }

      physx::Sc::BodySim::setActive(*(v9 + 8 * v7), a2, a3);
      v3 = *(this + 12);
      v7 = v8;
    }

    while (v8 < v3);
  }
}

void physx::Sc::BodySim::setActive(physx::Sc::BodySim *this, physx::Sc::Interaction *a2, char a3)
{
  if (a3)
  {
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (*(this + 46) < 0xFFFFFFFE == a2)
    {
      return;
    }

    v4 = *(this + 9);
    if (a2)
    {
      physx::Sc::Scene::addToActiveBodyList(v4, this);
LABEL_6:

      physx::Sc::BodySim::activate(this);
      return;
    }

    physx::Sc::Scene::removeFromActiveBodyList(v4, this);
  }

  physx::Sc::BodySim::deactivate(this, a2);
}

unsigned int *physx::Sc::ArticulationSim::updateForces(unsigned int *this, float a2, int a3)
{
  v18 = 0;
  v3 = this[12];
  if (v3)
  {
    v6 = this;
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = v8 + 1;
      v10 = *(v6 + 5);
      if (v8 + 1 < v3)
      {
        _X8 = *(v10 + 8 * v8 + 8);
        __asm
        {
          PRFM            #0, [X8,#0x80]
          PRFM            #0, [X8,#0x100]
        }
      }

      this = physx::Sc::BodySim::updateForces(*(v10 + 8 * v8), 0, 0, &v18, (*(*v6 + 72) + v7), *(*v6 + 40) == 0, a3, a2);
      v3 = v6[12];
      v7 += 32;
      v8 = v9;
    }

    while (v9 < v3);
  }

  return this;
}

uint64_t physx::Sc::BodySim::updateForces(uint64_t result, uint64_t a2, uint64_t a3, _DWORD *a4, float32x2_t *a5, int a6, int a7, float a8)
{
  v8 = *(result + 182);
  if ((v8 & 6) == 0)
  {
    goto LABEL_18;
  }

  v9 = *(*(result + 80) + 176);
  if (!v9 || v9[3].i8[7] == 1)
  {
    goto LABEL_18;
  }

  if (a2)
  {
    v10 = *a4;
    *(a2 + 8 * v10) = result + 96;
    v11 = *(result + 176) >> 7;
    *a4 = v10 + 1;
    *(a3 + 4 * v10) = v11;
  }

  if ((v8 & 4) != 0)
  {
    v12 = v9[4];
    v13 = v9[5].f32[0];
    v14 = v9[6];
    v15 = v9[7].f32[0];
    if (!a6)
    {
      v20 = *(result + 80);
      v20[10] = vadd_f32(v12, v20[10]);
      v20[11].f32[0] = v13 + v20[11].f32[0];
      v20[12] = vadd_f32(v14, v20[12]);
      v20[13].f32[0] = v15 + v20[13].f32[0];
      if ((v8 & 2) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_10;
    }

    *a5 = vmul_n_f32(v12, 1.0 / a8);
    a5[1].f32[0] = (1.0 / a8) * v13;
    a5[2] = vmul_n_f32(v14, 1.0 / a8);
    a5[3].f32[0] = (1.0 / a8) * v15;
  }

  if ((v8 & 2) == 0)
  {
    goto LABEL_18;
  }

LABEL_10:
  v16 = *v9;
  v17 = v9[1].f32[0];
  v18 = v9[2];
  v19 = v9[3].f32[0];
  if (a5)
  {
    *a5 = v16;
    a5[1].f32[0] = v17;
    a5[2] = v18;
    a5[3].f32[0] = v19;
  }

  else
  {
    if (a7 && *(*(*(*(result + 72) + 1880) + 360) + 4 * *(*(*(*(result + 72) + 1880) + 496) + ((*(result + 176) >> 5) & 0x7FFFFFC))))
    {
      a8 = *(result + 172) * a8;
    }

    v21 = *(result + 80);
    v21[10] = vadd_f32(vmul_n_f32(v16, a8), v21[10]);
    v21[11].f32[0] = (v17 * a8) + v21[11].f32[0];
    v21[12] = vadd_f32(vmul_n_f32(v18, a8), v21[12]);
    v21[13].f32[0] = (v19 * a8) + v21[13].f32[0];
  }

LABEL_18:
  v22 = *(*(result + 80) + 176);
  if (*(*(result + 136) + 28) < 0)
  {
    if (v22 && *(v22 + 31) != 1)
    {
      *(v22 + 48) = 0;
      *(v22 + 56) = 0;
      *(v22 + 32) = 0;
      *(v22 + 40) = 0;
    }

    LOBYTE(v23) = v8 & 0xFB;
  }

  else
  {
    if (v22 && *(v22 + 31) != 1)
    {
      *(v22 + 48) = 0;
      *(v22 + 56) = 0;
      *(v22 + 32) = 0;
      *(v22 + 40) = 0;
      *(v22 + 16) = 0;
      *(v22 + 24) = 0;
      *v22 = 0;
      *(v22 + 8) = 0;
    }

    v23 = (v8 & 2) >> 1;
  }

  *(result + 182) = v23;
  return result;
}

float physx::Sc::ArticulationSim::saveLastCCDTransform(physx::Sc::ArticulationSim *this)
{
  v1 = *(this + 12);
  if (v1)
  {
    v2 = (*(this + 5) + 8);
    v3 = 1;
    v4 = *(this + 12);
    do
    {
      if (v3 < v1)
      {
        _X12 = *v2;
        __asm
        {
          PRFM            #0, [X12,#0x80]
          PRFM            #0, [X12,#0x100]
        }
      }

      v12 = *(v2 - 1);
      v13 = *(v12 + 136);
      *(v12 + 96) = *v13;
      *(v12 + 112) = *(v13 + 16);
      result = *(v13 + 24);
      *(v12 + 120) = result;
      ++v2;
      ++v3;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t physx::Sc::BodyCore::setLinearVelocity(uint64_t result, uint64_t a2)
{
  *(result + 80) = *a2;
  *(result + 88) = *(a2 + 8);
  v2 = *result;
  if (*result)
  {
    v3 = *(*(v2 + 80) + 13) == 2;
    v4 = *(*(v2 + 72) + 1904);
    v5 = *(v2 + 176);
    return (*(*v4 + 88))(v4, v3, &v5);
  }

  return result;
}

uint64_t physx::Sc::BodyCore::setAngularVelocity(uint64_t result, uint64_t a2)
{
  *(result + 96) = *a2;
  *(result + 104) = *(a2 + 8);
  v2 = *result;
  if (*result)
  {
    v3 = *(*(v2 + 80) + 13) == 2;
    v4 = *(*(v2 + 72) + 1904);
    v5 = *(v2 + 176);
    return (*(*v4 + 88))(v4, v3, &v5);
  }

  return result;
}

float32x2_t physx::Sc::BodyCore::BodyCore(uint64_t a1, int a2, uint64_t a3)
{
  *a1 = 0;
  *(a1 + 8) = 0xFFFFFF;
  *(a1 + 12) = 1;
  *(a1 + 13) = a2;
  *(a1 + 14) = 0;
  *(a1 + 44) = 0;
  *(a1 + 174) = 0;
  *(a1 + 176) = 0;
  v3 = *(physx::Sc::Physics::mInstance + 4);
  v4 = *physx::Sc::Physics::mInstance * (*physx::Sc::Physics::mInstance * 10000.0);
  v5 = dword_1E3114650[a2 == 1];
  *(a1 + 16) = *a3;
  *(a1 + 32) = *(a3 + 16);
  *(a1 + 40) = *(a3 + 24);
  *(a1 + 44) = 17039616;
  *(a1 + 48) = xmmword_1E30474D0;
  *(a1 + 64) = xmmword_1E3114680;
  *(a1 + 80) = xmmword_1E3114690;
  *(a1 + 96) = xmmword_1E3113790;
  *(a1 + 112) = v5;
  v6 = &dword_1E304E508;
  v7 = vld1_dup_f32(v6);
  *v7.i32 = v4;
  *(a1 + 116) = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(a2 == 1), 0x1FuLL)), 1956496814, v7);
  *(a1 + 124) = xmmword_1E31146A0;
  *(a1 + 140) = 0x749DC5AE3F800000;
  result = vmul_n_f32(vmul_n_f32(0x37D1B7173851B717, v3), v3);
  *(a1 + 148) = result;
  *(a1 + 156) = 1053609164;
  *(a1 + 172) = 0;
  *(a1 + 174) = 0;
  return result;
}

uint64_t physx::Sc::BodyCore::setBody2World(uint64_t result, uint64_t a2)
{
  *(result + 16) = *a2;
  *(result + 32) = *(a2 + 16);
  *(result + 40) = *(a2 + 24);
  v2 = *result;
  if (*result)
  {
    physx::Sc::BodySim::postBody2WorldChange(*result);
    v3 = *(*(v2 + 10) + 13) == 2;
    v4 = *(*(v2 + 9) + 1904);
    v5 = *(v2 + 44);
    return (*(*v4 + 88))(v4, v3, &v5);
  }

  return result;
}

uint64_t physx::Sc::BodySim::postBody2WorldChange(physx::Sc::BodySim *this)
{
  v1 = *(this + 17);
  *(this + 6) = *v1;
  *(this + 14) = *(v1 + 16);
  *(this + 30) = *(v1 + 24);
  return physx::Sc::RigidSim::notifyShapesOfTransformChange(this);
}

uint64_t physx::Sc::BodyCore::setBody2Actor(uint64_t result, float *a2)
{
  v2 = a2[4];
  v3 = a2[5];
  v5 = v3 == 0.0 && v2 == 0.0;
  v6 = a2[6];
  v7 = v5 && v6 == 0.0;
  v8 = *a2;
  v9 = a2[1];
  if (*a2 != 0.0)
  {
    v7 = 0;
  }

  if (v9 != 0.0)
  {
    v7 = 0;
  }

  v10 = a2[2];
  v11 = a2[3];
  if (v10 != 0.0)
  {
    v7 = 0;
  }

  if (v11 != 1.0)
  {
    v7 = 0;
  }

  *(result + 45) = v7;
  *(result + 48) = v8;
  *(result + 52) = v9;
  *(result + 56) = v10;
  *(result + 60) = v11;
  *(result + 64) = v2;
  *(result + 68) = v3;
  *(result + 72) = v6;
  v12 = *result;
  if (*result)
  {
    physx::Sc::RigidSim::notifyShapesOfTransformChange(*result);
    v13 = *(*(v12 + 10) + 13) == 2;
    v14 = *(*(v12 + 9) + 1904);
    v15 = *(v12 + 44);
    return (*(*v14 + 88))(v14, v13, &v15);
  }

  return result;
}

float32_t physx::Sc::BodyCore::addSpatialAcceleration(physx::Sc::BodySim **a1, uint64_t a2, float32x2_t *a3, float32x2_t *a4)
{
  v8 = *a1;
  if (v8)
  {
    physx::Sc::BodySim::notifyAddSpatialAcceleration(v8);
  }

  v10 = a1[22];
  if (!v10 || v10[3].i8[7])
  {
    physx::Sc::BodyCore::setupSimStateData(a1, a2, 0, 0);
    v10 = a1[22];
  }

  v10[1].i8[4] |= 2u;
  if (a3)
  {
    *v10 = vadd_f32(*a3, *v10);
    result = a3[1].f32[0] + v10[1].f32[0];
    v10[1].f32[0] = result;
  }

  if (a4)
  {
    v10[2] = vadd_f32(*a4, v10[2]);
    result = a4[1].f32[0] + v10[3].f32[0];
    v10[3].f32[0] = result;
  }

  return result;
}

void physx::Sc::BodySim::notifyAddSpatialAcceleration(physx::Sc::BodySim *this)
{
  *(this + 182) |= 2u;
  if (*(*(this + 10) + 13) != 2)
  {
    v1 = *(this + 9);
    v2 = *(this + 44);
    physx::Cm::BitMapBase<physx::shdfnd::NonTrackingAllocator>::extend(v1 + 4416, (v2 >> 7) + 1);
    *(*(v1 + 4416) + ((v2 >> 10) & 0x3FFFFC)) |= 1 << (v2 >> 7);
  }
}

uint64_t physx::Sc::BodyCore::setupSimStateData(uint64_t a1, uint64_t a2, int a3, char a4)
{
  v7 = *(a1 + 176);
  if (!v7)
  {
    v7 = *(a2 + 560);
    if (!v7)
    {
      physx::shdfnd::PoolBase<physx::Sc::SimStateData,physx::shdfnd::ReflectionAllocator<physx::Sc::SimStateData>>::allocateSlab(a2);
      v7 = *(a2 + 560);
    }

    *(a2 + 560) = *v7;
    ++*(a2 + 548);
  }

  *(v7 + 32) = 0uLL;
  *(v7 + 48) = 0uLL;
  *v7 = 0uLL;
  *(v7 + 16) = 0uLL;
  if (a3)
  {
    *(v7 + 31) = 1;
    *(v7 + 28) = a4;
    *(v7 + 48) = *(a1 + 120);
    *(v7 + 32) = *(a1 + 128);
    *(v7 + 56) = *(a1 + 112);
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
    *(a1 + 112) = vneg_f32(0x80000000800000);
  }

  *(a1 + 176) = v7;
  return 1;
}

float physx::Sc::BodyCore::setSpatialAcceleration(physx::Sc::BodySim **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  if (v8)
  {
    physx::Sc::BodySim::notifyAddSpatialAcceleration(v8);
  }

  v10 = a1[22];
  if (!v10 || *(v10 + 31))
  {
    physx::Sc::BodyCore::setupSimStateData(a1, a2, 0, 0);
    v10 = a1[22];
  }

  *(v10 + 12) |= 2u;
  if (a3)
  {
    *v10 = *a3;
    result = *(a3 + 8);
    *(v10 + 2) = result;
  }

  if (a4)
  {
    *(v10 + 2) = *a4;
    result = *(a4 + 8);
    *(v10 + 6) = result;
  }

  return result;
}

void physx::Sc::BodyCore::clearSpatialAcceleration(physx::Sc::BodySim **this, int a2, int a3)
{
  v6 = *this;
  if (v6)
  {
    physx::Sc::BodySim::notifyAddSpatialAcceleration(v6);
  }

  v7 = this[22];
  if (v7)
  {
    *(v7 + 12) |= 2u;
    if (a2)
    {
      *v7 = 0;
      *(v7 + 2) = 0;
    }

    if (a3)
    {
      *(v7 + 2) = 0;
      *(v7 + 6) = 0;
    }
  }
}

float32_t physx::Sc::BodyCore::addSpatialVelocity(physx::Sc::BodySim **a1, uint64_t a2, float32x2_t *a3, float32x2_t *a4)
{
  v8 = *a1;
  if (v8)
  {
    physx::Sc::BodySim::notifyAddSpatialVelocity(v8);
  }

  v10 = a1[22];
  if (!v10 || v10[3].i8[7])
  {
    physx::Sc::BodyCore::setupSimStateData(a1, a2, 0, 0);
    v10 = a1[22];
  }

  v10[1].i8[4] |= 4u;
  if (a3)
  {
    v10[4] = vadd_f32(*a3, v10[4]);
    result = a3[1].f32[0] + v10[5].f32[0];
    v10[5].f32[0] = result;
  }

  if (a4)
  {
    v10[6] = vadd_f32(*a4, v10[6]);
    result = a4[1].f32[0] + v10[7].f32[0];
    v10[7].f32[0] = result;
  }

  return result;
}

void physx::Sc::BodySim::notifyAddSpatialVelocity(physx::Sc::BodySim *this)
{
  *(this + 182) |= 4u;
  if (*(*(this + 10) + 13) != 2)
  {
    v1 = *(this + 9);
    v2 = *(this + 44);
    physx::Cm::BitMapBase<physx::shdfnd::NonTrackingAllocator>::extend(v1 + 4416, (v2 >> 7) + 1);
    *(*(v1 + 4416) + ((v2 >> 10) & 0x3FFFFC)) |= 1 << (v2 >> 7);
  }
}

void physx::Sc::BodyCore::clearSpatialVelocity(physx::Sc::BodySim **this, int a2, int a3)
{
  v6 = *this;
  if (v6)
  {
    physx::Sc::BodySim::notifyAddSpatialVelocity(v6);
  }

  v7 = this[22];
  if (v7)
  {
    *(v7 + 12) |= 4u;
    if (a2)
    {
      *(v7 + 4) = 0;
      *(v7 + 10) = 0;
    }

    if (a3)
    {
      *(v7 + 6) = 0;
      *(v7 + 14) = 0;
    }
  }
}

float *physx::Sc::BodyCore::setInverseMass(float *this, float a2)
{
  v4 = *(this + 22);
  if (v4 && *(v4 + 31) == 1)
  {
    *(v4 + 44) = a2;
  }

  else
  {
    this[35] = a2;
    v5 = *this;
    if (*this)
    {
      v9 = v2;
      v10 = v3;
      v6 = *(*(v5 + 80) + 13) == 2;
      v7 = *(*(v5 + 72) + 1904);
      v8 = *(v5 + 176);
      return (*(*v7 + 88))(v7, v6, &v8);
    }
  }

  return this;
}

uint64_t physx::Sc::BodyCore::setInverseInertia(uint64_t result, uint64_t a2)
{
  v4 = *(result + 176);
  if (v4 && *(v4 + 31) == 1)
  {
    *(v4 + 32) = *a2;
    *(v4 + 40) = *(a2 + 8);
  }

  else
  {
    *(result + 128) = *a2;
    *(result + 136) = *(a2 + 8);
    v5 = *result;
    if (*result)
    {
      v9 = v2;
      v10 = v3;
      v6 = *(*(v5 + 80) + 13) == 2;
      v7 = *(*(v5 + 72) + 1904);
      v8 = *(v5 + 176);
      return (*(*v7 + 88))(v7, v6, &v8);
    }
  }

  return result;
}

float *physx::Sc::BodyCore::setLinearDamping(float *this, float a2)
{
  v4 = *(this + 22);
  if (v4 && *(v4 + 31) == 1)
  {
    *(v4 + 48) = a2;
  }

  else
  {
    this[30] = a2;
    v5 = *this;
    if (*this)
    {
      v9 = v2;
      v10 = v3;
      v6 = *(*(v5 + 80) + 13) == 2;
      v7 = *(*(v5 + 72) + 1904);
      v8 = *(v5 + 176);
      return (*(*v7 + 88))(v7, v6, &v8);
    }
  }

  return this;
}

float *physx::Sc::BodyCore::setAngularDamping(float *this, float a2)
{
  v4 = *(this + 22);
  if (v4 && *(v4 + 31) == 1)
  {
    *(v4 + 52) = a2;
  }

  else
  {
    this[31] = a2;
    v5 = *this;
    if (*this)
    {
      v9 = v2;
      v10 = v3;
      v6 = *(*(v5 + 80) + 13) == 2;
      v7 = *(*(v5 + 72) + 1904);
      v8 = *(v5 + 176);
      return (*(*v7 + 88))(v7, v6, &v8);
    }
  }

  return this;
}

float *physx::Sc::BodyCore::setMaxAngVelSq(float *this, float a2)
{
  v4 = *(this + 22);
  if (v4 && *(v4 + 31) == 1)
  {
    *(v4 + 56) = a2;
  }

  else
  {
    this[28] = a2;
    v5 = *this;
    if (*this)
    {
      v9 = v2;
      v10 = v3;
      v6 = *(*(v5 + 80) + 13) == 2;
      v7 = *(*(v5 + 72) + 1904);
      v8 = *(v5 + 176);
      return (*(*v7 + 88))(v7, v6, &v8);
    }
  }

  return this;
}

float *physx::Sc::BodyCore::setMaxLinVelSq(float *this, float a2)
{
  v4 = *(this + 22);
  if (v4 && *(v4 + 31) == 1)
  {
    *(v4 + 60) = a2;
  }

  else
  {
    this[29] = a2;
    v5 = *this;
    if (*this)
    {
      v9 = v2;
      v10 = v3;
      v6 = *(*(v5 + 80) + 13) == 2;
      v7 = *(*(v5 + 72) + 1904);
      v8 = *(v5 + 176);
      return (*(*v7 + 88))(v7, v6, &v8);
    }
  }

  return this;
}

void physx::Sc::BodyCore::setFlags(physx::Sc::BodyCore *this, uint64_t a2, _BYTE *a3)
{
  v3 = *(this + 44);
  v4 = *a3;
  if (v4 == v3)
  {
    return;
  }

  v7 = (v4 & 1) == 0;
  v8 = v3 | v7;
  *(this + 44) = v4;
  v9 = *this;
  if (*this)
  {
    v11 = *a3;
    if (((v11 ^ v3) & 0x10) != 0 && *(v9 + 184) <= 0xFFFFFFFD)
    {
      v12 = *(v9 + 72);
      if ((v11 & 0x10) != 0)
      {
        v49 = *this;
        v50 = 0;
        v13 = physx::shdfnd::internal::HashBase<physx::Sc::BodySim const*,physx::Sc::BodySim const*,physx::shdfnd::Hash<physx::Sc::BodySim const*>,physx::shdfnd::internal::HashSetBase<physx::Sc::BodySim const*,physx::shdfnd::Hash<physx::Sc::BodySim const*>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::create(v12 + 936, &v49, &v50);
        if ((v50 & 1) == 0)
        {
          *v13 = v9;
        }
      }

      else
      {
        physx::shdfnd::internal::HashSetBase<physx::Sc::BodySim const*,physx::shdfnd::Hash<physx::Sc::BodySim const*>,physx::shdfnd::NonTrackingAllocator,true>::erase(v12 + 936, v9);
      }
    }

    if ((v3 | v7))
    {
      if ((v3 & v7) != 0)
      {
        physx::Sc::BodyCore::tearDownSimStateData(this, a2, 1);
        v14 = *(*(v9 + 72) + 1880);
        v15 = *(v9 + 176);
        physx::IG::IslandSim::setDynamic(v14 + 224, v15);
        physx::IG::IslandSim::setDynamic(v14 + 864, v15);
        v16 = *(*(v9 + 80) + 176);
        if (*(*(v9 + 136) + 28) < 0)
        {
          if (v16 && *(v16 + 31) != 1)
          {
            *(v16 + 48) = 0;
            *(v16 + 56) = 0;
            *(v16 + 32) = 0;
            *(v16 + 40) = 0;
          }

          v17 = *(v9 + 182) & 0xFB;
        }

        else
        {
          if (v16 && *(v16 + 31) != 1)
          {
            *(v16 + 48) = 0;
            *(v16 + 56) = 0;
            *(v16 + 32) = 0;
            *(v16 + 40) = 0;
            *(v16 + 16) = 0;
            *(v16 + 24) = 0;
            *v16 = 0;
            *(v16 + 8) = 0;
          }

          v17 = 1;
        }

        *(v9 + 182) = v17;
        v29 = *(v9 + 200);
        if (v29)
        {
          physx::Sc::ConstraintGroupNode::markForProjectionTreeRebuild(v29, *(*(v9 + 72) + 2056));
        }

        physx::Sc::ActorSim::setActorsInteractionsDirty(v9, 5, 0, 6);
        *(v9 + 180) &= 0xF9FBu;
        v30 = *(v9 + 184);
        if (v30 <= 0xFFFFFFFD)
        {
          v31 = *(v9 + 72);
          v32 = *(v9 + 80);
          v33 = *(v31 + 48);
          if (v30 >= v33)
          {
            v34 = v33 + 1;
          }

          else
          {
            v34 = v33 - 1;
          }

          if (v30 < v33)
          {
            --v33;
          }

          v35 = *(v31 + 32);
          *(v9 + 184) = v33;
          v36 = *(v35 + 8 * v33);
          *(v35 + 8 * v33) = v32;
          *(*v36 + 184) = v30;
          *(*(v31 + 32) + 8 * v30) = v36;
          *(v31 + 48) = v34;
        }

        for (i = *(v9 + 56); i; i = *i)
        {
          physx::Sc::ShapeSim::updateBPGroup(i);
        }
      }
    }

    else
    {
      physx::Sc::BodyCore::setupSimStateData(this, a2, 1, 0);
      v18 = *(v9 + 184);
      if (v18 <= 0xFFFFFFFD)
      {
        v19 = *(v9 + 72);
        v20 = *(v9 + 80);
        v21 = *(v19 + 48);
        if (v18 >= v21)
        {
          v22 = v21 + 1;
        }

        else
        {
          v22 = v21 - 1;
        }

        if (v18 < v21)
        {
          --v21;
        }

        v23 = *(v19 + 32);
        *(v9 + 184) = v21;
        v24 = *(v23 + 8 * v21);
        *(v23 + 8 * v21) = v20;
        *(*v24 + 184) = v18;
        *(*(v19 + 32) + 8 * v18) = v24;
        *(v19 + 48) = v22;
      }

      v25 = *(v9 + 200);
      if (v25)
      {
        physx::Sc::ConstraintGroupNode::markForProjectionTreeRebuild(v25, *(*(v9 + 72) + 2056));
      }

      physx::Sc::ActorSim::setActorsInteractionsDirty(v9, 5, 0, 4);
      v26 = *(*(v9 + 72) + 1880);
      v27 = *(v9 + 176);
      physx::IG::IslandSim::setKinematic((v26 + 224), v27);
      physx::IG::IslandSim::setKinematic((v26 + 864), v27);
      for (j = *(v9 + 56); j; j = *j)
      {
        physx::Sc::ShapeSim::updateBPGroup(j);
      }
    }

    if ((v3 & 0x20) != (*a3 & 0x20))
    {
      if ((v3 & 0x20) == 0)
      {
        if (v8)
        {
          v38 = *(v9 + 72);
          v39 = *(v9 + 176);
          if (*(*(v9 + 80) + 13) == 2)
          {
            v40 = 7632;
          }

          else
          {
            v40 = 7616;
          }

          physx::Cm::BitMapBase<physx::shdfnd::NonTrackingAllocator>::extend(v38 + v40, (v39 >> 7) + 1);
          *(*(v38 + v40) + ((v39 >> 10) & 0x3FFFFC)) |= 1 << (v39 >> 7);
        }

        v41 = *(v9 + 124) | 0x40;
        goto LABEL_58;
      }

      v42 = *(v9 + 72);
      v43 = *(v9 + 176);
      v44 = v43 >> 7;
      if (*(*(v9 + 80) + 13) == 2)
      {
        if (v44 < 32 * *(v42 + 7640))
        {
          v45 = 7632;
LABEL_56:
          *(*(v42 + v45) + ((v43 >> 10) & 0x3FFFFC)) &= ~(1 << v44);
        }
      }

      else if (v44 < 32 * *(v42 + 7624))
      {
        v45 = 7616;
        goto LABEL_56;
      }

      v41 = *(v9 + 124) & 0xFFBF;
LABEL_58:
      *(v9 + 124) = v41;
    }
  }

  if ((v8 & 1) == 0)
  {
    physx::Sc::BodyCore::putToSleep(this);
  }

  if (v9)
  {
    v46 = *a3 & 3;
    if ((v3 & 3) != 3 && v46 == 3)
    {
      for (k = *(v9 + 56); k; k = *k)
      {
        if (*(k + 17) != -1)
        {
          physx::Sc::SqBoundsManager::removeShape(*(*(*(k + 1) + 72) + 2088), k);
        }
      }
    }

    else if ((v3 & 3) == 3 && v46 != 3)
    {

      physx::Sc::BodySim::createSqBounds(v9);
    }
  }
}

uint64_t physx::Sc::BodyCore::tearDownSimStateData(uint64_t result, uint64_t a2, int a3)
{
  v3 = *(result + 176);
  if (v3)
  {
    if (a3)
    {
      *(result + 128) = *(v3 + 32);
      *(result + 112) = vextq_s8(*(v3 + 48), *(v3 + 48), 8uLL);
    }

    --*(a2 + 548);
    *v3 = *(a2 + 560);
    *(a2 + 560) = v3;
    *(result + 176) = 0;
  }

  return result;
}

uint64_t physx::Sc::BodyCore::putToSleep(physx::Sc::BodyCore *this)
{
  *(this + 10) = 0;
  *(this + 22) = 0;
  *(this + 12) = 0;
  *(this + 26) = 0;
  v2 = *this;
  if (*this)
  {
    physx::Sc::BodySim::notifyAddSpatialAcceleration(*this);
    physx::Sc::BodySim::notifyAddSpatialVelocity(v2);
  }

  v3 = *(this + 22);
  if (v3 && !*(v3 + 31))
  {
    *(v3 + 48) = 0;
    *(v3 + 56) = 0;
    *(v3 + 32) = 0;
    *(v3 + 40) = 0;
    *(v3 + 16) = 0;
    *(v3 + 24) = 0;
    *v3 = 0;
    *(v3 + 8) = 0;
  }

  result = physx::Sc::BodyCore::setWakeCounter(this, 0.0, 0);
  if (v2)
  {

    return physx::Sc::BodySim::putToSleep(v2);
  }

  return result;
}

uint64_t physx::Sc::BodySim::createSqBounds(uint64_t this)
{
  if (*(this + 184) <= 0xFFFFFFFD && (~*(*(this + 80) + 44) & 3) != 0 && (*(this + 180) & 0x1000) == 0)
  {
    for (i = *(this + 56); i; i = *i)
    {
      this = physx::Sc::ShapeSim::createSqBounds(i);
    }
  }

  return this;
}

float *physx::Sc::BodyCore::setMaxContactImpulse(float *this, float a2)
{
  this[36] = a2;
  v2 = *this;
  if (*this)
  {
    v3 = *(*(v2 + 80) + 13) == 2;
    v4 = *(*(v2 + 72) + 1904);
    v5 = *(v2 + 176);
    return (*(*v4 + 88))(v4, v3, &v5);
  }

  return this;
}

uint64_t physx::Sc::BodyCore::setWakeCounter(uint64_t this, float a2, int a3)
{
  *(this + 156) = a2;
  v3 = *this;
  if (*this)
  {
    v6 = *(*(v3 + 80) + 13) == 2;
    v7 = *(*(v3 + 72) + 1904);
    v10 = *(v3 + 176);
    (*(*v7 + 88))(v7, v6, &v10);
    if (a2 > 0.0 || a3)
    {
      physx::Sc::BodySim::setActive(v3, 1, 0);
      v8 = *(*(v3 + 72) + 1880);
      v9 = *(v3 + 176);
      physx::IG::IslandSim::activateNode(v8 + 224, v9);
      physx::IG::IslandSim::activateNode(v8 + 864, v9);
    }

    return physx::Sc::BodySim::postSetWakeCounter(v3, a2, a3);
  }

  return this;
}

uint64_t physx::Sc::BodySim::postSetWakeCounter(uint64_t this, float a2, int a3)
{
  if (a2 > 0.0 || a3 != 0)
  {
    v5 = *(*(this + 72) + 1880);
    v6 = *(this + 176);
    physx::IG::IslandSim::activateNode(v5 + 224, v6);

    return physx::IG::IslandSim::activateNode(v5 + 864, v6);
  }

  v7 = *(this + 80);
  v8 = *(v7 + 176);
  if (!v8 || *(v8 + 31) == 1)
  {
    v8 = 0;
  }

  if (*(v7 + 80) == 0.0 && *(v7 + 84) == 0.0 && *(v7 + 88) == 0.0 && *(v7 + 96) == 0.0 && *(v7 + 100) == 0.0)
  {
    v9 = *(v7 + 104);
    v10 = *(this + 182);
    v11 = (v10 & 2) == 0;
    if (v9 != 0.0)
    {
      v11 = 0;
    }

    if ((*(this + 182) & 2) != 0 && v9 == 0.0)
    {
      if (!v8)
      {
        if ((*(this + 182) & 4) != 0)
        {
LABEL_41:
          if (!*(this + 192))
          {
            v13 = *(this + 176);
            v14 = *(*(this + 72) + 1880);

            return physx::IG::SimpleIslandManager::deactivateNode(v14, v13);
          }

          return this;
        }

        v12 = 1;
        v11 = 1;
LABEL_39:
        if (!v12 || !v11)
        {
          return this;
        }

        goto LABEL_41;
      }

      if (*v8 != 0.0 || *(v8 + 4) != 0.0 || *(v8 + 8) != 0.0 || *(v8 + 16) != 0.0 || *(v8 + 20) != 0.0)
      {
        return this;
      }

      v11 = *(v8 + 24) == 0.0;
    }

    v12 = (v10 & 4) == 0;
    if ((*(this + 182) & 4) != 0 && v11)
    {
      if (v8 && (*(v8 + 32) != 0.0 || *(v8 + 36) != 0.0 || *(v8 + 40) != 0.0 || *(v8 + 48) != 0.0 || *(v8 + 52) != 0.0 || *(v8 + 56) != 0.0))
      {
        return this;
      }

      goto LABEL_41;
    }

    goto LABEL_39;
  }

  return this;
}

float *physx::Sc::BodyCore::setSleepThreshold(float *this, float a2)
{
  this[37] = a2;
  v2 = *this;
  if (*this)
  {
    v3 = *(*(v2 + 80) + 13) == 2;
    v4 = *(*(v2 + 72) + 1904);
    v5 = *(v2 + 176);
    return (*(*v4 + 88))(v4, v3, &v5);
  }

  return this;
}

float *physx::Sc::BodyCore::setFreezeThreshold(float *this, float a2)
{
  this[38] = a2;
  v2 = *this;
  if (*this)
  {
    v3 = *(*(v2 + 80) + 13) == 2;
    v4 = *(*(v2 + 72) + 1904);
    v5 = *(v2 + 176);
    return (*(*v4 + 88))(v4, v3, &v5);
  }

  return this;
}

uint64_t physx::Sc::BodySim::putToSleep(physx::Sc::BodySim *this)
{
  physx::Sc::BodySim::setActive(this, 0, 0);
  result = physx::IG::SimpleIslandManager::putNodeToSleep(*(*(this + 9) + 1880), *(this + 44));
  *(this + 90) &= 0xF9FFu;
  return result;
}

float32_t physx::Sc::BodyCore::onOriginShift(float32x2_t *a1, float32x2_t *a2)
{
  a1[4] = vsub_f32(a1[4], *a2);
  result = a1[5].f32[0] - a2[1].f32[0];
  a1[5].f32[0] = result;
  v3 = a1[22];
  if (v3 && (a1[5].i8[4] & 1) != 0 && v3[3].i8[4])
  {
    v3[2] = vsub_f32(v3[2], *a2);
    result = v3[3].f32[0] - a2[1].f32[0];
    v3[3].f32[0] = result;
  }

  v4 = *a1;
  if (*a1)
  {
    v4[14] = vsub_f32(v4[14], *a2);
    result = v4[15].f32[0] - a2[1].f32[0];
    v4[15].f32[0] = result;
  }

  return result;
}

uint64_t physx::Sc::BodyCore::setKinematicTarget(physx::Sc::BodyCore *this, uint64_t a2, uint64_t a3, float a4)
{
  v7 = *(this + 22);
  if (v7)
  {
    *v7 = *a3;
    *(v7 + 16) = *(a3 + 16);
    *(v7 + 24) = *(a3 + 24);
    *(v7 + 28) = 1;
    if (*this)
    {
      *(*this + 180) = *(*this + 180) & 0xF7FB | 4;
    }
  }

  else
  {
    physx::Sc::BodyCore::setupSimStateData(this, a2, 1, 1);
    v8 = *(this + 22);
    *v8 = *a3;
    *(v8 + 16) = *(a3 + 16);
    *(v8 + 24) = *(a3 + 24);
    *(v8 + 28) = 1;
  }

  return physx::Sc::BodyCore::setWakeCounter(this, a4, 1);
}

physx::Sc::BodySim *physx::Sc::BodySim::BodySim(physx::Sc::BodySim *this, physx::Sc::Scene *a2, physx::Sc::BodyCore *a3, int a4)
{
  v8 = physx::Sc::RigidSim::RigidSim(this, a2, a3);
  *v8 = &unk_1F5D1E690;
  *(v8 + 96) = *(a3 + 1);
  v9 = (v8 + 96);
  *(v8 + 112) = *(a3 + 4);
  *(v8 + 120) = *(a3 + 10);
  *(v8 + 124) = 0;
  *(v8 + 126) = *(a3 + 23);
  *(v8 + 128) = 0;
  *(v8 + 136) = a3 + 16;
  *(v8 + 144) = xmmword_1E31146B0;
  *(v8 + 160) = xmmword_1E30474D0;
  *(v8 + 176) = -128;
  *(v8 + 180) = 0;
  *(v8 + 182) = 1;
  *(v8 + 184) = -1;
  *(v8 + 192) = 0;
  *(v8 + 200) = 0;
  *(a3 + 41) = 0;
  *(a3 + 42) = 0;
  *(a3 + 173) = *(a3 + 12) & 2;
  if ((*(a3 + 44) & 0x20) != 0)
  {
    *(this + 62) = 64;
  }

  v10 = *(a3 + 22);
  if (v10 && *(v10 + 31) != 1)
  {
    if (*(v10 + 12))
    {
      v11 = *v10 != 0.0 || *(v10 + 4) != 0.0 || *(v10 + 8) != 0.0 || *(v10 + 16) != 0.0 || *(v10 + 20) != 0.0 || *(v10 + 24) != 0.0 || *(v10 + 32) != 0.0 || *(v10 + 36) != 0.0 || *(v10 + 40) != 0.0 || *(v10 + 48) != 0.0 || *(v10 + 52) != 0.0 || *(v10 + 56) != 0.0;
    }

    else
    {
      v11 = 0;
    }

    *(this + 182) = *(v10 + 12);
    *(v10 + 12) = 0;
  }

  else
  {
    v11 = 0;
  }

  if (*(a3 + 39) <= 0.0)
  {
    v12 = 1;
    if (*(a3 + 20) == 0.0 && *(a3 + 21) == 0.0 && *(a3 + 22) == 0.0 && *(a3 + 24) == 0.0 && *(a3 + 25) == 0.0)
    {
      v12 = *(a3 + 26) != 0.0 || v11;
    }
  }

  else
  {
    v12 = 1;
  }

  v13 = *(this + 10);
  v14 = *(v13 + 44);
  v15 = *(a2 + 235);
  if (*(v13 + 13) == 2)
  {
    v16 = -128;
    if (!v11)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v16 = physx::IG::SimpleIslandManager::addRigidBody(*(a2 + 235), v9, v14 & 1, v12 & 1);
    *(this + 44) = v16;
    if (!v11)
    {
      goto LABEL_36;
    }
  }

  if (*(*(this + 10) + 13) != 2)
  {
    physx::Cm::BitMapBase<physx::shdfnd::NonTrackingAllocator>::extend(a2 + 4416, (v16 >> 7) + 1);
    *(*(a2 + 552) + 4 * (v16 >> 12)) |= 1 << (v16 >> 7);
  }

LABEL_36:
  if (a4)
  {
    *(this + 90) |= 0x1000u;
  }

  if (v12)
  {
    physx::Sc::BodySim::activate(this);
    physx::Sc::Scene::addToActiveBodyList(a2, this);
    if ((v14 & 1) == 0)
    {
      return this;
    }
  }

  else
  {
    physx::Sc::BodySim::deactivate(this, v9);
    *(this + 23) = 0x100000001;
    v17 = *(this + 44);
    physx::IG::IslandSim::deactivateNode(v15 + 224, v17);
    physx::IG::IslandSim::deactivateNode(v15 + 864, v17);
    if ((v14 & 1) == 0)
    {
      return this;
    }
  }

  v18 = *(this + 25);
  if (v18)
  {
    physx::Sc::ConstraintGroupNode::markForProjectionTreeRebuild(v18, *(*(this + 9) + 2056));
  }

  v19 = *(a3 + 22);
  if (v19 && *(v19 + 31) == 1)
  {
    *(this + 90) = *(this + 90) & 0xF7FB | 4;
  }

  else
  {
    physx::Sc::BodyCore::setupSimStateData(a3, *(a2 + 546), 1, 0);
    physx::IG::SimpleIslandManager::putNodeToSleep(*(*(this + 9) + 1880), *(this + 44));
  }

  return this;
}

void physx::Sc::BodySim::~BodySim(physx::Sc::BodySim *this)
{
  *this = &unk_1F5D1E690;
  v2 = *(this + 46);
  v3 = *(this + 9);
  physx::Sc::BodyCore::tearDownSimStateData(*(this + 10), v3[546], *(*(this + 10) + 44) & 1);
  *(this + 90) |= 8u;
  physx::Sc::Scene::removeBody(v3, this);
  v4 = *(this + 24);
  if (!v4 || (physx::Sc::ArticulationSim::removeBody(v4, this), !*(this + 24)))
  {
    v5 = *(this + 44);
    if ((v5 & 0x7E) == 0)
    {
      physx::IG::SimpleIslandManager::removeNode(v3[235], v5);
    }
  }

  if (v2 <= 0xFFFFFFFD)
  {
    physx::Sc::Scene::removeFromActiveBodyList(v3, this);
  }

  *(this + 23) = -1;
  **(this + 10) = 0;

  physx::Sc::RigidSim::~RigidSim(this);
}

{
  physx::Sc::BodySim::~BodySim(this);
  v1 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

  v1();
}

uint64_t physx::Sc::BodySim::postActorFlagChange(uint64_t this, char a2, char a3)
{
  if ((a3 & 2) != (a2 & 2))
  {
    if (!*(this + 182))
    {
      *(this + 182) = 1;
    }

    *(*(this + 80) + 173) = (a3 & 2) >> 1;
  }

  return this;
}

void physx::Sc::BodySim::activate(physx::Sc::BodySim *this)
{
  v2 = *(this + 10);
  if (*(v2 + 13) != 2)
  {
    *(this + 62) &= ~1u;
    physx::Sc::Scene::onBodyWakeUp(*(this + 9), this);
    v2 = *(this + 10);
  }

  if ((*(v2 + 44) & 0x10) != 0)
  {
    v3 = *(this + 9);
    v32 = this;
    v33 = 0;
    v4 = physx::shdfnd::internal::HashBase<physx::Sc::BodySim const*,physx::Sc::BodySim const*,physx::shdfnd::Hash<physx::Sc::BodySim const*>,physx::shdfnd::internal::HashSetBase<physx::Sc::BodySim const*,physx::shdfnd::Hash<physx::Sc::BodySim const*>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::create(v3 + 936, &v32, &v33);
    if ((v33 & 1) == 0)
    {
      *v4 = this;
    }
  }

  physx::Sc::BodySim::createSqBounds(this);
  v6 = *(this + 13);
  if (v6)
  {
    v7 = 0;
    do
    {
      v8 = v7++;
      if (v7 >= v6 - 1)
      {
        v9 = v6 - 1;
      }

      else
      {
        v9 = v7;
      }

      v10 = *(this + 5);
      _X9 = *(v10 + 8 * v9);
      __asm { PRFM            #0, [X9] }

      v16 = *(v10 + 8 * v8);
      if (*(v16 + 28))
      {
        if (*(v16 + 28) != 2 && (*(v16 + 29) & 0x20) == 0)
        {
          if (physx::Sc::activateInteraction(v16, 0, v5))
          {
            v18 = *(v16 + 28);
            if (v18 <= 2)
            {
              v19 = *(this + 9);
              v20 = v19 + 120;
              v21 = *(v19 + 120 + 4 * v18);
              v22 = v19 + 16 * v18;
              if (v21 < *(v22 + 80))
              {
                v23 = *(v22 + 72);
                v24 = *(v23 + 8 * v21);
                v25 = *(v16 + 16);
                v26 = *(v23 + 8 * v25);
                *(v23 + 8 * v21) = v26;
                *(*(v22 + 72) + 8 * v25) = v24;
                *(v24 + 16) = v25;
                *(v26 + 16) = v21;
                v21 = *(v20 + 4 * v18);
              }

              *(v20 + 4 * v18) = v21 + 1;
            }
          }
        }
      }
    }

    while (v6 != v7);
  }

  v27 = *(this + 10);
  if ((*(v27 + 44) & 0x20) != 0)
  {
    if (*(v27 + 13) == 2)
    {
      v28 = *(this + 44);
      if (v28 > 0xFFFFFF7F)
      {
        return;
      }

      v29 = *(this + 9);
      v30 = 7632;
    }

    else
    {
      v29 = *(this + 9);
      v28 = *(this + 44);
      v30 = 7616;
    }

    v31 = (v29 + v30);
    physx::Cm::BitMapBase<physx::shdfnd::NonTrackingAllocator>::extend(v29 + v30, (v28 >> 7) + 1);
    *(*v31 + 4 * (v28 >> 12)) |= 1 << (v28 >> 7);
  }
}

uint64_t physx::Sc::BodySim::deactivate(uint64_t this, physx::Sc::Interaction *a2)
{
  v2 = this;
  v3 = *(this + 52);
  if (v3)
  {
    v4 = 0;
    do
    {
      v5 = v4++;
      if (v4 >= v3 - 1)
      {
        v6 = v3 - 1;
      }

      else
      {
        v6 = v4;
      }

      v7 = *(v2 + 40);
      _X9 = *(v7 + 8 * v6);
      __asm { PRFM            #0, [X9] }

      v13 = *(v7 + 8 * v5);
      if (*(v13 + 28))
      {
        if (*(v13 + 28) != 2 && (*(v13 + 29) & 0x20) != 0)
        {
          this = physx::Sc::deactivateInteraction(v13, a2);
          if (this)
          {
            v15 = *(v13 + 28);
            if (v15 <= 2)
            {
              v16 = *(v2 + 72);
              v17 = v16 + 120;
              v18 = *(v16 + 120 + 4 * v15);
              if (v18 >= 2)
              {
                v19 = v18 - 1;
                v20 = v16 + 16 * v15;
                v21 = *(v20 + 72);
                v22 = *(v21 + 8 * v19);
                v23 = *(v13 + 16);
                v24 = *(v21 + 8 * v23);
                *(v21 + 8 * v19) = v24;
                *(*(v20 + 72) + 8 * v23) = v22;
                *(v22 + 16) = v23;
                *(v24 + 16) = v19;
                v18 = *(v17 + 4 * v15);
              }

              *(v17 + 4 * v15) = v18 - 1;
            }
          }
        }
      }
    }

    while (v3 != v4);
  }

  v25 = *(v2 + 80);
  if ((*(v2 + 180) & 8) == 0)
  {
    *(v25 + 80) = 0;
    *(v25 + 88) = 0;
    *(v25 + 96) = 0;
    *(v25 + 104) = 0;
    v26 = *(v25 + 176);
    if (*(*(v2 + 136) + 28) < 0)
    {
      if (v26 && *(v26 + 31) != 1)
      {
        *(v26 + 48) = 0;
        *(v26 + 56) = 0;
        *(v26 + 32) = 0;
        *(v26 + 40) = 0;
      }

      v28 = *(v2 + 182) & 0xFB;
    }

    else
    {
      v27 = *(v25 + 173);
      if (v26 && *(v26 + 31) != 1)
      {
        *(v26 + 48) = 0;
        *(v26 + 56) = 0;
        *(v26 + 32) = 0;
        *(v26 + 40) = 0;
        *(v26 + 16) = 0;
        *(v26 + 24) = 0;
        *v26 = 0;
        *(v26 + 8) = 0;
      }

      if (v27)
      {
        *(v2 + 182) = 0;
        goto LABEL_30;
      }

      v28 = 1;
    }

    *(v2 + 182) = v28;
  }

LABEL_30:
  if (*(v25 + 13) != 2)
  {
    this = physx::Sc::Scene::onBodySleep(*(v2 + 72), v2);
  }

  if ((*(v25 + 44) & 0x10) != 0)
  {
    this = physx::shdfnd::internal::HashSetBase<physx::Sc::BodySim const*,physx::shdfnd::Hash<physx::Sc::BodySim const*>,physx::shdfnd::NonTrackingAllocator,true>::erase((*(v2 + 72) + 7488), v2);
  }

  for (i = *(v2 + 56); i; i = *i)
  {
    if (*(i + 17) != -1)
    {
      this = physx::Sc::SqBoundsManager::removeShape(*(*(*(i + 1) + 72) + 2088), i);
    }
  }

  v30 = *(v2 + 80);
  if ((*(v30 + 44) & 0x20) != 0)
  {
    if (*(v30 + 13) != 2)
    {
      v32 = *(v2 + 72);
      v31 = *(v2 + 176);
      v33 = v31 >> 7;
      if (v31 >> 7 >= 32 * *(v32 + 7624))
      {
        return this;
      }

      v34 = 7616;
      goto LABEL_45;
    }

    v31 = *(v2 + 176);
    if (v31 <= 0xFFFFFF7F)
    {
      v32 = *(v2 + 72);
      v33 = v31 >> 7;
      if (v31 >> 7 < 32 * *(v32 + 7640))
      {
        v34 = 7632;
LABEL_45:
        *(*(v32 + v34) + 4 * (v31 >> 12)) &= ~(1 << v33);
      }
    }
  }

  return this;
}

uint64_t physx::Sc::BodySim::internalWakeUp(physx::Sc::BodySim *this, float a2)
{
  result = *(this + 24);
  if (result)
  {

    return physx::Sc::ArticulationSim::internalWakeUp(result, a2);
  }

  else
  {
    v4 = *(this + 10);
    if ((*(v4 + 44) & 1) == 0 && *(v4 + 156) < a2)
    {
      *(v4 + 156) = a2;
      (*(**(*(this + 9) + 1904) + 88))(*(*(this + 9) + 1904), *(v4 + 13) == 2, this + 176);
      physx::Sc::BodySim::setActive(this, 1, 0);
      v5 = *(*(this + 9) + 1880);
      v6 = *(this + 44);
      physx::IG::IslandSim::activateNode(v5 + 224, v6);
      result = physx::IG::IslandSim::activateNode(v5 + 864, v6);
      *(this + 62) &= ~1u;
    }
  }

  return result;
}

void physx::Sc::BodySim::calculateKinematicVelocity(physx::Sc::BodySim *this, float a2)
{
  v2 = *(this + 10);
  v3 = *(this + 90);
  if ((v3 & 4) != 0)
  {
    *(this + 90) = v3 & 0xF9FF;
    v5 = v2[22];
    v6 = v5->f32[1];
    v7 = v5[1].f32[0];
    v8 = v5[1].f32[1];
    v9 = vsub_f32(v5[2], v2[4]);
    v10 = v2[2].f32[0];
    v11 = v2[2].f32[1];
    v12 = v2[3].f32[0];
    v13 = v2[3].f32[1];
    v14 = (((v5->f32[0] * v13) - (v8 * v10)) - (v6 * v12)) + (v11 * v7);
    v15 = (((v6 * v13) - (v8 * v11)) - (v7 * v10)) + (v12 * v5->f32[0]);
    v16 = (((v7 * v13) - (v8 * v12)) - (v5->f32[0] * v11)) + (v10 * v6);
    v17 = (((v5->f32[0] * v10) + (v8 * v13)) + (v6 * v11)) + (v7 * v12);
    if (v17 < 0.0)
    {
      v14 = -v14;
      v15 = -v15;
      v16 = -v16;
      v17 = -v17;
    }

    v18 = vmul_n_f32(v9, a2);
    v19 = (v5[3].f32[0] - v2[5].f32[0]) * a2;
    v20 = ((v15 * v15) + (v14 * v14)) + (v16 * v16);
    if (v20 >= 1.0e-16)
    {
      v25 = 1.0 / sqrtf(v20);
      v21 = v14 * v25;
      v22 = v15 * v25;
      v23 = v16 * v25;
      if (fabsf(v17) >= 0.00000001)
      {
        v27 = a2;
        v26 = atan2f(v20 * v25, v17);
        a2 = v27;
        v24 = v26 + v26;
      }

      else
      {
        v24 = 3.1416;
      }
    }

    else
    {
      v21 = 1.0;
      v22 = 0.0;
      v23 = 0.0;
      v24 = 0.0;
    }

    v2[10] = v18;
    v2[11].f32[0] = v19;
    v2[12].f32[0] = (v21 * v24) * a2;
    v2[12].f32[1] = (v22 * v24) * a2;
    v2[13].f32[0] = (v23 * v24) * a2;
  }

  else if ((*(this + 90) & 0x800) == 0)
  {
    v28 = 0;
    v29 = 0;
    physx::Sc::BodyCore::setLinearVelocity(v2, &v28);
    v28 = 0;
    v29 = 0;
    physx::Sc::BodyCore::setAngularVelocity(v2, &v28);
  }
}

float physx::Sc::BodySim::updateKinematicPose(physx::Sc::BodySim *this)
{
  v1 = *(this + 90);
  if ((v1 & 4) != 0)
  {
    v2 = *(this + 10);
    *(this + 90) = v1 & 0xF9FF;
    v3 = *(v2 + 176);
    result = *(v3 + 24);
    v5 = *(v3 + 16);
    *(v2 + 16) = *v3;
    *(v2 + 32) = v5;
    *(v2 + 40) = result;
  }

  return result;
}

uint64_t physx::Sc::BodySim::deactivateKinematic(physx::Sc::BodySim *this)
{
  v2 = *(this + 90);
  if ((v2 & 0x400) == 0)
  {
    if ((v2 & 0x200) != 0)
    {
      v6 = v2 & 0xF9FF | 0x400;
    }

    else
    {
      if ((v2 & 0x800) != 0)
      {
        return (v2 >> 10) & 1;
      }

      v6 = v2 & 0xF1FB | 0x200;
    }

    *(this + 90) = v6;
    return (v2 >> 10) & 1;
  }

  v3 = *(this + 10);
  *(this + 90) = v2 & 0xFBFF;
  *(v3 + 156) = 0;
  if (!*(this + 24))
  {
    v4 = *(*(this + 9) + 1880);
    v5 = *(this + 44);
    physx::IG::IslandSim::deactivateNode(v4 + 224, v5);
    physx::IG::IslandSim::deactivateNode(v4 + 864, v5);
  }

  physx::IG::SimpleIslandManager::putNodeToSleep(*(*(this + 9) + 1880), *(this + 44));
  physx::Sc::BodySim::setActive(this, 0, 0);
  return (v2 >> 10) & 1;
}

void physx::Sc::BodySim::freezeTransforms(uint64_t a1, void *a2)
{
  for (i = *(a1 + 56); i; i = *i)
  {
    physx::Sc::ShapeSim::updateCached(i, 1, a2);
    if (*(i + 68) != -1)
    {
      physx::Sc::SqBoundsManager::removeShape(*(*(*(i + 8) + 72) + 2088), i);
    }
  }
}

uint64_t physx::Sc::BodySim::disableCompound(uint64_t this)
{
  if (*(this + 184) <= 0xFFFFFFFD)
  {
    v1 = *(this + 72);
    v2 = *(this + 188);
    *(this + 188) = -2;
    v3 = *(v1 + 64) - 1;
    if (v2 != v3)
    {
      v4 = *(v1 + 56);
      v5 = *(v4 + 8 * v3);
      *(v4 + 8 * v2) = v5;
      *(*v5 + 184) = v2;
    }

    *(v1 + 64) = v3;
  }

  *(this + 180) &= ~0x1000u;
  return this;
}

void *physx::Sc::Interaction::addToDirtyList(physx::Sc::Interaction *this)
{
  v1 = *(*(*this + 72) + 3992);
  v3 = this;
  v4 = 0;
  result = physx::shdfnd::internal::HashBase<physx::Sc::BodySim const*,physx::Sc::BodySim const*,physx::shdfnd::Hash<physx::Sc::BodySim const*>,physx::shdfnd::internal::HashSetBase<physx::Sc::BodySim const*,physx::shdfnd::Hash<physx::Sc::BodySim const*>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::create(v1 + 12, &v3, &v4);
  if ((v4 & 1) == 0)
  {
    *result = v3;
  }

  return result;
}

int32x2_t *physx::Sc::NPhaseCore::removeFromDirtyInteractionList(int32x2_t *result, uint64_t a2)
{
  if (result[18].i32[1])
  {
    v2 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
    v3 = 9 * ((v2 + ~(v2 << 13)) ^ ((v2 + ~(v2 << 13)) >> 8));
    v4 = (v3 ^ (v3 >> 15)) + ~((v3 ^ (v3 >> 15)) << 27);
    v5 = (*&result[15] + 4 * ((result[16].i32[1] - 1) & ((v4 >> 31) ^ v4)));
    v6 = *v5;
    if (v6 != -1)
    {
      v7 = result[13];
      v8 = result[14];
      if (*(*&v7 + 8 * v6) == a2)
      {
LABEL_7:
        *v5 = *(*&v8 + 4 * v6);
        v10 = vadd_s32(result[18], 0xFFFFFFFF00000001);
        result[18] = v10;
        if (v6 != v10.i32[1])
        {
          *(*&v7 + 8 * v6) = *(*&v7 + 8 * v10.u32[1]);
          v12 = result[13];
          v11 = result[14];
          *(*&v11 + 4 * v6) = *(*&v11 + 4 * v10.u32[1]);
          v13 = ~(*(*&v12 + 8 * v6) << 32) + *(*&v12 + 8 * v6);
          v14 = 9 * (((v13 ^ (v13 >> 22)) + ~((v13 ^ (v13 >> 22)) << 13)) ^ (((v13 ^ (v13 >> 22)) + ~((v13 ^ (v13 >> 22)) << 13)) >> 8));
          v15 = (v14 ^ (v14 >> 15)) + ~((v14 ^ (v14 >> 15)) << 27);
          v16 = (*&result[15] + 4 * ((result[16].i32[1] - 1) & ((v15 >> 31) ^ v15)));
          v17 = result[18].u32[1];
          v18 = *v16;
          if (v18 != v17)
          {
            do
            {
              v19 = v18;
              v18 = *(*&v11 + 4 * v18);
            }

            while (v18 != v17);
            v16 = (*&v11 + 4 * v19);
          }

          *v16 = v6;
        }

        --result[17].i32[1];
      }

      else
      {
        while (1)
        {
          v9 = v6;
          v6 = *(*&v8 + 4 * v6);
          if (v6 == -1)
          {
            break;
          }

          if (*(*&v7 + 8 * v6) == a2)
          {
            v5 = (*&v8 + 4 * v9);
            goto LABEL_7;
          }
        }
      }
    }
  }

  return result;
}

int32x2_t *physx::Sc::Interaction::setClean(int32x2_t *this, int a2)
{
  v2 = this;
  v3 = this[3].i8[5];
  if ((v3 & 8) != 0)
  {
    if (a2)
    {
      this = physx::Sc::NPhaseCore::removeFromDirtyInteractionList(*(*(*this + 72) + 3992), this);
      v3 = v2[3].i8[5];
    }

    v2[3].i8[5] = v3 & 0xF7;
  }

  v2[3].i8[6] = 0;
  return this;
}

void *physx::Sc::filterRbCollisionPairSecondStage@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, unsigned __int16 *a8@<X8>)
{
  *a8 = 0xFFFFFFFF00000000;
  v48 = 0;
  v47 = 0;
  getFilterInfo_ShapeSim(&v48, (&v52 + 4), *(a2 + 8), *(a2 + 56));
  FilterInfo_ShapeSim = getFilterInfo_ShapeSim(&v47, &v49, *(a3 + 8), *(a3 + 56));
  v13 = v49;
  v33 = v53;
  v34 = HIDWORD(v52);
  *&v43[8] = v53;
  v31 = v55;
  v32 = v54;
  v44 = v54;
  v45 = v55;
  v14 = v50;
  v15 = v51;
  v40 = v49;
  v41 = v50;
  v16 = v52;
  v42 = v51;
  *v43 = v52;
  v35 = v47;
  v36 = v48;
  v38 = (a8 + 1);
  result = (*a1)(&v46, FilterInfo_ShapeSim);
  v21 = v46;
  *a8 = v46;
  if ((v21 & 4) != 0)
  {
    if (*(a1 + 24))
    {
      if ((a7 & 1) == 0)
      {
        return result;
      }

      if (a6 == -1)
      {
        v22 = *(a1 + 32);
        a6 = *(v22 + 16);
        if (a6 == 0xFFFFFFFFLL)
        {
          *&v43[4] = 0;
          a6 = *(v22 + 8);
          if ((*(v22 + 12) & 0x7FFFFFFFu) <= a6)
          {
            physx::shdfnd::Array<physx::Sc::ElementSimInteraction *,physx::shdfnd::ReflectionAllocator<physx::Sc::ElementSimInteraction *>>::growAndPushBack(v22, &v43[4]);
          }

          else
          {
            *(*v22 + 8 * a6) = 0;
            *(v22 + 8) = a6 + 1;
          }
        }

        else
        {
          v23 = *v22;
          *(v22 + 16) = *(*v22 + 8 * a6);
          *(v23 + 8 * a6) = 0;
        }
      }

      v24 = *(a1 + 24);
      *v43 = v16;
      *&v43[4] = v34;
      *&v43[8] = v33;
      v44 = v32;
      v45 = v31;
      v40 = v13;
      v41 = v14;
      v42 = v15;
      result = (**v24)(&v46);
      v21 = v46;
      *a8 = v46;
      *(a8 + 1) = a6;
    }

    else
    {
      *a8 = v21 & 0xFFF3;
      result = physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/simulationcontroller/src/ScNPhaseCore.cpp", 270, "Filtering: eCALLBACK set but no filter callback defined.", v18, v19, v20, v29);
      v21 = *a8;
    }
  }

  if ((~v21 & 3) == 0)
  {
    LOWORD(v21) = v21 & 0xFFFE;
    *a8 = v21;
  }

  if (a6 != -1)
  {
    v25 = v21 & 0xC;
    if (v21)
    {
      if (v25 == 12)
      {
        v26 = *(a1 + 24);
        *&v43[4] = v34;
        *&v43[8] = v33;
        v44 = v32;
        v45 = v31;
        v40 = v13;
        v41 = v14;
        v42 = v15;
        *v43 = v16;
        result = (*(*v26 + 8))(v26, a6, v36, &v43[4], v35, &v40, 0);
        v21 = *a8;
        if ((~v21 & 0xC) == 0)
        {
          goto LABEL_21;
        }
      }
    }

    else if (v25 == 12)
    {
      goto LABEL_22;
    }

    LOWORD(v21) = v21 & 0xFFF3;
    *a8 = v21;
LABEL_21:
    v27 = *(a1 + 32);
    *(*v27 + 8 * a6) = v27[2];
    v27[2] = a6;
    *(a8 + 1) = -1;
  }

LABEL_22:
  if ((a7 & 1) != 0 || (v21 & 4) == 0)
  {
    v28 = *v38;
    if (a4 && (v21 & 3) == 0 && a5 && (*(*(a4 + 80) + 44) & 1) != 0 && (*(*(a5 + 80) + 44) & 1) != 0)
    {
      v28 &= ~1u;
    }

    *v38 = v28;
  }

  return result;
}

uint64_t physx::Sc::NPhaseCore::runOverlapFilters(uint64_t result, unsigned int a2, uint64_t a3, uint64_t a4, _DWORD *a5, _DWORD *a6, _DWORD *a7, uint64_t a8, uint64_t a9)
{
  if (a2)
  {
    v9 = 0;
    v66 = 0;
    v67 = 0;
    v52 = 0;
    v54 = *(*result + 4000);
    v55 = *(*result + 4016);
    v53 = *(*result + 4008);
    v56 = *(*result + 4032);
    v57 = *(*result + 4036);
    v59 = a2;
    v51 = *(*result + 4024);
    while (1)
    {
      v10 = (a3 + 24 * v9);
      v64 = *v10;
      v11 = *(*v10 + 8);
      v12 = *(v11 + 80);
      v13 = *(v12 + 13);
      v14 = gTypeData[*(v12 + 13)] >> 1;
      if (*(v12 + 13))
      {
        v15 = *(v12 + 44) & 1;
        v14 |= 16 * v15;
        v16 = v15;
        v17 = *(v64 + 8);
      }

      else
      {
        v16 = 0;
        v17 = 0;
        LOBYTE(v15) = 1;
      }

      v65 = v14;
      v62 = v10[1];
      v18 = *(v62 + 8);
      v19 = *(v18 + 10);
      v20 = *(v19 + 13);
      if (*(v19 + 13))
      {
        v21 = *(v19 + 44) & 1;
        v63 = (gTypeData[*(v19 + 13)] >> 1) | (16 * v21);
        v22 = *(v62 + 8);
      }

      else
      {
        v63 = gTypeData[*(v19 + 13)] >> 1;
        v21 = 0;
        v22 = 0;
      }

      if ((v16 | v21) == 1)
      {
        if (v57)
        {
          if (v56)
          {
            v23 = v21;
          }

          else
          {
            v23 = 0;
          }

          if (!v17 || !v22 || (v16 & v23 & 1) != 0)
          {
            goto LABEL_56;
          }

LABEL_23:
          result = filterJointedBodies(v17, v18);
          if (result)
          {
            goto LABEL_56;
          }

          v25 = v13 == 2;
          v26 = v20 == 2;
          if (v25 == v26)
          {
            goto LABEL_35;
          }

          v27 = v21 ^ 1;
          if (!v20)
          {
            v27 = 0;
          }

          if ((v27 & 1) == 0 && *(*(v17 + 17) + 159))
          {
LABEL_56:
            *(a4 + 8 * v9) = 0xFFFFFFFF00000002;
            LOBYTE(v33) = 2;
LABEL_57:
            v38 = v33 & 2;
            v28 = v38 == 0;
            v67 += v38 >> 1;
            v39 = v66;
            if (v28)
            {
              v39 = v66 + 1;
            }

            v66 = v39;
            v40 = 1 << v9;
            v41 = v9 >> 5;
            v42 = a8;
            goto LABEL_60;
          }

LABEL_33:
          if (v22 && ((*(*(v22 + 17) + 159) != 0) & v15) != 0)
          {
            goto LABEL_56;
          }

          goto LABEL_35;
        }

        if (v56)
        {
          v24 = v21;
        }

        else
        {
          v24 = 0;
        }

        if (v16 & v24)
        {
          goto LABEL_56;
        }
      }

      if (v17)
      {
        goto LABEL_23;
      }

      if (v22)
      {
        result = filterJointedBodies(v22, v11);
        if (result)
        {
          goto LABEL_56;
        }
      }

      v25 = v13 == 2;
      v26 = v20 == 2;
      if ((v25 ^ v26))
      {
        goto LABEL_33;
      }

LABEL_35:
      if (v26)
      {
        v28 = v25 == 0;
      }

      else
      {
        v28 = 1;
      }

      if (!v28)
      {
        if (*(*(v17 + 17) + 159) && *(*(v22 + 17) + 159))
        {
          goto LABEL_56;
        }

        v43 = *(v11 + 52);
        if (v43)
        {
          v44 = *(v11 + 40);
          while (1)
          {
            v46 = *v44++;
            v45 = v46;
            if (*(v46 + 28) == 5 && (*v45 == v18 || v45[1] == v18))
            {
              break;
            }

            if (!--v43)
            {
              goto LABEL_40;
            }
          }

          *(a4 + 8 * v9) = 0xFFFFFFFF00000001;
          goto LABEL_61;
        }
      }

LABEL_40:
      v68 = 0xFFFFFFFF00000000;
      v29 = *(*(v64 + 56) + 16);
      v69 = *(*(v62 + 56) + 16);
      v70 = v29;
      result = v55(&v71, v65, &v70, v63, &v69, &v68 + 2, v54, v53);
      v33 = v71;
      if ((v71 & 4) != 0)
      {
        v34 = v16;
        if (v51)
        {
          goto LABEL_46;
        }

        LOWORD(v68) = v71 & 0xFFF3;
        result = physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/simulationcontroller/src/ScNPhaseCore.cpp", 318, "Filtering: eCALLBACK set but no filter callback defined.", v30, v31, v32, v47);
        v33 = v68;
      }

      if ((~v33 & 3) == 0)
      {
        LOWORD(v33) = v33 & 0xFFFE;
      }

      v34 = v16;
LABEL_46:
      v35 = WORD1(v68);
      v36 = a4 + 8 * v9;
      if ((v33 & 4) == 0)
      {
        if ((v33 & 3) != 0)
        {
          v37 = 0;
        }

        else
        {
          v37 = v21;
        }

        if ((v34 & v37) != 0)
        {
          v35 = WORD1(v68) & 0xFFFE;
        }

        *v36 = v33;
        *(v36 + 2) = v35;
        *(v36 + 4) = HIDWORD(v68);
        if (v33)
        {
          goto LABEL_61;
        }

        goto LABEL_57;
      }

      *v36 = v33;
      *(v36 + 2) = v35;
      *(v36 + 4) = HIDWORD(v68);
      if (v33)
      {
        goto LABEL_61;
      }

      ++v52;
      v40 = 1 << v9;
      v41 = v9 >> 5;
      v42 = a9;
LABEL_60:
      *(v42 + 4 * v41) |= v40;
LABEL_61:
      if (++v9 == v59)
      {
        goto LABEL_74;
      }
    }
  }

  v52 = 0;
  v67 = 0;
  v66 = 0;
LABEL_74:
  *a5 = v66;
  *a6 = v67;
  *a7 = v52;
  return result;
}

uint64_t physx::Sc::NPhaseCore::NPhaseCore(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  v5 = *(a3 + 220);
  v6 = (*(a3 + 152) >> 7) & 1;
  *(a1 + 72) = 0;
  *(a1 + 76) = v5;
  *(a1 + 80) = v5;
  *(a1 + 88) = v6;
  if (v5)
  {
    v7 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v5, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/simulationcontroller/src/ScContactReportBuffer.h", 169);
  }

  else
  {
    v7 = 0;
  }

  *(a1 + 64) = v7;
  *(a1 + 112) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 136) = 1061158912;
  *(a1 + 140) = 0xFFFFFFFFLL;
  *(a1 + 148) = 0;
  physx::shdfnd::internal::HashBase<physx::Sc::BodySim const*,physx::Sc::BodySim const*,physx::shdfnd::Hash<physx::Sc::BodySim const*>,physx::shdfnd::internal::HashSetBase<physx::Sc::BodySim const*,physx::shdfnd::Hash<physx::Sc::BodySim const*>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(a1 + 96, 0x40u);
  *(a1 + 696) = 0x4000000000;
  *(a1 + 680) = 1;
  *(a1 + 688) = a1 + 168;
  *(a1 + 704) = 32;
  *(a1 + 712) = 256;
  *(a1 + 720) = 0;
  *(a1 + 1264) = 0x4000000000;
  *(a1 + 1248) = 1;
  *(a1 + 1256) = a1 + 736;
  *(a1 + 1272) = 32;
  *(a1 + 1280) = 1024;
  *(a1 + 1288) = 0;
  *(a1 + 1832) = 0x4000000000;
  *(a1 + 1816) = 1;
  *(a1 + 1824) = a1 + 1304;
  *(a1 + 1840) = 256;
  *(a1 + 1848) = 26624;
  *(a1 + 1856) = 0;
  *(a1 + 2400) = 0x4000000000;
  *(a1 + 2384) = 1;
  *(a1 + 2392) = a1 + 1872;
  *(a1 + 2408) = 32;
  *(a1 + 2416) = 2560;
  *(a1 + 2424) = 0;
  *(a1 + 2968) = 0x4000000000;
  *(a1 + 2952) = 1;
  *(a1 + 2960) = a1 + 2440;
  *(a1 + 2976) = 32;
  *(a1 + 2984) = 1280;
  *(a1 + 2992) = 0;
  *(a1 + 3536) = 0x4000000000;
  *(a1 + 3520) = 1;
  *(a1 + 3528) = a1 + 3008;
  *(a1 + 3544) = 32;
  *(a1 + 3552) = 2048;
  *(a1 + 3560) = 0;
  v8 = *(a2 + 24);
  *(a1 + 3584) = 0u;
  *(a1 + 3600) = 0;
  *(a1 + 3576) = v8;
  *(a1 + 3568) = &unk_1F5D1E740;
  *(a1 + 3608) = a1;
  *(a1 + 3616) = "ScNPhaseCore.mergeProcessedTriggerInteractions";
  *(a1 + 3624) = 0;
  v9 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v10 = "static const char *physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>::getName() [T = physx::shdfnd::MutexImpl]";
  }

  else
  {
    v10 = "<allocation names disabled>";
  }

  v11 = (*(*(v9 + 24) + 16))(v9 + 24, 72, v10, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsMutex.h", 138);
  *(a1 + 3632) = v11;
  physx::shdfnd::MutexImpl::MutexImpl(v11);
  *(a1 + 3640) = 0;
  *(a1 + 3648) = 0u;
  *(a1 + 3664) = 0u;
  *(a1 + 3680) = 0;
  *(a1 + 3688) = -3233808384;
  *(a1 + 3696) = 0;
  physx::shdfnd::internal::HashBase<physx::shdfnd::Pair<physx::Sc::BodyPairKey const,physx::Sc::ActorPair *>,physx::Sc::BodyPairKey,physx::shdfnd::Hash<physx::Sc::BodyPairKey>,physx::shdfnd::internal::HashMapBase<physx::Sc::BodyPairKey,physx::Sc::ActorPair *,physx::shdfnd::Hash<physx::Sc::BodyPairKey>,physx::shdfnd::NonTrackingAllocator>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(a1 + 3648, 0x40u);
  *(a1 + 3736) = 0;
  *(a1 + 3704) = 0u;
  *(a1 + 3720) = 0u;
  *(a1 + 3744) = -3233808384;
  *(a1 + 3752) = 0;
  physx::shdfnd::internal::HashBase<physx::shdfnd::Pair<physx::Sc::ElementSimKey const,physx::Sc::ElementSimInteraction *>,physx::Sc::ElementSimKey,physx::shdfnd::Hash<physx::Sc::ElementSimKey>,physx::shdfnd::internal::HashMapBase<physx::Sc::ElementSimKey,physx::Sc::ElementSimInteraction *,physx::shdfnd::Hash<physx::Sc::ElementSimKey>,physx::shdfnd::NonTrackingAllocator>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(a1 + 3704, 0x40u);
  v12 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v13 = "static const char *physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>::getName() [T = physx::shdfnd::MutexImpl]";
  }

  else
  {
    v13 = "<allocation names disabled>";
  }

  v14 = (*(*(v12 + 24) + 16))(v12 + 24, 72, v13, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsMutex.h", 138);
  *(a1 + 3760) = v14;
  physx::shdfnd::MutexImpl::MutexImpl(v14);
  v15 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v16 = "static const char *physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>::getName() [T = physx::shdfnd::MutexImpl]";
  }

  else
  {
    v16 = "<allocation names disabled>";
  }

  v17 = (*(*(v15 + 24) + 16))(v15 + 24, 72, v16, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsMutex.h", 138);
  *(a1 + 3768) = v17;
  physx::shdfnd::MutexImpl::MutexImpl(v17);
  v18 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v19 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Sc::FilterPairManager>::getName() [T = physx::Sc::FilterPairManager]";
  }

  else
  {
    v19 = "<allocation names disabled>";
  }

  v20 = (*(*(v18 + 24) + 16))(v18 + 24, 24, v19, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/simulationcontroller/src/ScNPhaseCore.cpp", 651);
  *v20 = 0;
  v20[1] = 0;
  v20[2] = 0xFFFFFFFFLL;
  *(a1 + 152) = v20;
  return a1;
}

void physx::Sc::NPhaseCore::~NPhaseCore(physx::Sc::NPhaseCore *this)
{
  physx::Sc::NPhaseCore::clearContactReportActorPairs(this, 0);
  v2 = *(this + 19);
  if (v2)
  {
    v3 = *(v2 + 12);
    if ((v3 & 0x80000000) == 0 && (v3 & 0x7FFFFFFF) != 0 && *v2 != 0)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v2);
  }

  physx::shdfnd::MutexT<physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>>::~MutexT(this + 471);
  physx::shdfnd::MutexT<physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>>::~MutexT(this + 470);
  if (*(this + 463))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  if (*(this + 456))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  physx::shdfnd::MutexT<physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>>::~MutexT(this + 454);
  *(this + 446) = &unk_1F5D1C1B0;
  *(this + 448) = 0;
  if (*(this + 887))
  {
    v86 = 0;
    v87 = 0;
    v5 = *(this + 445);
    if (v5)
    {
      do
      {
        v85 = v5;
        v6 = v87;
        if ((HIDWORD(v87) & 0x7FFFFFFFu) <= v87)
        {
          physx::shdfnd::Array<void *,physx::shdfnd::ReflectionAllocator<physx::Sc::ElementInteractionMarker>>::growAndPushBack(&v86, &v85);
        }

        else
        {
          v86[v87] = v5;
          LODWORD(v87) = v6 + 1;
        }

        v5 = **(this + 445);
        *(this + 445) = v5;
      }

      while (v5);
      v7 = v86;
      v8 = v87;
    }

    else
    {
      v8 = 0;
      v7 = 0;
    }

    physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::Sc::ElementInteractionMarker>>(v7, v8);
    physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::Sc::ElementInteractionMarker>>(*(this + 441), *(this + 884));
    v9 = *(this + 884);
    v10 = v86;
    if (v9)
    {
      v11 = *(this + 441);
      v12 = &v11[v9];
      do
      {
        v13 = *(this + 886);
        if (v13)
        {
          v14 = *v11;
          v15 = v13 << 6;
          v16 = *v11;
          do
          {
            if (v10 != &v86[v87] && v16 == *v10)
            {
              ++v10;
            }

            else
            {
              (**v16)(v16);
            }

            v16 += 8;
            v14 += 8;
            v15 -= 64;
          }

          while (v15);
        }

        ++v11;
      }

      while (v11 != v12);
      v10 = v86;
    }

    if ((v87 & 0x8000000000000000) == 0 && (v87 & 0x7FFFFFFF00000000) != 0 && v10 != 0)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v10);
    }
  }

  v18 = *(this + 441);
  v19 = *(this + 884);
  if (v19)
  {
    v20 = 8 * v19;
    do
    {
      if (*v18)
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
      }

      v18 = (v18 + 8);
      v20 -= 8;
    }

    while (v20);
    v18 = *(this + 441);
  }

  v21 = *(this + 885);
  if ((v21 & 0x80000000) == 0 && (v21 & 0x7FFFFFFF) != 0)
  {
    if (v18 == (this + 3008))
    {
      *(this + 3520) = 0;
    }

    else if (v18)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v18);
    }
  }

  if (*(this + 745))
  {
    v86 = 0;
    v87 = 0;
    v22 = *(this + 374);
    if (v22)
    {
      do
      {
        v85 = v22;
        v23 = v87;
        if ((HIDWORD(v87) & 0x7FFFFFFFu) <= v87)
        {
          physx::shdfnd::Array<void *,physx::shdfnd::ReflectionAllocator<physx::Sc::ActorPairContactReportData>>::growAndPushBack(&v86, &v85);
        }

        else
        {
          v86[v87] = v22;
          LODWORD(v87) = v23 + 1;
        }

        v22 = **(this + 374);
        *(this + 374) = v22;
      }

      while (v22);
      v24 = v86;
      v25 = v87;
    }

    else
    {
      v25 = 0;
      v24 = 0;
    }

    physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::Sc::ActorPairContactReportData>>(v24, v25);
    physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::Sc::ActorPairContactReportData>>(*(this + 370), *(this + 742));
    if ((v87 & 0x8000000000000000) == 0 && (v87 & 0x7FFFFFFF00000000) != 0 && v86)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }
  }

  v26 = *(this + 370);
  v27 = *(this + 742);
  if (v27)
  {
    v28 = 8 * v27;
    do
    {
      if (*v26)
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
      }

      v26 = (v26 + 8);
      v28 -= 8;
    }

    while (v28);
    v26 = *(this + 370);
  }

  v29 = *(this + 743);
  if ((v29 & 0x80000000) == 0 && (v29 & 0x7FFFFFFF) != 0)
  {
    if (v26 == (this + 2440))
    {
      *(this + 2952) = 0;
    }

    else if (v26)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v26);
    }
  }

  if (*(this + 603))
  {
    v86 = 0;
    v87 = 0;
    v30 = *(this + 303);
    if (v30)
    {
      do
      {
        v85 = v30;
        v31 = v87;
        if ((HIDWORD(v87) & 0x7FFFFFFFu) <= v87)
        {
          physx::shdfnd::Array<void *,physx::shdfnd::ReflectionAllocator<physx::Sc::TriggerInteraction>>::growAndPushBack(&v86, &v85);
        }

        else
        {
          v86[v87] = v30;
          LODWORD(v87) = v31 + 1;
        }

        v30 = **(this + 303);
        *(this + 303) = v30;
      }

      while (v30);
      v32 = v86;
      v33 = v87;
    }

    else
    {
      v33 = 0;
      v32 = 0;
    }

    physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::Sc::TriggerInteraction>>(v32, v33);
    physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::Sc::TriggerInteraction>>(*(this + 299), *(this + 600));
    v34 = *(this + 600);
    v35 = v86;
    if (v34)
    {
      v36 = *(this + 299);
      v37 = &v36[v34];
      do
      {
        v38 = *(this + 602);
        if (v38)
        {
          v39 = *v36;
          v40 = 80 * v38;
          v41 = *v36;
          do
          {
            if (v35 != &v86[v87] && v41 == *v35)
            {
              ++v35;
            }

            else
            {
              (**v41)(v41);
            }

            v41 += 10;
            v39 += 10;
            v40 -= 80;
          }

          while (v40);
        }

        ++v36;
      }

      while (v36 != v37);
      v35 = v86;
    }

    if ((v87 & 0x8000000000000000) == 0 && (v87 & 0x7FFFFFFF00000000) != 0 && v35 != 0)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v35);
    }
  }

  v43 = *(this + 299);
  v44 = *(this + 600);
  if (v44)
  {
    v45 = 8 * v44;
    do
    {
      if (*v43)
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
      }

      v43 = (v43 + 8);
      v45 -= 8;
    }

    while (v45);
    v43 = *(this + 299);
  }

  v46 = *(this + 601);
  if ((v46 & 0x80000000) == 0 && (v46 & 0x7FFFFFFF) != 0)
  {
    if (v43 == (this + 1872))
    {
      *(this + 2384) = 0;
    }

    else if (v43)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v43);
    }
  }

  if (*(this + 461))
  {
    v86 = 0;
    v87 = 0;
    v47 = *(this + 232);
    if (v47)
    {
      do
      {
        v85 = v47;
        v48 = v87;
        if ((HIDWORD(v87) & 0x7FFFFFFFu) <= v87)
        {
          physx::shdfnd::Array<void *,physx::shdfnd::ReflectionAllocator<physx::Sc::ShapeInteraction>>::growAndPushBack(&v86, &v85);
        }

        else
        {
          v86[v87] = v47;
          LODWORD(v87) = v48 + 1;
        }

        v47 = **(this + 232);
        *(this + 232) = v47;
      }

      while (v47);
      v49 = v86;
      v50 = v87;
    }

    else
    {
      v50 = 0;
      v49 = 0;
    }

    physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::Sc::ShapeInteraction>>(v49, v50);
    physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::Sc::ShapeInteraction>>(*(this + 228), *(this + 458));
    v51 = *(this + 458);
    v52 = v86;
    if (v51)
    {
      v53 = *(this + 228);
      v54 = &v53[v51];
      do
      {
        v55 = *(this + 460);
        if (v55)
        {
          v56 = *v53;
          v57 = 104 * v55;
          v58 = *v53;
          do
          {
            if (v52 != &v86[v87] && v58 == *v52)
            {
              ++v52;
            }

            else
            {
              (**v58)(v58);
            }

            v58 += 13;
            v56 += 13;
            v57 -= 104;
          }

          while (v57);
        }

        ++v53;
      }

      while (v53 != v54);
      v52 = v86;
    }

    if ((v87 & 0x8000000000000000) == 0 && (v87 & 0x7FFFFFFF00000000) != 0 && v52 != 0)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v52);
    }
  }

  v60 = *(this + 228);
  v61 = *(this + 458);
  if (v61)
  {
    v62 = 8 * v61;
    do
    {
      if (*v60)
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
      }

      v60 = (v60 + 8);
      v62 -= 8;
    }

    while (v62);
    v60 = *(this + 228);
  }

  v63 = *(this + 459);
  if ((v63 & 0x80000000) == 0 && (v63 & 0x7FFFFFFF) != 0)
  {
    if (v60 == (this + 1304))
    {
      *(this + 1816) = 0;
    }

    else if (v60)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v60);
    }
  }

  if (*(this + 319))
  {
    v86 = 0;
    v87 = 0;
    v64 = *(this + 161);
    if (v64)
    {
      do
      {
        v85 = v64;
        v65 = v87;
        if ((HIDWORD(v87) & 0x7FFFFFFFu) <= v87)
        {
          physx::shdfnd::Array<void *,physx::shdfnd::ReflectionAllocator<physx::Sc::ActorPairReport>>::growAndPushBack(&v86, &v85);
        }

        else
        {
          v86[v87] = v64;
          LODWORD(v87) = v65 + 1;
        }

        v64 = **(this + 161);
        *(this + 161) = v64;
      }

      while (v64);
      v66 = v86;
      v67 = v87;
      v68 = HIDWORD(v87);
    }

    else
    {
      v68 = 0;
      v67 = 0;
      v66 = 0;
    }

    physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::Sc::ActorPairReport>>(v66, v67);
    physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::Sc::ActorPairReport>>(*(this + 157), *(this + 316));
    if ((v68 & 0x80000000) == 0 && (v68 & 0x7FFFFFFF) != 0 && v66)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v66);
    }
  }

  v69 = *(this + 157);
  v70 = *(this + 316);
  if (v70)
  {
    v71 = 8 * v70;
    do
    {
      if (*v69)
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
      }

      v69 = (v69 + 8);
      v71 -= 8;
    }

    while (v71);
    v69 = *(this + 157);
  }

  v72 = *(this + 317);
  if ((v72 & 0x80000000) == 0 && (v72 & 0x7FFFFFFF) != 0)
  {
    if (v69 == (this + 736))
    {
      *(this + 1248) = 0;
    }

    else if (v69)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v69);
    }
  }

  if (*(this + 177))
  {
    v86 = 0;
    v87 = 0;
    v73 = *(this + 90);
    if (v73)
    {
      do
      {
        v85 = v73;
        v74 = v87;
        if ((HIDWORD(v87) & 0x7FFFFFFFu) <= v87)
        {
          physx::shdfnd::Array<void *,physx::shdfnd::ReflectionAllocator<physx::Sc::ActorPair>>::growAndPushBack(&v86, &v85);
        }

        else
        {
          v86[v87] = v73;
          LODWORD(v87) = v74 + 1;
        }

        v73 = **(this + 90);
        *(this + 90) = v73;
      }

      while (v73);
      v75 = v86;
      v76 = v87;
      v77 = HIDWORD(v87);
    }

    else
    {
      v77 = 0;
      v76 = 0;
      v75 = 0;
    }

    physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::Sc::ActorPair>>(v75, v76);
    physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::Sc::ActorPair>>(*(this + 86), *(this + 174));
    if ((v77 & 0x80000000) == 0 && (v77 & 0x7FFFFFFF) != 0 && v75)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v75);
    }
  }

  v78 = *(this + 86);
  v79 = *(this + 174);
  if (v79)
  {
    v80 = 8 * v79;
    do
    {
      if (*v78)
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
      }

      v78 = (v78 + 8);
      v80 -= 8;
    }

    while (v80);
    v78 = *(this + 86);
  }

  v81 = *(this + 175);
  if ((v81 & 0x80000000) == 0 && (v81 & 0x7FFFFFFF) != 0)
  {
    if (v78 == (this + 168))
    {
      *(this + 680) = 0;
    }

    else if (v78)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v78);
    }
  }

  if (*(this + 12))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  if (*(this + 8))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v82 = *(this + 15);
  if ((v82 & 0x80000000) == 0 && (v82 & 0x7FFFFFFF) != 0 && *(this + 6))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v83 = *(this + 9);
  if ((v83 & 0x80000000) == 0 && (v83 & 0x7FFFFFFF) != 0 && *(this + 3))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v84 = *(this + 5);
  if ((v84 & 0x80000000) == 0 && (v84 & 0x7FFFFFFF) != 0)
  {
    if (*(this + 1))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }
  }
}

int32x2_t *physx::Sc::NPhaseCore::clearContactReportActorPairs(int32x2_t *this, char a2)
{
  v3 = this;
  v4 = this[2].u32[0];
  if (v4)
  {
    for (i = 0; i < v4; ++i)
    {
      v6 = *(*&v3[1] + 8 * i);
      v7 = v6->u16[2];
      v6->i16[2] = v7 - 1;
      if (v7 < 2)
      {
        v8 = v6[3];
        v10 = *(*&v8 + 16);
        v9 = *(*&v8 + 20);
        if (v10 >= v9)
        {
          v11 = v9;
        }

        else
        {
          v11 = v10;
        }

        if (v10 > v9)
        {
          v9 = v10;
        }

        v13 = __PAIR64__(v9, v11);
        this = physx::shdfnd::internal::HashMapBase<physx::Sc::BodyPairKey,physx::Sc::ActorPair *,physx::shdfnd::Hash<physx::Sc::BodyPairKey>,physx::shdfnd::NonTrackingAllocator>::erase(v3 + 456, &v13);
        v12 = v6[3];
        if (v12)
        {
          --v3[372].i32[1];
          *v12 = v3[374];
          v3[374] = v12;
          v6[3] = 0;
        }

        --v3[159].i32[1];
        *v6 = v3[161];
        v3[161] = v6;
        v4 = v3[2].u32[0];
      }

      else
      {
        v6->i16[0] &= ~2u;
      }
    }
  }

  if (a2)
  {
    v13 = 0;
    physx::shdfnd::Array<physx::Sc::ActorPairReport *,physx::shdfnd::ReflectionAllocator<physx::Sc::ActorPairReport *>>::resize(&v3[1], 0, &v13);
    return physx::shdfnd::Array<physx::Sc::ActorPairReport *,physx::shdfnd::ReflectionAllocator<physx::Sc::ActorPairReport *>>::recreate(&v3[1], v3[2].u32[0]);
  }

  else
  {
    v3[2].i32[0] = 0;
  }

  return this;
}

void *physx::Cm::DelegateTask<physx::Sc::NPhaseCore,&physx::Sc::NPhaseCore::mergeProcessedTriggerInteractions>::~DelegateTask(void *result)
{
  *result = &unk_1F5D1C1B0;
  result[2] = 0;
  return result;
}

uint64_t physx::Sc::NPhaseCore::findInteraction(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a2 <= a3)
  {
    v3 = a2;
  }

  else
  {
    v3 = a3;
  }

  if (a2 <= a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = a2;
  }

  if (!*(a1 + 3756))
  {
    return 0;
  }

  v5 = (v4 << 14) & 0xFFFF0000 | (v3 >> 2);
  v6 = 9 * ((v5 + ~(v5 << 15)) ^ ((v5 + ~(v5 << 15)) >> 10));
  v7 = *(*(a1 + 3728) + 4 * ((*(a1 + 3740) - 1) & (((v6 ^ (v6 >> 6)) + ~((v6 ^ (v6 >> 6)) << 11)) ^ (((v6 ^ (v6 >> 6)) + ~((v6 ^ (v6 >> 6)) << 11)) >> 16))));
  if (v7 == -1)
  {
    return 0;
  }

  while (1)
  {
    v8 = (*(a1 + 3712) + 24 * v7);
    if (*v8 == v3 && v8[1] == v4)
    {
      break;
    }

    v7 = *(*(a1 + 3720) + 4 * v7);
    if (v7 == -1)
    {
      return 0;
    }
  }

  return v8[2];
}

physx::Sc::ElementInteractionMarker *physx::Sc::NPhaseCore::onOverlapCreated(physx::Sc::ElementInteractionMarker *result, uint64_t a2, unsigned int a3)
{
  if (a3)
  {
    v3 = result;
    v4 = a3;
    v5 = (a2 + 8);
    do
    {
      result = physx::Sc::NPhaseCore::createRbElementInteraction(v3, *v5, *(v5 - 1), 0, 0, 0);
      v5 += 3;
      --v4;
    }

    while (v4);
  }

  return result;
}

physx::Sc::ElementInteractionMarker *physx::Sc::NPhaseCore::createRbElementInteraction(physx::Sc::NPhaseCore *a1, physx::Sc::ElementSim *a2, physx::Sc::ElementSim *a3, uint64_t a4, physx::Sc::ShapeInteraction *a5, physx::Sc::ElementInteractionMarker *a6)
{
  v12 = *a1;
  v13 = *(a1 + 19);
  v14 = *(*a1 + 4000);
  v18[0] = *(*a1 + 4016);
  v18[1] = v14;
  v19 = *(v12 + 4008);
  v20 = *(v12 + 4024);
  v21 = v13;
  v22 = *(v12 + 4032);
  v17 = 0;
  filterRbCollisionPair(v18, a2, a3, 0xFFFFFFFFLL, &v17, 0, v16);
  if (v16[0])
  {
    return 0;
  }

  else
  {
    return physx::Sc::NPhaseCore::createRbElementInteraction(a1, v16, a2, a3, a4, a5, a6, v17);
  }
}

uint64_t physx::shdfnd::internal::HashMapBase<physx::Sc::ElementSimKey,physx::Sc::ElementSimInteraction *,physx::shdfnd::Hash<physx::Sc::ElementSimKey>,physx::shdfnd::NonTrackingAllocator>::insert(int32x2_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v9 = a2;
  *(&v9 + 1) = a3;
  v8 = 0;
  v5 = physx::shdfnd::internal::HashBase<physx::shdfnd::Pair<physx::Sc::ElementSimKey const,physx::Sc::ElementSimInteraction *>,physx::Sc::ElementSimKey,physx::shdfnd::Hash<physx::Sc::ElementSimKey>,physx::shdfnd::internal::HashMapBase<physx::Sc::ElementSimKey,physx::Sc::ElementSimInteraction *,physx::shdfnd::Hash<physx::Sc::ElementSimKey>,physx::shdfnd::NonTrackingAllocator>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::create(a1, &v9, &v8);
  v6 = v8;
  if ((v8 & 1) == 0)
  {
    *v5 = v9;
    v5[2] = a4;
  }

  return v6 ^ 1u;
}

int32x2_t *physx::Sc::NPhaseCore::unregisterInteraction(int32x2_t *result, uint64_t a2)
{
  v2 = *(a2 + 40);
  v3 = *(a2 + 48);
  if (v2 <= v3)
  {
    v4 = *(a2 + 40);
  }

  else
  {
    v4 = *(a2 + 48);
  }

  if (v2 <= v3)
  {
    v5 = *(a2 + 48);
  }

  else
  {
    v5 = *(a2 + 40);
  }

  if (result[469].i32[1])
  {
    v6 = (v5 << 14) & 0xFFFF0000 | (v4 >> 2);
    v7 = 9 * ((v6 + ~(v6 << 15)) ^ ((v6 + ~(v6 << 15)) >> 10));
    v8 = (*&result[466] + 4 * ((result[467].i32[1] - 1) & (((v7 ^ (v7 >> 6)) + ~((v7 ^ (v7 >> 6)) << 11)) ^ (((v7 ^ (v7 >> 6)) + ~((v7 ^ (v7 >> 6)) << 11)) >> 16))));
    v9 = *v8;
    if (v9 != -1)
    {
      v10 = result[464];
      v11 = (*&v10 + 24 * v9);
      v12 = *v11;
      v13 = v11[1];
      v14 = result[465];
      if (v12 == v4 && v13 == v5)
      {
LABEL_20:
        *v8 = *(*&v14 + 4 * v9);
        v21 = vadd_s32(result[469], 0xFFFFFFFF00000001);
        result[469] = v21;
        if (v9 != v21.i32[1])
        {
          v22 = *&v10 + 24 * v9;
          v23 = *&v10 + 24 * v21.u32[1];
          *v22 = *v23;
          v24 = *(v23 + 16);
          v25 = result[465];
          *(*&v25 + 4 * v9) = *(*&v25 + 4 * result[469].u32[1]);
          *(v22 + 16) = v24;
          LODWORD(v24) = (*(*&result[464] + 24 * v9 + 8) << 14) & 0xFFFF0000 | (*(*&result[464] + 24 * v9) >> 2);
          LODWORD(v24) = 9 * ((v24 + ~(v24 << 15)) ^ ((v24 + ~(v24 << 15)) >> 10));
          LODWORD(v24) = (v24 ^ (v24 >> 6)) + ~((v24 ^ (v24 >> 6)) << 11);
          v26 = (*&result[466] + 4 * ((v24 ^ WORD1(v24)) & (result[467].i32[1] - 1)));
          v27 = result[469].u32[1];
          v28 = *v26;
          if (v28 != v27)
          {
            do
            {
              v29 = v28;
              v28 = *(*&v25 + 4 * v28);
            }

            while (v28 != v27);
            v26 = (*&v25 + 4 * v29);
          }

          *v26 = v9;
        }

        --result[468].i32[1];
      }

      else
      {
        while (1)
        {
          v16 = v9;
          v9 = *(*&v14 + 4 * v9);
          if (v9 == -1)
          {
            break;
          }

          v17 = (*&v10 + 24 * v9);
          v19 = *v17;
          v18 = v17[1];
          if (v19 == v4 && v18 == v5)
          {
            v8 = (*&v14 + 4 * v16);
            goto LABEL_20;
          }
        }
      }
    }
  }

  return result;
}

int32x2_t *physx::Sc::NPhaseCore::onOverlapRemoved(uint64_t a1, unint64_t a2, unint64_t a3, int a4, int32x2_t *a5, uint64_t a6, char a7)
{
  if (a5 || (result = physx::Sc::NPhaseCore::findInteraction(a1, a3, a2), (a5 = result) != 0))
  {

    return physx::Sc::NPhaseCore::releaseElementPair(a1, a5, 4, a4, 1, a6, a7);
  }

  return result;
}

int32x2_t *physx::Sc::NPhaseCore::releaseElementPair(uint64_t a1, int32x2_t *a2, char a3, int a4, int a5, uint64_t a6, char a7)
{
  result = physx::Sc::Interaction::setClean(a2 + 1, a5);
  if ((a2[4].i8[5] & 0x10) != 0)
  {
    v14 = a2[7].u32[0];
    v15 = *a1;
    v16 = a2[5];
    v17 = a2[6];
    v33 = 0;
    getFilterInfo_ShapeSim(&v33 + 1, v28, *(*&v16 + 8), *(*&v16 + 56));
    getFilterInfo_ShapeSim(&v33, &v34, *(*&v17 + 8), *(*&v17 + 56));
    v18 = *(v15 + 4024);
    v31 = v34;
    v32 = v28[0];
    result = (*(*v18 + 8))(v18, v14, HIDWORD(v33), &v32, v33, &v31, a3 & 1);
    v19 = *(a1 + 152);
    *(*v19 + 8 * v14) = v19[2];
    v19[2] = v14;
  }

  v20 = a2[4].u8[4];
  if (a2[4].i8[4])
  {
    if (v20 == 2)
    {
      result = (**a2)(a2);
      --*(a1 + 3548);
      *a2 = *(a1 + 3560);
      *(a1 + 3560) = a2;
    }

    else if (v20 == 1)
    {
      v30 = 0;
      v34.n128_u16[4] = -1;
      v34.n128_u64[0] = -1;
      if (physx::Sc::findTriggerContacts(a2, 1, a3 & 1, v28, &v34, *(*a1 + 4256) + 16))
      {
        v21 = *a1;
        v22 = *(*a1 + 2136);
        if ((*(*a1 + 2140) & 0x7FFFFFFFu) <= v22)
        {
          physx::shdfnd::Array<physx::PxTriggerPair,physx::shdfnd::ReflectionAllocator<physx::PxTriggerPair>>::growAndPushBack(v21 + 2128, v28);
        }

        else
        {
          v23 = *(v21 + 2128) + 40 * v22;
          v24 = v28[1];
          *v23 = v28[0];
          *(v23 + 16) = v24;
          *(v23 + 32) = v29;
          *(v23 + 36) = v30;
          ++*(v21 + 2136);
        }

        v25 = *(*a1 + 2144);
        v26 = *(v25 + 8);
        if ((*(v25 + 12) & 0x7FFFFFFFu) <= v26)
        {
          physx::shdfnd::Array<physx::Sc::TriggerPairExtraData,physx::shdfnd::ReflectionAllocator<physx::Sc::TriggerPairExtraData>>::growAndPushBack(v25, &v34);
        }

        else
        {
          v27 = *v25 + 12 * v26;
          *v27 = v34.n128_u64[0];
          *(v27 + 8) = v34.n128_u32[2];
          ++*(v25 + 8);
        }
      }

      result = (**a2)(a2);
      --*(a1 + 2412);
      *a2 = *(a1 + 2424);
      *(a1 + 2424) = a2;
    }
  }

  else
  {
    if ((a3 & 3) != 0)
    {
      physx::Sc::NPhaseCore::lostTouchReports(a1, a2, a3, a4, a6, a7);
    }

    result = (**a2)(a2);
    --*(a1 + 1844);
    *a2 = *(a1 + 1856);
    *(a1 + 1856) = a2;
  }

  return result;
}

int32x2_t *physx::Sc::NPhaseCore::onVolumeRemoved(int32x2_t *result, uint64_t a2, char a3, uint64_t a4, char a5)
{
  v5 = *(a2 + 8);
  v6 = *(v5 + 52);
  if (v6)
  {
    v11 = result;
    v12 = *(v5 + 40);
    v13 = 8 * v6;
    while (1)
    {
      v14 = *(v12 - 8 + v13);
      if ((*(v14 + 29) & 1) != 0 && (*(v14 + 32) == a2 || *(v14 + 40) == a2))
      {
        break;
      }

      v13 -= 8;
      if (!v13)
      {
        return result;
      }
    }

    result = physx::Sc::NPhaseCore::releaseElementPair(result, (v14 - 8), a3 | 3u, 0, 1, a4, a5);
    if (v13 != 8)
    {
      for (i = v13 - 16; ; i -= 8)
      {
        v16 = *(v12 + i);
        if ((*(v16 + 29) & 1) != 0 && (*(v16 + 32) == a2 || *(v16 + 40) == a2))
        {
          result = physx::Sc::NPhaseCore::releaseElementPair(v11, (v16 - 8), a3 | 3u, 0, 1, a4, a5);
          if (!i)
          {
            return result;
          }
        }

        else if (!i)
        {
          return result;
        }
      }
    }
  }

  return result;
}

physx::Sc::ElementInteractionMarker *physx::Sc::NPhaseCore::createRbElementInteraction(physx::Sc::NPhaseCore *a1, uint64_t a2, physx::Sc::ElementSim *a3, physx::Sc::ElementSim *a4, uint64_t a5, physx::Sc::ShapeInteraction *a6, physx::Sc::ElementInteractionMarker *a7, char a8)
{
  if ((*a2 & 2) != 0)
  {
    result = physx::Sc::NPhaseCore::createElementInteractionMarker(a1, a3, a4, a7);
  }

  else if (a8)
  {
    v12 = *(a2 + 2);
    result = physx::Sc::NPhaseCore::createTriggerInteraction(a1, a3, a4, &v12);
  }

  else
  {
    v13 = *(a2 + 2);
    result = physx::Sc::NPhaseCore::createShapeInteraction(a1, a3, a4, &v13, a5, a6);
  }

  v11 = *(a2 + 4);
  if (v11 != -1)
  {
    *(result + 37) |= 0x10u;
    *(**(a1 + 19) + 8 * v11) = result;
    *(result + 14) = v11;
  }

  return result;
}

physx::Sc::ShapeInteraction *physx::Sc::NPhaseCore::createShapeInteraction(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, uint64_t a5, physx::Sc::ShapeInteraction *this)
{
  v6 = this;
  v9 = a2;
  v11 = *(a2 + 8);
  v12 = *(a3 + 8);
  v13 = *(v11 + 80);
  v14 = *(v13 + 13);
  v15 = *(*(v12 + 80) + 13);
  if (v14 == 2 && v15 == 2)
  {
    v17 = *(*(v11 + 136) + 159) != 0;
  }

  else
  {
    if (!*(v13 + 13))
    {
      goto LABEL_21;
    }

    v17 = 0;
  }

  v18 = v15 == 1 && v14 == 2;
  if (v18 || v17 || (v14 == 1 ? (v19 = v15 == 1) : (v19 = 0), v19 && (*(v13 + 44) & 1) != 0 || v14 == v15 && *(v11 + 88) < *(v12 + 88)))
  {
LABEL_21:
    v20 = a3;
    if (this)
    {
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  v20 = a2;
  v9 = a3;
  if (this)
  {
    goto LABEL_27;
  }

LABEL_24:
  v6 = *(a1 + 1856);
  if (!v6)
  {
    physx::shdfnd::PoolBase<physx::Sc::ShapeInteraction,physx::shdfnd::ReflectionAllocator<physx::Sc::ShapeInteraction>>::allocateSlab(a1 + 1296);
    v6 = *(a1 + 1856);
  }

  *(a1 + 1856) = *v6;
  ++*(a1 + 1844);
LABEL_27:
  v22 = *a4;
  return physx::Sc::ShapeInteraction::ShapeInteraction(v6, v20, v9, &v22, a5);
}

physx::Sc::TriggerInteraction *physx::Sc::NPhaseCore::createTriggerInteraction(uint64_t a1, physx::Sc::ShapeSim *a2, physx::Sc::ShapeSim *a3, _WORD *a4)
{
  v8 = *(*(a3 + 7) + 64);
  v9 = *(a1 + 2424);
  if (!v9)
  {
    physx::shdfnd::PoolBase<physx::Sc::TriggerInteraction,physx::shdfnd::ReflectionAllocator<physx::Sc::TriggerInteraction>>::allocateSlab(a1 + 1864);
    v9 = *(a1 + 2424);
  }

  if ((v8 & 4) != 0)
  {
    v10 = a3;
  }

  else
  {
    v10 = a2;
  }

  if ((v8 & 4) != 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = a3;
  }

  *(a1 + 2424) = *v9;
  ++*(a1 + 2412);
  result = physx::Sc::TriggerInteraction::TriggerInteraction(v9, v10, v11);
  *(result + 38) = *(result + 38) & 0xFFE0 | *a4 & 0x14;
  return result;
}

physx::Sc::ElementInteractionMarker *physx::Sc::NPhaseCore::createElementInteractionMarker(physx::Sc::NPhaseCore *this, physx::Sc::ElementSim *a2, physx::Sc::ElementSim *a3, physx::Sc::ElementInteractionMarker *a4)
{
  v7 = a4;
  if (!a4)
  {
    v7 = *(this + 445);
    if (!v7)
    {
      physx::shdfnd::PoolBase<physx::Sc::ElementInteractionMarker,physx::shdfnd::ReflectionAllocator<physx::Sc::ElementInteractionMarker>>::allocateSlab(this + 3000);
      v7 = *(this + 445);
    }

    *(this + 445) = *v7;
    ++*(this + 887);
  }

  v9 = *(a3 + 1);
  *(v7 + 1) = *(a2 + 1);
  *(v7 + 2) = v9;
  *(v7 + 3) = -1;
  *(v7 + 8) = -1;
  *(v7 + 18) = 1282;
  *(v7 + 38) = 0;
  *(v7 + 5) = a2;
  *(v7 + 6) = a3;
  *(v7 + 14) = -1;
  *v7 = &unk_1F5D1E878;
  if (!a4)
  {
    physx::Sc::activateInteraction((v7 + 8), 0, a3);
    physx::Sc::ActorSim::registerInteractionInActor(*(v7 + 1), (v7 + 8));
    physx::Sc::ActorSim::registerInteractionInActor(*(v7 + 2), (v7 + 8));
    physx::Sc::Scene::registerInteraction(*(*(v7 + 1) + 72), (v7 + 8), 0);
    v10 = *(v7 + 5);
    v11 = *(v7 + 6);
    if (v10 <= v11)
    {
      v12 = *(v7 + 5);
    }

    else
    {
      v12 = *(v7 + 6);
    }

    if (v10 <= v11)
    {
      v13 = *(v7 + 6);
    }

    else
    {
      v13 = *(v7 + 5);
    }

    physx::shdfnd::internal::HashMapBase<physx::Sc::ElementSimKey,physx::Sc::ElementSimInteraction *,physx::shdfnd::Hash<physx::Sc::ElementSimKey>,physx::shdfnd::NonTrackingAllocator>::insert((*(*(*(v7 + 1) + 72) + 3992) + 3704), v12, v13, v7);
  }

  return v7;
}

uint64_t filterRbCollisionPair@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, BOOL *a5@<X4>, char a6@<W5>, unsigned __int16 *a7@<X8>)
{
  v7 = a6;
  v11 = result;
  v13 = *(a2 + 8);
  v14 = *(*(v13 + 80) + 13);
  if ((v14 - 1) >= 2)
  {
    v15 = 0;
  }

  else
  {
    v15 = *(a2 + 8);
  }

  v16 = *(a3 + 8);
  v17 = *(*(v16 + 10) + 13);
  if ((v17 - 1) >= 2)
  {
    v18 = 0;
  }

  else
  {
    v18 = *(a3 + 8);
  }

  v19 = *(*(a2 + 56) + 64);
  v20 = *(*(a3 + 56) + 64);
  *a5 = ((v20 | v19) & 4) != 0;
  if (((v20 | v19) & 4) != 0)
  {
    if ((v19 & v20 & 4) != 0)
    {
LABEL_12:
      if (a4 != -1)
      {
        v23 = *(v11 + 32);
        *(*v23 + 8 * a4) = v23[2];
        v23[2] = a4;
      }

      v24 = 0xFFFFFFFF00000001;
      goto LABEL_29;
    }

    goto LABEL_49;
  }

  if (!v15)
  {
    v21 = 0;
    if (v18)
    {
      goto LABEL_10;
    }

LABEL_16:
    v22 = 0;
    goto LABEL_17;
  }

  v21 = *(*(v15 + 10) + 44) & 1;
  if (!v18)
  {
    goto LABEL_16;
  }

LABEL_10:
  v22 = *(*(v18 + 10) + 44) & 1;
LABEL_17:
  if ((v21 | v22) == 1)
  {
    if (*(result + 44))
    {
      if (!v15 || v18 == 0)
      {
        goto LABEL_26;
      }
    }

    if (!*(result + 40))
    {
      v22 = 0;
    }

    if ((v21 & v22) == 1)
    {
LABEL_26:
      if (a4 != -1)
      {
        v26 = *(result + 32);
        *(*v26 + 8 * a4) = v26[2];
        v26[2] = a4;
      }

      v24 = 0xFFFFFFFF00000002;
LABEL_29:
      *a7 = v24;
      return result;
    }
  }

  v34 = a7;
  if (v15)
  {
    result = filterJointedBodies(v15, v16);
    if ((result & 1) == 0)
    {
LABEL_38:
      v28 = v14 == 2 && v17 == 2;
      a7 = v34;
      v7 = a6;
      if (v28)
      {
        v29 = *(v13 + 52);
        if (v29)
        {
          v30 = *(v13 + 40);
          do
          {
            v32 = *v30++;
            v31 = v32;
            if (*(v32 + 28) == 5 && (*v31 == v16 || v31[1] == v16))
            {
              goto LABEL_12;
            }
          }

          while (--v29);
        }
      }

LABEL_49:

      return physx::Sc::filterRbCollisionPairSecondStage(v11, a2, a3, v15, v18, a4, v7, a7);
    }
  }

  else
  {
    if (!v18)
    {
      goto LABEL_38;
    }

    result = filterJointedBodies(v18, v13);
    if (!result)
    {
      goto LABEL_38;
    }
  }

  if (a4 != -1)
  {
    v27 = *(v11 + 32);
    *(*v27 + 8 * a4) = v27[2];
    v27[2] = a4;
  }

  *v34 = 0xFFFFFFFF00000002;
  return result;
}

int32x2_t *physx::Sc::NPhaseCore::managerNewTouch(int32x2_t *this, int32x2_t **a2)
{
  if (!a2[9])
  {
    this = physx::Sc::NPhaseCore::findActorPair(this, a2[5], a2[6], a2[8] & 0x1DC);
    ++this->i16[2];
    a2[9] = this;
  }

  return this;
}

int32x2_t *physx::Sc::NPhaseCore::findActorPair(int32x2_t *this, int32x2_t *a2, int32x2_t *a3, int a4)
{
  v8 = *(*&a2[1] + 88);
  v9 = *(*&a3[1] + 88);
  if (v8 <= v9)
  {
    v10 = a2[1];
  }

  else
  {
    v10 = a3[1];
  }

  if (v8 <= v9)
  {
    v11 = a3[1];
  }

  else
  {
    v11 = a2[1];
  }

  v12 = *(*&v10 + 88);
  v13 = *(*&v11 + 88);
  v14 = this[460].u32[1];
  if (v14)
  {
    v15 = 9 * (((v12 | (v13 << 16)) + ~((v12 | (v13 << 16)) << 15)) ^ (((v12 | (v13 << 16)) + ~((v12 | (v13 << 16)) << 15)) >> 10));
    v16 = (v15 ^ (v15 >> 6)) + ~((v15 ^ (v15 >> 6)) << 11);
    v17 = (v16 ^ HIWORD(v16)) & (v14 - 1);
    v18 = *(*&this[459] + 4 * v17);
    if (v18 != -1)
    {
      while (1)
      {
        v19 = *&this[457] + 16 * v18;
        if (*v19 == v12 && *(v19 + 4) == v13)
        {
          break;
        }

        v18 = *(*&this[458] + 4 * v18);
        if (v18 == -1)
        {
          goto LABEL_16;
        }
      }

      v41 = *(v19 + 8);
      v27 = v19 + 8;
      result = v41;
      if (v41)
      {
        goto LABEL_28;
      }

      goto LABEL_24;
    }
  }

  else
  {
    v17 = 0;
  }

LABEL_16:
  if (this[462].i32[1] == this[460].i32[0])
  {
    if (v14)
    {
      v21 = 2 * v14;
    }

    else
    {
      v21 = 16;
    }

    if (v14 < v21)
    {
      physx::shdfnd::internal::HashBase<physx::shdfnd::Pair<physx::Sc::BodyPairKey const,physx::Sc::ActorPair *>,physx::Sc::BodyPairKey,physx::shdfnd::Hash<physx::Sc::BodyPairKey>,physx::shdfnd::internal::HashMapBase<physx::Sc::BodyPairKey,physx::Sc::ActorPair *,physx::shdfnd::Hash<physx::Sc::BodyPairKey>,physx::shdfnd::NonTrackingAllocator>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(&this[456], v21);
      v14 = this[460].u32[1];
    }

    v22 = 9 * (((v12 | (v13 << 16)) + ~((v12 | (v13 << 16)) << 15)) ^ (((v12 | (v13 << 16)) + ~((v12 | (v13 << 16)) << 15)) >> 10));
    v17 = (v14 - 1) & (((v22 ^ (v22 >> 6)) + ~((v22 ^ (v22 >> 6)) << 11)) ^ (((v22 ^ (v22 >> 6)) + ~((v22 ^ (v22 >> 6)) << 11)) >> 16));
  }

  v23 = this[461].u32[1];
  this[461].i32[1] = v23 + 1;
  v24 = this[459];
  *(*&this[458] + 4 * v23) = *(*&v24 + 4 * v17);
  *(*&v24 + 4 * v17) = v23;
  this[462] = vadd_s32(this[462], 0x100000001);
  v25 = this[457];
  v26 = *&v25 + 16 * v23;
  *(v26 + 8) = 0;
  v27 = v26 + 8;
  *(*&v25 + 16 * v23) = v12 | (v13 << 32);
LABEL_24:
  if (!a4)
  {
    result = this[90];
    if (!result)
    {
      v38 = physx::shdfnd::ReflectionAllocator<physx::Sc::ActorPair>::allocate(this[89].u32[0], "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsPool.h", 180);
      v39 = v38;
      v44 = v38;
      v40 = this[87].u32[0];
      if ((this[87].i32[1] & 0x7FFFFFFFu) <= v40)
      {
        physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::Sc::ActorPair>>>::growAndPushBack(&this[21], &v44);
      }

      else
      {
        *(*&this[86] + 8 * v40) = v38;
        this[87].i32[0] = v40 + 1;
      }

      v42 = v39 + 8 * this[88].u32[0] - 8;
      result = this[90];
      if (v42 >= v39)
      {
        v43 = (v39 + 8 * this[88].u32[0] - 8);
        do
        {
          *v43-- = result;
          result = v42;
          v42 = v43;
        }

        while (v43 >= v39);
        result = (v43 + 1);
      }
    }

    this[90] = *result;
    ++this[88].i32[1];
    result->i32[0] = 0;
    result->i16[2] = 0;
    goto LABEL_51;
  }

  v28 = a2[1];
  v29 = a3[1];
  result = this[161];
  if (!result)
  {
    physx::shdfnd::PoolBase<physx::Sc::ActorPairReport,physx::shdfnd::ReflectionAllocator<physx::Sc::ActorPairReport>>::allocateSlab(&this[91]);
    result = this[161];
  }

  this[161] = *result;
  ++this[159].i32[1];
  result->i16[2] = 0;
  result[1] = v28;
  result[2] = v29;
  result[3] = 0;
  result->i32[0] = 1;
  *v27 = result;
LABEL_28:
  if (a4 && (result->i16[0] & 1) == 0)
  {
    v31 = *(*&v10 + 52);
    v32 = *(*&v10 + 40);
    v33 = a2[1];
    v34 = a3[1];
    result = this[161];
    if (!result)
    {
      physx::shdfnd::PoolBase<physx::Sc::ActorPairReport,physx::shdfnd::ReflectionAllocator<physx::Sc::ActorPairReport>>::allocateSlab(&this[91]);
      result = this[161];
    }

    this[161] = *result;
    ++this[159].i32[1];
    result->i16[2] = 0;
    result[1] = v33;
    result[2] = v34;
    result[3] = 0;
    result->i32[0] = 1;
    v35 = *v27;
    result->i16[1] = *(*v27 + 2);
    for (result->i16[2] = *(v35 + 4); v31; --v31)
    {
      v37 = *v32++;
      v36 = v37;
      if ((*v37 == *&v11 || v36[1] == *&v11) && !*(v36 + 28))
      {
        if (v36[8])
        {
          v36[8] = result;
        }
      }
    }

LABEL_51:
    *v27 = result;
  }

  return result;
}

uint64_t physx::Sc::NPhaseCore::refilterInteraction(int32x2_t *a1, uint64_t a2, unsigned __int16 *a3, int a4, uint64_t a5, char a6)
{
  v6 = *(a2 + 36);
  if (v6 > 2)
  {
    return 0;
  }

  v7 = a6;
  v8 = a5;
  v9 = a2;
  v11 = *(a2 + 40);
  v12 = *(a2 + 48);
  if (a3)
  {
    v13 = *a3;
    v14 = a3[1];
    v15 = *(a3 + 1);
    if ((~v13 & 0xD) == 0)
    {
      v17 = a3[1];
      v18 = *a1;
      v58 = 0;
      v57 = 0;
      getFilterInfo_ShapeSim(&v58, &v50, *(v11 + 8), *(v11 + 56));
      getFilterInfo_ShapeSim(&v57, &v59, *(v12 + 8), *(v12 + 56));
      v19 = *(*&v18 + 4024);
      v14 = v17;
      v7 = a6;
      v8 = a5;
      v55 = v59;
      v56 = v50;
      (*(*v19 + 8))(v19, v15, v58, &v56, v57, &v55, 0);
      v20 = a1[19];
      *(*v20 + 8 * v15) = v20[2];
      v20[2] = v15;
      LODWORD(v15) = -1;
    }

    if (*(*(*(v11 + 8) + 80) + 13) - 1 >= 2)
    {
      v21 = 0;
    }

    else
    {
      v21 = *(v11 + 8);
    }

    v22 = *(v12 + 8);
    if (*(*(v22 + 80) + 13) - 1 >= 2)
    {
      v22 = 0;
    }

    if ((v13 & 3) == 0 && v21)
    {
      v23 = *(*(v21 + 80) + 44) & 1;
      v24 = !v22 || v23 == 0;
      if (!v24 && (*(*(v22 + 80) + 44) & 1) != 0)
      {
        v14 &= 0xFFFEu;
      }
    }
  }

  else
  {
    if ((*(a2 + 37) & 0x10) != 0)
    {
      v15 = *(a2 + 56);
      v25 = *a1;
      v58 = 0;
      v57 = 0;
      getFilterInfo_ShapeSim(&v58, &v50, *(v11 + 8), *(v11 + 56));
      getFilterInfo_ShapeSim(&v57, &v59, *(v12 + 8), *(v12 + 56));
      v26 = *(*&v25 + 4024);
      v55 = v59;
      v56 = v50;
      (*(*v26 + 8))(v26, v15, v58, &v56, v57, &v55, 0);
    }

    else
    {
      v15 = 0xFFFFFFFFLL;
    }

    v27 = *a1;
    v28 = a1[19];
    v29 = *(*a1 + 4000);
    v50.n128_u64[0] = *(*a1 + 4016);
    v50.n128_u64[1] = v29;
    v51 = *(*&v27 + 4008);
    v52 = *(*&v27 + 4024);
    v53 = v28;
    v54 = *(*&v27 + 4032);
    filterRbCollisionPair(&v50, v11, v12, v15, &v56, 1, &v59);
    LOBYTE(v13) = v59.n128_u8[0];
    v14 = v59.n128_u16[1];
    LODWORD(v15) = v59.n128_u32[1];
  }

  if ((*(v9 + 37) & 0x10) != 0 && (v13 & 0xC) != 0xC)
  {
    *(v9 + 37) &= ~0x10u;
    if (v15 != -1)
    {
      v30 = a1[19];
      *(*v30 + 8 * v15) = v30[2];
      v30[2] = v15;
    }

    LODWORD(v15) = -1;
  }

  if (v13)
  {
    v31 = 6;
  }

  else if ((v13 & 2) != 0)
  {
    v31 = 2;
  }

  else if ((*(*(v11 + 56) + 64) & 4) != 0)
  {
    v31 = 1;
  }

  else
  {
    v31 = (*(*(v12 + 56) + 64) >> 2) & 1;
  }

  if (v31 == *(v9 + 36))
  {
    if (v6 == 1)
    {
      *(v9 + 76) = *(v9 + 76) & 0xFFE0 | v14 & 0x14;
    }

    else if (!v6)
    {
      v32 = v14;
      v33 = *(v9 + 64);
      v34 = v32;
      if ((v33 & 0x7FFF) != v32)
      {
        if ((v32 & 0x1DC) != 0 && (v33 & 0x1DC) == 0)
        {
          v35 = *(v9 + 72);
          if (!v35 || (*v35 & 1) == 0)
          {
            ActorPair = physx::Sc::NPhaseCore::findActorPair(a1, v11, v12, 1);
            if (!*(v9 + 72))
            {
              ++ActorPair->i16[2];
              *(v9 + 72) = ActorPair;
            }
          }
        }

        if ((v34 & 8) == 0)
        {
          v37 = *(v9 + 64);
          if ((v37 & 0x600000) != 0)
          {
            if ((v37 & 0x200000) != 0)
            {
              physx::Sc::NPhaseCore::removeFromPersistentContactEventPairs(a1, v9);
            }

            else
            {
              *(v9 + 64) = v37 & 0xFF9FFFFF;
            }
          }
        }

        if ((v34 & 0x1C0) != 0)
        {
          if (*(v9 + 80) == -1 && (*(v9 + 37) & 0x20) != 0 && (*(v9 + 65) & 0x80) != 0)
          {
            physx::Sc::NPhaseCore::addToForceThresholdContactEventPairs(a1, v9);
          }
        }

        else if ((v33 & 0x1C0) != 0)
        {
          v43 = *(v9 + 64);
          *(v9 + 64) = v43 & 0xFFE7FFFF;
          if ((v43 & 0x800000) != 0)
          {
            v44 = *(v9 + 80);
            *(v9 + 64) = v43 & 0xFF67FFFF;
            *(v9 + 80) = -1;
            v45 = a1[6];
            v46 = a1[7].i32[0] - 1;
            a1[7].i32[0] = v46;
            *(*&v45 + 8 * v44) = *(*&v45 + 8 * v46);
            if (v44 < v46)
            {
              *(*(*&a1[6] + 8 * v44) + 80) = v44;
            }
          }
        }
      }

      *(v9 + 64) = *(v9 + 64) & 0xFFFF8000 | v34 & 0x7FFF;
    }

    return v9;
  }

  v39 = *(v9 + 40);
  v38 = *(v9 + 48);
  v40 = *(v9 + 8);
  if (*(*(v40 + 80) + 13) == 1 && *(v40 + 184) >= 0xFFFFFFFE)
  {
    physx::Sc::BodySim::internalWakeUp(v40, 0.4);
  }

  v41 = *(v9 + 16);
  if (*(*(v41 + 80) + 13) == 1 && *(v41 + 184) >= 0xFFFFFFFE)
  {
    physx::Sc::BodySim::internalWakeUp(v41, 0.4);
  }

  *(v9 + 37) &= ~0x10u;
  physx::Sc::NPhaseCore::releaseElementPair(a1, v9, 5, 0, a4, v8, v7);
  switch(v31)
  {
    case 0:
      v50.n128_u16[0] = v14;
      ShapeInteraction = physx::Sc::NPhaseCore::createShapeInteraction(a1, v39, v38, &v50, 0, 0);
      goto LABEL_62;
    case 1:
      v50.n128_u16[0] = v14;
      ShapeInteraction = physx::Sc::NPhaseCore::createTriggerInteraction(a1, v39, v38, &v50);
      goto LABEL_62;
    case 2:
      ShapeInteraction = physx::Sc::NPhaseCore::createElementInteractionMarker(a1, v39, v38, 0);
LABEL_62:
      v9 = ShapeInteraction;
      goto LABEL_64;
  }

  v9 = 0;
LABEL_64:
  if (v15 != -1)
  {
    *(v9 + 37) |= 0x10u;
    *(**&a1[19] + 8 * v15) = v9;
    *(v9 + 56) = v15;
  }

  return v9;
}

uint64_t physx::Sc::NPhaseCore::removeFromPersistentContactEventPairs(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 80);
  v3 = *(result + 40);
  if (v2 >= v3)
  {
    v5 = *(result + 32);
  }

  else
  {
    v4 = v3 - 1;
    v5 = *(result + 32);
    if (v2 != v3 - 1 && v3 < v5)
    {
      v7 = *(result + 24);
      v8 = *(v7 + 8 * v4);
      *(v7 + 8 * v2) = v8;
      *(v8 + 80) = v2;
      v2 = v4;
    }

    *(result + 40) = v4;
  }

  *(a2 + 64) &= ~0x200000u;
  *(a2 + 80) = -1;
  v9 = *(result + 24);
  v10 = v5 - 1;
  *(result + 32) = v10;
  *(v9 + 8 * v2) = *(v9 + 8 * v10);
  if (v2 < v10)
  {
    *(*(*(result + 24) + 8 * v2) + 80) = v2;
  }

  return result;
}

uint64_t physx::Sc::NPhaseCore::addToForceThresholdContactEventPairs(uint64_t this, physx::Sc::ShapeInteraction *a2)
{
  v4 = a2;
  *(a2 + 16) |= 0x800000u;
  v2 = *(this + 56);
  v3 = *(this + 60);
  *(a2 + 20) = v2;
  if ((v3 & 0x7FFFFFFFu) <= v2)
  {
    return physx::shdfnd::Array<physx::Sc::ShapeInteraction *,physx::shdfnd::ReflectionAllocator<physx::Sc::ShapeInteraction *>>::growAndPushBack(this + 48, &v4);
  }

  *(*(this + 48) + 8 * v2) = a2;
  *(this + 56) = v2 + 1;
  return this;
}

uint64_t *physx::Sc::NPhaseCore::processTriggerInteractions(uint64_t *this, physx::PxBaseTask *a2)
{
  v2 = *this;
  v3 = *(*this + 124);
  if (!v3)
  {
    return this;
  }

  v5 = this;
  v6 = *(v2 + 88);
  v7 = physx::PxcScratchAllocator::alloc(*(v2 + 1840), 88 * (v3 >> 6) + 8 * v3 + 88, 1);
  if (v7)
  {
    v8 = v7;
    v9 = 8 * v3;
    v10 = (*(**(v2 + 7456) + 8))(*(v2 + 7456));
    v11 = (*(*v10 + 8))(v10);
    v13 = v3 > 0x40 && v11 > 1;
    *(v5 + 3624) = v8;
    v24 = v13;
    if (v13)
    {
      *(v5 + 3600) = 1;
      *(v5 + 3592) = a2;
      if (a2)
      {
        (*(*a2 + 32))(a2);
        *(v5 + 3584) = *(*(v5 + 3592) + 16);
      }
    }

    v14 = v5 + 3632;
    v15 = v5 + 3640;
    v23 = v5;
    v16 = v5 + 3568;
    while (1)
    {
      v17 = v8 + v9;
      v18 = *(v2 + 24);
      if (v3 >= 0x40)
      {
        v19 = 64;
      }

      else
      {
        v19 = v3;
      }

      v3 -= v19;
      *(v17 + 16) = 0;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0;
      *v17 = &unk_1F5D1E6D0;
      *(v17 + 8) = v18;
      *(v17 + 40) = v6;
      *(v17 + 48) = v19;
      *(v17 + 56) = v14;
      *(v17 + 64) = v8;
      *(v17 + 72) = v15;
      *(v17 + 80) = v2;
      if (v24)
      {
        *(v17 + 32) = 1;
        *(v17 + 24) = v16;
        (*(*v16 + 32))(v16);
        *(v17 + 16) = *(*(v17 + 24) + 16);
        (*(*v17 + 40))(v8 + v9);
        if (!v3)
        {
          v21 = *(**(v23 + 3584) + 144);

          return v21();
        }
      }

      else
      {
        physx::Sc::TriggerContactTask::runInternal(v8 + v9);
        if (!v3)
        {
          v22 = *(v23 + 3608);

          return physx::Sc::NPhaseCore::mergeProcessedTriggerInteractions(v22);
        }
      }

      v6 += 8 * v19;
      v9 += 88;
    }
  }

  v20 = *(*(*(*physx::shdfnd::Foundation::mInstance + 8))(physx::shdfnd::Foundation::mInstance) + 16);

  return v20();
}