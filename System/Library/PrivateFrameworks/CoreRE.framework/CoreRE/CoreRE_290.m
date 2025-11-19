void REMaterialDefinitionAssetGetParametersDictionary(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  re::AssetAPIHelper::assetHandleCreate(a1, v13);
  v10 = re::AssetHandle::blockUntilLoaded<re::MaterialDefinitionAsset>(v13);
  getValidMaterialDefinitionFromDefinitionAsset(&v12, v10);
  v11 = v12;
  if (v12)
  {
    appendKeySet(v10 + 2424, v7);
    appendKeySet(v10 + 2448, v7);
    appendKeySet(v10 + 2400, v8);
    buildConstantDictionaryFromParameters(v10 + 2376, v11 + 248, v9);
  }

  re::AssetHandle::~AssetHandle(v13);
}

uint64_t REMaterialDefinitionAssetGetParameterDisplayName(uint64_t a1, char *a2)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v15);
  v3 = re::AssetHandle::blockUntilLoaded<re::MaterialDefinitionAsset>(v15);
  if (v3)
  {
    v4 = *(v3 + 744);
    if (v4)
    {
      v5 = (v4 + 8);
    }

    if (a2)
    {
      v6 = *a2;
      if (*a2)
      {
        v7 = a2[1];
        if (v7)
        {
          v8 = (a2 + 2);
          do
          {
            v6 = 31 * v6 + v7;
            v9 = *v8++;
            v7 = v9;
          }

          while (v9);
        }

        v6 &= ~0x8000000000000000;
      }
    }

    else
    {
      v6 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v14 = v6;
    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) >> 27));
    re::HashTable<unsigned long,re::Pair<re::FixedArray<unsigned int>,signed char,true>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(v4 + 1376, &v14, v11 ^ (v11 >> 31), v16);
    if (v17 == 0x7FFFFFFF)
    {
      v10 = 0;
      if (!v4)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v12 = *(v4 + 1392) + 48 * v17;
      if (*(v12 + 24))
      {
        v10 = *(v12 + 32);
      }

      else
      {
        v10 = v12 + 25;
      }
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_19:
  re::AssetHandle::~AssetHandle(v15);
  return v10;
}

void REMaterialAssetGetParametersDictionary(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  re::AssetAPIHelper::assetHandleCreate(a1, &v18);
  if (!v19)
  {
    re::MaterialDefinitionAsset::assetType(v10);
    goto LABEL_10;
  }

  v11 = *(v19 + 280);
  if (v11 != re::MaterialDefinitionAsset::assetType(v10))
  {
LABEL_10:
    v16 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(&v18);
    if (!v16)
    {
      goto LABEL_14;
    }

    v15 = *(*(v16 + 1776) + 16);
    v14 = re::AssetHandle::blockUntilLoaded<re::MaterialDefinitionAsset>((v16 + 40));
    goto LABEL_12;
  }

  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v12 = CoreRELog::log;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    *v17 = 0;
    _os_log_fault_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_FAULT, "WARNING: REMaterialAssetGetParametersDictionary only takes MaterialAsset objects; if you have a MaterialDefinitionAsset, use REMaterialDefinitionAssetGetParametersDictionary instead.", v17, 2u);
  }

  v13 = re::AssetHandle::blockUntilLoaded<re::MaterialDefinitionAsset>(&v18);
  if (v13)
  {
    v14 = v13;
    v15 = *(v13 + 744);
LABEL_12:
    if (*(v15 + 120))
    {
      appendKeySet(v14 + 2424, v7);
      appendKeySet(v14 + 2448, v7);
      appendKeySet(v14 + 2400, v8);
      buildConstantDictionaryFromParameters(v14 + 2376, v15 + 248, v9);
    }
  }

LABEL_14:
  re::AssetHandle::~AssetHandle(&v18);
}

void REMaterialDefinitionAssetGetParameterKeys(uint64_t a1, void *a2)
{
  v3 = a2;
  re::AssetAPIHelper::assetHandleCreate(a1, v7);
  v4 = re::AssetHandle::blockUntilLoaded<re::MaterialDefinitionAsset>(v7);
  getValidMaterialDefinitionFromDefinitionAsset(&v6, v4);
  v5 = v6;
  if (v6)
  {
    appendKeySet(v4 + 2424, v3);
    appendKeySet(v4 + 2448, v3);
    appendKeySet(v4 + 2400, v3);
    appendKeySet(v4 + 2472, v3);
    appendKeySet(v4 + 2376, v3);
  }

  re::AssetHandle::~AssetHandle(v7);
}

void REMaterialAssetGetMaterialParameterBlockKeys(uint64_t a1, void *a2)
{
  v3 = a2;
  re::AssetAPIHelper::assetHandleCreate(a1, v26);
  v4 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(v26);
  if (v4)
  {
    v5 = v4;
    v6 = v3;
    v7 = *(v5 + 192);
    if (v7)
    {
      v8 = 0;
      v9 = *(v5 + 176);
      while (1)
      {
        v10 = *v9;
        v9 += 22;
        if (v10 < 0)
        {
          break;
        }

        if (v7 == ++v8)
        {
          LODWORD(v8) = *(v5 + 192);
          break;
        }
      }
    }

    else
    {
      LODWORD(v8) = 0;
    }

    if (v8 != v7)
    {
      v11 = *(v5 + 176);
      do
      {
        v12 = v11 + 88 * v8;
        if (*(v12 + 16))
        {
          v13 = *(v12 + 24);
        }

        else
        {
          v13 = v12 + 17;
        }

        v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v13];
        [v6 addObject:v14];

        if (*(v5 + 192) <= (v8 + 1))
        {
          v15 = v8 + 1;
        }

        else
        {
          v15 = *(v5 + 192);
        }

        v11 = *(v5 + 176);
        while (v15 - 1 != v8)
        {
          LODWORD(v8) = v8 + 1;
          if ((*(v11 + 88 * v8) & 0x80000000) != 0)
          {
            goto LABEL_21;
          }
        }

        LODWORD(v8) = v15;
LABEL_21:
        ;
      }

      while (v8 != v7);
    }

    v16 = v6;
    v17 = *(v5 + 240);
    if (v17)
    {
      v18 = 0;
      v19 = *(v5 + 224);
      while (1)
      {
        v20 = *v19;
        v19 += 40;
        if (v20 < 0)
        {
          break;
        }

        if (v17 == ++v18)
        {
          LODWORD(v18) = *(v5 + 240);
          break;
        }
      }
    }

    else
    {
      LODWORD(v18) = 0;
    }

    if (v18 != v17)
    {
      v21 = *(v5 + 224);
      do
      {
        v22 = v21 + 160 * v18;
        if (*(v22 + 16))
        {
          v23 = *(v22 + 24);
        }

        else
        {
          v23 = v22 + 17;
        }

        v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v23];
        [v16 addObject:v24];

        if (*(v5 + 240) <= (v18 + 1))
        {
          v25 = v18 + 1;
        }

        else
        {
          v25 = *(v5 + 240);
        }

        v21 = *(v5 + 224);
        while (v25 - 1 != v18)
        {
          LODWORD(v18) = v18 + 1;
          if ((*(v21 + 160 * v18) & 0x80000000) != 0)
          {
            goto LABEL_41;
          }
        }

        LODWORD(v18) = v25;
LABEL_41:
        ;
      }

      while (v18 != v17);
    }

    buildKeySetFromParameters<re::DynamicString>(v5 + 112, v16);
    buildKeySetFromParameters<re::DynamicString>(v5 + 64, v16);
  }

  re::AssetHandle::~AssetHandle(v26);
}

void buildKeySetFromParameters<re::DynamicString>(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = 0;
    v5 = *(a1 + 16);
    while (1)
    {
      v6 = *v5;
      v5 += 20;
      if (v6 < 0)
      {
        break;
      }

      if (v3 == ++v4)
      {
        LODWORD(v4) = *(a1 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v4) = 0;
  }

  if (v4 != v3)
  {
    v7 = *(a1 + 16);
    do
    {
      v8 = v7 + 80 * v4;
      if (*(v8 + 16))
      {
        v9 = *(v8 + 24);
      }

      else
      {
        v9 = v8 + 17;
      }

      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v9];
      [v12 addObject:v10];

      if (*(a1 + 32) <= (v4 + 1))
      {
        v11 = v4 + 1;
      }

      else
      {
        v11 = *(a1 + 32);
      }

      v7 = *(a1 + 16);
      while (v11 - 1 != v4)
      {
        LODWORD(v4) = v4 + 1;
        if ((*(v7 + 80 * v4) & 0x80000000) != 0)
        {
          goto LABEL_20;
        }
      }

      LODWORD(v4) = v11;
LABEL_20:
      ;
    }

    while (v4 != v3);
  }
}

uint64_t REMaterialAssetGetMaterialDefinition(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v5);
  v1 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(v5);
  if (v1)
  {
    re::AssetHandle::AssetHandle(v4, (v1 + 40));
    re::AssetHandle::loadNow(v4[1], 0);
    v2 = v4[0];
    re::AssetHandle::~AssetHandle(v4);
  }

  else
  {
    v2 = 0;
  }

  re::AssetHandle::~AssetHandle(v5);
  return v2;
}

uint64_t REMaterialAssetGetFunctionLinkCount(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v4);
  v1 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(v4);
  if (v1)
  {
    v2 = *(v1 + 392);
  }

  else
  {
    v2 = 0;
  }

  re::AssetHandle::~AssetHandle(v4);
  return v2;
}

uint64_t REMaterialAssetGetFunctionLinkAtIndex(uint64_t a1, unint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  re::AssetAPIHelper::assetHandleCreate(a1, v7);
  v3 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(v7);
  if (v3)
  {
    v4 = *(v3 + 392);
    if (v4 <= a2)
    {
      v7[3] = 0;
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v16 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v8 = 136315906;
      v9 = "operator[]";
      v10 = 1024;
      v11 = 797;
      v12 = 2048;
      v13 = a2;
      v14 = 2048;
      v15 = v4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v5 = *(v3 + 408) + 272 * a2;
  }

  else
  {
    v5 = 0;
  }

  re::AssetHandle::~AssetHandle(v7);
  return v5;
}

id REFunctionLinkGetConstantValues(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E6974060]);
  v3 = *(a1 + 216);
  if (v3)
  {
    v4 = 0;
    v5 = *(a1 + 200);
    while (1)
    {
      v6 = *v5;
      v5 += 16;
      if (v6 < 0)
      {
        break;
      }

      if (v3 == ++v4)
      {
        LODWORD(v4) = *(a1 + 216);
        break;
      }
    }
  }

  else
  {
    LODWORD(v4) = 0;
  }

  while (v4 != v3)
  {
    v7 = *(a1 + 200) + (v4 << 6);
    v10 = *(v7 + 40);
    v8 = v7 + 40;
    v9 = v10;
    if (*(a1 + 248) <= v10)
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v11 = v8 - 32;
    v12 = *(a1 + 264);
    v13 = *(v8 + 8);
    v14 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (*(v11 + 8))
    {
      v15 = *(v11 + 16);
    }

    else
    {
      v15 = v11 + 9;
    }

    v16 = [v14 initWithUTF8String:v15];
    [v2 setConstantValue:v12 + v9 type:v13 withName:v16];

    v17 = *(a1 + 216);
    if (v17 <= v4 + 1)
    {
      v17 = v4 + 1;
    }

    while (v17 - 1 != v4)
    {
      LODWORD(v4) = v4 + 1;
      if ((*(*(a1 + 200) + (v4 << 6)) & 0x80000000) != 0)
      {
        goto LABEL_19;
      }
    }

    LODWORD(v4) = v17;
LABEL_19:
    ;
  }

  return v2;
}

uint64_t REFunctionLinkCopyShaderFunctionName(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v1 = *(a1 + 24);
  }

  else
  {
    v1 = a1 + 17;
  }

  return [MEMORY[0x1E696AEC0] stringWithUTF8String:v1];
}

uint64_t REFunctionLinkCopyLinkedFunctionName(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v1 = *(a1 + 56);
  }

  else
  {
    v1 = a1 + 49;
  }

  return [MEMORY[0x1E696AEC0] stringWithUTF8String:v1];
}

uint64_t REFunctionLinkGetLinkedShaderAPIAtIndex(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 112) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 128) + 4 * a2);
}

id REFunctionLinkCopyFunctionConstantDictionary(uint64_t a1)
{
  if (*(a1 + 164))
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:*(a1 + 164)];
    v3 = *(a1 + 168);
    if (v3)
    {
      v4 = 0;
      v5 = *(a1 + 152);
      while (1)
      {
        v6 = *v5;
        v5 += 20;
        if (v6 < 0)
        {
          break;
        }

        if (v3 == ++v4)
        {
          LODWORD(v4) = *(a1 + 168);
          break;
        }
      }
    }

    else
    {
      LODWORD(v4) = 0;
    }

    while (v4 != v3)
    {
      v7 = *(a1 + 152) + 80 * v4;
      if (*(v7 + 48))
      {
        v8 = *(v7 + 56);
      }

      else
      {
        v8 = v7 + 49;
      }

      v9 = v7 + 8;
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];
      if (*(v9 + 8))
      {
        v11 = *(v9 + 16);
      }

      else
      {
        v11 = v9 + 9;
      }

      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v11];
      [v2 setObject:v10 forKey:v12];

      v13 = *(a1 + 168);
      if (v13 <= v4 + 1)
      {
        v13 = v4 + 1;
      }

      while (v13 - 1 != v4)
      {
        LODWORD(v4) = v4 + 1;
        if ((*(*(a1 + 152) + 80 * v4) & 0x80000000) != 0)
        {
          goto LABEL_22;
        }
      }

      LODWORD(v4) = v13;
LABEL_22:
      ;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t REMaterialDefinitionAssetGetOverriddenMaterialDefinition(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, &v7);
  if (!v8)
  {
    re::MaterialDefinitionAsset::assetType(v1);
LABEL_6:
    v4 = 0;
    goto LABEL_7;
  }

  v2 = *(v8 + 280);
  if (v2 != re::MaterialDefinitionAsset::assetType(v1))
  {
    goto LABEL_6;
  }

  v3 = re::AssetHandle::blockUntilLoaded<re::MaterialDefinitionAsset>(&v7);
  if (!v3)
  {
    goto LABEL_6;
  }

  re::AssetHandle::AssetHandle(v6, (v3 + 128));
  v4 = v6[0];
  re::AssetHandle::~AssetHandle(v6);
LABEL_7:
  re::AssetHandle::~AssetHandle(&v7);
  return v4;
}

void REMaterialAssetSetTextureBinding(uint64_t a1, const char *a2, char *a3, uint64_t a4)
{
  re::AssetAPIHelper::assetHandleCreate(a1, &v9);
  ++*(v10 + 276);
  v7 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(&v9);
  if (v7)
  {
    re::MaterialParameterBlock::setBinding(*(v7 + 1784), a2, a3, a4, 2, v8);
    v8[0] = 0;
  }

  re::AssetHandle::~AssetHandle(&v9);
}

void REMaterialAssetSetBufferBinding(uint64_t a1, const char *a2, char *a3, uint64_t a4)
{
  re::AssetAPIHelper::assetHandleCreate(a1, &v9);
  ++*(v10 + 276);
  v7 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(&v9);
  if (v7)
  {
    re::MaterialParameterBlock::setBinding(*(v7 + 1784), a2, a3, a4, 3, v8);
    v8[0] = 0;
  }

  re::AssetHandle::~AssetHandle(&v9);
}

void REMaterialAssetSetSamplerBinding(uint64_t a1, const char *a2, char *a3, uint64_t a4)
{
  re::AssetAPIHelper::assetHandleCreate(a1, &v9);
  ++*(v10 + 276);
  v7 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(&v9);
  if (v7)
  {
    re::MaterialParameterBlock::setBinding(*(v7 + 1784), a2, a3, a4, 4, v8);
    v8[0] = 0;
  }

  re::AssetHandle::~AssetHandle(&v9);
}

