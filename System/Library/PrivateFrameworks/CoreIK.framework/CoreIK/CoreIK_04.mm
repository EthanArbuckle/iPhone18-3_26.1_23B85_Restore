__n128 FIK::Utils::BlendWithOffset@<Q0>(float32x4_t *a1@<X0>, float32x4_t *a2@<X1>, __n128 *a3@<X8>, float a4@<S0>, float a5@<S1>)
{
  v8 = *a1;
  if (a4 <= 0.0)
  {
    goto LABEL_4;
  }

  v9 = vaddq_f32(v8, *a2);
  if (a4 < 1.0)
  {
    v8 = vaddq_f32(v8, vmulq_n_f32(vsubq_f32(v9, v8), a4));
LABEL_4:
    v56 = v8;
    goto LABEL_6;
  }

  v56 = v9;
LABEL_6:
  v10 = a2[1];
  v11 = vmulq_f32(v10, xmmword_245A01E80);
  v12 = vextq_s8(v11, v11, 8uLL);
  *v11.f32 = vadd_f32(*v11.f32, *v12.f32);
  v11.f32[0] = vaddv_f32(*v11.f32);
  v12.i64[0] = 0;
  v13 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v11, v12)), 0), vnegq_f32(v10), v10);
  v14 = 1.0;
  v15 = 1.0 - a5;
  v16 = vsubq_f32(xmmword_245A01E80, v13);
  v17 = vmulq_f32(v16, v16);
  v55 = v13;
  v18 = vaddq_f32(v13, xmmword_245A01E80);
  v19 = vmulq_f32(v18, v18);
  v20 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v17.i8, *&vextq_s8(v17, v17, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v19.i8, *&vextq_s8(v19, v19, 8uLL)))));
  v21 = v20 + v20;
  v22 = (v20 + v20) == 0.0;
  v23 = 1.0;
  if (!v22)
  {
    v23 = sinf(v21) / v21;
  }

  v24 = v23;
  v25 = vrecpe_f32(LODWORD(v23));
  v26 = vmul_f32(v25, vrecps_f32(LODWORD(v24), v25));
  LODWORD(v27) = vmul_f32(v26, vrecps_f32(LODWORD(v24), v26)).u32[0];
  if ((v15 * v21) != 0.0)
  {
    v53 = v27;
    v26.f32[0] = sinf(v15 * v21);
    v27 = v53;
    v14 = v26.f32[0] / (v15 * v21);
  }

  v26.f32[0] = v15 * (v27 * v14);
  v28 = vdupq_lane_s32(v26, 0);
  v29 = v21 * a5;
  v30 = 1.0;
  if (v29 != 0.0)
  {
    v52 = v28;
    v54 = v27;
    v31 = sinf(v29);
    v28 = v52;
    v27 = v54;
    v30 = v31 / v29;
  }

  v32 = xmmword_245A01E80;
  v33 = vmlaq_f32(vmulq_n_f32(v55, (v27 * v30) * a5), xmmword_245A01E80, v28);
  v34 = vmulq_f32(v33, v33);
  v35 = vadd_f32(*v34.i8, *&vextq_s8(v34, v34, 8uLL));
  v36 = xmmword_245A01E80;
  if (vaddv_f32(v35) != 0.0)
  {
    v37 = vadd_f32(v35, vdup_lane_s32(v35, 1)).u32[0];
    v38 = vrsqrte_f32(v37);
    v39 = vmul_f32(v38, vrsqrts_f32(v37, vmul_f32(v38, v38)));
    v36 = vmulq_n_f32(v33, vmul_f32(v39, vrsqrts_f32(v37, vmul_f32(v39, v39))).f32[0]);
  }

  v40 = a1[1];
  v41 = vnegq_f32(v36);
  v42 = vtrn2q_s32(v36, vtrn1q_s32(v36, v41));
  v43 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v36, v41, 8uLL), *v40.f32, 1), vextq_s8(v42, v42, 8uLL), v40.f32[0]);
  v44 = vrev64q_s32(v36);
  v44.i32[0] = v41.i32[1];
  v44.i32[3] = v41.i32[2];
  v45 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v36, v40, 3), v44, v40, 2), v43);
  v46 = vmulq_f32(v45, v45);
  v47 = vadd_f32(*v46.i8, *&vextq_s8(v46, v46, 8uLL));
  if (vaddv_f32(v47) != 0.0)
  {
    v48 = vadd_f32(v47, vdup_lane_s32(v47, 1)).u32[0];
    v49 = vrsqrte_f32(v48);
    v50 = vmul_f32(v49, vrsqrts_f32(v48, vmul_f32(v49, v49)));
    v32 = vmulq_n_f32(v45, vmul_f32(v50, vrsqrts_f32(v48, vmul_f32(v50, v50))).f32[0]);
  }

  result = v56;
  *a3 = v56;
  a3[1] = v32;
  return result;
}

float FIK::Utils::GetUpElement(float *a1, int a2)
{
  result = -1.0;
  if (a2 <= 2)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        if (a2 == 2)
        {
          return a1[2];
        }

        return result;
      }

      return a1[1];
    }

    return *a1;
  }

  if (a2 == 3)
  {
    return *a1;
  }

  if (a2 == 4 || a2 == 5)
  {
    return a1[1];
  }

  return result;
}

float *FIK::Utils::SetUpElement(float *result, int a2, float a3)
{
  if (a2 <= 2)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        if (a2 != 2)
        {
          return result;
        }

LABEL_10:
        result[2] = a3;
        return result;
      }

LABEL_14:
      result[1] = a3;
      return result;
    }

LABEL_12:
    *result = a3;
    return result;
  }

  switch(a2)
  {
    case 3:
      a3 = -a3;
      goto LABEL_12;
    case 4:
      a3 = -a3;
      goto LABEL_14;
    case 5:
      a3 = -a3;
      goto LABEL_10;
  }

  return result;
}

float *FIK::Utils::AddToUpElement(float *result, int a2, float a3)
{
  if (a2 > 2)
  {
    if (a2 != 3)
    {
      if (a2 != 4)
      {
        if (a2 != 5)
        {
          return result;
        }

        v3 = result[2] - a3;
        goto LABEL_10;
      }

      v5 = result[1] - a3;
      goto LABEL_16;
    }

    v4 = *result - a3;
LABEL_13:
    *result = v4;
    return result;
  }

  if (!a2)
  {
    v4 = *result + a3;
    goto LABEL_13;
  }

  if (a2 != 1)
  {
    if (a2 != 2)
    {
      return result;
    }

    v3 = result[2] + a3;
LABEL_10:
    result[2] = v3;
    return result;
  }

  v5 = result[1] + a3;
LABEL_16:
  result[1] = v5;
  return result;
}

float *FIK::Utils::SetUpElementAbs(float *result, int a2, float a3)
{
  if (a2 <= 2)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        if (a2 != 2)
        {
          return result;
        }

        goto LABEL_9;
      }

LABEL_10:
      ++result;
    }

LABEL_11:
    *result = a3;
    return result;
  }

  switch(a2)
  {
    case 3:
      goto LABEL_11;
    case 4:
      goto LABEL_10;
    case 5:
LABEL_9:
      result += 2;
      goto LABEL_11;
  }

  return result;
}

BOOL FIK::Utils::PointAIsHigherThanB(unsigned int a1, float a2, float a3)
{
  if (a1 >= 3)
  {
    return a3 > a2;
  }

  else
  {
    return a2 > a3;
  }
}

BOOL FIK::Utils::PointAIsHigherThanB(float *a1, float *a2, unsigned int a3)
{
  UpElement = FIK::Utils::GetUpElement(a1, a3);
  v6 = FIK::Utils::GetUpElement(a2, a3);
  if (a3 >= 3)
  {
    return v6 > UpElement;
  }

  else
  {
    return UpElement > v6;
  }
}

uint64_t FIK::FeetSliding::SlidingTask::SetTaskTarget(float32x4_t *a1, float32x4_t *a2, float32x4_t a3)
{
  v4 = a2[1];
  v56 = *a2;
  v57 = v4;
  v5 = v56;
  if (a1[5].i8[5] == 1)
  {
    v6 = a1[6].u8[4];
    v7 = a1[7];
    v8 = vdivq_f32(vsubq_f32(v56, v7), vdupq_lane_s32(*a3.f32, 0));
    v9 = vmulq_f32(v8, v8);
    v10 = sqrtf(v9.f32[2] + vaddv_f32(*v9.f32));
    if ((v6 & 1) == 0 && v10 <= (a1[5].f32[2] / a3.f32[0]))
    {
      a1[6].i8[4] = 1;
LABEL_8:
      a1[8] = v7;
      v11 = a1[9];
      a1[10] = v11;
      v56 = v7;
      v57 = v11;
      a1[11].i32[0] = 0;
      v5 = v7;
      goto LABEL_25;
    }

    if (v10 >= (a1[5].f32[3] / a3.f32[0]))
    {
      v6 = 0;
    }

    a1[6].i8[4] = v6;
    if (v6 == 1)
    {
      goto LABEL_8;
    }

    v12 = 1.0;
    v13 = a1[11].f32[0];
    v14 = v13 + (1.0 / a1[6].i32[0]);
    if (v14 <= 1.0)
    {
      v15 = v13 + (1.0 / a1[6].i32[0]);
    }

    else
    {
      v15 = 1.0;
    }

    v16 = v14 < 0.0;
    a3.i64[0] = 0;
    if (v16)
    {
      v17 = 0.0;
    }

    else
    {
      v17 = v15;
    }

    a1[11].f32[0] = v17;
    v53 = 1.0 - v17;
    v55 = v17;
    v52 = vaddq_f32(vmulq_n_f32(v5, v17), vmulq_n_f32(a1[8], 1.0 - v17));
    v56 = v52;
    v18 = a1[10];
    v19 = vmulq_f32(v4, v18);
    *v19.f32 = vadd_f32(*v19.f32, *&vextq_s8(v19, v19, 8uLL));
    v19.f32[0] = vaddv_f32(*v19.f32);
    v20 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v19, a3)), 0), vnegq_f32(v4), v4);
    v21 = vsubq_f32(v18, v20);
    v22 = vmulq_f32(v21, v21);
    v50 = v20;
    v51 = v18;
    v23 = vaddq_f32(v18, v20);
    v24 = vmulq_f32(v23, v23);
    v25 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v22.i8, *&vextq_s8(v22, v22, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v24.i8, *&vextq_s8(v24, v24, 8uLL)))));
    v26 = v25 + v25;
    v27 = (v25 + v25) == 0.0;
    v28 = 1.0;
    if (!v27)
    {
      v28 = sinf(v26) / v26;
    }

    v29 = v28;
    v30 = vrecpe_f32(LODWORD(v28));
    v31 = vmul_f32(v30, vrecps_f32(LODWORD(v29), v30));
    LODWORD(v32) = vmul_f32(v31, vrecps_f32(LODWORD(v29), v31)).u32[0];
    v33 = v53;
    if ((v53 * v26) != 0.0)
    {
      v48 = v32;
      v31.f32[0] = sinf(v53 * v26);
      v32 = v48;
      v33 = v53;
      v12 = v31.f32[0] / (v53 * v26);
    }

    v31.f32[0] = v33 * (v32 * v12);
    v34 = vdupq_lane_s32(v31, 0);
    v35 = v55;
    v36 = v55 * v26;
    v37 = 1.0;
    if (v36 != 0.0)
    {
      v49 = v32;
      v54 = v34;
      v38 = sinf(v36);
      v34 = v54;
      v35 = v55;
      v32 = v49;
      v37 = v38 / v36;
    }

    v39 = vmlaq_f32(vmulq_n_f32(v50, v35 * (v32 * v37)), v51, v34);
    v40 = vmulq_f32(v39, v39);
    v41 = vadd_f32(*v40.i8, *&vextq_s8(v40, v40, 8uLL));
    if (vaddv_f32(v41) == 0.0)
    {
      v42 = xmmword_245A01E80;
    }

    else
    {
      v43 = vadd_f32(v41, vdup_lane_s32(v41, 1)).u32[0];
      v44 = vrsqrte_f32(v43);
      v45 = vmul_f32(v44, vrsqrts_f32(v43, vmul_f32(v44, v44)));
      v42 = vmulq_n_f32(v39, vmul_f32(v45, vrsqrts_f32(v43, vmul_f32(v45, v45))).f32[0]);
    }

    v5 = v52;
    v57 = v42;
  }

LABEL_25:
  a1[7] = v5;
  a1[9] = v57;
  v46 = a1->i64[1];
  if (v46)
  {
    (*(*v46 + 248))(v46, &v56);
  }

  result = a1[1].i64[0];
  if (result)
  {
    return (*(*result + 248))(result, &v57);
  }

  return result;
}

uint64_t FIK::FeetSliding::SlidingTask::setPositionTarget(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 248))();
  }

  return result;
}

uint64_t FIK::FeetSliding::SlidingTask::setOrientationTarget(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 248))();
  }

  return result;
}

uint64_t FIK::FeetSliding::SlidingTask::SlidingTask(uint64_t a1, IKString *a2, char *a3, uint64_t a4, int a5, _OWORD *a6)
{
  IKString::operator+(a2, "_Task", 5, &v15);
  *a1 = &unk_28589BD98;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  IKString::IKString((a1 + 24), &v15, v17);
  if (v16)
  {
    (*(*v17 + 24))(v17, v15, 0, 8);
    v15 = 0;
    v16 = 0;
  }

  *a1 = &unk_28589BCC0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = xmmword_245A01E80;
  *(a1 + 80) = a5;
  *(a1 + 84) = *a6;
  *(a1 + 100) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = xmmword_245A01E80;
  *(a1 + 160) = xmmword_245A01E80;
  *(a1 + 176) = 1065353216;
  v11 = *(*(*&a3[*(*a3 - 264)] + 200))(&a3[*(*a3 - 264)]);
  v12 = (*(v11 + 512))();
  v13 = v12[1];
  *(a1 + 112) = *v12;
  *(a1 + 144) = v13;
  return a1;
}

uint64_t FIK::FeetSliding::SlidingTask::setTarget(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    (*(*v3 + 248))(v3, a2);
  }

  result = *(a1 + 16);
  if (result)
  {
    v5 = *(*result + 248);

    return v5();
  }

  return result;
}

__n128 FIK::FeetSliding::SlidingTask::setOffset(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *a2;
  result = *(a2 + 16);
  *(a1 + 64) = result;
  return result;
}

uint64_t FIK::FeetSliding::FeetSliding(uint64_t a1, uint64_t a2)
{
  v17[25] = *MEMORY[0x277D85DE8];
  v3 = FIK::AnimNode::AnimNode(a1, a2);
  *v3 = &unk_28589BCF8;
  v4 = FIK::defaultAllocator(v3);
  *(a1 + 472) = 0;
  *(a1 + 480) = 0;
  *(a1 + 488) = 0;
  *(a1 + 496) = v4;
  v5 = *(a1 + 352);
  if (v5)
  {
    v6 = 0;
    v7 = 360;
    do
    {
      v8 = (*(a1 + 368) + v7);
      if (v7 == 360 || (*v8 & 1) != 0)
      {
        v9 = FIK::IKSolver::addPositionTask((a1 + 16), (v8 - 22));
        (*(*(v9->i64 + *(v9->i64[0] - 264)) + 72))(v9 + *(v9->i64[0] - 264), 20.0);
        (*(*(v9->i64 + *(v9->i64[0] - 264)) + 96))(v9 + *(v9->i64[0] - 264), 2.0);
        v10 = FIK::IKSolver::addOrientationTask((a1 + 16), (v8 - 22));
        (*(*(v10->n128_u64 + *(v10->n128_u64[0] - 264)) + 72))(v10 + *(v10->n128_u64[0] - 264), 20.0);
        (*(*(v10->n128_u64 + *(v10->n128_u64[0] - 264)) + 96))(v10 + *(v10->n128_u64[0] - 264), 2.0);
        Segment = FIK::IKSolver::getSegment((a1 + 16), v6);
        (*(*Segment + 16))(Segment, 1, 0);
        v12 = (*(*Segment + 392))(Segment);
        if (v12)
        {
          v13 = v12;
          (*(*v12 + 712))(v12, 0.3);
          v14 = (*(*v13 + 392))(v13);
          if (v14)
          {
            (*(*v14 + 712))(v14, 0.3);
          }
        }

        FIK::FeetSliding::SlidingTask::SlidingTask(v17, (v8 - 22), v9, v10, v6, v8);
        FIK::IKArray<FIK::FeetSliding::SlidingTask>::push_back<FIK::FeetSliding::SlidingTask,void>((a1 + 472), v17);
        FIK::FeetSliding::SlidingTask::~SlidingTask(v17);
        v5 = *(a1 + 352);
      }

      ++v6;
      v7 += 544;
    }

    while (v5 > v6);
  }

  v15 = *MEMORY[0x277D85DE8];
  return a1;
}

float FIK::IKArray<FIK::FeetSliding::SlidingTask>::push_back<FIK::FeetSliding::SlidingTask,void>(uint64_t *a1, uint64_t a2)
{
  FIK::IKArray<FIK::FeetSliding::SlidingTask>::reserve(a1, *a1 + 1);
  v4 = a1[2] + 192 * *a1;
  *v4 = &unk_28589BD98;
  *(v4 + 8) = *(a2 + 8);
  IKString::IKString((v4 + 24), (a2 + 24));
  *v4 = &unk_28589BCC0;
  *(v4 + 48) = *(a2 + 48);
  *(v4 + 64) = *(a2 + 64);
  v5 = *(a2 + 80);
  *(v4 + 93) = *(a2 + 93);
  *(v4 + 80) = v5;
  *(v4 + 112) = *(a2 + 112);
  *(v4 + 128) = *(a2 + 128);
  *(v4 + 144) = *(a2 + 144);
  *(v4 + 160) = *(a2 + 160);
  result = *(a2 + 176);
  *(v4 + 176) = result;
  ++*a1;
  return result;
}

uint64_t FIK::FeetSliding::Solve(uint64_t a1, uint64_t a2)
{
  (*(*a1 + 16))(a1);
  v4 = *(a1 + 12);
  FIK::PoseConverter::PoseConverter<FIK::MoCapBone>(v15, *(a1 + 368), *(a1 + 352), a2);
  v5 = *(a1 + 472);
  if (v5)
  {
    v6 = *(a1 + 488);
    v7 = 192 * v5;
    v8 = 1.0 / v4;
    do
    {
      GlobalTransform = FIK::PoseConverter::GetGlobalTransform(v15, v6[5].i32[0]);
      v11 = *(GlobalTransform + 16);
      v14[0] = *GlobalTransform;
      v10 = v14[0];
      v14[1] = v11;
      v10.f32[0] = v8;
      FIK::FeetSliding::SlidingTask::SetTaskTarget(v6, v14, v10);
      v6 += 12;
      v7 -= 192;
    }

    while (v7);
  }

  updated = FIK::AnimNode::SolveAndUpdatePose(a1, a2);
  FIK::PoseConverter::~PoseConverter(v15);
  return updated;
}

uint64_t FIK::FeetSliding::GetTaskPosDebug()
{
  v0 = *ikinemaLogObject();

  return ikinemaAssertHandler(v0, 0, "GetTaskPosDebug", "(false) Not implemented");
}

unint64_t FIK::FeetSliding::constraintByIndex(FIK::FeetSliding *this, unint64_t a2)
{
  if (*(this + 59) <= a2)
  {
    return 0;
  }

  else
  {
    return *(this + 61) + 192 * a2;
  }
}

void FIK::FeetSliding::~FeetSliding(FIK::FeetSliding *this)
{
  *this = &unk_28589BCF8;
  FIK::IKArray<FIK::FeetSliding::SlidingTask>::~IKArray(this + 59);

  FIK::AnimNode::~AnimNode(this);
}

{
  *this = &unk_28589BCF8;
  FIK::IKArray<FIK::FeetSliding::SlidingTask>::~IKArray(this + 59);
  FIK::AnimNode::~AnimNode(this);

  FIK::AnimNode::operator delete(v2);
}

uint64_t FIK::AnimNode::setSourcesBuffer()
{
  v0 = *ikinemaLogObject();

  return ikinemaAssertHandler(v0, 0, "setSourcesBuffer", "(false) Overriding sources key is not valid for this instance.");
}

void FIK::FeetSliding::SlidingTask::~SlidingTask(FIK::FeetSliding::SlidingTask *this)
{
  *this = &unk_28589BD98;
  if (*(this + 4))
  {
    (*(**(this + 5) + 24))(*(this + 5), *(this + 3), 0, 8);
    *(this + 3) = 0;
    *(this + 4) = 0;
  }
}

void FIK::AnimNode::~AnimNode(FIK::AnimNode *this)
{
  *this = &unk_28589C220;
  FIK::IKArray<FIK::RigBoneBase>::~IKArray(this + 384);
  FIK::IKArray<FIK::MoCapBone>::~IKArray(this + 352);
  FIK::IKArray<FIK::MoCapTask>::~IKArray(this + 320);
  if (*(this + 19))
  {
    (*(**(this + 20) + 24))(*(this + 20), *(this + 18), 0, 8);
    *(this + 18) = 0;
    *(this + 19) = 0;
  }

  FIK::IKArray<ikinema::Buffer>::~IKArray(this + 13, v2);
  FIK::IKArray<ikinema::AlgorithmHandle>::~IKArray(this + 9);
  FIK::IKSolver::~IKSolver(this + 2);
}

uint64_t *FIK::IKArray<FIK::FeetSliding::SlidingTask>::~IKArray(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[2];
    do
    {
      FIK::FeetSliding::SlidingTask::~SlidingTask(v3);
      v3 = (v4 + 192);
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

uint64_t *FIK::IKArray<ikinema::Buffer>::~IKArray(uint64_t *a1, void *a2)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = a1[2];
    do
    {
      ikinema::Buffer::~Buffer(v4, a2);
      v4 = (v5 + 72);
      --v3;
    }

    while (v3);
  }

  *a1 = 0;
  v6 = a1[2];
  if (v6)
  {
    (*(*a1[3] + 24))(a1[3], v6, 0, 8);
  }

  return a1;
}

void ikinema::Buffer::~Buffer(ikinema::Buffer *this, void *a2)
{
  v3 = *(this + 8);
  if (v3)
  {
    FIK::FIKFree(v3, a2);
  }

  if (*(this + 1))
  {
    (*(**(this + 2) + 24))(*(this + 2), *this, 0, 8);
    *this = 0;
    *(this + 1) = 0;
  }
}

uint64_t *FIK::IKArray<ikinema::AlgorithmHandle>::~IKArray(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[2];
    do
    {
      ikinema::AlgorithmHandle::~AlgorithmHandle(v3);
      v3 = (v4 + 8);
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

void ikinema::AlgorithmHandle::~AlgorithmHandle(FIK **this)
{
  v2 = *this;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    FIK::FIKFree(*this, v3);
  }
}

void FIK::IKArray<FIK::FeetSliding::SlidingTask>::reserve(uint64_t *a1, unint64_t a2)
{
  if (a1[1] < a2)
  {
    v3 = a1[3];
    v4 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v4)
    {
      v5 = (*(*v3 + 16))(a1[3], 192 * v4, 16);
      v6 = v5;
      if (192 * v4)
      {
        bzero(v5, 192 * v4);
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
        *v10 = &unk_28589BCC0;
        *(v10 + 3) = *(v7 + v9 + 48);
        *(v10 + 4) = *(v7 + v9 + 64);
        v11 = *(v7 + v9 + 80);
        *(v10 + 93) = *(v7 + v9 + 93);
        *(v10 + 5) = v11;
        *(v10 + 7) = *(v7 + v9 + 112);
        *(v10 + 8) = *(v7 + v9 + 128);
        *(v10 + 9) = *(v7 + v9 + 144);
        *(v10 + 10) = *(v7 + v9 + 160);
        *(v10 + 44) = *(v7 + v9 + 176);
        v9 += 192;
        --v8;
      }

      while (v8);
      v7 = a1[2];
      v12 = *a1;
    }

    else
    {
      v12 = 0;
    }

    v13 = a1[3];
    a1[1] = v4;
    a1[2] = v6;
    a1[3] = v3;
    if (v12)
    {
      v14 = v7;
      do
      {
        FIK::FeetSliding::SlidingTask::~SlidingTask(v14);
        v14 = (v15 + 192);
        --v12;
      }

      while (v12);
    }

    if (v7)
    {
      v16 = *(*v13 + 24);

      v16(v13, v7, 0, 8);
    }
  }
}

