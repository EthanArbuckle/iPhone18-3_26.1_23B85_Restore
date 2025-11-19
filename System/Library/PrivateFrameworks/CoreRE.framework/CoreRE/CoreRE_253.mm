uint64_t physx::Sc::NPhaseCore::mergeProcessedTriggerInteractions(uint64_t result)
{
  v1 = *(result + 3624);
  if (v1)
  {
    v2 = result;
    if (*(result + 3640) >= 1)
    {
      v3 = 0;
      do
      {
        v4 = *result;
        v5 = *(v1 + 8 * v3);
        if (v5)
        {
          v6 = v5 + 8;
        }

        else
        {
          v6 = 0;
        }

        v7 = *(v6 + 28);
        v8 = v4 + 120;
        v9 = *(v4 + 120 + 4 * v7);
        if (v9 >= 2)
        {
          v10 = v9 - 1;
          v11 = v4 + 16 * v7;
          v12 = *(v11 + 72);
          v13 = *(v12 + 8 * v10);
          v14 = *(v6 + 16);
          v15 = *(v12 + 8 * v14);
          *(v12 + 8 * v10) = v15;
          *(*(v11 + 72) + 8 * v14) = v13;
          *(v13 + 16) = v14;
          *(v15 + 16) = v10;
          v9 = *(v8 + 4 * v7);
        }

        *(v8 + 4 * v7) = v9 - 1;
        ++v3;
      }

      while (v3 < *(result + 3640));
    }

    *(result + 3640) = 0;
    result = physx::PxcScratchAllocator::free(*(*result + 1840), *(result + 3624));
    *(v2 + 3624) = 0;
  }

  return result;
}

uint64_t physx::Sc::NPhaseCore::visualize(uint64_t result, _DWORD *a2, uint64_t a3)
{
  v3 = *result;
  if (*(*result + 4656) != 0.0)
  {
    v4 = *(v3 + 120);
    if (v4)
    {
      v7 = *(v3 + 72);
      do
      {
        --v4;
        v8 = *v7++;
        v9 = v8 - 8;
        if (v8)
        {
          v10 = v9;
        }

        else
        {
          v10 = 0;
        }

        result = physx::Sc::ShapeInteraction::visualize(v10, a2, a3);
      }

      while (v4);
    }
  }

  return result;
}

char *physx::Sc::NPhaseCore::processPersistentContactEvents(char *result, uint64_t a2)
{
  v2 = *(result + 10);
  if (v2)
  {
    v4 = (*(result + 3) + 8);
    do
    {
      v5 = *(v4 - 1);
      if (--v2)
      {
        _X8 = *v4;
        __asm { PRFM            #0, [X8] }
      }

      _X8 = *(v5 + 72);
      __asm { PRFM            #0, [X8] }

      if ((~*(v5 + 64) & 0x408) == 0)
      {
        if (*(*(*(*(v5 + 40) + 8) + 80) + 13) - 1 >= 2)
        {
          v14 = 0;
        }

        else
        {
          v14 = *(*(v5 + 40) + 8);
        }

        v15 = *(*(v5 + 48) + 8);
        if (*(*(v15 + 80) + 13) - 1 >= 2)
        {
          v15 = 0;
        }

        if (*(v14 + 184) < 0xFFFFFFFE || v15 && *(v15 + 184) <= 0xFFFFFFFD)
        {
          physx::Sc::ShapeInteraction::processUserNotificationSync(*(v4 - 1));
          result = physx::Sc::ShapeInteraction::processUserNotificationAsync(v5, 8, 0, 0, 0, 0, a2, 0, v16, v17, v18);
        }
      }

      ++v4;
    }

    while (v2);
  }

  return result;
}

uint64_t physx::Sc::NPhaseCore::fireCustomFilteringCallbacks(uint64_t result, uint64_t a2, char a3)
{
  v3 = *(*result + 4024);
  if (v3)
  {
    v6 = result;
    v13 = 0;
    v14 = 0;
    result = (*(*v3 + 16))(v3, &v14, &v13, &v13 + 2);
    if (result)
    {
      do
      {
        v7 = HIWORD(v13);
        if ((~HIWORD(v13) & 3) == 0)
        {
          v7 = HIWORD(v13) & 0xFFFE;
          HIWORD(v13) &= ~1u;
        }

        v8 = *(**(v6 + 152) + 8 * v14);
        v11[0] = v7;
        v11[1] = v13;
        v12 = v14;
        v9 = physx::Sc::NPhaseCore::refilterInteraction(v6, v8, v11, 1, a2, a3);
        if (v9 == v8 && !*(v9 + 36))
        {
          physx::Sc::ShapeInteraction::updateState(v9, 1, v10);
        }

        result = (*(*v3 + 16))(v3, &v14, &v13, &v13 + 2);
      }

      while ((result & 1) != 0);
    }
  }

  return result;
}

void *physx::Sc::NPhaseCore::updateDirtyInteractions(int32x2_t *a1, void *a2, uint64_t a3)
{
  v3 = a3;
  v6 = *a1;
  v7 = *(*a1 + 4264);
  if ((v7 & 6) != 0)
  {
    v8 = *(*&v6 + 80);
    if (v8)
    {
      v9 = (8 * v7) & 0x20 | (8 * ((v7 >> 1) & 1));
      v10 = *(*&v6 + 72);
      do
      {
        v12 = *v10++;
        v11 = v12;
        if ((*(v12 + 29) & 8) != 0)
        {
          *(v11 + 30) |= v9;
        }

        else
        {
          physx::Sc::ShapeInteraction::updateState(v11 - 8, v9, a3);
        }

        --v8;
      }

      while (v8);
    }
  }

  v13 = a1[18].u32[1];
  if (v13)
  {
    v14 = a1[13];
    do
    {
      v15 = **&v14;
      if ((*(**&v14 + 29) & 1) == 0 || (*(v15 + 30) & 1) == 0)
      {
        goto LABEL_15;
      }

      v16 = physx::Sc::NPhaseCore::refilterInteraction(a1, v15 - 8, 0, 0, a2, v3);
      v17 = (v16 + 8);
      if (!v16)
      {
        v17 = 0;
      }

      if (v15 == v17)
      {
LABEL_15:
        if (*(v15 + 28) == 4)
        {
          physx::Sc::ConstraintInteraction::onActivate_(v15, a2);
        }

        else if (!*(v15 + 28))
        {
          physx::Sc::ShapeInteraction::updateState(v15 - 8, 0, a3);
        }

        if ((*(v15 + 29) & 8) != 0)
        {
          *(v15 + 29) &= ~8u;
        }

        *(v15 + 30) = 0;
      }

      *&v14 += 8;
      --v13;
    }

    while (v13);
  }

  return physx::shdfnd::internal::HashBase<physx::Sc::Interaction *,physx::Sc::Interaction *,physx::shdfnd::Hash<physx::Sc::Interaction *>,physx::shdfnd::internal::HashSetBase<physx::Sc::Interaction *,physx::shdfnd::Hash<physx::Sc::Interaction *>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::clear(&a1[12]);
}

BOOL physx::Sc::findTriggerContacts(uint64_t a1, char a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 76);
  if (a2)
  {
    if (a3)
    {
      v12 = 4;
    }

    else
    {
      v12 = 0;
    }

    v13 = (a1 + 78);
    if ((*(a1 + 78) & 1) == 0)
    {
      LOBYTE(v14) = 0;
      v15 = 0;
      goto LABEL_20;
    }

LABEL_16:
    LOBYTE(v14) = 0;
    v15 = 16;
    goto LABEL_20;
  }

  v16 = *(*(v9 + 56) + 72);
  v17 = *(*(v10 + 56) + 72);
  ++*(a6 + 28 * v16 + 4 * v17);
  if (v16 <= v17)
  {
    v18 = v10;
  }

  else
  {
    v18 = v9;
  }

  if (v16 <= v17)
  {
    v19 = v9;
  }

  else
  {
    v19 = v10;
  }

  v20 = *(&gGeomOverlapMethodTable[7 * *(*(v19 + 56) + 72)] + *(*(v18 + 56) + 72));
  physx::Sc::ShapeSim::getAbsPoseAligned(v19, v32);
  AbsPoseAligned = physx::Sc::ShapeSim::getAbsPoseAligned(v18, v31);
  v14 = v20(*(v19 + 56) + 72, v32, *(v18 + 56) + 72, v31, a1 + 60, AbsPoseAligned);
  v22 = *(a1 + 78);
  v13 = (a1 + 78);
  if (v22)
  {
    v12 = 0;
    if (v14)
    {
      v15 = 0;
      LOBYTE(v14) = 1;
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  v12 = 0;
  if (v14)
  {
    v15 = 4;
  }

  else
  {
    v15 = 0;
  }

LABEL_20:
  *v13 = v14;
  v23 = v15 & v11;
  if ((v15 & v11) != 0)
  {
    v24 = *(v9 + 56) + qword_1EE1C7DF8;
    v25 = *(v10 + 56) + qword_1EE1C7DF8;
    *(a4 + 32) = v15;
    *(a4 + 36) = v12;
    v26 = *(*(v9 + 8) + 80);
    v27 = *(*(v10 + 8) + 80);
    v28 = qword_1EE1C7E30[*(v27 + 13)];
    v29 = v26 + qword_1EE1C7E30[*(v26 + 13)];
    *a4 = v24;
    *(a4 + 8) = v29;
    *(a4 + 16) = v25;
    *(a4 + 24) = v27 + v28;
    LODWORD(v25) = *(v10 + 64);
    LOBYTE(v26) = *(v26 + 11);
    LOBYTE(v27) = *(v27 + 11);
    *a5 = *(v9 + 64);
    *(a5 + 4) = v25;
    *(a5 + 8) = v26;
    *(a5 + 9) = v27;
  }

  return v23 != 0;
}

uint64_t physx::Sc::NPhaseCore::lostTouchReports(uint64_t result, physx::Sc::ShapeInteraction *this, char a3, int a4, uint64_t a5, char a6)
{
  v8 = result;
  v9 = *(this + 16);
  if ((v9 & 0x8000) != 0)
  {
    if ((v9 & 0x1DC) != 0)
    {
      if ((v9 & 0x80000) != 0)
      {
        v12 = 272;
      }

      else
      {
        v12 = 16;
      }

      v13 = v12 & v9;
      if ((v12 & v9) != 0)
      {
        v16 = *(*(this + 9) + 2) == 1;
        physx::Sc::ShapeInteraction::processUserNotificationSync(this);
        result = physx::Sc::ShapeInteraction::processUserNotificationAsync(this, v13, 8 * v16, 1, a4, 0, a5, 0, v17, v18, v19);
      }

      v20 = *(*(this + 9) + 24);
      if (v20 && *(v20 + 12) == *(*(*(this + 1) + 72) + 1992))
      {
        if (a3)
        {
          if ((*(v20 + 10) & 8) != 0)
          {
            result = physx::Sc::ShapeInteraction::setContactReportPostSolverVelocity(this, v20);
          }

          v21 = 17;
        }

        else
        {
          v21 = 16;
        }

        *(v20 + 10) |= v21;
      }
    }

    v22 = *(*(this + 5) + 8);
    v23 = *(*(v22 + 80) + 13);
    v24 = *(*(this + 6) + 8);
    if (*(*(v24 + 80) + 13) - 1 >= 2)
    {
      v24 = 0;
    }

    v10 = *(this + 9);
    v25 = *(v10 + 2) - 1;
    *(v10 + 2) = v25;
    if ((a6 & 1) != 0 || !v25)
    {
      if ((v23 - 1) >= 2)
      {
        v22 = 0;
      }

      --*(*(v22 + 136) + 152);
      if (v24)
      {
        --*(*(v24 + 136) + 152);
      }
    }
  }

  else
  {
    v10 = *(this + 9);
    if (!v10)
    {
      goto LABEL_38;
    }
  }

  v26 = *(v10 + 4) - 1;
  *(v10 + 4) = v26;
  if (!v26)
  {
    v27 = *(this + 1);
    v28 = *(v27 + 88);
    v29 = *(*(this + 2) + 88);
    v30 = v28 > v29;
    if (v28 <= v29)
    {
      v31 = *(this + 1);
    }

    else
    {
      v31 = *(this + 2);
    }

    if (!v30)
    {
      v27 = *(this + 2);
    }

    v32 = *(v27 + 88);
    v41[0] = *(v31 + 88);
    v41[1] = v32;
    result = physx::shdfnd::internal::HashMapBase<physx::Sc::BodyPairKey,physx::Sc::ActorPair *,physx::shdfnd::Hash<physx::Sc::BodyPairKey>,physx::shdfnd::NonTrackingAllocator>::erase((v8 + 3648), v41);
    if (*v10)
    {
      v35 = *(v10 + 24);
      if (v35)
      {
        --*(v8 + 2980);
        *v35 = *(v8 + 2992);
        *(v8 + 2992) = v35;
        *(v10 + 24) = 0;
      }

      v33 = 1288;
      v34 = 1276;
    }

    else
    {
      v33 = 720;
      v34 = 708;
    }

    --*(v8 + v34);
    *v10 = *(v8 + v33);
    *(v8 + v33) = v10;
  }

LABEL_38:
  *(this + 9) = 0;
  v36 = *(this + 16);
  if ((v36 & 0x8000) == 0)
  {
    v37 = *(this + 11);
    if (v37)
    {
      if ((*(v37 + 83) & 3) != 0)
      {
        return result;
      }
    }

    else if ((v36 & 0x10000) != 0)
    {
      return result;
    }
  }

  if (*(*(*(*(this + 5) + 8) + 80) + 13) - 1 >= 2)
  {
    v38 = 0;
  }

  else
  {
    v38 = *(*(this + 5) + 8);
  }

  if (*(*(*(*(this + 6) + 8) + 80) + 13) - 1 >= 2)
  {
    v39 = 0;
  }

  else
  {
    v39 = *(*(this + 6) + 8);
  }

  if ((a3 & 4) != 0)
  {
    if (v38)
    {
      v40 = v39 == 0;
    }

    else
    {
      v40 = 1;
    }

    if (v40)
    {
      if (v38)
      {
        result = physx::Sc::BodySim::internalWakeUp(v38, 0.4);
      }

      if (v39)
      {
        return physx::Sc::BodySim::internalWakeUp(v39, 0.4);
      }
    }

    else if ((v36 & 0x40000) == 0)
    {
      return physx::Sc::Scene::addToLostTouchList(*v8, v38, v39);
    }
  }

  return result;
}

uint64_t physx::shdfnd::internal::HashMapBase<physx::Sc::BodyPairKey,physx::Sc::ActorPair *,physx::shdfnd::Hash<physx::Sc::BodyPairKey>,physx::shdfnd::NonTrackingAllocator>::erase(int32x2_t *a1, int *a2)
{
  if (!a1[6].i32[1])
  {
    return 0;
  }

  v2 = *a2;
  v3 = a2[1];
  v4 = *a2 | (v3 << 16);
  v5 = 9 * ((v4 + ~(v4 << 15)) ^ ((v4 + ~(v4 << 15)) >> 10));
  v6 = (*&a1[3] + 4 * ((((v5 ^ (v5 >> 6)) + ~((v5 ^ (v5 >> 6)) << 11)) ^ (((v5 ^ (v5 >> 6)) + ~((v5 ^ (v5 >> 6)) << 11)) >> 16)) & (a1[4].i32[1] - 1)));
  v7 = *v6;
  if (v7 == -1)
  {
    return 0;
  }

  v8 = a1[1];
  v9 = a1[2];
  v10 = (*&v8 + 16 * v7);
  v12 = *v10;
  v11 = v10[1];
  if (v12 != v2 || v11 != v3)
  {
    while (1)
    {
      v14 = v7;
      v7 = *(*&v9 + 4 * v7);
      if (v7 == -1)
      {
        return 0;
      }

      v15 = (*&v8 + 16 * v7);
      v17 = *v15;
      v16 = v15[1];
      if (v17 == v2 && v16 == v3)
      {
        v6 = (*&v9 + 4 * v14);
        break;
      }
    }
  }

  *v6 = *(*&v9 + 4 * v7);
  v19 = vadd_s32(a1[6], 0xFFFFFFFF00000001);
  a1[6] = v19;
  if (v7 != v19.i32[1])
  {
    v20 = (*&v8 + 16 * v7);
    v21 = (*&v8 + 16 * v19.u32[1]);
    v22 = v21[1];
    *v20 = *v21;
    v24 = a1[1];
    v23 = a1[2];
    v25 = *(*&v23 + 4 * a1[6].u32[1]);
    v20[1] = v22;
    *(*&v23 + 4 * v7) = v25;
    v26 = *(*&v24 + 16 * v7) | (*(*&v24 + 16 * v7 + 4) << 16);
    v27 = 9 * ((v26 + ~(v26 << 15)) ^ ((v26 + ~(v26 << 15)) >> 10));
    v28 = (v27 ^ (v27 >> 6)) + ~((v27 ^ (v27 >> 6)) << 11);
    v29 = (*&a1[3] + 4 * ((v28 ^ HIWORD(v28)) & (a1[4].i32[1] - 1)));
    v30 = a1[6].u32[1];
    v31 = *v29;
    if (v31 != v30)
    {
      do
      {
        v32 = v31;
        v31 = *(*&v23 + 4 * v31);
      }

      while (v31 != v30);
      v29 = (*&v23 + 4 * v32);
    }

    *v29 = v7;
  }

  --a1[5].i32[1];
  return 1;
}

uint64_t physx::Sc::NPhaseCore::addToPersistentContactEventPairs(uint64_t this, physx::Sc::ShapeInteraction *a2)
{
  v3 = this;
  v9 = a2;
  *(a2 + 16) |= 0x200000u;
  v4 = *(this + 32);
  v5 = *(this + 40);
  if (v4 == v5)
  {
    *(a2 + 20) = v4;
    if ((*(this + 36) & 0x7FFFFFFFu) <= v4)
    {
      this = physx::shdfnd::Array<physx::Sc::ShapeInteraction *,physx::shdfnd::ReflectionAllocator<physx::Sc::ShapeInteraction *>>::growAndPushBack(this + 24, &v9);
      v4 = *(v3 + 40);
    }

    else
    {
      *(*(this + 24) + 8 * v4) = a2;
      *(this + 32) = v4 + 1;
    }
  }

  else
  {
    v6 = *(this + 24);
    v7 = *(v6 + 8 * v5);
    v8 = v7;
    *(v7 + 80) = v4;
    if ((*(this + 36) & 0x7FFFFFFFu) <= v4)
    {
      this = physx::shdfnd::Array<physx::Sc::ShapeInteraction *,physx::shdfnd::ReflectionAllocator<physx::Sc::ShapeInteraction *>>::growAndPushBack(this + 24, &v8);
      v5 = *(v3 + 40);
    }

    else
    {
      *(v6 + 8 * v4) = v7;
      *(this + 32) = v4 + 1;
    }

    v4 = v5;
    *(a2 + 20) = v5;
    *(*(v3 + 24) + 8 * v5) = a2;
  }

  *(v3 + 40) = v4 + 1;
  return this;
}

uint64_t physx::Sc::NPhaseCore::addToPersistentContactEventPairsDelayed(uint64_t this, physx::Sc::ShapeInteraction *a2)
{
  v4 = a2;
  *(a2 + 16) |= 0x200000u;
  v2 = *(this + 32);
  v3 = *(this + 36);
  *(a2 + 20) = v2;
  if ((v3 & 0x7FFFFFFFu) <= v2)
  {
    return physx::shdfnd::Array<physx::Sc::ShapeInteraction *,physx::shdfnd::ReflectionAllocator<physx::Sc::ShapeInteraction *>>::growAndPushBack(this + 24, &v4);
  }

  *(*(this + 24) + 8 * v2) = a2;
  *(this + 32) = v2 + 1;
  return this;
}

uint64_t physx::Sc::NPhaseCore::reserveContactReportPairData(physx::Sc::NPhaseCore *this, int a2, int a3, unsigned int *a4, physx::Sc::ContactReportAllocationManager *a5)
{
  v6 = (a3 + 16 * ((a3 & 0xF) != 0)) & 0xFFFFFFF0;
  if (a5)
  {
    v7 = v6 + (a2 << 6);

    return physx::Sc::ContactReportAllocationManager::allocate(a5, v7, a4, 16);
  }

  else
  {
    v10 = v6 + (a2 << 6);
    v11 = *(this + 18);
    v12 = (v11 + 15) & 0xFFFFFFF0;
    *a4 = v12;
    v13 = *(this + 19);
    if (v12 + v10 <= v13)
    {
      v14 = *(this + 8);
      v15 = (v11 + 15) & 0xFFFFFFF0;
    }

    else
    {
      if (*(this + 88))
      {
        return 0;
      }

      LODWORD(v16) = *(this + 19);
      do
      {
        v17 = v16;
        v16 = (2 * v16);
        *(this + 19) = v16;
      }

      while (*a4 + v10 > 2 * v17);
      if (v16)
      {
        v14 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v16, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/simulationcontroller/src/ScContactReportBuffer.h", 169);
      }

      else
      {
        v14 = 0;
      }

      memcpy(v14, *(this + 8), v13);
      if (*(this + 8))
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
      }

      *(this + 8) = v14;
      v15 = *a4;
    }

    result = v14 + v15;
    *(this + 21) = v15;
    *(this + 18) += v10 - v11 + v12;
  }

  return result;
}

uint64_t physx::Sc::ContactReportAllocationManager::allocate(physx::Sc::ContactReportAllocationManager *this, unsigned int a2, unsigned int *a3, int a4)
{
  v7 = a4 - 1;
  v8 = -a4;
  v9 = ((*(this + 3) + a4 - 1) & -a4) - *(this + 3) + *(this + 4);
  if (v9 + a2 <= *(this + 2))
  {
    goto LABEL_24;
  }

  if (a2 <= *(this + 10))
  {
    v10 = *(this + 10);
  }

  else
  {
    v10 = a2;
  }

  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_lock(**(this + 4));
  }

  v11 = *(this + 3);
  v12 = *(v11 + 2);
  v13 = (v12 + v7) & v8;
  *(this + 3) = v13;
  v14 = *(v11 + 3);
  if (v13 + v10 <= v14)
  {
    v16 = *v11;
    v17 = v13;
LABEL_20:
    v15 = &v16[v17];
    *(v11 + 5) = v17;
    *(v11 + 2) += v10 - v12 + v13;
    goto LABEL_21;
  }

  if ((v11[3] & 1) == 0)
  {
    LODWORD(v18) = *(v11 + 3);
    do
    {
      v19 = v18;
      v18 = (2 * v18);
      *(v11 + 3) = v18;
    }

    while (*(this + 3) + v10 > 2 * v19);
    if (v18)
    {
      v16 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v18, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/simulationcontroller/src/ScContactReportBuffer.h", 169);
    }

    else
    {
      v16 = 0;
    }

    memcpy(v16, *v11, v14);
    if (*v11)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }

    *v11 = v16;
    v17 = *(this + 3);
    goto LABEL_20;
  }

  v15 = 0;
LABEL_21:
  *this = v15;
  *(this + 4) = 0;
  *(this + 2) = v10;
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (v9 = 0, (physx::shdfnd::g_isLockingEnabled))
  {
    pthread_mutex_unlock(**(this + 4));
    v9 = 0;
  }

LABEL_24:
  result = *this + v9;
  *a3 = *(this + 3) + v9;
  *(this + 4) = v9 + a2;
  return result;
}

char *physx::Sc::NPhaseCore::resizeContactReportPairData(uint64_t a1, unsigned int a2, int a3, unsigned int *a4)
{
  v7 = *(a1 + 64);
  v8 = *a4;
  _X8 = &v7[v8];
  __asm { PRFM            #0, [X8] }

  v15 = a3 + 16 * ((a3 & 0xF) != 0);
  v16 = v15 & 0xFFFFFFF0;
  v17 = v16 + (a2 << 6);
  if (*(a1 + 84) != v8)
  {
    LODWORD(v8) = *(a1 + 72);
    v20 = *(a1 + 76);
    v18 = (v8 + 15) & 0xFFFFFFF0;
    v19 = v18 + v17;
    if (v18 + v17 > v20)
    {
      if ((*(a1 + 88) & 1) == 0)
      {
        v21 = *(a1 + 76);
        do
        {
          v22 = v19 > 2 * v21;
          v21 *= 2;
        }

        while (v22);
        goto LABEL_11;
      }

      return 0;
    }

LABEL_14:
    v23 = v8;
    goto LABEL_15;
  }

  *(a1 + 72) = v8;
  v18 = (v8 + 15) & 0xFFFFFFF0;
  v19 = v18 + v17;
  v20 = *(a1 + 76);
  if (v18 + v17 <= v20)
  {
    goto LABEL_14;
  }

  if (*(a1 + 88))
  {
    return 0;
  }

  v21 = *(a1 + 76);
  do
  {
    v22 = v19 > 2 * v21;
    v21 *= 2;
  }

  while (v22);
LABEL_11:
  *(a1 + 76) = v21;
  v7 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))();
  memcpy(v7, *(a1 + 64), v20);
  if (*(a1 + 64))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *(a1 + 64) = v7;
  v23 = *(a1 + 72);
LABEL_15:
  *(a1 + 84) = v18;
  *(a1 + 72) = v19 - v8 + v23;
  if (!v7)
  {
    return 0;
  }

  v24 = &v7[v18];
  v25 = *a4;
  v26 = &v7[v25];
  v27 = (*(a4 + 5) >> 1) & 0x7FF0;
  if (v25 == v18)
  {
    if (v16 > v27)
    {
      memmove(&v24[v16], &v26[(*(a4 + 5) >> 1) & 0x7FF0], *(a4 + 3) << 6);
    }
  }

  else
  {
    if (v16 <= v27)
    {
      v28 = v27 + (*(a4 + 3) << 6);
      v29 = v24;
      v30 = v26;
    }

    else
    {
      memcpy(v24, v26, *(a4 + 4));
      v28 = *(a4 + 3) << 6;
      v29 = &v24[v16];
      v30 = &v26[v27];
    }

    memcpy(v29, v30, v28);
    *a4 = v18;
  }

  if (*(a4 + 2) < a2)
  {
    *(a4 + 2) = a2;
  }

  if (v16 > v27)
  {
    *(a4 + 5) = (2 * v15) & 0xFFE0 | *(a4 + 5) & 0x1F;
  }

  return v24;
}

pthread_mutex_t *physx::Sc::NPhaseCore::createActorPairContactReportData(pthread_mutex_t **this)
{
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_lock(this[471]);
  }

  v2 = this[374];
  if (!v2)
  {
    physx::shdfnd::PoolBase<physx::Sc::ActorPairContactReportData,physx::shdfnd::ReflectionAllocator<physx::Sc::ActorPairContactReportData>>::allocateSlab((this + 304));
    v2 = this[374];
  }

  this[374] = v2->__sig;
  ++*(this + 745);
  WORD2(v2->__sig) = 0;
  *&v2->__opaque[2] = 0;
  *&v2->__opaque[4] = -1;
  *&v2->__opaque[12] = -1;
  *&v2->__opaque[16] = 0;
  *&v2->__opaque[24] = 0;
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_unlock(this[471]);
  }

  return v2;
}

