uint64_t physx::NpActorTemplate<physx::PxArticulationLink>::getActorFlags@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
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

int32x2_t *physx::NpActorTemplate<physx::PxArticulationLink>::setDominanceGroup(uint64_t a1, char a2)
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

uint64_t physx::NpActorTemplate<physx::PxArticulationLink>::getDominanceGroup(uint64_t a1)
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

uint64_t physx::NpActorTemplate<physx::PxArticulationLink>::setOwnerClient(uint64_t result, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
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

uint64_t physx::NpActorTemplate<physx::PxArticulationLink>::getAggregate(uint64_t a1)
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

uint64_t physx::NpRigidActorTemplate<physx::PxArticulationLink>::detachShape(physx::PxRigidActor *a1, physx::NpShape *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
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

uint64_t physx::NpRigidActorTemplate<physx::PxArticulationLink>::getShapes(uint64_t a1, void *a2, unsigned int a3, int a4)
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

uint64_t physx::NpRigidActorTemplate<physx::PxArticulationLink>::getNbConstraints(uint64_t a1)
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

float physx::NpRigidBodyTemplate<physx::PxArticulationLink>::getCMassLocalPose@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

float *physx::NpRigidBodyTemplate<physx::PxArticulationLink>::setMass(uint64_t a1, float a2)
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

float physx::NpRigidBodyTemplate<physx::PxArticulationLink>::getMass(uint64_t a1)
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

float physx::NpRigidBodyTemplate<physx::PxArticulationLink>::getInvMass(uint64_t a1)
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

int32x2_t *physx::NpRigidBodyTemplate<physx::PxArticulationLink>::setMassSpaceInertiaTensor(uint64_t a1, float32x2_t *a2)
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

float32x2_t *physx::NpRigidBodyTemplate<physx::PxArticulationLink>::getMassSpaceInertiaTensor@<X0>(float32x2_t *result@<X0>, uint64_t a2@<X8>)
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

float physx::NpRigidBodyTemplate<physx::PxArticulationLink>::getMassSpaceInvInertiaTensor@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

float physx::NpRigidBodyTemplate<physx::PxArticulationLink>::getLinearVelocity@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(a1 + 348);
  result = *(a1 + 356);
  *(a2 + 8) = result;
  return result;
}

float physx::NpRigidBodyTemplate<physx::PxArticulationLink>::getAngularVelocity@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(a1 + 360);
  result = *(a1 + 368);
  *(a2 + 8) = result;
  return result;
}

void physx::NpRigidBodyTemplate<physx::PxArticulationLink>::setRigidBodyFlag(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
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

void physx::NpRigidBodyTemplate<physx::PxArticulationLink>::setRigidBodyFlags(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
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

uint64_t physx::NpRigidBodyTemplate<physx::PxArticulationLink>::getRigidBodyFlags@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
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

int32x2_t *physx::NpRigidBodyTemplate<physx::PxArticulationLink>::setMinCCDAdvanceCoefficient(int32x2_t *result, float a2)
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

float physx::NpRigidBodyTemplate<physx::PxArticulationLink>::getMinCCDAdvanceCoefficient(uint64_t a1)
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

int32x2_t *physx::NpRigidBodyTemplate<physx::PxArticulationLink>::setMaxDepenetrationVelocity(int32x2_t *result, float a2)
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

float physx::NpRigidBodyTemplate<physx::PxArticulationLink>::getMaxDepenetrationVelocity(uint64_t a1)
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

float *physx::NpRigidBodyTemplate<physx::PxArticulationLink>::setMaxContactImpulse(uint64_t a1, float a2)
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

float physx::NpRigidBodyTemplate<physx::PxArticulationLink>::getMaxContactImpulse(uint64_t a1)
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

uint64_t physx::NpRigidBodyTemplate<physx::PxArticulationLink>::getInternalIslandNodeIndex(uint64_t a1)
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

uint64_t physx::NpArticulationJointTemplate<physx::PxArticulationJoint>::release(uint64_t a1)
{
  physx::NpPhysics::notifyDeletionListeners(physx::NpPhysics::mInstance, a1, 0, 1);
  if (((*(a1 + 24) >> 30) - 1) <= 1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      physx::Scb::Scene::remove<physx::Scb::ArticulationJoint>(v2, a1 + 16, v2 + 1008);
    }
  }

  return physx::Scb::Base::destroy(a1 + 16);
}

uint64_t physx::NpArticulationJointTemplate<physx::PxArticulationJoint>::getImpl(uint64_t a1)
{
  return a1 + 16;
}

{
  return a1 + 16;
}

uint64_t physx::NpArticulationTemplate<physx::PxArticulation>::release(uint64_t a1)
{
  physx::NpPhysics::notifyDeletionListeners(physx::NpPhysics::mInstance, a1, *(a1 + 16), 1);
  v2 = *(a1 + 152);
  if (v2)
  {
    v3 = 0;
    do
    {
      v3 %= v2;
      v4 = *(*(a1 + 144) + 8 * v3);
      if ((*(*v4 + 520))(v4))
      {
        ++v3;
      }

      else
      {
        physx::NpArticulationLink::releaseInternal(*(*(a1 + 144) + 8 * v3));
      }

      v2 = *(a1 + 152);
    }

    while (v2);
  }

  if (((*(a1 + 32) >> 30) - 1) <= 1)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      physx::Scb::Scene::removeArticulation(*(a1 + 24), (a1 + 24));
      physx::shdfnd::internal::HashSetBase<physx::Sc::BodySim const*,physx::shdfnd::Hash<physx::Sc::BodySim const*>,physx::shdfnd::NonTrackingAllocator,true>::erase(v5 + 1143, a1);
    }
  }

  *(a1 + 152) = 0;

  return physx::Scb::Base::destroy(a1 + 24);
}

uint64_t physx::NpArticulationTemplate<physx::PxArticulation>::getScene(uint64_t a1)
{
  if (((*(a1 + 32) >> 30) - 1) > 1)
  {
    return 0;
  }

  v1 = *(a1 + 24);
  if (v1)
  {
    return v1 - 16;
  }

  else
  {
    return 0;
  }
}

int32x2_t *physx::NpArticulationTemplate<physx::PxArticulation>::setSolverIterationCounts(int32x2_t *result, unsigned __int8 a2, __int16 a3)
{
  v3 = result;
  v4 = a2 | (a3 << 8);
  v5 = result[4].u32[0];
  if (v5 >> 30 == 2)
  {
    result = result[3];
    if (result[961].i8[1])
    {
      goto LABEL_5;
    }

LABEL_8:
    v3[8].i16[2] = v4;
    return result;
  }

  if (v5 >> 30 != 3)
  {
    goto LABEL_8;
  }

  result = result[3];
LABEL_5:
  Stream = v3[5];
  if (!Stream)
  {
    Stream = physx::Scb::Scene::getStream(result, HIBYTE(v5) & 0xF);
    v3[5] = Stream;
    result = v3[3];
  }

  *(Stream + 20) = v4;
  result = physx::Scb::Scene::scheduleForUpdate(result, &v3[3]);
  v3[4].i32[0] |= 0x20u;
  return result;
}

uint64_t physx::NpArticulationTemplate<physx::PxArticulation>::getSolverIterationCounts(uint64_t result, _DWORD *a2, unsigned int *a3)
{
  if ((*(result + 32) & 0x20) != 0)
  {
    v3 = (*(result + 40) + 20);
  }

  else
  {
    v3 = (result + 68);
  }

  v4 = *v3;
  *a3 = v4 >> 8;
  *a2 = v4;
  return result;
}

int32x2_t *physx::NpArticulationTemplate<physx::PxArticulation>::setSleepThreshold(int32x2_t *result, float a2)
{
  v3 = result;
  v4 = result[4].u32[0];
  if (v4 >> 30 == 2)
  {
    result = result[3];
    if (result[961].i8[1])
    {
      goto LABEL_5;
    }

LABEL_8:
    *&v3[9].i32[1] = a2;
    return result;
  }

  if (v4 >> 30 != 3)
  {
    goto LABEL_8;
  }

  result = result[3];
LABEL_5:
  Stream = v3[5];
  if (!Stream)
  {
    Stream = physx::Scb::Scene::getStream(result, HIBYTE(v4) & 0xF);
    v3[5] = Stream;
    result = v3[3];
  }

  *(Stream + 16) = a2;
  result = physx::Scb::Scene::scheduleForUpdate(result, &v3[3]);
  v3[4].i32[0] |= 0x10u;
  return result;
}

float physx::NpArticulationTemplate<physx::PxArticulation>::getSleepThreshold(uint64_t a1)
{
  if ((*(a1 + 32) & 0x10) != 0)
  {
    v1 = *(a1 + 40) + 16;
  }

  else
  {
    v1 = a1 + 76;
  }

  return *v1;
}

int32x2_t *physx::NpArticulationTemplate<physx::PxArticulation>::setStabilizationThreshold(int32x2_t *result, float a2)
{
  v3 = result;
  v4 = result[4].u32[0];
  if (v4 >> 30 == 2)
  {
    result = result[3];
    if (result[961].i8[1])
    {
      goto LABEL_5;
    }

LABEL_8:
    *v3[10].i32 = a2;
    return result;
  }

  if (v4 >> 30 != 3)
  {
    goto LABEL_8;
  }

  result = result[3];
LABEL_5:
  Stream = v3[5];
  if (!Stream)
  {
    Stream = physx::Scb::Scene::getStream(result, HIBYTE(v4) & 0xF);
    v3[5] = Stream;
    result = v3[3];
  }

  *(Stream + 24) = a2;
  result = physx::Scb::Scene::scheduleForUpdate(result, &v3[3]);
  v3[4].i32[0] |= 0x40u;
  return result;
}

float physx::NpArticulationTemplate<physx::PxArticulation>::getStabilizationThreshold(uint64_t a1)
{
  if ((*(a1 + 32) & 0x40) != 0)
  {
    v1 = *(a1 + 40) + 24;
  }

  else
  {
    v1 = a1 + 80;
  }

  return *v1;
}

uint64_t physx::NpArticulationTemplate<physx::PxArticulation>::setWakeCounter(uint64_t result, float a2)
{
  v3 = result;
  if (*(result + 152))
  {
    v4 = 0;
    do
    {
      v5 = *(*(v3 + 144) + 8 * v4);
      v7 = v5 + 96;
      v6 = *(v5 + 96);
      *(v5 + 372) = a2;
      v8 = *(v5 + 104) >> 30;
      if (v8 == 3 || v8 == 2 && (v6[961].i8[1] & 1) != 0)
      {
        if (a2 <= 0.0)
        {
          result = physx::Scb::Scene::scheduleForUpdate(v6, v7);
          v9 = *(v5 + 380) | 0x1000000;
        }

        else
        {
          *(v5 + 376) = 0;
          *(v5 + 372) = a2;
          result = physx::Scb::Scene::scheduleForUpdate(v6, v7);
          v9 = *(v5 + 380) & 0xF8FFFFFF | 0x5000000;
        }

        *(v5 + 380) = v9;
      }

      else
      {
        if (a2 > 0.0 && v6 != 0)
        {
          *(v5 + 376) = 0;
        }

        result = physx::Sc::BodyCore::setWakeCounter(v5 + 128, a2, 0);
      }

      ++v4;
    }

    while (v4 < *(v3 + 152));
  }

  *(v3 + 96) = a2;
  v11 = *(v3 + 32) >> 30;
  if (v11 == 2)
  {
    v12 = *(v3 + 24);
    if ((*(v12 + 7689) & 1) == 0)
    {
      goto LABEL_23;
    }

LABEL_21:
    if (a2 <= 0.0)
    {
      result = physx::Scb::Scene::scheduleForUpdate(*(v3 + 24), v3 + 24);
      v13 = *(v3 + 32) | 0x80;
    }

    else
    {
      *(v3 + 100) = 0;
      result = physx::Scb::Scene::scheduleForUpdate(*(v3 + 24), v3 + 24);
      v13 = *(v3 + 32) & 0xFFFFFC7F | 0x280;
    }

    *(v3 + 32) = v13;
    return result;
  }

  if (v11 == 3)
  {
    goto LABEL_21;
  }

  v12 = *(v3 + 24);
LABEL_23:
  if (a2 > 0.0)
  {
    if (v12)
    {
      *(v3 + 100) = 0;
    }
  }

  *(v3 + 84) = a2;
  return result;
}

int32x2_t *physx::NpArticulationTemplate<physx::PxArticulation>::putToSleep(int32x2_t *result)
{
  v1 = result;
  if (result[19].i32[0])
  {
    v2 = 0;
    do
    {
      result = physx::Scb::Body::putToSleepInternal((*(*&v1[18] + 8 * v2++) + 96));
    }

    while (v2 < v1[19].u32[0]);
  }

  v1[12].i32[0] = 0;
  v1[12].i8[4] = 1;
  v3 = v1[4].i32[0] >> 30;
  if (v3 == 2)
  {
    result = v1[3];
    if (result[961].i8[1])
    {
      goto LABEL_8;
    }
  }

  else if (v3 == 3)
  {
    result = v1[3];
LABEL_8:
    result = physx::Scb::Scene::scheduleForUpdate(result, &v1[3]);
    v1[4].i32[0] = v1[4].i32[0] & 0xFFFFFC7F | 0x180;
    return result;
  }

  v1[10].i32[1] = 0;
  return result;
}

physx::NpArticulationLink *physx::NpArticulationTemplate<physx::PxArticulation>::createLink(uint64_t a1, uint64_t a2, float32x4_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 152);
  if (a2)
  {
    if (!v9)
    {
      v10 = physx::shdfnd::Foundation::mInstance;
      v11 = "Root articulation link must have NULL parent pointer!";
      v12 = 332;
LABEL_6:
      physx::shdfnd::Foundation::error(v10, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpArticulationTemplate.h", v12, v11, a6, a7, a8, v25.i8[0]);
      return 0;
    }
  }

  else if (v9)
  {
    v10 = physx::shdfnd::Foundation::mInstance;
    v11 = "Non-root articulation link must have valid parent pointer!";
    v12 = 338;
    goto LABEL_6;
  }

  ++*(a1 + 176);
  _Q0 = *a3;
  _Q1 = vmulq_f32(_Q0, _Q0);
  _S2 = a3->i64[1];
  __asm { FMLA            S1, S2, V0.S[2] }

  _S2 = HIDWORD(*a3);
  __asm { FMLA            S1, S2, V0.S[3] }

  _Q1.f32[0] = sqrtf(_Q1.f32[0]);
  v25 = vdivq_f32(*a3, vdupq_lane_s32(*_Q1.f32, 0));
  v26 = a3[1].i64[0];
  v27 = a3[1].i32[2];
  ArticulationLink = physx::NpFactory::createArticulationLink(physx::NpFactory::mInstance, a1, a2, v25.f32, a5, a6, a7, a8);
  if (ArticulationLink)
  {
    if (((*(a1 + 32) >> 30) - 1) <= 1)
    {
      v22 = *(a1 + 24);
      if (v22)
      {
        physx::NpScene::addArticulationLink((v22 - 16), ArticulationLink);
      }
    }

    v25.i64[0] = ArticulationLink;
    v23 = *(a1 + 152);
    if ((*(a1 + 156) & 0x7FFFFFFFu) <= v23)
    {
      physx::shdfnd::Array<physx::NpArticulationLink *,physx::shdfnd::InlineAllocator<32u,physx::shdfnd::ReflectionAllocator<physx::NpArticulationLink *>>>::growAndPushBack(a1 + 104, &v25);
    }

    else
    {
      *(*(a1 + 144) + 8 * v23) = ArticulationLink;
      *(a1 + 152) = v23 + 1;
    }
  }

  return ArticulationLink;
}

uint64_t physx::NpArticulationTemplate<physx::PxArticulation>::getLinks(uint64_t a1, void *a2, unsigned int a3, unsigned int a4)
{
  v5 = (*(a1 + 152) - a4) & ~((*(a1 + 152) - a4) >> 31);
  if (v5 >= a3)
  {
    result = a3;
  }

  else
  {
    result = v5;
  }

  if (result)
  {
    v7 = (*(a1 + 144) + 8 * a4);
    v8 = result;
    do
    {
      v9 = *v7++;
      *a2++ = v9;
      --v8;
    }

    while (v8);
  }

  return result;
}

float physx::NpArticulationTemplate<physx::PxArticulation>::getWorldBounds@<S0>(uint64_t a1@<X0>, float *a2@<X8>, float a3@<S0>, __n128 a4@<Q7>)
{
  if (*(a1 + 152))
  {
    v8 = 0;
    *&v4 = vdup_n_s32(0xFE7FFFFF);
    a4.n128_u64[0] = vdup_n_s32(0x7E7FFFFFu);
    v9 = 8.5071e37;
    v10 = -8.5071e37;
    do
    {
      v21 = v4;
      v22 = a4;
      (*(**(*(a1 + 144) + 8 * v8) + 80))(&v23, 1.01);
      *(&v4 + 1) = *(&v21 + 1);
      a4.n128_u64[1] = v22.n128_u64[1];
      if (v9 >= v23)
      {
        v9 = v23;
      }

      a4.n128_u64[0] = vbsl_s8(vcgt_f32(v24, v22.n128_u64[0]), v22.n128_u64[0], v24);
      if (v10 <= v25)
      {
        v10 = v25;
      }

      *&v4 = vbsl_s8(vcgt_f32(*&v21, v26), *&v21, v26);
      ++v8;
    }

    while (v8 < *(a1 + 152));
    v11 = *(&v4 + 1);
    v12 = a4.n128_f32[1];
  }

  else
  {
    v10 = -8.5071e37;
    v9 = 8.5071e37;
    a4.n128_u32[0] = 2122317823;
    v12 = 8.5071e37;
    LODWORD(v4) = -25165825;
    v11 = -8.5071e37;
  }

  v13 = (v9 + v10) * 0.5;
  v14 = (a4.n128_f32[0] + *&v4) * 0.5;
  v15 = (v12 + v11) * 0.5;
  v16 = v11 - v12;
  v17 = ((v10 - v9) * 0.5) * a3;
  v18 = ((*&v4 - a4.n128_f32[0]) * 0.5) * a3;
  v19 = (v16 * 0.5) * a3;
  *a2 = v13 - v17;
  a2[1] = v14 - v18;
  a2[2] = v15 - v19;
  a2[3] = v13 + v17;
  result = v15 + v19;
  a2[4] = v14 + v18;
  a2[5] = result;
  return result;
}

uint64_t physx::NpArticulationTemplate<physx::PxArticulation>::getImpl(uint64_t a1)
{
  return a1 + 24;
}

{
  return a1 + 24;
}

uint64_t physx::NpArticulationTemplate<physx::PxArticulation>::exportExtraData(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 136) & 1) == 0)
  {
    physx::Cm::ArrayAccess<physx::NpArticulationLink *,physx::shdfnd::InlineAllocator<32u,physx::shdfnd::ReflectionAllocator<physx::NpArticulationLink *>>>::store(a1 + 104, a2);
  }

  v4 = *(a1 + 168);
  v5 = *(*a2 + 32);

  return v5(a2, v4);
}

uint64_t physx::NpArticulationTemplate<physx::PxArticulation>::requiresObjects(uint64_t result, uint64_t a2)
{
  v2 = *(result + 152);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = 8 * v2;
    do
    {
      result = (*(*a2 + 16))(a2, *(*(v4 + 144) + v5));
      v5 += 8;
    }

    while (v6 != v5);
  }

  return result;
}

uint64_t physx::NpArticulationJointTemplate<physx::PxArticulationJointReducedCoordinate>::release(uint64_t a1)
{
  physx::NpPhysics::notifyDeletionListeners(physx::NpPhysics::mInstance, a1, 0, 1);
  if (((*(a1 + 24) >> 30) - 1) <= 1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      physx::Scb::Scene::remove<physx::Scb::ArticulationJoint>(v2, a1 + 16, v2 + 1008);
    }
  }

  return physx::Scb::Base::destroy(a1 + 16);
}

uint64_t physx::NpArticulationJointTemplate<physx::PxArticulationJointReducedCoordinate>::getImpl(uint64_t a1)
{
  return a1 + 16;
}

{
  return a1 + 16;
}

uint64_t physx::NpArticulationTemplate<physx::PxArticulationReducedCoordinate>::release(uint64_t a1)
{
  physx::NpPhysics::notifyDeletionListeners(physx::NpPhysics::mInstance, a1, *(a1 + 16), 1);
  v2 = *(a1 + 152);
  if (v2)
  {
    v3 = 0;
    do
    {
      v3 %= v2;
      v4 = *(*(a1 + 144) + 8 * v3);
      if ((*(*v4 + 520))(v4))
      {
        ++v3;
      }

      else
      {
        physx::NpArticulationLink::releaseInternal(*(*(a1 + 144) + 8 * v3));
      }

      v2 = *(a1 + 152);
    }

    while (v2);
  }

  if (((*(a1 + 32) >> 30) - 1) <= 1)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      physx::Scb::Scene::removeArticulation(*(a1 + 24), (a1 + 24));
      physx::shdfnd::internal::HashSetBase<physx::Sc::BodySim const*,physx::shdfnd::Hash<physx::Sc::BodySim const*>,physx::shdfnd::NonTrackingAllocator,true>::erase(v5 + 1143, a1);
    }
  }

  *(a1 + 152) = 0;

  return physx::Scb::Base::destroy(a1 + 24);
}

uint64_t physx::NpArticulationTemplate<physx::PxArticulationReducedCoordinate>::getScene(uint64_t a1)
{
  if (((*(a1 + 32) >> 30) - 1) > 1)
  {
    return 0;
  }

  v1 = *(a1 + 24);
  if (v1)
  {
    return v1 - 16;
  }

  else
  {
    return 0;
  }
}

int32x2_t *physx::NpArticulationTemplate<physx::PxArticulationReducedCoordinate>::setSolverIterationCounts(int32x2_t *result, unsigned __int8 a2, __int16 a3)
{
  v3 = result;
  v4 = a2 | (a3 << 8);
  v5 = result[4].u32[0];
  if (v5 >> 30 == 2)
  {
    result = result[3];
    if (result[961].i8[1])
    {
      goto LABEL_5;
    }

LABEL_8:
    v3[8].i16[2] = v4;
    return result;
  }

  if (v5 >> 30 != 3)
  {
    goto LABEL_8;
  }

  result = result[3];
LABEL_5:
  Stream = v3[5];
  if (!Stream)
  {
    Stream = physx::Scb::Scene::getStream(result, HIBYTE(v5) & 0xF);
    v3[5] = Stream;
    result = v3[3];
  }

  *(Stream + 20) = v4;
  result = physx::Scb::Scene::scheduleForUpdate(result, &v3[3]);
  v3[4].i32[0] |= 0x20u;
  return result;
}

uint64_t physx::NpArticulationTemplate<physx::PxArticulationReducedCoordinate>::getSolverIterationCounts(uint64_t result, _DWORD *a2, unsigned int *a3)
{
  if ((*(result + 32) & 0x20) != 0)
  {
    v3 = (*(result + 40) + 20);
  }

  else
  {
    v3 = (result + 68);
  }

  v4 = *v3;
  *a3 = v4 >> 8;
  *a2 = v4;
  return result;
}

int32x2_t *physx::NpArticulationTemplate<physx::PxArticulationReducedCoordinate>::setSleepThreshold(int32x2_t *result, float a2)
{
  v3 = result;
  v4 = result[4].u32[0];
  if (v4 >> 30 == 2)
  {
    result = result[3];
    if (result[961].i8[1])
    {
      goto LABEL_5;
    }

LABEL_8:
    *&v3[9].i32[1] = a2;
    return result;
  }

  if (v4 >> 30 != 3)
  {
    goto LABEL_8;
  }

  result = result[3];
LABEL_5:
  Stream = v3[5];
  if (!Stream)
  {
    Stream = physx::Scb::Scene::getStream(result, HIBYTE(v4) & 0xF);
    v3[5] = Stream;
    result = v3[3];
  }

  *(Stream + 16) = a2;
  result = physx::Scb::Scene::scheduleForUpdate(result, &v3[3]);
  v3[4].i32[0] |= 0x10u;
  return result;
}

float physx::NpArticulationTemplate<physx::PxArticulationReducedCoordinate>::getSleepThreshold(uint64_t a1)
{
  if ((*(a1 + 32) & 0x10) != 0)
  {
    v1 = *(a1 + 40) + 16;
  }

  else
  {
    v1 = a1 + 76;
  }

  return *v1;
}

int32x2_t *physx::NpArticulationTemplate<physx::PxArticulationReducedCoordinate>::setStabilizationThreshold(int32x2_t *result, float a2)
{
  v3 = result;
  v4 = result[4].u32[0];
  if (v4 >> 30 == 2)
  {
    result = result[3];
    if (result[961].i8[1])
    {
      goto LABEL_5;
    }

LABEL_8:
    *v3[10].i32 = a2;
    return result;
  }

  if (v4 >> 30 != 3)
  {
    goto LABEL_8;
  }

  result = result[3];
LABEL_5:
  Stream = v3[5];
  if (!Stream)
  {
    Stream = physx::Scb::Scene::getStream(result, HIBYTE(v4) & 0xF);
    v3[5] = Stream;
    result = v3[3];
  }

  *(Stream + 24) = a2;
  result = physx::Scb::Scene::scheduleForUpdate(result, &v3[3]);
  v3[4].i32[0] |= 0x40u;
  return result;
}

float physx::NpArticulationTemplate<physx::PxArticulationReducedCoordinate>::getStabilizationThreshold(uint64_t a1)
{
  if ((*(a1 + 32) & 0x40) != 0)
  {
    v1 = *(a1 + 40) + 24;
  }

  else
  {
    v1 = a1 + 80;
  }

  return *v1;
}

uint64_t physx::NpArticulationTemplate<physx::PxArticulationReducedCoordinate>::setWakeCounter(uint64_t result, float a2)
{
  v3 = result;
  if (*(result + 152))
  {
    v4 = 0;
    do
    {
      v5 = *(*(v3 + 144) + 8 * v4);
      v7 = v5 + 96;
      v6 = *(v5 + 96);
      *(v5 + 372) = a2;
      v8 = *(v5 + 104) >> 30;
      if (v8 == 3 || v8 == 2 && (v6[961].i8[1] & 1) != 0)
      {
        if (a2 <= 0.0)
        {
          result = physx::Scb::Scene::scheduleForUpdate(v6, v7);
          v9 = *(v5 + 380) | 0x1000000;
        }

        else
        {
          *(v5 + 376) = 0;
          *(v5 + 372) = a2;
          result = physx::Scb::Scene::scheduleForUpdate(v6, v7);
          v9 = *(v5 + 380) & 0xF8FFFFFF | 0x5000000;
        }

        *(v5 + 380) = v9;
      }

      else
      {
        if (a2 > 0.0 && v6 != 0)
        {
          *(v5 + 376) = 0;
        }

        result = physx::Sc::BodyCore::setWakeCounter(v5 + 128, a2, 0);
      }

      ++v4;
    }

    while (v4 < *(v3 + 152));
  }

  *(v3 + 96) = a2;
  v11 = *(v3 + 32) >> 30;
  if (v11 == 2)
  {
    v12 = *(v3 + 24);
    if ((*(v12 + 7689) & 1) == 0)
    {
      goto LABEL_23;
    }

LABEL_21:
    if (a2 <= 0.0)
    {
      result = physx::Scb::Scene::scheduleForUpdate(*(v3 + 24), v3 + 24);
      v13 = *(v3 + 32) | 0x80;
    }

    else
    {
      *(v3 + 100) = 0;
      result = physx::Scb::Scene::scheduleForUpdate(*(v3 + 24), v3 + 24);
      v13 = *(v3 + 32) & 0xFFFFFC7F | 0x280;
    }

    *(v3 + 32) = v13;
    return result;
  }

  if (v11 == 3)
  {
    goto LABEL_21;
  }

  v12 = *(v3 + 24);
LABEL_23:
  if (a2 > 0.0)
  {
    if (v12)
    {
      *(v3 + 100) = 0;
    }
  }

  *(v3 + 84) = a2;
  return result;
}