uint64_t *FIK::PoseConverter::PoseConverter<FIK::MoCapBone>(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = FIK::defaultAllocator(a1);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = v8;
  v9 = FIK::defaultAllocator(v8);
  a1[4] = 0;
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = v9;
  v10 = FIK::defaultAllocator(v9);
  a1[8] = 0;
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = v10;
  v11 = FIK::defaultAllocator(v10);
  a1[12] = 0;
  a1[13] = 0;
  a1[14] = 0;
  a1[15] = v11;
  v12 = FIK::defaultAllocator(v11);
  a1[16] = 0;
  a1[17] = 0;
  a1[18] = 0;
  a1[19] = v12;
  FIK::IKArray<FIK::Transform>::reserve(a1 + 12, a3);
  FIK::IKArray<unsigned int>::reserve(a1, a3);
  if (a3)
  {
    v13 = (a4 + 16);
    v14 = (a2 + 4);
    do
    {
      FIK::IKArray<FIK::Transform>::reserve(a1 + 12, a1[12] + 1);
      v15 = (a1[14] + 32 * a1[12]);
      *v15 = *(v13 - 1);
      v16 = *v13;
      v13 += 2;
      v15[1] = v16;
      ++a1[12];
      FIK::IKArray<unsigned int>::reserve(a1, *a1 + 1);
      v17 = *a1;
      *(a1[2] + 4 * *a1) = *v14;
      *a1 = v17 + 1;
      v14 += 136;
      --a3;
    }

    while (a3);
  }

  FIK::PoseConverter::resetGlobalFlag(a1);
  return a1;
}

uint64_t ikinema::TaskFilterAlgorithmImpl::process(void *a1, uint64_t a2, void *a3)
{
  v4 = ikinema::BufferContainer::buffer(a3, a1[5]);
  v5 = ikinema::Buffer::arrayView<FIK::Transform>(v4);
  v6 = a1[1];
  if (v6)
  {
    v7 = v5;
    v8 = a1[3];
    v9 = &v8[22 * v6];
    do
    {
      v10 = (v7 + 32 * v8->i64[0]);
      FIK::TransformFilter<FIK::DoubleExponentialPositionFilter>::filter<>(v8 + 1, v10, v12);
      *v10 = v12[0];
      v10[1] = v12[1];
      v8 += 22;
    }

    while (v8 != v9);
  }

  return 0;
}

double FIK::TransformFilter<FIK::DoubleExponentialPositionFilter>::filter<>@<D0>(float32x4_t *a1@<X0>, uint64_t a2@<X1>, float32x4_t *a3@<X8>)
{
  v19[0] = *a2;
  FIK::DoubleExponentialPositionFilter::filter(a1, v19, &v20);
  if (a1[20].i8[0] == 1)
  {
    *v6.i64 = FIK::RotationPoints::deconstruct((a2 + 16));
    v7 = 0;
    v19[0] = v6;
    v19[1] = v8;
    v19[2] = v9;
    v19[3] = v10;
    v11 = a1 + 4;
    do
    {
      v17 = v19[v7];
      v16 = v17.i32[3];
      FIK::DoubleExponentialPositionFilter::filter(v11, &v17, &v18);
      v13 = v18;
      v13.i32[3] = v16;
      v19[v7] = v13;
      v11 += 4;
      ++v7;
    }

    while (v7 != 4);
    FIK::RotationPoints::reconstruct(v19, v12, a3 + 1);
    result = *v20.i64;
    *a3 = v20;
  }

  else
  {
    result = *v20.i64;
    v15 = *(a2 + 16);
    *a3 = v20;
    a3[1] = v15;
  }

  return result;
}

uint64_t ikinema::TaskFilterAlgorithmImpl::registerBuffers(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    return 1;
  }

  v2 = 72 * *a2;
  v3 = (a2[2] + 56);
  while (1)
  {
    v4 = *v3;
    v3 += 9;
    if (v4 == *(a1 + 40))
    {
      break;
    }

    v2 -= 72;
    if (!v2)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t *ikinema::TaskFilterAlgorithmImpl::TaskFilterAlgorithmImpl(uint64_t *a1, uint64_t a2, int a3, uint64_t a4)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = &unk_28589BDD0;
  v8 = FIK::defaultAllocator(a1);
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v8;
  a1[5] = a4;
  v9 = *(a2 + 176);
  if (v9)
  {
    v10 = 0;
    v11 = a3;
    v12 = 160;
    do
    {
      v13 = (*(a2 + 192) + v12);
      if (*v13 != 0.0)
      {
        v17 = v10;
        v16 = v11;
        FIK::TransformFilter<FIK::DoubleExponentialPositionFilter>::TransformFilter<float const&,float,void>(v18, 1, v13, &v16);
        FIK::IKArray<ikinema::TaskFilterAlgorithmImpl::FilterTask>::push_back<ikinema::TaskFilterAlgorithmImpl::FilterTask,void>(a1 + 1, &v17);
      }

      ++v10;
      v12 += 256;
    }

    while (v9 != v10);
  }

  v14 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t *FIK::IKArray<ikinema::TaskFilterAlgorithmImpl::FilterTask>::push_back<ikinema::TaskFilterAlgorithmImpl::FilterTask,void>(uint64_t *a1, uint64_t a2)
{
  result = FIK::IKArray<ikinema::TaskFilterAlgorithmImpl::FilterTask>::reserve(a1, *a1 + 1);
  v5 = a1[2] + 352 * *a1;
  *v5 = *a2;
  v6 = *(a2 + 16);
  *(v5 + 24) = *(a2 + 24);
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  *(v5 + 48) = *(a2 + 48);
  *(v5 + 64) = *(a2 + 64);
  v7 = (a2 + 128);
  v8 = (v5 + 128);
  v9 = 4;
  do
  {
    v10 = *(v7 - 6);
    *(v8 - 10) = *(v7 - 10);
    *(v8 - 6) = v10;
    *(v8 - 2) = *(v7 - 2);
    *(v8 - 1) = *(v7 - 1);
    v11 = *v7;
    v7 += 64;
    *v8 = v11;
    v8 += 64;
    --v9;
  }

  while (v9);
  *(v5 + 336) = *(a2 + 336);
  ++*a1;
  return result;
}

uint64_t *ikinema::TaskFilterAlgorithm::create@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t **a4@<X8>)
{
  v6 = a3;
  v5 = a2;
  return ikinema::AlgorithmHandle::make<ikinema::TaskFilterAlgorithmImpl,FIK::MoCapRig const&,int const&,ikinema::BufferKey &>(a1, &v5, &v6, a4);
}

uint64_t *ikinema::AlgorithmHandle::make<ikinema::TaskFilterAlgorithmImpl,FIK::MoCapRig const&,int const&,ikinema::BufferKey &>@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t *a3@<X2>, uint64_t **a4@<X8>)
{
  result = FIK::FIKAlloc(0x30, 8);
  if (result)
  {
    result = ikinema::TaskFilterAlgorithmImpl::TaskFilterAlgorithmImpl(result, a1, *a2, *a3);
  }

  *a4 = result;
  return result;
}

const char *ikinema::AlgorithmBlockBase<ikinema::TaskFilterAlgorithm>::typeId()
{
  result = "N7ikinema19TaskFilterAlgorithmE";
  if (("N7ikinema19TaskFilterAlgorithmE" & 0x8000000000000000) != 0)
  {
    v1 = ("N7ikinema19TaskFilterAlgorithmE" & 0x7FFFFFFFFFFFFFFFLL);
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

void ikinema::TaskFilterAlgorithmImpl::~TaskFilterAlgorithmImpl(ikinema::TaskFilterAlgorithmImpl *this)
{
  *(this + 1) = 0;
  v1 = *(this + 3);
  if (v1)
  {
    (*(**(this + 4) + 24))(*(this + 4), v1, 0, 8);
  }
}

{
  *(this + 1) = 0;
  v1 = *(this + 3);
  if (v1)
  {
    (*(**(this + 4) + 24))(*(this + 4), v1, 0, 8);
  }

  JUMPOUT(0x245D77F60);
}

_BYTE *FIK::TransformFilter<FIK::DoubleExponentialPositionFilter>::TransformFilter<float const&,float,void>(_BYTE *a1, char a2, float *a3, float *a4)
{
  v8 = FIK::DoubleExponentialPositionFilter::DoubleExponentialPositionFilter(a1, *a3, *a4);
  FIK::DoubleExponentialPositionFilter::DoubleExponentialPositionFilter((v8 + 64), *a3, *a4);
  FIK::DoubleExponentialPositionFilter::DoubleExponentialPositionFilter((a1 + 128), *a3, *a4);
  FIK::DoubleExponentialPositionFilter::DoubleExponentialPositionFilter((a1 + 192), *a3, *a4);
  FIK::DoubleExponentialPositionFilter::DoubleExponentialPositionFilter((a1 + 256), *a3, *a4);
  a1[320] = a2;
  return a1;
}

uint64_t *FIK::IKArray<ikinema::TaskFilterAlgorithmImpl::FilterTask>::reserve(uint64_t *result, unint64_t a2)
{
  if (result[1] < a2)
  {
    v2 = result;
    v3 = result[3];
    v4 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v4)
    {
      v5 = (*(*v3 + 16))(result[3], 352 * v4, 16);
      v6 = v5;
      if (352 * v4)
      {
        bzero(v5, 352 * v4);
      }
    }

    else
    {
      v6 = 0;
    }

    FIK::IKArray<ikinema::TaskFilterAlgorithmImpl::FilterTask>::moveRange(v2[2], *v2, v6);
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

uint64_t FIK::IKArray<ikinema::TaskFilterAlgorithmImpl::FilterTask>::moveRange(uint64_t result, uint64_t a2, uint64_t a3)
{
  for (; a2; --a2)
  {
    v3 = 0;
    *a3 = *result;
    v4 = *(result + 16);
    *(a3 + 24) = *(result + 24);
    *(a3 + 16) = v4;
    *(a3 + 32) = *(result + 32);
    *(a3 + 48) = *(result + 48);
    *(a3 + 64) = *(result + 64);
    do
    {
      v5 = a3 + v3;
      v6 = *(result + v3 + 80);
      *(v5 + 88) = *(result + v3 + 88);
      *(v5 + 80) = v6;
      *(v5 + 96) = *(result + v3 + 96);
      *(v5 + 112) = *(result + v3 + 112);
      *(v5 + 128) = *(result + v3 + 128);
      v3 += 64;
    }

    while (v3 != 256);
    *(a3 + 336) = *(result + 336);
    a3 += 352;
    result += 352;
  }

  return result;
}

uint64_t FIK::EnrollmentHelpers::verifyRigEnrolment(uint64_t a1)
{
  v119[0] = 0;
  v119[1] = 0;
  v118 = v119;
  v2 = (a1 + 208);
  v1 = *(a1 + 208);
  if (v1)
  {
    v3 = 544 * v1;
    v4 = (*(a1 + 224) + 64);
    do
    {
      v5 = *v4;
      v6 = v4[-3].u64[0];
      if (v6)
      {
        if (v6 >= 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        v117 = *v4;
        v7 = v4[-4].i64[1];
        if (v6 >= 0x17)
        {
          operator new();
        }

        v130 = v6;
        memmove(__dst, v7, v6);
        v5 = v117;
      }

      else
      {
        v130 = 0;
      }

      v8 = vmulq_f32(v5, v5);
      __dst[v6] = 0;
      v128[0] = __dst;
      *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v118, __dst) + 56) = sqrtf(v8.f32[2] + vaddv_f32(*v8.f32));
      if (v130 < 0)
      {
        operator delete(*__dst);
      }

      v4 += 34;
      v3 -= 544;
    }

    while (v3);
  }

  v9 = FIK::IKRigUtils::getDistanceBetweenSlow<FIK::MoCapBone>(v2, "left_shoulder_1_joint", 0x15uLL, "right_shoulder_1_joint", 0x16uLL);
  if ((v9 & 0x100000000) != 0)
  {
    v130 = 14;
    strcpy(__dst, "left_arm_joint");
    v128[0] = __dst;
    v10 = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v118, __dst) + 56) + *&v9;
    HIBYTE(v128[2]) = 15;
    strcpy(v128, "right_arm_joint");
    __p[0] = v128;
    v11 = v10 + *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v118, v128) + 56);
    v127 = 14;
    strcpy(__p, "shoulder_width");
    v125[0] = __p;
    *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v118, __p) + 56) = v11;
    if (v127 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v128[2]) < 0)
    {
      operator delete(v128[0]);
    }

    if (v130 < 0)
    {
      operator delete(*__dst);
    }

    std::string::basic_string[abi:nn200100]<0>(__dst, "neck_2_joint");
    v12 = *std::map<std::string,float>::at(&v118, __dst);
    std::string::basic_string[abi:nn200100]<0>(v128, "neck_3_joint");
    v13 = v12 + *std::map<std::string,float>::at(&v118, v128);
    std::string::basic_string[abi:nn200100]<0>(__p, "neck_4_joint");
    v14 = v13 + *std::map<std::string,float>::at(&v118, __p);
    std::string::basic_string[abi:nn200100]<0>(v125, "head_joint");
    v15 = v14 + *std::map<std::string,float>::at(&v118, v125);
    v124 = 8;
    strcpy(v122, "neck_len");
    v120[0] = v122;
    *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v118, v122) + 56) = v15;
    if (v124 < 0)
    {
      operator delete(v122[0]);
    }

    if (SHIBYTE(v125[2]) < 0)
    {
      operator delete(v125[0]);
    }

    if (v127 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v128[2]) < 0)
    {
      operator delete(v128[0]);
    }

    if (v130 < 0)
    {
      operator delete(*__dst);
    }

    v130 = 15;
    strcpy(__dst, "left_hand_joint");
    v128[0] = __dst;
    v16 = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v118, __dst) + 56);
    if (v130 < 0)
    {
      operator delete(*__dst);
    }

    v130 = 16;
    v17 = v16 * 0.8;
    v117 = *"right_hand_joint";
    strcpy(__dst, "right_hand_joint");
    v128[0] = __dst;
    v18 = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v118, __dst) + 56) * 0.8;
    if (v130 < 0)
    {
      operator delete(*__dst);
    }

    v130 = 15;
    strcpy(__dst, "left_hand_joint");
    v128[0] = __dst;
    v19 = v17 + *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v118, __dst) + 56);
    HIBYTE(v128[2]) = 18;
    strcpy(v128, "left_forearm_joint");
    __p[0] = v128;
    v20 = v19 + *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v118, v128) + 56);
    v127 = 14;
    strcpy(__p, "shoulder_width");
    v125[0] = __p;
    v21 = v20 + *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v118, __p) + 56);
    HIBYTE(v125[2]) = 19;
    qmemcpy(v116, "right_forearm_joleft_forearm_joi", sizeof(v116));
    strcpy(v125, "right_forearm_joint");
    v122[0] = v125;
    v22 = v21 + *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v118, v125) + 56);
    v124 = 16;
    *v122 = v117;
    v123 = 0;
    v120[0] = v122;
    v23 = v18 + (v22 + *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v118, v122) + 56));
    v121 = 9;
    strcpy(v120, "hand_span");
    v131 = v120;
    *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v118, v120) + 56) = v23;
    if (v121 < 0)
    {
      operator delete(v120[0]);
    }

    if (v124 < 0)
    {
      operator delete(v122[0]);
    }

    if (SHIBYTE(v125[2]) < 0)
    {
      operator delete(v125[0]);
    }

    if (v127 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v128[2]) < 0)
    {
      operator delete(v128[0]);
    }

    if (v130 < 0)
    {
      operator delete(*__dst);
    }

    v130 = 9;
    strcpy(__dst, "hand_span");
    v24 = *std::map<std::string,float>::at(&v118, __dst);
    if (v130 < 0)
    {
      operator delete(*__dst);
    }

    if (v24 < 43.35 || v24 > 313.95)
    {
      v33 = *ikinemaLogObject();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        FIK::EnrollmentHelpers::verifyRigEnrolment(v33, v34, v35, v36, v37, v38, v39, v40);
      }
    }

    else
    {
      v130 = 15;
      strcpy(__dst, "left_hand_joint");
      v25 = *std::map<std::string,float>::at(&v118, __dst);
      if (v130 < 0)
      {
        operator delete(*__dst);
      }

      if (v25 < 5.0 || v25 > 75.0)
      {
        v41 = *ikinemaLogObject();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          FIK::EnrollmentHelpers::verifyRigEnrolment(v41, v42, v43, v44, v45, v46, v47, v48);
        }
      }

      else
      {
        v130 = 16;
        *__dst = v117;
        __dst[16] = 0;
        v26 = *std::map<std::string,float>::at(&v118, __dst);
        if (v130 < 0)
        {
          operator delete(*__dst);
        }

        if (v26 < 5.0 || v26 > 75.0)
        {
          v49 = *ikinemaLogObject();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            FIK::EnrollmentHelpers::verifyRigEnrolment(v49, v50, v51, v52, v53, v54, v55, v56);
          }
        }

        else
        {
          v130 = 18;
          strcpy(&__dst[16], "nt");
          *__dst = v116[1];
          v27 = *std::map<std::string,float>::at(&v118, __dst);
          if (v130 < 0)
          {
            operator delete(*__dst);
          }

          if (v27 < 5.0 || v27 > 75.0)
          {
            v57 = *ikinemaLogObject();
            if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
            {
              FIK::EnrollmentHelpers::verifyRigEnrolment(v57, v58, v59, v60, v61, v62, v63, v64);
            }
          }

          else
          {
            v130 = 19;
            strcpy(&__dst[15], "oint");
            *__dst = v116[0];
            v28 = *std::map<std::string,float>::at(&v118, __dst);
            if (v130 < 0)
            {
              operator delete(*__dst);
            }

            if (v28 < 5.0 || v28 > 75.0)
            {
              v65 = *ikinemaLogObject();
              if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
              {
                FIK::EnrollmentHelpers::verifyRigEnrolment(v65, v66, v67, v68, v69, v70, v71, v72);
              }
            }

            else if (vabds_f32(v25, v26) > 10.0)
            {
              v73 = *ikinemaLogObject();
              if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
              {
                FIK::EnrollmentHelpers::verifyRigEnrolment(v73, v74, v75, v76, v77, v78, v79, v80);
              }
            }

            else if (vabds_f32(v27, v28) > 10.0)
            {
              v81 = *ikinemaLogObject();
              if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
              {
                FIK::EnrollmentHelpers::verifyRigEnrolment(v81, v82, v83, v84, v85, v86, v87, v88);
              }
            }

            else if (vabds_f32(v25, v27) > 10.0)
            {
              v89 = *ikinemaLogObject();
              if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
              {
                FIK::EnrollmentHelpers::verifyRigEnrolment(v89, v90, v91, v92, v93, v94, v95, v96);
              }
            }

            else if (vabds_f32(v26, v28) > 10.0)
            {
              v97 = *ikinemaLogObject();
              if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
              {
                FIK::EnrollmentHelpers::verifyRigEnrolment(v97, v98, v99, v100, v101, v102, v103, v104);
              }
            }

            else
            {
              std::string::basic_string<std::string_view,0>(__dst, &FIK::EnrollmentHelpers::kNeckLength);
              v29 = *std::map<std::string,float>::at(&v118, __dst);
              std::string::basic_string<std::string_view,0>(v128, &FIK::EnrollmentHelpers::kShoulderWidth);
              v30 = *std::map<std::string,float>::at(&v118, v128);
              if (SHIBYTE(v128[2]) < 0)
              {
                operator delete(v128[0]);
              }

              v31 = v29 / v30;
              if (v130 < 0)
              {
                operator delete(*__dst);
              }

              if (v31 >= 0.2221 && v31 <= 0.61366)
              {
                v32 = 1;
LABEL_97:
                std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::destroy(&v118, v119[0]);
                return v32;
              }

              v105 = *ikinemaLogObject();
              if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
              {
                FIK::EnrollmentHelpers::verifyRigEnrolment(v105, v106, v107, v108, v109, v110, v111, v112);
              }
            }
          }
        }
      }
    }

    v32 = 0;
    goto LABEL_97;
  }

  v114 = std::__throw_bad_optional_access[abi:nn200100]();
  return std::map<std::string,float>::at(v114, v115);
}

uint64_t std::map<std::string,float>::at(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    abort();
  }

  return v2 + 56;
}

_BYTE *std::string::basic_string<std::string_view,0>(_BYTE *__dst, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v4 = *a2;
  if (v2 >= 0x17)
  {
    operator new();
  }

  __dst[23] = v2;
  if (v2)
  {
    memmove(__dst, v4, v2);
  }

  __dst[v2] = 0;
  return __dst;
}

uint64_t FIK::IKRigUtils::getDistanceBetweenSlow<FIK::MoCapBone>(unsigned int *a1, void *__s2, size_t __n, void *a4, size_t a5)
{
  v8 = FIK::IKRigUtils::getBoneIndex<FIK::MoCapBone,void>(__s2, __n, a1);
  v9 = FIK::IKRigUtils::getBoneIndex<FIK::MoCapBone,void>(a4, a5, a1);
  result = 0;
  if (v8 != -1 && v9 != -1)
  {
    FIK::IKRigUtils::getGlobalRestTransformSlow<FIK::MoCapBone>(a1, v8, v14);
    FIK::IKRigUtils::getGlobalRestTransformSlow<FIK::MoCapBone>(a1, v9, v13);
    v11 = vsubq_f32(v14[0], v13[0]);
    v12 = vmulq_f32(v11, v11);
    return COERCE_UNSIGNED_INT(sqrtf(v12.f32[2] + vaddv_f32(*v12.f32))) | 0x100000000;
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__find_equal<std::string>(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *(a3 + 23);
    if (v6 >= 0)
    {
      v7 = *(a3 + 23);
    }

    else
    {
      v7 = a3[1];
    }

    if (v6 >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    do
    {
      while (1)
      {
        v9 = v4;
        v12 = v4[4];
        v10 = v4 + 4;
        v11 = v12;
        v13 = *(v10 + 23);
        if (v13 >= 0)
        {
          v14 = *(v10 + 23);
        }

        else
        {
          v14 = v10[1];
        }

        if (v13 >= 0)
        {
          v15 = v10;
        }

        else
        {
          v15 = v11;
        }

        if (v14 >= v7)
        {
          v16 = v7;
        }

        else
        {
          v16 = v14;
        }

        v17 = memcmp(v8, v15, v16);
        v18 = v7 < v14;
        if (v17)
        {
          v18 = v17 < 0;
        }

        if (!v18)
        {
          break;
        }

        v4 = *v9;
        v5 = v9;
        if (!*v9)
        {
          goto LABEL_28;
        }
      }

      v19 = memcmp(v15, v8, v16);
      v20 = v14 < v7;
      if (v19)
      {
        v20 = v19 < 0;
      }

      if (!v20)
      {
        break;
      }

      v5 = v9 + 1;
      v4 = v9[1];
    }

    while (v4);
  }

  else
  {
    v9 = (a1 + 8);
  }

LABEL_28:
  *a2 = v9;
  return v5;
}

uint64_t *std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

void std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

FIK *FIK::FKConverter::FKConverter(FIK *a1, uint64_t *a2, unint64_t *a3, void *a4)
{
  v8 = FIK::defaultAllocator(a1);
  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *(a1 + 3) = v8;
  v9 = *a3;
  if (*a3 == *a4)
  {
    if (!v9)
    {
      return a1;
    }
  }

  else
  {
    v16 = ikinemaLogObject();
    ikinemaAssertHandler(*v16, 0, "FKConverter", "(fkNames.size() == parentNames.size()) FKConverter expects parent name for each FK bone.");
    v9 = *a3;
    if (!*a3)
    {
      return a1;
    }
  }

  v10 = 0;
  v11 = 0;
  do
  {
    IndexForName = getIndexForName(a3[2] + v10, a2);
    if (IndexForName != -1)
    {
      v13 = IndexForName;
      v14 = getIndexForName(a4[2] + v10, a2);
      FIK::IKArray<FIK::FKConverter::IndexPair>::reserve(a1, *a1 + 1);
      *(*(a1 + 2) + 8 * (*a1)++) = v13 | (v14 << 32);
      v9 = *a3;
    }

    ++v11;
    v10 += 24;
  }

  while (v11 < v9);
  return a1;
}

uint64_t getIndexForName(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = 0;
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *a1;
  }

  else
  {
    v5 = &unk_245A04BAE;
  }

  for (i = (a2[2] + 8); ; i += 3)
  {
    v7 = *i ? *(i - 1) : &unk_245A04BAE;
    if (*i == v4 && !memcmp(v7, v5, v4))
    {
      break;
    }

    if (v2 == ++v3)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v3;
}

void *FIK::FKConverter::convertToGlobal(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*result)
  {
    v4 = result[2];
    v5 = 8 * *result;
    v6.i64[0] = 0x4000000040000000;
    v6.i64[1] = 0x4000000040000000;
    do
    {
      v7 = v4[1];
      if (v7 == -1)
      {
        v24 = *v4;
        v25 = (a2 + 32 * v24);
        v23 = (a4 + 32 * v24);
        *v23 = *v25;
        v17 = v25[1];
      }

      else
      {
        v8 = (a4 + 32 * v7);
        v9 = *v4;
        v10 = a2 + 32 * v9;
        v11 = *(v10 + 16);
        v12 = vnegq_f32(v11);
        v13 = vtrn2q_s32(v11, vtrn1q_s32(v11, v12));
        v14 = v8[1];
        v15 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v11, v12, 8uLL), *v14.f32, 1), vextq_s8(v13, v13, 8uLL), v14.f32[0]);
        v16 = vrev64q_s32(v11);
        v16.i32[0] = v12.i32[1];
        v16.i32[3] = v12.i32[2];
        v17 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v11, v14, 3), v16, v14, 2), v15);
        v18 = vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL);
        v19 = vnegq_f32(v14);
        v20 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*v10, *v10), *v10, 0xCuLL), v19), *v10, v18);
        v21 = vextq_s8(vuzp1q_s32(v20, v20), v20, 0xCuLL);
        v22 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL), v19), v21, v18);
        v23 = (a4 + 32 * v9);
        *v23 = vaddq_f32(*v8, vmlaq_f32(*v10, v6, vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL), v21, v14, 3)));
      }

      v23[1] = v17;
      v4 += 2;
      v5 -= 8;
    }

    while (v5);
  }

  return result;
}

