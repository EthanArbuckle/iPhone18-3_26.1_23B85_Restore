_anonymous_namespace_::RealityFileWithDescriptor *RERealityFileCreateByOpeningFileInBundle(_anonymous_namespace_ *a1, const char *a2, CFErrorRef *a3)
{
  v16 = 2;
  re::DynamicString::DynamicString(&v17, &v14);
  re::DynamicString::DynamicString(&v20, &v12);
  if (v12 && (v13 & 1) != 0)
  {
    (*(*v12 + 40))();
  }

  if (v14 && (v15 & 1) != 0)
  {
    (*(*v14 + 40))();
  }

  v9[0] = v16;
  re::DynamicString::DynamicString(v10, &v17);
  re::DynamicString::DynamicString(v11, &v20);
  if (v11[0])
  {
    if (v11[1])
    {
      (*(*v11[0] + 40))(v11[0]);
    }

    memset(v11, 0, sizeof(v11));
  }

  if (v10[0])
  {
    if (v10[1])
    {
      (*(*v10[0] + 40))(v10[0]);
    }

    memset(v10, 0, sizeof(v10));
  }

  if (v20)
  {
    if (BYTE8(v20))
    {
      (*(*v20 + 40))(v20, v21);
    }

    v21 = 0u;
    v20 = 0u;
  }

  if (v17 && (v18 & 1) != 0)
  {
    (*(*v17 + 40))(v17, v19);
  }

  return v7;
}

_anonymous_namespace_::RealityFileWithDescriptor *anonymous namespace::createFromRealityFileDescriptor(unsigned __int8 *a1, os_unfair_lock_s *a2, os_unfair_lock_s *a3, CFErrorRef *a4)
{
  re::RealityFileDescriptor::getURL(a1, a2, a3, v15);
  if (v15[0])
  {
    if (v17)
    {
      v6 = *&v18[7];
    }

    else
    {
      v6 = v18;
    }

    re::RealityFile::makeByOpeningFileAtURL(v6, v13);
    if (v13[0])
    {
      v8 = v14;
      v9 = re::globalAllocators(v7);
      v10 = (*(*v9[2] + 32))(v9[2], 104, 8);
    }

    else
    {
      if (a4)
      {
        v11 = v14;
        *a4 = v11;
        if (v11)
        {
          CFRetain(v11);
        }
      }

      v10 = 0;
    }

    re::Result<re::SharedPtr<re::RealityFileWriter::AssetInfo>,re::WrappedError>::~Result(v13);
  }

  else
  {
    v10 = 0;
    if (a4)
    {
      *a4 = CFErrorCreate(0, @"RERealityFileErrorDomain", 10, 0);
    }
  }

  if (v16 && (v17 & 1) != 0)
  {
    (*(*v16 + 40))();
  }

  return v10;
}

_anonymous_namespace_::RealityFileWithDescriptor *RERealityFileCreateWithFileInBundle(os_unfair_lock_s **a1, const char *a2, const char *a3, CFErrorRef *a4)
{
  v18 = 2;
  re::DynamicString::DynamicString(&v19, &v16);
  re::DynamicString::DynamicString(&v22, &v14);
  if (v14 && (v15 & 1) != 0)
  {
    (*(*v14 + 40))();
  }

  if (v16 && (v17 & 1) != 0)
  {
    (*(*v16 + 40))();
  }

  v11[0] = v18;
  re::DynamicString::DynamicString(v12, &v19);
  re::DynamicString::DynamicString(v13, &v22);
  if (v13[0])
  {
    if (v13[1])
    {
      (*(*v13[0] + 40))(v13[0]);
    }

    memset(v13, 0, sizeof(v13));
  }

  if (v12[0])
  {
    if (v12[1])
    {
      (*(*v12[0] + 40))(v12[0]);
    }

    memset(v12, 0, sizeof(v12));
  }

  if (v22)
  {
    if (BYTE8(v22))
    {
      (*(*v22 + 40))(v22, v23);
    }

    v23 = 0u;
    v22 = 0u;
  }

  if (v19 && (v20 & 1) != 0)
  {
    (*(*v19 + 40))(v19, v21);
  }

  return v9;
}

char **RERealityFileMountFileAtURL(uint64_t a1, const __CFURL *a2, char **a3)
{
  v4 = *(a1 + 1952);
  re::RealityFileRegistry::getOrMountRealityFile(v4, &v18, v16);
  if (v16[0])
  {
    v5 = v17;
    v15 = v17;
    if (v17)
    {
      v6 = v17 + 8;
    }

    re::RealityFileDescriptor::makeWithURL(&v18, v9);
    if (v12)
    {
      if (BYTE8(v12))
      {
        (*(*v12 + 40))();
      }

      v13 = 0u;
      v12 = 0u;
    }

    if (v10 && (v11 & 1) != 0)
    {
      (*(*v10 + 40))();
    }

    a3 = v14;
    if (v5)
    {
    }
  }

  else if (a3)
  {
    v7 = v17;
    *a3 = v7;
    if (v7)
    {
      CFRetain(v7);
    }

    a3 = 0;
  }

  re::Result<re::SharedPtr<re::RealityFileWriter::AssetInfo>,re::WrappedError>::~Result(v16);
  if (v18 && (v19 & 1) != 0)
  {
    (*(*v18 + 40))(v18, v20);
  }

  return a3;
}

uint64_t RERealityFileMountFileAtURLWithAliasName(uint64_t a1, const __CFURL *a2, const char *a3, CFErrorRef *a4)
{
  v36 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 1952);
  re::RealityFileRegistry::getOrMountRealityFile(v7, &v27, v25);
  if (v25[0])
  {
    v9 = v26;
    v24 = v26;
    if (v26)
    {
      v8 = v26 + 8;
    }

    v10 = *(a1 + 2008);
    re::DynamicString::DynamicString(v22, &v27);
    v11 = re::NamedFileRegistry::registerFileNameAlias(v10, v23, v22);
    if (*&v22[0])
    {
      if (BYTE8(v22[0]))
      {
        (*(**&v22[0] + 40))();
      }

      memset(v22, 0, sizeof(v22));
    }

    v12 = *&v23[0];
    if (*&v23[0])
    {
      if (BYTE8(v23[0]))
      {
        v12 = (*(**&v23[0] + 40))();
      }

      memset(v23, 0, sizeof(v23));
    }

    if (v11)
    {
      re::RealityFileDescriptor::makeWithNameAlias(v20, buf);
      if (v34)
      {
        if (BYTE8(v34))
        {
          (*(*v34 + 40))(v34, v35);
        }

        v35 = 0u;
        v34 = 0u;
      }

      if (*&v32[4])
      {
        if (v32[12])
        {
          (*(**&v32[4] + 40))(*&v32[4], v33);
        }

        v33 = 0u;
        *&v32[4] = 0u;
      }

      if (*&v20[0])
      {
        if (BYTE8(v20[0]))
        {
          (*(**&v20[0] + 40))();
        }

        memset(v20, 0, sizeof(v20));
      }

      v13 = v21;
      if (!v9)
      {
        goto LABEL_41;
      }

      goto LABEL_40;
    }

    if (!a4)
    {
      v13 = 0;
      if (!v9)
      {
        goto LABEL_41;
      }

      goto LABEL_40;
    }

    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v15 = CoreRELog::log;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      if (v28)
      {
        v16 = v30;
      }

      else
      {
        v16 = v29;
      }

      *buf = 136315394;
      *v32 = v16;
      *&v32[8] = 2080;
      *&v32[10] = a3;
      _os_log_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_DEFAULT, "failed to register RealityFile %s, alias %s is already registered", buf, 0x16u);
    }

    v13 = 0;
    *a4 = CFErrorCreate(0, @"RERealityFileErrorDomain", 20, 0);
    if (v9)
    {
LABEL_40:
    }
  }

  else
  {
    if (a4)
    {
      v14 = v26;
      *a4 = v14;
      if (v14)
      {
        CFRetain(v14);
      }
    }

    v13 = 0;
  }

LABEL_41:
  re::Result<re::SharedPtr<re::RealityFileWriter::AssetInfo>,re::WrappedError>::~Result(v25);
  if (v27 && (v28 & 1) != 0)
  {
    (*(*v27 + 40))(v27, v30, v17, v18);
  }

  return v13;
}

uint64_t RERealityFileMountFileInBundle(uint64_t a1, const char *a2, const char *a3, CFErrorRef *a4)
{
  v8 = *(a1 + 1952);
  v24[0] = 2;
  re::DynamicString::DynamicString(&v25, &v19);
  re::DynamicString::DynamicString(v27, &v22);
  if (v22 && (v23 & 1) != 0)
  {
    (*(*v22 + 40))();
  }

  if (v19 && (v20 & 1) != 0)
  {
    (*(*v19 + 40))();
  }

  re::RealityFileDescriptor::getURL(v24, *(a1 + 2008), *(a1 + 2016), &v19);
  if (v19)
  {
    re::DynamicString::DynamicString(&v22, &v20);
    re::RealityFileRegistry::getOrMountRealityFile(v8, &v22, v17);
    if (v17[0])
    {
      v10 = v18;
      v16 = v18;
      if (v18)
      {
        v11 = v18 + 8;
        v12 = v15;
      }

      else
      {
        v12 = v15;
      }
    }

    else
    {
      if (a4)
      {
        v13 = v18;
        *a4 = v13;
        if (v13)
        {
          CFRetain(v13);
        }
      }

      v12 = 0;
    }

    re::Result<re::SharedPtr<re::RealityFileWriter::AssetInfo>,re::WrappedError>::~Result(v17);
    if (v22 && (v23 & 1) != 0)
    {
      (*(*v22 + 40))();
    }
  }

  else
  {
    v12 = 0;
    *a4 = CFErrorCreate(0, @"RERealityFileErrorDomain", 10, 0);
  }

  if (v20 && (v21 & 1) != 0)
  {
    (*(*v20 + 40))();
  }

  if (v27[0])
  {
    if (v27[1])
    {
      (*(*v27[0] + 40))();
    }

    memset(v27, 0, sizeof(v27));
  }

  if (v25 && (v26 & 1) != 0)
  {
    (*(*v25 + 40))();
  }

  return v12;
}

uint64_t RERealityFileMountFileFromBuffer(uint64_t a1, void *a2, re::RealityFileDescriptor **a3)
{
  v4 = *(a1 + 1952);
  v18 = a2;
  re::RealityFileRegistry::mountRealityFileFromBuffer(v4, &v18, v16);
  if (v16[0])
  {
    v5 = v17;
    re::RealityFileDescriptor::makeWithMemoryFileID(v17, v11);
    re::RealityFileRegistry::tryGetRealityFile(v4, v5, &v10);
    v6 = v9;
    if (v10)
    {
    }

    if (v14)
    {
      if (BYTE8(v14))
      {
        (*(*v14 + 40))();
      }

      v15 = 0u;
      v14 = 0u;
    }

    if (v12 && (v13 & 1) != 0)
    {
      (*(*v12 + 40))();
    }
  }

  else
  {
    if (a3)
    {
      v7 = v17;
      *a3 = v7;
      if (v7)
      {
        CFRetain(v7);
      }
    }

    v6 = 0;
  }

  if ((v16[0] & 1) == 0)
  {
  }

  return v6;
}

void RERealityFileUnmountAllRealityFiles(uint64_t a1)
{
  v1 = *(a1 + 1952);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((v1 + 32));

  std::__list_imp<re::Pair<re::DynamicString,re::Pair<re::SharedPtr<re::RealityFile>,unsigned int,true>,true>>::clear((v1 + 8));
}

uint64_t RERealityFileUnmount(_BYTE *a1, uint64_t a2)
{
  v4 = *(a2 + 1952);
  v7[0] = a1[32];
  re::DynamicString::DynamicString(&v8, (a1 + 40));
  re::DynamicString::DynamicString(v10, (a1 + 72));
  v5 = re::RealityFileRegistry::unmountRealityFile(v4, v7, *(a2 + 2008), *(a2 + 2016));
  if (v10[0])
  {
    if (v10[1])
    {
      (*(*v10[0] + 40))();
    }

    memset(v10, 0, sizeof(v10));
  }

  if (v8 && (v9 & 1) != 0)
  {
    (*(*v8 + 40))();
  }

  if (v5)
  {
  }

  return v5;
}

uint64_t RERealityFileVerifyIntegrityAtUrl(__CFURL *a1, void *a2)
{
  if (v8[0])
  {
    v3 = v8[1];
  }

  else
  {
    v3 = (v8 + 1);
  }

  re::filePathWithURL(v3, &v9);
  if (v7 && (v8[0] & 1) != 0)
  {
    (*(*v7 + 40))();
  }

  if (v10)
  {
    v4 = *&v11[7];
  }

  else
  {
    v4 = v11;
  }

  re::RealityFile::verifyRealityFileIntegrityAtURL(v4, &v7);
  if (v7)
  {
    LOBYTE(a2) = v8[0];
  }

  else if (a2)
  {
    v5 = v8[0];
    *a2 = v5;
    if (v5)
    {
      CFRetain(v5);
    }

    LOBYTE(a2) = 0;
  }

  if ((v7 & 1) == 0)
  {
  }

  if (v9 && (v10 & 1) != 0)
  {
    (*(*v9 + 40))();
  }

  return a2 & 1;
}

const void *RERealityFileGetURL(_BYTE *a1)
{
  v1 = RERealityFileCopyURL(a1);
  CFAutorelease(v1);
  return v1;
}

uint64_t RERealityFileCopyURL(_BYTE *a1)
{
  LOBYTE(v7) = a1[32];
  re::DynamicString::DynamicString(&v8, (a1 + 40));
  re::DynamicString::DynamicString(v10, (a1 + 72));
  re::RealityFileDescriptor::getURL(&v7, 0, 0, v11);
  if (v10[0])
  {
    if (v10[1])
    {
      (*(*v10[0] + 40))(v10[0]);
    }

    memset(v10, 0, sizeof(v10));
  }

  if (v8 && (v9 & 1) != 0)
  {
    (*(*v8 + 40))(v8);
  }

  if (v11[0])
  {
    if (v13)
    {
      v2 = *&v14[7];
    }

    else
    {
      v2 = v14;
    }

    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{v2, v7}];
    v4 = [MEMORY[0x1E695DFF8] URLWithString:v3];
    v5 = [v4 copy];
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v3 = CoreRELog::log;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v7) = 0;
      _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Failed to get URL for RealityFile", &v7, 2u);
    }

    v5 = 0;
  }

  if (v12 && (v13 & 1) != 0)
  {
    (*(*v12 + 40))();
  }

  return v5;
}

const void *RERealityFileGetURLFromDescriptor(_BYTE *a1, uint64_t a2)
{
  v2 = RERealityFileCopyURLFromDescriptor(a1, a2);
  CFAutorelease(v2);
  return v2;
}

uint64_t RERealityFileCopyURLFromDescriptor(_BYTE *a1, uint64_t a2)
{
  LOBYTE(v9) = a1[32];
  re::DynamicString::DynamicString(&v10, (a1 + 40));
  re::DynamicString::DynamicString(v12, (a1 + 72));
  re::RealityFileDescriptor::getURL(&v9, *(a2 + 2008), *(a2 + 2016), v13);
  if (v12[0])
  {
    if (v12[1])
    {
      (*(*v12[0] + 40))(v12[0]);
    }

    memset(v12, 0, sizeof(v12));
  }

  if (v10 && (v11 & 1) != 0)
  {
    (*(*v10 + 40))(v10);
  }

  if (v13[0])
  {
    if (v15)
    {
      v4 = *&v16[7];
    }

    else
    {
      v4 = v16;
    }

    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{v4, v9}];
    v6 = [MEMORY[0x1E695DFF8] URLWithString:v5];
    v7 = [v6 copy];
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v9) = 0;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Failed to get URL for RealityFile", &v9, 2u);
    }

    v7 = 0;
  }

  if (v14 && (v15 & 1) != 0)
  {
    (*(*v14 + 40))();
  }

  return v7;
}

uint64_t RERealityFileTryCopyURLFromDescriptor(_BYTE *a1, uint64_t a2, uint64_t *a3)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v13[0] = a1[32];
  re::DynamicString::DynamicString(&v14, (a1 + 40));
  re::DynamicString::DynamicString(v16, (a1 + 72));
  re::RealityFileDescriptor::getURL(v13, *(a2 + 2008), *(a2 + 2016), v17);
  if (v16[0])
  {
    if (v16[1])
    {
      (*(*v16[0] + 40))();
    }

    memset(v16, 0, sizeof(v16));
  }

  if (v14 && (v15 & 1) != 0)
  {
    (*(*v14 + 40))();
  }

  if (v17[0])
  {
    if (v19)
    {
      v6 = v21;
    }

    else
    {
      v6 = v20;
    }

    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v6];
    v8 = [MEMORY[0x1E695DFF8] URLWithString:v7];
    v9 = [v8 copy];
  }

  else
  {
    if (!a3)
    {
      v9 = 0;
      goto LABEL_19;
    }

    v22 = *MEMORY[0x1E696A578];
    if (v19)
    {
      v10 = v21;
    }

    else
    {
      v10 = v20;
    }

    v11 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:4];
    v23[0] = v11;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];

    [MEMORY[0x1E696ABC0] errorWithDomain:@"RERealityFileErrorDomain" code:7 userInfo:v7];
    *a3 = v9 = 0;
  }

LABEL_19:
  if (v18 && (v19 & 1) != 0)
  {
    (*(*v18 + 40))();
  }

  return v9;
}

uint64_t RERealityFileGetAssetDescriptorCount(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = (v1 + 8);
    v3 = *(v1 + 112);

    if (v3)
    {
      return *(v3 + 200);
    }
  }

  else
  {
    v3 = MEMORY[0x70];
    if (MEMORY[0x70])
    {
      return *(v3 + 200);
    }
  }

  return 0;
}

uint64_t RERealityFileGetCertifiedFreeOfChangeSceneActions(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    v3 = MEMORY[0x70];
    if (MEMORY[0x70])
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = 0;
    return v4 & 1;
  }

  v2 = (v1 + 8);
  v3 = *(v1 + 112);

  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = *(v3 + 104);
  return v4 & 1;
}

uint64_t RERealityFileGetMajorVersionNumber(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = (v1 + 8);
    v3 = *(v1 + 104);
  }

  else
  {
    v3 = MEMORY[0x68];
  }

  return *(v3 + 96);
}

uint64_t RERealityFileGetTargetPlatform(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = (v1 + 8);
    v3 = *(v1 + 104);
  }

  else
  {
    v3 = MEMORY[0x68];
  }

  v4 = *(v3 + 152);
  if (v4 - 1 >= 5)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

uint64_t RERealityFileGetOriginPlatform(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = (v1 + 8);
    v3 = *(v1 + 104);
  }

  else
  {
    v3 = MEMORY[0x68];
  }

  v4 = *(v3 + 88);
  if (v4 - 1 >= 5)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

CFStringRef RERealityFileCopyMetadataString(_anonymous_namespace_ *a1, const char *a2)
{
  v3 = *(a1 + 3);
  if (v3)
  {
    v4 = (v3 + 8);
    v5 = *(v3 + 104);
  }

  else
  {
    v5 = MEMORY[0x68];
  }

  v11 = 0;
  v12 = &str_67;
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v11 >> 31) ^ (v11 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v11 >> 31) ^ (v11 >> 1))) >> 27));
  v7 = re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v5 + 104, &v11, v6 ^ (v6 >> 31), v13);
  if (v14 == 0x7FFFFFFF)
  {
    if (v11)
    {
      if (v11)
      {
      }
    }

    return 0;
  }

  else
  {
    v9 = *(v5 + 120) + 56 * v14 + 24;
    if (v11)
    {
      if (v11)
      {
      }
    }

    if (*(v9 + 8))
    {
      v10 = *(v9 + 16);
    }

    else
    {
      v10 = (v9 + 9);
    }

    return CFStringCreateWithCString(0, v10, 0x8000100u);
  }
}

uint64_t RERealityFileGetAssetDescriptorAtIndex(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    v4 = (v3 + 8);
    v5 = *(v3 + 112);

    if (!v5)
    {
      return 0;
    }
  }

  else
  {
    v5 = MEMORY[0x70];
    if (!MEMORY[0x70])
    {
      return 0;
    }
  }

  if (*(v5 + 200) > a2)
  {
    return *(*(v5 + 216) + 8 * a2);
  }

  return 0;
}

uint64_t RERealityFileGetAssetDescriptorWithFilename(uint64_t a1, char *a2)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    v4 = (v3 + 8);
    v5 = *(v3 + 112);
  }

  else
  {
    v5 = MEMORY[0x70];
  }

  re::AssetMap::assetDescriptorWithFileName(v5, a2, &v8);
  v6 = v8;
  if (v8)
  {
  }

  return v6;
}

uint64_t RERealityFileGetAssetDescriptorWithLabel(uint64_t a1, char *a2)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  AssetDescriptorWithAssetName = re::RealityFile::findAssetDescriptorWithAssetName(v3, a2);
  v6 = AssetDescriptorWithAssetName;
  if (AssetDescriptorWithAssetName)
  {
    v7 = (AssetDescriptorWithAssetName + 8);
  }

  if (v3)
  {
  }

  if (v6)
  {
  }

  return v6;
}

uint64_t realityFileCreateAssetDescriptorWithEntryNameAndPostLoad(_BYTE *a1, char *a2, char a3, uint64_t a4, re::AssetManager *a5, CFErrorRef *a6)
{
  LOBYTE(v17) = a1[32];
  re::DynamicString::DynamicString(&v18, (a1 + 40));
  re::DynamicString::DynamicString(&v21, (a1 + 72));
  if (v21)
  {
    if (BYTE8(v21))
    {
      (*(*v21 + 40))();
    }

    v22 = 0u;
    v21 = 0u;
  }

  if (v18 && (v19 & 1) != 0)
  {
    (*(*v18 + 40))();
  }

  if (v27[0])
  {
    re::DynamicString::DynamicString(&v17, v28);
    re::DynamicArray<BOOL>::DynamicArray(&v20, v29);
    re::DynamicArray<BOOL>::DynamicArray(v23, v30);
    v12 = re::DynamicString::DynamicString(v26, &v31);
    re::make::shared::object<re::Shareable<re::AssetLoadDescriptor>>(v12, &v16);
    v13 = v16;
    re::DynamicString::operator=((v16 + 24), &v17);
    re::DynamicArray<BOOL>::operator=(v13 + 56, &v20);
    re::DynamicArray<BOOL>::operator=(v13 + 96, v23);
    re::DynamicString::operator=((v13 + 136), v26);
    v14 = v16;
    if (v26[0])
    {
      if (v26[1])
      {
        (*(*v26[0] + 40))();
      }

      memset(v26, 0, sizeof(v26));
    }

    if (v23[0])
    {
      if (v25)
      {
        (*(*v23[0] + 40))();
      }

      v25 = 0;
      memset(v23, 0, sizeof(v23));
      ++v24;
    }

    if (v20)
    {
      if (*(&v22 + 1))
      {
        (*(*v20 + 40))();
      }

      *(&v22 + 1) = 0;
      v21 = 0uLL;
      v20 = 0;
      LODWORD(v22) = v22 + 1;
    }

    if (v17 && (v18 & 1) != 0)
    {
      (*(*v17 + 40))();
    }
  }

  else
  {
    v14 = 0;
    if (a6 && !v28[0])
    {
      v14 = 0;
      *a6 = CFErrorCreate(0, @"RERealityFileErrorDomain", 9, 0);
    }
  }

  re::Optional<re::AssetLoadDescriptor>::~Optional(v27);
  return v14;
}

uint64_t *anonymous namespace::makeAssetLoadDescriptor(_anonymous_namespace_ *this, const re::RealityFileDescriptor *a2, char *a3, char a4, uint64_t a5, re::AssetManager *a6)
{
  v55 = *MEMORY[0x1E69E9840];
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v12 = re::DynamicString::setCapacity(&v35, 0);
  *(&v39 + 1) = 0;
  v40 = 0uLL;
  v13 = re::DynamicString::setCapacity(&v39, 0);
  *(&v41 + 1) = 0;
  v42 = 0uLL;
  re::DynamicString::setCapacity(&v41, 0);
  v43 = 0;
  v44 = 1;
  v34[0] = *a2;
  re::DynamicString::operator=(&v35, (a2 + 8));
  re::DynamicString::operator=(&v39, (a2 + 40));
  v14 = strlen(a3);
  *buf = a3;
  *&buf[8] = v14;
  re::DynamicString::operator=(&v41, buf);
  v43 = a4;
  v44 = a5;
  if (!a3 || (v16 = *(a6 + 226), v17 = re::path::ext(a3, v15), *v17 != 46) || (v18 = (v17 + 1), !v17[1]))
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v29 = CoreRELog::log;
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 136315138;
    *&buf[4] = a3;
    v31 = "Can't parse a file extension from the archive entry name %s.";
    goto LABEL_30;
  }

  v19 = re::internal::AssetTypeRegistry::assetTypeWithCompiledExtension(v16, v18);
  if (!v19)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v29 = CoreRELog::log;
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 136315138;
    *&buf[4] = v18;
    v31 = "Can't find a registered asset type for the file extension %s.";
LABEL_30:
    _os_log_error_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_ERROR, v31, buf, 0xCu);
LABEL_12:

    *this = 0;
    *(this + 2) = 0;
    goto LABEL_13;
  }

  v20 = *v19;
  re::RealityFileAssetLoadDescriptorFactory::make(v34, &v32, buf);
  if (v32 && (v33 & 1) != 0)
  {
    (*(*v32 + 40))();
  }

  v21 = *buf;
  v22 = *&buf[8];
  *buf = 0;
  v23 = *&buf[16];
  v24 = v46;
  *(this + 3) = v47;
  v25 = v50;
  *(this + 72) = v49;
  v46 = 0u;
  *&buf[8] = 0u;
  ++v48;
  v27 = v53;
  v26 = v54;
  v28 = v52;
  *this = 1;
  *(this + 3) = v23;
  *(this + 4) = v24;
  *(this + 1) = v21;
  *(this + 2) = v22;
  *(this + 5) = *(&v24 + 1);
  v47 = 0u;
  *(this + 16) = 1;
  v49 = 0u;
  v50 = 0u;
  *(this + 88) = v25;
  *(this + 26) = 1;
  *(this + 7) = v51;
  *(this + 17) = v27;
  *(this + 18) = v26;
  *(this + 16) = v28;
LABEL_13:
  if (v41)
  {
    if (BYTE8(v41))
    {
      (*(*v41 + 40))();
    }

    v42 = 0u;
    v41 = 0u;
  }

  if (v39)
  {
    if (BYTE8(v39))
    {
      (*(*v39 + 40))();
    }

    v40 = 0u;
    v39 = 0u;
  }

  result = v35;
  if (v35)
  {
    if (v36)
    {
      return (*(*v35 + 40))();
    }
  }

  return result;
}