int32x2_t *physx::NpArticulationTemplate<physx::PxArticulationReducedCoordinate>::putToSleep(int32x2_t *result)
{
  v1 = result;
  if (result[19].i32[0])
  {
    v2 = 0;
    do
    {
      result = physx::Scb::Body::putToSleepInternal((*(*&v1[18] + 8 * v2++) + 96));
    }

    while (v2 < v1[19].u32[0]);
  }

  v1[12].i32[0] = 0;
  v1[12].i8[4] = 1;
  v3 = v1[4].i32[0] >> 30;
  if (v3 == 2)
  {
    result = v1[3];
    if (result[961].i8[1])
    {
      goto LABEL_8;
    }
  }

  else if (v3 == 3)
  {
    result = v1[3];
LABEL_8:
    result = physx::Scb::Scene::scheduleForUpdate(result, &v1[3]);
    v1[4].i32[0] = v1[4].i32[0] & 0xFFFFFC7F | 0x180;
    return result;
  }

  v1[10].i32[1] = 0;
  return result;
}

physx::NpArticulationLink *physx::NpArticulationTemplate<physx::PxArticulationReducedCoordinate>::createLink(uint64_t a1, uint64_t a2, float32x4_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 152);
  if (a2)
  {
    if (!v9)
    {
      v10 = physx::shdfnd::Foundation::mInstance;
      v11 = "Root articulation link must have NULL parent pointer!";
      v12 = 332;
LABEL_6:
      physx::shdfnd::Foundation::error(v10, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpArticulationTemplate.h", v12, v11, a6, a7, a8, v25.i8[0]);
      return 0;
    }
  }

  else if (v9)
  {
    v10 = physx::shdfnd::Foundation::mInstance;
    v11 = "Non-root articulation link must have valid parent pointer!";
    v12 = 338;
    goto LABEL_6;
  }

  ++*(a1 + 176);
  _Q0 = *a3;
  _Q1 = vmulq_f32(_Q0, _Q0);
  _S2 = a3->i64[1];
  __asm { FMLA            S1, S2, V0.S[2] }

  _S2 = HIDWORD(*a3);
  __asm { FMLA            S1, S2, V0.S[3] }

  _Q1.f32[0] = sqrtf(_Q1.f32[0]);
  v25 = vdivq_f32(*a3, vdupq_lane_s32(*_Q1.f32, 0));
  v26 = a3[1].i64[0];
  v27 = a3[1].i32[2];
  ArticulationLink = physx::NpFactory::createArticulationLink(physx::NpFactory::mInstance, a1, a2, v25.f32, a5, a6, a7, a8);
  if (ArticulationLink)
  {
    if (((*(a1 + 32) >> 30) - 1) <= 1)
    {
      v22 = *(a1 + 24);
      if (v22)
      {
        physx::NpScene::addArticulationLink((v22 - 16), ArticulationLink);
      }
    }

    v25.i64[0] = ArticulationLink;
    v23 = *(a1 + 152);
    if ((*(a1 + 156) & 0x7FFFFFFFu) <= v23)
    {
      physx::shdfnd::Array<physx::NpArticulationLink *,physx::shdfnd::InlineAllocator<32u,physx::shdfnd::ReflectionAllocator<physx::NpArticulationLink *>>>::growAndPushBack(a1 + 104, &v25);
    }

    else
    {
      *(*(a1 + 144) + 8 * v23) = ArticulationLink;
      *(a1 + 152) = v23 + 1;
    }
  }

  return ArticulationLink;
}

uint64_t physx::NpArticulationTemplate<physx::PxArticulationReducedCoordinate>::getLinks(uint64_t a1, void *a2, unsigned int a3, unsigned int a4)
{
  v5 = (*(a1 + 152) - a4) & ~((*(a1 + 152) - a4) >> 31);
  if (v5 >= a3)
  {
    result = a3;
  }

  else
  {
    result = v5;
  }

  if (result)
  {
    v7 = (*(a1 + 144) + 8 * a4);
    v8 = result;
    do
    {
      v9 = *v7++;
      *a2++ = v9;
      --v8;
    }

    while (v8);
  }

  return result;
}

float physx::NpArticulationTemplate<physx::PxArticulationReducedCoordinate>::getWorldBounds@<S0>(uint64_t a1@<X0>, float *a2@<X8>, float a3@<S0>, __n128 a4@<Q7>)
{
  if (*(a1 + 152))
  {
    v8 = 0;
    *&v4 = vdup_n_s32(0xFE7FFFFF);
    a4.n128_u64[0] = vdup_n_s32(0x7E7FFFFFu);
    v9 = 8.5071e37;
    v10 = -8.5071e37;
    do
    {
      v21 = v4;
      v22 = a4;
      (*(**(*(a1 + 144) + 8 * v8) + 80))(&v23, 1.01);
      *(&v4 + 1) = *(&v21 + 1);
      a4.n128_u64[1] = v22.n128_u64[1];
      if (v9 >= v23)
      {
        v9 = v23;
      }

      a4.n128_u64[0] = vbsl_s8(vcgt_f32(v24, v22.n128_u64[0]), v22.n128_u64[0], v24);
      if (v10 <= v25)
      {
        v10 = v25;
      }

      *&v4 = vbsl_s8(vcgt_f32(*&v21, v26), *&v21, v26);
      ++v8;
    }

    while (v8 < *(a1 + 152));
    v11 = *(&v4 + 1);
    v12 = a4.n128_f32[1];
  }

  else
  {
    v10 = -8.5071e37;
    v9 = 8.5071e37;
    a4.n128_u32[0] = 2122317823;
    v12 = 8.5071e37;
    LODWORD(v4) = -25165825;
    v11 = -8.5071e37;
  }

  v13 = (v9 + v10) * 0.5;
  v14 = (a4.n128_f32[0] + *&v4) * 0.5;
  v15 = (v12 + v11) * 0.5;
  v16 = v11 - v12;
  v17 = ((v10 - v9) * 0.5) * a3;
  v18 = ((*&v4 - a4.n128_f32[0]) * 0.5) * a3;
  v19 = (v16 * 0.5) * a3;
  *a2 = v13 - v17;
  a2[1] = v14 - v18;
  a2[2] = v15 - v19;
  a2[3] = v13 + v17;
  result = v15 + v19;
  a2[4] = v14 + v18;
  a2[5] = result;
  return result;
}

uint64_t physx::NpArticulationTemplate<physx::PxArticulationReducedCoordinate>::getImpl(uint64_t a1)
{
  return a1 + 24;
}

{
  return a1 + 24;
}

uint64_t physx::NpArticulationTemplate<physx::PxArticulationReducedCoordinate>::exportExtraData(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 136) & 1) == 0)
  {
    physx::Cm::ArrayAccess<physx::NpArticulationLink *,physx::shdfnd::InlineAllocator<32u,physx::shdfnd::ReflectionAllocator<physx::NpArticulationLink *>>>::store(a1 + 104, a2);
  }

  v4 = *(a1 + 168);
  v5 = *(*a2 + 32);

  return v5(a2, v4);
}

uint64_t physx::NpArticulationTemplate<physx::PxArticulationReducedCoordinate>::requiresObjects(uint64_t result, uint64_t a2)
{
  v2 = *(result + 152);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = 8 * v2;
    do
    {
      result = (*(*a2 + 16))(a2, *(*(v4 + 144) + v5));
      v5 += 8;
    }

    while (v6 != v5);
  }

  return result;
}

uint64_t physx::shdfnd::internal::HashSetBase<physx::PxConstraint *,physx::shdfnd::Hash<physx::PxConstraint *>,physx::shdfnd::NonTrackingAllocator,true>::erase(int32x2_t *a1, uint64_t *a2)
{
  if (!a1[6].i32[1])
  {
    return 0;
  }

  v2 = *a2;
  v3 = ~(*a2 << 32) + *a2;
  v4 = (v3 ^ (v3 >> 22)) + ~((v3 ^ (v3 >> 22)) << 13);
  v5 = (9 * (v4 ^ (v4 >> 8))) ^ ((9 * (v4 ^ (v4 >> 8))) >> 15);
  v6 = (*&a1[3] + 4 * ((a1[4].i32[1] - 1) & (((v5 + ~(v5 << 27)) >> 31) ^ (v5 + ~(v5 << 27)))));
  v7 = *v6;
  if (v7 == -1)
  {
    return 0;
  }

  v8 = a1[1];
  v9 = a1[2];
  if (*(*&v8 + 8 * v7) != v2)
  {
    while (1)
    {
      v10 = v7;
      v7 = *(*&v9 + 4 * v7);
      if (v7 == -1)
      {
        return 0;
      }

      if (*(*&v8 + 8 * v7) == v2)
      {
        v6 = (*&v9 + 4 * v10);
        break;
      }
    }
  }

  *v6 = *(*&v9 + 4 * v7);
  v11 = vadd_s32(a1[6], 0xFFFFFFFF00000001);
  a1[6] = v11;
  if (v7 != v11.i32[1])
  {
    *(*&v8 + 8 * v7) = *(*&v8 + 8 * v11.u32[1]);
    v13 = a1[1];
    v12 = a1[2];
    *(*&v12 + 4 * v7) = *(*&v12 + 4 * v11.u32[1]);
    v14 = ~(*(*&v13 + 8 * v7) << 32) + *(*&v13 + 8 * v7);
    v15 = 9 * (((v14 ^ (v14 >> 22)) + ~((v14 ^ (v14 >> 22)) << 13)) ^ (((v14 ^ (v14 >> 22)) + ~((v14 ^ (v14 >> 22)) << 13)) >> 8));
    v16 = (v15 ^ (v15 >> 15)) + ~((v15 ^ (v15 >> 15)) << 27);
    v17 = (*&a1[3] + 4 * ((a1[4].i32[1] - 1) & ((v16 >> 31) ^ v16)));
    v18 = a1[6].u32[1];
    v19 = *v17;
    if (v19 != v18)
    {
      do
      {
        v20 = v19;
        v19 = *(*&v12 + 4 * v19);
      }

      while (v19 != v18);
      v17 = (*&v12 + 4 * v20);
    }

    *v17 = v7;
  }

  --a1[5].i32[1];
  return 1;
}

uint64_t physx::shdfnd::internal::HashBase<physx::PxConstraint *,physx::PxConstraint *,physx::shdfnd::Hash<physx::PxConstraint *>,physx::shdfnd::internal::HashSetBase<physx::PxConstraint *,physx::shdfnd::Hash<physx::PxConstraint *>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::create(int32x2_t *a1, void *a2, _BYTE *a3)
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
        physx::shdfnd::internal::HashBase<physx::PxConstraint *,physx::PxConstraint *,physx::shdfnd::Hash<physx::PxConstraint *>,physx::shdfnd::internal::HashSetBase<physx::PxConstraint *,physx::shdfnd::Hash<physx::PxConstraint *>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(a1, v12);
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

void *physx::shdfnd::internal::HashBase<physx::PxConstraint *,physx::PxConstraint *,physx::shdfnd::Hash<physx::PxConstraint *>,physx::shdfnd::internal::HashSetBase<physx::PxConstraint *,physx::shdfnd::Hash<physx::PxConstraint *>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(uint64_t a1, unsigned int a2)
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

uint64_t physx::NpRigidActorTemplate<physx::PxArticulationLink>::attachShape(physx::PxRigidActor *a1, physx::NpShape *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 10))
  {
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpRigidActorTemplate.h", 233, "PxRigidActor::attachShape: Actor is part of a pruning structure, pruning structure is now invalid!", a6, a7, a8, v11);
    physx::Sq::PruningStructure::invalidate(*(a1 + 10), a1);
  }

  physx::NpShapeManager::attachShape((a1 + 40), a2, a1);
  return 1;
}

physx::PxActor *physx::NpActorTemplate<physx::PxArticulationLink>::release(physx::PxActor *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(result + 4);
  if (v8)
  {
    return physx::NpAggregate::removeActorAndReinsert(*(*(v8 + 72) + 8), result, 0, a4, a5, a6, a7, a8);
  }

  return result;
}

int32x2_t *physx::NpActorTemplate<physx::PxArticulationLink>::setActorFlag(int32x2_t *result, int a2, int a3)
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

int32x2_t *physx::NpActorTemplate<physx::PxArticulationLink>::setActorFlags(int32x2_t *result, unsigned __int8 *a2)
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

BOOL physx::PxRigidBody::isKindOf(physx::PxRigidBody *this, const char *a2)
{
  if (!strcmp("PxRigidBody", a2))
  {
    return 1;
  }

  return physx::PxRigidActor::isKindOf(this, a2);
}

BOOL physx::PxRigidActor::isKindOf(physx::PxRigidActor *this, const char *a2)
{
  if (!strcmp("PxRigidActor", a2))
  {
    return 1;
  }

  return physx::PxActor::isKindOf(this, a2);
}

uint64_t physx::shdfnd::Array<physx::NpArticulationLink *,physx::shdfnd::InlineAllocator<32u,physx::shdfnd::ReflectionAllocator<physx::NpArticulationLink *>>>::growAndPushBack(uint64_t a1, void *a2)
{
  v4 = *(a1 + 52);
  if ((v4 & 0x7FFFFFFF) != 0)
  {
    v5 = 2 * v4;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  if ((8 * v5) <= 0x20 && (*(a1 + 32) & 1) == 0)
  {
    *(a1 + 32) = 1;
    v6 = a1;
    goto LABEL_14;
  }

  if (8 * v5)
  {
    v7 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v8 = "static const char *physx::shdfnd::ReflectionAllocator<physx::NpArticulationLink *>::getName() [T = physx::NpArticulationLink *]";
    }

    else
    {
      v8 = "<allocation names disabled>";
    }

    v6 = (*(*(v7 + 24) + 16))(v7 + 24, (8 * v5), v8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
  }

  else
  {
LABEL_13:
    v6 = 0;
  }

LABEL_14:
  v9 = *(a1 + 48);
  v10 = (v6 + 8 * v9);
  if (v9)
  {
    v11 = *(a1 + 40);
    v12 = v6;
    do
    {
      v13 = *v11++;
      *v12++ = v13;
    }

    while (v12 < v10);
  }

  *v10 = *a2;
  if ((*(a1 + 52) & 0x80000000) == 0)
  {
    v14 = *(a1 + 40);
    if (v14 == a1)
    {
      *(a1 + 32) = 0;
    }

    else if (v14)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
      v9 = *(a1 + 48);
    }
  }

  *(a1 + 40) = v6;
  *(a1 + 48) = v9 + 1;
  *(a1 + 52) = v5;
  return v6 + 8 * v9;
}

uint64_t physx::shdfnd::Array<physx::NpConnector,physx::shdfnd::InlineAllocator<64u,physx::shdfnd::ReflectionAllocator<physx::NpConnector>>>::recreate(uint64_t a1, int a2)
{
  result = (16 * a2);
  if (result > 0x40 || (*(a1 + 64) & 1) != 0)
  {
    result = physx::shdfnd::ReflectionAllocator<physx::NpConnector>::allocate(result);
    v5 = result;
  }

  else
  {
    *(a1 + 64) = 1;
    v5 = a1;
  }

  v6 = *(a1 + 80);
  v7 = *(a1 + 72);
  if (v6)
  {
    v8 = v5 + 16 * v6;
    v9 = *(a1 + 72);
    v10 = v5;
    do
    {
      *v10 = *v9;
      *(v10 + 8) = *(v9 + 8);
      v10 += 16;
      v9 += 16;
    }

    while (v10 < v8);
  }

  if ((*(a1 + 84) & 0x80000000) == 0)
  {
    if (v7 == a1)
    {
      *(a1 + 64) = 0;
    }

    else if (v7)
    {
      result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }
  }

  *(a1 + 72) = v5;
  *(a1 + 84) = a2;
  return result;
}

uint64_t physx::shdfnd::ReflectionAllocator<physx::NpConnector>::allocate(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v3 = "static const char *physx::shdfnd::ReflectionAllocator<physx::NpConnector>::getName() [T = physx::NpConnector]";
    }

    else
    {
      v3 = "<allocation names disabled>";
    }

    v4 = *(*(v2 + 24) + 16);

    return v4(v2 + 24, v1, v3, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
  }

  return result;
}

uint64_t physx::shdfnd::Array<physx::NpConnector,physx::shdfnd::InlineAllocator<64u,physx::shdfnd::ReflectionAllocator<physx::NpConnector>>>::growAndPushBack(uint64_t result, uint64_t a2)
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
    result = (16 * v5);
    if (result > 0x40 || (*(v3 + 64) & 1) != 0)
    {
      result = physx::shdfnd::ReflectionAllocator<physx::NpConnector>::allocate(result);
      v6 = result;
    }

    else
    {
      *(v3 + 64) = 1;
      v6 = v3;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v3 + 80);
  v8 = v6 + 16 * v7;
  v9 = *(v3 + 72);
  if (v7)
  {
    v10 = *(v3 + 72);
    v11 = v6;
    do
    {
      *v11 = *v10;
      *(v11 + 8) = *(v10 + 8);
      v11 += 16;
      v10 += 16;
    }

    while (v11 < v8);
  }

  *v8 = *a2;
  *(v8 + 8) = *(a2 + 8);
  if ((*(v3 + 84) & 0x80000000) == 0)
  {
    if (v9 == v3)
    {
      *(v3 + 64) = 0;
    }

    else if (v9)
    {
      result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
      LODWORD(v7) = *(v3 + 80);
    }
  }

  *(v3 + 72) = v6;
  *(v3 + 80) = v7 + 1;
  *(v3 + 84) = v5;
  return result;
}

uint64_t physx::shdfnd::Array<physx::NpConnector,physx::shdfnd::InlineAllocator<64u,physx::shdfnd::ReflectionAllocator<physx::NpConnector>>>::resizeUninitialized(uint64_t result, unsigned int a2)
{
  v3 = result;
  if ((*(result + 84) & 0x7FFFFFFFu) < a2)
  {
    result = physx::shdfnd::Array<physx::NpConnector,physx::shdfnd::InlineAllocator<64u,physx::shdfnd::ReflectionAllocator<physx::NpConnector>>>::recreate(result, a2);
  }

  *(v3 + 80) = a2;
  return result;
}

void physx::PxArticulationImpl::~PxArticulationImpl(physx::PxArticulationImpl *this)
{
  v1 = *(this + 33);
  if ((v1 & 0x80000000) == 0 && (v1 & 0x7FFFFFFF) != 0)
  {
    v2 = *(this + 15);
    if (v2 == (this + 80))
    {
      *(this + 112) = 0;
    }

    else if (v2)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }
  }
}

float32x2_t physx::PxArticulationImpl::PxArticulationImpl(physx::PxArticulationImpl *this, char a2)
{
  *this = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  v2 = physx::Sc::Physics::mInstance;
  *(this + 4) = 0x400000004;
  v3 = *(v2 + 4);
  v4 = *v2 * 0.1;
  *(this + 64) = 0;
  *(this + 68) = a2;
  *(this + 10) = 4;
  *(this + 22) = 260;
  *(this + 12) = v4;
  result = vmul_n_f32(vmul_n_f32(0x36A7C5AC3851B717, v3), v3);
  *(this + 52) = result;
  *(this + 15) = 1053609164;
  *(this + 2) = 117440512;
  *(this + 18) = 1053609164;
  *(this + 38) = 1;
  *(this + 112) = 1;
  *(this + 15) = this + 80;
  *(this + 16) = 0x400000000;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 38) = 0;
  return result;
}