CFStringRef REMaterialAssetCopyTextureBindingStructName(uint64_t a1, char *a2)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v32);
  v3 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(v32);
  if (v3)
  {
    v4 = v3;
    re::MaterialParameterBlock::handle(*(v3 + 1784), a2, &v29);
    v5 = BYTE4(v30);
    if ((BYTE4(v30) & 7) != 0)
    {
      isParameterType = re::MaterialParameterHandle::isParameterType(&v29, 64);
      if ((v5 & 0x10) != 0 && isParameterType)
      {
        re::MaterialParameterBlock::bindingValue(*(v4 + 1784), &v29, &v26);
LABEL_18:
        v12 = CFStringCreateWithCString(0, re::s_materialTableIDMappings[BYTE8(v27)], 0x8000100u);
        goto LABEL_34;
      }
    }

    v7 = *(v4 + 1776);
    if (a2)
    {
      v8 = *a2;
      if (*a2)
      {
        v9 = a2[1];
        if (v9)
        {
          v10 = (a2 + 2);
          do
          {
            v8 = 31 * v8 + v9;
            v11 = *v10++;
            v9 = v11;
          }

          while (v11);
        }

        v8 &= ~0x8000000000000000;
      }
    }

    else
    {
      v8 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v25 = v8;
    re::MaterialParameterTable::handle((v7 + 304), &v25, &v26);
    v29 = v26;
    v30 = v27;
    v31 = v28;
    v25 = 0;
    v13 = BYTE4(v27);
    if ((BYTE4(v27) & 7) != 0)
    {
      v14 = re::MaterialParameterHandle::isParameterType(&v29, 64);
      if ((v13 & 0x10) != 0 && v14)
      {
        re::MaterialParameterTable::bindingValue((*(v4 + 1776) + 304), &v29, &v26);
        goto LABEL_18;
      }
    }

    v15 = *(*(v4 + 1776) + 16);
    if (v15)
    {
      v16 = (v15 + 8);
    }

    if (a2)
    {
      v17 = *a2;
      if (*a2)
      {
        v18 = a2[1];
        if (v18)
        {
          v19 = (a2 + 2);
          do
          {
            v17 = 31 * v17 + v18;
            v20 = *v19++;
            v18 = v20;
          }

          while (v20);
        }

        v17 &= ~0x8000000000000000;
      }
    }

    else
    {
      v17 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v24 = v17;
    re::MaterialParameterTable::handle((v15 + 248), &v24, &v26);
    v29 = v26;
    v31 = v28;
    v30 = v27;
    v24 = 0;
    v21 = BYTE4(v27);
    if ((BYTE4(v27) & 7) == 0)
    {
      v12 = 0;
      if (!v15)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    v22 = re::MaterialParameterHandle::isParameterType(&v29, 64);
    v12 = 0;
    if ((v21 & 0x10) != 0 && v22)
    {
      re::MaterialParameterTable::bindingValue((v15 + 248), &v29, &v26);
      v12 = CFStringCreateWithCString(0, re::s_materialTableIDMappings[BYTE8(v27)], 0x8000100u);
    }

    if (v15)
    {
LABEL_33:
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_34:
  re::AssetHandle::~AssetHandle(v32);
  return v12;
}

CFStringRef REMaterialAssetCopyTextureBindingMemberName(uint64_t a1, char *a2)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v31);
  v3 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(v31);
  if (!v3)
  {
    goto LABEL_25;
  }

  v4 = v3;
  v5 = *(v3 + 1776);
  if (a2)
  {
    v6 = *a2;
    if (*a2)
    {
      v7 = a2[1];
      if (v7)
      {
        v8 = (a2 + 2);
        do
        {
          v6 = 31 * v6 + v7;
          v9 = *v8++;
          v7 = v9;
        }

        while (v9);
      }

      v6 &= ~0x8000000000000000;
    }
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v27 = v6;
  re::MaterialParameterTable::handle((v5 + 304), &v27, &v28);
  v27 = 0;
  v10 = BYTE4(v29);
  if ((BYTE4(v29) & 7) != 0)
  {
    isParameterType = re::MaterialParameterHandle::isParameterType(&v28, 64);
    if ((v10 & 0x10) != 0 && isParameterType)
    {
      v12 = re::HashTable<re::DynamicString,re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase const>>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet<void>(v4 + 1880, a2);
      if (v12)
      {
        goto LABEL_24;
      }
    }
  }

  v13 = *(*(v4 + 1776) + 16);
  if (a2)
  {
    v14 = *a2;
    if (*a2)
    {
      v15 = a2[1];
      if (v15)
      {
        v16 = (a2 + 2);
        do
        {
          v14 = 31 * v14 + v15;
          v17 = *v16++;
          v15 = v17;
        }

        while (v17);
      }

      v14 &= ~0x8000000000000000;
    }
  }

  else
  {
    v14 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v23 = v14;
  re::MaterialParameterTable::handle((v13 + 248), &v23, &v24);
  v28 = v24;
  v29 = v25;
  v30 = v26;
  v23 = 0;
  v18 = BYTE4(v25);
  if ((BYTE4(v25) & 7) == 0)
  {
LABEL_25:
    v20 = 0;
    goto LABEL_26;
  }

  v19 = re::MaterialParameterHandle::isParameterType(&v28, 64);
  v20 = 0;
  if ((v18 & 0x10) != 0 && v19)
  {
    v21 = re::AssetHandle::blockUntilLoaded<re::MaterialDefinitionAsset>((v4 + 40));
    v12 = re::HashTable<re::DynamicString,re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase const>>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet<void>(v21 + 2328, a2);
    if (v12)
    {
LABEL_24:
      v20 = CFStringCreateWithCString(0, *(v12 + 32), 0x8000100u);
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_26:
  re::AssetHandle::~AssetHandle(v31);
  return v20;
}

CFStringRef REMaterialAssetCopyBufferBindingStructName(uint64_t a1, char *a2)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v31);
  v3 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(v31);
  if (!v3)
  {
    goto LABEL_25;
  }

  v4 = v3;
  v5 = *(v3 + 1776);
  if (a2)
  {
    v6 = *a2;
    if (*a2)
    {
      v7 = a2[1];
      if (v7)
      {
        v8 = (a2 + 2);
        do
        {
          v6 = 31 * v6 + v7;
          v9 = *v8++;
          v7 = v9;
        }

        while (v9);
      }

      v6 &= ~0x8000000000000000;
    }
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v27 = v6;
  re::MaterialParameterTable::handle((v5 + 304), &v27, &v28);
  v27 = 0;
  v10 = BYTE4(v29);
  if ((BYTE4(v29) & 7) != 0)
  {
    isParameterType = re::MaterialParameterHandle::isParameterType(&v28, 128);
    if ((v10 & 0x10) != 0 && isParameterType)
    {
      v12 = re::HashTable<re::DynamicString,re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase const>>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet<void>(v4 + 1880, a2);
      if (v12)
      {
        goto LABEL_24;
      }
    }
  }

  v13 = *(*(v4 + 1776) + 16);
  if (a2)
  {
    v14 = *a2;
    if (*a2)
    {
      v15 = a2[1];
      if (v15)
      {
        v16 = (a2 + 2);
        do
        {
          v14 = 31 * v14 + v15;
          v17 = *v16++;
          v15 = v17;
        }

        while (v17);
      }

      v14 &= ~0x8000000000000000;
    }
  }

  else
  {
    v14 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v23 = v14;
  re::MaterialParameterTable::handle((v13 + 248), &v23, &v24);
  v28 = v24;
  v29 = v25;
  v30 = v26;
  v23 = 0;
  v18 = BYTE4(v25);
  if ((BYTE4(v25) & 7) == 0)
  {
LABEL_25:
    v20 = 0;
    goto LABEL_26;
  }

  v19 = re::MaterialParameterHandle::isParameterType(&v28, 128);
  v20 = 0;
  if ((v18 & 0x10) != 0 && v19)
  {
    v21 = re::AssetHandle::blockUntilLoaded<re::MaterialDefinitionAsset>((v4 + 40));
    v12 = re::HashTable<re::DynamicString,re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase const>>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet<void>(v21 + 2328, a2);
    if (v12)
    {
LABEL_24:
      v20 = CFStringCreateWithCString(0, re::s_materialTableIDMappings[*(v12 + 16)], 0x8000100u);
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_26:
  re::AssetHandle::~AssetHandle(v31);
  return v20;
}

CFStringRef REMaterialAssetCopyBufferBindingMemberName(uint64_t a1, char *a2)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v31);
  v3 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(v31);
  if (!v3)
  {
    goto LABEL_25;
  }

  v4 = v3;
  v5 = *(v3 + 1776);
  if (a2)
  {
    v6 = *a2;
    if (*a2)
    {
      v7 = a2[1];
      if (v7)
      {
        v8 = (a2 + 2);
        do
        {
          v6 = 31 * v6 + v7;
          v9 = *v8++;
          v7 = v9;
        }

        while (v9);
      }

      v6 &= ~0x8000000000000000;
    }
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v27 = v6;
  re::MaterialParameterTable::handle((v5 + 304), &v27, &v28);
  v27 = 0;
  v10 = BYTE4(v29);
  if ((BYTE4(v29) & 7) != 0)
  {
    isParameterType = re::MaterialParameterHandle::isParameterType(&v28, 128);
    if ((v10 & 0x10) != 0 && isParameterType)
    {
      v12 = re::HashTable<re::DynamicString,re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase const>>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet<void>(v4 + 1880, a2);
      if (v12)
      {
        goto LABEL_24;
      }
    }
  }

  v13 = *(*(v4 + 1776) + 16);
  if (a2)
  {
    v14 = *a2;
    if (*a2)
    {
      v15 = a2[1];
      if (v15)
      {
        v16 = (a2 + 2);
        do
        {
          v14 = 31 * v14 + v15;
          v17 = *v16++;
          v15 = v17;
        }

        while (v17);
      }

      v14 &= ~0x8000000000000000;
    }
  }

  else
  {
    v14 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v23 = v14;
  re::MaterialParameterTable::handle((v13 + 248), &v23, &v24);
  v28 = v24;
  v29 = v25;
  v30 = v26;
  v23 = 0;
  v18 = BYTE4(v25);
  if ((BYTE4(v25) & 7) == 0)
  {
LABEL_25:
    v20 = 0;
    goto LABEL_26;
  }

  v19 = re::MaterialParameterHandle::isParameterType(&v28, 128);
  v20 = 0;
  if ((v18 & 0x10) != 0 && v19)
  {
    v21 = re::AssetHandle::blockUntilLoaded<re::MaterialDefinitionAsset>((v4 + 40));
    v12 = re::HashTable<re::DynamicString,re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase const>>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet<void>(v21 + 2328, a2);
    if (v12)
    {
LABEL_24:
      v20 = CFStringCreateWithCString(0, *(v12 + 32), 0x8000100u);
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_26:
  re::AssetHandle::~AssetHandle(v31);
  return v20;
}

id REMaterialCreateDefaultSamplerDescriptor()
{
  v3 = 1;
  v6 = 0;
  v9 = 0u;
  v4 = 0x200000002;
  v5 = 2;
  v7 = 0x100000001;
  v8 = 2;
  DWORD2(v9) = 2139095040;
  v10 = 1;
  re::MaterialSamplerData::makeDescriptor(&v3, &v11);
  v0 = v11;
  v1 = v0;
  if (v0)
  {
  }

  return v1;
}

BOOL REMaterialAssetTechniqueHasVariation(uint64_t a1, unint64_t a2, const char *a3, uint64_t a4)
{
  v36 = *MEMORY[0x1E69E9840];
  re::AssetAPIHelper::assetHandleCreate(a1, v26);
  v7 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(v26);
  if (!v7)
  {
    goto LABEL_24;
  }

  v8 = *(v7 + 1776);
  if (!*(v8 + 24))
  {
    goto LABEL_24;
  }

  v9 = *(*(v8 + 32) + 4 * (a2 % *(v8 + 48)));
  if (v9 == 0x7FFFFFFF)
  {
    goto LABEL_24;
  }

  v10 = *(v8 + 40);
  while (*(v10 + 48 * v9 + 8) != a2)
  {
    v9 = *(v10 + 48 * v9) & 0x7FFFFFFF;
    if (v9 == 0x7FFFFFFF)
    {
      goto LABEL_24;
    }
  }

  v11 = v10 + 48 * v9;
  v12 = *(v11 + 24);
  if (v12)
  {
    v13 = *(v11 + 32);
    v14 = &v13[v12];
    while (1)
    {
      v15 = *v13;
      v16 = *(v8 + 80);
      if (v16 <= v15)
      {
        v26[3] = 0;
        memset(v35, 0, sizeof(v35));
        v25 = v16;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v27 = 136315906;
        v28 = "operator[]";
        v29 = 1024;
        v30 = 476;
        v31 = 2048;
        v32 = v15;
        v33 = 2048;
        v34 = v25;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v17 = *(*(v8 + 88) + 40 * v15);
      if (*(v17 + 40) == 1)
      {
        v18 = v17 + 48;
      }

      else
      {
        v18 = *v17 + 8;
      }

      re::FixedArray<re::FunctionConstantsEnumerator::PermutationLayer>::FixedArray(v35, v18);
      *(&v35[1] + 8) = *(v18 + 24);
      if (re::FunctionConstantsEnumerator::hasMatchingValueInLayer(v35, a3, a4))
      {
        v23 = 1;
        goto LABEL_27;
      }

      v19 = *(v17 + 24);
      if (v19)
      {
        break;
      }

LABEL_22:
      re::FixedArray<re::FunctionConstantsEnumerator::PermutationLayer>::deinit(v35);
      v23 = 0;
      if (++v13 == v14)
      {
        goto LABEL_25;
      }
    }

    v20 = (*(v17 + 32) + 36);
    v21 = 104 * v19;
    while (1)
    {
      v22 = (*(v20 - 28) & 1) != 0 ? *(v20 - 20) : v20 - 27;
      if (!strcmp(v22, a3))
      {
        break;
      }

      v20 += 13;
      v21 -= 104;
      if (!v21)
      {
        goto LABEL_22;
      }
    }

    v23 = *v20 == a4;
LABEL_27:
    re::FixedArray<re::FunctionConstantsEnumerator::PermutationLayer>::deinit(v35);
  }

  else
  {
LABEL_24:
    v23 = 0;
  }

LABEL_25:
  re::AssetHandle::~AssetHandle(v26);
  return v23;
}

BOOL REMaterialDefinitionAssetHasTechniqueWithHash(uint64_t a1, unint64_t a2)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v11);
  v3 = re::AssetHandle::blockUntilLoaded<re::MaterialDefinitionAsset>(v11);
  if (v3)
  {
    v4 = *(v3 + 744);
    if (v4)
    {
      v5 = (v4 + 8);
    }

    if (!*(v4 + 136) || (v6 = *(*(v4 + 144) + 4 * (a2 % *(v4 + 160))), v6 == 0x7FFFFFFF))
    {
      v7 = 0;
LABEL_14:

      goto LABEL_15;
    }

    v8 = *(v4 + 152);
    v9 = 0x7FFFFFFFLL;
    while (*(v8 + 48 * v6 + 8) != a2)
    {
      v6 = *(v8 + 48 * v6) & 0x7FFFFFFF;
      if (v6 == 0x7FFFFFFF)
      {
        goto LABEL_13;
      }
    }

    v9 = v6;
LABEL_13:
    v7 = v9 != 0x7FFFFFFF;
    if (v4)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v7 = 0;
  }

LABEL_15:
  re::AssetHandle::~AssetHandle(v11);
  return v7;
}

BOOL REMaterialDefinitionAssetHasPassTechniqueMappingWithName(uint64_t a1, const char *a2)
{
  v14[2] = *MEMORY[0x1E69E9840];
  re::AssetAPIHelper::assetHandleCreate(a1, v13);
  v3 = re::AssetHandle::blockUntilLoaded<re::MaterialDefinitionAsset>(v13);
  if (v3 && (v4 = v3, (v5 = *(v3 + 744)) != 0) && ((v6 = strlen(a2)) == 0 ? (v7 = 0) : (MurmurHash3_x64_128(a2, v6, 0, v14), v7 = (v14[1] + (v14[0] << 6) + (v14[0] >> 2) - 0x61C8864680B583E9) ^ v14[0], v5 = *(v4 + 744)), *(v5 + 16) && (v8 = *(*(v5 + 24) + 4 * (v7 % *(v5 + 40))), v8 != 0x7FFFFFFF)))
  {
    v11 = *(v5 + 32);
    v12 = 0x7FFFFFFFLL;
    while (*(v11 + 24 * v8 + 8) != v7)
    {
      v8 = *(v11 + 24 * v8) & 0x7FFFFFFF;
      if (v8 == 0x7FFFFFFF)
      {
        goto LABEL_15;
      }
    }

    v12 = v8;
LABEL_15:
    v9 = v12 != 0x7FFFFFFF;
  }

  else
  {
    v9 = 0;
  }

  re::AssetHandle::~AssetHandle(v13);
  return v9;
}

uint64_t REMaterialAssetGetValidPassTechniqueMapping(uint64_t a1, const char *a2, unint64_t *a3)
{
  v22[2] = *MEMORY[0x1E69E9840];
  re::AssetAPIHelper::assetHandleCreate(a1, v21);
  v5 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(v21);
  if (v5)
  {
    v6 = v5;
    v7 = strlen(a2);
    if (v7)
    {
      MurmurHash3_x64_128(a2, v7, 0, v22);
      v8 = (v22[1] + (v22[0] << 6) + (v22[0] >> 2) - 0x61C8864680B583E9) ^ v22[0];
    }

    else
    {
      v8 = 0;
    }

    v10 = *(v6[222] + 16);
    if (v10)
    {
      v11 = (v10 + 8);
    }

    v12 = v6[5];
    v13 = v6[223];
    if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
    {
      dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
    }

    PassTechniqueMapping = re::MaterialParameterBlock::tryGetPassTechniqueMapping(v13, v8, re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash);
    if (PassTechniqueMapping)
    {
      v15 = PassTechniqueMapping;
      if (REMaterialDefinitionAssetHasTechniqueWithHash(v12, *PassTechniqueMapping))
      {
        goto LABEL_16;
      }
    }

    v16 = v6[222];
    if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
    {
      dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
    }

    v17 = re::MaterialParameterTable::tryGetPassTechniqueMapping((v16 + 304), v8, re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash);
    if (v17)
    {
      v15 = v17;
      if (REMaterialDefinitionAssetHasTechniqueWithHash(v12, *v17))
      {
LABEL_16:
        *a3 = *v15;
        v9 = 1;
        if (!v10)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }
    }

    if (!*(v10 + 16) || (v18 = *(*(v10 + 24) + 4 * (v8 % *(v10 + 40))), v18 == 0x7FFFFFFF))
    {
      v9 = 0;
LABEL_21:

      goto LABEL_22;
    }

    v20 = *(v10 + 32);
    do
    {
      if (*(v20 + 24 * v18 + 8) == v8)
      {
        *a3 = *(v20 + 24 * v18 + 16);
        v9 = 1;
        goto LABEL_21;
      }

      v18 = *(v20 + 24 * v18) & 0x7FFFFFFF;
    }

    while (v18 != 0x7FFFFFFF);
    v9 = 0;
    if (v10)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_22:
  re::AssetHandle::~AssetHandle(v21);
  return v9;
}

const char *REMaterialAssetGetName(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v4);
  re::AssetHandle::loadNow(v4[1], 0);
  v1 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(v4);
  if (v1)
  {
    v2 = *(*(v1 + 1776) + 1432);
  }

  else
  {
    v2 = "";
  }

  re::AssetHandle::~AssetHandle(v4);
  return v2;
}

uint64_t REMaterialAssetGetSourceName(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v6);
  re::AssetHandle::loadNow(v6[1], 0);
  v1 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(v6);
  if (!v1)
  {
    goto LABEL_7;
  }

  v2 = *(v1 + 16);
  v3 = v2 >> 1;
  if ((v2 & 1) == 0)
  {
    v3 = v2 >> 1;
  }

  if (v3)
  {
    if (v2)
    {
      v4 = *(v1 + 24);
    }

    else
    {
      v4 = v1 + 17;
    }
  }

  else
  {
LABEL_7:
    v4 = 0;
  }

  re::AssetHandle::~AssetHandle(v6);
  return v4;
}

CFStringRef REMaterialAssetGetFunctionConstant(uint64_t a1, char *a2)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v8);
  v3 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(v8);
  if (v3 && (v4 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet<void>(v3 + 304, a2)) != 0)
  {
    if (*(v4 + 8))
    {
      v5 = *(v4 + 16);
    }

    else
    {
      v5 = (v4 + 9);
    }

    v6 = CFStringCreateWithCString(0, v5, 0x8000100u);
  }

  else
  {
    v6 = 0;
  }

  re::AssetHandle::~AssetHandle(v8);
  return v6;
}

uint64_t REMaterialAssetGetCullMode(uint64_t a1, void *a2)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v6);
  v3 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(v6);
  if (v3 && *(v3 + 354) == 1)
  {
    *a2 = *(v3 + 355);
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  re::AssetHandle::~AssetHandle(v6);
  return v4;
}

uint64_t REMaterialAssetGetType(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v4);
  v1 = re::AssetHandle::loadedAsset<re::MaterialAsset>(v4);
  if (v1)
  {
    v2 = *(v1 + 1842);
  }

  else
  {
    v2 = 0;
  }

  re::AssetHandle::~AssetHandle(v4);
  return v2;
}

uint64_t REMaterialAssetGetFeatureFlags(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v4);
  v1 = re::AssetHandle::loadedAsset<re::MaterialAsset>(v4);
  if (v1)
  {
    v2 = *(v1 + 1840);
  }

  else
  {
    v2 = 0;
  }

  re::AssetHandle::~AssetHandle(v4);
  return v2;
}

void *REMaterialAssetCopyShaderGraphParameterNames(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  re::AssetAPIHelper::assetHandleCreate(a1, v13);
  v1 = re::AssetHandle::loadedAsset<re::MaterialAsset>(v13);
  if (v1)
  {
    v2 = *(v1 + 1968);
    if (v2)
    {
      v3 = (v2 + 8);
      re::sg::CachedCompilationMaterial::getPublicUniforms(v2, &v10);
    }

    else
    {
      re::sg::CachedCompilationMaterial::getPublicUniforms(0, &v10);
    }

    v5 = objc_alloc(MEMORY[0x1E695DF70]);
    v4 = [v5 initWithCapacity:v11];
    if (v11)
    {
      v6 = v12;
      v7 = 8 * v11;
      do
      {
        v8 = *v6++;
        [v4 addObject:v8];
        v7 -= 8;
      }

      while (v7);
    }

    re::FixedArray<NS::SharedPtr<MTL::ArgumentEncoder>>::deinit(&v10);
  }

  else
  {
    v4 = 0;
  }

  re::AssetHandle::~AssetHandle(v13);
  return v4;
}

void *REMaterialAssetCopyVisibleShaderGraphParameterNames(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  re::AssetAPIHelper::assetHandleCreate(a1, v13);
  v1 = re::AssetHandle::loadedAsset<re::MaterialAsset>(v13);
  if (v1)
  {
    v2 = *(v1 + 1968);
    if (v2)
    {
      v3 = (v2 + 8);
      re::sg::CachedCompilationMaterial::getPublicUniforms(v2, &v10);
    }

    else
    {
      re::sg::CachedCompilationMaterial::getPublicUniforms(0, &v10);
    }

    v5 = objc_alloc(MEMORY[0x1E695DF70]);
    v4 = [v5 initWithCapacity:v11];
    if (v11)
    {
      v6 = v12;
      v7 = 8 * v11;
      do
      {
        v8 = *v6++;
        [v4 addObject:v8];
        v7 -= 8;
      }

      while (v7);
    }

    re::FixedArray<NS::SharedPtr<MTL::ArgumentEncoder>>::deinit(&v10);
  }

  else
  {
    v4 = 0;
  }

  re::AssetHandle::~AssetHandle(v13);
  return v4;
}

uint64_t REMaterialAssetIsVisibleShaderGraphParameter(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    re::AssetAPIHelper::assetHandleCreate(a1, v15);
    v4 = re::AssetHandle::loadedAsset<re::MaterialAsset>(v15);
    if (v4)
    {
      v5 = *(v4 + 1968);
      if (v5)
      {
        v6 = (v5 + 8);
        re::sg::CachedCompilationMaterial::getPublicUniforms(v5, &v12);
      }

      else
      {
        re::sg::CachedCompilationMaterial::getPublicUniforms(0, &v12);
      }

      if (v13)
      {
        v7 = v14;
        v8 = 8 * v13 - 8;
        do
        {
          v9 = *v7++;
          a1 = [v9 isEqualToString_];
          if (a1)
          {
            break;
          }

          v10 = v8;
          v8 -= 8;
        }

        while (v10);
      }

      else
      {
        a1 = 0;
      }

      re::FixedArray<NS::SharedPtr<MTL::ArgumentEncoder>>::deinit(&v12);
    }

    else
    {
      a1 = 0;
    }

    re::AssetHandle::~AssetHandle(v15);
  }

  return a1;
}

id REMaterialAssetGetGeomFlattenedCustomParamNames(uint64_t a1)
{
  if (a1)
  {
    re::AssetAPIHelper::assetHandleCreate(a1, v5);
    v1 = re::AssetHandle::loadedAsset<re::MaterialAsset>(v5);
    if (v1)
    {
      v2 = *(v1 + 1848);
      v3 = v2;
      if (v2)
      {
      }
    }

    else
    {
      v3 = 0;
    }

    re::AssetHandle::~AssetHandle(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id REMaterialAssetGetSurfFlattenedCustomParamNames(uint64_t a1)
{
  if (a1)
  {
    re::AssetAPIHelper::assetHandleCreate(a1, v5);
    v1 = re::AssetHandle::loadedAsset<re::MaterialAsset>(v5);
    if (v1)
    {
      v2 = *(v1 + 1856);
      v3 = v2;
      if (v2)
      {
      }
    }

    else
    {
      v3 = 0;
    }

    re::AssetHandle::~AssetHandle(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id REMaterialAssetGetGeometryModifierCustomParamsName(uint64_t a1)
{
  if (a1)
  {
    re::AssetAPIHelper::assetHandleCreate(a1, v5);
    v1 = re::AssetHandle::loadedAsset<re::MaterialAsset>(v5);
    if (v1)
    {
      v2 = *(v1 + 1864);
      v3 = v2;
      if (v2)
      {
      }
    }

    else
    {
      v3 = 0;
    }

    re::AssetHandle::~AssetHandle(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id REMaterialAssetGetSurfaceShaderCustomParamsName(uint64_t a1)
{
  if (a1)
  {
    re::AssetAPIHelper::assetHandleCreate(a1, v5);
    v1 = re::AssetHandle::loadedAsset<re::MaterialAsset>(v5);
    if (v1)
    {
      v2 = *(v1 + 1872);
      v3 = v2;
      if (v2)
      {
      }
    }

    else
    {
      v3 = 0;
    }

    re::AssetHandle::~AssetHandle(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

BOOL REMaterialAssetHasGeometryModifierCustomParamsName(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  re::AssetAPIHelper::assetHandleCreate(a1, v5);
  v1 = re::AssetHandle::loadedAsset<re::MaterialAsset>(v5);
  if (v1)
  {
    v2 = *(v1 + 1864);
    v3 = v2 != 0;
    if (v2)
    {

      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  re::AssetHandle::~AssetHandle(v5);
  return v3;
}

BOOL REMaterialAssetHasSurfaceShaderCustomParamsName(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  re::AssetAPIHelper::assetHandleCreate(a1, v5);
  v1 = re::AssetHandle::loadedAsset<re::MaterialAsset>(v5);
  if (v1)
  {
    v2 = *(v1 + 1872);
    v3 = v2 != 0;
    if (v2)
    {

      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  re::AssetHandle::~AssetHandle(v5);
  return v3;
}

uint64_t REMaterialAssetGetByteSizeOfSGUniforms(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  re::AssetAPIHelper::assetHandleCreate(a1, v7);
  v1 = re::AssetHandle::loadedAsset<re::MaterialAsset>(v7);
  if (v1)
  {
    v2 = *(v1 + 1968);
    if (v2)
    {
      v3 = (v2 + 8);
      CustomUniformsArgument = re::sg::CachedCompilationMaterial::getCustomUniformsArgument(v2);
    }

    else
    {
      CustomUniformsArgument = re::sg::CachedCompilationMaterial::getCustomUniformsArgument(0);
    }

    v5 = *(CustomUniformsArgument + 7);
  }

  else
  {
    v5 = 0;
  }

  re::AssetHandle::~AssetHandle(v7);
  return v5;
}

uint64_t REMaterialAssetGetByteOffsetForSGUniform(uint64_t a1, const char *a2)
{
  if (!a1)
  {
    return -1;
  }

  re::AssetAPIHelper::assetHandleCreate(a1, v12);
  v3 = re::AssetHandle::loadedAsset<re::MaterialAsset>(v12);
  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = *(v3 + 1968);
  if (v4)
  {
    v5 = (v4 + 8);
    CustomUniformsArgument = re::sg::CachedCompilationMaterial::getCustomUniformsArgument(v4);
  }

  else
  {
    CustomUniformsArgument = re::sg::CachedCompilationMaterial::getCustomUniformsArgument(0);
  }

  v8 = *(CustomUniformsArgument + 9);
  if (v8)
  {
    v9 = (*(CustomUniformsArgument + 10) + 24);
    v10 = 80 * v8;
    while (strcmp(*v9, a2))
    {
      v9 += 10;
      v10 -= 80;
      if (!v10)
      {
        goto LABEL_11;
      }
    }

    v7 = *(v9 - 6);
  }

  else
  {
LABEL_11:
    v7 = -1;
  }

  re::AssetHandle::~AssetHandle(v12);
  return v7;
}

uint64_t REMaterialAssetGetByteOffsetForSGUniformHandle(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return -1;
  }

  re::AssetAPIHelper::assetHandleCreate(a1, v13);
  v3 = re::AssetHandle::loadedAsset<re::MaterialAsset>(v13);
  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = *(v3 + 1968);
  if (v4)
  {
    v5 = (v4 + 8);
    CustomUniformsArgument = re::sg::CachedCompilationMaterial::getCustomUniformsArgument(v4);
  }

  else
  {
    CustomUniformsArgument = re::sg::CachedCompilationMaterial::getCustomUniformsArgument(0);
  }

  v8 = *(CustomUniformsArgument + 9);
  if (v8)
  {
    v9 = *(a2 + 32);
    v10 = (*(CustomUniformsArgument + 10) + 24);
    v11 = 80 * v8;
    while (strcmp(*v10, (v9 + 3)))
    {
      v10 += 10;
      v11 -= 80;
      if (!v11)
      {
        goto LABEL_11;
      }
    }

    v7 = *(v10 - 6);
  }

  else
  {
LABEL_11:
    v7 = -1;
  }

  re::AssetHandle::~AssetHandle(v13);
  return v7;
}

id REMaterialAssetGetShaderGraphArchive(uint64_t a1)
{
  if (a1)
  {
    re::AssetAPIHelper::assetHandleCreate(a1, v4);
    v1 = re::AssetHandle::loadedAsset<re::ShaderGraphAsset>(v4);
    if (v1)
    {
      v2 = *(v1 + 40);
    }

    else
    {
      v2 = 0;
    }

    re::AssetHandle::~AssetHandle(v4);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t re::AssetHandle::loadedAsset<re::ShaderGraphAsset>(re::ShaderGraphAsset *a1)
{
  if (!*(a1 + 1))
  {
    return 0;
  }

  v2 = re::ShaderGraphAsset::assetType(a1);

  return re::AssetHandle::assetWithType(a1, v2, 1);
}

void REMaterialAssetHarvestPerformanceStatsForTechnique(uint64_t a1, uint64_t a2, const char *a3, int a4, void *a5, void *a6, void *a7)
{
  v66 = *MEMORY[0x1E69E9840];
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = v14;
  re::AssetAPIHelper::assetHandleCreate(a1, v51);
  v17 = re::AssetHandle::loadedAsset<re::MaterialAsset>(v51);
  if (v17)
  {
    v18 = *(a2 + 112);
    if (v18)
    {
      v19 = v17;
      v20 = *(v17 + 222);
      v21 = strlen(a3);
      if (v21)
      {
        MurmurHash3_x64_128(a3, v21, 0, &buf);
        v22 = (*(&buf + 1) + (buf << 6) + (buf >> 2) - 0x61C8864680B583E9) ^ buf;
      }

      else
      {
        v22 = 0;
      }

      if (!*(v20 + 24) || (v26 = *(*(v20 + 32) + 4 * (v22 % *(v20 + 48))), v26 == 0x7FFFFFFF))
      {
LABEL_17:
        v45[0] = MEMORY[0x1E69E9820];
        v45[1] = 3221225472;
        v45[2] = __REMaterialAssetHarvestPerformanceStatsForTechnique_block_invoke_2;
        v45[3] = &unk_1E8722F78;
        v46 = v15;
        dispatch_async(v13, v45);
        v24 = v46;
        goto LABEL_18;
      }

      v27 = *(v20 + 40);
      while (*(v27 + 48 * v26 + 8) != v22)
      {
        v26 = *(v27 + 48 * v26) & 0x7FFFFFFF;
        if (v26 == 0x7FFFFFFF)
        {
          goto LABEL_17;
        }
      }

      v28 = v27 + 48 * v26;
      if (*(v28 + 24))
      {
        v29 = *(v19 + 222);
        v19 = **(v28 + 32);
        v20 = *(v29 + 80);
        if (v20 > v19)
        {
          v30 = (*(v29 + 88) + 40 * v19);
          v31 = *v30;
          v32 = **v30;
          if (a4)
          {
            FallbackVariant = re::MaterialTechnique::tryGetFallbackVariant(v31);
          }

          else
          {
            FallbackVariant = re::MaterialTechnique::getOrCreateTechniqueVariant(v31, 0, 0);
          }

          v34 = FallbackVariant;
          if (FallbackVariant)
          {
            atomic_load((FallbackVariant + 17));
            *&buf = 0;
            *(&buf + 1) = FallbackVariant;
            *&v62 = a2;
            atomic_store(2u, (FallbackVariant + 17));
            re::dispatchMaterialPipelineDataCompilation(&buf);
            v35[0] = MEMORY[0x1E69E9820];
            v35[1] = 3321888768;
            v35[2] = __REMaterialAssetHarvestPerformanceStatsForTechnique_block_invoke_42;
            v35[3] = &unk_1F5D2DDB0;
            v37 = v34;
            v36 = v15;
            v38 = v32;
            v39 = a2;
            v40 = v30;
            v41 = v18;
            v42 = v16;
            dispatch_async(v13, v35);
            if (v42)
            {

              v42 = 0;
            }

            v24 = v36;
          }

          else
          {
            v43[0] = MEMORY[0x1E69E9820];
            v43[1] = 3221225472;
            v43[2] = __REMaterialAssetHarvestPerformanceStatsForTechnique_block_invoke_41;
            v43[3] = &unk_1E8722F78;
            v44 = v15;
            dispatch_async(v13, v43);
            v24 = v44;
          }

          goto LABEL_18;
        }
      }

      else
      {
        v52 = 0;
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        buf = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v53 = 136315906;
        v54 = "operator[]";
        v55 = 1024;
        v56 = 476;
        v57 = 2048;
        v58 = 0;
        v59 = 2048;
        v60 = 0;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v52 = 0;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      buf = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v53 = 136315906;
      v54 = "operator[]";
      v55 = 1024;
      v56 = 476;
      v57 = 2048;
      v58 = v19;
      v59 = 2048;
      v60 = v20;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v25 = *re::graphicsLogObjects(v17);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&dword_1E1C61000, v25, OS_LOG_TYPE_ERROR, "Unable to harvest material performance stats - engine does not have local rendering capabilities!", &buf, 2u);
    }

    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __REMaterialAssetHarvestPerformanceStatsForTechnique_block_invoke_40;
    v47[3] = &unk_1E8722F78;
    v48 = v15;
    dispatch_async(v13, v47);
    v24 = v48;
  }

  else
  {
    v23 = *re::graphicsLogObjects(0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_ERROR, "Unable to harvest material performance stats - asset was not loaded!", &buf, 2u);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __REMaterialAssetHarvestPerformanceStatsForTechnique_block_invoke;
    block[3] = &unk_1E8722F78;
    v50 = v15;
    dispatch_async(v13, block);
    v24 = v50;
  }

LABEL_18:

  re::AssetHandle::~AssetHandle(v51);
  if (v16)
  {
  }
}

uint64_t __REMaterialAssetHarvestPerformanceStatsForTechnique_block_invoke_2(re *a1)
{
  v2 = *re::graphicsLogObjects(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_1E1C61000, v2, OS_LOG_TYPE_ERROR, "Unable to harvest material performance stats - unable to find technique!", v4, 2u);
  }

  return (*(*(a1 + 4) + 16))();
}

uint64_t __REMaterialAssetHarvestPerformanceStatsForTechnique_block_invoke_41(re *a1)
{
  v2 = *re::graphicsLogObjects(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_1E1C61000, v2, OS_LOG_TYPE_ERROR, "Unable to harvest material performance stats - unable to find technique variant!", v4, 2u);
  }

  return (*(*(a1 + 4) + 16))();
}

void *__REMaterialAssetHarvestPerformanceStatsForTechnique_block_invoke_42(re *a1)
{
  v1 = a1;
  v2 = atomic_load((*(a1 + 5) + 17));
  if (v2 == 2)
  {
    v3 = (*(a1 + 5) + 17);
    do
    {
      a1 = __ulock_wait();
      v4 = atomic_load(v3);
    }

    while (v4 == 2);
    v2 = atomic_load((*(v1 + 5) + 17));
  }

  if (v2 != 1)
  {
    v5 = *re::graphicsLogObjects(a1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Unable to harvest material performance stats - pipeline data compilation failed!", buf, 2u);
    }

    (*(*(v1 + 4) + 16))();
  }

  v6 = *(v1 + 7);
  v7 = *(v6 + 48);
  v25 = *(**(v1 + 8) + 32);
  v26 = *(**(v1 + 8) + 24);
  re::makeRenderTargetInfoPrediction(**(v1 + 6), v7 + 536, v7 + 584, v7 + 632, v7 + 680, v7 + 728, v7 + 776, *(v6 + 372), v58);
  re::FixedArray<re::AttributeArgument>::FixedArray(v57, *(*(*(v1 + 5) + 8) + 16) + 264);
  v8 = re::FixedArray<re::AttributeArgument>::FixedArray(v53, v57);
  v9 = *(v1 + 6);
  v10 = *(*(*(*(v1 + 5) + 8) + 16) + 312);
  *buf = *(*(*(*(v1 + 5) + 8) + 16) + 296);
  v52 = v10;
  re::makeAttributeResolutionsPrediction(v8, buf, *(v9 + 2844), &v54);
  re::FixedArray<re::AttributeArgument>::deinit(v53);
  re::FixedArray<re::AttributeArgument>::FixedArray(v50, v57);
  v49 = 0u;
  v47 = 0u;
  memset(v48, 0, sizeof(v48));
  DWORD1(v49) = 0x7FFFFFFF;
  memset(v46, 0, sizeof(v46));
  DWORD1(v47) = 0x7FFFFFFF;
  re::makeAttributeTablePrediction(v50, v48, v46, buf);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v46);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v48);
  re::FixedArray<re::AttributeArgument>::deinit(v50);
  v11 = *(v1 + 9);
  v12 = *(v1 + 7);
  v29[0] = v11 + 48;
  v29[1] = v12;
  v29[2] = v11;
  v29[3] = v58;
  v13 = *(v1 + 5);
  v14 = *(v13 + 8);
  v30 = v14;
  if (v14)
  {
    v15 = (v14 + 8);
    v13 = *(v1 + 5);
  }

  v31 = *(v1 + 6);
  v16 = *(*v13 + 8);
  if (v16)
  {
    v16 = *(v16 + 1432);
  }

  v32 = v16;
  v33 = *(v13 + 16);
  v34 = 0;
  v35 = buf;
  v36 = v56;
  v37 = v55;
  v38 = 3;
  v39 = 0;
  v40 = 0;
  v41 = "";
  v42 = "";
  v43 = "";
  v44 = 0;
  v45 = *(v1 + 10);
  v17 = re::compileCachedPipelineStateAsync(v29, 0, 1, &v28);
  v18 = atomic_load((v28 + 208));
  if (v18 == 1)
  {
    v19 = (v28 + 208);
    do
    {
      v17 = __ulock_wait();
      v20 = atomic_load(v19);
    }

    while (v20 == 1);
    v18 = atomic_load((v28 + 208));
  }

  if (v18 == 2)
  {
    v21 = *re::graphicsLogObjects(v17);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *v27 = 0;
      _os_log_error_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_ERROR, "Unable to harvest material performance stats - pipeline state object compilation failed!", v27, 2u);
    }

    (*(*(v1 + 4) + 16))(*(v1 + 4), 0);
  }

  v22 = *(v28 + 200);
  v23 = [v22 performanceStatistics];

  *(v28 + 200) = 0;
  (*(*(v1 + 4) + 16))();

  if (v28)
  {
  }

  if (v45)
  {

    v45 = 0;
  }

  if (v30)
  {
  }

  re::AttributeTable::~AttributeTable(buf);
  if (v54 && v55)
  {
    (*(*v54 + 40))();
  }

  return re::FixedArray<re::AttributeArgument>::deinit(v57);
}

id __copy_helper_block_a8_80c42_ZTSN2NS9SharedPtrIN3MTL13BinaryArchiveEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 80);
  *(a1 + 80) = result;
  return result;
}

void __destroy_helper_block_a8_80c42_ZTSN2NS9SharedPtrIN3MTL13BinaryArchiveEEE(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {

    *(a1 + 80) = 0;
  }
}

void *REAcousticAdjustmentsComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::AcousticAdjustmentsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
}

uint64_t REFrameStatisticsHUDIsOverlayEnabled(uint64_t a1)
{
  if (*(a1 + 204) == 1)
  {
    v1 = *(a1 + 17) ^ 1;
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

const char *REFrameStatisticsHUDGetStatisticsForOption(re::FrameProfiler *a1, int a2)
{
  if (re::FrameProfiler::totalNumberOfFlags(a1, a2) != 1)
  {
    return "";
  }

  StatisticOutputForOption = re::FrameProfiler::getStatisticOutputForOption(a1, a2, 0);
  if (*(StatisticOutputForOption + 8))
  {
    return *(StatisticOutputForOption + 2);
  }

  else
  {
    return StatisticOutputForOption + 9;
  }
}

void *REClippingBoxComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::ClippingBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
}

uint64_t REClippingBoxComponentSetLocalBounds(uint64_t this, __n128 a2, __n128 a3)
{
  *(this + 32) = a2;
  *(this + 48) = a3;
  return re::ecs2::Component::enqueueMarkDirty(this);
}

uint64_t REEventBusSubscribe(re *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[5] = *MEMORY[0x1E69E9840];
  v10 = re::globalAllocators(a1)[2];
  v13[2] = a5;
  v13[3] = v10;
  v13[0] = &unk_1F5D2DE00;
  v13[1] = a4;
  v13[4] = v13;
  v11 = re::EventBus::subscribe(a1, a2, a3, v13, 0, 0);
  re::FunctionBase<24ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable(v13);
  return v11;
}

uint64_t REEventBusSubscribeBlock(re::EventBus *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11[5] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v11[3] = re::globalAllocators(v7)[2];
  v11[0] = &unk_1F5D2DE58;
  v8 = _Block_copy(v7);

  v11[1] = v8;
  v11[4] = v11;
  v9 = re::EventBus::subscribe(a1, a2, a3, v11, 0, 0);
  re::FunctionBase<24ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable(v11);
  return v9;
}

uint64_t REEventBusSubscribeWithMatch(re::EventBus *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v13[5] = *MEMORY[0x1E69E9840];
  v9 = a4;
  v13[3] = re::globalAllocators(v9)[2];
  v13[0] = &unk_1F5D2DE58;
  v10 = _Block_copy(v9);

  v13[1] = v10;
  v13[4] = v13;
  v11 = re::EventBus::subscribe(a1, a2, a3, v13, a5, 0);
  re::FunctionBase<24ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable(v13);
  return v11;
}

uint64_t REAnimationDidStartEventSubscribe(re *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  TypeId = re::EventBus::getTypeId("REAnimationDidStartEvent", a2);

  return REEventBusSubscribe(a1, TypeId, a2, a3, a4);
}

uint64_t REAnimationDidCompleteEventSubscribe(re *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  TypeId = re::EventBus::getTypeId("REAnimationDidCompleteEvent", a2);

  return REEventBusSubscribe(a1, TypeId, a2, a3, a4);
}

uint64_t REAnimationDidLoopEventSubscribe(re *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  TypeId = re::EventBus::getTypeId("REAnimationDidLoopEvent", a2);

  return REEventBusSubscribe(a1, TypeId, a2, a3, a4);
}

uint64_t REAnimationDidTerminateEventSubscribe(re *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  TypeId = re::EventBus::getTypeId("REAnimationDidTerminateEvent", a2);

  return REEventBusSubscribe(a1, TypeId, a2, a3, a4);
}

uint64_t REAnimationStartEventSubscribe(re *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  TypeId = re::EventBus::getTypeId("REAnimationStartEvent", a2);

  return REEventBusSubscribe(a1, TypeId, a2, a3, a4);
}

uint64_t REAnimationCompleteEventSubscribe(re *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  TypeId = re::EventBus::getTypeId("REAnimationCompleteEvent", a2);

  return REEventBusSubscribe(a1, TypeId, a2, a3, a4);
}

uint64_t REAnimationLoopEventSubscribe(re *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  TypeId = re::EventBus::getTypeId("REAnimationLoopEvent", a2);

  return REEventBusSubscribe(a1, TypeId, a2, a3, a4);
}

uint64_t REAnimationTerminateEventSubscribe(re *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  TypeId = re::EventBus::getTypeId("REAnimationTerminateEvent", a2);

  return REEventBusSubscribe(a1, TypeId, a2, a3, a4);
}

uint64_t REAudioPlayerDidChangeStateEventSubscribe(re *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  TypeId = re::EventBus::getTypeId("REAudioPlayerDidChangeStateEvent", a2);

  return REEventBusSubscribe(a1, TypeId, a2, a3, a4);
}

uint64_t REAudioPlayerDidCompleteEventSubscribe(re *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  TypeId = re::EventBus::getTypeId("REAudioPlayerDidCompleteEvent", a2);

  return REEventBusSubscribe(a1, TypeId, a2, a3, a4);
}

uint64_t REAudioPlayerDidCreateAudioUnitEventSubscribe(re *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  TypeId = re::EventBus::getTypeId("REAudioPlayerDidCreateAudioUnitEvent", a2);

  return REEventBusSubscribe(a1, TypeId, a2, a3, a4);
}

uint64_t REAudioPlayerDidPrepareAudioUnitEventSubscribe(re *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  TypeId = re::EventBus::getTypeId("REAudioPlayerDidPrepareAudioUnitEvent", a2);

  return REEventBusSubscribe(a1, TypeId, a2, a3, a4);
}

uint64_t REAudioPlayerDidThrowErrorEventSubscribe(re *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  TypeId = re::EventBus::getTypeId("REAudioPlayerDidThrowErrorEvent", a2);

  return REEventBusSubscribe(a1, TypeId, a2, a3, a4);
}

uint64_t REEngineDoUpdateEventSubscribe(re *a1, char *a2, uint64_t a3, uint64_t a4)
{
  TypeId = re::EventBus::getTypeId("REEngineDoUpdateEvent", a2);
  v9 = REEventBusSubscribe(a1, TypeId, a2, a3, a4);
  re::Engine::updateRaiseUpdateEventScheduleState(a2);
  return v9;
}

uint64_t REEngineDoRenderEventSubscribe(re *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  TypeId = re::EventBus::getTypeId("REEngineDoRenderEvent", a2);

  return REEventBusSubscribe(a1, TypeId, a2, a3, a4);
}

uint64_t RECollisionDidStartEventSubscribe(re *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  TypeId = re::EventBus::getTypeId("RECollisionDidStartEvent", a2);

  return REEventBusSubscribe(a1, TypeId, a2, a3, a4);
}

uint64_t RECollisionDidUpdateEventSubscribe(re *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  TypeId = re::EventBus::getTypeId("RECollisionDidUpdateEvent", a2);

  return REEventBusSubscribe(a1, TypeId, a2, a3, a4);
}

uint64_t RECollisionDidStopEventSubscribe(re *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  TypeId = re::EventBus::getTypeId("RECollisionDidStopEvent", a2);

  return REEventBusSubscribe(a1, TypeId, a2, a3, a4);
}

uint64_t RECollisionStartEventSubscribe(re *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  TypeId = re::EventBus::getTypeId("RECollisionStartEvent", a2);

  return REEventBusSubscribe(a1, TypeId, a2, a3, a4);
}

uint64_t RECollisionUpdateEventSubscribe(re *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  TypeId = re::EventBus::getTypeId("RECollisionUpdateEvent", a2);

  return REEventBusSubscribe(a1, TypeId, a2, a3, a4);
}

uint64_t RECollisionStopEventSubscribe(re *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  TypeId = re::EventBus::getTypeId("RECollisionStopEvent", a2);

  return REEventBusSubscribe(a1, TypeId, a2, a3, a4);
}

uint64_t REMotionStateDidChangeEventSubscribe(re *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  TypeId = re::EventBus::getTypeId("REMotionStateDidChangeEvent", a2);

  return REEventBusSubscribe(a1, TypeId, a2, a3, a4);
}

uint64_t re::internal::Callable<REEventBusSubscribe::$_0,REEventHandlerResult ()(void *,void const*)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D2DE00;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<REEventBusSubscribe::$_0,REEventHandlerResult ()(void *,void const*)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D2DE00;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

void re::internal::Callable<REEventHandlerResult({block_pointer} {__strong})(void *,void const*),REEventHandlerResult ()(void *,void const*)>::~Callable(uint64_t a1)
{

  JUMPOUT(0x1E6906520);
}

void *re::internal::Callable<REEventHandlerResult({block_pointer} {__strong})(void *,void const*),REEventHandlerResult ()(void *,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D2DE58;
  a2[1] = _Block_copy(*(a1 + 8));
  return a2;
}

void *re::internal::Callable<REEventHandlerResult({block_pointer} {__strong})(void *,void const*),REEventHandlerResult ()(void *,void const*)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D2DE58;
  a2[1] = _Block_copy(*(a1 + 8));
  return a2;
}

void *REVideoPlayerComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::VideoPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
}

uint64_t REVideoPlayerComponentGetVideoAsset(uint64_t result)
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

void REVideoPlayerComponentSetVideoAsset(re *a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      re::AssetAPIHelper::assetHandleCreate(a2, v4);
      re::AssetHandle::AssetHandle(v3, v4);
      re::ecs2::VideoPlayerComponent::setVideoAsset(a1, v3);
      re::AssetHandle::~AssetHandle(v3);
      re::AssetHandle::~AssetHandle(v4);
    }
  }
}

uint64_t REVideoPlayerComponentGetGuid(uint64_t result)
{
  if (result)
  {
    return *(result + 88);
  }

  return result;
}

uint64_t REVideoPlayerComponentSetGuid(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 88) = a2;
  }

  return result;
}

uint64_t REVideoPlayerComponentSetScreenRoundedCornerEnabled(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 97) = a2;
  }

  return result;
}

uint64_t REVideoPlayerComponentGetScreenRoundedCornerEnabled(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 97);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t REVideoPlayerComponentSetScaleRoundedCornerEnabled(uint64_t a1, char a2)
{
  if (a1)
  {
    *(a1 + 199) = a2;
    return RENetworkMarkComponentDirty(a1);
  }

  return a1;
}

uint64_t REVideoPlayerComponentGetScaleRoundedCornerEnabled(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 199);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t REVideoPlayerComponentSetScreenAspectRatioAnimationEnabled(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 98) = a2;
  }

  return result;
}

uint64_t REVideoPlayerComponentGetScreenAspectRatioAnimationEnabled(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 98);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t REVideoPlayerComponentSetScreenDeferAspectRatioTransitionToApp(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 99) = a2;
  }

  return result;
}

