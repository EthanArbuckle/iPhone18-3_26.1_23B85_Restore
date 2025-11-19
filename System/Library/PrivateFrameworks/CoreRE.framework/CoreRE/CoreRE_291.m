id RETextureImportOperationCreateTexture(uint64_t a1, void *a2)
{
  {
    if (*(a1 + 248))
    {
      v5 = std::__throw_bad_variant_access[abi:nn200100]();
      return RETextureImportGetCGColorSpaceFromOCIOString(v5);
    }

    v3 = *(a1 + 240);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void RETextureImportOperationSetDestinationColorGamut(uint64_t a1, char a2)
{
  v4 = *(a1 + 544);
  v6 = *(v4 + 184);
  v5 = *(v4 + 192);
  if ((*(v4 + 203) & 1) == 0)
  {
    *(v4 + 203) = 1;
  }

  *(v4 + 204) = a2;
}

void RERemoteEffectsComponentAddStyle(re::AssetHandle *a1, int a2, uint64_t a3)
{
  v4 = *(a1 + 7);
  if (v4)
  {
    v5 = *(a1 + 9);
    v6 = v4 << 7;
    while (*v5 != a3)
    {
      v5 += 16;
      v6 -= 128;
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (a2 == 1 || a2 == 3 || a2 == 2)
    {
      v7 = 0;
    }

    else
    {
      a2 = 0;
      v7 = 1;
    }

    LODWORD(v20) = 256;
    WORD2(v20) = 1;
    __asm { FMOV            V0.2S, #1.0 }

    *(&v20 + 1) = _D0;
    LODWORD(v21) = 1065353216;
    BYTE4(v21) = 0;
    *(&v21 + 1) = _D0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    memset(v25, 0, sizeof(v25));
    v26 = 0;
    BYTE6(v20) = v7;
    DWORD2(v19) = 3;
    HIDWORD(v19) = a2;
    *&v19 = a3;
    v14 = 0;
    v13[1] = v20;
    v13[2] = v21;
    v13[0] = v19;
    v15 = 0;
    v16 = 0;
    re::AssetHandle::AssetHandle(v17, v25);
    v17[3] = 0;
    v18 = 0;
    re::ecs2::RemoteEffectsComponent::addOrUpdateStyle(a1, v13);
    re::AssetHandle::~AssetHandle(v17);
    re::ecs2::Component::enqueueMarkDirty(a1);
    re::AssetHandle::~AssetHandle(v25);
  }
}

uint64_t RERemoteEffectsComponentClearStyles(uint64_t a1)
{
  re::DynamicArray<re::ecs2::RemoteEffectsStyle>::clear((a1 + 40));

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t RERemoteEffectsComponentGetStyleIDAtIndex(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 56) <= a2)
  {
    return 0;
  }

  else
  {
    return *(*(a1 + 72) + (a2 << 7));
  }
}

uint64_t RERemoteEffectsComponentStyleGetType(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 72);
  for (i = *v2; i != a2; i = v4)
  {
    v4 = v2[16];
    v2 += 16;
  }

  v5 = *(v2 + 3);
  if (v5 - 1 >= 3)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

uint64_t RERemoteEffectsComponentSetStyleIDAtIndex(uint64_t this, unsigned int a2, uint64_t a3)
{
  if (*(this + 56) > a2)
  {
    *(*(this + 72) + (a2 << 7)) = a3;
  }

  return re::ecs2::Component::enqueueMarkDirty(this);
}

void RERemoteEffectsComponentStyleReset(re::AssetHandle *a1, uint64_t a2)
{
  *(&v14 + 1) = 3;
  LODWORD(v15) = 256;
  WORD2(v15) = 1;
  BYTE6(v15) = 1;
  __asm { FMOV            V0.2S, #1.0 }

  *(&v15 + 1) = _D0;
  LODWORD(v16) = 1065353216;
  BYTE4(v16) = 0;
  *(&v16 + 1) = _D0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  *&v14 = a2;
  v9 = 0;
  v8[1] = v15;
  v8[2] = v16;
  v8[0] = v14;
  v10 = 0;
  v11 = 0;
  re::AssetHandle::AssetHandle(v12, v20);
  v12[3] = 0;
  v13 = 0;
  re::ecs2::RemoteEffectsComponent::addOrUpdateStyle(a1, v8);
  re::AssetHandle::~AssetHandle(v12);
  re::ecs2::Component::enqueueMarkDirty(a1);
  re::AssetHandle::~AssetHandle(v20);
}

uint64_t RERemoteEffectsComponentResizeStyles(uint64_t a1, unint64_t a2)
{
  re::DynamicArray<re::ecs2::RemoteEffectsStyle>::resize(a1 + 40, a2);

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t RERemoteEffectsComponentStyleSetType(uint64_t this, uint64_t a2, int a3)
{
  if (a2)
  {
    v3 = *(this + 56);
    if (v3)
    {
      v4 = *(this + 72) + 12;
      v5 = v3 << 7;
      while (*(v4 - 12) != a2)
      {
        v4 += 128;
        v5 -= 128;
        if (!v5)
        {
          return re::ecs2::Component::enqueueMarkDirty(this);
        }
      }

      v7 = a3 != 2;
      if (a3 == 2)
      {
        v8 = 2;
      }

      else
      {
        v8 = 0;
      }

      if (a3 == 3)
      {
        v7 = 0;
        v8 = 3;
      }

      if (a3 == 1)
      {
        v7 = 0;
        v8 = 1;
      }

      *v4 = v8;
      *(v4 + 10) = v7;
    }
  }

  return re::ecs2::Component::enqueueMarkDirty(this);
}

uint64_t RERemoteEffectsComponentStyleSetColorTint(uint64_t this, uint64_t a2, char a3, __n128 a4)
{
  v4 = *(this + 72);
  for (i = *v4; i != a2; i = v6)
  {
    v6 = v4[16];
    v4 += 16;
  }

  v4[3] = a4.n128_u64[0];
  *(v4 + 8) = a4.n128_u32[2];
  *(v4 + 36) = a3;
  return re::ecs2::Component::enqueueMarkDirty(this);
}

float RERemoteEffectsComponentStyleGetColorTint(uint64_t a1, uint64_t a2, __n128 *a3, _BYTE *a4, double a5, __n128 a6)
{
  v6 = *(a1 + 72);
  for (i = *v6; i != a2; i = v8)
  {
    v8 = v6[16];
    v6 += 16;
  }

  v9 = v6[4];
  result = *&v9;
  a6.n128_u64[0] = v6[3];
  a6.n128_u32[2] = v9;
  *a3 = a6;
  *a4 = BYTE4(v9);
  return result;
}

uint64_t RERemoteEffectsComponentStyleSetIntensityMultiplier(uint64_t this, uint64_t a2, float a3)
{
  v3 = *(this + 72);
  for (i = *v3; i != a2; i = v5)
  {
    v5 = *(v3 + 16);
    v3 += 32;
  }

  v3[10] = a3;
  return re::ecs2::Component::enqueueMarkDirty(this);
}

float RERemoteEffectsComponentStyleGetIntensityMultiplier(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 72);
  for (i = *v2; i != a2; i = v4)
  {
    v4 = *(v2 + 16);
    v2 += 32;
  }

  return v2[10];
}

uint64_t RERemoteEffectsComponentStyleSetGlowAppearDurationOverride(uint64_t this, uint64_t a2, double a3)
{
  v3 = 0;
  if (this && a2)
  {
    v4 = *(this + 56);
    if (v4)
    {
      v3 = *(this + 72);
      v5 = v4 << 7;
      while (*v3 != a2)
      {
        v3 += 128;
        v5 -= 128;
        if (!v5)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      v3 = 0;
    }
  }

  if ((*(v3 + 56) & 1) == 0)
  {
    *(v3 + 56) = 1;
  }

  *(v3 + 64) = a3;
  return re::ecs2::Component::enqueueMarkDirty(this);
}

uint64_t RERemoteEffectsComponentStyleResetGlowAppearDurationOverride(uint64_t this, uint64_t a2)
{
  v2 = 0;
  if (this && a2)
  {
    v3 = *(this + 56);
    if (v3)
    {
      v2 = *(this + 72);
      v4 = v3 << 7;
      while (*v2 != a2)
      {
        v2 += 128;
        v4 -= 128;
        if (!v4)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      v2 = 0;
    }
  }

  if (*(v2 + 56) == 1)
  {
    *(v2 + 56) = 0;
  }

  return re::ecs2::Component::enqueueMarkDirty(this);
}

double RERemoteEffectsComponentStyleGetGlowAppearDurationOverride(re::ecs2::RemoteEffectsComponent *a1, uint64_t a2)
{
  v2 = *(a1 + 9);
  for (i = *v2; i != a2; i = v4)
  {
    v4 = v2[16];
    v2 += 16;
  }

  v5 = 0.2;
  if (*(v2 + 56) == 1)
  {
    LegacyStyle = re::ecs2::RemoteEffectsComponent::getLegacyStyle(a1);
    if (LegacyStyle)
    {
      if (*(LegacyStyle + 56) == 1)
      {
        return *(LegacyStyle + 64);
      }
    }
  }

  return v5;
}

uint64_t RERemoteEffectsComponentStyleSetGlowDisappearDurationOverride(uint64_t this, uint64_t a2, double a3)
{
  v3 = 0;
  if (this && a2)
  {
    v4 = *(this + 56);
    if (v4)
    {
      v3 = *(this + 72);
      v5 = v4 << 7;
      while (*v3 != a2)
      {
        v3 += 128;
        v5 -= 128;
        if (!v5)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      v3 = 0;
    }
  }

  if ((*(v3 + 72) & 1) == 0)
  {
    *(v3 + 72) = 1;
  }

  *(v3 + 80) = a3;
  return re::ecs2::Component::enqueueMarkDirty(this);
}

uint64_t RERemoteEffectsComponentStyleResetGlowDisappearDurationOverride(uint64_t this, uint64_t a2)
{
  v2 = 0;
  if (this && a2)
  {
    v3 = *(this + 56);
    if (v3)
    {
      v2 = *(this + 72);
      v4 = v3 << 7;
      while (*v2 != a2)
      {
        v2 += 128;
        v4 -= 128;
        if (!v4)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      v2 = 0;
    }
  }

  if (*(v2 + 72) == 1)
  {
    *(v2 + 72) = 0;
  }

  return re::ecs2::Component::enqueueMarkDirty(this);
}

double RERemoteEffectsComponentStyleGetGlowDisappearDurationOverride(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v3 = *(a1 + 56);
    if (v3)
    {
      v2 = *(a1 + 72);
      v4 = v3 << 7;
      while (*v2 != a2)
      {
        v2 += 128;
        v4 -= 128;
        if (!v4)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      v2 = 0;
    }
  }

  if (*(v2 + 72) == 1)
  {
    return *(v2 + 80);
  }

  else
  {
    return 0.1;
  }
}

uint64_t RERemoteEffectsComponentStyleSetAutoFadeEnabled(uint64_t this, uint64_t a2, char a3)
{
  v3 = *(this + 72);
  for (i = *v3; i != a2; i = v5)
  {
    v5 = v3[16];
    v3 += 16;
  }

  *(v3 + 18) = a3;
  return re::ecs2::Component::enqueueMarkDirty(this);
}

uint64_t RERemoteEffectsComponentStyleGetAutoFadeEnabled(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 72);
  for (i = *v2; i != a2; i = v4)
  {
    v4 = v2[16];
    v2 += 16;
  }

  return *(v2 + 18);
}

uint64_t RERemoteEffectsComponentStyleSetOpacityFunction(uint64_t this, uint64_t a2, int a3)
{
  v3 = *(this + 72);
  for (i = *v3; i != a2; i = v5)
  {
    v5 = v3[16];
    v3 += 16;
  }

  v6 = a3 == 1;
  if (a3 == 2)
  {
    v6 = 2;
  }

  *(v3 + 16) = v6;
  return re::ecs2::Component::enqueueMarkDirty(this);
}

uint64_t RERemoteEffectsComponentStyleGetOpacityFunction(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 72);
  for (i = *v2; i != a2; i = v4)
  {
    v4 = v2[16];
    v2 += 16;
  }

  v5 = *(v2 + 16);
  if (v5 == 2)
  {
    return 2;
  }

  else
  {
    return v5 == 1;
  }
}

uint64_t RERemoteEffectsComponentStyleSetAudioAssetRef(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  if (a1 && a2)
  {
    v5 = *(a1 + 56);
    if (v5)
    {
      v4 = *(a1 + 72);
      v6 = v5 << 7;
      while (*v4 != a2)
      {
        v4 += 16;
        v6 -= 128;
        if (!v6)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      v4 = 0;
    }
  }

  re::AssetAPIHelper::assetHandleCreate(a3, v8);
  re::AssetHandle::operator=((v4 + 11), v8);
  re::AssetHandle::~AssetHandle(v8);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t RERemoteEffectsComponentStyleGetAudioAssetRef(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 72);
  for (i = *v2; i != a2; i = v4)
  {
    v4 = v2[16];
    v2 += 16;
  }

  re::AssetHandle::AssetHandle(v7, (v2 + 11));
  v5 = v7[0];
  re::AssetHandle::~AssetHandle(v7);
  return v5;
}

uint64_t RERemoteEffectsComponentStyleSetFadeUsesActiveTime(uint64_t this, uint64_t a2, char a3)
{
  v3 = *(this + 72);
  for (i = *v3; i != a2; i = v5)
  {
    v5 = v3[16];
    v3 += 16;
  }

  *(v3 + 19) = a3;
  return re::ecs2::Component::enqueueMarkDirty(this);
}

uint64_t RERemoteEffectsComponentStyleGetFadeUsesActiveTime(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 72);
  for (i = *v2; i != a2; i = v4)
  {
    v4 = v2[16];
    v2 += 16;
  }

  return *(v2 + 19);
}

uint64_t RERemoteEffectsComponentStyleSetFadeUsesActiveTimeMultiplier(uint64_t this, uint64_t a2, float a3)
{
  v3 = *(this + 72);
  for (i = *v3; i != a2; i = v5)
  {
    v5 = *(v3 + 16);
    v3 += 32;
  }

  v3[11] = a3;
  return re::ecs2::Component::enqueueMarkDirty(this);
}

float RERemoteEffectsComponentStyleGetFadeUsesActiveTimeMultiplier(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 72);
  for (i = *v2; i != a2; i = v4)
  {
    v4 = *(v2 + 16);
    v2 += 32;
  }

  return v2[11];
}

uint64_t RERemoteEffectsComponentStyleSetActivationDelay(uint64_t this, uint64_t a2, double a3)
{
  v3 = *(this + 72);
  for (i = *v3; *&i != a2; i = v5)
  {
    v5 = v3[16];
    v3 += 16;
  }

  v3[6] = a3;
  return re::ecs2::Component::enqueueMarkDirty(this);
}

double RERemoteEffectsComponentStyleGetActivationDelay(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 72);
  for (i = *v2; i != a2; i = v4)
  {
    v4 = *(v2 + 16);
    v2 += 16;
  }

  return v2[6];
}

BOOL RERemoteEffectsComponentStyleHasValidGroupID(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 72);
  for (i = *v2; i != a2; i = v4)
  {
    v4 = v2[16];
    v2 += 16;
  }

  return v2[14] != 0;
}

uint64_t RERemoteEffectsComponentStyleGetGroupID(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 72);
  for (i = *v2; i != a2; i = v4)
  {
    v4 = v2[16];
    v2 += 16;
  }

  return v2[14];
}

uint64_t RERemoteEffectsComponentStyleSetGroupID(uint64_t this, uint64_t a2, uint64_t a3)
{
  v3 = *(this + 72);
  for (i = *v3; i != a2; i = v5)
  {
    v5 = v3[16];
    v3 += 16;
  }

  v3[14] = a3;
  return re::ecs2::Component::enqueueMarkDirty(this);
}

uint64_t RERemoteEffectsComponentStyleSetGroupBehavior(uint64_t this, uint64_t a2, int a3)
{
  v3 = *(this + 72);
  for (i = *v3; i != a2; i = v5)
  {
    v5 = v3[16];
    v3 += 16;
  }

  v6 = a3 == 1;
  if (a3 == 2)
  {
    v6 = 2;
  }

  *(v3 + 30) = v6;
  return re::ecs2::Component::enqueueMarkDirty(this);
}

uint64_t RERemoteEffectsComponentStyleGetGroupBehavior(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 72);
  for (i = *v2; i != a2; i = v4)
  {
    v4 = v2[16];
    v2 += 16;
  }

  v5 = *(v2 + 30);
  if (v5 == 2)
  {
    return 2;
  }

  else
  {
    return v5 == 1;
  }
}

uint64_t RERemoteEffectsComponentStyleSetIsHierarchical(uint64_t this, uint64_t a2, char a3)
{
  v3 = *(this + 72);
  for (i = *v3; i != a2; i = v5)
  {
    v5 = v3[16];
    v3 += 16;
  }

  *(v3 + 20) = a3;
  return re::ecs2::Component::enqueueMarkDirty(this);
}

uint64_t RERemoteEffectsComponentStyleGetIsPlanar(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 72);
  for (i = *v2; i != a2; i = v4)
  {
    v4 = v2[16];
    v2 += 16;
  }

  return *(v2 + 17);
}

uint64_t RERemoteEffectsComponentStyleSetIsPlanar(uint64_t this, uint64_t a2, char a3)
{
  v3 = *(this + 72);
  for (i = *v3; i != a2; i = v5)
  {
    v5 = v3[16];
    v3 += 16;
  }

  *(v3 + 17) = a3;
  return re::ecs2::Component::enqueueMarkDirty(this);
}

uint64_t RERemoteEffectsComponentStyleIsHierarchical(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 72);
  for (i = *v2; i != a2; i = v4)
  {
    v4 = v2[16];
    v2 += 16;
  }

  return *(v2 + 20);
}

uint64_t RERemoteEffectsComponentStyleGetAllowsDirectInput(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 72);
  for (i = *v2; i != a2; i = v4)
  {
    v4 = v2[16];
    v2 += 16;
  }

  return (*(v2 + 8) >> 1) & 1;
}

uint64_t RERemoteEffectsComponentStyleSetAllowsDirectInput(uint64_t this, uint64_t a2, int a3)
{
  v3 = *(this + 72);
  for (i = *v3; i != a2; i = v5)
  {
    v5 = v3[16];
    v3 += 16;
  }

  if (a3)
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  *(v3 + 2) = v3[1] & 0xFFFFFFFD | v6;
  return re::ecs2::Component::enqueueMarkDirty(this);
}

uint64_t RERemoteEffectsComponentStyleGetAllowsIndirectInput(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 72);
  for (i = *v2; i != a2; i = v4)
  {
    v4 = v2[16];
    v2 += 16;
  }

  return v2[1] & 1;
}

uint64_t RERemoteEffectsComponentStyleSetAllowsIndirectInput(uint64_t this, uint64_t a2, int a3)
{
  v3 = *(this + 72);
  for (i = *v3; i != a2; i = v5)
  {
    v5 = v3[16];
    v3 += 16;
  }

  *(v3 + 2) = v3[1] & 0xFFFFFFFE | a3;
  return re::ecs2::Component::enqueueMarkDirty(this);
}

uint64_t RERemoteEffectsComponentStyleSetEnableDirectPinchAnimation(uint64_t this, uint64_t a2, char a3)
{
  v3 = *(this + 72);
  for (i = *v3; i != a2; i = v5)
  {
    v5 = v3[16];
    v3 += 16;
  }

  *(v3 + 21) = a3;
  return re::ecs2::Component::enqueueMarkDirty(this);
}

uint64_t RERemoteEffectsComponentStyleGetEnableDirectPinchAnimation(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 72);
  for (i = *v2; i != a2; i = v4)
  {
    v4 = v2[16];
    v2 += 16;
  }

  return *(v2 + 21);
}

_BYTE *REEngineConfigurationCreateDefault(re *a1)
{
  re::make::shared::object<re::Shareable<re::EngineConfiguration>>(a1, &v6);
  re::ObjCObject::operator=((v6 + 40), MEMORY[0x1E69E96A0]);
  v1 = _os_feature_enabled_impl();
  v2 = v6;
  if (v1)
  {
    v3 = -73857;
  }

  else
  {
    v3 = -77953;
  }

  *(v6 + 28) = v3;
  *(v2 + 32) = v3;
  *v5 = 0;
  readGraphicsUserDefaults(&v5[3], &v5[2], &v5[1], v5);
  result = v6;
  if (v5[2])
  {
    *(v6 + 181) = 0;
  }

  if (v5[3])
  {
    result[180] = 0;
  }

  if (v5[1])
  {
    result[183] = 0;
  }

  if (v5[0])
  {
    result[182] = 0;
  }

  result[198] = 0;
  result[201] = 1;
  result[267] = 1;
  result[273] = 1;
  return result;
}

void readGraphicsUserDefaults(uint8_t *a1, uint8_t *a2, uint8_t *a3, uint8_t *a4)
{
  re::Defaults::BOOLValue("disableTextureColorManagement", a2, v20);
  if (v20[0])
  {
    v9 = v20[1];
  }

  else
  {
    v9 = 0;
  }

  *a1 = v9;
  re::Defaults::BOOLValue("disableSceneColorManagement", v8, v20);
  if (v20[0])
  {
    v11 = v20[1];
  }

  else
  {
    v11 = 0;
  }

  *a2 = v11;
  re::Defaults::BOOLValue("disableColorPipeline", v10, v20);
  if (v20[0])
  {
    v13 = v20[1];
  }

  else
  {
    v13 = 0;
  }

  *a3 = v13;
  re::Defaults::BOOLValue("disableTargetDisplayColorConversion", v12, v20);
  if (v20[0])
  {
    v15 = v20[1];
  }

  else
  {
    v15 = 0;
  }

  *a4 = v15;
  if (*a1 == 1)
  {
    v16 = *re::graphicsLogObjects(v14);
    v14 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      *v20 = 0;
      _os_log_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_DEFAULT, "NSUserDefault com.apple.re.disableTextureColorManagement is set to true.", v20, 2u);
    }
  }

  if (*a2 == 1)
  {
    v17 = *re::graphicsLogObjects(v14);
    v14 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      *v20 = 0;
      _os_log_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_DEFAULT, "NSUserDefault com.apple.re.disableSceneColorManagement is set to true.", v20, 2u);
    }
  }

  if (*a3 == 1)
  {
    v18 = *re::graphicsLogObjects(v14);
    v14 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      *v20 = 0;
      _os_log_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_DEFAULT, "NSUserDefault com.apple.re.disableColorPipeline is set to true.", v20, 2u);
    }
  }

  if (*a4 == 1)
  {
    v19 = *re::graphicsLogObjects(v14);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_DEFAULT, "NSUserDefault com.apple.re.disableTargetDisplayColorConversion is set to true.", v20, 2u);
    }
  }
}

_BYTE *REEngineConfigurationCreateFromEngine(uint64_t a1)
{
  Default = REEngineConfigurationCreateDefault(a1);
  v3 = *(a1 + 432);
  *(Default + 3) = *(a1 + 424);
  *(Default + 8) = v3;
  re::ObjCObject::operator=(Default + 5, (a1 + 440));
  re::DynamicString::operator=((Default + 48), (a1 + 448));
  *(Default + 10) = *(a1 + 480);
  re::ObjCObject::operator=(Default + 11, (a1 + 488));
  re::FunctionBase<24ul,void ()(void)>::operator=<24ul>((Default + 96), a1 + 496);
  *(Default + 136) = *(a1 + 536);
  v4 = *(a1 + 584);
  v5 = *(a1 + 600);
  v6 = *(a1 + 568);
  *(Default + 152) = *(a1 + 552);
  *(Default + 200) = v5;
  *(Default + 184) = v4;
  *(Default + 168) = v6;
  *(Default + 216) = *(a1 + 616);
  re::ObjCObject::operator=(Default + 29, (a1 + 632));
  v7 = *(a1 + 640);
  v8 = *(a1 + 656);
  *(Default + 270) = *(a1 + 670);
  *(Default + 15) = v7;
  *(Default + 16) = v8;
  return Default;
}

re::DynamicString *REEngineConfigurationSetInstanceID(re::DynamicString *result, char *__s)
{
  v2 = result;
  if (__s)
  {
    v4[0] = __s;
    v4[1] = strlen(__s);
    return re::DynamicString::operator=((v2 + 48), v4);
  }

  else
  {
    if (*(result + 56))
    {
      *(result + 7) = 1;
      v3 = *(result + 8);
    }

    else
    {
      *(result + 56) = 0;
      v3 = result + 57;
    }

    *v3 = 0;
  }

  return result;
}

CFStringRef REEngineConfigurationCopyInstanceID(uint64_t a1)
{
  if (*(a1 + 56))
  {
    v1 = *(a1 + 64);
  }

  else
  {
    v1 = (a1 + 57);
  }

  return CFStringCreateWithCString(0, v1, 0x8000100u);
}

id REEngineConfigurationGetEngineQueue(uint64_t a1)
{
  v1 = *(a1 + 40);

  return v1;
}

id REEngineConfigurationGetDevice(uint64_t a1)
{
  v1 = *(a1 + 88);

  return v1;
}

uint64_t (***REEngineConfigurationSetRenderThreadInitCallback(void *a1, void *aBlock))(void)
{
  v3 = _Block_copy(aBlock);
  result = re::FunctionBase<24ul,void ()(void)>::destroyCallable((a1 + 12));
  a1[12] = &unk_1F5D2E0F8;
  a1[13] = v3;
  a1[16] = a1 + 12;
  return result;
}

int8x8_t REEngineConfigurationSetRenderFlags(uint64_t a1, unsigned int a2)
{
  *v7 = 0;
  readGraphicsUserDefaults(&v7[3], &v7[2], &v7[1], v7);
  *(a1 + 194) = (a2 & 2) != 0;
  *(a1 + 195) = (a2 & 8) != 0;
  *(a1 + 197) = (a2 & 0x10) != 0;
  *(a1 + 177) = (a2 & 0x40) != 0;
  v4 = vdupq_n_s32(a2);
  v5.i16[0] = v7[3];
  v5.i16[1] = v7[2];
  v5.i16[2] = v7[0];
  v5.i16[3] = v7[1];
  *(a1 + 180) = vuzp1_s8(vbic_s8(0x1000100010001, vorr_s8(vmovn_s32(vtstq_s32(v4, xmmword_1E311EB40)), v5)), *v4.i8).u32[0];
  *(a1 + 196) = (a2 & 0x200) != 0;
  *(a1 + 202) = (a2 & 0x8000) != 0;
  *v4.i8 = vand_s8(vmovn_s32(vshlq_u32(v4, xmmword_1E311EB50)), 0x1000100010001);
  *(a1 + 203) = v4.i8[4];
  result = vuzp1_s8(*v4.i8, *v4.i8);
  *(a1 + 198) = result.i32[0];
  *(a1 + 205) = (a2 & 0x40000) != 0;
  *(a1 + 206) = (a2 & 0x80000) != 0;
  return result;
}

uint64_t REEngineConfigurationGetRenderFlags(_BYTE *a1)
{
  *v4 = 0;
  readGraphicsUserDefaults(&v4[3], &v4[2], &v4[1], v4);
  if (a1[194])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  if (a1[195])
  {
    v2 |= 8u;
  }

  if (a1[197])
  {
    v2 |= 0x10u;
  }

  if (a1[177])
  {
    v2 |= 0x40u;
  }

  if (a1[180] != 1 || v4[3])
  {
    v2 |= 0x100u;
  }

  if (a1[181] != 1 || v4[2])
  {
    v2 |= 0x400u;
  }

  if (a1[182] != 1 || v4[0])
  {
    v2 |= 0x1000u;
  }

  if (a1[183] != 1 || v4[1])
  {
    v2 |= 0x800u;
  }

  if (a1[196])
  {
    v2 |= 0x200u;
  }

  if (a1[198])
  {
    v2 |= 0x2000u;
  }

  if (a1[201])
  {
    v2 |= 0x4000u;
  }

  if (a1[202])
  {
    v2 |= 0x8000u;
  }

  if (a1[199])
  {
    v2 |= 0x10000u;
  }

  if (a1[203])
  {
    v2 |= 0x20000u;
  }

  if (a1[205])
  {
    v2 |= 0x40000u;
  }

  if (a1[206])
  {
    return v2 | 0x80000;
  }

  else
  {
    return v2;
  }
}