uint64_t physx::shdfnd::Array<physx::PxJoint *,physx::shdfnd::ReflectionAllocator<physx::PxJoint *>>::recreate(uint64_t a1, unsigned int a2)
{
  v4 = 8 * a2;
  v5 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v6 = "static const char *physx::shdfnd::ReflectionAllocator<physx::PxJoint *>::getName() [T = physx::PxJoint *]";
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

uint64_t physx::shdfnd::Array<physx::PxJoint *,physx::shdfnd::ReflectionAllocator<physx::PxJoint *>>::growAndPushBack(uint64_t result, void *a2)
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
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::PxJoint *>::getName() [T = physx::PxJoint *]";
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

uint64_t physx::Cm::ArrayAccess<physx::NpArticulationLink *,physx::shdfnd::InlineAllocator<32u,physx::shdfnd::ReflectionAllocator<physx::NpArticulationLink *>>>::store(uint64_t result, uint64_t a2)
{
  v2 = *(result + 40);
  if (v2)
  {
    v3 = *(result + 52);
    if (*(result + 48) | v3 & 0x7FFFFFFF)
    {
      return (*(*a2 + 16))(a2, v2, (8 * v3));
    }
  }

  return result;
}

float32_t physx::Scb::Body::addSpatialAcceleration(uint64_t a1, float32x2_t *a2, float32x2_t *a3)
{
  v6 = *(a1 + 8);
  if (v6 >> 30 == 2)
  {
    v7 = *a1;
    if ((*(*a1 + 7689) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (v6 >> 30 != 3)
  {
    v7 = *a1;
LABEL_12:
    v10 = *(v7 + 4384);
    v11 = (a1 + 32);

    return physx::Sc::BodyCore::addSpatialAcceleration(v11, v10, a2, a3);
  }

  Stream = *(a1 + 16);
  if (!Stream)
  {
    Stream = physx::Scb::Scene::getStream(*a1, HIBYTE(v6) & 0xF);
    *(a1 + 16) = Stream;
  }

  if (a2)
  {
    *(Stream + 300) = vadd_f32(*a2, *(Stream + 300));
    *(Stream + 308) = a2[1].f32[0] + *(Stream + 308);
    LODWORD(a2) = 0x10000;
  }

  if (a3)
  {
    *(Stream + 312) = vadd_f32(*a3, *(Stream + 312));
    *(Stream + 320) = a3[1].f32[0] + *(Stream + 320);
    LODWORD(a2) = a2 | 0x20000;
  }

  physx::Scb::Scene::scheduleForUpdate(*a1, a1);
  *(a1 + 284) |= a2;
  return result;
}

float32_t physx::Scb::Body::addSpatialVelocity(uint64_t a1, float32x2_t *a2, float32x2_t *a3)
{
  v6 = *(a1 + 8);
  if (v6 >> 30 == 2)
  {
    v7 = *a1;
    if ((*(*a1 + 7689) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (v6 >> 30 != 3)
  {
    v7 = *a1;
LABEL_12:
    v10 = *(v7 + 4384);
    v11 = (a1 + 32);

    return physx::Sc::BodyCore::addSpatialVelocity(v11, v10, a2, a3);
  }

  Stream = *(a1 + 16);
  if (!Stream)
  {
    Stream = physx::Scb::Scene::getStream(*a1, HIBYTE(v6) & 0xF);
    *(a1 + 16) = Stream;
  }

  if (a2)
  {
    *(Stream + 324) = vadd_f32(*a2, *(Stream + 324));
    *(Stream + 332) = a2[1].f32[0] + *(Stream + 332);
    LODWORD(a2) = 0x40000;
  }

  if (a3)
  {
    *(Stream + 336) = vadd_f32(*a3, *(Stream + 336));
    *(Stream + 344) = a3[1].f32[0] + *(Stream + 344);
    LODWORD(a2) = a2 | 0x80000;
  }

  physx::Scb::Scene::scheduleForUpdate(*a1, a1);
  *(a1 + 284) |= a2;
  return result;
}

void physx::Scb::Body::setFlags(physx::Sc::BodyCore *this, char *a2)
{
  v4 = *(this + 71);
  if ((v4 & 0x4000) != 0)
  {
    v5 = (*(this + 2) + 348);
  }

  else
  {
    v5 = this + 76;
  }

  v6 = *v5;
  v7 = *a2;
  v8 = *(this + 2) >> 30;
  if (v8 == 3 || v8 == 2 && (*(*this + 7689) & 1) != 0)
  {
    if (v6 & 1 | ((*a2 & 1) == 0))
    {
      if ((v6 & ((*a2 & 1) == 0)) != 0)
      {
        *(this + 71) = v4 & 0xFFFF7FFF;
      }
    }

    else
    {
      physx::Scb::Body::putToSleepInternal(this);
    }

    Stream = *(this + 2);
    v11 = *this;
    if (!Stream)
    {
      Stream = physx::Scb::Scene::getStream(v11, *(this + 11) & 0xF);
      *(this + 2) = Stream;
      v11 = *this;
    }

    *(Stream + 348) = *a2;
    physx::Scb::Scene::scheduleForUpdate(v11, this);
    *(this + 71) |= 0x4000u;
  }

  else
  {
    if (!(v6 & 1 | ((*a2 & 1) == 0)))
    {
      *(this + 252) = 0;
      *(this + 268) = 0;
      *(this + 276) = 0x100000000;
      *(this + 260) = 0;
    }

    if (*this)
    {
      v9 = *(*this + 4384);
    }

    else
    {
      v9 = 0;
    }

    v12 = v7;
    physx::Sc::BodyCore::setFlags((this + 32), v9, &v12);
  }
}

int32x2_t *physx::Scb::Body::putToSleepInternal(physx::Scb::Body *this)
{
  v2 = *(this + 2) >> 30;
  if (v2 == 3)
  {
    *(this + 276) = 0x100000000;
    *(this + 32) = 0;
    *(this + 63) = 0;
    v3 = *this;
LABEL_9:
    physx::Scb::Scene::scheduleForUpdate(v3, this);
    *(this + 71) |= 0x400000u;
    v6 = *(this + 2);
    v10 = 0;
    v11 = 0;
    *(this + 33) = 0;
    *(this + 68) = 0;
    v7 = v6 >> 30;
    if (v7 == 2)
    {
      v8 = *this;
      if (*(*this + 7689))
      {
        goto LABEL_13;
      }
    }

    else if (v7 == 3)
    {
      v8 = *this;
LABEL_13:
      physx::Scb::Scene::scheduleForUpdate(v8, this);
      v9 = *(this + 71) | 0x800000;
LABEL_15:
      *(this + 71) = v9 & 0xFFF07FFF;
      result = physx::Scb::Scene::scheduleForUpdate(*this, this);
      *(this + 71) = *(this + 71) & 0xF8FFFFFF | 0x3000000;
      return result;
    }

    physx::Sc::BodyCore::setAngularVelocity(this + 32, &v10);
    v9 = *(this + 71);
    goto LABEL_15;
  }

  if (v2 == 2)
  {
    v3 = *this;
    if (*(*this + 7689))
    {
      *(this + 276) = 0x100000000;
      *(this + 32) = 0;
      *(this + 63) = 0;
      goto LABEL_9;
    }
  }

  *(this + 252) = 0;
  v4 = (this + 252);
  v4[2] = 0;
  v4[3] = 0x100000000;
  v4[1] = 0;

  return physx::Sc::BodyCore::putToSleep((v4 - 220));
}

physx::Sc::ArticulationJointSim *physx::PxArticulationJointImpl::setParentPose(uint64_t a1, float *a2)
{
  result = *(a1 + 408);
  if (!result)
  {
    return result;
  }

  (*(*result + 224))(&v28);
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  v8 = sqrtf((((v5 * v5) + (*a2 * *a2)) + (v6 * v6)) + (v7 * v7));
  v9 = *a2 / v8;
  v10 = v5 / v8;
  v11 = v6 / v8;
  v12 = v7 / v8;
  v13 = (a2[4] - v31) + (a2[4] - v31);
  v14 = (a2[5] - v32) + (a2[5] - v32);
  v15 = (a2[6] - v33) + (a2[6] - v33);
  v16 = (v30 * v30) + -0.5;
  v17 = (-(*(&v28 + 1) * v14) - (*&v28 * v13)) - (v29 * v15);
  v18 = ((v30 * ((v29 * v14) - (*(&v28 + 1) * v15))) + (v13 * v16)) - (*&v28 * v17);
  v19 = ((v30 * ((*&v28 * v15) - (v29 * v13))) + (v14 * v16)) - (*(&v28 + 1) * v17);
  v20 = ((v30 * ((*(&v28 + 1) * v13) - (*&v28 * v14))) + (v15 * v16)) - (v29 * v17);
  v21 = (((v30 * v9) - (*&v28 * v12)) - (*(&v28 + 1) * v11)) + (v10 * v29);
  v22 = (((v30 * v10) - (*(&v28 + 1) * v12)) - (v29 * v9)) + (v11 * *&v28);
  v23 = (((v30 * v11) - (v29 * v12)) - (*&v28 * v10)) + (v9 * *(&v28 + 1));
  v24 = (((v9 * *&v28) + (v30 * v12)) + (*(&v28 + 1) * v10)) + (v29 * v11);
  v34[0] = v21;
  v34[1] = v22;
  v34[2] = v23;
  v34[3] = v24;
  v34[4] = v18;
  v34[5] = v19;
  v34[6] = v20;
  v25 = *(a1 + 8);
  if (v25 >> 30 == 2)
  {
    v26 = *a1;
    if (*(*a1 + 7689))
    {
      goto LABEL_6;
    }

    return physx::Sc::ArticulationJointCore::setParentPose(a1 + 24, v34);
  }

  if (v25 >> 30 != 3)
  {
    return physx::Sc::ArticulationJointCore::setParentPose(a1 + 24, v34);
  }

  v26 = *a1;
LABEL_6:
  Stream = *(a1 + 16);
  if (!Stream)
  {
    Stream = physx::Scb::Scene::getStream(v26, HIBYTE(v25) & 0xF);
    *(a1 + 16) = Stream;
    v26 = *a1;
  }

  *Stream = v21;
  Stream[1] = v22;
  Stream[2] = v23;
  Stream[3] = v24;
  Stream[4] = v18;
  Stream[5] = v19;
  Stream[6] = v20;
  result = physx::Scb::Scene::scheduleForUpdate(v26, a1);
  *(a1 + 8) |= 1u;
  return result;
}

float physx::PxArticulationJointImpl::getParentPose(physx::PxArticulationJointImpl *this, uint64_t a2)
{
  (*(**(a2 + 408) + 224))(&v27);
  if (*(a2 + 8))
  {
    v6 = *(a2 + 16);
  }

  else
  {
    v6 = (a2 + 32);
  }

  _S2 = v6[1].f32[0] + v6[1].f32[0];
  v8 = v6[1].f32[1] + v6[1].f32[1];
  _S3 = v6[1].f32[2] + v6[1].f32[2];
  v10 = v30;
  v11 = (v29 * v29) + -0.5;
  *v4.i32 = v27;
  _Q7.i64[0] = v28;
  __asm
  {
    FMLA            S16, S3, V7.S[1]
    FMLA            S18, S2, V7.S[1]
    FMLA            S20, S16, V7.S[1]
  }

  v19 = v31 + (((v29 * _S18) + (v8 * v11)) + (*&v28 * _S16));
  v20 = *v6;
  v20.i32[3] = HIDWORD(v28);
  v21 = v32 + _S20;
  v22 = ((v29 * (vmuls_lane_f32(v8, vnegq_f32(v20), 3) + (*&v28 * _S3))) + (_S2 * v11)) + (v27 * _S16);
  v23 = vextq_s8(vextq_s8(v4, v4, 4uLL), _Q7, 0xCuLL);
  v23.f32[3] = -v27;
  v24 = vmlaq_n_f32(vmulq_f32(vextq_s8(vdupq_laneq_s32(*v6, 3), *v6, 4uLL), v23), *v6, v29);
  v23.f32[3] = -*&v28;
  _Q7.f32[2] = v27;
  _Q7.i32[3] = v6->i64[1];
  v25 = vmlsq_f32(vmlaq_f32(vuzp2q_s32(vextq_s8(v24, v24, 4uLL), v24), vextq_s8(vextq_s8(*v6, *v6, 0xCuLL), *v6, 8uLL), v23), _Q7, v20);
  *this = vzip2q_s32(vzip1q_s32(v25, vextq_s8(v25, v25, 0xCuLL)), v25);
  result = v10 + v22;
  *(this + 4) = v10 + v22;
  *(this + 5) = v19;
  *(this + 6) = v21;
  return result;
}

physx::Sc::ArticulationJointSim *physx::PxArticulationJointImpl::setChildPose(uint64_t a1, float *a2)
{
  (*(**(a1 + 416) + 224))(&v28);
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = sqrtf((((v4 * v4) + (*a2 * *a2)) + (v5 * v5)) + (v6 * v6));
  v8 = *a2 / v7;
  v9 = v4 / v7;
  v10 = v5 / v7;
  v11 = v6 / v7;
  v12 = (a2[4] - v31) + (a2[4] - v31);
  v13 = (a2[5] - v32) + (a2[5] - v32);
  v14 = (a2[6] - v33) + (a2[6] - v33);
  v15 = (v30 * v30) + -0.5;
  v16 = (-(*(&v28 + 1) * v13) - (*&v28 * v12)) - (v29 * v14);
  v17 = ((v30 * ((v29 * v13) - (*(&v28 + 1) * v14))) + (v12 * v15)) - (*&v28 * v16);
  v18 = ((v30 * ((*&v28 * v14) - (v29 * v12))) + (v13 * v15)) - (*(&v28 + 1) * v16);
  v19 = ((v30 * ((*(&v28 + 1) * v12) - (*&v28 * v13))) + (v14 * v15)) - (v29 * v16);
  v20 = (((v30 * v8) - (*&v28 * v11)) - (*(&v28 + 1) * v10)) + (v9 * v29);
  v21 = (((v30 * v9) - (*(&v28 + 1) * v11)) - (v29 * v8)) + (v10 * *&v28);
  v22 = (((v30 * v10) - (v29 * v11)) - (*&v28 * v9)) + (v8 * *(&v28 + 1));
  v23 = (((v8 * *&v28) + (v30 * v11)) + (*(&v28 + 1) * v9)) + (v29 * v10);
  v34[0] = v20;
  v34[1] = v21;
  v34[2] = v22;
  v34[3] = v23;
  v34[4] = v17;
  v34[5] = v18;
  v34[6] = v19;
  v24 = *(a1 + 8);
  if (v24 >> 30 == 2)
  {
    v25 = *a1;
    if (*(*a1 + 7689))
    {
      goto LABEL_5;
    }

    return physx::Sc::ArticulationJointCore::setChildPose(a1 + 24, v34);
  }

  if (v24 >> 30 != 3)
  {
    return physx::Sc::ArticulationJointCore::setChildPose(a1 + 24, v34);
  }

  v25 = *a1;
LABEL_5:
  Stream = *(a1 + 16);
  if (!Stream)
  {
    Stream = physx::Scb::Scene::getStream(v25, HIBYTE(v24) & 0xF);
    *(a1 + 16) = Stream;
    v25 = *a1;
  }

  Stream[7] = v20;
  Stream[8] = v21;
  Stream[9] = v22;
  Stream[10] = v23;
  Stream[11] = v17;
  Stream[12] = v18;
  Stream[13] = v19;
  result = physx::Scb::Scene::scheduleForUpdate(v25, a1);
  *(a1 + 8) |= 2u;
  return result;
}

float physx::PxArticulationJointImpl::getChildPose(physx::PxArticulationJointImpl *this, uint64_t a2)
{
  (*(**(a2 + 416) + 224))(&v27);
  if ((*(a2 + 8) & 2) != 0)
  {
    v6 = *(a2 + 16) + 28;
  }

  else
  {
    v6 = a2 + 60;
  }

  _S2 = *(v6 + 16) + *(v6 + 16);
  v8 = *(v6 + 20) + *(v6 + 20);
  _S3 = *(v6 + 24) + *(v6 + 24);
  v10 = v30;
  v11 = (v29 * v29) + -0.5;
  *v4.i32 = v27;
  _Q7.i64[0] = v28;
  __asm
  {
    FMLA            S16, S3, V7.S[1]
    FMLA            S18, S2, V7.S[1]
    FMLA            S20, S16, V7.S[1]
  }

  v19 = v31 + (((v29 * _S18) + (v8 * v11)) + (*&v28 * _S16));
  v20 = *v6;
  v20.i32[3] = HIDWORD(v28);
  v21 = v32 + _S20;
  v22 = ((v29 * (vmuls_lane_f32(v8, vnegq_f32(v20), 3) + (*&v28 * _S3))) + (_S2 * v11)) + (v27 * _S16);
  v23 = vextq_s8(vextq_s8(v4, v4, 4uLL), _Q7, 0xCuLL);
  v23.f32[3] = -v27;
  v24 = vmlaq_n_f32(vmulq_f32(vextq_s8(vdupq_laneq_s32(*v6, 3), *v6, 4uLL), v23), *v6, v29);
  v23.f32[3] = -*&v28;
  _Q7.f32[2] = v27;
  _Q7.i32[3] = *(v6 + 8);
  v25 = vmlsq_f32(vmlaq_f32(vuzp2q_s32(vextq_s8(v24, v24, 4uLL), v24), vextq_s8(vextq_s8(*v6, *v6, 0xCuLL), *v6, 8uLL), v23), _Q7, v20);
  *this = vzip2q_s32(vzip1q_s32(v25, vextq_s8(v25, v25, 0xCuLL)), v25);
  result = v10 + v22;
  *(this + 4) = v10 + v22;
  *(this + 5) = v19;
  *(this + 6) = v21;
  return result;
}

void physx::NpBatchQuery::~NpBatchQuery(physx::NpBatchQuery *this)
{
  *this = &unk_1F5D24EA0;
  v2 = *(this + 9);
  if ((v2 & 0x80000000) == 0 && (v2 & 0x7FFFFFFF) != 0 && *(this + 3) != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  physx::shdfnd::SyncT<physx::shdfnd::ReflectionAllocator<physx::shdfnd::SyncImpl>>::~SyncT(this + 1);
}

{
  physx::NpBatchQuery::~NpBatchQuery(this);
  if (v1)
  {
    v2 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

    v2();
  }
}

uint64_t physx::NpBatchQuery::setUserMemory(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = 0;
  atomic_compare_exchange_strong((result + 60), &v9, 0);
  if (v9)
  {
    return physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpBatchQuery.cpp", 73, "PxBatchQuery::setUserMemory: This batch is still executing, skipping setUserMemory", a6, a7, a8, a9);
  }

  *(result + 96) = *a2;
  v10 = *(a2 + 16);
  v11 = *(a2 + 32);
  v12 = *(a2 + 48);
  *(result + 160) = *(a2 + 64);
  *(result + 128) = v11;
  *(result + 144) = v12;
  *(result + 112) = v10;
  return result;
}

uint64_t physx::NpBatchQuery::execute(uint64_t this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v13 = 0;
  atomic_compare_exchange_strong((this + 60), &v13, 1u);
  if (v13 == -1)
  {
    v14 = "PxBatchQuery::execute: Another thread is still adding queries to this batch";
    v15 = physx::shdfnd::Foundation::mInstance;
    v16 = 317;

    return physx::shdfnd::Foundation::error(v15, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpBatchQuery.cpp", v16, v14, a6, a7, a8, a9);
  }

  if (v13 == 1)
  {
    v14 = "PxBatchQuery::execute: This batch is already executing";
    v15 = physx::shdfnd::Foundation::mInstance;
    v16 = 312;

    return physx::shdfnd::Foundation::error(v15, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpBatchQuery.cpp", v16, v14, a6, a7, a8, a9);
  }

  v115 = v12;
  v116 = v11;
  v117 = v9;
  v118 = v10;
  v17 = this;
  v18 = *(this + 48);
  if (v18)
  {
    v19 = *(this + 96) + 89;
    do
    {
      *(v19 - 1) = 0;
      *(v19 - 17) = 0;
      *(v19 - 25) = 0;
      *(v19 - 9) = 0;
      v19 += 96;
      --v18;
    }

    while (v18);
  }

  v20 = *(this + 52);
  if (v20)
  {
    v21 = *(this + 128) + 49;
    do
    {
      *(v21 - 1) = 0;
      *(v21 - 17) = 0;
      *(v21 - 25) = 0;
      *(v21 - 9) = 0;
      v21 += 56;
      --v20;
    }

    while (v20);
  }

  v22 = *(this + 56);
  v23 = *(this + 112);
  if (v22)
  {
    v24 = v23 + 81;
    do
    {
      *(v24 - 1) = 0;
      *(v24 - 17) = 0;
      *(v24 - 25) = 0;
      *(v24 - 9) = 0;
      v24 += 88;
      --v22;
    }

    while (v22);
  }

  v25 = *(this + 96);
  v91 = *(this + 104);
  v27 = *(this + 128);
  v26 = *(this + 136);
  v28 = *(this + 120);
  v87 = *(this + 144);
  v88 = *(this + 152);
  v86 = *(this + 148);
  v29 = *(this + 72);
  v112 = *(this + 64);
  v113 = v29;
  v114 = *(this + 80);
  if (*(this + 168) == -16)
  {
    *(this + 40) = 0;
    *(this + 56) = 0;
    *(this + 48) = 0;
    *(this + 172) = 0;
    do
    {
      v30 = *(this + 60);
      v31 = v30;
      atomic_compare_exchange_strong((this + 60), &v31, 0);
    }

    while (v31 != v30);
  }

  else
  {
    v89 = v27;
    v90 = v26;
    v32 = 0;
    v33 = 0;
    do
    {
      v34 = *(v17 + 24);
      v35 = v34 + v33;
      v33 = *(v34 + v33);
      _X8 = v34 + v33;
      __asm { PRFM            #0, [X8] }

      v40 = (v35 + 56);
      if (*(v35 + 56))
      {
        *(v35 + 56) = v35 + 104;
        v41 = 116;
      }

      else
      {
        v41 = 104;
      }

      if (*(v35 + 64))
      {
        v42 = v35 + v41;
        v41 += 12;
        *(v35 + 64) = v42;
      }

      if (*(v35 + 88))
      {
        v43 = v35 + v41;
        v41 += 28;
        *(v35 + 88) = v43;
      }

      if (*(v35 + 80))
      {
        v44 = (v35 + v41);
        v47 = *v44;
        v45 = v44 + 1;
        v46 = v47;
        if (v47 > 4 || v46 == 1)
        {
          v45 = 0;
        }

        *(v35 + 80) = v45;
      }

      v49 = *(v35 + 50);
      if (v49 == 2)
      {
        v72 = v86 + 1227133513 * ((v28 - *(v17 + 120)) >> 3);
        if (*(v35 + 48) >= v72)
        {
          v73 = v86 + 1227133513 * ((v28 - *(v17 + 120)) >> 3);
        }

        else
        {
          v73 = *(v35 + 48);
        }

        v94 = 0uLL;
        LODWORD(v95) = -1;
        WORD2(v95) = 0;
        *v97 = 0uLL;
        v96 = 0;
        *&v97[16] = 2139095039;
        v97[24] = 0;
        v98 = v28;
        v99 = v73;
        v93 = &unk_1F5D25548;
        LOBYTE(v100) = 0;
        v102 = 0;
        v103 = 0;
        LODWORD(v104) = -1;
        WORD2(v104) = 0;
        v105 = 0;
        v106 = 0;
        v107 = 0;
        LODWORD(v108) = 2139095039;
        LOBYTE(v110) = 0;
        v74 = *(v17 + 16);
        v92 = *(v35 + 4);
        this = physx::NpSceneQueries::multiQuery<physx::PxSweepHit>(v74, v40, &v93, &v92, *(v35 + 40), v35 + 8, 0, &v112);
        v75 = 0;
        if (!v72)
        {
          v75 = *(v35 + 48) != 0;
        }

        v76 = v100 | v75;
        LOBYTE(v100) = v76;
        *(v23 + 72) = *(v35 + 32);
        v77 = v94;
        *(v23 + 16) = v95;
        *v23 = v77;
        *(v23 + 20) = WORD2(v95);
        *(v23 + 24) = v96;
        *(v23 + 32) = *v97;
        *(v23 + 36) = *&v97[4];
        *(v23 + 52) = *&v97[20];
        *(v23 + 81) = v97[24];
        v78 = HIDWORD(v99);
        v79 = HIDWORD(v99) == 0;
        *(v23 + 64) = HIDWORD(v99);
        v80 = v76 & 1;
        if (v80)
        {
          v81 = 2;
        }

        else
        {
          v81 = 1;
        }

        *(v23 + 80) = v81;
        if ((v80 & v79) != 0)
        {
          v82 = 0;
        }

        else
        {
          v82 = v98;
        }

        *(v23 + 56) = v82;
        v23 += 88;
        v28 += 56 * v78;
      }

      else if (v49 == 1)
      {
        v61 = v88 + 1431655765 * ((v90 - *(v17 + 136)) >> 3);
        v62 = *(v35 + 48);
        if (v62 >= v61)
        {
          v62 = v88 + 1431655765 * ((v90 - *(v17 + 136)) >> 3);
        }

        v94 = 0uLL;
        LODWORD(v95) = -1;
        LOBYTE(v96) = 0;
        *v97 = v90;
        *&v97[8] = v62;
        v93 = &unk_1F5D25500;
        v97[16] = 0;
        *&v97[24] = 0;
        v98 = 0;
        LODWORD(v99) = -1;
        LOBYTE(v102) = 0;
        v63 = *(v17 + 16);
        v92 = *(v35 + 4);
        this = physx::NpSceneQueries::multiQuery<physx::PxOverlapHit>(v63, v40, &v93, &v92, *(v35 + 40), v35 + 8, 0, &v112);
        v64 = 0;
        if (!v61)
        {
          v64 = *(v35 + 48) != 0;
        }

        v65 = v97[16] | v64;
        v97[16] = v65;
        *(v89 + 40) = *(v35 + 32);
        v66 = v94;
        *(v89 + 16) = v95;
        *v89 = v66;
        *(v89 + 49) = v96;
        v67 = *&v97[12];
        v68 = *&v97[12] == 0;
        *(v89 + 32) = *&v97[12];
        v69 = v65 & 1;
        if (v69)
        {
          v70 = 2;
        }

        else
        {
          v70 = 1;
        }

        *(v89 + 48) = v70;
        if ((v69 & v68) != 0)
        {
          v71 = 0;
        }

        else
        {
          v71 = *v97;
        }

        *(v89 + 24) = v71;
        v89 += 56;
        v90 += 24 * v67;
      }

      else if (!*(v35 + 50))
      {
        v50 = (v91 - *(v17 + 104)) >> 6;
        v51 = v87 - v50;
        if (*(v35 + 48) < (v87 - v50))
        {
          v51 = *(v35 + 48);
        }

        v94 = 0uLL;
        LODWORD(v95) = -1;
        WORD2(v95) = 0;
        *v97 = 0uLL;
        v96 = 0;
        *&v97[16] = 2139095039;
        *&v97[24] = 0;
        LOBYTE(v98) = 0;
        v99 = v91;
        v100 = v51;
        v101 = 0;
        v93 = &unk_1F5D254B8;
        LOBYTE(v102) = 0;
        v103 = 0;
        v104 = 0;
        LODWORD(v105) = -1;
        WORD2(v105) = 0;
        v107 = 0;
        v108 = 0;
        v106 = 0;
        v109 = 2139095039;
        v110 = 0;
        v111 = 0;
        v52 = *(v17 + 16);
        v92 = *(v35 + 4);
        this = physx::NpSceneQueries::multiQuery<physx::PxRaycastHit>(v52, v40, &v93, &v92, *(v35 + 40), v35 + 8, 0, &v112);
        v53 = 0;
        if (v87 == v50)
        {
          v53 = *(v35 + 48) != 0;
        }

        v54 = v102 | v53;
        LOBYTE(v102) = v54;
        *(v25 + 80) = *(v35 + 32);
        v55 = v94;
        *(v25 + 16) = v95;
        *v25 = v55;
        *(v25 + 20) = WORD2(v95);
        *(v25 + 24) = v96;
        *(v25 + 32) = *v97;
        *(v25 + 36) = *&v97[4];
        *(v25 + 52) = *&v97[20];
        *(v25 + 89) = v98;
        v56 = v101;
        v57 = v101 == 0;
        *(v25 + 72) = v101;
        v58 = v54 & 1;
        if (v58)
        {
          v59 = 2;
        }

        else
        {
          v59 = 1;
        }

        *(v25 + 88) = v59;
        if ((v58 & v57) != 0)
        {
          v60 = 0;
        }

        else
        {
          v60 = v99;
        }

        *(v25 + 64) = v60;
        v25 += 96;
        v91 += v56 << 6;
      }
    }

    while (*v35 != -16 && ++v32 < 0xF4240);
    *(v17 + 168) = -16;
    *(v17 + 40) = 0;
    *(v17 + 56) = 0;
    *(v17 + 48) = 0;
    *(v17 + 172) = 0;
    do
    {
      v84 = *(v17 + 60);
      v85 = v84;
      atomic_compare_exchange_strong((v17 + 60), &v85, 0);
    }

    while (v85 != v84);
  }

  return this;
}

uint64_t physx::NpBatchQuery::writeBatchHeader(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  v5 = *(a1 + 36) & 0x7FFFFFFF;
  v6 = 3 * (v4 + 56);
  if (v4 + 56 > v5 && v5 < v6)
  {
    physx::shdfnd::Array<char,physx::shdfnd::ReflectionAllocator<char>>::recreate(a1 + 24, v6);
  }

  result = physx::shdfnd::Array<char,physx::shdfnd::ReflectionAllocator<char>>::resizeUninitialized(a1 + 24, v4 + 56);
  v9 = *(a1 + 24) + *(a1 + 40);
  *v9 = *a2;
  *(v9 + 4) = *(a2 + 4);
  *(v9 + 8) = *(a2 + 8);
  *(v9 + 24) = *(a2 + 24);
  v10 = *(a2 + 32);
  *(v9 + 47) = *(a2 + 47);
  *(v9 + 32) = v10;
  *(a1 + 40) = v4 + 56;
  v11 = *(a1 + 168);
  v12 = (a1 + 168);
  if (v11 != -16)
  {
    v12 = (*(a1 + 24) + v11);
  }

  *v12 = v4;
  *(a1 + 168) = v4;
  return result;
}

_DWORD *physx::NpBatchQuery::raycast(_DWORD *result, uint64_t a2, uint64_t a3, __int16 a4, _WORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, char a10)
{
  if (result[12] < result[39])
  {
    v10 = result;
    v11 = 0;
    atomic_compare_exchange_strong(result + 15, &v11, 0xFFFFFFFF);
    if (v11 == 1)
    {
      v12 = physx::shdfnd::Foundation::mInstance;

      return physx::shdfnd::Foundation::error(v12, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpBatchQuery.cpp", 484, "PxBatchQuery::raycast: This batch is still executing, skipping query.", a6, a7, a8, a10);
    }

    else
    {
      _X20 = a3;
      _X21 = a2;
      ++result[12];
      WORD2(v24) = *a5;
      v25 = *a6;
      LOWORD(v26) = *(a6 + 16);
      v27 = a7;
      v28 = a8;
      v29 = a4;
      v30 = 0;
      LODWORD(v24) = -16;
      physx::NpBatchQuery::writeBatchHeader(result, &v24);
      __asm
      {
        PRFM            #0, [X21]
        PRFM            #0, [X20]
      }

      v24 = _X21;
      *&v25 = _X20;
      *(&v25 + 2) = a9;
      v26 = 0;
      v27 = 0;
      LODWORD(v28) = 0;
      result = writeQueryInput((v10 + 6), &v24);
      do
      {
        v22 = v10[15];
        v23 = v22;
        atomic_compare_exchange_strong(v10 + 15, &v23, 0);
      }

      while (v23 != v22);
    }
  }

  return result;
}

uint64_t writeQueryInput(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 16);
  v5 = v4 + 48;
  v6 = *(a1 + 12) & 0x7FFFFFFF;
  v7 = 3 * (v4 + 48);
  if (v4 + 48 > v6 && v6 < v7)
  {
    physx::shdfnd::Array<char,physx::shdfnd::ReflectionAllocator<char>>::recreate(a1, v7);
  }

  result = physx::shdfnd::Array<char,physx::shdfnd::ReflectionAllocator<char>>::resizeUninitialized(a1, v4 + 48);
  v10 = (*a1 + *(a1 + 16));
  v11 = *a2;
  v12 = a2[1];
  *(v10 + 28) = *(a2 + 28);
  *v10 = v11;
  v10[1] = v12;
  *(a1 + 16) = v5;
  v13 = *a2;
  if (*a2)
  {
    v5 = v4 + 60;
    v14 = *(a1 + 12) & 0x7FFFFFFF;
    if (v4 + 60 > v14 && v14 < 3 * v5)
    {
      physx::shdfnd::Array<char,physx::shdfnd::ReflectionAllocator<char>>::recreate(a1, 3 * v5);
    }

    result = physx::shdfnd::Array<char,physx::shdfnd::ReflectionAllocator<char>>::resizeUninitialized(a1, v4 + 60);
    v15 = *a1 + *(a1 + 16);
    *v15 = *v13;
    *(v15 + 8) = *(v13 + 8);
    *(a1 + 16) = v5;
  }

  v16 = *(a2 + 1);
  if (v16)
  {
    v5 += 12;
    v17 = *(a1 + 12) & 0x7FFFFFFF;
    v18 = 3 * v5;
    if (v5 > v17 && v17 < v18)
    {
      physx::shdfnd::Array<char,physx::shdfnd::ReflectionAllocator<char>>::recreate(a1, v18);
    }

    result = physx::shdfnd::Array<char,physx::shdfnd::ReflectionAllocator<char>>::resizeUninitialized(a1, v5);
    v20 = *a1 + *(a1 + 16);
    *v20 = *v16;
    *(v20 + 8) = *(v16 + 8);
    *(a1 + 16) = v5;
  }

  v21 = *(a2 + 4);
  if (v21)
  {
    v5 += 28;
    v22 = *(a1 + 12) & 0x7FFFFFFF;
    if (v5 > v22 && v22 < 3 * v5)
    {
      physx::shdfnd::Array<char,physx::shdfnd::ReflectionAllocator<char>>::recreate(a1, 3 * v5);
    }

    result = physx::shdfnd::Array<char,physx::shdfnd::ReflectionAllocator<char>>::resizeUninitialized(a1, v5);
    v23 = *a1 + *(a1 + 16);
    *v23 = *v21;
    *(v23 + 16) = *(v21 + 16);
    *(v23 + 24) = *(v21 + 24);
    *(a1 + 16) = v5;
  }

  v24 = *(a2 + 3);
  if (v24)
  {
    v25 = *v24;
    v26 = v5 + 4;
    v27 = *(a1 + 12) & 0x7FFFFFFF;
    if (v5 + 4 > v27 && v27 < 3 * v26)
    {
      physx::shdfnd::Array<char,physx::shdfnd::ReflectionAllocator<char>>::recreate(a1, 3 * v26);
    }

    result = physx::shdfnd::Array<char,physx::shdfnd::ReflectionAllocator<char>>::resizeUninitialized(a1, v5 + 4);
    *(*a1 + *(a1 + 16)) = v25;
    *(a1 + 16) = v26;
    if (v25 > 2)
    {
      if (v25 == 3)
      {
        v28 = v5 + 20;
        v36 = *(a1 + 12) & 0x7FFFFFFF;
        if (v28 > v36 && v36 < 3 * v28)
        {
          physx::shdfnd::Array<char,physx::shdfnd::ReflectionAllocator<char>>::recreate(a1, 3 * v28);
        }

        result = physx::shdfnd::Array<char,physx::shdfnd::ReflectionAllocator<char>>::resizeUninitialized(a1, v28);
        v37 = *a1 + *(a1 + 16);
        *v37 = *v24;
        *(v37 + 4) = *(v24 + 4);
        *(v37 + 12) = *(v24 + 3);
      }

      else
      {
        if (v25 != 4)
        {
          return result;
        }

        v28 = v5 + 52;
        v32 = *(a1 + 12) & 0x7FFFFFFF;
        if (v28 > v32 && v32 < 3 * v28)
        {
          physx::shdfnd::Array<char,physx::shdfnd::ReflectionAllocator<char>>::recreate(a1, 3 * v28);
        }

        result = physx::shdfnd::Array<char,physx::shdfnd::ReflectionAllocator<char>>::resizeUninitialized(a1, v28);
        v33 = *a1 + *(a1 + 16);
        *v33 = *v24;
        *(v33 + 4) = *(v24 + 4);
        *(v33 + 20) = *(v24 + 20);
        *(v33 + 28) = *(v24 + 7);
        *(v33 + 32) = v24[4];
        *(v33 + 40) = *(v24 + 40);
        v34 = *(v24 + 41);
        *(v33 + 43) = *(v24 + 43);
        *(v33 + 41) = v34;
      }
    }

    else if (v25)
    {
      if (v25 != 2)
      {
        return result;
      }

      v28 = v5 + 16;
      v29 = *(a1 + 12) & 0x7FFFFFFF;
      if (v28 > v29 && v29 < 3 * v28)
      {
        physx::shdfnd::Array<char,physx::shdfnd::ReflectionAllocator<char>>::recreate(a1, 3 * v28);
      }

      result = physx::shdfnd::Array<char,physx::shdfnd::ReflectionAllocator<char>>::resizeUninitialized(a1, v28);
      v30 = *a1 + *(a1 + 16);
      v31 = *v24;
      *(v30 + 8) = *(v24 + 2);
      *v30 = v31;
    }

    else
    {
      v28 = v5 + 12;
      v35 = *(a1 + 12) & 0x7FFFFFFF;
      if (v28 > v35 && v35 < 3 * v28)
      {
        physx::shdfnd::Array<char,physx::shdfnd::ReflectionAllocator<char>>::recreate(a1, 3 * v28);
      }

      result = physx::shdfnd::Array<char,physx::shdfnd::ReflectionAllocator<char>>::resizeUninitialized(a1, v28);
      *(*a1 + *(a1 + 16)) = *v24;
    }

    *(a1 + 16) = v28;
  }

  return result;
}

_DWORD *physx::NpBatchQuery::overlap(_DWORD *result, uint64_t a2, uint64_t a3, __int16 a4, __int128 *a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (result[13] < result[41])
  {
    v9 = result;
    v10 = 0;
    atomic_compare_exchange_strong(result + 15, &v10, 0xFFFFFFFF);
    if (v10 == 1)
    {
      v11 = physx::shdfnd::Foundation::mInstance;

      return physx::shdfnd::Foundation::error(v11, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpBatchQuery.cpp", 505, "PxBatchQuery::overlap: This batch is still executing, skipping query.", a6, a7, a8, a9);
    }

    else
    {
      _X20 = a3;
      _X21 = a2;
      ++result[13];
      WORD2(v22) = 0;
      v23 = *a5;
      LOWORD(v24) = *(a5 + 8);
      v25 = a6;
      v26 = a7;
      v27 = a4;
      v28 = 1;
      LODWORD(v22) = -16;
      physx::NpBatchQuery::writeBatchHeader(result, &v22);
      __asm
      {
        PRFM            #0, [X21]
        PRFM            #0, [X20]
      }

      v24 = _X21;
      v25 = _X20;
      LODWORD(v26) = 0;
      v22 = 0;
      *&v23 = 0;
      result = writeQueryInput((v9 + 6), &v22);
      do
      {
        v20 = v9[15];
        v21 = v20;
        atomic_compare_exchange_strong(v9 + 15, &v21, 0);
      }

      while (v21 != v20);
    }
  }

  return result;
}

_DWORD *physx::NpBatchQuery::sweep(_DWORD *result, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, _WORD *a6, uint64_t a7, uint64_t a8, float a9, float a10, uint64_t a11)
{
  if (result[14] < result[40])
  {
    v11 = result;
    v12 = 0;
    atomic_compare_exchange_strong(result + 15, &v12, 0xFFFFFFFF);
    if (v12 == 1)
    {
      v13 = physx::shdfnd::Foundation::mInstance;

      return physx::shdfnd::Foundation::error(v13, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpBatchQuery.cpp", 541, "PxBatchQuery::sweep: This batch is still executing, skipping query.", a6, a7, a8, a11);
    }

    else
    {
      _X21 = a4;
      _X20 = a3;
      _X22 = a2;
      ++result[14];
      WORD2(v34) = *a6;
      v35 = *a7;
      LOWORD(v36) = *(a7 + 16);
      v37 = a8;
      v38 = a11;
      v39 = a5;
      v40 = 2;
      LODWORD(v34) = -16;
      physx::NpBatchQuery::writeBatchHeader(result, &v34);
      v23 = *a6;
      *(v11 + 172) |= (v23 & 0x200) != 0;
      if ((~v23 & 0x300) == 0)
      {
        physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 4, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpBatchQuery.cpp", 551, " Precise sweep doesn't support MTD. Perform MTD with default sweep", v20, v21, v22, v33);
        v23 = *a6 & 0xFEFF;
        *a6 &= ~0x100u;
      }

      if ((~v23 & 0x210) == 0)
      {
        physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 4, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpBatchQuery.cpp", 557, " eMTD cannot be used in conjunction with eASSUME_NO_INITIAL_OVERLAP. eASSUME_NO_INITIAL_OVERLAP will be ignored", v20, v21, v22, v33);
        LOWORD(v23) = *a6 & 0xFFEF;
        *a6 = v23;
      }

      if (a10 > 0.0 && (v23 & 0x100) != 0)
      {
        physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 4, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpBatchQuery.cpp", 565, " Precise sweep doesn't support inflation, inflation will be overwritten to be zero", v20, v21, v22, v33);
        a10 = 0.0;
      }

      __asm
      {
        PRFM            #0, [X22]
        PRFM            #0, [X20]
        PRFM            #0, [X21]
      }

      *(&v35 + 2) = a9;
      v34 = 0;
      *&v35 = _X21;
      v36 = _X22;
      v37 = _X20;
      *&v38 = a10;
      result = writeQueryInput((v11 + 6), &v34);
      do
      {
        v31 = v11[15];
        v32 = v31;
        atomic_compare_exchange_strong(v11 + 15, &v32, 0);
      }

      while (v32 != v31);
    }
  }

  return result;
}

uint64_t physx::NpBatchQuery::release(physx::NpBatchQuery *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = 0;
  atomic_compare_exchange_strong(this + 15, &v9, 0);
  if (v9)
  {
    return physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpBatchQuery.cpp", 577, "PxBatchQuery::release: This batch is still executing, skipping release", a6, a7, a8, a9);
  }

  else
  {
    return physx::NpScene::releaseBatchQuery(*(this + 2), this);
  }
}

void physx::NpConstraint::setConstraintFunctions(int8x16_t *a1, uint64_t a2, int8x16_t *a3)
{
  a1[5].i64[1] = a2;
  a1[6] = vextq_s8(*a3, *a3, 8uLL);
  a1[7].i64[0] = a3[1].i64[0];
  v4 = a1[1].i64[0];
  if (v4)
  {
    v5 = v4 + *(&physx::NpActor::sLazyInitOffsets + *(v4 + 8));
    v6 = *(v5 + 8);
    if (!v6)
    {
      goto LABEL_13;
    }

    v7 = *(v6 + 80);
    if (!v7)
    {
      goto LABEL_13;
    }

    v8 = (*(v6 + 72) + 8);
    v9 = 0xFFFFFFFFLL;
    while (*(v8 - 8) || *v8 != a1)
    {
      --v9;
      v8 += 2;
      if (!--v7)
      {
        goto LABEL_13;
      }
    }

    if (v9)
    {
      LODWORD(v4) = 0;
    }

    else
    {
LABEL_13:
      physx::NpActor::addConnector(v5, 0, a1);
      LODWORD(v4) = 1;
    }
  }

  v11 = a1[1].i64[1];
  if (!v11)
  {
    goto LABEL_25;
  }

  v12 = v11 + *(&physx::NpActor::sLazyInitOffsets + v11[4]);
  v13 = *(v12 + 8);
  if (!v13)
  {
    goto LABEL_27;
  }

  v14 = *(v13 + 80);
  if (!v14)
  {
    goto LABEL_27;
  }

  v15 = (*(v13 + 72) + 8);
  v16 = 0xFFFFFFFFLL;
  while (*(v15 - 8) || *v15 != a1)
  {
    --v16;
    v15 += 2;
    if (!--v14)
    {
      goto LABEL_27;
    }
  }

  if (v16)
  {
LABEL_25:
    if (!v4)
    {
      return;
    }
  }

  else
  {
LABEL_27:
    physx::NpActor::addConnector(v12, 0, a1);
    v11 = a1[1].i64[1];
  }

  v18 = a1[1].i64[0];
  if (!v18 || ((*(*v18 + 104))(&v29, a1[1].i64[0]), (v29 & 8) != 0))
  {
    v19 = 0;
    if (!v11)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v19 = (*(*v18 + 56))(v18);
    if (!v11)
    {
      goto LABEL_35;
    }
  }

  (*(*v11 + 104))(&v29, v11);
  if ((v29 & 8) == 0)
  {
    v20 = (*(*v11 + 56))(v11);
    goto LABEL_36;
  }

LABEL_35:
  v20 = 0;
LABEL_36:
  v21 = v18 == 0;
  if (v11)
  {
    v22 = v20 == 0;
  }

  else
  {
    v22 = 0;
  }

  v23 = !v22;
  if (v19)
  {
    v21 = 1;
    v24 = v19;
  }

  else
  {
    v24 = v20;
  }

  if ((v21 & v23) != 0)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  if ((a1[2].i32[2] >> 30) - 1 <= 1)
  {
    v26 = a1[2].i64[0];
    if (v26)
    {
      v27 = (v26 - 16);
    }

    else
    {
      v27 = 0;
    }

    if (v27 == v25)
    {
      return;
    }

    if (v26)
    {
      v29 = a1;
      physx::shdfnd::internal::HashSetBase<physx::PxConstraint *,physx::shdfnd::Hash<physx::PxConstraint *>,physx::shdfnd::NonTrackingAllocator,true>::erase(v27 + 1136, &v29);
      physx::Scb::Scene::removeConstraint(v27 + 2, a1[2].i64);
    }
  }

  if (v25)
  {
    v29 = a1;
    v30 = 0;
    v28 = physx::shdfnd::internal::HashBase<physx::PxConstraint *,physx::PxConstraint *,physx::shdfnd::Hash<physx::PxConstraint *>,physx::shdfnd::internal::HashSetBase<physx::PxConstraint *,physx::shdfnd::Hash<physx::PxConstraint *>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::create(v25 + 1136, &v29, &v30);
    if ((v30 & 1) == 0)
    {
      *v28 = v29;
    }

    physx::Scb::Scene::add<physx::Scb::Constraint>(v25 + 2, a1[2].i64, v25 + 996);
  }
}

void physx::NpConstraint::~NpConstraint(physx::NpConstraint *this)
{
  *this = &unk_1F5D24F20;
  if (*(this + 5))
  {
    (*(**(this + 11) + 16))(*(this + 11));
  }

  v2 = physx::NpFactory::mInstance;
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_lock(*(physx::NpFactory::mInstance + 8));
  }

  if (*(v2 + 1004))
  {
    v3 = (this + ~(this << 32)) ^ ((this + ~(this << 32)) >> 22);
    v4 = 9 * ((v3 + ~(v3 << 13)) ^ ((v3 + ~(v3 << 13)) >> 8));
    v5 = (v4 ^ (v4 >> 15)) + ~((v4 ^ (v4 >> 15)) << 27);
    v6 = (*(v2 + 976) + 4 * ((*(v2 + 988) - 1) & ((v5 >> 31) ^ v5)));
    v7 = *v6;
    if (v7 != -1)
    {
      v8 = *(v2 + 960);
      v9 = *(v2 + 968);
      if (*(v8 + 8 * v7) == this)
      {
LABEL_12:
        *v6 = *(v9 + 4 * v7);
        *(v2 + 1000) = vadd_s32(*(v2 + 1000), 0xFFFFFFFF00000001);
        *(v9 + 4 * v7) = *(v2 + 996);
        *(v2 + 996) = v7;
      }

      else
      {
        while (1)
        {
          v10 = v7;
          v7 = *(v9 + 4 * v7);
          if (v7 == -1)
          {
            break;
          }

          if (*(v8 + 8 * v7) == this)
          {
            v6 = (v9 + 4 * v10);
            goto LABEL_12;
          }
        }
      }
    }
  }

  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_unlock(*(v2 + 8));
  }
}

{
  physx::NpConstraint::~NpConstraint(this);
  if (v1)
  {
    v2 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

    v2();
  }
}

uint64_t physx::NpConstraint::release(physx::NpConstraint *this)
{
  if (((*(this + 10) >> 30) - 1) > 1)
  {
    v3 = 0;
  }

  else
  {
    v2 = *(this + 4);
    if (v2)
    {
      v3 = (v2 - 16);
    }

    else
    {
      v3 = 0;
    }
  }

  physx::NpPhysics::notifyDeletionListeners(physx::NpPhysics::mInstance, this, 0, 1);
  v4 = *(this + 2);
  if (v4)
  {
    physx::NpActor::removeConnector(v4 + *(&physx::NpActor::sLazyInitOffsets + v4[4]), v4, 0, this);
  }

  v5 = *(this + 3);
  if (v5)
  {
    physx::NpActor::removeConnector(v5 + *(&physx::NpActor::sLazyInitOffsets + v5[4]), v5, 0, this);
  }

  if (v3)
  {
    v7 = this;
    physx::shdfnd::internal::HashSetBase<physx::PxConstraint *,physx::shdfnd::Hash<physx::PxConstraint *>,physx::shdfnd::NonTrackingAllocator,true>::erase(v3 + 1136, &v7);
    physx::Scb::Scene::removeConstraint(v3 + 2, this + 32);
  }

  return physx::Scb::Base::destroy(this + 32);
}

uint64_t physx::NpConstraint::getScene(physx::NpConstraint *this)
{
  if (((*(this + 10) >> 30) - 1) > 1)
  {
    return 0;
  }

  v1 = *(this + 4);
  if (v1)
  {
    return v1 - 16;
  }

  else
  {
    return 0;
  }
}

uint64_t physx::NpConstraint::getActors(uint64_t result, void *a2, void *a3)
{
  *a2 = *(result + 16);
  *a3 = *(result + 24);
  return result;
}

int32x2_t *physx::NpConstraint::setActors(physx::NpConstraint *this, physx::PxRigidActor *a2, physx::PxRigidActor *a3)
{
  v6 = *(this + 2);
  if (v6)
  {
    physx::NpActor::removeConnector(v6 + *(&physx::NpActor::sLazyInitOffsets + v6[4]), v6, 0, this);
  }

  v7 = *(this + 3);
  if (v7)
  {
    physx::NpActor::removeConnector(v7 + *(&physx::NpActor::sLazyInitOffsets + v7[4]), v7, 0, this);
  }

  if (a2)
  {
    physx::NpActor::addConnector(a2 + *(&physx::NpActor::sLazyInitOffsets + *(a2 + 4)), 0, this);
  }

  if (a3)
  {
    physx::NpActor::addConnector(a3 + *(&physx::NpActor::sLazyInitOffsets + *(a3 + 4)), 0, this);
  }

  *(this + 2) = a2;
  *(this + 3) = a3;
  if (!a2 || ((*(*a2 + 104))(&v24, a2), (v24 & 8) != 0))
  {
    v8 = 0;
    if (!a3)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v8 = (*(*a2 + 56))(a2);
    if (!a3)
    {
      goto LABEL_16;
    }
  }

  (*(*a3 + 104))(&v24, a3);
  if ((v24 & 8) == 0)
  {
    v9 = (*(*a3 + 56))(a3);
    goto LABEL_17;
  }

LABEL_16:
  v9 = 0;
LABEL_17:
  v10 = a2 == 0;
  if (a3)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 0;
  }

  v12 = !v11;
  if (v8)
  {
    v10 = 1;
    v13 = v8;
  }

  else
  {
    v13 = v9;
  }

  if ((v10 & v12) != 0)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(this + 10);
  v16 = v15 >> 30;
  if ((v15 >> 30) - 1 > 1)
  {
    if (v14)
    {
LABEL_37:
      if (a2)
      {
        a2 = (a2 + *(&physx::Scb::Actor::sLazyInitOffsets + (*(a2 + 107) & 0xF) + 3) + 96);
      }

      if (a3)
      {
        a3 = (a3 + *(&physx::Scb::Actor::sLazyInitOffsets + (*(a3 + 107) & 0xF) + 3) + 96);
      }

      v19 = *(this + 10);
      if (v19 >> 30 == 3 || v19 >> 30 == 2 && (*(*(this + 4) + 7689) & 1) != 0)
      {
        Stream = *(this + 6);
        if (!Stream)
        {
          Stream = physx::Scb::Scene::getStream(*(this + 4), HIBYTE(v19) & 0xF);
          *(this + 6) = Stream;
        }

        *Stream = a2;
        Stream[1] = a3;
        result = physx::Scb::Scene::scheduleForUpdate(*(this + 4), this + 32);
        *(this + 10) |= 1u;
      }

      else
      {
        result = *(this + 17);
        if (result)
        {
          physx::Sc::ConstraintSim::preBodiesChange(result);
          result = *(this + 17);
          if (result)
          {
            result = physx::Sc::ConstraintSim::postBodiesChange(result, a2, a3);
          }
        }
      }

      *(this + 18) = 0;
      *(this + 19) = 0;
      *(this + 20) = 0;
      if (v14)
      {
        v24 = this;
        v25 = 0;
        v23 = physx::shdfnd::internal::HashBase<physx::PxConstraint *,physx::PxConstraint *,physx::shdfnd::Hash<physx::PxConstraint *>,physx::shdfnd::internal::HashSetBase<physx::PxConstraint *,physx::shdfnd::Hash<physx::PxConstraint *>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::create(v14 + 1136, &v24, &v25);
        if ((v25 & 1) == 0)
        {
          *v23 = v24;
        }

        return physx::Scb::Scene::add<physx::Scb::Constraint>(v14 + 2, this + 32, v14 + 996);
      }

      return result;
    }
  }

  else
  {
    v17 = *(this + 4);
    if (v17)
    {
      v18 = (v17 - 16);
    }

    else
    {
      v18 = 0;
    }

    if (v18 != v14)
    {
      if (v17)
      {
        v24 = this;
        physx::shdfnd::internal::HashSetBase<physx::PxConstraint *,physx::shdfnd::Hash<physx::PxConstraint *>,physx::shdfnd::NonTrackingAllocator,true>::erase(v18 + 1136, &v24);
        physx::Scb::Scene::removeConstraint(v18 + 2, this + 32);
      }

      goto LABEL_37;
    }
  }

  if (a2)
  {
    a2 = (a2 + *(&physx::Scb::Actor::sLazyInitOffsets + (*(a2 + 107) & 0xF) + 3) + 96);
  }

  if (a3)
  {
    a3 = (a3 + *(&physx::Scb::Actor::sLazyInitOffsets + (*(a3 + 107) & 0xF) + 3) + 96);
  }

  if (v16 == 3 || v16 == 2 && (*(*(this + 4) + 7689) & 1) != 0)
  {
    v22 = *(this + 6);
    if (!v22)
    {
      v22 = physx::Scb::Scene::getStream(*(this + 4), HIBYTE(v15) & 0xF);
      *(this + 6) = v22;
    }

    *v22 = a2;
    v22[1] = a3;
    result = physx::Scb::Scene::scheduleForUpdate(*(this + 4), this + 32);
    *(this + 10) |= 1u;
  }

  else
  {
    result = *(this + 17);
    if (result)
    {
      physx::Sc::ConstraintSim::preBodiesChange(result);
      result = *(this + 17);
      if (result)
      {
        result = physx::Sc::ConstraintSim::postBodiesChange(result, a2, a3);
      }
    }
  }

  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  return result;
}

int32x2_t *physx::NpConstraint::setFlags(int32x2_t *a1, __int16 *a2)
{
  v3 = *a2;
  v4 = a1[5].u32[0];
  if (v4 >> 30 == 2)
  {
    v5 = a1[4];
    if (v5[961].i8[1])
    {
      goto LABEL_5;
    }

LABEL_8:
    v8 = *a2;
    return physx::Sc::ConstraintCore::setFlags(a1 + 7, &v8);
  }

  if (v4 >> 30 != 3)
  {
    goto LABEL_8;
  }

  v5 = a1[4];
LABEL_5:
  Stream = a1[6];
  if (!Stream)
  {
    Stream = physx::Scb::Scene::getStream(v5, HIBYTE(v4) & 0xF);
    a1[6] = Stream;
    v5 = a1[4];
  }

  *(Stream + 24) = v3;
  result = physx::Scb::Scene::scheduleForUpdate(v5, &a1[4]);
  a1[5].i32[0] |= 4u;
  return result;
}

uint64_t physx::NpConstraint::getFlags@<X0>(uint64_t this@<X0>, _WORD *a2@<X8>)
{
  if ((*(this + 40) & 4) != 0)
  {
    v2 = *(*(this + 48) + 24) & (*(this + 168) | 0xFBFE);
  }

  else
  {
    v2 = (*(this + 168) | 0xFBFE) & *(this + 56);
  }

  *a2 = v2;
  return this;
}

int32x2_t *physx::NpConstraint::setFlag(int32x2_t *a1, __int16 a2, int a3)
{
  v4 = a1[5].u32[0];
  if ((v4 & 4) != 0)
  {
    v5 = *(*&a1[6] + 24) & (a1[21].i16[0] | 0xFBFE);
  }

  else
  {
    v5 = (a1[21].i16[0] | 0xFBFE) & a1[7].i16[0];
  }

  v6 = v5 | a2;
  v7 = v5 & ~a2;
  if (a3)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  if (v4 >> 30 == 2)
  {
    v9 = a1[4];
    if (v9[961].i8[1])
    {
      goto LABEL_11;
    }

LABEL_14:
    v12 = v8;
    return physx::Sc::ConstraintCore::setFlags(a1 + 7, &v12);
  }

  if (v4 >> 30 != 3)
  {
    goto LABEL_14;
  }

  v9 = a1[4];
LABEL_11:
  Stream = a1[6];
  if (!Stream)
  {
    Stream = physx::Scb::Scene::getStream(v9, HIBYTE(v4) & 0xF);
    a1[6] = Stream;
    v9 = a1[4];
  }

  *(Stream + 24) = v8;
  result = physx::Scb::Scene::scheduleForUpdate(v9, &a1[4]);
  a1[5].i32[0] |= 4u;
  return result;
}

float physx::NpConstraint::getForce(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *(a1 + 144);
  *(a2 + 8) = *(a1 + 152);
  *a3 = *(a1 + 156);
  result = *(a1 + 164);
  *(a3 + 8) = result;
  return result;
}

uint64_t physx::NpConstraint::updateConstants(uint64_t this)
{
  if (*(this + 176) == 1)
  {
    v1 = this;
    v2 = (***(this + 88))(*(this + 88));
    this = *(v1 + 136);
    if (this)
    {
      this = physx::Sc::ConstraintSim::setConstantsLL(this, v2);
      *(v1 + 176) = 0;
    }
  }

  return this;
}

int32x2_t *physx::NpConstraint::setBreakForce(physx::NpConstraint *this, float a2, float a3)
{
  v6 = *(this + 10);
  if (v6 >> 30 == 2)
  {
    v7 = *(this + 4);
    if (v7[961].i8[1])
    {
      goto LABEL_5;
    }
  }

  else if (v6 >> 30 == 3)
  {
    v7 = *(this + 4);
LABEL_5:
    Stream = *(this + 6);
    if (!Stream)
    {
      Stream = physx::Scb::Scene::getStream(v7, HIBYTE(v6) & 0xF);
      *(this + 6) = Stream;
      v7 = *(this + 4);
    }

    *(Stream + 16) = a2;
    *(Stream + 20) = a3;
    result = physx::Scb::Scene::scheduleForUpdate(v7, this + 32);
    *(this + 10) |= 2u;
    return result;
  }

  *(this + 31) = a2;
  *(this + 32) = a3;
  result = *(this + 17);
  if (result)
  {

    return physx::Sc::ConstraintSim::setBreakForceLL(result, a2, a3);
  }

  return result;
}

float physx::NpConstraint::getBreakForce(physx::NpConstraint *this, float *a2, float *a3)
{
  if ((*(this + 40) & 2) != 0)
  {
    v5 = *(this + 6);
    v3 = (v5 + 16);
    v4 = (v5 + 20);
  }

  else
  {
    v3 = (this + 124);
    v4 = (this + 128);
  }

  *a2 = *v3;
  result = *v4;
  *a3 = *v4;
  return result;
}

int32x2_t *physx::NpConstraint::setMinResponseThreshold(int32x2_t *this, float a2)
{
  v3 = this;
  v4 = this[5].u32[0];
  if (v4 >> 30 == 2)
  {
    this = this[4];
    if (this[961].i8[1])
    {
      goto LABEL_5;
    }
  }

  else if (v4 >> 30 == 3)
  {
    this = this[4];
LABEL_5:
    Stream = v3[6];
    if (!Stream)
    {
      Stream = physx::Scb::Scene::getStream(this, HIBYTE(v4) & 0xF);
      v3[6] = Stream;
      this = v3[4];
    }

    *(Stream + 28) = a2;
    this = physx::Scb::Scene::scheduleForUpdate(this, &v3[4]);
    v3[5].i32[0] |= 8u;
    return this;
  }

  *&v3[16].i32[1] = a2;
  v6 = v3[17];
  if (v6)
  {
    *(*&v6 + 76) = a2;
  }

  return this;
}

float physx::NpConstraint::getMinResponseThreshold(physx::NpConstraint *this)
{
  if ((*(this + 40) & 8) != 0)
  {
    v1 = (*(this + 6) + 28);
  }

  else
  {
    v1 = this + 132;
  }

  return *v1;
}

uint64_t physx::NpConstraint::isValid(physx::NpConstraint *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    LODWORD(v1) = *(v1 + 8) != 6;
  }

  v2 = *(this + 3);
  if (v2)
  {
    LODWORD(v2) = *(v2 + 8) != 6;
  }

  return (v1 | v2) & 1;
}

uint64_t physx::NpConstraint::comShift(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 88);
  if (*(result + 16) == a2)
  {
    result = (*(*v4 + 24))(*(result + 88), 0);
  }

  if (*(v3 + 24) == a2)
  {
    v5 = *(*v4 + 24);

    return v5(v4, 1);
  }

  return result;
}

uint64_t physx::NpConstraint::getSceneFromActors(physx::NpConstraint *this)
{
  v2 = *(this + 2);
  v1 = *(this + 3);
  if (!v2 || ((*(*v2 + 104))(&v10 + 1, *(this + 2)), (v10 & 0x800) != 0))
  {
    v3 = 0;
    if (!v1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = (*(*v2 + 56))(v2);
    if (!v1)
    {
      goto LABEL_8;
    }
  }

  (*(*v1 + 104))(&v10, v1);
  if ((v10 & 8) == 0)
  {
    v4 = (*(*v1 + 56))(v1);
    goto LABEL_9;
  }

LABEL_8:
  v4 = 0;
LABEL_9:
  v5 = v2 == 0;
  if (v1)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 0;
  }

  v7 = !v6;
  if (v3)
  {
    v5 = 1;
    v8 = v3;
  }

  else
  {
    v8 = v4;
  }

  if ((v5 & v7) != 0)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

void physx::NpFactory::~NpFactory(physx::NpFactory *this)
{
  *this = &unk_1F5D24FE8;
  v2 = *(this + 104);
  if (v2)
  {
    (*(*v2 + 32))(v2);
  }

  physx::shdfnd::MutexT<physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>>::~MutexT(this + 931);
  if (*(this + 1857))
  {
    v209 = 0;
    v210 = 0;
    v3 = *(this + 930);
    if (v3)
    {
      do
      {
        v208 = v3;
        v4 = v210;
        if ((HIDWORD(v210) & 0x7FFFFFFFu) <= v210)
        {
          physx::shdfnd::Array<void *,physx::shdfnd::ReflectionAllocator<physx::NpArticulationJointReducedCoordinate>>::growAndPushBack(&v209, &v208);
        }

        else
        {
          v209[v210] = v3;
          LODWORD(v210) = v4 + 1;
        }

        v3 = **(this + 930);
        *(this + 930) = v3;
      }

      while (v3);
      v5 = v209;
      v6 = v210;
    }

    else
    {
      v6 = 0;
      v5 = 0;
    }

    physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::NpArticulationJointReducedCoordinate>>(v5, v6);
    physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::NpArticulationJointReducedCoordinate>>(*(this + 926), *(this + 1854));
    v7 = *(this + 1854);
    v8 = v209;
    if (v7)
    {
      v9 = *(this + 926);
      v10 = &v9[v7];
      do
      {
        v11 = *(this + 1856);
        if (v11)
        {
          v12 = *v9;
          v13 = 440 * v11;
          v14 = *v9;
          do
          {
            if (v8 != &v209[v210] && v14 == *v8)
            {
              ++v8;
            }

            else
            {
              (*(*v14 + 24))(v14);
            }

            v14 += 440;
            v12 += 440;
            v13 -= 440;
          }

          while (v13);
        }

        ++v9;
      }

      while (v9 != v10);
      v8 = v209;
    }

    if ((v210 & 0x8000000000000000) == 0 && (v210 & 0x7FFFFFFF00000000) != 0 && v8 != 0)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v8);
    }
  }

  v16 = *(this + 926);
  v17 = *(this + 1854);
  if (v17)
  {
    v18 = 8 * v17;
    do
    {
      if (*v16)
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
      }

      v16 = (v16 + 8);
      v18 -= 8;
    }

    while (v18);
    v16 = *(this + 926);
  }

  v19 = *(this + 1855);
  if ((v19 & 0x80000000) == 0 && (v19 & 0x7FFFFFFF) != 0)
  {
    if (v16 == (this + 6888))
    {
      *(this + 7400) = 0;
    }

    else if (v16)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v16);
    }
  }

  physx::shdfnd::MutexT<physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>>::~MutexT(this + 859);
  if (*(this + 1713))
  {
    v209 = 0;
    v210 = 0;
    v20 = *(this + 858);
    if (v20)
    {
      do
      {
        v208 = v20;
        v21 = v210;
        if ((HIDWORD(v210) & 0x7FFFFFFFu) <= v210)
        {
          physx::shdfnd::Array<void *,physx::shdfnd::ReflectionAllocator<physx::NpArticulationJoint>>::growAndPushBack(&v209, &v208);
        }

        else
        {
          v209[v210] = v20;
          LODWORD(v210) = v21 + 1;
        }

        v20 = **(this + 858);
        *(this + 858) = v20;
      }

      while (v20);
      v22 = v209;
      v23 = v210;
    }

    else
    {
      v23 = 0;
      v22 = 0;
    }

    physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::NpArticulationJoint>>(v22, v23);
    physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::NpArticulationJoint>>(*(this + 854), *(this + 1710));
    v24 = *(this + 1710);
    v25 = v209;
    if (v24)
    {
      v26 = *(this + 854);
      v27 = &v26[v24];
      do
      {
        v28 = *(this + 1712);
        if (v28)
        {
          v29 = *v26;
          v30 = 440 * v28;
          v31 = *v26;
          do
          {
            if (v25 != &v209[v210] && v31 == *v25)
            {
              ++v25;
            }

            else
            {
              (*(*v31 + 24))(v31);
            }

            v31 += 440;
            v29 += 440;
            v30 -= 440;
          }

          while (v30);
        }

        ++v26;
      }

      while (v26 != v27);
      v25 = v209;
    }

    if ((v210 & 0x8000000000000000) == 0 && (v210 & 0x7FFFFFFF00000000) != 0 && v25 != 0)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v25);
    }
  }

  v33 = *(this + 854);
  v34 = *(this + 1710);
  if (v34)
  {
    v35 = 8 * v34;
    do
    {
      if (*v33)
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
      }

      v33 = (v33 + 8);
      v35 -= 8;
    }

    while (v35);
    v33 = *(this + 854);
  }

  v36 = *(this + 1711);
  if ((v36 & 0x80000000) == 0 && (v36 & 0x7FFFFFFF) != 0)
  {
    if (v33 == (this + 6312))
    {
      *(this + 6824) = 0;
    }

    else if (v33)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v33);
    }
  }

  physx::shdfnd::MutexT<physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>>::~MutexT(this + 787);
  if (*(this + 1569))
  {
    v209 = 0;
    v210 = 0;
    v37 = *(this + 786);
    if (v37)
    {
      do
      {
        v208 = v37;
        v38 = v210;
        if ((HIDWORD(v210) & 0x7FFFFFFFu) <= v210)
        {
          physx::shdfnd::Array<void *,physx::shdfnd::ReflectionAllocator<physx::NpArticulationLink>>::growAndPushBack(&v209, &v208);
        }

        else
        {
          v209[v210] = v37;
          LODWORD(v210) = v38 + 1;
        }

        v37 = **(this + 786);
        *(this + 786) = v37;
      }

      while (v37);
      v39 = v209;
      v40 = v210;
    }

    else
    {
      v40 = 0;
      v39 = 0;
    }

    physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::NpArticulationLink>>(v39, v40);
    physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::NpArticulationLink>>(*(this + 782), *(this + 1566));
    v41 = *(this + 1566);
    if (v41)
    {
      v42 = *(this + 782);
      v43 = &v42[v41];
      v44 = (v39 + 8 * v40);
      v45 = v39;
      do
      {
        v46 = *(this + 1568);
        if (v46)
        {
          v47 = *v42;
          v48 = 480 * v46;
          v49 = *v42;
          do
          {
            if (v45 != v44 && v49 == *v45)
            {
              ++v45;
            }

            else
            {
              (*(*v49 + 24))(v49);
            }

            v49 += 480;
            v47 += 480;
            v48 -= 480;
          }

          while (v48);
        }

        ++v42;
      }

      while (v42 != v43);
    }

    if (v39 && (v210 & 0x8000000000000000) == 0 && (v210 & 0x7FFFFFFF00000000) != 0)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v39);
    }
  }

  v50 = *(this + 782);
  v51 = *(this + 1566);
  if (v51)
  {
    v52 = 8 * v51;
    do
    {
      if (*v50)
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
      }

      v50 = (v50 + 8);
      v52 -= 8;
    }

    while (v52);
    v50 = *(this + 782);
  }

  v53 = *(this + 1567);
  if ((v53 & 0x80000000) == 0 && (v53 & 0x7FFFFFFF) != 0)
  {
    if (v50 == (this + 5736))
    {
      *(this + 6248) = 0;
    }

    else if (v50)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v50);
    }
  }

  physx::shdfnd::MutexT<physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>>::~MutexT(this + 715);
  if (*(this + 1425))
  {
    v209 = 0;
    v210 = 0;
    v54 = *(this + 714);
    if (v54)
    {
      do
      {
        v208 = v54;
        v55 = v210;
        if ((HIDWORD(v210) & 0x7FFFFFFFu) <= v210)
        {
          physx::shdfnd::Array<void *,physx::shdfnd::ReflectionAllocator<physx::NpArticulationReducedCoordinate>>::growAndPushBack(&v209, &v208);
        }

        else
        {
          v209[v210] = v54;
          LODWORD(v210) = v55 + 1;
        }

        v54 = **(this + 714);
        *(this + 714) = v54;
      }

      while (v54);
      v56 = v209;
      v57 = v210;
    }

    else
    {
      v57 = 0;
      v56 = 0;
    }

    physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::NpArticulationReducedCoordinate>>(v56, v57);
    physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::NpArticulationReducedCoordinate>>(*(this + 710), *(this + 1422));
    v58 = *(this + 1422);
    if (v58)
    {
      v59 = *(this + 710);
      v60 = &v59[v58];
      v61 = (v56 + 8 * v57);
      v62 = v56;
      do
      {
        v63 = *(this + 1424);
        if (v63)
        {
          v64 = *v59;
          v65 = 200 * v63;
          v66 = *v59;
          do
          {
            if (v62 != v61 && v66 == *v62)
            {
              ++v62;
            }

            else
            {
              (*(*v66 + 24))(v66);
            }

            v66 += 200;
            v64 += 200;
            v65 -= 200;
          }

          while (v65);
        }

        ++v59;
      }

      while (v59 != v60);
    }

    if (v56 && (v210 & 0x8000000000000000) == 0 && (v210 & 0x7FFFFFFF00000000) != 0)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v56);
    }
  }

  v67 = *(this + 710);
  v68 = *(this + 1422);
  if (v68)
  {
    v69 = 8 * v68;
    do
    {
      if (*v67)
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
      }

      v67 = (v67 + 8);
      v69 -= 8;
    }

    while (v69);
    v67 = *(this + 710);
  }

  v70 = *(this + 1423);
  if ((v70 & 0x80000000) == 0 && (v70 & 0x7FFFFFFF) != 0)
  {
    if (v67 == (this + 5160))
    {
      *(this + 5672) = 0;
    }

    else if (v67)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v67);
    }
  }

  physx::shdfnd::MutexT<physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>>::~MutexT(this + 643);
  if (*(this + 1281))
  {
    v209 = 0;
    v210 = 0;
    v71 = *(this + 642);
    if (v71)
    {
      do
      {
        v208 = v71;
        v72 = v210;
        if ((HIDWORD(v210) & 0x7FFFFFFFu) <= v210)
        {
          physx::shdfnd::Array<void *,physx::shdfnd::ReflectionAllocator<physx::NpArticulation>>::growAndPushBack(&v209, &v208);
        }

        else
        {
          v209[v210] = v71;
          LODWORD(v210) = v72 + 1;
        }

        v71 = **(this + 642);
        *(this + 642) = v71;
      }

      while (v71);
      v73 = v209;
      v74 = v210;
    }

    else
    {
      v74 = 0;
      v73 = 0;
    }

    physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::NpArticulation>>(v73, v74);
    physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::NpArticulation>>(*(this + 638), *(this + 1278));
    v75 = *(this + 1278);
    if (v75)
    {
      v76 = *(this + 638);
      v77 = &v76[v75];
      v78 = (v73 + 8 * v74);
      v79 = v73;
      do
      {
        v80 = *(this + 1280);
        if (v80)
        {
          v81 = *v76;
          v82 = 184 * v80;
          v83 = *v76;
          do
          {
            if (v79 != v78 && v83 == *v79)
            {
              ++v79;
            }

            else
            {
              (*(*v83 + 24))(v83);
            }

            v83 += 184;
            v81 += 184;
            v82 -= 184;
          }

          while (v82);
        }

        ++v76;
      }

      while (v76 != v77);
    }

    if (v73 && (v210 & 0x8000000000000000) == 0 && (v210 & 0x7FFFFFFF00000000) != 0)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v73);
    }
  }

  v84 = *(this + 638);
  v85 = *(this + 1278);
  if (v85)
  {
    v86 = 8 * v85;
    do
    {
      if (*v84)
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
      }

      v84 = (v84 + 8);
      v86 -= 8;
    }

    while (v86);
    v84 = *(this + 638);
  }

  v87 = *(this + 1279);
  if ((v87 & 0x80000000) == 0 && (v87 & 0x7FFFFFFF) != 0)
  {
    if (v84 == (this + 4584))
    {
      *(this + 5096) = 0;
    }

    else if (v84)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v84);
    }
  }

  physx::shdfnd::MutexT<physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>>::~MutexT(this + 571);
  if (*(this + 1137))
  {
    v209 = 0;
    v210 = 0;
    v88 = *(this + 570);
    if (v88)
    {
      do
      {
        v208 = v88;
        v89 = v210;
        if ((HIDWORD(v210) & 0x7FFFFFFFu) <= v210)
        {
          physx::shdfnd::Array<void *,physx::shdfnd::ReflectionAllocator<physx::NpMaterial>>::growAndPushBack(&v209, &v208);
        }

        else
        {
          v209[v210] = v88;
          LODWORD(v210) = v89 + 1;
        }

        v88 = **(this + 570);
        *(this + 570) = v88;
      }

      while (v88);
      v90 = v209;
      v91 = v210;
    }

    else
    {
      v91 = 0;
      v90 = 0;
    }

    physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::NpMaterial>>(v90, v91);
    physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::NpMaterial>>(*(this + 566), *(this + 1134));
    v92 = *(this + 1134);
    if (v92)
    {
      v93 = *(this + 566);
      v94 = &v93[v92];
      v95 = (v90 + 8 * v91);
      v96 = v90;
      do
      {
        v97 = *(this + 1136);
        if (v97)
        {
          v98 = *v93;
          v99 = 80 * v97;
          v100 = *v93;
          do
          {
            if (v96 != v95 && v100 == *v96)
            {
              ++v96;
            }

            else
            {
              (*(*v100 + 24))(v100);
            }

            v100 += 80;
            v98 += 80;
            v99 -= 80;
          }

          while (v99);
        }

        ++v93;
      }

      while (v93 != v94);
    }

    if (v90 && (v210 & 0x8000000000000000) == 0 && (v210 & 0x7FFFFFFF00000000) != 0)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v90);
    }
  }

  v101 = *(this + 566);
  v102 = *(this + 1134);
  if (v102)
  {
    v103 = 8 * v102;
    do
    {
      if (*v101)
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
      }

      v101 = (v101 + 8);
      v103 -= 8;
    }

    while (v103);
    v101 = *(this + 566);
  }

  v104 = *(this + 1135);
  if ((v104 & 0x80000000) == 0 && (v104 & 0x7FFFFFFF) != 0)
  {
    if (v101 == (this + 4008))
    {
      *(this + 4520) = 0;
    }

    else if (v101)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v101);
    }
  }

  physx::shdfnd::MutexT<physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>>::~MutexT(this + 499);
  if (*(this + 993))
  {
    v209 = 0;
    v210 = 0;
    v105 = *(this + 498);
    if (v105)
    {
      do
      {
        v208 = v105;
        v106 = v210;
        if ((HIDWORD(v210) & 0x7FFFFFFFu) <= v210)
        {
          physx::shdfnd::Array<void *,physx::shdfnd::ReflectionAllocator<physx::NpConstraint>>::growAndPushBack(&v209, &v208);
        }

        else
        {
          v209[v210] = v105;
          LODWORD(v210) = v106 + 1;
        }

        v105 = **(this + 498);
        *(this + 498) = v105;
      }

      while (v105);
      v107 = v209;
      v108 = v210;
    }

    else
    {
      v108 = 0;
      v107 = 0;
    }

    physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::NpConstraint>>(v107, v108);
    physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::NpConstraint>>(*(this + 494), *(this + 990));
    v109 = *(this + 990);
    if (v109)
    {
      v110 = *(this + 494);
      v111 = &v110[v109];
      v112 = (v107 + 8 * v108);
      v113 = v107;
      do
      {
        v114 = *(this + 992);
        if (v114)
        {
          v115 = *v110;
          v116 = 184 * v114;
          v117 = *v110;
          do
          {
            if (v113 != v112 && v117 == *v113)
            {
              ++v113;
            }

            else
            {
              (*(*v117 + 24))(v117);
            }

            v117 += 184;
            v115 += 184;
            v116 -= 184;
          }

          while (v116);
        }

        ++v110;
      }

      while (v110 != v111);
    }

    if (v107 && (v210 & 0x8000000000000000) == 0 && (v210 & 0x7FFFFFFF00000000) != 0)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v107);
    }
  }

  v118 = *(this + 494);
  v119 = *(this + 990);
  if (v119)
  {
    v120 = 8 * v119;
    do
    {
      if (*v118)
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
      }

      v118 = (v118 + 8);
      v120 -= 8;
    }

    while (v120);
    v118 = *(this + 494);
  }

  v121 = *(this + 991);
  if ((v121 & 0x80000000) == 0 && (v121 & 0x7FFFFFFF) != 0)
  {
    if (v118 == (this + 3432))
    {
      *(this + 3944) = 0;
    }

    else if (v118)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v118);
    }
  }

  physx::shdfnd::MutexT<physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>>::~MutexT(this + 427);
  if (*(this + 849))
  {
    v209 = 0;
    v210 = 0;
    v122 = *(this + 426);
    if (v122)
    {
      do
      {
        v208 = v122;
        v123 = v210;
        if ((HIDWORD(v210) & 0x7FFFFFFFu) <= v210)
        {
          physx::shdfnd::Array<void *,physx::shdfnd::ReflectionAllocator<physx::NpAggregate>>::growAndPushBack(&v209, &v208);
        }

        else
        {
          v209[v210] = v122;
          LODWORD(v210) = v123 + 1;
        }

        v122 = **(this + 426);
        *(this + 426) = v122;
      }

      while (v122);
      v124 = v209;
      v125 = v210;
    }

    else
    {
      v125 = 0;
      v124 = 0;
    }

    physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::NpAggregate>>(v124, v125);
    physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::NpAggregate>>(*(this + 422), *(this + 846));
    v126 = *(this + 846);
    if (v126)
    {
      v127 = *(this + 422);
      v128 = &v127[v126];
      v129 = (v124 + 8 * v125);
      v130 = v124;
      do
      {
        v131 = *(this + 848);
        if (v131)
        {
          v132 = *v127;
          v133 = 80 * v131;
          v134 = *v127;
          do
          {
            if (v130 != v129 && v134 == *v130)
            {
              ++v130;
            }

            else
            {
              (*(*v134 + 24))(v134);
            }

            v134 += 80;
            v132 += 80;
            v133 -= 80;
          }

          while (v133);
        }

        ++v127;
      }

      while (v127 != v128);
    }

    if (v124 && (v210 & 0x8000000000000000) == 0 && (v210 & 0x7FFFFFFF00000000) != 0)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v124);
    }
  }

  v135 = *(this + 422);
  v136 = *(this + 846);
  if (v136)
  {
    v137 = 8 * v136;
    do
    {
      if (*v135)
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
      }

      v135 = (v135 + 8);
      v137 -= 8;
    }

    while (v137);
    v135 = *(this + 422);
  }

  v138 = *(this + 847);
  if ((v138 & 0x80000000) == 0 && (v138 & 0x7FFFFFFF) != 0)
  {
    if (v135 == (this + 2856))
    {
      *(this + 3368) = 0;
    }

    else if (v135)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v135);
    }
  }

  physx::shdfnd::MutexT<physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>>::~MutexT(this + 355);
  if (*(this + 705))
  {
    v209 = 0;
    v210 = 0;
    v139 = *(this + 354);
    if (v139)
    {
      do
      {
        v208 = v139;
        v140 = v210;
        if ((HIDWORD(v210) & 0x7FFFFFFFu) <= v210)
        {
          physx::shdfnd::Array<void *,physx::shdfnd::ReflectionAllocator<physx::NpShape>>::growAndPushBack(&v209, &v208);
        }

        else
        {
          v209[v210] = v139;
          LODWORD(v210) = v140 + 1;
        }

        v139 = **(this + 354);
        *(this + 354) = v139;
      }

      while (v139);
      v141 = v209;
      v142 = v210;
    }

    else
    {
      v142 = 0;
      v141 = 0;
    }

    physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::NpShape>>(v141, v142);
    physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::NpShape>>(*(this + 350), *(this + 702));
    v143 = *(this + 702);
    if (v143)
    {
      v144 = *(this + 350);
      v145 = &v144[v143];
      v146 = (v141 + 8 * v142);
      v147 = v141;
      do
      {
        v148 = *(this + 704);
        if (v148)
        {
          v149 = *v144;
          v150 = 272 * v148;
          v151 = *v144;
          do
          {
            if (v147 != v146 && v151 == *v147)
            {
              ++v147;
            }

            else
            {
              (*(*v151 + 24))(v151);
            }

            v151 += 272;
            v149 += 272;
            v150 -= 272;
          }

          while (v150);
        }

        ++v144;
      }

      while (v144 != v145);
    }

    if (v141 && (v210 & 0x8000000000000000) == 0 && (v210 & 0x7FFFFFFF00000000) != 0)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v141);
    }
  }

  v152 = *(this + 350);
  v153 = *(this + 702);
  if (v153)
  {
    v154 = 8 * v153;
    do
    {
      if (*v152)
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
      }

      v152 = (v152 + 8);
      v154 -= 8;
    }

    while (v154);
    v152 = *(this + 350);
  }

  v155 = *(this + 703);
  if ((v155 & 0x80000000) == 0 && (v155 & 0x7FFFFFFF) != 0)
  {
    if (v152 == (this + 2280))
    {
      *(this + 2792) = 0;
    }

    else if (v152)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v152);
    }
  }

  physx::shdfnd::MutexT<physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>>::~MutexT(this + 283);
  if (*(this + 561))
  {
    v209 = 0;
    v210 = 0;
    v156 = *(this + 282);
    if (v156)
    {
      do
      {
        v208 = v156;
        v157 = v210;
        if ((HIDWORD(v210) & 0x7FFFFFFFu) <= v210)
        {
          physx::shdfnd::Array<void *,physx::shdfnd::ReflectionAllocator<physx::NpRigidStatic>>::growAndPushBack(&v209, &v208);
        }

        else
        {
          v209[v210] = v156;
          LODWORD(v210) = v157 + 1;
        }

        v156 = **(this + 282);
        *(this + 282) = v156;
      }

      while (v156);
      v158 = v209;
      v159 = v210;
    }

    else
    {
      v159 = 0;
      v158 = 0;
    }

    physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::NpRigidStatic>>(v158, v159);
    physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::NpRigidStatic>>(*(this + 278), *(this + 558));
    v160 = *(this + 558);
    if (v160)
    {
      v161 = *(this + 278);
      v162 = &v161[v160];
      v163 = (v158 + 8 * v159);
      v164 = v158;
      do
      {
        v165 = *(this + 560);
        if (v165)
        {
          v166 = *v161;
          v167 = 176 * v165;
          v168 = *v161;
          do
          {
            if (v164 != v163 && v168 == *v164)
            {
              ++v164;
            }

            else
            {
              (*(*v168 + 24))(v168);
            }

            v168 += 176;
            v166 += 176;
            v167 -= 176;
          }

          while (v167);
        }

        ++v161;
      }

      while (v161 != v162);
    }

    if (v158 && (v210 & 0x8000000000000000) == 0 && (v210 & 0x7FFFFFFF00000000) != 0)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v158);
    }
  }

  v169 = *(this + 278);
  v170 = *(this + 558);
  if (v170)
  {
    v171 = 8 * v170;
    do
    {
      if (*v169)
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
      }

      v169 = (v169 + 8);
      v171 -= 8;
    }

    while (v171);
    v169 = *(this + 278);
  }

  v172 = *(this + 559);
  if ((v172 & 0x80000000) == 0 && (v172 & 0x7FFFFFFF) != 0)
  {
    if (v169 == (this + 1704))
    {
      *(this + 2216) = 0;
    }

    else if (v169)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v169);
    }
  }

  physx::shdfnd::MutexT<physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>>::~MutexT(this + 211);
  if (*(this + 417))
  {
    v209 = 0;
    v210 = 0;
    v173 = *(this + 210);
    if (v173)
    {
      do
      {
        v208 = v173;
        v174 = v210;
        if ((HIDWORD(v210) & 0x7FFFFFFFu) <= v210)
        {
          physx::shdfnd::Array<void *,physx::shdfnd::ReflectionAllocator<physx::NpRigidDynamic>>::growAndPushBack(&v209, &v208);
        }

        else
        {
          v209[v210] = v173;
          LODWORD(v210) = v174 + 1;
        }

        v173 = **(this + 210);
        *(this + 210) = v173;
      }

      while (v173);
      v175 = v209;
      v176 = v210;
    }

    else
    {
      v176 = 0;
      v175 = 0;
    }

    physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::NpRigidDynamic>>(v175, v176);
    physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::NpRigidDynamic>>(*(this + 206), *(this + 414));
    v177 = *(this + 414);
    if (v177)
    {
      v178 = *(this + 206);
      v179 = &v178[v177];
      v180 = (v175 + 8 * v176);
      v181 = v175;
      do
      {
        v182 = *(this + 416);
        if (v182)
        {
          v183 = *v178;
          v184 = 384 * v182;
          v185 = *v178;
          do
          {
            if (v181 != v180 && v185 == *v181)
            {
              ++v181;
            }

            else
            {
              (*(*v185 + 24))(v185);
            }

            v185 += 384;
            v183 += 384;
            v184 -= 384;
          }

          while (v184);
        }

        ++v178;
      }

      while (v178 != v179);
    }

    if (v175 && (v210 & 0x8000000000000000) == 0 && (v210 & 0x7FFFFFFF00000000) != 0)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v175);
    }
  }

  v186 = *(this + 206);
  v187 = *(this + 414);
  if (v187)
  {
    v188 = 8 * v187;
    do
    {
      if (*v186)
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
      }

      v186 = (v186 + 8);
      v188 -= 8;
    }

    while (v188);
    v186 = *(this + 206);
  }

  v189 = *(this + 415);
  if ((v189 & 0x80000000) == 0 && (v189 & 0x7FFFFFFF) != 0)
  {
    if (v186 == (this + 1128))
    {
      *(this + 1640) = 0;
    }

    else if (v186)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v186);
    }
  }

  if (*(this + 133))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  if (*(this + 126))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  if (*(this + 119))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  if (*(this + 112))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  if (*(this + 105))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  physx::shdfnd::MutexT<physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>>::~MutexT(this + 103);
  if (*(this + 201))
  {
    v209 = 0;
    v210 = 0;
    v190 = *(this + 102);
    if (v190)
    {
      do
      {
        v208 = v190;
        v191 = v210;
        if ((HIDWORD(v210) & 0x7FFFFFFFu) <= v210)
        {
          physx::shdfnd::Array<void *,physx::shdfnd::ReflectionAllocator<physx::NpConnectorArray>>::growAndPushBack(&v209, &v208);
        }

        else
        {
          v209[v210] = v190;
          LODWORD(v210) = v191 + 1;
        }

        v190 = **(this + 102);
        *(this + 102) = v190;
      }

      while (v190);
      v192 = v209;
      v193 = v210;
    }

    else
    {
      v193 = 0;
      v192 = 0;
    }

    physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::NpConnectorArray>>(v192, v193);
    physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::NpConnectorArray>>(*(this + 98), *(this + 198));
    v194 = *(this + 198);
    v195 = v209;
    if (v194)
    {
      v196 = *(this + 98);
      v197 = &v196[v194];
      do
      {
        v198 = *(this + 200);
        if (v198)
        {
          v199 = *v196;
          v200 = 88 * v198;
          do
          {
            if (v195 != &v209[v210] && v199 == *v195)
            {
              ++v195;
            }

            else
            {
              v201 = *(v199 + 84);
              if ((v201 & 0x80000000) == 0 && (v201 & 0x7FFFFFFF) != 0)
              {
                v202 = *(v199 + 72);
                if (v199 == v202)
                {
                  *(v199 + 64) = 0;
                }

                else if (v202)
                {
                  (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
                }
              }
            }

            v199 += 88;
            v200 -= 88;
          }

          while (v200);
        }

        ++v196;
      }

      while (v196 != v197);
      v195 = v209;
    }

    if ((v210 & 0x8000000000000000) == 0 && (v210 & 0x7FFFFFFF00000000) != 0 && v195 != 0)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v195);
    }
  }

  v204 = *(this + 98);
  v205 = *(this + 198);
  if (v205)
  {
    v206 = 8 * v205;
    do
    {
      if (*v204)
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
      }

      v204 = (v204 + 8);
      v206 -= 8;
    }

    while (v206);
    v204 = *(this + 98);
  }

  v207 = *(this + 199);
  if ((v207 & 0x80000000) == 0 && (v207 & 0x7FFFFFFF) != 0)
  {
    if (v204 == (this + 264))
    {
      *(this + 776) = 0;
    }

    else if (v204)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v204);
    }
  }

  physx::GuMeshFactory::~GuMeshFactory(this);
}