uint64_t physx::shdfnd::internal::HashBase<physx::Sc::BodySim const*,physx::Sc::BodySim const*,physx::shdfnd::Hash<physx::Sc::BodySim const*>,physx::shdfnd::internal::HashSetBase<physx::Sc::BodySim const*,physx::shdfnd::Hash<physx::Sc::BodySim const*>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::create(int32x2_t *a1, void *a2, _BYTE *a3)
{
  v5 = a1[4].u32[1];
  if (!v5)
  {
    v9 = 0;
    goto LABEL_8;
  }

  v6 = ~(*a2 << 32) + *a2;
  v7 = 9 * (((v6 ^ (v6 >> 22)) + ~((v6 ^ (v6 >> 22)) << 13)) ^ (((v6 ^ (v6 >> 22)) + ~((v6 ^ (v6 >> 22)) << 13)) >> 8));
  v8 = (v7 ^ (v7 >> 15)) + ~((v7 ^ (v7 >> 15)) << 27);
  v9 = (v5 - 1) & ((v8 >> 31) ^ v8);
  v10 = *(*&a1[3] + 4 * v9);
  if (v10 == -1)
  {
LABEL_8:
    *a3 = 0;
    if (a1[6].i32[1] == a1[4].i32[0])
    {
      if (v5)
      {
        v12 = 2 * v5;
      }

      else
      {
        v12 = 16;
      }

      if (v5 < v12)
      {
        physx::shdfnd::internal::HashBase<physx::Sc::BodySim const*,physx::Sc::BodySim const*,physx::shdfnd::Hash<physx::Sc::BodySim const*>,physx::shdfnd::internal::HashSetBase<physx::Sc::BodySim const*,physx::shdfnd::Hash<physx::Sc::BodySim const*>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(a1, v12);
        v5 = a1[4].u32[1];
      }

      v13 = ~(*a2 << 32) + *a2;
      v14 = 9 * (((v13 ^ (v13 >> 22)) + ~((v13 ^ (v13 >> 22)) << 13)) ^ (((v13 ^ (v13 >> 22)) + ~((v13 ^ (v13 >> 22)) << 13)) >> 8));
      v15 = (v14 ^ (v14 >> 15)) + ~((v14 ^ (v14 >> 15)) << 27);
      v9 = (v5 - 1) & ((v15 >> 31) ^ v15);
    }

    v16 = a1[5].u32[1];
    a1[5].i32[1] = v16 + 1;
    v17 = a1[3];
    v18 = a1[1];
    *(*&a1[2] + 4 * v16) = *(*&v17 + 4 * v9);
    *(*&v17 + 4 * v9) = v16;
    a1[6] = vadd_s32(a1[6], 0x100000001);
    return *&v18 + 8 * v16;
  }

  v11 = a1[1];
  while (*(*&v11 + 8 * v10) != *a2)
  {
    v10 = *(*&a1[2] + 4 * v10);
    if (v10 == -1)
    {
      goto LABEL_8;
    }
  }

  result = *&v11 + 8 * v10;
  *a3 = 1;
  return result;
}

void *physx::shdfnd::internal::HashBase<physx::Sc::BodySim const*,physx::Sc::BodySim const*,physx::shdfnd::Hash<physx::Sc::BodySim const*>,physx::shdfnd::internal::HashSetBase<physx::Sc::BodySim const*,physx::shdfnd::Hash<physx::Sc::BodySim const*>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(uint64_t a1, unsigned int a2)
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
  if (v8 + 8 * v7)
  {
    v9 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v8 + 8 * v7, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsHashInternals.h", 372);
  }

  else
  {
    v9 = 0;
  }

  v10 = &v9[4 * v2];
  v11 = &v9[v8];
  result = memset(v9, 255, 4 * v2);
  if (*(a1 + 52))
  {
    v13 = 0;
    do
    {
      v14 = *(*(a1 + 8) + 8 * v13);
      v15 = (~(v14 << 32) + v14) ^ ((~(v14 << 32) + v14) >> 22);
      v16 = 9 * ((v15 + ~(v15 << 13)) ^ ((v15 + ~(v15 << 13)) >> 8));
      v17 = (v16 ^ (v16 >> 15)) + ~((v16 ^ (v16 >> 15)) << 27);
      LODWORD(v17) = (v2 - 1) & ((v17 >> 31) ^ v17);
      *&v10[4 * v13] = *&v9[4 * v17];
      *&v9[4 * v17] = v13;
      *&v11[8 * v13++] = v14;
    }

    while (v13 < *(a1 + 52));
  }

  if (*a1)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(a1 + 16) = v10;
  *(a1 + 24) = v9;
  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 32) = v7;
  *(a1 + 36) = v2;
  if (*(a1 + 44) == -1)
  {
    *(a1 + 44) = v6;
  }

  return result;
}

int32x2_t *physx::shdfnd::internal::HashSetBase<physx::Sc::BodySim const*,physx::shdfnd::Hash<physx::Sc::BodySim const*>,physx::shdfnd::NonTrackingAllocator,true>::erase(int32x2_t *result, uint64_t a2)
{
  if (result[6].i32[1])
  {
    v2 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
    v3 = 9 * ((v2 + ~(v2 << 13)) ^ ((v2 + ~(v2 << 13)) >> 8));
    v4 = (v3 ^ (v3 >> 15)) + ~((v3 ^ (v3 >> 15)) << 27);
    v5 = (*&result[3] + 4 * ((result[4].i32[1] - 1) & ((v4 >> 31) ^ v4)));
    v6 = *v5;
    if (v6 != -1)
    {
      v7 = result[1];
      v8 = result[2];
      if (*(*&v7 + 8 * v6) == a2)
      {
LABEL_7:
        *v5 = *(*&v8 + 4 * v6);
        v10 = vadd_s32(result[6], 0xFFFFFFFF00000001);
        result[6] = v10;
        if (v6 != v10.i32[1])
        {
          *(*&v7 + 8 * v6) = *(*&v7 + 8 * v10.u32[1]);
          v12 = result[1];
          v11 = result[2];
          *(*&v11 + 4 * v6) = *(*&v11 + 4 * v10.u32[1]);
          v13 = ~(*(*&v12 + 8 * v6) << 32) + *(*&v12 + 8 * v6);
          v14 = 9 * (((v13 ^ (v13 >> 22)) + ~((v13 ^ (v13 >> 22)) << 13)) ^ (((v13 ^ (v13 >> 22)) + ~((v13 ^ (v13 >> 22)) << 13)) >> 8));
          v15 = (v14 ^ (v14 >> 15)) + ~((v14 ^ (v14 >> 15)) << 27);
          v16 = (*&result[3] + 4 * ((result[4].i32[1] - 1) & ((v15 >> 31) ^ v15)));
          v17 = result[6].u32[1];
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

        --result[5].i32[1];
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

__n128 getFilterInfo_ShapeSim(int *a1, __n128 *a2, uint64_t a3, __n128 *a4)
{
  v4 = (8 * a4[4].n128_u8[0]) & 0x20;
  *a1 = v4;
  if (a3)
  {
    v5 = *(a3 + 80);
    v6 = *(v5 + 13);
    if ((v6 - 3) >= 0xFFFFFFFE)
    {
      if (v6 == 2)
      {
        v7 = v4 | 2;
      }

      else
      {
        v7 = v4 | (16 * (*(v5 + 44) & 1)) | 1;
      }

      *a1 = v7;
    }
  }

  result = a4[1];
  *a2 = result;
  return result;
}

uint64_t physx::shdfnd::Array<physx::Sc::ElementSimInteraction *,physx::shdfnd::ReflectionAllocator<physx::Sc::ElementSimInteraction *>>::growAndPushBack(uint64_t result, void *a2)
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
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Sc::ElementSimInteraction *>::getName() [T = physx::Sc::ElementSimInteraction *]";
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

BOOL filterJointedBodies(const physx::Sc::BodySim *a1, const physx::Sc::ActorSim *a2)
{
  if ((*(a1 + 90) & 0x100) == 0)
  {
    return 0;
  }

  v2 = *(a1 + 13);
  v3 = *(a2 + 13);
  v4 = v2 >= v3 ? *(a2 + 13) : *(a1 + 13);
  v5 = v2 <= v3 ? a2 : a1;
  if (!v4)
  {
    return 0;
  }

  if (v2 <= v3)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  v7 = *(v6 + 5);
  while (1)
  {
    v9 = *v7++;
    v8 = v9;
    if (*(v9 + 28) == 4 && (*v8 == v5 || v8[1] == v5))
    {
      break;
    }

    if (!--v4)
    {
      return 0;
    }
  }

  return (**(v8[4] + 11) & 8) == 0;
}

void physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::Sc::ElementInteractionMarker>>(uint64_t a1, int a2)
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
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::Sc::ElementInteractionMarker>>::grow(v33);
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
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::Sc::ElementInteractionMarker>>::grow(v33);
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

uint64_t physx::shdfnd::Array<void *,physx::shdfnd::ReflectionAllocator<physx::Sc::ElementInteractionMarker>>::growAndPushBack(uint64_t result, void *a2)
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
    result = physx::shdfnd::ReflectionAllocator<physx::Sc::ElementInteractionMarker>::allocate(result, 8 * v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
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

uint64_t physx::shdfnd::ReflectionAllocator<physx::Sc::ElementInteractionMarker>::allocate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v8 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Sc::ElementInteractionMarker>::getName() [T = physx::Sc::ElementInteractionMarker]";
  }

  else
  {
    v8 = "<allocation names disabled>";
  }

  v9 = *(*(v7 + 24) + 16);

  return v9(v7 + 24, a2, v8, a3, a4);
}

void *physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::Sc::ElementInteractionMarker>>::grow(uint64_t a1)
{
  v2 = 2 * *(a1 + 8);
  *(a1 + 8) = v2;
  v3 = physx::shdfnd::ReflectionAllocator<physx::Sc::ElementInteractionMarker>::allocate(a1, 4 * v2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsSortInternals.h", 155);
  result = memcpy(v3, *(a1 + 16), (4 * *(a1 + 4)));
  if (*(a1 + 24) == 1 && *(a1 + 16))
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *(a1 + 24) = 1;
  *(a1 + 16) = v3;
  return result;
}

void physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::Sc::ActorPairContactReportData>>(uint64_t a1, int a2)
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
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::Sc::ActorPairContactReportData>>::grow(v33);
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
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::Sc::ActorPairContactReportData>>::grow(v33);
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

uint64_t physx::shdfnd::Array<void *,physx::shdfnd::ReflectionAllocator<physx::Sc::ActorPairContactReportData>>::growAndPushBack(uint64_t result, void *a2)
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
    result = physx::shdfnd::ReflectionAllocator<physx::Sc::ActorPairContactReportData>::allocate(result, 8 * v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
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

uint64_t physx::shdfnd::ReflectionAllocator<physx::Sc::ActorPairContactReportData>::allocate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v8 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Sc::ActorPairContactReportData>::getName() [T = physx::Sc::ActorPairContactReportData]";
  }

  else
  {
    v8 = "<allocation names disabled>";
  }

  v9 = *(*(v7 + 24) + 16);

  return v9(v7 + 24, a2, v8, a3, a4);
}

void *physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::Sc::ActorPairContactReportData>>::grow(uint64_t a1)
{
  v2 = 2 * *(a1 + 8);
  *(a1 + 8) = v2;
  v3 = physx::shdfnd::ReflectionAllocator<physx::Sc::ActorPairContactReportData>::allocate(a1, 4 * v2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsSortInternals.h", 155);
  result = memcpy(v3, *(a1 + 16), (4 * *(a1 + 4)));
  if (*(a1 + 24) == 1 && *(a1 + 16))
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *(a1 + 24) = 1;
  *(a1 + 16) = v3;
  return result;
}

void physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::Sc::TriggerInteraction>>(uint64_t a1, int a2)
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
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::Sc::TriggerInteraction>>::grow(v33);
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
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::Sc::TriggerInteraction>>::grow(v33);
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

uint64_t physx::shdfnd::Array<void *,physx::shdfnd::ReflectionAllocator<physx::Sc::TriggerInteraction>>::growAndPushBack(uint64_t result, void *a2)
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
    result = physx::shdfnd::ReflectionAllocator<physx::Sc::TriggerInteraction>::allocate(result, 8 * v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
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

uint64_t physx::shdfnd::ReflectionAllocator<physx::Sc::TriggerInteraction>::allocate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v8 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Sc::TriggerInteraction>::getName() [T = physx::Sc::TriggerInteraction]";
  }

  else
  {
    v8 = "<allocation names disabled>";
  }

  v9 = *(*(v7 + 24) + 16);

  return v9(v7 + 24, a2, v8, a3, a4);
}

void *physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::Sc::TriggerInteraction>>::grow(uint64_t a1)
{
  v2 = 2 * *(a1 + 8);
  *(a1 + 8) = v2;
  v3 = physx::shdfnd::ReflectionAllocator<physx::Sc::TriggerInteraction>::allocate(a1, 4 * v2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsSortInternals.h", 155);
  result = memcpy(v3, *(a1 + 16), (4 * *(a1 + 4)));
  if (*(a1 + 24) == 1 && *(a1 + 16))
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *(a1 + 24) = 1;
  *(a1 + 16) = v3;
  return result;
}

void physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::Sc::ShapeInteraction>>(uint64_t a1, int a2)
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
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::Sc::ShapeInteraction>>::grow(v33);
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
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::Sc::ShapeInteraction>>::grow(v33);
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

uint64_t physx::shdfnd::Array<void *,physx::shdfnd::ReflectionAllocator<physx::Sc::ShapeInteraction>>::growAndPushBack(uint64_t result, void *a2)
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
    result = physx::shdfnd::ReflectionAllocator<physx::Sc::ShapeInteraction>::allocate(result, 8 * v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
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

uint64_t physx::shdfnd::ReflectionAllocator<physx::Sc::ShapeInteraction>::allocate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v8 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Sc::ShapeInteraction>::getName() [T = physx::Sc::ShapeInteraction]";
  }

  else
  {
    v8 = "<allocation names disabled>";
  }

  v9 = *(*(v7 + 24) + 16);

  return v9(v7 + 24, a2, v8, a3, a4);
}

void *physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::Sc::ShapeInteraction>>::grow(uint64_t a1)
{
  v2 = 2 * *(a1 + 8);
  *(a1 + 8) = v2;
  v3 = physx::shdfnd::ReflectionAllocator<physx::Sc::ShapeInteraction>::allocate(a1, 4 * v2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsSortInternals.h", 155);
  result = memcpy(v3, *(a1 + 16), (4 * *(a1 + 4)));
  if (*(a1 + 24) == 1 && *(a1 + 16))
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *(a1 + 24) = 1;
  *(a1 + 16) = v3;
  return result;
}

void physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::Sc::ActorPairReport>>(uint64_t a1, int a2)
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
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::Sc::ActorPairReport>>::grow(v33);
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
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::Sc::ActorPairReport>>::grow(v33);
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

uint64_t physx::shdfnd::Array<void *,physx::shdfnd::ReflectionAllocator<physx::Sc::ActorPairReport>>::growAndPushBack(uint64_t result, void *a2)
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
    result = physx::shdfnd::ReflectionAllocator<physx::Sc::ActorPairReport>::allocate(8 * v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
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

uint64_t physx::shdfnd::ReflectionAllocator<physx::Sc::ActorPairReport>::allocate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    v6 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Sc::ActorPairReport>::getName() [T = physx::Sc::ActorPairReport]";
    }

    else
    {
      v7 = "<allocation names disabled>";
    }

    v8 = *(*(v6 + 24) + 16);

    return v8(v6 + 24, v5, v7, a2, a3);
  }

  return result;
}

void *physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::Sc::ActorPairReport>>::grow(uint64_t a1)
{
  v2 = 2 * *(a1 + 8);
  *(a1 + 8) = v2;
  v3 = physx::shdfnd::ReflectionAllocator<physx::Sc::ActorPairReport>::allocate(4 * v2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsSortInternals.h", 155);
  result = memcpy(v3, *(a1 + 16), (4 * *(a1 + 4)));
  if (*(a1 + 24) == 1 && *(a1 + 16))
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *(a1 + 24) = 1;
  *(a1 + 16) = v3;
  return result;
}

void physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::Sc::ActorPair>>(uint64_t a1, int a2)
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
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::Sc::ActorPair>>::grow(v33);
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
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::Sc::ActorPair>>::grow(v33);
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

uint64_t physx::shdfnd::Array<void *,physx::shdfnd::ReflectionAllocator<physx::Sc::ActorPair>>::growAndPushBack(uint64_t result, void *a2)
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
    result = physx::shdfnd::ReflectionAllocator<physx::Sc::ActorPair>::allocate(8 * v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
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

uint64_t physx::shdfnd::ReflectionAllocator<physx::Sc::ActorPair>::allocate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    v6 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Sc::ActorPair>::getName() [T = physx::Sc::ActorPair]";
    }

    else
    {
      v7 = "<allocation names disabled>";
    }

    v8 = *(*(v6 + 24) + 16);

    return v8(v6 + 24, v5, v7, a2, a3);
  }

  return result;
}

void *physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::Sc::ActorPair>>::grow(uint64_t a1)
{
  v2 = 2 * *(a1 + 8);
  *(a1 + 8) = v2;
  v3 = physx::shdfnd::ReflectionAllocator<physx::Sc::ActorPair>::allocate(4 * v2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsSortInternals.h", 155);
  result = memcpy(v3, *(a1 + 16), (4 * *(a1 + 4)));
  if (*(a1 + 24) == 1 && *(a1 + 16))
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *(a1 + 24) = 1;
  *(a1 + 16) = v3;
  return result;
}

void physx::Sc::TriggerContactTask::~TriggerContactTask(physx::Sc::TriggerContactTask *this)
{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
}

{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
  JUMPOUT(0x1E6906520);
}

uint64_t physx::Sc::TriggerContactTask::runInternal(uint64_t this)
{
  v1 = this;
  v25 = *MEMORY[0x1E69E9840];
  memset(v24, 0, 140);
  for (i = 36; i != 2596; i += 40)
  {
    __src[i] = 0;
  }

  for (j = 0; j != 768; j += 12)
  {
    v4 = &v22[j];
    *(v4 + 4) = -1;
    *v4 = -1;
  }

  memset(v21, 0, sizeof(v21));
  if (*(this + 48))
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = *(*(v1 + 40) + 8 * v5);
      if (v8)
      {
        v9 = v8 - 8;
      }

      else
      {
        v9 = 0;
      }

      this = physx::Sc::findTriggerContacts(v9, 0, 0, &__src[40 * v6], &v22[12 * v6], v24);
      v10 = this;
      v11 = *(v9 + 76);
      if ((v11 & 0x20) != 0)
      {
        *(v9 + 76) = v11 & 0xFFDF;
        this = isOneActorActive(v9);
        v12 = *(v9 + 37);
        if (this)
        {
          *(v9 + 37) = v12 | 0x20;
        }

        else
        {
          *(v9 + 37) = v12 & 0xDF;
          *(v21 + v7++) = v9;
        }
      }

      v6 += v10;
      ++v5;
    }

    while (v5 < *(v1 + 48));
    if (v6)
    {
      v19 = 0;
      __dst = 0;
      v13 = *(v1 + 56);
      if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
      {
        pthread_mutex_lock(*v13);
      }

      physx::Sc::Scene::reserveTriggerReportBufferSpace(*(v1 + 80), v6, &__dst, &v19);
      memcpy(__dst, __src, (40 * v6));
      this = memcpy(v19, v22, (12 * v6));
      if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
      {
        this = pthread_mutex_unlock(*v13);
      }
    }

    if (v7)
    {
      this = memcpy((*(v1 + 64) + 8 * (atomic_fetch_add(*(v1 + 72), v7) + v7) - 8 * v7), v21, (8 * v7));
    }
  }

  v14 = 0;
  v15 = *(*(v1 + 80) + 4256) + 16;
  v16 = v24;
  do
  {
    for (k = 0; k != 28; k += 4)
    {
      v18 = *(v16 + k);
      if (v18)
      {
        atomic_fetch_add((v15 + k), v18);
      }
    }

    ++v14;
    v15 += 28;
    v16 = (v16 + 28);
  }

  while (v14 != 5);
  return this;
}

void physx::Cm::BitMapBase<physx::shdfnd::VirtualAllocator>::extend(uint64_t a1, int a2)
{
  v2 = (a2 + 31) >> 5;
  if (v2 > (*(a1 + 8) & 0x7FFFFFFFu))
  {
    v4 = (*(**(a1 + 16) + 16))(*(a1 + 16), 4 * v2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/CmBitMap.h", 438);
    v5 = v4;
    v6 = *(a1 + 8);
    if (*a1)
    {
      memcpy(v4, *a1, (4 * v6));
      v6 = *(a1 + 8);
      if ((v6 & 0x80000000) == 0)
      {
        if (*a1)
        {
          (*(**(a1 + 16) + 24))(*(a1 + 16));
          v6 = *(a1 + 8);
        }
      }
    }

    bzero(&v5[4 * (v6 & 0x7FFFFFFF)], 4 * (v2 - v6));
    *a1 = v5;
    *(a1 + 8) = v2;
  }
}

uint64_t physx::shdfnd::Array<physx::Dy::ArticulationLink,physx::shdfnd::ReflectionAllocator<physx::Dy::ArticulationLink>>::recreate(uint64_t result, unsigned int a2)
{
  v3 = result;
  if (a2)
  {
    result = physx::shdfnd::ReflectionAllocator<physx::Dy::ArticulationLink>::allocate(result, 40 * a2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
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
    v7 = v4 + 40 * v5;
    v8 = v4;
    do
    {
      v9 = *v6;
      v10 = v6[1];
      *(v8 + 32) = *(v6 + 4);
      *v8 = v9;
      *(v8 + 16) = v10;
      v8 += 40;
      v6 = (v6 + 40);
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

uint64_t physx::shdfnd::ReflectionAllocator<physx::Dy::ArticulationLink>::allocate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v8 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Dy::ArticulationLink>::getName() [T = physx::Dy::ArticulationLink]";
  }

  else
  {
    v8 = "<allocation names disabled>";
  }

  v9 = *(*(v7 + 24) + 16);

  return v9(v7 + 24, a2, v8, a3, a4);
}

uint64_t physx::shdfnd::Array<physx::Sc::ArticulationJointSim *,physx::shdfnd::ReflectionAllocator<physx::Sc::ArticulationJointSim *>>::recreate(uint64_t result, unsigned int a2)
{
  v3 = result;
  if (a2)
  {
    v4 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v5 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Sc::ArticulationJointSim *>::getName() [T = physx::Sc::ArticulationJointSim *]";
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

uint64_t physx::shdfnd::Array<physx::Sc::BodySim *,physx::shdfnd::ReflectionAllocator<physx::Sc::BodySim *>>::recreate(uint64_t result, unsigned int a2)
{
  v3 = result;
  if (a2)
  {
    result = physx::shdfnd::ReflectionAllocator<physx::Sc::BodySim *>::allocate(result, 8 * a2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
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

uint64_t physx::shdfnd::ReflectionAllocator<physx::Sc::BodySim *>::allocate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v8 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Sc::BodySim *>::getName() [T = physx::Sc::BodySim *]";
  }

  else
  {
    v8 = "<allocation names disabled>";
  }

  v9 = *(*(v7 + 24) + 16);

  return v9(v7 + 24, a2, v8, a3, a4);
}

uint64_t physx::shdfnd::Array<physx::Dy::ArticulationLoopConstraint,physx::shdfnd::ReflectionAllocator<physx::Dy::ArticulationLoopConstraint>>::growAndPushBack(uint64_t a1, _OWORD *a2)
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
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Dy::ArticulationLoopConstraint>::getName() [T = physx::Dy::ArticulationLoopConstraint]";
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

uint64_t physx::shdfnd::Array<physx::Sc::BodySim *,physx::shdfnd::ReflectionAllocator<physx::Sc::BodySim *>>::growAndPushBack(uint64_t a1, void *a2)
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
    v6 = physx::shdfnd::ReflectionAllocator<physx::Sc::BodySim *>::allocate(a1, 8 * v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 8);
  v8 = (v6 + 8 * v7);
  if (v7)
  {
    v9 = *a1;
    v10 = v6;
    do
    {
      v11 = *v9++;
      *v10++ = v11;
    }

    while (v10 < v8);
  }

  *v8 = *a2;
  if ((*(a1 + 12) & 0x80000000) == 0 && *a1)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    v7 = *(a1 + 8);
  }

  *a1 = v6;
  *(a1 + 8) = v7 + 1;
  *(a1 + 12) = v5;
  return v6 + 8 * v7;
}

uint64_t physx::shdfnd::Array<physx::Sc::ArticulationJointSim *,physx::shdfnd::ReflectionAllocator<physx::Sc::ArticulationJointSim *>>::growAndPushBack(uint64_t result, void *a2)
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
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Sc::ArticulationJointSim *>::getName() [T = physx::Sc::ArticulationJointSim *]";
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

uint64_t physx::shdfnd::PoolBase<physx::Sc::SimStateData,physx::shdfnd::ReflectionAllocator<physx::Sc::SimStateData>>::allocateSlab(uint64_t a1)
{
  result = physx::shdfnd::ReflectionAllocator<physx::Sc::SimStateData>::allocate(a1, *(a1 + 552), "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsPool.h", 180);
  v3 = result;
  v8 = result;
  v4 = *(a1 + 536);
  if ((*(a1 + 540) & 0x7FFFFFFFu) <= v4)
  {
    result = physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::Sc::SimStateData>>>::growAndPushBack(a1 + 8, &v8);
  }

  else
  {
    *(*(a1 + 528) + 8 * v4) = result;
    *(a1 + 536) = v4 + 1;
  }

  v5 = v3 + (*(a1 + 544) << 6) - 64;
  if (v5 >= v3)
  {
    v6 = *(a1 + 560);
    v7 = (v3 + (*(a1 + 544) << 6) - 64);
    do
    {
      *v7 = v6;
      v7 -= 8;
      v6 = v5;
      v5 = v7;
    }

    while (v7 >= v3);
    *(a1 + 560) = v7 + 8;
  }

  return result;
}

uint64_t physx::shdfnd::ReflectionAllocator<physx::Sc::SimStateData>::allocate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v8 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Sc::SimStateData>::getName() [T = physx::Sc::SimStateData]";
  }

  else
  {
    v8 = "<allocation names disabled>";
  }

  v9 = *(*(v7 + 24) + 16);

  return v9(v7 + 24, a2, v8, a3, a4);
}

uint64_t physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::Sc::SimStateData>>>::growAndPushBack(uint64_t a1, void *a2)
{
  v4 = *(a1 + 532);
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
    if (v6 > 0x200 || (*(a1 + 512) & 1) != 0)
    {
      v7 = physx::shdfnd::ReflectionAllocator<physx::Sc::SimStateData>::allocate(a1, v6, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    }

    else
    {
      *(a1 + 512) = 1;
      v7 = a1;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 528);
  v9 = (v7 + 8 * v8);
  if (v8)
  {
    v10 = *(a1 + 520);
    v11 = v7;
    do
    {
      v12 = *v10++;
      *v11++ = v12;
    }

    while (v11 < v9);
  }

  *v9 = *a2;
  if ((*(a1 + 532) & 0x80000000) == 0)
  {
    v13 = *(a1 + 520);
    if (v13 == a1)
    {
      *(a1 + 512) = 0;
    }

    else if (v13)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
      v8 = *(a1 + 528);
    }
  }

  *(a1 + 520) = v7;
  *(a1 + 532) = v5;
  *(a1 + 528) = v8 + 1;
  return v7 + 8 * v8;
}

uint64_t physx::Cm::DelegateTask<physx::Sc::NPhaseCore,&physx::Sc::NPhaseCore::mergeProcessedTriggerInteractions>::~DelegateTask(void *a1)
{
  *a1 = &unk_1F5D1C1B0;
  v1 = *(physx::shdfnd::Foundation::mInstance + 24);
  a1[2] = 0;
  return (*(v1 + 24))();
}

void *physx::shdfnd::internal::HashBase<physx::shdfnd::Pair<physx::Sc::BodyPairKey const,physx::Sc::ActorPair *>,physx::Sc::BodyPairKey,physx::shdfnd::Hash<physx::Sc::BodyPairKey>,physx::shdfnd::internal::HashMapBase<physx::Sc::BodyPairKey,physx::Sc::ActorPair *,physx::shdfnd::Hash<physx::Sc::BodyPairKey>,physx::shdfnd::NonTrackingAllocator>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(uint64_t a1, unsigned int a2)
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
    v13 = 0;
    v14 = &v9[v8 + 8];
    do
    {
      v15 = (*(a1 + 8) + v12);
      v16 = *v15 | (*(v15 + 1) << 16);
      v17 = 9 * ((v16 + ~(v16 << 15)) ^ ((v16 + ~(v16 << 15)) >> 10));
      v18 = (v17 ^ (v17 >> 6)) + ~((v17 ^ (v17 >> 6)) << 11);
      v19 = (v18 ^ HIWORD(v18)) & (v2 - 1);
      *&v10[4 * v13] = *&v9[4 * v19];
      *&v9[4 * v19] = v13;
      *(v14 - 1) = *v15;
      *v14 = *(v15 + 1);
      v14 += 16;
      ++v13;
      v12 += 16;
    }

    while (v13 < *(a1 + 52));
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

void *physx::shdfnd::internal::HashBase<physx::shdfnd::Pair<physx::Sc::ElementSimKey const,physx::Sc::ElementSimInteraction *>,physx::Sc::ElementSimKey,physx::shdfnd::Hash<physx::Sc::ElementSimKey>,physx::shdfnd::internal::HashMapBase<physx::Sc::ElementSimKey,physx::Sc::ElementSimInteraction *,physx::shdfnd::Hash<physx::Sc::ElementSimKey>,physx::shdfnd::NonTrackingAllocator>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(uint64_t a1, unsigned int a2)
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
  v9 = v8 + 24 * v7;
  if (v9)
  {
    v10 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v9, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsHashInternals.h", 372);
  }

  else
  {
    v10 = 0;
  }

  v11 = &v10[4 * v2];
  result = memset(v10, 255, 4 * v2);
  if (*(a1 + 52))
  {
    v13 = 0;
    v14 = 0;
    v15 = &v10[v8 + 16];
    do
    {
      v16 = *(a1 + 8) + v13;
      v17 = (*(v16 + 8) << 14) & 0xFFFF0000 | (*v16 >> 2);
      v18 = 9 * ((v17 + ~(v17 << 15)) ^ ((v17 + ~(v17 << 15)) >> 10));
      v19 = (v18 ^ (v18 >> 6)) + ~((v18 ^ (v18 >> 6)) << 11);
      v20 = (v19 ^ HIWORD(v19)) & (v2 - 1);
      *&v11[4 * v14] = *&v10[4 * v20];
      *&v10[4 * v20] = v14;
      *(v15 - 1) = *v16;
      *v15 = *(v16 + 16);
      v15 += 24;
      ++v14;
      v13 += 24;
    }

    while (v14 < *(a1 + 52));
  }

  if (*a1)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(a1 + 16) = v11;
  *(a1 + 24) = v10;
  *a1 = v10;
  *(a1 + 8) = &v10[v8];
  *(a1 + 32) = v7;
  *(a1 + 36) = v2;
  if (*(a1 + 44) == -1)
  {
    *(a1 + 44) = v6;
  }

  return result;
}

void *physx::shdfnd::internal::HashBase<physx::shdfnd::Pair<physx::Sc::ElementSimKey const,physx::Sc::ElementSimInteraction *>,physx::Sc::ElementSimKey,physx::shdfnd::Hash<physx::Sc::ElementSimKey>,physx::shdfnd::internal::HashMapBase<physx::Sc::ElementSimKey,physx::Sc::ElementSimInteraction *,physx::shdfnd::Hash<physx::Sc::ElementSimKey>,physx::shdfnd::NonTrackingAllocator>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::create(int32x2_t *a1, void *a2, _BYTE *a3)
{
  v5 = a1[4].u32[1];
  if (!v5)
  {
    v10 = 0;
    goto LABEL_10;
  }

  v6 = a2[1];
  v7 = (v6 << 14) & 0xFFFF0000 | (*a2 >> 2);
  v8 = 9 * ((v7 + ~(v7 << 15)) ^ ((v7 + ~(v7 << 15)) >> 10));
  v9 = (v8 ^ (v8 >> 6)) + ~((v8 ^ (v8 >> 6)) << 11);
  v10 = (v9 ^ HIWORD(v9)) & (v5 - 1);
  v11 = *(*&a1[3] + 4 * v10);
  if (v11 == -1)
  {
LABEL_10:
    *a3 = 0;
    if (a1[6].i32[1] == a1[4].i32[0])
    {
      if (v5)
      {
        v14 = 2 * v5;
      }

      else
      {
        v14 = 16;
      }

      if (v5 < v14)
      {
        physx::shdfnd::internal::HashBase<physx::shdfnd::Pair<physx::Sc::ElementSimKey const,physx::Sc::ElementSimInteraction *>,physx::Sc::ElementSimKey,physx::shdfnd::Hash<physx::Sc::ElementSimKey>,physx::shdfnd::internal::HashMapBase<physx::Sc::ElementSimKey,physx::Sc::ElementSimInteraction *,physx::shdfnd::Hash<physx::Sc::ElementSimKey>,physx::shdfnd::NonTrackingAllocator>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(a1, v14);
        v5 = a1[4].u32[1];
      }

      v15 = (*(a2 + 2) << 14) & 0xFFFF0000 | (*a2 >> 2);
      v16 = 9 * ((v15 + ~(v15 << 15)) ^ ((v15 + ~(v15 << 15)) >> 10));
      v10 = (((v16 ^ (v16 >> 6)) + ~((v16 ^ (v16 >> 6)) << 11)) ^ (((v16 ^ (v16 >> 6)) + ~((v16 ^ (v16 >> 6)) << 11)) >> 16)) & (v5 - 1);
    }

    v17 = a1[5].u32[1];
    a1[5].i32[1] = v17 + 1;
    v18 = a1[3];
    v19 = a1[1];
    *(*&a1[2] + 4 * v17) = *(*&v18 + 4 * v10);
    *(*&v18 + 4 * v10) = v17;
    a1[6] = vadd_s32(a1[6], 0x100000001);
    return (*&v19 + 24 * v17);
  }

  while (1)
  {
    result = (*&a1[1] + 24 * v11);
    if (*result == *a2 && result[1] == v6)
    {
      break;
    }

    v11 = *(*&a1[2] + 4 * v11);
    if (v11 == -1)
    {
      goto LABEL_10;
    }
  }

  *a3 = 1;
  return result;
}

uint64_t physx::shdfnd::PoolBase<physx::Sc::ShapeInteraction,physx::shdfnd::ReflectionAllocator<physx::Sc::ShapeInteraction>>::allocateSlab(uint64_t a1)
{
  result = physx::shdfnd::ReflectionAllocator<physx::Sc::ShapeInteraction>::allocate(a1, *(a1 + 552), "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsPool.h", 180);
  v3 = result;
  v8 = result;
  v4 = *(a1 + 536);
  if ((*(a1 + 540) & 0x7FFFFFFFu) <= v4)
  {
    result = physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::Sc::ShapeInteraction>>>::growAndPushBack(a1 + 8, &v8);
  }

  else
  {
    *(*(a1 + 528) + 8 * v4) = result;
    *(a1 + 536) = v4 + 1;
  }

  v5 = v3 + 104 * *(a1 + 544) - 104;
  if (v5 >= v3)
  {
    v6 = *(a1 + 560);
    v7 = (v3 + 104 * *(a1 + 544) - 104);
    do
    {
      *v7 = v6;
      v7 -= 13;
      v6 = v5;
      v5 = v7;
    }

    while (v7 >= v3);
    *(a1 + 560) = v7 + 13;
  }

  return result;
}

uint64_t physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::Sc::ShapeInteraction>>>::growAndPushBack(uint64_t a1, void *a2)
{
  v4 = *(a1 + 532);
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
    if (v6 > 0x200 || (*(a1 + 512) & 1) != 0)
    {
      v7 = physx::shdfnd::ReflectionAllocator<physx::Sc::ShapeInteraction>::allocate(a1, v6, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    }

    else
    {
      *(a1 + 512) = 1;
      v7 = a1;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 528);
  v9 = (v7 + 8 * v8);
  if (v8)
  {
    v10 = *(a1 + 520);
    v11 = v7;
    do
    {
      v12 = *v10++;
      *v11++ = v12;
    }

    while (v11 < v9);
  }

  *v9 = *a2;
  if ((*(a1 + 532) & 0x80000000) == 0)
  {
    v13 = *(a1 + 520);
    if (v13 == a1)
    {
      *(a1 + 512) = 0;
    }

    else if (v13)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
      v8 = *(a1 + 528);
    }
  }

  *(a1 + 520) = v7;
  *(a1 + 532) = v5;
  *(a1 + 528) = v8 + 1;
  return v7 + 8 * v8;
}

uint64_t physx::shdfnd::PoolBase<physx::Sc::TriggerInteraction,physx::shdfnd::ReflectionAllocator<physx::Sc::TriggerInteraction>>::allocateSlab(uint64_t a1)
{
  result = physx::shdfnd::ReflectionAllocator<physx::Sc::TriggerInteraction>::allocate(a1, *(a1 + 552), "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsPool.h", 180);
  v3 = result;
  v8 = result;
  v4 = *(a1 + 536);
  if ((*(a1 + 540) & 0x7FFFFFFFu) <= v4)
  {
    result = physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::Sc::TriggerInteraction>>>::growAndPushBack(a1 + 8, &v8);
  }

  else
  {
    *(*(a1 + 528) + 8 * v4) = result;
    *(a1 + 536) = v4 + 1;
  }

  v5 = v3 + 80 * *(a1 + 544) - 80;
  if (v5 >= v3)
  {
    v6 = *(a1 + 560);
    v7 = (v3 + 80 * *(a1 + 544) - 80);
    do
    {
      *v7 = v6;
      v7 -= 10;
      v6 = v5;
      v5 = v7;
    }

    while (v7 >= v3);
    *(a1 + 560) = v7 + 10;
  }

  return result;
}

uint64_t physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::Sc::TriggerInteraction>>>::growAndPushBack(uint64_t a1, void *a2)
{
  v4 = *(a1 + 532);
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
    if (v6 > 0x200 || (*(a1 + 512) & 1) != 0)
    {
      v7 = physx::shdfnd::ReflectionAllocator<physx::Sc::TriggerInteraction>::allocate(a1, v6, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    }

    else
    {
      *(a1 + 512) = 1;
      v7 = a1;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 528);
  v9 = (v7 + 8 * v8);
  if (v8)
  {
    v10 = *(a1 + 520);
    v11 = v7;
    do
    {
      v12 = *v10++;
      *v11++ = v12;
    }

    while (v11 < v9);
  }

  *v9 = *a2;
  if ((*(a1 + 532) & 0x80000000) == 0)
  {
    v13 = *(a1 + 520);
    if (v13 == a1)
    {
      *(a1 + 512) = 0;
    }

    else if (v13)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
      v8 = *(a1 + 528);
    }
  }

  *(a1 + 520) = v7;
  *(a1 + 532) = v5;
  *(a1 + 528) = v8 + 1;
  return v7 + 8 * v8;
}

uint64_t physx::shdfnd::PoolBase<physx::Sc::ElementInteractionMarker,physx::shdfnd::ReflectionAllocator<physx::Sc::ElementInteractionMarker>>::allocateSlab(uint64_t a1)
{
  result = physx::shdfnd::ReflectionAllocator<physx::Sc::ElementInteractionMarker>::allocate(a1, *(a1 + 552), "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsPool.h", 180);
  v3 = result;
  v8 = result;
  v4 = *(a1 + 536);
  if ((*(a1 + 540) & 0x7FFFFFFFu) <= v4)
  {
    result = physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::Sc::ElementInteractionMarker>>>::growAndPushBack(a1 + 8, &v8);
  }

  else
  {
    *(*(a1 + 528) + 8 * v4) = result;
    *(a1 + 536) = v4 + 1;
  }

  v5 = v3 + (*(a1 + 544) << 6) - 64;
  if (v5 >= v3)
  {
    v6 = *(a1 + 560);
    v7 = (v3 + (*(a1 + 544) << 6) - 64);
    do
    {
      *v7 = v6;
      v7 -= 8;
      v6 = v5;
      v5 = v7;
    }

    while (v7 >= v3);
    *(a1 + 560) = v7 + 8;
  }

  return result;
}

uint64_t physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::Sc::ElementInteractionMarker>>>::growAndPushBack(uint64_t a1, void *a2)
{
  v4 = *(a1 + 532);
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
    if (v6 > 0x200 || (*(a1 + 512) & 1) != 0)
    {
      v7 = physx::shdfnd::ReflectionAllocator<physx::Sc::ElementInteractionMarker>::allocate(a1, v6, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    }

    else
    {
      *(a1 + 512) = 1;
      v7 = a1;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 528);
  v9 = (v7 + 8 * v8);
  if (v8)
  {
    v10 = *(a1 + 520);
    v11 = v7;
    do
    {
      v12 = *v10++;
      *v11++ = v12;
    }

    while (v11 < v9);
  }

  *v9 = *a2;
  if ((*(a1 + 532) & 0x80000000) == 0)
  {
    v13 = *(a1 + 520);
    if (v13 == a1)
    {
      *(a1 + 512) = 0;
    }

    else if (v13)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
      v8 = *(a1 + 528);
    }
  }

  *(a1 + 520) = v7;
  *(a1 + 532) = v5;
  *(a1 + 528) = v8 + 1;
  return v7 + 8 * v8;
}

uint64_t physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::Sc::ActorPair>>>::growAndPushBack(uint64_t result, void *a2)
{
  v3 = result;
  v4 = *(result + 532);
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
    result = (8 * v5);
    if (result > 0x200 || (*(v3 + 512) & 1) != 0)
    {
      result = physx::shdfnd::ReflectionAllocator<physx::Sc::ActorPair>::allocate(result, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
      v6 = result;
    }

    else
    {
      *(v3 + 512) = 1;
      v6 = v3;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v3 + 528);
  v8 = &v6[v7];
  if (v7)
  {
    v9 = *(v3 + 520);
    v10 = v6;
    do
    {
      v11 = *v9++;
      *v10++ = v11;
    }

    while (v10 < v8);
  }

  *v8 = *a2;
  if ((*(v3 + 532) & 0x80000000) == 0)
  {
    v12 = *(v3 + 520);
    if (v12 == v3)
    {
      *(v3 + 512) = 0;
    }

    else if (v12)
    {
      result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
      LODWORD(v7) = *(v3 + 528);
    }
  }

  *(v3 + 520) = v6;
  *(v3 + 532) = v5;
  *(v3 + 528) = v7 + 1;
  return result;
}

uint64_t physx::shdfnd::PoolBase<physx::Sc::ActorPairReport,physx::shdfnd::ReflectionAllocator<physx::Sc::ActorPairReport>>::allocateSlab(uint64_t a1)
{
  result = physx::shdfnd::ReflectionAllocator<physx::Sc::ActorPairReport>::allocate(*(a1 + 552), "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsPool.h", 180);
  v3 = result;
  v8 = result;
  v4 = *(a1 + 536);
  if ((*(a1 + 540) & 0x7FFFFFFFu) <= v4)
  {
    result = physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::Sc::ActorPairReport>>>::growAndPushBack(a1 + 8, &v8);
  }

  else
  {
    *(*(a1 + 528) + 8 * v4) = result;
    *(a1 + 536) = v4 + 1;
  }

  v5 = v3 + 32 * *(a1 + 544) - 32;
  if (v5 >= v3)
  {
    v6 = *(a1 + 560);
    v7 = (v3 + 32 * *(a1 + 544) - 32);
    do
    {
      *v7 = v6;
      v7 -= 4;
      v6 = v5;
      v5 = v7;
    }

    while (v7 >= v3);
    *(a1 + 560) = v7 + 4;
  }

  return result;
}

uint64_t physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::Sc::ActorPairReport>>>::growAndPushBack(uint64_t result, void *a2)
{
  v3 = result;
  v4 = *(result + 532);
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
    result = (8 * v5);
    if (result > 0x200 || (*(v3 + 512) & 1) != 0)
    {
      result = physx::shdfnd::ReflectionAllocator<physx::Sc::ActorPairReport>::allocate(result, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
      v6 = result;
    }

    else
    {
      *(v3 + 512) = 1;
      v6 = v3;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v3 + 528);
  v8 = &v6[v7];
  if (v7)
  {
    v9 = *(v3 + 520);
    v10 = v6;
    do
    {
      v11 = *v9++;
      *v10++ = v11;
    }

    while (v10 < v8);
  }

  *v8 = *a2;
  if ((*(v3 + 532) & 0x80000000) == 0)
  {
    v12 = *(v3 + 520);
    if (v12 == v3)
    {
      *(v3 + 512) = 0;
    }

    else if (v12)
    {
      result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
      LODWORD(v7) = *(v3 + 528);
    }
  }

  *(v3 + 520) = v6;
  *(v3 + 532) = v5;
  *(v3 + 528) = v7 + 1;
  return result;
}

void *physx::shdfnd::internal::HashBase<physx::Sc::Interaction *,physx::Sc::Interaction *,physx::shdfnd::Hash<physx::Sc::Interaction *>,physx::shdfnd::internal::HashSetBase<physx::Sc::Interaction *,physx::shdfnd::Hash<physx::Sc::Interaction *>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::clear(void *result)
{
  v1 = *(result + 9);
  if (v1)
  {
    v2 = result;
    if (*(result + 13))
    {
      result = memset(*(result + 3), 255, (4 * v1));
      v3 = v2[2];
      v4 = (*(v2 + 8) - 1);
      if (*(v2 + 8) == 1)
      {
        v12 = 0;
      }

      else
      {
        _X10 = v3 + 128;
        v6 = 1;
        do
        {
          __asm { PRFM            #0, [X10] }

          *(_X10 - 128) = v6++;
          _X10 += 4;
          --v4;
        }

        while (v4);
        v12 = (*(v2 + 8) - 1);
      }

      *(v3 + 4 * v12) = -1;
      *(v2 + 11) = 0;
      *(v2 + 13) = 0;
    }
  }

  return result;
}

uint64_t physx::shdfnd::Array<physx::PxTriggerPair,physx::shdfnd::ReflectionAllocator<physx::PxTriggerPair>>::growAndPushBack(uint64_t result, __int128 *a2)
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
    result = physx::shdfnd::ReflectionAllocator<physx::PxTriggerPair>::allocate(result, 40 * v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v6 = result;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v3 + 8);
  if (v7)
  {
    v8 = v6 + 40 * v7;
    v9 = *v3;
    v10 = v6;
    do
    {
      v11 = *v9;
      v12 = v9[1];
      *(v10 + 32) = *(v9 + 8);
      *v10 = v11;
      *(v10 + 16) = v12;
      *(v10 + 36) = *(v9 + 36);
      v10 += 40;
      v9 = (v9 + 40);
    }

    while (v10 < v8);
    v13 = *(v3 + 8);
  }

  else
  {
    v13 = 0;
  }

  v14 = v6 + 40 * v13;
  v15 = *a2;
  v16 = a2[1];
  *(v14 + 32) = *(a2 + 8);
  *v14 = v15;
  *(v14 + 16) = v16;
  *(v14 + 36) = *(a2 + 36);
  if ((*(v3 + 12) & 0x80000000) == 0 && *v3)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *v3 = v6;
  ++*(v3 + 8);
  *(v3 + 12) = v5;
  return result;
}

uint64_t physx::shdfnd::ReflectionAllocator<physx::PxTriggerPair>::allocate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v8 = "static const char *physx::shdfnd::ReflectionAllocator<physx::PxTriggerPair>::getName() [T = physx::PxTriggerPair]";
  }

  else
  {
    v8 = "<allocation names disabled>";
  }

  v9 = *(*(v7 + 24) + 16);

  return v9(v7 + 24, a2, v8, a3, a4);
}

uint64_t physx::shdfnd::Array<physx::Sc::TriggerPairExtraData,physx::shdfnd::ReflectionAllocator<physx::Sc::TriggerPairExtraData>>::growAndPushBack(uint64_t result, uint64_t *a2)
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
    result = physx::shdfnd::ReflectionAllocator<physx::Sc::TriggerPairExtraData>::allocate(result, 12 * v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v6 = result;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v3 + 8);
  if (v7)
  {
    v8 = v6 + 12 * v7;
    v9 = *v3;
    v10 = v6;
    do
    {
      v11 = *v9;
      *(v10 + 8) = *(v9 + 2);
      *v10 = v11;
      v10 += 12;
      v9 = (v9 + 12);
    }

    while (v10 < v8);
    v12 = *(v3 + 8);
  }

  else
  {
    v12 = 0;
  }

  v13 = v6 + 12 * v12;
  v14 = *a2;
  *(v13 + 8) = *(a2 + 2);
  *v13 = v14;
  if ((*(v3 + 12) & 0x80000000) == 0 && *v3)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *v3 = v6;
  ++*(v3 + 8);
  *(v3 + 12) = v5;
  return result;
}

uint64_t physx::shdfnd::ReflectionAllocator<physx::Sc::TriggerPairExtraData>::allocate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v8 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Sc::TriggerPairExtraData>::getName() [T = physx::Sc::TriggerPairExtraData]";
  }

  else
  {
    v8 = "<allocation names disabled>";
  }

  v9 = *(*(v7 + 24) + 16);

  return v9(v7 + 24, a2, v8, a3, a4);
}