uint64_t RERealityFileCreateAssetDescriptorWithEntryNameAndTextureDownsampleHint(_BYTE *a1, char *a2, uint64_t a3, re::AssetManager *a4, CFErrorRef *a5)
{
  v7 = a3;
  if (!a3)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v10 = CoreRELog::log;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEFAULT, "textureDownsampleFactorHint should be >= 1. Setting to 1.", v12, 2u);
    }

    v7 = 1;
  }

  return realityFileCreateAssetDescriptorWithEntryNameAndPostLoad(a1, a2, 0, v7, a4, a5);
}

uint64_t RERealityFileCreateAssetDescriptorFromLabel(uint64_t a1, char *a2, re::AssetManager *a3, CFErrorRef *a4)
{
  v8 = *(a1 + 24);
  if (!v8)
  {
    AssetDescriptorWithAssetName = re::RealityFile::findAssetDescriptorWithAssetName(0, a2);
    if (AssetDescriptorWithAssetName)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v9 = (v8 + 8);
  AssetDescriptorWithAssetName = re::RealityFile::findAssetDescriptorWithAssetName(v8, a2);

  if (!AssetDescriptorWithAssetName)
  {
    return 0;
  }

LABEL_3:
  v11 = (*(*AssetDescriptorWithAssetName + 40))(AssetDescriptorWithAssetName);
  LOBYTE(v17) = *(a1 + 32);
  re::DynamicString::DynamicString(&v18, (a1 + 40));
  re::DynamicString::DynamicString(&v21, (a1 + 72));
  if (v21)
  {
    if (BYTE8(v21))
    {
      (*(*v21 + 40))();
    }

    v22 = 0u;
    v21 = 0u;
  }

  if (v18 && (v19 & 1) != 0)
  {
    (*(*v18 + 40))();
  }

  if (v27[0])
  {
    re::DynamicString::DynamicString(&v17, v28);
    re::DynamicArray<BOOL>::DynamicArray(&v20, v29);
    re::DynamicArray<BOOL>::DynamicArray(v23, v30);
    v12 = re::DynamicString::DynamicString(v26, &v31);
    re::make::shared::object<re::Shareable<re::AssetLoadDescriptor>>(v12, &v16);
    v13 = v16;
    re::DynamicString::operator=((v16 + 24), &v17);
    re::DynamicArray<BOOL>::operator=(v13 + 56, &v20);
    re::DynamicArray<BOOL>::operator=(v13 + 96, v23);
    re::DynamicString::operator=((v13 + 136), v26);
    v14 = v16;
    if (v26[0])
    {
      if (v26[1])
      {
        (*(*v26[0] + 40))();
      }

      memset(v26, 0, sizeof(v26));
    }

    if (v23[0])
    {
      if (v25)
      {
        (*(*v23[0] + 40))();
      }

      v25 = 0;
      memset(v23, 0, sizeof(v23));
      ++v24;
    }

    if (v20)
    {
      if (*(&v22 + 1))
      {
        (*(*v20 + 40))();
      }

      *(&v22 + 1) = 0;
      v21 = 0uLL;
      v20 = 0;
      LODWORD(v22) = v22 + 1;
    }

    if (v17 && (v18 & 1) != 0)
    {
      (*(*v17 + 40))();
    }
  }

  else
  {
    v14 = 0;
    if (a4 && !v28[0])
    {
      v14 = 0;
      *a4 = CFErrorCreate(0, @"RERealityFileErrorDomain", 9, 0);
    }
  }

  re::Optional<re::AssetLoadDescriptor>::~Optional(v27);
  return v14;
}

void *RERealityFileCreateDataByLoading(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = (v5 + 8);
    re::RealityFile::newDataByLoading(v5, a2, v11);
  }

  else
  {
    re::RealityFile::newDataByLoading(0, a2, v11);
  }

  if (v11[0])
  {
    a3 = v12;
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v7 = CoreRELog::log;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = re::WrappedError::localizedDescription(&v12);
      *buf = 136315138;
      v14 = v10;
      _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
    }

    if (a3)
    {
      v8 = v12;
      *a3 = v8;
      if (v8)
      {
        CFRetain(v8);
      }

      a3 = 0;
    }
  }

  if ((v11[0] & 1) == 0)
  {
  }

  return a3;
}

uint64_t RERealityFileCreateAssetWithFilename(_BYTE *a1, os_unfair_lock_s *a2, char *a3, CFErrorRef *a4)
{
  LOBYTE(v12) = a1[32];
  re::DynamicString::DynamicString(&v13, (a1 + 40));
  re::DynamicString::DynamicString(v15, (a1 + 72));
  if (v15[0])
  {
    if (v15[1])
    {
      (*(*v15[0] + 40))();
    }

    memset(v15, 0, sizeof(v15));
  }

  if (v13 && (v14 & 1) != 0)
  {
    (*(*v13 + 40))();
  }

  v8 = v16[0];
  if ((v16[0] & 1) == 0 && !v17[0])
  {
    v9 = 0;
    *a4 = CFErrorCreate(0, @"RERealityFileErrorDomain", 9, 0);
    if (!v8)
    {
      return v9;
    }

    goto LABEL_16;
  }

  re::AssetHandle::AssetHandle(&v12, v17);
  if (v13)
  {
    v9 = v12;
    v10 = (v12 + 8);
  }

  else
  {
    v9 = 0;
  }

  re::AssetHandle::~AssetHandle(&v12);
  if (v8)
  {
LABEL_16:
    re::AssetHandle::~AssetHandle(v17);
  }

  return v9;
}

_BYTE *anonymous namespace::makeAssetHandle(_anonymous_namespace_ *this, const re::RealityFileDescriptor *a2, char *a3, os_unfair_lock_s *a4)
{
  if (v22[0])
  {
    v12 = v23;
    v23 = 0;
    v6 = v25;
    v13 = v24;
    v24 = 0u;
    v25 = 0u;
    v14 = v6;
    v15 = v26;
    v26 = 0u;
    v16 = 1;
    v17 = v28;
    v28 = 0u;
    v18 = v29;
    v29 = 0u;
    ++v27;
    ++v30;
    v19 = 1;
    *v20 = v31;
    v31 = 0u;
    v21 = v33;
    v33 = 0uLL;
    *&v20[16] = v32;
    v32 = 0;
    os_unfair_lock_lock(a4 + 32);
    re::AssetManager::assetHandle_assetTablesLocked(v11, a4, &v12);
    os_unfair_lock_unlock(a4 + 32);
    re::AssetHandle::AssetHandle(&v9, v11);
    *this = 1;
    *(this + 8) = v9;
    v9 = 0u;
    *(this + 3) = v10;
    v10 = 0;
    re::AssetHandle::~AssetHandle(&v9);
    re::AssetHandle::~AssetHandle(v11);
    if (*&v20[8])
    {
      if (v20[16])
      {
        (*(**&v20[8] + 40))();
      }

      *&v20[8] = 0u;
      v21 = 0u;
    }

    if (*(&v17 + 1))
    {
      if (*v20)
      {
        (*(**(&v17 + 1) + 40))();
      }

      *v20 = 0;
      v18 = 0uLL;
      *(&v17 + 1) = 0;
      ++v19;
    }

    if (*(&v14 + 1))
    {
      if (v17)
      {
        (*(**(&v14 + 1) + 40))();
      }

      *&v17 = 0;
      v15 = 0uLL;
      *(&v14 + 1) = 0;
      ++v16;
    }

    if (v12 && (v13 & 1) != 0)
    {
      (*(*v12 + 40))();
    }
  }

  else
  {
    v7 = v23;
    *this = 0;
    *(this + 2) = v7;
  }

  return re::Optional<re::AssetLoadDescriptor>::~Optional(v22);
}

uint64_t *RERealityFileCreateLoadedTextureAsset(_BYTE *a1, uint64_t a2, void *a3, const char *a4, uint64_t *a5)
{
  v73[1] = *MEMORY[0x1E69E9840];
  v68[1] = 0;
  v68[2] = 0;
  v68[0] = *(a2 + 1808);
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v10 = re::DynamicString::setCapacity(&v58, 0);
  *(&v62 + 1) = 0;
  v63 = 0uLL;
  v11 = re::DynamicString::setCapacity(&v62, 0);
  *(&v64 + 1) = 0;
  v65 = 0uLL;
  re::DynamicString::setCapacity(&v64, 0);
  v66 = 0;
  v67 = 1;
  LOBYTE(v44) = a1[32];
  re::DynamicString::DynamicString(&v45, (a1 + 40));
  re::DynamicString::DynamicString(&v48, (a1 + 72));
  v57[0] = v44;
  re::DynamicString::operator=(&v58, &v45);
  re::DynamicString::operator=(&v62, &v48);
  if (v48)
  {
    if (BYTE8(v48))
    {
      (*(*v48 + 40))();
    }

    v49 = 0u;
    v48 = 0u;
  }

  if (v45 && (v46 & 1) != 0)
  {
    (*(*v45 + 40))();
  }

  v44 = a4;
  v45 = strlen(a4);
  v12 = re::DynamicString::operator=(&v64, &v44);
  v13 = re::TextureAsset::assetType(v12);
  v14 = *v13;
  re::RealityFileAssetLoadDescriptorFactory::make(v57, &v38, &v44);
  if (v38 && (v39 & 1) != 0)
  {
    (*(*v38 + 40))();
  }

  os_unfair_lock_lock((a2 + 128));
  re::AssetManager::assetHandle_assetTablesLocked(v43, a2, &v44);
  os_unfair_lock_unlock((a2 + 128));
  v42 = a3;
  v15 = re::TextureAsset::assetType(v42);
  v16 = *(re::AssetHandle::assetInfo(v43) + 10);
  if (v16 == -1)
  {
    v16 = 0;
  }

  v36[0] = 1;
  v37 = v16;
  re::AssetUtilities::loadCompiledAssetFromData(&v42, v68, v15, 0, 0, v36, &v38);
  if (v38)
  {
    v17 = v39;
    if (*(v39 + 82) == 1)
    {
      re::AssetHandle::AssetHandle(v35, v43);
      re::AssetManager::assignCompiledAssetDataToAssetHandle(a2, v17, v35, 0);
      re::AssetHandle::~AssetHandle(v35);
      a5 = v43[0];
      if (v43[0])
      {
        v18 = (v43[0] + 8);
      }

      goto LABEL_40;
    }

    re::AssetHandle::AssetHandle(v34, v43);
    re::AssetManager::assignCompiledAssetDataToAssetHandle(a2, v17, v34, 0);
    re::AssetHandle::~AssetHandle(v34);
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((v43[1] + 264), v40);
    v23 = v17[4];
    v24 = v23 >> 1;
    if ((v23 & 1) == 0)
    {
      v24 = v23 >> 1;
    }

    if (v24 > 6)
    {
      v26 = (v17 + 33);
      v25 = v17[5];
      if (v23)
      {
        v26 = v17[5];
      }

      if (*v26 == 1702064993 && *(v26 + 3) == 796095589)
      {
        v25 = v26 + 7;
        goto LABEL_39;
      }

      if (v23)
      {
LABEL_39:
        v28 = re::AssetHandle::legacy_assetPath(v43);
        re::AssetManager::assetHandleWithParentAssetPath(a2, v25, v28, 0, buf);
        a5 = *buf;
        v29 = (*buf + 8);
        re::AssetHandle::~AssetHandle(buf);
        goto LABEL_40;
      }
    }

    else if (v23)
    {
      v25 = v17[5];
      goto LABEL_39;
    }

    v25 = v17 + 33;
    goto LABEL_39;
  }

  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v19 = CoreRELog::log;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v31 = re::AssetHandle::assetInfo(v43);
    if (v31[17])
    {
      v32 = v31[18];
    }

    else
    {
      v32 = v31 + 137;
    }

    if (v40)
    {
      v33 = v41;
    }

    else
    {
      v33 = &v40 + 1;
    }

    *buf = 136315394;
    *&buf[4] = v32;
    v70 = 2080;
    v71 = v33;
    _os_log_error_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_ERROR, "Error loading compiled asset '%s': %s", buf, 0x16u);
  }

  if (a5)
  {
    v72 = *MEMORY[0x1E696A578];
    if (v40)
    {
      v20 = v41;
    }

    else
    {
      v20 = &v40 + 1;
    }

    v21 = [MEMORY[0x1E696AEC0] stringWithCString:v20 encoding:4];
    v73[0] = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v73 forKeys:&v72 count:1];

    *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"RERealityFileErrorDomain" code:7 userInfo:v22];

    a5 = 0;
  }

LABEL_40:
  re::Result<re::AssetUtilities::CompiledAssetLoadResult,re::DynamicString>::~Result(&v38);

  re::AssetHandle::~AssetHandle(v43);
  if (v55)
  {
    if (BYTE8(v55))
    {
      (*(*v55 + 40))();
    }

    v55 = 0u;
    v56 = 0u;
  }

  if (v50)
  {
    if (v54)
    {
      (*(*v50 + 40))();
    }

    v54 = 0;
    v51 = 0;
    v52 = 0;
    v50 = 0;
    ++v53;
  }

  if (v47)
  {
    if (*(&v49 + 1))
    {
      (*(*v47 + 40))();
    }

    *(&v49 + 1) = 0;
    v48 = 0uLL;
    v47 = 0;
    LODWORD(v49) = v49 + 1;
  }

  if (v44 && (v45 & 1) != 0)
  {
    (*(*v44 + 40))();
  }

  if (v64)
  {
    if (BYTE8(v64))
    {
      (*(*v64 + 40))();
    }

    v65 = 0u;
    v64 = 0u;
  }

  if (v62)
  {
    if (BYTE8(v62))
    {
      (*(*v62 + 40))();
    }

    v63 = 0u;
    v62 = 0u;
  }

  if (v58 && (v59 & 1) != 0)
  {
    (*(*v58 + 40))();
  }

  return a5;
}

uint64_t RERealityFilePrewarmShaderGraphMaterialsCache(uint64_t a1, uint64_t this, CFTypeRef *a3)
{
  v111 = *MEMORY[0x1E69E9840];
  v107 = a3;
  if (!a1)
  {
    return 0;
  }

  v4 = *(a1 + 24);
  v106 = v4;
  if (v4)
  {
    v5 = (v4 + 8);
  }

  if (!this)
  {
    goto LABEL_135;
  }

  v105[1] = 0;
  v105[2] = 0;
  v105[0] = *(this + 1808);
  re::AssetManager::makeLoadRequest(this, &v104);
  re::AssetLoadRequest::setShouldLoadAndWaitForResourceSharingClients(v104, 1, 1, v102);
  if ((v102[0] & 1) == 0)
  {
    if (v107)
    {
      v62 = v103;
      *v107 = v62;
      if (*v107)
      {
        CFRetain(*v107);
      }
    }

    this = 0;
    goto LABEL_130;
  }

  v6 = *(v106 + 112);
  if (!v6)
  {
    this = 1;
    goto LABEL_130;
  }

  v101 = 0;
  v98[1] = 0;
  v99 = 0;
  v97 = 0;
  v98[0] = 0;
  v100 = 0;
  v94[1] = 0;
  v95 = 0;
  v94[0] = 0;
  v96 = 0;
  v7 = *(v6 + 200);
  if (!v7)
  {
LABEL_103:
    this = 1;
    goto LABEL_129;
  }

  v8 = *(v6 + 216);
  v9 = 8 * v7;
  do
  {
    v10 = (*(**v8 + 40))();
    v11 = strlen(v10);
    if (v11 >= 0x14)
    {
      if (*(v11 + v10 - 20) == 0x656C69706D6F632ELL && *(v11 + v10 - 12) == 0x6772656461687364 && *(v11 + v10 - 4) == 1752195442)
      {
        v16 = v98;
        goto LABEL_29;
      }
    }

    else if (v11 < 0x11)
    {
      goto LABEL_34;
    }

    if (*(v11 + v10 - 17) != 0x656C69706D6F632ELL || *(v11 + v10 - 9) != 0x6169726574616D64 || *(v11 + v10 - 1) != 108)
    {
      goto LABEL_34;
    }

    v16 = v94;
LABEL_29:
    v17 = v16[2];
    if (v17 >= v16[1])
    {
      v11 = re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::growCapacity(v16, v17 + 1);
      v17 = v16[2];
    }

    v18 = *v8;
    *(v16[4] + 8 * v17) = *v8;
    if (v18)
    {
      v11 = (v18 + 8);
      v17 = v16[2];
    }

    v16[2] = v17 + 1;
    ++*(v16 + 6);
LABEL_34:
    ++v8;
    v9 -= 8;
  }

  while (v9);
  if (!v95)
  {
    goto LABEL_103;
  }

  v93[0] = &v107;
  v93[1] = &v106;
  v93[2] = v105;
  v91 = 0;
  v89 = 0u;
  v90 = 0u;
  v92 = 0x7FFFFFFFLL;
  if (v99)
  {
    v19 = v101;
    v76 = &v101[v99];
    do
    {
      v20 = *v19;
      v21 = re::ShaderGraphAsset::assetType(v11);
      RERealityFilePrewarmShaderGraphMaterialsCache::$_0::operator()(&v84, v93, v20, v21);
      if (v84 != 1)
      {
        re::Result<re::AssetUtilities::CompiledAssetLoadResult,re::DynamicString>::~Result(&v84);
        this = 0;
        goto LABEL_128;
      }

      v23 = v85;
      v24 = re::ShaderGraphAsset::assetType(v22);
      (*(*this + 424))(&v82, this, v23, v24, 0, 0, 0);
      v25 = (*(**v19 + 40))();
      v26 = re::Hash<re::DynamicString>::operator()(&v80, v25);
      v27 = v26;
      if (v89)
      {
        v28 = v26 % DWORD2(v90);
        v29 = *(*(&v89 + 1) + 4 * v28);
        if (v29 != 0x7FFFFFFF)
        {
          v30 = v90;
          do
          {
            v31 = v30 + 72 * v29;
            v32 = *(v31 + 16);
            v33 = *(v31 + 24);
            v34 = v31 + 17;
            v35 = ((v32 & 1) != 0 ? v33 : v34);
            if (!strcmp(v35, v25))
            {
              goto LABEL_50;
            }

            v36 = *(v30 + 72 * v29);
            v29 = v36 & 0x7FFFFFFF;
          }

          while ((v36 & 0x7FFFFFFF) != 0x7FFFFFFF);
        }
      }

      else
      {
        LODWORD(v28) = 0;
      }

      v37 = re::HashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(&v89, v28, v27);
      *(v37 + 40) = v82;
      v82 = 0uLL;
      *(v37 + 56) = v83;
      v83 = 0;
      ++HIDWORD(v92);
LABEL_50:
      re::AssetHandle::~AssetHandle(&v82);
      v11 = re::Result<re::AssetUtilities::CompiledAssetLoadResult,re::DynamicString>::~Result(&v84);
      ++v19;
    }

    while (v19 != v76);
  }

  v88 = 0;
  v85 = 0;
  v86 = 0;
  v84 = 0;
  v87 = 0;
  v38 = *(this + 1808);
  *&v82 = re::MaterialAsset::assetType(v11);
  v39 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v38, &v82);
  v40 = (*(**v39 + 128))(*v39);
  if (v95)
  {
    v41 = v97;
    v75 = *v39;
    v77 = &v97[v95];
    while (1)
    {
      v42 = *v41;
      v43 = re::MaterialAsset::assetType(v40);
      RERealityFilePrewarmShaderGraphMaterialsCache::$_0::operator()(&v82, v93, v42, v43);
      if (v82 != 1)
      {
        break;
      }

      v44 = *(&v82 + 1);
      v45 = *(*(&v82 + 1) + 392);
      if (v45)
      {
        v46 = 0;
        v47 = *(*(&v82 + 1) + 408);
        v48 = v47 + 272 * v45;
        while (1)
        {
          while (1)
          {
            re::AssetHandle::serializationString((v47 + 72), &v80);
            v49 = *(&v80 + 1) >> 1;
            if ((BYTE8(v80) & 1) == 0)
            {
              v49 = BYTE8(v80) >> 1;
            }

            if (v49 >= 0x14)
            {
              v50 = (BYTE8(v80) & 1) != 0 ? v81 : (&v80 + 9);
              v51 = v50 + v49;
              v52 = *(v51 - 20);
              v53 = *(v51 - 12);
              v54 = *(v51 - 1);
              v55 = v52 == 0x656C69706D6F632ELL && v53 == 0x6772656461687364;
              if (v55 && v54 == 1752195442)
              {
                break;
              }
            }

            if (v80)
            {
              v57 = (BYTE8(v80) & 1) == 0;
            }

            else
            {
              v57 = 1;
            }

            if (!v57)
            {
              (*(*v80 + 40))();
            }

            v47 += 272;
            if (v47 == v48)
            {
              if ((v46 & 1) == 0)
              {
                goto LABEL_95;
              }

LABEL_83:
              re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((v44 + 64));
              re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((v44 + 112));
              re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((v44 + 160));
              re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((v44 + 208));
              re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((v44 + 256));
              re::DynamicString::operator+((v44 + 8), " (pruned ", &v78);
              v59 = (*(**v41 + 40))();
              re::DynamicString::operator+(&v78, v59, buf);
              re::DynamicString::operator+(buf, ")", &v80);
              re::DynamicString::operator=((v44 + 8), &v80);
              if (v80)
              {
                if (BYTE8(v80))
                {
                  (*(*v80 + 40))();
                }

                v80 = 0u;
                v81 = 0u;
              }

              if (*buf)
              {
                if (buf[8])
                {
                  (*(**buf + 40))();
                }

                memset(buf, 0, 32);
              }

              v60 = v78;
              if (v78 && (v79 & 1) != 0)
              {
                v60 = (*(*v78 + 40))();
              }

              v61 = re::MaterialAsset::assetType(v60);
              (*(*this + 424))(&v80, this, v44, v61, 0, 0, 0);
              re::AssetLoadRequest::addAsset(v104, &v80);
              re::DynamicArray<re::AssetHandle>::add(&v84, &v80);
              re::AssetHandle::~AssetHandle(&v80);
              goto LABEL_96;
            }
          }

          v58 = re::HashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(&v89, &v80);
          if (!v58)
          {
            break;
          }

          re::AssetHandle::operator=(v47 + 72, v58);
          if (v80 && (BYTE8(v80) & 1) != 0)
          {
            (*(*v80 + 40))();
          }

          v47 += 272;
          v46 = 1;
          if (v47 == v48)
          {
            goto LABEL_83;
          }
        }

        if (CoreRELog::onceToken != -1)
        {
          dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
        }

        v63 = CoreRELog::log;
        if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          v72 = (*(**v41 + 40))();
          if (*(v44 + 16))
          {
            v73 = *(v44 + 24);
          }

          else
          {
            v73 = v44 + 17;
          }

          if (BYTE8(v80))
          {
            v74 = v81;
          }

          else
          {
            v74 = &v80 + 9;
          }

          *buf = 136315650;
          *&buf[4] = v72;
          *&buf[12] = 2080;
          *&buf[14] = v73;
          *&buf[22] = 2080;
          *&buf[24] = v74;
          _os_log_error_impl(&dword_1E1C61000, v63, OS_LOG_TYPE_ERROR, "RERealityFilePrewarmShaderGraphMaterialsCache '%s' (%s): \tlink: %s - ShaderGraphAsset not found!", buf, 0x20u);
        }

        v64 = (*(**v41 + 40))();
        if (*(v44 + 16))
        {
          v65 = *(v44 + 24);
        }

        else
        {
          v65 = v44 + 17;
        }

        if (BYTE8(v80))
        {
          v66 = v81;
        }

        else
        {
          v66 = &v80 + 9;
        }

        re::DynamicString::format("%s (%s) precompilation failed - did not find ShaderGraphAsset %s", buf, v64, v65, v66);
        if (v107)
        {
          v108 = *MEMORY[0x1E696A578];
          if (buf[8])
          {
            v67 = *&buf[16];
          }

          else
          {
            v67 = &buf[9];
          }

          v68 = [MEMORY[0x1E696AEC0] stringWithCString:v67 encoding:4];
          v109 = v68;
          v69 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v109 forKeys:&v108 count:1];

          v70 = [MEMORY[0x1E696ABC0] errorWithDomain:@"RERealityFileErrorDomain" code:7 userInfo:v69];
          *v107 = v70;
        }

        if (*buf && (buf[8] & 1) != 0)
        {
          (*(**buf + 40))();
        }

        if (v80 && (BYTE8(v80) & 1) != 0)
        {
          (*(*v80 + 40))();
        }

        break;
      }

LABEL_95:
      (*(*v75 + 16))(v75, v44);
LABEL_96:
      v40 = re::Result<re::AssetUtilities::CompiledAssetLoadResult,re::DynamicString>::~Result(&v82);
      if (++v41 == v77)
      {
        goto LABEL_97;
      }
    }

    re::Result<re::AssetUtilities::CompiledAssetLoadResult,re::DynamicString>::~Result(&v82);
    this = 0;
  }

  else
  {
LABEL_97:
    this = 1;
    re::AssetLoadRequest::Data::waitForCompletion(*(v104 + 3), 1);
  }

  re::DynamicArray<re::AssetHandle>::deinit(&v84);
LABEL_128:
  re::HashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v89);
LABEL_129:
  re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(v94);
  re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(v98);
LABEL_130:
  if ((v102[0] & 1) == 0)
  {
  }

  if (v104)
  {
  }

  v4 = v106;
LABEL_135:
  if (v4)
  {
  }

  return this;
}

void RERealityFilePrewarmShaderGraphMaterialsCache::$_0::operator()(uint64_t a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v32 = *MEMORY[0x1E69E9840];
  re::RealityFile::newDataByLoading(**(a2 + 8), a3, v26);
  if (v26[0])
  {
    v25 = v27;
    v8 = *(a2 + 16);
    v24[0] = 0;
    re::AssetUtilities::loadCompiledAssetFromData(&v25, v8, a4, 0, 0, v24, a1);
    if ((*a1 & 1) == 0)
    {
      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v9 = CoreRELog::log;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v21 = *a4;
        v22 = (*(*a3 + 40))(a3);
        if (*(a1 + 16))
        {
          v23 = *(a1 + 24);
        }

        else
        {
          v23 = a1 + 17;
        }

        *buf = 136315650;
        *&buf[4] = v21;
        *&buf[12] = 2080;
        *&buf[14] = v22;
        *&buf[22] = 2080;
        v31 = v23;
        _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Error loading compiled %s '%s': %s", buf, 0x20u);
      }

      if (**a2)
      {
        v28 = *MEMORY[0x1E696A578];
        if (*(a1 + 16))
        {
          v10 = *(a1 + 24);
        }

        else
        {
          v10 = a1 + 17;
        }

        v11 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:4];
        v29 = v11;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];

        v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"RERealityFileErrorDomain" code:7 userInfo:v12];
        ***a2 = v13;
      }
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v14 = CoreRELog::log;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v20 = re::WrappedError::localizedDescription(&v27);
      *buf = 136315138;
      *&buf[4] = v20;
      _os_log_error_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
    }

    if (**a2)
    {
      ***a2 = v27;
      v15 = ***a2;
      if (v15)
      {
        CFRetain(v15);
      }
    }

    v16 = re::WrappedError::localizedDescription(&v27);
    v17 = *buf;
    v18 = *&buf[16];
    v19 = v31;
    *a1 = 0;
    *(a1 + 8) = v17;
    *(a1 + 24) = v18;
    *(a1 + 32) = v19;
  }

  if ((v26[0] & 1) == 0)
  {
  }
}

