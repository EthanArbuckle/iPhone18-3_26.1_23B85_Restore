uint64_t physx::IG::HandleManager<unsigned int>::freeHandle(uint64_t result, int a2)
{
  v3 = a2;
  if (*(result + 16) == a2)
  {
    *(result + 16) = a2 - 1;
  }

  else
  {
    v2 = *(result + 8);
    if ((*(result + 12) & 0x7FFFFFFFu) <= v2)
    {
      return physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::growAndPushBack(result, &v3);
    }

    else
    {
      *(*result + 4 * v2) = a2;
      ++*(result + 8);
    }
  }

  return result;
}

uint64_t physx::IG::IslandSim::mergeIslandsInternal(uint64_t result, unsigned int *a2, unsigned int *a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7)
{
  v7 = *(result + 240);
  v8 = a6 >> 7;
  v9 = a7 >> 7;
  v10 = *a3 >> 7;
  if (v10 == 0x1FFFFFF)
  {
    v11 = *(result + 24);
  }

  else
  {
    v12 = *(result + 272);
    v11 = *(result + 24);
    v13 = *(v7 + 4 * v9) + *(v7 + 4 * v8) + 1;
    do
    {
      *(v7 + 4 * v10) += v13;
      *(v12 + 4 * v10) = a4;
      v10 = *(v11 + 32 * v10 + 8) >> 7;
    }

    while (v10 != 0x1FFFFFF);
  }

  v14 = 0;
  *(v7 + 4 * v9) = *(v7 + 4 * v8) + 1;
  v15 = *a3;
  *(v11 + ((a2[1] >> 2) & 0x3FFFFFE0) + 8) = v15;
  *(v11 + ((v15 >> 2) & 0x3FFFFFE0) + 12) = a2[1];
  a2[1] = a3[1];
  v16 = a2[3];
  a2[2] += a3[2];
  a2[3] = v16 + a3[3];
  v17 = *(result + 136);
  *(v17 + 4 * a4) += *(v17 + 4 * a5);
  v18 = a2 + 7;
  v19 = a3 + 5;
  v20 = a3 + 9;
  v21 = a2 + 9;
  v22 = a3 + 7;
  v23 = a2 + 5;
  v24 = 1;
  do
  {
    v25 = v24;
    v26 = v18[v14];
    if (v26 == -1)
    {
      v27 = &v23[v14];
    }

    else
    {
      v27 = (*(*(result + 56) + 8 * (v26 / *(result + 80))) + 16 * (v26 % *(result + 80)) + 8);
    }

    v28 = v19[v14];
    *v27 = v28;
    if (v28 != -1)
    {
      *(*(*(result + 56) + 8 * (v28 / *(result + 80))) + 16 * (v28 % *(result + 80)) + 12) = v18[v14];
      v18[v14] = v22[v14];
    }

    v24 = 0;
    v21[v14] += v20[v14];
    v19[v14] = -1;
    v22[v14] = -1;
    v20[v14] = 0;
    v14 = 1;
  }

  while ((v25 & 1) != 0);
  *a3 = xmmword_1E3113A60;
  *(v17 + 4 * a5) = 0;
  if (a3[4] != -1)
  {
    v29 = *(result + 120);
    v30 = *(result + 320);
    v31 = *(v30 + 4 * (*(result + 328) - 1));
    v32 = v29 + 44 * a5;
    v33 = *(v32 + 16);
    *(v29 + 44 * v31 + 16) = v33;
    *(v30 + 4 * v33) = v31;
    --*(result + 328);
    *(v32 + 16) = -1;
    *(*(result + 288) + 4 * (a5 >> 5)) &= ~(1 << a5);
  }

  return result;
}

void physx::IG::IslandSim::setKinematic(physx::IG::IslandSim *this, unsigned int a2)
{
  v65 = a2;
  v2 = *(this + 3);
  v3 = a2 >> 7;
  v4 = (v2 + 32 * v3);
  v5 = *(v4 + 4);
  if ((v5 & 4) != 0)
  {
    return;
  }

  v7 = *(this + 34);
  v8 = *(v7 + 4 * v3);
  v9 = *(this + 15);
  *(v7 + 4 * v3) = -1;
  v10 = v9 + 44 * v8;
  v11 = (v10 + 4);
  v13 = v4[2];
  v12 = v4[3];
  v14 = __CFADD__(v13, 128);
  v15 = v2 + ((v13 >> 2) & 0x3FFFFFE0) + 12;
  if (!v14)
  {
    v11 = v15;
  }

  *v11 = v12;
  if (v12 > 0xFFFFFF7F)
  {
    *v10 = v4[2];
  }

  else
  {
    *(v2 + ((v12 >> 2) & 0x3FFFFFE0) + 8) = v4[2];
  }

  v16 = *(v4 + 5);
  --*(v10 + 4 * v16 + 8);
  *(v4 + 1) = 0x7F0000007FLL;
  v62 = v8;
  if ((v5 & 2) != 0)
  {
    v23 = this + 16 * v16;
    v25 = *(v23 + 19);
    v24 = v23 + 152;
    v18 = v25;
    v26 = *(this + v16 + 84);
    v27 = *(this + 5);
    v21 = (v27 + 4 * v3);
    v28 = *v21;
    if (*v21 < v26)
    {
      v29 = *(v18 + 4 * (v26 - 1));
      v30 = (v29 >> 5) & 0x7FFFFFC;
      *v21 = *(v27 + v30);
      *(v27 + v30) = v28;
      *(v18 + 4 * v28) = v29;
      *(v18 + 4 * *v21) = a2;
      --*(this + v16 + 84);
      v28 = *v21;
    }

    v31 = *(v24 + 2);
    v17 = v24 + 8;
    v19 = *(v18 + 4 * (v31 - 1));
    *(v27 + ((v19 >> 5) & 0x7FFFFFC)) = v28;
    v22 = *v21;
    goto LABEL_13;
  }

  if ((v5 & 0x20) != 0)
  {
    v5 &= 0xD9u;
    v17 = (this + 440);
    v18 = *(this + 54);
    v19 = *(v18 + 4 * (*(this + 110) - 1));
    v20 = *(this + 5);
    v21 = (v20 + 4 * v3);
    v22 = *v21;
    *(v20 + ((v19 >> 5) & 0x7FFFFFC)) = *v21;
LABEL_13:
    *(v18 + 4 * v22) = v19;
    --*v17;
    *v21 = 0x1FFFFFF;
  }

  v32 = v5 & 0xF9 | 4;
  *(v4 + 4) = v32;
  if (v4[4])
  {
    v33 = *(this + 110);
    *(*(this + 5) + 4 * v3) = v33;
    if ((*(this + 111) & 0x7FFFFFFFu) <= v33)
    {
      physx::shdfnd::Array<physx::IG::NodeIndex,physx::shdfnd::ReflectionAllocator<physx::IG::NodeIndex>>::growAndPushBack(this + 432, &v65);
      v32 = *(v4 + 4);
    }

    else
    {
      *(*(this + 54) + 4 * v33) = a2;
      ++*(this + 110);
    }

    *(v4 + 4) = v32 | 0x20;
  }

  v34 = *(v10 + 12);
  v63 = *(v10 + 8);
  v35 = *v4;
  if (*v4 != -1)
  {
    while (1)
    {
      v36 = *(*(*(this + 11) + 8 * (v35 / *(this + 28))) + 8 * (v35 % *(this + 28)));
      v64 = v35 >> 1;
      v37 = *(this + 20);
      v38 = (v35 >> 1) / v37;
      v39 = *(this + 7);
      v40 = (*(v39 + 8 * v38) + 16 * (v64 - v38 * v37));
      v41 = v40[2];
      if (v41 == -1)
      {
        v42 = (v10 + 28 + 4 * *v40);
      }

      else
      {
        v42 = (*(v39 + 8 * (v41 / v37)) + 16 * (v41 % v37) + 12);
      }

      v43 = v40[3];
      *v42 = v43;
      v44 = v40[2];
      if (v43 == -1)
      {
        v45 = *v40;
        *(v10 + 20 + 4 * v45) = v44;
      }

      else
      {
        *(*(v39 + 8 * (v43 / *(this + 20))) + 16 * (v43 % *(this + 20)) + 8) = v44;
        v45 = *v40;
      }

      --*(v10 + 36 + 4 * v45);
      *(v40 + 1) = -1;
      physx::IG::IslandSim::removeConnectionInternal(this, v64);
      physx::IG::IslandSim::removeConnectionFromGraph(this, v64);
      v46 = *(v40 + 2);
      v47 = v46 & 0xFFFE;
      *(v40 + 2) = v46 & 0xFFFE;
      if ((v46 & 4) != 0)
      {
        physx::IG::IslandSim::removeEdgeFromActivatingList(this, v64);
        v47 = v40[1] & 0xFFFB;
        *(v40 + 2) = v47;
        --*(this + *v40 + 58);
      }

      if ((v47 & 2) != 0)
      {
        break;
      }

      if ((v47 & 8) == 0)
      {
        v48 = this + 16 * *v40 + 376;
        v49 = *(v48 + 2);
        if ((*(v48 + 3) & 0x7FFFFFFFu) <= v49)
        {
          physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::growAndPushBack(v48, &v64);
          v47 = *(v40 + 2);
        }

        else
        {
          *(*v48 + 4 * v49) = v64;
          ++*(v48 + 2);
        }

        v50 = v47 | 8;
        goto LABEL_35;
      }

LABEL_36:
      v35 = v36;
      if (v36 == -1)
      {
        goto LABEL_37;
      }
    }

    v50 = v47 | 0x20;
LABEL_35:
    *(v40 + 2) = v50;
    goto LABEL_36;
  }

LABEL_37:
  if (!(v63 + v34))
  {
    v51 = *(this + 17);
    *&v52 = -1;
    *(&v52 + 1) = -1;
    *(v10 + 20) = v52;
    *(v10 + 36) = 0;
    *(v10 + 40) = 0;
    *(v51 + 4 * v62) = 0;
    if (*(v10 + 16) == -1)
    {
      v59 = *(this + 36);
      v58 = ~(1 << v62);
      v60 = v62 >> 5;
      v61 = *(v59 + 4 * (v62 >> 5));
    }

    else
    {
      v53 = *(this + 40);
      v54 = *(v53 + 4 * (*(this + 82) - 1));
      v55 = *(this + 15);
      v56 = v55 + 44 * v62;
      v57 = *(v56 + 16);
      *(v55 + 44 * v54 + 16) = v57;
      *(v53 + 4 * v57) = v54;
      --*(this + 82);
      *(v56 + 16) = -1;
      v58 = ~(1 << v62);
      v59 = *(this + 36);
      v60 = v62 >> 5;
      v61 = *(v59 + 4 * v60) & v58;
      *(v59 + 4 * v60) = v61;
    }

    *(v59 + 4 * v60) = v61 & v58;
    physx::IG::HandleManager<unsigned int>::freeHandle(this, v62);
  }
}

uint64_t physx::IG::IslandSim::setDynamic(uint64_t this, unsigned int a2)
{
  v2 = a2 >> 7;
  v3 = *(this + 24) + 32 * v2;
  v4 = *(v3 + 4);
  if ((v4 & 4) != 0)
  {
    v6 = this;
    v7 = *v3;
    if (*v3 != -1)
    {
      v8 = this + 232;
      while (1)
      {
        v9 = *(*(*(v6 + 88) + 8 * (v7 / *(v6 + 112))) + 8 * (v7 % *(v6 + 112)));
        v10 = *(*(**(v6 + 608) + 8 * ((v7 ^ 1) / *(*(v6 + 608) + 24))) + 4 * ((v7 ^ 1) % *(*(v6 + 608) + 24)));
        v11 = v7 >> 1;
        LODWORD(v39) = v11;
        v12 = *(v6 + 80);
        v13 = *(v6 + 56);
        v14 = (*(v13 + 8 * (v11 / v12)) + 16 * (v11 % v12));
        if (v10 <= 0xFFFFFF7F)
        {
          v15 = *(*(v6 + 272) + ((v10 >> 5) & 0x7FFFFFC));
          if (v15 != -1)
          {
            v16 = *(v6 + 120) + 44 * v15;
            v17 = v14[2];
            if (v17 == -1)
            {
              v18 = (v16 + 4 * *v14 + 28);
            }

            else
            {
              v18 = (*(v13 + 8 * (v17 / v12)) + 16 * (v17 % v12) + 12);
            }

            v19 = v14[3];
            *v18 = v19;
            v20 = v14[2];
            if (v19 == -1)
            {
              v21 = *v14;
              *(v16 + 4 * v21 + 20) = v20;
            }

            else
            {
              *(*(v13 + 8 * (v19 / *(v6 + 80))) + 16 * (v19 % *(v6 + 80)) + 8) = v20;
              v21 = *v14;
            }

            --*(v16 + 4 * v21 + 36);
            *(v14 + 1) = -1;
            v11 = v39;
          }
        }

        physx::IG::IslandSim::removeConnectionInternal(v6, v11);
        physx::IG::IslandSim::removeConnectionFromGraph(v6, v39);
        v22 = *(v14 + 2);
        v23 = v22 & 0xFFFE;
        *(v14 + 2) = v22 & 0xFFFE;
        if ((v22 & 4) != 0)
        {
          *(v14 + 2) = v22 & 0xFFFA;
          physx::IG::IslandSim::removeEdgeFromActivatingList(v6, v39);
          --*(v8 + 4 * *v14);
          v23 = *(v14 + 2);
        }

        if ((v23 & 2) != 0)
        {
          break;
        }

        if ((v23 & 8) == 0)
        {
          v24 = v6 + 376 + 16 * *v14;
          v25 = *(v24 + 8);
          if ((*(v24 + 12) & 0x7FFFFFFFu) <= v25)
          {
            physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::growAndPushBack(v24, &v39);
            v23 = *(v14 + 2);
          }

          else
          {
            *(*v24 + 4 * v25) = v39;
            ++*(v24 + 8);
          }

          v26 = v23 | 8;
          goto LABEL_22;
        }

LABEL_23:
        v7 = v9;
        if (v9 == -1)
        {
          v4 = *(v3 + 4);
          goto LABEL_25;
        }
      }

      v26 = v23 | 0x20;
LABEL_22:
      *(v14 + 2) = v26;
      goto LABEL_23;
    }

LABEL_25:
    if ((v4 & 0x20) == 0)
    {
      v27 = *(v6 + 40);
      if (*(v27 + 4 * v2) != 0x1FFFFFF)
      {
        v28 = *(v3 + 16);
        *(v3 + 16) = 0;
        if (!*(*(v6 + 24) + 32 * v2 + 16))
        {
          v29 = *(v27 + 4 * v2);
          if (v29 != 0x1FFFFFF)
          {
            v30 = *(v6 + 184);
            v31 = *(v30 + 4 * (*(v6 + 192) - 1));
            *(v27 + ((v31 >> 5) & 0x7FFFFFC)) = v29;
            *(v30 + 4 * *(v27 + 4 * v2)) = v31;
            --*(v6 + 192);
            *(v27 + 4 * v2) = 0x1FFFFFF;
          }
        }

        *(v3 + 16) = v28;
      }
    }

    *(v3 + 4) = v4 & 0xFB;
    v32 = *(v6 + 8);
    if (v32)
    {
      v33 = v32 - 1;
      v34 = *(*v6 + 4 * v33);
      *(v6 + 8) = v33;
    }

    else
    {
      v34 = *(v6 + 16);
      *(v6 + 16) = v34 + 1;
    }

    if (v34 == (*(v6 + 132) & 0x7FFFFFFF))
    {
      physx::shdfnd::Array<physx::IG::Island,physx::shdfnd::ReflectionAllocator<physx::IG::Island>>::recreate(v6 + 120, (2 * v34) | 1);
      physx::Cm::BitMapBase<physx::shdfnd::NonTrackingAllocator>::extend(v6 + 288, (2 * v34) | 1);
      LODWORD(v39) = 0;
      physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::resize(v6 + 136, (2 * v34) | 1, &v39);
    }

    *(*(v6 + 288) + 4 * (v34 >> 5)) &= ~(1 << v34);
    v35 = *(v6 + 128);
    *&v39 = 0x7F0000007FLL;
    if (v34 + 1 > v35)
    {
      v36 = v34 + 1;
    }

    else
    {
      v36 = v35;
    }

    v40 = -1;
    v41 = -1;
    v42 = -1;
    v43 = 0;
    *(&v39 + 1) = 0;
    physx::shdfnd::Array<physx::IG::Island,physx::shdfnd::ReflectionAllocator<physx::IG::Island>>::resize(v6 + 120, v36, &v39);
    if (v34 + 1 > *(v6 + 128))
    {
      v37 = v34 + 1;
    }

    else
    {
      v37 = *(v6 + 128);
    }

    LODWORD(v39) = 0;
    this = physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::resize(v6 + 136, v37, &v39);
    v38 = (*(v6 + 120) + 44 * v34);
    *v38 = a2;
    v38[1] = a2;
    v38[*(v3 + 5) + 2] = 1;
    *(*(v6 + 272) + 4 * v2) = v34;
    *(*(v6 + 136) + 4 * v34) = 0;
    if ((*(v3 + 4) & 2) != 0)
    {
      *(v3 + 4) &= ~2u;
      return physx::IG::IslandSim::activateNode(v6, a2);
    }
  }

  return this;
}

float physx::PxsMaterialCombiner::combineRestitution(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = *(a1 + 14) & 0xF;
  if (v4 <= (*(a2 + 14) & 0xFu))
  {
    v4 = *(a2 + 14) & 0xF;
  }

  result = 0.0;
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      return v2 * v3;
    }

    else if (v4 == 3)
    {
      if (v2 <= v3)
      {
        return *(a2 + 8);
      }

      else
      {
        return *(a1 + 8);
      }
    }
  }

  else if (v4)
  {
    if (v2 >= v3)
    {
      return *(a2 + 8);
    }

    else
    {
      return *(a1 + 8);
    }
  }

  else
  {
    return (v2 + v3) * 0.5;
  }

  return result;
}

unint64_t physx::PxsMaterialCombiner::combineIsotropicFriction(float *a1, float32x2_t *a2, float32x2_t *a3)
{
  if ((a3[1].i16[2] | a2[1].i16[2]))
  {
    return 0;
  }

  v3 = a2[1].u8[6] >> 4;
  if (v3 <= (a3[1].u8[6] >> 4))
  {
    v3 = a3[1].u8[6] >> 4;
  }

  v4 = 0;
  if (v3 <= 1)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        v5 = *a2;
        v6 = *a3;
        v7 = vcgt_f32(*a3, *a2);
LABEL_12:
        v4 = vbsl_s8(v7, v5, v6);
        goto LABEL_16;
      }

      goto LABEL_16;
    }

    v9 = vadd_f32(*a2, *a3);
    v10 = 0x3F0000003F000000;
LABEL_15:
    v4 = vmul_f32(v9, v10);
    goto LABEL_16;
  }

  if (v3 == 2)
  {
    v9 = *a2;
    v10 = *a3;
    goto LABEL_15;
  }

  if (v3 == 3)
  {
    v5 = *a2;
    v6 = *a3;
    v7 = vcgt_f32(*a2, *a3);
    goto LABEL_12;
  }

LABEL_16:
  v11 = a1[1] * v4.f32[0];
  v12 = vmuls_lane_f32(*a1, v4, 1);
  v13 = fmaxf(v11, 0.0);
  if ((v12 - v13) < 0.0)
  {
    v12 = v13;
  }

  return LODWORD(v12) | (LODWORD(v13) << 32);
}

uint64_t PxsCMUpdateTask::release(PxsCMUpdateTask *this)
{
  v1 = *(this + 3);
  result = (**this)(this);
  if (v1)
  {
    v3 = *(*v1 + 40);

    return v3(v1);
  }

  return result;
}

uint64_t physx::PxsNphaseImplementationContext::processContactManager(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  v7 = result;
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    result = pthread_mutex_lock(**(*(result + 8) + 1920));
  }

  v8 = *(v7 + 72);
  if (v8)
  {
    v9 = 0;
    do
    {
      NotThreadSafe = physx::Cm::FlushPool::allocateNotThreadSafe(*(*(v7 + 8) + 1920), 88, 0x10u);
      v11 = NotThreadSafe;
      if (v8 - v9 >= 0x80)
      {
        v12 = 128;
      }

      else
      {
        v12 = v8 - v9;
      }

      v13 = *(v7 + 8);
      v14 = *(v7 + 80);
      v15 = *(v7 + 152);
      v16 = *(v7 + 64) + 8 * v9;
      *(NotThreadSafe + 8) = *(v13 + 2616);
      *(NotThreadSafe + 16) = 0;
      *(NotThreadSafe + 32) = 0;
      *(NotThreadSafe + 40) = v16;
      *(NotThreadSafe + 48) = a2 + 32 * v9;
      *(NotThreadSafe + 56) = v14 + 16 * v9;
      *(NotThreadSafe + 64) = v12;
      *(NotThreadSafe + 68) = a4;
      *(NotThreadSafe + 72) = v13;
      *(NotThreadSafe + 80) = v15;
      v17 = &unk_1F5D1C518;
      *NotThreadSafe = &unk_1F5D1C518;
      *(NotThreadSafe + 32) = 1;
      *(NotThreadSafe + 24) = a3;
      if (a3)
      {
        (*(*a3 + 32))(a3);
        v11[2] = *(v11[3] + 16);
        v17 = *v11;
      }

      v9 += v12;
      result = v17[5](v11);
    }

    while (v9 < v8);
  }

  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    v18 = **(*(v7 + 8) + 1920);

    return pthread_mutex_unlock(v18);
  }

  return result;
}

uint64_t physx::PxsNphaseImplementationContext::processContactManagerSecondPass(uint64_t this, float a2, physx::PxBaseTask *a3)
{
  v5 = this;
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    this = pthread_mutex_lock(**(*(this + 8) + 1920));
  }

  v6 = *(v5 + 128);
  if (v6)
  {
    v7 = 0;
    do
    {
      NotThreadSafe = physx::Cm::FlushPool::allocateNotThreadSafe(*(*(v5 + 8) + 1920), 88, 0x10u);
      v9 = NotThreadSafe;
      v10 = *(v5 + 8);
      if (v6 - v7 >= 0x80)
      {
        v11 = 128;
      }

      else
      {
        v11 = v6 - v7;
      }

      v12 = *(v5 + 136);
      v13 = *(v5 + 104) + 32 * v7;
      v14 = *(v5 + 152);
      v15 = *(v5 + 120) + 8 * v7;
      *(NotThreadSafe + 8) = *(v10 + 2616);
      *(NotThreadSafe + 16) = 0;
      *(NotThreadSafe + 32) = 0;
      *(NotThreadSafe + 40) = v15;
      *(NotThreadSafe + 48) = v13;
      *(NotThreadSafe + 56) = v12 + 16 * v7;
      *(NotThreadSafe + 64) = v11;
      *(NotThreadSafe + 68) = a2;
      *(NotThreadSafe + 72) = v10;
      *(NotThreadSafe + 80) = v14;
      v16 = &unk_1F5D1C518;
      *NotThreadSafe = &unk_1F5D1C518;
      *(NotThreadSafe + 32) = 1;
      *(NotThreadSafe + 24) = a3;
      if (a3)
      {
        (*(*a3 + 32))(a3);
        v9[2] = *(v9[3] + 16);
        v16 = *v9;
      }

      v7 += v11;
      this = v16[5](v9);
    }

    while (v7 < v6);
  }

  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    v17 = **(*(v5 + 8) + 1920);

    return pthread_mutex_unlock(v17);
  }

  return this;
}

uint64_t physx::PxsNphaseImplementationContext::updateContactManager(uint64_t *a1, float a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  (*(*a6 + 40))(a6);
  v9 = a1[1];
  bzero(*(v9 + 1704), (4 * *(v9 + 1712)));
  bzero(*(v9 + 1720), (4 * *(v9 + 1728)));
  *(v9 + 1752) = 0;
  *(v9 + 1736) = 0u;
  v11 = *a1;
  v10 = a1[1];
  *(v10 + 2524) = 0;
  *(v10 + 2528) = 0;
  *(v10 + 2608) = 0;
  v12 = a1[6];
  v13 = *(v11 + 264);

  return v13(a1, v12, a5, LODWORD(a2));
}

uint64_t physx::PxsNphaseImplementationContext::create(physx::PxsNphaseImplementationContext *this, physx::PxsContext *a2, physx::IG::IslandSim *a3)
{
  v5 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 176, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevel/software/src/PxsNphaseImplementationContext.cpp", 604);
  v6 = v5;
  if (v5)
  {
    *v5 = &unk_1F5D1C2C0;
    *(v5 + 8) = this;
    *(v5 + 104) = 0u;
    *(v5 + 120) = 0u;
    *(v5 + 136) = 0u;
    *(v5 + 24) = 0;
    *(v5 + 32) = 0;
    *(v5 + 16) = &unk_1F5D1C3E8;
    *(v5 + 40) = 0;
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
    *(v5 + 80) = 0u;
    *(v5 + 96) = 0;
    *(v5 + 152) = 0;
    *(v5 + 160) = a2;
    v7 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v8 = "static const char *physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>::getName() [T = physx::shdfnd::MutexImpl]";
    }

    else
    {
      v8 = "<allocation names disabled>";
    }

    v9 = (*(*(v7 + 24) + 16))(v7 + 24, 72, v8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsMutex.h", 138);
    *(v6 + 168) = v9;
    physx::shdfnd::MutexImpl::MutexImpl(v9);
  }

  return v6;
}

uint64_t physx::PxsNphaseImplementationContext::destroy(physx::PxsNphaseImplementationContext *this)
{
  (**this)(this);
  v1 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

  return v1();
}

uint64_t physx::PxsNphaseImplementationContext::registerContactManagers(uint64_t result, uint64_t *a2, unsigned int a3)
{
  if (a3)
  {
    v4 = result;
    v5 = a3;
    do
    {
      v6 = *a2++;
      result = (*(*v4 + 56))(v4, v6, 0, 0);
      --v5;
    }

    while (v5);
  }

  return result;
}

void physx::PxsNphaseImplementationContext::registerContactManager(uint64_t a1, uint64_t a2, int a3, char a4)
{
  v19 = a2;
  v8 = *(a2 + 86);
  v9 = *(a2 + 87);
  DWORD2(v16) = 0;
  *&v16 = 0;
  physx::PxsContext::createCache(*(a1 + 8), &v16, a2, v8, v9);
  v17 = 0u;
  v18 = 0u;
  BYTE9(v18) = a4;
  v10 = (a3 >> 31) | 0x20;
  if (a3 > 0)
  {
    LOBYTE(v10) = 34;
  }

  BYTE10(v18) = v10 & 0xF7 | (8 * ((*(a2 + 80) & 2) != 0));
  if ((*(a2 + 83) & 2) != 0)
  {
    *(a2 + 83) |= 0x40u;
  }

  v11 = *(a1 + 112);
  if ((*(a1 + 116) & 0x7FFFFFFFu) <= v11)
  {
    physx::shdfnd::Array<physx::PxsContactManagerOutput,physx::shdfnd::ReflectionAllocator<physx::PxsContactManagerOutput>>::growAndPushBack(a1 + 104, &v17);
  }

  else
  {
    v12 = (*(a1 + 104) + 32 * v11);
    v13 = v18;
    *v12 = v17;
    v12[1] = v13;
    ++*(a1 + 112);
  }

  v14 = *(a1 + 144);
  if ((*(a1 + 148) & 0x7FFFFFFFu) <= v14)
  {
    physx::shdfnd::Array<physx::Gu::Cache,physx::shdfnd::ReflectionAllocator<physx::Gu::Cache>>::growAndPushBack(a1 + 136, &v16);
  }

  else
  {
    *(*(a1 + 136) + 16 * v14) = v16;
    ++*(a1 + 144);
  }

  v15 = *(a1 + 128);
  if ((*(a1 + 132) & 0x7FFFFFFFu) <= v15)
  {
    physx::shdfnd::Array<physx::PxsContactManager *,physx::shdfnd::ReflectionAllocator<physx::PxsContactManager *>>::growAndPushBack(a1 + 120, &v19);
  }

  else
  {
    *(*(a1 + 120) + 8 * v15) = a2;
    *(a1 + 128) = v15 + 1;
  }

  *(a2 + 108) = *(a1 + 96) | (8 * *(a1 + 112) + 2147483640) | 0x80000000;
}

_DWORD *physx::PxsNphaseImplementationContext::removeContactManagersFallback(_DWORD *result, uint64_t a2)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!result[8])
  {
    return result;
  }

  v3 = result;
  (*(*result + 208))(result);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v41 = 0;
  v40 = v42;
  v37 = 0x2000000000;
  v38 = v42;
  v39 = 0;
  v7 = v6 - 1;
  if (v6 - 1 < 1)
  {
    goto LABEL_41;
  }

  v8 = 0;
  v4 = v42;
  memset(v42, 0, sizeof(v42));
  while (1)
  {
    while (1)
    {
      if (v7 <= v8)
      {
        goto LABEL_35;
      }

      if ((v7 - v8) <= 4)
      {
        break;
      }

      v9 = (v8 + v7 + ((v8 + v7) >> 31)) >> 1;
      v10 = *(v5 + 4 * ((v8 + v7) / 2));
      v11 = *(v5 + 4 * v8);
      if (v10 > v11)
      {
        *(v5 + 4 * v8) = v10;
        *(v5 + 4 * v9) = v11;
        v10 = v11;
        v11 = *(v5 + 4 * v8);
      }

      v12 = (v5 + 4 * v7);
      if (*v12 <= v11)
      {
        v11 = *v12;
      }

      else
      {
        *(v5 + 4 * v8) = *v12;
        *v12 = v11;
        v10 = *(v5 + 4 * v9);
      }

      if (v11 > v10)
      {
        *(v5 + 4 * v9) = v11;
        *v12 = v10;
        v10 = *(v5 + 4 * v9);
      }

      *(v5 + 4 * v9) = *(v12 - 1);
      *(v12 - 1) = v10;
      v13 = v7 - 1;
      v14 = v8;
      LODWORD(v15) = v7 - 1;
      while (1)
      {
        v16 = 0;
        v17 = v14;
        v18 = (v5 + 4 * v14);
        do
        {
          v20 = v18[1];
          ++v18;
          v19 = v20;
          ++v16;
        }

        while (v20 > v10);
        v15 = v15;
        do
        {
          v21 = v5 + 4 * v15--;
          v22 = *(v21 - 4);
        }

        while (v10 > v22);
        if (v17 + v16 >= v15)
        {
          break;
        }

        *v18 = v22;
        *(v5 + 4 * v15) = v19;
        v10 = *(v5 + 4 * v13);
        v14 = v16 + v17;
      }

      *v18 = v10;
      *(v5 + 4 * v13) = v19;
      v23 = v37;
      v24 = HIDWORD(v37) - 1;
      if (v17 - v8 + v16 >= v7 - v17 - v16)
      {
        if (v37 >= v24)
        {
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<unsigned int>>::grow(v36);
          v23 = v37;
          v4 = v38;
        }

        LODWORD(v37) = v23 + 1;
        *(v4 + v23) = v16 + v17 + 1;
        v26 = v37;
        LODWORD(v37) = v37 + 1;
        *(v4 + v26) = v7;
        v7 = v17 + v16 - 1;
      }

      else
      {
        if (v37 >= v24)
        {
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<unsigned int>>::grow(v36);
          v23 = v37;
          v4 = v38;
        }

        LODWORD(v37) = v23 + 1;
        *(v4 + v23) = v8;
        v25 = v37;
        LODWORD(v37) = v37 + 1;
        *(v4 + v25) = v17 - 1 + v16;
        v8 = v17 + v16 + 1;
      }
    }

    v27 = v8;
    v28 = v8 + 1;
    do
    {
      v29 = v27++;
      v30 = v28;
      v31 = v29;
      v32 = v29;
      do
      {
        if (*(v5 + 4 + 4 * v31) > *(v5 + 4 * v32))
        {
          v32 = v30;
        }

        ++v31;
        ++v30;
      }

      while (v31 < v7);
      if (v32 != v29)
      {
        v33 = *(v5 + 4 * v32);
        *(v5 + 4 * v32) = *(v5 + 4 * v29);
        *(v5 + 4 * v29) = v33;
      }

      ++v28;
    }

    while (v27 != v7);
LABEL_35:
    v34 = v37;
    if (!v37)
    {
      break;
    }

    LODWORD(v37) = v37 - 1;
    v7 = *(v4 + (v34 - 1));
    LODWORD(v37) = v34 - 2;
    v8 = *(v4 + (v34 - 2));
  }

  if (v39)
  {
    if (v4)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
      if (v41)
      {
        physx::shdfnd::TempAllocator::deallocate(&v40, v40);
      }
    }
  }

