void physx::NpShape::setFlag(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float32x4_t a9, double a10, double a11, double a12, double a13, double a14, int32x4_t a15)
{
  if ((*(a1 + 56) & 0x40) != 0)
  {
    v17 = (*(a1 + 64) + 52);
  }

  else
  {
    v17 = (a1 + 144);
  }

  v23 = v15;
  v24 = v16;
  v18 = *v17;
  v19 = v18 | a2;
  v20 = v18 & ~a2;
  if (a3)
  {
    v20 = v19;
  }

  v22 = v20;
  physx::NpShape::setFlagsInternal(a1, &v22, a9, a10, a11, a12, a13, a14, a15, a3, a4, a5, a6, a7, a8, v21);
}

uint64_t physx::NpShape::getFlags@<X0>(uint64_t this@<X0>, _BYTE *a2@<X8>)
{
  if ((*(this + 56) & 0x40) != 0)
  {
    v2 = (*(this + 64) + 52);
  }

  else
  {
    v2 = (this + 144);
  }

  *a2 = *v2;
  return this;
}

uint64_t physx::NpShape::getMeshRefCountable(physx::NpShape *this)
{
  v1 = this + 152;
  v2 = *(this + 38);
  switch(v2)
  {
    case 6:
      if (*(this + 56))
      {
        v1 = (*(this + 8) + 64);
      }

      v3 = (v1 + 8);
      break;
    case 5:
      if (*(this + 56))
      {
        v1 = (*(this + 8) + 64);
      }

      v3 = (v1 + 40);
      break;
    case 4:
      if (*(this + 56))
      {
        v1 = (*(this + 8) + 64);
      }

      v3 = (v1 + 32);
      break;
    default:
      return 0;
  }

  v4 = *v3;
  if (v4)
  {
    return v4 + 16;
  }

  else
  {
    return 0;
  }
}