uint64_t REVideoPlayerComponentGetScreenDeferAspectRatioTransitionToApp(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 99);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t REVideoPlayerComponentGetEnableReflections(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 96);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t REVideoPlayerComponentSetEnableReflections(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 96) = a2;
  }

  return result;
}

uint64_t REVideoPlayerComponentEnableReflections(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 96) = a2;
  }

  return result;
}

uint64_t REVideoPlayerComponentGetPreferredViewingMode(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 176);
  }

  else
  {
    return 1;
  }
}

uint64_t REVideoPlayerComponentGetDesiredViewingMode(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 176);
  }

  else
  {
    return 1;
  }
}

uint64_t REVideoPlayerComponentSetPreferredViewingMode(uint64_t result, int a2)
{
  if (result)
  {
    if (*(result + 176) != a2)
    {
      *(result + 176) = a2;
    }
  }

  return result;
}

uint64_t REVideoPlayerComponentSetDesiredViewingMode(uint64_t result, int a2)
{
  if (result)
  {
    if (*(result + 176) != a2)
    {
      *(result + 176) = a2;
    }
  }

  return result;
}

void REVideoPlayerComponentSetDesiredSpatialVideoMode(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = re::ecs2::ComponentImpl<re::ecs2::VideoPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::safeCast(a1, a2);

  re::ecs2::VideoPlayerComponent::setDesiredSpatialVideoMode(v3, v2);
}

re::ecs2::NetworkComponent *REVideoPlayerComponentDumpHDRFrameAtTimeStamp(re::ecs2::NetworkComponent *result, CMTime *a2, CMTime *a3, const char *a4)
{
  if (result)
  {
    v6 = result;
    v10 = *a2;
    Seconds = CMTimeGetSeconds(&v10);
    v10 = *a3;
    v9 = CMTimeGetSeconds(&v10);
    if (a4)
    {
      if (Seconds >= 0.0 && v9 >= 0.0)
      {
        *(v6 + 112) = 1;
        *(v6 + 120) = Seconds;
        *(v6 + 128) = v9;
        re::DynamicString::operator=((v6 + 144), &v10);
        if (v10.value)
        {
          if (v10.timescale)
          {
            (*(*v10.value + 40))();
          }
        }
      }
    }

    return RENetworkMarkComponentDirty(v6);
  }

  return result;
}

void REVideoPlayerComponentPreloadVideoAsset(re::AssetManager *a1, re::ecs2::VideoPlayerComponent *this)
{
  if (a1)
  {
    if (this)
    {
      re::ecs2::VideoPlayerComponent::preloadVideoAsset(this, a1);
    }
  }
}

uint64_t REVideoPlayerComponentSetLowLatencyEnabled(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 184) = a2;
  }

  return result;
}

uint64_t REVideoPlayerComponentGetLowLatencyEnabled(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 184);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t REVideoPlayerComponentSetScreenWrapTheta(uint64_t result, float a2)
{
  if (result)
  {
    *(result + 188) = a2;
  }

  return result;
}

double REVideoPlayerComponentGetScreenWrapTheta(uint64_t a1)
{
  if (!a1)
  {
    return 0.0;
  }

  LODWORD(result) = *(a1 + 188);
  return result;
}

uint64_t REVideoPlayerComponentSetScreenWrapPostive(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 196) = a2;
  }

  return result;
}

uint64_t REVideoPlayerComponentGetScreenWrapPostive(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 196);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t REVideoPlayerComponentSetScreenWrapAnimation(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 197) = a2;
  }

  return result;
}

uint64_t REVideoPlayerComponentGetScreenWrapAnimation(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 197);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t REVideoPlayerComponentStartBlurVideoFadeIn(uint64_t result, float a2, float a3)
{
  if (result)
  {
    *(result + 100) = a2;
    *(result + 104) = a3;
    *(result + 108) = 1;
  }

  return result;
}

uint64_t REVideoPlayerComponentStartBlurVideoFadeOut(uint64_t result)
{
  if (result)
  {
    *(result + 108) = 2;
  }

  return result;
}

uint64_t REVideoPlayerComponentSetUsesCurvedUIStyleSystemTreatments(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 198) = a2;
  }

  return result;
}

uint64_t REVideoPlayerComponentGetUsesCurvedUIStyleSystemTreatments(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 198);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void REVideoPlayerComponentSetMipMapBias(uint64_t a1, float a2)
{
  re::AssetHandle::AssetHandle(v4, (a1 + 40));
  v3 = re::AssetHandle::blockUntilLoaded<re::VideoAsset>(v4);
  if (v3)
  {
    *(**(v3 + 216) + 14732) = a2;
  }

  re::AssetHandle::~AssetHandle(v4);
}

float REVideoPlayerComponentGetMipMapBias(uint64_t a1)
{
  re::AssetHandle::AssetHandle(v4, (a1 + 40));
  v1 = re::AssetHandle::blockUntilLoaded<re::VideoAsset>(v4);
  if (v1)
  {
    v2 = *(**(v1 + 216) + 14732);
  }

  else
  {
    v2 = -1.0;
  }

  re::AssetHandle::~AssetHandle(v4);
  return v2;
}

uint64_t re::ecs2::ComponentImpl<re::ecs2::VideoPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::safeCast(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1;
    v3 = &re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if ((*(*a1 + 40))(a1) == re::ecs2::ComponentImpl<re::ecs2::VideoPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
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
  v5 = *(v3[14] + 4);
  v6 = (*(*v2 + 40))(v2);
  re::internal::assertLog(6, v7, "assertion failure: '%s' (%s:line %i) Component is wrong type. Expected type: %s, but got: %s", "&reinterpret_cast<Derived *>(component)->componentType() == &Derived::classComponentType()", "safeCast", 101, v5, *(v6 + 32));
  result = _os_crash();
  __break(1u);
  return result;
}

void *RECameraViewDescriptorsComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::CameraViewDescriptorsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
}

uint64_t RECameraViewDescriptorsComponentSetViewMode(re::ecs2::CameraViewDescriptorsComponent *a1, re::ecs2::CameraViewDescriptorsComponent *a2, unsigned int a3)
{
  ViewDescriptor = re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(a1, a2);
  if (a3 >= 3)
  {
    re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) Invalid View Mode set, options are kREViewModeMono, kREViewModeSinglePass or kREViewModeDualPass", "!Unreachable code", "RECameraViewDescriptorsComponentSetViewMode", 35);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    *(ViewDescriptor + 200) = a3;

    return re::ecs2::Component::enqueueMarkDirty(a1);
  }

  return result;
}