{
  physx::NpFactory::~NpFactory(this);
  if (v1)
  {
    v2 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

    v2();
  }
}

uint64_t physx::NpFactory::addRigidStatic(uint64_t this, physx::PxRigidStatic *a2, int a3)
{
  if (a2)
  {
    v4 = this;
    if (a3)
    {
      if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
      {
        pthread_mutex_lock(*(this + 8));
      }

      v6 = a2;
      v7 = 0;
      this = physx::shdfnd::internal::HashBase<physx::PxActor *,physx::PxActor *,physx::shdfnd::Hash<physx::PxActor *>,physx::shdfnd::internal::HashSetBase<physx::PxActor *,physx::shdfnd::Hash<physx::PxActor *>,physx::shdfnd::NonTrackingAllocator,false>::GetKey,physx::shdfnd::NonTrackingAllocator,false>::create(v4 + 126, &v6, &v7);
      if ((v7 & 1) == 0)
      {
        *this = a2;
      }

      if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
      {
        v5 = v4[1];

        return pthread_mutex_unlock(v5);
      }
    }

    else
    {
      v6 = a2;
      v8 = 0;
      this = physx::shdfnd::internal::HashBase<physx::PxActor *,physx::PxActor *,physx::shdfnd::Hash<physx::PxActor *>,physx::shdfnd::internal::HashSetBase<physx::PxActor *,physx::shdfnd::Hash<physx::PxActor *>,physx::shdfnd::NonTrackingAllocator,false>::GetKey,physx::shdfnd::NonTrackingAllocator,false>::create((this + 1008), &v6, &v8);
      if ((v8 & 1) == 0)
      {
        *this = a2;
      }
    }
  }

  return this;
}