void REAssetLoadRequestAddRealityFileAsset(re::AssetLoadRequest *a1, uint64_t a2, os_unfair_lock_s *a3, uint64_t a4)
{
  v8 = *(a2 + 24);
  if (v8)
  {
    v9 = (v8 + 8);
  }

  v10 = *(v8 + 112);
  v11[0] = *(a2 + 32);
  re::DynamicString::DynamicString(&v12, (a2 + 40));
  re::DynamicString::DynamicString(v14, (a2 + 72));
  if (v14[0])
  {
    if (v14[1])
    {
      (*(*v14[0] + 40))();
    }

    memset(v14, 0, sizeof(v14));
  }

  if (v12 && (v13 & 1) != 0)
  {
    (*(*v12 + 40))();
  }
}

void anonymous namespace::addAssetRecursive(re::AssetLoadRequest *a1, os_unfair_lock_s *a2, const re::RealityFileDescriptor *a3, uint64_t a4, uint64_t a5)
{
  v27 = *MEMORY[0x1E69E9840];
  v10 = (*(*a5 + 40))(a5);
  if (v23[0])
  {
    re::AssetHandle::AssetHandle(buf, v24);
    re::AssetLoadRequest::addAsset(a1, buf);
    v12 = (*(*a5 + 40))(a5);
    v13 = re::HashTable<re::DynamicString,re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase const>>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet<void>(a4 + 320, v12);
    if (v13)
    {
      v14 = *(v13 + 16);
      if (v14)
      {
        v15 = *(v13 + 32);
        v16 = 8 * v14;
        do
        {
          v17 = *v15;
          if (*v15)
          {
            v18 = (v17 + 8);
          }

          else
          {
          }

          ++v15;
          v16 -= 8;
        }

        while (v16);
      }
    }

    re::AssetHandle::~AssetHandle(buf);
    re::AssetHandle::~AssetHandle(v24);
  }

  else if (!v24[0])
  {
    v19 = *re::assetsLogObjects(AssetHandle);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(*a5 + 40);
      v21 = v19;
      v22 = v20(a5);
      *buf = 136315138;
      v26 = v22;
      _os_log_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_DEFAULT, "Unsupported asset type (ignoring it and continuing the loading): %s", buf, 0xCu);
    }
  }
}

CFStringRef RERealityFileAssetDescriptorCopyMetadataString(uint64_t a1, uint64_t a2, const char *a3)
{
  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = (v5 + 8);
    v7 = *(v5 + 112);
  }

  else
  {
    v7 = MEMORY[0x70];
  }

  v8 = (*(*a2 + 40))(a2);
  v9 = re::AssetMap::metadataForFileName(v7, &v18);
  v10 = v18;
  if (v18 && (v19 & 1) != 0)
  {
    v10 = (*(*v18 + 40))();
  }

  if (!v9)
  {
    return 0;
  }

  v16 = 0;
  v17 = &str_67;
  v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v16 >> 31) ^ (v16 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v16 >> 31) ^ (v16 >> 1))) >> 27));
  v12 = re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v9, &v16, v11 ^ (v11 >> 31), &v18);
  if (v20 == 0x7FFFFFFF)
  {
    if (v16)
    {
      if (v16)
      {
      }
    }

    return 0;
  }

  v14 = *(v9 + 16) + 56 * v20 + 24;
  if (v16)
  {
    if (v16)
    {
    }
  }

  if (*(v14 + 8))
  {
    v15 = *(v14 + 16);
  }

  else
  {
    v15 = (v14 + 9);
  }

  return CFStringCreateWithCString(0, v15, 0x8000100u);
}

void *RERealityFileAssetDescriptorAsSceneDescriptor(void *result)
{
  if (result)
  {
  }

  return result;
}

uint64_t RESceneDescriptorCreateFromParams(re *a1, const char *a2, const char *a3)
{
  v6 = re::globalAllocators(a1);
  v7 = (*(*v6[2] + 32))(v6[2], 200, 8);
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0u;
  *(v7 + 80) = 0u;
  *(v7 + 96) = 0u;
  *(v7 + 112) = 0u;
  *(v7 + 128) = 0u;
  *(v7 + 144) = 0u;
  *(v7 + 160) = 0u;
  *(v7 + 176) = 0u;
  *(v7 + 192) = 0;
  re::SceneDescriptor::SceneDescriptor(v7);
  v11 = a1;
  v12 = strlen(a1);
  re::DynamicString::operator=((v7 + 24), &v11);
  v8 = strlen(a2);
  v11 = a2;
  v12 = v8;
  v9 = re::DynamicString::operator=((v7 + 56), &v11);
  if (a3)
  {
    LOBYTE(v11) = 1;
    re::DynamicString::DynamicString(&v12, &v14);
    re::Optional<re::DynamicString>::operator=(v7 + 88, &v11);
    if (v11 == 1 && v12 && (v13 & 1) != 0)
    {
      (*(*v12 + 40))();
    }

    if (v14 && (v15 & 1) != 0)
    {
      (*(*v14 + 40))();
    }
  }

  return v7;
}

uint64_t RESceneDescriptorAddSceneCompatibilityVariant(uint64_t a1, int a2, const char *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  re::DynamicString::setCapacity(&v9, 0);
  v8 = a2;
  v6 = strlen(a3);
  v13[0] = a3;
  v13[1] = v6;
  re::DynamicString::operator=(&v9, v13);
  re::DynamicArray<re::SceneCompatibilityVariant>::add((a1 + 160), &v8);
  result = v9;
  if (v9)
  {
    if (v10)
    {
      return (*(*v9 + 40))();
    }
  }

  return result;
}

BOOL RERealityFileAssetDescriptorHasDependenciesArray(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  v5 = *(v3 + 112);
  v6 = (*(*a2 + 40))(a2);
  v7 = re::HashTable<re::DynamicString,re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase const>>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet<void>(v5 + 320, v6);

  return v7 != 0;
}

uint64_t RERealityFileAssetDescriptorGetDependenciesArray(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  v5 = *(v3 + 112);
  v6 = (*(*a2 + 40))(a2);
  v7 = re::HashTable<re::DynamicString,re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase const>>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet<void>(v5 + 320, v6);

  if (v7)
  {
    return *(v7 + 32);
  }

  else
  {
    return 0;
  }
}

BOOL RERealityFilePostLoadProcessing(re::TextureCompatibility *a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  v5 = *(a1 + 7);
  if (v5)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v16 = 0;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "RERealityFilePostLoadProcessing: scene must not have been registered to an ECSService", v16, 2u);
    }
  }

  else
  {
    v11 = re::ServiceLocator::serviceOrNull<re::RenderManager>(a3);
    v12 = re::ServiceLocator::serviceOrNull<re::AssetService>(a3);
    if (v11 && *(v11 + 20))
    {
      v13 = v12;
      if (a5 && (Value = CFDictionaryGetValue(a5, @"kRERealityFilePostLoadProcessingOptionRecompressTextures")) != 0)
      {
        v15 = (CFBooleanGetValue(Value) != 0);
      }

      else
      {
        v15 = 0;
      }

      re::TextureCompatibility::postProcessLoadedTextures(a1, v13, v11, v15);
    }
  }

  return v5 == 0;
}

uint64_t RESceneDescriptorGetSceneName(uint64_t a1)
{
  v1 = *(a1 + 64);
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
    return *(a1 + 72);
  }

  return a1 + 65;
}

uint64_t RESceneDescriptorGetSceneIdentifier(uint64_t a1)
{
  if (*(a1 + 88))
  {
    if (*(a1 + 104))
    {
      return *(a1 + 112);
    }

    else
    {
      return a1 + 105;
    }
  }

  else if (*(a1 + 136))
  {
    return *(a1 + 144);
  }

  else
  {
    return a1 + 137;
  }
}

uint64_t RESceneDescriptorGetSceneCompatibilityVariantAtIndex(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 176) <= a2)
  {
    return 0;
  }

  else
  {
    return *(a1 + 192) + 40 * a2;
  }
}

uint64_t RESceneCompatibilityVariantGetFileName(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return *(a1 + 24);
  }

  else
  {
    return a1 + 17;
  }
}

id RERealityFileCopyConfigurationSetNames(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = (v1 + 8);
    v3 = *(v1 + 112);
  }

  else
  {
    v3 = MEMORY[0x70];
  }

  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (*(v3 + 120))
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = *(v3 + 128) + v5;
      if (*(v7 + 8))
      {
        v8 = *(v7 + 16);
      }

      else
      {
        v8 = v7 + 9;
      }

      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];
      [v4 addObject:v9];

      ++v6;
      v5 += 32;
    }

    while (v6 < *(v3 + 120));
  }

  CFRetain(v4);

  return v4;
}

id RERealityFileCopyDefaultConfigurationNames(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = (v1 + 8);
    v3 = *(v1 + 112);
  }

  else
  {
    v3 = MEMORY[0x70];
  }

  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (*(v3 + 144))
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = *(v3 + 152) + v5;
      if (*(v7 + 8))
      {
        v8 = *(v7 + 16);
      }

      else
      {
        v8 = v7 + 9;
      }

      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];
      [v4 addObject:v9];

      ++v6;
      v5 += 32;
    }

    while (v6 < *(v3 + 144));
  }

  CFRetain(v4);

  return v4;
}

id RERealityFileCopyConfigurationNamesAtSetIndex(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    v4 = (v3 + 8);
    v5 = *(v3 + 112);
  }

  else
  {
    v5 = MEMORY[0x70];
  }

  if (*(v5 + 424) <= a2)
  {
    return 0;
  }

  v6 = *(v5 + 432) + 24 * a2;
  v7 = *(v6 + 8);
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v7)
  {
    v9 = 0;
    for (i = 0; i != v7; ++i)
    {
      if (*(v6 + 8) <= i)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v11 = *(v6 + 16) + v9;
      if (*(v11 + 8))
      {
        v12 = *(v11 + 16);
      }

      else
      {
        v12 = v11 + 9;
      }

      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v12];
      [v8 addObject:v13];

      v9 += 32;
    }
  }

  CFRetain(v8);

  return v8;
}

uint64_t RERealityFileGetRealityFileAssetDescriptorWithConfigurationSpecifications(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v4 = [v3 count];
  if (v19)
  {
    v5 = 0;
    for (i = 0; i < v19; ++i)
    {
      v7 = [v3 objectAtIndexedSubscript:i];
      v8 = [v7 cStringUsingEncoding:4];
      v9 = v19;
      if (v19 <= i)
      {
        v21 = 0;
        memset(v30, 0, sizeof(v30));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v22 = 136315906;
        v23 = "operator[]";
        v24 = 1024;
        v25 = 468;
        v26 = 2048;
        v27 = i;
        v28 = 2048;
        v29 = v9;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v10 = v8;
      v11 = strlen(v8);
      *&v30[0] = v10;
      *(&v30[0] + 1) = v11;
      re::DynamicString::operator=((v20 + v5), v30);

      v5 += 32;
    }
  }

  v12 = *(a1 + 24);
  if (v12)
  {
    v13 = (v12 + 8);
  }

  v14 = *(v12 + 112);
  re::FixedArray<re::DynamicString>::FixedArray(v17, &v18);
  re::AssetMap::assetDescriptorFromConfigurationNames(v14, v17, v30);
  v15 = *&v30[0];
  if (*&v30[0])
  {
  }

  re::FixedArray<re::DynamicString>::deinit(v17);

  re::FixedArray<re::DynamicString>::deinit(&v18);
  return v15;
}

id RERealityFileCopyTextureDescriptor(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v43 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 24);
  if (v8)
  {
    v9 = v8 + 1;
    re::RealityFile::getInputStreamSources(v8, a3, v36);
  }

  else
  {
    re::RealityFile::getInputStreamSources(0, a3, v36);
  }

  if (v36[0] == 1 && v37[1] != 0)
  {
    v32[0] = 0;
    if (v38)
    {
      v12 = v39;
    }

    else
    {
      v12 = v39[1];
    }

    v13 = *v12;
    v41 = re::globalAllocators(v10)[2];
    v14 = (*(*v41 + 32))(v41, 32, 0);
    *v14 = &unk_1F5D2E630;
    v14[1] = v32;
    v14[2] = a1;
    v14[3] = a4;
    v42 = v14;
    (*(*v13 + 48))(&v27, v13, v40);
    re::FunctionBase<24ul,re::Result<re::Unit,re::WrappedError> ()(re::SeekableInputStream &)>::destroyCallable(v40);
    if (v27 == 1 && v32[0])
    {
      v15 = v32[0];

      goto LABEL_45;
    }

    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v16 = CoreRELog::log;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, "Fetching descriptor for stream failed", buf, 2u);
    }

    if ((v27 & 1) == 0)
    {
    }
  }

  v17 = *(a1 + 1808);
  v27 = re::TextureAsset::assetType(v10);
  v18 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v17, &v27);
  (*(**v18 + 128))(*v18);
  v19 = *v18;
  v20 = *(a2 + 24);
  if (v20)
  {
    v21 = (v20 + 8);
  }

  v22 = (*(*a3 + 40))(a3);
  LOBYTE(v27) = *(a2 + 32);
  re::DynamicString::DynamicString(&v28, (a2 + 40));
  re::DynamicString::DynamicString(v31, (a2 + 72));
  if (v29)
  {
    v23 = *&v30[7];
  }

  else
  {
    v23 = v30;
  }

  if (v36[0])
  {
    v24 = "No asset sources";
  }

  else
  {
    v24 = re::WrappedError::localizedDescription(v37);
  }

  re::TextureAssetLoader::fetchSourceImageTextureDescriptor(v19, v20, v22, v23, v24, v32);
  if (v31[0])
  {
    if (v31[1])
    {
      (*(*v31[0] + 40))();
    }

    memset(v31, 0, sizeof(v31));
  }

  if (v28 && (v29 & 1) != 0)
  {
    (*(*v28 + 40))();
  }

  if (v20)
  {
  }

  if (v32[0])
  {
    v15 = v32[1];
  }

  else
  {
    if (v33)
    {
      v25 = *&v34[7];
    }

    else
    {
      v25 = v34;
    }

    re::CoreREAssetUtils::logAndSetErrorFromString(v25, a4, @"REPipelineErrorDomain", 0x64);
    v15 = 0;
  }

  re::Result<NS::SharedPtr<MTL::TextureDescriptor>,re::DynamicString>::~Result(v32);
LABEL_45:
  if (v36[0] == 1)
  {
    re::DynamicOverflowArray<re::SharedPtr<re::InputStreamSource>,2ul>::deinit(v37);
  }

  else
  {
  }

  return v15;
}

uint64_t RERealityFileHeaderCreateFromVersionInfo(_anonymous_namespace_ *a1, const char *a2, int a3, int a4)
{
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v8 = re::DynamicString::setCapacity(&v18, 0);
  *(&v22 + 1) = 0;
  v23 = 0uLL;
  re::DynamicString::setCapacity(&v22, 0);
  v24 = 2;
  v9 = strlen(a1);
  v25 = a1;
  v26 = v9;
  re::DynamicString::operator=(&v18, &v25);
  v10 = strlen(a2);
  v25 = a2;
  v26 = v10;
  v11 = re::DynamicString::operator=(&v22, &v25);
  if ((a3 - 1) >= 5)
  {
    v12 = 0;
  }

  else
  {
    v12 = a3;
  }

  v24 = v12;
  v13 = re::globalAllocators(v11);
  v14 = (*(*v13[2] + 32))(v13[2], 160, 8);
  *v14 = 0u;
  *(v14 + 16) = 0u;
  *(v14 + 32) = 0u;
  *(v14 + 48) = 0u;
  *(v14 + 64) = 0u;
  *(v14 + 80) = 0u;
  *(v14 + 96) = 0u;
  *(v14 + 112) = 0u;
  *(v14 + 128) = 0u;
  *(v14 + 144) = 0u;
  ArcSharedObject::ArcSharedObject(v14, 0);
  *v14 = &unk_1F5CB9160;
  *(v14 + 40) = 0u;
  *(v14 + 24) = 0u;
  v16 = re::DynamicString::setCapacity((v14 + 24), 0);
  *(v14 + 72) = 0u;
  *(v14 + 56) = 0u;
  re::DynamicString::setCapacity((v14 + 56), 0);
  *(v14 + 88) = 2;
  *(v14 + 104) = 0u;
  *(v14 + 120) = 0u;
  *(v14 + 136) = 0;
  *(v14 + 140) = 0x7FFFFFFFLL;
  *(v14 + 152) = 0;
  re::DynamicString::operator=((v14 + 24), &v18);
  re::DynamicString::operator=((v14 + 56), &v22);
  *(v14 + 88) = v24;
  *(v14 + 96) = a4;
  if (v22)
  {
    if (BYTE8(v22))
    {
      (*(*v22 + 40))();
    }

    v22 = 0u;
    v23 = 0u;
  }

  if (v18 && (v19 & 1) != 0)
  {
    (*(*v18 + 40))();
  }

  return v14;
}

uint64_t RERealityFileGetRealityFileHeader(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    return MEMORY[0x68];
  }

  v2 = (v1 + 8);
  v3 = *(v1 + 104);

  return v3;
}

_anonymous_namespace_::RealityFileWithDescriptor *anonymous namespace::RealityFileWithDescriptor::RealityFileWithDescriptor(_anonymous_namespace_::RealityFileWithDescriptor *this, re::RealityFile *a2, const re::RealityFileDescriptor *a3)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(this + 3) = a2;
  *this = &unk_1F5D2E5E8;
  if (a2)
  {
    v6 = a2 + 8;
  }

  *(this + 32) = *a3;
  re::DynamicString::DynamicString((this + 40), (a3 + 8));
  re::DynamicString::DynamicString((this + 72), (a3 + 40));
  return this;
}

void anonymous namespace::RealityFileWithDescriptor::~RealityFileWithDescriptor(_anonymous_namespace_::RealityFileWithDescriptor *this)
{
  *this = &unk_1F5D2E5E8;
  re::DynamicString::deinit((this + 72));
  re::DynamicString::deinit((this + 40));
  v2 = *(this + 3);
  if (v2)
  {

    *(this + 3) = 0;
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5D2E5E8;
  re::DynamicString::deinit((this + 72));
  re::DynamicString::deinit((this + 40));
  v2 = *(this + 3);
  if (v2)
  {

    *(this + 3) = 0;
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::internal::Callable<RERealityFileCopyTextureDescriptor::$_0,re::Result<re::Unit,re::WrappedError> ()(re::SeekableInputStream &)>::operator()(uint64_t a1@<X0>, re *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = re::CoreREAssetUtils::assetManagerCopyTextureDescriptorWithCompiledStream(*(a1 + 16), a2, *(a1 + 24));
  v6 = *(a1 + 8);
  v7 = *v6;
  *v6 = v5;

  if (**(a1 + 8))
  {
    v8 = 1;
  }

  else
  {
    re::WrappedError::make(@"RERealityFileErrorDomain", 7, "Could not read texture descriptor.", &v10);
    v9 = v10;
    v10 = 0;
    *(a3 + 8) = v9;

    v8 = 0;
  }

  *a3 = v8;
}

uint64_t re::internal::Callable<RERealityFileCopyTextureDescriptor::$_0,re::Result<re::Unit,re::WrappedError> ()(re::SeekableInputStream &)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D2E630;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::Callable<RERealityFileCopyTextureDescriptor::$_0,re::Result<re::Unit,re::WrappedError> ()(re::SeekableInputStream &)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D2E630;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

_anonymous_namespace_::RealityFileWithDescriptor *re::make::shared::object<anonymous namespace::RealityFileWithDescriptor,re::RealityFile *&,re::RealityFileDescriptor>(re *a1, re::RealityFile **a2, const re::RealityFileDescriptor *a3)
{
  v6 = re::globalAllocators(a1);
  v7 = (*(*v6[2] + 32))(v6[2], 104, 8);
  *a1 = result;
  return result;
}

re::DynamicString *re::Result<NS::SharedPtr<MTL::TextureDescriptor>,re::DynamicString>::~Result(re::DynamicString *this)
{
  v2 = (this + 8);
  if (*this == 1)
  {
    if (*v2)
    {

      *v2 = 0;
    }
  }

  else
  {
    re::DynamicString::deinit((this + 8));
  }

  return this;
}

void *REMaterialDefinitionAssetBuilderCreate(re *a1)
{
  v1 = re::globalAllocators(a1);
  v2 = (*(*v1[2] + 32))(v1[2], 2528, 8);
  bzero(v2, 0x9E0uLL);
  ArcSharedObject::ArcSharedObject(v2, 0);
  *v2 = &unk_1F5D2E688;
  re::MaterialDefinitionAsset::MaterialDefinitionAsset((v2 + 3));
  return v2;
}

re::DynamicString *REMaterialDefinitionAssetBuilderSetName(uint64_t a1, char *__s)
{
  v4[0] = __s;
  v4[1] = strlen(__s);
  return re::DynamicString::operator=((a1 + 32), v4);
}

uint64_t REAssetManagerMaterialDefinitionAssetBuilderBuild(re *a1, uint64_t a2)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 2504, 8);
  bzero(v5, 0x9C8uLL);
  re::MaterialDefinitionAsset::MaterialDefinitionAsset(v5);
  re::MaterialDefinitionFile::operator=(v5 + 8, a2 + 32);
  v6 = re::AssetHandle::operator=(v5 + 752, (a2 + 776));
  v7 = re::MaterialDefinitionAsset::assetType(v6);
  (*(*a1 + 424))(v11, a1, v5, v7, 1, 0, 0);
  v8 = v11[0];
  if (v11[0])
  {
    v9 = (v11[0] + 8);
  }

  re::AssetHandle::~AssetHandle(v11);
  return v8;
}

BOOL REAssetManagerMaterialDefinitionAssetBuilderUpdateExistingAsset(re::AssetManager *a1, re::internal::AssetEntry *a2, uint64_t a3, CFErrorRef *a4)
{
  v6 = a2;
  if (a2)
  {
    a2 = *(a2 + 3);
  }

  re::AssetHandle::AssetHandle(&v24, a2);
  if (*(v25 + 257))
  {
    re::AssetHandle::mutateAssetCommon(&v24);
    if (v25)
    {
      if (!*(v25 + 3))
      {
        v13 = re::AssetHandle::assetInfo(&v24);
        if (v13[17])
        {
          v14 = v13[18];
        }

        else
        {
          v14 = v13 + 137;
        }

        re::DynamicString::format("Can't mutate asset that is detached from the AssetManager. '%s'", &v26, v14);
        goto LABEL_17;
      }

      v8 = atomic_load(v25 + 224);
      if (v8 != 2 || (v9 = atomic_load(v25 + 224), v9 == 1))
      {
        v10 = re::AssetHandle::assetInfo(&v24);
        if (v10[17])
        {
          v11 = v10[18];
        }

        else
        {
          v11 = v10 + 137;
        }

        re::DynamicString::format("Can't mutate asset that is not fully loaded. '%s'", &v26, v11);
LABEL_17:
        if (v27)
        {
          v15 = *&v28[7];
        }

        else
        {
          v15 = v28;
        }

        re::WrappedError::make(@"REAssetRefErrorDomain", 5, v15, &v29);
        v16 = v29;
        v29 = 0;

        if (v26 && (v27 & 1) != 0)
        {
          (*(*v26 + 40))();
        }

        v17 = v16;
        *a4 = v16;
        if (v16)
        {
          CFRetain(v16);
        }

        goto LABEL_30;
      }

      ++*(v25 + 69);
      v18 = re::AssetHandle::loadedAsset<re::MaterialDefinitionAsset>(&v24);
      if (!v18)
      {
        v22 = re::AssetHandle::assetInfo(&v24);
        if (v22[17])
        {
          v23 = v22[18];
        }

        else
        {
          v23 = v22 + 137;
        }

        re::DynamicString::format("Failed to get mutable asset pointer for '%s'.", &v26, v23);
        goto LABEL_17;
      }

      v19 = v18;
      re::AssetHandle::internalUnregisterAsset(&v24);
      re::MaterialDefinitionFile::operator=(v19 + 8, a3 + 32);
      re::AssetHandle::operator=(v19 + 752, (a3 + 776));
      re::AssetHandle::internalRegisterAsset(&v24);
      re::internal::AssetEntry::updateMutatedRuntimeAssetSize(v25);
      re::internal::AssetEntry::updateMutatedAssetNonSharedDataSize(v25);
    }

    re::AssetManager::loadNow(a1, *(v6 + 3), 0);
    if (!v25)
    {
LABEL_30:
      v12 = 0;
      goto LABEL_31;
    }

    v20 = atomic_load(v25 + 224);
    v12 = v20 == 2;
  }

  else
  {
    v12 = 0;
    *a4 = CFErrorCreate(0, @"REAssetRefErrorDomain", 2, 0);
  }

LABEL_31:
  re::AssetHandle::~AssetHandle(&v24);
  return v12;
}

uint64_t REMaterialDefinitionAssetBuilderSetTechniqueMapping(_anonymous_namespace_ *a1, char *a2, const char *a3)
{
  if (a3)
  {
    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(a1 + 496, a2, &v8);
    result = v8;
    if (v8)
    {
      if (v9)
      {
        return (*(*v8 + 40))();
      }
    }
  }

  else
  {
    v7 = a1 + 496;

    return re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::remove<void>(v7, a2);
  }

  return result;
}

void REMaterialDefinitionAssetBuilderSetLibrary(uint64_t a1, re::internal::AssetEntry *a2)
{
  if (a2)
  {
    a2 = *(a2 + 3);
  }

  re::AssetHandle::AssetHandle(&v5, a2);
  v3 = *(a1 + 128);
  *(a1 + 128) = v5;
  v5 = v3;
  v4 = *(a1 + 144);
  *(a1 + 144) = v6;
  v6 = v4;
  re::AssetHandle::~AssetHandle(&v5);
}

void REMaterialDefinitionAssetBuilderSetOverrideMaterial(uint64_t a1, re::internal::AssetEntry *a2)
{
  if (a2)
  {
    a2 = *(a2 + 3);
  }

  re::AssetHandle::AssetHandle(&v5, a2);
  v3 = *(a1 + 152);
  *(a1 + 152) = v5;
  v5 = v3;
  v4 = *(a1 + 168);
  *(a1 + 168) = v6;
  v6 = v4;
  re::AssetHandle::~AssetHandle(&v5);
}

uint64_t REMaterialDefinitionAssetBuilderAddDebugMapping(void *a1)
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  re::DynamicString::setCapacity(&v4, 0);
  v9 = 0u;
  memset(v8, 0, sizeof(v8));
  DWORD1(v9) = 0x7FFFFFFF;
  re::DynamicArray<re::DebugMapping>::add((a1 + 74), &v4);
  v2 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v8);
  if (v4 && (v5 & 1) != 0)
  {
    (*(*v4 + 40))(v2);
  }

  return a1[76] - 1;
}