LABEL_41:
  if (*(v3 + 32))
  {
    v35 = 0;
    do
    {
      physx::PxsNphaseImplementationContext::unregisterContactManagerInternal(v3, *(*(v3 + 24) + 4 * v35++), v3 + 40, a2);
    }

    while (v35 < *(v3 + 32));
  }

  *(v3 + 32) = 0;
  return (*(*v3 + 216))(v3, v4);
}

uint64_t physx::PxsNphaseImplementationContext::unregisterContactManagerInternal(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v8 = (a2 >> 3) & 0xFFFFFFF;
  v9 = (*(a3 + 32) - 1);
  v10 = *(*(a3 + 24) + 8 * v9);
  result = physx::PxsContext::destroyCache(*(a1 + 8), (*(a3 + 40) + 16 * v8));
  *(*(a3 + 24) + 8 * v8) = v10;
  v12 = *(a3 + 40);
  v13 = v12 + 16 * v9;
  v14 = v12 + 16 * v8;
  v15 = *(v13 + 8);
  *v14 = *v13;
  *(v14 + 8) = v15;
  v16 = (a4 + 32 * v9);
  v17 = (a4 + 32 * v8);
  v18 = v16[1];
  *v17 = *v16;
  v17[1] = v18;
  v19 = *(a3 + 40) + 16 * v9;
  *(v19 + 8) = 0;
  *v19 = 0;
  v20 = *(a1 + 160);
  v21 = *(v20 + 624);
  *(v10 + 108) = a2;
  if ((*(v10 + 83) & 2) != 0 && (*(v10 + 80) & 0x800) == 0)
  {
    for (i = *(**(v20 + 600) + 8 * *(v10 + 104)); i; i = *(i + 16))
    {
      *(v21 + 4 * *(i + 24)) = a2;
    }
  }

  *(a3 + 32) = v9;
  *(a3 + 48) = v9;
  return result;
}

uint64_t physx::PxsNphaseImplementationContext::unregisterContactManager(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 108);
  v4 = 96;
  if (v3 >= 0)
  {
    v4 = 40;
  }

  v5 = 104;
  if (v3 < 0)
  {
    v6 = 112;
  }

  else
  {
    v5 = 48;
    v6 = 56;
  }

  result = physx::PxsNphaseImplementationContext::unregisterContactManagerInternal(a1, v3, a1 + v4, *(a1 + v5));
  --*(a1 + v6);
  return result;
}

uint64_t physx::PxsNphaseImplementationContext::refreshContactManager(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 108);
  LODWORD(v5) = v4 >> 3;
  v6 = (a1 + 104);
  if (v4 < 0)
  {
    v5 = (v4 >> 3) & 0xFFFFFFF;
  }

  else
  {
    v6 = (a1 + 48);
    v5 = v5;
  }

  if (v4 >= 0)
  {
    v7 = a1 + 40;
  }

  else
  {
    v7 = a1 + 96;
  }

  if (v4 >= 0)
  {
    v8 = 56;
  }

  else
  {
    v8 = 112;
  }

  v9 = *v6 + 32 * v5;
  v10 = *(v9 + 25);
  v11 = *(v9 + 26);
  physx::PxsNphaseImplementationContext::unregisterContactManagerInternal(a1, v4, v7, *v6);
  --*(a1 + v8);
  if ((v11 & 2) != 0)
  {
    v12 = 1;
  }

  else
  {
    v12 = -(v11 & 1);
  }

  v13 = *(*a1 + 56);

  return v13(a1, a2, v12, v10);
}

uint64_t physx::PxsNphaseImplementationContext::unregisterContactManagerFallback(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 108);
  v5 = v3;
  if ((v3 & 0x80000000) != 0)
  {
    result = physx::PxsNphaseImplementationContext::unregisterContactManagerInternal(result, v3, result + 96, *(result + 104));
    --*(v2 + 112);
  }

  else
  {
    v4 = *(result + 32);
    if ((*(result + 36) & 0x7FFFFFFFu) <= v4)
    {
      return physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::growAndPushBack(result + 24, &v5);
    }

    else
    {
      *(*(result + 24) + 4 * v4) = v3;
      ++*(result + 32);
    }
  }

  return result;
}

uint64_t physx::PxsNphaseImplementationContext::refreshContactManagerFallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 108);
  if ((v5 & 0x80000000) != 0)
  {
    v10 = *(a1 + 104);
    v11 = v10 + 32 * ((v5 >> 3) & 0xFFFFFFF);
    v7 = *(v11 + 25);
    v8 = *(v11 + 26);
    physx::PxsNphaseImplementationContext::unregisterContactManagerInternal(a1, v5, a1 + 96, v10);
    --*(a1 + 112);
    if ((v8 & 2) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = a3 + ((4 * v5) & 0x3FFFFFFE0);
    v7 = *(v6 + 25);
    v8 = *(v6 + 26);
    (*(*a1 + 224))(a1, a2);
    if ((v8 & 2) == 0)
    {
LABEL_3:
      v9 = -(v8 & 1);
      goto LABEL_6;
    }
  }

  *(a2 + 83) |= 0x40u;
  v9 = 1;
LABEL_6:
  v12 = *(*a1 + 56);

  return v12(a1, a2, v9, v7);
}

void *physx::PxsNphaseImplementationContext::appendContactManagers(physx::PxsNphaseImplementationContext *this)
{
  v2 = *(this + 32);
  v3 = *(this + 18);
  v4 = v2 + v3;
  if (v2 + v3 > (*(this + 19) & 0x7FFFFFFFu))
  {
    v5 = 2 * *(this + 19);
    if (v5 <= v4)
    {
      v5 = v2 + v3;
    }

    if (v5 <= 0x100)
    {
      v6 = 256;
    }

    else
    {
      v6 = v5;
    }

    physx::shdfnd::Array<physx::PxsContactManager *,physx::shdfnd::ReflectionAllocator<physx::PxsContactManager *>>::recreate(this + 64, v6);
    if ((*(this + 15) & 0x7FFFFFFFu) < v6)
    {
      physx::shdfnd::Array<physx::PxsContactManagerOutput,physx::shdfnd::ReflectionAllocator<physx::PxsContactManagerOutput>>::recreate(this + 48, v6);
    }

    if ((*(this + 23) & 0x7FFFFFFFu) < v6)
    {
      physx::shdfnd::Array<physx::Gu::Cache,physx::shdfnd::ReflectionAllocator<physx::Gu::Cache>>::recreate(this + 80, v6);
    }
  }

  *(this + 18) = v4;
  *(this + 14) = v4;
  *(this + 22) = v4;
  memcpy((*(this + 8) + 8 * v3), *(this + 15), (8 * v2));
  memcpy((*(this + 6) + 32 * v3), *(this + 13), (32 * v2));
  result = memcpy((*(this + 10) + 16 * v3), *(this + 17), (16 * v2));
  v8 = *(this + 32);
  if (v8)
  {
    v9 = 0;
    v10 = *(this + 20);
    v11 = *(v10 + 624);
    v12 = *(this + 15);
    do
    {
      v13 = *(v12 + 8 * v9);
      v14 = *(this + 10) | (8 * (v3 + v9));
      *(v13 + 108) = v14;
      if ((*(v13 + 83) & 0x40) != 0)
      {
        *(v13 + 83) &= ~0x40u;
        if ((*(v13 + 81) & 8) == 0)
        {
          v15 = *(**(v10 + 600) + 8 * *(v13 + 104));
          if (v15)
          {
            do
            {
              *(v11 + 4 * *(v15 + 24)) = v14;
              v15 = *(v15 + 16);
            }

            while (v15);
            v8 = *(this + 32);
          }
        }
      }

      ++v9;
    }

    while (v9 < v8);
  }

  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 36) = 0;
  return result;
}

void *physx::PxsNphaseImplementationContext::appendContactManagersFallback(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 128);
  v5 = *(a1 + 72);
  v6 = v4 + v5;
  if (v4 + v5 > (*(a1 + 76) & 0x7FFFFFFFu))
  {
    v7 = 2 * *(a1 + 76) <= v6 ? v4 + v5 : 2 * *(a1 + 76);
    physx::shdfnd::Array<physx::PxsContactManager *,physx::shdfnd::ReflectionAllocator<physx::PxsContactManager *>>::recreate(a1 + 64, v7);
    if ((*(a1 + 92) & 0x7FFFFFFFu) < v7)
    {
      physx::shdfnd::Array<physx::Gu::Cache,physx::shdfnd::ReflectionAllocator<physx::Gu::Cache>>::recreate(a1 + 80, v7);
    }
  }

  *(a1 + 72) = v6;
  *(a1 + 88) = v6;
  memcpy((*(a1 + 64) + 8 * v5), *(a1 + 120), (8 * v4));
  memcpy((a2 + 32 * v5), *(a1 + 104), (32 * v4));
  result = memcpy((*(a1 + 80) + 16 * v5), *(a1 + 136), (16 * v4));
  v9 = *(a1 + 128);
  if (v9)
  {
    v10 = 0;
    v11 = *(a1 + 160);
    v12 = *(v11 + 624);
    v13 = *(a1 + 120);
    do
    {
      v14 = *(v13 + 8 * v10);
      v15 = *(a1 + 40) | (8 * (v5 + v10));
      *(v14 + 108) = v15;
      if ((*(v14 + 83) & 0x40) != 0)
      {
        *(v14 + 83) &= ~0x40u;
        if ((*(v14 + 81) & 8) == 0)
        {
          v16 = *(**(v11 + 600) + 8 * *(v14 + 104));
          if (v16)
          {
            do
            {
              *(v12 + 4 * *(v16 + 24)) = v15;
              v16 = *(v16 + 16);
            }

            while (v16);
            v9 = *(a1 + 128);
          }
        }
      }

      ++v10;
    }

    while (v10 < v9);
  }

  *(a1 + 112) = 0;
  *(a1 + 128) = 0;
  *(a1 + 144) = 0;
  return result;
}

uint64_t physx::PxsNphaseImplementationContext::getContactManagerOutputs@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = *(this + 48);
  *a2 = 0;
  return this;
}

physx::IG::SimpleIslandManager *physx::IG::SimpleIslandManager::SimpleIslandManager(physx::IG::SimpleIslandManager *this, int a2, uint64_t a3)
{
  *(this + 4) = 0;
  *this = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 10) = 0;
  *(this + 22) = 2048;
  *(this + 6) = 0u;
  *(this + 20) = 0;
  *(this + 7) = 0u;
  v6 = this + 112;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  v7 = this + 144;
  *(this + 42) = 2048;
  *(this + 24) = 0;
  *(this + 11) = 0u;
  *(this + 50) = 2048;
  *(this + 26) = 0;
  v8 = this + 224;
  *(this + 54) = 0;
  physx::IG::IslandSim::IslandSim(this + 224, this + 112, this + 144, this + 128, a3);
  physx::IG::IslandSim::IslandSim(this + 864, 0, v7, 0, a3);
  *(this + 95) = 0u;
  *(this + 384) = 0;
  *(this + 189) = a3;
  *(this + 188) = &unk_1F5D1C210;
  *(this + 193) = this;
  *(this + 194) = v9;
  *(this + 1576) = 0u;
  *(this + 398) = 0;
  *(this + 196) = a3;
  *(this + 195) = &unk_1F5D1C210;
  *(this + 200) = this;
  *(this + 201) = v8;
  *(this + 102) = 0u;
  *(this + 412) = 0;
  *(this + 203) = a3;
  *(this + 202) = &unk_1F5D1C268;
  *(this + 207) = this;
  *(this + 209) = a3;
  v12 = 0;
  physx::shdfnd::Array<physx::PartitionEdge *,physx::shdfnd::ReflectionAllocator<physx::PartitionEdge *>>::resize(v6, 0x400u, &v12);
  if (a2)
  {
    v10 = -1;
  }

  else
  {
    v10 = 1000;
  }

  *(this + 416) = v10;
  return this;
}

uint64_t physx::shdfnd::Array<physx::PartitionEdge *,physx::shdfnd::ReflectionAllocator<physx::PartitionEdge *>>::resize(uint64_t result, unsigned int a2, uint64_t *a3)
{
  v5 = result;
  if ((*(result + 12) & 0x7FFFFFFFu) < a2)
  {
    result = physx::shdfnd::Array<physx::PartitionEdge *,physx::shdfnd::ReflectionAllocator<physx::PartitionEdge *>>::recreate(result, a2);
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

void physx::IG::SimpleIslandManager::~SimpleIslandManager(physx::IG::SimpleIslandManager *this)
{
  *(this + 202) = &unk_1F5D1C1B0;
  *(this + 204) = 0;
  *(this + 195) = &unk_1F5D1C1B0;
  *(this + 197) = 0;
  *(this + 188) = &unk_1F5D1C1B0;
  *(this + 190) = 0;
  physx::IG::IslandSim::~IslandSim((this + 864));
  physx::IG::IslandSim::~IslandSim((this + 224));
  if (*(this + 26) && (*(this + 54) & 0x80000000) == 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(this + 26) = 0;
  v2 = *(this + 46);
  if (v2)
  {
    for (i = 0; i < v2; ++i)
    {
      if (*(*(this + 22) + 8 * i))
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
        v2 = *(this + 46);
      }
    }
  }

  physx::shdfnd::Array<physx::IG::EdgeInstance *,physx::shdfnd::ReflectionAllocator<physx::IG::EdgeInstance *>>::resize(this + 176);
  v4 = *(this + 47);
  if ((v4 & 0x80000000) == 0 && (v4 & 0x7FFFFFFF) != 0 && *(this + 22))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v5 = *(this + 38);
  if (v5)
  {
    for (j = 0; j < v5; ++j)
    {
      if (*(*(this + 18) + 8 * j))
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
        v5 = *(this + 38);
      }
    }
  }

  physx::shdfnd::Array<physx::IG::EdgeInstance *,physx::shdfnd::ReflectionAllocator<physx::IG::EdgeInstance *>>::resize(this + 144);
  v7 = *(this + 39);
  if ((v7 & 0x80000000) == 0 && (v7 & 0x7FFFFFFF) != 0 && *(this + 18))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v8 = *(this + 35);
  if ((v8 & 0x80000000) == 0 && (v8 & 0x7FFFFFFF) != 0 && *(this + 16))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v9 = *(this + 31);
  if ((v9 & 0x80000000) == 0 && (v9 & 0x7FFFFFFF) != 0 && *(this + 14))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v10 = *(this + 27);
  if ((v10 & 0x80000000) == 0 && (v10 & 0x7FFFFFFF) != 0 && *(this + 12))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v11 = *(this + 18);
  if (v11)
  {
    for (k = 0; k < v11; ++k)
    {
      if (*(*(this + 8) + 8 * k))
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
        v11 = *(this + 18);
      }
    }
  }

  physx::shdfnd::Array<physx::IG::EdgeInstance *,physx::shdfnd::ReflectionAllocator<physx::IG::EdgeInstance *>>::resize(this + 64);
  v13 = *(this + 19);
  if ((v13 & 0x80000000) == 0 && (v13 & 0x7FFFFFFF) != 0 && *(this + 8))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v14 = *(this + 15);
  if ((v14 & 0x80000000) == 0 && (v14 & 0x7FFFFFFF) != 0 && *(this + 6))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  physx::IG::HandleManager<unsigned int>::~HandleManager(this + 24);

  physx::IG::HandleManager<unsigned int>::~HandleManager(this);
}

void physx::IG::PostThirdPassTask::~PostThirdPassTask(physx::IG::PostThirdPassTask *this)
{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
}

{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
  JUMPOUT(0x1E6906520);
}

void physx::IG::ThirdPassTask::~ThirdPassTask(physx::IG::ThirdPassTask *this)
{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
}

{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
  JUMPOUT(0x1E6906520);
}

uint64_t physx::IG::HandleManager<unsigned int>::~HandleManager(uint64_t a1)
{
  v2 = *(a1 + 12);
  if ((v2 & 0x80000000) == 0 && (v2 & 0x7FFFFFFF) != 0 && *a1 != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  return a1;
}

unint64_t physx::IG::SimpleIslandManager::addRigidBody(physx::IG::SimpleIslandManager *this, physx::PxsRigidBody *a2, int a3, int a4)
{
  v8 = *(this + 2);
  if (v8)
  {
    v9 = v8 - 1;
    v10 = *(*this + 4 * (v8 - 1));
    *(this + 2) = v9;
  }

  else
  {
    v10 = *(this + 4);
    *(this + 4) = v10 + 1;
  }

  v11 = (v10 << 7);
  physx::IG::IslandSim::addNode(this + 224, a4, a3, 0, v10 << 7);
  *(*(this + 31) + (v11 >> 2) + 24) = a2;
  physx::IG::IslandSim::addNode(this + 864, a4, a3, 0, v11);
  *(*(this + 111) + (v11 >> 2) + 24) = a2;
  return v11;
}

uint64_t physx::IG::SimpleIslandManager::removeNode(uint64_t result, int a2)
{
  v3 = a2;
  v2 = *(result + 56);
  if ((*(result + 60) & 0x7FFFFFFFu) <= v2)
  {
    return physx::shdfnd::Array<physx::IG::NodeIndex,physx::shdfnd::ReflectionAllocator<physx::IG::NodeIndex>>::growAndPushBack(result + 48, &v3);
  }

  *(*(result + 48) + 4 * v2) = a2;
  ++*(result + 56);
  return result;
}

unint64_t physx::IG::SimpleIslandManager::addArticulation(physx::IG::SimpleIslandManager *this, physx::Sc::ArticulationSim *a2, physx::Dy::ArticulationV *a3, int a4)
{
  v7 = *(this + 2);
  if (v7)
  {
    v8 = v7 - 1;
    v9 = *(*this + 4 * (v7 - 1));
    *(this + 2) = v8;
  }

  else
  {
    v9 = *(this + 4);
    *(this + 4) = v9 + 1;
  }

  v10 = (v9 << 7);
  physx::IG::IslandSim::addNode(this + 224, a4, 0, 1, v9 << 7);
  *(*(this + 31) + (v10 >> 2) + 24) = a3;
  physx::IG::IslandSim::addNode(this + 864, a4, 0, 1, v10);
  *(*(this + 111) + (v10 >> 2) + 24) = a3;
  return v10;
}

uint64_t physx::IG::SimpleIslandManager::addContactManager(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v7 = a3;
  v10 = *(a1 + 32);
  if (v10)
  {
    v11 = v10 - 1;
    v12 = *(*(a1 + 24) + 4 * v11);
    *(a1 + 32) = v11;
  }

  else
  {
    v12 = *(a1 + 40);
    *(a1 + 40) = v12 + 1;
  }

  v13 = 2 * v12;
  if (*(a1 + 160) == 2 * v12)
  {
    physx::Cm::BlockArray<physx::IG::NodeIndex>::resize((a1 + 144), v13 + 2048);
    physx::Cm::BlockArray<void *>::resize((a1 + 176), v13 + 2048);
    physx::Cm::BlockArray<physx::Sc::Interaction *>::resize((a1 + 64), v13 + 2048);
  }

  v14 = *(a1 + 144);
  *(*(v14 + 8 * (v13 / *(a1 + 168))) + 4 * (v13 % *(a1 + 168))) = v7;
  *(*(v14 + 8 * ((v13 | 1) / *(a1 + 168))) + 4 * ((v13 | 1) % *(a1 + 168))) = a4;
  *(*(*(a1 + 176) + 8 * (v12 / *(a1 + 200))) + 8 * (v12 % *(a1 + 200))) = a2;
  *(*(*(a1 + 64) + 8 * (v12 / *(a1 + 88))) + 8 * (v12 % *(a1 + 88))) = a5;
  physx::IG::IslandSim::addConnection(a1 + 864, a2, a3, 0, v12);
  if (a2)
  {
    *(a2 + 104) = v12;
  }

  if (v12 == 32 * *(a1 + 216))
  {
    physx::Cm::BitMapBase<physx::shdfnd::NonTrackingAllocator>::extend(a1 + 208, v13 + 2);
  }

  if ((*(a1 + 124) & 0x7FFFFFFF) == v12)
  {
    v16 = 0;
    physx::shdfnd::Array<physx::PartitionEdge *,physx::shdfnd::ReflectionAllocator<physx::PartitionEdge *>>::resize(a1 + 112, v13 + 2, &v16);
  }

  *(*(a1 + 208) + 4 * (v12 >> 5)) &= ~(1 << v12);
  return v12;
}

_DWORD *physx::Cm::BlockArray<physx::IG::NodeIndex>::resize(_DWORD *result, unsigned int a2)
{
  v3 = result;
  v4 = result[5];
  if (v4 < a2)
  {
    v5 = result[6];
    v6 = (a2 + v5 - 1) / v5;
    v7 = result[2];
    v8 = v6 - v7;
    result[5] = v4 + (v6 - v7) * v5;
    if (v6 != v7)
    {
      v9 = 0;
      do
      {
        v10 = *(v3 + 24);
        if (v10)
        {
          result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 4 * v10, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/CmBlockArray.h", 84);
        }

        else
        {
          result = 0;
        }

        v14 = result;
        v11 = *(v3 + 8);
        if ((*(v3 + 12) & 0x7FFFFFFFu) <= v11)
        {
          result = physx::shdfnd::Array<physx::IG::NodeIndex *,physx::shdfnd::ReflectionAllocator<physx::IG::NodeIndex *>>::growAndPushBack(v3, &v14);
        }

        else
        {
          *(*v3 + 8 * v11) = result;
          *(v3 + 8) = v11 + 1;
        }

        ++v9;
      }

      while (v9 < v8);
    }
  }

  v12 = *(v3 + 16);
  if (v12 < a2)
  {
    v13 = *v3;
    do
    {
      *(*(v13 + 8 * (v12 / *(v3 + 24))) + 4 * (v12 % *(v3 + 24))) = -128;
      ++v12;
    }

    while (a2 != v12);
  }

  *(v3 + 16) = a2;
  return result;
}

_DWORD *physx::Cm::BlockArray<void *>::resize(_DWORD *result, unsigned int a2)
{
  v3 = result;
  v4 = result[5];
  if (v4 < a2)
  {
    v5 = result[6];
    v6 = (a2 + v5 - 1) / v5;
    v7 = result[2];
    v8 = v6 - v7;
    result[5] = v4 + (v6 - v7) * v5;
    if (v6 != v7)
    {
      v9 = 0;
      do
      {
        v10 = *(v3 + 24);
        if (v10)
        {
          result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 8 * v10, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/CmBlockArray.h", 84);
        }

        else
        {
          result = 0;
        }

        v14 = result;
        v11 = *(v3 + 8);
        if ((*(v3 + 12) & 0x7FFFFFFFu) <= v11)
        {
          result = physx::shdfnd::Array<void **,physx::shdfnd::ReflectionAllocator<void **>>::growAndPushBack(v3, &v14);
        }

        else
        {
          *(*v3 + 8 * v11) = result;
          *(v3 + 8) = v11 + 1;
        }

        ++v9;
      }

      while (v9 < v8);
    }
  }

  v12 = *(v3 + 16);
  if (v12 < a2)
  {
    v13 = *(v3 + 24);
    do
    {
      *(*(*v3 + 8 * (v12 / v13)) + 8 * (v12 % v13)) = 0;
      ++v12;
    }

    while (a2 != v12);
  }

  *(v3 + 16) = a2;
  return result;
}

_DWORD *physx::Cm::BlockArray<physx::Sc::Interaction *>::resize(_DWORD *result, unsigned int a2)
{
  v3 = result;
  v4 = result[5];
  if (v4 < a2)
  {
    v5 = result[6];
    v6 = (a2 + v5 - 1) / v5;
    v7 = result[2];
    v8 = v6 - v7;
    result[5] = v4 + (v6 - v7) * v5;
    if (v6 != v7)
    {
      v9 = 0;
      do
      {
        v10 = *(v3 + 24);
        if (v10)
        {
          result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 8 * v10, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/CmBlockArray.h", 84);
        }

        else
        {
          result = 0;
        }

        v14 = result;
        v11 = *(v3 + 8);
        if ((*(v3 + 12) & 0x7FFFFFFFu) <= v11)
        {
          result = physx::shdfnd::Array<physx::Sc::Interaction **,physx::shdfnd::ReflectionAllocator<physx::Sc::Interaction **>>::growAndPushBack(v3, &v14);
        }

        else
        {
          *(*v3 + 8 * v11) = result;
          *(v3 + 8) = v11 + 1;
        }

        ++v9;
      }

      while (v9 < v8);
    }
  }

  v12 = *(v3 + 16);
  if (v12 < a2)
  {
    v13 = *(v3 + 24);
    do
    {
      *(*(*v3 + 8 * (v12 / v13)) + 8 * (v12 % v13)) = 0;
      ++v12;
    }

    while (a2 != v12);
  }

  *(v3 + 16) = a2;
  return result;
}

uint64_t physx::IG::SimpleIslandManager::addConstraint(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v7 = a3;
  v10 = *(a1 + 32);
  if (v10)
  {
    v11 = v10 - 1;
    v12 = *(*(a1 + 24) + 4 * v11);
    *(a1 + 32) = v11;
  }

  else
  {
    v12 = *(a1 + 40);
    *(a1 + 40) = v12 + 1;
  }

  v13 = 2 * v12;
  if (*(a1 + 160) == 2 * v12)
  {
    physx::Cm::BlockArray<physx::IG::NodeIndex>::resize((a1 + 144), 4 * v12 + 4);
    physx::Cm::BlockArray<void *>::resize((a1 + 176), v13 + 2);
    physx::Cm::BlockArray<physx::Sc::Interaction *>::resize((a1 + 64), v13 + 2);
  }

  v14 = *(a1 + 144);
  *(*(v14 + 8 * (v13 / *(a1 + 168))) + 4 * (v13 % *(a1 + 168))) = v7;
  *(*(v14 + 8 * ((v13 | 1) / *(a1 + 168))) + 4 * ((v13 | 1) % *(a1 + 168))) = a4;
  *(*(*(a1 + 176) + 8 * (v12 / *(a1 + 200))) + 8 * (v12 % *(a1 + 200))) = a2;
  *(*(*(a1 + 64) + 8 * (v12 / *(a1 + 88))) + 8 * (v12 % *(a1 + 88))) = a5;
  physx::IG::IslandSim::addConnection(a1 + 224, a2, a3, 1u, v12);
  physx::IG::IslandSim::addConnection(a1 + 864, v15, v16, 1u, v12);
  v17 = *(a1 + 216);
  if (v12 == 32 * v17)
  {
    physx::Cm::BitMapBase<physx::shdfnd::NonTrackingAllocator>::extend(a1 + 208, (v17 << 6) | 2);
  }

  if ((*(a1 + 124) & 0x7FFFFFFF) == v12)
  {
    v19 = 0;
    physx::shdfnd::Array<physx::PartitionEdge *,physx::shdfnd::ReflectionAllocator<physx::PartitionEdge *>>::resize(a1 + 112, v13 + 2, &v19);
  }

  *(*(a1 + 208) + 4 * (v12 >> 5)) |= 1 << v12;
  return v12;
}

uint64_t physx::IG::SimpleIslandManager::deactivateNode(uint64_t a1, unsigned int a2)
{
  physx::IG::IslandSim::deactivateNode(a1 + 224, a2);

  return physx::IG::IslandSim::deactivateNode(a1 + 864, a2);
}

uint64_t physx::IG::SimpleIslandManager::putNodeToSleep(uint64_t result, unsigned int a2)
{
  if ((~a2 & 0xFFFFFF80) != 0)
  {
    v3 = result;
    physx::IG::IslandSim::deactivateNode(result + 224, a2);

    return physx::IG::IslandSim::deactivateNode(v3 + 864, a2);
  }

  return result;
}

uint64_t physx::IG::SimpleIslandManager::removeConnection(uint64_t this, unsigned int a2)
{
  v5 = a2;
  if (a2 != -1)
  {
    v2 = this;
    v3 = *(this + 104);
    if ((*(this + 108) & 0x7FFFFFFFu) <= v3)
    {
      physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::growAndPushBack(this + 96, &v5);
      a2 = v5;
    }

    else
    {
      *(*(this + 96) + 4 * v3) = a2;
      ++*(this + 104);
    }

    this = physx::IG::IslandSim::removeConnection(v2 + 864, a2);
    v4 = v5;
    if ((*(*(v2 + 208) + ((v5 >> 3) & 0x1FFFFFFC)) >> v5))
    {
      this = physx::IG::IslandSim::removeConnection(v2 + 224, v5);
      *(*(v2 + 208) + ((v5 >> 3) & 0x1FFFFFFC)) &= ~(1 << v5);
      v4 = v5;
    }

    *(*(*(v2 + 176) + 8 * (v4 / *(v2 + 200))) + 8 * (v4 % *(v2 + 200))) = 0;
    *(*(*(v2 + 64) + 8 * (v4 / *(v2 + 88))) + 8 * (v4 % *(v2 + 88))) = 0;
  }

  return this;
}

void physx::IG::SimpleIslandManager::firstPassIslandGen(physx::IG::SimpleIslandManager *this)
{
  *(this + 304) = 0;
  *(this + 308) = 0;
  *(this + 360) = 0;
  *(this + 364) = 0;
  physx::IG::IslandSim::wakeIslands(this + 864);
  physx::IG::IslandSim::processNewEdges((this + 864));
  physx::IG::IslandSim::removeDestroyedEdges((this + 864));

  physx::IG::IslandSim::processLostEdges(this + 864, this + 48, 0, 0);
}

void physx::IG::SimpleIslandManager::secondPassIslandGen(physx::IG::SimpleIslandManager *this)
{
  physx::IG::IslandSim::wakeIslands(this + 224);
  physx::IG::IslandSim::processNewEdges((this + 224));
  physx::IG::IslandSim::removeDestroyedEdges((this + 224));
  physx::IG::IslandSim::processLostEdges(this + 224, this + 48, 0, 0);
  if (*(this + 14))
  {
    v2 = 0;
    do
    {
      physx::IG::HandleManager<unsigned int>::freeHandle(this, *(*(this + 6) + 4 * v2++) >> 7);
    }

    while (v2 < *(this + 14));
  }

  *(this + 14) = 0;
}

void physx::IG::ThirdPassTask::runInternal(physx::IG::IslandSim **this)
{
  physx::IG::IslandSim::removeDestroyedEdges(this[6]);
  v2 = this[6];
  v3 = this[5] + 48;

  physx::IG::IslandSim::processLostEdges(v2, v3, 1, 1);
}

uint64_t physx::IG::PostThirdPassTask::runInternal(physx::IG::PostThirdPassTask *this)
{
  result = *(this + 5);
  if (*(result + 56))
  {
    v3 = 0;
    do
    {
      physx::IG::HandleManager<unsigned int>::freeHandle(result, *(*(result + 48) + 4 * v3++) >> 7);
      result = *(this + 5);
    }

    while (v3 < *(result + 56));
  }

  *(result + 56) = 0;
  if (*(result + 104))
  {
    v4 = 0;
    do
    {
      physx::IG::HandleManager<unsigned int>::freeHandle(result + 24, *(*(result + 96) + 4 * v4++));
      result = *(this + 5);
    }

    while (v4 < *(result + 104));
  }

  *(result + 104) = 0;
  return result;
}

uint64_t physx::IG::SimpleIslandManager::thirdPassIslandGen(uint64_t a1, uint64_t a2)
{
  *(a1 + 576) = 0;
  *(a1 + 592) = 0;
  *(a1 + 800) = 0;
  *(a1 + 816) = 0;
  *(a1 + 1648) = 1;
  *(a1 + 1640) = a2;
  if (a2)
  {
    (*(*a2 + 32))(a2);
    *(a1 + 1632) = *(*(a1 + 1640) + 16);
  }

  *(a1 + 1536) = 1;
  *(a1 + 1528) = a1 + 1616;
  (*(*(a1 + 1616) + 32))(a1 + 1616);
  *(a1 + 1520) = *(*(a1 + 1528) + 16);
  *(a1 + 1592) = 1;
  *(a1 + 1584) = a1 + 1616;
  (*(*(a1 + 1616) + 32))(a1 + 1616);
  *(a1 + 1576) = *(*(a1 + 1584) + 16);
  (*(**(a1 + 1520) + 144))(*(a1 + 1520), a1 + 1504);
  (*(**(a1 + 1576) + 144))(*(a1 + 1576), a1 + 1560);
  v3 = *(**(a1 + 1632) + 144);

  return v3();
}

uint64_t physx::IG::SimpleIslandManager::setEdgeConnected(uint64_t this, uint64_t a2, uint64_t a3)
{
  v3 = a2 >> 5;
  v4 = 1 << a2;
  if ((*(*(this + 208) + 4 * (a2 >> 5)) & (1 << a2)) == 0)
  {
    v5 = this;
    this = physx::IG::IslandSim::addConnection(this + 224, a2, a3, 0, a2);
    *(*(v5 + 208) + 4 * v3) |= v4;
  }

  return this;
}

uint64_t physx::IG::SimpleIslandManager::deactivateEdge(uint64_t this, unsigned int a2)
{
  v3 = (*(this + 112) + 8 * a2);
  if (*v3)
  {
    v4 = this;
    v5 = *(this + 136);
    if ((*(this + 140) & 0x7FFFFFFFu) <= v5)
    {
      this = physx::shdfnd::Array<physx::PartitionEdge *,physx::shdfnd::ReflectionAllocator<physx::PartitionEdge *>>::growAndPushBack(this + 128, v3);
    }

    else
    {
      *(*(this + 128) + 8 * v5) = *v3;
      *(this + 136) = v5 + 1;
    }

    *(*(v4 + 112) + 8 * a2) = 0;
  }

  return this;
}

uint64_t physx::IG::SimpleIslandManager::setEdgeDisconnected(uint64_t this, unsigned int a2)
{
  v2 = a2 >> 5;
  v3 = 1 << a2;
  if ((*(*(this + 208) + 4 * (a2 >> 5)) & (1 << a2)) != 0)
  {
    v4 = this;
    this = physx::IG::IslandSim::removeConnection(this + 224, a2);
    *(*(v4 + 208) + 4 * v2) &= ~v3;
  }

  return this;
}

uint64_t physx::IG::SimpleIslandManager::clearEdgeRigidCM(uint64_t this, unsigned int a2)
{
  *(*(*(this + 176) + 8 * (a2 / *(this + 200))) + 8 * (a2 % *(this + 200))) = 0;
  v3 = (*(this + 112) + 8 * a2);
  if (*v3)
  {
    v4 = this;
    v5 = *(this + 136);
    if ((*(this + 140) & 0x7FFFFFFFu) <= v5)
    {
      this = physx::shdfnd::Array<physx::PartitionEdge *,physx::shdfnd::ReflectionAllocator<physx::PartitionEdge *>>::growAndPushBack(this + 128, v3);
    }

    else
    {
      *(*(this + 128) + 8 * v5) = *v3;
      *(this + 136) = v5 + 1;
    }

    *(*(v4 + 112) + 8 * a2) = 0;
  }

  return this;
}

void physx::PxsNphaseImplementationContext::~PxsNphaseImplementationContext(physx::PxsNphaseImplementationContext *this)
{
  physx::PxsNphaseImplementationContext::~PxsNphaseImplementationContext(this);

  JUMPOUT(0x1E6906520);
}

{
  *this = &unk_1F5D1C2C0;
  *(this + 2) = &unk_1F5D1C3E8;
  physx::shdfnd::MutexT<physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>>::~MutexT(this + 21);
  v2 = *(this + 37);
  if ((v2 & 0x80000000) == 0 && (v2 & 0x7FFFFFFF) != 0 && *(this + 17) != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  v4 = *(this + 33);
  if ((v4 & 0x80000000) == 0 && (v4 & 0x7FFFFFFF) != 0 && *(this + 15) != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  v6 = *(this + 29);
  if ((v6 & 0x80000000) == 0 && (v6 & 0x7FFFFFFF) != 0 && *(this + 13))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  v7 = *(this + 23);
  if ((v7 & 0x80000000) == 0 && (v7 & 0x7FFFFFFF) != 0 && *(this + 10))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  v8 = *(this + 19);
  if ((v8 & 0x80000000) == 0 && (v8 & 0x7FFFFFFF) != 0 && *(this + 8))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  v9 = *(this + 15);
  if ((v9 & 0x80000000) == 0 && (v9 & 0x7FFFFFFF) != 0 && *(this + 6))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  v10 = *(this + 9);
  if ((v10 & 0x80000000) == 0 && (v10 & 0x7FFFFFFF) != 0)
  {
    if (*(this + 3))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }
  }
}

uint64_t physx::PxsNphaseImplementationContext::lock(uint64_t this)
{
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    return pthread_mutex_lock(*(this + 168));
  }

  return this;
}

uint64_t physx::PxsNphaseImplementationContext::unlock(uint64_t this)
{
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    return pthread_mutex_unlock(*(this + 168));
  }

  return this;
}