_BYTE *REEngineConfigurationClone(uint64_t a1)
{
  Default = REEngineConfigurationCreateDefault(a1);
  v3 = *(a1 + 32);
  *(Default + 3) = *(a1 + 24);
  *(Default + 8) = v3;
  re::ObjCObject::operator=(Default + 5, (a1 + 40));
  re::DynamicString::operator=((Default + 48), (a1 + 48));
  *(Default + 10) = *(a1 + 80);
  re::ObjCObject::operator=(Default + 11, (a1 + 88));
  re::FunctionBase<24ul,void ()(void)>::operator=<24ul>((Default + 96), a1 + 96);
  *(Default + 136) = *(a1 + 136);
  v4 = *(a1 + 168);
  v5 = *(a1 + 184);
  v6 = *(a1 + 200);
  *(Default + 152) = *(a1 + 152);
  *(Default + 200) = v6;
  *(Default + 184) = v5;
  *(Default + 168) = v4;
  *(Default + 216) = *(a1 + 216);
  re::ObjCObject::operator=(Default + 29, (a1 + 232));
  v7 = *(a1 + 240);
  v8 = *(a1 + 256);
  *(Default + 270) = *(a1 + 270);
  *(Default + 15) = v7;
  *(Default + 16) = v8;
  return Default;
}

uint64_t re::make::shared::object<re::Shareable<re::EngineConfiguration>>@<X0>(re *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = re::globalAllocators(a1);
  v4 = (*(*v3[2] + 32))(v3[2], 280, 8);
  result = re::Shareable<re::EngineConfiguration>::Shareable<>(v4);
  *a2 = result;
  return result;
}

uint64_t re::Shareable<re::EngineConfiguration>::Shareable<>(uint64_t a1)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *a1 = &unk_1F5D2E0B0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(v2 + 24) = 0u;
  v2 = (v2 + 24);
  v2[15] = 0u;
  re::EngineConfiguration::EngineConfiguration(v2);
  return a1;
}

uint64_t re::Shareable<re::EngineConfiguration>::~Shareable(uint64_t a1)
{
  *a1 = &unk_1F5D2E0B0;

  re::FunctionBase<24ul,void ()(void)>::destroyCallable(a1 + 96);
  re::DynamicString::deinit((a1 + 48));

  *a1 = &unk_1F5CCF868;
  objc_destructInstance((a1 + 8));
  return a1;
}

void re::Shareable<re::EngineConfiguration>::~Shareable(uint64_t a1)
{
  *a1 = &unk_1F5D2E0B0;

  re::FunctionBase<24ul,void ()(void)>::destroyCallable(a1 + 96);
  re::DynamicString::deinit((a1 + 48));

  *a1 = &unk_1F5CCF868;
  objc_destructInstance((a1 + 8));

  JUMPOUT(0x1E6906520);
}

void re::internal::Callable<REEngineConfigurationSetRenderThreadInitCallback::$_0,void ()(void)>::~Callable(uint64_t a1)
{

  JUMPOUT(0x1E6906520);
}

void *re::internal::Callable<REEngineConfigurationSetRenderThreadInitCallback::$_0,void ()(void)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D2E0F8;
  a2[1] = _Block_copy(*(a1 + 8));
  return a2;
}

void *re::internal::Callable<REEngineConfigurationSetRenderThreadInitCallback::$_0,void ()(void)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  *a2 = &unk_1F5D2E0F8;
  a2[1] = v2;
  return a2;
}

void *REDepthMitigationComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::DepthMitigationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
}

void *REDockingRegionComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::CustomDockingRegionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
}

double REDockingRegionComponentGetBounds(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 32);
  }

  else
  {
    v2.i64[0] = 0x7F0000007FLL;
    v2.i64[1] = 0x7F0000007FLL;
    *&v1 = vnegq_f32(v2).u64[0];
  }

  return *&v1;
}

__n128 *REDockingRegionComponentSetBounds(__n128 *result, __n128 a2, __n128 a3)
{
  if (result)
  {
    result[2] = a2;
    result[3] = a3;
  }

  return result;
}

uint64_t REDockingRegionComponentGetDockTransitionStyle(uint64_t result)
{
  if (result)
  {
    return *(result + 64);
  }

  return result;
}

uint64_t REDockingRegionComponentSetDockTransitionStyle(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 64) = a2;
  }

  return result;
}

void REDockingRegionComponentSetDockAnimations(void **this, objc_object *cf, objc_object *a3)
{
  if (this)
  {
    v5 = cf;
    if (cf)
    {
      CFRetain(cf);
      cf = v5;
    }

    if (a3)
    {
      CFRetain(a3);
      cf = v5;
    }

    re::ecs2::CustomDockingRegionComponent::setDockAnimation(this, cf, a3);
  }
}

id REDockingRegionComponentGetDockAnimations(id result, void *a2, void *a3)
{
  if (result)
  {
    v6 = 0;
    v7 = 0;
    result = re::ecs2::CustomDockingRegionComponent::getDockAnimation(result, &v7, &v6);
    v5 = v6;
    *a2 = v7;
    *a3 = v5;
  }

  return result;
}

__n128 *REDockingRegionComponentSetPosition(__n128 *result, __n128 a2)
{
  if (result)
  {
    result[5] = a2;
  }

  return result;
}

double REDockingRegionComponentGetPosition(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 80);
  }

  else
  {
    *&v1 = 0;
  }

  return *&v1;
}

double RELateLatchingManagerProcessLateLatchAnchorPoseForAnchorId(uint64_t a1, uint64_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, float32x4_t a6)
{
  v7[0] = a3;
  v7[1] = a4;
  v7[2] = a5;
  v7[3] = a6;
  return re::LateLatchingManager::processLateLatchAnchorPose(a1, a2, v7);
}

uint64_t REAnimationLibraryAssetCreateAssetWithDefinitions(re *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = re::globalAllocators(a1);
  v11 = (*(*v10[2] + 32))(v10[2], 224, 8);
  *(v11 + 176) = 0u;
  *(v11 + 192) = 0u;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0u;
  *(v11 + 48) = 0u;
  *(v11 + 64) = 0u;
  *(v11 + 80) = 0u;
  *(v11 + 96) = 0u;
  *(v11 + 112) = 0u;
  *(v11 + 128) = 0u;
  *(v11 + 144) = 0u;
  *(v11 + 160) = 0u;
  *(v11 + 196) = 0x7FFFFFFF;
  *(v11 + 208) = 0;
  *(v11 + 216) = &str_67;
  re::AnimationLibraryAsset::init(v11, 0);
  if (a4)
  {
    v13 = (a5 + 8);
    do
    {
      *v52 = 0;
      *&v52[8] = &str_67;
      memset(&v52[16], 0, 24);
      v14 = *(v13 - 1);
      *&v56.var0 = 0;
      v56.var1 = &str_67;
      v16 = v56;
      *&v56.var0 = 0;
      v56.var1 = &str_67;
      v17 = v52[0];
      v18 = *&v52[8];
      *v52 = v16;
      if (v17)
      {
        if (*&v56.var0)
        {
          if (*&v56.var0)
          {
          }
        }
      }

      re::AssetAPIHelper::assetHandleCreate(*v13, &v56);
      v20 = *&v52[16];
      *&v52[16] = v56;
      v56 = v20;
      v21 = *&v52[32];
      *&v52[32] = v57;
      v57 = v21;
      re::AssetHandle::~AssetHandle(&v56);
      re::DynamicArray<re::NamedAnimationLibraryEntry>::add((v11 + 40), v52);
      re::AssetHandle::~AssetHandle(&v52[16]);
      if (v52[0])
      {
        if (v52[0])
        {
        }
      }

      v13 += 2;
      --a4;
    }

    while (a4);
  }

  if (a2)
  {
    v22 = a3 + 24;
    do
    {
      v52[0] = 0;
      *&v52[8] = 0;
      *&v52[16] = &str_67;
      *&v52[32] = &str_67;
      *&v53.var0 = 0;
      v53.var1 = &str_67;
      *&v54.var0 = 0;
      v54.var1 = &str_67;
      memset(v55, 0, sizeof(v55));
      v23 = *(v22 + 8);
      *&v56.var0 = 0;
      v56.var1 = &str_67;
      v25 = v56;
      *&v56.var0 = 0;
      v56.var1 = &str_67;
      var0 = v54.var0;
      var1 = v54.var1;
      v54 = v25;
      if (var0)
      {
        if (*&v56.var0)
        {
          if (*&v56.var0)
          {
          }
        }
      }

      v28 = *v22;
      *&v56.var0 = 0;
      v56.var1 = &str_67;
      v30 = v56;
      *&v56.var0 = 0;
      v56.var1 = &str_67;
      v31 = v53.var0;
      v32 = v53.var1;
      v53 = v30;
      if (v31)
      {
        if (*&v56.var0)
        {
          if (*&v56.var0)
          {
          }
        }
      }

      v33 = *(v22 - 16);
      *&v56.var0 = 0;
      v56.var1 = &str_67;
      v35 = v56;
      *&v56.var0 = 0;
      v56.var1 = &str_67;
      v36 = v52[8];
      v37 = *&v52[16];
      *&v52[8] = v35;
      if (v36)
      {
        if (*&v56.var0)
        {
          if (*&v56.var0)
          {
          }
        }
      }

      v38 = *(v22 - 8);
      *&v56.var0 = 0;
      v56.var1 = &str_67;
      v40 = v56;
      *&v56.var0 = 0;
      v56.var1 = &str_67;
      v41 = v52[24];
      v42 = *&v52[32];
      *&v52[24] = v40;
      if (v41)
      {
        if (*&v56.var0)
        {
          if (*&v56.var0)
          {
          }
        }
      }

      v52[0] = *(v22 - 24);
      re::AssetAPIHelper::assetHandleCreate(*(v22 + 16), &v56);
      v44 = v55[0];
      v55[0] = v56;
      v56 = v44;
      v45 = *&v55[1];
      *&v55[1] = v57;
      v57 = v45;
      re::AssetHandle::~AssetHandle(&v56);
      v46 = *(v11 + 16);
      if (v46 >= *(v11 + 8))
      {
        re::DynamicArray<re::SkeletalAnimationLibraryEntry>::growCapacity(v11, v46 + 1);
        v46 = *(v11 + 16);
      }

      v47 = (*(v11 + 32) + 120 * v46);
      *v47 = v52[0];
      re::StringID::StringID((v47 + 8), &v52[8]);
      re::StringID::StringID((v47 + 24), &v52[24]);
      re::StringID::StringID((v47 + 40), &v53);
      re::StringID::StringID((v47 + 56), &v54);
      re::AssetHandle::AssetHandle((v47 + 72), v55);
      re::AssetHandle::AssetHandle((v47 + 96), (&v55[1] + 8));
      ++*(v11 + 16);
      ++*(v11 + 24);
      re::AssetHandle::~AssetHandle((&v55[1] + 8));
      re::AssetHandle::~AssetHandle(v55);
      if (*&v54.var0)
      {
        if (*&v54.var0)
        {
        }
      }

      *&v54.var0 = 0;
      v54.var1 = &str_67;
      if (*&v53.var0)
      {
        if (*&v53.var0)
        {
        }
      }

      *&v53.var0 = 0;
      v53.var1 = &str_67;
      if (v52[24])
      {
        if (v52[24])
        {
        }
      }

      *&v52[24] = 0;
      *&v52[32] = &str_67;
      if (v52[8])
      {
        if (v52[8])
        {
        }
      }

      v22 += 48;
      --a2;
    }

    while (a2);
  }

  v48 = re::AnimationLibraryAsset::assetType(v12);
  (*(*a1 + 424))(v52, a1, v11, v48, 0, 0, 0);
  v49 = *v52;
  if (*v52)
  {
    v50 = (*v52 + 8);
  }

  re::AssetHandle::~AssetHandle(v52);
  return v49;
}

uint64_t REAnimationLibraryAssetGetEntryByKey(uint64_t a1, char *a2)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v16);
  v3 = re::AssetHandle::blockUntilLoaded<re::AnimationLibraryAsset>(v16);
  v4 = v3;
  if (a2)
  {
    v5 = *a2;
    if (*a2)
    {
      v6 = a2[1];
      if (v6)
      {
        v7 = (a2 + 2);
        do
        {
          v5 = 31 * v5 + v6;
          v8 = *v7++;
          v6 = v8;
        }

        while (v8);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v15[0] = 2 * v5;
  v15[1] = a2;
  v9 = 0xBF58476D1CE4E5B9 * (v5 & 0x7FFFFFFFFFFFFFFFLL ^ ((2 * v5) >> 31));
  v10 = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v3 + 160, v15, (0x94D049BB133111EBLL * (v9 ^ (v9 >> 27))) ^ ((0x94D049BB133111EBLL * (v9 ^ (v9 >> 27))) >> 31), v17);
  if (v18 == 0x7FFFFFFF)
  {
    if (v15[0])
    {
      if (v15[0])
      {
      }
    }

LABEL_17:
    v13 = 0;
    goto LABEL_18;
  }

  v11 = v4[22] + 32 * v18;
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  v12 = *(v11 + 24);
  if (v12 >= v4[17])
  {
    goto LABEL_17;
  }

  v13 = *(v4[19] + 24 * v12);
LABEL_18:
  re::AssetHandle::~AssetHandle(v16);
  return v13;
}

void *REAnimationLibraryAssetGetEntryIndexFromKey(uint64_t a1, char *a2)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v14);
  v3 = re::AssetHandle::blockUntilLoaded<re::AnimationLibraryAsset>(v14);
  v4 = v3;
  if (a2)
  {
    v5 = *a2;
    if (*a2)
    {
      v6 = a2[1];
      if (v6)
      {
        v7 = (a2 + 2);
        do
        {
          v5 = 31 * v5 + v6;
          v8 = *v7++;
          v6 = v8;
        }

        while (v8);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v13[0] = 2 * v5;
  v13[1] = a2;
  v9 = 0xBF58476D1CE4E5B9 * (v5 & 0x7FFFFFFFFFFFFFFFLL ^ ((2 * v5) >> 31));
  v10 = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v3 + 160, v13, (0x94D049BB133111EBLL * (v9 ^ (v9 >> 27))) ^ ((0x94D049BB133111EBLL * (v9 ^ (v9 >> 27))) >> 31), v15);
  if (v16 == 0x7FFFFFFF)
  {
    if (v13[0])
    {
      if (v13[0])
      {
      }
    }

LABEL_16:
    v11 = 0;
    goto LABEL_17;
  }

  v11 = (*(v4 + 176) + 32 * v16 + 24);
  if (v13[0])
  {
    if (v13[0])
    {
    }
  }

  if (*v11 >= *(v4 + 136))
  {
    goto LABEL_16;
  }

LABEL_17:
  re::AssetHandle::~AssetHandle(v14);
  return v11;
}

uint64_t REAnimationLibraryAssetGetDefaultEntry(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v9);
  v1 = re::AssetHandle::blockUntilLoaded<re::AnimationLibraryAsset>(v9);
  v2 = v1;
  v3 = *(v1 + 208);
  if (v3 > 1 || (v4 = *(v1 + 216)) == 0 || *v4)
  {
    v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v3 >> 31) ^ (v3 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v3 >> 31) ^ (v3 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v1 + 160, (v1 + 208), v5 ^ (v5 >> 31), v10);
    if (v11 != 0x7FFFFFFF)
    {
      v6 = *(v2[22] + 32 * v11 + 24);
      if (v6 < v2[17])
      {
        goto LABEL_6;
      }

LABEL_8:
      v7 = 0;
      goto LABEL_9;
    }
  }

  v6 = 0;
  if (!v2[17])
  {
    goto LABEL_8;
  }

LABEL_6:
  v7 = *(v2[19] + 24 * v6);
LABEL_9:
  re::AssetHandle::~AssetHandle(v9);
  return v7;
}

_BYTE *REAnimationLibraryAssetGetDefaultEntryKey(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v4);
  v1 = re::AssetHandle::blockUntilLoaded<re::AnimationLibraryAsset>(v4);
  v2 = *(v1 + 216);
  if (*(v1 + 208) <= 1uLL && v2 && !*v2)
  {
    v2 = 0;
  }

  re::AssetHandle::~AssetHandle(v4);
  return v2;
}

uint64_t REAnimationLibraryAssetGetEntry(uint64_t a1, unint64_t a2)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v7);
  v3 = re::AssetHandle::blockUntilLoaded<re::AnimationLibraryAsset>(v7);
  if (*(v3 + 136) <= a2)
  {
    re::internal::assertLog(4, v4, "assertion failure: '%s' (%s:line %i) ", "index < asset->animationLibraryEntries.size()", "REAnimationLibraryAssetGetEntry", 113);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    v5 = *(*(v3 + 152) + 24 * a2);
    re::AssetHandle::~AssetHandle(v7);
    return v5;
  }

  return result;
}

uint64_t REAnimationLibraryAssetGetEntryCount(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v3);
  v1 = *(re::AssetHandle::blockUntilLoaded<re::AnimationLibraryAsset>(v3) + 136);
  re::AssetHandle::~AssetHandle(v3);
  return v1;
}

uint64_t REAnimationLibraryAssetGetKeyCount(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v3);
  v1 = *(re::AssetHandle::blockUntilLoaded<re::AnimationLibraryAsset>(v3) + 188);
  re::AssetHandle::~AssetHandle(v3);
  return v1;
}

void REAnimationLibraryAssetGetKeys(uint64_t a1, uint64_t a2, unint64_t a3)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v12);
  v5 = re::AssetHandle::blockUntilLoaded<re::AnimationLibraryAsset>(v12);
  v6 = *(v5 + 192);
  if (!v6)
  {
    LODWORD(v7) = 0;
    if (!a3)
    {
      goto LABEL_20;
    }

    goto LABEL_9;
  }

  v7 = 0;
  v8 = *(v5 + 176);
  while (1)
  {
    v9 = *v8;
    v8 += 8;
    if (v9 < 0)
    {
      break;
    }

    if (v6 == ++v7)
    {
      LODWORD(v7) = *(v5 + 192);
      break;
    }
  }

  if (a3)
  {
LABEL_9:
    if (v7 != v6)
    {
      v10 = 0;
      do
      {
        *(a2 + 8 * v10++) = *(*(v5 + 176) + 32 * v7 + 16);
        if (v6 <= v7 + 1)
        {
          v11 = v7 + 1;
        }

        else
        {
          v11 = v6;
        }

        while (v11 - 1 != v7)
        {
          LODWORD(v7) = v7 + 1;
          if ((*(*(v5 + 176) + 32 * v7) & 0x80000000) != 0)
          {
            goto LABEL_18;
          }
        }

        LODWORD(v7) = v11;
LABEL_18:
        ;
      }

      while (v10 < a3 && v7 != v6);
    }
  }

LABEL_20:
  re::AssetHandle::~AssetHandle(v12);
}

void *REPhysicsConstraintComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::PhysicsConstraintsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
}

uint64_t REPhysicsConstraintComponentCreate(uint64_t a1)
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  v2 = REEntityGetOrAddComponentByClass(a1, re::ecs2::ComponentImpl<re::ecs2::PhysicsConstraintsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  v3 = v2;
  if (v2)
  {
    v4 = (v2 + 8);
  }

  return v3;
}

uint64_t REPhysicsConstraintComponentGetExistingComponent(uint64_t a1)
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  v2 = re::ecs2::ComponentImpl<re::ecs2::PhysicsConstraintsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;

  return re::ecs2::EntityComponentCollection::get((a1 + 48), v2);
}

uint64_t REPhysicsConstraintComponentNameIsUnique(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = re::ecs2::ComponentImpl<re::ecs2::PhysicsConstraintsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2);
  if (v2)
  {
    if (*v2)
    {
      v40 = 0;
      v41 = &str_67;
      v6 = *(a1 + 64);
      if (v6)
      {
        LOBYTE(v2) = 0;
        v7 = (*(a1 + 80) + 288);
        v8 = 1;
        do
        {
          re::StringID::StringID(&v20, (v7 - 280));
          var1 = v7[-17].var1;
          re::ecs2::EntityHandle::EntityHandle(v23, &v7[-16]);
          v9 = v7[-13];
          v24 = v7[-14];
          v25 = v9;
          re::StringID::StringID(&v26, v7 - 12);
          re::ecs2::EntityHandle::EntityHandle(v28, &v7[-11]);
          v29 = v7[-9];
          v10 = v7[-8];
          v11 = v7[-7];
          v12 = v7[-5];
          v32 = v7[-6];
          v33 = v12;
          v30 = v10;
          v31 = v11;
          v13 = v7[-4];
          v14 = v7[-3];
          v15 = v7[-1];
          v36 = v7[-2];
          v37 = v15;
          v34 = v13;
          v35 = v14;
          v16 = re::StringID::StringID(&v38, v7);
          if ((v20 ^ v40) > 1)
          {
            v17 = 0;
          }

          else
          {
            v16 = v41;
            if (v41 == __s2)
            {
              v17 = 1;
            }

            else
            {
              v16 = strcmp(v41, __s2);
              v17 = v16 == 0;
            }
          }

          if (v38)
          {
            if (v38)
            {
            }
          }

          v38 = 0;
          v39 = &str_67;
          re::ecs2::EntityHandle::reset(v28);
          objc_destroyWeak(v28);
          v28[0] = 0;
          if (v26)
          {
            if (v26)
            {
            }
          }

          v26 = 0;
          v27 = &str_67;
          re::ecs2::EntityHandle::reset(v23);
          objc_destroyWeak(v23);
          v23[0] = 0;
          if (v20)
          {
            if (v20)
            {
            }
          }

          if (v17)
          {
            break;
          }

          LOBYTE(v2) = v8 >= v6;
          v7 += 19;
          ++v8;
        }

        while (v8 - v6 != 1);
      }

      else
      {
        LOBYTE(v2) = 1;
      }

      if (v40)
      {
        if (v40)
        {
        }
      }
    }

    else
    {
      LOBYTE(v2) = 0;
    }
  }

  return v2 & 1;
}

uint64_t REPhysicsConstraintComponentGetUniqueConstraintNameSuffix(uint64_t a1, const char *a2)
{
  if (!*(re::ecs2::ComponentImpl<re::ecs2::PhysicsConstraintsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2) + 64))
  {
    return 1;
  }

  re::ecs2::ComponentImpl<re::ecs2::PhysicsConstraintsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, v4);
  re::StringID::invalid(&v27);
  v5 = *(a1 + 80);
  v6 = *(a1 + 64);
  v7 = strlen(a2);
  v25 = 0;
  v26 = 0;
  v24 = 0;
  re::DynamicString::setCapacity(&v23, v7 + 4);
  LODWORD(v7) = 0;
  v8 = (v5 + 16);
  while (1)
  {
    v7 = (v7 + 1);
    v9 = re::DynamicString::assignf(&v23, "%s%d", a2, v7);
    v10 = (v24 & 1) != 0 ? v25 : &v24 + 1;
    if (v10)
    {
      v11 = *v10;
      if (*v10)
      {
        v12 = (v24 & 1) != 0 ? v25 + 1 : &v24 + 2;
        v13 = *v12;
        if (*v12)
        {
          v14 = (v12 + 1);
          do
          {
            v11 = 31 * v11 + v13;
            v15 = *v14++;
            v13 = v15;
          }

          while (v15);
        }
      }
    }

    else
    {
      v11 = 0;
    }

    v16 = v27;
    v27 = 2 * v11;
    v28 = v10;
    if (v16)
    {
    }

    if (!v6)
    {
      break;
    }

    v17 = v27;
    v18 = v28;
    v19 = 304 * v6;
    v20 = v8;
    while ((*(v20 - 1) ^ v17) > 1 || v18 != *v20 && strcmp(v18, *v20))
    {
      v20 += 38;
      v19 -= 304;
      if (!v19)
      {
        goto LABEL_24;
      }
    }
  }

LABEL_24:
  v21 = v23;
  if (v23 && (v24 & 1) != 0)
  {
    v21 = (*(*v23 + 40))();
  }

  if (v27)
  {
    if (v27)
    {
    }
  }

  return v7;
}

void REPhysicsConstraintComponentAddConstraint(re::ecs2::PhysicsConstraintsComponent *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, int a7, __n128 a8, __n128 a9, __n128 a10, __n128 a11)
{
  if (REPhysicsConstraintComponentNameIsUnique(a1, a3))
  {
    if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
    {
      dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
    }

    v18 = re::ecs2::EntityComponentCollection::get((a4 + 48), re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v20 = re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(v18, v19);
    re::ecs2::EntityHandle::EntityHandle(v52, *(v20 + 16));
    if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
    {
      dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
    }

    v21 = re::ecs2::EntityComponentCollection::get((a5 + 48), re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v23 = re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(v21, v22);
    re::ecs2::EntityHandle::EntityHandle(v51, *(v23 + 16));
    v25 = re::ecs2::ComponentImpl<re::ecs2::PhysicsConstraintsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, v24);
    if (a3)
    {
      v26 = a3;
    }

    else
    {
      v26 = "";
    }

    v40 = 0;
    v41 = &str_67;
    re::ecs2::EntityHandle::EntityHandle(v39, v52);
    v38[0] = a8;
    v38[1] = a9;
    re::ecs2::EntityHandle::EntityHandle(location, v51);
    v36[0] = a10;
    v36[1] = a11;
    re::ecs2::PhysicsConstraint::PhysicsConstraint(buf, a2, &v40, v39, v38, location, v36, a6);
    re::ecs2::EntityHandle::reset(location);
    objc_destroyWeak(location);
    location[0] = 0;
    re::ecs2::EntityHandle::reset(v39);
    objc_destroyWeak(v39);
    v39[0] = 0;
    if (v40)
    {
      if (v40)
      {
      }
    }

    re::ecs2::PhysicsConstraintsComponent::addOrReplacePhysicsConstraint(a1, buf, a7);
    v28 = re::ecs2::Component::enqueueMarkDirty(a1);
    if (v49)
    {
      if (v49)
      {
      }
    }

    v49 = 0;
    v50 = &str_67;
    re::ecs2::EntityHandle::reset(v48);
    objc_destroyWeak(v48);
    v48[0] = 0;
    if (v46)
    {
      if (v46)
      {
      }
    }

    v46 = 0;
    v47 = &str_67;
    re::ecs2::EntityHandle::reset(v45);
    objc_destroyWeak(v45);
    v45[0] = 0;
    if (v43)
    {
      if (v43)
      {
      }
    }

    re::ecs2::EntityHandle::reset(v51);
    objc_destroyWeak(v51);
    re::ecs2::EntityHandle::reset(v52);
    objc_destroyWeak(v52);
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v31 = CoreRELog::log;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v31, OS_LOG_TYPE_ERROR, "Constraint name must be unique", buf, 2u);
    }
  }
}

uint64_t re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1;
    v3 = &re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if ((*(*a1 + 40))(a1) == re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      return v2;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) component must not be null.", "component", "safeCast", 97);
    _os_crash();
    __break(1u);
  }

  (*(*v2 + 40))(v2);
  v5 = *(v3[45] + 4);
  v6 = (*(*v2 + 40))(v2);
  re::internal::assertLog(6, v7, "assertion failure: '%s' (%s:line %i) Component is wrong type. Expected type: %s, but got: %s", "&reinterpret_cast<Derived *>(component)->componentType() == &Derived::classComponentType()", "safeCast", 101, v5, *(v6 + 32));
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t REPhysicsConstraintComponentSyncConstraintArrays(uint64_t a1, uint64_t a2)
{
  v2 = re::ecs2::ComponentImpl<re::ecs2::PhysicsConstraintsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2);

  return re::ecs2::PhysicsConstraintsComponent::syncConstraintArrays(v2, 0);
}