void *FIK::IKArray<FIK::FKConverter::IndexPair>::reserve(void *result, unint64_t a2)
{
  if (result[1] < a2)
  {
    v2 = result;
    v3 = result[3];
    v4 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v4)
    {
      v5 = (*(*v3 + 16))(result[3], 8 * v4, 4);
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

    memcpy(v6, v2[2], 8 * *v2);
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

uint64_t FIK::FloorLevel::FloorTask::FloorTask(uint64_t a1, IKString *a2, uint64_t a3, uint64_t a4, int a5, void *a6)
{
  IKString::operator+(a2, "_Task", 5, &v19);
  *a1 = &unk_28589BD98;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  v11 = IKString::IKString((a1 + 24), &v19, v21);
  if (v20)
  {
    v11 = (*(*v21 + 24))(v21, v19, 0, 8);
    v19 = 0;
    v20 = 0;
  }

  *a1 = &unk_28589BE60;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = xmmword_245A01E80;
  *(a1 + 80) = 0x3F80000000000000;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  *(a1 + 112) = a5;
  v12 = FIK::defaultAllocator(v11);
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = v12;
  *(a1 + 144) = *a6;
  v13 = *(a1 + 8) + *(**(a1 + 8) - 264);
  (*(*v13 + 72))(v13, 20.0);
  v14 = *(a1 + 8) + *(**(a1 + 8) - 264);
  (*(*v14 + 96))(v14, 2.0);
  if (*(a1 + 145) == 1)
  {
    (*(**(a1 + 8) + 424))(*(a1 + 8), 1);
    (*(**(a1 + 8) + 448))();
    v18 = vaddq_f32(*(a1 + 96), vmulq_n_f32(*(a1 + 80), *(a1 + 148)));
    (*(**(a1 + 8) + 472))(*(a1 + 8), &v18);
  }

  v15 = *(a1 + 16) + *(**(a1 + 16) - 264);
  (*(*v15 + 72))(v15, 5.0);
  v16 = *(a1 + 16) + *(**(a1 + 16) - 264);
  (*(*v16 + 96))(v16, 2.0);
  return a1;
}

__n128 FIK::FloorLevel::FloorTask::setPlaneNormal(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[5] = *a2;
  return result;
}

__n128 FIK::FloorLevel::FloorTask::setPlanePosition(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[6] = *a2;
  return result;
}

uint64_t FIK::FloorLevel::FloorTask::setTarget(float32x4_t *this, const FIK::Transform *a2)
{
  FIK::FloorLevel::FloorTask::setPositionTarget(this);
  result = this[1].i64[0];
  if (result)
  {
    v4 = *(*result + 248);

    return v4();
  }

  return result;
}

uint64_t FIK::FloorLevel::FloorTask::setPositionTarget(float32x4_t *a1)
{
  result = a1->i64[1];
  if (result)
  {
    result = (*(*result + 248))(result);
    if (a1[9].i8[1] == 1)
    {
      (*(*a1->i64[1] + 448))(a1->i64[1], a1 + 5);
      v3 = vaddq_f32(a1[6], vmulq_n_f32(a1[5], a1[9].f32[1]));
      return (*(*a1->i64[1] + 472))(a1->i64[1], &v3);
    }
  }

  return result;
}

uint64_t FIK::FloorLevel::FloorTask::setOrientationTarget(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 248))();
  }

  return result;
}

__n128 FIK::FloorLevel::FloorTask::setOffset(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *a2;
  result = *(a2 + 16);
  *(a1 + 64) = result;
  return result;
}

uint64_t FIK::FloorLevel::FloorLevel(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = FIK::AnimNode::AnimNode(a1, a2);
  *v3 = &unk_28589BE98;
  v4 = FIK::defaultAllocator(v3);
  *(a1 + 472) = 0;
  *(a1 + 480) = 0;
  *(a1 + 488) = 0;
  *(a1 + 496) = v4;
  if (*(a1 + 352))
  {
    v5 = 0;
    v6 = 352;
    do
    {
      v7 = (*(a1 + 368) + v6);
      if (v6 == 352 || (*v7 & 1) != 0)
      {
        v8 = FIK::IKSolver::addPositionTask((a1 + 16), (v7 - 43));
        v9 = FIK::IKSolver::addOrientationTask((a1 + 16), (v7 - 43));
        FIK::FloorLevel::FloorTask::FloorTask(v16, (v7 - 43), v8, v9, v5, v7);
        FIK::IKArray<FIK::FloorLevel::FloorTask>::push_back<FIK::FloorLevel::FloorTask,void>((a1 + 472), v16);
        if (v19)
        {
          (*(*v20 + 24))(v20, v18, 0, 8);
          v18 = 0;
          v19 = 0;
        }

        v16[0] = &unk_28589BD98;
        if (v16[4])
        {
          (*(*v17 + 24))(v17, v16[3], 0, 8);
        }

        Segment = FIK::IKSolver::getSegment((a1 + 16), v7 - 43);
        (*(*Segment + 16))(Segment, 1, 0);
        v11 = (*(*Segment + 392))(Segment);
        if (v11)
        {
          v12 = v11;
          (*(*v11 + 712))(v11, 0.1);
          v13 = (*(*v12 + 392))(v12);
          if (v13)
          {
            (*(*v13 + 712))(v13, 0.1);
          }
        }
      }

      ++v5;
      v6 += 544;
    }

    while (*(a1 + 352) > v5);
  }

  FIK::IKSolver::setPGain((a1 + 16), 0.02);
  v14 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t *FIK::IKArray<FIK::FloorLevel::FloorTask>::push_back<FIK::FloorLevel::FloorTask,void>(void *a1, uint64_t a2)
{
  FIK::IKArray<FIK::FloorLevel::FloorTask>::reserve(a1, *a1 + 1);
  v4 = a1[2] + 160 * *a1;
  *v4 = &unk_28589BD98;
  *(v4 + 8) = *(a2 + 8);
  IKString::IKString((v4 + 24), (a2 + 24), *(a2 + 40));
  *v4 = &unk_28589BE60;
  *(v4 + 48) = *(a2 + 48);
  *(v4 + 64) = *(a2 + 64);
  *(v4 + 80) = *(a2 + 80);
  *(v4 + 96) = *(a2 + 96);
  *(v4 + 112) = *(a2 + 112);
  result = IKString::IKString((v4 + 120), (a2 + 120), *(a2 + 136));
  *(v4 + 144) = *(a2 + 144);
  ++*a1;
  return result;
}

uint64_t FIK::FloorLevel::Solve(void *a1, uint64_t a2)
{
  (*(*a1 + 16))(a1);
  FIK::PoseConverter::PoseConverter<FIK::MoCapBone>(v12, a1[46], a1[44], a2);
  v4 = a1[59];
  if (v4)
  {
    v5 = a1[61];
    v6 = 160 * v4;
    do
    {
      GlobalTransform = FIK::PoseConverter::GetGlobalTransform(v12, v5[7].i32[0]);
      v8 = GlobalTransform[1];
      v11[0] = *GlobalTransform;
      v11[1] = v8;
      FIK::FloorLevel::FloorTask::setTarget(v5, v11);
      v5 += 10;
      v6 -= 160;
    }

    while (v6);
  }

  updated = FIK::AnimNode::SolveAndUpdatePose(a1, a2);
  FIK::PoseConverter::~PoseConverter(v12);
  return updated;
}

unint64_t FIK::FloorLevel::constraintByIndex(FIK::FloorLevel *this, unint64_t a2)
{
  if (*(this + 59) <= a2)
  {
    return 0;
  }

  else
  {
    return *(this + 61) + 160 * a2;
  }
}

void FIK::FloorLevel::~FloorLevel(FIK::FloorLevel *this)
{
  *this = &unk_28589BE98;
  FIK::IKArray<FIK::FloorLevel::FloorTask>::~IKArray(this + 472);

  FIK::AnimNode::~AnimNode(this);
}

{
  *this = &unk_28589BE98;
  FIK::IKArray<FIK::FloorLevel::FloorTask>::~IKArray(this + 472);
  FIK::AnimNode::~AnimNode(this);

  FIK::AnimNode::operator delete(v2);
}

uint64_t FIK::IKArray<FIK::FloorLevel::FloorTask>::~IKArray(uint64_t a1)
{
  FIK::IKArray<FIK::FloorLevel::FloorTask>::destroyBufferObjects(a1 + 8, *a1);
  *a1 = 0;
  v2 = *(a1 + 16);
  if (v2)
  {
    (*(**(a1 + 24) + 24))(*(a1 + 24), v2, 0, 8);
  }

  return a1;
}

uint64_t FIK::IKArray<FIK::FloorLevel::FloorTask>::destroyBufferObjects(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = *(result + 8);
    v4 = v3 + 120;
    do
    {
      if (*(v4 + 8))
      {
        result = (*(**(v4 + 16) + 24))(*(v4 + 16), *v4, 0, 8);
        *v4 = 0;
        *(v4 + 8) = 0;
      }

      *(v4 - 120) = &unk_28589BD98;
      if (*(v4 - 88))
      {
        result = (*(**(v4 - 80) + 24))(*(v4 - 80), *(v4 - 96), 0, 8);
        *(v4 - 96) = 0;
        *(v4 - 88) = 0;
      }

      v4 += 160;
      v3 += 160;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t FIK::IKArray<FIK::FloorLevel::FloorTask>::reserve(uint64_t result, unint64_t a2)
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
      v7 = (*(*v5 + 16))(*(result + 24), 160 * v6, 16);
      v8 = v7;
      if (160 * v6)
      {
        bzero(v7, 160 * v6);
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
        *v12 = &unk_28589BD98;
        *(v12 + 8) = *(v9 + v11 + 8);
        IKString::IKString(&v8[v11 + 24], (v9 + v11 + 24), *(v9 + v11 + 40));
        *v12 = &unk_28589BE60;
        *(v12 + 3) = *(v9 + v11 + 48);
        *(v12 + 4) = *(v9 + v11 + 64);
        *(v12 + 5) = *(v9 + v11 + 80);
        *(v12 + 6) = *(v9 + v11 + 96);
        *(v12 + 28) = *(v9 + v11 + 112);
        IKString::IKString(&v8[v11 + 120], (v9 + v11 + 120), *(v9 + v11 + 136));
        *(v12 + 18) = *(v9 + v11 + 144);
        v11 += 160;
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
    result = FIK::IKArray<FIK::FloorLevel::FloorTask>::destroyBufferObjects(&v16, v13);
    if (v17)
    {
      return (*(*v18 + 24))(v18, v17, 0, 8);
    }
  }

  return result;
}

_DWORD *FIK::Enrollment::LiftedSource::LiftedSource(_DWORD *a1, FIK *a2, _BYTE *a3, size_t a4, int a5)
{
  *a1 = a5;
  *(a1 + 1) = -1;
  v6 = a1 + 1;
  FIK::Enrollment::SourceDefinition::getDetectionIndicesForPrefixedName(a2, a3, a4, a1 + 2, a1 + 1);
  if (a1[2] == -1)
  {
    FIK::Enrollment::LiftedSource::LiftedSource();
  }

  if (*v6 == -1)
  {
    FIK::Enrollment::LiftedSource::LiftedSource();
  }

  return a1;
}

void FIK::Enrollment::LiftedSource::getTarget(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X8>)
{
  v7[0] = a2;
  v7[1] = a3;
  if (FIK::Enrollment::FrameAdaptor::isLiftedValid(v7, *(a1 + 4), *(a1 + 8)))
  {
    FIK::Enrollment::FrameAdaptor::getLiftedPositionForJoint(v7, *(a1 + 4), *(a1 + 8), a4);
    v6 = 1;
  }

  else
  {
    v6 = 0;
    a4->n128_u8[0] = 0;
  }

  a4[1].n128_u8[0] = v6;
}

void FIK::Enrollment::LiftedSource::getTarget(uint64_t a1@<X0>, unint64_t *a2@<X1>, unint64_t a3@<X2>, __n128 *a4@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  FIK::Enrollment::LiftedSource::getTarget(a1, *a2 + 160 * a3, 1, &v10);
  if (v11 == 1)
  {
    *a4 = v10;
    a4[1].n128_u8[0] = 1;
    v8 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v9 = *MEMORY[0x277D85DE8];

    FIK::Enrollment::LiftedSource::getApproxLifted(a1, a2, a3, a4);
  }
}

void FIK::Enrollment::LiftedSource::getApproxLifted(uint64_t a1@<X0>, unint64_t *a2@<X1>, unint64_t a3@<X2>, __n128 *a4@<X8>)
{
  if (a3)
  {
    v8 = a3;
    if (a3 == -1)
    {
      v8 = 0xCCCCCCCCCCCCCCCDLL * ((160 * a2[1]) >> 5);
    }

    v21.i64[0] = *a2;
    v21.i64[1] = v8;
    v22 = 1;
    v10 = v9;
    v11 = a3 + 1;
    v12 = a2[1];
    if (a3 + 1 >= v12)
    {
      if (v9 == -1)
      {
        goto LABEL_24;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v12 = a2[1];
    if (v12 <= 1)
    {
      goto LABEL_24;
    }

    v10 = -1;
    v11 = 1;
  }

  v21.i64[0] = *a2 + 160 * v11;
  v21.i64[1] = 0xCCCCCCCCCCCCCCCDLL * ((160 * (v12 - v11)) >> 5);
  v22 = 1;
  if (v13 == -1)
  {
    v14 = -1;
  }

  else
  {
    v14 = v13 + v11;
  }

  if (v10 == -1 || v14 == -1)
  {
    if (v10 != -1)
    {
LABEL_18:
      v17 = *a2 + 160 * v10;
LABEL_19:
      v21.i64[0] = v17;
      v21.i32[2] = 1;
      FIK::Enrollment::FrameAdaptor::getLiftedPositionForJoint(&v21, *(a1 + 4), *(a1 + 8), a4);
      a4[1].n128_u8[0] = 1;
      return;
    }

    if (v14 != -1)
    {
      v17 = *a2 + 160 * v14;
      goto LABEL_19;
    }

LABEL_24:
    a4->n128_u8[0] = 0;
    a4[1].n128_u8[0] = 0;
    return;
  }

  v20.i64[0] = *a2 + 160 * v10;
  v20.i32[2] = 1;
  FIK::Enrollment::FrameAdaptor::getLiftedPositionForJoint(&v20, *(a1 + 4), *(a1 + 8), &v21);
  v18 = *a2 + 160 * v14;
  v19 = 1;
  FIK::Enrollment::FrameAdaptor::getLiftedPositionForJoint(&v18, *(a1 + 4), *(a1 + 8), &v20);
  v15 = (a3 - v10) / (v14 - v10);
  if (v15 <= 0.0)
  {
    v16 = v21;
  }

  else
  {
    v16 = v20;
    if (v15 < 1.0)
    {
      v16 = vaddq_f32(v21, vmulq_n_f32(vsubq_f32(v20, v21), v15));
    }
  }

  *a4 = v16;
  a4[1].n128_u8[0] = 1;
}

uint64_t FIK::Enrollment::RaySource::RaySource(uint64_t a1, FIK *a2, _BYTE *a3, size_t a4, int a5, float a6)
{
  *a1 = a6;
  *(a1 + 4) = a5;
  *(a1 + 8) = -1;
  v7 = (a1 + 8);
  *(a1 + 16) = *(a2 + 3);
  v9 = -1;
  FIK::Enrollment::SourceDefinition::getDetectionIndicesForPrefixedName(a2, a3, a4, (a1 + 8), &v9);
  if (*v7 == -1)
  {
    FIK::Enrollment::RaySource::RaySource();
  }

  return a1;
}

uint64_t FIK::Enrollment::RaySource::getTarget@<X0>(FIK::Enrollment::RaySource *a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, float32x4_t *a4@<X8>)
{
  v9 = *a2 + 160 * a3;
  v10 = 1;
  if (!FIK::Enrollment::RaySource::isDataValid(a1, &v9))
  {
    return FIK::Enrollment::RaySource::getApproxRaysCenter(a1, a2, a3, a4);
  }

  result = FIK::Enrollment::RaySource::getRaysCenter(a1, &v9, a4);
  if ((a4[1].i8[0] & 1) == 0)
  {
    return FIK::Enrollment::RaySource::getApproxRaysCenter(a1, a2, a3, a4);
  }

  return result;
}

BOOL FIK::Enrollment::RaySource::isDataValid(FIK::Enrollment::RaySource *this, const FIK::Enrollment::FrameAdaptor *a2)
{
  if (!*(this + 2))
  {
    return 0;
  }

  v4 = 0;
  do
  {
    result = FIK::Enrollment::FrameAdaptor::isRayDirValid(a2, v4, *(this + 2));
    if (result)
    {
      break;
    }

    ++v4;
  }

  while (v4 < *(this + 2));
  return result;
}

uint64_t FIK::Enrollment::RaySource::getRaysCenter@<X0>(FIK::Enrollment::RaySource *this@<X0>, const FIK::Enrollment::FrameAdaptor *a2@<X1>, float32x4_t *a3@<X8>)
{
  result = FIK::defaultAllocator(this);
  v12[0] = 0;
  v12[1] = 0;
  v13 = 0;
  v14 = result;
  if (!*(this + 2))
  {
    goto LABEL_10;
  }

  v7 = 0;
  do
  {
    result = FIK::Enrollment::FrameAdaptor::isRayDirValid(a2, v7, *(this + 2));
    if (result)
    {
      FIK::Enrollment::FrameAdaptor::getRayEndForJoint(a2, *this, v7, *(this + 2), &v11);
      result = FIK::IKArray<FIK::Vector>::reserve(v12, v12[0] + 1);
      *(v13 + 16 * v12[0]++) = v11;
    }

    ++v7;
  }

  while (v7 < *(this + 2));
  if (v12[0])
  {
    v8 = 0;
    v9 = 0uLL;
    v10 = v13;
    do
    {
      v9 = vaddq_f32(v9, *(v13 + 16 * v8++));
    }

    while (v12[0] != v8);
    *a3 = vmulq_n_f32(v9, 1.0 / v12[0]);
    a3[1].i8[0] = 1;
    v12[0] = 0;
  }

  else
  {
LABEL_10:
    a3->i8[0] = 0;
    a3[1].i8[0] = 0;
    v10 = v13;
    v12[0] = 0;
    if (!v13)
    {
      return result;
    }
  }

  return (*(*v14 + 24))(v14, v10, 0, 8);
}

uint64_t FIK::Enrollment::RaySource::getApproxRaysCenter@<X0>(uint64_t this@<X0>, void *a2@<X1>, unint64_t a3@<X2>, float32x4_t *a4@<X8>)
{
  v6 = this;
  v31 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v8 = a3;
    if (a3 == -1)
    {
      v8 = 0xCCCCCCCCCCCCCCCDLL * ((160 * a2[1]) >> 5);
    }

    v9 = *a2 + 160 * v8 - 160;
    while (v8)
    {
      --v8;
      v29.i64[0] = v9;
      v29.i32[2] = 1;
      this = FIK::Enrollment::RaySource::isDataValid(v6, &v29);
      v9 -= 160;
      if (this)
      {
        goto LABEL_9;
      }
    }
  }

  v8 = -1;
LABEL_9:
  v10 = a3 + 1;
  v11 = a2[1];
  v12 = v11 > a3 + 1;
  v13 = v11 - (a3 + 1);
  if (v12 && (v14 = 160 * v13) != 0)
  {
    v15 = 0xCCCCCCCCCCCCCCCDLL * (v14 >> 5);
    if (v15 <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = v15;
    }

    v17 = *a2 + 160 * a3 + 160;
    while (1)
    {
      v29.i64[0] = v17;
      v29.i32[2] = 1;
      this = FIK::Enrollment::RaySource::isDataValid(v6, &v29);
      if (this)
      {
        break;
      }

      ++v10;
      v17 += 160;
      if (!--v16)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
LABEL_18:
    v10 = -1;
  }

  if (v8 == -1)
  {
    if (v10 == -1)
    {
      goto LABEL_31;
    }

    v19 = 0;
    v21 = 0uLL;
  }

  else
  {
    v27 = *a2 + 160 * v8;
    v28 = 1;
    this = FIK::Enrollment::RaySource::getRaysCenter(v6, &v27, &v29);
    v18.i32[0] = 0;
    v19 = v30;
    v20.i32[0] = v30;
    v21 = vbicq_s8(v29, vdupq_lane_s8(*&vceqq_s8(v20, v18), 0));
    if (v10 == -1)
    {
      if (v30)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    }
  }

  v26 = v21;
  v27 = *a2 + 160 * v10;
  v28 = 1;
  this = FIK::Enrollment::RaySource::getRaysCenter(v6, &v27, &v29);
  v22.i32[0] = 0;
  v23.i32[0] = v30;
  v21 = vbicq_s8(v29, vdupq_lane_s8(*&vceqq_s8(v23, v22), 0));
  if (v19)
  {
    if (v30 && (v24 = (a3 - v8) / (v10 - v8), v24 > 0.0))
    {
      if (v24 < 1.0)
      {
        v21 = vaddq_f32(vmulq_n_f32(vsubq_f32(v21, v26), v24), v26);
      }
    }

    else
    {
      v21 = v26;
    }

    goto LABEL_33;
  }

  if (v30)
  {
LABEL_33:
    *a4 = v21;
    a4[1].i8[0] = 1;
    goto LABEL_34;
  }

LABEL_31:
  a4->i8[0] = 0;
  a4[1].i8[0] = 0;
LABEL_34:
  v25 = *MEMORY[0x277D85DE8];
  return this;
}

uint64_t FIK::Enrollment::VirtualSourceHierarchy::VirtualSourceHierarchy(uint64_t a1, uint64_t a2, void *a3, size_t a4, void *a5)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = xmmword_245A01E80;
  v10 = FIK::defaultAllocator(a1);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = v10;
  v11 = FIK::IKRigUtils::getBoneIndex<FIK::RigBoneBase,void>(a3, a4, (a2 + 240));
  if (v11 == -1)
  {
    FIK::Enrollment::VirtualSourceHierarchy::VirtualSourceHierarchy();
  }

  v12 = *(a2 + 208);
  if (!v12)
  {
    goto LABEL_7;
  }

  v13 = 0;
  v14 = *(a2 + 224);
  v15 = -v12;
  v16 = 280;
  while (*(v14 + v16) != v11)
  {
    --v13;
    v16 += 544;
    if (v15 == v13)
    {
      goto LABEL_7;
    }
  }

  if (v13 == 1)
  {
LABEL_7:
    v17 = ikinemaLogObject();
    ikinemaAssertHandler(*v17, 0, "VirtualSourceHierarchy", "(rootBoneIndex != kInvalidRigIndex) Failed to find solver joint for source.");
    v14 = *(a2 + 224);
    LODWORD(v18) = -1;
  }

  else
  {
    v18 = -v13;
  }

  if (*a5)
  {
    v19 = (v14 + 544 * v18);
    v20 = v19[4];
    v21 = vmulq_f32(v19[5], xmmword_245A01F10);
    v22 = vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL);
    v23 = vnegq_f32(v21);
    v24 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v20, v20), v20, 0xCuLL), v23), v20, v22);
    v25 = vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL);
    v56 = v23;
    v57 = v22;
    v26 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL), v23), v25, v22);
    v27 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL), v25, v21, 3);
    v25.i64[0] = 0x4000000040000000;
    v25.i64[1] = 0x4000000040000000;
    v58 = v21;
    v59 = vmlaq_f32(v20, v25, v27);
    v28 = a5[2];
    v54 = vdupq_lane_s32(*v21.f32, 0);
    v55 = vdupq_laneq_s32(v21, 3);
    v53 = vdupq_laneq_s32(v21, 2);
    v29 = v28 + 16 * *a5;
    do
    {
      v30 = FIK::IKRigUtils::getBoneIndex<FIK::RigBoneBase,void>(*v28, *(v28 + 8), (a2 + 240));
      if (v30 == -1)
      {
        FIK::Enrollment::VirtualSourceHierarchy::VirtualSourceHierarchy();
      }

      v31 = 0uLL;
      v32 = xmmword_245A01E80;
      if (v30 != v11)
      {
        v33 = *(a2 + 208);
        if (!v33)
        {
          goto LABEL_19;
        }

        v34 = 0;
        v35 = *(a2 + 224);
        v36 = -v33;
        v37 = 280;
        while (*(v35 + v37) != v30)
        {
          --v34;
          v37 += 544;
          if (v36 == v34)
          {
            goto LABEL_19;
          }
        }

        if (v34 == 1)
        {
LABEL_19:
          v38 = ikinemaLogObject();
          ikinemaAssertHandler(*v38, 0, "VirtualSourceHierarchy", "(boneIndex != kInvalidRigIndex) Failed to find solver joint for source.");
          v35 = *(a2 + 224);
          LODWORD(v39) = -1;
        }

        else
        {
          v39 = -v34;
        }

        v40 = (v35 + 544 * v39);
        v42 = v40[4];
        v41 = v40[5];
        v43 = vnegq_f32(v41);
        v44 = vtrn2q_s32(v41, vtrn1q_s32(v41, v43));
        v45 = vmlaq_f32(vmulq_lane_f32(vextq_s8(v41, v43, 8uLL), *v58.f32, 1), vextq_s8(v44, v44, 8uLL), v54);
        v46 = vrev64q_s32(v41);
        v46.i32[0] = v43.i32[1];
        v46.i32[3] = v43.i32[2];
        v32 = vaddq_f32(vmlaq_f32(vmulq_laneq_f32(v41, v58, 3), v46, v53), v45);
        v47 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v42, v42), v42, 0xCuLL), v56), v42, v57);
        v48 = vextq_s8(vuzp1q_s32(v47, v47), v47, 0xCuLL);
        v49 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v48, v48), v48, 0xCuLL), v56), v48, v57);
        v50 = vmlaq_f32(vextq_s8(vuzp1q_s32(v49, v49), v49, 0xCuLL), v48, v55);
        v48.i64[0] = 0x4000000040000000;
        v48.i64[1] = 0x4000000040000000;
        v31 = vsubq_f32(vmlaq_f32(v42, v48, v50), v59);
      }

      v60 = v31;
      v61 = v32;
      FIK::IKArray<FIK::Enrollment::VirtualSourceHierarchy::VirtualSourceDescriptor>::reserve((a1 + 32), *(a1 + 32) + 1);
      v51 = *(a1 + 48) + 48 * *(a1 + 32);
      *v51 = v30;
      *(v51 + 16) = v60;
      *(v51 + 32) = v61;
      ++*(a1 + 32);
      v28 += 16;
    }

    while (v28 != v29);
  }

  return a1;
}