re::DynamicString *REMaterialDefinitionAssetBuilderSetDebugMappingName(uint64_t a1, unint64_t a2, char *__s)
{
  v6 = *MEMORY[0x1E69E9840];
  if (*(a1 + 608) <= a2)
  {
    memset(v5, 0, sizeof(v5));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v3 = (*(a1 + 624) + 80 * a2);
  *&v5[0] = __s;
  *(&v5[0] + 1) = strlen(__s);
  return re::DynamicString::operator=(v3, v5);
}

_DWORD *REMaterialDefinitionAssetBuilderSetDebugMappingEntry(uint64_t a1, unint64_t a2, char *a3, int a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v5 = *(a1 + 608);
  if (v5 <= a2)
  {
    v8 = 0;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v17 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v9 = 136315906;
    v10 = "operator[]";
    v11 = 1024;
    v12 = 789;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(*(a1 + 624) + 80 * a2 + 32, a3, &v7);
}

_DWORD *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(uint64_t a1, char *a2, _DWORD *a3)
{
  v10 = 0;
  v11 = a2;
  v8 = 0;
  v9 = 0;
  v5 = re::Hash<re::DynamicString>::operator()(&v12, a2);
  result = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(a1, &v11, v5, &v8);
  v7 = HIDWORD(v9);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    return re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<char const*&,int const&>(a1, &v8, &v11, a3);
  }

  ++*(a1 + 40);
  *(*(a1 + 16) + 56 * v7 + 40) = *a3;
  return result;
}

void REMaterialDefinitionAssetBuilderRemoveDebugMappingEntry(uint64_t a1, unint64_t a2, char *__s)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 608);
  if (v4 <= a2)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v14 = 136315906;
    *&v14[4] = "operator[]";
    v15 = 1024;
    v16 = 789;
    v17 = 2048;
    v18 = a2;
    v19 = 2048;
    v20 = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v5 = *(a1 + 624) + 80 * a2;
  *v14 = __s;
  v6 = re::Hash<re::DynamicString>::operator()(&v21, __s);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(v5 + 32, v14, v6, &v21);
  v7 = HIDWORD(v21);
  if (HIDWORD(v21) != 0x7FFFFFFF)
  {
    v8 = *(v5 + 48);
    v9 = *(v8 + 56 * HIDWORD(v21)) & 0x7FFFFFFF;
    if (v22 == 0x7FFFFFFF)
    {
      *(*(v5 + 40) + 4 * DWORD2(v21)) = v9;
      v7 = HIDWORD(v21);
    }

    else
    {
      *(v8 + 56 * v22) = *(v8 + 56 * v22) & 0x80000000 | v9;
    }

    v10 = (v8 + 56 * v7);
    v11 = *v10;
    if (*v10 < 0)
    {
      *v10 = v11 & 0x7FFFFFFF;
      re::DynamicString::deinit((v10 + 2));
      v12 = HIDWORD(v21);
      v8 = *(v5 + 48);
      v11 = *(v8 + 56 * HIDWORD(v21));
      v7 = HIDWORD(v21);
    }

    else
    {
      v12 = v7;
    }

    *(v8 + 56 * v12) = *(v5 + 68) | v11 & 0x80000000;
    --*(v5 + 60);
    v13 = *(v5 + 72) + 1;
    *(v5 + 68) = v7;
    *(v5 + 72) = v13;
  }
}

uint64_t REMaterialDefinitionAssetBuilderAddTechnique(void *a1)
{
  v9 = 0;
  v8 = 0u;
  v2 = re::DynamicString::setCapacity(&v7, 0);
  v12 = 0;
  v11 = 0u;
  v3 = re::DynamicString::setCapacity(&v10, 0);
  memset(v16, 0, 32);
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v4 = re::DynamicString::setCapacity(v16, 0);
  v17 = 0;
  memset(&v16[2], 0, 48);
  v5 = re::DynamicString::setCapacity(&v16[3] + 1, 0);
  v18 = 0xFFFF000100010000;
  v19 = 1792;
  v20 = 4;
  v21 = xmmword_1E30A1FE0;
  v22 = 5;
  v23 = 15;
  v25 = 0u;
  v26 = 0;
  v24[2] = 0;
  v24[0] = 0;
  *(v24 + 5) = 0;
  memset(v27, 0, sizeof(v27));
  re::DynamicString::setCapacity(&v27[1], 0);
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  DWORD1(v30) = 0x7FFFFFFF;
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  DWORD1(v33) = 0x7FFFFFFF;
  v34 = 0;
  v35 = 0u;
  v36 = 0;
  v38 = 0u;
  v39 = 0u;
  v37 = 0u;
  v40 = 0;
  HIDWORD(v39) = 0x7FFFFFFF;
  v44 = 0;
  v42 = 0;
  v43 = 0;
  v41 = 0u;
  v45 = 0;
  v48 = 0u;
  v47 = 0u;
  v46 = 0u;
  DWORD1(v48) = 0x7FFFFFFF;
  v51 = 0u;
  v50 = 0u;
  v49 = 0u;
  DWORD1(v51) = 0x7FFFFFFF;
  v52 = 16777472;
  v53 = 0;
  re::DynamicArray<re::MaterialTechniqueData>::add((a1 + 52), &v7);
  re::MaterialTechniqueData::~MaterialTechniqueData(&v7);
  return a1[54] - 1;
}

re::DynamicString *REMaterialDefinitionAssetBuilderSetTechniqueName(uint64_t a1, unint64_t a2, char *__s)
{
  v6 = *MEMORY[0x1E69E9840];
  if (*(a1 + 432) <= a2)
  {
    memset(v5, 0, sizeof(v5));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v3 = (*(a1 + 448) + 664 * a2);
  *&v5[0] = __s;
  *(&v5[0] + 1) = strlen(__s);
  return re::DynamicString::operator=(v3, v5);
}

void REMaterialDefinitionAssetBuilderSetTechniqueLibrary(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = *(a3 + 24);
  }

  else
  {
    v5 = 0;
  }

  re::AssetHandle::AssetHandle(&v11, v5);
  v6 = *(a1 + 432);
  if (v6 <= a2)
  {
    v14 = 0;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v15 = 136315906;
    v16 = "operator[]";
    v17 = 1024;
    v18 = 789;
    v19 = 2048;
    v20 = a2;
    v21 = 2048;
    v22 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v7 = (*(a1 + 448) + 664 * a2);
  v8 = v7[9];
  v7[9] = v12;
  v12 = v8;
  v9 = v7[8];
  v7[8] = 0;
  v7[8] = v11;
  v11 = v9;
  v10 = v7[10];
  v7[10] = v13;
  v13 = v10;
  re::AssetHandle::~AssetHandle(&v11);
}

re::DynamicString *REMaterialDefinitionAssetBuilderSetTechniqueVertexShaderEntry(uint64_t a1, unint64_t a2, char *__s)
{
  v6 = *MEMORY[0x1E69E9840];
  if (*(a1 + 432) <= a2)
  {
    memset(v5, 0, sizeof(v5));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v3 = *(a1 + 448) + 664 * a2;
  *&v5[0] = __s;
  *(&v5[0] + 1) = strlen(__s);
  return re::DynamicString::operator=((v3 + 112), v5);
}

void REMaterialDefinitionAssetBuilderSetTechniqueVertexShaderLibrary(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  re::AssetAPIHelper::assetHandleCreate(a3, &v10);
  v5 = *(a1 + 432);
  if (v5 <= a2)
  {
    v13 = 0;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    v17 = 789;
    v18 = 2048;
    v19 = a2;
    v20 = 2048;
    v21 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v6 = (*(a1 + 448) + 664 * a2);
  v7 = v6[12];
  v6[12] = v11;
  v11 = v7;
  v8 = v6[11];
  v6[11] = 0;
  v6[11] = v10;
  v10 = v8;
  v9 = v6[13];
  v6[13] = v12;
  v12 = v9;
  re::AssetHandle::~AssetHandle(&v10);
}

re::DynamicString *REMaterialDefinitionAssetBuilderSetTechniquePixelShaderEntry(uint64_t a1, unint64_t a2, char *__s)
{
  v6 = *MEMORY[0x1E69E9840];
  if (*(a1 + 432) <= a2)
  {
    memset(v5, 0, sizeof(v5));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v3 = *(a1 + 448) + 664 * a2;
  *&v5[0] = __s;
  *(&v5[0] + 1) = strlen(__s);
  return re::DynamicString::operator=((v3 + 168), v5);
}

void REMaterialDefinitionAssetBuilderSetTechniquePixelShaderLibrary(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  re::AssetAPIHelper::assetHandleCreate(a3, &v10);
  v5 = *(a1 + 432);
  if (v5 <= a2)
  {
    v13 = 0;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    v17 = 789;
    v18 = 2048;
    v19 = a2;
    v20 = 2048;
    v21 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v6 = (*(a1 + 448) + 664 * a2);
  v7 = v6[19];
  v6[19] = v11;
  v11 = v7;
  v8 = v6[18];
  v6[18] = 0;
  v6[18] = v10;
  v10 = v8;
  v9 = v6[20];
  v6[20] = v12;
  v12 = v9;
  re::AssetHandle::~AssetHandle(&v10);
}

uint64_t REMaterialDefinitionAssetBuilderAddTechniqueVariation(uint64_t a1, unint64_t a2, char *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(a1 + 432) <= a2)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v8 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v4 = *(a1 + 448) + 664 * a2;
  if (!re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey<void>(v4 + 376, a3))
  {
    *&v10 = 0;
    *&v9 = 0;
    v8 = 0uLL;
    DWORD2(v9) = 0;
    re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(v4 + 376, a3, &v8);
    re::DynamicArray<re::DynamicString>::deinit(&v8);
  }

  v5 = re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[]<void>(v4 + 376, a3);
  *(&v8 + 1) = 0;
  v9 = 0uLL;
  re::DynamicString::setCapacity(&v8, 0);
  v6 = re::DynamicArray<re::DynamicString>::add(v5, &v8);
  if (v8 && (BYTE8(v8) & 1) != 0)
  {
    (*(*v8 + 40))(v6);
  }

  return *(v5 + 2);
}

uint64_t re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(uint64_t a1, char *a2, uint64_t a3)
{
  v14 = 0;
  v15 = a2;
  v12 = 0;
  v13 = 0;
  v5 = re::Hash<re::DynamicString>::operator()(&v16, a2);
  result = re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(a1, &v15, v5, &v12);
  if (HIDWORD(v13) == 0x7FFFFFFF)
  {
    v7 = re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v13, v12);
    v8 = v15;
    *(v7 + 72) = 0;
    *(v7 + 64) = 0;
    *(v7 + 48) = 0;
    *(v7 + 56) = 0;
    *(v7 + 40) = 0;
    v9 = *(a3 + 8);
    *(v7 + 40) = *a3;
    *(v7 + 48) = v9;
    *a3 = 0;
    *(a3 + 8) = 0;
    v10 = *(v7 + 56);
    *(v7 + 56) = *(a3 + 16);
    *(a3 + 16) = v10;
    v11 = *(v7 + 72);
    *(v7 + 72) = *(a3 + 32);
    *(a3 + 32) = v11;
    ++*(a3 + 24);
    ++*(v7 + 64);
    ++*(a1 + 40);
  }

  return result;
}

uint64_t re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[]<void>(uint64_t a1, char *a2)
{
  v6 = a2;
  v3 = re::Hash<re::DynamicString>::operator()(v5, a2);
  re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(a1, &v6, v3, v5);
  return *(a1 + 16) + 88 * v5[3] + 40;
}

re::DynamicString *REMaterialDefinitionAssetBuilderSetTechniqueVariation(uint64_t a1, unint64_t a2, char *a3, unint64_t a4, const char *a5)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(a1 + 432) <= a2)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_5:
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v7 = re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[]<void>(*(a1 + 448) + 664 * a2 + 376, a3);
  if (*(v7 + 16) <= a4)
  {
    goto LABEL_5;
  }

  v8 = (*(v7 + 32) + 32 * a4);
  *&v10 = a5;
  *(&v10 + 1) = strlen(a5);
  return re::DynamicString::operator=(v8, &v10);
}

uint64_t REMaterialDefinitionAssetBuilderAddTechniqueDefaultVariation(_anonymous_namespace_ *a1, unint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(a1 + 54) <= a2)
  {
    v8 = 0u;
    v9 = 0u;
    v6 = 0u;
    v7 = 0u;
    v5 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v2 = *(a1 + 56) + 664 * a2;
  *(&v5 + 1) = 0;
  v6 = 0uLL;
  re::DynamicString::setCapacity(&v5, 0);
  v3 = re::DynamicArray<re::DynamicString>::add((v2 + 424), &v5);
  if (v5 && (BYTE8(v5) & 1) != 0)
  {
    (*(*v5 + 40))(v3);
  }

  return *(v2 + 440) - 1;
}

re::DynamicString *REMaterialDefinitionAssetBuilderSetTechniqueDefaultVariation(uint64_t a1, unint64_t a2, unint64_t a3, char *__s)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(a1 + 432) <= a2)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v7 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_5:
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v7 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v4 = *(a1 + 448) + 664 * a2;
  if (*(v4 + 440) <= a3)
  {
    goto LABEL_5;
  }

  v5 = (*(v4 + 456) + 32 * a3);
  *&v7 = __s;
  *(&v7 + 1) = strlen(__s);
  return re::DynamicString::operator=(v5, &v7);
}

uint64_t REMaterialDefinitionAssetBuilderSetTechniqueFunctionConstant(_anonymous_namespace_ *a1, unint64_t a2, char *a3, const char *a4)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a1 + 54) <= a2)
  {
    memset(v8, 0, sizeof(v8));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v6 = *(a1 + 56) + 664 * a2;
  if (a4)
  {
    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(v6 + 328, a3, v8);
    result = *&v8[0];
    if (*&v8[0])
    {
      if (BYTE8(v8[0]))
      {
        return (*(**&v8[0] + 40))();
      }
    }
  }

  else
  {

    return re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::remove<void>(v6 + 328, a3);
  }

  return result;
}

re::DynamicString *REMaterialDefinitionAssetBuilderSetTechniqueDebugMapping(uint64_t a1, unint64_t a2, char *__s)
{
  v6 = *MEMORY[0x1E69E9840];
  if (*(a1 + 432) <= a2)
  {
    memset(v5, 0, sizeof(v5));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v3 = *(a1 + 448) + 664 * a2;
  *&v5[0] = __s;
  *(&v5[0] + 1) = strlen(__s);
  return re::DynamicString::operator=((v3 + 296), v5);
}

uint64_t REMaterialDefinitionAssetBuilderSetTechniqueStateAlphaBlend(uint64_t result, unint64_t a2, char a3)
{
  if (*(result + 432) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  *(*(result + 448) + 664 * a2 + 200) = a3;
  return result;
}

uint64_t REMaterialDefinitionAssetBuilderSetTechniqueStateWriteDepth(uint64_t result, unint64_t a2, char a3)
{
  if (*(result + 432) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  *(*(result + 448) + 664 * a2 + 202) = a3;
  return result;
}

uint64_t REMaterialDefinitionAssetBuilderSetTechniqueStateDepthCompareFunction(uint64_t result, unint64_t a2, char a3)
{
  if (*(result + 432) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  *(*(result + 448) + 664 * a2 + 210) = a3;
  return result;
}

uint64_t REMaterialDefinitionAssetBuilderSetTechniqueStateCullMode(uint64_t result, unint64_t a2, char a3)
{
  if (*(result + 432) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v3 = *(result + 448) + 664 * a2;
  v5 = *(v3 + 252);
  v4 = (v3 + 252);
  if ((v5 & 1) == 0)
  {
    *v4 = 1;
  }

  v4[1] = a3;
  return result;
}

uint64_t REMaterialDefinitionAssetBuilderSetTechniqueStateColorWriteMask(uint64_t result, unint64_t a2, int a3)
{
  if (*(result + 432) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  *(*(result + 448) + 664 * a2 + 236) = a3;
  return result;
}

uint64_t REMaterialDefinitionAssetBuilderSetTechniqueSupportsRuntimeFunctionConstants(uint64_t result, unint64_t a2, char a3)
{
  if (*(result + 432) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  *(*(result + 448) + 664 * a2 + 553) = a3;
  return result;
}

uint64_t REMaterialDefinitionAssetBuilderSetUseDynamicAttributeStride(uint64_t result, unint64_t a2, char a3)
{
  if (*(result + 432) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  *(*(result + 448) + 664 * a2 + 656) = a3;
  return result;
}

uint64_t REMaterialDefinitionAssetBuilderSetAllowRuntimeTechniqueStateOverride(uint64_t result, unint64_t a2, char a3)
{
  if (*(result + 432) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v3 = *(result + 448) + 664 * a2;
  if ((*(v3 + 657) & 1) == 0)
  {
    *(v3 + 657) = 1;
  }

  *(v3 + 658) = a3;
  return result;
}

uint64_t REMaterialDefinitionAssetBuilderSetTechniqueRuntimeFunctionConstantDefaults(_anonymous_namespace_ *a1, unint64_t a2, char *a3, const char *a4)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a1 + 54) <= a2)
  {
    memset(v8, 0, sizeof(v8));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v6 = *(a1 + 56) + 664 * a2;
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(v6 + 560, a3, v8);
  result = *&v8[0];
  if (*&v8[0])
  {
    if (BYTE8(v8[0]))
    {
      return (*(**&v8[0] + 40))();
    }
  }

  return result;
}

uint64_t REMaterialDefinitionAssetBuilderSetTechniquePreloadOptions(uint64_t a1, unint64_t a2, char *a3, const char *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(a1 + 432) <= a2)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v12 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_11;
  }

  if (!re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey<void>(*(a1 + 448) + 664 * a2 + 608, a3))
  {
    if (*(a1 + 432) <= a2)
    {
      goto LABEL_12;
    }

    v8 = *(a1 + 448);
    *&v14 = 0;
    *&v13 = 0;
    v12 = 0uLL;
    DWORD2(v13) = 0;
    re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(v8 + 664 * a2 + 608, a3, &v12);
    re::DynamicArray<re::DynamicString>::deinit(&v12);
  }

  if (*(a1 + 432) <= a2)
  {
LABEL_11:
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v12 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_12:
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v12 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v9 = re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[]<void>(*(a1 + 448) + 664 * a2 + 608, a3);
  v10 = re::DynamicArray<re::DynamicString>::add(v9, &v12);
  result = v12;
  if (v12)
  {
    if (BYTE8(v12))
    {
      return (*(*v12 + 40))(v10);
    }
  }

  return result;
}

uint64_t REMaterialDefinitionAssetBuilderSetTechniqueIsPrecompiled(uint64_t result, unint64_t a2, char a3)
{
  if (*(result + 432) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v3 = *(result + 448) + 664 * a2;
  if ((*(v3 + 659) & 1) == 0)
  {
    *(v3 + 659) = 1;
  }

  *(v3 + 660) = a3;
  return result;
}

uint64_t re::MaterialDefinitionFile::operator=(uint64_t a1, uint64_t a2)
{
  v4 = re::DynamicString::operator=(a1, a2);
  re::DynamicString::operator=((v4 + 32), (a2 + 32));
  re::DynamicString::operator=((a1 + 64), (a2 + 64));
  re::AssetHandle::operator=(a1 + 96, (a2 + 96));
  re::AssetHandle::operator=(a1 + 120, (a2 + 120));
  re::MaterialParameterData::operator=((a1 + 144), a2 + 144);
  if (a1 == a2)
  {
    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((a1 + 464), a2 + 464);
  }

  else
  {
    v5 = *(a2 + 384);
    if (*(a1 + 384))
    {
      v6 = (a1 + 384);
      if (v5)
      {
        re::DynamicArray<re::MaterialTechniqueData>::copy(v6, a2 + 384);
        ++*(a1 + 408);
      }

      else
      {
        re::DynamicArray<re::MaterialTechniqueData>::clear(v6);
      }
    }

    else if (v5)
    {
      v7 = *(a2 + 400);
      *(a1 + 384) = v5;
      re::DynamicArray<re::MaterialTechniqueData>::setCapacity((a1 + 384), v7);
      ++*(a1 + 408);
      re::DynamicArray<re::MaterialTechniqueData>::copy((a1 + 384), a2 + 384);
    }

    v8 = *(a2 + 424);
    if (*(a1 + 424))
    {
      if (v8)
      {
        re::DynamicArray<re::MaterialTechniqueGroupData>::copy(a1 + 424, a2 + 424);
      }

      else
      {
        v10 = *(a1 + 440);
        *(a1 + 440) = 0;
        if (v10)
        {
          v11 = *(a1 + 456);
          v12 = &v11[9 * v10];
          do
          {
            re::MaterialTechniqueGroupData::deinit(v11);
            re::DynamicArray<re::DynamicString>::deinit((v11 + 4));
            re::DynamicString::deinit(v11);
            v11 += 9;
          }

          while (v11 != v12);
        }
      }

      ++*(a1 + 448);
    }

    else if (v8)
    {
      v9 = *(a2 + 440);
      *(a1 + 424) = v8;
      re::DynamicArray<re::MaterialTechniqueGroupData>::setCapacity((a1 + 424), v9);
      ++*(a1 + 448);
      re::DynamicArray<re::MaterialTechniqueGroupData>::copy(a1 + 424, a2 + 424);
    }

    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((a1 + 464), a2 + 464);
    v13 = (a2 + 512);
    if (*(a1 + 512))
    {
      re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(a1 + 512);
      if (*v13)
      {
        v14 = *(a2 + 540);
        if (*(a1 + 536) < v14)
        {
          re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a1 + 512, v14);
        }

        re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::copy(a1 + 512, a2 + 512);
        ++*(a1 + 552);
      }
    }

    else if (*v13)
    {
      if (*(a2 + 540) <= 3u)
      {
        v15 = 3;
      }

      else
      {
        v15 = *(a2 + 540);
      }

      re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a1 + 512, *v13, v15);
      re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::copy(a1 + 512, a2 + 512);
    }

    v16 = *(a2 + 560);
    if (*(a1 + 560))
    {
      v17 = a1 + 560;
      if (v16)
      {
        re::DynamicArray<re::DebugMapping>::copy(v17, a2 + 560);
        ++*(a1 + 584);
      }

      else
      {
        re::DynamicArray<re::DebugMapping>::clear(v17);
      }
    }

    else if (v16)
    {
      v18 = *(a2 + 576);
      *(a1 + 560) = v16;
      re::DynamicArray<re::DebugMapping>::setCapacity((a1 + 560), v18);
      ++*(a1 + 584);
      re::DynamicArray<re::DebugMapping>::copy(a1 + 560, a2 + 560);
    }

    v19 = (a2 + 600);
    if (*(a1 + 600))
    {
      re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(a1 + 600);
      if (*v19)
      {
        v20 = *(a2 + 628);
        if (*(a1 + 624) < v20)
        {
          re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a1 + 600, v20);
        }

        re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::copy((a1 + 600), a2 + 600);
        ++*(a1 + 640);
      }
    }

    else if (*v19)
    {
      if (*(a2 + 628) <= 3u)
      {
        v21 = 3;
      }

      else
      {
        v21 = *(a2 + 628);
      }

      re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a1 + 600, *v19, v21);
      re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::copy((a1 + 600), a2 + 600);
    }

    v22 = *(a2 + 648);
    if (*(a1 + 648))
    {
      v23 = (a1 + 648);
      if (v22)
      {
        re::DynamicArray<re::MaterialTechniqueQualityLevelSetData>::copy(v23, a2 + 648);
        ++*(a1 + 672);
      }

      else
      {
        re::DynamicArray<re::MaterialTechniqueQualityLevelSetData>::clear(v23);
      }
    }

    else if (v22)
    {
      v24 = *(a2 + 664);
      *(a1 + 648) = v22;
      re::DynamicArray<re::MaterialTechniqueQualityLevelSetData>::setCapacity((a1 + 648), v24);
      ++*(a1 + 672);
      re::DynamicArray<re::MaterialTechniqueQualityLevelSetData>::copy((a1 + 648), a2 + 648);
    }
  }

  re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((a1 + 688), a2 + 688);
  return a1;
}

void REMaterialDefinitionAssetBuilder::~REMaterialDefinitionAssetBuilder(REMaterialDefinitionAssetBuilder *this)
{
  *this = &unk_1F5D2E688;
  re::MaterialDefinitionAsset::~MaterialDefinitionAsset((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5D2E688;
  re::MaterialDefinitionAsset::~MaterialDefinitionAsset((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void REPerfStatsEnd(re::internal::PerfStats *a1)
{
  re::internal::PerfStats::endStatisticsCollection(a1, 1);
  if (a1)
  {

    JUMPOUT(0x1E6906520);
  }
}

uint64_t REMeshDeformationComponentGetDeformationInputsCount(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 392);
    if (v1)
    {
      return *(v1 + 88);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t REMeshDeformationComponentGetDeformationInputByInputIndex(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5 = *(result + 392);
    if (v5)
    {
      v6 = *(v5 + 88);
      if (v6 <= a2)
      {
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, a2, v6, v3, v4);
        result = _os_crash();
        __break(1u);
      }

      else
      {
        return *(*(v5 + 96) + 168 * a2 + 8 * a3 + 24);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t REAcousticMeshAssetSimplificationOptionsCreate()
{
  re::make::shared::object<re::Shareable<re::GeomSimplifyAcousticMeshOptions>>(&v1);
  result = v1;
  *(v1 + 64) = re::AcousticMeshAsset::kMaterialAttributeName;
  return result;
}

float REAcousticMeshAssetSimplificationOptionsCreateWithDefaultTolerances(float a1)
{
  re::make::shared::object<re::Shareable<re::GeomSimplifyAcousticMeshOptions>>(&v6);
  v2 = v6;
  *(v6 + 64) = re::AcousticMeshAsset::kMaterialAttributeName;
  v3 = 1.0;
  if (a1 > 0.0)
  {
    v3 = 1.0 / a1;
  }

  v4 = v3 * 0.02;
  *(v2 + 28) = v3 * 0.15;
  result = v3 * 0.22;
  *(v2 + 32) = 1056964608;
  *(v2 + 40) = v4;
  *(v2 + 48) = result;
  *(v2 + 52) = 1062836634;
  return result;
}

double re::make::shared::object<re::Shareable<re::GeomSimplifyAcousticMeshOptions>>(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 88, 8);
  ArcSharedObject::ArcSharedObject(v3, 0);
  *v3 = &unk_1F5D2E6D0;
  result = 0.0;
  *(v3 + 24) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 56) = 0u;
  *(v3 + 32) = 1056964608;
  *(v3 + 52) = 1062836634;
  *(v3 + 84) = 0;
  *(v3 + 76) = 0;
  *a1 = v3;
  return result;
}

void *re::Shareable<re::GeomSimplifyAcousticMeshOptions>::~Shareable(void *a1)
{
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::Shareable<re::GeomSimplifyAcousticMeshOptions>::~Shareable(void *a1)
{
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

double REVisualDepthOcclusionDataCreate(re *a1)
{
  v1 = re::globalAllocators(a1);
  v2 = (*(*v1[2] + 32))(v1[2], 416, 16);
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 2) = 0u;
  *(v2 + 3) = 0u;
  *(v2 + 4) = 0u;
  *(v2 + 5) = 0u;
  *(v2 + 6) = 0u;
  *(v2 + 7) = 0u;
  *(v2 + 8) = 0u;
  *(v2 + 9) = 0u;
  *(v2 + 10) = 0u;
  *(v2 + 11) = 0u;
  *(v2 + 12) = 0u;
  *(v2 + 13) = 0u;
  *(v2 + 14) = 0u;
  *(v2 + 15) = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 17) = 0u;
  *(v2 + 18) = 0u;
  *(v2 + 19) = 0u;
  *(v2 + 20) = 0u;
  *(v2 + 21) = 0u;
  *(v2 + 22) = 0u;
  *(v2 + 23) = 0u;
  *(v2 + 24) = 0u;
  *(v2 + 25) = 0u;
  ArcSharedObject::ArcSharedObject(v2, 0);
  *v2 = &unk_1F5D2E718;
  *(v2 + 4) = 0;
  result = 0.0;
  *(v2 + 15) = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 17) = 0u;
  *(v2 + 18) = 0u;
  *(v2 + 19) = 0u;
  *(v2 + 20) = 0u;
  *(v2 + 21) = 0u;
  *(v2 + 22) = 0u;
  *(v2 + 23) = 0u;
  *(v2 + 24) = 0u;
  *(v2 + 25) = 0u;
  *(v2 + 3) = 0u;
  *(v2 + 4) = 0u;
  *(v2 + 5) = 0u;
  *(v2 + 6) = 0u;
  *(v2 + 7) = 0u;
  *(v2 + 8) = 0u;
  *(v2 + 9) = 0u;
  *(v2 + 10) = 0u;
  *(v2 + 11) = 0u;
  *(v2 + 12) = 0u;
  *(v2 + 13) = 0u;
  *(v2 + 28) = 0;
  return result;
}

void REVisualDepthOcclusionDataSetOcclusionMapTexture(uint64_t a1, unsigned int a2, void *a3)
{
  v5 = a3;
  v7 = v5;
  v6 = v5;
  NS::SharedPtr<MTL::Texture>::operator=((a1 + 192 * a2 + 32), &v7);
  if (v7)
  {
  }
}

uint64_t REVisualDepthOcclusionDataSetExtrinsics(uint64_t result, unsigned int a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v6 = (result + 192 * a2);
  v6[3] = a3;
  v6[4] = a4;
  v6[5] = a5;
  v6[6] = a6;
  return result;
}

uint64_t REVisualDepthOcclusionDataSetIntrinsics(uint64_t result, unsigned int a2, __n128 a3, __n128 a4, __n128 a5)
{
  v5 = (result + 192 * a2);
  v5[7] = a3;
  v5[8] = a4;
  v5[9] = a5;
  return result;
}

uint64_t REVisualDepthOcclusionDataSetCapturePose(uint64_t result, unsigned int a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v6 = (result + 192 * a2);
  v6[10] = a3;
  v6[11] = a4;
  v6[12] = a5;
  v6[13] = a6;
  return result;
}

id REVisualDepthOcclusionDataGetOcclusionMapTexture(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 192 * a2 + 32);

  return v2;
}

void *REPovcDepthDataCreate(re *a1)
{
  v1 = re::globalAllocators(a1);
  v2 = (*(*v1[2] + 32))(v1[2], 1088, 16);
  bzero(v2, 0x440uLL);
  ArcSharedObject::ArcSharedObject(v2, 0);
  *v2 = &unk_1F5D2E760;
  *(v2 + 38) = 0u;
  *(v2 + 39) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 41) = 0u;
  *(v2 + 42) = 0u;
  *(v2 + 43) = 0u;
  *(v2 + 44) = 0u;
  *(v2 + 45) = 0u;
  *(v2 + 46) = 0u;
  *(v2 + 47) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 49) = 0u;
  *(v2 + 50) = 0u;
  *(v2 + 51) = 0u;
  *(v2 + 52) = 0u;
  *(v2 + 53) = 0u;
  *(v2 + 54) = 0u;
  *(v2 + 55) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 57) = 0u;
  *(v2 + 58) = 0u;
  *(v2 + 59) = 0u;
  *(v2 + 60) = 0u;
  *(v2 + 61) = 0u;
  *(v2 + 62) = 0u;
  *(v2 + 63) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 65) = 0u;
  *(v2 + 66) = 0u;
  v2[134] = 0;
  bzero(v2 + 8, 0x218uLL);
  return v2;
}

__n128 *REPovcDepthDataSetTargetPoseWorldToDevice(__n128 *result, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  result[4] = a2;
  result[5] = a3;
  result[6] = a4;
  result[7] = a5;
  return result;
}

uint64_t REPovcDepthDataSetDeviceToEye(uint64_t result, unsigned int a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v6 = (result + 480 * a2);
  v6[8] = a3;
  v6[9] = a4;
  v6[10] = a5;
  v6[11] = a6;
  return result;
}

uint64_t REPovcDepthDataSetDeviceToNominalEye(uint64_t result, unsigned int a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v6 = (result + 480 * a2);
  v6[12] = a3;
  v6[13] = a4;
  v6[14] = a5;
  v6[15] = a6;
  return result;
}

uint64_t REPovcDepthDataSetDeviceToCompositorHomographySource(uint64_t result, unsigned int a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v6 = (result + 480 * a2);
  v6[16] = a3;
  v6[17] = a4;
  v6[18] = a5;
  v6[19] = a6;
  return result;
}

uint64_t REPovcDepthDataSetEyeToInputDepth(uint64_t result, unsigned int a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v6 = (result + 480 * a2);
  v6[23] = a3;
  v6[24] = a4;
  v6[25] = a5;
  v6[26] = a6;
  return result;
}

uint64_t REPovcDepthDataSetInputDepthToDevice(uint64_t result, unsigned int a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v6 = (result + 480 * a2);
  v6[27] = a3;
  v6[28] = a4;
  v6[29] = a5;
  v6[30] = a6;
  return result;
}

uint64_t REPovcDepthDataSetInputDepthIntrinsics(uint64_t result, unsigned int a2, __n128 a3, __n128 a4, __n128 a5)
{
  v5 = (result + 480 * a2);
  v5[31] = a3;
  v5[32] = a4;
  v5[33] = a5;
  return result;
}

uint64_t REPovcDepthDataSetPointOfViewDepthIntrinsics(uint64_t result, unsigned int a2, __n128 a3, __n128 a4, __n128 a5)
{
  v5 = (result + 480 * a2);
  v5[34] = a3;
  v5[35] = a4;
  v5[36] = a5;
  return result;
}

void REPovcDepthDataSetPovcDepthMapTexture(uint64_t a1, unsigned int a2, void *a3)
{
  v5 = a3;
  v7 = v5;
  v6 = v5;
  NS::SharedPtr<MTL::Texture>::operator=((a1 + 480 * a2 + 592), &v7);
  if (v7)
  {
  }
}

id REPovcDepthDataGetPovcDepthMapTexture(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 480 * a2 + 592);

  return v2;
}

void RERenderManagerCreateCameraStreamProvider(re *a1, __int128 *a2)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 144, 8);
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  ArcSharedObject::ArcSharedObject(v5, 0);
  *(v5 + 24) = 850045863;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 76) = 0u;
  *v5 = &unk_1F5D2E7A8;
  *(v5 + 96) = v7;
  *(v5 + 112) = v8;
  *(v5 + 128) = v9;
  v6 = *(a1 + 44);
  *(a1 + 44) = v5;
  if (v6)
  {
  }
}