void non-virtual thunk tophysx::PxsNphaseImplementationContext::~PxsNphaseImplementationContext(physx::PxsNphaseImplementationContext *this)
{
  physx::PxsNphaseImplementationContext::~PxsNphaseImplementationContext((this - 16));
}

{
  physx::PxsNphaseImplementationContext::~PxsNphaseImplementationContext((this - 16));

  JUMPOUT(0x1E6906520);
}

uint64_t non-virtual thunk tophysx::PxsNphaseImplementationContext::lock(uint64_t this)
{
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    return pthread_mutex_lock(*(this + 152));
  }

  return this;
}

uint64_t non-virtual thunk tophysx::PxsNphaseImplementationContext::unlock(uint64_t this)
{
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    return pthread_mutex_unlock(*(this + 152));
  }

  return this;
}

void PxsCMDiscreteUpdateTask::~PxsCMDiscreteUpdateTask(PxsCMDiscreteUpdateTask *this)
{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
}

{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
  JUMPOUT(0x1E6906520);
}

uint64_t PxsCMDiscreteUpdateTask::runInternal(PxsCMDiscreteUpdateTask *this)
{
  v2 = *(this + 9);
  v3 = physx::shdfnd::SListImpl::pop(*(v2 + 440));
  if (!v3)
  {
    v4 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v5 = "static const char *physx::shdfnd::ReflectionAllocator<physx::PxcNpThreadContext>::getName() [T = physx::PxcNpThreadContext]";
    }

    else
    {
      v5 = "<allocation names disabled>";
    }

    v6 = (*(*(v4 + 24) + 16))(v4 + 24, 7335, v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevel/common/include/utils/PxcThreadCoherentCache.h", 82);
    if (v6)
    {
      v3 = (v6 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v3 - 8) = v3 - v6;
    }

    else
    {
      v3 = 0;
    }

    physx::PxcNpThreadContext::PxcNpThreadContext(v3, *(v2 + 448));
  }

  *(v3 + 7200) = *(this + 17);
  v7 = *(this + 9);
  v8 = *(v7 + 2584);
  *(v3 + 7184) = v8;
  *(v3 + 7187) = *(v7 + 2586);
  *(v3 + 7185) = *(v7 + 2585);
  *(v3 + 7168) = *(v7 + 2592);
  *(v3 + 7176) = *(*(v7 + 2600) + 8);
  if (v8 == 1)
  {
    PxsCMDiscreteUpdateTask::processCms<&(physx::PxcDiscreteNarrowPhasePCM(physx::PxcNpThreadContext &,physx::PxcNpWorkUnit const&,physx::Gu::Cache &,physx::PxsContactManagerOutput &))>(this, v3);
  }

  else
  {
    PxsCMDiscreteUpdateTask::processCms<&(physx::PxcDiscreteNarrowPhase(physx::PxcNpThreadContext &,physx::PxcNpWorkUnit const&,physx::Gu::Cache &,physx::PxsContactManagerOutput &))>(this, v3);
  }

  v9 = *(*(this + 9) + 440);
  pthread_mutex_lock((v9 + 8));
  *v3 = *v9;
  *v9 = v3;

  return pthread_mutex_unlock((v9 + 8));
}

void PxsCMDiscreteUpdateTask::processCms<&(physx::PxcDiscreteNarrowPhasePCM(physx::PxcNpThreadContext &,physx::PxcNpWorkUnit const&,physx::Gu::Cache &,physx::PxsContactManagerOutput &))>(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v67 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 64);
  v61 = a1;
  v4 = *(a1 + 40);
  *v66 = 0;
  v5 = *(a2 + 7212);
  v65 = v5;
  v6 = (4 * v3);
  if (v6 >= 0x401)
  {
    v58 = physx::shdfnd::TempAllocator::allocate(v64, (4 * v3), "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevel/software/src/PxsNphaseImplementationContext.cpp", 407);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_37:
    v53 = 0;
    v52 = 0;
    v50 = 0;
    v51 = 0;
    goto LABEL_39;
  }

  MEMORY[0x1EEE9AC00](a1);
  v58 = (&v54 - ((v6 + 15) & 0x1FFFFFFF0));
  bzero(v58, (4 * v3));
  if (!v3)
  {
    goto LABEL_37;
  }

LABEL_3:
  v59 = 0;
  v60 = v5;
  v54 = (4 * v3);
  v55 = 0;
  v7 = 0;
  v8 = 0;
  v56 = 0;
  v57 = 0;
  v9 = 0;
  v10 = v3 - 1;
  v62 = v2;
  v63 = 32 * v3;
  v11 = v61;
  do
  {
    if (v9 + 1 < v10)
    {
      v12 = v9 + 1;
    }

    else
    {
      v12 = v10;
    }

    if (v9 + 2 >= v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = (v9 + 2);
    }

    _X8 = *(v4 + 8 * v13);
    __asm { PRFM            #0, [X8] }

    v19 = *(v11 + 6);
    _X10 = v19 + 32 * v13;
    __asm { PRFM            #0, [X10] }

    v22 = *(v4 + 8 * v12);
    _X11 = *(v22 + 48);
    _X10 = *(v22 + 56);
    __asm
    {
      PRFM            #0, [X11]
      PRFM            #0, [X10]
    }

    v27 = *(*(v2 + 7168) + 8);
    _X11 = v27 + 32 * *(v22 + 96);
    __asm { PRFM            #0, [X11] }

    _X9 = v27 + 32 * *(v22 + 100);
    __asm { PRFM            #0, [X9] }

    v32 = *(v4 + 8 * v9);
    if (v32)
    {
      v33 = (v19 + v7);
      *(v19 + v7 + 27) = *(v19 + v7 + 25);
      v34 = *(v19 + v7 + 26);
      physx::PxcDiscreteNarrowPhasePCM(v2, v32 + 32, *(v11 + 7) + v8, v19 + v7);
      v35 = v33[26];
      v36 = v33[25];
      if (v33[25] && (*(v32 + 80) & 0x80) != 0)
      {
        v37 = v59;
        *(v58 + v59) = v9;
        v59 = v37 + 1;
      }

      else
      {
        v38 = v60;
        if (v60 <= v36)
        {
          v38 = v33[25];
        }

        v60 = v38;
        if (v33[27] != v36)
        {
          v39 = *(*(v4 + 8 * v9) + 88);
          physx::Cm::BitMapBase<physx::shdfnd::NonTrackingAllocator>::extend(v62 + 7280, v39 + 1);
          v40 = 1 << v39;
          v41 = v39 >> 3;
          v2 = v62;
          *(*(v62 + 7280) + (v41 & 0x1FFFFFFC)) |= v40;
          _CF = v33[27] >= v33[25];
          v43 = v55;
          v44 = v56;
          if (v33[27] < v33[25])
          {
            v45 = v55 + 1;
          }

          else
          {
            v45 = HIDWORD(v56);
          }

          v46 = HIDWORD(v55);
          if (v33[27] >= v33[25])
          {
            v44 = HIDWORD(v55) + 1;
          }

          v56 = __PAIR64__(v45, v44);
          if (_CF)
          {
            v46 = HIDWORD(v55) + 1;
          }

          else
          {
            v43 = v55 + 1;
          }

          v55 = __PAIR64__(v46, v43);
        }
      }

      v47 = v35 & 2;
      if (v47 == (v34 & 2))
      {
        v11 = v61;
        if ((v34 & 3) == 0)
        {
          *(v32 + 83) = *(v32 + 83) & 0x40 | v33[26];
        }
      }

      else
      {
        *(v32 + 83) = *(v32 + 83) & 0x40 | v33[26];
        v48 = v2;
        v49 = *(*(v4 + 8 * v9) + 88);
        physx::Cm::BitMapBase<physx::shdfnd::NonTrackingAllocator>::extend(v48 + 7264, v49 + 1);
        *(*(v48 + 7264) + ((v49 >> 3) & 0x1FFFFFFC)) |= 1 << v49;
        if (v47)
        {
          LODWORD(v57) = v57 + 1;
        }

        else
        {
          ++HIDWORD(v57);
        }

        v11 = v61;
        v2 = v62;
      }
    }

    v8 += 16;
    v7 += 32;
    ++v9;
  }

  while (v63 != v7);
  v5 = v60;
  v66[1] = v56;
  v65 = v60;
  v66[0] = HIDWORD(v56);
  LODWORD(v6) = v54;
  if (v59)
  {
    PxsCMDiscreteUpdateTask::runModifiableContactManagers(v11, v58, v59, v2, v66, &v66[1], &v65);
    v51 = v66[0];
    v50 = v66[1];
    v5 = v65;
    v53 = v57;
    v52 = HIDWORD(v57);
  }

  else
  {
    v53 = v57;
    v52 = HIDWORD(v57);
    v51 = v55;
    v50 = HIDWORD(v55);
  }

LABEL_39:
  *(v2 + 7296) += v53;
  *(v2 + 7300) += v52;
  *(v2 + 7304) += v51;
  *(v2 + 7308) += v50;
  *(v2 + 7212) = v5;
  if (v6 >= 0x401)
  {
    physx::shdfnd::TempAllocator::deallocate(v64, v58);
  }
}

void PxsCMDiscreteUpdateTask::processCms<&(physx::PxcDiscreteNarrowPhase(physx::PxcNpThreadContext &,physx::PxcNpWorkUnit const&,physx::Gu::Cache &,physx::PxsContactManagerOutput &))>(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v67 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 64);
  v61 = a1;
  v4 = *(a1 + 40);
  *v66 = 0;
  v5 = *(a2 + 7212);
  v65 = v5;
  v6 = (4 * v3);
  if (v6 >= 0x401)
  {
    v58 = physx::shdfnd::TempAllocator::allocate(v64, (4 * v3), "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevel/software/src/PxsNphaseImplementationContext.cpp", 407);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_37:
    v53 = 0;
    v52 = 0;
    v50 = 0;
    v51 = 0;
    goto LABEL_39;
  }

  MEMORY[0x1EEE9AC00](a1);
  v58 = (&v54 - ((v6 + 15) & 0x1FFFFFFF0));
  bzero(v58, (4 * v3));
  if (!v3)
  {
    goto LABEL_37;
  }

LABEL_3:
  v59 = 0;
  v60 = v5;
  v54 = (4 * v3);
  v55 = 0;
  v7 = 0;
  v8 = 0;
  v56 = 0;
  v57 = 0;
  v9 = 0;
  v10 = v3 - 1;
  v62 = v2;
  v63 = 32 * v3;
  v11 = v61;
  do
  {
    if (v9 + 1 < v10)
    {
      v12 = v9 + 1;
    }

    else
    {
      v12 = v10;
    }

    if (v9 + 2 >= v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = (v9 + 2);
    }

    _X8 = *(v4 + 8 * v13);
    __asm { PRFM            #0, [X8] }

    v19 = *(v11 + 6);
    _X10 = v19 + 32 * v13;
    __asm { PRFM            #0, [X10] }

    v22 = *(v4 + 8 * v12);
    _X11 = *(v22 + 48);
    _X10 = *(v22 + 56);
    __asm
    {
      PRFM            #0, [X11]
      PRFM            #0, [X10]
    }

    v27 = *(*(v2 + 7168) + 8);
    _X11 = v27 + 32 * *(v22 + 96);
    __asm { PRFM            #0, [X11] }

    _X9 = v27 + 32 * *(v22 + 100);
    __asm { PRFM            #0, [X9] }

    v32 = *(v4 + 8 * v9);
    if (v32)
    {
      v33 = (v19 + v7);
      *(v19 + v7 + 27) = *(v19 + v7 + 25);
      v34 = *(v19 + v7 + 26);
      physx::PxcDiscreteNarrowPhase(v2, v32 + 32, *(v11 + 7) + v8, v19 + v7);
      v35 = v33[26];
      v36 = v33[25];
      if (v33[25] && (*(v32 + 80) & 0x80) != 0)
      {
        v37 = v59;
        *(v58 + v59) = v9;
        v59 = v37 + 1;
      }

      else
      {
        v38 = v60;
        if (v60 <= v36)
        {
          v38 = v33[25];
        }

        v60 = v38;
        if (v33[27] != v36)
        {
          v39 = *(*(v4 + 8 * v9) + 88);
          physx::Cm::BitMapBase<physx::shdfnd::NonTrackingAllocator>::extend(v62 + 7280, v39 + 1);
          v40 = 1 << v39;
          v41 = v39 >> 3;
          v2 = v62;
          *(*(v62 + 7280) + (v41 & 0x1FFFFFFC)) |= v40;
          _CF = v33[27] >= v33[25];
          v43 = v55;
          v44 = v56;
          if (v33[27] < v33[25])
          {
            v45 = v55 + 1;
          }

          else
          {
            v45 = HIDWORD(v56);
          }

          v46 = HIDWORD(v55);
          if (v33[27] >= v33[25])
          {
            v44 = HIDWORD(v55) + 1;
          }

          v56 = __PAIR64__(v45, v44);
          if (_CF)
          {
            v46 = HIDWORD(v55) + 1;
          }

          else
          {
            v43 = v55 + 1;
          }

          v55 = __PAIR64__(v46, v43);
        }
      }

      v47 = v35 & 2;
      if (v47 == (v34 & 2))
      {
        v11 = v61;
        if ((v34 & 3) == 0)
        {
          *(v32 + 83) = *(v32 + 83) & 0x40 | v33[26];
        }
      }

      else
      {
        *(v32 + 83) = *(v32 + 83) & 0x40 | v33[26];
        v48 = v2;
        v49 = *(*(v4 + 8 * v9) + 88);
        physx::Cm::BitMapBase<physx::shdfnd::NonTrackingAllocator>::extend(v48 + 7264, v49 + 1);
        *(*(v48 + 7264) + ((v49 >> 3) & 0x1FFFFFFC)) |= 1 << v49;
        if (v47)
        {
          LODWORD(v57) = v57 + 1;
        }

        else
        {
          ++HIDWORD(v57);
        }

        v11 = v61;
        v2 = v62;
      }
    }

    v8 += 16;
    v7 += 32;
    ++v9;
  }

  while (v63 != v7);
  v5 = v60;
  v66[1] = v56;
  v65 = v60;
  v66[0] = HIDWORD(v56);
  LODWORD(v6) = v54;
  if (v59)
  {
    PxsCMDiscreteUpdateTask::runModifiableContactManagers(v11, v58, v59, v2, v66, &v66[1], &v65);
    v51 = v66[0];
    v50 = v66[1];
    v5 = v65;
    v53 = v57;
    v52 = HIDWORD(v57);
  }

  else
  {
    v53 = v57;
    v52 = HIDWORD(v57);
    v51 = v55;
    v50 = HIDWORD(v55);
  }

LABEL_39:
  *(v2 + 7296) += v53;
  *(v2 + 7300) += v52;
  *(v2 + 7304) += v51;
  *(v2 + 7308) += v50;
  *(v2 + 7212) = v5;
  if (v6 >= 0x401)
  {
    physx::shdfnd::TempAllocator::deallocate(v64, v58);
  }
}

void PxsCMDiscreteUpdateTask::runModifiableContactManagers(PxsCMDiscreteUpdateTask *this, unsigned int *a2, uint64_t a3, physx::PxcNpThreadContext *a4, unsigned int *a5, unsigned int *a6, unsigned int *a7)
{
  v145 = a2;
  v8 = this;
  v148 = *MEMORY[0x1E69E9840];
  v124 = a5;
  v141 = *a5;
  v125 = a6;
  v9 = *a6;
  v126 = a7;
  v143 = *a7;
  v10 = *(this + 10);
  v144 = a3;
  if (v10)
  {
    v12 = (104 * a3);
    v147[8] = v12 > 0x400;
    if (v12 < 0x401)
    {
      MEMORY[0x1EEE9AC00](this);
      v13 = (&v123 - ((v12 + 15) & 0x1FFFFFFF0));
      bzero(v13, v12);
    }

    else
    {
      v13 = physx::shdfnd::TempAllocator::allocate(&v146, v12, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevel/software/src/PxsNphaseImplementationContext.cpp", 144);
    }

    v14 = 0;
    v15 = *(*(v8 + 9) + 2592);
    v16 = vdupq_n_s64(4uLL);
    while (1)
    {
      v17 = v145[v14];
      v18 = *(v8 + 6) + 32 * v17;
      v19 = *(v18 + 24);
      if (*(v18 + 24))
      {
        break;
      }

LABEL_34:
      if (++v14 == v144)
      {
        (***(v8 + 10))(*(v8 + 10), v13, a3, xmmword_1E3049640, xmmword_1E3049620, v16);
        if (v12 >= 0x401)
        {
          physx::shdfnd::TempAllocator::deallocate(v147, v13);
        }

        goto LABEL_37;
      }
    }

    v20 = *(*(v8 + 5) + 8 * v17);
    v21 = &v13[13 * v14];
    v22 = physx::gPxvOffsetTable;
    v21[2] = *(v20 + 48) + physx::gPxvOffsetTable;
    v21[3] = *(v20 + 56) + v22;
    v23 = *(v20 + 80);
    if ((v23 & 0x20) != 0)
    {
      v24 = &physx::gPxvOffsetTable + 1;
    }

    else
    {
      v24 = &qword_1EE1C7EE8;
    }

    *v21 = *(v20 + 32) + *v24;
    if ((v23 & 0x40) != 0)
    {
      v25 = &physx::gPxvOffsetTable + 1;
    }

    else
    {
      v25 = &qword_1EE1C7EE8;
    }

    v21[1] = *(v20 + 40) + *v25;
    v26 = *(v15 + 8);
    v27 = *(v20 + 100);
    v28 = v26 + 32 * *(v20 + 96);
    *(v21 + 2) = *v28;
    *&v29 = *(v28 + 16);
    v30 = v26 + 32 * v27;
    DWORD2(v29) = *(v28 + 24);
    HIDWORD(v29) = *v30;
    *(v21 + 3) = v29;
    *(v21 + 4) = *(v30 + 4);
    v21[10] = *(v30 + 20);
    v31 = *(v18 + 8);
    *(v21 + 22) = v19;
    v21[12] = v31;
    v32 = *(v20 + 80);
    if ((v32 & 0x20) != 0)
    {
      v33 = *(*(v20 + 32) + 128);
      if ((v32 & 0x40) != 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v33 = 3.4028e38;
      if ((v32 & 0x40) != 0)
      {
LABEL_15:
        v34 = *(*(v20 + 40) + 128);
LABEL_18:
        if (v33 >= v34)
        {
          v33 = v34;
        }

        v35 = (v19 + 3) & 0x1FC;
        v36 = vdupq_n_s64(v19 - 1);
        v37 = (v31 + 156);
        v38 = xmmword_1E3049620;
        v39 = xmmword_1E3049640;
        do
        {
          v40 = vmovn_s64(vcgeq_u64(v36, v38));
          if (vuzp1_s16(v40, 2).u8[0])
          {
            *(v37 - 32) = v33;
          }

          if (vuzp1_s16(v40, 2).i8[2])
          {
            *(v37 - 16) = v33;
          }

          if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v36, *&v39))).i32[1])
          {
            *v37 = v33;
            v37[16] = v33;
          }

          v39 = vaddq_s64(v39, v16);
          v38 = vaddq_s64(v38, v16);
          v37 += 64;
          v35 -= 4;
        }

        while (v35);
        v41 = *(v20 + 86);
        v42 = *(v20 + 87);
        if (v41 >= v42)
        {
          v43 = v42;
        }

        else
        {
          v43 = v41;
        }

        if (v41 > v42)
        {
          v42 = v41;
        }

        ++*(a4 + 7 * v43 + v42 + 79);
        goto LABEL_34;
      }
    }

    v34 = 3.4028e38;
    goto LABEL_18;
  }

LABEL_37:
  v44 = 0;
  v134 = xmmword_1E30903C0;
  v133 = xmmword_1E30903D0;
  v132 = xmmword_1E30903E0;
  v131 = xmmword_1E30903F0;
  v130 = xmmword_1E305F210;
  v129 = xmmword_1E3049660;
  v128 = xmmword_1E3049640;
  v127 = xmmword_1E3049620;
  v135 = vdupq_n_s64(0x10uLL);
  v142 = v8;
  do
  {
    v45 = v145[v44];
    v46 = *(*(v8 + 5) + 8 * v45);
    v47 = *(v8 + 6) + 32 * v45;
    v48 = *(v47 + 25);
    if (*(v47 + 24))
    {
      v49 = *v47;
      v50 = *(v47 + 8);
      if ((*(*v47 + 43) & 0x40) != 0 && *(v47 + 25))
      {
        v51 = 0;
        v52 = 0;
        do
        {
          v53 = v49 + 48 * v52;
          v54 = *(v53 + 40);
          v55 = v50 + (v54 << 6);
          *(v53 + 32) = vrev64_s32(*(v55 + 56));
          v56 = *(v55 + 32);
          *(v53 + 16) = v56;
          v57 = *(v53 + 41);
          if (v57 >= 2)
          {
            v58 = (v50 + 104 + (v54 << 6));
            v59 = -1;
            while ((((*(&v56 + 1) * *(v58 - 1)) + (*&v56 * *(v58 - 2))) + (*(&v56 + 2) * *v58)) >= 0.999 || *(v55 + 28) <= 0.0)
            {
              --v59;
              v58 += 16;
              if (-v57 == v59)
              {
                goto LABEL_53;
              }
            }

            if (v48 - 1 > v51)
            {
              v60 = v49 + 28 + 48 * (v48 - 1);
              v61 = v48;
              do
              {
                v62 = v49 + 48 * v61;
                *v62 = *(v60 - 28);
                *(v62 + 16) = *(v60 - 12);
                *(v62 + 24) = *(v60 - 4);
                v63 = *v60;
                *(v62 + 44) = *(v60 + 16);
                *(v62 + 28) = v63;
                LODWORD(v62) = v61 - 2;
                --v61;
                v60 -= 48;
              }

              while (v51 < v62);
              LOBYTE(v57) = *(v53 + 41);
            }

            ++v48;
            *(v53 + 90) = *(v53 + 42);
            *(v53 + 88) = v54 - v59;
            *(v53 + 89) = v57 + v59;
            *(v53 + 41) = -v59;
          }

LABEL_53:
          v51 = ++v52;
        }

        while (v48 > v52);
      }

      if (v48 > *(v47 + 27))
      {
        ++v141;
        v64 = *(v46 + 88);
        physx::Cm::BitMapBase<physx::shdfnd::NonTrackingAllocator>::extend(a4 + 7280, v64 + 1);
        v8 = v142;
        *(*(a4 + 910) + ((v64 >> 3) & 0x1FFFFFFC)) |= 1 << v64;
      }

      v65 = v143;
      if (v143 <= v48)
      {
        v65 = v48;
      }

      v143 = v65;
      *(v47 + 25) = v48;
      v66 = *(v47 + 24);
      if (*(v47 + 24))
      {
        v67 = 0;
        v68 = (v50 + 28);
        do
        {
          v69 = *v68;
          v68 += 16;
          if (v69 != 0.0)
          {
            ++v67;
          }

          --v66;
        }

        while (v66);
        v70 = v67 == 0;
      }

      else
      {
        v70 = 1;
      }

      v48 = v48;
    }

    else
    {
      v70 = 1;
    }

    if (v48 < *(v47 + 27))
    {
      ++v9;
      v71 = *(v46 + 88);
      physx::Cm::BitMapBase<physx::shdfnd::NonTrackingAllocator>::extend(a4 + 7280, v71 + 1);
      v8 = v142;
      *(*(a4 + 910) + ((v71 >> 3) & 0x1FFFFFFC)) |= 1 << v71;
    }

    if (v70)
    {
      *(v46 + 82) = 0;
      *(v46 + 64) = 0;
      *(v46 + 72) = 0;
      *(v47 + 24) = 0;
      if (*(v47 + 27))
      {
        ++v9;
        v72 = *(v46 + 88);
        physx::Cm::BitMapBase<physx::shdfnd::NonTrackingAllocator>::extend(a4 + 7280, v72 + 1);
        *(*(a4 + 910) + ((v72 >> 3) & 0x1FFFFFFC)) |= 1 << v72;
      }
    }

    else
    {
      v73 = *(a4 + 903);
      if (v73)
      {
        v74 = 3 * *(v47 + 25);
        v75 = 48 * *(v47 + 25);
        v76 = *(v47 + 24);
        add = atomic_fetch_add((v73 + 8), 32 * v76);
        v78 = *(a4 + 903);
        v79 = *(v78 + 3);
        v80 = *(v78 + 4);
        v81 = *(v78 + 2);
        v82 = *v78;
        v83 = atomic_fetch_add((*(a4 + 904) + 8), v75);
        v84 = *(a4 + 904);
        v85 = *(v84 + 3);
        v86 = *(v84 + 4);
        v87 = *(v84 + 2);
        v88 = *v84;
        v89 = *(*v47 + 43);
        v90 = 4 * *(v47 + 24);
        v91 = atomic_fetch_add((*(a4 + 905) + 8), v90);
        v92 = *(a4 + 905);
        v93 = *(v92 + 12);
        if (*(v92 + 16) + *(v92 + 8) >= v93 || v86 + v87 >= v85 || v80 + v81 >= v79)
        {
          *v47 = 0;
          *(v47 + 8) = 0;
          *(v47 + 24) = 0;
          *(v47 + 16) = 0;
        }

        else
        {
          v138 = v82;
          v139 = v79;
          v140 = v9;
          v94 = v83 + 16 * v74;
          v136 = v88;
          v137 = v85;
          v95 = (v88 + v85 - v94);
          v96 = (*v92 + v93 - (v91 + v90));
          *(v47 + 16) = v96;
          bzero(v96, 4 * *(v47 + 24));
          memcpy(v95, *v47, 48 * *(v47 + 25));
          v97 = v135;
          v98 = *(v47 + 25);
          if (*(v47 + 25))
          {
            v99 = 0;
            v100 = vdupq_n_s64(v98 - 1);
            v101 = v89 | 0x80;
            v102 = v127;
            v103 = v128;
            v104 = v129;
            v105 = v130;
            v106 = v131;
            v107 = v132;
            v108 = v133;
            v109 = v134;
            do
            {
              v110 = vmovn_s64(vcgeq_u64(v100, v102));
              if (vuzp1_s8(vuzp1_s16(v110, *v100.i8), *v100.i8).u8[0])
              {
                BYTE11(v95[v99 + 2]) = v101;
              }

              if (vuzp1_s8(vuzp1_s16(v110, *&v100), *&v100).i8[1])
              {
                BYTE11(v95[v99 + 5]) = v101;
              }

              if (vuzp1_s8(vuzp1_s16(*&v100, vmovn_s64(vcgeq_u64(v100, *&v103))), *&v100).i8[2])
              {
                BYTE11(v95[v99 + 8]) = v101;
                BYTE11(v95[v99 + 11]) = v101;
              }

              v111 = vmovn_s64(vcgeq_u64(v100, v104));
              if (vuzp1_s8(*&v100, vuzp1_s16(v111, *&v100)).i32[1])
              {
                BYTE11(v95[v99 + 14]) = v101;
              }

              if (vuzp1_s8(*&v100, vuzp1_s16(v111, *&v100)).i8[5])
              {
                BYTE11(v95[v99 + 17]) = v101;
              }

              if (vuzp1_s8(*&v100, vuzp1_s16(*&v100, vmovn_s64(vcgeq_u64(v100, *&v105)))).i8[6])
              {
                BYTE11(v95[v99 + 20]) = v101;
                BYTE11(v95[v99 + 23]) = v101;
              }

              v112 = vmovn_s64(vcgeq_u64(v100, v106));
              if (vuzp1_s8(vuzp1_s16(v112, *v100.i8), *v100.i8).u8[0])
              {
                BYTE11(v95[v99 + 26]) = v101;
              }

              if (vuzp1_s8(vuzp1_s16(v112, *&v100), *&v100).i8[1])
              {
                BYTE11(v95[v99 + 29]) = v101;
              }

              if (vuzp1_s8(vuzp1_s16(*&v100, vmovn_s64(vcgeq_u64(v100, *&v107))), *&v100).i8[2])
              {
                BYTE11(v95[v99 + 32]) = v101;
                BYTE11(v95[v99 + 35]) = v101;
              }

              v113 = vmovn_s64(vcgeq_u64(v100, v108));
              if (vuzp1_s8(*&v100, vuzp1_s16(v113, *&v100)).i32[1])
              {
                BYTE11(v95[v99 + 38]) = v101;
              }

              if (vuzp1_s8(*&v100, vuzp1_s16(v113, *&v100)).i8[5])
              {
                BYTE11(v95[v99 + 41]) = v101;
              }

              if (vuzp1_s8(*&v100, vuzp1_s16(*&v100, vmovn_s64(vcgeq_u64(v100, *&v109)))).i8[6])
              {
                BYTE11(v95[v99 + 44]) = v101;
                BYTE11(v95[v99 + 47]) = v101;
              }

              v104 = vaddq_s64(v104, v97);
              v103 = vaddq_s64(v103, v97);
              v102 = vaddq_s64(v102, v97);
              v105 = vaddq_s64(v105, v97);
              v106 = vaddq_s64(v106, v97);
              v107 = vaddq_s64(v107, v97);
              v108 = vaddq_s64(v108, v97);
              v99 += 48;
              v109 = vaddq_s64(v109, v97);
            }

            while (48 * ((v98 + 15) >> 4) != v99);
            if (v98 != 1)
            {
              v114 = (v136 + v137 - v94 + 48);
              v115 = 1;
              do
              {
                *v114 = *v95;
                v114 += 3;
                ++v115;
              }

              while (v115 < *(v47 + 25));
            }
          }

          v116 = add + 32 * v76;
          v117 = *(v47 + 24);
          v119 = v138;
          v118 = v139;
          if (*(v47 + 24))
          {
            v120 = (*(v47 + 8) + 16);
            v121 = (v138 + v139 - v116 + 16);
            do
            {
              *(v121 - 1) = *(v120 - 1);
              v122 = *v120;
              v120 += 4;
              *v121 = v122;
              v121 += 2;
              --v117;
            }

            while (v117);
          }

          *v47 = v95;
          *(v47 + 8) = v119 + v118 - v116;
          v9 = v140;
        }
      }
    }

    ++v44;
  }

  while (v44 != v144);
  *v124 = v141;
  *v125 = v9;
  *v126 = v143;
}

void physx::IG::IslandSim::~IslandSim(physx::IG::IslandSim *this)
{
  for (i = 0; i != -32; i -= 16)
  {
    v3 = *(this + i + 596);
    if ((v3 & 0x80000000) == 0 && (v3 & 0x7FFFFFFF) != 0 && *(this + i + 584) != 0)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }
  }

  for (j = 0; j != -32; j -= 16)
  {
    v6 = *(this + j + 564);
    if ((v6 & 0x80000000) == 0 && (v6 & 0x7FFFFFFF) != 0 && *(this + j + 552) != 0)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }
  }

  if (*(this + 65) && (*(this + 132) & 0x80000000) == 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(this + 65) = 0;
  v8 = *(this + 129);
  if ((v8 & 0x80000000) == 0 && (v8 & 0x7FFFFFFF) != 0 && *(this + 63))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  if (*(this + 61))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v9 = *(this + 119);
  if ((v9 & 0x80000000) == 0 && (v9 & 0x7FFFFFFF) != 0 && *(this + 58))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v10 = *(this + 115);
  if ((v10 & 0x80000000) == 0 && (v10 & 0x7FFFFFFF) != 0 && *(this + 56))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v11 = *(this + 111);
  if ((v11 & 0x80000000) == 0 && (v11 & 0x7FFFFFFF) != 0 && *(this + 54))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  if (*(this + 51) && (*(this + 104) & 0x80000000) == 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v12 = 0;
  *(this + 51) = 0;
  do
  {
    v13 = *(this + v12 + 404);
    if ((v13 & 0x80000000) == 0 && (v13 & 0x7FFFFFFF) != 0 && *(this + v12 + 392) != 0)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    v12 -= 16;
  }

  while (v12 != -32);
  for (k = 0; k != -32; k -= 16)
  {
    v16 = *(this + k + 372);
    if ((v16 & 0x80000000) == 0 && (v16 & 0x7FFFFFFF) != 0 && *(this + k + 360) != 0)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }
  }

  v18 = *(this + 83);
  if ((v18 & 0x80000000) == 0 && (v18 & 0x7FFFFFFF) != 0 && *(this + 40) != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  if (*(this + 38) && (*(this + 78) & 0x80000000) == 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(this + 38) = 0;
  if (*(this + 36) && (*(this + 74) & 0x80000000) == 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(this + 36) = 0;
  v20 = *(this + 71);
  if ((v20 & 0x80000000) == 0 && (v20 & 0x7FFFFFFF) != 0 && *(this + 34))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v21 = *(this + 67);
  if ((v21 & 0x80000000) == 0 && (v21 & 0x7FFFFFFF) != 0 && *(this + 32))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v22 = *(this + 63);
  if ((v22 & 0x80000000) == 0 && (v22 & 0x7FFFFFFF) != 0 && *(this + 30))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  for (m = 0; m != -32; m -= 16)
  {
    v24 = *(this + m + 228);
    if ((v24 & 0x80000000) == 0 && (v24 & 0x7FFFFFFF) != 0 && *(this + m + 216) != 0)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }
  }

  v26 = *(this + 49);
  if ((v26 & 0x80000000) == 0 && (v26 & 0x7FFFFFFF) != 0 && *(this + 23) != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  for (n = 0; n != -32; n -= 16)
  {
    v29 = *(this + n + 180);
    if ((v29 & 0x80000000) == 0 && (v29 & 0x7FFFFFFF) != 0 && *(this + n + 168) != 0)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }
  }

  v31 = *(this + 37);
  if ((v31 & 0x80000000) == 0 && (v31 & 0x7FFFFFFF) != 0 && *(this + 17) != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v33 = *(this + 33);
  if ((v33 & 0x80000000) == 0 && (v33 & 0x7FFFFFFF) != 0 && *(this + 15))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v34 = *(this + 24);
  if (v34)
  {
    for (ii = 0; ii < v34; ++ii)
    {
      if (*(*(this + 11) + 8 * ii))
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
        v34 = *(this + 24);
      }
    }
  }

  physx::shdfnd::Array<physx::IG::EdgeInstance *,physx::shdfnd::ReflectionAllocator<physx::IG::EdgeInstance *>>::resize(this + 88);
  v36 = *(this + 25);
  if ((v36 & 0x80000000) == 0 && (v36 & 0x7FFFFFFF) != 0 && *(this + 11))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v37 = *(this + 16);
  if (v37)
  {
    for (jj = 0; jj < v37; ++jj)
    {
      if (*(*(this + 7) + 8 * jj))
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
        v37 = *(this + 16);
      }
    }
  }

  physx::shdfnd::Array<physx::IG::EdgeInstance *,physx::shdfnd::ReflectionAllocator<physx::IG::EdgeInstance *>>::resize(this + 56);
  v39 = *(this + 17);
  if ((v39 & 0x80000000) == 0 && (v39 & 0x7FFFFFFF) != 0 && *(this + 7))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v40 = *(this + 13);
  if ((v40 & 0x80000000) == 0 && (v40 & 0x7FFFFFFF) != 0 && *(this + 5))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v41 = *(this + 9);
  if ((v41 & 0x80000000) == 0 && (v41 & 0x7FFFFFFF) != 0 && *(this + 3))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  physx::IG::HandleManager<unsigned int>::~HandleManager(this);
}

uint64_t physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::growAndPushBack(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 12);
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
    v6 = physx::shdfnd::ReflectionAllocator<unsigned int>::allocate(a1, 4 * v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 8);
  v8 = *a1;
  if (v7)
  {
    v9 = v6 + 4 * v7;
    v10 = *a1;
    v11 = v6;
    do
    {
      v12 = *v10++;
      *v11++ = v12;
    }

    while (v11 < v9);
    v13 = *(a1 + 8);
  }

  else
  {
    v13 = 0;
  }

  *(v6 + 4 * v13) = *a2;
  if ((*(a1 + 12) & 0x80000000) == 0 && v8)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *a1 = v6;
  v14 = *(a1 + 8);
  *(a1 + 8) = v14 + 1;
  *(a1 + 12) = v5;
  return v6 + 4 * v14;
}

uint64_t physx::shdfnd::Array<physx::IG::NodeIndex,physx::shdfnd::ReflectionAllocator<physx::IG::NodeIndex>>::growAndPushBack(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 12);
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
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::IG::NodeIndex>::getName() [T = physx::IG::NodeIndex]";
    }

    else
    {
      v7 = "<allocation names disabled>";
    }

    v8 = (*(*(v6 + 24) + 16))(v6 + 24, 4 * v5, v7, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 8);
  v10 = *a1;
  if (v9)
  {
    v11 = v8 + 4 * v9;
    v12 = *a1;
    v13 = v8;
    do
    {
      v14 = *v12++;
      *v13++ = v14;
    }

    while (v13 < v11);
    v15 = *(a1 + 8);
  }

  else
  {
    v15 = 0;
  }

  *(v8 + 4 * v15) = *a2;
  if ((*(a1 + 12) & 0x80000000) == 0 && v10)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *a1 = v8;
  v16 = *(a1 + 8);
  *(a1 + 8) = v16 + 1;
  *(a1 + 12) = v5;
  return v8 + 4 * v16;
}

uint64_t physx::shdfnd::ReflectionAllocator<physx::IG::QueueElement>::allocate(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v3 = "static const char *physx::shdfnd::ReflectionAllocator<physx::IG::QueueElement>::getName() [T = physx::IG::QueueElement]";
    }

    else
    {
      v3 = "<allocation names disabled>";
    }

    v4 = *(*(v2 + 24) + 16);

    return v4(v2 + 24, v1, v3, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/CmPriorityQueue.h", 219);
  }

  return result;
}