uint64_t RECameraViewDescriptorsComponentGetViewMode(re::ecs2::CameraViewDescriptorsComponent *a1, re::ecs2::CameraViewDescriptorsComponent *a2)
{
  result = *(re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(a1, a2) + 200);
  if (result >= 3)
  {
    re::internal::assertLog(4, v3, "assertion failure: '%s' (%s:line %i) Invalid View Mode on camera, supported options are ViewMode::kMono, ViewMode::kSinglePass or ViewMode::kDualPass", "!Unreachable code", "RECameraViewDescriptorsComponentGetViewMode", 61);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t RECameraViewDescriptorsComponentClearCameraViewDescriptors(uint64_t a1)
{
  re::DynamicArray<re::ecs2::CameraViewDescriptor>::clear((a1 + 240));

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t RECameraViewDescriptorsComponentAddViewDescriptor(void *a1)
{
  v68 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = xmmword_1E30474D0;
  v15 = 117440767;
  v28 = xmmword_1E311E8B0;
  memset(v11, 0, sizeof(v11));
  v14 = 0;
  v16 = -1;
  v17 = 0;
  v18 = 0u;
  v19 = 0;
  v26 = 0;
  v27 = 0;
  v20 = 0u;
  v21 = 0u;
  v23 = 0u;
  v24 = 0u;
  v22 = 0;
  v25 = 0;
  v29 = unk_1E311E8C0;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 272, 8);
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 2) = 0u;
  *(v3 + 3) = 0u;
  *(v3 + 4) = 0u;
  *(v3 + 5) = 0u;
  *(v3 + 6) = 0u;
  *(v3 + 7) = 0u;
  *(v3 + 8) = 0u;
  *(v3 + 9) = 0u;
  *(v3 + 10) = 0u;
  *(v3 + 11) = 0u;
  *(v3 + 12) = 0u;
  *(v3 + 13) = 0u;
  *(v3 + 14) = 0u;
  *(v3 + 15) = 0u;
  *(v3 + 16) = 0u;
  v34 = v3;
  v35 = -1;
  v36 = 1;
  v37 = 0;
  v38 = re::globalAllocators(v3)[2];
  v39 = 0;
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  re::Pose<float>::Pose(v10, 0, 0, &v7);
  v40 = v10[0];
  v41 = v10[1];
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  re::Pose<float>::Pose(v6, 0, 0, &v7);
  v42 = v6[0];
  v43 = v6[1];
  v44 = 0;
  v45 = xmmword_1E308B7C0;
  v46 = 0xBDCCCCCD3DCCCCCDLL;
  v47 = 0;
  v48 = xmmword_1E30476A0;
  v49 = 1;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v55 = xmmword_1E308B7C0;
  v56 = 0xBDCCCCCD3DCCCCCDLL;
  v57 = 0;
  v58 = xmmword_1E30476A0;
  v59 = 1;
  v60 = 0;
  v61 = 0;
  v62 = 0;
  v63 = 0;
  v67 = 0;
  v66 = 0;
  v65 = 0;
  v64 = 0u;
  re::DynamicArray<re::ecs2::CameraViewDescriptor>::add((a1 + 30), v11);
  v4 = a1[32];
  re::ecs2::Component::enqueueMarkDirty(a1);
  re::ecs2::CameraViewDescriptor::~CameraViewDescriptor(v11);
  return v4 + 0xFFFF;
}

uint64_t RECameraViewDescriptorsComponentCameraViewDescriptorGetSpecifyCommandAtIndexLane(re::ecs2::CameraViewDescriptorsComponent *a1, re::ecs2::CameraViewDescriptorsComponent *a2, unsigned int a3)
{
  ViewDescriptor = re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(a1, a2);
  if (*(ViewDescriptor + 928) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v5 = *(ViewDescriptor + 944) + 136 * a3;
  if (*(v5 + 8))
  {
    v6 = *(v5 + 16);
  }

  else
  {
    v6 = v5 + 9;
  }

  v7 = MEMORY[0x1E696AEC0];

  return [v7 stringWithUTF8String:v6];
}

uint64_t RECameraViewDescriptorsComponentCameraViewDescriptorGetSpecifyCommandAtIndexRenderTarget(re::ecs2::CameraViewDescriptorsComponent *a1, re::ecs2::CameraViewDescriptorsComponent *a2, unsigned int a3, unsigned int a4)
{
  ViewDescriptor = re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(a1, a2);
  if (*(ViewDescriptor + 928) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(ViewDescriptor + 944) + 136 * a3 + 24 * a4 + 32);
}

uint64_t RECameraViewDescriptorsComponentCameraViewDescriptorGetSpecifyCommandAtIndexRenderLayer(re::ecs2::CameraViewDescriptorsComponent *a1, re::ecs2::CameraViewDescriptorsComponent *a2, unsigned int a3, unsigned int a4)
{
  ViewDescriptor = re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(a1, a2);
  if (*(ViewDescriptor + 928) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(ViewDescriptor + 944) + 136 * a3 + 4 * a4 + 80);
}

id RECameraViewDescriptorsComponentCameraViewDescriptorGetSpecifyCommandAtIndexTexture(re::ecs2::CameraViewDescriptorsComponent *a1, re::ecs2::CameraViewDescriptorsComponent *a2, unsigned int a3, unsigned int a4)
{
  ViewDescriptor = re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(a1, a2);
  if (*(ViewDescriptor + 928) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v7 = *(*(ViewDescriptor + 944) + 136 * a3 + 8 * a4 + 88);

  return v7;
}

id RECameraViewDescriptorsComponentCameraViewDescriptorGetSpecifyCommandAtIndexTextureDescriptor(re::ecs2::CameraViewDescriptorsComponent *a1, re::ecs2::CameraViewDescriptorsComponent *a2, unsigned int a3, unsigned int a4)
{
  ViewDescriptor = re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(a1, a2);
  if (*(ViewDescriptor + 928) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v7 = *(*(ViewDescriptor + 944) + 136 * a3 + 8 * a4 + 104);

  return v7;
}

uint64_t RECameraViewDescriptorsComponentCameraViewDescriptorGetScopeName(_anonymous_namespace_ *a1, re::ecs2::CameraViewDescriptorsComponent *a2)
{
  v4 = MEMORY[0x1E696AEC0];
  if (v9)
  {
    v5 = *&v10[7];
  }

  else
  {
    v5 = v10;
  }

  v6 = [v4 stringWithUTF8String:v5];
  if (v8 && (v9 & 1) != 0)
  {
    (*(*v8 + 40))();
  }

  return v6;
}

uint64_t RECameraViewDescriptorsComponentCameraViewDescriptorCopySettingStruct(re::ecs2::CameraViewDescriptorsComponent *a1, re::ecs2::CameraViewDescriptorsComponent *a2)
{
  v71 = *MEMORY[0x1E69E9840];
  ViewDescriptor = re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(a1, a2);
  v3 = re::globalAllocators(ViewDescriptor);
  v4 = (*(*v3[2] + 32))(v3[2], 928, 8);
  v5 = re::RuntimeRenderGraphDataStruct::RuntimeRenderGraphDataStruct(v4, "CameraData");
  re::RuntimeRenderGraphDataStruct::setOrAddValueOfType<BOOL>(v5, "disableAA", *(ViewDescriptor + 24));
  re::RuntimeRenderGraphDataStruct::setOrAddValueOfType<BOOL>(v4, "enableUnwarp", *(ViewDescriptor + 26));
  re::RuntimeRenderGraphDataStruct::setOrAddValueOfType<BOOL>(v4, "disableTonemapping", *(ViewDescriptor + 25));
  re::RuntimeRenderGraphDataStruct::setOrAddValueOfType<BOOL>(v4, "forceHidePassthroughFeed", *(ViewDescriptor + 28));
  re::RuntimeRenderGraphDataStruct::setOrAddValueOfType<BOOL>(v4, "disableDebugDraw", *(ViewDescriptor + 27));
  re::RuntimeRenderGraphDataStruct::setOrAddValueOfType<BOOL>(v4, "disableSceneRenderGraphFileProviders", *(ViewDescriptor + 29));
  re::RuntimeRenderGraphDataStruct::setOrAddValueOfType<BOOL>(v4, "loadColor", *(ViewDescriptor + 30));
  re::RuntimeRenderGraphDataStruct::setOrAddValueOfType<BOOL>(v4, "skipManagedForceClear", *(ViewDescriptor + 32));
  re::RuntimeRenderGraphDataStruct::setOrAddValueOfType<re::Vector4<float>>(v4, "clearColor", *(ViewDescriptor + 48), *(ViewDescriptor + 56));
  re::RuntimeRenderGraphDataStruct::setOrAddValueOfType<float>(v4, "clearDepth", *(ViewDescriptor + 64));
  re::RuntimeRenderGraphDataStruct::setOrAddValueOfType<unsigned char>(v4, "stencilMask", *(ViewDescriptor + 68));
  re::RuntimeRenderGraphDataStruct::setOrAddValueOfType<unsigned char>(v4, "stencilReference", *(ViewDescriptor + 69));
  v57 = *(ViewDescriptor + 70);
  {
    goto LABEL_62;
  }

  while (1)
  {
    v7 = re::introspect<re::mtl::StencilOperation>(BOOL)::info;
    v8 = *(re::introspect<re::mtl::StencilOperation>(BOOL)::info + 4);
    v58 = 0x3B329D0E99C91B0BLL;
    __src = v57;
    v9 = re::SmallHashTable<re::WeakStringID,re::IntrospectionMember,8ul,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false>::tryGet(v4 + 24, &v58);
    if (v9)
    {
      v10 = v9;
      {
        re::introspect<re::mtl::StencilOperation>(BOOL)::info = re::mtl::introspect_StencilOperation(0, v53);
      }

      if (re::introspect<re::mtl::StencilOperation>(BOOL)::info == *(v10 + 16))
      {
        v11 = *(v10 + 36);
        v12 = *(v4 + 752);
        if (v12 <= v11)
        {
          *v63 = 0;
          v69 = 0u;
          v70 = 0u;
          v67 = 0u;
          v68 = 0u;
          buf = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v60 = 136315906;
          *v61 = "operator[]";
          *&v61[8] = 1024;
          *&v61[10] = 858;
          *&v61[14] = 2048;
          *&v61[16] = v11;
          *&v61[24] = 2048;
          *&v61[26] = v12;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_61;
        }

        if (*(v4 + 760))
        {
          v13 = v4 + 768;
        }

        else
        {
          v13 = *(v4 + 776);
        }

        memcpy((v13 + v11), &__src, *(re::introspect<re::mtl::StencilOperation>(BOOL)::info + 5));
      }
    }

    else if (v8 <= 9 && ((0x301u >> v8) & 1) != 0)
    {
      v14 = re::globalAllocators(0);
      v15 = (*(*v14[2] + 32))(v14[2], 17, 0);
      strcpy(v15, "stencilOperation");
      re::IntrospectionMember::IntrospectionMember(&v60);
      *&v61[4] = v15;
      v16 = *(v4 + 752);
      v17 = (v16 + v7[6] - 1) & -v7[6];
      v18 = v17 - v16;
      if (v17 > v16)
      {
        do
        {
          LOBYTE(buf) = 0;
          re::DynamicOverflowArray<char,128ul>::add(v4 + 744, &buf);
          --v18;
        }

        while (v18);
      }

      v19 = *&v61[12];
      *&v61[12] = v7;
      buf = v19;
      re::SerializedReference<re::IntrospectionBase const*>::reset(&buf);
      v20 = *(v4 + 752);
      *&v61[32] = v20;
      v60 = 1;
      v21 = v20;
      v22 = (v7[5] + v7[6] - 1) & -v7[6];
      if (!v22)
      {
        goto LABEL_70;
      }

      do
      {
        LOBYTE(buf) = 0;
        v23 = re::DynamicOverflowArray<char,128ul>::add(v4 + 744, &buf);
        --v22;
      }

      while (v22);
      v21 = *(v4 + 752);
      if (v21 <= v20)
      {
LABEL_70:
        v58 = 0;
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        buf = 0u;
        v55 = v21;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v63 = 136315906;
        *&v63[4] = "operator[]";
        *&v63[12] = 1024;
        *&v63[14] = 858;
        *&v63[18] = 2048;
        *&v63[20] = v20;
        v64 = 2048;
        v65 = v55;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_71;
      }

      v24 = (*(v4 + 760) & 1) != 0 ? v4 + 768 : *(v4 + 776);
      *&v68 = 0;
      buf = 0u;
      v67 = 0u;
      *v63 = re::globalAllocators(v23)[2];
      *&v63[8] = 0;
      *&v63[16] = &buf;
      if (v15)
      {
        v26 = *v15;
        if (*v15)
        {
          v27 = v15[1];
          if (v27)
          {
            v28 = (v15 + 2);
            do
            {
              v26 = 31 * v26 + v27;
              v29 = *v28++;
              v27 = v29;
            }

            while (v29);
          }

          v26 &= ~0x8000000000000000;
        }
      }

      else
      {
        v26 = 0x7FFFFFFFFFFFFFFFLL;
      }

      *&buf = v26;
      re::SmallHashTable<re::WeakStringID,re::IntrospectionMember,8ul,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false>::add(v4 + 24, &buf, &v60, 0);
      re::SerializedReference<re::IntrospectionBase const*>::reset(v62);
      re::SerializedReference<re::IntrospectionBase const*>::reset(&v61[12]);
    }

    else
    {
      v25 = *re::graphicsLogObjects(0);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = "stencilOperation";
        _os_log_impl(&dword_1E1C61000, v25, OS_LOG_TYPE_DEFAULT, "Attempted to add a non-basic type to RuntimeRenderGraphData: %s", &buf, 0xCu);
      }
    }

    v57 = *(ViewDescriptor + 71);
    {
      re::introspect<re::mtl::CompareFunction>(BOOL)::info = re::mtl::introspect_CompareFunction(0, v52);
    }

    v30 = re::introspect<re::mtl::CompareFunction>(BOOL)::info;
    v31 = *(re::introspect<re::mtl::CompareFunction>(BOOL)::info + 4);
    v58 = 0x51F9ECF944B29B89;
    __src = v57;
    v32 = re::SmallHashTable<re::WeakStringID,re::IntrospectionMember,8ul,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false>::tryGet(v4 + 24, &v58);
    if (!v32)
    {
      break;
    }

    v33 = v32;
    {
      re::introspect<re::mtl::CompareFunction>(BOOL)::info = re::mtl::introspect_CompareFunction(0, v54);
    }

    if (re::introspect<re::mtl::CompareFunction>(BOOL)::info != *(v33 + 16))
    {
      goto LABEL_59;
    }

    v11 = *(v33 + 36);
    v12 = *(v4 + 752);
    if (v12 > v11)
    {
      if (*(v4 + 760))
      {
        v34 = v4 + 768;
      }

      else
      {
        v34 = *(v4 + 776);
      }

      memcpy((v34 + v11), &__src, *(re::introspect<re::mtl::CompareFunction>(BOOL)::info + 5));
LABEL_59:
      re::RuntimeRenderGraphDataStruct::setOrAddValueOfType<unsigned int>(v4, "stencilOperationUint", *(ViewDescriptor + 70));
      re::RuntimeRenderGraphDataStruct::setOrAddValueOfType<unsigned int>(v4, "meshSceneFilterMask", *(ViewDescriptor + 72));
      return v4;
    }

LABEL_61:
    *v63 = 0;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    buf = 0u;
    ViewDescriptor = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v60 = 136315906;
    *v61 = "operator[]";
    *&v61[8] = 1024;
    *&v61[10] = 858;
    *&v61[14] = 2048;
    *&v61[16] = v11;
    *&v61[24] = 2048;
    *&v61[26] = v12;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_62:
    {
      re::introspect<re::mtl::StencilOperation>(BOOL)::info = re::mtl::introspect_StencilOperation(0, v51);
    }
  }

  if (v31 > 9 || ((0x301u >> v31) & 1) == 0)
  {
    v45 = *re::graphicsLogObjects(0);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "stencilCompare";
      _os_log_impl(&dword_1E1C61000, v45, OS_LOG_TYPE_DEFAULT, "Attempted to add a non-basic type to RuntimeRenderGraphData: %s", &buf, 0xCu);
    }

    goto LABEL_59;
  }

  v35 = re::globalAllocators(0);
  v36 = (*(*v35[2] + 32))(v35[2], 15, 0);
  strcpy(v36, "stencilCompare");
  re::IntrospectionMember::IntrospectionMember(&v60);
  *&v61[4] = v36;
  v37 = *(v4 + 752);
  v38 = (v37 + v30[6] - 1) & -v30[6];
  v39 = v38 - v37;
  if (v38 > v37)
  {
    do
    {
      LOBYTE(buf) = 0;
      re::DynamicOverflowArray<char,128ul>::add(v4 + 744, &buf);
      --v39;
    }

    while (v39);
  }

  v40 = *&v61[12];
  *&v61[12] = v30;
  buf = v40;
  re::SerializedReference<re::IntrospectionBase const*>::reset(&buf);
  v20 = *(v4 + 752);
  *&v61[32] = v20;
  v60 = 1;
  v41 = v20;
  v42 = (v30[5] + v30[6] - 1) & -v30[6];
  if (v42)
  {
    do
    {
      LOBYTE(buf) = 0;
      v43 = re::DynamicOverflowArray<char,128ul>::add(v4 + 744, &buf);
      --v42;
    }

    while (v42);
    v41 = *(v4 + 752);
    if (v41 > v20)
    {
      if (*(v4 + 760))
      {
        v44 = v4 + 768;
      }

      else
      {
        v44 = *(v4 + 776);
      }

      *&v68 = 0;
      buf = 0u;
      v67 = 0u;
      *v63 = re::globalAllocators(v43)[2];
      *&v63[8] = 0;
      *&v63[16] = &buf;
      if (v36)
      {
        v46 = *v36;
        if (*v36)
        {
          v47 = v36[1];
          if (v47)
          {
            v48 = (v36 + 2);
            do
            {
              v46 = 31 * v46 + v47;
              v49 = *v48++;
              v47 = v49;
            }

            while (v49);
          }

          v46 &= ~0x8000000000000000;
        }
      }

      else
      {
        v46 = 0x7FFFFFFFFFFFFFFFLL;
      }

      *&buf = v46;
      re::SmallHashTable<re::WeakStringID,re::IntrospectionMember,8ul,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false>::add(v4 + 24, &buf, &v60, 0);
      re::SerializedReference<re::IntrospectionBase const*>::reset(v62);
      re::SerializedReference<re::IntrospectionBase const*>::reset(&v61[12]);
      goto LABEL_59;
    }
  }

LABEL_71:
  v58 = 0;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  buf = 0u;
  v56 = v41;
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  *v63 = 136315906;
  *&v63[4] = "operator[]";
  *&v63[12] = 1024;
  *&v63[14] = 858;
  *&v63[18] = 2048;
  *&v63[20] = v20;
  v64 = 2048;
  v65 = v56;
  _os_log_send_and_compose_impl();
  result = _os_crash_msg();
  __break(1u);
  return result;
}

void re::RuntimeRenderGraphDataStruct::setOrAddValueOfType<unsigned char>(uint64_t a1, char *a2, char a3)
{
  v48 = *MEMORY[0x1E69E9840];
  v34 = a3;
  {
    goto LABEL_38;
  }

  while (1)
  {
    v5 = re::introspect<unsigned char>(BOOL)::info;
    v6 = *(re::introspect<unsigned char>(BOOL)::info + 4);
    if (a2)
    {
      v7 = *a2;
      if (*a2)
      {
        v8 = a2[1];
        if (v8)
        {
          v9 = (a2 + 2);
          do
          {
            v7 = 31 * v7 + v8;
            v10 = *v9++;
            v8 = v10;
          }

          while (v10);
        }

        v7 &= ~0x8000000000000000;
      }
    }

    else
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v35 = v7;
    __src = v34;
    v11 = re::SmallHashTable<re::WeakStringID,re::IntrospectionMember,8ul,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false>::tryGet(a1 + 24, &v35);
    if (!v11)
    {
      break;
    }

    v12 = v11;
    {
      re::introspect<unsigned char>(BOOL)::info = re::introspect_uint8_t(0, v33);
    }

    if (re::introspect<unsigned char>(BOOL)::info != *(v12 + 16))
    {
      return;
    }

    v13 = *(v12 + 36);
    a2 = *(a1 + 752);
    if (a2 > v13)
    {
      if (*(a1 + 760))
      {
        v14 = a1 + 768;
      }

      else
      {
        v14 = *(a1 + 776);
      }

      memcpy((v14 + v13), &__src, *(re::introspect<unsigned char>(BOOL)::info + 5));
      return;
    }

    *v40 = 0;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    buf = 0u;
    a1 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v37 = 136315906;
    *v38 = "operator[]";
    *&v38[8] = 1024;
    *&v38[10] = 858;
    *&v38[14] = 2048;
    *&v38[16] = v13;
    *&v38[24] = 2048;
    *&v38[26] = a2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_38:
    {
      re::introspect<unsigned char>(BOOL)::info = re::introspect_uint8_t(0, v32);
    }
  }

  if (((v6 < 0xA) & (0x301u >> v6)) != 0)
  {
    v15 = strlen(a2);
    v16 = re::globalAllocators(v15);
    v17 = (*(*v16[2] + 32))(v16[2], v15 + 1, 0);
    strcpy(v17, a2);
    re::IntrospectionMember::IntrospectionMember(&v37);
    *&v38[4] = v17;
    v18 = *(a1 + 752);
    v19 = (v18 + v5[6] - 1) & -v5[6];
    v20 = v19 - v18;
    if (v19 > v18)
    {
      do
      {
        LOBYTE(buf) = 0;
        re::DynamicOverflowArray<char,128ul>::add(a1 + 744, &buf);
        --v20;
      }

      while (v20);
    }

    v21 = *&v38[12];
    *&v38[12] = v5;
    buf = v21;
    re::SerializedReference<re::IntrospectionBase const*>::reset(&buf);
    v22 = *(a1 + 752);
    *&v38[32] = v22;
    v37 = 1;
    v23 = v22;
    v24 = (v5[5] + v5[6] - 1) & -v5[6];
    if (!v24)
    {
      goto LABEL_42;
    }

    do
    {
      LOBYTE(buf) = 0;
      v25 = re::DynamicOverflowArray<char,128ul>::add(a1 + 744, &buf);
      --v24;
    }

    while (v24);
    v23 = *(a1 + 752);
    if (v23 > v22)
    {
      if (*(a1 + 760))
      {
        v26 = a1 + 768;
      }

      else
      {
        v26 = *(a1 + 776);
      }

      *&v45 = 0;
      buf = 0u;
      v44 = 0u;
      *v40 = re::globalAllocators(v25)[2];
      *&v40[8] = 0;
      *&v40[16] = &buf;
      if (v17)
      {
        v28 = *v17;
        if (*v17)
        {
          v29 = v17[1];
          if (v29)
          {
            v30 = (v17 + 2);
            do
            {
              v28 = 31 * v28 + v29;
              v31 = *v30++;
              v29 = v31;
            }

            while (v31);
          }

          v28 &= ~0x8000000000000000;
        }
      }

      else
      {
        v28 = 0x7FFFFFFFFFFFFFFFLL;
      }

      *&buf = v28;
      re::SmallHashTable<re::WeakStringID,re::IntrospectionMember,8ul,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false>::add(a1 + 24, &buf, &v37, 0);
      re::SerializedReference<re::IntrospectionBase const*>::reset(&v39);
      re::SerializedReference<re::IntrospectionBase const*>::reset(&v38[12]);
    }

    else
    {
LABEL_42:
      v35 = 0;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      buf = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v40 = 136315906;
      *&v40[4] = "operator[]";
      *&v40[12] = 1024;
      *&v40[14] = 858;
      *&v40[18] = 2048;
      *&v40[20] = v22;
      v41 = 2048;
      v42 = v23;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }
  }

  else
  {
    v27 = *re::graphicsLogObjects(0);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = a2;
      _os_log_impl(&dword_1E1C61000, v27, OS_LOG_TYPE_DEFAULT, "Attempted to add a non-basic type to RuntimeRenderGraphData: %s", &buf, 0xCu);
    }
  }
}

void re::RuntimeRenderGraphDataStruct::setOrAddValueOfType<unsigned int>(uint64_t a1, char *a2, int a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v36 = a3;
  {
    re::introspect<unsigned int>(BOOL)::info = re::introspect_uint32_t(0, v29);
  }

  v5 = re::introspect<unsigned int>(BOOL)::info;
  v6 = *(re::introspect<unsigned int>(BOOL)::info + 4);
  if (a2)
  {
    v7 = *a2;
    if (*a2)
    {
      v8 = a2[1];
      if (v8)
      {
        v9 = (a2 + 2);
        do
        {
          v7 = 31 * v7 + v8;
          v10 = *v9++;
          v8 = v10;
        }

        while (v10);
      }

      v7 &= ~0x8000000000000000;
    }
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  *&buf = v7;
  v11 = re::RuntimeRenderGraphDataStruct::setValueOfType<unsigned int>(a1, &buf, v36);
  if (!v11)
  {
    if (((v6 < 0xA) & (0x301u >> v6)) != 0)
    {
      v12 = strlen(a2);
      v13 = re::globalAllocators(v12);
      v14 = (*(*v13[2] + 32))(v13[2], v12 + 1, 0);
      strcpy(v14, a2);
      re::IntrospectionMember::IntrospectionMember(&v31);
      v32 = v14;
      v15 = *(a1 + 752);
      v16 = (v15 + v5[6] - 1) & -v5[6];
      v17 = v16 - v15;
      if (v16 > v15)
      {
        do
        {
          LOBYTE(buf) = 0;
          re::DynamicOverflowArray<char,128ul>::add(a1 + 744, &buf);
          --v17;
        }

        while (v17);
      }

      v18 = v33;
      v33 = v5;
      buf = v18;
      re::SerializedReference<re::IntrospectionBase const*>::reset(&buf);
      v19 = *(a1 + 752);
      v34 = v19;
      v31 = 1;
      v20 = v19;
      v21 = (v5[5] + v5[6] - 1) & -v5[6];
      if (!v21)
      {
        goto LABEL_32;
      }

      do
      {
        LOBYTE(buf) = 0;
        v22 = re::DynamicOverflowArray<char,128ul>::add(a1 + 744, &buf);
        --v21;
      }

      while (v21);
      v20 = *(a1 + 752);
      if (v20 > v19)
      {
        if (*(a1 + 760))
        {
          v23 = a1 + 768;
        }

        else
        {
          v23 = *(a1 + 776);
        }

        *&v43 = 0;
        buf = 0u;
        v42 = 0u;
        *v38 = re::globalAllocators(v22)[2];
        *&v38[8] = 0;
        *&v38[16] = &buf;
        if (v14)
        {
          v25 = *v14;
          if (*v14)
          {
            v26 = v14[1];
            if (v26)
            {
              v27 = (v14 + 2);
              do
              {
                v25 = 31 * v25 + v26;
                v28 = *v27++;
                v26 = v28;
              }

              while (v28);
            }

            v25 &= ~0x8000000000000000;
          }
        }

        else
        {
          v25 = 0x7FFFFFFFFFFFFFFFLL;
        }

        *&buf = v25;
        re::SmallHashTable<re::WeakStringID,re::IntrospectionMember,8ul,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false>::add(a1 + 24, &buf, &v31, 0);
        re::SerializedReference<re::IntrospectionBase const*>::reset(&v35);
        re::SerializedReference<re::IntrospectionBase const*>::reset(&v33);
      }

      else
      {
LABEL_32:
        v37 = 0;
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        buf = 0u;
        v30 = v20;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v38 = 136315906;
        *&v38[4] = "operator[]";
        *&v38[12] = 1024;
        *&v38[14] = 858;
        *&v38[18] = 2048;
        *&v38[20] = v19;
        v39 = 2048;
        v40 = v30;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }
    }

    else
    {
      v24 = *re::graphicsLogObjects(v11);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = a2;
        _os_log_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_DEFAULT, "Attempted to add a non-basic type to RuntimeRenderGraphData: %s", &buf, 0xCu);
      }
    }
  }
}