float32x4_t *FIK::Enrollment::VirtualSourceHierarchy::updateSources(float32x4_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v6 = result[2].i64[0];
  if (v6)
  {
    v7 = result[3].i64[0];
    v8 = 48 * v6;
    v9.i64[0] = 0x4000000040000000;
    v9.i64[1] = 0x4000000040000000;
    do
    {
      v11 = v7[1];
      v10 = v7[2];
      v12 = vnegq_f32(v10);
      v13 = vtrn2q_s32(v10, vtrn1q_s32(v10, v12));
      v14 = result[1];
      v15 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v10, v12, 8uLL), *v14.f32, 1), vextq_s8(v13, v13, 8uLL), v14.f32[0]);
      v16 = vrev64q_s32(v10);
      v16.i32[0] = v12.i32[1];
      v16.i32[3] = v12.i32[2];
      v17 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v10, v14, 3), v16, v14, 2), v15);
      v18 = vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL);
      v19 = vnegq_f32(v14);
      v20 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL), v19), v11, v18);
      v21 = vextq_s8(vuzp1q_s32(v20, v20), v20, 0xCuLL);
      v22 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL), v19), v21, v18);
      v23 = (a2 + 32 * v7->i32[0]);
      *v23 = vaddq_f32(*result, vmlaq_f32(v11, v9, vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL), v21, v14, 3)));
      v23[1] = v17;
      *(a4 + v7->i32[0]) = a6;
      v7 += 3;
      v8 -= 48;
    }

    while (v8);
  }

  return result;
}

float32x4_t *FIK::Enrollment::VirtualSourceController::VirtualSourceController(float32x4_t *a1, uint64_t a2, unsigned int *a3)
{
  a1->i64[0] = -1;
  a1[1].i32[0] = -1;
  a1[2].i64[0] = 0;
  a1[2].i64[1] = 0;
  a1[3] = xmmword_245A01E80;
  a1[4].i32[0] = 0;
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  FIK::IKArray<std::string_view>::IKArray(v58, (a2 + 48));
  FIK::Enrollment::VirtualSourceHierarchy::VirtualSourceHierarchy(&a1[5], a3, v6, v7, v58);
  v58[0] = 0;
  if (v59)
  {
    (*(*v60 + 24))(v60, v59, 0, 8);
  }

  FIK::PoseConverter::PoseConverter<FIK::MoCapBone>(v57, *(a3 + 28), *(a3 + 26));
  FIK::PoseConverter::PoseConverter<FIK::RigBoneBase>(v56, *(a3 + 32), *(a3 + 30));
  v8 = FIK::IKRigUtils::getBoneIndex<FIK::RigBoneBase,void>(*a2, *(a2 + 8), a3 + 60);
  a1->i32[0] = v8;
  if (v8 == -1)
  {
    FIK::Enrollment::VirtualSourceController::VirtualSourceController();
  }

  v9 = FIK::IKRigUtils::getBoneIndex<FIK::RigBoneBase,void>(*(a2 + 16), *(a2 + 24), a3 + 60);
  a1->i32[1] = v9;
  if (v9 == -1)
  {
    FIK::Enrollment::VirtualSourceController::VirtualSourceController();
  }

  GlobalTransform = FIK::PoseConverter::GetGlobalTransform(v56, a1->i32[0]);
  v48 = GlobalTransform[1];
  v50 = *GlobalTransform;
  v11 = *(a3 + 22);
  if (!v11)
  {
    goto LABEL_11;
  }

  v12 = 0;
  v13 = a1->i32[0];
  v14 = *(a3 + 24);
  v15 = -v11;
  v16 = 200;
  while (*(v14 + v16) != v13)
  {
    --v12;
    v16 += 256;
    if (v15 == v12)
    {
      goto LABEL_11;
    }
  }

  if (v12 == 1)
  {
LABEL_11:
    v17 = ikinemaLogObject();
    ikinemaAssertHandler(*v17, 0, "getTaskOffsetForSource", "(taskIndex != kInvalidRigIndex) The given source is not driving a task!");
    v14 = *(a3 + 24);
    v13 = a1->i32[0];
    LODWORD(v18) = -1;
  }

  else
  {
    v18 = -v12;
  }

  v46 = *(v14 + (v18 << 8) + 208);
  FIK::Enrollment::getBonePoseInSourceSpace(a3, v13, v57, v55);
  v44 = v55[0];
  FIK::Enrollment::getBonePoseInSourceSpace(a3, a1->i32[1], v57, v54);
  v19 = FIK::IKRigUtils::getBoneIndex<FIK::RigBoneBase,void>(*(a2 + 32), *(a2 + 40), a3 + 60);
  if (v19 == -1)
  {
    FIK::Enrollment::VirtualSourceController::VirtualSourceController();
  }

  v20 = vextq_s8(vuzp1q_s32(v48, v48), v48, 0xCuLL);
  v21 = vnegq_f32(v48);
  v22 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v46, v46), v46, 0xCuLL), v21), v46, v20);
  v23 = vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL);
  v24 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL), v21), v23, v20);
  v25 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL), v23, v48, 3);
  v23.i64[0] = 0x4000000040000000;
  v23.i64[1] = 0x4000000040000000;
  v26.i64[0] = 0x4000000040000000;
  v26.i64[1] = 0x4000000040000000;
  v45 = vsubq_f32(vaddq_f32(v50, vmlaq_f32(v46, v23, v25)), v44);
  v27 = vmulq_f32(v48, xmmword_245A01F10);
  v47 = vnegq_f32(v27);
  v49 = vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL);
  v43 = v27;
  v28 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v50, v50), v50, 0xCuLL), v47), v50, v49);
  v29 = vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL);
  v30 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL), v47), v29, v49);
  v51 = vmlaq_f32(v50, v26, vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL), v29, v27, 3));
  FIK::Enrollment::getBonePoseInSourceSpace(a3, v19, v57, &v52);
  v31 = vaddq_f32(v45, v52);
  v32 = vnegq_f32(v53);
  v33 = vtrn2q_s32(v53, vtrn1q_s32(v53, v32));
  v34 = vrev64q_s32(v53);
  v34.i32[0] = v32.i32[1];
  v34.i32[3] = v32.i32[2];
  v35 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v53, v43, 3), v34, v43, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v53, v32, 8uLL), *v43.f32, 1), vextq_s8(v33, v33, 8uLL), v43.f32[0]));
  v36 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v31, v31), v31, 0xCuLL), v47), v31, v49);
  v37 = vextq_s8(vuzp1q_s32(v36, v36), v36, 0xCuLL);
  v38 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v37, v37), v37, 0xCuLL), v47), v37, v49);
  v39 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v38, v38), v38, 0xCuLL), v37, v43, 3);
  v37.i64[0] = 0x4000000040000000;
  v37.i64[1] = 0x4000000040000000;
  v40 = vsubq_f32(v52, v54[0]);
  v41 = vmulq_f32(v40, v40);
  a1[1].i32[0] = v19;
  a1[2] = vsubq_f32(vmlaq_f32(v31, v37, v39), v51);
  a1[3] = v35;
  a1[4].f32[0] = sqrtf(v41.f32[2] + vaddv_f32(*v41.f32));
  FIK::PoseConverter::~PoseConverter(v56);
  FIK::PoseConverter::~PoseConverter(v57);
  return a1;
}

float32x4_t FIK::Enrollment::getBonePoseInSourceSpace@<Q0>(uint64_t a1@<X0>, int a2@<W1>, FIK::PoseConverter *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 208);
  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = 0;
  v9 = -v7;
  v10 = (*(a1 + 224) + 280);
  while (*v10 != a2)
  {
    v10 += 136;
    if (v9 == --v8)
    {
      goto LABEL_5;
    }
  }

  if (v8 == 1)
  {
LABEL_5:
    FIK::Enrollment::getBonePoseInSourceSpace();
    LODWORD(v11) = -1;
  }

  else
  {
    v11 = -v8;
  }

  v15 = 1.0 / *(a1 + 308);
  GlobalTransform = FIK::PoseConverter::GetGlobalTransform(a3, v11);
  v13 = *(GlobalTransform + 16);
  result = vmulq_n_f32(*GlobalTransform, v15);
  *a4 = result;
  *(a4 + 16) = v13;
  return result;
}

float32x4_t *FIK::Enrollment::VirtualSourceController::updateDependents(float32x4_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float32x4_t *a6, float32x4_t *a7)
{
  v12 = a1->i32[0];
  v13 = (a2 + 32 * v12);
  v14 = a6[1];
  v15 = vtrn2q_s32(vrev64q_s32(0), v14);
  v16 = vmulq_f32(v15, v15);
  v17 = vadd_f32(*v16.i8, *&vextq_s8(v16, v16, 8uLL));
  if (vaddv_f32(v17) == 0.0)
  {
    v18 = xmmword_245A01E80;
  }

  else
  {
    v19 = vadd_f32(v17, vdup_lane_s32(v17, 1)).u32[0];
    v20 = vrsqrte_f32(v19);
    v21 = vmul_f32(v20, vrsqrts_f32(v19, vmul_f32(v20, v20)));
    v18 = vmulq_n_f32(v15, vmul_f32(v21, vrsqrts_f32(v19, vmul_f32(v21, v21))).f32[0]);
  }

  v22 = *(a4 + v12);
  v23 = *(a2 + 32 * a1->i32[1]);
  v24 = vmulq_f32(v14, xmmword_245A01F10);
  v25 = vnegq_f32(v18);
  v26 = vtrn2q_s32(v18, vtrn1q_s32(v18, v25));
  v27 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v18, v25, 8uLL), *v24.f32, 1), vextq_s8(v26, v26, 8uLL), v24.f32[0]);
  v28 = vrev64q_s32(v18);
  v28.i32[0] = v25.i32[1];
  v28.i32[3] = v25.i32[2];
  v29 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v18, v24, 3), v28, v24, 2), v27);
  v30 = *v13;
  v32 = a1[2];
  v31 = a1[3];
  v33 = vnegq_f32(v31);
  v34 = vtrn2q_s32(v31, vtrn1q_s32(v31, v33));
  v35 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v31, v33, 8uLL), *v29.f32, 1), vextq_s8(v34, v34, 8uLL), v29.f32[0]);
  v36 = vrev64q_s32(v31);
  v36.i32[0] = v33.i32[1];
  v36.i32[3] = v33.i32[2];
  v37 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v31, v29, 3), v36, v29, 2), v35);
  v38 = vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL);
  v39 = vnegq_f32(v29);
  v40 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v32, v32), v32, 0xCuLL), v39), v32, v38);
  v41 = vextq_s8(vuzp1q_s32(v40, v40), v40, 0xCuLL);
  v42 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v41, v41), v41, 0xCuLL), v39), v41, v38);
  v43 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v42, v42), v42, 0xCuLL), v41, v29, 3);
  v29.i64[0] = 0x4000000040000000;
  v29.i64[1] = 0x4000000040000000;
  v44 = vaddq_f32(*v13, vmlaq_f32(v32, v29, v43));
  if (a7[1].i8[0] == 1)
  {
    v45 = vsubq_f32(*a7, v30);
    v46 = vsubq_f32(v44, v30);
    v47 = vmulq_f32(v46, v46);
    v48 = vmulq_f32(v45, v45);
    v49 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v48, v48, 8uLL), *&vextq_s8(v47, v47, 8uLL)), vadd_f32(vzip1_s32(*v48.i8, *v47.i8), vzip2_s32(*v48.i8, *v47.i8))));
    v50 = 1.0 / v49.f32[1];
    v51 = vmvn_s8(vceqz_f32(v49));
    if ((v51.i8[4] & 1) == 0)
    {
      v50 = 0.0;
    }

    v52 = vmulq_n_f32(v46, v50);
    v53 = 1.0 / v49.f32[0];
    if ((v51.i8[0] & 1) == 0)
    {
      v53 = 0.0;
    }

    v54 = vmulq_n_f32(v45, v53);
    v55 = vmulq_f32(v52, v54);
    *v51.i32 = v55.f32[2] + vaddv_f32(*v55.f32);
    v56 = xmmword_245A01E80;
    if (*v51.i32 < 1.0)
    {
      if (*v51.i32 >= -0.999999)
      {
        *v51.i32 = sqrtf((*v51.i32 + 1.0) + (*v51.i32 + 1.0));
        v64 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v54, v54), v54, 0xCuLL), vnegq_f32(v52)), v54, vextq_s8(vuzp1q_s32(v52, v52), v52, 0xCuLL));
        v65 = vdivq_f32(vextq_s8(vuzp1q_s32(v64, v64), v64, 0xCuLL), vdupq_lane_s32(v51, 0));
        v65.f32[3] = *v51.i32 * 0.5;
        v66 = vmulq_f32(v65, v65);
        v67 = vadd_f32(*v66.i8, *&vextq_s8(v66, v66, 8uLL));
        if (vaddv_f32(v67) != 0.0)
        {
          v68 = vadd_f32(v67, vdup_lane_s32(v67, 1)).u32[0];
          v69 = vrsqrte_f32(v68);
          v70 = vmul_f32(v69, vrsqrts_f32(v68, vmul_f32(v69, v69)));
          v56 = vmulq_n_f32(v65, vmul_f32(v70, vrsqrts_f32(v68, vmul_f32(v70, v70))).f32[0]);
        }
      }

      else
      {
        v57 = vextq_s8(vuzp1q_s32(v52, v52), v52, 0xCuLL);
        v58 = vmlaq_f32(vmulq_f32(v57, xmmword_245A01E90), xmmword_245A01EA0, v52);
        v59 = vmulq_f32(v58, v58);
        v60 = sqrtf(v59.f32[1] + (v59.f32[2] + v59.f32[0]));
        if (fabsf(v60) >= 0.000000001)
        {
          v62 = vextq_s8(vuzp1q_s32(v58, v58), v58, 0xCuLL);
          v62.i32[3] = 0;
        }

        else
        {
          v61 = vmlaq_f32(vmulq_f32(v57, xmmword_245A01EB0), xmmword_245A01EC0, v52);
          v62 = vextq_s8(vuzp1q_s32(v61, v61), v61, 0xCuLL);
          v63 = vmulq_f32(v61, v61);
          v60 = sqrtf(v63.f32[1] + (v63.f32[2] + v63.f32[0]));
        }

        v71 = 1.0 / v60;
        if (v60 == 0.0)
        {
          v71 = 0.0;
        }

        v56 = vmulq_n_f32(v62, v71);
        v56.i32[3] = 0;
      }
    }

    v72 = vnegq_f32(v37);
    v73 = vtrn2q_s32(v37, vtrn1q_s32(v37, v72));
    v74 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v37, v72, 8uLL), *v56.f32, 1), vextq_s8(v73, v73, 8uLL), v56.f32[0]);
    v75 = vrev64q_s32(v37);
    v75.i32[0] = v72.i32[1];
    v75.i32[3] = v72.i32[2];
    v37 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v37, v56, 3), v75, v56, 2), v74);
    v76 = vextq_s8(vuzp1q_s32(v56, v56), v56, 0xCuLL);
    v77 = vnegq_f32(v56);
    v78 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v46, v46), v46, 0xCuLL), v77), v46, v76);
    v79 = vextq_s8(vuzp1q_s32(v78, v78), v78, 0xCuLL);
    v80 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v79, v79), v79, 0xCuLL), v77), v79, v76);
    v81 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v80, v80), v80, 0xCuLL), v79, v56, 3);
    v82.i64[0] = 0x4000000040000000;
    v82.i64[1] = 0x4000000040000000;
    v44 = vaddq_f32(v30, vmlaq_f32(v46, v82, v81));
  }

  v83 = a1[4].f32[0];
  v84 = vsubq_f32(v44, v23);
  v85 = vmulq_f32(v84, v84);
  v86 = sqrtf(v85.f32[2] + vaddv_f32(*v85.f32));
  if (vabds_f32(v86, v83) > 0.002)
  {
    if (v86 <= 0.0)
    {
      v89 = v37;
      v90 = *(a2 + 32 * a1->i32[1]);
      v88 = v84;
      FIK::Enrollment::VirtualSourceController::updateDependents();
      v84 = v88;
      v37 = v89;
      v23 = v90;
    }

    v44 = vaddq_f32(v23, vmulq_n_f32(v84, v83 / v86));
  }

  a1[5] = v44;
  a1[6] = v37;

  return FIK::Enrollment::VirtualSourceHierarchy::updateSources(a1 + 5, a2, a3, a4, a5, v22);
}

uint64_t FIK::Enrollment::anonymous namespace::getIndexOfFrameWithValidDataInRange<FIK::Enrollment::LiftedSource>(uint64_t a1, void *a2, int a3)
{
  v5 = a2[1];
  if (!a3)
  {
    v7 = 160 * v5 - 160;
    while (v5)
    {
      --v5;
      v9 = v7 + *a2;
      v10 = 1;
      v7 -= 160;
      if (FIK::Enrollment::FrameAdaptor::isLiftedValid(&v9, *(a1 + 4), *(a1 + 8)))
      {
        return v5;
      }
    }

    return -1;
  }

  if (!v5)
  {
    return -1;
  }

  v6 = 0;
  v5 = 0;
  while (1)
  {
    v9 = v6 + *a2;
    v10 = 1;
    if (FIK::Enrollment::FrameAdaptor::isLiftedValid(&v9, *(a1 + 4), *(a1 + 8)))
    {
      break;
    }

    ++v5;
    v6 += 160;
    if (v5 >= a2[1])
    {
      return -1;
    }
  }

  return v5;
}

uint64_t *FIK::IKArray<FIK::Enrollment::VirtualSourceHierarchy::VirtualSourceDescriptor>::reserve(uint64_t *result, unint64_t a2)
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
        v9[1] = *(v7 + 16);
        v9[2] = *(v7 + 32);
        v9 += 3;
        v7 += 48;
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

void *FIK::IKArray<std::string_view>::IKArray(void *a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  *a1 = v5;
  FIK::IKArray<std::string_view>::MemoryBlock::MemoryBlock(a1 + 1, v4, a2[3]);
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

void *FIK::IKArray<std::string_view>::MemoryBlock::MemoryBlock(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  if (a2)
  {
    v5 = 16 * a2;
    v6 = (*(*a3 + 16))(a3, 16 * a2, 8);
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

uint64_t *FIK::PoseConverter::PoseConverter<FIK::RigBoneBase>(uint64_t *a1, uint64_t a2, unint64_t a3)
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
    v12 = 96 * a3;
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
      v11 += 6;
      v12 -= 96;
    }

    while (v12);
  }

  FIK::PoseConverter::resetGlobalFlag(a1);
  return a1;
}

uint64_t ikinema::ScalePipeDataAlgorithmImpl::process(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v6 = *(a1 + 32);
    v7 = &v6[v3];
    do
    {
      v8 = ikinema::BufferContainer::buffer(a3, *v6);
      v9 = ikinema::Buffer::arrayView<FIK::Transform>(v8);
      if (*(a1 + 8) != 1.0 && v10 != 0)
      {
        v12 = 32 * v10;
        do
        {
          *v9 = vmulq_n_f32(*v9, *(a1 + 8));
          v9 += 2;
          v12 -= 32;
        }

        while (v12);
      }

      ++v6;
    }

    while (v6 != v7);
  }

  return 0;
}

uint64_t ikinema::ScalePipeDataAlgorithmImpl::registerBuffers(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  if (!*a2)
  {
    return 1;
  }

  v3 = *(a1 + 32);
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

uint64_t ikinema::ScalePipeDataAlgorithm::create@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X8>, float a5@<S0>)
{
  v7[0] = a1;
  v7[1] = a2;
  v6 = a5;
  return ikinema::AlgorithmHandle::make<ikinema::ScalePipeDataAlgorithmImpl,std::string_view &,float const&,FIK::IKArray<ikinema::BufferKey>>(v7, &v6, a3, a4);
}