uint64_t physx::shdfnd::Array<physx::IG::Node,physx::shdfnd::ReflectionAllocator<physx::IG::Node>>::recreate(uint64_t a1, unsigned int a2)
{
  v4 = 32 * a2;
  v5 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v6 = "static const char *physx::shdfnd::ReflectionAllocator<physx::IG::Node>::getName() [T = physx::IG::Node]";
  }

  else
  {
    v6 = "<allocation names disabled>";
  }

  result = (*(*(v5 + 24) + 16))(v5 + 24, v4, v6, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
  v8 = result;
  v9 = *(a1 + 8);
  v10 = *a1;
  if (v9)
  {
    v11 = result + 32 * v9;
    v12 = result;
    do
    {
      v13 = *v10;
      v14 = v10[1];
      v10 += 2;
      *v12 = v13;
      v12[1] = v14;
      v12 += 2;
    }

    while (v12 < v11);
    v10 = *a1;
  }

  if ((*(a1 + 12) & 0x80000000) == 0 && v10)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *a1 = v8;
  *(a1 + 12) = a2;
  return result;
}

uint64_t physx::shdfnd::Array<physx::IG::Edge *,physx::shdfnd::ReflectionAllocator<physx::IG::Edge *>>::growAndPushBack(uint64_t result, void *a2)
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
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::IG::Edge *>::getName() [T = physx::IG::Edge *]";
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

uint64_t physx::shdfnd::Array<physx::IG::EdgeInstance *,physx::shdfnd::ReflectionAllocator<physx::IG::EdgeInstance *>>::growAndPushBack(uint64_t result, void *a2)
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
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::IG::EdgeInstance *>::getName() [T = physx::IG::EdgeInstance *]";
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

uint64_t physx::shdfnd::Array<physx::IG::NodeIndex,physx::shdfnd::ReflectionAllocator<physx::IG::NodeIndex>>::recreate(uint64_t a1, unsigned int a2)
{
  v4 = 4 * a2;
  v5 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v6 = "static const char *physx::shdfnd::ReflectionAllocator<physx::IG::NodeIndex>::getName() [T = physx::IG::NodeIndex]";
  }

  else
  {
    v6 = "<allocation names disabled>";
  }

  result = (*(*(v5 + 24) + 16))(v5 + 24, v4, v6, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
  v8 = result;
  v9 = *(a1 + 8);
  v10 = *a1;
  if (v9)
  {
    v11 = result + 4 * v9;
    v12 = *a1;
    v13 = result;
    do
    {
      v14 = *v12++;
      *v13++ = v14;
    }

    while (v13 < v11);
  }

  if ((*(a1 + 12) & 0x80000000) == 0 && v10)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *a1 = v8;
  *(a1 + 12) = a2;
  return result;
}

uint64_t physx::shdfnd::Array<physx::IG::Island,physx::shdfnd::ReflectionAllocator<physx::IG::Island>>::recreate(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = 44 * a2;
  v5 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance, a2))
  {
    v6 = "static const char *physx::shdfnd::ReflectionAllocator<physx::IG::Island>::getName() [T = physx::IG::Island]";
  }

  else
  {
    v6 = "<allocation names disabled>";
  }

  result = (*(*(v5 + 24) + 16))(v5 + 24, v4, v6, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
  v8 = result;
  v9 = *(a1 + 8);
  v10 = *a1;
  if (v9)
  {
    v11 = result + 44 * v9;
    v12 = result;
    do
    {
      v13 = *v10;
      v14 = v10[1];
      *(v12 + 28) = *(v10 + 28);
      *v12 = v13;
      v12[1] = v14;
      v12 = (v12 + 44);
      v10 = (v10 + 44);
    }

    while (v12 < v11);
    v10 = *a1;
  }

  if ((*(a1 + 12) & 0x80000000) == 0 && v10)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *a1 = v8;
  *(a1 + 12) = v2;
  return result;
}

uint64_t physx::Cm::BitMapBase<physx::shdfnd::NonTrackingAllocator>::extendUninitialized(uint64_t result, int a2)
{
  v2 = (a2 + 31) >> 5;
  v3 = *(result + 8);
  if (v2 > (v3 & 0x7FFFFFFFu))
  {
    v4 = result;
    if ((v3 & 0x80000000) == 0)
    {
      if (*result)
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
      }
    }

    *(v4 + 8) = v2;
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 4 * v2, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/CmBitMap.h", 461);
    *v4 = result;
  }

  return result;
}

uint64_t physx::shdfnd::Array<physx::IG::TraversalState,physx::shdfnd::ReflectionAllocator<physx::IG::TraversalState>>::growAndPushBack(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 12);
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
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::IG::TraversalState>::getName() [T = physx::IG::TraversalState]";
    }

    else
    {
      v7 = "<allocation names disabled>";
    }

    v8 = (*(*(v6 + 24) + 16))(v6 + 24, 16 * v5, v7, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = v8 + 16 * v9;
    v11 = *a1;
    v12 = v8;
    do
    {
      v13 = *v11++;
      *v12++ = v13;
    }

    while (v12 < v10);
    v14 = *(a1 + 8);
  }

  else
  {
    v14 = 0;
  }

  *(v8 + 16 * v14) = *a2;
  if ((*(a1 + 12) & 0x80000000) == 0 && *a1)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *a1 = v8;
  v15 = *(a1 + 8);
  *(a1 + 8) = v15 + 1;
  *(a1 + 12) = v5;
  return v8 + 16 * v15;
}

uint64_t physx::shdfnd::Array<physx::IG::TraversalState,physx::shdfnd::ReflectionAllocator<physx::IG::TraversalState>>::recreate(uint64_t a1, unsigned int a2)
{
  v4 = 16 * a2;
  v5 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v6 = "static const char *physx::shdfnd::ReflectionAllocator<physx::IG::TraversalState>::getName() [T = physx::IG::TraversalState]";
  }

  else
  {
    v6 = "<allocation names disabled>";
  }

  result = (*(*(v5 + 24) + 16))(v5 + 24, v4, v6, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
  v8 = result;
  v9 = *(a1 + 8);
  v10 = *a1;
  if (v9)
  {
    v11 = result + 16 * v9;
    v12 = result;
    do
    {
      v13 = *v10++;
      *v12++ = v13;
    }

    while (v12 < v11);
    v10 = *a1;
  }

  if ((*(a1 + 12) & 0x80000000) == 0 && v10)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *a1 = v8;
  *(a1 + 12) = a2;
  return result;
}

uint64_t physx::shdfnd::Array<physx::PartitionEdge *,physx::shdfnd::ReflectionAllocator<physx::PartitionEdge *>>::growAndPushBack(uint64_t a1, void *a2)
{
  v4 = *(a1 + 12);
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
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::PartitionEdge *>::getName() [T = physx::PartitionEdge *]";
    }

    else
    {
      v7 = "<allocation names disabled>";
    }

    v8 = (*(*(v6 + 24) + 16))(v6 + 24, 8 * v5, v7, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 8);
  v10 = (v8 + 8 * v9);
  if (v9)
  {
    v11 = *a1;
    v12 = v8;
    do
    {
      v13 = *v11++;
      *v12++ = v13;
    }

    while (v12 < v10);
  }

  *v10 = *a2;
  if ((*(a1 + 12) & 0x80000000) == 0 && *a1)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    v9 = *(a1 + 8);
  }

  *a1 = v8;
  *(a1 + 8) = v9 + 1;
  *(a1 + 12) = v5;
  return v8 + 8 * v9;
}

uint64_t physx::shdfnd::Array<physx::PxsContactManagerOutput,physx::shdfnd::ReflectionAllocator<physx::PxsContactManagerOutput>>::growAndPushBack(uint64_t result, _OWORD *a2)
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
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::PxsContactManagerOutput>::getName() [T = physx::PxsContactManagerOutput]";
    }

    else
    {
      v7 = "<allocation names disabled>";
    }

    result = (*(*(v6 + 24) + 16))(v6 + 24, 32 * v5, v7, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v8 = result;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v3 + 8);
  if (v9)
  {
    v10 = &v8[2 * v9];
    v11 = *v3;
    v12 = v8;
    do
    {
      v13 = *v11;
      v14 = v11[1];
      v11 += 2;
      *v12 = v13;
      v12[1] = v14;
      v12 += 2;
    }

    while (v12 < v10);
    v15 = *(v3 + 8);
  }

  else
  {
    v15 = 0;
  }

  v16 = &v8[2 * v15];
  v17 = a2[1];
  *v16 = *a2;
  v16[1] = v17;
  if ((*(v3 + 12) & 0x80000000) == 0 && *v3)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *v3 = v8;
  ++*(v3 + 8);
  *(v3 + 12) = v5;
  return result;
}

uint64_t physx::shdfnd::Array<physx::Gu::Cache,physx::shdfnd::ReflectionAllocator<physx::Gu::Cache>>::growAndPushBack(uint64_t result, _OWORD *a2)
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
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Gu::Cache>::getName() [T = physx::Gu::Cache]";
    }

    else
    {
      v7 = "<allocation names disabled>";
    }

    result = (*(*(v6 + 24) + 16))(v6 + 24, 16 * v5, v7, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v8 = result;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v3 + 8);
  if (v9)
  {
    v10 = &v8[v9];
    v11 = *v3;
    v12 = v8;
    do
    {
      v13 = *v11++;
      *v12++ = v13;
    }

    while (v12 < v10);
    v14 = *(v3 + 8);
  }

  else
  {
    v14 = 0;
  }

  v8[v14] = *a2;
  if ((*(v3 + 12) & 0x80000000) == 0 && *v3)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *v3 = v8;
  ++*(v3 + 8);
  *(v3 + 12) = v5;
  return result;
}

uint64_t physx::shdfnd::Array<physx::PxsContactManager *,physx::shdfnd::ReflectionAllocator<physx::PxsContactManager *>>::growAndPushBack(uint64_t result, void *a2)
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
    result = physx::shdfnd::ReflectionAllocator<physx::PxsContactManager *>::allocate(result, 8 * v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
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

uint64_t physx::shdfnd::ReflectionAllocator<physx::PxsContactManager *>::allocate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v8 = "static const char *physx::shdfnd::ReflectionAllocator<physx::PxsContactManager *>::getName() [T = physx::PxsContactManager *]";
  }

  else
  {
    v8 = "<allocation names disabled>";
  }

  v9 = *(*(v7 + 24) + 16);

  return v9(v7 + 24, a2, v8, a3, a4);
}

void *physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<unsigned int>>::grow(uint64_t a1)
{
  v2 = 2 * *(a1 + 8);
  *(a1 + 8) = v2;
  v3 = physx::shdfnd::ReflectionAllocator<unsigned int>::allocate(a1, 4 * v2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsSortInternals.h", 155);
  result = memcpy(v3, *(a1 + 16), (4 * *(a1 + 4)));
  if (*(a1 + 24) == 1 && *(a1 + 16))
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *(a1 + 24) = 1;
  *(a1 + 16) = v3;
  return result;
}

uint64_t physx::shdfnd::Array<physx::PxsContactManager *,physx::shdfnd::ReflectionAllocator<physx::PxsContactManager *>>::recreate(uint64_t result, unsigned int a2)
{
  v3 = result;
  if (a2)
  {
    result = physx::shdfnd::ReflectionAllocator<physx::PxsContactManager *>::allocate(result, 8 * a2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
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
    v7 = &v4[v5];
    v8 = v4;
    do
    {
      v9 = *v6++;
      *v8++ = v9;
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

uint64_t physx::shdfnd::Array<physx::PxsContactManagerOutput,physx::shdfnd::ReflectionAllocator<physx::PxsContactManagerOutput>>::recreate(uint64_t a1, unsigned int a2)
{
  v4 = 32 * a2;
  v5 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v6 = "static const char *physx::shdfnd::ReflectionAllocator<physx::PxsContactManagerOutput>::getName() [T = physx::PxsContactManagerOutput]";
  }

  else
  {
    v6 = "<allocation names disabled>";
  }

  result = (*(*(v5 + 24) + 16))(v5 + 24, v4, v6, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
  v8 = result;
  v9 = *(a1 + 8);
  v10 = *a1;
  if (v9)
  {
    v11 = result + 32 * v9;
    v12 = result;
    do
    {
      v13 = *v10;
      v14 = v10[1];
      v10 += 2;
      *v12 = v13;
      v12[1] = v14;
      v12 += 2;
    }

    while (v12 < v11);
    v10 = *a1;
  }

  if ((*(a1 + 12) & 0x80000000) == 0 && v10)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *a1 = v8;
  *(a1 + 12) = a2;
  return result;
}

uint64_t physx::shdfnd::Array<physx::Gu::Cache,physx::shdfnd::ReflectionAllocator<physx::Gu::Cache>>::recreate(uint64_t a1, unsigned int a2)
{
  v4 = 16 * a2;
  v5 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v6 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Gu::Cache>::getName() [T = physx::Gu::Cache]";
  }

  else
  {
    v6 = "<allocation names disabled>";
  }

  result = (*(*(v5 + 24) + 16))(v5 + 24, v4, v6, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
  v8 = result;
  v9 = *(a1 + 8);
  v10 = *a1;
  if (v9)
  {
    v11 = result + 16 * v9;
    v12 = result;
    do
    {
      v13 = *v10++;
      *v12++ = v13;
    }

    while (v12 < v11);
    v10 = *a1;
  }

  if ((*(a1 + 12) & 0x80000000) == 0 && v10)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *a1 = v8;
  *(a1 + 12) = a2;
  return result;
}

uint64_t physx::shdfnd::Array<physx::PartitionEdge *,physx::shdfnd::ReflectionAllocator<physx::PartitionEdge *>>::recreate(uint64_t a1, unsigned int a2)
{
  v4 = 8 * a2;
  v5 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v6 = "static const char *physx::shdfnd::ReflectionAllocator<physx::PartitionEdge *>::getName() [T = physx::PartitionEdge *]";
  }

  else
  {
    v6 = "<allocation names disabled>";
  }

  result = (*(*(v5 + 24) + 16))(v5 + 24, v4, v6, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
  v8 = result;
  v9 = *(a1 + 8);
  v10 = *a1;
  if (v9)
  {
    v11 = result + 8 * v9;
    v12 = result;
    do
    {
      v13 = *v10++;
      *v12++ = v13;
    }

    while (v12 < v11);
    v10 = *a1;
  }

  if ((*(a1 + 12) & 0x80000000) == 0 && v10)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *a1 = v8;
  *(a1 + 12) = a2;
  return result;
}

uint64_t physx::shdfnd::Array<physx::IG::NodeIndex *,physx::shdfnd::ReflectionAllocator<physx::IG::NodeIndex *>>::growAndPushBack(uint64_t result, void *a2)
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
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::IG::NodeIndex *>::getName() [T = physx::IG::NodeIndex *]";
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

uint64_t physx::shdfnd::Array<void **,physx::shdfnd::ReflectionAllocator<void **>>::growAndPushBack(uint64_t result, void *a2)
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
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<void **>::getName() [T = void **]";
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

uint64_t physx::shdfnd::Array<physx::Sc::Interaction **,physx::shdfnd::ReflectionAllocator<physx::Sc::Interaction **>>::growAndPushBack(uint64_t result, void *a2)
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
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Sc::Interaction **>::getName() [T = physx::Sc::Interaction **]";
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

void BitArray::resize(BitArray *this, int a2)
{
  if ((a2 & 0x1F) != 0)
  {
    v3 = ((a2 + 128) >> 5) + 1;
  }

  else
  {
    v3 = (a2 + 128) >> 5;
  }

  if (v3)
  {
    v4 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 4 * v3, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhaseMBP.cpp", 274);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(this + 2);
  if (v5)
  {
    memcpy(v4, *this, (4 * v5));
    v5 = *(this + 2);
  }

  if (v3 != v5)
  {
    bzero(&v4[4 * v5], 4 * (v3 - v5));
  }

  if (*this)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *this = v4;
  *(this + 2) = v3;
}

uint64_t MBP_PairManager::addPair(uint64_t this, unsigned int a2, unsigned int a3)
{
  v4 = *(this + 48);
  v3 = *(this + 56);
  v5 = *(v4 + 4 * *(v3 + 12 * (a2 >> 2)));
  v6 = *(v4 + 4 * *(v3 + 12 * (a3 >> 2)));
  if (v5 != v6)
  {
    v7 = this;
    if (*(*(this + 64) + (v6 & 3 | (4 * (v5 & 3)))) == 1)
    {
      if (a2 >= a3)
      {
        v8 = a3;
      }

      else
      {
        v8 = a2;
      }

      if (a2 <= a3)
      {
        v9 = a3;
      }

      else
      {
        v9 = a2;
      }

      v10 = 9 * (((v8 | (v9 << 16)) + ~((v8 | (v9 << 16)) << 15)) ^ (((v8 | (v9 << 16)) + ~((v8 | (v9 << 16)) << 15)) >> 10));
      v11 = ((v10 ^ (v10 >> 6)) + ~((v10 ^ (v10 >> 6)) << 11)) ^ (((v10 ^ (v10 >> 6)) + ~((v10 ^ (v10 >> 6)) << 11)) >> 16);
      this = *(this + 4) & v11;
      v12 = *(v7 + 16);
      if (!v12 || (v13 = *(v12 + 4 * this), v13 == -1))
      {
LABEL_14:
        v16 = *(v7 + 8);
        if (v16 >= *v7)
        {
          this = physx::Bp::PairManagerData::growPairs(v7, v11);
          v16 = *(v7 + 8);
          v12 = *(v7 + 16);
        }

        *(v7 + 8) = v16 + 1;
        v17 = *(v7 + 24);
        v18 = (*(v7 + 32) + 8 * v16);
        *v18 = v8 | 0x80000000;
        v18[1] = v9;
        *(v17 + 4 * v16) = *(v12 + 4 * this);
        *(v12 + 4 * this) = v16;
      }

      else
      {
        while (1)
        {
          v14 = (*(v7 + 32) + 8 * v13);
          if ((*v14 & 0x7FFFFFFF) == v8)
          {
            v15 = v14[1];
            if ((v15 & 0x7FFFFFFF) == v9)
            {
              break;
            }
          }

          v13 = *(*(v7 + 24) + 4 * v13);
          if (v13 == -1)
          {
            goto LABEL_14;
          }
        }

        v14[1] = v15 | 0x80000000;
      }
    }
  }

  return this;
}

void Region::~Region(Region *this)
{
  if (*(this + 16))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    *(this + 16) = 0;
  }

  if (*(this + 23))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    *(this + 23) = 0;
  }

  if (*(this + 22))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    *(this + 22) = 0;
  }

  if (*(this + 21))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    *(this + 21) = 0;
  }

  if (*(this + 20))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    *(this + 20) = 0;
  }

  if (*(this + 19))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    *(this + 19) = 0;
  }

  v2 = *(this + 1637);
  if (v2 != (this + 12576) && v2)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    *(this + 1637) = 0;
  }

  v3 = *(this + 1638);
  if (v3 != (this + 288) && v3)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    *(this + 1638) = 0;
  }

  v4 = *(this + 1639);
  if (v4 != (this + 6432) && v4)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    *(this + 1639) = 0;
  }

  *(this + 1636) = 0;
  *(this + 27) = &unk_1F5D21400;
  physx::Cm::RadixSortBuffered::reset(this + 216);
  if (*(this + 25))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(this + 25) = 0;
  *(this + 52) = 0;
}

