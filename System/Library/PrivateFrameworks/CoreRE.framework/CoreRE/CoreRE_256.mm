uint64_t physx::Sc::ShapeSim::createSqBounds(uint64_t this)
{
  if (*(this + 68) == -1)
  {
    v1 = *(this + 8);
    if (*(*(v1 + 80) + 13) - 1 >= 2)
    {
      v2 = 0;
    }

    else
    {
      v2 = *(this + 8);
    }

    if ((~*(*(v2 + 80) + 44) & 3) != 0 && (*(v2 + 124) & 1) == 0 && *(v2 + 184) <= 0xFFFFFFFD && (*(v2 + 180) & 0x1000) == 0 && (*(*(this + 56) + 64) & 2) != 0)
    {
      return physx::Sc::SqBoundsManager::addShape(*(*(v1 + 72) + 2088), this);
    }
  }

  return this;
}

physx::Sc::ShapeSim *physx::Sc::ShapeSim::ShapeSim(physx::Sc::ShapeSim *this, physx::Sc::RigidSim *a2, const physx::Sc::ShapeCore *a3)
{
  v5 = physx::Sc::ElementSim::ElementSim(this, a2);
  *(v5 + 8) = -128;
  *(v5 + 7) = a3;
  *(v5 + 17) = -1;
  v6 = *(*(*(v5 + 1) + 72) + 4280);
  v7 = *(v6 + 24);
  if (v7)
  {
    v8 = v7 - 1;
    v9 = *(*(v6 + 16) + 4 * (v7 - 1));
    *(v6 + 24) = v8;
  }

  else
  {
    v9 = *(v6 + 8);
    *(v6 + 8) = v9 + 1;
  }

  *(this + 16) = v9;
  physx::Sc::ShapeSim::initSubsystemsDependingOnElementID(this);
  return this;
}

void physx::Sc::ShapeSim::~ShapeSim(physx::Sc::ShapeSim *this)
{
  v2 = *(*(this + 1) + 72);
  *(v2[564] + 4 * ((*(this + 4) >> 5) & 0x3FFFFFF)) &= ~(1 << *(this + 4));
  if (*(this + 17) != -1)
  {
    physx::Sc::SqBoundsManager::removeShape(v2[261], this);
  }

  v3 = v2[535];
  v4 = *(this + 16);
  v6 = v4;
  physx::Cm::BitMapBase<physx::shdfnd::NonTrackingAllocator>::extend(v3 + 32, v4 + 1);
  *(*(v3 + 32) + ((v4 >> 3) & 0x1FFFFFFC)) |= 1 << v4;
  v5 = *(v3 + 56);
  if ((*(v3 + 60) & 0x7FFFFFFFu) <= v5)
  {
    physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::growAndPushBack(v3 + 48, &v6);
  }

  else
  {
    *(*(v3 + 48) + 4 * v5) = v4;
    ++*(v3 + 56);
  }

  physx::Sc::ElementSim::~ElementSim(this);
}

uint64_t physx::Sc::ShapeSim::getBPGroup(physx::Sc::ShapeSim *this)
{
  v1 = *(this + 1);
  v2 = *(v1 + 80);
  v3 = *(v2 + 13);
  if (v1)
  {
    v4 = (v3 - 3) >= 0xFFFFFFFE;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    if (*(v2 + 44))
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }
  }

  else
  {
    v5 = 2;
  }

  v6 = v5 + 4 * *(v1 + 88) + 4;
  if (v3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

int32x2_t *physx::Sc::ShapeSim::removeFromBroadPhase(int32x2_t *this, int a2)
{
  if (this[2].i32[0] < 0)
  {
    v8[9] = v2;
    v8[10] = v3;
    v5 = this;
    physx::Sc::ElementSim::removeFromAABBMgr(this);
    v6 = *(*(v5 + 8) + 72);
    (*(**(*(v6 + 1840) + 1776) + 168))(v8);
    if (a2)
    {
      v7 = 4;
    }

    else
    {
      v7 = 0;
    }

    return physx::Sc::NPhaseCore::onVolumeRemoved(*(v6 + 3992), v5, v7, v8, (*(v6 + 4268) & 8) != 0);
  }

  return this;
}

uint64_t physx::Sc::ShapeSim::reinsertBroadPhase(physx::Sc::ShapeSim *this)
{
  if ((*(this + 4) & 0x80000000) != 0)
  {
    physx::Sc::ElementSim::removeFromAABBMgr(this);
    v2 = *(*(this + 1) + 72);
    (*(**(*(v2 + 1840) + 1776) + 168))(v19);
    physx::Sc::NPhaseCore::onVolumeRemoved(*(v2 + 3992), this, 4, v19, (*(v2 + 4268) & 8) != 0);
  }

  v3 = *(*(this + 1) + 72);
  (*(**(v3 + 1904) + 40))(*(v3 + 1904), *(this + 16));
  *(*(v3 + 4512) + 4 * ((*(this + 4) >> 5) & 0x3FFFFFF)) &= ~(1 << *(this + 4));
  if (*(this + 17) != -1)
  {
    physx::Sc::SqBoundsManager::removeShape(*(*(*(this + 1) + 72) + 2088), this);
  }

  v4 = *(*(*(this + 1) + 72) + 4296);
  v5 = *(this + 4);
  LODWORD(v19[0]) = v5 & 0x7FFFFFFF;
  physx::Cm::BitMapBase<physx::shdfnd::NonTrackingAllocator>::extend(v4 + 32, (v5 & 0x7FFFFFFF) + 1);
  *(*(v4 + 32) + ((v5 >> 3) & 0xFFFFFFC)) |= 1 << v5;
  v6 = *(v4 + 56);
  if ((*(v4 + 60) & 0x7FFFFFFFu) <= v6)
  {
    physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::growAndPushBack(v4 + 48, v19);
  }

  else
  {
    *(*(v4 + 48) + 4 * v6) = v5 & 0x7FFFFFFF;
    ++*(v4 + 56);
  }

  v7 = *(*(this + 1) + 72);
  v8 = *(v7 + 4296);
  v9 = *(v8 + 24);
  if (v9)
  {
    v10 = v9 - 1;
    v11 = *(*(v8 + 16) + 4 * (v9 - 1));
    *(v8 + 24) = v10;
  }

  else
  {
    v11 = *(v8 + 8);
    *(v8 + 8) = v11 + 1;
  }

  *(this + 4) = *(this + 4) & 0x80000000 | v11 & 0x7FFFFFFF;
  v12 = *(v7 + 2064);
  v13 = (v11 & 0x7FFFFFFF) + 1;
  v14 = *(v12 + 20) & 0x7FFFFFFF;
  if (v13 >= v14)
  {
    v15 = v13 | (v13 >> 1) | ((v13 | (v13 >> 1)) >> 2);
    v16 = v15 | (v15 >> 4) | ((v15 | (v15 >> 4)) >> 8);
    v17 = (v16 | HIWORD(v16)) + 1;
    if (v14 < v17)
    {
      physx::shdfnd::Array<physx::PxBounds3,physx::shdfnd::VirtualAllocator>::recreate(v12, (v16 | HIWORD(v16)) + 1);
    }

    *(v12 + 16) = v17;
  }

  physx::Sc::ShapeSim::initSubsystemsDependingOnElementID(this);
  return (*(**(v3 + 1904) + 32))(*(v3 + 1904), this + 24, *(this + 16));
}

void physx::Sc::ShapeSim::onContactOffsetChange(physx::Sc::ShapeSim *this)
{
  v1 = *(this + 4);
  if (v1 < 0)
  {
    v2 = *(*(*(this + 1) + 72) + 1848);
    *(*(*(v2 + 280) + 8) + 4 * (v1 & 0x7FFFFFFF)) = *(*(this + 7) + 60);
    *(v2 + 525) = 1;
    physx::Cm::BitMapBase<physx::shdfnd::VirtualAllocator>::extend(v2 + 224, (v1 & 0x7FFFFFFF) + 1);
    *(*(v2 + 224) + 4 * ((v1 & 0x7FFFFFFFu) >> 5)) |= 1 << v1;
  }
}

uint64_t physx::Sc::ShapeSim::onFlagChange(uint64_t this, _BYTE *a2)
{
  v3 = this;
  v4 = *(this + 56);
  v5 = *(v4 + 64);
  if (((v5 & 5) != 0) == ((*a2 & 5) != 0))
  {
    if ((((v5 & 4) == 0) ^ ((*a2 & 4) >> 2)))
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  if ((*a2 & 5) != 0 || (v5 & 5) == 0)
  {
    physx::Sc::ElementSim::removeFromAABBMgr(this);
    v7 = *(*(v3 + 8) + 72);
    (*(**(*(v7 + 1840) + 1776) + 168))(v20);
    this = physx::Sc::NPhaseCore::onVolumeRemoved(*(v7 + 3992), v3, 4, v20, (*(v7 + 4268) & 8) != 0);
    goto LABEL_14;
  }

  if ((*(v4 + 64) & 4) != 0)
  {
    v8 = *(*(*(this + 8) + 72) + 1848);
    v9 = *(this + 16);
    v10 = (v9 >> 5) & 0x3FFFFFF;
    if (v10 < (*(v8 + 216) & 0x7FFFFFFFu) && ((*(*(v8 + 208) + 4 * v10) >> v9) & 1) != 0)
    {
LABEL_9:
      this = physx::Sc::ShapeSim::reinsertBroadPhase(this);
      goto LABEL_14;
    }
  }

  v11 = *(v4 + 60);
  BPGroup = physx::Sc::ShapeSim::getBPGroup(this);
  this = physx::Sc::ElementSim::addToAABBMgr(v3, BPGroup, v5 & 4, v11, v13, v14, v15, v16, v17, v19);
LABEL_14:
  if ((v5 & 2) != 0)
  {
    if ((*a2 & 2) == 0)
    {
      v18 = *(v3 + 8);
      if (v18)
      {
        if (*(*(v18 + 80) + 13) - 3 >= 0xFFFFFFFE && *(v18 + 184) <= 0xFFFFFFFD)
        {
          return physx::Sc::ShapeSim::createSqBounds(v3);
        }
      }
    }
  }

  else if ((*a2 & 2) != 0 && *(v3 + 68) != -1)
  {
    return physx::Sc::SqBoundsManager::removeShape(*(*(*(v3 + 8) + 72) + 2088), v3);
  }

  return this;
}

void physx::Sc::ShapeSim::updateCached(uint64_t a1, __int32 a2, void *a3)
{
  physx::Sc::ShapeSim::getAbsPoseAligned(a1, &v23);
  v6 = *(*(a1 + 8) + 72);
  v7 = *(a1 + 16);
  v8 = v7 & 0x7FFFFFFF;
  v9 = *(*(v6 + 1840) + 2592);
  v10 = (*(v9 + 8) + 32 * (v7 & 0x7FFFFFFF));
  v11.i64[1] = v23.i64[1];
  *v10 = v23;
  v10[1].i64[0] = v24;
  v10[1].i32[2] = v25;
  v10[1].i32[3] = a2;
  *(v9 + 28) = 1;
  v12 = *(v6 + 2064);
  v11.i64[0] = 0;
  LODWORD(v13) = 1.0;
  physx::Gu::computeBounds(*(v12 + 8) + 24 * (v7 & 0x7FFFFFFF), *(a1 + 56) + 72, &v23, 0, v11, v13, v18, v19, v20, v21, v22, v14, v15, v16, v17, v23.i8[0]);
  *(v12 + 24) = 1;
  if (a3)
  {
    if ((*(a1 + 16) & 0x80000000) != 0)
    {
      physx::Cm::BitMapBase<physx::shdfnd::VirtualAllocator>::extend(a3, v8 + 1);
      *(*a3 + 4 * (v8 >> 5)) |= 1 << v7;
    }
  }
}

void physx::Sc::ShapeSim::updateCached(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v11 = *(a1 + 16) & 0x7FFFFFFF;
  _X21 = (*(a2 + 8) + 32 * v11);
  __asm { PRFM            #0, [X21] }

  AbsPoseAligned = physx::Sc::ShapeSim::getAbsPoseAligned(a1, _X21);
  _X21[1].i32[3] = 0;
  v27 = *(a3 + 8) + 24 * v11;
  v28 = *(a1 + 56) + 72;
  AbsPoseAligned.i64[0] = 0;
  LODWORD(v30) = 1.0;

  physx::Gu::computeBounds(v27, v28, _X21, 0, AbsPoseAligned, v30, v22, v23, v24, v25, v26, v18, v19, v20, v21, a9);
}

float physx::Sc::ShapeSim::updateContactDistance(uint64_t a1, uint64_t a2, float *a3, uint64_t a4, float a5, float a6)
{
  v6 = *(a1 + 16) & 0x7FFFFFFF;
  v7 = (*(a4 + 8) + 24 * v6);
  v8 = (v7[3] - *v7) * 0.5;
  v9 = (v7[4] - v7[1]) * 0.5;
  result = (*(*(a1 + 56) + 60) + a5) + (sqrtf(((v9 * v9) + (v8 * v8)) + (((v7[5] - v7[2]) * 0.5) * ((v7[5] - v7[2]) * 0.5))) * (sqrtf(((a3[1] * a3[1]) + (*a3 * *a3)) + (a3[2] * a3[2])) * a6));
  *(a2 + 4 * v6) = result;
  return result;
}

BOOL physx::Sc::ShapeSim::updateSweptBounds(physx::Sc::ShapeSim *this, float32x4_t a2, double a3, double a4, double a5, double a6, double a7, int32x4_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v16 = *(this + 7);
  v21 = physx::Gu::computeBoundsWithCCDThreshold(&v82, v81, &v16[4].i64[1], *(*(*(*(*(this + 1) + 72) + 1840) + 2592) + 8) + 32 * (*(this + 4) & 0x7FFFFFFF), 0, a13, a14, a15, a2, a3, a4, a5, a6, a7, a8);
  v22.i32[0] = v82;
  v74 = v22;
  *v22.f32 = v81[0];
  v75 = v22;
  v23 = *(this + 1);
  if (*(v23[5].i64[0] + 13) - 1 >= 2)
  {
    v23 = 0;
  }

  v24.i64[0] = v16[3].i64[0];
  v24.i64[1] = v16[3].u32[2];
  v25 = v23[5].i64[0];
  v26 = v16[2];
  v27.i64[0] = v25[4].i64[0];
  v27.i64[1] = v25[4].u32[2];
  v28.i64[0] = v23[7].i64[0];
  v29 = v25[3];
  v28.i64[1] = v23[7].u32[2];
  v30 = v23[6];
  v31 = vdupq_laneq_s32(v29, 3).u64[0];
  v32 = v29;
  v32.i32[3] = 0;
  v33 = v26;
  v33.i32[3] = 0;
  v34 = vmulq_f32(v33, v32);
  v34.i64[0] = vpaddq_f32(v34, v34).u64[0];
  v35 = vextq_s8(v33, v33, 8uLL).u64[0];
  v36 = vextq_s8(v32, v32, 8uLL).u64[0];
  v37 = vext_s8(*v29.f32, v36, 4uLL);
  v38 = vmls_f32(vmul_f32(*v26.f32, v37), vext_s8(*v26.f32, v35, 4uLL), *v29.f32);
  *v39.f32 = vext_s8(v38, vmls_f32(vmul_f32(v35, *v29.f32), *v26.f32, v36), 4uLL);
  v39.i64[1] = v38.u32[0];
  v40 = vmlaq_laneq_f32(v39, v33, v29, 3);
  v40.i64[1] = vextq_s8(v40, v40, 8uLL).u32[0];
  *v34.f32 = vmla_f32(vpadd_f32(*v34.f32, *v34.f32), *&vdupq_laneq_s32(v26, 3), v31);
  v41 = vmlsq_laneq_f32(v40, v32, v26, 3);
  v42 = v30;
  v42.i32[3] = 0;
  v43 = vextq_s8(v42, v42, 8uLL).u64[0];
  *v33.f32 = vext_s8(*v30.f32, v43, 4uLL);
  v44 = vmls_f32(vmul_f32(*v30.f32, *&vextq_s8(v41, v41, 4uLL)), *v33.f32, *v41.f32);
  v41.i64[1] = vextq_s8(v41, v41, 8uLL).u32[0];
  v45 = vsubq_f32(v24, v27);
  LODWORD(v46) = vmla_f32(0xBF000000BF000000, v31, v31).u32[0];
  v47 = vmls_f32(vmul_f32(*v29.f32, *&vextq_s8(v45, v45, 8uLL)), *v45.f32, v36);
  v48 = vextq_s8(v45, v45, 4uLL);
  v49 = vmls_f32(vmul_f32(*v45.f32, v37), *v48.i8, *v29.f32);
  v50 = vmulq_n_f32(v45, v46);
  v50.i32[3] = 0;
  *v51.f32 = vext_s8(v49, v47, 4uLL);
  v51.i64[1] = v49.u32[0];
  v52 = vmlaq_laneq_f32(v50, v51, v29, 3);
  v52.i64[1] = vextq_s8(v52, v52, 8uLL).u32[0];
  v53 = vmulq_f32(v32, v45);
  v53.i64[0] = vpaddq_f32(v53, v53).u64[0];
  v54 = vmlaq_n_f32(v52, v32, vpadd_f32(*v53.f32, *v53.f32).f32[0]);
  *v29.f32 = vadd_f32(*v54.f32, *v54.f32);
  v54.i64[1] = vextq_s8(v54, v54, 8uLL).u32[0];
  v51.i64[0] = vdupq_laneq_s32(v30, 3).u64[0];
  v55 = vaddq_f32(v54, v54);
  v56 = vmulq_f32(v42, v41);
  v56.i64[0] = vpaddq_f32(v56, v56).u64[0];
  v57 = vpadd_f32(*v56.f32, *v56.f32);
  *v56.f32 = vext_s8(v44, vmls_f32(vmul_f32(v43, *v41.f32), *v30.f32, *&v41.u32[2]), 4uLL);
  v56.i64[1] = v44.u32[0];
  v58 = vmlaq_laneq_f32(v56, v41, v30, 3);
  v58.i64[1] = vextq_s8(v58, v58, 8uLL).u32[0];
  *v26.f32 = vsub_f32(vmul_f32(*&vextq_s8(v30, v30, 8uLL), *v34.f32), v57);
  v59 = vmlaq_n_f32(v58, v42, v34.f32[0]);
  v60 = vmulq_n_f32(v55, vmla_f32(0xBF000000BF000000, *v51.f32, *v51.f32).f32[0]);
  v60.i32[3] = 0;
  *v32.f32 = vadd_f32(*&v54.u32[2], *&v54.u32[2]);
  *v48.i8 = vmls_f32(vmul_f32(*v30.f32, vext_s8(*v29.f32, *v32.f32, 4uLL)), *v33.f32, *v29.f32);
  *v32.f32 = vext_s8(*v48.i8, vmls_f32(vmul_f32(v43, *v29.f32), *v30.f32, *v32.f32), 4uLL);
  v48.i32[1] = 0;
  v32.i64[1] = v48.u32[0];
  v61 = vmlaq_laneq_f32(v60, v32, v30, 3);
  v61.i64[1] = vextq_s8(v61, v61, 8uLL).u32[0];
  v62 = vmulq_f32(v42, v55);
  v62.i64[0] = vpaddq_f32(v62, v62).u64[0];
  v63 = vmlaq_n_f32(v61, v42, vpadd_f32(*v62.f32, *v62.f32).f32[0]);
  v63.i64[1] = vextq_s8(v63, v63, 8uLL).u32[0];
  v62.i64[0] = 0x4000000040000000;
  v62.i64[1] = 0x4000000040000000;
  v64 = vmlaq_f32(v28, v62, v63);
  v79 = v64.i64[0];
  v80 = v64.i32[2];
  v59.i32[3] = v26.i32[1];
  v78 = v59;
  v64.i64[0] = 0;
  v62.i32[0] = 1.0;
  physx::Gu::computeBounds(&v76, &v16[4].i64[1], &v78, 0, v64, *v62.i64, *v63.i64, *v59.i64, *v32.i64, *v29.i64, v48, v17, v18, v19, v20, v74.i8[0]);
  *v65.i8 = v83;
  *v66.f32 = vzip1_s32(*v75.f32, *(v81 + 4));
  *&v66.u32[2] = vdup_lane_s32(*(v81 + 4), 1);
  v67 = vsubq_f32(vextq_s8(vextq_s8(v74, v74, 4uLL), v65, 0xCuLL), v66);
  v67.i32[3] = vaddq_f32(v74, v75).u32[0];
  v68 = vadd_f32(v83, *(v81 + 4));
  v69 = (((((v76.f32[1] + *v77.i32) * 0.5) - v83.f32[0]) * (((v76.f32[1] + *v77.i32) * 0.5) - v83.f32[0])) + ((((v76.f32[0] + v76.f32[3]) * 0.5) - v74.f32[0]) * (((v76.f32[0] + v76.f32[3]) * 0.5) - v74.f32[0]))) + ((((v76.f32[2] + *&v77.i32[1]) * 0.5) - v83.f32[1]) * (((v76.f32[2] + *&v77.i32[1]) * 0.5) - v83.f32[1]));
  if (v69 >= (v21 * v21))
  {
    v70 = vmovn_s32(vcgtq_f32(v76, v67));
    v70.i16[3] = vmovn_s32(vcgtq_f32(v67, v76)).i16[3];
    v67 = vbslq_s8(vmovl_s16(v70), v67, v76);
    v68 = vbsl_s8(vcgt_f32(v68, v77), v68, v77);
  }

  result = v69 >= (v21 * v21);
  v72 = *(*(*(this + 1) + 72) + 2064);
  v73 = *(v72 + 8) + 24 * (*(this + 4) & 0x7FFFFFFF);
  *v73 = v67;
  *(v73 + 16) = v68;
  *(v72 + 24) = 1;
  return result;
}

uint64_t physx::Sc::ShapeSim::updateBPGroup(uint64_t this)
{
  v2 = *(this + 16);
  if (v2 < 0)
  {
    v3 = this;
    v4 = *(*(*(this + 8) + 72) + 1848);
    *(*(v4 + 264) + 4 * (v2 & 0x7FFFFFFF)) = physx::Sc::ShapeSim::getBPGroup(this);

    return physx::Sc::ShapeSim::reinsertBroadPhase(v3);
  }

  return this;
}

void physx::Sc::ShapeSim::markBoundsForUpdate(physx::Sc::ShapeSim *this, int a2)
{
  v2 = *(*(this + 1) + 72);
  if (a2)
  {
    v3 = (*(v2 + 1848) + 224);

    physx::Sc::ShapeSim::updateCached(this, 0, v3);
  }

  else
  {
    v4 = *(this + 4);
    if ((v4 & 0x80000000) != 0)
    {
      physx::Cm::BitMapBase<physx::shdfnd::NonTrackingAllocator>::extend(v2 + 4512, (v4 & 0x7FFFFFFF) + 1);
      *(*(v2 + 4512) + ((v4 >> 3) & 0xFFFFFFC)) |= 1 << v4;
    }
  }
}

void physx::Sc::ShapeSim::onVolumeOrTransformChange(physx::Sc::ShapeSim *this, int a2)
{
  v4 = *(this + 1);
  if (*(*(v4 + 80) + 13) - 1 >= 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(this + 1);
  }

  if (v5)
  {
    v6 = *(v5 + 184) > 0xFFFFFFFD;
  }

  else
  {
    v6 = 1;
  }

  v7 = *(v4 + 52);
  if (v7)
  {
    v8 = *(v4 + 72);
    v9 = *(v4 + 40);
    v10 = (v9 + 8 * v7);
    v11 = (v9 + 8);
    v12 = 8 * v7;
    while (1)
    {
      v13 = *(v11 - 1);
      v14 = *(v13 + 29);
      if ((v14 & 1) != 0 && (*(v13 + 32) == this || *(v13 + 40) == this))
      {
        break;
      }

      ++v11;
      v12 -= 8;
      if (!v12)
      {
        goto LABEL_13;
      }
    }

    while (1)
    {
      if (*(v13 + 28) == 1)
      {
        *(v13 + 68) |= 0x20u;
        if ((v14 & 0x20) == 0)
        {
          *(v13 + 29) = v14 | 0x20;
          v18 = *(v8 + 124);
          if (v18 < *(v8 + 96))
          {
            v19 = *(v13 + 16);
            v20 = *(v8 + 88);
            v21 = *(v20 + 8 * v18);
            v22 = *(v20 + 8 * v19);
            *(v20 + 8 * v18) = v22;
            *(*(v8 + 88) + 8 * v19) = v21;
            *(v21 + 16) = v19;
            *(v22 + 16) = v18;
            v18 = *(v8 + 124);
          }

          *(v8 + 124) = v18 + 1;
        }
      }

      else if (!*(v13 + 28))
      {
        v17 = v13 - 8;
        physx::Sc::ShapeInteraction::resetManagerCachedState(v13 - 8);
        if (v6)
        {
          physx::Sc::ShapeInteraction::onShapeChangeWhileSleeping(v17, v5 != 0);
        }
      }

      if (v11 == v10)
      {
        break;
      }

      v15 = v11;
      while (1)
      {
        v16 = *v15++;
        v13 = v16;
        v14 = *(v16 + 29);
        if ((v14 & 1) != 0 && (*(v13 + 32) == this || *(v13 + 40) == this))
        {
          break;
        }

        v11 = v15;
        if (v15 == v10)
        {
          goto LABEL_13;
        }
      }

      ++v11;
    }
  }

LABEL_13:

  physx::Sc::ShapeSim::markBoundsForUpdate(this, a2);
}

uint64_t notifyActorInteractionsOfTransformChange(uint64_t result)
{
  v1 = *(*(result + 80) + 13) - 1;
  v2 = v1 > 1 || *(result + 184) > 0xFFFFFFFD;
  v3 = *(result + 52);
  if (v3)
  {
    v4 = *(result + 72);
    v5 = *(result + 40);
    do
    {
      v7 = *v5++;
      v6 = v7;
      v8 = *(v7 + 28);
      if (v8 == 1)
      {
        *(v6 + 68) |= 0x20u;
        if ((*(v6 + 29) & 0x20) == 0)
        {
          *(v6 + 29) |= 0x20u;
          v10 = *(v4 + 124);
          if (v10 < *(v4 + 96))
          {
            v11 = *(v6 + 16);
            v12 = *(v4 + 88);
            v13 = *(v12 + 8 * v10);
            v14 = *(v12 + 8 * v11);
            *(v12 + 8 * v10) = v14;
            *(*(v4 + 88) + 8 * v11) = v13;
            *(v13 + 16) = v11;
            *(v14 + 16) = v10;
            v10 = *(v4 + 124);
          }

          *(v4 + 124) = v10 + 1;
        }
      }

      else if (!v8)
      {
        v9 = v6 - 8;
        result = physx::Sc::ShapeInteraction::resetManagerCachedState(v6 - 8);
        if (v2)
        {
          result = physx::Sc::ShapeInteraction::onShapeChangeWhileSleeping(v9, v1 < 2);
        }
      }

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t physx::Sc::SqBoundsManager::addShape(uint64_t this, physx::Sc::ShapeSim *a2)
{
  v3 = this;
  v4 = *(this + 8);
  *(a2 + 17) = v4;
  v9 = a2;
  if ((*(this + 12) & 0x7FFFFFFFu) <= v4)
  {
    this = physx::shdfnd::Array<physx::Sc::ShapeSim *,physx::shdfnd::ReflectionAllocator<physx::Sc::ShapeSim *>>::growAndPushBack(this, &v9);
  }

  else
  {
    *(*this + 8 * v4) = a2;
    *(this + 8) = v4 + 1;
  }

  LODWORD(v9) = -1;
  v5 = *(v3 + 24);
  if ((*(v3 + 28) & 0x7FFFFFFFu) <= v5)
  {
    this = physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::growAndPushBack(v3 + 16, &v9);
  }

  else
  {
    *(*(v3 + 16) + 4 * v5) = -1;
    ++*(v3 + 24);
  }

  v6 = *(a2 + 4) & 0x7FFFFFFF;
  LODWORD(v9) = v6;
  v7 = *(v3 + 40);
  if ((*(v3 + 44) & 0x7FFFFFFFu) <= v7)
  {
    this = physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::growAndPushBack(v3 + 32, &v9);
  }

  else
  {
    *(*(v3 + 32) + 4 * v7) = v6;
    ++*(v3 + 40);
  }

  v9 = a2;
  v8 = *(v3 + 56);
  if ((*(v3 + 60) & 0x7FFFFFFFu) <= v8)
  {
    return physx::shdfnd::Array<physx::Sc::ShapeSim *,physx::shdfnd::ReflectionAllocator<physx::Sc::ShapeSim *>>::growAndPushBack(v3 + 48, &v9);
  }

  *(*(v3 + 48) + 8 * v8) = a2;
  *(v3 + 56) = v8 + 1;
  return this;
}

uint64_t physx::Sc::SqBoundsManager::removeShape(uint64_t this, physx::Sc::ShapeSim *a2)
{
  v2 = *(a2 + 17);
  *(a2 + 17) = -1;
  *(*this + 8 * v2) = *(*this + 8 * (*(this + 8) - 1));
  *(*(this + 32) + 4 * v2) = *(*(this + 32) + 4 * (*(this + 40) - 1));
  *(*(this + 16) + 4 * v2) = *(*(this + 16) + 4 * (*(this + 24) - 1));
  v3 = *(this + 8);
  if (v2 + 1 != v3)
  {
    *(*(*this + 8 * v2) + 68) = v2;
  }

  *(this + 8) = v3 - 1;
  --*(this + 24);
  --*(this + 40);
  return this;
}

__n128 physx::Sc::SimStats::readOut(void *a1, char *__dst, uint64_t a3)
{
  v6 = 0;
  v7 = a3 + 588;
  memset(__src, 0, 24);
  *(&__src[6] + 4) = 0u;
  *(&__src[8] + 4) = 0u;
  *(&__src[10] + 4) = 0u;
  *(&__src[12] + 4) = 0u;
  do
  {
    v8 = __src + v6;
    *(v8 + 124) = 0;
    v9 = (&__src[63] + v6 + 4);
    *(v8 + 116) = 0;
    *(v8 + 35) = 0;
    *(v8 + 132) = 0;
    *(v8 + 40) = 0;
    *(v8 + 41) = 0;
    *(v8 + 39) = 0;
    *(v8 + 84) = 0;
    *(v8 + 133) = 0;
    v9[1] = 0;
    v9[2] = 0;
    *v9 = 0;
    *(v8 + 88) = 0;
    *(v8 + 90) = 0;
    *(v8 + 89) = 0;
    v6 += 28;
    *(v8 + 182) = 0;
  }

  while (v6 != 196);
  memset(&__src[3], 0, 28);
  memcpy(__dst, __src, 0x384uLL);
  v10 = 0;
  v11 = 0;
  v12 = a1 + 2;
  v13 = __dst + 704;
  v14 = 704;
  do
  {
    v15 = 0;
    v16 = v14;
    do
    {
      *&v13[v15] += *(v12 + v15);
      if (v10 != v15)
      {
        *&__dst[v16] += *(v12 + v15);
      }

      v16 += 28;
      v15 += 4;
    }

    while (v15 != 28);
    ++v11;
    v14 += 4;
    v10 += 4;
    v13 += 28;
    v12 = (v12 + 28);
  }

  while (v11 != 5);
  v17 = 0;
  *(__dst + 108) = *a1;
  v18 = __dst + 340;
  v19 = __dst + 316;
  v20 = (a3 + 200);
  v21 = 6;
  do
  {
    *&__dst[28 * v17 + 116 + 4 * v17] = *(a3 + 28 * v17 + 4 * v17);
    *&__dst[28 * v17 + 508 + 4 * v17] = *(a3 + 392 + 28 * v17 + 4 * v17);
    *&__dst[28 * v17 + 312 + 4 * v17] = *(a3 + 196 + 28 * v17 + 4 * v17);
    if (v17 <= 5)
    {
      v22 = v20;
      v23 = v19;
      v24 = v18;
      v25 = v21;
      do
      {
        v26 = *(v22 - 49);
        *(v23 - 49) = v26;
        *(v24 - 49) = v26;
        v27 = v22[49];
        v23[49] = v27;
        v24[49] = v27;
        v28 = *v22++;
        *v23++ = v28;
        *v24 = v28;
        v24 += 7;
        --v25;
      }

      while (v25);
    }

    ++v17;
    --v21;
    v18 += 32;
    v19 += 32;
    v20 += 8;
  }

  while (v17 != 7);
  *(__dst + 76) = *v7;
  *(__dst + 21) = *(a3 + 596);
  *__dst = *(a3 + 600);
  *(__dst + 2) = *(a3 + 608);
  *(__dst + 18) = *(a3 + 624) << 14;
  *(__dst + 60) = *(v7 + 24);
  *(__dst + 17) = *(a3 + 620);
  result = *(v7 + 40);
  *(__dst + 88) = result;
  *(__dst + 26) = *(a3 + 644);
  return result;
}

uint64_t physx::Sc::SqBoundsManager::syncBounds(uint64_t a1, uint64_t (***a2)(void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (***a3)(void, void, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a1 + 56);
  if (v10)
  {
    v12 = *(a1 + 48);
    do
    {
      v13 = *v12;
      v14 = *(*v12 + 68);
      if (v14 != -1 && *(*(a1 + 16) + 4 * v14) == -1)
      {
        v15 = *(v13 + 8);
        if (*(*(v15 + 80) + 13) - 1 >= 2)
        {
          v15 = 0;
        }

        *(*(a1 + 16) + 4 * v14) = (**a3)(a3, *(v15 + 80) + *(&physx::Sc::gOffsetTable + *(*(v15 + 80) + 13) + 10), *(v13 + 56) + qword_1EE1C7DF8);
      }

      ++v12;
      --v10;
    }

    while (v10);
  }

  *(a1 + 56) = 0;
  v16 = *(a1 + 16);
  v17 = *(a1 + 32);
  v18 = *(a1 + 8);
  v19 = **a2;

  return v19(a2, v16, v17, a4, v18, a6);
}

physx::Sc::RigidSim *physx::Sc::StaticCore::setActor2World(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = *a2;
  *(a1 + 32) = *(a2 + 16);
  *(a1 + 40) = *(a2 + 24);
  result = *a1;
  if (result)
  {
    return physx::Sc::RigidSim::notifyShapesOfTransformChange(result);
  }

  return result;
}

physx::Sc::TriggerInteraction *physx::Sc::TriggerInteraction::TriggerInteraction(physx::Sc::TriggerInteraction *this, physx::Sc::ShapeSim *a2, physx::Sc::ShapeSim *a3)
{
  v4 = *(a3 + 1);
  *(this + 1) = *(a2 + 1);
  v5 = (this + 8);
  *(this + 2) = v4;
  *(this + 3) = -1;
  *(this + 8) = -1;
  *(this + 18) = 1281;
  *(this + 38) = 0;
  *(this + 5) = a2;
  *(this + 6) = a3;
  *(this + 14) = -1;
  *this = &unk_1F5D20B88;
  *(this + 38) = 32;
  *(this + 78) = 0;
  v6 = physx::Sc::activateInteraction((this + 8), 0, a3);
  physx::Sc::ActorSim::registerInteractionInActor(*v5, v5);
  physx::Sc::ActorSim::registerInteractionInActor(*(this + 2), v5);
  v7 = *(*v5 + 9);
  physx::Sc::Scene::registerInteraction(v7, v5, v6);
  v8 = *(this + 5);
  v9 = *(this + 6);
  if (v8 <= v9)
  {
    v10 = *(this + 5);
  }

  else
  {
    v10 = *(this + 6);
  }

  if (v8 <= v9)
  {
    v11 = *(this + 6);
  }

  else
  {
    v11 = *(this + 5);
  }

  physx::shdfnd::internal::HashMapBase<physx::Sc::ElementSimKey,physx::Sc::ElementSimInteraction *,physx::shdfnd::Hash<physx::Sc::ElementSimKey>,physx::shdfnd::NonTrackingAllocator>::insert((*(v7 + 3992) + 3704), v10, v11, this);
  *(this + 36) = 0;
  return this;
}

void physx::Sc::TriggerInteraction::~TriggerInteraction(physx::Sc::TriggerInteraction *this)
{
  *this = &unk_1F5D20B88;
  v2 = (this + 8);
  v3 = *(*(this + 1) + 72);
  physx::Sc::Scene::unregisterInteraction(v3, (this + 8));
  physx::Sc::NPhaseCore::unregisterInteraction(*(v3 + 3992), this);
  physx::Sc::ActorSim::unregisterInteractionFromActor(*v2, v2);
  physx::Sc::ActorSim::unregisterInteractionFromActor(*(this + 2), v2);
}

{
  physx::Sc::TriggerInteraction::~TriggerInteraction(this);
  if (v1)
  {
    v2 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

    v2();
  }
}

BOOL isOneActorActive(physx::Sc::TriggerInteraction *a1)
{
  v1 = *(*(a1 + 5) + 8);
  if (v1)
  {
    v2 = *(*(v1 + 80) + 13) - 3 >= 0xFFFFFFFE;
  }

  else
  {
    v2 = 0;
  }

  result = 1;
  if (!v2 || *(v1 + 184) >= 0xFFFFFFFE)
  {
    v3 = *(*(a1 + 6) + 8);
    v4 = v3 && *(*(v3 + 80) + 13) - 3 >= 0xFFFFFFFE;
    if (!v4 || *(v3 + 184) >= 0xFFFFFFFE)
    {
      return 0;
    }
  }

  return result;
}

uint64_t physx::shdfnd::Array<physx::Sc::ActorPairReport *,physx::shdfnd::ReflectionAllocator<physx::Sc::ActorPairReport *>>::growAndPushBack(uint64_t result, void *a2)
{
  v3 = result;
  v4 = *(result + 12);
  if ((v4 & 0x7FFFFFFF) != 0)
  {
    v5 = 2 * v4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    result = physx::shdfnd::ReflectionAllocator<physx::Sc::ActorPairReport *>::allocate(result, 8 * v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v6 = result;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v3 + 8);
  v8 = &v6[v7];
  if (v7)
  {
    v9 = *v3;
    v10 = v6;
    do
    {
      v11 = *v9++;
      *v10++ = v11;
    }

    while (v10 < v8);
  }

  *v8 = *a2;
  if ((*(v3 + 12) & 0x80000000) == 0 && *v3)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    LODWORD(v7) = *(v3 + 8);
  }

  *v3 = v6;
  *(v3 + 8) = v7 + 1;
  *(v3 + 12) = v5;
  return result;
}

float32x4_t physx::PxQuat::operator*@<Q0>(uint64_t a1@<X0>, int32x4_t *a2@<X1>, float32x4_t *a3@<X8>, int8x16_t a4@<Q0>, int8x16_t a5@<Q2>)
{
  a4.i64[0] = *a1;
  a5.i32[0] = *(a1 + 8);
  v5 = *a2;
  v6 = vextq_s8(vextq_s8(a5, a5, 4uLL), a4, 0xCuLL);
  a4.i32[2] = a5.i32[0];
  v7 = vextq_s8(vextq_s8(a4, a4, 0xCuLL), a4, 8uLL);
  *&a4.i32[3] = -COERCE_FLOAT(*a1);
  v7.f32[3] = -COERCE_FLOAT(HIDWORD(*a1));
  v8 = vzip1q_s32(v5, v5);
  v8.i32[0] = a2->i64[1];
  v6.i32[3] = v8.i32[0];
  v5.i32[3] = a5.i32[0];
  result = vmlsq_f32(vmlaq_f32(vmlaq_n_f32(vmulq_f32(vextq_s8(vdupq_laneq_s32(*a2, 3), *a2, 4uLL), a4), *a2, *(a1 + 12)), v8, v7), v6, vzip2q_s32(vzip1q_s32(v5, vextq_s8(v5, v5, 0xCuLL)), v5));
  *a3 = result;
  return result;
}

uint64_t physx::shdfnd::Array<physx::PxsCachedTransform,physx::shdfnd::VirtualAllocator>::recreate(void *a1, unsigned int a2)
{
  result = (*(**a1 + 16))(*a1, 32 * a2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
  v5 = result;
  v6 = *(a1 + 4);
  v7 = a1[1];
  if (v6)
  {
    v8 = result + 32 * v6;
    v9 = a1[1];
    v10 = result;
    do
    {
      *v10 = *v9;
      *(v10 + 16) = *(v9 + 16);
      *(v10 + 24) = *(v9 + 24);
      *(v10 + 28) = *(v9 + 28);
      v10 += 32;
      v9 += 32;
    }

    while (v10 < v8);
  }

  if ((*(a1 + 5) & 0x80000000) == 0 && v7)
  {
    result = (*(**a1 + 24))();
  }

  a1[1] = v5;
  *(a1 + 5) = a2;
  return result;
}

uint64_t physx::shdfnd::Array<physx::Sc::ShapeSim *,physx::shdfnd::ReflectionAllocator<physx::Sc::ShapeSim *>>::growAndPushBack(uint64_t result, void *a2)
{
  v3 = result;
  v4 = *(result + 12);
  if ((v4 & 0x7FFFFFFF) != 0)
  {
    v5 = 2 * v4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    result = physx::shdfnd::ReflectionAllocator<physx::Sc::ShapeSim *>::allocate(result, 8 * v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v6 = result;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v3 + 8);
  v8 = &v6[v7];
  if (v7)
  {
    v9 = *v3;
    v10 = v6;
    do
    {
      v11 = *v9++;
      *v10++ = v11;
    }

    while (v10 < v8);
  }

  *v8 = *a2;
  if ((*(v3 + 12) & 0x80000000) == 0 && *v3)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    LODWORD(v7) = *(v3 + 8);
  }

  *v3 = v6;
  *(v3 + 8) = v7 + 1;
  *(v3 + 12) = v5;
  return result;
}

physx::Sq::AABBPruner *physx::Sq::AABBPruner::AABBPruner(physx::Sq::AABBPruner *this, char a2, uint64_t a3)
{
  *this = &unk_1F5D20D28;
  *(this + 1) = 0;
  *(this + 4) = 1;
  *(this + 20) = 0u;
  *(this + 36) = 0u;
  *(this + 52) = 0u;
  *(this + 68) = 0;
  physx::Sq::ExtendedBucketPruner::ExtendedBucketPruner((this + 80), (this + 416));
  *(this + 50) = 0x6400000000;
  *(this + 412) = 0u;
  *(this + 428) = 0u;
  *(this + 440) = 0u;
  *(this + 114) = -1;
  *(this + 29) = 0u;
  *(this + 30) = 0u;
  *(this + 496) = a2;
  *(this + 497) = 0;
  *(this + 504) = 0u;
  *(this + 520) = 0u;
  *(this + 67) = a3;
  return this;
}

void physx::Sq::AABBPruner::~AABBPruner(physx::Sq::AABBPruner *this)
{
  *this = &unk_1F5D20D28;
  physx::Sq::AABBPruner::release(this);
  v2 = *(this + 133);
  if ((v2 & 0x80000000) == 0 && (v2 & 0x7FFFFFFF) != 0 && *(this + 65) != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v4 = *(this + 129);
  if ((v4 & 0x80000000) == 0 && (v4 & 0x7FFFFFFF) != 0 && *(this + 63) != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  physx::IG::HandleManager<unsigned int>::~HandleManager(this + 480);
  physx::IG::HandleManager<unsigned int>::~HandleManager(this + 464);
  physx::Sq::PruningPool::~PruningPool((this + 416));
  physx::Sq::ExtendedBucketPruner::~ExtendedBucketPruner((this + 80));
  *(this + 2) = 0;
  *(this + 3) = 0;
  if (*(this + 4))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(this + 4) = 0;
}

{
  physx::Sq::AABBPruner::~AABBPruner(this);
  if (v1)
  {
    v2 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

    v2();
  }
}

uint64_t physx::Sq::AABBPruner::release(physx::Sq::AABBPruner *this)
{
  physx::Sq::ExtendedBucketPruner::release((this + 80));
  *(this + 18) = 0;
  v5 = 0;
  physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::resize(this + 464, 0, &v5);
  physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::recreate(this + 464, *(this + 118));
  v6 = 0;
  physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::resize(this + 480, 0, &v6);
  result = physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::recreate(this + 480, *(this + 122));
  if (*(this + 7))
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(this + 7) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  if (*(this + 4))
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(this + 4) = 0;
  v3 = *(this + 6);
  if (v3)
  {
    physx::Sq::AABBTree::~AABBTree(*(this + 6));
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v3);
  }

  *(this + 6) = 0;
  v4 = *(this + 1);
  if (v4)
  {
    physx::Sq::AABBTree::~AABBTree(*(this + 1));
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v4);
  }

  *(this + 1) = 0;
  *(this + 16) = 0;
  *(this + 100) = 0;
  *(this + 128) = 0;
  *(this + 497) = 0;
  return result;
}

uint64_t physx::Sq::AABBPruner::addObjects(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, unsigned int a5, int a6)
{
  if (!a5)
  {
    return 1;
  }

  v6 = a6;
  v8 = a2;
  if (!a6 || !*(a1 + 8))
  {
    *(a1 + 497) = 1;
  }

  v20 = physx::Sq::PruningPool::addObjects((a1 + 416), a2, a3, a4, a5);
  if (*(a1 + 496) == 1)
  {
    if (*(a1 + 8))
    {
      *(a1 + 498) = 1;
      if ((v6 & 1) == 0)
      {
        if (v20)
        {
          v10 = v20;
          while (1)
          {
            v11 = *v8++;
            v12 = *(*(a1 + 440) + 4 * v11);
            v13 = *(a1 + 72);
            v14 = (a1 + 96 + 72 * *(a1 + 88));
            v15 = v14[1];
            if (!v15)
            {
              break;
            }

            if (!*(v15 + 1144))
            {
              goto LABEL_17;
            }

LABEL_18:
            *(a1 + 256) = 0;
            v18 = physx::Sq::IncrementalAABBTree::insert(v15, v12, *(*(a1 + 240) + 8), a1 + 248);
            physx::Sq::IncrementalAABBPrunerCore::updateMapping(a1 + 88, v14 + 2, v12, v18);
            if (!--v10)
            {
              return v20 == a5;
            }
          }

          v16 = physx::shdfnd::Foundation::mInstance;
          if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
          {
            v17 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Sq::IncrementalAABBTree>::getName() [T = physx::Sq::IncrementalAABBTree]";
          }

          else
          {
            v17 = "<allocation names disabled>";
          }

          v15 = (*(*(v16 + 24) + 16))(v16 + 24, 1184, v17, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/scenequery/src/SqIncrementalAABBPrunerCore.cpp", 88);
          *(v15 + 544) = 0x4000000000;
          *(v15 + 528) = 1;
          *(v15 + 536) = v15 + 16;
          *(v15 + 552) = 256;
          *(v15 + 560) = 5120;
          *(v15 + 568) = 0;
          *(v15 + 1112) = 0x4000000000;
          *(v15 + 1096) = 1;
          *(v15 + 1104) = v15 + 584;
          *(v15 + 1120) = 256;
          *(v15 + 1128) = 0x8000;
          *(v15 + 1136) = 0u;
          *(v15 + 1152) = 0u;
          *(v15 + 1168) = 0u;
          v14[1] = v15;
LABEL_17:
          v14->i32[0] = v13;
          goto LABEL_18;
        }
      }
    }
  }

  return v20 == a5;
}

uint64_t physx::Sq::AABBPruner::updateObjectsAfterManualBoundsUpdates(uint64_t this, unsigned int *a2, unsigned int a3)
{
  if (a3)
  {
    v3 = this;
    *(this + 497) = 1;
    if (*(this + 496) == 1)
    {
      if (*(this + 8))
      {
        *(this + 498) = 1;
        v5 = *(this + 424);
        v6 = *(this + 432);
        v7 = a3;
        do
        {
          v8 = *a2++;
          v9 = *(*(v3 + 440) + 4 * v8);
          v12 = v9;
          if (*(v3 + 472) <= v9 || (v10 = *(*(v3 + 464) + 4 * v9), v10 == -1))
          {
            this = physx::Sq::ExtendedBucketPruner::updateObject(v3 + 80, v5 + 24 * v9, (v6 + 16 * v9), v9);
          }

          else
          {
            this = physx::Sq::AABBTree::markNodeForRefit(*(v3 + 8), v10);
          }

          if ((*(v3 + 400) - 3) <= 1)
          {
            v11 = *(v3 + 528);
            if ((*(v3 + 532) & 0x7FFFFFFFu) <= v11)
            {
              this = physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::growAndPushBack(v3 + 520, &v12);
            }

            else
            {
              *(*(v3 + 520) + 4 * v11) = v12;
              ++*(v3 + 528);
            }
          }

          --v7;
        }

        while (v7);
      }
    }
  }

  return this;
}

physx::Sq::BitArray *physx::Sq::AABBTree::markNodeForRefit(physx::Sq::AABBTree *this, unsigned int a2)
{
  v5 = *(this + 10);
  result = (this + 80);
  if (!v5)
  {
    result = physx::Sq::BitArray::init(result, *(this + 16));
  }

  if (!*(this + 7))
  {
    v6 = *(this + 16);
    if (v6)
    {
      v7 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 4 * v6, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/scenequery/src/SqAABBTree.cpp", 464);
    }

    else
    {
      v7 = 0;
    }

    *(this + 7) = v7;
    result = _createParentArray(v7, *(this + 2), *(this + 2), *(this + 2));
  }

  v8 = *(this + 10);
  do
  {
    v9 = a2 >> 5;
    v10 = *(v8 + 4 * v9);
    if (((1 << a2) & v10) != 0)
    {
      break;
    }

    *(v8 + 4 * v9) = (1 << a2) | v10;
    if (*(this + 24) > v9)
    {
      LODWORD(v9) = *(this + 24);
    }

    *(this + 24) = v9;
    v11 = a2 == *(*(this + 7) + 4 * a2);
    a2 = *(*(this + 7) + 4 * a2);
  }

  while (!v11);
  return result;
}

uint64_t physx::Sq::AABBPruner::updateObjectsAndInflateBounds(uint64_t result, unsigned int *a2, _DWORD *a3, uint64_t a4, unsigned int a5)
{
  if (a5)
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    v8 = result;
    *(result + 497) = 1;
    v9 = *(result + 440);
    v10 = *(result + 424);
    v11 = a5;
    v12 = vdupq_n_s32(0x3BA3D70Au);
    v13 = a2;
    v14 = a3;
    v15 = a5;
    do
    {
      v16 = *v13++;
      v17 = (v10 + 24 * *(v9 + 4 * v16));
      v18 = *v14++;
      v19 = a4 + 24 * v18;
      v20 = *(v19 + 12);
      v21 = vmulq_f32(vsubq_f32(v20, *v19), v12);
      v22 = vsubq_f32(*v19, v21);
      v23 = vaddq_f32(v20, v21);
      v22.i32[3] = v23.i32[0];
      *v17 = v22;
      v17[1].i64[0] = vextq_s8(v23, v23, 4uLL).u64[0];
      --v15;
    }

    while (v15);
    if (*(result + 496) == 1 && *(result + 8))
    {
      *(result + 498) = 1;
      v24 = *(result + 432);
      do
      {
        v25 = *v7++;
        v26 = *(*(v8 + 440) + 4 * v25);
        v29 = v26;
        if (*(v8 + 472) <= v26 || (v27 = *(*(v8 + 464) + 4 * v26), v27 == -1))
        {
          result = physx::Sq::ExtendedBucketPruner::updateObject(v8 + 80, v5 + 24 * *v6, (v24 + 16 * v26), v26);
        }

        else
        {
          result = physx::Sq::AABBTree::markNodeForRefit(*(v8 + 8), v27);
        }

        if ((*(v8 + 400) - 3) <= 1)
        {
          v28 = *(v8 + 528);
          if ((*(v8 + 532) & 0x7FFFFFFFu) <= v28)
          {
            result = physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::growAndPushBack(v8 + 520, &v29);
          }

          else
          {
            *(*(v8 + 520) + 4 * v28) = v29;
            ++*(v8 + 528);
          }
        }

        ++v6;
        --v11;
      }

      while (v11);
    }
  }

  return result;
}

_BYTE *physx::Sq::AABBPruner::removeObjects(_BYTE *this, unsigned int *a2, unsigned int a3)
{
  if (a3)
  {
    v4 = this;
    this[497] = 1;
    v5 = (this + 416);
    v6 = a3;
    while (1)
    {
      v7 = *a2++;
      v8 = *(v4 + 440);
      v15 = *(*(v4 + 432) + 16 * *(v8 + 4 * v7));
      v9 = *(v8 + 4 * v7);
      this = physx::Sq::PruningPool::removeObject(v5, v7);
      if (*(v4 + 496) == 1)
      {
        v10 = this;
        this = *(v4 + 8);
        if (this)
        {
          break;
        }
      }

LABEL_14:
      if (!--v6)
      {
        if (!*v5)
        {
          this = physx::Sq::AABBPruner::release(v4);
          *(v4 + 497) = 1;
        }

        return this;
      }
    }

    *(v4 + 498) = 1;
    if (*(v4 + 472) <= v9)
    {
      v14 = *(*(v4 + 432) + 16 * v9);
    }

    else
    {
      v11 = *(*(v4 + 464) + 4 * v9);
      v14 = *(*(v4 + 432) + 16 * v9);
      if (v11 != -1)
      {
        physx::Sq::AABBTree::markNodeForRefit(this, v11);
        physx::Sq::ExtendedBucketPruner::swapIndex((v4 + 80), v9, &v14, v10, 1);
        goto LABEL_10;
      }
    }

    LODWORD(v13) = 0;
    physx::Sq::ExtendedBucketPruner::removeObject(v4 + 80, &v15, v9, &v14, v10, &v13);
LABEL_10:
    this = physx::Sq::AABBTreeUpdateMap::invalidate((v4 + 464), v9, v10, **(v4 + 8), *(*(v4 + 8) + 16));
    if (*(v4 + 48))
    {
      v13 = __PAIR64__(v10, v9);
      v12 = *(v4 + 512);
      if ((*(v4 + 516) & 0x7FFFFFFFu) <= v12)
      {
        this = physx::shdfnd::Array<physx::Sq::AABBPruner::NewTreeFixup,physx::shdfnd::ReflectionAllocator<physx::Sq::AABBPruner::NewTreeFixup>>::growAndPushBack(v4 + 504, &v13);
      }

      else
      {
        *(*(v4 + 504) + 8 * v12) = v13;
        ++*(v4 + 512);
      }
    }

    goto LABEL_14;
  }

  return this;
}

uint64_t *physx::Sq::AABBTreeUpdateMap::invalidate(uint64_t *result, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v5 = *(result + 2);
  if (v5 <= a2)
  {
    v6 = -1;
  }

  else
  {
    v6 = *(*result + 4 * a2);
  }

  if (v5 <= a3)
  {
    v7 = -1;
  }

  else
  {
    v7 = *(*result + 4 * a3);
  }

  if (v6 != -1)
  {
    v8 = a5 + 28 * v6;
    v11 = *(v8 + 24);
    v9 = (v8 + 24);
    v10 = v11;
    v12 = (v11 >> 1) & 0xF;
    if (v12)
    {
      v13 = (a4 + ((v10 >> 3) & 0x1FFFFFFC));
      v14 = v13;
      v15 = v12;
      while (*v14 != a2)
      {
        ++v14;
        if (!--v15)
        {
          goto LABEL_15;
        }
      }

      v16 = v12 - 1;
      *v9 = v10 & 0xFFFFFFE1 | (2 * v16);
      *v14 = -1;
      *(*result + 4 * a2) = -1;
      if (v15 != 1)
      {
        v17 = *v14;
        *v14 = v13[v16];
        v13[v16] = v17;
      }
    }
  }

LABEL_15:
  if (a2 != a3 && v7 != -1)
  {
    v18 = *(a5 + 28 * v7 + 24);
    v19 = (v18 >> 1) & 0xF;
    if (v19)
    {
      for (i = (a4 + ((v18 >> 3) & 0x1FFFFFFC)); *i != a3; ++i)
      {
        if (!--v19)
        {
          return result;
        }
      }

      *i = a2;
      v21 = *result;
      *(*result + 4 * a2) = v7;
      *(v21 + 4 * a3) = -1;
    }
  }

  return result;
}

uint64_t physx::Sq::AABBPruner::overlap(uint64_t a1, uint64_t a2, unsigned int (***a3)(void, int *, uint64_t), double a4, double a5, double a6, double a7, float32x4_t a8, double a9, double a10, float32x4_t a11)
{
  v51 = *MEMORY[0x1E69E9840];
  v14 = *(a1 + 8);
  if (v14)
  {
    v15 = *(a2 + 98);
    if (v15 > 2)
    {
      if (v15 != 4)
      {
        if (v15 != 3)
        {
          goto LABEL_25;
        }

        if (!*(a2 + 96))
        {
          v35 = *(a2 + 80);
          v36 = *(a2 + 92);
          v37 = *(a2 + 72);
          v38 = *(a2 + 84);
          *v39.f32 = vmul_f32(vadd_f32(v37, v38), 0x3F0000003F000000);
          v39.f32[2] = (v35 + v36) * 0.5;
          v39.i32[3] = 0;
          v40 = v36 - v35;
          *v41.f32 = vmul_f32(vsub_f32(v38, v37), 0x3F0000003F000000);
          v41.i64[1] = COERCE_UNSIGNED_INT(v40 * 0.5);
          v43 = v39;
          v44 = v41;
          result = physx::Gu::AABBTreeOverlap<physx::Gu::AABBAABBTest,physx::Sq::AABBTree,physx::Sq::AABBTreeRuntimeNode,physx::Sq::PrunerPayload,physx::Sq::PrunerCallback>::operator()(&v42, *(a1 + 432), *(a1 + 424), v14, &v43, a3);
          if (!result)
          {
            return result;
          }

          goto LABEL_25;
        }
      }

      physx::Gu::OBBAABBTests<true>::OBBAABBTests(&v43, a2 + 48, (a2 + 12), a2, a4, a5, a6, a7, a8, a9, a10, a11);
      if ((physx::Gu::AABBTreeOverlap<physx::Gu::OBBAABBTests<true>,physx::Sq::AABBTree,physx::Sq::AABBTreeRuntimeNode,physx::Sq::PrunerPayload,physx::Sq::PrunerCallback>::operator()(&v42, *(a1 + 432), *(a1 + 424), *(a1 + 8), &v43, a3) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*(a2 + 98))
      {
        if (v15 != 2)
        {
          goto LABEL_25;
        }

        v16 = *(a2 + 60) + *(a2 + 60);
        v17 = *(a2 + 120);
        *&a6 = *(a2 + 124) * 1.01;
        v21.i64[0] = *(a2 + 112);
        v18 = *(a2 + 12);
        v19 = COERCE_DOUBLE(vadd_f32(*v21.f32, vmul_n_f32(v18, v16)));
        v20 = COERCE_DOUBLE(vbsl_s8(vceqz_f32(v18), *v21.f32, vbsl_s8(vcgez_f32(v18), vneg_f32(0x80000000800000), 0x80000000800000)));
        v21.i64[1] = LODWORD(v17);
        v22 = *(a2 + 20);
        *v23.f32 = v18;
        v23.i64[1] = LODWORD(v22);
        v43 = v21;
        v44 = v23;
        *&v24 = vext_s8(v18, *&vextq_s8(v23, v23, 8uLL), 4uLL);
        *(&v24 + 1) = v18.u32[0];
        v25 = vdupq_lane_s32(*&a6, 0);
        v25.i32[3] = 0;
        v45 = v24;
        v46 = v25;
        v26 = vabsq_f32(v23);
        *&v27 = vext_s8(*v26.i8, *&vextq_s8(v26, v26, 8uLL), 4uLL);
        v28 = v17 + (v16 * v22);
        v29 = -3.4028e38;
        if (v22 >= 0.0)
        {
          v29 = 3.4028e38;
        }

        if (v22 != 0.0)
        {
          v17 = v29;
        }

        v30 = v16 < 3.4028e38;
        v31 = v16 >= 3.4028e38 ? v17 : v28;
        *v32.i64 = v30 ? v19 : v20;
        v32.i64[1] = LODWORD(v31);
        v47 = v26;
        *(&v27 + 1) = v26.u32[0];
        v48 = v27;
        v49 = vminq_f32(v21, v32);
        v50 = vmaxq_f32(v21, v32);
        if (physx::Gu::AABBTreeOverlap<physx::Gu::CapsuleAABBTest,physx::Sq::AABBTree,physx::Sq::AABBTreeRuntimeNode,physx::Sq::PrunerPayload,physx::Sq::PrunerCallback>::operator()(&v42, *(a1 + 432), *(a1 + 424), v14, &v43, a3))
        {
          goto LABEL_25;
        }

        return 0;
      }

      LODWORD(a4) = *(a2 + 112);
      v33 = *(a2 + 100);
      v33.i64[1] = *(a2 + 108);
      v43 = v33;
      *&a4 = *&a4 * *&a4;
      *v44.f32 = vdup_lane_s32(*&a4, 0);
      if ((physx::Gu::AABBTreeOverlap<physx::Gu::SphereAABBTest,physx::Sq::AABBTree,physx::Sq::AABBTreeRuntimeNode,physx::Sq::PrunerPayload,physx::Sq::PrunerCallback>::operator()(&v42, *(a1 + 432), *(a1 + 424), v14, &v43, a3) & 1) == 0)
      {
        return 0;
      }
    }
  }

LABEL_25:
  if (*(a1 + 496) == 1 && *(a1 + 236) + *(a1 + 164) + *(a1 + 324))
  {
    return physx::Sq::ExtendedBucketPruner::overlap(a1 + 80, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  }

  else
  {
    return 1;
  }
}

uint64_t physx::Gu::AABBTreeOverlap<physx::Gu::OBBAABBTests<true>,physx::Sq::AABBTree,physx::Sq::AABBTreeRuntimeNode,physx::Sq::PrunerPayload,physx::Sq::PrunerCallback>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, float32x4_t *a5, unsigned int (***a6)(void, int *, uint64_t))
{
  v8 = a4;
  v46 = *MEMORY[0x1E69E9840];
  v45 = 0x10000000100;
  v9 = 1;
  v43 = 1;
  v44 = v42;
  v10 = a4[2];
  v42[0] = v10;
  while (1)
  {
    v11 = v9 - 1;
    v12 = v44[v9 - 1];
    v13 = *(v12 + 12);
    v14.i64[0] = 0x3F0000003F000000;
    v14.i64[1] = 0x3F0000003F000000;
    v15 = vmulq_f32(vsubq_f32(v13, *v12), v14);
    v15.i32[3] = 0;
    v16 = vmulq_f32(vaddq_f32(*v12, v13), v14);
    v16.i32[3] = 0;
    if (physx::Gu::OBBAABBTests<true>::operator()(a5, v16, v15))
    {
      v17 = 2 * v9;
      while (1)
      {
        v11 = v9 - 1;
        v18 = *(v12 + 24);
        if (v18)
        {
          break;
        }

        v12 = v10 + 28 * (*(v12 + 24) >> 1);
        v44[v11] = v12 + 28;
        if (v9 == (HIDWORD(v45) & 0x7FFFFFFF))
        {
          physx::shdfnd::Array<physx::Sq::AABBTreeRuntimeNode const*,physx::shdfnd::InlineAllocator<2048u,physx::shdfnd::ReflectionAllocator<physx::Sq::AABBTreeRuntimeNode const*>>>::resizeUninitialized(v42, v17);
        }

        v19 = *(v12 + 12);
        v20.i64[0] = 0x3F0000003F000000;
        v20.i64[1] = 0x3F0000003F000000;
        v21 = vmulq_f32(vsubq_f32(v19, *v12), v20);
        v21.i32[3] = 0;
        v22 = vmulq_f32(vaddq_f32(*v12, v19), v20);
        v22.i32[3] = 0;
        ++v9;
        v17 += 2;
        if (!physx::Gu::OBBAABBTests<true>::operator()(a5, v22, v21))
        {
          v11 = v9 - 1;
          goto LABEL_16;
        }
      }

      v23 = (v18 >> 1) & 0xF;
      if (v23)
      {
        break;
      }
    }

LABEL_16:
    v9 = v11;
    if (!v11)
    {
      v34 = 1;
      goto LABEL_19;
    }
  }

  v24 = (*v8 + ((v18 >> 3) & 0x1FFFFFFC));
  v25 = (v18 >> 1) & 0xF;
  while (1)
  {
    v27 = *v24++;
    v26 = v27;
    if (v23 < 2 || (v28 = a3 + 24 * v26, v29 = *(v28 + 12), v30 = vaddq_f32(*v28, v29), v31.i64[0] = 0x3F0000003F000000, v31.i64[1] = 0x3F0000003F000000, v32 = vmulq_f32(vsubq_f32(v29, *v28), v31), v33 = vmulq_f32(v30, v31), v33.i32[3] = 0, v32.i32[3] = 0, physx::Gu::OBBAABBTests<true>::operator()(a5, v33, v32)))
    {
      v41 = 0;
      if (!(**a6)(a6, &v41, a2 + 16 * v26))
      {
        break;
      }
    }

    if (!--v25)
    {
      v8 = a4;
      goto LABEL_16;
    }
  }

  v34 = 0;
LABEL_19:
  if ((v45 & 0x8000000000000000) == 0 && (v45 & 0x7FFFFFFF00000000) != 0 && v44 != v42 && v44 != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  return v34;
}

uint64_t physx::Gu::AABBTreeOverlap<physx::Gu::AABBAABBTest,physx::Sq::AABBTree,physx::Sq::AABBTreeRuntimeNode,physx::Sq::PrunerPayload,physx::Sq::PrunerCallback>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, float32x4_t *a5, unsigned int (***a6)(void, int *, uint64_t))
{
  v38 = *MEMORY[0x1E69E9840];
  v37 = 0x10000000100;
  v8 = 1;
  v35 = 1;
  v36 = v34;
  v9 = a4[2];
  v34[0] = v9;
  while (2)
  {
    v10 = 2 * v8--;
    v11 = v36[v8];
    while (1)
    {
      v12 = *(v11 + 12);
      v13.i64[0] = 0x3F0000003F000000;
      v13.i64[1] = 0x3F0000003F000000;
      v14 = vmulq_f32(vsubq_f32(v12, *v11), v13);
      v14.i32[3] = 0;
      v15 = vmulq_f32(vaddq_f32(*v11, v12), v13);
      v15.i32[3] = 0;
      if ((~vuzp1_s8(vmovn_s32(vcgeq_f32(vaddq_f32(a5[1], v14), vabdq_f32(v15, *a5))), *v12.f32).u32[0] & 0xFFFFFF) != 0)
      {
        break;
      }

      if (v12.i8[12])
      {
        v16 = (v12.i32[3] >> 1) & 0xF;
        if (v16)
        {
          v17 = (*a4 + 4 * (v12.i32[3] >> 5));
          v18 = (v12.i32[3] >> 1) & 0xF;
          while (1)
          {
            v20 = *v17++;
            v19 = v20;
            if (v16 < 2 || (v21 = a3 + 24 * v19, v22 = *(v21 + 12), v23.i64[0] = 0x3F0000003F000000, v23.i64[1] = 0x3F0000003F000000, v24 = vmulq_f32(vsubq_f32(v22, *v21), v23), v24.i32[3] = 0, v25 = vmulq_f32(vaddq_f32(*v21, v22), v23), v25.i32[3] = 0, *v24.f32 = vmovn_s32(vcgeq_f32(vaddq_f32(a5[1], v24), vabdq_f32(v25, *a5))), (~vuzp1_s8(*v24.f32, *v24.f32).u32[0] & 0xFFFFFF) == 0))
            {
              v33 = 0;
              if (!(**a6)(a6, &v33, a2 + 16 * v19))
              {
                break;
              }
            }

            if (!--v18)
            {
              goto LABEL_14;
            }
          }

          v26 = 0;
          goto LABEL_17;
        }

        break;
      }

      v11 = v9 + 28 * (v12.i32[3] >> 1);
      v36[v8] = v11 + 28;
      if (v8 + 1 == (HIDWORD(v37) & 0x7FFFFFFF))
      {
        physx::shdfnd::Array<physx::Sq::AABBTreeRuntimeNode const*,physx::shdfnd::InlineAllocator<2048u,physx::shdfnd::ReflectionAllocator<physx::Sq::AABBTreeRuntimeNode const*>>>::resizeUninitialized(v34, v10);
      }

      v10 += 2;
      ++v8;
    }

LABEL_14:
    if (v8)
    {
      continue;
    }

    break;
  }

  v26 = 1;
LABEL_17:
  if ((v37 & 0x8000000000000000) == 0)
  {
    v27 = (v37 & 0x7FFFFFFF00000000) == 0 || v36 == v34;
    if (!v27 && v36 != 0)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }
  }

  return v26;
}

uint64_t physx::Gu::AABBTreeOverlap<physx::Gu::CapsuleAABBTest,physx::Sq::AABBTree,physx::Sq::AABBTreeRuntimeNode,physx::Sq::PrunerPayload,physx::Sq::PrunerCallback>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, float32x4_t *a5, unsigned int (***a6)(void, int *, uint64_t))
{
  v47 = *MEMORY[0x1E69E9840];
  v46 = 0x10000000100;
  v9 = 1;
  v44 = 1;
  v45 = v43;
  v10 = a4[2];
  v43[0] = v10;
  while (2)
  {
    v11 = 2 * v9--;
    v12 = v45[v9];
    while (1)
    {
      v13 = *(v12 + 12);
      v14.i64[0] = 0x3F0000003F000000;
      v14.i64[1] = 0x3F0000003F000000;
      v15 = vmulq_f32(vsubq_f32(v13, *v12), v14);
      v15.i32[3] = 0;
      v16 = vmulq_f32(vaddq_f32(*v12, v13), v14);
      v16.i32[3] = 0;
      v17 = vaddq_f32(a5[3], v15);
      v18 = vsubq_f32(*a5, v16);
      *v19.f32 = vext_s8(*v18.f32, *&vextq_s8(v18, v18, 8uLL), 4uLL);
      v19.i64[1] = v18.u32[0];
      *v20.f32 = vext_s8(*v17.f32, *&vextq_s8(v17, v17, 8uLL), 4uLL);
      v20.i64[1] = v17.u32[0];
      if (vuzp1_s8(vmovn_s32(vandq_s8(vandq_s8(vcgeq_f32(a5[7], vsubq_f32(v16, v17)), vcgeq_f32(vaddq_f32(v16, v17), a5[6])), vcgeq_f32(vmlaq_f32(vmulq_f32(a5[4], v20), a5[5], v17), vabsq_f32(vmlsq_f32(vmulq_f32(a5[1], v19), v18, a5[2]))))), *v13.f32).u32[0] != -1)
      {
        break;
      }

      if (v13.i8[12])
      {
        v21 = (v13.i32[3] >> 1) & 0xF;
        if (v21)
        {
          v22 = (*a4 + 4 * (v13.i32[3] >> 5));
          v23 = (v13.i32[3] >> 1) & 0xF;
          while (1)
          {
            v25 = *v22++;
            v24 = v25;
            if (v21 < 2 || (v26 = a3 + 24 * v24, v27 = *(v26 + 12), v28 = vaddq_f32(*v26, v27), v29 = vsubq_f32(v27, *v26), v27.i64[0] = 0x3F0000003F000000, v27.i64[1] = 0x3F0000003F000000, v30 = vmulq_f32(v29, v27), v31 = vmulq_f32(v28, v27), v31.i32[3] = 0, v30.i32[3] = 0, v32 = vaddq_f32(a5[3], v30), v33 = vsubq_f32(*a5, v31), *v34.f32 = vext_s8(*v33.f32, *&vextq_s8(v33, v33, 8uLL), 4uLL), v34.i64[1] = v33.u32[0], *v35.f32 = vext_s8(*v32.f32, *&vextq_s8(v32, v32, 8uLL), 4uLL), v35.i64[1] = v32.u32[0], *v32.f32 = vmovn_s32(vandq_s8(vandq_s8(vcgeq_f32(a5[7], vsubq_f32(v31, v32)), vcgeq_f32(vaddq_f32(v31, v32), a5[6])), vcgeq_f32(vmlaq_f32(vmulq_f32(a5[4], v35), a5[5], v32), vabsq_f32(vmlsq_f32(vmulq_f32(a5[1], v34), v33, a5[2]))))), vuzp1_s8(*v32.f32, *v32.f32).u32[0] == -1))
            {
              v42 = 0;
              if (!(**a6)(a6, &v42, a2 + 16 * v24))
              {
                break;
              }
            }

            if (!--v23)
            {
              goto LABEL_14;
            }
          }

          v36 = 0;
          goto LABEL_17;
        }

        break;
      }

      v12 = v10 + 28 * (v13.i32[3] >> 1);
      v45[v9] = v12 + 28;
      if (v9 + 1 == (HIDWORD(v46) & 0x7FFFFFFF))
      {
        physx::shdfnd::Array<physx::Sq::AABBTreeRuntimeNode const*,physx::shdfnd::InlineAllocator<2048u,physx::shdfnd::ReflectionAllocator<physx::Sq::AABBTreeRuntimeNode const*>>>::resizeUninitialized(v43, v11);
      }

      v11 += 2;
      ++v9;
    }

LABEL_14:
    if (v9)
    {
      continue;
    }

    break;
  }

  v36 = 1;
LABEL_17:
  if ((v46 & 0x8000000000000000) == 0)
  {
    v37 = (v46 & 0x7FFFFFFF00000000) == 0 || v45 == v43;
    if (!v37 && v45 != 0)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }
  }

  return v36;
}

uint64_t physx::Gu::AABBTreeOverlap<physx::Gu::SphereAABBTest,physx::Sq::AABBTree,physx::Sq::AABBTreeRuntimeNode,physx::Sq::PrunerPayload,physx::Sq::PrunerCallback>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, unsigned int (***a6)(void, int *, uint64_t))
{
  v47 = *MEMORY[0x1E69E9840];
  v46 = 0x10000000100;
  v9 = 1;
  v44 = 1;
  v45 = v43;
  v10 = a4[2];
  v43[0] = v10;
  while (2)
  {
    v11 = 2 * v9--;
    v12 = v45[v9];
    while (1)
    {
      v13 = *(v12 + 12);
      v14.i64[0] = 0x3F0000003F000000;
      v14.i64[1] = 0x3F0000003F000000;
      v15 = vmulq_f32(vsubq_f32(v13, *v12), v14);
      v15.i32[3] = 0;
      v16 = vmulq_f32(vaddq_f32(*v12, v13), v14);
      v16.i32[3] = 0;
      v17 = vsubq_f32(*a5, v16);
      v18 = vnegq_f32(v15);
      v18.i32[3] = 0;
      v19 = vsubq_f32(v17, vmaxq_f32(vminq_f32(v17, v15), v18));
      v20 = vmulq_f32(v19, v19);
      v20.i64[0] = vpaddq_f32(v20, v20).u64[0];
      if (vuzp1_s8(vdup_lane_s16(vcge_f32(*(a5 + 16), vpadd_f32(*v20.f32, *v20.f32)), 0), *v13.f32).u32[0] != -1)
      {
        break;
      }

      if (v13.i8[12])
      {
        v21 = (v13.i32[3] >> 1) & 0xF;
        if (v21)
        {
          v22 = (*a4 + 4 * (v13.i32[3] >> 5));
          v23 = (v13.i32[3] >> 1) & 0xF;
          while (1)
          {
            v25 = *v22++;
            v24 = v25;
            if (v21 < 2 || (v26 = a3 + 24 * v24, v27 = *(v26 + 12), v28 = vaddq_f32(*v26, v27), v29 = vsubq_f32(v27, *v26), v27.i64[0] = 0x3F0000003F000000, v27.i64[1] = 0x3F0000003F000000, v30 = vmulq_f32(v29, v27), v31 = vmulq_f32(v28, v27), v31.i32[3] = 0, v30.i32[3] = 0, v32 = vsubq_f32(*a5, v31), v33 = vnegq_f32(v30), v33.i32[3] = 0, v34 = vsubq_f32(v32, vmaxq_f32(vminq_f32(v32, v30), v33)), v35 = vmulq_f32(v34, v34), v35.i64[0] = vpaddq_f32(v35, v35).u64[0], *v35.f32 = vdup_lane_s16(vcge_f32(*(a5 + 16), vpadd_f32(*v35.f32, *v35.f32)), 0), vuzp1_s8(*v35.f32, *v35.f32).u32[0] == -1))
            {
              v42 = 0;
              if (!(**a6)(a6, &v42, a2 + 16 * v24))
              {
                break;
              }
            }

            if (!--v23)
            {
              goto LABEL_14;
            }
          }

          v36 = 0;
          goto LABEL_17;
        }

        break;
      }

      v12 = v10 + 28 * (v13.i32[3] >> 1);
      v45[v9] = v12 + 28;
      if (v9 + 1 == (HIDWORD(v46) & 0x7FFFFFFF))
      {
        physx::shdfnd::Array<physx::Sq::AABBTreeRuntimeNode const*,physx::shdfnd::InlineAllocator<2048u,physx::shdfnd::ReflectionAllocator<physx::Sq::AABBTreeRuntimeNode const*>>>::resizeUninitialized(v43, v11);
      }

      v11 += 2;
      ++v9;
    }

LABEL_14:
    if (v9)
    {
      continue;
    }

    break;
  }

  v36 = 1;
LABEL_17:
  if ((v46 & 0x8000000000000000) == 0)
  {
    v37 = (v46 & 0x7FFFFFFF00000000) == 0 || v45 == v43;
    if (!v37 && v45 != 0)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }
  }

  return v36;
}

uint64_t physx::Sq::AABBPruner::sweep(uint64_t a1, uint64_t a2, float32x2_t *a3, float *a4, unsigned int (**a5)(void, float *, uint64_t))
{
  v10 = *(a1 + 8);
  if (!v10 || (v11 = *(a2 + 92), v12 = *(a2 + 80), v13 = *(a2 + 84), v14 = *(a2 + 72), v21 = vmul_f32(vsub_f32(v13, v14), 0x3F0000003F000000), v22 = (v11 - v12) * 0.5, v16 = *(a1 + 424), v15 = *(a1 + 432), v18 = vmul_f32(vadd_f32(v13, v14), 0x3F0000003F000000), v19 = (v11 + v12) * 0.5, result = physx::Gu::AABBTreeRaycast<true,physx::Sq::AABBTree,physx::Sq::AABBTreeRuntimeNode,physx::Sq::PrunerPayload,physx::Sq::PrunerCallback>::operator()(&v20, v15, v16, v10, &v18, a3, a4, &v21, a5), result))
  {
    if (*(a1 + 496) == 1 && *(a1 + 236) + *(a1 + 164) + *(a1 + 324))
    {
      return physx::Sq::ExtendedBucketPruner::sweep(a1 + 80, a2, a3, a4, a5);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t physx::Gu::AABBTreeRaycast<true,physx::Sq::AABBTree,physx::Sq::AABBTreeRuntimeNode,physx::Sq::PrunerPayload,physx::Sq::PrunerCallback>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, float32x2_t *a5, float32x2_t *a6, float *a7, float32x2_t *a8, unsigned int (***a9)(void, float *, uint64_t))
{
  v12 = 0;
  v103 = *MEMORY[0x1E69E9840];
  v13 = a5[1].f32[0] + a5[1].f32[0];
  v14 = vadd_f32(*a5, *a5);
  v15 = vadd_f32(*a6, *a6);
  v16 = a6[1].f32[0] + a6[1].f32[0];
  *v22.f32 = vadd_f32(*a8, *a8);
  v17 = COERCE_DOUBLE(vadd_f32(v14, vmul_n_f32(v15, *a7)));
  v18 = COERCE_DOUBLE(vbsl_s8(vceqz_f32(v15), v14, vbsl_s8(vcgez_f32(v15), vneg_f32(0x80000000800000), 0x80000000800000)));
  *v19.f32 = v14;
  v19.i64[1] = LODWORD(v13);
  *v20.f32 = v15;
  v20.i64[1] = LODWORD(v16);
  *v21.f32 = vext_s8(v15, *&vextq_s8(v20, v20, 8uLL), 4uLL);
  v21.i64[1] = v15.u32[0];
  v22.f32[2] = a8[1].f32[0] + a8[1].f32[0];
  v22.i32[3] = 0;
  v23 = vabsq_f32(v20);
  *v24.f32 = vext_s8(*v23.f32, *&vextq_s8(v23, v23, 8uLL), 4uLL);
  v24.i64[1] = v23.u32[0];
  v25 = v13 + (v16 * *a7);
  v26 = -3.4028e38;
  if (v16 >= 0.0)
  {
    v26 = 3.4028e38;
  }

  if (v16 != 0.0)
  {
    v13 = v26;
  }

  if (*a7 >= 3.4028e38)
  {
    *v27.i64 = v18;
  }

  else
  {
    v13 = v25;
    *v27.i64 = v17;
  }

  v27.i64[1] = LODWORD(v13);
  v28 = vminq_f32(v19, v27);
  v29 = vmaxq_f32(v19, v27);
  v102 = 0x10000000100;
  v100 = 1;
  v101 = v99;
  v30 = a4[2];
  v99[0] = v30;
  v31 = vnegq_f32(v21);
  v92 = v20;
  v93 = v19;
  v90 = v23;
  v91 = v22;
  v88 = v31;
  v89 = v24;
  do
  {
    v32 = v101[v12];
    v33 = *v32;
    v34 = *(v32 + 12);
    v33.i32[3] = 0;
    v35 = v34;
    v35.i32[3] = 0;
    v36 = vaddq_f32(v22, vsubq_f32(v35, v33));
    v37 = vaddq_f32(v22, vaddq_f32(v35, v35));
    v38 = vsubq_f32(vaddq_f32(v33, v33), v22);
    v39 = vsubq_f32(v19, vaddq_f32(v33, v35));
    *v35.f32 = vext_s8(*v39.f32, *&vextq_s8(v39, v39, 8uLL), 4uLL);
    v35.i64[1] = v39.u32[0];
    *v40.f32 = vext_s8(*v36.f32, *&vextq_s8(v36, v36, 8uLL), 4uLL);
    v40.i64[1] = v36.u32[0];
    if (vuzp1_s8(vmovn_s32(vandq_s8(vandq_s8(vcgeq_f32(v37, v28), vcgeq_f32(v29, v38)), vcgeq_f32(vmlaq_f32(vmulq_f32(v23, v40), v24, v36), vabsq_f32(vmlaq_f32(vmulq_f32(v20, v35), v39, v31))))), *v34.f32).u32[0] == -1)
    {
      v41 = v34.u32[3];
      v42 = *a7;
      v98 = *a7;
      if ((v34.i8[12] & 1) == 0)
      {
        v23 = v90;
        v22 = v91;
        v31 = v88;
        v24 = v89;
        v94 = v29;
        v96 = v28;
        do
        {
          v43 = (v30 + 28 * (v41 >> 1));
          v44 = *v43;
          v45 = *(v43 + 12);
          v44.i32[3] = 0;
          v45.i32[3] = 0;
          v46 = vaddq_f32(v22, vsubq_f32(v45, v44));
          v47 = vaddq_f32(v22, vaddq_f32(v45, v45));
          v48 = vaddq_f32(v44, v44);
          v49 = vaddq_f32(v44, v45);
          v50 = vsubq_f32(v19, v49);
          *v51.f32 = vext_s8(*v50.f32, *&vextq_s8(v50, v50, 8uLL), 4uLL);
          v51.i64[1] = v50.u32[0];
          *v52.f32 = vext_s8(*v46.f32, *&vextq_s8(v46, v46, 8uLL), 4uLL);
          v52.i64[1] = v46.u32[0];
          v53 = vuzp1_s8(vmovn_s32(vandq_s8(vandq_s8(vcgeq_f32(v47, v28), vcgeq_f32(v29, vsubq_f32(v48, v22))), vcgeq_f32(vmlaq_f32(vmulq_f32(v23, v52), v24, v46), vabsq_f32(vmlaq_f32(vmulq_f32(v20, v51), v50, v31))))), *v49.f32).u32[0];
          v54 = *(v43 + 28);
          v55 = *(v43 + 40);
          v54.i32[3] = 0;
          v55.i32[3] = 0;
          v56 = vaddq_f32(v22, vsubq_f32(v55, v54));
          v57 = vaddq_f32(v22, vaddq_f32(v55, v55));
          v58 = vsubq_f32(vaddq_f32(v54, v54), v22);
          v59 = vaddq_f32(v54, v55);
          v60 = vsubq_f32(v19, v59);
          *v52.f32 = vext_s8(*v60.f32, *&vextq_s8(v60, v60, 8uLL), 4uLL);
          v52.i64[1] = v60.u32[0];
          *v61.f32 = vext_s8(*v56.f32, *&vextq_s8(v56, v56, 8uLL), 4uLL);
          v61.i64[1] = v56.u32[0];
          v62 = vuzp1_s8(vmovn_s32(vandq_s8(vandq_s8(vcgeq_f32(v57, v28), vcgeq_f32(v29, v58)), vcgeq_f32(vmlaq_f32(vmulq_f32(v23, v61), v24, v56), vabsq_f32(vmlaq_f32(vmulq_f32(v20, v52), v60, v31))))), *v49.f32).u32[0];
          if (v53 == -1 && v62 == -1)
          {
            v66 = vmulq_f32(v20, vsubq_f32(v59, v49));
            v66.i64[0] = vpaddq_f32(v66, v66).u64[0];
            v66.f32[0] = vpadd_f32(*v66.f32, *v66.f32).f32[0];
            v101[v12] = v43 + 28 * (v66.f32[0] > 0.0);
            v64 = v43 + 28 * (v66.f32[0] <= 0.0);
            if (v12 + 1 == (HIDWORD(v102) & 0x7FFFFFFF))
            {
              physx::shdfnd::Array<physx::Sq::AABBTreeRuntimeNode const*,physx::shdfnd::InlineAllocator<2048u,physx::shdfnd::ReflectionAllocator<physx::Sq::AABBTreeRuntimeNode const*>>>::resizeUninitialized(v99, 2 * (v12 + 1));
              v29 = v94;
              v28 = v96;
              v31 = v88;
              v24 = v89;
              v23 = v90;
              v22 = v91;
              v20 = v92;
              v19 = v93;
            }

            ++v12;
          }

          else
          {
            if (v53 == -1)
            {
              v64 = v43;
            }

            else
            {
              v64 = v43 + 28;
            }

            if (v53 != -1 && v62 != -1)
            {
              goto LABEL_38;
            }
          }

          v41 = *(v64 + 6);
        }

        while ((v41 & 1) == 0);
        v42 = *a7;
      }

      v67 = (v41 >> 1) & 0xF;
      if (v67)
      {
        v68 = (*a4 + 4 * (v41 >> 5));
        for (i = (v41 >> 1) & 0xF; i; --i)
        {
          v71 = *v68++;
          v70 = v71;
          if (v67 >= 2)
          {
            v72 = a3 + 24 * v70;
            v73 = *(v72 + 12);
            v74 = vaddq_f32(*v72, v73);
            v75 = vsubq_f32(v73, *v72);
            v74.i32[3] = 0;
            v75.i32[3] = 0;
            v76 = vaddq_f32(v91, v75);
            v77 = vaddq_f32(v74, v76);
            v78 = vsubq_f32(v74, v76);
            v79 = vsubq_f32(v19, v74);
            *v80.f32 = vext_s8(*v79.f32, *&vextq_s8(v79, v79, 8uLL), 4uLL);
            v80.i64[1] = v79.u32[0];
            *v81.f32 = vext_s8(*v76.f32, *&vextq_s8(v76, v76, 8uLL), 4uLL);
            v81.i64[1] = v76.u32[0];
            *v76.f32 = vmovn_s32(vandq_s8(vandq_s8(vcgeq_f32(v77, v28), vcgeq_f32(v29, v78)), vcgeq_f32(vmlaq_f32(vmulq_f32(v90, v81), v89, v76), vabsq_f32(vmlaq_f32(vmulq_f32(v20, v80), v79, v88)))));
            if (vuzp1_s8(*v76.f32, *v76.f32).u32[0] != -1)
            {
              continue;
            }
          }

          v95 = v29;
          v97 = v28;
          if (!(**a9)(a9, &v98, a2 + 16 * v70))
          {
            v85 = 0;
            goto LABEL_41;
          }

          v82 = v98;
          v20 = v92;
          v19 = v93;
          v29 = v95;
          v28 = v97;
          if (v98 < v42)
          {
            *a7 = v98;
            v83 = vmlaq_n_f32(v93, v92, v82);
            v83.i64[1] = vextq_s8(v83, v83, 8uLL).u32[0];
            v28 = vminq_f32(v93, v83);
            v29 = vmaxq_f32(v93, v83);
          }
        }
      }

      v23 = v90;
      v22 = v91;
      v31 = v88;
      v24 = v89;
    }

LABEL_38:
    ;
  }

  while (v12--);
  v85 = 1;
LABEL_41:
  if ((v102 & 0x8000000000000000) == 0 && (v102 & 0x7FFFFFFF00000000) != 0 && v101 != v99 && v101)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  return v85;
}

uint64_t physx::Sq::AABBPruner::raycast(uint64_t a1, float32x2_t *a2, float32x2_t *a3, float *a4, unsigned int (**a5)(void, float *, uint64_t))
{
  v10 = *(a1 + 8);
  if (!v10 || (v12 = *(a1 + 424), v11 = *(a1 + 432), v15 = 0, v16 = 0, v13 = physx::Gu::AABBTreeRaycast<false,physx::Sq::AABBTree,physx::Sq::AABBTreeRuntimeNode,physx::Sq::PrunerPayload,physx::Sq::PrunerCallback>::operator()(&v17, v11, v12, v10, a2, a3, a4, &v15, a5), result = 0, v13))
  {
    if (*(a1 + 496) == 1 && *(a1 + 236) + *(a1 + 164) + *(a1 + 324))
    {
      return physx::Sq::ExtendedBucketPruner::raycast(a1 + 80, a2, a3, a4, a5);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t physx::Gu::AABBTreeRaycast<false,physx::Sq::AABBTree,physx::Sq::AABBTreeRuntimeNode,physx::Sq::PrunerPayload,physx::Sq::PrunerCallback>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, float32x2_t *a5, float32x2_t *a6, float *a7, uint64_t a8, unsigned int (***a9)(void, float *, uint64_t))
{
  v12 = 0;
  v101 = *MEMORY[0x1E69E9840];
  v13 = a5[1].f32[0] + a5[1].f32[0];
  v14 = vadd_f32(*a5, *a5);
  v15 = vadd_f32(*a6, *a6);
  v16 = COERCE_DOUBLE(vadd_f32(v14, vmul_n_f32(v15, *a7)));
  v17 = COERCE_DOUBLE(vbsl_s8(vceqz_f32(v15), v14, vbsl_s8(vcgez_f32(v15), vneg_f32(0x80000000800000), 0x80000000800000)));
  *v18.f32 = v14;
  v18.i64[1] = LODWORD(v13);
  v19 = a6[1].f32[0] + a6[1].f32[0];
  *v20.f32 = v15;
  v20.i64[1] = LODWORD(v19);
  *v21.f32 = vext_s8(v15, *&vextq_s8(v20, v20, 8uLL), 4uLL);
  v21.i64[1] = v15.u32[0];
  v22 = vabsq_f32(v20);
  *v23.f32 = vext_s8(*v22.f32, *&vextq_s8(v22, v22, 8uLL), 4uLL);
  v23.i64[1] = v22.u32[0];
  v24 = v13 + (v19 * *a7);
  v25 = -3.4028e38;
  if (v19 >= 0.0)
  {
    v25 = 3.4028e38;
  }

  if (v19 != 0.0)
  {
    v13 = v25;
  }

  if (*a7 >= 3.4028e38)
  {
    *v26.i64 = v17;
  }

  else
  {
    v13 = v24;
    *v26.i64 = v16;
  }

  v26.i64[1] = LODWORD(v13);
  v27 = vminq_f32(v18, v26);
  v28 = vmaxq_f32(v18, v26);
  v100 = 0x10000000100;
  v98 = 1;
  v99 = v97;
  v29 = a4[2];
  v97[0] = v29;
  v30 = vnegq_f32(v21);
  v90 = v20;
  v91 = v18;
  v88 = v23;
  v89 = v22;
  v87 = v30;
  do
  {
    v31 = v99[v12];
    v32 = *v31;
    v33 = *(v31 + 12);
    v32.i32[3] = 0;
    v34 = v33;
    v34.i32[3] = 0;
    v35 = vsubq_f32(v34, v32);
    v36 = vaddq_f32(v34, v34);
    v37 = vaddq_f32(v32, v32);
    v38 = vsubq_f32(v18, vaddq_f32(v32, v34));
    *v34.f32 = vext_s8(*v38.f32, *&vextq_s8(v38, v38, 8uLL), 4uLL);
    v34.i64[1] = v38.u32[0];
    *v39.f32 = vext_s8(*v35.f32, *&vextq_s8(v35, v35, 8uLL), 4uLL);
    v39.i64[1] = v35.u32[0];
    if (vuzp1_s8(vmovn_s32(vandq_s8(vandq_s8(vcgeq_f32(v36, v27), vcgeq_f32(v28, v37)), vcgeq_f32(vmlaq_f32(vmulq_f32(v22, v39), v23, v35), vabsq_f32(vmlaq_f32(vmulq_f32(v20, v34), v38, v30))))), *v33.f32).u32[0] == -1)
    {
      v40 = v33.u32[3];
      v41 = *a7;
      v96 = *a7;
      if ((v33.i8[12] & 1) == 0)
      {
        v23 = v88;
        v22 = v89;
        v30 = v87;
        v92 = v28;
        v94 = v27;
        do
        {
          v42 = (v29 + 28 * (v40 >> 1));
          v43 = *v42;
          v44 = *(v42 + 12);
          v43.i32[3] = 0;
          v44.i32[3] = 0;
          v45 = vsubq_f32(v44, v43);
          v46 = vaddq_f32(v44, v44);
          v47 = vaddq_f32(v43, v43);
          v48 = vaddq_f32(v43, v44);
          v49 = vsubq_f32(v18, v48);
          *v50.f32 = vext_s8(*v49.f32, *&vextq_s8(v49, v49, 8uLL), 4uLL);
          v50.i64[1] = v49.u32[0];
          *v51.f32 = vext_s8(*v45.f32, *&vextq_s8(v45, v45, 8uLL), 4uLL);
          v51.i64[1] = v45.u32[0];
          v52 = vuzp1_s8(vmovn_s32(vandq_s8(vandq_s8(vcgeq_f32(v46, v27), vcgeq_f32(v28, v47)), vcgeq_f32(vmlaq_f32(vmulq_f32(v22, v51), v23, v45), vabsq_f32(vmlaq_f32(vmulq_f32(v20, v50), v49, v30))))), *v48.f32).u32[0];
          v53 = *(v42 + 28);
          v54 = *(v42 + 40);
          v53.i32[3] = 0;
          v54.i32[3] = 0;
          v55 = vsubq_f32(v54, v53);
          v56 = vaddq_f32(v54, v54);
          v57 = vaddq_f32(v53, v53);
          v58 = vaddq_f32(v53, v54);
          v59 = vsubq_f32(v18, v58);
          *v51.f32 = vext_s8(*v59.f32, *&vextq_s8(v59, v59, 8uLL), 4uLL);
          v51.i64[1] = v59.u32[0];
          *v60.f32 = vext_s8(*v55.f32, *&vextq_s8(v55, v55, 8uLL), 4uLL);
          v60.i64[1] = v55.u32[0];
          v61 = vuzp1_s8(vmovn_s32(vandq_s8(vandq_s8(vcgeq_f32(v56, v27), vcgeq_f32(v28, v57)), vcgeq_f32(vmlaq_f32(vmulq_f32(v22, v60), v23, v55), vabsq_f32(vmlaq_f32(vmulq_f32(v20, v51), v59, v30))))), *v48.f32).u32[0];
          if (v52 == -1 && v61 == -1)
          {
            v65 = vmulq_f32(v20, vsubq_f32(v58, v48));
            v65.i64[0] = vpaddq_f32(v65, v65).u64[0];
            v65.f32[0] = vpadd_f32(*v65.f32, *v65.f32).f32[0];
            v99[v12] = v42 + 28 * (v65.f32[0] > 0.0);
            v63 = v42 + 28 * (v65.f32[0] <= 0.0);
            if (v12 + 1 == (HIDWORD(v100) & 0x7FFFFFFF))
            {
              physx::shdfnd::Array<physx::Sq::AABBTreeRuntimeNode const*,physx::shdfnd::InlineAllocator<2048u,physx::shdfnd::ReflectionAllocator<physx::Sq::AABBTreeRuntimeNode const*>>>::resizeUninitialized(v97, 2 * (v12 + 1));
              v28 = v92;
              v27 = v94;
              v30 = v87;
              v23 = v88;
              v22 = v89;
              v20 = v90;
              v18 = v91;
            }

            ++v12;
          }

          else
          {
            if (v52 == -1)
            {
              v63 = v42;
            }

            else
            {
              v63 = v42 + 28;
            }

            if (v52 != -1 && v61 != -1)
            {
              goto LABEL_38;
            }
          }

          v40 = *(v63 + 6);
        }

        while ((v40 & 1) == 0);
        v41 = *a7;
      }

      v66 = (v40 >> 1) & 0xF;
      if (v66)
      {
        v67 = (*a4 + 4 * (v40 >> 5));
        for (i = (v40 >> 1) & 0xF; i; --i)
        {
          v70 = *v67++;
          v69 = v70;
          if (v66 >= 2)
          {
            v71 = a3 + 24 * v69;
            v72 = *(v71 + 12);
            v73 = vaddq_f32(*v71, v72);
            v74 = vsubq_f32(v72, *v71);
            v73.i32[3] = 0;
            v75 = v74;
            v75.i32[3] = 0;
            v76 = vaddq_f32(v73, v75);
            v77 = vsubq_f32(v73, v75);
            v78 = vsubq_f32(v18, v73);
            *v79.f32 = vext_s8(*v78.f32, *&vextq_s8(v78, v78, 8uLL), 4uLL);
            v79.i64[1] = v78.u32[0];
            *v80.f32 = vext_s8(*v74.i8, *&vextq_s8(v74, v74, 8uLL), 4uLL);
            v80.i64[1] = v74.u32[0];
            *v74.i8 = vmovn_s32(vandq_s8(vandq_s8(vcgeq_f32(v76, v27), vcgeq_f32(v28, v77)), vcgeq_f32(vmlaq_f32(vmulq_f32(v89, v80), v88, v75), vabsq_f32(vmlaq_f32(vmulq_f32(v20, v79), v78, v87)))));
            if (vuzp1_s8(*v74.i8, *v74.i8).u32[0] != -1)
            {
              continue;
            }
          }

          v93 = v28;
          v95 = v27;
          if (!(**a9)(a9, &v96, a2 + 16 * v69))
          {
            v84 = 0;
            goto LABEL_41;
          }

          v81 = v96;
          v20 = v90;
          v18 = v91;
          v28 = v93;
          v27 = v95;
          if (v96 < v41)
          {
            *a7 = v96;
            v82 = vmlaq_n_f32(v91, v90, v81);
            v82.i64[1] = vextq_s8(v82, v82, 8uLL).u32[0];
            v27 = vminq_f32(v91, v82);
            v28 = vmaxq_f32(v91, v82);
          }
        }
      }

      v23 = v88;
      v22 = v89;
      v30 = v87;
    }

LABEL_38:
    ;
  }

  while (v12--);
  v84 = 1;
LABEL_41:
  if ((v100 & 0x8000000000000000) == 0 && (v100 & 0x7FFFFFFF00000000) != 0 && v99 != v97 && v99)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  return v84;
}

uint64_t physx::Sq::AABBPruner::purge(physx::Sq::AABBPruner *this)
{
  result = physx::Sq::AABBPruner::release(this);
  *(this + 497) = 1;
  return result;
}

uint64_t physx::Sq::AABBPruner::setRebuildRateHint(uint64_t this, int a2)
{
  *(this + 404) = a2 - 3;
  *(this + 412) = 0;
  return this;
}

uint64_t physx::Sq::AABBPruner::commit(uint64_t this)
{
  v1 = this;
  if ((*(this + 497) & 1) == 0 && *(this + 400) != 6)
  {
    return this;
  }

  *(this + 497) = 0;
  v2 = *(this + 8);
  if (!v2)
  {
    goto LABEL_11;
  }

  if ((*(this + 496) & 1) == 0)
  {
    physx::Sq::AABBTree::~AABBTree(*(this + 8));
    this = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v2);
LABEL_11:
    *(v1 + 8) = 0;
    v6 = *(v1 + 416);
    if (v6)
    {
      v7 = physx::shdfnd::Foundation::mInstance;
      if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
      {
        v8 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Sq::AABBTree>::getName() [T = physx::Sq::AABBTree]";
      }

      else
      {
        v8 = "<allocation names disabled>";
      }

      v9 = (*(*(v7 + 24) + 16))(v7 + 24, 104, v8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/scenequery/src/SqAABBPruner.cpp", 750);
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v9 + 96) = 0;
      *(v9 + 16) = 0u;
      *(v9 + 32) = 0u;
      *(v9 + 48) = 0u;
      *(v9 + 64) = 0u;
      *(v9 + 76) = 0u;
      *(v1 + 8) = v9;
      v21 = *(v1 + 424);
      v22 = 0;
      LODWORD(v20) = 4;
      HIDWORD(v20) = v6;
      this = physx::Sq::AABBTree::build(v9, &v20);
      v20 = 0;
      v21 = 0;
      if (v22)
      {
        this = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
      }

      if (*(v1 + 496) == 1)
      {
        if (v6 <= *(v1 + 64))
        {
          v10 = *(v1 + 64);
        }

        else
        {
          v10 = v6;
        }

        return physx::Sq::AABBTreeUpdateMap::initMap((v1 + 464), v10, *(v1 + 8));
      }
    }

    return this;
  }

  if (*(this + 400) == 6)
  {
    physx::Sq::AABBTree::~AABBTree(*(this + 8));
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v2);
    if (*(v1 + 56))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    *(v1 + 56) = 0;
    *(v1 + 400) = 0;
    v3 = *(v1 + 68);
    v4 = *(v1 + 404);
    if (v3 <= v4)
    {
      if (v3 >= v4)
      {
LABEL_28:
        v11 = *(v1 + 48);
        *(v1 + 8) = v11;
        *(v1 + 48) = 0;
        if (*(v1 + 416) <= *(v1 + 64))
        {
          v12 = *(v1 + 64);
        }

        else
        {
          v12 = *(v1 + 416);
        }

        physx::Sq::AABBTreeUpdateMap::initMap((v1 + 464), v12, v11);
        if (*(v1 + 512))
        {
          v13 = *(v1 + 504);
          do
          {
            v14 = *v13;
            if (*(v1 + 472) > *v13 && *(*(v1 + 464) + 4 * v14) != -1)
            {
              physx::Sq::AABBTree::markNodeForRefit(*(v1 + 8), *(*(v1 + 464) + 4 * v14));
              v14 = *v13;
            }

            physx::Sq::AABBTreeUpdateMap::invalidate((v1 + 464), v14, v13[1], **(v1 + 8), *(*(v1 + 8) + 16));
            v13 += 2;
          }

          while (v13 < *(v1 + 504) + 8 * *(v1 + 512));
        }

        *(v1 + 512) = 0;
        v15 = *(v1 + 528);
        if (v15)
        {
          v16 = 0;
          v17 = 4 * v15;
          do
          {
            v18 = *(*(v1 + 520) + v16);
            if (*(v1 + 472) > v18)
            {
              v19 = *(*(v1 + 464) + 4 * v18);
              if (v19 != -1)
              {
                physx::Sq::AABBTree::markNodeForRefit(*(v1 + 8), v19);
              }
            }

            v16 += 4;
          }

          while (v17 != v16);
        }

        *(v1 + 528) = 0;
        physx::Sq::AABBPruner::refitUpdatedAndRemoved(v1);
        this = physx::Sq::ExtendedBucketPruner::removeMarkedObjects((v1 + 80), *(v1 + 72) - 1);
        *(v1 + 498) = *(v1 + 236) + *(v1 + 164) + *(v1 + 324) != 0;
        return this;
      }

      v5 = -1;
    }

    else
    {
      v5 = 1;
    }

    *(v1 + 412) += v5;
    goto LABEL_28;
  }

  return physx::Sq::AABBPruner::refitUpdatedAndRemoved(this);
}

uint64_t *physx::Sq::AABBPruner::refitUpdatedAndRemoved(uint64_t *this)
{
  v1 = this[1];
  if (v1)
  {
    v2 = this;
    if (*(this + 104))
    {
      physx::Sq::ExtendedBucketPruner::refitMarkedNodes((this + 10), this[53]);
      v3 = v2[53];

      return physx::Sq::AABBTree::refitMarkedNodes(v1, v3);
    }
  }

  return this;
}

void *physx::Sq::AABBTreeUpdateMap::initMap(physx::Sq::AABBTreeUpdateMap *this, unsigned int a2, const physx::Sq::AABBTree *a3)
{
  if (a2)
  {
    v6 = a2 + (a2 >> 2);
    v7 = *(this + 3);
    v8 = v7 & 0x7FFFFFFF;
    v9 = (v7 >> 1) & 0x3FFFFFFF;
    if (v8 - v6 <= 0x400 || v6 >= v9)
    {
      v11 = v8;
    }

    else
    {
      v11 = 0;
    }

    if (v11 < a2)
    {
      v26 = 0;
      physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::resize(this, 0, &v26);
      physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::recreate(this, *(this + 2));
      if ((*(this + 3) & 0x7FFFFFFFu) < v6)
      {
        physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::recreate(this, v6);
      }
    }

    *(this + 2) = a2;
    v12 = *this;
    result = memset(v12, 255, 4 * a2);
    v14 = *(a3 + 16);
    if (v14)
    {
      v15 = 0;
      v16 = *(a3 + 2);
      v17 = *a3;
      do
      {
        v18 = v16 + 28 * v15;
        v21 = *(v18 + 24);
        v19 = (v18 + 24);
        v20 = v21;
        if (v21)
        {
          v22 = (v20 >> 1) & 0xF;
          if (v22)
          {
            v23 = v17;
            do
            {
              v24 = *(v23 + ((*v19 >> 3) & 0x1FFFFFFC));
              v23 += 4;
              *(v12 + v24) = v15;
              --v22;
            }

            while (v22);
          }
        }

        ++v15;
      }

      while (v15 != v14);
    }
  }

  else
  {
    v25 = 0;
    physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::resize(this, 0, &v25);
    return physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::recreate(this, *(this + 2));
  }

  return result;
}

float32x2_t physx::Sq::AABBPruner::shiftOrigin(uint64_t a1, float32x4_t *a2)
{
  result = physx::Sq::PruningPool::shiftOrigin((a1 + 416), a2);
  v5 = *(a1 + 8);
  if (v5)
  {
    result = physx::Sq::AABBTree::shiftOrigin(v5, a2);
  }

  if (*(a1 + 496) == 1)
  {
    physx::Sq::ExtendedBucketPruner::shiftOrigin(a1 + 80, a2);
  }

  v6 = *(a1 + 48);
  if (v6)
  {

    return physx::Sq::AABBTree::shiftOrigin(v6, a2);
  }

  return result;
}

float32x2_t physx::Sq::AABBTree::shiftOrigin(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    _X9 = (*(a1 + 16) + 16);
    v4 = 1;
    v5 = *(a1 + 64);
    do
    {
      if (v4 < v2)
      {
        __asm { PRFUM           #0, [X9,#0xC] }
      }

      v11 = _X9[-1];
      _X9[-2] = vsub_f32(_X9[-2], *a2);
      v12.i32[0] = *(a2 + 8);
      v12.i32[1] = *a2;
      _X9[-1] = vsub_f32(v11, v12);
      result = vsub_f32(*_X9, *(a2 + 4));
      *_X9 = result;
      _X9 = (_X9 + 28);
      ++v4;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t physx::Sq::AABBPruner::visualize(uint64_t a1, _DWORD *a2, int a3)
{
  v6 = *(a1 + 8);
  if (v6 && *(v6 + 16))
  {
    v8 = xmmword_1E30474D0;
    v9 = 0;
    v10 = 0;
    physx::Cm::RenderOutput::operator<<(a2, &v8);
    a2[1] = a3;
    physx::Sq::AABBPruner::visualize(physx::Cm::RenderOutput &,unsigned int)const::Local::_Draw(*(v6 + 16), *(v6 + 16), a2);
  }

  v8 = xmmword_1E30474D0;
  v9 = 0;
  v10 = 0;
  result = physx::Cm::RenderOutput::operator<<(a2, &v8);
  a2[1] = -1;
  if (*(a1 + 496) == 1)
  {
    if (*(a1 + 236) + *(a1 + 164) + *(a1 + 324))
    {
      return physx::Sq::ExtendedBucketPruner::visualize(a1 + 80, a2, a3);
    }
  }

  return result;
}

uint64_t physx::Sq::AABBPruner::visualize(physx::Cm::RenderOutput &,unsigned int)const::Local::_Draw(uint64_t a1, __int128 *a2, _DWORD *a3)
{
  v8 = *a2;
  v9 = *(a2 + 2);
  v10 = 1;
  result = physx::Cm::operator<<(a3, &v8);
  if ((*(a2 + 6) & 1) == 0)
  {
    physx::Sq::AABBPruner::visualize(physx::Cm::RenderOutput &,unsigned int)const::Local::_Draw(a1, a1 + 28 * (*(a2 + 6) >> 1), a3);
    if (a1)
    {
      v7 = a1 + 28 * (*(a2 + 6) >> 1) + 28;
    }

    else
    {
      v7 = 0;
    }

    return physx::Sq::AABBPruner::visualize(physx::Cm::RenderOutput &,unsigned int)const::Local::_Draw(a1, v7, a3);
  }

  return result;
}

BOOL physx::Sq::AABBPruner::buildStep(physx::Sq::AABBPruner *this, int a2)
{
  if (*(this + 498) != 1)
  {
    return 0;
  }

  v4 = *(this + 100);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        ++*(this + 17);
        *(this + 100) = 4;
        if (*(this + 128))
        {
          if (*(this + 104) <= *(this + 16))
          {
            v7 = *(this + 16);
          }

          else
          {
            v7 = *(this + 104);
          }

          physx::Sq::AABBTreeUpdateMap::initMap((this + 480), v7, *(this + 6));
          if (*(this + 128))
          {
            v8 = *(this + 63);
            do
            {
              v9 = *v8;
              v10 = v8[1];
              v8 += 2;
              physx::Sq::AABBTreeUpdateMap::invalidate(this + 60, v9, v10, **(this + 6), *(*(this + 6) + 16));
            }

            while (v8 < *(this + 63) + 8 * *(this + 128));
          }

          *(this + 128) = 0;
        }

        break;
      case 4:
        ++*(this + 17);
        *(this + 100) = 5;
        v18 = *(this + 6);
        v19 = *(v18 + 16);
        if (v19)
        {
          v20 = *(this + 53);
          v21 = *v18;
          v22 = v18[2];
          v23 = vdupq_n_s32(0x5A60B17Fu);
          v24 = vdupq_n_s32(0xDA60B17F);
          do
          {
            --v19;
            _X14 = (v22 + 28 * v19);
            if (v19)
            {
              __asm { PRFUM           #0, [X14,#-0x1C] }
            }

            v30 = _X14[1].u32[2];
            if (v30)
            {
              v36 = (v30 >> 1) & 0xF;
              v35 = v24;
              v32 = v23;
              if (v36)
              {
                v37 = (v21 + ((v30 >> 3) & 0x1FFFFFFC));
                v38 = (v20 + 24 * *v37);
                v32 = *v38;
                v35 = *(v38 + 12);
                if (v36 != 1)
                {
                  v39 = 4 * v36;
                  v40 = v37 + 1;
                  v41 = v39 - 4;
                  do
                  {
                    v42 = *v40++;
                    v43 = v20 + 24 * v42;
                    v32 = vminq_f32(v32, *v43);
                    v35 = vmaxq_f32(v35, *(v43 + 12));
                    v41 -= 4;
                  }

                  while (v41);
                }
              }
            }

            else
            {
              v31 = v22 + 28 * (_X14[1].i32[2] >> 1);
              v32 = vminq_f32(*v31, *(v31 + 28));
              v33.i32[0] = HIDWORD(*v31);
              v33.i32[1] = *(v31 + 16);
              v33.i64[1] = *(v31 + 20);
              v34.i32[0] = HIDWORD(*(v31 + 28));
              v34.i32[1] = *(v31 + 44);
              v34.i64[1] = *(v31 + 48);
              v35 = vmaxq_f32(v33, v34);
            }

            v32.i32[3] = v35.i32[0];
            *_X14 = v32;
            _X14[1].i64[0] = vextq_s8(v35, v35, 4uLL).u64[0];
          }

          while (v19);
        }

        break;
      case 5:
        v5 = 6;
        goto LABEL_13;
      default:
        break;
    }
  }

  else
  {
    switch(v4)
    {
      case 0:
        if (!a2 || ((*(*this + 152))(this) & 1) == 0)
        {
          return 0;
        }

        goto LABEL_51;
      case 1:
        physx::Sq::AABBTree::progressiveBuild(*(this + 6), this + 16, this + 5, 0, 0);
        v11 = 0;
        *(this + 100) = 2;
        *(this + 17) = 0;
        v12 = *(this + 5);
        v13 = v12;
        while (v13 >= 2)
        {
          v13 >>= 1;
          if (++v11 == 32)
          {
            v11 = -1;
            break;
          }
        }

        v14 = v11 * v12;
        v15 = *(this + 1);
        if (v15)
        {
          LODWORD(v15) = *(v15 + 68);
        }

        if (v14 <= 2 * v15 && v14 >= v15 >> 1)
        {
          v17 = *(this + 103);
        }

        else
        {
          v17 = 0;
          *(this + 103) = 0;
          LODWORD(v15) = v14;
        }

        *(this + 102) = (v15 + v17 * v12) & ~((v15 + v17 * v12) >> 31);
        break;
      case 2:
        ++*(this + 17);
        if (!physx::Sq::AABBTree::progressiveBuild(*(this + 6), this + 16, this + 5, 1, *(this + 102) / *(this + 101) + 1))
        {
          v5 = 3;
LABEL_13:
          *(this + 100) = v5;
        }

        break;
    }
  }

  if (a2)
  {
LABEL_51:
    *(this + 497) = 1;
  }

  return *(this + 100) == 6;
}

uint64_t physx::Sq::AABBTree::progressiveBuild(physx::Sq::AABBTree *this, uint64_t a2, uint64_t *a3, int a4, unsigned int a5)
{
  if (a4)
  {
    if (*(*(this + 9) + 8))
    {
      if (a5)
      {
        for (i = 0; i < a5; i += v18)
        {
          v10 = *(this + 9);
          v11 = *(v10 + 8);
          if (!v11)
          {
            break;
          }

          v12 = *(v10 + 16);
          *(v10 + 16) = v12 + 1;
          v13 = *(*v10 + 8 * v12);
          if (v12 + 1 == v11)
          {
            *(v10 + 8) = 0;
            *(v10 + 16) = 0;
          }

          physx::Gu::AABBTreeBuildNode::subdivide(v13, a2, a3, this + 24, *this);
          v14 = v13[1].i64[1];
          if (v14)
          {
            v25 = v14 + 40;
            v15 = *(v10 + 8);
            v16 = *(v10 + 12) & 0x7FFFFFFF;
            if (v16 <= v15)
            {
              physx::shdfnd::Array<physx::Gu::AABBTreeBuildNode *,physx::shdfnd::ReflectionAllocator<physx::Gu::AABBTreeBuildNode *>>::growAndPushBack(v10, &v25);
              v17 = *(v10 + 8);
              v16 = *(v10 + 12) & 0x7FFFFFFF;
            }

            else
            {
              *(*v10 + 8 * v15) = v14 + 40;
              v17 = v15 + 1;
              *(v10 + 8) = v15 + 1;
            }

            v25 = v14;
            if (v16 <= v17)
            {
              physx::shdfnd::Array<physx::Gu::AABBTreeBuildNode *,physx::shdfnd::ReflectionAllocator<physx::Gu::AABBTreeBuildNode *>>::growAndPushBack(v10, &v25);
            }

            else
            {
              *(*v10 + 8 * v17) = v14;
              *(v10 + 8) = v17 + 1;
            }
          }

          v18 = v13[2].i32[1];
          *(a3 + 1) += v18;
        }
      }

      return 1;
    }

    else
    {
      physx::Sq::AABBTree::buildEnd(this, a2, a3);
      v24 = *(this + 9);
      if (v24)
      {
        physx::IG::HandleManager<unsigned int>::~HandleManager(*(this + 9));
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v24);
      }

      result = 0;
      *(this + 9) = 0;
    }
  }

  else
  {
    v20 = *(a2 + 4);
    if (v20 && (physx::Sq::AABBTree::release(this, 1), *(this + 2) = v20, physx::Gu::initAABBTreeBuild(a2, (this + 24), a3, this)))
    {
      v21 = physx::shdfnd::Foundation::mInstance;
      if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
      {
        v22 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Sq::FIFOStack>::getName() [T = physx::Sq::FIFOStack]";
      }

      else
      {
        v22 = "<allocation names disabled>";
      }

      v23 = (*(*(v21 + 24) + 16))(v21 + 24, 24, v22, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/scenequery/src/SqAABBTree.cpp", 281);
      *v23 = 0;
      *(v23 + 8) = 0;
      *(v23 + 16) = 0;
      *(this + 9) = v23;
      v25 = *(this + 3);
      physx::shdfnd::Array<physx::Gu::AABBTreeBuildNode *,physx::shdfnd::ReflectionAllocator<physx::Gu::AABBTreeBuildNode *>>::growAndPushBack(v23, &v25);
      return 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t physx::Sq::AABBPruner::prepareBuild(physx::Sq::AABBPruner *this)
{
  if (*(this + 498) != 1)
  {
    return 0;
  }

  if (*(this + 100))
  {
    return 1;
  }

  v3 = *(this + 104);
  if (!v3)
  {
    return 0;
  }

  v4 = *(this + 6);
  if (v4)
  {
    physx::Sq::AABBTree::~AABBTree(*(this + 6));
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v4);
  }

  v5 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v6 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Sq::AABBTree>::getName() [T = physx::Sq::AABBTree]";
  }

  else
  {
    v6 = "<allocation names disabled>";
  }

  v7 = (*(*(v5 + 24) + 16))(v5 + 24, 104, v6, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/scenequery/src/SqAABBPruner.cpp", 691);
  v8 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 96) = 0;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0u;
  *(v7 + 76) = 0u;
  *(this + 6) = v7;
  *(this + 16) = v3;
  if (v3 != -1)
  {
    v8 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 24 * (v3 + 1), "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/scenequery/src/SqAABBPruner.cpp", 695);
  }

  *(this + 7) = v8;
  memcpy(v8, *(this + 53), (24 * v3));
  ++*(this + 18);
  *(this + 11) = vbic_s8(0x100000001, *(this + 88));
  *(this + 2) = 0;
  *(this + 3) = 0;
  if (*(this + 4))
  {
    v9 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v9.n128_u64[0] = 0;
  *(this + 2) = v9;
  v10 = *(this + 16);
  *(this + 3) = *(this + 7);
  *(this + 4) = 4;
  *(this + 5) = v10;
  result = 1;
  *(this + 100) = 1;
  return result;
}

BOOL physx::Sq::AABBTree::build(_DWORD *a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  if (v2)
  {
    physx::Sq::AABBTree::release(a1, 1);
    v6 = 0;
    a1[2] = v2;
    physx::Gu::buildAABBTree(a2, (a1 + 6), &v6, a1);
    physx::Sq::AABBTree::buildEnd(a1, a2, &v6);
  }

  return v2 != 0;
}

uint64_t *physx::Sq::AABBTree::refitMarkedNodes(uint64_t *result, uint64_t a2)
{
  v2 = result[10];
  if (v2)
  {
    v3 = *(result + 24);
    v4 = v3 + 1;
    if (v3 != -1)
    {
      v5 = *result;
      v6 = result[2];
      v7 = vdupq_n_s32(0x5A60B17Fu);
      v8 = vdupq_n_s32(0xDA60B17F);
      do
      {
        v9 = v3;
        v10 = *(v2 + 4 * v3);
        if (v10)
        {
          v11 = 32 * v4;
          v12 = 0x80000000;
          v13 = 31;
          do
          {
            v14 = v13;
            _X2 = (v6 + 28 * --v11);
            __asm { PRFM            #0, [X2] }

            if ((v12 & v10) != 0)
            {
              v21 = _X2[1].u32[2];
              if (v21)
              {
                v27 = (v21 >> 1) & 0xF;
                v26 = v8;
                v23 = v7;
                if (v27)
                {
                  v28 = (v5 + ((v21 >> 3) & 0x1FFFFFFC));
                  v29 = (a2 + 24 * *v28);
                  v23 = *v29;
                  v26 = *(v29 + 12);
                  if (v27 != 1)
                  {
                    v30 = 4 * v27;
                    v31 = v28 + 1;
                    v32 = v30 - 4;
                    do
                    {
                      v33 = *v31++;
                      v34 = a2 + 24 * v33;
                      v23 = vminq_f32(v23, *v34);
                      v26 = vmaxq_f32(v26, *(v34 + 12));
                      v32 -= 4;
                    }

                    while (v32);
                  }
                }
              }

              else
              {
                v22 = v6 + 28 * (_X2[1].i32[2] >> 1);
                v23 = vminq_f32(*v22, *(v22 + 28));
                v24.i32[0] = HIDWORD(*v22);
                v24.i32[1] = *(v22 + 16);
                v24.i64[1] = *(v22 + 20);
                v25.i32[0] = HIDWORD(*(v22 + 28));
                v25.i32[1] = *(v22 + 44);
                v25.i64[1] = *(v22 + 48);
                v26 = vmaxq_f32(v24, v25);
              }

              v23.i32[3] = v26.i32[0];
              *_X2 = v23;
              _X2[1].i64[0] = vextq_s8(v26, v26, 4uLL).u64[0];
            }

            v12 >>= 1;
            v13 = v14 - 1;
          }

          while (v14);
          *(v2 + 4 * v9) = 0;
        }

        v3 = v9 - 1;
        v4 = v9;
      }

      while (v9);
    }

    *(result + 24) = 0;
  }

  return result;
}

int32x2_t *physx::Sq::AABBPruner::merge(int32x2_t *this, void *a2)
{
  v2 = this[1];
  if (v2)
  {
    v3 = *(a2 + 4);
    v4 = this[52].i32[0] - v3;
    v5 = *a2;
    v6 = a2[1];
    v7 = a2[3];
    v20 = *a2;
    v21 = v6;
    v22 = v3;
    v23 = v7;
    v24 = v4;
    if (this[62].i8[0])
    {
      return physx::Sq::ExtendedBucketPruner::addTree(this + 10, &v20, this[9].u32[0]);
    }

    else
    {
      v8 = *(v2 + 8);
      if (v8 + v3)
      {
        v9 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 4 * (v8 + v3), "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/scenequery/src/SqAABBTree.cpp", 840);
        v8 = *(v2 + 8);
      }

      else
      {
        v9 = 0;
      }

      memcpy(v9, *v2, (4 * v8));
      if (*v2)
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
      }

      *v2 = v9;
      *(v2 + 68) += v3;
      if (v3)
      {
        for (i = 0; i < v3; ++i)
        {
          *(v9 + (i + *(v2 + 8))) = *(v7 + 4 * i) + v4;
        }
      }

      v11 = *(v2 + 64) + v5 + 1;
      if ((v11 & 0x1F) != 0)
      {
        v12 = (v11 >> 5) + 1;
      }

      else
      {
        v12 = v11 >> 5;
      }

      if (v12 > *(v2 + 88))
      {
        v13 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 4 * v12, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/scenequery/src/SqAABBTree.cpp", 337);
        bzero(&v13[4 * *(v2 + 88)], 4 * (v12 - *(v2 + 88)));
        memcpy(v13, *(v2 + 80), (4 * *(v2 + 88)));
        if (*(v2 + 80))
        {
          (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
        }

        *(v2 + 80) = v13;
        *(v2 + 88) = v12;
      }

      if (!*(v2 + 56))
      {
        v14 = *(v2 + 64);
        if (v14)
        {
          v15 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 4 * v14, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/scenequery/src/SqAABBTree.cpp", 859);
        }

        else
        {
          v15 = 0;
        }

        *(v2 + 56) = v15;
        _createParentArray(v15, *(v2 + 16), *(v2 + 16), *(v2 + 16));
      }

      v16 = *(v2 + 16);
      if (*v16 > *v6 || *(v16 + 4) > *(v6 + 4) || *(v16 + 8) > *(v6 + 8) || *(v16 + 12) < *(v6 + 12) || *(v16 + 16) < *(v6 + 16) || *(v16 + 20) < *(v6 + 20) || (*(v16 + 24) & 1) != 0)
      {
        if (*(v16 + 24))
        {
          this = physx::Sq::AABBTree::mergeRuntimeLeaf(v2, v16, &v20, 0);
        }

        else
        {
          this = physx::Sq::AABBTree::mergeRuntimeNode(v2, v16, &v20, 0);
        }

        v17 = *(v2 + 16);
        v18 = *(v17 + 8);
        if (v18 >= *(v6 + 8))
        {
          v18 = *(v6 + 8);
        }

        *v17 = vbsl_s8(vcgt_f32(*v6, *v17), *v17, *v6);
        *(v17 + 8) = v18;
        v19 = *(v17 + 20);
        if (v19 <= *(v6 + 20))
        {
          v19 = *(v6 + 20);
        }

        *(v17 + 12) = vbsl_s8(vcgt_f32(*(v17 + 12), *(v6 + 12)), *(v17 + 12), *(v6 + 12));
        *(v17 + 20) = v19;
      }

      else
      {
        this = physx::Sq::AABBTree::traverseRuntimeNode(v2, v16, &v20);
      }

      *(v2 + 8) += v3;
    }
  }

  return this;
}

uint64_t **flatten(uint64_t **result, uint64_t a2)
{
  v2 = *(result + 4);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = result[1];
    do
    {
      result = &v5[2 * v3];
      v6 = *(result + 2);
      if (v6)
      {
        v7 = 0;
        result = *result;
        do
        {
          v8 = &result[5 * v7];
          v9 = a2 + 28 * v4;
          *v9 = *v8;
          *(v9 + 8) = v8[1];
          *(v9 + 16) = v8[2];
          v10 = v8[3];
          if (v10)
          {
            v11 = 0;
            v12 = (v5 + 1);
            v13 = v2;
            do
            {
              v14 = *(v12 - 1);
              v15 = *v12;
              v16 = v14 + 40 * *v12;
              v18 = v10 >= v14;
              v17 = v10 - v14;
              v18 = !v18 || v10 >= v16;
              if (!v18)
              {
                v20 = -858993459 * (v17 >> 3);
                goto LABEL_15;
              }

              v12 += 4;
              v11 += v15;
              --v13;
            }

            while (v13);
            v20 = -1;
LABEL_15:
            v19 = 2 * (v20 + v11);
          }

          else
          {
            v19 = (32 * *(v8 + 8)) | (2 * (*(v8 + 9) & 0xF)) | 1;
          }

          *(v9 + 24) = v19;
          ++v4;
          ++v7;
        }

        while (v7 != v6);
      }

      ++v3;
    }

    while (v3 != v2);
  }

  return result;
}

void physx::Sq::AABBTree::~AABBTree(physx::Sq::AABBTree *this)
{
  physx::Sq::AABBTree::release(this, 0);
  if (*(this + 10))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *(this + 10) = 0;
  physx::Gu::NodeAllocator::~NodeAllocator((this + 24));
}

void physx::Sq::AABBTree::release(physx::Sq::AABBTree *this, int a2)
{
  v4 = *(this + 9);
  if (v4)
  {
    physx::IG::HandleManager<unsigned int>::~HandleManager(*(this + 9));
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v4);
  }

  *(this + 9) = 0;
  if (*(this + 7))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(this + 7) = 0;
  v5 = *(this + 2);
  if (v5)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v5 - 16);
  }

  *(this + 2) = 0;
  physx::Gu::NodeAllocator::release((this + 24));
  if (*this)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *this = 0;
  *(this + 16) = 0;
  *(this + 2) = 0;
  if (a2)
  {
    bzero(*(this + 10), (4 * *(this + 22)));
  }

  *(this + 24) = 0;
}

void *physx::Sq::AABBTree::initTree(uint64_t a1, const void **a2)
{
  v4 = *(a2 + 4);
  if (v4)
  {
    v5 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 4 * v4, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/scenequery/src/SqAABBTree.cpp", 168);
    LODWORD(v4) = *(a2 + 4);
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  memcpy(v5, a2[3], (4 * v4));
  v6 = *a2;
  v7 = physx::shdfnd::ReflectionAllocator<physx::Sq::AABBTreeRuntimeNode>::allocate(&v10, 28 * v6 + 16, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/scenequery/src/SqAABBTree.cpp", 173);
  *v7 = 28;
  v7[1] = v6;
  v7 += 2;
  *(a1 + 16) = v7;
  v8 = *a2;
  *(a1 + 64) = *a2;
  return memcpy(v7, a2[1], (28 * v8));
}

uint64_t physx::Sq::AABBTree::buildEnd(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(a2 + 16))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *(a2 + 16) = 0;
  v6 = *a3;
  *(a1 + 64) = *a3;
  v7 = v6;
  v8 = physx::shdfnd::ReflectionAllocator<physx::Sq::AABBTreeRuntimeNode>::allocate(&v10, 28 * v6 + 16, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/scenequery/src/SqAABBTree.cpp", 209);
  *v8 = 28;
  v8[1] = v7;
  *(a1 + 16) = v8 + 2;
  flatten((a1 + 24), (v8 + 2));
  return physx::Gu::NodeAllocator::release((a1 + 24));
}

uint64_t physx::Sq::BitArray::init(physx::Sq::BitArray *this, unsigned int a2)
{
  v3 = a2 >> 5;
  if ((a2 & 0x1F) != 0)
  {
    ++v3;
  }

  *(this + 2) = v3;
  if (*this)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    v3 = *(this + 2);
  }

  if (v3)
  {
    v4 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 4 * v3, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/scenequery/src/SqAABBTree.cpp", 325);
    v5 = (4 * *(this + 2));
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  *this = v4;
  bzero(v4, v5);
  return 1;
}

uint64_t _createParentArray(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(result + 0xFFFFFFFEDB6DB6DCLL * ((a3 - a4) >> 2)) = -1227133513 * ((a2 - a4) >> 2);
  v5 = (a3 + 24);
  v4 = *(a3 + 24);
  if ((v4 & 1) == 0)
  {
    v7 = a3;
    v8 = result;
    v9 = a4 + 28;
    do
    {
      result = _createParentArray(v8, v7, a4 + 28 * (v4 >> 1), a4);
      v10 = *v5 >> 1;
      v11 = v7 - a4;
      v7 = v9 + 28 * v10;
      if (a4)
      {
        v12 = v9 + 28 * v10;
      }

      else
      {
        v12 = 0;
      }

      *(v8 + 0xFFFFFFFEDB6DB6DCLL * ((v12 - a4) >> 2)) = -1227133513 * (v11 >> 2);
      v13 = *(v12 + 24);
      v5 = (v12 + 24);
      v4 = v13;
    }

    while ((v13 & 1) == 0);
  }

  return result;
}

uint64_t physx::Sq::AABBTree::addRuntimeChilds(uint64_t result, unsigned int *a2, unsigned int *a3)
{
  if (*a3)
  {
    v3 = 0;
    v4 = *a2;
    v5 = *(result + 16);
    v6 = *(a3 + 1) + 16;
    v7 = *a2;
    do
    {
      v8 = v7;
      v9 = (v5 + 28 * v7);
      *v9 = *(v6 - 16);
      v9[1] = *(v6 - 8);
      v9[2] = *v6;
      v10 = *(v6 + 8);
      if (v10)
      {
        *(v5 + 28 * v8 + 24) = v10 + 32 * *(result + 8);
      }

      else
      {
        v11 = v4 + (v10 >> 1);
        *(v5 + 28 * v8 + 24) = 2 * v11;
        v12 = *a2;
        v13 = *(result + 56);
        *(v13 + 4 * v11) = *a2;
        *(v13 + 4 * (v11 + 1)) = v12;
      }

      v7 = *a2 + 1;
      *a2 = v7;
      ++v3;
      v6 += 28;
    }

    while (v3 < *a3);
  }

  return result;
}

uint64_t physx::Sq::AABBTree::mergeRuntimeLeaf(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int a4)
{
  v8 = *(a1 + 64) + *a3 + 1;
  v9 = physx::shdfnd::ReflectionAllocator<physx::Sq::AABBTreeRuntimeNode>::allocate(&v21, 28 * v8 + 16, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/scenequery/src/SqAABBTree.cpp", 659);
  *v9 = 28;
  v9[1] = v8;
  v10 = (v9 + 2);
  v11 = *(a1 + 64);
  if (v11 + *a3 == -1)
  {
    v12 = 0;
  }

  else
  {
    v12 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 4 * (v11 + *a3 + 1), "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/scenequery/src/SqAABBTree.cpp", 660);
    v11 = *(a1 + 64);
  }

  memcpy(v10, *(a1 + 16), (28 * v11));
  memcpy(v12, *(a1 + 56), (4 * *(a1 + 64)));
  v13 = *(a1 + 64);
  v14 = &v10[28 * v13];
  *v14 = *a2;
  *(v14 + 1) = *(a2 + 8);
  *(v14 + 2) = *(a2 + 16);
  *(v14 + 6) = *(a2 + 24);
  *(v12 + v13) = a4;
  v15 = *(a1 + 80);
  if (v15 && ((*(v15 + 4 * (a4 >> 5)) >> a4) & 1) != 0)
  {
    *(v15 + 4 * (v13 >> 5)) |= 1 << v13;
    v16 = *(a1 + 96);
    if (v16 <= (v13 >> 5))
    {
      v16 = v13 >> 5;
    }

    *(a1 + 96) = v16;
  }

  v17 = *(a1 + 16);
  if (v17)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v17 - 16);
  }

  *(a1 + 16) = v10;
  if (*(a1 + 56))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(a1 + 56) = v12;
  v20 = v13 + 1;
  result = physx::Sq::AABBTree::addRuntimeChilds(a1, &v20, a3);
  *(*(a1 + 56) + 4 * (*(a1 + 64) + 1)) = a4;
  v19 = *(a1 + 64);
  *(*(a1 + 16) + 28 * a4 + 24) = 2 * v19;
  *(a1 + 64) = v19 + *a3 + 1;
  return result;
}

uint64_t physx::Sq::AABBTree::mergeRuntimeNode(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int a4)
{
  v8 = *(a2 + 24);
  v9 = v8 >> 1;
  v10 = *(a1 + 64) + *a3 + 1;
  v11 = physx::shdfnd::ReflectionAllocator<physx::Sq::AABBTreeRuntimeNode>::allocate(&v27, 28 * v10 + 16, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/scenequery/src/SqAABBTree.cpp", 725);
  *v11 = 28;
  v11[1] = v10;
  v12 = (v11 + 2);
  if (*(a1 + 64) + *a3 == -1)
  {
    v13 = 0;
  }

  else
  {
    v13 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 4 * (*(a1 + 64) + *a3 + 1), "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/scenequery/src/SqAABBTree.cpp", 726);
  }

  memcpy(v12, *(a1 + 16), (28 * v9));
  memcpy(v13, *(a1 + 56), (4 * v9));
  v26 = v8 >> 1;
  v14 = &v12[28 * v9];
  *v14 = *a2;
  *(v14 + 1) = *(a2 + 8);
  *(v14 + 2) = *(a2 + 16);
  *(v14 + 6) = 2 * (*a3 + (*(a2 + 24) >> 1)) + 2;
  v15 = &v13[4 * v9];
  *v15 = a4;
  v16 = *(a1 + 80);
  if (v16 && ((*(v16 + 4 * (a4 >> 5)) >> a4) & 1) != 0)
  {
    *(v16 + 4 * (v8 >> 6)) |= 1 << (v8 >> 1);
    v17 = *(a1 + 96);
    if (v17 <= (v8 >> 6))
    {
      v17 = v8 >> 6;
    }

    *(a1 + 96) = v17;
  }

  v18 = *(a1 + 64) - v9;
  if (v18)
  {
    memcpy(&v14[28 * *a3 + 28], (*(a1 + 16) + 28 * v9), (28 * v18));
    memcpy(&v15[4 * *a3 + 4], (*(a1 + 56) + 4 * v9), (4 * (*(a1 + 64) - v9)));
  }

  v19 = *(a1 + 16);
  if (v19)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v19 - 16);
  }

  *(a1 + 16) = v12;
  if (*(a1 + 56))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(a1 + 56) = v13;
  v26 = v9 + 1;
  result = physx::Sq::AABBTree::addRuntimeChilds(a1, &v26, a3);
  *(a1 + 64) += *a3 + 1;
  v21 = *(a1 + 56);
  *(v21 + 4 * (v9 + 1)) = a4;
  v22 = *a3 + v9 + 1;
  if (v22 < *(a1 + 64))
  {
    v23 = *(a1 + 16);
    v24 = (v23 + 28 * v22 + 24);
    do
    {
      v25 = *(v21 + 4 * v22);
      if (v25 == a4)
      {
        *(v21 + 4 * v22) = v9;
      }

      else if (v25 >= v9)
      {
        *(v21 + 4 * v22) = v25 + *a3 + 1;
      }

      else if (v22)
      {
        *(v23 + 28 * v25 + 24) = (*(v23 + 28 * v25 + 24) + 2 * *a3 + 2) & 0xFFFFFFFE;
      }

      if ((*v24 & 1) == 0)
      {
        *v24 += 2 * *a3 + 2;
      }

      ++v22;
      v24 += 7;
    }

    while (v22 < *(a1 + 64));
  }

  return result;
}

uint64_t physx::Sq::AABBTree::traverseRuntimeNode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(v3) = 0;
  v4 = *(a3 + 8);
  v5 = *v4;
  while (1)
  {
    do
    {
      v6 = v3;
      v7 = a2;
      v8 = *(a2 + 24);
      v3 = v8 >> 1;
      a2 = *(a1 + 16) + 28 * (*(a2 + 24) >> 1);
    }

    while (*a2 <= v5 && *(a2 + 4) <= v4[1] && *(a2 + 8) <= v4[2] && *(a2 + 12) >= v4[3] && *(a2 + 16) >= v4[4] && *(a2 + 20) >= v4[5]);
    if (*(a2 + 28) > v5 || *(a2 + 32) > v4[1] || *(a2 + 36) > v4[2] || *(a2 + 40) < v4[3] || *(a2 + 44) < v4[4] || *(a2 + 48) < v4[5])
    {
      break;
    }

    LODWORD(v3) = v3 + 1;
    a2 += 28;
  }

  if (v8)
  {
    return physx::Sq::AABBTree::mergeRuntimeLeaf(a1, v7, a3, v6);
  }

  else
  {
    return physx::Sq::AABBTree::mergeRuntimeNode(a1, v7, a3, v6);
  }
}

uint64_t physx::shdfnd::Array<physx::Sq::IncrementalAABBTreeNode *,physx::shdfnd::ReflectionAllocator<physx::Sq::IncrementalAABBTreeNode *>>::resizeUninitialized(uint64_t result, unsigned int a2)
{
  v3 = result;
  if ((*(result + 12) & 0x7FFFFFFFu) < a2)
  {
    result = physx::shdfnd::Array<physx::Sq::IncrementalAABBTreeNode *,physx::shdfnd::ReflectionAllocator<physx::Sq::IncrementalAABBTreeNode *>>::recreate(result, a2);
  }

  *(v3 + 8) = a2;
  return result;
}

float32x4_t *physx::Sq::IncrementalAABBTree::insert(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v6 = (a3 + 24 * a2);
  v7 = *v6;
  v7.i32[3] = 0;
  v8 = *(v6 + 12);
  v8.i32[3] = 0;
  v93 = v8;
  v94 = v7;
  v9 = *(a1 + 1144);
  if (v9)
  {
    v12 = v9[3].i64[0];
    if (v12)
    {
      v13 = vaddq_f32(v7, v8);
      v15 = &v9[2].i8[8];
      v14 = v9[2].i64[1];
      v16 = v14[1];
      v17 = v12[1];
      v18 = vaddq_f32(v17, *v12);
      v19 = vsubq_f32(v13, vaddq_f32(v16, *v14));
      v20 = vsubq_f32(v16, *v14);
      v21 = vsubq_f32(v17, *v12);
      *v21.i8 = vmul_f32(vzip1_s32(*&vextq_s8(v21, v21, 8uLL), *&vextq_s8(v20, v20, 8uLL)), vmul_f32(vzip1_s32(*v21.i8, *v20.i8), vzip2_s32(*v21.i8, *v20.i8)));
      __asm { FMOV            V1.2S, #3.0 }

      *v17.f32 = vcgt_f32(vrev64_s32(*v21.i8), vmul_f32(*v21.i8, _D1));
      v27 = vsubq_f32(v13, v18);
      *v17.f32 = vorr_s8(vdup_lane_s32(*v17.f32, 1), *v17.f32);
      v28 = v17.i8[0];
      v29 = vbic_s8(*v17.f32, vcgt_f32(vdup_lane_s32(*v21.i8, 1), *v21.i8)).u8[0] & 1;
      v19.i32[3] = 0;
      v30 = vmulq_f32(v19, v19);
      v30.i64[0] = vpaddq_f32(v30, v30).u64[0];
      v27.i32[3] = 0;
      v31 = vmulq_f32(v27, v27);
      v31.i64[0] = vpaddq_f32(v31, v31).u64[0];
      v32 = vuzp1_s8(vdup_lane_s16(vcgt_f32(vpadd_f32(*v30.f32, *v30.f32), vpadd_f32(*v31.f32, *v31.f32)), 0), *v13.f32).u32[0];
      if (v17.i8[0])
      {
        v33 = *(*&v15[8 * v29] + 48) == 0;
        if (*(*&v15[8 * v29] + 48))
        {
          v34 = *(a1 + 1144);
        }

        else
        {
          v34 = 0;
        }
      }

      else
      {
        v34 = 0;
        v33 = 1;
      }

      v37 = *&v15[8 * (v32 == -1)];
      v92 = v37;
      for (i = v37[3].i64[0]; i; i = v37[3].i64[0])
      {
        v47 = &v37[2].i8[8];
        v48 = v37[2].i64[1];
        _X14 = v48[2].i64[1];
        __asm { PRFM            #0, [X14] }

        _X14 = i[2].i64[1];
        __asm { PRFM            #0, [X14] }

        v54 = *v48;
        v53 = v48[1];
        v56 = *i;
        v55 = i[1];
        if (v33)
        {
          v57 = vsubq_f32(v53, v54);
          v58 = vsubq_f32(v55, v56);
          *v57.i8 = vmul_f32(vzip1_s32(*&vextq_s8(v58, v58, 8uLL), *&vextq_s8(v57, v57, 8uLL)), vmul_f32(vzip1_s32(*v58.i8, *v57.i8), vzip2_s32(*v58.i8, *v57.i8)));
          *v58.i8 = vcgt_f32(vrev64_s32(*v57.i8), vmul_f32(*v57.i8, _D1));
          v59 = *&vmvn_s8(vcgt_f32(vdup_lane_s32(*v57.i8, 1), *v57.i8)) & 1;
          if (vorr_s8(vdup_lane_s32(*v58.i8, 1), *v58.i8).u8[0])
          {
            v29 = v59;
            v28 = 1;
          }
        }

        if (!v34 && (v28 & 1) != 0)
        {
          if (*(*&v47[8 * v29] + 48))
          {
            v34 = v37;
          }

          else
          {
            v34 = 0;
          }

          v33 &= *(*&v47[8 * v29] + 48) == 0;
        }

        v60 = vsubq_f32(v13, vaddq_f32(v53, v54));
        v61 = vsubq_f32(v13, vaddq_f32(v55, v56));
        v60.i32[3] = 0;
        v62 = vmulq_f32(v60, v60);
        v62.i64[0] = vpaddq_f32(v62, v62).u64[0];
        v61.i32[3] = 0;
        v63 = vmulq_f32(v61, v61);
        v63.i64[0] = vpaddq_f32(v63, v63).u64[0];
        v37 = *&v47[8 * (vuzp1_s8(vdup_lane_s16(vcgt_f32(vpadd_f32(*v62.f32, *v62.f32), vpadd_f32(*v63.f32, *v63.f32)), 0), *v13.f32).u32[0] == -1)];
        v92 = v37;
      }

      v64 = v37[2].i64[1];
      v65 = *v64;
      if (v65 > 3)
      {
        v74 = *(a4 + 8);
        if (v74 && **a4 == v37)
        {
          *(a4 + 8) = v74 - 1;
        }

        physx::Sq::IncrementalAABBTree::splitLeafNode(a1, v37, a2, &v94, &v93, a3);
        v37 = v75;
        v76 = v75[2].i64[0];
        v77 = *(a4 + 8);
        v78 = *(a4 + 12) & 0x7FFFFFFF;
        if (v78 <= v77)
        {
          physx::shdfnd::Array<physx::Sq::IncrementalAABBTreeNode *,physx::shdfnd::ReflectionAllocator<physx::Sq::IncrementalAABBTreeNode *>>::growAndPushBack(a4, (v76 + 40));
          v79 = *(a4 + 8);
          v78 = *(a4 + 12) & 0x7FFFFFFF;
        }

        else
        {
          *(*a4 + 8 * v77) = *(v76 + 40);
          v79 = v77 + 1;
          *(a4 + 8) = v79;
        }

        if (v78 > v79)
        {
          *(*a4 + 8 * v79) = *(v76 + 48);
          v73 = v79 + 1;
          goto LABEL_58;
        }

        v85 = (v76 + 48);
      }

      else
      {
        *v64 = v65 + 1;
        v64[v65 + 1] = a2;
        v66 = vminq_f32(*v37, v7);
        v67 = vmaxq_f32(v37[1], v8);
        *v37 = v66;
        v37[1] = v67;
        for (j = v37[2].i64[0]; j; j = j[2].i64[0])
        {
          if ((vuzp1_s8(vmovn_s32(vcgtq_f32(*j, v66)), *v67.f32).u32[0] & 0xFFFFFF) == 0)
          {
            v69 = vmovn_s32(vcgtq_f32(v67, j[1]));
            if ((vuzp1_s8(v69, v69).u32[0] & 0xFFFFFF) == 0)
            {
              break;
            }
          }

          v70 = j[2].i64[1];
          v71 = j[3].i64[0];
          v66 = vminq_f32(*v70, *v71);
          *j = v66;
          v67 = vmaxq_f32(v70[1], v71[1]);
          j[1] = v67;
        }

        v72 = *(a4 + 8);
        if (v72)
        {
          if (**a4 == v37)
          {
            goto LABEL_59;
          }

          if ((*(a4 + 12) & 0x7FFFFFFFu) > v72)
          {
            *(*a4 + 8 * v72) = v37;
            v73 = v72 + 1;
LABEL_58:
            *(a4 + 8) = v73;
LABEL_59:
            if (!v34)
            {
              return v37;
            }

            goto LABEL_63;
          }
        }

        else if ((*(a4 + 12) & 0x7FFFFFFF) != 0)
        {
          **a4 = v37;
          v73 = 1;
          goto LABEL_58;
        }

        v85 = &v92;
      }

      physx::shdfnd::Array<physx::Sq::IncrementalAABBTreeNode *,physx::shdfnd::ReflectionAllocator<physx::Sq::IncrementalAABBTreeNode *>>::growAndPushBack(a4, v85);
      if (v34)
      {
LABEL_63:
        physx::Sq::IncrementalAABBTree::rotateTree(a1, v34, a4, v29, a3, 1);
        return 0;
      }
    }

    else
    {
      v38 = v9[2].i64[1];
      v39 = *v38;
      if (v39 > 3)
      {
        v80 = *(a4 + 8);
        if (v80 && **a4 == v9)
        {
          *(a4 + 8) = v80 - 1;
        }

        physx::Sq::IncrementalAABBTree::splitLeafNode(a1, v9, a2, &v94, &v93, a3);
        v37 = v81;
        v92 = v81;
        v82 = v81[2].i64[0];
        *(a1 + 1144) = v82;
        v83 = *(v82 + 40);
        if (v83 == v81)
        {
          v83 = *(v82 + 48);
        }

        v91 = v83;
        v84 = *(a4 + 8);
        if (!v83[3].i64[0])
        {
          if ((*(a4 + 12) & 0x7FFFFFFFu) <= v84)
          {
            physx::shdfnd::Array<physx::Sq::IncrementalAABBTreeNode *,physx::shdfnd::ReflectionAllocator<physx::Sq::IncrementalAABBTreeNode *>>::growAndPushBack(a4, &v91);
            v84 = *(a4 + 8);
          }

          else
          {
            *(*a4 + 8 * v84++) = v83;
            *(a4 + 8) = v84;
          }
        }

        if ((*(a4 + 12) & 0x7FFFFFFFu) <= v84)
        {
          physx::shdfnd::Array<physx::Sq::IncrementalAABBTreeNode *,physx::shdfnd::ReflectionAllocator<physx::Sq::IncrementalAABBTreeNode *>>::growAndPushBack(a4, &v92);
          return v92;
        }

        else
        {
          *(*a4 + 8 * v84) = v37;
          *(a4 + 8) = v84 + 1;
        }
      }

      else
      {
        *v38 = v39 + 1;
        v38[v39 + 1] = a2;
        v40 = vminq_f32(*v9, v7);
        v41 = vmaxq_f32(v9[1], v8);
        *v9 = v40;
        v9[1] = v41;
        for (k = v9[2].i64[0]; k; k = k[2].i64[0])
        {
          if ((vuzp1_s8(vmovn_s32(vcgtq_f32(*k, v40)), *v41.f32).u32[0] & 0xFFFFFF) == 0)
          {
            v43 = vmovn_s32(vcgtq_f32(v41, k[1]));
            if ((vuzp1_s8(v43, v43).u32[0] & 0xFFFFFF) == 0)
            {
              break;
            }
          }

          v44 = k[2].i64[1];
          v45 = k[3].i64[0];
          v40 = vminq_f32(*v44, *v45);
          *k = v40;
          v41 = vmaxq_f32(v44[1], v45[1]);
          k[1] = v41;
        }

        return *(a1 + 1144);
      }
    }
  }

  else
  {
    v35 = *(a1 + 568);
    if (!v35)
    {
      v87 = v8;
      v89 = v7;
      physx::shdfnd::PoolBase<physx::Sq::AABBTreeIndices,physx::shdfnd::ReflectionAllocator<physx::Sq::AABBTreeIndices>>::allocateSlab(a1 + 8);
      v8 = v87;
      v7 = v89;
      v35 = *(a1 + 568);
    }

    *(a1 + 568) = *v35;
    ++*(a1 + 556);
    *v35 = 1;
    *(v35 + 4) = a2;
    *(v35 + 8) = 0;
    *(v35 + 16) = 0;
    v36 = *(a1 + 1136);
    if (!v36)
    {
      v88 = v8;
      v90 = v7;
      physx::shdfnd::PoolBase<physx::Sq::IncrementalAABBTreeNodePair,physx::shdfnd::ReflectionAllocator<physx::Sq::IncrementalAABBTreeNodePair>>::allocateSlab(a1 + 576);
      v8 = v88;
      v7 = v90;
      v36 = *(a1 + 1136);
    }

    *(a1 + 1136) = *v36;
    ++*(a1 + 1124);
    *(a1 + 1144) = v36;
    *v36 = v7;
    *(*(a1 + 1144) + 16) = v8;
    *(*(a1 + 1144) + 40) = v35;
    *(*(a1 + 1144) + 48) = 0;
    v37 = *(a1 + 1144);
    v37[2].i64[0] = 0;
  }

  return v37;
}

uint64_t physx::shdfnd::Array<physx::Sq::IncrementalAABBTreeNode *,physx::shdfnd::ReflectionAllocator<physx::Sq::IncrementalAABBTreeNode *>>::resize(uint64_t result, unsigned int a2, uint64_t *a3)
{
  v5 = result;
  if ((*(result + 12) & 0x7FFFFFFFu) < a2)
  {
    result = physx::shdfnd::Array<physx::Sq::IncrementalAABBTreeNode *,physx::shdfnd::ReflectionAllocator<physx::Sq::IncrementalAABBTreeNode *>>::recreate(result, a2);
  }

  v6 = *(v5 + 8);
  if (v6 < a2)
  {
    v7 = 0;
    v8 = (*v5 + 8 * v6 + 8);
    v9 = *v5 + 8 * a2;
    if (v8 > v9)
    {
      v9 = *v5 + 8 * v6 + 8;
    }

    v10 = *a3;
    v11 = (v9 + ~*v5 - 8 * v6) >> 3;
    v12 = vdupq_n_s64(v11);
    v13 = (v11 + 2) & 0x3FFFFFFFFFFFFFFELL;
    do
    {
      v14 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(vdupq_n_s64(v7), xmmword_1E3049620)));
      if (v14.i8[0])
      {
        *(v8 - 1) = v10;
      }

      if (v14.i8[4])
      {
        *v8 = v10;
      }

      v7 += 2;
      v8 += 2;
    }

    while (v13 != v7);
  }

  *(v5 + 8) = a2;
  return result;
}

float32x4_t *physx::Sq::IncrementalAABBTree::update(uint64_t a1, float32x4_t *a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v9 = physx::Sq::IncrementalAABBTree::remove(a1, a2, a3, a4);
  v12 = v9;
  if (v9 && !*(v9 + 48))
  {
    v10 = *(a5 + 8);
    if ((*(a5 + 12) & 0x7FFFFFFFu) <= v10)
    {
      physx::shdfnd::Array<physx::Sq::IncrementalAABBTreeNode *,physx::shdfnd::ReflectionAllocator<physx::Sq::IncrementalAABBTreeNode *>>::growAndPushBack(a5, &v12);
    }

    else
    {
      *(*a5 + 8 * v10) = v9;
      *(a5 + 8) = v10 + 1;
    }
  }

  return physx::Sq::IncrementalAABBTree::insert(a1, a3, a4, a5);
}

uint64_t physx::Sq::IncrementalAABBTree::remove(uint64_t a1, float32x4_t *a2, int a3, uint64_t a4)
{
  v4 = a2[2].i64[1];
  v5 = v4->u32[0];
  if (v5 < 2)
  {
    if (*(a1 + 1144) == a2)
    {
      result = 0;
      --*(a1 + 1124);
      a2->i64[0] = *(a1 + 1136);
      *(a1 + 1136) = a2;
      *(a1 + 1144) = 0;
    }

    else
    {
      result = a2[2].i64[0];
      v12 = *(result + 40);
      v13 = v12;
      if (v12 == a2)
      {
        v13 = *(result + 48);
      }

      *(result + 16) = v13[1];
      *result = *v13;
      v14 = v13[2].i64[1];
      v15 = v13[3].i64[0];
      *(result + 40) = v14;
      if (v15)
      {
        *(v14 + 32) = result;
        v16 = v13[3].i64[0];
        *(result + 48) = v16;
        *(v16 + 32) = result;
      }

      else
      {
        *(result + 48) = 0;
      }

      v30 = *(result + 32);
      if (v30)
      {
        v32 = v30[2].i64[1];
        v31 = v30[3].i64[0];
        if (!v31)
        {
          v33 = v32->u32[0];
          v34 = (a4 + 24 * v32->u32[1]);
          v35 = *v34;
          v36 = *(v34 + 12);
          if (v33 >= 2)
          {
            v37 = v33 - 1;
            v38 = &v32->i32[2];
            do
            {
              v39 = *v38++;
              v40 = a4 + 24 * v39;
              v35 = vminq_f32(v35, *v40);
              v36 = vmaxq_f32(v36, *(v40 + 12));
              --v37;
            }

            while (v37);
          }

          v35.i32[3] = 0;
          v36.i32[3] = 0;
          goto LABEL_34;
        }

        *v30 = vminq_f32(*v32, *v31);
        for (v30[1] = vmaxq_f32(v32[1], v31[1]); ; v30[1] = v36)
        {
          v30 = v30[2].i64[0];
          if (!v30)
          {
            break;
          }

          v41 = v30[2].i64[1];
          v42 = v30[3].i64[0];
          v35 = vminq_f32(*v41, *v42);
          v36 = vmaxq_f32(v41[1], v42[1]);
          if (vuzp1_s8(vmovn_s32(vceqq_f32(*v30, v35)), *v35.f32).u32[0] == -1 && vuzp1_s8(vmovn_s32(vceqq_f32(v36, v30[1])), *v35.f32).u32[0] == -1)
          {
            break;
          }

LABEL_34:
          *v30 = v35;
        }
      }

      v43 = a2[2].i64[1];
      if (v43)
      {
        --*(a1 + 556);
        *v43 = *(a1 + 568);
        *(a1 + 568) = v43;
      }

      if (v12)
      {
        --*(a1 + 1124);
        v12->i64[0] = *(a1 + 1136);
        *(a1 + 1136) = v12;
      }
    }
  }

  else
  {
    v6 = v5;
    while (v6 * 4)
    {
      v7 = v4->i32[v6--];
      if (v7 == a3)
      {
        v8 = v5 - 1;
        v4->i32[0] = v8;
        *(a2[2].i64[1] + v6 * 4 + 4) = v4->i32[v8 + 1];
        v4 = a2[2].i64[1];
        break;
      }
    }

    v9 = a2[3].i64[0];
    if (v9)
    {
      *a2 = vminq_f32(*v4, *v9);
      a2[1] = vmaxq_f32(v4[1], v9[1]);
    }

    else
    {
      v17 = v4->u32[0];
      v18 = (a4 + 24 * v4->u32[1]);
      v19 = *v18;
      v20 = *(v18 + 12);
      if (v17 >= 2)
      {
        v21 = v17 - 1;
        v22 = &v4->i32[2];
        do
        {
          v23 = *v22++;
          v24 = a4 + 24 * v23;
          v19 = vminq_f32(v19, *v24);
          v20 = vmaxq_f32(v20, *(v24 + 12));
          --v21;
        }

        while (v21);
      }

      v19.i32[3] = 0;
      v20.i32[3] = 0;
      *a2 = v19;
      a2[1] = v20;
    }

    for (i = a2[2].i64[0]; i; i = i[2].i64[0])
    {
      v26 = i[2].i64[1];
      v27 = i[3].i64[0];
      v28 = vminq_f32(*v26, *v27);
      v29 = vmaxq_f32(v26[1], v27[1]);
      if (vuzp1_s8(vmovn_s32(vceqq_f32(*i, v28)), *v28.f32).u32[0] == -1 && vuzp1_s8(vmovn_s32(vceqq_f32(v29, i[1])), *v28.f32).u32[0] == -1)
      {
        break;
      }

      *i = v28;
      i[1] = v29;
    }

    return 0;
  }

  return result;
}

uint64_t physx::Gu::AABBTreeOverlap<physx::Gu::OBBAABBTests<true>,physx::Sq::IncrementalAABBTree,physx::Sq::IncrementalAABBTreeNode,physx::Sq::PrunerPayload,physx::Sq::PrunerCallback>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t *a4, unsigned int (***a5)(void, int *, uint64_t))
{
  v42 = *MEMORY[0x1E69E9840];
  v41 = 0x10000000100;
  v9 = 1;
  v39 = 1;
  v40 = v38;
  v38[0] = a3;
  while (1)
  {
    v10 = v9 - 1;
    v11 = v40[v9 - 1];
    v12 = v11[1];
    v13.i64[0] = 0x3F0000003F000000;
    v13.i64[1] = 0x3F0000003F000000;
    v14 = vmulq_f32(vsubq_f32(v12, *v11), v13);
    v14.i32[3] = 0;
    v15 = vmulq_f32(vaddq_f32(v12, *v11), v13);
    v15.i32[3] = 0;
    if (physx::Gu::OBBAABBTests<true>::operator()(a4, v15, v14))
    {
      v16 = 2 * v9;
      while (1)
      {
        v10 = v9 - 1;
        v17 = &v11[2].i8[8];
        v11 = v11[2].i64[1];
        if (!*(v17 + 1))
        {
          break;
        }

        v40[v10] = v11 + 4;
        if (v9 == (HIDWORD(v41) & 0x7FFFFFFF))
        {
          physx::shdfnd::Array<physx::Sq::IncrementalAABBTreeNode const*,physx::shdfnd::InlineAllocator<2048u,physx::shdfnd::ReflectionAllocator<physx::Sq::IncrementalAABBTreeNode const*>>>::resizeUninitialized(v38, v16);
        }

        v18 = v11[1];
        v19.i64[0] = 0x3F0000003F000000;
        v19.i64[1] = 0x3F0000003F000000;
        v20 = vmulq_f32(vsubq_f32(v18, *v11), v19);
        v20.i32[3] = 0;
        v21 = vmulq_f32(vaddq_f32(v18, *v11), v19);
        v21.i32[3] = 0;
        ++v9;
        v16 += 2;
        if (!physx::Gu::OBBAABBTests<true>::operator()(a4, v21, v20))
        {
          v10 = v9 - 1;
          goto LABEL_15;
        }
      }

      v22 = v11->i32[0];
      if (v11->i32[0])
      {
        break;
      }
    }

LABEL_15:
    v9 = v10;
    if (!v10)
    {
      v33 = 1;
      goto LABEL_18;
    }
  }

  v23 = &v11->i32[1];
  v24 = v11->i32[0];
  while (1)
  {
    v26 = *v23++;
    v25 = v26;
    if (v22 < 2 || (v27 = a2 + 24 * v25, v28 = *(v27 + 12), v29 = vaddq_f32(*v27, v28), v30.i64[0] = 0x3F0000003F000000, v30.i64[1] = 0x3F0000003F000000, v31 = vmulq_f32(vsubq_f32(v28, *v27), v30), v32 = vmulq_f32(v29, v30), v32.i32[3] = 0, v31.i32[3] = 0, physx::Gu::OBBAABBTests<true>::operator()(a4, v32, v31)))
    {
      v37 = 0;
      if (!(**a5)(a5, &v37, a1 + 16 * v25))
      {
        break;
      }
    }

    if (!--v24)
    {
      goto LABEL_15;
    }
  }

  v33 = 0;
LABEL_18:
  if ((v41 & 0x8000000000000000) == 0 && (v41 & 0x7FFFFFFF00000000) != 0 && v40 != v38 && v40 != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  return v33;
}

uint64_t physx::Gu::AABBTreeOverlap<physx::Gu::AABBAABBTest,physx::Sq::IncrementalAABBTree,physx::Sq::IncrementalAABBTreeNode,physx::Sq::PrunerPayload,physx::Sq::PrunerCallback>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t *a4, unsigned int (***a5)(void, int *, uint64_t))
{
  v36 = *MEMORY[0x1E69E9840];
  v35 = 0x10000000100;
  v9 = 1;
  v33 = 1;
  v34 = v32;
  v32[0] = a3;
  while (2)
  {
    v10 = 2 * v9--;
    v11 = v34[v9];
    while (1)
    {
      v12 = v11[1];
      v13.i64[0] = 0x3F0000003F000000;
      v13.i64[1] = 0x3F0000003F000000;
      v14 = vmulq_f32(vsubq_f32(v12, *v11), v13);
      v14.i32[3] = 0;
      v15 = vmulq_f32(vaddq_f32(v12, *v11), v13);
      v15.i32[3] = 0;
      *v15.f32 = vmovn_s32(vcgeq_f32(vaddq_f32(a4[1], v14), vabdq_f32(v15, *a4)));
      if ((~vuzp1_s8(*v15.f32, *v15.f32).u32[0] & 0xFFFFFF) != 0)
      {
        break;
      }

      v16 = &v11[2].i8[8];
      v11 = v11[2].i64[1];
      if (!*(v16 + 1))
      {
        v17 = v11->i32[0];
        if (v11->i32[0])
        {
          v18 = &v11->i32[1];
          v19 = v17;
          while (1)
          {
            v21 = *v18++;
            v20 = v21;
            if (v17 < 2 || (v22 = a2 + 24 * v20, v23 = *(v22 + 12), v24.i64[0] = 0x3F0000003F000000, v24.i64[1] = 0x3F0000003F000000, v25 = vmulq_f32(vsubq_f32(v23, *v22), v24), v25.i32[3] = 0, v26 = vmulq_f32(vaddq_f32(*v22, v23), v24), v26.i32[3] = 0, *v25.f32 = vmovn_s32(vcgeq_f32(vaddq_f32(a4[1], v25), vabdq_f32(v26, *a4))), (~vuzp1_s8(*v25.f32, *v25.f32).u32[0] & 0xFFFFFF) == 0))
            {
              v31 = 0;
              if (!(**a5)(a5, &v31, a1 + 16 * v20))
              {
                break;
              }
            }

            if (!--v19)
            {
              goto LABEL_14;
            }
          }

          v27 = 0;
          goto LABEL_17;
        }

        break;
      }

      v34[v9] = v11 + 4;
      if (v9 + 1 == (HIDWORD(v35) & 0x7FFFFFFF))
      {
        physx::shdfnd::Array<physx::Sq::IncrementalAABBTreeNode const*,physx::shdfnd::InlineAllocator<2048u,physx::shdfnd::ReflectionAllocator<physx::Sq::IncrementalAABBTreeNode const*>>>::resizeUninitialized(v32, v10);
      }

      v10 += 2;
      ++v9;
    }

LABEL_14:
    if (v9)
    {
      continue;
    }

    break;
  }

  v27 = 1;
LABEL_17:
  if ((v35 & 0x8000000000000000) == 0)
  {
    v28 = (v35 & 0x7FFFFFFF00000000) == 0 || v34 == v32;
    if (!v28 && v34 != 0)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }
  }

  return v27;
}

uint64_t physx::Gu::AABBTreeOverlap<physx::Gu::CapsuleAABBTest,physx::Sq::IncrementalAABBTree,physx::Sq::IncrementalAABBTreeNode,physx::Sq::PrunerPayload,physx::Sq::PrunerCallback>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t *a4, unsigned int (***a5)(void, int *, uint64_t))
{
  v45 = *MEMORY[0x1E69E9840];
  v44 = 0x10000000100;
  v9 = 1;
  v42 = 1;
  v43 = v41;
  v41[0] = a3;
  while (2)
  {
    v10 = 2 * v9--;
    v11 = v43[v9];
    while (1)
    {
      v12 = v11[1];
      v13.i64[0] = 0x3F0000003F000000;
      v13.i64[1] = 0x3F0000003F000000;
      v14 = vmulq_f32(vsubq_f32(v12, *v11), v13);
      v14.i32[3] = 0;
      v15 = vmulq_f32(vaddq_f32(v12, *v11), v13);
      v15.i32[3] = 0;
      v16 = vaddq_f32(a4[3], v14);
      v17 = vsubq_f32(*a4, v15);
      *v18.f32 = vext_s8(*v17.f32, *&vextq_s8(v17, v17, 8uLL), 4uLL);
      v18.i64[1] = v17.u32[0];
      *v19.f32 = vext_s8(*v16.f32, *&vextq_s8(v16, v16, 8uLL), 4uLL);
      v19.i64[1] = v16.u32[0];
      *v15.f32 = vmovn_s32(vandq_s8(vandq_s8(vcgeq_f32(a4[7], vsubq_f32(v15, v16)), vcgeq_f32(vaddq_f32(v15, v16), a4[6])), vcgeq_f32(vmlaq_f32(vmulq_f32(a4[4], v19), a4[5], v16), vabsq_f32(vmlsq_f32(vmulq_f32(a4[1], v18), v17, a4[2])))));
      if (vuzp1_s8(*v15.f32, *v15.f32).u32[0] != -1)
      {
        break;
      }

      v20 = &v11[2].i8[8];
      v11 = v11[2].i64[1];
      if (!*(v20 + 1))
      {
        v21 = v11->i32[0];
        if (v11->i32[0])
        {
          v22 = &v11->i32[1];
          v23 = v21;
          while (1)
          {
            v25 = *v22++;
            v24 = v25;
            if (v21 < 2 || (v26 = a2 + 24 * v24, v27 = *(v26 + 12), v28 = vaddq_f32(*v26, v27), v29 = vsubq_f32(v27, *v26), v27.i64[0] = 0x3F0000003F000000, v27.i64[1] = 0x3F0000003F000000, v30 = vmulq_f32(v29, v27), v31 = vmulq_f32(v28, v27), v31.i32[3] = 0, v30.i32[3] = 0, v32 = vaddq_f32(a4[3], v30), v33 = vsubq_f32(*a4, v31), *v34.f32 = vext_s8(*v33.f32, *&vextq_s8(v33, v33, 8uLL), 4uLL), v34.i64[1] = v33.u32[0], *v35.f32 = vext_s8(*v32.f32, *&vextq_s8(v32, v32, 8uLL), 4uLL), v35.i64[1] = v32.u32[0], *v32.f32 = vmovn_s32(vandq_s8(vandq_s8(vcgeq_f32(a4[7], vsubq_f32(v31, v32)), vcgeq_f32(vaddq_f32(v31, v32), a4[6])), vcgeq_f32(vmlaq_f32(vmulq_f32(a4[4], v35), a4[5], v32), vabsq_f32(vmlsq_f32(vmulq_f32(a4[1], v34), v33, a4[2]))))), vuzp1_s8(*v32.f32, *v32.f32).u32[0] == -1))
            {
              v40 = 0;
              if (!(**a5)(a5, &v40, a1 + 16 * v24))
              {
                break;
              }
            }

            if (!--v23)
            {
              goto LABEL_14;
            }
          }

          v36 = 0;
          goto LABEL_17;
        }

        break;
      }

      v43[v9] = v11 + 4;
      if (v9 + 1 == (HIDWORD(v44) & 0x7FFFFFFF))
      {
        physx::shdfnd::Array<physx::Sq::IncrementalAABBTreeNode const*,physx::shdfnd::InlineAllocator<2048u,physx::shdfnd::ReflectionAllocator<physx::Sq::IncrementalAABBTreeNode const*>>>::resizeUninitialized(v41, v10);
      }

      v10 += 2;
      ++v9;
    }

LABEL_14:
    if (v9)
    {
      continue;
    }

    break;
  }

  v36 = 1;
LABEL_17:
  if ((v44 & 0x8000000000000000) == 0)
  {
    v37 = (v44 & 0x7FFFFFFF00000000) == 0 || v43 == v41;
    if (!v37 && v43 != 0)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }
  }

  return v36;
}

uint64_t physx::Gu::AABBTreeOverlap<physx::Gu::SphereAABBTest,physx::Sq::IncrementalAABBTree,physx::Sq::IncrementalAABBTreeNode,physx::Sq::PrunerPayload,physx::Sq::PrunerCallback>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int (***a5)(void, int *, uint64_t))
{
  v45 = *MEMORY[0x1E69E9840];
  v44 = 0x10000000100;
  v9 = 1;
  v42 = 1;
  v43 = v41;
  v41[0] = a3;
  while (2)
  {
    v10 = 2 * v9--;
    v11 = v43[v9];
    while (1)
    {
      v12 = v11[1];
      v13.i64[0] = 0x3F0000003F000000;
      v13.i64[1] = 0x3F0000003F000000;
      v14 = vmulq_f32(vsubq_f32(v12, *v11), v13);
      v14.i32[3] = 0;
      v15 = vmulq_f32(vaddq_f32(v12, *v11), v13);
      v15.i32[3] = 0;
      v16 = vsubq_f32(*a4, v15);
      v17 = vnegq_f32(v14);
      v17.i32[3] = 0;
      v18 = vsubq_f32(v16, vmaxq_f32(vminq_f32(v16, v14), v17));
      v19 = vmulq_f32(v18, v18);
      v19.i64[0] = vpaddq_f32(v19, v19).u64[0];
      *v19.f32 = vdup_lane_s16(vcge_f32(*(a4 + 16), vpadd_f32(*v19.f32, *v19.f32)), 0);
      if (vuzp1_s8(*v19.f32, *v19.f32).u32[0] != -1)
      {
        break;
      }

      v20 = &v11[2].i8[8];
      v11 = v11[2].i64[1];
      if (!*(v20 + 1))
      {
        v21 = v11->i32[0];
        if (v11->i32[0])
        {
          v22 = &v11->i32[1];
          v23 = v21;
          while (1)
          {
            v25 = *v22++;
            v24 = v25;
            if (v21 < 2 || (v26 = a2 + 24 * v24, v27 = *(v26 + 12), v28 = vaddq_f32(*v26, v27), v29 = vsubq_f32(v27, *v26), v27.i64[0] = 0x3F0000003F000000, v27.i64[1] = 0x3F0000003F000000, v30 = vmulq_f32(v29, v27), v31 = vmulq_f32(v28, v27), v31.i32[3] = 0, v30.i32[3] = 0, v32 = vsubq_f32(*a4, v31), v33 = vnegq_f32(v30), v33.i32[3] = 0, v34 = vsubq_f32(v32, vmaxq_f32(vminq_f32(v32, v30), v33)), v35 = vmulq_f32(v34, v34), v35.i64[0] = vpaddq_f32(v35, v35).u64[0], *v35.f32 = vdup_lane_s16(vcge_f32(*(a4 + 16), vpadd_f32(*v35.f32, *v35.f32)), 0), vuzp1_s8(*v35.f32, *v35.f32).u32[0] == -1))
            {
              v40 = 0;
              if (!(**a5)(a5, &v40, a1 + 16 * v24))
              {
                break;
              }
            }

            if (!--v23)
            {
              goto LABEL_14;
            }
          }

          v36 = 0;
          goto LABEL_17;
        }

        break;
      }

      v43[v9] = v11 + 4;
      if (v9 + 1 == (HIDWORD(v44) & 0x7FFFFFFF))
      {
        physx::shdfnd::Array<physx::Sq::IncrementalAABBTreeNode const*,physx::shdfnd::InlineAllocator<2048u,physx::shdfnd::ReflectionAllocator<physx::Sq::IncrementalAABBTreeNode const*>>>::resizeUninitialized(v41, v10);
      }

      v10 += 2;
      ++v9;
    }

LABEL_14:
    if (v9)
    {
      continue;
    }

    break;
  }

  v36 = 1;
LABEL_17:
  if ((v44 & 0x8000000000000000) == 0)
  {
    v37 = (v44 & 0x7FFFFFFF00000000) == 0 || v43 == v41;
    if (!v37 && v43 != 0)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }
  }

  return v36;
}

uint64_t physx::Gu::AABBTreeRaycast<true,physx::Sq::IncrementalAABBTree,physx::Sq::IncrementalAABBTreeNode,physx::Sq::PrunerPayload,physx::Sq::PrunerCallback>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float32x2_t *a5, float32x2_t *a6, float *a7, float32x2_t *a8, unsigned int (***a9)(void, float *, uint64_t))
{
  v12 = 0;
  v99 = *MEMORY[0x1E69E9840];
  v13 = a5[1].f32[0] + a5[1].f32[0];
  v14 = vadd_f32(*a5, *a5);
  v15 = vadd_f32(*a6, *a6);
  v16 = a6[1].f32[0] + a6[1].f32[0];
  *v22.f32 = vadd_f32(*a8, *a8);
  v17 = COERCE_DOUBLE(vadd_f32(v14, vmul_n_f32(v15, *a7)));
  v18 = COERCE_DOUBLE(vbsl_s8(vceqz_f32(v15), v14, vbsl_s8(vcgez_f32(v15), vneg_f32(0x80000000800000), 0x80000000800000)));
  *v19.f32 = v14;
  v19.i64[1] = LODWORD(v13);
  *v20.f32 = v15;
  v20.i64[1] = LODWORD(v16);
  *v21.f32 = vext_s8(v15, *&vextq_s8(v20, v20, 8uLL), 4uLL);
  v21.i64[1] = v15.u32[0];
  v22.f32[2] = a8[1].f32[0] + a8[1].f32[0];
  v22.i32[3] = 0;
  v23 = vabsq_f32(v20);
  *v24.f32 = vext_s8(*v23.f32, *&vextq_s8(v23, v23, 8uLL), 4uLL);
  v24.i64[1] = v23.u32[0];
  v25 = v13 + (v16 * *a7);
  v26 = -3.4028e38;
  if (v16 >= 0.0)
  {
    v26 = 3.4028e38;
  }

  if (v16 != 0.0)
  {
    v13 = v26;
  }

  if (*a7 >= 3.4028e38)
  {
    *v27.i64 = v18;
  }

  else
  {
    v13 = v25;
    *v27.i64 = v17;
  }

  v27.i64[1] = LODWORD(v13);
  v28 = vminq_f32(v19, v27);
  v29 = vmaxq_f32(v19, v27);
  v98 = 0x10000000100;
  v96 = 1;
  v97 = v95;
  v95[0] = *(a4 + 1144);
  v30 = vnegq_f32(v21);
  v88 = v20;
  v89 = v19;
  v86 = v23;
  v87 = v22;
  v84 = v30;
  v85 = v24;
  do
  {
    v31 = v97[v12];
    v32 = *v31;
    v33 = v31[1];
    v32.i32[3] = 0;
    v33.i32[3] = 0;
    v34 = vaddq_f32(v22, vsubq_f32(v33, v32));
    v35 = vaddq_f32(v22, vaddq_f32(v33, v33));
    v36 = vsubq_f32(vaddq_f32(v32, v32), v22);
    v37 = vsubq_f32(v19, vaddq_f32(v32, v33));
    *v33.f32 = vext_s8(*v37.f32, *&vextq_s8(v37, v37, 8uLL), 4uLL);
    v33.i64[1] = v37.u32[0];
    *v38.f32 = vext_s8(*v34.f32, *&vextq_s8(v34, v34, 8uLL), 4uLL);
    v38.i64[1] = v34.u32[0];
    *v37.f32 = vmovn_s32(vandq_s8(vandq_s8(vcgeq_f32(v35, v28), vcgeq_f32(v29, v36)), vcgeq_f32(vmlaq_f32(vmulq_f32(v23, v38), v24, v34), vabsq_f32(vmlaq_f32(vmulq_f32(v20, v33), v37, v30)))));
    if (vuzp1_s8(*v37.f32, *v37.f32).u32[0] == -1)
    {
      v39 = *a7;
      v94 = *a7;
      if (v31[3].i64[0])
      {
        v23 = v86;
        v22 = v87;
        v30 = v84;
        v24 = v85;
        v90 = v29;
        v92 = v28;
        do
        {
          v40 = v31[2].i64[1];
          v41 = *v40;
          v42 = v40[1];
          v41.i32[3] = 0;
          v42.i32[3] = 0;
          v43 = vaddq_f32(v22, vsubq_f32(v42, v41));
          v44 = vaddq_f32(v22, vaddq_f32(v42, v42));
          v45 = vaddq_f32(v41, v41);
          v46 = vaddq_f32(v41, v42);
          v47 = vsubq_f32(v19, v46);
          *v48.f32 = vext_s8(*v47.f32, *&vextq_s8(v47, v47, 8uLL), 4uLL);
          v48.i64[1] = v47.u32[0];
          *v49.f32 = vext_s8(*v43.f32, *&vextq_s8(v43, v43, 8uLL), 4uLL);
          v49.i64[1] = v43.u32[0];
          v50 = vuzp1_s8(vmovn_s32(vandq_s8(vandq_s8(vcgeq_f32(v44, v28), vcgeq_f32(v29, vsubq_f32(v45, v22))), vcgeq_f32(vmlaq_f32(vmulq_f32(v23, v49), v24, v43), vabsq_f32(vmlaq_f32(vmulq_f32(v20, v48), v47, v30))))), *v46.f32).u32[0];
          v51 = v40[4];
          v51.i32[3] = 0;
          v52 = v40[5];
          v52.i32[3] = 0;
          v53 = vaddq_f32(v22, vsubq_f32(v52, v51));
          v54 = vaddq_f32(v22, vaddq_f32(v52, v52));
          v55 = vsubq_f32(vaddq_f32(v51, v51), v22);
          v56 = vaddq_f32(v51, v52);
          v57 = vsubq_f32(v19, v56);
          *v49.f32 = vext_s8(*v57.f32, *&vextq_s8(v57, v57, 8uLL), 4uLL);
          v49.i64[1] = v57.u32[0];
          *v58.f32 = vext_s8(*v53.f32, *&vextq_s8(v53, v53, 8uLL), 4uLL);
          v58.i64[1] = v53.u32[0];
          v59 = vuzp1_s8(vmovn_s32(vandq_s8(vandq_s8(vcgeq_f32(v54, v28), vcgeq_f32(v29, v55)), vcgeq_f32(vmlaq_f32(vmulq_f32(v23, v58), v24, v53), vabsq_f32(vmlaq_f32(vmulq_f32(v20, v49), v57, v30))))), *v46.f32).u32[0];
          if (v50 == -1 && v59 == -1)
          {
            v62 = vmulq_f32(v20, vsubq_f32(v56, v46));
            v62.i64[0] = vpaddq_f32(v62, v62).u64[0];
            v62.f32[0] = vpadd_f32(*v62.f32, *v62.f32).f32[0];
            v97[v12] = &v40[4 * (v62.f32[0] > 0.0)];
            v31 = &v40[4 * (v62.f32[0] <= 0.0)];
            if (v12 + 1 == (HIDWORD(v98) & 0x7FFFFFFF))
            {
              physx::shdfnd::Array<physx::Sq::IncrementalAABBTreeNode const*,physx::shdfnd::InlineAllocator<2048u,physx::shdfnd::ReflectionAllocator<physx::Sq::IncrementalAABBTreeNode const*>>>::resizeUninitialized(v95, 2 * (v12 + 1));
              v29 = v90;
              v28 = v92;
              v30 = v84;
              v24 = v85;
              v23 = v86;
              v22 = v87;
              v20 = v88;
              v19 = v89;
            }

            ++v12;
          }

          else
          {
            if (v50 == -1)
            {
              v31 = v31[2].i64[1];
            }

            else
            {
              v31 = v40 + 4;
            }

            if (v50 != -1 && v59 != -1)
            {
              goto LABEL_38;
            }
          }
        }

        while (v31[3].i64[0]);
        v39 = *a7;
      }

      v63 = v31[2].i64[1];
      v64 = *v63;
      if (*v63)
      {
        v65 = v63 + 1;
        for (i = *v63; i; --i)
        {
          v68 = *v65++;
          v67 = v68;
          if (v64 >= 2)
          {
            v69 = a3 + 24 * v67;
            v70 = *(v69 + 12);
            v71 = vaddq_f32(*v69, v70);
            v72 = vsubq_f32(v70, *v69);
            v71.i32[3] = 0;
            v72.i32[3] = 0;
            v73 = vaddq_f32(v87, v72);
            v74 = vaddq_f32(v71, v73);
            v75 = vsubq_f32(v71, v73);
            v76 = vsubq_f32(v19, v71);
            *v77.f32 = vext_s8(*v76.f32, *&vextq_s8(v76, v76, 8uLL), 4uLL);
            v77.i64[1] = v76.u32[0];
            *v78.f32 = vext_s8(*v73.f32, *&vextq_s8(v73, v73, 8uLL), 4uLL);
            v78.i64[1] = v73.u32[0];
            *v73.f32 = vmovn_s32(vandq_s8(vandq_s8(vcgeq_f32(v74, v28), vcgeq_f32(v29, v75)), vcgeq_f32(vmlaq_f32(vmulq_f32(v86, v78), v85, v73), vabsq_f32(vmlaq_f32(vmulq_f32(v20, v77), v76, v84)))));
            if (vuzp1_s8(*v73.f32, *v73.f32).u32[0] != -1)
            {
              continue;
            }
          }

          v91 = v29;
          v93 = v28;
          if (!(**a9)(a9, &v94, a2 + 16 * v67))
          {
            v82 = 0;
            goto LABEL_41;
          }

          v79 = v94;
          v20 = v88;
          v19 = v89;
          v29 = v91;
          v28 = v93;
          if (v94 < v39)
          {
            *a7 = v94;
            v80 = vmlaq_n_f32(v89, v88, v79);
            v80.i64[1] = vextq_s8(v80, v80, 8uLL).u32[0];
            v28 = vminq_f32(v89, v80);
            v29 = vmaxq_f32(v89, v80);
          }
        }
      }

      v23 = v86;
      v22 = v87;
      v30 = v84;
      v24 = v85;
    }

LABEL_38:
    ;
  }

  while (v12--);
  v82 = 1;
LABEL_41:
  if ((v98 & 0x8000000000000000) == 0 && (v98 & 0x7FFFFFFF00000000) != 0 && v97 != v95 && v97)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  return v82;
}

uint64_t physx::Gu::AABBTreeRaycast<false,physx::Sq::IncrementalAABBTree,physx::Sq::IncrementalAABBTreeNode,physx::Sq::PrunerPayload,physx::Sq::PrunerCallback>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float32x2_t *a5, float32x2_t *a6, float *a7, uint64_t a8, unsigned int (***a9)(void, float *, uint64_t))
{
  v12 = 0;
  v95 = *MEMORY[0x1E69E9840];
  v13 = a5[1].f32[0] + a5[1].f32[0];
  v14 = a6[1].f32[0] + a6[1].f32[0];
  *v15.f32 = vadd_f32(*a5, *a5);
  v15.i64[1] = LODWORD(v13);
  *v16.f32 = vadd_f32(*a6, *a6);
  v16.i64[1] = LODWORD(v14);
  v17 = COERCE_DOUBLE(vadd_f32(*v15.f32, vmul_n_f32(*v16.f32, *a7)));
  v18 = COERCE_DOUBLE(vbsl_s8(vceqz_f32(*v16.f32), *v15.f32, vbsl_s8(vcgez_f32(*v16.f32), vneg_f32(0x80000000800000), 0x80000000800000)));
  *v19.f32 = vext_s8(*v16.f32, *&vextq_s8(v16, v16, 8uLL), 4uLL);
  v19.i64[1] = v16.u32[0];
  v20 = vabsq_f32(v16);
  *v21.f32 = vext_s8(*v20.f32, *&vextq_s8(v20, v20, 8uLL), 4uLL);
  v21.i64[1] = v20.u32[0];
  v22 = v13 + (v14 * *a7);
  v23 = -3.4028e38;
  if (v14 >= 0.0)
  {
    v23 = 3.4028e38;
  }

  if (v14 != 0.0)
  {
    v13 = v23;
  }

  if (*a7 >= 3.4028e38)
  {
    *v24.i64 = v18;
  }

  else
  {
    v13 = v22;
    *v24.i64 = v17;
  }

  v24.i64[1] = LODWORD(v13);
  v25 = vminq_f32(v15, v24);
  v26 = vmaxq_f32(v15, v24);
  v94 = 0x10000000100;
  v92 = 1;
  v93 = v91;
  v91[0] = *(a4 + 1144);
  v27 = vnegq_f32(v19);
  v84 = v16;
  v85 = v15;
  v82 = v21;
  v83 = v20;
  v81 = v27;
  do
  {
    v28 = v93[v12];
    v29 = *v28;
    v30 = v28[1];
    v29.i32[3] = 0;
    v30.i32[3] = 0;
    v31 = vsubq_f32(v30, v29);
    v32 = vaddq_f32(v30, v30);
    v33 = vaddq_f32(v29, v29);
    v34 = vsubq_f32(v15, vaddq_f32(v29, v30));
    *v30.f32 = vext_s8(*v34.f32, *&vextq_s8(v34, v34, 8uLL), 4uLL);
    v30.i64[1] = v34.u32[0];
    *v35.f32 = vext_s8(*v31.f32, *&vextq_s8(v31, v31, 8uLL), 4uLL);
    v35.i64[1] = v31.u32[0];
    *v34.f32 = vmovn_s32(vandq_s8(vandq_s8(vcgeq_f32(v32, v25), vcgeq_f32(v26, v33)), vcgeq_f32(vmlaq_f32(vmulq_f32(v20, v35), v21, v31), vabsq_f32(vmlaq_f32(vmulq_f32(v16, v30), v34, v27)))));
    if (vuzp1_s8(*v34.f32, *v34.f32).u32[0] == -1)
    {
      v36 = *a7;
      v90 = *a7;
      if (v28[3].i64[0])
      {
        v21 = v82;
        v20 = v83;
        v27 = v81;
        v86 = v26;
        v88 = v25;
        do
        {
          v37 = v28[2].i64[1];
          v38 = *v37;
          v39 = v37[1];
          v38.i32[3] = 0;
          v39.i32[3] = 0;
          v40 = vsubq_f32(v39, v38);
          v41 = vaddq_f32(v39, v39);
          v42 = vaddq_f32(v38, v38);
          v43 = vaddq_f32(v38, v39);
          v44 = vsubq_f32(v15, v43);
          *v45.f32 = vext_s8(*v44.f32, *&vextq_s8(v44, v44, 8uLL), 4uLL);
          v45.i64[1] = v44.u32[0];
          *v46.f32 = vext_s8(*v40.f32, *&vextq_s8(v40, v40, 8uLL), 4uLL);
          v46.i64[1] = v40.u32[0];
          v47 = vuzp1_s8(vmovn_s32(vandq_s8(vandq_s8(vcgeq_f32(v41, v25), vcgeq_f32(v26, v42)), vcgeq_f32(vmlaq_f32(vmulq_f32(v20, v46), v21, v40), vabsq_f32(vmlaq_f32(vmulq_f32(v16, v45), v44, v27))))), *v43.f32).u32[0];
          v48 = v37[4];
          v48.i32[3] = 0;
          v49 = v37[5];
          v49.i32[3] = 0;
          v50 = vsubq_f32(v49, v48);
          v51 = vaddq_f32(v49, v49);
          v52 = vaddq_f32(v48, v48);
          v53 = vaddq_f32(v48, v49);
          v54 = vsubq_f32(v15, v53);
          *v46.f32 = vext_s8(*v54.f32, *&vextq_s8(v54, v54, 8uLL), 4uLL);
          v46.i64[1] = v54.u32[0];
          *v55.f32 = vext_s8(*v50.f32, *&vextq_s8(v50, v50, 8uLL), 4uLL);
          v55.i64[1] = v50.u32[0];
          v56 = vuzp1_s8(vmovn_s32(vandq_s8(vandq_s8(vcgeq_f32(v51, v25), vcgeq_f32(v26, v52)), vcgeq_f32(vmlaq_f32(vmulq_f32(v20, v55), v21, v50), vabsq_f32(vmlaq_f32(vmulq_f32(v16, v46), v54, v27))))), *v43.f32).u32[0];
          if (v47 == -1 && v56 == -1)
          {
            v59 = vmulq_f32(v16, vsubq_f32(v53, v43));
            v59.i64[0] = vpaddq_f32(v59, v59).u64[0];
            v59.f32[0] = vpadd_f32(*v59.f32, *v59.f32).f32[0];
            v93[v12] = &v37[4 * (v59.f32[0] > 0.0)];
            v28 = &v37[4 * (v59.f32[0] <= 0.0)];
            if (v12 + 1 == (HIDWORD(v94) & 0x7FFFFFFF))
            {
              physx::shdfnd::Array<physx::Sq::IncrementalAABBTreeNode const*,physx::shdfnd::InlineAllocator<2048u,physx::shdfnd::ReflectionAllocator<physx::Sq::IncrementalAABBTreeNode const*>>>::resizeUninitialized(v91, 2 * (v12 + 1));
              v26 = v86;
              v25 = v88;
              v27 = v81;
              v21 = v82;
              v20 = v83;
              v16 = v84;
              v15 = v85;
            }

            ++v12;
          }

          else
          {
            if (v47 == -1)
            {
              v28 = v28[2].i64[1];
            }

            else
            {
              v28 = v37 + 4;
            }

            if (v47 != -1 && v56 != -1)
            {
              goto LABEL_38;
            }
          }
        }

        while (v28[3].i64[0]);
        v36 = *a7;
      }

      v60 = v28[2].i64[1];
      v61 = *v60;
      if (*v60)
      {
        v62 = v60 + 1;
        for (i = *v60; i; --i)
        {
          v65 = *v62++;
          v64 = v65;
          if (v61 >= 2)
          {
            v66 = a3 + 24 * v64;
            v67 = *(v66 + 12);
            v68 = vaddq_f32(*v66, v67);
            v69 = vsubq_f32(v67, *v66);
            v68.i32[3] = 0;
            v70 = v69;
            v70.i32[3] = 0;
            v71 = vaddq_f32(v68, v70);
            v72 = vsubq_f32(v68, v70);
            v73 = vsubq_f32(v15, v68);
            *v74.f32 = vext_s8(*v73.f32, *&vextq_s8(v73, v73, 8uLL), 4uLL);
            v74.i64[1] = v73.u32[0];
            *v75.f32 = vext_s8(*v69.i8, *&vextq_s8(v69, v69, 8uLL), 4uLL);
            v75.i64[1] = v69.u32[0];
            *v69.i8 = vmovn_s32(vandq_s8(vandq_s8(vcgeq_f32(v71, v25), vcgeq_f32(v26, v72)), vcgeq_f32(vmlaq_f32(vmulq_f32(v83, v75), v82, v70), vabsq_f32(vmlaq_f32(vmulq_f32(v16, v74), v73, v81)))));
            if (vuzp1_s8(*v69.i8, *v69.i8).u32[0] != -1)
            {
              continue;
            }
          }

          v87 = v26;
          v89 = v25;
          if (!(**a9)(a9, &v90, a2 + 16 * v64))
          {
            v79 = 0;
            goto LABEL_41;
          }

          v76 = v90;
          v16 = v84;
          v15 = v85;
          v26 = v87;
          v25 = v89;
          if (v90 < v36)
          {
            *a7 = v90;
            v77 = vmlaq_n_f32(v85, v84, v76);
            v77.i64[1] = vextq_s8(v77, v77, 8uLL).u32[0];
            v25 = vminq_f32(v85, v77);
            v26 = vmaxq_f32(v85, v77);
          }
        }
      }

      v21 = v82;
      v20 = v83;
      v27 = v81;
    }

LABEL_38:
    ;
  }

  while (v12--);
  v79 = 1;
LABEL_41:
  if ((v94 & 0x8000000000000000) == 0 && (v94 & 0x7FFFFFFF00000000) != 0 && v93 != v91 && v93)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  return v79;
}

physx::Sq::IncrementalAABBPrunerCore *physx::Sq::IncrementalAABBPrunerCore::IncrementalAABBPrunerCore(physx::Sq::IncrementalAABBPrunerCore *this, const physx::Sq::PruningPool *a2)
{
  v4 = 0;
  *this = 1;
  do
  {
    v5 = this + v4;
    *(v5 + 2) = 0;
    *(v5 + 1) = 0u;
    *(v5 + 2) = 0u;
    *(v5 + 3) = 0u;
    *(v5 + 16) = 1061158912;
    *(v5 + 68) = 0xFFFFFFFFLL;
    *(v5 + 19) = 0;
    physx::shdfnd::internal::HashBase<physx::shdfnd::Pair<unsigned int const,physx::Sq::IncrementalAABBTreeNode *>,unsigned int,physx::shdfnd::Hash<unsigned int>,physx::shdfnd::internal::HashMapBase<unsigned int,physx::Sq::IncrementalAABBTreeNode *,physx::shdfnd::Hash<unsigned int>,physx::shdfnd::NonTrackingAllocator>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(this + v4 + 24, 0x40u);
    v4 += 72;
  }

  while (v4 != 144);
  *(this + 20) = 0;
  *(this + 19) = a2;
  *(this + 21) = 0;
  if (*(this + 15) <= 0xFFu)
  {
    physx::shdfnd::internal::HashBase<physx::shdfnd::Pair<unsigned int const,physx::Sq::IncrementalAABBTreeNode *>,unsigned int,physx::shdfnd::Hash<unsigned int>,physx::shdfnd::internal::HashMapBase<unsigned int,physx::Sq::IncrementalAABBTreeNode *,physx::shdfnd::Hash<unsigned int>,physx::shdfnd::NonTrackingAllocator>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(this + 24, 0x100u);
  }

  if (*(this + 33) <= 0xFFu)
  {
    physx::shdfnd::internal::HashBase<physx::shdfnd::Pair<unsigned int const,physx::Sq::IncrementalAABBTreeNode *>,unsigned int,physx::shdfnd::Hash<unsigned int>,physx::shdfnd::internal::HashMapBase<unsigned int,physx::Sq::IncrementalAABBTreeNode *,physx::shdfnd::Hash<unsigned int>,physx::shdfnd::NonTrackingAllocator>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(this + 96, 0x100u);
  }

  if ((*(this + 43) & 0x7FFFFFE0) == 0)
  {
    physx::shdfnd::Array<physx::Sq::IncrementalAABBTreeNode *,physx::shdfnd::ReflectionAllocator<physx::Sq::IncrementalAABBTreeNode *>>::recreate(this + 160, 0x20u);
  }

  return this;
}

void physx::Sq::IncrementalAABBPrunerCore::~IncrementalAABBPrunerCore(physx::Sq::IncrementalAABBPrunerCore *this)
{
  v2.n128_f64[0] = physx::Sq::IncrementalAABBPrunerCore::release(this);
  v3 = *(this + 43);
  if ((v3 & 0x80000000) == 0 && (v3 & 0x7FFFFFFF) != 0 && *(this + 20) != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v2);
  }

  for (i = 96; i != -48; i -= 72)
  {
    if (*(this + i))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v2);
    }
  }
}

double physx::Sq::IncrementalAABBPrunerCore::release(physx::Sq::IncrementalAABBPrunerCore *this)
{
  v2 = 0;
  v3 = this + 8;
  v4 = 1;
  do
  {
    v5 = v4;
    v6 = &v3[72 * v2];
    v7 = *(v6 + 1);
    if (v7)
    {
      physx::Sq::IncrementalAABBTree::~IncrementalAABBTree(*(v6 + 1));
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v7);
      *(v6 + 1) = 0;
    }

    physx::shdfnd::internal::HashBase<physx::Sc::Interaction *,physx::Sc::Interaction *,physx::shdfnd::Hash<physx::Sc::Interaction *>,physx::shdfnd::internal::HashSetBase<physx::Sc::Interaction *,physx::shdfnd::Hash<physx::Sc::Interaction *>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::clear(v6 + 16);
    v4 = 0;
    *v6 = 0;
    v2 = 1;
  }

  while ((v5 & 1) != 0);
  *&result = 1;
  *this = 1;
  return result;
}

uint64_t physx::Sq::IncrementalAABBPrunerCore::updateMapping(uint64_t result, int32x2_t *a2, int a3, uint64_t a4)
{
  v16 = a3;
  v6 = *(result + 168);
  if (v6)
  {
    v7 = result;
    if (!a4)
    {
      goto LABEL_4;
    }

    if (*(a4 + 48))
    {
      goto LABEL_4;
    }

    v12 = *(a4 + 40);
    if (!*v12)
    {
      goto LABEL_4;
    }

    v13 = 0;
    do
    {
      v15 = v12[v13 + 1];
      v17 = 0;
      result = physx::shdfnd::internal::HashBase<physx::shdfnd::Pair<unsigned int const,physx::Sq::IncrementalAABBTreeNode *>,unsigned int,physx::shdfnd::Hash<unsigned int>,physx::shdfnd::internal::HashMapBase<unsigned int,physx::Sq::IncrementalAABBTreeNode *,physx::shdfnd::Hash<unsigned int>,physx::shdfnd::NonTrackingAllocator>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::create(a2, &v15, &v17);
      if ((v17 & 1) == 0)
      {
        *result = v15;
      }

      *(result + 8) = a4;
      ++v13;
      v12 = *(a4 + 40);
    }

    while (v13 < *v12);
    v6 = *(v7 + 168);
    if (v6)
    {
LABEL_4:
      for (i = 0; i < v6; ++i)
      {
        v9 = *(*(v7 + 160) + 8 * i);
        v10 = *(v9 + 40);
        if (*v10)
        {
          v11 = 0;
          do
          {
            v14 = v10[v11 + 1];
            v18 = 0;
            result = physx::shdfnd::internal::HashBase<physx::shdfnd::Pair<unsigned int const,physx::Sq::IncrementalAABBTreeNode *>,unsigned int,physx::shdfnd::Hash<unsigned int>,physx::shdfnd::internal::HashMapBase<unsigned int,physx::Sq::IncrementalAABBTreeNode *,physx::shdfnd::Hash<unsigned int>,physx::shdfnd::NonTrackingAllocator>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::create(a2, &v14, &v18);
            if ((v18 & 1) == 0)
            {
              *result = v14;
            }

            *(result + 8) = v9;
            ++v11;
            v10 = *(v9 + 40);
          }

          while (v11 < *v10);
          v6 = *(v7 + 168);
        }
      }
    }
  }

  else
  {
    v19 = 0;
    result = physx::shdfnd::internal::HashBase<physx::shdfnd::Pair<unsigned int const,physx::Sq::IncrementalAABBTreeNode *>,unsigned int,physx::shdfnd::Hash<unsigned int>,physx::shdfnd::internal::HashMapBase<unsigned int,physx::Sq::IncrementalAABBTreeNode *,physx::shdfnd::Hash<unsigned int>,physx::shdfnd::NonTrackingAllocator>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::create(a2, &v16, &v19);
    if ((v19 & 1) == 0)
    {
      *result = v16;
    }

    *(result + 8) = a4;
  }

  return result;
}

uint64_t physx::Sq::IncrementalAABBPrunerCore::removeObject(int32x2_t *this, int a2, int a3, unsigned int *a4)
{
  v31 = a3;
  v32 = a2;
  v29 = 0;
  v30 = 0;
  v7 = this + 1;
  v8 = physx::shdfnd::internal::HashBase<physx::shdfnd::Pair<unsigned int const,physx::Sq::IncrementalAABBTreeNode *>,unsigned int,physx::shdfnd::Hash<unsigned int>,physx::shdfnd::internal::HashMapBase<unsigned int,physx::Sq::IncrementalAABBTreeNode *,physx::shdfnd::Hash<unsigned int>,physx::shdfnd::NonTrackingAllocator>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::erase(&this[9 * this->u32[1] + 3], &v32, &v29);
  v9 = 1;
  if (!v8)
  {
    v9 = 0;
  }

  v10 = this->i32[v9];
  if (v10 != this->i32[0] || (result = physx::shdfnd::internal::HashBase<physx::shdfnd::Pair<unsigned int const,physx::Sq::IncrementalAABBTreeNode *>,unsigned int,physx::shdfnd::Hash<unsigned int>,physx::shdfnd::internal::HashMapBase<unsigned int,physx::Sq::IncrementalAABBTreeNode *,physx::shdfnd::Hash<unsigned int>,physx::shdfnd::NonTrackingAllocator>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::erase(&v7[9 * v10 + 2], &v32, &v29), result))
  {
    v12 = &v7[9 * v10];
    *a4 = *v12;
    v13 = physx::Sq::IncrementalAABBTree::remove(*(v12 + 1), v30, v32, *(*&this[19] + 8));
    if (v13)
    {
      v14 = v13;
      if (!*(v13 + 48))
      {
        v15 = *(v13 + 40);
        if (*v15)
        {
          v16 = 0;
          do
          {
            v27 = v15[v16 + 1];
            v33 = 0;
            v17 = physx::shdfnd::internal::HashBase<physx::shdfnd::Pair<unsigned int const,physx::Sq::IncrementalAABBTreeNode *>,unsigned int,physx::shdfnd::Hash<unsigned int>,physx::shdfnd::internal::HashMapBase<unsigned int,physx::Sq::IncrementalAABBTreeNode *,physx::shdfnd::Hash<unsigned int>,physx::shdfnd::NonTrackingAllocator>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::create(v12 + 2, &v27, &v33);
            if ((v33 & 1) == 0)
            {
              *v17 = v27;
            }

            *(v17 + 8) = v14;
            ++v16;
            v15 = *(v14 + 40);
          }

          while (v16 < *v15);
        }
      }
    }

    if (v32 != a3)
    {
      v27 = 0;
      v28 = 0;
      v18 = physx::shdfnd::internal::HashBase<physx::shdfnd::Pair<unsigned int const,physx::Sq::IncrementalAABBTreeNode *>,unsigned int,physx::shdfnd::Hash<unsigned int>,physx::shdfnd::internal::HashMapBase<unsigned int,physx::Sq::IncrementalAABBTreeNode *,physx::shdfnd::Hash<unsigned int>,physx::shdfnd::NonTrackingAllocator>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::erase(&v7[9 * this->u32[0] + 2], &v31, &v27);
      v19 = 1;
      if (v18)
      {
        v19 = 0;
      }

      v20 = this->i32[v19];
      if (v20 != this->i32[1] || physx::shdfnd::internal::HashBase<physx::shdfnd::Pair<unsigned int const,physx::Sq::IncrementalAABBTreeNode *>,unsigned int,physx::shdfnd::Hash<unsigned int>,physx::shdfnd::internal::HashMapBase<unsigned int,physx::Sq::IncrementalAABBTreeNode *,physx::shdfnd::Hash<unsigned int>,physx::shdfnd::NonTrackingAllocator>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::erase(&v7[9 * v20 + 2], &v31, &v27))
      {
        v21 = v28;
        v33 = 0;
        v22 = physx::shdfnd::internal::HashBase<physx::shdfnd::Pair<unsigned int const,physx::Sq::IncrementalAABBTreeNode *>,unsigned int,physx::shdfnd::Hash<unsigned int>,physx::shdfnd::internal::HashMapBase<unsigned int,physx::Sq::IncrementalAABBTreeNode *,physx::shdfnd::Hash<unsigned int>,physx::shdfnd::NonTrackingAllocator>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::create(&v7[9 * v20 + 2], &v32, &v33);
        v23 = v32;
        if ((v33 & 1) == 0)
        {
          *v22 = v32;
        }

        *(v22 + 8) = v21;
        v24 = *(v28 + 40);
        v25 = *v24;
        if (v25)
        {
          for (i = (v24 + 1); *i != v31; ++i)
          {
            if (!--v25)
            {
              return 1;
            }
          }

          *i = v23;
        }
      }
    }

    return 1;
  }

  return result;
}

uint64_t physx::Sq::IncrementalAABBPrunerCore::swapIndex(int32x2_t *this, int a2, int a3)
{
  v16 = a3;
  v17 = a2;
  v14 = 0;
  v15 = 0;
  v4 = this + 1;
  v5 = physx::shdfnd::internal::HashBase<physx::shdfnd::Pair<unsigned int const,physx::Sq::IncrementalAABBTreeNode *>,unsigned int,physx::shdfnd::Hash<unsigned int>,physx::shdfnd::internal::HashMapBase<unsigned int,physx::Sq::IncrementalAABBTreeNode *,physx::shdfnd::Hash<unsigned int>,physx::shdfnd::NonTrackingAllocator>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::erase(&this[9 * this->u32[0] + 3], &v16, &v14);
  v6 = 1;
  if (v5)
  {
    v6 = 0;
  }

  v7 = this->i32[v6];
  if (v7 != this->i32[1] || (result = physx::shdfnd::internal::HashBase<physx::shdfnd::Pair<unsigned int const,physx::Sq::IncrementalAABBTreeNode *>,unsigned int,physx::shdfnd::Hash<unsigned int>,physx::shdfnd::internal::HashMapBase<unsigned int,physx::Sq::IncrementalAABBTreeNode *,physx::shdfnd::Hash<unsigned int>,physx::shdfnd::NonTrackingAllocator>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::erase(&v4[9 * v7 + 2], &v16, &v14), result))
  {
    v9 = v15;
    v18 = 0;
    result = physx::shdfnd::internal::HashBase<physx::shdfnd::Pair<unsigned int const,physx::Sq::IncrementalAABBTreeNode *>,unsigned int,physx::shdfnd::Hash<unsigned int>,physx::shdfnd::internal::HashMapBase<unsigned int,physx::Sq::IncrementalAABBTreeNode *,physx::shdfnd::Hash<unsigned int>,physx::shdfnd::NonTrackingAllocator>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::create(&v4[9 * v7 + 2], &v17, &v18);
    v10 = v17;
    if ((v18 & 1) == 0)
    {
      *result = v17;
    }

    *(result + 8) = v9;
    v11 = *(v15 + 40);
    v12 = *v11;
    if (v12)
    {
      for (i = (v11 + 1); *i != v16; ++i)
      {
        if (!--v12)
        {
          return result;
        }
      }

      *i = v10;
    }
  }

  return result;
}

uint64_t physx::Sq::IncrementalAABBPrunerCore::updateObject(physx::Sq::IncrementalAABBPrunerCore *this, unsigned int a2)
{
  v4 = this + 8;
  v5 = *(this + 1);
  v6 = this + 72 * v5 + 8;
  if (!*(v6 + 17) || (v7 = 9 * ((~(a2 << 15) + a2) ^ ((~(a2 << 15) + a2) >> 10)), v8 = *(*(v6 + 5) + 4 * ((*(v6 + 13) - 1) & (((v7 ^ (v7 >> 6)) + ~((v7 ^ (v7 >> 6)) << 11)) ^ (((v7 ^ (v7 >> 6)) + ~((v7 ^ (v7 >> 6)) << 11)) >> 16)))), v8 == -1))
  {
LABEL_6:
    v5 = *this;
    v10 = &v4[72 * *this];
    if (!*(v10 + 17))
    {
      return 0;
    }

    v11 = 9 * ((~(a2 << 15) + a2) ^ ((~(a2 << 15) + a2) >> 10));
    v8 = *(*(v10 + 5) + 4 * ((*(v10 + 13) - 1) & (((v11 ^ (v11 >> 6)) + ~((v11 ^ (v11 >> 6)) << 11)) ^ (((v11 ^ (v11 >> 6)) + ~((v11 ^ (v11 >> 6)) << 11)) >> 16))));
    if (v8 == -1)
    {
      return 0;
    }

    v9 = *(v10 + 3);
    while (*(v9 + 16 * v8) != a2)
    {
      v8 = *(*(v10 + 4) + 4 * v8);
      if (v8 == -1)
      {
        return 0;
      }
    }
  }

  else
  {
    v9 = *(v6 + 3);
    while (*(v9 + 16 * v8) != a2)
    {
      v8 = *(*(v6 + 4) + 4 * v8);
      if (v8 == -1)
      {
        goto LABEL_6;
      }
    }
  }

  v13 = v9 + 16 * v8;
  v14 = &v4[72 * v5];
  *(this + 42) = 0;
  v15 = *(v14 + 1);
  v16 = *(v13 + 8);
  v17 = *(*(this + 19) + 8);
  v18 = (v17 + 24 * a2);
  v19 = *(v18 + 12);
  v19.i32[3] = 0;
  *v19.f32 = vmovn_s32(vcgtq_f32(*v16, v19));
  if ((vuzp1_s8(*v19.f32, *v19.f32).u32[0] & 0xFFFFFF) != 0 || (v20 = *v18, v20.i32[3] = 0, *v20.f32 = vmovn_s32(vcgtq_f32(v20, v16[1])), (vuzp1_s8(*v20.f32, *v20.f32).u32[0] & 0xFFFFFF) != 0))
  {
    v21 = physx::Sq::IncrementalAABBTree::remove(*(v14 + 1), *(v13 + 8), a2, *(*(this + 19) + 8));
    v38 = v21;
    if (v21 && !*(v21 + 48))
    {
      v22 = *(this + 42);
      if ((*(this + 43) & 0x7FFFFFFFu) <= v22)
      {
        physx::shdfnd::Array<physx::Sq::IncrementalAABBTreeNode *,physx::shdfnd::ReflectionAllocator<physx::Sq::IncrementalAABBTreeNode *>>::growAndPushBack(this + 160, &v38);
      }

      else
      {
        *(*(this + 20) + 8 * v22) = v21;
        *(this + 42) = v22 + 1;
      }
    }

    v16 = physx::Sq::IncrementalAABBTree::insert(v15, a2, v17, this + 160);
  }

  else
  {
    v24 = v16[2].i64[1];
    v23 = v16[3].i64[0];
    if (v23)
    {
      *v16 = vminq_f32(*v24, *v23);
      v25 = vmaxq_f32(v24[1], v23[1]);
    }

    else
    {
      v26 = v24->u32[0];
      v27 = (v17 + 24 * v24->u32[1]);
      v28 = *v27;
      v25 = *(v27 + 12);
      if (v26 >= 2)
      {
        v29 = v26 - 1;
        v30 = &v24->i32[2];
        do
        {
          v31 = *v30++;
          v32 = v17 + 24 * v31;
          v28 = vminq_f32(v28, *v32);
          v25 = vmaxq_f32(v25, *(v32 + 12));
          --v29;
        }

        while (v29);
      }

      v28.i32[3] = 0;
      *v16 = v28;
      v25.i32[3] = 0;
    }

    v16[1] = v25;
    for (i = v16[2].i64[0]; i; i = i[2].i64[0])
    {
      v34 = i[2].i64[1];
      v35 = i[3].i64[0];
      v36 = vminq_f32(*v34, *v35);
      v37 = vmaxq_f32(v34[1], v35[1]);
      if (vuzp1_s8(vmovn_s32(vceqq_f32(*i, v36)), *v36.f32).u32[0] == -1 && vuzp1_s8(vmovn_s32(vceqq_f32(v37, i[1])), *v36.f32).u32[0] == -1)
      {
        break;
      }

      *i = v36;
      i[1] = v37;
    }
  }

  if (*(this + 42) || v16 != *(v13 + 8))
  {
    physx::Sq::IncrementalAABBPrunerCore::updateMapping(this, v14 + 2, a2, v16);
  }

  return 1;
}

uint64_t physx::Sq::IncrementalAABBPrunerCore::removeMarkedObjects(physx::Sq::IncrementalAABBPrunerCore *this)
{
  v1 = *(this + 1);
  v2 = *(this + 9 * v1 + 2);
  if (!v2 || !*(v2 + 1144))
  {
    return 0;
  }

  v3 = this + 72 * v1 + 8;
  v4 = *(v3 + 17);
  physx::shdfnd::internal::HashBase<physx::Sc::Interaction *,physx::Sc::Interaction *,physx::shdfnd::Hash<physx::Sc::Interaction *>,physx::shdfnd::internal::HashSetBase<physx::Sc::Interaction *,physx::shdfnd::Hash<physx::Sc::Interaction *>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::clear(v3 + 16);
  *v3 = 0;
  v5 = *(v3 + 1);
  v6 = *(v5 + 1144);
  if (v6)
  {
    physx::Sq::IncrementalAABBTree::releaseNode(v5, v6);
    *(v5 + 1144) = 0;
  }

  return v4;
}

uint64_t physx::Sq::IncrementalAABBPrunerCore::overlap(uint64_t a1, uint64_t a2, unsigned int (***a3)(void, int *, uint64_t), double a4, double a5, double a6, double a7, float32x4_t a8, double a9, double a10, float32x4_t a11)
{
  v14 = 0;
  v59 = *MEMORY[0x1E69E9840];
  v15 = a1 + 8;
  v16 = 1;
  v17 = vneg_f32(0x80000000800000);
  v18 = 1;
  do
  {
    v19 = v16;
    v20 = v15 + 72 * v14;
    v23 = *(v20 + 8);
    v22 = v20 + 8;
    v21 = v23;
    if (v23)
    {
      v24 = *(v21 + 1144);
      if (((v24 != 0) & v18) == 1)
      {
        v25 = *(a2 + 98);
        v18 = 1;
        if (v25 > 2)
        {
          if (v25 == 4)
          {
            goto LABEL_21;
          }

          if (v25 != 3)
          {
            goto LABEL_24;
          }

          if (*(a2 + 96))
          {
LABEL_21:
            physx::Gu::OBBAABBTests<true>::OBBAABBTests(&v51, a2 + 48, (a2 + 12), a2, a4, a5, a6, a7, a8, a9, a10, a11);
            v18 = physx::Gu::AABBTreeOverlap<physx::Gu::OBBAABBTests<true>,physx::Sq::IncrementalAABBTree,physx::Sq::IncrementalAABBTreeNode,physx::Sq::PrunerPayload,physx::Sq::PrunerCallback>::operator()(*(*(a1 + 152) + 16), *(*(a1 + 152) + 8), *(*v22 + 1144), &v51, a3);
          }

          else
          {
            v43 = *(a2 + 80);
            v44 = *(a2 + 92);
            v45 = *(a2 + 72);
            v46 = *(a2 + 84);
            *v47.f32 = vmul_f32(vadd_f32(v45, v46), 0x3F0000003F000000);
            v47.f32[2] = (v43 + v44) * 0.5;
            v47.i32[3] = 0;
            v48 = v44 - v43;
            *v49.f32 = vmul_f32(vsub_f32(v46, v45), 0x3F0000003F000000);
            v49.i64[1] = COERCE_UNSIGNED_INT(v48 * 0.5);
            v51 = v47;
            v52 = v49;
            v18 = physx::Gu::AABBTreeOverlap<physx::Gu::AABBAABBTest,physx::Sq::IncrementalAABBTree,physx::Sq::IncrementalAABBTreeNode,physx::Sq::PrunerPayload,physx::Sq::PrunerCallback>::operator()(*(*(a1 + 152) + 16), *(*(a1 + 152) + 8), v24, &v51, a3);
          }
        }

        else if (*(a2 + 98))
        {
          if (v25 == 2)
          {
            v26 = *(a2 + 60) + *(a2 + 60);
            v27 = *(a2 + 120);
            v31.i64[0] = *(a2 + 112);
            v28 = *(a2 + 12);
            v29 = COERCE_DOUBLE(vadd_f32(*v31.f32, vmul_n_f32(v28, v26)));
            v30 = COERCE_DOUBLE(vbsl_s8(vceqz_f32(v28), *v31.f32, vbsl_s8(vcgez_f32(v28), v17, 0x80000000800000)));
            v31.i64[1] = LODWORD(v27);
            *v32.f32 = v28;
            *&a6 = *(a2 + 124) * 1.01;
            v32.i64[1] = *(a2 + 20);
            v51 = v31;
            v52 = v32;
            *&v33 = vext_s8(v28, *&vextq_s8(v32, v32, 8uLL), 4uLL);
            *(&v33 + 1) = v28.u32[0];
            v34 = vdupq_lane_s32(*&a6, 0);
            v34.i32[3] = 0;
            v53 = v33;
            v54 = v34;
            v35 = vabsq_f32(v32);
            *&v36 = vext_s8(*v35.i8, *&vextq_s8(v35, v35, 8uLL), 4uLL);
            v37 = v27 + (v26 * v32.f32[2]);
            v38 = -3.4028e38;
            if (v32.f32[2] >= 0.0)
            {
              v38 = 3.4028e38;
            }

            if (v32.f32[2] != 0.0)
            {
              v27 = v38;
            }

            v39 = v26 < 3.4028e38;
            if (v26 >= 3.4028e38)
            {
              v40 = v27;
            }

            else
            {
              v40 = v37;
            }

            if (v39)
            {
              *v41.i64 = v29;
            }

            else
            {
              *v41.i64 = v30;
            }

            v41.i64[1] = LODWORD(v40);
            v55 = v35;
            *(&v36 + 1) = v35.u32[0];
            v56 = v36;
            v57 = vminq_f32(v31, v41);
            v58 = vmaxq_f32(v31, v41);
            v18 = physx::Gu::AABBTreeOverlap<physx::Gu::CapsuleAABBTest,physx::Sq::IncrementalAABBTree,physx::Sq::IncrementalAABBTreeNode,physx::Sq::PrunerPayload,physx::Sq::PrunerCallback>::operator()(*(*(a1 + 152) + 16), *(*(a1 + 152) + 8), v24, &v51, a3);
          }
        }

        else
        {
          LODWORD(a4) = *(a2 + 112);
          v42 = *(a2 + 100);
          v42.i64[1] = *(a2 + 108);
          v51 = v42;
          *&a4 = *&a4 * *&a4;
          *v52.f32 = vdup_lane_s32(*&a4, 0);
          v18 = physx::Gu::AABBTreeOverlap<physx::Gu::SphereAABBTest,physx::Sq::IncrementalAABBTree,physx::Sq::IncrementalAABBTreeNode,physx::Sq::PrunerPayload,physx::Sq::PrunerCallback>::operator()(*(*(a1 + 152) + 16), *(*(a1 + 152) + 8), v24, &v51, a3);
        }
      }
    }

LABEL_24:
    v16 = 0;
    v14 = 1;
  }

  while ((v19 & 1) != 0);
  return v18 & 1;
}

uint64_t physx::Sq::IncrementalAABBPrunerCore::sweep(uint64_t a1, uint64_t a2, float32x2_t *a3, float *a4, unsigned int (***a5)(void, float *, uint64_t))
{
  v10 = 0;
  v11 = a1 + 8;
  v12 = 1;
  v13 = 1;
  do
  {
    v14 = v12;
    v15 = *(v11 + 72 * v10 + 8);
    if (v15 && ((*(v15 + 1144) != 0) & v13) == 1)
    {
      v16 = *(a2 + 92);
      v17 = *(a2 + 80);
      v18 = *(a2 + 84);
      v19 = *(a2 + 72);
      v27 = vmul_f32(vsub_f32(v18, v19), 0x3F0000003F000000);
      v28 = (v16 - v17) * 0.5;
      v20 = *(a1 + 152);
      v22 = *(v20 + 8);
      v21 = *(v20 + 16);
      v24 = vmul_f32(vadd_f32(v18, v19), 0x3F0000003F000000);
      v25 = (v16 + v17) * 0.5;
      v13 = physx::Gu::AABBTreeRaycast<true,physx::Sq::IncrementalAABBTree,physx::Sq::IncrementalAABBTreeNode,physx::Sq::PrunerPayload,physx::Sq::PrunerCallback>::operator()(&v26, v21, v22, v15, &v24, a3, a4, &v27, a5);
    }

    v12 = 0;
    v10 = 1;
  }

  while ((v14 & 1) != 0);
  return v13 & 1;
}

uint64_t physx::Sq::IncrementalAABBPrunerCore::raycast(uint64_t a1, float32x2_t *a2, float32x2_t *a3, float *a4, unsigned int (***a5)(void, float *, uint64_t))
{
  v10 = 0;
  v11 = a1 + 8;
  v12 = 1;
  v13 = 1;
  do
  {
    v14 = v12;
    v15 = *(v11 + 72 * v10 + 8);
    if (v15 && ((*(v15 + 1144) != 0) & v13) == 1)
    {
      v16 = *(a1 + 152);
      v18 = *(v16 + 8);
      v17 = *(v16 + 16);
      v20 = 0;
      v21 = 0;
      v13 = physx::Gu::AABBTreeRaycast<false,physx::Sq::IncrementalAABBTree,physx::Sq::IncrementalAABBTreeNode,physx::Sq::PrunerPayload,physx::Sq::PrunerCallback>::operator()(&v22, v17, v18, v15, a2, a3, a4, &v20, a5);
    }

    v12 = 0;
    v10 = 1;
  }

  while ((v14 & 1) != 0);
  return v13 & 1;
}

void physx::Sq::IncrementalAABBPrunerCore::shiftOrigin(uint64_t a1, float32x4_t *a2)
{
  v3 = 0;
  v4 = a1 + 8;
  v5 = 1;
  do
  {
    v6 = v5;
    v7 = *(v4 + 72 * v3 + 8);
    if (v7)
    {
      v8 = *(v7 + 1144);
      if (v8)
      {
        v9 = *a2;
        v9.i32[3] = 0;
        v10 = v9;
        shiftNode(v8, &v10);
      }
    }

    v5 = 0;
    v3 = 1;
  }

  while ((v6 & 1) != 0);
}

uint64_t physx::Sq::IncrementalAABBPrunerCore::visualize(uint64_t result, _DWORD *a2, int a3)
{
  v5 = 0;
  v6 = result + 8;
  v7 = 1;
  do
  {
    v8 = v7;
    v9 = v6 + 72 * v5;
    v12 = *(v9 + 8);
    v11 = v9 + 8;
    v10 = v12;
    if (v12)
    {
      if (*(v10 + 1144))
      {
        v13 = xmmword_1E30474D0;
        v14 = 0;
        v15 = 0;
        physx::Cm::RenderOutput::operator<<(a2, &v13);
        a2[1] = a3;
        physx::Sq::IncrementalAABBPrunerCore::visualize(physx::Cm::RenderOutput &,unsigned int)const::Local::_Draw(*(*v11 + 1144), a2);
        v13 = xmmword_1E30474D0;
        v14 = 0;
        v15 = 0;
        result = physx::Cm::RenderOutput::operator<<(a2, &v13);
        a2[1] = -1;
      }
    }

    v7 = 0;
    v5 = 1;
  }

  while ((v8 & 1) != 0);
  return result;
}

uint64_t physx::Sq::IncrementalAABBPrunerCore::visualize(physx::Cm::RenderOutput &,unsigned int)const::Local::_Draw(__int128 *a1, _DWORD *a2)
{
  v4 = *a1;
  v5 = a1[1];
  HIDWORD(v4) = v5.i32[0];
  v7 = v4;
  v8 = vext_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL), 4uLL);
  v9 = 1;
  result = physx::Cm::operator<<(a2, &v7);
  if (*(a1 + 6))
  {
    physx::Sq::IncrementalAABBPrunerCore::visualize(physx::Cm::RenderOutput &,unsigned int)const::Local::_Draw(*(a1 + 5), a2);
    return physx::Sq::IncrementalAABBPrunerCore::visualize(physx::Cm::RenderOutput &,unsigned int)const::Local::_Draw(*(a1 + 6), a2);
  }

  return result;
}

void physx::Sq::IncrementalAABBTree::~IncrementalAABBTree(physx::Sq::IncrementalAABBTree *this)
{
  v2 = *(this + 143);
  if (v2)
  {
    physx::Sq::IncrementalAABBTree::releaseNode(this, v2);
    *(this + 143) = 0;
  }

  physx::Gu::NodeAllocator::~NodeAllocator((this + 1152));
  physx::shdfnd::PoolBase<physx::Sq::IncrementalAABBTreeNodePair,physx::shdfnd::ReflectionAllocator<physx::Sq::IncrementalAABBTreeNodePair>>::~PoolBase(this + 576);
  physx::shdfnd::PoolBase<physx::Sq::AABBTreeIndices,physx::shdfnd::ReflectionAllocator<physx::Sq::AABBTreeIndices>>::~PoolBase(this + 8);
}

uint64_t physx::Sq::IncrementalAABBTree::releaseNode(uint64_t result, void *a2)
{
  v2 = a2;
  v3 = result;
  v5 = a2 + 5;
  v4 = a2[5];
  if (v5[1])
  {
    physx::Sq::IncrementalAABBTree::releaseNode(result, v4);
    result = physx::Sq::IncrementalAABBTree::releaseNode(v3, v2[6]);
  }

  else if (v4)
  {
    --*(result + 556);
    *v4 = *(result + 568);
    *(result + 568) = v4;
  }

  v6 = v2[4];
  if (!v6 || *(v6 + 48) == v2 && (v2 = *(v6 + 40)) != 0)
  {
    --*(v3 + 1124);
    *v2 = *(v3 + 1136);
    *(v3 + 1136) = v2;
  }

  return result;
}

float32x4_t physx::Sq::IncrementalAABBTree::splitLeafNode(uint64_t a1, float32x4_t *a2, unsigned int a3, float32x4_t *a4, float32x4_t *a5, uint64_t a6)
{
  v12 = *(a1 + 1136);
  if (!v12)
  {
    physx::shdfnd::PoolBase<physx::Sq::IncrementalAABBTreeNodePair,physx::shdfnd::ReflectionAllocator<physx::Sq::IncrementalAABBTreeNodePair>>::allocateSlab(a1 + 576);
    v12 = *(a1 + 1136);
  }

  *(a1 + 1136) = v12->i64[0];
  ++*(a1 + 1124);
  v13 = *(a1 + 568);
  if (!v13)
  {
    physx::shdfnd::PoolBase<physx::Sq::AABBTreeIndices,physx::shdfnd::ReflectionAllocator<physx::Sq::AABBTreeIndices>>::allocateSlab(a1 + 8);
    v13 = *(a1 + 568);
  }

  *(a1 + 568) = *v13;
  ++*(a1 + 556);
  v14 = vminq_f32(*a2, *a4);
  result = vmaxq_f32(a2[1], *a5);
  v16.i64[0] = 0x3F0000003F000000;
  v16.i64[1] = 0x3F0000003F000000;
  v17 = vsubq_f32(result, v14);
  v54 = vmulq_f32(vaddq_f32(v14, result), v16);
  v53 = v17.i64[0];
  v18 = *(&v53 | (4 * (v17.f32[1] > v17.f32[0])));
  v12[2].i64[0] = a2;
  v12[6].i64[0] = a2;
  v19 = a2[2].i64[1];
  v12[2].i64[1] = v19;
  v12[3].i64[0] = 0;
  v12[6].i64[1] = v13;
  v12[7].i64[0] = 0;
  *v13 = 0;
  v20 = *v19;
  if (!v20)
  {
    goto LABEL_14;
  }

  v21 = v19 + 1;
  v22 = 2;
  if (v17.f32[2] <= v18)
  {
    v22 = v17.f32[1] > v17.f32[0];
  }

  v23 = *(&v54 | (4 * v22));
  v24 = v13 + 1;
  v25 = v20;
  do
  {
    v26 = v19[v25];
    v27 = (a6 + 24 * v26 + 4 * v22);
    if (v23 >= ((*v27 + v27[3]) * 0.5))
    {
      v28 = *v13;
      *v13 = v28 + 1;
      v24[v28] = v26;
      v29 = *v19 - 1;
      *v19 = v29;
      v19[v25] = v21[v29];
    }

    --v25;
  }

  while (v25 * 4);
  v30 = *v19;
  if (v30 && (v31 = *v13, v31 != 4))
  {
    if (v30 == 4)
    {
      *v13 = 1;
    }

    else
    {
      v52 = (a6 + 24 * a3 + 4 * v22);
      if (v23 >= ((*v52 + v52[3]) * 0.5))
      {
        *v13 = v31 + 1;
        v24 += v31;
      }

      else
      {
        *v19 = v30 + 1;
        v24 = &v21[v30];
      }
    }
  }

  else
  {
LABEL_14:
    *v19 = 1;
    v24 = v19 + 1;
  }

  *v24 = a3;
  v32 = *v19;
  v33 = (a6 + 24 * v19[1]);
  v34 = *v33;
  v35 = *(v33 + 12);
  if (v32 >= 2)
  {
    v36 = v32 - 1;
    v37 = v19 + 2;
    do
    {
      v38 = *v37++;
      v39 = a6 + 24 * v38;
      v34 = vminq_f32(v34, *v39);
      v35 = vmaxq_f32(v35, *(v39 + 12));
      --v36;
    }

    while (v36);
  }

  v34.i32[3] = 0;
  v35.i32[3] = 0;
  *v12 = v34;
  v12[1] = v35;
  v40 = *v13;
  v41 = (a6 + 24 * v13[1]);
  v42 = *v41;
  v43 = *(v41 + 12);
  if (v40 >= 2)
  {
    v44 = v40 - 1;
    v45 = v13 + 2;
    do
    {
      v46 = *v45++;
      v47 = a6 + 24 * v46;
      v42 = vminq_f32(v42, *v47);
      v43 = vmaxq_f32(v43, *(v47 + 12));
      --v44;
    }

    while (v44);
  }

  v42.i32[3] = 0;
  v43.i32[3] = 0;
  v12[4] = v42;
  v12[5] = v43;
  a2[2].i64[1] = v12;
  a2[3].i64[0] = &v12[4];
  *a2 = v14;
  a2[1] = result;
  for (i = a2[2].i64[0]; i; i = i[2].i64[0])
  {
    if ((vuzp1_s8(vmovn_s32(vcgtq_f32(*i, v14)), *result.f32).u32[0] & 0xFFFFFF) == 0)
    {
      v49 = vmovn_s32(vcgtq_f32(result, i[1]));
      *result.f32 = vuzp1_s8(v49, v49);
      if ((result.i32[0] & 0xFFFFFF) == 0)
      {
        break;
      }
    }

    v50 = i[2].i64[1];
    v51 = i[3].i64[0];
    v14 = vminq_f32(*v50, *v51);
    *i = v14;
    result = vmaxq_f32(v50[1], v51[1]);
    i[1] = result;
  }

  return result;
}

uint64_t physx::Sq::IncrementalAABBTree::rotateTree(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, int a6)
{
  v9 = result;
  v10 = *(a2 + 40 + 8 * (a4 == 0));
  v11 = *(a2 + 40 + 8 * a4);
  v12 = vaddq_f32(v10[1], *v10);
  v13 = vsubq_f32(v12, vaddq_f32(*(*(v11 + 40) + 16), **(v11 + 40)));
  v14 = vsubq_f32(v12, vaddq_f32(*(*(v11 + 48) + 16), **(v11 + 48)));
  v13.i32[3] = 0;
  v15 = vmulq_f32(v13, v13);
  v15.i64[0] = vpaddq_f32(v15, v15).u64[0];
  v14.i32[3] = 0;
  v16 = vmulq_f32(v14, v14);
  v16.i64[0] = vpaddq_f32(v16, v16).u64[0];
  for (i = *(v11 + 40 + 8 * (vuzp1_s8(vdup_lane_s16(vcgt_f32(vpadd_f32(*v15.f32, *v15.f32), vpadd_f32(*v16.f32, *v16.f32)), 0), *v12.f32).u32[0] == -1)); ; i = i[2].i64[(vuzp1_s8(vdup_lane_s16(vcgt_f32(vpadd_f32(*v30.f32, *v30.f32), vpadd_f32(*v31.f32, *v31.f32)), 0), *v12.f32).u32[0] == -1) + 1])
  {
    v18 = i[3].i64[0];
    if (!v18)
    {
      break;
    }

    v19 = i[2].i64[1];
    _X10 = v19[2].i64[1];
    __asm { PRFM            #0, [X10] }

    _X10 = v18[2].i64[1];
    __asm { PRFM            #0, [X10] }

    v28 = vsubq_f32(v12, vaddq_f32(v19[1], *v19));
    v29 = vsubq_f32(v12, vaddq_f32(v18[1], *v18));
    v28.i32[3] = 0;
    v30 = vmulq_f32(v28, v28);
    v30.i64[0] = vpaddq_f32(v30, v30).u64[0];
    v29.i32[3] = 0;
    v31 = vmulq_f32(v29, v29);
    v31.i64[0] = vpaddq_f32(v31, v31).u64[0];
  }

  v32 = *(a3 + 8);
  if (v32)
  {
    v33 = 0;
    while (*(*a3 + 8 * v33) != i)
    {
      if (v32 == ++v33)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    LODWORD(v33) = 0;
  }

  if (v33 != v32)
  {
    v34 = *a3;
    v35 = v32 - 1;
    *(a3 + 8) = v35;
    v34[v33] = v34[v35];
  }

LABEL_12:
  v36 = i[2].i64[0];
  v128 = v36;
  v37 = *(v36 + 40);
  v38 = v37;
  if (v37 == i)
  {
    v38 = *(v36 + 48);
  }

  *(v36 + 16) = v38[1];
  *v36 = *v38;
  v39 = v38[2].i64[1];
  v40 = v38[3].i64[0];
  *(v36 + 40) = v39;
  if (v40)
  {
    *(v39 + 32) = v36;
    v41 = v38[3].i64[0];
    *(v36 + 48) = v41;
    *(v41 + 32) = v36;
  }

  else
  {
    *(v36 + 48) = 0;
    v42 = *(a3 + 8);
    if (v42)
    {
      v43 = 0;
      while (*(*a3 + 8 * v43) != v38)
      {
        if (v42 == ++v43)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
      LODWORD(v43) = 0;
    }

    if (v43 != v42)
    {
      v44 = *a3;
      LODWORD(v42) = v42 - 1;
      *(a3 + 8) = v42;
      v44[v43] = v44[v42];
    }

LABEL_24:
    if ((*(a3 + 12) & 0x7FFFFFFFu) <= v42)
    {
      result = physx::shdfnd::Array<physx::Sq::IncrementalAABBTreeNode *,physx::shdfnd::ReflectionAllocator<physx::Sq::IncrementalAABBTreeNode *>>::growAndPushBack(a3, &v128);
      v36 = v128;
    }

    else
    {
      v36 = v128;
      *(*a3 + 8 * v42) = v128;
      *(a3 + 8) = v42 + 1;
    }
  }

  v45 = *(v36 + 32);
  if (v45)
  {
    v47 = v45[2].i64[1];
    v46 = v45[3].i64[0];
    if (!v46)
    {
      v48 = v47->u32[0];
      v49 = (a5 + 24 * v47->u32[1]);
      v50 = *v49;
      v51 = *(v49 + 12);
      if (v48 >= 2)
      {
        v52 = v48 - 1;
        v53 = &v47->i32[2];
        do
        {
          v54 = *v53++;
          v55 = a5 + 24 * v54;
          v50 = vminq_f32(v50, *v55);
          v51 = vmaxq_f32(v51, *(v55 + 12));
          --v52;
        }

        while (v52);
      }

      v50.i32[3] = 0;
      v51.i32[3] = 0;
      goto LABEL_37;
    }

    *v45 = vminq_f32(*v47, *v46);
    for (v45[1] = vmaxq_f32(v47[1], v46[1]); ; v45[1] = v51)
    {
      v45 = v45[2].i64[0];
      if (!v45)
      {
        break;
      }

      v56 = v45[2].i64[1];
      v57 = v45[3].i64[0];
      v50 = vminq_f32(*v56, *v57);
      v51 = vmaxq_f32(v56[1], v57[1]);
      if (vuzp1_s8(vmovn_s32(vceqq_f32(*v45, v50)), *v50.f32).u32[0] == -1 && vuzp1_s8(vmovn_s32(vceqq_f32(v51, v45[1])), *v50.f32).u32[0] == -1)
      {
        break;
      }

LABEL_37:
      *v45 = v50;
    }
  }

  v58 = v10[3].i64[0];
  if (v58)
  {
    v59 = vaddq_f32(i[1], *i);
    v60 = &v10[2].i8[8];
    v61 = v10[2].i64[1];
    v62 = v61[1];
    v63 = v58[1];
    v64 = vsubq_f32(v59, vaddq_f32(v62, *v61));
    v65 = vsubq_f32(v59, vaddq_f32(v63, *v58));
    __asm { FMOV            V1.2S, #3.0 }

    if (a6)
    {
      v67 = vsubq_f32(v62, *v61);
      v68 = vsubq_f32(v63, *v58);
      *v67.i8 = vmul_f32(vzip1_s32(*&vextq_s8(v68, v68, 8uLL), *&vextq_s8(v67, v67, 8uLL)), vmul_f32(vzip1_s32(*v68.i8, *v67.i8), vzip2_s32(*v68.i8, *v67.i8)));
      *v68.i8 = vcgt_f32(vrev64_s32(*v67.i8), vmul_f32(*v67.i8, _D1));
      v69 = vorr_s8(vdup_lane_s32(*v68.i8, 1), *v68.i8).u8[0];
      v70 = vmvn_s8(vcgt_f32(vdup_lane_s32(*v67.i8, 1), *v67.i8)).u8[0] & 1;
      if (v69)
      {
        v71 = v70;
      }

      else
      {
        v71 = 0;
      }

      v72 = (v69 & 1) != 0;
    }

    else
    {
      v71 = 0;
      v72 = 0;
    }

    v64.i32[3] = 0;
    v74 = vmulq_f32(v64, v64);
    v74.i64[0] = vpaddq_f32(v74, v74).u64[0];
    v65.i32[3] = 0;
    v75 = vmulq_f32(v65, v65);
    v75.i64[0] = vpaddq_f32(v75, v75).u64[0];
    v76 = vuzp1_s8(vdup_lane_s16(vcgt_f32(vpadd_f32(*v74.f32, *v74.f32), vpadd_f32(*v75.f32, *v75.f32)), 0), *v59.f32).u32[0];
    if (v72)
    {
      if (*(*&v60[8 * v71] + 48))
      {
        LOBYTE(a6) = 0;
        v73 = v10;
      }

      else
      {
        v73 = 0;
      }
    }

    else
    {
      v73 = 0;
    }

    v10 = *&v60[8 * (v76 == -1)];
    v127 = v10;
    for (j = v10[3].i64[0]; j; j = v10[3].i64[0])
    {
      v78 = &v10[2].i8[8];
      v79 = v10[2].i64[1];
      _X13 = v79[2].i64[1];
      __asm { PRFM            #0, [X13] }

      _X13 = j[2].i64[1];
      __asm { PRFM            #0, [X13] }

      v85 = *v79;
      v84 = v79[1];
      v87 = *j;
      v86 = j[1];
      if (a6)
      {
        v88 = vsubq_f32(v84, v85);
        v89 = vsubq_f32(v86, v87);
        *v88.i8 = vmul_f32(vzip1_s32(*&vextq_s8(v89, v89, 8uLL), *&vextq_s8(v88, v88, 8uLL)), vmul_f32(vzip1_s32(*v89.i8, *v88.i8), vzip2_s32(*v89.i8, *v88.i8)));
        *v89.i8 = vcgt_f32(vrev64_s32(*v88.i8), vmul_f32(*v88.i8, _D1));
        v90 = vorr_s8(vdup_lane_s32(*v89.i8, 1), *v89.i8).u8[0];
        v91 = vmvn_s8(vcgt_f32(vdup_lane_s32(*v88.i8, 1), *v88.i8)).u8[0] & 1;
        v71 = (v90 & 1) != 0 ? v91 : v71;
        if (v90)
        {
          LOBYTE(v72) = 1;
        }
      }

      if (!v73 && v72)
      {
        LOBYTE(a6) = a6 & (*(*&v78[8 * v71] + 48) == 0);
        if (*(*&v78[8 * v71] + 48))
        {
          v73 = v10;
        }

        else
        {
          v73 = 0;
        }
      }

      v92 = vsubq_f32(v59, vaddq_f32(v84, v85));
      v93 = vsubq_f32(v59, vaddq_f32(v86, v87));
      v92.i32[3] = 0;
      v94 = vmulq_f32(v92, v92);
      v94.i64[0] = vpaddq_f32(v94, v94).u64[0];
      v93.i32[3] = 0;
      v95 = vmulq_f32(v93, v93);
      v95.i64[0] = vpaddq_f32(v95, v95).u64[0];
      v10 = *&v78[8 * (vuzp1_s8(vdup_lane_s16(vcgt_f32(vpadd_f32(*v94.f32, *v94.f32), vpadd_f32(*v95.f32, *v95.f32)), 0), *v59.f32).u32[0] == -1)];
      v127 = v10;
    }
  }

  else
  {
    v71 = 0;
    v73 = 0;
    v127 = v10;
  }

  v96 = v10[2].i64[1];
  v97 = *v96;
  v98 = i[2].i64[1];
  if ((*v98 + *v96) <= 4)
  {
    if (*v98)
    {
      v99 = 0;
      do
      {
        v96[++v97] = v98[v99 + 1];
        *v96 = v97;
        ++v99;
      }

      while (v99 < *v98);
    }

    v100 = *(a3 + 8);
    if (v100)
    {
      v101 = *a3;
      v102 = *(a3 + 8);
      while (*v101 != v10)
      {
        ++v101;
        if (!--v102)
        {
          v103 = *(a3 + 8);
          goto LABEL_100;
        }
      }

      v103 = *(a3 + 8);
      if (v102)
      {
        goto LABEL_103;
      }
    }

    else
    {
      v103 = 0;
    }

LABEL_100:
    if ((*(a3 + 12) & 0x7FFFFFFFu) <= v100)
    {
      result = physx::shdfnd::Array<physx::Sq::IncrementalAABBTreeNode *,physx::shdfnd::ReflectionAllocator<physx::Sq::IncrementalAABBTreeNode *>>::growAndPushBack(a3, &v127);
    }

    else
    {
      *(*a3 + 8 * v103) = v10;
      *(a3 + 8) = v100 + 1;
    }

LABEL_103:
    v117 = i[2].i64[1];
    if (v117)
    {
      --*(v9 + 556);
      *v117 = *(v9 + 568);
      *(v9 + 568) = v117;
    }

    v118 = v127;
    v119 = v127[1];
    v120 = vminq_f32(*v127, *i);
    *v127 = v120;
    for (k = vmaxq_f32(v119, i[1]); ; k = vmaxq_f32(v123[1], v124[1]))
    {
      v118[1] = k;
      v118 = v118[2].i64[0];
      if (!v118)
      {
        break;
      }

      if ((vuzp1_s8(vmovn_s32(vcgtq_f32(*v118, v120)), *k.f32).u32[0] & 0xFFFFFF) == 0)
      {
        v122 = vmovn_s32(vcgtq_f32(k, v118[1]));
        if ((vuzp1_s8(v122, v122).u32[0] & 0xFFFFFF) == 0)
        {
          break;
        }
      }

      v123 = v118[2].i64[1];
      v124 = v118[3].i64[0];
      v120 = vminq_f32(*v123, *v124);
      *v118 = v120;
    }

    goto LABEL_94;
  }

  v104 = *(v9 + 1136);
  if (!v104)
  {
    result = physx::shdfnd::PoolBase<physx::Sq::IncrementalAABBTreeNodePair,physx::shdfnd::ReflectionAllocator<physx::Sq::IncrementalAABBTreeNodePair>>::allocateSlab(v9 + 576);
    v104 = *(v9 + 1136);
  }

  *(v9 + 1136) = v104->i64[0];
  ++*(v9 + 1124);
  v104[2].i64[0] = v10;
  v104[6].i64[0] = v10;
  v104[2].i64[1] = v10[2].i64[1];
  v104[3].i64[0] = 0;
  *v104 = *v10;
  v104[1] = v10[1];
  v104[6].i64[1] = i[2].i64[1];
  v104[7].i64[0] = 0;
  v104[4] = *i;
  v105 = v104 + 4;
  v125 = v104 + 4;
  v126 = v104;
  v104[5] = i[1];
  v10[2].i64[1] = v104;
  v10[3].i64[0] = &v104[4];
  v106 = vminq_f32(*v104, v104[4]);
  *v10 = v106;
  v107 = vmaxq_f32(v104[1], v104[5]);
  v10[1] = v107;
  for (m = v10[2].i64[0]; m; m = m[2].i64[0])
  {
    if ((vuzp1_s8(vmovn_s32(vcgtq_f32(*m, v106)), *v107.f32).u32[0] & 0xFFFFFF) == 0)
    {
      v109 = vmovn_s32(vcgtq_f32(v107, m[1]));
      if ((vuzp1_s8(v109, v109).u32[0] & 0xFFFFFF) == 0)
      {
        break;
      }
    }

    v110 = m[2].i64[1];
    v111 = m[3].i64[0];
    v106 = vminq_f32(*v110, *v111);
    *m = v106;
    v107 = vmaxq_f32(v110[1], v111[1]);
    m[1] = v107;
  }

  v112 = *(a3 + 8);
  if (v112)
  {
    v113 = 0;
    while (*(*a3 + 8 * v113) != v10)
    {
      if (v112 == ++v113)
      {
        goto LABEL_88;
      }
    }
  }

  else
  {
    LODWORD(v113) = 0;
  }

  if (v113 != v112)
  {
    v114 = *a3;
    LODWORD(v112) = v112 - 1;
    *(a3 + 8) = v112;
    v114[v113] = v114[v112];
  }

LABEL_88:
  v115 = *(a3 + 12) & 0x7FFFFFFF;
  if (v115 <= v112)
  {
    result = physx::shdfnd::Array<physx::Sq::IncrementalAABBTreeNode *,physx::shdfnd::ReflectionAllocator<physx::Sq::IncrementalAABBTreeNode *>>::growAndPushBack(a3, &v126);
    v116 = *(a3 + 8);
    v115 = *(a3 + 12) & 0x7FFFFFFF;
  }

  else
  {
    *(*a3 + 8 * v112) = v104;
    v116 = v112 + 1;
    *(a3 + 8) = v112 + 1;
  }

  if (v115 <= v116)
  {
    result = physx::shdfnd::Array<physx::Sq::IncrementalAABBTreeNode *,physx::shdfnd::ReflectionAllocator<physx::Sq::IncrementalAABBTreeNode *>>::growAndPushBack(a3, &v125);
  }

  else
  {
    *(*a3 + 8 * v116) = v105;
    *(a3 + 8) = v116 + 1;
  }

LABEL_94:
  if (v37)
  {
    --*(v9 + 1124);
    v37->i64[0] = *(v9 + 1136);
    *(v9 + 1136) = v37;
  }

  if (v73)
  {
    return physx::Sq::IncrementalAABBTree::rotateTree(v9, v73, a3, v71, a5, 0);
  }

  return result;
}

float32x4_t shiftNode(float32x4_t *a1, float32x4_t *a2)
{
  v2 = *a1;
  a1[1] = vsubq_f32(a1[1], *a2);
  result = vsubq_f32(v2, *a2);
  *a1 = result;
  if (a1[3].i64[0])
  {
    v5 = a1;
    do
    {
      shiftNode(v5[2].i64[1], a2);
      v5 = v5[3].i64[0];
      v6 = *v5;
      v5[1] = vsubq_f32(v5[1], *a2);
      result = vsubq_f32(v6, *a2);
      *v5 = result;
    }

    while (v5[3].i64[0]);
  }

  return result;
}

uint64_t physx::Sq::IncrementalAABBTree::copyNode(uint64_t result, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = a2;
  v10 = result;
  *(a2 + 32) = a5;
  v11 = *a3;
  HIDWORD(v11) = 0;
  *a2 = v11;
  v12 = *(a3 + 12);
  HIDWORD(v12) = 0;
  *(a2 + 16) = v12;
  v13 = a3 + 6;
  if (*(a3 + 24))
  {
    v17 = a2;
  }

  else
  {
    v15 = a4 + 28;
    do
    {
      v16 = *(v10 + 1136);
      if (!v16)
      {
        physx::shdfnd::PoolBase<physx::Sq::IncrementalAABBTreeNodePair,physx::shdfnd::ReflectionAllocator<physx::Sq::IncrementalAABBTreeNodePair>>::allocateSlab(v10 + 576);
        v16 = *(v10 + 1136);
      }

      *(v10 + 1136) = *v16;
      ++*(v10 + 1124);
      *(v16 + 32) = 0u;
      *(v16 + 48) = 0u;
      *(v16 + 80) = 0u;
      *(v16 + 96) = 0u;
      *(v16 + 112) = 0u;
      *(v16 + 64) = 0u;
      *v16 = 0u;
      *(v16 + 16) = 0u;
      *(v9 + 40) = v16;
      *(v9 + 48) = v16 + 64;
      result = physx::Sq::IncrementalAABBTree::copyNode(v10);
      v17 = *(v9 + 48);
      if (a4)
      {
        v18 = (v15 + 28 * (*v13 >> 1));
      }

      else
      {
        v18 = 0;
      }

      *(v17 + 32) = v9;
      v19 = *v18;
      HIDWORD(v19) = 0;
      *v17 = v19;
      v20 = *(v18 + 12);
      HIDWORD(v20) = 0;
      *(v17 + 16) = v20;
      v21 = *(v18 + 24);
      v13 = v18 + 6;
      v9 = v17;
    }

    while ((v21 & 1) == 0);
  }

  v22 = *(v10 + 568);
  if (!v22)
  {
    result = physx::shdfnd::PoolBase<physx::Sq::AABBTreeIndices,physx::shdfnd::ReflectionAllocator<physx::Sq::AABBTreeIndices>>::allocateSlab(v10 + 8);
    v22 = *(v10 + 568);
  }

  *(v10 + 568) = *v22;
  ++*(v10 + 556);
  *(v17 + 40) = v22;
  v23 = *v13;
  v24 = (v23 >> 1) & 0xF;
  *v22 = v24;
  if (v24)
  {
    v25 = (a6 + ((v23 >> 3) & 0x1FFFFFFC));
    v26 = v22 + 1;
    do
    {
      v27 = *v25++;
      *v26++ = v27;
      *(*a7 + 8 * v27) = v17;
      --v24;
    }

    while (v24);
  }

  return result;
}

uint64_t physx::Sq::IncrementalAABBTree::copy(uint64_t a1, void *a2, void *a3)
{
  result = (*(*a2 + 80))(a2);
  if (result)
  {
    v7 = *(a1 + 1136);
    if (!v7)
    {
      physx::shdfnd::PoolBase<physx::Sq::IncrementalAABBTreeNodePair,physx::shdfnd::ReflectionAllocator<physx::Sq::IncrementalAABBTreeNodePair>>::allocateSlab(a1 + 576);
      v7 = *(a1 + 1136);
    }

    *(a1 + 1136) = *v7;
    ++*(a1 + 1124);
    *(v7 + 32) = 0u;
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
    *(v7 + 80) = 0u;
    *(v7 + 96) = 0u;
    *(v7 + 112) = 0u;
    *v7 = 0u;
    *(v7 + 16) = 0u;
    *(a1 + 1144) = v7;
    v8 = a2[9];
    v9 = a2[7];

    return physx::Sq::IncrementalAABBTree::copyNode(a1, v7, v8, v8, 0, v9, a3);
  }

  return result;
}

void physx::Sq::computeStaticWorldAABB(uint64_t a1, uint64_t a2, int32x4_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = (a2 + 64);
  if ((v8 & 4) != 0)
  {
    v10 = *(a2 + 16);
  }

  if ((a3->i32[2] & 0x40) != 0)
  {
    v11 = (a3[1].i64[0] + 176);
  }

  else
  {
    v11 = a3 + 3;
  }

  v12.i64[0] = v11[1].i64[0];
  v12.i64[1] = v11[1].u32[2];
  *v13.f32 = v10[2];
  v13.i64[1] = v10[3].u32[0];
  v14 = *v10->i8;
  v15 = vdupq_laneq_s32(*v11, 3).u64[0];
  v16 = *v11;
  v16.i32[3] = 0;
  v17 = *v10->i8;
  v17.i32[3] = 0;
  v18 = vmulq_f32(v16, v17);
  v19 = vpaddq_f32(v18, v18).u64[0];
  v20 = vextq_s8(v16, v16, 8uLL).u64[0];
  v18.i64[0] = vextq_s8(v17, v17, 8uLL).u64[0];
  v21 = vext_s8(*v11->i8, v20, 4uLL);
  v22 = vmls_f32(vmul_f32(*v11->i8, vext_s8(*v10, *v18.f32, 4uLL)), v21, *v10);
  *v18.f32 = vext_s8(v22, vmls_f32(vmul_f32(v20, *v10), *v11->i8, *v18.f32), 4uLL);
  v18.i64[1] = v22.u32[0];
  v23 = vmlaq_laneq_f32(v18, v17, *v11, 3);
  v23.i64[1] = vextq_s8(v23, v23, 8uLL).u32[0];
  v24 = vmulq_n_f32(v13, vmla_f32(0xBF000000BF000000, v15, v15).f32[0]);
  v24.i32[3] = 0;
  *v17.f32 = vsub_f32(vmul_f32(*&vextq_s8(*v11, *v11, 8uLL), *&vextq_s8(v14, v14, 8uLL)), vpadd_f32(v19, v19));
  v25 = vextq_s8(v13, v13, 8uLL).u64[0];
  v26 = vmls_f32(vmul_f32(*v11->i8, vext_s8(*v13.f32, v25, 4uLL)), v21, *v13.f32);
  *v27.f32 = vext_s8(v26, vmls_f32(vmul_f32(v20, *v13.f32), *v11->i8, v25), 4uLL);
  v27.i64[1] = v26.u32[0];
  v28 = vmlaq_laneq_f32(v24, v27, *v11, 3);
  v29 = vextq_s8(v28, v28, 8uLL).u32[0];
  v28.i64[1] = v29;
  v34 = vmlaq_laneq_f32(v23, v16, *v10->i8, 3);
  v30 = vmulq_f32(v16, v13);
  v30.i64[0] = vpaddq_f32(v30, v30).u64[0];
  v31 = vmlaq_n_f32(v28, v16, vpadd_f32(*v30.f32, *v30.f32).f32[0]);
  v31.i64[1] = vextq_s8(v31, v31, 8uLL).u32[0];
  v32.i64[0] = 0x4000000040000000;
  v32.i64[1] = 0x4000000040000000;
  v33 = vmlaq_f32(v12, v32, v31);
  v39 = v33.i32[2];
  v34.i32[3] = v17.i32[1];
  v38 = v33.i64[0];
  v37 = v34;
  v35 = v9 + 64;
  if (v8)
  {
    v36 = v35;
  }

  else
  {
    v36 = a2 + 104;
  }

  v32.i32[0] = 1065437102;
  v33.i64[0] = 0;
  physx::Gu::computeBounds(a1, v36, &v37, 0, v33, *v32.i64, *v16.i64, *v14.i64, *v34.i64, COERCE_DOUBLE(v29), v27, a5, a6, a7, a8, v37.i8[0]);
}

void physx::Sq::computeDynamicWorldAABB(uint64_t a1, float32x2_t *a2, uint64_t a3, float32x4_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a2[1].i32[0];
  v10 = a2[2];
  v11 = *(a3 + 284);
  v12 = *(a3 + 16);
  v13 = &v12[21].n128_u8[12];
  if ((v11 & 0x4000) == 0)
  {
    v13 = (a3 + 76);
  }

  if ((~*v13 & 3) != 0)
  {
    goto LABEL_10;
  }

  if ((v11 & 0x8000) != 0)
  {
    a4 = v12[17];
    v65 = a4;
    v16 = &v12[18];
    v17 = &v12[18].n128_u32[1];
    v15 = &v12[18].n128_u32[2];
    goto LABEL_12;
  }

  if (*(a3 + 8) >> 30 == 3 || (v14 = *(a3 + 208)) == 0 || v14[1].i8[15] != 1 || !v14[1].i8[12])
  {
LABEL_10:
    v18 = (a3 + 224);
    v16 = (a3 + 240);
    v17 = (a3 + 244);
    v15 = (a3 + 248);
    goto LABEL_13;
  }

  v15 = &v14[1].u32[2];
  a4 = *v14;
  v65 = *v14;
  v16 = &v14[1];
  v17 = &v14[1].u32[1];
LABEL_12:
  v18 = &v65;
LABEL_13:
  v19 = a2 + 8;
  if ((v9 & 4) != 0)
  {
    v19 = v10;
  }

  v20 = &v12[14];
  if ((v11 & 0x400) != 0)
  {
    v21 = v20;
  }

  else
  {
    v21 = (a3 + 80);
  }

  *v22.f32 = v19[2];
  v22.i64[1] = v19[3].u32[0];
  v23.i64[0] = v21[1].i64[0];
  v23.i64[1] = v21[1].u32[2];
  a4.i32[0] = *v16;
  a4.i32[1] = *v17;
  a4.i32[2] = *v15;
  v24 = vdupq_laneq_s32(*v21, 3).u64[0];
  v25 = *v21;
  v25.i32[3] = 0;
  v26 = *v19->f32;
  v26.i32[3] = 0;
  v27 = vmulq_f32(v26, v25);
  v27.i64[0] = vpaddq_f32(v27, v27).u64[0];
  v28 = vextq_s8(v26, v26, 8uLL).u64[0];
  v29 = vextq_s8(v25, v25, 8uLL).u64[0];
  v30 = vext_s8(*v21->i8, v29, 4uLL);
  v31 = vmls_f32(vmul_f32(*v19, v30), vext_s8(*v19, v28, 4uLL), *v21->i8);
  *v32.f32 = vext_s8(v31, vmls_f32(vmul_f32(v28, *v21->i8), *v19, v29), 4uLL);
  v32.i64[1] = v31.u32[0];
  v33 = vmlaq_laneq_f32(v32, v26, *v21, 3);
  v33.i64[1] = vextq_s8(v33, v33, 8uLL).u32[0];
  v34 = vmlsq_laneq_f32(v33, v25, *v19->f32, 3);
  v35 = *v18->i8;
  v35.i32[3] = 0;
  v36 = vextq_s8(v35, v35, 8uLL).u64[0];
  v37 = vext_s8(*v18, v36, 4uLL);
  v38 = vmls_f32(vmul_f32(*v18, *&vextq_s8(v34, v34, 4uLL)), v37, *v34.f32);
  v34.i64[1] = vextq_s8(v34, v34, 8uLL).u32[0];
  v39 = vsubq_f32(v22, v23);
  v40 = vmulq_n_f32(v39, vmla_f32(0xBF000000BF000000, v24, v24).f32[0]);
  v40.i32[3] = 0;
  *v27.f32 = vmla_f32(vpadd_f32(*v27.f32, *v27.f32), *&vdupq_laneq_s32(*v19->f32, 3), v24);
  v41 = vmls_f32(vmul_f32(*v21->i8, *&vextq_s8(v39, v39, 8uLL)), *v39.f32, v29);
  v42 = vmls_f32(vmul_f32(*v39.f32, v30), *&vextq_s8(v39, v39, 4uLL), *v21->i8);
  *v43.f32 = vext_s8(v42, v41, 4uLL);
  v43.i64[1] = v42.u32[0];
  v44 = vmlaq_laneq_f32(v40, v43, *v21, 3);
  v44.i64[1] = vextq_s8(v44, v44, 8uLL).u32[0];
  v45 = vmulq_f32(v25, v39);
  v45.i64[0] = vpaddq_f32(v45, v45).u64[0];
  v46 = vmlaq_n_f32(v44, v25, vpadd_f32(*v45.f32, *v45.f32).f32[0]);
  v25.i64[0] = vextq_s8(v46, v46, 8uLL).u32[0];
  *v43.f32 = vadd_f32(*v46.f32, *v46.f32);
  v46.i64[1] = v25.u32[0];
  v47 = vaddq_f32(v46, v46);
  v48 = vdupq_laneq_s32(*v18->i8, 3).u64[0];
  v49 = vmulq_f32(v35, v34);
  v49.i64[0] = vpaddq_f32(v49, v49).u64[0];
  v50 = vpadd_f32(*v49.f32, *v49.f32);
  *v49.f32 = vext_s8(v38, vmls_f32(vmul_f32(v36, *v34.f32), *v18, *&v34.u32[2]), 4uLL);
  v49.i64[1] = v38.u32[0];
  v51 = vmlaq_laneq_f32(v49, v34, *v18->i8, 3);
  v51.i64[1] = vextq_s8(v51, v51, 8uLL).u32[0];
  v52 = vmulq_n_f32(v47, vmla_f32(0xBF000000BF000000, v48, v48).f32[0]);
  v52.i32[3] = 0;
  v53 = vsub_f32(vmul_f32(*&vextq_s8(*v18->i8, *v18->i8, 8uLL), *v27.f32), v50);
  *v25.f32 = vadd_f32(*v25.f32, *v25.f32);
  v54 = vmls_f32(vmul_f32(*v18, vext_s8(*v43.f32, *v25.f32, 4uLL)), v37, *v43.f32);
  *v55.f32 = vext_s8(v54, vmls_f32(vmul_f32(v36, *v43.f32), *v18, *v25.f32), 4uLL);
  v55.i64[1] = v54.u32[0];
  v56 = vmlaq_laneq_f32(v52, v55, *v18->i8, 3);
  v57 = vextq_s8(v56, v56, 8uLL).u32[0];
  v56.i64[1] = v57;
  v62 = vmlaq_n_f32(v51, v35, v27.f32[0]);
  v58 = vmulq_f32(v35, v47);
  v58.i64[0] = vpaddq_f32(v58, v58).u64[0];
  v59 = vmlaq_n_f32(v56, v35, vpadd_f32(*v58.f32, *v58.f32).f32[0]);
  v59.i64[1] = vextq_s8(v59, v59, 8uLL).u32[0];
  v60.i64[0] = 0x4000000040000000;
  v60.i64[1] = 0x4000000040000000;
  v61 = vmlaq_f32(a4, v60, v59);
  v68 = v61.i32[2];
  v62.i32[3] = v53.i32[1];
  v67 = v61.i64[0];
  v66 = v62;
  v63 = &v10[8];
  if (v9)
  {
    v64 = v63;
  }

  else
  {
    v64 = &a2[13];
  }

  v60.i32[0] = 1065437102;
  v61.i64[0] = 0;
  physx::Gu::computeBounds(a1, v64, &v66, 0, v61, *v60.i64, COERCE_DOUBLE(v57), *v62.i64, *v59.i64, *v55.i64, v47, a6, a7, a8, a9, v65.i8[0]);
}

physx::Sq::BVHCompoundPruner *physx::Sq::BVHCompoundPruner::BVHCompoundPruner(physx::Sq::BVHCompoundPruner *this)
{
  *this = &unk_1F5D20DD8;
  *(this + 69) = 0x4000000000;
  *(this + 536) = 1;
  *(this + 68) = this + 24;
  *(this + 70) = 256;
  *(this + 142) = 5120;
  *(this + 72) = 0;
  *(this + 140) = 0x4000000000;
  *(this + 1104) = 1;
  *(this + 139) = this + 592;
  *(this + 141) = 256;
  *(this + 284) = 0x8000;
  *(this + 1144) = 0u;
  *(this + 1160) = 0u;
  *(this + 1176) = 0u;
  *(this + 1192) = 0u;
  *(this + 1208) = 0u;
  *(this + 1224) = 0u;
  *(this + 1240) = 0u;
  *(this + 1256) = 0u;
  *(this + 159) = -3233808384;
  *(this + 160) = 0;
  physx::shdfnd::internal::HashBase<physx::shdfnd::Pair<unsigned int const,unsigned int>,unsigned int,physx::shdfnd::Hash<unsigned int>,physx::shdfnd::internal::HashMapBase<unsigned int,unsigned int,physx::shdfnd::Hash<unsigned int>,physx::shdfnd::NonTrackingAllocator>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(this + 1232, 0x40u);
  *(this + 1288) = 0u;
  *(this + 1304) = 0u;
  if (*(this + 303) <= 0x1Fu)
  {
    physx::Sq::CompoundTreePool::resize((this + 1208), 0x20u);
  }

  physx::shdfnd::Array<physx::Sq::IncrementalAABBTreeNode *,physx::shdfnd::ReflectionAllocator<physx::Sq::IncrementalAABBTreeNode *>>::resizeUninitialized(this + 1192, 0x20u);
  physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::resizeUninitialized(this + 1288, 0x20u);
  if ((*(this + 329) & 0x7FFFFFE0) == 0)
  {
    physx::shdfnd::Array<physx::Sq::IncrementalAABBTreeNode *,physx::shdfnd::ReflectionAllocator<physx::Sq::IncrementalAABBTreeNode *>>::recreate(this + 1304, 0x20u);
  }

  return this;
}

uint64_t physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::resizeUninitialized(uint64_t result, unsigned int a2)
{
  v3 = result;
  if ((*(result + 12) & 0x7FFFFFFFu) < a2)
  {
    result = physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::recreate(result, a2);
  }

  *(v3 + 8) = a2;
  return result;
}

void physx::Sq::BVHCompoundPruner::~BVHCompoundPruner(physx::Sq::BVHCompoundPruner *this)
{
  *this = &unk_1F5D20DD8;
  v2 = *(this + 329);
  if ((v2 & 0x80000000) == 0 && (v2 & 0x7FFFFFFF) != 0 && *(this + 163) != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v4 = *(this + 325);
  if ((v4 & 0x80000000) == 0 && (v4 & 0x7FFFFFFF) != 0 && *(this + 161) != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  if (*(this + 154))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  physx::Sq::CompoundTreePool::~CompoundTreePool((this + 1208));
  v6 = *(this + 301);
  if ((v6 & 0x80000000) == 0 && (v6 & 0x7FFFFFFF) != 0 && *(this + 149))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  physx::Sq::IncrementalAABBTree::~IncrementalAABBTree((this + 8));
}

{
  physx::Sq::BVHCompoundPruner::~BVHCompoundPruner(this);
  if (v1)
  {
    v2 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

    v2();
  }
}

uint64_t physx::Sq::BVHCompoundPruner::addCompound(uint64_t a1, uint64_t a2, void *a3, int a4, float *a5, int a6, __int128 *a7)
{
  v56 = a4;
  v9 = a3[9];
  v10 = v9[1];
  v12 = v9[2];
  v11 = v9[3];
  v13 = v9[4];
  v14 = v9[5];
  v15 = ((*v9 + v11) * 0.5) + ((*v9 + v11) * 0.5);
  v16 = ((v10 + v13) * 0.5) + ((v10 + v13) * 0.5);
  v17 = ((v12 + v14) * 0.5) + ((v12 + v14) * 0.5);
  v19 = a5[2];
  v18 = a5[3];
  v20 = (v18 * v18) + -0.5;
  v21 = *a5;
  v22 = a5[1];
  v23 = ((v16 * v22) + (*a5 * v15)) + (v19 * v17);
  v24 = ((v18 * ((v22 * v17) - (v19 * v16))) + (v15 * v20)) + (*a5 * v23);
  v25 = ((v18 * ((v19 * v15) - (*a5 * v17))) + (v16 * v20)) + (v22 * v23);
  v26 = ((v18 * ((*a5 * v16) - (v22 * v15))) + (v17 * v20)) + (v19 * v23);
  v27 = a5[4] + v24;
  v28 = a5[5] + v25;
  v29 = a5[6] + v26;
  v30 = v22 + v22;
  v31 = v19 + v19;
  v32 = v22 * (v22 + v22);
  v33 = v19 * (v19 + v19);
  v34 = (v21 + v21) * v22;
  v35 = (v21 + v21) * v19;
  v36 = v18 * (v21 + v21);
  v37 = v30 * v19;
  v38 = v18 * v30;
  v39 = v18 * v31;
  v40 = 1.0 - (v21 * (v21 + v21));
  v41 = (v11 - *v9) * 0.5;
  v42 = (v13 - v10) * 0.5;
  v43 = (v14 - v12) * 0.5;
  v44 = fabsf(v43 * (v35 + v38)) + (fabsf(v41 * ((1.0 - v32) - v33)) + fabsf(v42 * (v34 - v39)));
  v45 = fabsf(v43 * (v37 - v36)) + (fabsf(v41 * (v34 + v39)) + fabsf(v42 * (v40 - v33)));
  v46 = fabsf(v43 * (v40 - v32)) + (fabsf(v41 * (v35 - v38)) + fabsf(v42 * (v36 + v37)));
  *&v51 = v27 - v44;
  *(&v51 + 1) = v28 - v45;
  v52 = v29 - v46;
  v53 = v27 + v44;
  v54 = v28 + v45;
  v55 = v29 + v46;
  v47 = physx::Sq::CompoundTreePool::addCompound((a1 + 1208), a2, a3, &v51, a5, a6, a7);
  *(a1 + 1312) = 0;
  v48 = physx::Sq::IncrementalAABBTree::insert(a1 + 8, v47, *(a1 + 1216), a1 + 1304);
  physx::Sq::BVHCompoundPruner::updateMapping(a1, v47, v48);
  v57 = 0;
  v49 = physx::shdfnd::internal::HashBase<physx::shdfnd::Pair<unsigned int const,unsigned int>,unsigned int,physx::shdfnd::Hash<unsigned int>,physx::shdfnd::internal::HashMapBase<unsigned int,unsigned int,physx::shdfnd::Hash<unsigned int>,physx::shdfnd::NonTrackingAllocator>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::create((a1 + 1232), &v56, &v57);
  if ((v57 & 1) == 0)
  {
    *v49 = a4;
  }

  v49[1] = v47;
  *(*(a1 + 1288) + 4 * v47) = a4;
  return 1;
}

uint64_t physx::Sq::BVHCompoundPruner::updateMapping(uint64_t result, unsigned int a2, uint64_t a3)
{
  v5 = result;
  v6 = (result + 1192);
  v7 = *(result + 1200);
  if (v7 <= a2)
  {
    v8 = 2 * v7;
    v17 = 0;
    physx::shdfnd::Array<physx::Sq::IncrementalAABBTreeNode *,physx::shdfnd::ReflectionAllocator<physx::Sq::IncrementalAABBTreeNode *>>::resize(result + 1192, 2 * v7, &v17);
    v16 = 0;
    result = physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::resize(v5 + 1288, v8, &v16);
  }

  v9 = *(v5 + 1312);
  if (v9)
  {
    if (a3)
    {
      if (!*(a3 + 48))
      {
        v10 = *(a3 + 40);
        if (*v10)
        {
          v11 = 0;
          do
          {
            *(*v6 + 8 * v10[++v11]) = a3;
            v10 = *(a3 + 40);
          }

          while (v11 < *v10);
        }
      }
    }

    for (i = 0; i != v9; ++i)
    {
      v13 = *(*(v5 + 1304) + 8 * i);
      v14 = *(v13 + 40);
      if (*v14)
      {
        v15 = 0;
        do
        {
          *(*v6 + 8 * v14[++v15]) = v13;
          v14 = *(v13 + 40);
        }

        while (v15 < *v14);
      }
    }
  }

  else
  {
    *(*v6 + 8 * a2) = a3;
  }

  return result;
}

uint64_t physx::Sq::BVHCompoundPruner::removeCompound(uint64_t this, int a2)
{
  if (*(this + 1284))
  {
    v3 = this;
    v4 = 9 * ((~(a2 << 15) + a2) ^ ((~(a2 << 15) + a2) >> 10));
    v5 = ((v4 ^ (v4 >> 6)) + ~((v4 ^ (v4 >> 6)) << 11)) ^ (((v4 ^ (v4 >> 6)) + ~((v4 ^ (v4 >> 6)) << 11)) >> 16);
    v6 = *(*(this + 1256) + 4 * ((*(this + 1268) - 1) & v5));
    if (v6 != -1)
    {
      v7 = *(this + 1240);
      while (*(v7 + 8 * v6) != a2)
      {
        v6 = *(*(this + 1248) + 4 * v6);
        if (v6 == -1)
        {
          return this;
        }
      }

      v8 = *(v7 + 8 * v6 + 4);
      physx::Sq::CompoundTreePool::removeCompound((this + 1208), v8);
      v10 = v9;
      this = physx::Sq::IncrementalAABBTree::remove(v3 + 8, *(*(v3 + 1192) + 8 * v8), v8, *(v3 + 1216));
      if (this)
      {
        if (!*(this + 48))
        {
          v11 = *(this + 40);
          if (*v11)
          {
            v12 = 0;
            do
            {
              *(*(v3 + 1192) + 8 * v11[++v12]) = this;
              v11 = *(this + 40);
            }

            while (v12 < *v11);
          }
        }
      }

      if (v10 != v8)
      {
        *(*(v3 + 1192) + 8 * v8) = *(*(v3 + 1192) + 8 * v10);
        v13 = v10;
        v14 = *(*(*(v3 + 1192) + 8 * v8) + 40);
        v15 = *v14;
        if (v15)
        {
          v16 = v14 + 1;
          while (*v16 != v10)
          {
            ++v16;
            if (!--v15)
            {
              goto LABEL_19;
            }
          }

          *v16 = v8;
        }

LABEL_19:
        v17 = *(v3 + 1288);
        v18 = (v17 + 4 * v10);
        v31 = 0;
        this = physx::shdfnd::internal::HashBase<physx::shdfnd::Pair<unsigned int const,unsigned int>,unsigned int,physx::shdfnd::Hash<unsigned int>,physx::shdfnd::internal::HashMapBase<unsigned int,unsigned int,physx::shdfnd::Hash<unsigned int>,physx::shdfnd::NonTrackingAllocator>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::create((v3 + 1232), (v17 + 4 * v13), &v31);
        if ((v31 & 1) == 0)
        {
          *this = *v18;
        }

        *(this + 4) = v8;
        *(*(v3 + 1288) + 4 * v8) = *(*(v3 + 1288) + 4 * v13);
      }

      if (*(v3 + 1284))
      {
        v19 = *(v3 + 1256);
        v20 = (v19 + 4 * ((*(v3 + 1268) - 1) & v5));
        v21 = *v20;
        if (v21 != -1)
        {
          v22 = *(v3 + 1240);
          v23 = *(v3 + 1248);
          if (*(v22 + 8 * v21) == a2)
          {
LABEL_28:
            *v20 = *(v23 + 4 * v21);
            v25 = vadd_s32(*(v3 + 1280), 0xFFFFFFFF00000001);
            *(v3 + 1280) = v25;
            if (v21 != v25.i32[1])
            {
              *(v22 + 8 * v21) = *(v22 + 8 * v25.u32[1]);
              *(v23 + 4 * v21) = *(v23 + 4 * v25.u32[1]);
              v26 = 9 * ((*(v22 + 8 * v21) + ~(*(v22 + 8 * v21) << 15)) ^ ((*(v22 + 8 * v21) + ~(*(v22 + 8 * v21) << 15)) >> 10));
              v27 = (v19 + 4 * ((((v26 ^ (v26 >> 6)) + ~((v26 ^ (v26 >> 6)) << 11)) ^ (((v26 ^ (v26 >> 6)) + ~((v26 ^ (v26 >> 6)) << 11)) >> 16)) & (*(v3 + 1268) - 1)));
              v28 = *(v3 + 1284);
              v29 = *v27;
              if (v29 != v28)
              {
                do
                {
                  v30 = v29;
                  v29 = *(v23 + 4 * v29);
                }

                while (v29 != v28);
                v27 = (v23 + 4 * v30);
              }

              *v27 = v21;
            }

            --*(v3 + 1276);
          }

          else
          {
            while (1)
            {
              v24 = v21;
              v21 = *(v23 + 4 * v21);
              if (v21 == -1)
              {
                break;
              }

              if (*(v22 + 8 * v21) == a2)
              {
                v20 = (v23 + 4 * v24);
                goto LABEL_28;
              }
            }
          }
        }
      }
    }
  }

  return this;
}

uint64_t physx::Sq::BVHCompoundPruner::updateCompound(uint64_t result, int a2, float *a3)
{
  if (*(result + 1284))
  {
    v3 = result;
    v4 = 9 * ((~(a2 << 15) + a2) ^ ((~(a2 << 15) + a2) >> 10));
    v5 = *(*(result + 1256) + 4 * ((*(result + 1268) - 1) & (((v4 ^ (v4 >> 6)) + ~((v4 ^ (v4 >> 6)) << 11)) ^ (((v4 ^ (v4 >> 6)) + ~((v4 ^ (v4 >> 6)) << 11)) >> 16))));
    if (v5 != -1)
    {
      v6 = *(result + 1240);
      while (*(v6 + 8 * v5) != a2)
      {
        v5 = *(*(result + 1248) + 4 * v5);
        if (v5 == -1)
        {
          return result;
        }
      }

      v7 = *(v6 + 8 * v5 + 4);
      v8 = *(result + 1224) + 56 * v7;
      v9 = *(*v8 + 1144);
      v10 = *a3;
      v11 = a3[1];
      *(v8 + 24) = *a3;
      *(v8 + 28) = v11;
      v12 = a3[2];
      v13 = a3[3];
      *(v8 + 32) = v12;
      *(v8 + 36) = v13;
      v14 = a3[4];
      v15 = a3[5];
      *(v8 + 40) = v14;
      *(v8 + 44) = v15;
      v16 = a3[6];
      *(v8 + 48) = v16;
      v17 = v9[1];
      LODWORD(v18) = HIDWORD(v9->i64[0]);
      v19 = COERCE_FLOAT(v9->i64[1]);
      LODWORD(v20) = HIDWORD(v9[1].i64[0]);
      v21 = COERCE_FLOAT(v9[1].i64[1]);
      v22 = vaddq_f32(*v9, v17).f32[0];
      v23 = (0.5 * v22) + (0.5 * v22);
      v24 = ((v18 + v20) * 0.5) + ((v18 + v20) * 0.5);
      v25 = ((v19 + v21) * 0.5) + ((v19 + v21) * 0.5);
      v26 = (v13 * v13) + -0.5;
      v27 = ((v11 * v24) + (v10 * v23)) + (v12 * v25);
      v28 = v14 + (((v13 * ((v11 * v25) - (v12 * v24))) + (v23 * v26)) + (v10 * v27));
      v29 = v15 + (((v13 * ((v12 * v23) - (v10 * v25))) + (v24 * v26)) + (v11 * v27));
      v30 = v16 + (((v13 * ((v10 * v24) - (v11 * v23))) + (v25 * v26)) + (v12 * v27));
      v31 = v11 + v11;
      v32 = v12 + v12;
      v33 = v11 * (v11 + v11);
      v34 = v12 * (v12 + v12);
      v35 = (v10 + v10) * v11;
      v36 = (v10 + v10) * v12;
      v37 = (v10 + v10) * v13;
      v38 = v31 * v12;
      v39 = v31 * v13;
      v40 = v32 * v13;
      v41 = v35 + v40;
      v42 = 1.0 - (v10 * (v10 + v10));
      v43 = v38 + v37;
      v44 = 0.5 * vsubq_f32(v17, *v9).f32[0];
      v17.f32[0] = (v20 - v18) * 0.5;
      v45 = (v21 - v19) * 0.5;
      v46 = fabsf((v36 + v39) * v45) + (fabsf(((1.0 - v33) - v34) * v44) + fabsf((v35 - v40) * v17.f32[0]));
      v47 = fabsf((v38 - v37) * v45) + (fabsf(v41 * v44) + fabsf((v42 - v34) * v17.f32[0]));
      v48 = fabsf((v42 - v33) * v45) + (fabsf((v36 - v39) * v44) + fabsf(v43 * v17.f32[0]));
      v49 = *(result + 1216);
      v50 = (v49 + 24 * v7);
      *v50 = v28 - v46;
      v50[1] = v29 - v47;
      v50[2] = v30 - v48;
      v50[3] = v46 + v28;
      v50[4] = v47 + v29;
      v50[5] = v48 + v30;
      *(result + 1312) = 0;
      v51 = physx::Sq::IncrementalAABBTree::update(result + 8, *(*(result + 1192) + 8 * v7), v7, v49, result + 1304);

      return physx::Sq::BVHCompoundPruner::updateMapping(v3, v7, v51);
    }
  }

  return result;
}

uint64_t physx::Sq::BVHCompoundPruner::raycast(void *a1, float32x2_t *a2, float32x2_t *a3, float *a4, uint64_t a5, __int16 *a6, double a7, double a8, double a9, double a10, float32x4_t a11)
{
  v105 = *MEMORY[0x1E69E9840];
  v11 = a1[144];
  v12 = 1;
  if (!v11)
  {
    return v12;
  }

  v14 = 0;
  v98 = 0;
  v99 = 0;
  v15 = *a6;
  v96[0] = &unk_1F5D20FD0;
  v96[1] = a2;
  v96[2] = a3;
  v96[3] = &v98;
  v96[4] = a5;
  v97 = v15;
  v16 = a2[1].f32[0] + a2[1].f32[0];
  v17 = vadd_f32(*a2, *a2);
  *a11.f32 = vadd_f32(*a3, *a3);
  v18 = a3[1].f32[0] + a3[1].f32[0];
  v19 = COERCE_DOUBLE(vadd_f32(v17, vmul_n_f32(*a11.f32, *a4)));
  v20 = COERCE_DOUBLE(vbsl_s8(vceqz_f32(*a11.f32), v17, vbsl_s8(vcgez_f32(*a11.f32), vneg_f32(0x80000000800000), 0x80000000800000)));
  *v21.f32 = v17;
  v21.i64[1] = LODWORD(v16);
  v23 = a11;
  v23.f32[2] = v18;
  v22 = vextq_s8(v23, v23, 8uLL).u64[0];
  v23.i32[3] = 0;
  *v25.f32 = vext_s8(*a11.f32, v22, 4uLL);
  v24 = a1[153];
  v25.i64[1] = a11.u32[0];
  v26 = vabsq_f32(v23);
  *v27.f32 = vext_s8(*v26.f32, *&vextq_s8(v26, v26, 8uLL), 4uLL);
  v27.i64[1] = v26.u32[0];
  v28 = v16 + (v18 * *a4);
  v29 = -3.4028e38;
  if (v18 >= 0.0)
  {
    v29 = 3.4028e38;
  }

  if (v18 != 0.0)
  {
    v16 = v29;
  }

  if (*a4 >= 3.4028e38)
  {
    *v30.i64 = v20;
  }

  else
  {
    v16 = v28;
    *v30.i64 = v19;
  }

  v30.i64[1] = LODWORD(v16);
  v31 = a1[152];
  v32 = vminq_f32(v21, v30);
  v33 = vmaxq_f32(v21, v30);
  v104 = 0x10000000100;
  v102 = 1;
  v103 = v101;
  v101[0] = v11;
  v34 = vnegq_f32(v25);
  v90 = v23;
  v91 = v21;
  v88 = v27;
  v89 = v26;
  v87 = v34;
  while (1)
  {
    v35 = v103[v14];
    v36 = *v35;
    v37 = v35[1];
    v36.i32[3] = 0;
    v37.i32[3] = 0;
    v38 = vsubq_f32(v37, v36);
    v39 = vaddq_f32(v37, v37);
    v40 = vaddq_f32(v36, v36);
    v41 = vsubq_f32(v21, vaddq_f32(v36, v37));
    *v37.f32 = vext_s8(*v41.f32, *&vextq_s8(v41, v41, 8uLL), 4uLL);
    v37.i64[1] = v41.u32[0];
    *v42.f32 = vext_s8(*v38.f32, *&vextq_s8(v38, v38, 8uLL), 4uLL);
    v42.i64[1] = v38.u32[0];
    *v41.f32 = vmovn_s32(vandq_s8(vandq_s8(vcgeq_f32(v39, v32), vcgeq_f32(v33, v40)), vcgeq_f32(vmlaq_f32(vmulq_f32(v26, v42), v27, v38), vabsq_f32(vmlaq_f32(vmulq_f32(v23, v37), v41, v34)))));
    if (vuzp1_s8(*v41.f32, *v41.f32).u32[0] == -1)
    {
      break;
    }

LABEL_39:
    if (!v14--)
    {
      v12 = 1;
      goto LABEL_42;
    }
  }

  v43 = *a4;
  v100 = *a4;
  if (v35[3].i64[0])
  {
    v27 = v88;
    v26 = v89;
    v34 = v87;
    v92 = v33;
    v94 = v32;
    do
    {
      v44 = v35[2].i64[1];
      v45 = *v44;
      v46 = v44[1];
      v45.i32[3] = 0;
      v46.i32[3] = 0;
      v47 = vsubq_f32(v46, v45);
      v48 = vaddq_f32(v46, v46);
      v49 = vaddq_f32(v45, v45);
      v50 = vaddq_f32(v45, v46);
      v51 = vsubq_f32(v21, v50);
      *v52.f32 = vext_s8(*v51.f32, *&vextq_s8(v51, v51, 8uLL), 4uLL);
      v52.i64[1] = v51.u32[0];
      *v53.f32 = vext_s8(*v47.f32, *&vextq_s8(v47, v47, 8uLL), 4uLL);
      v53.i64[1] = v47.u32[0];
      v54 = vuzp1_s8(vmovn_s32(vandq_s8(vandq_s8(vcgeq_f32(v48, v32), vcgeq_f32(v33, v49)), vcgeq_f32(vmlaq_f32(vmulq_f32(v26, v53), v27, v47), vabsq_f32(vmlaq_f32(vmulq_f32(v23, v52), v51, v34))))), *v50.f32).u32[0];
      v55 = v44[4];
      v55.i32[3] = 0;
      v56 = v44[5];
      v56.i32[3] = 0;
      v57 = vsubq_f32(v56, v55);
      v58 = vaddq_f32(v56, v56);
      v59 = vaddq_f32(v55, v55);
      v60 = vaddq_f32(v55, v56);
      v61 = vsubq_f32(v21, v60);
      *v53.f32 = vext_s8(*v61.f32, *&vextq_s8(v61, v61, 8uLL), 4uLL);
      v53.i64[1] = v61.u32[0];
      *v62.f32 = vext_s8(*v57.f32, *&vextq_s8(v57, v57, 8uLL), 4uLL);
      v62.i64[1] = v57.u32[0];
      v63 = vuzp1_s8(vmovn_s32(vandq_s8(vandq_s8(vcgeq_f32(v58, v32), vcgeq_f32(v33, v59)), vcgeq_f32(vmlaq_f32(vmulq_f32(v26, v62), v27, v57), vabsq_f32(vmlaq_f32(vmulq_f32(v23, v53), v61, v34))))), *v50.f32).u32[0];
      if (v54 == -1 && v63 == -1)
      {
        v66 = vmulq_f32(v23, vsubq_f32(v60, v50));
        v66.i64[0] = vpaddq_f32(v66, v66).u64[0];
        v66.f32[0] = vpadd_f32(*v66.f32, *v66.f32).f32[0];
        v103[v14] = &v44[4 * (v66.f32[0] > 0.0)];
        v35 = &v44[4 * (v66.f32[0] <= 0.0)];
        if (v14 + 1 == (HIDWORD(v104) & 0x7FFFFFFF))
        {
          physx::shdfnd::Array<physx::Sq::IncrementalAABBTreeNode const*,physx::shdfnd::InlineAllocator<2048u,physx::shdfnd::ReflectionAllocator<physx::Sq::IncrementalAABBTreeNode const*>>>::resizeUninitialized(v101, 2 * (v14 + 1));
          v33 = v92;
          v32 = v94;
          v34 = v87;
          v27 = v88;
          v26 = v89;
          v23 = v90;
          v21 = v91;
        }

        ++v14;
      }

      else
      {
        if (v54 == -1)
        {
          v35 = v35[2].i64[1];
        }

        else
        {
          v35 = v44 + 4;
        }

        if (v54 != -1 && v63 != -1)
        {
          goto LABEL_39;
        }
      }
    }

    while (v35[3].i64[0]);
    v43 = *a4;
  }

  v67 = v35[2].i64[1];
  v68 = *v67;
  if (!*v67)
  {
LABEL_38:
    v27 = v88;
    v26 = v89;
    v34 = v87;
    goto LABEL_39;
  }

  v69 = v67 + 1;
  v70 = *v67;
  while (1)
  {
    v72 = *v69++;
    v71 = v72;
    if (v68 < 2)
    {
      break;
    }

    v73 = v31 + 24 * v71;
    v74 = *(v73 + 12);
    v75 = vaddq_f32(*v73, v74);
    v76 = vsubq_f32(v74, *v73);
    v75.i32[3] = 0;
    v77 = v76;
    v77.i32[3] = 0;
    v78 = vaddq_f32(v75, v77);
    v79 = vsubq_f32(v75, v77);
    v80 = vsubq_f32(v21, v75);
    *v81.f32 = vext_s8(*v80.f32, *&vextq_s8(v80, v80, 8uLL), 4uLL);
    v81.i64[1] = v80.u32[0];
    *v82.f32 = vext_s8(*v76.i8, *&vextq_s8(v76, v76, 8uLL), 4uLL);
    v82.i64[1] = v76.u32[0];
    *v76.i8 = vmovn_s32(vandq_s8(vandq_s8(vcgeq_f32(v78, v32), vcgeq_f32(v33, v79)), vcgeq_f32(vmlaq_f32(vmulq_f32(v89, v82), v88, v77), vabsq_f32(vmlaq_f32(vmulq_f32(v23, v81), v80, v87)))));
    if (vuzp1_s8(*v76.i8, *v76.i8).u32[0] == -1)
    {
      break;
    }

LABEL_37:
    if (!--v70)
    {
      goto LABEL_38;
    }
  }

  v93 = v33;
  v95 = v32;
  if ((*(v96[0] + 16))(v96, &v100, v24 + 56 * v71))
  {
    v83 = v100;
    v23 = v90;
    v21 = v91;
    v33 = v93;
    v32 = v95;
    if (v100 < v43)
    {
      *a4 = v100;
      v84 = vmlaq_n_f32(v91, v90, v83);
      v84.i64[1] = vextq_s8(v84, v84, 8uLL).u32[0];
      v32 = vminq_f32(v91, v84);
      v33 = vmaxq_f32(v91, v84);
    }

    goto LABEL_37;
  }

  v12 = 0;
LABEL_42:
  if ((v104 & 0x8000000000000000) == 0 && (v104 & 0x7FFFFFFF00000000) != 0 && v103 != v101 && v103)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  return v12;
}

uint64_t physx::Sq::BVHCompoundPruner::overlap(uint64_t *a1, uint64_t a2, uint64_t a3, __int16 *a4, double a5, double a6, double a7, double a8, float32x4_t a9, double a10, double a11, float32x4_t a12)
{
  v153 = *MEMORY[0x1E69E9840];
  v12 = a1[144];
  if (!v12)
  {
    return 1;
  }

  v17 = *(a2 + 98);
  v18 = 1;
  if (v17 > 2)
  {
    if (v17 == 4)
    {
      goto LABEL_34;
    }

    if (v17 != 3)
    {
      return v18;
    }

    if (*(a2 + 96))
    {
LABEL_34:
      physx::Gu::OBBAABBTests<true>::OBBAABBTests(v149, a2 + 48, (a2 + 12), a2, a5, a6, a7, a8, a9, a10, a11, a12);
      v70 = *a4;
      v145 = a2;
      v146 = a3;
      v147 = v70;
      v144 = &unk_1F5D20EC0;
      return physx::Gu::AABBTreeOverlap<physx::Gu::OBBAABBTests<true>,physx::Sq::IncrementalAABBTree,physx::Sq::IncrementalAABBTreeNode,physx::Sq::CompoundTree,MainTreeOBBOverlapCompoundPrunerCallback>::operator()(a1[153], a1[152], a1[144], v149, &v144);
    }

    v103 = *(a2 + 80);
    v104 = *(a2 + 92);
    v105 = *(a2 + 72);
    v106 = *(a2 + 84);
    *v107.f32 = vmul_f32(vadd_f32(v105, v106), 0x3F0000003F000000);
    v107.f32[2] = (v103 + v104) * 0.5;
    v107.i32[3] = 0;
    v108 = v104 - v103;
    *v109.f32 = vmul_f32(vsub_f32(v106, v105), 0x3F0000003F000000);
    v109.i64[1] = COERCE_UNSIGNED_INT(v108 * 0.5);
    v140 = v109;
    v143 = v107;
    v110 = *a4;
    v145 = a2;
    v146 = a3;
    v147 = v110;
    v144 = &unk_1F5D20F10;
    v111 = a1[153];
    v112 = a1[152];
    v152 = 0x10000000100;
    v113 = 1;
    v150 = 1;
    v151 = v149;
    v149[0].i64[0] = v12;
    while (2)
    {
      v114 = 2 * v113--;
      v115 = v151->i64[v113];
      while (1)
      {
        v116 = v115[1];
        v117.i64[0] = 0x3F0000003F000000;
        v117.i64[1] = 0x3F0000003F000000;
        v118 = vmulq_f32(vsubq_f32(v116, *v115), v117);
        v118.i32[3] = 0;
        v119 = vmulq_f32(vaddq_f32(v116, *v115), v117);
        v119.i32[3] = 0;
        *v119.f32 = vmovn_s32(vcgeq_f32(vaddq_f32(v140, v118), vabdq_f32(v119, v143)));
        if ((~vuzp1_s8(*v119.f32, *v119.f32).u32[0] & 0xFFFFFF) != 0)
        {
          break;
        }

        v120 = &v115[2].i8[8];
        v115 = v115[2].i64[1];
        if (!*(v120 + 1))
        {
          v121 = v115->i32[0];
          if (v115->i32[0])
          {
            v122 = &v115->i32[1];
            v123 = v121;
            while (1)
            {
              v125 = *v122++;
              v124 = v125;
              if (v121 < 2 || (v126 = v112 + 24 * v124, v127 = *(v126 + 12), v128 = vaddq_f32(*v126, v127), v129 = vsubq_f32(v127, *v126), v127.i64[0] = 0x3F0000003F000000, v127.i64[1] = 0x3F0000003F000000, v130 = vmulq_f32(v129, v127), v131 = vmulq_f32(v128, v127), v131.i32[3] = 0, v130.i32[3] = 0, *v130.f32 = vmovn_s32(vcgeq_f32(vaddq_f32(v140, v130), vabdq_f32(v131, v143))), (~vuzp1_s8(*v130.f32, *v130.f32).u32[0] & 0xFFFFFF) == 0))
              {
                v148 = 0;
                if (!v144[2](&v144, &v148, v111 + 56 * v124))
                {
                  break;
                }
              }

              if (!--v123)
              {
                goto LABEL_63;
              }
            }

LABEL_65:
            v18 = 0;
            goto LABEL_66;
          }

          break;
        }

        v151->i64[v113] = &v115[4];
        if (v113 + 1 == (HIDWORD(v152) & 0x7FFFFFFF))
        {
          physx::shdfnd::Array<physx::Sq::IncrementalAABBTreeNode const*,physx::shdfnd::InlineAllocator<2048u,physx::shdfnd::ReflectionAllocator<physx::Sq::IncrementalAABBTreeNode const*>>>::resizeUninitialized(v149, v114);
        }

        v114 += 2;
        ++v113;
      }

LABEL_63:
      if (v113)
      {
        continue;
      }

      break;
    }
  }

  else if (*(a2 + 98))
  {
    if (v17 != 2)
    {
      return v18;
    }

    v19 = *(a2 + 60) + *(a2 + 60);
    v20 = *(a2 + 120);
    v21 = *(a2 + 112);
    v22 = *(a2 + 12);
    v23 = COERCE_DOUBLE(vadd_f32(v21, vmul_n_f32(v22, v19)));
    *v24.f32 = v21;
    v24.i64[1] = LODWORD(v20);
    v25 = *(a2 + 20);
    *v26.f32 = v22;
    v26.i64[1] = LODWORD(v25);
    *v27.f32 = vext_s8(v22, *&vextq_s8(v26, v26, 8uLL), 4uLL);
    v27.i64[1] = v22.u32[0];
    *&a8 = *(a2 + 124) * 1.01;
    v28 = vdupq_lane_s32(*&a8, 0);
    v29 = COERCE_DOUBLE(vbsl_s8(vceqz_f32(v22), v21, vbsl_s8(vcgez_f32(v22), vneg_f32(0x80000000800000), 0x80000000800000)));
    v28.i32[3] = 0;
    v138 = v28;
    v139 = v26;
    v30 = vabsq_f32(v26);
    *v28.i8 = vext_s8(*v30.i8, *&vextq_s8(v30, v30, 8uLL), 4uLL);
    v28.i64[1] = v30.u32[0];
    v136 = v28;
    v137 = v30;
    v31 = v20 + (v19 * v25);
    v32 = -3.4028e38;
    if (v25 >= 0.0)
    {
      v32 = 3.4028e38;
    }

    if (v25 != 0.0)
    {
      v20 = v32;
    }

    v33 = v19 < 3.4028e38;
    if (v19 >= 3.4028e38)
    {
      v34 = v20;
    }

    else
    {
      v34 = v31;
    }

    if (v33)
    {
      *v35.i64 = v23;
    }

    else
    {
      *v35.i64 = v29;
    }

    v35.i64[1] = LODWORD(v34);
    v36 = *a4;
    v145 = a2;
    v146 = a3;
    v147 = v36;
    v144 = &unk_1F5D20F50;
    v37 = a1[153];
    v38 = a1[152];
    v141 = v24;
    v134 = vmaxq_f32(v24, v35);
    v135 = vminq_f32(v24, v35);
    v152 = 0x10000000100;
    v39 = 1;
    v150 = 1;
    v151 = v149;
    v149[0].i64[0] = v12;
    v133 = vnegq_f32(v27);
    while (2)
    {
      v40 = 2 * v39--;
      v41 = v151->i64[v39];
      while (1)
      {
        v42 = v41[1];
        v43.i64[0] = 0x3F0000003F000000;
        v43.i64[1] = 0x3F0000003F000000;
        v44 = vmulq_f32(vsubq_f32(v42, *v41), v43);
        v44.i32[3] = 0;
        v45 = vmulq_f32(vaddq_f32(v42, *v41), v43);
        v45.i32[3] = 0;
        v46 = vaddq_f32(v138, v44);
        v47 = vaddq_f32(v45, v46);
        v48 = vsubq_f32(v45, v46);
        v49 = vsubq_f32(v141, v45);
        *v50.f32 = vext_s8(*v49.f32, *&vextq_s8(v49, v49, 8uLL), 4uLL);
        v50.i64[1] = v49.u32[0];
        *v51.f32 = vext_s8(*v46.f32, *&vextq_s8(v46, v46, 8uLL), 4uLL);
        v51.i64[1] = v46.u32[0];
        *v49.f32 = vmovn_s32(vandq_s8(vandq_s8(vcgeq_f32(v134, v48), vcgeq_f32(v47, v135)), vcgeq_f32(vmlaq_f32(vmulq_f32(v137, v51), v136, v46), vabsq_f32(vmlaq_f32(vmulq_f32(v139, v50), v49, v133)))));
        if (vuzp1_s8(*v49.f32, *v49.f32).u32[0] != -1)
        {
          break;
        }

        v52 = &v41[2].i8[8];
        v41 = v41[2].i64[1];
        if (!*(v52 + 1))
        {
          v53 = v41->i32[0];
          if (v41->i32[0])
          {
            v54 = &v41->i32[1];
            v55 = v53;
            while (1)
            {
              v57 = *v54++;
              v56 = v57;
              if (v53 < 2 || (v58 = v38 + 24 * v56, v59 = *(v58 + 12), v60 = vaddq_f32(*v58, v59), v61 = vsubq_f32(v59, *v58), v59.i64[0] = 0x3F0000003F000000, v59.i64[1] = 0x3F0000003F000000, v62 = vmulq_f32(v61, v59), v63 = vmulq_f32(v60, v59), v63.i32[3] = 0, v62.i32[3] = 0, v64 = vaddq_f32(v138, v62), v65 = vaddq_f32(v63, v64), v66 = vsubq_f32(v63, v64), v67 = vsubq_f32(v141, v63), *v68.f32 = vext_s8(*v67.f32, *&vextq_s8(v67, v67, 8uLL), 4uLL), v68.i64[1] = v67.u32[0], *v69.f32 = vext_s8(*v64.f32, *&vextq_s8(v64, v64, 8uLL), 4uLL), v69.i64[1] = v64.u32[0], *v64.f32 = vmovn_s32(vandq_s8(vandq_s8(vcgeq_f32(v134, v66), vcgeq_f32(v65, v135)), vcgeq_f32(vmlaq_f32(vmulq_f32(v137, v69), v136, v64), vabsq_f32(vmlaq_f32(vmulq_f32(v139, v68), v67, v133))))), vuzp1_s8(*v64.f32, *v64.f32).u32[0] == -1))
              {
                v148 = 0;
                if (!v144[2](&v144, &v148, v37 + 56 * v56))
                {
                  goto LABEL_65;
                }
              }

              if (!--v55)
              {
                goto LABEL_28;
              }
            }
          }

          break;
        }

        v151->i64[v39] = &v41[4];
        if (v39 + 1 == (HIDWORD(v152) & 0x7FFFFFFF))
        {
          physx::shdfnd::Array<physx::Sq::IncrementalAABBTreeNode const*,physx::shdfnd::InlineAllocator<2048u,physx::shdfnd::ReflectionAllocator<physx::Sq::IncrementalAABBTreeNode const*>>>::resizeUninitialized(v149, v40);
        }

        v40 += 2;
        ++v39;
      }

LABEL_28:
      if (v39)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v71 = *(a2 + 100);
    v71.i64[1] = *(a2 + 108);
    v142 = v71;
    v71.f32[0] = *(a2 + 112) * *(a2 + 112);
    v72 = vdup_lane_s32(*v71.f32, 0);
    v73 = *a4;
    v145 = a2;
    v146 = a3;
    v147 = v73;
    v144 = &unk_1F5D20F90;
    v74 = a1[153];
    v75 = a1[152];
    v152 = 0x10000000100;
    v76 = 1;
    v150 = 1;
    v151 = v149;
    v149[0].i64[0] = v12;
    while (2)
    {
      v77 = 2 * v76--;
      v78 = v151->i64[v76];
      while (1)
      {
        v79 = v78[1];
        v80.i64[0] = 0x3F0000003F000000;
        v80.i64[1] = 0x3F0000003F000000;
        v81 = vmulq_f32(vsubq_f32(v79, *v78), v80);
        v81.i32[3] = 0;
        v82 = vmulq_f32(vaddq_f32(v79, *v78), v80);
        v82.i32[3] = 0;
        v83 = vsubq_f32(v142, v82);
        v84 = vnegq_f32(v81);
        v84.i32[3] = 0;
        v85 = vsubq_f32(v83, vmaxq_f32(vminq_f32(v83, v81), v84));
        v86 = vmulq_f32(v85, v85);
        v86.i64[0] = vpaddq_f32(v86, v86).u64[0];
        *v86.f32 = vdup_lane_s16(vcge_f32(v72, vpadd_f32(*v86.f32, *v86.f32)), 0);
        if (vuzp1_s8(*v86.f32, *v86.f32).u32[0] != -1)
        {
          break;
        }

        v87 = &v78[2].i8[8];
        v78 = v78[2].i64[1];
        if (!*(v87 + 1))
        {
          v88 = v78->i32[0];
          if (v78->i32[0])
          {
            v89 = &v78->i32[1];
            v90 = v88;
            while (1)
            {
              v92 = *v89++;
              v91 = v92;
              if (v88 < 2 || (v93 = v75 + 24 * v91, v94 = *(v93 + 12), v95 = vaddq_f32(*v93, v94), v96 = vsubq_f32(v94, *v93), v94.i64[0] = 0x3F0000003F000000, v94.i64[1] = 0x3F0000003F000000, v97 = vmulq_f32(v96, v94), v98 = vmulq_f32(v95, v94), v98.i32[3] = 0, v97.i32[3] = 0, v99 = vsubq_f32(v142, v98), v100 = vnegq_f32(v97), v100.i32[3] = 0, v101 = vsubq_f32(v99, vmaxq_f32(vminq_f32(v99, v97), v100)), v102 = vmulq_f32(v101, v101), v102.i64[0] = vpaddq_f32(v102, v102).u64[0], *v102.f32 = vdup_lane_s16(vcge_f32(v72, vpadd_f32(*v102.f32, *v102.f32)), 0), vuzp1_s8(*v102.f32, *v102.f32).u32[0] == -1))
              {
                v148 = 0;
                if (!v144[2](&v144, &v148, v74 + 56 * v91))
                {
                  goto LABEL_65;
                }
              }

              if (!--v90)
              {
                goto LABEL_48;
              }
            }
          }

          break;
        }

        v151->i64[v76] = &v78[4];
        if (v76 + 1 == (HIDWORD(v152) & 0x7FFFFFFF))
        {
          physx::shdfnd::Array<physx::Sq::IncrementalAABBTreeNode const*,physx::shdfnd::InlineAllocator<2048u,physx::shdfnd::ReflectionAllocator<physx::Sq::IncrementalAABBTreeNode const*>>>::resizeUninitialized(v149, v77);
        }

        v77 += 2;
        ++v76;
      }

LABEL_48:
      if (v76)
      {
        continue;
      }

      break;
    }
  }

  v18 = 1;
LABEL_66:
  if ((v152 & 0x8000000000000000) == 0 && (v152 & 0x7FFFFFFF00000000) != 0 && v151 != v149 && v151)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  return v18;
}

uint64_t physx::Gu::AABBTreeOverlap<physx::Gu::OBBAABBTests<true>,physx::Sq::IncrementalAABBTree,physx::Sq::IncrementalAABBTreeNode,physx::Sq::CompoundTree,MainTreeOBBOverlapCompoundPrunerCallback>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t *a4, uint64_t a5)
{
  v40 = *MEMORY[0x1E69E9840];
  v39 = 0x10000000100;
  v9 = 1;
  v37 = 1;
  v38 = v36;
  v36[0] = a3;
  while (1)
  {
    v10 = v9 - 1;
    v11 = v38[v9 - 1];
    v12 = v11[1];
    v13.i64[0] = 0x3F0000003F000000;
    v13.i64[1] = 0x3F0000003F000000;
    v14 = vmulq_f32(vsubq_f32(v12, *v11), v13);
    v14.i32[3] = 0;
    v15 = vmulq_f32(vaddq_f32(v12, *v11), v13);
    v15.i32[3] = 0;
    if (physx::Gu::OBBAABBTests<true>::operator()(a4, v15, v14))
    {
      v16 = 2 * v9;
      while (1)
      {
        v10 = v9 - 1;
        v17 = &v11[2].i8[8];
        v11 = v11[2].i64[1];
        if (!*(v17 + 1))
        {
          break;
        }

        v38[v10] = v11 + 4;
        if (v9 == (HIDWORD(v39) & 0x7FFFFFFF))
        {
          physx::shdfnd::Array<physx::Sq::IncrementalAABBTreeNode const*,physx::shdfnd::InlineAllocator<2048u,physx::shdfnd::ReflectionAllocator<physx::Sq::IncrementalAABBTreeNode const*>>>::resizeUninitialized(v36, v16);
        }

        v18 = v11[1];
        v19.i64[0] = 0x3F0000003F000000;
        v19.i64[1] = 0x3F0000003F000000;
        v20 = vmulq_f32(vsubq_f32(v18, *v11), v19);
        v20.i32[3] = 0;
        v21 = vmulq_f32(vaddq_f32(v18, *v11), v19);
        v21.i32[3] = 0;
        ++v9;
        v16 += 2;
        if (!physx::Gu::OBBAABBTests<true>::operator()(a4, v21, v20))
        {
          v10 = v9 - 1;
          goto LABEL_15;
        }
      }

      v22 = v11->i32[0];
      if (v11->i32[0])
      {
        break;
      }
    }

LABEL_15:
    v9 = v10;
    if (!v10)
    {
      v33 = 1;
      goto LABEL_18;
    }
  }

  v23 = &v11->i32[1];
  v24 = v22;
  while (1)
  {
    v26 = *v23++;
    v25 = v26;
    if (v22 < 2 || (v27 = a2 + 24 * v25, v28 = *(v27 + 12), v29 = vaddq_f32(*v27, v28), v30.i64[0] = 0x3F0000003F000000, v30.i64[1] = 0x3F0000003F000000, v31 = vmulq_f32(vsubq_f32(v28, *v27), v30), v32 = vmulq_f32(v29, v30), v32.i32[3] = 0, v31.i32[3] = 0, physx::Gu::OBBAABBTests<true>::operator()(a4, v32, v31)))
    {
      v35 = 0;
      if (!(*(*a5 + 16))(a5, &v35, a1 + 56 * v25))
      {
        break;
      }
    }

    if (!--v24)
    {
      goto LABEL_15;
    }
  }

  v33 = 0;
LABEL_18:
  if ((v39 & 0x8000000000000000) == 0 && (v39 & 0x7FFFFFFF00000000) != 0 && v38 != v36 && v38)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  return v33;
}

uint64_t physx::Sq::BVHCompoundPruner::sweep(void *a1, uint64_t a2, float32x2_t *a3, float *a4, uint64_t a5, __int16 *a6, double a7, double a8, double a9, double a10, double a11, double a12, float32x4_t a13)
{
  v117 = *MEMORY[0x1E69E9840];
  v13 = a1[144];
  v14 = 1;
  if (!v13)
  {
    return v14;
  }

  v16 = 0;
  v17 = *(a2 + 92);
  v18 = *(a2 + 80);
  v111 = (v17 - v18) * 0.5;
  v109 = (v17 + v18) * 0.5;
  v19 = *a6;
  v106[0] = &unk_1F5D21008;
  v106[1] = &v108;
  v106[2] = a3;
  v106[3] = &v110;
  v106[4] = a5;
  v107 = v19;
  v20 = a1[153];
  v21 = a1[152];
  v22 = v109 + v109;
  v23 = *(a2 + 84);
  v24 = *(a2 + 72);
  v25 = vmul_f32(vsub_f32(v23, v24), 0x3F0000003F000000);
  v26 = vmul_f32(vadd_f32(v23, v24), 0x3F0000003F000000);
  v27 = vadd_f32(v26, v26);
  *a13.f32 = vadd_f32(*a3, *a3);
  v28 = a3[1].f32[0] + a3[1].f32[0];
  v29 = *a4;
  v30 = COERCE_DOUBLE(vadd_f32(v27, vmul_n_f32(*a13.f32, *a4)));
  v31 = COERCE_DOUBLE(vbsl_s8(vceqz_f32(*a13.f32), v27, vbsl_s8(vcgez_f32(*a13.f32), vneg_f32(0x80000000800000), 0x80000000800000)));
  *v32.f32 = v27;
  v32.f32[2] = v109 + v109;
  *v36.f32 = vadd_f32(v25, v25);
  v32.i32[3] = 0;
  v34 = a13;
  v34.f32[2] = v28;
  v33 = vextq_s8(v34, v34, 8uLL).u64[0];
  v34.i32[3] = 0;
  *v35.f32 = vext_s8(*a13.f32, v33, 4uLL);
  v35.i64[1] = a13.u32[0];
  v36.f32[2] = v111 + v111;
  v110 = v25;
  v36.i32[3] = 0;
  v37 = vabsq_f32(v34);
  *v38.f32 = vext_s8(*v37.f32, *&vextq_s8(v37, v37, 8uLL), 4uLL);
  v38.i64[1] = v37.u32[0];
  v39 = -3.4028e38;
  if (v28 >= 0.0)
  {
    v39 = 3.4028e38;
  }

  if (v28 != 0.0)
  {
    v22 = v39;
  }

  if (v29 >= 3.4028e38)
  {
    *v40.i64 = v31;
  }

  else
  {
    v22 = (v109 + v109) + (v28 * v29);
    *v40.i64 = v30;
  }

  v40.i64[1] = LODWORD(v22);
  v108 = v26;
  v41 = vminq_f32(v32, v40);
  v42 = vmaxq_f32(v32, v40);
  v116 = 0x10000000100;
  v114 = 1;
  v115 = v113;
  v113[0] = v13;
  v43 = vnegq_f32(v35);
  v100 = v34;
  v101 = v32;
  v98 = v37;
  v99 = v36;
  v96 = v43;
  v97 = v38;
  while (1)
  {
    v44 = v115[v16];
    v45 = *v44;
    v46 = v44[1];
    v45.i32[3] = 0;
    v46.i32[3] = 0;
    v47 = vaddq_f32(v36, vsubq_f32(v46, v45));
    v48 = vaddq_f32(v36, vaddq_f32(v46, v46));
    v49 = vsubq_f32(vaddq_f32(v45, v45), v36);
    v50 = vsubq_f32(v32, vaddq_f32(v45, v46));
    *v46.f32 = vext_s8(*v50.f32, *&vextq_s8(v50, v50, 8uLL), 4uLL);
    v46.i64[1] = v50.u32[0];
    *v51.f32 = vext_s8(*v47.f32, *&vextq_s8(v47, v47, 8uLL), 4uLL);
    v51.i64[1] = v47.u32[0];
    *v50.f32 = vmovn_s32(vandq_s8(vandq_s8(vcgeq_f32(v48, v41), vcgeq_f32(v42, v49)), vcgeq_f32(vmlaq_f32(vmulq_f32(v37, v51), v38, v47), vabsq_f32(vmlaq_f32(vmulq_f32(v34, v46), v50, v43)))));
    if (vuzp1_s8(*v50.f32, *v50.f32).u32[0] == -1)
    {
      break;
    }

LABEL_39:
    if (!v16--)
    {
      v14 = 1;
      goto LABEL_42;
    }
  }

  v52 = *a4;
  v112 = *a4;
  if (v44[3].i64[0])
  {
    v37 = v98;
    v36 = v99;
    v43 = v96;
    v38 = v97;
    v102 = v42;
    v104 = v41;
    do
    {
      v53 = v44[2].i64[1];
      v54 = *v53;
      v55 = v53[1];
      v54.i32[3] = 0;
      v55.i32[3] = 0;
      v56 = vaddq_f32(v36, vsubq_f32(v55, v54));
      v57 = vaddq_f32(v36, vaddq_f32(v55, v55));
      v58 = vaddq_f32(v54, v54);
      v59 = vaddq_f32(v54, v55);
      v60 = vsubq_f32(v32, v59);
      *v61.f32 = vext_s8(*v60.f32, *&vextq_s8(v60, v60, 8uLL), 4uLL);
      v61.i64[1] = v60.u32[0];
      *v62.f32 = vext_s8(*v56.f32, *&vextq_s8(v56, v56, 8uLL), 4uLL);
      v62.i64[1] = v56.u32[0];
      v63 = vuzp1_s8(vmovn_s32(vandq_s8(vandq_s8(vcgeq_f32(v57, v41), vcgeq_f32(v42, vsubq_f32(v58, v36))), vcgeq_f32(vmlaq_f32(vmulq_f32(v37, v62), v38, v56), vabsq_f32(vmlaq_f32(vmulq_f32(v34, v61), v60, v43))))), *v59.f32).u32[0];
      v64 = v53[4];
      v64.i32[3] = 0;
      v65 = v53[5];
      v65.i32[3] = 0;
      v66 = vaddq_f32(v36, vsubq_f32(v65, v64));
      v67 = vaddq_f32(v36, vaddq_f32(v65, v65));
      v68 = vsubq_f32(vaddq_f32(v64, v64), v36);
      v69 = vaddq_f32(v64, v65);
      v70 = vsubq_f32(v32, v69);
      *v62.f32 = vext_s8(*v70.f32, *&vextq_s8(v70, v70, 8uLL), 4uLL);
      v62.i64[1] = v70.u32[0];
      *v71.f32 = vext_s8(*v66.f32, *&vextq_s8(v66, v66, 8uLL), 4uLL);
      v71.i64[1] = v66.u32[0];
      v72 = vuzp1_s8(vmovn_s32(vandq_s8(vandq_s8(vcgeq_f32(v67, v41), vcgeq_f32(v42, v68)), vcgeq_f32(vmlaq_f32(vmulq_f32(v37, v71), v38, v66), vabsq_f32(vmlaq_f32(vmulq_f32(v34, v62), v70, v43))))), *v59.f32).u32[0];
      if (v63 == -1 && v72 == -1)
      {
        v75 = vmulq_f32(v34, vsubq_f32(v69, v59));
        v75.i64[0] = vpaddq_f32(v75, v75).u64[0];
        v75.f32[0] = vpadd_f32(*v75.f32, *v75.f32).f32[0];
        v115[v16] = &v53[4 * (v75.f32[0] > 0.0)];
        v44 = &v53[4 * (v75.f32[0] <= 0.0)];
        if (v16 + 1 == (HIDWORD(v116) & 0x7FFFFFFF))
        {
          physx::shdfnd::Array<physx::Sq::IncrementalAABBTreeNode const*,physx::shdfnd::InlineAllocator<2048u,physx::shdfnd::ReflectionAllocator<physx::Sq::IncrementalAABBTreeNode const*>>>::resizeUninitialized(v113, 2 * (v16 + 1));
          v42 = v102;
          v41 = v104;
          v43 = v96;
          v38 = v97;
          v37 = v98;
          v36 = v99;
          v34 = v100;
          v32 = v101;
        }

        ++v16;
      }

      else
      {
        if (v63 == -1)
        {
          v44 = v44[2].i64[1];
        }

        else
        {
          v44 = v53 + 4;
        }

        if (v63 != -1 && v72 != -1)
        {
          goto LABEL_39;
        }
      }
    }

    while (v44[3].i64[0]);
    v52 = *a4;
  }

  v76 = v44[2].i64[1];
  v77 = *v76;
  if (!*v76)
  {
LABEL_38:
    v37 = v98;
    v36 = v99;
    v43 = v96;
    v38 = v97;
    goto LABEL_39;
  }

  v78 = v76 + 1;
  v79 = *v76;
  while (1)
  {
    v81 = *v78++;
    v80 = v81;
    if (v77 < 2)
    {
      break;
    }

    v82 = v21 + 24 * v80;
    v83 = *(v82 + 12);
    v84 = vaddq_f32(*v82, v83);
    v85 = vsubq_f32(v83, *v82);
    v84.i32[3] = 0;
    v85.i32[3] = 0;
    v86 = vaddq_f32(v99, v85);
    v87 = vaddq_f32(v84, v86);
    v88 = vsubq_f32(v84, v86);
    v89 = vsubq_f32(v32, v84);
    *v90.f32 = vext_s8(*v89.f32, *&vextq_s8(v89, v89, 8uLL), 4uLL);
    v90.i64[1] = v89.u32[0];
    *v91.f32 = vext_s8(*v86.f32, *&vextq_s8(v86, v86, 8uLL), 4uLL);
    v91.i64[1] = v86.u32[0];
    *v86.f32 = vmovn_s32(vandq_s8(vandq_s8(vcgeq_f32(v87, v41), vcgeq_f32(v42, v88)), vcgeq_f32(vmlaq_f32(vmulq_f32(v98, v91), v97, v86), vabsq_f32(vmlaq_f32(vmulq_f32(v34, v90), v89, v96)))));
    if (vuzp1_s8(*v86.f32, *v86.f32).u32[0] == -1)
    {
      break;
    }

LABEL_37:
    if (!--v79)
    {
      goto LABEL_38;
    }
  }

  v103 = v42;
  v105 = v41;
  if ((*(v106[0] + 16))(v106, &v112, v20 + 56 * v80))
  {
    v92 = v112;
    v34 = v100;
    v32 = v101;
    v42 = v103;
    v41 = v105;
    if (v112 < v52)
    {
      *a4 = v112;
      v93 = vmlaq_n_f32(v101, v100, v92);
      v93.i64[1] = vextq_s8(v93, v93, 8uLL).u32[0];
      v41 = vminq_f32(v101, v93);
      v42 = vmaxq_f32(v101, v93);
    }

    goto LABEL_37;
  }

  v14 = 0;
LABEL_42:
  if ((v116 & 0x8000000000000000) == 0 && (v116 & 0x7FFFFFFF00000000) != 0 && v115 != v113 && v115)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  return v14;
}

uint64_t physx::Sq::BVHCompoundPruner::getPayload(physx::Sq::BVHCompoundPruner *this, unsigned int a2, int a3)
{
  v3 = 9 * ((~(a3 << 15) + a3) ^ ((~(a3 << 15) + a3) >> 10));
  v4 = (v3 ^ (v3 >> 6)) + ~((v3 ^ (v3 >> 6)) << 11);
  v5 = *(*(this + 157) + 4 * ((*(this + 317) - 1) & (v4 ^ HIWORD(v4))));
    ;
  }

  v7 = *(*(this + 153) + 56 * *(i + 8 * v5 + 4) + 8);
  return *(v7 + 16) + 16 * *(*(v7 + 24) + 4 * a2);
}

uint64_t physx::Sq::BVHCompoundPruner::getPayload(uint64_t a1, unsigned int a2, int a3, void *a4)
{
  v4 = 9 * ((~(a3 << 15) + a3) ^ ((~(a3 << 15) + a3) >> 10));
  v5 = (v4 ^ (v4 >> 6)) + ~((v4 ^ (v4 >> 6)) << 11);
  v6 = *(*(a1 + 1256) + 4 * ((*(a1 + 1268) - 1) & (v5 ^ HIWORD(v5))));
    ;
  }

  v8 = *(*(a1 + 1224) + 56 * *(i + 8 * v6 + 4) + 8);
  v9 = *(v8[3] + 4 * a2);
  *a4 = v8[1] + 24 * v9;
  return v8[2] + 16 * v9;
}

uint64_t physx::Sq::BVHCompoundPruner::updateObjectAfterManualBoundsUpdates(uint64_t this, int a2, unsigned int a3)
{
  if (*(this + 1284))
  {
    v3 = this;
    v4 = 9 * ((~(a2 << 15) + a2) ^ ((~(a2 << 15) + a2) >> 10));
    v5 = *(*(this + 1256) + 4 * ((*(this + 1268) - 1) & (((v4 ^ (v4 >> 6)) + ~((v4 ^ (v4 >> 6)) << 11)) ^ (((v4 ^ (v4 >> 6)) + ~((v4 ^ (v4 >> 6)) << 11)) >> 16))));
    if (v5 != -1)
    {
      v6 = *(this + 1240);
      while (*(v6 + 8 * v5) != a2)
      {
        v5 = *(*(this + 1248) + 4 * v5);
        if (v5 == -1)
        {
          return this;
        }
      }

      v7 = v6 + 8 * v5;
      physx::Sq::CompoundTree::updateObjectAfterManualBoundsUpdates((*(this + 1224) + 56 * *(v7 + 4)), a3);
      v8 = *(v7 + 4);

      return physx::Sq::BVHCompoundPruner::updateMainTreeNode(v3, v8);
    }
  }

  return this;
}

uint64_t physx::Sq::BVHCompoundPruner::updateMainTreeNode(physx::Sq::BVHCompoundPruner *this, unsigned int a2)
{
  v4 = (*(this + 153) + 56 * a2);
  v5 = *(*v4 + 1144);
  v6 = v5[1];
  LODWORD(v7) = HIDWORD(v5->i64[0]);
  v8 = COERCE_FLOAT(v5->i64[1]);
  LODWORD(v9) = HIDWORD(v5[1].i64[0]);
  v10 = COERCE_FLOAT(v5[1].i64[1]);
  v11 = vaddq_f32(*v5, v6).f32[0];
  v12 = (0.5 * v11) + (0.5 * v11);
  v13 = ((v7 + v9) * 0.5) + ((v7 + v9) * 0.5);
  v14 = ((v8 + v10) * 0.5) + ((v8 + v10) * 0.5);
  v16 = v4[8];
  v15 = v4[9];
  v17 = (v15 * v15) + -0.5;
  v18 = v4[6];
  v19 = v4[7];
  v20 = ((v19 * v13) + (v18 * v12)) + (v16 * v14);
  v21 = ((v15 * ((v19 * v14) - (v16 * v13))) + (v12 * v17)) + (v18 * v20);
  v22 = ((v15 * ((v16 * v12) - (v18 * v14))) + (v13 * v17)) + (v19 * v20);
  v23 = ((v15 * ((v18 * v13) - (v19 * v12))) + (v14 * v17)) + (v16 * v20);
  v24 = v4[10] + v21;
  v25 = v4[11] + v22;
  v26 = v4[12] + v23;
  v27 = v19 + v19;
  v28 = v16 + v16;
  v29 = v19 * (v19 + v19);
  v30 = v16 * (v16 + v16);
  v31 = (v18 + v18) * v19;
  v32 = (v18 + v18) * v16;
  v33 = v15 * (v18 + v18);
  v34 = v27 * v16;
  v35 = v15 * v27;
  v36 = v15 * v28;
  v37 = 1.0 - (v18 * (v18 + v18));
  v38 = 0.5 * vsubq_f32(v6, *v5).f32[0];
  v39 = (v9 - v7) * 0.5;
  v40 = (v10 - v8) * 0.5;
  v6.f32[0] = fabsf(v40 * (v32 + v35)) + (fabsf(v38 * ((1.0 - v29) - v30)) + fabsf(v39 * (v31 - v36)));
  v41 = fabsf(v40 * (v34 - v33)) + (fabsf(v38 * (v31 + v36)) + fabsf(v39 * (v37 - v30)));
  v42 = fabsf(v40 * (v37 - v29)) + (fabsf(v38 * (v32 - v35)) + fabsf(v39 * (v33 + v34)));
  v43 = *(this + 152);
  v44 = (v43 + 24 * a2);
  *v44 = v24 - v6.f32[0];
  v44[1] = v25 - v41;
  v44[2] = v26 - v42;
  v44[3] = v24 + v6.f32[0];
  v44[4] = v25 + v41;
  v44[5] = v26 + v42;
  *(this + 328) = 0;
  v45 = physx::Sq::IncrementalAABBTree::update(this + 8, *(*(this + 149) + 8 * a2), a2, v43, this + 1304);

  return physx::Sq::BVHCompoundPruner::updateMapping(this, a2, v45);
}

uint64_t physx::Sq::BVHCompoundPruner::removeObject(uint64_t this, uint64_t a2, unsigned int a3)
{
  if (*(this + 1284))
  {
    v4 = this;
    v5 = 9 * ((~(a2 << 15) + a2) ^ ((~(a2 << 15) + a2) >> 10));
    v6 = *(*(this + 1256) + 4 * ((*(this + 1268) - 1) & (((v5 ^ (v5 >> 6)) + ~((v5 ^ (v5 >> 6)) << 11)) ^ (((v5 ^ (v5 >> 6)) + ~((v5 ^ (v5 >> 6)) << 11)) >> 16))));
    if (v6 != -1)
    {
      v7 = *(this + 1240);
      while (*(v7 + 8 * v6) != a2)
      {
        v6 = *(*(this + 1248) + 4 * v6);
        if (v6 == -1)
        {
          return this;
        }
      }

      v8 = *(v7 + 8 * v6 + 4);
      physx::Sq::CompoundTree::removeObject((*(this + 1224) + 56 * v8), a3);
      if (*(*(*(v4 + 153) + 56 * v8) + 1144))
      {

        return physx::Sq::BVHCompoundPruner::updateMainTreeNode(v4, v8);
      }

      else
      {
        v9 = *(*v4 + 8);

        return v9(v4, a2);
      }
    }
  }

  return this;
}

uint64_t physx::Sq::BVHCompoundPruner::addObject(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!*(a1 + 1284))
  {
    return 0;
  }

  v7 = 9 * ((~(a2 << 15) + a2) ^ ((~(a2 << 15) + a2) >> 10));
  v8 = *(*(a1 + 1256) + 4 * ((*(a1 + 1268) - 1) & (((v7 ^ (v7 >> 6)) + ~((v7 ^ (v7 >> 6)) << 11)) ^ (((v7 ^ (v7 >> 6)) + ~((v7 ^ (v7 >> 6)) << 11)) >> 16))));
  if (v8 == -1)
  {
    return 0;
  }

  v9 = *(a1 + 1240);
  while (*(v9 + 8 * v8) != a2)
  {
    v8 = *(*(a1 + 1248) + 4 * v8);
    if (v8 == -1)
    {
      return 0;
    }
  }

  v11 = v9 + 8 * v8;
  physx::Sq::CompoundTree::addObject(*(a1 + 1224) + 56 * *(v11 + 4), a3, a4, a5, a6);
  physx::Sq::BVHCompoundPruner::updateMainTreeNode(a1, *(v11 + 4));
  return 1;
}

double physx::Sq::BVHCompoundPruner::shiftOrigin(uint64_t a1, float32x4_t *a2)
{
  *&result = physx::Sq::CompoundTreePool::shiftOrigin((a1 + 1208), a2);
  v5 = *(a1 + 1152);
  if (v5)
  {
    v6 = *a2;
    v6.i32[3] = 0;
    v7 = v6;
    *&result = shiftNode(v5, &v7).u64[0];
  }

  return result;
}

uint64_t physx::Sq::AABBPruner::getPayload(void *a1, unsigned int a2, void *a3)
{
  v3 = *(a1[55] + 4 * a2);
  *a3 = a1[53] + 24 * v3;
  return a1[54] + 16 * v3;
}

uint64_t physx::Sq::AABBPruner::preallocate(uint64_t this, unsigned int a2)
{
  if (*(this + 420) < a2)
  {
    return physx::Sq::PruningPool::resize((this + 416), a2);
  }

  return this;
}

uint64_t physx::shdfnd::Array<physx::Gu::AABBTreeBuildNode *,physx::shdfnd::ReflectionAllocator<physx::Gu::AABBTreeBuildNode *>>::growAndPushBack(uint64_t result, void *a2)
{
  v3 = result;
  v4 = *(result + 12);
  if ((v4 & 0x7FFFFFFF) != 0)
  {
    v5 = 2 * v4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Gu::AABBTreeBuildNode *>::getName() [T = physx::Gu::AABBTreeBuildNode *]";
    }

    else
    {
      v7 = "<allocation names disabled>";
    }

    result = (*(*(v6 + 24) + 16))(v6 + 24, 8 * v5, v7, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v8 = result;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v3 + 8);
  v10 = &v8[v9];
  if (v9)
  {
    v11 = *v3;
    v12 = v8;
    do
    {
      v13 = *v11++;
      *v12++ = v13;
    }

    while (v12 < v10);
  }

  *v10 = *a2;
  if ((*(v3 + 12) & 0x80000000) == 0 && *v3)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    LODWORD(v9) = *(v3 + 8);
  }

  *v3 = v8;
  *(v3 + 8) = v9 + 1;
  *(v3 + 12) = v5;
  return result;
}

void *physx::shdfnd::internal::HashBase<physx::shdfnd::Pair<unsigned int const,physx::Sq::IncrementalAABBTreeNode *>,unsigned int,physx::shdfnd::Hash<unsigned int>,physx::shdfnd::internal::HashMapBase<unsigned int,physx::Sq::IncrementalAABBTreeNode *,physx::shdfnd::Hash<unsigned int>,physx::shdfnd::NonTrackingAllocator>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(uint64_t a1, unsigned int a2)
{
  v2 = a2;
  if ((a2 ^ (a2 - 1)) <= a2 - 1)
  {
    v4 = a2 | (a2 >> 1) | ((a2 | (a2 >> 1)) >> 2);
    v5 = v4 | (v4 >> 4) | ((v4 | (v4 >> 4)) >> 8);
    v2 = (v5 | HIWORD(v5)) + 1;
  }

  v6 = *(a1 + 32);
  v7 = (*(a1 + 40) * v2);
  v8 = ((-4 * (v2 + v7)) & 0xC) + 4 * (v2 + v7);
  if (v8 + 16 * v7)
  {
    v9 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v8 + 16 * v7, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsHashInternals.h", 372);
  }

  else
  {
    v9 = 0;
  }

  v10 = &v9[4 * v2];
  result = memset(v9, 255, 4 * v2);
  if (*(a1 + 52))
  {
    v12 = 0;
    v13 = *(a1 + 8);
    v14 = &v9[v8 + 8];
    do
    {
      v15 = *v13 + ~(*v13 << 15);
      v16 = (9 * (v15 ^ (v15 >> 10))) ^ ((9 * (v15 ^ (v15 >> 10))) >> 6);
      v17 = ((v16 + ~(v16 << 11)) ^ ((v16 + ~(v16 << 11)) >> 16)) & (v2 - 1);
      *&v10[4 * v12] = *&v9[4 * v17];
      *&v9[4 * v17] = v12;
      *(v14 - 2) = *v13;
      *v14 = *(v13 + 8);
      v14 += 16;
      ++v12;
      v13 += 16;
    }

    while (v12 < *(a1 + 52));
  }

  if (*a1)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(a1 + 16) = v10;
  *(a1 + 24) = v9;
  *a1 = v9;
  *(a1 + 8) = &v9[v8];
  *(a1 + 32) = v7;
  *(a1 + 36) = v2;
  if (*(a1 + 44) == -1)
  {
    *(a1 + 44) = v6;
  }

  return result;
}

uint64_t physx::shdfnd::PoolBase<physx::Sq::IncrementalAABBTreeNodePair,physx::shdfnd::ReflectionAllocator<physx::Sq::IncrementalAABBTreeNodePair>>::~PoolBase(uint64_t a1)
{
  if (*(a1 + 548))
  {
    v12 = 0;
    v13 = 0;
    v2 = *(a1 + 560);
    if (v2)
    {
      do
      {
        v11 = v2;
        v3 = v13;
        if ((HIDWORD(v13) & 0x7FFFFFFFu) <= v13)
        {
          physx::shdfnd::Array<void *,physx::shdfnd::ReflectionAllocator<physx::Sq::IncrementalAABBTreeNodePair>>::growAndPushBack(&v12, &v11);
        }

        else
        {
          *(v12 + 8 * v13) = v2;
          LODWORD(v13) = v3 + 1;
        }

        v2 = **(a1 + 560);
        *(a1 + 560) = v2;
      }

      while (v2);
      v4 = v12;
      v5 = v13;
    }

    else
    {
      v5 = 0;
      v4 = 0;
    }

    physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::Sq::IncrementalAABBTreeNodePair>>(v4, v5);
    physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::Sq::IncrementalAABBTreeNodePair>>(*(a1 + 528), *(a1 + 536));
    if ((v13 & 0x8000000000000000) == 0 && (v13 & 0x7FFFFFFF00000000) != 0 && v12)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }
  }

  v6 = *(a1 + 528);
  v7 = *(a1 + 536);
  if (v7)
  {
    v8 = 8 * v7;
    do
    {
      if (*v6)
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
      }

      ++v6;
      v8 -= 8;
    }

    while (v8);
    v6 = *(a1 + 528);
  }

  v9 = *(a1 + 540);
  if ((v9 & 0x80000000) == 0 && (v9 & 0x7FFFFFFF) != 0)
  {
    if (v6 == (a1 + 8))
    {
      *(a1 + 520) = 0;
    }

    else if (v6)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v6);
    }
  }

  return a1;
}

void physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::Sq::IncrementalAABBTreeNodePair>>(uint64_t a1, int a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v38 = 0;
  v37 = v39;
  v34 = 0x2000000000;
  v35 = v39;
  v36 = 0;
  v2 = a2 - 1;
  if (a2 - 1 < 1)
  {
    return;
  }

  v4 = 0;
  v5 = a1 + 8;
  v6 = v39;
  memset(v39, 0, sizeof(v39));
  while (1)
  {
    while (1)
    {
      if (v2 <= v4)
      {
        goto LABEL_34;
      }

      if ((v2 - v4) <= 4)
      {
        break;
      }

      v7 = (v4 + v2 + ((v4 + v2) >> 31)) >> 1;
      v8 = *(a1 + 8 * ((v4 + v2) / 2));
      v9 = *(a1 + 8 * v4);
      if (v8 < v9)
      {
        *(a1 + 8 * v4) = v8;
        *(a1 + 8 * v7) = v9;
        v8 = v9;
        v9 = *(a1 + 8 * v4);
      }

      v10 = (a1 + 8 * v2);
      if (*v10 >= v9)
      {
        v9 = *v10;
      }

      else
      {
        *(a1 + 8 * v4) = *v10;
        *v10 = v9;
        v8 = *(a1 + 8 * v7);
      }

      if (v9 < v8)
      {
        *(a1 + 8 * v7) = v9;
        *v10 = v8;
        v8 = *(a1 + 8 * v7);
      }

      *(a1 + 8 * v7) = *(v10 - 1);
      *(v10 - 1) = v8;
      v11 = v2 - 1;
      v12 = v4;
      LODWORD(v13) = v2 - 1;
      while (1)
      {
        v14 = 0;
        v15 = v12;
        v16 = (a1 + 8 * v12);
        do
        {
          v18 = v16[1];
          ++v16;
          v17 = v18;
          ++v14;
        }

        while (v18 < v8);
        v13 = v13;
        do
        {
          v19 = a1 + 8 * v13--;
          v20 = *(v19 - 8);
        }

        while (v8 < v20);
        if (v15 + v14 >= v13)
        {
          break;
        }

        *v16 = v20;
        *(a1 + 8 * v13) = v17;
        v8 = *(a1 + 8 * v11);
        v12 = v14 + v15;
      }

      *v16 = v8;
      *(a1 + 8 * v11) = v17;
      v21 = v34;
      v22 = HIDWORD(v34) - 1;
      if (v15 - v4 + v14 >= v2 - v15 - v14)
      {
        if (v34 >= v22)
        {
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::Sq::IncrementalAABBTreeNodePair>>::grow(v33);
          v21 = v34;
          v6 = v35;
        }

        LODWORD(v34) = v21 + 1;
        *(v6 + v21) = v14 + v15 + 1;
        v24 = v34;
        LODWORD(v34) = v34 + 1;
        *(v6 + v24) = v2;
        v2 = v15 + v14 - 1;
      }

      else
      {
        if (v34 >= v22)
        {
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::Sq::IncrementalAABBTreeNodePair>>::grow(v33);
          v21 = v34;
          v6 = v35;
        }

        LODWORD(v34) = v21 + 1;
        *(v6 + v21) = v4;
        v23 = v34;
        LODWORD(v34) = v34 + 1;
        *(v6 + v23) = v15 - 1 + v14;
        v4 = v15 + v14 + 1;
      }
    }

    v25 = v4;
    v26 = v4 + 1;
    do
    {
      v27 = v25++;
      v28 = v26;
      v29 = v27;
      v30 = v27;
      do
      {
        if (*(v5 + 8 * v29) < *(a1 + 8 * v30))
        {
          v30 = v28;
        }

        ++v29;
        ++v28;
      }

      while (v29 < v2);
      if (v30 != v27)
      {
        v31 = *(a1 + 8 * v30);
        *(a1 + 8 * v30) = *(a1 + 8 * v27);
        *(a1 + 8 * v27) = v31;
      }

      ++v26;
    }

    while (v25 != v2);
LABEL_34:
    v32 = v34;
    if (!v34)
    {
      break;
    }

    LODWORD(v34) = v34 - 1;
    v2 = *(v6 + (v32 - 1));
    LODWORD(v34) = v32 - 2;
    v4 = *(v6 + (v32 - 2));
  }

  if (v36)
  {
    if (v6)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
      if (v38)
      {
        physx::shdfnd::TempAllocator::deallocate(&v37, v37);
      }
    }
  }
}