uint64_t RERenderManagerCameraStreamProviderRequestStart(uint64_t a1)
{
  result = *(a1 + 352);
  if (result)
  {
    return (*(*result + 48))();
  }

  return result;
}

uint64_t RERenderManagerCameraStreamProviderRequestStop(uint64_t a1)
{
  result = *(a1 + 352);
  if (result)
  {
    return (*(*result + 56))();
  }

  return result;
}

void re::VisualDepthOcclusionData::~VisualDepthOcclusionData(re::VisualDepthOcclusionData *this)
{
  *this = &unk_1F5D2E718;
  for (i = 224; i != -160; i -= 192)
  {
    v3 = *(this + i);
    if (v3)
    {

      *(this + i) = 0;
    }
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5D2E718;
  v2 = 224;
  while (1)
  {
    v3 = *(this + v2);
    if (v3)
    {

      *(this + v2) = 0;
    }

    v2 -= 192;
    if (v2 == -160)
    {
      *this = &unk_1F5CCF868;
      objc_destructInstance(this + 8);

      JUMPOUT(0x1E6906520);
    }
  }
}

void re::PovcDepthData::~PovcDepthData(re::PovcDepthData *this)
{
  *this = &unk_1F5D2E760;
  for (i = 1072; i != 112; i -= 480)
  {
    v3 = *(this + i);
    if (v3)
    {

      *(this + i) = 0;
    }
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5D2E760;
  v2 = 1072;
  while (1)
  {
    v3 = *(this + v2);
    if (v3)
    {

      *(this + v2) = 0;
    }

    v2 -= 480;
    if (v2 == 112)
    {
      *this = &unk_1F5CCF868;
      objc_destructInstance(this + 8);

      JUMPOUT(0x1E6906520);
    }
  }
}

void CoreRECameraStreamProvider::~CoreRECameraStreamProvider(CoreRECameraStreamProvider *this)
{
  *this = &unk_1F5D2E7A8;
  if (*(this + 12))
  {
    (*(this + 13))();
  }

  *this = &unk_1F5D2E828;
  std::mutex::~mutex((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5D2E7A8;
  if (*(this + 12))
  {
    (*(this + 13))();
  }

  *this = &unk_1F5D2E828;
  std::mutex::~mutex((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t CoreRECameraStreamProvider::queryOcclusionData@<X0>(CoreRECameraStreamProvider *this@<X0>, void *a2@<X8>)
{
  v3 = *(this + 16);
  if (v3)
  {
    result = v3(*(this + 12));
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

uint64_t CoreRECameraStreamProvider::queryPovcDepthData@<X0>(CoreRECameraStreamProvider *this@<X0>, void *a2@<X8>)
{
  v3 = *(this + 17);
  if (v3)
  {
    result = v3(*(this + 12));
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

uint64_t CoreRECameraStreamProvider::requestStart(uint64_t this)
{
  v1 = *(this + 112);
  if (v1)
  {
    return v1(*(this + 96));
  }

  return this;
}

uint64_t CoreRECameraStreamProvider::requestStop(uint64_t this)
{
  v1 = *(this + 120);
  if (v1)
  {
    return v1(*(this + 96));
  }

  return this;
}

void *REHierarchicalFadeComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::HierarchicalFadeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
}

uint64_t REHierarchicalFadeComponentSetOpacity(uint64_t result, float a2)
{
  if (a2 > 1.0)
  {
    a2 = 1.0;
  }

  if (a2 >= 0.0)
  {
    v2 = a2;
  }

  else
  {
    v2 = 0.0;
  }

  if (*(result + 28) != v2)
  {
    v3 = result;
    re::ecs2::Component::willSet(result);
    *(v3 + 28) = v2;
    re::ecs2::Component::didSet(v3);
    re::ecs2::NetworkComponent::markComponentDirty(v3, v4);

    return re::ecs2::Component::enqueueMarkDirty(v3);
  }

  return result;
}

uint64_t REHierarchicalFadeComponentSetUseDepthPrePass(re::ecs2::HierarchicalFadeComponent *a1, int a2)
{
  result = re::ecs2::HierarchicalFadeComponent::getUseDepthPrePass(a1);
  if (result != a2)
  {
    *(a1 + 32) = a2;

    return re::ecs2::Component::enqueueMarkDirty(a1);
  }

  return result;
}

uint64_t RESceneAssetIsCompatibleWithVersion(uint64_t a1, const re::AssetHandle *a2)
{
  if (a1)
  {
    re::AssetAPIHelper::assetHandleCreate(a1, v5);
    isSceneAssetCompatibleWithVersion = re::AssetCompatibility::isSceneAssetCompatibleWithVersion(v5, a2);
    re::AssetHandle::~AssetHandle(v5);
    return isSceneAssetCompatibleWithVersion;
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "scene", "RESceneAssetIsCompatibleWithVersion", 14);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t REAssetManagerSceneAssetCopyCompatibilityVariant(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    re::AssetAPIHelper::assetHandleCreate(a2, v8);
    re::AssetCompatibility::sceneAssetCopyCompatibilityVariant(v8, a3);
    v4 = v7[0];
    v5 = (v7[0] + 8);
    re::AssetHandle::~AssetHandle(v7);
    re::AssetHandle::~AssetHandle(v8);
    return v4;
  }

  else
  {
    re::internal::assertLog(4, 0, "assertion failure: '%s' (%s:line %i) ", "scene", "REAssetManagerSceneAssetCopyCompatibilityVariant", 22);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

re::ecs2::Scene *RESceneCreate(_anonymous_namespace_ *a1)
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  v4 = 0;
  v5 = &str_67;
  v2 = re::make::shared::object<re::ecs2::Scene,re::StringID>(&v4, &v6);
  if (v4)
  {
    if (v4)
    {
    }
  }

  return v6;
}

uint64_t RESceneAddDefaultSystems(uint64_t a1)
{
  if (a1)
  {
    v2 = (a1 + 8);
    re::ecs2::ComponentHelper::deprecatedAddDefaultSystems(a1, v3);
  }

  return 1;
}

uint64_t RESceneAddEngineSystem(void *a1, re::DeformerFeatureFlags *a2)
{
  v3 = a2;
  v20 = 0;
  EngineSystemTypeIDs = _REECSManagerGetEngineSystemTypeIDs(a2, &v20);
  if (EngineSystemTypeIDs)
  {
    v6 = EngineSystemTypeIDs;
    for (i = 0; i != v6; ++i)
    {
      v19 = v20[i];
      if (v19.n128_u64[0])
      {
        v18 = v20[i];
        re::DynamicArray<re::TypeID>::indexOf((a1 + 8), &v18, v15);
        if ((v15[0] & 1) == 0)
        {
          if (v3 != 58)
          {
            v8 = re::ecs2::RenderingSystem::renderingSubsystemTypes(v15);
            if (v16)
            {
              v9 = v17;
              v10 = 8 * v16;
              while (1)
              {
                v11 = *v9;
                if (*(*v9 + 32) == v19.n128_u64[0] && __PAIR64__(*(v11 + 42), *(v11 + 40)) == __PAIR64__(HIWORD(v19.n128_u32[2]), v19.n128_u16[4]) && ((*(v11 + 44) ^ v19.n128_u32[3]) & 0xFFFFFF) == 0)
                {
                  break;
                }

                ++v9;
                v10 -= 8;
                if (!v10)
                {
                  goto LABEL_12;
                }
              }

              v13 = re::DeformerFeatureFlags::enableAppDeformation(v8) ? RESceneAddEngineSystem(a1, 105) : 1;
              v12 = 0;
              v2 = v13 & RESceneAddEngineSystem(a1, 58);
            }

            else
            {
LABEL_12:
              v12 = 1;
            }

            if (v15[0] && v17)
            {
              (*(*v15[0] + 40))();
            }

            if (!v12)
            {
              return v2 & 1;
            }
          }

          re::ecs2::Scene::deprecatedAddSystem(a1, &v19);
        }
      }
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void RESceneAddEntity(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 104);
  v4 = a2;
  if (a2)
  {
    v3 = (a2 + 8);
  }

  re::Collection<re::SharedPtr<re::ecs2::Entity>>::add((v2 + 320), &v4);
  if (v4)
  {
  }
}

void RESceneRemoveEntity(uint64_t a1, uint64_t a2)
{
  v4 = dyld_program_sdk_at_least();
  v5 = *(a1 + 104);
  if (v4)
  {
    v9 = a2;
    if (a2)
    {
      v6 = (a2 + 8);
      re::ecs2::EntityChildCollection::remove((v5 + 320), &v9);
      v7 = (a2 + 8);
LABEL_8:

      return;
    }

    re::ecs2::EntityChildCollection::remove((v5 + 320), &v9);
  }

  else
  {
    v9 = a2;
    if (a2)
    {
      v8 = (a2 + 8);
    }

    re::Collection<re::SharedPtr<re::ecs2::Entity>>::removeStable(v5 + 320, &v9);
    if (v9)
    {
      v7 = (v9 + 8);
      goto LABEL_8;
    }
  }
}

void RESceneSetEntityAtIndex(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 104);
  if (a3)
  {
    v6 = (a3 + 8);
  }

  v7 = *(v5 + 344);
  if (v7 <= a2)
  {
    v13 = 0;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v14 = 136315906;
    *&v14[4] = "operator[]";
    v15 = 1024;
    v16 = 789;
    v17 = 2048;
    v18 = a2;
    v19 = 2048;
    v20 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v8 = *(*(v5 + 360) + 8 * a2);
  *v14 = v8;
  if (v8)
  {
    v9 = (v8 + 8);
  }

  v13 = a3;
  if (a3)
  {
    v10 = (a3 + 8);
  }

  v11 = (*(*(v5 + 320) + 40))(v5 + 320, a2, &v13);
  if (*(v5 + 344) <= a2)
  {
    v12 = *re::foundationCoreLogObjects(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0]) = 136315394;
      *(buf + 4) = "void re::Collection<re::SharedPtr<re::ecs2::Entity>>::set(size_t, const T &) [T = re::SharedPtr<re::ecs2::Entity>]";
      WORD6(buf[0]) = 2048;
      *(buf + 14) = a2;
      _os_log_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_DEFAULT, "%s: index %zu invalid after willSet(), not setting", buf, 0x16u);
    }
  }

  else
  {
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((*(v5 + 360) + 8 * a2), v13);
    ++*(v5 + 352);
    (*(*(v5 + 320) + 64))(v5 + 320, a2, v14, &v13);
  }

  if (v13)
  {
  }

  if (*v14)
  {
  }

  if (a3)
  {
  }
}

uint64_t RESceneFindEntity(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  result = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(a1 + 152, &v3);
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

_anonymous_namespace_ *RESceneFindEntityByName(_anonymous_namespace_ *a1, const char *a2)
{
  v2 = *(a1 + 13);
  v3 = *(v2 + 344);
  if (!v3)
  {
    return 0;
  }

  v5 = *(v2 + 360);
  v6 = 8 * v3;
  while (1)
  {
    v7 = *v5;
    *&v10.var0 = 0;
    v10.var1 = &str_67;
    a1 = re::ecs2::Entity::findInHierarchyByName(v7, &v10);
    v8 = a1;
    if (*&v10.var0)
    {
      if (*&v10.var0)
      {
      }
    }

    *&v10.var0 = 0;
    v10.var1 = &str_67;
    if (v8)
    {
      break;
    }

    ++v5;
    v6 -= 8;
    if (!v6)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t RESceneGetECSManager(uint64_t a1)
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return *(a1 + 56);
}

uint64_t RESceneGetECSManagerNullable(uint64_t a1)
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return *(a1 + 56);
}

uint64_t RESceneGetOrCreateCAContext()
{
  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v0 = CoreRELog::log;
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1E1C61000, v0, OS_LOG_TYPE_DEFAULT, "RESceneGetOrCreateCAContext is deprecated. Use RECALayerServiceGetOrCreateCAContext.", v2, 2u);
  }

  return 0;
}

uint64_t RESceneGetOrCreateCAContextWithOptions()
{
  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v0 = CoreRELog::log;
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1E1C61000, v0, OS_LOG_TYPE_DEFAULT, "RESceneGetOrCreateCAContextWithOptions is deprecated. Use RECALayerServiceGetOrCreateCAContextWithOptions.", v2, 2u);
  }

  return 0;
}

void RESceneInvalidateAndReleaseCAContext()
{
  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v0 = CoreRELog::log;
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1E1C61000, v0, OS_LOG_TYPE_DEFAULT, "RESceneInvalidateAndReleaseCAContext is deprecated. Use RECALayerServiceInvalidateAndReleaseCAContext.", v1, 2u);
  }
}

uint64_t RESceneCopyEntitiesArray(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 104);
  re::make::shared::object<re::Shareable<re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>>>(v7);
  v2 = v7[0];
  re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(v7[0] + 24, *(v1 + 344));
  if (*(v1 + 344))
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(v2 + 40);
      if (v5 <= v4)
      {
        v7[1] = 0;
        v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        v18 = 0u;
        v16 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v8 = 136315906;
        v9 = "operator[]";
        v10 = 1024;
        v11 = 789;
        v12 = 2048;
        v13 = v4;
        v14 = 2048;
        v15 = v5;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((*(v2 + 56) + v3), *(*(v1 + 360) + 8 * v4++));
      v3 += 8;
    }

    while (v4 < *(v1 + 344));
  }

  return v2;
}

uint64_t RESceneCopyAllEntitiesArray(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 144);
  v2 = *(a1 + 128);
  re::make::shared::object<re::Shareable<re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>>>(v11);
  v3 = v11[0];
  re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(v11[0] + 24, v2);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v5 = *(v1 + 8 * i);
      if (v5)
      {
        v6 = (v5 + 8);
      }

      v7 = *(v3 + 40);
      if (v7 <= i)
      {
        v11[1] = 0;
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v20 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v12 = 136315906;
        v13 = "operator[]";
        v14 = 1024;
        v15 = 789;
        v16 = 2048;
        v17 = i;
        v18 = 2048;
        v19 = v7;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v8 = *(v3 + 56);
      v9 = *(v8 + 8 * i);
      *(v8 + 8 * i) = v5;
      if (v9)
      {
      }
    }
  }

  return v3;
}

uint64_t REEntityArrayGet(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 40) <= a2)
  {
    return 0;
  }

  else
  {
    return *(*(a1 + 56) + 8 * a2);
  }
}

void RESceneAddLatencyEvent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[0] = 0;
  SceneDataEntity = makeSceneDataEntity(a1, v7, 1, re::ecs2::Scene::kSharedSceneDataEntityID, 1);
  v6 = re::ecs2::EntityComponentCollection::getOrAdd((SceneDataEntity + 48), re::ecs2::ComponentImpl<re::ecs2::LatencyEventsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);

  re::ecs2::LatencyEventsComponent::addLatencyEvent(v6, a2, a3);
}

void *RESceneGetComponentsOfClass(uint64_t a1, const re::ecs2::ComponentTypeBase *a2)
{
  v2 = re::ecs2::SceneComponentTable::get((a1 + 200), a2);
  if (v2 && *(v2 + 384))
  {
    return *(v2 + 400);
  }

  else
  {
    return &RESceneGetComponentsOfClass::EmptyResult;
  }
}

void *RESceneGetComponentsOfType(uint64_t a1, int a2)
{
  v3 = REComponentClassFromType(a2);
  v4 = re::ecs2::SceneComponentTable::get((a1 + 200), v3);
  if (v4 && *(v4 + 384))
  {
    return *(v4 + 400);
  }

  else
  {
    return &RESceneGetComponentsOfClass::EmptyResult;
  }
}

void *RESceneGetComponentsOfCustomType(uint64_t a1, const re::ecs2::ComponentTypeBase *a2)
{
  v2 = re::ecs2::SceneComponentTable::get((a1 + 200), a2);
  if (v2 && *(v2 + 384))
  {
    return *(v2 + 400);
  }

  else
  {
    return &RESceneGetComponentsOfClass::EmptyResult;
  }
}