uint64_t REPhysicsConstraintComponentGetConstraintByName(void *a1, const char *a2)
{
  v5 = re::ecs2::ComponentImpl<re::ecs2::PhysicsConstraintsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2);
  v14 = 0;
  __s2 = &str_67;
  v7 = a1[8];
  v8 = v14;
  if (v7)
  {
    v9 = 0;
    v10 = __s2;
    v11 = (a1[10] + 16);
    while (1)
    {
      v2 = v9;
      if ((v8 ^ *(v11 - 1)) <= 1)
      {
        v6 = *v11;
        if (*v11 == v10)
        {
          break;
        }

        v6 = strcmp(v6, v10);
        if (!v6)
        {
          break;
        }
      }

      v9 = v2 + 1;
      v11 += 38;
      if (v7 == v2 + 1)
      {
        v12 = 0;
        if (v8)
        {
          goto LABEL_12;
        }

        goto LABEL_14;
      }
    }

    v12 = 1;
    if ((v8 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v12 = 0;
    if ((v14 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

LABEL_12:
  if (v14)
  {
  }

LABEL_14:
  if (v12 && a1[13] > v2)
  {
    return *(a1[15] + 8 * v2);
  }

  else
  {
    return 0;
  }
}

uint64_t REPhysicsConstraintComponentGetConstraintByIndex(uint64_t a1, unint64_t a2)
{
  v3 = re::ecs2::ComponentImpl<re::ecs2::PhysicsConstraintsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2);
  if (*(v3 + 104) <= a2)
  {
    return 0;
  }

  else
  {
    return *(*(v3 + 120) + 8 * a2);
  }
}

re::Constraint *REPhysicsConstraintComponentRemoveAndDeleteConstraint(re::ecs2::PhysicsConstraintsComponent *a1, const char *a2, uint64_t a3)
{
  v6 = re::ecs2::ComponentImpl<re::ecs2::PhysicsConstraintsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2);
  result = REPhysicsConstraintComponentGetConstraintByName(v6, a2);
  if (result)
  {
    v8 = result;
    if (a3)
    {
      v12 = result;
      re::DynamicArray<re::Allocator const*>::removeStable((a3 + 152), &v12);
      v9 = re::internal::destroyPersistent<re::PhysicsSimulation>("REConstraintDestroy", 1092, v8);
    }

    else
    {
      v9 = re::ecs2::PhysicsConstraintsComponent::deferDeleteConstraint(a1, result);
    }

    if (a2)
    {
      v10 = a2;
    }

    else
    {
      v10 = "";
    }

    v12 = 0;
    v13 = &str_67;
    re::ecs2::PhysicsConstraintsComponent::removePhysicsConstraint(a1, &v12);
    if (v12)
    {
      if (v12)
      {
      }
    }

    return re::ecs2::Component::enqueueMarkDirty(a1);
  }

  return result;
}

void REPhysicsConstraintComponentRemoveAndDeleteAllConstraints(re::ecs2::PhysicsConstraintsComponent *a1, uint64_t a2)
{
  v5 = *(re::ecs2::ComponentImpl<re::ecs2::PhysicsConstraintsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2) + 64);
  if (v5 >= 1)
  {
    v6 = (v5 & 0x7FFFFFFF) + 1;
    v7 = (*(a1 + 10) + 304 * (v5 & 0x7FFFFFFF) - 16);
    while (v5 > v6 - 2)
    {
      re::StringID::StringID(&v18, (v7 - 280));
      var1 = v7[-17].var1;
      re::ecs2::EntityHandle::EntityHandle(v21, &v7[-16]);
      v8 = v7[-13];
      v22 = v7[-14];
      v23 = v8;
      re::StringID::StringID(&v24, v7 - 12);
      re::ecs2::EntityHandle::EntityHandle(v26, &v7[-11]);
      v27 = v7[-9];
      v9 = v7[-8];
      v10 = v7[-7];
      v11 = v7[-5];
      v30 = v7[-6];
      v31 = v11;
      v28 = v9;
      v29 = v10;
      v12 = v7[-4];
      v13 = v7[-3];
      v14 = v7[-1];
      v34 = v7[-2];
      v35 = v14;
      v32 = v12;
      v33 = v13;
      re::StringID::StringID(&v36, v7);
      v15 = REPhysicsConstraintComponentRemoveAndDeleteConstraint(a1, v19, a2);
      if (v36)
      {
        if (v36)
        {
        }
      }

      v36 = 0;
      v37 = &str_67;
      re::ecs2::EntityHandle::reset(v26);
      objc_destroyWeak(v26);
      v26[0] = 0;
      if (v24)
      {
        if (v24)
        {
        }
      }

      v24 = 0;
      v25 = &str_67;
      re::ecs2::EntityHandle::reset(v21);
      objc_destroyWeak(v21);
      v21[0] = 0;
      if (v18)
      {
        if (v18)
        {
        }
      }

      --v6;
      v7 -= 19;
      if (v6 <= 1)
      {
        return;
      }
    }

    re::internal::assertLog(6, v4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v6 - 2, v5);
    _os_crash();
    __break(1u);
  }
}

uint64_t REPhysicsConstraintComponentGetConstraintType(uint64_t a1, unint64_t a2)
{
  v3 = re::ecs2::ComponentImpl<re::ecs2::PhysicsConstraintsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2);
  if (*(v3 + 64) <= a2)
  {
    return 0;
  }

  else
  {
    return *(*(v3 + 80) + 304 * a2);
  }
}

uint64_t REPhysicsConstraintComponentGetConstraintIndex(uint64_t a1, const char *a2)
{
  v3 = a1;
  if (!*(re::ecs2::ComponentImpl<re::ecs2::PhysicsConstraintsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2) + 64))
  {
    return 0;
  }

  v5 = re::ecs2::ComponentImpl<re::ecs2::PhysicsConstraintsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(v3, v4);
  v17 = 0;
  __s2 = &str_67;
  v7 = *(v3 + 64);
  v8 = v17;
  if (v7)
  {
    v9 = 0;
    v10 = *(v3 + 80);
    v11 = __s2;
    do
    {
      while (1)
      {
        v3 = v9;
        v12 = v10 + 304 * v9;
        v14 = *(v12 + 8);
        v13 = v12 + 8;
        if ((v8 ^ v14) <= 1)
        {
          break;
        }

        v9 = v3 + 1;
        if (v3 + 1 == v7)
        {
          goto LABEL_15;
        }
      }

      v6 = *(v13 + 8);
      if (v6 == v11)
      {
        break;
      }

      v6 = strcmp(v6, v11);
      v9 = v3 + 1;
    }

    while (v6 && v9 != v7);
  }

LABEL_15:
  if (v8)
  {
    if (v17)
    {
    }
  }

  return v3;
}

_BYTE *REPhysicsConstraintComponentGetConstraintName(uint64_t a1, unint64_t a2)
{
  v3 = re::ecs2::ComponentImpl<re::ecs2::PhysicsConstraintsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2);
  if (!*(v3 + 64))
  {
    return 0;
  }

  v5 = re::ecs2::ComponentImpl<re::ecs2::PhysicsConstraintsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(v3, v4);
  if (*(v5 + 64) <= a2)
  {
    v6 = v5 + 32;
  }

  else
  {
    v6 = *(v5 + 80) + 304 * a2 + 8;
  }

  v8 = *(v6 + 8);
  if (*v8)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

uint64_t REPhysicsConstraintComponentGetPinNameA(uint64_t a1, unint64_t a2)
{
  v3 = re::ecs2::ComponentImpl<re::ecs2::PhysicsConstraintsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2);
  if (!*(v3 + 64))
  {
    return 0;
  }

  v5 = re::ecs2::ComponentImpl<re::ecs2::PhysicsConstraintsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(v3, v4);
  v6 = re::ecs2::PhysicsConstraintsComponent::pinNameA(v5, a2);
  if (**(v6 + 8))
  {
    return *(v6 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t REPhysicsConstraintComponentGetPinNameB(uint64_t a1, unint64_t a2)
{
  v3 = re::ecs2::ComponentImpl<re::ecs2::PhysicsConstraintsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2);
  if (!*(v3 + 64))
  {
    return 0;
  }

  v5 = re::ecs2::ComponentImpl<re::ecs2::PhysicsConstraintsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(v3, v4);
  v6 = re::ecs2::PhysicsConstraintsComponent::pinNameB(v5, a2);
  if (**(v6 + 8))
  {
    return *(v6 + 8);
  }

  else
  {
    return 0;
  }
}

_BYTE *REPhysicsConstraintComponentGetPinName(uint64_t a1, unint64_t a2, int a3)
{
  v5 = re::ecs2::ComponentImpl<re::ecs2::PhysicsConstraintsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2);
  if (!*(v5 + 64))
  {
    return 0;
  }

  v7 = re::ecs2::ComponentImpl<re::ecs2::PhysicsConstraintsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(v5, v6);
  v8 = a3 ? re::ecs2::PhysicsConstraintsComponent::pinNameA(v7, a2) : re::ecs2::PhysicsConstraintsComponent::pinNameB(v7, a2);
  result = *(v8 + 8);
  if (!*result)
  {
    return 0;
  }

  return result;
}

uint64_t REPhysicsConstraintComponentSetPinNameA(re::ecs2::PhysicsConstraintsComponent *a1, unint64_t a2, const char *a3)
{
  result = re::ecs2::ComponentImpl<re::ecs2::PhysicsConstraintsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2);
  if (*(result + 64))
  {
    v8 = re::ecs2::ComponentImpl<re::ecs2::PhysicsConstraintsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, v7);
    v10 = 0;
    v11 = &str_67;
    v9 = re::ecs2::PhysicsConstraintsComponent::setPinNameA(a1, a2, &v10);
    if (v10)
    {
      if (v10)
      {
      }
    }

    return re::ecs2::Component::enqueueMarkDirty(a1);
  }

  return result;
}

uint64_t REPhysicsConstraintComponentSetPinNameB(re::ecs2::PhysicsConstraintsComponent *a1, unint64_t a2, const char *a3)
{
  result = re::ecs2::ComponentImpl<re::ecs2::PhysicsConstraintsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2);
  if (*(result + 64))
  {
    v8 = re::ecs2::ComponentImpl<re::ecs2::PhysicsConstraintsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, v7);
    v10 = 0;
    v11 = &str_67;
    v9 = re::ecs2::PhysicsConstraintsComponent::setPinNameB(a1, a2, &v10);
    if (v10)
    {
      if (v10)
      {
      }
    }

    return re::ecs2::Component::enqueueMarkDirty(a1);
  }

  return result;
}

uint64_t REPhysicsConstraintComponentSetPinName(re::ecs2::PhysicsConstraintsComponent *a1, unint64_t a2, char a3, const char *a4)
{
  result = re::ecs2::ComponentImpl<re::ecs2::PhysicsConstraintsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2);
  if (*(result + 64))
  {
    v10 = re::ecs2::ComponentImpl<re::ecs2::PhysicsConstraintsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, v9);
    v12 = 0;
    v13 = &str_67;
    if (a3)
    {
      v11 = re::ecs2::PhysicsConstraintsComponent::setPinNameA(a1, a2, &v12);
    }

    else
    {
      v11 = re::ecs2::PhysicsConstraintsComponent::setPinNameB(a1, a2, &v12);
    }

    if (v12)
    {
      if (v12)
      {
      }
    }

    return re::ecs2::Component::enqueueMarkDirty(a1);
  }

  return result;
}

__n128 REPhysicsConstraintComponentGetPoseA(uint64_t a1, unint64_t a2)
{
  v3 = re::ecs2::ComponentImpl<re::ecs2::PhysicsConstraintsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2);
  result.n128_u64[0] = 0;
  if (*(v3 + 64) > a2)
  {
    return *(*(v3 + 80) + 304 * a2 + 64);
  }

  return result;
}

__n128 REPhysicsConstraintComponentGetPoseB(uint64_t a1, unint64_t a2)
{
  v3 = re::ecs2::ComponentImpl<re::ecs2::PhysicsConstraintsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2);
  result.n128_u64[0] = 0;
  if (*(v3 + 64) > a2)
  {
    return *(*(v3 + 80) + 304 * a2 + 144);
  }

  return result;
}

__n128 REPhysicsConstraintComponentGetOffsetPoseA(uint64_t a1, unint64_t a2)
{
  v3 = re::ecs2::ComponentImpl<re::ecs2::PhysicsConstraintsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2);
  result.n128_u64[0] = 0;
  if (*(v3 + 64) > a2)
  {
    return *(*(v3 + 80) + 304 * a2 + 176);
  }

  return result;
}

__n128 REPhysicsConstraintComponentGetOffsetPoseB(uint64_t a1, unint64_t a2)
{
  v3 = re::ecs2::ComponentImpl<re::ecs2::PhysicsConstraintsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2);
  result.n128_u64[0] = 0;
  if (*(v3 + 64) > a2)
  {
    return *(*(v3 + 80) + 304 * a2 + 208);
  }

  return result;
}

__n128 REPhysicsConstraintComponentGetOffsetPositionB(uint64_t a1, unint64_t a2)
{
  v3 = re::ecs2::ComponentImpl<re::ecs2::PhysicsConstraintsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2);
  result.n128_u64[0] = 0;
  if (*(v3 + 64) > a2)
  {
    return *(*(v3 + 80) + 304 * a2 + 208);
  }

  return result;
}

__n128 REPhysicsConstraintComponentGetOffsetOrientationB(uint64_t a1, unint64_t a2)
{
  v3 = re::ecs2::ComponentImpl<re::ecs2::PhysicsConstraintsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2);
  result.n128_u64[0] = 0;
  if (*(v3 + 64) > a2)
  {
    return *(*(v3 + 80) + 304 * a2 + 224);
  }

  return result;
}

__n128 REPhysicsConstraintComponentSetOffsetPoseA(uint64_t a1, unint64_t a2, __n128 a3, __n128 a4)
{
  v5 = re::ecs2::ComponentImpl<re::ecs2::PhysicsConstraintsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2);
  if (*(v5 + 64) > a2)
  {
    v7 = (*(v5 + 80) + 304 * a2);
    result = a4;
    v7[11] = a3;
    v7[12] = a4;
  }

  return result;
}

__n128 REPhysicsConstraintComponentSetOffsetPoseB(uint64_t a1, unint64_t a2, __n128 a3, __n128 a4)
{
  v5 = re::ecs2::ComponentImpl<re::ecs2::PhysicsConstraintsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2);
  if (*(v5 + 64) > a2)
  {
    v7 = (*(v5 + 80) + 304 * a2);
    result = a4;
    v7[13] = a3;
    v7[14] = a4;
  }

  return result;
}

char *REPhysicsConstraintComponentGetEntityA(uint64_t a1, unint64_t a2)
{
  if (*(re::ecs2::ComponentImpl<re::ecs2::PhysicsConstraintsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2) + 64) <= a2)
  {
    return 0;
  }

  re::ecs2::EntityHandle::EntityHandle(location, (*(a1 + 80) + 304 * a2 + 32));
  v4 = re::ecs2::EntityHandle::resolve(location, *(a1 + 16));
  re::ecs2::EntityHandle::reset(location);
  objc_destroyWeak(location);
  return v4;
}

char *REPhysicsConstraintComponentGetEntityB(uint64_t a1, unint64_t a2)
{
  if (*(re::ecs2::ComponentImpl<re::ecs2::PhysicsConstraintsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2) + 64) <= a2)
  {
    return 0;
  }

  re::ecs2::EntityHandle::EntityHandle(location, (*(a1 + 80) + 304 * a2 + 112));
  v4 = re::ecs2::EntityHandle::resolve(location, *(a1 + 16));
  re::ecs2::EntityHandle::reset(location);
  objc_destroyWeak(location);
  return v4;
}

void REPhysicsConstraintComponentRemoveConstraintLeaveJoint(re::ecs2::PhysicsConstraintsComponent *a1, const char *a2)
{
  v4 = re::ecs2::ComponentImpl<re::ecs2::PhysicsConstraintsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2);
  ConstraintByName = REPhysicsConstraintComponentGetConstraintByName(v4, a2);
  if (ConstraintByName)
  {
    v7 = 0;
    v8 = &str_67;
    re::ecs2::PhysicsConstraintsComponent::removePhysicsConstraintLeaveJoint(a1, &v7);
    v6 = re::ecs2::Component::enqueueMarkDirty(a1);
    if (v7)
    {
      if (v7)
      {
      }
    }
  }
}

uint64_t REPhysicsConstraintComponentSyncJoints(uint64_t a1, uint64_t a2)
{
  v2 = re::ecs2::ComponentImpl<re::ecs2::PhysicsConstraintsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2);

  return re::ecs2::PhysicsConstraintsComponent::syncConstraintArrays(v2, 0);
}

uint64_t REPhysicsConstraintComponentSetLinearLimits(uint64_t a1, unint64_t a2, uint64_t a3, double a4)
{
  v8 = re::ecs2::ComponentImpl<re::ecs2::PhysicsConstraintsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2);
  v9.n128_f64[0] = a4;
  re::ecs2::PhysicsConstraintsComponent::setLinearLimits(v8, a2, a3, v9);

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REPhysicsConstraintComponentSetAngularLimits(uint64_t a1, unint64_t a2, uint64_t a3, double a4)
{
  v8 = re::ecs2::ComponentImpl<re::ecs2::PhysicsConstraintsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2);
  re::ecs2::PhysicsConstraintsComponent::setAngularLimits(v8, a2, a3, a4);

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

double REPhysicsConstraintComponentGetLinearLimits(uint64_t a1, unint64_t a2, unsigned int a3)
{
  v5 = re::ecs2::ComponentImpl<re::ecs2::PhysicsConstraintsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2);

  return re::ecs2::PhysicsConstraintsComponent::linearLimits(v5, a2, a3);
}

double REPhysicsConstraintComponentGetAngularLimits(uint64_t a1, unint64_t a2, unsigned int a3)
{
  v5 = re::ecs2::ComponentImpl<re::ecs2::PhysicsConstraintsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2);

  return re::ecs2::PhysicsConstraintsComponent::linearLimits(v5, a2, a3);
}

uint64_t REPhysicsConstraintComponentGetCollisionEnabled(uint64_t a1, unint64_t a2)
{
  v3 = re::ecs2::ComponentImpl<re::ecs2::PhysicsConstraintsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2);

  return re::ecs2::PhysicsConstraintsComponent::collisionEnabled(v3, a2);
}

uint64_t REPhysicsConstraintComponentSetCollisionEnabled(uint64_t a1, unint64_t a2, char a3)
{
  v6 = re::ecs2::ComponentImpl<re::ecs2::PhysicsConstraintsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2);
  re::ecs2::PhysicsConstraintsComponent::setCollisionEnabled(v6, a2, a3);

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t re::ecs2::ComponentImpl<re::ecs2::PhysicsConstraintsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1;
    v3 = &unk_1EE187000;
    if ((*(*a1 + 40))(a1) == re::ecs2::ComponentImpl<re::ecs2::PhysicsConstraintsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      return v2;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) component must not be null.", "component", "safeCast", 97);
    _os_crash();
    __break(1u);
  }

  (*(*v2 + 40))(v2);
  v5 = *(v3[436] + 32);
  v6 = (*(*v2 + 40))(v2);
  re::internal::assertLog(6, v7, "assertion failure: '%s' (%s:line %i) Component is wrong type. Expected type: %s, but got: %s", "&reinterpret_cast<Derived *>(component)->componentType() == &Derived::classComponentType()", "safeCast", 101, v5, *(v6 + 32));
  result = _os_crash();
  __break(1u);
  return result;
}

void *REUISortingCodirectionalGroupConfigComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::UISortingCodirectionalGroupConfigComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
}

void *REAnimationComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::AnimationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
}

uint64_t REAnimationComponentGetOrCreateObservationRegistrar(uint64_t a1)
{
  v1 = a1 + 80;
  if (!*(a1 + 80))
  {
    realitykit_initObservation(a1 + 80);
  }

  return v1;
}

uint64_t REAnimationComponentAddEntry(uint64_t a1)
{
  v2 = *(a1 + 48);
  v5 = 0u;
  memset(v4, 0, sizeof(v4));
  HIDWORD(v5) = 0x80000000;
  v7 = 0;
  v8 = 0;
  v6 = "";
  re::DynamicArray<re::ecs2::AnimationComponentEntry>::add(a1 + 32, v4);
  re::ecs2::AnimationComponentEntry::deinit(v4);
  re::AssetHandle::~AssetHandle(v4);
  re::ecs2::Component::enqueueMarkDirty(a1);
  return v2;
}

uint64_t REAnimationComponentRemoveAllEntries(uint64_t a1)
{
  re::DynamicArray<re::ecs2::AnimationComponentEntry>::clear((a1 + 32));

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REAnimationComponentSetTimeline(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48) <= a2)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v9 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v4 = (*(a1 + 64) + 72 * a2);
  re::AssetAPIHelper::assetHandleCreate(a3, &v9);
  v5 = v4[1];
  v4[1] = *(&v9 + 1);
  *(&v9 + 1) = v5;
  v6 = *v4;
  *v4 = v9;
  *&v9 = v6;
  v7 = v4[2];
  v4[2] = v10;
  *&v10 = v7;
  re::AssetHandle::~AssetHandle(&v9);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REAnimationComponentGetTimeline(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 48) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 64) + 72 * a2);
}

uint64_t REAnimationComponentSetRequest(uint64_t a1, unint64_t a2, char a3)
{
  if (*(a1 + 48) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  *(*(a1 + 64) + 72 * a2 + 25) = a3;

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REAnimationComponentGetRequest(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 48) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 64) + 72 * a2 + 25);
}

uint64_t REAnimationComponentSetHandoff(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a1 + 48) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v3 = *(a1 + 64) + 72 * a2;
  *(v3 + 40) = (a3 & 0x7FFFFFFF00000000) != 0;
  *(v3 + 32) = a3;

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REAnimationComponentGetHandoff(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 48) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 64) + 72 * a2 + 32);
}

uint64_t REAnimationComponentActiveAnimationCount(uint64_t a1)
{
  v1 = 144;
  if (!*(a1 + 160))
  {
    v1 = 96;
  }

  return *(a1 + v1 + 16) + *(a1 + 48);
}

uint64_t REAnimationComponentCopyDefaultTimebaseRef(uint64_t a1)
{
  v1 = *(a1 + 16);
  do
  {
    v2 = v1;
    v1 = *(v1 + 32);
  }

  while (v1);
  v3 = *(v2 + 24);
  if (!v3)
  {
    return 0;
  }

  v4 = (*(**(v3 + 56) + 32))(*(v3 + 56));
  v5 = re::ServiceLocator::serviceOrNull<re::TimebaseService>(v4);
  if (!v5)
  {
    return 0;
  }

  v6 = *(*v5 + 96);

  return v6();
}

unint64_t REAnimationComponentPlay(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  DWORD1(v10) = *(a3 + 4);
  HIDWORD(v10) = *(a3 + 8);
  BYTE8(v10) = *(a3 + 24);
  LODWORD(v10) = *a3;
  v11 = *(a3 + 16);
  re::AssetAPIHelper::assetHandleCreate(a2, v9);
  re::AssetHandle::AssetHandle(v8, v9);
  v6 = re::ecs2::AnimationComponent::play(a1, v8, &v10, a4, 0);
  re::AssetHandle::~AssetHandle(v8);
  re::ecs2::Component::enqueueMarkDirty(a1);
  re::AssetHandle::~AssetHandle(v9);
  return v6;
}

double REAnimationComponentGetDuration(re::ecs2::AnimationComponent *a1, unint64_t a2)
{
  re::ecs2::AnimationComponent::animationDuration(a1, a2, v3);
  result = v4;
  if (!v3[0])
  {
    return NAN;
  }

  return result;
}

double REAnimationComponentGetCurrentPlaybackTime(re::ecs2::AnimationComponent *a1, unint64_t a2)
{
  re::ecs2::AnimationComponent::animationPlaybackTime(a1, a2, v3);
  result = v4;
  if (!v3[0])
  {
    return NAN;
  }

  return result;
}