uint64_t physx::NpFactory::addShape(uint64_t result, uint64_t a2, int a3)
{
  v6 = a2;
  if (a2)
  {
    v4 = result;
    if (a3)
    {
      if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
      {
        pthread_mutex_lock(*(result + 8));
      }

      v7 = 0;
      result = physx::shdfnd::internal::HashBase<physx::Sc::ConstraintSim *,physx::Sc::ConstraintSim *,physx::shdfnd::Hash<physx::Sc::ConstraintSim *>,physx::shdfnd::internal::HashSetBase<physx::Sc::ConstraintSim *,physx::shdfnd::Hash<physx::Sc::ConstraintSim *>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::create(v4 + 133, &v6, &v7);
      if ((v7 & 1) == 0)
      {
        *result = a2;
      }

      if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
      {
        v5 = v4[1];

        return pthread_mutex_unlock(v5);
      }
    }

    else
    {
      v8 = 0;
      result = physx::shdfnd::internal::HashBase<physx::Sc::ConstraintSim *,physx::Sc::ConstraintSim *,physx::shdfnd::Hash<physx::Sc::ConstraintSim *>,physx::shdfnd::internal::HashSetBase<physx::Sc::ConstraintSim *,physx::shdfnd::Hash<physx::Sc::ConstraintSim *>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::create((result + 1064), &v6, &v8);
      if ((v8 & 1) == 0)
      {
        *result = a2;
      }
    }
  }

  return result;
}