uint64_t physx::shdfnd::Array<physx::Sc::ActorPairReport *,physx::shdfnd::ReflectionAllocator<physx::Sc::ActorPairReport *>>::resize(uint64_t result, unsigned int a2, uint64_t *a3)
{
  v5 = result;
  if ((*(result + 12) & 0x7FFFFFFFu) < a2)
  {
    result = physx::shdfnd::Array<physx::Sc::ActorPairReport *,physx::shdfnd::ReflectionAllocator<physx::Sc::ActorPairReport *>>::recreate(result, a2);
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

uint64_t physx::shdfnd::Array<physx::Sc::ActorPairReport *,physx::shdfnd::ReflectionAllocator<physx::Sc::ActorPairReport *>>::recreate(uint64_t result, unsigned int a2)
{
  v3 = result;
  if (a2)
  {
    result = physx::shdfnd::ReflectionAllocator<physx::Sc::ActorPairReport *>::allocate(result, 8 * a2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
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

uint64_t physx::shdfnd::ReflectionAllocator<physx::Sc::ActorPairReport *>::allocate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v8 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Sc::ActorPairReport *>::getName() [T = physx::Sc::ActorPairReport *]";
  }

  else
  {
    v8 = "<allocation names disabled>";
  }

  v9 = *(*(v7 + 24) + 16);

  return v9(v7 + 24, a2, v8, a3, a4);
}

uint64_t physx::shdfnd::Array<physx::Sc::ShapeInteraction *,physx::shdfnd::ReflectionAllocator<physx::Sc::ShapeInteraction *>>::growAndPushBack(uint64_t a1, void *a2)
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
    v6 = physx::shdfnd::ReflectionAllocator<physx::Sc::ShapeInteraction *>::allocate(a1, 8 * v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 8);
  v8 = (v6 + 8 * v7);
  if (v7)
  {
    v9 = *a1;
    v10 = v6;
    do
    {
      v11 = *v9++;
      *v10++ = v11;
    }

    while (v10 < v8);
  }

  *v8 = *a2;
  if ((*(a1 + 12) & 0x80000000) == 0 && *a1)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    v7 = *(a1 + 8);
  }

  *a1 = v6;
  *(a1 + 8) = v7 + 1;
  *(a1 + 12) = v5;
  return v6 + 8 * v7;
}

uint64_t physx::shdfnd::ReflectionAllocator<physx::Sc::ShapeInteraction *>::allocate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v8 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Sc::ShapeInteraction *>::getName() [T = physx::Sc::ShapeInteraction *]";
  }

  else
  {
    v8 = "<allocation names disabled>";
  }

  v9 = *(*(v7 + 24) + 16);

  return v9(v7 + 24, a2, v8, a3, a4);
}

uint64_t physx::shdfnd::PoolBase<physx::Sc::ActorPairContactReportData,physx::shdfnd::ReflectionAllocator<physx::Sc::ActorPairContactReportData>>::allocateSlab(uint64_t a1)
{
  result = physx::shdfnd::ReflectionAllocator<physx::Sc::ActorPairContactReportData>::allocate(a1, *(a1 + 552), "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsPool.h", 180);
  v3 = result;
  v8 = result;
  v4 = *(a1 + 536);
  if ((*(a1 + 540) & 0x7FFFFFFFu) <= v4)
  {
    result = physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::Sc::ActorPairContactReportData>>>::growAndPushBack(a1 + 8, &v8);
  }

  else
  {
    *(*(a1 + 528) + 8 * v4) = result;
    *(a1 + 536) = v4 + 1;
  }

  v5 = v3 + 40 * *(a1 + 544) - 40;
  if (v5 >= v3)
  {
    v6 = *(a1 + 560);
    v7 = (v3 + 40 * *(a1 + 544) - 40);
    do
    {
      *v7 = v6;
      v7 -= 5;
      v6 = v5;
      v5 = v7;
    }

    while (v7 >= v3);
    *(a1 + 560) = v7 + 5;
  }

  return result;
}

uint64_t physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::Sc::ActorPairContactReportData>>>::growAndPushBack(uint64_t a1, void *a2)
{
  v4 = *(a1 + 532);
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
    if (v6 > 0x200 || (*(a1 + 512) & 1) != 0)
    {
      v7 = physx::shdfnd::ReflectionAllocator<physx::Sc::ActorPairContactReportData>::allocate(a1, v6, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    }

    else
    {
      *(a1 + 512) = 1;
      v7 = a1;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 528);
  v9 = (v7 + 8 * v8);
  if (v8)
  {
    v10 = *(a1 + 520);
    v11 = v7;
    do
    {
      v12 = *v10++;
      *v11++ = v12;
    }

    while (v11 < v9);
  }

  *v9 = *a2;
  if ((*(a1 + 532) & 0x80000000) == 0)
  {
    v13 = *(a1 + 520);
    if (v13 == a1)
    {
      *(a1 + 512) = 0;
    }

    else if (v13)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
      v8 = *(a1 + 528);
    }
  }

  *(a1 + 520) = v7;
  *(a1 + 532) = v5;
  *(a1 + 528) = v8 + 1;
  return v7 + 8 * v8;
}

int32x2_t *physx::Sc::ConstraintCore::setFlags(int32x2_t *result, __int16 *a2)
{
  v4 = result->u16[0];
  v5 = *a2;
  v6 = v4 & 0x400 | v5;
  *a2 = v4 & 0x400 | v5;
  if (v6 != v4)
  {
    result->i16[0] = v6;
    result = result[10];
    if (result)
    {
      v9 = v2;
      v10 = v3;
      v8 = v4;
      v7 = *a2;
      return physx::Sc::ConstraintSim::postFlagChange(result, &v8, &v7);
    }
  }

  return result;
}

int32x2_t *physx::Sc::ConstraintSim::postFlagChange(int32x2_t *result, _WORD *a2, __int16 *a3)
{
  v3 = *a3;
  result[1].i16[1] = *a3;
  v4 = *a2 & 6;
  v5 = v3 & 6;
  if (v5)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v8 = result[13];
    v9 = result[14];
    if (*&v8 && !*(*&v8 + 200) || *&v9 && !*(*&v9 + 200))
    {
      return physx::Sc::ConstraintProjectionManager::addToPendingGroupUpdates(*(*&result[10] + 2056), result);
    }

    else
    {
      v10 = *(*&result[10] + 2056);
      if (v8)
      {
        v11 = *(*&v8 + 200);
      }

      else
      {
        v11 = *(*&v9 + 200);
      }

      return physx::Sc::ConstraintGroupNode::markForProjectionTreeRebuild(v11, v10);
    }
  }

  else
  {
    if (v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = v4 == 0;
    }

    if (!v7)
    {
      if (result[15].i8[0])
      {
        return physx::Sc::ConstraintProjectionManager::removeFromPendingGroupUpdates(*(*&result[10] + 2056), result);
      }

      else
      {
        v12 = result[13];
        if (v12)
        {
          v13 = *(*&v12 + 200);
          if (v13)
          {
            return physx::Sc::ConstraintProjectionManager::invalidateGroup(*(*&result[10] + 2056), v13, 0);
          }
        }

        v14 = result[14];
        if (v14)
        {
          v13 = *(*&v14 + 200);
          if (v13)
          {
            return physx::Sc::ConstraintProjectionManager::invalidateGroup(*(*&result[10] + 2056), v13, 0);
          }
        }
      }
    }
  }

  return result;
}

