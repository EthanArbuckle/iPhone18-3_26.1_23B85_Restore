@interface EARUserProfileBuilder
@end

@implementation EARUserProfileBuilder

void __144___EARUserProfileBuilder_initWithConfig_language_overrides_textNormalizationModelRoot_sdapiOverrides_emptyVoc_pgVoc_paramsetHolder_isJit_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = *(*(a1 + 32) + 56);
  if (v5)
  {
    [v5 ear_toString];
    if (v7)
    {
LABEL_3:
      [v7 ear_toString];
      goto LABEL_6;
    }
  }

  else
  {
    v10[0] = 0;
    v10[1] = 0;
    v11 = 0;
    if (v6)
    {
      goto LABEL_3;
    }
  }

  memset(&__p, 0, sizeof(__p));
LABEL_6:
  quasar::LmeDataFactory::AddConfigOverride(v8, v10, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10[0]);
  }
}

void __86___EARUserProfileBuilder_writeProfileToFile_protectionClass_coordinated_length_error___block_invoke(uint64_t a1)
{
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3321888768;
  v11[2] = __86___EARUserProfileBuilder_writeProfileToFile_protectionClass_coordinated_length_error___block_invoke_2;
  v11[3] = &unk_1F2D01E88;
  v11[4] = *(a1 + 40);
  if (*(a1 + 79) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, *(a1 + 56), *(a1 + 64));
  }

  else
  {
    v12 = *(a1 + 56);
  }

  if (*(a1 + 103) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 80), *(a1 + 88));
  }

  else
  {
    __p = *(a1 + 80);
  }

  v2 = *(a1 + 112);
  v14 = *(a1 + 104);
  v15 = v2;
  v11[5] = *(a1 + 48);
  v3 = MEMORY[0x1B8C868A0](v11);
  v4 = v3;
  if (*(a1 + 128) == 1)
  {
    v5 = [*(a1 + 32) stringByDeletingLastPathComponent];
    v6 = [objc_alloc(MEMORY[0x1E696ABF8]) initWithFilePresenter:0];
    v7 = [MEMORY[0x1E695DFF8] fileURLWithPath:v5 isDirectory:1 relativeToURL:0];
    v8 = *(a1 + 120);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __86___EARUserProfileBuilder_writeProfileToFile_protectionClass_coordinated_length_error___block_invoke_101;
    v9[3] = &unk_1E7C1A2B8;
    v10 = v4;
    [v6 coordinateWritingItemAtURL:v7 options:4 error:v8 byAccessor:v9];
  }

  else
  {
    (*(v3 + 16))(v3);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }
}

uint64_t __86___EARUserProfileBuilder_writeProfileToFile_protectionClass_coordinated_length_error___block_invoke_2(uint64_t a1)
{
  result = quasar::filesystem::writeFileAlmostAtomic((*(*(a1 + 32) + 8) + 48), a1 + 48, a1 + 72, *(a1 + 96));
  v3 = *(a1 + 104);
  if (v3 && (result & 0x8000000000000000) == 0)
  {
    *v3 = result;
  }

  *(*(*(a1 + 40) + 8) + 24) = result >= 0;
  return result;
}

@end