uint64_t REAnimationComponentSetCurrentPlaybackTime(re::ecs2::AnimationComponent *a1, unint64_t a2, double a3)
{
  re::ecs2::AnimationComponent::setAnimationPlaybackTime(a1, a2, a3);

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

float REAnimationComponentGetPlaybackSpeed(uint64_t a1, unint64_t a2)
{
  re::ecs2::AnimationComponent::animationPlaybackSpeed(a1, a2, v3);
  result = v4;
  if (!v3[0])
  {
    return NAN;
  }

  return result;
}

uint64_t REAnimationComponentSetPlaybackSpeed(re::ecs2::AnimationComponent *a1, unint64_t a2, float a3)
{
  v4 = re::ecs2::AnimationComponent::setAnimationPlaybackSpeed(a1, a2, a3);
  if (v4)
  {
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  return v4;
}

float REAnimationComponentGetBlendFactor(uint64_t a1, unint64_t a2)
{
  re::ecs2::AnimationComponent::animationBlendFactor(a1, a2, v3);
  result = v4;
  if (!v3[0])
  {
    return NAN;
  }

  return result;
}

float REAnimationComponentGetFadeBlendFactor(re::ecs2::AnimationComponent *a1, unint64_t a2)
{
  re::ecs2::AnimationComponent::fadeBlendFactor(a1, a2, v3);
  result = v4;
  if (!v3[0])
  {
    return NAN;
  }

  return result;
}

uint64_t REAnimationComponentSetBlendFactor(re::ecs2::AnimationComponent *a1, unint64_t a2, float a3)
{
  v4 = re::ecs2::AnimationComponent::setAnimationBlendFactor(a1, a2, a3);
  if (v4)
  {
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  return v4;
}

uint64_t REAnimationComponentGetAnimationParentTimebase(re::ecs2::AnimationComponent *a1, unint64_t a2)
{
  re::ecs2::AnimationComponent::animationParentTimebase(a1, a2, v3);
  if (v3[0])
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t REAnimationComponentSetAnimationParentTimebase(re::ecs2::AnimationComponent *a1, unint64_t a2, OpaqueCMTimebase *a3)
{
  re::ecs2::AnimationComponent::setAnimationParentTimebase(a1, a2, a3);

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REAnimationComponentPauseAnimation(re::ecs2::AnimationComponent *this, uint64_t a2)
{
  v3 = *(this + 20);
  if (v3)
  {
    v4 = *(this + 22);
    v5 = v3 << 8;
    while (*(v4 + 16) != a2)
    {
      v4 = (v4 + 256);
      v5 -= 256;
      if (!v5)
      {
        goto LABEL_7;
      }
    }

    re::ecs2::AnimationComponent::pause(this, v4, 0);
  }

LABEL_7:

  return re::ecs2::Component::enqueueMarkDirty(this);
}

uint64_t REAnimationComponentResumeAnimation(re::ecs2::AnimationComponent *this, uint64_t a2)
{
  v3 = *(this + 20);
  if (v3)
  {
    v4 = *(this + 22);
    v5 = v3 << 8;
    while (*(v4 + 16) != a2)
    {
      v4 = (v4 + 256);
      v5 -= 256;
      if (!v5)
      {
        goto LABEL_7;
      }
    }

    re::ecs2::AnimationComponent::resume(this, v4, 0);
  }

LABEL_7:

  return re::ecs2::Component::enqueueMarkDirty(this);
}

uint64_t REAnimationComponentStopAnimation(re::ecs2::AnimationComponent *a1, unint64_t a2)
{
  re::ecs2::AnimationComponent::stop(a1, a2, 0.0);

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REAnimationComponentStopAnimationWithTime(re::ecs2::AnimationComponent *a1, unint64_t a2, float a3)
{
  re::ecs2::AnimationComponent::stop(a1, a2, a3);

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

BOOL REAnimationComponentHasRunningAnimations(uint64_t a1)
{
  v1 = 144;
  if (!*(a1 + 160))
  {
    v1 = 96;
  }

  v2 = a1 + v1;
  v3 = *(v2 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = (v3 << 8) - 256;
  v5 = (*(v2 + 32) + 57);
  do
  {
    v6 = *v5;
    result = v6 != 2;
    v8 = v6 != 2 || v4 == 0;
    v4 -= 256;
    v5 += 256;
  }

  while (!v8);
  return result;
}

uint64_t REAnimationComponentStopAllAnimations(re::ecs2::AnimationComponent *a1)
{
  re::ecs2::AnimationComponent::stopAll(a1);

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REAnimationComponentIsPlaying(re::ecs2::AnimationComponent *a1, unint64_t a2)
{
  result = re::ecs2::AnimationComponent::animationEntry(a1, a2);
  if (result)
  {
    return *(result + 57) == 0;
  }

  return result;
}

uint64_t REAnimationComponentIsPaused(re::ecs2::AnimationComponent *a1, unint64_t a2)
{
  result = re::ecs2::AnimationComponent::animationEntry(a1, a2);
  if (result)
  {
    return (*(result + 57) & 0xFD) == 1;
  }

  return result;
}

uint64_t REAnimationComponentAllAnimationsCompleted(uint64_t a1)
{
  v1 = 144;
  if (!*(a1 + 160))
  {
    v1 = 96;
  }

  v2 = a1 + v1;
  v3 = *(v2 + 16);
  if (!v3)
  {
    return 1;
  }

  v4 = *(v2 + 32);
  v5 = v3 << 8;
  for (i = (v4 + 128); !*i || *(i - 71); i += 32)
  {
    v5 -= 256;
    if (!v5)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t REAnimationComponentAllAnimationsAreCompleted(uint64_t a1, uint64_t a2)
{
  v2 = 144;
  if (!*(a1 + 160))
  {
    v2 = 96;
  }

  v3 = a1 + v2;
  v4 = *(v3 + 16);
  if (!v4)
  {
    return 1;
  }

  v5 = *(v3 + 32);
  v6 = v4 << 8;
  for (i = (v5 + 128); *i == a2 || *(i - 71); i += 32)
  {
    v6 -= 256;
    if (!v6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t REAnimationComponentGetTimelineAsset(re::ecs2::AnimationComponent *a1, unint64_t a2)
{
  result = re::ecs2::AnimationComponent::animationEntry(a1, a2);
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

uint64_t REAnimationComponentEntrySetTarget(uint64_t a1, unint64_t a2, char a3)
{
  if (*(a1 + 48) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  *(*(a1 + 64) + 72 * a2 + 24) = a3;

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REAnimationComponentEntryGetTarget(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 48) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 64) + 72 * a2 + 24);
}

void REAnimationComponentControllerPause(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 48) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v2 = (*(a1 + 64) + 72 * a2 + 56);

  re::AnimationController::pause(v2);
}

void REAnimationComponentControllerResume(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 48) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v2 = (*(a1 + 64) + 72 * a2 + 56);

  re::AnimationController::resume(v2);
}

double REAnimationComponentControllerStop(uint64_t a1, unint64_t a2, double a3)
{
  if (*(a1 + 48) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v3 = (*(a1 + 64) + 72 * a2 + 56);

  return re::AnimationController::stop(v3, a3);
}

BOOL REAnimationComponentControllerIsValid(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 48) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v2 = *(a1 + 64) + 72 * a2;
  v5 = *(v2 + 56);
  v3 = v2 + 56;
  v4 = v5;
  return v5 && re::DataArray<re::internal::TimelineTreeInfo>::tryGet(v4 + (*(v3 + 8) >> 56 << 6) + 72, *(v3 + 8)) != 0;
}

uint64_t REAnimationComponentControllerIsPaused(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 48) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v2 = (*(a1 + 64) + 72 * a2 + 56);

  return re::AnimationController::isPaused(v2);
}

float REAnimationComponentControllerGetSpeed(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 48) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v2 = (*(a1 + 64) + 72 * a2 + 56);

  return re::AnimationController::speed(v2);
}

uint64_t REAnimationComponentControllerSetSpeed(uint64_t a1, unint64_t a2, float a3)
{
  if (*(a1 + 48) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v3 = *(a1 + 64) + 72 * a2 + 56;

  return re::AnimationController::setSpeed(v3, a3);
}

double REAnimationComponentControllerGetDuration(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 48) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v2 = re::AnimationController::timeline((*(a1 + 64) + 72 * a2 + 56));
  if (!v2)
  {
    return 0.0;
  }

  v3 = *(*v2 + 40);

  v3();
  return result;
}

double REAnimationComponentControllerGetTime(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48) <= a2)
  {
    memset(v5, 0, sizeof(v5));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  re::AnimationController::time((*(a1 + 64) + 72 * a2 + 56), v5);
  if (LOBYTE(v5[0]) == 1)
  {
    result = *(v5 + 1);
    *a3 = *(&v5[0] + 1);
  }

  return result;
}

void *REAnimationComponentControllerSetTime(uint64_t a1, unint64_t a2, double a3)
{
  if (*(a1 + 48) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v3 = (*(a1 + 64) + 72 * a2 + 56);

  return re::AnimationController::setTime(v3, a3);
}

uint64_t REAnimationComponentControllerGetTimeline(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 48) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v2 = (*(a1 + 64) + 72 * a2 + 56);

  return re::AnimationController::timeline(v2);
}

float REAnimationComponentControllerGetBlendFactor(uint64_t a1, unint64_t a2, re::Timeline *a3)
{
  if (*(a1 + 48) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v3 = (*(a1 + 64) + 72 * a2 + 56);

  return re::AnimationController::blendFactor(v3, a3);
}

uint64_t REAnimationComponentControllerSetBlendFactor(uint64_t a1, unint64_t a2, re::Timeline *a3, float a4)
{
  if (*(a1 + 48) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v4 = (*(a1 + 64) + 72 * a2 + 56);

  return re::AnimationController::setBlendFactor(v4, a4, a3);
}

unint64_t AnimationComponentPlayAnimation(uint64_t a1, uint64_t a2, __int128 *a3, int a4)
{
  re::AssetAPIHelper::assetHandleCreate(a2, v11);
  re::AssetHandle::AssetHandle(v10, v11);
  if (a4)
  {
    v7 = 6;
  }

  else
  {
    v7 = 4;
  }

  v8 = re::ecs2::AnimationComponent::play(a1, v10, a3, v7, 0);
  re::AssetHandle::~AssetHandle(v10);
  re::ecs2::Component::enqueueMarkDirty(a1);
  re::AssetHandle::~AssetHandle(v11);
  return v8;
}

unint64_t REAnimationComponentPlayAnimation(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  HIDWORD(v5) = 0x80000000;
  v6 = "";
  BYTE8(v5) = a4 & 1;
  *&v5 = a3;
  return AnimationComponentPlayAnimation(a1, a2, &v5, 0);
}

unint64_t REAnimationComponentPlayAnimationWithDirty(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5)
{
  HIDWORD(v6) = 0x80000000;
  v7 = "";
  BYTE8(v6) = a4 & 1;
  *&v6 = a3;
  return AnimationComponentPlayAnimation(a1, a2, &v6, a5);
}

unint64_t REAnimationComponentPlayAnimationEx(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  DWORD1(v5) = *(a3 + 4);
  HIDWORD(v5) = *(a3 + 8);
  BYTE8(v5) = *(a3 + 24);
  LODWORD(v5) = *a3;
  v6 = *(a3 + 16);
  return AnimationComponentPlayAnimation(a1, a2, &v5, a4);
}

void *REUISortingComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
}

uint64_t REUISortingComponentSetSortCategory(uint64_t this, int a2)
{
  if (*(this + 80) != a2)
  {
    *(this + 80) = a2;
    return re::ecs2::Component::enqueueMarkDirty(this);
  }

  return this;
}

uint64_t REUISortingComponentSetSortPriorityHint(uint64_t this, int a2)
{
  if (*(this + 84) != a2)
  {
    *(this + 84) = a2;
    return re::ecs2::Component::enqueueMarkDirty(this);
  }

  return this;
}

uint64_t REUISortingComponentSetExtents(float *a1, __n128 a2)
{
  v4 = a2;
  result = re::ecs2::UISortingComponent::setExtents(a1, &v4);
  if (result)
  {

    return re::ecs2::Component::enqueueMarkDirty(a1);
  }

  return result;
}

float32x4_t REUISortingComponentGetExtents(float32x4_t *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = vcgtq_f32(v1, v2);
  v3.i32[3] = v3.i32[2];
  if ((vmaxvq_u32(v3) & 0x80000000) != 0)
  {
    return a1[2];
  }

  else
  {
    result = vsubq_f32(v2, v1);
    result.i32[3] = 0;
    result.i64[0] = vmaxnmq_f32(result, 0).u64[0];
  }

  return result;
}

void *REListenerComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::ListenerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
}

uint64_t REListenerComponentSetSystemListener(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  *(result + 128) = v2;
  return result;
}

uint64_t REListenerComponentSetReferencesSystemListener(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 3;
  }

  else
  {
    v2 = 1;
  }

  *(result + 128) = v2;
  return result;
}

void *REIkParametersComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::IKParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
}

uint64_t REIkParametersComponentSetAsset(uint64_t a1, uint64_t a2)
{
  re::AssetAPIHelper::assetHandleCreate(a2, &v6);
  v3 = *(a1 + 32);
  *(a1 + 32) = v6;
  v6 = v3;
  v4 = *(a1 + 48);
  *(a1 + 48) = v7;
  v7 = v4;
  re::AssetHandle::~AssetHandle(&v6);
  re::ecs2::IKParametersComponent::createSolversForAsset(a1);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

void REIkParametersComponentResetSolver(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 64) > a2)
  {

    JUMPOUT(0x1E6903AA0);
  }

  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
}

uint64_t REIkParametersComponentGetSolverNodeName(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 64) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 72) + (a2 << 7) + 8);
}

uint64_t REIkParametersComponentSolverGetMaxIterations(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 64) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return MEMORY[0x1E6903A60](*(*(a1 + 72) + (a2 << 7) + 16));
}

void REIkParametersComponentSolverSetMaxIterations(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 64) > a2)
  {

    JUMPOUT(0x1E6903AB0);
  }

  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
}

void REIkParametersComponentSolverGetPGain(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 64) > a2)
  {

    JUMPOUT(0x1E6903A70);
  }

  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
}

uint64_t REIkParametersComponentSolverSetPGain(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 64) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v2 = *(*(a1 + 72) + (a2 << 7) + 16);

  return MEMORY[0x1EEDF9400](v2);
}

uint64_t REIkParametersComponentSolverGetRetargetingGain(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 64) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v2 = *(*(a1 + 72) + (a2 << 7) + 16);

  return MEMORY[0x1EEDF93C0](v2);
}

uint64_t REIkParametersComponentSolverSetRetargetingGain(uint64_t a1, unint64_t a2, __n128 a3)
{
  if (*(a1 + 64) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v3 = *(*(a1 + 72) + (a2 << 7) + 16);

  return MEMORY[0x1EEDF9410](v3, a3);
}

uint64_t REIkParametersComponentSolverGetJointCount(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 64) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return CoreIKGenericSolverGetJointCount();
}

uint64_t REIkParametersComponentJointGetName(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 64) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  CoreIKGenericSolverGetJoint();

  return CoreIKJointGetName();
}

uint64_t REIkParametersComponentJointGetRetargetingGain(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 64) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  Joint = CoreIKGenericSolverGetJoint();

  return MEMORY[0x1EEDF9458](Joint);
}

uint64_t REIkParametersComponentJointSetRetargetingGain(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 64) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  CoreIKGenericSolverGetJoint();

  return CoreIKJointSetRetargetingGain();
}

uint64_t REIkParametersComponentJointGetRetargetingGainPerAxis(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 64) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  Joint = CoreIKGenericSolverGetJoint();

  return MEMORY[0x1EEDF9460](Joint);
}

uint64_t REIkParametersComponentJointSetRetargetingGainPerAxis(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 64) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  CoreIKGenericSolverGetJoint();

  return CoreIKJointSetRetargetingGainDOF();
}

uint64_t REIkParametersComponentJointGetRotationStiffness(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 64) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  Joint = CoreIKGenericSolverGetJoint();

  return MEMORY[0x1EEDF9468](Joint);
}

uint64_t REIkParametersComponentJointSetRotationStiffness(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 64) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  CoreIKGenericSolverGetJoint();

  return CoreIKJointSetRotationStiffness();
}

uint64_t REIkParametersComponentSolverGetTaskCount(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 64) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return CoreIKGenericSolverGetConstraintCount();
}

uint64_t REIkParametersComponentTaskGetName(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 64) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v2 = (*(a1 + 72) + (a2 << 7));

  return re::FullBodyIKSolver::taskName(v2);
}

uint64_t REIkParametersComponentTaskGetTargetName(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 64) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v2 = (*(a1 + 72) + (a2 << 7));

  return re::FullBodyIKSolver::taskTargetName(v2);
}

void REIkParametersComponentTaskHasPositionEnabled(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 64) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v2 = (*(a1 + 72) + (a2 << 7));

  re::FullBodyIKSolver::taskPositionEnabled(v2);
}

void REIkParametersComponentTaskHasRotationEnabled(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 64) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v2 = (*(a1 + 72) + (a2 << 7));

  re::FullBodyIKSolver::taskRotationEnabled(v2);
}

void REIkParametersComponentTaskGetPositionWeight(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) > a2)
  {
    v3 = MEMORY[0x1E6903A00](*(*(a1 + 72) + (a2 << 7) + 16), a3);
    MEMORY[0x1E69038E0](v3);

    JUMPOUT(0x1E6903B40);
  }

  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
}

void REIkParametersComponentTaskSetPositionWeight(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) > a2)
  {
    v3 = MEMORY[0x1E6903A00](*(*(a1 + 72) + (a2 << 7) + 16), a3);
    MEMORY[0x1E69038E0](v3);

    JUMPOUT(0x1E6903BF0);
  }

  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
}

void REIkParametersComponentTaskGetRotationWeight(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) > a2)
  {
    v3 = MEMORY[0x1E6903A00](*(*(a1 + 72) + (a2 << 7) + 16), a3);
    MEMORY[0x1E69038E0](v3);

    JUMPOUT(0x1E6903B20);
  }

  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
}

void REIkParametersComponentTaskSetRotationWeight(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) > a2)
  {
    v3 = MEMORY[0x1E6903A00](*(*(a1 + 72) + (a2 << 7) + 16), a3);
    MEMORY[0x1E69038E0](v3);

    JUMPOUT(0x1E6903BE0);
  }

  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
}

uint64_t REIkParametersComponentTaskGetLookAtType(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  MEMORY[0x1E6903A00](*(*(a1 + 72) + (a2 << 7) + 16), a3);
  return CoreIKGenericConstraintGetUseLocalSpaceLookAtAxis();
}

uint64_t REIkParametersComponentTaskSetLookAtType(uint64_t result, unint64_t a2, uint64_t a3, int a4)
{
  if (a4)
  {
    if (a4 != 1)
    {
      return result;
    }

    if (*(result + 64) > a2)
    {
      v4 = MEMORY[0x1E6903A00](*(*(result + 72) + (a2 << 7) + 16), a3);

      return MEMORY[0x1EEDF9360](v4);
    }

    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_13:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(result + 64) <= a2)
  {
    goto LABEL_13;
  }

  v5 = MEMORY[0x1E6903A00](*(*(result + 72) + (a2 << 7) + 16), a3);

  return MEMORY[0x1EEDF9368](v5);
}

uint64_t REIkParametersComponentTaskGetLookAtAxis(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v3 = MEMORY[0x1E6903A00](*(*(a1 + 72) + (a2 << 7) + 16), a3);

  return MEMORY[0x1EEDF92F0](v3);
}

uint64_t REIkParametersComponentTaskSetLookAtAxis(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  MEMORY[0x1E6903A00](*(*(a1 + 72) + (a2 << 7) + 16), a3);

  return CoreIKGenericConstraintSetLookAtAxis();
}

uint64_t REIkParametersComponentTaskHasLookAtEnabled(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  MEMORY[0x1E6903A00](*(*(a1 + 72) + (a2 << 7) + 16), a3);

  return CoreIKGenericConstraintHasLookAtEnabled();
}

double REIkParametersComponentTaskGetLookAtTarget(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (*(a1 + 64) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v3 = (*(a1 + 72) + (a2 << 7));

  *&result = re::FullBodyIKSolver::taskLookAtTarget(v3, a3).n128_u64[0];
  return result;
}

uint64_t REIkParametersComponentTaskSetLookAtTarget(uint64_t a1, unint64_t a2, unint64_t a3, __n128 a4)
{
  if (*(a1 + 64) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v4 = *(a1 + 72) + (a2 << 7);

  return re::FullBodyIKSolver::setTaskLookAtTarget(v4, a3, a4);
}

uint64_t REIkParametersComponentTaskGetPositionTargetBlendWeight(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v3 = MEMORY[0x1E6903A00](*(*(a1 + 72) + (a2 << 7) + 16), a3);

  return MEMORY[0x1EEDF9308](v3);
}

uint64_t REIkParametersComponentTaskSetPositionTargetBlendWeight(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  MEMORY[0x1E6903A00](*(*(a1 + 72) + (a2 << 7) + 16), a3);

  return CoreIKGenericConstraintSetTranslationTargetBlendWeight();
}

uint64_t REIkParametersComopnentTaskGetRotationTargetBlendWeight(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v3 = MEMORY[0x1E6903A00](*(*(a1 + 72) + (a2 << 7) + 16), a3);

  return MEMORY[0x1EEDF9300](v3);
}

uint64_t REIkParametersComponentTaskSetRotationTargetBlendWeight(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  MEMORY[0x1E6903A00](*(*(a1 + 72) + (a2 << 7) + 16), a3);

  return CoreIKGenericConstraintSetOrientationTargetBlendWeight();
}

uint64_t REIkParametersComponentTaskGetTargetPosition(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v3 = MEMORY[0x1E6903A00](*(*(a1 + 72) + (a2 << 7) + 16), a3);
  v4 = MEMORY[0x1E69038E0](v3);

  return MEMORY[0x1EEDF9448](v4);
}

uint64_t REIkParametersComponentTaskSetTargetPosition(uint64_t a1, unint64_t a2, unint64_t a3, __n128 a4)
{
  if (*(a1 + 64) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v4 = *(a1 + 72) + (a2 << 7);

  return re::FullBodyIKSolver::setTaskTargetPosition(v4, a3, a4);
}

double REIkParametersComponentTaskGetTargetRotation(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (*(a1 + 64) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v3 = (*(a1 + 72) + (a2 << 7));

  *&result = re::FullBodyIKSolver::taskTargetRotation(v3, a3).n128_u64[0];
  return result;
}

uint64_t REIkParametersComponentTaskSetTargetRotation(uint64_t a1, unint64_t a2, unint64_t a3, simd_quatf a4)
{
  if (*(a1 + 64) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v4 = *(a1 + 72) + (a2 << 7);

  return re::FullBodyIKSolver::setTaskTargetRotation(v4, a3, a4);
}

uint64_t REIkParametersComponentTaskSetTargetParameters(uint64_t a1, unint64_t a2, unint64_t a3, __n128 a4, double a5, __n128 a6)
{
  if (*(a1 + 64) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v6 = *(a1 + 72) + (a2 << 7);

  return re::FullBodyIKSolver::setTaskTargetParameters(v6, a3, a4, a5, a6);
}

uint64_t REIkParametersComponentTaskSetLookAtTargetParameters(uint64_t a1, unint64_t a2, unint64_t a3, __n128 a4)
{
  if (*(a1 + 64) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v5 = *(a1 + 72) + (a2 << 7);
  MEMORY[0x1E6903A00](*(v5 + 16), a3);
  CoreIKGenericConstraintSetOrientationTargetBlendWeight();

  return re::FullBodyIKSolver::setTaskLookAtTarget(v5, a3, a4);
}

uint64_t REAssetWithMetadataCreate(re *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = re::globalAllocators(a1);
    v4 = (*(*v3[2] + 32))(v3[2], 144, 8);
    ArcSharedObject::ArcSharedObject(v4, 0);
    *v4 = &unk_1F5D2E220;
    *(v4 + 24) = 0u;
    *(v4 + 40) = 0u;
    *(v4 + 56) = 0u;
    *(v4 + 72) = 0u;
    *(v4 + 88) = 0u;
    *(v4 + 104) = 0u;
    *(v4 + 120) = 0u;
    *(v4 + 136) = 0;
    v6 = re::DynamicString::setCapacity((v4 + 48), 0);
    *(v4 + 96) = 0u;
    *(v4 + 80) = 0u;
    re::DynamicString::setCapacity((v4 + 80), 0);
    *(v4 + 112) = 0;
    *(v4 + 114) = 0;
    *(v4 + 128) = 0;
    *(v4 + 136) = 0;
    *(v4 + 120) = 0;
    re::AssetAPIHelper::assetHandleCreate(a1, &v10);
    v7 = *(v4 + 24);
    *(v4 + 24) = v10;
    v10 = v7;
    v8 = *(v4 + 40);
    *(v4 + 40) = v11;
    v11 = v8;
    re::AssetHandle::~AssetHandle(&v10);
    return v4;
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "asset != nullptr", "REAssetWithMetadataCreate", 39);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

re::DynamicString *REAssetWithMetadataSetSceneMetadata(re::DynamicString *result, char *__s, char *a3)
{
  v4 = result;
  if (__s)
  {
    v6 = __s;
    v7 = strlen(__s);
    result = re::DynamicString::operator=((v4 + 80), &v6);
  }

  if (a3)
  {
    v5 = strlen(a3);
    v6 = a3;
    v7 = v5;
    return re::DynamicString::operator=((v4 + 48), &v6);
  }

  return result;
}

re::DynamicString *REAssetWithMetadataSetLabel(uint64_t a1, char *__s)
{
  v4[0] = __s;
  v4[1] = strlen(__s);
  return re::DynamicString::operator=((a1 + 80), v4);
}

uint64_t REAssetWithMetadataSetAssetSerializationFormat(uint64_t result, char a2)
{
  if ((*(result + 114) & 1) == 0)
  {
    *(result + 114) = 1;
  }

  *(result + 115) = a2;
  return result;
}

uint64_t REAssetWithMetadataClearAssetSerializationFormat(uint64_t result)
{
  if (*(result + 114) == 1)
  {
    *(result + 114) = 0;
  }

  return result;
}

void REAssetWithMetadataSetConfigurationNames(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v4 = [v3 count];
  if (v13)
  {
    v5 = 0;
    for (i = 0; i < v13; ++i)
    {
      v7 = [v3 objectAtIndexedSubscript:i];
      v8 = [v7 cStringUsingEncoding:4];
      v9 = v13;
      if (v13 <= i)
      {
        v15 = 0;
        memset(v24, 0, sizeof(v24));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v16 = 136315906;
        v17 = "operator[]";
        v18 = 1024;
        v19 = 468;
        v20 = 2048;
        v21 = i;
        v22 = 2048;
        v23 = v9;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v10 = v8;
      v11 = strlen(v8);
      *&v24[0] = v10;
      *(&v24[0] + 1) = v11;
      re::DynamicString::operator=((v14 + v5), v24);

      v5 += 32;
    }
  }

  re::FixedArray<re::DynamicString>::operator=((a1 + 120), &v12);
  re::FixedArray<re::DynamicString>::deinit(&v12);
}

uint64_t RERealityFileAssetWriteReportCreate(re *a1)
{
  v1 = re::globalAllocators(a1);
  v2 = (*(*v1[2] + 32))(v1[2], 104, 8);
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0;
  ArcSharedObject::ArcSharedObject(v2, 0);
  *v2 = &unk_1F5D2E268;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  re::DynamicString::setCapacity((v2 + 24), 0);
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 80) = 0;
  *(v2 + 72) = 0;
  *(v2 + 88) = 0;
  *(v2 + 96) = 0;
  return v2;
}

BOOL RERealityFileWritingParametersSetMajorVersion(re *a1, uint64_t a2)
{
  if (a2)
  {
    *(a1 + 3) = a2;
  }

  else
  {
    v3 = *re::assetsLogObjects(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "It's invalid to set the target version to None. Version wasn't set.", v5, 2u);
    }
  }

  return a2 != 0;
}

uint64_t RERealityFileWritingParametersSetTargetPlatform(uint64_t result, int a2)
{
  if ((a2 - 1) >= 5)
  {
    v2 = 0;
  }

  else
  {
    v2 = a2;
  }

  *(result + 36) = v2;
  return result;
}

uint64_t RERealityFileAssetWriteReportGetSerializationString(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1 >> 1;
  if ((v1 & 1) == 0)
  {
    v2 = v1 >> 1;
  }

  if (!v2)
  {
    return 0;
  }

  if (v1)
  {
    return *(a1 + 40);
  }

  return a1 + 33;
}

id RERealityFileAssetWriteReportGetError(uint64_t a1)
{
  result = *(a1 + 96);
  if (result)
  {
    return result;
  }

  return result;
}

uint64_t RERealityFileAssetWriteReportGetDependencyAtIndex(uint64_t a1, unint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  if (*(a1 + 72) <= a2)
  {
    memset(v4, 0, sizeof(v4));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  re::AssetHandle::AssetHandle(v4, (*(a1 + 88) + 24 * a2));
  v2 = *&v4[0];
  re::AssetHandle::~AssetHandle(v4);
  return v2;
}

uint64_t *RERealityFileWriterCreate(re *a1)
{
  v1 = re::globalAllocators(a1);
  v2 = (*(*v1[2] + 32))(v1[2], 624, 8);
  re::RealityFileWriter::RealityFileWriter(v2);
  re::make::shared::object<re::SceneAssetRemapperImplementation>(&v6);
  v3 = v6;
  if (v6)
  {
    v4 = (v6 + 8);
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v2 + 58, v3);
  }

  else
  {
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v2 + 58, 0);
  }

  return v2;
}

uint64_t RERealityFileWriterCreateWithParameters(char *a1)
{
  v1 = a1;
  if (a1)
  {
    a1 = a1 + 8;
  }

  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 624, 8);
  v7 = v1;
  re::RealityFileWriter::RealityFileWriter(v3, &v7);
  if (v1)
  {
  }

  re::make::shared::object<re::SceneAssetRemapperImplementation>(&v7);
  v4 = v7;
  if (v7)
  {
    v5 = (v7 + 8);
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((v3 + 464), v4);
  }

  else
  {
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((v3 + 464), 0);
  }

  return v3;
}

BOOL RERealityFileWriterSetArchiveEnvelopeVersion(uint64_t a1, int a2, CFErrorRef *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a2 - 1;
  if ((a2 - 1) > 1)
  {
    if (a3)
    {
      *a3 = CFErrorCreate(*MEMORY[0x1E695E480], @"RERealityFileWriterErrorDomain", 15, 0);
    }

    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8[0] = 67109120;
      v8[1] = a2;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "%u is not a valid REArchiveEnvelopeVersion enum value.", v8, 8u);
    }
  }

  else
  {
    if (a2 == 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }

    *(a1 + 360) = v5;
  }

  return v4 < 2;
}

uint64_t RERealityFileWriterSetCompressionMethod(uint64_t result, unsigned int a2)
{
  if (a2 > 3)
  {
    v2 = 0;
  }

  else
  {
    v2 = dword_1E3058A50[a2];
  }

  *(result + 360) = v2;
  return result;
}

uint64_t RERealityFileWriterGetVersionFromDeploymentTarget(re *a1, const char *a2, __n128 a3)
{
  RealityFilePlatformFromName = re::getRealityFilePlatformFromName(a1, a2);
  ReleaseForDeploymentTarget = re::getReleaseForDeploymentTarget(RealityFilePlatformFromName, a3);

  return re::TypeAvailabilityUtilities::convertToMajorVersion(ReleaseForDeploymentTarget);
}

double RERealityFileWriterGetDeploymentTargetFromVersion(re *a1, const char *a2)
{
  RealityFilePlatformFromName = re::getRealityFilePlatformFromName(a1, a2);
  v4 = re::TypeAvailabilityUtilities::convertToRealityKitRelease(a2);

  return re::getDeploymentTargetForRelease(RealityFilePlatformFromName, v4, v5, v6);
}

id RERealityFileWriterGetAllDeploymentTargetsFromVersion(uint64_t a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = re::TypeAvailabilityUtilities::convertToRealityKitRelease(a1);
  re::getRequiredDeploymentTargetsForRelease(v2, &v6);
  if (v7)
  {
    v3 = *&v8[7];
  }

  else
  {
    v3 = v8;
  }

  v4 = [v1 stringWithUTF8String:v3];
  if (v6 && (v7 & 1) != 0)
  {
    (*(*v6 + 40))();
  }

  return v4;
}

void RERealityFileWriterAddSceneRemappingCallback(uint64_t a1, void *a2)
{
  v9[5] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 464);
  if (v4)
  {
    v5 = (v4 + 8);
  }

  v6 = _Block_copy(v3);

  v8 = re::globalAllocators(v7)[2];
  v9[0] = &unk_1F5D2E150;
  v9[1] = v6;
  v9[3] = v8;
  v9[4] = v9;
  re::DynamicArray<re::Function<re::SceneAssetRemapperImplementation::SceneRemappingResult ()(re::ecs2::Scene *)>>::add((v4 + 24), v9);
  re::FunctionBase<24ul,re::SceneAssetRemapperImplementation::SceneRemappingResult ()(re::ecs2::Scene *)>::destroyCallable(v9);
  if (v4)
  {
  }
}

uint64_t (***RERealityFileWriterAddRemappingCustomizationCallback(uint64_t a1, void *aBlock))(void)
{
  v6[5] = *MEMORY[0x1E69E9840];
  v3 = _Block_copy(aBlock);
  v4 = re::globalAllocators(v3)[2];
  v6[0] = &unk_1F5D2E1B8;
  v6[1] = v3;
  v6[3] = v4;
  v6[4] = v6;
  re::DynamicArray<re::Function<BOOL ()(re::AssetPathMapping &,re::AssetService *)>>::add((a1 + 424), v6);
  return re::FunctionBase<24ul,BOOL ()(re::AssetPathMapping &,re::AssetService *)>::destroyCallable(v6);
}

void RERealityFileWriterSetMetadataString(_anonymous_namespace_ *a1, const char *a2, const char *a3)
{
  *&v7.var0 = 0;
  v7.var1 = &str_67;
  v6 = re::RealityFileWriter::setOrClearMetadataString(a1, &v7, a3);
  if (*&v7.var0)
  {
    if (*&v7.var0)
    {
    }
  }
}

void RERealityFileWriterClearMetadata(_anonymous_namespace_ *a1, const char *a2)
{
  *&v5.var0 = 0;
  v5.var1 = &str_67;
  v4 = re::RealityFileWriter::setOrClearMetadataString(a1, &v5, 0);
  if (*&v5.var0)
  {
    if (*&v5.var0)
    {
    }
  }
}

CFStringRef RERealityFileWriterCopyMetadataString(_anonymous_namespace_ *a1, const char *a2)
{
  v8 = 0;
  v9 = &str_67;
  MetadataString = re::RealityFileWriter::getMetadataString(a1, &v8, v10);
  if (v8)
  {
    if (v8)
    {
    }
  }

  v5 = 0;
  v8 = 0;
  v9 = &str_67;
  if (v10[0] == 1)
  {
    if (v12)
    {
      v6 = *&v13[7];
    }

    else
    {
      v6 = v13;
    }

    v5 = CFStringCreateWithCString(0, v6, 0x8000100u);
    if (v10[0] & 1) != 0 && v11 && (v12)
    {
      (*(*v11 + 40))();
    }
  }

  return v5;
}

uint64_t RERealityFileWriterOpen(_anonymous_namespace_ *a1, const char *a2, void *a3)
{
  re::RealityFileWriter::open(a1, &v9, v11);
  if (v9 && (v10 & 1) != 0)
  {
    (*(*v9 + 40))();
  }

  if (a3)
  {
    if ((v11[0] & 1) == 0)
    {
      v6 = v12;
      *a3 = v6;
      if (v6)
      {
        CFRetain(v6);
      }
    }
  }

  v7 = v11[0];
  if ((v11[0] & 1) == 0)
  {
  }

  return v7;
}

BOOL RERealityFileWriterIsAssetWritten(re::RealityFileWriter *a1, uint64_t a2)
{
  re::AssetAPIHelper::assetHandleCreate(a2, v5);
  isAssetWritten = re::RealityFileWriter::isAssetWritten(a1, v5);
  re::AssetHandle::~AssetHandle(v5);
  return isAssetWritten;
}

uint64_t RERealityFileWriterWriteAsset(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::AssetHandle::AssetHandle(v10, (a2 + 24));
  re::DynamicString::DynamicString(v11, (a2 + 48));
  re::DynamicString::DynamicString(v12, (a2 + 80));
  v13 = *(a2 + 112);
  v14 = *(a2 + 114);
  if (v14 == 1)
  {
    v15 = *(a2 + 115);
  }

  re::FixedArray<re::DynamicString>::FixedArray(v16, a2 + 120);
  v9 = a3;
  if (a3)
  {
    v6 = (a3 + 8);
  }

  v7 = re::RealityFileWriter::writeAsset(a1, v10, &v9);
  if (v9)
  {

    v9 = 0;
  }

  re::FixedArray<re::DynamicString>::deinit(v16);
  if (v12[0])
  {
    if (v12[1])
    {
      (*(*v12[0] + 40))();
    }

    memset(v12, 0, sizeof(v12));
  }

  if (v11[0])
  {
    if (v11[1])
    {
      (*(*v11[0] + 40))();
    }

    memset(v11, 0, sizeof(v11));
  }

  re::AssetHandle::~AssetHandle(v10);
  return v7;
}

uint64_t RERealityFileWriterWriteDataEntry(_anonymous_namespace_ *a1, const char *a2, const char *a3, uint64_t a4)
{
  v11 = a4;
  if (a4)
  {
    v8 = (a4 + 8);
  }

  v9 = re::RealityFileWriter::writeDataEntry(a1, a2, &v12, &v11);
  if (v11)
  {

    v11 = 0;
  }

  if (v12 && (v13 & 1) != 0)
  {
    (*(*v12 + 40))();
  }

  return v9;
}

uint64_t RERealityFileWriterWriteAllDependencies(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a3;
  if (a3)
  {
    v5 = (a3 + 8);
  }

  v6 = re::RealityFileWriter::writeAllDependencies(a1, a2, &v8);
  if (v8)
  {
  }

  return v6;
}

uint64_t RERealityFileWriterWriteAssetArrayAndDependencies(_anonymous_namespace_ *a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5)
{
  v46 = *MEMORY[0x1E69E9840];
  v30 = a3;
  v31 = 0;
  if (a3)
  {
    if (a3 >= 0x222222222222223)
    {
      goto LABEL_26;
    }

    v31 = v11;
    if (!v11)
    {
LABEL_27:
      re::internal::assertLog(4, v12, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash();
      __break(1u);
    }

    v13 = v11;
    v14 = v11;
    v15 = a3 - 1;
    if (a3 != 1)
    {
      do
      {
        *(v14 + 6) = 0;
        *(v14 + 1) = 0u;
        *(v14 + 2) = 0u;
        *v14 = 0u;
        v16 = re::DynamicString::setCapacity(v14 + 3, 0);
        *(v14 + 56) = 0u;
        v17 = v14 + 56;
        *(v17 + 1) = 0u;
        v11 = re::DynamicString::setCapacity(v17, 0);
        *(v17 + 16) = 0;
        v17[34] = 0;
        *(v17 + 6) = 0;
        *(v17 + 7) = 0;
        *(v17 + 5) = 0;
        v14 = (v17 + 64);
        --v15;
      }

      while (v15);
    }

    *(v14 + 6) = 0;
    *(v14 + 1) = 0u;
    *(v14 + 2) = 0u;
    *v14 = 0u;
    v18 = re::DynamicString::setCapacity(v14 + 3, 0);
    *(v14 + 56) = 0u;
    v19 = v14 + 56;
    *(v19 + 1) = 0u;
    re::DynamicString::setCapacity(v19, 0);
    v20 = 0;
    *(v19 + 16) = 0;
    v19[34] = 0;
    *(v19 + 6) = 0;
    *(v19 + 7) = 0;
    v21 = (v13 + 96);
    *(v19 + 5) = 0;
    do
    {
      if (v20 >= a3)
      {
        v32 = 0;
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v41 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v33 = 136315906;
        v34 = "operator[]";
        v35 = 1024;
        v36 = 468;
        v37 = 2048;
        v38 = v20;
        v39 = 2048;
        v40 = a3;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_26:
        re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 120, a3);
        _os_crash();
        __break(1u);
        goto LABEL_27;
      }

      v22 = *(a2 + 8 * v20);
      re::AssetHandle::operator=(v21 - 96, (v22 + 24));
      re::DynamicString::operator=((v21 - 72), (v22 + 48));
      re::DynamicString::operator=((v21 - 40), (v22 + 80));
      *(v21 - 4) = *(v22 + 112);
      if (*(v21 - 6))
      {
        if (*(v22 + 114))
        {
          goto LABEL_13;
        }

        *(v21 - 6) = 0;
      }

      else if (*(v22 + 114))
      {
        *(v21 - 6) = 1;
LABEL_13:
        *(v21 - 5) = *(v22 + 115);
      }

      re::FixedArray<re::DynamicString>::operator=(v21, v22 + 120);
      ++v20;
      v21 = (v21 + 120);
    }

    while (a3 != v20);
  }

  v28 = a5;
  if (a5)
  {
    v23 = (a5 + 8);
  }

  v24 = re::RealityFileWriter::writeAssetArrayAndDependencies(a1, &v29, a4, &v28);
  if (v28)
  {

    v28 = 0;
  }

  if (v29 && v30)
  {
    v25 = v31;
    v26 = 120 * v30;
    do
    {
      re::FixedArray<re::DynamicString>::deinit(v25 + 12);
      re::DynamicString::deinit((v25 + 56));
      re::DynamicString::deinit((v25 + 24));
      re::AssetHandle::~AssetHandle(v25);
      v25 = (v25 + 120);
      v26 -= 120;
    }

    while (v26);
    (*(*v29 + 40))(v29, v31);
  }

  return v24;
}

uint64_t RERealityFileWriterEditAssetLabel(re::RealityFileWriter *a1, uint64_t a2, const char *a3, void *a4)
{
  re::AssetAPIHelper::assetHandleCreate(a2, v15);
  re::RealityFileWriter::editAssetLabel(a1, v15, &v11, v13);
  if (v11 && (v12 & 1) != 0)
  {
    (*(*v11 + 40))();
  }

  if (a4)
  {
    if ((v13[0] & 1) == 0)
    {
      v8 = v14;
      *a4 = v8;
      if (v8)
      {
        CFRetain(v8);
      }
    }
  }

  v9 = v13[0];
  if ((v13[0] & 1) == 0)
  {
  }

  re::AssetHandle::~AssetHandle(v15);
  return v9;
}

void RERealityFileWriterSetConfigurationSetNames(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v4 = [v3 count];
  if (v13)
  {
    v5 = 0;
    for (i = 0; i < v13; ++i)
    {
      v7 = [v3 objectAtIndexedSubscript:i];
      v8 = [v7 cStringUsingEncoding:4];
      v9 = v13;
      if (v13 <= i)
      {
        v15 = 0;
        memset(v24, 0, sizeof(v24));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v16 = 136315906;
        v17 = "operator[]";
        v18 = 1024;
        v19 = 468;
        v20 = 2048;
        v21 = i;
        v22 = 2048;
        v23 = v9;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v10 = v8;
      v11 = strlen(v8);
      *&v24[0] = v10;
      *(&v24[0] + 1) = v11;
      re::DynamicString::operator=((v14 + v5), v24);

      v5 += 32;
    }
  }

  re::FixedArray<re::DynamicString>::operator=((a1 + 576), &v12);
  re::FixedArray<re::DynamicString>::deinit(&v12);
}

void RERealityFileWriterSetDefaultConfigurationNames(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v4 = [v3 count];
  if (v13)
  {
    v5 = 0;
    for (i = 0; i < v13; ++i)
    {
      v7 = [v3 objectAtIndexedSubscript:i];
      v8 = [v7 cStringUsingEncoding:4];
      v9 = v13;
      if (v13 <= i)
      {
        v15 = 0;
        memset(v24, 0, sizeof(v24));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v16 = 136315906;
        v17 = "operator[]";
        v18 = 1024;
        v19 = 468;
        v20 = 2048;
        v21 = i;
        v22 = 2048;
        v23 = v9;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v10 = v8;
      v11 = strlen(v8);
      *&v24[0] = v10;
      *(&v24[0] + 1) = v11;
      re::DynamicString::operator=((v14 + v5), v24);

      v5 += 32;
    }
  }

  re::FixedArray<re::DynamicString>::operator=((a1 + 600), &v12);
  re::FixedArray<re::DynamicString>::deinit(&v12);
}

uint64_t RERealityFileWriterClose(re::RealityFileWriter *a1, void *a2)
{
  re::RealityFileWriter::close(a1, v6);
  if (a2)
  {
    if ((v6[0] & 1) == 0)
    {
      v3 = v7;
      *a2 = v3;
      if (v3)
      {
        CFRetain(v3);
      }
    }
  }

  v4 = v6[0];
  if ((v6[0] & 1) == 0)
  {
  }

  return v4;
}

void re::internal::Callable<RERealityFileWriterAddSceneRemappingCallback::$_0,re::SceneAssetRemapperImplementation::SceneRemappingResult ()(re::ecs2::Scene *)>::~Callable(uint64_t a1)
{

  JUMPOUT(0x1E6906520);
}

void re::internal::Callable<RERealityFileWriterAddSceneRemappingCallback::$_0,re::SceneAssetRemapperImplementation::SceneRemappingResult ()(re::ecs2::Scene *)>::operator()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(*(a1 + 8) + 16))();
  *a2 = 0;
  *(a2 + 8) = 0;
  if (v3)
  {
    v5 = v3;
    re::ObjCObject::operator=((a2 + 8), v3);
    CFRelease(v5);
  }

  *a2 = v4 & 1;
}

void *re::internal::Callable<RERealityFileWriterAddSceneRemappingCallback::$_0,re::SceneAssetRemapperImplementation::SceneRemappingResult ()(re::ecs2::Scene *)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D2E150;
  a2[1] = _Block_copy(*(a1 + 8));
  return a2;
}