uint64_t ikinema::AlgorithmHandle::make<ikinema::ScalePipeDataAlgorithmImpl,std::string_view &,float const&,FIK::IKArray<ikinema::BufferKey>>@<X0>(uint64_t a1@<X0>, float *a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X8>)
{
  result = FIK::FIKAlloc(0x48, 8);
  if (result)
  {
    v9 = *a1;
    v10 = *(a1 + 8);
    v11 = *a2;
    v12 = *a3;
    v13 = a3[1];
    *a3 = 0;
    *(a3 + 1) = 0;
    *(a3 + 2) = 0;
    v14 = v12;
    v15 = v13;
    result = ikinema::ScalePipeDataAlgorithmImpl::ScalePipeDataAlgorithmImpl(result, v9, v11, v10, &v14);
    *a4 = result;
    *&v14 = 0;
    if (v15)
    {
      return (*(**(&v15 + 1) + 24))(*(&v15 + 1), v15, 0, 8);
    }
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

const char *ikinema::AlgorithmBlockBase<ikinema::ScalePipeDataAlgorithm>::typeId()
{
  result = "N7ikinema22ScalePipeDataAlgorithmE";
  if (("N7ikinema22ScalePipeDataAlgorithmE" & 0x8000000000000000) != 0)
  {
    v1 = ("N7ikinema22ScalePipeDataAlgorithmE" & 0x7FFFFFFFFFFFFFFFLL);
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

void ikinema::ScalePipeDataAlgorithmImpl::~ScalePipeDataAlgorithmImpl(ikinema::ScalePipeDataAlgorithmImpl *this)
{
  if (*(this + 7))
  {
    (*(**(this + 8) + 24))(*(this + 8), *(this + 6), 0, 8);
    *(this + 6) = 0;
    *(this + 7) = 0;
  }

  *(this + 2) = 0;
  v2 = *(this + 4);
  if (v2)
  {
    (*(**(this + 5) + 24))(*(this + 5), v2, 0, 8);
  }
}

{
  if (*(this + 7))
  {
    (*(**(this + 8) + 24))(*(this + 8), *(this + 6), 0, 8);
    *(this + 6) = 0;
    *(this + 7) = 0;
  }

  *(this + 2) = 0;
  v2 = *(this + 4);
  if (v2)
  {
    (*(**(this + 5) + 24))(*(this + 5), v2, 0, 8);
  }

  JUMPOUT(0x245D77F60);
}

void *ikinema::ScalePipeDataAlgorithmImpl::name(ikinema::ScalePipeDataAlgorithmImpl *this)
{
  if (*(this + 7))
  {
    return *(this + 6);
  }

  else
  {
    return &unk_245A04BAE;
  }
}

uint64_t ikinema::ScalePipeDataAlgorithmImpl::ScalePipeDataAlgorithmImpl(uint64_t a1, char *a2, float a3, uint64_t a4, uint64_t *a5)
{
  if (a3 <= 0.0)
  {
    a3 = 1.0;
  }

  *(a1 + 8) = a3;
  *a1 = &unk_28589BF28;
  v7 = *a5;
  *a5 = 0;
  *(a1 + 16) = v7;
  v8 = a5[1];
  v9 = *(a5 + 1);
  a5[1] = 0;
  *(a1 + 24) = v8;
  a5[2] = 0;
  *(a1 + 32) = v9;
  v10 = FIK::defaultAllocator(a1);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = v10;
  v11 = strlen(a2);
  IKString::assign((a1 + 48), a2, v11);
  return a1;
}

void FIK::BipedCharacterisation::operator()(FIK *a1@<X0>, FIK::_anonymous_namespace_ *a2@<X1>, uint64_t a3@<X8>)
{
  v88 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  *(a3 + 24) = 0;
  *(a3 + 4) = 0;
  *(a3 + 16) = a3 + 24;
  *(a3 + 32) = 0;
  *(a3 + 48) = 0;
  *(a3 + 40) = a3 + 48;
  *(a3 + 56) = 0;
  v5 = FIK::defaultAllocator(a1);
  *(a3 + 64) = 0;
  *(a3 + 72) = 0;
  *(a3 + 80) = v5;
  IKString::assign((a3 + 64), "undefined", 9);
  v85 = 0uLL;
  *&v86 = FIK::defaultAllocator(v6);
  IKString::assign(&v85, "biped", 5);
  IKString::operator=((a3 + 64), &v85);
  if (*(&v85 + 1))
  {
    (*(*v86 + 24))(v86, v85, 0, 8);
  }

  if (v72 != 1)
  {
    goto LABEL_110;
  }

  v7 = v71[1];
  v9 = v71[2];
  v8 = v71[3];
  LODWORD(v85) = 0;
  *(&v85 + 1) = v71[0];
  std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::__emplace_unique_key_args<int,std::pair<int const,unsigned long>>(a3 + 16, &v85);
  LODWORD(v85) = 1;
  *(&v85 + 1) = v8;
  std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::__emplace_unique_key_args<int,std::pair<int const,unsigned long>>(a3 + 16, &v85);
  if (v70 != 1)
  {
    goto LABEL_110;
  }

  v10 = v69[0];
  v11 = v69[1];
  v13 = v69[2];
  v12 = v69[3];
  LODWORD(v85) = 8;
  *(&v85 + 1) = v69[0];
  std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::__emplace_unique_key_args<int,std::pair<int const,unsigned long>>(a3 + 16, &v85);
  if (v10 == v8)
  {
    v66[0] = 0;
    v66[1] = 0;
    v67 = 0;
    v68 = FIK::defaultAllocator(v14);
    v15 = (a3 + 48);
    v16 = a3 + 40;
    v17 = (a3 + 24);
  }

  else
  {
    v18 = FIK::Hierarchy::parentIndexOf(a2, v10);
    if ((v19 & 1) == 0)
    {
      goto LABEL_111;
    }

    v15 = (a3 + 48);
    v16 = a3 + 40;
    v17 = (a3 + 24);
    if (v66[0])
    {
      LODWORD(v85) = 1;
      FIK::IKArray<FIK::Task *>::IKArray(&v85 + 1, v66);
      std::__tree<std::__value_type<int,FIK::IKArray<unsigned long>>,std::__map_value_compare<int,std::__value_type<int,FIK::IKArray<unsigned long>>,std::less<int>,true>,std::allocator<std::__value_type<int,FIK::IKArray<unsigned long>>>>::__emplace_unique_key_args<int,std::pair<int const,FIK::IKArray<unsigned long>>>(a3 + 40, &v85);
      *(&v85 + 1) = 0;
      if (*(&v86 + 1))
      {
        (*(*v87 + 24))(v87, *(&v86 + 1), 0, 8);
      }
    }
  }

  LODWORD(v85) = 9;
  *(&v85 + 1) = v12;
  std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::__emplace_unique_key_args<int,std::pair<int const,unsigned long>>(a3 + 16, &v85);
  if (Head == -1)
  {
    goto LABEL_48;
  }

  v21 = Head;
  LODWORD(v85) = 14;
  *(&v85 + 1) = Head;
  std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::__emplace_unique_key_args<int,std::pair<int const,unsigned long>>(a3 + 16, &v85);
  v22 = FIK::Hierarchy::parentIndexOf(a2, v21);
  if (v23)
  {
    if (v79.i64[0])
    {
      LODWORD(v85) = 2;
      FIK::IKArray<FIK::Task *>::IKArray(&v85 + 1, v79.i64);
      std::__tree<std::__value_type<int,FIK::IKArray<unsigned long>>,std::__map_value_compare<int,std::__value_type<int,FIK::IKArray<unsigned long>>,std::less<int>,true>,std::allocator<std::__value_type<int,FIK::IKArray<unsigned long>>>>::__emplace_unique_key_args<int,std::pair<int const,FIK::IKArray<unsigned long>>>(v16, &v85);
      *(&v85 + 1) = 0;
      if (*(&v86 + 1))
      {
        (*(*v87 + 24))(v87, *(&v86 + 1), 0, 8);
      }
    }

    FIK::Hierarchy::childIndicesOf(a2, v21, &v76);
    v24 = FIK::Hierarchy::nameOf(a2, v21);
    v25 = *(v24 + 8);
    if (v25)
    {
      v26 = *v24;
    }

    else
    {
      v26 = &unk_245A04BAE;
    }

    FIK::Hierarchy::childrenOf(a2, v26, v25, &v82);
    v27 = v83;
    if (v82.i64[0])
    {
      v28 = &v83[24 * v82.i64[0]];
      v29 = 24 * v82.i64[0];
      while (1)
      {
        v31 = *v27;
        v30 = *(v27 + 1);
        v32 = v30 ? *v27 : &unk_245A04BAE;
        v85 = xmmword_278E8A0D0;
        v86 = *&off_278E8A0E0;
        if (FIK::RigBuilderUtils::stringContains(v32, v30, &v85, 2))
        {
          break;
        }

        v27 += 24;
        v29 -= 24;
        if (!v29)
        {
          v27 = v28;
          break;
        }
      }

      v33 = v27;
      v27 = v83;
      v34 = v82.i64[0];
    }

    else
    {
      v34 = 0;
      v33 = v83;
    }

    if (v33 != &v27[24 * v34])
    {
      v35 = v76.i64[0];
      v36 = (v77 - 0x5555555555555555 * (v33 - v27));
      v37 = v36 + 1;
      v38 = (v77 + 8 * v76.i64[0]);
      if (v36 + 1 != v38)
      {
        do
        {
          v39 = *v37++;
          *v36++ = v39;
        }

        while (v37 != v38);
        v35 = v76.i64[0];
      }

      v76.i64[0] = v35 - 1;
    }

    FIK::IKArray<IKString>::~IKArray(&v82);
    if (v76.i64[0])
    {
      LODWORD(v85) = 3;
      FIK::IKArray<FIK::Task *>::IKArray(&v85 + 1, &v76);
      std::__tree<std::__value_type<int,FIK::IKArray<unsigned long>>,std::__map_value_compare<int,std::__value_type<int,FIK::IKArray<unsigned long>>,std::less<int>,true>,std::allocator<std::__value_type<int,FIK::IKArray<unsigned long>>>>::__emplace_unique_key_args<int,std::pair<int const,FIK::IKArray<unsigned long>>>(v16, &v85);
      *(&v85 + 1) = 0;
      if (*(&v86 + 1))
      {
        (*(*v87 + 24))(v87, *(&v86 + 1), 0, 8);
      }

      if (v76.i64[0])
      {
        FIK::IKArray<FIK::Task *>::IKArray(v73, &v76);
        v73[0] = 0;
        if (v74)
        {
          (*(*v75 + 24))(v75, v74, 0, 8);
        }

        LODWORD(v85) = 4;
        FIK::IKArray<FIK::Task *>::IKArray(&v85 + 1, &v82);
        std::__tree<std::__value_type<int,FIK::IKArray<unsigned long>>,std::__map_value_compare<int,std::__value_type<int,FIK::IKArray<unsigned long>>,std::less<int>,true>,std::allocator<std::__value_type<int,FIK::IKArray<unsigned long>>>>::__emplace_unique_key_args<int,std::pair<int const,FIK::IKArray<unsigned long>>>(v16, &v85);
        *(&v85 + 1) = 0;
        if (*(&v86 + 1))
        {
          (*(*v87 + 24))(v87, *(&v86 + 1), 0, 8);
        }

        v82.i64[0] = 0;
        if (v83)
        {
          (*(*v84 + 24))(v84, v83, 0, 8);
        }
      }
    }

    v76.i64[0] = 0;
    if (v77)
    {
      (*(*v78 + 24))(v78, v77, 0, 8);
    }

    v79.i64[0] = 0;
    if (v80)
    {
      (*(*v81 + 24))(v81, v80, 0, 8);
    }

LABEL_48:
    FIK::PoseConverter::PoseConverter(&v85, a2);
    if (*(a3 + 4) != 1)
    {
LABEL_108:
      FIK::PoseConverter::~PoseConverter(&v85);
      v66[0] = 0;
      if (v67)
      {
        (*(*v68 + 3))(v68, v67, 0, 8);
      }

LABEL_110:
      v61 = *MEMORY[0x277D85DE8];
      return;
    }

    v40 = *(a3 + 12);
    FIK::IKRigUtils::getUnitVecForAxis(*(a3 + 8), &v82);
    FIK::IKRigUtils::getUnitVecForAxis(v40, &v79);
    v41 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v79, v79), v79, 0xCuLL), vnegq_f32(v82)), v79, vextq_s8(vuzp1q_s32(v82, v82), v82, 0xCuLL));
    v42 = vextq_s8(vuzp1q_s32(v41, v41), v41, 0xCuLL);
    v42.i32[3] = 0;
    v76 = v42;
    v43 = FIK::IKRigUtils::highestMagnitudeAxis(&v76);
    if ((v43 & 0x100000000) != 0)
    {
      v44 = v43;
      {
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      }

      {
LABEL_54:
LABEL_55:
      }
    }

    if (*(a3 + 4) == 1)
    {
      v45 = *v17;
      if (!*v17)
      {
        goto LABEL_64;
      }

      v46 = v17;
      do
      {
        if (v45[8] >= 8)
        {
          v46 = v45;
        }

        v45 = *&v45[2 * (v45[8] < 8)];
      }

      while (v45);
      if (v46 == v17 || v46[8] >= 9)
      {
LABEL_64:
        v46 = v17;
      }

      v65 = *FIK::PoseConverter::GetGlobalTransform(&v85, *(v46 + 5));
      v47 = *v17;
      if (!*v17)
      {
        goto LABEL_72;
      }

      v48 = v17;
      do
      {
        v49 = v47[8];
        if ((v49 & 0x80000000) == 0)
        {
          v48 = v47;
        }

        v47 = *(v47 + ((v49 >> 28) & 8));
      }

      while (v47);
      if (v48 == v17 || v48[8] >= 1)
      {
LABEL_72:
        v48 = v17;
      }

      GlobalTransform = FIK::PoseConverter::GetGlobalTransform(&v85, *(v48 + 5));
      v51.i64[0] = 0x3F0000003F000000;
      v51.i64[1] = 0x3F0000003F000000;
      v82 = vaddq_f32(*GlobalTransform, vmulq_f32(vsubq_f32(v65, *GlobalTransform), v51));
      v52 = *(a3 + 12);
      v53 = v82.f32[FIK::IKRigUtils::getIndexForAxis(v52)];
      v54 = *(a3 + 24);
      if (!v54)
      {
        goto LABEL_80;
      }

      v55 = v17;
      do
      {
        if (v54[8] >= 21)
        {
          v55 = v54;
        }

        v54 = *&v54[2 * (v54[8] < 21)];
      }

      while (v54);
      if (v55 == v17 || v55[8] >= 22)
      {
LABEL_80:
        v55 = v17;
      }

      v79 = *FIK::PoseConverter::GetGlobalTransform(&v85, *(v55 + 5));
      if ((*&v79.i32[FIK::IKRigUtils::getIndexForAxis(v52)] * 0.9) > v53)
      {
        v56 = 1;
      }

      else
      {
        v56 = 2;
      }

      *a3 = v56;
    }

    v57 = *v15;
    if (*v15)
    {
      v58 = v15;
      v59 = *v15;
      do
      {
        if (*(v59 + 32) >= 8)
        {
          v58 = v59;
        }

        v59 = *(v59 + 8 * (*(v59 + 32) < 8));
      }

      while (v59);
      if (v58 != v15 && *(v58 + 8) <= 8)
      {
        FIK::IKArray<FIK::Task *>::IKArray(&v79, v58 + 5);
        FIK::IKArray<unsigned int>::operator=((v58 + 5), &v82);
        v82.i64[0] = 0;
        if (v83)
        {
          (*(*v84 + 24))(v84, v83, 0, 8);
        }

        v79.i64[0] = 0;
        if (v80)
        {
          (*(*v81 + 24))(v81, v80, 0, 8);
        }

        v57 = *v15;
      }

      if (v57)
      {
        v60 = v15;
        do
        {
          if (*(v57 + 32) >= 14)
          {
            v60 = v57;
          }

          v57 = *(v57 + 8 * (*(v57 + 32) < 14));
        }

        while (v57);
        if (v60 != v15 && *(v60 + 8) <= 14)
        {
          FIK::IKArray<FIK::Task *>::IKArray(&v76, v60 + 5);
          FIK::IKArray<unsigned int>::operator=((v60 + 5), &v82);
          v82.i64[0] = 0;
          if (v83)
          {
            (*(*v84 + 24))(v84, v83, 0, 8);
          }

          v76.i64[0] = 0;
          if (v77)
          {
            (*(*v78 + 24))(v78, v77, 0, 8);
          }
        }
      }
    }

    goto LABEL_108;
  }

LABEL_111:
  v62 = std::__throw_bad_optional_access[abi:nn200100]();
}

void FIK::anonymous namespace::findLimbBranch(FIK::_anonymous_namespace_ *this@<X0>, const FIK::Hierarchy *a2@<X1>, uint64_t a3@<X8>)
{
  if ((v7 & 1) == 0)
  {
    goto LABEL_72;
  }

  v8 = FirstJointWithMinChildCount;
  v53 = 0;
  v54 = 0;
  v9 = &v53;
  v52 = &v53;
  FIK::Hierarchy::childIndicesOf(this, FirstJointWithMinChildCount, &v62);
  v11 = v63;
  if (v62)
  {
    v12 = &v63[v62];
    do
    {
      v13 = *v11;
      v14 = FIK::Hierarchy::descendentsCountOf(this, *v11);
      v15 = v14;
      v16 = v53;
      if (!v53)
      {
        goto LABEL_12;
      }

      v17 = &v53;
      do
      {
        v18 = v16[4];
        v19 = v18 >= v14;
        v20 = v18 < v14;
        if (v19)
        {
          v17 = v16;
        }

        v16 = v16[v20];
      }

      while (v16);
      if (v17 != &v53 && v14 >= v17[4])
      {
        v24 = v17[5];
        v23 = v17 + 5;
        FIK::IKArray<FIK::Segment *>::reserve(v23, v24 + 1);
        *(v23[2] + 8 * (*v23)++) = v13;
      }

      else
      {
LABEL_12:
        v21 = FIK::defaultAllocator(v14);
        v59 = xmmword_245A03940;
        v22 = (*(*v21 + 2))(v21, 64, 8);
        v60 = v22;
        v61 = v21;
        *(v22 + 40) = 0u;
        *(v22 + 56) = 0;
        *(v22 + 8) = 0u;
        *(v22 + 24) = 0u;
        *v22 = v13;
        v55 = v15;
        FIK::IKArray<FIK::Task *>::IKArray(v56, &v59);
        std::__tree<std::__value_type<unsigned long,FIK::IKArray<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,FIK::IKArray<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,FIK::IKArray<unsigned long>>>>::__emplace_unique_key_args<unsigned long,std::pair<unsigned long,FIK::IKArray<unsigned long>>>(&v52, &v55);
        v56[0] = 0;
        if (v57)
        {
          (*(*v58 + 24))(v58, v57, 0, 8);
        }

        *&v59 = 0;
        if (v60)
        {
          (*(*v61 + 3))(v61, v60, 0, 8);
        }
      }

      ++v11;
    }

    while (v11 != v12);
    v11 = v63;
  }

  v62 = 0;
  if (v11)
  {
    (*(*v64 + 24))(v64, v11, 0, 8);
  }

  v25 = v52;
  v26 = v52;
  if (v52 != &v53)
  {
    v27 = v52;
    while (v27[5] != 2)
    {
      v28 = v27[1];
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
          v29 = v27[2];
          v30 = *v29 == v27;
          v27 = v29;
        }

        while (!v30);
      }

      v27 = v29;
      if (v29 == &v53)
      {
        v26 = v52;
        goto LABEL_37;
      }
    }

    v26 = v52;
    if (v27 != &v53)
    {
      v50 = *v27[7];
      if (v54 < 2)
      {
        FIK::Hierarchy::siblingIndicesOf(this, a2, &v55);
        v48 = FIK::Hierarchy::parentIndexOf(this, v8);
        if (v49)
        {
          v8 = v48;
        }

        v36 = *v56[1];
        v55 = 0;
        (*(*v57 + 24))(v57);
        v31 = v53;
      }

      else
      {
        std::__tree<std::__value_type<unsigned long,FIK::IKArray<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,FIK::IKArray<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,FIK::IKArray<unsigned long>>>>::erase(&v52, v27);
        v31 = v53;
        if (v53)
        {
          v32 = v53;
          do
          {
            v33 = v32;
            v32 = v32[1];
          }

          while (v32);
        }

        else
        {
          do
          {
            v33 = v9[2];
            v30 = *v33 == v9;
            v9 = v33;
          }

          while (v30);
        }

        v36 = *v33[7];
      }

      *a3 = v8;
      *(a3 + 8) = v50;
      *(a3 + 24) = v36;
      goto LABEL_84;
    }

LABEL_37:
    while (v26[5] != 3)
    {
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
          v30 = *v35 == v26;
          v26 = v35;
        }

        while (!v30);
      }

      v26 = v35;
      if (v35 == &v53)
      {
        goto LABEL_49;
      }
    }
  }

  if (&v53 == v26 || v54 < 2)
  {
LABEL_49:
    if (v52 != &v53)
    {
      v37 = v52;
      while (v37[5] <= 1)
      {
        v38 = v37[1];
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
            v39 = v37[2];
            v30 = *v39 == v37;
            v37 = v39;
          }

          while (!v30);
        }

        v37 = v39;
        if (v39 == &v53)
        {
          v37 = &v53;
          break;
        }
      }

      if (v37 == &v53 && v52 != &v53)
      {
        while (1)
        {
          v40 = v25[5];
          if (v40)
          {
            break;
          }

LABEL_65:
          v43 = v25[1];
          if (v43)
          {
            do
            {
              v44 = v43;
              v43 = *v43;
            }

            while (v43);
          }

          else
          {
            do
            {
              v44 = v25[2];
              v30 = *v44 == v25;
              v25 = v44;
            }

            while (!v30);
          }

          v25 = v44;
          if (v44 == &v53)
          {
            goto LABEL_71;
          }
        }

        v41 = v25[7];
        v42 = 8 * v40;
        while (1)
        {
          if (*(a3 + 32))
          {
            break;
          }

          ++v41;
          v42 -= 8;
          if (!v42)
          {
            goto LABEL_65;
          }
        }

        v31 = v53;
        goto LABEL_85;
      }
    }

LABEL_71:
    std::__tree<std::__value_type<unsigned long,FIK::IKArray<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,FIK::IKArray<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,FIK::IKArray<unsigned long>>>>::destroy(&v52, v53);
LABEL_72:
    *a3 = 0;
    *(a3 + 32) = 0;
    return;
  }

  v51 = *(v26[7] + 8);
  std::__tree<std::__value_type<unsigned long,FIK::IKArray<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,FIK::IKArray<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,FIK::IKArray<unsigned long>>>>::erase(&v52, v26);
  v31 = v53;
  if (v53)
  {
    v45 = v53;
    do
    {
      v46 = v45;
      v45 = v45[1];
    }

    while (v45);
  }

  else
  {
    do
    {
      v46 = v9[2];
      v30 = *v46 == v9;
      v9 = v46;
    }

    while (v30);
  }

  v47 = *v46[7];
  *a3 = v8;
  *(a3 + 8) = v51;
  *(a3 + 24) = v47;
LABEL_84:
  *(a3 + 32) = 1;
LABEL_85:
  std::__tree<std::__value_type<unsigned long,FIK::IKArray<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,FIK::IKArray<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,FIK::IKArray<unsigned long>>>>::destroy(&v52, v31);
}