uint64_t Region::addObject(uint64_t a1, __int128 *a2, unsigned int a3, int a4)
{
  v8 = *(a1 + 120);
  if (v8 != -1)
  {
    *(a1 + 120) = *(*(a1 + 128) + 8 * *(a1 + 120));
    v9 = *(a1 + 112);
    goto LABEL_23;
  }

  v9 = *(a1 + 112);
  v10 = *(a1 + 116);
  LOWORD(v8) = v9;
  if (v10 == v9)
  {
    v11 = v10 + 128;
    if (v10 == -128)
    {
      v14 = 0;
      v20 = -128;
    }

    else
    {
      v12 = physx::shdfnd::Foundation::mInstance;
      if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
      {
        v13 = "static const char *physx::shdfnd::ReflectionAllocator<MBPEntry>::getName() [T = MBPEntry]";
      }

      else
      {
        v13 = "<allocation names disabled>";
      }

      v14 = (*(*(v12 + 24) + 16))(v12 + 24, 8 * v11, v13, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhaseMBP.cpp", 870);
      v15 = 0;
      v16 = vdupq_n_s64((v11 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL);
      v17 = v14 + 5;
      do
      {
        v18 = vdupq_n_s64(v15);
        v19 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(v18, xmmword_1E3049620)));
        if (vuzp1_s16(v19, *v16.i8).u8[0])
        {
          *(v17 - 4) = -1;
        }

        if (vuzp1_s16(v19, *&v16).i8[2])
        {
          *(v17 - 2) = -1;
        }

        if (vuzp1_s16(*&v16, vmovn_s64(vcgeq_u64(v16, vorrq_s8(v18, xmmword_1E3049640)))).i32[1])
        {
          *v17 = -1;
          v17[2] = -1;
        }

        v15 += 4;
        v17 += 8;
      }

      while (((v11 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL) - ((v11 - 1) & 3) + 4 != v15);
      v20 = *(a1 + 112);
      if (!v20)
      {
        goto LABEL_20;
      }
    }

    memcpy(v14, *(a1 + 128), (8 * v20));
LABEL_20:
    if (*(a1 + 128))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }

    *(a1 + 128) = v14;
    *(a1 + 116) = v11;
    v9 = *(a1 + 112);
    LOWORD(v8) = v9;
  }

LABEL_23:
  *(a1 + 112) = v9 + 1;
  if (a4)
  {
    v21 = *(a1 + 136);
    v22 = *(a1 + 140);
    if (v21 == v22)
    {
      v23 = v21 + 128;
      *(a1 + 152) = resizeBoxes(v21, v21 + 128, *(a1 + 152));
      *(a1 + 168) = resizeMapping(*(a1 + 140), v23, *(a1 + 168));
      *(a1 + 136) = v23;
      v22 = *(a1 + 140);
    }

    *(a1 + 140) = v22 + 1;
    v24 = *(a1 + 152) + 24 * v22;
    v25 = *a2;
    *(v24 + 16) = *(a2 + 2);
    *v24 = v25;
    *(*(a1 + 168) + 2 * v22) = v8;
    *(a1 + 280) = 1;
    if (v22 >> 5 >= *(a1 + 208))
    {
      BitArray::resize((a1 + 200), v22);
    }

    *(*(a1 + 200) + 4 * (v22 >> 5)) |= 1 << v22;
    v26 = (*(a1 + 128) + 8 * v8);
    *v26 = v22;
    v26[1] = a3;
  }

  else
  {
    v28 = *(a1 + 144);
    v27 = *(a1 + 148);
    if (v28 == v27)
    {
      *(a1 + 160) = resizeBoxes(*(a1 + 144), v28 + 128, *(a1 + 160));
      *(a1 + 176) = resizeMapping(*(a1 + 148), v28 + 128, *(a1 + 176));
      *(a1 + 144) = v28 + 128;
      if (*(a1 + 184))
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
        *(a1 + 184) = 0;
      }

      if (v28 == -129)
      {
        v29 = 0;
      }

      else
      {
        v29 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 4 * (v28 + 129), "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhaseMBP.cpp", 974);
      }

      *(a1 + 184) = v29;
      v27 = *(a1 + 148);
    }

    *(a1 + 148) = v27 + 1;
    v30 = *(a1 + 160) + 24 * v27;
    v31 = *a2;
    *(v30 + 16) = *(a2 + 2);
    *v30 = v31;
    v32 = *(a1 + 176);
    *(v32 + 2 * v27) = v8;
    v33 = *(a1 + 128);
    v34 = (v33 + 8 * v8);
    *v34 = v27;
    v34[1] = a3;
    v35 = *(a1 + 160);
    v36 = *(a1 + 192);
    if (v27 == v36)
    {
      v37 = *a2;
      v38 = v35 + 24 * v27;
      *(v38 + 16) = *(a2 + 2);
      *v38 = v37;
    }

    else
    {
      v39 = (v35 + 24 * v36);
      v40 = *v39;
      v41 = *(v39 + 2);
      v42 = *(a2 + 2);
      *v39 = *a2;
      *(v39 + 2) = v42;
      v43 = v35 + 24 * v27;
      *(v43 + 16) = v41;
      *v43 = v40;
      v44 = *(v32 + 2 * v36);
      *(v32 + 2 * v36) = *(v32 + 2 * v27);
      *(v32 + 2 * v27) = v44;
      *(v33 + 8 * v44) = v27;
      *v34 = v36;
    }

    ++*(a1 + 192);
    *(a1 + 196) = 0;
    *(a1 + 281) = 1;
  }

  return v8;
}

void *resizeBoxes(int a1, unsigned int a2, const void *a3)
{
  v5 = physx::shdfnd::ReflectionAllocator<physx::Bp::IAABB>::allocate(24 * a2, 884);
  v6 = v5;
  if (a1)
  {
    memcpy(v5, a3, (24 * a1));
  }

  if (a3)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, a3);
  }

  return v6;
}

void *resizeMapping(int a1, unsigned int a2, unsigned __int16 *a3)
{
  if (a2)
  {
    v5 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 2 * a2, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhaseMBP.cpp", 893);
    if (!a1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v5 = 0;
  if (a1)
  {
LABEL_3:
    memcpy(v5, a3, (2 * a1));
  }

LABEL_4:
  if (a3)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, a3);
  }

  return v5;
}

__n128 Region::removeObject(Region *this, unsigned int a2)
{
  v4 = *(this + 16);
  v5 = (v4 + 8 * a2);
  v6 = *v5;
  if (v5[1])
  {
    *(this + 280) = 1;
    if ((v6 >> 5) >= *(this + 52))
    {
      BitArray::resize((this + 200), v6);
    }

    *(*(this + 25) + 4 * (v6 >> 5)) |= 1 << v6;
    v15 = 140;
    v16 = 152;
    v17 = 168;
  }

  else
  {
    *(this + 49) = 0;
    *(this + 281) = 1;
    v7 = *(this + 48);
    if (v6 < v7)
    {
      if (v7 != *(this + 37))
      {
        v8 = v7 - 1;
        v9 = *(this + 22);
        v10 = *(this + 20);
        v11 = *(v9 + 2 * v8);
        v12 = (v10 + 24 * v8);
        v13 = v10 + 24 * v6;
        v14 = *v12;
        *(v13 + 16) = *(v12 + 2);
        *v13 = v14;
        *(v9 + 2 * v6) = v11;
        *(v4 + 8 * v11) = v6;
        v7 = *(this + 48);
        LODWORD(v6) = v8;
      }

      *(this + 48) = v7 - 1;
    }

    v15 = 148;
    v16 = 160;
    v17 = 176;
  }

  v18 = *(this + v17);
  v19 = *(this + v16);
  v20 = *(this + v15) - 1;
  *(this + v15) = v20;
  v21 = *(this + 16);
  v22 = *(v18 + 2 * v20);
  v23 = (v19 + 24 * v20);
  v24 = (v19 + 24 * v6);
  result = *v23;
  v24[1].n128_u64[0] = v23[1].n128_u64[0];
  *v24 = result;
  *(v18 + 2 * v6) = v22;
  *(v21 + 8 * v22) = v6;
  *v5 = *(this + 30);
  v5[1] = -1;
  *(this + 30) = a2;
  --*(this + 28);
  return result;
}

void Region::updateObject(uint64_t a1, __int128 *a2, unsigned int a3)
{
  v4 = *(a1 + 128);
  v5 = (v4 + 8 * a3);
  if (v5[1])
  {
    v11 = *(a1 + 152) + 24 * *v5;
    v12 = *a2;
    *(v11 + 16) = *(a2 + 2);
    *v11 = v12;
    *(a1 + 280) = 1;
    v13 = *v5;
    if (*v5 >> 5 >= *(a1 + 208))
    {
      BitArray::resize((a1 + 200), v13);
    }

    *(*(a1 + 200) + 4 * (v13 >> 5)) |= 1 << v13;
  }

  else
  {
    v6 = *v5;
    if (v6 >= *(a1 + 196))
    {
      *(a1 + 281) = 1;
    }

    v7 = *(a1 + 192);
    v8 = *(a1 + 160);
    if (v6 >= v7)
    {
      if (v6 == v7)
      {
        v14 = *a2;
        v15 = v8 + 24 * v6;
        *(v15 + 16) = *(a2 + 2);
        *v15 = v14;
      }

      else
      {
        v16 = *(a1 + 176);
        v17 = (v8 + 24 * v7);
        v18 = *v17;
        v19 = *(v17 + 2);
        v20 = *(a2 + 2);
        *v17 = *a2;
        *(v17 + 2) = v20;
        v21 = v8 + 24 * v6;
        *(v21 + 16) = v19;
        *v21 = v18;
        v22 = *(v16 + 2 * v7);
        *(v16 + 2 * v7) = *(v16 + 2 * v6);
        *(v16 + 2 * v6) = v22;
        *(v4 + 8 * v22) = v6;
        *v5 = v7;
      }

      ++*(a1 + 192);
    }

    else
    {
      v9 = *a2;
      v10 = v8 + 24 * v6;
      *(v10 + 16) = *(a2 + 2);
      *v10 = v9;
    }
  }
}

uint64_t MBP::addToOutOfBoundsArray(uint64_t this, int a2)
{
  v3 = a2;
  v2 = *(this + 5304);
  if ((*(this + 5308) & 0x7FFFFFFFu) <= v2)
  {
    return physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::growAndPushBack(this + 5296, &v3);
  }

  *(*(this + 5296) + 4 * v2) = a2;
  ++*(this + 5304);
  return this;
}

uint64_t setupOverlapFlags(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    v3 = (result + 3) & 0x1FFFFFFFCLL;
    v4 = vdupq_n_s64(result - 1);
    v5 = xmmword_1E3049640;
    v6 = xmmword_1E3049620;
    v7 = (a2 + 152);
    v8 = vdupq_n_s64(4uLL);
    do
    {
      v9 = vmovn_s64(vcgeq_u64(v4, v6));
      if (vuzp1_s16(v9, *v4.i8).u8[0])
      {
        *(v7 - 28) = 0;
      }

      if (vuzp1_s16(v9, *&v4).i8[2])
      {
        *(v7 - 14) = 0;
      }

      if (vuzp1_s16(*&v4, vmovn_s64(vcgeq_u64(v4, *&v5))).i32[1])
      {
        *v7 = 0;
        v7[14] = 0;
      }

      v5 = vaddq_s64(v5, v8);
      v6 = vaddq_s64(v6, v8);
      v7 += 56;
      v3 -= 4;
    }

    while (v3);
    v10 = result - 1;
    v11 = (a2 + 60);
    do
    {
      v12 = a2 + 56 * v3++;
      if (*(v12 + 32))
      {
        v13 = v3 >= v2;
      }

      else
      {
        v13 = 1;
      }

      if (!v13)
      {
        v14 = v11;
        v15 = v10;
        do
        {
          if (*(v14 + 7))
          {
            result = *v14;
            if (*(v12 + 16) > result)
            {
              result = *(v12 + 4);
              if (v14[3] > result)
              {
                result = v14[1];
                if (*(v12 + 20) > result)
                {
                  result = *(v12 + 8);
                  if (v14[4] > result)
                  {
                    result = v14[2];
                    if (*(v12 + 24) > result)
                    {
                      result = *(v12 + 12);
                      if (v14[5] > result)
                      {
                        *(v12 + 40) = 1;
                        v14[9] = 1;
                      }
                    }
                  }
                }
              }
            }
          }

          v14 += 14;
          --v15;
        }

        while (v15);
      }

      --v10;
      v11 += 14;
    }

    while (v3 != v2);
  }

  return result;
}

char *MBP::storeHandles(char *result, uint64_t a2, int a3, _DWORD *__src)
{
  if (a3)
  {
    if (a3 == 1)
    {
      *(a2 + 8) = *__src;
    }

    else
    {
      v6 = &result[16 * a3];
      v7 = result + 4264;
      v8 = *&result[4 * a3 + 4264];
      if (v8 == -1)
      {
        v10 = *(v6 + 40);
        *(a2 + 8) = v10;
        v11 = *(v6 + 41) & 0x7FFFFFFF;
        v12 = v10 + a3;
        if (v10 + a3 > v11)
        {
          v13 = 2 * *(v6 + 41);
          if (!v11)
          {
            v13 = 2;
          }

          if (v12 <= v13)
          {
            v14 = v13;
          }

          else
          {
            v14 = v12;
          }

          physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::recreate((v6 + 152), v14);
          v10 = *(v6 + 40);
        }

        v9 = (*(v6 + 19) + 4 * v10);
        *(v6 + 40) = v12;
      }

      else
      {
        *(a2 + 8) = v8;
        v9 = (*(v6 + 19) + 4 * v8);
        *&v7[4 * a3] = *v9;
      }

      return memcpy(v9, __src, (4 * a3));
    }
  }

  return result;
}

void *MBP::findOverlaps(void *result, uint64_t a2, uint64_t a3)
{
  v3 = *result;
  v4 = result[2];
  v5 = result[4];
  result[12] = a2;
  result[13] = v5;
  v77 = result;
  result[14] = a3;
  if (v3)
  {
    v6 = 0;
    v67 = v4;
    v68 = v3;
    while (1)
    {
      v7 = *(v4 + 56 * v6 + 32);
      if (v7)
      {
        if (*(v7 + 48))
        {
          break;
        }
      }

LABEL_65:
      if (++v6 == v3)
      {
        return result;
      }
    }

    v69 = v6;
    v70 = *(v4 + 56 * v6 + 32);
    if (*(v7 + 48) == 1)
    {
      v8 = *v7;
      v9 = v7[1];
      v10 = v7[3];
      v73 = *(v7 + 10);
      v71 = *(v7 + 11);
      if (!v71)
      {
LABEL_28:
        v7 = v70;
        if (v73)
        {
          v32 = 0;
          LODWORD(v33) = 0;
          do
          {
            v34 = (v9 + 24 * v32);
            v35 = v34[1].u32[1];
            v36 = v33 + 2;
            do
            {
              v37 = v36;
              v38 = 24 * v33;
              v33 = (v33 + 1);
              v39 = *(v9 + v38);
              v36 = v37 + 1;
            }

            while (v39 < v34->i32[0]);
            if (v33 >= v73)
            {
              break;
            }

            v40 = v9 + 24 * v33;
            if (*v40 <= v35)
            {
              v41 = v33;
              do
              {
                v42 = vand_s8(vshl_u32(vsub_s32(v34[2], *(v40 + 4)), 0xFFFFFFFDFFFFFFFELL), 0x1000000020000000);
                if (!((*(v40 + 16) - v34->i32[1]) & 0x80000000 | ((*(v40 + 20) - v34[1].i32[0]) >> 31 << 30) | v42.i32[0] | v42.i32[1]))
                {
                  result = MBP_PairManager::addPair((v77 + 6), *(v8 + 8 * *(v10 + 2 * v32) + 4), *(v8 + 8 * *(v10 + 2 * v41) + 4));
                }

                v41 = v37;
                v40 = v9 + 24 * v37++;
              }

              while (*v40 <= v35);
            }

            ++v32;
          }

          while (v32 != v73);
        }

        goto LABEL_39;
      }

      if (v73)
      {
        v11 = 0;
        v12 = 0;
        v13 = v70[2];
        v75 = v70[4];
        do
        {
          v14 = (v9 + 24 * v11);
          v15 = v14[1].u32[1];
          v16 = v12 + 1;
          do
          {
            v17 = v12;
            v18 = v16;
            v19 = v13 + 24 * v12++;
            ++v16;
          }

          while (*v19 < v14->i32[0]);
          if (*v19 <= v15)
          {
            v20 = v17;
            do
            {
              v21 = vand_s8(vshl_u32(vsub_s32(v14[2], *(v19 + 4)), 0xFFFFFFFDFFFFFFFELL), 0x1000000020000000);
              if (!((*(v19 + 16) - v14->i32[1]) & 0x80000000 | ((*(v19 + 20) - v14[1].i32[0]) >> 31 << 30) | v21.i32[0] | v21.i32[1]))
              {
                result = MBP_PairManager::addPair((v77 + 6), *(v8 + 8 * *(v10 + 2 * v11) + 4), *(v8 + 8 * *(v75 + 2 * v20) + 4));
              }

              v20 = v18;
              v19 = v13 + 24 * v18++;
            }

            while (*v19 <= v15);
          }

          if (--v12 >= v71)
          {
            break;
          }

          ++v11;
        }

        while (v11 < v73);
        v22 = 0;
        v23 = 0;
        do
        {
          v24 = (v13 + 24 * v22);
          v25 = v24[1].u32[1];
          v26 = v23 + 1;
          do
          {
            v27 = v23;
            v28 = v26;
            v29 = v9 + 24 * v23++;
            ++v26;
          }

          while (*v29 <= v24->i32[0]);
          if (*v29 <= v25)
          {
            v30 = v27;
            do
            {
              v31 = vand_s8(vshl_u32(vsub_s32(v24[2], *(v29 + 4)), 0xFFFFFFFDFFFFFFFELL), 0x1000000020000000);
              if (!((*(v29 + 16) - v24->i32[1]) & 0x80000000 | ((*(v29 + 20) - v24[1].i32[0]) >> 31 << 30) | v31.i32[0] | v31.i32[1]))
              {
                result = MBP_PairManager::addPair((v77 + 6), *(v8 + 8 * *(v10 + 2 * v30) + 4), *(v8 + 8 * *(v75 + 2 * v22) + 4));
              }

              v30 = v28;
              v29 = v9 + 24 * v28++;
            }

            while (*v29 <= v25);
          }

          if (--v23 >= v73)
          {
            break;
          }

          ++v22;
        }

        while (v22 < v71);
        goto LABEL_28;
      }
    }

LABEL_39:
    if (*(v7 + 104) == 1)
    {
      v74 = *(v70 + 16);
      v43 = v70[7];
      v45 = v70[9];
      v44 = v70[10];
      v46 = v70[12];
      v76 = v70[11];
      v72 = *(v70 + 17);
      if (v72 && v74)
      {
        v47 = 0;
        v48 = 0;
        do
        {
          v49 = (v45 + 24 * v47);
          v50 = v49[1].u32[1];
          v51 = v48 + 1;
          do
          {
            v52 = v48;
            v53 = v51;
            v54 = v44 + 24 * v48++;
            ++v51;
          }

          while (*v54 < v49->i32[0]);
          if (*v54 <= v50)
          {
            v55 = v52;
            do
            {
              v56 = vand_s8(vshl_u32(vsub_s32(v49[2], *(v54 + 4)), 0xFFFFFFFDFFFFFFFELL), 0x1000000020000000);
              if (!((*(v54 + 16) - v49->i32[1]) & 0x80000000 | ((*(v54 + 20) - v49[1].i32[0]) >> 31 << 30) | v56.i32[0] | v56.i32[1]))
              {
                result = MBP_PairManager::addPair((v77 + 6), *(v43 + 8 * *(v46 + 2 * v47) + 4), *(v43 + 8 * *(v76 + 2 * v55) + 4));
              }

              v55 = v53;
              v54 = v44 + 24 * v53++;
            }

            while (*v54 <= v50);
          }

          if (--v48 >= v72)
          {
            break;
          }

          ++v47;
        }

        while (v47 < v74);
      }

      if (v74 && v72)
      {
        v57 = 0;
        v58 = 0;
        do
        {
          v59 = (v44 + 24 * v57);
          v60 = v59[1].u32[1];
          v61 = v58 + 1;
          do
          {
            v62 = v58;
            v63 = v61;
            v64 = v45 + 24 * v58++;
            ++v61;
          }

          while (*v64 <= v59->i32[0]);
          if (*v64 <= v60)
          {
            v65 = v62;
            do
            {
              v66 = vand_s8(vshl_u32(vsub_s32(v59[2], *(v64 + 4)), 0xFFFFFFFDFFFFFFFELL), 0x1000000020000000);
              if (!((*(v64 + 16) - v59->i32[1]) & 0x80000000 | ((*(v64 + 20) - v59[1].i32[0]) >> 31 << 30) | v66.i32[0] | v66.i32[1]))
              {
                result = MBP_PairManager::addPair((v77 + 6), *(v43 + 8 * *(v46 + 2 * v65) + 4), *(v43 + 8 * *(v76 + 2 * v57) + 4));
              }

              v65 = v63;
              v64 = v45 + 24 * v63++;
            }

            while (*v64 <= v60);
          }

          if (++v57 >= v72)
          {
            break;
          }

          --v58;
        }

        while (v58 < v74);
      }
    }

    v6 = v69;
    *(v70 + 48) = 0;
    v4 = v67;
    v3 = v68;
    goto LABEL_65;
  }

  return result;
}

physx::Bp::BroadPhaseMBP *physx::Bp::BroadPhaseMBP::BroadPhaseMBP(physx::Bp::BroadPhaseMBP *this, uint64_t a2, unsigned int a3, int a4, int a5, uint64_t a6)
{
  *this = &unk_1F5D1C588;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 1) = &unk_1F5D1C708;
  *(this + 2) = a6;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 26) = 0;
  *(this + 14) = 0;
  *(this + 30) = 0;
  *(this + 9) = &unk_1F5D1C7B0;
  *(this + 10) = a6;
  *(this + 18) = 0;
  *(this + 38) = 0;
  *(this + 10) = 0u;
  v11 = this + 160;
  *(this + 11) = 0u;
  v12 = this + 176;
  *(this + 12) = 0u;
  v13 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v14 = "static const char *physx::shdfnd::ReflectionAllocator<MBP>::getName() [T = MBP]";
  }

  else
  {
    v14 = "<allocation names disabled>";
  }

  v15 = (*(*(v13 + 24) + 16))(v13 + 24, 5328, v14, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhaseMBP.cpp", 2956);
  *v15 = 0xFFFFFFFF00000000;
  *(v15 + 8) = -1;
  *(v15 + 72) = 0;
  *(v15 + 80) = 0;
  *(v15 + 64) = 0;
  *(v15 + 88) = 0;
  *(v15 + 136) = 0;
  *(v15 + 144) = 0;
  bzero((v15 + 152), 0x1010uLL);
  *(v15 + 16) = 0u;
  *(v15 + 128) = 0;
  *(v15 + 96) = 0u;
  *(v15 + 112) = 0u;
  *(v15 + 5296) = 0;
  *(v15 + 5312) = 0;
  *(v15 + 5304) = 0;
  *(v15 + 5320) = 0;
  *(v15 + 32) = 0u;
  *(v15 + 44) = 0u;
  memset((v15 + 4264), 255, 0x404uLL);
  *(this + 17) = v15;
  v16 = (a5 + a4);
  if (a2)
  {
    physx::shdfnd::Array<RegionData,physx::shdfnd::ReflectionAllocator<RegionData>>::recreate((v15 + 16), a2);
  }

  if (v16)
  {
    *(v15 + 40) = 0;
    if ((*(v15 + 44) & 0x7FFFFFFFu) < v16)
    {
      physx::shdfnd::Array<MBP_Object,physx::shdfnd::ReflectionAllocator<MBP_Object>>::recreate((v15 + 32), v16);
    }

    v17 = v16 >> 5;
    if ((v16 & 0x1F) != 0)
    {
      ++v17;
    }

    *(v15 + 5320) = v17;
    if (*(v15 + 5312))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
      *(v15 + 5312) = 0;
      v17 = *(v15 + 5320);
    }

    if (v17)
    {
      v18 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 4 * v17, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhaseMBP.cpp", 254);
      v19 = (4 * *(v15 + 5320));
    }

    else
    {
      v19 = 0;
      v18 = 0;
    }

    *(v15 + 5312) = v18;
    bzero(v18, v19);
    bzero(*(v15 + 5312), (4 * *(v15 + 5320)));
    physx::Bp::PairManagerData::reserveMemory((v15 + 48), a3);
    physx::Bp::BroadPhaseMBP::allocateMappingArray(this, v16);
  }

  else
  {
    physx::Bp::PairManagerData::reserveMemory((v15 + 48), a3);
  }

  if ((*(this + 43) & 0x7FFFFC00) == 0)
  {
    physx::shdfnd::Array<physx::Bp::BroadPhasePair,physx::shdfnd::ReflectionAllocator<physx::Bp::BroadPhasePair>>::recreate(v11, 0x400u);
  }

  if ((*(this + 47) & 0x7FFFFC00) == 0)
  {
    physx::shdfnd::Array<physx::Bp::BroadPhasePair,physx::shdfnd::ReflectionAllocator<physx::Bp::BroadPhasePair>>::recreate(v12, 0x400u);
  }

  return this;
}

char *physx::Bp::BroadPhaseMBP::allocateMappingArray(char *this, unsigned int a2)
{
  v3 = this;
  if (a2)
  {
    this = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 4 * a2, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhaseMBP.cpp", 2977);
    v4 = this;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v3 + 152);
  if (v5)
  {
    this = memcpy(v4, *(v3 + 144), 4 * v5);
    v5 = *(v3 + 152);
  }

  if (v5 < a2)
  {
    this = memset(&v4[4 * v5], 255, 4 * (~v5 + a2) + 4);
  }

  if (*(v3 + 144))
  {
    this = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(v3 + 144) = v4;
  *(v3 + 152) = a2;
  return this;
}

void physx::Bp::BroadPhaseMBP::~BroadPhaseMBP(physx::Bp::BroadPhaseMBP *this)
{
  *this = &unk_1F5D1C588;
  v2 = *(this + 17);
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      v4 = (*(v2 + 2) + 32);
      do
      {
        v5 = *v4;
        if (*v4)
        {
          Region::~Region(*v4);
          (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v5);
          *v4 = 0;
        }

        v4 += 7;
        --v3;
      }

      while (v3);
    }

    v6 = 0;
    *v2 = 0xFFFFFFFF00000000;
    v2[2] = -1;
    do
    {
      v2[v6 * 4 + 40] = 0;
      v2[v6 + 1066] = -1;
      ++v6;
    }

    while (v6 != 257);
    v2[6] = 0;
    v2[10] = 0;
    physx::Bp::PairManagerData::purge((v2 + 12));
    if (*(v2 + 15))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    *(v2 + 15) = 0;
    v2[32] = 0;
    if (*(v2 + 17))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    *(v2 + 17) = 0;
    v2[36] = 0;
    v2[1326] = 0;
    if (*(v2 + 664))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    v2[1330] = 0;
    *(v2 + 664) = 0;
    v7 = v2[1327];
    if ((v7 & 0x80000000) == 0 && (v7 & 0x7FFFFFFF) != 0 && *(v2 + 662))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    v8 = 1028;
    do
    {
      v9 = v2[v8 + 37];
      if ((v9 & 0x80000000) == 0 && (v9 & 0x7FFFFFFF) != 0 && *&v2[v8 + 34] != 0)
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
      }

      v8 -= 4;
    }

    while (v8 * 4);
    if (*(v2 + 17))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    *(v2 + 17) = 0;
    v2[36] = 0;
    if (*(v2 + 15))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    *(v2 + 15) = 0;
    v2[32] = 0;
    physx::Bp::PairManagerData::purge((v2 + 12));
    v11 = v2[11];
    if ((v11 & 0x80000000) == 0 && (v11 & 0x7FFFFFFF) != 0 && *(v2 + 4))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    v12 = v2[7];
    if ((v12 & 0x80000000) == 0 && (v12 & 0x7FFFFFFF) != 0 && *(v2 + 2))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v2);
    *(this + 17) = 0;
  }

  if (*(this + 18))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v13 = *(this + 47);
  if ((v13 & 0x80000000) == 0 && (v13 & 0x7FFFFFFF) != 0 && *(this + 22) != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v15 = *(this + 43);
  if ((v15 & 0x80000000) == 0 && (v15 & 0x7FFFFFFF) != 0 && *(this + 20))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(this + 9) = &unk_1F5D1C1B0;
  *(this + 11) = 0;
  *(this + 1) = &unk_1F5D1C1B0;
  *(this + 3) = 0;
}

{
  physx::Bp::BroadPhaseMBP::~BroadPhaseMBP(this);
  if (v1)
  {
    v2 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

    v2();
  }
}

void physx::MBPPostUpdateWorkTask::~MBPPostUpdateWorkTask(physx::MBPPostUpdateWorkTask *this)
{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
}

{
  *this = &unk_1F5D1C1B0;
  v1 = *(physx::shdfnd::Foundation::mInstance + 24);
  *(this + 2) = 0;
  (*(v1 + 24))();
}

void physx::MBPUpdateWorkTask::~MBPUpdateWorkTask(physx::MBPUpdateWorkTask *this)
{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
}

{
  *this = &unk_1F5D1C1B0;
  v1 = *(physx::shdfnd::Foundation::mInstance + 24);
  *(this + 2) = 0;
  (*(v1 + 24))();
}

uint64_t physx::Bp::BroadPhaseMBP::getCaps(uint64_t a1, uint64_t a2)
{
  *a2 = 256;
  *(a2 + 8) = 1;
  return 1;
}

uint64_t physx::Bp::BroadPhaseMBP::getRegions(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v4 = *(a1 + 136);
  if (*v4 >= a3)
  {
    result = a3;
  }

  else
  {
    result = *v4;
  }

  if (result)
  {
    v6 = 0;
    v7 = *(v4 + 2) + 56 * a4 + 24;
    v8 = vdup_n_s32(0xFE7FFFFF);
    do
    {
      v9 = (a2 + v6);
      v10 = 2 * *(v7 - 20);
      if ((*(v7 - 20) & 0x40000000) != 0)
      {
        v11 = v10 & 0x7FFFFFFE;
      }

      else
      {
        v11 = ~v10;
      }

      v9->i32[0] = v11;
      v12 = 2 * *(v7 - 16);
      if ((*(v7 - 16) & 0x40000000) != 0)
      {
        v13 = v12 & 0x7FFFFFFE;
      }

      else
      {
        v13 = ~v12;
      }

      v9->i32[1] = v13;
      v14 = 2 * *(v7 - 12);
      if ((*(v7 - 12) & 0x40000000) != 0)
      {
        v15 = v14 & 0x7FFFFFFE;
      }

      else
      {
        v15 = ~v14;
      }

      v9[1].i32[0] = v15;
      v16 = 2 * *(v7 - 8);
      if ((*(v7 - 8) & 0x40000000) != 0)
      {
        v17 = v16 & 0x7FFFFFFE;
      }

      else
      {
        v17 = ~v16;
      }

      v9[1].i32[1] = v17;
      v18 = 2 * *(v7 - 4);
      if ((*(v7 - 4) & 0x40000000) != 0)
      {
        v19 = v18 & 0x7FFFFFFE;
      }

      else
      {
        v19 = ~v18;
      }

      v9[2].i32[0] = v19;
      v20 = 2 * *v7;
      if ((*v7 & 0x40000000) != 0)
      {
        v21 = v20 & 0x7FFFFFFE;
      }

      else
      {
        v21 = ~v20;
      }

      v9[2].i32[1] = v21;
      v22 = *(v7 + 8);
      if (v22)
      {
        v23 = *(v7 + 24);
        v24 = *(v7 + 16) != 0;
        v25 = *(v22 + 140);
        LODWORD(v22) = *(v22 + 148);
        v26 = 1;
      }

      else
      {
        v23 = 0;
        v26 = 0;
        v24 = 0;
        v25 = 0;
        v9[2] = v8;
        *(a2 + v6) = xmmword_1E3113BA0;
      }

      v27 = a2 + v6;
      *(v27 + 24) = v23;
      v7 += 56;
      *(v27 + 40) = v26;
      *(v27 + 41) = v24;
      v6 += 48;
      *(v27 + 32) = v25;
      *(v27 + 36) = v22;
    }

    while (48 * result != v6);
  }

  return result;
}