uint64_t physx::NpFactory::onActorRelease(uint64_t this, physx::PxActor *a2)
{
  v3 = this;
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    this = pthread_mutex_lock(*(this + 8));
  }

  if (v3[132].i32[1])
  {
    v4 = (a2 + ~(a2 << 32)) ^ ((a2 + ~(a2 << 32)) >> 22);
    v5 = 9 * ((v4 + ~(v4 << 13)) ^ ((v4 + ~(v4 << 13)) >> 8));
    v6 = (v5 ^ (v5 >> 15)) + ~((v5 ^ (v5 >> 15)) << 27);
    v7 = (*&v3[129] + 4 * ((v3[130].i32[1] - 1) & ((v6 >> 31) ^ v6)));
    v8 = *v7;
    if (v8 != -1)
    {
      v9 = v3[127];
      v10 = v3[128];
      if (*(*&v9 + 8 * v8) == a2)
      {
LABEL_10:
        *v7 = *(*&v10 + 4 * v8);
        v3[132] = vadd_s32(v3[132], 0xFFFFFFFF00000001);
        *(*&v10 + 4 * v8) = v3[131].i32[1];
        v3[131].i32[1] = v8;
      }

      else
      {
        while (1)
        {
          v11 = v8;
          v8 = *(*&v10 + 4 * v8);
          if (v8 == -1)
          {
            break;
          }

          if (*(*&v9 + 8 * v8) == a2)
          {
            v7 = (*&v10 + 4 * v11);
            goto LABEL_10;
          }
        }
      }
    }
  }

  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    v12 = v3[1];

    return pthread_mutex_unlock(v12);
  }

  return this;
}

uint64_t physx::NpFactory::onShapeRelease(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    result = pthread_mutex_lock(*(result + 8));
  }

  if (v3[139].i32[1])
  {
    v4 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
    v5 = 9 * ((v4 + ~(v4 << 13)) ^ ((v4 + ~(v4 << 13)) >> 8));
    v6 = (v5 ^ (v5 >> 15)) + ~((v5 ^ (v5 >> 15)) << 27);
    v7 = (*&v3[136] + 4 * ((v3[137].i32[1] - 1) & ((v6 >> 31) ^ v6)));
    v8 = *v7;
    if (v8 != -1)
    {
      v9 = v3[134];
      v10 = v3[135];
      if (*(*&v9 + 8 * v8) == a2)
      {
LABEL_10:
        *v7 = *(*&v10 + 4 * v8);
        v12 = vadd_s32(v3[139], 0xFFFFFFFF00000001);
        v3[139] = v12;
        if (v8 != v12.i32[1])
        {
          *(*&v9 + 8 * v8) = *(*&v9 + 8 * v12.u32[1]);
          v13 = v3[135];
          *(*&v13 + 4 * v8) = *(*&v13 + 4 * v12.u32[1]);
          v14 = *(*&v3[134] + 8 * v8);
          v15 = (~(v14 << 32) + v14) ^ ((~(v14 << 32) + v14) >> 22);
          v16 = 9 * ((v15 + ~(v15 << 13)) ^ ((v15 + ~(v15 << 13)) >> 8));
          v17 = (v16 ^ (v16 >> 15)) + ~((v16 ^ (v16 >> 15)) << 27);
          v18 = (*&v3[136] + 4 * ((v3[137].i32[1] - 1) & ((v17 >> 31) ^ v17)));
          v19 = v3[139].u32[1];
          v20 = *v18;
          if (v20 != v19)
          {
            do
            {
              v21 = v20;
              v20 = *(*&v13 + 4 * v20);
            }

            while (v20 != v19);
            v18 = (*&v13 + 4 * v21);
          }

          *v18 = v8;
        }

        --v3[138].i32[1];
      }

      else
      {
        while (1)
        {
          v11 = v8;
          v8 = *(*&v10 + 4 * v8);
          if (v8 == -1)
          {
            break;
          }

          if (*(*&v9 + 8 * v8) == a2)
          {
            v7 = (*&v10 + 4 * v11);
            goto LABEL_10;
          }
        }
      }
    }
  }

  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    v22 = v3[1];

    return pthread_mutex_unlock(v22);
  }

  return result;
}

uint64_t physx::NpFactory::addArticulation(uint64_t result, uint64_t a2, int a3)
{
  v6 = a2;
  if (a2)
  {
    v4 = result;
    if (a3)
    {
      if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
      {
        pthread_mutex_lock(*(result + 8));
      }

      v7 = 0;
      result = physx::shdfnd::internal::HashBase<physx::PxActor *,physx::PxActor *,physx::shdfnd::Hash<physx::PxActor *>,physx::shdfnd::internal::HashSetBase<physx::PxActor *,physx::shdfnd::Hash<physx::PxActor *>,physx::shdfnd::NonTrackingAllocator,false>::GetKey,physx::shdfnd::NonTrackingAllocator,false>::create(v4 + 112, &v6, &v7);
      if ((v7 & 1) == 0)
      {
        *result = a2;
      }

      if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
      {
        v5 = v4[1];

        return pthread_mutex_unlock(v5);
      }
    }

    else
    {
      v8 = 0;
      result = physx::shdfnd::internal::HashBase<physx::PxActor *,physx::PxActor *,physx::shdfnd::Hash<physx::PxActor *>,physx::shdfnd::internal::HashSetBase<physx::PxActor *,physx::shdfnd::Hash<physx::PxActor *>,physx::shdfnd::NonTrackingAllocator,false>::GetKey,physx::shdfnd::NonTrackingAllocator,false>::create((result + 896), &v6, &v8);
      if ((v8 & 1) == 0)
      {
        *result = a2;
      }
    }
  }

  return result;
}

void *anonymous namespace::createArticulation(_anonymous_namespace_ *this)
{
  v1 = physx::NpFactory::mInstance;
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_lock(*(physx::NpFactory::mInstance + 5144));
  }

  v2 = *(v1 + 5136);
  if (!v2)
  {
    v3 = physx::shdfnd::ReflectionAllocator<physx::NpArticulation>::allocate(*(v1 + 5128), "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsPool.h", 180);
    v4 = v3;
    v9 = v3;
    v5 = *(v1 + 5112);
    if ((*(v1 + 5116) & 0x7FFFFFFFu) <= v5)
    {
      physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::NpArticulation>>>::growAndPushBack(v1 + 4584, &v9);
    }

    else
    {
      *(*(v1 + 5104) + 8 * v5) = v3;
      *(v1 + 5112) = v5 + 1;
    }

    v6 = v4 + 184 * *(v1 + 5120) - 184;
    v2 = *(v1 + 5136);
    if (v6 >= v4)
    {
      v7 = (v4 + 184 * *(v1 + 5120) - 184);
      do
      {
        *v7 = v2;
        v7 -= 23;
        v2 = v6;
        v6 = v7;
      }

      while (v7 >= v4);
      v2 = v7 + 23;
    }
  }

  *(v1 + 5136) = *v2;
  ++*(v1 + 5124);
  *(v2 + 2) = 196619;
  v2[2] = 0;
  *v2 = &unk_1F5D24360;
  physx::PxArticulationImpl::PxArticulationImpl((v2 + 3), 0);
  *v2 = &unk_1F5D237F0;
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_unlock(*(v1 + 5144));
  }

  return v2;
}

void *anonymous namespace::createArticulationLink(uint64_t a1, uint64_t a2, float *a3)
{
  v6 = physx::NpFactory::mInstance;
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_lock(*(physx::NpFactory::mInstance + 6296));
  }

  v7 = *(v6 + 6288);
  if (!v7)
  {
    v8 = physx::shdfnd::ReflectionAllocator<physx::NpArticulationLink>::allocate(*(v6 + 6280), "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsPool.h", 180);
    v9 = v8;
    v35 = v8;
    v10 = *(v6 + 6264);
    if ((*(v6 + 6268) & 0x7FFFFFFFu) <= v10)
    {
      physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::NpArticulationLink>>>::growAndPushBack(v6 + 5736, &v35);
    }

    else
    {
      *(*(v6 + 6256) + 8 * v10) = v8;
      *(v6 + 6264) = v10 + 1;
    }

    v11 = (v9 + 480 * *(v6 + 6272) - 480);
    v7 = *(v6 + 6288);
    if (v11 >= v9)
    {
      do
      {
        *v11 = v7;
        v12 = v11 - 60;
        v7 = v11;
        v11 = v12;
      }

      while (v12 >= v9);
      v7 = v12 + 60;
    }
  }

  *(v6 + 6288) = *v7;
  ++*(v6 + 6276);
  physx::NpArticulationLink::NpArticulationLink(v7, a3, a1, a2);
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_unlock(*(v6 + 6296));
  }

  if (a2)
  {
    (*(*a2 + 224))(&v32, a2);
    v13 = (a3[4] - *&v33) + (a3[4] - *&v33);
    v14 = (a3[5] - *(&v33 + 1)) + (a3[5] - *(&v33 + 1));
    v15 = (a3[6] - v34) + (a3[6] - v34);
    v16 = (*(&v32 + 3) * *(&v32 + 3)) + -0.5;
    v17 = (-(*(&v32 + 1) * v14) - (*&v32 * v13)) - (*(&v32 + 2) * v15);
    v18 = ((*(&v32 + 3) * ((*(&v32 + 2) * v14) - (*(&v32 + 1) * v15))) + (v13 * v16)) - (*&v32 * v17);
    v19 = ((*(&v32 + 3) * ((*&v32 * v15) - (*(&v32 + 2) * v13))) + (v14 * v16)) - (*(&v32 + 1) * v17);
    v20 = ((*(&v32 + 3) * ((*(&v32 + 1) * v13) - (*&v32 * v14))) + (v15 * v16)) - (*(&v32 + 2) * v17);
    v22 = a3[2];
    v21 = a3[3];
    v23 = a3[1];
    v24 = (((*(&v32 + 3) * v23) - (*(&v32 + 1) * v21)) - (*(&v32 + 2) * *a3)) + (v22 * *&v32);
    v25 = (((*(&v32 + 3) * v22) - (*(&v32 + 2) * v21)) - (*&v32 * v23)) + (*a3 * *(&v32 + 1));
    v26 = (((*&v32 * *a3) + (*(&v32 + 3) * v21)) + (*(&v32 + 1) * v23)) + (*(&v32 + 2) * v22);
    *&v35 = (((*(&v32 + 3) * *a3) - (*&v32 * v21)) - (*(&v32 + 1) * v22)) + (v23 * *(&v32 + 2));
    *(&v35 + 1) = v24;
    v36 = v25;
    v37 = v26;
    v38 = v18;
    v39 = v19;
    v40 = v20;
    v32 = xmmword_1E30474D0;
    v33 = 0;
    v34 = 0.0;
    v27 = (*(*a1 + 216))(a1, a2, &v35, v7, &v32);
    if (v27)
    {
      v7[49] = v27;
    }

    else
    {
      (*(*v7 + 32))(v7);
      physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 32, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpFactory.cpp", 207, "Articulation link initialization failed due to joint creation failure: returned NULL.", v28, v29, v30, v32);
      return 0;
    }
  }

  return v7;
}

void *anonymous namespace::createArticulationRC(_anonymous_namespace_ *this)
{
  v1 = physx::NpFactory::mInstance;
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_lock(*(physx::NpFactory::mInstance + 5720));
  }

  v2 = *(v1 + 5712);
  if (!v2)
  {
    v3 = physx::shdfnd::ReflectionAllocator<physx::NpArticulationReducedCoordinate>::allocate(*(v1 + 5704), "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsPool.h", 180);
    v4 = v3;
    v9 = v3;
    v5 = *(v1 + 5688);
    if ((*(v1 + 5692) & 0x7FFFFFFFu) <= v5)
    {
      physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::NpArticulationReducedCoordinate>>>::growAndPushBack(v1 + 5160, &v9);
    }

    else
    {
      *(*(v1 + 5680) + 8 * v5) = v3;
      *(v1 + 5688) = v5 + 1;
    }

    v6 = v4 + 200 * *(v1 + 5696) - 200;
    v2 = *(v1 + 5712);
    if (v6 >= v4)
    {
      v7 = (v4 + 200 * *(v1 + 5696) - 200);
      do
      {
        *v7 = v2;
        v7 -= 25;
        v2 = v6;
        v6 = v7;
      }

      while (v7 >= v4);
      v2 = v7 + 25;
    }
  }

  *(v1 + 5712) = *v2;
  ++*(v1 + 5700);
  *(v2 + 2) = 196620;
  v2[2] = 0;
  *v2 = &unk_1F5D24168;
  physx::PxArticulationImpl::PxArticulationImpl((v2 + 3), 1);
  *v2 = &unk_1F5D235F8;
  v2[23] = 0;
  v2[24] = 0;
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_unlock(*(v1 + 5720));
  }

  return v2;
}

uint64_t physx::NpFactory::onArticulationRelease(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    result = pthread_mutex_lock(*(result + 8));
  }

  if (v3[118].i32[1])
  {
    v4 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
    v5 = 9 * ((v4 + ~(v4 << 13)) ^ ((v4 + ~(v4 << 13)) >> 8));
    v6 = (v5 ^ (v5 >> 15)) + ~((v5 ^ (v5 >> 15)) << 27);
    v7 = (*&v3[115] + 4 * ((v3[116].i32[1] - 1) & ((v6 >> 31) ^ v6)));
    v8 = *v7;
    if (v8 != -1)
    {
      v9 = v3[113];
      v10 = v3[114];
      if (*(*&v9 + 8 * v8) == a2)
      {
LABEL_10:
        *v7 = *(*&v10 + 4 * v8);
        v3[118] = vadd_s32(v3[118], 0xFFFFFFFF00000001);
        *(*&v10 + 4 * v8) = v3[117].i32[1];
        v3[117].i32[1] = v8;
      }

      else
      {
        while (1)
        {
          v11 = v8;
          v8 = *(*&v10 + 4 * v8);
          if (v8 == -1)
          {
            break;
          }

          if (*(*&v9 + 8 * v8) == a2)
          {
            v7 = (*&v10 + 4 * v11);
            goto LABEL_10;
          }
        }
      }
    }
  }

  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    v12 = v3[1];

    return pthread_mutex_unlock(v12);
  }

  return result;
}

void *physx::NpFactory::createArticulationLink(uint64_t a1, uint64_t a2, uint64_t a3, float *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  {
  }

  else
  {
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpFactory.cpp", 324, "Articulations not registered: returned NULL.", a6, a7, a8, v8);
    return 0;
  }
}

void *physx::NpFactory::createNpArticulationJoint(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_lock(*(a1 + 6872));
  }

  v10 = *(a1 + 6864);
  if (!v10)
  {
    physx::shdfnd::PoolBase<physx::NpArticulationJoint,physx::shdfnd::ReflectionAllocator<physx::NpArticulationJoint>>::allocateSlab(a1 + 6304);
    v10 = *(a1 + 6864);
  }

  *(a1 + 6864) = *v10;
  ++*(a1 + 6852);
  physx::NpArticulationJointTemplate<physx::PxArticulationJoint>::NpArticulationJointTemplate(v10, 14, a2, a3, a4, a5);
  *v10 = &unk_1F5D23960;
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_unlock(*(a1 + 6872));
  }

  return v10;
}

uint64_t physx::NpFactory::releaseArticulationJointToPool(pthread_mutex_t **this, pthread_mutex_t *a2)
{
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_lock(this[859]);
  }

  result = (*(a2->__sig + 24))(a2);
  --*(this + 1713);
  a2->__sig = this[858];
  this[858] = a2;
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    v5 = this[859];

    return pthread_mutex_unlock(v5);
  }

  return result;
}

void *physx::NpFactory::createNpArticulationJointRC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_lock(*(a1 + 7448));
  }

  v10 = *(a1 + 7440);
  if (!v10)
  {
    physx::shdfnd::PoolBase<physx::NpArticulationJointReducedCoordinate,physx::shdfnd::ReflectionAllocator<physx::NpArticulationJointReducedCoordinate>>::allocateSlab(a1 + 6880);
    v10 = *(a1 + 7440);
  }

  *(a1 + 7440) = *v10;
  ++*(a1 + 7428);
  physx::NpArticulationJointTemplate<physx::PxArticulationJointReducedCoordinate>::NpArticulationJointTemplate(v10, 15, a2, a3, a4, a5);
  *v10 = &unk_1F5D23B18;
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_unlock(*(a1 + 7448));
  }

  return v10;
}

uint64_t physx::NpFactory::releaseArticulationJointRCToPool(pthread_mutex_t **this, pthread_mutex_t *a2)
{
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_lock(this[931]);
  }

  result = (*(a2->__sig + 24))(a2);
  --*(this + 1857);
  a2->__sig = this[930];
  this[930] = a2;
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    v5 = this[931];

    return pthread_mutex_unlock(v5);
  }

  return result;
}

uint64_t physx::NpFactory::addConstraint(uint64_t this, physx::PxConstraint *a2, int a3)
{
  v6 = a2;
  if (a2)
  {
    v4 = this;
    if (a3)
    {
      if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
      {
        pthread_mutex_lock(*(this + 8));
      }

      v7 = 0;
      this = physx::shdfnd::internal::HashBase<physx::PxActor *,physx::PxActor *,physx::shdfnd::Hash<physx::PxActor *>,physx::shdfnd::internal::HashSetBase<physx::PxActor *,physx::shdfnd::Hash<physx::PxActor *>,physx::shdfnd::NonTrackingAllocator,false>::GetKey,physx::shdfnd::NonTrackingAllocator,false>::create(v4 + 119, &v6, &v7);
      if ((v7 & 1) == 0)
      {
        *this = a2;
      }

      if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
      {
        v5 = v4[1];

        return pthread_mutex_unlock(v5);
      }
    }

    else
    {
      v8 = 0;
      this = physx::shdfnd::internal::HashBase<physx::PxActor *,physx::PxActor *,physx::shdfnd::Hash<physx::PxActor *>,physx::shdfnd::internal::HashSetBase<physx::PxActor *,physx::shdfnd::Hash<physx::PxActor *>,physx::shdfnd::NonTrackingAllocator,false>::GetKey,physx::shdfnd::NonTrackingAllocator,false>::create((this + 952), &v6, &v8);
      if ((v8 & 1) == 0)
      {
        *this = a2;
      }
    }
  }

  return this;
}

uint64_t physx::NpFactory::addAggregate(uint64_t this, physx::PxAggregate *a2, int a3)
{
  v6 = a2;
  if (a2)
  {
    v4 = this;
    if (a3)
    {
      if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
      {
        pthread_mutex_lock(*(this + 8));
      }

      v7 = 0;
      this = physx::shdfnd::internal::HashBase<physx::PxActor *,physx::PxActor *,physx::shdfnd::Hash<physx::PxActor *>,physx::shdfnd::internal::HashSetBase<physx::PxActor *,physx::shdfnd::Hash<physx::PxActor *>,physx::shdfnd::NonTrackingAllocator,false>::GetKey,physx::shdfnd::NonTrackingAllocator,false>::create(v4 + 105, &v6, &v7);
      if ((v7 & 1) == 0)
      {
        *this = a2;
      }

      if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
      {
        v5 = v4[1];

        return pthread_mutex_unlock(v5);
      }
    }

    else
    {
      v8 = 0;
      this = physx::shdfnd::internal::HashBase<physx::PxActor *,physx::PxActor *,physx::shdfnd::Hash<physx::PxActor *>,physx::shdfnd::internal::HashSetBase<physx::PxActor *,physx::shdfnd::Hash<physx::PxActor *>,physx::shdfnd::NonTrackingAllocator,false>::GetKey,physx::shdfnd::NonTrackingAllocator,false>::create((this + 840), &v6, &v8);
      if ((v8 & 1) == 0)
      {
        *this = a2;
      }
    }
  }

  return this;
}

uint64_t physx::NpFactory::onAggregateRelease(uint64_t this, physx::PxAggregate *a2)
{
  v3 = this;
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    this = pthread_mutex_lock(*(this + 8));
  }

  if (v3[111].i32[1])
  {
    v4 = (a2 + ~(a2 << 32)) ^ ((a2 + ~(a2 << 32)) >> 22);
    v5 = 9 * ((v4 + ~(v4 << 13)) ^ ((v4 + ~(v4 << 13)) >> 8));
    v6 = (v5 ^ (v5 >> 15)) + ~((v5 ^ (v5 >> 15)) << 27);
    v7 = (*&v3[108] + 4 * ((v3[109].i32[1] - 1) & ((v6 >> 31) ^ v6)));
    v8 = *v7;
    if (v8 != -1)
    {
      v9 = v3[106];
      v10 = v3[107];
      if (*(*&v9 + 8 * v8) == a2)
      {
LABEL_10:
        *v7 = *(*&v10 + 4 * v8);
        v3[111] = vadd_s32(v3[111], 0xFFFFFFFF00000001);
        *(*&v10 + 4 * v8) = v3[110].i32[1];
        v3[110].i32[1] = v8;
      }

      else
      {
        while (1)
        {
          v11 = v8;
          v8 = *(*&v10 + 4 * v8);
          if (v8 == -1)
          {
            break;
          }

          if (*(*&v9 + 8 * v8) == a2)
          {
            v7 = (*&v10 + 4 * v11);
            goto LABEL_10;
          }
        }
      }
    }
  }

  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    v12 = v3[1];

    return pthread_mutex_unlock(v12);
  }

  return this;
}

pthread_mutex_t *physx::NpFactory::acquireConnectorArray(pthread_mutex_t **this)
{
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_lock(this[103]);
  }

  v2 = this[102];
  if (!v2)
  {
    physx::shdfnd::PoolBase<physx::NpConnectorArray,physx::shdfnd::ReflectionAllocator<physx::NpConnectorArray>>::allocateSlab((this + 32));
    v2 = this[102];
  }

  this[102] = v2->__sig;
  ++*(this + 201);
  LOBYTE(v2[1].__sig) = 1;
  *v2[1].__opaque = v2;
  *&v2[1].__opaque[8] = 0x400000000;
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_unlock(this[103]);
  }

  return v2;
}

uint64_t physx::NpFactory::releaseConnectorArray(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    result = pthread_mutex_lock(*(result + 824));
  }

  if (a2)
  {
    v4 = *(a2 + 84);
    if ((v4 & 0x80000000) == 0 && (v4 & 0x7FFFFFFF) != 0)
    {
      v5 = *(a2 + 72);
      if (v5 == a2)
      {
        *(a2 + 64) = 0;
      }

      else if (v5)
      {
        result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
      }
    }

    --*(v3 + 804);
    *a2 = *(v3 + 816);
    *(v3 + 816) = a2;
  }

  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    v6 = *(v3 + 824);

    return pthread_mutex_unlock(v6);
  }

  return result;
}

uint64_t physx::shdfnd::Array<unsigned short,physx::shdfnd::InlineAllocator<8u,physx::shdfnd::ReflectionAllocator<unsigned short>>>::resize(uint64_t result, unsigned int a2, __int16 *a3)
{
  v5 = result;
  if ((*(result + 28) & 0x7FFFFFFFu) < a2)
  {
    result = physx::shdfnd::Array<unsigned short,physx::shdfnd::InlineAllocator<8u,physx::shdfnd::ReflectionAllocator<unsigned short>>>::recreate(result, a2);
  }

  v6 = *(v5 + 24);
  if (v6 < a2)
  {
    v7 = 0;
    v8 = *(v5 + 16);
    v9 = v8 + 2 * v6;
    v10 = v9 + 2;
    if (v9 + 2 <= v8 + 2 * a2)
    {
      v10 = v8 + 2 * a2;
    }

    v11 = (v10 + ~v8 - 2 * v6) >> 1;
    v12 = vdupq_n_s64(v11);
    v13 = *a3;
    v14 = (v11 & 0x7FFFFFFFFFFFFFF8) + 8;
    v15 = (v9 + 8);
    do
    {
      v16 = vdupq_n_s64(v7);
      v17 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(v16, xmmword_1E3049620)));
      if (vuzp1_s8(vuzp1_s16(v17, *v12.i8), *v12.i8).u8[0])
      {
        *(v15 - 4) = v13;
      }

      if (vuzp1_s8(vuzp1_s16(v17, *&v12), *&v12).i8[1])
      {
        *(v15 - 3) = v13;
      }

      if (vuzp1_s8(vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, vorrq_s8(v16, xmmword_1E3049640)))), *&v12).i8[2])
      {
        *(v15 - 2) = v13;
        *(v15 - 1) = v13;
      }

      v18 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(v16, xmmword_1E3049660)));
      if (vuzp1_s8(*&v12, vuzp1_s16(v18, *&v12)).i32[1])
      {
        *v15 = v13;
      }

      if (vuzp1_s8(*&v12, vuzp1_s16(v18, *&v12)).i8[5])
      {
        v15[1] = v13;
      }

      if (vuzp1_s8(*&v12, vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, vorrq_s8(v16, xmmword_1E305F210))))).i8[6])
      {
        v15[2] = v13;
        v15[3] = v13;
      }

      v7 += 8;
      v15 += 8;
    }

    while (v14 != v7);
  }

  *(v5 + 24) = a2;
  return result;
}