uint64_t RESceneInitializeComponentCollectionPosition(_anonymous_namespace_ *a1, const char *a2, void *a3)
{
  v14 = 0;
  v15 = &str_67;
  v7 = re::ecs2::ComponentTypeRegistry::instance(v6);
  v8 = re::ecs2::ComponentTypeRegistry::componentTypeWithName(v7, &v14);
  if (v8 && (v9 = v8[8], *(a1 + 28) > v9) && (v10 = *(*(a1 + 30) + 8 * v9)) != 0)
  {
    v11 = *(v10 + 384);
    *a3 = v10;
    a3[1] = v11;
    a3[2] = 0;
    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  if (v14)
  {
    if (v14)
    {
    }
  }

  return v12;
}

uint64_t *RESceneDereferenceComponentCollectionPosition(uint64_t *result)
{
  if (result)
  {
    v1 = *result;
    if (*result && (v2 = result[2], v2 < result[1]))
    {
      if (*(v1 + 384) <= v2)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      return *(*(v1 + 400) + 8 * v2);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *RESceneGetNetworkComponent(void *result)
{
  if (result)
  {
    v1 = result;
    result = result[7];
    if (result)
    {
      if ((*(*result + 184))(result) == 1)
      {
        return *(v1[13] + 216);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t RESceneSaveToFileWithOptions(re::ecs2::ECSSerialization *a1, re::ecs2::Scene *a2, char *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = open(a3, 1537, 384);
  if (v6 == -1)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v9 = CoreRELog::log;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = *__error();
      v12 = __error();
      v13 = strerror(*v12);
      *buf = 136315650;
      *&buf[4] = a3;
      *&buf[12] = 1024;
      *&buf[14] = v11;
      *&buf[18] = 2080;
      v15 = v13;
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Failed to open file %s for writing. Error code: %i, Error: %s", buf, 0x1Cu);
    }

    return 0;
  }

  else
  {
    *buf = &unk_1F5CAC818;
    *&buf[8] = &unk_1F5CAC860;
    *&buf[16] = v6;
    LOWORD(v15) = 0;
    HIDWORD(v15) = 0;
    v16 = &unk_1F5CAC9D0;
    v17 = &buf[8];
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0x2000;
    v22 = 0;
    v8 = re::ecs2::ECSSerialization::saveToStream(a1, a2, buf, v7);
    google::protobuf::io::FileOutputStream::~FileOutputStream(buf);
  }

  return v8;
}

uint64_t RESceneLoadFromFile(re *a1, AssetService *a2, char *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = open(a3, 0);
  if (v6 == -1)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v8 = CoreRELog::log;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = *__error();
      v11 = __error();
      v12 = strerror(*v11);
      *v13 = 136315650;
      *&v13[4] = a3;
      *&v13[12] = 1024;
      *&v13[14] = v10;
      *&v13[18] = 2080;
      v14 = v12;
      _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "Failed to open file %s for reading. Error code: %i, Error: %s", v13, 0x1Cu);
    }

    return 0;
  }

  else
  {
    *v13 = &unk_1F5CAC7A8;
    *&v13[8] = &unk_1F5CAC7E8;
    *&v13[16] = v6;
    LOWORD(v14) = 0;
    HIDWORD(v14) = 0;
    v15 = 0;
    v16[0] = &unk_1F5CAC990;
    v16[1] = &v13[8];
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0x2000;
    v21 = 0;
    v22 = 0;
    v7 = re::ecs2::ECSSerialization::loadFromStream(a1, a2, v13);
    *v13 = &unk_1F5CAC7A8;
    google::protobuf::io::CopyingInputStreamAdaptor::~CopyingInputStreamAdaptor(v16);
    google::protobuf::io::FileInputStream::CopyingFileInputStream::~CopyingFileInputStream(&v13[8]);
  }

  return v7;
}

CFTypeRef RESceneSaveToStreamWithOptions(re::ecs2::ECSSerialization *a1, re::ecs2::Scene *a2)
{
  re::CFDataBufferedOutputStream::CFDataBufferedOutputStream(&v7, -1);
  if (re::ecs2::ECSSerialization::saveToStream(a1, a2, &v7, v4))
  {
    v8 = 0;
    google::protobuf::io::CopyingOutputStreamAdaptor::Flush(&v10);
    v5 = *v9;
    CFRetain(*v9);
  }

  else
  {
    v5 = 0;
  }

  re::CFDataBufferedOutputStream::~CFDataBufferedOutputStream(&v7);
  return v5;
}

uint64_t RESceneLoadFromStream(re *a1, AssetService *a2, CFDataRef theData)
{
  v17 = theData;
  Length = CFDataGetLength(theData);
  v10 = 0;
  v11 = &v17;
  v9 = &unk_1F5D0AA38;
  v12 = &unk_1F5CAC908;
  BytePtr = CFDataGetBytePtr(theData);
  v14 = Length;
  v15 = Length;
  v16 = 0;
  v7 = re::ecs2::ECSSerialization::loadFromStream(a1, a2, &v9);
  re::internal::MemoryInputStream<__CFData const*>::~MemoryInputStream(&v9);
  return v7;
}

uint64_t RESceneLoadFromAsset(re::ecs2::ECSSerialization *a1, AssetService *a2, uint64_t a3)
{
  re::AssetAPIHelper::assetHandleCreate(a3, &v8);
  v6 = re::ecs2::ECSSerialization::loadFromAsset(a1, a2, &v8, v5);
  re::AssetHandle::~AssetHandle(&v8);
  return v6;
}

uint64_t REEntitySubtreeLoadFromAsset(re::ecs2::ECSSerialization *a1, AssetService *a2, uint64_t a3)
{
  re::AssetAPIHelper::assetHandleCreate(a3, &v8);
  v6 = re::ecs2::ECSSerialization::loadFromAsset(a1, a2, &v8, v5);
  re::AssetHandle::~AssetHandle(&v8);
  return v6;
}

uint64_t REEntitySubtreeAddNetworkComponentRecursive(uint64_t result)
{
  v1 = result;
  if (!*(result + 216))
  {
    result = re::ecs2::EntityComponentCollection::add((result + 48), re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  }

  v2 = *(v1 + 344);
  if (v2)
  {
    v3 = *(v1 + 360);
    v4 = 8 * v2;
    do
    {
      v5 = *v3++;
      result = REEntitySubtreeAddNetworkComponentRecursive(v5);
      v4 -= 8;
    }

    while (v4);
  }

  return result;
}

uint64_t RESceneAddNetworkComponentRecursive(uint64_t result)
{
  v1 = *(result + 104);
  v2 = *(v1 + 344);
  if (v2)
  {
    v3 = *(v1 + 360);
    v4 = 8 * v2;
    do
    {
      v5 = *v3++;
      result = REEntitySubtreeAddNetworkComponentRecursive(v5);
      v4 -= 8;
    }

    while (v4);
  }

  return result;
}

uint64_t RESceneIsFromActiveRealityRendererSceneGroup(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 56);
    v2 = *(result + 376);
    if (v1)
    {
      v3 = (v2 & 0xFFFFFF00000000) == 0;
    }

    else
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }

    v4 = (*(*v1 + 328))(*(result + 56));
    if (v4 == v2 && ((v4 ^ v2) & 0xFFFFFF00000000) == 0)
    {
      return 1;
    }

    else
    {
      if (*((*(*v1 + 304))(v1, v2) + 8) == 2)
      {
        return 0;
      }

      v6 = (*(*v1 + 328))(v1);
      return *((*(*v1 + 304))(v1, v6) + 8) != 2;
    }
  }

  return result;
}

BOOL RESceneIsFromDefaultRealityRendererSceneGroup(_BOOL8 result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 56);
    v3 = *(v1 + 376) & 0xFFFFFF00000000;
    if (v2)
    {
      v4 = v3 == 0;
    }

    else
    {
      v4 = 1;
    }

    return !v4 && *((*(*v2 + 304))(v2) + 8) < 2u;
  }

  return result;
}

uint64_t RESceneGetIsRenderingShared()
{
  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v0 = CoreRELog::log;
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1E1C61000, v0, OS_LOG_TYPE_DEFAULT, "Shared rendering for scenes support was removed. New approach is tracked under rdar://84507919", v2, 2u);
  }

  return 0;
}

void RESceneSetIsRenderingShared()
{
  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v0 = CoreRELog::log;
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1E1C61000, v0, OS_LOG_TYPE_DEFAULT, "Shared rendering for scenes support was removed. New approach is tracked under rdar://84507919", v1, 2u);
  }
}

uint64_t RESceneComponentTypeAddCallbacks(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = re::globalAllocators(a1);
  v13 = (*(*v12[2] + 32))(v12[2], 64, 8);
  v14 = REComponentClassFromType(a2);
  *v13 = a1;
  *(v13 + 8) = v14;
  *(v13 + 16) = 0;
  *(v13 + 24) = a3;
  *(v13 + 32) = a4;
  *(v13 + 40) = a5;
  *(v13 + 48) = a6;
  *(v13 + 56) = 0;
  v15 = re::ecs2::SceneComponentTable::get((a1 + 200), v14);
  re::ecs2::SceneComponentCollectionCallbacks::subscribe(v13, v15);
  return v13;
}

uint64_t RESceneComponentTypeAddCallbacksWithContext(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = REComponentClassFromType(a2);

  return RESceneComponentClassAddCallbacksWithContext(a1, v13, a3, a4, a5, a6, a7);
}

uint64_t RESceneComponentClassAddCallbacksWithContext(uint64_t a1, const re::ecs2::ComponentTypeBase *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = re::globalAllocators(a1);
  v15 = (*(*v14[2] + 32))(v14[2], 64, 8);
  *v15 = a1;
  *(v15 + 8) = a2;
  *(v15 + 16) = 1;
  *(v15 + 24) = a3;
  *(v15 + 32) = a4;
  *(v15 + 40) = a5;
  *(v15 + 48) = a6;
  *(v15 + 56) = a7;
  v16 = re::ecs2::SceneComponentTable::get((a1 + 200), a2);
  re::ecs2::SceneComponentCollectionCallbacks::subscribe(v15, v16);
  return v15;
}

re *RESceneComponentTypeRemoveCallbacks(re *result)
{
  if (result)
  {
    v1 = result;
    v2 = re::globalAllocators(result)[2];
    v3 = re::ecs2::SceneComponentTable::get((*v1 + 200), v1[1]);
    re::ecs2::SceneComponentCollectionCallbacks::unsubscribe(v1, v3);
    v4 = *(*v2 + 40);

    return v4(v2, v1);
  }

  return result;
}

uint64_t RESceneGetEntityStatisticsForPeer(uint64_t a1, uint64_t a2, __CFDictionary *a3)
{
  v4 = *(a1 + 56);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = (*(*v4 + 32))(v4);
  v8 = re::ServiceLocator::serviceOrNull<re::NetworkSystem>(v7);
  if (!v8)
  {
    return 0xFFFFFFFFLL;
  }

  *&v46 = a2;
  v9 = re::HashTable<unsigned long long,re::NetworkSystem::LocalPeer,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v8 + 3040, &v46);
  if (!v9)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = v9;
  if (!a3)
  {
    return *(v10 + 188);
  }

  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  v49 = 0x7FFFFFFFLL;
  v45 = *(v9 + 192);
  if (v45)
  {
    v11 = 0;
    v12 = *(v9 + 176);
    while (1)
    {
      v13 = *v12;
      v12 += 8;
      if (v13 < 0)
      {
        break;
      }

      if (v45 == ++v11)
      {
        LODWORD(v11) = *(v9 + 192);
        break;
      }
    }
  }

  else
  {
    LODWORD(v11) = 0;
  }

  if (v11 == v45)
  {
    goto LABEL_60;
  }

  v44 = a3;
  do
  {
    v50 = *(*(v10 + 176) + 32 * v11 + 8);
    v15 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(a1 + 152, &v50);
    if (!v15)
    {
      v16 = *(a1 + 104);
      if (v16[39] != v50)
      {
        goto LABEL_34;
      }

LABEL_19:
      v17 = v16[9];
      if (!v17)
      {
        goto LABEL_34;
      }

      v18 = v16[11];
      v19 = &v18[v17];
      while (1)
      {
        v20 = *v18;
        if (*v18)
        {
          v21 = (v20 + 8);
        }

        if ((*((*(*v20 + 40))(v20) + 40) & 8) == 0)
        {
          goto LABEL_33;
        }

        v22 = (*(*v20 + 40))(v20);
        v23 = v22;
        v24 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v22 ^ (v22 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v22 ^ (v22 >> 30))) >> 27));
        v25 = v24 ^ (v24 >> 31);
        if (v46)
        {
          v26 = v25 % DWORD2(v47);
          v27 = *(*(&v46 + 1) + 4 * v26);
          if (v27 != 0x7FFFFFFF)
          {
            while (*(v47 + 32 * v27 + 8) != v22)
            {
              v27 = *(v47 + 32 * v27) & 0x7FFFFFFF;
              if (v27 == 0x7FFFFFFF)
              {
                goto LABEL_30;
              }
            }

            v31 = v47 + 32 * v27;
            v32 = *(v31 + 16);
            v29 = (v31 + 16);
            v30 = v32 + 1;
            goto LABEL_32;
          }
        }

        else
        {
          LODWORD(v26) = 0;
        }

LABEL_30:
        v28 = re::HashTable<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true> const*,unsigned int,re::Hash<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true> const*>,re::EqualTo<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true> const*>,true,false>::allocEntry(&v46, v26, v25);
        *(v28 + 16) = 0;
        v29 = (v28 + 16);
        *(v29 - 1) = v23;
        ++HIDWORD(v49);
        v30 = 1;
LABEL_32:
        *v29 = v30;
LABEL_33:

        if (++v18 == v19)
        {
          goto LABEL_34;
        }
      }
    }

    v16 = *(v15 + 8);
    if (v16)
    {
      goto LABEL_19;
    }

LABEL_34:
    v33 = *(v10 + 192);
    if (v33 <= v11 + 1)
    {
      v33 = v11 + 1;
    }

    while (v33 - 1 != v11)
    {
      LODWORD(v11) = v11 + 1;
      if ((*(*(v10 + 176) + 32 * v11) & 0x80000000) != 0)
      {
        goto LABEL_40;
      }
    }

    LODWORD(v11) = v33;
LABEL_40:
    ;
  }

  while (v11 != v45);
  if (HIDWORD(v47))
  {
    v34 = v48;
    if (v48)
    {
      v35 = 0;
      v36 = v47;
      while (1)
      {
        v37 = *v36;
        v36 += 8;
        if (v37 < 0)
        {
          break;
        }

        if (v48 == ++v35)
        {
          LODWORD(v35) = v48;
          break;
        }
      }
    }

    else
    {
      LODWORD(v35) = 0;
    }

    if (v35 != v48)
    {
      v38 = *MEMORY[0x1E695E480];
      v39 = v47;
      do
      {
        v40 = v39 + 32 * v35;
        v41 = CFStringCreateWithCString(v38, *(*(v40 + 8) + 32), 0x8000100u);
        v42 = CFNumberCreate(v38, kCFNumberIntType, (v40 + 16));
        CFDictionaryAddValue(v44, v41, v42);
        if (v48 <= v35 + 1)
        {
          v43 = v35 + 1;
        }

        else
        {
          v43 = v48;
        }

        v39 = v47;
        while (v43 - 1 != v35)
        {
          LODWORD(v35) = v35 + 1;
          if ((*(v47 + 32 * v35) & 0x80000000) != 0)
          {
            goto LABEL_59;
          }
        }

        LODWORD(v35) = v43;
LABEL_59:
        ;
      }

      while (v35 != v34);
    }
  }

LABEL_60:
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(&v46);
  return *(v10 + 188);
}

void re::make::shared::object<re::Shareable<re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>>>(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 64, 8);
  ArcSharedObject::ArcSharedObject(v3, 0);
  *(v3 + 24) = 0;
  *v3 = &unk_1F5D2E878;
  *(v3 + 56) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *a1 = v3;
}

void *re::Shareable<re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>>::~Shareable(void *a1)
{
  *a1 = &unk_1F5D2E878;
  re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit((a1 + 3));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::Shareable<re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>>::~Shareable(void *a1)
{
  *a1 = &unk_1F5D2E878;
  re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit((a1 + 3));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void *REUIShadowConfigurationComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::UIShadowConfigurationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
}

void *REMaterialAssetBuilderCreate(re *a1)
{
  v1 = re::globalAllocators(a1);
  v2 = (*(*v1[2] + 32))(v1[2], 944, 8);
  bzero(v2, 0x3B0uLL);
  ArcSharedObject::ArcSharedObject(v2, 0);
  *v2 = &unk_1F5D2E8D0;
  *(v2 + 5) = 0u;
  *(v2 + 3) = 0u;
  re::DynamicString::setCapacity(v2 + 3, 0);
  *(v2 + 22) = 0;
  *(v2 + 9) = 0u;
  *(v2 + 7) = 0u;
  *(v2 + 6) = 0u;
  *(v2 + 7) = 0u;
  *(v2 + 124) = 0u;
  *(v2 + 140) = 0x7FFFFFFFLL;
  *(v2 + 152) = 0;
  *(v2 + 154) = 0;
  *(v2 + 156) = 0;
  *(v2 + 158) = 0;
  *(v2 + 160) = 0;
  *(v2 + 162) = 0;
  *(v2 + 164) = 0;
  *(v2 + 166) = 0;
  *(v2 + 168) = 0;
  *(v2 + 170) = 0;
  *(v2 + 11) = 0u;
  *(v2 + 12) = 0u;
  *(v2 + 52) = 0;
  *(v2 + 212) = 0x7FFFFFFFLL;
  *(v2 + 14) = 0u;
  *(v2 + 15) = 0u;
  *(v2 + 64) = 0;
  *(v2 + 260) = 0x7FFFFFFFLL;
  *(v2 + 17) = 0u;
  *(v2 + 18) = 0u;
  *(v2 + 76) = 0;
  *(v2 + 308) = 0x7FFFFFFFLL;
  *(v2 + 20) = 0u;
  *(v2 + 21) = 0u;
  *(v2 + 88) = 0;
  *(v2 + 356) = 0x7FFFFFFFLL;
  *(v2 + 23) = 0u;
  *(v2 + 24) = 0u;
  *(v2 + 100) = 0;
  *(v2 + 404) = 0x7FFFFFFFLL;
  re::ecs2::SerializableMaterialParameterBlock::SerializableMaterialParameterBlock((v2 + 52));
  *(v2 + 936) = 0;
  return v2;
}

uint64_t REMaterialAssetBuilderSetName(uint64_t a1, const char *a2)
{
  re::DynamicString::operator=((a1 + 24), &v5);
  result = v5;
  if (v5)
  {
    if (v6)
    {
      return (*(*v5 + 40))();
    }
  }

  return result;
}

void REMaterialAssetBuilderSetMaterialDefinition(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = (a2 + 8);
  }

  v5 = *(a1 + 56);
  if (v5)
  {
  }

  *(a1 + 56) = a2;
}

uint64_t REMaterialAssetBuilderSetFunctionConstant(_anonymous_namespace_ *a1, char *a2, const char *a3)
{
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(a1 + 104, a2, &v7);
  result = v7;
  if (v7)
  {
    if (v8)
    {
      return (*(*v7 + 40))();
    }
  }

  return result;
}

uint64_t REMaterialAssetBuilderSetDefaultCustomMaterialWrappingFunctionConstants(_anonymous_namespace_ *a1)
{
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(a1 + 104, "EnableSurfaceShaderWithCustomParams", &v12);
  v2 = v12;
  if (v12 && (v13 & 1) != 0)
  {
    v2 = (*(*v12 + 40))();
  }

  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(a1 + 104, "EnableGeometryModifierWithCustomParams", &v12);
  v3 = v12;
  if (v12 && (v13 & 1) != 0)
  {
    v3 = (*(*v12 + 40))();
  }

  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(a1 + 104, "EnableSurfaceShaderPremultipliedOutput", &v12);
  v4 = v12;
  if (v12 && (v13 & 1) != 0)
  {
    v4 = (*(*v12 + 40))();
  }

  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(a1 + 104, "EnableSurfaceShaderVideo", &v12);
  v5 = v12;
  if (v12 && (v13 & 1) != 0)
  {
    v5 = (*(*v12 + 40))();
  }

  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(a1 + 104, "CAEdgeSpecularMode", &v12);
  v6 = v12;
  if (v12 && (v13 & 1) != 0)
  {
    v6 = (*(*v12 + 40))();
  }

  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(a1 + 104, "EnablePlatterFakeFresnel", &v12);
  v7 = v12;
  if (v12 && (v13 & 1) != 0)
  {
    v7 = (*(*v12 + 40))();
  }

  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(a1 + 104, "MatchUnlitColor", &v12);
  v8 = v12;
  if (v12 && (v13 & 1) != 0)
  {
    v8 = (*(*v12 + 40))();
  }

  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(a1 + 104, "EnableDitherFadeOverride", &v12);
  v9 = v12;
  if (v12 && (v13 & 1) != 0)
  {
    v9 = (*(*v12 + 40))();
  }

  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(a1 + 104, "SurfaceShaderAttributeSet", &v12);
  v10 = v12;
  if (v12 && (v13 & 1) != 0)
  {
    v10 = (*(*v12 + 40))();
  }

  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(a1 + 104, "EnableBarycentricCoordinates", &v12);
  result = v12;
  if (v12)
  {
    if (v13)
    {
      return (*(*v12 + 40))();
    }
  }

  return result;
}

uint64_t REMaterialAssetBuilderSetMTLCullMode(uint64_t result, char a2)
{
  if ((*(result + 154) & 1) == 0)
  {
    *(result + 154) = 1;
  }

  *(result + 155) = a2;
  return result;
}

uint64_t REMaterialAssetBuilderSetNeedsVCABlur(uint64_t result, char a2)
{
  if ((*(result + 168) & 1) == 0)
  {
    *(result + 168) = 1;
  }

  *(result + 169) = a2;
  return result;
}

uint64_t REMaterialAssetBuilderSetNeedsPassthroughBlur(uint64_t result, char a2)
{
  if ((*(result + 166) & 1) == 0)
  {
    *(result + 166) = 1;
  }

  *(result + 167) = a2;
  return result;
}

uint64_t REMaterialAssetBuilderSetNeedsVisualDepthTexture(uint64_t result, char a2)
{
  if ((*(result + 170) & 1) == 0)
  {
    *(result + 170) = 1;
  }

  *(result + 171) = a2;
  return result;
}

uint64_t REFunctionLinkBuilderCreate(re *a1)
{
  v1 = re::globalAllocators(a1);
  v2 = (*(*v1[2] + 32))(v1[2], 296, 8);
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0u;
  *(v2 + 160) = 0u;
  *(v2 + 176) = 0u;
  *(v2 + 192) = 0u;
  *(v2 + 208) = 0u;
  *(v2 + 224) = 0u;
  *(v2 + 240) = 0u;
  *(v2 + 256) = 0u;
  *(v2 + 272) = 0u;
  *(v2 + 288) = 0;
  *(v2 + 64) = 0u;
  *(v2 + 32) = 0u;
  ArcSharedObject::ArcSharedObject(v2, 0);
  *v2 = &unk_1F5D2E918;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  v4 = re::DynamicString::setCapacity((v2 + 32), 0);
  *(v2 + 80) = 0u;
  *(v2 + 64) = 0u;
  re::DynamicString::setCapacity((v2 + 64), 0);
  *(v2 + 180) = 0u;
  *(v2 + 168) = 0u;
  *(v2 + 152) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0;
  *(v2 + 196) = 0x7FFFFFFFLL;
  *(v2 + 208) = 0u;
  *(v2 + 224) = 0u;
  *(v2 + 240) = 0;
  *(v2 + 244) = 0x7FFFFFFFLL;
  *(v2 + 288) = 0;
  *(v2 + 264) = 0;
  *(v2 + 272) = 0;
  *(v2 + 256) = 0;
  *(v2 + 280) = 0;
  return v2;
}

re::DynamicString *REFunctionLinkBuilderSetShaderFunctionName(uint64_t a1, char *__s)
{
  v4[0] = __s;
  v4[1] = strlen(__s);
  return re::DynamicString::operator=((a1 + 32), v4);
}

re::DynamicString *REFunctionLinkBuilderSetLinkedFunctionName(uint64_t a1, char *__s)
{
  v4[0] = __s;
  v4[1] = strlen(__s);
  return re::DynamicString::operator=((a1 + 64), v4);
}

void REFunctionLinkBuilderSetLinkedFunctionLibrary(uint64_t a1, uint64_t a2)
{
  re::AssetAPIHelper::assetHandleCreate(a2, &v5);
  v3 = *(a1 + 96);
  *(a1 + 96) = v5;
  v5 = v3;
  v4 = *(a1 + 112);
  *(a1 + 112) = v6;
  v6 = v4;
  re::AssetHandle::~AssetHandle(&v5);
}

void *REFunctionLinkBuilderSetLinkedShaderAPIs(void *result, int *a2, unint64_t a3)
{
  v3 = a3;
  v5 = result;
  if (result[16] >= a3)
  {
    if (!a3)
    {
      return result;
    }
  }

  else
  {
    re::DynamicArray<re::EvaluationCommand>::setCapacity(result + 15, a3);
  }

  do
  {
    v6 = *a2++;
    v7 = v6;
    result = re::DynamicArray<re::ShaderAPIFlags::Values>::add(v5 + 15, &v7);
    --v3;
  }

  while (v3);
  return result;
}

uint64_t REFunctionLinkBuilderSetFunctionConstant(_anonymous_namespace_ *a1, char *a2, const char *a3)
{
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addNew<void>(a1 + 160, a2, &v7);
  result = v7;
  if (v7)
  {
    if (v8)
    {
      return (*(*v7 + 40))();
    }
  }

  return result;
}

void REFunctionLinkBuilderSetFunctionConstantValues(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 newNamedConstantArray];
  if ([v4 count])
  {
    v5 = 0;
    do
    {
      v6 = [v4 objectAtIndex:v5];
      v7 = [v6 name];
      v8 = [v7 cStringUsingEncoding:4];

      re::FunctionLink::appendFunctionConstant(a1 + 24, v19, [v6 data], objc_msgSend(v6, "dataType"));
      if (*&v19[0])
      {
        if (BYTE8(v19[0]))
        {
          (*(**&v19[0] + 40))();
        }

        memset(v19, 0, sizeof(v19));
      }

      ++v5;
    }

    while (v5 < [v4 count]);
  }

  v10 = [v3 newIndexedConstantArray];
  if ([v10 count])
  {
    v11 = 0;
    do
    {
      v12 = [v10 objectAtIndex:v11];
      v13 = [v12 index];
      if (v13 > 0x10000)
      {
        v15 = *re::graphicsLogObjects(v13);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = v15;
          v17 = [v12 index];
          *__str = 134217984;
          v21 = v17;
          _os_log_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_DEFAULT, "Index %lu in function constant values was too large", __str, 0xCu);
        }
      }

      else
      {
        v14 = snprintf(__str, 6uLL, "%lu", [v12 index]);
        re::FunctionLink::appendFunctionConstant(a1 + 24, v18, [v12 data], objc_msgSend(v12, "dataType"));
        if (*&v18[0])
        {
          if (BYTE8(v18[0]))
          {
            (*(**&v18[0] + 40))();
          }

          memset(v18, 0, sizeof(v18));
        }
      }

      ++v11;
    }

    while (v11 < [v10 count]);
  }
}

uint64_t REMaterialAssetBuilderAddFunctionLinkBuilder(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 80);
  if (v4 >= *(a1 + 72))
  {
    re::DynamicArray<re::FunctionLink>::growCapacity((a1 + 64), v4 + 1);
    v4 = *(a1 + 80);
  }

  v5 = (*(a1 + 96) + 272 * v4);
  *v5 = *(a2 + 24);
  re::DynamicString::DynamicString((v5 + 8), (a2 + 32));
  re::DynamicString::DynamicString((v5 + 40), (a2 + 64));
  re::AssetHandle::AssetHandle((v5 + 72), (a2 + 96));
  re::DynamicArray<re::ShaderAPIFlags::Values>::DynamicArray((v5 + 96), (a2 + 120));
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable((v5 + 136), a2 + 160);
  re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable((v5 + 184), a2 + 208);
  result = re::DynamicArray<BOOL>::DynamicArray((v5 + 232), (a2 + 256));
  ++*(a1 + 80);
  ++*(a1 + 88);
  return result;
}