uint64_t FIK::anonymous namespace::characteriseLegChain(FIK::Hierarchy *a1, const FIK::Hierarchy *a2, int a3, uint64_t a4)
{
  if (a3)
  {
    v7 = 30;
  }

  else
  {
    v7 = 39;
  }

  LODWORD(v46) = v7;
  v47 = a2;
  std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::__emplace_unique_key_args<int,std::pair<int const,unsigned long>>(a4 + 16, &v46);
  FIK::Hierarchy::chainIndicesFrom(a1, a2, &v46);
  v8 = v46;
  if (!v46)
  {
LABEL_31:
    v18 = FIK::Hierarchy::descendentsCountOf(a1, a2);
    v19 = 0;
    v20 = -1;
    v21 = -1;
    v22 = a2;
    while (1)
    {
      if (v19 > v18)
      {
        return FIK::IKArray<FIK::IKArray<unsigned long>>::~IKArray(&v46);
      }

      FIK::Hierarchy::childIndicesOf(a1, v22, v51);
      v23 = v51[0];
      if (v51[0])
      {
        break;
      }

      if (v19 <= 4)
      {
        v4 = v20;
      }

      else
      {
        v4 = v21;
      }

      if (!v52)
      {
        goto LABEL_58;
      }

LABEL_48:
      (*(*v53 + 24))(v53);
      if (!v23)
      {
        goto LABEL_58;
      }
    }

    v24 = v52;
    if (v19 == 3)
    {
      if (FIK::Hierarchy::childCountOf(a1, *v52))
      {
        v24 = v52;
        v21 = *v52;
      }

      else
      {
        v24 = v52;
        if (v51[0] >= 2uLL)
        {
          v25 = FIK::Hierarchy::childCountOf(a1, v52[1]);
          v24 = v52;
          if (v25)
          {
            v21 = v52[1];
            *v52 = v21;
          }
        }
      }

      goto LABEL_47;
    }

    if (v19 == 1)
    {
      if (FIK::Hierarchy::childCountOf(a1, *v52))
      {
        v24 = v52;
      }

      else
      {
        v24 = v52;
        if (v23 != 1)
        {
          v26 = FIK::Hierarchy::childCountOf(a1, v52[1]);
          v24 = v52;
          if (v26)
          {
            v20 = v52[1];
            *v52 = v20;
          }

          goto LABEL_47;
        }
      }

      v20 = *v24;
    }

LABEL_47:
    v22 = *v24;
    ++v19;
    v51[0] = 0;
    goto LABEL_48;
  }

  v9 = 0;
  v10 = 16;
  while (1)
  {
    v4 = &v48[4 * v9];
    v11 = *v4;
    if (*v4)
    {
      v12 = *(v4 + 2);
      v13 = 8 * v11;
      do
      {
        v14 = FIK::Hierarchy::localSpaceRestPose(a1, *v12);
        v15 = vmulq_f32(*v14, *v14);
        if ((v15.f32[2] + vaddv_f32(*v15.f32)) < 0.001)
        {
          goto LABEL_30;
        }

        ++v12;
        v13 -= 8;
      }

      while (v13);
    }

    if (v8 <= 2)
    {
      if (v8 == 1)
      {
        v17 = v11 - 3;
        if (v11 - 3) < 7 && ((0x4Fu >> v17))
        {
          v10 = qword_245A03A18[v17];
          goto LABEL_57;
        }

        goto LABEL_30;
      }

      if (v8 == 2)
      {
        if ((v11 & 0xFFFFFFFFFFFFFFFELL) == 4)
        {
          goto LABEL_57;
        }

        goto LABEL_30;
      }

      goto LABEL_23;
    }

    if (v8 == 3)
    {
      if ((v11 - 3) < 2)
      {
        goto LABEL_57;
      }

      goto LABEL_30;
    }

    if (v8 == 5)
    {
      break;
    }

LABEL_23:
    if (v8 == 7)
    {
LABEL_24:
      if (v11 == 5)
      {
        goto LABEL_57;
      }
    }

LABEL_30:
    if (++v9 >= v46)
    {
      goto LABEL_31;
    }
  }

  if (v11 != 7 && v11 != 11)
  {
    if (v9 >= 2)
    {
      goto LABEL_24;
    }

    goto LABEL_30;
  }

  v10 = 32;
LABEL_57:
  v4 = *(*(v4 + 2) + v10);
LABEL_58:
  result = FIK::IKArray<FIK::IKArray<unsigned long>>::~IKArray(&v46);
  if (v4 != -1)
  {
    if (a3)
    {
      v28 = 34;
    }

    else
    {
      v28 = 43;
    }

    LODWORD(v46) = v28;
    v47 = v4;
    std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::__emplace_unique_key_args<int,std::pair<int const,unsigned long>>(a4 + 16, &v46);
    if (v46 < 3)
    {
      v46 = 0;
      if (v48)
      {
        v29 = -1;
        goto LABEL_66;
      }
    }

    else
    {
      v29 = *(v48 + ((4 * v46) & 0xFFFFFFFFFFFFFFF8));
      v46 = 0;
LABEL_66:
      (*(*v49 + 24))(v49);
      if (v29 != -1)
      {
        if (a3)
        {
          v30 = 32;
        }

        else
        {
          v30 = 41;
        }

        LODWORD(v46) = v30;
        v47 = v29;
        std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::__emplace_unique_key_args<int,std::pair<int const,unsigned long>>(a4 + 16, &v46);
      }
    }

    FIK::Hierarchy::childIndicesOf(a1, v4, &v46);
    if (v46)
    {
      v31 = *v48;
      v46 = 0;
      goto LABEL_75;
    }

    if (!v48)
    {
      goto LABEL_81;
    }

    v31 = -1;
LABEL_75:
    (*(*v49 + 24))(v49, v48, 0, 8);
    if (v31 == -1)
    {
LABEL_81:
      v31 = v4;
    }

    else
    {
      if (a3)
      {
        v32 = 35;
      }

      else
      {
        v32 = 44;
      }

      LODWORD(v46) = v32;
      v47 = v31;
      std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::__emplace_unique_key_args<int,std::pair<int const,unsigned long>>(a4 + 16, &v46);
      FIK::Hierarchy::childIndicesOf(a1, v31, &v46);
      if (v46)
      {
        v33 = *v48;
        v46 = 0;
LABEL_84:
        (*(*v49 + 24))(v49, v48, 0, 8);
        if (v33 != -1)
        {
          if (a3)
          {
            v34 = 36;
          }

          else
          {
            v34 = 45;
          }

          LODWORD(v46) = v34;
          v47 = v33;
          std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::__emplace_unique_key_args<int,std::pair<int const,unsigned long>>(a4 + 16, &v46);
        }
      }

      else if (v48)
      {
        v33 = -1;
        goto LABEL_84;
      }
    }

    if (v51[0])
    {
      v35 = a3 ? 19 : 22;
      LODWORD(v46) = v35;
      FIK::IKArray<FIK::Task *>::IKArray(&v47, v51);
      std::__tree<std::__value_type<int,FIK::IKArray<unsigned long>>,std::__map_value_compare<int,std::__value_type<int,FIK::IKArray<unsigned long>>,std::less<int>,true>,std::allocator<std::__value_type<int,FIK::IKArray<unsigned long>>>>::__emplace_unique_key_args<int,std::pair<int const,FIK::IKArray<unsigned long>>>(a4 + 40, &v46);
      v47 = 0;
      if (v49)
      {
        (*(*v50 + 24))(v50, v49, 0, 8);
      }
    }

    if (v46 == 5)
    {
      v37 = v48;
      v38 = v48[1];
      v39 = FIK::defaultAllocator(v36);
      result = FIK::IKArray<unsigned long>::IKArray<unsigned long const&,void>(v43, v38, v37 + 3, v39);
    }

    else
    {
      result = FIK::defaultAllocator(v36);
      v43[0] = 0;
      v43[1] = 0;
      v44 = 0;
      v45 = result;
    }

    v46 = 0;
    if (v48)
    {
      result = (*(*v49 + 24))(v49, v48, 0, 8);
    }

    if (v43[0])
    {
      v40 = a3 ? 18 : 21;
      LODWORD(v46) = v40;
      FIK::IKArray<FIK::Task *>::IKArray(&v47, v43);
      result = std::__tree<std::__value_type<int,FIK::IKArray<unsigned long>>,std::__map_value_compare<int,std::__value_type<int,FIK::IKArray<unsigned long>>,std::less<int>,true>,std::allocator<std::__value_type<int,FIK::IKArray<unsigned long>>>>::__emplace_unique_key_args<int,std::pair<int const,FIK::IKArray<unsigned long>>>(a4 + 40, &v46);
      v47 = 0;
      if (v49)
      {
        result = (*(*v50 + 24))(v50, v49, 0, 8);
      }
    }

    v43[0] = 0;
    if (v44)
    {
      result = (*(*v45 + 24))(v45, v44, 0, 8);
    }

    v51[0] = 0;
    if (v52)
    {
      return (*(*v53 + 24))(v53, v52, 0, 8);
    }
  }

  return result;
}

uint64_t FIK::anonymous namespace::characteriseArmChain(FIK::Hierarchy *a1, const FIK::Hierarchy *a2, int a3, uint64_t a4)
{
  if (a3)
  {
    v8 = 16;
  }

  else
  {
    v8 = 23;
  }

  LODWORD(v51) = v8;
  v52 = a2;
  std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::__emplace_unique_key_args<int,std::pair<int const,unsigned long>>(a4 + 16, &v51);
  FIK::Hierarchy::chainIndicesFrom(a1, a2, &v51);
  v9 = FIK::IKArray<FIK::IKArray<unsigned long>>::IKArray(v63, &v51);
  LikelyParentOfFingers = FIK::CharacterisationHelper::findLikelyParentOfFingers(v9, a1, 5);
  FIK::IKArray<FIK::IKArray<unsigned long>>::~IKArray(v63);
  if (LikelyParentOfFingers != -1 || (FIK::IKArray<FIK::IKArray<unsigned long>>::IKArray(&v59, &v51), LikelyParentOfFingers = FIK::CharacterisationHelper::findLikelyParentOfFingers(&v59, a1, 3), FIK::IKArray<FIK::IKArray<unsigned long>>::~IKArray(&v59), LikelyParentOfFingers != -1))
  {
    FIK::IKArray<FIK::IKArray<unsigned long>>::~IKArray(&v51);
    goto LABEL_7;
  }

  if (!v51)
  {
LABEL_49:
    v33 = FIK::Hierarchy::descendentsCountOf(a1, a2);
    v34 = 0;
    v35 = a2;
    while (1)
    {
      if (v34 > v33)
      {
        return FIK::IKArray<FIK::IKArray<unsigned long>>::~IKArray(&v51);
      }

      FIK::Hierarchy::childIndicesOf(a1, v35, v56);
      v36 = v35;
      if (v56[0])
      {
        v37 = *v57;
        if (v34 < 3 || v56[0] < 3uLL)
        {
          ++v34;
          v56[0] = 0;
          v39 = 1;
          v35 = v37;
          goto LABEL_58;
        }

        v36 = FIK::Hierarchy::parentIndexOf(a1, *v57);
        if ((v38 & 1) == 0)
        {
          v44 = std::__throw_bad_optional_access[abi:nn200100]();
        }
      }

      v56[0] = 0;
      if (!v57)
      {
        LikelyParentOfFingers = v36;
        goto LABEL_94;
      }

      v39 = 0;
      LikelyParentOfFingers = v36;
LABEL_58:
      (*(*v58 + 24))(v58);
      if ((v39 & 1) == 0)
      {
        goto LABEL_94;
      }
    }
  }

  LikelyParentOfFingers = v53;
  v27 = (v53 + 32 * v51);
  while (1)
  {
    v28 = *LikelyParentOfFingers;
    if (*LikelyParentOfFingers)
    {
      v29 = *(LikelyParentOfFingers + 2);
      v30 = 8 * v28;
      do
      {
        v31 = FIK::Hierarchy::localSpaceRestPose(a1, *v29);
        v32 = vmulq_f32(*v31, *v31);
        if ((v32.f32[2] + vaddv_f32(*v32.f32)) < 0.001)
        {
          goto LABEL_48;
        }

        ++v29;
        v30 -= 8;
      }

      while (v30);
      if (v28 == 4)
      {
        break;
      }
    }

LABEL_48:
    LikelyParentOfFingers = (LikelyParentOfFingers + 32);
    if (LikelyParentOfFingers == v27)
    {
      goto LABEL_49;
    }
  }

  LikelyParentOfFingers = *(*(LikelyParentOfFingers + 2) + 8 * *LikelyParentOfFingers - 8);
LABEL_94:
  result = FIK::IKArray<FIK::IKArray<unsigned long>>::~IKArray(&v51);
  if (LikelyParentOfFingers != -1)
  {
LABEL_7:
    if (a3)
    {
      v11 = 21;
    }

    else
    {
      v11 = 28;
    }

    LODWORD(v51) = v11;
    v52 = LikelyParentOfFingers;
    std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::__emplace_unique_key_args<int,std::pair<int const,unsigned long>>(a4 + 16, &v51);
    FIK::Hierarchy::childIndicesOf(a1, a2, &v51);
    if (v51)
    {
      v12 = *v53;
      v51 = 0;
    }

    else
    {
      if (!v53)
      {
        goto LABEL_19;
      }

      v12 = -1;
    }

    (*(*v54 + 24))(v54, v53, 0, 8);
    if (v12 != -1)
    {
      if (a3)
      {
        v13 = 17;
      }

      else
      {
        v13 = 24;
      }

      LODWORD(v51) = v13;
      v52 = v12;
      std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::__emplace_unique_key_args<int,std::pair<int const,unsigned long>>(a4 + 16, &v51);
    }

LABEL_19:
    if ((v51 - 3) > 3)
    {
      v51 = 0;
      if (!v53)
      {
LABEL_28:
        if (v63[0])
        {
          v16 = a3 ? 6 : 12;
          LODWORD(v51) = v16;
          FIK::IKArray<FIK::Task *>::IKArray(&v52, v63);
          std::__tree<std::__value_type<int,FIK::IKArray<unsigned long>>,std::__map_value_compare<int,std::__value_type<int,FIK::IKArray<unsigned long>>,std::less<int>,true>,std::allocator<std::__value_type<int,FIK::IKArray<unsigned long>>>>::__emplace_unique_key_args<int,std::pair<int const,FIK::IKArray<unsigned long>>>(a4 + 40, &v51);
          v52 = 0;
          if (v54)
          {
            (*(*v55 + 24))(v55, v54, 0, 8);
          }
        }

        if (v51 == 6)
        {
          v23 = v53;
          v24 = *(v53 + 2);
          v25 = FIK::defaultAllocator(v17);
          FIK::IKArray<unsigned long>::IKArray<unsigned long const&,void>(&v59, v24, v23 + 4, v25);
        }

        else if (v51 == 5)
        {
          v18 = *(v53 + 3);
          v19 = FIK::defaultAllocator(v17);
          v20 = v19;
          v59 = v18;
          v60 = (v18 + 7) & 0xFFFFFFFFFFFFFFF8;
          if (v60)
          {
            v21 = 8 * ((v18 + 7) & 0xFFFFFFFFFFFFFFF8);
            v22 = (*(*v19 + 2))(v19, v21, 8);
            v61 = v22;
            v62 = v20;
            if (v21)
            {
              bzero(v22, v21);
            }
          }

          else
          {
            v61 = 0;
            v62 = v19;
          }
        }

        else
        {
          v26 = FIK::defaultAllocator(v17);
          v59 = 0;
          v60 = 0;
          v61 = 0;
          v62 = v26;
        }

        v51 = 0;
        if (v53)
        {
          (*(*v54 + 24))(v54, v53, 0, 8);
        }

        if (v59)
        {
          v40 = a3 ? 7 : 13;
          LODWORD(v51) = v40;
          FIK::IKArray<FIK::Task *>::IKArray(&v52, &v59);
          std::__tree<std::__value_type<int,FIK::IKArray<unsigned long>>,std::__map_value_compare<int,std::__value_type<int,FIK::IKArray<unsigned long>>,std::less<int>,true>,std::allocator<std::__value_type<int,FIK::IKArray<unsigned long>>>>::__emplace_unique_key_args<int,std::pair<int const,FIK::IKArray<unsigned long>>>(a4 + 40, &v51);
          v52 = 0;
          if (v54)
          {
            (*(*v55 + 24))(v55, v54, 0, 8);
          }
        }

        result = FIK::Hierarchy::childIndicesOf(a1, LikelyParentOfFingers, v56);
        if (v56[0])
        {
          if (a3)
          {
            v42 = 8;
          }

          else
          {
            v42 = 14;
          }

          LODWORD(v51) = v42;
          FIK::IKArray<FIK::Task *>::IKArray(&v52, v56);
          std::__tree<std::__value_type<int,FIK::IKArray<unsigned long>>,std::__map_value_compare<int,std::__value_type<int,FIK::IKArray<unsigned long>>,std::less<int>,true>,std::allocator<std::__value_type<int,FIK::IKArray<unsigned long>>>>::__emplace_unique_key_args<int,std::pair<int const,FIK::IKArray<unsigned long>>>(a4 + 40, &v51);
          v52 = 0;
          if (v54)
          {
            (*(*v55 + 24))(v55, v54, 0, 8);
          }

          if (a3)
          {
            v43 = 9;
          }

          else
          {
            v43 = 15;
          }

          FIK::IKArray<FIK::Task *>::IKArray(v45, v56);
          v45[0] = 0;
          if (v46)
          {
            (*(*v47 + 24))(v47, v46, 0, 8);
          }

          LODWORD(v51) = v43;
          FIK::IKArray<FIK::Task *>::IKArray(&v52, v48);
          result = std::__tree<std::__value_type<int,FIK::IKArray<unsigned long>>,std::__map_value_compare<int,std::__value_type<int,FIK::IKArray<unsigned long>>,std::less<int>,true>,std::allocator<std::__value_type<int,FIK::IKArray<unsigned long>>>>::__emplace_unique_key_args<int,std::pair<int const,FIK::IKArray<unsigned long>>>(a4 + 40, &v51);
          v52 = 0;
          if (v54)
          {
            result = (*(*v55 + 24))(v55, v54, 0, 8);
          }

          v48[0] = 0;
          if (v49)
          {
            result = (*(*v50 + 24))(v50, v49, 0, 8);
          }
        }

        v56[0] = 0;
        if (v57)
        {
          result = (*(*v58 + 24))(v58, v57, 0, 8);
        }

        v59 = 0;
        if (v61)
        {
          result = (*(*v62 + 3))(v62, v61, 0, 8);
        }

        v63[0] = 0;
        if (v64)
        {
          return (*(*v65 + 24))(v65, v64, 0, 8);
        }

        return result;
      }

      v14 = -1;
    }

    else
    {
      v14 = *(v53 + ((4 * v51) & 0xFFFFFFFFFFFFFFF8));
      v51 = 0;
    }

    (*(*v54 + 24))(v54);
    if (v14 != -1)
    {
      if (a3)
      {
        v15 = 19;
      }

      else
      {
        v15 = 26;
      }

      LODWORD(v51) = v15;
      v52 = v14;
      std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::__emplace_unique_key_args<int,std::pair<int const,unsigned long>>(a4 + 16, &v51);
    }

    goto LABEL_28;
  }

  return result;
}

void FIK::anonymous namespace::getAndSetForwardAndUpAxis(FIK::CharacterisationHelper *a1, FIK::PoseConverter *a2, uint64_t a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v36.i64[1] = 0;
  v37 = 0;
  v36.i64[0] = &v36.i64[1];
  v6 = (a3 + 24);
  std::map<int,unsigned long>::insert[abi:nn200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<int,unsigned long>,std::__tree_node<std::__value_type<int,unsigned long>,void *> *,long>>>(&v36, *(a3 + 16), (a3 + 24));
  if (!v36.i64[1])
  {
    goto LABEL_8;
  }

  v7 = &v36.u32[2];
  v8 = v36.i64[1];
  do
  {
    v9 = *(v8 + 32);
    if ((v9 & 0x80000000) == 0)
    {
      v7 = v8;
    }

    v8 = *(v8 + ((v9 >> 28) & 8));
  }

  while (v8);
  if (v7 == &v36.u32[2] || v7[2].i32[0] >= 1)
  {
LABEL_8:
    v7 = &v36.u32[2];
  }

  if (!v36.i64[1])
  {
    goto LABEL_41;
  }

  v10 = &v36.u32[2];
  v11 = v36.i64[1];
  do
  {
    if (*(v11 + 32) >= 8)
    {
      v10 = v11;
    }

    v11 = *(v11 + 8 * (*(v11 + 32) < 8));
  }

  while (v11);
  if (v10 == &v36.u32[2] || v7 == &v36.u32[2] || v10[2].i32[0] >= 9)
  {
LABEL_41:
    std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::destroy(&v36, v36.i64[1]);
    goto LABEL_42;
  }

  v33 = *FIK::PoseConverter::GetGlobalTransform(a2, v7[2].u64[1]);
  v38 = vsubq_f32(*FIK::PoseConverter::GetGlobalTransform(a2, v10[2].u64[1]), v33);
  v12 = FIK::IKRigUtils::highestMagnitudeAxis(&v38);
  std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::destroy(&v36, v36.i64[1]);
  if ((v12 & 0x100000000) != 0)
  {
    v13 = *v6;
    if (!*v6)
    {
      goto LABEL_25;
    }

    v14 = v6;
    v15 = *v6;
    do
    {
      if (v15[8] >= 34)
      {
        v14 = v15;
      }

      v15 = *&v15[2 * (v15[8] < 34)];
    }

    while (v15);
    if (v14 == v6 || v14[8] >= 35)
    {
LABEL_25:
      v14 = v6;
    }

    if (v13)
    {
      v16 = v6;
      do
      {
        if (v13[8] >= 43)
        {
          v16 = v13;
        }

        v13 = *&v13[2 * (v13[8] < 43)];
      }

      while (v13);
      if (v16 != v6)
      {
        v17 = v16[8] > 43 || v14 == v6;
        if (!v17)
        {
          v34 = *FIK::PoseConverter::GetGlobalTransform(a2, *(v14 + 5));
          v32 = vsubq_f32(*FIK::PoseConverter::GetGlobalTransform(a2, *(v16 + 5)), v34);
          v36 = v32;
          FurthestToe = FIK::CharacterisationHelper::findFurthestToe(a1, *(v14 + 5));
          if (FurthestToe == -1)
          {
            v26 = vmulq_f32(v32, v32);
            v26.f32[0] = sqrtf(v26.f32[2] + vaddv_f32(*v26.f32));
            v27 = 1.0 / v26.f32[0];
            v17 = v26.f32[0] == 0.0;
            v28 = 0.0;
            if (!v17)
            {
              v28 = v27;
            }

            v35 = vmulq_n_f32(v32, v28);
            FIK::IKRigUtils::getUnitVecForAxis(v12, &v38);
            v29 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v35, v35), v35, 0xCuLL), vnegq_f32(v38)), v35, vextq_s8(vuzp1q_s32(v38, v38), v38, 0xCuLL));
            v30 = vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL);
            v30.i32[3] = 0;
            v39 = v30;
            v24 = &v39;
          }

          else
          {
            v19 = FurthestToe;
            v20 = FIK::IKRigUtils::highestMagnitudeAxis(&v36);
            if ((v20 & 0x100000000) == 0)
            {
              goto LABEL_42;
            }

            v21 = v20;
            GlobalTransform = FIK::PoseConverter::GetGlobalTransform(a2, v19);
            v23 = 0;
            v38 = vsubq_f32(*GlobalTransform, v34);
            v39.i64[0] = __PAIR64__(v21, v12);
            do
            {
              v38.i32[FIK::IKRigUtils::getIndexForAxis(v39.u32[v23++])] = 0;
            }

            while (v23 != 2);
            v24 = &v38;
          }

          v31 = FIK::IKRigUtils::highestMagnitudeAxis(v24);
          if ((v31 & 0x100000000) != 0)
          {
            *(a3 + 8) = v31;
            *(a3 + 12) = v12;
            *(a3 + 4) = 1;
          }
        }
      }
    }
  }

LABEL_42:
  v25 = *MEMORY[0x277D85DE8];
}

uint64_t FIK::CharacterisationHelper::findLikelyParentOfFingers(FIK *a1, FIK::Hierarchy *a2, int a3)
{
  v6 = FIK::defaultAllocator(a1);
  v36[0] = 0;
  v36[1] = 0;
  v37 = 0;
  v38 = v6;
  if (!*a1)
  {
    v33 = 0;
    v34 = 0;
    v32 = &v33;
LABEL_35:
    v29 = -1;
    goto LABEL_36;
  }

  v7 = *(a1 + 2);
  v8 = &v7[4 * *a1];
  v9 = a3;
  do
  {
    v10 = v7[2];
    v11 = *v7;
    v6 = FIK::defaultAllocator(v6);
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = v6;
    if (v11)
    {
      v12 = 8 * v11;
      do
      {
        v13 = *v10;
        v6 = FIK::Hierarchy::childCountOf(a2, *v10);
        if (v6 == v9)
        {
          v6 = FIK::IKArray<FIK::Segment *>::reserve(&v32, v32 + 1);
          v34[v32] = v13;
          v32 = (v32 + 1);
        }

        ++v10;
        v12 -= 8;
      }

      while (v12);
      v14 = v34;
      if (v32)
      {
        v15 = v36[0];
        v16 = 8 * v32;
        do
        {
          v17 = *v14++;
          v6 = FIK::IKArray<FIK::Segment *>::reserve(v36, v15 + 1);
          v37[v36[0]] = v17;
          v15 = ++v36[0];
          v16 -= 8;
        }

        while (v16);
        v14 = v34;
      }

      v32 = 0;
      if (v14)
      {
        v6 = (*(*v35 + 24))(v35, v14, 0, 8);
      }
    }

    v7 += 4;
  }

  while (v7 != v8);
  v18 = v37;
  v33 = 0;
  v34 = 0;
  v32 = &v33;
  if (!v36[0])
  {
    goto LABEL_35;
  }

  v19 = &v37[v36[0]];
  do
  {
    v20 = *v18;
    if (v36[0])
    {
      v21 = 0;
      v22 = v37;
      v23 = 8 * v36[0];
      do
      {
        v24 = *v22++;
        if (v24 == v20)
        {
          ++v21;
        }

        v23 -= 8;
      }

      while (v23);
    }

    else
    {
      v21 = 0;
    }

    v31[0] = v21;
    v31[1] = v20;
    std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::pair<unsigned long const,unsigned long>>(&v32, v31);
    ++v18;
  }

  while (v18 != v19);
  v25 = v32;
  if (v32 == &v33)
  {
    goto LABEL_35;
  }

  while (v25[4] != v9)
  {
    v26 = v25[1];
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
        v27 = v25[2];
        v28 = *v27 == v25;
        v25 = v27;
      }

      while (!v28);
    }

    v25 = v27;
    if (v27 == &v33)
    {
      goto LABEL_35;
    }
  }

  v29 = v25[5];
LABEL_36:
  std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::destroy(&v32, v33);
  v36[0] = 0;
  if (v37)
  {
    (*(*v38 + 24))(v38, v37, 0, 8);
  }

  return v29;
}