uint64_t physx::Bp::BroadPhaseMBP::addRegion(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v86 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 136);
  v12 = *(v11 + 2);
  *v82 = v11;
  if (v12 == -1)
  {
    v12 = *v11;
    if (v12 >= 0x100)
    {
      physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 16, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhaseMBP.cpp", 2106, "MBP::addRegion: max number of regions reached.", a6, a7, a8, v70);
      return 0xFFFFFFFFLL;
    }

    *v11 = v12 + 1;
    v14 = *(v11 + 6);
    v15 = *(v11 + 7) & 0x7FFFFFFF;
    v16 = v14 + 1;
    if (v14 + 1 > v15)
    {
      v17 = 2 * *(v11 + 7);
      if (!v15)
      {
        v17 = 2;
      }

      if (v16 <= v17)
      {
        v18 = v17;
      }

      else
      {
        v18 = v16;
      }

      physx::shdfnd::Array<RegionData,physx::shdfnd::ReflectionAllocator<RegionData>>::recreate(v11 + 2, v18);
      v11 = *v82;
      v14 = *(*v82 + 24);
    }

    v13 = v11[2] + 56 * v14;
    *(v11 + 6) = v16;
  }

  else
  {
    v13 = v11[2] + 56 * v12;
    *(v11 + 2) = *(v13 + 48);
  }

  v19 = v11;
  v20 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v21 = "static const char *physx::shdfnd::ReflectionAllocator<Region>::getName() [T = Region]";
  }

  else
  {
    v21 = "<allocation names disabled>";
  }

  v22 = (*(*(v20 + 24) + 16))(v20 + 24, 13120, v21, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhaseMBP.cpp", 2114);
  *(v22 + 56) = 0u;
  *(v22 + 72) = 0u;
  *(v22 + 88) = 0u;
  *(v22 + 104) = 0;
  *v22 = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 32) = 0u;
  *(v22 + 48) = 0;
  *(v22 + 112) = 0;
  *(v22 + 120) = -1;
  *(v22 + 128) = 0u;
  *(v22 + 144) = 0u;
  *(v22 + 160) = 0u;
  *(v22 + 176) = 0u;
  *(v22 + 192) = 0u;
  *(v22 + 208) = 0;
  *(v22 + 264) = 0;
  *(v22 + 248) = 0u;
  *(v22 + 232) = 0u;
  *(v22 + 272) = 1;
  *(v22 + 224) = 0x80000000;
  *(v22 + 216) = &unk_1F5D21400;
  *(v22 + 280) = 256;
  *(v22 + 13088) = 0u;
  *(v22 + 13104) = 0u;
  if (*a2 < 0)
  {
    v23 = ~*a2;
  }

  else
  {
    v23 = *a2 | 0x80000000;
  }

  *(v13 + 4) = v23 >> 1;
  v24 = *(a2 + 4);
  if (v24 < 0)
  {
    v25 = ~v24;
  }

  else
  {
    v25 = v24 | 0x80000000;
  }

  *(v13 + 8) = v25 >> 1;
  v26 = *(a2 + 8);
  if (v26 < 0)
  {
    v27 = ~v26;
  }

  else
  {
    v27 = v26 | 0x80000000;
  }

  *(v13 + 12) = v27 >> 1;
  v28 = *(a2 + 12);
  if (v28 < 0)
  {
    v29 = ~v28;
  }

  else
  {
    v29 = v28 | 0x80000000;
  }

  *(v13 + 16) = v29 >> 1;
  v30 = *(a2 + 16);
  if (v30 < 0)
  {
    v31 = ~v30;
  }

  else
  {
    v31 = v30 | 0x80000000;
  }

  *(v13 + 20) = v31 >> 1;
  v32 = *(a2 + 20);
  if (v32 < 0)
  {
    v33 = ~v32;
  }

  else
  {
    v33 = v32 | 0x80000000;
  }

  *(v13 + 24) = v33 >> 1;
  v75 = v22;
  *(v13 + 32) = v22;
  *(v13 + 48) = *(a2 + 24);
  setupOverlapFlags(*v19, v19[2]);
  if (a3)
  {
    v34 = v19[664];
    if (v34)
    {
      v35 = v19;
      v36 = v19[2];
      v37 = *(v35 + 4);
      v38 = 1;
      v39 = *(v35 + 1330);
      v40 = a4;
      do
      {
        if (!v39)
        {
          goto LABEL_40;
        }

        v41 = v39 - 1;
      }

      while (!*(v34 - 4 + 4 * v39--));
      v38 = (v41 & 0x7FFFFFF) + 1;
LABEL_40:
      v43 = 0;
      v44 = v35 + 152;
      v71 = v35 + 4264;
      v72 = v38;
      v73 = v34;
      v74 = a5;
      v81 = v35 + 152;
      while (1)
      {
        v45 = *(v34 + 4 * v43);
        if (v45)
        {
          break;
        }

LABEL_70:
        if (++v43 == v38)
        {
          return v12;
        }
      }

      while (1)
      {
        v46 = (v37 + 12 * (__clz(__rbit32(v45)) | (32 * v43)));
        v47 = *(v46 + 2);
        if (*(v46 + 2))
        {
          if (v47 == 1)
          {
            v48 = (v46 + 2);
          }

          else
          {
            v48 = (*&v44[16 * v47] + 4 * v46[2]);
          }

          v56 = *(v36 + 56 * v48[1] + 32);
          v58 = (*(v56 + 128) + 8 * *v48);
          v57 = *v58;
          v54 = v58[1];
          if (v54)
          {
            v59 = 152;
          }

          else
          {
            v59 = 160;
          }

          v60 = *(v56 + v59) + 24 * v57;
          v83 = *v60;
          v84 = *(v60 + 16);
          v55 = v83.u32[3];
        }

        else
        {
          v49 = *v46;
          v50 = v40 + 24 * v49;
          v51 = (a5 + 4 * v49);
          v52 = vld1q_dup_f32(v51);
          v53 = vsubq_f32(*v50, v52);
          v53.i32[3] = vaddq_f32(*v50, v52).i32[3];
          v83 = vshrq_n_u32(vbslq_s8(vcltzq_s32(v53), vmvnq_s8(v53), vnegq_f32(vabsq_f32(v53))), 1uLL);
          *v52.f32 = vadd_f32(*(v50 + 16), *v52.f32);
          v84 = vshr_n_u32(vbsl_s8(vcltz_s32(*v52.f32), vmvn_s8(*v52.f32), vneg_f32(vabs_f32(*v52.f32))), 1uLL);
          v54 = v46[2];
          v55 = v83.u32[3];
        }

        if (v55 < *(v13 + 4) || *(v13 + 16) < v83.i32[0] || v84.i32[0] < *(v13 + 8) || *(v13 + 20) < v83.i32[1] || v84.i32[1] < *(v13 + 12) || *(v13 + 24) < v83.i32[2])
        {
          goto LABEL_67;
        }

        v61 = v54 >> 2;
        v62 = *(v35 + 4);
        if (v54 >> 7 >= *(v35 + 32))
        {
          v78 = *(v35 + 4);
          BitArray::resize((*v82 + 120), v61);
          v62 = v78;
          v61 = v54 >> 2;
          v44 = v81;
          v35 = *v82;
        }

        v63 = v62 + 12 * v61;
        *(*(v35 + 15) + 4 * (v54 >> 7)) |= 1 << v61;
        v64 = *(v63 + 4);
        v79 = v64;
        v80 = v63;
        v65 = (v63 + 8);
        v77 = (v63 + 8);
        if (v64 == 1)
        {
          v64 = 1;
        }

        else
        {
          if (!*(v63 + 4))
          {
            v64 = 0;
            goto LABEL_64;
          }

          v65 = (*&v44[16 * v64] + 4 * *v65);
        }

        memcpy(__dst, v65, 4 * v64);
LABEL_64:
        v66 = Region::addObject(v75, v83.i8, v54, v54 & 1);
        v67 = &__dst[v64];
        *v67 = v66;
        v67[1] = v12;
        if (v79 >= 2)
        {
          v68 = *v77;
          *(*&v81[16 * v64] + 4 * v68) = *&v71[4 * v64];
          *&v71[4 * v64] = v68;
        }

        MBP::storeHandles(*v82, v80, v79 + 1, __dst);
        v35 = *v82;
        *(v80 + 4) = v79 + 1;
        v34 = v73;
        a5 = v74;
        v40 = a4;
        v38 = v72;
        v44 = v81;
LABEL_67:
        v45 &= v45 - 1;
        if (!v45)
        {
          goto LABEL_70;
        }
      }
    }
  }

  return v12;
}

uint64_t physx::Bp::BroadPhaseMBP::removeRegion(physx::Bp::BroadPhaseMBP *this, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = *(this + 17);
  if (*v8 <= a2)
  {
    v26 = physx::shdfnd::Foundation::mInstance;
    v27 = 2139;
LABEL_24:
    physx::shdfnd::Foundation::error(v26, 4, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhaseMBP.cpp", v27, "MBP::removeRegion: invalid handle.", a6, a7, a8, v28);
    return 0;
  }

  v9 = *(v8 + 2) + 56 * a2;
  v10 = *(v9 + 32);
  if (!v10)
  {
    v26 = physx::shdfnd::Foundation::mInstance;
    v27 = 2149;
    goto LABEL_24;
  }

  *(v9 + 4) = xmmword_1E3113BB0;
  v29 = v9;
  *(v9 + 20) = 0xC0000000C00000;
  v11 = *(v10 + 116);
  if (v11)
  {
    v12 = 0;
    v32 = v8 + 38;
    v33 = *(v10 + 128);
    v31 = v8 + 1066;
    while (1)
    {
      v13 = v33 + 8 * v12;
      v14 = *(v13 + 4);
      if (v14 != -1)
      {
        break;
      }

LABEL_20:
      if (++v12 == v11)
      {
        goto LABEL_21;
      }
    }

    v15 = *(v8 + 2);
    v16 = *(v8 + 4) + 12 * (*(v13 + 4) >> 2);
    v17 = *(v16 + 4);
    v18 = (v16 + 8);
    if (v17 == 1)
    {
      v19 = 1;
      v20 = v16 + 8;
    }

    else
    {
      if (!*(v16 + 4))
      {
LABEL_17:
        *(v16 + 8) = v14;
        MBP::addToOutOfBoundsArray(v8, *v16);
        if ((v14 >> 7) >= v8[1330])
        {
          BitArray::resize((v8 + 1328), v14 >> 2);
        }

        *(*(v8 + 664) + 4 * (v14 >> 7)) |= 1 << (v14 >> 2);
        goto LABEL_20;
      }

      v20 = *&v32[4 * v17] + 4 * *v18;
      v19 = *(v16 + 4);
    }

    v21 = 0;
    v22 = (v20 + 2);
    v23 = v19;
    do
    {
      if (*(v15 + 56 * *v22 + 32) != v10)
      {
        __src[v21++] = *(v22 - 1);
      }

      v22 += 2;
      --v23;
    }

    while (v23);
    if (v17 >= 2)
    {
      v24 = *v18;
      *(*&v32[4 * v19] + 4 * v24) = v31[v19];
      v31[v19] = v24;
    }

    MBP::storeHandles(v8, v16, v21, __src);
    *(v16 + 4) = v21;
    if (v21)
    {
      goto LABEL_20;
    }

    goto LABEL_17;
  }

LABEL_21:
  Region::~Region(v10);
  (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v10);
  *(v29 + 32) = 0;
  *(v29 + 48) = v8[2];
  v8[2] = a2;
  setupOverlapFlags(*v8, *(v8 + 2));
  return 1;
}

void physx::Bp::BroadPhaseMBP::update(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
    (*(*a6 + 40))(a6);
  }

  physx::Bp::BroadPhaseMBP::setUpdateData(a1);
  MBP::findOverlaps(*(a1 + 136), *(a1 + 192), *(a1 + 200));

  physx::Bp::BroadPhaseMBP::postUpdate(a1);
}

void physx::Bp::BroadPhaseMBP::setUpdateData(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v6 = v1;
  v248 = *MEMORY[0x1E69E9840];
  v221 = v7;
  v8 = *(v7 + 80);
  if (v8 > *(v1 + 152))
  {
    physx::Bp::BroadPhaseMBP::allocateMappingArray(v1, v8);
  }

  *(v6 + 192) = *(v221 + 56);
  v9 = *(v221 + 32);
  v10 = *(v221 + 40);
  if (v9)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  v225 = v6;
  if (!v11)
  {
    v12 = *(v6 + 144);
    do
    {
      v13 = *v9++;
      v14 = *(v6 + 136);
      v235 = v13;
      v15 = *(v12 + 4 * v13);
      v16 = v15 >> 2;
      v17 = *(v14 + 32) + 12 * (*(v12 + 4 * v13) >> 2);
      v18 = *(v17 + 4);
      if (*(v17 + 4))
      {
        v231 = v9;
        if (v18 == 1)
        {
          v19 = v17 + 8;
          v20 = 1;
        }

        else
        {
          v19 = *(v14 + 16 * v18 + 152) + 4 * *(v17 + 8);
          v20 = *(v17 + 4);
        }

        v21 = *(v14 + 16);
        v22 = (v19 + 2);
        v226 = v20;
        do
        {
          Region::removeObject(*(v21 + 56 * *v22 + 32), *(v22 - 1));
          v22 += 2;
          --v20;
        }

        while (v20);
        v6 = v225;
        v9 = v231;
        if (v18 != 1)
        {
          v23 = *(v17 + 8);
          v24 = v14 + 4 * v226;
          *(*(v14 + 16 * v226 + 152) + 4 * v23) = *(v24 + 4264);
          *(v24 + 4264) = v23;
        }
      }

      *(v17 + 4) = 0;
      *(v17 + 6) |= 4u;
      *(v17 + 8) = *(v14 + 4);
      v25 = v15 >> 7;
      if ((v15 >> 7) >= *(v14 + 128))
      {
        BitArray::resize((v14 + 120), v15 >> 2);
      }

      v26 = 1 << (v15 >> 2);
      *(*(v14 + 120) + 4 * v25) |= v26;
      *(v14 + 4) = v16;
      if (v25 >= *(v14 + 144))
      {
        BitArray::resize((v14 + 136), v16);
      }

      *(*(v14 + 136) + 4 * v25) |= v26;
      if (v25 >= *(v14 + 5320))
      {
        BitArray::resize((v14 + 5312), v16);
      }

      *(*(v14 + 5312) + 4 * v25) &= ~v26;
      v12 = *(v6 + 144);
      *(v12 + 4 * v235) = -1;
      --v10;
    }

    while (v10);
  }

  v27 = *v221;
  if (*v221)
  {
    v28 = *(v221 + 8);
    if (v28)
    {
      v211 = *(v221 + 56);
      v213 = *(v221 + 48);
      while (1)
      {
        v31 = *v27;
        v30 = v27 + 1;
        v29 = v31;
        v32 = v213 + 24 * v31;
        v33 = (*(v221 + 72) + 4 * v31);
        v34 = vld1q_dup_f32(v33);
        v35 = vsubq_f32(*v32, v34);
        v36 = vaddq_f32(*(v32 + 12), v34);
        v247 = v35;
        *v241 = v36;
        v37 = vshr_n_u32(vadd_s32((*&vbsl_s8(vcltz_s32(*v35.f32), vmvn_s8(*v35.f32), (v35.i64[0] | 0x8000000080000000)) & 0xFFFFFFF0FFFFFFF0), 0xF0000000FLL), 1uLL);
        *__src = v37;
        v38 = v35.i32[2] < 0 ? ~v35.i32[2] : v35.i32[2] | 0x80000000;
        v39 = ((v38 & 0xFFFFFFF0) - 16) >> 1;
        *&__src[8] = v39;
        v35.i64[0] = *&vshr_n_u32(vadd_s32((*&vbsl_s8(vcltz_s32(*v241), vmvn_s8(*v241), (*v241 | 0x8000000080000000)) & 0xFFFFFFF0FFFFFFF0), 0x1000000010), 1uLL) | 0x200000002;
        *&__src[12] = v35.i64[0];
        v40 = *&v241[8] < 0 ? ~*&v241[8] : *&v241[8] | 0x80000000;
        v41 = (((v40 & 0xFFFFFFF0) + 16) >> 1) | 2;
        *&__src[20] = v41;
        v42 = *(v211 + 4 * v29);
        v43 = *(v6 + 136);
        v44 = *(v43 + 1);
        v227 = v30;
        if (v44 == -1)
        {
          v44 = *(v43 + 10);
          v47 = *(v43 + 11) & 0x7FFFFFFF;
          v48 = v44 + 1;
          v49 = v44;
          if (v44 + 1 > v47)
          {
            if (v47)
            {
              v50 = 2 * *(v43 + 11);
            }

            else
            {
              v50 = 2;
            }

            if (v48 <= v50)
            {
              v51 = v50;
            }

            else
            {
              v51 = v48;
            }

            v52 = v39;
            v209 = v35;
            v53 = v41;
            v236 = v37;
            physx::shdfnd::Array<MBP_Object,physx::shdfnd::ReflectionAllocator<MBP_Object>>::recreate(v43 + 4, v51);
            v37 = v236;
            v41 = v53;
            v35 = v209;
            v39 = v52;
            v49 = *(v43 + 10);
          }

          v46 = 0;
          v45 = v43[4] + 12 * v49;
          *(v43 + 10) = v48;
        }

        else
        {
          v45 = v43[4] + 12 * v44;
          *(v43 + 1) = *(v45 + 8);
          v46 = (*(v45 + 6) & 2) == 0;
        }

        v217 = v45;
        v219 = v29;
        v232 = v42;
        v54 = 2 * v46;
        v55 = (2 * v46) | (4 * v44);
        if (!v42)
        {
          ++v55;
        }

        v237 = v55;
        v56 = *v43;
        v222 = v28;
        v215 = v54;
        if (v56)
        {
          v57 = 0;
          v58 = 0;
          v59 = v35.u32[1];
          v60 = v35.i32[0];
          v61 = v37.i32[0];
          v62 = v37.u32[1];
          v63 = (v43[2] + 16);
          v64 = 1;
          do
          {
            if (v63->i32[0] >= v61 && (v65 = v63[-2].u32[1], v60 >= v65) && v63->i32[1] >= v62 && (v66 = v63[-1].u32[0], v59 >= v66) && (v67 = v63[1].u32[0], v67 >= v39) && (v68 = v63[-1].u32[1], v41 >= v68))
            {
              v69 = 0;
              if (v65 <= v61 && v66 <= v62)
              {
                v70 = vcgt_u32(*v35.f32, *v63);
                if (v70.i8[4])
                {
                  v69 = 0;
                }

                else
                {
                  v71 = (v67 >= v41) & v64;
                  if (v68 > v39)
                  {
                    v71 = 0;
                  }

                  if (v70.i8[0])
                  {
                    v69 = 0;
                  }

                  else
                  {
                    v69 = v71;
                  }
                }
              }

              v205 = v59;
              v206 = v41;
              v210 = v35;
              v207 = v39;
              v72 = v63[2];
              if (*(v72 + 112) == 0xFFFF)
              {
                physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 32, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhaseMBP.cpp", 2355, "MBP::addObject: 64K objects in single region reached. Some collisions might be lost.", v2, v3, v4, v203);
              }

              else
              {
                v204 = v58 + 1;
                v73 = &v247.i16[2 * v58];
                *v73 = Region::addObject(v72, __src, v237, v232 == 0);
                v73[1] = v57;
                v58 = v204;
              }

              v41 = v206;
              v39 = v207;
              v35 = v210;
              v59 = v205;
            }

            else
            {
              v69 = v64;
            }

            ++v57;
            v63 += 7;
            v64 = v69;
          }

          while (v56 != v57);
        }

        else
        {
          v58 = 0;
          LOBYTE(v69) = 1;
        }

        MBP::storeHandles(v43, v217, v58, &v247);
        *(v217 + 4) = v58;
        v74 = v44 >> 5;
        v75 = *(v43 + 1330);
        v76 = 1 << v44;
        if (v58)
        {
          if (v69)
          {
            break;
          }
        }

        v27 = v227;
        if (v74 >= v75)
        {
          BitArray::resize((v43 + 664), v44);
        }

        *(v43[664] + 4 * v74) |= v76;
        v77 = v222;
        v78 = v219;
        if (v58)
        {
          if (v232)
          {
            goto LABEL_80;
          }
        }

        else
        {
          *(v217 + 8) = v237;
          MBP::addToOutOfBoundsArray(v43, v219);
          if (v232)
          {
            goto LABEL_80;
          }
        }

LABEL_83:
        *(v217 + 6) = v215;
        *v217 = v78;
        v6 = v225;
        *(*(v225 + 144) + 4 * v78) = v237;
        v28 = v77 - 1;
        if (!v28)
        {
          goto LABEL_87;
        }
      }

      v27 = v227;
      if (v74 >= v75)
      {
        BitArray::resize((v43 + 664), v44);
      }

      *(v43[664] + 4 * v74) &= ~v76;
      v77 = v222;
      v78 = v219;
      if (!v232)
      {
        goto LABEL_83;
      }

LABEL_80:
      if (v74 >= *(v43 + 32))
      {
        BitArray::resize((v43 + 15), v44);
      }

      *(v43[15] + 4 * v74) |= v76;
      goto LABEL_83;
    }
  }

LABEL_87:
  v79 = *(v221 + 16);
  if (v79)
  {
    v80 = *(v221 + 24);
    if (v80)
    {
      v208 = *(v221 + 48);
      do
      {
        v81 = *v79;
        *v220 = v79 + 1;
        v82 = v208 + 24 * v81;
        v83 = (*(v221 + 72) + 4 * v81);
        v84 = vld1q_dup_f32(v83);
        v85 = vsubq_f32(*v82, v84);
        v86 = vaddq_f32(*(v82 + 12), v84);
        v247 = v85;
        *__src = v86;
        *&v5 = vshr_n_u32(vadd_s32((*&vbsl_s8(vcltz_s32(*v85.f32), vmvn_s8(*v85.f32), (v85.i64[0] | 0x8000000080000000)) & 0xFFFFFFF0FFFFFFF0), 0xF0000000FLL), 1uLL);
        *v241 = v5;
        if (v85.i32[2] < 0)
        {
          v87 = ~v85.i32[2];
        }

        else
        {
          v87 = v85.i32[2] | 0x80000000;
        }

        v88 = ((v87 & 0xFFFFFFF0) - 16) >> 1;
        *&v241[8] = v88;
        v89 = *&vshr_n_u32(vadd_s32((*&vbsl_s8(vcltz_s32(*__src), vmvn_s8(*__src), (*__src | 0x8000000080000000)) & 0xFFFFFFF0FFFFFFF0), 0x1000000010), 1uLL) | 0x200000002;
        *&v241[12] = v89;
        if (*&__src[8] < 0)
        {
          v90 = ~*&__src[8];
        }

        else
        {
          v90 = *&__src[8] | 0x80000000;
        }

        v91 = (((v90 & 0xFFFFFFF0) + 16) >> 1) | 2;
        v242 = v91;
        v92 = *(v6 + 136);
        v93 = *(*(v6 + 144) + 4 * v81);
        v94 = v93 >> 2;
        v95 = *v92;
        v96 = *(v92 + 2);
        v97 = *(v92 + 4);
        v98 = v93 >> 7;
        v233 = v93 >> 7;
        *v218 = v93 >> 2;
        if (*(*(v6 + 144) + 4 * v81) >> 7 >= v92[32])
        {
          v238 = v89;
          v99 = v6;
          v100 = v80;
          v101 = v88;
          v228 = v5;
          BitArray::resize((v92 + 30), v94);
          v5 = v228;
          v88 = v101;
          v80 = v100;
          v6 = v99;
          v89 = v238;
          LODWORD(v94) = v93 >> 2;
          v98 = v93 >> 7;
        }

        v223 = v92;
        *(*(v92 + 15) + 4 * v98) |= 1 << (v93 >> 2);
        v239 = (v97 + 12 * v94);
        v229 = v239[2];
        if (v229 == 1)
        {
          v102 = v96 + 56 * v239[5];
          if (!*(v102 + 40) && *(v102 + 4) <= v5 && *(v102 + 8) <= DWORD1(v5) && *(v102 + 12) <= v88 && *(v102 + 16) >= v89 && *(v102 + 20) >= HIDWORD(v89) && *(v102 + 24) >= v91)
          {
            v134 = 1 << (v93 >> 2);
            if (v98 >= v92[1330])
            {
              BitArray::resize((v92 + 1328), v218[0]);
              v98 = v233;
            }

            *(*(v92 + 664) + 4 * v98) &= ~v134;
            Region::updateObject(*(v102 + 32), v241, v239[4]);
            v79 = *v220;
            goto LABEL_159;
          }
        }

        if (v95)
        {
          v103 = 0;
          v104 = 0;
          v105 = (v96 + 12);
          v106 = 1;
          do
          {
            v107 = v105[1];
            if (v107 >= v5)
            {
              v108 = *(v105 - 2);
              if (v89 >= v108)
              {
                v109 = v105[2];
                if (v109 >= DWORD1(v5))
                {
                  v110 = *(v105 - 1);
                  if (HIDWORD(v89) >= v110)
                  {
                    v111 = v105[3];
                    if (v111 >= v88 && v91 >= *v105)
                    {
                      v112 = 0;
                      if (v108 <= v5 && v110 <= DWORD1(v5))
                      {
                        v112 = 0;
                        if (*v105 <= v88)
                        {
                          v113 = vcgt_u32(v89, __PAIR64__(v109, v107));
                          if ((v113.i8[0] & 1) == 0 && (v113.i8[4] & 1) == 0)
                          {
                            v112 = (v111 >= v91) & v106;
                          }
                        }
                      }

                      v247.i32[v104++] = v103;
                      v106 = v112;
                    }
                  }
                }
              }
            }

            ++v103;
            v105 += 14;
          }

          while (v95 != v103);
        }

        else
        {
          v104 = 0;
          v106 = 1;
        }

        v212 = v106;
        v114 = (v239 + 4);
        v115 = v229;
        v216 = v80;
        v214 = 1 << (v93 >> 2);
        if (v229 == 1)
        {
          v115 = 1;
        }

        else
        {
          v114 = (*&v92[4 * v229 + 38] + 4 * *v114);
          if (!v229)
          {
            v117 = 0;
            if (!v104)
            {
              goto LABEL_140;
            }

            goto LABEL_136;
          }
        }

        v116 = 0;
        v117 = 0;
        do
        {
          v118 = &v114[v116];
          v119 = v96 + 56 * *(v118 + 1);
          if (v104)
          {
            v120 = v104;
            v121 = &v247;
            while (v121->i32[0] != *(v118 + 1))
            {
              v121 = (v121 + 4);
              if (!--v120)
              {
                goto LABEL_132;
              }
            }

            v121->i32[0] = v247.i32[--v104];
            Region::updateObject(*(v119 + 32), v241, *v118);
            *&__src[4 * v117++] = *v118;
          }

          else
          {
LABEL_132:
            Region::removeObject(*(v119 + 32), *v118);
          }

          ++v116;
        }

        while (v116 != v115);
        if (!v104)
        {
LABEL_140:
          v6 = v225;
          goto LABEL_141;
        }

LABEL_136:
        v122 = v104;
        v123 = &v247;
        v6 = v225;
        do
        {
          v124 = *v123++;
          v125 = Region::addObject(*(v96 + 56 * v124 + 32), v241, v93, v93 & 1);
          v126 = &__src[4 * v117];
          *v126 = v125;
          v126[1] = v124;
          ++v117;
          --v122;
        }

        while (v122);
LABEL_141:
        v79 = *v220;
        if (v117 == v229)
        {
          v80 = v216;
          if (!v229)
          {
            v239[2] = 0;
            v127 = v223;
            goto LABEL_151;
          }

          memcpy(v114, __src, 4 * v229);
          v127 = v223;
          v128 = v239;
        }

        else
        {
          v80 = v216;
          v127 = v223;
          if (v229 >= 2)
          {
            v129 = *(v239 + 2);
            v130 = &v223[4 * v229];
            *(*&v223[16 * v229 + 152] + 4 * v129) = *(v130 + 1066);
            *(v130 + 1066) = v129;
          }

          v128 = v239;
          MBP::storeHandles(v223, v239, v117, __src);
        }

        v128[2] = v117;
        if (v229 && !v117)
        {
          *(v128 + 2) = v93;
          MBP::addToOutOfBoundsArray(v127, *v128);
          v131 = v93 >> 7;
          goto LABEL_155;
        }

LABEL_151:
        v131 = v93 >> 7;
        if (v117 != 0 && (v212 & 1) != 0)
        {
          if (v233 >= *(v127 + 5320))
          {
            BitArray::resize((v127 + 5312), v218[0]);
            v131 = v93 >> 7;
          }

          v132 = *(v127 + 5312);
          v133 = *(v132 + 4 * v131) & ~v214;
          goto LABEL_158;
        }

LABEL_155:
        if (v131 >= *(v127 + 5320))
        {
          BitArray::resize((v127 + 5312), v218[0]);
          v131 = v93 >> 7;
        }

        v132 = *(v127 + 5312);
        v133 = *(v132 + 4 * v131) | v214;
LABEL_158:
        *(v132 + 4 * v131) = v133;
LABEL_159:
        --v80;
      }

      while (v80);
    }
  }

  v135 = *(v6 + 136);
  v136 = *v135;
  if (!v136)
  {
    return;
  }

  v137 = 0;
  v138 = *(v135 + 2);
  v224 = *v135;
  v240 = v138;
  do
  {
    v139 = *(v138 + 56 * v137 + 32);
    if (!v139)
    {
      goto LABEL_265;
    }

    v140 = *(v139 + 192);
    if (v140)
    {
      if ((*(v139 + 280) & 1) == 0)
      {
        v141 = *(v139 + 196);
        goto LABEL_218;
      }
    }

    else if ((*(v139 + 280) & 1) == 0)
    {
      goto LABEL_265;
    }

    *(v139 + 280) = 0;
    v142 = *(v139 + 140);
    if (!v142)
    {
      if (*(v139 + 200))
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
      }

      *(v139 + 200) = 0;
      *(v139 + 208) = 0;
      goto LABEL_217;
    }

    if ((16 * v142) > 0x2000)
    {
      v143 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))();
    }

    else
    {
      v143 = &v247;
    }

    v144 = 0;
    v145 = 0;
    v146 = 0;
    v147 = 0;
    v148 = &v143->u32[v142];
    v149 = v143 + 12 * v142;
    v150 = v143 + 8 * v142;
    do
    {
      if (v145 >> 5 >= *(v139 + 208))
      {
        v151 = *(v139 + 152);
      }

      else
      {
        v151 = *(v139 + 152);
        if ((*(*(v139 + 200) + 4 * (v145 >> 5)) >> v145))
        {
          v143->i32[v146] = *(v151 + v144);
          *&v150[4 * v146++] = v145;
          goto LABEL_184;
        }
      }

      v148[v147] = *(v151 + v144);
      *&v149[4 * v147++] = v145;
LABEL_184:
      ++v145;
      v144 += 24;
    }

    while (v142 != v145);
    v234 = v137;
    v245 = 0;
    *&__src[16] = 0u;
    v244 = 0u;
    v246 = 1;
    *&__src[8] = 0x80000000;
    v230 = v143;
    *__src = &unk_1F5D21400;
    if (v146 >= 0x400)
    {
      v152 = __src;
    }

    else
    {
      v152 = (v139 + 216);
    }

    if (v146 >= 0x400)
    {
      v153 = &__src[16];
    }

    else
    {
      v153 = (v139 + 232);
    }

    physx::Cm::RadixSortBuffered::Sort(v152);
    v154 = *v153;
    v155 = *(v139 + 136);
    if (v155)
    {
      v156 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 2 * v155, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhaseMBP.cpp", 791);
      v157 = 24 * (*(v139 + 136) + 2);
    }

    else
    {
      v156 = 0;
      v157 = 48;
    }

    v158 = physx::shdfnd::ReflectionAllocator<physx::Bp::IAABB>::allocate(v157, 793);
    v159 = -1;
    *(v158 + 24 * v142) = -1;
    v160 = v158;
    *(v158 + 24 * (v142 + 1)) = -1;
    if (v146)
    {
      v161 = v230;
      v159 = v230->u32[*v154];
      if (v147)
      {
        goto LABEL_196;
      }

LABEL_198:
      v162 = -1;
    }

    else
    {
      v161 = v230;
      if (!v147)
      {
        goto LABEL_198;
      }

LABEL_196:
      v162 = *v148;
    }

    v163 = 0;
    v164 = 0;
    v165 = 0;
    v166 = v158;
    do
    {
      if (v159 >= v162)
      {
        v167 = *&v149[4 * v165++];
        if (v165 >= v147)
        {
          v162 = -1;
        }

        else
        {
          v162 = v148[v165];
        }
      }

      else
      {
        v167 = *&v150[4 * v154[v164++]];
        if (v164 >= v146)
        {
          v159 = -1;
        }

        else
        {
          v159 = v161->u32[v154[v164]];
        }
      }

      v168 = *(*(v139 + 168) + 2 * v167);
      v169 = *(v139 + 152) + 24 * v167;
      v170 = *v169;
      *(v166 + 16) = *(v169 + 16);
      *v166 = v170;
      v166 += 24;
      *(v156 + 2 * v163) = v168;
      *(*(v139 + 128) + 8 * v168) = v163++;
    }

    while (v142 != v163);
    if (v161 != &v247)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }

    v136 = v224;
    v137 = v234;
    v138 = v240;
    if (*(v139 + 152))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }

    *(v139 + 152) = v160;
    if (*(v139 + 168))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }

    *(v139 + 168) = v156;
    if (*(v139 + 200))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }

    *(v139 + 200) = 0;
    *(v139 + 208) = 0;
    *__src = &unk_1F5D21400;
    physx::Cm::RadixSortBuffered::reset(__src);