void *re::internal::Callable<RERealityFileWriterAddSceneRemappingCallback::$_0,re::SceneAssetRemapperImplementation::SceneRemappingResult ()(re::ecs2::Scene *)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  *a2 = &unk_1F5D2E150;
  a2[1] = v2;
  return a2;
}

void re::internal::Callable<RERealityFileWriterAddRemappingCustomizationCallback::$_0,BOOL ()(re::AssetPathMapping &,re::AssetService *)>::~Callable(uint64_t a1)
{

  JUMPOUT(0x1E6906520);
}

BOOL re::internal::Callable<RERealityFileWriterAddRemappingCustomizationCallback::$_0,BOOL ()(re::AssetPathMapping &,re::AssetService *)>::operator()(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  if (!*a3)
  {
    return 0;
  }

  v6 = [MEMORY[0x1E695DF70] array];
  v7 = [MEMORY[0x1E695DF70] array];
  (*(*(a1 + 8) + 16))();
  v8 = [v6 count];
  if (v8 == [v7 count])
  {
    if (v8)
    {
      for (i = 0; v8 != i; ++i)
      {
        v10 = [v6 objectAtIndex:i];
        v11 = v10 != 0;
        if (!v10)
        {
          break;
        }

        v12 = v10;
        v13 = [v7 objectAtIndex:i];
        if (!v13)
        {

          goto LABEL_21;
        }

        v14 = v13;
        (*(*v3 + 8))(&v22, v3, [v12 cStringUsingEncoding:4]);
        v15 = [v14 cStringUsingEncoding:4];
        if (v23)
        {
          v16 = *(v23 + 792);
        }

        else
        {
          v16 = 0;
        }

        v24 = 0;
        v25 = 0;
        v26 = 0;
        v17 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v23 ^ (v23 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v23 ^ (v23 >> 30))) >> 27));
        re::HashTable<re::AssetHandle,re::DynamicString,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::findEntry<re::AssetHandle>(a2, &v22, v16 ^ (v17 >> 31) ^ v17, &v24);
        v18 = HIDWORD(v25);
        if (HIDWORD(v25) == 0x7FFFFFFF)
        {
          re::HashTable<re::AssetHandle,re::DynamicString,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::addInternal<re::AssetHandle const&,re::DynamicString>(a2, &v24, &v22, &v20);
        }

        else
        {
          ++*(a2 + 40);
          re::DynamicString::operator=((*(a2 + 16) + 72 * v18 + 32), &v20);
        }

        if (v20 && (v21 & 1) != 0)
        {
          (*(*v20 + 40))();
        }

        re::AssetHandle::~AssetHandle(&v22);
      }
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
LABEL_21:
    v11 = 0;
  }

  return v11;
}

void *re::internal::Callable<RERealityFileWriterAddRemappingCustomizationCallback::$_0,BOOL ()(re::AssetPathMapping &,re::AssetService *)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D2E1B8;
  a2[1] = _Block_copy(*(a1 + 8));
  return a2;
}

void *re::internal::Callable<RERealityFileWriterAddRemappingCustomizationCallback::$_0,BOOL ()(re::AssetPathMapping &,re::AssetService *)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  *a2 = &unk_1F5D2E1B8;
  a2[1] = v2;
  return a2;
}

uint64_t re::HashTable<re::AssetHandle,re::DynamicString,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::addInternal<re::AssetHandle const&,re::DynamicString>(uint64_t a1, uint64_t a2, const re::AssetHandle *a3, void *a4)
{
  v7 = re::HashTable<re::AssetHandle,re::DynamicString,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::allocEntry(a1, *(a2 + 8), *a2);
  re::AssetHandle::AssetHandle((v7 + 8), a3);
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  v7 += 32;
  *(v7 + 24) = a4[3];
  v8 = a4[1];
  *v7 = *a4;
  *a4 = 0;
  v9 = a4[2];
  a4[3] = 0;
  v11 = *(v7 + 8);
  v10 = *(v7 + 16);
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  a4[1] = v11;
  a4[2] = v10;
  ++*(a1 + 40);
  return v7;
}

void *re::Shareable<re::RealityFileWriter::AssetHandleWithMetadata>::~Shareable(void *a1)
{
  *a1 = &unk_1F5D2E220;
  v2 = (a1 + 6);
  re::FixedArray<re::DynamicString>::deinit(a1 + 15);
  re::DynamicString::deinit((a1 + 10));
  re::DynamicString::deinit(v2);
  re::AssetHandle::~AssetHandle((a1 + 3));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::Shareable<re::RealityFileWriter::AssetHandleWithMetadata>::~Shareable(void *a1)
{
  *a1 = &unk_1F5D2E220;
  v2 = (a1 + 6);
  re::FixedArray<re::DynamicString>::deinit(a1 + 15);
  re::DynamicString::deinit((a1 + 10));
  re::DynamicString::deinit(v2);
  re::AssetHandle::~AssetHandle((a1 + 3));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::RealityFileWriter::AssetWriteResult::~AssetWriteResult(id *this)
{
  *this = &unk_1F5D2E268;

  re::DynamicArray<re::AssetHandle>::deinit((this + 7));
  re::DynamicString::deinit((this + 3));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 1);
}

{
  *this = &unk_1F5D2E268;

  re::DynamicArray<re::AssetHandle>::deinit((this + 7));
  re::DynamicString::deinit((this + 3));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 1);

  JUMPOUT(0x1E6906520);
}

void re::make::shared::object<re::SceneAssetRemapperImplementation>(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 64, 8);
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  ArcSharedObject::ArcSharedObject(v3, 0);
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CC4188;
  *(v3 + 56) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *a1 = v3;
}

void *REAcousticMeshComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::AcousticMeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
}

BOOL REAcousticMeshComponentAreAssetsLoaded(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (!v1)
  {
    return 0;
  }

  v2 = atomic_load((v1 + 896));
  return v2 == 2;
}

void REAcousticMeshComponentSetMeshAsset(uint64_t a1, uint64_t a2)
{
  re::AssetAPIHelper::assetHandleCreate(a2, &v8);
  if (v9)
  {
    v4 = *(v9 + 280);
    v5 = re::AcousticMeshAsset::assetType(v3);
    if (v4 == v5)
    {
      re::AssetHandle::operator=(a1 + 32, &v8);
      re::ecs2::Component::enqueueMarkDirty(a1);
      goto LABEL_7;
    }
  }

  else
  {
    v5 = re::AcousticMeshAsset::assetType(v3);
  }

  v6 = *re::audioLogObjects(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *v7 = 0;
    _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Asset is not a AcousticMeshAsset.", v7, 2u);
  }

LABEL_7:
  re::AssetHandle::~AssetHandle(&v8);
}

uint64_t REAcousticMeshComponentLoadAssetsSync(uint64_t a1)
{
  re::AssetHandle::loadNow(*(a1 + 40), 0);

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REAcousticMeshComponentAddAbsorptionCoefficients(uint64_t a1, void *a2, uint64_t a3, char *__src, char *a5)
{
  v40 = 0;
  v37 = 0;
  memset(v38, 0, sizeof(v38));
  v39 = 0;
  memset(v35, 0, sizeof(v35));
  v36 = 0;
  re::DynamicArray<float>::copy(v38, 0, __src, a3);
  re::DynamicArray<float>::copy(v35, 0, a5, a3);
  v9 = [a2 UTF8String];
  re::DynamicArray<float>::DynamicArray(v29, v35);
  re::DynamicArray<float>::DynamicArray(v32, v38);
  re::DynamicString::DynamicString(&v17, &v27);
  re::DynamicArray<float>::DynamicArray(&v19, v29);
  re::DynamicArray<float>::DynamicArray(v24, v32);
  re::DynamicArray<re::AcousticAbsorptionMaterial>::add((a1 + 96), &v17);
  re::DynamicArray<re::AcousticAbsorptionMaterial>::add((a1 + 136), &v17);
  if (v24[0])
  {
    if (v26)
    {
      (*(*v24[0] + 40))();
    }

    v26 = 0;
    memset(v24, 0, sizeof(v24));
    ++v25;
  }

  if (v19)
  {
    if (v23)
    {
      (*(*v19 + 40))();
    }

    v23 = 0;
    v20 = 0;
    v21 = 0;
    v19 = 0;
    ++v22;
  }

  if (v17)
  {
    if (BYTE8(v17))
    {
      (*(*v17 + 40))();
    }

    v17 = 0u;
    v18 = 0u;
  }

  re::ecs2::Component::enqueueMarkDirty(a1);
  if (v32[0])
  {
    if (v34)
    {
      (*(*v32[0] + 40))(v32[0], v34, v10, v11, v12, v13, v14, v15, v17, *(&v17 + 1), v18, *(&v18 + 1), v19, v20);
    }

    v34 = 0;
    memset(v32, 0, sizeof(v32));
    ++v33;
  }

  if (v29[0])
  {
    if (v31)
    {
      (*(*v29[0] + 40))();
    }

    v31 = 0;
    memset(v29, 0, sizeof(v29));
    ++v30;
  }

  if (v27 && (v28 & 1) != 0)
  {
    (*(*v27 + 40))();
  }

  if (v35[0] && v37)
  {
    (*(*v35[0] + 40))(v35[0]);
  }

  result = v38[0];
  if (v38[0])
  {
    if (v40)
    {
      return (*(*v38[0] + 40))(v38[0]);
    }
  }

  return result;
}

uint64_t REAcousticMeshComponentAddScatteringCoefficients(uint64_t a1, void *a2, uint64_t a3, char *__src, char *a5)
{
  v40 = 0;
  v37 = 0;
  memset(v38, 0, sizeof(v38));
  v39 = 0;
  memset(v35, 0, sizeof(v35));
  v36 = 0;
  re::DynamicArray<float>::copy(v38, 0, __src, a3);
  re::DynamicArray<float>::copy(v35, 0, a5, a3);
  v9 = [a2 UTF8String];
  re::DynamicArray<float>::DynamicArray(v29, v35);
  re::DynamicArray<float>::DynamicArray(v32, v38);
  re::DynamicString::DynamicString(&v17, &v27);
  re::DynamicArray<float>::DynamicArray(&v19, v29);
  re::DynamicArray<float>::DynamicArray(v24, v32);
  re::DynamicArray<re::AcousticScatteringMaterial>::add((a1 + 176), &v17);
  re::DynamicArray<re::AcousticScatteringMaterial>::add((a1 + 216), &v17);
  if (v24[0])
  {
    if (v26)
    {
      (*(*v24[0] + 40))();
    }

    v26 = 0;
    memset(v24, 0, sizeof(v24));
    ++v25;
  }

  if (v19)
  {
    if (v23)
    {
      (*(*v19 + 40))();
    }

    v23 = 0;
    v20 = 0;
    v21 = 0;
    v19 = 0;
    ++v22;
  }

  if (v17)
  {
    if (BYTE8(v17))
    {
      (*(*v17 + 40))();
    }

    v17 = 0u;
    v18 = 0u;
  }

  re::ecs2::Component::enqueueMarkDirty(a1);
  if (v32[0])
  {
    if (v34)
    {
      (*(*v32[0] + 40))(v32[0], v34, v10, v11, v12, v13, v14, v15, v17, *(&v17 + 1), v18, *(&v18 + 1), v19, v20);
    }

    v34 = 0;
    memset(v32, 0, sizeof(v32));
    ++v33;
  }

  if (v29[0])
  {
    if (v31)
    {
      (*(*v29[0] + 40))();
    }

    v31 = 0;
    memset(v29, 0, sizeof(v29));
    ++v30;
  }

  if (v27 && (v28 & 1) != 0)
  {
    (*(*v27 + 40))();
  }

  if (v35[0] && v37)
  {
    (*(*v35[0] + 40))(v35[0]);
  }

  result = v38[0];
  if (v38[0])
  {
    if (v40)
    {
      return (*(*v38[0] + 40))(v38[0]);
    }
  }

  return result;
}

uint64_t REAcousticMeshComponentAddSoundReductionIndices(uint64_t a1, void *a2, uint64_t a3, char *__src, char *a5)
{
  v40 = 0;
  v37 = 0;
  memset(v38, 0, sizeof(v38));
  v39 = 0;
  memset(v35, 0, sizeof(v35));
  v36 = 0;
  re::DynamicArray<float>::copy(v38, 0, __src, a3);
  re::DynamicArray<float>::copy(v35, 0, a5, a3);
  v9 = [a2 UTF8String];
  re::DynamicArray<float>::DynamicArray(v29, v35);
  re::DynamicArray<float>::DynamicArray(v32, v38);
  re::DynamicString::DynamicString(&v17, &v27);
  re::DynamicArray<float>::DynamicArray(&v19, v29);
  re::DynamicArray<float>::DynamicArray(v24, v32);
  re::DynamicArray<re::AcousticSoundReductionMaterial>::add((a1 + 256), &v17);
  re::DynamicArray<re::AcousticSoundReductionMaterial>::add((a1 + 296), &v17);
  if (v24[0])
  {
    if (v26)
    {
      (*(*v24[0] + 40))();
    }

    v26 = 0;
    memset(v24, 0, sizeof(v24));
    ++v25;
  }

  if (v19)
  {
    if (v23)
    {
      (*(*v19 + 40))();
    }

    v23 = 0;
    v20 = 0;
    v21 = 0;
    v19 = 0;
    ++v22;
  }

  if (v17)
  {
    if (BYTE8(v17))
    {
      (*(*v17 + 40))();
    }

    v17 = 0u;
    v18 = 0u;
  }

  re::ecs2::Component::enqueueMarkDirty(a1);
  if (v32[0])
  {
    if (v34)
    {
      (*(*v32[0] + 40))(v32[0], v34, v10, v11, v12, v13, v14, v15, v17, *(&v17 + 1), v18, *(&v18 + 1), v19, v20);
    }

    v34 = 0;
    memset(v32, 0, sizeof(v32));
    ++v33;
  }

  if (v29[0])
  {
    if (v31)
    {
      (*(*v29[0] + 40))();
    }

    v31 = 0;
    memset(v29, 0, sizeof(v29));
    ++v30;
  }

  if (v27 && (v28 & 1) != 0)
  {
    (*(*v27 + 40))();
  }

  if (v35[0] && v37)
  {
    (*(*v35[0] + 40))(v35[0]);
  }

  result = v38[0];
  if (v38[0])
  {
    if (v40)
    {
      return (*(*v38[0] + 40))(v38[0]);
    }
  }

  return result;
}

__CFArray *convertDynamicArrayFloatToCFArray(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], *(a1 + 16), MEMORY[0x1E695E9C0]);
  if (*(a1 + 16))
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = CFNumberCreate(v2, kCFNumberFloatType, (*(a1 + 32) + v4));
      CFArrayAppendValue(Mutable, v6);
      CFRelease(v6);
      ++v5;
      v4 += 4;
    }

    while (*(a1 + 16) > v5);
  }

  return Mutable;
}

__CFArray *REAcousticMeshComponentCopyAllAbsorptionCoefficients(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], *(a1 + 112), MEMORY[0x1E695E9C0]);
  if (*(a1 + 112))
  {
    v3 = 0;
    v4 = 72;
    do
    {
      v5 = convertDynamicArrayFloatToCFArray(*(a1 + 128) + v4);
      CFArrayAppendValue(Mutable, v5);
      CFRelease(v5);
      ++v3;
      v4 += 112;
    }

    while (*(a1 + 112) > v3);
  }

  return Mutable;
}

__CFArray *REAcousticMeshComponentCopyAllScatteringCoefficients(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], *(a1 + 192), MEMORY[0x1E695E9C0]);
  if (*(a1 + 192))
  {
    v3 = 0;
    v4 = 72;
    do
    {
      v5 = convertDynamicArrayFloatToCFArray(*(a1 + 208) + v4);
      CFArrayAppendValue(Mutable, v5);
      CFRelease(v5);
      ++v3;
      v4 += 112;
    }

    while (*(a1 + 192) > v3);
  }

  return Mutable;
}

__CFArray *REAcousticMeshComponentCopyAllSoundReductionIndices(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], *(a1 + 272), MEMORY[0x1E695E9C0]);
  if (*(a1 + 272))
  {
    v3 = 0;
    v4 = 72;
    do
    {
      v5 = convertDynamicArrayFloatToCFArray(*(a1 + 288) + v4);
      CFArrayAppendValue(Mutable, v5);
      CFRelease(v5);
      ++v3;
      v4 += 112;
    }

    while (*(a1 + 272) > v3);
  }

  return Mutable;
}