uint64_t RECameraViewDescriptorsComponentCameraViewDescriptorSetSettingStruct(re::ecs2::CameraViewDescriptorsComponent *a1, re::ecs2::CameraViewDescriptorsComponent *a2, const re::RuntimeRenderGraphDataStruct *a3)
{
  ViewDescriptor = re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(a1, a2);
  result = re::ecs2::CameraViewDescriptor::updateWithSettings(ViewDescriptor, a3);
  if (result)
  {
    result = re::ecs2::Component::enqueueMarkDirty(a1);
    v7 = *(a1 + 2);
    if (v7)
    {
      do
      {
        v8 = v7;
        v7 = *(v7 + 32);
      }

      while (v7);
      v9 = *(v8 + 24);
      if (v9)
      {
        result = *(v9 + 56);
        if (result)
        {
          v10 = (*(*result + 32))(result);
          result = re::ServiceLocator::serviceOrNull<re::FrameAnalysisService>(v10);
          if (result)
          {
            v11 = result;
            result = (*(*result + 168))(result);
            if (result)
            {
              v12 = *(*v11 + 160);

              return v12(v11, 1);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t RECameraViewDescriptorsComponentCameraViewDescriptorSetRenderGraph(re::ecs2::CameraViewDescriptorsComponent *a1, re::ecs2::CameraViewDescriptorsComponent *a2, uint64_t a3)
{
  ViewDescriptor = re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(a1, a2);
  re::AssetAPIHelper::assetHandleCreate(a3, &v11);
  v6 = v11;
  v7 = ViewDescriptor[1];
  v8 = ViewDescriptor[2];
  ViewDescriptor[1] = v12;
  v12 = v7;
  v9 = *ViewDescriptor;
  *ViewDescriptor = v6;
  ViewDescriptor[2] = v13;
  v11 = v9;
  v13 = v8;
  re::AssetHandle::~AssetHandle(&v11);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t RECameraViewDescriptorsComponentCameraViewDescriptorClearPickupScopeLanes(re::ecs2::CameraViewDescriptorsComponent *a1, re::ecs2::CameraViewDescriptorsComponent *a2)
{
  ViewDescriptor = re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(a1, a2);
  re::DynamicArray<re::ecs2::ScopeLanePair>::clear(ViewDescriptor + 80);

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t RECameraViewDescriptorsComponentCameraViewDescriptorAddPickupScopeLane(re::ecs2::CameraViewDescriptorsComponent *a1, re::ecs2::CameraViewDescriptorsComponent *a2, const char *a3, const char *a4)
{
  ViewDescriptor = re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(a1, a2);
  *(&v17 + 1) = 0;
  v18 = 0uLL;
  v10 = re::DynamicString::setCapacity(&v17, 0);
  *(&v19 + 1) = 0;
  v20 = 0uLL;
  re::DynamicString::setCapacity(&v19, 0);
  re::DynamicString::operator=(&v17, &v15);
  re::DynamicString::operator=(&v19, &v13);
  v11.n128_f64[0] = re::DynamicArray<re::ecs2::ScopeLanePair>::add((ViewDescriptor + 80), &v17);
  if (v19)
  {
    if (BYTE8(v19))
    {
      (*(*v19 + 40))(v11.n128_f64[0]);
    }

    v11 = 0uLL;
    v19 = 0u;
    v20 = 0u;
  }

  if (v17)
  {
    if (BYTE8(v17))
    {
      (*(*v17 + 40))(v11);
    }

    v11 = 0uLL;
    v17 = 0u;
    v18 = 0u;
  }

  if (v13 && (v14 & 1) != 0)
  {
    (*(*v13 + 40))(v11);
  }

  if (v15 && (v16 & 1) != 0)
  {
    (*(*v15 + 40))(v11);
  }

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

float RECameraViewDescriptorsComponentCameraViewDescriptorGetViewport(re::ecs2::CameraViewDescriptorsComponent *a1, re::ecs2::CameraViewDescriptorsComponent *a2, unsigned int a3)
{
  ViewDescriptor = re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(a1, a2);
  v5 = 220;
  if (a3 < 2)
  {
    v5 = 204;
  }

  return *(ViewDescriptor + v5);
}

uint64_t RECameraViewDescriptorsComponentCameraViewDescriptorSetViewport(re::ecs2::CameraViewDescriptorsComponent *a1, re::ecs2::CameraViewDescriptorsComponent *a2, unsigned int a3, float a4, float a5, float a6, float a7)
{
  ViewDescriptor = re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(a1, a2);
  v14 = 220;
  if (a3 < 2)
  {
    v14 = 204;
  }

  v15 = (ViewDescriptor + v14);
  *v15 = a4;
  v15[1] = a5;
  v15[2] = a6;
  v15[3] = a7;

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t RECameraViewDescriptorsComponentClearSpecifyCommands(re::ecs2::CameraViewDescriptorsComponent *a1, re::ecs2::CameraViewDescriptorsComponent *a2)
{
  re::ecs2::CameraViewDescriptorsComponent::clearSpecifyCommands(a1, a2);

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t RECameraViewDescriptorsComponentAddSpecifyCommandFromTarget(re::ecs2::CameraViewDescriptorsComponent *a1, re::ecs2::CameraViewDescriptorsComponent *a2, const char *a3, uint64_t a4, unsigned int a5)
{
  ViewDescriptor = re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(a1, a2);
  SpecifyByLane = re::ecs2::CameraViewDescriptor::tryGetSpecifyByLane(ViewDescriptor, a3);
  v12 = re::ecs2::Component::enqueueMarkDirty(a1);
  if (SpecifyByLane)
  {
    if (a5 >= 2)
    {
      if (a5 != 2)
      {
        return 1;
      }

      re::AssetAPIHelper::assetHandleCreate(a4, &v38);
      v18 = *(SpecifyByLane + 56);
      *(SpecifyByLane + 56) = v38;
      v38 = v18;
      v14 = *(SpecifyByLane + 72);
      *(SpecifyByLane + 72) = v39;
    }

    else
    {
      re::AssetAPIHelper::assetHandleCreate(a4, &v38);
      v13 = *(SpecifyByLane + 32);
      *(SpecifyByLane + 32) = v38;
      v38 = v13;
      v14 = *(SpecifyByLane + 48);
      *(SpecifyByLane + 48) = v39;
    }

    v39 = v14;
    re::AssetHandle::~AssetHandle(&v38);
    return 1;
  }

  *(&v38 + 1) = 0;
  v39 = 0;
  v40 = 0;
  re::DynamicString::setCapacity(&v38, 0);
  memset(v42, 0, sizeof(v42));
  v41 = 0u;
  v43 = -1;
  v44 = 0u;
  memset(v45, 0, 28);
  v15 = strlen(a3);
  *&v46 = a3;
  *(&v46 + 1) = v15;
  re::DynamicString::operator=(&v38, &v46);
  if (a5 < 2)
  {
    re::AssetAPIHelper::assetHandleCreate(a4, &v46);
    v16 = v41;
    v41 = v46;
    v46 = v16;
    v17 = *&v42[0];
    *&v42[0] = v47;
LABEL_13:
    v47 = v17;
    re::AssetHandle::~AssetHandle(&v46);
    goto LABEL_14;
  }

  if (a5 == 2)
  {
    re::AssetAPIHelper::assetHandleCreate(a4, &v46);
    v21 = *(v42 + 8);
    *(v42 + 8) = v46;
    v46 = v21;
    v17 = *(&v42[1] + 1);
    *(&v42[1] + 1) = v47;
    goto LABEL_13;
  }

LABEL_14:
  re::DynamicString::DynamicString(&v34, &v38);
  for (i = 32; i != 80; i += 24)
  {
    re::AssetHandle::AssetHandle((&v34 + i), (&v38 + i));
  }

  v35 = v43;
  for (j = 11; j != 13; ++j)
  {
    v34.n128_u64[j] = *(&v38 + j * 8);
  }

  do
  {
    v34.n128_u64[j] = *(&v38 + j * 8);
    ++j;
  }

  while (j != 15);
  v36 = v45[2];
  v37 = v45[3];
  v19 = re::ecs2::CameraViewDescriptorsComponent::addSpecifyCommand(a1, a2, &v34);
  for (k = 14; k != 12; --k)
  {
    v25 = v34.n128_u64[k];
    if (v25)
    {

      v34.n128_u64[k] = 0;
    }
  }

  do
  {
    v26 = v34.n128_u64[k];
    if (v26)
    {

      v34.n128_u64[k] = 0;
    }

    --k;
  }

  while (k != 10);
  for (m = 56; m != 8; m -= 24)
  {
    re::AssetHandle::~AssetHandle((&v34 + m));
  }

  if (v34.n128_u64[0])
  {
    if (v34.n128_u8[8])
    {
      (*(*v34.n128_u64[0] + 40))();
    }

    memset(&v34, 0, 32);
  }

  for (n = 112; n != 96; n -= 8)
  {
    v29 = *(&v38 + n);
    if (v29)
    {

      *(&v38 + n) = 0;
    }
  }

  do
  {
    v30 = *(&v38 + n);
    if (v30)
    {

      *(&v38 + n) = 0;
    }

    n -= 8;
  }

  while (n != 80);
  for (ii = 56; ii != 8; ii -= 24)
  {
    re::AssetHandle::~AssetHandle((&v38 + ii));
  }

  if (v38 && (BYTE8(v38) & 1) != 0)
  {
    (*(*v38 + 40))(v38, v39, v32, v33);
  }

  return v19;
}

uint64_t RECameraViewDescriptorsComponentAddSpecifyCommandFromLayer(re::ecs2::CameraViewDescriptorsComponent *a1, re::ecs2::CameraViewDescriptorsComponent *a2, const char *a3, int a4, unsigned int a5)
{
  ViewDescriptor = re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(a1, a2);
  SpecifyByLane = re::ecs2::CameraViewDescriptor::tryGetSpecifyByLane(ViewDescriptor, a3);
  v12 = re::ecs2::Component::enqueueMarkDirty(a1);
  if (SpecifyByLane)
  {
    if (a5 >= 2)
    {
      if (a5 == 2)
      {
        *(SpecifyByLane + 84) = a4;
      }
    }

    else
    {
      *(SpecifyByLane + 80) = a4;
    }

    return 1;
  }

  else
  {
    v33 = 0;
    v34 = 0;
    v35 = 0;
    re::DynamicString::setCapacity(&v32, 0);
    v37 = 0u;
    v38 = 0u;
    v36 = 0u;
    v39 = -1;
    v40 = 0u;
    memset(v41, 0, 28);
    v13 = strlen(a3);
    v42[0] = a3;
    v42[1] = v13;
    re::DynamicString::operator=(&v32, v42);
    if (a5 >= 2)
    {
      if (a5 == 2)
      {
        HIDWORD(v39) = a4;
      }
    }

    else
    {
      LODWORD(v39) = a4;
    }

    re::DynamicString::DynamicString(&v28, &v32);
    for (i = 4; i != 10; i += 3)
    {
      re::AssetHandle::AssetHandle((&v28 + i * 8), &(&v32)[i]);
    }

    v29 = v39;
    for (j = 11; j != 13; ++j)
    {
      v28.n128_u64[j] = (&v32)[j];
    }

    do
    {
      v28.n128_u64[j] = (&v32)[j];
      ++j;
    }

    while (j != 15);
    v30 = v41[2];
    v31 = v41[3];
    v14 = re::ecs2::CameraViewDescriptorsComponent::addSpecifyCommand(a1, a2, &v28);
    for (k = 14; k != 12; --k)
    {
      v19 = v28.n128_u64[k];
      if (v19)
      {

        v28.n128_u64[k] = 0;
      }
    }

    do
    {
      v20 = v28.n128_u64[k];
      if (v20)
      {

        v28.n128_u64[k] = 0;
      }

      --k;
    }

    while (k != 10);
    for (m = 56; m != 8; m -= 24)
    {
      re::AssetHandle::~AssetHandle((&v28 + m));
    }

    if (v28.n128_u64[0])
    {
      if (v28.n128_u8[8])
      {
        (*(*v28.n128_u64[0] + 40))();
      }

      memset(&v28, 0, 32);
    }

    for (n = 14; n != 12; --n)
    {
      v23 = (&v32)[n];
      if (v23)
      {

        (&v32)[n] = 0;
      }
    }

    do
    {
      v24 = (&v32)[n];
      if (v24)
      {

        (&v32)[n] = 0;
      }

      --n;
    }

    while (n != 10);
    for (ii = 7; ii != 1; ii -= 3)
    {
      re::AssetHandle::~AssetHandle(&(&v32)[ii]);
    }

    if (v32 && (v33 & 1) != 0)
    {
      (*(*v32 + 40))(v32, v34, v26, v27);
    }
  }

  return v14;
}

BOOL RECameraViewDescriptorsComponentAddSpecifyCommandFromTexture(re::ecs2::CameraViewDescriptorsComponent *a1, re::ecs2::CameraViewDescriptorsComponent *a2, const char *a3, void *a4, unsigned int a5)
{
  v9 = a4;
  ViewDescriptor = re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(a1, a2);
  SpecifyByLane = re::ecs2::CameraViewDescriptor::tryGetSpecifyByLane(ViewDescriptor, a3);
  v12 = re::ecs2::Component::enqueueMarkDirty(a1);
  if (SpecifyByLane)
  {
    v47 = v9;
    v13 = v9;
    v14 = v9;
    if (a5 <= 2)
    {
      NS::SharedPtr<MTL::Buffer>::operator=((SpecifyByLane + *&aX_3[8 * a5]), &v47);
      v14 = v47;
    }

    if (v14)
    {

      v47 = 0;
    }

    v15 = 1;
    goto LABEL_7;
  }

  v17 = v46;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  re::DynamicString::setCapacity(&v38, 0);
  v43 = 0u;
  v44 = 0u;
  v42 = 0u;
  v45 = -1;
  memset(v46, 0, 44);
  v18 = strlen(a3);
  v48[0] = a3;
  v48[1] = v18;
  re::DynamicString::operator=(&v38, v48);
  v37 = v9;
  v19 = v9;
  if (a5 < 2)
  {
    goto LABEL_11;
  }

  v20 = v9;
  if (a5 == 2)
  {
    v17 = v46 + 1;
LABEL_11:
    NS::SharedPtr<MTL::Buffer>::operator=(v17, &v37);
    v20 = v37;
  }

  if (v20)
  {

    v37 = 0;
  }

  re::DynamicString::DynamicString(&v33, &v38);
  for (i = 4; i != 10; i += 3)
  {
    re::AssetHandle::AssetHandle((&v33 + i * 8), &(&v38)[i]);
  }

  v34 = v45;
  for (j = 11; j != 13; ++j)
  {
    v33.n128_u64[j] = (&v38)[j];
  }

  do
  {
    v33.n128_u64[j] = (&v38)[j];
    ++j;
  }

  while (j != 15);
  v35 = *&v46[2];
  v36 = DWORD2(v46[2]);
  v15 = re::ecs2::CameraViewDescriptorsComponent::addSpecifyCommand(a1, a2, &v33);
  for (k = 14; k != 12; --k)
  {
    v24 = v33.n128_u64[k];
    if (v24)
    {

      v33.n128_u64[k] = 0;
    }
  }

  do
  {
    v25 = v33.n128_u64[k];
    if (v25)
    {

      v33.n128_u64[k] = 0;
    }

    --k;
  }

  while (k != 10);
  for (m = 56; m != 8; m -= 24)
  {
    re::AssetHandle::~AssetHandle((&v33 + m));
  }

  if (v33.n128_u64[0])
  {
    if (v33.n128_u8[8])
    {
      (*(*v33.n128_u64[0] + 40))();
    }

    memset(&v33, 0, 32);
  }

  for (n = 14; n != 12; --n)
  {
    v28 = (&v38)[n];
    if (v28)
    {

      (&v38)[n] = 0;
    }
  }

  do
  {
    v29 = (&v38)[n];
    if (v29)
    {

      (&v38)[n] = 0;
    }

    --n;
  }

  while (n != 10);
  for (ii = 7; ii != 1; ii -= 3)
  {
    re::AssetHandle::~AssetHandle(&(&v38)[ii]);
  }

  if (v38 && (v39 & 1) != 0)
  {
    (*(*v38 + 40))(v38, v40, v31, v32);
  }

LABEL_7:

  return v15;
}

BOOL RECameraViewDescriptorsComponentAddSpecifyCommandFromTextureDescriptor(re::ecs2::CameraViewDescriptorsComponent *a1, re::ecs2::CameraViewDescriptorsComponent *a2, const char *a3, void *a4, unsigned int a5)
{
  v9 = a4;
  ViewDescriptor = re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(a1, a2);
  SpecifyByLane = re::ecs2::CameraViewDescriptor::tryGetSpecifyByLane(ViewDescriptor, a3);
  v12 = re::ecs2::Component::enqueueMarkDirty(a1);
  if (SpecifyByLane)
  {
    v48 = v9;
    v13 = v9;
    v14 = v9;
    if (a5 <= 2)
    {
      NS::SharedPtr<MTL::Buffer>::operator=((SpecifyByLane + *&aH[8 * a5]), &v48);
      v14 = v48;
    }

    if (v14)
    {

      v48 = 0;
    }

    v15 = 1;
    goto LABEL_7;
  }

  v39 = 0;
  v40 = 0;
  v41 = 0;
  re::DynamicString::setCapacity(&v38, 0);
  v43 = 0u;
  v44 = 0u;
  v42 = 0u;
  v45 = -1;
  v46 = 0u;
  memset(v47, 0, 28);
  v17 = strlen(a3);
  v49[0] = a3;
  v49[1] = v17;
  re::DynamicString::operator=(&v38, v49);
  v37 = v9;
  v18 = v9;
  if (a5 < 2)
  {
    v19 = v47;
LABEL_12:
    NS::SharedPtr<MTL::Buffer>::operator=(v19, &v37);
    v20 = v37;
    goto LABEL_13;
  }

  v20 = v9;
  if (a5 == 2)
  {
    v19 = &v47[1];
    goto LABEL_12;
  }

LABEL_13:
  if (v20)
  {

    v37 = 0;
  }

  re::DynamicString::DynamicString(&v33, &v38);
  for (i = 4; i != 10; i += 3)
  {
    re::AssetHandle::AssetHandle((&v33 + i * 8), &(&v38)[i]);
  }

  v34 = v45;
  for (j = 11; j != 13; ++j)
  {
    v33.n128_u64[j] = (&v38)[j];
  }

  do
  {
    v33.n128_u64[j] = (&v38)[j];
    ++j;
  }

  while (j != 15);
  v35 = v47[2];
  v36 = v47[3];
  v15 = re::ecs2::CameraViewDescriptorsComponent::addSpecifyCommand(a1, a2, &v33);
  for (k = 14; k != 12; --k)
  {
    v24 = v33.n128_u64[k];
    if (v24)
    {

      v33.n128_u64[k] = 0;
    }
  }

  do
  {
    v25 = v33.n128_u64[k];
    if (v25)
    {

      v33.n128_u64[k] = 0;
    }

    --k;
  }

  while (k != 10);
  for (m = 56; m != 8; m -= 24)
  {
    re::AssetHandle::~AssetHandle((&v33 + m));
  }

  if (v33.n128_u64[0])
  {
    if (v33.n128_u8[8])
    {
      (*(*v33.n128_u64[0] + 40))();
    }

    memset(&v33, 0, 32);
  }

  for (n = 14; n != 12; --n)
  {
    v28 = (&v38)[n];
    if (v28)
    {

      (&v38)[n] = 0;
    }
  }

  do
  {
    v29 = (&v38)[n];
    if (v29)
    {

      (&v38)[n] = 0;
    }

    --n;
  }

  while (n != 10);
  for (ii = 7; ii != 1; ii -= 3)
  {
    re::AssetHandle::~AssetHandle(&(&v38)[ii]);
  }

  if (v38 && (v39 & 1) != 0)
  {
    (*(*v38 + 40))(v38, v40, v31, v32);
  }

LABEL_7:

  return v15;
}

void RECameraViewDescriptorsComponentSnapshotNextFrame(re *a1, void *a2, void *a3)
{
  v14[5] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v13 = 0;
  v14[0] = v5;
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v6 = a3;
  v7 = v5;
  re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase>>::add(v11, v14);
  if (v14[0])
  {
  }

  re::DynamicArray<NS::SharedPtr<MTL::Texture>>::DynamicArray(v10, v11);
  v8 = _Block_copy(v6);

  v14[3] = re::globalAllocators(v9)[2];
  v14[4] = v14;
  v14[0] = &unk_1F5D2DEB0;
  v14[1] = v8;
  re::ecs2::CameraViewDescriptorsComponent::snapshot(a1, v10, v14);
  re::FunctionBase<24ul,void ()(re::FrameCount const&)>::destroyCallable(v14);
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(v10);
  re::ecs2::Component::enqueueMarkDirty(a1);
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(v11);
}

void RECameraViewDescriptorsComponentSnapshotNextFrameWithSettings(re *a1, void *a2, const re::RuntimeRenderGraphDataStruct *a3, void *a4)
{
  v16[5] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v15 = 0;
  v16[0] = v7;
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  v8 = a4;
  v9 = v7;
  re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase>>::add(v13, v16);
  if (v16[0])
  {
  }

  re::DynamicArray<NS::SharedPtr<MTL::Texture>>::DynamicArray(v12, v13);
  v10 = _Block_copy(v8);

  v16[3] = re::globalAllocators(v11)[2];
  v16[4] = v16;
  v16[0] = &unk_1F5D2DF08;
  v16[1] = v10;
  re::ecs2::CameraViewDescriptorsComponent::snapshotWithSettings(a1, v12, a3, v16);
  re::FunctionBase<24ul,void ()(re::FrameCount const&)>::destroyCallable(v16);
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(v12);
  re::ecs2::Component::enqueueMarkDirty(a1);
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(v13);
}

uint64_t RECameraViewDescriptorsComponentSnapshotNextFrameWithSettingsAndReturnHandle(re *a1, void *a2, const re::RuntimeRenderGraphDataStruct *a3, void *a4)
{
  v18[5] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v17 = 0;
  v18[0] = v7;
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  v8 = a4;
  v9 = v7;
  re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase>>::add(v15, v18);
  if (v18[0])
  {
  }

  re::DynamicArray<NS::SharedPtr<MTL::Texture>>::DynamicArray(v14, v15);
  v10 = _Block_copy(v8);

  v18[3] = re::globalAllocators(v11)[2];
  v18[4] = v18;
  v18[0] = &unk_1F5D2DF60;
  v18[1] = v10;
  v12 = re::ecs2::CameraViewDescriptorsComponent::snapshotWithSettings(a1, v14, a3, v18);
  re::FunctionBase<24ul,void ()(re::FrameCount const&)>::destroyCallable(v18);
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(v14);
  re::ecs2::Component::enqueueMarkDirty(a1);
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(v15);

  return v12;
}

uint64_t RECameraViewDescriptorsComponentSelectionNextFrameWithSettingsAndReturnHandle(re *a1, uint64_t a2, __int128 *a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unint64_t a17, const re::RuntimeRenderGraphDataStruct *a18, void *a19)
{
  v164[5] = *MEMORY[0x1E69E9840];
  aBlock = a19;
  re::AssetAPIHelper::assetHandleCreate(a2, v163);
  v162 = 0;
  v159 = 0;
  v160 = 0;
  v161 = 0;
  v25 = re::DynamicArray<re::AABB>::setCapacity(&v158, a4);
  v26 = ++v161;
  if (a4)
  {
    v27 = v160;
    do
    {
      v28 = a3[1];
      v155 = *a3;
      v156 = v28;
      if (v27 >= v159)
      {
        v29 = v27 + 1;
        if (v159 < v27 + 1)
        {
          if (v158)
          {
            v30 = 2 * v159;
            if (!v159)
            {
              v30 = 8;
            }

            if (v30 <= v29)
            {
              v31 = v27 + 1;
            }

            else
            {
              v31 = v30;
            }

            v25 = re::DynamicArray<re::AABB>::setCapacity(&v158, v31);
            v26 = v161;
          }

          else
          {
            v25 = re::DynamicArray<re::AABB>::setCapacity(&v158, v29);
            v26 = v161 + 1;
          }
        }

        v27 = v160;
      }

      v32 = &v162[32 * v27];
      v33 = v156;
      *v32 = v155;
      *(v32 + 1) = v33;
      v160 = ++v27;
      v161 = ++v26;
      a3 += 2;
      --a4;
    }

    while (a4);
  }

  v157 = 0;
  *&v156 = 0;
  *(&v155 + 1) = 0;
  DWORD2(v156) = 0;
  v34 = re::DynamicArray<re::Projection>::setCapacity(&v155, a6);
  v35 = ++DWORD2(v156);
  if (a6)
  {
    v36 = v156;
    v37 = (a5 + 28);
    do
    {
      v38 = *(v37 - 7);
      v39 = *(v37 - 24);
      v40 = *(v37 - 1);
      v41 = *v37;
      v42 = *(v37 + 4);
      v43 = *(v37 + 5);
      v44 = *(v37 + 28);
      if (v36 >= *(&v155 + 1))
      {
        v45 = v36 + 1;
        if (*(&v155 + 1) < v36 + 1)
        {
          v100 = *(v37 + 4);
          v101 = *(v37 - 24);
          if (v155)
          {
            v46 = 2 * *(&v155 + 1);
            if (!*(&v155 + 1))
            {
              v46 = 8;
            }

            if (v46 <= v45)
            {
              v47 = v36 + 1;
            }

            else
            {
              v47 = v46;
            }

            v34 = re::DynamicArray<re::Projection>::setCapacity(&v155, v47);
            v35 = DWORD2(v156);
          }

          else
          {
            v34 = re::DynamicArray<re::Projection>::setCapacity(&v155, v45);
            v35 = DWORD2(v156) + 1;
          }

          v42 = v100;
          v39 = v101;
        }

        v36 = v156;
      }

      v48 = &v157[15 * v36];
      *v48 = v38;
      *(v48 + 4) = v39;
      *(v48 + 20) = v40;
      *(v48 + 28) = v41;
      v48[2] = v42;
      *(v48 + 12) = v43;
      *(v48 + 7) = v44;
      *(v48 + 32) = 0;
      *(v48 + 80) = 0;
      *(v48 + 160) = 0;
      *&v156 = ++v36;
      DWORD2(v156) = ++v35;
      v37 += 64;
      --a6;
    }

    while (a6);
  }

  v154 = 0;
  v152[2] = 0;
  v152[1] = 0;
  v153 = 0;
  v49 = re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(v152, a17);
  ++v153;
  v151 = 0;
  v149[2] = 0;
  v149[1] = 0;
  v150 = 0;
  v50 = re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(v149, a17);
  ++v150;
  v148 = 0;
  v146[2] = 0;
  v146[1] = 0;
  v147 = 0;
  v51 = re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(v146, a17);
  ++v147;
  v145 = 0;
  v143[2] = 0;
  v143[1] = 0;
  v144 = 0;
  v52 = re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(v143, a17);
  ++v144;
  v142 = 0;
  v140[2] = 0;
  v140[1] = 0;
  v141 = 0;
  v53 = re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(v140, a17);
  ++v141;
  v139 = 0;
  v137[2] = 0;
  v137[1] = 0;
  v138 = 0;
  v54 = re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(v137, a17);
  ++v138;
  v136 = 0;
  v134[2] = 0;
  v134[1] = 0;
  v135 = 0;
  v55 = re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(v134, a17);
  ++v135;
  v133 = 0;
  v131[2] = 0;
  v131[1] = 0;
  v132 = 0;
  v56 = re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(v131, a17);
  ++v132;
  v130 = 0;
  v128[2] = 0;
  v128[1] = 0;
  v129 = 0;
  v57 = re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(v128, a17);
  ++v129;
  v127 = 0;
  v125[2] = 0;
  v125[1] = 0;
  v126 = 0;
  re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(v125, a17);
  ++v126;
  if (a17)
  {
    for (i = 0; i != a17; ++i)
    {
      v164[0] = *(a7 + 8 * i);
      v59 = v164[0];
      re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase>>::add(v152, v164);
      if (v164[0])
      {
      }

      v164[0] = *(a8 + 8 * i);
      v60 = v164[0];
      re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase>>::add(v149, v164);
      if (v164[0])
      {
      }

      v164[0] = *(a9 + 8 * i);
      v61 = v164[0];
      re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase>>::add(v146, v164);
      if (v164[0])
      {
      }

      v164[0] = *(a10 + 8 * i);
      v62 = v164[0];
      re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase>>::add(v143, v164);
      if (v164[0])
      {
      }

      v164[0] = *(a11 + 8 * i);
      v63 = v164[0];
      re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase>>::add(v140, v164);
      if (v164[0])
      {
      }

      v164[0] = *(a12 + 8 * i);
      v64 = v164[0];
      re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase>>::add(v137, v164);
      if (v164[0])
      {
      }

      v164[0] = *(a13 + 8 * i);
      v65 = v164[0];
      re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase>>::add(v134, v164);
      if (v164[0])
      {
      }

      v164[0] = *(a14 + 8 * i);
      v66 = v164[0];
      re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase>>::add(v131, v164);
      if (v164[0])
      {
      }

      v164[0] = *(a15 + 8 * i);
      v67 = v164[0];
      re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase>>::add(v128, v164);
      if (v164[0])
      {
      }

      v164[0] = *(a16 + 8 * i);
      v68 = v164[0];
      re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase>>::add(v125, v164);
      if (v164[0])
      {
      }
    }
  }

  re::AssetHandle::AssetHandle(v124, v163);
  __dst = 0;
  v121 = 0;
  v119 = 0;
  v120 = 0;
  v122 = 0;
  v69 = v158;
  if (v158)
  {
    v70 = v160;
    v119 = v158;
    re::DynamicArray<re::AABB>::setCapacity(&v119, v160);
    ++v122;
    if (v70 >= v121)
    {
      re::DynamicArray<re::AABB>::setCapacity(&v119, v70);
      v71 = v121;
      v72 = __dst;
      v73 = v162;
      if (v121)
      {
        memmove(__dst, v162, 32 * v121);
      }

      memcpy(&v72[32 * v71], &v73[32 * v71], 32 * (v70 - v71));
    }

    else if (v70)
    {
      memmove(__dst, v162, 32 * v70);
    }

    v121 = v70;
  }

  v118 = 0;
  v116 = 0;
  v114 = 0;
  v115 = 0;
  v117 = 0;
  v74 = v155;
  if (v155)
  {
    v75 = v156;
    v114 = v155;
    re::DynamicArray<re::Projection>::setCapacity(&v114, v156);
    ++v117;
    if (v75 >= v116)
    {
      re::DynamicArray<re::Projection>::setCapacity(&v114, v75);
      v76 = v157;
      v77 = v116;
      v78 = v118;
      std::__copy_impl::operator()[abi:nn200100]<re::Projection *,re::Projection *,re::Projection *>(v157, &v157[15 * v116], v118);
      if (v77 != v75)
      {
        v79 = 240 * v77 + 96;
        v80 = v78 + v79;
        v81 = v76 + v79;
        do
        {
          *(v80 - 96) = *(v81 - 6);
          v82 = *(v81 - 5);
          v83 = *(v81 - 4);
          v84 = *(v81 - 3);
          *(v80 - 32) = *(v81 - 16);
          *(v80 - 64) = v83;
          *(v80 - 48) = v84;
          *(v80 - 80) = v82;
          v85 = *(v81 - 16);
          *(v80 - 16) = v85;
          if (v85 == 1)
          {
            v86 = *v81;
            v87 = *(v81 + 1);
            v88 = *(v81 + 3);
            *(v80 + 32) = *(v81 + 2);
            *(v80 + 48) = v88;
            *v80 = v86;
            *(v80 + 16) = v87;
          }

          v89 = v81 - 96;
          v90 = v81[64];
          *(v80 + 64) = v90;
          if (v90 == 1)
          {
            v91 = *(v81 + 5);
            v92 = *(v81 + 6);
            v93 = *(v81 + 8);
            *(v80 + 112) = *(v81 + 7);
            *(v80 + 128) = v93;
            *(v80 + 80) = v91;
            *(v80 + 96) = v92;
          }

          v80 += 240;
          v81 += 240;
        }

        while (v89 + 240 != &v76[15 * v75]);
      }
    }

    else
    {
      std::__copy_impl::operator()[abi:nn200100]<re::Projection *,re::Projection *,re::Projection *>(v157, &v157[15 * v75], v118);
    }

    v116 = v75;
  }

  re::DynamicArray<NS::SharedPtr<MTL::Texture>>::DynamicArray(v113, v152);
  re::DynamicArray<NS::SharedPtr<MTL::Texture>>::DynamicArray(v112, v149);
  re::DynamicArray<NS::SharedPtr<MTL::Texture>>::DynamicArray(v111, v146);
  re::DynamicArray<NS::SharedPtr<MTL::Texture>>::DynamicArray(v110, v143);
  re::DynamicArray<NS::SharedPtr<MTL::Texture>>::DynamicArray(v109, v140);
  re::DynamicArray<NS::SharedPtr<MTL::Texture>>::DynamicArray(v108, v137);
  re::DynamicArray<NS::SharedPtr<MTL::Texture>>::DynamicArray(v107, v134);
  re::DynamicArray<NS::SharedPtr<MTL::Texture>>::DynamicArray(v106, v131);
  re::DynamicArray<NS::SharedPtr<MTL::Texture>>::DynamicArray(v105, v128);
  re::DynamicArray<NS::SharedPtr<MTL::Texture>>::DynamicArray(v104, v125);
  v94 = _Block_copy(aBlock);
  v95 = re::globalAllocators(v94)[2];
  v164[0] = &unk_1F5D2DFB8;
  v164[1] = v94;
  v164[3] = v95;
  v164[4] = v164;
  v96 = re::ecs2::CameraViewDescriptorsComponent::selectionWithSettings(a1, v124, &v119, &v114, v113, v112, v111, v110, v109, v108, v107, v106, v105, v104, a18, v164);
  re::FunctionBase<24ul,void ()(re::FrameCount const&)>::destroyCallable(v164);
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(v104);
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(v105);
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(v106);
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(v107);
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(v108);
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(v109);
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(v110);
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(v111);
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(v112);
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(v113);
  if (v114)
  {
    if (v118)
    {
      (*(*v114 + 40))();
    }

    v118 = 0;
    v116 = 0;
    v114 = 0;
    v115 = 0;
    ++v117;
  }

  if (v119)
  {
    if (__dst)
    {
      (*(*v119 + 40))();
    }

    __dst = 0;
    v121 = 0;
    v119 = 0;
    v120 = 0;
    ++v122;
  }

  re::AssetHandle::~AssetHandle(v124);
  re::ecs2::Component::enqueueMarkDirty(a1);
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(v125);
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(v128);
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(v131);
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(v134);
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(v137);
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(v140);
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(v143);
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(v146);
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(v149);
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(v152);
  if (v74 && v157)
  {
    (*(*v74 + 40))(v74);
  }

  if (v69 && v162)
  {
    (*(*v69 + 40))(v69);
  }

  re::AssetHandle::~AssetHandle(v163);

  return v96;
}

void RECameraViewDescriptorsComponentSetRasterizationRateMap(re::ecs2::CameraViewDescriptorsComponent *a1, re::ecs2::CameraViewDescriptorsComponent *a2, void *a3, unsigned int a4)
{
  v7 = a3;
  ViewDescriptor = re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(a1, a2);
  if (a4 >= 2)
  {
    if (a4 != 2)
    {
      goto LABEL_7;
    }

    v12 = v7;
    v11 = v7;
    v10 = (ViewDescriptor + 248);
  }

  else
  {
    v12 = v7;
    v9 = v7;
    v10 = (ViewDescriptor + 240);
  }

  NS::SharedPtr<MTL::Texture>::operator=(v10, &v12);
  if (v12)
  {
  }

LABEL_7:
  re::ecs2::Component::enqueueMarkDirty(a1);
}

void RECameraViewDescriptorsComponentSetRenderCommandEncoder(re::ecs2::CameraViewDescriptorsComponent *a1, re::ecs2::CameraViewDescriptorsComponent *a2, void *a3, void *a4)
{
  v12 = a4;
  v7 = a3;
  ViewDescriptor = re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(a1, a2);
  re::ObjCObject::operator=((ViewDescriptor + 296), v7);
  re::mtl::RenderEncoderImpCache::build(*(ViewDescriptor + 304), *(ViewDescriptor + 296));

  v9 = v12;
  v10 = v12;
  v11 = *(ViewDescriptor + 288);
  if (v11 == v12)
  {
  }

  else
  {
    if (v11)
    {

      v10 = v12;
    }

    *(ViewDescriptor + 288) = v10;
  }

  if (!*(ViewDescriptor + 296))
  {

    *(ViewDescriptor + 288) = 0;
  }

  re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t RECameraViewDescriptorsComponentSetRenderCommandEncoderCommandMask(re::ecs2::CameraViewDescriptorsComponent *a1, re::ecs2::CameraViewDescriptorsComponent *a2, uint64_t a3)
{
  *(re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(a1, a2) + 312) = a3;

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t RECameraViewDescriptorsComponentSetForceWaitOnPipelineCompilation(re::ecs2::CameraViewDescriptorsComponent *a1, re::ecs2::CameraViewDescriptorsComponent *a2, char a3)
{
  *(re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(a1, a2) + 321) = a3;

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t RECameraViewDescriptorsComponentSetFallbackRenderingMode(re::ecs2::CameraViewDescriptorsComponent *a1, re::ecs2::CameraViewDescriptorsComponent *a2, char a3)
{
  *(re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(a1, a2) + 322) = a3;

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

void re::RuntimeRenderGraphDataStruct::setOrAddValueOfType<BOOL>(uint64_t a1, char *a2, char a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v36 = a3;
  {
    re::introspect<BOOL>(BOOL)::info = re::introspect_BOOL(0, v29);
  }

  v5 = re::introspect<BOOL>(BOOL)::info;
  v6 = *(re::introspect<BOOL>(BOOL)::info + 4);
  if (a2)
  {
    v7 = *a2;
    if (*a2)
    {
      v8 = a2[1];
      if (v8)
      {
        v9 = (a2 + 2);
        do
        {
          v7 = 31 * v7 + v8;
          v10 = *v9++;
          v8 = v10;
        }

        while (v10);
      }

      v7 &= ~0x8000000000000000;
    }
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  *&buf = v7;
  v11 = re::RuntimeRenderGraphDataStruct::setValueOfType<BOOL>(a1, &buf, v36);
  if (!v11)
  {
    if (((v6 < 0xA) & (0x301u >> v6)) != 0)
    {
      v12 = strlen(a2);
      v13 = re::globalAllocators(v12);
      v14 = (*(*v13[2] + 32))(v13[2], v12 + 1, 0);
      strcpy(v14, a2);
      re::IntrospectionMember::IntrospectionMember(&v31);
      v32 = v14;
      v15 = *(a1 + 752);
      v16 = (v15 + v5[6] - 1) & -v5[6];
      v17 = v16 - v15;
      if (v16 > v15)
      {
        do
        {
          LOBYTE(buf) = 0;
          re::DynamicOverflowArray<char,128ul>::add(a1 + 744, &buf);
          --v17;
        }

        while (v17);
      }

      v18 = v33;
      v33 = v5;
      buf = v18;
      re::SerializedReference<re::IntrospectionBase const*>::reset(&buf);
      v19 = *(a1 + 752);
      v34 = v19;
      v31 = 1;
      v20 = v19;
      v21 = (v5[5] + v5[6] - 1) & -v5[6];
      if (!v21)
      {
        goto LABEL_32;
      }

      do
      {
        LOBYTE(buf) = 0;
        v22 = re::DynamicOverflowArray<char,128ul>::add(a1 + 744, &buf);
        --v21;
      }

      while (v21);
      v20 = *(a1 + 752);
      if (v20 > v19)
      {
        if (*(a1 + 760))
        {
          v23 = a1 + 768;
        }

        else
        {
          v23 = *(a1 + 776);
        }

        *&v43 = 0;
        buf = 0u;
        v42 = 0u;
        *v38 = re::globalAllocators(v22)[2];
        *&v38[8] = 0;
        *&v38[16] = &buf;
        if (v14)
        {
          v25 = *v14;
          if (*v14)
          {
            v26 = v14[1];
            if (v26)
            {
              v27 = (v14 + 2);
              do
              {
                v25 = 31 * v25 + v26;
                v28 = *v27++;
                v26 = v28;
              }

              while (v28);
            }

            v25 &= ~0x8000000000000000;
          }
        }

        else
        {
          v25 = 0x7FFFFFFFFFFFFFFFLL;
        }

        *&buf = v25;
        re::SmallHashTable<re::WeakStringID,re::IntrospectionMember,8ul,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false>::add(a1 + 24, &buf, &v31, 0);
        re::SerializedReference<re::IntrospectionBase const*>::reset(&v35);
        re::SerializedReference<re::IntrospectionBase const*>::reset(&v33);
      }

      else
      {
LABEL_32:
        v37 = 0;
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        buf = 0u;
        v30 = v20;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v38 = 136315906;
        *&v38[4] = "operator[]";
        *&v38[12] = 1024;
        *&v38[14] = 858;
        *&v38[18] = 2048;
        *&v38[20] = v19;
        v39 = 2048;
        v40 = v30;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }
    }

    else
    {
      v24 = *re::graphicsLogObjects(v11);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = a2;
        _os_log_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_DEFAULT, "Attempted to add a non-basic type to RuntimeRenderGraphData: %s", &buf, 0xCu);
      }
    }
  }
}

_anonymous_namespace_ *re::DynamicOverflowArray<char,128ul>::add(uint64_t a1, _BYTE *a2)
{
  result = re::DynamicOverflowArray<char,128ul>::ensureCapacity(a1);
  if (*(a1 + 16))
  {
    v5 = a1 + 24;
  }

  else
  {
    v5 = *(a1 + 32);
  }

  *(v5 + (*(a1 + 8))++) = *a2;
  *(a1 + 16) += 2;
  return result;
}

BOOL re::RuntimeRenderGraphDataStruct::setValueOfType<BOOL>(uint64_t a1, void *a2, char a3)
{
  v30 = *MEMORY[0x1E69E9840];
  __src = a3;
  v4 = re::SmallHashTable<re::WeakStringID,re::IntrospectionMember,8ul,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false>::tryGet(a1 + 24, a2);
  if (v4)
  {
    v5 = &unk_1EE187000;
    {
      v5 = &unk_1EE187000;
      if (v13)
      {
        re::introspect<BOOL>(BOOL)::info = re::introspect_BOOL(0, v14);
        v5 = &unk_1EE187000;
      }
    }

    v6 = v5[42];
    if (v6 == *(v4 + 16))
    {
      v7 = *(v4 + 36);
      v8 = *(a1 + 752);
      if (v8 <= v7)
      {
        v16 = 0;
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v25 = 0u;
        v11 = v7;
        v12 = v8;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v17 = 136315906;
        v18 = "operator[]";
        v19 = 1024;
        v20 = 858;
        v21 = 2048;
        v22 = v11;
        v23 = 2048;
        v24 = v12;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      if (*(a1 + 760))
      {
        v9 = a1 + 768;
      }

      else
      {
        v9 = *(a1 + 776);
      }

      memcpy((v9 + v7), &__src, *(v6 + 20));
    }
  }

  return v4 != 0;
}

_anonymous_namespace_ *re::DynamicOverflowArray<char,128ul>::ensureCapacity(_anonymous_namespace_ *result)
{
  v1 = result;
  if (*result)
  {
    v2 = *(result + 1);
    if (*(result + 16))
    {
      v3 = 128;
    }

    else
    {
      v3 = *(result + 3);
    }

    if (v2 >= v3)
    {

      return re::DynamicOverflowArray<char,128ul>::growCapacity(result, v2 + 1);
    }
  }

  else
  {
    v4 = *(v1 + 1);
    result = re::DynamicOverflowArray<char,128ul>::setCapacity(v1, v4 + 1);
    *(v1 + 4) += 2;
  }

  return result;
}

_anonymous_namespace_ *re::DynamicOverflowArray<char,128ul>::growCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  if (!*result)
  {
    result = re::DynamicOverflowArray<char,128ul>::setCapacity(v3, v2);
    *(v3 + 4) += 2;
    return result;
  }

  if (*(result + 16))
  {
    if (a2 <= 0x80)
    {
      return result;
    }

    v5 = 256;
  }

  else
  {
    v4 = *(result + 3);
    if (v4 >= a2)
    {
      return result;
    }

    v5 = 2 * v4;
  }

  if (v5 > a2)
  {
    a2 = v5;
  }

  return re::DynamicOverflowArray<char,128ul>::setCapacity(result, a2);
}

void *re::DynamicOverflowArray<char,128ul>::setCapacity(void *result, unint64_t a2)
{
  v3 = result;
  v4 = *result;
  if (a2 && !v4)
  {
    result = re::DynamicOverflowArray<char,128ul>::setCapacity(v3, a2);
    v5 = *(v3 + 4) + 2;
LABEL_4:
    *(v3 + 4) = v5;
    return result;
  }

  v6 = *(result + 4);
  if (v6)
  {
    v7 = 128;
  }

  else
  {
    v7 = result[3];
  }

  if (v7 != a2)
  {
    v8 = result[1];
    if (v8 <= a2 && (a2 > 0x80 || (v6 & 1) == 0))
    {
      if (a2 < 0x81)
      {
        v13 = result + 3;
        v14 = v3[4];
        if (v6)
        {
          v15 = v3 + 3;
        }

        else
        {
          v15 = v3[4];
        }

        memcpy(v13, v15, v8);
        result = (*(*v4 + 40))(v4, v14);
        v5 = *(v3 + 4) | 1;
        goto LABEL_4;
      }

      v9 = (*(*v4 + 32))(*result, a2, 1);
      if (v9)
      {
        v11 = v9;
        if (v3[2])
        {
          v12 = v3 + 3;
        }

        else
        {
          v12 = v3[4];
        }

        result = memcpy(v9, v12, v3[1]);
        v16 = *(v3 + 4);
        if ((v16 & 1) == 0)
        {
          result = (*(**v3 + 40))(*v3, v3[4]);
          v16 = *(v3 + 4);
        }

        *(v3 + 4) = v16 & 0xFFFFFFFE;
        v3[3] = a2;
        v3[4] = v11;
      }

      else
      {
        re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 650, a2, *(*v3 + 8));
        result = _os_crash();
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t re::SmallHashTable<re::WeakStringID,re::IntrospectionMember,8ul,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false>::add(uint64_t result, void *a2, uint64_t a3, unsigned int a4)
{
  v7 = result;
  v8 = *(result + 700);
  if (v8)
  {
    if (a4 - 2 < 2)
    {
LABEL_23:

      return re::HashTable<re::WeakStringID,re::IntrospectionMember,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::addOrReplace(v7 + 672, a2, a3);
    }

    if (a4 == 1)
    {
      goto LABEL_35;
    }

    if (!a4)
    {
LABEL_32:
      v27 = v7 + 672;
      v28 = a2;
      v29 = a3;

      return re::HashTable<re::WeakStringID,re::IntrospectionMember,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::add(v27, v28, v29);
    }
  }

  v10 = (result + 16);
  v9 = *(result + 16);
  v11 = 80 * v9;
  if (!v9)
  {
LABEL_9:
    if (v8)
    {
      v14 = v8;
    }

    else
    {
      v14 = v9;
    }

    if (v14 <= 7)
    {
      v30 = *a2;
      v31 = *a3;
      v15 = *(a3 + 24);
      v16 = *(a3 + 32);
      *(a3 + 24) = 0;
      v32 = *(a3 + 8);
      v33 = v15;
      v34 = v16;
      v35 = *(a3 + 40);
      v17 = *(a3 + 48);
      *(a3 + 56) = 0;
      v36 = v17;
      v37 = *(a3 + 64);
      re::DynamicInlineArray<re::KeyValuePair<re::WeakStringID,re::IntrospectionMember>,8ul>::add((v7 + 16), &v30);
      re::SerializedReference<re::IntrospectionBase const*>::reset(&v36);
      re::SerializedReference<re::IntrospectionBase const*>::reset(&v32 + 8);
      if (*v10)
      {
        return v7 + 80 * (*v10 - 1) + 40;
      }

      re::internal::assertLog(6, v18, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, *v10 - 1, 0);
      result = _os_crash();
      __break(1u);
      return result;
    }

    if (!*(v7 + 672))
    {
      v19 = *v7;
      if (!*v7)
      {
      }

      re::HashTable<re::StringID,re::RigDataTypeClass,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v7 + 672, v19, 16);
      v9 = *v10;
      v11 = 80 * *v10;
    }

    if (v9)
    {
      v20 = v7 + v11 + 32;
      v21 = (v7 + 32);
      do
      {
        re::HashTable<re::WeakStringID,re::IntrospectionMember,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::add(v7 + 672, v21, (v21 + 1));
        v21 += 10;
      }

      while (v21 != v20);
    }

    re::DynamicInlineArray<re::KeyValuePair<re::WeakStringID,re::IntrospectionMember>,8ul>::clear((v7 + 16));
    if (a4 - 2 < 2)
    {
      goto LABEL_23;
    }

    if (!a4)
    {
      goto LABEL_32;
    }

LABEL_35:
    v27 = v7 + 672;
    v28 = a2;
    v29 = a3;

    return re::HashTable<re::WeakStringID,re::IntrospectionMember,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::add(v27, v28, v29);
  }

  v12 = result + 56;
  v13 = 80 * v9;
  while (*(v12 - 24) != *a2)
  {
    v12 += 80;
    v13 -= 80;
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  result = v12 - 16;
  if (a4 >= 2)
  {
    if (a4 == 2 || a4 == 3)
    {
      *(v12 - 16) = *a3;
      *(v12 - 8) = *(a3 + 8);
      v22 = *(v12 + 8);
      *(v12 + 8) = *(a3 + 24);
      *(a3 + 24) = v22;
      v23 = *v12;
      *v12 = *(a3 + 16);
      *(a3 + 16) = v23;
      v24 = *(a3 + 32);
      *(v12 + 24) = *(a3 + 40);
      *(v12 + 16) = v24;
      v25 = *(v12 + 40);
      *(v12 + 40) = *(a3 + 56);
      *(a3 + 56) = v25;
      v26 = *(v12 + 32);
      *(v12 + 32) = *(a3 + 48);
      *(a3 + 48) = v26;
      *(v12 + 48) = *(a3 + 64);
      ++*(v7 + 8);
      return result;
    }

    goto LABEL_9;
  }

  return result;
}

uint64_t re::HashTable<re::WeakStringID,re::IntrospectionMember,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::add(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::findEntry<unsigned long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    return re::HashTable<re::WeakStringID,re::IntrospectionMember,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::addInternal<re::WeakStringID const&,re::IntrospectionMember>(a1, &v8, a2, a3);
  }

  else
  {
    return *(a1 + 16) + 88 * HIDWORD(v9) + 16;
  }
}

uint64_t re::HashTable<re::WeakStringID,re::IntrospectionMember,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::addOrReplace(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::findEntry<unsigned long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v15);
  v7 = HIDWORD(v16);
  if (HIDWORD(v16) == 0x7FFFFFFF)
  {
    return re::HashTable<re::WeakStringID,re::IntrospectionMember,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::addInternal<re::WeakStringID const&,re::IntrospectionMember>(a1, &v15, a2, a3);
  }

  ++*(a1 + 40);
  v9 = *(a1 + 16) + 88 * v7;
  *(v9 + 16) = *a3;
  result = v9 + 16;
  *(result + 8) = *(a3 + 8);
  v10 = *(result + 24);
  *(result + 24) = *(a3 + 24);
  *(a3 + 24) = v10;
  v11 = *(result + 16);
  *(result + 16) = *(a3 + 16);
  *(a3 + 16) = v11;
  v12 = *(a3 + 32);
  *(result + 40) = *(a3 + 40);
  *(result + 32) = v12;
  v13 = *(result + 56);
  *(result + 56) = *(a3 + 56);
  *(a3 + 56) = v13;
  v14 = *(result + 48);
  *(result + 48) = *(a3 + 48);
  *(a3 + 48) = v14;
  *(result + 64) = *(a3 + 64);
  return result;
}

uint64_t re::DynamicInlineArray<re::KeyValuePair<re::WeakStringID,re::IntrospectionMember>,8ul>::add(uint64_t *a1, uint64_t a2)
{
  result = re::DynamicInlineArray<unsigned long long,8ul>::ensureCapacity(a1, a2);
  if (result)
  {
    v5 = *a1;
    v6 = &a1[10 * *a1];
    v6[2] = *a2;
    *(v6 + 6) = *(a2 + 8);
    v6[4] = *(a2 + 16);
    v6[6] = 0;
    v6[6] = *(a2 + 32);
    *(a2 + 32) = 0;
    v7 = v6[5];
    v6[5] = *(a2 + 24);
    *(a2 + 24) = v7;
    v8 = *(a2 + 40);
    *(v6 + 16) = *(a2 + 48);
    v6[7] = v8;
    v6[10] = 0;
    v6[10] = *(a2 + 64);
    *(a2 + 64) = 0;
    v9 = v6[9];
    v6[9] = *(a2 + 56);
    *(a2 + 56) = v9;
    *(v6 + 22) = *(a2 + 72);
    *a1 = v5 + 1;
    ++*(a1 + 2);
  }

  return result;
}

void *re::DynamicInlineArray<re::KeyValuePair<re::WeakStringID,re::IntrospectionMember>,8ul>::clear(void *result)
{
  v1 = result;
  if (*result)
  {
    v2 = 80 * *result;
    v3 = (result + 5);
    do
    {
      re::SerializedReference<re::IntrospectionBase const*>::reset(v3 + 32);
      result = re::SerializedReference<re::IntrospectionBase const*>::reset(v3);
      *(v3 - 24) = 0;
      v3 += 80;
      v2 -= 80;
    }

    while (v2);
  }

  *v1 = 0;
  ++*(v1 + 2);
  return result;
}

uint64_t re::HashTable<re::WeakStringID,re::IntrospectionMember,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::addInternal<re::WeakStringID const&,re::IntrospectionMember>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = re::HashTable<re::WeakStringID,re::IntrospectionMember,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::allocEntry(a1, *(a2 + 8), *a2);
  *(v7 + 16) = *a4;
  result = v7 + 16;
  *(result - 8) = *a3;
  *(result + 8) = *(a4 + 8);
  *(result + 24) = 0;
  *(result + 24) = *(a4 + 24);
  *(a4 + 24) = 0;
  v9 = *(result + 16);
  *(result + 16) = *(a4 + 16);
  *(a4 + 16) = v9;
  LODWORD(v9) = *(a4 + 40);
  *(result + 32) = *(a4 + 32);
  *(result + 40) = v9;
  *(result + 56) = 0;
  *(result + 56) = *(a4 + 56);
  *(a4 + 56) = 0;
  v10 = *(result + 48);
  *(result + 48) = *(a4 + 48);
  *(a4 + 48) = v10;
  *(result + 64) = *(a4 + 64);
  ++*(a1 + 40);
  return result;
}

uint64_t re::HashTable<re::WeakStringID,re::IntrospectionMember,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<re::WeakStringID,re::IntrospectionMember,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 88 * v4);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 88 * v4);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = 88 * v4;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + 88 * v4;
}

void re::HashTable<re::WeakStringID,re::IntrospectionMember,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::StringID,re::RigDataTypeClass,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v9, v4, a2);
      v5 = *v9;
      *v9 = *a1;
      *a1 = v5;
      v6 = *&v9[16];
      *&v9[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v7 = *&v9[24];
      *&v9[24] = *(a1 + 24);
      *(a1 + 24) = v7;
      ++*&v9[40];
      re::HashTable<re::WeakStringID,re::IntrospectionMember,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::move(a1, v9);
      re::HashTable<re::WeakStringID,re::IntrospectionMember,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(v9);
    }
  }

  else
  {
    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = 3;
    }
  }
}

uint64_t re::HashTable<re::WeakStringID,re::IntrospectionMember,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = 80;
    do
    {
      v7 = *(a2 + 16) + v6;
      if ((*(v7 - 80) & 0x80000000) != 0)
      {
        v8 = 0xBF58476D1CE4E5B9 * (*(v7 - 72) ^ (*(v7 - 72) >> 30));
        result = re::HashTable<re::WeakStringID,re::IntrospectionMember,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::allocEntry(v4, ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31)) % *(v4 + 24));
        v9 = (*(a2 + 16) + v6);
        *(result + 8) = *(v9 - 9);
        *(result + 16) = *(v9 - 16);
        *(result + 24) = *(v9 - 7);
        *(result + 40) = 0;
        *(result + 40) = *(v9 - 5);
        *(v9 - 5) = 0;
        v10 = *(result + 32);
        *(result + 32) = *(v9 - 6);
        *(v9 - 6) = v10;
        LODWORD(v10) = *(v9 - 6);
        *(result + 48) = *(v9 - 4);
        *(result + 56) = v10;
        *(result + 72) = 0;
        *(result + 72) = *(v9 - 1);
        *(v9 - 1) = 0;
        v11 = *(result + 64);
        *(result + 64) = *(v9 - 2);
        *(v9 - 2) = v11;
        *(result + 80) = *v9;
        v2 = *(a2 + 32);
      }

      ++v5;
      v6 += 88;
    }

    while (v5 < v2);
  }

  return result;
}

double re::HashTable<re::WeakStringID,re::IntrospectionMember,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        re::HashTable<re::WeakStringID,re::IntrospectionMember,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::EntryBase::free(a1[2] + v3);
        ++v4;
        v3 += 88;
      }

      while (v4 < *(a1 + 8));
      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

uint64_t re::HashTable<re::WeakStringID,re::IntrospectionMember,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::EntryBase::free(uint64_t result)
{
  if ((*result & 0x80000000) != 0)
  {
    v2 = result;
    *result &= ~0x80000000;
    *(result + 8) = 0;
    re::SerializedReference<re::IntrospectionBase const*>::reset(result + 64);

    return re::SerializedReference<re::IntrospectionBase const*>::reset(v2 + 32);
  }

  return result;
}

void re::RuntimeRenderGraphDataStruct::setOrAddValueOfType<re::Vector4<float>>(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v47 = *MEMORY[0x1E69E9840];
  v36 = a3;
  v37 = a4;
  {
    re::introspect<re::Vector4<float>>(BOOL)::info = re::introspect_Vector4F(0);
  }

  v6 = re::introspect<re::Vector4<float>>(BOOL)::info;
  v7 = *(re::introspect<re::Vector4<float>>(BOOL)::info + 4);
  if (a2)
  {
    v8 = *a2;
    if (*a2)
    {
      v9 = a2[1];
      if (v9)
      {
        v10 = (a2 + 2);
        do
        {
          v8 = 31 * v8 + v9;
          v11 = *v10++;
          v9 = v11;
        }

        while (v11);
      }

      v8 &= ~0x8000000000000000;
    }
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  *&buf = v8;
  v12 = re::RuntimeRenderGraphDataStruct::setValueOfType<re::Vector4<float>>(a1, &buf, v36, v37);
  if (!v12)
  {
    if (((v7 < 0xA) & (0x301u >> v7)) != 0)
    {
      v13 = strlen(a2);
      v14 = re::globalAllocators(v13);
      v15 = (*(*v14[2] + 32))(v14[2], v13 + 1, 0);
      strcpy(v15, a2);
      re::IntrospectionMember::IntrospectionMember(&v31);
      v32 = v15;
      v16 = *(a1 + 752);
      v17 = (v16 + v6[6] - 1) & -v6[6];
      v18 = v17 - v16;
      if (v17 > v16)
      {
        do
        {
          LOBYTE(buf) = 0;
          re::DynamicOverflowArray<char,128ul>::add(a1 + 744, &buf);
          --v18;
        }

        while (v18);
      }

      v19 = v33;
      v33 = v6;
      buf = v19;
      re::SerializedReference<re::IntrospectionBase const*>::reset(&buf);
      v20 = *(a1 + 752);
      v34 = v20;
      v31 = 1;
      v21 = v20;
      v22 = (v6[5] + v6[6] - 1) & -v6[6];
      if (!v22)
      {
        goto LABEL_32;
      }

      do
      {
        LOBYTE(buf) = 0;
        v23 = re::DynamicOverflowArray<char,128ul>::add(a1 + 744, &buf);
        --v22;
      }

      while (v22);
      v21 = *(a1 + 752);
      if (v21 > v20)
      {
        if (*(a1 + 760))
        {
          v24 = a1 + 768;
        }

        else
        {
          v24 = *(a1 + 776);
        }

        *&v44 = 0;
        buf = 0u;
        v43 = 0u;
        *v39 = re::globalAllocators(v23)[2];
        *&v39[8] = 0;
        *&v39[16] = &buf;
        if (v15)
        {
          v26 = *v15;
          if (*v15)
          {
            v27 = v15[1];
            if (v27)
            {
              v28 = (v15 + 2);
              do
              {
                v26 = 31 * v26 + v27;
                v29 = *v28++;
                v27 = v29;
              }

              while (v29);
            }

            v26 &= ~0x8000000000000000;
          }
        }

        else
        {
          v26 = 0x7FFFFFFFFFFFFFFFLL;
        }

        *&buf = v26;
        re::SmallHashTable<re::WeakStringID,re::IntrospectionMember,8ul,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false>::add(a1 + 24, &buf, &v31, 0);
        re::SerializedReference<re::IntrospectionBase const*>::reset(&v35);
        re::SerializedReference<re::IntrospectionBase const*>::reset(&v33);
      }

      else
      {
LABEL_32:
        v38 = 0;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        buf = 0u;
        v30 = v21;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v39 = 136315906;
        *&v39[4] = "operator[]";
        *&v39[12] = 1024;
        *&v39[14] = 858;
        *&v39[18] = 2048;
        *&v39[20] = v20;
        v40 = 2048;
        v41 = v30;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }
    }

    else
    {
      v25 = *re::graphicsLogObjects(v12);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = a2;
        _os_log_impl(&dword_1E1C61000, v25, OS_LOG_TYPE_DEFAULT, "Attempted to add a non-basic type to RuntimeRenderGraphData: %s", &buf, 0xCu);
      }
    }
  }
}

BOOL re::RuntimeRenderGraphDataStruct::setValueOfType<re::Vector4<float>>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v29 = *MEMORY[0x1E69E9840];
  __src[0] = a3;
  __src[1] = a4;
  v5 = re::SmallHashTable<re::WeakStringID,re::IntrospectionMember,8ul,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false>::tryGet(a1 + 24, a2);
  if (v5)
  {
    v6 = &unk_1EE187000;
    {
      v6 = &unk_1EE187000;
      if (v14)
      {
        re::introspect<re::Vector4<float>>(BOOL)::info = re::introspect_Vector4F(0);
        v6 = &unk_1EE187000;
      }
    }

    v7 = v6[46];
    if (v7 == *(v5 + 16))
    {
      v8 = *(v5 + 36);
      v9 = *(a1 + 752);
      if (v9 <= v8)
      {
        __src[3] = 0;
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v24 = 0u;
        v12 = v8;
        v13 = v9;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v16 = 136315906;
        v17 = "operator[]";
        v18 = 1024;
        v19 = 858;
        v20 = 2048;
        v21 = v12;
        v22 = 2048;
        v23 = v13;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      if (*(a1 + 760))
      {
        v10 = a1 + 768;
      }

      else
      {
        v10 = *(a1 + 776);
      }

      memcpy((v10 + v8), __src, *(v7 + 20));
    }
  }

  return v5 != 0;
}

void re::RuntimeRenderGraphDataStruct::setOrAddValueOfType<float>(uint64_t a1, char *a2, float a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v36 = a3;
  {
    re::introspect<float>(BOOL)::info = re::introspect_float(0, v29);
  }

  v5 = re::introspect<float>(BOOL)::info;
  v6 = *(re::introspect<float>(BOOL)::info + 4);
  if (a2)
  {
    v7 = *a2;
    if (*a2)
    {
      v8 = a2[1];
      if (v8)
      {
        v9 = (a2 + 2);
        do
        {
          v7 = 31 * v7 + v8;
          v10 = *v9++;
          v8 = v10;
        }

        while (v10);
      }

      v7 &= ~0x8000000000000000;
    }
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  *&buf = v7;
  v11 = re::RuntimeRenderGraphDataStruct::setValueOfType<float>(a1, &buf, v36);
  if (!v11)
  {
    if (((v6 < 0xA) & (0x301u >> v6)) != 0)
    {
      v12 = strlen(a2);
      v13 = re::globalAllocators(v12);
      v14 = (*(*v13[2] + 32))(v13[2], v12 + 1, 0);
      strcpy(v14, a2);
      re::IntrospectionMember::IntrospectionMember(&v31);
      v32 = v14;
      v15 = *(a1 + 752);
      v16 = (v15 + v5[6] - 1) & -v5[6];
      v17 = v16 - v15;
      if (v16 > v15)
      {
        do
        {
          LOBYTE(buf) = 0;
          re::DynamicOverflowArray<char,128ul>::add(a1 + 744, &buf);
          --v17;
        }

        while (v17);
      }

      v18 = v33;
      v33 = v5;
      buf = v18;
      re::SerializedReference<re::IntrospectionBase const*>::reset(&buf);
      v19 = *(a1 + 752);
      v34 = v19;
      v31 = 1;
      v20 = v19;
      v21 = (v5[5] + v5[6] - 1) & -v5[6];
      if (!v21)
      {
        goto LABEL_32;
      }

      do
      {
        LOBYTE(buf) = 0;
        v22 = re::DynamicOverflowArray<char,128ul>::add(a1 + 744, &buf);
        --v21;
      }

      while (v21);
      v20 = *(a1 + 752);
      if (v20 > v19)
      {
        if (*(a1 + 760))
        {
          v23 = a1 + 768;
        }

        else
        {
          v23 = *(a1 + 776);
        }

        *&v43 = 0;
        buf = 0u;
        v42 = 0u;
        *v38 = re::globalAllocators(v22)[2];
        *&v38[8] = 0;
        *&v38[16] = &buf;
        if (v14)
        {
          v25 = *v14;
          if (*v14)
          {
            v26 = v14[1];
            if (v26)
            {
              v27 = (v14 + 2);
              do
              {
                v25 = 31 * v25 + v26;
                v28 = *v27++;
                v26 = v28;
              }

              while (v28);
            }

            v25 &= ~0x8000000000000000;
          }
        }

        else
        {
          v25 = 0x7FFFFFFFFFFFFFFFLL;
        }

        *&buf = v25;
        re::SmallHashTable<re::WeakStringID,re::IntrospectionMember,8ul,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false>::add(a1 + 24, &buf, &v31, 0);
        re::SerializedReference<re::IntrospectionBase const*>::reset(&v35);
        re::SerializedReference<re::IntrospectionBase const*>::reset(&v33);
      }

      else
      {
LABEL_32:
        v37 = 0;
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        buf = 0u;
        v30 = v20;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v38 = 136315906;
        *&v38[4] = "operator[]";
        *&v38[12] = 1024;
        *&v38[14] = 858;
        *&v38[18] = 2048;
        *&v38[20] = v19;
        v39 = 2048;
        v40 = v30;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }
    }

    else
    {
      v24 = *re::graphicsLogObjects(v11);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = a2;
        _os_log_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_DEFAULT, "Attempted to add a non-basic type to RuntimeRenderGraphData: %s", &buf, 0xCu);
      }
    }
  }
}

BOOL re::RuntimeRenderGraphDataStruct::setValueOfType<float>(uint64_t a1, void *a2, float a3)
{
  v30 = *MEMORY[0x1E69E9840];
  __src = a3;
  v4 = re::SmallHashTable<re::WeakStringID,re::IntrospectionMember,8ul,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false>::tryGet(a1 + 24, a2);
  if (v4)
  {
    v5 = &unk_1EE187000;
    {
      v5 = &unk_1EE187000;
      if (v13)
      {
        re::introspect<float>(BOOL)::info = re::introspect_float(0, v14);
        v5 = &unk_1EE187000;
      }
    }

    v6 = v5[40];
    if (v6 == *(v4 + 16))
    {
      v7 = *(v4 + 36);
      v8 = *(a1 + 752);
      if (v8 <= v7)
      {
        v16 = 0;
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v25 = 0u;
        v11 = v7;
        v12 = v8;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v17 = 136315906;
        v18 = "operator[]";
        v19 = 1024;
        v20 = 858;
        v21 = 2048;
        v22 = v11;
        v23 = 2048;
        v24 = v12;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      if (*(a1 + 760))
      {
        v9 = a1 + 768;
      }

      else
      {
        v9 = *(a1 + 776);
      }

      memcpy((v9 + v7), &__src, *(v6 + 20));
    }
  }

  return v4 != 0;
}

void re::internal::Callable<RECameraViewDescriptorsComponentSnapshotNextFrame::$_0,void ()(re::FrameCount const&)>::~Callable(uint64_t a1)
{

  JUMPOUT(0x1E6906520);
}

void *re::internal::Callable<RECameraViewDescriptorsComponentSnapshotNextFrame::$_0,void ()(re::FrameCount const&)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D2DEB0;
  a2[1] = _Block_copy(*(a1 + 8));
  return a2;
}

void *re::internal::Callable<RECameraViewDescriptorsComponentSnapshotNextFrame::$_0,void ()(re::FrameCount const&)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  *a2 = &unk_1F5D2DEB0;
  a2[1] = v2;
  return a2;
}

void re::internal::Callable<RECameraViewDescriptorsComponentSnapshotNextFrameWithSettings::$_0,void ()(re::FrameCount const&)>::~Callable(uint64_t a1)
{

  JUMPOUT(0x1E6906520);
}

void *re::internal::Callable<RECameraViewDescriptorsComponentSnapshotNextFrameWithSettings::$_0,void ()(re::FrameCount const&)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D2DF08;
  a2[1] = _Block_copy(*(a1 + 8));
  return a2;
}