LABEL_217:
    v141 = 0;
    v140 = *(v139 + 148);
    *(v139 + 281) = 1;
LABEL_218:
    *(v139 + 192) = 0;
    if (v141 != v140)
    {
      *(v139 + 281) = 1;
    }

    LODWORD(v171) = *(v139 + 148);
    if (!v171)
    {
      goto LABEL_232;
    }

    v172 = *(v139 + 160);
    v173 = *(v139 + 184);
    if (v140)
    {
      v174 = v140;
      v175 = *(v139 + 160);
      v176 = *(v139 + 184);
      do
      {
        v177 = *v175;
        v175 += 6;
        *v176++ = v177;
        --v174;
      }

      while (v174);
    }

    v178 = v171 - v140;
    v179 = *(v139 + 281);
    if (v171 != v140 && *(v139 + 281))
    {
      v180 = v140;
      v181 = v171 - v140;
      do
      {
        *(v173 + 4 * v180) = *(v172 + 24 * v180);
        ++v180;
        --v181;
      }

      while (v181);
    }

    *(v139 + 192) = v140;
    if (!v140)
    {
      LOBYTE(v171) = 0;
LABEL_232:
      *(v139 + 48) = 0;
      *(v139 + 196) = 0;
      *(v139 + 281) = 1;
      goto LABEL_264;
    }

    *(v139 + 196) = v140;
    if (v171 == v140)
    {
      v182 = 0;
      v183 = 0;
      *(v139 + 281) = 1;
    }

    else if (v179)
    {
      physx::Cm::RadixSortBuffered::Sort(v139 + 216);
      v184 = *(v139 + 232);
      v183 = *(v139 + 13096);
      if (*(v139 + 13088) < v178)
      {
        if (v183 != v139 + 12576 && v183)
        {
          (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, *(v139 + 13096));
          *(v139 + 13096) = 0;
        }

        v185 = *(v139 + 13104);
        if (v185 != v139 + 288 && v185)
        {
          (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
          *(v139 + 13104) = 0;
        }

        if ((v178 + 2) > 0x100)
        {
          *(v139 + 13104) = physx::shdfnd::ReflectionAllocator<physx::Bp::IAABB>::allocate(24 * (v178 + 2), 1260);
          v183 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 2 * v178, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhaseMBP.cpp", 1261);
        }

        else
        {
          *(v139 + 13104) = v139 + 288;
          v183 = v139 + 12576;
        }

        *(v139 + 13096) = v183;
        *(v139 + 13088) = v178;
      }

      v186 = 0;
      v182 = *(v139 + 13104);
      v187 = v182;
      do
      {
        v188 = *(v184 + 4 * v186) + v140;
        v189 = (v172 + 24 * v188);
        v190 = *v189;
        *(v187 + 16) = *(v189 + 2);
        *v187 = v190;
        v187 += 24;
        *(v183 + 2 * v186++) = *(*(v139 + 176) + 2 * v188);
      }

      while (v178 != v186);
      *(v182 + 24 * v178) = -1;
      *(v182 + 24 * (v178 + 1)) = -1;
      *(v139 + 281) = 0;
    }

    else
    {
      v182 = *(v139 + 13104);
      v183 = *(v139 + 13096);
    }

    physx::Cm::RadixSortBuffered::Sort(v139 + 216);
    v191 = *(v139 + 232);
    v192 = *(v139 + 13112);
    if (*(v139 + 13092) < v140)
    {
      v193 = v139 + 6432;
      if (v192 != v139 + 6432 && v192)
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
        *(v139 + 13112) = 0;
      }

      if (v140 + 2 >= 0x101)
      {
        v193 = physx::shdfnd::ReflectionAllocator<physx::Bp::IAABB>::allocate(24 * (v140 + 2), 1277);
      }

      *(v139 + 13112) = v193;
      *(v139 + 13092) = v140;
      v192 = v193;
    }

    v194 = 0;
    v171 = *(v139 + 240);
    v195 = v192;
    do
    {
      v196 = *(v191 + 4 * v194);
      v197 = (v172 + 24 * v196);
      v198 = *v197;
      *(v195 + 16) = *(v197 + 2);
      *v195 = v198;
      v195 += 24;
      *(v171 + 2 * v194++) = *(*(v139 + 176) + 2 * v196);
    }

    while (v140 != v194);
    *(v192 + 24 * v140) = -1;
    *(v192 + 24 * (v140 + 1)) = -1;
    v199 = *(v139 + 128);
    *v139 = v199;
    *(v139 + 8) = v192;
    *(v139 + 16) = v182;
    *(v139 + 24) = v171;
    *(v139 + 32) = v183;
    *(v139 + 40) = v140;
    *(v139 + 44) = v178;
    *(v139 + 48) = 1;
    LODWORD(v171) = *(v139 + 192);
    if (v171)
    {
      v200 = *(v139 + 140);
      v138 = v240;
      if (v200)
      {
        v201 = *(v139 + 13112);
        *(v139 + 56) = v199;
        *(v139 + 64) = v171;
        *(v139 + 68) = v200;
        v171 = *(v139 + 152);
        *(v139 + 72) = v201;
        *(v139 + 80) = v171;
        v202 = *(v139 + 240);
        LOBYTE(v171) = 1;
        *(v139 + 88) = *(v139 + 168);
        *(v139 + 96) = v202;
      }

      else
      {
        LOBYTE(v171) = 0;
      }
    }

    else
    {
      v138 = v240;
    }

LABEL_264:
    *(v139 + 104) = v171;
LABEL_265:
    v137 = (v137 + 1);
  }

  while (v137 != v136);
}

void physx::Bp::BroadPhaseMBP::postUpdate(physx::Bp::BroadPhaseMBP *this)
{
  v2 = *(this + 17);
  v3 = *v2;
  if (v3)
  {
    v4 = *(v2 + 2) + 32;
    do
    {
      if (*v4)
      {
        *(*v4 + 192) = 0;
      }

      v4 += 56;
      --v3;
    }

    while (v3);
  }

  v5 = v2[14];
  if (v5)
  {
    v6 = 0;
    v7 = *(v2 + 4);
    do
    {
      v8 = (*(v2 + 10) + 8 * v6);
      v10 = *v8;
      v9 = v8[1];
      if ((v10 & 0x80000000) != 0)
      {
        v18 = *(v7 + 12 * ((v10 >> 2) & 0x1FFFFFFF));
        v19 = *(v7 + 12 * ((v9 >> 2) & 0x1FFFFFFF));
        if (v18 >= v19)
        {
          v20 = *(v7 + 12 * ((v9 >> 2) & 0x1FFFFFFF));
        }

        else
        {
          v20 = *(v7 + 12 * ((v10 >> 2) & 0x1FFFFFFF));
        }

        if (v18 <= v19)
        {
          v18 = *(v7 + 12 * ((v9 >> 2) & 0x1FFFFFFF));
        }

        v26 = __PAIR64__(v18, v20);
        v21 = *(this + 42);
        if ((*(this + 43) & 0x7FFFFFFFu) <= v21)
        {
          physx::shdfnd::Array<physx::Bp::BroadPhasePair,physx::shdfnd::ReflectionAllocator<physx::Bp::BroadPhasePair>>::growAndPushBack(this + 160, &v26);
        }

        else
        {
          *(*(this + 20) + 8 * v21) = v26;
          ++*(this + 42);
        }

        *v8 &= 0x7FFFFFFF7FFFFFFFuLL;
      }

      else if ((v9 & 0x80000000) != 0)
      {
        v8[1] = v9 & 0x7FFFFFFF;
      }

      else
      {
        v11 = v10 >> 7;
        v12 = v2[32];
        if (*v8 >> 7 < v12 && ((*(*(v2 + 15) + 4 * v11) >> (v10 >> 2)) & 1) != 0 || v8[1] >> 7 < v12 && ((*(*(v2 + 15) + 4 * (v9 >> 7)) >> (v9 >> 2)) & 1) != 0)
        {
          v13 = v2[36];
          if ((v11 >= v13 || ((*(*(v2 + 17) + 4 * v11) >> (v10 >> 2)) & 1) == 0) && (v8[1] >> 7 >= v13 || ((*(*(v2 + 17) + 4 * (v9 >> 7)) >> (v9 >> 2)) & 1) == 0))
          {
            v14 = *(v7 + 12 * (*v8 >> 2));
            v15 = *(v7 + 12 * (v8[1] >> 2));
            if (v14 >= v15)
            {
              v16 = *(v7 + 12 * (v8[1] >> 2));
            }

            else
            {
              v16 = *(v7 + 12 * (*v8 >> 2));
            }

            if (v14 <= v15)
            {
              v14 = *(v7 + 12 * (v8[1] >> 2));
            }

            v26 = __PAIR64__(v14, v16);
            v17 = *(this + 46);
            if ((*(this + 47) & 0x7FFFFFFFu) <= v17)
            {
              physx::shdfnd::Array<physx::Bp::BroadPhasePair,physx::shdfnd::ReflectionAllocator<physx::Bp::BroadPhasePair>>::growAndPushBack(this + 176, &v26);
            }

            else
            {
              *(*(this + 22) + 8 * v17) = v26;
              ++*(this + 46);
            }
          }

          v22 = (v10 | (v9 << 16)) + ~((v10 | (v9 << 16)) << 15);
          v23 = (9 * (v22 ^ (v22 >> 10))) ^ ((9 * (v22 ^ (v22 >> 10))) >> 6);
          physx::Bp::PairManagerData::removePair((v2 + 12), v10, v9, v2[13] & ((v23 + ~(v23 << 11)) ^ ((v23 + ~(v23 << 11)) >> 16)), v6);
          --v5;
          continue;
        }
      }

      ++v6;
    }

    while (v6 < v5);
  }

  physx::Bp::PairManagerData::shrinkMemory(v2 + 12);
  v24 = *(v2 + 15);
  v25 = 4 * v2[32];

  bzero(v24, v25);
}

void physx::Bp::BroadPhaseMBP::singleThreadedUpdate(uint64_t a1)
{
  physx::Bp::BroadPhaseMBP::setUpdateData(a1);
  MBP::findOverlaps(*(a1 + 136), *(a1 + 192), *(a1 + 200));

  physx::Bp::BroadPhaseMBP::postUpdate(a1);
}

uint64_t physx::Bp::BroadPhaseMBP::freeBuffers(physx::Bp::BroadPhaseMBP *this)
{
  v2 = *(this + 17);
  if (*(v2 + 136))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *(v2 + 136) = 0;
  *(v2 + 144) = 0;
  *(v2 + 5304) = 0;
  freeBuffer(this + 160);

  return freeBuffer(this + 176);
}

uint64_t freeBuffer(uint64_t result)
{
  v1 = result;
  if (*(result + 8) < 0x401u)
  {
    *(result + 8) = 0;
  }

  else
  {
    v2 = 0xC0000000C0000000;
    physx::shdfnd::Array<physx::Bp::BroadPhasePair,physx::shdfnd::ReflectionAllocator<physx::Bp::BroadPhasePair>>::resize(result, 0, &v2);
    result = physx::shdfnd::Array<physx::Bp::BroadPhasePair,physx::shdfnd::ReflectionAllocator<physx::Bp::BroadPhasePair>>::recreate(v1, *(v1 + 8));
    if ((*(v1 + 12) & 0x7FFFFC00) == 0)
    {
      return physx::shdfnd::Array<physx::Bp::BroadPhasePair,physx::shdfnd::ReflectionAllocator<physx::Bp::BroadPhasePair>>::recreate(v1, 0x400u);
    }
  }

  return result;
}

uint64_t physx::Bp::BroadPhaseMBP::shiftOrigin(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 136);
  v5 = *v4;
  v6 = *(v4 + 2);
  if (v5)
  {
    v7 = *(a2 + 4);
    *v8.f32 = vzip1_s32(*a2, v7);
    v8.i32[2] = vdup_lane_s32(v7, 1).u32[0];
    v8.i32[3] = v8.i32[0];
    v9 = v6 + 20;
    do
    {
      if (*(v9 + 12))
      {
        v10 = vaddq_s32(*(v9 - 16), *(v9 - 16));
        v11 = vbslq_s8(vcltzq_s32(v10), (*&v10 & __PAIR128__(0x7FFFFFFF7FFFFFFFLL, 0x7FFFFFFF7FFFFFFFLL)), vmvnq_s8(v10));
        v12 = vsubq_f32(v11, v8);
        *(v9 - 16) = vshrq_n_u32(vbslq_s8(vcltzq_s32(v12), vmvnq_s8(v12), vnegq_f32(vabdq_f32(v11, v8))), 1uLL);
        *v11.f32 = vadd_s32(*v9, *v9);
        *v11.f32 = vbsl_s8(vcltz_s32(*v11.f32), (v11.i64[0] & 0x7FFFFFFF7FFFFFFFLL), vmvn_s8(*v11.f32));
        *v12.i8 = vsub_f32(*v11.f32, v7);
        *v9 = vshr_n_u32(vbsl_s8(vcltz_s32(*v12.i8), vmvn_s8(*v12.i8), vneg_f32(vabd_f32(*v11.f32, v7))), 1uLL);
      }

      v9 += 56;
      --v5;
    }

    while (v5);
  }

  v13 = v4[10];
  if (v13)
  {
    v14 = 0;
    v15 = v4 + 38;
    v16 = *(v4 + 4);
    do
    {
      v17 = (v16 + 12 * v14);
      result = *(v17 + 2);
      if (*(v17 + 2))
      {
        v20 = *v17;
        v18 = v17 + 2;
        v19 = v20;
        if (result == 1)
        {
          result = 1;
        }

        else
        {
          v18 = (*&v15[4 * result] + 4 * *v18);
        }

        v21 = a3 + 24 * v19;
        v22 = (a4 + 4 * v19);
        v23 = vld1q_dup_f32(v22);
        v24 = vsubq_f32(*v21, v23);
        v24.i32[3] = vaddq_f32(*v21, v23).i32[3];
        v25 = vshrq_n_u32(vbslq_s8(vcltzq_s32(v24), vmvnq_s8(v24), vnegq_f32(vabsq_f32(v24))), 1uLL);
        *v23.f32 = vadd_f32(*(v21 + 16), *v23.f32);
        v26 = vshr_n_u32(vbsl_s8(vcltz_s32(*v23.f32), vmvn_s8(*v23.f32), vneg_f32(vabs_f32(*v23.f32))), 1uLL);
        v27 = v18 + 1;
        do
        {
          v28 = *(v6 + 56 * *v27 + 32);
          if (*(*(v28 + 128) + 8 * *(v27 - 1) + 4))
          {
            v29 = 152;
          }

          else
          {
            v29 = 160;
          }

          v30 = *(v28 + v29) + 24 * *(*(v28 + 128) + 8 * *(v27 - 1));
          *v30 = v25;
          *(v30 + 16) = v26;
          v27 += 2;
          --result;
        }

        while (result);
      }

      ++v14;
    }

    while (v14 != v13);
  }

  return result;
}

physx::Bp::BroadPhaseSap *physx::Bp::BroadPhaseSap::BroadPhaseSap(physx::Bp::BroadPhaseSap *this, unsigned int a2, int a3, int a4, uint64_t a5)
{
  v7 = 0;
  *this = &unk_1F5D1C648;
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 12) = 0;
  *(this + 2) = &unk_1F5D1CE00;
  *(this + 3) = a5;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 26) = 0;
  *(this + 9) = &unk_1F5D1CE58;
  *(this + 10) = a5;
  *(this + 46) = 0;
  *(this + 47) = 0;
  *(this + 45) = 0;
  *(this + 96) = 0;
  *(this + 49) = 0;
  *(this + 50) = 0;
  *(this + 104) = 0;
  v8 = 0uLL;
  *(this + 51) = 0;
  do
  {
    v9 = this + v7;
    *(v9 + 60) = 0;
    *(v9 + 61) = 0;
    *(v9 + 124) = 0;
    *(v9 + 58) = &unk_1F5D1C858;
    *(v9 + 59) = 0;
    *(v9 + 63) = 0;
    *(v9 + 128) = -1;
    *(this + v7 + 520) = 0uLL;
    v7 += 72;
  }

  while (v7 != 216);
  *(this + 85) = a5;
  *(this + 59) = a5;
  *(this + 68) = a5;
  *(this + 77) = a5;
  *(this + 41) = 0;
  v10 = (a3 + a4 + 31) & 0xFFFFFFE0;
  *(this + 52) = v10;
  v11 = 8 * v10;
  if (!v11)
  {
    *(this + 27) = 0;
    v12 = (this + 216);
    goto LABEL_8;
  }

  *(this + 27) = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v11, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhaseSap.cpp", 69);
  v12 = (this + 216);
  v10 = *(this + 52);
  v13 = 8 * v10 + 15;
  if ((v13 & 0xFFFFFFF0) == 0)
  {
LABEL_8:
    v16 = 0;
    *(this + 28) = 0;
    v14 = (this + 224);
    goto LABEL_9;
  }

  *(this + 28) = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v13 & 0xFFFFFFF0, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhaseSap.cpp", 70);
  v14 = (this + 224);
  v10 = *(this + 52);
  v15 = 8 * v10 + 15;
  if ((v15 & 0xFFFFFFF0) != 0)
  {
    v16 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v15 & 0xFFFFFFF0, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhaseSap.cpp", 71);
    v10 = *(this + 52);
  }

  else
  {
    v16 = 0;
  }

LABEL_9:
  *(this + 29) = v16;
  if (!v10)
  {
    v22 = (this + 336);
    *(this + 84) = 2;
    *(this + 36) = 0;
    v24 = 16;
LABEL_17:
    v25 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v24, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhaseSap.cpp", 86);
    v21 = *v22;
    goto LABEL_19;
  }

  v17 = 0;
  v18 = *v12;
  v19 = *v14;
  v8.n128_u64[0] = 0xC0000000C0000000;
  do
  {
    *(v18 + 8 * v17) = 0xC0000000C0000000;
    *(v19 + 8 * v17) = 0xC0000000C0000000;
    *(v16 + 8 * v17++) = 0xC0000000C0000000;
    v20 = *(this + 52);
  }

  while (v17 < v20);
  v21 = 2 * v20 + 2;
  v22 = (this + 336);
  *(this + 84) = v21;
  if (((v20 + 15) & 0xFFFFFFF0) != 0)
  {
    v23 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, (v20 + 15) & 0xFFFFFFF0, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhaseSap.cpp", 85, v8);
    v21 = *v22;
  }

  else
  {
    v23 = 0;
  }

  *(this + 36) = v23;
  v24 = (4 * v21 + 15) & 0xFFFFFFF0;
  if (v24)
  {
    goto LABEL_17;
  }

  v25 = 0;
LABEL_19:
  *(this + 37) = v25;
  v26 = 8 * v21 + 15;
  if ((v26 & 0xFFFFFFF0) != 0)
  {
    v27 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v26 & 0xFFFFFFF0, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhaseSap.cpp", 87);
    v21 = *v22;
  }

  else
  {
    v27 = 0;
  }

  *(this + 38) = v27;
  v28 = 4 * v21 + 15;
  if ((v28 & 0xFFFFFFF0) == 0)
  {
    *(this + 30) = 0;
    goto LABEL_29;
  }

  v29 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v28 & 0xFFFFFFF0, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhaseSap.cpp", 89);
  v30 = 4 * *(this + 84) + 15;
  *(this + 30) = v29;
  if ((v30 & 0xFFFFFFF0) == 0)
  {
LABEL_29:
    *(this + 31) = 0;
    goto LABEL_30;
  }

  v31 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v30 & 0xFFFFFFF0, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhaseSap.cpp", 90);
  v32 = 4 * *(this + 84) + 15;
  *(this + 31) = v31;
  if ((v32 & 0xFFFFFFF0) == 0)
  {
LABEL_30:
    *(this + 32) = 0;
    goto LABEL_31;
  }

  v33 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v32 & 0xFFFFFFF0, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhaseSap.cpp", 91);
  v34 = 4 * *(this + 84) + 15;
  *(this + 32) = v33;
  if ((v34 & 0xFFFFFFF0) != 0)
  {
    v35 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v34 & 0xFFFFFFF0, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhaseSap.cpp", 92);
    v36 = 4 * *(this + 84) + 15;
    *(this + 33) = v35;
    if ((v36 & 0xFFFFFFF0) != 0)
    {
      v37 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v36 & 0xFFFFFFF0, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhaseSap.cpp", 93);
      v38 = (4 * *v22 + 15) & 0xFFFFFFF0;
    }

    else
    {
      v38 = 0;
      v37 = 0;
    }

    goto LABEL_32;
  }

LABEL_31:
  v38 = 0;
  v37 = 0;
  *(this + 33) = 0;
LABEL_32:
  *(this + 34) = v37;
  v39 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v38, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhaseSap.cpp", 94);
  v40 = *(this + 30);
  v44 = *(this + 31);
  *v40 = 0;
  v42 = *(this + 32);
  v41 = *(this + 33);
  *v41 = 1073741822;
  v40[1] = -1;
  v41[1] = 0x3FFFFFFF;
  v43 = *(this + 34);
  *v44 = 0;
  *v43 = 1073741822;
  v44[1] = -1;
  *(this + 35) = v39;
  v43[1] = 0x3FFFFFFF;
  *v42 = 0;
  *v39 = 1073741822;
  v42[1] = -1;
  v39[1] = 0x3FFFFFFF;
  LODWORD(v44) = *(this + 84);
  v45 = 4 * v44 + 15;
  if ((v45 & 0xFFFFFFF0) != 0)
  {
    v46 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v45 & 0xFFFFFFF0, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhaseSap.cpp", 104);
    LODWORD(v44) = *(this + 84);
    v47 = 4 * v44 + 15;
    *(this + 39) = v46;
    if ((v47 & 0xFFFFFFF0) != 0)
    {
      v48 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v47 & 0xFFFFFFF0, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhaseSap.cpp", 105);
      LODWORD(v44) = *(this + 84);
      v46 = *(this + 39);
    }

    else
    {
      v48 = 0;
    }
  }

  else
  {
    v46 = 0;
    v48 = 0;
    *(this + 39) = 0;
  }

  *(this + 40) = v48;
  if (v44 >= 2)
  {
    v49 = 1;
    v50 = v46;
    do
    {
      *v50++ = v49;
      v48[v49] = v49 - 1;
      v44 = *v22;
      ++v49;
    }

    while (v49 < v44);
  }

  *(v46 + 4 * (v44 - 1)) = v44 - 1;
  *v48 = 0;
  if (a2 <= 0x40)
  {
    v51 = 64;
  }

  else
  {
    v51 = a2;
  }

  *(this + 85) = v51;
  v52 = 4 * v51 + 15;
  v53 = v52 & 0xFFFFFFF0;
  if ((v52 & 0xFFFFFFF0) != 0)
  {
    *(this + 45) = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v53, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhaseSapAux.cpp", 103);
    v54 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v53, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhaseSapAux.cpp", 104);
  }

  else
  {
    v54 = 0;
    *(this + 45) = 0;
  }

  *(this + 46) = v54;
  v55 = 8 * v51 + 15;
  if ((v55 & 0xFFFFFFF0) != 0)
  {
    v56 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v55 & 0xFFFFFFF0, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhaseSapAux.cpp", 105);
  }

  else
  {
    v56 = 0;
  }

  *(this + 49) = v56;
  if (((v51 + 15) & 0xFFFFFFF0) != 0)
  {
    v57 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, (v51 + 15) & 0xFFFFFFF0, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhaseSapAux.cpp", 106);
  }

  else
  {
    v57 = 0;
  }

  *(this + 50) = v57;
  *(this + 95) = v51;
  *(this + 96) = v51;
  *(this + 103) = v51;
  *(this + 81) = this;
  *(this + 164) = 2;
  *(this + 72) = this;
  *(this + 146) = 1;
  *(this + 63) = this;
  *(this + 128) = 0;
  *(this + 83) = 0;
  *(this + 169) = 0;
  *(this + 74) = 0;
  *(this + 151) = 0;
  *(this + 65) = 0;
  *(this + 133) = 0;
  *(this + 24) = 0;
  *(this + 43) = 0;
  *(this + 44) = 0;
  *(this + 114) = 0;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  return this;
}

void physx::Bp::BroadPhaseSap::~BroadPhaseSap(physx::Bp::BroadPhaseSap *this)
{
  *this = &unk_1F5D1C648;
  if (*(this + 27))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  if (*(this + 28))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  if (*(this + 29))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  if (*(this + 30))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  if (*(this + 31))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  if (*(this + 32))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  if (*(this + 33))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  if (*(this + 34))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  if (*(this + 35))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  if (*(this + 39))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  if (*(this + 40))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  if (*(this + 37))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  if (*(this + 38))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  if (*(this + 36))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  if (*(this + 45))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  if (*(this + 46))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  if (*(this + 49))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  if (*(this + 50))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v2 = 0;
  *(this + 45) = 0;
  *(this + 46) = 0;
  *(this + 96) = 0;
  *(this + 47) = 0;
  *(this + 50) = 0;
  *(this + 51) = 0;
  *(this + 49) = 0;
  *(this + 104) = 0;
  *(this + 65) = 0;
  *(this + 133) = 0;
  *(this + 74) = 0;
  *(this + 151) = 0;
  *(this + 83) = 0;
  *(this + 169) = 0;
  *(this + 43) = 0;
  *(this + 53) = 0;
  *(this + 55) = 0;
  do
  {
    v3 = this + v2;
    *(v3 + 76) = &unk_1F5D1C1B0;
    *(v3 + 78) = 0;
    v2 -= 72;
  }

  while (v2 != -216);
  *(this + 9) = &unk_1F5D1C1B0;
  *(this + 11) = 0;
  *(this + 2) = &unk_1F5D1C1B0;
  *(this + 4) = 0;
}

{
  physx::Bp::BroadPhaseSap::~BroadPhaseSap(this);
  if (v1)
  {
    v2 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

    v2();
  }
}

void physx::Bp::BroadPhaseBatchUpdateWorkTask::~BroadPhaseBatchUpdateWorkTask(physx::Bp::BroadPhaseBatchUpdateWorkTask *this)
{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
}

{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
  JUMPOUT(0x1E6906520);
}

uint64_t physx::Bp::BroadPhaseSap::destroy(physx::Bp::BroadPhaseSap *this)
{
  (**this)(this);
  v1 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

  return v1();
}

uint64_t physx::Bp::BroadPhaseSap::resizeBuffers(physx::Bp::BroadPhaseSap *this)
{
  v2 = *(this + 85);
  *(this + 53) = physx::PxcScratchAllocator::alloc(*(this + 1), 8 * v2, 1);
  *(this + 109) = v2;
  *(this + 108) = 0;
  *(this + 55) = physx::PxcScratchAllocator::alloc(*(this + 1), 8 * v2, 1);
  *(this + 113) = v2;
  *(this + 112) = 0;
  *(this + 43) = physx::PxcScratchAllocator::alloc(*(this + 1), 4 * v2, 1);
  *(this + 89) = v2;
  *(this + 88) = 0;
  *(this + 65) = physx::PxcScratchAllocator::alloc(*(this + 1), 8 * v2, 1);
  *(this + 133) = v2;
  *(this + 132) = 0;
  *(this + 74) = physx::PxcScratchAllocator::alloc(*(this + 1), 8 * v2, 1);
  *(this + 151) = v2;
  *(this + 150) = 0;
  result = physx::PxcScratchAllocator::alloc(*(this + 1), 8 * v2, 1);
  *(this + 83) = result;
  *(this + 169) = v2;
  *(this + 168) = 0;
  return result;
}

uint64_t physx::PxcScratchAllocator::alloc(pthread_mutex_t **this, int a2, int a3)
{
  v5 = (a2 + 15) & 0xFFFFFFF0;
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_lock(*this);
  }

  v6 = this[1];
  v7 = *(this + 4);
  v8 = *(&v6->__sig + (v7 - 1));
  if (v8 - this[3] >= v5)
  {
    v9 = v8 - v5;
    v11 = v8 - v5;
    if ((*(this + 5) & 0x7FFFFFFFu) <= v7)
    {
      physx::shdfnd::Array<unsigned char *,physx::shdfnd::ReflectionAllocator<unsigned char *>>::growAndPushBack((this + 1), &v11);
      v9 = v11;
    }

    else
    {
      *(&v6->__sig + v7) = v9;
      *(this + 4) = v7 + 1;
    }
  }

  else
  {
    v9 = 0;
    if (v5 && a3)
    {
      v9 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v5, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevel/common/include/utils/PxcScratchAllocator.h", 99);
    }
  }

  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_unlock(*this);
  }

  return v9;
}

const void **physx::Bp::BroadPhaseSap::freeBuffers(physx::Bp::BroadPhaseSap *this)
{
  v2 = *(this + 53);
  if (v2)
  {
    physx::PxcScratchAllocator::free(*(this + 1), v2);
  }

  *(this + 53) = 0;
  *(this + 54) = 0;
  v3 = *(this + 55);
  if (v3)
  {
    physx::PxcScratchAllocator::free(*(this + 1), v3);
  }

  *(this + 55) = 0;
  *(this + 56) = 0;
  *(this + 114) = 0;
  v4 = *(this + 43);
  if (v4)
  {
    physx::PxcScratchAllocator::free(*(this + 1), v4);
  }

  *(this + 43) = 0;
  *(this + 44) = 0;
  v5 = *(this + 65);
  if (v5)
  {
    physx::PxcScratchAllocator::free(*(this + 1), v5);
  }

  *(this + 65) = 0;
  *(this + 66) = 0;
  v6 = *(this + 74);
  if (v6)
  {
    physx::PxcScratchAllocator::free(*(this + 1), v6);
  }

  *(this + 74) = 0;
  *(this + 75) = 0;
  v7 = *(this + 83);
  if (v7)
  {
    physx::PxcScratchAllocator::free(*(this + 1), v7);
  }

  *(this + 83) = 0;
  *(this + 84) = 0;

  return physx::Bp::SapPairManager::shrinkMemory(this + 45);
}