__CFArray *REAcousticMeshComponentCopyAllAbsorptionFrequencies(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], *(a1 + 112), MEMORY[0x1E695E9C0]);
  v3 = *(a1 + 112);
  if (v3)
  {
    v4 = 112 * v3;
    v5 = *(a1 + 128) + 32;
    do
    {
      v6 = convertDynamicArrayFloatToCFArray(v5);
      CFArrayAppendValue(Mutable, v6);
      CFRelease(v6);
      v5 += 112;
      v4 -= 112;
    }

    while (v4);
  }

  return Mutable;
}

__CFArray *REAcousticMeshComponentCopyAllScatteringFrequencies(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], *(a1 + 192), MEMORY[0x1E695E9C0]);
  v3 = *(a1 + 192);
  if (v3)
  {
    v4 = 112 * v3;
    v5 = *(a1 + 208) + 32;
    do
    {
      v6 = convertDynamicArrayFloatToCFArray(v5);
      CFArrayAppendValue(Mutable, v6);
      CFRelease(v6);
      v5 += 112;
      v4 -= 112;
    }

    while (v4);
  }

  return Mutable;
}

__CFArray *REAcousticMeshComponentCopyAllSoundReductionFrequencies(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], *(a1 + 272), MEMORY[0x1E695E9C0]);
  v3 = *(a1 + 272);
  if (v3)
  {
    v4 = 112 * v3;
    v5 = *(a1 + 288) + 32;
    do
    {
      v6 = convertDynamicArrayFloatToCFArray(v5);
      CFArrayAppendValue(Mutable, v6);
      CFRelease(v6);
      v5 += 112;
      v4 -= 112;
    }

    while (v4);
  }

  return Mutable;
}

uint64_t REAcousticMeshComponentCopyAllAbsorptionIdentifiers(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:*(a1 + 112)];
  v3 = *(a1 + 112);
  if (v3)
  {
    v4 = 112 * v3;
    v5 = (*(a1 + 128) + 16);
    do
    {
      if (*(v5 - 1))
      {
        v6 = *v5;
      }

      else
      {
        v6 = v5 - 7;
      }

      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v6];
      [v2 addObject:v7];

      v5 += 14;
      v4 -= 112;
    }

    while (v4);
  }

  v8 = [v2 copy];

  return v8;
}

uint64_t REAcousticMeshComponentCopyAllScatteringIdentifiers(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:*(a1 + 192)];
  v3 = *(a1 + 192);
  if (v3)
  {
    v4 = 112 * v3;
    v5 = (*(a1 + 208) + 16);
    do
    {
      if (*(v5 - 1))
      {
        v6 = *v5;
      }

      else
      {
        v6 = v5 - 7;
      }

      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v6];
      [v2 addObject:v7];

      v5 += 14;
      v4 -= 112;
    }

    while (v4);
  }

  v8 = [v2 copy];

  return v8;
}

uint64_t REAcousticMeshComponentCopyAllSoundReductionIdentifiers(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:*(a1 + 272)];
  v3 = *(a1 + 272);
  if (v3)
  {
    v4 = 112 * v3;
    v5 = (*(a1 + 288) + 16);
    do
    {
      if (*(v5 - 1))
      {
        v6 = *v5;
      }

      else
      {
        v6 = v5 - 7;
      }

      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v6];
      [v2 addObject:v7];

      v5 += 14;
      v4 -= 112;
    }

    while (v4);
  }

  v8 = [v2 copy];

  return v8;
}

uint64_t REAcousticMeshComponentClearAllMaterials(re::ecs2::AcousticMeshComponent *a1)
{
  re::ecs2::AcousticMeshComponent::clearAllMeshMaterials(a1);

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REAcousticMeshComponentAdjustDryWet(re::ecs2::AcousticMeshComponent *a1, float a2)
{
  re::ecs2::AcousticMeshComponent::adjustAcousticMaterialsWetDry(a1, a2);

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REAcousticMeshComponentAdjustSpecDiffuse(re::ecs2::AcousticMeshComponent *a1, float a2)
{
  re::ecs2::AcousticMeshComponent::adjustAcousticMaterialsSpecDiffuse(a1, a2);

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REAcousticMeshComponentAdjustDullBright(uint64_t a1, float a2)
{
  re::ecs2::AcousticMeshComponent::adjustAcousticMaterialsDullBright(a1, a2);

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REAcousticMeshComponentResetAllMaterials(re::ecs2::AcousticMeshComponent *a1)
{
  re::ecs2::AcousticMeshComponent::resetAllAcousticMaterials(a1);

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REAcousticMeshComponentSetARMesh(uint64_t a1, void *a2)
{
  v3 = *(a1 + 16);
  v4 = re::ecs2::ComponentImpl<re::ecs2::SceneUnderstandingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v5 = a2;
  v6 = re::ecs2::EntityComponentCollection::get((v3 + 48), v4);
  if (v6)
  {
    v8 = (*(v6 + 42) & 1) == 0 || *(v6 + 41) != 1;
  }

  else
  {
    v8 = 1;
  }

  v9 = v5;
  v11 = v9;

  *(a1 + 88) = 1;
  re::ObjCObject::operator=((a1 + 80), &v11);
  *(a1 + 89) = v8;
  *(a1 + 336) = 0;

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

void *REAcousticMeshComponentGetARMesh(void *a1)
{
  if (!a1)
  {
LABEL_4:

    return a1;
  }

  v2 = a1[10];
  if (v2)
  {
    a1 = v2;
    v1 = vars8;
    goto LABEL_4;
  }

  a1 = 0;

  return a1;
}

uint64_t REAssetDescriptorCreate(re *a1)
{
  re::make::shared::object<re::Shareable<re::AssetLoadDescriptor>>(a1, &v4);
  v2 = strlen(a1);
  v5[0] = a1;
  v5[1] = v2;
  re::DynamicString::operator=((v4 + 24), v5);
  return v4;
}

re::DynamicString *REAssetDescriptorSetSchemeName(uint64_t a1, char *__s)
{
  v4[0] = __s;
  v4[1] = strlen(__s);
  return re::DynamicString::operator=((a1 + 24), v4);
}

void *REAssetDescriptorSetData(uint64_t a1, CFDataRef theData)
{
  Length = CFDataGetLength(theData);
  re::DynamicArray<BOOL>::resize(a1 + 56, Length);
  BytePtr = CFDataGetBytePtr(theData);

  return re::DynamicArray<REFrameAnalysisBottleneck>::copy((a1 + 56), 0, BytePtr, Length);
}

re::DynamicString *REAssetDescriptorSetAssetType(uint64_t a1, char *__s)
{
  v4[0] = __s;
  v4[1] = strlen(__s);
  return re::DynamicString::operator=((a1 + 136), v4);
}

uint64_t REAssetDescriptorGetSchemeName(uint64_t a1)
{
  if (*(a1 + 32))
  {
    return *(a1 + 40);
  }

  else
  {
    return a1 + 33;
  }
}

uint64_t REAssetDescriptorGetAssetType(uint64_t a1)
{
  if (*(a1 + 144))
  {
    return *(a1 + 152);
  }

  else
  {
    return a1 + 145;
  }
}

const void *REAssetManagerCopyRealityFileDescriptorSource(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a2 + 33;
  if (*(a2 + 32))
  {
    v5 = *(a2 + 40);
  }

  else
  {
    v5 = (a2 + 33);
  }

  if (!strcmp(v5, "RealityFileAsset"))
  {
    ProviderForScheme = re::AssetProviderRegistry::tryGetProviderForScheme(*(a1 + 1904), v5);
    if (!ProviderForScheme)
    {
      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v11 = CoreRELog::log;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        if (*(a2 + 32))
        {
          v4 = *(a2 + 40);
        }

        *buf = 136315138;
        v19 = v4;
        _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, "Could not find AssetProvider registered for scheme %s.", buf, 0xCu);
      }

      return 0;
    }

    (*(*ProviderForScheme + 64))(buf);
    if (buf[0])
    {
      LOBYTE(v15) = BYTE4(v19);
      if (BYTE4(v19) == 1)
      {
        re::DynamicString::DynamicString((&v15 + 8), &v20);
        if (v15)
        {
          if (v16)
          {
            v10 = *&v17[7];
          }

          else
          {
            v10 = v17;
          }

          v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{v10, v15}];
          CFRetain(v7);
          if (v15 & 1) != 0 && *(&v15 + 1) && (v16)
          {
            (*(**(&v15 + 1) + 40))();
          }

LABEL_32:
          if (buf[0] == 1)
          {
            if (BYTE4(v19) != 1)
            {
              return v7;
            }

            v13 = &v20;
          }

          else
          {
            v13 = (&v19 + 4);
          }

          re::DynamicString::deinit(v13);
          return v7;
        }
      }
    }

    else
    {
      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v12 = CoreRELog::log;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        if (v20)
        {
          v14 = *&v21[7];
        }

        else
        {
          v14 = v21;
        }

        LODWORD(v15) = 136315138;
        *(&v15 + 4) = v14;
        _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "Failed to get source string from load descriptor with error: %s", &v15, 0xCu);
      }
    }

    v7 = 0;
    goto LABEL_32;
  }

  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v6 = CoreRELog::log;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Only RealityFileAssetLoadDescriptor is supported for REAssetManagerCopyRealityFileDescriptorSource.", buf, 2u);
  }

  return 0;
}

const void *REFrameworkAssetDescriptorGetBundleId(void *a1)
{
  if (a1[4])
  {
    v2 = a1[5];
  }

  else
  {
    v2 = a1 + 33;
  }

  v3 = strcmp(v2, "Framework");
  if (v3)
  {
    return 0;
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  v6 = re::DynamicString::setCapacity(&v11, 0);
  *(&v15 + 1) = 0;
  v16 = 0uLL;
  re::DynamicString::setCapacity(&v15, 0);
  v7 = re::AssetLoadDescriptor::getIntrospectableData<re::FrameworkLoadDescriptorParameters>((a1 + 3), &v11, 0);
  if (v7)
  {
    if (v12)
    {
      v8 = v13;
    }

    else
    {
      v8 = &v12 + 1;
    }

    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];
    CFRetain(v4);
  }

  else
  {
    v9 = *re::assetsLogObjects(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10[0] = 0;
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Failed to deserialize Framework Asset parameters", v10, 2u);
    }

    v4 = 0;
  }

  if (v15)
  {
    if (BYTE8(v15))
    {
      (*(*v15 + 40))();
    }

    v15 = 0u;
    v16 = 0u;
  }

  if (v11 && (v12 & 1) != 0)
  {
    (*(*v11 + 40))();
  }

  return v4;
}

const void *REFrameworkAssetDescriptorGetResourceNameInBundle(void *a1)
{
  if (a1[4])
  {
    v2 = a1[5];
  }

  else
  {
    v2 = a1 + 33;
  }

  v3 = strcmp(v2, "Framework");
  if (v3)
  {
    return 0;
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  v6 = re::DynamicString::setCapacity(&v11, 0);
  *(&v15 + 1) = 0;
  v16 = 0uLL;
  re::DynamicString::setCapacity(&v15, 0);
  v7 = re::AssetLoadDescriptor::getIntrospectableData<re::FrameworkLoadDescriptorParameters>((a1 + 3), &v11, 0);
  if (v7)
  {
    if (BYTE8(v15))
    {
      v8 = v16;
    }

    else
    {
      v8 = &v15 + 9;
    }

    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];
    CFRetain(v4);
  }

  else
  {
    v9 = *re::assetsLogObjects(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Failed to deserialize Framework Asset parameters", v10, 2u);
    }

    v4 = 0;
  }

  if (v15)
  {
    if (BYTE8(v15))
    {
      (*(*v15 + 40))();
    }

    v15 = 0u;
    v16 = 0u;
  }

  if (v11 && (v12 & 1) != 0)
  {
    (*(*v11 + 40))();
  }

  return v4;
}

uint64_t RERealityFileAssetDescriptorGetBundleId(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 32))
  {
    v2 = *(a1 + 40);
  }

  else
  {
    v2 = (a1 + 33);
  }

  v3 = strcmp(v2, "RealityFileAsset");
  if (v3)
  {
    return 0;
  }

  v14 = 0;
  v15 = 0;
  v16 = 0;
  v4 = re::DynamicString::setCapacity(&v13, 0);
  *(&v17 + 1) = 0;
  v18 = 0uLL;
  v5 = re::DynamicString::setCapacity(&v17, 0);
  *(&v19 + 1) = 0;
  v20 = 0uLL;
  re::DynamicString::setCapacity(&v19, 0);
  v21 = 0;
  v22 = 1;
  v6 = re::AssetLoadDescriptor::getIntrospectableData<re::RealityFileAssetLoadDescriptorParameters>((v1 + 24), &v12, 0);
  if (v6)
  {
    if (v12 == 2)
    {
      v7 = (v14 & 1) != 0 ? v15 : (&v14 + 1);
      v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v7];
      CFRetain(v1);
      v8 = 0;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v9 = *re::assetsLogObjects(v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Failed to deserialize Reality File Asset parameters", v11, 2u);
    }

    v8 = 0;
    v1 = 0;
  }

  if (v19)
  {
    if (BYTE8(v19))
    {
      (*(*v19 + 40))();
    }

    v20 = 0u;
    v19 = 0u;
  }

  if (v17)
  {
    if (BYTE8(v17))
    {
      (*(*v17 + 40))();
    }

    v18 = 0u;
    v17 = 0u;
  }

  if (v13 && (v14 & 1) != 0)
  {
    (*(*v13 + 40))();
  }

  if (v8)
  {
    return 0;
  }

  return v1;
}

uint64_t RERealityFileAssetDescriptorGetRealityFileNameInBundle(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 32))
  {
    v2 = *(a1 + 40);
  }

  else
  {
    v2 = (a1 + 33);
  }

  v3 = strcmp(v2, "RealityFileAsset");
  if (v3)
  {
    return 0;
  }

  v14 = 0;
  v15 = 0;
  v16 = 0;
  v4 = re::DynamicString::setCapacity(&v13, 0);
  *(&v17 + 1) = 0;
  v18 = 0uLL;
  v5 = re::DynamicString::setCapacity(&v17, 0);
  *(&v19 + 1) = 0;
  v20 = 0uLL;
  re::DynamicString::setCapacity(&v19, 0);
  v21 = 0;
  v22 = 1;
  v6 = re::AssetLoadDescriptor::getIntrospectableData<re::RealityFileAssetLoadDescriptorParameters>((v1 + 24), &v12, 0);
  if (v6)
  {
    if (v12 == 2)
    {
      v7 = (BYTE8(v17) & 1) != 0 ? v18 : (&v17 + 9);
      v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v7];
      CFRetain(v1);
      v8 = 0;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v9 = *re::assetsLogObjects(v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Failed to deserialize Reality File Asset parameters", v11, 2u);
    }

    v8 = 0;
    v1 = 0;
  }

  if (v19)
  {
    if (BYTE8(v19))
    {
      (*(*v19 + 40))();
    }

    v20 = 0u;
    v19 = 0u;
  }

  if (v17)
  {
    if (BYTE8(v17))
    {
      (*(*v17 + 40))();
    }

    v18 = 0u;
    v17 = 0u;
  }

  if (v13 && (v14 & 1) != 0)
  {
    (*(*v13 + 40))();
  }

  if (v8)
  {
    return 0;
  }

  return v1;
}

const void *RERealityFileAssetDescriptorGetArchiveEntry(void *a1)
{
  if (a1[4])
  {
    v2 = a1[5];
  }

  else
  {
    v2 = a1 + 33;
  }

  v3 = strcmp(v2, "RealityFileAsset");
  if (v3)
  {
    return 0;
  }

  v14 = 0;
  v15 = 0;
  v16 = 0;
  v6 = re::DynamicString::setCapacity(&v13, 0);
  *(&v17 + 1) = 0;
  v18 = 0uLL;
  v7 = re::DynamicString::setCapacity(&v17, 0);
  *(&v19 + 1) = 0;
  v20 = 0uLL;
  re::DynamicString::setCapacity(&v19, 0);
  v21 = 0;
  v22 = 1;
  v8 = re::AssetLoadDescriptor::getIntrospectableData<re::RealityFileAssetLoadDescriptorParameters>((a1 + 3), &v12, 0);
  if (v8)
  {
    if (BYTE8(v19))
    {
      v9 = v20;
    }

    else
    {
      v9 = &v19 + 9;
    }

    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v9];
    CFRetain(v4);
  }

  else
  {
    v10 = *re::assetsLogObjects(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "Failed to deserialize Reality File Asset parameters", v11, 2u);
    }

    v4 = 0;
  }

  if (v19)
  {
    if (BYTE8(v19))
    {
      (*(*v19 + 40))();
    }

    v20 = 0u;
    v19 = 0u;
  }

  if (v17)
  {
    if (BYTE8(v17))
    {
      (*(*v17 + 40))();
    }

    v18 = 0u;
    v17 = 0u;
  }

  if (v13 && (v14 & 1) != 0)
  {
    (*(*v13 + 40))();
  }

  return v4;
}

uint64_t RERealityFileAssetDescriptorGetRealityFileURL(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 32))
  {
    v2 = *(a1 + 40);
  }

  else
  {
    v2 = (a1 + 33);
  }

  v3 = strcmp(v2, "RealityFileAsset");
  if (v3)
  {
    return 0;
  }

  v14 = 0;
  v15 = 0;
  v16 = 0;
  v4 = re::DynamicString::setCapacity(&v13, 0);
  *(&v17 + 1) = 0;
  v18 = 0uLL;
  v5 = re::DynamicString::setCapacity(&v17, 0);
  *(&v19 + 1) = 0;
  v20 = 0uLL;
  re::DynamicString::setCapacity(&v19, 0);
  v21 = 0;
  v22 = 1;
  v6 = re::AssetLoadDescriptor::getIntrospectableData<re::RealityFileAssetLoadDescriptorParameters>((v1 + 24), &v12, 0);
  if (v6)
  {
    if (v12 == 1)
    {
      v7 = (v14 & 1) != 0 ? v15 : (&v14 + 1);
      v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v7];
      CFRetain(v1);
      v8 = 0;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v9 = *re::assetsLogObjects(v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Failed to deserialize Reality File Asset parameters", v11, 2u);
    }

    v8 = 0;
    v1 = 0;
  }

  if (v19)
  {
    if (BYTE8(v19))
    {
      (*(*v19 + 40))();
    }

    v20 = 0u;
    v19 = 0u;
  }

  if (v17)
  {
    if (BYTE8(v17))
    {
      (*(*v17 + 40))();
    }

    v18 = 0u;
    v17 = 0u;
  }

  if (v13 && (v14 & 1) != 0)
  {
    (*(*v13 + 40))();
  }

  if (v8)
  {
    return 0;
  }

  return v1;
}

uint64_t RERealityFileAssetDescriptorCreateFromExisting(const char *a1, const char *a2)
{
  if (*(a1 + 4))
  {
    v4 = *(a1 + 5);
  }

  else
  {
    v4 = a1 + 33;
  }

  v5 = strcmp(v4, "RealityFileAsset");
  if (v5)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v14) = 0;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Only RealityFileAssetLoadDescriptor is supported for REAssetManagerCreateNewURLRealityFileAssetLoadDescriptorFromExisting.", &v14, 2u);
    }

    return 0;
  }

  else
  {
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v9 = re::DynamicString::setCapacity(&v29, 0);
    *(&v33 + 1) = 0;
    v34 = 0uLL;
    v10 = re::DynamicString::setCapacity(&v33, 0);
    *(&v35 + 1) = 0;
    v36 = 0uLL;
    re::DynamicString::setCapacity(&v35, 0);
    v37 = 0;
    v38 = 1;
    v11 = re::AssetLoadDescriptor::getIntrospectableData<re::RealityFileAssetLoadDescriptorParameters>((a1 + 24), &v28, 0);
    if (v11)
    {
      re::RealityFileDescriptor::makeWithURL(&v26, &v14);
      LOBYTE(v28) = v14;
      re::DynamicString::operator=(&v29, &v15);
      re::DynamicString::operator=(&v33, &v17);
      if (v17)
      {
        if (BYTE8(v17))
        {
          (*(*v17 + 40))();
        }

        v18 = 0u;
        v17 = 0u;
      }

      if (v15)
      {
        if (BYTE8(v15))
        {
          (*(*v15 + 40))();
        }

        v16 = 0u;
        v15 = 0u;
      }

      if (v26 && (v27 & 1) != 0)
      {
        (*(*v26 + 40))();
      }

      re::RealityFileAssetLoadDescriptorFactory::make(&v28, (a1 + 136), &v14);
      v12.n128_f64[0] = re::make::shared::object<re::Shareable<re::AssetLoadDescriptor>,re::AssetLoadDescriptor>(&v26, &v14);
      if (v24)
      {
        if (BYTE8(v24))
        {
          (*(*v24 + 40))(v12.n128_f64[0]);
        }

        v12 = 0uLL;
        v24 = 0u;
        v25 = 0u;
      }

      if (v19)
      {
        if (v23)
        {
          (*(*v19 + 40))(v12);
        }

        v23 = 0;
        v20 = 0;
        v21 = 0;
        v19 = 0;
        ++v22;
      }

      if (*(&v16 + 1))
      {
        if (*(&v18 + 1))
        {
          (*(**(&v16 + 1) + 40))(v12);
        }

        *(&v18 + 1) = 0;
        v17 = 0uLL;
        *(&v16 + 1) = 0;
        LODWORD(v18) = v18 + 1;
      }

      if (v14 && (v15 & 1) != 0)
      {
        (*(*v14 + 40))(v12);
      }

      v7 = v26;
    }

    else
    {
      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v13 = CoreRELog::log;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v14) = 0;
        _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "Failed to deserialize RealityFileAssetLoadDescriptorParameters.", &v14, 2u);
      }

      v7 = 0;
    }

    if (v35)
    {
      if (BYTE8(v35))
      {
        (*(*v35 + 40))(v12);
      }

      v12 = 0uLL;
      v36 = 0u;
      v35 = 0u;
    }

    if (v33)
    {
      if (BYTE8(v33))
      {
        (*(*v33 + 40))(v12);
      }

      v12 = 0uLL;
      v34 = 0u;
      v33 = 0u;
    }

    if (v29 && (v30 & 1) != 0)
    {
      (*(*v29 + 40))(v12);
    }
  }

  return v7;
}

uint64_t RERealityFileAssetDescriptorCreateFromURL(_anonymous_namespace_ *a1, const char *a2, const char *a3)
{
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v6 = re::DynamicString::setCapacity(&v28, 0);
  *(&v32 + 1) = 0;
  v33 = 0uLL;
  v7 = re::DynamicString::setCapacity(&v32, 0);
  *(&v34 + 1) = 0;
  v35 = 0uLL;
  v8 = re::DynamicString::setCapacity(&v34, 0);
  v36 = 0;
  v37 = 1;
  re::RealityFileDescriptor::makeWithURL(&v25, v14);
  v27[0] = v14[0];
  re::DynamicString::operator=(&v28, &v14[8]);
  re::DynamicString::operator=(&v32, &v15);
  if (v15)
  {
    if (BYTE8(v15))
    {
      (*(*v15 + 40))();
    }

    v16 = 0u;
    v15 = 0u;
  }

  if (*&v14[8])
  {
    if (v14[16])
    {
      (*(**&v14[8] + 40))();
    }

    memset(&v14[8], 0, 32);
  }

  if (v25 && (v26 & 1) != 0)
  {
    (*(*v25 + 40))();
  }

  v9 = strlen(a2);
  *v14 = a2;
  *&v14[8] = v9;
  v10 = re::DynamicString::operator=(&v34, v14);
  re::RealityFileAssetLoadDescriptorFactory::make(v27, &v25, v14);
  v11.n128_f64[0] = re::make::shared::object<re::Shareable<re::AssetLoadDescriptor>,re::AssetLoadDescriptor>(&v24, v14);
  if (v22)
  {
    if (BYTE8(v22))
    {
      (*(*v22 + 40))(v11.n128_f64[0]);
    }

    v11 = 0uLL;
    v22 = 0u;
    v23 = 0u;
  }

  if (v17)
  {
    if (v21)
    {
      (*(*v17 + 40))(v11);
    }

    v21 = 0;
    v18 = 0;
    v19 = 0;
    v17 = 0;
    ++v20;
  }

  if (*&v14[32])
  {
    if (*(&v16 + 1))
    {
      (*(**&v14[32] + 40))(v11);
    }

    *(&v16 + 1) = 0;
    v15 = 0uLL;
    *&v14[32] = 0;
    LODWORD(v16) = v16 + 1;
  }

  if (*v14)
  {
    if (v14[8])
    {
      (*(**v14 + 40))(v11);
    }

    v11 = 0uLL;
    memset(v14, 0, 32);
  }

  if (v25 && (v26 & 1) != 0)
  {
    (*(*v25 + 40))(v11);
  }

  v12 = v24;
  if (v34)
  {
    if (BYTE8(v34))
    {
      (*(*v34 + 40))(v34, v35, v11);
    }

    v11 = 0uLL;
    v35 = 0u;
    v34 = 0u;
  }

  if (v32)
  {
    if (BYTE8(v32))
    {
      (*(*v32 + 40))(v32, v33, v11);
    }

    v11 = 0uLL;
    v33 = 0u;
    v32 = 0u;
  }

  if (v28 && (v29 & 1) != 0)
  {
    (*(*v28 + 40))(v28, v30, v11);
  }

  return v12;
}

uint64_t REAssetManagerCreateURLBasedRealityFileAssetDescriptor(uint64_t a1, _anonymous_namespace_ *a2, const char *a3)
{
  v6 = re::DynamicString::format("sourcepath:%s", &v23, a3);
  v15 = 0;
  v18 = 0;
  v19 = 0;
  v17 = 0;
  v7 = re::DynamicString::setCapacity(&v16, 0);
  *(&v20 + 1) = 0;
  v21 = 0uLL;
  re::DynamicString::setCapacity(&v20, 0);
  v22 = 0;
  if (v24)
  {
    v8 = *&v25[7];
  }

  else
  {
    v8 = v25;
  }

  v9 = re::AssetPath::parse(&v15, v8, 0, *(a1 + 1808), *(a1 + 1904), v12);
  if ((v12[0] & 1) == 0 && v13)
  {
    if (BYTE8(v13))
    {
      (*(*v13 + 40))(v9);
    }

    v14 = 0u;
    v13 = 0u;
  }

  v10 = RERealityFileAssetDescriptorCreateFromURL(a2, a3, *v22);
  if (v20)
  {
    if (BYTE8(v20))
    {
      (*(*v20 + 40))();
    }

    v21 = 0u;
    v20 = 0u;
  }

  if (v16 && (v17 & 1) != 0)
  {
    (*(*v16 + 40))();
  }

  if (v23 && (v24 & 1) != 0)
  {
    (*(*v23 + 40))();
  }

  return v10;
}

uint64_t RERealityFileAssetDescriptorCreateFromBundle(_anonymous_namespace_ *a1, const char *a2, const char *a3, const char *a4)
{
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v8 = re::DynamicString::setCapacity(&v31, 0);
  *(&v35 + 1) = 0;
  v36 = 0uLL;
  v9 = re::DynamicString::setCapacity(&v35, 0);
  *(&v37 + 1) = 0;
  v38 = 0uLL;
  v10 = re::DynamicString::setCapacity(&v37, 0);
  v39 = 0;
  v40 = 1;
  v16[0] = 2;
  re::DynamicString::DynamicString(&v16[8], &v28);
  re::DynamicString::DynamicString(&v17, &v26);
  v30[0] = 2;
  re::DynamicString::operator=(&v31, &v16[8]);
  re::DynamicString::operator=(&v35, &v17);
  if (v17)
  {
    if (BYTE8(v17))
    {
      (*(*v17 + 40))();
    }

    v18 = 0u;
    v17 = 0u;
  }

  if (*&v16[8])
  {
    if (v16[16])
    {
      (*(**&v16[8] + 40))();
    }

    memset(&v16[8], 0, 32);
  }

  if (v26 && (v27 & 1) != 0)
  {
    (*(*v26 + 40))();
  }

  if (v28 && (v29 & 1) != 0)
  {
    (*(*v28 + 40))();
  }

  *v16 = a3;
  *&v16[8] = strlen(a3);
  v12 = re::DynamicString::operator=(&v37, v16);
  re::RealityFileAssetLoadDescriptorFactory::make(v30, &v28, v16);
  v13.n128_f64[0] = re::make::shared::object<re::Shareable<re::AssetLoadDescriptor>,re::AssetLoadDescriptor>(&v26, v16);
  if (v24)
  {
    if (BYTE8(v24))
    {
      (*(*v24 + 40))(v13.n128_f64[0]);
    }

    v13 = 0uLL;
    v24 = 0u;
    v25 = 0u;
  }

  if (v19)
  {
    if (v23)
    {
      (*(*v19 + 40))(v13);
    }

    v23 = 0;
    v20 = 0;
    v21 = 0;
    v19 = 0;
    ++v22;
  }

  if (*&v16[32])
  {
    if (*(&v18 + 1))
    {
      (*(**&v16[32] + 40))(v13);
    }

    *(&v18 + 1) = 0;
    v17 = 0uLL;
    *&v16[32] = 0;
    LODWORD(v18) = v18 + 1;
  }

  if (*v16)
  {
    if (v16[8])
    {
      (*(**v16 + 40))(v13);
    }

    v13 = 0uLL;
    memset(v16, 0, 32);
  }

  if (v28 && (v29 & 1) != 0)
  {
    (*(*v28 + 40))(v13);
  }

  v14 = v26;
  if (v37)
  {
    if (BYTE8(v37))
    {
      (*(*v37 + 40))(v37, v38, v13);
    }

    v13 = 0uLL;
    v38 = 0u;
    v37 = 0u;
  }

  if (v35)
  {
    if (BYTE8(v35))
    {
      (*(*v35 + 40))(v35, v36, v13);
    }

    v13 = 0uLL;
    v36 = 0u;
    v35 = 0u;
  }

  if (v31 && (v32 & 1) != 0)
  {
    (*(*v31 + 40))(v31, v33, v13);
  }

  return v14;
}