uint64_t REMaterialAssetBuilderAddFunctionLink(uint64_t a1, char a2, const char *a3, const char *a4, uint64_t a5, int *a6, unint64_t a7)
{
  v23[0] = 0;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  v14 = re::DynamicString::setCapacity(&v24, 0);
  *(&v28 + 1) = 0;
  v29 = 0uLL;
  re::DynamicString::setCapacity(&v28, 0);
  memset(v34, 0, sizeof(v34));
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0;
  v35 = 0x7FFFFFFFLL;
  memset(v36, 0, sizeof(v36));
  v37 = 0;
  v38 = 0x7FFFFFFFLL;
  v43 = 0;
  v40 = 0;
  v41 = 0;
  v39 = 0;
  v42 = 0;
  *&v21 = a3;
  *(&v21 + 1) = strlen(a3);
  re::DynamicString::operator=(&v24, &v21);
  v15 = strlen(a4);
  *&v21 = a4;
  *(&v21 + 1) = v15;
  re::DynamicString::operator=(&v28, &v21);
  re::AssetAPIHelper::assetHandleCreate(a5, &v21);
  v16 = v30;
  v30 = v21;
  v21 = v16;
  v17 = v31;
  *&v31 = v22;
  v22 = v17;
  re::AssetHandle::~AssetHandle(&v21);
  v23[0] = a2;
  if (v32 >= a7)
  {
    if (!a7)
    {
      goto LABEL_5;
    }
  }

  else
  {
    re::DynamicArray<re::EvaluationCommand>::setCapacity(&v31 + 1, a7);
  }

  do
  {
    v18 = *a6++;
    LODWORD(v21) = v18;
    re::DynamicArray<re::ShaderAPIFlags::Values>::add(&v31 + 1, &v21);
    --a7;
  }

  while (a7);
LABEL_5:
  re::DynamicArray<re::FunctionLink>::add((a1 + 64), v23);
  if (v39)
  {
    if (v43)
    {
      (*(*v39 + 40))();
    }

    v43 = 0;
    v40 = 0;
    v41 = 0;
    v39 = 0;
    ++v42;
  }

  re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v36);
  v19 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v34[8]);
  if (*(&v31 + 1))
  {
    if (*v34)
    {
      (*(**(&v31 + 1) + 40))(v19);
    }

    *v34 = 0;
    v32 = 0uLL;
    *(&v31 + 1) = 0;
    ++v33;
  }

  re::AssetHandle::~AssetHandle(&v30);
  if (v28)
  {
    if (BYTE8(v28))
    {
      (*(*v28 + 40))();
    }

    v29 = 0u;
    v28 = 0u;
  }

  result = v24;
  if (v24)
  {
    if (v25)
    {
      return (*(*v24 + 40))();
    }
  }

  return result;
}

uint64_t assetManagerMaterialAssetBuilderBuild(re *a1, uint64_t a2, uint64_t a3)
{
  v6 = re::globalAllocators(a1);
  v7 = (*(*v6[2] + 32))(v6[2], 1992, 8);
  bzero(v7, 0x7C8uLL);
  re::MaterialAsset::MaterialAsset(v7);
  re::DynamicString::operator=((v7 + 8), (a2 + 24));
  re::AssetAPIHelper::assetHandleCreate(*(a2 + 56), &v23);
  v8 = *(v7 + 40);
  *(v7 + 40) = v23;
  v23 = v8;
  v9 = *(v7 + 56);
  *(v7 + 56) = v24;
  v24 = v9;
  re::AssetHandle::~AssetHandle(&v23);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v7 + 304), a2 + 104);
  re::MaterialRenderFlags::operator=((v7 + 352), (a2 + 152));
  if (v7 + 376 != a2 + 64)
  {
    v11 = *(v7 + 376);
    v12 = *(a2 + 64);
    if (v11)
    {
      v13 = v12 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (!v13 && v11 != v12)
    {
      re::internal::assertLog(4, v10, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503);
      result = _os_crash();
      __break(1u);
      return result;
    }

    *(v7 + 376) = v12;
    *(a2 + 64) = v11;
    v15 = *(v7 + 384);
    *(v7 + 384) = *(a2 + 72);
    *(a2 + 72) = v15;
    v16 = *(v7 + 392);
    *(v7 + 392) = *(a2 + 80);
    *(a2 + 80) = v16;
    v17 = *(v7 + 408);
    *(v7 + 408) = *(a2 + 96);
    *(a2 + 96) = v17;
    ++*(a2 + 88);
    ++*(v7 + 400);
  }

  re::MaterialParameterData::operator=((v7 + 64), a2 + 176);
  *(v7 + 416) = *(a2 + 936);
  v18 = re::ecs2::SerializableMaterialParameterBlock::populateMaterialParameterDataInMaterialFileFromBlock((v7 + 8), a2 + 416);
  v19 = re::MaterialAsset::assetType(v18);
  (*(*a1 + 424))(&v23, a1, v7, v19, 0, 0, a3);
  v20 = v23;
  if (v23)
  {
    v21 = (v23 + 8);
  }

  re::AssetHandle::~AssetHandle(&v23);
  return v20;
}

void REMaterialAssetBuilderSetColor4F(uint64_t a1, char *a2, char a3, __n128 a4)
{
  v4 = a4;
  v5 = a3;
  re::ecs2::SerializableMaterialParameterBlock::setColorGamut4F(a1 + 416, a2, &v4);
}

unsigned __int8 *REMaterialAssetBuilderSetFloat2x2(uint64_t a1, char *a2, double a3, double a4)
{
  *v5 = a3;
  *&v5[1] = a4;
  return re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(a1 + 416, a2, 48, v5);
}

unsigned __int8 *REMaterialAssetBuilderSetFloat3x3(uint64_t a1, char *a2, __n128 a3, __n128 a4, __n128 a5)
{
  v6[0] = a3;
  v6[1] = a4;
  v6[2] = a5;
  return re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(a1 + 416, a2, 49, v6);
}

unsigned __int8 *REMaterialAssetBuilderSetFloat4x4(uint64_t a1, char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v7[0] = a3;
  v7[1] = a4;
  v7[2] = a5;
  v7[3] = a6;
  return re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(a1 + 416, a2, 50, v7);
}

void REMaterialAssetBuilderSetTextureFromAsset(uint64_t a1, char *a2, uint64_t a3)
{
  re::AssetAPIHelper::assetHandleCreate(a3, v6);
  re::AssetHandle::AssetHandle(v5, v6);
  re::ecs2::SerializableMaterialParameterBlock::setTexture(a1 + 416, a2, v5);
  re::AssetHandle::~AssetHandle(v5);
  re::AssetHandle::~AssetHandle(v6);
}

void REMaterialAssetBuilderSetSampler(uint64_t a1, char *a2, void *a3)
{
  v5 = a3;
  v33 = v5;
  v6 = v5;
  re::MaterialSamplerData::fromDescriptor(&v33, v34);
  re::OptionalMaterialSamplerData::OptionalMaterialSamplerData(&v35, v34);
  if (v5)
  {
  }

  v7 = v35;
  if (HIBYTE(v35) == 1)
  {
    v8 = v36;
  }

  v9 = v37;
  if (v37 == 1)
  {
    v10 = v38;
  }

  v11 = v39;
  if (v39 == 1)
  {
    v12 = v40;
  }

  v13 = v41;
  if (v41 == 1)
  {
    v14 = v42;
  }

  v15 = v43;
  if (v43 == 1)
  {
    v16 = v44;
  }

  v17 = v45;
  if (v45 == 1)
  {
    v18 = v46;
  }

  v19 = v47;
  if (v47 == 1)
  {
    v20 = v48;
  }

  v21 = v49;
  if (v49 == 1)
  {
    v22 = v50;
  }

  v23 = v51;
  if (v51 == 1)
  {
    v24 = v52;
  }

  v25 = v53;
  if (v53 == 1)
  {
    v26 = v54;
  }

  v27 = v55;
  if (v55 == 1)
  {
    v28 = v56;
  }

  v29 = v57;
  if (v57 == 1)
  {
    v30 = v58;
  }

  v31 = v59;
  if (v59 == 1)
  {
    v32 = v60;
  }

  re::ecs2::SerializableMaterialParameterBlock::setSampler(a1 + 416, a2, &v7);
}

uint64_t REMaterialAssetBuilderSetTextureFromBinding(uint64_t a1, char *a2, const char *a3)
{
  re::MaterialTextureParam::MaterialTextureParam(v26, &v24);
  v6 = re::Hash<re::DynamicString>::operator()(&v28, a2);
  v7 = v6;
  if (*(a1 + 272))
  {
    v8 = v6 % *(a1 + 296);
    v9 = *(*(a1 + 280) + 4 * v8);
    if (v9 != 0x7FFFFFFF)
    {
      v10 = *(a1 + 288);
      v11 = v10 + 88 * v9;
      v12 = *(v11 + 16);
      v13 = *(v11 + 24);
      v14 = (v11 + 17);
      if (v12)
      {
        v15 = v13;
      }

      else
      {
        v15 = v14;
      }

      if (!strcmp(v15, a2))
      {
LABEL_12:
        ++*(a1 + 312);
        std::__variant_detail::__assignment<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>,(std::__variant_detail::_Trait)1>>(v10 + 88 * v9 + 40, v26);
        goto LABEL_15;
      }

      while (1)
      {
        v16 = *(v10 + 88 * v9);
        v9 = v16 & 0x7FFFFFFF;
        if ((v16 & 0x7FFFFFFF) == 0x7FFFFFFF)
        {
          break;
        }

        v17 = v10 + 88 * v9;
        v18 = *(v17 + 16);
        v19 = *(v17 + 24);
        v20 = (v17 + 17);
        if (v18)
        {
          v21 = v19;
        }

        else
        {
          v21 = v20;
        }

        if (!strcmp(v21, a2))
        {
          goto LABEL_12;
        }
      }
    }
  }

  else
  {
    LODWORD(v8) = 0;
  }

  v22 = re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1 + 272, v8, v7);
  *(v22 + 40) = 0;
  v22 += 40;
  *(v22 + 32) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>,(std::__variant_detail::_Trait)1>>(v22, v26);
  ++*(a1 + 312);
LABEL_15:
  if (v27 != -1)
  {
    off_1F5D2E8B0[v27](&v28, v26);
  }

  v27 = -1;
  result = v24;
  if (v24)
  {
    if (v25)
    {
      return (*(*v24 + 40))();
    }
  }

  return result;
}

uint64_t REMaterialAssetBuilderSetBufferFromBinding(_anonymous_namespace_ *a1, char *a2, const char *a3)
{
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(a1 + 224, a2, &v7);
  result = v7;
  if (v7)
  {
    if (v8)
    {
      return (*(*v7 + 40))();
    }
  }

  return result;
}

void REMaterialAssetBuilder::~REMaterialAssetBuilder(REMaterialAssetBuilder *this)
{
  REMaterialAssetBuilder::~REMaterialAssetBuilder(this);

  JUMPOUT(0x1E6906520);
}

{
  *this = &unk_1F5D2E8D0;
  v2 = *(this + 7);
  if (v2)
  {

    *(this + 7) = 0;
  }

  re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 108);
  re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 102);
  re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 96);
  re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 90);
  re::HashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 84);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 78);
  re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 72);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 66);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 60);
  re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 54);
  *(this + 52) = &unk_1F5CCF868;
  objc_destructInstance(this + 424);
  re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 46);
  re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 40);
  re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 34);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 28);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 22);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 13);
  re::DynamicArray<re::FunctionLink>::deinit(this + 64);
  re::DynamicString::deinit((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

void REFunctionLinkBuilder::~REFunctionLinkBuilder(REFunctionLinkBuilder *this)
{
  *this = &unk_1F5D2E918;
  v2 = (this + 32);
  re::DynamicArray<unsigned long>::deinit(this + 256);
  re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 26);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 20);
  re::DynamicArray<unsigned long>::deinit(this + 120);
  re::AssetHandle::~AssetHandle((this + 96));
  re::DynamicString::deinit((this + 64));
  re::DynamicString::deinit(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5D2E918;
  v2 = (this + 32);
  re::DynamicArray<unsigned long>::deinit(this + 256);
  re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 26);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 20);
  re::DynamicArray<unsigned long>::deinit(this + 120);
  re::AssetHandle::~AssetHandle((this + 96));
  re::DynamicString::deinit((this + 64));
  re::DynamicString::deinit(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t RESkeletonDefinitionCreate()
{
  if ((atomic_load_explicit(&_MergedGlobals_592, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_592))
  {
    byte_1EE1C4D20 = 0;
    qword_1EE1C4D10 = &unk_1F5CCF7F8;
    unk_1EE1C4D18 = "SkeletonDefinitionBuilder Allocator";
    __cxa_guard_release(&_MergedGlobals_592);
  }

  v0 = (*(qword_1EE1C4D10 + 32))(&qword_1EE1C4D10, 264, 8);
  ArcSharedObject::ArcSharedObject(v0, 0);
  v1[2] = &qword_1EE1C4D10;
  *v1 = &unk_1F5D2E960;
  v1[3] = 0;
  *(v0 + 32) = &str_67;
  *(v0 + 48) = 0;
  *(v0 + 40) = 0;
  *(v0 + 56) = 1;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 64) = 0;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  *(v0 + 112) = 1;
  *(v0 + 128) = 0;
  *(v0 + 136) = 0;
  *(v0 + 120) = 0;
  *(v0 + 144) = 0;
  *(v0 + 160) = 0;
  *(v0 + 152) = 0;
  *(v0 + 168) = 1;
  *(v0 + 176) = 0;
  *(v0 + 184) = 0;
  *(v0 + 200) = 0;
  *(v0 + 192) = 0;
  *(v0 + 208) = 0;
  *(v0 + 216) = 0;
  *(v0 + 224) = 1;
  *(v0 + 232) = 0;
  *(v0 + 240) = 0;
  *(v0 + 256) = 0;
  *(v0 + 248) = 0;
  re::StringID::init((v1 + 3), &qword_1EE1C4D10, "", 0);
  re::BucketArray<re::StringID,32ul>::init(v0 + 40, &qword_1EE1C4D10, 1uLL);
  re::BucketArray<unsigned int,32ul>::init(v0 + 96, &qword_1EE1C4D10, 1uLL);
  re::BucketArray<simd_float4x4,32ul>::init(v0 + 152, &qword_1EE1C4D10, 1uLL);
  re::BucketArray<RESRT,32ul>::init(v0 + 208, &qword_1EE1C4D10, 1uLL);
  return v0;
}

void RESkeletonDefinitionSetName(uint64_t a1, const char *a2)
{
  v5 = 0;
  v6 = &str_67;
  v4 = re::StringID::operator=((a1 + 24), &v5);
  if (v5)
  {
    if (v5)
    {
    }
  }
}

void RESkeletonDefinitionSetJointNames(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = a3;
  re::BucketArray<re::StringID,32ul>::resize(a1 + 40, a3);
  if (a3)
  {
    v8 = 0;
    do
    {
      v9 = *(a2 + 8 * v8);
      v11 = 0;
      v12 = &str_67;
      v10 = re::BucketArray<re::ecs2::VisualProxyScopeManagerStateTracking::buildScopeMaskForEntityHierarchy(re::ecs2::Entity const*)::EntityScopeMask,32ul>::operator[](a1 + 40, v8);
      v7 = re::StringID::operator=(v10, &v11);
      if (v11)
      {
        if (v11)
        {
        }
      }

      ++v8;
    }

    while (v6 != v8);
  }
}

void re::BucketArray<re::StringID,32ul>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 40);
  if (v4 >= a2)
  {
    if (v4 > a2)
    {
      v6 = a2;
      do
      {
        v7 = re::BucketArray<re::ecs2::VisualProxyScopeManagerStateTracking::buildScopeMaskForEntityHierarchy(re::ecs2::Entity const*)::EntityScopeMask,32ul>::operator[](a1, v6);
        re::StringID::destroyString(v7);
        ++v6;
      }

      while (v6 != *(a1 + 40));
      *(a1 + 40) = a2;
    }
  }

  else
  {
    if (a2 > 32 * *(a1 + 8))
    {
      re::BucketArray<re::StringID,32ul>::setBucketsCapacity(a1, (a2 + 31) >> 5);
      v4 = *(a1 + 40);
    }

    for (*(a1 + 40) = a2; v4 != *(a1 + 40); ++v4)
    {
      v5 = re::BucketArray<re::ecs2::VisualProxyScopeManagerStateTracking::buildScopeMaskForEntityHierarchy(re::ecs2::Entity const*)::EntityScopeMask,32ul>::operator[](a1, v4);
      *v5 = 0;
      v5[1] = &str_67;
    }
  }

  ++*(a1 + 48);
}

void RESkeletonDefinitionSetJointName(_anonymous_namespace_ *a1, unsigned int a2, const char *a3)
{
  v8 = 0;
  v9 = &str_67;
  v6 = re::BucketArray<re::ecs2::VisualProxyScopeManagerStateTracking::buildScopeMaskForEntityHierarchy(re::ecs2::Entity const*)::EntityScopeMask,32ul>::operator[](a1 + 40, a2);
  v7 = re::StringID::operator=(v6, &v8);
  if (v8)
  {
    if (v8)
    {
    }
  }
}

_DWORD *RESkeletonDefinitionSetParentIndices(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = a3;
  result = re::BucketArray<unsigned int,32ul>::resize((a1 + 96), a3);
  if (a3)
  {
    v8 = 0;
    do
    {
      v9 = *(a2 + 4 * v8);
      result = re::BucketArray<unsigned int,32ul>::operator[](a1 + 96, v8);
      *result = v9;
      ++v8;
    }

    while (v6 != v8);
  }

  return result;
}

uint64_t *re::BucketArray<unsigned int,32ul>::resize(uint64_t *result, unint64_t a2)
{
  v3 = result;
  v4 = result[5];
  if (v4 >= a2)
  {
    if (v4 > a2)
    {
      v5 = a2;
      do
      {
        result = re::BucketArray<unsigned int,32ul>::operator[](v3, v5++);
      }

      while (v5 != *(v3 + 40));
      *(v3 + 40) = a2;
    }
  }

  else
  {
    if (a2 > 32 * result[1])
    {
      result = re::BucketArray<unsigned int,32ul>::setBucketsCapacity(result, (a2 + 31) >> 5);
      v4 = *(v3 + 40);
    }

    for (*(v3 + 40) = a2; v4 != *(v3 + 40); ++v4)
    {
      result = re::BucketArray<unsigned int,32ul>::operator[](v3, v4);
      *result = 0;
    }
  }

  ++*(v3 + 48);
  return result;
}

uint64_t re::BucketArray<unsigned int,32ul>::operator[](uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1011, a2, v2);
    _os_crash();
    __break(1u);
LABEL_8:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 8) <= a2 >> 5)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v3 = a1 + 24;
  }

  else
  {
    v3 = *(a1 + 32);
  }

  return *(v3 + 8 * (a2 >> 5)) + 4 * (a2 & 0x1F);
}

{
  v2 = *(a1 + 40);
  if (v2 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1018, a2, v2);
    _os_crash();
    __break(1u);
LABEL_8:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 8) <= a2 >> 5)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v3 = a1 + 24;
  }

  else
  {
    v3 = *(a1 + 32);
  }

  return *(v3 + 8 * (a2 >> 5)) + 4 * (a2 & 0x1F);
}

_DWORD *RESkeletonDefinitionGetParentIndices(_DWORD *result, uint64_t a2, unsigned int a3)
{
  if (a3)
  {
    v4 = result;
    v5 = 0;
    v6 = a3;
    do
    {
      result = re::BucketArray<unsigned int,32ul>::operator[]((v4 + 24), v5);
      *(a2 + 4 * v5++) = *result;
    }

    while (v6 != v5);
  }

  return result;
}

__n128 RESkeletonDefinitionSetLocalRestPoses(uint64_t a1, __int128 *a2, unsigned int a3)
{
  v6 = a3;
  re::BucketArray<RESRT,32ul>::resize(a1 + 208, a3);
  if (a3)
  {
    v8 = 0;
    do
    {
      v9 = re::BucketArray<re::ImportAssetTable::ImportedAsset,32ul>::operator[](a1 + 208, v8);
      v10 = a2[1];
      result = a2[2];
      v11 = *a2;
      a2 += 3;
      *v9 = v11;
      *(v9 + 16) = v10;
      *(v9 + 32) = result;
      ++v8;
    }

    while (v6 != v8);
  }

  return result;
}

uint64_t re::BucketArray<RESRT,32ul>::resize(uint64_t result, unint64_t a2)
{
  v3 = result;
  v4 = *(result + 40);
  if (v4 >= a2)
  {
    if (v4 > a2)
    {
      v5 = a2;
      do
      {
        result = re::BucketArray<re::ImportAssetTable::ImportedAsset,32ul>::operator[](v3, v5++);
      }

      while (v5 != *(v3 + 40));
      *(v3 + 40) = a2;
    }
  }

  else
  {
    if (a2 > 32 * *(result + 8))
    {
      result = re::BucketArray<RESRT,32ul>::setBucketsCapacity(result, (a2 + 31) >> 5);
      v4 = *(v3 + 40);
    }

    for (*(v3 + 40) = a2; v4 != *(v3 + 40); ++v4)
    {
      result = re::BucketArray<re::ImportAssetTable::ImportedAsset,32ul>::operator[](v3, v4);
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 0u;
    }
  }

  ++*(v3 + 48);
  return result;
}

__n128 RESkeletonDefinitionGetLocalRestPoses(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3)
  {
    v5 = 0;
    v6 = a3;
    do
    {
      v7 = re::BucketArray<RESRT,32ul>::operator[](a1 + 208, v5);
      v9 = *(v7 + 16);
      result = *(v7 + 32);
      *a2 = *v7;
      *(a2 + 16) = v9;
      *(a2 + 32) = result;
      ++v5;
      a2 += 48;
    }

    while (v6 != v5);
  }

  return result;
}

uint64_t re::BucketArray<RESRT,32ul>::operator[](uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1018, a2, v2);
    _os_crash();
    __break(1u);
LABEL_8:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 8) <= a2 >> 5)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v3 = a1 + 24;
  }

  else
  {
    v3 = *(a1 + 32);
  }

  return *(v3 + 8 * (a2 >> 5)) + 48 * (a2 & 0x1F);
}

__n128 RESkeletonDefinitionSetInverseBindPoses(uint64_t a1, __int128 *a2, unsigned int a3)
{
  v6 = a3;
  v7 = *(a1 + 192);
  if (v7 >= a3)
  {
    if (v7 > a3)
    {
      v10 = a3;
      do
      {
        re::BucketArray<simd_float4x4,32ul>::operator[](a1 + 152, v10++);
      }

      while (v10 != *(a1 + 192));
      *(a1 + 192) = v6;
    }
  }

  else
  {
    if (a3 > (32 * *(a1 + 160)))
    {
      re::BucketArray<simd_float4x4,32ul>::setBucketsCapacity((a1 + 152), (a3 + 31) >> 5);
      v7 = *(a1 + 192);
    }

    for (*(a1 + 192) = v6; v7 != *(a1 + 192); ++v7)
    {
      v9 = re::BucketArray<simd_float4x4,32ul>::operator[](a1 + 152, v7);
      result.n128_u64[0] = 0;
      *v9 = 0u;
      v9[1] = 0u;
      v9[2] = 0u;
      v9[3] = 0u;
    }
  }

  ++*(a1 + 200);
  if (a3)
  {
    v11 = 0;
    do
    {
      v12 = re::BucketArray<simd_float4x4,32ul>::operator[](a1 + 152, v11);
      result = a2[2];
      v13 = a2[3];
      v15 = *a2;
      v14 = a2[1];
      a2 += 4;
      *(v12 + 32) = result;
      *(v12 + 48) = v13;
      *v12 = v15;
      *(v12 + 16) = v14;
      ++v11;
    }

    while (v6 != v11);
  }

  return result;
}

unint64_t re::BucketArray<simd_float4x4,32ul>::operator[](uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1011, a2, v2);
    _os_crash();
    __break(1u);
LABEL_8:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 8) <= a2 >> 5)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v3 = a1 + 24;
  }

  else
  {
    v3 = *(a1 + 32);
  }

  return *(v3 + 8 * (a2 >> 5)) + ((a2 & 0x1F) << 6);
}

{
  v2 = *(a1 + 40);
  if (v2 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1018, a2, v2);
    _os_crash();
    __break(1u);
LABEL_8:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 8) <= a2 >> 5)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v3 = a1 + 24;
  }

  else
  {
    v3 = *(a1 + 32);
  }

  return *(v3 + 8 * (a2 >> 5)) + ((a2 & 0x1F) << 6);
}

BOOL RESkeletonDefinitionValidate(void *a1, CFTypeRef *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  v15 = 0x7FFFFFFFLL;
  v9 = v12;
  if (a2 && v12)
  {
    *a2 = CFRetain(v12);
  }

  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v13);
  return v9 == 0;
}

void anonymous namespace::SkeletonDefinition::validate(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2[3] <= 1uLL)
  {
    v11 = a2[4];
    if (v11)
    {
      if (!*v11)
      {

        return;
      }
    }
  }

  v12 = a2[10];
  if (HIDWORD(v12))
  {
    v46 = a2[4];
    v13 = @"Skeleton '%s' has way too many joints";
LABEL_21:
    v21 = a1;
    goto LABEL_22;
  }

  if (!v12)
  {
    v46 = a2[4];
    v13 = @"Expected skeleton '%s' to have at least one joint";
    goto LABEL_21;
  }

  v14 = 0;
  v51.i32[0] = 0;
  do
  {
    v15 = re::BucketArray<re::ecs2::VisualProxyScopeManagerStateTracking::buildScopeMaskForEntityHierarchy(re::ecs2::Entity const*)::EntityScopeMask,32ul>::operator[]((a2 + 5), v14);
    v16 = *re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a3, v15, &v51);
    if (v16 != v51.i32[0])
    {
      v22 = a2[4];
      re::BucketArray<re::ecs2::VisualProxyScopeManagerStateTracking::buildScopeMaskForEntityHierarchy(re::ecs2::Entity const*)::EntityScopeMask,32ul>::operator[]((a2 + 5), v51.u32[0]);
      return;
    }

    v14 = v16 + 1;
    v51.i32[0] = v16 + 1;
  }

  while (v16 + 1 < v12);
  v17 = a2[17];
  if (v17)
  {
    if (v17 == v12)
    {
      v18 = 0;
      while (1)
      {
        v19 = *re::BucketArray<unsigned int,32ul>::operator[]((a2 + 12), v18);
        if (v19 != -1 && v18 <= v19)
        {
          break;
        }

        if (v12 == ++v18)
        {
          goto LABEL_36;
        }
      }

      return;
    }

LABEL_39:
    v46 = a2[4];
    v13 = @"Expected all joint arrays for skeleton '%s' to have the same count";
    v21 = a1;
LABEL_22:
    return;
  }

  re::BucketArray<unsigned int,32ul>::resize(a2 + 12, v12);
  v23 = 0;
  do
  {
    *re::BucketArray<unsigned int,32ul>::operator[]((a2 + 12), v23) = -1;
    v24 = *(re::BucketArray<re::ecs2::VisualProxyScopeManagerStateTracking::buildScopeMaskForEntityHierarchy(re::ecs2::Entity const*)::EntityScopeMask,32ul>::operator[]((a2 + 5), v23) + 8);
    v25 = strrchr(v24, 47);
    if (!v25)
    {
      goto LABEL_35;
    }

    v26 = v25 - v24;
    v50[0].i64[0] = 0;
    v50[0].i64[1] = &str_67;
    v27 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v50[0].i64[0] >> 31) ^ (v50[0].i64[0] >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v50[0].i64[0] >> 31) ^ (v50[0].i64[0] >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a3, v50, v27 ^ (v27 >> 31), &v51);
    if (v51.i32[3] == 0x7FFFFFFF)
    {
LABEL_42:
      if (v50[0].i8[0])
      {
        if (v50[0].i8[0])
        {
        }
      }

      return;
    }

    v28 = *(*(a3 + 16) + 32 * v51.u32[3] + 24);
    if (v23 <= v28)
    {
      goto LABEL_42;
    }

    v29 = re::BucketArray<unsigned int,32ul>::operator[]((a2 + 12), v23);
    *v29 = v28;
    if (v50[0].i8[0])
    {
      if (v50[0].i8[0])
      {
      }
    }