const void **physx::Bp::SapPairManager::shrinkMemory(const void **this)
{
  v1 = *(this + 12) | (*(this + 12) >> 1);
  v2 = v1 | (v1 >> 2) | ((v1 | (v1 >> 2)) >> 4);
  v3 = (v2 | (v2 >> 8) | ((v2 | (v2 >> 8)) >> 16)) + 1;
  v4 = *(this + 4);
  if (v3 != v4)
  {
    v5 = *(this + 6);
    if (v3 >= v5 || v4 != v5)
    {
      if (v3 <= v5)
      {
        v7 = *(this + 6);
      }

      else
      {
        v7 = v3;
      }

      *(this + 4) = v7;
      *(this + 14) = v7 - 1;
      v8 = v3 > v5 || v7 <= *(this + 5) >> 2 || v7 <= *(this + 13) >> 2;
      return physx::Bp::SapPairManager::reallocPairs(this, v8);
    }
  }

  return this;
}

uint64_t physx::Bp::BroadPhaseSap::shiftOrigin(uint64_t result)
{
  if (*(result + 328))
  {
    v1 = *(result + 240);
    v2 = *(result + 248);
    v3 = *(result + 272);
    v4 = *(result + 280);
    v6 = *(result + 256);
    v5 = *(result + 264);
    v7 = *(v1 + 4);
    v8 = *(v5 + 4);
    v9 = *(v2 + 4);
    v10 = *(v3 + 4);
    v11 = *(v6 + 4);
    v12 = *(v4 + 4);
    v68 = &v65;
    if (v7 >= 0)
    {
      v13 = ~v7;
    }

    else
    {
      v13 = v7 & 0x7FFFFFFF;
    }

    v67 = v13;
    v14 = v9 & 0x7FFFFFFF;
    if (v9 >= 0)
    {
      v14 = ~v9;
    }

    v66 = v14;
    v15 = v11 & 0x7FFFFFFF;
    if (v11 >= 0)
    {
      v15 = ~v11;
    }

    v65 = v15;
    if (v67 < 0)
    {
      v16 = ~v67;
    }

    else
    {
      v16 = v67 | 0x80000000;
    }

    v17 = v16 & 0xFFFFFFF0;
    v18 = v17 + 17;
    v19 = (v17 - 15) & 0xFFFFFFF0;
    if (v8)
    {
      v19 = v18;
    }

    *(v1 + 4) = v19;
    if (v66 < 0)
    {
      v20 = ~v66;
    }

    else
    {
      v20 = v66 | 0x80000000;
    }

    v21 = v20 & 0xFFFFFFF0;
    v22 = v21 + 17;
    v23 = (v21 - 15) & 0xFFFFFFF0;
    if (v10)
    {
      v23 = v22;
    }

    *(v2 + 4) = v23;
    if (v65 < 0)
    {
      v24 = ~v65;
    }

    else
    {
      v24 = v65 | 0x80000000;
    }

    v25 = v24 & 0xFFFFFFF0;
    v26 = v25 + 17;
    v27 = (v25 - 15) & 0xFFFFFFF0;
    if (v12)
    {
      v27 = v26;
    }

    *(v6 + 4) = v27;
    if ((*(result + 328) & 0x7FFFFFFF) != 0)
    {
      v28 = *(v4 + 4) & 1;
      v29 = *(v3 + 4) & 1;
      v30 = *(v2 + 4);
      v31 = *(v5 + 4) & 1;
      v32 = *(v1 + 4);
      v33 = 2;
      do
      {
        v34 = *(v5 + 4 * v33);
        v35 = *(v3 + 4 * v33);
        v36 = *(v4 + 4 * v33);
        v37 = *(v1 + 4 * v33);
        v38 = *(v2 + 4 * v33);
        v39 = *(v6 + 4 * v33);
        v65 = 0;
        v68 = &v65;
        if (v37 >= 0)
        {
          v40 = ~v37;
        }

        else
        {
          v40 = v37 & 0x7FFFFFFF;
        }

        v67 = v40;
        v41 = v38 & 0x7FFFFFFF;
        if (v38 >= 0)
        {
          v41 = ~v38;
        }

        v66 = v41;
        v42 = v39 & 0x7FFFFFFF;
        if (v39 >= 0)
        {
          v42 = ~v39;
        }

        v65 = v42;
        if (v67 < 0)
        {
          v43 = ~v67;
        }

        else
        {
          v43 = v67 | 0x80000000;
        }

        v44 = v43 & 0xFFFFFFF0;
        v45 = v44 - 15;
        v46 = v34 & 1;
        v47 = v44 + 17;
        v48 = v45 & 0xFFFFFFF0;
        if (!v46)
        {
          v47 = v48;
        }

        if (v66 < 0)
        {
          v49 = ~v66;
        }

        else
        {
          v49 = v66 | 0x80000000;
        }

        v50 = v49 & 0xFFFFFFF0;
        v51 = v50 - 15;
        v52 = v35 & 1;
        v53 = v50 + 17;
        v54 = v51 & 0xFFFFFFF0;
        if (!v52)
        {
          v53 = v54;
        }

        if (v42 < 0)
        {
          v55 = ~v42;
        }

        else
        {
          v55 = v42 | 0x80000000;
        }

        v56 = v55 & 0xFFFFFFF0;
        v57 = v56 - 15;
        v58 = v36 & 1;
        v59 = v56 + 17;
        v60 = v57 & 0xFFFFFFF0;
        if (!v58)
        {
          v59 = v60;
        }

        if (v31 == v46)
        {
          v61 = v32;
        }

        else
        {
          v61 = v32 + 1;
        }

        if (v47 >= v32)
        {
          v32 = v47;
        }

        else
        {
          v32 = v61;
        }

        if (v29 == v52)
        {
          v62 = v30;
        }

        else
        {
          v62 = v30 + 1;
        }

        if (v53 >= v30)
        {
          v30 = v53;
        }

        else
        {
          v30 = v62;
        }

        if (v28 == v58)
        {
          v63 = v27;
        }

        else
        {
          v63 = v27 + 1;
        }

        if (v59 >= v27)
        {
          v27 = v59;
        }

        else
        {
          v27 = v63;
        }

        *(v1 + 4 * v33) = v32;
        *(v2 + 4 * v33) = v30;
        *(v6 + 4 * v33) = v27;
        v31 = v46;
        v29 = v52;
        v28 = v58;
      }

      while (v33++ < (2 * *(result + 328)));
    }
  }

  return result;
}

uint64_t physx::Bp::BroadPhaseSap::update(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
    (*(*a6 + 40))(a6);
  }

  physx::Bp::BroadPhaseSap::setUpdateData(a1, a4);
  *(a1 + 8) = a3;
  physx::Bp::BroadPhaseSap::resizeBuffers(a1);
  *(a1 + 112) = a1;
  *(a1 + 56) = a1;
  *(a1 + 120) = a2;
  *(a1 + 64) = a2;
  *(a1 + 104) = 1;
  *(a1 + 96) = a5;
  if (a5)
  {
    (*(*a5 + 32))(a5);
    *(a1 + 88) = *(*(a1 + 96) + 16);
  }

  v12 = *(a1 + 72);
  v11 = a1 + 72;
  *(v11 - 24) = 1;
  *(v11 - 32) = v11;
  (*(v12 + 32))(v11);
  *(v11 - 40) = *(*(v11 - 32) + 16);
  (*(**(v11 + 16) + 144))(*(v11 + 16), v11);
  v13 = *(**(v11 - 40) + 144);

  return v13();
}

void physx::Bp::BroadPhaseSap::setUpdateData(uint64_t a1, uint64_t a2)
{
  *(a1 + 128) = *a2;
  v3 = *(a2 + 8);
  *(a1 + 136) = v3;
  *(a1 + 160) = *(a2 + 16);
  *(a1 + 168) = *(a2 + 24);
  *(a1 + 144) = *(a2 + 32);
  *(a1 + 152) = *(a2 + 40);
  *(a1 + 176) = *(a2 + 48);
  *(a1 + 192) = *(a2 + 64);
  v4 = *(a2 + 80);
  v5 = *(a1 + 208);
  if (v4 > v5)
  {
    v6 = 8 * v4 + 15;
    v7 = v6 & 0xFFFFFFF0;
    if ((v6 & 0xFFFFFFF0) != 0)
    {
      v8 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v7, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhaseSap.cpp", 540);
      v9 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v7, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhaseSap.cpp", 541);
      v10 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v7, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhaseSap.cpp", 542);
    }

    else
    {
      v9 = 0;
      v8 = 0;
      v10 = 0;
    }

    memcpy(v8, *(a1 + 216), (8 * v5));
    memcpy(v9, *(a1 + 224), (8 * v5));
    memcpy(v10, *(a1 + 232), (8 * v5));
    v11.n128_u64[0] = 0xC0000000C0000000;
    do
    {
      *(v8 + v5) = 0xC0000000C0000000;
      *(v9 + v5) = 0xC0000000C0000000;
      *(v10 + v5++) = 0xC0000000C0000000;
    }

    while (v4 != v5);
    if (*(a1 + 216))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(v11);
    }

    if (*(a1 + 224))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(v11);
    }

    if (*(a1 + 232))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(v11);
    }

    *(a1 + 216) = v8;
    *(a1 + 224) = v9;
    *(a1 + 232) = v10;
    *(a1 + 208) = v4;
    if (*(a1 + 288))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(v11);
    }

    if (((v4 + 15) & 0xFFFFFFF0) != 0)
    {
      v12 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, (v4 + 15) & 0xFFFFFFF0, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhaseSap.cpp", 567, v11);
    }

    else
    {
      v12 = 0;
    }

    *(a1 + 288) = v12;
    v3 = *(a1 + 136);
  }

  v13 = 2 * (*(a1 + 328) + v3);
  v14 = (v13 + 2);
  if (v14 > *(a1 + 336))
  {
    v15 = 4 * v14 + 15;
    v16 = &re::introspect_BOOL(BOOL)::info;
    v17 = v15 & 0xFFFFFFF0;
    if ((v15 & 0xFFFFFFF0) != 0)
    {
      __dst = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v17, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhaseSap.cpp", 575);
      v18 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v17, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhaseSap.cpp", 576);
      v19 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v17, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhaseSap.cpp", 577);
      v32 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v17, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhaseSap.cpp", 578);
      v31 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v17, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhaseSap.cpp", 579);
      v16 = &re::introspect_BOOL(BOOL)::info;
      v20 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v17, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhaseSap.cpp", 580);
    }

    else
    {
      v31 = 0;
      v32 = 0;
      v19 = 0;
      __dst = 0;
      v18 = 0;
      v20 = 0;
    }

    if (*(a1 + 312))
    {
      (*(*(v16[428] + 24) + 24))();
    }

    if (*(a1 + 320))
    {
      (*(*(v16[428] + 24) + 24))();
    }

    if (v17)
    {
      *(a1 + 312) = (*(*(v16[428] + 24) + 16))();
      v21 = *(*(v16[428] + 24) + 16);
      v22 = v17;
      v23 = v21();
      v24 = *(a1 + 312);
    }

    else
    {
      v22 = v17;
      v24 = 0;
      v23 = 0;
      *(a1 + 312) = 0;
    }

    *(a1 + 320) = v23;
    v25 = 1;
    v26 = v24;
    do
    {
      *v26++ = v25;
      v23[v25] = v25 - 1;
      ++v25;
    }

    while (v25 != v14);
    v24[v13 | 1] = v13 | 1;
    *v23 = 0;
    memcpy(__dst, *(a1 + 240), (8 * *(a1 + 328) + 8));
    memcpy(v18, *(a1 + 248), (8 * *(a1 + 328) + 8));
    memcpy(v19, *(a1 + 256), (8 * *(a1 + 328) + 8));
    memcpy(v32, *(a1 + 264), (8 * *(a1 + 328) + 8));
    memcpy(v31, *(a1 + 272), (8 * *(a1 + 328) + 8));
    memcpy(v20, *(a1 + 280), (8 * *(a1 + 328) + 8));
    if (*(a1 + 240))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    if (*(a1 + 248))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    if (*(a1 + 256))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    if (*(a1 + 264))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    if (*(a1 + 272))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    if (*(a1 + 280))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    *(a1 + 240) = __dst;
    *(a1 + 248) = v18;
    *(a1 + 256) = v19;
    *(a1 + 264) = v32;
    *(a1 + 272) = v31;
    *(a1 + 280) = v20;
    *(a1 + 336) = v14;
    if (*(a1 + 296))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    if (*(a1 + 304))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    if (v22)
    {
      v27 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v22, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhaseSap.cpp", 619);
    }

    else
    {
      v27 = 0;
    }

    *(a1 + 296) = v27;
    v28 = (8 * v14);
    if (v28)
    {
      v29 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v28, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevelaabb/src/BpBroadPhaseSap.cpp", 620);
    }

    else
    {
      v29 = 0;
    }

    *(a1 + 304) = v29;
  }

  bzero(*(a1 + 288), *(a1 + 208));
  if (*(a1 + 168))
  {
    v30 = 0;
    do
    {
      *(*(a1 + 288) + *(*(a1 + 160) + 4 * v30++)) = 1;
    }

    while (v30 < *(a1 + 168));
  }

  *(a1 + 328) += *(a1 + 136);
}

void physx::Bp::BroadPhaseSap::singleThreadedUpdate(physx::Bp::BroadPhaseSap *a1, uint64_t a2, uint64_t a3)
{
  physx::Bp::BroadPhaseSap::setUpdateData(a1, a3);
  *(a1 + 1) = a2;
  physx::Bp::BroadPhaseSap::resizeBuffers(a1);
  physx::Bp::BroadPhaseSap::update(a1);

  physx::Bp::BroadPhaseSap::postUpdate(a1, v5, v6, v7, v8, v9);
}

uint64_t physx::Bp::BroadPhaseSap::update(physx::Bp::BroadPhaseSap *this)
{
  physx::Bp::BroadPhaseSap::batchRemove(this);
  (*(*(this + 58) + 64))();
  (*(*(this + 67) + 64))();
  v2 = *(*(this + 76) + 64);

  return v2();
}

void physx::Bp::BroadPhaseSap::postUpdate(physx::Bp::BroadPhaseSap *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, physx::Bp::DataArray *a6)
{
  v7 = 0;
  v17 = *(this + 43);
  v18 = *(this + 44);
  v8 = this + 464;
  v9 = (this + 360);
  do
  {
    v10 = &v8[72 * v7];
    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = (*(v10 + 7) + 4);
      do
      {
        v13 = *(v12 - 1);
        v14 = *v12;
        v15 = *(this + 1);
        if (v13 <= *v12)
        {
          physx::Bp::removePair(v13, v14, v15, v9, &v17, a6);
        }

        else
        {
          physx::Bp::addPair(v13, v14, v15, v9, &v17, a6);
        }

        v12 += 2;
        --v11;
      }

      while (v11);
    }

    ++v7;
  }

  while (v7 != 3);
  *(this + 43) = v17;
  *(this + 44) = v18;
  physx::Bp::BroadPhaseSap::batchCreate(this);
  physx::Bp::ComputeCreatedDeletedPairsLists(v16, *(this + 43), *(this + 88), *(this + 1), this + 53, this + 108, this + 109, this + 55, this + 112, this + 113, this + 114, v9);
  *(this + 83) = *(this + 82);
}

uint64_t physx::Bp::addPair(physx::Bp *this, unsigned int a2, pthread_mutex_t **a3, physx::PxcScratchAllocator *a4, physx::Bp::SapPairManager *a5, physx::Bp::DataArray *a6)
{
  result = physx::Bp::SapPairManager::AddPair(a4, this, a2);
  if (result)
  {
    v10 = result;
    v11 = *(a4 + 5);
    v12 = (result - *(a4 + 4)) >> 3;
    v13 = *(v11 + v12);
    if ((v13 & 8) != 0)
    {
      *(v11 + v12) = 0;
      *(*(a4 + 5) + ((result - *(a4 + 4)) >> 3)) |= 1u;
      v14 = result - *(a4 + 4);
      v15 = v14 >> 3;
      v16 = *(a5 + 2);
      if (v16 == *(a5 + 3))
      {
        result = physx::Bp::DataArray::Resize(a5, a3);
        v16 = *(a5 + 2);
        v14 = v10 - *(a4 + 4);
      }

      v17 = *a5;
      *(a5 + 2) = v16 + 1;
      *(v17 + 4 * v16) = v15;
      *(*(a4 + 5) + (v14 >> 3)) |= 4u;
      v11 = *(a4 + 5);
      v12 = (v10 - *(a4 + 4)) >> 3;
      v13 = *(v11 + v12);
    }

    *(v11 + v12) = v13 & 0xFD;
  }

  return result;
}

uint64_t physx::Bp::removePair(physx::Bp *this, unsigned int a2, pthread_mutex_t **a3, physx::PxcScratchAllocator *a4, physx::Bp::SapPairManager *a5, physx::Bp::DataArray *a6)
{
  result = physx::Bp::SapPairManager::FindPair(a4, this, a2);
  if (result)
  {
    v10 = result;
    v11 = *(a4 + 5);
    v12 = (result - *(a4 + 4)) >> 3;
    v13 = *(v11 + v12);
    if ((v13 & 1) == 0)
    {
      *(v11 + v12) = v13 | 1;
      v14 = result - *(a4 + 4);
      v15 = v14 >> 3;
      v16 = *(a5 + 2);
      if (v16 == *(a5 + 3))
      {
        result = physx::Bp::DataArray::Resize(a5, a3);
        v16 = *(a5 + 2);
        v14 = v10 - *(a4 + 4);
      }

      v17 = *a5;
      *(a5 + 2) = v16 + 1;
      *(v17 + 4 * v16) = v15;
      v11 = *(a4 + 5);
      v12 = v14 >> 3;
      v13 = *(v11 + v12);
    }

    *(v11 + v12) = v13 | 2;
  }

  return result;
}

void physx::Bp::BroadPhaseSap::batchCreate(physx::Bp::BroadPhaseSap *this)
{
  v1 = *(this + 34);
  if (!v1)
  {
    return;
  }

  v2 = *(this + 16);
  v3 = *(this + 22);
  v4 = 2 * v1;
  if ((2 * v1) > 0x20)
  {
    v5 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 4 * (2 * v1), "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/CmTmpMem.h", 56);
    v197 = v5;
    v6 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 4 * (2 * v1), "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/CmTmpMem.h", 56);
  }

  else
  {
    v5 = &v192;
    v197 = &v192;
    v6 = v189;
  }

  v7 = 0;
  v191 = v6;
  v187 = 0;
  v186 = 0u;
  v185 = 0u;
  v188 = 1;
  v184 = 0x80000000;
  v183 = &unk_1F5D21400;
  v170 = (this + 216);
  do
  {
    v8 = *(this + 25);
    v9 = 1;
    v10 = v2;
    v11 = v1;
    do
    {
      v12 = *v10++;
      v13 = *(v8 + 4 * v12);
      v14 = (v3 + 24 * v12 + 4 * v7);
      *&v178 = *v14 - v13;
      if (v178 < 0)
      {
        v15 = ~v178;
      }

      else
      {
        v15 = v178 | 0x80000000;
      }

      *(v5 + v9 - 1) = (v15 & 0xFFFFFFF0) - 16;
      *&v178 = v13 + v14[3];
      if (v178 < 0)
      {
        v16 = ~v178;
      }

      else
      {
        v16 = v178 | 0x80000000;
      }

      *(v5 + v9) = (v16 & 0xFFFFFFF0) + 20;
      v9 += 2;
      --v11;
    }

    while (v11);
    v184 |= 0x80000000;
    physx::Cm::RadixSortBuffered::Sort(&v183);
    v17 = *(&v185 + 1);
    if (v4)
    {
      v18 = v185;
      v19 = v4 - 1;
      v20 = v6;
      v21 = *(&v185 + 1);
      v22 = (2 * v1);
      do
      {
        v23 = *(v18 + 4 * v19);
        *v20++ = *(v5 + v23);
        *v21++ = v23 & 1 | (2 * *(v2 + ((2 * v23) & 0x1FFFFFFFCLL)));
        --v19;
        --v22;
      }

      while (v22);
    }

    v24 = 0;
    v25 = *(this + v7 + 30);
    v26 = *(this + v7 + 33);
    v27 = *(this + 82) - *(this + 34);
    v28 = v170[v7];
    v29 = (2 * v27) | 1;
    v30 = v4 + 2 * v27;
    v31 = v30 | 1;
    *(v25 + 4 * v31) = *(v25 + 4 * v29);
    v32 = 2 * v27;
    *(v26 + 4 * v31) = *(v26 + 4 * v29);
    v33 = (v26 + 4 * (2 * v27));
    v34 = (v25 + 4 * v32);
    v35 = 4 * v30;
    do
    {
      v36 = (v17 + 4 * v24);
      v37 = *v34;
      v38 = *&v6[4 * v24];
      if (*v36)
      {
        v39 = *v34 <= v38;
      }

      else
      {
        v39 = *v34 < v38;
      }

      if (v39)
      {
        v37 = *&v6[4 * v24];
      }

      else
      {
        v36 = v33;
      }

      *(v25 + v35) = v37;
      v40 = *v36;
      *(v26 + v35) = v40;
      *(v28 + ((4 * v40) & 0x3FFFFFFF8) + 4 * (v40 & 1)) = v30;
      if (v39)
      {
        if (++v24 >= v4)
        {
          break;
        }
      }

      else
      {
        --v34;
        --v33;
      }

      --v30;
      v35 -= 4;
    }

    while (v33 >= v26);
    ++v7;
  }

  while (v7 != 3);
  v183 = &unk_1F5D21400;
  physx::Cm::RadixSortBuffered::reset(&v183);
  v41 = &re::introspect_BOOL(BOOL)::info;
  if (v191 != v189 && v191)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v42 = this;
  if (v197 != &v192 && v197)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v43 = *(this + 34);
  v44 = *(this + 82);
  if ((v44 - v43) >= 9)
  {
    v45 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 4 * (v44 - v43), "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/CmTmpMem.h", 56);
  }

  else
  {
    v45 = v189;
  }

  v190 = v45;
  if (v43 >= 9)
  {
    v46 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 4 * v43, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/CmTmpMem.h", 56);
    v45 = v190;
  }

  else
  {
    v46 = &v183;
  }

  *&v186 = v46;
  v47 = 2 * *(this + 52) + 31;
  v48 = (v47 >> 3) & 0x1FFFFFFC;
  if (v47 >= 0x120)
  {
    v49 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v48, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/CmTmpMem.h", 56);
  }

  else
  {
    v49 = &v192;
  }

  v196 = v49;
  bzero(v49, v48);
  v50 = *(this + 34);
  v51 = *(this + 23);
  v52 = *(this + 33);
  v53 = (2 * *(this + 82));
  if (v50)
  {
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = *(this + 16);
    v59 = *(this + 28);
    v58 = *(this + 29);
    v60 = -1;
    v61 = -1;
    v62 = -1;
    v63 = *(this + 27);
    do
    {
      v65 = *v57++;
      v64 = v65;
      *(v49 + ((v65 >> 3) & 0x1FFFFFFC)) |= 1 << v65;
      v66 = (v63 + 8 * v65);
      v68 = *v66;
      v67 = v66[1];
      if (v60 >= v68)
      {
        v60 = v68;
      }

      if (v56 <= v67)
      {
        v56 = v67;
      }

      v69 = (v58 + 8 * v64);
      v71 = *v69;
      v70 = v69[1];
      if (v61 >= v71)
      {
        v61 = v71;
      }

      if (v55 <= v70)
      {
        v55 = v70;
      }

      v72 = (v59 + 8 * v64);
      v74 = *v72;
      v73 = v72[1];
      if (v62 >= v74)
      {
        v62 = v74;
      }

      if (v54 <= v73)
      {
        v54 = v73;
      }

      --v50;
    }

    while (v50);
  }

  else
  {
    v56 = 0;
    v55 = 0;
    v54 = 0;
    v62 = -1;
    v61 = -1;
    v60 = -1;
  }

  v164 = v45;
  v75 = 0;
  v76 = 0;
  if (v53)
  {
    v77 = 0;
    v78 = 0;
    v79 = (v52 + 4);
    do
    {
      v81 = *v79++;
      v80 = v81;
      if ((v81 & 1) == 0)
      {
        v82 = v80 >> 1;
        if ((*(v49 + ((v80 >> 4) & 0xFFFFFFC)) >> (v80 >> 1)))
        {
          v46[v76++] = v82;
          if (*(v51 + 4 * v82))
          {
            ++v77;
          }
        }

        else
        {
          v83 = (*(this + 27) + 8 * v82);
          v85 = *v83;
          v84 = v83[1];
          v86 = (*(this + 29) + 8 * v82);
          v88 = *v86;
          v87 = v86[1];
          v89 = (*(this + 28) + 8 * v82);
          v91 = *v89;
          v90 = v89[1];
          if (v56 >= v85 && v84 >= v60 && v55 >= v88 && v87 >= v61 && v54 >= v91 && v90 >= v62)
          {
            *&v45[4 * v75++] = v82;
            if (*(v51 + 4 * v82))
            {
              ++v78;
            }
          }
        }
      }

      --v53;
    }

    while (v53);
    v97 = v78 == 0;
    v98 = v77 == 0;
  }

  else
  {
    v97 = 1;
    v98 = 1;
  }

  if (v196 != &v192 && v196 != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  if (!v98)
  {
    physx::Bp::AuxData::AuxData(&v178, v76, v170, v46, *(this + 23));
    if (v182)
    {
      v159 = v75;
      v161 = v44;
      v100 = 0;
      LODWORD(v101) = 0;
      v102 = *(this + 24);
      v103 = *(this + 1);
      v173 = *(this + 43);
      v174 = *(this + 44);
      v104 = v180;
      v192 = v181;
      v193 = v181;
      v106 = v178;
      v105 = v179;
      v194 = v103;
      v195 = this + 360;
      v196 = &v173;
      v166 = v182;
      v168 = v180;
      do
      {
        v107 = *(v104 + 4 * v100);
        v108 = (v106 + 8 * v100);
        do
        {
          v109 = 8 * v101;
          v101 = (v101 + 1);
        }

        while (*(v106 + v109) < *v108);
        v110 = v108[1];
        if (*(v106 + 8 * v101) <= v110)
        {
          v111 = v101;
          v112 = v101;
          v113 = (v105 + 16 * v100);
          do
          {
            v114 = *(v104 + 4 * v111);
            if (v107 != v114 && *(v102 + (v114 & 3 | (4 * (v107 & 3)))) == 1)
            {
              v115 = (v105 + 16 * v111);
              v116.i64[0] = *v113;
              v117.i64[0] = v115[1];
              v117.i64[1] = v113[1];
              v116.i64[1] = *v115;
              if ((vmaxv_u16(vmovn_s32(vcgtq_u32(v116, v117))) & 1) == 0)
              {
                physx::Bp::addPair(&v192, v100, v112);
                v104 = v168;
              }
            }

            v111 = ++v112;
          }

          while (*(v106 + 8 * v111) <= v110);
        }

        if (v101 >= v166)
        {
          break;
        }

        ++v100;
      }

      while (v100 < v166);
      v42 = this;
      *(this + 43) = v173;
      *(this + 44) = v174;
      v41 = &re::introspect_BOOL(BOOL)::info;
      v44 = v161;
      v75 = v159;
    }

    goto LABEL_113;
  }

  if (!v97)
  {
    physx::Bp::AuxData::AuxData(&v178, v76, v170, v46, *(this + 23));
LABEL_113:
    if (v44 != v43 && v75)
    {
      physx::Bp::AuxData::AuxData(&v173, v75, v170, v164, *(v42 + 23));
      v163 = v182;
      if (v182)
      {
        v162 = v177;
        if (v177)
        {
          v118 = 0;
          v119 = 0;
          v120 = *(v42 + 1);
          v121 = *(v42 + 24);
          v198 = *(v42 + 43);
          v199 = *(v42 + 44);
          v122 = v178;
          v171 = v179;
          v123 = v180;
          v124 = v173;
          v167 = v121;
          v169 = v174;
          v195 = v42 + 360;
          v196 = &v198;
          v125 = v175;
          v156 = v176;
          v157 = v181;
          v192 = v181;
          v193 = v176;
          v158 = v42 + 360;
          v160 = v120;
          v194 = v120;
          v165 = v180;
          do
          {
            v126 = *(v123 + 4 * v118);
            v127 = (v122 + 8 * v118);
            v128 = v119 + 1;
            do
            {
              v129 = v119;
              v130 = v128;
              v131 = *(v124 + 8 * v119++);
              ++v128;
            }

            while (v131 < *v127);
            v132 = v127[1];
            if (v131 <= v132)
            {
              v133 = v129;
              v134 = (v171 + 16 * v118);
              do
              {
                v135 = *(v125 + 4 * v133);
                if (v126 != v135 && *(v121 + (v135 & 3 | (4 * (v126 & 3)))) == 1)
                {
                  v136 = (v169 + 16 * v133);
                  v137.i64[0] = *v134;
                  v138.i64[0] = v136[1];
                  v138.i64[1] = v134[1];
                  v137.i64[1] = *v136;
                  if ((vmaxv_u16(vmovn_s32(vcgtq_u32(v137, v138))) & 1) == 0)
                  {
                    physx::Bp::addPair(&v192, v118, v130 - 1);
                    v123 = v165;
                    v121 = v167;
                  }
                }

                v133 = v130;
                v139 = *(v124 + 8 * v130++);
              }

              while (v139 <= v132);
            }

            if (--v119 >= v162)
            {
              break;
            }

            ++v118;
          }

          while (v118 < v163);
          v140 = 0;
          v141 = 0;
          v192 = v156;
          v193 = v157;
          v194 = v160;
          v195 = v158;
          v196 = &v198;
          do
          {
            v142 = *(v125 + 4 * v140);
            v143 = (v124 + 8 * v140);
            v144 = v141 + 1;
            do
            {
              v145 = v141;
              v146 = v144;
              v147 = *(v122 + 8 * v141++);
              ++v144;
            }

            while (v147 <= *v143);
            v148 = v143[1];
            if (v147 <= v148)
            {
              v149 = v145;
              v150 = (v169 + 16 * v140);
              do
              {
                v151 = *(v123 + 4 * v149);
                if (v142 != v151 && *(v121 + (v151 & 3 | (4 * (v142 & 3)))) == 1)
                {
                  v152 = (v171 + 16 * v149);
                  v153.i64[0] = *v150;
                  v154.i64[0] = v152[1];
                  v154.i64[1] = v150[1];
                  v153.i64[1] = *v152;
                  if ((vmaxv_u16(vmovn_s32(vcgtq_u32(v153, v154))) & 1) == 0)
                  {
                    physx::Bp::addPair(&v192, v140, v146 - 1);
                    v123 = v165;
                    v121 = v167;
                  }
                }

                v149 = v146;
                v155 = *(v122 + 8 * v146++);
              }

              while (v155 <= v148);
            }

            if (--v141 >= v163)
            {
              break;
            }

            ++v140;
          }

          while (v140 < v162);
          *(this + 43) = v198;
          *(this + 44) = v199;
          v41 = &re::introspect_BOOL(BOOL)::info;
        }
      }

      physx::Bp::AuxData::~AuxData(&v173);
    }

    physx::Bp::AuxData::~AuxData(&v178);
  }

  if (v186 != &v183 && v186)
  {
    (*(*(v41[428] + 24) + 24))();
  }

  if (v190 != v189)
  {
    if (v190)
    {
      (*(*(v41[428] + 24) + 24))();
    }
  }
}