uint64_t REFrameworkAssetDescriptorCreateFromBundle(_anonymous_namespace_ *a1, const char *a2, const char *a3)
{
  re::FrameworkAssetProvider::makeDescriptor(&v13, &v11, v10, v15);
  v8.n128_f64[0] = re::make::shared::object<re::Shareable<re::AssetLoadDescriptor>,re::AssetLoadDescriptor>(&v28, v15);
  if (v26)
  {
    if (BYTE8(v26))
    {
      (*(*v26 + 40))(v8.n128_f64[0]);
    }

    v8 = 0uLL;
    v26 = 0u;
    v27 = 0u;
  }

  if (v21)
  {
    if (v25)
    {
      (*(*v21 + 40))(v8);
    }

    v25 = 0;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    ++v24;
  }

  if (v16)
  {
    if (v20)
    {
      (*(*v16 + 40))(v8);
    }

    v20 = 0;
    v17 = 0;
    v18 = 0;
    v16 = 0;
    ++v19;
  }

  if (*&v15[0])
  {
    if (BYTE8(v15[0]))
    {
      (*(**&v15[0] + 40))(v8);
    }

    v8 = 0uLL;
    memset(v15, 0, sizeof(v15));
  }

  if (*&v10[0])
  {
    if (BYTE8(v10[0]))
    {
      (*(**&v10[0] + 40))(v8);
    }

    v8 = 0uLL;
    memset(v10, 0, sizeof(v10));
  }

  if (v11 && (v12 & 1) != 0)
  {
    (*(*v11 + 40))(v8);
  }

  if (v13 && (v14 & 1) != 0)
  {
    (*(*v13 + 40))(v8);
  }

  return v28;
}

uint64_t REBuiltinTextureAssetDescriptorCreate(re::BuiltinTextureAssetProvider *a1)
{
  re::BuiltinTextureAssetProvider::makeDescriptor(a1, &v3);
  v1.n128_f64[0] = re::make::shared::object<re::Shareable<re::AssetLoadDescriptor>,re::AssetLoadDescriptor>(&v17, &v3);
  if (v15)
  {
    if (BYTE8(v15))
    {
      (*(*v15 + 40))(v1.n128_f64[0]);
    }

    v1 = 0uLL;
    v15 = 0u;
    v16 = 0u;
  }

  if (v10)
  {
    if (v14)
    {
      (*(*v10 + 40))(v1);
    }

    v14 = 0;
    v11 = 0;
    v12 = 0;
    v10 = 0;
    ++v13;
  }

  if (v5)
  {
    if (v9)
    {
      (*(*v5 + 40))(v1);
    }

    v9 = 0;
    v6 = 0;
    v7 = 0;
    v5 = 0;
    ++v8;
  }

  if (v3 && (v4 & 1) != 0)
  {
    (*(*v3 + 40))(v1);
  }

  return v17;
}

uint64_t REAssetManagerCreateBundleBasedRealityFileAssetDescriptor(uint64_t a1, _anonymous_namespace_ *a2, const char *a3, const char *a4)
{
  v8 = re::DynamicString::format("sourcepath:%s", &v25, a4);
  v17 = 0;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  v9 = re::DynamicString::setCapacity(&v18, 0);
  *(&v22 + 1) = 0;
  v23 = 0uLL;
  re::DynamicString::setCapacity(&v22, 0);
  v24 = 0;
  if (v26)
  {
    v10 = *&v27[7];
  }

  else
  {
    v10 = v27;
  }

  v11 = re::AssetPath::parse(&v17, v10, 0, *(a1 + 1808), *(a1 + 1904), v14);
  if ((v14[0] & 1) == 0 && v15)
  {
    if (BYTE8(v15))
    {
      (*(*v15 + 40))(v11);
    }

    v16 = 0u;
    v15 = 0u;
  }

  v12 = RERealityFileAssetDescriptorCreateFromBundle(a2, a3, a4, *v24);
  if (v22)
  {
    if (BYTE8(v22))
    {
      (*(*v22 + 40))();
    }

    v23 = 0u;
    v22 = 0u;
  }

  if (v18 && (v19 & 1) != 0)
  {
    (*(*v18 + 40))();
  }

  if (v25 && (v26 & 1) != 0)
  {
    (*(*v25 + 40))();
  }

  return v12;
}

uint64_t REAssetManagerRegisterAssetDescriptor(os_unfair_lock_s *a1, uint64_t *a2)
{
  re::DynamicString::DynamicString(&v9, (a2 + 3));
  re::DynamicArray<BOOL>::DynamicArray(v11, a2 + 7);
  re::DynamicArray<BOOL>::DynamicArray(v14, a2 + 12);
  re::DynamicString::DynamicString(v17, (a2 + 17));
  os_unfair_lock_lock(a1 + 32);
  re::AssetManager::assetHandle_assetTablesLocked(v8, a1, &v9);
  os_unfair_lock_unlock(a1 + 32);
  if (v8[0])
  {
    v4 = (v8[0] + 8);
    v5 = (v8[0] + 8);
    v6 = v8[0];
  }

  else
  {
    v6 = 0;
  }

  re::AssetHandle::~AssetHandle(v8);
  if (v17[0])
  {
    if (v17[1])
    {
      (*(*v17[0] + 40))();
    }

    memset(v17, 0, sizeof(v17));
  }

  if (v14[0])
  {
    if (v16)
    {
      (*(*v14[0] + 40))();
    }

    v16 = 0;
    memset(v14, 0, sizeof(v14));
    ++v15;
  }

  if (v11[0])
  {
    if (v13)
    {
      (*(*v11[0] + 40))();
    }

    v13 = 0;
    memset(v11, 0, sizeof(v11));
    ++v12;
  }

  if (v9 && (v10 & 1) != 0)
  {
    (*(*v9 + 40))();
  }

  return v6;
}

uint64_t REAssetHandleCreateWithAssetDescriptor(os_unfair_lock_s *a1, uint64_t *a2)
{
  re::DynamicString::DynamicString(&v8, (a2 + 3));
  re::DynamicArray<BOOL>::DynamicArray(v10, a2 + 7);
  re::DynamicArray<BOOL>::DynamicArray(v13, a2 + 12);
  re::DynamicString::DynamicString(v16, (a2 + 17));
  os_unfair_lock_lock(a1 + 32);
  re::AssetManager::assetHandle_assetTablesLocked(v7, a1, &v8);
  os_unfair_lock_unlock(a1 + 32);
  v4 = v7[0];
  if (v7[0])
  {
    v5 = (v7[0] + 8);
  }

  re::AssetHandle::~AssetHandle(v7);
  if (v16[0])
  {
    if (v16[1])
    {
      (*(*v16[0] + 40))();
    }

    memset(v16, 0, sizeof(v16));
  }

  if (v13[0])
  {
    if (v15)
    {
      (*(*v13[0] + 40))();
    }

    v15 = 0;
    memset(v13, 0, sizeof(v13));
    ++v14;
  }

  if (v10[0])
  {
    if (v12)
    {
      (*(*v10[0] + 40))();
    }

    v12 = 0;
    memset(v10, 0, sizeof(v10));
    ++v11;
  }

  if (v8 && (v9 & 1) != 0)
  {
    (*(*v8 + 40))();
  }

  return v4;
}

uint64_t REAssetHandleGetAndRetainImmutableWithAssetDescriptor(re::AssetManager *a1, uint64_t a2)
{
  re::AssetManager::existingImmutableAssetHandle(a1, (a2 + 24), v5);
  if (v5[0] != 1)
  {
    return 0;
  }

  v2 = v6[0];
  v3 = (v6[0] + 8);
  if (v5[0])
  {
    re::AssetHandle::~AssetHandle(v6);
  }

  return v2;
}

uint64_t REAssetHandleGetOrCreateImmutableWithAssetDescriptors(os_unfair_lock_s *a1, uint64_t *a2, uint64_t a3)
{
  v14 = 0;
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  if (a3)
  {
    v4 = a3;
    do
    {
      v6 = *a2++;
      re::DynamicArray<re::AssetLoadDescriptor>::add(v12, (v6 + 24));
      --v4;
    }

    while (v4);
  }

  re::AssetManager::assetHandle(a1, v12, v10);
  if (v10[0] == 1)
  {
    v7 = v11[0];
    if (!v11[0] || (v8 = (v11[0] + 8), (v10[0] & 1) != 0))
    {
      re::AssetHandle::~AssetHandle(v11);
    }
  }

  else
  {
    v7 = 0;
  }

  re::DynamicArray<re::AssetLoadDescriptor>::deinit(v12);
  return v7;
}

uint64_t REAssetHandleCreateNewImmutableWithAssetDescriptors(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v15 = 0;
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  if (a3)
  {
    v4 = a3;
    do
    {
      v6 = *a2++;
      re::DynamicArray<re::AssetLoadDescriptor>::add(v13, (v6 + 24));
      --v4;
    }

    while (v4);
  }

  re::AssetManager::createNewImmutableAssetHandle(a1, v13, 0, v11);
  if (v11[0] == 1)
  {
    re::AssetHandle::AssetHandle(v10, v12);
    v7 = v10[0];
    if (v10[0])
    {
      v8 = (v10[0] + 8);
    }

    re::AssetHandle::~AssetHandle(v10);
    if (v11[0])
    {
      re::AssetHandle::~AssetHandle(v12);
    }
  }

  else
  {
    v7 = 0;
  }

  re::DynamicArray<re::AssetLoadDescriptor>::deinit(v13);
  return v7;
}

uint64_t REAssetHandleCreateNewMutableWithAssetDescriptors(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v13 = 0;
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  if (a3)
  {
    v4 = a3;
    do
    {
      v6 = *a2++;
      re::DynamicArray<re::AssetLoadDescriptor>::add(v11, (v6 + 24));
      --v4;
    }

    while (v4);
  }

  re::AssetManager::createNewMutableAssetHandle(a1, v11, 0, 1, v10);
  v7 = v10[0];
  if (v10[0])
  {
    v8 = (v10[0] + 8);
  }

  re::AssetHandle::~AssetHandle(v10);
  re::DynamicArray<re::AssetLoadDescriptor>::deinit(v11);
  return v7;
}

void *REAssetManagerLoadRawDataForAssetDescriptor(uint64_t a1, uint64_t a2)
{
  buf[3] = *MEMORY[0x1E69E9840];
  if (*(a2 + 32))
  {
    v3 = *(a2 + 40);
  }

  else
  {
    v3 = (a2 + 33);
  }

  RawProviderForScheme = re::AssetProviderRegistry::tryGetRawProviderForScheme(*(a1 + 1904), v3);
  if (!RawProviderForScheme)
  {
    return 0;
  }

  v5 = RawProviderForScheme[7];
  if (!v5)
  {
    return 0;
  }

  v13[2] = 0;
  buf[0] = a2 + 24;
  v6 = (*(*v5 + 16))(v13);
  v7 = v13[1];
  if ((v13[0] & 1) == 0)
  {
    v8 = *re::assetsLogObjects(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = v8;
      v11 = [v7 description];
      v12 = [v11 UTF8String];
      LODWORD(buf[0]) = 136315138;
      *(buf + 4) = v12;
      _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "Failed to load data: %s", buf, 0xCu);
    }

    return 0;
  }

  return v7;
}

uint64_t REAssetManagerResolveAssetDescriptor(uint64_t a1, uint64_t a2, re::path *this)
{
  v33 = *MEMORY[0x1E69E9840];
  if (*(a2 + 32))
  {
    v5 = *(a2 + 40);
  }

  else
  {
    v5 = (a2 + 33);
  }

  v6 = re::path::ext(this, a2);
  if (v6 && *v6 == 46)
  {
    re::internal::AssetTypeRegistry::assetTypeWithCompiledExtension(*(a1 + 1808), v6 + 1);
  }

  RawProviderForScheme = re::AssetProviderRegistry::tryGetRawProviderForScheme(*(a1 + 1904), v5);
  if (RawProviderForScheme && (RawProviderForScheme = *(RawProviderForScheme + 17)) != 0)
  {
    *v17 = a2 + 24;
    v8 = (*(*RawProviderForScheme + 16))(buf);
    if (buf[0])
    {
      re::make::shared::object<re::Shareable<re::AssetLoadDescriptor>,re::AssetLoadDescriptor&>(&v19[4], v17);
      v9 = *v17;
    }

    else
    {
      v11 = *&v19[4];
      v12 = *re::assetsLogObjects(v8);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v14 = v12;
        v15 = [v11 description];
        v16 = [v15 UTF8String];
        *v17 = 136315138;
        *&v17[4] = v16;
        _os_log_error_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_ERROR, "Failed to resolve descriptor: %s", v17, 0xCu);
      }

      v9 = 0;
    }

    if (buf[0] == 1)
    {
      if (v31)
      {
        if (BYTE8(v31))
        {
          (*(*v31 + 40))();
        }

        v32 = 0u;
        v31 = 0u;
      }

      if (v26)
      {
        if (v30)
        {
          (*(*v26 + 40))();
        }

        v30 = 0;
        v27 = 0;
        v28 = 0;
        v26 = 0;
        ++v29;
      }

      if (v21)
      {
        if (v25)
        {
          (*(*v21 + 40))();
        }

        v25 = 0;
        v22 = 0;
        v23 = 0;
        v21 = 0;
        ++v24;
      }

      if (*&v19[4] && (v20 & 1) != 0)
      {
        (*(**&v19[4] + 40))();
      }
    }
  }

  else
  {
    v10 = *re::assetsLogObjects(RawProviderForScheme);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *v19 = v5;
      _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "No raw resolve callback registered for %s", buf, 0xCu);
    }

    return 0;
  }

  return v9;
}

uint64_t REAssetProviderBuilderCreate(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 88, 8);
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0;
  ArcSharedObject::ArcSharedObject(v3, 0);
  *v3 = &unk_1F5D2E2B0;
  *(v3 + 40) = 0u;
  *(v3 + 24) = 0u;
  re::DynamicString::setCapacity((v3 + 24), 0);
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0;
  v6[0] = a1;
  v6[1] = strlen(a1);
  re::DynamicString::operator=((v3 + 24), v6);
  return v3;
}

void REAssetProviderBuilderSetCopyCompiledDataCallback(uint64_t a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  v4 = *(a1 + 64);
  *(a1 + 64) = v3;
}

void REAssetProviderBuilderSetREAssetRefLoadCallback(uint64_t a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  v4 = *(a1 + 80);
  *(a1 + 80) = v3;
}

void REAssetProviderBuilderSetCompiledDataLoadCallback(uint64_t a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  v4 = *(a1 + 64);
  *(a1 + 64) = v3;
}

void REAssetProviderBuilderSetAssetDescriptorResolveChildCallback(uint64_t a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  v4 = *(a1 + 72);
  *(a1 + 72) = v3;
}

BOOL REAssetManagerRegisterAssetProviderBuilder(re::AssetManager *a1, uint64_t a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 64);
  if (!v4 && !*(a2 + 80))
  {
    return 0;
  }

  v5 = _Block_copy(v4);
  v38 = re::globalAllocators(v5)[2];
  v39 = 0;
  if (v5)
  {
    v6 = _Block_copy(v5);
    re::FunctionBase<24ul,re::Result<__CFData const*,__CFError *> ()(re::AssetLoadDescriptor const*,unsigned long long)>::destroyCallable(v37);
    v37[0] = &unk_1F5D2E2F8;
    v37[1] = v6;
    v37[2] = a1;
    v39 = v37;
  }

  v7 = _Block_copy(*(a2 + 80));
  v35 = re::globalAllocators(v7)[2];
  v36 = 0;
  if (v7)
  {
    v8 = _Block_copy(v7);
    re::FunctionBase<24ul,__CFError * ()(re::AssetLoadDescriptor const*,unsigned long long,re::internal::AssetReference *)>::destroyCallable(v34);
    v34[0] = &unk_1F5D2E350;
    v34[1] = v8;
    v34[2] = a1;
    v36 = v34;
  }

  v9 = _Block_copy(*(a2 + 72));
  v10 = re::globalAllocators(v9);
  v32 = v10[2];
  v33 = 0;
  if (v9)
  {
    v11 = _Block_copy(v9);
    v10 = re::FunctionBase<24ul,re::Result<re::AssetLoadDescriptor,__CFError *> ()(re::AssetLoadDescriptor const*,char const*,char const*)>::destroyCallable(v31);
    v31[0] = &unk_1F5D2E3B8;
    v31[1] = v11;
    v33 = v31;
  }

  v12 = re::globalAllocators(v10);
  v13 = (*(*v12[2] + 32))(v12[2], 192, 8);
  *v13 = 0u;
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0u;
  *(v13 + 48) = 0u;
  *(v13 + 64) = 0u;
  *(v13 + 80) = 0u;
  *(v13 + 96) = 0u;
  *(v13 + 112) = 0u;
  *(v13 + 128) = 0u;
  *(v13 + 160) = 0u;
  *(v13 + 176) = 0u;
  *(v13 + 144) = 0u;
  ArcSharedObject::ArcSharedObject(v13, 0);
  *v13 = &unk_1F5CBA768;
  v15 = re::globalAllocators(v14);
  *(v13 + 48) = v15[2];
  *(v13 + 56) = 0;
  v16 = re::globalAllocators(v15);
  *(v13 + 88) = v16[2];
  *(v13 + 96) = 0;
  v17 = re::globalAllocators(v16);
  *(v13 + 128) = v17[2];
  *(v13 + 168) = 0;
  *(v13 + 152) = 0u;
  *(v13 + 136) = 0u;
  re::DynamicString::setCapacity((v13 + 144), 0);
  if (*(a2 + 32))
  {
    v18 = *(a2 + 40);
  }

  else
  {
    v18 = (a2 + 33);
  }

  v19 = *(a1 + 226);
  v29 = v38;
  v30 = 0;
  re::FunctionBase<24ul,re::Result<__CFData const*,__CFError *> ()(re::AssetLoadDescriptor const*,unsigned long long)>::operator=<24ul>(v28, v37);
  v26 = v35;
  v27 = 0;
  re::FunctionBase<24ul,__CFError * ()(re::AssetLoadDescriptor const*,unsigned long long,re::internal::AssetReference *)>::operator=<24ul>(v25, v34);
  v23 = v32;
  v24 = 0;
  re::FunctionBase<24ul,re::Result<re::AssetLoadDescriptor,__CFError *> ()(re::AssetLoadDescriptor const*,char const*,char const*)>::operator=<24ul>(v22, v31);
  re::RawAssetProvider::init(v13, v18, v19, v28, v25, v22);
  re::FunctionBase<24ul,re::Result<re::AssetLoadDescriptor,__CFError *> ()(re::AssetLoadDescriptor const*,char const*,char const*)>::destroyCallable(v22);
  re::FunctionBase<24ul,__CFError * ()(re::AssetLoadDescriptor const*,unsigned long long,re::internal::AssetReference *)>::destroyCallable(v25);
  re::FunctionBase<24ul,re::Result<__CFData const*,__CFError *> ()(re::AssetLoadDescriptor const*,unsigned long long)>::destroyCallable(v28);
  v20 = re::AssetManager::registerAssetProvider(a1, v13);

  re::FunctionBase<24ul,re::Result<re::AssetLoadDescriptor,__CFError *> ()(re::AssetLoadDescriptor const*,char const*,char const*)>::destroyCallable(v31);
  re::FunctionBase<24ul,__CFError * ()(re::AssetLoadDescriptor const*,unsigned long long,re::internal::AssetReference *)>::destroyCallable(v34);

  re::FunctionBase<24ul,re::Result<__CFData const*,__CFError *> ()(re::AssetLoadDescriptor const*,unsigned long long)>::destroyCallable(v37);
  return v20;
}

uint64_t REAssetSourceDataProviderCreate(void *a1)
{
  v1 = a1;
  v2 = re::globalAllocators(v1);
  v3 = (*(*v2[2] + 32))(v2[2], 32, 8);
  *v3 = 0u;
  *(v3 + 16) = 0u;
  ArcSharedObject::ArcSharedObject(v3, 0);
  *(v3 + 24) = 0;
  *v3 = &unk_1F5D2E410;
  v4 = _Block_copy(v1);

  v5 = *(v3 + 24);
  *(v3 + 24) = v4;

  return v3;
}

double re::make::shared::object<re::Shareable<re::AssetLoadDescriptor>,re::AssetLoadDescriptor>(re *a1, uint64_t a2)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 168, 8);
  ArcSharedObject::ArcSharedObject(v5, 0);
  *v5 = &unk_1F5CB7F50;
  result = 0.0;
  *(v5 + 40) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 48) = *(a2 + 24);
  v7 = *(a2 + 8);
  *(v5 + 24) = *a2;
  *a2 = 0;
  v8 = *(a2 + 16);
  *(a2 + 24) = 0;
  v10 = *(v5 + 32);
  v9 = *(v5 + 40);
  *(v5 + 32) = v7;
  *(v5 + 40) = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v9;
  *(v5 + 88) = 0;
  *(v5 + 80) = 0;
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  *(v5 + 56) = 0;
  v11 = *(a2 + 40);
  *(v5 + 56) = *(a2 + 32);
  *(v5 + 64) = v11;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v12 = *(v5 + 72);
  *(v5 + 72) = *(a2 + 48);
  *(a2 + 48) = v12;
  v13 = *(v5 + 88);
  *(v5 + 88) = *(a2 + 64);
  *(a2 + 64) = v13;
  ++*(a2 + 56);
  ++*(v5 + 80);
  *(v5 + 128) = 0;
  *(v5 + 104) = 0;
  *(v5 + 112) = 0;
  *(v5 + 96) = 0;
  *(v5 + 120) = 0;
  v14 = *(a2 + 80);
  *(v5 + 96) = *(a2 + 72);
  *(v5 + 104) = v14;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  v15 = *(v5 + 112);
  *(v5 + 112) = *(a2 + 88);
  *(a2 + 88) = v15;
  v16 = *(v5 + 128);
  *(v5 + 128) = *(a2 + 104);
  *(a2 + 104) = v16;
  ++*(a2 + 96);
  ++*(v5 + 120);
  *(v5 + 136) = 0u;
  *(v5 + 152) = 0u;
  *(v5 + 160) = *(a2 + 136);
  v17 = *(a2 + 120);
  *(v5 + 136) = *(a2 + 112);
  *(a2 + 112) = 0;
  v18 = *(a2 + 128);
  *(a2 + 136) = 0;
  v20 = *(v5 + 144);
  v19 = *(v5 + 152);
  *(v5 + 144) = v17;
  *(v5 + 152) = v18;
  *(a2 + 120) = v20;
  *(a2 + 128) = v19;
  *a1 = v5;
  return result;
}

void AssetProviderBuilder::~AssetProviderBuilder(id *this)
{
  AssetProviderBuilder::~AssetProviderBuilder(this);

  JUMPOUT(0x1E6906520);
}

{
  *this = &unk_1F5D2E2B0;

  re::DynamicString::deinit((this + 3));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 1);
}

void re::internal::Callable<REAssetManagerRegisterAssetProviderBuilder::$_0,re::Result<__CFData const*,__CFError *> ()(re::AssetLoadDescriptor const*,unsigned long long)>::~Callable(uint64_t a1)
{

  JUMPOUT(0x1E6906520);
}

void re::internal::Callable<REAssetManagerRegisterAssetProviderBuilder::$_0,re::Result<__CFData const*,__CFError *> ()(re::AssetLoadDescriptor const*,unsigned long long)>::operator()(uint64_t a1@<X0>, uint64_t **a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a3;
  re::make::shared::object<re::Shareable<re::AssetLoadDescriptor>,re::AssetLoadDescriptor const&>(&v12, *a2);
  v7 = v12;
  v11[2] = v12;
  v11[3] = v6;
  re::AssetManager::fromPeerID(*(a1 + 16), v6, v11);
  if (LOBYTE(v11[0]))
  {
    v8 = v11[1];
  }

  else
  {
    v8 = 0;
  }

  v11[4] = v8;
  v11[0] = 0;
  v9 = (*(*(a1 + 8) + 16))();
  if (v7)
  {
  }

  v10 = v11[0];
  if (!v11[0])
  {
    v10 = v9;
  }

  *a4 = v11[0] == 0;
  *(a4 + 8) = v10;
}

void *re::internal::Callable<REAssetManagerRegisterAssetProviderBuilder::$_0,re::Result<__CFData const*,__CFError *> ()(re::AssetLoadDescriptor const*,unsigned long long)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D2E2F8;
  v4 = _Block_copy(*(a1 + 8));
  v5 = *(a1 + 16);
  a2[1] = v4;
  a2[2] = v5;
  return a2;
}

uint64_t re::internal::Callable<REAssetManagerRegisterAssetProviderBuilder::$_0,re::Result<__CFData const*,__CFError *> ()(re::AssetLoadDescriptor const*,unsigned long long)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D2E2F8;
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  *(a2 + 8) = v2;
  return a2;
}

re::DynamicString *re::make::shared::object<re::Shareable<re::AssetLoadDescriptor>,re::AssetLoadDescriptor const&>(re *a1, uint64_t *a2)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 168, 8);
  ArcSharedObject::ArcSharedObject(v5, 0);
  *v5 = &unk_1F5CB7F50;
  re::DynamicString::DynamicString((v5 + 3), a2);
  re::DynamicArray<BOOL>::DynamicArray((v5 + 7), a2 + 4);
  re::DynamicArray<BOOL>::DynamicArray((v5 + 12), a2 + 9);
  result = re::DynamicString::DynamicString((v5 + 17), (a2 + 14));
  *a1 = v5;
  return result;
}

void re::internal::Callable<REAssetManagerRegisterAssetProviderBuilder::$_1,__CFError * ()(re::AssetLoadDescriptor const*,unsigned long long,re::internal::AssetReference *)>::~Callable(uint64_t a1)
{

  JUMPOUT(0x1E6906520);
}

CFErrorRef re::internal::Callable<REAssetManagerRegisterAssetProviderBuilder::$_1,__CFError * ()(re::AssetLoadDescriptor const*,unsigned long long,re::internal::AssetReference *)>::operator()(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  v4 = *a3;
  re::make::shared::object<re::Shareable<re::AssetLoadDescriptor>,re::AssetLoadDescriptor const&>(&v10, *a2);
  v5 = v10;
  v9[2] = v10;
  v9[3] = v4;
  re::AssetManager::fromPeerID(*(a1 + 16), v4, v9);
  if (LOBYTE(v9[0]))
  {
    v6 = v9[1];
  }

  else
  {
    v6 = 0;
  }

  v9[4] = v6;
  v9[0] = 0;
  v7 = (*(*(a1 + 8) + 16))();
  if (v5)
  {
  }

  result = v9[0];
  if (!((v9[0] != 0) | v7 & 1))
  {
    return CFErrorCreate(0, @"REAssetRefErrorDomain", 3, 0);
  }

  return result;
}

void *re::internal::Callable<REAssetManagerRegisterAssetProviderBuilder::$_1,__CFError * ()(re::AssetLoadDescriptor const*,unsigned long long,re::internal::AssetReference *)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D2E350;
  v4 = _Block_copy(*(a1 + 8));
  v5 = *(a1 + 16);
  a2[1] = v4;
  a2[2] = v5;
  return a2;
}