uint64_t physx::NpShapeManager::exportExtraData(uint64_t a1, uint64_t a2)
{
  result = physx::Cm::PtrTable::exportExtraData(a1, a2);
  v5 = *(a1 + 8);
  if (v5 >= 2)
  {
    (*(*a2 + 24))(a2, 16);
    do
    {
      v6 = 0xFFFFFFFFLL;
      result = (*(*a2 + 16))(a2, &v6, 8);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t physx::NpShapeManager::importExtraData(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2 >= 2)
  {
    v3 = (*(a2 + 8) + 15) & 0xFFFFFFFFFFFFFFF0;
    *(a2 + 8) = v3 + 8 * v2;
    *result = v3;
  }

  v4 = *(result + 24);
  if (v4 >= 2)
  {
    v5 = (*(a2 + 8) + 15) & 0xFFFFFFFFFFFFFFF0;
    *(a2 + 8) = v5 + 8 * v4;
    *(result + 16) = v5;
  }

  return result;
}

uint64_t physx::NpShapeManager::attachShape(physx::NpShapeManager *this, physx::NpShape *a2, physx::PxRigidActor *a3)
{
  v6 = *(physx::NpFactory::mInstance + 832);
  v7 = *(this + 4);
  physx::Cm::PtrTable::add(this, a2, v6);
  physx::Cm::PtrTable::add(this + 16, 0xFFFFFFFFLL, v6);
  v19 = *(&physx::NpActor::sLazyInitOffsets + *(a3 + 4) + 18);
  if (((*(a3 + v19 + 8) >> 30) - 1) <= 1)
  {
    v20 = *(a3 + v19);
    if (v20)
    {
      v21 = (*(a2 + 8) + 52);
      if ((*(a2 + 56) & 0x40) == 0)
      {
        v21 = a2 + 144;
      }

      if ((*v21 & 2) != 0)
      {
        physx::NpShapeManager::setupSceneQuery(this, (v20 + 8624), a3, v7, v12, v13, v14, v15, v16, v17, v18, v8, v9, v10, v11);
        v19 = *(&physx::NpActor::sLazyInitOffsets + *(a3 + 4) + 18);
      }
    }
  }

  result = physx::Scb::RigidObject::onShapeAttach(a3 + v19, (a2 + 48));
  atomic_fetch_add(a2 + 8, 1u);
  if ((*(a2 + 66) & 0x80000000) != 0)
  {
    *(a2 + 5) = a3;
  }

  atomic_fetch_add(a2 + 66, 1u);
  return result;
}

uint64_t physx::NpShapeManager::setupSceneQuery(physx::NpShapeManager *this, physx::Sq::SceneQueryManager *a2, const physx::PxRigidActor *a3, unsigned int a4, float32x4_t a5, double a6, double a7, double a8, double a9, double a10, int32x4_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v17 = this;
  if (*(this + 4) != 1)
  {
    v17 = *this;
  }

  result = physx::Sq::SceneQueryManager::addPrunerShape(a2, *(v17 + a4) + 48, a3 + *(&physx::NpActor::sLazyInitOffsets + *(a3 + 4) + 18), (*(a3 + 4) & 0xFFF7) == 5, *(this + 8), 0, 0, a15, a5, a6, a7, a8, a9, a10, a11);
  v19 = (this + 16);
  if (*(this + 12) != 1)
  {
    v19 = *v19;
  }

  v19[a4] = result;
  return result;
}

uint64_t physx::Scb::RigidObject::onShapeAttach(uint64_t this, physx::Scb::Shape *a2)
{
  v2 = *(this + 8);
  if (v2 >> 30)
  {
    v4 = this;
    v5 = *this;
    if (*(*this + 7689))
    {
      if (v2 >> 30 != 1)
      {
        Stream = *(this + 16);
        if (!Stream)
        {
          Stream = physx::Scb::Scene::getStream(v5, BYTE3(v2) & 0xF);
          *(v4 + 16) = Stream;
        }

        v7 = *(Stream + 144);
        if (v7)
        {
          v8 = 0;
          v9 = *(Stream + 136);
          while (*v9 != a2)
          {
            ++v8;
            v9 += 2;
            if (v7 == v8)
            {
              goto LABEL_21;
            }
          }
        }

        else
        {
          LODWORD(v8) = 0;
        }

        if (v8 == v7)
        {
LABEL_21:
          v20 = a2;
          v14 = *(Stream + 56);
          if ((*(Stream + 60) & 0x7FFFFFFFu) <= v14)
          {
            physx::shdfnd::Array<physx::Scb::Shape *,physx::shdfnd::InlineAllocator<32u,physx::shdfnd::ReflectionAllocator<physx::Scb::Shape *>>>::growAndPushBack(Stream + 8, &v20);
          }

          else
          {
            *(*(Stream + 48) + 8 * v14) = a2;
            *(Stream + 56) = v14 + 1;
          }
        }

        else
        {
          v15 = *(Stream + 136);
          v16 = v7 - 1;
          *(Stream + 144) = v16;
          v17 = (v15 + 16 * v16);
          v18 = *v17;
          v19 = v15 + 16 * v8;
          *(v19 + 8) = *(v17 + 8);
          *v19 = v18;
        }

        this = physx::Scb::Scene::scheduleForUpdate(*v4, v4);
        *(v4 + 8) |= 8u;
      }

      v12 = *(a2 + 2);
      if ((v12 & 0xF000000) == 0x1000000)
      {
        v13 = 0x40000000;
        goto LABEL_28;
      }
    }

    else
    {
      if (v2)
      {
        v10 = *(this + 16);
      }

      else
      {
        v10 = (*(&physx::Scb::Actor::sLazyInitOffsets + ((v2 >> 24) & 0xF) + 3) + this + 12);
      }

      if ((*v10 & 8) == 0)
      {
        atomic_fetch_add(a2 - 4, 1u);
        v11 = *(*(&physx::Scb::Actor::sLazyInitOffsets + (*(this + 11) & 0xF) + 3) + this);
        if (v11)
        {
          this = physx::Sc::Scene::addShape(v11[9], v11, (a2 + 32), 0);
        }
      }

      v12 = *(a2 + 2);
      if ((v12 & 0xF000000) == 0x1000000)
      {
        v13 = 0x80000000;
LABEL_28:
        *(a2 + 2) = v12 & 0x31FFFFFF | v13;
        *a2 = v5;
      }
    }
  }

  return this;
}

uint64_t physx::NpShapeManager::detachShape(physx::NpShapeManager *this, physx::NpShape *a2, physx::PxRigidActor *a3, char a4)
{
  v8 = *(this + 4);
  v9 = this;
  if (v8 != 1)
  {
    if (!*(this + 4))
    {
      return 0;
    }

    v9 = *this;
  }

  v10 = 0;
  while (*(v9 + v10) != a2)
  {
    if (v8 == ++v10)
    {
      return 0;
    }
  }

  v12 = a3 + *(&physx::NpActor::sLazyInitOffsets + *(a3 + 4) + 18);
  if (((*(v12 + 2) >> 30) - 1) <= 1)
  {
    v13 = *v12;
    if (v13)
    {
      v14 = (*(a2 + 8) + 52);
      if ((*(a2 + 56) & 0x40) == 0)
      {
        v14 = a2 + 144;
      }

      if ((*v14 & 2) != 0)
      {
        v15 = (this + 16);
        if (*(this + 12) != 1)
        {
          v15 = *v15;
        }

        physx::Sq::SceneQueryManager::removePrunerShape(v13 + 1078, *(this + 8), v15[v10]);
        if (*(this + 8) != -1 && *(this + 4) == 1)
        {
          *(this + 8) = -1;
          v16 = *(a3 + 4);
          if ((v16 & 0xFFFFFFF7) == 5 && (v16 | 8) == 0xD)
          {
            physx::Sc::BodySim::disableCompound(*(a3 + 16));
          }
        }
      }
    }
  }

  physx::Scb::RigidObject::onShapeDetach((a3 + *(&physx::NpActor::sLazyInitOffsets + *(a3 + 4) + 18)), (a2 + 48), a4, *(a2 + 8) == 1);
  v17 = *(physx::NpFactory::mInstance + 832);
  physx::Cm::PtrTable::replaceWithLast(this, v10, v17);
  physx::Cm::PtrTable::replaceWithLast(this + 2, v10, v17);
  atomic_fetch_add(a2 + 66, 0xFFFFFFFF);
  if ((*(a2 + 66) & 0x80000000) != 0)
  {
    *(a2 + 5) = 0;
  }

  if (atomic_fetch_add(a2 + 8, 0xFFFFFFFF) == 1)
  {
    (*(*(a2 + 3) + 16))(a2 + 24);
  }

  return 1;
}

void physx::Scb::RigidObject::onShapeDetach(physx::Scb::RigidObject *this, physx::Scb::Shape *a2, char a3, int a4)
{
  v4 = *(this + 2);
  if (v4 >> 30)
  {
    v8 = *this;
    if (*(*this + 7689))
    {
      if (v4 >> 30 != 1)
      {
        Stream = *(this + 2);
        if (!Stream)
        {
          Stream = physx::Scb::Scene::getStream(v8, BYTE3(v4) & 0xF);
          *(this + 2) = Stream;
          LODWORD(v4) = *(this + 2);
        }

        if ((v4 & 0x20) != 0)
        {
          v11 = *(Stream + 160);
          if (v11 == 1)
          {
            if (*(Stream + 152) != a2)
            {
              goto LABEL_28;
            }

            *(Stream + 160) = 0;
            goto LABEL_27;
          }

          if (!v11)
          {
            goto LABEL_27;
          }

          v14 = 0;
          v15 = (*&v8[976] + 8 * *(Stream + 152));
          v16 = *(Stream + 160);
          do
          {
            if (v15[v14] == a2)
            {
              v15[v14] = v15[--v16];
            }

            else
            {
              ++v14;
            }

            --v11;
          }

          while (v11);
          *(Stream + 160) = v14;
          if (!v14)
          {
LABEL_27:
            *(Stream + 152) = 0;
            *(this + 2) &= ~0x20u;
            goto LABEL_28;
          }

          if (v14 == 1)
          {
            *(Stream + 152) = *v15;
          }
        }

LABEL_28:
        v17 = *(Stream + 56);
        if (v17)
        {
          v18 = 0;
          while (*(*(Stream + 48) + 8 * v18) != a2)
          {
            if (v17 == ++v18)
            {
              goto LABEL_35;
            }
          }
        }

        else
        {
          LODWORD(v18) = 0;
        }

        if (v18 != v17)
        {
          v19 = *(Stream + 48);
          v20 = v17 - 1;
          *(Stream + 56) = v20;
          *(v19 + 8 * v18) = *(v19 + 8 * v20);
          v21 = *(a2 + 2);
          if ((v21 & 0xF000000) == 0x1000000)
          {
            v22 = v21 & 0x31FFFFFF | 0x80000000;
LABEL_48:
            *(a2 + 2) = v22;
            *a2 = v8;
          }

LABEL_49:
          physx::Scb::Scene::scheduleForUpdate(*this, this);
          *(this + 2) |= 8u;
          return;
        }

LABEL_35:
        if ((*(this + *(&physx::Scb::Actor::sLazyInitOffsets + (*(this + 11) & 0xF) + 3) + 12) & 8) != 0)
        {
          if (a4)
          {
            if ((*(a2 + 11) & 0x10) != 0)
            {
              physx::shdfnd::internal::HashSetBase<physx::Sc::BodySim const*,physx::shdfnd::Hash<physx::Sc::BodySim const*>,physx::shdfnd::NonTrackingAllocator,true>::erase(v8 + 967, a2);
              *(a2 + 2) &= ~0x10000000u;
            }

LABEL_46:
            v24 = *(a2 + 2);
            if ((v24 & 0xF000000) == 0x1000000)
            {
              v22 = v24 | 0xC0000000;
              goto LABEL_48;
            }

            goto LABEL_49;
          }

          *&v25 = a2;
          BYTE8(v25) = 0;
        }

        else
        {
          *&v25 = a2;
          BYTE8(v25) = a3;
        }

        v23 = *(Stream + 144);
        if ((*(Stream + 148) & 0x7FFFFFFFu) <= v23)
        {
          physx::shdfnd::Array<physx::Scb::RemovedShape,physx::shdfnd::InlineAllocator<64u,physx::shdfnd::ReflectionAllocator<physx::Scb::RemovedShape>>>::growAndPushBack(Stream + 64, &v25);
        }

        else
        {
          *(*(Stream + 136) + 16 * v23) = v25;
          ++*(Stream + 144);
        }

        goto LABEL_46;
      }
    }

    else
    {
      if (v4)
      {
        v12 = *(this + 2);
      }

      else
      {
        v12 = this + *(&physx::Scb::Actor::sLazyInitOffsets + ((v4 >> 24) & 0xF) + 3) + 12;
      }

      if ((*v12 & 8) == 0)
      {
        physx::Sc::RigidCore::removeShapeFromScene((this + *(&physx::Scb::Actor::sLazyInitOffsets + ((v4 >> 24) & 0xF) + 3)), (a2 + 32), a3);
        if (atomic_fetch_add(a2 - 4, 0xFFFFFFFF) == 1)
        {
          (*(*(a2 - 3) + 16))();
        }
      }
    }

    v13 = *(a2 + 2);
    if ((v13 & 0xF000000) == 0x1000000)
    {
      *(a2 + 2) = v13 & 0x31FFFFFF;
      *a2 = 0;
    }
  }
}

uint64_t physx::NpShapeManager::detachAll(physx::NpShapeManager *this, int32x2_t *a2, const physx::PxRigidActor *a3)
{
  v4 = *(this + 4);
  v5 = this;
  if (v4 != 1)
  {
    v5 = *this;
  }

  if (a2)
  {
    physx::NpShapeManager::teardownAllSceneQuery(this, a2 + 1080, a3);
  }

  if (v4)
  {
    do
    {
      v6 = *v5;
      atomic_fetch_add((*v5 + 264), 0xFFFFFFFF);
      if ((*(v6 + 264) & 0x80000000) != 0)
      {
        *(v6 + 40) = 0;
      }

      if (atomic_fetch_add((v6 + 32), 0xFFFFFFFF) == 1)
      {
        (*(*(v6 + 24) + 16))();
      }

      v5 = (v5 + 8);
      --v4;
    }

    while (v4);
  }

  v7 = *(physx::NpFactory::mInstance + 832);
  physx::Cm::PtrTable::clear(this, v7);

  return physx::Cm::PtrTable::clear(this + 16, v7);
}

void physx::NpShapeManager::getWorldBounds(physx::NpShapeManager *this@<X0>, const physx::PxRigidActor *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = this;
  v5 = *(this + 4);
  (*(*a2 + 152))(&v45, a2);
  if (*(v3 + 4) != 1)
  {
    v3 = *v3;
  }

  v15 = vdup_n_s32(0xFE7FFFFF);
  v16 = xmmword_1E3113BA0;
  if (v5)
  {
    do
    {
      v17 = *v3;
      v18 = *(*v3 + 56);
      if (v18)
      {
        v19 = *(v17 + 8) + 64;
      }

      else
      {
        v19 = v17 + 152;
      }

      v38 = v16;
      if ((v18 & 4) != 0)
      {
        v20 = *(v17 + 8);
      }

      else
      {
        v20 = (v17 + 112);
      }

      *&_D2 = v20[1].f32[0] + v20[1].f32[0];
      v21 = v20[1].f32[1] + v20[1].f32[1];
      _S4 = v20[1].f32[2] + v20[1].f32[2];
      *&v12 = (v47 * v47) + -0.5;
      *v13.i32 = v45;
      _Q7.i64[0] = v46;
      __asm
      {
        FMLA            S16, S4, V7.S[1]
        FMLA            S18, S2, V7.S[1]
        FMLA            S20, S16, V7.S[1]
      }

      v30 = v49 + (((v47 * _S18) + (v21 * *&v12)) + (*&v46 * _S16));
      v31 = *v20;
      v31.i32[3] = HIDWORD(v46);
      *&_D2 = ((v47 * (vmuls_lane_f32(v21, vnegq_f32(v31), 3) + (*&v46 * _S4))) + (*&_D2 * *&v12)) + (v45 * _S16);
      v32 = vextq_s8(vextq_s8(v13, v13, 4uLL), _Q7, 0xCuLL);
      v32.f32[3] = -v45;
      v33 = vmlaq_n_f32(vmulq_f32(vextq_s8(vdupq_laneq_s32(*v20, 3), *v20, 4uLL), v32), *v20, v47);
      v32.f32[3] = -*&v46;
      _Q7.f32[2] = v45;
      _Q7.i32[3] = v20->i64[1];
      v34 = vmlsq_f32(vmlaq_f32(vuzp2q_s32(vextq_s8(v33, v33, 4uLL), v33), vextq_s8(vextq_s8(*v20, *v20, 0xCuLL), *v20, 8uLL), v32), _Q7, v31);
      v35 = vzip1q_s32(v34, vextq_s8(v34, v34, 0xCuLL));
      v36 = vzip2q_s32(v35, v34);
      v39 = v36;
      v40 = v48 + *&_D2;
      v41 = v30;
      v42 = v50 + _S20;
      v36.i64[0] = 0;
      v10.i32[0] = 1.0;
      physx::Gu::computeBounds(&v43, v19, &v39, 0, v36, *&v10, _D2, *v35.i64, *v32.i64, v12, v13, v6, v7, v8, v9, v38.i8[0]);
      v37 = vmovn_s32(vcgtq_f32(v43, v38));
      _D2 = COERCE_DOUBLE(vmovn_s32(vcgtq_f32(v38, v43)));
      v37.i16[3] = HIWORD(_D2);
      v16 = vbslq_s8(vmovl_s16(v37), v38, v43);
      v10 = vcgt_f32(v15, v44);
      v15 = vbsl_s8(v10, v15, v44);
      v3 = (v3 + 8);
      --v5;
    }

    while (v5);
  }

  *a3 = v16;
  *(a3 + 16) = v15;
}

int32x2_t *physx::NpShapeManager::clearShapesOnRelease(int32x2_t *result, int32x2_t *a2)
{
  v3 = result;
  v4 = result[1].u16[0];
  if (v4 != 1)
  {
    if (!result[1].i16[0])
    {
      return result;
    }

    v3 = *result;
  }

  do
  {
    v5 = *v3;
    if ((*(*v3 + 59) & 0x10) != 0)
    {
      result = physx::shdfnd::internal::HashSetBase<physx::Sc::BodySim const*,physx::shdfnd::Hash<physx::Sc::BodySim const*>,physx::shdfnd::NonTrackingAllocator,true>::erase(a2 + 967, *&v5 + 48);
      *(*&v5 + 56) &= ~0x10000000u;
    }

    ++v3;
    --v4;
  }

  while (v4);
  return result;
}

uint64_t physx::NpShapeManager::teardownSceneQuery(physx::NpShapeManager *this, int32x2_t *a2, int a3)
{
  v5 = this + 16;
  v6 = this + 16;
  if (*(this + 12) != 1)
  {
    v6 = *v5;
  }

  result = physx::Sq::SceneQueryManager::removePrunerShape(a2, *(this + 8), *&v6[8 * a3]);
  if (*(this + 12) != 1)
  {
    v5 = *v5;
  }

  *&v5[8 * a3] = 0xFFFFFFFFLL;
  return result;
}

void physx::NpShapeManager::addBVHStructureShapes(physx::NpShapeManager *this, physx::Sq::SceneQueryManager *a2, const physx::PxRigidActor *a3, const physx::Gu::BVHStructure *a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v8 = *(&physx::NpActor::sLazyInitOffsets + *(a3 + 4) + 18);
  v9 = *(this + 4);
  v10 = 8 * v9;
  v37 = v9 > 0x80;
  if (v9 < 0x81)
  {
    v14 = v10;
    MEMORY[0x1EEE9AC00](this);
    v11 = (&v32 - ((v10 + 15) & 0xFFFF0));
    bzero(v11, v10);
    v36 = v11;
    v35 = v9 > 0x80;
    MEMORY[0x1EEE9AC00](v15);
    v12 = v11;
    bzero(v11, v14);
    v34 = v11;
    if (!v9)
    {
      v21 = 1;
      v22 = v8;
      goto LABEL_15;
    }

    v13 = v9;
  }

  else
  {
    v11 = physx::shdfnd::TempAllocator::allocate(v33, 8 * v9, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpShapeManager.cpp", 357);
    v36 = v11;
    v35 = v9 > 0x80;
    v12 = physx::shdfnd::TempAllocator::allocate(v33, 8 * v9, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpShapeManager.cpp", 358);
    v34 = v12;
    v13 = *(this + 4);
  }

  v16 = 0;
  v17 = 0;
  do
  {
    v18 = this;
    if (v13 != 1)
    {
      v18 = *this;
    }

    v19 = *(v18 + v16);
    if ((*(v19 + 56) & 0x40) != 0)
    {
      v20 = (*(v19 + 64) + 52);
    }

    else
    {
      v20 = (v19 + 144);
    }

    if ((*v20 & 2) != 0)
    {
      v11[v17++] = v19 + 48;
    }

    ++v16;
  }

  while (v9 != v16);
  v21 = 0;
  v22 = *(&physx::NpActor::sLazyInitOffsets + *(a3 + 4) + 18);
LABEL_15:
  v23 = *(*(a3 + v22 + *(&physx::Scb::Actor::sLazyInitOffsets + (*(a3 + v22 + 11) & 0xF) + 3)) + 88);
  *(this + 8) = v23;
  (*(*a3 + 152))(v33, a3);
  physx::Sq::SceneQueryManager::addCompoundShape(a2, a4, v23, v33, v12, v11, a3 + v8);
  if ((v21 & 1) == 0)
  {
    v24 = 0;
    v25 = 0;
    v26 = *(this + 4);
    do
    {
      v27 = this;
      if (v26 != 1)
      {
        v27 = *this;
      }

      v28 = *(v27 + v24);
      if ((*(v28 + 56) & 0x40) != 0)
      {
        v29 = (*(v28 + 64) + 52);
      }

      else
      {
        v29 = (v28 + 144);
      }

      if ((*v29 & 2) != 0)
      {
        v30 = this + 16;
        if (*(this + 12) != 1)
        {
          v30 = *(this + 2);
        }

        v31 = v12[v25++];
        *&v30[8 * v24] = v31;
      }

      ++v24;
    }

    while (v9 != v24);
  }

  if (v35)
  {
    physx::shdfnd::TempAllocator::deallocate(&v34, v12);
  }

  if (v9 >= 0x81)
  {
    physx::shdfnd::TempAllocator::deallocate(&v36, v11);
  }
}

void physx::NpShapeManager::visualize(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v463 = *MEMORY[0x1E69E9840];
  v8 = (*(*a3 + 560))(a3, 0);
  if (v8 != 0.0)
  {
    v9 = v8;
    v10 = *(a1 + 4);
    v417 = v10 != 1 && (a1 = *a1, v10) && (*(*a3 + 560))(a3, 14) != 0.0;
    if ((*(a3 + 8624) & 0x40) != 0)
    {
      v11 = (a3 + 8316);
    }

    else
    {
      v11 = (*(a3 + 1872) + 1888);
    }

    v12 = (*(*a3 + 560))(a3, 11);
    v409 = (*(*a3 + 560))(a3, 12);
    v13 = (*(*a3 + 560))(a3, 16);
    v15 = (*(*a3 + 560))(a3, 15);
    v16 = v15 != 0.0 || v409 != 0.0;
    v406 = v13;
    if (v13 != 0.0)
    {
      v16 = 1;
    }

    v416 = v11;
    v418 = v11[3];
    v419 = *v11;
    v421 = v16;
    v17 = *v11 <= v418 && v16;
    v14.n128_f32[0] = *v11;
    v18 = (*(*a3 + 560))(a3, 13, v14);
    (*(*a4 + 152))(&v437, a4);
    if (v10)
    {
      v29 = 0;
      v30 = v417;
      v31 = v417 || v17;
      v415 = v9 * v15;
      v32 = v9 * v18;
      v33 = vdup_n_s32(0xFE7FFFFF);
      v34 = -0.5;
      v422 = xmmword_1E3113BA0;
      v407 = a1;
      v414 = v10;
      v410 = v12;
      v420 = v417 || v17;
      v413 = v32;
      while (1)
      {
        v35 = a1[v29];
        v36 = *(v35 + 56);
        if ((v36 & 4) != 0)
        {
          v37 = *(v35 + 64);
        }

        else
        {
          v37 = (v35 + 112);
        }

        _S2 = v37[1].f32[0] + v37[1].f32[0];
        v39 = v37[1].f32[1] + v37[1].f32[1];
        _S4 = v37[1].f32[2] + v37[1].f32[2];
        *&v25 = v34 + (v439 * v439);
        *v26.i32 = v437;
        _Q7.i64[0] = v438;
        __asm
        {
          FMLA            S16, S4, V7.S[1]
          FMLA            S18, S2, V7.S[1]
          FMLA            S20, S16, V7.S[1]
        }

        *&v47 = v441 + (((v439 * _S18) + (v39 * *&v25)) + (*&v438 * _S16));
        v48 = *v37;
        v48.i32[3] = HIDWORD(v438);
        v24.f32[0] = ((v439 * (vmuls_lane_f32(v39, vnegq_f32(v48), 3) + (*&v438 * _S4))) + (_S2 * *&v25)) + (v437 * _S16);
        v50 = vextq_s8(vextq_s8(v26, v26, 4uLL), _Q7, 0xCuLL);
        v50.f32[3] = -v437;
        v49 = vmlaq_n_f32(vmulq_f32(vextq_s8(vdupq_laneq_s32(*v37, 3), *v37, 4uLL), v50), *v37, v439);
        v50.f32[3] = -*&v438;
        _Q7.f32[2] = v437;
        _Q7.i32[3] = v37->i64[1];
        v51 = vmlsq_f32(vmlaq_f32(vuzp2q_s32(vextq_s8(v49, v49, 4uLL), v49), vextq_s8(vextq_s8(*v37, *v37, 0xCuLL), *v37, 8uLL), v50), _Q7, v48);
        v52 = vzip1q_s32(v51, vextq_s8(v51, v51, 0xCuLL));
        v53 = vzip2q_s32(v52, v51);
        v434 = v53;
        *v435.i32 = v440 + v24.f32[0];
        v435.i32[1] = v47;
        v436 = v442 + _S20;
        if (v36)
        {
          v54 = *(v35 + 64) + 64;
          if ((v36 & 0x40) != 0)
          {
LABEL_24:
            v55 = (*(v35 + 64) + 52);
            goto LABEL_27;
          }
        }

        else
        {
          v54 = v35 + 152;
          if ((v36 & 0x40) != 0)
          {
            goto LABEL_24;
          }
        }

        v55 = (v35 + 144);
LABEL_27:
        v56 = *v55;
        v53.i64[0] = 0;
        v58 = (*v55 & 8) != 0 && v12 != 0.0;
        if ((v31 | v58) == 1)
        {
          v23.i32[0] = 1.0;
          physx::Gu::computeBounds(&v432, v54, &v434, 0, v53, *&v23, *&v24, *v52.i64, *v50.i64, v25, v26, v19, v20, v21, v22, v405);
          if ((v56 & 8) == 0)
          {
            goto LABEL_221;
          }
        }

        else
        {
          v59.n128_u64[1] = 0xFE7FFFFF7E7FFFFFLL;
          v432 = xmmword_1E3113BA0;
          v59.n128_u64[0] = vdup_n_s32(0xFE7FFFFF);
          v433 = v59.n128_u64[0];
          if ((v56 & 8) == 0)
          {
            goto LABEL_221;
          }
        }

        if (v12 != 0.0)
        {
          *(a2 + 4) = -256;
          *(a2 + 36) = 1065353216;
          *(a2 + 40) = 0;
          *(a2 + 48) = 0;
          *(a2 + 56) = 1065353216;
          *(a2 + 68) = 0;
          *(a2 + 60) = 0;
          *(a2 + 76) = 1065353216;
          *(a2 + 80) = 0;
          *(a2 + 88) = 0;
          *(a2 + 96) = 1065353216;
          *v453 = v432;
          *&v453[16] = v433;
          v453[24] = 1;
          physx::Cm::operator<<(a2, v453);
        }

        if (v32 != 0.0)
        {
          physx::PxMat44::PxMat44(v453, &v434);
          v60 = *&v453[16];
          *(a2 + 36) = *v453;
          *(a2 + 52) = v60;
          v61 = *&v454[16];
          *(a2 + 68) = *v454;
          *(a2 + 84) = v61;
          *v448 = v32;
          *&v448[4] = v32;
          *&v448[8] = v32;
          *&v448[12] = 0xCF0000CF0000;
          *&v448[20] = 207;
          physx::Cm::operator<<(a2, v448);
        }

        if (!v421 || v419 <= v418 && (v432.f32[0] > v416[3] || *v416 > v432.f32[3] || v432.f32[1] > v416[4] || v416[1] > *v433.i32 || v432.f32[2] > v416[5] || v416[2] > *&v433.i32[1]))
        {
          goto LABEL_221;
        }

        v62 = *v54;
        if (v409 == 0.0)
        {
          if (v62 != 5)
          {
            goto LABEL_221;
          }

LABEL_90:
          v412 = v33;
          v180 = *(v54 + 40);
          v182 = *(v54 + 4);
          v181 = v54 + 4;
          v183 = *(v181 + 12);
          v184 = vadd_f32(v183, v183);
          v185 = vrev64_s32(vmul_f32(v183, v184));
          v186 = vmul_lane_f32(v184, v183, 1);
          v187 = *(v181 + 8);
          v188 = vadd_f32(*v434.f32, *v434.f32);
          v189 = vmul_f32(*v434.f32, __PAIR64__(v188.u32[1], v434.u32[0]));
          v190 = vadd_f32(*v434.f32, __PAIR64__(v188.u32[1], v434.u32[0]));
          v191 = vmul_f32(*v434.f32, v190).f32[0];
          v190.i32[1] = v189.i32[1];
          v192 = vrev64_s32(vmul_n_f32(*&v434.u32[2], v190.f32[0]));
          v193 = vmul_lane_f32(*&v434.u32[2], v188, 1);
          v194 = vmul_n_f32(vrev64_s32(*&v434.u32[2]), vadd_f32(*&v434.u32[2], *&v434.u32[2]).f32[0]);
          __asm { FMOV            V22.2S, #1.0 }

          v196 = vzip2_s32(*v434.f32, _D22);
          v197 = vsub_f32(v196, v190);
          v198 = vmul_f32(v196, v190);
          v196.i32[0] = vadd_f32(v198, v194).u32[0];
          v196.i32[1] = vsub_f32(v197, v194).i32[1];
          v23 = vsub_f32(v192, v193);
          v198.f32[1] = 1.0 - v191;
          v199 = vsub_f32(v198, v194);
          v200 = vrev64_s32(v199);
          v201 = vadd_f32(v193, v192);
          v193.i32[0] = vsub_f32(v193, v192).u32[0];
          v193.i32[1] = v201.i32[1];
          v198.f32[0] = v198.f32[1] - v189.f32[1];
          v202 = *(v181 + 20);
          v203 = vadd_f32(v202, v202);
          v204 = vmul_f32(v202, v203);
          v205 = vmul_n_f32(v202, v184.f32[0]);
          v206 = vrev64_s32(vmul_lane_f32(v202, v184, 1));
          v207 = vmul_lane_f32(v203, v202, 1);
          v208 = vdup_lane_s32(vsub_f32(v186, v207), 0);
          v208.i32[0] = vadd_f32(v186, v207).u32[0];
          v209 = vsub_f32(_D22, v185);
          v210 = vsub_f32(v209, vdup_lane_s32(v204, 0));
          v211 = vadd_f32(v205, v206);
          v186.i32[0] = vsub_f32(v205, v206).u32[0];
          v186.i32[1] = v211.i32[1];
          v212 = vsub_f32(v206, v205);
          v213 = vmul_f32(vzip1_s32(v210, v208), v182);
          v214 = vmul_f32(vzip2_s32(v208, v210), v182);
          v211.i32[1] = v212.i32[1];
          v185.f32[0] = vsub_f32(vdup_lane_s32(v209, 1), v185).f32[0];
          v215 = vmul_f32(v211, v182);
          v216 = vmul_n_f32(v186, v187);
          v217 = v187 * v185.f32[0];
          v218 = vrev64_s32(v208);
          v219 = vmul_f32(v210, v214);
          v220 = vadd_f32(vmul_f32(v210, v215), vmul_f32(v208, vrev64_s32(v215)));
          v221 = vadd_f32(vadd_f32(vmul_f32(v210, v213), vrev64_s32(vmul_f32(v218, v213))), vmul_n_f32(v186, v216.f32[0]));
          v222 = vadd_f32(vadd_f32(v219, vrev64_s32(vmul_f32(v218, v214))), vmul_lane_f32(v186, v216, 1));
          v223 = vadd_f32(v220, vmul_n_f32(v186, v217));
          v224 = v217 * v185.f32[0];
          v225 = vadd_f32(vadd_f32(vmul_n_f32(vzip1_s32(v213, v214), v211.f32[0]), vmul_lane_f32(vzip2_s32(v213, v214), v212, 1)), vmul_n_f32(v216, v185.f32[0]));
          v215.f32[0] = vaddv_f32(vmul_f32(v211, v215)) + v224;
          v226 = (v198.f32[0] * v223.f32[0]) + (vmuls_lane_f32(v221.f32[0], v23, 1) + vmul_f32(v201, v222).f32[0]);
          v227 = vadd_f32(vmul_f32(v193, v223), vadd_f32(vmul_f32(v196, v221), vmul_f32(v200, v222)));
          v228 = vadd_f32(vmul_f32(v193, vrev64_s32(v223)), vadd_f32(vmul_f32(v196, vrev64_s32(v221)), vrev64_s32(vmul_f32(v199, v222))));
          v229 = vmuls_lane_f32(v198.f32[0], v223, 1) + vadd_f32(vdup_lane_s32(vmul_f32(v23, v221), 1), vmul_lane_f32(v201, v222, 1)).f32[0];
          *v26.i8 = vzip2_s32(v199, v196);
          v196.i32[1] = v200.i32[1];
          v25 = COERCE_DOUBLE(vmul_f32(*v26.i8, vrev64_s32(v225)));
          v24 = vmul_n_f32(v193, v215.f32[0]);
          v230 = vadd_f32(v24, vadd_f32(vmul_f32(v196, v225), *&v25));
          v231 = (v198.f32[0] * v215.f32[0]) + (vmuls_lane_f32(v225.f32[0], v23, 1) + vmul_lane_f32(v201, v225, 1).f32[0]);
          *v448 = vext_s8(v228, v227, 4uLL);
          *&v448[12] = vext_s8(v227, v228, 4uLL);
          *&v448[8] = v226;
          *&v448[20] = v229;
          v449 = vrev64_s32(v230);
          v59.n128_u64[0] = v435;
          v451 = v435;
          v232 = v436;
          v450 = v231;
          v452 = v436;
          v233 = *(v180 + 32);
          v234 = *(v180 + 48);
          v429 = *(v180 + 40);
          v235 = (*(v180 + 92) >> 1) & 1;
          if (v419 > v418)
          {
            if (v409 == 0.0)
            {
              v241 = 0;
              LODWORD(v425) = *(v180 + 32);
              v12 = v410;
              v33 = v412;
              v32 = v413;
              v34 = -0.5;
            }

            else
            {
              v242 = *(v180 + 28);
              *(a2 + 36) = 1065353216;
              *(a2 + 40) = 0;
              *(a2 + 48) = 0;
              *(a2 + 56) = 1065353216;
              *(a2 + 68) = 0;
              *(a2 + 60) = 0;
              *(a2 + 76) = 1065353216;
              *(a2 + 80) = 0;
              *(a2 + 88) = 0;
              *(a2 + 96) = 1065353216;
              *(a2 + 4) = -65281;
              if (v242)
              {
                v243 = vrev64_s32(v59.n128_u64[0]);
                v244 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 12 * v242, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpShapeManager.cpp", 632);
                v245 = (v244 + 8);
                v246 = (v429 + 8);
                do
                {
                  v24 = *(v246 - 2);
                  v25 = COERCE_DOUBLE(vmul_f32(v228, vrev64_s32(v24)));
                  v247 = v232 + (((v226 * v24.f32[0]) + vmuls_lane_f32(v229, v24, 1)) + (v231 * *v246));
                  v59.n128_u64[0] = vrev64_s32(vadd_f32(v243, vadd_f32(vadd_f32(vmul_f32(v227, v24), *&v25), vmul_n_f32(v230, *v246))));
                  *(v245 - 1) = v59.n128_u64[0];
                  *v245 = v247;
                  v245 += 3;
                  v246 += 3;
                  --v242;
                }

                while (v242);
              }

              else
              {
                v244 = 0;
              }

              v337 = *(a2 + 104);
              v338 = *(v337 + 32);
              v339 = *(v337 + 36) & 0x7FFFFFFF;
              v340 = v338 + 3 * v233;
              v12 = v410;
              v33 = v412;
              v32 = v413;
              v34 = -0.5;
              if (v340 > v339)
              {
                v341 = 2 * *(v337 + 36);
                if (!v339)
                {
                  v341 = 2;
                }

                if (v340 <= v341)
                {
                  v342 = v341;
                }

                else
                {
                  v342 = v340;
                }

                physx::shdfnd::Array<physx::PxDebugLine,physx::shdfnd::ReflectionAllocator<physx::PxDebugLine>>::recreate(v337 + 24, v342);
                v338 = *(v337 + 32);
              }

              v343 = *(v337 + 24);
              *(v337 + 32) = v340;
              if (v233)
              {
                v344 = 0;
                v345 = v343 + 32 * v338;
                do
                {
                  getTriangle(v344, v453, v244, v234, v235);
                  v346 = *v453;
                  v347 = *&v453[16];
                  *v345 = *v453;
                  *(v345 + 8) = DWORD2(v346);
                  *(v345 + 12) = -65281;
                  *(v345 + 16) = HIDWORD(v346);
                  *(v345 + 20) = v347;
                  *(v345 + 28) = -65281;
                  v348 = *&v453[24];
                  v349 = *v454;
                  *(v345 + 32) = HIDWORD(v346);
                  *(v345 + 36) = v347;
                  *(v345 + 44) = -65281;
                  *(v345 + 48) = v348;
                  *(v345 + 56) = v349;
                  *(v345 + 60) = -65281;
                  *(v345 + 64) = v348;
                  *(v345 + 72) = v349;
                  *(v345 + 76) = -65281;
                  *(v345 + 80) = v346;
                  *(v345 + 88) = DWORD2(v346);
                  *(v345 + 92) = -65281;
                  v345 += 96;
                  ++v344;
                }

                while (v233 != v344);
              }

              if (v244)
              {
                (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v244);
              }

              v241 = 0;
              LODWORD(v425) = v233;
            }
          }

          else
          {
            v236 = vextq_s8(*v416, *v416, 8uLL);
            v237 = vextq_s8(*v416, v236, 0xCuLL);
            v238 = vsubq_f32(*v416, v237);
            *(v237.i64 + 4) = *(v416 + 2);
            v239 = vaddq_f32(*v416, v237);
            v239.i32[3] = v238.i32[3];
            v240 = vsub_f32(*(v416 + 4), vext_s8(*v416, *v236.f32, 4uLL));
            v236.i64[0] = 0x3F0000003F000000;
            v236.i64[1] = 0x3F0000003F000000;
            *v453 = xmmword_1E3047670;
            *&v453[16] = xmmword_1E3047670;
            *v454 = 1065353216;
            *&v454[4] = vmulq_f32(v239, v236);
            *&v454[20] = vmul_f32(v240, 0x3F0000003F000000);
            if (v233)
            {
              v241 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 4 * v233, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpShapeManager.cpp", 602);
            }

            else
            {
              v241 = 0;
            }

            v12 = v410;
            v33 = v412;
            v32 = v413;
            v34 = -0.5;
            v443 = v241;
            v445 = v233;
            v444 = 0;
            v446 = 0;
            v447 = 0;
            (physx::Gu::gMidphaseBoxOverlapTable[*(v180 + 8) - 3])(v453, v180, &v434, v181, &v443);
            v425 = v444;
            if (v409 != 0.0)
            {
              *(a2 + 36) = 1065353216;
              *(a2 + 40) = 0;
              *(a2 + 48) = 0;
              *(a2 + 56) = 1065353216;
              *(a2 + 68) = 0;
              *(a2 + 60) = 0;
              *(a2 + 76) = 1065353216;
              *(a2 + 80) = 0;
              *(a2 + 88) = 0;
              *(a2 + 96) = 1065353216;
              *(a2 + 4) = -65281;
              v266 = *(a2 + 104);
              v267 = *(v266 + 32);
              v268 = *(v266 + 36) & 0x7FFFFFFF;
              v269 = v267 + 3 * v425;
              if (v269 > v268)
              {
                v270 = 2 * *(v266 + 36);
                if (!v268)
                {
                  v270 = 2;
                }

                if (v269 <= v270)
                {
                  v271 = v270;
                }

                else
                {
                  v271 = v269;
                }

                physx::shdfnd::Array<physx::PxDebugLine,physx::shdfnd::ReflectionAllocator<physx::PxDebugLine>>::recreate(v266 + 24, v271);
                v267 = *(v266 + 32);
              }

              v272 = *(v266 + 24);
              *(v266 + 32) = v269;
              if (v425)
              {
                v273 = v272 + 32 * v267;
                v274 = v241;
                v275 = v425;
                do
                {
                  v276 = *v274++;
                  getTriangle(v276, &v455, v429, v234, v448, v235);
                  v59.n128_f32[0] = v455;
                  v24.i32[0] = HIDWORD(v456);
                  v23.i32[0] = LODWORD(v456);
                  v277 = v457;
                  v278 = v458;
                  *&v25 = v459;
                  *v273 = v455;
                  *(v273 + 4) = __PAIR64__(v24.u32[0], v23.u32[0]);
                  *(v273 + 12) = -65281;
                  *(v273 + 16) = v277;
                  *(v273 + 20) = v278;
                  *(v273 + 24) = LODWORD(v25);
                  *(v273 + 28) = -65281;
                  *v26.i32 = v460;
                  _Q7.i32[0] = v461;
                  v279 = v462;
                  *(v273 + 32) = v277;
                  *(v273 + 36) = v278;
                  *(v273 + 40) = LODWORD(v25);
                  *(v273 + 44) = -65281;
                  *(v273 + 48) = v26.i32[0];
                  *(v273 + 52) = _Q7.i32[0];
                  *(v273 + 56) = v279;
                  *(v273 + 60) = -65281;
                  *(v273 + 64) = v26.i32[0];
                  *(v273 + 68) = _Q7.i32[0];
                  *(v273 + 72) = v279;
                  *(v273 + 76) = -65281;
                  *(v273 + 80) = v59.n128_u32[0];
                  *(v273 + 84) = __PAIR64__(v24.u32[0], v23.u32[0]);
                  *(v273 + 92) = -65281;
                  v273 += 96;
                  --v275;
                }

                while (v275);
              }
            }
          }

          if (v415 != 0.0)
          {
            *(a2 + 36) = 1065353216;
            *(a2 + 40) = 0;
            *(a2 + 48) = 0;
            *(a2 + 56) = 1065353216;
            *(a2 + 68) = 0;
            *(a2 + 60) = 0;
            *(a2 + 76) = 1065353216;
            *(a2 + 80) = 0;
            *(a2 + 88) = 0;
            *(a2 + 96) = 1065353216;
            *(a2 + 4) = -2004353024;
            if (v425)
            {
              v350 = 0;
              do
              {
                if (v241)
                {
                  v351 = *(v241 + 4 * v350);
                }

                else
                {
                  v351 = v350;
                }

                getTriangle(v351, v453, v429, v234, v448, v235);
                v352 = ((*&v453[4] - *&v453[16]) * (*&v453[8] - *v454)) - ((*&v453[8] - *&v453[20]) * (*&v453[4] - *&v453[28]));
                v353 = ((*&v453[8] - *&v453[20]) * (*v453 - *&v453[24])) - ((*v453 - *&v453[12]) * (*&v453[8] - *v454));
                v354 = ((*v453 - *&v453[12]) * (*&v453[4] - *&v453[28])) - ((*&v453[4] - *&v453[16]) * (*v453 - *&v453[24]));
                v355 = ((v353 * v353) + (v352 * v352)) + (v354 * v354);
                v356 = 0.0;
                v357 = 0.0;
                v358 = 0.0;
                if (v355 > 0.0)
                {
                  v359 = 1.0 / sqrtf(v355);
                  v358 = v352 * v359;
                  v357 = v353 * v359;
                  v356 = v354 * v359;
                }

                v455 = ((*v453 + *&v453[12]) + *&v453[24]) * 0.33333;
                *&v456 = ((*&v453[4] + *&v453[16]) + *&v453[28]) * 0.33333;
                *(&v456 + 1) = ((*&v453[8] + *&v453[20]) + *v454) * 0.33333;
                v457 = v455 + (v415 * v358);
                v458 = *&v456 + (v415 * v357);
                v459 = *(&v456 + 1) + (v415 * v356);
                v460 = sqrtf((((v415 * v357) * (v415 * v357)) + ((v415 * v358) * (v415 * v358))) + ((v415 * v356) * (v415 * v356))) * 0.15;
                physx::Cm::operator<<(a2, &v455);
                ++v350;
              }

              while (v425 != v350);
            }
          }

          v59.n128_f32[0] = v406;
          v31 = v420;
          if (v406 == 0.0 || (v360 = *(v180 + 80)) == 0 || (v427 = *(v180 + 48), v431 = *(v180 + 40), *(a2 + 4) = -256, !v425))
          {
LABEL_217:
            if (v241)
            {
              (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v241, v59);
            }

            a1 = v407;
            goto LABEL_220;
          }

          v361 = 0;
          v362 = -256;
          v363 = (*(v180 + 92) >> 1) & 1;
          while (2)
          {
            if (v241)
            {
              v364 = *(v241 + 4 * v361);
            }

            else
            {
              v364 = v361;
            }

            v59.n128_f32[0] = getTriangle(v364, v453, v431, v427, v448, v363);
            v365 = *(v360 + v364);
            if ((v365 & 8) != 0)
            {
              v366 = *(a2 + 104);
              v367 = *(v366 + 32);
              v368 = *(v366 + 36) & 0x7FFFFFFF;
              v369 = v367 + 1;
              if (v367 + 1 > v368)
              {
                v370 = 2 * *(v366 + 36);
                if (!v368)
                {
                  v370 = 2;
                }

                if (v369 <= v370)
                {
                  v371 = v370;
                }

                else
                {
                  v371 = v369;
                }

                physx::shdfnd::Array<physx::PxDebugLine,physx::shdfnd::ReflectionAllocator<physx::PxDebugLine>>::recreate(v366 + 24, v371);
                v367 = *(v366 + 32);
                v362 = *(a2 + 4);
              }

              v372 = *(v366 + 24) + 32 * v367;
              *(v366 + 32) = v369;
              *v372 = *v453;
              *(v372 + 8) = *&v453[8];
              v59.n128_u32[1] = *&v453[16];
              *(v372 + 16) = *&v453[12];
              v59.n128_u32[0] = *&v453[20];
              *(v372 + 24) = *&v453[20];
              *(v372 + 28) = v362;
              *(v372 + 12) = v362;
              if ((v365 & 0x10) != 0)
              {
                goto LABEL_200;
              }

LABEL_190:
              if ((v365 & 0x20) != 0)
              {
LABEL_208:
                v380 = *(a2 + 104);
                v381 = *(v380 + 32);
                v382 = *(v380 + 36) & 0x7FFFFFFF;
                v383 = v381 + 1;
                if (v381 + 1 > v382)
                {
                  v384 = 2 * *(v380 + 36);
                  if (!v382)
                  {
                    v384 = 2;
                  }

                  if (v383 <= v384)
                  {
                    v385 = v384;
                  }

                  else
                  {
                    v385 = v383;
                  }

                  physx::shdfnd::Array<physx::PxDebugLine,physx::shdfnd::ReflectionAllocator<physx::PxDebugLine>>::recreate(v380 + 24, v385);
                  v381 = *(v380 + 32);
                  v362 = *(a2 + 4);
                }

                v386 = *(v380 + 24) + 32 * v381;
                *(v380 + 32) = v383;
                *v386 = *v453;
                *(v386 + 8) = *&v453[8];
                v59.n128_u32[1] = *&v453[28];
                *(v386 + 16) = *&v453[24];
                v59.n128_u32[0] = *v454;
                *(v386 + 24) = *v454;
                *(v386 + 28) = v362;
                *(v386 + 12) = v362;
              }
            }

            else
            {
              if ((v365 & 0x10) == 0)
              {
                goto LABEL_190;
              }

LABEL_200:
              v373 = *(a2 + 104);
              v374 = *(v373 + 32);
              v375 = *(v373 + 36) & 0x7FFFFFFF;
              v376 = v374 + 1;
              if (v374 + 1 > v375)
              {
                v377 = 2 * *(v373 + 36);
                if (!v375)
                {
                  v377 = 2;
                }

                if (v376 <= v377)
                {
                  v378 = v377;
                }

                else
                {
                  v378 = v376;
                }

                physx::shdfnd::Array<physx::PxDebugLine,physx::shdfnd::ReflectionAllocator<physx::PxDebugLine>>::recreate(v373 + 24, v378);
                v374 = *(v373 + 32);
                v362 = *(a2 + 4);
              }

              v379 = *(v373 + 24) + 32 * v374;
              *(v373 + 32) = v376;
              *v379 = *&v453[12];
              *(v379 + 8) = *&v453[20];
              v59.n128_u32[1] = *&v453[28];
              *(v379 + 16) = *&v453[24];
              v59.n128_u32[0] = *v454;
              *(v379 + 24) = *v454;
              *(v379 + 28) = v362;
              *(v379 + 12) = v362;
              if ((v365 & 0x20) != 0)
              {
                goto LABEL_208;
              }
            }

            v31 = v420;
            if (v425 == ++v361)
            {
              goto LABEL_217;
            }

            continue;
          }
        }

        if (v62 <= 2)
        {
          if (v62)
          {
            if (v62 == 1)
            {
              physx::PxMat44::PxMat44(v453, &v434);
              v261 = 0;
              *&v262 = *&v453[4];
              v263 = *v453;
              v264 = *v454;
              *&v454[4] = *&v453[4];
              *(&v262 + 1) = __PAIR64__(*&v454[16], *&v453[12]);
              v265 = vnegq_f32(v264);
              *v454 = *v453;
              *&v454[12] = *&v453[12];
              *v453 = vnegq_f32(*&v453[16]);
              *&v453[16] = v265;
              *(a2 + 36) = *v453;
              *(a2 + 52) = v265;
              *(a2 + 68) = v263;
              *(a2 + 72) = v262;
              *(a2 + 88) = *&v454[20];
              *(a2 + 96) = *&v454[28];
              *(a2 + 4) = -65281;
              do
              {
                v261 += 2;
                *v448 = 100;
                *&v448[4] = v261 * v261;
                physx::Cm::operator<<(a2, v448);
              }

              while (v261 < 0x12);
            }

            else if (v62 == 2)
            {
              *(a2 + 4) = -65281;
              v166 = *(v54 + 4);
              v167 = *(v54 + 8);
              physx::PxMat44::PxMat44(v453, &v434);
              v168 = v166;
              v32 = v413;
              v169 = v167;
              v34 = -0.5;
              physx::Cm::RenderOutput::outputCapsule(a2, v453, v168, v169);
            }
          }

          else
          {
            *(a2 + 4) = -65281;
            v248 = physx::Cm::RenderOutput::operator<<(a2, &v434);
            v249 = *(v54 + 4);
            *v453 = 100;
            *&v453[4] = v249;
            physx::Cm::operator<<(v248, v453);
            physx::PxMat44::PxMat44(v453, &v434);
            v250 = *&v453[16];
            *(a2 + 36) = *v453;
            v251 = vnegq_f32(*v454);
            *&v453[16] = v251;
            *v454 = v250;
            *(a2 + 52) = v251;
            *(a2 + 68) = v250.i32[0];
            v252 = vextq_s8(v250, v251, 4uLL);
            v252.i32[3] = *&v454[16];
            *(a2 + 72) = v252;
            *(a2 + 88) = *&v454[20];
            *(a2 + 96) = *&v454[28];
            v252.i32[0] = *(v54 + 4);
            *v448 = 100;
            *&v448[4] = v252.i32[0];
            v253 = physx::Cm::operator<<(a2, v448);
            v254 = *&v453[16];
            v255 = vnegq_f32(*v454);
            v256 = *v453;
            *v454 = *v453;
            *v453 = v255;
            *(a2 + 36) = v255;
            *(a2 + 52) = v254;
            *(a2 + 68) = v256.i32[0];
            v257 = vextq_s8(v256, v255, 4uLL);
            v257.i32[3] = *&v454[16];
            *(a2 + 72) = v257;
            *(a2 + 88) = *&v454[20];
            *(a2 + 96) = *&v454[28];
            v257.i32[0] = *(v54 + 4);
            *v448 = 100;
            *&v448[4] = v257.i32[0];
            physx::Cm::operator<<(v253, v448);
          }

          goto LABEL_221;
        }

        if (v62 <= 4)
        {
          if (v62 == 3)
          {
            *(a2 + 4) = -65281;
            v258 = physx::Cm::RenderOutput::operator<<(a2, &v434);
            v259 = *(v54 + 12);
            v260 = *(v54 + 4);
            *v453 = vneg_f32(v260);
            *&v453[12] = v260;
            *&v453[8] = -v259;
            *&v453[20] = v259;
            v453[24] = 1;
            physx::Cm::operator<<(v258, v453);
          }

          else
          {
            v63 = *(v54 + 32);
            v64 = *(v63 + 72);
            v65 = *(v63 + 71);
            v66 = *(v63 + 70);
            v408 = v63;
            v67 = *(v63 + 68);
            v68 = v434.f32[0];
            v69.f32[0] = v68 + v68;
            *&v70 = 1.0 - (v68 * (v68 + v68));
            v71 = *&v70 - (v434.f32[1] * (v434.f32[1] + v434.f32[1]));
            v72 = *(v54 + 16);
            v73 = *(v54 + 24);
            v74 = vadd_f32(v73, v73);
            v75 = vmul_f32(v73, v74);
            v76 = vmul_lane_f32(v74, v73, 1);
            v77 = vrev64_s32(v72);
            v78 = vadd_f32(v72, v72);
            v79 = vrev64_s32(vmul_f32(v72, v78));
            v80 = vmul_f32(v78, v77);
            v81.i32[0] = vadd_f32(v80, v76).u32[0];
            __asm { FMOV            V25.2S, #1.0 }

            v83 = vsub_f32(_D25, v79);
            v84 = vsub_f32(v80, v76);
            v79.f32[0] = vsub_f32(vdup_lane_s32(v83, 1), v79).f32[0];
            v85 = *(v54 + 4);
            v86 = *(v54 + 12);
            v80.f32[0] = v86 * v79.f32[0];
            v76.f32[0] = (v86 * v79.f32[0]) * v79.f32[0];
            v87 = v435;
            v88 = vrev64_s32(vmul_n_f32(*&v434.u32[2], v69.f32[0]));
            v89 = vmul_n_f32(*&v434.u32[2], v434.f32[1] + v434.f32[1]);
            v90 = vmul_n_f32(vrev64_s32(*&v434.u32[2]), vadd_f32(*&v434.u32[2], *&v434.u32[2]).f32[0]);
            _D25.i32[0] = v434.i32[1];
            v69.f32[1] = v434.f32[1] * (v434.f32[1] + v434.f32[1]);
            v91 = vsub_f32(_D25, v69);
            v92 = vmul_f32(_D25, v69);
            v69.i32[0] = vadd_f32(v92, v90).u32[0];
            v93 = __PAIR64__(v70, v92.u32[0]);
            v69.i32[1] = vsub_f32(v91, v90).i32[1];
            v94 = vsub_f32(v88, v89);
            v95 = vsub_f32(v93, v90);
            v96 = vadd_f32(v89, v88);
            v26.i32[0] = vsub_f32(v89, v88).u32[0];
            v26.i32[1] = v96.i32[1];
            v97 = vmul_n_f32(v73, v78.f32[0]);
            v98 = vrev64_s32(vmul_lane_f32(v73, v78, 1));
            v99 = vsub_f32(v83, vdup_lane_s32(v75, 0));
            v100 = vadd_f32(v97, v98);
            v83.i32[0] = vsub_f32(v97, v98).u32[0];
            v83.i32[1] = v100.i32[1];
            v101 = vsub_f32(v98, v97);
            v102 = vzip1_s32(v99, v84);
            v103 = vmul_n_f32(v102, v85.f32[0]);
            v104 = vmul_n_f32(v103, v100.f32[0]);
            v100.i32[1] = v101.i32[1];
            v81.i32[1] = v99.i32[1];
            v105 = vrev64_s32(v95);
            v106 = vmul_lane_f32(v81, v85, 1);
            v107 = vmul_f32(v100, v85);
            v108 = vmul_n_f32(v83, v86);
            v109 = vext_s8(v102, v81, 4uLL);
            v110 = vzip1_s32(v103, v106);
            v111 = vzip2_s32(v103, v106);
            v112 = vrev64_s32(vmul_f32(v109, v111));
            v113 = vmul_f32(v99, v111);
            v114 = vadd_f32(vmul_f32(v99, v110), vrev64_s32(vmul_f32(v109, v110)));
            v115 = vadd_f32(vmul_f32(v99, v107), vrev64_s32(vmul_f32(v109, v107)));
            v116 = vadd_f32(v114, vmul_n_f32(v83, v108.f32[0]));
            v117 = vadd_f32(vadd_f32(v113, v112), vmul_lane_f32(v83, v108, 1));
            v118 = vadd_f32(v115, vmul_n_f32(v83, v80.f32[0]));
            v119 = vadd_f32(vadd_f32(v104, vmul_lane_f32(v106, v101, 1)), vmul_n_f32(v108, v79.f32[0]));
            v76.f32[0] = vaddv_f32(vmul_f32(v100, v107)) + v76.f32[0];
            v120 = vadd_f32(vmul_f32(*v26.i8, v118), vadd_f32(vmul_f32(v69, v116), vmul_f32(v105, v117)));
            v121 = vadd_f32(vmul_f32(*v26.i8, vrev64_s32(v118)), vadd_f32(vmul_f32(v69, vrev64_s32(v116)), vrev64_s32(vmul_f32(v95, v117))));
            *&v28 = vadd_f32(vmul_n_f32(v118, v71), vadd_f32(vmul_lane_f32(v116, v94, 1), vmul_n_f32(v117, v96.f32[0])));
            v122 = vzip2_s32(v95, v69);
            v69.i32[1] = v105.i32[1];
            v115.f32[0] = vmuls_lane_f32(v119.f32[0], v94, 1);
            v25 = COERCE_DOUBLE(vmul_f32(v69, v119));
            v123 = vmul_f32(v122, vrev64_s32(v119));
            v23 = vmul_lane_f32(v96, v119, 1);
            v124 = v71 * v76.f32[0];
            v125 = v436;
            *(a2 + 36) = vext_s8(v121, v120, 4uLL);
            *(a2 + 44) = v28;
            v126 = vadd_f32(vmul_n_f32(*v26.i8, v76.f32[0]), vadd_f32(*&v25, v123));
            *(a2 + 52) = vext_s8(v120, v121, 4uLL);
            *(a2 + 60) = DWORD1(v28);
            *(a2 + 64) = 0;
            v24 = vrev64_s32(v126);
            *(a2 + 68) = v24;
            v127 = v124 + (v115.f32[0] + v23.f32[0]);
            *(a2 + 76) = v127;
            *(a2 + 80) = 0;
            *(a2 + 84) = v87;
            *(a2 + 92) = v125;
            *(a2 + 96) = 1065353216;
            *(a2 + 4) = -65281;
            if (v65)
            {
              v128 = v65;
              v129 = 0;
              v130 = v64 + 20 * v65;
              v131 = vrev64_s32(v87);
              v132 = v130 + 12 * v66 + 2 * (v67 & 0x7FFF);
              v133 = 3 * v66;
              if (v67 >= 0)
              {
                v134 = 0;
              }

              else
              {
                v134 = 4 * (v67 & 0x7FFF);
              }

              v135 = (v132 + v133 + v134);
              v136 = -65281;
              v424 = v121;
              v426 = v120;
              v423 = v28;
              v411 = v33;
              do
              {
                v137 = *(*(v408 + 72) + 20 * v129 + 18);
                v138 = v130 + 12 * *v135;
                v139 = *(v138 + 8);
                *v50.f32 = vmul_f32(v121, vrev64_s32(*v138));
                v24 = vmul_f32(*&v28, *v138);
                v140 = vaddv_f32(v24) + (v127 * v139);
                v141 = vadd_f32(v131, vadd_f32(vadd_f32(vmul_f32(v120, *v138), *v50.f32), vmul_n_f32(v126, v139)));
                v142 = v125 + v140;
                if (v137 < 2)
                {
                  v153 = v125 + v140;
                  v152 = v141;
                }

                else
                {
                  for (i = 1; i != v137; ++i)
                  {
                    v144 = (v130 + 12 * v135[i]);
                    v50.i32[0] = v144[1].i32[0];
                    v145 = *v144;
                    v146 = *(a2 + 104);
                    v147 = *(v146 + 32);
                    v148 = *(v146 + 36) & 0x7FFFFFFF;
                    v149 = v147 + 1;
                    if (v147 + 1 > v148)
                    {
                      v150 = 2 * *(v146 + 36);
                      if (!v148)
                      {
                        v150 = 2;
                      }

                      if (v149 <= v150)
                      {
                        v151 = v150;
                      }

                      else
                      {
                        v151 = v147 + 1;
                      }

                      v428 = v50;
                      physx::shdfnd::Array<physx::PxDebugLine,physx::shdfnd::ReflectionAllocator<physx::PxDebugLine>>::recreate(v146 + 24, v151);
                      v50 = v428;
                      v28 = v423;
                      v121 = v424;
                      v120 = v426;
                      v147 = *(v146 + 32);
                      v136 = *(a2 + 4);
                    }

                    v23 = vadd_f32(vadd_f32(vmul_f32(v120, v145), vmul_f32(v121, vrev64_s32(v145))), vmul_n_f32(v126, v50.f32[0]));
                    v152 = vadd_f32(v131, v23);
                    v153 = v125 + (vaddv_f32(vmul_f32(*&v28, v145)) + (v127 * v50.f32[0]));
                    v154 = *(v146 + 24);
                    *(v146 + 32) = v149;
                    v155 = v154 + 32 * v147;
                    *v155 = vrev64_s32(v141);
                    *(v155 + 8) = v142;
                    *(v155 + 16) = vrev64_s32(v152);
                    *(v155 + 24) = v153;
                    *(v155 + 28) = v136;
                    *(v155 + 12) = v136;
                    v142 = v153;
                    v141 = v152;
                  }

                  v156 = (v130 + 12 * *v135);
                  v157 = v156[1].f32[0];
                  v24 = vmul_f32(*&v28, *v156);
                  v141 = vadd_f32(v131, vadd_f32(vadd_f32(vmul_f32(v120, *v156), vmul_f32(v121, vrev64_s32(*v156))), vmul_n_f32(v126, v157)));
                  v142 = v125 + (vaddv_f32(v24) + (v127 * v157));
                  a1 = v407;
                }

                v158 = *(a2 + 104);
                v159 = *(v158 + 32);
                v160 = *(v158 + 36) & 0x7FFFFFFF;
                v161 = v159 + 1;
                if (v159 + 1 > v160)
                {
                  v162 = 2 * *(v158 + 36);
                  if (!v160)
                  {
                    v162 = 2;
                  }

                  if (v161 <= v162)
                  {
                    v163 = v162;
                  }

                  else
                  {
                    v163 = v159 + 1;
                  }

                  physx::shdfnd::Array<physx::PxDebugLine,physx::shdfnd::ReflectionAllocator<physx::PxDebugLine>>::recreate(v158 + 24, v163);
                  v28 = v423;
                  v121 = v424;
                  v120 = v426;
                  v159 = *(v158 + 32);
                  v136 = *(a2 + 4);
                }

                v164 = *(v158 + 24);
                *(v158 + 32) = v161;
                v165 = v164 + 32 * v159;
                *v165 = vrev64_s32(v152);
                *(v165 + 8) = v153;
                *(v165 + 16) = vrev64_s32(v141);
                *(v165 + 24) = v142;
                *(v165 + 28) = v136;
                *(v165 + 12) = v136;
                v135 += v137;
                ++v129;
                v10 = v414;
                v30 = v417;
                v12 = v410;
                v33 = v411;
                v31 = v420;
                v32 = v413;
                v34 = -0.5;
              }

              while (v129 != v128);
            }
          }

          goto LABEL_221;
        }

        if (v62 == 5)
        {
          goto LABEL_90;
        }

        if (v62 == 6)
        {
          v170 = *(v54 + 8);
          v171 = (*(v170 + 60) * *(v170 + 56));
          v172 = (2 * v171);
          *(a2 + 36) = 1065353216;
          *(a2 + 40) = 0;
          *(a2 + 48) = 0;
          *(a2 + 56) = 1065353216;
          *(a2 + 68) = 0;
          *(a2 + 60) = 0;
          *(a2 + 76) = 1065353216;
          *(a2 + 80) = 0;
          *(a2 + 88) = 0;
          *(a2 + 96) = 1065353216;
          *(a2 + 4) = -65281;
          if (v419 > v418)
          {
            if (v171)
            {
              v280 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 12 * v171, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpShapeManager.cpp", 705, v419);
              v281 = v280;
              v282 = 0;
              v283 = *(v170 + 60);
              v284 = *(v170 + 80);
              v23.i32[0] = *(v54 + 16);
              v285 = *(v54 + 20);
              v24.i32[0] = *(v54 + 24);
              v286 = v434.i64[1];
              *&v25 = v34 + (v434.f32[3] * v434.f32[3]);
              v287 = v434.i64[0];
              v288 = -v434.f32[2];
              v289 = -v434.f32[0];
              v290 = -v434.f32[1];
              v291 = (v280 + 8);
              do
              {
                v292 = *v284;
                v284 += 2;
                v293 = (v285 * (v282 / v283)) + (v285 * (v282 / v283));
                v294 = (v23.f32[0] * v292) + (v23.f32[0] * v292);
                v295 = (v24.f32[0] * (v282 % v283)) + (v24.f32[0] * (v282 % v283));
                v296 = ((*(&v287 + 1) * v294) + (*&v287 * v293)) + (*&v286 * v295);
                v297 = (*(&v286 + 1) * ((v295 * v289) + (*&v286 * v293))) + (v294 * *&v25);
                v298 = ((*(&v286 + 1) * ((v294 * v288) + (*(&v287 + 1) * v295))) + (v293 * *&v25)) + (*&v287 * v296);
                v299 = v436 + (((*(&v286 + 1) * ((v293 * v290) + (*&v287 * v294))) + (v295 * *&v25)) + (*&v286 * v296));
                v300 = *&v435.i32[1] + (v297 + (*(&v287 + 1) * v296));
                *(v291 - 2) = *v435.i32 + v298;
                *(v291 - 1) = v300;
                *v291 = v299;
                v291 += 3;
                ++v282;
              }

              while (v171 != v282);
              if (!v172)
              {
                goto LABEL_157;
              }

              v301 = 0;
              v430 = v280;
              do
              {
                v302 = v301 >> 1;
                v303 = *(v170 + 60);
                v304 = (v301 >> 1) / v303;
                if (v304 < *(v170 + 56) - 1 && v302 - v304 * v303 < v303 - 1)
                {
                  v305 = *(v170 + 80) + 4 * v302;
                  v306 = (v305 + 2);
                  v307 = (v305 + 3);
                  if ((v301 & 1) == 0)
                  {
                    v307 = v306;
                  }

                  if ((~*v307 & 0x7F) != 0)
                  {
                    v308 = *v306;
                    v309 = v302 + 1 + v303;
                    v310 = v303 + v302;
                    if (v301)
                    {
                      v311 = v310;
                    }

                    else
                    {
                      v311 = v302 + 1;
                    }

                    if (v301)
                    {
                      v312 = v309;
                    }

                    else
                    {
                      v312 = v301 >> 1;
                    }

                    if (v301)
                    {
                      v313 = v302 + 1;
                    }

                    else
                    {
                      v313 = v310;
                    }

                    if (v301)
                    {
                      v314 = v302 + 1;
                    }

                    else
                    {
                      v309 = v301 >> 1;
                      v314 = v310;
                    }

                    if ((v301 & 1) == 0)
                    {
                      v302 = v310 + 1;
                    }

                    if (v308 < 0)
                    {
                      v315 = v309;
                    }

                    else
                    {
                      v315 = v311;
                    }

                    if (v308 >= 0)
                    {
                      v316 = v313;
                    }

                    else
                    {
                      v312 = v314;
                      v316 = v302;
                    }

                    v317 = *(a2 + 104);
                    v318 = *(v317 + 32);
                    v319 = *(v317 + 36) & 0x7FFFFFFF;
                    v320 = v318 + 3;
                    if (v318 + 3 > v319)
                    {
                      v321 = 2 * *(v317 + 36);
                      if (!v319)
                      {
                        v321 = 2;
                      }

                      if (v320 <= v321)
                      {
                        v322 = v321;
                      }

                      else
                      {
                        v322 = v320;
                      }

                      v323 = v172;
                      v324 = v312;
                      physx::shdfnd::Array<physx::PxDebugLine,physx::shdfnd::ReflectionAllocator<physx::PxDebugLine>>::recreate(v317 + 24, v322);
                      v312 = v324;
                      v172 = v323;
                      v281 = v430;
                      v318 = *(v317 + 32);
                    }

                    v325 = *(v317 + 24) + 32 * v318;
                    *(v317 + 32) = v320;
                    v326 = v281 + 12 * v312;
                    v327 = v281 + 12 * v315;
                    v328 = (v281 + 12 * v316);
                    v329 = *(v327 + 8);
                    v330 = *v326;
                    *(v325 + 8) = *(v326 + 8);
                    *(v325 + 12) = -65281;
                    v331 = *v327;
                    *v325 = v330;
                    *(v325 + 16) = v331;
                    *(v325 + 24) = v329;
                    *(v325 + 28) = -65281;
                    v332 = v328[1].i32[0];
                    v333 = *v327;
                    *(v325 + 40) = *(v327 + 8);
                    *(v325 + 44) = -65281;
                    v334 = *v328;
                    *(v325 + 32) = v333;
                    *(v325 + 48) = v334;
                    *(v325 + 56) = v332;
                    *(v325 + 60) = -65281;
                    v335 = *(v326 + 8);
                    v24 = *v328;
                    *(v325 + 72) = v328[1].i32[0];
                    *(v325 + 76) = -65281;
                    v336 = *v326;
                    *(v325 + 64) = v24;
                    *(v325 + 80) = v336;
                    *(v325 + 88) = v335;
                    *(v325 + 92) = -65281;
                    a1 = v407;
                    v10 = v414;
                    v30 = v417;
                    v31 = v420;
                  }
                }

                ++v301;
              }

              while (v172 != v301);
              if (v281)
              {
LABEL_157:
                (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v281);
              }
            }

            goto LABEL_221;
          }

          v173 = v416[5];
          v174 = v416[2];
          v24.f32[0] = (v173 + v174) * 0.5;
          v175 = *(v416 + 3);
          v176 = *v416;
          v177 = vmul_f32(vadd_f32(v175, *v416), 0x3F0000003F000000);
          *v448 = xmmword_1E30474D0;
          *&v448[16] = v177;
          *v449.i32 = v24.f32[0];
          v59.n128_f32[0] = (v173 - v174) * 0.5;
          LODWORD(v455) = 3;
          v178 = COERCE_DOUBLE(vmul_f32(vsub_f32(v175, v176), 0x3F0000003F000000));
          v456 = v178;
          v457 = v59.n128_f32[0];
          if (v172)
          {
            v179 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 4 * (2 * v171), "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpShapeManager.cpp", 680);
          }

          else
          {
            v179 = 0;
          }

          LOBYTE(v443) = 0;
          OverlapHeightField = physx::PxMeshQuery::findOverlapHeightField(&v455, v448, v54, v434.f32, v179, 2 * v171, 0, &v443, v59.n128_f64[0], v178, *&v24);
          v389 = *(a2 + 104);
          v390 = *(v389 + 32);
          v391 = *(v389 + 36) & 0x7FFFFFFF;
          v392 = v390 + 3 * OverlapHeightField;
          if (v392 > v391)
          {
            v393 = 2 * *(v389 + 36);
            if (!v391)
            {
              v393 = 2;
            }

            if (v392 <= v393)
            {
              v394 = v393;
            }

            else
            {
              v394 = v392;
            }

            physx::shdfnd::Array<physx::PxDebugLine,physx::shdfnd::ReflectionAllocator<physx::PxDebugLine>>::recreate(v389 + 24, v394);
            v390 = *(v389 + 32);
          }

          v395 = *(v389 + 24);
          *(v389 + 32) = v392;
          if (OverlapHeightField)
          {
            v396 = v395 + 32 * v390;
            v397 = OverlapHeightField;
            v398 = v179;
            do
            {
              v399 = *v398++;
              physx::PxMeshQuery::getTriangle(v54, v434.f32, v399, v453, 0, 0);
              v400 = *v453;
              v401 = *&v453[16];
              *v396 = *v453;
              *(v396 + 8) = DWORD2(v400);
              *(v396 + 12) = -65281;
              *(v396 + 16) = HIDWORD(v400);
              *(v396 + 20) = v401;
              *(v396 + 28) = -65281;
              v402 = *&v453[24];
              v403 = *v454;
              *(v396 + 32) = HIDWORD(v400);
              *(v396 + 36) = v401;
              *(v396 + 44) = -65281;
              *(v396 + 48) = v402;
              *(v396 + 56) = v403;
              *(v396 + 60) = -65281;
              *(v396 + 64) = v402;
              *(v396 + 72) = v403;
              *(v396 + 76) = -65281;
              *(v396 + 80) = v400;
              *(v396 + 88) = DWORD2(v400);
              *(v396 + 92) = -65281;
              v396 += 96;
              --v397;
            }

            while (v397);
LABEL_238:
            (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v179);
          }

          else if (v179)
          {
            goto LABEL_238;
          }

LABEL_220:
          v10 = v414;
          v30 = v417;
        }

LABEL_221:
        if (v30)
        {
          v387 = vmovn_s32(vcgtq_f32(v432, v422));
          v24 = vmovn_s32(vcgtq_f32(v422, v432));
          v387.i16[3] = v24.i16[3];
          v422 = vbslq_s8(vmovl_s16(v387), v422, v432);
          v23 = vcgt_f32(v33, v433);
          v33 = vbsl_s8(v23, v33, v433);
        }

        if (++v29 == v10)
        {
          if (v422.f32[0] <= v422.f32[3] && v30)
          {
            *(a2 + 4) = -65281;
            *(a2 + 36) = 1065353216;
            *(a2 + 40) = 0;
            *(a2 + 48) = 0;
            *(a2 + 56) = 1065353216;
            *(a2 + 68) = 0;
            *(a2 + 60) = 0;
            *(a2 + 76) = 1065353216;
            *(a2 + 80) = 0;
            *(a2 + 88) = 0;
            *(a2 + 96) = 1065353216;
            *v453 = v422;
            *&v453[16] = v33;
            v453[24] = 1;
            physx::Cm::operator<<(a2, v453);
          }

          return;
        }
      }
    }
  }
}

BOOL physx::PxRigidDynamic::isKindOf(physx::PxRigidDynamic *this, const char *a2)
{
  if (!strcmp("PxRigidDynamic", a2))
  {
    return 1;
  }

  return physx::PxRigidBody::isKindOf(this, a2);
}

uint64_t physx::NpActorTemplate<physx::PxRigidDynamic>::getScene(uint64_t a1)
{
  v1 = (a1 + *(&physx::NpActor::sLazyInitOffsets + *(a1 + 8) + 18));
  if (((*(v1 + 2) >> 30) - 1) > 1)
  {
    return 0;
  }

  v2 = *v1;
  if (v2)
  {
    return v2 - 16;
  }

  else
  {
    return 0;
  }
}

float physx::NpRigidActorTemplate<physx::PxRigidDynamic>::getWorldBounds@<S0>(physx::PxRigidActor *a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  physx::NpShapeManager::getWorldBounds((a1 + 40), a1, &v11);
  v4 = (v12 + v14) * 0.5;
  v5 = ((v14 - v12) * 0.5) * a3;
  v6 = v4 - v5;
  result = v4 + v5;
  v8 = vmul_f32(vadd_f32(v11, v13), 0x3F0000003F000000);
  v9 = vmul_n_f32(vmul_f32(vsub_f32(v13, v11), 0x3F0000003F000000), a3);
  *a2 = vsub_f32(v8, v9);
  *(a2 + 8) = v6;
  *(a2 + 12) = vadd_f32(v8, v9);
  *(a2 + 20) = result;
  return result;
}

int32x2_t *physx::NpRigidActorTemplate<physx::PxRigidDynamic>::setActorFlag(int32x2_t *result, int a2, int a3)
{
  v5 = result;
  if (a2 != 8)
  {
    goto LABEL_35;
  }

  v6 = *(&physx::NpActor::sLazyInitOffsets + result[1].u16[0] + 18);
  v7 = (result + v6);
  v8 = *(result[1].u32 + v6);
  if (v8)
  {
    v9 = v7[2];
  }

  else
  {
    v9 = (v7 + *(&physx::Scb::Actor::sLazyInitOffsets + ((v8 >> 24) & 0xF) + 3) + 12);
  }

  v10 = *v7;
  v11 = v9->u8[0];
  if (v11 & 8) == 0 || (a3)
  {
    if ((v11 & 8) != 0 || !a3)
    {
      goto LABEL_35;
    }

    if (v10)
    {
      physx::NpActor::removeConstraintsFromScene(&result[3]);
      v6 = *(&physx::NpActor::sLazyInitOffsets + v5[1].u16[0] + 18);
      LODWORD(v8) = *(v5[1].i32 + v6);
    }

    v17 = v11 | 8;
    v18 = v5 + v6;
    v19 = BYTE3(v8) & 0xF;
    v20 = *(&physx::Scb::Actor::sLazyInitOffsets + v19 + 3);
    v21 = v8 >> 30;
    if (v21 == 2)
    {
      v22 = *v18;
      if (*(*v18 + 7689))
      {
        goto LABEL_28;
      }
    }

    else if (v21 == 3)
    {
      v22 = *v18;
LABEL_28:
      Stream = *(v18 + 16);
      if (!Stream)
      {
        Stream = physx::Scb::Scene::getStream(v22, v19);
        *(v18 + 16) = Stream;
        v22 = *v18;
      }

      *Stream = v17;
      physx::Scb::Scene::scheduleForUpdate(v22, v18);
      *(v18 + 8) |= 1u;
LABEL_34:
      result = (*(*v5 + 672))(v5);
      goto LABEL_35;
    }

    v26 = (v20 + v18);
    if (v17 != *(v20 + v18 + 12))
    {
      v26[12] = v17;
      if (*v26)
      {
        (*(**v26 + 16))(*v26);
      }
    }

    goto LABEL_34;
  }

  result = (*(*result + 680))(result);
  v12 = v11 & 0xFFFFFFF7;
  v13 = v5 + *(&physx::NpActor::sLazyInitOffsets + v5[1].u16[0] + 18);
  v14 = *(v13 + 8);
  v15 = (v14 >> 24) & 0xF;
  v16 = v14 >> 30;
  if (v16 == 2)
  {
    result = *v13;
    if (*(*v13 + 7689))
    {
      goto LABEL_18;
    }

LABEL_21:
    v24 = *(&physx::Scb::Actor::sLazyInitOffsets + v15 + 3) + v13;
    if (v12 != *(v24 + 12))
    {
      *(v24 + 12) = v12;
      result = *v24;
      if (*v24)
      {
        result = (*(*result + 16))(result);
      }
    }

    goto LABEL_24;
  }

  if (v16 != 3)
  {
    goto LABEL_21;
  }

  result = *v13;
LABEL_18:
  v23 = *(v13 + 16);
  if (!v23)
  {
    v23 = physx::Scb::Scene::getStream(result, v15);
    *(v13 + 16) = v23;
    result = *v13;
  }

  *v23 = v12;
  result = physx::Scb::Scene::scheduleForUpdate(result, v13);
  *(v13 + 8) |= 1u;
LABEL_24:
  if (v10 && *&v5[4])
  {
    result = physx::NpActor::addConstraintsToSceneInternal(v5 + 3);
  }

LABEL_35:
  v27 = v5 + *(&physx::NpActor::sLazyInitOffsets + v5[1].u16[0] + 18);
  v28 = *(v27 + 8);
  if (a3)
  {
    if (v28)
    {
      v31 = *(v27 + 16);
      v29 = (v28 >> 24) & 0xF;
      v30 = *(&physx::Scb::Actor::sLazyInitOffsets + v29 + 3) + v27;
    }

    else
    {
      v29 = (v28 >> 24) & 0xF;
      v30 = *(&physx::Scb::Actor::sLazyInitOffsets + v29 + 3) + v27;
      v31 = (v30 + 12);
    }

    v33 = *v31 | a2;
  }

  else
  {
    if (v28)
    {
      v32 = *(v27 + 16);
      v29 = (v28 >> 24) & 0xF;
      v30 = *(&physx::Scb::Actor::sLazyInitOffsets + v29 + 3) + v27;
    }

    else
    {
      LODWORD(v29) = BYTE3(v28) & 0xF;
      v30 = *(&physx::Scb::Actor::sLazyInitOffsets + v29 + 3) + v27;
      v32 = (v30 + 12);
    }

    v33 = *v32 & ~a2;
  }

  v34 = v28 >> 30;
  if (v34 == 2)
  {
    result = *v27;
    if (*(*v27 + 7689))
    {
      goto LABEL_48;
    }
  }

  else if (v34 == 3)
  {
    result = *v27;
LABEL_48:
    v35 = *(v27 + 16);
    if (!v35)
    {
      v35 = physx::Scb::Scene::getStream(result, v29);
      *(v27 + 16) = v35;
      result = *v27;
    }

    *v35 = v33;
    result = physx::Scb::Scene::scheduleForUpdate(result, v27);
    *(v27 + 8) |= 1u;
    return result;
  }

  if (v33 != *(v30 + 12))
  {
    *(v30 + 12) = v33;
    result = *v30;
    if (*v30)
    {
      v36 = *(*result + 16);

      return v36();
    }
  }

  return result;
}

int32x2_t *physx::NpRigidActorTemplate<physx::PxRigidDynamic>::setActorFlags(int32x2_t *result, _BYTE *a2)
{
  v3 = result;
  v4 = *(&physx::NpActor::sLazyInitOffsets + result[1].u16[0] + 18);
  v5 = (result + v4);
  v6 = *(result[1].u32 + v4);
  if (v6)
  {
    v7 = v5[2];
  }

  else
  {
    v7 = (v5 + *(&physx::Scb::Actor::sLazyInitOffsets + ((v6 >> 24) & 0xF) + 3) + 12);
  }

  v8 = *v5;
  v9 = v7->u8[0];
  if ((*a2 & 8) != 0 || (v9 & 8) == 0)
  {
    if ((*a2 & 8) == 0 || (v9 & 8) != 0)
    {
      goto LABEL_34;
    }

    if (v8)
    {
      physx::NpActor::removeConstraintsFromScene(&result[3]);
      v4 = *(&physx::NpActor::sLazyInitOffsets + v3[1].u16[0] + 18);
      LODWORD(v6) = *(v3[1].i32 + v4);
    }

    v15 = v9 | 8;
    v16 = v3 + v4;
    v17 = BYTE3(v6) & 0xF;
    v18 = *(&physx::Scb::Actor::sLazyInitOffsets + v17 + 3);
    v19 = v6 >> 30;
    if (v19 == 2)
    {
      v20 = *v16;
      if (*(*v16 + 7689))
      {
        goto LABEL_27;
      }
    }

    else if (v19 == 3)
    {
      v20 = *v16;
LABEL_27:
      Stream = *(v16 + 16);
      if (!Stream)
      {
        Stream = physx::Scb::Scene::getStream(v20, v17);
        *(v16 + 16) = Stream;
        v20 = *v16;
      }

      *Stream = v15;
      physx::Scb::Scene::scheduleForUpdate(v20, v16);
      *(v16 + 8) |= 1u;
LABEL_33:
      result = (*(*v3 + 672))(v3);
      goto LABEL_34;
    }

    v24 = (v18 + v16);
    if (v15 != *(v18 + v16 + 12))
    {
      v24[12] = v15;
      if (*v24)
      {
        (*(**v24 + 16))(*v24);
      }
    }

    goto LABEL_33;
  }

  result = (*(*result + 680))(result);
  v10 = v9 & 0xFFFFFFF7;
  v11 = v3 + *(&physx::NpActor::sLazyInitOffsets + v3[1].u16[0] + 18);
  v12 = *(v11 + 8);
  v13 = (v12 >> 24) & 0xF;
  v14 = v12 >> 30;
  if (v14 == 2)
  {
    result = *v11;
    if (*(*v11 + 7689))
    {
      goto LABEL_17;
    }

LABEL_20:
    v22 = *(&physx::Scb::Actor::sLazyInitOffsets + v13 + 3) + v11;
    if (v10 != *(v22 + 12))
    {
      *(v22 + 12) = v10;
      result = *v22;
      if (*v22)
      {
        result = (*(*result + 16))(result);
      }
    }

    goto LABEL_23;
  }

  if (v14 != 3)
  {
    goto LABEL_20;
  }

  result = *v11;
LABEL_17:
  v21 = *(v11 + 16);
  if (!v21)
  {
    v21 = physx::Scb::Scene::getStream(result, v13);
    *(v11 + 16) = v21;
    result = *v11;
  }

  *v21 = v10;
  result = physx::Scb::Scene::scheduleForUpdate(result, v11);
  *(v11 + 8) |= 1u;
LABEL_23:
  if (v8 && *&v3[4])
  {
    result = physx::NpActor::addConstraintsToSceneInternal(v3 + 3);
  }

LABEL_34:
  v25 = *a2;
  v26 = v3 + *(&physx::NpActor::sLazyInitOffsets + v3[1].u16[0] + 18);
  v27 = *(v26 + 8);
  v28 = (v27 >> 24) & 0xF;
  v29 = v27 >> 30;
  if (v29 == 2)
  {
    result = *v26;
    if (*(*v26 + 7689))
    {
      goto LABEL_38;
    }
  }

  else if (v29 == 3)
  {
    result = *v26;
LABEL_38:
    v30 = *(v26 + 16);
    if (!v30)
    {
      v30 = physx::Scb::Scene::getStream(result, v28);
      *(v26 + 16) = v30;
      result = *v26;
    }

    *v30 = v25;
    result = physx::Scb::Scene::scheduleForUpdate(result, v26);
    *(v26 + 8) |= 1u;
    return result;
  }

  v31 = *(&physx::Scb::Actor::sLazyInitOffsets + v28 + 3) + v26;
  if (v25 != *(v31 + 12))
  {
    *(v31 + 12) = v25;
    result = *v31;
    if (*v31)
    {
      v32 = *(*result + 16);

      return v32();
    }
  }

  return result;
}

uint64_t physx::NpActorTemplate<physx::PxRigidDynamic>::getActorFlags@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = result + *(&physx::NpActor::sLazyInitOffsets + *(result + 8) + 18);
  v3 = *(v2 + 8);
  if (v3)
  {
    v4 = *(v2 + 16);
  }

  else
  {
    v4 = (*(&physx::Scb::Actor::sLazyInitOffsets + ((v3 >> 24) & 0xF) + 3) + v2 + 12);
  }

  *a2 = *v4;
  return result;
}

int32x2_t *physx::NpActorTemplate<physx::PxRigidDynamic>::setDominanceGroup(uint64_t a1, char a2)
{
  v3 = a1 + *(&physx::NpActor::sLazyInitOffsets + *(a1 + 8) + 18);
  v4 = *(v3 + 8);
  v5 = (v4 >> 24) & 0xF;
  v6 = *(&physx::Scb::Actor::sLazyInitOffsets + v5 + 3);
  v7 = v4 >> 30;
  if (v7 == 2)
  {
    v8 = *v3;
    if (*(*v3 + 7689))
    {
      goto LABEL_5;
    }
  }

  else if (v7 == 3)
  {
    v8 = *v3;
LABEL_5:
    Stream = *(v3 + 16);
    if (!Stream)
    {
      Stream = physx::Scb::Scene::getStream(v8, v5);
      *(v3 + 16) = Stream;
      v8 = *v3;
    }

    *(Stream + 1) = a2;
    result = physx::Scb::Scene::scheduleForUpdate(v8, v3);
    *(v3 + 8) |= 2u;
    return result;
  }

  *(v6 + v3 + 14) = a2;
  result = *(v3 + v6);
  if (result)
  {

    return physx::Sc::ActorSim::setActorsInteractionsDirty(result, 8, 0, 1);
  }

  return result;
}

uint64_t physx::NpActorTemplate<physx::PxRigidDynamic>::getDominanceGroup(uint64_t a1)
{
  v1 = a1 + *(&physx::NpActor::sLazyInitOffsets + *(a1 + 8) + 18);
  v2 = *(v1 + 8);
  if ((v2 & 2) != 0)
  {
    v3 = (*(v1 + 16) + 1);
  }

  else
  {
    v3 = (*(&physx::Scb::Actor::sLazyInitOffsets + ((v2 >> 24) & 0xF) + 3) + v1 + 14);
  }

  return *v3;
}

uint64_t physx::NpActorTemplate<physx::PxRigidDynamic>::setOwnerClient(uint64_t result, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = result + *(&physx::NpActor::sLazyInitOffsets + *(result + 8) + 18);
  if (*v9)
  {
    v10 = "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpActorTemplate.h";
    v11 = "Attempt to set the client id when an actor is already in a scene.";
    v12 = physx::shdfnd::Foundation::mInstance;
    v13 = 196;
    return physx::shdfnd::Foundation::error(v12, 8, v10, v13, v11, a6, a7, a8, a9);
  }

  v14 = *(v9 + 8);
  if (v14 >> 30 == 3 || v14 >> 30 == 2 && (MEMORY[0x1E09] & 1) != 0)
  {
    v10 = "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/buffering/ScbActor.h";
    v11 = "Attempt to set the client id when an actor is buffering";
    v12 = physx::shdfnd::Foundation::mInstance;
    v13 = 182;
    return physx::shdfnd::Foundation::error(v12, 8, v10, v13, v11, a6, a7, a8, a9);
  }

  *(*(&physx::Scb::Actor::sLazyInitOffsets + ((v14 >> 24) & 0xF) + 3) + v9 + 11) = a2;
  return result;
}

uint64_t physx::NpActorTemplate<physx::PxRigidDynamic>::getAggregate(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 80);
  if (!v2)
  {
    return 0;
  }

  for (i = *(v1 + 72) + 8; *(i - 8) != 1; i += 16)
  {
    if (!--v2)
    {
      return 0;
    }
  }

  return *i;
}

float physx::NpRigidDynamic::getGlobalPose@<S0>(physx::NpRigidDynamic *this@<X0>, float *a2@<X8>)
{
  if ((*(this + 381) & 4) != 0)
  {
    v2 = (*(this + 14) + 224);
  }

  else
  {
    v2 = (this + 176);
  }

  v3 = v2[4] * -2.0;
  v4 = v2[5] * -2.0;
  v5 = v2[6] * -2.0;
  v7 = v2[2];
  v6 = v2[3];
  v8 = (v6 * v6) + -0.5;
  v9 = v2[1];
  v10 = ((v4 * v9) + (*v2 * v3)) + (v7 * v5);
  v11 = ((v3 * v8) - (((v9 * v5) - (v7 * v4)) * v6)) + (*v2 * v10);
  v12 = ((v4 * v8) - (((v7 * v3) - (*v2 * v5)) * v6)) + (v9 * v10);
  v13 = ((v5 * v8) - (((*v2 * v4) - (v9 * v3)) * v6)) + (v7 * v10);
  v14 = v11 + v11;
  v15 = v12 + v12;
  v16 = v13 + v13;
  v17 = *(this + 83);
  v18 = (v17 * v17) + -0.5;
  v19 = *(this + 80);
  v20 = *(this + 81);
  v21 = *(this + 82);
  v22 = ((v20 * (v12 + v12)) + (v19 * v14)) + (v21 * v16);
  v23 = ((v17 * ((v20 * v16) - (v21 * v15))) + (v14 * v18)) + (v19 * v22);
  v24 = ((v17 * ((v21 * v14) - (v19 * v16))) + (v15 * v18)) + (v20 * v22);
  v25 = ((v17 * ((v19 * v15) - (v20 * v14))) + (v16 * v18)) + (v21 * v22);
  v26 = *(this + 84) + v23;
  v27 = *(this + 85) + v24;
  v28 = *(this + 86);
  v29 = (((v6 * v20) - (v17 * v9)) - (v21 * *v2)) + (v7 * v19);
  v30 = (((v6 * v21) - (v17 * v7)) - (v19 * v9)) + (*v2 * v20);
  v31 = *v2 * v19;
  *a2 = (((v6 * v19) - (v17 * *v2)) - (v20 * v7)) + (v9 * v21);
  a2[1] = v29;
  a2[2] = v30;
  a2[3] = ((v31 + (v17 * v6)) + (v20 * v9)) + (v21 * v7);
  result = v28 + v25;
  a2[4] = v26;
  a2[5] = v27;
  a2[6] = v28 + v25;
  return result;
}

uint64_t physx::NpRigidActorTemplate<physx::PxRigidDynamic>::detachShape(physx::PxRigidActor *a1, physx::NpShape *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (*(a1 + 10))
  {
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpRigidActorTemplate.h", 247, "PxRigidActor::detachShape: Actor is part of a pruning structure, pruning structure is now invalid!", a6, a7, a8, v17);
    physx::Sq::PruningStructure::invalidate(*(a1 + 10), a1);
  }

  result = physx::NpShapeManager::detachShape((a1 + 40), a2, a1, a3);
  if ((result & 1) == 0)
  {
    v16 = physx::shdfnd::Foundation::mInstance;

    return physx::shdfnd::Foundation::error(v16, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpRigidActorTemplate.h", 253, "PxRigidActor::detachShape: shape is not attached to this actor!", v13, v14, v15, a9);
  }

  return result;
}

uint64_t physx::NpRigidActorTemplate<physx::PxRigidDynamic>::getShapes(uint64_t a1, void *a2, unsigned int a3, int a4)
{
  v4 = (a1 + 40);
  v5 = *(a1 + 48);
  if (v5 != 1)
  {
    v4 = *v4;
  }

  v6 = (v5 - a4) & ~((v5 - a4) >> 31);
  if (v6 >= a3)
  {
    result = a3;
  }

  else
  {
    result = v6;
  }

  if (result)
  {
    v8 = &v4[a4];
    v9 = result;
    do
    {
      v10 = *v8++;
      *a2++ = v10;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t physx::NpRigidActorTemplate<physx::PxRigidDynamic>::getNbConstraints(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 80);
  if (!v2)
  {
    return 0;
  }

  LODWORD(result) = 0;
  v4 = *(v1 + 72);
  do
  {
    v5 = *v4;
    v4 += 16;
    if (v5)
    {
      result = result;
    }

    else
    {
      result = (result + 1);
    }

    --v2;
  }

  while (v2);
  return result;
}

float physx::NpRigidBodyTemplate<physx::PxRigidDynamic>::getCMassLocalPose@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((*(a1 + 381) & 4) != 0)
  {
    v2 = *(a1 + 112) + 224;
  }

  else
  {
    v2 = a1 + 176;
  }

  *a2 = *v2;
  *(a2 + 16) = *(v2 + 16);
  result = *(v2 + 24);
  *(a2 + 24) = result;
  return result;
}

float *physx::NpRigidBodyTemplate<physx::PxRigidDynamic>::setMass(uint64_t a1, float a2)
{
  if (a2 <= 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 1.0 / a2;
  }

  v4 = *(a1 + 104);
  if (v4 >> 30 == 2)
  {
    v5 = *(a1 + 96);
    if (v5[961].i8[1])
    {
      goto LABEL_8;
    }
  }

  else if (v4 >> 30 == 3)
  {
    v5 = *(a1 + 96);
LABEL_8:
    Stream = *(a1 + 112);
    if (!Stream)
    {
      Stream = physx::Scb::Scene::getStream(v5, HIBYTE(v4) & 0xF);
      *(a1 + 112) = Stream;
      v5 = *(a1 + 96);
    }

    *(Stream + 164) = v3;
    result = physx::Scb::Scene::scheduleForUpdate(v5, a1 + 96);
    *(a1 + 380) |= 1u;
    return result;
  }

  return physx::Sc::BodyCore::setInverseMass((a1 + 128), v3);
}

float physx::NpRigidBodyTemplate<physx::PxRigidDynamic>::getMass(uint64_t a1)
{
  if (*(a1 + 380))
  {
    v2 = (*(a1 + 112) + 164);
  }

  else
  {
    v1 = *(a1 + 304);
    if (v1 && *(v1 + 31) == 1)
    {
      v2 = (v1 + 44);
    }

    else
    {
      v2 = (a1 + 268);
    }
  }

  result = 0.0;
  if (*v2 > 0.0)
  {
    return 1.0 / *v2;
  }

  return result;
}

float physx::NpRigidBodyTemplate<physx::PxRigidDynamic>::getInvMass(uint64_t a1)
{
  if (*(a1 + 380))
  {
    v2 = *(a1 + 112) + 164;
  }

  else
  {
    v1 = *(a1 + 304);
    if (v1 && *(v1 + 31) == 1)
    {
      v2 = v1 + 44;
    }

    else
    {
      v2 = a1 + 268;
    }
  }

  return *v2;
}

int32x2_t *physx::NpRigidBodyTemplate<physx::PxRigidDynamic>::setMassSpaceInertiaTensor(uint64_t a1, float32x2_t *a2)
{
  __asm { FMOV            V2.2S, #1.0 }

  v8 = vbic_s8(vdiv_f32(_D2, *a2), vceqz_f32(*a2));
  v9 = a2[1].f32[0];
  if (v9 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = 1.0 / v9;
  }

  v15 = v8;
  v16 = v10;
  v11 = *(a1 + 104);
  if (v11 >> 30 == 2)
  {
    v12 = *(a1 + 96);
    if (v12[961].i8[1])
    {
      goto LABEL_8;
    }

    return physx::Sc::BodyCore::setInverseInertia(a1 + 128, &v15);
  }

  if (v11 >> 30 != 3)
  {
    return physx::Sc::BodyCore::setInverseInertia(a1 + 128, &v15);
  }

  v12 = *(a1 + 96);
LABEL_8:
  Stream = *(a1 + 112);
  if (!Stream)
  {
    Stream = physx::Scb::Scene::getStream(v12, HIBYTE(v11) & 0xF);
    *(a1 + 112) = Stream;
    v12 = *(a1 + 96);
  }

  *(Stream + 168) = v8;
  *(Stream + 176) = v10;
  result = physx::Scb::Scene::scheduleForUpdate(v12, a1 + 96);
  *(a1 + 380) |= 2u;
  return result;
}

float32x2_t *physx::NpRigidBodyTemplate<physx::PxRigidDynamic>::getMassSpaceInertiaTensor@<X0>(float32x2_t *result@<X0>, uint64_t a2@<X8>)
{
  if ((result[47].i8[4] & 2) != 0)
  {
    v3 = (*&result[14] + 168);
  }

  else
  {
    v2 = result[38];
    if (v2 && v2[3].i8[7] == 1)
    {
      v3 = v2 + 4;
    }

    else
    {
      v3 = result + 32;
    }
  }

  v4 = v3[1].f32[0];
  v5 = 1.0 / v4;
  _ZF = v4 == 0.0;
  v7 = 0.0;
  if (!_ZF)
  {
    v7 = v5;
  }

  __asm { FMOV            V3.2S, #1.0 }

  *a2 = vbic_s8(vdiv_f32(_D3, *v3), vceqz_f32(*v3));
  *(a2 + 8) = v7;
  return result;
}

float physx::NpRigidBodyTemplate<physx::PxRigidDynamic>::getMassSpaceInvInertiaTensor@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((*(a1 + 380) & 2) != 0)
  {
    v3 = *(a1 + 112) + 168;
  }

  else
  {
    v2 = *(a1 + 304);
    if (v2 && *(v2 + 31) == 1)
    {
      v3 = v2 + 32;
    }

    else
    {
      v3 = a1 + 256;
    }
  }

  *a2 = *v3;
  result = *(v3 + 8);
  *(a2 + 8) = result;
  return result;
}

float physx::NpRigidBodyTemplate<physx::PxRigidDynamic>::getLinearVelocity@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(a1 + 348);
  result = *(a1 + 356);
  *(a2 + 8) = result;
  return result;
}

float physx::NpRigidBodyTemplate<physx::PxRigidDynamic>::getAngularVelocity@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(a1 + 360);
  result = *(a1 + 368);
  *(a2 + 8) = result;
  return result;
}

void physx::NpRigidBodyTemplate<physx::PxRigidDynamic>::setRigidBodyFlag(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if ((*(a1 + 381) & 0x40) != 0)
  {
    v10 = (*(a1 + 112) + 348);
  }

  else
  {
    v10 = (a1 + 172);
  }

  v11 = *v10;
  if (a3)
  {
    v12 = v11 | a2;
  }

  else
  {
    v12 = v11 & ~a2;
  }

  if ((~v12 & 5) == 0)
  {
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 4, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpRigidBodyTemplate.h", 476, "RigidBody::setRigidBodyFlag: kinematic bodies with CCD enabled are not supported! CCD will be ignored.", a6, a7, a8, v30);
    v12 &= ~4u;
  }

  if ((~v12 & 0x24) == 0)
  {
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 4, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpRigidBodyTemplate.h", 483, "RigidBody::setRigidBodyFlag: eENABLE_CCD can't be raised as the same time as eENABLE_SPECULATIVE_CCD! eENABLE_SPECULATIVE_CCD will be ignored.", a6, a7, a8, v30);
    v12 &= ~0x20u;
  }

  v13 = (a1 + *(&physx::NpActor::sLazyInitOffsets + *(a1 + 8) + 18));
  if (((*(v13 + 2) >> 30) - 1) > 1)
  {
    v15 = 0;
  }

  else
  {
    v14 = *v13;
    if (v14)
    {
      v15 = v14 - 16;
    }

    else
    {
      v15 = 0;
    }
  }

  if (v11 & 1) == 0 || (v12)
  {
    if ((v11 & 1) != 0 || (v12 & 1) == 0)
    {
LABEL_54:
      if ((v11 & 1) != 0 && (v12 & 1) != 0 && ((v12 ^ v11) & 2) != 0 && ((*(a1 + 381) & 0x80) != 0 || *(a1 + 104) >> 30 != 3 && (v29 = *(a1 + 304)) != 0 && *(v29 + 31) == 1 && *(v29 + 28)))
      {
        if (v15)
        {
          physx::NpShapeManager::markAllSceneQueryForUpdate(a1 + 40, v15 + 8640, a1);
          ++*(v15 + 8732);
        }
      }

LABEL_64:
      v31 = v12;
      physx::Scb::Body::setFlags((a1 + 96), &v31);
      return;
    }

    if ((*(*a1 + 48))(a1) != 2)
    {
      if (*(a1 + 104) >> 30 == 1)
      {
        v27 = *(a1 + 304);
        if (v27)
        {
          if (*(v27 + 31) != 1)
          {
            physx::Sc::BodyCore::setupSimStateData(a1 + 128, *(*(a1 + 96) + 4384), 1, 0);
          }
        }
      }

      if (v15)
      {
        *(v15 + 4700) = vadd_s32(*(v15 + 4700), 0x1FFFFFFFFLL);
      }

      goto LABEL_64;
    }

    v25 = physx::shdfnd::Foundation::mInstance;

    physx::shdfnd::Foundation::error(v25, 4, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpRigidBodyTemplate.h", 540, "RigidBody::setRigidBodyFlag: kinematic articulation links are not supported!", v22, v23, v24, a9);
  }

  else
  {
    v16 = *(a1 + 48);
    v17 = a1 + 40;
    if (v16 != 1)
    {
      if (*(a1 + 48))
      {
        v17 = *(a1 + 40);
        goto LABEL_21;
      }

LABEL_25:
      if ((v11 & 2) == 0)
      {
LABEL_26:
        if (!v15)
        {
          goto LABEL_51;
        }

        goto LABEL_50;
      }

      if ((*(a1 + 381) & 0x80) != 0)
      {
        if (!v15)
        {
LABEL_51:
          if (*(a1 + 104) >> 30 == 1)
          {
            v28 = *(a1 + 304);
            if (v28)
            {
              physx::Sc::BodyCore::tearDownSimStateData(a1 + 128, *(*(a1 + 96) + 4384), *(v28 + 31) == 1);
            }
          }

          goto LABEL_54;
        }
      }

      else
      {
        if (*(a1 + 104) >> 30 == 3)
        {
          goto LABEL_26;
        }

        v26 = *(a1 + 304);
        if (!v26 || *(v26 + 31) != 1 || !*(v26 + 28) || !v15)
        {
          goto LABEL_26;
        }
      }

      physx::NpShapeManager::markAllSceneQueryForUpdate(a1 + 40, v15 + 8640, a1);
      ++*(v15 + 8732);
LABEL_50:
      *(v15 + 4700) = vadd_s32(*(v15 + 4700), 0xFFFFFFFF00000001);
      goto LABEL_51;
    }

LABEL_21:
    while (1)
    {
      (*(**v17 + 312))(&v32);
      if (v32)
      {
        v21 = *(*v17 + 152);
        if ((v21 | 4) == 5 || v21 == 6)
        {
          break;
        }
      }

      v17 += 8;
      if (!--v16)
      {
        goto LABEL_25;
      }
    }

    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 4, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpRigidBodyTemplate.h", 513, "RigidBody::setRigidBodyFlag: dynamic meshes/planes/heightfields are not supported!", v18, v19, v20, v30);
  }
}

void physx::NpRigidBodyTemplate<physx::PxRigidDynamic>::setRigidBodyFlags(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if ((*(a1 + 381) & 0x40) != 0)
  {
    v10 = (*(a1 + 112) + 348);
  }

  else
  {
    v10 = (a1 + 172);
  }

  v11 = *v10;
  v12 = *a2;
  if ((~v12 & 5) == 0)
  {
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 4, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpRigidBodyTemplate.h", 476, "RigidBody::setRigidBodyFlag: kinematic bodies with CCD enabled are not supported! CCD will be ignored.", a6, a7, a8, v30);
    v12 &= ~4u;
  }

  if ((~v12 & 0x24) == 0)
  {
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 4, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpRigidBodyTemplate.h", 483, "RigidBody::setRigidBodyFlag: eENABLE_CCD can't be raised as the same time as eENABLE_SPECULATIVE_CCD! eENABLE_SPECULATIVE_CCD will be ignored.", a6, a7, a8, v30);
    v12 &= 0xDFu;
  }

  v13 = (a1 + *(&physx::NpActor::sLazyInitOffsets + *(a1 + 8) + 18));
  if (((*(v13 + 2) >> 30) - 1) > 1)
  {
    v15 = 0;
  }

  else
  {
    v14 = *v13;
    if (v14)
    {
      v15 = v14 - 16;
    }

    else
    {
      v15 = 0;
    }
  }

  if (v11 & 1) == 0 || (v12)
  {
    if ((v11 & 1) != 0 || (v12 & 1) == 0)
    {
LABEL_51:
      if ((v11 & 1) != 0 && (v12 & 1) != 0 && ((v12 ^ v11) & 2) != 0 && ((*(a1 + 381) & 0x80) != 0 || *(a1 + 104) >> 30 != 3 && (v29 = *(a1 + 304)) != 0 && *(v29 + 31) == 1 && *(v29 + 28)))
      {
        if (v15)
        {
          physx::NpShapeManager::markAllSceneQueryForUpdate(a1 + 40, v15 + 8640, a1);
          ++*(v15 + 8732);
        }
      }

LABEL_61:
      v31 = v12;
      physx::Scb::Body::setFlags((a1 + 96), &v31);
      return;
    }

    if ((*(*a1 + 48))(a1) != 2)
    {
      if (*(a1 + 104) >> 30 == 1)
      {
        v27 = *(a1 + 304);
        if (v27)
        {
          if (*(v27 + 31) != 1)
          {
            physx::Sc::BodyCore::setupSimStateData(a1 + 128, *(*(a1 + 96) + 4384), 1, 0);
          }
        }
      }

      if (v15)
      {
        *(v15 + 4700) = vadd_s32(*(v15 + 4700), 0x1FFFFFFFFLL);
      }

      goto LABEL_61;
    }

    v25 = physx::shdfnd::Foundation::mInstance;

    physx::shdfnd::Foundation::error(v25, 4, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpRigidBodyTemplate.h", 540, "RigidBody::setRigidBodyFlag: kinematic articulation links are not supported!", v22, v23, v24, a9);
  }

  else
  {
    v16 = *(a1 + 48);
    v17 = a1 + 40;
    if (v16 != 1)
    {
      if (*(a1 + 48))
      {
        v17 = *(a1 + 40);
        goto LABEL_18;
      }

LABEL_22:
      if ((v11 & 2) == 0)
      {
LABEL_23:
        if (!v15)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      }

      if ((*(a1 + 381) & 0x80) != 0)
      {
        if (!v15)
        {
LABEL_48:
          if (*(a1 + 104) >> 30 == 1)
          {
            v28 = *(a1 + 304);
            if (v28)
            {
              physx::Sc::BodyCore::tearDownSimStateData(a1 + 128, *(*(a1 + 96) + 4384), *(v28 + 31) == 1);
            }
          }

          goto LABEL_51;
        }
      }

      else
      {
        if (*(a1 + 104) >> 30 == 3)
        {
          goto LABEL_23;
        }

        v26 = *(a1 + 304);
        if (!v26 || *(v26 + 31) != 1 || !*(v26 + 28) || !v15)
        {
          goto LABEL_23;
        }
      }

      physx::NpShapeManager::markAllSceneQueryForUpdate(a1 + 40, v15 + 8640, a1);
      ++*(v15 + 8732);
LABEL_47:
      *(v15 + 4700) = vadd_s32(*(v15 + 4700), 0xFFFFFFFF00000001);
      goto LABEL_48;
    }

LABEL_18:
    while (1)
    {
      (*(**v17 + 312))(&v32);
      if (v32)
      {
        v21 = *(*v17 + 152);
        if ((v21 | 4) == 5 || v21 == 6)
        {
          break;
        }
      }

      v17 += 8;
      if (!--v16)
      {
        goto LABEL_22;
      }
    }

    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 4, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpRigidBodyTemplate.h", 513, "RigidBody::setRigidBodyFlag: dynamic meshes/planes/heightfields are not supported!", v18, v19, v20, v30);
  }
}

uint64_t physx::NpRigidBodyTemplate<physx::PxRigidDynamic>::getRigidBodyFlags@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if ((*(result + 381) & 0x40) != 0)
  {
    v2 = (*(result + 112) + 348);
  }

  else
  {
    v2 = (result + 172);
  }

  *a2 = *v2;
  return result;
}

int32x2_t *physx::NpRigidBodyTemplate<physx::PxRigidDynamic>::setMinCCDAdvanceCoefficient(int32x2_t *result, float a2)
{
  v3 = result;
  v4 = result[13].u32[0];
  if (v4 >> 30 == 2)
  {
    result = result[12];
    if (result[961].i8[1])
    {
      goto LABEL_5;
    }

LABEL_8:
    *&v3[25].i32[1] = a2;
    return result;
  }

  if (v4 >> 30 != 3)
  {
    goto LABEL_8;
  }

  result = result[12];
LABEL_5:
  Stream = v3[14];
  if (!Stream)
  {
    Stream = physx::Scb::Scene::getStream(result, HIBYTE(v4) & 0xF);
    v3[14] = Stream;
    result = v3[12];
  }

  *(Stream + 200) = a2;
  result = physx::Scb::Scene::scheduleForUpdate(result, &v3[12]);
  v3[47].i32[1] |= 0x80u;
  return result;
}

float physx::NpRigidBodyTemplate<physx::PxRigidDynamic>::getMinCCDAdvanceCoefficient(uint64_t a1)
{
  if ((*(a1 + 380) & 0x80) != 0)
  {
    v1 = *(a1 + 112) + 200;
  }

  else
  {
    v1 = a1 + 204;
  }

  return *v1;
}

int32x2_t *physx::NpRigidBodyTemplate<physx::PxRigidDynamic>::setMaxDepenetrationVelocity(int32x2_t *result, float a2)
{
  v2 = result;
  v3 = -a2;
  v4 = result[13].u32[0];
  if (v4 >> 30 == 2)
  {
    result = result[12];
    if (result[961].i8[1])
    {
      goto LABEL_5;
    }

LABEL_8:
    *&v2[27].i32[1] = v3;
    return result;
  }

  if (v4 >> 30 != 3)
  {
    goto LABEL_8;
  }

  result = result[12];
LABEL_5:
  Stream = v2[14];
  if (!Stream)
  {
    Stream = physx::Scb::Scene::getStream(result, HIBYTE(v4) & 0xF);
    v2[14] = Stream;
    result = v2[12];
  }

  *(Stream + 252) = v3;
  result = physx::Scb::Scene::scheduleForUpdate(result, &v2[12]);
  v2[47].i32[1] |= 0x800u;
  return result;
}

float physx::NpRigidBodyTemplate<physx::PxRigidDynamic>::getMaxDepenetrationVelocity(uint64_t a1)
{
  if ((*(a1 + 381) & 8) != 0)
  {
    v1 = (*(a1 + 112) + 252);
  }

  else
  {
    v1 = (a1 + 220);
  }

  return -*v1;
}

float *physx::NpRigidBodyTemplate<physx::PxRigidDynamic>::setMaxContactImpulse(uint64_t a1, float a2)
{
  v4 = *(a1 + 104);
  if (v4 >> 30 == 2)
  {
    v5 = *(a1 + 96);
    if (v5[961].i8[1])
    {
      goto LABEL_5;
    }
  }

  else if (v4 >> 30 == 3)
  {
    v5 = *(a1 + 96);
LABEL_5:
    Stream = *(a1 + 112);
    if (!Stream)
    {
      Stream = physx::Scb::Scene::getStream(v5, HIBYTE(v4) & 0xF);
      *(a1 + 112) = Stream;
      v5 = *(a1 + 96);
    }

    *(Stream + 260) = a2;
    result = physx::Scb::Scene::scheduleForUpdate(v5, a1 + 96);
    *(a1 + 380) |= 0x2000u;
    return result;
  }

  return physx::Sc::BodyCore::setMaxContactImpulse((a1 + 128), a2);
}

float physx::NpRigidBodyTemplate<physx::PxRigidDynamic>::getMaxContactImpulse(uint64_t a1)
{
  if ((*(a1 + 381) & 0x20) != 0)
  {
    v1 = *(a1 + 112) + 260;
  }

  else
  {
    v1 = a1 + 272;
  }

  return *v1;
}

uint64_t physx::NpRigidBodyTemplate<physx::PxRigidDynamic>::getInternalIslandNodeIndex(uint64_t a1)
{
  v1 = *(a1 + 128);
  if (v1)
  {
    return *(v1 + 176) >> 7;
  }

  else
  {
    return 0x1FFFFFFLL;
  }
}

uint64_t physx::NpRigidActorTemplate<physx::PxRigidDynamic>::exportExtraData(uint64_t a1, uint64_t a2)
{
  physx::NpShapeManager::exportExtraData(a1 + 40, a2);

  return physx::NpActor::exportExtraData((a1 + 24), a2);
}

void *physx::NpRigidActorTemplate<physx::PxRigidDynamic>::importExtraData(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  if (v2 >= 2)
  {
    v3 = (*(a2 + 8) + 15) & 0xFFFFFFFFFFFFFFF0;
    *(a2 + 8) = v3 + 8 * v2;
    *(a1 + 40) = v3;
  }

  v4 = *(a1 + 64);
  if (v4 >= 2)
  {
    v5 = (*(a2 + 8) + 15) & 0xFFFFFFFFFFFFFFF0;
    *(a2 + 8) = v5 + 8 * v4;
    *(a1 + 56) = v5;
  }

  return physx::NpActor::importExtraData((a1 + 24), a2);
}

uint64_t physx::NpRigidActorTemplate<physx::PxRigidDynamic>::resolveReferences(uint64_t a1, uint64_t (***a2)(void, uint64_t))
{
  v4 = (a1 + 40);
  v5 = *(a1 + 48);
  if (v5 != 1)
  {
    if (!*(a1 + 48))
    {
      goto LABEL_10;
    }

    v4 = *v4;
  }

  do
  {
    if (*v4)
    {
      v6 = (**a2)(a2, 0x80000000);
      *v4 = v6;
    }

    else
    {
      v6 = 0;
    }

    atomic_fetch_add((v6 + 32), 1u);
    if ((*(v6 + 264) & 0x80000000) != 0)
    {
      *(v6 + 40) = a1;
    }

    atomic_fetch_add((v6 + 264), 1u);
    ++v4;
    --v5;
  }

  while (v5);
LABEL_10:

  return physx::NpActor::resolveReferences(a1 + 24, a2);
}

BOOL physx::PxRigidStatic::isKindOf(physx::PxRigidStatic *this, const char *a2)
{
  if (!strcmp("PxRigidStatic", a2))
  {
    return 1;
  }

  return physx::PxRigidActor::isKindOf(this, a2);
}

uint64_t physx::NpActorTemplate<physx::PxRigidStatic>::getScene(uint64_t a1)
{
  v1 = (a1 + *(&physx::NpActor::sLazyInitOffsets + *(a1 + 8) + 18));
  if (((*(v1 + 2) >> 30) - 1) > 1)
  {
    return 0;
  }

  v2 = *v1;
  if (v2)
  {
    return v2 - 16;
  }

  else
  {
    return 0;
  }
}

float physx::NpRigidActorTemplate<physx::PxRigidStatic>::getWorldBounds@<S0>(physx::PxRigidActor *a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  physx::NpShapeManager::getWorldBounds((a1 + 40), a1, &v11);
  v4 = (v12 + v14) * 0.5;
  v5 = ((v14 - v12) * 0.5) * a3;
  v6 = v4 - v5;
  result = v4 + v5;
  v8 = vmul_f32(vadd_f32(v11, v13), 0x3F0000003F000000);
  v9 = vmul_n_f32(vmul_f32(vsub_f32(v13, v11), 0x3F0000003F000000), a3);
  *a2 = vsub_f32(v8, v9);
  *(a2 + 8) = v6;
  *(a2 + 12) = vadd_f32(v8, v9);
  *(a2 + 20) = result;
  return result;
}

int32x2_t *physx::NpRigidActorTemplate<physx::PxRigidStatic>::setActorFlag(int32x2_t *result, int a2, int a3)
{
  v5 = result;
  if (a2 != 8)
  {
    goto LABEL_35;
  }

  v6 = *(&physx::NpActor::sLazyInitOffsets + result[1].u16[0] + 18);
  v7 = (result + v6);
  v8 = *(result[1].u32 + v6);
  if (v8)
  {
    v9 = v7[2];
  }

  else
  {
    v9 = (v7 + *(&physx::Scb::Actor::sLazyInitOffsets + ((v8 >> 24) & 0xF) + 3) + 12);
  }

  v10 = *v7;
  v11 = v9->u8[0];
  if (v11 & 8) == 0 || (a3)
  {
    if ((v11 & 8) != 0 || !a3)
    {
      goto LABEL_35;
    }

    if (v10)
    {
      physx::NpActor::removeConstraintsFromScene(&result[3]);
      v6 = *(&physx::NpActor::sLazyInitOffsets + v5[1].u16[0] + 18);
      LODWORD(v8) = *(v5[1].i32 + v6);
    }

    v17 = v11 | 8;
    v18 = v5 + v6;
    v19 = BYTE3(v8) & 0xF;
    v20 = *(&physx::Scb::Actor::sLazyInitOffsets + v19 + 3);
    v21 = v8 >> 30;
    if (v21 == 2)
    {
      v22 = *v18;
      if (*(*v18 + 7689))
      {
        goto LABEL_28;
      }
    }

    else if (v21 == 3)
    {
      v22 = *v18;
LABEL_28:
      Stream = *(v18 + 16);
      if (!Stream)
      {
        Stream = physx::Scb::Scene::getStream(v22, v19);
        *(v18 + 16) = Stream;
        v22 = *v18;
      }

      *Stream = v17;
      physx::Scb::Scene::scheduleForUpdate(v22, v18);
      *(v18 + 8) |= 1u;
LABEL_34:
      result = (*(*v5 + 248))(v5);
      goto LABEL_35;
    }

    v26 = (v20 + v18);
    if (v17 != *(v20 + v18 + 12))
    {
      v26[12] = v17;
      if (*v26)
      {
        (*(**v26 + 16))(*v26);
      }
    }

    goto LABEL_34;
  }

  result = (*(*result + 256))(result);
  v12 = v11 & 0xFFFFFFF7;
  v13 = v5 + *(&physx::NpActor::sLazyInitOffsets + v5[1].u16[0] + 18);
  v14 = *(v13 + 8);
  v15 = (v14 >> 24) & 0xF;
  v16 = v14 >> 30;
  if (v16 == 2)
  {
    result = *v13;
    if (*(*v13 + 7689))
    {
      goto LABEL_18;
    }

LABEL_21:
    v24 = *(&physx::Scb::Actor::sLazyInitOffsets + v15 + 3) + v13;
    if (v12 != *(v24 + 12))
    {
      *(v24 + 12) = v12;
      result = *v24;
      if (*v24)
      {
        result = (*(*result + 16))(result);
      }
    }

    goto LABEL_24;
  }

  if (v16 != 3)
  {
    goto LABEL_21;
  }

  result = *v13;
LABEL_18:
  v23 = *(v13 + 16);
  if (!v23)
  {
    v23 = physx::Scb::Scene::getStream(result, v15);
    *(v13 + 16) = v23;
    result = *v13;
  }

  *v23 = v12;
  result = physx::Scb::Scene::scheduleForUpdate(result, v13);
  *(v13 + 8) |= 1u;
LABEL_24:
  if (v10 && *&v5[4])
  {
    result = physx::NpActor::addConstraintsToSceneInternal(v5 + 3);
  }

LABEL_35:
  v27 = v5 + *(&physx::NpActor::sLazyInitOffsets + v5[1].u16[0] + 18);
  v28 = *(v27 + 8);
  if (a3)
  {
    if (v28)
    {
      v31 = *(v27 + 16);
      v29 = (v28 >> 24) & 0xF;
      v30 = *(&physx::Scb::Actor::sLazyInitOffsets + v29 + 3) + v27;
    }

    else
    {
      v29 = (v28 >> 24) & 0xF;
      v30 = *(&physx::Scb::Actor::sLazyInitOffsets + v29 + 3) + v27;
      v31 = (v30 + 12);
    }

    v33 = *v31 | a2;
  }

  else
  {
    if (v28)
    {
      v32 = *(v27 + 16);
      v29 = (v28 >> 24) & 0xF;
      v30 = *(&physx::Scb::Actor::sLazyInitOffsets + v29 + 3) + v27;
    }

    else
    {
      LODWORD(v29) = BYTE3(v28) & 0xF;
      v30 = *(&physx::Scb::Actor::sLazyInitOffsets + v29 + 3) + v27;
      v32 = (v30 + 12);
    }

    v33 = *v32 & ~a2;
  }

  v34 = v28 >> 30;
  if (v34 == 2)
  {
    result = *v27;
    if (*(*v27 + 7689))
    {
      goto LABEL_48;
    }
  }

  else if (v34 == 3)
  {
    result = *v27;
LABEL_48:
    v35 = *(v27 + 16);
    if (!v35)
    {
      v35 = physx::Scb::Scene::getStream(result, v29);
      *(v27 + 16) = v35;
      result = *v27;
    }

    *v35 = v33;
    result = physx::Scb::Scene::scheduleForUpdate(result, v27);
    *(v27 + 8) |= 1u;
    return result;
  }

  if (v33 != *(v30 + 12))
  {
    *(v30 + 12) = v33;
    result = *v30;
    if (*v30)
    {
      v36 = *(*result + 16);

      return v36();
    }
  }

  return result;
}

int32x2_t *physx::NpRigidActorTemplate<physx::PxRigidStatic>::setActorFlags(int32x2_t *result, _BYTE *a2)
{
  v3 = result;
  v4 = *(&physx::NpActor::sLazyInitOffsets + result[1].u16[0] + 18);
  v5 = (result + v4);
  v6 = *(result[1].u32 + v4);
  if (v6)
  {
    v7 = v5[2];
  }

  else
  {
    v7 = (v5 + *(&physx::Scb::Actor::sLazyInitOffsets + ((v6 >> 24) & 0xF) + 3) + 12);
  }

  v8 = *v5;
  v9 = v7->u8[0];
  if ((*a2 & 8) != 0 || (v9 & 8) == 0)
  {
    if ((*a2 & 8) == 0 || (v9 & 8) != 0)
    {
      goto LABEL_34;
    }

    if (v8)
    {
      physx::NpActor::removeConstraintsFromScene(&result[3]);
      v4 = *(&physx::NpActor::sLazyInitOffsets + v3[1].u16[0] + 18);
      LODWORD(v6) = *(v3[1].i32 + v4);
    }

    v15 = v9 | 8;
    v16 = v3 + v4;
    v17 = BYTE3(v6) & 0xF;
    v18 = *(&physx::Scb::Actor::sLazyInitOffsets + v17 + 3);
    v19 = v6 >> 30;
    if (v19 == 2)
    {
      v20 = *v16;
      if (*(*v16 + 7689))
      {
        goto LABEL_27;
      }
    }

    else if (v19 == 3)
    {
      v20 = *v16;
LABEL_27:
      Stream = *(v16 + 16);
      if (!Stream)
      {
        Stream = physx::Scb::Scene::getStream(v20, v17);
        *(v16 + 16) = Stream;
        v20 = *v16;
      }

      *Stream = v15;
      physx::Scb::Scene::scheduleForUpdate(v20, v16);
      *(v16 + 8) |= 1u;
LABEL_33:
      result = (*(*v3 + 248))(v3);
      goto LABEL_34;
    }

    v24 = (v18 + v16);
    if (v15 != *(v18 + v16 + 12))
    {
      v24[12] = v15;
      if (*v24)
      {
        (*(**v24 + 16))(*v24);
      }
    }

    goto LABEL_33;
  }

  result = (*(*result + 256))(result);
  v10 = v9 & 0xFFFFFFF7;
  v11 = v3 + *(&physx::NpActor::sLazyInitOffsets + v3[1].u16[0] + 18);
  v12 = *(v11 + 8);
  v13 = (v12 >> 24) & 0xF;
  v14 = v12 >> 30;
  if (v14 == 2)
  {
    result = *v11;
    if (*(*v11 + 7689))
    {
      goto LABEL_17;
    }

LABEL_20:
    v22 = *(&physx::Scb::Actor::sLazyInitOffsets + v13 + 3) + v11;
    if (v10 != *(v22 + 12))
    {
      *(v22 + 12) = v10;
      result = *v22;
      if (*v22)
      {
        result = (*(*result + 16))(result);
      }
    }

    goto LABEL_23;
  }

  if (v14 != 3)
  {
    goto LABEL_20;
  }

  result = *v11;
LABEL_17:
  v21 = *(v11 + 16);
  if (!v21)
  {
    v21 = physx::Scb::Scene::getStream(result, v13);
    *(v11 + 16) = v21;
    result = *v11;
  }

  *v21 = v10;
  result = physx::Scb::Scene::scheduleForUpdate(result, v11);
  *(v11 + 8) |= 1u;
LABEL_23:
  if (v8 && *&v3[4])
  {
    result = physx::NpActor::addConstraintsToSceneInternal(v3 + 3);
  }

LABEL_34:
  v25 = *a2;
  v26 = v3 + *(&physx::NpActor::sLazyInitOffsets + v3[1].u16[0] + 18);
  v27 = *(v26 + 8);
  v28 = (v27 >> 24) & 0xF;
  v29 = v27 >> 30;
  if (v29 == 2)
  {
    result = *v26;
    if (*(*v26 + 7689))
    {
      goto LABEL_38;
    }
  }

  else if (v29 == 3)
  {
    result = *v26;
LABEL_38:
    v30 = *(v26 + 16);
    if (!v30)
    {
      v30 = physx::Scb::Scene::getStream(result, v28);
      *(v26 + 16) = v30;
      result = *v26;
    }

    *v30 = v25;
    result = physx::Scb::Scene::scheduleForUpdate(result, v26);
    *(v26 + 8) |= 1u;
    return result;
  }

  v31 = *(&physx::Scb::Actor::sLazyInitOffsets + v28 + 3) + v26;
  if (v25 != *(v31 + 12))
  {
    *(v31 + 12) = v25;
    result = *v31;
    if (*v31)
    {
      v32 = *(*result + 16);

      return v32();
    }
  }

  return result;
}

uint64_t physx::NpActorTemplate<physx::PxRigidStatic>::getActorFlags@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = result + *(&physx::NpActor::sLazyInitOffsets + *(result + 8) + 18);
  v3 = *(v2 + 8);
  if (v3)
  {
    v4 = *(v2 + 16);
  }

  else
  {
    v4 = (*(&physx::Scb::Actor::sLazyInitOffsets + ((v3 >> 24) & 0xF) + 3) + v2 + 12);
  }

  *a2 = *v4;
  return result;
}

int32x2_t *physx::NpActorTemplate<physx::PxRigidStatic>::setDominanceGroup(uint64_t a1, char a2)
{
  v3 = a1 + *(&physx::NpActor::sLazyInitOffsets + *(a1 + 8) + 18);
  v4 = *(v3 + 8);
  v5 = (v4 >> 24) & 0xF;
  v6 = *(&physx::Scb::Actor::sLazyInitOffsets + v5 + 3);
  v7 = v4 >> 30;
  if (v7 == 2)
  {
    v8 = *v3;
    if (*(*v3 + 7689))
    {
      goto LABEL_5;
    }
  }

  else if (v7 == 3)
  {
    v8 = *v3;
LABEL_5:
    Stream = *(v3 + 16);
    if (!Stream)
    {
      Stream = physx::Scb::Scene::getStream(v8, v5);
      *(v3 + 16) = Stream;
      v8 = *v3;
    }

    *(Stream + 1) = a2;
    result = physx::Scb::Scene::scheduleForUpdate(v8, v3);
    *(v3 + 8) |= 2u;
    return result;
  }

  *(v6 + v3 + 14) = a2;
  result = *(v3 + v6);
  if (result)
  {

    return physx::Sc::ActorSim::setActorsInteractionsDirty(result, 8, 0, 1);
  }

  return result;
}

uint64_t physx::NpActorTemplate<physx::PxRigidStatic>::getDominanceGroup(uint64_t a1)
{
  v1 = a1 + *(&physx::NpActor::sLazyInitOffsets + *(a1 + 8) + 18);
  v2 = *(v1 + 8);
  if ((v2 & 2) != 0)
  {
    v3 = (*(v1 + 16) + 1);
  }

  else
  {
    v3 = (*(&physx::Scb::Actor::sLazyInitOffsets + ((v2 >> 24) & 0xF) + 3) + v1 + 14);
  }

  return *v3;
}

uint64_t physx::NpActorTemplate<physx::PxRigidStatic>::setOwnerClient(uint64_t result, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = result + *(&physx::NpActor::sLazyInitOffsets + *(result + 8) + 18);
  if (*v9)
  {
    v10 = "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpActorTemplate.h";
    v11 = "Attempt to set the client id when an actor is already in a scene.";
    v12 = physx::shdfnd::Foundation::mInstance;
    v13 = 196;
    return physx::shdfnd::Foundation::error(v12, 8, v10, v13, v11, a6, a7, a8, a9);
  }

  v14 = *(v9 + 8);
  if (v14 >> 30 == 3 || v14 >> 30 == 2 && (MEMORY[0x1E09] & 1) != 0)
  {
    v10 = "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/buffering/ScbActor.h";
    v11 = "Attempt to set the client id when an actor is buffering";
    v12 = physx::shdfnd::Foundation::mInstance;
    v13 = 182;
    return physx::shdfnd::Foundation::error(v12, 8, v10, v13, v11, a6, a7, a8, a9);
  }

  *(*(&physx::Scb::Actor::sLazyInitOffsets + ((v14 >> 24) & 0xF) + 3) + v9 + 11) = a2;
  return result;
}

uint64_t physx::NpActorTemplate<physx::PxRigidStatic>::getAggregate(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 80);
  if (!v2)
  {
    return 0;
  }

  for (i = *(v1 + 72) + 8; *(i - 8) != 1; i += 16)
  {
    if (!--v2)
    {
      return 0;
    }
  }

  return *i;
}

uint64_t physx::NpRigidActorTemplate<physx::PxRigidStatic>::attachShape(physx::PxRigidActor *a1, physx::NpShape *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 10))
  {
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpRigidActorTemplate.h", 233, "PxRigidActor::attachShape: Actor is part of a pruning structure, pruning structure is now invalid!", a6, a7, a8, v11);
    physx::Sq::PruningStructure::invalidate(*(a1 + 10), a1);
  }

  physx::NpShapeManager::attachShape((a1 + 40), a2, a1);
  return 1;
}

uint64_t physx::NpRigidActorTemplate<physx::PxRigidStatic>::detachShape(physx::PxRigidActor *a1, physx::NpShape *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (*(a1 + 10))
  {
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpRigidActorTemplate.h", 247, "PxRigidActor::detachShape: Actor is part of a pruning structure, pruning structure is now invalid!", a6, a7, a8, v17);
    physx::Sq::PruningStructure::invalidate(*(a1 + 10), a1);
  }

  result = physx::NpShapeManager::detachShape((a1 + 40), a2, a1, a3);
  if ((result & 1) == 0)
  {
    v16 = physx::shdfnd::Foundation::mInstance;

    return physx::shdfnd::Foundation::error(v16, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpRigidActorTemplate.h", 253, "PxRigidActor::detachShape: shape is not attached to this actor!", v13, v14, v15, a9);
  }

  return result;
}

uint64_t physx::NpRigidActorTemplate<physx::PxRigidStatic>::getShapes(uint64_t a1, void *a2, unsigned int a3, int a4)
{
  v4 = (a1 + 40);
  v5 = *(a1 + 48);
  if (v5 != 1)
  {
    v4 = *v4;
  }

  v6 = (v5 - a4) & ~((v5 - a4) >> 31);
  if (v6 >= a3)
  {
    result = a3;
  }

  else
  {
    result = v6;
  }

  if (result)
  {
    v8 = &v4[a4];
    v9 = result;
    do
    {
      v10 = *v8++;
      *a2++ = v10;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t physx::NpRigidActorTemplate<physx::PxRigidStatic>::getNbConstraints(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 80);
  if (!v2)
  {
    return 0;
  }

  LODWORD(result) = 0;
  v4 = *(v1 + 72);
  do
  {
    v5 = *v4;
    v4 += 16;
    if (v5)
    {
      result = result;
    }

    else
    {
      result = (result + 1);
    }

    --v2;
  }

  while (v2);
  return result;
}

uint64_t physx::NpRigidActorTemplate<physx::PxRigidStatic>::exportExtraData(uint64_t a1, uint64_t a2)
{
  physx::NpShapeManager::exportExtraData(a1 + 40, a2);

  return physx::NpActor::exportExtraData((a1 + 24), a2);
}

void *physx::NpRigidActorTemplate<physx::PxRigidStatic>::importExtraData(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  if (v2 >= 2)
  {
    v3 = (*(a2 + 8) + 15) & 0xFFFFFFFFFFFFFFF0;
    *(a2 + 8) = v3 + 8 * v2;
    *(a1 + 40) = v3;
  }

  v4 = *(a1 + 64);
  if (v4 >= 2)
  {
    v5 = (*(a2 + 8) + 15) & 0xFFFFFFFFFFFFFFF0;
    *(a2 + 8) = v5 + 8 * v4;
    *(a1 + 56) = v5;
  }

  return physx::NpActor::importExtraData((a1 + 24), a2);
}

uint64_t physx::NpRigidActorTemplate<physx::PxRigidStatic>::resolveReferences(uint64_t a1, uint64_t (***a2)(void, uint64_t))
{
  v4 = (a1 + 40);
  v5 = *(a1 + 48);
  if (v5 != 1)
  {
    if (!*(a1 + 48))
    {
      goto LABEL_10;
    }

    v4 = *v4;
  }

  do
  {
    if (*v4)
    {
      v6 = (**a2)(a2, 0x80000000);
      *v4 = v6;
    }

    else
    {
      v6 = 0;
    }

    atomic_fetch_add((v6 + 32), 1u);
    if ((*(v6 + 264) & 0x80000000) != 0)
    {
      *(v6 + 40) = a1;
    }

    atomic_fetch_add((v6 + 264), 1u);
    ++v4;
    --v5;
  }

  while (v5);
LABEL_10:

  return physx::NpActor::resolveReferences(a1 + 24, a2);
}

uint64_t physx::NpScene::getTaskManager(physx::NpScene *this)
{
  return *(this + 1170);
}

{
  return *(this + 1170);
}

void physx::NpContactCallbackTask::~NpContactCallbackTask(physx::NpContactCallbackTask *this)
{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
}

{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
  JUMPOUT(0x1E6906520);
}

uint64_t physx::NpRigidActorTemplate<physx::PxRigidDynamic>::release(physx::PxRigidActor *a1)
{
  physx::NpActor::releaseConstraints(a1 + 24, a1);
  v5 = a1 + *(&physx::NpActor::sLazyInitOffsets + *(a1 + 4) + 18);
  if (((*(v5 + 2) >> 30) - 1) > 1)
  {
    v7 = 0;
  }

  else
  {
    v6 = *v5;
    if (v6)
    {
      v7 = (v6 - 16);
    }

    else
    {
      v7 = 0;
    }
  }

  if (*(a1 + 10))
  {
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpRigidActorTemplate.h", 200, "PxRigidActor::release: Actor is part of a pruning structure, pruning structure is now invalid!", v2, v3, v4, v16);
    physx::Sq::PruningStructure::invalidate(*(a1 + 10), a1);
  }

  result = physx::NpShapeManager::detachAll((a1 + 40), v7, a1);
  v14 = *(a1 + 4);
  if (v14)
  {
    v15 = *(*(v14 + 72) + 8);

    return physx::NpAggregate::removeActorAndReinsert(v15, a1, 0, v9, v10, v11, v12, v13);
  }

  return result;
}

uint64_t physx::NpRigidActorTemplate<physx::PxRigidDynamic>::attachShape(physx::PxRigidActor *a1, physx::NpShape *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 10))
  {
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpRigidActorTemplate.h", 233, "PxRigidActor::attachShape: Actor is part of a pruning structure, pruning structure is now invalid!", a6, a7, a8, v11);
    physx::Sq::PruningStructure::invalidate(*(a1 + 10), a1);
  }

  physx::NpShapeManager::attachShape((a1 + 40), a2, a1);
  return 1;
}

physx::PxActor *physx::NpActorTemplate<physx::PxRigidDynamic>::release(physx::PxActor *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(result + 4);
  if (v8)
  {
    return physx::NpAggregate::removeActorAndReinsert(*(*(v8 + 72) + 8), result, 0, a4, a5, a6, a7, a8);
  }

  return result;
}

int32x2_t *physx::NpActorTemplate<physx::PxRigidDynamic>::setActorFlag(int32x2_t *result, int a2, int a3)
{
  v3 = result + *(&physx::NpActor::sLazyInitOffsets + result[1].u16[0] + 18);
  v4 = *(v3 + 8);
  if (a3)
  {
    if (v4)
    {
      v6 = *(v3 + 16);
      v7 = (v4 >> 24) & 0xF;
      v5 = *(&physx::Scb::Actor::sLazyInitOffsets + v7 + 3) + v3;
    }

    else
    {
      v5 = *(&physx::Scb::Actor::sLazyInitOffsets + ((v4 >> 24) & 0xF) + 3) + v3;
      v6 = (v5 + 12);
      v7 = (v4 >> 24) & 0xF;
    }

    v9 = *v6 | a2;
  }

  else
  {
    if (v4)
    {
      v8 = *(v3 + 16);
      v7 = (v4 >> 24) & 0xF;
      v5 = *(&physx::Scb::Actor::sLazyInitOffsets + v7 + 3) + v3;
    }

    else
    {
      LODWORD(v7) = BYTE3(v4) & 0xF;
      v5 = *(&physx::Scb::Actor::sLazyInitOffsets + v7 + 3) + v3;
      v8 = (v5 + 12);
    }

    v9 = *v8 & ~a2;
  }

  v10 = v4 >> 30;
  if (v10 == 2)
  {
    result = *v3;
    if (*(*v3 + 7689))
    {
      goto LABEL_14;
    }
  }

  else if (v10 == 3)
  {
    result = *v3;
LABEL_14:
    Stream = *(v3 + 16);
    if (!Stream)
    {
      Stream = physx::Scb::Scene::getStream(result, v7);
      *(v3 + 16) = Stream;
      result = *v3;
    }

    *Stream = v9;
    result = physx::Scb::Scene::scheduleForUpdate(result, v3);
    *(v3 + 8) |= 1u;
    return result;
  }

  if (v9 != *(v5 + 12))
  {
    *(v5 + 12) = v9;
    result = *v5;
    if (*v5)
    {
      v12 = *(*result + 16);

      return v12();
    }
  }

  return result;
}

int32x2_t *physx::NpActorTemplate<physx::PxRigidDynamic>::setActorFlags(int32x2_t *result, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = result + *(&physx::NpActor::sLazyInitOffsets + result[1].u16[0] + 18);
  v4 = *(v3 + 8);
  v5 = (v4 >> 24) & 0xF;
  v6 = v4 >> 30;
  if (v6 == 2)
  {
    result = *v3;
    if (*(*v3 + 7689))
    {
      goto LABEL_5;
    }
  }

  else if (v6 == 3)
  {
    result = *v3;
LABEL_5:
    Stream = *(v3 + 16);
    if (!Stream)
    {
      Stream = physx::Scb::Scene::getStream(result, v5);
      *(v3 + 16) = Stream;
      result = *v3;
    }

    *Stream = v2;
    result = physx::Scb::Scene::scheduleForUpdate(result, v3);
    *(v3 + 8) |= 1u;
    return result;
  }

  v8 = *(&physx::Scb::Actor::sLazyInitOffsets + v5 + 3) + v3;
  if (v2 != *(v8 + 12))
  {
    *(v8 + 12) = v2;
    result = *v8;
    if (*v8)
    {
      v9 = *(*result + 16);

      return v9();
    }
  }

  return result;
}

uint64_t physx::Scb::Body::setKinematicTarget(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(v4 + 8176);
  v6 = *(a1 + 8);
  if (v6 >> 30 != 3 && (v6 >> 30 != 2 || (*(v4 + 7689) & 1) == 0))
  {
    result = physx::Sc::BodyCore::setKinematicTarget((a1 + 32), *(v4 + 4384), a2, v5);
    *(a1 + 280) = 0;
    *(a1 + 276) = v5;
    return result;
  }

  Stream = *(a1 + 16);
  if (!Stream)
  {
    Stream = physx::Scb::Scene::getStream(v4, HIBYTE(v6) & 0xF);
    *(a1 + 16) = Stream;
    v4 = *a1;
  }

  *(Stream + 272) = *a2;
  *(Stream + 288) = *(a2 + 16);
  *(Stream + 296) = *(a2 + 24);
  physx::Scb::Scene::scheduleForUpdate(v4, a1);
  *(a1 + 284) |= 0x8000u;
  v8 = *(a1 + 8) >> 30;
  if (v8 == 2)
  {
    v9 = *a1;
    if (*(*a1 + 7689))
    {
      goto LABEL_11;
    }
  }

  else if (v8 == 3)
  {
    v9 = *a1;
LABEL_11:
    *(a1 + 280) = 0;
    *(a1 + 276) = v5;
    result = physx::Scb::Scene::scheduleForUpdate(v9, a1);
    *(a1 + 284) = *(a1 + 284) & 0xF8FFFFFF | 0x5000000;
    return result;
  }

  *(a1 + 280) = 0;
  *(a1 + 276) = v5;

  return physx::Sc::BodyCore::setWakeCounter(a1 + 32, v5, 1);
}

uint64_t physx::NpRigidActorTemplate<physx::PxRigidStatic>::release(physx::PxRigidActor *a1)
{
  physx::NpActor::releaseConstraints(a1 + 24, a1);
  v5 = a1 + *(&physx::NpActor::sLazyInitOffsets + *(a1 + 4) + 18);
  if (((*(v5 + 2) >> 30) - 1) > 1)
  {
    v7 = 0;
  }

  else
  {
    v6 = *v5;
    if (v6)
    {
      v7 = (v6 - 16);
    }

    else
    {
      v7 = 0;
    }
  }

  if (*(a1 + 10))
  {
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpRigidActorTemplate.h", 200, "PxRigidActor::release: Actor is part of a pruning structure, pruning structure is now invalid!", v2, v3, v4, v16);
    physx::Sq::PruningStructure::invalidate(*(a1 + 10), a1);
  }

  result = physx::NpShapeManager::detachAll((a1 + 40), v7, a1);
  v14 = *(a1 + 4);
  if (v14)
  {
    v15 = *(*(v14 + 72) + 8);

    return physx::NpAggregate::removeActorAndReinsert(v15, a1, 0, v9, v10, v11, v12, v13);
  }

  return result;
}

physx::PxActor *physx::NpActorTemplate<physx::PxRigidStatic>::release(physx::PxActor *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(result + 4);
  if (v8)
  {
    return physx::NpAggregate::removeActorAndReinsert(*(*(v8 + 72) + 8), result, 0, a4, a5, a6, a7, a8);
  }

  return result;
}

int32x2_t *physx::NpActorTemplate<physx::PxRigidStatic>::setActorFlag(int32x2_t *result, int a2, int a3)
{
  v3 = result + *(&physx::NpActor::sLazyInitOffsets + result[1].u16[0] + 18);
  v4 = *(v3 + 8);
  if (a3)
  {
    if (v4)
    {
      v6 = *(v3 + 16);
      v7 = (v4 >> 24) & 0xF;
      v5 = *(&physx::Scb::Actor::sLazyInitOffsets + v7 + 3) + v3;
    }

    else
    {
      v5 = *(&physx::Scb::Actor::sLazyInitOffsets + ((v4 >> 24) & 0xF) + 3) + v3;
      v6 = (v5 + 12);
      v7 = (v4 >> 24) & 0xF;
    }

    v9 = *v6 | a2;
  }

  else
  {
    if (v4)
    {
      v8 = *(v3 + 16);
      v7 = (v4 >> 24) & 0xF;
      v5 = *(&physx::Scb::Actor::sLazyInitOffsets + v7 + 3) + v3;
    }

    else
    {
      LODWORD(v7) = BYTE3(v4) & 0xF;
      v5 = *(&physx::Scb::Actor::sLazyInitOffsets + v7 + 3) + v3;
      v8 = (v5 + 12);
    }

    v9 = *v8 & ~a2;
  }

  v10 = v4 >> 30;
  if (v10 == 2)
  {
    result = *v3;
    if (*(*v3 + 7689))
    {
      goto LABEL_14;
    }
  }

  else if (v10 == 3)
  {
    result = *v3;
LABEL_14:
    Stream = *(v3 + 16);
    if (!Stream)
    {
      Stream = physx::Scb::Scene::getStream(result, v7);
      *(v3 + 16) = Stream;
      result = *v3;
    }

    *Stream = v9;
    result = physx::Scb::Scene::scheduleForUpdate(result, v3);
    *(v3 + 8) |= 1u;
    return result;
  }

  if (v9 != *(v5 + 12))
  {
    *(v5 + 12) = v9;
    result = *v5;
    if (*v5)
    {
      v12 = *(*result + 16);

      return v12();
    }
  }

  return result;
}

int32x2_t *physx::NpActorTemplate<physx::PxRigidStatic>::setActorFlags(int32x2_t *result, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = result + *(&physx::NpActor::sLazyInitOffsets + result[1].u16[0] + 18);
  v4 = *(v3 + 8);
  v5 = (v4 >> 24) & 0xF;
  v6 = v4 >> 30;
  if (v6 == 2)
  {
    result = *v3;
    if (*(*v3 + 7689))
    {
      goto LABEL_5;
    }
  }

  else if (v6 == 3)
  {
    result = *v3;
LABEL_5:
    Stream = *(v3 + 16);
    if (!Stream)
    {
      Stream = physx::Scb::Scene::getStream(result, v5);
      *(v3 + 16) = Stream;
      result = *v3;
    }

    *Stream = v2;
    result = physx::Scb::Scene::scheduleForUpdate(result, v3);
    *(v3 + 8) |= 1u;
    return result;
  }

  v8 = *(&physx::Scb::Actor::sLazyInitOffsets + v5 + 3) + v3;
  if (v2 != *(v8 + 12))
  {
    *(v8 + 12) = v2;
    result = *v8;
    if (*v8)
    {
      v9 = *(*result + 16);

      return v9();
    }
  }

  return result;
}

uint64_t physx::NpScene::SceneCompletion::release(physx::NpScene::SceneCompletion *this)
{
  v1 = *(this + 3);
  result = physx::shdfnd::SyncImpl::set(**(this + 5));
  if (v1)
  {
    v3 = *(*v1 + 40);

    return v3(v1);
  }

  return result;
}

void physx::Cm::FlushPool::~FlushPool(physx::Cm::FlushPool *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    for (i = 0; i < v2; ++i)
    {
      if (*(*(this + 1) + 8 * i))
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
        v2 = *(this + 4);
      }
    }
  }

  v4 = *(this + 5);
  if ((v4 & 0x80000000) == 0 && (v4 & 0x7FFFFFFF) != 0 && *(this + 1) != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  physx::shdfnd::MutexT<physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>>::~MutexT(this);
}

void physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<unsigned char,384u>>>(uint64_t a1, int a2)
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
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<unsigned char,384u>>>::grow(v33);
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
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<unsigned char,384u>>>::grow(v33);
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

uint64_t physx::shdfnd::Array<void *,physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<unsigned char,384u>>>::growAndPushBack(uint64_t result, void *a2)
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
    result = physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<unsigned char,384u>>::allocate(result, 8 * v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
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

void *physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<unsigned char,384u>>>::grow(uint64_t a1)
{
  v2 = 2 * *(a1 + 8);
  *(a1 + 8) = v2;
  v3 = physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<unsigned char,384u>>::allocate(a1, 4 * v2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsSortInternals.h", 155);
  result = memcpy(v3, *(a1 + 16), (4 * *(a1 + 4)));
  if (*(a1 + 24) == 1 && *(a1 + 16))
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *(a1 + 24) = 1;
  *(a1 + 16) = v3;
  return result;
}

void physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<unsigned char,256u>>>(uint64_t a1, int a2)
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
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<unsigned char,256u>>>::grow(v33);
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
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<unsigned char,256u>>>::grow(v33);
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

uint64_t physx::shdfnd::Array<void *,physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<unsigned char,256u>>>::growAndPushBack(uint64_t result, void *a2)
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
    result = physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<unsigned char,256u>>::allocate(result, 8 * v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
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

void *physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<unsigned char,256u>>>::grow(uint64_t a1)
{
  v2 = 2 * *(a1 + 8);
  *(a1 + 8) = v2;
  v3 = physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<unsigned char,256u>>::allocate(a1, 4 * v2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsSortInternals.h", 155);
  result = memcpy(v3, *(a1 + 16), (4 * *(a1 + 4)));
  if (*(a1 + 24) == 1 && *(a1 + 16))
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *(a1 + 24) = 1;
  *(a1 + 16) = v3;
  return result;
}

void physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<unsigned char,128u>>>(uint64_t a1, int a2)
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
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<unsigned char,128u>>>::grow(v33);
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
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<unsigned char,128u>>>::grow(v33);
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

uint64_t physx::shdfnd::Array<void *,physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<unsigned char,128u>>>::growAndPushBack(uint64_t result, void *a2)
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
    result = physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<unsigned char,128u>>::allocate(result, 8 * v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
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

void *physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<unsigned char,128u>>>::grow(uint64_t a1)
{
  v2 = 2 * *(a1 + 8);
  *(a1 + 8) = v2;
  v3 = physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<unsigned char,128u>>::allocate(a1, 4 * v2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsSortInternals.h", 155);
  result = memcpy(v3, *(a1 + 16), (4 * *(a1 + 4)));
  if (*(a1 + 24) == 1 && *(a1 + 16))
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *(a1 + 24) = 1;
  *(a1 + 16) = v3;
  return result;
}

void physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<void *,32u>>>(uint64_t a1, int a2)
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
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<void *,32u>>>::grow(v33);
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
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<void *,32u>>>::grow(v33);
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

uint64_t physx::shdfnd::Array<void *,physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<void *,32u>>>::growAndPushBack(uint64_t result, void *a2)
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
    result = physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<void *,32u>>::allocate(result, 8 * v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
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

void *physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<void *,32u>>>::grow(uint64_t a1)
{
  v2 = 2 * *(a1 + 8);
  *(a1 + 8) = v2;
  v3 = physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<void *,32u>>::allocate(a1, 4 * v2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsSortInternals.h", 155);
  result = memcpy(v3, *(a1 + 16), (4 * *(a1 + 4)));
  if (*(a1 + 24) == 1 && *(a1 + 16))
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *(a1 + 24) = 1;
  *(a1 + 16) = v3;
  return result;
}

void physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<void *,16u>>>(uint64_t a1, int a2)
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
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<void *,16u>>>::grow(v33);
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
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<void *,16u>>>::grow(v33);
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

uint64_t physx::shdfnd::Array<void *,physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<void *,16u>>>::growAndPushBack(uint64_t result, void *a2)
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
    result = physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<void *,16u>>::allocate(result, 8 * v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
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

void *physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<void *,16u>>>::grow(uint64_t a1)
{
  v2 = 2 * *(a1 + 8);
  *(a1 + 8) = v2;
  v3 = physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<void *,16u>>::allocate(a1, 4 * v2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsSortInternals.h", 155);
  result = memcpy(v3, *(a1 + 16), (4 * *(a1 + 4)));
  if (*(a1 + 24) == 1 && *(a1 + 16))
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *(a1 + 24) = 1;
  *(a1 + 16) = v3;
  return result;
}

void physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<void *,8u>>>(uint64_t a1, int a2)
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
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<void *,8u>>>::grow(v33);
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
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<void *,8u>>>::grow(v33);
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

uint64_t physx::shdfnd::Array<void *,physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<void *,8u>>>::growAndPushBack(uint64_t result, void *a2)
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
    result = physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<void *,8u>>::allocate(result, 8 * v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
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

void *physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<void *,8u>>>::grow(uint64_t a1)
{
  v2 = 2 * *(a1 + 8);
  *(a1 + 8) = v2;
  v3 = physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<void *,8u>>::allocate(a1, 4 * v2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsSortInternals.h", 155);
  result = memcpy(v3, *(a1 + 16), (4 * *(a1 + 4)));
  if (*(a1 + 24) == 1 && *(a1 + 16))
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *(a1 + 24) = 1;
  *(a1 + 16) = v3;
  return result;
}

uint64_t SqRefFinder::find(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  if (v3 == 5)
  {
    v4 = (a2 + 40);
  }

  else
  {
    v4 = 0;
  }

  if (v3 == 6)
  {
    v4 = (a2 + 40);
  }

  if (v3 == 13)
  {
    v5 = (a2 + 40);
  }

  else
  {
    v5 = v4;
  }

  v6 = *(v5 + 4);
  v7 = v5;
  if (v6 != 1)
  {
    if (!*(v5 + 4))
    {
      v9 = 0xFFFFFFFFLL;
      goto LABEL_18;
    }

    v7 = *v5;
  }

  v8 = 0;
  v9 = 0xFFFFFFFFLL;
  while (v7[v8] != a3)
  {
    if (v6 == ++v8)
    {
      goto LABEL_18;
    }
  }

  v9 = v8;
LABEL_18:
  v10 = v5 + 2;
  if (*(v5 + 12) != 1)
  {
    v10 = *v10;
  }

  return v10[v9] >> 1;
}

uint64_t physx::shdfnd::Array<unsigned short,physx::shdfnd::ReflectionAllocator<unsigned short>>::resize(uint64_t result, unsigned int a2, __int16 *a3)
{
  v5 = result;
  if ((*(result + 12) & 0x7FFFFFFFu) < a2)
  {
    result = physx::shdfnd::Array<unsigned short,physx::shdfnd::ReflectionAllocator<unsigned short>>::recreate(result, a2);
  }

  v6 = *(v5 + 8);
  if (v6 < a2)
  {
    v7 = 0;
    v8 = *v5 + 2 * v6;
    v9 = v8 + 2;
    if (v8 + 2 <= *v5 + 2 * a2)
    {
      v9 = *v5 + 2 * a2;
    }

    v10 = (v9 + ~*v5 - 2 * v6) >> 1;
    v11 = vdupq_n_s64(v10);
    v12 = *a3;
    v13 = (v10 & 0x7FFFFFFFFFFFFFF8) + 8;
    v14 = (v8 + 8);
    do
    {
      v15 = vdupq_n_s64(v7);
      v16 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(v15, xmmword_1E3049620)));
      if (vuzp1_s8(vuzp1_s16(v16, *v11.i8), *v11.i8).u8[0])
      {
        *(v14 - 4) = v12;
      }

      if (vuzp1_s8(vuzp1_s16(v16, *&v11), *&v11).i8[1])
      {
        *(v14 - 3) = v12;
      }

      if (vuzp1_s8(vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, vorrq_s8(v15, xmmword_1E3049640)))), *&v11).i8[2])
      {
        *(v14 - 2) = v12;
        *(v14 - 1) = v12;
      }

      v17 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(v15, xmmword_1E3049660)));
      if (vuzp1_s8(*&v11, vuzp1_s16(v17, *&v11)).i32[1])
      {
        *v14 = v12;
      }

      if (vuzp1_s8(*&v11, vuzp1_s16(v17, *&v11)).i8[5])
      {
        v14[1] = v12;
      }

      if (vuzp1_s8(*&v11, vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, vorrq_s8(v15, xmmword_1E305F210))))).i8[6])
      {
        v14[2] = v12;
        v14[3] = v12;
      }

      v7 += 8;
      v14 += 8;
    }

    while (v13 != v7);
  }

  *(v5 + 8) = a2;
  return result;
}

uint64_t physx::shdfnd::Array<physx::Scb::Shape *,physx::shdfnd::ReflectionAllocator<physx::Scb::Shape *>>::resize(uint64_t result, unsigned int a2, uint64_t *a3)
{
  v5 = result;
  if ((*(result + 12) & 0x7FFFFFFFu) < a2)
  {
    result = physx::shdfnd::Array<physx::Scb::Shape *,physx::shdfnd::ReflectionAllocator<physx::Scb::Shape *>>::recreate(result, a2);
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

uint64_t physx::shdfnd::Array<physx::Scb::Shape *,physx::shdfnd::ReflectionAllocator<physx::Scb::Shape *>>::recreate(uint64_t result, unsigned int a2)
{
  v3 = result;
  if (a2)
  {
    result = physx::shdfnd::ReflectionAllocator<physx::Scb::Shape *>::allocate(result, 8 * a2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
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

uint64_t physx::shdfnd::ReflectionAllocator<physx::Scb::Shape *>::allocate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v8 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Scb::Shape *>::getName() [T = physx::Scb::Shape *]";
  }

  else
  {
    v8 = "<allocation names disabled>";
  }

  v9 = *(*(v7 + 24) + 16);

  return v9(v7 + 24, a2, v8, a3, a4);
}

uint64_t physx::shdfnd::Array<physx::Scb::Actor *,physx::shdfnd::ReflectionAllocator<physx::Scb::Actor *>>::resize(uint64_t result, unsigned int a2, uint64_t *a3)
{
  v5 = result;
  if ((*(result + 12) & 0x7FFFFFFFu) < a2)
  {
    result = physx::shdfnd::Array<physx::Scb::Actor *,physx::shdfnd::ReflectionAllocator<physx::Scb::Actor *>>::recreate(result, a2);
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

uint64_t physx::shdfnd::Array<physx::Scb::Actor *,physx::shdfnd::ReflectionAllocator<physx::Scb::Actor *>>::recreate(uint64_t result, unsigned int a2)
{
  v3 = result;
  if (a2)
  {
    result = physx::shdfnd::ReflectionAllocator<physx::Scb::Actor *>::allocate(result, 8 * a2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
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

uint64_t physx::shdfnd::ReflectionAllocator<physx::Scb::Actor *>::allocate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v8 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Scb::Actor *>::getName() [T = physx::Scb::Actor *]";
  }

  else
  {
    v8 = "<allocation names disabled>";
  }

  v9 = *(*(v7 + 24) + 16);

  return v9(v7 + 24, a2, v8, a3, a4);
}

uint64_t physx::shdfnd::Array<physx::Scb::Shape *,physx::shdfnd::InlineAllocator<32u,physx::shdfnd::ReflectionAllocator<physx::Scb::Shape *>>>::growAndPushBack(uint64_t result, void *a2)
{
  v3 = result;
  v4 = *(result + 52);
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
    v6 = (8 * v5);
    if (v6 > 0x20 || (*(result + 32) & 1) != 0)
    {
      result = physx::shdfnd::ReflectionAllocator<physx::Scb::Shape *>::allocate(result, v6, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
      v7 = result;
    }

    else
    {
      *(result + 32) = 1;
      v7 = result;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v3 + 48);
  v9 = &v7[v8];
  if (v8)
  {
    v10 = *(v3 + 40);
    v11 = v7;
    do
    {
      v12 = *v10++;
      *v11++ = v12;
    }

    while (v11 < v9);
  }

  *v9 = *a2;
  if ((*(v3 + 52) & 0x80000000) == 0)
  {
    v13 = *(v3 + 40);
    if (v13 == v3)
    {
      *(v3 + 32) = 0;
    }

    else if (v13)
    {
      result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
      LODWORD(v8) = *(v3 + 48);
    }
  }

  *(v3 + 40) = v7;
  *(v3 + 48) = v8 + 1;
  *(v3 + 52) = v5;
  return result;
}

uint64_t physx::shdfnd::Array<physx::Scb::RemovedShape,physx::shdfnd::InlineAllocator<64u,physx::shdfnd::ReflectionAllocator<physx::Scb::RemovedShape>>>::growAndPushBack(uint64_t result, _OWORD *a2)
{
  v3 = result;
  v4 = *(result + 84);
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
    v6 = (16 * v5);
    if (v6 > 0x40 || (*(result + 64) & 1) != 0)
    {
      result = physx::shdfnd::ReflectionAllocator<physx::Scb::RemovedShape>::allocate(result, v6, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
      v7 = result;
    }

    else
    {
      *(result + 64) = 1;
      v7 = result;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v3 + 80);
  if (v8)
  {
    v9 = &v7[v8];
    v10 = *(v3 + 72);
    v11 = v7;
    do
    {
      v12 = *v10++;
      *v11++ = v12;
    }

    while (v11 < v9);
    v13 = *(v3 + 80);
  }

  else
  {
    v13 = 0;
  }

  v7[v13] = *a2;
  if ((*(v3 + 84) & 0x80000000) == 0)
  {
    v14 = *(v3 + 72);
    if (v14 == v3)
    {
      *(v3 + 64) = 0;
    }

    else if (v14)
    {
      result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }
  }

  *(v3 + 72) = v7;
  ++*(v3 + 80);
  *(v3 + 84) = v5;
  return result;
}

uint64_t physx::shdfnd::ReflectionAllocator<physx::Scb::RemovedShape>::allocate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v8 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Scb::RemovedShape>::getName() [T = physx::Scb::RemovedShape]";
  }

  else
  {
    v8 = "<allocation names disabled>";
  }

  v9 = *(*(v7 + 24) + 16);

  return v9(v7 + 24, a2, v8, a3, a4);
}

float getTriangle(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v21 = *MEMORY[0x1E69E9840];
  getTriangle(a1, &v12, a3, a4, a6);
  v8 = v15;
  v9 = (((v12 * *(a5 + 8)) + (v13 * *(a5 + 20))) + (v14 * *(a5 + 32))) + *(a5 + 44);
  *a2 = vadd_f32(vadd_f32(vadd_f32(vmul_n_f32(*a5, v12), vmul_n_f32(*(a5 + 12), v13)), vmul_n_f32(*(a5 + 24), v14)), *(a5 + 36));
  *(a2 + 8) = v9;
  v10 = (((v8 * *(a5 + 8)) + (v16 * *(a5 + 20))) + (v17 * *(a5 + 32))) + *(a5 + 44);
  *(a2 + 12) = vadd_f32(vadd_f32(vadd_f32(vmul_n_f32(*a5, v8), vmul_n_f32(*(a5 + 12), v16)), vmul_n_f32(*(a5 + 24), v17)), *(a5 + 36));
  *(a2 + 20) = v10;
  result = (((v18 * *(a5 + 8)) + (v19 * *(a5 + 20))) + (v20 * *(a5 + 32))) + *(a5 + 44);
  *(a2 + 24) = vadd_f32(vadd_f32(vadd_f32(vmul_n_f32(*a5, v18), vmul_n_f32(*(a5 + 12), v19)), vmul_n_f32(*(a5 + 24), v20)), *(a5 + 36));
  *(a2 + 32) = result;
  return result;
}

float getTriangle(int a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = (3 * a1);
  if (a5)
  {
    v6 = *(a4 + 2 * v5);
    v7 = *(a4 + 2 * (v5 + 1));
    v8 = *(a4 + 2 * (v5 + 2));
  }

  else
  {
    v6 = *(a4 + 4 * v5);
    v7 = *(a4 + 4 * (v5 + 1));
    v8 = *(a4 + 4 * (v5 + 2));
  }

  v9 = a3 + 12 * v6;
  *a2 = *v9;
  *(a2 + 8) = *(v9 + 8);
  v10 = a3 + 12 * v7;
  *(a2 + 12) = *v10;
  *(a2 + 20) = *(v10 + 8);
  v11 = a3 + 12 * v8;
  *(a2 + 24) = *v11;
  result = *(v11 + 8);
  *(a2 + 32) = result;
  return result;
}

physx::PxActor *physx::NpRigidActorTemplate<physx::PxRigidDynamic>::~NpRigidActorTemplate(physx::PxActor *a1)
{
  *a1 = &unk_1F5D26828;
  v2 = *(physx::NpFactory::mInstance + 832);
  physx::Cm::PtrTable::clear(a1 + 40, v2);
  physx::Cm::PtrTable::clear(a1 + 56, v2);
  *a1 = &unk_1F5D26AE8;
  physx::NpFactory::onActorRelease(physx::NpFactory::mInstance, a1);
  return a1;
}

uint64_t physx::Cm::DelegateTask<physx::NpSceneQueries,&physx::NpSceneQueries::sceneQueriesStaticPrunerUpdate>::~DelegateTask(void *a1)
{
  *a1 = &unk_1F5D1C1B0;
  v1 = *(physx::shdfnd::Foundation::mInstance + 24);
  a1[2] = 0;
  return (*(v1 + 24))();
}

uint64_t physx::Cm::DelegateTask<physx::NpSceneQueries,&physx::NpSceneQueries::sceneQueriesStaticPrunerUpdate>::runInternal(uint64_t a1)
{
  v1 = *(a1 + 40);
  result = *(v1 + 8640);
  if (result && *(v1 + 8680) == 1)
  {
    result = (*(*result + 144))(result, 0);
    if (result)
    {
      *(v1 + 8848) = 1;
    }
  }

  return result;
}

uint64_t physx::Cm::DelegateTask<physx::NpSceneQueries,&physx::NpSceneQueries::sceneQueriesDynamicPrunerUpdate>::~DelegateTask(void *a1)
{
  *a1 = &unk_1F5D1C1B0;
  v1 = *(physx::shdfnd::Foundation::mInstance + 24);
  a1[2] = 0;
  return (*(v1 + 24))();
}

uint64_t physx::Cm::DelegateTask<physx::NpSceneQueries,&physx::NpSceneQueries::sceneQueriesDynamicPrunerUpdate>::runInternal(uint64_t a1)
{
  v1 = *(a1 + 40);
  result = *(v1 + 8688);
  if (result && *(v1 + 8728) == 1)
  {
    result = (*(*result + 144))(result, 0);
    if (result)
    {
      *(v1 + 8848) = 1;
    }
  }

  return result;
}

uint64_t physx::Cm::DelegateTask<physx::NpScene,&physx::NpScene::executeScene>::~DelegateTask(void *a1)
{
  *a1 = &unk_1F5D1C1B0;
  v1 = *(physx::shdfnd::Foundation::mInstance + 24);
  a1[2] = 0;
  return (*(v1 + 24))();
}

uint64_t physx::Cm::DelegateTask<physx::NpScene,&physx::NpScene::executeCollide>::~DelegateTask(void *a1)
{
  *a1 = &unk_1F5D1C1B0;
  v1 = *(physx::shdfnd::Foundation::mInstance + 24);
  a1[2] = 0;
  return (*(v1 + 24))();
}

uint64_t physx::Cm::DelegateTask<physx::NpScene,&physx::NpScene::executeAdvance>::~DelegateTask(void *a1)
{
  *a1 = &unk_1F5D1C1B0;
  v1 = *(physx::shdfnd::Foundation::mInstance + 24);
  a1[2] = 0;
  return (*(v1 + 24))();
}

uint64_t physx::shdfnd::Array<physx::PxRigidActor *,physx::shdfnd::ReflectionAllocator<physx::PxRigidActor *>>::recreate(uint64_t result, unsigned int a2)
{
  v3 = result;
  if (a2)
  {
    v4 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v5 = "static const char *physx::shdfnd::ReflectionAllocator<physx::PxRigidActor *>::getName() [T = physx::PxRigidActor *]";
    }

    else
    {
      v5 = "<allocation names disabled>";
    }

    result = (*(*(v4 + 24) + 16))(v4 + 24, 8 * a2, v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
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
    v9 = &v6[v7];
    v10 = v6;
    do
    {
      v11 = *v8++;
      *v10++ = v11;
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

uint64_t physx::shdfnd::Array<physx::PxBounds3,physx::shdfnd::InlineAllocator<192u,physx::shdfnd::ReflectionAllocator<physx::PxBounds3>>>::recreate(uint64_t result, unsigned int a2)
{
  v3 = result;
  if (a2 > 8 || (*(result + 192) & 1) != 0)
  {
    v5 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v6 = "static const char *physx::shdfnd::ReflectionAllocator<physx::PxBounds3>::getName() [T = physx::PxBounds3]";
    }

    else
    {
      v6 = "<allocation names disabled>";
    }

    result = (*(*(v5 + 24) + 16))(v5 + 24, 24 * a2, v6, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v4 = result;
  }

  else
  {
    *(result + 192) = 1;
    v4 = result;
  }

  v7 = *(v3 + 208);
  v8 = *(v3 + 200);
  if (v7)
  {
    v9 = &v4[3 * v7];
    v10 = *(v3 + 200);
    v11 = v4;
    do
    {
      *v11 = *v10;
      v11[1] = v10[1];
      v11[2] = v10[2];
      v11 += 3;
      v10 += 3;
    }

    while (v11 < v9);
  }

  if ((*(v3 + 212) & 0x80000000) == 0)
  {
    if (v8 == v3)
    {
      *(v3 + 192) = 0;
    }

    else if (v8)
    {
      result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }
  }

  *(v3 + 200) = v4;
  *(v3 + 212) = a2;
  return result;
}

uint64_t physx::shdfnd::Array<physx::PxRigidActor *,physx::shdfnd::ReflectionAllocator<physx::PxRigidActor *>>::growAndPushBack(uint64_t result, void *a2)
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
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::PxRigidActor *>::getName() [T = physx::PxRigidActor *]";
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

void physx::Scb::RigidObject::resetFiltering(physx::Scb::RigidObject *this, physx::Scb::Shape **a2, unsigned int a3)
{
  v3 = a3;
  v6 = *(this + 2);
  if (v6 >> 30 == 3 || v6 >> 30 == 2 && (*(*this + 7689) & 1) != 0)
  {
    Stream = *(this + 2);
    if (!Stream)
    {
      Stream = physx::Scb::Scene::getStream(*this, HIBYTE(v6) & 0xF);
      *(this + 2) = Stream;
    }

    v8 = *(Stream + 160);
    if (v8)
    {
      v9 = v8 + v3;
      v10 = *this;
      v11 = *(*this + 7816);
      v35 = 0;
      physx::shdfnd::Array<physx::Scb::Shape *,physx::shdfnd::ReflectionAllocator<physx::Scb::Shape *>>::resize(v10 + 7808, v11 + v8 + v3, &v35);
      v12 = *(v10 + 7808);
      if (!v12)
      {
        return;
      }

      v13 = *(Stream + 160);
      if (v13 == 1)
      {
        v14 = (v12 + 8 * v11);
        *v14 = *(Stream + 152);
        v15 = v14 + 1;
        v16 = v3;
        do
        {
          v17 = *a2++;
          *v15++ = v17;
          --v16;
        }

        while (v16);
      }

      else
      {
        v21 = (v12 + 8 * v11);
        if (v13)
        {
          v22 = (*(*this + 7808) + 8 * *(Stream + 152));
          v23 = v21;
          v24 = *(Stream + 160);
          do
          {
            v25 = *v22++;
            *v23++ = v25;
            --v24;
          }

          while (v24);
        }

        v26 = v3;
        do
        {
          v27 = *a2++;
          v21[v13++] = v27;
          --v26;
        }

        while (v26);
      }

      *(Stream + 152) = v11;
      v3 = v9;
    }

    else if (v3 == 1)
    {
      *(Stream + 152) = *a2;
    }

    else
    {
      v28 = *this;
      v29 = *(*this + 7816);
      v35 = 0;
      physx::shdfnd::Array<physx::Scb::Shape *,physx::shdfnd::ReflectionAllocator<physx::Scb::Shape *>>::resize(v28 + 7808, v29 + v3, &v35);
      v30 = *(v28 + 7808);
      if (!v30)
      {
        return;
      }

      v31 = (v30 + 8 * v29);
      v32 = v3;
      do
      {
        v33 = *a2++;
        *v31++ = v33;
        --v32;
      }

      while (v32);
      *(Stream + 152) = v29;
    }

    *(Stream + 160) = v3;
    physx::Scb::Scene::scheduleForUpdate(*this, this);
    *(this + 2) |= 0x20u;
  }

  else
  {
    v18 = a3;
    do
    {
      v19 = *(&physx::Scb::Actor::sLazyInitOffsets + (*(this + 11) & 0xF) + 3);
      v20 = *a2++;
      LODWORD(v35) = 128;
      v34 = 0;
      physx::Sc::RigidCore::onShapeChange((this + v19), v20 + 32, &v35, &v34, 0);
      --v18;
    }

    while (v18);
  }
}

uint64_t physx::shdfnd::Array<physx::NpBatchQuery *,physx::shdfnd::ReflectionAllocator<physx::NpBatchQuery *>>::growAndPushBack(uint64_t result, void *a2)
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
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::NpBatchQuery *>::getName() [T = physx::NpBatchQuery *]";
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

uint64_t physx::clipHitsToNewMaxDist<physx::PxSweepHit>(uint64_t a1, uint64_t a2, float a3)
{
  if (a2)
  {
    v3 = 0;
    do
    {
      v4 = a1 + 56 * v3;
      if (*(v4 + 48) <= a3)
      {
        ++v3;
      }

      else
      {
        a2 = (a2 - 1);
        v5 = (a1 + 56 * a2);
        v6 = *v5;
        *(v4 + 16) = *(v5 + 4);
        *v4 = v6;
        *(v4 + 20) = *(v5 + 10);
        *(v4 + 24) = *(v5 + 24);
        *(v4 + 40) = *(v5 + 5);
        *(v4 + 48) = *(v5 + 12);
        *(v4 + 52) = *(v5 + 13);
      }
    }

    while (v3 != a2);
  }

  return a2;
}

uint64_t physx::Scb::Aggregate::addActor(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = v4 >> 30;
  if ((v4 >> 30) - 1 >= 2)
  {
    if (v5 == 3)
    {
      return result;
    }

    goto LABEL_13;
  }

  result = *result;
  if (!*v3 || (*(result + 7689) & 1) == 0)
  {
LABEL_13:
    v12 = *(&physx::Scb::Actor::sLazyInitOffsets + (*(a2 + 11) & 0xF) + 3) + a2;
    *(v12 + 8) = *(v3 + 32) & 0xFFFFFF | (*(v12 + 11) << 24);
    return result;
  }

  Stream = *(v3 + 16);
  if (!Stream)
  {
    Stream = physx::Scb::Scene::getStream(result, HIBYTE(v4) & 0xF);
    *(v3 + 16) = Stream;
    result = *v3;
  }

  v7 = Stream[2];
  if (v7 != -1)
  {
    v8 = Stream[3];
    if (v8)
    {
      v9 = *(result + 7824) + 8 * v7;
      v10 = Stream[3];
      v11 = v9;
      while (*v11 != a2)
      {
        ++v11;
        if (!--v10)
        {
          goto LABEL_15;
        }
      }

      v13 = v8 - 1;
      *v11 = *(v9 + 8 * v13);
      Stream[3] = v13;
      result = *v3;
    }
  }

LABEL_15:
  v14 = *Stream;
  if (*Stream == -1)
  {
    v16 = *(v3 + 36);
    v15 = (result + 7824);
    v14 = *(result + 7832);
    v18 = 0;
    result = physx::shdfnd::Array<physx::Scb::Actor *,physx::shdfnd::ReflectionAllocator<physx::Scb::Actor *>>::resize(result + 7824, v14 + v16, &v18);
    *Stream = v14;
  }

  else
  {
    v15 = (result + 7824);
  }

  v17 = Stream[1];
  *(*v15 + 8 * v14 + 8 * v17) = a2;
  Stream[1] = v17 + 1;
  if (v5 != 1)
  {
    result = physx::Scb::Scene::scheduleForUpdate(*v3, v3);
  }

  *(v3 + 8) |= 1u;
  return result;
}

int32x2_t *physx::Scb::Aggregate::removeActor(int32x2_t *result, uint64_t a2, int a3)
{
  v4 = result;
  v5 = result[1].u32[0];
  v6 = (v5 >> 30) - 1;
  if (v6 >= 2)
  {
    if (v5 >> 30 == 3)
    {
      return result;
    }

    goto LABEL_14;
  }

  result = *result;
  if (!*v4 || (result[961].i8[1] & 1) == 0)
  {
LABEL_14:
    v15 = (*(&physx::Scb::Actor::sLazyInitOffsets + ((*(a2 + 8) >> 24) & 0xF) + 3) + a2);
    v15[2] |= 0xFFFFFFu;
    if (v6 <= 1)
    {
      if (*v4)
      {
        if (a3)
        {
          if (*v15)
          {
            for (i = *(*v15 + 56); i; i = *i)
            {
              result = physx::Sc::ShapeSim::reinsertBroadPhase(i);
            }
          }
        }
      }
    }

    return result;
  }

  Stream = *(v4 + 16);
  if (!Stream)
  {
    Stream = physx::Scb::Scene::getStream(result, HIBYTE(v5) & 0xF);
    *(v4 + 16) = Stream;
    result = *v4;
  }

  v8 = *Stream;
  if (v8 == -1 || (v9 = Stream[1]) == 0)
  {
LABEL_11:
    v13 = Stream[2];
    if (v13 == -1)
    {
      v17 = *(v4 + 36);
      v14 = result + 978;
      v13 = result[979].u32[0];
      v20 = 0;
      physx::shdfnd::Array<physx::Scb::Actor *,physx::shdfnd::ReflectionAllocator<physx::Scb::Actor *>>::resize(&result[978], v13 + v17, &v20);
      Stream[2] = v13;
    }

    else
    {
      v14 = result + 978;
    }

    v18 = Stream[3];
    *(*v14 + 8 * v13 + 8 * v18) = a2;
    Stream[3] = v18 + 1;
    result = physx::Scb::Scene::scheduleForUpdate(*v4, v4);
    *(v4 + 8) |= 2u;
  }

  else
  {
    v10 = *&result[978] + 8 * v8;
    v11 = Stream[1];
    v12 = v10;
    while (*v12 != a2)
    {
      ++v12;
      if (!--v11)
      {
        goto LABEL_11;
      }
    }

    v19 = v9 - 1;
    *v12 = *(v10 + 8 * v19);
    Stream[1] = v19;
  }

  return result;
}

uint64_t physx::Scb::Base::destroy(uint64_t this)
{
  v1 = *(this + 8);
  if (v1 >> 30 != 3 && (v1 >> 30 != 2 || (*(*this + 7689) & 1) == 0))
  {
    return physx::NpDestroy(this);
  }

  *(this + 8) = v1 | 0x20000000;
  return this;
}

int32x2_t *physx::Scb::ObjectTracker::scheduleForInsert(int32x2_t *result, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4 >> 30 == 3)
  {
    *(a2 + 8) = v4 & 0xBFFFFFFF;
    if ((v4 & 0x10000000) == 0)
    {

      return physx::shdfnd::internal::HashSetBase<physx::Sc::BodySim const*,physx::shdfnd::Hash<physx::Sc::BodySim const*>,physx::shdfnd::NonTrackingAllocator,true>::erase(result, a2);
    }
  }

  else
  {
    v7 = v2;
    v8 = v3;
    *(a2 + 8) = v4 & 0x3FFFFFFF | 0x40000000;
    v5 = a2;
    v6 = 0;
    result = physx::shdfnd::internal::HashBase<physx::Sc::ConstraintSim *,physx::Sc::ConstraintSim *,physx::shdfnd::Hash<physx::Sc::ConstraintSim *>,physx::shdfnd::internal::HashSetBase<physx::Sc::ConstraintSim *,physx::shdfnd::Hash<physx::Sc::ConstraintSim *>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::create(result, &v5, &v6);
    if ((v6 & 1) == 0)
    {
      *result = v5;
    }
  }

  return result;
}

int32x2_t *physx::Scb::ObjectTracker::scheduleForRemove(int32x2_t *result, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4 >> 30 == 2)
  {
    *(a2 + 8) = v4 | 0xC0000000;
    if ((v4 & 0x10000000) == 0)
    {
      v7 = v2;
      v8 = v3;
      v5 = a2;
      v6 = 0;
      result = physx::shdfnd::internal::HashBase<physx::Sc::ConstraintSim *,physx::Sc::ConstraintSim *,physx::shdfnd::Hash<physx::Sc::ConstraintSim *>,physx::shdfnd::internal::HashSetBase<physx::Sc::ConstraintSim *,physx::shdfnd::Hash<physx::Sc::ConstraintSim *>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::create(result, &v5, &v6);
      if ((v6 & 1) == 0)
      {
        *result = v5;
      }
    }
  }

  else if (v4 >> 30 == 1)
  {
    *(a2 + 8) = v4 & 0x3FFFFFFF;

    return physx::shdfnd::internal::HashSetBase<physx::Sc::BodySim const*,physx::shdfnd::Hash<physx::Sc::BodySim const*>,physx::shdfnd::NonTrackingAllocator,true>::erase(result, a2);
  }

  return result;
}

int32x2_t *physx::Scb::ObjectTracker::scheduleForUpdate(int32x2_t *result, uint64_t a2)
{
  v4 = *(a2 + 8);
  if ((v4 & 0x10000000) == 0)
  {
    *(a2 + 8) = v4 | 0x10000000;
    if (v4 >> 30 == 2)
    {
      v7 = v2;
      v8 = v3;
      v5 = a2;
      v6 = 0;
      result = physx::shdfnd::internal::HashBase<physx::Sc::ConstraintSim *,physx::Sc::ConstraintSim *,physx::shdfnd::Hash<physx::Sc::ConstraintSim *>,physx::shdfnd::internal::HashSetBase<physx::Sc::ConstraintSim *,physx::shdfnd::Hash<physx::Sc::ConstraintSim *>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::create(result, &v5, &v6);
      if ((v6 & 1) == 0)
      {
        *result = v5;
      }
    }
  }

  return result;
}

uint64_t physx::Scb::ObjectTracker::clear(uint64_t this)
{
  v1 = *(this + 52);
  if (v1)
  {
    v2 = this;
    v3 = 0;
    v4 = *(this + 8);
    do
    {
      v5 = *(v4 + 8 * v3);
      v6 = *(v5 + 8);
      v7 = v6 & 0xFFFFFFF;
      if ((v6 >> 30) - 1 > 1)
      {
        *v5 = 0;
      }

      else
      {
        v7 |= 0x80000000;
      }

      *(v5 + 8) = v7;
      if ((v6 & 0x20000000) != 0)
      {
        this = physx::NpDestroy(*(v4 + 8 * v3));
        v1 = *(v2 + 52);
      }

      ++v3;
    }

    while (v3 < v1);
    v8 = *(v2 + 36);
    if (v8 && v1)
    {
      this = memset(*(v2 + 24), 255, (4 * v8));
      v9 = *(v2 + 16);
      v10 = (*(v2 + 32) - 1);
      if (*(v2 + 32) == 1)
      {
        v18 = 0;
      }

      else
      {
        _X10 = v9 + 128;
        v12 = 1;
        do
        {
          __asm { PRFM            #0, [X10] }

          *(_X10 - 128) = v12++;
          _X10 += 4;
          --v10;
        }

        while (v10);
        v18 = (*(v2 + 32) - 1);
      }

      *(v9 + 4 * v18) = -1;
      *(v2 + 44) = 0;
      *(v2 + 52) = 0;
    }
  }

  return this;
}

uint64_t physx::Scb::Scene::Scene(uint64_t a1, uint64_t a2, uint64_t a3)
{
  physx::Sc::Scene::Scene(a1 + 16, a2, a3);
  *(a1 + 7664) = 0u;
  v5 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v6 = "static const char *physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>::getName() [T = physx::shdfnd::MutexImpl]";
  }

  else
  {
    v6 = "<allocation names disabled>";
  }

  v7 = (*(*(v5 + 24) + 16))(v5 + 24, 72, v6, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsMutex.h", 138);
  *(a1 + 7680) = v7;
  physx::shdfnd::MutexImpl::MutexImpl(v7);
  *(a1 + 7688) = 0;
  physx::Cm::FlushPool::FlushPool((a1 + 7696), 0x4000u);
  *(a1 + 7768) = 0;
  *(a1 + 7736) = 0u;
  *(a1 + 7752) = 0u;
  *(a1 + 7776) = -3233808384;
  *(a1 + 7784) = 0;
  physx::shdfnd::internal::HashBase<physx::Sc::ConstraintSim *,physx::Sc::ConstraintSim *,physx::shdfnd::Hash<physx::Sc::ConstraintSim *>,physx::shdfnd::internal::HashSetBase<physx::Sc::ConstraintSim *,physx::shdfnd::Hash<physx::Sc::ConstraintSim *>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(a1 + 7736, 0x40u);
  *(a1 + 7872) = 0;
  *(a1 + 7856) = 0u;
  *(a1 + 7840) = 0u;
  *(a1 + 7824) = 0u;
  *(a1 + 7808) = 0u;
  *(a1 + 7792) = 0u;
  *(a1 + 7880) = -3233808384;
  *(a1 + 7888) = 0;
  physx::shdfnd::internal::HashBase<physx::Sc::ConstraintSim *,physx::Sc::ConstraintSim *,physx::shdfnd::Hash<physx::Sc::ConstraintSim *>,physx::shdfnd::internal::HashSetBase<physx::Sc::ConstraintSim *,physx::shdfnd::Hash<physx::Sc::ConstraintSim *>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(a1 + 7840, 0x40u);
  *(a1 + 7928) = 0;
  *(a1 + 7896) = 0u;
  *(a1 + 7912) = 0u;
  *(a1 + 7936) = -3233808384;
  *(a1 + 7944) = 0;
  physx::shdfnd::internal::HashBase<physx::Sc::ConstraintSim *,physx::Sc::ConstraintSim *,physx::shdfnd::Hash<physx::Sc::ConstraintSim *>,physx::shdfnd::internal::HashSetBase<physx::Sc::ConstraintSim *,physx::shdfnd::Hash<physx::Sc::ConstraintSim *>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(a1 + 7896, 0x40u);
  *(a1 + 7984) = 0;
  *(a1 + 7968) = 0u;
  *(a1 + 7952) = 0u;
  *(a1 + 7992) = -3233808384;
  *(a1 + 8000) = 0;
  physx::shdfnd::internal::HashBase<physx::Sc::ConstraintSim *,physx::Sc::ConstraintSim *,physx::shdfnd::Hash<physx::Sc::ConstraintSim *>,physx::shdfnd::internal::HashSetBase<physx::Sc::ConstraintSim *,physx::shdfnd::Hash<physx::Sc::ConstraintSim *>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(a1 + 7952, 0x40u);
  *(a1 + 8040) = 0;
  *(a1 + 8008) = 0u;
  *(a1 + 8024) = 0u;
  *(a1 + 8048) = -3233808384;
  *(a1 + 8056) = 0;
  physx::shdfnd::internal::HashBase<physx::Sc::ConstraintSim *,physx::Sc::ConstraintSim *,physx::shdfnd::Hash<physx::Sc::ConstraintSim *>,physx::shdfnd::internal::HashSetBase<physx::Sc::ConstraintSim *,physx::shdfnd::Hash<physx::Sc::ConstraintSim *>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(a1 + 8008, 0x40u);
  *(a1 + 8096) = 0;
  *(a1 + 8080) = 0u;
  *(a1 + 8064) = 0u;
  *(a1 + 8104) = -3233808384;
  *(a1 + 8112) = 0;
  physx::shdfnd::internal::HashBase<physx::Sc::ConstraintSim *,physx::Sc::ConstraintSim *,physx::shdfnd::Hash<physx::Sc::ConstraintSim *>,physx::shdfnd::internal::HashSetBase<physx::Sc::ConstraintSim *,physx::shdfnd::Hash<physx::Sc::ConstraintSim *>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(a1 + 8064, 0x40u);
  *(a1 + 8152) = 0;
  *(a1 + 8120) = 0u;
  *(a1 + 8136) = 0u;
  *(a1 + 8160) = -3233808384;
  *(a1 + 8168) = 0;
  physx::shdfnd::internal::HashBase<physx::Sc::ConstraintSim *,physx::Sc::ConstraintSim *,physx::shdfnd::Hash<physx::Sc::ConstraintSim *>,physx::shdfnd::internal::HashSetBase<physx::Sc::ConstraintSim *,physx::shdfnd::Hash<physx::Sc::ConstraintSim *>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(a1 + 8120, 0x40u);
  *(a1 + 8176) = *(a2 + 232);
  *(a1 + 8592) = 0;
  *(a1 + 8604) = 0;
  *(a1 + 8324) = 0u;
  *(a1 + 8340) = 0u;
  *(a1 + 8356) = 0u;
  *(a1 + 8372) = 0u;
  *(a1 + 8388) = 0u;
  *(a1 + 8404) = 0u;
  *(a1 + 8420) = 0u;
  *(a1 + 8432) = 0u;
  *(a1 + 8284) = 0;
  *(a1 + 8292) = 0;
  *(a1 + 8276) = 0;
  return a1;
}

void physx::Scb::Scene::switchRigidToNoSim(physx::Scb::Scene *this, physx::Scb::RigidObject *a2, int a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 2);
  if (v3 >> 30 == 2)
  {
    v13 = 0x4000000000;
    v11[512] = 1;
    v12 = v11;
    v4 = (this + 16);
    v5 = (a2 + *(&physx::Scb::Actor::sLazyInitOffsets + ((v3 >> 24) & 0xF) + 3));
    if (a3)
    {
      physx::Sc::Scene::removeBody(v4, v5, v11, 1);
    }

    else
    {
      physx::Sc::Scene::removeStatic(v4, v5, v11, 1);
    }

    v6 = v12;
    if (v13)
    {
      v7 = 0;
      do
      {
        v8 = *&v6[8 * v7];
        if (atomic_fetch_add((v8 - 48), 0xFFFFFFFF) == 1)
        {
          (*(*(v8 - 56) + 16))();
        }

        ++v7;
      }

      while (v7 < v13);
      v6 = v12;
    }

    if ((v13 & 0x8000000000000000) == 0 && (v13 & 0x7FFFFFFF00000000) != 0 && v6 != v11 && v6 != 0)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v6);
    }
  }
}

uint64_t physx::Scb::Scene::switchRigidFromNoSim(uint64_t this, physx::Scb::RigidObject *a2, int a3)
{
  v3 = *(a2 + 2);
  if (v3 >> 30 != 2)
  {
    return this;
  }

  if (a3)
  {
    v4 = a2 + *(&physx::Sc::gOffsetTable + *(a2 + 45) + 10);
    v5 = (v4 + 72);
    v6 = *(v4 + 40);
    if (v6 != 1)
    {
      v5 = *v5;
    }

    this = physx::Sc::Scene::addBody((this + 16), (a2 + *(&physx::Scb::Actor::sLazyInitOffsets + ((v3 >> 24) & 0xF) + 3)), v5, v6, 80, 0, *(v4 + 26) != -1);
    if (!v6)
    {
      return this;
    }

LABEL_10:
    v9 = v6;
    do
    {
      v10 = *v5++;
      atomic_fetch_add((v10 + 32), 1u);
      --v9;
    }

    while (v9);
    return this;
  }

  v7 = a2 + *(&physx::Scb::Actor::sLazyInitOffsets + (BYTE3(v3) & 0xF) + 3);
  v8 = &v7[*(&physx::Sc::gOffsetTable + v7[13] + 10)];
  v5 = (v8 + 40);
  v6 = *(v8 + 24);
  if (v6 != 1)
  {
    v5 = *v5;
  }

  this = physx::Sc::Scene::addStatic(this + 16, v7, v5, *(v8 + 24), 80, 0);
  if (v6)
  {
    goto LABEL_10;
  }

  return this;
}

int32x2_t *physx::Scb::Scene::addActor(int32x2_t *a1, uint64_t a2, char a3, uint64_t a4)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a3)
  {

    return physx::Scb::Scene::addRigidNoSim<false,physx::Scb::RigidStatic>(a1, a2, a1 + 980);
  }

  else
  {
    result = physx::Scb::Scene::add<physx::Scb::RigidStatic>(a1, a2, a1 + 980, a4);
    if (a1[961].i8[1] != 1)
    {
      return result;
    }

    v19 = 0x4000000000;
    v7 = 1;
    v17[512] = 1;
    v18 = v17;
    v8 = *(a2 + 8);
    v9 = *(&physx::Scb::Actor::sLazyInitOffsets + ((v8 >> 24) & 0xF) + 3) + a2;
    v10 = v9 + *(&physx::Sc::gOffsetTable + *(v9 + 13) + 10);
    v11 = (v10 + 40);
    v12 = *(v10 + 48);
    if (v12 != 1)
    {
      if (!v12)
      {
        return result;
      }

      v11 = *v11;
      v7 = v12;
    }

    v13 = *a2;
    v14 = v8 & 0xC0000000;
    do
    {
      v15 = *v11;
      v16 = *(*v11 + 56);
      if ((v16 & 0xF000000) == 0x1000000)
      {
        *(v15 + 14) = v16 & 0x31FFFFFF | v14;
        v15[6] = v13;
      }

      ++v11;
      --v7;
    }

    while (v7);
  }

  return result;
}

int32x2_t *physx::Scb::Scene::addActor(int32x2_t *result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = result;
  v46 = *MEMORY[0x1E69E9840];
  *a2 = result;
  if (a3)
  {
    if (result[961].i8[1])
    {
      result = physx::Scb::ObjectTracker::scheduleForInsert(result + 987, a2);
      v45 = 0x4000000000;
      v44 = v43;
      v7 = a2 + *(&physx::Sc::gOffsetTable + *(a2 + 45) + 10);
      v8 = v7 + 72;
      v9 = *(v7 + 80);
      if (v9 == 1)
      {
        v9 = 1;
        goto LABEL_13;
      }

      if (v9)
      {
        v8 = *v8;
LABEL_13:
        v15 = *a2;
        v16 = *(a2 + 8) & 0xC0000000;
        do
        {
          v17 = *v8;
          v18 = *(*v8 + 56);
          if ((v18 & 0xF000000) == 0x1000000)
          {
            *(v17 + 56) = v18 & 0x31FFFFFF | v16;
            *(v17 + 48) = v15;
          }

          v8 += 8;
          --v9;
        }

        while (v9);
      }

LABEL_23:
      *(a2 + 280) = *(a2 + 276) == 0.0 && *(a2 + 252) == 0.0 && *(a2 + 256) == 0.0 && *(a2 + 260) == 0.0 && *(a2 + 264) == 0.0 && *(a2 + 268) == 0.0 && *(a2 + 272) == 0.0;
      return result;
    }

    *(a2 + 8) = *(a2 + 8) & 0xFFFFFFF | 0x80000000;
    v45 = 0x4000000000;
    v44 = v43;
    v10 = a2 + *(&physx::Sc::gOffsetTable + *(a2 + 45) + 10);
    v11 = v10 + 72;
    v12 = *(v10 + 80);
    if (v12 == 1)
    {
      v12 = 1;
    }

    else
    {
      if (!v12)
      {
        goto LABEL_23;
      }

      v11 = *v11;
    }

    do
    {
      v19 = *v11;
      v20 = *(*v11 + 56);
      if ((v20 & 0xF000000) == 0x1000000)
      {
        *(v19 + 56) = v20 & 0x31FFFFFF | 0x80000000;
        *(v19 + 48) = result;
      }

      v11 += 8;
      --v12;
    }

    while (v12);
    goto LABEL_23;
  }

  if (result[961].i8[1])
  {
    result = physx::Scb::ObjectTracker::scheduleForInsert(result + 987, a2);
  }

  else
  {
    v13 = *(a2 + 8);
    *(a2 + 8) = v13 & 0xFFFFFFF | 0x80000000;
    if (v13)
    {
      v14 = *(a2 + 16);
    }

    else
    {
      v14 = (*(&physx::Scb::Actor::sLazyInitOffsets + ((v13 >> 24) & 0xF) + 3) + a2 + 12);
    }

    if ((*v14 & 8) != 0)
    {
      v45 = 0x4000000000;
      v44 = v43;
      v30 = a2 + *(&physx::Sc::gOffsetTable + *(a2 + 45) + 10);
      v31 = v30 + 72;
      v32 = *(v30 + 80);
      if (v32 == 1)
      {
        v32 = 1;
      }

      else
      {
        if (!v32)
        {
          goto LABEL_57;
        }

        v31 = *v31;
      }

      do
      {
        v33 = *v31;
        v34 = *(*v31 + 56);
        if ((v34 & 0xF000000) == 0x1000000)
        {
          *(v33 + 56) = v34 & 0x31FFFFFF | 0x80000000;
          *(v33 + 48) = result;
        }

        v31 += 8;
        --v32;
      }

      while (v32);
    }

    else
    {
      v21 = (a2 + 32);
      v45 = 0x4000000000;
      v43[512] = 1;
      v44 = v43;
      v22 = a2 + 32 + *(&physx::Sc::gOffsetTable + *(a2 + 45) + 10);
      v23 = (v22 + 40);
      v24 = *(v22 + 48);
      if (v24 != 1)
      {
        v23 = *v23;
      }

      result = physx::Sc::Scene::addBody(&result[2], v21, v23, *(v22 + 48), 80, a4, a5 != 0);
      if (v24)
      {
        v25 = *a2;
        do
        {
          v26 = *v23;
          v27 = *(*v23 + 56);
          if ((v27 & 0xF000000) == 0x1000000)
          {
            *(v26 + 14) = v27 & 0x31FFFFFF | 0x80000000;
            v26[6] = v25;
          }

          atomic_fetch_add(v26 + 8, 1u);
          ++v23;
          --v24;
        }

        while (v24);
      }

      if ((v45 & 0x8000000000000000) == 0)
      {
        v28 = (v45 & 0x7FFFFFFF00000000) == 0 || v44 == v43;
        if (!v28 && v44 != 0)
        {
          result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
        }
      }
    }
  }

LABEL_57:
  v35 = *(a2 + 276) == 0.0 && *(a2 + 252) == 0.0 && *(a2 + 256) == 0.0 && *(a2 + 260) == 0.0 && *(a2 + 264) == 0.0 && *(a2 + 268) == 0.0 && *(a2 + 272) == 0.0;
  *(a2 + 280) = v35;
  if (v6[961].i8[1] == 1)
  {
    v45 = 0x4000000000;
    v44 = v43;
    v36 = a2 + *(&physx::Sc::gOffsetTable + *(a2 + 45) + 10);
    v37 = v36 + 72;
    v38 = *(v36 + 80);
    if (v38 == 1)
    {
      v38 = 1;
    }

    else
    {
      if (!v38)
      {
        return result;
      }

      v37 = *v37;
    }

    v39 = *a2;
    v40 = *(a2 + 8) & 0xC0000000;
    do
    {
      v41 = *v37;
      v42 = *(*v37 + 56);
      if ((v42 & 0xF000000) == 0x1000000)
      {
        *(v41 + 56) = v42 & 0x31FFFFFF | v40;
        *(v41 + 48) = v39;
      }

      v37 += 8;
      --v38;
    }

    while (v38);
  }

  return result;
}

void physx::Scb::Scene::removeActor(int32x2_t *a1, uint64_t a2, int a3, char a4)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    physx::Scb::Scene::removeRigidNoSim<false,physx::Scb::RigidStatic>(a1, a2, a1 + 980);
  }

  else
  {
    physx::Scb::Scene::remove<physx::Scb::RigidStatic>(a1, a2, a1 + 980, a3);
    if (a1[961].i8[1] == 1)
    {
      v7 = *(a2 + 8);
      if (a3)
      {
        v7 |= 0x10u;
        *(a2 + 8) = v7;
      }

      v19 = 0x4000000000;
      v8 = 1;
      v17[512] = 1;
      v18 = v17;
      v9 = *(&physx::Scb::Actor::sLazyInitOffsets + (HIBYTE(v7) & 0xF) + 3) + a2;
      v10 = v9 + *(&physx::Sc::gOffsetTable + *(v9 + 13) + 10);
      v11 = (v10 + 40);
      v12 = *(v10 + 48);
      if (v12 != 1)
      {
        if (!v12)
        {
          goto LABEL_13;
        }

        v11 = *v11;
        v8 = v12;
      }

      v13 = *a2;
      v14 = v7 & 0xC0000000;
      do
      {
        v15 = *v11;
        v16 = *(*v11 + 56);
        if ((v16 & 0xF000000) == 0x1000000)
        {
          *(v15 + 14) = v16 & 0x31FFFFFF | v14;
          v15[6] = v13;
        }

        ++v11;
        --v8;
      }

      while (v8);
    }
  }

LABEL_13:
  *(a2 + 8) &= ~0x20u;
}

void physx::Scb::Scene::remove<physx::Scb::RigidStatic>(uint64_t a1, uint64_t a2, int32x2_t *a3, int a4)
{
  v27[1] = *MEMORY[0x1E69E9840];
  if ((*(a1 + 7689) & 1) == 0)
  {
    v5 = *(&physx::Scb::Actor::sLazyInitOffsets + (*(a2 + 11) & 0xF) + 3) + a2;
    if ((*(v5 + 12) & 8) == 0)
    {
      v27[0] = 0x4000000000;
      v25 = 1;
      v26 = v24;
      v6 = *(a1 + 4392);
      if (v6)
      {
        v7 = (v6 + 536);
      }

      else
      {
        v7 = v24;
      }

      if (v6)
      {
        v8 = (v6 + 1056);
      }

      else
      {
        v8 = &v26;
      }

      if (v6)
      {
        v9 = (v6 + 1064);
      }

      else
      {
        v9 = v27;
      }

      physx::Sc::Scene::removeStatic((a1 + 16), (a2 + 32), v7, a4);
      v10 = *v9;
      if (v10)
      {
        v11 = *v8;
        v12 = *a2;
        do
        {
          v13 = *v11;
          v14 = *(*v11 - 24);
          if ((v14 & 0x10000000) != 0)
          {
            physx::Scb::Shape::syncState((v13 - 32));
            physx::shdfnd::internal::HashSetBase<physx::Sc::BodySim const*,physx::shdfnd::Hash<physx::Sc::BodySim const*>,physx::shdfnd::NonTrackingAllocator,true>::erase(v12 + 967, v13 - 32);
            v14 = *(v13 - 24) & 0xEFFFFFFF;
            *(v13 - 24) = v14;
          }

          if ((v14 & 0xF000000) == 0x1000000)
          {
            *(v13 - 24) = v14 & 0x31FFFFFF;
            *(v13 - 32) = 0;
          }

          if (atomic_fetch_add((v13 - 48), 0xFFFFFFFF) == 1)
          {
            (*(*(v13 - 56) + 16))(v13 - 56);
          }

          ++v11;
          --v10;
        }

        while (v10);
      }

      if ((v27[0] & 0x8000000000000000) != 0 || (v27[0] & 0x7FFFFFFF00000000) == 0)
      {
        goto LABEL_41;
      }

      v15 = v26;
      goto LABEL_38;
    }

    v27[0] = 0x4000000000;
    v16 = 1;
    v25 = 1;
    v26 = v24;
    v17 = v5 + *(&physx::Sc::gOffsetTable + *(v5 + 13) + 10);
    v18 = (v17 + 40);
    v19 = *(v17 + 48);
    if (v19 != 1)
    {
      if (!v19)
      {
        v15 = v24;
        v23 = 64;
        goto LABEL_37;
      }

      v18 = *v18;
      v16 = v19;
    }

    v20 = *a2;
    do
    {
      v21 = *v18;
      v22 = *(*v18 + 56);
      if ((v22 & 0x10000000) != 0)
      {
        physx::Scb::Shape::syncState((v21 + 6));
        physx::shdfnd::internal::HashSetBase<physx::Sc::BodySim const*,physx::shdfnd::Hash<physx::Sc::BodySim const*>,physx::shdfnd::NonTrackingAllocator,true>::erase(v20 + 967, (v21 + 6));
        v22 = v21[7] & 0xEFFFFFFF;
        *(v21 + 14) = v22;
      }

      if ((v22 & 0xF000000) == 0x1000000)
      {
        *(v21 + 14) = v22 & 0x31FFFFFF;
        v21[6] = 0;
      }

      ++v18;
      --v16;
    }

    while (v16);
    v15 = v26;
    v23 = HIDWORD(v27[0]);
    if ((v27[0] & 0x8000000000000000) != 0)
    {
      goto LABEL_41;
    }

LABEL_37:
    if ((v23 & 0x7FFFFFFF) == 0)
    {
LABEL_41:
      *(a2 + 8) &= 0xFFFFFFFu;
      *a2 = 0;
      return;
    }

LABEL_38:
    if (v15 != v24 && v15)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }

    goto LABEL_41;
  }

  physx::Scb::ObjectTracker::scheduleForRemove(a3, a2);
}

int32x2_t *physx::Scb::Scene::removeRigidNoSim<false,physx::Scb::RigidStatic>(int32x2_t *result, uint64_t a2, int32x2_t *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  if ((result[961].i8[1] & 1) == 0)
  {
    v27 = 0x4000000000;
    v14 = 1;
    v25 = 1;
    v26 = v24;
    v15 = *(&physx::Scb::Actor::sLazyInitOffsets + (*(a2 + 11) & 0xF) + 3) + a2;
    v16 = v15 + *(&physx::Sc::gOffsetTable + *(v15 + 13) + 10);
    v17 = (v16 + 40);
    v18 = *(v16 + 48);
    if (v18 != 1)
    {
      if (!v18)
      {
        v22 = v24;
        v23 = 64;
LABEL_20:
        if ((v23 & 0x7FFFFFFF) != 0 && v22 != v24 && v22)
        {
          result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
        }

LABEL_24:
        *(a2 + 8) &= 0xFFFFFFFu;
        *a2 = 0;
        return result;
      }

      v17 = *v17;
      v14 = v18;
    }

    v19 = *a2;
    do
    {
      v20 = *v17;
      v21 = *(*v17 + 56);
      if ((v21 & 0x10000000) != 0)
      {
        physx::Scb::Shape::syncState((v20 + 6));
        result = physx::shdfnd::internal::HashSetBase<physx::Sc::BodySim const*,physx::shdfnd::Hash<physx::Sc::BodySim const*>,physx::shdfnd::NonTrackingAllocator,true>::erase(v19 + 967, (v20 + 6));
        v21 = v20[7] & 0xEFFFFFFF;
        *(v20 + 14) = v21;
      }

      if ((v21 & 0xF000000) == 0x1000000)
      {
        *(v20 + 14) = v21 & 0x31FFFFFF;
        v20[6] = 0;
      }

      ++v17;
      --v14;
    }

    while (v14);
    v22 = v26;
    v23 = HIDWORD(v27);
    if (v27 < 0)
    {
      goto LABEL_24;
    }

    goto LABEL_20;
  }

  result = physx::Scb::ObjectTracker::scheduleForRemove(a3, a2);
  v27 = 0x4000000000;
  v4 = 1;
  v25 = 1;
  v26 = v24;
  v5 = *(a2 + 8);
  v6 = *(&physx::Scb::Actor::sLazyInitOffsets + ((v5 >> 24) & 0xF) + 3) + a2;
  v7 = v6 + *(&physx::Sc::gOffsetTable + *(v6 + 13) + 10);
  v8 = (v7 + 40);
  v9 = *(v7 + 48);
  if (v9 != 1)
  {
    if (!v9)
    {
      return result;
    }

    v8 = *v8;
    v4 = v9;
  }

  v10 = *a2;
  v11 = v5 & 0xC0000000;
  do
  {
    v12 = *v8;
    v13 = *(*v8 + 56);
    if ((v13 & 0xF000000) == 0x1000000)
    {
      *(v12 + 14) = v13 & 0x31FFFFFF | v11;
      v12[6] = v10;
    }

    ++v8;
    --v4;
  }

  while (v4);
  return result;
}

void physx::Scb::Scene::removeActor(int32x2_t *this, physx::Scb::Body *a2, int a3, char a4)
{
  v60[1] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v6 = a2 + 32;
    if (this[961].i8[1])
    {
      physx::Scb::ObjectTracker::scheduleForRemove(this + 987, a2);
      v60[0] = 0x4000000000;
      v59 = v57;
      v7 = &v6[*(&physx::Sc::gOffsetTable + *(a2 + 45) + 10)];
      v8 = v7 + 40;
      v9 = *(v7 + 24);
      if (v9 == 1)
      {
        v9 = 1;
        goto LABEL_65;
      }

      if (v9)
      {
        v8 = *v8;
LABEL_65:
        v37 = *a2;
        v38 = *(a2 + 2) & 0xC0000000;
        do
        {
          v39 = *v8;
          v40 = *(*v8 + 56);
          if ((v40 & 0xF000000) == 0x1000000)
          {
            *(v39 + 14) = v40 & 0x31FFFFFF | v38;
            *(v39 + 6) = v37;
          }

          v8 += 8;
          --v9;
        }

        while (v9);
      }

LABEL_69:
      v41 = *(a2 + 71);
      v42 = (*(a2 + 2) + 348);
      if ((v41 & 0x4000) == 0)
      {
        v42 = a2 + 76;
      }

      if (*v42)
      {
        physx::Scb::Body::putToSleepInternal(a2);
      }

      else
      {
        *(a2 + 70) = 1;
        *(a2 + 71) = v41 & 0xFFF0FFFF;
      }

      *(a2 + 2) &= ~0x20u;
      return;
    }

    v60[0] = 0x4000000000;
    v13 = 1;
    v58 = 1;
    v59 = v57;
    v14 = &v6[*(&physx::Sc::gOffsetTable + *(a2 + 45) + 10)];
    v15 = v14 + 40;
    v16 = *(v14 + 24);
    if (v16 != 1)
    {
      if (!v16)
      {
        v20 = v57;
        v21 = 64;
LABEL_22:
        if ((v21 & 0x7FFFFFFF) != 0 && v20 != v57 && v20)
        {
          (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
        }

LABEL_26:
        *(a2 + 2) &= 0xFFFFFFFu;
        *a2 = 0;
        goto LABEL_69;
      }

      v15 = *v15;
      v13 = v16;
    }

    v17 = *a2;
    do
    {
      v18 = *v15;
      v19 = *(*v15 + 56);
      if ((v19 & 0x10000000) != 0)
      {
        physx::Scb::Shape::syncState((v18 + 48));
        physx::shdfnd::internal::HashSetBase<physx::Sc::BodySim const*,physx::shdfnd::Hash<physx::Sc::BodySim const*>,physx::shdfnd::NonTrackingAllocator,true>::erase(v17 + 967, (v18 + 48));
        v19 = *(v18 + 14) & 0xEFFFFFFF;
        *(v18 + 14) = v19;
      }

      if ((v19 & 0xF000000) == 0x1000000)
      {
        *(v18 + 14) = v19 & 0x31FFFFFF;
        *(v18 + 6) = 0;
      }

      v15 += 8;
      --v13;
    }

    while (v13);
    v20 = v59;
    v21 = HIDWORD(v60[0]);
    if ((v60[0] & 0x8000000000000000) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  v11 = *(a2 + 26);
  if (*(a2 + 2) >> 30 == 1 && v11 != 0)
  {
    physx::Sc::BodyCore::tearDownSimStateData(a2 + 32, *(*a2 + 4384), *(v11 + 31) == 1);
  }

  if (this[961].i8[1])
  {
    physx::Scb::ObjectTracker::scheduleForRemove(this + 987, a2);
    goto LABEL_53;
  }

  *(a2 + 71) &= 0xF9FFFFFF;
  if ((*(a2 + *(&physx::Scb::Actor::sLazyInitOffsets + (*(a2 + 11) & 0xF) + 3) + 12) & 8) != 0)
  {
    v60[0] = 0x4000000000;
    v43 = 1;
    v58 = 1;
    v59 = v57;
    v44 = a2 + *(&physx::Sc::gOffsetTable + *(a2 + 45) + 10);
    v45 = v44 + 72;
    v46 = *(v44 + 40);
    if (v46 != 1)
    {
      if (!v46)
      {
        v50 = v57;
        v51 = 64;
LABEL_85:
        if ((v51 & 0x7FFFFFFF) != 0 && v50 != v57 && v50)
        {
          (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
        }

        goto LABEL_52;
      }

      v45 = *v45;
      v43 = v46;
    }

    v47 = *a2;
    do
    {
      v48 = *v45;
      v49 = *(*v45 + 56);
      if ((v49 & 0x10000000) != 0)
      {
        physx::Scb::Shape::syncState((v48 + 48));
        physx::shdfnd::internal::HashSetBase<physx::Sc::BodySim const*,physx::shdfnd::Hash<physx::Sc::BodySim const*>,physx::shdfnd::NonTrackingAllocator,true>::erase(v47 + 967, (v48 + 48));
        v49 = *(v48 + 14) & 0xEFFFFFFF;
        *(v48 + 14) = v49;
      }

      if ((v49 & 0xF000000) == 0x1000000)
      {
        *(v48 + 14) = v49 & 0x31FFFFFF;
        *(v48 + 6) = 0;
      }

      v45 += 8;
      --v43;
    }

    while (v43);
    v50 = v59;
    v51 = HIDWORD(v60[0]);
    if ((v60[0] & 0x8000000000000000) != 0)
    {
      goto LABEL_52;
    }

    goto LABEL_85;
  }

  v60[0] = 0x4000000000;
  v58 = 1;
  v59 = v57;
  v22 = this[549];
  if (v22)
  {
    v23 = (*&v22 + 536);
  }

  else
  {
    v23 = v57;
  }

  if (v22)
  {
    v24 = (*&v22 + 1056);
  }

  else
  {
    v24 = &v59;
  }

  if (v22)
  {
    v25 = (*&v22 + 1064);
  }

  else
  {
    v25 = v60;
  }

  v56 = a3;
  physx::Sc::Scene::removeBody(&this[2], a2 + 4, v23, a3);
  v26 = *v25;
  if (v26)
  {
    v27 = *v24;
    v28 = *a2;
    do
    {
      v29 = *v27;
      v30 = *(*v27 - 24);
      if ((v30 & 0x10000000) != 0)
      {
        physx::Scb::Shape::syncState((v29 - 32));
        physx::shdfnd::internal::HashSetBase<physx::Sc::BodySim const*,physx::shdfnd::Hash<physx::Sc::BodySim const*>,physx::shdfnd::NonTrackingAllocator,true>::erase(v28 + 967, v29 - 32);
        v30 = *(v29 - 24) & 0xEFFFFFFF;
        *(v29 - 24) = v30;
      }

      if ((v30 & 0xF000000) == 0x1000000)
      {
        *(v29 - 24) = v30 & 0x31FFFFFF;
        *(v29 - 32) = 0;
      }

      if (atomic_fetch_add((v29 - 48), 0xFFFFFFFF) == 1)
      {
        (*(*(v29 - 56) + 16))(v29 - 56);
      }

      ++v27;
      --v26;
    }

    while (v26);
  }

  if ((v60[0] & 0x8000000000000000) == 0 && (v60[0] & 0x7FFFFFFF00000000) != 0 && v59 != v57 && v59)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  a3 = v56;
LABEL_52:
  *(a2 + 2) &= 0xFFFFFFFu;
  *a2 = 0;
LABEL_53:
  v31 = *(a2 + 71);
  v32 = (*(a2 + 2) + 348);
  if ((v31 & 0x4000) == 0)
  {
    v32 = a2 + 76;
  }

  if (*v32)
  {
    physx::Scb::Body::putToSleepInternal(a2);
  }

  else
  {
    *(a2 + 70) = 1;
    *(a2 + 71) = v31 & 0xFFF0FFFF;
  }

  v33 = *(a2 + 2) & 0xFFFFFFDF;
  *(a2 + 2) = v33;
  if (this[961].i8[1] == 1)
  {
    if (a3)
    {
      v33 |= 0x10u;
      *(a2 + 2) = v33;
    }

    v60[0] = 0x4000000000;
    v59 = v57;
    v34 = a2 + *(&physx::Sc::gOffsetTable + *(a2 + 45) + 10);
    v35 = v34 + 72;
    v36 = *(v34 + 40);
    if (v36 == 1)
    {
      v36 = 1;
    }

    else
    {
      if (!v36)
      {
        return;
      }

      v35 = *v35;
    }

    v52 = *a2;
    v53 = v33 & 0xC0000000;
    do
    {
      v54 = *v35;
      v55 = *(*v35 + 56);
      if ((v55 & 0xF000000) == 0x1000000)
      {
        *(v54 + 14) = v55 & 0x31FFFFFF | v53;
        *(v54 + 6) = v52;
      }

      v35 += 8;
      --v36;
    }

    while (v36);
  }
}

int32x2_t *physx::Scb::Scene::add<physx::Scb::Constraint>(int32x2_t *a1, uint64_t a2, int32x2_t *a3)
{
  *a2 = a1;
  if ((a1[961].i8[1] & 1) == 0)
  {
    *(a2 + 8) = *(a2 + 8) & 0xFFFFFFF | 0x80000000;
    v8 = 0;
    v9 = 0;
    v5 = a2 - 32;
    (*(*(a2 - 32) + 56))(a2 - 32, &v9, &v8);
    if (v9)
    {
      v6 = v9 + *(&physx::Scb::Actor::sLazyInitOffsets + (*(v9 + 107) & 0xF) + 3) + 96;
      if (v8)
      {
LABEL_7:
        v7 = *(&physx::Scb::Actor::sLazyInitOffsets + (*(v8 + 107) & 0xF) + 3) + v8 + 96;
        return physx::Sc::Scene::addConstraint(a1 + 2, v5 + 56, v6, v7);
      }
    }

    else
    {
      v6 = 0;
      if (v8)
      {
        goto LABEL_7;
      }
    }

    v7 = 0;
    return physx::Sc::Scene::addConstraint(a1 + 2, v5 + 56, v6, v7);
  }

  return physx::Scb::ObjectTracker::scheduleForInsert(a3, a2);
}

void physx::Scb::Scene::removeConstraint(int32x2_t *a1, uint64_t a2)
{
  if (a1[961].i8[1])
  {
    v3 = a1 + 994;

    physx::Scb::ObjectTracker::scheduleForRemove(v3, a2);
  }

  else
  {
    physx::Sc::Scene::removeConstraint(&a1[2], a2 + 24);
    *(a2 + 8) &= 0xFFFFFFFu;
    *a2 = 0;
  }
}

int32x2_t *physx::Scb::Scene::add<physx::Scb::Articulation>(int32x2_t *a1, uint64_t a2, int32x2_t *a3)
{
  *a2 = a1;
  if (a1[961].i8[1])
  {
    return physx::Scb::ObjectTracker::scheduleForInsert(a3, a2);
  }

  *(a2 + 8) = *(a2 + 8) & 0xFFFFFFF | 0x80000000;
  v4 = **(a2 + 120);
  if (v4)
  {
    v5 = v4 + 96;
  }

  else
  {
    v5 = 0;
  }

  return physx::Sc::Scene::addArticulation(a1 + 2, (a2 + 24), (v5 + 32));
}

int32x2_t *physx::Scb::Scene::removeArticulation(int32x2_t *this, physx::Scb::Articulation *a2)
{
  v4 = *(a2 + 3);
  if (v4)
  {
    v5 = this[240];
    v6 = *v4;
    v8 = *(v4 + 18);
    (*(**&v5 + 72))(v5, v6, &v8);
  }

  result = physx::Scb::Scene::remove<physx::Scb::Articulation>(this, a2, this + 1001);
  *(a2 + 76) = 1;
  return result;
}

int32x2_t *physx::Scb::Scene::remove<physx::Scb::Articulation>(int32x2_t *a1, uint64_t a2, int32x2_t *a3)
{
  if (a1[961].i8[1])
  {

    return physx::Scb::ObjectTracker::scheduleForRemove(a3, a2);
  }

  else
  {
    *(a2 + 8) &= 0xFFFFFCFF;
    result = physx::Sc::Scene::removeArticulation(a1 + 2, (a2 + 24));
    *(a2 + 8) &= 0xFFFFFFFu;
    *a2 = 0;
  }

  return result;
}

int32x2_t *physx::Scb::Scene::add<physx::Scb::ArticulationJoint>(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *a2 = a1;
  if (*(a1 + 7689))
  {
    return physx::Scb::ObjectTracker::scheduleForInsert(a3, a2);
  }

  *(a2 + 8) = *(a2 + 8) & 0xFFFFFFF | 0x80000000;
  return physx::Sc::Scene::addArticulationJoint(a1 + 16, a2 + 24, (*(a2 + 408) + 128), (*(a2 + 416) + 128));
}

int32x2_t *physx::Scb::Scene::remove<physx::Scb::ArticulationJoint>(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  if (*(a1 + 7689))
  {

    return physx::Scb::ObjectTracker::scheduleForRemove(a3, a2);
  }

  else
  {
    result = physx::Sc::Scene::removeArticulationJoint(a1 + 16, (a2 + 24));
    *(a2 + 8) &= 0xFFFFFFFu;
    *a2 = 0;
  }

  return result;
}

int32x2_t *physx::Scb::Scene::addAggregate(int32x2_t *a1, uint64_t a2)
{
  *a2 = a1;
  if (a1[961].i8[1])
  {
    v3 = a1 + 1015;

    return physx::Scb::ObjectTracker::scheduleForInsert(v3, a2);
  }

  else
  {
    result = physx::Sc::Scene::createAggregate(&a1[2], *(a2 + 24), *(a2 + 40));
    *(a2 + 32) = result;
    *(a2 + 8) = *(a2 + 8) & 0xFFFFFFF | 0x80000000;
  }

  return result;
}

void physx::Scb::Scene::removeAggregate(int32x2_t *a1, uint64_t a2)
{
  if (a1[961].i8[1])
  {
    v3 = a1 + 1015;

    physx::Scb::ObjectTracker::scheduleForRemove(v3, a2);
  }

  else
  {
    physx::Sc::Scene::deleteAggregate(&a1[2], *(a2 + 32));
    *(a2 + 8) &= 0xFFFFFFFu;
    *a2 = 0;
  }
}

uint64_t physx::Scb::Scene::addMaterial(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    result = pthread_mutex_lock(*(result + 7680));
  }

  LOWORD(v5) = *(a2 + 24);
  HIDWORD(v5) = 0;
  v4 = *(v3 + 7672);
  if ((*(v3 + 7676) & 0x7FFFFFFFu) <= v4)
  {
    result = physx::shdfnd::Array<physx::Scb::MaterialEvent,physx::shdfnd::ReflectionAllocator<physx::Scb::MaterialEvent>>::growAndPushBack(v3 + 7664, &v5);
  }

  else
  {
    *(*(v3 + 7664) + 8 * v4) = v5;
    ++*(v3 + 7672);
  }

  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    return pthread_mutex_unlock(*(v3 + 7680));
  }

  return result;
}

uint64_t physx::Scb::Scene::updateMaterial(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    result = pthread_mutex_lock(*(result + 7680));
  }

  LOWORD(v5) = *(a2 + 24);
  HIDWORD(v5) = 1;
  v4 = *(v3 + 7672);
  if ((*(v3 + 7676) & 0x7FFFFFFFu) <= v4)
  {
    result = physx::shdfnd::Array<physx::Scb::MaterialEvent,physx::shdfnd::ReflectionAllocator<physx::Scb::MaterialEvent>>::growAndPushBack(v3 + 7664, &v5);
  }

  else
  {
    *(*(v3 + 7664) + 8 * v4) = v5;
    ++*(v3 + 7672);
  }

  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    return pthread_mutex_unlock(*(v3 + 7680));
  }

  return result;
}

uint64_t physx::Scb::Scene::removeMaterial(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4 != 0xFFFF)
  {
    v8[5] = v2;
    v8[6] = v3;
    v6 = result;
    if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
    {
      result = pthread_mutex_lock(*(result + 7680));
      LOWORD(v4) = *(a2 + 24);
    }

    LOWORD(v8[0]) = v4;
    HIDWORD(v8[0]) = 2;
    v7 = *(v6 + 7672);
    if ((*(v6 + 7676) & 0x7FFFFFFFu) <= v7)
    {
      result = physx::shdfnd::Array<physx::Scb::MaterialEvent,physx::shdfnd::ReflectionAllocator<physx::Scb::MaterialEvent>>::growAndPushBack(v6 + 7664, v8);
    }

    else
    {
      *(*(v6 + 7664) + 8 * v7) = v8[0];
      ++*(v6 + 7672);
    }

    if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
    {
      return pthread_mutex_unlock(*(v6 + 7680));
    }
  }

  return result;
}

uint64_t physx::Scb::Scene::updateLowLevelMaterial(pthread_mutex_t **this, physx::NpMaterial **a2)
{
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_lock(this[960]);
  }

  if (*(this + 1918))
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = (this[958] + v4);
      v7 = *v6;
      v8 = *(v6 + 1);
      if (v8 == 2)
      {
        if (*(this + 6) > v7)
        {
          v19 = this[2] + 32 * v7;
          if (*(v19 + 24) == v7)
          {
            (*(**&this[232][27].__opaque[40] + 120))(*&this[232][27].__opaque[40], v19);
            *(v19 + 24) = -1;
          }
        }
      }

      else
      {
        v9 = a2[v7];
        if (v8 == 1)
        {
          if (v9)
          {
            v16 = *(v9 + 6);
            v15 = v9 + 48;
            v17 = this[2] + 32 * *(v15 + 12);
            *(v17 + 8) = *(v15 + 2);
            *v17 = v16;
            *(v17 + 12) = *(v15 + 6);
            *(v17 + 14) = *(v15 + 7);
            v18 = *(v15 + 2);
            *(v17 + 24) = *(v15 + 6);
            *(v17 + 16) = v18;
            (*(**&this[232][27].__opaque[40] + 112))(*&this[232][27].__opaque[40], v15);
          }
        }

        else
        {
          if (v8)
          {
            v10 = 1;
          }

          else
          {
            v10 = v9 == 0;
          }

          if (!v10)
          {
            v11 = *(v9 + 36);
            physx::PxsMaterialManager::resize((this + 2), v11 + 1);
            v12 = *(v9 + 6);
            v13 = this[2] + 32 * v11;
            *(v13 + 8) = *(v9 + 14);
            *v13 = v12;
            *(v13 + 12) = *(v9 + 30);
            *(v13 + 14) = *(v9 + 31);
            v14 = *(v9 + 8);
            *(v13 + 24) = *(v9 + 18);
            *(v13 + 16) = v14;
            (*(**&this[232][27].__opaque[40] + 104))(*&this[232][27].__opaque[40]);
          }
        }
      }

      ++v5;
      v4 += 8;
    }

    while (v5 < *(this + 1918));
  }

  result = physx::shdfnd::Array<physx::Scb::MaterialEvent,physx::shdfnd::ReflectionAllocator<physx::Scb::MaterialEvent>>::resize((this + 958), 0, &v21);
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    return pthread_mutex_unlock(this[960]);
  }

  return result;
}

uint64_t physx::shdfnd::Array<physx::Scb::MaterialEvent,physx::shdfnd::ReflectionAllocator<physx::Scb::MaterialEvent>>::resize(uint64_t result, unsigned int a2, void *a3)
{
  v5 = result;
  if ((*(result + 12) & 0x7FFFFFFFu) < a2)
  {
    result = physx::shdfnd::Array<physx::Scb::MaterialEvent,physx::shdfnd::ReflectionAllocator<physx::Scb::MaterialEvent>>::recreate(result, a2);
  }

  v6 = *(v5 + 8);
  if (v6 < a2)
  {
    v7 = *v5 + 8 * a2;
    v8 = (*v5 + 8 * v6);
    do
    {
      *v8++ = *a3;
    }

    while (v8 < v7);
  }

  *(v5 + 8) = a2;
  return result;
}