uint64_t physx::Sc::ConstraintCore::getForce(uint64_t result, float32x2_t *a2, float32x2_t *a3)
{
  v3 = *(result + 80);
  if (v3)
  {
    v4 = *(v3 + 80);
    v5 = *(v4 + 1988);
    v6 = (*(*(v4 + 1888) + 232) + 32 * *(v3 + 72));
    v7 = v5 * v6[1].f32[0];
    *a2 = vmul_n_f32(*v6, v5);
    a2[1].f32[0] = v7;
    v8 = vmul_n_f32(v6[2], v5);
    v9 = v5 * v6[3].f32[0];
  }

  else
  {
    v8 = 0;
    *a2 = 0;
    a2[1].i32[0] = 0;
    v9 = 0.0;
  }

  *a3 = v8;
  a3[1].f32[0] = v9;
  return result;
}

physx::Sc::ConstraintInteraction *physx::Sc::ConstraintSim::postBodiesChange(physx::Sc::ConstraintSim *a1, uint64_t a2, uint64_t a3)
{
  if (a2 && *(a2 + 13))
  {
    v6 = *a2;
    if (!a3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = 0;
    if (!a3)
    {
      goto LABEL_8;
    }
  }

  if (*(a3 + 13))
  {
    v7 = *a3;
    goto LABEL_9;
  }

LABEL_8:
  v7 = 0;
LABEL_9:
  v8 = *(*(a1 + 10) + 2056);
  if ((**(a1 + 11) & 6) != 0)
  {
    if ((*(a1 + 120) & 1) == 0)
    {
      physx::Sc::ConstraintProjectionManager::addToPendingGroupUpdates(*(*(a1 + 10) + 2056), a1);
    }
  }

  else
  {
    if (v6)
    {
      v9 = *(v6 + 25);
      if (v9)
      {
        physx::Sc::ConstraintProjectionManager::invalidateGroup(*(*(a1 + 10) + 2056), v9, a1);
      }
    }

    if (v7)
    {
      v10 = *(v7 + 25);
      if (v10)
      {
        physx::Sc::ConstraintProjectionManager::invalidateGroup(v8, v10, a1);
      }
    }
  }

  v11 = v6 + 96;
  if (!v6)
  {
    v11 = 0;
  }

  v12 = v7 + 96;
  if (!v7)
  {
    v12 = 0;
  }

  *(a1 + 5) = v11;
  *(a1 + 6) = v12;
  if (v6)
  {
    v13 = *(v6 + 17);
  }

  else
  {
    v13 = 0;
  }

  *(a1 + 7) = v13;
  if (v7)
  {
    v14 = *(v7 + 17);
  }

  else
  {
    v14 = 0;
  }

  *(a1 + 8) = v14;
  *(a1 + 13) = v6;
  *(a1 + 14) = v7;
  v15 = *(a1 + 10);
  v16 = *(v15 + 4360);
  v17 = (v15 + 4304);
  if (a2)
  {
    v18 = a2;
  }

  else
  {
    v18 = v17;
  }

  v19 = *v18;
  if (a3)
  {
    v17 = a3;
  }

  v20 = *v17;
  v21 = *(v16 + 560);
  if (!v21)
  {
    physx::shdfnd::PoolBase<physx::Sc::ConstraintInteraction,physx::shdfnd::ReflectionAllocator<physx::Sc::ConstraintInteraction>>::allocateSlab(v16);
    v21 = *(v16 + 560);
  }

  *(v16 + 560) = *v21;
  ++*(v16 + 548);
  result = physx::Sc::ConstraintInteraction::ConstraintInteraction(v21, a1, v19, v20);
  *(a1 + 12) = result;
  return result;
}

uint64_t physx::Sc::ConstraintSim::setConstantsLL(void **this, void *a2)
{
  memcpy(this[4], a2, *(this + 4));
  v3 = this[13];
  if (!v3)
  {
    v3 = this[14];
  }

  v4 = *(**(v3[9] + 1904) + 96);

  return v4();
}

int32x2_t *physx::Sc::ConstraintSim::setBreakForceLL(int32x2_t *this, float a2, float a3)
{
  v5 = this;
  v6 = this[15].i8[0];
  v7 = fminf(a2, a3);
  if ((v6 & 2) != 2 * (v7 < 3.4028e38))
  {
    if (v7 < 3.4028e38)
    {
      this[15].i8[0] = v6 | 2;
      if ((*(*&this[12] + 29) & 0x20) != 0)
      {
        this = physx::Sc::Scene::addActiveBreakableConstraint(*&this[10], this);
      }
    }

    else
    {
      if ((this[15].i8[0] & 4) != 0)
      {
        this = physx::Sc::Scene::removeActiveBreakableConstraint(*&this[10], this);
        v6 = v5[15].i8[0];
      }

      v5[15].i8[0] = v6 & 0xFD;
    }
  }

  *v5->i32 = a2;
  *&v5->i32[1] = a3;
  return this;
}

void *physx::Sc::ConstraintSim::preBodiesChange(void *this)
{
  v1 = this;
  v2 = this[13];
  if (v2 && (v3 = *(v2 + 200)) != 0 || (v4 = this[14]) != 0 && (v3 = *(v4 + 200)) != 0)
  {
    this = physx::Sc::ConstraintProjectionManager::invalidateGroup(*(this[10] + 2056), v3, this);
  }

  if ((v1[15] & 8) == 0)
  {
    this = physx::Sc::ConstraintInteraction::destroy(v1[12]);
  }

  v5 = v1[12];
  if (v5)
  {
    v6 = *(v1[10] + 4360);
    --*(v6 + 548);
    *v5 = *(v6 + 560);
    *(v6 + 560) = v5;
  }

  v1[12] = 0;
  return this;
}

void *physx::Sc::ConstraintGroupNode::markForProjectionTreeRebuild(void *this, int32x2_t *a2)
{
  v2 = this[1];
  v3 = *(v2 + 8);
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v2 = v3;
      v3 = *(v3 + 8);
      --v4;
    }

    while (v2 != v3);
    if (v4)
    {
      do
      {
        v5 = this[1];
        this[1] = v2;
        this = v5;
      }

      while (!__CFADD__(v4++, 1));
    }
  }

  if ((*(v2 + 88) & 4) == 0)
  {
    return physx::Sc::ConstraintProjectionManager::addToPendingTreeUpdates(a2, v2);
  }

  return this;
}

void *physx::Sc::ConstraintProjectionManager::addToPendingTreeUpdates(int32x2_t *a1, uint64_t a2)
{
  v4 = a2;
  v5 = 0;
  result = physx::shdfnd::internal::HashBase<physx::Sc::ConstraintSim *,physx::Sc::ConstraintSim *,physx::shdfnd::Hash<physx::Sc::ConstraintSim *>,physx::shdfnd::internal::HashSetBase<physx::Sc::ConstraintSim *,physx::shdfnd::Hash<physx::Sc::ConstraintSim *>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::create(a1 + 79, &v4, &v5);
  if ((v5 & 1) == 0)
  {
    *result = v4;
  }

  *(a2 + 88) |= 4u;
  return result;
}

physx::Sc::ConstraintInteraction *physx::Sc::ConstraintInteraction::ConstraintInteraction(physx::Sc::ConstraintInteraction *this, physx::Sc::ConstraintSim *a2, physx::Sc::RigidSim *a3, physx::Sc::RigidSim *a4)
{
  *this = a3;
  *(this + 1) = a4;
  *(this + 2) = -1;
  *(this + 6) = -1;
  *(this + 14) = 516;
  *(this + 30) = 0;
  *(this + 4) = a2;
  physx::Sc::activateInteraction(this, 0, a3);
  physx::Sc::ActorSim::registerInteractionInActor(*this, this);
  physx::Sc::ActorSim::registerInteractionInActor(*(this + 1), this);
  v5 = *(this + 4);
  v7 = *(v5 + 104);
  v6 = *(v5 + 112);
  if (v7)
  {
    *(v7 + 180) |= 0x100u;
    ++*(*(v7 + 136) + 148);
  }

  if (v6)
  {
    *(v6 + 180) |= 0x100u;
    ++*(*(v6 + 136) + 148);
  }

  if (!v7)
  {
    v8 = 4294967168;
    if (v6)
    {
      goto LABEL_7;
    }

LABEL_9:
    v9 = -128;
    goto LABEL_10;
  }

  v8 = *(v7 + 176);
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_7:
  v9 = *(v6 + 176);
LABEL_10:
  *(this + 10) = physx::IG::SimpleIslandManager::addConstraint(*(*(*this + 72) + 1880), v5, v8, v9, this);
  return this;
}

uint64_t physx::Sc::ConstraintInteraction::destroy(physx::Sc::ConstraintInteraction *this)
{
  physx::Sc::Interaction::setClean(this, 1);
  v2 = *(*this + 72);
  v3 = *(this + 4);
  if ((~v3[120] & 6) == 0)
  {
    physx::Sc::Scene::removeActiveBreakableConstraint(*(*this + 72), v3);
  }

  v4 = *(this + 10);
  if (v4 != -1)
  {
    physx::IG::SimpleIslandManager::removeConnection(*(v2 + 1880), v4);
  }

  *(this + 10) = -1;
  physx::Sc::ActorSim::unregisterInteractionFromActor(*this, this);
  result = physx::Sc::ActorSim::unregisterInteractionFromActor(*(this + 1), this);
  v6 = *(this + 4);
  v8 = *(v6 + 104);
  v7 = *(v6 + 112);
  if (!v8)
  {
LABEL_9:
    if (!v7)
    {
      goto LABEL_17;
    }

    goto LABEL_12;
  }

  v9 = *(v8 + 52);
  v10 = *(v8 + 40);
  --*(*(v8 + 136) + 148);
  while (v9)
  {
    --v9;
    v11 = *v10++;
    if (*(v11 + 28) == 4)
    {
      goto LABEL_9;
    }
  }

  *(v8 + 180) &= ~0x100u;
  if (v7)
  {
LABEL_12:
    v12 = *(v7 + 52);
    v13 = *(v7 + 40);
    --*(*(v7 + 136) + 148);
    while (v12)
    {
      --v12;
      v14 = *v13++;
      if (*(v14 + 28) == 4)
      {
        goto LABEL_17;
      }
    }

    *(v7 + 180) &= ~0x100u;
  }

LABEL_17:
  *(this + 29) &= ~0x20u;
  return result;
}