void *re::internal::Callable<RECameraViewDescriptorsComponentSnapshotNextFrameWithSettings::$_0,void ()(re::FrameCount const&)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  *a2 = &unk_1F5D2DF08;
  a2[1] = v2;
  return a2;
}

void re::internal::Callable<RECameraViewDescriptorsComponentSnapshotNextFrameWithSettingsAndReturnHandle::$_0,void ()(re::FrameCount const&)>::~Callable(uint64_t a1)
{

  JUMPOUT(0x1E6906520);
}

void *re::internal::Callable<RECameraViewDescriptorsComponentSnapshotNextFrameWithSettingsAndReturnHandle::$_0,void ()(re::FrameCount const&)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D2DF60;
  a2[1] = _Block_copy(*(a1 + 8));
  return a2;
}

void *re::internal::Callable<RECameraViewDescriptorsComponentSnapshotNextFrameWithSettingsAndReturnHandle::$_0,void ()(re::FrameCount const&)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  *a2 = &unk_1F5D2DF60;
  a2[1] = v2;
  return a2;
}

void re::internal::Callable<RECameraViewDescriptorsComponentSelectionNextFrameWithSettingsAndReturnHandle::$_0,void ()(re::FrameCount const&)>::~Callable(uint64_t a1)
{

  JUMPOUT(0x1E6906520);
}