uint64_t physx::NpDestroy(uint64_t result)
{
  v1 = *(result + 11) & 0xF;
  if (v1 <= 5)
  {
    if ((*(result + 11) & 0xFu) > 3)
    {
      if (v1 == 4)
      {
        v2 = result - 96;
        v3 = *(result - 80);
        if ((*(result - 86) & 1) == 0)
        {
          goto LABEL_57;
        }

        v17 = physx::NpFactory::mInstance;
        if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
        {
          pthread_mutex_lock(*(physx::NpFactory::mInstance + 6296));
        }

        (*(*v2 + 24))(v2);
        --*(v17 + 6276);
        *v2 = *(v17 + 6288);
        *(v17 + 6288) = v2;
        if ((physx::shdfnd::g_alwaysUseLocking & 1) == 0 && (physx::shdfnd::g_isLockingEnabled & 1) == 0)
        {
          goto LABEL_74;
        }

        v5 = *(v17 + 6296);
      }

      else
      {
        if (v1 != 5)
        {
          return result;
        }

        v2 = result - 96;
        v3 = *(result - 80);
        if ((*(result - 86) & 1) == 0)
        {
          goto LABEL_57;
        }

        v11 = physx::NpFactory::mInstance;
        if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
        {
          pthread_mutex_lock(*(physx::NpFactory::mInstance + 2264));
        }

        (*(*v2 + 24))(v2);
        --*(v11 + 2244);
        *v2 = *(v11 + 2256);
        *(v11 + 2256) = v2;
        if ((physx::shdfnd::g_alwaysUseLocking & 1) == 0 && (physx::shdfnd::g_isLockingEnabled & 1) == 0)
        {
          goto LABEL_74;
        }

        v5 = *(v11 + 2264);
      }
    }

    else
    {
      if (v1 - 1 < 2)
      {
        v2 = result - 48;
        v3 = *(result - 32);
        if (*(result - 38))
        {
          v4 = physx::NpFactory::mInstance;
          if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
          {
            pthread_mutex_lock(*(physx::NpFactory::mInstance + 2840));
          }

          (*(*v2 + 24))(v2);
          --*(v4 + 2820);
          *v2 = *(v4 + 2832);
          *(v4 + 2832) = v2;
          if ((physx::shdfnd::g_alwaysUseLocking & 1) == 0 && (physx::shdfnd::g_isLockingEnabled & 1) == 0)
          {
            goto LABEL_74;
          }

          v5 = *(v4 + 2840);
          goto LABEL_73;
        }

LABEL_57:
        (*(*v2 + 24))(v2);
LABEL_74:
        v14 = physx::NpPhysics::mInstance;
        v15 = v2;
        v16 = v3;
        goto LABEL_75;
      }

      if (v1 != 3)
      {
        return result;
      }

      v2 = result - 96;
      v3 = *(result - 80);
      if ((*(result - 86) & 1) == 0)
      {
        goto LABEL_57;
      }

      v12 = physx::NpFactory::mInstance;
      if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
      {
        pthread_mutex_lock(*(physx::NpFactory::mInstance + 1688));
      }

      (*(*v2 + 24))(v2);
      --*(v12 + 1668);
      *v2 = *(v12 + 1680);
      *(v12 + 1680) = v2;
      if ((physx::shdfnd::g_alwaysUseLocking & 1) == 0 && (physx::shdfnd::g_isLockingEnabled & 1) == 0)
      {
        goto LABEL_74;
      }

      v5 = *(v12 + 1688);
    }

LABEL_73:
    pthread_mutex_unlock(v5);
    goto LABEL_74;
  }

  if ((*(result + 11) & 0xFu) <= 7)
  {
    if (v1 != 6)
    {
      if (v1 != 7)
      {
        return result;
      }

      v2 = result - 24;
      v3 = *(result - 8);
      if ((*(result - 14) & 1) == 0)
      {
        goto LABEL_57;
      }

      v6 = physx::NpFactory::mInstance;
      if (*(result - 16) == 11)
      {
        v7 = (physx::NpFactory::mInstance + 5144);
        if ((physx::shdfnd::g_alwaysUseLocking | physx::shdfnd::g_isLockingEnabled))
        {
          pthread_mutex_lock(*v7);
        }

        (*(*v2 + 24))(v2);
        --*(v6 + 5124);
        *v2 = *(v6 + 5136);
        *(v6 + 5136) = v2;
      }

      else
      {
        v7 = (physx::NpFactory::mInstance + 5720);
        if ((physx::shdfnd::g_alwaysUseLocking | physx::shdfnd::g_isLockingEnabled))
        {
          pthread_mutex_lock(*v7);
        }

        (*(*v2 + 24))(v2);
        --*(v6 + 5700);
        *v2 = *(v6 + 5712);
        *(v6 + 5712) = v2;
      }

      if ((physx::shdfnd::g_alwaysUseLocking & 1) == 0 && (physx::shdfnd::g_isLockingEnabled & 1) == 0)
      {
        goto LABEL_74;
      }

      v5 = *v7;
      goto LABEL_73;
    }

    v8 = result - 32;
    if (*(result - 22))
    {
      v13 = physx::NpFactory::mInstance;
      if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
      {
        pthread_mutex_lock(*(physx::NpFactory::mInstance + 3992));
      }

      (*(*v8 + 24))(v8);
      --*(v13 + 3972);
      *v8 = *(v13 + 3984);
      *(v13 + 3984) = v8;
      if ((physx::shdfnd::g_alwaysUseLocking & 1) == 0 && (physx::shdfnd::g_isLockingEnabled & 1) == 0)
      {
        goto LABEL_55;
      }

      v10 = *(v13 + 3992);
      goto LABEL_52;
    }

    goto LABEL_54;
  }

  if (v1 == 8)
  {
    v8 = *(result + 400);
    if (*(v8 + 10))
    {
      if (*(v8 + 8) == 14)
      {
        physx::NpFactory::releaseArticulationJointToPool(physx::NpFactory::mInstance, v8);
      }

      else
      {
        physx::NpFactory::releaseArticulationJointRCToPool(physx::NpFactory::mInstance, v8);
      }

      goto LABEL_55;
    }

    goto LABEL_54;
  }

  if (v1 != 9)
  {
    return result;
  }

  v8 = result - 16;
  if ((*(result - 6) & 1) == 0)
  {
LABEL_54:
    (*(*v8 + 24))(v8);
    goto LABEL_55;
  }

  v9 = physx::NpFactory::mInstance;
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_lock(*(physx::NpFactory::mInstance + 3416));
  }

  (*(*v8 + 24))(v8);
  --*(v9 + 3396);
  *v8 = *(v9 + 3408);
  *(v9 + 3408) = v8;
  if ((physx::shdfnd::g_alwaysUseLocking & 1) == 0 && (physx::shdfnd::g_isLockingEnabled & 1) == 0)
  {
    goto LABEL_55;
  }

  v10 = *(v9 + 3416);
LABEL_52:
  pthread_mutex_unlock(v10);
LABEL_55:
  v14 = physx::NpPhysics::mInstance;
  v15 = v8;
  v16 = 0;
LABEL_75:

  return physx::NpPhysics::notifyDeletionListeners(v14, v15, v16, 2);
}

uint64_t physx::NpPhysics::removeMaterialFromTable(uint64_t this, physx::NpMaterial *a2)
{
  v3 = this;
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    this = pthread_mutex_lock(*(this + 160));
  }

  if (*(v3 + 16))
  {
    v4 = 0;
    do
    {
      this = physx::Scb::Scene::removeMaterial(*(*(v3 + 8) + 8 * v4++) + 16, a2 + 48);
    }

    while (v4 < *(v3 + 16));
  }

  v5 = *(a2 + 36);
  if (v5 != 0xFFFF)
  {
    *(*(v3 + 56) + 8 * *(a2 + 36)) = 0;
    this = physx::Cm::IDPoolBase<physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>>::freeID(v3 + 32, v5);
  }

  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    v6 = *(v3 + 160);

    return pthread_mutex_unlock(v6);
  }

  return this;
}

void physx::NpMaterial::~NpMaterial(physx::NpMaterial *this)
{
  *this = &unk_1F5D25008;
  *(this + 3) = &unk_1F5D250D8;
  physx::NpPhysics::removeMaterialFromTable(physx::NpPhysics::mInstance, this);
}

{
  *this = &unk_1F5D25008;
  *(this + 3) = &unk_1F5D250D8;
  physx::NpPhysics::removeMaterialFromTable(physx::NpPhysics::mInstance, this);
  v1 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

  v1();
}

void non-virtual thunk tophysx::NpMaterial::~NpMaterial(physx::NpMaterial *this)
{
  *(this - 3) = &unk_1F5D25008;
  *this = &unk_1F5D250D8;
  physx::NpPhysics::removeMaterialFromTable(physx::NpPhysics::mInstance, (this - 24));
}

{
  physx::NpMaterial::~NpMaterial((this - 24));
}

physx::NpMaterial *physx::NpPhysics::addMaterial(pthread_mutex_t **this, physx::NpMaterial *a2)
{
  v2 = a2;
  if (a2)
  {
    if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
    {
      pthread_mutex_lock(this[20]);
    }

    if (physx::NpMaterialManager::setMaterial((this + 4), v2))
    {
      if (*(this + 4))
      {
        v7 = 0;
        do
        {
          physx::Scb::Scene::addMaterial(*(&this[1]->__sig + v7++) + 16, v2 + 48);
        }

        while (v7 < *(this + 4));
      }
    }

    else
    {
      physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 4, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpPhysics.cpp", 421, "PxPhysics::createMaterial: limit of 64K materials reached.", v4, v5, v6, v9);
      (**v2)(v2);
      v2 = 0;
    }

    if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
    {
      pthread_mutex_unlock(this[20]);
    }
  }

  return v2;
}

uint64_t physx::NpMaterial::onRefCountZero(physx::NpMaterial *this)
{
  v2 = *(this + 2);
  if (*(this + 5))
  {
    v3 = physx::NpFactory::mInstance;
    if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
    {
      pthread_mutex_lock(*(physx::NpFactory::mInstance + 4568));
    }

    (*(*this + 24))(this);
    --*(v3 + 4548);
    *this = *(v3 + 4560);
    *(v3 + 4560) = this;
    if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
    {
      pthread_mutex_unlock(*(v3 + 4568));
    }
  }

  else
  {
    (*(*this + 24))(this);
  }

  v4 = physx::NpPhysics::mInstance;

  return physx::NpPhysics::notifyDeletionListeners(v4, this, v2, 2);
}

uint64_t physx::NpMaterial::release(uint64_t this)
{
  if (atomic_fetch_add((this + 32), 0xFFFFFFFF) == 1)
  {
    return (*(*(this + 24) + 16))();
  }

  return this;
}

uint64_t physx::NpMaterial::setRestitution(physx::NpMaterial *this, float a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2 < 0.0 || a2 > 1.0)
  {
    v14 = a2;
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 4, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpMaterial.cpp", 143, "PxMaterial::setRestitution: Invalid value %f was clamped to [0,1]!", a7, a8, a9, SLOBYTE(v14));
  }

  *(this + 14) = a2;
  v12 = physx::NpPhysics::mInstance;

  return physx::NpPhysics::updateMaterial(v12, this);
}

uint64_t physx::NpMaterial::setFlag(physx::NpMaterial *a1, __int16 a2, int a3)
{
  if (a3)
  {
    v3 = *(a1 + 30) | a2;
  }

  else
  {
    v3 = *(a1 + 30) & ~a2;
  }

  *(a1 + 30) = v3;
  return physx::NpPhysics::updateMaterial(physx::NpPhysics::mInstance, a1);
}

void physx::NpPhysics::~NpPhysics(physx::NpPhysics *this)
{
  *this = &unk_1F5D25100;
  v2 = *(this + 4);
  if (v2)
  {
    v3 = *(this + 1);
    do
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      *v3++ = 0;
      --v2;
    }

    while (v2);
  }

  *(this + 4) = 0;
  v4 = *(this + 16);
  if (v4)
  {
    for (i = 0; i < v4; ++i)
    {
      v6 = *(*(this + 7) + 8 * i);
      if (v6)
      {
        physx::Cm::IDPoolBase<physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>>::freeID(this + 32, *(v6 + 72));
        (***(*(this + 7) + 8 * i))();
        *(*(this + 7) + 8 * i) = 0;
        v4 = *(this + 16);
      }
    }
  }

  if (*(this + 7))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v7 = *(this + 35);
  if (v7)
  {
    v8 = (*(this + 12) + 8);
    do
    {
      v9 = *v8;
      if (*v8)
      {
        if (*v9)
        {
          (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
        }

        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v9);
      }

      v8 += 2;
      --v7;
    }

    while (v7);
  }

  v10 = *(this + 31);
  if (v10 && *(this + 35))
  {
    memset(*(this + 14), 255, (4 * v10));
    v11 = *(this + 13);
    v12 = (*(this + 30) - 1);
    if (*(this + 30) == 1)
    {
      v20 = 0;
    }

    else
    {
      _X10 = v11 + 128;
      v14 = 1;
      do
      {
        __asm { PRFM            #0, [X10] }

        *(_X10 - 128) = v14++;
        _X10 += 4;
        --v12;
      }

      while (v12);
      v20 = (*(this + 30) - 1);
    }

    *(v11 + 4 * v20) = -1;
    *(this + 33) = 0;
    *(this + 35) = 0;
  }

  physx::shdfnd::MutexT<physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>>::~MutexT(this + 20);
  if (*(this + 11))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  physx::shdfnd::MutexT<physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>>::~MutexT(this + 10);
  v21 = *(this + 13);
  if ((v21 & 0x80000000) == 0 && (v21 & 0x7FFFFFFF) != 0 && *(this + 5))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  physx::Sc::Physics::mInstance = 0;
  v22 = *(this + 5);
  if ((v22 & 0x80000000) == 0 && (v22 & 0x7FFFFFFF) != 0)
  {
    if (*(this + 1))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }
  }
}

{
  physx::NpPhysics::~NpPhysics(this);
  if (v1)
  {
    v2 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

    v2();
  }
}

uint64_t physx::NpPhysics::createInstance(physx::shdfnd::Foundation *a1, uint64_t a2, float *a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v71 = *MEMORY[0x1E69E9840];
  if (a1 != 67174656)
  {
    physx::shdfnd::snprintf(v70, 0x100, "Wrong version: PhysX version is 0x%08x, tried to create 0x%08x", a4, 67174656, a1);
    v68 = *(*(*(*a2 + 8))(a2) + 16);
LABEL_62:
    v68();
    return 0;
  }

  if (*a3 <= 0.0)
  {
    v68 = *(*(*(*a2 + 8))(a2, *a3) + 16);
    goto LABEL_62;
  }

  v10 = physx::NpPhysics::mRefCount;
  if (!physx::NpPhysics::mRefCount)
  {
    physx::shdfnd::Foundation::incRefCount(a1, a2, a3, a4, a5, a6, a7, a8, v69);
    xmmword_1EE1C7E00 = vdupq_n_s64(0xFFFFFFFFFFFFFFD0);
    unk_1EE1C7E10 = vdupq_n_s64(0xFFFFFFFFFFFFFFD8);
    physx::Sc::gOffsetTable = vdupq_n_s64(0xFFFFFFFFFFFFFF80);
    unk_1EE1C7DF0 = xmmword_1E3117F70;
    *&qword_1EE1C7E28 = xmmword_1E3117F80;
    unk_1EE1C7E38 = physx::Sc::gOffsetTable;
    physx::NpActor::sLazyInitOffsets = 0u;
    unk_1EE1C7C48 = 0u;
    qword_1EE1C7C58 = 0;
    unk_1EE1C7C60 = vdupq_n_s64(0x18uLL);
    unk_1EE1C7C70 = 0u;
    unk_1EE1C7C80 = 0u;
    unk_1EE1C7C90 = 0u;
    qword_1EE1C7CA0 = 24;
    xmmword_1EE1C7CA8 = 0u;
    unk_1EE1C7CB8 = 0u;
    xmmword_1EE1C7CC8 = 0u;
    unk_1EE1C7CD8 = 0u;
    qword_1EE1C7CE8 = 0;
    unk_1EE1C7CF0 = vdupq_n_s64(0x60uLL);
    unk_1EE1C7D00 = 0u;
    unk_1EE1C7D10 = 0u;
    unk_1EE1C7D20 = 0u;
    qword_1EE1C7D30 = 96;
    xmmword_1EE1C7D38 = 0u;
    unk_1EE1C7D48 = 0u;
    physx::Scb::Actor::sLazyInitOffsets = vdupq_n_s64(0x20uLL);
    qword_1EE1C7D80 = 32;
    xmmword_1EE1C7DA0 = physx::Scb::Actor::sLazyInitOffsets;
    qword_1EE1C7DB0 = 32;
    v11 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v12 = "static const char *physx::shdfnd::ReflectionAllocator<physx::NpPhysics>::getName() [T = physx::NpPhysics]";
    }

    else
    {
      v12 = "<allocation names disabled>";
    }

    v13 = (*(*(v11 + 24) + 16))(v11 + 24, 168, v12, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpPhysics.cpp", 219);
    *(v13 + 8) = 0;
    *(v13 + 16) = 0;
    *v13 = &unk_1F5D25100;
    *(v13 + 24) = *a3;
    physx::Sc::Physics::mInstance = v13 + 24;
    physx::gPxvOffsetTable = xmmword_1E3117F90;
    qword_1EE1C7EE8 = -144;
    *(v13 + 32) = 0;
    *(v13 + 40) = 0;
    *(v13 + 48) = 0;
    v14 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 1024, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpMaterialManager.h", 46);
    *(v13 + 56) = v14;
    *(v13 + 64) = 128;
    bzero(v14, 0x400uLL);
    *(v13 + 72) = &unk_1F5D25418;
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
    *(v13 + 80) = v17;
    physx::shdfnd::MutexImpl::MutexImpl(v17);
    *(v13 + 120) = 0;
    *(v13 + 88) = 0u;
    *(v13 + 104) = 0u;
    *(v13 + 128) = 1061158912;
    *(v13 + 132) = 0xFFFFFFFFLL;
    *(v13 + 140) = 0;
    physx::shdfnd::internal::HashBase<physx::shdfnd::Pair<physx::PxDeletionListener * const,physx::NpPhysics::NpDelListenerEntry *>,physx::PxDeletionListener *,physx::shdfnd::Hash<physx::PxDeletionListener *>,physx::shdfnd::internal::HashMapBase<physx::PxDeletionListener *,physx::NpPhysics::NpDelListenerEntry *,physx::shdfnd::Hash<physx::PxDeletionListener *>,physx::shdfnd::NonTrackingAllocator>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(v13 + 88, 0x40u);
    *(v13 + 144) = &unk_1F5D25468;
    *(v13 + 152) = 0;
    v18 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v19 = "static const char *physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>::getName() [T = physx::shdfnd::MutexImpl]";
    }

    else
    {
      v19 = "<allocation names disabled>";
    }

    v20 = (*(*(v18 + 24) + 16))(v18 + 24, 72, v19, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsMutex.h", 138);
    *(v13 + 160) = v20;
    physx::shdfnd::MutexImpl::MutexImpl(v20);
    physx::NpPhysics::mInstance = v13;
    v21 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v22 = "static const char *physx::shdfnd::ReflectionAllocator<physx::NpFactory>::getName() [T = physx::NpFactory]";
    }

    else
    {
      v22 = "<allocation names disabled>";
    }

    v23 = (*(*(v21 + 24) + 16))(v21 + 24, 7456, v22, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpFactory.cpp", 101);
    v24 = physx::GuMeshFactory::GuMeshFactory(v23);
    *v24 = &unk_1F5D24FE8;
    *(v24 + 99) = 0x4000000000;
    *(v24 + 776) = 1;
    *(v24 + 98) = v24 + 264;
    *(v24 + 100) = 32;
    *(v24 + 202) = 2816;
    *(v24 + 102) = 0;
    v25 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v26 = "static const char *physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>::getName() [T = physx::shdfnd::MutexImpl]";
    }

    else
    {
      v26 = "<allocation names disabled>";
    }

    v27 = (*(*(v25 + 24) + 16))(v25 + 24, 72, v26, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsMutex.h", 138);
    *(v23 + 824) = v27;
    physx::shdfnd::MutexImpl::MutexImpl(v27);
    v28 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v29 = "static const char *physx::shdfnd::ReflectionAllocator<physx::NpPtrTableStorageManager>::getName() [T = physx::NpPtrTableStorageManager]";
    }

    else
    {
      v29 = "<allocation names disabled>";
    }

    v30 = (*(*(v28 + 24) + 16))(v28 + 24, 1720, v29, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpFactory.cpp", 51);
    *v30 = &unk_1F5D25398;
    v31 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v32 = "static const char *physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>::getName() [T = physx::shdfnd::MutexImpl]";
    }

    else
    {
      v32 = "<allocation names disabled>";
    }

    v33 = (*(*(v31 + 24) + 16))(v31 + 24, 72, v32, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsMutex.h", 138);
    *(v30 + 8) = v33;
    physx::shdfnd::MutexImpl::MutexImpl(v33);
    *(v30 + 552) = 0x4000000000;
    *(v30 + 536) = 1;
    *(v30 + 544) = v30 + 24;
    *(v30 + 560) = 128;
    *(v30 + 568) = 4096;
    *(v30 + 576) = 0;
    *(v30 + 1120) = 0x4000000000;
    *(v30 + 1104) = 1;
    *(v30 + 1112) = v30 + 592;
    *(v30 + 1128) = 32;
    *(v30 + 1136) = 4096;
    *(v30 + 1144) = 0;
    *(v30 + 1688) = 0x4000000000;
    *(v30 + 1672) = 1;
    *(v30 + 1680) = v30 + 1160;
    *(v30 + 1696) = 8;
    *(v30 + 1704) = 4096;
    *(v30 + 1712) = 0;
    *(v23 + 832) = v30;
    *(v23 + 872) = 0;
    *(v23 + 840) = 0u;
    *(v23 + 856) = 0u;
    *(v23 + 880) = 1061158912;
    *(v23 + 884) = -1;
    *(v23 + 888) = 0;
    physx::shdfnd::internal::HashBase<physx::PxBase const*,physx::PxBase const*,physx::shdfnd::Hash<physx::PxBase const*>,physx::shdfnd::internal::HashSetBase<physx::PxBase const*,physx::shdfnd::Hash<physx::PxBase const*>,physx::shdfnd::NonTrackingAllocator,false>::GetKey,physx::shdfnd::NonTrackingAllocator,false>::reserveInternal(v23 + 840, 0x40u);
    *(v23 + 928) = 0;
    *(v23 + 896) = 0u;
    *(v23 + 912) = 0u;
    *(v23 + 936) = -3233808384;
    *(v23 + 944) = 0;
    physx::shdfnd::internal::HashBase<physx::PxBase const*,physx::PxBase const*,physx::shdfnd::Hash<physx::PxBase const*>,physx::shdfnd::internal::HashSetBase<physx::PxBase const*,physx::shdfnd::Hash<physx::PxBase const*>,physx::shdfnd::NonTrackingAllocator,false>::GetKey,physx::shdfnd::NonTrackingAllocator,false>::reserveInternal(v23 + 896, 0x40u);
    *(v23 + 984) = 0;
    *(v23 + 952) = 0u;
    *(v23 + 968) = 0u;
    *(v23 + 992) = -3233808384;
    *(v23 + 1000) = 0;
    physx::shdfnd::internal::HashBase<physx::PxBase const*,physx::PxBase const*,physx::shdfnd::Hash<physx::PxBase const*>,physx::shdfnd::internal::HashSetBase<physx::PxBase const*,physx::shdfnd::Hash<physx::PxBase const*>,physx::shdfnd::NonTrackingAllocator,false>::GetKey,physx::shdfnd::NonTrackingAllocator,false>::reserveInternal(v23 + 952, 0x40u);
    *(v23 + 1040) = 0;
    *(v23 + 1008) = 0u;
    *(v23 + 1024) = 0u;
    *(v23 + 1048) = -3233808384;
    *(v23 + 1056) = 0;
    physx::shdfnd::internal::HashBase<physx::PxBase const*,physx::PxBase const*,physx::shdfnd::Hash<physx::PxBase const*>,physx::shdfnd::internal::HashSetBase<physx::PxBase const*,physx::shdfnd::Hash<physx::PxBase const*>,physx::shdfnd::NonTrackingAllocator,false>::GetKey,physx::shdfnd::NonTrackingAllocator,false>::reserveInternal(v23 + 1008, 0x40u);
    *(v23 + 1096) = 0;
    *(v23 + 1064) = 0u;
    *(v23 + 1080) = 0u;
    *(v23 + 1104) = -3233808384;
    *(v23 + 1112) = 0;
    physx::shdfnd::internal::HashBase<physx::Sc::ConstraintSim *,physx::Sc::ConstraintSim *,physx::shdfnd::Hash<physx::Sc::ConstraintSim *>,physx::shdfnd::internal::HashSetBase<physx::Sc::ConstraintSim *,physx::shdfnd::Hash<physx::Sc::ConstraintSim *>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(v23 + 1064, 0x40u);
    *(v23 + 1656) = 0x4000000000;
    *(v23 + 1640) = 1;
    *(v23 + 1648) = v23 + 1128;
    *(v23 + 1664) = 10;
    *(v23 + 1672) = 4096;
    *(v23 + 1680) = 0;
    v34 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v35 = "static const char *physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>::getName() [T = physx::shdfnd::MutexImpl]";
    }

    else
    {
      v35 = "<allocation names disabled>";
    }

    v36 = (*(*(v34 + 24) + 16))(v34 + 24, 72, v35, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsMutex.h", 138);
    *(v23 + 1688) = v36;
    physx::shdfnd::MutexImpl::MutexImpl(v36);
    *(v23 + 2232) = 0x4000000000;
    *(v23 + 2216) = 1;
    *(v23 + 2224) = v23 + 1704;
    *(v23 + 2240) = 23;
    *(v23 + 2248) = 4096;
    *(v23 + 2256) = 0;
    v37 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v38 = "static const char *physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>::getName() [T = physx::shdfnd::MutexImpl]";
    }

    else
    {
      v38 = "<allocation names disabled>";
    }

    v39 = (*(*(v37 + 24) + 16))(v37 + 24, 72, v38, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsMutex.h", 138);
    *(v23 + 2264) = v39;
    physx::shdfnd::MutexImpl::MutexImpl(v39);
    *(v23 + 2808) = 0x4000000000;
    *(v23 + 2792) = 1;
    *(v23 + 2800) = v23 + 2280;
    *(v23 + 2816) = 15;
    *(v23 + 2824) = 4096;
    *(v23 + 2832) = 0;
    v40 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v41 = "static const char *physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>::getName() [T = physx::shdfnd::MutexImpl]";
    }

    else
    {
      v41 = "<allocation names disabled>";
    }

    v42 = (*(*(v40 + 24) + 16))(v40 + 24, 72, v41, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsMutex.h", 138);
    *(v23 + 2840) = v42;
    physx::shdfnd::MutexImpl::MutexImpl(v42);
    *(v23 + 3384) = 0x4000000000;
    *(v23 + 3368) = 1;
    *(v23 + 3376) = v23 + 2856;
    *(v23 + 3392) = 51;
    *(v23 + 3400) = 4096;
    *(v23 + 3408) = 0;
    v43 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v44 = "static const char *physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>::getName() [T = physx::shdfnd::MutexImpl]";
    }

    else
    {
      v44 = "<allocation names disabled>";
    }

    v45 = (*(*(v43 + 24) + 16))(v43 + 24, 72, v44, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsMutex.h", 138);
    *(v23 + 3416) = v45;
    physx::shdfnd::MutexImpl::MutexImpl(v45);
    *(v23 + 3960) = 0x4000000000;
    *(v23 + 3944) = 1;
    *(v23 + 3952) = v23 + 3432;
    *(v23 + 3968) = 22;
    *(v23 + 3976) = 4096;
    *(v23 + 3984) = 0;
    v46 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v47 = "static const char *physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>::getName() [T = physx::shdfnd::MutexImpl]";
    }

    else
    {
      v47 = "<allocation names disabled>";
    }

    v48 = (*(*(v46 + 24) + 16))(v46 + 24, 72, v47, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsMutex.h", 138);
    *(v23 + 3992) = v48;
    physx::shdfnd::MutexImpl::MutexImpl(v48);
    *(v23 + 4536) = 0x4000000000;
    *(v23 + 4520) = 1;
    *(v23 + 4528) = v23 + 4008;
    *(v23 + 4544) = 51;
    *(v23 + 4552) = 4096;
    *(v23 + 4560) = 0;
    v49 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v50 = "static const char *physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>::getName() [T = physx::shdfnd::MutexImpl]";
    }

    else
    {
      v50 = "<allocation names disabled>";
    }

    v51 = (*(*(v49 + 24) + 16))(v49 + 24, 72, v50, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsMutex.h", 138);
    *(v23 + 4568) = v51;
    physx::shdfnd::MutexImpl::MutexImpl(v51);
    *(v23 + 5112) = 0x4000000000;
    *(v23 + 5096) = 1;
    *(v23 + 5104) = v23 + 4584;
    *(v23 + 5120) = 22;
    *(v23 + 5128) = 4096;
    *(v23 + 5136) = 0;
    v52 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v53 = "static const char *physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>::getName() [T = physx::shdfnd::MutexImpl]";
    }

    else
    {
      v53 = "<allocation names disabled>";
    }

    v54 = (*(*(v52 + 24) + 16))(v52 + 24, 72, v53, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsMutex.h", 138);
    *(v23 + 5144) = v54;
    physx::shdfnd::MutexImpl::MutexImpl(v54);
    *(v23 + 5688) = 0x4000000000;
    *(v23 + 5672) = 1;
    *(v23 + 5680) = v23 + 5160;
    *(v23 + 5696) = 20;
    *(v23 + 5704) = 4096;
    *(v23 + 5712) = 0;
    v55 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v56 = "static const char *physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>::getName() [T = physx::shdfnd::MutexImpl]";
    }

    else
    {
      v56 = "<allocation names disabled>";
    }

    v57 = (*(*(v55 + 24) + 16))(v55 + 24, 72, v56, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsMutex.h", 138);
    *(v23 + 5720) = v57;
    physx::shdfnd::MutexImpl::MutexImpl(v57);
    *(v23 + 6264) = 0x4000000000;
    *(v23 + 6248) = 1;
    *(v23 + 6256) = v23 + 5736;
    *(v23 + 6272) = 8;
    *(v23 + 6280) = 4096;
    *(v23 + 6288) = 0;
    v58 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v59 = "static const char *physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>::getName() [T = physx::shdfnd::MutexImpl]";
    }

    else
    {
      v59 = "<allocation names disabled>";
    }

    v60 = (*(*(v58 + 24) + 16))(v58 + 24, 72, v59, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsMutex.h", 138);
    *(v23 + 6296) = v60;
    physx::shdfnd::MutexImpl::MutexImpl(v60);
    *(v23 + 6840) = 0x4000000000;
    *(v23 + 6824) = 1;
    *(v23 + 6832) = v23 + 6312;
    *(v23 + 6848) = 9;
    *(v23 + 6856) = 4096;
    *(v23 + 6864) = 0;
    v61 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v62 = "static const char *physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>::getName() [T = physx::shdfnd::MutexImpl]";
    }

    else
    {
      v62 = "<allocation names disabled>";
    }

    v63 = (*(*(v61 + 24) + 16))(v61 + 24, 72, v62, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsMutex.h", 138);
    *(v23 + 6872) = v63;
    physx::shdfnd::MutexImpl::MutexImpl(v63);
    *(v23 + 7416) = 0x4000000000;
    *(v23 + 7400) = 1;
    *(v23 + 7408) = v23 + 6888;
    *(v23 + 7424) = 9;
    *(v23 + 7432) = 4096;
    *(v23 + 7440) = 0;
    v64 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v65 = "static const char *physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>::getName() [T = physx::shdfnd::MutexImpl]";
    }

    else
    {
      v65 = "<allocation names disabled>";
    }

    v66 = (*(*(v64 + 24) + 16))(v64 + 24, 72, v65, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsMutex.h", 138);
    *(v23 + 7448) = v66;
    physx::shdfnd::MutexImpl::MutexImpl(v66);
    physx::NpFactory::mInstance = v23;
    physx::GuMeshFactory::addFactoryListener(v23, physx::NpPhysics::mInstance + 144);
    v10 = physx::NpPhysics::mRefCount;
  }

  physx::NpPhysics::mRefCount = v10 + 1;
  return physx::NpPhysics::mInstance;
}