uint64_t FIK::CharacterisationHelper::findFurthestToe(FIK::CharacterisationHelper *this, const FIK::Hierarchy *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  FIK::Hierarchy::descendentIndicesOf(this, a2, &v15);
  v3 = v16 + 8 * v15;
  while (1)
  {
    v4 = v16;
    if (v3 <= v16)
    {
      break;
    }

    v6 = *(v3 - 8);
    v3 -= 8;
    v5 = v6;
    v7 = FIK::Hierarchy::nameOf(this, v6);
    v9 = *v7;
    v8 = v7[1];
    if (v8)
    {
      v10 = *v7;
    }

    else
    {
      v10 = &unk_245A04BAE;
    }

    ShortJointName = FIK::RigBuilderUtils::getShortJointName(v10, v8);
    v18[0] = xmmword_278E8A0B0;
    v18[1] = *&off_278E8A0C0;
    if (FIK::RigBuilderUtils::stringContains(ShortJointName, v12, v18, 2))
    {
      v4 = v16;
      goto LABEL_9;
    }
  }

  v5 = -1;
LABEL_9:
  v15 = 0;
  if (v4)
  {
    (*(*v17 + 24))(v17, v4, 0, 8);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v5;
}

void FIK::BipedCharacterisation::~BipedCharacterisation(FIK::BipedCharacterisation *this)
{
  FIK::Characterisation::~Characterisation(this);

  JUMPOUT(0x245D77F60);
}

unint64_t FIK::anonymous namespace::findFirstJointWithMinChildCount(FIK::_anonymous_namespace_ *this, const FIK::Hierarchy *a2)
{
  v2 = a2;
  FIK::Hierarchy::childIndicesOf(this, a2, &v10);
  if (v10 <= 1)
  {
    if (v10 == 1)
    {
      v6 = FirstJointWithMinChildCount & 0xFFFFFFFFFFFFFF00;
      if (v8)
      {
        LOBYTE(v2) = FirstJointWithMinChildCount;
      }

      else
      {
        LOBYTE(v2) = 0;
      }
    }

    else
    {
      LOBYTE(v2) = 0;
      v6 = 0;
    }
  }

  else
  {
    v6 = v2 & 0xFFFFFFFFFFFFFF00;
  }

  v10 = 0;
  if (v11)
  {
    (*(*v12 + 24))(v12, v11, 0, 8);
  }

  return v6 | v2;
}

void *FIK::IKArray<unsigned long>::IKArray<unsigned long const&,void>(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  *a1 = a2;
  FIK::IKArray<FIK::Task *>::MemoryBlock::MemoryBlock(a1 + 1, (a2 + 7) & 0xFFFFFFFFFFFFFFF8, a4);
  if (a2)
  {
    v7 = 0;
    v8 = *a3;
    v9 = vdupq_n_s64(a2 - 1);
    v10 = (a1[2] + 8);
    do
    {
      v11 = vmovn_s64(vcgeq_u64(v9, vorrq_s8(vdupq_n_s64(v7), xmmword_245A020B0)));
      if (v11.i8[0])
      {
        *(v10 - 1) = v8;
      }

      if (v11.i8[4])
      {
        *v10 = v8;
      }

      v7 += 2;
      v10 += 2;
    }

    while (((a2 + 1) & 0xFFFFFFFFFFFFFFFELL) != v7);
  }

  return a1;
}

void *std::__tree<std::__value_type<unsigned long,FIK::IKArray<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,FIK::IKArray<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,FIK::IKArray<unsigned long>>>>::__emplace_unique_key_args<unsigned long,std::pair<unsigned long,FIK::IKArray<unsigned long>>>(uint64_t a1, unint64_t *a2)
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

uint64_t *std::__tree<std::__value_type<unsigned long,FIK::IKArray<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,FIK::IKArray<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,FIK::IKArray<unsigned long>>>>::erase(uint64_t **a1, uint64_t a2)
{
  v3 = std::__tree<std::__value_type<unsigned long,FIK::IKArray<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,FIK::IKArray<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,FIK::IKArray<unsigned long>>>>::__remove_node_pointer(a1, a2);
  *(a2 + 40) = 0;
  v4 = *(a2 + 56);
  if (v4)
  {
    (*(**(a2 + 64) + 24))(*(a2 + 64), v4, 0, 8);
  }

  operator delete(a2);
  return v3;
}

uint64_t *std::__tree<std::__value_type<unsigned long,FIK::IKArray<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,FIK::IKArray<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,FIK::IKArray<unsigned long>>>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

uint64_t *std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (!v19)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v19 + 24) == 1)
      {
LABEL_55:
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      else
      {
        v18 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_72;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_68;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v24)
  {
    goto LABEL_65;
  }

  if (v24[3])
  {
    v25 = v7[1];
LABEL_65:
    *(v25 + 24) = 1;
    *(v7 + 24) = 0;
    v33 = *v25;
    v7[1] = *v25;
    if (v33)
    {
      *(v33 + 16) = v7;
    }

    v34 = v7[2];
    v25[2] = v34;
    v34[*v34 != v7] = v25;
    *v25 = v7;
    v7[2] = v25;
    v24 = v7;
  }

  else
  {
LABEL_68:
    v25 = v7;
  }

  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_72:
  *(v29 + 16) = v30;
  return result;
}

void std::__tree<std::__value_type<unsigned long,FIK::IKArray<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,FIK::IKArray<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,FIK::IKArray<unsigned long>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned long,FIK::IKArray<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,FIK::IKArray<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,FIK::IKArray<unsigned long>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned long,FIK::IKArray<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,FIK::IKArray<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,FIK::IKArray<unsigned long>>>>::destroy(a1, a2[1]);
    a2[5] = 0;
    v4 = a2[7];
    if (v4)
    {
      (*(*a2[8] + 24))(a2[8], v4, 0, 8);
    }

    operator delete(a2);
  }
}

void *FIK::anonymous namespace::findAuxillaryJoints@<X0>(FIK::_anonymous_namespace_ *this@<X0>, const FIK::Hierarchy *a2@<X1>, const FIK::Hierarchy *a3@<X2>, uint64_t *a4@<X8>)
{
  FIK::Hierarchy::descendentIndicesOf(this, a2, v17);
  FIK::Hierarchy::descendentIndicesOf(this, a3, v14);
  FIK::RigBuilderUtils::getSetDifference<unsigned long>(v17, v14, v11);
  v8 = 126 - 2 * __clz(v11[0]);
  if (v11[0])
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,FIK::IKArrayIterator<unsigned long>,false>(v12, (v12 + 8 * v11[0]), &v23, v9, 1);
  result = FIK::RigBuilderUtils::getSetDifference<unsigned long>(v11, v20, a4);
  v11[0] = 0;
  if (v12)
  {
    result = (*(*v13 + 24))(v13, v12, 0, 8);
  }

  v14[0] = 0;
  if (v15)
  {
    result = (*(*v16 + 24))(v16, v15, 0, 8);
  }

  v17[0] = 0;
  if (v18)
  {
    result = (*(*v19 + 24))(v19, v18, 0, 8);
  }

  v20[0] = 0;
  if (v21)
  {
    return (*(*v22 + 24))(v22, v21, 0, 8);
  }

  return result;
}

uint64_t FIK::anonymous namespace::constructChain@<X0>(FIK::_anonymous_namespace_ *this@<X0>, const FIK::Hierarchy *a2@<X1>, const FIK::Hierarchy *a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = FIK::defaultAllocator(this);
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  a4[3] = v8;
  while (1)
  {
    result = FIK::IKArray<FIK::Segment *>::reserve(a4, *a4 + 1);
    v10 = a4[2];
    v11 = *a4;
    if (a3 == a2)
    {
      break;
    }

    *(v10 + 8 * v11) = a3;
    ++*a4;
    a3 = FIK::Hierarchy::parentIndexOf(this, a3);
    if ((v12 & 1) == 0)
    {
      result = std::__throw_bad_optional_access[abi:nn200100]();
      break;
    }
  }

  *(v10 + 8 * v11) = a2;
  v13 = *a4 + 1;
  *a4 = v13;
  v14 = (v10 + 8 * v13 - 8);
  if (v13)
  {
    v15 = v14 > v10;
  }

  else
  {
    v15 = 0;
  }

  if (v15)
  {
    v16 = v10 + 8;
    do
    {
      v17 = *(v16 - 8);
      *(v16 - 8) = *v14;
      *v14-- = v17;
      v18 = v16 >= v14;
      v16 += 8;
    }

    while (!v18);
  }

  return result;
}

void *FIK::RigBuilderUtils::getSetDifference<unsigned long>@<X0>(FIK *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = FIK::defaultAllocator(a1);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = result;
  v7 = *a1;
  if (*a1)
  {
    v8 = 0;
    v9 = *(a1 + 2);
    v10 = &v9[v7];
    do
    {
      if (!*a2)
      {
        goto LABEL_9;
      }

      v11 = a2[2];
      v12 = 8 * *a2;
      while (*v11 != *v9)
      {
        ++v11;
        v12 -= 8;
        if (!v12)
        {
          goto LABEL_9;
        }
      }

      if (!v12)
      {
LABEL_9:
        result = FIK::IKArray<FIK::Segment *>::reserve(a3, v8 + 1);
        *(a3[2] + 8 * *a3) = *v9;
        v8 = *a3 + 1;
        *a3 = v8;
      }

      ++v9;
    }

    while (v9 != v10);
  }

  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,FIK::IKArrayIterator<unsigned long>,false>(uint64_t result, unint64_t *a2, uint64_t a3, uint64_t a4, char a5)
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
      if (v59 >= *v9)
      {
        if (v61 >= v59)
        {
          goto LABEL_121;
        }

        *v58 = v61;
        *v60 = v59;
        v63 = v9;
        v64 = (v9 + 1);
        result = v59;
        if (v61 < v62)
        {
          goto LABEL_113;
        }
      }

      else
      {
        v63 = v9;
        v64 = (v9 + 2);
        result = *v9;
        if (v61 >= v59)
        {
          *v9 = v59;
          v9[1] = v62;
          v63 = v9 + 1;
          v64 = (v9 + 2);
          result = v62;
          if (v61 >= v62)
          {
LABEL_121:
            v59 = v61;
            goto LABEL_122;
          }
        }

LABEL_113:
        *v63 = v61;
        *v64 = v62;
        v59 = result;
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
      if (v48 >= *v9)
      {
        if (v49 >= v48)
        {
          v54 = *v9;
          v51 = v9[1];
        }

        else
        {
          v52 = v9;
          v53 = (v9 + 1);
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
          v51 = v49;
          v49 = v48;
        }
      }

      else
      {
        if (v49 < v48)
        {
          v52 = v9;
          v53 = (v9 + 2);
          v54 = v9[2];
          result = v9[1];
          v55 = *v9;
          goto LABEL_130;
        }

        v52 = v9 + 1;
        v53 = (v9 + 2);
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
          v51 = result;
          v49 = v55;
        }
      }

      v83 = v9[3];
      if (v83 >= v49)
      {
        v49 = v9[3];
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
                *(v9 + v72 + 8) = v71;
                if (!v72)
                {
                  break;
                }

                v71 = *(v9 + v72 - 8);
                v72 -= 8;
                if (v70 >= v71)
                {
                  v73 = (v9 + v72 + 8);
                  goto LABEL_99;
                }
              }

              v73 = v9;
LABEL_99:
              *v73 = v70;
            }

            v65 = v69 + 1;
            v68 += 8;
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

        return std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,FIK::IKArrayIterator<unsigned long>,FIK::IKArrayIterator<unsigned long>>(v9, a2, a2, a3);
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

      v23 = v13 - 1;
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
      v30 = v13 + 1;
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
      result = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,FIK::IKArrayIterator<unsigned long>,std::__less<void,void> &>(v9, a2);
      v9 = result;
      goto LABEL_69;
    }

LABEL_62:
    v41 = std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,FIK::IKArrayIterator<unsigned long>,std::__less<void,void> &>(v9, a2);
    if ((v42 & 1) == 0)
    {
      goto LABEL_67;
    }

    v43 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,FIK::IKArrayIterator<unsigned long>>(v9, v41);
    v9 = v41 + 1;
    result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,FIK::IKArrayIterator<unsigned long>>(v41 + 1, a2);
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
      result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,FIK::IKArrayIterator<unsigned long>,false>(v8, v41, a3, -v11, a5 & 1);
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