void *re::internal::Callable<RECameraViewDescriptorsComponentSelectionNextFrameWithSettingsAndReturnHandle::$_0,void ()(re::FrameCount const&)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D2DFB8;
  a2[1] = _Block_copy(*(a1 + 8));
  return a2;
}

void *re::internal::Callable<RECameraViewDescriptorsComponentSelectionNextFrameWithSettingsAndReturnHandle::$_0,void ()(re::FrameCount const&)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  *a2 = &unk_1F5D2DFB8;
  a2[1] = v2;
  return a2;
}

BOOL re::RuntimeRenderGraphDataStruct::setValueOfType<unsigned int>(uint64_t a1, void *a2, int a3)
{
  v30 = *MEMORY[0x1E69E9840];
  __src = a3;
  v4 = re::SmallHashTable<re::WeakStringID,re::IntrospectionMember,8ul,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false>::tryGet(a1 + 24, a2);
  if (v4)
  {
    v5 = &unk_1EE187000;
    {
      v5 = &unk_1EE187000;
      if (v13)
      {
        re::introspect<unsigned int>(BOOL)::info = re::introspect_uint32_t(0, v14);
        v5 = &unk_1EE187000;
      }
    }

    v6 = v5[37];
    if (v6 == *(v4 + 16))
    {
      v7 = *(v4 + 36);
      v8 = *(a1 + 752);
      if (v8 <= v7)
      {
        v16 = 0;
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v25 = 0u;
        v11 = v7;
        v12 = v8;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v17 = 136315906;
        v18 = "operator[]";
        v19 = 1024;
        v20 = 858;
        v21 = 2048;
        v22 = v11;
        v23 = 2048;
        v24 = v12;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      if (*(a1 + 760))
      {
        v9 = a1 + 768;
      }

      else
      {
        v9 = *(a1 + 776);
      }

      memcpy((v9 + v7), &__src, *(v6 + 20));
    }
  }

  return v4 != 0;
}

re::RuntimeRenderGraphDataStruct *re::RuntimeRenderGraphDataStruct::RuntimeRenderGraphDataStruct(re::RuntimeRenderGraphDataStruct *this, const char *a2)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(this + 3) = 0;
  *this = &unk_1F5D2E010;
  *(this + 8) = 0;
  *(this + 5) = 0;
  *(this + 12) = 0;
  *(this + 696) = 0u;
  *(this + 712) = 0u;
  *(this + 182) = 0;
  *(this + 732) = 0x7FFFFFFFLL;
  *(this + 744) = 0u;
  *(this + 190) = 1;
  *(this + 48) = 0u;
  return this;
}

void re::RuntimeRenderGraphDataStruct::~RuntimeRenderGraphDataStruct(re::RuntimeRenderGraphDataStruct *this)
{
  re::RuntimeRenderGraphDataStruct::~RuntimeRenderGraphDataStruct(this);

  JUMPOUT(0x1E6906520);
}

{
  *this = &unk_1F5D2E010;
  v2 = this + 24;
  re::RuntimeRenderGraphDataStruct::deinit(this);
  re::DynamicString::deinit((this + 896));
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 744);
  re::SmallHashTable<re::WeakStringID,re::IntrospectionMember,8ul,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false>::~SmallHashTable(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

uint64_t re::RuntimeRenderGraphDataStruct::deinit(re::RuntimeRenderGraphDataStruct *this)
{
  v3 = this;
  v4 = *(this + 181);
  if (!v4)
  {
    v5 = this + 56;
    v8 = this + 80 * *(this + 5) + 56;
    goto LABEL_10;
  }

  v5 = this + 696;
  v1 = *(this + 182);
  if (v1)
  {
    v2 = 0;
    v6 = *(this + 89);
    while (1)
    {
      v7 = *v6;
      v6 += 22;
      if (v7 < 0)
      {
        break;
      }

      if (v1 == ++v2)
      {
        LODWORD(v2) = *(this + 182);
        break;
      }
    }
  }

  else
  {
    LODWORD(v2) = 0;
  }

  v8 = this + 696;
LABEL_10:
  while (v4)
  {
    if (v1 == v2)
    {
      goto LABEL_25;
    }

    v9 = *(v5 + 2) + 88 * v2 + 16;
LABEL_15:
    v10 = *(v9 + 8);
    if (v10)
    {
      v11 = re::globalAllocators(this);
      this = (*(*v11[2] + 40))(v11[2], v10);
    }

    *(v9 + 8) = 0;
    if (v4)
    {
      v12 = v2 + 1;
      if (*(v5 + 8) <= (v2 + 1))
      {
        LODWORD(v2) = v2 + 1;
      }

      else
      {
        LODWORD(v2) = *(v5 + 8);
      }

      while (v2 != v12)
      {
        v13 = v12;
        v14 = *(*(v5 + 2) + 88 * v12++);
        if (v14 < 0)
        {
          LODWORD(v2) = v13;
          goto LABEL_10;
        }
      }
    }

    else
    {
      v5 += 80;
    }
  }

  if (v5 != v8)
  {
    v9 = (v5 + 8);
    goto LABEL_15;
  }

LABEL_25:
  re::DynamicInlineArray<re::KeyValuePair<re::WeakStringID,re::IntrospectionMember>,8ul>::clear(v3 + 5);
  re::HashTable<re::WeakStringID,re::IntrospectionMember,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(v3 + 87);
  *(v3 + 3) = 0;
  *(v3 + 8) = 0;

  return re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v3 + 744);
}

uint64_t re::SmallHashTable<re::WeakStringID,re::IntrospectionMember,8ul,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false>::~SmallHashTable(uint64_t a1)
{
  re::DynamicInlineArray<re::KeyValuePair<re::WeakStringID,re::IntrospectionMember>,8ul>::clear((a1 + 16));
  re::HashTable<re::WeakStringID,re::IntrospectionMember,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit((a1 + 672));
  *a1 = 0;
  *(a1 + 8) = 0;
  re::HashTable<re::WeakStringID,re::IntrospectionMember,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit((a1 + 672));
  re::DynamicInlineArray<re::KeyValuePair<re::WeakStringID,re::IntrospectionMember>,8ul>::clear((a1 + 16));
  return a1;
}

uint64_t re::DynamicArray<NS::SharedPtr<MTL::Texture>>::DynamicArray(uint64_t a1, uint64_t *a2)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  v3 = *a2;
  if (*a2)
  {
    v5 = a2[2];
    *a1 = v3;
    re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(a1, v5);
    ++*(a1 + 24);
    v6 = a2[2];
    v7 = *(a1 + 16);
    if (v6 >= v7)
    {
      re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(a1, a2[2]);
      v13 = a2[4];
      v14 = *(a1 + 16);
      v15 = *(a1 + 32);
      if (v14)
      {
        v16 = 8 * v14;
        do
        {
          NS::SharedPtr<MTL::Buffer>::operator=(v15++, v13++);
          v16 -= 8;
        }

        while (v16);
        v15 = *(a1 + 32);
        v14 = *(a1 + 16);
        v13 = a2[4];
      }

      if (v14 != v6)
      {
        v17 = &v13[v14];
        v18 = &v15[v14];
        v19 = 8 * v6 - 8 * v14;
        do
        {
          v20 = *v17++;
          *v18++ = v20;
          v19 -= 8;
        }

        while (v19);
      }
    }

    else
    {
      v8 = *(a1 + 32);
      if (v6)
      {
        v9 = a2[4];
        v10 = 8 * v6;
        do
        {
          NS::SharedPtr<MTL::Buffer>::operator=(v8++, v9++);
          v10 -= 8;
        }

        while (v10);
        v8 = *(a1 + 32);
        v7 = *(a1 + 16);
      }

      if (v6 != v7)
      {
        v11 = &v8[v6];
        v12 = 8 * v7 - 8 * v6;
        do
        {
          if (*v11)
          {

            *v11 = 0;
          }

          ++v11;
          v12 -= 8;
        }

        while (v12);
      }
    }

    *(a1 + 16) = v6;
  }

  return a1;
}

void *re::DynamicArray<re::Projection>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::Projection>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0xF0uLL))
        {
          v2 = 240 * a2;
          result = (*(*result + 32))(result, 240 * a2, 16);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_20;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 240, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_20:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = (v8 + 240 * v9);
        v11 = v7 + 12;
        v12 = (v8 + 96);
        do
        {
          *(v11 - 6) = *(v12 - 6);
          v13 = *(v12 - 5);
          v14 = *(v12 - 4);
          v15 = *(v12 - 3);
          *(v11 - 16) = *(v12 - 16);
          *(v11 - 4) = v14;
          *(v11 - 3) = v15;
          *(v11 - 5) = v13;
          v16 = *(v12 - 16);
          *(v11 - 16) = v16;
          if (v16 == 1)
          {
            v17 = *v12;
            v18 = v12[1];
            v19 = v12[3];
            *(v11 + 2) = v12[2];
            *(v11 + 3) = v19;
            *v11 = v17;
            *(v11 + 1) = v18;
          }

          v20 = v12 - 6;
          v21 = *(v12 + 64);
          *(v11 + 64) = v21;
          if (v21 == 1)
          {
            v22 = v12[5];
            v23 = v12[6];
            v24 = v12[8];
            *(v11 + 7) = v12[7];
            *(v11 + 8) = v24;
            *(v11 + 5) = v22;
            *(v11 + 6) = v23;
          }

          v11 += 30;
          v12 += 15;
        }

        while (v20 + 15 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_20;
    }
  }

  return result;
}

__int128 *std::__copy_impl::operator()[abi:nn200100]<re::Projection *,re::Projection *,re::Projection *>(__int128 *result, __int128 *a2, uint64_t a3)
{
  if (result != a2)
  {
    v3 = result + 6;
    v4 = a3 + 96;
    do
    {
      *(v4 - 96) = *(v3 - 6);
      v5 = *(v3 - 5);
      v6 = *(v3 - 4);
      v7 = *(v3 - 3);
      *(v4 - 32) = *(v3 - 16);
      *(v4 - 64) = v6;
      *(v4 - 48) = v7;
      *(v4 - 80) = v5;
      if (*(v4 - 16))
      {
        if ((*(v3 - 1) & 1) == 0)
        {
          *(v4 - 16) = 0;
          goto LABEL_9;
        }
      }

      else
      {
        if ((*(v3 - 1) & 1) == 0)
        {
          goto LABEL_9;
        }

        *(v4 - 16) = 1;
      }

      v8 = *v3;
      v9 = v3[1];
      v10 = v3[3];
      *(v4 + 32) = v3[2];
      *(v4 + 48) = v10;
      *v4 = v8;
      *(v4 + 16) = v9;
LABEL_9:
      v11 = v3 - 6;
      if (*(v4 + 64))
      {
        if (v3[4])
        {
          goto LABEL_14;
        }

        *(v4 + 64) = 0;
      }

      else if (v3[4])
      {
        *(v4 + 64) = 1;
LABEL_14:
        v12 = v3[5];
        v13 = v3[6];
        v14 = v3[8];
        *(v4 + 112) = v3[7];
        *(v4 + 128) = v14;
        *(v4 + 80) = v12;
        *(v4 + 96) = v13;
      }

      v3 += 15;
      v4 += 240;
    }

    while (v11 + 15 != a2);
  }

  return result;
}

void *REPortalCrossingFlagsComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::PortalCrossingFlagsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
}

void REVertexCacheComponentSetVertexCacheCount(uint64_t a1, unint64_t a2)
{
  re::DynamicArray<re::AssetHandle>::resize(a1 + 32, a2);
  re::DynamicArray<float>::resize(a1 + 72, a2);
  if (*(a1 + 128) > a2)
  {

    re::DynamicArray<re::Optional<BOOL>>::resize((a1 + 112), a2);
  }
}

uint64_t REVertexCacheComponentGetVertexCache(uint64_t a1, unint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 48);
  if (v3 > a2)
  {
    return *(*(a1 + 64) + 24 * a2);
  }

  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v5 = CoreRELog::log;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = 134218240;
    v7 = a2;
    v8 = 2048;
    v9 = v3;
    _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Invalid vertex cache index (%zu), vertex cache count: %zu", &v6, 0x16u);
  }

  return 0;
}

BOOL REVertexCacheComponentSetVertexCache(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 48);
  if (v4 > a2)
  {
    re::AssetAPIHelper::assetHandleCreate(a3, &v13);
    v6 = *(a1 + 48);
    if (v6 > a2)
    {
      v7 = (*(a1 + 64) + 24 * a2);
      v8 = v7[1];
      v7[1] = v14;
      v14 = v8;
      v9 = *v7;
      *v7 = 0;
      *v7 = v13;
      v13 = v9;
      v10 = v7[2];
      v7[2] = v15;
      v15 = v10;
      re::AssetHandle::~AssetHandle(&v13);
      return v4 > a2;
    }

    v16 = 0;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v17 = 136315906;
    v18 = "operator[]";
    v19 = 1024;
    v20 = 789;
    v21 = 2048;
    v22 = a2;
    v23 = 2048;
    v24 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_10;
  }

  if (CoreRELog::onceToken != -1)
  {
LABEL_10:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v11 = CoreRELog::log;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf[0]) = 134218240;
    *(buf + 4) = a2;
    WORD6(buf[0]) = 2048;
    *(buf + 14) = v4;
    _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, "Invalid vertex cache index (%zu), vertex cache count: %zu", buf, 0x16u);
  }

  return v4 > a2;
}

float REVertexCacheComponentGetBaseTime(uint64_t a1, unint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 88);
  if (v3 > a2)
  {
    return *(*(a1 + 104) + 4 * a2);
  }

  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v5 = CoreRELog::log;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = 134218240;
    v7 = a2;
    v8 = 2048;
    v9 = v3;
    _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Invalid vertex cache index (%zu), vertex cache count: %zu", &v6, 0x16u);
  }

  return 3.4028e38;
}

BOOL REVertexCacheComponentSetBaseTime(uint64_t a1, unint64_t a2, float a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 88);
  if (v4 <= a2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 134218240;
      v8 = a2;
      v9 = 2048;
      v10 = v4;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Invalid vertex cache index (%zu), vertex cache count: %zu", &v7, 0x16u);
    }
  }

  else
  {
    *(*(a1 + 104) + 4 * a2) = a3;
  }

  return v4 > a2;
}

uint64_t REVertexCacheComponentIsAnimating(re::ecs2::VertexCacheComponent *a1, unint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 11);
  if (v3 <= a2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v7 = CoreRELog::log;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 134218240;
      v9 = a2;
      v10 = 2048;
      v11 = v3;
      _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "Invalid vertex cache index (%zu), vertex cache count: %zu", &v8, 0x16u);
    }

    return 0;
  }

  re::ecs2::VertexCacheComponent::initializeBindPoint(a1, a2);
  if (*(a1 + 21) <= a2)
  {
    return 0;
  }

  v5 = (*(a1 + 23) + 48 * a2);

  return re::BindPoint::isOverridden(v5);
}

float REVertexCacheComponentGetAnimatedTime(re::ecs2::VertexCacheComponent *a1, unint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 11);
  if (v3 <= a2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v7 = CoreRELog::log;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf[0]) = 134218240;
      *(buf + 4) = a2;
      WORD6(buf[0]) = 2048;
      *(buf + 14) = v3;
      _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "Invalid vertex cache index (%zu), vertex cache count: %zu", buf, 0x16u);
    }

    return 3.4028e38;
  }

  else
  {
    re::ecs2::VertexCacheComponent::initializeBindPoint(a1, a2);
    if (*(a1 + 21) > a2 && (v5 = (*(a1 + 23) + 48 * a2), *(v5 + 3)))
    {
      v6 = re::BindPoint::valueUntyped(v5);
    }

    else
    {
      if (*(a1 + 11) <= a2)
      {
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v6 = *(a1 + 13) + 4 * a2;
    }

    return *v6;
  }
}

uint64_t REVertexCacheComponentIsInterpolationOverridden(void *a1, unint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a1[6];
  if (v3 <= a2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 134218240;
      v8 = a2;
      v9 = 2048;
      v10 = v3;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Invalid vertex cache index (%zu), vertex cache count: %zu", &v7, 0x16u);
    }

    goto LABEL_9;
  }

  if (a1[16] <= a2)
  {
LABEL_9:
    v4 = 0;
    return v4 & 1;
  }

  v4 = *(a1[18] + 2 * a2);
  return v4 & 1;
}

uint64_t REVertexCacheComponentGetInterpolationOverride(void *a1, unint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a1[6];
  if (v3 <= a2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 134218240;
      v9 = a2;
      v10 = 2048;
      v11 = v3;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Invalid vertex cache index (%zu), vertex cache count: %zu", &v8, 0x16u);
    }

    goto LABEL_10;
  }

  if (a1[16] <= a2 || (v4 = (a1[18] + 2 * a2), *v4 != 1))
  {
LABEL_10:
    v5 = 0;
    return v5 & 1;
  }

  v5 = v4[1];
  return v5 & 1;
}

BOOL REVertexCacheComponentSetInterpolationOverride(void *a1, unint64_t a2, char a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a1[6];
  if (v4 > a2)
  {
    v7 = a1[16];
    if (v7 <= a2)
    {
      re::DynamicArray<re::Optional<BOOL>>::resize(a1 + 14, v4);
      v7 = a1[16];
    }

    if (v7 > a2)
    {
      v8 = (a1[18] + 2 * a2);
      if ((*v8 & 1) == 0)
      {
        *v8 = 1;
      }

      v8[1] = a3;
      return v4 > a2;
    }

    memset(buf, 0, sizeof(buf));
    v4 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_14;
  }

  if (CoreRELog::onceToken != -1)
  {
LABEL_14:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v9 = CoreRELog::log;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf[0]) = 134218240;
    *(buf + 4) = a2;
    WORD6(buf[0]) = 2048;
    *(buf + 14) = v4;
    _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Invalid vertex cache index (%zu), vertex cache count: %zu", buf, 0x16u);
  }

  return v4 > a2;
}

BOOL REVertexCacheComponentDisableInterpolationOverride(void *a1, unint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a1[6];
  if (v3 <= a2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 134218240;
      v8 = a2;
      v9 = 2048;
      v10 = v3;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Invalid vertex cache index (%zu), vertex cache count: %zu", &v7, 0x16u);
    }
  }

  else if (a1[16] > a2)
  {
    v4 = (a1[18] + 2 * a2);
    if (*v4 == 1)
    {
      *v4 = 0;
    }
  }

  return v3 > a2;
}

uint64_t re::internal::RERealityRendererSceneGroup::RERealityRendererSceneGroup(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(a1 + 24) = a2;
  *a1 = &unk_1F5D2E058;
  v6 = (*(*a2 + 264))(a2);
  *(a1 + 32) = v6;
  re::ecs2::ComponentHelper::addRealityRendererDefaultSystems(*(a1 + 24), v6, a3);
  return a1;
}

void re::internal::RERealityRendererSceneGroup::~RERealityRendererSceneGroup(re::internal::RERealityRendererSceneGroup *this)
{
  *this = &unk_1F5D2E058;
  (*(**(this + 3) + 272))(*(this + 3), *(this + 4));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5D2E058;
  (*(**(this + 3) + 272))(*(this + 3), *(this + 4));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

re::TextureImportOperation *RETextureImportOperationCreateWithBundleResource(void *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = [v7 URLForResource:v8 withExtension:v9];
  v11 = v10;
  if (v10)
  {
    v12 = re::globalAllocators(v10);
    v13 = (*(*v12[2] + 32))(v12[2], 280, 8);
    v14 = *(re::ServiceLocator::serviceOrNull<re::AssetService>(a4) + 2176);
    re::FileTextureProvider::FileTextureProvider(v13, &v26, v14, [(re *)v11 fileSystemRepresentation]);

    v16 = [v7 bundleIdentifier];
    v17 = [v16 UTF8String];
    v18 = strlen(v17);
    v26 = v17;
    v27 = v18;
    re::DynamicString::operator=((v15 + 152), &v26);

    v19 = [v8 UTF8String];
    v20 = strlen(v19);
    v26 = v19;
    v27 = v20;
    re::DynamicString::operator=((v15 + 184), &v26);
    if (v9)
    {
      v21 = [v9 UTF8String];
      if (*(v15 + 24))
      {
        v22 = *(v15 + 25);
      }

      else
      {
        v22 = v15 + 193;
      }

      v23 = strrchr(v22, 46);
      if (!v23 || strcmp(v23 + 1, v21))
      {
        re::DynamicString::append((v15 + 184), ".", 1uLL);
        v24 = strlen(v21);
        re::DynamicString::append((v15 + 184), v21, v24);
      }
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void anonymous namespace::getServiceLocationImageImportContext(uint64_t a1, uint64_t a2)
{
  v4 = re::ServiceLocator::serviceOrNull<re::ImportGraphicsResources>(a2);
  re::ImportGraphicsContext::ImportGraphicsContext(a1, v4);
  if (*(re::ServiceLocator::serviceOrNull<re::AssetService>(a2) + 2216) == 1)
  {
    v5 = *(a1 + 16) | (*(a1 + 18) << 16);
    if (*(a1 + 19) == 1)
    {
      v6 = *(a1 + 20);
    }

    else
    {
      v6 = 0;
    }

    v7 = *(v4 + 19);
    objc_storeStrong(a1, 0);
    v8 = *(a1 + 8);
    *(a1 + 8) = 0;

    *(a1 + 18) = BYTE2(v5);
    *(a1 + 16) = v5;
    if ((*(a1 + 19) & 1) == 0)
    {
      *(a1 + 19) = 1;
    }

    *(a1 + 20) = v6;
    *(a1 + 21) = v7;
    *(a1 + 24) = 0;
  }
}

re::TextureImportOperation *anonymous namespace::newTextureImportOperation(uint64_t a1, re::TextureProvider *a2)
{
  v3 = re::ServiceLocator::serviceOrNull<re::AssetService>(a1);
  v4 = re::globalAllocators(v3);
  v5 = (*(*v4[2] + 32))(v4[2], 560, 8);

  return re::TextureImportOperation::TextureImportOperation(v5, a2, 1, v3);
}

re::TextureImportOperation *RETextureImportOperationCreateWithURL(void *a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [v3 isFileURL];
  if ((v4 & 1) == 0)
  {
    v5 = *re::pipelineLogObjects(v4);
    v4 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (v4)
    {
      LODWORD(v11[0]) = 138412290;
      *(v11 + 4) = v3;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "URL passed to RETextureImportOperationCreateWithURL must be a file URL: %@", v11, 0xCu);
    }
  }

  v6 = re::globalAllocators(v4);
  v7 = (*(*v6[2] + 32))(v6[2], 280, 8);
  v8 = *(re::ServiceLocator::serviceOrNull<re::AssetService>(a2) + 2176);
  re::FileTextureProvider::FileTextureProvider(v7, v11, v8, [v3 fileSystemRepresentation]);

  return v9;
}

re::TextureImportOperation *RETextureImportOperationCreateWithData(re *a1, uint64_t a2)
{
  v8 = a1;
  v3 = re::globalAllocators(a1);
  v4 = (*(*v3[2] + 32))(v3[2], 264, 8);
  v5 = re::ServiceLocator::serviceOrNull<re::AssetService>(a2);
  re::DataTextureProvider::DataTextureProvider(v4, v7, *(v5 + 2176), &v8, 0);
}

re::TextureImportOperation *RETextureImportOperationCreateWithSourceDataProvider(char *a1, uint64_t a2)
{
  v3 = a1;
  v10 = a1;
  if (a1)
  {
    a1 = a1 + 8;
  }

  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 384, 8);
  v6 = re::ServiceLocator::serviceOrNull<re::AssetService>(a2);
  re::StreamSourceTextureProvider::StreamSourceTextureProvider(v5, v9, *(v6 + 2176), &v10);

  if (v3)
  {
  }

  return v7;
}

void RETextureImportOperationSetDoneWithSourceCallback(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 544);
  v5 = _Block_copy(v3);

  v6 = *(v4 + 176);
  *(v4 + 176) = v5;
}

void anonymous namespace::assertNotRun(re *a1)
{
  if (a1)
  {
    v1 = *re::pipelineLogObjects(a1);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      *v2 = 0;
      _os_log_impl(&dword_1E1C61000, v1, OS_LOG_TYPE_DEFAULT, "Modifying options after RETextureImportOperationRef was run has no effect", v2, 2u);
    }
  }
}

re::TextureImportOperation *RETextureImportOperationCreateWithCGImage(re *a1, uint64_t a2)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 256, 8);
  v6 = re::ServiceLocator::serviceOrNull<re::AssetService>(a2);
  re::TextureProvider::TextureProvider(v5, v8, *(v6 + 2176));
  *v5 = &unk_1F5D0B448;
  *(v5 + 31) = a1;
  CGImageRetain(a1);
}

re::TextureImportOperation *RETextureImportOperationCreateFromImageArray(void *a1, uint64_t a2, int a3, char *a4)
{
  v7 = a1;
  v8 = [v7 count];
  v9 = v8;
  v34 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v10 = v8;
  re::DynamicArray<float *>::setCapacity(&v30, v10);
  ++v33;
  if (v9 >= 1)
  {
    v11 = 0;
    v12 = v9 & 0x7FFFFFFF;
    do
    {
      v13 = [v7 objectAtIndexedSubscript:v11];
      v14 = v32;
      if (v32 >= v31)
      {
        re::DynamicArray<float *>::growCapacity(&v30, v32 + 1);
        v14 = v32;
      }

      *(v34 + v14) = v13;
      v32 = v14 + 1;
      ++v33;

      ++v11;
    }

    while (v12 != v11);
  }

  re::internal::ensureImageArrayConsistency(v34, v32, a3, v26);
  if (v26[0])
  {
    v16 = re::globalAllocators(v15);
    v17 = (*(*v16[2] + 32))(v16[2], 288, 8);
    v18 = *(re::ServiceLocator::serviceOrNull<re::AssetService>(a2) + 2176);
    re::DynamicArray<char const*>::DynamicArray(v22, &v30);
    re::CGImageArrayTextureProvider::CGImageArrayTextureProvider(v17, v25, v18, v22, a3);
    if (v22[0])
    {
      if (v24)
      {
        (*(*v22[0] + 40))();
      }

      v24 = 0;
      memset(v22, 0, sizeof(v22));
      ++v23;
    }
  }

  else
  {
    if (v28)
    {
      v20 = *&v29[7];
    }

    else
    {
      v20 = v29;
    }

    re::CoreREAssetUtils::logAndSetErrorFromString(v20, a4, @"REPipelineErrorDomain", 0x64);
    v19 = 0;
  }

  if (v26[0] & 1) == 0 && v27 && (v28)
  {
    (*(*v27 + 40))();
  }

  if (v30 && v34)
  {
    (*(*v30 + 40))();
  }

  return v19;
}