uint64_t re::internal::Callable<REAssetManagerRegisterAssetProviderBuilder::$_1,__CFError * ()(re::AssetLoadDescriptor const*,unsigned long long,re::internal::AssetReference *)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D2E350;
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  *(a2 + 8) = v2;
  return a2;
}

void re::internal::Callable<REAssetManagerRegisterAssetProviderBuilder::$_2,re::Result<re::AssetLoadDescriptor,__CFError *> ()(re::AssetLoadDescriptor const*,char const*,char const*)>::~Callable(uint64_t a1)
{

  JUMPOUT(0x1E6906520);
}

void re::internal::Callable<REAssetManagerRegisterAssetProviderBuilder::$_2,re::Result<re::AssetLoadDescriptor,__CFError *> ()(re::AssetLoadDescriptor const*,char const*,char const*)>::operator()(uint64_t a1@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X8>)
{
  v5 = re::make::shared::object<re::Shareable<re::AssetLoadDescriptor>,re::AssetLoadDescriptor const&>(&v36, *a2);
  re::make::shared::object<re::Shareable<re::AssetLoadDescriptor>>(v5, &v35);
  v34 = 0;
  v6 = *(a1 + 8);
  v7 = v36;
  (*(v6 + 16))();
  if (v7)
  {

    v36 = 0;
  }

  v8 = v35;
  re::DynamicString::DynamicString(&v25, (v35 + 3));
  re::DynamicArray<BOOL>::DynamicArray(v27, v8 + 7);
  re::DynamicArray<BOOL>::DynamicArray(v30, v8 + 12);
  re::DynamicString::DynamicString(v33, (v8 + 17));
  if (v35)
  {

    v35 = 0;
  }

  v9 = v34;
  if (v34)
  {
    *a3 = 0;
    *(a3 + 8) = v9;
  }

  else
  {
    re::DynamicString::DynamicString(&v13, &v25);
    re::DynamicArray<BOOL>::DynamicArray(&v15 + 8, v27);
    re::DynamicArray<BOOL>::DynamicArray(&v18 + 8, v30);
    re::DynamicString::DynamicString((&v21 + 8), v33);
    *a3 = 1;
    *(a3 + 8) = v13;
    v13 = 0;
    v10 = v15;
    *(a3 + 16) = v14;
    *(a3 + 48) = v16;
    v11 = v19;
    *(a3 + 72) = v18;
    v14 = 0u;
    v15 = 0u;
    *(a3 + 32) = v10;
    v16 = 0u;
    ++v17;
    *(a3 + 64) = 1;
    *(a3 + 88) = v11;
    v18 = 0u;
    v19 = 0u;
    ++v20;
    *(a3 + 104) = 1;
    *(a3 + 112) = v21;
    v21 = 0u;
    v12 = v24;
    *(a3 + 136) = v23;
    *(a3 + 144) = v12;
    v23 = 0;
    v24 = 0;
    *(a3 + 128) = v22;
  }

  if (v33[0])
  {
    if (v33[1])
    {
      (*(*v33[0] + 40))();
    }

    memset(v33, 0, sizeof(v33));
  }

  if (v30[0])
  {
    if (v32)
    {
      (*(*v30[0] + 40))();
    }

    v32 = 0;
    memset(v30, 0, sizeof(v30));
    ++v31;
  }

  if (v27[0])
  {
    if (v29)
    {
      (*(*v27[0] + 40))();
    }

    v29 = 0;
    memset(v27, 0, sizeof(v27));
    ++v28;
  }

  if (v25 && (v26 & 1) != 0)
  {
    (*(*v25 + 40))();
  }

  if (v35)
  {
  }

  if (v36)
  {
  }
}

void *re::internal::Callable<REAssetManagerRegisterAssetProviderBuilder::$_2,re::Result<re::AssetLoadDescriptor,__CFError *> ()(re::AssetLoadDescriptor const*,char const*,char const*)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D2E3B8;
  a2[1] = _Block_copy(*(a1 + 8));
  return a2;
}

void *re::internal::Callable<REAssetManagerRegisterAssetProviderBuilder::$_2,re::Result<re::AssetLoadDescriptor,__CFError *> ()(re::AssetLoadDescriptor const*,char const*,char const*)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  *a2 = &unk_1F5D2E3B8;
  a2[1] = v2;
  return a2;
}

void CustomAssetSourceDataProvider::~CustomAssetSourceDataProvider(id *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 1);
}

{

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 1);

  JUMPOUT(0x1E6906520);
}

void *CustomAssetSourceDataProvider::streamName(CustomAssetSourceDataProvider *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_591, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_591))
  {
    re::DynamicString::DynamicString(&unk_1EE1C4CE8);
    __cxa_guard_release(&_MergedGlobals_591);
  }

  return &unk_1EE1C4CE8;
}

void CustomAssetSourceDataProvider::createSlice(CustomAssetSourceDataProvider *this, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) CustomAssetSourceDataProvider does not support slices", "false", "createSlice", 796);
  _os_crash();
  __break(1u);
}

void CustomAssetSourceDataProvider::invokeWithStream(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 24);
  if (!v4)
  {
    v9 = "Cannot fetch asset source data: no fetch callback.";
    goto LABEL_6;
  }

  v14 = 0;
  v6 = (*(v4 + 16))(v4, &v14);
  if (!v6)
  {
    if (v14)
    {
      v11 = v14;
      *a3 = 0;
      *(a3 + 8) = v11;

      return;
    }

    v9 = "Failed to fetch asset source data.";
LABEL_6:
    re::WrappedError::make(@"REAssetRefErrorDomain", 7, v9, v12);
    v10 = v12[0];
    v12[0] = 0;
    *a3 = 0;
    *(a3 + 8) = v10;

    return;
  }

  v7 = v6;
  if (CFGetRetainCount(v6) == 1)
  {
    re::CFDataSeekableInputStream::CFDataSeekableInputStream(v12, v7, 1, 0);
    CFRelease(v7);
    (*(**(a2 + 32) + 16))(*(a2 + 32), v12);
    v12[0] = &unk_1F5D0A588;
    re::CFDataSeekableInputStream::postDetachCleanup(v12);
    v12[0] = &unk_1F5D0A468;
    re::internal::MemoryInputStream<re::FixedArray<char>>::~MemoryInputStream(&v13);
  }

  else
  {
    re::internal::assertLog(4, v8, "assertion failure: '%s' (%s:line %i) Returned data must not be retained by the source data provider", "CFGetRetainCount(sourceData) == 1", "invokeWithStream", 816);
    _os_crash();
    __break(1u);
  }
}

double REMakeDynamicOffset@<D0>(uint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>, double a5@<D3>, double a6@<D5>)
{
  v6 = vdupq_lane_s32(*&a5, 0);
  *&a6 = *&a5 * 0.1;
  v7 = vdupq_lane_s32(*&a6, 0);
  *(a1 + 528) = 0;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 448) = 0u;
  *a1 = a2;
  *(a1 + 16) = a3;
  *(a1 + 32) = a4;
  *(a1 + 48) = a2;
  *(a1 + 64) = a3;
  *(a1 + 80) = a4;
  *(a1 + 96) = a2;
  *(a1 + 112) = a3;
  *(a1 + 128) = a4;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0x3F80000000000000;
  *(a1 + 176) = v6;
  *(a1 + 192) = v6;
  *(a1 + 208) = LODWORD(a5);
  v8.i64[0] = 0x80000000800000;
  v8.i64[1] = 0x80000000800000;
  v9 = vnegq_f32(v8);
  *(a1 + 224) = v8;
  *(a1 + 240) = v9;
  *(a1 + 256) = xmmword_1E30476A0;
  *(a1 + 272) = -2.84809454e-306;
  v10 = vdupq_n_s32(0x3E4CCCCDu);
  *(a1 + 288) = v8;
  *(a1 + 304) = v9;
  *(a1 + 320) = 0u;
  *(a1 + 336) = v10;
  *(a1 + 352) = v7;
  result = 0.125;
  *(a1 + 368) = 0x3FC0000000000000;
  *(a1 + 376) = *&a5 * 0.1;
  *(a1 + 384) = 0u;
  *(a1 + 400) = v10;
  *(a1 + 416) = v7;
  *(a1 + 432) = 0u;
  return result;
}

double REDynamicOffsetCalculateConstrainedPose(float32x4_t *a1, float32x4_t a2, float32x4_t a3)
{
  v5[0] = a2;
  v5[1] = a3;
  re::DynamicOffsetF::calculateConstrainedPose(a1, v5, &v4);
  return *v4.i64;
}

double REDynamicOffsetCalculateConstrainedScale(float32x4_t *a1, float32x4_t a2)
{
  a2.i32[3] = 0;
  v2 = a1[18];
  v3 = a1[19];
  v2.i32[3] = 0;
  v4 = vmaxnmq_f32(a2, v2);
  v4.i32[3] = 0;
  v3.i32[3] = 0;
  *&result = vminnmq_f32(v4, v3).u64[0];
  return result;
}

float32x4_t REDynamicOffsetStartInteraction(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 16);
  *(a1 + 48) = *a1;
  *(a1 + 64) = v2;
  v3 = *(a1 + 32);
  *(a1 + 80) = v3;
  *(a1 + 96) = v1;
  *(a1 + 112) = v2;
  *(a1 + 128) = v3;
  v1.i64[0] = 0x80000000800000;
  v1.i64[1] = 0x80000000800000;
  result = vnegq_f32(v1);
  *(a1 + 496) = result;
  *(a1 + 512) = result;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = result;
  *(a1 + 528) = 1;
  return result;
}

void REDynamicOffsetUpdateInteraction(uint64_t a1, __n128 a2, __n128 a3, float32x4_t a4, float a5)
{
  v6[0] = a2;
  v6[1] = a3;
  v5 = a4;
  a2.n128_f32[0] = a5;
  re::DynamicOffsetF::updateInteraction(a1, v6, &v5, a2.n128_f64[0]);
}

uint64_t REMemoryStatisticsGetGlobalStatistics(re *a1)
{
  v1 = re::globalMemoryTracker(a1);
  re::MemoryTracker::statistics(v1);
  return v2;
}

void REMemoryStatisticsLogGlobalLeaks(re *a1)
{
  v1 = re::globalMemoryTracker(a1);

  re::MemoryTracker::logMemoryLeaks(v1);
}

void *REAREnvironmentProbeComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::AREnvironmentProbeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
}

void *REProbeClusterExclusionComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::ProbeClusterExclusionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
}

uint64_t REAREnvironmentProbeComponentSetTexture(uint64_t a1, uint64_t a2)
{
  re::AssetAPIHelper::assetHandleCreate(a2, &v6);
  v3 = *(a1 + 32);
  *(a1 + 32) = v6;
  v6 = v3;
  v4 = *(a1 + 48);
  *(a1 + 48) = v7;
  v7 = v4;
  re::AssetHandle::~AssetHandle(&v6);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

id REResourceFetchServiceCopyEndpoint(uint64_t a1)
{
  (*(*a1 + 16))(&v3);
  v1 = [v3 _endpoint];

  return v1;
}

void REResourceSharingServiceConnectWithPeerEndpoint(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x1E696B0E0];
  v6 = a2;
  v8 = objc_alloc_init(v5);

  [v8 _setEndpoint:v6];
  v7 = *(*a1 + 16);

  v7(a1, &v8, a3);
}

uint64_t REPeerIDArrayGetIDAtIndex(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 40) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 56) + 8 * a2);
}

uint64_t REResourceSharingServiceCopyConnectedPeers(uint64_t a1)
{
  re::make::shared::object<SharedPeerIDArray>(&v5);
  (*(*a1 + 24))(v4, a1);
  v2 = v5;
  re::DynamicArray<unsigned long long>::operator=(v5 + 24, v4);
  if (v4[0] && v4[4])
  {
    (*(*v4[0] + 40))();
  }

  return v2;
}

uint64_t REResourceFetchServiceCopyConnectedPeers(uint64_t a1)
{
  re::make::shared::object<SharedPeerIDArray>(&v5);
  (*(*a1 + 48))(v4, a1);
  v2 = v5;
  re::DynamicArray<unsigned long long>::operator=(v5 + 24, v4);
  if (v4[0] && v4[4])
  {
    (*(*v4[0] + 40))();
  }

  return v2;
}

uint64_t (***REResourceFetchServiceSetTrackableResourceHandler(uint64_t a1, void *a2))(void)
{
  v11[5] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _Block_copy(v3);
  v5 = re::globalAllocators(v4)[2];
  v11[0] = &unk_1F5D2E478;
  v11[1] = v4;
  v11[3] = v5;
  v11[4] = v11;
  v9 = v5;
  v10 = 0;
  re::FunctionBase<24ul,void ()(NSObject  {objcproto13OS_xpc_object}*,unsigned int)>::operator=<24ul>(v8, v11);
  v6 = *(*a1 + 144);

  v6(a1, v8);
  re::FunctionBase<24ul,void ()(NSObject  {objcproto13OS_xpc_object}*,unsigned int)>::destroyCallable(v8);
  return re::FunctionBase<24ul,void ()(NSObject  {objcproto13OS_xpc_object}*,unsigned int)>::destroyCallable(v11);
}

uint64_t REResourceFetchServiceAddOnConnectionAddedCallback(uint64_t a1, void *a2)
{
  v12[5] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _Block_copy(v3);
  v5 = re::globalAllocators(v4)[2];
  v12[0] = &unk_1F5D2E4E0;
  v12[1] = v4;
  v12[3] = v5;
  v12[4] = v12;
  v10 = v5;
  v11 = 0;
  re::FunctionBase<24ul,void ()(int,audit_token_t,unsigned long long)>::operator=<24ul>(v9, v12);
  v6 = *(*a1 + 152);

  v7 = v6(a1, v9);
  re::FunctionBase<24ul,void ()(int,audit_token_t,unsigned long long)>::destroyCallable(v9);
  re::FunctionBase<24ul,void ()(int,audit_token_t,unsigned long long)>::destroyCallable(v12);
  return v7;
}

uint64_t REResourceFetchServiceAddOnConnectionInterruptedOrInvalidatedCallback(uint64_t a1, void *a2)
{
  v12[5] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _Block_copy(v3);
  v5 = re::globalAllocators(v4)[2];
  v12[0] = &unk_1F5D2E548;
  v12[1] = v4;
  v12[3] = v5;
  v12[4] = v12;
  v10 = v5;
  v11 = 0;
  re::FunctionBase<24ul,void ()(int,audit_token_t,unsigned long long)>::operator=<24ul>(v9, v12);
  v6 = *(*a1 + 168);

  v7 = v6(a1, v9);
  re::FunctionBase<24ul,void ()(int,audit_token_t,unsigned long long)>::destroyCallable(v9);
  re::FunctionBase<24ul,void ()(int,audit_token_t,unsigned long long)>::destroyCallable(v12);
  return v7;
}

void re::internal::Callable<REResourceFetchServiceSetTrackableResourceHandler::$_0,void ()(NSObject  {objcproto13OS_xpc_object}*,unsigned int)>::~Callable(uint64_t a1)
{

  JUMPOUT(0x1E6906520);
}

void *re::internal::Callable<REResourceFetchServiceSetTrackableResourceHandler::$_0,void ()(NSObject  {objcproto13OS_xpc_object}*,unsigned int)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D2E478;
  a2[1] = _Block_copy(*(a1 + 8));
  return a2;
}

void *re::internal::Callable<REResourceFetchServiceSetTrackableResourceHandler::$_0,void ()(NSObject  {objcproto13OS_xpc_object}*,unsigned int)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  *a2 = &unk_1F5D2E478;
  a2[1] = v2;
  return a2;
}

void re::internal::Callable<REResourceFetchServiceAddOnConnectionAddedCallback::$_0,void ()(int,audit_token_t,unsigned long long)>::~Callable(uint64_t a1)
{

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::Callable<REResourceFetchServiceAddOnConnectionAddedCallback::$_0,void ()(int,audit_token_t,unsigned long long)>::operator()(uint64_t a1, unsigned int *a2, _OWORD *a3, void *a4)
{
  v4 = *a2;
  v5 = a3[1];
  v7[0] = *a3;
  v7[1] = v5;
  return (*(*(a1 + 8) + 16))(*(a1 + 8), v4, v7, *a4);
}

void *re::internal::Callable<REResourceFetchServiceAddOnConnectionAddedCallback::$_0,void ()(int,audit_token_t,unsigned long long)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D2E4E0;
  a2[1] = _Block_copy(*(a1 + 8));
  return a2;
}

void *re::internal::Callable<REResourceFetchServiceAddOnConnectionAddedCallback::$_0,void ()(int,audit_token_t,unsigned long long)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  *a2 = &unk_1F5D2E4E0;
  a2[1] = v2;
  return a2;
}

void re::internal::Callable<REResourceFetchServiceAddOnConnectionInterruptedOrInvalidatedCallback::$_0,void ()(int,audit_token_t,unsigned long long)>::~Callable(uint64_t a1)
{

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::Callable<REResourceFetchServiceAddOnConnectionInterruptedOrInvalidatedCallback::$_0,void ()(int,audit_token_t,unsigned long long)>::operator()(uint64_t a1, unsigned int *a2, _OWORD *a3, void *a4)
{
  v4 = *a2;
  v5 = a3[1];
  v7[0] = *a3;
  v7[1] = v5;
  return (*(*(a1 + 8) + 16))(*(a1 + 8), v4, v7, *a4);
}

void *re::internal::Callable<REResourceFetchServiceAddOnConnectionInterruptedOrInvalidatedCallback::$_0,void ()(int,audit_token_t,unsigned long long)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D2E548;
  a2[1] = _Block_copy(*(a1 + 8));
  return a2;
}

void *re::internal::Callable<REResourceFetchServiceAddOnConnectionInterruptedOrInvalidatedCallback::$_0,void ()(int,audit_token_t,unsigned long long)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  *a2 = &unk_1F5D2E548;
  a2[1] = v2;
  return a2;
}

void re::make::shared::object<SharedPeerIDArray>(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 64, 8);
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  ArcSharedObject::ArcSharedObject(v3, 0);
  *(v3 + 24) = 0;
  *v3 = &unk_1F5D2E5A0;
  *(v3 + 56) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *a1 = v3;
}

void SharedPeerIDArray::~SharedPeerIDArray(SharedPeerIDArray *this)
{
  *this = &unk_1F5D2E5A0;
  re::DynamicArray<unsigned long>::deinit(this + 24);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5D2E5A0;
  re::DynamicArray<unsigned long>::deinit(this + 24);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void *RERigidBodyComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
}

float RERigidBodyComponentGetMassFrame@<S0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2);
  v5 = *(v4 + 48);
  *a3 = *(v4 + 32);
  *(a3 + 16) = v5;
  *(a3 + 32) = *(v4 + 64);
  result = *(v4 + 80);
  *(a3 + 48) = result;
  return result;
}

uint64_t RERigidBodyComponentSetMassFrame(uint64_t a1, uint64_t a2)
{
  v3 = re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2);
  v4 = *(a2 + 48);
  v6 = *(a2 + 16);
  v5 = *(a2 + 32);
  *(v3 + 32) = *a2;
  *(v3 + 48) = v6;
  *(v3 + 64) = v5;
  *(v3 + 80) = v4;

  return re::ecs2::Component::enqueueMarkDirty(v3);
}

uint64_t RERigidBodyComponentSetMaterial(uint64_t a1, uint64_t a2)
{
  v3 = re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2);
  re::AssetAPIHelper::assetHandleCreate(a2, &v7);
  v4 = *(v3 + 96);
  *(v3 + 96) = v7;
  v7 = v4;
  v5 = *(v3 + 112);
  *(v3 + 112) = v8;
  v8 = v5;
  re::AssetHandle::~AssetHandle(&v7);
  return re::ecs2::Component::enqueueMarkDirty(v3);
}

uint64_t RERigidBodyComponentSetMotionType(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2);
  *(v3 + 120) = v2;

  return re::ecs2::Component::enqueueMarkDirty(v3);
}

uint64_t RERigidBodyComponentSetCCDEnabled(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2);
  *(v3 + 132) = v2;

  return re::ecs2::Component::enqueueMarkDirty(v3);
}

uint64_t RERigidBodyComponentSetCCDVelocityThreshold(uint64_t a1, uint64_t a2, float a3)
{
  v4 = re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2);
  *(v4 + 136) = a3;

  return re::ecs2::Component::enqueueMarkDirty(v4);
}

uint64_t RERigidBodyComponentSetLockRotationX(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2);
  *(v3 + 140) = v2;

  return re::ecs2::Component::enqueueMarkDirty(v3);
}

uint64_t RERigidBodyComponentSetLockRotationY(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2);
  *(v3 + 141) = v2;

  return re::ecs2::Component::enqueueMarkDirty(v3);
}

uint64_t RERigidBodyComponentSetLockRotationZ(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2);
  *(v3 + 142) = v2;

  return re::ecs2::Component::enqueueMarkDirty(v3);
}

uint64_t RERigidBodyComponentSetLockTranslationX(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2);
  *(v3 + 143) = v2;

  return re::ecs2::Component::enqueueMarkDirty(v3);
}

uint64_t RERigidBodyComponentSetLockTranslationY(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2);
  *(v3 + 144) = v2;

  return re::ecs2::Component::enqueueMarkDirty(v3);
}

uint64_t RERigidBodyComponentSetLockTranslationZ(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2);
  *(v3 + 145) = v2;

  return re::ecs2::Component::enqueueMarkDirty(v3);
}

uint64_t RERigidBodyComponentSetCanSleep(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2);
  *(v3 + 146) = v2;

  return re::ecs2::Component::enqueueMarkDirty(v3);
}

uint64_t RERigidBodyComponentSetRemoteAuthorityAllowed(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2);
  *(v3 + 147) = v2;

  return re::ecs2::Component::enqueueMarkDirty(v3);
}

uint64_t RERigidBodyComponentGetRigidBody(uint64_t a1, uint64_t a2)
{
  v3 = re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2);
  v4 = *(v3 + 16);
  if (v4)
  {
    do
    {
      v5 = v4;
      v4 = *(v4 + 32);
    }

    while (v4);
    v6 = *(v5 + 24);
    if (v6)
    {
      re::ecs2::PhysicsSystem::ensureSimulationUpdatedWithECS(v6, v2);
    }
  }

  return *(v3 + 336);
}

uint64_t RERigidBodyComponentTeleport(uint64_t a1, uint64_t a2)
{
  v2 = re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2);
  re::ecs2::RigidBodyComponent::teleport(v2);

  return re::ecs2::Component::enqueueMarkDirty(v2);
}

uint64_t RERigidBodyComponentIncrementVersion(uint64_t a1, uint64_t a2)
{
  v2 = re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2);
  ++*(v2 + 124);

  return re::ecs2::Component::enqueueMarkDirty(v2);
}

uint64_t RERigidBodyComponentSetLinearDamping(uint64_t a1, uint64_t a2, float a3)
{
  v4 = re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2);
  *(v4 + 148) = a3;

  return re::ecs2::Component::enqueueMarkDirty(v4);
}

uint64_t RERigidBodyComponentSetAngularDamping(uint64_t a1, uint64_t a2, float a3)
{
  v4 = re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2);
  *(v4 + 152) = a3;

  return re::ecs2::Component::enqueueMarkDirty(v4);
}

uint64_t RERigidBodyComponentSetGravityEnabled(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2);
  *(v3 + 156) = v2;

  return re::ecs2::Component::enqueueMarkDirty(v3);
}

uint64_t RERigidBodyComponentAddUserForce(uint64_t a1, uint64_t a2, float32x4_t a3)
{
  v3 = re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2);
  v3[10] = vaddq_f32(v3[10], a3);

  return re::ecs2::Component::enqueueMarkDirty(v3);
}

uint64_t RERigidBodyComponentAddUserTorque(uint64_t a1, uint64_t a2, float32x4_t a3)
{
  v3 = re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2);
  v3[11] = vaddq_f32(v3[11], a3);

  return re::ecs2::Component::enqueueMarkDirty(v3);
}

uint64_t RERigidBodyComponentAddUserLinearImpulse(uint64_t a1, uint64_t a2, float32x4_t a3)
{
  v3 = re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2);
  v3[12] = vaddq_f32(v3[12], a3);

  return re::ecs2::Component::enqueueMarkDirty(v3);
}

uint64_t RERigidBodyComponentAddUserAngularImpulse(uint64_t a1, uint64_t a2, float32x4_t a3)
{
  v3 = re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2);
  v3[13] = vaddq_f32(v3[13], a3);

  return re::ecs2::Component::enqueueMarkDirty(v3);
}

re::RealityFile **RERealityFileCreateByOpeningFileAtURL(__CFURL *a1, re::RealityFile **a2)
{
  if (v16)
  {
    v3 = *&v17[7];
  }

  else
  {
    v3 = v17;
  }

  re::RealityFile::makeByOpeningFileAtURL(v3, v13);
  if (v13[0])
  {
    v12 = v14;
    re::RealityFileDescriptor::makeWithURL(&v15, v6);
    if (v9)
    {
      if (BYTE8(v9))
      {
        (*(*v9 + 40))();
      }

      v10 = 0u;
      v9 = 0u;
    }

    if (v7 && (v8 & 1) != 0)
    {
      (*(*v7 + 40))();
    }

    a2 = v11;
  }

  else if (a2)
  {
    v4 = v14;
    *a2 = v4;
    if (v4)
    {
      CFRetain(v4);
    }

    a2 = 0;
  }

  re::Result<re::SharedPtr<re::RealityFileWriter::AssetInfo>,re::WrappedError>::~Result(v13);
  if (v15 && (v16 & 1) != 0)
  {
    (*(*v15 + 40))();
  }

  return a2;
}

void anonymous namespace::toDynamicString(_anonymous_namespace_ *this, const __CFURL *a2)
{
  v5 = [(__CFURL *)a2 absoluteString];
  v3 = v5;
  v4 = [v5 UTF8String];
}

uint64_t RERealityFileCreateByOpeningFileAtURLWithAliasName(uint64_t a1, const __CFURL *a2, const char *a3, CFErrorRef *a4)
{
  v35 = *MEMORY[0x1E69E9840];
  if (v27)
  {
    v7 = v29;
  }

  else
  {
    v7 = v28;
  }

  re::RealityFile::makeByOpeningFileAtURL(v7, v24);
  if ((v24[0] & 1) == 0)
  {
    if (a4)
    {
      v13 = v25;
      *a4 = v13;
      if (v13)
      {
        CFRetain(v13);
      }
    }

    goto LABEL_39;
  }

  v23 = v25;
  v9 = *(a1 + 2008);
  re::DynamicString::DynamicString(v21, &v26);
  v10 = re::NamedFileRegistry::registerFileNameAlias(v9, v22, v21);
  if (*&v21[0])
  {
    if (BYTE8(v21[0]))
    {
      (*(**&v21[0] + 40))();
    }

    memset(v21, 0, sizeof(v21));
  }

  v11 = *&v22[0];
  if (*&v22[0])
  {
    if (BYTE8(v22[0]))
    {
      v11 = (*(**&v22[0] + 40))();
    }

    memset(v22, 0, sizeof(v22));
  }

  if (v10)
  {
    re::RealityFileDescriptor::makeWithNameAlias(v19, buf);
    if (v33)
    {
      if (BYTE8(v33))
      {
        (*(*v33 + 40))(v33, v34);
      }

      v34 = 0u;
      v33 = 0u;
    }

    if (*&v31[4])
    {
      if (v31[12])
      {
        (*(**&v31[4] + 40))(*&v31[4], v32);
      }

      v32 = 0u;
      *&v31[4] = 0u;
    }

    if (*&v19[0])
    {
      if (BYTE8(v19[0]))
      {
        (*(**&v19[0] + 40))();
      }

      memset(v19, 0, sizeof(v19));
    }

    v12 = v20;
    goto LABEL_40;
  }

  if (!a4)
  {
LABEL_39:
    v12 = 0;
    goto LABEL_40;
  }

  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v14 = CoreRELog::log;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    if (v27)
    {
      v15 = v29;
    }

    else
    {
      v15 = v28;
    }

    *buf = 136315394;
    *v31 = v15;
    *&v31[8] = 2080;
    *&v31[10] = a3;
    _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEFAULT, "failed to register RealityFile %s, alias %s is already registered", buf, 0x16u);
  }

  v12 = 0;
  *a4 = CFErrorCreate(0, @"RERealityFileErrorDomain", 20, 0);
LABEL_40:
  re::Result<re::SharedPtr<re::RealityFileWriter::AssetInfo>,re::WrappedError>::~Result(v24);
  if (v26 && (v27 & 1) != 0)
  {
    (*(*v26 + 40))(v26, v29, v16, v17);
  }

  return v12;
}