unint64_t *std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,FIK::IKArrayIterator<unsigned long>,std::__less<void,void> &>(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*a1 >= *(a2 - 1))
  {
    v5 = (a1 + 1);
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

unint64_t *std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,FIK::IKArrayIterator<unsigned long>,std::__less<void,void> &>(unint64_t *a1, unint64_t *a2)
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

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,FIK::IKArrayIterator<unsigned long>>(unint64_t *a1, unint64_t *a2)
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
  for (i = 24; ; i += 8)
  {
    v34 = *v31;
    v35 = *v18;
    if (*v31 < v35)
    {
      v36 = i;
      while (1)
      {
        *(a1 + v36) = v35;
        v37 = v36 - 8;
        if (v36 == 8)
        {
          break;
        }

        v35 = *(a1 + v36 - 16);
        v36 -= 8;
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

unint64_t *std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,FIK::IKArrayIterator<unsigned long>,FIK::IKArrayIterator<unsigned long>>(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = a3;
  v6 = a2 - a1;
  if (a2 != a1)
  {
    v9 = a2;
    v10 = v6 >> 3;
    v11 = __OFSUB__(v6 >> 3, 2);
    v12 = (v6 >> 3) - 2;
    if (v12 < 0 == v11)
    {
      v13 = v12 >> 1;
      v14 = &a1[v13];
      v15 = v13 + 1;
      do
      {
        std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,FIK::IKArrayIterator<unsigned long>>(a1, a4, v10, v14--);
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
          std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,FIK::IKArrayIterator<unsigned long>>(a1, a4, v10, a1);
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
          v25 = (v21 - a1 + 8) >> 3;
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

uint64_t std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,FIK::IKArrayIterator<unsigned long>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 3)
    {
      v6 = v4 >> 2;
      v7 = (v4 >> 2) | 1;
      v8 = (result + 8 * v7);
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
          v8 = (result + 8 * v13);
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

void *FIK::anonymous namespace::getAuxillaryOfGroup@<X0>(FIK *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = FIK::defaultAllocator(a1);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = result;
  v7 = *a2;
  if (*a2)
  {
    v8 = a2[2];
    v9 = 8 * v7;
    do
    {
      FIK::Hierarchy::descendentIndicesOf(a1, *v8, &v10);
      result = std::__copy_impl::operator()[abi:nn200100]<FIK::IKArrayIterator<unsigned long const>,FIK::IKArrayIterator<unsigned long const>,std::back_insert_iterator<FIK::IKArray<unsigned long>>>(&v13, v11, &v11[v10], a3);
      v10 = 0;
      if (v11)
      {
        result = (*(*v12 + 24))(v12, v11, 0, 8);
      }

      ++v8;
      v9 -= 8;
    }

    while (v9);
  }

  return result;
}

void *FIK::IKArray<FIK::IKArray<unsigned long>>::IKArray(void *a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  *a1 = v5;
  FIK::IKArray<FIK::Item>::MemoryBlock::MemoryBlock(a1 + 1, v4, a2[3]);
  v6 = *a2;
  if (*a2)
  {
    v7 = a1[2];
    v8 = a2[2];
    do
    {
      v9 = FIK::IKArray<FIK::Task *>::IKArray(v7, v8);
      v8 += 4;
      v7 = v9 + 4;
      --v6;
    }

    while (v6);
  }

  return a1;
}

uint64_t *std::__copy_impl::operator()[abi:nn200100]<FIK::IKArrayIterator<unsigned long const>,FIK::IKArrayIterator<unsigned long const>,std::back_insert_iterator<FIK::IKArray<unsigned long>>>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    v7 = *a4;
    do
    {
      FIK::IKArray<FIK::Segment *>::reserve(a4, v7 + 1);
      v8 = *v5++;
      *(a4[2] + 8 * *a4) = v8;
      v7 = *a4 + 1;
      *a4 = v7;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

const FIK::Hierarchy *FIK::anonymous namespace::findHead(FIK::_anonymous_namespace_ *this, const FIK::Hierarchy *a2)
{
  v2 = a2;
  v21 = *MEMORY[0x277D85DE8];
  FIK::Hierarchy::childIndicesOf(this, a2, &v17);
  if (!v17)
  {
    v8 = FIK::Hierarchy::nameOf(this, v2);
    v9 = *(v8 + 8);
    if (v9)
    {
      v10 = *v8;
    }

    else
    {
      v10 = &unk_245A04BAE;
    }

    v20[0] = xmmword_278E8A0D0;
    v20[1] = *&off_278E8A0E0;
    if (!FIK::RigBuilderUtils::stringContains(v10, v9, v20, 2))
    {
      goto LABEL_11;
    }

    v6 = this;
    v5 = v2;
    goto LABEL_9;
  }

  v5 = *v18;
  v6 = this;
  if (v17 >= 3)
  {
LABEL_9:
    Head = FIK::Hierarchy::parentIndexOf(v6, v5);
    if ((v11 & 1) == 0)
    {
      v14 = std::__throw_bad_optional_access[abi:nn200100]();
      return std::map<int,unsigned long>::insert[abi:nn200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<int,unsigned long>,std::__tree_node<std::__value_type<int,unsigned long>,void *> *,long>>>(v14, v15, v16);
    }

    goto LABEL_10;
  }

LABEL_10:
  v2 = Head;
LABEL_11:
  v17 = 0;
  if (v18)
  {
    (*(*v19 + 24))(v19, v18, 0, 8);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t std::map<int,unsigned long>::insert[abi:nn200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<int,unsigned long>,std::__tree_node<std::__value_type<int,unsigned long>,void *> *,long>>>(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::__emplace_hint_unique_key_args<int,std::pair<int const,unsigned long> const&>(v5, v5 + 1, v4 + 8);
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

uint64_t std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::__emplace_hint_unique_key_args<int,std::pair<int const,unsigned long> const&>(void *a1, uint64_t *a2, int *a3)
{
  v3 = *std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::__find_equal<int>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::__find_equal<int>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 8), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 8) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 32);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 8))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 32);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t FIK::anonymous namespace::shouldSwapGroupForJoint(FIK::Hierarchy *a1, uint64_t a2, FIK::PoseConverter *this, int a4, uint64_t a5)
{
  v30 = *MEMORY[0x277D85DE8];
  v10 = *(a2 + 24);
  v8 = a2 + 24;
  v9 = v10;
  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = v8;
  v12 = v9;
  do
  {
    v13 = *(v12 + 32);
    if ((v13 & 0x80000000) == 0)
    {
      v11 = v12;
    }

    v12 = *(v12 + ((v13 >> 28) & 8));
  }

  while (v12);
  if (v11 == v8 || *(v11 + 32) >= 1)
  {
LABEL_8:
    v11 = v8;
  }

  if (!v9)
  {
    goto LABEL_16;
  }

  v14 = v8;
  do
  {
    if (*(v9 + 32) >= a4)
    {
      v14 = v9;
    }

    v9 = *(v9 + 8 * (*(v9 + 32) < a4));
  }

  while (v9);
  if (v14 == v8 || *(v14 + 32) > a4)
  {
LABEL_16:
    v14 = v8;
  }

  GlobalTransform = FIK::PoseConverter::GetGlobalTransform(this, *(v11 + 40));
  v28 = vsubq_f32(*GlobalTransform, *FIK::PoseConverter::GetGlobalTransform(this, *(v14 + 40)));
  v16 = v28.f32[FIK::IKRigUtils::getIndexForAxis(a5)];
  v17 = a5 >= 3 && v16 > 0.0 || v16 < 0.0 && a5 < 3;
  v19 = FIK::Hierarchy::nameOf(a1, *(v14 + 40));
  v21 = *v19;
  v20 = v19[1];
  if (v20)
  {
    v22 = *v19;
  }

  else
  {
    v22 = &unk_245A04BAE;
  }

  ShortJointName = FIK::RigBuilderUtils::getShortJointName(v22, v20);
  v29[0] = xmmword_278E8A0F0;
  v29[1] = *&off_278E8A100;
  v29[2] = xmmword_278E8A110;
  v29[3] = *&off_278E8A120;
  v25 = FIK::RigBuilderUtils::stringContains(ShortJointName, v24, v29, 4);
  v26 = *MEMORY[0x277D85DE8];
  return v17 & v25;
}

uint64_t FIK::anonymous namespace::swapAllElements<int,unsigned long>(uint64_t result, int *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = &a2[2 * a3];
    v5 = *(result + 8);
    result += 8;
    v4 = v5;
    do
    {
      if (!v4)
      {
        goto LABEL_10;
      }

      v6 = *a2;
      v7 = result;
      v8 = v4;
      do
      {
        if (*(v8 + 32) >= v6)
        {
          v7 = v8;
        }

        v8 = *(v8 + 8 * (*(v8 + 32) < v6));
      }

      while (v8);
      if (v7 == result || v6 < *(v7 + 32))
      {
LABEL_10:
        v7 = result;
      }

      if (v4)
      {
        v9 = a2[1];
        v10 = result;
        v11 = v4;
        do
        {
          if (*(v11 + 32) >= v9)
          {
            v10 = v11;
          }

          v11 = *(v11 + 8 * (*(v11 + 32) < v9));
        }

        while (v11);
        if (v10 != result && v9 >= *(v10 + 32) && v7 != result)
        {
          v13 = *(v7 + 40);
          *(v7 + 40) = *(v10 + 40);
          *(v10 + 40) = v13;
        }
      }

      a2 += 2;
    }

    while (a2 != v3);
  }

  return result;
}

uint64_t FIK::anonymous namespace::swapAllElements<int,FIK::IKArray<unsigned long>>(uint64_t result, int *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a2;
    v4 = &a2[2 * a3];
    v5 = (result + 8);
    do
    {
      v6 = *v5;
      if (!*v5)
      {
        goto LABEL_10;
      }

      v7 = *v3;
      result = v5;
      v8 = *v5;
      do
      {
        if (*(v8 + 32) >= v7)
        {
          result = v8;
        }

        v8 = *(v8 + 8 * (*(v8 + 32) < v7));
      }

      while (v8);
      if (result == v5 || v7 < *(result + 32))
      {
LABEL_10:
        result = v5;
      }

      if (v6)
      {
        v9 = v3[1];
        v10 = v5;
        do
        {
          if (*(v6 + 32) >= v9)
          {
            v10 = v6;
          }

          v6 = *(v6 + 8 * (*(v6 + 32) < v9));
        }

        while (v6);
        if (v10 != v5 && v9 >= *(v10 + 8) && result != v5)
        {
          v13 = *(result + 40);
          v12 = result + 40;
          *v12 = 0;
          *(v12 + 8) = 0;
          v14 = *(v12 + 16);
          *(v12 + 16) = 0;
          v15 = v13;
          v16 = v14;
          FIK::IKArray<unsigned int>::operator=(v12, (v10 + 5));
          result = FIK::IKArray<unsigned int>::operator=((v10 + 5), &v15);
          *&v15 = 0;
          if (v16)
          {
            result = (*(**(&v16 + 1) + 24))(*(&v16 + 1), v16, 0, 8);
          }
        }
      }

      v3 += 2;
    }

    while (v3 != v4);
  }

  return result;
}

void *FIK::anonymous namespace::computeFingerOrdering@<X0>(FIK *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v29[0] = 0;
  v29[1] = 0;
  v30 = 0;
  v31 = FIK::defaultAllocator(a1);
  v6 = *a2;
  if (*a2)
  {
    v7 = 0;
    do
    {
      v8 = *(a2[2] + 8 * v7);
      v9 = FIK::Hierarchy::localSpaceRestPose(a1, v8);
      v10 = vmulq_f32(*v9, *v9);
      v11 = sqrtf(v10.f32[2] + vaddv_f32(*v10.f32));
      FIK::Hierarchy::descendentIndicesOf(a1, v8, v32);
      v12 = v33;
      if (v32[0])
      {
        v13 = 8 * v32[0];
        do
        {
          v14 = *v12++;
          v15 = FIK::Hierarchy::localSpaceRestPose(a1, v14);
          v16 = vmulq_f32(*v15, *v15);
          v11 = v11 + sqrtf(v16.f32[2] + vaddv_f32(*v16.f32));
          v13 -= 8;
        }

        while (v13);
        v12 = v33;
      }

      v32[0] = 0;
      if (v12)
      {
        (*(*v34 + 24))(v34, v12, 0, 8);
      }

      FIK::IKArray<std::string_view>::reserve(v29, v29[0] + 1);
      v17 = v30;
      v18 = v30 + 16 * v29[0];
      *v18 = v11;
      *(v18 + 8) = v8;
      v19 = ++v29[0];
      ++v7;
    }

    while (v7 != v6);
    v20 = (v17 + 16 * v19);
    if (v19)
    {
      v21 = 126 - 2 * __clz(v19);
      goto LABEL_14;
    }
  }

  else
  {
    v20 = 0;
    v17 = 0;
  }

  v21 = 0;
LABEL_14:
  v22 = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,FIK::IKArrayIterator<std::pair<float,unsigned long>>,false>(v17, v20, v32, v21, 1);
  result = FIK::defaultAllocator(v22);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = result;
  v24 = v30;
  if (v29[0])
  {
    v25 = 0;
    v26 = 16 * v29[0];
    v27 = (v30 + 8);
    do
    {
      v28 = *v27;
      v27 += 2;
      result = FIK::IKArray<FIK::Segment *>::reserve(a3, v25 + 1);
      *(a3[2] + 8 * *a3) = v28;
      v25 = *a3 + 1;
      *a3 = v25;
      v26 -= 16;
    }

    while (v26);
    v24 = v30;
  }

  v29[0] = 0;
  if (v24)
  {
    return (*(*v31 + 3))(v31, v24, 0, 8);
  }

  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,FIK::IKArrayIterator<std::pair<float,unsigned long>>,false>(uint64_t result, float *a2, uint64_t a3, uint64_t a4, char a5)
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

        return std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,FIK::IKArrayIterator<std::pair<float,unsigned long>>,0>(v9, v9 + 16, (a2 - 4));
      case 4uLL:
        result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,FIK::IKArrayIterator<std::pair<float,unsigned long>>,0>(v9, v9 + 16, v9 + 32);
        v25 = *(a2 - 4);
        v26 = *(v9 + 32);
        if (v25 >= v26)
        {
          if (v26 < v25)
          {
            return result;
          }

          v28 = *(a2 - 1);
          v27 = *(v9 + 40);
          if (v28 >= v27)
          {
            return result;
          }
        }

        else
        {
          v27 = *(v9 + 40);
          v28 = *(a2 - 1);
        }

        *(v9 + 32) = v25;
        *(a2 - 4) = v26;
        *(v9 + 40) = v28;
        *(a2 - 1) = v27;
        v29 = *(v9 + 32);
        v30 = *(v9 + 16);
        if (v29 >= v30)
        {
          if (v30 < v29)
          {
            return result;
          }

          v32 = *(v9 + 40);
          v31 = *(v9 + 24);
          if (v32 >= v31)
          {
            return result;
          }
        }

        else
        {
          v31 = *(v9 + 24);
          v32 = *(v9 + 40);
        }

        *(v9 + 16) = v29;
        *(v9 + 32) = v30;
        *(v9 + 24) = v32;
        *(v9 + 40) = v31;
        v33 = *v9;
        if (v29 >= *v9)
        {
          if (v33 < v29)
          {
            return result;
          }

          v34 = *(v9 + 8);
          if (v32 >= v34)
          {
            return result;
          }
        }

        else
        {
          v34 = *(v9 + 8);
        }

        *v9 = v29;
        *(v9 + 16) = v33;
        *(v9 + 8) = v32;
        *(v9 + 24) = v34;
        return result;
      case 5uLL:

        return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,FIK::IKArrayIterator<std::pair<float,unsigned long>>,0>(v9, v9 + 16, v9 + 32, v9 + 48, (a2 - 4));
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,FIK::IKArrayIterator<std::pair<float,unsigned long>>>(v9, a2);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,FIK::IKArrayIterator<std::pair<float,unsigned long>>>(v9, a2);
      }
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,FIK::IKArrayIterator<std::pair<float,unsigned long>>,FIK::IKArrayIterator<std::pair<float,unsigned long>>>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = v9 + 16 * (v12 >> 1);
    if (v12 < 0x81)
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,FIK::IKArrayIterator<std::pair<float,unsigned long>>,0>(v9 + 16 * (v12 >> 1), v9, (a2 - 4));
      if (a5)
      {
        goto LABEL_20;
      }
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,FIK::IKArrayIterator<std::pair<float,unsigned long>>,0>(v9, v9 + 16 * (v12 >> 1), (a2 - 4));
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,FIK::IKArrayIterator<std::pair<float,unsigned long>>,0>(v9 + 16, v14 - 16, (a2 - 8));
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,FIK::IKArrayIterator<std::pair<float,unsigned long>>,0>(v9 + 32, v9 + 16 + 16 * v13, (a2 - 12));
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,FIK::IKArrayIterator<std::pair<float,unsigned long>>,0>(v14 - 16, v14, v9 + 16 + 16 * v13);
      v15 = *v9;
      *v9 = *v14;
      *v14 = v15;
      v16 = *(v9 + 8);
      *(v9 + 8) = *(v14 + 8);
      *(v14 + 8) = v16;
      if (a5)
      {
        goto LABEL_20;
      }
    }

    v17 = *(v9 - 16);
    if (v17 >= *v9 && (*v9 < v17 || *(v9 - 8) >= *(v9 + 8)))
    {
      result = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,FIK::IKArrayIterator<std::pair<float,unsigned long>>,std::__less<void,void> &>(v9, a2);
      v9 = result;
      goto LABEL_25;
    }

LABEL_20:
    v18 = std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,FIK::IKArrayIterator<std::pair<float,unsigned long>>,std::__less<void,void> &>(v9, a2);
    if ((v19 & 1) == 0)
    {
      goto LABEL_23;
    }

    v20 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,FIK::IKArrayIterator<std::pair<float,unsigned long>>>(v9, v18);
    v9 = v18 + 16;
    result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,FIK::IKArrayIterator<std::pair<float,unsigned long>>>(v18 + 16, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v18;
      if (v20)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v20)
    {
LABEL_23:
      result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,FIK::IKArrayIterator<std::pair<float,unsigned long>>,false>(v8, v18, a3, -v11, a5 & 1);
      v9 = v18 + 16;
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

  v21 = *(a2 - 4);
  v22 = *v9;
  if (v21 < *v9)
  {
    v23 = *(v9 + 8);
    v24 = *(a2 - 1);
LABEL_30:
    *v9 = v21;
    *(a2 - 4) = v22;
    *(v9 + 8) = v24;
    *(a2 - 1) = v23;
    return result;
  }

  if (v22 >= v21)
  {
    v24 = *(a2 - 1);
    v23 = *(v9 + 8);
    if (v24 < v23)
    {
      goto LABEL_30;
    }
  }

  return result;
}

uint64_t std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,FIK::IKArrayIterator<std::pair<float,unsigned long>>,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *a1;
  if (*a2 < *a1 || v4 >= v3 && *(a2 + 8) < *(a1 + 8))
  {
    v5 = *a3;
    if (*a3 < v3)
    {
      v6 = *(a3 + 8);
LABEL_4:
      *a1 = v5;
      *a3 = v4;
      v7 = *(a1 + 8);
      *(a1 + 8) = v6;
      *(a3 + 8) = v7;
      return 1;
    }

    if (v3 >= v5)
    {
      v6 = *(a3 + 8);
      v16 = *(a2 + 8);
      if (v6 < v16)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v16 = *(a2 + 8);
    }

    *a1 = v3;
    *a2 = v4;
    v17 = *(a1 + 8);
    *(a1 + 8) = v16;
    *(a2 + 8) = v17;
    v18 = *a3;
    if (*a3 >= v4)
    {
      if (v4 < v18)
      {
        return 1;
      }

      v19 = *(a3 + 8);
      if (v19 >= v17)
      {
        return 1;
      }
    }

    else
    {
      v19 = *(a3 + 8);
    }

    *a2 = v18;
    *a3 = v4;
    *(a2 + 8) = v19;
    result = 1;
    *(a3 + 8) = v17;
    return result;
  }

  v9 = *a3;
  if (*a3 < v3)
  {
    v10 = *(a2 + 8);
    v11 = *(a3 + 8);
LABEL_10:
    *a2 = v9;
    *a3 = v3;
    *(a2 + 8) = v11;
    *(a3 + 8) = v10;
    v12 = *a2;
    v13 = *a1;
    if (*a2 < *a1)
    {
      v14 = *(a1 + 8);
      v15 = *(a2 + 8);
LABEL_12:
      *a1 = v12;
      *a2 = v13;
      *(a1 + 8) = v15;
      result = 1;
      *(a2 + 8) = v14;
      return result;
    }

    if (v13 >= v12)
    {
      v15 = *(a2 + 8);
      v14 = *(a1 + 8);
      if (v15 < v14)
      {
        goto LABEL_12;
      }
    }

    return 1;
  }

  if (v3 >= v9)
  {
    v11 = *(a3 + 8);
    v10 = *(a2 + 8);
    if (v11 < v10)
    {
      goto LABEL_10;
    }
  }

  return 0;
}

uint64_t std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,FIK::IKArrayIterator<std::pair<float,unsigned long>>,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,FIK::IKArrayIterator<std::pair<float,unsigned long>>,0>(a1, a2, a3);
  v11 = *a4;
  v12 = *a3;
  if (*a4 >= *a3)
  {
    if (v12 < v11)
    {
      goto LABEL_16;
    }

    v14 = *(a4 + 8);
    v13 = *(a3 + 8);
    if (v14 >= v13)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v13 = *(a3 + 8);
    v14 = *(a4 + 8);
  }

  *a3 = v11;
  *a4 = v12;
  *(a3 + 8) = v14;
  *(a4 + 8) = v13;
  v15 = *a3;
  v16 = *a2;
  if (*a3 >= *a2)
  {
    if (v16 < v15)
    {
      goto LABEL_16;
    }

    v18 = *(a3 + 8);
    v17 = *(a2 + 8);
    if (v18 >= v17)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v17 = *(a2 + 8);
    v18 = *(a3 + 8);
  }

  *a2 = v15;
  *a3 = v16;
  *(a2 + 8) = v18;
  *(a3 + 8) = v17;
  v19 = *a2;
  v20 = *a1;
  if (*a2 < *a1)
  {
    v21 = *(a1 + 8);
    v22 = *(a2 + 8);
LABEL_7:
    *a1 = v19;
    *a2 = v20;
    *(a1 + 8) = v22;
    *(a2 + 8) = v21;
    goto LABEL_16;
  }

  if (v20 >= v19)
  {
    v22 = *(a2 + 8);
    v21 = *(a1 + 8);
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

    v26 = *(a5 + 8);
    v25 = *(a4 + 8);
    if (v26 >= v25)
    {
      return result;
    }
  }

  else
  {
    v25 = *(a4 + 8);
    v26 = *(a5 + 8);
  }

  *a4 = v23;
  *a5 = v24;
  *(a4 + 8) = v26;
  *(a5 + 8) = v25;
  v27 = *a4;
  v28 = *a3;
  if (*a4 >= *a3)
  {
    if (v28 < v27)
    {
      return result;
    }

    v30 = *(a4 + 8);
    v29 = *(a3 + 8);
    if (v30 >= v29)
    {
      return result;
    }
  }

  else
  {
    v29 = *(a3 + 8);
    v30 = *(a4 + 8);
  }

  *a3 = v27;
  *a4 = v28;
  *(a3 + 8) = v30;
  *(a4 + 8) = v29;
  v31 = *a3;
  v32 = *a2;
  if (*a3 >= *a2)
  {
    if (v32 < v31)
    {
      return result;
    }

    v34 = *(a3 + 8);
    v33 = *(a2 + 8);
    if (v34 >= v33)
    {
      return result;
    }
  }

  else
  {
    v33 = *(a2 + 8);
    v34 = *(a3 + 8);
  }

  *a2 = v31;
  *a3 = v32;
  *(a2 + 8) = v34;
  *(a3 + 8) = v33;
  v35 = *a2;
  v36 = *a1;
  if (*a2 < *a1)
  {
    v37 = *(a1 + 8);
    v38 = *(a2 + 8);
LABEL_24:
    *a1 = v35;
    *a2 = v36;
    *(a1 + 8) = v38;
    *(a2 + 8) = v37;
    return result;
  }

  if (v36 >= v35)
  {
    v38 = *(a2 + 8);
    v37 = *(a1 + 8);
    if (v38 < v37)
    {
      goto LABEL_24;
    }
  }

  return result;
}

float *std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,FIK::IKArrayIterator<std::pair<float,unsigned long>>>(float *result, float *a2)
{
  if (result == a2)
  {
    return result;
  }

  v2 = result + 4;
  if (result + 4 == a2)
  {
    return result;
  }

  v3 = 0;
  v4 = result;
  do
  {
    v5 = v4;
    v4 = v2;
    v6 = *v2;
    v7 = *v5;
    if (*v2 >= *v5)
    {
      if (v7 < v6)
      {
        goto LABEL_17;
      }

      v8 = *(v5 + 3);
      v9 = *(v5 + 1);
      if (v8 >= v9)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v8 = *(v5 + 3);
      v9 = *(v5 + 1);
    }

    *v4 = v7;
    *(v4 + 1) = v9;
    if (v5 == result)
    {
LABEL_13:
      v5 = result;
      goto LABEL_14;
    }

    v10 = v3;
    while (1)
    {
      v11 = *(result + v10 - 16);
      if (v6 >= v11)
      {
        break;
      }

      v12 = *(result + v10 - 8);
LABEL_12:
      v5 -= 4;
      v13 = result + v10;
      *v13 = v11;
      *(v13 + 8) = v12;
      v10 -= 16;
      if (!v10)
      {
        goto LABEL_13;
      }
    }

    if (v11 < v6)
    {
      goto LABEL_14;
    }

    v12 = *(result + v10 - 8);
    if (v8 < v12)
    {
      goto LABEL_12;
    }

    v5 = (result + v10);
LABEL_14:
    *v5 = v6;
    *(v5 + 1) = v8;
LABEL_17:
    v2 = v4 + 4;
    v3 += 16;
  }

  while (v4 + 4 != a2);
  return result;
}

float *std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,FIK::IKArrayIterator<std::pair<float,unsigned long>>>(float *result, float *a2)
{
  if (result != a2)
  {
    v2 = result + 4;
    if (result + 4 != a2)
    {
      for (i = result + 2; ; i += 4)
      {
        v4 = result;
        result = v2;
        v5 = *v2;
        v6 = *v4;
        if (*v2 < *v4)
        {
          break;
        }

        if (v6 >= v5)
        {
          v7 = *(v4 + 3);
          if (v7 < *(v4 + 1))
          {
            goto LABEL_6;
          }
        }

LABEL_14:
        v2 = result + 4;
        if (result + 4 == a2)
        {
          return result;
        }
      }

      v7 = *(v4 + 3);
LABEL_6:
      for (j = i; ; j -= 4)
      {
        j[2] = v6;
        *(j + 2) = *j;
        v6 = *(j - 6);
        if (v5 >= v6 && (v6 < v5 || v7 >= *(j - 2)))
        {
          break;
        }
      }

      *(j - 2) = v5;
      *j = v7;
      goto LABEL_14;
    }
  }

  return result;
}

unint64_t std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,FIK::IKArrayIterator<std::pair<float,unsigned long>>,std::__less<void,void> &>(unint64_t a1, unint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a2 - 16);
  if (*a1 < v4 || v4 >= v2 && v3 < *(a2 - 8))
  {
    i = a1;
    do
    {
      v6 = *(i + 16);
      i += 16;
      v7 = v6;
    }

    while (v2 >= v6 && (v7 < v2 || v3 >= *(i + 8)));
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

  if (i < a2)
  {
    v9 = *i;
    v10 = *a2;
    do
    {
      *i = v10;
      *a2 = v9;
      v11 = *(i + 16);
      i += 16;
      v9 = v11;
      v12 = *(i - 8);
      *(i - 8) = *(a2 + 8);
      *(a2 + 8) = v12;
      while (v2 >= v9 && (v9 < v2 || v3 >= *(i + 8)))
      {
        v13 = *(i + 16);
        i += 16;
        v9 = v13;
      }

      do
      {
        do
        {
          v14 = *(a2 - 16);
          a2 -= 16;
          v10 = v14;
        }

        while (v2 < v14);
      }

      while (v10 >= v2 && v3 < *(a2 + 8));
    }

    while (i < a2);
  }

  if (i - 16 != a1)
  {
    *a1 = *(i - 16);
    *(a1 + 8) = *(i - 8);
  }

  *(i - 16) = v2;
  *(i - 8) = v3;
  return i;
}

unint64_t std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,FIK::IKArrayIterator<std::pair<float,unsigned long>>,std::__less<void,void> &>(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *(a1 + 8);
  while (1)
  {
    v5 = *(a1 + v2 + 16);
    if (v5 >= v3 && (v3 < v5 || *(a1 + v2 + 24) >= v4))
    {
      break;
    }

    v2 += 16;
  }

  v6 = a1 + v2 + 16;
  if (v2)
  {
    do
    {
      v7 = *(a2 - 16);
      a2 -= 16;
      v8 = v7;
    }

    while (v7 >= v3 && (v3 < v8 || *(a2 + 8) >= v4));
  }

  else
  {
LABEL_19:
    if (v6 < a2)
    {
      do
      {
        v9 = *(a2 - 16);
        a2 -= 16;
        v10 = v9;
        if (v9 < v3)
        {
          break;
        }

        if (v3 < v10)
        {
          goto LABEL_19;
        }
      }

      while (*(a2 + 8) >= v4 && v6 < a2);
    }
  }

  if (v6 >= a2)
  {
    v13 = a1 + v2 + 16;
  }

  else
  {
    v12 = *a2;
    v13 = a1 + v2 + 16;
    v14 = a2;
    do
    {
      *v13 = v12;
      *v14 = v5;
      v15 = *(v13 + 8);
      *(v13 + 8) = *(v14 + 8);
      *(v14 + 8) = v15;
      do
      {
        do
        {
          v16 = *(v13 + 16);
          v13 += 16;
          v5 = v16;
        }

        while (v16 < v3);
      }

      while (v3 >= v5 && *(v13 + 8) < v4);
      do
      {
        v17 = *(v14 - 16);
        v14 -= 16;
        v12 = v17;
      }

      while (v17 >= v3 && (v3 < v12 || *(v14 + 8) >= v4));
    }

    while (v13 < v14);
  }

  if (v13 - 16 != a1)
  {
    *a1 = *(v13 - 16);
    *(a1 + 8) = *(v13 - 8);
  }

  *(v13 - 16) = v3;
  *(v13 - 8) = v4;
  return v13 - 16;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,FIK::IKArrayIterator<std::pair<float,unsigned long>>>(uint64_t a1, uint64_t a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,FIK::IKArrayIterator<std::pair<float,unsigned long>>,0>(a1, a1 + 16, a2 - 16);
        return 1;
      case 4:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,FIK::IKArrayIterator<std::pair<float,unsigned long>>,0>(a1, a1 + 16, a1 + 32);
        v23 = *(a2 - 16);
        v24 = *(a1 + 32);
        if (v23 >= v24)
        {
          if (v24 < v23)
          {
            return 1;
          }

          v26 = *(a2 - 8);
          v25 = *(a1 + 40);
          if (v26 >= v25)
          {
            return 1;
          }
        }

        else
        {
          v25 = *(a1 + 40);
          v26 = *(a2 - 8);
        }

        *(a1 + 32) = v23;
        *(a2 - 16) = v24;
        *(a1 + 40) = v26;
        *(a2 - 8) = v25;
        v27 = *(a1 + 32);
        v28 = *(a1 + 16);
        if (v27 >= v28)
        {
          if (v28 < v27)
          {
            return 1;
          }

          v30 = *(a1 + 40);
          v29 = *(a1 + 24);
          if (v30 >= v29)
          {
            return 1;
          }
        }

        else
        {
          v29 = *(a1 + 24);
          v30 = *(a1 + 40);
        }

        *(a1 + 16) = v27;
        *(a1 + 32) = v28;
        *(a1 + 24) = v30;
        *(a1 + 40) = v29;
        v31 = *a1;
        if (v27 >= *a1)
        {
          if (v31 < v27)
          {
            return 1;
          }

          v32 = *(a1 + 8);
          if (v30 >= v32)
          {
            return 1;
          }
        }

        else
        {
          v32 = *(a1 + 8);
        }

        *a1 = v27;
        *(a1 + 16) = v31;
        *(a1 + 8) = v30;
        result = 1;
        *(a1 + 24) = v32;
        return result;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,FIK::IKArrayIterator<std::pair<float,unsigned long>>,0>(a1, a1 + 16, a1 + 32, a1 + 48, a2 - 16);
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
      v5 = *(a2 - 16);
      v6 = *a1;
      if (v5 < *a1)
      {
        v7 = *(a1 + 8);
        v8 = *(a2 - 8);
LABEL_6:
        *a1 = v5;
        *(a2 - 16) = v6;
        *(a1 + 8) = v8;
        result = 1;
        *(a2 - 8) = v7;
        return result;
      }

      if (v6 >= v5)
      {
        v8 = *(a2 - 8);
        v7 = *(a1 + 8);
        if (v8 < v7)
        {
          goto LABEL_6;
        }
      }

      return 1;
    }
  }

  v10 = a1 + 32;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,FIK::IKArrayIterator<std::pair<float,unsigned long>>,0>(a1, a1 + 16, a1 + 32);
  v11 = a1 + 48;
  if (a1 + 48 == a2)
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

      v16 = *(v11 + 8);
      v17 = *(v10 + 8);
      if (v16 >= v17)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v16 = *(v11 + 8);
      v17 = *(v10 + 8);
    }

    *v11 = v15;
    *(v11 + 8) = v17;
    v18 = v12;
    while (1)
    {
      v19 = a1 + v18;
      v20 = *(a1 + v18 + 16);
      if (v14 >= v20)
      {
        break;
      }

      v21 = *(v19 + 24);
LABEL_21:
      *(v19 + 32) = v20;
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

    v22 = a1 + v18 + 32;
LABEL_27:
    *v22 = v14;
    *(v22 + 8) = v16;
    if (++v13 != 8)
    {
LABEL_28:
      v10 = v11;
      v12 += 16;
      v11 += 16;
      if (v11 == a2)
      {
        return 1;
      }

      continue;
    }

    return v11 + 16 == a2;
  }
}

uint64_t std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,FIK::IKArrayIterator<std::pair<float,unsigned long>>,FIK::IKArrayIterator<std::pair<float,unsigned long>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v5 = a2 - a1;
  if (a2 != a1)
  {
    v10 = v5 >> 4;
    v11 = __OFSUB__(v5 >> 4, 2);
    v12 = (v5 >> 4) - 2;
    if (v12 < 0 == v11)
    {
      v13 = v12 >> 1;
      v14 = a1 + 16 * v13;
      v15 = v13 + 1;
      do
      {
        std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,FIK::IKArrayIterator<std::pair<float,unsigned long>>>(a1, a4, v10, v14);
        v14 -= 16;
        --v15;
      }

      while (v15);
    }

    v4 = a2;
    if (a2 != a3)
    {
      v16 = a2;
      while (1)
      {
        v17 = *v16;
        v18 = *a1;
        if (*v16 >= *a1)
        {
          if (v18 < v17)
          {
            goto LABEL_12;
          }

          v19 = *(v16 + 8);
          v20 = *(a1 + 8);
          if (v19 >= v20)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v19 = *(v16 + 8);
          v20 = *(a1 + 8);
        }

        *v16 = v18;
        *a1 = v17;
        *(v16 + 8) = v20;
        *(a1 + 8) = v19;
        std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,FIK::IKArrayIterator<std::pair<float,unsigned long>>>(a1, a4, v10, a1);
LABEL_12:
        v16 += 16;
        if (v16 == a3)
        {
          v4 = a3;
          break;
        }
      }
    }

    if (v10 >= 2)
    {
      v21 = a2 - 16;
      do
      {
        v22 = *a1;
        v23 = *(a1 + 8);
        std::__floyd_sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,FIK::IKArrayIterator<std::pair<float,unsigned long>>>(a1, a4, v10);
        if (v21 == v24)
        {
          *v24 = v22;
          *(v24 + 8) = v23;
        }

        else
        {
          *v24 = *v21;
          *(v24 + 8) = *(v21 + 8);
          *v21 = v22;
          *(v21 + 8) = v23;
          std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,FIK::IKArrayIterator<std::pair<float,unsigned long>>>(a1, v24 + 16, a4, (v24 + 16 - a1) >> 4);
        }

        v21 -= 16;
      }

      while (v10-- > 2);
    }
  }

  return v4;
}

uint64_t std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,FIK::IKArrayIterator<std::pair<float,unsigned long>>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) | 1;
      v8 = result + 16 * v7;
      v9 = v6 + 2;
      if (v9 < a3)
      {
        v10 = *(v8 + 16);
        if (*v8 < v10 || v10 >= *v8 && *(v8 + 8) < *(v8 + 24))
        {
          v8 += 16;
          v7 = v9;
        }
      }

      v11 = *v8;
      v12 = *a4;
      if (*v8 >= *a4)
      {
        if (v12 >= v11)
        {
          v14 = *(v8 + 8);
          v13 = *(a4 + 8);
          if (v14 < v13)
          {
            return result;
          }
        }

        else
        {
          v13 = *(a4 + 8);
          v14 = *(v8 + 8);
        }

        *a4 = v11;
        *(a4 + 8) = v14;
        if (v5 >= v7)
        {
          while (1)
          {
            v16 = 2 * v7;
            v7 = (2 * v7) | 1;
            v15 = result + 16 * v7;
            v17 = v16 + 2;
            if (v17 < a3)
            {
              v18 = *(v15 + 16);
              if (*v15 < v18 || v18 >= *v15 && *(v15 + 8) < *(v15 + 24))
              {
                v15 += 16;
                v7 = v17;
              }
            }

            v19 = *v15;
            if (*v15 < v12)
            {
              break;
            }

            v20 = *(v15 + 8);
            if (v12 >= v19 && v20 < v13)
            {
              break;
            }

            *v8 = v19;
            *(v8 + 8) = v20;
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
        *(v15 + 8) = v13;
      }
    }
  }

  return result;
}