re::TextureImportOperation *RETextureImportOperationCreateFromImageSourceArray(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a4;
  v6 = a1;
  v7 = [v6 count];
  v8 = v7;
  v31 = 0;
  v29 = 0uLL;
  v30 = 0;
  v9 = v7;
  v10 = re::DynamicArray<re::ImageSourceAndIndex>::setCapacity(&v28, v9);
  ++v30;
  if (v8 >= 1)
  {
    v11 = 0;
    v12 = v8 & 0x7FFFFFFF;
    do
    {
      v13 = [v6 objectAtIndexedSubscript:{v11, v26}];
      v14 = v13;
      v15 = *(a2 + 4 * v11);
      if (v13)
      {
        v13 = CFRetain(v13);
      }

      v16 = *(&v29 + 1);
      if (*(&v29 + 1) >= v29)
      {
        v17 = *(&v29 + 1) + 1;
        if (v29 < *(&v29 + 1) + 1)
        {
          if (v28)
          {
            v18 = 2 * v29;
            if (!v29)
            {
              v18 = 8;
            }

            if (v18 <= v17)
            {
              v19 = *(&v29 + 1) + 1;
            }

            else
            {
              v19 = v18;
            }

            re::DynamicArray<re::ImageSourceAndIndex>::setCapacity(&v28, v19);
          }

          else
          {
            re::DynamicArray<re::ImageSourceAndIndex>::setCapacity(&v28, v17);
            ++v30;
          }
        }

        v16 = *(&v29 + 1);
      }

      v20 = (v31 + 16 * v16);
      *v20 = v14;
      v20[1] = v15;
      *(&v29 + 1) = v16 + 1;
      ++v30;

      ++v11;
    }

    while (v12 != v11);
  }

  v21 = re::globalAllocators(v10);
  v22 = (*(*v21[2] + 32))(v21[2], 288, 8);
  v23 = re::ServiceLocator::serviceOrNull<re::AssetService>(a3);
  re::TextureProvider::TextureProvider(v22, v27, *(v23 + 2176));
  *v22 = &unk_1F5D0B548;
  *(v22 + 244) = v26;
  *(v22 + 248) = v28;
  *(v22 + 256) = v29;
  v28 = 0;
  v29 = 0uLL;
  *(v22 + 280) = v31;
  v31 = 0;
  ++v30;
  *(v22 + 272) = 1;

  re::DynamicArray<re::ImageSourceAndIndex>::deinit(&v28);

  return v24;
}

uint64_t RETextureImportOperationCreateAssetData(uint64_t a1, void *a2)
{
  {
    return 0;
  }

  *(a1 + 112) = 3;
  re::make::shared::object<re::TextureAssetData,re::TextureAssetData>((a1 + 216), &v4);
  return v4;
}

uint64_t anonymous namespace::moveToCreateState(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 544);
  v5 = *(v4 + 112);
  v6 = v5;
  if (v5)
  {
    if ((*(v4 + 104) - 3) >= 2)
    {
      v7 = *re::pipelineLogObjects(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v5;
        _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, "Color Space %@ was set for texture without valid texture semantics.", buf, 0xCu);
      }
    }
  }

  v8 = *(a1 + 112);
  if (!v8)
  {
    result = RETextureImportOperationRun(a1, a2);
    if (!result)
    {
      return result;
    }

    v8 = *(a1 + 112);
  }

  if (v8 == 1)
  {
    *(a1 + 112) = 2;
    isValid = re::TextureData::isValid((a1 + 240));
    result = 1;
    if ((isValid & 1) == 0 && !*(a1 + 512))
    {
      v11 = *(a1 + 544);
      if (*(v11 + 16))
      {
        v12 = *(v11 + 24);
      }

      else
      {
        v12 = v11 + 17;
      }

      re::DynamicString::format("Failed to create valid texture data from %s", buf, v12);
      if (buf[8])
      {
        v16 = v20;
      }

      else
      {
        v16 = &buf[9];
      }

      re::WrappedError::make(@"REPipelineErrorDomain", 5, v16, &v18);
      v17 = v18;
      *a2 = v17;
      CFRetain(v17);

      if (*buf)
      {
        if (buf[8])
        {
          (*(**buf + 40))();
        }
      }

      return 1;
    }
  }

  else
  {
    v13 = *(a1 + 544);
    if (*(v13 + 16))
    {
      v14 = *(v13 + 24);
    }

    else
    {
      v14 = v13 + 17;
    }

    re::DynamicString::format("Failed to create valid texture data from %s", buf, v14);
    if (buf[8])
    {
      v15 = v20;
    }

    else
    {
      v15 = &buf[9];
    }

    re::WrappedError::make(@"REPipelineErrorDomain", 5, v15, &v18);
    *a2 = v18;

    if (*buf && (buf[8] & 1) != 0)
    {
      (*(**buf + 40))();
    }

    return 0;
  }

  return result;
}

re::TextureImportOperation *RETextureImportOperationCreateWithCGImageSource(re *a1, uint64_t a2)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 256, 8);
  v6 = re::ServiceLocator::serviceOrNull<re::AssetService>(a2);
  re::TextureProvider::TextureProvider(v5, v8, *(v6 + 2176));
  *v5 = &unk_1F5D0B3C8;
  *(v5 + 31) = a1;
  CFRetain(a1);
}

CFStringRef RETextureImportOperationCopyTextureAssetPath(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = *(a1 + 40);
  v9 = 0;
  v10 = 0;
  v7 = v3;
  v8 = 0;
  re::DynamicString::setCapacity(&v7, 0);
  re::AssetPath::fullAssetPath((a1 + 32), &v7);
  if (v8)
  {
    v4 = v9;
  }

  else
  {
    v4 = &v8 + 1;
  }

  v5 = CFStringCreateWithCString(v2, v4, 0x8000100u);
  if (v7 && (v8 & 1) != 0)
  {
    (*(*v7 + 40))();
  }

  return v5;
}

uint64_t RETextureImportOperationGetImageUTType(uint64_t a1, const re::TextureProvider *a2)
{
  v2 = *(a1 + 544);
  re::TextureProvider::lazyFetchProperties(v2, a2);
  return *(v2 + 232);
}

CFDictionaryRef RETextureImportOperationCopyImageProperties(uint64_t a1, const re::TextureProvider *a2)
{
  v2 = *(a1 + 544);
  re::TextureProvider::lazyFetchProperties(v2, a2);
  v3 = *(v2 + 216);
  if (!v3)
  {
    return 0;
  }

  v4 = *MEMORY[0x1E695E480];

  return CFDictionaryCreateCopy(v4, v3);
}

id RETextureImportOperationCopyTextureDescriptor(uint64_t a1)
{
  v2 = *(a1 + 544);
  re::TextureProvider::lazyFetchProperties(v2, v3);
  v4 = v2[28];
  v5 = [v4 copy];
  if (v4)
  {
  }

  return v5;
}

id RETextureImportOperationCopyTextureDescriptorTemplate(uint64_t a1)
{
  v2 = [*(*(a1 + 544) + 40) copy];

  return v2;
}

void RETextureImportOperationSetTextureDescriptorTemplate(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 544);
  v5 = [v3 copy];

  v6 = v5;
  re::TextureProvider::setTemplateDescriptor(v4, &v6, 0);
  if (v6)
  {
  }
}

void RETextureImportOperationSetPixelFormatMode(uint64_t a1, int a2)
{
  v4 = *(a1 + 544);
  v5 = *(v4 + 64);
  v6[0] = *(v4 + 48);
  v6[1] = v5;
  v7[0] = *(v4 + 80);
  *(v7 + 12) = *(v4 + 92);
  v8 = *(v4 + 112);
  v9 = *(v4 + 120);
  v10 = *(v4 + 136);
  re::FixedArray<short>::FixedArray(&v11, (v4 + 144));
  v14 = *(v4 + 168);
  LODWORD(v6[0]) = a2;
  re::TextureProvider::setOptions(v4, v6);
  if (v11)
  {
    if (v12)
    {
      (*(*v11 + 40))();
      v12 = 0;
      v13 = 0;
    }

    v11 = 0;
  }
}

void RETextureImportOperationSetDimensionsMode(uint64_t a1, int a2)
{
  v4 = a2 == 1;
  v5 = *(a1 + 544);
  v6 = *(v5 + 64);
  v7[0] = *(v5 + 48);
  v7[1] = v6;
  v8[0] = *(v5 + 80);
  *(v8 + 12) = *(v5 + 92);
  v9 = *(v5 + 112);
  v10 = *(v5 + 120);
  v11 = *(v5 + 136);
  re::FixedArray<short>::FixedArray(&v12, (v5 + 144));
  v15 = *(v5 + 168);
  DWORD2(v7[0]) = v4;
  re::TextureProvider::setOptions(v5, v7);
  if (v12)
  {
    if (v13)
    {
      (*(*v12 + 40))(v12);
      v13 = 0;
      v14 = 0;
    }

    v12 = 0;
  }
}

void RETextureImportOperationSetDownsampleFactor(uint64_t a1, int a2)
{
  v4 = *(a1 + 544);
  v5 = *(v4 + 64);
  v6 = *(v4 + 48);
  v7 = v5;
  v8[0] = *(v4 + 80);
  *(v8 + 12) = *(v4 + 92);
  v9 = *(v4 + 112);
  v10 = *(v4 + 120);
  v11 = *(v4 + 136);
  re::FixedArray<short>::FixedArray(&v12, (v4 + 144));
  v15 = *(v4 + 168);
  LODWORD(v7) = a2;
  re::TextureProvider::setOptions(v4, &v6);
  if (v12)
  {
    if (v13)
    {
      (*(*v12 + 40))(v12, v14);
      v13 = 0;
      v14 = 0;
    }

    v12 = 0;
  }
}

void RETextureImportOperationSetMipmapMode(uint64_t a1, int a2)
{
  v4 = *(a1 + 544);
  v5 = *(v4 + 64);
  v12 = *(v4 + 48);
  v13 = v5;
  v14[0] = *(v4 + 80);
  *(v14 + 12) = *(v4 + 92);
  v15 = *(v4 + 112);
  v16 = *(v4 + 120);
  v17 = *(v4 + 136);
  re::FixedArray<short>::FixedArray(&v18, (v4 + 144));
  v21 = *(v4 + 168);
  DWORD1(v13) = a2;
  re::TextureProvider::setOptions(v4, &v12);
  if (v18)
  {
    if (v19)
    {
      (*(*v18 + 40))(v18, v20, v6, v7, v8, v9, v10, v11, v12, *(&v12 + 1), v13, *(&v13 + 1));
      v19 = 0;
      v20 = 0;
    }

    v18 = 0;
  }
}

void RETextureImportOperationSetCompressionType(uint64_t a1, int a2)
{
  v4 = *(a1 + 544);
  v5 = *(v4 + 64);
  v7 = *(v4 + 48);
  v8 = v5;
  v9[0] = *(v4 + 80);
  *(v9 + 12) = *(v4 + 92);
  v10 = *(v4 + 112);
  v11 = *(v4 + 120);
  v12 = *(v4 + 136);
  re::FixedArray<short>::FixedArray(&v13, (v4 + 144));
  v16 = *(v4 + 168);
  DWORD2(v8) = a2;
  re::TextureProvider::setOptions(v4, &v7);
  if (v13)
  {
    if (v14)
    {
      (*(*v13 + 40))(v13, v15, v6);
      v14 = 0;
      v15 = 0;
    }

    v13 = 0;
  }
}

uint64_t RETextureImportOperationSetASTCCompressionOptions(uint64_t a1, re::CoreREAssetUtils *a2, char *a3)
{
  re::CoreREAssetUtils::textureASTCCompressionOptions(a2, 1, v22);
  v6 = v22[0];
  if (v22[0])
  {
    v7 = *(a1 + 544);
    v8 = *(v7 + 64);
    v13 = *(v7 + 48);
    *v14 = v8;
    *&v14[16] = *(v7 + 80);
    *&v14[28] = *(v7 + 92);
    v15 = *(v7 + 112);
    v16 = *(v7 + 120);
    v17 = *(v7 + 136);
    re::FixedArray<short>::FixedArray(&v18, (v7 + 144));
    v21 = *(v7 + 168);
    *&v14[8] = 4;
    *&v14[12] = v23;
    re::TextureProvider::setOptions(v7, &v13);
    if (v18)
    {
      if (v19)
      {
        (*(*v18 + 40))(v18, v20, v9);
        v19 = 0;
        v20 = 0;
      }

      v18 = 0;
    }
  }

  else
  {
    if (BYTE8(v23))
    {
      v11 = v24;
    }

    else
    {
      v11 = (&v23 + 9);
    }

    re::CoreREAssetUtils::logAndSetErrorFromString(v11, a3, @"REPipelineErrorDomain", 0x64);
  }

  if (v22[0] & 1) == 0 && v23 && (BYTE8(v23))
  {
    (*(*v23 + 40))(v23, v24, v10);
  }

  return v6;
}

re::DynamicString *RETextureImportOperationSetAssetResourceName(uint64_t a1, const char *a2)
{
  v5[0] = a2;
  v5[1] = strlen(a2);
  return re::DynamicString::operator=((a1 + 120), v5);
}

re::DynamicString *RETextureImportOperationSetLabel(uint64_t a1, const char *a2)
{
  v4 = *(a1 + 544);
  v6[0] = a2;
  v6[1] = strlen(a2);
  return re::DynamicString::operator=((v4 + 8), v6);
}

CFTypeRef RETextureImportOperationGetLabel(uint64_t a1)
{
  v2 = *(a1 + 544);
  if (*(v2 + 16))
  {
    v3 = *(v2 + 24);
  }

  else
  {
    v3 = (v2 + 17);
  }

  v4 = CFStringCreateWithCString(0, v3, 0x8000100u);

  return CFAutorelease(v4);
}

void RETextureImportOperationSetSemantic(uint64_t a1, int a2)
{
  v4 = *(a1 + 544);
  v5 = *(v4 + 64);
  v6[0] = *(v4 + 48);
  v6[1] = v5;
  *v7 = *(v4 + 80);
  *&v7[12] = *(v4 + 92);
  v8 = *(v4 + 112);
  v9 = *(v4 + 120);
  v10 = *(v4 + 136);
  re::FixedArray<short>::FixedArray(&v11, (v4 + 144));
  v14 = *(v4 + 168);
  *&v7[24] = a2;
  if (a2 == 6)
  {
    if (LODWORD(v6[0]) == 2)
    {
      LODWORD(v6[0]) = 0;
    }

    if (DWORD1(v6[0]) == 3)
    {
      DWORD1(v6[0]) = 0;
    }
  }

  else
  {
    *&v6[0] = 0x300000002;
  }

  re::TextureProvider::setOptions(v4, v6);
  if (v11)
  {
    if (v12)
    {
      (*(*v11 + 40))();
      v12 = 0;
      v13 = 0;
    }

    v11 = 0;
  }
}

void RETextureImportOperationSetReduceMemoryPeak(uint64_t a1, char a2)
{
  v4 = *(a1 + 544);
  v5 = *(v4 + 64);
  v12 = *(v4 + 48);
  v13 = v5;
  v14[0] = *(v4 + 80);
  *(v14 + 12) = *(v4 + 92);
  v15 = *(v4 + 112);
  v16 = *(v4 + 120);
  v17 = *(v4 + 136);
  re::FixedArray<short>::FixedArray(&v18, (v4 + 144));
  v21 = a2;
  re::TextureProvider::setOptions(v4, &v12);
  if (v18)
  {
    if (v19)
    {
      (*(*v18 + 40))(v18, v20, v6, v7, v8, v9, v10, v11, v12, *(&v12 + 1), v13, *(&v13 + 1));
      v19 = 0;
      v20 = 0;
    }

    v18 = 0;
  }
}

void RETextureImportOperationSetColorSpaceName(uint64_t a1, __CFString *a2)
{
  v4 = *(a1 + 544);
  v5 = *(v4 + 64);
  v12 = *(v4 + 48);
  v13 = v5;
  v14[0] = *(v4 + 80);
  *(v14 + 12) = *(v4 + 92);
  v15 = *(v4 + 112);
  v16 = *(v4 + 120);
  v17 = *(v4 + 136);
  re::FixedArray<short>::FixedArray(&v18, (v4 + 144));
  v21 = *(v4 + 168);
  re::TextureFromImageOptions::setColorSpace(&v12, a2);
  re::TextureProvider::setOptions(v4, &v12);
  if (v18)
  {
    if (v19)
    {
      (*(*v18 + 40))(v18, v20, v6, v7, v8, v9, v10, v11, v12, *(&v12 + 1), v13, *(&v13 + 1));
      v19 = 0;
      v20 = 0;
    }

    v18 = 0;
  }
}

uint64_t RETextureImportOperationSetOptionsFromJSON(uint64_t a1, uint64_t a2, char *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = a2;
  re::parseTextureFromImageOptions(&v8, v9);
  v5 = v9[0];
  if (v9[0])
  {
    re::TextureProvider::setOptions(*(a1 + 544), v10);
  }

  else
  {
    if (v10[8])
    {
      v6 = *&v11[7];
    }

    else
    {
      v6 = v11;
    }

    re::CoreREAssetUtils::logAndSetErrorFromString(v6, a3, @"REPipelineErrorDomain", 0x64);
  }

  re::Result<re::TextureFromImageOptions,re::DynamicString>::~Result(v9);
  return v5;
}

uint64_t RETextureImportOperationRun(uint64_t a1, void *a2)
{
  if (*(a1 + 32) || *(a1 + 112))
  {
    if (a2)
    {
      v4 = *(a1 + 544);
      if (*(v4 + 16))
      {
        v5 = *(v4 + 24);
      }

      else
      {
        v5 = v4 + 17;
      }

      re::DynamicString::format("Failed to import data from %s: operation unsupported in current state", &v44, v5);
      if (v45)
      {
        v6 = v46[0];
      }

      else
      {
        v6 = &v45 + 1;
      }

      v7 = 4;
LABEL_11:
      re::WrappedError::make(@"REPipelineErrorDomain", v7, v6, &v32);
      v8 = v32;
      *a2 = v8;
      CFRetain(v8);

      if (v44 && (v45 & 1) != 0)
      {
        (*(*v44 + 40))();
      }

      return 0;
    }

    return 0;
  }

  v11 = *(a1 + 160);
  if (v11)
  {
    v12 = v11 >> 1;
  }

  else
  {
    v12 = v11 >> 1;
  }

  if (v12)
  {
    re::TextureAssetProvider::makeDescriptor((a1 + 152), (a1 + 184), (*(a1 + 544) + 48), &v44);
    re::DynamicString::operator=((a1 + 368), &v44);
    re::DynamicArray<re::internal::DeferredUnregister *>::operator=(a1 + 400, &v47);
    re::DynamicArray<re::internal::DeferredUnregister *>::operator=(a1 + 440, v52);
    re::DynamicString::operator=((a1 + 480), v55);
    if (v55[0])
    {
      if (v55[1])
      {
        (*(*v55[0] + 40))();
      }

      memset(v55, 0, 32);
    }

    if (v52[0])
    {
      if (v54)
      {
        (*(*v52[0] + 40))();
      }

      v54 = 0;
      memset(v52, 0, sizeof(v52));
      ++v53;
    }

    if (v47)
    {
      if (v51)
      {
        (*(*v47 + 40))();
      }

      v51 = 0;
      v48 = 0;
      v49 = 0;
      v47 = 0;
      ++v50;
    }

    if (v44 && (v45 & 1) != 0)
    {
      (*(*v44 + 40))();
    }

    v13 = *(a1 + 24);
    os_unfair_lock_lock(v13 + 32);
    re::AssetManager::assetHandle_assetTablesLocked(&v32, v13, (a1 + 368));
    os_unfair_lock_unlock(v13 + 32);
    if (v33 && (v14 = atomic_load((v33 + 896)), v14 == 2) && (*(v33 + 256) & 1) == 0)
    {
      *(a1 + 512) = 0;
      re::AssetHandle::operator=(a1 + 520, &v32);
    }

    else
    {
      if (*(a1 + 376))
      {
        v15 = *(a1 + 384);
      }

      else
      {
        v15 = (a1 + 377);
      }

      ProviderForScheme = re::AssetProviderRegistry::tryGetProviderForScheme(*(*(a1 + 24) + 1904), v15);
      *&v22 = &unk_1F5CB96F0;
      BYTE8(v22) = 1;
      HIDWORD(v22) = 0;
      (*(*ProviderForScheme + 40))(&v44);
      if (v44 == 1)
      {
        v17 = v48;
        *(a1 + 512) = v48;
        std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1> const&>(a1 + 240, v17 + 112);
        re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((a1 + 360), v49);
        re::AssetHandle::operator=(a1 + 520, &v32);
        if (v44)
        {
          if (v49)
          {

            v49 = 0;
          }
        }
      }

      re::DynamicString::deinit(&v45);
    }

    re::AssetHandle::~AssetHandle(&v32);
  }

  else
  {
    re::TextureAssetLoader::createTextureAssetDataFromProvider(*(a1 + 544), &v44);
    if (v44 == 1)
    {
      v31 = 0;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v22 = 0u;
      re::TextureAssetData::TextureAssetData(&v22);
      re::TextureAssetData::TextureAssetData(&v32, &v45);
      re::TextureAssetData::operator=(&v45, &v22);
      re::TextureAssetData::operator=(a1 + 216, &v32);
      v32 = &unk_1F5CC40A0;
      if (v43)
      {

        v43 = 0;
      }

      if (v38)
      {
        if (v42)
        {
          (*(*v38 + 40))();
        }

        v42 = 0;
        v39 = 0;
        v40 = 0;
        v38 = 0;
        ++v41;
      }

      if (v36)
      {

        v36 = 0;
      }

      if (v35 != -1)
      {
        (off_1F5D2E090[v35])(&v56, &v34);
      }

      v35 = -1;
      v32 = &unk_1F5CCF868;
      objc_destructInstance(&v33);
      *&v22 = &unk_1F5CC40A0;
      if (v31)
      {

        v31 = 0;
      }

      if (v28)
      {
        if (v30)
        {
          (*(*v28 + 40))();
        }

        *&v30 = 0;
        *&v29 = 0;
        v28 = 0uLL;
        ++DWORD2(v29);
      }

      if (v27)
      {

        *&v27 = 0;
      }

      if (v24 != -1)
      {
        (off_1F5D2E090[v24])(&v56, &v23 + 8);
      }

      LODWORD(v24) = -1;
      *&v22 = &unk_1F5CCF868;
      objc_destructInstance(&v22 + 8);
    }

    else
    {
      v32 = 0;
      LODWORD(v33) = 0;
      std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(a1 + 240, &v32);
      if (v33 != -1)
      {
        (off_1F5D2E090[v33])(&v22, &v32);
      }

      if (v46[0])
      {
        v18 = v46[1];
      }

      else
      {
        v18 = v46 + 1;
      }

      re::WrappedError::make(@"REPipelineErrorDomain", 5, v18, &v32);
      if (a2)
      {
        v19 = v32;
        *a2 = v19;
        CFRetain(v19);
      }
    }

    if (v44 == 1)
    {
      (*v45)(&v45);
    }

    else if (v45 && (v46[0] & 1) != 0)
    {
      (*(*v45 + 40))();
    }
  }

  v9 = 1;
  *(a1 + 112) = 1;
  if ((re::TextureData::isValid((a1 + 240)) & 1) == 0 && !*(a1 + 512) && !*(a1 + 528))
  {
    if (a2 && !*a2)
    {
      v20 = *(a1 + 544);
      if (*(v20 + 16))
      {
        v21 = *(v20 + 24);
      }

      else
      {
        v21 = v20 + 17;
      }

      re::DynamicString::format("Failed to create valid texture data from %s", &v44, v21);
      if (v45)
      {
        v6 = v46[0];
      }

      else
      {
        v6 = &v45 + 1;
      }

      v7 = 5;
      goto LABEL_11;
    }

    return 0;
  }

  return v9;
}

uint64_t RETextureImportOperationCreateAsset(uint64_t a1, int a2, void *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  {
    return 0;
  }

  v6 = *(a1 + 24);
  v35 = 0uLL;
  v36 = 0;
  v7 = *(a1 + 160);
  if (v7)
  {
    v8 = v7 >> 1;
  }

  else
  {
    v8 = v7 >> 1;
  }

  if (v8)
  {
    (*(*v6 + 40))(buf, v6, a1 + 368);
    v9 = v35;
    v35 = *buf;
    *buf = v9;
    v10 = v36;
    v36 = *&buf[16];
    *&buf[16] = v10;
    re::AssetHandle::~AssetHandle(buf);
    if (*(a1 + 512))
    {
      if (*(&v35 + 1) && (v12 = atomic_load((*(&v35 + 1) + 896)), v12 == 2) && (*(*(&v35 + 1) + 256) & 1) == 0)
      {
        v26 = *re::assetsLogObjects(v11);
        v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
        if (v27)
        {
          if (*(a1 + 192))
          {
            v28 = *(a1 + 200);
          }

          else
          {
            v28 = a1 + 193;
          }

          v29 = v26;
          v30 = re::AssetHandle::assetInfo(&v35);
          if (v30[17])
          {
            v31 = v30[18];
          }

          else
          {
            v31 = v30 + 137;
          }

          *buf = 136315394;
          *&buf[4] = v28;
          *&buf[12] = 2080;
          *&buf[14] = v31;
          _os_log_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_DEFAULT, "RETextureImportOperationCreateAsset: ignoring m_textureAsset, asset is already loaded and is not mutated: %s, %s", buf, 0x16u);
        }

        if (*(a1 + 512))
        {
          v32 = *(a1 + 24);
          v33 = re::TextureAsset::assetType(v27);
          v34 = re::AssetManager::assetLoaderWithAssetType(v32, v33);
          (*(*v34 + 16))(v34, *(a1 + 512));
        }
      }

      else
      {
        (*(*v6 + 200))(v6, *(a1 + 512), &v35, 0, 0);
        re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((*(&v35 + 1) + 264), *(a1 + 360));
      }
    }

    *(a1 + 512) = 0;
  }

  else
  {
    TextureAsset = re::TextureAsset::makeTextureAsset((*(a1 + 544) + 184), a1 + 240, a1 + 256, *(*(a1 + 360) + 88), *(*(a1 + 360) + 56));
    v14 = TextureAsset;
    v15 = *(a1 + 128);
    if (v15)
    {
      v16 = v15 >> 1;
    }

    else
    {
      v16 = v15 >> 1;
    }

    if (v16)
    {
      v17 = *(a1 + 24);
      v18 = re::TextureAsset::assetType(TextureAsset);
      if (*(a1 + 128))
      {
        v19 = *(a1 + 136);
      }

      else
      {
        v19 = (a1 + 129);
      }

      re::AssetManager::createOrUpdateAssetEntryForNamedAssetDescriptor(v17, v14, v18, v19, 0, 0, 0, buf);
    }

    else
    {
      v20 = re::TextureAsset::assetType(TextureAsset);
      if (a2)
      {
        (*(*v6 + 424))(buf, v6, v14, v20, 1, 0, 0);
      }

      else
      {
        (*(*v6 + 424))(buf, v6, v14, v20, 0, 0, 0);
      }
    }

    v21 = v35;
    v35 = *buf;
    *buf = v21;
    v22 = v36;
    v36 = *&buf[16];
    *&buf[16] = v22;
    re::AssetHandle::~AssetHandle(buf);
    v23 = *(a1 + 360);
    if (v23)
    {
      re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((*(&v35 + 1) + 264), v23);
    }
  }

  if (*(&v35 + 1))
  {
    v5 = v35;
    v24 = (v35 + 8);
  }

  else
  {
    v5 = 0;
  }

  re::AssetHandle::~AssetHandle(&v35);
  return v5;
}