LABEL_35:
    ++v23;
  }

  while (v12 != v23);
LABEL_36:
  if (a2[24] != v12)
  {
    goto LABEL_39;
  }

  v30 = a2[31];
  if (v30)
  {
    if (v30 != v12)
    {
      goto LABEL_39;
    }
  }

  else
  {
    re::BucketArray<RESRT,32ul>::resize((a2 + 26), v12);
    v32 = 0;
    do
    {
      v55 = *re::BucketArray<simd_float4x4,32ul>::operator[]((a2 + 19), v32);
      v49 = __invert_f4(v55);
      if (*re::BucketArray<unsigned int,32ul>::operator[]((a2 + 12), v32) == -1)
      {
        v51 = 0u;
        v50[0] = xmmword_1E30474D0;
        v53[0] = 0u;
        re::decomposeScaleRotationTranslation<float>(&v49, &v51, v50, v53);
        v47 = v51.i64[1];
        v40 = v51.i64[0];
        v41 = v50[0].i64[1];
        v42 = v50[0].i64[0];
        v43 = *(&v53[0] + 1);
        v44 = *&v53[0];
      }

      else
      {
        v33 = re::BucketArray<unsigned int,32ul>::operator[]((a2 + 12), v32);
        v34 = re::BucketArray<simd_float4x4,32ul>::operator[]((a2 + 19), *v33);
        v35 = 0;
        v36 = *v34;
        v37 = v34[1];
        v38 = v34[2];
        v39 = v34[3];
        v50[0] = v49.columns[0];
        v50[1] = v49.columns[1];
        v50[2] = v49.columns[2];
        v50[3] = v49.columns[3];
        do
        {
          *(&v51 + v35 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v36, COERCE_FLOAT(*&v50[v35])), v37, *v50[v35].i8, 1), v38, v50[v35], 2), v39, v50[v35], 3);
          ++v35;
        }

        while (v35 != 4);
        v50[0] = 0u;
        v52 = 0u;
        v53[0] = xmmword_1E30474D0;
        re::decomposeScaleRotationTranslation<float>(&v51, v50, v53, &v52);
        v47 = v50[0].i64[1];
        v40 = v50[0].i64[0];
        v41 = *(&v53[0] + 1);
        v42 = *&v53[0];
        v43 = *(&v52 + 1);
        v44 = v52;
      }

      v45 = re::BucketArray<re::ImportAssetTable::ImportedAsset,32ul>::operator[]((a2 + 26), v32);
      *v45 = v40;
      v45[1] = v47;
      v45[2] = v42;
      v45[3] = v41;
      ++v32;
      v45[4] = v44;
      v45[5] = v43;
    }

    while (v32 != v12);
  }

  *a1 = 0;
}

uint64_t RESkeletonDefinitionCreateGeomSkeletonV2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v64 = *MEMORY[0x1E69E9840];
  v38 = 0;
  v39 = &str_67;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  memset(v46, 0, sizeof(v46));
  v47 = 0;
  v48 = 0x7FFFFFFFLL;
  v10 = v49;
  if (!v49)
  {
    v13 = re::StringID::operator=(&v38, (a1 + 24));
    v10 = *(a1 + 80);
    if (v10)
    {
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v17 = re::BucketArray<re::StringID,32ul>::operator[](a1 + 40, v16);
        v18 = *(&v40 + 1);
        if (*(&v40 + 1) <= v16)
        {
          break;
        }

        v14 = re::StringID::operator=((v41 + v15), v17);
        ++v16;
        v15 += 16;
        if (v10 == v16)
        {
          goto LABEL_10;
        }
      }

      v50 = 0;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      *buf = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v51 = 136315906;
      v52 = "operator[]";
      v53 = 1024;
      v54 = 468;
      v55 = 2048;
      v56 = v16;
      v57 = 2048;
      v58 = v18;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    else
    {
LABEL_10:
      if (!v10)
      {
LABEL_14:
        if (!v10)
        {
LABEL_18:
          if (!v10)
          {
LABEL_22:
            v31 = re::globalAllocators(v30);
            v12 = (*(*v31[2] + 32))(v31[2], 184, 8);
            ArcSharedObject::ArcSharedObject(v12, 0);
            *v12 = &unk_1F5D2E9A8;
            *(v32 + 24) = 0u;
            *(v12 + 168) = 0u;
            *(v12 + 32) = &str_67;
            *(v12 + 56) = 0u;
            *(v12 + 72) = 0u;
            *(v12 + 104) = 0u;
            *(v12 + 120) = 0u;
            *(v12 + 152) = 0u;
            *(v12 + 168) = 0x7FFFFFFF00000000;
            *(v12 + 136) = 0u;
            *(v12 + 88) = 0u;
            *(v12 + 40) = 0u;
            re::StringID::operator=((v32 + 24), &v38);
            re::FixedArray<float>::operator=((v12 + 40), &v40);
            re::FixedArray<float>::operator=((v12 + 64), &v41 + 1);
            re::FixedArray<float>::operator=((v12 + 88), &v43);
            re::FixedArray<float>::operator=((v12 + 112), &v44 + 1);
            re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::operator=(v12 + 136, v46);
            goto LABEL_23;
          }

          v25 = 0;
          v18 = 0;
          while (1)
          {
            v26 = re::BucketArray<RESRT,32ul>::operator[](a1 + 208, v18);
            v8 = *(&v43 + 1);
            if (*(&v43 + 1) <= v18)
            {
              goto LABEL_42;
            }

            v27 = (v44 + v25);
            v28 = *v26;
            v29 = v26[2];
            v27[1] = v26[1];
            v27[2] = v29;
            *v27 = v28;
            ++v18;
            v25 += 48;
            if (v10 == v18)
            {
              goto LABEL_22;
            }
          }
        }

        v8 = 0;
        v16 = 0;
        while (1)
        {
          v20 = re::BucketArray<simd_float4x4,32ul>::operator[](a1 + 152, v16);
          v18 = v45;
          if (v45 <= v16)
          {
            break;
          }

          v22 = *(v20 + 2);
          v21 = *(v20 + 3);
          v23 = *(v20 + 1);
          v24 = (*(&v45 + 1) + v8);
          *v24 = *v20;
          v24[1] = v23;
          v24[2] = v22;
          v24[3] = v21;
          ++v16;
          v8 += 64;
          if (v10 == v16)
          {
            goto LABEL_18;
          }
        }

LABEL_41:
        v50 = 0;
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        *buf = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v51 = 136315906;
        v52 = "operator[]";
        v53 = 1024;
        v54 = 468;
        v55 = 2048;
        v56 = v16;
        v57 = 2048;
        v58 = v18;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_42:
        v50 = 0;
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        *buf = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v51 = 136315906;
        v52 = "operator[]";
        v53 = 1024;
        v54 = 468;
        v55 = 2048;
        v56 = v18;
        v57 = 2048;
        v58 = v8;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_43;
      }

      v16 = 0;
      while (1)
      {
        v19 = re::BucketArray<unsigned int,32ul>::operator[](a1 + 96, v16);
        v18 = v42;
        if (v42 <= v16)
        {
          break;
        }

        *(*(&v42 + 1) + 4 * v16++) = *v19;
        if (v10 == v16)
        {
          goto LABEL_14;
        }
      }
    }

    v50 = 0;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v51 = 136315906;
    v52 = "operator[]";
    v53 = 1024;
    v54 = 468;
    v55 = 2048;
    v56 = v16;
    v57 = 2048;
    v58 = v18;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_41;
  }

  if (CoreRELog::onceToken != -1)
  {
LABEL_43:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v11 = CoreRELog::log;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v36 = re::WrappedError::localizedDescription(&v49);
    *buf = 136315138;
    *&buf[4] = v36;
    _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, "Failed to create skeleton: %s", buf, 0xCu);
  }

  v12 = 0;
LABEL_23:
  v33.n128_f64[0] = re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v46);
  if (*(&v44 + 1))
  {
    if (v45)
    {
      (*(**(&v44 + 1) + 40))(v33.n128_f64[0]);
      v45 = 0uLL;
    }

    *(&v44 + 1) = 0;
  }

  if (v43)
  {
    if (*(&v43 + 1))
    {
      (*(*v43 + 40))(v33);
      *(&v43 + 1) = 0;
      *&v44 = 0;
    }

    *&v43 = 0;
  }

  if (*(&v41 + 1))
  {
    if (v42)
    {
      (*(**(&v41 + 1) + 40))(v33);
      v42 = 0uLL;
    }

    *(&v41 + 1) = 0;
  }

  v34 = re::FixedArray<re::StringID>::deinit(&v40);
  if (v38)
  {
    if (v38)
    {
    }
  }

  return v12;
}

void *RESkeletonDefinitionCreateMeshSkeletonDefinition(re *a1)
{
  re::make::shared::object<re::MeshSkeletonDefinition>(a1, &v12);
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v11 = 0x7FFFFFFFLL;
  if (createSkeleton<re::MeshSkeletonDefinition>(a1, v12, v9, v2, v3, v4, v5, v6))
  {
    v7 = v12;
    v12 = 0;
  }

  else
  {
    v7 = 0;
  }

  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v9);
  if (v12)
  {
  }

  return v7;
}

BOOL createSkeleton<re::MeshSkeletonDefinition>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v47 = *MEMORY[0x1E69E9840];
  v10 = v32;
  if (!v32)
  {
    v12 = re::StringID::operator=(a2 + 3, (a1 + 24));
    v13 = *(a1 + 80);
    if (v13)
    {
      v15 = 0;
      while (1)
      {
        v16 = re::BucketArray<re::StringID,32ul>::operator[](a1 + 40, v15);
        v17 = a2[6];
        if (v17 <= v15)
        {
          break;
        }

        v14 = re::StringID::operator=((a2[7] + 16 * v15++), v16);
        if (v15 == v13)
        {
          goto LABEL_10;
        }
      }

      v33 = 0;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      *buf = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v34 = 136315906;
      v35 = "operator[]";
      v36 = 1024;
      v37 = 468;
      v38 = 2048;
      v39 = v15;
      v40 = 2048;
      v41 = v17;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    else
    {
LABEL_10:
      if (!v13)
      {
LABEL_14:
        if (!v13)
        {
LABEL_18:
          if (!v13)
          {
LABEL_22:
            goto LABEL_23;
          }

          v15 = 0;
          while (1)
          {
            v25 = re::BucketArray<RESRT,32ul>::operator[](a1 + 208, v15);
            v17 = a2[12];
            if (v17 <= v15)
            {
              goto LABEL_27;
            }

            v26 = (a2[13] + 48 * v15);
            v27 = *v25;
            v28 = v25[2];
            v26[1] = v25[1];
            v26[2] = v28;
            *v26 = v27;
            if (++v15 == v13)
            {
              goto LABEL_22;
            }
          }
        }

        v15 = 0;
        v20 = 32;
        while (1)
        {
          v19 = re::BucketArray<simd_float4x4,32ul>::operator[](a1 + 152, v15);
          v17 = a2[15];
          if (v17 <= v15)
          {
            break;
          }

          v22 = *(v19 + 2);
          v21 = *(v19 + 3);
          v23 = *(v19 + 1);
          v24 = (a2[16] + v20);
          *(v24 - 2) = *v19;
          *(v24 - 1) = v23;
          *v24 = v22;
          v24[1] = v21;
          ++v15;
          v20 += 64;
          if (v13 == v15)
          {
            goto LABEL_18;
          }
        }

LABEL_26:
        v33 = 0;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        *buf = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v34 = 136315906;
        v35 = "operator[]";
        v36 = 1024;
        v37 = 468;
        v38 = 2048;
        v39 = v15;
        v40 = 2048;
        v41 = v17;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_27:
        v33 = 0;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        *buf = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v34 = 136315906;
        v35 = "operator[]";
        v36 = 1024;
        v37 = 468;
        v38 = 2048;
        v39 = v15;
        v40 = 2048;
        v41 = v17;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_28;
      }

      v15 = 0;
      while (1)
      {
        v18 = re::BucketArray<unsigned int,32ul>::operator[](a1 + 96, v15);
        v17 = a2[9];
        if (v17 <= v15)
        {
          break;
        }

        *(a2[10] + 4 * v15++) = *v18;
        if (v13 == v15)
        {
          goto LABEL_14;
        }
      }
    }

    v33 = 0;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v34 = 136315906;
    v35 = "operator[]";
    v36 = 1024;
    v37 = 468;
    v38 = 2048;
    v39 = v15;
    v40 = 2048;
    v41 = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_26;
  }

  if (CoreRELog::onceToken != -1)
  {
LABEL_28:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v11 = CoreRELog::log;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v30 = re::WrappedError::localizedDescription(&v32);
    *buf = 136315138;
    *&buf[4] = v30;
    _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, "Failed to create skeleton: %s", buf, 0xCu);
  }

LABEL_23:
  return v10 == 0;
}

uint64_t RESkeletonDefinitionCreateSkeletonAsset(uint64_t a1, uint64_t a2)
{
  v51 = *MEMORY[0x1E69E9840];
  re::StringID::StringID(&v32, (a1 + 24));
  v5 = *(a1 + 40);
  v33[0] = 0;
  v33[1] = 0;
  v34 = 0;
  re::FixedArray<re::StringID>::init<>(v33, v5, *(a1 + 80));
  v6 = *(a1 + 80);
  if (v6)
  {
    v2 = 0;
    v7 = v34;
    do
    {
      v8 = re::BucketArray<re::StringID,32ul>::operator[](a1 + 40, v2);
      re::StringID::operator=(v7, v8);
      ++v2;
      v7 += 2;
    }

    while (v6 != v2);
  }

  v10 = a1 + 96;
  v9 = *(a1 + 96);
  v35 = 0;
  v36 = 0;
  v37 = 0;
  re::FixedArray<int>::init<>(&v35, v9, *(a1 + 136));
  v11 = *(a1 + 136);
  if (v11)
  {
    v2 = 0;
    v12 = v37;
    do
    {
      *(v12 + 4 * v2) = *re::BucketArray<unsigned int,32ul>::operator[](a1 + 96, v2);
      ++v2;
    }

    while (v11 != v2);
  }

  v38 = 0;
  v39 = 0;
  v40 = 0;
  v13 = re::FixedArray<re::GenericSRT<float>>::init<>(&v38, *(a1 + 208), *(a1 + 248));
  v15 = *(a1 + 248);
  if (v15)
  {
    v16 = 0;
    v17 = v40;
    do
    {
      v18 = *(a1 + 248);
      if (v18 <= v16)
      {
        re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1018, v16, v18);
        _os_crash();
        __break(1u);
LABEL_29:
        v41 = 0;
        v49 = 0u;
        v50 = 0u;
        v48 = 0u;
        memset(v47, 0, sizeof(v47));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v42 = 136315906;
        *&v42[4] = "operator[]";
        v43 = 1024;
        v44 = 866;
        v45 = 2048;
        *v46 = v10;
        *&v46[8] = 2048;
        *&v46[10] = v2;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v10 = v16 >> 5;
      v2 = *(a1 + 216);
      if (v2 <= v16 >> 5)
      {
        goto LABEL_29;
      }

      v19 = a1 + 232;
      if ((*(a1 + 224) & 1) == 0)
      {
        v19 = *(a1 + 240);
      }

      v20 = (*(v19 + 8 * v10) + 48 * (v16 & 0x1F));
      v21 = *v20;
      v22 = v20[2];
      v17[1] = v20[1];
      v17[2] = v22;
      *v17 = v21;
      v17 += 3;
      ++v16;
    }

    while (v15 != v16);
  }

  v23 = re::globalAllocators(v13);
  v24 = (*(*v23[2] + 32))(v23[2], 272, 8);
  re::SkeletonAsset::SkeletonAsset(v24, &v32);
  *v42 = &unk_1F5D2EA38;
  *&v46[4] = v42;
  *&v48 = v47 + 8;
  *&v47[0] = v25;
  *(&v47[0] + 1) = &unk_1F5D2EA38;
  std::__function::__value_func<void ()(re::SkeletonAsset *)>::~__value_func[abi:nn200100](v42);
  if (v38)
  {
    if (v39)
    {
      (*(*v38 + 40))();
      v39 = 0;
      v40 = 0;
    }

    v38 = 0;
  }

  if (v35)
  {
    if (v36)
    {
      (*(*v35 + 40))();
      v36 = 0;
      v37 = 0;
    }

    v35 = 0;
  }

  v26 = re::FixedArray<re::StringID>::deinit(v33);
  if (v32)
  {
    if (v32)
    {
    }
  }

  v27 = *&v47[0];
  v28 = re::SkeletonAsset::assetType(v26);
  (*(*a2 + 424))(&v32, a2, v27, v28, 0, 0, 0);
  v29 = v32;
  if (v32)
  {
    v30 = (v32 + 8);
    *&v47[0] = 0;
  }

  re::AssetHandle::~AssetHandle(&v32);
  std::unique_ptr<re::SkeletonAsset,std::function<void ()(re::SkeletonAsset*)>>::~unique_ptr[abi:nn200100](v47);
  return v29;
}

void anonymous namespace::makeError(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>, uint64_t a4)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AEC0];
  v7 = a2;
  v8 = [[v6 alloc] initWithFormat:v7 arguments:&a4];

  v9 = MEMORY[0x1E696ABC0];
  v12 = *MEMORY[0x1E696A578];
  v13[0] = v8;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v11 = [v9 errorWithDomain:@"RESkeletonDefinitionErrorDomain" code:a1 userInfo:v10];
  *a3 = v11;
}

uint64_t *re::BucketArray<unsigned int,32ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 32 * a2)
    {
      while (1)
      {
        v4 = v3[1];
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      while (v4 < a2)
      {
        v5 = (*(**v3 + 32))(*v3, 128, 0);
        result = re::DynamicOverflowArray<RESubscriptionHandle *,2ul>::add(v3, &v5);
        v4 = v3[1];
      }
    }
  }

  else
  {
  }

  return result;
}

uint64_t re::BucketArray<unsigned int,32ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<unsigned int,32ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void *re::BucketArray<RESRT,32ul>::setBucketsCapacity(void *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 32 * a2)
    {
      while (1)
      {
        v4 = v3[1];
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = v3 + 3;
        do
        {
          result = (*(**v3 + 32))(*v3, 1536, 0);
          v6 = result;
          if (*v3)
          {
            v7 = v3[1];
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_24;
              }

              v12 = 2 * v9;
              goto LABEL_20;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_20:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = v3[1];
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_24:
          v15 = v3 + 3;
          if ((v8 & 1) == 0)
          {
            v15 = v3[4];
          }

          v16 = v3[1];
          v15[v16++] = v6;
          v3[1] = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
  }

  return result;
}

uint64_t re::BucketArray<RESRT,32ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<RESRT,32ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t *re::BucketArray<re::StringID,32ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::StringID,32ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void *re::BucketArray<simd_float4x4,32ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<simd_float4x4,32ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void anonymous namespace::SkeletonDefinition::~SkeletonDefinition(_anonymous_namespace_::SkeletonDefinition *this)
{
  *this = &unk_1F5D2E960;
  v2 = *(this + 31);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      re::BucketArray<re::ImportAssetTable::ImportedAsset,32ul>::operator[](this + 208, i);
    }
  }

  while (*(this + 27))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 26);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 208);
  *(this + 31) = 0;
  ++*(this + 64);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 208);
  v4 = *(this + 24);
  if (v4)
  {
    for (j = 0; j != v4; ++j)
    {
      re::BucketArray<simd_float4x4,32ul>::operator[](this + 152, j);
    }
  }

  while (*(this + 20))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 19);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 152);
  *(this + 24) = 0;
  ++*(this + 50);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 152);
  v6 = *(this + 17);
  if (v6)
  {
    for (k = 0; k != v6; ++k)
    {
      re::BucketArray<unsigned int,32ul>::operator[](this + 96, k);
    }
  }

  while (*(this + 13))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 12);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 96);
  *(this + 17) = 0;
  ++*(this + 36);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 96);
  v8 = *(this + 10);
  if (v8)
  {
    for (m = 0; m != v8; ++m)
    {
      v10 = re::BucketArray<re::ecs2::VisualProxyScopeManagerStateTracking::buildScopeMaskForEntityHierarchy(re::ecs2::Entity const*)::EntityScopeMask,32ul>::operator[](this + 40, m);
      re::StringID::destroyString(v10);
    }
  }

  while (*(this + 6))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 5);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 40);
  *(this + 10) = 0;
  ++*(this + 22);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 40);
  re::StringID::destroyString((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{

  JUMPOUT(0x1E6906520);
}

uint64_t *re::BucketArray<re::StringID,32ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 32 * a2)
    {
      while (1)
      {
        v4 = v3[1];
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      while (v4 < a2)
      {
        v5 = (*(**v3 + 32))(*v3, 512, 0);
        result = re::DynamicOverflowArray<RESubscriptionHandle *,2ul>::add(v3, &v5);
        v4 = v3[1];
      }
    }
  }

  else
  {
  }

  return result;
}

void *re::BucketArray<simd_float4x4,32ul>::setBucketsCapacity(void *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 32 * a2)
    {
      while (1)
      {
        v4 = v3[1];
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = v3 + 3;
        do
        {
          result = (*(**v3 + 32))(*v3, 2048, 0);
          v6 = result;
          if (*v3)
          {
            v7 = v3[1];
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_24;
              }

              v12 = 2 * v9;
              goto LABEL_20;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_20:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = v3[1];
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_24:
          v15 = v3 + 3;
          if ((v8 & 1) == 0)
          {
            v15 = v3[4];
          }

          v16 = v3[1];
          v15[v16++] = v6;
          v3[1] = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
  }

  return result;
}

uint64_t re::BucketArray<re::StringID,32ul>::operator[](uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1018, a2, v2);
    _os_crash();
    __break(1u);
LABEL_8:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 8) <= a2 >> 5)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v3 = a1 + 24;
  }

  else
  {
    v3 = *(a1 + 32);
  }

  return *(v3 + 8 * (a2 >> 5)) + 16 * (a2 & 0x1F);
}

_anonymous_namespace_ *anonymous namespace::SkeletonDefinition::clear(_anonymous_namespace_::SkeletonDefinition *this)
{
  v2 = *(this + 31);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      re::BucketArray<re::ImportAssetTable::ImportedAsset,32ul>::operator[](this + 208, i);
    }
  }

  *(this + 31) = 0;
  ++*(this + 64);
  v4 = *(this + 24);
  if (v4)
  {
    for (j = 0; j != v4; ++j)
    {
      re::BucketArray<simd_float4x4,32ul>::operator[](this + 152, j);
    }
  }

  *(this + 24) = 0;
  ++*(this + 50);
  v6 = *(this + 17);
  if (v6)
  {
    for (k = 0; k != v6; ++k)
    {
      re::BucketArray<unsigned int,32ul>::operator[](this + 96, k);
    }
  }

  *(this + 17) = 0;
  ++*(this + 36);
  v8 = *(this + 10);
  if (v8)
  {
    for (m = 0; m != v8; ++m)
    {
      v10 = re::BucketArray<re::ecs2::VisualProxyScopeManagerStateTracking::buildScopeMaskForEntityHierarchy(re::ecs2::Entity const*)::EntityScopeMask,32ul>::operator[](this + 40, m);
      re::StringID::destroyString(v10);
    }
  }

  *(this + 10) = 0;
  ++*(this + 22);
  v13[0] = 0;
  v13[1] = &str_67;
  result = re::StringID::operator=((this + 24), v13);
  if (v13[0])
  {

    return v12();
  }

  return result;
}

void *re::Shareable<re::GeomSkeleton>::~Shareable(void *a1)
{
  *a1 = &unk_1F5D2E9A8;
  v2 = a1 + 5;
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1 + 17);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 14);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 11);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 8);
  re::FixedArray<re::StringID>::deinit(v2);
  re::StringID::destroyString((a1 + 3));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::Shareable<re::GeomSkeleton>::~Shareable(void *a1)
{
  *a1 = &unk_1F5D2E9A8;
  v2 = a1 + 5;
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1 + 17);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 14);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 11);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 8);
  re::FixedArray<re::StringID>::deinit(v2);
  re::StringID::destroyString((a1 + 3));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

double re::make::shared::object<re::MeshSkeletonDefinition>@<D0>(re *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = re::globalAllocators(a1);
  v4 = (*(*v3[2] + 32))(v3[2], 136, 8);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0u;
  *(v4 + 112) = 0u;
  *(v4 + 128) = 0;
  ArcSharedObject::ArcSharedObject(v4, 0);
  *(v4 + 24) = 0;
  *v4 = &unk_1F5D2E9F0;
  *(v4 + 32) = &str_67;
  result = 0.0;
  *(v4 + 40) = 0u;
  *(v4 + 56) = 0u;
  *(v4 + 72) = 0u;
  *(v4 + 88) = 0u;
  *(v4 + 104) = 0u;
  *(v4 + 120) = 0u;
  *a2 = v4;
  return result;
}

void re::MeshSkeletonDefinition::~MeshSkeletonDefinition(re::MeshSkeletonDefinition *this)
{
  *this = &unk_1F5D2E9F0;
  v2 = (this + 24);
  re::FixedArray<CoreIKTransform>::deinit(this + 14);
  re::FixedArray<CoreIKTransform>::deinit(this + 11);
  re::FixedArray<CoreIKTransform>::deinit(this + 8);
  re::FixedArray<re::StringID>::deinit(this + 5);
  re::StringID::destroyString(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5D2E9F0;
  v2 = (this + 24);
  re::FixedArray<CoreIKTransform>::deinit(this + 14);
  re::FixedArray<CoreIKTransform>::deinit(this + 11);
  re::FixedArray<CoreIKTransform>::deinit(this + 8);
  re::FixedArray<re::StringID>::deinit(this + 5);
  re::StringID::destroyString(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t std::__function::__func<std::unique_ptr<re::SkeletonAsset,std::function<void ()(re::SkeletonAsset*)>> re::makeDefaultUniquePtr<re::SkeletonAsset,re::SkeletonAssetData>(re::SkeletonAssetData &&)::{lambda(re::SkeletonAsset*)#1},std::allocator<re::SkeletonAsset*>,void ()(re::SkeletonAssetData &&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}