uint64_t physx::Sc::ConstraintInteraction::onActivate_(physx::Sc::ConstraintInteraction *this, void *a2)
{
  v2 = *(this + 4);
  v4 = *(v2 + 104);
  v3 = *(v2 + 112);
  if (v4)
  {
    v5 = *(v4 + 184) < 0xFFFFFFFE;
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = 1;
    if (v3)
    {
LABEL_3:
      v6 = *(v3 + 184) < 0xFFFFFFFE;
      if (!v4)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  v6 = 1;
  if (v4)
  {
LABEL_4:
    LOBYTE(v4) = (*(*(v4 + 80) + 44) & 1) == 0;
  }

LABEL_5:
  if (v3)
  {
    LOBYTE(v3) = (*(*(v3 + 80) + 44) & 1) == 0;
  }

  v7 = (v5 || v6) & (v4 | v3);
  if (v7)
  {
    *(this + 29) |= 0x20u;
    if ((*(v2 + 120) & 6) == 2)
    {
      physx::Sc::Scene::addActiveBreakableConstraint(*(*this + 72), v2);
    }
  }

  return v7 & 1;
}

uint64_t physx::Sc::ConstraintInteraction::onDeactivate_(physx::Sc::ConstraintInteraction *this)
{
  v2 = *(this + 4);
  v4 = *(v2 + 104);
  v3 = *(v2 + 112);
  if (v4)
  {
    v5 = (*(*(v4 + 80) + 44) & 1) == 0;
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = 0;
    if (v3)
    {
LABEL_3:
      v6 = (*(*(v3 + 80) + 44) & 1) == 0;
      if (!v4)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  v6 = 0;
  if (!v4)
  {
LABEL_8:
    if (!v3 || *(v3 + 184) > 0xFFFFFFFD)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

LABEL_7:
  if (*(v4 + 184) >= 0xFFFFFFFE)
  {
    goto LABEL_8;
  }

LABEL_10:
  if (v5 || v6)
  {
    return 0;
  }

LABEL_12:
  if ((~*(v2 + 120) & 6) == 0)
  {
    physx::Sc::Scene::removeActiveBreakableConstraint(*(*this + 72), v2);
  }

  *(this + 29) &= ~0x20u;
  return 1;
}

physx::Sc::ConstraintProjectionManager *physx::Sc::ConstraintProjectionManager::ConstraintProjectionManager(physx::Sc::ConstraintProjectionManager *this)
{
  *(this + 68) = 0x4000000000;
  *(this + 528) = 1;
  *(this + 67) = this + 16;
  *(this + 69) = 32;
  *(this + 140) = 3072;
  *(this + 568) = 0u;
  *(this + 584) = 0u;
  *(this + 600) = 0u;
  *(this + 77) = -3233808384;
  *(this + 78) = 0;
  physx::shdfnd::internal::HashBase<physx::Sc::ConstraintSim *,physx::Sc::ConstraintSim *,physx::shdfnd::Hash<physx::Sc::ConstraintSim *>,physx::shdfnd::internal::HashSetBase<physx::Sc::ConstraintSim *,physx::shdfnd::Hash<physx::Sc::ConstraintSim *>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(this + 576, 0x40u);
  *(this + 83) = 0;
  *(this + 632) = 0u;
  *(this + 648) = 0u;
  *(this + 84) = -3233808384;
  *(this + 85) = 0;
  physx::shdfnd::internal::HashBase<physx::Sc::ConstraintSim *,physx::Sc::ConstraintSim *,physx::shdfnd::Hash<physx::Sc::ConstraintSim *>,physx::shdfnd::internal::HashSetBase<physx::Sc::ConstraintSim *,physx::shdfnd::Hash<physx::Sc::ConstraintSim *>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(this + 632, 0x40u);
  return this;
}

void *physx::Sc::ConstraintProjectionManager::addToPendingGroupUpdates(int32x2_t *this, physx::Sc::ConstraintSim *a2)
{
  v4 = a2;
  v5 = 0;
  result = physx::shdfnd::internal::HashBase<physx::Sc::ConstraintSim *,physx::Sc::ConstraintSim *,physx::shdfnd::Hash<physx::Sc::ConstraintSim *>,physx::shdfnd::internal::HashSetBase<physx::Sc::ConstraintSim *,physx::shdfnd::Hash<physx::Sc::ConstraintSim *>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::create(this + 72, &v4, &v5);
  if ((v5 & 1) == 0)
  {
    *result = v4;
  }

  *(a2 + 120) |= 1u;
  return result;
}

int32x2_t *physx::Sc::ConstraintProjectionManager::removeFromPendingGroupUpdates(int32x2_t *this, physx::Sc::ConstraintSim *a2)
{
  if (this[78].i32[1])
  {
    v2 = (a2 + ~(a2 << 32)) ^ ((a2 + ~(a2 << 32)) >> 22);
    v3 = 9 * ((v2 + ~(v2 << 13)) ^ ((v2 + ~(v2 << 13)) >> 8));
    v4 = (v3 ^ (v3 >> 15)) + ~((v3 ^ (v3 >> 15)) << 27);
    v5 = (*&this[75] + 4 * ((this[76].i32[1] - 1) & ((v4 >> 31) ^ v4)));
    v6 = *v5;
    if (v6 != -1)
    {
      v7 = this[73];
      v8 = this[74];
      if (*(*&v7 + 8 * v6) == a2)
      {
LABEL_7:
        *v5 = *(*&v8 + 4 * v6);
        v10 = vadd_s32(this[78], 0xFFFFFFFF00000001);
        this[78] = v10;
        if (v6 != v10.i32[1])
        {
          *(*&v7 + 8 * v6) = *(*&v7 + 8 * v10.u32[1]);
          v11 = this[74];
          *(*&v11 + 4 * v6) = *(*&v11 + 4 * v10.u32[1]);
          v12 = *(*&this[73] + 8 * v6);
          v13 = (~(v12 << 32) + v12) ^ ((~(v12 << 32) + v12) >> 22);
          v14 = 9 * ((v13 + ~(v13 << 13)) ^ ((v13 + ~(v13 << 13)) >> 8));
          v15 = (v14 ^ (v14 >> 15)) + ~((v14 ^ (v14 >> 15)) << 27);
          v16 = (*&this[75] + 4 * ((this[76].i32[1] - 1) & ((v15 >> 31) ^ v15)));
          v17 = this[78].u32[1];
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

        --this[77].i32[1];
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

  *(a2 + 120) &= ~1u;
  return this;
}

int32x2_t *physx::Sc::ConstraintProjectionManager::removeFromPendingTreeUpdates(int32x2_t *result, uint64_t a2)
{
  if (result[85].i32[1])
  {
    v2 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
    v3 = 9 * ((v2 + ~(v2 << 13)) ^ ((v2 + ~(v2 << 13)) >> 8));
    v4 = (v3 ^ (v3 >> 15)) + ~((v3 ^ (v3 >> 15)) << 27);
    v5 = (*&result[82] + 4 * ((result[83].i32[1] - 1) & ((v4 >> 31) ^ v4)));
    v6 = *v5;
    if (v6 != -1)
    {
      v7 = result[80];
      v8 = result[81];
      if (*(*&v7 + 8 * v6) == a2)
      {
LABEL_7:
        *v5 = *(*&v8 + 4 * v6);
        v10 = vadd_s32(result[85], 0xFFFFFFFF00000001);
        result[85] = v10;
        if (v6 != v10.i32[1])
        {
          *(*&v7 + 8 * v6) = *(*&v7 + 8 * v10.u32[1]);
          v11 = result[81];
          *(*&v11 + 4 * v6) = *(*&v11 + 4 * v10.u32[1]);
          v12 = *(*&result[80] + 8 * v6);
          v13 = (~(v12 << 32) + v12) ^ ((~(v12 << 32) + v12) >> 22);
          v14 = 9 * ((v13 + ~(v13 << 13)) ^ ((v13 + ~(v13 << 13)) >> 8));
          v15 = (v14 ^ (v14 >> 15)) + ~((v14 ^ (v14 >> 15)) << 27);
          v16 = (*&result[82] + 4 * ((result[83].i32[1] - 1) & ((v15 >> 31) ^ v15)));
          v17 = result[85].u32[1];
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

        --result[84].i32[1];
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

  *(a2 + 88) &= ~4u;
  return result;
}

uint64_t physx::Sc::ConstraintProjectionManager::addToGroup(uint64_t this, physx::Sc::BodySim *a2, physx::Sc::BodySim *a3, physx::Sc::ConstraintSim *a4)
{
  v5 = this;
  v6 = *(a2 + 25);
  if (v6)
  {
    v7 = *(v6 + 8);
    v8 = *(v7 + 8);
    if (v8 != v7)
    {
      v9 = 0;
      do
      {
        v7 = v8;
        v8 = *(v8 + 8);
        --v9;
      }

      while (v7 != v8);
      if (v9)
      {
        do
        {
          v10 = *(v6 + 8);
          *(v6 + 8) = v7;
          v6 = v10;
          v11 = __CFADD__(v9++, 1);
        }

        while (!v11);
      }
    }

    if (*(v7 + 40))
    {
      this = physx::Sc::ConstraintProjectionTree::purgeProjectionTrees(v7);
    }

    if (!a3)
    {
      return this;
    }

LABEL_15:
    v13 = *(a3 + 25);
    if (v13)
    {
      v14 = *(v13 + 8);
      v15 = *(v14 + 8);
      if (v15 != v14)
      {
        v16 = 0;
        do
        {
          v14 = v15;
          v15 = *(v15 + 8);
          --v16;
        }

        while (v14 != v15);
        if (v16)
        {
          do
          {
            v17 = *(v13 + 8);
            *(v13 + 8) = v14;
            v13 = v17;
            v11 = __CFADD__(v16++, 1);
          }

          while (!v11);
        }
      }

      if (*(v14 + 40))
      {
        this = physx::Sc::ConstraintProjectionTree::purgeProjectionTrees(v14);
      }
    }

    else
    {
      v14 = *(v5 + 568);
      if (!v14)
      {
        this = physx::shdfnd::PoolBase<physx::Sc::ConstraintGroupNode,physx::shdfnd::ReflectionAllocator<physx::Sc::ConstraintGroupNode>>::allocateSlab(v5 + 8);
        v14 = *(v5 + 568);
      }

      *(v5 + 568) = *v14;
      ++*(v5 + 556);
      *v14 = a3;
      *(v14 + 8) = v14;
      *(v14 + 16) = v14;
      *(v14 + 24) = 0;
      *(v14 + 73) = 0u;
      *(v14 + 48) = 0u;
      *(v14 + 64) = 0u;
      *(v14 + 32) = 0u;
      *(a3 + 25) = v14;
    }

    if (v7 != v14)
    {
      v18 = *(v14 + 24);
      if (*(v7 + 24) <= v18)
      {
        *(v14 + 24) = v18 + 1;
        v19 = v14;
      }

      else
      {
        v19 = v7;
        v7 = v14;
      }

      *(v7 + 8) = v19;
      *(*(v19 + 16) + 32) = v7;
      *(v19 + 16) = *(v7 + 16);
    }

    return this;
  }

  v7 = *(this + 568);
  if (!v7)
  {
    this = physx::shdfnd::PoolBase<physx::Sc::ConstraintGroupNode,physx::shdfnd::ReflectionAllocator<physx::Sc::ConstraintGroupNode>>::allocateSlab(this + 8);
    v7 = *(v5 + 568);
  }

  *(v5 + 568) = *v7;
  ++*(v5 + 556);
  *v7 = a2;
  *(v7 + 8) = v7;
  *(v7 + 16) = v7;
  *(v7 + 24) = 0;
  *(v7 + 73) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0u;
  *(v7 + 32) = 0u;
  *(a2 + 25) = v7;
  if (a3)
  {
    goto LABEL_15;
  }

  return this;
}

int32x2_t *physx::Sc::ConstraintProjectionManager::markConnectedConstraintsForUpdate(int32x2_t *this, physx::Sc::BodySim *a2, physx::Sc::ConstraintSim *a3)
{
  v3 = *(a2 + 13);
  if (v3)
  {
    v5 = this;
    v6 = *(a2 + 5);
    do
    {
      v8 = *v6++;
      v7 = v8;
      if (*(v8 + 28) == 4)
      {
        v9 = *(v7 + 32);
        if (v9 != a3 && (**(v9 + 88) & 6) != 0 && *(*(*(*(v9 + 80) + 1888) + 232) + 32 * *(v9 + 72) + 12) == 0 && (*(v9 + 120) & 1) == 0)
        {
          this = physx::Sc::ConstraintProjectionManager::addToPendingGroupUpdates(v5, v9);
        }
      }

      --v3;
    }

    while (v3);
  }

  return this;
}

uint64_t physx::Sc::ConstraintProjectionManager::processPendingUpdates(uint64_t this, physx::PxcScratchAllocator *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = this;
  v10 = *(this + 684);
  if (v10)
  {
    v11 = *(this + 640);
    do
    {
      v12 = *v11;
      *(v12 + 88) = *(*v11 + 88) & 0xFB;
      if (*(v12 + 40))
      {
        physx::Sc::ConstraintProjectionTree::purgeProjectionTrees(v12);
      }

      this = physx::Sc::ConstraintProjectionTree::buildProjectionTrees(v12, a2, a3, a4, a5, a6, a7, a8);
      ++v11;
      --v10;
    }

    while (v10);
    v13 = *(v9 + 668);
    if (v13 && *(v9 + 684))
    {
      this = memset(*(v9 + 656), 255, (4 * v13));
      v14 = *(v9 + 648);
      v15 = (*(v9 + 664) - 1);
      if (*(v9 + 664) == 1)
      {
        v23 = 0;
      }

      else
      {
        _X10 = v14 + 128;
        v17 = 1;
        do
        {
          __asm { PRFM            #0, [X10] }

          *(_X10 - 128) = v17++;
          _X10 += 4;
          --v15;
        }

        while (v15);
        v23 = (*(v9 + 664) - 1);
      }

      *(v14 + 4 * v23) = -1;
      *(v9 + 676) = 0;
      *(v9 + 684) = 0;
    }
  }

  v96 = *(v9 + 628);
  if (v96)
  {
    v24 = physx::PxcScratchAllocator::alloc(a2, 528, 1);
    v26 = v24;
    if (v24)
    {
      *v24 = 0;
      *(v24 + 8) = 0;
    }

    v27 = 0;
    v95 = *(v9 + 584);
    v28 = v24;
    while (1)
    {
      v29 = *(v95 + 8 * v27);
      *(v29 + 120) &= ~1u;
      v30 = *(v29 + 104);
      if (v30)
      {
        if (!*(v30 + 200))
        {
          v31 = *(v30 + 52);
          if (v31)
          {
            v32 = *(v30 + 40);
            do
            {
              v34 = *v32++;
              v33 = v34;
              if (*(v34 + 28) == 4)
              {
                v35 = *(v33 + 32);
                if (v35 != v29 && (*(v35 + 120) & 1) == 0 && v28)
                {
                  v36 = *(v28 + 8);
                  if (v36 > 0x3F)
                  {
                    v37 = physx::PxcScratchAllocator::alloc(a2, 528, 1);
                    if (v37)
                    {
                      *v37 = 0;
                      *(v37 + 16) = v35;
                      *v28 = v37;
                      v28 = v37;
                      *(v37 + 8) = 1;
                    }
                  }

                  else
                  {
                    *(v28 + 8 * v36 + 16) = v35;
                    *(v28 + 8) = v36 + 1;
                  }
                }
              }

              --v31;
            }

            while (v31);
          }
        }
      }

      v38 = *(v29 + 112);
      if (v38)
      {
        if (!*(v38 + 200))
        {
          v39 = *(v38 + 52);
          if (v39)
          {
            v40 = *(v38 + 40);
            do
            {
              v42 = *v40++;
              v41 = v42;
              if (*(v42 + 28) == 4)
              {
                v43 = *(v41 + 32);
                if (v43 != v29 && (*(v43 + 120) & 1) == 0 && v28)
                {
                  v44 = *(v28 + 8);
                  if (v44 > 0x3F)
                  {
                    v45 = physx::PxcScratchAllocator::alloc(a2, 528, 1);
                    if (v45)
                    {
                      *v45 = 0;
                      *(v45 + 16) = v43;
                      *v28 = v45;
                      v28 = v45;
                      *(v45 + 8) = 1;
                    }
                  }

                  else
                  {
                    *(v28 + 8 * v44 + 16) = v43;
                    *(v28 + 8) = v44 + 1;
                  }
                }
              }

              --v39;
            }

            while (v39);
            v38 = *(v29 + 112);
          }
        }

        v46 = *(v29 + 104);
        if (v46)
        {
          v47 = v38;
        }

        else
        {
          v47 = 0;
          if (v38)
          {
            goto LABEL_49;
          }
        }
      }

      else
      {
        v47 = 0;
        v46 = *(v29 + 104);
      }

      v38 = v46;
LABEL_49:
      physx::Sc::ConstraintProjectionManager::addToGroup(v9, v38, v47, v25);
      if (++v27 == v96)
      {
        v94 = v26;
        if (!v26)
        {
          goto LABEL_93;
        }

        v54 = v26;
        if (!v26[2])
        {
          v54 = *v26;
          if (!*v26)
          {
            goto LABEL_93;
          }
        }

        while (1)
        {
          v55 = (v54 + 4);
          for (i = 1; ; ++i)
          {
            v57 = *v55;
            *(v57 + 120) = *(*v55 + 120) & 0xFE;
            v58 = *(v57 + 104);
            if (v58)
            {
              if (!*(v58 + 200))
              {
                v59 = *(v58 + 52);
                if (v59)
                {
                  v60 = *(v58 + 40);
                  do
                  {
                    v62 = *v60++;
                    v61 = v62;
                    if (*(v62 + 28) == 4)
                    {
                      v63 = *(v61 + 32);
                      if (v63 != v57 && (*(v63 + 120) & 1) == 0 && v28)
                      {
                        v64 = *(v28 + 8);
                        if (v64 > 0x3F)
                        {
                          v65 = physx::PxcScratchAllocator::alloc(a2, 528, 1);
                          if (v65)
                          {
                            *v65 = 0;
                            *(v65 + 16) = v63;
                            *v28 = v65;
                            v28 = v65;
                            *(v65 + 8) = 1;
                          }
                        }

                        else
                        {
                          *(v28 + 8 * v64 + 16) = v63;
                          *(v28 + 8) = v64 + 1;
                        }
                      }
                    }

                    --v59;
                  }

                  while (v59);
                }
              }
            }

            v66 = *(v57 + 112);
            if (!v66)
            {
              v75 = 0;
              v74 = *(v57 + 104);
              goto LABEL_87;
            }

            if (!*(v66 + 200))
            {
              v67 = *(v66 + 52);
              if (v67)
              {
                v68 = *(v66 + 40);
                do
                {
                  v70 = *v68++;
                  v69 = v70;
                  if (*(v70 + 28) == 4)
                  {
                    v71 = *(v69 + 32);
                    if (v71 != v57 && (*(v71 + 120) & 1) == 0 && v28)
                    {
                      v72 = *(v28 + 8);
                      if (v72 > 0x3F)
                      {
                        v73 = physx::PxcScratchAllocator::alloc(a2, 528, 1);
                        if (v73)
                        {
                          *v73 = 0;
                          *(v73 + 16) = v71;
                          *v28 = v73;
                          v28 = v73;
                          *(v73 + 8) = 1;
                        }
                      }

                      else
                      {
                        *(v28 + 8 * v72 + 16) = v71;
                        *(v28 + 8) = v72 + 1;
                      }
                    }
                  }

                  --v67;
                }

                while (v67);
                v66 = *(v57 + 112);
              }
            }

            v74 = *(v57 + 104);
            if (v74)
            {
              v75 = v66;
LABEL_87:
              v66 = v74;
              goto LABEL_88;
            }

            v75 = 0;
            if (!v66)
            {
              goto LABEL_87;
            }

LABEL_88:
            physx::Sc::ConstraintProjectionManager::addToGroup(v9, v66, v75, v25);
            if (i >= v54[2])
            {
              break;
            }

            v55 = &v54[2 * i + 4];
          }

          v54 = *v54;
          if (!v54)
          {
LABEL_93:
            v76 = 0;
            v77 = v94;
            do
            {
              v78 = *(v95 + 8 * v76);
              v79 = *(v78 + 104);
              if (!v79)
              {
                v79 = *(v78 + 112);
              }

              v80 = *(v79 + 200);
              this = *(v80 + 8);
              v81 = *(this + 8);
              if (v81 != this)
              {
                v82 = 0;
                do
                {
                  this = v81;
                  v83 = v82;
                  v81 = *(v81 + 8);
                  ++v82;
                }

                while (this != v81);
                if (v82)
                {
                  v84 = ~v83;
                  do
                  {
                    v85 = *(v80 + 8);
                    *(v80 + 8) = this;
                    v80 = v85;
                  }

                  while (!__CFADD__(v84++, 1));
                }
              }

              if (!*(this + 40))
              {
                this = physx::Sc::ConstraintProjectionTree::buildProjectionTrees(this, v48, v49, v25, v50, v51, v52, v53);
              }

              ++v76;
            }

            while (v76 != v96);
            v86 = *(v9 + 612);
            if (v86 && *(v9 + 628))
            {
              this = memset(*(v9 + 600), 255, (4 * v86));
              v87 = *(v9 + 592);
              v88 = (*(v9 + 608) - 1);
              if (*(v9 + 608) == 1)
              {
                v92 = 0;
              }

              else
              {
                _X10 = v87 + 128;
                v90 = 1;
                do
                {
                  __asm { PRFM            #0, [X10] }

                  *(_X10 - 128) = v90++;
                  _X10 += 4;
                  --v88;
                }

                while (v88);
                v92 = (*(v9 + 608) - 1);
              }

              *(v87 + 4 * v92) = -1;
              *(v9 + 620) = 0;
              *(v9 + 628) = 0;
            }

            if (v94)
            {
              do
              {
                v93 = *v77;
                this = physx::PxcScratchAllocator::free(a2, v77);
                v77 = v93;
              }

              while (v93);
            }

            return this;
          }
        }
      }
    }
  }

  return this;
}

uint64_t physx::Sc::ConstraintProjectionManager::invalidateGroup(int32x2_t *this, uint64_t a2, physx::Sc::ConstraintSim *a3)
{
  v5 = *(a2 + 8);
  v6 = *(v5 + 8);
  if (v6 != v5)
  {
    v7 = 0;
    do
    {
      v5 = v6;
      v6 = *(v6 + 8);
      --v7;
    }

    while (v5 != v6);
    if (v7)
    {
      do
      {
        v8 = *(a2 + 8);
        *(a2 + 8) = v5;
        a2 = v8;
      }

      while (!__CFADD__(v7++, 1));
    }
  }

  if ((*(v5 + 88) & 4) != 0)
  {
    physx::Sc::ConstraintProjectionManager::removeFromPendingTreeUpdates(this, v5);
  }

  do
  {
    result = physx::Sc::ConstraintProjectionManager::markConnectedConstraintsForUpdate(this, *v5, a3);
    *(*v5 + 200) = 0;
    v11 = *(v5 + 32);
    if (*(v5 + 40))
    {
      result = physx::Sc::ConstraintProjectionTree::purgeProjectionTrees(v5);
    }

    --this[69].i32[1];
    *v5 = this[71];
    this[71] = v5;
    v5 = v11;
  }

  while (v11);
  return result;
}

uint64_t physx::Sc::ConstraintProjectionTree::buildProjectionTrees(uint64_t this, physx::Sc::ConstraintGroupNode *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = this;
  v9 = 0;
  v140 = *MEMORY[0x1E69E9840];
  v138 = 0x4000000000;
  v136[1536] = 1;
  v137 = v136;
  v10 = this;
  do
  {
    v11 = *v10;
    v12 = *(v10 + 88);
    if (*(*(*v10 + 80) + 44))
    {
      *(v10 + 88) = v12 | 1;
      goto LABEL_54;
    }

    *(v10 + 88) = v12 & 0xFE;
    LODWORD(v129) = 0;
    v128 = v10;
    v13 = *(v11 + 52);
    if (!v13)
    {
      goto LABEL_51;
    }

    v14 = 0;
    v15 = 0;
    v16 = *(v11 + 40);
    v17 = 402653184;
    do
    {
      v19 = *v16++;
      v18 = v19;
      if (*(v19 + 28) != 4)
      {
        goto LABEL_44;
      }

      v20 = *(v18 + 32);
      v21 = *(v20 + 120);
      v22 = **(v20 + 88);
      v23 = *(v20 + 104);
      if (v23 == v11)
      {
        v26 = (v21 & 8) == 0;
        if ((*(v20 + 120) & 8) != 0)
        {
          v25 = 0;
        }

        else
        {
          v25 = v22 & 2;
        }

        if (v26)
        {
          this = v22 & 4;
        }

        else
        {
          this = 0;
        }

        v23 = *(v20 + 112);
        if (!v23)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v24 = (v21 & 8) == 0;
        if ((*(v20 + 120) & 8) != 0)
        {
          v25 = 0;
        }

        else
        {
          v25 = v22 & 4;
        }

        LODWORD(this) = v22 & 2;
        if (v24)
        {
          this = this;
        }

        else
        {
          this = 0;
        }

        if (!v23)
        {
          goto LABEL_30;
        }
      }

      if ((*(*(v23 + 80) + 44) & 1) == 0)
      {
        if (v25)
        {
          v27 = this == 0;
        }

        else
        {
          v27 = 1;
        }

        if (!v27)
        {
          v17 &= ~0x10000000u;
          v15 &= ~0x10000000u;
          goto LABEL_42;
        }

        if (this)
        {
          v17 = 0;
          v15 &= 0xE7FFFFFF;
          goto LABEL_42;
        }

        if (v25)
        {
          v15 |= v17 & 0x18000000 | 0x80000000;
LABEL_42:
          ++v9;
        }

        ++v15;
        goto LABEL_44;
      }

LABEL_30:
      if (this)
      {
        v15 &= 0xE7FFFFFF;
        v17 = 0;
        ++v9;
        v28 = 0x80000000;
      }

      else
      {
        v28 = 0;
      }

      if (v23)
      {
        v29 = 0x20000000;
      }

      else
      {
        v29 = 0x40000000;
      }

      v30 = v28 | v29;
      if (v30 > v15 || v14 == 0)
      {
        v14 = v20;
      }

      v15 |= v30;
LABEL_44:
      --v13;
    }

    while (v13);
    LODWORD(v129) = v15;
    *(&v128 + 1) = v14;
    if (v15 >> 28 >= 9)
    {
      *(v10 + 88) = v12 | 1;
    }

LABEL_51:
    if ((HIDWORD(v138) & 0x7FFFFFFFu) <= v138)
    {
      this = physx::shdfnd::Array<physx::Sc::BodyRank,physx::shdfnd::InlineAllocator<1536u,physx::shdfnd::ReflectionAllocator<physx::Sc::BodyRank>>>::growAndPushBack(v136, &v128);
    }

    else
    {
      v32 = &v137[24 * v138];
      *v32 = v128;
      *(v32 + 2) = v129;
      LODWORD(v138) = v138 + 1;
    }

LABEL_54:
    v10 = *(v10 + 32);
  }

  while (v10);
  v33 = *(v8 + 88) & 7;
  v34 = v33 | 8;
  if (!v9)
  {
    v34 = *(v8 + 88) & 7;
  }

  if (v9 >= 5)
  {
    v34 = v33 | 0x10;
  }

  if (v9 >= 0x11)
  {
    v34 = v33 | 0x20;
  }

  v35 = v33 | 0x40;
  if (v9 < 0x41)
  {
    v35 = v34;
  }

  *(v8 + 88) = v35;
  if (v138)
  {
    v36 = v137;
    v135 = 0;
    v134 = v139;
    v131 = 0x2000000000;
    v132 = v139;
    v133 = 0;
    v37 = v138 - 1;
    if (v138 - 1 >= 1)
    {
      v38 = 0;
      v39 = v139;
      memset(v139, 0, 128);
      while (1)
      {
        if (v37 <= v38)
        {
          goto LABEL_96;
        }

        if ((v37 - v38) <= 4)
        {
          v77 = v38;
          v78 = v38 + 1;
          v79 = &v36[24 * v38 + 40];
          do
          {
            v80 = v77++;
            v81 = v79;
            v82 = v78;
            v83 = v80;
            v84 = v80;
            do
            {
              v85 = *v81;
              v81 += 6;
              if (v85 > *&v36[24 * v84 + 16])
              {
                v84 = v82;
              }

              ++v83;
              ++v82;
            }

            while (v83 < v37);
            if (v84 != v80)
            {
              v86 = &v36[24 * v84];
              v87 = &v36[24 * v80];
              v88 = *(v86 + 2);
              v89 = *v86;
              v90 = *(v87 + 2);
              *v86 = *v87;
              *(v86 + 2) = v90;
              *v87 = v89;
              *(v87 + 2) = v88;
            }

            ++v78;
            v79 += 24;
          }

          while (v77 != v37);
LABEL_96:
          v91 = v131;
          if (!v131)
          {
            if (v133)
            {
              if (v39)
              {
                (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
                if (v135)
                {
                  physx::shdfnd::TempAllocator::deallocate(&v134, v134);
                }
              }
            }

            break;
          }

          LODWORD(v131) = v131 - 1;
          v37 = *&v39[4 * (v91 - 1)];
          LODWORD(v131) = v91 - 2;
          v38 = *&v39[4 * (v91 - 2)];
        }

        else
        {
          v40 = &v36[24 * ((v38 + v37) / 2)];
          v41 = &v36[24 * v38];
          v42 = *(v41 + 4);
          if (*(v40 + 4) > v42)
          {
            v43 = *(v41 + 2);
            v44 = *v41;
            v45 = *(v40 + 2);
            *v41 = *v40;
            *(v41 + 2) = v45;
            *v40 = v44;
            *(v40 + 2) = v43;
            v42 = *(v41 + 4);
          }

          v46 = &v36[24 * v37];
          v47 = *(v46 + 4);
          if (v47 > v42)
          {
            v48 = *(v41 + 2);
            v49 = *v41;
            v50 = *(v46 + 2);
            *v41 = *v46;
            *(v41 + 2) = v50;
            *v46 = v49;
            *(v46 + 2) = v48;
            v47 = v48;
          }

          if (v47 > *(v40 + 4))
          {
            v51 = *(v40 + 2);
            v52 = *v40;
            v53 = *(v46 + 2);
            *v40 = *v46;
            *(v40 + 2) = v53;
            *v46 = v52;
            *(v46 + 2) = v51;
          }

          v54 = *(v40 + 2);
          v55 = *v40;
          v56 = *(v46 - 1);
          *v40 = *(v46 - 24);
          *(v40 + 2) = v56;
          *(v46 - 24) = v55;
          *(v46 - 1) = v54;
          v57 = v37 - 1;
          v58 = &v36[24 * v57];
          v59 = v38;
          while (1)
          {
            v60 = 0;
            v61 = *(v58 + 4);
            v62 = v59;
            v63 = &v36[24 * v59];
            do
            {
              v64 = *(v63 + 10);
              ++v60;
              v63 += 24;
            }

            while (v64 > v61);
            v65 = v57;
            v57 = &v36[24 * v57];
            do
            {
              --v65;
              v66 = *(v57 - 8);
              v57 -= 24;
            }

            while (v61 > v66);
            if (v62 + v60 >= v65)
            {
              break;
            }

            v67 = *(v63 + 2);
            v68 = *v63;
            v69 = *(v57 + 16);
            *v63 = *v57;
            *(v63 + 2) = v69;
            *v57 = v68;
            *(v57 + 16) = v67;
            v59 = v60 + v62;
            LODWORD(v57) = v65;
          }

          v70 = *(v63 + 2);
          v71 = *v63;
          v72 = *(v58 + 2);
          *v63 = *v58;
          *(v63 + 2) = v72;
          *v58 = v71;
          *(v58 + 2) = v70;
          v73 = v131;
          v74 = HIDWORD(v131) - 1;
          if (v62 - v38 + v60 >= v37 - v62 - v60)
          {
            if (v131 >= v74)
            {
              physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::Sc::BodyRank>>::grow(v130);
              v73 = v131;
              v39 = v132;
            }

            LODWORD(v131) = v73 + 1;
            *&v39[4 * v73] = v60 + v62 + 1;
            v76 = v131;
            LODWORD(v131) = v131 + 1;
            *&v39[4 * v76] = v37;
            v37 = v62 + v60 - 1;
          }

          else
          {
            if (v131 >= v74)
            {
              physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::Sc::BodyRank>>::grow(v130);
              v73 = v131;
              v39 = v132;
            }

            LODWORD(v131) = v73 + 1;
            *&v39[4 * v73] = v38;
            v75 = v131;
            LODWORD(v131) = v131 + 1;
            *&v39[4 * v75] = v62 - 1 + v60;
            v38 = v62 + v60 + 1;
          }
        }
      }
    }

    if (v138 && (v92 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 8 * v138, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/simulationcontroller/src/ScConstraintProjectionTree.cpp", 262)) != 0)
    {
      v93 = v92;
      v126 = v8;
      v127 = v92;
      v94 = 0;
      LODWORD(v95) = 0;
      v96 = 0;
      v97 = 1;
      v98 = -1879048192;
      v99 = v138;
      do
      {
        v100 = v97;
        if (v95 < v99)
        {
          v101 = v99;
          v102 = v95;
          v103 = 24 * v95;
          v104 = v93;
          while (1)
          {
            v105 = &v137[v103];
            v106 = *&v137[v103 + 16];
            if (v106 < v98)
            {
              break;
            }

            v108 = *v105;
            v107 = v105[1];
            *(*v105 + 80) = v107;
            if ((v106 & 0x60000000) != 0)
            {
              *v104++ = v108;
            }

            else
            {
              v104 += physx::Sc::ConstraintProjectionTree::projectionTreeBuildStep(v108, v107, v104);
            }

            v108[6] = v94;
            ++v102;
            v103 += 24;
            v94 = v108;
            if (v101 == v102)
            {
              LODWORD(v95) = v101;
              v94 = v108;
              goto LABEL_114;
            }
          }

          LODWORD(v95) = v102;
LABEL_114:
          v93 = v127;
          if (v127 != v104)
          {
            v109 = v127;
            do
            {
              v110 = *v109++;
              v104 += physx::Sc::ConstraintProjectionTree::projectionTreeBuildStep(v110, v110[10], v104);
            }

            while (v109 != v104);
          }
        }

        v95 = (v95 + v96);
        v111 = v138;
        if (v95 >= v138)
        {
          v96 = 0;
          v99 = v95;
        }

        else
        {
          v96 = 0;
          v112 = 24 * v95;
          v113 = v95;
          v99 = v95;
          do
          {
            v114 = v137;
            v115 = &v137[v112];
            if (*&v137[v112 + 16] >> 27 < 0x11u)
            {
              break;
            }

            if (*(*v115 + 88))
            {
              ++v96;
            }

            else
            {
              *(*v115 + 88) |= 1u;
              v116 = &v114[24 * v99];
              v117 = *v115;
              *(v116 + 2) = v115[2];
              *v116 = v117;
              ++v99;
              v111 = v138;
            }

            ++v113;
            v112 += 24;
          }

          while (v113 < v111);
        }

        v97 = 0;
        v98 = -2013265920;
      }

      while ((v100 & 1) != 0);
      if (v95 >= v111)
      {
        v120 = v94;
        v118 = v126;
      }

      else
      {
        v118 = v126;
        do
        {
          v119 = &v137[24 * v95];
          v120 = *v119;
          if (*(*v119 + 88))
          {
            v120 = v94;
          }

          else
          {
            *(v120 + 88) = *(*v119 + 88) | 1;
            v121 = physx::Sc::ConstraintProjectionTree::projectionTreeBuildStep(v120, v119[1], v93);
            if (v121)
            {
              v122 = v127;
              v123 = &v127[v121];
              do
              {
                v124 = *v122++;
                v123 += physx::Sc::ConstraintProjectionTree::projectionTreeBuildStep(v124, v124[10], v123);
              }

              while (v122 != v123);
            }

            *(v120 + 48) = v94;
            v111 = v138;
            v94 = v120;
            v93 = v127;
          }

          ++v95;
        }

        while (v95 < v111);
      }

      *(v118 + 40) = v120;
      this = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v93);
    }

    else
    {
      this = physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 16, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/simulationcontroller/src/ScConstraintProjectionTree.cpp", 405, "Allocating projection node queue failed!", a6, a7, a8, v125);
    }
  }

  if ((v138 & 0x8000000000000000) == 0 && (v138 & 0x7FFFFFFF00000000) != 0 && v137 != v136 && v137)
  {
    return (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  return this;
}

uint64_t physx::Sc::ConstraintProjectionTree::projectionTreeBuildStep(void *a1, uint64_t a2, void *a3)
{
  v3 = *a1;
  v4 = *(*a1 + 52);
  if (v4)
  {
    v5 = 0;
    v6 = *(v3 + 40);
    while (1)
    {
      v8 = *v6++;
      v7 = v8;
      if (*(v8 + 28) == 4)
      {
        v9 = *(v7 + 32);
        if (v9 != a2)
        {
          v10 = *(v9 + 120);
          v11 = **(v9 + 88);
          v12 = *(v9 + 104);
          if (v12 != v3)
          {
            v13 = (v10 & 8) == 0;
            if ((*(v9 + 120) & 8) != 0)
            {
              v14 = 0;
            }

            else
            {
              v14 = v11 & 4;
            }

            v15 = v11 & 2;
            if (!v13)
            {
              v15 = 0;
            }

            if (!v12)
            {
              goto LABEL_27;
            }

LABEL_20:
            if ((*(*(v12 + 80) + 44) & 1) == 0)
            {
              if (v15)
              {
                v17 = v14 == 0;
              }

              else
              {
                v17 = 0;
              }

              if (!v17)
              {
                v18 = *(v12 + 200);
                v19 = *(v18 + 88);
                if ((v19 & 1) == 0)
                {
                  *a3++ = v18;
                  *(v18 + 72) = a1[8];
                  *(v18 + 80) = v9;
                  a1[8] = v18;
                  *(v18 + 56) = a1;
                  *(v18 + 88) = v19 | 1;
                  v5 = (v5 + 1);
                }
              }
            }

            goto LABEL_27;
          }

          v16 = (v10 & 8) == 0;
          if ((*(v9 + 120) & 8) != 0)
          {
            v14 = 0;
          }

          else
          {
            v14 = v11 & 2;
          }

          if (v16)
          {
            v15 = v11 & 4;
          }

          else
          {
            v15 = 0;
          }

          v12 = *(v9 + 112);
          if (v12)
          {
            goto LABEL_20;
          }
        }
      }

LABEL_27:
      if (!--v4)
      {
        return v5;
      }
    }
  }

  return 0;
}

uint64_t physx::Sc::ConstraintProjectionTree::purgeProjectionTrees(uint64_t result)
{
  v1 = *(result + 40);
  do
  {
    v2 = v1;
    v1 = *(v1 + 48);
    do
    {
      v3 = *(v2 + 64);
      if (!v3)
      {
        v3 = *(v2 + 56);
        v4 = *(v2 + 72);
        if (v3)
        {
          *(v3 + 64) = 0;
        }

        *(v2 + 72) = 0uLL;
        *(v2 + 56) = 0uLL;
        *(v2 + 40) = 0uLL;
        if (v4)
        {
          v3 = v4;
        }
      }

      v2 = v3;
    }

    while (v3);
  }

  while (v1);
  *(result + 40) = 0;
  return result;
}

void physx::Sc::ConstraintProjectionTree::projectPoseForTree(void *a1, uint64_t a2)
{
  v3 = v26;
  v26[0] = *a1;
  v26[1] = v26;
  v26[2] = v26;
  v27 = 0;
  v30[0] = 0;
  *(&v30[1] + 1) = 0u;
  v28 = 0u;
  v29 = 0u;
  v30[1] = a1;
  v4 = xmmword_1E30474D0;
  do
  {
    while (1)
    {
      v5 = v3[9];
      if (!v5)
      {
        break;
      }

      do
      {
        v3 = v5;
        v6 = v5[10];
        if (v6)
        {
          if (((v7 = *(v6 + 104)) != 0 && (*(*(v7 + 80) + 44) & 1) == 0 || (v8 = *(v6 + 112)) != 0 && (*(*(v8 + 80) + 44) & 1) == 0) && (**(v6 + 88) & 6) != 0 && *(*(*(*(v6 + 80) + 1888) + 232) + 32 * *(v6 + 72) + 12) == 0)
          {
            v10 = *(v6 + 40);
            v11 = 0;
            v12 = 0;
            v13 = 0;
            v14 = v4;
            v15 = 0;
            if (v10)
            {
              v16 = *(v10 + 40);
              v14 = *v16;
              v15 = *(v16 + 16);
              v13 = *(v16 + 24);
            }

            v17 = *v3;
            v18 = *(v6 + 112);
            v19 = *(v6 + 48);
            v35 = v14;
            v36 = v15;
            v20 = v4;
            v37 = v13;
            if (v19)
            {
              v21 = *(v19 + 40);
              v20 = *v21;
              v11 = *(v21 + 16);
              v12 = *(v21 + 24);
            }

            v32 = v20;
            v33 = v11;
            v34 = v12;
            (*(v6 + 24))(*(v6 + 32), &v35, &v32, v18 == v17);
            if (v18 == v17)
            {
              v24 = *(v19 + 40);
              constrainMotion(v24, &v32);
              *v24->f32 = v32;
              v24[2] = v33;
              v24[3].i32[0] = v34;
              v23 = *(v6 + 112);
            }

            else
            {
              v22 = *(v10 + 40);
              constrainMotion(v22, &v35);
              *v22->f32 = v35;
              v22[2] = v36;
              v22[3].i32[0] = v37;
              v23 = *(v6 + 104);
            }

            v31 = v23;
            v25 = *(a2 + 8);
            if ((*(a2 + 12) & 0x7FFFFFFFu) <= v25)
            {
              physx::shdfnd::Array<physx::Sc::BodySim *,physx::shdfnd::ReflectionAllocator<physx::Sc::BodySim *>>::growAndPushBack(a2, &v31);
            }

            else
            {
              *(*a2 + 8 * v25) = v23;
              *(a2 + 8) = v25 + 1;
            }

            v4 = xmmword_1E30474D0;
          }
        }

        v5 = v3[8];
      }

      while (v5);
    }

    v3 = v3[7];
  }

  while (v3);
}

uint64_t physx::Sc::ConstraintSim::ConstraintSim(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a1 + 80) = a5;
  *(a1 + 88) = a2;
  *(a1 + 96) = 0;
  *(a1 + 120) = 0;
  if (a3 && *(a3 + 13))
  {
    v10 = *a3;
  }

  else
  {
    v10 = 0;
  }

  *(a1 + 104) = v10;
  if (a4 && *(a4 + 13))
  {
    v11 = *a4;
  }

  else
  {
    v11 = 0;
  }

  *(a1 + 112) = v11;
  v12 = *(a5 + 4272);
  v13 = *(v12 + 24);
  if (v13)
  {
    v14 = v13 - 1;
    v15 = *(*(v12 + 16) + 4 * (v13 - 1));
    *(v12 + 24) = v14;
  }

  else
  {
    v15 = *(v12 + 8);
    *(v12 + 8) = v15 + 1;
  }

  *(a1 + 72) = v15;
  v16 = *(a5 + 1888);
  if ((*(v16 + 244) & 0x7FFFFFFFu) - 1 < v15)
  {
    physx::shdfnd::Array<physx::Dy::ConstraintWriteback,physx::shdfnd::VirtualAllocator>::recreate(v16 + 224, 2 * *(v16 + 244));
    v15 = *(a1 + 72);
  }

  if (*(v16 + 240) <= v15 + 1)
  {
    v17 = v15 + 1;
  }

  else
  {
    v17 = *(v16 + 240);
  }

  memset(v42, 0, sizeof(v42));
  physx::shdfnd::Array<physx::Dy::ConstraintWriteback,physx::shdfnd::VirtualAllocator>::resize(v16 + 224, v17, v42);
  v18 = *(v16 + 232) + 32 * *(a1 + 72);
  *v18 = 0;
  *(v18 + 8) = 0;
  *(v18 + 24) = 0;
  *(v18 + 16) = 0;
  v19 = *(a1 + 88);
  v20 = *(v19 + 64);
  ConstraintBlock = physx::Sc::Scene::allocateConstraintBlock(*(a1 + 80), *(v19 + 64));
  if (ConstraintBlock)
  {
    v25 = ConstraintBlock;
    bzero(ConstraintBlock, v20);
    *a1 = *(v19 + 68);
    *(a1 + 4) = *(v19 + 72);
    *(a1 + 10) = *v19;
    *(a1 + 8) = v20;
    *(a1 + 16) = vextq_s8(*(v19 + 40), *(v19 + 40), 8uLL);
    v27 = *(a1 + 104);
    v26 = *(a1 + 112);
    v28 = v27 + 96;
    if (!v27)
    {
      v28 = 0;
    }

    *(a1 + 32) = v25;
    *(a1 + 40) = v28;
    v29 = v26 + 96;
    if (!v26)
    {
      v29 = 0;
    }

    *(a1 + 48) = v29;
    if (v27)
    {
      v27 = *(v27 + 136);
    }

    *(a1 + 56) = v27;
    if (v26)
    {
      v26 = *(v26 + 136);
    }

    *(a1 + 64) = v26;
    *(a1 + 76) = *(v19 + 76);
    if (*(a2 + 68) < 3.4028e38 || *(a2 + 72) < 3.4028e38)
    {
      *(a1 + 120) |= 2u;
    }

    *(a2 + 80) = a1;
    v30 = *(a5 + 2056);
    if ((**(a1 + 88) & 6) == 0 || *(*(*(*(a1 + 80) + 1888) + 232) + 32 * *(a1 + 72) + 12))
    {
      v31 = *(a1 + 104);
      v32 = *(a1 + 112);
      if (v31)
      {
        v33 = *(v31 + 200);
        if (v33)
        {
          physx::Sc::ConstraintProjectionManager::invalidateGroup(*(a5 + 2056), v33, a1);
        }
      }

      if (v32)
      {
        v34 = *(v32 + 200);
        if (v34)
        {
          physx::Sc::ConstraintProjectionManager::invalidateGroup(v30, v34, a1);
        }
      }
    }

    else
    {
      physx::Sc::ConstraintProjectionManager::addToPendingGroupUpdates(*(a5 + 2056), a1);
    }

    v35 = *(*(a1 + 80) + 4360);
    v36 = (a5 + 4304);
    if (a3)
    {
      v37 = a3;
    }

    else
    {
      v37 = (a5 + 4304);
    }

    v38 = *v37;
    if (a4)
    {
      v36 = a4;
    }

    v39 = *v36;
    v40 = *(v35 + 560);
    if (!v40)
    {
      physx::shdfnd::PoolBase<physx::Sc::ConstraintInteraction,physx::shdfnd::ReflectionAllocator<physx::Sc::ConstraintInteraction>>::allocateSlab(*(*(a1 + 80) + 4360));
      v40 = *(v35 + 560);
    }

    *(v35 + 560) = *v40;
    ++*(v35 + 548);
    *(a1 + 96) = physx::Sc::ConstraintInteraction::ConstraintInteraction(v40, a1, v38, v39);
  }

  else
  {
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 32, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/simulationcontroller/src/ScConstraintSim.cpp", 127, "Constraint: could not allocate low-level resources.", v22, v23, v24, v42[0]);
  }

  return a1;
}

uint64_t physx::shdfnd::Array<physx::Dy::ConstraintWriteback,physx::shdfnd::VirtualAllocator>::resize(uint64_t result, unsigned int a2, uint64_t a3)
{
  v5 = result;
  if ((*(result + 20) & 0x7FFFFFFFu) < a2)
  {
    result = physx::shdfnd::Array<physx::Dy::ConstraintWriteback,physx::shdfnd::VirtualAllocator>::recreate(result, a2);
  }

  v6 = *(v5 + 16);
  if (v6 < a2)
  {
    v7 = *(v5 + 8);
    v8 = v7 + 32 * a2;
    v9 = v7 + 32 * v6;
    v10 = *(a3 + 12);
    v11 = *(a3 + 28);
    do
    {
      *v9 = *a3;
      *(v9 + 8) = *(a3 + 8);
      *(v9 + 12) = v10;
      *(v9 + 16) = *(a3 + 16);
      *(v9 + 24) = *(a3 + 24);
      *(v9 + 28) = v11;
      v9 += 32;
    }

    while (v9 < v8);
  }

  *(v5 + 16) = a2;
  return result;
}

void physx::Sc::ConstraintSim::~ConstraintSim(physx::Sc::ConstraintSim *this)
{
  v2 = *(this + 120);
  if (v2)
  {
    physx::Sc::ConstraintProjectionManager::removeFromPendingGroupUpdates(*(*(this + 10) + 2056), this);
    v2 = *(this + 120);
  }

  if ((v2 & 8) == 0)
  {
    physx::Sc::ConstraintInteraction::destroy(*(this + 12));
  }

  v3 = *(*(this + 10) + 4272);
  v4 = *(this + 18);
  v10 = v4;
  physx::Cm::BitMapBase<physx::shdfnd::NonTrackingAllocator>::extend(v3 + 32, v4 + 1);
  *(*(v3 + 32) + ((v4 >> 3) & 0x1FFFFFFC)) |= 1 << v4;
  v5 = *(v3 + 56);
  if ((*(v3 + 60) & 0x7FFFFFFFu) <= v5)
  {
    physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::growAndPushBack(v3 + 48, &v10);
  }

  else
  {
    *(*(v3 + 48) + 4 * v5) = v4;
    ++*(v3 + 56);
  }

  v6 = *(this + 10);
  v7 = *(this + 12);
  if (v7)
  {
    v8 = *(v6 + 4360);
    --*(v8 + 548);
    *v7 = *(v8 + 560);
    *(v8 + 560) = v7;
  }

  v9 = *(this + 4);
  if (v9)
  {
    physx::Sc::Scene::deallocateConstraintBlock(v6, v9, *(this + 4));
  }

  *(*(this + 11) + 80) = 0;
}

void *physx::Sc::ConstraintSim::checkMaxForceExceeded(physx::Sc::ConstraintSim *this)
{
  result = *(this + 10);
  if (*(*(result[236] + 232) + 32 * *(this + 18) + 12))
  {
    *(this + 120) |= 8u;
    physx::Sc::Scene::addBrokenConstraint(result, *(this + 11));
    v3 = *(this + 12);
    **(this + 11) |= 1u;
    physx::Sc::ConstraintInteraction::destroy(v3);
    v4 = *(this + 12);
    v6 = *v4;
    v5 = v4[1];
    if (*(v6 + 52) >= *(v5 + 52))
    {
      v7 = v5;
    }

    else
    {
      v7 = v6;
    }

    return physx::Sc::ActorSim::setActorsInteractionsDirty(v7, 1, 0, 1);
  }

  return result;
}

void constrainMotion(float32x2_t *a1, float32x2_t *a2)
{
  v2 = a1[19].u8[6];
  if (a1[19].i8[6])
  {
    v4 = a1[2];
    v5 = a1[3].f32[0];
    v6 = a1->f32[0];
    v7 = a1->f32[1];
    v8 = a1[1].f32[0];
    v9 = a1[1].f32[1];
    v10 = a2->f32[1];
    v12 = a2[1].f32[0];
    v11 = a2[1].f32[1];
    v13 = (((v9 * a2->f32[0]) - (v11 * a1->f32[0])) - (v10 * v8)) + (v7 * v12);
    v14 = (((v9 * v10) - (v11 * v7)) - (v12 * a1->f32[0])) + (v8 * a2->f32[0]);
    v15 = (((v9 * v12) - (v11 * v8)) - (a2->f32[0] * v7)) + (a1->f32[0] * v10);
    v16 = (((a1->f32[0] * a2->f32[0]) + (v11 * v9)) + (v10 * v7)) + (v12 * v8);
    if (v16 < 0.0)
    {
      v13 = -v13;
      v14 = -v14;
      v15 = -v15;
      v16 = -v16;
    }

    v17 = vsub_f32(a2[2], v4);
    v18 = a2[3].f32[0] - v5;
    v19 = ((v14 * v14) + (v13 * v13)) + (v15 * v15);
    v20 = 1.0;
    v21 = 0.0;
    v22 = 0.0;
    v23 = 0.0;
    if (v19 >= 1.0e-16)
    {
      v24 = 1.0 / sqrtf(v19);
      v20 = v13 * v24;
      v21 = v14 * v24;
      v22 = v15 * v24;
      if (fabsf(v16) >= 0.00000001)
      {
        v52 = a1[2];
        v51 = a1[3].f32[0];
        v50 = v17;
        v49 = a2[3].f32[0] - v5;
        v25 = atan2f(v19 * v24, v16);
        v18 = v49;
        v17 = v50;
        v5 = v51;
        v4 = v52;
        v23 = v25 + v25;
      }

      else
      {
        v23 = 3.1416;
      }
    }

    v26 = v20 * v23;
    v27 = v21 * v23;
    v28 = v22 * v23;
    v29 = vand_s8(vdup_n_s32(v2), 0x200000001);
    if ((v2 & 4) != 0)
    {
      v30 = 0.0;
    }

    else
    {
      v30 = v18;
    }

    if ((v2 & 8) != 0)
    {
      v31 = 0.0;
    }

    else
    {
      v31 = v26;
    }

    if ((v2 & 0x10) != 0)
    {
      v32 = 0.0;
    }

    else
    {
      v32 = v27;
    }

    if ((v2 & 0x20) != 0)
    {
      v33 = 0.0;
    }

    else
    {
      v33 = v28;
    }

    a2[2] = vadd_f32(v4, vand_s8(v17, vceqz_s32(v29)));
    a2[3].f32[0] = v5 + v30;
    v34 = ((v32 * v32) + (v31 * v31)) + (v33 * v33);
    if (v34 != 0.0)
    {
      v35 = sqrtf(v34);
      v36 = __sincosf_stret(v35 * 0.5);
      v37 = v31 * (v36.__sinval / v35);
      v38 = v32 * (v36.__sinval / v35);
      v39 = v33 * (v36.__sinval / v35);
      v40 = (((v9 * v37) + (v6 * 0.0)) + (v38 * v8)) + (-v7 * v39);
      v41 = (((v9 * v38) + (v7 * 0.0)) + (v39 * v6)) + (-v8 * v37);
      v42 = (((v9 * v39) + (v8 * 0.0)) + (v37 * v7)) + (-v6 * v38);
      v43 = (((v9 * 0.0) - (v37 * v6)) - (v38 * v7)) - (v39 * v8);
      v44 = (v6 * v36.__cosval) + v40;
      v45 = (v7 * v36.__cosval) + v41;
      v46 = (v8 * v36.__cosval) + v42;
      v47 = (v9 * v36.__cosval) + v43;
      v48 = sqrtf((((v45 * v45) + (v44 * v44)) + (v46 * v46)) + (v47 * v47));
      v6 = v44 / v48;
      v7 = v45 / v48;
      v8 = v46 / v48;
      v9 = v47 / v48;
    }

    a2->f32[0] = v6;
    a2->f32[1] = v7;
    a2[1].f32[0] = v8;
    a2[1].f32[1] = v9;
  }
}

void *physx::Sc::ConstraintSim::visualize(void *result, uint64_t a2)
{
  v2 = result[11];
  if ((*v2 & 0x10) == 0)
  {
    return result;
  }

  v4 = result[5];
  v3 = result[6];
  v5.n128_u64[1] = 0x3F80000000000000;
  v28 = xmmword_1E30474D0;
  v29 = 0;
  v30 = 0;
  if (!v4)
  {
    v6 = &v28;
    if (v3)
    {
      goto LABEL_4;
    }

LABEL_6:
    v7 = &v28;
    goto LABEL_7;
  }

  v6 = *(v4 + 40);
  if (!v3)
  {
    goto LABEL_6;
  }

LABEL_4:
  v7 = *(v3 + 40);
LABEL_7:
  v8 = result[10];
  v9 = *(v8 + 4656);
  v10 = *(v8 + 1840);
  memset(v16, 0, sizeof(v16));
  v18 = 0;
  v19 = 0;
  v17 = 0x3F80000000000000;
  v20 = 1065353216;
  v22 = 0;
  v21 = 0;
  v23 = 1065353216;
  v24 = 0;
  v25 = 0;
  v26 = 1065353216;
  v27 = a2;
  v15[0] = &unk_1F5D1E800;
  v5.n128_u64[0] = vmul_n_f32(v10[234], v9);
  v15[1] = v5.n128_u64[0];
  v15[2] = v16;
  v11 = v5.n128_f32[0] == 0.0;
  v12 = v5.n128_f32[0] != 0.0;
  v5.n128_u32[0] = v5.n128_u32[1];
  if (v11)
  {
    v13 = 2;
  }

  else
  {
    v13 = 3;
  }

  if (v5.n128_f32[1] == 0.0)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  return (*(v2 + 56))(v15, result[4], v6, v7, v14, v5);
}

void physx::Sc::ElementInteractionMarker::~ElementInteractionMarker(physx::Sc::ElementInteractionMarker *this)
{
  *this = &unk_1F5D1E878;
  if (*(this + 6) != -1)
  {
    v2 = *(*(this + 1) + 72);
    physx::Sc::Scene::unregisterInteraction(v2, (this + 8));
    physx::Sc::NPhaseCore::unregisterInteraction(*(v2 + 3992), this);
  }

  physx::Sc::ActorSim::unregisterInteractionFromActor(*(this + 1), this + 1);
  physx::Sc::ActorSim::unregisterInteractionFromActor(*(this + 2), this + 1);
}

{
  physx::Sc::ElementInteractionMarker::~ElementInteractionMarker(this);
  if (v1)
  {
    v2 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

    v2();
  }
}

physx::Sc::ElementSim *physx::Sc::ElementSim::ElementSim(physx::Sc::ElementSim *this, physx::Sc::ActorSim *a2)
{
  *this = 0;
  *(this + 1) = a2;
  *(this + 4) &= ~0x80000000;
  v4 = *(a2 + 9);
  v5 = *(v4 + 4296);
  v6 = *(v5 + 24);
  if (v6)
  {
    v7 = v6 - 1;
    v8 = *(*(v5 + 16) + 4 * (v6 - 1));
    *(v5 + 24) = v7;
  }

  else
  {
    v8 = *(v5 + 8);
    *(v5 + 8) = v8 + 1;
  }

  *(this + 4) = *(this + 4) & 0x80000000 | v8 & 0x7FFFFFFF;
  v9 = *(v4 + 2064);
  v10 = (v8 & 0x7FFFFFFF) + 1;
  v11 = *(v9 + 20) & 0x7FFFFFFF;
  if (v10 >= v11)
  {
    v12 = v10 | (v10 >> 1) | ((v10 | (v10 >> 1)) >> 2);
    v13 = v12 | (v12 >> 4) | ((v12 | (v12 >> 4)) >> 8);
    v14 = (v13 | HIWORD(v13)) + 1;
    if (v11 < v14)
    {
      physx::shdfnd::Array<physx::PxBounds3,physx::shdfnd::VirtualAllocator>::recreate(v9, (v13 | HIWORD(v13)) + 1);
    }

    *(v9 + 16) = v14;
  }

  *this = *(a2 + 7);
  *(a2 + 7) = this;
  ++*(a2 + 16);
  return this;
}

void physx::Sc::ElementSim::~ElementSim(physx::Sc::ElementSim *this)
{
  v2 = *(*(*(this + 1) + 72) + 4296);
  v3 = *(this + 4);
  v11 = v3 & 0x7FFFFFFF;
  physx::Cm::BitMapBase<physx::shdfnd::NonTrackingAllocator>::extend(v2 + 32, (v3 & 0x7FFFFFFF) + 1);
  *(*(v2 + 32) + ((v3 >> 3) & 0xFFFFFFC)) |= 1 << v3;
  v4 = *(v2 + 56);
  if ((*(v2 + 60) & 0x7FFFFFFFu) <= v4)
  {
    physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::growAndPushBack(v2 + 48, &v11);
  }

  else
  {
    *(*(v2 + 48) + 4 * v4) = v3 & 0x7FFFFFFF;
    ++*(v2 + 56);
  }

  v5 = 0;
  v6 = *(this + 1);
  v7 = (v6 + 56);
  v8 = (v6 + 56);
  while (1)
  {
    v8 = *v8;
    if (!v8)
    {
      break;
    }

    v9 = v5;
    v5 = v8;
    if (v8 == this)
    {
      v10 = *v8;
      if (v9)
      {
        v7 = v9;
      }

      *v7 = v10;
      --*(v6 + 64);
      return;
    }
  }
}

void *physx::Sc::ElementSim::setElementInteractionsDirty(void *result, char a2, int a3)
{
  v3 = result[1];
  v4 = *(v3 + 52);
  if (v4)
  {
    v7 = result;
    v8 = *(v3 + 40);
    v9 = (v8 + 8 * v4);
    v10 = (v8 + 8);
    v11 = 8 * v4;
    while (1)
    {
      v12 = *(v10 - 1);
      v13 = *(v12 + 29);
      if ((v13 & 1) != 0 && (*(v12 + 32) == result || *(v12 + 40) == result))
      {
        break;
      }

      ++v10;
      v11 -= 8;
      if (!v11)
      {
        return result;
      }
    }

    while (1)
    {
      if ((v13 & a3) != 0)
      {
        *(v12 + 30) |= a2;
        if ((v13 & 8) == 0)
        {
          result = physx::Sc::Interaction::addToDirtyList(v12);
          *(v12 + 29) |= 8u;
        }
      }

      if (v10 == v9)
      {
        break;
      }

      v14 = v10;
      while (1)
      {
        v15 = *v14++;
        v12 = v15;
        v13 = *(v15 + 29);
        if ((v13 & 1) != 0 && (*(v12 + 32) == v7 || *(v12 + 40) == v7))
        {
          break;
        }

        v10 = v14;
        if (v14 == v9)
        {
          return result;
        }
      }

      ++v10;
    }
  }

  return result;
}

uint64_t physx::Sc::ElementSim::addToAABBMgr(uint64_t a1, int a2, int a3, float a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  v11 = *(a1 + 8);
  v12 = *(v11 + 72);
  v13 = *(*(v11 + 80) + 8) & 0xFFFFFF;
  if (v13 == 0xFFFFFF)
  {
    v14 = -1;
  }

  else
  {
    v14 = v13;
  }

  result = physx::Bp::AABBManager::addBounds(*(v12 + 1848), *(a1 + 16) & 0x7FFFFFFF, a2, a1, v14, a3 != 0, a4);
  if (result)
  {
    *(a1 + 16) |= 0x80000000;
    ++*(*(v12 + 4256) + 8);
  }

  else
  {
    v19 = physx::shdfnd::Foundation::mInstance;

    return physx::shdfnd::Foundation::error(v19, 32, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/simulationcontroller/src/ScElementSim.cpp", 113, "Unable to create broadphase entity because only 32768 shapes are supported", v16, v17, v18, a10);
  }

  return result;
}

void physx::Sc::ElementSim::removeFromAABBMgr(physx::Sc::ElementSim *this)
{
  v2 = *(*(this + 1) + 72);
  physx::Bp::AABBManager::removeBounds(*(v2 + 1848), *(this + 4) & 0x7FFFFFFF);
  v3 = *(v2 + 1848);
  v4 = *(this + 4);
  physx::Cm::BitMapBase<physx::shdfnd::VirtualAllocator>::extend(v3 + 224, (v4 & 0x7FFFFFFF) + 1);
  *(*(v3 + 224) + ((v4 >> 3) & 0xFFFFFFC)) &= ~(1 << v4);
  *(this + 4) &= ~0x80000000;
  ++*(*(v2 + 4256) + 12);
}

uint64_t physx::shdfnd::PoolBase<physx::Sc::ConstraintGroupNode,physx::shdfnd::ReflectionAllocator<physx::Sc::ConstraintGroupNode>>::allocateSlab(uint64_t a1)
{
  result = physx::shdfnd::ReflectionAllocator<physx::Sc::ConstraintGroupNode>::allocate(a1, *(a1 + 552), "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsPool.h", 180);
  v3 = result;
  v8 = result;
  v4 = *(a1 + 536);
  if ((*(a1 + 540) & 0x7FFFFFFFu) <= v4)
  {
    result = physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::Sc::ConstraintGroupNode>>>::growAndPushBack(a1 + 8, &v8);
  }

  else
  {
    *(*(a1 + 528) + 8 * v4) = result;
    *(a1 + 536) = v4 + 1;
  }

  v5 = v3 + 96 * *(a1 + 544) - 96;
  if (v5 >= v3)
  {
    v6 = *(a1 + 560);
    v7 = (v3 + 96 * *(a1 + 544) - 96);
    do
    {
      *v7 = v6;
      v7 -= 12;
      v6 = v5;
      v5 = v7;
    }

    while (v7 >= v3);
    *(a1 + 560) = v7 + 12;
  }

  return result;
}

uint64_t physx::shdfnd::ReflectionAllocator<physx::Sc::ConstraintGroupNode>::allocate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v8 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Sc::ConstraintGroupNode>::getName() [T = physx::Sc::ConstraintGroupNode]";
  }

  else
  {
    v8 = "<allocation names disabled>";
  }

  v9 = *(*(v7 + 24) + 16);

  return v9(v7 + 24, a2, v8, a3, a4);
}

uint64_t physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::Sc::ConstraintGroupNode>>>::growAndPushBack(uint64_t result, void *a2)
{
  v3 = result;
  v4 = *(result + 532);
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
    if (v6 > 0x200 || (*(result + 512) & 1) != 0)
    {
      result = physx::shdfnd::ReflectionAllocator<physx::Sc::ConstraintGroupNode>::allocate(result, v6, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
      v7 = result;
    }

    else
    {
      *(result + 512) = 1;
      v7 = result;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v3 + 528);
  v9 = &v7[v8];
  if (v8)
  {
    v10 = *(v3 + 520);
    v11 = v7;
    do
    {
      v12 = *v10++;
      *v11++ = v12;
    }

    while (v11 < v9);
  }

  *v9 = *a2;
  if ((*(v3 + 532) & 0x80000000) == 0)
  {
    v13 = *(v3 + 520);
    if (v13 == v3)
    {
      *(v3 + 512) = 0;
    }

    else if (v13)
    {
      result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
      LODWORD(v8) = *(v3 + 528);
    }
  }

  *(v3 + 520) = v7;
  *(v3 + 532) = v5;
  *(v3 + 528) = v8 + 1;
  return result;
}

float physx::Cm::ConstraintImmediateVisualizer::visualizeLine(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = *(a1 + 16);
  *(v6 + 4) = a4;
  v7 = *(v6 + 104);
  v8 = *(v7 + 32);
  v9 = *(v7 + 36) & 0x7FFFFFFF;
  v10 = v8 + 1;
  if (v8 + 1 > v9)
  {
    v11 = 2 * *(v7 + 36);
    if (!v9)
    {
      v11 = 2;
    }

    if (v10 <= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    physx::shdfnd::Array<physx::PxDebugLine,physx::shdfnd::ReflectionAllocator<physx::PxDebugLine>>::recreate(v7 + 24, v12);
    v8 = *(v7 + 32);
    a4 = *(v6 + 4);
  }

  v13 = *(v7 + 24) + 32 * v8;
  *(v7 + 32) = v10;
  *v13 = *a2;
  *(v13 + 8) = *(a2 + 8);
  *(v13 + 16) = *a3;
  result = *(a3 + 8);
  *(v13 + 24) = result;
  *(v13 + 28) = a4;
  *(v13 + 12) = a4;
  return result;
}

uint64_t physx::shdfnd::Array<physx::PxBounds3,physx::shdfnd::VirtualAllocator>::recreate(uint64_t result, int a2)
{
  v3 = result;
  if (a2)
  {
    result = (*(**result + 16))();
    v4 = result;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v3 + 16);
  v6 = *(v3 + 8);
  if (v5)
  {
    v7 = &v4[3 * v5];
    v8 = *(v3 + 8);
    v9 = v4;
    do
    {
      *v9 = *v8;
      v9[1] = v8[1];
      v9[2] = v8[2];
      v9 += 3;
      v8 += 3;
    }

    while (v9 < v7);
  }

  if ((*(v3 + 20) & 0x80000000) == 0 && v6)
  {
    result = (*(**v3 + 24))();
  }

  *(v3 + 8) = v4;
  *(v3 + 20) = a2;
  return result;
}

void *physx::shdfnd::internal::HashBase<physx::Sc::ConstraintSim *,physx::Sc::ConstraintSim *,physx::shdfnd::Hash<physx::Sc::ConstraintSim *>,physx::shdfnd::internal::HashSetBase<physx::Sc::ConstraintSim *,physx::shdfnd::Hash<physx::Sc::ConstraintSim *>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(uint64_t a1, unsigned int a2)
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
  if (v8 + 8 * v7)
  {
    v9 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v8 + 8 * v7, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsHashInternals.h", 372);
  }

  else
  {
    v9 = 0;
  }

  v10 = &v9[4 * v2];
  v11 = &v9[v8];
  result = memset(v9, 255, 4 * v2);
  if (*(a1 + 52))
  {
    v13 = 0;
    do
    {
      v14 = *(*(a1 + 8) + 8 * v13);
      v15 = (~(v14 << 32) + v14) ^ ((~(v14 << 32) + v14) >> 22);
      v16 = 9 * ((v15 + ~(v15 << 13)) ^ ((v15 + ~(v15 << 13)) >> 8));
      v17 = (v16 ^ (v16 >> 15)) + ~((v16 ^ (v16 >> 15)) << 27);
      LODWORD(v17) = (v2 - 1) & ((v17 >> 31) ^ v17);
      *&v10[4 * v13] = *&v9[4 * v17];
      *&v9[4 * v17] = v13;
      *&v11[8 * v13++] = v14;
    }

    while (v13 < *(a1 + 52));
  }

  if (*a1)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(a1 + 16) = v10;
  *(a1 + 24) = v9;
  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 32) = v7;
  *(a1 + 36) = v2;
  if (*(a1 + 44) == -1)
  {
    *(a1 + 44) = v6;
  }

  return result;
}

uint64_t physx::shdfnd::internal::HashBase<physx::Sc::ConstraintSim *,physx::Sc::ConstraintSim *,physx::shdfnd::Hash<physx::Sc::ConstraintSim *>,physx::shdfnd::internal::HashSetBase<physx::Sc::ConstraintSim *,physx::shdfnd::Hash<physx::Sc::ConstraintSim *>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::create(int32x2_t *a1, void *a2, _BYTE *a3)
{
  v5 = a1[4].u32[1];
  if (!v5)
  {
    v9 = 0;
    goto LABEL_8;
  }

  v6 = ~(*a2 << 32) + *a2;
  v7 = 9 * (((v6 ^ (v6 >> 22)) + ~((v6 ^ (v6 >> 22)) << 13)) ^ (((v6 ^ (v6 >> 22)) + ~((v6 ^ (v6 >> 22)) << 13)) >> 8));
  v8 = (v7 ^ (v7 >> 15)) + ~((v7 ^ (v7 >> 15)) << 27);
  v9 = (v5 - 1) & ((v8 >> 31) ^ v8);
  v10 = *(*&a1[3] + 4 * v9);
  if (v10 == -1)
  {
LABEL_8:
    *a3 = 0;
    if (a1[6].i32[1] == a1[4].i32[0])
    {
      if (v5)
      {
        v12 = 2 * v5;
      }

      else
      {
        v12 = 16;
      }

      if (v5 < v12)
      {
        physx::shdfnd::internal::HashBase<physx::Sc::ConstraintSim *,physx::Sc::ConstraintSim *,physx::shdfnd::Hash<physx::Sc::ConstraintSim *>,physx::shdfnd::internal::HashSetBase<physx::Sc::ConstraintSim *,physx::shdfnd::Hash<physx::Sc::ConstraintSim *>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(a1, v12);
        v5 = a1[4].u32[1];
      }

      v13 = ~(*a2 << 32) + *a2;
      v14 = 9 * (((v13 ^ (v13 >> 22)) + ~((v13 ^ (v13 >> 22)) << 13)) ^ (((v13 ^ (v13 >> 22)) + ~((v13 ^ (v13 >> 22)) << 13)) >> 8));
      v15 = (v14 ^ (v14 >> 15)) + ~((v14 ^ (v14 >> 15)) << 27);
      v9 = (v5 - 1) & ((v15 >> 31) ^ v15);
    }

    v16 = a1[5].u32[1];
    a1[5].i32[1] = v16 + 1;
    v17 = a1[3];
    v18 = a1[1];
    *(*&a1[2] + 4 * v16) = *(*&v17 + 4 * v9);
    *(*&v17 + 4 * v9) = v16;
    a1[6] = vadd_s32(a1[6], 0x100000001);
    return *&v18 + 8 * v16;
  }

  v11 = a1[1];
  while (*(*&v11 + 8 * v10) != *a2)
  {
    v10 = *(*&a1[2] + 4 * v10);
    if (v10 == -1)
    {
      goto LABEL_8;
    }
  }

  result = *&v11 + 8 * v10;
  *a3 = 1;
  return result;
}

uint64_t physx::shdfnd::ReflectionAllocator<physx::Sc::BodyRank>::allocate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    v6 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Sc::BodyRank>::getName() [T = physx::Sc::BodyRank]";
    }

    else
    {
      v7 = "<allocation names disabled>";
    }

    v8 = *(*(v6 + 24) + 16);

    return v8(v6 + 24, v5, v7, a2, a3);
  }

  return result;
}

uint64_t physx::shdfnd::Array<physx::Sc::BodyRank,physx::shdfnd::InlineAllocator<1536u,physx::shdfnd::ReflectionAllocator<physx::Sc::BodyRank>>>::growAndPushBack(uint64_t result, __int128 *a2)
{
  v3 = result;
  v4 = *(result + 1556);
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
    result = (24 * v5);
    if (result > 0x600 || (*(v3 + 1536) & 1) != 0)
    {
      result = physx::shdfnd::ReflectionAllocator<physx::Sc::BodyRank>::allocate(result, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
      v6 = result;
    }

    else
    {
      *(v3 + 1536) = 1;
      v6 = v3;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v3 + 1552);
  if (v7)
  {
    v8 = v6 + 24 * v7;
    v9 = *(v3 + 1544);
    v10 = v6;
    do
    {
      v11 = *v9;
      *(v10 + 16) = *(v9 + 2);
      *v10 = v11;
      v10 += 24;
      v9 = (v9 + 24);
    }

    while (v10 < v8);
    v12 = *(v3 + 1552);
  }

  else
  {
    v12 = 0;
  }

  v13 = v6 + 24 * v12;
  v14 = *a2;
  *(v13 + 16) = *(a2 + 2);
  *v13 = v14;
  if ((*(v3 + 1556) & 0x80000000) == 0)
  {
    v15 = *(v3 + 1544);
    if (v15 == v3)
    {
      *(v3 + 1536) = 0;
    }

    else if (v15)
    {
      result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }
  }

  *(v3 + 1544) = v6;
  *(v3 + 1556) = v5;
  ++*(v3 + 1552);
  return result;
}

void *physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::Sc::BodyRank>>::grow(uint64_t a1)
{
  v2 = 2 * *(a1 + 8);
  *(a1 + 8) = v2;
  v3 = physx::shdfnd::ReflectionAllocator<physx::Sc::BodyRank>::allocate(4 * v2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsSortInternals.h", 155);
  result = memcpy(v3, *(a1 + 16), (4 * *(a1 + 4)));
  if (*(a1 + 24) == 1 && *(a1 + 16))
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *(a1 + 24) = 1;
  *(a1 + 16) = v3;
  return result;
}

uint64_t physx::shdfnd::Array<physx::Dy::ConstraintWriteback,physx::shdfnd::VirtualAllocator>::recreate(uint64_t result, int a2)
{
  v3 = result;
  if (a2)
  {
    result = (*(**result + 16))();
    v4 = result;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v3 + 16);
  v6 = *(v3 + 8);
  if (v5)
  {
    v7 = v4 + 32 * v5;
    v8 = *(v3 + 8);
    v9 = v4;
    do
    {
      *v9 = *v8;
      *(v9 + 8) = *(v8 + 8);
      *(v9 + 12) = *(v8 + 12);
      *(v9 + 16) = *(v8 + 16);
      *(v9 + 24) = *(v8 + 24);
      *(v9 + 28) = *(v8 + 28);
      v9 += 32;
      v8 += 32;
    }

    while (v9 < v7);
  }

  if ((*(v3 + 20) & 0x80000000) == 0 && v6)
  {
    result = (*(**v3 + 24))();
  }

  *(v3 + 8) = v4;
  *(v3 + 20) = a2;
  return result;
}

uint64_t physx::shdfnd::PoolBase<physx::Sc::ConstraintInteraction,physx::shdfnd::ReflectionAllocator<physx::Sc::ConstraintInteraction>>::allocateSlab(uint64_t a1)
{
  result = physx::shdfnd::ReflectionAllocator<physx::Sc::ConstraintInteraction>::allocate(a1, *(a1 + 552), "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsPool.h", 180);
  v3 = result;
  v8 = result;
  v4 = *(a1 + 536);
  if ((*(a1 + 540) & 0x7FFFFFFFu) <= v4)
  {
    result = physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::Sc::ConstraintInteraction>>>::growAndPushBack(a1 + 8, &v8);
  }

  else
  {
    *(*(a1 + 528) + 8 * v4) = result;
    *(a1 + 536) = v4 + 1;
  }

  v5 = v3 + 48 * *(a1 + 544) - 48;
  if (v5 >= v3)
  {
    v6 = *(a1 + 560);
    v7 = (v3 + 48 * *(a1 + 544) - 48);
    do
    {
      *v7 = v6;
      v7 -= 6;
      v6 = v5;
      v5 = v7;
    }

    while (v7 >= v3);
    *(a1 + 560) = v7 + 6;
  }

  return result;
}

uint64_t physx::shdfnd::ReflectionAllocator<physx::Sc::ConstraintInteraction>::allocate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v8 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Sc::ConstraintInteraction>::getName() [T = physx::Sc::ConstraintInteraction]";
  }

  else
  {
    v8 = "<allocation names disabled>";
  }

  v9 = *(*(v7 + 24) + 16);

  return v9(v7 + 24, a2, v8, a3, a4);
}

uint64_t physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::Sc::ConstraintInteraction>>>::growAndPushBack(uint64_t result, void *a2)
{
  v3 = result;
  v4 = *(result + 532);
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
    if (v6 > 0x200 || (*(result + 512) & 1) != 0)
    {
      result = physx::shdfnd::ReflectionAllocator<physx::Sc::ConstraintInteraction>::allocate(result, v6, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
      v7 = result;
    }

    else
    {
      *(result + 512) = 1;
      v7 = result;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v3 + 528);
  v9 = &v7[v8];
  if (v8)
  {
    v10 = *(v3 + 520);
    v11 = v7;
    do
    {
      v12 = *v10++;
      *v11++ = v12;
    }

    while (v11 < v9);
  }

  *v9 = *a2;
  if ((*(v3 + 532) & 0x80000000) == 0)
  {
    v13 = *(v3 + 520);
    if (v13 == v3)
    {
      *(v3 + 512) = 0;
    }

    else if (v13)
    {
      result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
      LODWORD(v8) = *(v3 + 528);
    }
  }

  *(v3 + 520) = v7;
  *(v3 + 532) = v5;
  *(v3 + 528) = v8 + 1;
  return result;
}

uint64_t physx::Sc::Scene::addShape(uint64_t a1, physx::Sc::RigidSim *a2, physx::Sc::ShapeCore *a3, void *a4)
{
  v8 = *(a1 + 4312);
  v9 = *(v8 + 16) + 24 * *(v8 + 8);
  v10 = *(v9 + 8);
  if (v10)
  {
    *(v9 + 8) = *v10;
  }

  else
  {
    v11 = *(v9 + 16);
    if (v11 == *v8 || (v12 = *(v8 + 4), *(v9 + 16) = v11 + 1, (v13 = *v9) == 0))
    {
      v10 = physx::Cm::PreallocatingRegionManager::searchForMemory(v8);
      if (!v10)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v10 = (v13 + (v11 * v12));
    }
  }

  physx::Sc::ShapeSim::ShapeSim(v10, a2, a3);
LABEL_8:
  v14 = a1 + 4 * *(a3 + 18);
  ++*(v14 + 4676);
  (*(**(a1 + 1904) + 32))(*(a1 + 1904), v10 + 6, *(v10 + 16));
  if (a4)
  {
    v15 = (*(*(a1 + 2064) + 8) + 24 * (*(v10 + 4) & 0x7FFFFFFF));
    *a4 = *v15;
    a4[1] = v15[1];
    a4[2] = v15[2];
  }

  v16 = *(**(*(a1 + 1840) + 1776) + 88);

  return v16();
}

void physx::Sc::RigidCore::removeShapeFromScene(physx::Sc::RigidCore *this, physx::Sc::ShapeCore *a2, int a3)
{
  v3 = *this;
  if (*this)
  {
    v4 = v3 + 56;
    while (1)
    {
      v4 = *v4;
      if (!v4)
      {
        break;
      }

      if (*(v4 + 56) == a2)
      {
        goto LABEL_8;
      }
    }

    v4 = 1;
LABEL_8:
    physx::Sc::Scene::removeShape(*(v3 + 72), v4, a3);
  }
}

void physx::Sc::Scene::removeShape(physx::Sc::Scene *this, int32x2_t *a2, int a3)
{
  (*(**(*(this + 230) + 1776) + 96))(*(*(this + 230) + 1776), *&a2[7] + 32);
  (*(**(this + 238) + 40))(*(this + 238), a2[8].u32[0]);
  v6 = this + 4 * *(*&a2[7] + 72);
  --*(v6 + 1169);
  physx::Sc::ShapeSim::removeFromBroadPhase(a2, a3);
  v7 = *(this + 539);
  physx::Sc::ShapeSim::~ShapeSim(a2);

  physx::Cm::PreallocatingRegionManager::deallocateMemory(v7, a2);
}

void physx::Sc::RigidCore::onShapeChange(void *a1, uint64_t a2, int *a3, char *a4, int a5)
{
  if (*a1)
  {
    v8 = *a1 + 56;
    while (1)
    {
      v8 = *v8;
      if (!v8)
      {
        break;
      }

      if (*(v8 + 56) == a2)
      {
        goto LABEL_7;
      }
    }

    v8 = 1;
LABEL_7:
    v9 = *a3;
    if (*a3)
    {
      physx::Sc::ShapeSim::onVolumeOrTransformChange(v8, a5);
      v9 = *a3;
      if ((*a3 & 2) == 0)
      {
LABEL_9:
        if ((v9 & 0x80) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_13;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_9;
    }

    physx::Sc::ElementSim::setElementInteractionsDirty(v8, 2, 1);
    v9 = *a3;
    if ((*a3 & 0x80) == 0)
    {
      goto LABEL_15;
    }

LABEL_13:
    if ((*(v8 + 16) & 0x80000000) != 0)
    {
      physx::Sc::ShapeSim::reinsertBroadPhase(v8);
      v9 = *a3;
    }

LABEL_15:
    if ((v9 & 4) != 0)
    {
      physx::Sc::ShapeSim::onVolumeOrTransformChange(v8, a5);
      v9 = *a3;
      if ((*a3 & 8) == 0)
      {
LABEL_17:
        if ((v9 & 0x40) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_24;
      }
    }

    else if ((v9 & 8) == 0)
    {
      goto LABEL_17;
    }

    physx::Sc::ElementSim::setElementInteractionsDirty(v8, 1, 4);
    v9 = *a3;
    if ((*a3 & 0x40) == 0)
    {
LABEL_18:
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_25;
    }

LABEL_24:
    v10 = *a4;
    physx::Sc::ShapeSim::onFlagChange(v8, &v10);
    v9 = *a3;
    if ((*a3 & 0x10) == 0)
    {
LABEL_19:
      if ((v9 & 0x20) == 0)
      {
        return;
      }

      goto LABEL_20;
    }

LABEL_25:
    physx::Sc::ShapeSim::onContactOffsetChange(v8);
    if ((*a3 & 0x20) == 0)
    {
      return;
    }

LABEL_20:
    physx::Sc::ElementSim::setElementInteractionsDirty(v8, 16, 1);
  }
}

uint64_t physx::Sc::RigidSim::RigidSim(uint64_t result, uint64_t a2, void *a3)
{
  *(result + 64) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 40) = 0;
  *(result + 72) = a2;
  *(result + 80) = a3;
  *a3 = result;
  *result = &unk_1F5D1E8D8;
  v3 = *(a2 + 4288);
  v4 = *(v3 + 24);
  if (v4)
  {
    v5 = v4 - 1;
    v6 = *(*(v3 + 16) + 4 * (v4 - 1));
    *(v3 + 24) = v5;
  }

  else
  {
    v6 = *(v3 + 8);
    *(v3 + 8) = v6 + 1;
  }

  *(result + 88) = v6;
  return result;
}

void physx::Sc::RigidSim::~RigidSim(physx::Sc::RigidSim *this)
{
  *this = &unk_1F5D1E8D8;
  v2 = *(*(this + 9) + 4288);
  v3 = *(this + 22);
  v5 = v3;
  physx::Cm::BitMapBase<physx::shdfnd::NonTrackingAllocator>::extend(v2 + 32, v3 + 1);
  *(*(v2 + 32) + ((v3 >> 3) & 0x1FFFFFFC)) |= 1 << v3;
  v4 = *(v2 + 56);
  if ((*(v2 + 60) & 0x7FFFFFFFu) <= v4)
  {
    physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::growAndPushBack(v2 + 48, &v5);
  }

  else
  {
    *(*(v2 + 48) + 4 * v4) = v3;
    ++*(v2 + 56);
  }

  *this = &unk_1F5D1E668;
  physx::Cm::OwnedArray<physx::Sc::Interaction *,physx::Sc::ActorSim,unsigned int,&physx::Sc::ActorSim::reallocInteractions>::releaseMem(this + 40, this);
}

{
  physx::Sc::RigidSim::~RigidSim(this);
  if (v1)
  {
    v2 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

    v2();
  }
}

uint64_t physx::Sc::RigidSim::notifyShapesOfTransformChange(physx::Sc::RigidSim *this)
{
  for (i = *(this + 7); i; i = *i)
  {
    physx::Sc::ShapeSim::markBoundsForUpdate(i, 0);
  }

  return notifyActorInteractionsOfTransformChange(this);
}

uint64_t physx::Sc::Scene::Scene(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 4119, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevel/api/include/PxsMaterialManager.h", 51);
  if (v6)
  {
    v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v7 - 8) = v7 - v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = 0;
  *a1 = v7;
  *(a1 + 8) = 128;
  v9 = v7 + 24;
  do
  {
    *(v9 + v8) = -1;
    v8 += 32;
  }

  while (v8 != 4096);
  *(a1 + 24) = a3;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 672) = 0x4000000000;
  *(a1 + 656) = 1;
  *(a1 + 664) = a1 + 144;
  *(a1 + 680) = 32;
  *(a1 + 688) = 2048;
  *(a1 + 696) = 0;
  *(a1 + 1240) = 0x4000000000;
  *(a1 + 1224) = 1;
  *(a1 + 1232) = a1 + 712;
  *(a1 + 1248) = 32;
  *(a1 + 1256) = 4096;
  *(a1 + 1264) = 0;
  *(a1 + 1808) = 0x4000000000;
  *(a1 + 1792) = 1;
  *(a1 + 1800) = a1 + 1280;
  *(a1 + 1816) = 32;
  *(a1 + 1824) = 0x2000;
  *(a1 + 1920) = 0u;
  *(a1 + 1936) = 0u;
  *(a1 + 1832) = 0u;
  *(a1 + 1964) = 1;
  *(a1 + 1984) = 0;
  *(a1 + 1968) = 0u;
  *(a1 + 1992) = 1;
  *(a1 + 1996) = 0u;
  *(a1 + 2012) = 0u;
  *(a1 + 2024) = 0u;
  *(a1 + 2040) = -3233808384;
  *(a1 + 2048) = 0;
  physx::shdfnd::internal::HashBase<physx::Sc::ArticulationCore *,physx::Sc::ArticulationCore *,physx::shdfnd::Hash<physx::Sc::ArticulationCore *>,physx::shdfnd::internal::HashSetBase<physx::Sc::ArticulationCore *,physx::shdfnd::Hash<physx::Sc::ArticulationCore *>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(a1 + 2000, 0x40u);
  *(a1 + 2152) = 0;
  *(a1 + 2160) = 0u;
  *(a1 + 2176) = 0u;
  *(a1 + 2192) = 0;
  *(a1 + 2096) = 0u;
  *(a1 + 2112) = 0u;
  *(a1 + 2128) = 0u;
  *(a1 + 2200) = -3233808384;
  *(a1 + 2208) = 0;
  physx::shdfnd::internal::HashBase<physx::Sc::ArticulationCore *,physx::Sc::ArticulationCore *,physx::shdfnd::Hash<physx::Sc::ArticulationCore *>,physx::shdfnd::internal::HashSetBase<physx::Sc::ArticulationCore *,physx::shdfnd::Hash<physx::Sc::ArticulationCore *>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(a1 + 2160, 0x40u);
  *(a1 + 2264) = 0;
  *(a1 + 2232) = 0u;
  *(a1 + 2248) = 0u;
  *(a1 + 2216) = 0u;
  *(a1 + 2272) = -3233808384;
  *(a1 + 2280) = 0;
  physx::shdfnd::internal::HashBase<physx::Sc::ConstraintSim *,physx::Sc::ConstraintSim *,physx::shdfnd::Hash<physx::Sc::ConstraintSim *>,physx::shdfnd::internal::HashSetBase<physx::Sc::ConstraintSim *,physx::shdfnd::Hash<physx::Sc::ConstraintSim *>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(a1 + 2232, 0x40u);
  *(a1 + 2824) = 0x4000000000;
  *(a1 + 2808) = 1;
  *(a1 + 2816) = a1 + 2296;
  *(a1 + 2832) = 64;
  *(a1 + 2840) = 0x2000;
  *(a1 + 2848) = 0;
  *(a1 + 3392) = 0x4000000000;
  *(a1 + 3376) = 1;
  *(a1 + 3384) = a1 + 2864;
  *(a1 + 3400) = 32;
  *(a1 + 3408) = 0x2000;
  *(a1 + 3416) = 0;
  *(a1 + 3960) = 0x4000000000;
  *(a1 + 3944) = 1;
  *(a1 + 3952) = a1 + 3432;
  *(a1 + 3968) = 21;
  *(a1 + 3976) = 0x2000;
  *(a1 + 3984) = 0u;
  *(a1 + 4032) = *(a2 + 72);
  *(a1 + 4040) = 0u;
  *(a1 + 4056) = 0u;
  *(a1 + 4072) = 0;
  *(a1 + 4080) = -3233808384;
  *(a1 + 4088) = 0;
  physx::shdfnd::internal::HashBase<physx::Sc::ArticulationCore *,physx::Sc::ArticulationCore *,physx::shdfnd::Hash<physx::Sc::ArticulationCore *>,physx::shdfnd::internal::HashSetBase<physx::Sc::ArticulationCore *,physx::shdfnd::Hash<physx::Sc::ArticulationCore *>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(a1 + 4040, 0x40u);
  *(a1 + 4128) = 0;
  *(a1 + 4112) = 0u;
  *(a1 + 4096) = 0u;
  *(a1 + 4136) = -3233808384;
  *(a1 + 4144) = 0;
  physx::shdfnd::internal::HashBase<physx::Sc::ArticulationCore *,physx::Sc::ArticulationCore *,physx::shdfnd::Hash<physx::Sc::ArticulationCore *>,physx::shdfnd::internal::HashSetBase<physx::Sc::ArticulationCore *,physx::shdfnd::Hash<physx::Sc::ArticulationCore *>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(a1 + 4096, 0x40u);
  *(a1 + 4154) = (*(a2 + 152) & 0x400) != 0;
  *(a1 + 4264) = 0;
  *(a1 + 4160) = 0u;
  *(a1 + 4176) = 0u;
  *(a1 + 4192) = 0u;
  *(a1 + 4208) = 0u;
  *(a1 + 4224) = 0u;
  *(a1 + 4240) = 0u;
  *(a1 + 4268) = *(a2 + 152);
  *(a1 + 4304) = 0;
  *(a1 + 4416) = 0;
  *(a1 + 4424) = 0;
  *(a1 + 4656) = 0;
  *(a1 + 4660) = 0;
  *(a1 + 4664) = 0;
  *(a1 + 4672) = 0;
  *(a1 + 4728) = 0u;
  *(a1 + 4408) = 0;
  *(a1 + 4376) = 0u;
  *(a1 + 4392) = 0u;
  *(a1 + 4508) = 0u;
  *(a1 + 4496) = 0u;
  *(a1 + 4480) = 0u;
  *(a1 + 4464) = 0u;
  *(a1 + 4448) = 0u;
  *(a1 + 4432) = 0u;
  *(a1 + 4744) = 0;
  *(a1 + 4720) = a3;
  *(a1 + 4712) = &unk_1F5D1F0A8;
  *(a1 + 4752) = a1;
  *(a1 + 4760) = "ScScene.secondPassNarrowPhase";
  *(a1 + 4776) = 0u;
  *(a1 + 4768) = &unk_1F5D1F1F8;
  *(a1 + 4792) = 0;
  *(a1 + 4800) = "ScScene.postNarrowPhase";
  *(a1 + 4856) = 0x400000000;
  *(a1 + 4840) = 1;
  *(a1 + 4848) = a1 + 4808;
  *(a1 + 4912) = 0x400000000;
  *(a1 + 4896) = 1;
  *(a1 + 4904) = a1 + 4864;
  *(a1 + 4920) = 0;
  v10 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v11 = "static const char *physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>::getName() [T = physx::shdfnd::MutexImpl]";
  }

  else
  {
    v11 = "<allocation names disabled>";
  }

  v12 = (*(*(v10 + 24) + 16))(v10 + 24, 72, v11);
  *(a1 + 4928) = v12;
  physx::shdfnd::MutexImpl::MutexImpl(v12);
  *(a1 + 4776) = a3;
  *(a1 + 4768) = &unk_1F5D1F138;
  *(a1 + 4936) = a1;
  *(a1 + 4952) = 0u;
  *(a1 + 4944) = &unk_1F5D1F1F8;
  *(a1 + 4968) = 0;
  *(a1 + 4976) = "ScScene.finalizationPhase";
  *(a1 + 5032) = 0x400000000;
  *(a1 + 5016) = 1;
  *(a1 + 5024) = a1 + 4984;
  *(a1 + 5088) = 0x400000000;
  *(a1 + 5072) = 1;
  *(a1 + 5080) = a1 + 5040;
  *(a1 + 5096) = 0;
  v13 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v14 = "static const char *physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>::getName() [T = physx::shdfnd::MutexImpl]";
  }

  else
  {
    v14 = "<allocation names disabled>";
  }

  v15 = (*(*(v13 + 24) + 16))(v13 + 24, 72, v14, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsMutex.h", 138);
  *(a1 + 5104) = v15;
  physx::shdfnd::MutexImpl::MutexImpl(v15);
  *(a1 + 4952) = a3;
  *(a1 + 4944) = &unk_1F5D1F250;
  *(a1 + 5112) = a1;
  *(a1 + 5136) = 0u;
  *(a1 + 5152) = 0;
  *(a1 + 5128) = a3;
  *(a1 + 5120) = &unk_1F5D1F2E0;
  *(a1 + 5160) = a1;
  *(a1 + 5168) = "ScScene.updateCCDMultiPass";
  *(a1 + 5296) = 0u;
  *(a1 + 5176) = 0u;
  *(a1 + 5192) = 0u;
  *(a1 + 5208) = 0u;
  *(a1 + 5224) = 0u;
  *(a1 + 5240) = 0u;
  *(a1 + 5256) = 0u;
  *(a1 + 5312) = 0;
  *(a1 + 5288) = a3;
  *(a1 + 5280) = &unk_1F5D1F370;
  *(a1 + 5320) = a1;
  *(a1 + 5328) = "ScScene.afterIntegration";
  *(a1 + 5352) = 0u;
  *(a1 + 5368) = 0;
  *(a1 + 5344) = a3;
  *(a1 + 5336) = &unk_1F5D1F400;
  *(a1 + 5376) = a1;
  *(a1 + 5384) = "ScScene.constraintProjection";
  *(a1 + 5408) = 0u;
  *(a1 + 5424) = 0;
  *(a1 + 5400) = a3;
  *(a1 + 5392) = &unk_1F5D1F490;
  *(a1 + 5432) = a1;
  *(a1 + 5440) = "ScScene.postSolver";
  *(a1 + 5464) = 0u;
  *(a1 + 5480) = 0;
  *(a1 + 5456) = a3;
  *(a1 + 5448) = &unk_1F5D1F520;
  *(a1 + 5488) = a1;
  *(a1 + 5496) = "ScScene.rigidBodySolver";
  *(a1 + 5520) = 0u;
  *(a1 + 5536) = 0;
  *(a1 + 5512) = a3;
  *(a1 + 5504) = &unk_1F5D1F5B0;
  *(a1 + 5544) = a1;
  *(a1 + 5552) = "ScScene.updateBodiesAndShapes";
  *(a1 + 5576) = 0u;
  *(a1 + 5592) = 0;
  *(a1 + 5568) = a3;
  *(a1 + 5560) = &unk_1F5D1F640;
  *(a1 + 5600) = a1;
  *(a1 + 5608) = "ScScene.updateSimulationController";
  *(a1 + 5632) = 0u;
  *(a1 + 5648) = 0;
  *(a1 + 5624) = a3;
  *(a1 + 5616) = &unk_1F5D1F6D0;
  *(a1 + 5656) = a1;
  *(a1 + 5664) = "ScScene.updateDynamics";
  *(a1 + 5688) = 0u;
  *(a1 + 5704) = 0;
  *(a1 + 5680) = a3;
  *(a1 + 5672) = &unk_1F5D1F760;
  *(a1 + 5712) = a1;
  *(a1 + 5720) = "ScScene.processLostContact";
  *(a1 + 5744) = 0u;
  *(a1 + 5760) = 0;
  *(a1 + 5736) = a3;
  *(a1 + 5728) = &unk_1F5D1F7F0;
  *(a1 + 5768) = a1;
  *(a1 + 5776) = "ScScene.processLostContact2";
  *(a1 + 5800) = 0u;
  *(a1 + 5816) = 0;
  *(a1 + 5792) = a3;
  *(a1 + 5784) = &unk_1F5D1F880;
  *(a1 + 5824) = a1;
  *(a1 + 5832) = "ScScene.processLostContact3";
  *(a1 + 5856) = 0u;
  *(a1 + 5872) = 0;
  *(a1 + 5848) = a3;
  *(a1 + 5840) = &unk_1F5D1F910;
  *(a1 + 5880) = a1;
  *(a1 + 5888) = "ScScene.destroyManagers";
  *(a1 + 5912) = 0u;
  *(a1 + 5928) = 0;
  *(a1 + 5904) = a3;
  *(a1 + 5896) = &unk_1F5D1F9A0;
  *(a1 + 5936) = a1;
  *(a1 + 5944) = "ScScene.lostTouchReports";
  *(a1 + 5968) = 0u;
  *(a1 + 5984) = 0;
  *(a1 + 5960) = a3;
  *(a1 + 5952) = &unk_1F5D1FA30;
  *(a1 + 5992) = a1;
  *(a1 + 6000) = "ScScene.unregisterInteractions";
  *(a1 + 6024) = 0u;
  *(a1 + 6040) = 0;
  *(a1 + 6016) = a3;
  *(a1 + 6008) = &unk_1F5D1FAC0;
  *(a1 + 6048) = a1;
  *(a1 + 6056) = "ScScene.processNpLostTouchTask";
  *(a1 + 6080) = 0u;
  *(a1 + 6096) = 0;
  *(a1 + 6072) = a3;
  *(a1 + 6064) = &unk_1F5D1FB50;
  *(a1 + 6104) = a1;
  *(a1 + 6112) = "ScScene.processNPLostTouchEvents";
  *(a1 + 6136) = 0u;
  *(a1 + 6152) = 0;
  *(a1 + 6128) = a3;
  *(a1 + 6120) = &unk_1F5D1FBE0;
  *(a1 + 6160) = a1;
  *(a1 + 6168) = "ScScene.postThirdPassIslandGenTask";
  *(a1 + 6192) = 0u;
  *(a1 + 6208) = 0;
  *(a1 + 6184) = a3;
  *(a1 + 6176) = &unk_1F5D1FC70;
  *(a1 + 6216) = a1;
  *(a1 + 6224) = "ScScene.postIslandGen";
  *(a1 + 6248) = 0u;
  *(a1 + 6264) = 0;
  *(a1 + 6240) = a3;
  *(a1 + 6232) = &unk_1F5D1FD00;
  *(a1 + 6272) = a1;
  *(a1 + 6280) = "ScScene.islandGen";
  *(a1 + 6304) = 0u;
  *(a1 + 6320) = 0;
  *(a1 + 6296) = a3;
  *(a1 + 6288) = &unk_1F5D1FD90;
  *(a1 + 6328) = a1;
  *(a1 + 6336) = "ScScene.preRigidBodyNarrowPhase";
  *(a1 + 6360) = 0u;
  *(a1 + 6376) = 0;
  *(a1 + 6352) = a3;
  *(a1 + 6344) = &unk_1F5D1FE20;
  *(a1 + 6384) = a1;
  *(a1 + 6392) = "ScScene.setEdgesConnectedTask";
  *(a1 + 6416) = 0u;
  *(a1 + 6432) = 0;
  *(a1 + 6408) = a3;
  *(a1 + 6400) = &unk_1F5D1FEB0;
  *(a1 + 6440) = a1;
  *(a1 + 6448) = "ScScene.fetchPatchEventsTask";
  *(a1 + 6472) = 0u;
  *(a1 + 6488) = 0;
  *(a1 + 6464) = a3;
  *(a1 + 6456) = &unk_1F5D1FF40;
  *(a1 + 6496) = a1;
  *(a1 + 6504) = "ScScene.processLostSolverPatchesTask";
  *(a1 + 6528) = 0u;
  *(a1 + 6544) = 0;
  *(a1 + 6520) = a3;
  *(a1 + 6512) = &unk_1F5D1FFD0;
  *(a1 + 6552) = a1;
  *(a1 + 6560) = "ScScene.rigidBodyNarrowPhase";
  *(a1 + 6584) = 0u;
  *(a1 + 6600) = 0;
  *(a1 + 6576) = a3;
  *(a1 + 6568) = &unk_1F5D20060;
  *(a1 + 6608) = a1;
  *(a1 + 6616) = "ScScene.unblockNarrowPhase";
  *(a1 + 6640) = 0u;
  *(a1 + 6656) = 0;
  *(a1 + 6632) = a3;
  *(a1 + 6624) = &unk_1F5D200F0;
  *(a1 + 6664) = a1;
  *(a1 + 6672) = "ScScene.postBroadPhase";
  *(a1 + 6696) = 0u;
  *(a1 + 6712) = 0;
  *(a1 + 6688) = a3;
  *(a1 + 6680) = &unk_1F5D20180;
  *(a1 + 6720) = a1;
  *(a1 + 6728) = "ScScene.postBroadPhaseCont";
  *(a1 + 6752) = 0u;
  *(a1 + 6768) = 0;
  *(a1 + 6744) = a3;
  *(a1 + 6736) = &unk_1F5D20210;
  *(a1 + 6776) = a1;
  *(a1 + 6784) = "ScScene.postBroadPhase2";
  *(a1 + 6800) = 0u;
  *(a1 + 6792) = &unk_1F5D1F1F8;
  *(a1 + 6816) = 0;
  *(a1 + 6824) = "ScScene.postBroadPhase3";
  *(a1 + 6880) = 0x400000000;
  *(a1 + 6864) = 1;
  *(a1 + 6872) = a1 + 6832;
  *(a1 + 6936) = 0x400000000;
  *(a1 + 6920) = 1;
  *(a1 + 6928) = a1 + 6888;
  *(a1 + 6944) = 0;
  v16 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v17 = "static const char *physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>::getName() [T = physx::shdfnd::MutexImpl]";
  }

  else
  {
    v17 = "<allocation names disabled>";
  }

  v18 = (*(*(v16 + 24) + 16))(v16 + 24, 72, v17, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsMutex.h", 138);
  *(a1 + 6952) = v18;
  physx::shdfnd::MutexImpl::MutexImpl(v18);
  *(a1 + 6800) = a3;
  *(a1 + 6792) = &unk_1F5D202A0;
  *(a1 + 6960) = a1;
  *(a1 + 6984) = 0;
  *(a1 + 6992) = 0;
  *(a1 + 7000) = 0;
  *(a1 + 6976) = a3;
  *(a1 + 6968) = &unk_1F5D20330;
  *(a1 + 7008) = a1;
  *(a1 + 7016) = "ScScene.preallocateContactManagers";
  *(a1 + 7040) = 0;
  *(a1 + 7048) = 0;
  *(a1 + 7056) = 0;
  *(a1 + 7032) = a3;
  *(a1 + 7024) = &unk_1F5D203C0;
  *(a1 + 7064) = a1;
  *(a1 + 7072) = "ScScene.islandInsertion";
  *(a1 + 7096) = 0;
  *(a1 + 7104) = 0;
  *(a1 + 7112) = 0;
  *(a1 + 7088) = a3;
  *(a1 + 7080) = &unk_1F5D20450;
  *(a1 + 7120) = a1;
  *(a1 + 7128) = "ScScene.registerContactManagers";
  *(a1 + 7152) = 0u;
  *(a1 + 7168) = 0;
  *(a1 + 7144) = a3;
  *(a1 + 7136) = &unk_1F5D204E0;
  *(a1 + 7176) = a1;
  *(a1 + 7184) = "ScScene.registerInteractions";
  *(a1 + 7208) = 0u;
  *(a1 + 7224) = 0;
  *(a1 + 7200) = a3;
  *(a1 + 7192) = &unk_1F5D20570;
  *(a1 + 7232) = a1;
  *(a1 + 7240) = "ScScene.registerSceneInteractions";
  *(a1 + 7264) = 0u;
  *(a1 + 7280) = 0;
  *(a1 + 7256) = a3;
  *(a1 + 7248) = &unk_1F5D20600;
  *(a1 + 7288) = a1;
  *(a1 + 7296) = "ScScene.broadPhase";
  *(a1 + 7320) = 0u;
  *(a1 + 7336) = 0;
  *(a1 + 7312) = a3;
  *(a1 + 7304) = &unk_1F5D20690;
  *(a1 + 7344) = a1;
  *(a1 + 7352) = "ScScene.advanceStep";
  *(a1 + 7376) = 0u;
  *(a1 + 7392) = 0;
  *(a1 + 7368) = a3;
  *(a1 + 7360) = &unk_1F5D20720;
  *(a1 + 7400) = a1;
  *(a1 + 7408) = "ScScene.collideStep";
  physx::Cm::FlushPool::FlushPool((a1 + 7416), 0x4000u);
  *(a1 + 7472) = 0;
  *(a1 + 7476) = 0u;
  *(a1 + 7492) = 0u;
  *(a1 + 7508) = 0u;
  *(a1 + 7524) = 0;
  *(a1 + 7528) = 1061158912;
  *(a1 + 7532) = -1;
  *(a1 + 7536) = 0;
  physx::shdfnd::internal::HashBase<physx::Sc::BodySim const*,physx::Sc::BodySim const*,physx::shdfnd::Hash<physx::Sc::BodySim const*>,physx::shdfnd::internal::HashSetBase<physx::Sc::BodySim const*,physx::shdfnd::Hash<physx::Sc::BodySim const*>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(a1 + 7488, 0x40u);
  *(a1 + 7632) = 0;
  *(a1 + 7640) = 0;
  *(a1 + 1876) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 7544) = 0u;
  *(a1 + 7560) = 0u;
  *(a1 + 7576) = 0u;
  *(a1 + 7592) = 0u;
  *(a1 + 7608) = 0u;
  *(a1 + 7624) = 0;
  v19 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v20 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Sc::SimStats>::getName() [T = physx::Sc::SimStats]";
  }

  else
  {
    v20 = "<allocation names disabled>";
  }

  v21 = (*(*(v19 + 24) + 16))(v19 + 24, 156, v20, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/simulationcontroller/src/ScScene.cpp", 645);
  *v21 = 0u;
  v21[1] = 0u;
  v21[2] = 0u;
  v21[3] = 0u;
  v21[4] = 0u;
  v21[5] = 0u;
  v21[6] = 0u;
  v21[7] = 0u;
  v21[8] = 0u;
  *(v21 + 140) = 0u;
  *(a1 + 4256) = v21;
  v22 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v23 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Sc::ObjectIDTracker>::getName() [T = physx::Sc::ObjectIDTracker]";
  }

  else
  {
    v23 = "<allocation names disabled>";
  }

  v24 = (*(*(v22 + 24) + 16))(v22 + 24, 64, v23, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/simulationcontroller/src/ScScene.cpp", 646);
  *(v24 + 8) = 0;
  *(v24 + 48) = 0;
  *(v24 + 56) = 0;
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  *(v24 + 32) = 0;
  *(v24 + 40) = 0;
  *(a1 + 4272) = v24;
  v25 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v26 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Sc::ObjectIDTracker>::getName() [T = physx::Sc::ObjectIDTracker]";
  }

  else
  {
    v26 = "<allocation names disabled>";
  }

  v27 = (*(*(v25 + 24) + 16))(v25 + 24, 64, v26, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/simulationcontroller/src/ScScene.cpp", 647);
  *(v27 + 8) = 0;
  *(v27 + 48) = 0;
  *(v27 + 56) = 0;
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  *(v27 + 32) = 0;
  *(v27 + 40) = 0;
  *(a1 + 4280) = v27;
  v28 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v29 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Sc::ObjectIDTracker>::getName() [T = physx::Sc::ObjectIDTracker]";
  }

  else
  {
    v29 = "<allocation names disabled>";
  }

  v30 = (*(*(v28 + 24) + 16))(v28 + 24, 64, v29, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/simulationcontroller/src/ScScene.cpp", 648);
  *(v30 + 8) = 0;
  *(v30 + 48) = 0;
  *(v30 + 56) = 0;
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  *(v30 + 32) = 0;
  *(v30 + 40) = 0;
  *(a1 + 4288) = v30;
  v31 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v32 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Sc::ObjectIDTracker>::getName() [T = physx::Sc::ObjectIDTracker]";
  }

  else
  {
    v32 = "<allocation names disabled>";
  }

  v33 = (*(*(v31 + 24) + 16))(v31 + 24, 64, v32, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/simulationcontroller/src/ScScene.cpp", 649);
  *(v33 + 8) = 0;
  *(v33 + 48) = 0;
  *(v33 + 56) = 0;
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(v33 + 32) = 0;
  *(v33 + 40) = 0;
  *(a1 + 4296) = v33;
  v34 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))();
  *(a1 + 2144) = v34;
  *v34 = 0;
  v34[1] = 0;
  v35 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v36 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Cm::PreallocatingPool<physx::Sc::StaticSim>>::getName() [T = physx::Cm::PreallocatingPool<physx::Sc::StaticSim>]";
  }

  else
  {
    v36 = "<allocation names disabled>";
  }

  v37 = (*(*(v35 + 24) + 16))(v35 + 24, 48, v36, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/simulationcontroller/src/ScScene.cpp", 654);
  *(a1 + 4320) = physx::Cm::PreallocatingRegionManager::PreallocatingRegionManager(v37, 0x60u, "StaticSim", v38);
  v39 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v40 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Cm::PreallocatingPool<physx::Sc::BodySim>>::getName() [T = physx::Cm::PreallocatingPool<physx::Sc::BodySim>]";
  }

  else
  {
    v40 = "<allocation names disabled>";
  }

  v41 = (*(*(v39 + 24) + 16))(v39 + 24, 48, v40, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/simulationcontroller/src/ScScene.cpp", 655);
  *(a1 + 4328) = physx::Cm::PreallocatingRegionManager::PreallocatingRegionManager(v41, 0xD0u, "BodySim", v42);
  v43 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v44 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Cm::PreallocatingPool<physx::Sc::ShapeSim>>::getName() [T = physx::Cm::PreallocatingPool<physx::Sc::ShapeSim>]";
  }

  else
  {
    v44 = "<allocation names disabled>";
  }

  v45 = (*(*(v43 + 24) + 16))(v43 + 24, 48, v44, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/simulationcontroller/src/ScScene.cpp", 656);
  *(a1 + 4312) = physx::Cm::PreallocatingRegionManager::PreallocatingRegionManager(v45, 0x48u, "ShapeSim", v46);
  v47 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v48 = "static const char *physx::shdfnd::ReflectionAllocator<physx::shdfnd::Pool<physx::Sc::ConstraintSim>>::getName() [T = physx::shdfnd::Pool<physx::Sc::ConstraintSim>]";
  }

  else
  {
    v48 = "<allocation names disabled>";
  }

  v49 = (*(*(v47 + 24) + 16))(v47 + 24, 568, v48, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/simulationcontroller/src/ScScene.cpp", 657);
  *(v49 + 536) = 0x4000000000;
  *(v49 + 520) = 1;
  *(v49 + 528) = v49 + 8;
  *(v49 + 544) = 32;
  *(v49 + 552) = 4096;
  *(v49 + 560) = 0;
  *(a1 + 4336) = v49;
  v50 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v51 = "static const char *physx::shdfnd::ReflectionAllocator<physx::shdfnd::Pool<physx::Sc::ConstraintInteraction>>::getName() [T = physx::shdfnd::Pool<physx::Sc::ConstraintInteraction>]";
  }

  else
  {
    v51 = "<allocation names disabled>";
  }

  v52 = (*(*(v50 + 24) + 16))(v50 + 24, 568, v51, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/simulationcontroller/src/ScScene.cpp", 658);
  *(v52 + 536) = 0x4000000000;
  *(v52 + 520) = 1;
  *(v52 + 528) = v52 + 8;
  *(v52 + 544) = 32;
  *(v52 + 552) = 1536;
  *(v52 + 560) = 0;
  *(a1 + 4360) = v52;
  v53 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v54 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Sc::LLArticulationPool>::getName() [T = physx::Sc::LLArticulationPool]";
  }

  else
  {
    v54 = "<allocation names disabled>";
  }

  v55 = (*(*(v53 + 24) + 16))(v53 + 24, 568, v54, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/simulationcontroller/src/ScScene.cpp", 659);
  *(v55 + 536) = 0x4000000000;
  *(v55 + 520) = 1;
  *(v55 + 528) = v55 + 8;
  *(v55 + 544) = 32;
  *(v55 + 552) = 10240;
  *(v55 + 560) = 0;
  *(a1 + 4344) = v55;
  v56 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v57 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Sc::LLArticulationRCPool>::getName() [T = physx::Sc::LLArticulationRCPool]";
  }

  else
  {
    v57 = "<allocation names disabled>";
  }

  v58 = (*(*(v56 + 24) + 16))(v56 + 24, 568, v57, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/simulationcontroller/src/ScScene.cpp", 660);
  *(v58 + 536) = 0x4000000000;
  *(v58 + 520) = 1;
  *(v58 + 528) = v58 + 8;
  *(v58 + 544) = 32;
  *(v58 + 552) = 28672;
  *(v58 + 560) = 0;
  *(a1 + 4352) = v58;
  v59 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v60 = "static const char *physx::shdfnd::ReflectionAllocator<physx::shdfnd::Pool<physx::Sc::SimStateData>>::getName() [T = physx::shdfnd::Pool<physx::Sc::SimStateData>]";
  }

  else
  {
    v60 = "<allocation names disabled>";
  }

  v61 = (*(*(v59 + 24) + 16))(v59 + 24, 568, v60, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/simulationcontroller/src/ScScene.cpp", 662);
  *(v61 + 536) = 0x4000000000;
  *(v61 + 520) = 1;
  *(v61 + 528) = v61 + 8;
  *(v61 + 544) = 32;
  *(v61 + 552) = 2048;
  *(v61 + 560) = 0;
  *(a1 + 4368) = v61;
  v62 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v63 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Sc::Client>::getName() [T = physx::Sc::Client]";
  }

  else
  {
    v63 = "<allocation names disabled>";
  }

  v64 = (*(*(v62 + 24) + 16))(v62 + 24, 1, v63, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/simulationcontroller/src/ScScene.cpp", 664);
  v136 = v64;
  v65 = *(a1 + 4168);
  if ((*(a1 + 4172) & 0x7FFFFFFFu) <= v65)
  {
    physx::shdfnd::Array<physx::Sc::Client *,physx::shdfnd::ReflectionAllocator<physx::Sc::Client *>>::growAndPushBack(a1 + 4160, &v136);
  }

  else
  {
    *(*(a1 + 4160) + 8 * v65) = v64;
    *(a1 + 4168) = v65 + 1;
  }

  v66 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v67 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Sc::ConstraintProjectionManager>::getName() [T = physx::Sc::ConstraintProjectionManager]";
  }

  else
  {
    v67 = "<allocation names disabled>";
  }

  v68 = (*(*(v66 + 24) + 16))(v66 + 24, 688, v67, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/simulationcontroller/src/ScScene.cpp", 665);
  *(a1 + 2056) = physx::Sc::ConstraintProjectionManager::ConstraintProjectionManager(v68);
  v69 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v70 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Sc::SqBoundsManager>::getName() [T = physx::Sc::SqBoundsManager]";
  }

  else
  {
    v70 = "<allocation names disabled>";
  }

  v71 = (*(*(v69 + 24) + 16))(v69 + 24, 64, v70, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/simulationcontroller/src/ScScene.cpp", 667);
  *v71 = 0u;
  v71[1] = 0u;
  v71[2] = 0u;
  v71[3] = 0u;
  *(a1 + 2088) = v71;
  v72 = (*(*physx::shdfnd::Foundation::mInstance + 8))(physx::shdfnd::Foundation::mInstance);
  *(a1 + 7456) = physx::PxTaskManager::createTaskManager(v72, *(a2 + 160));
  *(a1 + 7464) = *(a2 + 168);
  *(a1 + 4684) = 0;
  *(a1 + 4692) = 0;
  *(a1 + 4676) = 0;
  *(a1 + 4700) = 0;
  *(a1 + 7473) = 0;
  v73 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v74 = "static const char *physx::shdfnd::ReflectionAllocator<physx::PxsContext>::getName() [T = physx::PxsContext]";
  }

  else
  {
    v74 = "<allocation names disabled>";
  }

  v75 = (*(*(v73 + 24) + 16))(v73 + 24, 2624, v74, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/simulationcontroller/src/ScScene.cpp", 710);
  v76 = physx::PxsContext::PxsContext(v75, a2, *(a1 + 7456), a1 + 7416, *(a1 + 7464), a3);
  *(a1 + 1840) = v76;
  if (!v76)
  {
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 4, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/simulationcontroller/src/ScScene.cpp", 714, "Failed to create context!", v77, v78, v79, v135);
    return a1;
  }

  *(v76 + 424) = a1;
  *(a1 + 1896) = 0;
  v80 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))();
  v80[1] = 0;
  v80[2] = 0;
  *v80 = &unk_1F5D1BD70;
  *(a1 + 1896) = v80;
  if (*(a2 + 80) == 3)
  {
    v81 = 2;
  }

  else
  {
    v81 = *(a2 + 80);
  }

  *(a1 + 1856) = physx::Bp::BroadPhase::create(v81, *(a2 + 120), *(a2 + 124), *(a2 + 104), *(a2 + 108), a3);
  v82 = (*(**(a1 + 1896) + 16))(*(a1 + 1896), *(a2 + 296));
  v136 = v82;
  v83 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v84 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Bp::BoundsArray>::getName() [T = physx::Bp::BoundsArray]";
  }

  else
  {
    v84 = "<allocation names disabled>";
  }

  v85 = (*(*(v83 + 24) + 16))(v83 + 24, 32, v84, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/simulationcontroller/src/ScScene.cpp", 774);
  v85[1] = 0;
  v85[2] = 0;
  *v85 = v82;
  *(a1 + 2064) = v85;
  v86 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))();
  v86[1] = 0;
  v86[2] = 0;
  *v86 = v82;
  *(a1 + 2072) = v86;
  *(a1 + 2080) = 0;
  v87 = *(a1 + 4268);
  v88 = (v87 >> 14) & 1;
  v89 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))();
  *(a1 + 1880) = physx::IG::SimpleIslandManager::SimpleIslandManager(v89, v88, a3);
  v90 = *(a1 + 1840);
  v91 = *(v90 + 1920);
  v92 = *(v90 + 1912);
  v93 = *(a1 + 4154);
  if (*(a2 + 132))
  {
    v94 = physx::Dy::DynamicsTGSContext::create(v90 + 40, v90, v91, v90 + 1936, v92, v82, a1, v89 + 224, *(a2 + 300), a3, v93, v88, (v87 & 8) != 0);
  }

  else
  {
    v94 = physx::Dy::DynamicsContext::create(v90 + 40, v90, v91, v90 + 1936, v92, v82, a1, v89 + 224, *(a2 + 216), a3, v93, v88, (v87 & 8) != 0, (*(a2 + 152) & 0x8000) != 0);
  }

  *(a1 + 1888) = v94;
  v96 = *(a1 + 1840);
  *(v96 + 222) = physx::PxsNphaseImplementationContext::create(v96, (*(a1 + 1880) + 224), v95);
  v97 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))();
  *v97 = &unk_1F5D1E900;
  v97[1] = a1;
  *(a1 + 1912) = v97;
  v98 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))();
  *v98 = &unk_1F5D20BC0;
  v98[1] = v97;
  *(a1 + 1904) = v98;
  v99 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v100 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Bp::AABBManager>::getName() [T = physx::Bp::AABBManager]";
  }

  else
  {
    v100 = "<allocation names disabled>";
  }

  v101 = (*(*(v99 + 24) + 16))(v99 + 24, 800, v100, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/simulationcontroller/src/ScScene.cpp", 808);
  v103 = physx::Bp::AABBManager::AABBManager(v101, *(a1 + 1856), *(a1 + 2064), *(a1 + 2072), v102, *(a2 + 108) + *(a2 + 104), &v136, a3, *(a2 + 72), *(a2 + 76));
  *(a1 + 1848) = v103;
  v104 = *(a2 + 100);
  if (v104)
  {
    physx::Cm::BitMapBase<physx::shdfnd::VirtualAllocator>::extend(v103 + 224, ((2 * v104) & 0xFFFFFF00) + 256);
  }

  v105 = *(a1 + 1840);
  v106 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))();
  *(v106 + 8) = 0;
  *(v106 + 16) = 0;
  *v106 = v82;
  *(v106 + 28) = 1;
  *(v106 + 24) = 0;
  *(v105 + 2592) = v106;
  v107 = *(a1 + 1840);
  *(v107 + 2600) = *(a1 + 2072);
  *(a1 + 1864) = physx::PxsCCDContext::create(v107, *(*(a1 + 1888) + 8), *(v107 + 1776), *(a2 + 228));
  v108 = *(a1 + 1888);
  *(v108 + 140) = *(a2 + 200);
  *(v108 + 124) = *(a2 + 140);
  *(v108 + 128) = vrev64_s32(*(a2 + 144));
  v109 = *physx::Sc::Physics::mInstance;
  *(v108 + 136) = *physx::Sc::Physics::mInstance * 0.025;
  v110 = *(a1 + 1840);
  *(v110 + 288) = v109 * 0.01;
  *(v110 + 292) = v109;
  *(v108 + 120) = -*(a2 + 136);
  v111 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v112 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Sc::StaticCore>::getName() [T = physx::Sc::StaticCore]";
  }

  else
  {
    v112 = "<allocation names disabled>";
  }

  v113 = (*(*(v111 + 24) + 16))(v111 + 24, 48, v112, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/simulationcontroller/src/ScScene.cpp", 887);
  *v113 = 0;
  *(v113 + 8) = 0xFFFFFF;
  *(v113 + 12) = 1;
  *(v113 + 14) = 0;
  *(v113 + 45) = 0;
  *(v113 + 46) = 0;
  *(v113 + 16) = xmmword_1E30474D0;
  *(v113 + 32) = 0;
  *(v113 + 37) = 0;
  v114 = *(a1 + 4320);
  v115 = *(v114 + 16) + 24 * *(v114 + 8);
  v116 = *(v115 + 8);
  if (v116)
  {
    *(v115 + 8) = *v116;
LABEL_94:
    v116 = physx::Sc::RigidSim::RigidSim(v116, a1, v113);
    *v116 = &unk_1F5D207B0;
    goto LABEL_95;
  }

  v117 = *(v115 + 16);
  if (v117 != *v114)
  {
    v118 = *(v114 + 4);
    *(v115 + 16) = v117 + 1;
    v119 = *v115;
    if (v119)
    {
      v116 = (v119 + (v117 * v118));
      goto LABEL_94;
    }
  }

  v116 = physx::Cm::PreallocatingRegionManager::searchForMemory(v114);
  if (v116)
  {
    goto LABEL_94;
  }

LABEL_95:
  *(a1 + 4304) = v116;
  v120 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v121 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Sc::NPhaseCore>::getName() [T = physx::Sc::NPhaseCore]";
  }

  else
  {
    v121 = "<allocation names disabled>";
  }

  v122 = (*(*(v120 + 24) + 16))(v120 + 24, 3776, v121, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/simulationcontroller/src/ScScene.cpp", 891);
  *(a1 + 3992) = physx::Sc::NPhaseCore::NPhaseCore(v122, a1, a2);
  v123 = -2;
  for (i = 1132; i != 1164; ++i)
  {
    *(a1 + 4 * i) = ~v123;
    v123 *= 2;
  }

  *(a1 + 4152) = 257;
  v125 = *(a2 + 112);
  *(a1 + 1920) = *(a2 + 96);
  *(a1 + 1936) = v125;
  *(a1 + 4248) = *(a2 + 88);
  *(a1 + 1952) = *a2;
  *(a1 + 1960) = *(a2 + 8);
  *(a1 + 1964) = 1;
  *(*(a1 + 1888) + 148) = *(a2 + 128);
  v126 = *(a2 + 152);
  v127 = *(a1 + 1840);
  *(v127 + 2584) = (v126 & 0x40) != 0;
  *(v127 + 2585) = (v126 & 0x100) == 0;
  physx::Sc::Scene::setSimulationEventCallback(a1, *(a2 + 16));
  v128 = *(a1 + 1840);
  *(v128 + 1768) = *(a2 + 24);
  (*(**(v128 + 1776) + 176))(*(v128 + 1776));
  v129 = *(a1 + 1864);
  *(v129 + 168) = *(a2 + 32);
  *(v129 + 436) = *(a2 + 224);
  v130 = *(a2 + 40);
  if (v130)
  {
    if (*(a2 + 48))
    {
      v131 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))();
      v130 = *(a2 + 40);
      v132 = *(a2 + 48);
    }

    else
    {
      v132 = 0;
      v131 = 0;
    }

    *(a1 + 4000) = v131;
    memcpy(v131, v130, v132);
    v133 = *(a2 + 48);
    *(a1 + 4008) = v133;
    *(a1 + 4012) = v133;
  }

  else
  {
    *(a1 + 4000) = 0u;
  }

  *(a1 + 4016) = *(a2 + 56);
  return a1;
}