void physx::NpPhysics::release(physx::NpPhysics *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (!--physx::NpPhysics::mRefCount)
  {
    v55 = v9;
    v56 = v10;
    v11 = physx::NpFactory::mInstance;
    v53 = 0;
    v54 = 0;
    v12 = *(physx::NpFactory::mInstance + 892);
    if (v12)
    {
      physx::shdfnd::Array<physx::PxAggregate *,physx::shdfnd::ReflectionAllocator<physx::PxAggregate *>>::recreate(&v53, v12);
    }

    if (*(v11 + 872))
    {
      v13 = *(v11 + 864);
      v14 = *v13;
      if (v14 == -1)
      {
        v15 = 0;
        while (*(v11 + 876) - 1 != v15)
        {
          v14 = v13[++v15];
          if (v14 != -1)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        LODWORD(v15) = 0;
        do
        {
LABEL_11:
          v16 = (*(v11 + 848) + 8 * v14);
          v17 = v54;
          if ((HIDWORD(v54) & 0x7FFFFFFFu) <= v54)
          {
            physx::shdfnd::Array<physx::PxAggregate *,physx::shdfnd::ReflectionAllocator<physx::PxAggregate *>>::growAndPushBack(&v53, v16);
          }

          else
          {
            *(v53 + 8 * v54) = *v16;
            LODWORD(v54) = v17 + 1;
          }

          v14 = *(*(v11 + 856) + 4 * v14);
        }

        while (v14 != -1);
        while (*(v11 + 876) - 1 != v15)
        {
          LODWORD(v15) = v15 + 1;
          v14 = *(*(v11 + 864) + 4 * v15);
          if (v14 != -1)
          {
            goto LABEL_11;
          }
        }
      }
    }

    if (v54)
    {
      v18 = 0;
      do
      {
        (***(v53 + 8 * v18))(*(v53 + 8 * v18));
        ++v18;
      }

      while (v18 < v54);
    }

    if ((v54 & 0x8000000000000000) == 0 && (v54 & 0x7FFFFFFF00000000) != 0 && v53 != 0)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }

    v53 = 0;
    v54 = 0;
    v20 = *(v11 + 1004);
    if (v20)
    {
      physx::shdfnd::Array<physx::PxConstraint *,physx::shdfnd::ReflectionAllocator<physx::PxConstraint *>>::recreate(&v53, v20);
    }

    if (*(v11 + 984))
    {
      v21 = *(v11 + 976);
      v22 = *v21;
      if (v22 == -1)
      {
        v23 = 0;
        while (*(v11 + 988) - 1 != v23)
        {
          v22 = v21[++v23];
          if (v22 != -1)
          {
            goto LABEL_36;
          }
        }
      }

      else
      {
        LODWORD(v23) = 0;
        do
        {
LABEL_36:
          v24 = (*(v11 + 960) + 8 * v22);
          v25 = v54;
          if ((HIDWORD(v54) & 0x7FFFFFFFu) <= v54)
          {
            physx::shdfnd::Array<physx::PxConstraint *,physx::shdfnd::ReflectionAllocator<physx::PxConstraint *>>::growAndPushBack(&v53, v24);
          }

          else
          {
            *(v53 + 8 * v54) = *v24;
            LODWORD(v54) = v25 + 1;
          }

          v22 = *(*(v11 + 968) + 4 * v22);
        }

        while (v22 != -1);
        while (*(v11 + 988) - 1 != v23)
        {
          LODWORD(v23) = v23 + 1;
          v22 = *(*(v11 + 976) + 4 * v23);
          if (v22 != -1)
          {
            goto LABEL_36;
          }
        }
      }
    }

    if (v54)
    {
      v26 = 0;
      do
      {
        (***(v53 + 8 * v26))(*(v53 + 8 * v26));
        ++v26;
      }

      while (v26 < v54);
    }

    if ((v54 & 0x8000000000000000) == 0 && (v54 & 0x7FFFFFFF00000000) != 0 && v53 != 0)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }

    v53 = 0;
    v54 = 0;
    v28 = *(v11 + 948);
    if (v28)
    {
      physx::shdfnd::Array<physx::PxArticulationBase *,physx::shdfnd::ReflectionAllocator<physx::PxArticulationBase *>>::recreate(&v53, v28);
    }

    if (*(v11 + 928))
    {
      v29 = *(v11 + 920);
      v30 = *v29;
      if (v30 == -1)
      {
        v31 = 0;
        while (*(v11 + 932) - 1 != v31)
        {
          v30 = v29[++v31];
          if (v30 != -1)
          {
            goto LABEL_61;
          }
        }
      }

      else
      {
        LODWORD(v31) = 0;
        do
        {
LABEL_61:
          v32 = (*(v11 + 904) + 8 * v30);
          v33 = v54;
          if ((HIDWORD(v54) & 0x7FFFFFFFu) <= v54)
          {
            physx::shdfnd::Array<physx::PxArticulationBase *,physx::shdfnd::ReflectionAllocator<physx::PxArticulationBase *>>::growAndPushBack(&v53, v32);
          }

          else
          {
            *(v53 + 8 * v54) = *v32;
            LODWORD(v54) = v33 + 1;
          }

          v30 = *(*(v11 + 912) + 4 * v30);
        }

        while (v30 != -1);
        while (*(v11 + 932) - 1 != v31)
        {
          LODWORD(v31) = v31 + 1;
          v30 = *(*(v11 + 920) + 4 * v31);
          if (v30 != -1)
          {
            goto LABEL_61;
          }
        }
      }
    }

    if (v54)
    {
      v34 = 0;
      do
      {
        (***(v53 + 8 * v34))(*(v53 + 8 * v34));
        ++v34;
      }

      while (v34 < v54);
    }

    if ((v54 & 0x8000000000000000) == 0 && (v54 & 0x7FFFFFFF00000000) != 0 && v53 != 0)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }

    v53 = 0;
    v54 = 0;
    v36 = *(v11 + 1060);
    if (v36)
    {
      physx::shdfnd::Array<physx::PxActor *,physx::shdfnd::ReflectionAllocator<physx::PxActor *>>::recreate(&v53, v36);
    }

    if (*(v11 + 1040))
    {
      v37 = *(v11 + 1032);
      v38 = *v37;
      if (v38 == -1)
      {
        v39 = 0;
        while (*(v11 + 1044) - 1 != v39)
        {
          v38 = v37[++v39];
          if (v38 != -1)
          {
            goto LABEL_86;
          }
        }
      }

      else
      {
        LODWORD(v39) = 0;
        do
        {
LABEL_86:
          v40 = (*(v11 + 1016) + 8 * v38);
          v41 = v54;
          if ((HIDWORD(v54) & 0x7FFFFFFFu) <= v54)
          {
            physx::shdfnd::Array<physx::PxActor *,physx::shdfnd::ReflectionAllocator<physx::PxActor *>>::growAndPushBack(&v53, v40);
          }

          else
          {
            *(v53 + 8 * v54) = *v40;
            LODWORD(v54) = v41 + 1;
          }

          v38 = *(*(v11 + 1024) + 4 * v38);
        }

        while (v38 != -1);
        while (*(v11 + 1044) - 1 != v39)
        {
          LODWORD(v39) = v39 + 1;
          v38 = *(*(v11 + 1032) + 4 * v39);
          if (v38 != -1)
          {
            goto LABEL_86;
          }
        }
      }
    }

    if (v54)
    {
      v42 = 0;
      do
      {
        (***(v53 + 8 * v42))(*(v53 + 8 * v42));
        ++v42;
      }

      while (v42 < v54);
    }

    if ((v54 & 0x8000000000000000) == 0 && (v54 & 0x7FFFFFFF00000000) != 0 && v53 != 0)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }

    while (*(v11 + 1116))
    {
      v44 = **(v11 + 1072);
      if (atomic_fetch_add((v44 + 32), 0xFFFFFFFF) == 1)
      {
        (*(*(v44 + 24) + 16))();
      }
    }

    physx::GuMeshFactory::release(v11);
    physx::NpFactory::mInstance = 0;
    v52 = physx::NpPhysics::mInstance;
    if (physx::NpPhysics::mInstance)
    {
      v52 = (*(*physx::NpPhysics::mInstance + 8))(physx::NpPhysics::mInstance);
    }

    physx::NpPhysics::mInstance = 0;

    physx::shdfnd::Foundation::decRefCount(v52, v45, v46, v47, v48, v49, v50, v51, a9);
  }
}

void *physx::NpPhysics::createScene(uint64_t a1, uint64_t a2)
{
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_lock(*(a1 + 160));
  }

  v4 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v5 = "static const char *physx::shdfnd::ReflectionAllocator<physx::NpScene>::getName() [T = physx::NpScene]";
  }

  else
  {
    v5 = "<allocation names disabled>";
  }

  v6 = (*(*(v4 + 24) + 16))(v4 + 24, 9744, v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpPhysics.cpp", 277);
  v24 = physx::NpScene::NpScene(v6, a2);
  if (!v24)
  {
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 32, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpPhysics.cpp", 280, "Unable to create scene.", v7, v8, v9, v23);
    goto LABEL_24;
  }

  if (!(*(*v6 + 968))(v6))
  {
    v18 = physx::shdfnd::Foundation::mInstance;
    v19 = "Unable to create scene. Task manager creation failed.";
    v20 = 32;
    v21 = 285;
LABEL_22:
    physx::shdfnd::Foundation::error(v18, v20, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpPhysics.cpp", v21, v19, v10, v11, v12, v23);
    v6 = 0;
    goto LABEL_24;
  }

  physx::NpScene::loadFromDesc(v6, a2);
  v13 = *(a1 + 64);
  if (v13)
  {
    v14 = 0;
    do
    {
      v15 = v13 - v14;
      v16 = (*(a1 + 56) + 8 * v14++);
      while (!*v16)
      {
        ++v14;
        ++v16;
        if (!--v15)
        {
          goto LABEL_16;
        }
      }

      physx::Scb::Scene::addMaterial((v6 + 2), *v16 + 48);
      v13 = *(a1 + 64);
    }

    while (v14 < v13);
  }

LABEL_16:
  if (!v6[234])
  {
    (*(*v6 + 8))(v6);
    v18 = physx::shdfnd::Foundation::mInstance;
    v19 = "Unable to create scene.";
    v20 = 16;
    v21 = 302;
    goto LABEL_22;
  }

  v17 = *(a1 + 16);
  if ((*(a1 + 20) & 0x7FFFFFFFu) <= v17)
  {
    physx::shdfnd::Array<physx::NpScene *,physx::shdfnd::ReflectionAllocator<physx::NpScene *>>::growAndPushBack(a1 + 8, &v24);
  }

  else
  {
    *(*(a1 + 8) + 8 * v17) = v6;
    *(a1 + 16) = v17 + 1;
  }

LABEL_24:
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_unlock(*(a1 + 160));
  }

  return v6;
}

uint64_t physx::NpPhysics::releaseSceneInternal(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    result = pthread_mutex_lock(*(result + 160));
  }

  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = *(v3 + 16);
    v6 = *(v3 + 8);
    while (*v6 != a2)
    {
      ++v6;
      if (!--v5)
      {
        goto LABEL_10;
      }
    }

    v7 = v4 - 1;
    v8 = *(*(v3 + 8) + 8 * v7);
    *(v3 + 16) = v7;
    *v6 = v8;
    result = (*(*a2 + 8))(a2);
  }

LABEL_10:
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    v9 = *(v3 + 160);

    return pthread_mutex_unlock(v9);
  }

  return result;
}

uint64_t physx::NpPhysics::getNbScenes(pthread_mutex_t **this)
{
  if ((physx::shdfnd::g_alwaysUseLocking & 1) == 0 && (physx::shdfnd::g_isLockingEnabled & 1) == 0)
  {
    return *(this + 4);
  }

  pthread_mutex_lock(this[20]);
  v2 = *(this + 4);
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_unlock(this[20]);
  }

  return v2;
}

uint64_t physx::NpPhysics::getScenes(uint64_t a1, void *a2, int a3, unsigned int a4)
{
  LODWORD(v5) = a3;
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_lock(*(a1 + 160));
  }

  v8 = (*(a1 + 16) - a4) & ~((*(a1 + 16) - a4) >> 31);
  if (v8 >= v5)
  {
    v5 = v5;
  }

  else
  {
    v5 = v8;
  }

  if (v5)
  {
    v9 = (*(a1 + 8) + 8 * a4);
    v10 = v5;
    do
    {
      v11 = *v9++;
      *a2++ = v11;
      --v10;
    }

    while (v10);
  }

  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_unlock(*(a1 + 160));
  }

  return v5;
}

physx::PxRigidStatic *physx::NpPhysics::createRigidStatic(uint64_t a1, float32x4_t *a2)
{
  v2 = physx::NpFactory::mInstance;
  _Q0 = *a2;
  _Q1 = vmulq_f32(_Q0, _Q0);
  _S2 = a2->i64[1];
  __asm { FMLA            S1, S2, V0.S[2] }

  _S2 = HIDWORD(*a2);
  __asm { FMLA            S1, S2, V0.S[3] }

  _Q1.f32[0] = sqrtf(_Q1.f32[0]);
  v18 = vdivq_f32(*a2, vdupq_lane_s32(*_Q1.f32, 0));
  v19 = a2[1].i64[0];
  v20 = a2[1].i32[2];
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_lock(*(physx::NpFactory::mInstance + 2264));
  }

  v11 = *(v2 + 2256);
  if (!v11)
  {
    v12 = physx::shdfnd::ReflectionAllocator<physx::NpRigidStatic>::allocate(*(v2 + 2248), "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsPool.h", 180);
    v13 = v12;
    v21 = v12;
    v14 = *(v2 + 2232);
    if ((*(v2 + 2236) & 0x7FFFFFFFu) <= v14)
    {
      physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::NpRigidStatic>>>::growAndPushBack(v2 + 1704, &v21);
    }

    else
    {
      *(*(v2 + 2224) + 8 * v14) = v12;
      *(v2 + 2232) = v14 + 1;
    }

    v15 = v13 + 176 * *(v2 + 2240) - 176;
    v11 = *(v2 + 2256);
    if (v15 >= v13)
    {
      v16 = (v13 + 176 * *(v2 + 2240) - 176);
      do
      {
        *v16 = v11;
        v16 -= 22;
        v11 = v15;
        v15 = v16;
      }

      while (v16 >= v13);
      v11 = (v16 + 22);
    }
  }

  *(v2 + 2256) = *v11;
  ++*(v2 + 2244);
  physx::NpRigidStatic::NpRigidStatic(v11, &v18);
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_unlock(*(v2 + 2264));
  }

  physx::NpFactory::addRigidStatic(v2, v11, 1);
  return v11;
}

uint64_t physx::NpPhysics::createShape(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4, int a5, char *a6)
{
  v29 = *MEMORY[0x1E69E9840];
  v10 = physx::NpFactory::mInstance;
  v11 = *a6;
  v26[8] = 1;
  v27 = v26;
  v28 = 0x400000000;
  LOWORD(v25) = 0;
  physx::shdfnd::Array<unsigned short,physx::shdfnd::InlineAllocator<8u,physx::shdfnd::ReflectionAllocator<unsigned short>>>::resize(v26, a4, &v25);
  if (a4 == 1)
  {
    v12 = v27;
    *v27 = *(*a3 + 72);
  }

  else
  {
    v12 = v27;
    if (a4)
    {
      v13 = 0;
      do
      {
        v12[v13] = *(*(a3 + 8 * v13) + 72);
        ++v13;
      }

      while (a4 != v13);
    }
  }

  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_lock(*(v10 + 2840));
    v12 = v27;
  }

  v14 = *(v10 + 2832);
  if (!v14)
  {
    v15 = physx::shdfnd::ReflectionAllocator<physx::NpShape>::allocate(*(v10 + 2824), "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsPool.h", 180);
    v16 = v15;
    v25 = v15;
    v17 = *(v10 + 2808);
    if ((*(v10 + 2812) & 0x7FFFFFFFu) <= v17)
    {
      physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::NpShape>>>::growAndPushBack(v10 + 2280, &v25);
    }

    else
    {
      *(*(v10 + 2800) + 8 * v17) = v15;
      *(v10 + 2808) = v17 + 1;
    }

    v18 = (v16 + 272 * *(v10 + 2816) - 272);
    v14 = *(v10 + 2832);
    if (v18 >= v16)
    {
      do
      {
        *v18 = v14;
        v19 = v18 - 34;
        v14 = v18;
        v18 = v19;
      }

      while (v19 >= v16);
      v14 = (v19 + 34);
    }
  }

  *(v10 + 2832) = *v14;
  ++*(v10 + 2820);
  LOBYTE(v25) = v11;
  physx::NpShape::NpShape(v14, a2, &v25, v12, a4, a5);
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_unlock(*(v10 + 2840));
  }

  if (a4)
  {
    v20 = 0;
    do
    {
      if ((*(v14 + 56) & 2) != 0)
      {
        v23 = *(v14 + 64);
        if (*(v23 + 148) == 1)
        {
          v22 = v23 + 144;
        }

        else
        {
          v22 = *(*(v14 + 48) + 7792) + 2 * *(v23 + 144);
        }
      }

      else
      {
        v21 = *(v14 + 152);
        v22 = v14 + 146;
        if ((v21 - 7) >= 0xFFFFFFFE)
        {
          if (v21 == 5)
          {
            v22 = *(v14 + 216);
          }

          else
          {
            v22 = *(v14 + 192);
          }
        }
      }

      atomic_fetch_add((*(*(physx::NpPhysics::mInstance + 56) + 8 * *(v22 + v20)) + 32), 1u);
      v20 += 2;
    }

    while (2 * a4 != v20);
  }

  physx::NpFactory::addShape(v10, v14, 1);
  if ((v28 & 0x8000000000000000) == 0 && (v28 & 0x7FFFFFFF00000000) != 0 && v27 != v26 && v27)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  return v14;
}

uint64_t physx::NpPhysics::getShapes(uint64_t a1, void *a2, unsigned int a3, unsigned int a4)
{
  v4 = (*(physx::NpFactory::mInstance + 1116) - a4) & ~((*(physx::NpFactory::mInstance + 1116) - a4) >> 31);
  if (v4 >= a3)
  {
    result = a3;
  }

  else
  {
    result = v4;
  }

  if (result)
  {
    v6 = (*(physx::NpFactory::mInstance + 1072) + 8 * a4);
    v7 = result;
    do
    {
      v8 = *v6++;
      *a2++ = v8;
      --v7;
    }

    while (v7);
  }

  return result;
}

physx::PxRigidStatic *physx::NpPhysics::createRigidDynamic(uint64_t a1, float32x4_t *a2)
{
  v2 = physx::NpFactory::mInstance;
  _Q0 = *a2;
  _Q1 = vmulq_f32(_Q0, _Q0);
  _S2 = a2->i64[1];
  __asm { FMLA            S1, S2, V0.S[2] }

  _S2 = HIDWORD(*a2);
  __asm { FMLA            S1, S2, V0.S[3] }

  _Q1.f32[0] = sqrtf(_Q1.f32[0]);
  v18 = vdivq_f32(*a2, vdupq_lane_s32(*_Q1.f32, 0));
  v19 = a2[1].i64[0];
  v20 = a2[1].i32[2];
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_lock(*(physx::NpFactory::mInstance + 1688));
  }

  v11 = *(v2 + 1680);
  if (!v11)
  {
    v12 = physx::shdfnd::ReflectionAllocator<physx::NpRigidDynamic>::allocate(*(v2 + 1672), "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsPool.h", 180);
    v13 = v12;
    v21 = v12;
    v14 = *(v2 + 1656);
    if ((*(v2 + 1660) & 0x7FFFFFFFu) <= v14)
    {
      physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::NpRigidDynamic>>>::growAndPushBack(v2 + 1128, &v21);
    }

    else
    {
      *(*(v2 + 1648) + 8 * v14) = v12;
      *(v2 + 1656) = v14 + 1;
    }

    v15 = (v13 + 384 * *(v2 + 1664) - 384);
    v11 = *(v2 + 1680);
    if (v15 >= v13)
    {
      do
      {
        *v15 = v11;
        v16 = v15 - 48;
        v11 = v15;
        v15 = v16;
      }

      while (v16 >= v13);
      v11 = (v16 + 48);
    }
  }

  *(v2 + 1680) = *v11;
  ++*(v2 + 1668);
  physx::NpRigidDynamic::NpRigidDynamic(v11, &v18);
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_unlock(*(v2 + 1688));
  }

  physx::NpFactory::addRigidStatic(v2, v11, 1);
  return v11;
}

uint64_t physx::NpPhysics::createConstraint(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3, uint64_t a4, int8x16_t *a5, int a6)
{
  v11 = physx::NpFactory::mInstance;
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_lock(*(physx::NpFactory::mInstance + 3992));
  }

  v12 = *(v11 + 3984);
  if (!v12)
  {
    v13 = physx::shdfnd::ReflectionAllocator<physx::NpConstraint>::allocate(*(v11 + 3976), "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsPool.h", 180);
    v14 = v13;
    v24 = v13;
    v15 = *(v11 + 3960);
    if ((*(v11 + 3964) & 0x7FFFFFFFu) <= v15)
    {
      physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::NpConstraint>>>::growAndPushBack(v11 + 3432, &v24);
    }

    else
    {
      *(*(v11 + 3952) + 8 * v15) = v13;
      *(v11 + 3960) = v15 + 1;
    }

    v16 = v14 + 184 * *(v11 + 3968) - 184;
    v12 = *(v11 + 3984);
    if (v16 >= v14)
    {
      v17 = (v14 + 184 * *(v11 + 3968) - 184);
      do
      {
        *v17 = v12;
        v17 -= 23;
        v12 = v16;
        v16 = v17;
      }

      while (v17 >= v14);
      v12 = (v17 + 23);
    }
  }

  *(v11 + 3984) = *v12;
  ++*(v11 + 3972);
  *(v12 + 8) = 65545;
  *v12 = &unk_1F5D24F20;
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  *(v12 + 32) = 0;
  *(v12 + 56) = 32;
  *(v12 + 48) = 0;
  *(v12 + 68) = 0;
  *(v12 + 76) = 0;
  *(v12 + 60) = 0;
  *(v12 + 88) = a4;
  *(v12 + 96) = vextq_s8(*a5, *a5, 8uLL);
  *(v12 + 112) = a5[1].i64[0];
  *(v12 + 120) = a6;
  *(v12 + 124) = vneg_f32(0x80000000800000);
  *(v12 + 132) = 0u;
  *(v12 + 148) = 0u;
  *(v12 + 162) = 0;
  *(v12 + 40) = 100663296;
  *(v12 + 176) = 1;
  LOWORD(v24) = a5[1].i32[2];
  physx::Sc::ConstraintCore::setFlags((v12 + 56), &v24);
  if (a2)
  {
    physx::NpActor::addConnector(a2 + *(&physx::NpActor::sLazyInitOffsets + a2[4]), 0, v12);
  }

  if (a3)
  {
    physx::NpActor::addConnector(a3 + *(&physx::NpActor::sLazyInitOffsets + a3[4]), 0, v12);
  }

  if (!a2 || ((*(*a2 + 104))(&v24, a2), (v24 & 8) != 0))
  {
    v18 = 0;
    if (!a3)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v18 = (*(*a2 + 56))(a2);
    if (!a3)
    {
      goto LABEL_24;
    }
  }

  (*(*a3 + 104))(&v24, a3);
  if ((v24 & 8) == 0)
  {
    v19 = (*(*a3 + 56))(a3);
    if (a2)
    {
      goto LABEL_25;
    }

    goto LABEL_26;
  }

LABEL_24:
  v19 = 0;
  if (a2)
  {
LABEL_25:
    if (!v18)
    {
      goto LABEL_38;
    }
  }

LABEL_26:
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

  if (v19)
  {
    v21 = 1;
  }

  else
  {
    v21 = a3 == 0;
  }

  if (v21 && v20)
  {
    v24 = v12;
    v25 = 0;
    v22 = physx::shdfnd::internal::HashBase<physx::PxConstraint *,physx::PxConstraint *,physx::shdfnd::Hash<physx::PxConstraint *>,physx::shdfnd::internal::HashSetBase<physx::PxConstraint *,physx::shdfnd::Hash<physx::PxConstraint *>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::create(v20 + 1136, &v24, &v25);
    if ((v25 & 1) == 0)
    {
      *v22 = v24;
    }

    physx::Scb::Scene::add<physx::Scb::Constraint>(v20 + 2, v12 + 32, v20 + 996);
  }

LABEL_38:
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_unlock(*(v11 + 3992));
  }

  physx::NpFactory::addConstraint(v11, v12, 1);
  return v12;
}

void *physx::NpPhysics::createArticulation(physx::NpPhysics *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  {
    v8 = physx::NpFactory::mInstance;
    if (Articulation)
    {
      physx::NpFactory::addArticulation(v8, Articulation, 1);
    }
  }

  else
  {
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpFactory.cpp", 263, "Articulations not registered: returned NULL.", a6, a7, a8, v11);
    return 0;
  }

  return Articulation;
}

void *physx::NpPhysics::createArticulationReducedCoordinate(physx::NpPhysics *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  {
    v8 = physx::NpFactory::mInstance;
    if (ArticulationRC)
    {
      physx::NpFactory::addArticulation(v8, ArticulationRC, 1);
    }
  }

  else
  {
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpFactory.cpp", 279, "Articulations not registered: returned NULL.", a6, a7, a8, v11);
    return 0;
  }

  return ArticulationRC;
}

physx::NpAggregate *physx::NpPhysics::createAggregate(physx::NpPhysics *this, unsigned int a2, char a3)
{
  v5 = physx::NpFactory::mInstance;
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_lock(*(physx::NpFactory::mInstance + 3416));
  }

  v6 = *(v5 + 3408);
  if (!v6)
  {
    v7 = physx::shdfnd::ReflectionAllocator<physx::NpAggregate>::allocate(*(v5 + 3400), "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsPool.h", 180);
    v8 = v7;
    v13 = v7;
    v9 = *(v5 + 3384);
    if ((*(v5 + 3388) & 0x7FFFFFFFu) <= v9)
    {
      physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::NpAggregate>>>::growAndPushBack(v5 + 2856, &v13);
    }

    else
    {
      *(*(v5 + 3376) + 8 * v9) = v7;
      *(v5 + 3384) = v9 + 1;
    }

    v10 = v8 + 80 * *(v5 + 3392) - 80;
    v6 = *(v5 + 3408);
    if (v10 >= v8)
    {
      v11 = (v8 + 80 * *(v5 + 3392) - 80);
      do
      {
        *v11 = v6;
        v11 -= 10;
        v6 = v10;
        v10 = v11;
      }

      while (v11 >= v8);
      v6 = (v11 + 10);
    }
  }

  *(v5 + 3408) = *v6;
  ++*(v5 + 3396);
  physx::NpAggregate::NpAggregate(v6, a2, a3);
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_unlock(*(v5 + 3416));
  }

  physx::NpFactory::addAggregate(v5, v6, 1);
  return v6;
}